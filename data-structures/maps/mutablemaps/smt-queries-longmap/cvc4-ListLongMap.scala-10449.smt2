; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122900 () Bool)

(assert start!122900)

(declare-fun b!1424941 () Bool)

(declare-fun res!960483 () Bool)

(declare-fun e!805234 () Bool)

(assert (=> b!1424941 (=> (not res!960483) (not e!805234))))

(declare-datatypes ((array!97183 0))(
  ( (array!97184 (arr!46905 (Array (_ BitVec 32) (_ BitVec 64))) (size!47456 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97183)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97183 (_ BitVec 32)) Bool)

(assert (=> b!1424941 (= res!960483 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun res!960488 () Bool)

(assert (=> start!122900 (=> (not res!960488) (not e!805234))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122900 (= res!960488 (validMask!0 mask!2608))))

(assert (=> start!122900 e!805234))

(assert (=> start!122900 true))

(declare-fun array_inv!35850 (array!97183) Bool)

(assert (=> start!122900 (array_inv!35850 a!2831)))

(declare-fun b!1424942 () Bool)

(declare-fun res!960484 () Bool)

(assert (=> b!1424942 (=> (not res!960484) (not e!805234))))

(declare-datatypes ((List!33595 0))(
  ( (Nil!33592) (Cons!33591 (h!34893 (_ BitVec 64)) (t!48296 List!33595)) )
))
(declare-fun arrayNoDuplicates!0 (array!97183 (_ BitVec 32) List!33595) Bool)

(assert (=> b!1424942 (= res!960484 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33592))))

(declare-fun b!1424943 () Bool)

(declare-fun res!960489 () Bool)

(assert (=> b!1424943 (=> (not res!960489) (not e!805234))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1424943 (= res!960489 (validKeyInArray!0 (select (arr!46905 a!2831) i!982)))))

(declare-fun b!1424944 () Bool)

(declare-fun res!960486 () Bool)

(assert (=> b!1424944 (=> (not res!960486) (not e!805234))))

(declare-fun j!81 () (_ BitVec 32))

(assert (=> b!1424944 (= res!960486 (and (= (size!47456 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47456 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47456 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1424945 () Bool)

(assert (=> b!1424945 (= e!805234 false)))

(declare-datatypes ((SeekEntryResult!11206 0))(
  ( (MissingZero!11206 (index!47215 (_ BitVec 32))) (Found!11206 (index!47216 (_ BitVec 32))) (Intermediate!11206 (undefined!12018 Bool) (index!47217 (_ BitVec 32)) (x!128859 (_ BitVec 32))) (Undefined!11206) (MissingVacant!11206 (index!47218 (_ BitVec 32))) )
))
(declare-fun lt!627700 () SeekEntryResult!11206)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97183 (_ BitVec 32)) SeekEntryResult!11206)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1424945 (= lt!627700 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46905 a!2831) j!81) mask!2608) (select (arr!46905 a!2831) j!81) a!2831 mask!2608))))

(declare-fun b!1424946 () Bool)

(declare-fun res!960485 () Bool)

(assert (=> b!1424946 (=> (not res!960485) (not e!805234))))

(assert (=> b!1424946 (= res!960485 (validKeyInArray!0 (select (arr!46905 a!2831) j!81)))))

(declare-fun b!1424947 () Bool)

(declare-fun res!960487 () Bool)

(assert (=> b!1424947 (=> (not res!960487) (not e!805234))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1424947 (= res!960487 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47456 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47456 a!2831))))))

(assert (= (and start!122900 res!960488) b!1424944))

(assert (= (and b!1424944 res!960486) b!1424943))

(assert (= (and b!1424943 res!960489) b!1424946))

(assert (= (and b!1424946 res!960485) b!1424941))

(assert (= (and b!1424941 res!960483) b!1424942))

(assert (= (and b!1424942 res!960484) b!1424947))

(assert (= (and b!1424947 res!960487) b!1424945))

(declare-fun m!1315557 () Bool)

(assert (=> start!122900 m!1315557))

(declare-fun m!1315559 () Bool)

(assert (=> start!122900 m!1315559))

(declare-fun m!1315561 () Bool)

(assert (=> b!1424945 m!1315561))

(assert (=> b!1424945 m!1315561))

(declare-fun m!1315563 () Bool)

(assert (=> b!1424945 m!1315563))

(assert (=> b!1424945 m!1315563))

(assert (=> b!1424945 m!1315561))

(declare-fun m!1315565 () Bool)

(assert (=> b!1424945 m!1315565))

(declare-fun m!1315567 () Bool)

(assert (=> b!1424941 m!1315567))

(declare-fun m!1315569 () Bool)

(assert (=> b!1424943 m!1315569))

(assert (=> b!1424943 m!1315569))

(declare-fun m!1315571 () Bool)

(assert (=> b!1424943 m!1315571))

(assert (=> b!1424946 m!1315561))

(assert (=> b!1424946 m!1315561))

(declare-fun m!1315573 () Bool)

(assert (=> b!1424946 m!1315573))

(declare-fun m!1315575 () Bool)

(assert (=> b!1424942 m!1315575))

(push 1)

(assert (not start!122900))

(assert (not b!1424946))

(assert (not b!1424945))

(assert (not b!1424941))

(assert (not b!1424943))

(assert (not b!1424942))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

