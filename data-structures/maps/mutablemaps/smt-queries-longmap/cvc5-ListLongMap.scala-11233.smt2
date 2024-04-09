; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131062 () Bool)

(assert start!131062)

(declare-fun b!1537302 () Bool)

(declare-fun e!855586 () Bool)

(declare-fun e!855589 () Bool)

(assert (=> b!1537302 (= e!855586 e!855589)))

(declare-fun res!1054529 () Bool)

(assert (=> b!1537302 (=> (not res!1054529) (not e!855589))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102087 0))(
  ( (array!102088 (arr!49255 (Array (_ BitVec 32) (_ BitVec 64))) (size!49806 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102087)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13410 0))(
  ( (MissingZero!13410 (index!56034 (_ BitVec 32))) (Found!13410 (index!56035 (_ BitVec 32))) (Intermediate!13410 (undefined!14222 Bool) (index!56036 (_ BitVec 32)) (x!137767 (_ BitVec 32))) (Undefined!13410) (MissingVacant!13410 (index!56037 (_ BitVec 32))) )
))
(declare-fun lt!664633 () SeekEntryResult!13410)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102087 (_ BitVec 32)) SeekEntryResult!13410)

(assert (=> b!1537302 (= res!1054529 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49255 a!2792) j!64) a!2792 mask!2480) lt!664633))))

(assert (=> b!1537302 (= lt!664633 (Found!13410 j!64))))

(declare-fun b!1537303 () Bool)

(declare-fun e!855590 () Bool)

(assert (=> b!1537303 (= e!855589 e!855590)))

(declare-fun res!1054532 () Bool)

(assert (=> b!1537303 (=> (not res!1054532) (not e!855590))))

(declare-fun lt!664636 () (_ BitVec 32))

