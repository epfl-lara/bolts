; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122722 () Bool)

(assert start!122722)

(declare-fun b!1421129 () Bool)

(declare-fun e!803643 () Bool)

(declare-fun e!803644 () Bool)

(assert (=> b!1421129 (= e!803643 e!803644)))

(declare-fun res!956678 () Bool)

(assert (=> b!1421129 (=> (not res!956678) (not e!803644))))

(declare-datatypes ((array!97005 0))(
  ( (array!97006 (arr!46816 (Array (_ BitVec 32) (_ BitVec 64))) (size!47367 (_ BitVec 32))) )
))
(declare-fun lt!626113 () array!97005)

(declare-datatypes ((SeekEntryResult!11123 0))(
  ( (MissingZero!11123 (index!46883 (_ BitVec 32))) (Found!11123 (index!46884 (_ BitVec 32))) (Intermediate!11123 (undefined!11935 Bool) (index!46885 (_ BitVec 32)) (x!128544 (_ BitVec 32))) (Undefined!11123) (MissingVacant!11123 (index!46886 (_ BitVec 32))) )
))
(declare-fun lt!626112 () SeekEntryResult!11123)

(declare-fun lt!626110 () (_ BitVec 64))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97005 (_ BitVec 32)) SeekEntryResult!11123)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1421129 (= res!956678 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!626110 mask!2608) lt!626110 lt!626113 mask!2608) lt!626112))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1421129 (= lt!626112 (Intermediate!11123 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13))))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun a!2831 () array!97005)

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1421129 (= lt!626110 (select (store (arr!46816 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1421129 (= lt!626113 (array!97006 (store (arr!46816 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47367 a!2831)))))

(declare-fun b!1421130 () Bool)

(declare-fun res!956679 () Bool)

(assert (=> b!1421130 (=> (not res!956679) (not e!803644))))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(assert (=> b!1421130 (= res!956679 (or undefinedAfter!5 (not (= intermediateBeforeIndex!13 intermediateAfterIndex!13)) (not (= intermediateBeforeX!13 intermediateAfterX!13))))))

(declare-fun res!956682 () Bool)

(declare-fun e!803642 () Bool)

(assert (=> start!122722 (=> (not res!956682) (not e!803642))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122722 (= res!956682 (validMask!0 mask!2608))))

(assert (=> start!122722 e!803642))

(assert (=> start!122722 true))

(declare-fun array_inv!35761 (array!97005) Bool)

(assert (=> start!122722 (array_inv!35761 a!2831)))

(declare-fun b!1421131 () Bool)

(assert (=> b!1421131 (= e!803642 e!803643)))

(declare-fun res!956674 () Bool)

(assert (=> b!1421131 (=> (not res!956674) (not e!803643))))

(declare-fun lt!626109 () SeekEntryResult!11123)

(assert (=> b!1421131 (= res!956674 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46816 a!2831) j!81) mask!2608) (select (arr!46816 a!2831) j!81) a!2831 mask!2608) lt!626109))))

(assert (=> b!1421131 (= lt!626109 (Intermediate!11123 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1421132 () Bool)

(declare-fun res!956677 () Bool)

(assert (=> b!1421132 (=> (not res!956677) (not e!803642))))

(assert (=> b!1421132 (= res!956677 (and (= (size!47367 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47367 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47367 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1421133 () Bool)

(declare-fun res!956675 () Bool)

(assert (=> b!1421133 (=> (not res!956675) (not e!803642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97005 (_ BitVec 32)) Bool)

(assert (=> b!1421133 (= res!956675 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1421134 () Bool)

(declare-fun res!956671 () Bool)

(assert (=> b!1421134 (=> (not res!956671) (not e!803644))))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1421134 (= res!956671 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46816 a!2831) j!81) a!2831 mask!2608) lt!626109))))

(declare-fun b!1421135 () Bool)

(declare-fun res!956672 () Bool)

(assert (=> b!1421135 (=> (not res!956672) (not e!803642))))

(declare-datatypes ((List!33506 0))(
  ( (Nil!33503) (Cons!33502 (h!34804 (_ BitVec 64)) (t!48207 List!33506)) )
))
(declare-fun arrayNoDuplicates!0 (array!97005 (_ BitVec 32) List!33506) Bool)

(assert (=> b!1421135 (= res!956672 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33503))))

(declare-fun b!1421136 () Bool)

(declare-fun res!956676 () Bool)

(assert (=> b!1421136 (=> (not res!956676) (not e!803644))))

(assert (=> b!1421136 (= res!956676 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!626110 lt!626113 mask!2608) lt!626112))))

(declare-fun b!1421137 () Bool)

(declare-fun res!956680 () Bool)

(assert (=> b!1421137 (=> (not res!956680) (not e!803642))))

(assert (=> b!1421137 (= res!956680 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47367 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47367 a!2831))))))

