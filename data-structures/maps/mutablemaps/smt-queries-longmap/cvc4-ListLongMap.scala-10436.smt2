; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122822 () Bool)

(assert start!122822)

(declare-fun b!1423321 () Bool)

(declare-fun res!958869 () Bool)

(declare-fun e!804547 () Bool)

(assert (=> b!1423321 (=> (not res!958869) (not e!804547))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97105 0))(
  ( (array!97106 (arr!46866 (Array (_ BitVec 32) (_ BitVec 64))) (size!47417 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97105)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1423321 (= res!958869 (and (= (size!47417 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47417 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47417 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1423322 () Bool)

(declare-fun e!804549 () Bool)

(assert (=> b!1423322 (= e!804547 e!804549)))

(declare-fun res!958872 () Bool)

(assert (=> b!1423322 (=> (not res!958872) (not e!804549))))

(declare-datatypes ((SeekEntryResult!11173 0))(
  ( (MissingZero!11173 (index!47083 (_ BitVec 32))) (Found!11173 (index!47084 (_ BitVec 32))) (Intermediate!11173 (undefined!11985 Bool) (index!47085 (_ BitVec 32)) (x!128722 (_ BitVec 32))) (Undefined!11173) (MissingVacant!11173 (index!47086 (_ BitVec 32))) )
))
(declare-fun lt!627039 () SeekEntryResult!11173)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97105 (_ BitVec 32)) SeekEntryResult!11173)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423322 (= res!958872 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46866 a!2831) j!81) mask!2608) (select (arr!46866 a!2831) j!81) a!2831 mask!2608) lt!627039))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1423322 (= lt!627039 (Intermediate!11173 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1423323 () Bool)

(declare-fun e!804550 () Bool)

(assert (=> b!1423323 (= e!804549 e!804550)))

(declare-fun res!958876 () Bool)

(assert (=> b!1423323 (=> (not res!958876) (not e!804550))))

(declare-fun lt!627037 () array!97105)

(declare-fun lt!627043 () (_ BitVec 64))

(declare-fun lt!627041 () SeekEntryResult!11173)

(assert (=> b!1423323 (= res!958876 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627043 mask!2608) lt!627043 lt!627037 mask!2608) lt!627041))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1423323 (= lt!627041 (Intermediate!11173 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1423323 (= lt!627043 (select (store (arr!46866 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1423323 (= lt!627037 (array!97106 (store (arr!46866 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47417 a!2831)))))

(declare-fun b!1423324 () Bool)

(declare-fun e!804551 () Bool)

(declare-fun e!804548 () Bool)

(assert (=> b!1423324 (= e!804551 e!804548)))

(declare-fun res!958870 () Bool)

(assert (=> b!1423324 (=> res!958870 e!804548)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!627040 () (_ BitVec 32))

(assert (=> b!1423324 (= res!958870 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627040 #b00000000000000000000000000000000) (bvsge lt!627040 (size!47417 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1423324 (= lt!627040 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1423325 () Bool)

(declare-fun res!958863 () Bool)

(assert (=> b!1423325 (=> (not res!958863) (not e!804547))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97105 (_ BitVec 32)) Bool)

(assert (=> b!1423325 (= res!958863 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1423326 () Bool)

(declare-fun res!958871 () Bool)

(assert (=> b!1423326 (=> (not res!958871) (not e!804547))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1423326 (= res!958871 (validKeyInArray!0 (select (arr!46866 a!2831) j!81)))))

(declare-fun b!1423327 () Bool)

(declare-fun res!958878 () Bool)

(assert (=> b!1423327 (=> (not res!958878) (not e!804547))))

(assert (=> b!1423327 (= res!958878 (validKeyInArray!0 (select (arr!46866 a!2831) i!982)))))

(declare-fun res!958877 () Bool)

(assert (=> start!122822 (=> (not res!958877) (not e!804547))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122822 (= res!958877 (validMask!0 mask!2608))))

(assert (=> start!122822 e!804547))

(assert (=> start!122822 true))

(declare-fun array_inv!35811 (array!97105) Bool)

(assert (=> start!122822 (array_inv!35811 a!2831)))

(declare-fun b!1423328 () Bool)

(declare-fun res!958874 () Bool)

(assert (=> b!1423328 (=> (not res!958874) (not e!804550))))

(assert (=> b!1423328 (= res!958874 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627043 lt!627037 mask!2608) lt!627041))))

(declare-fun b!1423329 () Bool)

(assert (=> b!1423329 (= e!804548 true)))

(declare-fun lt!627042 () SeekEntryResult!11173)

(assert (=> b!1423329 (= lt!627042 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627040 lt!627043 lt!627037 mask!2608))))

(declare-fun b!1423330 () Bool)

(declare-fun res!958873 () Bool)

(assert (=> b!1423330 (=> (not res!958873) (not e!804547))))

(declare-datatypes ((List!33556 0))(
  ( (Nil!33553) (Cons!33552 (h!34854 (_ BitVec 64)) (t!48257 List!33556)) )
))
(declare-fun arrayNoDuplicates!0 (array!97105 (_ BitVec 32) List!33556) Bool)

(assert (=> b!1423330 (= res!958873 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33553))))

(declare-fun b!1423331 () Bool)

(assert (=> b!1423331 (= e!804550 (not e!804551))))

(declare-fun res!958868 () Bool)

(assert (=> b!1423331 (=> res!958868 e!804551)))

(assert (=> b!1423331 (= res!958868 (or (= (select (arr!46866 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46866 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46866 a!2831) index!585) (select (arr!46866 a!2831) j!81)) (= (select (store (arr!46866 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804546 () Bool)

(assert (=> b!1423331 e!804546))

(declare-fun res!958865 () Bool)

(assert (=> b!1423331 (=> (not res!958865) (not e!804546))))

(assert (=> b!1423331 (= res!958865 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48130 0))(
  ( (Unit!48131) )
))
(declare-fun lt!627038 () Unit!48130)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97105 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48130)

(assert (=> b!1423331 (= lt!627038 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1423332 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97105 (_ BitVec 32)) SeekEntryResult!11173)

(assert (=> b!1423332 (= e!804546 (= (seekEntryOrOpen!0 (select (arr!46866 a!2831) j!81) a!2831 mask!2608) (Found!11173 j!81)))))

(declare-fun b!1423333 () Bool)

(declare-fun res!958864 () Bool)

(assert (=> b!1423333 (=> (not res!958864) (not e!804550))))

(assert (=> b!1423333 (= res!958864 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46866 a!2831) j!81) a!2831 mask!2608) lt!627039))))

(declare-fun b!1423334 () Bool)

(declare-fun res!958866 () Bool)

(assert (=> b!1423334 (=> (not res!958866) (not e!804547))))

(assert (=> b!1423334 (= res!958866 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47417 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47417 a!2831))))))

(declare-fun b!1423335 () Bool)

(declare-fun res!958875 () Bool)

(assert (=> b!1423335 (=> (not res!958875) (not e!804550))))

(assert (=> b!1423335 (= res!958875 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1423336 () Bool)

(declare-fun res!958867 () Bool)

(assert (=> b!1423336 (=> res!958867 e!804548)))

(assert (=> b!1423336 (= res!958867 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627040 (select (arr!46866 a!2831) j!81) a!2831 mask!2608) lt!627039)))))

(assert (= (and start!122822 res!958877) b!1423321))

(assert (= (and b!1423321 res!958869) b!1423327))

(assert (= (and b!1423327 res!958878) b!1423326))

(assert (= (and b!1423326 res!958871) b!1423325))

(assert (= (and b!1423325 res!958863) b!1423330))

(assert (= (and b!1423330 res!958873) b!1423334))

(assert (= (and b!1423334 res!958866) b!1423322))

(assert (= (and b!1423322 res!958872) b!1423323))

(assert (= (and b!1423323 res!958876) b!1423333))

(assert (= (and b!1423333 res!958864) b!1423328))

(assert (= (and b!1423328 res!958874) b!1423335))

(assert (= (and b!1423335 res!958875) b!1423331))

(assert (= (and b!1423331 res!958865) b!1423332))

(assert (= (and b!1423331 (not res!958868)) b!1423324))

(assert (= (and b!1423324 (not res!958870)) b!1423336))

(assert (= (and b!1423336 (not res!958867)) b!1423329))

(declare-fun m!1313927 () Bool)

(assert (=> b!1423336 m!1313927))

(assert (=> b!1423336 m!1313927))

(declare-fun m!1313929 () Bool)

(assert (=> b!1423336 m!1313929))

(declare-fun m!1313931 () Bool)

(assert (=> b!1423324 m!1313931))

(assert (=> b!1423333 m!1313927))

(assert (=> b!1423333 m!1313927))

(declare-fun m!1313933 () Bool)

(assert (=> b!1423333 m!1313933))

(assert (=> b!1423326 m!1313927))

(assert (=> b!1423326 m!1313927))

(declare-fun m!1313935 () Bool)

(assert (=> b!1423326 m!1313935))

(declare-fun m!1313937 () Bool)

(assert (=> b!1423325 m!1313937))

(declare-fun m!1313939 () Bool)

(assert (=> b!1423328 m!1313939))

(declare-fun m!1313941 () Bool)

(assert (=> start!122822 m!1313941))

(declare-fun m!1313943 () Bool)

(assert (=> start!122822 m!1313943))

(assert (=> b!1423332 m!1313927))

(assert (=> b!1423332 m!1313927))

(declare-fun m!1313945 () Bool)

(assert (=> b!1423332 m!1313945))

(declare-fun m!1313947 () Bool)

(assert (=> b!1423327 m!1313947))

(assert (=> b!1423327 m!1313947))

(declare-fun m!1313949 () Bool)

(assert (=> b!1423327 m!1313949))

(declare-fun m!1313951 () Bool)

(assert (=> b!1423329 m!1313951))

(declare-fun m!1313953 () Bool)

(assert (=> b!1423330 m!1313953))

(assert (=> b!1423322 m!1313927))

(assert (=> b!1423322 m!1313927))

(declare-fun m!1313955 () Bool)

(assert (=> b!1423322 m!1313955))

(assert (=> b!1423322 m!1313955))

(assert (=> b!1423322 m!1313927))

(declare-fun m!1313957 () Bool)

(assert (=> b!1423322 m!1313957))

(declare-fun m!1313959 () Bool)

(assert (=> b!1423331 m!1313959))

(declare-fun m!1313961 () Bool)

(assert (=> b!1423331 m!1313961))

(declare-fun m!1313963 () Bool)

(assert (=> b!1423331 m!1313963))

(declare-fun m!1313965 () Bool)

(assert (=> b!1423331 m!1313965))

(assert (=> b!1423331 m!1313927))

(declare-fun m!1313967 () Bool)

(assert (=> b!1423331 m!1313967))

(declare-fun m!1313969 () Bool)

(assert (=> b!1423323 m!1313969))

(assert (=> b!1423323 m!1313969))

(declare-fun m!1313971 () Bool)

(assert (=> b!1423323 m!1313971))

(assert (=> b!1423323 m!1313959))

(declare-fun m!1313973 () Bool)

(assert (=> b!1423323 m!1313973))

(push 1)

