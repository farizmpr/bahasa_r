setwd("D:\\cybertrend\\bahasa_r")
prediksi_dataset = read.csv("data.csv")
show(prediksi_dataset)
#mengganti dataset pada kolom age dengan rata rata
prediksi_dataset$age= ifelse(is.na(prediksi_dataset$age),
                             ave(prediksi_dataset$age, FUN = function(x) mean(x,na.rm = TRUE))
                             ,prediksi_dataset$age)
#mengganti dataset pada kolom salary dengan rata rata
coba_uang <- is.na(prediksi_dataset$salary)
show(coba_uang)
prediksi_dataset$salary=ifelse(is.na(prediksi_dataset$salary),ave(prediksi_dataset$salary, 
                                                                  FUN = function(y) mean(y,na.rm = TRUE)),
                               prediksi_dataset$salary)
