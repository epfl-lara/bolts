; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124532 () Bool)

(assert start!124532)

(declare-fun b!1440377 () Bool)

(declare-fun res!972913 () Bool)

(declare-fun e!812176 () Bool)

(assert (=> b!1440377 (=> (not res!972913) (not e!812176))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97897 0))(
  ( (array!97898 (arr!47232 (Array (_ BitVec 32) (_ BitVec 64))) (size!47783 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97897)

(assert (=> b!1440377 (= res!972913 (and (= (size!47783 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47783 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47783 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440378 () Bool)

(declare-fun res!972917 () Bool)

(assert (=> b!1440378 (=> (not res!972917) (not e!812176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440378 (= res!972917 (validKeyInArray!0 (select (arr!47232 a!2862) i!1006)))))

(declare-fun b!1440379 () Bool)

(declare-fun res!972916 () Bool)

(assert (=> b!1440379 (=> (not res!972916) (not e!812176))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97897 (_ BitVec 32)) Bool)

(assert (=> b!1440379 (= res!972916 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440380 () Bool)

(declare-fun res!972915 () Bool)

(assert (=> b!1440380 (=> (not res!972915) (not e!812176))))

(assert (=> b!1440380 (= res!972915 (validKeyInArray!0 (select (arr!47232 a!2862) j!93)))))

(declare-fun b!1440381 () Bool)

(declare-fun res!972919 () Bool)

(assert (=> b!1440381 (=> (not res!972919) (not e!812176))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1440381 (= res!972919 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47783 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47783 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47783 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47232 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!972914 () Bool)

(assert (=> start!124532 (=> (not res!972914) (not e!812176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124532 (= res!972914 (validMask!0 mask!2687))))

(assert (=> start!124532 e!812176))

(assert (=> start!124532 true))

(declare-fun array_inv!36177 (array!97897) Bool)

(assert (=> start!124532 (array_inv!36177 a!2862)))

(declare-fun b!1440382 () Bool)

(declare-fun e!812175 () Bool)

(assert (=> b!1440382 (= e!812176 e!812175)))

(declare-fun res!972921 () Bool)

(assert (=> b!1440382 (=> (not res!972921) (not e!812175))))

(declare-datatypes ((SeekEntryResult!11507 0))(
  ( (MissingZero!11507 (index!48419 (_ BitVec 32))) (Found!11507 (index!48420 (_ BitVec 32))) (Intermediate!11507 (undefined!12319 Bool) (index!48421 (_ BitVec 32)) (x!130143 (_ BitVec 32))) (Undefined!11507) (MissingVacant!11507 (index!48422 (_ BitVec 32))) )
))
(declare-fun lt!632914 () SeekEntryResult!11507)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97897 (_ BitVec 32)) SeekEntryResult!11507)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440382 (= res!972921 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47232 a!2862) j!93) mask!2687) (select (arr!47232 a!2862) j!93) a!2862 mask!2687) lt!632914))))

(assert (=> b!1440382 (= lt!632914 (Intermediate!11507 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1440383 () Bool)

(declare-fun res!972920 () Bool)

(assert (=> b!1440383 (=> (not res!972920) (not e!812175))))

(assert (=> b!1440383 (= res!972920 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47232 a!2862) j!93) a!2862 mask!2687) lt!632914))))

(declare-fun b!1440384 () Bool)

(assert (=> b!1440384 (= e!812175 false)))

(declare-fun lt!632913 () SeekEntryResult!11507)

(assert (=> b!1440384 (= lt!632913 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47232 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47232 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97898 (store (arr!47232 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47783 a!2862)) mask!2687))))

(declare-fun b!1440385 () Bool)

(declare-fun res!972918 () Bool)

(assert (=> b!1440385 (=> (not res!972918) (not e!812176))))

(declare-datatypes ((List!33913 0))(
  ( (Nil!33910) (Cons!33909 (h!35259 (_ BitVec 64)) (t!48614 List!33913)) )
))
(declare-fun arrayNoDuplicates!0 (array!97897 (_ BitVec 32) List!33913) Bool)

(assert (=> b!1440385 (= res!972918 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33910))))

(assert (= (and start!124532 res!972914) b!1440377))

(assert (= (and b!1440377 res!972913) b!1440378))

(assert (= (and b!1440378 res!972917) b!1440380))

(assert (= (and b!1440380 res!972915) b!1440379))

(assert (= (and b!1440379 res!972916) b!1440385))

(assert (= (and b!1440385 res!972918) b!1440381))

(assert (= (and b!1440381 res!972919) b!1440382))

(assert (= (and b!1440382 res!972921) b!1440383))

(assert (= (and b!1440383 res!972920) b!1440384))

(declare-fun m!1329631 () Bool)

(assert (=> b!1440379 m!1329631))

(declare-fun m!1329633 () Bool)

(assert (=> b!1440383 m!1329633))

(assert (=> b!1440383 m!1329633))

(declare-fun m!1329635 () Bool)

(assert (=> b!1440383 m!1329635))

(declare-fun m!1329637 () Bool)

(assert (=> b!1440385 m!1329637))

(declare-fun m!1329639 () Bool)

(assert (=> b!1440384 m!1329639))

(declare-fun m!1329641 () Bool)

(assert (=> b!1440384 m!1329641))

(assert (=> b!1440384 m!1329641))

(declare-fun m!1329643 () Bool)

(assert (=> b!1440384 m!1329643))

(assert (=> b!1440384 m!1329643))

(assert (=> b!1440384 m!1329641))

(declare-fun m!1329645 () Bool)

(assert (=> b!1440384 m!1329645))

(declare-fun m!1329647 () Bool)

(assert (=> start!124532 m!1329647))

(declare-fun m!1329649 () Bool)

(assert (=> start!124532 m!1329649))

(declare-fun m!1329651 () Bool)

(assert (=> b!1440378 m!1329651))

(assert (=> b!1440378 m!1329651))

(declare-fun m!1329653 () Bool)

(assert (=> b!1440378 m!1329653))

(assert (=> b!1440381 m!1329639))

(declare-fun m!1329655 () Bool)

(assert (=> b!1440381 m!1329655))

(assert (=> b!1440380 m!1329633))

(assert (=> b!1440380 m!1329633))

(declare-fun m!1329657 () Bool)

(assert (=> b!1440380 m!1329657))

(assert (=> b!1440382 m!1329633))

(assert (=> b!1440382 m!1329633))

(declare-fun m!1329659 () Bool)

(assert (=> b!1440382 m!1329659))

(assert (=> b!1440382 m!1329659))

(assert (=> b!1440382 m!1329633))

(declare-fun m!1329661 () Bool)

(assert (=> b!1440382 m!1329661))

(push 1)

