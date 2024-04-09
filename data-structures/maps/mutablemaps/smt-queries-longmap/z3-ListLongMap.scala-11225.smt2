; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!131016 () Bool)

(assert start!131016)

(declare-fun b!1536539 () Bool)

(declare-fun res!1053765 () Bool)

(declare-fun e!855238 () Bool)

(assert (=> b!1536539 (=> (not res!1053765) (not e!855238))))

(declare-datatypes ((array!102041 0))(
  ( (array!102042 (arr!49232 (Array (_ BitVec 32) (_ BitVec 64))) (size!49783 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102041)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102041 (_ BitVec 32)) Bool)

(assert (=> b!1536539 (= res!1053765 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536540 () Bool)

(declare-fun res!1053768 () Bool)

(assert (=> b!1536540 (=> (not res!1053768) (not e!855238))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1536540 (= res!1053768 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49783 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49783 a!2792)) (= (select (arr!49232 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1536541 () Bool)

(declare-fun e!855240 () Bool)

(declare-fun e!855239 () Bool)

(assert (=> b!1536541 (= e!855240 e!855239)))

(declare-fun res!1053764 () Bool)

(assert (=> b!1536541 (=> (not res!1053764) (not e!855239))))

(declare-datatypes ((SeekEntryResult!13387 0))(
  ( (MissingZero!13387 (index!55942 (_ BitVec 32))) (Found!13387 (index!55943 (_ BitVec 32))) (Intermediate!13387 (undefined!14199 Bool) (index!55944 (_ BitVec 32)) (x!137680 (_ BitVec 32))) (Undefined!13387) (MissingVacant!13387 (index!55945 (_ BitVec 32))) )
))
(declare-fun lt!664355 () SeekEntryResult!13387)

(declare-fun lt!664354 () SeekEntryResult!13387)

(assert (=> b!1536541 (= res!1053764 (= lt!664355 lt!664354))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun lt!664357 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102041 (_ BitVec 32)) SeekEntryResult!13387)

(assert (=> b!1536541 (= lt!664355 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664357 vacantIndex!5 (select (arr!49232 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536542 () Bool)

(declare-fun e!855241 () Bool)

(assert (=> b!1536542 (= e!855238 e!855241)))

(declare-fun res!1053772 () Bool)

(assert (=> b!1536542 (=> (not res!1053772) (not e!855241))))

(assert (=> b!1536542 (= res!1053772 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49232 a!2792) j!64) a!2792 mask!2480) lt!664354))))

(assert (=> b!1536542 (= lt!664354 (Found!13387 j!64))))

(declare-fun b!1536544 () Bool)

(declare-fun res!1053767 () Bool)

(assert (=> b!1536544 (=> (not res!1053767) (not e!855238))))

(declare-datatypes ((List!35886 0))(
  ( (Nil!35883) (Cons!35882 (h!37328 (_ BitVec 64)) (t!50587 List!35886)) )
))
(declare-fun arrayNoDuplicates!0 (array!102041 (_ BitVec 32) List!35886) Bool)

(assert (=> b!1536544 (= res!1053767 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35883))))

(declare-fun b!1536545 () Bool)

(declare-fun res!1053770 () Bool)

(assert (=> b!1536545 (=> (not res!1053770) (not e!855238))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1536545 (= res!1053770 (and (= (size!49783 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49783 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49783 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536546 () Bool)

(assert (=> b!1536546 (= e!855241 e!855240)))

(declare-fun res!1053766 () Bool)

(assert (=> b!1536546 (=> (not res!1053766) (not e!855240))))

(assert (=> b!1536546 (= res!1053766 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664357 #b00000000000000000000000000000000) (bvslt lt!664357 (size!49783 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536546 (= lt!664357 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536547 () Bool)

(declare-fun e!855237 () Bool)

(declare-fun lt!664353 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536547 (= e!855237 (validKeyInArray!0 lt!664353))))

(declare-fun b!1536548 () Bool)

(declare-fun res!1053769 () Bool)

(assert (=> b!1536548 (=> (not res!1053769) (not e!855241))))

(assert (=> b!1536548 (= res!1053769 (not (= (select (arr!49232 a!2792) index!463) (select (arr!49232 a!2792) j!64))))))

(declare-fun b!1536549 () Bool)

(declare-fun res!1053773 () Bool)

(assert (=> b!1536549 (=> (not res!1053773) (not e!855238))))

(assert (=> b!1536549 (= res!1053773 (validKeyInArray!0 (select (arr!49232 a!2792) i!951)))))

(declare-fun b!1536550 () Bool)

(assert (=> b!1536550 (= e!855239 (not e!855237))))

(declare-fun res!1053763 () Bool)

(assert (=> b!1536550 (=> res!1053763 e!855237)))

(assert (=> b!1536550 (= res!1053763 (or (bvslt mask!2480 #b00000000000000000000000000000000) (bvsge index!463 (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge vacantIndex!5 (bvadd #b00000000000000000000000000000001 mask!2480)) (not (= (select (store (arr!49232 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1536550 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664357 vacantIndex!5 lt!664353 (array!102042 (store (arr!49232 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49783 a!2792)) mask!2480) lt!664355)))

(assert (=> b!1536550 (= lt!664353 (select (store (arr!49232 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64))))

(declare-datatypes ((Unit!51298 0))(
  ( (Unit!51299) )
))
(declare-fun lt!664356 () Unit!51298)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102041 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51298)

(assert (=> b!1536550 (= lt!664356 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664357 vacantIndex!5 mask!2480))))

(declare-fun res!1053774 () Bool)

(assert (=> start!131016 (=> (not res!1053774) (not e!855238))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131016 (= res!1053774 (validMask!0 mask!2480))))

(assert (=> start!131016 e!855238))

(assert (=> start!131016 true))

(declare-fun array_inv!38177 (array!102041) Bool)

(assert (=> start!131016 (array_inv!38177 a!2792)))

(declare-fun b!1536543 () Bool)

(declare-fun res!1053771 () Bool)

(assert (=> b!1536543 (=> (not res!1053771) (not e!855238))))

(assert (=> b!1536543 (= res!1053771 (validKeyInArray!0 (select (arr!49232 a!2792) j!64)))))

(assert (= (and start!131016 res!1053774) b!1536545))

(assert (= (and b!1536545 res!1053770) b!1536549))

(assert (= (and b!1536549 res!1053773) b!1536543))

(assert (= (and b!1536543 res!1053771) b!1536539))

(assert (= (and b!1536539 res!1053765) b!1536544))

(assert (= (and b!1536544 res!1053767) b!1536540))

(assert (= (and b!1536540 res!1053768) b!1536542))

(assert (= (and b!1536542 res!1053772) b!1536548))

(assert (= (and b!1536548 res!1053769) b!1536546))

(assert (= (and b!1536546 res!1053766) b!1536541))

(assert (= (and b!1536541 res!1053764) b!1536550))

(assert (= (and b!1536550 (not res!1053763)) b!1536547))

(declare-fun m!1419065 () Bool)

(assert (=> b!1536546 m!1419065))

(declare-fun m!1419067 () Bool)

(assert (=> b!1536550 m!1419067))

(declare-fun m!1419069 () Bool)

(assert (=> b!1536550 m!1419069))

(declare-fun m!1419071 () Bool)

(assert (=> b!1536550 m!1419071))

(declare-fun m!1419073 () Bool)

(assert (=> b!1536550 m!1419073))

(declare-fun m!1419075 () Bool)

(assert (=> b!1536550 m!1419075))

(declare-fun m!1419077 () Bool)

(assert (=> b!1536547 m!1419077))

(declare-fun m!1419079 () Bool)

(assert (=> b!1536540 m!1419079))

(declare-fun m!1419081 () Bool)

(assert (=> b!1536544 m!1419081))

(declare-fun m!1419083 () Bool)

(assert (=> b!1536542 m!1419083))

(assert (=> b!1536542 m!1419083))

(declare-fun m!1419085 () Bool)

(assert (=> b!1536542 m!1419085))

(declare-fun m!1419087 () Bool)

(assert (=> start!131016 m!1419087))

(declare-fun m!1419089 () Bool)

(assert (=> start!131016 m!1419089))

(declare-fun m!1419091 () Bool)

(assert (=> b!1536548 m!1419091))

(assert (=> b!1536548 m!1419083))

(assert (=> b!1536541 m!1419083))

(assert (=> b!1536541 m!1419083))

(declare-fun m!1419093 () Bool)

(assert (=> b!1536541 m!1419093))

(declare-fun m!1419095 () Bool)

(assert (=> b!1536539 m!1419095))

(declare-fun m!1419097 () Bool)

(assert (=> b!1536549 m!1419097))

(assert (=> b!1536549 m!1419097))

(declare-fun m!1419099 () Bool)

(assert (=> b!1536549 m!1419099))

(assert (=> b!1536543 m!1419083))

(assert (=> b!1536543 m!1419083))

(declare-fun m!1419101 () Bool)

(assert (=> b!1536543 m!1419101))

(check-sat (not start!131016) (not b!1536543) (not b!1536546) (not b!1536549) (not b!1536544) (not b!1536547) (not b!1536541) (not b!1536539) (not b!1536550) (not b!1536542))
(check-sat)
