import mongoose from 'mongoose';
import Schema from '../schemas/Schema.js';

mongoose.Promise = global.Promise;
const url = process.env.;
const db = mongoose.createConnection(url);
const tableName = process.env.;
const  = db.model(tableName, mongoose.Schema(Schema, {
  versionKey: false,
}), tableName);
export default ;
