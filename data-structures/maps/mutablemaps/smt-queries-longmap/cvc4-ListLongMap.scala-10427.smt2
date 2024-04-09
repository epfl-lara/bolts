; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122768 () Bool)

(assert start!122768)

(declare-fun b!1422025 () Bool)

(declare-fun res!957577 () Bool)

(declare-fun e!803983 () Bool)

(assert (=> b!1422025 (=> res!957577 e!803983)))

(declare-fun lt!626470 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11146 0))(
  ( (MissingZero!11146 (index!46975 (_ BitVec 32))) (Found!11146 (index!46976 (_ BitVec 32))) (Intermediate!11146 (undefined!11958 Bool) (index!46977 (_ BitVec 32)) (x!128623 (_ BitVec 32))) (Undefined!11146) (MissingVacant!11146 (index!46978 (_ BitVec 32))) )
))
(declare-fun lt!626474 () SeekEntryResult!11146)

(declare-datatypes ((array!97051 0))(
  ( (array!97052 (arr!46839 (Array (_ BitVec 32) (_ BitVec 64))) (size!47390 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97051)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97051 (_ BitVec 32)) SeekEntryResult!11146)

(assert (=> b!1422025 (= res!957577 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626470 (select (arr!46839 a!2831) j!81) a!2831 mask!2608) lt!626474)))))

(declare-fun b!1422026 () Bool)

(declare-fun res!957581 () Bool)

(declare-fun e!803984 () Bool)

(assert (=> b!1422026 (=> (not res!957581) (not e!803984))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422026 (= res!957581 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422027 () Bool)

(assert (=> b!1422027 (= e!803983 true)))

(declare-fun lt!626472 () array!97051)

(declare-fun lt!626473 () (_ BitVec 64))

(declare-fun lt!626476 () SeekEntryResult!11146)

(assert (=> b!1422027 (= lt!626476 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626470 lt!626473 lt!626472 mask!2608))))

(declare-fun b!1422028 () Bool)

(declare-fun e!803981 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97051 (_ BitVec 32)) SeekEntryResult!11146)

(assert (=> b!1422028 (= e!803981 (= (seekEntryOrOpen!0 (select (arr!46839 a!2831) j!81) a!2831 mask!2608) (Found!11146 j!81)))))

(declare-fun b!1422029 () Bool)

(declare-fun res!957568 () Bool)

(declare-fun e!803979 () Bool)

(assert (=> b!1422029 (=> (not res!957568) (not e!803979))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97051 (_ BitVec 32)) Bool)

(assert (=> b!1422029 (= res!957568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422030 () Bool)

(declare-fun res!957573 () Bool)

(assert (=> b!1422030 (=> (not res!957573) (not e!803979))))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1422030 (= res!957573 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47390 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47390 a!2831))))))

(declare-fun res!957582 () Bool)

(assert (=> start!122768 (=> (not res!957582) (not e!803979))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122768 (= res!957582 (validMask!0 mask!2608))))

(assert (=> start!122768 e!803979))

(assert (=> start!122768 true))

(declare-fun array_inv!35784 (array!97051) Bool)

(assert (=> start!122768 (array_inv!35784 a!2831)))

(declare-fun b!1422031 () Bool)

(declare-fun res!957574 () Bool)

