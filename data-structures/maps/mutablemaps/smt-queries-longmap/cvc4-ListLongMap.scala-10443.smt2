; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122864 () Bool)

(assert start!122864)

(declare-fun b!1424329 () Bool)

(declare-fun e!804991 () Bool)

(declare-fun e!804989 () Bool)

(assert (=> b!1424329 (= e!804991 (not e!804989))))

(declare-fun res!959872 () Bool)

(assert (=> b!1424329 (=> res!959872 e!804989)))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97147 0))(
  ( (array!97148 (arr!46887 (Array (_ BitVec 32) (_ BitVec 64))) (size!47438 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97147)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424329 (= res!959872 (or (= (select (arr!46887 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46887 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46887 a!2831) index!585) (select (arr!46887 a!2831) j!81)) (= (select (store (arr!46887 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!804990 () Bool)

(assert (=> b!1424329 e!804990))

(declare-fun res!959879 () Bool)

(assert (=> b!1424329 (=> (not res!959879) (not e!804990))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97147 (_ BitVec 32)) Bool)

(assert (=> b!1424329 (= res!959879 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48172 0))(
  ( (Unit!48173) )
))
(declare-fun lt!627479 () Unit!48172)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97147 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48172)

(assert (=> b!1424329 (= lt!627479 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1424330 () Bool)

(declare-fun res!959873 () Bool)

(assert (=> b!1424330 (=> (not res!959873) (not e!804991))))

(declare-fun lt!627484 () (_ BitVec 64))

(declare-fun lt!627481 () array!97147)

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11194 0))(
  ( (MissingZero!11194 (index!47167 (_ BitVec 32))) (Found!11194 (index!47168 (_ BitVec 32))) (Intermediate!11194 (undefined!12006 Bool) (index!47169 (_ BitVec 32)) (x!128799 (_ BitVec 32))) (Undefined!11194) (MissingVacant!11194 (index!47170 (_ BitVec 32))) )
))
(declare-fun lt!627478 () SeekEntryResult!11194)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97147 (_ BitVec 32)) SeekEntryResult!11194)

(assert (=> b!1424330 (= res!959873 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627484 lt!627481 mask!2608) lt!627478))))

(declare-fun b!1424332 () Bool)

(declare-fun e!804988 () Bool)

(declare-fun e!804992 () Bool)

(assert (=> b!1424332 (= e!804988 e!804992)))

(declare-fun res!959882 () Bool)

(assert (=> b!1424332 (=> (not res!959882) (not e!804992))))

(declare-fun lt!627482 () SeekEntryResult!11194)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424332 (= res!959882 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46887 a!2831) j!81) mask!2608) (select (arr!46887 a!2831) j!81) a!2831 mask!2608) lt!627482))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1424332 (= lt!627482 (Intermediate!11194 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1424333 () Bool)

(declare-fun res!959874 () Bool)

(assert (=> b!1424333 (=> (not res!959874) (not e!804988))))

(assert (=> b!1424333 (= res!959874 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47438 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47438 a!2831))))))

(declare-fun b!1424334 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97147 (_ BitVec 32)) SeekEntryResult!11194)

(assert (=> b!1424334 (= e!804990 (= (seekEntryOrOpen!0 (select (arr!46887 a!2831) j!81) a!2831 mask!2608) (Found!11194 j!81)))))

(declare-fun b!1424335 () Bool)

(declare-fun res!959871 () Bool)

(assert (=> b!1424335 (=> (not res!959871) (not e!804988))))

(declare-datatypes ((List!33577 0))(
  ( (Nil!33574) (Cons!33573 (h!34875 (_ BitVec 64)) (t!48278 List!33577)) )
))
(declare-fun arrayNoDuplicates!0 (array!97147 (_ BitVec 32) List!33577) Bool)

(assert (=> b!1424335 (= res!959871 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33574))))

(declare-fun b!1424336 () Bool)

(declare-fun res!959876 () Bool)

(assert (=> b!1424336 (=> (not res!959876) (not e!804991))))

(assert (=> b!1424336 (= res!959876 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46887 a!2831) j!81) a!2831 mask!2608) lt!627482))))

(declare-fun b!1424337 () Bool)

(declare-fun res!959886 () Bool)

(assert (=> b!1424337 (=> (not res!959886) (not e!804988))))

