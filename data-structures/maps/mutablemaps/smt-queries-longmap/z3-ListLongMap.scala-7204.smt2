; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92324 () Bool)

(assert start!92324)

(declare-fun b!1048803 () Bool)

(declare-fun e!594991 () Bool)

(assert (=> b!1048803 (= e!594991 true)))

(declare-datatypes ((array!66073 0))(
  ( (array!66074 (arr!31772 (Array (_ BitVec 32) (_ BitVec 64))) (size!32309 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66073)

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((List!22215 0))(
  ( (Nil!22212) (Cons!22211 (h!23420 (_ BitVec 64)) (t!31529 List!22215)) )
))
(declare-fun arrayNoDuplicates!0 (array!66073 (_ BitVec 32) List!22215) Bool)

(assert (=> b!1048803 (arrayNoDuplicates!0 a!3488 i!1381 Nil!22212)))

(declare-datatypes ((Unit!34273 0))(
  ( (Unit!34274) )
))
(declare-fun lt!463284 () Unit!34273)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66073 (_ BitVec 32) (_ BitVec 32)) Unit!34273)

(assert (=> b!1048803 (= lt!463284 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 i!1381))))

(declare-fun b!1048804 () Bool)

(declare-fun res!698039 () Bool)

(declare-fun e!594990 () Bool)

(assert (=> b!1048804 (=> (not res!698039) (not e!594990))))

(assert (=> b!1048804 (= res!698039 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22212))))

(declare-fun b!1048805 () Bool)

(declare-fun e!594988 () Bool)

(assert (=> b!1048805 (= e!594988 (not e!594991))))

(declare-fun res!698046 () Bool)

(assert (=> b!1048805 (=> res!698046 e!594991)))

(declare-fun lt!463285 () (_ BitVec 32))

(assert (=> b!1048805 (= res!698046 (bvsle lt!463285 i!1381))))

(declare-fun e!594989 () Bool)

(assert (=> b!1048805 e!594989))

(declare-fun res!698038 () Bool)

(assert (=> b!1048805 (=> (not res!698038) (not e!594989))))

(declare-fun k0!2747 () (_ BitVec 64))

(assert (=> b!1048805 (= res!698038 (= (select (store (arr!31772 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!463285) k0!2747))))

(declare-fun res!698043 () Bool)

(assert (=> start!92324 (=> (not res!698043) (not e!594990))))

(assert (=> start!92324 (= res!698043 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32309 a!3488)) (bvslt (size!32309 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!92324 e!594990))

(assert (=> start!92324 true))

(declare-fun array_inv!24394 (array!66073) Bool)

(assert (=> start!92324 (array_inv!24394 a!3488)))

(declare-fun b!1048806 () Bool)

(declare-fun e!594986 () Bool)

(assert (=> b!1048806 (= e!594989 e!594986)))

(declare-fun res!698040 () Bool)

(assert (=> b!1048806 (=> res!698040 e!594986)))

(assert (=> b!1048806 (= res!698040 (bvsle lt!463285 i!1381))))

(declare-fun b!1048807 () Bool)

(declare-fun e!594992 () Bool)

(assert (=> b!1048807 (= e!594992 e!594988)))

(declare-fun res!698042 () Bool)

(assert (=> b!1048807 (=> (not res!698042) (not e!594988))))

(assert (=> b!1048807 (= res!698042 (not (= lt!463285 i!1381)))))

(declare-fun lt!463283 () array!66073)

(declare-fun arrayScanForKey!0 (array!66073 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1048807 (= lt!463285 (arrayScanForKey!0 lt!463283 k0!2747 #b00000000000000000000000000000000))))

(declare-fun b!1048808 () Bool)

(assert (=> b!1048808 (= e!594990 e!594992)))

(declare-fun res!698044 () Bool)

(assert (=> b!1048808 (=> (not res!698044) (not e!594992))))

(declare-fun arrayContainsKey!0 (array!66073 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1048808 (= res!698044 (arrayContainsKey!0 lt!463283 k0!2747 #b00000000000000000000000000000000))))

(assert (=> b!1048808 (= lt!463283 (array!66074 (store (arr!31772 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32309 a!3488)))))

(declare-fun b!1048809 () Bool)

(declare-fun res!698045 () Bool)

(assert (=> b!1048809 (=> (not res!698045) (not e!594990))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1048809 (= res!698045 (validKeyInArray!0 k0!2747))))

(declare-fun b!1048810 () Bool)

(declare-fun res!698041 () Bool)

(assert (=> b!1048810 (=> (not res!698041) (not e!594990))))

(assert (=> b!1048810 (= res!698041 (= (select (arr!31772 a!3488) i!1381) k0!2747))))

(declare-fun b!1048811 () Bool)

(assert (=> b!1048811 (= e!594986 (arrayContainsKey!0 a!3488 k0!2747 lt!463285))))

(assert (= (and start!92324 res!698043) b!1048804))

(assert (= (and b!1048804 res!698039) b!1048809))

(assert (= (and b!1048809 res!698045) b!1048810))

(assert (= (and b!1048810 res!698041) b!1048808))

(assert (= (and b!1048808 res!698044) b!1048807))

(assert (= (and b!1048807 res!698042) b!1048805))

(assert (= (and b!1048805 res!698038) b!1048806))

(assert (= (and b!1048806 (not res!698040)) b!1048811))

(assert (= (and b!1048805 (not res!698046)) b!1048803))

(declare-fun m!969811 () Bool)

(assert (=> b!1048804 m!969811))

(declare-fun m!969813 () Bool)

(assert (=> b!1048811 m!969813))

(declare-fun m!969815 () Bool)

(assert (=> b!1048808 m!969815))

(declare-fun m!969817 () Bool)

(assert (=> b!1048808 m!969817))

(declare-fun m!969819 () Bool)

(assert (=> start!92324 m!969819))

(assert (=> b!1048805 m!969817))

(declare-fun m!969821 () Bool)

(assert (=> b!1048805 m!969821))

(declare-fun m!969823 () Bool)

(assert (=> b!1048809 m!969823))

(declare-fun m!969825 () Bool)

(assert (=> b!1048807 m!969825))

(declare-fun m!969827 () Bool)

(assert (=> b!1048803 m!969827))

(declare-fun m!969829 () Bool)

(assert (=> b!1048803 m!969829))

(declare-fun m!969831 () Bool)

(assert (=> b!1048810 m!969831))

(check-sat (not b!1048803) (not b!1048807) (not start!92324) (not b!1048808) (not b!1048804) (not b!1048811) (not b!1048809))
(check-sat)
