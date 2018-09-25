import UIKit
import BoikoML
import PlaygroundSupport

let datasetName = "insurance.csv"
let testFileUrl = playgroundSharedDataDirectory.appendingPathComponent(datasetName)

let dataset = ReadCsv<Any>(path: testFileUrl, separator:",")
var dfHeader = Header<Any>(features: dataset.getCsvHeader())

var df = DataFrame(inputData: dataset.getData(), header: dfHeader, metaAttributeIndex: 6)
var data = df.trainTestSplit(percent: 0.8)

var train = data["train"]!, test = data["test"]!
var treino = train.splitMetaAttribute(dataframe: train), teste = train.splitMetaAttribute(dataframe: test)

//for data in train.getPossibleValues(key: 1).enumerated(){
//    print(data.element.key)
//}

train.transformStringToInt()
train.getHeader()


for data in train.getPossibleValues(key: 1).enumerated(){
    print(data.element.key)
}

//let clf = Knn(k: 7)
//clf.fit(x_train: treino["x"]!, y_train: treino["y"]!)
//let pred = clf.predict(x_test: teste["x"]!, y_test: teste["y"]!)
//
//let cf = ConfusionMatrix(y_pred: pred, y_real: teste["y"]!.showDf()[teste["y"]!.getMetaIndex()]!)
//
//cf.matrix()
//
//teste["x"]!.shape()
//
//teste["x"]!.getValues(index: 1)["values"]
//teste["x"]!.getValues(index: 1, normalize: true)
//teste["x"]!.getValues(index: 1)["values"]
