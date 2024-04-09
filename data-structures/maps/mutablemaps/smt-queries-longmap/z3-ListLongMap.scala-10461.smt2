; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!122970 () Bool)

(assert start!122970)

(declare-fun b!1425858 () Bool)

(declare-fun res!961402 () Bool)

(declare-fun e!805509 () Bool)

(assert (=> b!1425858 (=> (not res!961402) (not e!805509))))

(declare-datatypes ((array!97253 0))(
  ( (array!97254 (arr!46940 (Array (_ BitVec 32) (_ BitVec 64))) (size!47491 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97253)

(declare-datatypes ((List!33630 0))(
  ( (Nil!33627) (Cons!33626 (h!34928 (_ BitVec 64)) (t!48331 List!33630)) )
))
(declare-fun arrayNoDuplicates!0 (array!97253 (_ BitVec 32) List!33630) Bool)

(assert (=> b!1425858 (= res!961402 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33627))))

(declare-fun b!1425859 () Bool)

(declare-fun res!961410 () Bool)

(declare-fun e!805510 () Bool)

(assert (=> b!1425859 (=> (not res!961410) (not e!805510))))

(declare-fun lt!627903 () array!97253)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun lt!627901 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11241 0))(
  ( (MissingZero!11241 (index!47355 (_ BitVec 32))) (Found!11241 (index!47356 (_ BitVec 32))) (Intermediate!11241 (undefined!12053 Bool) (index!47357 (_ BitVec 32)) (x!128990 (_ BitVec 32))) (Undefined!11241) (MissingVacant!11241 (index!47358 (_ BitVec 32))) )
))
(declare-fun lt!627904 () SeekEntryResult!11241)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97253 (_ BitVec 32)) SeekEntryResult!11241)

(assert (=> b!1425859 (= res!961410 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627901 lt!627903 mask!2608) lt!627904))))

(declare-fun b!1425860 () Bool)

(declare-fun res!961400 () Bool)

(assert (=> b!1425860 (=> (not res!961400) (not e!805509))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425860 (= res!961400 (validKeyInArray!0 (select (arr!46940 a!2831) j!81)))))

(declare-fun b!1425861 () Bool)

(declare-fun res!961401 () Bool)

(assert (=> b!1425861 (=> (not res!961401) (not e!805510))))

(declare-fun lt!627902 () SeekEntryResult!11241)

(assert (=> b!1425861 (= res!961401 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46940 a!2831) j!81) a!2831 mask!2608) lt!627902))))

(declare-fun b!1425862 () Bool)

(declare-fun e!805511 () Bool)

(assert (=> b!1425862 (= e!805509 e!805511)))

(declare-fun res!961406 () Bool)

