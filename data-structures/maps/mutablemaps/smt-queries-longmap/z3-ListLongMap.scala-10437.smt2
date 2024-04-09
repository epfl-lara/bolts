; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122826 () Bool)

(assert start!122826)

(declare-fun e!804593 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97109 0))(
  ( (array!97110 (arr!46868 (Array (_ BitVec 32) (_ BitVec 64))) (size!47419 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97109)

(declare-fun b!1423417 () Bool)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11175 0))(
  ( (MissingZero!11175 (index!47091 (_ BitVec 32))) (Found!11175 (index!47092 (_ BitVec 32))) (Intermediate!11175 (undefined!11987 Bool) (index!47093 (_ BitVec 32)) (x!128732 (_ BitVec 32))) (Undefined!11175) (MissingVacant!11175 (index!47094 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97109 (_ BitVec 32)) SeekEntryResult!11175)

(assert (=> b!1423417 (= e!804593 (= (seekEntryOrOpen!0 (select (arr!46868 a!2831) j!81) a!2831 mask!2608) (Found!11175 j!81)))))

(declare-fun b!1423418 () Bool)

(declare-fun res!958964 () Bool)

(declare-fun e!804588 () Bool)

(assert (=> b!1423418 (=> (not res!958964) (not e!804588))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1423418 (= res!958964 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47419 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47419 a!2831))))))

(declare-fun b!1423420 () Bool)

(declare-fun res!958965 () Bool)

(assert (=> b!1423420 (=> (not res!958965) (not e!804588))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423420 (= res!958965 (validKeyInArray!0 (select (arr!46868 a!2831) j!81)))))

(declare-fun b!1423421 () Bool)

(declare-fun res!958966 () Bool)

(declare-fun e!804590 () Bool)

(assert (=> b!1423421 (=> (not res!958966) (not e!804590))))

(declare-fun lt!627081 () SeekEntryResult!11175)

(declare-fun lt!627085 () array!97109)

(declare-fun lt!627084 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97109 (_ BitVec 32)) SeekEntryResult!11175)

(assert (=> b!1423421 (= res!958966 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627084 lt!627085 mask!2608) lt!627081))))

(declare-fun b!1423422 () Bool)

(declare-fun res!958961 () Bool)

(assert (=> b!1423422 (=> (not res!958961) (not e!804590))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423422 (= res!958961 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423423 () Bool)

(declare-fun res!958970 () Bool)

(assert (=> b!1423423 (=> (not res!958970) (not e!804588))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423423 (= res!958970 (validKeyInArray!0 (select (arr!46868 a!2831) i!982)))))

(declare-fun b!1423424 () Bool)

(declare-fun res!958973 () Bool)

(declare-fun e!804589 () Bool)

(assert (=> b!1423424 (=> res!958973 e!804589)))

(declare-fun lt!627079 () SeekEntryResult!11175)

(declare-fun lt!627080 () (_ BitVec 32))

(assert (=> b!1423424 (= res!958973 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627080 (select (arr!46868 a!2831) j!81) a!2831 mask!2608) lt!627079)))))

(declare-fun b!1423425 () Bool)

(declare-fun res!958960 () Bool)

(assert (=> b!1423425 (=> (not res!958960) (not e!804588))))

