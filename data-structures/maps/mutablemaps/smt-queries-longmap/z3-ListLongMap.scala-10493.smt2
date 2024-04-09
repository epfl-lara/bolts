; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!123576 () Bool)

(assert start!123576)

(declare-fun b!1432023 () Bool)

(declare-fun e!808442 () Bool)

(declare-fun e!808441 () Bool)

(assert (=> b!1432023 (= e!808442 e!808441)))

(declare-fun res!966007 () Bool)

(assert (=> b!1432023 (=> (not res!966007) (not e!808441))))

(declare-datatypes ((array!97466 0))(
  ( (array!97467 (arr!47036 (Array (_ BitVec 32) (_ BitVec 64))) (size!47587 (_ BitVec 32))) )
))
(declare-fun lt!630392 () array!97466)

(declare-datatypes ((SeekEntryResult!11337 0))(
  ( (MissingZero!11337 (index!47739 (_ BitVec 32))) (Found!11337 (index!47740 (_ BitVec 32))) (Intermediate!11337 (undefined!12149 Bool) (index!47741 (_ BitVec 32)) (x!129390 (_ BitVec 32))) (Undefined!11337) (MissingVacant!11337 (index!47742 (_ BitVec 32))) )
))
(declare-fun lt!630393 () SeekEntryResult!11337)

(declare-fun lt!630389 () (_ BitVec 64))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97466 (_ BitVec 32)) SeekEntryResult!11337)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432023 (= res!966007 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!630389 mask!2608) lt!630389 lt!630392 mask!2608) lt!630393))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1432023 (= lt!630393 (Intermediate!11337 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97466)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1432023 (= lt!630389 (select (store (arr!47036 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1432023 (= lt!630392 (array!97467 (store (arr!47036 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47587 a!2831)))))

(declare-fun b!1432024 () Bool)

(declare-fun e!808440 () Bool)

(assert (=> b!1432024 (= e!808440 true)))

(declare-fun lt!630391 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1432024 (= lt!630391 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1432025 () Bool)

(declare-fun res!966009 () Bool)

(declare-fun e!808444 () Bool)

(assert (=> b!1432025 (=> (not res!966009) (not e!808444))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97466 (_ BitVec 32)) Bool)

(assert (=> b!1432025 (= res!966009 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1432026 () Bool)

(declare-fun res!966005 () Bool)

(assert (=> b!1432026 (=> (not res!966005) (not e!808444))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1432026 (= res!966005 (validKeyInArray!0 (select (arr!47036 a!2831) j!81)))))

(declare-fun b!1432027 () Bool)

(declare-fun res!965996 () Bool)

(assert (=> b!1432027 (=> (not res!965996) (not e!808444))))

(assert (=> b!1432027 (= res!965996 (validKeyInArray!0 (select (arr!47036 a!2831) i!982)))))

(declare-fun b!1432028 () Bool)

(declare-fun res!966002 () Bool)

(assert (=> b!1432028 (=> (not res!966002) (not e!808444))))

(declare-datatypes ((List!33726 0))(
  ( (Nil!33723) (Cons!33722 (h!35045 (_ BitVec 64)) (t!48427 List!33726)) )
))
(declare-fun arrayNoDuplicates!0 (array!97466 (_ BitVec 32) List!33726) Bool)

(assert (=> b!1432028 (= res!966002 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33723))))

(declare-fun b!1432029 () Bool)

(declare-fun res!965998 () Bool)

(assert (=> b!1432029 (=> (not res!965998) (not e!808444))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1432029 (= res!965998 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47587 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47587 a!2831))))))

(declare-fun b!1432030 () Bool)

(declare-fun res!966006 () Bool)

(assert (=> b!1432030 (=> (not res!966006) (not e!808441))))

(assert (=> b!1432030 (= res!966006 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun res!966004 () Bool)

(assert (=> start!123576 (=> (not res!966004) (not e!808444))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!123576 (= res!966004 (validMask!0 mask!2608))))

(assert (=> start!123576 e!808444))

(assert (=> start!123576 true))

(declare-fun array_inv!35981 (array!97466) Bool)

(assert (=> start!123576 (array_inv!35981 a!2831)))

(declare-fun b!1432031 () Bool)

(declare-fun e!808443 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97466 (_ BitVec 32)) SeekEntryResult!11337)

(assert (=> b!1432031 (= e!808443 (= (seekEntryOrOpen!0 (select (arr!47036 a!2831) j!81) a!2831 mask!2608) (Found!11337 j!81)))))

(declare-fun b!1432032 () Bool)

(declare-fun res!965997 () Bool)

(assert (=> b!1432032 (=> (not res!965997) (not e!808441))))

(assert (=> b!1432032 (= res!965997 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!630389 lt!630392 mask!2608) lt!630393))))

(declare-fun b!1432033 () Bool)

(declare-fun res!966001 () Bool)

(assert (=> b!1432033 (=> (not res!966001) (not e!808441))))

(declare-fun lt!630390 () SeekEntryResult!11337)

(assert (=> b!1432033 (= res!966001 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!47036 a!2831) j!81) a!2831 mask!2608) lt!630390))))

(declare-fun b!1432034 () Bool)

(declare-fun res!966000 () Bool)

