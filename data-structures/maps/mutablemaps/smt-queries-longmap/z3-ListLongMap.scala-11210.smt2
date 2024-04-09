; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130926 () Bool)

(assert start!130926)

(declare-fun b!1535116 () Bool)

(declare-fun res!1052345 () Bool)

(declare-fun e!854693 () Bool)

(assert (=> b!1535116 (=> (not res!1052345) (not e!854693))))

(declare-datatypes ((array!101951 0))(
  ( (array!101952 (arr!49187 (Array (_ BitVec 32) (_ BitVec 64))) (size!49738 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101951)

(declare-fun i!951 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535116 (= res!1052345 (validKeyInArray!0 (select (arr!49187 a!2792) i!951)))))

(declare-fun b!1535117 () Bool)

(declare-fun res!1052341 () Bool)

(assert (=> b!1535117 (=> (not res!1052341) (not e!854693))))

(declare-fun x!510 () (_ BitVec 32))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13342 0))(
  ( (MissingZero!13342 (index!55762 (_ BitVec 32))) (Found!13342 (index!55763 (_ BitVec 32))) (Intermediate!13342 (undefined!14154 Bool) (index!55764 (_ BitVec 32)) (x!137515 (_ BitVec 32))) (Undefined!13342) (MissingVacant!13342 (index!55765 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101951 (_ BitVec 32)) SeekEntryResult!13342)

(assert (=> b!1535117 (= res!1052341 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49187 a!2792) j!64) a!2792 mask!2480) (Found!13342 j!64)))))

(declare-fun res!1052344 () Bool)

(assert (=> start!130926 (=> (not res!1052344) (not e!854693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130926 (= res!1052344 (validMask!0 mask!2480))))

(assert (=> start!130926 e!854693))

(assert (=> start!130926 true))

(declare-fun array_inv!38132 (array!101951) Bool)

(assert (=> start!130926 (array_inv!38132 a!2792)))

(declare-fun b!1535118 () Bool)

(declare-fun res!1052349 () Bool)

(assert (=> b!1535118 (=> (not res!1052349) (not e!854693))))

(assert (=> b!1535118 (= res!1052349 (and (= (size!49738 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49738 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49738 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535119 () Bool)

(declare-fun e!854692 () Bool)

(assert (=> b!1535119 (= e!854692 false)))

(declare-fun lt!663943 () (_ BitVec 32))

(declare-fun lt!663942 () SeekEntryResult!13342)

(assert (=> b!1535119 (= lt!663942 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663943 vacantIndex!5 (select (arr!49187 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535120 () Bool)

(assert (=> b!1535120 (= e!854693 e!854692)))

(declare-fun res!1052348 () Bool)

(assert (=> b!1535120 (=> (not res!1052348) (not e!854692))))

(assert (=> b!1535120 (= res!1052348 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663943 #b00000000000000000000000000000000) (bvslt lt!663943 (size!49738 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535120 (= lt!663943 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535121 () Bool)

(declare-fun res!1052342 () Bool)

(assert (=> b!1535121 (=> (not res!1052342) (not e!854693))))

(assert (=> b!1535121 (= res!1052342 (validKeyInArray!0 (select (arr!49187 a!2792) j!64)))))

(declare-fun b!1535122 () Bool)

(declare-fun res!1052347 () Bool)

(assert (=> b!1535122 (=> (not res!1052347) (not e!854693))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101951 (_ BitVec 32)) Bool)

(assert (=> b!1535122 (= res!1052347 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535123 () Bool)

(declare-fun res!1052343 () Bool)

(assert (=> b!1535123 (=> (not res!1052343) (not e!854693))))

(assert (=> b!1535123 (= res!1052343 (not (= (select (arr!49187 a!2792) index!463) (select (arr!49187 a!2792) j!64))))))

(declare-fun b!1535124 () Bool)

(declare-fun res!1052346 () Bool)

(assert (=> b!1535124 (=> (not res!1052346) (not e!854693))))

(assert (=> b!1535124 (= res!1052346 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49738 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49738 a!2792)) (= (select (arr!49187 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535125 () Bool)

(declare-fun res!1052340 () Bool)

(assert (=> b!1535125 (=> (not res!1052340) (not e!854693))))

(declare-datatypes ((List!35841 0))(
  ( (Nil!35838) (Cons!35837 (h!37283 (_ BitVec 64)) (t!50542 List!35841)) )
))
(declare-fun arrayNoDuplicates!0 (array!101951 (_ BitVec 32) List!35841) Bool)

(assert (=> b!1535125 (= res!1052340 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35838))))

(assert (= (and start!130926 res!1052344) b!1535118))

(assert (= (and b!1535118 res!1052349) b!1535116))

(assert (= (and b!1535116 res!1052345) b!1535121))

(assert (= (and b!1535121 res!1052342) b!1535122))

(assert (= (and b!1535122 res!1052347) b!1535125))

(assert (= (and b!1535125 res!1052340) b!1535124))

(assert (= (and b!1535124 res!1052346) b!1535117))

(assert (= (and b!1535117 res!1052341) b!1535123))

(assert (= (and b!1535123 res!1052343) b!1535120))

(assert (= (and b!1535120 res!1052348) b!1535119))

(declare-fun m!1417709 () Bool)

(assert (=> b!1535116 m!1417709))

(assert (=> b!1535116 m!1417709))

(declare-fun m!1417711 () Bool)

(assert (=> b!1535116 m!1417711))

(declare-fun m!1417713 () Bool)

(assert (=> b!1535119 m!1417713))

(assert (=> b!1535119 m!1417713))

(declare-fun m!1417715 () Bool)

(assert (=> b!1535119 m!1417715))

(declare-fun m!1417717 () Bool)

(assert (=> b!1535122 m!1417717))

(assert (=> b!1535121 m!1417713))

(assert (=> b!1535121 m!1417713))

(declare-fun m!1417719 () Bool)

(assert (=> b!1535121 m!1417719))

(declare-fun m!1417721 () Bool)

(assert (=> b!1535123 m!1417721))

(assert (=> b!1535123 m!1417713))

(declare-fun m!1417723 () Bool)

(assert (=> b!1535124 m!1417723))

(assert (=> b!1535117 m!1417713))

(assert (=> b!1535117 m!1417713))

(declare-fun m!1417725 () Bool)

(assert (=> b!1535117 m!1417725))

(declare-fun m!1417727 () Bool)

(assert (=> start!130926 m!1417727))

(declare-fun m!1417729 () Bool)

(assert (=> start!130926 m!1417729))

(declare-fun m!1417731 () Bool)

(assert (=> b!1535125 m!1417731))

(declare-fun m!1417733 () Bool)

(assert (=> b!1535120 m!1417733))

(check-sat (not b!1535116) (not b!1535117) (not b!1535122) (not b!1535119) (not start!130926) (not b!1535121) (not b!1535125) (not b!1535120))
(check-sat)
