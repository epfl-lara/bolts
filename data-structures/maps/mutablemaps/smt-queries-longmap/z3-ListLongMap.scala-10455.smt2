; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122934 () Bool)

(assert start!122934)

(declare-fun b!1425335 () Bool)

(declare-fun e!805337 () Bool)

(assert (=> b!1425335 (= e!805337 false)))

(declare-datatypes ((SeekEntryResult!11223 0))(
  ( (MissingZero!11223 (index!47283 (_ BitVec 32))) (Found!11223 (index!47284 (_ BitVec 32))) (Intermediate!11223 (undefined!12035 Bool) (index!47285 (_ BitVec 32)) (x!128924 (_ BitVec 32))) (Undefined!11223) (MissingVacant!11223 (index!47286 (_ BitVec 32))) )
))
(declare-fun lt!627751 () SeekEntryResult!11223)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97217 0))(
  ( (array!97218 (arr!46922 (Array (_ BitVec 32) (_ BitVec 64))) (size!47473 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97217)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97217 (_ BitVec 32)) SeekEntryResult!11223)

(assert (=> b!1425335 (= lt!627751 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46922 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1425336 () Bool)

(declare-fun res!960885 () Bool)

(assert (=> b!1425336 (=> (not res!960885) (not e!805337))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97217 (_ BitVec 32)) Bool)

(assert (=> b!1425336 (= res!960885 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!960883 () Bool)

(assert (=> start!122934 (=> (not res!960883) (not e!805337))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122934 (= res!960883 (validMask!0 mask!2608))))

(assert (=> start!122934 e!805337))

(assert (=> start!122934 true))

(declare-fun array_inv!35867 (array!97217) Bool)

(assert (=> start!122934 (array_inv!35867 a!2831)))

(declare-fun b!1425337 () Bool)

(declare-fun res!960877 () Bool)

(assert (=> b!1425337 (=> (not res!960877) (not e!805337))))

(declare-datatypes ((List!33612 0))(
  ( (Nil!33609) (Cons!33608 (h!34910 (_ BitVec 64)) (t!48313 List!33612)) )
))
(declare-fun arrayNoDuplicates!0 (array!97217 (_ BitVec 32) List!33612) Bool)

(assert (=> b!1425337 (= res!960877 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33609))))

(declare-fun b!1425338 () Bool)

(declare-fun res!960882 () Bool)

(assert (=> b!1425338 (=> (not res!960882) (not e!805337))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425338 (= res!960882 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46922 a!2831) j!81) mask!2608) (select (arr!46922 a!2831) j!81) a!2831 mask!2608) (Intermediate!11223 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425339 () Bool)

(declare-fun res!960881 () Bool)

(assert (=> b!1425339 (=> (not res!960881) (not e!805337))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425339 (= res!960881 (validKeyInArray!0 (select (arr!46922 a!2831) i!982)))))

(declare-fun b!1425340 () Bool)

(declare-fun res!960884 () Bool)

(assert (=> b!1425340 (=> (not res!960884) (not e!805337))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1425340 (= res!960884 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46922 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46922 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!97218 (store (arr!46922 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47473 a!2831)) mask!2608) (Intermediate!11223 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1425341 () Bool)

(declare-fun res!960879 () Bool)

(assert (=> b!1425341 (=> (not res!960879) (not e!805337))))

(assert (=> b!1425341 (= res!960879 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47473 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47473 a!2831))))))

(declare-fun b!1425342 () Bool)

(declare-fun res!960878 () Bool)

(assert (=> b!1425342 (=> (not res!960878) (not e!805337))))

(assert (=> b!1425342 (= res!960878 (validKeyInArray!0 (select (arr!46922 a!2831) j!81)))))

(declare-fun b!1425343 () Bool)

(declare-fun res!960880 () Bool)

(assert (=> b!1425343 (=> (not res!960880) (not e!805337))))

(assert (=> b!1425343 (= res!960880 (and (= (size!47473 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47473 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47473 a!2831)) (not (= i!982 j!81))))))

(assert (= (and start!122934 res!960883) b!1425343))

(assert (= (and b!1425343 res!960880) b!1425339))

(assert (= (and b!1425339 res!960881) b!1425342))

(assert (= (and b!1425342 res!960878) b!1425336))

(assert (= (and b!1425336 res!960885) b!1425337))

(assert (= (and b!1425337 res!960877) b!1425341))

(assert (= (and b!1425341 res!960879) b!1425338))

(assert (= (and b!1425338 res!960882) b!1425340))

(assert (= (and b!1425340 res!960884) b!1425335))

(declare-fun m!1315967 () Bool)

(assert (=> start!122934 m!1315967))

(declare-fun m!1315969 () Bool)

(assert (=> start!122934 m!1315969))

(declare-fun m!1315971 () Bool)

(assert (=> b!1425335 m!1315971))

(assert (=> b!1425335 m!1315971))

(declare-fun m!1315973 () Bool)

(assert (=> b!1425335 m!1315973))

(declare-fun m!1315975 () Bool)

(assert (=> b!1425336 m!1315975))

(assert (=> b!1425338 m!1315971))

(assert (=> b!1425338 m!1315971))

(declare-fun m!1315977 () Bool)

(assert (=> b!1425338 m!1315977))

(assert (=> b!1425338 m!1315977))

(assert (=> b!1425338 m!1315971))

(declare-fun m!1315979 () Bool)

(assert (=> b!1425338 m!1315979))

(declare-fun m!1315981 () Bool)

(assert (=> b!1425340 m!1315981))

(declare-fun m!1315983 () Bool)

(assert (=> b!1425340 m!1315983))

(assert (=> b!1425340 m!1315983))

(declare-fun m!1315985 () Bool)

(assert (=> b!1425340 m!1315985))

(assert (=> b!1425340 m!1315985))

(assert (=> b!1425340 m!1315983))

(declare-fun m!1315987 () Bool)

(assert (=> b!1425340 m!1315987))

(declare-fun m!1315989 () Bool)

(assert (=> b!1425337 m!1315989))

(assert (=> b!1425342 m!1315971))

(assert (=> b!1425342 m!1315971))

(declare-fun m!1315991 () Bool)

(assert (=> b!1425342 m!1315991))

(declare-fun m!1315993 () Bool)

(assert (=> b!1425339 m!1315993))

(assert (=> b!1425339 m!1315993))

(declare-fun m!1315995 () Bool)

(assert (=> b!1425339 m!1315995))

(check-sat (not b!1425337) (not b!1425342) (not start!122934) (not b!1425338) (not b!1425336) (not b!1425340) (not b!1425335) (not b!1425339))
