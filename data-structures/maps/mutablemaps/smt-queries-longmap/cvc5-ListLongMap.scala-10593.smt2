; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124738 () Bool)

(assert start!124738)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun b!1445118 () Bool)

(declare-fun lt!634365 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!11610 0))(
  ( (MissingZero!11610 (index!48831 (_ BitVec 32))) (Found!11610 (index!48832 (_ BitVec 32))) (Intermediate!11610 (undefined!12422 Bool) (index!48833 (_ BitVec 32)) (x!130526 (_ BitVec 32))) (Undefined!11610) (MissingVacant!11610 (index!48834 (_ BitVec 32))) )
))
(declare-fun lt!634366 () SeekEntryResult!11610)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-datatypes ((array!98103 0))(
  ( (array!98104 (arr!47335 (Array (_ BitVec 32) (_ BitVec 64))) (size!47886 (_ BitVec 32))) )
))
(declare-fun lt!634368 () array!98103)

(declare-fun e!814133 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98103 (_ BitVec 32)) SeekEntryResult!11610)

(assert (=> b!1445118 (= e!814133 (= lt!634366 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!634365 lt!634368 mask!2687)))))

(declare-fun b!1445119 () Bool)

(declare-fun res!977129 () Bool)

(declare-fun e!814127 () Bool)

(assert (=> b!1445119 (=> (not res!977129) (not e!814127))))

(declare-fun lt!634369 () SeekEntryResult!11610)

(declare-fun a!2862 () array!98103)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1445119 (= res!977129 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47335 a!2862) j!93) a!2862 mask!2687) lt!634369))))

(declare-fun b!1445120 () Bool)

(declare-fun res!977133 () Bool)

(declare-fun e!814131 () Bool)

(assert (=> b!1445120 (=> (not res!977133) (not e!814131))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98103 (_ BitVec 32)) SeekEntryResult!11610)

