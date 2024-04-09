; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130884 () Bool)

(assert start!130884)

(declare-fun b!1534487 () Bool)

(declare-fun e!854504 () Bool)

(assert (=> b!1534487 (= e!854504 false)))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101909 0))(
  ( (array!101910 (arr!49166 (Array (_ BitVec 32) (_ BitVec 64))) (size!49717 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101909)

(declare-datatypes ((SeekEntryResult!13321 0))(
  ( (MissingZero!13321 (index!55678 (_ BitVec 32))) (Found!13321 (index!55679 (_ BitVec 32))) (Intermediate!13321 (undefined!14133 Bool) (index!55680 (_ BitVec 32)) (x!137438 (_ BitVec 32))) (Undefined!13321) (MissingVacant!13321 (index!55681 (_ BitVec 32))) )
))
(declare-fun lt!663816 () SeekEntryResult!13321)

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun lt!663817 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101909 (_ BitVec 32)) SeekEntryResult!13321)

(assert (=> b!1534487 (= lt!663816 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663817 vacantIndex!5 (select (arr!49166 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1534488 () Bool)

(declare-fun res!1051718 () Bool)

(declare-fun e!854502 () Bool)

(assert (=> b!1534488 (=> (not res!1051718) (not e!854502))))

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1534488 (= res!1051718 (validKeyInArray!0 (select (arr!49166 a!2792) i!951)))))

(declare-fun b!1534489 () Bool)

(declare-fun res!1051713 () Bool)

(assert (=> b!1534489 (=> (not res!1051713) (not e!854502))))

(declare-datatypes ((List!35820 0))(
  ( (Nil!35817) (Cons!35816 (h!37262 (_ BitVec 64)) (t!50521 List!35820)) )
))
(declare-fun arrayNoDuplicates!0 (array!101909 (_ BitVec 32) List!35820) Bool)

(assert (=> b!1534489 (= res!1051713 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35817))))

(declare-fun b!1534490 () Bool)

(declare-fun res!1051711 () Bool)

(assert (=> b!1534490 (=> (not res!1051711) (not e!854502))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101909 (_ BitVec 32)) Bool)

(assert (=> b!1534490 (= res!1051711 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1534491 () Bool)

(assert (=> b!1534491 (= e!854502 e!854504)))

(declare-fun res!1051719 () Bool)

(assert (=> b!1534491 (=> (not res!1051719) (not e!854504))))

(assert (=> b!1534491 (= res!1051719 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663817 #b00000000000000000000000000000000) (bvslt lt!663817 (size!49717 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1534491 (= lt!663817 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1534492 () Bool)

(declare-fun res!1051716 () Bool)

(assert (=> b!1534492 (=> (not res!1051716) (not e!854502))))

(assert (=> b!1534492 (= res!1051716 (validKeyInArray!0 (select (arr!49166 a!2792) j!64)))))

(declare-fun b!1534493 () Bool)

(declare-fun res!1051710 () Bool)

(assert (=> b!1534493 (=> (not res!1051710) (not e!854502))))

(assert (=> b!1534493 (= res!1051710 (and (= (size!49717 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49717 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49717 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1051715 () Bool)

(assert (=> start!130884 (=> (not res!1051715) (not e!854502))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130884 (= res!1051715 (validMask!0 mask!2480))))

(assert (=> start!130884 e!854502))

(assert (=> start!130884 true))

(declare-fun array_inv!38111 (array!101909) Bool)

(assert (=> start!130884 (array_inv!38111 a!2792)))

(declare-fun b!1534486 () Bool)

(declare-fun res!1051714 () Bool)

(assert (=> b!1534486 (=> (not res!1051714) (not e!854502))))

(assert (=> b!1534486 (= res!1051714 (not (= (select (arr!49166 a!2792) index!463) (select (arr!49166 a!2792) j!64))))))

(declare-fun b!1534494 () Bool)

(declare-fun res!1051717 () Bool)

(assert (=> b!1534494 (=> (not res!1051717) (not e!854502))))

(assert (=> b!1534494 (= res!1051717 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49166 a!2792) j!64) a!2792 mask!2480) (Found!13321 j!64)))))

(declare-fun b!1534495 () Bool)

(declare-fun res!1051712 () Bool)

(assert (=> b!1534495 (=> (not res!1051712) (not e!854502))))

(assert (=> b!1534495 (= res!1051712 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49717 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49717 a!2792)) (= (select (arr!49166 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!130884 res!1051715) b!1534493))

(assert (= (and b!1534493 res!1051710) b!1534488))

(assert (= (and b!1534488 res!1051718) b!1534492))

(assert (= (and b!1534492 res!1051716) b!1534490))

(assert (= (and b!1534490 res!1051711) b!1534489))

(assert (= (and b!1534489 res!1051713) b!1534495))

(assert (= (and b!1534495 res!1051712) b!1534494))

(assert (= (and b!1534494 res!1051717) b!1534486))

(assert (= (and b!1534486 res!1051714) b!1534491))

(assert (= (and b!1534491 res!1051719) b!1534487))

(declare-fun m!1417163 () Bool)

(assert (=> b!1534486 m!1417163))

(declare-fun m!1417165 () Bool)

(assert (=> b!1534486 m!1417165))

(assert (=> b!1534494 m!1417165))

(assert (=> b!1534494 m!1417165))

(declare-fun m!1417167 () Bool)

(assert (=> b!1534494 m!1417167))

(assert (=> b!1534487 m!1417165))

(assert (=> b!1534487 m!1417165))

(declare-fun m!1417169 () Bool)

(assert (=> b!1534487 m!1417169))

(declare-fun m!1417171 () Bool)

(assert (=> b!1534488 m!1417171))

(assert (=> b!1534488 m!1417171))

(declare-fun m!1417173 () Bool)

(assert (=> b!1534488 m!1417173))

(declare-fun m!1417175 () Bool)

(assert (=> start!130884 m!1417175))

(declare-fun m!1417177 () Bool)

(assert (=> start!130884 m!1417177))

(declare-fun m!1417179 () Bool)

(assert (=> b!1534490 m!1417179))

(declare-fun m!1417181 () Bool)

(assert (=> b!1534495 m!1417181))

(declare-fun m!1417183 () Bool)

(assert (=> b!1534489 m!1417183))

(assert (=> b!1534492 m!1417165))

(assert (=> b!1534492 m!1417165))

(declare-fun m!1417185 () Bool)

(assert (=> b!1534492 m!1417185))

(declare-fun m!1417187 () Bool)

(assert (=> b!1534491 m!1417187))

(check-sat (not b!1534489) (not b!1534491) (not b!1534492) (not b!1534490) (not start!130884) (not b!1534488) (not b!1534487) (not b!1534494))
(check-sat)
