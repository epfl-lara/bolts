; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!36274 () Bool)

(assert start!36274)

(declare-fun res!202415 () Bool)

(declare-fun e!222311 () Bool)

(assert (=> start!36274 (=> (not res!202415) (not e!222311))))

(declare-fun i!1478 () (_ BitVec 32))

(declare-datatypes ((array!20537 0))(
  ( (array!20538 (arr!9746 (Array (_ BitVec 32) (_ BitVec 64))) (size!10098 (_ BitVec 32))) )
))
(declare-fun a!4337 () array!20537)

(assert (=> start!36274 (= res!202415 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10098 a!4337))))))

(assert (=> start!36274 e!222311))

(assert (=> start!36274 true))

(declare-fun array_inv!7184 (array!20537) Bool)

(assert (=> start!36274 (array_inv!7184 a!4337)))

(declare-fun e!222310 () Bool)

(declare-fun lt!167356 () array!20537)

(declare-fun b!363030 () Bool)

(declare-fun arrayCountValidKeys!0 (array!20537 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!363030 (= e!222310 (= (arrayCountValidKeys!0 lt!167356 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)) (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun b!363031 () Bool)

(declare-fun res!202414 () Bool)

(assert (=> b!363031 (=> (not res!202414) (not e!222311))))

(assert (=> b!363031 (= res!202414 (bvslt (size!10098 a!4337) #b01111111111111111111111111111111))))

(declare-fun b!363032 () Bool)

(assert (=> b!363032 (= e!222311 (not e!222310))))

(declare-fun res!202417 () Bool)

(assert (=> b!363032 (=> res!202417 e!222310)))

(assert (=> b!363032 (= res!202417 (or (bvslt (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) i!1478)))))

(assert (=> b!363032 (= (arrayCountValidKeys!0 lt!167356 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478))))))

(declare-fun k0!2980 () (_ BitVec 64))

(assert (=> b!363032 (= lt!167356 (array!20538 (store (arr!9746 a!4337) i!1478 k0!2980) (size!10098 a!4337)))))

(declare-datatypes ((Unit!11205 0))(
  ( (Unit!11206) )
))
(declare-fun lt!167357 () Unit!11205)

(declare-fun lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 (array!20537 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11205)

(assert (=> b!363032 (= lt!167357 (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478))))

(declare-fun b!363033 () Bool)

(declare-fun res!202413 () Bool)

(assert (=> b!363033 (=> (not res!202413) (not e!222311))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!363033 (= res!202413 (not (validKeyInArray!0 (select (arr!9746 a!4337) i!1478))))))

(declare-fun b!363034 () Bool)

(declare-fun res!202416 () Bool)

(assert (=> b!363034 (=> (not res!202416) (not e!222311))))

(assert (=> b!363034 (= res!202416 (validKeyInArray!0 k0!2980))))

(assert (= (and start!36274 res!202415) b!363033))

(assert (= (and b!363033 res!202413) b!363034))

(assert (= (and b!363034 res!202416) b!363031))

(assert (= (and b!363031 res!202414) b!363032))

(assert (= (and b!363032 (not res!202417)) b!363030))

(declare-fun m!359973 () Bool)

(assert (=> b!363030 m!359973))

(declare-fun m!359975 () Bool)

(assert (=> b!363030 m!359975))

(declare-fun m!359977 () Bool)

(assert (=> b!363034 m!359977))

(declare-fun m!359979 () Bool)

(assert (=> start!36274 m!359979))

(declare-fun m!359981 () Bool)

(assert (=> b!363032 m!359981))

(declare-fun m!359983 () Bool)

(assert (=> b!363032 m!359983))

(declare-fun m!359985 () Bool)

(assert (=> b!363032 m!359985))

(declare-fun m!359987 () Bool)

(assert (=> b!363032 m!359987))

(declare-fun m!359989 () Bool)

(assert (=> b!363033 m!359989))

(assert (=> b!363033 m!359989))

(declare-fun m!359991 () Bool)

(assert (=> b!363033 m!359991))

(check-sat (not start!36274) (not b!363032) (not b!363034) (not b!363033) (not b!363030))
(check-sat)
(get-model)

(declare-fun d!71981 () Bool)

(assert (=> d!71981 (= (validKeyInArray!0 (select (arr!9746 a!4337) i!1478)) (and (not (= (select (arr!9746 a!4337) i!1478) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!9746 a!4337) i!1478) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!363033 d!71981))

(declare-fun d!71983 () Bool)

(assert (=> d!71983 (= (validKeyInArray!0 k0!2980) (and (not (= k0!2980 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2980 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!363034 d!71983))

(declare-fun b!363058 () Bool)

(declare-fun e!222326 () (_ BitVec 32))

(assert (=> b!363058 (= e!222326 #b00000000000000000000000000000000)))

(declare-fun bm!27224 () Bool)

(declare-fun call!27227 () (_ BitVec 32))

(assert (=> bm!27224 (= call!27227 (arrayCountValidKeys!0 lt!167356 (bvadd #b00000000000000000000000000000001 i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!363059 () Bool)

(declare-fun e!222325 () (_ BitVec 32))

(assert (=> b!363059 (= e!222325 call!27227)))

(declare-fun b!363060 () Bool)

(assert (=> b!363060 (= e!222325 (bvadd #b00000000000000000000000000000001 call!27227))))

(declare-fun d!71985 () Bool)

(declare-fun lt!167366 () (_ BitVec 32))

(assert (=> d!71985 (and (bvsge lt!167366 #b00000000000000000000000000000000) (bvsle lt!167366 (bvsub (size!10098 lt!167356) (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> d!71985 (= lt!167366 e!222326)))

(declare-fun c!53731 () Bool)

(assert (=> d!71985 (= c!53731 (bvsge (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!71985 (and (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10098 lt!167356)))))

(assert (=> d!71985 (= (arrayCountValidKeys!0 lt!167356 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)) lt!167366)))

(declare-fun b!363061 () Bool)

(assert (=> b!363061 (= e!222326 e!222325)))

(declare-fun c!53732 () Bool)

(assert (=> b!363061 (= c!53732 (validKeyInArray!0 (select (arr!9746 lt!167356) (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (= (and d!71985 c!53731) b!363058))

(assert (= (and d!71985 (not c!53731)) b!363061))

(assert (= (and b!363061 c!53732) b!363060))

(assert (= (and b!363061 (not c!53732)) b!363059))

(assert (= (or b!363060 b!363059) bm!27224))

(declare-fun m!360013 () Bool)

(assert (=> bm!27224 m!360013))

(declare-fun m!360015 () Bool)

(assert (=> b!363061 m!360015))

(assert (=> b!363061 m!360015))

(declare-fun m!360017 () Bool)

(assert (=> b!363061 m!360017))

(assert (=> b!363030 d!71985))

(declare-fun b!363062 () Bool)

(declare-fun e!222328 () (_ BitVec 32))

(assert (=> b!363062 (= e!222328 #b00000000000000000000000000000000)))

(declare-fun bm!27225 () Bool)

(declare-fun call!27228 () (_ BitVec 32))

(assert (=> bm!27225 (= call!27228 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!363063 () Bool)

(declare-fun e!222327 () (_ BitVec 32))

(assert (=> b!363063 (= e!222327 call!27228)))

(declare-fun b!363064 () Bool)

(assert (=> b!363064 (= e!222327 (bvadd #b00000000000000000000000000000001 call!27228))))

(declare-fun d!71989 () Bool)

(declare-fun lt!167367 () (_ BitVec 32))

(assert (=> d!71989 (and (bvsge lt!167367 #b00000000000000000000000000000000) (bvsle lt!167367 (bvsub (size!10098 a!4337) (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (=> d!71989 (= lt!167367 e!222328)))

(declare-fun c!53733 () Bool)

(assert (=> d!71989 (= c!53733 (bvsge (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!71989 (and (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge (bvadd #b00000000000000000000000000000001 i!1478) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10098 a!4337)))))

(assert (=> d!71989 (= (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000001 i!1478) (bvadd #b00000000000000000000000000000001 i!1478)) lt!167367)))

(declare-fun b!363065 () Bool)

(assert (=> b!363065 (= e!222328 e!222327)))

(declare-fun c!53734 () Bool)

(assert (=> b!363065 (= c!53734 (validKeyInArray!0 (select (arr!9746 a!4337) (bvadd #b00000000000000000000000000000001 i!1478))))))

(assert (= (and d!71989 c!53733) b!363062))

(assert (= (and d!71989 (not c!53733)) b!363065))

(assert (= (and b!363065 c!53734) b!363064))

(assert (= (and b!363065 (not c!53734)) b!363063))

(assert (= (or b!363064 b!363063) bm!27225))

(declare-fun m!360019 () Bool)

(assert (=> bm!27225 m!360019))

(declare-fun m!360021 () Bool)

(assert (=> b!363065 m!360021))

(assert (=> b!363065 m!360021))

(declare-fun m!360023 () Bool)

(assert (=> b!363065 m!360023))

(assert (=> b!363030 d!71989))

(declare-fun d!71991 () Bool)

(assert (=> d!71991 (= (array_inv!7184 a!4337) (bvsge (size!10098 a!4337) #b00000000000000000000000000000000))))

(assert (=> start!36274 d!71991))

(declare-fun b!363066 () Bool)

(declare-fun e!222330 () (_ BitVec 32))

(assert (=> b!363066 (= e!222330 #b00000000000000000000000000000000)))

(declare-fun bm!27226 () Bool)

(declare-fun call!27229 () (_ BitVec 32))

(assert (=> bm!27226 (= call!27229 (arrayCountValidKeys!0 lt!167356 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!363067 () Bool)

(declare-fun e!222329 () (_ BitVec 32))

(assert (=> b!363067 (= e!222329 call!27229)))

(declare-fun b!363068 () Bool)

(assert (=> b!363068 (= e!222329 (bvadd #b00000000000000000000000000000001 call!27229))))

(declare-fun d!71993 () Bool)

(declare-fun lt!167368 () (_ BitVec 32))

(assert (=> d!71993 (and (bvsge lt!167368 #b00000000000000000000000000000000) (bvsle lt!167368 (bvsub (size!10098 lt!167356) #b00000000000000000000000000000000)))))

(assert (=> d!71993 (= lt!167368 e!222330)))

(declare-fun c!53735 () Bool)

(assert (=> d!71993 (= c!53735 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!71993 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10098 lt!167356)))))

(assert (=> d!71993 (= (arrayCountValidKeys!0 lt!167356 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) lt!167368)))

(declare-fun b!363069 () Bool)

(assert (=> b!363069 (= e!222330 e!222329)))

(declare-fun c!53736 () Bool)

(assert (=> b!363069 (= c!53736 (validKeyInArray!0 (select (arr!9746 lt!167356) #b00000000000000000000000000000000)))))

(assert (= (and d!71993 c!53735) b!363066))

(assert (= (and d!71993 (not c!53735)) b!363069))

(assert (= (and b!363069 c!53736) b!363068))

(assert (= (and b!363069 (not c!53736)) b!363067))

(assert (= (or b!363068 b!363067) bm!27226))

(declare-fun m!360025 () Bool)

(assert (=> bm!27226 m!360025))

(declare-fun m!360027 () Bool)

(assert (=> b!363069 m!360027))

(assert (=> b!363069 m!360027))

(declare-fun m!360029 () Bool)

(assert (=> b!363069 m!360029))

(assert (=> b!363032 d!71993))

(declare-fun b!363070 () Bool)

(declare-fun e!222332 () (_ BitVec 32))

(assert (=> b!363070 (= e!222332 #b00000000000000000000000000000000)))

(declare-fun bm!27227 () Bool)

(declare-fun call!27230 () (_ BitVec 32))

(assert (=> bm!27227 (= call!27230 (arrayCountValidKeys!0 a!4337 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1478)))))

(declare-fun b!363071 () Bool)

(declare-fun e!222331 () (_ BitVec 32))

(assert (=> b!363071 (= e!222331 call!27230)))

(declare-fun b!363072 () Bool)

(assert (=> b!363072 (= e!222331 (bvadd #b00000000000000000000000000000001 call!27230))))

(declare-fun d!71995 () Bool)

(declare-fun lt!167369 () (_ BitVec 32))

(assert (=> d!71995 (and (bvsge lt!167369 #b00000000000000000000000000000000) (bvsle lt!167369 (bvsub (size!10098 a!4337) #b00000000000000000000000000000000)))))

(assert (=> d!71995 (= lt!167369 e!222332)))

(declare-fun c!53737 () Bool)

(assert (=> d!71995 (= c!53737 (bvsge #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)))))

(assert (=> d!71995 (and (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 i!1478) (size!10098 a!4337)))))

(assert (=> d!71995 (= (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1478)) lt!167369)))

(declare-fun b!363073 () Bool)

(assert (=> b!363073 (= e!222332 e!222331)))

(declare-fun c!53738 () Bool)

(assert (=> b!363073 (= c!53738 (validKeyInArray!0 (select (arr!9746 a!4337) #b00000000000000000000000000000000)))))

(assert (= (and d!71995 c!53737) b!363070))

(assert (= (and d!71995 (not c!53737)) b!363073))

(assert (= (and b!363073 c!53738) b!363072))

(assert (= (and b!363073 (not c!53738)) b!363071))

(assert (= (or b!363072 b!363071) bm!27227))

(declare-fun m!360031 () Bool)

(assert (=> bm!27227 m!360031))

(declare-fun m!360033 () Bool)

(assert (=> b!363073 m!360033))

(assert (=> b!363073 m!360033))

(declare-fun m!360035 () Bool)

(assert (=> b!363073 m!360035))

(assert (=> b!363032 d!71995))

(declare-fun d!71999 () Bool)

(declare-fun e!222347 () Bool)

(assert (=> d!71999 e!222347))

(declare-fun res!202435 () Bool)

(assert (=> d!71999 (=> (not res!202435) (not e!222347))))

(assert (=> d!71999 (= res!202435 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10098 a!4337))))))

(declare-fun lt!167378 () Unit!11205)

(declare-fun choose!19 (array!20537 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!11205)

(assert (=> d!71999 (= lt!167378 (choose!19 a!4337 i!1478 k0!2980 i!1478))))

(assert (=> d!71999 (and (bvsge i!1478 #b00000000000000000000000000000000) (bvslt i!1478 (size!10098 a!4337)))))

(assert (=> d!71999 (= (lemmaAddValidKeyAndNumKeysFromImpliesFromZero!0 a!4337 i!1478 k0!2980 i!1478) lt!167378)))

(declare-fun b!363100 () Bool)

(assert (=> b!363100 (= e!222347 (= (arrayCountValidKeys!0 (array!20538 (store (arr!9746 a!4337) i!1478 k0!2980) (size!10098 a!4337)) #b00000000000000000000000000000000 (bvadd i!1478 #b00000000000000000000000000000001)) (bvadd (arrayCountValidKeys!0 a!4337 #b00000000000000000000000000000000 (bvadd i!1478 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))))

(assert (= (and d!71999 res!202435) b!363100))

(declare-fun m!360049 () Bool)

(assert (=> d!71999 m!360049))

(assert (=> b!363100 m!359985))

(declare-fun m!360051 () Bool)

(assert (=> b!363100 m!360051))

(declare-fun m!360053 () Bool)

(assert (=> b!363100 m!360053))

(assert (=> b!363032 d!71999))

(check-sat (not d!71999) (not bm!27224) (not b!363065) (not bm!27226) (not b!363100) (not bm!27225) (not b!363069) (not b!363073) (not bm!27227) (not b!363061))
(check-sat)
