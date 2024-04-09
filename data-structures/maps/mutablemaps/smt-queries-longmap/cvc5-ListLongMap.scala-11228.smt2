; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131032 () Bool)

(assert start!131032)

(declare-fun b!1536807 () Bool)

(declare-fun e!855362 () Bool)

(declare-fun e!855365 () Bool)

(assert (=> b!1536807 (= e!855362 e!855365)))

(declare-fun res!1054038 () Bool)

(assert (=> b!1536807 (=> (not res!1054038) (not e!855365))))

(declare-datatypes ((SeekEntryResult!13395 0))(
  ( (MissingZero!13395 (index!55974 (_ BitVec 32))) (Found!13395 (index!55975 (_ BitVec 32))) (Intermediate!13395 (undefined!14207 Bool) (index!55976 (_ BitVec 32)) (x!137712 (_ BitVec 32))) (Undefined!13395) (MissingVacant!13395 (index!55977 (_ BitVec 32))) )
))
(declare-fun lt!664454 () SeekEntryResult!13395)

(declare-fun lt!664456 () SeekEntryResult!13395)

(assert (=> b!1536807 (= res!1054038 (= lt!664454 lt!664456))))

(declare-fun lt!664455 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!102057 0))(
  ( (array!102058 (arr!49240 (Array (_ BitVec 32) (_ BitVec 64))) (size!49791 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!102057)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!102057 (_ BitVec 32)) SeekEntryResult!13395)

(assert (=> b!1536807 (= lt!664454 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664455 vacantIndex!5 (select (arr!49240 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1536808 () Bool)

(declare-fun e!855361 () Bool)

(assert (=> b!1536808 (= e!855361 e!855362)))

(declare-fun res!1054040 () Bool)

(assert (=> b!1536808 (=> (not res!1054040) (not e!855362))))

(assert (=> b!1536808 (= res!1054040 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664455 #b00000000000000000000000000000000) (bvslt lt!664455 (size!49791 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1536808 (= lt!664455 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1536809 () Bool)

(declare-fun res!1054034 () Bool)

(assert (=> b!1536809 (=> (not res!1054034) (not e!855361))))

(assert (=> b!1536809 (= res!1054034 (not (= (select (arr!49240 a!2792) index!463) (select (arr!49240 a!2792) j!64))))))

(declare-fun b!1536810 () Bool)

(declare-fun res!1054035 () Bool)

(declare-fun e!855363 () Bool)

(assert (=> b!1536810 (=> (not res!1054035) (not e!855363))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1536810 (= res!1054035 (and (= (size!49791 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49791 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49791 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1536811 () Bool)

(declare-fun res!1054036 () Bool)

(assert (=> b!1536811 (=> (not res!1054036) (not e!855363))))

(declare-datatypes ((List!35894 0))(
  ( (Nil!35891) (Cons!35890 (h!37336 (_ BitVec 64)) (t!50595 List!35894)) )
))
(declare-fun arrayNoDuplicates!0 (array!102057 (_ BitVec 32) List!35894) Bool)

(assert (=> b!1536811 (= res!1054036 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35891))))

(declare-fun res!1054041 () Bool)

(assert (=> start!131032 (=> (not res!1054041) (not e!855363))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!131032 (= res!1054041 (validMask!0 mask!2480))))

(assert (=> start!131032 e!855363))

(assert (=> start!131032 true))

(declare-fun array_inv!38185 (array!102057) Bool)

(assert (=> start!131032 (array_inv!38185 a!2792)))

(declare-fun b!1536812 () Bool)

(declare-fun res!1054031 () Bool)

(assert (=> b!1536812 (=> (not res!1054031) (not e!855363))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1536812 (= res!1054031 (validKeyInArray!0 (select (arr!49240 a!2792) i!951)))))

(declare-fun b!1536813 () Bool)

(assert (=> b!1536813 (= e!855363 e!855361)))

(declare-fun res!1054037 () Bool)

(assert (=> b!1536813 (=> (not res!1054037) (not e!855361))))

(assert (=> b!1536813 (= res!1054037 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49240 a!2792) j!64) a!2792 mask!2480) lt!664456))))

(assert (=> b!1536813 (= lt!664456 (Found!13395 j!64))))

(declare-fun b!1536814 () Bool)

(declare-fun res!1054033 () Bool)

(assert (=> b!1536814 (=> (not res!1054033) (not e!855363))))

(assert (=> b!1536814 (= res!1054033 (validKeyInArray!0 (select (arr!49240 a!2792) j!64)))))

(declare-fun b!1536815 () Bool)

(assert (=> b!1536815 (= e!855365 (not true))))

(assert (=> b!1536815 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664455 vacantIndex!5 (select (store (arr!49240 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) j!64) (array!102058 (store (arr!49240 a!2792) i!951 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49791 a!2792)) mask!2480) lt!664454)))

(declare-datatypes ((Unit!51314 0))(
  ( (Unit!51315) )
))
(declare-fun lt!664453 () Unit!51314)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 (array!102057 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!51314)

(assert (=> b!1536815 (= lt!664453 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpenKey1Helper!0 a!2792 i!951 j!64 (bvadd #b00000000000000000000000000000001 x!510) lt!664455 vacantIndex!5 mask!2480))))

(declare-fun b!1536816 () Bool)

(declare-fun res!1054032 () Bool)

(assert (=> b!1536816 (=> (not res!1054032) (not e!855363))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!102057 (_ BitVec 32)) Bool)

(assert (=> b!1536816 (= res!1054032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1536817 () Bool)

(declare-fun res!1054039 () Bool)

(assert (=> b!1536817 (=> (not res!1054039) (not e!855363))))

(assert (=> b!1536817 (= res!1054039 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49791 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49791 a!2792)) (= (select (arr!49240 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!131032 res!1054041) b!1536810))

(assert (= (and b!1536810 res!1054035) b!1536812))

(assert (= (and b!1536812 res!1054031) b!1536814))

(assert (= (and b!1536814 res!1054033) b!1536816))

(assert (= (and b!1536816 res!1054032) b!1536811))

(assert (= (and b!1536811 res!1054036) b!1536817))

(assert (= (and b!1536817 res!1054039) b!1536813))

(assert (= (and b!1536813 res!1054037) b!1536809))

(assert (= (and b!1536809 res!1054034) b!1536808))

(assert (= (and b!1536808 res!1054040) b!1536807))

(assert (= (and b!1536807 res!1054038) b!1536815))

(declare-fun m!1419345 () Bool)

(assert (=> b!1536809 m!1419345))

(declare-fun m!1419347 () Bool)

(assert (=> b!1536809 m!1419347))

(declare-fun m!1419349 () Bool)

(assert (=> b!1536811 m!1419349))

(assert (=> b!1536807 m!1419347))

(assert (=> b!1536807 m!1419347))

(declare-fun m!1419351 () Bool)

(assert (=> b!1536807 m!1419351))

(assert (=> b!1536813 m!1419347))

(assert (=> b!1536813 m!1419347))

(declare-fun m!1419353 () Bool)

(assert (=> b!1536813 m!1419353))

(declare-fun m!1419355 () Bool)

(assert (=> b!1536808 m!1419355))

(assert (=> b!1536814 m!1419347))

(assert (=> b!1536814 m!1419347))

(declare-fun m!1419357 () Bool)

(assert (=> b!1536814 m!1419357))

(declare-fun m!1419359 () Bool)

(assert (=> b!1536816 m!1419359))

(declare-fun m!1419361 () Bool)

(assert (=> b!1536812 m!1419361))

(assert (=> b!1536812 m!1419361))

(declare-fun m!1419363 () Bool)

(assert (=> b!1536812 m!1419363))

(declare-fun m!1419365 () Bool)

(assert (=> start!131032 m!1419365))

(declare-fun m!1419367 () Bool)

(assert (=> start!131032 m!1419367))

(declare-fun m!1419369 () Bool)

(assert (=> b!1536815 m!1419369))

(declare-fun m!1419371 () Bool)

(assert (=> b!1536815 m!1419371))

(assert (=> b!1536815 m!1419371))

(declare-fun m!1419373 () Bool)

(assert (=> b!1536815 m!1419373))

(declare-fun m!1419375 () Bool)

(assert (=> b!1536815 m!1419375))

(declare-fun m!1419377 () Bool)

(assert (=> b!1536817 m!1419377))

(push 1)

