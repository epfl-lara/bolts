; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122682 () Bool)

(assert start!122682)

(declare-fun b!1420503 () Bool)

(declare-fun e!803406 () Bool)

(declare-fun e!803408 () Bool)

(assert (=> b!1420503 (= e!803406 e!803408)))

(declare-fun res!956054 () Bool)

(assert (=> b!1420503 (=> (not res!956054) (not e!803408))))

(declare-datatypes ((SeekEntryResult!11103 0))(
  ( (MissingZero!11103 (index!46803 (_ BitVec 32))) (Found!11103 (index!46804 (_ BitVec 32))) (Intermediate!11103 (undefined!11915 Bool) (index!46805 (_ BitVec 32)) (x!128468 (_ BitVec 32))) (Undefined!11103) (MissingVacant!11103 (index!46806 (_ BitVec 32))) )
))
(declare-fun lt!625870 () SeekEntryResult!11103)

(declare-datatypes ((array!96965 0))(
  ( (array!96966 (arr!46796 (Array (_ BitVec 32) (_ BitVec 64))) (size!47347 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96965)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96965 (_ BitVec 32)) SeekEntryResult!11103)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420503 (= res!956054 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46796 a!2831) j!81) mask!2608) (select (arr!46796 a!2831) j!81) a!2831 mask!2608) lt!625870))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1420503 (= lt!625870 (Intermediate!11103 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420504 () Bool)

(declare-fun res!956055 () Bool)

(assert (=> b!1420504 (=> (not res!956055) (not e!803406))))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(assert (=> b!1420504 (= res!956055 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47347 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47347 a!2831))))))

(declare-fun b!1420505 () Bool)

(declare-fun res!956050 () Bool)

(assert (=> b!1420505 (=> (not res!956050) (not e!803406))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420505 (= res!956050 (validKeyInArray!0 (select (arr!46796 a!2831) j!81)))))

(declare-fun b!1420506 () Bool)

(declare-fun res!956051 () Bool)

(assert (=> b!1420506 (=> (not res!956051) (not e!803408))))

(assert (=> b!1420506 (= res!956051 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46796 a!2831) j!81) a!2831 mask!2608) lt!625870))))

(declare-fun b!1420507 () Bool)

(declare-fun res!956049 () Bool)

(assert (=> b!1420507 (=> (not res!956049) (not e!803406))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420507 (= res!956049 (and (= (size!47347 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47347 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47347 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420509 () Bool)

(declare-fun res!956047 () Bool)

(assert (=> b!1420509 (=> (not res!956047) (not e!803406))))

(assert (=> b!1420509 (= res!956047 (validKeyInArray!0 (select (arr!46796 a!2831) i!982)))))

(declare-fun b!1420510 () Bool)

(declare-fun res!956052 () Bool)

(assert (=> b!1420510 (=> (not res!956052) (not e!803408))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1420510 (= res!956052 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46796 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46796 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!96966 (store (arr!46796 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47347 a!2831)) mask!2608) (Intermediate!11103 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1420511 () Bool)

(declare-fun res!956046 () Bool)

(assert (=> b!1420511 (=> (not res!956046) (not e!803408))))

(assert (=> b!1420511 (= res!956046 (and (bvsge mask!2608 #b00000000000000000000000000000000) (bvslt index!585 (bvadd #b00000000000000000000000000000001 mask!2608))))))

(declare-fun res!956053 () Bool)

(assert (=> start!122682 (=> (not res!956053) (not e!803406))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122682 (= res!956053 (validMask!0 mask!2608))))

(assert (=> start!122682 e!803406))

(assert (=> start!122682 true))

(declare-fun array_inv!35741 (array!96965) Bool)

(assert (=> start!122682 (array_inv!35741 a!2831)))

(declare-fun b!1420508 () Bool)

(declare-fun res!956048 () Bool)

(assert (=> b!1420508 (=> (not res!956048) (not e!803406))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96965 (_ BitVec 32)) Bool)

(assert (=> b!1420508 (= res!956048 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420512 () Bool)

(assert (=> b!1420512 (= e!803408 (not (validKeyInArray!0 (select (store (arr!46796 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))))

(declare-fun b!1420513 () Bool)

(declare-fun res!956045 () Bool)

(assert (=> b!1420513 (=> (not res!956045) (not e!803406))))

(declare-datatypes ((List!33486 0))(
  ( (Nil!33483) (Cons!33482 (h!34784 (_ BitVec 64)) (t!48187 List!33486)) )
))
(declare-fun arrayNoDuplicates!0 (array!96965 (_ BitVec 32) List!33486) Bool)

(assert (=> b!1420513 (= res!956045 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33483))))

(assert (= (and start!122682 res!956053) b!1420507))

(assert (= (and b!1420507 res!956049) b!1420509))

(assert (= (and b!1420509 res!956047) b!1420505))

(assert (= (and b!1420505 res!956050) b!1420508))

(assert (= (and b!1420508 res!956048) b!1420513))

(assert (= (and b!1420513 res!956045) b!1420504))

(assert (= (and b!1420504 res!956055) b!1420503))

(assert (= (and b!1420503 res!956054) b!1420510))

(assert (= (and b!1420510 res!956052) b!1420506))

(assert (= (and b!1420506 res!956051) b!1420511))

(assert (= (and b!1420511 res!956046) b!1420512))

(declare-fun m!1311079 () Bool)

(assert (=> start!122682 m!1311079))

(declare-fun m!1311081 () Bool)

(assert (=> start!122682 m!1311081))

(declare-fun m!1311083 () Bool)

(assert (=> b!1420509 m!1311083))

(assert (=> b!1420509 m!1311083))

(declare-fun m!1311085 () Bool)

(assert (=> b!1420509 m!1311085))

(declare-fun m!1311087 () Bool)

(assert (=> b!1420505 m!1311087))

(assert (=> b!1420505 m!1311087))

(declare-fun m!1311089 () Bool)

(assert (=> b!1420505 m!1311089))

(declare-fun m!1311091 () Bool)

(assert (=> b!1420510 m!1311091))

(declare-fun m!1311093 () Bool)

(assert (=> b!1420510 m!1311093))

(assert (=> b!1420510 m!1311093))

(declare-fun m!1311095 () Bool)

(assert (=> b!1420510 m!1311095))

(assert (=> b!1420510 m!1311095))

(assert (=> b!1420510 m!1311093))

(declare-fun m!1311097 () Bool)

(assert (=> b!1420510 m!1311097))

(assert (=> b!1420506 m!1311087))

(assert (=> b!1420506 m!1311087))

(declare-fun m!1311099 () Bool)

(assert (=> b!1420506 m!1311099))

(assert (=> b!1420503 m!1311087))

(assert (=> b!1420503 m!1311087))

(declare-fun m!1311101 () Bool)

(assert (=> b!1420503 m!1311101))

(assert (=> b!1420503 m!1311101))

(assert (=> b!1420503 m!1311087))

(declare-fun m!1311103 () Bool)

(assert (=> b!1420503 m!1311103))

(assert (=> b!1420512 m!1311091))

(assert (=> b!1420512 m!1311093))

(assert (=> b!1420512 m!1311093))

(declare-fun m!1311105 () Bool)

(assert (=> b!1420512 m!1311105))

(declare-fun m!1311107 () Bool)

(assert (=> b!1420508 m!1311107))

(declare-fun m!1311109 () Bool)

(assert (=> b!1420513 m!1311109))

(check-sat (not b!1420506) (not b!1420503) (not b!1420510) (not b!1420512) (not b!1420508) (not b!1420505) (not b!1420513) (not start!122682) (not b!1420509))
(check-sat)