(assert (=> b!1424337 (= res!959886 (and (= (size!47438 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47438 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47438 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424338 () Bool)

(declare-fun e!804986 () Bool)

(assert (=> b!1424338 (= e!804989 e!804986)))

(declare-fun res!959883 () Bool)

(assert (=> b!1424338 (=> res!959883 e!804986)))

(declare-fun lt!627483 () (_ BitVec 32))

(assert (=> b!1424338 (= res!959883 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627483 #b00000000000000000000000000000000) (bvsge lt!627483 (size!47438 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424338 (= lt!627483 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1424339 () Bool)

(assert (=> b!1424339 (= e!804986 true)))

(declare-fun lt!627480 () SeekEntryResult!11194)

(assert (=> b!1424339 (= lt!627480 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627483 lt!627484 lt!627481 mask!2608))))

(declare-fun b!1424340 () Bool)

(declare-fun res!959875 () Bool)

(assert (=> b!1424340 (=> res!959875 e!804986)))

(assert (=> b!1424340 (= res!959875 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627483 (select (arr!46887 a!2831) j!81) a!2831 mask!2608) lt!627482)))))

(declare-fun b!1424341 () Bool)

(declare-fun res!959880 () Bool)

(assert (=> b!1424341 (=> (not res!959880) (not e!804991))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424341 (= res!959880 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun b!1424342 () Bool)

(declare-fun res!959884 () Bool)

(assert (=> b!1424342 (=> (not res!959884) (not e!804988))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424342 (= res!959884 (validKeyInArray!0 (select (arr!46887 a!2831) j!81)))))

(declare-fun res!959878 () Bool)

(assert (=> start!122864 (=> (not res!959878) (not e!804988))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122864 (= res!959878 (validMask!0 mask!2608))))

(assert (=> start!122864 e!804988))

(assert (=> start!122864 true))

(declare-fun array_inv!35832 (array!97147) Bool)

(assert (=> start!122864 (array_inv!35832 a!2831)))

(declare-fun b!1424331 () Bool)

(assert (=> b!1424331 (= e!804992 e!804991)))

(declare-fun res!959881 () Bool)

(assert (=> b!1424331 (=> (not res!959881) (not e!804991))))

(assert (=> b!1424331 (= res!959881 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627484 mask!2608) lt!627484 lt!627481 mask!2608) lt!627478))))

(assert (=> b!1424331 (= lt!627478 (Intermediate!11194 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1424331 (= lt!627484 (select (store (arr!46887 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424331 (= lt!627481 (array!97148 (store (arr!46887 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47438 a!2831)))))

(declare-fun b!1424343 () Bool)

(declare-fun res!959877 () Bool)

(assert (=> b!1424343 (=> (not res!959877) (not e!804988))))

(assert (=> b!1424343 (= res!959877 (validKeyInArray!0 (select (arr!46887 a!2831) i!982)))))

(declare-fun b!1424344 () Bool)

(declare-fun res!959885 () Bool)

(assert (=> b!1424344 (=> (not res!959885) (not e!804988))))

(assert (=> b!1424344 (= res!959885 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122864 res!959878) b!1424337))

(assert (= (and b!1424337 res!959886) b!1424343))

(assert (= (and b!1424343 res!959877) b!1424342))

(assert (= (and b!1424342 res!959884) b!1424344))

(assert (= (and b!1424344 res!959885) b!1424335))

(assert (= (and b!1424335 res!959871) b!1424333))

(assert (= (and b!1424333 res!959874) b!1424332))

(assert (= (and b!1424332 res!959882) b!1424331))

(assert (= (and b!1424331 res!959881) b!1424336))

(assert (= (and b!1424336 res!959876) b!1424330))

(assert (= (and b!1424330 res!959873) b!1424341))

(assert (= (and b!1424341 res!959880) b!1424329))

(assert (= (and b!1424329 res!959879) b!1424334))

(assert (= (and b!1424329 (not res!959872)) b!1424338))

(assert (= (and b!1424338 (not res!959883)) b!1424340))

(assert (= (and b!1424340 (not res!959875)) b!1424339))

(declare-fun m!1314935 () Bool)

(assert (=> b!1424342 m!1314935))

(assert (=> b!1424342 m!1314935))

(declare-fun m!1314937 () Bool)

(assert (=> b!1424342 m!1314937))

(declare-fun m!1314939 () Bool)

(assert (=> b!1424344 m!1314939))

(declare-fun m!1314941 () Bool)

(assert (=> b!1424329 m!1314941))

(declare-fun m!1314943 () Bool)

(assert (=> b!1424329 m!1314943))

(declare-fun m!1314945 () Bool)

(assert (=> b!1424329 m!1314945))

(declare-fun m!1314947 () Bool)

(assert (=> b!1424329 m!1314947))

(assert (=> b!1424329 m!1314935))

(declare-fun m!1314949 () Bool)

(assert (=> b!1424329 m!1314949))

(declare-fun m!1314951 () Bool)

(assert (=> b!1424343 m!1314951))

(assert (=> b!1424343 m!1314951))

(declare-fun m!1314953 () Bool)

(assert (=> b!1424343 m!1314953))

(assert (=> b!1424336 m!1314935))

(assert (=> b!1424336 m!1314935))

(declare-fun m!1314955 () Bool)

(assert (=> b!1424336 m!1314955))

(declare-fun m!1314957 () Bool)

(assert (=> b!1424335 m!1314957))

(declare-fun m!1314959 () Bool)

(assert (=> b!1424330 m!1314959))

(declare-fun m!1314961 () Bool)

(assert (=> b!1424339 m!1314961))

(assert (=> b!1424340 m!1314935))

(assert (=> b!1424340 m!1314935))

(declare-fun m!1314963 () Bool)

(assert (=> b!1424340 m!1314963))

(declare-fun m!1314965 () Bool)

(assert (=> start!122864 m!1314965))

(declare-fun m!1314967 () Bool)

(assert (=> start!122864 m!1314967))

(declare-fun m!1314969 () Bool)

(assert (=> b!1424338 m!1314969))

(assert (=> b!1424332 m!1314935))

(assert (=> b!1424332 m!1314935))

(declare-fun m!1314971 () Bool)

(assert (=> b!1424332 m!1314971))

(assert (=> b!1424332 m!1314971))

(assert (=> b!1424332 m!1314935))

(declare-fun m!1314973 () Bool)

(assert (=> b!1424332 m!1314973))

(declare-fun m!1314975 () Bool)

(assert (=> b!1424331 m!1314975))

(assert (=> b!1424331 m!1314975))

(declare-fun m!1314977 () Bool)

(assert (=> b!1424331 m!1314977))

(assert (=> b!1424331 m!1314941))

(declare-fun m!1314979 () Bool)

(assert (=> b!1424331 m!1314979))

(assert (=> b!1424334 m!1314935))

(assert (=> b!1424334 m!1314935))

(declare-fun m!1314981 () Bool)

(assert (=> b!1424334 m!1314981))

(push 1)

