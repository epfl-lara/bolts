; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!122954 () Bool)

(assert start!122954)

(declare-fun b!1425613 () Bool)

(declare-fun e!805413 () Bool)

(declare-fun e!805414 () Bool)

(assert (=> b!1425613 (= e!805413 e!805414)))

(declare-fun res!961159 () Bool)

(assert (=> b!1425613 (=> (not res!961159) (not e!805414))))

(declare-datatypes ((array!97237 0))(
  ( (array!97238 (arr!46932 (Array (_ BitVec 32) (_ BitVec 64))) (size!47483 (_ BitVec 32))) )
))
(declare-fun a!2831 () array!97237)

(declare-fun mask!2608 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11233 0))(
  ( (MissingZero!11233 (index!47323 (_ BitVec 32))) (Found!11233 (index!47324 (_ BitVec 32))) (Intermediate!11233 (undefined!12045 Bool) (index!47325 (_ BitVec 32)) (x!128958 (_ BitVec 32))) (Undefined!11233) (MissingVacant!11233 (index!47326 (_ BitVec 32))) )
))
(declare-fun lt!627807 () SeekEntryResult!11233)

(declare-fun j!81 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97237 (_ BitVec 32)) SeekEntryResult!11233)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1425613 (= res!961159 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!46932 a!2831) j!81) mask!2608) (select (arr!46932 a!2831) j!81) a!2831 mask!2608) lt!627807))))

(declare-fun intermediateBeforeIndex!13 () (_ BitVec 32))

(declare-fun intermediateBeforeX!13 () (_ BitVec 32))

(assert (=> b!1425613 (= lt!627807 (Intermediate!11233 false intermediateBeforeIndex!13 intermediateBeforeX!13))))

(declare-fun b!1425614 () Bool)

(declare-fun e!805415 () Bool)

(assert (=> b!1425614 (= e!805415 false)))

(declare-fun x!605 () (_ BitVec 32))

(declare-fun lt!627805 () (_ BitVec 64))

(declare-fun lt!627806 () SeekEntryResult!11233)

(declare-fun lt!627808 () array!97237)

(declare-fun index!585 () (_ BitVec 32))

(assert (=> b!1425614 (= lt!627806 (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 lt!627805 lt!627808 mask!2608))))

(declare-fun b!1425615 () Bool)

(declare-fun res!961164 () Bool)

(assert (=> b!1425615 (=> (not res!961164) (not e!805413))))

(declare-fun i!982 () (_ BitVec 32))

