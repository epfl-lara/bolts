; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122692 () Bool)

(assert start!122692)

(declare-fun b!1420657 () Bool)

(declare-fun res!956205 () Bool)

(declare-fun e!803463 () Bool)

(assert (=> b!1420657 (=> (not res!956205) (not e!803463))))

(declare-datatypes ((array!96975 0))(
  ( (array!96976 (arr!46801 (Array (_ BitVec 32) (_ BitVec 64))) (size!47352 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96975)

(declare-datatypes ((List!33491 0))(
  ( (Nil!33488) (Cons!33487 (h!34789 (_ BitVec 64)) (t!48192 List!33491)) )
))
(declare-fun arrayNoDuplicates!0 (array!96975 (_ BitVec 32) List!33491) Bool)

(assert (=> b!1420657 (= res!956205 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33488))))

(declare-fun b!1420658 () Bool)

(declare-fun res!956200 () Bool)

(assert (=> b!1420658 (=> (not res!956200) (not e!803463))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96975 (_ BitVec 32)) Bool)

(assert (=> b!1420658 (= res!956200 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420659 () Bool)

(declare-fun res!956208 () Bool)

(assert (=> b!1420659 (=> (not res!956208) (not e!803463))))

(declare-fun i!982 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420659 (= res!956208 (validKeyInArray!0 (select (arr!46801 a!2831) i!982)))))

(declare-fun b!1420660 () Bool)

(declare-fun res!956207 () Bool)

(declare-fun e!803462 () Bool)

(assert (=> b!1420660 (=> (not res!956207) (not e!803462))))

(declare-datatypes ((SeekEntryResult!11108 0))(
  ( (MissingZero!11108 (index!46823 (_ BitVec 32))) (Found!11108 (index!46824 (_ BitVec 32))) (Intermediate!11108 (undefined!11920 Bool) (index!46825 (_ BitVec 32)) (x!128489 (_ BitVec 32))) (Undefined!11108) (MissingVacant!11108 (index!46826 (_ BitVec 32))) )
))
(declare-fun lt!625919 () SeekEntryResult!11108)

(declare-fun x!605 () (_ BitVec 32))

(declare-fun j!81 () (_ BitVec 32))

(declare-fun index!585 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96975 (_ BitVec 32)) SeekEntryResult!11108)

(assert (=> b!1420660 (= res!956207 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46801 a!2831) j!81) a!2831 mask!2608) lt!625919))))

(declare-fun b!1420661 () Bool)

(assert (=> b!1420661 (= e!803462 false)))

(declare-fun lt!625920 () SeekEntryResult!11108)

(declare-fun lt!625918 () (_ BitVec 64))

(declare-fun lt!625921 () array!96975)

(assert (=> b!1420661 (= lt!625920 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!625918 lt!625921 mask!2608))))

(declare-fun b!1420662 () Bool)

(declare-fun e!803465 () Bool)

(assert (=> b!1420662 (= e!803463 e!803465)))

(declare-fun res!956203 () Bool)

(assert (=> b!1420662 (=> (not res!956203) (not e!803465))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420662 (= res!956203 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46801 a!2831) j!81) mask!2608) (select (arr!46801 a!2831) j!81) a!2831 mask!2608) lt!625919))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1420662 (= lt!625919 (Intermediate!11108 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420663 () Bool)

(declare-fun res!956199 () Bool)

(assert (=> b!1420663 (=> (not res!956199) (not e!803463))))

(assert (=> b!1420663 (= res!956199 (and (= (size!47352 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47352 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47352 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420664 () Bool)

(assert (=> b!1420664 (= e!803465 e!803462)))

(declare-fun res!956204 () Bool)

(assert (=> b!1420664 (=> (not res!956204) (not e!803462))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1420664 (= res!956204 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!625918 mask!2608) lt!625918 lt!625921 mask!2608) (Intermediate!11108 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1420664 (= lt!625918 (select (store (arr!46801 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1420664 (= lt!625921 (array!96976 (store (arr!46801 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47352 a!2831)))))

(declare-fun b!1420665 () Bool)

(declare-fun res!956202 () Bool)

(assert (=> b!1420665 (=> (not res!956202) (not e!803463))))

(assert (=> b!1420665 (= res!956202 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47352 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47352 a!2831))))))

(declare-fun b!1420666 () Bool)

(declare-fun res!956206 () Bool)

(assert (=> b!1420666 (=> (not res!956206) (not e!803463))))

(assert (=> b!1420666 (= res!956206 (validKeyInArray!0 (select (arr!46801 a!2831) j!81)))))

(declare-fun res!956201 () Bool)

(assert (=> start!122692 (=> (not res!956201) (not e!803463))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122692 (= res!956201 (validMask!0 mask!2608))))

(assert (=> start!122692 e!803463))

(assert (=> start!122692 true))

(declare-fun array_inv!35746 (array!96975) Bool)

(assert (=> start!122692 (array_inv!35746 a!2831)))

(assert (= (and start!122692 res!956201) b!1420663))

(assert (= (and b!1420663 res!956199) b!1420659))

(assert (= (and b!1420659 res!956208) b!1420666))

(assert (= (and b!1420666 res!956206) b!1420658))

(assert (= (and b!1420658 res!956200) b!1420657))

(assert (= (and b!1420657 res!956205) b!1420665))

(assert (= (and b!1420665 res!956202) b!1420662))

(assert (= (and b!1420662 res!956203) b!1420664))

(assert (= (and b!1420664 res!956204) b!1420660))

(assert (= (and b!1420660 res!956207) b!1420661))

(declare-fun m!1311239 () Bool)

(assert (=> b!1420666 m!1311239))

(assert (=> b!1420666 m!1311239))

(declare-fun m!1311241 () Bool)

(assert (=> b!1420666 m!1311241))

(declare-fun m!1311243 () Bool)

(assert (=> b!1420657 m!1311243))

(declare-fun m!1311245 () Bool)

(assert (=> b!1420659 m!1311245))

(assert (=> b!1420659 m!1311245))

(declare-fun m!1311247 () Bool)

(assert (=> b!1420659 m!1311247))

(declare-fun m!1311249 () Bool)

(assert (=> b!1420664 m!1311249))

(assert (=> b!1420664 m!1311249))

(declare-fun m!1311251 () Bool)

(assert (=> b!1420664 m!1311251))

(declare-fun m!1311253 () Bool)

(assert (=> b!1420664 m!1311253))

(declare-fun m!1311255 () Bool)

(assert (=> b!1420664 m!1311255))

(assert (=> b!1420660 m!1311239))

(assert (=> b!1420660 m!1311239))

(declare-fun m!1311257 () Bool)

(assert (=> b!1420660 m!1311257))

(declare-fun m!1311259 () Bool)

(assert (=> b!1420658 m!1311259))

(declare-fun m!1311261 () Bool)

(assert (=> b!1420661 m!1311261))

(declare-fun m!1311263 () Bool)

(assert (=> start!122692 m!1311263))

(declare-fun m!1311265 () Bool)

(assert (=> start!122692 m!1311265))

(assert (=> b!1420662 m!1311239))

(assert (=> b!1420662 m!1311239))

(declare-fun m!1311267 () Bool)

(assert (=> b!1420662 m!1311267))

(assert (=> b!1420662 m!1311267))

(assert (=> b!1420662 m!1311239))

(declare-fun m!1311269 () Bool)

(assert (=> b!1420662 m!1311269))

(push 1)