(assert (=> b!1422031 (=> (not res!957574) (not e!803979))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422031 (= res!957574 (and (= (size!47390 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47390 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47390 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422032 () Bool)

(declare-fun e!803980 () Bool)

(assert (=> b!1422032 (= e!803984 (not e!803980))))

(declare-fun res!957580 () Bool)

(assert (=> b!1422032 (=> res!957580 e!803980)))

(assert (=> b!1422032 (= res!957580 (or (= (select (arr!46839 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46839 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46839 a!2831) index!585) (select (arr!46839 a!2831) j!81)) (= (select (store (arr!46839 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1422032 e!803981))

(declare-fun res!957579 () Bool)

(assert (=> b!1422032 (=> (not res!957579) (not e!803981))))

(assert (=> b!1422032 (= res!957579 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48076 0))(
  ( (Unit!48077) )
))
(declare-fun lt!626475 () Unit!48076)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97051 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48076)

(assert (=> b!1422032 (= lt!626475 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422033 () Bool)

(declare-fun e!803978 () Bool)

(assert (=> b!1422033 (= e!803978 e!803984)))

(declare-fun res!957571 () Bool)

(assert (=> b!1422033 (=> (not res!957571) (not e!803984))))

(declare-fun lt!626471 () SeekEntryResult!11146)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422033 (= res!957571 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626473 mask!2608) lt!626473 lt!626472 mask!2608) lt!626471))))

(assert (=> b!1422033 (= lt!626471 (Intermediate!11146 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422033 (= lt!626473 (select (store (arr!46839 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422033 (= lt!626472 (array!97052 (store (arr!46839 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47390 a!2831)))))

(declare-fun b!1422034 () Bool)

(declare-fun res!957572 () Bool)

(assert (=> b!1422034 (=> (not res!957572) (not e!803979))))

(declare-datatypes ((List!33529 0))(
  ( (Nil!33526) (Cons!33525 (h!34827 (_ BitVec 64)) (t!48230 List!33529)) )
))
(declare-fun arrayNoDuplicates!0 (array!97051 (_ BitVec 32) List!33529) Bool)

(assert (=> b!1422034 (= res!957572 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33526))))

(declare-fun b!1422035 () Bool)

(declare-fun res!957570 () Bool)

(assert (=> b!1422035 (=> (not res!957570) (not e!803979))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422035 (= res!957570 (validKeyInArray!0 (select (arr!46839 a!2831) j!81)))))

(declare-fun b!1422036 () Bool)

(declare-fun res!957575 () Bool)

(assert (=> b!1422036 (=> (not res!957575) (not e!803984))))

(assert (=> b!1422036 (= res!957575 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626473 lt!626472 mask!2608) lt!626471))))

(declare-fun b!1422037 () Bool)

(declare-fun res!957576 () Bool)

(assert (=> b!1422037 (=> (not res!957576) (not e!803979))))

(assert (=> b!1422037 (= res!957576 (validKeyInArray!0 (select (arr!46839 a!2831) i!982)))))

(declare-fun b!1422038 () Bool)

(declare-fun res!957569 () Bool)

(assert (=> b!1422038 (=> (not res!957569) (not e!803984))))

(assert (=> b!1422038 (= res!957569 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46839 a!2831) j!81) a!2831 mask!2608) lt!626474))))

(declare-fun b!1422039 () Bool)

(assert (=> b!1422039 (= e!803979 e!803978)))

(declare-fun res!957567 () Bool)

(assert (=> b!1422039 (=> (not res!957567) (not e!803978))))

(assert (=> b!1422039 (= res!957567 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46839 a!2831) j!81) mask!2608) (select (arr!46839 a!2831) j!81) a!2831 mask!2608) lt!626474))))

(assert (=> b!1422039 (= lt!626474 (Intermediate!11146 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422040 () Bool)

(assert (=> b!1422040 (= e!803980 e!803983)))

(declare-fun res!957578 () Bool)

(assert (=> b!1422040 (=> res!957578 e!803983)))

(assert (=> b!1422040 (= res!957578 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626470 #b00000000000000000000000000000000) (bvsge lt!626470 (size!47390 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422040 (= lt!626470 (nextIndex!0 index!585 x!605 mask!2608))))

(assert (= (and start!122768 res!957582) b!1422031))

(assert (= (and b!1422031 res!957574) b!1422037))

(assert (= (and b!1422037 res!957576) b!1422035))

(assert (= (and b!1422035 res!957570) b!1422029))

(assert (= (and b!1422029 res!957568) b!1422034))

(assert (= (and b!1422034 res!957572) b!1422030))

(assert (= (and b!1422030 res!957573) b!1422039))

(assert (= (and b!1422039 res!957567) b!1422033))

(assert (= (and b!1422033 res!957571) b!1422038))

(assert (= (and b!1422038 res!957569) b!1422036))

(assert (= (and b!1422036 res!957575) b!1422026))

(assert (= (and b!1422026 res!957581) b!1422032))

(assert (= (and b!1422032 res!957579) b!1422028))

(assert (= (and b!1422032 (not res!957580)) b!1422040))

(assert (= (and b!1422040 (not res!957578)) b!1422025))

(assert (= (and b!1422025 (not res!957577)) b!1422027))

(declare-fun m!1312631 () Bool)

(assert (=> b!1422027 m!1312631))

(declare-fun m!1312633 () Bool)

(assert (=> b!1422038 m!1312633))

(assert (=> b!1422038 m!1312633))

(declare-fun m!1312635 () Bool)

(assert (=> b!1422038 m!1312635))

(declare-fun m!1312637 () Bool)

(assert (=> b!1422033 m!1312637))

(assert (=> b!1422033 m!1312637))

(declare-fun m!1312639 () Bool)

(assert (=> b!1422033 m!1312639))

(declare-fun m!1312641 () Bool)

(assert (=> b!1422033 m!1312641))

(declare-fun m!1312643 () Bool)

(assert (=> b!1422033 m!1312643))

(assert (=> b!1422028 m!1312633))

(assert (=> b!1422028 m!1312633))

(declare-fun m!1312645 () Bool)

(assert (=> b!1422028 m!1312645))

(declare-fun m!1312647 () Bool)

(assert (=> b!1422037 m!1312647))

(assert (=> b!1422037 m!1312647))

(declare-fun m!1312649 () Bool)

(assert (=> b!1422037 m!1312649))

(assert (=> b!1422032 m!1312641))

(declare-fun m!1312651 () Bool)

(assert (=> b!1422032 m!1312651))

(declare-fun m!1312653 () Bool)

(assert (=> b!1422032 m!1312653))

(declare-fun m!1312655 () Bool)

(assert (=> b!1422032 m!1312655))

(assert (=> b!1422032 m!1312633))

(declare-fun m!1312657 () Bool)

(assert (=> b!1422032 m!1312657))

(assert (=> b!1422035 m!1312633))

(assert (=> b!1422035 m!1312633))

(declare-fun m!1312659 () Bool)

(assert (=> b!1422035 m!1312659))

(declare-fun m!1312661 () Bool)

(assert (=> start!122768 m!1312661))

(declare-fun m!1312663 () Bool)

(assert (=> start!122768 m!1312663))

(assert (=> b!1422039 m!1312633))

(assert (=> b!1422039 m!1312633))

(declare-fun m!1312665 () Bool)

(assert (=> b!1422039 m!1312665))

(assert (=> b!1422039 m!1312665))

(assert (=> b!1422039 m!1312633))

(declare-fun m!1312667 () Bool)

(assert (=> b!1422039 m!1312667))

(declare-fun m!1312669 () Bool)

(assert (=> b!1422040 m!1312669))

(declare-fun m!1312671 () Bool)

(assert (=> b!1422029 m!1312671))

(declare-fun m!1312673 () Bool)

(assert (=> b!1422036 m!1312673))

(declare-fun m!1312675 () Bool)

(assert (=> b!1422034 m!1312675))

(assert (=> b!1422025 m!1312633))

(assert (=> b!1422025 m!1312633))

(declare-fun m!1312677 () Bool)

(assert (=> b!1422025 m!1312677))

(push 1)

