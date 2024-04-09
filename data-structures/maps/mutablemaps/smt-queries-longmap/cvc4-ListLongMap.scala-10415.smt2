; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122696 () Bool)

(assert start!122696)

(declare-fun b!1420717 () Bool)

(declare-fun res!956263 () Bool)

(declare-fun e!803488 () Bool)

(assert (=> b!1420717 (=> (not res!956263) (not e!803488))))

(declare-datatypes ((array!96979 0))(
  ( (array!96980 (arr!46803 (Array (_ BitVec 32) (_ BitVec 64))) (size!47354 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!96979)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1420717 (= res!956263 (validKeyInArray!0 (select (arr!46803 a!2831) j!81)))))

(declare-fun res!956265 () Bool)

(assert (=> start!122696 (=> (not res!956265) (not e!803488))))

(declare-fun mask!2608 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122696 (= res!956265 (validMask!0 mask!2608))))

(assert (=> start!122696 e!803488))

(assert (=> start!122696 true))

(declare-fun array_inv!35748 (array!96979) Bool)

(assert (=> start!122696 (array_inv!35748 a!2831)))

(declare-fun b!1420718 () Bool)

(declare-fun res!956259 () Bool)

(declare-fun e!803489 () Bool)

(assert (=> b!1420718 (=> (not res!956259) (not e!803489))))

(declare-fun x!605 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11110 0))(
  ( (MissingZero!11110 (index!46831 (_ BitVec 32))) (Found!11110 (index!46832 (_ BitVec 32))) (Intermediate!11110 (undefined!11922 Bool) (index!46833 (_ BitVec 32)) (x!128491 (_ BitVec 32))) (Undefined!11110) (MissingVacant!11110 (index!46834 (_ BitVec 32))) )
))
(declare-fun lt!625945 () SeekEntryResult!11110)

(declare-fun index!585 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!96979 (_ BitVec 32)) SeekEntryResult!11110)

(assert (=> b!1420718 (= res!956259 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46803 a!2831) j!81) a!2831 mask!2608) lt!625945))))

(declare-fun b!1420719 () Bool)

(declare-fun res!956264 () Bool)

(assert (=> b!1420719 (=> (not res!956264) (not e!803488))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1420719 (= res!956264 (validKeyInArray!0 (select (arr!46803 a!2831) i!982)))))

(declare-fun b!1420720 () Bool)

(assert (=> b!1420720 (= e!803489 false)))

(declare-fun lt!625943 () SeekEntryResult!11110)

(declare-fun lt!625942 () array!96979)

(declare-fun lt!625944 () (_ BitVec 64))

(assert (=> b!1420720 (= lt!625943 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!625944 lt!625942 mask!2608))))

(declare-fun b!1420721 () Bool)

(declare-fun res!956260 () Bool)

(assert (=> b!1420721 (=> (not res!956260) (not e!803488))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!96979 (_ BitVec 32)) Bool)

(assert (=> b!1420721 (= res!956260 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1420722 () Bool)

(declare-fun e!803486 () Bool)

(assert (=> b!1420722 (= e!803488 e!803486)))

(declare-fun res!956268 () Bool)

(assert (=> b!1420722 (=> (not res!956268) (not e!803486))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1420722 (= res!956268 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46803 a!2831) j!81) mask!2608) (select (arr!46803 a!2831) j!81) a!2831 mask!2608) lt!625945))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1420722 (= lt!625945 (Intermediate!11110 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1420723 () Bool)

(declare-fun res!956261 () Bool)

(assert (=> b!1420723 (=> (not res!956261) (not e!803488))))

(declare-datatypes ((List!33493 0))(
  ( (Nil!33490) (Cons!33489 (h!34791 (_ BitVec 64)) (t!48194 List!33493)) )
))
(declare-fun arrayNoDuplicates!0 (array!96979 (_ BitVec 32) List!33493) Bool)

(assert (=> b!1420723 (= res!956261 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33490))))

(declare-fun b!1420724 () Bool)

(declare-fun res!956267 () Bool)

(assert (=> b!1420724 (=> (not res!956267) (not e!803488))))

(assert (=> b!1420724 (= res!956267 (and (= (size!47354 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47354 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47354 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1420725 () Bool)

(assert (=> b!1420725 (= e!803486 e!803489)))

(declare-fun res!956262 () Bool)

(assert (=> b!1420725 (=> (not res!956262) (not e!803489))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(assert (=> b!1420725 (= res!956262 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!625944 mask!2608) lt!625944 lt!625942 mask!2608) (Intermediate!11110 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1420725 (= lt!625944 (select (store (arr!46803 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1420725 (= lt!625942 (array!96980 (store (arr!46803 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47354 a!2831)))))

(declare-fun b!1420726 () Bool)

(declare-fun res!956266 () Bool)

(assert (=> b!1420726 (=> (not res!956266) (not e!803488))))

(assert (=> b!1420726 (= res!956266 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47354 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47354 a!2831))))))

(assert (= (and start!122696 res!956265) b!1420724))

(assert (= (and b!1420724 res!956267) b!1420719))

(assert (= (and b!1420719 res!956264) b!1420717))

(assert (= (and b!1420717 res!956263) b!1420721))

(assert (= (and b!1420721 res!956260) b!1420723))

(assert (= (and b!1420723 res!956261) b!1420726))

(assert (= (and b!1420726 res!956266) b!1420722))

(assert (= (and b!1420722 res!956268) b!1420725))

(assert (= (and b!1420725 res!956262) b!1420718))

(assert (= (and b!1420718 res!956259) b!1420720))

(declare-fun m!1311303 () Bool)

(assert (=> b!1420719 m!1311303))

(assert (=> b!1420719 m!1311303))

(declare-fun m!1311305 () Bool)

(assert (=> b!1420719 m!1311305))

(declare-fun m!1311307 () Bool)

(assert (=> b!1420721 m!1311307))

(declare-fun m!1311309 () Bool)

(assert (=> b!1420723 m!1311309))

(declare-fun m!1311311 () Bool)

(assert (=> b!1420725 m!1311311))

(assert (=> b!1420725 m!1311311))

(declare-fun m!1311313 () Bool)

(assert (=> b!1420725 m!1311313))

(declare-fun m!1311315 () Bool)

(assert (=> b!1420725 m!1311315))

(declare-fun m!1311317 () Bool)

(assert (=> b!1420725 m!1311317))

(declare-fun m!1311319 () Bool)

(assert (=> b!1420720 m!1311319))

(declare-fun m!1311321 () Bool)

(assert (=> b!1420718 m!1311321))

(assert (=> b!1420718 m!1311321))

(declare-fun m!1311323 () Bool)

(assert (=> b!1420718 m!1311323))

(assert (=> b!1420722 m!1311321))

(assert (=> b!1420722 m!1311321))

(declare-fun m!1311325 () Bool)

(assert (=> b!1420722 m!1311325))

(assert (=> b!1420722 m!1311325))

(assert (=> b!1420722 m!1311321))

(declare-fun m!1311327 () Bool)

(assert (=> b!1420722 m!1311327))

(assert (=> b!1420717 m!1311321))

(assert (=> b!1420717 m!1311321))

(declare-fun m!1311329 () Bool)

(assert (=> b!1420717 m!1311329))

(declare-fun m!1311331 () Bool)

(assert (=> start!122696 m!1311331))

(declare-fun m!1311333 () Bool)

(assert (=> start!122696 m!1311333))

(push 1)

(assert (not b!1420721))

(assert (not b!1420720))

(assert (not b!1420717))

