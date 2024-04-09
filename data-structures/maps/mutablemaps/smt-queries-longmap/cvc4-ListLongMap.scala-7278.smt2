; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92968 () Bool)

(assert start!92968)

(declare-fun res!704060 () Bool)

(declare-fun e!599587 () Bool)

(assert (=> start!92968 (=> (not res!704060) (not e!599587))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66537 0))(
  ( (array!66538 (arr!31995 (Array (_ BitVec 32) (_ BitVec 64))) (size!32532 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66537)

(assert (=> start!92968 (= res!704060 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32532 a!3488)) (bvslt (size!32532 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92968 e!599587))

(assert (=> start!92968 true))

(declare-fun array_inv!24617 (array!66537) Bool)

(assert (=> start!92968 (array_inv!24617 a!3488)))

(declare-fun b!1055048 () Bool)

(declare-fun e!599585 () Bool)

(declare-fun e!599582 () Bool)

(assert (=> b!1055048 (= e!599585 e!599582)))

(declare-fun res!704059 () Bool)

(assert (=> b!1055048 (=> res!704059 e!599582)))

(assert (=> b!1055048 (= res!704059 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32532 a!3488)))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66537 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1055048 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34557 0))(
  ( (Unit!34558) )
))
(declare-fun lt!465649 () Unit!34557)

(declare-fun lt!465652 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66537 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34557)

(assert (=> b!1055048 (= lt!465649 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!465652 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22438 0))(
  ( (Nil!22435) (Cons!22434 (h!23643 (_ BitVec 64)) (t!31752 List!22438)) )
))
(declare-fun arrayNoDuplicates!0 (array!66537 (_ BitVec 32) List!22438) Bool)

(assert (=> b!1055048 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22435)))

(declare-fun lt!465651 () Unit!34557)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66537 (_ BitVec 32) (_ BitVec 32)) Unit!34557)

