const express = require("express")
const app = express()

const cors = require("cors")

app.use(cors())

app.use(express.json())
//app.use(express.urlencoded({extend: true}))


let productData = []

app.get("/api/get_product",(req,res) => {
    if(productData.length > 0){
        console.log("entrou no if")
        res.status(200).send({
            "status_code": 200,
            "product": productData
        })
    } else {
        console.log("entrou no else")
        res.status(200).send({
            "status_code": 200,
            "product": productData
        })
    }
})

app.post("/api/add_product",(req,res) => {

    console.log("Resultado",req.body)
    
    const pdata = {        
        "name": req.body.name,
        "price": req.body.price,
        "desc": req.body.desc
    }

    productData.push(pdata)
    console.log("productData", productData)

    res.status(200).send({
        "status-code":200,
        "message": "Produto adicionado",
        "produto": pdata
    })
})

app.listen(3000,() =>{
    console.log("Escutando a porta 3000")
})