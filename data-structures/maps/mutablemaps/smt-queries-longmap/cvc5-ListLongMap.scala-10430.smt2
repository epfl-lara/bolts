; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122782 () Bool)

(assert start!122782)

(declare-fun b!1422361 () Bool)

(declare-fun res!957914 () Bool)

(declare-fun e!804130 () Bool)

(assert (=> b!1422361 (=> (not res!957914) (not e!804130))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97065 0))(
  ( (array!97066 (arr!46846 (Array (_ BitVec 32) (_ BitVec 64))) (size!47397 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97065)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1422361 (= res!957914 (and (= (size!47397 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47397 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47397 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1422362 () Bool)

(declare-fun e!804131 () Bool)

(assert (=> b!1422362 (= e!804131 true)))

(declare-fun lt!626620 () (_ BitVec 32))

(declare-fun lt!626622 () (_ BitVec 64))

(declare-fun lt!626619 () array!97065)

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11153 0))(
  ( (MissingZero!11153 (index!47003 (_ BitVec 32))) (Found!11153 (index!47004 (_ BitVec 32))) (Intermediate!11153 (undefined!11965 Bool) (index!47005 (_ BitVec 32)) (x!128654 (_ BitVec 32))) (Undefined!11153) (MissingVacant!11153 (index!47006 (_ BitVec 32))) )
))
(declare-fun lt!626623 () SeekEntryResult!11153)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97065 (_ BitVec 32)) SeekEntryResult!11153)

(assert (=> b!1422362 (= lt!626623 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626620 lt!626622 lt!626619 mask!2608))))

(declare-fun b!1422363 () Bool)

(declare-fun res!957911 () Bool)

(assert (=> b!1422363 (=> (not res!957911) (not e!804130))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1422363 (= res!957911 (validKeyInArray!0 (select (arr!46846 a!2831) i!982)))))

(declare-fun b!1422364 () Bool)

(declare-fun e!804129 () Bool)

(assert (=> b!1422364 (= e!804129 e!804131)))

(declare-fun res!957915 () Bool)

(assert (=> b!1422364 (=> res!957915 e!804131)))

