; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124174 () Bool)

(assert start!124174)

(declare-fun b!1436919 () Bool)

(declare-fun res!969916 () Bool)

(declare-fun e!810796 () Bool)

(assert (=> b!1436919 (=> (not res!969916) (not e!810796))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97695 0))(
  ( (array!97696 (arr!47137 (Array (_ BitVec 32) (_ BitVec 64))) (size!47688 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97695)

(assert (=> b!1436919 (= res!969916 (and (= (size!47688 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47688 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47688 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1436920 () Bool)

(declare-fun res!969914 () Bool)

(assert (=> b!1436920 (=> (not res!969914) (not e!810796))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1436920 (= res!969914 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47688 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47688 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47688 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47137 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1436921 () Bool)

(declare-fun res!969918 () Bool)

(assert (=> b!1436921 (=> (not res!969918) (not e!810796))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1436921 (= res!969918 (validKeyInArray!0 (select (arr!47137 a!2862) i!1006)))))

(declare-fun b!1436922 () Bool)

(assert (=> b!1436922 (= e!810796 (and (bvsge mask!2687 #b00000000000000000000000000000000) (bvsge index!646 (bvadd #b00000000000000000000000000000001 mask!2687))))))

(declare-fun b!1436923 () Bool)

(declare-fun res!969912 () Bool)

(assert (=> b!1436923 (=> (not res!969912) (not e!810796))))

(declare-datatypes ((SeekEntryResult!11412 0))(
  ( (MissingZero!11412 (index!48039 (_ BitVec 32))) (Found!11412 (index!48040 (_ BitVec 32))) (Intermediate!11412 (undefined!12224 Bool) (index!48041 (_ BitVec 32)) (x!129776 (_ BitVec 32))) (Undefined!11412) (MissingVacant!11412 (index!48042 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97695 (_ BitVec 32)) SeekEntryResult!11412)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1436923 (= res!969912 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47137 a!2862) j!93) mask!2687) (select (arr!47137 a!2862) j!93) a!2862 mask!2687) (Intermediate!11412 false intermediateBeforeIndex!19 intermediateBeforeX!19)))))

(declare-fun res!969911 () Bool)

(assert (=> start!124174 (=> (not res!969911) (not e!810796))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124174 (= res!969911 (validMask!0 mask!2687))))

(assert (=> start!124174 e!810796))

(assert (=> start!124174 true))

(declare-fun array_inv!36082 (array!97695) Bool)

(assert (=> start!124174 (array_inv!36082 a!2862)))

(declare-fun b!1436924 () Bool)

(declare-fun res!969913 () Bool)

(assert (=> b!1436924 (=> (not res!969913) (not e!810796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97695 (_ BitVec 32)) Bool)

(assert (=> b!1436924 (= res!969913 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1436925 () Bool)

(declare-fun res!969915 () Bool)

(assert (=> b!1436925 (=> (not res!969915) (not e!810796))))

(assert (=> b!1436925 (= res!969915 (validKeyInArray!0 (select (arr!47137 a!2862) j!93)))))

(declare-fun b!1436926 () Bool)

(declare-fun res!969917 () Bool)

(assert (=> b!1436926 (=> (not res!969917) (not e!810796))))

(declare-datatypes ((List!33818 0))(
  ( (Nil!33815) (Cons!33814 (h!35152 (_ BitVec 64)) (t!48519 List!33818)) )
))
(declare-fun arrayNoDuplicates!0 (array!97695 (_ BitVec 32) List!33818) Bool)

(assert (=> b!1436926 (= res!969917 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33815))))

(assert (= (and start!124174 res!969911) b!1436919))

(assert (= (and b!1436919 res!969916) b!1436921))

(assert (= (and b!1436921 res!969918) b!1436925))

(assert (= (and b!1436925 res!969915) b!1436924))

(assert (= (and b!1436924 res!969913) b!1436926))

(assert (= (and b!1436926 res!969917) b!1436920))

(assert (= (and b!1436920 res!969914) b!1436923))

(assert (= (and b!1436923 res!969912) b!1436922))

(declare-fun m!1326285 () Bool)

(assert (=> b!1436925 m!1326285))

(assert (=> b!1436925 m!1326285))

(declare-fun m!1326287 () Bool)

(assert (=> b!1436925 m!1326287))

(declare-fun m!1326289 () Bool)

(assert (=> b!1436926 m!1326289))

(assert (=> b!1436923 m!1326285))

(assert (=> b!1436923 m!1326285))

(declare-fun m!1326291 () Bool)

(assert (=> b!1436923 m!1326291))

(assert (=> b!1436923 m!1326291))

(assert (=> b!1436923 m!1326285))

(declare-fun m!1326293 () Bool)

(assert (=> b!1436923 m!1326293))

(declare-fun m!1326295 () Bool)

(assert (=> start!124174 m!1326295))

(declare-fun m!1326297 () Bool)

(assert (=> start!124174 m!1326297))

(declare-fun m!1326299 () Bool)

(assert (=> b!1436920 m!1326299))

(declare-fun m!1326301 () Bool)

(assert (=> b!1436920 m!1326301))

(declare-fun m!1326303 () Bool)

(assert (=> b!1436921 m!1326303))

(assert (=> b!1436921 m!1326303))

(declare-fun m!1326305 () Bool)

(assert (=> b!1436921 m!1326305))

(declare-fun m!1326307 () Bool)

(assert (=> b!1436924 m!1326307))

(push 1)

(assert (not start!124174))

(assert (not b!1436925))

(assert (not b!1436923))

(assert (not b!1436921))

(assert (not b!1436924))

(assert (not b!1436926))

(check-sat)

(pop 1)

(push 1)

(check-sat)