(assert (=> b!1055048 (= lt!465651 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1055049 () Bool)

(declare-fun e!599581 () Bool)

(declare-fun e!599588 () Bool)

(assert (=> b!1055049 (= e!599581 e!599588)))

(declare-fun res!704063 () Bool)

(assert (=> b!1055049 (=> res!704063 e!599588)))

(assert (=> b!1055049 (= res!704063 (bvsle lt!465652 i!1381))))

(declare-fun b!1055050 () Bool)

(declare-fun res!704061 () Bool)

(assert (=> b!1055050 (=> (not res!704061) (not e!599587))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1055050 (= res!704061 (validKeyInArray!0 k!2747))))

(declare-fun b!1055051 () Bool)

(declare-fun res!704062 () Bool)

(assert (=> b!1055051 (=> (not res!704062) (not e!599587))))

(assert (=> b!1055051 (= res!704062 (= (select (arr!31995 a!3488) i!1381) k!2747))))

(declare-fun b!1055052 () Bool)

(declare-fun noDuplicate!1565 (List!22438) Bool)

(assert (=> b!1055052 (= e!599582 (noDuplicate!1565 Nil!22435))))

(declare-fun b!1055053 () Bool)

(assert (=> b!1055053 (= e!599588 (arrayContainsKey!0 a!3488 k!2747 lt!465652))))

(declare-fun b!1055054 () Bool)

(declare-fun res!704057 () Bool)

(assert (=> b!1055054 (=> (not res!704057) (not e!599587))))

(assert (=> b!1055054 (= res!704057 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22435))))

(declare-fun b!1055055 () Bool)

(declare-fun e!599586 () Bool)

(assert (=> b!1055055 (= e!599586 (not e!599585))))

(declare-fun res!704056 () Bool)

(assert (=> b!1055055 (=> res!704056 e!599585)))

(assert (=> b!1055055 (= res!704056 (bvsle lt!465652 i!1381))))

(assert (=> b!1055055 e!599581))

(declare-fun res!704058 () Bool)

(assert (=> b!1055055 (=> (not res!704058) (not e!599581))))

(assert (=> b!1055055 (= res!704058 (= (select (store (arr!31995 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!465652) k!2747))))

(declare-fun b!1055056 () Bool)

(declare-fun e!599584 () Bool)

(assert (=> b!1055056 (= e!599584 e!599586)))

(declare-fun res!704055 () Bool)

(assert (=> b!1055056 (=> (not res!704055) (not e!599586))))

(assert (=> b!1055056 (= res!704055 (not (= lt!465652 i!1381)))))

(declare-fun lt!465650 () array!66537)

(declare-fun arrayScanForKey!0 (array!66537 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1055056 (= lt!465652 (arrayScanForKey!0 lt!465650 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1055057 () Bool)

(assert (=> b!1055057 (= e!599587 e!599584)))

(declare-fun res!704064 () Bool)

(assert (=> b!1055057 (=> (not res!704064) (not e!599584))))

(assert (=> b!1055057 (= res!704064 (arrayContainsKey!0 lt!465650 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1055057 (= lt!465650 (array!66538 (store (arr!31995 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32532 a!3488)))))

(assert (= (and start!92968 res!704060) b!1055054))

(assert (= (and b!1055054 res!704057) b!1055050))

(assert (= (and b!1055050 res!704061) b!1055051))

(assert (= (and b!1055051 res!704062) b!1055057))

(assert (= (and b!1055057 res!704064) b!1055056))

(assert (= (and b!1055056 res!704055) b!1055055))

(assert (= (and b!1055055 res!704058) b!1055049))

(assert (= (and b!1055049 (not res!704063)) b!1055053))

(assert (= (and b!1055055 (not res!704056)) b!1055048))

(assert (= (and b!1055048 (not res!704059)) b!1055052))

(declare-fun m!975215 () Bool)

(assert (=> b!1055055 m!975215))

(declare-fun m!975217 () Bool)

(assert (=> b!1055055 m!975217))

(declare-fun m!975219 () Bool)

(assert (=> b!1055050 m!975219))

(declare-fun m!975221 () Bool)

(assert (=> b!1055054 m!975221))

(declare-fun m!975223 () Bool)

(assert (=> b!1055052 m!975223))

(declare-fun m!975225 () Bool)

(assert (=> b!1055051 m!975225))

(declare-fun m!975227 () Bool)

(assert (=> start!92968 m!975227))

(declare-fun m!975229 () Bool)

(assert (=> b!1055056 m!975229))

(declare-fun m!975231 () Bool)

(assert (=> b!1055048 m!975231))

(declare-fun m!975233 () Bool)

(assert (=> b!1055048 m!975233))

(declare-fun m!975235 () Bool)

(assert (=> b!1055048 m!975235))

(declare-fun m!975237 () Bool)

(assert (=> b!1055048 m!975237))

(declare-fun m!975239 () Bool)

(assert (=> b!1055053 m!975239))

(declare-fun m!975241 () Bool)

(assert (=> b!1055057 m!975241))

(assert (=> b!1055057 m!975215))

(push 1)

(assert (not b!1055056))

(assert (not b!1055053))

(assert (not b!1055052))

(assert (not b!1055057))

(assert (not start!92968))

(assert (not b!1055050))

(assert (not b!1055048))

(assert (not b!1055054))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128055 () Bool)

(assert (=> d!128055 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1055050 d!128055))

(declare-fun d!128059 () Bool)

(declare-fun lt!465664 () (_ BitVec 32))

(assert (=> d!128059 (and (or (bvslt lt!465664 #b00000000000000000000000000000000) (bvsge lt!465664 (size!32532 lt!465650)) (and (bvsge lt!465664 #b00000000000000000000000000000000) (bvslt lt!465664 (size!32532 lt!465650)))) (bvsge lt!465664 #b00000000000000000000000000000000) (bvslt lt!465664 (size!32532 lt!465650)) (= (select (arr!31995 lt!465650) lt!465664) k!2747))))

(declare-fun e!599631 () (_ BitVec 32))

(assert (=> d!128059 (= lt!465664 e!599631)))

(declare-fun c!106972 () Bool)

(assert (=> d!128059 (= c!106972 (= (select (arr!31995 lt!465650) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128059 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32532 lt!465650)) (bvslt (size!32532 lt!465650) #b01111111111111111111111111111111))))

(assert (=> d!128059 (= (arrayScanForKey!0 lt!465650 k!2747 #b00000000000000000000000000000000) lt!465664)))

(declare-fun b!1055113 () Bool)

(assert (=> b!1055113 (= e!599631 #b00000000000000000000000000000000)))

(declare-fun b!1055114 () Bool)

(assert (=> b!1055114 (= e!599631 (arrayScanForKey!0 lt!465650 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128059 c!106972) b!1055113))

(assert (= (and d!128059 (not c!106972)) b!1055114))

(declare-fun m!975273 () Bool)

(assert (=> d!128059 m!975273))

(declare-fun m!975275 () Bool)

(assert (=> d!128059 m!975275))

(declare-fun m!975277 () Bool)

(assert (=> b!1055114 m!975277))

(assert (=> b!1055056 d!128059))

(declare-fun d!128065 () Bool)