(assert (=> b!1425862 (=> (not res!961406) (not e!805511))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425862 (= res!961406 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46940 a!2831) j!81) mask!2608) (select (arr!46940 a!2831) j!81) a!2831 mask!2608) lt!627902))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1425862 (= lt!627902 (Intermediate!11241 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1425863 () Bool)

(assert (=> b!1425863 (= e!805511 e!805510)))

(declare-fun res!961405 () Bool)

(assert (=> b!1425863 (=> (not res!961405) (not e!805510))))

(assert (=> b!1425863 (= res!961405 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627901 mask!2608) lt!627901 lt!627903 mask!2608) lt!627904))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1425863 (= lt!627904 (Intermediate!11241 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425863 (= lt!627901 (select (store (arr!46940 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1425863 (= lt!627903 (array!97254 (store (arr!46940 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47491 a!2831)))))

(declare-fun b!1425864 () Bool)

(declare-fun res!961403 () Bool)

(assert (=> b!1425864 (=> (not res!961403) (not e!805509))))

(assert (=> b!1425864 (= res!961403 (and (= (size!47491 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47491 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47491 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425865 () Bool)

(assert (=> b!1425865 (= e!805510 (and (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))) (bvsgt #b00000000000000000000000000000000 (size!47491 a!2831))))))

(declare-fun b!1425866 () Bool)

(declare-fun res!961404 () Bool)

(assert (=> b!1425866 (=> (not res!961404) (not e!805509))))

(assert (=> b!1425866 (= res!961404 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47491 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47491 a!2831))))))

(declare-fun b!1425867 () Bool)

(declare-fun res!961408 () Bool)

(assert (=> b!1425867 (=> (not res!961408) (not e!805509))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97253 (_ BitVec 32)) Bool)

(assert (=> b!1425867 (= res!961408 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425868 () Bool)

(declare-fun res!961407 () Bool)

(assert (=> b!1425868 (=> (not res!961407) (not e!805509))))

(assert (=> b!1425868 (= res!961407 (validKeyInArray!0 (select (arr!46940 a!2831) i!982)))))

(declare-fun res!961409 () Bool)

(assert (=> start!122970 (=> (not res!961409) (not e!805509))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122970 (= res!961409 (validMask!0 mask!2608))))

(assert (=> start!122970 e!805509))

(assert (=> start!122970 true))

(declare-fun array_inv!35885 (array!97253) Bool)

(assert (=> start!122970 (array_inv!35885 a!2831)))

(assert (= (and start!122970 res!961409) b!1425864))

(assert (= (and b!1425864 res!961403) b!1425868))

(assert (= (and b!1425868 res!961407) b!1425860))

(assert (= (and b!1425860 res!961400) b!1425867))

(assert (= (and b!1425867 res!961408) b!1425858))

(assert (= (and b!1425858 res!961402) b!1425866))

(assert (= (and b!1425866 res!961404) b!1425862))

(assert (= (and b!1425862 res!961406) b!1425863))

(assert (= (and b!1425863 res!961405) b!1425861))

(assert (= (and b!1425861 res!961401) b!1425859))

(assert (= (and b!1425859 res!961410) b!1425865))

(declare-fun m!1316527 () Bool)

(assert (=> start!122970 m!1316527))

(declare-fun m!1316529 () Bool)

(assert (=> start!122970 m!1316529))

(declare-fun m!1316531 () Bool)

(assert (=> b!1425858 m!1316531))

(declare-fun m!1316533 () Bool)

(assert (=> b!1425868 m!1316533))

(assert (=> b!1425868 m!1316533))

(declare-fun m!1316535 () Bool)

(assert (=> b!1425868 m!1316535))

(declare-fun m!1316537 () Bool)

(assert (=> b!1425861 m!1316537))

(assert (=> b!1425861 m!1316537))

(declare-fun m!1316539 () Bool)

(assert (=> b!1425861 m!1316539))

(assert (=> b!1425860 m!1316537))

(assert (=> b!1425860 m!1316537))

(declare-fun m!1316541 () Bool)

(assert (=> b!1425860 m!1316541))

(assert (=> b!1425862 m!1316537))

(assert (=> b!1425862 m!1316537))

(declare-fun m!1316543 () Bool)

(assert (=> b!1425862 m!1316543))

(assert (=> b!1425862 m!1316543))

(assert (=> b!1425862 m!1316537))

(declare-fun m!1316545 () Bool)

(assert (=> b!1425862 m!1316545))

(declare-fun m!1316547 () Bool)

(assert (=> b!1425863 m!1316547))

(assert (=> b!1425863 m!1316547))

(declare-fun m!1316549 () Bool)

(assert (=> b!1425863 m!1316549))

(declare-fun m!1316551 () Bool)

(assert (=> b!1425863 m!1316551))

(declare-fun m!1316553 () Bool)

(assert (=> b!1425863 m!1316553))

(declare-fun m!1316555 () Bool)

(assert (=> b!1425867 m!1316555))

(declare-fun m!1316557 () Bool)

(assert (=> b!1425859 m!1316557))

(check-sat (not b!1425868) (not b!1425858) (not b!1425862) (not b!1425861) (not b!1425859) (not b!1425860) (not b!1425863) (not b!1425867) (not start!122970))
(check-sat)
