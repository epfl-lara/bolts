; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!129996 () Bool)

(assert start!129996)

(declare-fun b!1524968 () Bool)

(declare-fun res!1043472 () Bool)

(declare-fun e!850088 () Bool)

(assert (=> b!1524968 (=> (not res!1043472) (not e!850088))))

(declare-datatypes ((SeekEntryResult!13109 0))(
  ( (MissingZero!13109 (index!54830 (_ BitVec 32))) (Found!13109 (index!54831 (_ BitVec 32))) (Intermediate!13109 (undefined!13921 Bool) (index!54832 (_ BitVec 32)) (x!136533 (_ BitVec 32))) (Undefined!13109) (MissingVacant!13109 (index!54833 (_ BitVec 32))) )
))
(declare-fun lt!660480 () SeekEntryResult!13109)

(declare-fun j!70 () (_ BitVec 32))

(declare-fun mask!2512 () (_ BitVec 32))

(declare-fun index!487 () (_ BitVec 32))

(declare-datatypes ((array!101399 0))(
  ( (array!101400 (arr!48923 (Array (_ BitVec 32) (_ BitVec 64))) (size!49474 (_ BitVec 32))) )
))
(declare-fun a!2804 () array!101399)

(declare-fun x!534 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101399 (_ BitVec 32)) SeekEntryResult!13109)

(assert (=> b!1524968 (= res!1043472 (= (seekKeyOrZeroOrLongMinValue!0 x!534 index!487 (select (arr!48923 a!2804) j!70) a!2804 mask!2512) lt!660480))))

(declare-fun b!1524969 () Bool)

(declare-fun res!1043466 () Bool)

(declare-fun e!850084 () Bool)

(assert (=> b!1524969 (=> (not res!1043466) (not e!850084))))

(declare-datatypes ((List!35586 0))(
  ( (Nil!35583) (Cons!35582 (h!37013 (_ BitVec 64)) (t!50287 List!35586)) )
))
(declare-fun arrayNoDuplicates!0 (array!101399 (_ BitVec 32) List!35586) Bool)

