; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122866 () Bool)

(assert start!122866)

(declare-fun b!1424377 () Bool)

(declare-fun res!959924 () Bool)

(declare-fun e!805010 () Bool)

(assert (=> b!1424377 (=> res!959924 e!805010)))

(declare-datatypes ((SeekEntryResult!11195 0))(
  ( (MissingZero!11195 (index!47171 (_ BitVec 32))) (Found!11195 (index!47172 (_ BitVec 32))) (Intermediate!11195 (undefined!12007 Bool) (index!47173 (_ BitVec 32)) (x!128808 (_ BitVec 32))) (Undefined!11195) (MissingVacant!11195 (index!47174 (_ BitVec 32))) )
))
(declare-fun lt!627505 () SeekEntryResult!11195)

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97149 0))(
  ( (array!97150 (arr!46888 (Array (_ BitVec 32) (_ BitVec 64))) (size!47439 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97149)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!627500 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97149 (_ BitVec 32)) SeekEntryResult!11195)

(assert (=> b!1424377 (= res!959924 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627500 (select (arr!46888 a!2831) j!81) a!2831 mask!2608) lt!627505)))))

(declare-fun b!1424378 () Bool)

(declare-fun res!959927 () Bool)

(declare-fun e!805007 () Bool)

(assert (=> b!1424378 (=> (not res!959927) (not e!805007))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97149 (_ BitVec 32)) Bool)

(assert (=> b!1424378 (= res!959927 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1424380 () Bool)

(assert (=> b!1424380 (= e!805010 true)))

(declare-fun lt!627499 () (_ BitVec 64))

(declare-fun lt!627502 () SeekEntryResult!11195)

(declare-fun lt!627503 () array!97149)

(assert (=> b!1424380 (= lt!627502 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!605) lt!627500 lt!627499 lt!627503 mask!2608))))

(declare-fun b!1424381 () Bool)

(declare-fun res!959921 () Bool)

(declare-fun e!805008 () Bool)

(assert (=> b!1424381 (=> (not res!959921) (not e!805008))))

(declare-fun lt!627501 () SeekEntryResult!11195)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1424381 (= res!959921 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627499 lt!627503 mask!2608) lt!627501))))

(declare-fun b!1424382 () Bool)

(declare-fun e!805013 () Bool)

(assert (=> b!1424382 (= e!805013 e!805010)))

(declare-fun res!959926 () Bool)

(assert (=> b!1424382 (=> res!959926 e!805010)))

