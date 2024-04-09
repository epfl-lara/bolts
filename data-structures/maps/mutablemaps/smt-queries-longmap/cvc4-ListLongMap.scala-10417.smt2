; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122708 () Bool)

(assert start!122708)

(declare-fun b!1420897 () Bool)

(declare-fun e!803560 () Bool)

(assert (=> b!1420897 (= e!803560 false)))

(declare-fun lt!626017 () (_ BitVec 64))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((array!96991 0))(
  ( (array!96992 (arr!46809 (Array (_ BitVec 32) (_ BitVec 64))) (size!47360 (_ BitVec 32))) )
))
(declare-fun lt!626014 () array!96991)

(declare-fun index!585 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11116 0))(
  ( (MissingZero!11116 (index!46855 (_ BitVec 32))) (Found!11116 (index!46856 (_ BitVec 32))) (Intermediate!11116 (undefined!11928 Bool) (index!46857 (_ BitVec 32)) (x!128513 (_ BitVec 32))) (Undefined!11116) (MissingVacant!11116 (index!46858 (_ BitVec 32))) )
))
(declare-fun lt!626015 () SeekEntryResult!11116)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96991 (_ BitVec 32)) SeekEntryResult!11116)

(assert (=> b!1420897 (= lt!626015 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626017 lt!626014 mask!2608))))

(declare-fun b!1420898 () Bool)

(declare-fun res!956441 () Bool)

(assert (=> b!1420898 (=> (not res!956441) (not e!803560))))

(declare-fun lt!626016 () SeekEntryResult!11116)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!96991)

(assert (=> b!1420898 (= res!956441 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46809 a!2831) j!81) a!2831 mask!2608) lt!626016))))

(declare-fun b!1420899 () Bool)

(declare-fun res!956448 () Bool)

(declare-fun e!803561 () Bool)

(assert (=> b!1420899 (=> (not res!956448) (not e!803561))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420899 (= res!956448 (and (= (size!47360 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47360 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47360 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420900 () Bool)

(declare-fun res!956442 () Bool)

(assert (=> b!1420900 (=> (not res!956442) (not e!803561))))

(declare-datatypes ((List!33499 0))(
  ( (Nil!33496) (Cons!33495 (h!34797 (_ BitVec 64)) (t!48200 List!33499)) )
))
(declare-fun arrayNoDuplicates!0 (array!96991 (_ BitVec 32) List!33499) Bool)

(assert (=> b!1420900 (= res!956442 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33496))))

(declare-fun b!1420901 () Bool)

(declare-fun res!956445 () Bool)

(assert (=> b!1420901 (=> (not res!956445) (not e!803561))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420901 (= res!956445 (validKeyInArray!0 (select (arr!46809 a!2831) j!81)))))

(declare-fun res!956443 () Bool)

(assert (=> start!122708 (=> (not res!956443) (not e!803561))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122708 (= res!956443 (validMask!0 mask!2608))))

(assert (=> start!122708 e!803561))

(assert (=> start!122708 true))

(declare-fun array_inv!35754 (array!96991) Bool)

(assert (=> start!122708 (array_inv!35754 a!2831)))

(declare-fun b!1420902 () Bool)

(declare-fun e!803559 () Bool)

(assert (=> b!1420902 (= e!803561 e!803559)))

(declare-fun res!956447 () Bool)

(assert (=> b!1420902 (=> (not res!956447) (not e!803559))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420902 (= res!956447 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46809 a!2831) j!81) mask!2608) (select (arr!46809 a!2831) j!81) a!2831 mask!2608) lt!626016))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1420902 (= lt!626016 (Intermediate!11116 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420903 () Bool)

(declare-fun res!956440 () Bool)

(assert (=> b!1420903 (=> (not res!956440) (not e!803561))))

(assert (=> b!1420903 (= res!956440 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47360 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47360 a!2831))))))

(declare-fun b!1420904 () Bool)

(assert (=> b!1420904 (= e!803559 e!803560)))

(declare-fun res!956439 () Bool)

(assert (=> b!1420904 (=> (not res!956439) (not e!803560))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1420904 (= res!956439 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626017 mask!2608) lt!626017 lt!626014 mask!2608) (Intermediate!11116 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1420904 (= lt!626017 (select (store (arr!46809 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1420904 (= lt!626014 (array!96992 (store (arr!46809 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47360 a!2831)))))

(declare-fun b!1420905 () Bool)

(declare-fun res!956446 () Bool)

(assert (=> b!1420905 (=> (not res!956446) (not e!803561))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96991 (_ BitVec 32)) Bool)

(assert (=> b!1420905 (= res!956446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420906 () Bool)

(declare-fun res!956444 () Bool)

(assert (=> b!1420906 (=> (not res!956444) (not e!803561))))

(assert (=> b!1420906 (= res!956444 (validKeyInArray!0 (select (arr!46809 a!2831) i!982)))))

(assert (= (and start!122708 res!956443) b!1420899))

(assert (= (and b!1420899 res!956448) b!1420906))

(assert (= (and b!1420906 res!956444) b!1420901))

(assert (= (and b!1420901 res!956445) b!1420905))

(assert (= (and b!1420905 res!956446) b!1420900))

(assert (= (and b!1420900 res!956442) b!1420903))

(assert (= (and b!1420903 res!956440) b!1420902))

(assert (= (and b!1420902 res!956447) b!1420904))

(assert (= (and b!1420904 res!956439) b!1420898))

(assert (= (and b!1420898 res!956441) b!1420897))

(declare-fun m!1311495 () Bool)

(assert (=> b!1420897 m!1311495))

(declare-fun m!1311497 () Bool)

(assert (=> b!1420900 m!1311497))

(declare-fun m!1311499 () Bool)

(assert (=> b!1420905 m!1311499))

(declare-fun m!1311501 () Bool)

(assert (=> b!1420898 m!1311501))

(assert (=> b!1420898 m!1311501))

(declare-fun m!1311503 () Bool)

(assert (=> b!1420898 m!1311503))

(declare-fun m!1311505 () Bool)

(assert (=> start!122708 m!1311505))

(declare-fun m!1311507 () Bool)

(assert (=> start!122708 m!1311507))

(assert (=> b!1420902 m!1311501))

(assert (=> b!1420902 m!1311501))

(declare-fun m!1311509 () Bool)

(assert (=> b!1420902 m!1311509))

(assert (=> b!1420902 m!1311509))

(assert (=> b!1420902 m!1311501))

(declare-fun m!1311511 () Bool)

(assert (=> b!1420902 m!1311511))

(declare-fun m!1311513 () Bool)

(assert (=> b!1420906 m!1311513))

(assert (=> b!1420906 m!1311513))

(declare-fun m!1311515 () Bool)

(assert (=> b!1420906 m!1311515))

(declare-fun m!1311517 () Bool)

(assert (=> b!1420904 m!1311517))

(assert (=> b!1420904 m!1311517))

(declare-fun m!1311519 () Bool)

(assert (=> b!1420904 m!1311519))

(declare-fun m!1311521 () Bool)

(assert (=> b!1420904 m!1311521))

(declare-fun m!1311523 () Bool)

(assert (=> b!1420904 m!1311523))

(assert (=> b!1420901 m!1311501))

(assert (=> b!1420901 m!1311501))

(declare-fun m!1311525 () Bool)

(assert (=> b!1420901 m!1311525))

(push 1)

(assert (not start!122708))

(assert (not b!1420904))

(assert (not b!1420902))

(assert (not b!1420905))