(assert (=> b!1524969 (= res!1043466 (arrayNoDuplicates!0 a!2804 #b00000000000000000000000000000000 Nil!35583))))

(declare-fun b!1524970 () Bool)

(declare-fun e!850087 () Bool)

(declare-fun e!850085 () Bool)

(assert (=> b!1524970 (= e!850087 e!850085)))

(declare-fun res!1043471 () Bool)

(assert (=> b!1524970 (=> res!1043471 e!850085)))

(declare-fun resX!21 () (_ BitVec 32))

(declare-fun i!961 () (_ BitVec 32))

(declare-fun resIndex!21 () (_ BitVec 32))

(assert (=> b!1524970 (= res!1043471 (or (not (= (select (arr!48923 a!2804) j!70) (select (store (arr!48923 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70))) (not (= x!534 resX!21)) (not (= index!487 resIndex!21)) (= (select (arr!48923 a!2804) index!487) (select (arr!48923 a!2804) j!70)) (not (= (select (arr!48923 a!2804) index!487) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1524971 () Bool)

(declare-fun res!1043473 () Bool)

(assert (=> b!1524971 (=> (not res!1043473) (not e!850084))))

(assert (=> b!1524971 (= res!1043473 (and (bvsge x!534 #b00000000000000000000000000000000) (bvsle x!534 #b01111111111111111111111111111110) (bvsge resX!21 #b00000000000000000000000000000000) (bvsle resX!21 #b01111111111111111111111111111110) (bvsge index!487 #b00000000000000000000000000000000) (bvslt index!487 (size!49474 a!2804)) (bvsge resIndex!21 #b00000000000000000000000000000000) (bvslt resIndex!21 (size!49474 a!2804))))))

(declare-fun b!1524972 () Bool)

(declare-fun res!1043468 () Bool)

(assert (=> b!1524972 (=> (not res!1043468) (not e!850084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1524972 (= res!1043468 (validKeyInArray!0 (select (arr!48923 a!2804) j!70)))))

(declare-fun b!1524973 () Bool)

(declare-fun res!1043470 () Bool)

(assert (=> b!1524973 (=> (not res!1043470) (not e!850084))))

(assert (=> b!1524973 (= res!1043470 (validKeyInArray!0 (select (arr!48923 a!2804) i!961)))))

(declare-fun b!1524974 () Bool)

(declare-fun res!1043467 () Bool)

(assert (=> b!1524974 (=> (not res!1043467) (not e!850084))))

(assert (=> b!1524974 (= res!1043467 (and (= (size!49474 a!2804) (bvadd #b00000000000000000000000000000001 mask!2512)) (bvsge i!961 #b00000000000000000000000000000000) (bvslt i!961 (size!49474 a!2804)) (bvsge j!70 #b00000000000000000000000000000000) (bvslt j!70 (size!49474 a!2804)) (not (= i!961 j!70))))))

(declare-fun b!1524975 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!101399 (_ BitVec 32)) SeekEntryResult!13109)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!101399 (_ BitVec 32)) SeekEntryResult!13109)

(assert (=> b!1524975 (= e!850085 (= (seekEntryOrOpen!0 (select (arr!48923 a!2804) j!70) a!2804 mask!2512) (seekKeyOrZeroReturnVacant!0 x!534 index!487 index!487 (select (arr!48923 a!2804) j!70) a!2804 mask!2512)))))

(declare-fun b!1524976 () Bool)

(declare-fun res!1043475 () Bool)

(assert (=> b!1524976 (=> (not res!1043475) (not e!850087))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!101399 (_ BitVec 32)) SeekEntryResult!13109)

(assert (=> b!1524976 (= res!1043475 (= (seekEntry!0 (select (arr!48923 a!2804) j!70) a!2804 mask!2512) (Found!13109 j!70)))))

(declare-fun b!1524977 () Bool)

(assert (=> b!1524977 (= e!850088 (not true))))

(assert (=> b!1524977 e!850087))

(declare-fun res!1043476 () Bool)

(assert (=> b!1524977 (=> (not res!1043476) (not e!850087))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!101399 (_ BitVec 32)) Bool)

(assert (=> b!1524977 (= res!1043476 (arrayForallSeekEntryOrOpenFound!0 j!70 a!2804 mask!2512))))

(declare-datatypes ((Unit!50958 0))(
  ( (Unit!50959) )
))
(declare-fun lt!660479 () Unit!50958)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!101399 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50958)

(assert (=> b!1524977 (= lt!660479 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2804 mask!2512 #b00000000000000000000000000000000 j!70))))

(declare-fun b!1524967 () Bool)

(declare-fun res!1043477 () Bool)

(assert (=> b!1524967 (=> (not res!1043477) (not e!850088))))

(declare-fun lt!660481 () SeekEntryResult!13109)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1524967 (= res!1043477 (= lt!660481 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!48923 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) mask!2512) (select (store (arr!48923 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) j!70) (array!101400 (store (arr!48923 a!2804) i!961 #b1000000000000000000000000000000000000000000000000000000000000000) (size!49474 a!2804)) mask!2512)))))

(declare-fun res!1043469 () Bool)

(assert (=> start!129996 (=> (not res!1043469) (not e!850084))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!129996 (= res!1043469 (validMask!0 mask!2512))))

(assert (=> start!129996 e!850084))

(assert (=> start!129996 true))

(declare-fun array_inv!37868 (array!101399) Bool)

(assert (=> start!129996 (array_inv!37868 a!2804)))

(declare-fun b!1524978 () Bool)

(assert (=> b!1524978 (= e!850084 e!850088)))

(declare-fun res!1043474 () Bool)

(assert (=> b!1524978 (=> (not res!1043474) (not e!850088))))

(assert (=> b!1524978 (= res!1043474 (= lt!660481 lt!660480))))

(assert (=> b!1524978 (= lt!660480 (Intermediate!13109 false resIndex!21 resX!21))))

(assert (=> b!1524978 (= lt!660481 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48923 a!2804) j!70) mask!2512) (select (arr!48923 a!2804) j!70) a!2804 mask!2512))))

(declare-fun b!1524979 () Bool)

(declare-fun res!1043478 () Bool)

(assert (=> b!1524979 (=> (not res!1043478) (not e!850084))))

(assert (=> b!1524979 (= res!1043478 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2804 mask!2512))))

(assert (= (and start!129996 res!1043469) b!1524974))

(assert (= (and b!1524974 res!1043467) b!1524973))

(assert (= (and b!1524973 res!1043470) b!1524972))

(assert (= (and b!1524972 res!1043468) b!1524979))

(assert (= (and b!1524979 res!1043478) b!1524969))

(assert (= (and b!1524969 res!1043466) b!1524971))

(assert (= (and b!1524971 res!1043473) b!1524978))

(assert (= (and b!1524978 res!1043474) b!1524968))

(assert (= (and b!1524968 res!1043472) b!1524967))

(assert (= (and b!1524967 res!1043477) b!1524977))

(assert (= (and b!1524977 res!1043476) b!1524976))

(assert (= (and b!1524976 res!1043475) b!1524970))

(assert (= (and b!1524970 (not res!1043471)) b!1524975))

(declare-fun m!1407903 () Bool)

(assert (=> b!1524978 m!1407903))

(assert (=> b!1524978 m!1407903))

(declare-fun m!1407905 () Bool)

(assert (=> b!1524978 m!1407905))

(assert (=> b!1524978 m!1407905))

(assert (=> b!1524978 m!1407903))

(declare-fun m!1407907 () Bool)

(assert (=> b!1524978 m!1407907))

(declare-fun m!1407909 () Bool)

(assert (=> b!1524969 m!1407909))

(assert (=> b!1524970 m!1407903))

(declare-fun m!1407911 () Bool)

(assert (=> b!1524970 m!1407911))

(declare-fun m!1407913 () Bool)

(assert (=> b!1524970 m!1407913))

(declare-fun m!1407915 () Bool)

(assert (=> b!1524970 m!1407915))

(assert (=> b!1524967 m!1407911))

(assert (=> b!1524967 m!1407913))

(assert (=> b!1524967 m!1407913))

(declare-fun m!1407917 () Bool)

(assert (=> b!1524967 m!1407917))

(assert (=> b!1524967 m!1407917))

(assert (=> b!1524967 m!1407913))

(declare-fun m!1407919 () Bool)

(assert (=> b!1524967 m!1407919))

(assert (=> b!1524975 m!1407903))

(assert (=> b!1524975 m!1407903))

(declare-fun m!1407921 () Bool)

(assert (=> b!1524975 m!1407921))

(assert (=> b!1524975 m!1407903))

(declare-fun m!1407923 () Bool)

(assert (=> b!1524975 m!1407923))

(assert (=> b!1524972 m!1407903))

(assert (=> b!1524972 m!1407903))

(declare-fun m!1407925 () Bool)

(assert (=> b!1524972 m!1407925))

(declare-fun m!1407927 () Bool)

(assert (=> start!129996 m!1407927))

(declare-fun m!1407929 () Bool)

(assert (=> start!129996 m!1407929))

(assert (=> b!1524976 m!1407903))

(assert (=> b!1524976 m!1407903))

(declare-fun m!1407931 () Bool)

(assert (=> b!1524976 m!1407931))

(assert (=> b!1524968 m!1407903))

(assert (=> b!1524968 m!1407903))

(declare-fun m!1407933 () Bool)

(assert (=> b!1524968 m!1407933))

(declare-fun m!1407935 () Bool)

(assert (=> b!1524979 m!1407935))

(declare-fun m!1407937 () Bool)

(assert (=> b!1524977 m!1407937))

(declare-fun m!1407939 () Bool)

(assert (=> b!1524977 m!1407939))

(declare-fun m!1407941 () Bool)

(assert (=> b!1524973 m!1407941))

(assert (=> b!1524973 m!1407941))

(declare-fun m!1407943 () Bool)

(assert (=> b!1524973 m!1407943))

(check-sat (not start!129996) (not b!1524969) (not b!1524972) (not b!1524977) (not b!1524973) (not b!1524967) (not b!1524979) (not b!1524968) (not b!1524978) (not b!1524976) (not b!1524975))
(check-sat)