(assert (=> b!1424382 (= res!959926 (or (bvslt (bvadd #b00000000000000000000000000000001 x!605) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!605) #b01111111111111111111111111111110) (bvslt lt!627500 #b00000000000000000000000000000000) (bvsge lt!627500 (size!47439 a!2831))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424382 (= lt!627500 (nextIndex!0 index!585 x!605 mask!2608))))

(declare-fun b!1424383 () Bool)

(declare-fun res!959919 () Bool)

(assert (=> b!1424383 (=> (not res!959919) (not e!805008))))

(assert (=> b!1424383 (= res!959919 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46888 a!2831) j!81) a!2831 mask!2608) lt!627505))))

(declare-fun b!1424384 () Bool)

(declare-fun e!805011 () Bool)

(assert (=> b!1424384 (= e!805007 e!805011)))

(declare-fun res!959934 () Bool)

(assert (=> b!1424384 (=> (not res!959934) (not e!805011))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424384 (= res!959934 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46888 a!2831) j!81) mask!2608) (select (arr!46888 a!2831) j!81) a!2831 mask!2608) lt!627505))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1424384 (= lt!627505 (Intermediate!11195 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1424385 () Bool)

(declare-fun res!959932 () Bool)

(assert (=> b!1424385 (=> (not res!959932) (not e!805007))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1424385 (= res!959932 (and (= (size!47439 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47439 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47439 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424386 () Bool)

(declare-fun res!959923 () Bool)

(assert (=> b!1424386 (=> (not res!959923) (not e!805007))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424386 (= res!959923 (validKeyInArray!0 (select (arr!46888 a!2831) j!81)))))

(declare-fun b!1424387 () Bool)

(declare-fun e!805009 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97149 (_ BitVec 32)) SeekEntryResult!11195)

(assert (=> b!1424387 (= e!805009 (= (seekEntryOrOpen!0 (select (arr!46888 a!2831) j!81) a!2831 mask!2608) (Found!11195 j!81)))))

(declare-fun b!1424388 () Bool)

(declare-fun res!959933 () Bool)

(assert (=> b!1424388 (=> (not res!959933) (not e!805007))))

(assert (=> b!1424388 (= res!959933 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47439 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47439 a!2831))))))

(declare-fun b!1424379 () Bool)

(declare-fun res!959922 () Bool)

(assert (=> b!1424379 (=> (not res!959922) (not e!805008))))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1424379 (= res!959922 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun res!959930 () Bool)

(assert (=> start!122866 (=> (not res!959930) (not e!805007))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122866 (= res!959930 (validMask!0 mask!2608))))

(assert (=> start!122866 e!805007))

(assert (=> start!122866 true))

(declare-fun array_inv!35833 (array!97149) Bool)

(assert (=> start!122866 (array_inv!35833 a!2831)))

(declare-fun b!1424389 () Bool)

(declare-fun res!959928 () Bool)

(assert (=> b!1424389 (=> (not res!959928) (not e!805007))))

(assert (=> b!1424389 (= res!959928 (validKeyInArray!0 (select (arr!46888 a!2831) i!982)))))

(declare-fun b!1424390 () Bool)

(assert (=> b!1424390 (= e!805011 e!805008)))

(declare-fun res!959931 () Bool)

(assert (=> b!1424390 (=> (not res!959931) (not e!805008))))

(assert (=> b!1424390 (= res!959931 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627499 mask!2608) lt!627499 lt!627503 mask!2608) lt!627501))))

