import { PrismaClient } from '@prisma/client';
import  express  from 'express';
import { graphqlHTTP } from 'express-graphql';
import { makeExecutableSchema } from '@graphql-tools/schema';
const prisma = new PrismaClient();
const typeDefs = `
  type Editor {
    email: String!
    name: String
  }
  type Query {
    allEditors: [Editor!]!
  }
`;
const typeDefs = `
  type issue {
    title: String!
    content: [Link!]!
  }

  type Mutation {
    post(url: String!, description: String!): Link!
  }

  type Link {
    id: ID!
    description: String!
    url: String!
  }
`;
const resolvers = {
  Query: {
    allEditor: () => {
      return prisma.editor.findMany();
    }
  }
};
export const schema = makeExecutableSchema({
  resolvers,
  typeDefs,
});
const app = express();
app.use('/graphql', graphqlHTTP({
  schema,
}));
app.listen(4000);