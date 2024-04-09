; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122940 () Bool)

(assert start!122940)

(declare-fun b!1425416 () Bool)

(declare-fun res!960959 () Bool)

(declare-fun e!805355 () Bool)

(assert (=> b!1425416 (=> (not res!960959) (not e!805355))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((array!97223 0))(
  ( (array!97224 (arr!46925 (Array (_ BitVec 32) (_ BitVec 64))) (size!47476 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97223)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425416 (= res!960959 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47476 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47476 a!2831))))))

(declare-fun b!1425417 () Bool)

(declare-fun res!960958 () Bool)

(assert (=> b!1425417 (=> (not res!960958) (not e!805355))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425417 (= res!960958 (validKeyInArray!0 (select (arr!46925 a!2831) i!982)))))

(declare-fun b!1425418 () Bool)

(declare-fun res!960963 () Bool)

(assert (=> b!1425418 (=> (not res!960963) (not e!805355))))

(declare-datatypes ((List!33615 0))(
  ( (Nil!33612) (Cons!33611 (h!34913 (_ BitVec 64)) (t!48316 List!33615)) )
))
(declare-fun arrayNoDuplicates!0 (array!97223 (_ BitVec 32) List!33615) Bool)

(assert (=> b!1425418 (= res!960963 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33612))))

(declare-fun res!960962 () Bool)

(assert (=> start!122940 (=> (not res!960962) (not e!805355))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122940 (= res!960962 (validMask!0 mask!2608))))

(assert (=> start!122940 e!805355))

(assert (=> start!122940 true))

(declare-fun array_inv!35870 (array!97223) Bool)

(assert (=> start!122940 (array_inv!35870 a!2831)))

(declare-fun b!1425419 () Bool)

(assert (=> b!1425419 (= e!805355 false)))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11226 0))(
  ( (MissingZero!11226 (index!47295 (_ BitVec 32))) (Found!11226 (index!47296 (_ BitVec 32))) (Intermediate!11226 (undefined!12038 Bool) (index!47297 (_ BitVec 32)) (x!128935 (_ BitVec 32))) (Undefined!11226) (MissingVacant!11226 (index!47298 (_ BitVec 32))) )
))
(declare-fun lt!627760 () SeekEntryResult!11226)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97223 (_ BitVec 32)) SeekEntryResult!11226)

(assert (=> b!1425419 (= lt!627760 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46925 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1425420 () Bool)

(declare-fun res!960964 () Bool)

(assert (=> b!1425420 (=> (not res!960964) (not e!805355))))

(assert (=> b!1425420 (= res!960964 (validKeyInArray!0 (select (arr!46925 a!2831) j!81)))))

(declare-fun b!1425421 () Bool)

(declare-fun res!960965 () Bool)

(assert (=> b!1425421 (=> (not res!960965) (not e!805355))))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425421 (= res!960965 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46925 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46925 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!97224 (store (arr!46925 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47476 a!2831)) mask!2608) (Intermediate!11226 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1425422 () Bool)

(declare-fun res!960960 () Bool)

(assert (=> b!1425422 (=> (not res!960960) (not e!805355))))

(assert (=> b!1425422 (= res!960960 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46925 a!2831) j!81) mask!2608) (select (arr!46925 a!2831) j!81) a!2831 mask!2608) (Intermediate!11226 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425423 () Bool)

(declare-fun res!960966 () Bool)

(assert (=> b!1425423 (=> (not res!960966) (not e!805355))))

(assert (=> b!1425423 (= res!960966 (and (= (size!47476 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47476 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47476 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425424 () Bool)

(declare-fun res!960961 () Bool)

(assert (=> b!1425424 (=> (not res!960961) (not e!805355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97223 (_ BitVec 32)) Bool)

(assert (=> b!1425424 (= res!960961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(assert (= (and start!122940 res!960962) b!1425423))

(assert (= (and b!1425423 res!960966) b!1425417))

(assert (= (and b!1425417 res!960958) b!1425420))

(assert (= (and b!1425420 res!960964) b!1425424))

(assert (= (and b!1425424 res!960961) b!1425418))

(assert (= (and b!1425418 res!960963) b!1425416))

(assert (= (and b!1425416 res!960959) b!1425422))

(assert (= (and b!1425422 res!960960) b!1425421))

(assert (= (and b!1425421 res!960965) b!1425419))

(declare-fun m!1316057 () Bool)

(assert (=> b!1425422 m!1316057))

(assert (=> b!1425422 m!1316057))

(declare-fun m!1316059 () Bool)

(assert (=> b!1425422 m!1316059))

(assert (=> b!1425422 m!1316059))

(assert (=> b!1425422 m!1316057))

(declare-fun m!1316061 () Bool)

(assert (=> b!1425422 m!1316061))

(assert (=> b!1425420 m!1316057))

(assert (=> b!1425420 m!1316057))

(declare-fun m!1316063 () Bool)

(assert (=> b!1425420 m!1316063))

(declare-fun m!1316065 () Bool)

(assert (=> b!1425418 m!1316065))

(declare-fun m!1316067 () Bool)

(assert (=> b!1425421 m!1316067))

(declare-fun m!1316069 () Bool)

(assert (=> b!1425421 m!1316069))

(assert (=> b!1425421 m!1316069))

(declare-fun m!1316071 () Bool)

(assert (=> b!1425421 m!1316071))

(assert (=> b!1425421 m!1316071))

(assert (=> b!1425421 m!1316069))

(declare-fun m!1316073 () Bool)

(assert (=> b!1425421 m!1316073))

(declare-fun m!1316075 () Bool)

(assert (=> b!1425424 m!1316075))

(declare-fun m!1316077 () Bool)

(assert (=> b!1425417 m!1316077))

(assert (=> b!1425417 m!1316077))

(declare-fun m!1316079 () Bool)

(assert (=> b!1425417 m!1316079))

(declare-fun m!1316081 () Bool)

(assert (=> start!122940 m!1316081))

(declare-fun m!1316083 () Bool)

(assert (=> start!122940 m!1316083))

(assert (=> b!1425419 m!1316057))

(assert (=> b!1425419 m!1316057))

(declare-fun m!1316085 () Bool)

(assert (=> b!1425419 m!1316085))

(check-sat (not b!1425418) (not b!1425421) (not b!1425422) (not b!1425419) (not b!1425420) (not start!122940) (not b!1425424) (not b!1425417))
