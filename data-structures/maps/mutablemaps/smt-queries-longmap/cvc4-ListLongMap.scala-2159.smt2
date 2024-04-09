; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36276 () Bool)

(assert start!36276)

(declare-fun b!363045 () Bool)

(declare-fun e!222318 () Bool)

(declare-fun e!222320 () Bool)

(assert (=> b!363045 (= e!222318 (not e!222320))))

(declare-fun res!202428 () Bool)

(assert (=> b!363045 (=> res!202428 e!222320)))

(declare-fun i!1478 () (_ BitVec 32))

(assert (=> b!363045 (= res!202428 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(declare-datatypes ((array!20539 0))(
  ( (array!20540 (arr!9747 (Array (_ BitVec 32) (_ BitVec 64))) (size!10099 (_ BitVec 32))) )
))
(declare-fun lt!167363 () array!20539)

(declare-fun a!4337 () array!20539)

(declare-fun arrayCountValidKeys!0 (array!20539 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363045 (= (arrayCountValidKeys!0 lt!167363 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun k!2980 () (_ BitVec 64))

(assert (=> b!363045 (= lt!167363 (array!20540 (store (arr!9747 a!4337) i!1478 k!2980) (size!10099 a!4337)))))

(declare-datatypes ((Unit!11207 0))(
  ( (Unit!11208) )
))
(declare-fun lt!167362 () Unit!11207)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20539 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11207)

(assert (=> b!363045 (= lt!167362 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478))))

(declare-fun b!363046 () Bool)

(assert (=> b!363046 (= e!222320 (= (arrayCountValidKeys!0 lt!167363 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)) (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun res!202429 () Bool)

(assert (=> start!36276 (=> (not res!202429) (not e!222318))))

(assert (=> start!36276 (= res!202429 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10099 a!4337))))))

(assert (=> start!36276 e!222318))

(assert (=> start!36276 true))

(declare-fun array_inv!7185 (array!20539) Bool)

(assert (=> start!36276 (array_inv!7185 a!4337)))

(declare-fun b!363047 () Bool)

(declare-fun res!202431 () Bool)

(assert (=> b!363047 (=> (not res!202431) (not e!222318))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363047 (= res!202431 (validKeyInArray!0 k!2980))))

(declare-fun b!363048 () Bool)

(declare-fun res!202432 () Bool)

(assert (=> b!363048 (=> (not res!202432) (not e!222318))))

(assert (=> b!363048 (= res!202432 (not (validKeyInArray!0 (select (arr!9747 a!4337) i!1478))))))

(declare-fun b!363049 () Bool)

(declare-fun res!202430 () Bool)

(assert (=> b!363049 (=> (not res!202430) (not e!222318))))

(assert (=> b!363049 (= res!202430 (bvslt (size!10099 a!4337) #b01111111111111111111111111111111))))

(assert (= (and start!36276 res!202429) b!363048))

(assert (= (and b!363048 res!202432) b!363047))

(assert (= (and b!363047 res!202431) b!363049))

(assert (= (and b!363049 res!202430) b!363045))

(assert (= (and b!363045 (not res!202428)) b!363046))

(declare-fun m!359993 () Bool)

(assert (=> b!363048 m!359993))

(assert (=> b!363048 m!359993))

(declare-fun m!359995 () Bool)

(assert (=> b!363048 m!359995))

(declare-fun m!359997 () Bool)

(assert (=> b!363045 m!359997))

(declare-fun m!359999 () Bool)

(assert (=> b!363045 m!359999))

(declare-fun m!360001 () Bool)

(assert (=> b!363045 m!360001))

(declare-fun m!360003 () Bool)

(assert (=> b!363045 m!360003))

(declare-fun m!360005 () Bool)

(assert (=> b!363047 m!360005))

(declare-fun m!360007 () Bool)

(assert (=> b!363046 m!360007))

(declare-fun m!360009 () Bool)

(assert (=> b!363046 m!360009))

(declare-fun m!360011 () Bool)

(assert (=> start!36276 m!360011))

(push 1)

(assert (not b!363048))

(assert (not b!363045))

(assert (not b!363046))

(assert (not b!363047))

(assert (not start!36276))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!71987 () Bool)

(declare-fun lt!167372 () (_ BitVec 32))

(assert (=> d!71987 (and (bvsge lt!167372 #b00000000000000000000000000000000) (bvsle lt!167372 (bvsub (size!10099 lt!167363) #b00000000000000000000000000000000)))))

(declare-fun e!222337 () (_ BitVec 32))

(assert (=> d!71987 (= lt!167372 e!222337)))

(declare-fun c!53743 () Bool)

(assert (=> d!71987 (= c!53743 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!71987 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10099 lt!167363)))))

(assert (=> d!71987 (= (arrayCountValidKeys!0 lt!167363 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) lt!167372)))

(declare-fun b!363082 () Bool)

(declare-fun e!222338 () (_ BitVec 32))

(declare-fun call!27233 () (_ BitVec 32))

(assert (=> b!363082 (= e!222338 call!27233)))

(declare-fun bm!27230 () Bool)

(assert (=> bm!27230 (= call!27233 (arrayCountValidKeys!0 lt!167363 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!363083 () Bool)

(assert (=> b!363083 (= e!222337 #b00000000000000000000000000000000)))

(declare-fun b!363084 () Bool)

(assert (=> b!363084 (= e!222338 (bvadd #b00000000000000000000000000000001 call!27233))))

(declare-fun b!363085 () Bool)

(assert (=> b!363085 (= e!222337 e!222338)))

(declare-fun c!53744 () Bool)

(assert (=> b!363085 (= c!53744 (validKeyInArray!0 (select (arr!9747 lt!167363) #b00000000000000000000000000000000)))))

(assert (= (and d!71987 c!53743) b!363083))

(assert (= (and d!71987 (not c!53743)) b!363085))

(assert (= (and b!363085 c!53744) b!363084))

(assert (= (and b!363085 (not c!53744)) b!363082))

(assert (= (or b!363084 b!363082) bm!27230))

(declare-fun m!360037 () Bool)

(assert (=> bm!27230 m!360037))

(declare-fun m!360039 () Bool)

(assert (=> b!363085 m!360039))

(assert (=> b!363085 m!360039))

(declare-fun m!360041 () Bool)

(assert (=> b!363085 m!360041))

(assert (=> b!363045 d!71987))

(declare-fun d!72001 () Bool)

(declare-fun lt!167373 () (_ BitVec 32))

(assert (=> d!72001 (and (bvsge lt!167373 #b00000000000000000000000000000000) (bvsle lt!167373 (bvsub (size!10099 a!4337) #b00000000000000000000000000000000)))))

(declare-fun e!222339 () (_ BitVec 32))

(assert (=> d!72001 (= lt!167373 e!222339)))

(declare-fun c!53745 () Bool)

(assert (=> d!72001 (= c!53745 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!72001 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10099 a!4337)))))

(assert (=> d!72001 (= (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) lt!167373)))

(declare-fun b!363086 () Bool)

(declare-fun e!222340 () (_ BitVec 32))

(declare-fun call!27234 () (_ BitVec 32))

(assert (=> b!363086 (= e!222340 call!27234)))

(declare-fun bm!27231 () Bool)

(assert (=> bm!27231 (= call!27234 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!363087 () Bool)

(assert (=> b!363087 (= e!222339 #b00000000000000000000000000000000)))

(declare-fun b!363088 () Bool)

(assert (=> b!363088 (= e!222340 (bvadd #b00000000000000000000000000000001 call!27234))))

(declare-fun b!363089 () Bool)

(assert (=> b!363089 (= e!222339 e!222340)))

(declare-fun c!53746 () Bool)

(assert (=> b!363089 (= c!53746 (validKeyInArray!0 (select (arr!9747 a!4337) #b00000000000000000000000000000000)))))

(assert (= (and d!72001 c!53745) b!363087))

(assert (= (and d!72001 (not c!53745)) b!363089))

(assert (= (and b!363089 c!53746) b!363088))

(assert (= (and b!363089 (not c!53746)) b!363086))

(assert (= (or b!363088 b!363086) bm!27231))

(declare-fun m!360043 () Bool)

(assert (=> bm!27231 m!360043))

(declare-fun m!360045 () Bool)

(assert (=> b!363089 m!360045))

(assert (=> b!363089 m!360045))

(declare-fun m!360047 () Bool)

(assert (=> b!363089 m!360047))

(assert (=> b!363045 d!72001))

(declare-fun d!72003 () Bool)

(declare-fun e!222354 () Bool)

(assert (=> d!72003 e!222354))

(declare-fun res!202438 () Bool)

(assert (=> d!72003 (=> (not res!202438) (not e!222354))))

(assert (=> d!72003 (= res!202438 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10099 a!4337))))))

(declare-fun lt!167383 () Unit!11207)

(declare-fun choose!19 (array!20539 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11207)

(assert (=> d!72003 (= lt!167383 (choose!19 a!4337 i!1478 k!2980 i!1478))))

(assert (=> d!72003 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10099 a!4337)))))

(assert (=> d!72003 (= (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k!2980 i!1478) lt!167383)))

(declare-fun b!363111 () Bool)

(assert (=> b!363111 (= e!222354 (= (arrayCountValidKeys!0 (array!20540 (store (arr!9747 a!4337) i!1478 k!2980) (size!10099 a!4337)) #b00000000000000000000000000000000 (bvadd i!1478 #b00000000000000000000000000000001)) (bvadd (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd i!1478 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))))

(assert (= (and d!72003 res!202438) b!363111))

(declare-fun m!360067 () Bool)

(assert (=> d!72003 m!360067))

(assert (=> b!363111 m!360001))

(declare-fun m!360069 () Bool)

(assert (=> b!363111 m!360069))

(declare-fun m!360071 () Bool)

(assert (=> b!363111 m!360071))

(assert (=> b!363045 d!72003))

(declare-fun d!72011 () Bool)

(declare-fun lt!167385 () (_ BitVec 32))

(assert (=> d!72011 (and (bvsge lt!167385 #b00000000000000000000000000000000) (bvsle lt!167385 (bvsub (size!10099 lt!167363) (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun e!222357 () (_ BitVec 32))

(assert (=> d!72011 (= lt!167385 e!222357)))

(declare-fun c!53757 () Bool)

(assert (=> d!72011 (= c!53757 (bvsge (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!72011 (and (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10099 lt!167363)))))

(assert (=> d!72011 (= (arrayCountValidKeys!0 lt!167363 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)) lt!167385)))

(declare-fun b!363116 () Bool)

(declare-fun e!222358 () (_ BitVec 32))

(declare-fun call!27240 () (_ BitVec 32))

(assert (=> b!363116 (= e!222358 call!27240)))

(declare-fun bm!27237 () Bool)

(assert (=> bm!27237 (= call!27240 (arrayCountValidKeys!0 lt!167363 (bvadd #b00000000000000000000000000000001 i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!363117 () Bool)

(assert (=> b!363117 (= e!222357 #b00000000000000000000000000000000)))

(declare-fun b!363118 () Bool)

(assert (=> b!363118 (= e!222358 (bvadd #b00000000000000000000000000000001 call!27240))))

(declare-fun b!363119 () Bool)

(assert (=> b!363119 (= e!222357 e!222358)))

(declare-fun c!53758 () Bool)

(assert (=> b!363119 (= c!53758 (validKeyInArray!0 (select (arr!9747 lt!167363) (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (= (and d!72011 c!53757) b!363117))

(assert (= (and d!72011 (not c!53757)) b!363119))

(assert (= (and b!363119 c!53758) b!363118))

(assert (= (and b!363119 (not c!53758)) b!363116))

(assert (= (or b!363118 b!363116) bm!27237))

(declare-fun m!360079 () Bool)

(assert (=> bm!27237 m!360079))

(declare-fun m!360081 () Bool)

(assert (=> b!363119 m!360081))

(assert (=> b!363119 m!360081))

(declare-fun m!360083 () Bool)

(assert (=> b!363119 m!360083))

(assert (=> b!363046 d!72011))

(declare-fun d!72015 () Bool)

(declare-fun lt!167387 () (_ BitVec 32))

(assert (=> d!72015 (and (bvsge lt!167387 #b00000000000000000000000000000000) (bvsle lt!167387 (bvsub (size!10099 a!4337) (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun e!222361 () (_ BitVec 32))

(assert (=> d!72015 (= lt!167387 e!222361)))

(declare-fun c!53761 () Bool)

(assert (=> d!72015 (= c!53761 (bvsge (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!72015 (and (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10099 a!4337)))))

(assert (=> d!72015 (= (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)) lt!167387)))

(declare-fun b!363124 () Bool)

(declare-fun e!222362 () (_ BitVec 32))

(declare-fun call!27242 () (_ BitVec 32))

(assert (=> b!363124 (= e!222362 call!27242)))

(declare-fun bm!27239 () Bool)

(assert (=> bm!27239 (= call!27242 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!363125 () Bool)

(assert (=> b!363125 (= e!222361 #b00000000000000000000000000000000)))

(declare-fun b!363126 () Bool)

(assert (=> b!363126 (= e!222362 (bvadd #b00000000000000000000000000000001 call!27242))))

(declare-fun b!363127 () Bool)

(assert (=> b!363127 (= e!222361 e!222362)))

(declare-fun c!53762 () Bool)

(assert (=> b!363127 (= c!53762 (validKeyInArray!0 (select (arr!9747 a!4337) (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (= (and d!72015 c!53761) b!363125))

(assert (= (and d!72015 (not c!53761)) b!363127))

(assert (= (and b!363127 c!53762) b!363126))

