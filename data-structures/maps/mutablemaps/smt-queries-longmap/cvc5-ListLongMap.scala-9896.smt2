; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!117164 () Bool)

(assert start!117164)

(declare-fun b!1378487 () Bool)

(declare-fun e!780942 () Bool)

(declare-fun e!780943 () Bool)

(assert (=> b!1378487 (= e!780942 e!780943)))

(declare-fun res!921134 () Bool)

(assert (=> b!1378487 (=> (not res!921134) (not e!780943))))

(declare-fun from!3466 () (_ BitVec 32))

(declare-fun lt!606743 () (_ BitVec 32))

(declare-fun lt!606746 () (_ BitVec 32))

(assert (=> b!1378487 (= res!921134 (and (= lt!606746 (bvsub lt!606743 #b00000000000000000000000000000001)) (bvsgt from!3466 #b00000000000000000000000000000000)))))

(declare-datatypes ((array!93697 0))(
  ( (array!93698 (arr!45244 (Array (_ BitVec 32) (_ BitVec 64))) (size!45795 (_ BitVec 32))) )
))
(declare-fun lt!606747 () array!93697)

(declare-fun i!1451 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!93697 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1378487 (= lt!606746 (arrayCountValidKeys!0 lt!606747 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun a!4094 () array!93697)

(assert (=> b!1378487 (= lt!606743 (arrayCountValidKeys!0 a!4094 from!3466 (bvadd #b00000000000000000000000000000001 i!1451)))))

(declare-fun k!2953 () (_ BitVec 64))

(assert (=> b!1378487 (= lt!606747 (array!93698 (store (arr!45244 a!4094) i!1451 k!2953) (size!45795 a!4094)))))

(declare-fun b!1378488 () Bool)

(declare-fun e!780944 () Bool)

(assert (=> b!1378488 (= e!780944 (bvsle #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378488 (= (arrayCountValidKeys!0 lt!606747 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) (bvsub (arrayCountValidKeys!0 a!4094 #b00000000000000000000000000000000 (bvadd #b00000000000000000000000000000001 i!1451)) #b00000000000000000000000000000001))))

(declare-datatypes ((Unit!45749 0))(
  ( (Unit!45750) )
))
(declare-fun lt!606742 () Unit!45749)

(declare-fun lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 (array!93697 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32)) Unit!45749)

(assert (=> b!1378488 (= lt!606742 (lemmaRemoveValidKeyAndNumKeysFromImpliesFromZero!0 a!4094 i!1451 k!2953 (bvsub from!3466 #b00000000000000000000000000000001)))))

(declare-fun res!921131 () Bool)

(assert (=> start!117164 (=> (not res!921131) (not e!780942))))

(assert (=> start!117164 (= res!921131 (and (bvsge i!1451 #b00000000000000000000000000000000) (bvslt i!1451 (size!45795 a!4094))))))

(assert (=> start!117164 e!780942))

(assert (=> start!117164 true))

(declare-fun array_inv!34189 (array!93697) Bool)

(assert (=> start!117164 (array_inv!34189 a!4094)))

(declare-fun b!1378489 () Bool)

(declare-fun res!921130 () Bool)

(assert (=> b!1378489 (=> (not res!921130) (not e!780942))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1378489 (= res!921130 (validKeyInArray!0 (select (arr!45244 a!4094) i!1451)))))

(declare-fun b!1378490 () Bool)

(assert (=> b!1378490 (= e!780943 (not e!780944))))

(declare-fun res!921135 () Bool)

(assert (=> b!1378490 (=> res!921135 e!780944)))

(declare-fun lt!606741 () (_ BitVec 32))

(declare-fun lt!606748 () (_ BitVec 32))

(assert (=> b!1378490 (= res!921135 (or (bvsgt (bvsub from!3466 #b00000000000000000000000000000001) (size!45795 a!4094)) (bvslt i!1451 (bvsub from!3466 #b00000000000000000000000000000001)) (not (= lt!606748 (bvsub lt!606741 #b00000000000000000000000000000001)))))))

(declare-fun lt!606744 () (_ BitVec 32))

(assert (=> b!1378490 (= (bvadd lt!606744 lt!606746) lt!606748)))

(assert (=> b!1378490 (= lt!606748 (arrayCountValidKeys!0 lt!606747 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378490 (= lt!606744 (arrayCountValidKeys!0 lt!606747 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606745 () Unit!45749)

(declare-fun lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 (array!93697 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!45749)

(assert (=> b!1378490 (= lt!606745 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 lt!606747 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun lt!606740 () (_ BitVec 32))

(assert (=> b!1378490 (= (bvadd lt!606740 lt!606743) lt!606741)))

(assert (=> b!1378490 (= lt!606741 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451)))))

(assert (=> b!1378490 (= lt!606740 (arrayCountValidKeys!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) from!3466))))

(declare-fun lt!606739 () Unit!45749)

(assert (=> b!1378490 (= lt!606739 (lemmaSumOfNumOfKeysOfSubArraysIsEqualToWhole!0 a!4094 (bvsub from!3466 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 i!1451) from!3466))))

(declare-fun b!1378491 () Bool)

(declare-fun res!921133 () Bool)

(assert (=> b!1378491 (=> (not res!921133) (not e!780942))))

(assert (=> b!1378491 (= res!921133 (and (bvslt (size!45795 a!4094) #b01111111111111111111111111111111) (bvsge from!3466 #b00000000000000000000000000000000) (bvsle from!3466 (size!45795 a!4094)) (bvsge i!1451 from!3466)))))

(declare-fun b!1378492 () Bool)

(declare-fun res!921132 () Bool)

(assert (=> b!1378492 (=> (not res!921132) (not e!780942))))

(assert (=> b!1378492 (= res!921132 (not (validKeyInArray!0 k!2953)))))

(assert (= (and start!117164 res!921131) b!1378489))

(assert (= (and b!1378489 res!921130) b!1378492))

(assert (= (and b!1378492 res!921132) b!1378491))

(assert (= (and b!1378491 res!921133) b!1378487))

(assert (= (and b!1378487 res!921134) b!1378490))

(assert (= (and b!1378490 (not res!921135)) b!1378488))

(declare-fun m!1263279 () Bool)

(assert (=> b!1378487 m!1263279))

(declare-fun m!1263281 () Bool)

(assert (=> b!1378487 m!1263281))

(declare-fun m!1263283 () Bool)

(assert (=> b!1378487 m!1263283))

(declare-fun m!1263285 () Bool)

(assert (=> b!1378492 m!1263285))

(declare-fun m!1263287 () Bool)

(assert (=> b!1378490 m!1263287))

(declare-fun m!1263289 () Bool)

(assert (=> b!1378490 m!1263289))

(declare-fun m!1263291 () Bool)

(assert (=> b!1378490 m!1263291))

(declare-fun m!1263293 () Bool)

(assert (=> b!1378490 m!1263293))

(declare-fun m!1263295 () Bool)

(assert (=> b!1378490 m!1263295))

(declare-fun m!1263297 () Bool)

(assert (=> b!1378490 m!1263297))

(declare-fun m!1263299 () Bool)

(assert (=> b!1378488 m!1263299))

(declare-fun m!1263301 () Bool)

(assert (=> b!1378488 m!1263301))

(declare-fun m!1263303 () Bool)

(assert (=> b!1378488 m!1263303))

(declare-fun m!1263305 () Bool)

(assert (=> b!1378489 m!1263305))

(assert (=> b!1378489 m!1263305))

(declare-fun m!1263307 () Bool)

(assert (=> b!1378489 m!1263307))

(declare-fun m!1263309 () Bool)

(assert (=> start!117164 m!1263309))

(push 1)

(assert (not b!1378490))

(assert (not b!1378489))

(assert (not b!1378487))

(assert (not start!117164))

(assert (not b!1378492))

(assert (not b!1378488))

(check-sat)

(pop 1)

