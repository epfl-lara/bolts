; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!92442 () Bool)

(assert start!92442)

(declare-fun res!699818 () Bool)

(declare-fun e!596248 () Bool)

(assert (=> start!92442 (=> (not res!699818) (not e!596248))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66191 0))(
  ( (array!66192 (arr!31831 (Array (_ BitVec 32) (_ BitVec 64))) (size!32368 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66191)

(assert (=> start!92442 (= res!699818 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32368 a!3488)) (bvslt (size!32368 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92442 e!596248))

(assert (=> start!92442 true))

(declare-fun array_inv!24453 (array!66191) Bool)

(assert (=> start!92442 (array_inv!24453 a!3488)))

(declare-fun b!1050579 () Bool)

(declare-fun e!596247 () Bool)

(declare-fun e!596246 () Bool)

(assert (=> b!1050579 (= e!596247 e!596246)))

(declare-fun res!699816 () Bool)

(assert (=> b!1050579 (=> (not res!699816) (not e!596246))))

(declare-fun lt!464010 () (_ BitVec 32))

(assert (=> b!1050579 (= res!699816 (not (= lt!464010 i!1381)))))

(declare-fun lt!464011 () array!66191)

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!66191 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050579 (= lt!464010 (arrayScanForKey!0 lt!464011 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1050580 () Bool)

(assert (=> b!1050580 (= e!596246 (not true))))

(assert (=> b!1050580 (= (select (store (arr!31831 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464010) k!2747)))

(declare-fun b!1050581 () Bool)

(declare-fun res!699819 () Bool)

(assert (=> b!1050581 (=> (not res!699819) (not e!596248))))

(assert (=> b!1050581 (= res!699819 (= (select (arr!31831 a!3488) i!1381) k!2747))))

(declare-fun b!1050582 () Bool)

(assert (=> b!1050582 (= e!596248 e!596247)))

(declare-fun res!699817 () Bool)

(assert (=> b!1050582 (=> (not res!699817) (not e!596247))))

(declare-fun arrayContainsKey!0 (array!66191 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050582 (= res!699817 (arrayContainsKey!0 lt!464011 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1050582 (= lt!464011 (array!66192 (store (arr!31831 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32368 a!3488)))))

(declare-fun b!1050583 () Bool)

(declare-fun res!699815 () Bool)

(assert (=> b!1050583 (=> (not res!699815) (not e!596248))))

(declare-datatypes ((List!22274 0))(
  ( (Nil!22271) (Cons!22270 (h!23479 (_ BitVec 64)) (t!31588 List!22274)) )
))
(declare-fun arrayNoDuplicates!0 (array!66191 (_ BitVec 32) List!22274) Bool)

(assert (=> b!1050583 (= res!699815 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22271))))

(declare-fun b!1050584 () Bool)

(declare-fun res!699814 () Bool)

(assert (=> b!1050584 (=> (not res!699814) (not e!596248))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050584 (= res!699814 (validKeyInArray!0 k!2747))))

(assert (= (and start!92442 res!699818) b!1050583))

(assert (= (and b!1050583 res!699815) b!1050584))

(assert (= (and b!1050584 res!699814) b!1050581))

(assert (= (and b!1050581 res!699819) b!1050582))

(assert (= (and b!1050582 res!699817) b!1050579))

(assert (= (and b!1050579 res!699816) b!1050580))

(declare-fun m!971397 () Bool)

(assert (=> b!1050584 m!971397))

(declare-fun m!971399 () Bool)

(assert (=> b!1050582 m!971399))

(declare-fun m!971401 () Bool)

(assert (=> b!1050582 m!971401))

(declare-fun m!971403 () Bool)

(assert (=> b!1050583 m!971403))

(declare-fun m!971405 () Bool)

(assert (=> b!1050579 m!971405))

(declare-fun m!971407 () Bool)

(assert (=> start!92442 m!971407))

(assert (=> b!1050580 m!971401))

(declare-fun m!971409 () Bool)

(assert (=> b!1050580 m!971409))

(declare-fun m!971411 () Bool)

(assert (=> b!1050581 m!971411))

(push 1)

