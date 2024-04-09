; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122946 () Bool)

(assert start!122946)

(declare-fun res!961047 () Bool)

(declare-fun e!805373 () Bool)

(assert (=> start!122946 (=> (not res!961047) (not e!805373))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122946 (= res!961047 (validMask!0 mask!2608))))

(assert (=> start!122946 e!805373))

(assert (=> start!122946 true))

(declare-datatypes ((array!97229 0))(
  ( (array!97230 (arr!46928 (Array (_ BitVec 32) (_ BitVec 64))) (size!47479 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97229)

(declare-fun array_inv!35873 (array!97229) Bool)

(assert (=> start!122946 (array_inv!35873 a!2831)))

(declare-fun b!1425497 () Bool)

(assert (=> b!1425497 (= e!805373 false)))

(declare-datatypes ((SeekEntryResult!11229 0))(
  ( (MissingZero!11229 (index!47307 (_ BitVec 32))) (Found!11229 (index!47308 (_ BitVec 32))) (Intermediate!11229 (undefined!12041 Bool) (index!47309 (_ BitVec 32)) (x!128946 (_ BitVec 32))) (Undefined!11229) (MissingVacant!11229 (index!47310 (_ BitVec 32))) )
))
(declare-fun lt!627769 () SeekEntryResult!11229)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97229 (_ BitVec 32)) SeekEntryResult!11229)

(assert (=> b!1425497 (= lt!627769 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46928 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1425498 () Bool)

(declare-fun res!961043 () Bool)

(assert (=> b!1425498 (=> (not res!961043) (not e!805373))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425498 (= res!961043 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46928 a!2831) j!81) mask!2608) (select (arr!46928 a!2831) j!81) a!2831 mask!2608) (Intermediate!11229 false intermediateBeforeIndex!13 intermediateBeforeX!13)))))

(declare-fun b!1425499 () Bool)

(declare-fun res!961044 () Bool)

(assert (=> b!1425499 (=> (not res!961044) (not e!805373))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97229 (_ BitVec 32)) Bool)

(assert (=> b!1425499 (= res!961044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425500 () Bool)

(declare-fun res!961039 () Bool)

(assert (=> b!1425500 (=> (not res!961039) (not e!805373))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425500 (= res!961039 (validKeyInArray!0 (select (arr!46928 a!2831) i!982)))))

(declare-fun b!1425501 () Bool)

(declare-fun res!961046 () Bool)

(assert (=> b!1425501 (=> (not res!961046) (not e!805373))))

(assert (=> b!1425501 (= res!961046 (and (= (size!47479 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47479 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47479 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425502 () Bool)

(declare-fun res!961041 () Bool)

(assert (=> b!1425502 (=> (not res!961041) (not e!805373))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1425502 (= res!961041 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!46928 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) mask!2608) (select (store (arr!46928 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81) (array!97230 (store (arr!46928 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47479 a!2831)) mask!2608) (Intermediate!11229 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(declare-fun b!1425503 () Bool)

(declare-fun res!961045 () Bool)

(assert (=> b!1425503 (=> (not res!961045) (not e!805373))))

(declare-datatypes ((List!33618 0))(
  ( (Nil!33615) (Cons!33614 (h!34916 (_ BitVec 64)) (t!48319 List!33618)) )
))
(declare-fun arrayNoDuplicates!0 (array!97229 (_ BitVec 32) List!33618) Bool)

(assert (=> b!1425503 (= res!961045 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33615))))

(declare-fun b!1425504 () Bool)

(declare-fun res!961042 () Bool)

(assert (=> b!1425504 (=> (not res!961042) (not e!805373))))

(assert (=> b!1425504 (= res!961042 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47479 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47479 a!2831))))))

(declare-fun b!1425505 () Bool)

(declare-fun res!961040 () Bool)

(assert (=> b!1425505 (=> (not res!961040) (not e!805373))))

(assert (=> b!1425505 (= res!961040 (validKeyInArray!0 (select (arr!46928 a!2831) j!81)))))

(assert (= (and start!122946 res!961047) b!1425501))

(assert (= (and b!1425501 res!961046) b!1425500))

(assert (= (and b!1425500 res!961039) b!1425505))

(assert (= (and b!1425505 res!961040) b!1425499))

(assert (= (and b!1425499 res!961044) b!1425503))

(assert (= (and b!1425503 res!961045) b!1425504))

(assert (= (and b!1425504 res!961042) b!1425498))

(assert (= (and b!1425498 res!961043) b!1425502))

(assert (= (and b!1425502 res!961041) b!1425497))

(declare-fun m!1316147 () Bool)

(assert (=> b!1425499 m!1316147))

(declare-fun m!1316149 () Bool)

(assert (=> b!1425502 m!1316149))

(declare-fun m!1316151 () Bool)

(assert (=> b!1425502 m!1316151))

(assert (=> b!1425502 m!1316151))

(declare-fun m!1316153 () Bool)

(assert (=> b!1425502 m!1316153))

(assert (=> b!1425502 m!1316153))

(assert (=> b!1425502 m!1316151))

(declare-fun m!1316155 () Bool)

(assert (=> b!1425502 m!1316155))

(declare-fun m!1316157 () Bool)

(assert (=> b!1425497 m!1316157))

(assert (=> b!1425497 m!1316157))

(declare-fun m!1316159 () Bool)

(assert (=> b!1425497 m!1316159))

(declare-fun m!1316161 () Bool)

(assert (=> start!122946 m!1316161))

(declare-fun m!1316163 () Bool)

(assert (=> start!122946 m!1316163))

(declare-fun m!1316165 () Bool)

(assert (=> b!1425500 m!1316165))

(assert (=> b!1425500 m!1316165))

(declare-fun m!1316167 () Bool)

(assert (=> b!1425500 m!1316167))

(declare-fun m!1316169 () Bool)

(assert (=> b!1425503 m!1316169))

(assert (=> b!1425505 m!1316157))

(assert (=> b!1425505 m!1316157))

(declare-fun m!1316171 () Bool)

(assert (=> b!1425505 m!1316171))

(assert (=> b!1425498 m!1316157))

(assert (=> b!1425498 m!1316157))

(declare-fun m!1316173 () Bool)

(assert (=> b!1425498 m!1316173))

(assert (=> b!1425498 m!1316173))

(assert (=> b!1425498 m!1316157))

(declare-fun m!1316175 () Bool)

(assert (=> b!1425498 m!1316175))

(check-sat (not b!1425505) (not start!122946) (not b!1425502) (not b!1425499) (not b!1425503) (not b!1425498) (not b!1425500) (not b!1425497))
