; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122942 () Bool)

(assert start!122942)

(declare-fun b!1425443 () Bool)

(declare-fun res!960985 () Bool)

(declare-fun e!805361 () Bool)

(assert (=> b!1425443 (=> (not res!960985) (not e!805361))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!97225 0))(
  ( (array!97226 (arr!46926 (Array (_ BitVec 32) (_ BitVec 64))) (size!47477 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97225)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425443 (= res!960985 (and (= (size!47477 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47477 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47477 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425444 () Bool)

(declare-fun res!960990 () Bool)

(assert (=> b!1425444 (=> (not res!960990) (not e!805361))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425444 (= res!960990 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47477 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47477 a!2831))))))

(declare-fun b!1425445 () Bool)

(declare-fun res!960993 () Bool)

(assert (=> b!1425445 (=> (not res!960993) (not e!805361))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425445 (= res!960993 (validKeyInArray!0 (select (arr!46926 a!2831) j!81)))))

(declare-fun b!1425446 () Bool)

(declare-fun res!960987 () Bool)

(assert (=> b!1425446 (=> (not res!960987) (not e!805361))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11227 0))(
  ( (MissingZero!11227 (index!47299 (_ BitVec 32))) (Found!11227 (index!47300 (_ BitVec 32))) (Intermediate!11227 (undefined!12039 Bool) (index!47301 (_ BitVec 32)) (x!128936 (_ BitVec 32))) (Undefined!11227) (MissingVacant!11227 (index!47302 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97225 (_ BitVec 32)) SeekEntryResult!11227)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425446 (= res!960987 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46926 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46926 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!97226 (store (arr!46926 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47477 a!2831)) mask!2608) (Intermediate!11227 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1425448 () Bool)

(assert (=> b!1425448 (= e!805361 false)))

(declare-fun lt!627763 () SeekEntryResult!11227)

(assert (=> b!1425448 (= lt!627763 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46926 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1425449 () Bool)

(declare-fun res!960988 () Bool)

(assert (=> b!1425449 (=> (not res!960988) (not e!805361))))

(assert (=> b!1425449 (= res!960988 (validKeyInArray!0 (select (arr!46926 a!2831) i!982)))))

(declare-fun b!1425450 () Bool)

(declare-fun res!960989 () Bool)

(assert (=> b!1425450 (=> (not res!960989) (not e!805361))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97225 (_ BitVec 32)) Bool)

(assert (=> b!1425450 (= res!960989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425451 () Bool)

(declare-fun res!960986 () Bool)

(assert (=> b!1425451 (=> (not res!960986) (not e!805361))))

(assert (=> b!1425451 (= res!960986 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46926 a!2831) j!81) mask!2608) (select (arr!46926 a!2831) j!81) a!2831 mask!2608) (Intermediate!11227 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425447 () Bool)

(declare-fun res!960992 () Bool)

(assert (=> b!1425447 (=> (not res!960992) (not e!805361))))

(declare-datatypes ((List!33616 0))(
  ( (Nil!33613) (Cons!33612 (h!34914 (_ BitVec 64)) (t!48317 List!33616)) )
))
(declare-fun arrayNoDuplicates!0 (array!97225 (_ BitVec 32) List!33616) Bool)

(assert (=> b!1425447 (= res!960992 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33613))))

(declare-fun res!960991 () Bool)

(assert (=> start!122942 (=> (not res!960991) (not e!805361))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122942 (= res!960991 (validMask!0 mask!2608))))

(assert (=> start!122942 e!805361))

(assert (=> start!122942 true))

(declare-fun array_inv!35871 (array!97225) Bool)

(assert (=> start!122942 (array_inv!35871 a!2831)))

(assert (= (and start!122942 res!960991) b!1425443))

(assert (= (and b!1425443 res!960985) b!1425449))

(assert (= (and b!1425449 res!960988) b!1425445))

(assert (= (and b!1425445 res!960993) b!1425450))

(assert (= (and b!1425450 res!960989) b!1425447))

(assert (= (and b!1425447 res!960992) b!1425444))

(assert (= (and b!1425444 res!960990) b!1425451))

(assert (= (and b!1425451 res!960986) b!1425446))

(assert (= (and b!1425446 res!960987) b!1425448))

(declare-fun m!1316087 () Bool)

(assert (=> start!122942 m!1316087))

(declare-fun m!1316089 () Bool)

(assert (=> start!122942 m!1316089))

(declare-fun m!1316091 () Bool)

(assert (=> b!1425448 m!1316091))

(assert (=> b!1425448 m!1316091))

(declare-fun m!1316093 () Bool)

(assert (=> b!1425448 m!1316093))

(declare-fun m!1316095 () Bool)

(assert (=> b!1425450 m!1316095))

(declare-fun m!1316097 () Bool)

(assert (=> b!1425449 m!1316097))

(assert (=> b!1425449 m!1316097))

(declare-fun m!1316099 () Bool)

(assert (=> b!1425449 m!1316099))

(declare-fun m!1316101 () Bool)

(assert (=> b!1425447 m!1316101))

(assert (=> b!1425445 m!1316091))

(assert (=> b!1425445 m!1316091))

(declare-fun m!1316103 () Bool)

(assert (=> b!1425445 m!1316103))

(declare-fun m!1316105 () Bool)

(assert (=> b!1425446 m!1316105))

(declare-fun m!1316107 () Bool)

(assert (=> b!1425446 m!1316107))

(assert (=> b!1425446 m!1316107))

(declare-fun m!1316109 () Bool)

(assert (=> b!1425446 m!1316109))

(assert (=> b!1425446 m!1316109))

(assert (=> b!1425446 m!1316107))

(declare-fun m!1316111 () Bool)

(assert (=> b!1425446 m!1316111))

(assert (=> b!1425451 m!1316091))

(assert (=> b!1425451 m!1316091))

(declare-fun m!1316113 () Bool)

(assert (=> b!1425451 m!1316113))

(assert (=> b!1425451 m!1316113))

(assert (=> b!1425451 m!1316091))

(declare-fun m!1316115 () Bool)

(assert (=> b!1425451 m!1316115))

(push 1)

(assert (not b!1425446))

(assert (not b!1425445))

(assert (not b!1425450))

(assert (not b!1425448))

(assert (not start!122942))

(assert (not b!1425451))

(assert (not b!1425449))

(assert (not b!1425447))

(check-sat)

(pop 1)

(push 1)

(check-sat)

