; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92410 () Bool)

(assert start!92410)

(declare-fun b!1050204 () Bool)

(declare-fun e!595969 () Bool)

(declare-fun e!595973 () Bool)

(assert (=> b!1050204 (= e!595969 (not e!595973))))

(declare-fun res!699444 () Bool)

(assert (=> b!1050204 (=> res!699444 e!595973)))

(declare-fun lt!463831 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050204 (= res!699444 (bvsle lt!463831 i!1381))))

(declare-fun e!595974 () Bool)

(assert (=> b!1050204 e!595974))

(declare-fun res!699447 () Bool)

(assert (=> b!1050204 (=> (not res!699447) (not e!595974))))

(declare-datatypes ((array!66159 0))(
  ( (array!66160 (arr!31815 (Array (_ BitVec 32) (_ BitVec 64))) (size!32352 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66159)

(declare-fun k!2747 () (_ BitVec 64))

(assert (=> b!1050204 (= res!699447 (= (select (store (arr!31815 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463831) k!2747))))

(declare-fun b!1050205 () Bool)

(declare-fun e!595971 () Bool)

(assert (=> b!1050205 (= e!595974 e!595971)))

(declare-fun res!699448 () Bool)

(assert (=> b!1050205 (=> res!699448 e!595971)))

(assert (=> b!1050205 (= res!699448 (bvsle lt!463831 i!1381))))

(declare-fun b!1050206 () Bool)

(declare-fun res!699446 () Bool)

(declare-fun e!595976 () Bool)

(assert (=> b!1050206 (=> (not res!699446) (not e!595976))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050206 (= res!699446 (validKeyInArray!0 k!2747))))

(declare-fun b!1050207 () Bool)

(declare-fun res!699445 () Bool)

(assert (=> b!1050207 (=> (not res!699445) (not e!595976))))

(assert (=> b!1050207 (= res!699445 (= (select (arr!31815 a!3488) i!1381) k!2747))))

(declare-fun b!1050208 () Bool)

(declare-fun e!595972 () Bool)

(assert (=> b!1050208 (= e!595973 e!595972)))

(declare-fun res!699441 () Bool)

(assert (=> b!1050208 (=> res!699441 e!595972)))

(assert (=> b!1050208 (= res!699441 (bvsge (bvadd #b00000000000000000000000000000001 i!1381) (size!32352 a!3488)))))

(declare-fun arrayContainsKey!0 (array!66159 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050208 (arrayContainsKey!0 a!3488 k!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-datatypes ((Unit!34359 0))(
  ( (Unit!34360) )
))
(declare-fun lt!463832 () Unit!34359)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66159 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34359)

(assert (=> b!1050208 (= lt!463832 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 lt!463831 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-datatypes ((List!22258 0))(
  ( (Nil!22255) (Cons!22254 (h!23463 (_ BitVec 64)) (t!31572 List!22258)) )
))
(declare-fun arrayNoDuplicates!0 (array!66159 (_ BitVec 32) List!22258) Bool)

(assert (=> b!1050208 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22255)))

(declare-fun lt!463830 () Unit!34359)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66159 (_ BitVec 32) (_ BitVec 32)) Unit!34359)

(assert (=> b!1050208 (= lt!463830 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1050209 () Bool)

(declare-fun res!699449 () Bool)

(assert (=> b!1050209 (=> res!699449 e!595972)))

(declare-fun noDuplicate!1535 (List!22258) Bool)

(assert (=> b!1050209 (= res!699449 (not (noDuplicate!1535 Nil!22255)))))

(declare-fun res!699442 () Bool)

(assert (=> start!92410 (=> (not res!699442) (not e!595976))))

(assert (=> start!92410 (= res!699442 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32352 a!3488)) (bvslt (size!32352 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92410 e!595976))

(assert (=> start!92410 true))

(declare-fun array_inv!24437 (array!66159) Bool)

(assert (=> start!92410 (array_inv!24437 a!3488)))

(declare-fun b!1050210 () Bool)

(assert (=> b!1050210 (= e!595972 true)))

(declare-fun lt!463834 () Bool)

(declare-fun contains!6150 (List!22258 (_ BitVec 64)) Bool)

(assert (=> b!1050210 (= lt!463834 (contains!6150 Nil!22255 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1050211 () Bool)

(declare-fun res!699440 () Bool)

(assert (=> b!1050211 (=> res!699440 e!595972)))

(assert (=> b!1050211 (= res!699440 (contains!6150 Nil!22255 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1050212 () Bool)

(declare-fun e!595970 () Bool)

(assert (=> b!1050212 (= e!595970 e!595969)))

(declare-fun res!699450 () Bool)

(assert (=> b!1050212 (=> (not res!699450) (not e!595969))))

(assert (=> b!1050212 (= res!699450 (not (= lt!463831 i!1381)))))

(declare-fun lt!463833 () array!66159)

(declare-fun arrayScanForKey!0 (array!66159 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050212 (= lt!463831 (arrayScanForKey!0 lt!463833 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050213 () Bool)

(assert (=> b!1050213 (= e!595976 e!595970)))

(declare-fun res!699443 () Bool)

(assert (=> b!1050213 (=> (not res!699443) (not e!595970))))

(assert (=> b!1050213 (= res!699443 (arrayContainsKey!0 lt!463833 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050213 (= lt!463833 (array!66160 (store (arr!31815 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32352 a!3488)))))

(declare-fun b!1050214 () Bool)

(assert (=> b!1050214 (= e!595971 (arrayContainsKey!0 a!3488 k!2747 lt!463831))))

(declare-fun b!1050215 () Bool)

(declare-fun res!699439 () Bool)

(assert (=> b!1050215 (=> (not res!699439) (not e!595976))))

(assert (=> b!1050215 (= res!699439 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22255))))

(assert (= (and start!92410 res!699442) b!1050215))

(assert (= (and b!1050215 res!699439) b!1050206))

(assert (= (and b!1050206 res!699446) b!1050207))

(assert (= (and b!1050207 res!699445) b!1050213))

(assert (= (and b!1050213 res!699443) b!1050212))

(assert (= (and b!1050212 res!699450) b!1050204))

(assert (= (and b!1050204 res!699447) b!1050205))

(assert (= (and b!1050205 (not res!699448)) b!1050214))

(assert (= (and b!1050204 (not res!699444)) b!1050208))

(assert (= (and b!1050208 (not res!699441)) b!1050209))

(assert (= (and b!1050209 (not res!699449)) b!1050211))

(assert (= (and b!1050211 (not res!699440)) b!1050210))

(declare-fun m!971017 () Bool)

(assert (=> b!1050215 m!971017))

(declare-fun m!971019 () Bool)

(assert (=> b!1050212 m!971019))

(declare-fun m!971021 () Bool)

(assert (=> b!1050206 m!971021))

(declare-fun m!971023 () Bool)

(assert (=> b!1050213 m!971023))

(declare-fun m!971025 () Bool)

(assert (=> b!1050213 m!971025))

(declare-fun m!971027 () Bool)

(assert (=> b!1050207 m!971027))

(declare-fun m!971029 () Bool)

(assert (=> b!1050210 m!971029))

(declare-fun m!971031 () Bool)

(assert (=> b!1050214 m!971031))

(assert (=> b!1050204 m!971025))

(declare-fun m!971033 () Bool)

(assert (=> b!1050204 m!971033))

(declare-fun m!971035 () Bool)

(assert (=> b!1050209 m!971035))

(declare-fun m!971037 () Bool)

(assert (=> b!1050211 m!971037))

(declare-fun m!971039 () Bool)

(assert (=> start!92410 m!971039))

(declare-fun m!971041 () Bool)

(assert (=> b!1050208 m!971041))

(declare-fun m!971043 () Bool)

(assert (=> b!1050208 m!971043))

(declare-fun m!971045 () Bool)

(assert (=> b!1050208 m!971045))

(declare-fun m!971047 () Bool)

(assert (=> b!1050208 m!971047))

(push 1)

