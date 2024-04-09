; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136382 () Bool)

(assert start!136382)

(declare-fun b!1577015 () Bool)

(declare-fun e!879639 () Bool)

(declare-fun lt!675865 () (_ BitVec 32))

(declare-fun mask!910 () (_ BitVec 32))

(assert (=> b!1577015 (= e!879639 (or (bvslt lt!675865 #b00000000000000000000000000000000) (bvsge lt!675865 (bvadd #b00000000000000000000000000000001 mask!910))))))

(declare-fun x!458 () (_ BitVec 32))

(declare-fun ee!12 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1577015 (= lt!675865 (nextIndex!0 ee!12 x!458 mask!910))))

(declare-fun b!1577013 () Bool)

(declare-fun res!1077415 () Bool)

(assert (=> b!1577013 (=> (not res!1077415) (not e!879639))))

(declare-fun k0!768 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1577013 (= res!1077415 (validKeyInArray!0 k0!768))))

(declare-fun b!1577012 () Bool)

(declare-fun res!1077413 () Bool)

(assert (=> b!1577012 (=> (not res!1077413) (not e!879639))))

(declare-datatypes ((array!105525 0))(
  ( (array!105526 (arr!50879 (Array (_ BitVec 32) (_ BitVec 64))) (size!51430 (_ BitVec 32))) )
))
(declare-fun _keys!610 () array!105525)

(assert (=> b!1577012 (= res!1077413 (and (bvsge mask!910 #b00000000000000000000000000000000) (= (size!51430 _keys!610) (bvadd #b00000000000000000000000000000001 mask!910)) (bvsge ee!12 #b00000000000000000000000000000000) (bvslt ee!12 (bvadd #b00000000000000000000000000000001 mask!910)) (bvsle x!458 #b01111111111111111111111111111110) (bvsge x!458 #b00000000000000000000000000000000)))))

(declare-fun b!1577014 () Bool)

(declare-fun res!1077414 () Bool)

(assert (=> b!1577014 (=> (not res!1077414) (not e!879639))))

(assert (=> b!1577014 (= res!1077414 (and (bvslt x!458 #b01111111111111111111111111111110) (not (= (select (arr!50879 _keys!610) ee!12) k0!768)) (not (= (bvadd (select (arr!50879 _keys!610) ee!12) (select (arr!50879 _keys!610) ee!12)) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!1077416 () Bool)

(assert (=> start!136382 (=> (not res!1077416) (not e!879639))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!136382 (= res!1077416 (validMask!0 mask!910))))

(assert (=> start!136382 e!879639))

(assert (=> start!136382 true))

(declare-fun array_inv!39524 (array!105525) Bool)

(assert (=> start!136382 (array_inv!39524 _keys!610)))

(assert (= (and start!136382 res!1077416) b!1577012))

(assert (= (and b!1577012 res!1077413) b!1577013))

(assert (= (and b!1577013 res!1077415) b!1577014))

(assert (= (and b!1577014 res!1077414) b!1577015))

(declare-fun m!1449369 () Bool)

(assert (=> b!1577015 m!1449369))

(declare-fun m!1449371 () Bool)

(assert (=> b!1577013 m!1449371))

(declare-fun m!1449373 () Bool)

(assert (=> b!1577014 m!1449373))

(declare-fun m!1449375 () Bool)

(assert (=> start!136382 m!1449375))

(declare-fun m!1449377 () Bool)

(assert (=> start!136382 m!1449377))

(check-sat (not b!1577015) (not b!1577013) (not start!136382))
(check-sat)
(get-model)

(declare-fun d!165753 () Bool)

(declare-fun lt!675871 () (_ BitVec 32))

(assert (=> d!165753 (and (bvsge lt!675871 #b00000000000000000000000000000000) (bvslt lt!675871 (bvadd mask!910 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!165753 (= lt!675871 (choose!52 ee!12 x!458 mask!910))))

(assert (=> d!165753 (validMask!0 mask!910)))

(assert (=> d!165753 (= (nextIndex!0 ee!12 x!458 mask!910) lt!675871)))

(declare-fun bs!45542 () Bool)

(assert (= bs!45542 d!165753))

(declare-fun m!1449389 () Bool)

(assert (=> bs!45542 m!1449389))

(assert (=> bs!45542 m!1449375))

(assert (=> b!1577015 d!165753))

(declare-fun d!165755 () Bool)

(assert (=> d!165755 (= (validKeyInArray!0 k0!768) (and (not (= k0!768 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!768 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1577013 d!165755))

(declare-fun d!165757 () Bool)

(assert (=> d!165757 (= (validMask!0 mask!910) (and (or (= mask!910 #b00000000000000000000000000000111) (= mask!910 #b00000000000000000000000000001111) (= mask!910 #b00000000000000000000000000011111) (= mask!910 #b00000000000000000000000000111111) (= mask!910 #b00000000000000000000000001111111) (= mask!910 #b00000000000000000000000011111111) (= mask!910 #b00000000000000000000000111111111) (= mask!910 #b00000000000000000000001111111111) (= mask!910 #b00000000000000000000011111111111) (= mask!910 #b00000000000000000000111111111111) (= mask!910 #b00000000000000000001111111111111) (= mask!910 #b00000000000000000011111111111111) (= mask!910 #b00000000000000000111111111111111) (= mask!910 #b00000000000000001111111111111111) (= mask!910 #b00000000000000011111111111111111) (= mask!910 #b00000000000000111111111111111111) (= mask!910 #b00000000000001111111111111111111) (= mask!910 #b00000000000011111111111111111111) (= mask!910 #b00000000000111111111111111111111) (= mask!910 #b00000000001111111111111111111111) (= mask!910 #b00000000011111111111111111111111) (= mask!910 #b00000000111111111111111111111111) (= mask!910 #b00000001111111111111111111111111) (= mask!910 #b00000011111111111111111111111111) (= mask!910 #b00000111111111111111111111111111) (= mask!910 #b00001111111111111111111111111111) (= mask!910 #b00011111111111111111111111111111) (= mask!910 #b00111111111111111111111111111111)) (bvsle mask!910 #b00111111111111111111111111111111)))))

(assert (=> start!136382 d!165757))

(declare-fun d!165769 () Bool)

(assert (=> d!165769 (= (array_inv!39524 _keys!610) (bvsge (size!51430 _keys!610) #b00000000000000000000000000000000))))

(assert (=> start!136382 d!165769))

(check-sat (not d!165753))
(check-sat)
