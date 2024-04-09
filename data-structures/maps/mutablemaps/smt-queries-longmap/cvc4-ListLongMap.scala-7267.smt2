; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92824 () Bool)

(assert start!92824)

(declare-fun b!1053939 () Bool)

(declare-fun res!703030 () Bool)

(declare-fun e!598716 () Bool)

(assert (=> b!1053939 (=> (not res!703030) (not e!598716))))

(declare-datatypes ((array!66465 0))(
  ( (array!66466 (arr!31962 (Array (_ BitVec 32) (_ BitVec 64))) (size!32499 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66465)

(declare-datatypes ((List!22405 0))(
  ( (Nil!22402) (Cons!22401 (h!23610 (_ BitVec 64)) (t!31719 List!22405)) )
))
(declare-fun arrayNoDuplicates!0 (array!66465 (_ BitVec 32) List!22405) Bool)

(assert (=> b!1053939 (= res!703030 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22402))))

(declare-fun b!1053940 () Bool)

(declare-fun e!598712 () Bool)

(declare-fun e!598715 () Bool)

(assert (=> b!1053940 (= e!598712 e!598715)))

(declare-fun res!703038 () Bool)

(assert (=> b!1053940 (=> (not res!703038) (not e!598715))))

(declare-fun lt!465256 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1053940 (= res!703038 (not (= lt!465256 i!1381)))))

(declare-fun lt!465254 () array!66465)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66465 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1053940 (= lt!465256 (arrayScanForKey!0 lt!465254 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1053941 () Bool)

(declare-fun e!598713 () Bool)

(declare-fun e!598714 () Bool)

(assert (=> b!1053941 (= e!598713 e!598714)))

(declare-fun res!703035 () Bool)

(assert (=> b!1053941 (=> res!703035 e!598714)))

(assert (=> b!1053941 (= res!703035 (bvsle lt!465256 i!1381))))

(declare-fun b!1053942 () Bool)

(assert (=> b!1053942 (= e!598716 e!598712)))

(declare-fun res!703037 () Bool)

(assert (=> b!1053942 (=> (not res!703037) (not e!598712))))

(declare-fun arrayContainsKey!0 (array!66465 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1053942 (= res!703037 (arrayContainsKey!0 lt!465254 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1053942 (= lt!465254 (array!66466 (store (arr!31962 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32499 a!3488)))))

(declare-fun b!1053943 () Bool)

(declare-fun e!598717 () Bool)

(assert (=> b!1053943 (= e!598717 (bvsge lt!465256 #b00000000000000000000000000000000))))

(assert (=> b!1053943 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22402)))

(declare-datatypes ((Unit!34491 0))(
  ( (Unit!34492) )
))
(declare-fun lt!465255 () Unit!34491)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66465 (_ BitVec 32) (_ BitVec 32)) Unit!34491)

(assert (=> b!1053943 (= lt!465255 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1053944 () Bool)

(assert (=> b!1053944 (= e!598714 (arrayContainsKey!0 a!3488 k!2747 lt!465256))))

(declare-fun b!1053945 () Bool)

(declare-fun res!703033 () Bool)

(assert (=> b!1053945 (=> (not res!703033) (not e!598716))))

(assert (=> b!1053945 (= res!703033 (= (select (arr!31962 a!3488) i!1381) k!2747))))

(declare-fun res!703034 () Bool)

(assert (=> start!92824 (=> (not res!703034) (not e!598716))))

(assert (=> start!92824 (= res!703034 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32499 a!3488)) (bvslt (size!32499 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92824 e!598716))

(assert (=> start!92824 true))

(declare-fun array_inv!24584 (array!66465) Bool)

(assert (=> start!92824 (array_inv!24584 a!3488)))

(declare-fun b!1053946 () Bool)

(declare-fun res!703031 () Bool)

(assert (=> b!1053946 (=> (not res!703031) (not e!598716))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1053946 (= res!703031 (validKeyInArray!0 k!2747))))

(declare-fun b!1053947 () Bool)

(assert (=> b!1053947 (= e!598715 (not e!598717))))

(declare-fun res!703032 () Bool)

(assert (=> b!1053947 (=> res!703032 e!598717)))

(assert (=> b!1053947 (= res!703032 (bvsle lt!465256 i!1381))))

(assert (=> b!1053947 e!598713))

(declare-fun res!703036 () Bool)

(assert (=> b!1053947 (=> (not res!703036) (not e!598713))))

(assert (=> b!1053947 (= res!703036 (= (select (store (arr!31962 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465256) k!2747))))

(assert (= (and start!92824 res!703034) b!1053939))

(assert (= (and b!1053939 res!703030) b!1053946))

(assert (= (and b!1053946 res!703031) b!1053945))

(assert (= (and b!1053945 res!703033) b!1053942))

(assert (= (and b!1053942 res!703037) b!1053940))

(assert (= (and b!1053940 res!703038) b!1053947))

(assert (= (and b!1053947 res!703036) b!1053941))

(assert (= (and b!1053941 (not res!703035)) b!1053944))

(assert (= (and b!1053947 (not res!703032)) b!1053943))

(declare-fun m!974231 () Bool)

(assert (=> b!1053942 m!974231))

(declare-fun m!974233 () Bool)

(assert (=> b!1053942 m!974233))

(assert (=> b!1053947 m!974233))

(declare-fun m!974235 () Bool)

(assert (=> b!1053947 m!974235))

(declare-fun m!974237 () Bool)

(assert (=> b!1053940 m!974237))

(declare-fun m!974239 () Bool)

(assert (=> start!92824 m!974239))

(declare-fun m!974241 () Bool)

(assert (=> b!1053945 m!974241))

(declare-fun m!974243 () Bool)

(assert (=> b!1053944 m!974243))

(declare-fun m!974245 () Bool)

(assert (=> b!1053943 m!974245))

(declare-fun m!974247 () Bool)

(assert (=> b!1053943 m!974247))

(declare-fun m!974249 () Bool)

(assert (=> b!1053946 m!974249))

(declare-fun m!974251 () Bool)

(assert (=> b!1053939 m!974251))

(push 1)

