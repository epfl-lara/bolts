; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!130948 () Bool)

(assert start!130948)

(declare-fun b!1535446 () Bool)

(declare-fun res!1052674 () Bool)

(declare-fun e!854790 () Bool)

(assert (=> b!1535446 (=> (not res!1052674) (not e!854790))))

(declare-datatypes ((array!101973 0))(
  ( (array!101974 (arr!49198 (Array (_ BitVec 32) (_ BitVec 64))) (size!49749 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101973)

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101973 (_ BitVec 32)) Bool)

(assert (=> b!1535446 (= res!1052674 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535447 () Bool)

(declare-fun res!1052670 () Bool)

(assert (=> b!1535447 (=> (not res!1052670) (not e!854790))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535447 (= res!1052670 (validKeyInArray!0 (select (arr!49198 a!2792) j!64)))))

(declare-fun b!1535448 () Bool)

(declare-fun res!1052673 () Bool)

(assert (=> b!1535448 (=> (not res!1052673) (not e!854790))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535448 (= res!1052673 (validKeyInArray!0 (select (arr!49198 a!2792) i!951)))))

(declare-fun b!1535449 () Bool)

(declare-fun e!854792 () Bool)

(assert (=> b!1535449 (= e!854792 false)))

(declare-datatypes ((SeekEntryResult!13353 0))(
  ( (MissingZero!13353 (index!55806 (_ BitVec 32))) (Found!13353 (index!55807 (_ BitVec 32))) (Intermediate!13353 (undefined!14165 Bool) (index!55808 (_ BitVec 32)) (x!137558 (_ BitVec 32))) (Undefined!13353) (MissingVacant!13353 (index!55809 (_ BitVec 32))) )
))
(declare-fun lt!664008 () SeekEntryResult!13353)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun lt!664009 () (_ BitVec 32))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101973 (_ BitVec 32)) SeekEntryResult!13353)

(assert (=> b!1535449 (= lt!664008 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664009 vacantIndex!5 (select (arr!49198 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535450 () Bool)

(declare-fun res!1052672 () Bool)

(assert (=> b!1535450 (=> (not res!1052672) (not e!854790))))

(declare-fun index!463 () (_ BitVec 32))

(assert (=> b!1535450 (= res!1052672 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49198 a!2792) j!64) a!2792 mask!2480) (Found!13353 j!64)))))

(declare-fun b!1535451 () Bool)

(declare-fun res!1052675 () Bool)

(assert (=> b!1535451 (=> (not res!1052675) (not e!854790))))

(assert (=> b!1535451 (= res!1052675 (and (= (size!49749 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49749 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49749 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535452 () Bool)

(declare-fun res!1052677 () Bool)

(assert (=> b!1535452 (=> (not res!1052677) (not e!854790))))

(declare-datatypes ((List!35852 0))(
  ( (Nil!35849) (Cons!35848 (h!37294 (_ BitVec 64)) (t!50553 List!35852)) )
))
(declare-fun arrayNoDuplicates!0 (array!101973 (_ BitVec 32) List!35852) Bool)

(assert (=> b!1535452 (= res!1052677 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35849))))

(declare-fun res!1052671 () Bool)

(assert (=> start!130948 (=> (not res!1052671) (not e!854790))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130948 (= res!1052671 (validMask!0 mask!2480))))

(assert (=> start!130948 e!854790))

(assert (=> start!130948 true))

(declare-fun array_inv!38143 (array!101973) Bool)

(assert (=> start!130948 (array_inv!38143 a!2792)))

(declare-fun b!1535453 () Bool)

(declare-fun res!1052676 () Bool)

(assert (=> b!1535453 (=> (not res!1052676) (not e!854790))))

(assert (=> b!1535453 (= res!1052676 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49749 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49749 a!2792)) (= (select (arr!49198 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535454 () Bool)

(assert (=> b!1535454 (= e!854790 e!854792)))

(declare-fun res!1052678 () Bool)

(assert (=> b!1535454 (=> (not res!1052678) (not e!854792))))

(assert (=> b!1535454 (= res!1052678 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664009 #b00000000000000000000000000000000) (bvslt lt!664009 (size!49749 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535454 (= lt!664009 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535455 () Bool)

(declare-fun res!1052679 () Bool)

(assert (=> b!1535455 (=> (not res!1052679) (not e!854790))))

(assert (=> b!1535455 (= res!1052679 (not (= (select (arr!49198 a!2792) index!463) (select (arr!49198 a!2792) j!64))))))

(assert (= (and start!130948 res!1052671) b!1535451))

(assert (= (and b!1535451 res!1052675) b!1535448))

(assert (= (and b!1535448 res!1052673) b!1535447))

(assert (= (and b!1535447 res!1052670) b!1535446))

(assert (= (and b!1535446 res!1052674) b!1535452))

(assert (= (and b!1535452 res!1052677) b!1535453))

(assert (= (and b!1535453 res!1052676) b!1535450))

(assert (= (and b!1535450 res!1052672) b!1535455))

(assert (= (and b!1535455 res!1052679) b!1535454))

(assert (= (and b!1535454 res!1052678) b!1535449))

(declare-fun m!1417995 () Bool)

(assert (=> b!1535449 m!1417995))

(assert (=> b!1535449 m!1417995))

(declare-fun m!1417997 () Bool)

(assert (=> b!1535449 m!1417997))

(declare-fun m!1417999 () Bool)

(assert (=> b!1535455 m!1417999))

(assert (=> b!1535455 m!1417995))

(declare-fun m!1418001 () Bool)

(assert (=> b!1535448 m!1418001))

(assert (=> b!1535448 m!1418001))

(declare-fun m!1418003 () Bool)

(assert (=> b!1535448 m!1418003))

(assert (=> b!1535447 m!1417995))

(assert (=> b!1535447 m!1417995))

(declare-fun m!1418005 () Bool)

(assert (=> b!1535447 m!1418005))

(declare-fun m!1418007 () Bool)

(assert (=> b!1535454 m!1418007))

(declare-fun m!1418009 () Bool)

(assert (=> b!1535453 m!1418009))

(declare-fun m!1418011 () Bool)

(assert (=> b!1535452 m!1418011))

(declare-fun m!1418013 () Bool)

(assert (=> start!130948 m!1418013))

(declare-fun m!1418015 () Bool)

(assert (=> start!130948 m!1418015))

(assert (=> b!1535450 m!1417995))

(assert (=> b!1535450 m!1417995))

(declare-fun m!1418017 () Bool)

(assert (=> b!1535450 m!1418017))

(declare-fun m!1418019 () Bool)

(assert (=> b!1535446 m!1418019))

(push 1)

