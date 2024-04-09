; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102244 () Bool)

(assert start!102244)

(declare-fun b!1230373 () Bool)

(declare-fun res!818969 () Bool)

(declare-fun e!698124 () Bool)

(assert (=> b!1230373 (=> (not res!818969) (not e!698124))))

(declare-datatypes ((array!79358 0))(
  ( (array!79359 (arr!38295 (Array (_ BitVec 32) (_ BitVec 64))) (size!38832 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79358)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79358 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230373 (= res!818969 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230374 () Bool)

(declare-datatypes ((List!27246 0))(
  ( (Nil!27243) (Cons!27242 (h!28451 (_ BitVec 64)) (t!40716 List!27246)) )
))
(declare-fun acc!823 () List!27246)

(declare-fun arrayNoDuplicates!0 (array!79358 (_ BitVec 32) List!27246) Bool)

(assert (=> b!1230374 (= e!698124 (not (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27242 (select (arr!38295 a!3806) from!3184) acc!823))))))

(declare-fun b!1230375 () Bool)

(declare-fun res!818970 () Bool)

(assert (=> b!1230375 (=> (not res!818970) (not e!698124))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230375 (= res!818970 (validKeyInArray!0 k!2913))))

(declare-fun b!1230376 () Bool)

(declare-fun res!818971 () Bool)

(assert (=> b!1230376 (=> (not res!818971) (not e!698124))))

(declare-fun contains!7161 (List!27246 (_ BitVec 64)) Bool)

(assert (=> b!1230376 (= res!818971 (not (contains!7161 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!818967 () Bool)

(assert (=> start!102244 (=> (not res!818967) (not e!698124))))

(assert (=> start!102244 (= res!818967 (bvslt (size!38832 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102244 e!698124))

(declare-fun array_inv!29071 (array!79358) Bool)

(assert (=> start!102244 (array_inv!29071 a!3806)))

(assert (=> start!102244 true))

(declare-fun b!1230377 () Bool)

(declare-fun res!818964 () Bool)

(assert (=> b!1230377 (=> (not res!818964) (not e!698124))))

(assert (=> b!1230377 (= res!818964 (not (contains!7161 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230378 () Bool)

(declare-fun res!818968 () Bool)

(assert (=> b!1230378 (=> (not res!818968) (not e!698124))))

(assert (=> b!1230378 (= res!818968 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38832 a!3806)) (bvslt from!3184 (size!38832 a!3806))))))

(declare-fun b!1230379 () Bool)

(declare-fun res!818972 () Bool)

(assert (=> b!1230379 (=> (not res!818972) (not e!698124))))

(declare-fun noDuplicate!1768 (List!27246) Bool)

(assert (=> b!1230379 (= res!818972 (noDuplicate!1768 acc!823))))

(declare-fun b!1230380 () Bool)

(declare-fun res!818965 () Bool)

(assert (=> b!1230380 (=> (not res!818965) (not e!698124))))

(assert (=> b!1230380 (= res!818965 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230381 () Bool)

(declare-fun res!818966 () Bool)

(assert (=> b!1230381 (=> (not res!818966) (not e!698124))))

(assert (=> b!1230381 (= res!818966 (validKeyInArray!0 (select (arr!38295 a!3806) from!3184)))))

(assert (= (and start!102244 res!818967) b!1230375))

(assert (= (and b!1230375 res!818970) b!1230378))

(assert (= (and b!1230378 res!818968) b!1230379))

(assert (= (and b!1230379 res!818972) b!1230377))

(assert (= (and b!1230377 res!818964) b!1230376))

(assert (= (and b!1230376 res!818971) b!1230373))

(assert (= (and b!1230373 res!818969) b!1230380))

(assert (= (and b!1230380 res!818965) b!1230381))

(assert (= (and b!1230381 res!818966) b!1230374))

(declare-fun m!1134857 () Bool)

(assert (=> b!1230375 m!1134857))

(declare-fun m!1134859 () Bool)

(assert (=> b!1230374 m!1134859))

(declare-fun m!1134861 () Bool)

(assert (=> b!1230374 m!1134861))

(declare-fun m!1134863 () Bool)

(assert (=> b!1230380 m!1134863))

(declare-fun m!1134865 () Bool)

(assert (=> b!1230377 m!1134865))

(declare-fun m!1134867 () Bool)

(assert (=> b!1230379 m!1134867))

(declare-fun m!1134869 () Bool)

(assert (=> start!102244 m!1134869))

(declare-fun m!1134871 () Bool)

(assert (=> b!1230376 m!1134871))

(assert (=> b!1230381 m!1134859))

(assert (=> b!1230381 m!1134859))

(declare-fun m!1134873 () Bool)

(assert (=> b!1230381 m!1134873))

(declare-fun m!1134875 () Bool)

(assert (=> b!1230373 m!1134875))

(push 1)

(assert (not b!1230380))

(assert (not b!1230379))

(assert (not b!1230375))

(assert (not b!1230374))

(assert (not b!1230376))

(assert (not b!1230377))

(assert (not b!1230381))

(assert (not b!1230373))

(assert (not start!102244))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!134527 () Bool)

(declare-fun res!819043 () Bool)

(declare-fun e!698158 () Bool)

(assert (=> d!134527 (=> res!819043 e!698158)))

(assert (=> d!134527 (= res!819043 (= (select (arr!38295 a!3806) (bvadd #b00000000000000000000000000000001 from!3184)) k!2913))))

(assert (=> d!134527 (= (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)) e!698158)))

(declare-fun b!1230460 () Bool)

(declare-fun e!698159 () Bool)

(assert (=> b!1230460 (= e!698158 e!698159)))

(declare-fun res!819044 () Bool)

(assert (=> b!1230460 (=> (not res!819044) (not e!698159))))

(assert (=> b!1230460 (= res!819044 (bvslt (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001) (size!38832 a!3806)))))

(declare-fun b!1230461 () Bool)

(assert (=> b!1230461 (= e!698159 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184 #b00000000000000000000000000000001)))))

(assert (= (and d!134527 (not res!819043)) b!1230460))

(assert (= (and b!1230460 res!819044) b!1230461))

(declare-fun m!1134929 () Bool)

(assert (=> d!134527 m!1134929))

(declare-fun m!1134931 () Bool)

(assert (=> b!1230461 m!1134931))

(assert (=> b!1230373 d!134527))

(declare-fun d!134539 () Bool)

(declare-fun lt!559322 () Bool)

(declare-fun content!564 (List!27246) (Set (_ BitVec 64)))

(assert (=> d!134539 (= lt!559322 (set.member #b1000000000000000000000000000000000000000000000000000000000000000 (content!564 acc!823)))))

(declare-fun e!698180 () Bool)

(assert (=> d!134539 (= lt!559322 e!698180)))

(declare-fun res!819066 () Bool)

(assert (=> d!134539 (=> (not res!819066) (not e!698180))))

(assert (=> d!134539 (= res!819066 (is-Cons!27242 acc!823))))

(assert (=> d!134539 (= (contains!7161 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559322)))

(declare-fun b!1230482 () Bool)

(declare-fun e!698181 () Bool)

(assert (=> b!1230482 (= e!698180 e!698181)))

(declare-fun res!819065 () Bool)

(assert (=> b!1230482 (=> res!819065 e!698181)))

(assert (=> b!1230482 (= res!819065 (= (h!28451 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1230483 () Bool)

(assert (=> b!1230483 (= e!698181 (contains!7161 (t!40716 acc!823) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134539 res!819066) b!1230482))

(assert (= (and b!1230482 (not res!819065)) b!1230483))

(declare-fun m!1134943 () Bool)

(assert (=> d!134539 m!1134943))

(declare-fun m!1134945 () Bool)

(assert (=> d!134539 m!1134945))

(declare-fun m!1134947 () Bool)

(assert (=> b!1230483 m!1134947))

(assert (=> b!1230376 d!134539))

(declare-fun d!134547 () Bool)

(declare-fun lt!559324 () Bool)

(assert (=> d!134547 (= lt!559324 (set.member #b0000000000000000000000000000000000000000000000000000000000000000 (content!564 acc!823)))))

(declare-fun e!698184 () Bool)

(assert (=> d!134547 (= lt!559324 e!698184)))

(declare-fun res!819070 () Bool)

(assert (=> d!134547 (=> (not res!819070) (not e!698184))))

(assert (=> d!134547 (= res!819070 (is-Cons!27242 acc!823))))

(assert (=> d!134547 (= (contains!7161 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559324)))

(declare-fun b!1230486 () Bool)

(declare-fun e!698185 () Bool)

(assert (=> b!1230486 (= e!698184 e!698185)))

(declare-fun res!819069 () Bool)

(assert (=> b!1230486 (=> res!819069 e!698185)))

(assert (=> b!1230486 (= res!819069 (= (h!28451 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1230487 () Bool)

(assert (=> b!1230487 (= e!698185 (contains!7161 (t!40716 acc!823) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!134547 res!819070) b!1230486))

(assert (= (and b!1230486 (not res!819069)) b!1230487))

(assert (=> d!134547 m!1134943))

(declare-fun m!1134953 () Bool)

(assert (=> d!134547 m!1134953))

(declare-fun m!1134955 () Bool)

(assert (=> b!1230487 m!1134955))

(assert (=> b!1230377 d!134547))

(declare-fun b!1230522 () Bool)

(declare-fun e!698218 () Bool)

(declare-fun e!698217 () Bool)

(assert (=> b!1230522 (= e!698218 e!698217)))

(declare-fun res!819098 () Bool)

(assert (=> b!1230522 (=> (not res!819098) (not e!698217))))

(declare-fun e!698216 () Bool)

(assert (=> b!1230522 (= res!819098 (not e!698216))))

(declare-fun res!819099 () Bool)

(assert (=> b!1230522 (=> (not res!819099) (not e!698216))))

(assert (=> b!1230522 (= res!819099 (validKeyInArray!0 (select (arr!38295 a!3806) from!3184)))))

(declare-fun b!1230523 () Bool)

(declare-fun e!698219 () Bool)

(declare-fun call!60863 () Bool)

(assert (=> b!1230523 (= e!698219 call!60863)))

(declare-fun d!134551 () Bool)

(declare-fun res!819097 () Bool)

(assert (=> d!134551 (=> res!819097 e!698218)))

(assert (=> d!134551 (= res!819097 (bvsge from!3184 (size!38832 a!3806)))))

(assert (=> d!134551 (= (arrayNoDuplicates!0 a!3806 from!3184 acc!823) e!698218)))

(declare-fun b!1230524 () Bool)

(assert (=> b!1230524 (= e!698217 e!698219)))

(declare-fun c!120575 () Bool)

(assert (=> b!1230524 (= c!120575 (validKeyInArray!0 (select (arr!38295 a!3806) from!3184)))))

(declare-fun b!1230525 () Bool)

(assert (=> b!1230525 (= e!698216 (contains!7161 acc!823 (select (arr!38295 a!3806) from!3184)))))

(declare-fun b!1230526 () Bool)

(assert (=> b!1230526 (= e!698219 call!60863)))

(declare-fun bm!60860 () Bool)

(assert (=> bm!60860 (= call!60863 (arrayNoDuplicates!0 a!3806 (bvadd from!3184 #b00000000000000000000000000000001) (ite c!120575 (Cons!27242 (select (arr!38295 a!3806) from!3184) acc!823) acc!823)))))

(assert (= (and d!134551 (not res!819097)) b!1230522))

(assert (= (and b!1230522 res!819099) b!1230525))

(assert (= (and b!1230522 res!819098) b!1230524))

(assert (= (and b!1230524 c!120575) b!1230526))

(assert (= (and b!1230524 (not c!120575)) b!1230523))

(assert (= (or b!1230526 b!1230523) bm!60860))

(assert (=> b!1230522 m!1134859))

(assert (=> b!1230522 m!1134859))

(assert (=> b!1230522 m!1134873))

(assert (=> b!1230524 m!1134859))

(assert (=> b!1230524 m!1134859))

(assert (=> b!1230524 m!1134873))

(assert (=> b!1230525 m!1134859))

(assert (=> b!1230525 m!1134859))

(declare-fun m!1134967 () Bool)

(assert (=> b!1230525 m!1134967))

(assert (=> bm!60860 m!1134859))

(declare-fun m!1134969 () Bool)

(assert (=> bm!60860 m!1134969))

(assert (=> b!1230380 d!134551))

(declare-fun d!134557 () Bool)

(assert (=> d!134557 (= (validKeyInArray!0 k!2913) (and (not (= k!2913 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2913 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1230375 d!134557))

(declare-fun d!134561 () Bool)

(assert (=> d!134561 (= (validKeyInArray!0 (select (arr!38295 a!3806) from!3184)) (and (not (= (select (arr!38295 a!3806) from!3184) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!38295 a!3806) from!3184) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1230381 d!134561))

(declare-fun d!134563 () Bool)

(declare-fun res!819111 () Bool)

(declare-fun e!698232 () Bool)

(assert (=> d!134563 (=> res!819111 e!698232)))

(assert (=> d!134563 (= res!819111 (is-Nil!27243 acc!823))))

