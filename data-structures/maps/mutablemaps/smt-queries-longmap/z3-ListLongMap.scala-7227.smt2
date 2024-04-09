; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92462 () Bool)

(assert start!92462)

(declare-fun b!1050805 () Bool)

(declare-fun e!596412 () Bool)

(declare-fun e!596416 () Bool)

(assert (=> b!1050805 (= e!596412 e!596416)))

(declare-fun res!700043 () Bool)

(assert (=> b!1050805 (=> (not res!700043) (not e!596416))))

(declare-datatypes ((array!66211 0))(
  ( (array!66212 (arr!31841 (Array (_ BitVec 32) (_ BitVec 64))) (size!32378 (_ BitVec 32))) )
))
(declare-fun lt!464070 () array!66211)

(declare-fun k0!2747 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!66211 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1050805 (= res!700043 (arrayContainsKey!0 lt!464070 k0!2747 #b00000000000000000000000000000000))))

(declare-fun a!3488 () array!66211)

(declare-fun i!1381 () (_ BitVec 32))

(assert (=> b!1050805 (= lt!464070 (array!66212 (store (arr!31841 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32378 a!3488)))))

(declare-fun b!1050806 () Bool)

(declare-fun res!700044 () Bool)

(assert (=> b!1050806 (=> (not res!700044) (not e!596412))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1050806 (= res!700044 (validKeyInArray!0 k0!2747))))

(declare-fun b!1050807 () Bool)

(declare-fun e!596413 () Bool)

(assert (=> b!1050807 (= e!596416 e!596413)))

(declare-fun res!700046 () Bool)

(assert (=> b!1050807 (=> (not res!700046) (not e!596413))))

(declare-fun lt!464071 () (_ BitVec 32))

(assert (=> b!1050807 (= res!700046 (not (= lt!464071 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66211 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1050807 (= lt!464071 (arrayScanForKey!0 lt!464070 k0!2747 #b00000000000000000000000000000000))))

(declare-fun res!700040 () Bool)

(assert (=> start!92462 (=> (not res!700040) (not e!596412))))

(assert (=> start!92462 (= res!700040 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32378 a!3488)) (bvslt (size!32378 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92462 e!596412))

(assert (=> start!92462 true))

(declare-fun array_inv!24463 (array!66211) Bool)

(assert (=> start!92462 (array_inv!24463 a!3488)))

(declare-fun b!1050808 () Bool)

(assert (=> b!1050808 (= e!596413 (not true))))

(declare-fun e!596414 () Bool)

(assert (=> b!1050808 e!596414))

(declare-fun res!700045 () Bool)

(assert (=> b!1050808 (=> (not res!700045) (not e!596414))))

(assert (=> b!1050808 (= res!700045 (= (select (store (arr!31841 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!464071) k0!2747))))

(declare-fun b!1050809 () Bool)

(declare-fun e!596415 () Bool)

(assert (=> b!1050809 (= e!596414 e!596415)))

(declare-fun res!700042 () Bool)

(assert (=> b!1050809 (=> res!700042 e!596415)))

(assert (=> b!1050809 (= res!700042 (or (bvsgt lt!464071 i!1381) (bvsle i!1381 lt!464071)))))

(declare-fun b!1050810 () Bool)

(declare-fun res!700041 () Bool)

(assert (=> b!1050810 (=> (not res!700041) (not e!596412))))

(assert (=> b!1050810 (= res!700041 (= (select (arr!31841 a!3488) i!1381) k0!2747))))

(declare-fun b!1050811 () Bool)

(assert (=> b!1050811 (= e!596415 (arrayContainsKey!0 a!3488 k0!2747 i!1381))))

(declare-fun b!1050812 () Bool)

(declare-fun res!700047 () Bool)

(assert (=> b!1050812 (=> (not res!700047) (not e!596412))))

(declare-datatypes ((List!22284 0))(
  ( (Nil!22281) (Cons!22280 (h!23489 (_ BitVec 64)) (t!31598 List!22284)) )
))
(declare-fun arrayNoDuplicates!0 (array!66211 (_ BitVec 32) List!22284) Bool)

(assert (=> b!1050812 (= res!700047 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22281))))

(assert (= (and start!92462 res!700040) b!1050812))

(assert (= (and b!1050812 res!700047) b!1050806))

(assert (= (and b!1050806 res!700044) b!1050810))

(assert (= (and b!1050810 res!700041) b!1050805))

(assert (= (and b!1050805 res!700043) b!1050807))

(assert (= (and b!1050807 res!700046) b!1050808))

(assert (= (and b!1050808 res!700045) b!1050809))

(assert (= (and b!1050809 (not res!700042)) b!1050811))

(declare-fun m!971571 () Bool)

(assert (=> b!1050805 m!971571))

(declare-fun m!971573 () Bool)

(assert (=> b!1050805 m!971573))

(assert (=> b!1050808 m!971573))

(declare-fun m!971575 () Bool)

(assert (=> b!1050808 m!971575))

(declare-fun m!971577 () Bool)

(assert (=> start!92462 m!971577))

(declare-fun m!971579 () Bool)

(assert (=> b!1050812 m!971579))

(declare-fun m!971581 () Bool)

(assert (=> b!1050806 m!971581))

(declare-fun m!971583 () Bool)

(assert (=> b!1050807 m!971583))

(declare-fun m!971585 () Bool)

(assert (=> b!1050810 m!971585))

(declare-fun m!971587 () Bool)

(assert (=> b!1050811 m!971587))

(check-sat (not b!1050811) (not start!92462) (not b!1050806) (not b!1050805) (not b!1050807) (not b!1050812))
(check-sat)
