; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122784 () Bool)

(assert start!122784)

(declare-fun b!1422409 () Bool)

(declare-fun e!804146 () Bool)

(assert (=> b!1422409 (= e!804146 true)))

(declare-fun lt!626638 () (_ BitVec 32))

(declare-datatypes ((array!97067 0))(
  ( (array!97068 (arr!46847 (Array (_ BitVec 32) (_ BitVec 64))) (size!47398 (_ BitVec 32))) )
))
(declare-fun lt!626644 () array!97067)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11154 0))(
  ( (MissingZero!11154 (index!47007 (_ BitVec 32))) (Found!11154 (index!47008 (_ BitVec 32))) (Intermediate!11154 (undefined!11966 Bool) (index!47009 (_ BitVec 32)) (x!128655 (_ BitVec 32))) (Undefined!11154) (MissingVacant!11154 (index!47010 (_ BitVec 32))) )
))
(declare-fun lt!626642 () SeekEntryResult!11154)

(declare-fun lt!626639 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97067 (_ BitVec 32)) SeekEntryResult!11154)

(assert (=> b!1422409 (= lt!626642 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626638 lt!626639 lt!626644 mask!2608))))

(declare-fun b!1422410 () Bool)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97067)

(declare-fun e!804151 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97067 (_ BitVec 32)) SeekEntryResult!11154)

(assert (=> b!1422410 (= e!804151 (= (seekEntryOrOpen!0 (select (arr!46847 a!2831) j!81) a!2831 mask!2608) (Found!11154 j!81)))))

(declare-fun b!1422411 () Bool)

(declare-fun res!957959 () Bool)

(declare-fun e!804148 () Bool)

(assert (=> b!1422411 (=> (not res!957959) (not e!804148))))

(declare-datatypes ((List!33537 0))(
  ( (Nil!33534) (Cons!33533 (h!34835 (_ BitVec 64)) (t!48238 List!33537)) )
))
(declare-fun arrayNoDuplicates!0 (array!97067 (_ BitVec 32) List!33537) Bool)

(assert (=> b!1422411 (= res!957959 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33534))))

(declare-fun res!957964 () Bool)

(assert (=> start!122784 (=> (not res!957964) (not e!804148))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122784 (= res!957964 (validMask!0 mask!2608))))

(assert (=> start!122784 e!804148))

(assert (=> start!122784 true))

(declare-fun array_inv!35792 (array!97067) Bool)

(assert (=> start!122784 (array_inv!35792 a!2831)))

(declare-fun b!1422412 () Bool)

(declare-fun res!957961 () Bool)

(declare-fun e!804150 () Bool)

(assert (=> b!1422412 (=> (not res!957961) (not e!804150))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!626643 () SeekEntryResult!11154)

(assert (=> b!1422412 (= res!957961 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626639 lt!626644 mask!2608) lt!626643))))

(declare-fun b!1422413 () Bool)

(declare-fun res!957965 () Bool)

(assert (=> b!1422413 (=> (not res!957965) (not e!804148))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97067 (_ BitVec 32)) Bool)

