; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36272 () Bool)

(assert start!36272)

(declare-fun b!363015 () Bool)

(declare-fun res!202402 () Bool)

(declare-fun e!222300 () Bool)

(assert (=> b!363015 (=> (not res!202402) (not e!222300))))

(declare-datatypes ((array!20535 0))(
  ( (array!20536 (arr!9745 (Array (_ BitVec 32) (_ BitVec 64))) (size!10097 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20535)

(declare-fun i!1478 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363015 (= res!202402 (not (validKeyInArray!0 (select (arr!9745 a!4337) i!1478))))))

(declare-fun res!202398 () Bool)

(assert (=> start!36272 (=> (not res!202398) (not e!222300))))

(assert (=> start!36272 (= res!202398 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10097 a!4337))))))

(assert (=> start!36272 e!222300))

(assert (=> start!36272 true))

(declare-fun array_inv!7183 (array!20535) Bool)

(assert (=> start!36272 (array_inv!7183 a!4337)))

(declare-fun b!363016 () Bool)

(declare-fun e!222301 () Bool)

(assert (=> b!363016 (= e!222300 (not e!222301))))

(declare-fun res!202399 () Bool)

(assert (=> b!363016 (=> res!202399 e!222301)))

(assert (=> b!363016 (= res!202399 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(declare-fun lt!167351 () array!20535)

(declare-fun arrayCountValidKeys!0 (array!20535 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363016 (= (arrayCountValidKeys!0 lt!167351 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!363016 (= lt!167351 (array!20536 (store (arr!9745 a!4337) i!1478 k!2980) (size!10097 a!4337)))))

(declare-datatypes ((Unit!11203 0))(
  ( (Unit!11204) )
))
(declare-fun lt!167350 () Unit!11203)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20535 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11203)

(assert (=> b!363016 (= lt!167350 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!363017 () Bool)

(declare-fun res!202401 () Bool)

(assert (=> b!363017 (=> (not res!202401) (not e!222300))))

(assert (=> b!363017 (= res!202401 (validKeyInArray!0 k!2980))))

(declare-fun b!363018 () Bool)

(assert (=> b!363018 (= e!222301 (= (arrayCountValidKeys!0 lt!167351 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)) (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun b!363019 () Bool)

(declare-fun res!202400 () Bool)

(assert (=> b!363019 (=> (not res!202400) (not e!222300))))

(assert (=> b!363019 (= res!202400 (bvslt (size!10097 a!4337) #b01111111111111111111111111111111))))

(assert (= (and start!36272 res!202398) b!363015))

(assert (= (and b!363015 res!202402) b!363017))

(assert (= (and b!363017 res!202401) b!363019))

(assert (= (and b!363019 res!202400) b!363016))

(assert (= (and b!363016 (not res!202399)) b!363018))

(declare-fun m!359953 () Bool)

(assert (=> b!363016 m!359953))

(declare-fun m!359955 () Bool)

(assert (=> b!363016 m!359955))

(declare-fun m!359957 () Bool)

(assert (=> b!363016 m!359957))

(declare-fun m!359959 () Bool)

(assert (=> b!363016 m!359959))

(declare-fun m!359961 () Bool)

(assert (=> b!363017 m!359961))

(declare-fun m!359963 () Bool)

(assert (=> start!36272 m!359963))

(declare-fun m!359965 () Bool)

(assert (=> b!363018 m!359965))

(declare-fun m!359967 () Bool)

(assert (=> b!363018 m!359967))

(declare-fun m!359969 () Bool)

(assert (=> b!363015 m!359969))

(assert (=> b!363015 m!359969))

(declare-fun m!359971 () Bool)

(assert (=> b!363015 m!359971))

(push 1)

(assert (not b!363017))

(assert (not b!363015))

(assert (not b!363018))

(assert (not b!363016))

(assert (not start!36272))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!363101 () Bool)

(declare-fun e!222349 () (_ BitVec 32))

(declare-fun e!222348 () (_ BitVec 32))

(assert (=> b!363101 (= e!222349 e!222348)))

(declare-fun c!53751 () Bool)

(assert (=> b!363101 (= c!53751 (validKeyInArray!0 (select (arr!9745 lt!167351) (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun b!363102 () Bool)

(declare-fun call!27237 () (_ BitVec 32))

(assert (=> b!363102 (= e!222348 (bvadd #b00000000000000000000000000000001 call!27237))))

(declare-fun bm!27234 () Bool)

(assert (=> bm!27234 (= call!27237 (arrayCountValidKeys!0 lt!167351 (bvadd #b00000000000000000000000000000001 i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!363104 () Bool)

(assert (=> b!363104 (= e!222348 call!27237)))

(declare-fun b!363103 () Bool)

(assert (=> b!363103 (= e!222349 #b00000000000000000000000000000000)))

(declare-fun d!71997 () Bool)

(declare-fun lt!167379 () (_ BitVec 32))

(assert (=> d!71997 (and (bvsge lt!167379 #b00000000000000000000000000000000) (bvsle lt!167379 (bvsub (size!10097 lt!167351) (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> d!71997 (= lt!167379 e!222349)))

(declare-fun c!53752 () Bool)

(assert (=> d!71997 (= c!53752 (bvsge (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!71997 (and (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10097 lt!167351)))))

(assert (=> d!71997 (= (arrayCountValidKeys!0 lt!167351 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)) lt!167379)))

(assert (= (and d!71997 c!53752) b!363103))

(assert (= (and d!71997 (not c!53752)) b!363101))

(assert (= (and b!363101 c!53751) b!363102))

(assert (= (and b!363101 (not c!53751)) b!363104))

(assert (= (or b!363102 b!363104) bm!27234))

(declare-fun m!360055 () Bool)

(assert (=> b!363101 m!360055))

(assert (=> b!363101 m!360055))

(declare-fun m!360057 () Bool)

(assert (=> b!363101 m!360057))

(declare-fun m!360059 () Bool)

(assert (=> bm!27234 m!360059))

(assert (=> b!363018 d!71997))

(declare-fun b!363105 () Bool)

(declare-fun e!222351 () (_ BitVec 32))

(declare-fun e!222350 () (_ BitVec 32))

(assert (=> b!363105 (= e!222351 e!222350)))

(declare-fun c!53753 () Bool)

(assert (=> b!363105 (= c!53753 (validKeyInArray!0 (select (arr!9745 a!4337) (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun b!363106 () Bool)

(declare-fun call!27238 () (_ BitVec 32))

(assert (=> b!363106 (= e!222350 (bvadd #b00000000000000000000000000000001 call!27238))))

(declare-fun bm!27235 () Bool)

(assert (=> bm!27235 (= call!27238 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!363108 () Bool)

(assert (=> b!363108 (= e!222350 call!27238)))

(declare-fun b!363107 () Bool)

(assert (=> b!363107 (= e!222351 #b00000000000000000000000000000000)))

(declare-fun d!72005 () Bool)

(declare-fun lt!167382 () (_ BitVec 32))

(assert (=> d!72005 (and (bvsge lt!167382 #b00000000000000000000000000000000) (bvsle lt!167382 (bvsub (size!10097 a!4337) (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> d!72005 (= lt!167382 e!222351)))

(declare-fun c!53754 () Bool)

(assert (=> d!72005 (= c!53754 (bvsge (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!72005 (and (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10097 a!4337)))))

(assert (=> d!72005 (= (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)) lt!167382)))

(assert (= (and d!72005 c!53754) b!363107))

(assert (= (and d!72005 (not c!53754)) b!363105))

(assert (= (and b!363105 c!53753) b!363106))

(assert (= (and b!363105 (not c!53753)) b!363108))

(assert (= (or b!363106 b!363108) bm!27235))

(declare-fun m!360061 () Bool)

(assert (=> b!363105 m!360061))

(assert (=> b!363105 m!360061))

(declare-fun m!360063 () Bool)

(assert (=> b!363105 m!360063))

(declare-fun m!360065 () Bool)

(assert (=> bm!27235 m!360065))

(assert (=> b!363018 d!72005))

(declare-fun d!72007 () Bool)

(assert (=> d!72007 (= (validKeyInArray!0 (select (arr!9745 a!4337) i!1478)) (and (not (= (select (arr!9745 a!4337) i!1478) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!9745 a!4337) i!1478) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!363015 d!72007))

(declare-fun b!363112 () Bool)

(declare-fun e!222356 () (_ BitVec 32))

(declare-fun e!222355 () (_ BitVec 32))

(assert (=> b!363112 (= e!222356 e!222355)))

(declare-fun c!53755 () Bool)

(assert (=> b!363112 (= c!53755 (validKeyInArray!0 (select (arr!9745 lt!167351) #b00000000000000000000000000000000)))))

(declare-fun b!363113 () Bool)

(declare-fun call!27239 () (_ BitVec 32))

(assert (=> b!363113 (= e!222355 (bvadd #b00000000000000000000000000000001 call!27239))))

(declare-fun bm!27236 () Bool)

(assert (=> bm!27236 (= call!27239 (arrayCountValidKeys!0 lt!167351 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!363115 () Bool)

(assert (=> b!363115 (= e!222355 call!27239)))

(declare-fun b!363114 () Bool)

(assert (=> b!363114 (= e!222356 #b00000000000000000000000000000000)))

(declare-fun d!72009 () Bool)

(declare-fun lt!167384 () (_ BitVec 32))

(assert (=> d!72009 (and (bvsge lt!167384 #b00000000000000000000000000000000) (bvsle lt!167384 (bvsub (size!10097 lt!167351) #b00000000000000000000000000000000)))))

(assert (=> d!72009 (= lt!167384 e!222356)))

(declare-fun c!53756 () Bool)

(assert (=> d!72009 (= c!53756 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!72009 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10097 lt!167351)))))

(assert (=> d!72009 (= (arrayCountValidKeys!0 lt!167351 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) lt!167384)))

(assert (= (and d!72009 c!53756) b!363114))

(assert (= (and d!72009 (not c!53756)) b!363112))

(assert (= (and b!363112 c!53755) b!363113))

(assert (= (and b!363112 (not c!53755)) b!363115))

(assert (= (or b!363113 b!363115) bm!27236))

(declare-fun m!360073 () Bool)

(assert (=> b!363112 m!360073))

(assert (=> b!363112 m!360073))

(declare-fun m!360075 () Bool)

(assert (=> b!363112 m!360075))

(declare-fun m!360077 () Bool)

(assert (=> bm!27236 m!360077))

(assert (=> b!363016 d!72009))

(declare-fun b!363120 () Bool)

(declare-fun e!222360 () (_ BitVec 32))

(declare-fun e!222359 () (_ BitVec 32))

(assert (=> b!363120 (= e!222360 e!222359)))

(declare-fun c!53759 () Bool)

(assert (=> b!363120 (= c!53759 (validKeyInArray!0 (select (arr!9745 a!4337) #b00000000000000000000000000000000)))))

(declare-fun b!363121 () Bool)

(declare-fun call!27241 () (_ BitVec 32))

(assert (=> b!363121 (= e!222359 (bvadd #b00000000000000000000000000000001 call!27241))))

(declare-fun bm!27238 () Bool)

(assert (=> bm!27238 (= call!27241 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!363123 () Bool)

(assert (=> b!363123 (= e!222359 call!27241)))

(declare-fun b!363122 () Bool)

(assert (=> b!363122 (= e!222360 #b00000000000000000000000000000000)))

(declare-fun d!72013 () Bool)

(declare-fun lt!167386 () (_ BitVec 32))

(assert (=> d!72013 (and (bvsge lt!167386 #b00000000000000000000000000000000) (bvsle lt!167386 (bvsub (size!10097 a!4337) #b00000000000000000000000000000000)))))

(assert (=> d!72013 (= lt!167386 e!222360)))

(declare-fun c!53760 () Bool)

(assert (=> d!72013 (= c!53760 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!72013 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10097 a!4337)))))

(assert (=> d!72013 (= (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) lt!167386)))

(assert (= (and d!72013 c!53760) b!363122))

(assert (= (and d!72013 (not c!53760)) b!363120))

(assert (= (and b!363120 c!53759) b!363121))

(assert (= (and b!363120 (not c!53759)) b!363123))

(assert (= (or b!363121 b!363123) bm!27238))

(declare-fun m!360085 () Bool)

(assert (=> b!363120 m!360085))

(assert (=> b!363120 m!360085))

(declare-fun m!360087 () Bool)

(assert (=> b!363120 m!360087))

(declare-fun m!360089 () Bool)

(assert (=> bm!27238 m!360089))

(assert (=> b!363016 d!72013))

(declare-fun d!72017 () Bool)

(declare-fun e!222365 () Bool)

(assert (=> d!72017 e!222365))

(declare-fun res!202441 () Bool)

(assert (=> d!72017 (=> (not res!202441) (not e!222365))))

(assert (=> d!72017 (= res!202441 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10097 a!4337))))))