(assert (=> b!1445120 (= res!977133 (= (seekEntryOrOpen!0 (select (arr!47335 a!2862) j!93) a!2862 mask!2687) (Found!11610 j!93)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1445121 () Bool)

(assert (=> b!1445121 (= e!814131 (or (= (select (arr!47335 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47335 a!2862) intermediateBeforeIndex!19) (select (arr!47335 a!2862) j!93))))))

(declare-fun b!1445122 () Bool)

(declare-fun res!977137 () Bool)

(declare-fun e!814130 () Bool)

(assert (=> b!1445122 (=> (not res!977137) (not e!814130))))

(declare-datatypes ((List!34016 0))(
  ( (Nil!34013) (Cons!34012 (h!35362 (_ BitVec 64)) (t!48717 List!34016)) )
))
(declare-fun arrayNoDuplicates!0 (array!98103 (_ BitVec 32) List!34016) Bool)

(assert (=> b!1445122 (= res!977137 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34013))))

(declare-fun b!1445123 () Bool)

(declare-fun res!977130 () Bool)

(assert (=> b!1445123 (=> (not res!977130) (not e!814130))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1445123 (= res!977130 (validKeyInArray!0 (select (arr!47335 a!2862) j!93)))))

(declare-fun b!1445124 () Bool)

(declare-fun e!814128 () Bool)

(assert (=> b!1445124 (= e!814130 e!814128)))

(declare-fun res!977142 () Bool)

(assert (=> b!1445124 (=> (not res!977142) (not e!814128))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1445124 (= res!977142 (= (select (store (arr!47335 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1445124 (= lt!634368 (array!98104 (store (arr!47335 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47886 a!2862)))))

(declare-fun b!1445125 () Bool)

(declare-fun res!977138 () Bool)

(assert (=> b!1445125 (=> (not res!977138) (not e!814130))))

(assert (=> b!1445125 (= res!977138 (and (= (size!47886 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47886 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47886 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1445126 () Bool)

(declare-fun res!977128 () Bool)

(assert (=> b!1445126 (=> (not res!977128) (not e!814130))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98103 (_ BitVec 32)) Bool)

(assert (=> b!1445126 (= res!977128 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1445127 () Bool)

(declare-fun res!977131 () Bool)

(declare-fun e!814132 () Bool)

(assert (=> b!1445127 (=> (not res!977131) (not e!814132))))

(assert (=> b!1445127 (= res!977131 e!814133)))

(declare-fun c!133508 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1445127 (= c!133508 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1445128 () Bool)

(declare-fun res!977140 () Bool)

(assert (=> b!1445128 (=> (not res!977140) (not e!814130))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1445128 (= res!977140 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47886 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47886 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47886 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1445129 () Bool)

(assert (=> b!1445129 (= e!814132 (not true))))

(assert (=> b!1445129 e!814131))

(declare-fun res!977139 () Bool)

(assert (=> b!1445129 (=> (not res!977139) (not e!814131))))

(assert (=> b!1445129 (= res!977139 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48664 0))(
  ( (Unit!48665) )
))
(declare-fun lt!634367 () Unit!48664)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98103 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48664)

(assert (=> b!1445129 (= lt!634367 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1445131 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98103 (_ BitVec 32)) SeekEntryResult!11610)

(assert (=> b!1445131 (= e!814133 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!634365 lt!634368 mask!2687) (seekEntryOrOpen!0 lt!634365 lt!634368 mask!2687)))))

(declare-fun res!977132 () Bool)

(assert (=> start!124738 (=> (not res!977132) (not e!814130))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124738 (= res!977132 (validMask!0 mask!2687))))

(assert (=> start!124738 e!814130))

(assert (=> start!124738 true))

(declare-fun array_inv!36280 (array!98103) Bool)

(assert (=> start!124738 (array_inv!36280 a!2862)))

(declare-fun b!1445130 () Bool)

(assert (=> b!1445130 (= e!814127 e!814132)))

(declare-fun res!977135 () Bool)

(assert (=> b!1445130 (=> (not res!977135) (not e!814132))))

(assert (=> b!1445130 (= res!977135 (= lt!634366 (Intermediate!11610 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1445130 (= lt!634366 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!634365 mask!2687) lt!634365 lt!634368 mask!2687))))

(assert (=> b!1445130 (= lt!634365 (select (store (arr!47335 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1445132 () Bool)

(declare-fun res!977141 () Bool)

(assert (=> b!1445132 (=> (not res!977141) (not e!814130))))

(assert (=> b!1445132 (= res!977141 (validKeyInArray!0 (select (arr!47335 a!2862) i!1006)))))

(declare-fun b!1445133 () Bool)

(declare-fun res!977134 () Bool)

(assert (=> b!1445133 (=> (not res!977134) (not e!814132))))

(assert (=> b!1445133 (= res!977134 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1445134 () Bool)

(assert (=> b!1445134 (= e!814128 e!814127)))

(declare-fun res!977136 () Bool)

(assert (=> b!1445134 (=> (not res!977136) (not e!814127))))

(assert (=> b!1445134 (= res!977136 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47335 a!2862) j!93) mask!2687) (select (arr!47335 a!2862) j!93) a!2862 mask!2687) lt!634369))))

(assert (=> b!1445134 (= lt!634369 (Intermediate!11610 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124738 res!977132) b!1445125))

(assert (= (and b!1445125 res!977138) b!1445132))

(assert (= (and b!1445132 res!977141) b!1445123))

(assert (= (and b!1445123 res!977130) b!1445126))

(assert (= (and b!1445126 res!977128) b!1445122))

(assert (= (and b!1445122 res!977137) b!1445128))

(assert (= (and b!1445128 res!977140) b!1445124))

(assert (= (and b!1445124 res!977142) b!1445134))

(assert (= (and b!1445134 res!977136) b!1445119))

(assert (= (and b!1445119 res!977129) b!1445130))

(assert (= (and b!1445130 res!977135) b!1445127))

(assert (= (and b!1445127 c!133508) b!1445118))

(assert (= (and b!1445127 (not c!133508)) b!1445131))

(assert (= (and b!1445127 res!977131) b!1445133))

(assert (= (and b!1445133 res!977134) b!1445129))

(assert (= (and b!1445129 res!977139) b!1445120))

(assert (= (and b!1445120 res!977133) b!1445121))

(declare-fun m!1334145 () Bool)

(assert (=> b!1445132 m!1334145))

(assert (=> b!1445132 m!1334145))

(declare-fun m!1334147 () Bool)

(assert (=> b!1445132 m!1334147))

(declare-fun m!1334149 () Bool)

(assert (=> b!1445130 m!1334149))

(assert (=> b!1445130 m!1334149))

(declare-fun m!1334151 () Bool)

(assert (=> b!1445130 m!1334151))

(declare-fun m!1334153 () Bool)

(assert (=> b!1445130 m!1334153))

(declare-fun m!1334155 () Bool)

(assert (=> b!1445130 m!1334155))

(declare-fun m!1334157 () Bool)

(assert (=> b!1445120 m!1334157))

(assert (=> b!1445120 m!1334157))

(declare-fun m!1334159 () Bool)

(assert (=> b!1445120 m!1334159))

(declare-fun m!1334161 () Bool)

(assert (=> b!1445131 m!1334161))

(declare-fun m!1334163 () Bool)

(assert (=> b!1445131 m!1334163))

(assert (=> b!1445134 m!1334157))

(assert (=> b!1445134 m!1334157))

(declare-fun m!1334165 () Bool)

(assert (=> b!1445134 m!1334165))

(assert (=> b!1445134 m!1334165))

(assert (=> b!1445134 m!1334157))

(declare-fun m!1334167 () Bool)

(assert (=> b!1445134 m!1334167))

(declare-fun m!1334169 () Bool)

(assert (=> b!1445121 m!1334169))

(assert (=> b!1445121 m!1334157))

(declare-fun m!1334171 () Bool)

(assert (=> b!1445129 m!1334171))

(declare-fun m!1334173 () Bool)

(assert (=> b!1445129 m!1334173))

(assert (=> b!1445123 m!1334157))

(assert (=> b!1445123 m!1334157))

(declare-fun m!1334175 () Bool)

(assert (=> b!1445123 m!1334175))

(assert (=> b!1445124 m!1334153))

(declare-fun m!1334177 () Bool)

(assert (=> b!1445124 m!1334177))

(declare-fun m!1334179 () Bool)

(assert (=> b!1445118 m!1334179))

(assert (=> b!1445119 m!1334157))

(assert (=> b!1445119 m!1334157))

(declare-fun m!1334181 () Bool)

(assert (=> b!1445119 m!1334181))

(declare-fun m!1334183 () Bool)

(assert (=> start!124738 m!1334183))

(declare-fun m!1334185 () Bool)

(assert (=> start!124738 m!1334185))

(declare-fun m!1334187 () Bool)

(assert (=> b!1445122 m!1334187))

(declare-fun m!1334189 () Bool)

(assert (=> b!1445126 m!1334189))

(push 1)