(assert (=> b!1422413 (= res!957965 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422414 () Bool)

(declare-fun e!804147 () Bool)

(assert (=> b!1422414 (= e!804150 (not e!804147))))

(declare-fun res!957962 () Bool)

(assert (=> b!1422414 (=> res!957962 e!804147)))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422414 (= res!957962 (or (= (select (arr!46847 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46847 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46847 a!2831) index!585) (select (arr!46847 a!2831) j!81)) (= (select (store (arr!46847 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1422414 e!804151))

(declare-fun res!957951 () Bool)

(assert (=> b!1422414 (=> (not res!957951) (not e!804151))))

(assert (=> b!1422414 (= res!957951 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48092 0))(
  ( (Unit!48093) )
))
(declare-fun lt!626640 () Unit!48092)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97067 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48092)

(assert (=> b!1422414 (= lt!626640 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422415 () Bool)

(declare-fun res!957960 () Bool)

(assert (=> b!1422415 (=> res!957960 e!804146)))

(declare-fun lt!626641 () SeekEntryResult!11154)

(assert (=> b!1422415 (= res!957960 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626638 (select (arr!46847 a!2831) j!81) a!2831 mask!2608) lt!626641)))))

(declare-fun b!1422416 () Bool)

(declare-fun res!957966 () Bool)

(assert (=> b!1422416 (=> (not res!957966) (not e!804148))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422416 (= res!957966 (validKeyInArray!0 (select (arr!46847 a!2831) j!81)))))

(declare-fun b!1422417 () Bool)

(declare-fun res!957955 () Bool)

(assert (=> b!1422417 (=> (not res!957955) (not e!804148))))

(assert (=> b!1422417 (= res!957955 (and (= (size!47398 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47398 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47398 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422418 () Bool)

(declare-fun res!957963 () Bool)

(assert (=> b!1422418 (=> (not res!957963) (not e!804148))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1422418 (= res!957963 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47398 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47398 a!2831))))))

(declare-fun b!1422419 () Bool)

(assert (=> b!1422419 (= e!804147 e!804146)))

(declare-fun res!957952 () Bool)

(assert (=> b!1422419 (=> res!957952 e!804146)))

(assert (=> b!1422419 (= res!957952 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626638 #b00000000000000000000000000000000) (bvsge lt!626638 (size!47398 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422419 (= lt!626638 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422420 () Bool)

(declare-fun res!957958 () Bool)

(assert (=> b!1422420 (=> (not res!957958) (not e!804148))))

(assert (=> b!1422420 (= res!957958 (validKeyInArray!0 (select (arr!46847 a!2831) i!982)))))

(declare-fun b!1422421 () Bool)

(declare-fun res!957957 () Bool)

(assert (=> b!1422421 (=> (not res!957957) (not e!804150))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422421 (= res!957957 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422422 () Bool)

(declare-fun res!957954 () Bool)

(assert (=> b!1422422 (=> (not res!957954) (not e!804150))))

(assert (=> b!1422422 (= res!957954 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46847 a!2831) j!81) a!2831 mask!2608) lt!626641))))

(declare-fun b!1422423 () Bool)

(declare-fun e!804152 () Bool)

(assert (=> b!1422423 (= e!804148 e!804152)))

(declare-fun res!957956 () Bool)

(assert (=> b!1422423 (=> (not res!957956) (not e!804152))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422423 (= res!957956 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46847 a!2831) j!81) mask!2608) (select (arr!46847 a!2831) j!81) a!2831 mask!2608) lt!626641))))

(assert (=> b!1422423 (= lt!626641 (Intermediate!11154 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422424 () Bool)

(assert (=> b!1422424 (= e!804152 e!804150)))

(declare-fun res!957953 () Bool)

(assert (=> b!1422424 (=> (not res!957953) (not e!804150))))

(assert (=> b!1422424 (= res!957953 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626639 mask!2608) lt!626639 lt!626644 mask!2608) lt!626643))))

(assert (=> b!1422424 (= lt!626643 (Intermediate!11154 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422424 (= lt!626639 (select (store (arr!46847 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422424 (= lt!626644 (array!97068 (store (arr!46847 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47398 a!2831)))))

(assert (= (and start!122784 res!957964) b!1422417))

(assert (= (and b!1422417 res!957955) b!1422420))

(assert (= (and b!1422420 res!957958) b!1422416))

(assert (= (and b!1422416 res!957966) b!1422413))

(assert (= (and b!1422413 res!957965) b!1422411))

(assert (= (and b!1422411 res!957959) b!1422418))

(assert (= (and b!1422418 res!957963) b!1422423))

(assert (= (and b!1422423 res!957956) b!1422424))

(assert (= (and b!1422424 res!957953) b!1422422))

(assert (= (and b!1422422 res!957954) b!1422412))

(assert (= (and b!1422412 res!957961) b!1422421))

(assert (= (and b!1422421 res!957957) b!1422414))

(assert (= (and b!1422414 res!957951) b!1422410))

(assert (= (and b!1422414 (not res!957962)) b!1422419))

(assert (= (and b!1422419 (not res!957952)) b!1422415))

(assert (= (and b!1422415 (not res!957960)) b!1422409))

(declare-fun m!1313015 () Bool)

(assert (=> b!1422411 m!1313015))

(declare-fun m!1313017 () Bool)

(assert (=> b!1422409 m!1313017))

(declare-fun m!1313019 () Bool)

(assert (=> b!1422416 m!1313019))

(assert (=> b!1422416 m!1313019))

(declare-fun m!1313021 () Bool)

(assert (=> b!1422416 m!1313021))

(assert (=> b!1422422 m!1313019))

(assert (=> b!1422422 m!1313019))

(declare-fun m!1313023 () Bool)

(assert (=> b!1422422 m!1313023))

(declare-fun m!1313025 () Bool)

(assert (=> start!122784 m!1313025))

(declare-fun m!1313027 () Bool)

(assert (=> start!122784 m!1313027))

(declare-fun m!1313029 () Bool)

(assert (=> b!1422414 m!1313029))

(declare-fun m!1313031 () Bool)

(assert (=> b!1422414 m!1313031))

(declare-fun m!1313033 () Bool)

(assert (=> b!1422414 m!1313033))

(declare-fun m!1313035 () Bool)

(assert (=> b!1422414 m!1313035))

(assert (=> b!1422414 m!1313019))

(declare-fun m!1313037 () Bool)

(assert (=> b!1422414 m!1313037))

(assert (=> b!1422423 m!1313019))

(assert (=> b!1422423 m!1313019))

(declare-fun m!1313039 () Bool)

(assert (=> b!1422423 m!1313039))

(assert (=> b!1422423 m!1313039))

(assert (=> b!1422423 m!1313019))

(declare-fun m!1313041 () Bool)

(assert (=> b!1422423 m!1313041))

(assert (=> b!1422415 m!1313019))

(assert (=> b!1422415 m!1313019))

(declare-fun m!1313043 () Bool)

(assert (=> b!1422415 m!1313043))

(declare-fun m!1313045 () Bool)

(assert (=> b!1422424 m!1313045))

(assert (=> b!1422424 m!1313045))

(declare-fun m!1313047 () Bool)

(assert (=> b!1422424 m!1313047))

(assert (=> b!1422424 m!1313029))

(declare-fun m!1313049 () Bool)

(assert (=> b!1422424 m!1313049))

(assert (=> b!1422410 m!1313019))

(assert (=> b!1422410 m!1313019))

(declare-fun m!1313051 () Bool)

(assert (=> b!1422410 m!1313051))

(declare-fun m!1313053 () Bool)

(assert (=> b!1422413 m!1313053))

(declare-fun m!1313055 () Bool)

(assert (=> b!1422412 m!1313055))

(declare-fun m!1313057 () Bool)

(assert (=> b!1422420 m!1313057))

(assert (=> b!1422420 m!1313057))

(declare-fun m!1313059 () Bool)

(assert (=> b!1422420 m!1313059))

(declare-fun m!1313061 () Bool)

(assert (=> b!1422419 m!1313061))

(check-sat (not b!1422420) (not b!1422413) (not b!1422416) (not b!1422411) (not b!1422424) (not b!1422410) (not b!1422419) (not b!1422422) (not b!1422412) (not start!122784) (not b!1422415) (not b!1422423) (not b!1422409) (not b!1422414))
(check-sat)
