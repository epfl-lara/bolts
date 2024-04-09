; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115976 () Bool)

(assert start!115976)

(declare-fun b!1370200 () Bool)

(declare-fun res!913774 () Bool)

(declare-fun e!776145 () Bool)

(assert (=> b!1370200 (=> (not res!913774) (not e!776145))))

(declare-datatypes ((array!92974 0))(
  ( (array!92975 (arr!44902 (Array (_ BitVec 32) (_ BitVec 64))) (size!45453 (_ BitVec 32))) )
))
(declare-fun a!3861 () array!92974)

(declare-fun from!3239 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1370200 (= res!913774 (validKeyInArray!0 (select (arr!44902 a!3861) from!3239)))))

(declare-fun b!1370201 () Bool)

(declare-fun res!913773 () Bool)

(assert (=> b!1370201 (=> (not res!913773) (not e!776145))))

(assert (=> b!1370201 (= res!913773 (bvslt from!3239 (size!45453 a!3861)))))

(declare-fun b!1370202 () Bool)

(declare-fun res!913769 () Bool)

(declare-fun e!776143 () Bool)

(assert (=> b!1370202 (=> (not res!913769) (not e!776143))))

(declare-datatypes ((List!32150 0))(
  ( (Nil!32147) (Cons!32146 (h!33355 (_ BitVec 64)) (t!46851 List!32150)) )
))
(declare-fun acc!866 () List!32150)

(declare-fun contains!9688 (List!32150 (_ BitVec 64)) Bool)

