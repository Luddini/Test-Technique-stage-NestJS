const { PrismaClient } = require("@prisma/client")

const { user } = new PrismaClient()

router.article('/', async (req, res) => {
    const {title,content,editor_id} = req.body;

})
const newArticle = await article.create({
    data: {
        tile,
        content,
        user_id
    }
})

module.exports = router 