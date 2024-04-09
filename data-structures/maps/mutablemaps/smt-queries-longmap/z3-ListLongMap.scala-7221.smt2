; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92426 () Bool)

(assert start!92426)

(declare-fun b!1050423 () Bool)

(declare-fun e!596138 () Bool)

(declare-fun e!596144 () Bool)

(assert (=> b!1050423 (= e!596138 e!596144)))

(declare-fun res!699665 () Bool)

(assert (=> b!1050423 (=> res!699665 e!596144)))

(declare-fun lt!463953 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050423 (= res!699665 (bvsle lt!463953 i!1381))))

(declare-fun b!1050424 () Bool)

(declare-fun res!699666 () Bool)

(declare-fun e!596139 () Bool)

(assert (=> b!1050424 (=> (not res!699666) (not e!596139))))

(declare-datatypes ((array!66175 0))(
  ( (array!66176 (arr!31823 (Array (_ BitVec 32) (_ BitVec 64))) (size!32360 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66175)

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1050424 (= res!699666 (= (select (arr!31823 a!3488) i!1381) k0!2747))))

(declare-fun b!1050425 () Bool)

(declare-fun e!596142 () Bool)

(assert (=> b!1050425 (= e!596139 e!596142)))

(declare-fun res!699658 () Bool)

(assert (=> b!1050425 (=> (not res!699658) (not e!596142))))

(declare-fun lt!463950 () array!66175)

(declare-fun arrayContainsKey!0 (array!66175 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050425 (= res!699658 (arrayContainsKey!0 lt!463950 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050425 (= lt!463950 (array!66176 (store (arr!31823 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32360 a!3488)))))

(declare-fun b!1050426 () Bool)

(assert (=> b!1050426 (= e!596144 (arrayContainsKey!0 a!3488 k0!2747 lt!463953))))

(declare-fun res!699663 () Bool)

(assert (=> start!92426 (=> (not res!699663) (not e!596139))))

(assert (=> start!92426 (= res!699663 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32360 a!3488)) (bvslt (size!32360 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92426 e!596139))

(assert (=> start!92426 true))

(declare-fun array_inv!24445 (array!66175) Bool)

(assert (=> start!92426 (array_inv!24445 a!3488)))

(declare-fun b!1050427 () Bool)

(declare-fun res!699661 () Bool)

(assert (=> b!1050427 (=> (not res!699661) (not e!596139))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050427 (= res!699661 (validKeyInArray!0 k0!2747))))

(declare-fun b!1050428 () Bool)

(declare-fun e!596141 () Bool)

(assert (=> b!1050428 (= e!596141 true)))

(assert (=> b!1050428 false))

(declare-datatypes ((Unit!34375 0))(
  ( (Unit!34376) )
))
(declare-fun lt!463954 () Unit!34375)

(declare-datatypes ((List!22266 0))(
  ( (Nil!22263) (Cons!22262 (h!23471 (_ BitVec 64)) (t!31580 List!22266)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!66175 (_ BitVec 64) (_ BitVec 32) List!22266) Unit!34375)

(assert (=> b!1050428 (= lt!463954 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 a!3488 k0!2747 i!1381 Nil!22263))))

(assert (=> b!1050428 (arrayContainsKey!0 a!3488 k0!2747 (bvadd #b00000000000000000000000000000001 i!1381))))

(declare-fun lt!463952 () Unit!34375)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66175 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34375)

(assert (=> b!1050428 (= lt!463952 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k0!2747 lt!463953 (bvadd #b00000000000000000000000000000001 i!1381)))))

(declare-fun arrayNoDuplicates!0 (array!66175 (_ BitVec 32) List!22266) Bool)

(assert (=> b!1050428 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22263)))

(declare-fun lt!463951 () Unit!34375)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66175 (_ BitVec 32) (_ BitVec 32)) Unit!34375)

(assert (=> b!1050428 (= lt!463951 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1050429 () Bool)

(declare-fun e!596143 () Bool)

(assert (=> b!1050429 (= e!596143 (not e!596141))))

(declare-fun res!699659 () Bool)

(assert (=> b!1050429 (=> res!699659 e!596141)))

(assert (=> b!1050429 (= res!699659 (bvsle lt!463953 i!1381))))

(assert (=> b!1050429 e!596138))

(declare-fun res!699660 () Bool)

(assert (=> b!1050429 (=> (not res!699660) (not e!596138))))

(assert (=> b!1050429 (= res!699660 (= (select (store (arr!31823 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463953) k0!2747))))

(declare-fun b!1050430 () Bool)

(declare-fun res!699664 () Bool)

(assert (=> b!1050430 (=> (not res!699664) (not e!596139))))

(assert (=> b!1050430 (= res!699664 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22263))))

(declare-fun b!1050431 () Bool)

(assert (=> b!1050431 (= e!596142 e!596143)))

(declare-fun res!699662 () Bool)

(assert (=> b!1050431 (=> (not res!699662) (not e!596143))))

(assert (=> b!1050431 (= res!699662 (not (= lt!463953 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66175 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050431 (= lt!463953 (arrayScanForKey!0 lt!463950 k0!2747 #b00000000000000000000000000000000))))

(assert (= (and start!92426 res!699663) b!1050430))

(assert (= (and b!1050430 res!699664) b!1050427))

(assert (= (and b!1050427 res!699661) b!1050424))

(assert (= (and b!1050424 res!699666) b!1050425))

(assert (= (and b!1050425 res!699658) b!1050431))

(assert (= (and b!1050431 res!699662) b!1050429))

(assert (= (and b!1050429 res!699660) b!1050423))

(assert (= (and b!1050423 (not res!699665)) b!1050426))

(assert (= (and b!1050429 (not res!699659)) b!1050428))

(declare-fun m!971245 () Bool)

(assert (=> b!1050426 m!971245))

(declare-fun m!971247 () Bool)

(assert (=> b!1050430 m!971247))

(declare-fun m!971249 () Bool)

(assert (=> b!1050424 m!971249))

(declare-fun m!971251 () Bool)

(assert (=> b!1050425 m!971251))

(declare-fun m!971253 () Bool)

(assert (=> b!1050425 m!971253))

(declare-fun m!971255 () Bool)

(assert (=> b!1050431 m!971255))

(declare-fun m!971257 () Bool)

(assert (=> b!1050427 m!971257))

(declare-fun m!971259 () Bool)

(assert (=> start!92426 m!971259))

(declare-fun m!971261 () Bool)

(assert (=> b!1050428 m!971261))

(declare-fun m!971263 () Bool)

(assert (=> b!1050428 m!971263))

(declare-fun m!971265 () Bool)

(assert (=> b!1050428 m!971265))

(declare-fun m!971267 () Bool)

(assert (=> b!1050428 m!971267))

(declare-fun m!971269 () Bool)

(assert (=> b!1050428 m!971269))

(assert (=> b!1050429 m!971253))

(declare-fun m!971271 () Bool)

(assert (=> b!1050429 m!971271))

(check-sat (not b!1050425) (not b!1050427) (not b!1050426) (not b!1050430) (not b!1050428) (not b!1050431) (not start!92426))
(check-sat)