(assert (=> b!1425615 (= res!961164 (and (= (size!47483 a!2831) (bvadd #b00000000000000000000000000000001 mask!2608)) (bvsge i!982 #b00000000000000000000000000000000) (bvslt i!982 (size!47483 a!2831)) (bvsge j!81 #b00000000000000000000000000000000) (bvslt j!81 (size!47483 a!2831)) (not (= i!982 j!81))))))

(declare-fun b!1425616 () Bool)

(assert (=> b!1425616 (= e!805414 e!805415)))

(declare-fun res!961160 () Bool)

(assert (=> b!1425616 (=> (not res!961160) (not e!805415))))

(declare-fun intermediateAfterIndex!13 () (_ BitVec 32))

(declare-fun undefinedAfter!5 () Bool)

(declare-fun intermediateAfterX!13 () (_ BitVec 32))

(assert (=> b!1425616 (= res!961160 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!627805 mask!2608) lt!627805 lt!627808 mask!2608) (Intermediate!11233 undefinedAfter!5 intermediateAfterIndex!13 intermediateAfterX!13)))))

(assert (=> b!1425616 (= lt!627805 (select (store (arr!46932 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) j!81))))

(assert (=> b!1425616 (= lt!627808 (array!97238 (store (arr!46932 a!2831) i!982 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47483 a!2831)))))

(declare-fun b!1425617 () Bool)

(declare-fun res!961158 () Bool)

(assert (=> b!1425617 (=> (not res!961158) (not e!805413))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1425617 (= res!961158 (validKeyInArray!0 (select (arr!46932 a!2831) j!81)))))

(declare-fun b!1425618 () Bool)

(declare-fun res!961155 () Bool)

(assert (=> b!1425618 (=> (not res!961155) (not e!805413))))

(assert (=> b!1425618 (= res!961155 (validKeyInArray!0 (select (arr!46932 a!2831) i!982)))))

(declare-fun res!961163 () Bool)

(assert (=> start!122954 (=> (not res!961163) (not e!805413))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!122954 (= res!961163 (validMask!0 mask!2608))))

(assert (=> start!122954 e!805413))

(assert (=> start!122954 true))

(declare-fun array_inv!35877 (array!97237) Bool)

(assert (=> start!122954 (array_inv!35877 a!2831)))

(declare-fun b!1425619 () Bool)

(declare-fun res!961162 () Bool)

(assert (=> b!1425619 (=> (not res!961162) (not e!805413))))

(declare-datatypes ((List!33622 0))(
  ( (Nil!33619) (Cons!33618 (h!34920 (_ BitVec 64)) (t!48323 List!33622)) )
))
(declare-fun arrayNoDuplicates!0 (array!97237 (_ BitVec 32) List!33622) Bool)

(assert (=> b!1425619 (= res!961162 (arrayNoDuplicates!0 a!2831 #b00000000000000000000000000000000 Nil!33619))))

(declare-fun b!1425620 () Bool)

(declare-fun res!961156 () Bool)

(assert (=> b!1425620 (=> (not res!961156) (not e!805413))))

(assert (=> b!1425620 (= res!961156 (and (bvsge x!605 #b00000000000000000000000000000000) (bvsle x!605 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!13 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!13 #b01111111111111111111111111111110) (bvsge index!585 #b00000000000000000000000000000000) (bvslt index!585 (size!47483 a!2831)) (bvsge intermediateBeforeIndex!13 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!13 (size!47483 a!2831))))))

(declare-fun b!1425621 () Bool)

(declare-fun res!961157 () Bool)

(assert (=> b!1425621 (=> (not res!961157) (not e!805413))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97237 (_ BitVec 32)) Bool)

(assert (=> b!1425621 (= res!961157 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2831 mask!2608))))

(declare-fun b!1425622 () Bool)

(declare-fun res!961161 () Bool)

(assert (=> b!1425622 (=> (not res!961161) (not e!805415))))

(assert (=> b!1425622 (= res!961161 (= (seekKeyOrZeroOrLongMinValue!0 x!605 index!585 (select (arr!46932 a!2831) j!81) a!2831 mask!2608) lt!627807))))

(assert (= (and start!122954 res!961163) b!1425615))

(assert (= (and b!1425615 res!961164) b!1425618))

(assert (= (and b!1425618 res!961155) b!1425617))

(assert (= (and b!1425617 res!961158) b!1425621))

(assert (= (and b!1425621 res!961157) b!1425619))

(assert (= (and b!1425619 res!961162) b!1425620))

(assert (= (and b!1425620 res!961156) b!1425613))

(assert (= (and b!1425613 res!961159) b!1425616))

(assert (= (and b!1425616 res!961160) b!1425622))

(assert (= (and b!1425622 res!961161) b!1425614))

(declare-fun m!1316271 () Bool)

(assert (=> b!1425621 m!1316271))

(declare-fun m!1316273 () Bool)

(assert (=> b!1425616 m!1316273))

(assert (=> b!1425616 m!1316273))

(declare-fun m!1316275 () Bool)

(assert (=> b!1425616 m!1316275))

(declare-fun m!1316277 () Bool)

(assert (=> b!1425616 m!1316277))

(declare-fun m!1316279 () Bool)

(assert (=> b!1425616 m!1316279))

(declare-fun m!1316281 () Bool)

(assert (=> b!1425622 m!1316281))

(assert (=> b!1425622 m!1316281))

(declare-fun m!1316283 () Bool)

(assert (=> b!1425622 m!1316283))

(assert (=> b!1425613 m!1316281))

(assert (=> b!1425613 m!1316281))

(declare-fun m!1316285 () Bool)

(assert (=> b!1425613 m!1316285))

(assert (=> b!1425613 m!1316285))

(assert (=> b!1425613 m!1316281))

(declare-fun m!1316287 () Bool)

(assert (=> b!1425613 m!1316287))

(declare-fun m!1316289 () Bool)

(assert (=> b!1425619 m!1316289))

(declare-fun m!1316291 () Bool)

(assert (=> b!1425614 m!1316291))

(assert (=> b!1425617 m!1316281))

(assert (=> b!1425617 m!1316281))

(declare-fun m!1316293 () Bool)

(assert (=> b!1425617 m!1316293))

(declare-fun m!1316295 () Bool)

(assert (=> b!1425618 m!1316295))

(assert (=> b!1425618 m!1316295))

(declare-fun m!1316297 () Bool)

(assert (=> b!1425618 m!1316297))

(declare-fun m!1316299 () Bool)

(assert (=> start!122954 m!1316299))

(declare-fun m!1316301 () Bool)

(assert (=> start!122954 m!1316301))

(push 1)

(assert (not b!1425618))

(assert (not b!1425621))

(assert (not start!122954))

(assert (not b!1425622))

