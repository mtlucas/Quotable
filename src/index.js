/* eslint-disable no-console */
import 'dotenv/config.js'
import mongoose from 'mongoose'
import app from './app.js'
import MongoClient from './MongoClient.js'

async function run() {
  const db = new MongoClient()
  try {
    // Environment variables
    const PORT = process.env.PORT || 4000
    // Connect to database, then start the Express server
<<<<<<< HEAD
    await mongoose.connect(MONGODB_URI, {
      useUnifiedTopology: true,
      useNewUrlParser: true,
      useCreateIndex: true,
      serverSelectionTimeoutMS: 5000,
      socketTimeoutMS: 0,
      poolSize: 10,
      family: 4,
    })
=======
    await db.connect()
>>>>>>> 641c45131f0761c8c710e21be54b7ac243454a7f
    app.listen(PORT, () => {
      console.log(`Quotable is running on port: ${PORT}`)
    })
  } catch (error) {
    console.error(error)
  }
}
run()
