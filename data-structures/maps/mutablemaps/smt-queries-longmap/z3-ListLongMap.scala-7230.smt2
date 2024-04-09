; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92480 () Bool)

(assert start!92480)

(declare-fun b!1051026 () Bool)

(declare-fun res!700261 () Bool)

(declare-fun e!596581 () Bool)

(assert (=> b!1051026 (=> (not res!700261) (not e!596581))))

(declare-datatypes ((array!66229 0))(
  ( (array!66230 (arr!31850 (Array (_ BitVec 32) (_ BitVec 64))) (size!32387 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66229)

(declare-datatypes ((List!22293 0))(
  ( (Nil!22290) (Cons!22289 (h!23498 (_ BitVec 64)) (t!31607 List!22293)) )
))
(declare-fun arrayNoDuplicates!0 (array!66229 (_ BitVec 32) List!22293) Bool)

(assert (=> b!1051026 (= res!700261 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22290))))

(declare-fun res!700269 () Bool)

(assert (=> start!92480 (=> (not res!700269) (not e!596581))))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> start!92480 (= res!700269 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32387 a!3488)) (bvslt (size!32387 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92480 e!596581))

(assert (=> start!92480 true))

(declare-fun array_inv!24472 (array!66229) Bool)

(assert (=> start!92480 (array_inv!24472 a!3488)))

(declare-fun b!1051027 () Bool)

(declare-fun res!700264 () Bool)

(assert (=> b!1051027 (=> (not res!700264) (not e!596581))))

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1051027 (= res!700264 (= (select (arr!31850 a!3488) i!1381) k0!2747))))

(declare-fun b!1051028 () Bool)

(declare-fun e!596584 () Bool)

(declare-fun e!596579 () Bool)

(assert (=> b!1051028 (= e!596584 (not e!596579))))

(declare-fun res!700263 () Bool)

(assert (=> b!1051028 (=> res!700263 e!596579)))

(declare-fun lt!464129 () (_ BitVec 32))

(assert (=> b!1051028 (= res!700263 (or (bvsgt lt!464129 i!1381) (bvsle i!1381 lt!464129)))))

(declare-fun e!596585 () Bool)

(assert (=> b!1051028 e!596585))

(declare-fun res!700262 () Bool)

(assert (=> b!1051028 (=> (not res!700262) (not e!596585))))

(assert (=> b!1051028 (= res!700262 (= (select (store (arr!31850 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464129) k0!2747))))

(declare-fun b!1051029 () Bool)

(declare-fun res!700265 () Bool)

(assert (=> b!1051029 (=> (not res!700265) (not e!596581))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1051029 (= res!700265 (validKeyInArray!0 k0!2747))))

(declare-fun b!1051030 () Bool)

(declare-fun e!596582 () Bool)

(assert (=> b!1051030 (= e!596582 e!596584)))

(declare-fun res!700267 () Bool)

(assert (=> b!1051030 (=> (not res!700267) (not e!596584))))

(assert (=> b!1051030 (= res!700267 (not (= lt!464129 i!1381)))))

(declare-fun lt!464130 () array!66229)

(declare-fun arrayScanForKey!0 (array!66229 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1051030 (= lt!464129 (arrayScanForKey!0 lt!464130 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1051031 () Bool)

(assert (=> b!1051031 (= e!596581 e!596582)))

(declare-fun res!700268 () Bool)

(assert (=> b!1051031 (=> (not res!700268) (not e!596582))))

(declare-fun arrayContainsKey!0 (array!66229 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1051031 (= res!700268 (arrayContainsKey!0 lt!464130 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1051031 (= lt!464130 (array!66230 (store (arr!31850 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32387 a!3488)))))

(declare-fun b!1051032 () Bool)

(declare-fun e!596580 () Bool)

(assert (=> b!1051032 (= e!596585 e!596580)))

(declare-fun res!700266 () Bool)

(assert (=> b!1051032 (=> res!700266 e!596580)))

(assert (=> b!1051032 (= res!700266 (or (bvsgt lt!464129 i!1381) (bvsle i!1381 lt!464129)))))

(declare-fun b!1051033 () Bool)

(assert (=> b!1051033 (= e!596580 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1051034 () Bool)

(assert (=> b!1051034 (= e!596579 true)))

(assert (=> b!1051034 (arrayNoDuplicates!0 a!3488 lt!464129 Nil!22290)))

(declare-datatypes ((Unit!34381 0))(
  ( (Unit!34382) )
))
(declare-fun lt!464131 () Unit!34381)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66229 (_ BitVec 32) (_ BitVec 32)) Unit!34381)

(assert (=> b!1051034 (= lt!464131 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!464129))))

(assert (= (and start!92480 res!700269) b!1051026))

(assert (= (and b!1051026 res!700261) b!1051029))

(assert (= (and b!1051029 res!700265) b!1051027))

(assert (= (and b!1051027 res!700264) b!1051031))

(assert (= (and b!1051031 res!700268) b!1051030))

(assert (= (and b!1051030 res!700267) b!1051028))

(assert (= (and b!1051028 res!700262) b!1051032))

(assert (= (and b!1051032 (not res!700266)) b!1051033))

(assert (= (and b!1051028 (not res!700263)) b!1051034))

(declare-fun m!971737 () Bool)

(assert (=> b!1051034 m!971737))

(declare-fun m!971739 () Bool)

(assert (=> b!1051034 m!971739))

(declare-fun m!971741 () Bool)

(assert (=> b!1051031 m!971741))

(declare-fun m!971743 () Bool)

(assert (=> b!1051031 m!971743))

(assert (=> b!1051028 m!971743))

(declare-fun m!971745 () Bool)

(assert (=> b!1051028 m!971745))

(declare-fun m!971747 () Bool)

(assert (=> b!1051026 m!971747))

(declare-fun m!971749 () Bool)

(assert (=> b!1051029 m!971749))

(declare-fun m!971751 () Bool)

(assert (=> b!1051033 m!971751))

(declare-fun m!971753 () Bool)

(assert (=> b!1051030 m!971753))

(declare-fun m!971755 () Bool)

(assert (=> start!92480 m!971755))

(declare-fun m!971757 () Bool)

(assert (=> b!1051027 m!971757))

(check-sat (not b!1051030) (not b!1051031) (not b!1051029) (not start!92480) (not b!1051034) (not b!1051026) (not b!1051033))
(check-sat)
