; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92444 () Bool)

(assert start!92444)

(declare-fun b!1050597 () Bool)

(declare-fun e!596260 () Bool)

(assert (=> b!1050597 (= e!596260 (not true))))

(declare-fun k0!2747 () (_ BitVec 64))

(declare-datatypes ((array!66193 0))(
  ( (array!66194 (arr!31832 (Array (_ BitVec 32) (_ BitVec 64))) (size!32369 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66193)

(declare-fun lt!464017 () (_ BitVec 32))

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050597 (= (select (store (arr!31832 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464017) k0!2747)))

(declare-fun b!1050598 () Bool)

(declare-fun res!699832 () Bool)

(declare-fun e!596258 () Bool)

(assert (=> b!1050598 (=> (not res!699832) (not e!596258))))

(declare-datatypes ((List!22275 0))(
  ( (Nil!22272) (Cons!22271 (h!23480 (_ BitVec 64)) (t!31589 List!22275)) )
))
(declare-fun arrayNoDuplicates!0 (array!66193 (_ BitVec 32) List!22275) Bool)

(assert (=> b!1050598 (= res!699832 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22272))))

(declare-fun b!1050599 () Bool)

(declare-fun res!699837 () Bool)

(assert (=> b!1050599 (=> (not res!699837) (not e!596258))))

(assert (=> b!1050599 (= res!699837 (= (select (arr!31832 a!3488) i!1381) k0!2747))))

(declare-fun b!1050600 () Bool)

(declare-fun e!596259 () Bool)

(assert (=> b!1050600 (= e!596259 e!596260)))

(declare-fun res!699835 () Bool)

(assert (=> b!1050600 (=> (not res!699835) (not e!596260))))

(assert (=> b!1050600 (= res!699835 (not (= lt!464017 i!1381)))))

(declare-fun lt!464016 () array!66193)

(declare-fun arrayScanForKey!0 (array!66193 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050600 (= lt!464017 (arrayScanForKey!0 lt!464016 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050601 () Bool)

(assert (=> b!1050601 (= e!596258 e!596259)))

(declare-fun res!699834 () Bool)

(assert (=> b!1050601 (=> (not res!699834) (not e!596259))))

(declare-fun arrayContainsKey!0 (array!66193 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050601 (= res!699834 (arrayContainsKey!0 lt!464016 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050601 (= lt!464016 (array!66194 (store (arr!31832 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32369 a!3488)))))

(declare-fun b!1050602 () Bool)

(declare-fun res!699833 () Bool)

(assert (=> b!1050602 (=> (not res!699833) (not e!596258))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050602 (= res!699833 (validKeyInArray!0 k0!2747))))

(declare-fun res!699836 () Bool)

(assert (=> start!92444 (=> (not res!699836) (not e!596258))))

(assert (=> start!92444 (= res!699836 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32369 a!3488)) (bvslt (size!32369 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92444 e!596258))

(assert (=> start!92444 true))

(declare-fun array_inv!24454 (array!66193) Bool)

(assert (=> start!92444 (array_inv!24454 a!3488)))

(assert (= (and start!92444 res!699836) b!1050598))

(assert (= (and b!1050598 res!699832) b!1050602))

(assert (= (and b!1050602 res!699833) b!1050599))

(assert (= (and b!1050599 res!699837) b!1050601))

(assert (= (and b!1050601 res!699834) b!1050600))

(assert (= (and b!1050600 res!699835) b!1050597))

(declare-fun m!971413 () Bool)

(assert (=> b!1050599 m!971413))

(declare-fun m!971415 () Bool)

(assert (=> start!92444 m!971415))

(declare-fun m!971417 () Bool)

(assert (=> b!1050600 m!971417))

(declare-fun m!971419 () Bool)

(assert (=> b!1050598 m!971419))

(declare-fun m!971421 () Bool)

(assert (=> b!1050601 m!971421))

(declare-fun m!971423 () Bool)

(assert (=> b!1050601 m!971423))

(declare-fun m!971425 () Bool)

(assert (=> b!1050602 m!971425))

(assert (=> b!1050597 m!971423))

(declare-fun m!971427 () Bool)

(assert (=> b!1050597 m!971427))

(check-sat (not b!1050600) (not b!1050602) (not start!92444) (not b!1050598) (not b!1050601))
(check-sat)
