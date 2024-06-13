#Data Prep

#Prep datasets for analysis
UmatakaDiameterClean <-

UmatakaLengthClean <-


UmatakaDiameterSummary <- UmatakaDiameter %>% group_by(PostNumber) %>% summarize(min = min(Diameter),
                                                max = max(Diameter),
                                                range = diff(range(Diameter)),
                                                median = median(Diameter),
                                                mean = mean(Diameter),
                                                n = n(),
                                                sd = sd(Diameter))



#Combine
UmatakaSummary <- left_join(UmatakaDiameterSummary, UmatakaLength[,c("PostNumber","Length")], by = "PostNumber")

#Calculate Volume
UmatakaSummary$Volume <- pi * (UmatakaSummary$mean * 0.5) * UmatakaSummary$Length
