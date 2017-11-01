import mongoose from 'mongoose';

mongoose.Promise = global.Promise;

const dbs = {};

class Mongoose {
  constructor(url, name, schema) {
    const realUrl = process.env[url];
    let db = null;
    if (!dbs[realUrl]) {
      dbs[realUrl] = mongoose.createConnection(realUrl);
      db = dbs[realUrl];
    } else {
      db = dbs[realUrl];
    }
    this.model = db.model(name, mongoose.Schema(schema, {
      versionKey: false,
    }), name);
  }

  findById(...args) {
    return this.model.findById(...args);
  }
  findOne(...args) {
    return this.model.findOne(...args);
  }
  find(...args) {
    return this.model.find(...args);
  }
  update(...args) {
    return this.model.update(...args);
  }
  remove(...args) {
    return this.model.remove(...args);
  }
  create(...args) {
    return this.model.create(...args);
  }
  aggregate(...args) {
    return this.model.aggregate(...args);
  }
  insertMany(...args) {
    return this.model.insertMany(...args);
  }
  count(...args) {
    return this.model.count(...args);
  }
  distinct(...args) {
    return this.model.distinct(...args);
  }

}
export default Mongoose;
