; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!130938 () Bool)

(assert start!130938)

(declare-fun b!1535296 () Bool)

(declare-fun res!1052529 () Bool)

(declare-fun e!854746 () Bool)

(assert (=> b!1535296 (=> (not res!1052529) (not e!854746))))

(declare-fun x!510 () (_ BitVec 32))

(declare-datatypes ((array!101963 0))(
  ( (array!101964 (arr!49193 (Array (_ BitVec 32) (_ BitVec 64))) (size!49744 (_ BitVec 32))) )
))
(declare-fun a!2792 () array!101963)

(declare-fun j!64 () (_ BitVec 32))

(declare-fun vacantIndex!5 () (_ BitVec 32))

(declare-fun index!463 () (_ BitVec 32))

(declare-fun mask!2480 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!13348 0))(
  ( (MissingZero!13348 (index!55786 (_ BitVec 32))) (Found!13348 (index!55787 (_ BitVec 32))) (Intermediate!13348 (undefined!14160 Bool) (index!55788 (_ BitVec 32)) (x!137537 (_ BitVec 32))) (Undefined!13348) (MissingVacant!13348 (index!55789 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101963 (_ BitVec 32)) SeekEntryResult!13348)

(assert (=> b!1535296 (= res!1052529 (= (seekKeyOrZeroReturnVacant!0 x!510 index!463 vacantIndex!5 (select (arr!49193 a!2792) j!64) a!2792 mask!2480) (Found!13348 j!64)))))

(declare-fun b!1535297 () Bool)

(declare-fun e!854745 () Bool)

(assert (=> b!1535297 (= e!854746 e!854745)))

(declare-fun res!1052520 () Bool)

(assert (=> b!1535297 (=> (not res!1052520) (not e!854745))))

(declare-fun lt!663978 () (_ BitVec 32))

(assert (=> b!1535297 (= res!1052520 (and (bvsge (bvadd #b00000000000000000000000000000001 x!510) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 x!510) #b01111111111111111111111111111110) (bvsge lt!663978 #b00000000000000000000000000000000) (bvslt lt!663978 (size!49744 a!2792))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1535297 (= lt!663978 (nextIndex!0 index!463 x!510 mask!2480))))

(declare-fun b!1535298 () Bool)

(declare-fun res!1052523 () Bool)

(assert (=> b!1535298 (=> (not res!1052523) (not e!854746))))

(assert (=> b!1535298 (= res!1052523 (not (= (select (arr!49193 a!2792) index!463) (select (arr!49193 a!2792) j!64))))))

(declare-fun b!1535299 () Bool)

(declare-fun res!1052522 () Bool)

(assert (=> b!1535299 (=> (not res!1052522) (not e!854746))))

(declare-fun i!951 () (_ BitVec 32))

(assert (=> b!1535299 (= res!1052522 (and (= (size!49744 a!2792) (bvadd #b00000000000000000000000000000001 mask!2480)) (bvsge i!951 #b00000000000000000000000000000000) (bvslt i!951 (size!49744 a!2792)) (bvsge j!64 #b00000000000000000000000000000000) (bvslt j!64 (size!49744 a!2792)) (not (= i!951 j!64))))))

(declare-fun b!1535300 () Bool)

(declare-fun res!1052521 () Bool)

(assert (=> b!1535300 (=> (not res!1052521) (not e!854746))))

(declare-datatypes ((List!35847 0))(
  ( (Nil!35844) (Cons!35843 (h!37289 (_ BitVec 64)) (t!50548 List!35847)) )
))
(declare-fun arrayNoDuplicates!0 (array!101963 (_ BitVec 32) List!35847) Bool)

(assert (=> b!1535300 (= res!1052521 (arrayNoDuplicates!0 a!2792 #b00000000000000000000000000000000 Nil!35844))))

(declare-fun b!1535301 () Bool)

(declare-fun res!1052528 () Bool)

(assert (=> b!1535301 (=> (not res!1052528) (not e!854746))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101963 (_ BitVec 32)) Bool)

(assert (=> b!1535301 (= res!1052528 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2792 mask!2480))))

(declare-fun b!1535303 () Bool)

(declare-fun res!1052525 () Bool)

(assert (=> b!1535303 (=> (not res!1052525) (not e!854746))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1535303 (= res!1052525 (validKeyInArray!0 (select (arr!49193 a!2792) i!951)))))

(declare-fun b!1535304 () Bool)

(declare-fun res!1052524 () Bool)

(assert (=> b!1535304 (=> (not res!1052524) (not e!854746))))

(assert (=> b!1535304 (= res!1052524 (validKeyInArray!0 (select (arr!49193 a!2792) j!64)))))

(declare-fun b!1535305 () Bool)

(declare-fun res!1052526 () Bool)

(assert (=> b!1535305 (=> (not res!1052526) (not e!854746))))

(assert (=> b!1535305 (= res!1052526 (and (bvsge x!510 #b00000000000000000000000000000000) (bvsle x!510 #b01111111111111111111111111111110) (bvsge index!463 #b00000000000000000000000000000000) (bvslt index!463 (size!49744 a!2792)) (bvsge vacantIndex!5 #b00000000000000000000000000000000) (bvslt vacantIndex!5 (size!49744 a!2792)) (= (select (arr!49193 a!2792) vacantIndex!5) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!1052527 () Bool)

(assert (=> start!130938 (=> (not res!1052527) (not e!854746))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!130938 (= res!1052527 (validMask!0 mask!2480))))

(assert (=> start!130938 e!854746))

(assert (=> start!130938 true))

(declare-fun array_inv!38138 (array!101963) Bool)

(assert (=> start!130938 (array_inv!38138 a!2792)))

(declare-fun b!1535302 () Bool)

(assert (=> b!1535302 (= e!854745 false)))

(declare-fun lt!663979 () SeekEntryResult!13348)

(assert (=> b!1535302 (= lt!663979 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!510) lt!663978 vacantIndex!5 (select (arr!49193 a!2792) j!64) a!2792 mask!2480))))

(assert (= (and start!130938 res!1052527) b!1535299))

(assert (= (and b!1535299 res!1052522) b!1535303))

(assert (= (and b!1535303 res!1052525) b!1535304))

(assert (= (and b!1535304 res!1052524) b!1535301))

(assert (= (and b!1535301 res!1052528) b!1535300))

(assert (= (and b!1535300 res!1052521) b!1535305))

(assert (= (and b!1535305 res!1052526) b!1535296))

(assert (= (and b!1535296 res!1052529) b!1535298))

(assert (= (and b!1535298 res!1052523) b!1535297))

(assert (= (and b!1535297 res!1052520) b!1535302))

(declare-fun m!1417865 () Bool)

(assert (=> b!1535304 m!1417865))

(assert (=> b!1535304 m!1417865))

(declare-fun m!1417867 () Bool)

(assert (=> b!1535304 m!1417867))

(assert (=> b!1535302 m!1417865))

(assert (=> b!1535302 m!1417865))

(declare-fun m!1417869 () Bool)

(assert (=> b!1535302 m!1417869))

(declare-fun m!1417871 () Bool)

(assert (=> b!1535303 m!1417871))

(assert (=> b!1535303 m!1417871))

(declare-fun m!1417873 () Bool)

(assert (=> b!1535303 m!1417873))

(declare-fun m!1417875 () Bool)

(assert (=> b!1535305 m!1417875))

(declare-fun m!1417877 () Bool)

(assert (=> b!1535301 m!1417877))

(assert (=> b!1535296 m!1417865))

(assert (=> b!1535296 m!1417865))

(declare-fun m!1417879 () Bool)

(assert (=> b!1535296 m!1417879))

(declare-fun m!1417881 () Bool)

(assert (=> b!1535298 m!1417881))

(assert (=> b!1535298 m!1417865))

(declare-fun m!1417883 () Bool)

(assert (=> b!1535297 m!1417883))

(declare-fun m!1417885 () Bool)

(assert (=> b!1535300 m!1417885))

(declare-fun m!1417887 () Bool)

(assert (=> start!130938 m!1417887))

(declare-fun m!1417889 () Bool)

(assert (=> start!130938 m!1417889))

(check-sat (not b!1535300) (not b!1535303) (not b!1535297) (not b!1535304) (not b!1535296) (not b!1535302) (not start!130938) (not b!1535301))
