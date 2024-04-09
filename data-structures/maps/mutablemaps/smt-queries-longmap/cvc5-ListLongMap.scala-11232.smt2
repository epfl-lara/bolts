; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131056 () Bool)

(assert start!131056)

(declare-fun b!1537203 () Bool)

(declare-fun e!855541 () Bool)

(assert (=> b!1537203 (= e!855541 (not true))))

(declare-datatypes ((SeekEntryResult!13407 0))(
  ( (MissingZero!13407 (index!56022 (_ BitVec 32))) (Found!13407 (index!56023 (_ BitVec 32))) (Intermediate!13407 (undefined!14219 Bool) (index!56024 (_ BitVec 32)) (x!137756 (_ BitVec 32))) (Undefined!13407) (MissingVacant!13407 (index!56025 (_ BitVec 32))) )
))
(declare-fun lt!664597 () SeekEntryResult!13407)

(declare-fun x!510 () (_ BitVec 32))

(declare-fun lt!664598 () (_ BitVec 32))

(declare-datatypes ((array!102081 0))(
  ( (array!102082 (arr!49252 (Array (_ BitVec 32) (_ BitVec 64))) (size!49803 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102081)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102081 (_ BitVec 32)) SeekEntryResult!13407)

(assert (=> b!1537203 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664598 vacantIndex!5 (select (store (arr!49252 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102082 (store (arr!49252 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49803 a!2792)) mask!2480) lt!664597)))

(declare-datatypes ((Unit!51338 0))(
  ( (Unit!51339) )
))
(declare-fun lt!664599 () Unit!51338)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102081 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51338)

(assert (=> b!1537203 (= lt!664599 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664598 vacantIndex!5 mask!2480))))

(declare-fun b!1537204 () Bool)

(declare-fun res!1054428 () Bool)

(declare-fun e!855544 () Bool)

(assert (=> b!1537204 (=> (not res!1054428) (not e!855544))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1537204 (= res!1054428 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49803 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49803 a!2792)) (= (select (arr!49252 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1537205 () Bool)

(declare-fun res!1054431 () Bool)

(assert (=> b!1537205 (=> (not res!1054431) (not e!855544))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1537205 (= res!1054431 (validKeyInArray!0 (select (arr!49252 a!2792) i!951)))))

(declare-fun b!1537206 () Bool)

(declare-fun e!855545 () Bool)

(assert (=> b!1537206 (= e!855544 e!855545)))

(declare-fun res!1054430 () Bool)

(assert (=> b!1537206 (=> (not res!1054430) (not e!855545))))

(declare-fun lt!664600 () SeekEntryResult!13407)

(assert (=> b!1537206 (= res!1054430 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49252 a!2792) j!64) a!2792 mask!2480) lt!664600))))

(assert (=> b!1537206 (= lt!664600 (Found!13407 j!64))))

(declare-fun b!1537207 () Bool)

(declare-fun e!855543 () Bool)

(assert (=> b!1537207 (= e!855545 e!855543)))

(declare-fun res!1054432 () Bool)

(assert (=> b!1537207 (=> (not res!1054432) (not e!855543))))