(assert (=> b!1423425 (= res!958960 (and (= (size!47419 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47419 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47419 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423426 () Bool)

(declare-fun res!958971 () Bool)

(assert (=> b!1423426 (=> (not res!958971) (not e!804588))))

(declare-datatypes ((List!33558 0))(
  ( (Nil!33555) (Cons!33554 (h!34856 (_ BitVec 64)) (t!48259 List!33558)) )
))
(declare-fun arrayNoDuplicates!0 (array!97109 (_ BitVec 32) List!33558) Bool)

(assert (=> b!1423426 (= res!958971 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33555))))

(declare-fun b!1423427 () Bool)

(declare-fun e!804592 () Bool)

(assert (=> b!1423427 (= e!804592 e!804590)))

(declare-fun res!958968 () Bool)

(assert (=> b!1423427 (=> (not res!958968) (not e!804590))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423427 (= res!958968 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627084 mask!2608) lt!627084 lt!627085 mask!2608) lt!627081))))

(assert (=> b!1423427 (= lt!627081 (Intermediate!11175 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423427 (= lt!627084 (select (store (arr!46868 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423427 (= lt!627085 (array!97110 (store (arr!46868 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47419 a!2831)))))

(declare-fun b!1423428 () Bool)

(declare-fun res!958962 () Bool)

(assert (=> b!1423428 (=> (not res!958962) (not e!804588))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97109 (_ BitVec 32)) Bool)

(assert (=> b!1423428 (= res!958962 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423429 () Bool)

(declare-fun res!958963 () Bool)

(assert (=> b!1423429 (=> (not res!958963) (not e!804590))))

(assert (=> b!1423429 (= res!958963 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46868 a!2831) j!81) a!2831 mask!2608) lt!627079))))

(declare-fun b!1423430 () Bool)

(assert (=> b!1423430 (= e!804589 true)))

(declare-fun lt!627083 () SeekEntryResult!11175)

(assert (=> b!1423430 (= lt!627083 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627080 lt!627084 lt!627085 mask!2608))))

(declare-fun b!1423431 () Bool)

(declare-fun e!804591 () Bool)

(assert (=> b!1423431 (= e!804591 e!804589)))

(declare-fun res!958969 () Bool)

(assert (=> b!1423431 (=> res!958969 e!804589)))

(assert (=> b!1423431 (= res!958969 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627080 #b00000000000000000000000000000000) (bvsge lt!627080 (size!47419 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423431 (= lt!627080 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423432 () Bool)

(assert (=> b!1423432 (= e!804588 e!804592)))

(declare-fun res!958967 () Bool)

(assert (=> b!1423432 (=> (not res!958967) (not e!804592))))

(assert (=> b!1423432 (= res!958967 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46868 a!2831) j!81) mask!2608) (select (arr!46868 a!2831) j!81) a!2831 mask!2608) lt!627079))))

(assert (=> b!1423432 (= lt!627079 (Intermediate!11175 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423419 () Bool)

(assert (=> b!1423419 (= e!804590 (not e!804591))))

(declare-fun res!958972 () Bool)

(assert (=> b!1423419 (=> res!958972 e!804591)))

(assert (=> b!1423419 (= res!958972 (or (= (select (arr!46868 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46868 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46868 a!2831) index!585) (select (arr!46868 a!2831) j!81)) (= (select (store (arr!46868 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1423419 e!804593))

(declare-fun res!958959 () Bool)

(assert (=> b!1423419 (=> (not res!958959) (not e!804593))))

(assert (=> b!1423419 (= res!958959 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48134 0))(
  ( (Unit!48135) )
))
(declare-fun lt!627082 () Unit!48134)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97109 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48134)

(assert (=> b!1423419 (= lt!627082 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun res!958974 () Bool)

(assert (=> start!122826 (=> (not res!958974) (not e!804588))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122826 (= res!958974 (validMask!0 mask!2608))))

(assert (=> start!122826 e!804588))

(assert (=> start!122826 true))

(declare-fun array_inv!35813 (array!97109) Bool)

(assert (=> start!122826 (array_inv!35813 a!2831)))

(assert (= (and start!122826 res!958974) b!1423425))

(assert (= (and b!1423425 res!958960) b!1423423))

(assert (= (and b!1423423 res!958970) b!1423420))

(assert (= (and b!1423420 res!958965) b!1423428))

(assert (= (and b!1423428 res!958962) b!1423426))

(assert (= (and b!1423426 res!958971) b!1423418))

(assert (= (and b!1423418 res!958964) b!1423432))

(assert (= (and b!1423432 res!958967) b!1423427))

(assert (= (and b!1423427 res!958968) b!1423429))

(assert (= (and b!1423429 res!958963) b!1423421))

(assert (= (and b!1423421 res!958966) b!1423422))

(assert (= (and b!1423422 res!958961) b!1423419))

(assert (= (and b!1423419 res!958959) b!1423417))

(assert (= (and b!1423419 (not res!958972)) b!1423431))

(assert (= (and b!1423431 (not res!958969)) b!1423424))

(assert (= (and b!1423424 (not res!958973)) b!1423430))

(declare-fun m!1314023 () Bool)

(assert (=> b!1423419 m!1314023))

(declare-fun m!1314025 () Bool)

(assert (=> b!1423419 m!1314025))

(declare-fun m!1314027 () Bool)

(assert (=> b!1423419 m!1314027))

(declare-fun m!1314029 () Bool)

(assert (=> b!1423419 m!1314029))

(declare-fun m!1314031 () Bool)

(assert (=> b!1423419 m!1314031))

(declare-fun m!1314033 () Bool)

(assert (=> b!1423419 m!1314033))

(assert (=> b!1423417 m!1314031))

(assert (=> b!1423417 m!1314031))

(declare-fun m!1314035 () Bool)

(assert (=> b!1423417 m!1314035))

(declare-fun m!1314037 () Bool)

(assert (=> b!1423431 m!1314037))

(declare-fun m!1314039 () Bool)

(assert (=> b!1423427 m!1314039))

(assert (=> b!1423427 m!1314039))

(declare-fun m!1314041 () Bool)

(assert (=> b!1423427 m!1314041))

(assert (=> b!1423427 m!1314023))

(declare-fun m!1314043 () Bool)

(assert (=> b!1423427 m!1314043))

(declare-fun m!1314045 () Bool)

(assert (=> b!1423430 m!1314045))

(assert (=> b!1423432 m!1314031))

(assert (=> b!1423432 m!1314031))

(declare-fun m!1314047 () Bool)

(assert (=> b!1423432 m!1314047))

(assert (=> b!1423432 m!1314047))

(assert (=> b!1423432 m!1314031))

(declare-fun m!1314049 () Bool)

(assert (=> b!1423432 m!1314049))

(declare-fun m!1314051 () Bool)

(assert (=> start!122826 m!1314051))

(declare-fun m!1314053 () Bool)

(assert (=> start!122826 m!1314053))

(declare-fun m!1314055 () Bool)

(assert (=> b!1423421 m!1314055))

(declare-fun m!1314057 () Bool)

(assert (=> b!1423426 m!1314057))

(assert (=> b!1423424 m!1314031))

(assert (=> b!1423424 m!1314031))

(declare-fun m!1314059 () Bool)

(assert (=> b!1423424 m!1314059))

(assert (=> b!1423429 m!1314031))

(assert (=> b!1423429 m!1314031))

(declare-fun m!1314061 () Bool)

(assert (=> b!1423429 m!1314061))

(declare-fun m!1314063 () Bool)

(assert (=> b!1423428 m!1314063))

(declare-fun m!1314065 () Bool)

(assert (=> b!1423423 m!1314065))

(assert (=> b!1423423 m!1314065))

(declare-fun m!1314067 () Bool)

(assert (=> b!1423423 m!1314067))

(assert (=> b!1423420 m!1314031))

(assert (=> b!1423420 m!1314031))

(declare-fun m!1314069 () Bool)

(assert (=> b!1423420 m!1314069))

(check-sat (not b!1423428) (not b!1423419) (not b!1423431) (not b!1423432) (not b!1423430) (not start!122826) (not b!1423421) (not b!1423429) (not b!1423424) (not b!1423423) (not b!1423417) (not b!1423427) (not b!1423420) (not b!1423426))
(check-sat)