(assert (=> b!1422364 (= res!957915 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!626620 #b00000000000000000000000000000000) (bvsge lt!626620 (size!47397 a!2831))))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422364 (= lt!626620 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1422365 () Bool)

(declare-fun res!957913 () Bool)

(declare-fun e!804128 () Bool)

(assert (=> b!1422365 (=> (not res!957913) (not e!804128))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1422365 (= res!957913 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1422366 () Bool)

(declare-fun res!957917 () Bool)

(assert (=> b!1422366 (=> (not res!957917) (not e!804130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97065 (_ BitVec 32)) Bool)

(assert (=> b!1422366 (= res!957917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1422367 () Bool)

(declare-fun e!804127 () Bool)

(assert (=> b!1422367 (= e!804130 e!804127)))

(declare-fun res!957905 () Bool)

(assert (=> b!1422367 (=> (not res!957905) (not e!804127))))

(declare-fun lt!626618 () SeekEntryResult!11153)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1422367 (= res!957905 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46846 a!2831) j!81) mask!2608) (select (arr!46846 a!2831) j!81) a!2831 mask!2608) lt!626618))))

(assert (=> b!1422367 (= lt!626618 (Intermediate!11153 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1422368 () Bool)

(assert (=> b!1422368 (= e!804128 (not e!804129))))

(declare-fun res!957904 () Bool)

(assert (=> b!1422368 (=> res!957904 e!804129)))

(assert (=> b!1422368 (= res!957904 (or (= (select (arr!46846 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46846 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46846 a!2831) index!585) (select (arr!46846 a!2831) j!81)) (= (select (store (arr!46846 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804126 () Bool)

(assert (=> b!1422368 e!804126))

(declare-fun res!957912 () Bool)

(assert (=> b!1422368 (=> (not res!957912) (not e!804126))))

(assert (=> b!1422368 (= res!957912 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48090 0))(
  ( (Unit!48091) )
))
(declare-fun lt!626621 () Unit!48090)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97065 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48090)

(assert (=> b!1422368 (= lt!626621 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1422369 () Bool)

(declare-fun res!957918 () Bool)

(assert (=> b!1422369 (=> res!957918 e!804131)))

(assert (=> b!1422369 (= res!957918 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!626620 (select (arr!46846 a!2831) j!81) a!2831 mask!2608) lt!626618)))))

(declare-fun b!1422370 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97065 (_ BitVec 32)) SeekEntryResult!11153)

(assert (=> b!1422370 (= e!804126 (= (seekEntryOrOpen!0 (select (arr!46846 a!2831) j!81) a!2831 mask!2608) (Found!11153 j!81)))))

(declare-fun b!1422371 () Bool)

(declare-fun res!957903 () Bool)

(assert (=> b!1422371 (=> (not res!957903) (not e!804128))))

(declare-fun lt!626617 () SeekEntryResult!11153)

(assert (=> b!1422371 (= res!957903 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626622 lt!626619 mask!2608) lt!626617))))

(declare-fun b!1422372 () Bool)

(declare-fun res!957908 () Bool)

(assert (=> b!1422372 (=> (not res!957908) (not e!804130))))

(declare-datatypes ((List!33536 0))(
  ( (Nil!33533) (Cons!33532 (h!34834 (_ BitVec 64)) (t!48237 List!33536)) )
))
(declare-fun arrayNoDuplicates!0 (array!97065 (_ BitVec 32) List!33536) Bool)

(assert (=> b!1422372 (= res!957908 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33533))))

(declare-fun b!1422373 () Bool)

(declare-fun res!957916 () Bool)

(assert (=> b!1422373 (=> (not res!957916) (not e!804130))))

(assert (=> b!1422373 (= res!957916 (validKeyInArray!0 (select (arr!46846 a!2831) j!81)))))

(declare-fun res!957906 () Bool)

(assert (=> start!122782 (=> (not res!957906) (not e!804130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122782 (= res!957906 (validMask!0 mask!2608))))

(assert (=> start!122782 e!804130))

(assert (=> start!122782 true))

(declare-fun array_inv!35791 (array!97065) Bool)

(assert (=> start!122782 (array_inv!35791 a!2831)))

(declare-fun b!1422374 () Bool)

(declare-fun res!957910 () Bool)

(assert (=> b!1422374 (=> (not res!957910) (not e!804130))))

(assert (=> b!1422374 (= res!957910 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47397 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47397 a!2831))))))

(declare-fun b!1422375 () Bool)

(assert (=> b!1422375 (= e!804127 e!804128)))

(declare-fun res!957909 () Bool)

(assert (=> b!1422375 (=> (not res!957909) (not e!804128))))

(assert (=> b!1422375 (= res!957909 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626622 mask!2608) lt!626622 lt!626619 mask!2608) lt!626617))))

(assert (=> b!1422375 (= lt!626617 (Intermediate!11153 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1422375 (= lt!626622 (select (store (arr!46846 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1422375 (= lt!626619 (array!97066 (store (arr!46846 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47397 a!2831)))))

(declare-fun b!1422376 () Bool)

(declare-fun res!957907 () Bool)

(assert (=> b!1422376 (=> (not res!957907) (not e!804128))))

(assert (=> b!1422376 (= res!957907 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46846 a!2831) j!81) a!2831 mask!2608) lt!626618))))

(assert (= (and start!122782 res!957906) b!1422361))

(assert (= (and b!1422361 res!957914) b!1422363))

(assert (= (and b!1422363 res!957911) b!1422373))

(assert (= (and b!1422373 res!957916) b!1422366))

(assert (= (and b!1422366 res!957917) b!1422372))

(assert (= (and b!1422372 res!957908) b!1422374))

(assert (= (and b!1422374 res!957910) b!1422367))

(assert (= (and b!1422367 res!957905) b!1422375))

(assert (= (and b!1422375 res!957909) b!1422376))

(assert (= (and b!1422376 res!957907) b!1422371))

(assert (= (and b!1422371 res!957903) b!1422365))

(assert (= (and b!1422365 res!957913) b!1422368))

(assert (= (and b!1422368 res!957912) b!1422370))

(assert (= (and b!1422368 (not res!957904)) b!1422364))

(assert (= (and b!1422364 (not res!957915)) b!1422369))

(assert (= (and b!1422369 (not res!957918)) b!1422362))

(declare-fun m!1312967 () Bool)

(assert (=> b!1422371 m!1312967))

(declare-fun m!1312969 () Bool)

(assert (=> b!1422366 m!1312969))

(declare-fun m!1312971 () Bool)

(assert (=> b!1422369 m!1312971))

(assert (=> b!1422369 m!1312971))

(declare-fun m!1312973 () Bool)

(assert (=> b!1422369 m!1312973))

(declare-fun m!1312975 () Bool)

(assert (=> b!1422362 m!1312975))

(assert (=> b!1422370 m!1312971))

(assert (=> b!1422370 m!1312971))

(declare-fun m!1312977 () Bool)

(assert (=> b!1422370 m!1312977))

(declare-fun m!1312979 () Bool)

(assert (=> b!1422372 m!1312979))

(declare-fun m!1312981 () Bool)

(assert (=> b!1422368 m!1312981))

(declare-fun m!1312983 () Bool)

(assert (=> b!1422368 m!1312983))

(declare-fun m!1312985 () Bool)

(assert (=> b!1422368 m!1312985))

(declare-fun m!1312987 () Bool)

(assert (=> b!1422368 m!1312987))

(assert (=> b!1422368 m!1312971))

(declare-fun m!1312989 () Bool)

(assert (=> b!1422368 m!1312989))

(assert (=> b!1422373 m!1312971))

(assert (=> b!1422373 m!1312971))

(declare-fun m!1312991 () Bool)

(assert (=> b!1422373 m!1312991))

(declare-fun m!1312993 () Bool)

(assert (=> b!1422375 m!1312993))

(assert (=> b!1422375 m!1312993))

(declare-fun m!1312995 () Bool)

(assert (=> b!1422375 m!1312995))

(assert (=> b!1422375 m!1312981))

(declare-fun m!1312997 () Bool)

(assert (=> b!1422375 m!1312997))

(declare-fun m!1312999 () Bool)

(assert (=> b!1422363 m!1312999))

(assert (=> b!1422363 m!1312999))

(declare-fun m!1313001 () Bool)

(assert (=> b!1422363 m!1313001))

(declare-fun m!1313003 () Bool)

(assert (=> b!1422364 m!1313003))

(assert (=> b!1422367 m!1312971))

(assert (=> b!1422367 m!1312971))

(declare-fun m!1313005 () Bool)

(assert (=> b!1422367 m!1313005))

(assert (=> b!1422367 m!1313005))

(assert (=> b!1422367 m!1312971))

(declare-fun m!1313007 () Bool)

(assert (=> b!1422367 m!1313007))

(assert (=> b!1422376 m!1312971))

(assert (=> b!1422376 m!1312971))

(declare-fun m!1313009 () Bool)

(assert (=> b!1422376 m!1313009))

(declare-fun m!1313011 () Bool)

(assert (=> start!122782 m!1313011))

(declare-fun m!1313013 () Bool)

(assert (=> start!122782 m!1313013))

(push 1)