(assert (=> b!1432034 (=> (not res!966000) (not e!808444))))

(assert (=> b!1432034 (= res!966000 (and (= (size!47587 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47587 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47587 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1432035 () Bool)

(assert (=> b!1432035 (= e!808441 (not e!808440))))

(declare-fun res!965999 () Bool)

(assert (=> b!1432035 (=> res!965999 e!808440)))

(assert (=> b!1432035 (= res!965999 (or (= (select (arr!47036 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47036 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47036 a!2831) index!585) (select (arr!47036 a!2831) j!81)) (= (select (store (arr!47036 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1432035 e!808443))

(declare-fun res!966003 () Bool)

(assert (=> b!1432035 (=> (not res!966003) (not e!808443))))

(assert (=> b!1432035 (= res!966003 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48368 0))(
  ( (Unit!48369) )
))
(declare-fun lt!630394 () Unit!48368)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97466 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48368)

(assert (=> b!1432035 (= lt!630394 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1432036 () Bool)

(assert (=> b!1432036 (= e!808444 e!808442)))

(declare-fun res!966008 () Bool)

(assert (=> b!1432036 (=> (not res!966008) (not e!808442))))

(assert (=> b!1432036 (= res!966008 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47036 a!2831) j!81) mask!2608) (select (arr!47036 a!2831) j!81) a!2831 mask!2608) lt!630390))))

(assert (=> b!1432036 (= lt!630390 (Intermediate!11337 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(assert (= (and start!123576 res!966004) b!1432034))

(assert (= (and b!1432034 res!966000) b!1432027))

(assert (= (and b!1432027 res!965996) b!1432026))

(assert (= (and b!1432026 res!966005) b!1432025))

(assert (= (and b!1432025 res!966009) b!1432028))

(assert (= (and b!1432028 res!966002) b!1432029))

(assert (= (and b!1432029 res!965998) b!1432036))

(assert (= (and b!1432036 res!966008) b!1432023))

(assert (= (and b!1432023 res!966007) b!1432033))

(assert (= (and b!1432033 res!966001) b!1432032))

(assert (= (and b!1432032 res!965997) b!1432030))

(assert (= (and b!1432030 res!966006) b!1432035))

(assert (= (and b!1432035 res!966003) b!1432031))

(assert (= (and b!1432035 (not res!965999)) b!1432024))

(declare-fun m!1321873 () Bool)

(assert (=> b!1432032 m!1321873))

(declare-fun m!1321875 () Bool)

(assert (=> b!1432026 m!1321875))

(assert (=> b!1432026 m!1321875))

(declare-fun m!1321877 () Bool)

(assert (=> b!1432026 m!1321877))

(declare-fun m!1321879 () Bool)

(assert (=> b!1432024 m!1321879))

(declare-fun m!1321881 () Bool)

(assert (=> start!123576 m!1321881))

(declare-fun m!1321883 () Bool)

(assert (=> start!123576 m!1321883))

(declare-fun m!1321885 () Bool)

(assert (=> b!1432025 m!1321885))

(assert (=> b!1432033 m!1321875))

(assert (=> b!1432033 m!1321875))

(declare-fun m!1321887 () Bool)

(assert (=> b!1432033 m!1321887))

(declare-fun m!1321889 () Bool)

(assert (=> b!1432035 m!1321889))

(declare-fun m!1321891 () Bool)

(assert (=> b!1432035 m!1321891))

(declare-fun m!1321893 () Bool)

(assert (=> b!1432035 m!1321893))

(declare-fun m!1321895 () Bool)

(assert (=> b!1432035 m!1321895))

(assert (=> b!1432035 m!1321875))

(declare-fun m!1321897 () Bool)

(assert (=> b!1432035 m!1321897))

(assert (=> b!1432031 m!1321875))

(assert (=> b!1432031 m!1321875))

(declare-fun m!1321899 () Bool)

(assert (=> b!1432031 m!1321899))

(declare-fun m!1321901 () Bool)

(assert (=> b!1432028 m!1321901))

(declare-fun m!1321903 () Bool)

(assert (=> b!1432027 m!1321903))

(assert (=> b!1432027 m!1321903))

(declare-fun m!1321905 () Bool)

(assert (=> b!1432027 m!1321905))

(declare-fun m!1321907 () Bool)

(assert (=> b!1432023 m!1321907))

(assert (=> b!1432023 m!1321907))

(declare-fun m!1321909 () Bool)

(assert (=> b!1432023 m!1321909))

(assert (=> b!1432023 m!1321889))

(declare-fun m!1321911 () Bool)

(assert (=> b!1432023 m!1321911))

(assert (=> b!1432036 m!1321875))

(assert (=> b!1432036 m!1321875))

(declare-fun m!1321913 () Bool)

(assert (=> b!1432036 m!1321913))

(assert (=> b!1432036 m!1321913))

(assert (=> b!1432036 m!1321875))

(declare-fun m!1321915 () Bool)

(assert (=> b!1432036 m!1321915))

(check-sat (not b!1432024) (not start!123576) (not b!1432025) (not b!1432026) (not b!1432023) (not b!1432027) (not b!1432028) (not b!1432035) (not b!1432031) (not b!1432033) (not b!1432032) (not b!1432036))
(check-sat)