(assert (=> b!1424390 (= lt!627501 (Intermediate!11195 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(assert (=> b!1424390 (= lt!627499 (select (store (arr!46888 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1424390 (= lt!627503 (array!97150 (store (arr!46888 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47439 a!2831)))))

(declare-fun b!1424391 () Bool)

(declare-fun res!959920 () Bool)

(assert (=> b!1424391 (=> (not res!959920) (not e!805007))))

(declare-datatypes ((List!33578 0))(
  ( (Nil!33575) (Cons!33574 (h!34876 (_ BitVec 64)) (t!48279 List!33578)) )
))
(declare-fun arrayNoDuplicates!0 (array!97149 (_ BitVec 32) List!33578) Bool)

(assert (=> b!1424391 (= res!959920 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33575))))

(declare-fun b!1424392 () Bool)

(assert (=> b!1424392 (= e!805008 (not e!805013))))

(declare-fun res!959929 () Bool)

(assert (=> b!1424392 (=> res!959929 e!805013)))

(assert (=> b!1424392 (= res!959929 (or (= (select (arr!46888 a!2831) index!585) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46888 a!2831) index!585) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!46888 a!2831) index!585) (select (arr!46888 a!2831) j!81)) (= (select (store (arr!46888 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) index!585) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1424392 e!805009))

(declare-fun res!959925 () Bool)

(assert (=> b!1424392 (=> (not res!959925) (not e!805009))))

(assert (=> b!1424392 (= res!959925 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608))))

(declare-datatypes ((Unit!48174 0))(
  ( (Unit!48175) )
))
(declare-fun lt!627504 () Unit!48174)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97149 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48174)

(assert (=> b!1424392 (= lt!627504 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(assert (= (and start!122866 res!959930) b!1424385))

(assert (= (and b!1424385 res!959932) b!1424389))

(assert (= (and b!1424389 res!959928) b!1424386))

(assert (= (and b!1424386 res!959923) b!1424378))

(assert (= (and b!1424378 res!959927) b!1424391))

(assert (= (and b!1424391 res!959920) b!1424388))

(assert (= (and b!1424388 res!959933) b!1424384))

(assert (= (and b!1424384 res!959934) b!1424390))

(assert (= (and b!1424390 res!959931) b!1424383))

(assert (= (and b!1424383 res!959919) b!1424381))

(assert (= (and b!1424381 res!959921) b!1424379))

(assert (= (and b!1424379 res!959922) b!1424392))

(assert (= (and b!1424392 res!959925) b!1424387))

(assert (= (and b!1424392 (not res!959929)) b!1424382))

(assert (= (and b!1424382 (not res!959926)) b!1424377))

(assert (= (and b!1424377 (not res!959924)) b!1424380))

(declare-fun m!1314983 () Bool)

(assert (=> b!1424386 m!1314983))

(assert (=> b!1424386 m!1314983))

(declare-fun m!1314985 () Bool)

(assert (=> b!1424386 m!1314985))

(declare-fun m!1314987 () Bool)

(assert (=> b!1424378 m!1314987))

(declare-fun m!1314989 () Bool)

(assert (=> b!1424381 m!1314989))

(assert (=> b!1424387 m!1314983))

(assert (=> b!1424387 m!1314983))

(declare-fun m!1314991 () Bool)

(assert (=> b!1424387 m!1314991))

(declare-fun m!1314993 () Bool)

(assert (=> b!1424382 m!1314993))

(declare-fun m!1314995 () Bool)

(assert (=> b!1424390 m!1314995))

(assert (=> b!1424390 m!1314995))

(declare-fun m!1314997 () Bool)

(assert (=> b!1424390 m!1314997))

(declare-fun m!1314999 () Bool)

(assert (=> b!1424390 m!1314999))

(declare-fun m!1315001 () Bool)

(assert (=> b!1424390 m!1315001))

(assert (=> b!1424383 m!1314983))

(assert (=> b!1424383 m!1314983))

(declare-fun m!1315003 () Bool)

(assert (=> b!1424383 m!1315003))

(declare-fun m!1315005 () Bool)

(assert (=> b!1424380 m!1315005))

(declare-fun m!1315007 () Bool)

(assert (=> start!122866 m!1315007))

(declare-fun m!1315009 () Bool)

(assert (=> start!122866 m!1315009))

(assert (=> b!1424384 m!1314983))

(assert (=> b!1424384 m!1314983))

(declare-fun m!1315011 () Bool)

(assert (=> b!1424384 m!1315011))

(assert (=> b!1424384 m!1315011))

(assert (=> b!1424384 m!1314983))

(declare-fun m!1315013 () Bool)

(assert (=> b!1424384 m!1315013))

(declare-fun m!1315015 () Bool)

(assert (=> b!1424389 m!1315015))

(assert (=> b!1424389 m!1315015))

(declare-fun m!1315017 () Bool)

(assert (=> b!1424389 m!1315017))

(assert (=> b!1424377 m!1314983))

(assert (=> b!1424377 m!1314983))

(declare-fun m!1315019 () Bool)

(assert (=> b!1424377 m!1315019))

(declare-fun m!1315021 () Bool)

(assert (=> b!1424391 m!1315021))

(assert (=> b!1424392 m!1314999))

(declare-fun m!1315023 () Bool)

(assert (=> b!1424392 m!1315023))

(declare-fun m!1315025 () Bool)

(assert (=> b!1424392 m!1315025))

(declare-fun m!1315027 () Bool)

(assert (=> b!1424392 m!1315027))

(assert (=> b!1424392 m!1314983))

(declare-fun m!1315029 () Bool)

(assert (=> b!1424392 m!1315029))

(push 1)

