; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116336 () Bool)

(assert start!116336)

(declare-datatypes ((array!93076 0))(
  ( (array!93077 (arr!44944 (Array (_ BitVec 32) (_ BitVec 64))) (size!45495 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!93076)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun b!1372891 () Bool)

(declare-fun e!777724 () Bool)

(declare-datatypes ((List!32192 0))(
  ( (Nil!32189) (Cons!32188 (h!33397 (_ BitVec 64)) (t!46893 List!32192)) )
))
(declare-fun acc!866 () List!32192)

(declare-fun arrayNoDuplicates!0 (array!93076 (_ BitVec 32) List!32192) Bool)

(assert (=> b!1372891 (= e!777724 (not (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866)))))

(declare-fun b!1372892 () Bool)

(declare-fun res!916290 () Bool)

(declare-fun e!777723 () Bool)

(assert (=> b!1372892 (=> (not res!916290) (not e!777723))))

(declare-fun newAcc!98 () List!32192)

(declare-fun subseq!1121 (List!32192 List!32192) Bool)

(assert (=> b!1372892 (= res!916290 (subseq!1121 newAcc!98 acc!866))))

(declare-fun res!916283 () Bool)

(assert (=> start!116336 (=> (not res!916283) (not e!777723))))

(assert (=> start!116336 (= res!916283 (and (bvslt (size!45495 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45495 a!3861))))))

(assert (=> start!116336 e!777723))

(declare-fun array_inv!33889 (array!93076) Bool)

(assert (=> start!116336 (array_inv!33889 a!3861)))

(assert (=> start!116336 true))

(declare-fun b!1372893 () Bool)

(declare-fun res!916286 () Bool)

(assert (=> b!1372893 (=> (not res!916286) (not e!777724))))

(assert (=> b!1372893 (= res!916286 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(declare-fun b!1372894 () Bool)

(declare-fun res!916284 () Bool)

(assert (=> b!1372894 (=> (not res!916284) (not e!777723))))

(declare-fun contains!9730 (List!32192 (_ BitVec 64)) Bool)

(assert (=> b!1372894 (= res!916284 (not (contains!9730 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372895 () Bool)

(declare-fun res!916282 () Bool)

(assert (=> b!1372895 (=> (not res!916282) (not e!777724))))

(assert (=> b!1372895 (= res!916282 (bvslt from!3239 (size!45495 a!3861)))))

(declare-fun b!1372896 () Bool)

(assert (=> b!1372896 (= e!777723 e!777724)))

(declare-fun res!916287 () Bool)

(assert (=> b!1372896 (=> (not res!916287) (not e!777724))))

(assert (=> b!1372896 (= res!916287 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45323 0))(
  ( (Unit!45324) )
))
(declare-fun lt!602924 () Unit!45323)

(declare-fun noDuplicateSubseq!308 (List!32192 List!32192) Unit!45323)

(assert (=> b!1372896 (= lt!602924 (noDuplicateSubseq!308 newAcc!98 acc!866))))

(declare-fun b!1372897 () Bool)

(declare-fun res!916280 () Bool)

(assert (=> b!1372897 (=> (not res!916280) (not e!777723))))

(assert (=> b!1372897 (= res!916280 (not (contains!9730 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372898 () Bool)

(declare-fun res!916281 () Bool)

(assert (=> b!1372898 (=> (not res!916281) (not e!777724))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1372898 (= res!916281 (not (validKeyInArray!0 (select (arr!44944 a!3861) from!3239))))))

(declare-fun b!1372899 () Bool)

(declare-fun res!916289 () Bool)

(assert (=> b!1372899 (=> (not res!916289) (not e!777723))))

(assert (=> b!1372899 (= res!916289 (not (contains!9730 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1372900 () Bool)

(declare-fun res!916288 () Bool)

(assert (=> b!1372900 (=> (not res!916288) (not e!777723))))

(declare-fun noDuplicate!2609 (List!32192) Bool)

(assert (=> b!1372900 (= res!916288 (noDuplicate!2609 acc!866))))

(declare-fun b!1372901 () Bool)

(declare-fun res!916285 () Bool)

(assert (=> b!1372901 (=> (not res!916285) (not e!777723))))

(assert (=> b!1372901 (= res!916285 (not (contains!9730 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!116336 res!916283) b!1372900))

(assert (= (and b!1372900 res!916288) b!1372899))

(assert (= (and b!1372899 res!916289) b!1372894))

(assert (= (and b!1372894 res!916284) b!1372901))

(assert (= (and b!1372901 res!916285) b!1372897))

(assert (= (and b!1372897 res!916280) b!1372892))

(assert (= (and b!1372892 res!916290) b!1372896))

(assert (= (and b!1372896 res!916287) b!1372895))

(assert (= (and b!1372895 res!916282) b!1372898))

(assert (= (and b!1372898 res!916281) b!1372893))

(assert (= (and b!1372893 res!916286) b!1372891))

(declare-fun m!1256281 () Bool)

(assert (=> b!1372892 m!1256281))

(declare-fun m!1256283 () Bool)

(assert (=> b!1372896 m!1256283))

(declare-fun m!1256285 () Bool)

(assert (=> b!1372896 m!1256285))

(declare-fun m!1256287 () Bool)

(assert (=> b!1372901 m!1256287))

(declare-fun m!1256289 () Bool)

(assert (=> b!1372891 m!1256289))

(declare-fun m!1256291 () Bool)

(assert (=> b!1372899 m!1256291))

(declare-fun m!1256293 () Bool)

(assert (=> b!1372897 m!1256293))

(declare-fun m!1256295 () Bool)

(assert (=> b!1372900 m!1256295))

(declare-fun m!1256297 () Bool)

(assert (=> b!1372894 m!1256297))

(declare-fun m!1256299 () Bool)

(assert (=> start!116336 m!1256299))

(declare-fun m!1256301 () Bool)

(assert (=> b!1372898 m!1256301))

(assert (=> b!1372898 m!1256301))

(declare-fun m!1256303 () Bool)

(assert (=> b!1372898 m!1256303))

(push 1)

(assert (not b!1372897))

(assert (not start!116336))

(assert (not b!1372894))

(assert (not b!1372899))

(assert (not b!1372896))

(assert (not b!1372901))

(assert (not b!1372900))

(assert (not b!1372892))

(assert (not b!1372898))

(assert (not b!1372891))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!147809 () Bool)

(declare-fun res!916375 () Bool)

(declare-fun e!777763 () Bool)

(assert (=> d!147809 (=> res!916375 e!777763)))

(assert (=> d!147809 (= res!916375 (is-Nil!32189 acc!866))))

(assert (=> d!147809 (= (noDuplicate!2609 acc!866) e!777763)))

(declare-fun b!1372990 () Bool)

(declare-fun e!777764 () Bool)

(assert (=> b!1372990 (= e!777763 e!777764)))

(declare-fun res!916376 () Bool)

(assert (=> b!1372990 (=> (not res!916376) (not e!777764))))

(assert (=> b!1372990 (= res!916376 (not (contains!9730 (t!46893 acc!866) (h!33397 acc!866))))))

(declare-fun b!1372991 () Bool)

(assert (=> b!1372991 (= e!777764 (noDuplicate!2609 (t!46893 acc!866)))))

(assert (= (and d!147809 (not res!916375)) b!1372990))

(assert (= (and b!1372990 res!916376) b!1372991))

(declare-fun m!1256365 () Bool)

(assert (=> b!1372990 m!1256365))

(declare-fun m!1256367 () Bool)

(assert (=> b!1372991 m!1256367))

(assert (=> b!1372900 d!147809))

(declare-fun d!147813 () Bool)

(declare-fun lt!602943 () Bool)

(declare-fun content!755 (List!32192) (Set (_ BitVec 64)))

(assert (=> d!147813 (= lt!602943 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!755 newAcc!98)))))

(declare-fun e!777785 () Bool)

(assert (=> d!147813 (= lt!602943 e!777785)))

(declare-fun res!916397 () Bool)

(assert (=> d!147813 (=> (not res!916397) (not e!777785))))

(assert (=> d!147813 (= res!916397 (is-Cons!32188 newAcc!98))))

(assert (=> d!147813 (= (contains!9730 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602943)))

(declare-fun b!1373013 () Bool)

(declare-fun e!777786 () Bool)

(assert (=> b!1373013 (= e!777785 e!777786)))

(declare-fun res!916396 () Bool)

(assert (=> b!1373013 (=> res!916396 e!777786)))

(assert (=> b!1373013 (= res!916396 (= (h!33397 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373014 () Bool)

(assert (=> b!1373014 (= e!777786 (contains!9730 (t!46893 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147813 res!916397) b!1373013))

(assert (= (and b!1373013 (not res!916396)) b!1373014))

(declare-fun m!1256397 () Bool)

(assert (=> d!147813 m!1256397))

(declare-fun m!1256399 () Bool)

(assert (=> d!147813 m!1256399))

(declare-fun m!1256401 () Bool)

(assert (=> b!1373014 m!1256401))

(assert (=> b!1372901 d!147813))

(declare-fun b!1373052 () Bool)

(declare-fun e!777823 () Bool)

(declare-fun call!65603 () Bool)

(assert (=> b!1373052 (= e!777823 call!65603)))

(declare-fun b!1373053 () Bool)

(assert (=> b!1373053 (= e!777823 call!65603)))

(declare-fun c!127754 () Bool)

(declare-fun bm!65600 () Bool)

(assert (=> bm!65600 (= call!65603 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127754 (Cons!32188 (select (arr!44944 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1373054 () Bool)

(declare-fun e!777822 () Bool)

(assert (=> b!1373054 (= e!777822 e!777823)))

(assert (=> b!1373054 (= c!127754 (validKeyInArray!0 (select (arr!44944 a!3861) from!3239)))))

(declare-fun b!1373055 () Bool)

(declare-fun e!777821 () Bool)

(assert (=> b!1373055 (= e!777821 e!777822)))

(declare-fun res!916430 () Bool)

(assert (=> b!1373055 (=> (not res!916430) (not e!777822))))

(declare-fun e!777824 () Bool)

(assert (=> b!1373055 (= res!916430 (not e!777824))))

(declare-fun res!916431 () Bool)

(assert (=> b!1373055 (=> (not res!916431) (not e!777824))))

(assert (=> b!1373055 (= res!916431 (validKeyInArray!0 (select (arr!44944 a!3861) from!3239)))))

(declare-fun b!1373056 () Bool)

(assert (=> b!1373056 (= e!777824 (contains!9730 acc!866 (select (arr!44944 a!3861) from!3239)))))

(declare-fun d!147825 () Bool)

(declare-fun res!916429 () Bool)

(assert (=> d!147825 (=> res!916429 e!777821)))

(assert (=> d!147825 (= res!916429 (bvsge from!3239 (size!45495 a!3861)))))

(assert (=> d!147825 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!777821)))

(assert (= (and d!147825 (not res!916429)) b!1373055))

(assert (= (and b!1373055 res!916431) b!1373056))

(assert (= (and b!1373055 res!916430) b!1373054))

(assert (= (and b!1373054 c!127754) b!1373053))

(assert (= (and b!1373054 (not c!127754)) b!1373052))

(assert (= (or b!1373053 b!1373052) bm!65600))

(assert (=> bm!65600 m!1256301))

(declare-fun m!1256419 () Bool)

(assert (=> bm!65600 m!1256419))

(assert (=> b!1373054 m!1256301))

(assert (=> b!1373054 m!1256301))

(assert (=> b!1373054 m!1256303))

(assert (=> b!1373055 m!1256301))

(assert (=> b!1373055 m!1256301))

(assert (=> b!1373055 m!1256303))

(assert (=> b!1373056 m!1256301))

(assert (=> b!1373056 m!1256301))

(declare-fun m!1256421 () Bool)

(assert (=> b!1373056 m!1256421))

(assert (=> b!1372896 d!147825))

(declare-fun d!147839 () Bool)

(assert (=> d!147839 (noDuplicate!2609 newAcc!98)))

(declare-fun lt!602951 () Unit!45323)

(declare-fun choose!2030 (List!32192 List!32192) Unit!45323)

(assert (=> d!147839 (= lt!602951 (choose!2030 newAcc!98 acc!866))))

(declare-fun e!777838 () Bool)

(assert (=> d!147839 e!777838))

(declare-fun res!916445 () Bool)

(assert (=> d!147839 (=> (not res!916445) (not e!777838))))

(assert (=> d!147839 (= res!916445 (subseq!1121 newAcc!98 acc!866))))

(assert (=> d!147839 (= (noDuplicateSubseq!308 newAcc!98 acc!866) lt!602951)))

(declare-fun b!1373070 () Bool)

(assert (=> b!1373070 (= e!777838 (noDuplicate!2609 acc!866))))

(assert (= (and d!147839 res!916445) b!1373070))

(declare-fun m!1256435 () Bool)

(assert (=> d!147839 m!1256435))

(declare-fun m!1256437 () Bool)

(assert (=> d!147839 m!1256437))

(assert (=> d!147839 m!1256281))

(assert (=> b!1373070 m!1256295))

(assert (=> b!1372896 d!147839))

(declare-fun b!1373077 () Bool)

(declare-fun e!777847 () Bool)

(declare-fun call!65604 () Bool)

(assert (=> b!1373077 (= e!777847 call!65604)))

(declare-fun b!1373078 () Bool)

(assert (=> b!1373078 (= e!777847 call!65604)))

(declare-fun c!127755 () Bool)

(declare-fun bm!65601 () Bool)

(assert (=> bm!65601 (= call!65604 (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239 #b00000000000000000000000000000001) (ite c!127755 (Cons!32188 (select (arr!44944 a!3861) (bvadd #b00000000000000000000000000000001 from!3239)) acc!866) acc!866)))))

(declare-fun b!1373079 () Bool)

(declare-fun e!777846 () Bool)

(assert (=> b!1373079 (= e!777846 e!777847)))

(assert (=> b!1373079 (= c!127755 (validKeyInArray!0 (select (arr!44944 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1373080 () Bool)

(declare-fun e!777845 () Bool)

(assert (=> b!1373080 (= e!777845 e!777846)))

(declare-fun res!916453 () Bool)

(assert (=> b!1373080 (=> (not res!916453) (not e!777846))))

(declare-fun e!777848 () Bool)

(assert (=> b!1373080 (= res!916453 (not e!777848))))

(declare-fun res!916454 () Bool)

(assert (=> b!1373080 (=> (not res!916454) (not e!777848))))

(assert (=> b!1373080 (= res!916454 (validKeyInArray!0 (select (arr!44944 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun b!1373081 () Bool)

(assert (=> b!1373081 (= e!777848 (contains!9730 acc!866 (select (arr!44944 a!3861) (bvadd #b00000000000000000000000000000001 from!3239))))))

(declare-fun d!147849 () Bool)

(declare-fun res!916452 () Bool)

(assert (=> d!147849 (=> res!916452 e!777845)))

(assert (=> d!147849 (= res!916452 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) (size!45495 a!3861)))))

(assert (=> d!147849 (= (arrayNoDuplicates!0 a!3861 (bvadd #b00000000000000000000000000000001 from!3239) acc!866) e!777845)))

(assert (= (and d!147849 (not res!916452)) b!1373080))

(assert (= (and b!1373080 res!916454) b!1373081))

(assert (= (and b!1373080 res!916453) b!1373079))

(assert (= (and b!1373079 c!127755) b!1373078))

(assert (= (and b!1373079 (not c!127755)) b!1373077))

(assert (= (or b!1373078 b!1373077) bm!65601))

(declare-fun m!1256439 () Bool)

(assert (=> bm!65601 m!1256439))

(declare-fun m!1256441 () Bool)

(assert (=> bm!65601 m!1256441))

(assert (=> b!1373079 m!1256439))

(assert (=> b!1373079 m!1256439))

(declare-fun m!1256443 () Bool)

(assert (=> b!1373079 m!1256443))

(assert (=> b!1373080 m!1256439))

(assert (=> b!1373080 m!1256439))

(assert (=> b!1373080 m!1256443))

(assert (=> b!1373081 m!1256439))

(assert (=> b!1373081 m!1256439))

(declare-fun m!1256445 () Bool)

(assert (=> b!1373081 m!1256445))

(assert (=> b!1372891 d!147849))

(declare-fun d!147851 () Bool)

(declare-fun lt!602952 () Bool)

(assert (=> d!147851 (= lt!602952 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!755 newAcc!98)))))

(declare-fun e!777849 () Bool)

(assert (=> d!147851 (= lt!602952 e!777849)))

(declare-fun res!916456 () Bool)

(assert (=> d!147851 (=> (not res!916456) (not e!777849))))

(assert (=> d!147851 (= res!916456 (is-Cons!32188 newAcc!98))))

(assert (=> d!147851 (= (contains!9730 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602952)))

(declare-fun b!1373082 () Bool)

(declare-fun e!777850 () Bool)

(assert (=> b!1373082 (= e!777849 e!777850)))

(declare-fun res!916455 () Bool)

(assert (=> b!1373082 (=> res!916455 e!777850)))

(assert (=> b!1373082 (= res!916455 (= (h!33397 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1373083 () Bool)

(assert (=> b!1373083 (= e!777850 (contains!9730 (t!46893 newAcc!98) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147851 res!916456) b!1373082))

(assert (= (and b!1373082 (not res!916455)) b!1373083))

(assert (=> d!147851 m!1256397))

(declare-fun m!1256447 () Bool)

(assert (=> d!147851 m!1256447))

(declare-fun m!1256449 () Bool)

(assert (=> b!1373083 m!1256449))

(assert (=> b!1372897 d!147851))

(declare-fun b!1373117 () Bool)

(declare-fun e!777881 () Bool)

(declare-fun e!777880 () Bool)

(assert (=> b!1373117 (= e!777881 e!777880)))

(declare-fun res!916483 () Bool)

(assert (=> b!1373117 (=> res!916483 e!777880)))

(declare-fun e!777879 () Bool)

(assert (=> b!1373117 (= res!916483 e!777879)))

(declare-fun res!916482 () Bool)

(assert (=> b!1373117 (=> (not res!916482) (not e!777879))))

(assert (=> b!1373117 (= res!916482 (= (h!33397 newAcc!98) (h!33397 acc!866)))))

(declare-fun d!147853 () Bool)

(declare-fun res!916481 () Bool)

(declare-fun e!777882 () Bool)

(assert (=> d!147853 (=> res!916481 e!777882)))

(assert (=> d!147853 (= res!916481 (is-Nil!32189 newAcc!98))))

(assert (=> d!147853 (= (subseq!1121 newAcc!98 acc!866) e!777882)))

(declare-fun b!1373119 () Bool)

(assert (=> b!1373119 (= e!777880 (subseq!1121 newAcc!98 (t!46893 acc!866)))))

(declare-fun b!1373118 () Bool)

(assert (=> b!1373118 (= e!777879 (subseq!1121 (t!46893 newAcc!98) (t!46893 acc!866)))))

(declare-fun b!1373116 () Bool)

(assert (=> b!1373116 (= e!777882 e!777881)))

(declare-fun res!916484 () Bool)

(assert (=> b!1373116 (=> (not res!916484) (not e!777881))))

(assert (=> b!1373116 (= res!916484 (is-Cons!32188 acc!866))))

(assert (= (and d!147853 (not res!916481)) b!1373116))

(assert (= (and b!1373116 res!916484) b!1373117))

(assert (= (and b!1373117 res!916482) b!1373118))

(assert (= (and b!1373117 (not res!916483)) b!1373119))

(declare-fun m!1256463 () Bool)

(assert (=> b!1373119 m!1256463))