(assert (=> b!1370202 (= res!913769 (not (contains!9688 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370204 () Bool)

(declare-fun res!913768 () Bool)

(declare-fun e!776144 () Bool)

(assert (=> b!1370204 (=> (not res!913768) (not e!776144))))

(declare-fun lt!602350 () List!32150)

(declare-fun noDuplicate!2567 (List!32150) Bool)

(assert (=> b!1370204 (= res!913768 (noDuplicate!2567 lt!602350))))

(declare-fun b!1370205 () Bool)

(declare-fun res!913766 () Bool)

(assert (=> b!1370205 (=> (not res!913766) (not e!776143))))

(assert (=> b!1370205 (= res!913766 (not (contains!9688 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370206 () Bool)

(declare-fun res!913764 () Bool)

(assert (=> b!1370206 (=> (not res!913764) (not e!776143))))

(declare-fun newAcc!98 () List!32150)

(declare-fun subseq!1079 (List!32150 List!32150) Bool)

(assert (=> b!1370206 (= res!913764 (subseq!1079 newAcc!98 acc!866))))

(declare-fun b!1370207 () Bool)

(declare-fun res!913772 () Bool)

(assert (=> b!1370207 (=> (not res!913772) (not e!776143))))

(assert (=> b!1370207 (= res!913772 (not (contains!9688 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370208 () Bool)

(declare-fun e!776142 () Bool)

(assert (=> b!1370208 (= e!776144 e!776142)))

(declare-fun res!913763 () Bool)

(assert (=> b!1370208 (=> res!913763 e!776142)))

(assert (=> b!1370208 (= res!913763 (contains!9688 lt!602350 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370209 () Bool)

(declare-fun res!913776 () Bool)

(assert (=> b!1370209 (=> (not res!913776) (not e!776143))))

(assert (=> b!1370209 (= res!913776 (not (contains!9688 newAcc!98 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1370210 () Bool)

(declare-fun res!913770 () Bool)

(assert (=> b!1370210 (=> (not res!913770) (not e!776143))))

(assert (=> b!1370210 (= res!913770 (noDuplicate!2567 acc!866))))

(declare-fun b!1370211 () Bool)

(assert (=> b!1370211 (= e!776142 (contains!9688 lt!602350 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370203 () Bool)

(declare-fun res!913775 () Bool)

(assert (=> b!1370203 (=> (not res!913775) (not e!776145))))

(assert (=> b!1370203 (= res!913775 (not (contains!9688 acc!866 (select (arr!44902 a!3861) from!3239))))))

(declare-fun res!913765 () Bool)

(assert (=> start!115976 (=> (not res!913765) (not e!776143))))

(assert (=> start!115976 (= res!913765 (and (bvslt (size!45453 a!3861) #b01111111111111111111111111111111) (bvsge from!3239 #b00000000000000000000000000000000) (bvsle from!3239 (size!45453 a!3861))))))

(assert (=> start!115976 e!776143))

(declare-fun array_inv!33847 (array!92974) Bool)

(assert (=> start!115976 (array_inv!33847 a!3861)))

(assert (=> start!115976 true))

(declare-fun b!1370212 () Bool)

(assert (=> b!1370212 (= e!776143 e!776145)))

(declare-fun res!913767 () Bool)

(assert (=> b!1370212 (=> (not res!913767) (not e!776145))))

(declare-fun arrayNoDuplicates!0 (array!92974 (_ BitVec 32) List!32150) Bool)

(assert (=> b!1370212 (= res!913767 (arrayNoDuplicates!0 a!3861 from!3239 acc!866))))

(declare-datatypes ((Unit!45239 0))(
  ( (Unit!45240) )
))
(declare-fun lt!602351 () Unit!45239)

(declare-fun noDuplicateSubseq!266 (List!32150 List!32150) Unit!45239)

(assert (=> b!1370212 (= lt!602351 (noDuplicateSubseq!266 newAcc!98 acc!866))))

(declare-fun b!1370213 () Bool)

(assert (=> b!1370213 (= e!776145 e!776144)))

(declare-fun res!913771 () Bool)

(assert (=> b!1370213 (=> (not res!913771) (not e!776144))))

(assert (=> b!1370213 (= res!913771 (bvsge (bvadd #b00000000000000000000000000000001 from!3239) #b00000000000000000000000000000000))))

(assert (=> b!1370213 (= lt!602350 (Cons!32146 (select (arr!44902 a!3861) from!3239) acc!866))))

(assert (= (and start!115976 res!913765) b!1370210))

(assert (= (and b!1370210 res!913770) b!1370205))

(assert (= (and b!1370205 res!913766) b!1370202))

(assert (= (and b!1370202 res!913769) b!1370207))

(assert (= (and b!1370207 res!913772) b!1370209))

(assert (= (and b!1370209 res!913776) b!1370206))

(assert (= (and b!1370206 res!913764) b!1370212))

(assert (= (and b!1370212 res!913767) b!1370201))

(assert (= (and b!1370201 res!913773) b!1370200))

(assert (= (and b!1370200 res!913774) b!1370203))

(assert (= (and b!1370203 res!913775) b!1370213))

(assert (= (and b!1370213 res!913771) b!1370204))

(assert (= (and b!1370204 res!913768) b!1370208))

(assert (= (and b!1370208 (not res!913763)) b!1370211))

(declare-fun m!1253833 () Bool)

(assert (=> b!1370200 m!1253833))

(assert (=> b!1370200 m!1253833))

(declare-fun m!1253835 () Bool)

(assert (=> b!1370200 m!1253835))

(declare-fun m!1253837 () Bool)

(assert (=> b!1370212 m!1253837))

(declare-fun m!1253839 () Bool)

(assert (=> b!1370212 m!1253839))

(declare-fun m!1253841 () Bool)

(assert (=> start!115976 m!1253841))

(declare-fun m!1253843 () Bool)

(assert (=> b!1370207 m!1253843))

(declare-fun m!1253845 () Bool)

(assert (=> b!1370204 m!1253845))

(declare-fun m!1253847 () Bool)

(assert (=> b!1370208 m!1253847))

(declare-fun m!1253849 () Bool)

(assert (=> b!1370211 m!1253849))

(declare-fun m!1253851 () Bool)

(assert (=> b!1370202 m!1253851))

(assert (=> b!1370203 m!1253833))

(assert (=> b!1370203 m!1253833))

(declare-fun m!1253853 () Bool)

(assert (=> b!1370203 m!1253853))

(assert (=> b!1370213 m!1253833))

(declare-fun m!1253855 () Bool)

(assert (=> b!1370210 m!1253855))

(declare-fun m!1253857 () Bool)

(assert (=> b!1370205 m!1253857))

(declare-fun m!1253859 () Bool)

(assert (=> b!1370209 m!1253859))

(declare-fun m!1253861 () Bool)

(assert (=> b!1370206 m!1253861))

(push 1)

(assert (not b!1370212))

(assert (not b!1370211))

(assert (not b!1370200))

(assert (not b!1370204))

(assert (not b!1370202))

(assert (not b!1370209))

(assert (not b!1370206))

(assert (not b!1370205))

(assert (not b!1370208))

(assert (not b!1370207))

(assert (not b!1370203))

(assert (not start!115976))

(assert (not b!1370210))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun c!127665 () Bool)

(declare-fun call!65526 () Bool)

(declare-fun bm!65523 () Bool)

(assert (=> bm!65523 (= call!65526 (arrayNoDuplicates!0 a!3861 (bvadd from!3239 #b00000000000000000000000000000001) (ite c!127665 (Cons!32146 (select (arr!44902 a!3861) from!3239) acc!866) acc!866)))))

(declare-fun b!1370350 () Bool)

(declare-fun e!776225 () Bool)

(declare-fun e!776228 () Bool)

(assert (=> b!1370350 (= e!776225 e!776228)))

(declare-fun res!913906 () Bool)

(assert (=> b!1370350 (=> (not res!913906) (not e!776228))))

(declare-fun e!776227 () Bool)

(assert (=> b!1370350 (= res!913906 (not e!776227))))

(declare-fun res!913905 () Bool)

(assert (=> b!1370350 (=> (not res!913905) (not e!776227))))

(assert (=> b!1370350 (= res!913905 (validKeyInArray!0 (select (arr!44902 a!3861) from!3239)))))

(declare-fun b!1370351 () Bool)

(declare-fun e!776226 () Bool)

(assert (=> b!1370351 (= e!776226 call!65526)))

(declare-fun b!1370352 () Bool)

(assert (=> b!1370352 (= e!776226 call!65526)))

(declare-fun d!147089 () Bool)

(declare-fun res!913907 () Bool)

(assert (=> d!147089 (=> res!913907 e!776225)))

(assert (=> d!147089 (= res!913907 (bvsge from!3239 (size!45453 a!3861)))))

(assert (=> d!147089 (= (arrayNoDuplicates!0 a!3861 from!3239 acc!866) e!776225)))

(declare-fun b!1370353 () Bool)

(assert (=> b!1370353 (= e!776227 (contains!9688 acc!866 (select (arr!44902 a!3861) from!3239)))))

(declare-fun b!1370354 () Bool)

(assert (=> b!1370354 (= e!776228 e!776226)))

(assert (=> b!1370354 (= c!127665 (validKeyInArray!0 (select (arr!44902 a!3861) from!3239)))))

(assert (= (and d!147089 (not res!913907)) b!1370350))

(assert (= (and b!1370350 res!913905) b!1370353))

(assert (= (and b!1370350 res!913906) b!1370354))

(assert (= (and b!1370354 c!127665) b!1370351))

(assert (= (and b!1370354 (not c!127665)) b!1370352))

(assert (= (or b!1370351 b!1370352) bm!65523))

(assert (=> bm!65523 m!1253833))

(declare-fun m!1253957 () Bool)

(assert (=> bm!65523 m!1253957))

(assert (=> b!1370350 m!1253833))

(assert (=> b!1370350 m!1253833))

(assert (=> b!1370350 m!1253835))

(assert (=> b!1370353 m!1253833))

(assert (=> b!1370353 m!1253833))

(assert (=> b!1370353 m!1253853))

(assert (=> b!1370354 m!1253833))

(assert (=> b!1370354 m!1253833))

(assert (=> b!1370354 m!1253835))

(assert (=> b!1370212 d!147089))

(declare-fun d!147097 () Bool)

(assert (=> d!147097 (noDuplicate!2567 newAcc!98)))

(declare-fun lt!602382 () Unit!45239)

(declare-fun choose!2013 (List!32150 List!32150) Unit!45239)

(assert (=> d!147097 (= lt!602382 (choose!2013 newAcc!98 acc!866))))

(declare-fun e!776251 () Bool)

(assert (=> d!147097 e!776251))

(declare-fun res!913929 () Bool)

(assert (=> d!147097 (=> (not res!913929) (not e!776251))))

(assert (=> d!147097 (= res!913929 (subseq!1079 newAcc!98 acc!866))))

(assert (=> d!147097 (= (noDuplicateSubseq!266 newAcc!98 acc!866) lt!602382)))

(declare-fun b!1370378 () Bool)

(assert (=> b!1370378 (= e!776251 (noDuplicate!2567 acc!866))))

(assert (= (and d!147097 res!913929) b!1370378))

(declare-fun m!1253987 () Bool)

(assert (=> d!147097 m!1253987))

(declare-fun m!1253989 () Bool)

(assert (=> d!147097 m!1253989))

(assert (=> d!147097 m!1253861))

(assert (=> b!1370378 m!1253855))

(assert (=> b!1370212 d!147097))

(declare-fun d!147111 () Bool)

(declare-fun lt!602389 () Bool)

(declare-fun content!737 (List!32150) (Set (_ BitVec 64)))

(assert (=> d!147111 (= lt!602389 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!737 acc!866)))))

(declare-fun e!776274 () Bool)

(assert (=> d!147111 (= lt!602389 e!776274)))

(declare-fun res!913951 () Bool)

(assert (=> d!147111 (=> (not res!913951) (not e!776274))))

(assert (=> d!147111 (= res!913951 (is-Cons!32146 acc!866))))

(assert (=> d!147111 (= (contains!9688 acc!866 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602389)))

(declare-fun b!1370400 () Bool)

(declare-fun e!776273 () Bool)

(assert (=> b!1370400 (= e!776274 e!776273)))

(declare-fun res!913952 () Bool)

(assert (=> b!1370400 (=> res!913952 e!776273)))

(assert (=> b!1370400 (= res!913952 (= (h!33355 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370401 () Bool)

(assert (=> b!1370401 (= e!776273 (contains!9688 (t!46851 acc!866) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147111 res!913951) b!1370400))

(assert (= (and b!1370400 (not res!913952)) b!1370401))

(declare-fun m!1254019 () Bool)

(assert (=> d!147111 m!1254019))

(declare-fun m!1254021 () Bool)

(assert (=> d!147111 m!1254021))

(declare-fun m!1254023 () Bool)

(assert (=> b!1370401 m!1254023))

(assert (=> b!1370202 d!147111))

(declare-fun d!147127 () Bool)

(declare-fun lt!602390 () Bool)

(assert (=> d!147127 (= lt!602390 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!737 lt!602350)))))

(declare-fun e!776276 () Bool)

(assert (=> d!147127 (= lt!602390 e!776276)))

(declare-fun res!913953 () Bool)

(assert (=> d!147127 (=> (not res!913953) (not e!776276))))

(assert (=> d!147127 (= res!913953 (is-Cons!32146 lt!602350))))

(assert (=> d!147127 (= (contains!9688 lt!602350 #b1000000000000000000000000000000000000000000000000000000000000000) lt!602390)))

(declare-fun b!1370402 () Bool)

(declare-fun e!776275 () Bool)

(assert (=> b!1370402 (= e!776276 e!776275)))

(declare-fun res!913954 () Bool)

(assert (=> b!1370402 (=> res!913954 e!776275)))

(assert (=> b!1370402 (= res!913954 (= (h!33355 lt!602350) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370403 () Bool)

(assert (=> b!1370403 (= e!776275 (contains!9688 (t!46851 lt!602350) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147127 res!913953) b!1370402))

(assert (= (and b!1370402 (not res!913954)) b!1370403))

(declare-fun m!1254025 () Bool)

(assert (=> d!147127 m!1254025))

(declare-fun m!1254027 () Bool)

(assert (=> d!147127 m!1254027))

(declare-fun m!1254029 () Bool)

(assert (=> b!1370403 m!1254029))

(assert (=> b!1370211 d!147127))

(declare-fun d!147129 () Bool)

(assert (=> d!147129 (= (validKeyInArray!0 (select (arr!44902 a!3861) from!3239)) (and (not (= (select (arr!44902 a!3861) from!3239) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!44902 a!3861) from!3239) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1370200 d!147129))

(declare-fun d!147133 () Bool)

(assert (=> d!147133 (= (array_inv!33847 a!3861) (bvsge (size!45453 a!3861) #b00000000000000000000000000000000))))

(assert (=> start!115976 d!147133))

(declare-fun d!147135 () Bool)

(declare-fun res!913977 () Bool)

(declare-fun e!776301 () Bool)

(assert (=> d!147135 (=> res!913977 e!776301)))

(assert (=> d!147135 (= res!913977 (is-Nil!32147 lt!602350))))

(assert (=> d!147135 (= (noDuplicate!2567 lt!602350) e!776301)))

(declare-fun b!1370430 () Bool)

(declare-fun e!776302 () Bool)

(assert (=> b!1370430 (= e!776301 e!776302)))

(declare-fun res!913978 () Bool)

(assert (=> b!1370430 (=> (not res!913978) (not e!776302))))

(assert (=> b!1370430 (= res!913978 (not (contains!9688 (t!46851 lt!602350) (h!33355 lt!602350))))))

(declare-fun b!1370431 () Bool)

(assert (=> b!1370431 (= e!776302 (noDuplicate!2567 (t!46851 lt!602350)))))

(assert (= (and d!147135 (not res!913977)) b!1370430))

(assert (= (and b!1370430 res!913978) b!1370431))

(declare-fun m!1254035 () Bool)

(assert (=> b!1370430 m!1254035))

(declare-fun m!1254037 () Bool)

(assert (=> b!1370431 m!1254037))

(assert (=> b!1370204 d!147135))

(declare-fun d!147137 () Bool)

(declare-fun lt!602391 () Bool)

(assert (=> d!147137 (= lt!602391 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!737 acc!866)))))

(declare-fun e!776304 () Bool)

(assert (=> d!147137 (= lt!602391 e!776304)))

(declare-fun res!913979 () Bool)

(assert (=> d!147137 (=> (not res!913979) (not e!776304))))

(assert (=> d!147137 (= res!913979 (is-Cons!32146 acc!866))))

(assert (=> d!147137 (= (contains!9688 acc!866 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602391)))

(declare-fun b!1370432 () Bool)

(declare-fun e!776303 () Bool)

(assert (=> b!1370432 (= e!776304 e!776303)))

(declare-fun res!913980 () Bool)

(assert (=> b!1370432 (=> res!913980 e!776303)))

(assert (=> b!1370432 (= res!913980 (= (h!33355 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370433 () Bool)

(assert (=> b!1370433 (= e!776303 (contains!9688 (t!46851 acc!866) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147137 res!913979) b!1370432))

(assert (= (and b!1370432 (not res!913980)) b!1370433))

(assert (=> d!147137 m!1254019))

(declare-fun m!1254039 () Bool)

(assert (=> d!147137 m!1254039))

(declare-fun m!1254041 () Bool)

(assert (=> b!1370433 m!1254041))

(assert (=> b!1370205 d!147137))

(declare-fun lt!602392 () Bool)

(declare-fun d!147139 () Bool)

(assert (=> d!147139 (= lt!602392 (set.member (select (arr!44902 a!3861) from!3239) (content!737 acc!866)))))

(declare-fun e!776306 () Bool)

(assert (=> d!147139 (= lt!602392 e!776306)))

(declare-fun res!913981 () Bool)

(assert (=> d!147139 (=> (not res!913981) (not e!776306))))

(assert (=> d!147139 (= res!913981 (is-Cons!32146 acc!866))))

(assert (=> d!147139 (= (contains!9688 acc!866 (select (arr!44902 a!3861) from!3239)) lt!602392)))

(declare-fun b!1370434 () Bool)

(declare-fun e!776305 () Bool)

(assert (=> b!1370434 (= e!776306 e!776305)))

(declare-fun res!913982 () Bool)

(assert (=> b!1370434 (=> res!913982 e!776305)))

(assert (=> b!1370434 (= res!913982 (= (h!33355 acc!866) (select (arr!44902 a!3861) from!3239)))))

(declare-fun b!1370435 () Bool)

(assert (=> b!1370435 (= e!776305 (contains!9688 (t!46851 acc!866) (select (arr!44902 a!3861) from!3239)))))

(assert (= (and d!147139 res!913981) b!1370434))

(assert (= (and b!1370434 (not res!913982)) b!1370435))

(assert (=> d!147139 m!1254019))

(assert (=> d!147139 m!1253833))

(declare-fun m!1254043 () Bool)

(assert (=> d!147139 m!1254043))

(assert (=> b!1370435 m!1253833))

(declare-fun m!1254045 () Bool)

(assert (=> b!1370435 m!1254045))

(assert (=> b!1370203 d!147139))

(declare-fun d!147141 () Bool)

(declare-fun lt!602393 () Bool)

(assert (=> d!147141 (= lt!602393 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!737 newAcc!98)))))

(declare-fun e!776308 () Bool)

(assert (=> d!147141 (= lt!602393 e!776308)))

(declare-fun res!913983 () Bool)

(assert (=> d!147141 (=> (not res!913983) (not e!776308))))

(assert (=> d!147141 (= res!913983 (is-Cons!32146 newAcc!98))))

(assert (=> d!147141 (= (contains!9688 newAcc!98 #b0000000000000000000000000000000000000000000000000000000000000000) lt!602393)))

(declare-fun b!1370436 () Bool)

(declare-fun e!776307 () Bool)

(assert (=> b!1370436 (= e!776308 e!776307)))

(declare-fun res!913984 () Bool)

(assert (=> b!1370436 (=> res!913984 e!776307)))

(assert (=> b!1370436 (= res!913984 (= (h!33355 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1370437 () Bool)

(assert (=> b!1370437 (= e!776307 (contains!9688 (t!46851 newAcc!98) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!147141 res!913983) b!1370436))

(assert (= (and b!1370436 (not res!913984)) b!1370437))

(declare-fun m!1254047 () Bool)

(assert (=> d!147141 m!1254047))

(declare-fun m!1254049 () Bool)

(assert (=> d!147141 m!1254049))

(declare-fun m!1254051 () Bool)

(assert (=> b!1370437 m!1254051))

(assert (=> b!1370207 d!147141))

(declare-fun b!1370457 () Bool)

(declare-fun e!776327 () Bool)

(declare-fun e!776328 () Bool)

(assert (=> b!1370457 (= e!776327 e!776328)))

(declare-fun res!914004 () Bool)

(assert (=> b!1370457 (=> res!914004 e!776328)))

(declare-fun e!776326 () Bool)

(assert (=> b!1370457 (= res!914004 e!776326)))

(declare-fun res!914001 () Bool)

(assert (=> b!1370457 (=> (not res!914001) (not e!776326))))

(assert (=> b!1370457 (= res!914001 (= (h!33355 newAcc!98) (h!33355 acc!866)))))

(declare-fun d!147143 () Bool)

(declare-fun res!914002 () Bool)

(declare-fun e!776329 () Bool)

(assert (=> d!147143 (=> res!914002 e!776329)))

(assert (=> d!147143 (= res!914002 (is-Nil!32147 newAcc!98))))

(assert (=> d!147143 (= (subseq!1079 newAcc!98 acc!866) e!776329)))

(declare-fun b!1370459 () Bool)

(assert (=> b!1370459 (= e!776328 (subseq!1079 newAcc!98 (t!46851 acc!866)))))

(declare-fun b!1370458 () Bool)

(assert (=> b!1370458 (= e!776326 (subseq!1079 (t!46851 newAcc!98) (t!46851 acc!866)))))

(declare-fun b!1370456 () Bool)

(assert (=> b!1370456 (= e!776329 e!776327)))

(declare-fun res!914003 () Bool)

(assert (=> b!1370456 (=> (not res!914003) (not e!776327))))

(assert (=> b!1370456 (= res!914003 (is-Cons!32146 acc!866))))

(assert (= (and d!147143 (not res!914002)) b!1370456))

(assert (= (and b!1370456 res!914003) b!1370457))

(assert (= (and b!1370457 res!914001) b!1370458))

(assert (= (and b!1370457 (not res!914004)) b!1370459))

(declare-fun m!1254063 () Bool)

(assert (=> b!1370459 m!1254063))

(declare-fun m!1254065 () Bool)

(assert (=> b!1370458 m!1254065))

(assert (=> b!1370206 d!147143))

(declare-fun d!147149 () Bool)

(declare-fun res!914005 () Bool)

(declare-fun e!776330 () Bool)

(assert (=> d!147149 (=> res!914005 e!776330)))

(assert (=> d!147149 (= res!914005 (is-Nil!32147 acc!866))))

(assert (=> d!147149 (= (noDuplicate!2567 acc!866) e!776330)))

(declare-fun b!1370460 () Bool)

(declare-fun e!776331 () Bool)

(assert (=> b!1370460 (= e!776330 e!776331)))

(declare-fun res!914006 () Bool)

(assert (=> b!1370460 (=> (not res!914006) (not e!776331))))

(assert (=> b!1370460 (= res!914006 (not (contains!9688 (t!46851 acc!866) (h!33355 acc!866))))))

(declare-fun b!1370461 () Bool)

(assert (=> b!1370461 (= e!776331 (noDuplicate!2567 (t!46851 acc!866)))))

(assert (= (and d!147149 (not res!914005)) b!1370460))

(assert (= (and b!1370460 res!914006) b!1370461))

(declare-fun m!1254067 () Bool)