(assert (=> b!1537303 (= res!1054532 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664636 #b00000000000000000000000000000000) (bvslt lt!664636 (size!49806 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1537303 (= lt!664636 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1537304 () Bool)

(declare-fun res!1054531 () Bool)

(assert (=> b!1537304 (=> (not res!1054531) (not e!855586))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537304 (= res!1054531 (validKeyInArray!0 (select (arr!49255 a!2792) i!951)))))

(declare-fun b!1537305 () Bool)

(declare-fun res!1054528 () Bool)

(assert (=> b!1537305 (=> (not res!1054528) (not e!855586))))

(assert (=> b!1537305 (= res!1054528 (validKeyInArray!0 (select (arr!49255 a!2792) j!64)))))

(declare-fun b!1537306 () Bool)

(declare-fun res!1054527 () Bool)

(assert (=> b!1537306 (=> (not res!1054527) (not e!855586))))

(declare-datatypes ((List!35909 0))(
  ( (Nil!35906) (Cons!35905 (h!37351 (_ BitVec 64)) (t!50610 List!35909)) )
))
(declare-fun arrayNoDuplicates!0 (array!102087 (_ BitVec 32) List!35909) Bool)

(assert (=> b!1537306 (= res!1054527 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35906))))

(declare-fun b!1537307 () Bool)

(declare-fun e!855587 () Bool)

(assert (=> b!1537307 (= e!855587 (not true))))

(declare-fun lt!664634 () SeekEntryResult!13410)

(assert (=> b!1537307 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664636 vacantIndex!5 (select (store (arr!49255 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102088 (store (arr!49255 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49806 a!2792)) mask!2480) lt!664634)))

(declare-datatypes ((Unit!51344 0))(
  ( (Unit!51345) )
))
(declare-fun lt!664635 () Unit!51344)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102087 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51344)

(assert (=> b!1537307 (= lt!664635 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664636 vacantIndex!5 mask!2480))))

(declare-fun b!1537308 () Bool)

(declare-fun res!1054536 () Bool)

(assert (=> b!1537308 (=> (not res!1054536) (not e!855586))))

(assert (=> b!1537308 (= res!1054536 (and (= (size!49806 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49806 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49806 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537309 () Bool)

(declare-fun res!1054534 () Bool)

(assert (=> b!1537309 (=> (not res!1054534) (not e!855586))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102087 (_ BitVec 32)) Bool)

(assert (=> b!1537309 (= res!1054534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun res!1054526 () Bool)

(assert (=> start!131062 (=> (not res!1054526) (not e!855586))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131062 (= res!1054526 (validMask!0 mask!2480))))

(assert (=> start!131062 e!855586))

(assert (=> start!131062 true))

(declare-fun array_inv!38200 (array!102087) Bool)

(assert (=> start!131062 (array_inv!38200 a!2792)))

(declare-fun b!1537310 () Bool)

(declare-fun res!1054530 () Bool)

(assert (=> b!1537310 (=> (not res!1054530) (not e!855589))))

(assert (=> b!1537310 (= res!1054530 (not (= (select (arr!49255 a!2792) index!463) (select (arr!49255 a!2792) j!64))))))

(declare-fun b!1537311 () Bool)

(declare-fun res!1054533 () Bool)

(assert (=> b!1537311 (=> (not res!1054533) (not e!855586))))

(assert (=> b!1537311 (= res!1054533 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49806 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49806 a!2792)) (= (select (arr!49255 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537312 () Bool)

(assert (=> b!1537312 (= e!855590 e!855587)))

(declare-fun res!1054535 () Bool)

(assert (=> b!1537312 (=> (not res!1054535) (not e!855587))))

(assert (=> b!1537312 (= res!1054535 (= lt!664634 lt!664633))))

(assert (=> b!1537312 (= lt!664634 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664636 vacantIndex!5 (select (arr!49255 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!131062 res!1054526) b!1537308))

(assert (= (and b!1537308 res!1054536) b!1537304))

(assert (= (and b!1537304 res!1054531) b!1537305))

(assert (= (and b!1537305 res!1054528) b!1537309))

(assert (= (and b!1537309 res!1054534) b!1537306))

(assert (= (and b!1537306 res!1054527) b!1537311))

(assert (= (and b!1537311 res!1054533) b!1537302))

(assert (= (and b!1537302 res!1054529) b!1537310))

(assert (= (and b!1537310 res!1054530) b!1537303))

(assert (= (and b!1537303 res!1054532) b!1537312))

(assert (= (and b!1537312 res!1054535) b!1537307))

(declare-fun m!1419855 () Bool)

(assert (=> b!1537309 m!1419855))

(declare-fun m!1419857 () Bool)

(assert (=> b!1537305 m!1419857))

(assert (=> b!1537305 m!1419857))

(declare-fun m!1419859 () Bool)

(assert (=> b!1537305 m!1419859))

(declare-fun m!1419861 () Bool)

(assert (=> b!1537310 m!1419861))

(assert (=> b!1537310 m!1419857))

(assert (=> b!1537302 m!1419857))

(assert (=> b!1537302 m!1419857))

(declare-fun m!1419863 () Bool)

(assert (=> b!1537302 m!1419863))

(declare-fun m!1419865 () Bool)

(assert (=> b!1537307 m!1419865))

(declare-fun m!1419867 () Bool)

(assert (=> b!1537307 m!1419867))

(assert (=> b!1537307 m!1419867))

(declare-fun m!1419869 () Bool)

(assert (=> b!1537307 m!1419869))

(declare-fun m!1419871 () Bool)

(assert (=> b!1537307 m!1419871))

(declare-fun m!1419873 () Bool)

(assert (=> b!1537303 m!1419873))

(declare-fun m!1419875 () Bool)

(assert (=> b!1537311 m!1419875))

(assert (=> b!1537312 m!1419857))

(assert (=> b!1537312 m!1419857))

(declare-fun m!1419877 () Bool)

(assert (=> b!1537312 m!1419877))

(declare-fun m!1419879 () Bool)

(assert (=> start!131062 m!1419879))

(declare-fun m!1419881 () Bool)

(assert (=> start!131062 m!1419881))

(declare-fun m!1419883 () Bool)

(assert (=> b!1537304 m!1419883))

(assert (=> b!1537304 m!1419883))

(declare-fun m!1419885 () Bool)

(assert (=> b!1537304 m!1419885))

(declare-fun m!1419887 () Bool)

(assert (=> b!1537306 m!1419887))

(push 1)

