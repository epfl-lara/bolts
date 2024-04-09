; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130950 () Bool)

(assert start!130950)

(declare-fun b!1535476 () Bool)

(declare-fun e!854799 () Bool)

(declare-fun e!854800 () Bool)

(assert (=> b!1535476 (= e!854799 e!854800)))

(declare-fun res!1052703 () Bool)

(assert (=> b!1535476 (=> (not res!1052703) (not e!854800))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101975 0))(
  ( (array!101976 (arr!49199 (Array (_ BitVec 32) (_ BitVec 64))) (size!49750 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101975)

(declare-fun lt!664014 () (_ BitVec 32))

(assert (=> b!1535476 (= res!1052703 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!664014 #b00000000000000000000000000000000) (bvslt lt!664014 (size!49750 a!2792))))))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535476 (= lt!664014 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535477 () Bool)

(declare-fun res!1052701 () Bool)

(assert (=> b!1535477 (=> (not res!1052701) (not e!854799))))

(declare-fun j!64 () (_ BitVec 32))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535477 (= res!1052701 (and (= (size!49750 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49750 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49750 a!2792)) (not (= i!951 j!64))))))

(declare-fun res!1052705 () Bool)

(assert (=> start!130950 (=> (not res!1052705) (not e!854799))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130950 (= res!1052705 (validMask!0 mask!2480))))

(assert (=> start!130950 e!854799))

(assert (=> start!130950 true))

(declare-fun array_inv!38144 (array!101975) Bool)

(assert (=> start!130950 (array_inv!38144 a!2792)))

(declare-fun b!1535478 () Bool)

(declare-fun res!1052702 () Bool)

(assert (=> b!1535478 (=> (not res!1052702) (not e!854799))))

(declare-datatypes ((List!35853 0))(
  ( (Nil!35850) (Cons!35849 (h!37295 (_ BitVec 64)) (t!50554 List!35853)) )
))
(declare-fun arrayNoDuplicates!0 (array!101975 (_ BitVec 32) List!35853) Bool)

(assert (=> b!1535478 (= res!1052702 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35850))))

(declare-fun b!1535479 () Bool)

(declare-fun res!1052704 () Bool)

(assert (=> b!1535479 (=> (not res!1052704) (not e!854799))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535479 (= res!1052704 (validKeyInArray!0 (select (arr!49199 a!2792) j!64)))))

(declare-fun b!1535480 () Bool)

(declare-fun res!1052707 () Bool)

(assert (=> b!1535480 (=> (not res!1052707) (not e!854799))))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13354 0))(
  ( (MissingZero!13354 (index!55810 (_ BitVec 32))) (Found!13354 (index!55811 (_ BitVec 32))) (Intermediate!13354 (undefined!14166 Bool) (index!55812 (_ BitVec 32)) (x!137559 (_ BitVec 32))) (Undefined!13354) (MissingVacant!13354 (index!55813 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101975 (_ BitVec 32)) SeekEntryResult!13354)

(assert (=> b!1535480 (= res!1052707 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49199 a!2792) j!64) a!2792 mask!2480) (Found!13354 j!64)))))

(declare-fun b!1535481 () Bool)

(declare-fun res!1052709 () Bool)

(assert (=> b!1535481 (=> (not res!1052709) (not e!854799))))

(assert (=> b!1535481 (= res!1052709 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49750 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49750 a!2792)) (= (select (arr!49199 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1535482 () Bool)

(assert (=> b!1535482 (= e!854800 false)))

(declare-fun lt!664015 () SeekEntryResult!13354)

(assert (=> b!1535482 (= lt!664015 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!664014 vacantIndex!5 (select (arr!49199 a!2792) j!64) a!2792 mask!2480))))

(declare-fun b!1535483 () Bool)

(declare-fun res!1052700 () Bool)

(assert (=> b!1535483 (=> (not res!1052700) (not e!854799))))

(assert (=> b!1535483 (= res!1052700 (validKeyInArray!0 (select (arr!49199 a!2792) i!951)))))

(declare-fun b!1535484 () Bool)

(declare-fun res!1052706 () Bool)

(assert (=> b!1535484 (=> (not res!1052706) (not e!854799))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101975 (_ BitVec 32)) Bool)

(assert (=> b!1535484 (= res!1052706 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535485 () Bool)

(declare-fun res!1052708 () Bool)

(assert (=> b!1535485 (=> (not res!1052708) (not e!854799))))

(assert (=> b!1535485 (= res!1052708 (not (= (select (arr!49199 a!2792) index!463) (select (arr!49199 a!2792) j!64))))))

(assert (= (and start!130950 res!1052705) b!1535477))

(assert (= (and b!1535477 res!1052701) b!1535483))

(assert (= (and b!1535483 res!1052700) b!1535479))

(assert (= (and b!1535479 res!1052704) b!1535484))

(assert (= (and b!1535484 res!1052706) b!1535478))

(assert (= (and b!1535478 res!1052702) b!1535481))

(assert (= (and b!1535481 res!1052709) b!1535480))

(assert (= (and b!1535480 res!1052707) b!1535485))

(assert (= (and b!1535485 res!1052708) b!1535476))

(assert (= (and b!1535476 res!1052703) b!1535482))

(declare-fun m!1418021 () Bool)

(assert (=> b!1535484 m!1418021))

(declare-fun m!1418023 () Bool)

(assert (=> b!1535483 m!1418023))

(assert (=> b!1535483 m!1418023))

(declare-fun m!1418025 () Bool)

(assert (=> b!1535483 m!1418025))

(declare-fun m!1418027 () Bool)

(assert (=> b!1535480 m!1418027))

(assert (=> b!1535480 m!1418027))

(declare-fun m!1418029 () Bool)

(assert (=> b!1535480 m!1418029))

(declare-fun m!1418031 () Bool)

(assert (=> b!1535481 m!1418031))

(assert (=> b!1535479 m!1418027))

(assert (=> b!1535479 m!1418027))

(declare-fun m!1418033 () Bool)

(assert (=> b!1535479 m!1418033))

(declare-fun m!1418035 () Bool)

(assert (=> b!1535485 m!1418035))

(assert (=> b!1535485 m!1418027))

(declare-fun m!1418037 () Bool)

(assert (=> b!1535478 m!1418037))

(declare-fun m!1418039 () Bool)

(assert (=> b!1535476 m!1418039))

(assert (=> b!1535482 m!1418027))

(assert (=> b!1535482 m!1418027))

(declare-fun m!1418041 () Bool)

(assert (=> b!1535482 m!1418041))

(declare-fun m!1418043 () Bool)

(assert (=> start!130950 m!1418043))

(declare-fun m!1418045 () Bool)

(assert (=> start!130950 m!1418045))

(check-sat (not b!1535482) (not b!1535478) (not b!1535479) (not b!1535483) (not start!130950) (not b!1535484) (not b!1535480) (not b!1535476))
(check-sat)
