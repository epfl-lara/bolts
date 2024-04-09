; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122712 () Bool)

(assert start!122712)

(declare-fun b!1420957 () Bool)

(declare-fun res!956499 () Bool)

(declare-fun e!803583 () Bool)

(assert (=> b!1420957 (=> (not res!956499) (not e!803583))))

(declare-fun j!81 () (_ BitVec 32))

(declare-datatypes ((array!96995 0))(
  ( (array!96996 (arr!46811 (Array (_ BitVec 32) (_ BitVec 64))) (size!47362 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96995)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420957 (= res!956499 (and (= (size!47362 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47362 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47362 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420958 () Bool)

(declare-fun res!956503 () Bool)

(assert (=> b!1420958 (=> (not res!956503) (not e!803583))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420958 (= res!956503 (validKeyInArray!0 (select (arr!46811 a!2831) j!81)))))

(declare-fun b!1420959 () Bool)

(declare-fun e!803582 () Bool)

(assert (=> b!1420959 (= e!803582 false)))

(declare-datatypes ((SeekEntryResult!11118 0))(
  ( (MissingZero!11118 (index!46863 (_ BitVec 32))) (Found!11118 (index!46864 (_ BitVec 32))) (Intermediate!11118 (undefined!11930 Bool) (index!46865 (_ BitVec 32)) (x!128523 (_ BitVec 32))) (Undefined!11118) (MissingVacant!11118 (index!46866 (_ BitVec 32))) )
))
(declare-fun lt!626039 () SeekEntryResult!11118)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!626041 () array!96995)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun lt!626038 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96995 (_ BitVec 32)) SeekEntryResult!11118)

(assert (=> b!1420959 (= lt!626039 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626038 lt!626041 mask!2608))))

(declare-fun b!1420960 () Bool)

(declare-fun e!803584 () Bool)

(assert (=> b!1420960 (= e!803584 e!803582)))

(declare-fun res!956500 () Bool)

(assert (=> b!1420960 (=> (not res!956500) (not e!803582))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420960 (= res!956500 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626038 mask!2608) lt!626038 lt!626041 mask!2608) (Intermediate!11118 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1420960 (= lt!626038 (select (store (arr!46811 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1420960 (= lt!626041 (array!96996 (store (arr!46811 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47362 a!2831)))))

(declare-fun b!1420961 () Bool)

(declare-fun res!956506 () Bool)

(assert (=> b!1420961 (=> (not res!956506) (not e!803583))))

(assert (=> b!1420961 (= res!956506 (validKeyInArray!0 (select (arr!46811 a!2831) i!982)))))

(declare-fun res!956507 () Bool)

(assert (=> start!122712 (=> (not res!956507) (not e!803583))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122712 (= res!956507 (validMask!0 mask!2608))))

(assert (=> start!122712 e!803583))

(assert (=> start!122712 true))

(declare-fun array_inv!35756 (array!96995) Bool)

(assert (=> start!122712 (array_inv!35756 a!2831)))

(declare-fun b!1420962 () Bool)

(declare-fun res!956504 () Bool)

(assert (=> b!1420962 (=> (not res!956504) (not e!803583))))

(declare-datatypes ((List!33501 0))(
  ( (Nil!33498) (Cons!33497 (h!34799 (_ BitVec 64)) (t!48202 List!33501)) )
))
(declare-fun arrayNoDuplicates!0 (array!96995 (_ BitVec 32) List!33501) Bool)

(assert (=> b!1420962 (= res!956504 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33498))))

(declare-fun b!1420963 () Bool)

(declare-fun res!956508 () Bool)

(assert (=> b!1420963 (=> (not res!956508) (not e!803583))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1420963 (= res!956508 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47362 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47362 a!2831))))))

(declare-fun b!1420964 () Bool)

(assert (=> b!1420964 (= e!803583 e!803584)))

(declare-fun res!956505 () Bool)

(assert (=> b!1420964 (=> (not res!956505) (not e!803584))))

(declare-fun lt!626040 () SeekEntryResult!11118)

(assert (=> b!1420964 (= res!956505 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46811 a!2831) j!81) mask!2608) (select (arr!46811 a!2831) j!81) a!2831 mask!2608) lt!626040))))

(assert (=> b!1420964 (= lt!626040 (Intermediate!11118 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420965 () Bool)

(declare-fun res!956502 () Bool)

(assert (=> b!1420965 (=> (not res!956502) (not e!803583))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96995 (_ BitVec 32)) Bool)

(assert (=> b!1420965 (= res!956502 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420966 () Bool)

(declare-fun res!956501 () Bool)

(assert (=> b!1420966 (=> (not res!956501) (not e!803582))))

(assert (=> b!1420966 (= res!956501 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46811 a!2831) j!81) a!2831 mask!2608) lt!626040))))

(assert (= (and start!122712 res!956507) b!1420957))

(assert (= (and b!1420957 res!956499) b!1420961))

(assert (= (and b!1420961 res!956506) b!1420958))

(assert (= (and b!1420958 res!956503) b!1420965))

(assert (= (and b!1420965 res!956502) b!1420962))

(assert (= (and b!1420962 res!956504) b!1420963))

(assert (= (and b!1420963 res!956508) b!1420964))

(assert (= (and b!1420964 res!956505) b!1420960))

(assert (= (and b!1420960 res!956500) b!1420966))

(assert (= (and b!1420966 res!956501) b!1420959))

(declare-fun m!1311559 () Bool)

(assert (=> start!122712 m!1311559))

(declare-fun m!1311561 () Bool)

(assert (=> start!122712 m!1311561))

(declare-fun m!1311563 () Bool)

(assert (=> b!1420966 m!1311563))

(assert (=> b!1420966 m!1311563))

(declare-fun m!1311565 () Bool)

(assert (=> b!1420966 m!1311565))

(declare-fun m!1311567 () Bool)

(assert (=> b!1420965 m!1311567))

(assert (=> b!1420958 m!1311563))

(assert (=> b!1420958 m!1311563))

(declare-fun m!1311569 () Bool)

(assert (=> b!1420958 m!1311569))

(declare-fun m!1311571 () Bool)

(assert (=> b!1420962 m!1311571))

(declare-fun m!1311573 () Bool)

(assert (=> b!1420959 m!1311573))

(declare-fun m!1311575 () Bool)

(assert (=> b!1420961 m!1311575))

(assert (=> b!1420961 m!1311575))

(declare-fun m!1311577 () Bool)

(assert (=> b!1420961 m!1311577))

(assert (=> b!1420964 m!1311563))

(assert (=> b!1420964 m!1311563))

(declare-fun m!1311579 () Bool)

(assert (=> b!1420964 m!1311579))

(assert (=> b!1420964 m!1311579))

(assert (=> b!1420964 m!1311563))

(declare-fun m!1311581 () Bool)

(assert (=> b!1420964 m!1311581))

(declare-fun m!1311583 () Bool)

(assert (=> b!1420960 m!1311583))

(assert (=> b!1420960 m!1311583))

(declare-fun m!1311585 () Bool)

(assert (=> b!1420960 m!1311585))

(declare-fun m!1311587 () Bool)

(assert (=> b!1420960 m!1311587))

(declare-fun m!1311589 () Bool)

(assert (=> b!1420960 m!1311589))

(check-sat (not b!1420964) (not b!1420961) (not b!1420966) (not start!122712) (not b!1420958) (not b!1420965) (not b!1420960) (not b!1420959) (not b!1420962))
(check-sat)