(assert (=> b!1537207 (= res!1054432 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664598 #b00000000000000000000000000000000) (bvslt lt!664598 (size!49803 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1537207 (= lt!664598 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1537208 () Bool)

(declare-fun res!1054429 () Bool)

(assert (=> b!1537208 (=> (not res!1054429) (not e!855544))))

(assert (=> b!1537208 (= res!1054429 (and (= (size!49803 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49803 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49803 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1537209 () Bool)

(declare-fun res!1054433 () Bool)

(assert (=> b!1537209 (=> (not res!1054433) (not e!855544))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102081 (_ BitVec 32)) Bool)

(assert (=> b!1537209 (= res!1054433 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1537210 () Bool)

(declare-fun res!1054427 () Bool)

(assert (=> b!1537210 (=> (not res!1054427) (not e!855544))))

(declare-datatypes ((List!35906 0))(
  ( (Nil!35903) (Cons!35902 (h!37348 (_ BitVec 64)) (t!50607 List!35906)) )
))
(declare-fun arrayNoDuplicates!0 (array!102081 (_ BitVec 32) List!35906) Bool)

(assert (=> b!1537210 (= res!1054427 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35903))))

(declare-fun b!1537211 () Bool)

(declare-fun res!1054435 () Bool)

(assert (=> b!1537211 (=> (not res!1054435) (not e!855544))))

(assert (=> b!1537211 (= res!1054435 (validKeyInArray!0 (select (arr!49252 a!2792) j!64)))))

(declare-fun b!1537212 () Bool)

(declare-fun res!1054436 () Bool)

(assert (=> b!1537212 (=> (not res!1054436) (not e!855545))))

(assert (=> b!1537212 (= res!1054436 (not (= (select (arr!49252 a!2792) index!463) (select (arr!49252 a!2792) j!64))))))

(declare-fun res!1054434 () Bool)

(assert (=> start!131056 (=> (not res!1054434) (not e!855544))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131056 (= res!1054434 (validMask!0 mask!2480))))

(assert (=> start!131056 e!855544))

(assert (=> start!131056 true))

(declare-fun array_inv!38197 (array!102081) Bool)

(assert (=> start!131056 (array_inv!38197 a!2792)))

(declare-fun b!1537213 () Bool)

(assert (=> b!1537213 (= e!855543 e!855541)))

(declare-fun res!1054437 () Bool)

(assert (=> b!1537213 (=> (not res!1054437) (not e!855541))))

(assert (=> b!1537213 (= res!1054437 (= lt!664597 lt!664600))))

(assert (=> b!1537213 (= lt!664597 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664598 vacantIndex!5 (select (arr!49252 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!131056 res!1054434) b!1537208))

(assert (= (and b!1537208 res!1054429) b!1537205))

(assert (= (and b!1537205 res!1054431) b!1537211))

(assert (= (and b!1537211 res!1054435) b!1537209))

(assert (= (and b!1537209 res!1054433) b!1537210))

(assert (= (and b!1537210 res!1054427) b!1537204))

(assert (= (and b!1537204 res!1054428) b!1537206))

(assert (= (and b!1537206 res!1054430) b!1537212))

(assert (= (and b!1537212 res!1054436) b!1537207))

(assert (= (and b!1537207 res!1054432) b!1537213))

(assert (= (and b!1537213 res!1054437) b!1537203))

(declare-fun m!1419753 () Bool)

(assert (=> b!1537212 m!1419753))

(declare-fun m!1419755 () Bool)

(assert (=> b!1537212 m!1419755))

(declare-fun m!1419757 () Bool)

(assert (=> b!1537204 m!1419757))

(assert (=> b!1537211 m!1419755))

(assert (=> b!1537211 m!1419755))

(declare-fun m!1419759 () Bool)

(assert (=> b!1537211 m!1419759))

(declare-fun m!1419761 () Bool)

(assert (=> start!131056 m!1419761))

(declare-fun m!1419763 () Bool)

(assert (=> start!131056 m!1419763))

(declare-fun m!1419765 () Bool)

(assert (=> b!1537203 m!1419765))

(declare-fun m!1419767 () Bool)

(assert (=> b!1537203 m!1419767))

(assert (=> b!1537203 m!1419767))

(declare-fun m!1419769 () Bool)

(assert (=> b!1537203 m!1419769))

(declare-fun m!1419771 () Bool)

(assert (=> b!1537203 m!1419771))

(declare-fun m!1419773 () Bool)

(assert (=> b!1537207 m!1419773))

(declare-fun m!1419775 () Bool)

(assert (=> b!1537210 m!1419775))

(assert (=> b!1537206 m!1419755))

(assert (=> b!1537206 m!1419755))

(declare-fun m!1419777 () Bool)

(assert (=> b!1537206 m!1419777))

(assert (=> b!1537213 m!1419755))

(assert (=> b!1537213 m!1419755))

(declare-fun m!1419779 () Bool)

(assert (=> b!1537213 m!1419779))

(declare-fun m!1419781 () Bool)

(assert (=> b!1537209 m!1419781))

(declare-fun m!1419783 () Bool)

(assert (=> b!1537205 m!1419783))

(assert (=> b!1537205 m!1419783))

(declare-fun m!1419785 () Bool)

(assert (=> b!1537205 m!1419785))

(push 1)

