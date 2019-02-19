const mongoose = require('mongoose');
const ProblemSchema = mongoose.Schema({
    id: Number,
    name: String,
    desc: String,
    difficulty: String
});
const ProblemModel = mongoose.model('problemModel', ProblemSchema);
module.exports = ProblemModel;