(declare-fun b!1421138 () Bool)

(declare-fun res!956681 () Bool)

(assert (=> b!1421138 (=> (not res!956681) (not e!803642))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1421138 (= res!956681 (validKeyInArray!0 (select (arr!46816 a!2831) i!982)))))

(declare-fun b!1421139 () Bool)

(assert (=> b!1421139 (= e!803644 (not (bvsge mask!2608 #b00000000000000000000000000000000)))))

(assert (=> b!1421139 (arrayForallSeekEntryOrOpenFound!0 j!81 a!2831 mask!2608)))

(declare-datatypes ((Unit!48030 0))(
  ( (Unit!48031) )
))
(declare-fun lt!626111 () Unit!48030)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!97005 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48030)

(assert (=> b!1421139 (= lt!626111 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2831 mask!2608 #b00000000000000000000000000000000 j!81))))

(declare-fun b!1421140 () Bool)

(declare-fun res!956673 () Bool)

(assert (=> b!1421140 (=> (not res!956673) (not e!803642))))

(assert (=> b!1421140 (= res!956673 (validKeyInArray!0 (select (arr!46816 a!2831) j!81)))))

(assert (= (and start!122722 res!956682) b!1421132))

(assert (= (and b!1421132 res!956677) b!1421138))

(assert (= (and b!1421138 res!956681) b!1421140))

(assert (= (and b!1421140 res!956673) b!1421133))

(assert (= (and b!1421133 res!956675) b!1421135))

(assert (= (and b!1421135 res!956672) b!1421137))

(assert (= (and b!1421137 res!956680) b!1421131))

(assert (= (and b!1421131 res!956674) b!1421129))

(assert (= (and b!1421129 res!956678) b!1421134))

(assert (= (and b!1421134 res!956671) b!1421136))

(assert (= (and b!1421136 res!956676) b!1421130))

(assert (= (and b!1421130 res!956679) b!1421139))

(declare-fun m!1311731 () Bool)

(assert (=> b!1421139 m!1311731))

(declare-fun m!1311733 () Bool)

(assert (=> b!1421139 m!1311733))

(declare-fun m!1311735 () Bool)

(assert (=> start!122722 m!1311735))

(declare-fun m!1311737 () Bool)

(assert (=> start!122722 m!1311737))

(declare-fun m!1311739 () Bool)

(assert (=> b!1421138 m!1311739))

(assert (=> b!1421138 m!1311739))

(declare-fun m!1311741 () Bool)

(assert (=> b!1421138 m!1311741))

(declare-fun m!1311743 () Bool)

(assert (=> b!1421129 m!1311743))

(assert (=> b!1421129 m!1311743))

(declare-fun m!1311745 () Bool)

(assert (=> b!1421129 m!1311745))

(declare-fun m!1311747 () Bool)

(assert (=> b!1421129 m!1311747))

(declare-fun m!1311749 () Bool)

(assert (=> b!1421129 m!1311749))

(declare-fun m!1311751 () Bool)

(assert (=> b!1421131 m!1311751))

(assert (=> b!1421131 m!1311751))

(declare-fun m!1311753 () Bool)

(assert (=> b!1421131 m!1311753))

(assert (=> b!1421131 m!1311753))

(assert (=> b!1421131 m!1311751))

(declare-fun m!1311755 () Bool)

(assert (=> b!1421131 m!1311755))

(assert (=> b!1421134 m!1311751))

(assert (=> b!1421134 m!1311751))

(declare-fun m!1311757 () Bool)

(assert (=> b!1421134 m!1311757))

(assert (=> b!1421140 m!1311751))

(assert (=> b!1421140 m!1311751))

(declare-fun m!1311759 () Bool)

(assert (=> b!1421140 m!1311759))

(declare-fun m!1311761 () Bool)

(assert (=> b!1421135 m!1311761))

(declare-fun m!1311763 () Bool)

(assert (=> b!1421136 m!1311763))

(declare-fun m!1311765 () Bool)

(assert (=> b!1421133 m!1311765))

(push 1)

