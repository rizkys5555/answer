# Membaca data (asumsi file ada di folder kerja Anda)
dataFile <- "./household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

# Memfilter data hanya untuk tanggal 1/2/2007 dan 2/2/2007
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# Mengonversi variabel numerik
globalActivePower <- as.numeric(subSetData$Global_active_power)
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
