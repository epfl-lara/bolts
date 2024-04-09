; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92600 () Bool)

(assert start!92600)

(declare-fun b!1052820 () Bool)

(declare-fun e!597854 () Bool)

(declare-fun e!597851 () Bool)

(assert (=> b!1052820 (= e!597854 e!597851)))

(declare-fun res!702059 () Bool)

(assert (=> b!1052820 (=> (not res!702059) (not e!597851))))

(declare-fun lt!464971 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1052820 (= res!702059 (not (= lt!464971 i!1381)))))

(declare-datatypes ((array!66349 0))(
  ( (array!66350 (arr!31910 (Array (_ BitVec 32) (_ BitVec 64))) (size!32447 (_ BitVec 32))) )
))
(declare-fun lt!464970 () array!66349)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66349 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1052820 (= lt!464971 (arrayScanForKey!0 lt!464970 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1052821 () Bool)

(declare-fun res!702056 () Bool)

(declare-fun e!597852 () Bool)

(assert (=> b!1052821 (=> (not res!702056) (not e!597852))))

(declare-fun a!3488 () array!66349)

(declare-datatypes ((List!22353 0))(
  ( (Nil!22350) (Cons!22349 (h!23558 (_ BitVec 64)) (t!31667 List!22353)) )
))
(declare-fun arrayNoDuplicates!0 (array!66349 (_ BitVec 32) List!22353) Bool)

(assert (=> b!1052821 (= res!702056 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22350))))

(declare-fun b!1052822 () Bool)

(declare-fun res!702058 () Bool)

(assert (=> b!1052822 (=> (not res!702058) (not e!597852))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1052822 (= res!702058 (validKeyInArray!0 k0!2747))))

(declare-fun b!1052824 () Bool)

(declare-fun res!702057 () Bool)

(assert (=> b!1052824 (=> (not res!702057) (not e!597852))))

(assert (=> b!1052824 (= res!702057 (= (select (arr!31910 a!3488) i!1381) k0!2747))))

(declare-fun b!1052825 () Bool)

(assert (=> b!1052825 (= e!597851 (not true))))

(assert (=> b!1052825 (= (select (store (arr!31910 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464971) k0!2747)))

(declare-fun b!1052823 () Bool)

(assert (=> b!1052823 (= e!597852 e!597854)))

(declare-fun res!702055 () Bool)

(assert (=> b!1052823 (=> (not res!702055) (not e!597854))))

(declare-fun arrayContainsKey!0 (array!66349 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1052823 (= res!702055 (arrayContainsKey!0 lt!464970 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1052823 (= lt!464970 (array!66350 (store (arr!31910 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32447 a!3488)))))

(declare-fun res!702060 () Bool)

(assert (=> start!92600 (=> (not res!702060) (not e!597852))))

(assert (=> start!92600 (= res!702060 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32447 a!3488)) (bvslt (size!32447 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92600 e!597852))

(assert (=> start!92600 true))

(declare-fun array_inv!24532 (array!66349) Bool)

(assert (=> start!92600 (array_inv!24532 a!3488)))

(assert (= (and start!92600 res!702060) b!1052821))

(assert (= (and b!1052821 res!702056) b!1052822))

(assert (= (and b!1052822 res!702058) b!1052824))

(assert (= (and b!1052824 res!702057) b!1052823))

(assert (= (and b!1052823 res!702055) b!1052820))

(assert (= (and b!1052820 res!702059) b!1052825))

(declare-fun m!973357 () Bool)

(assert (=> b!1052825 m!973357))

(declare-fun m!973359 () Bool)

(assert (=> b!1052825 m!973359))

(declare-fun m!973361 () Bool)

(assert (=> b!1052820 m!973361))

(declare-fun m!973363 () Bool)

(assert (=> b!1052822 m!973363))

(declare-fun m!973365 () Bool)

(assert (=> start!92600 m!973365))

(declare-fun m!973367 () Bool)

(assert (=> b!1052823 m!973367))

(assert (=> b!1052823 m!973357))

(declare-fun m!973369 () Bool)

(assert (=> b!1052824 m!973369))

(declare-fun m!973371 () Bool)

(assert (=> b!1052821 m!973371))

(check-sat (not b!1052821) (not start!92600) (not b!1052820) (not b!1052822) (not b!1052823))
(check-sat)
