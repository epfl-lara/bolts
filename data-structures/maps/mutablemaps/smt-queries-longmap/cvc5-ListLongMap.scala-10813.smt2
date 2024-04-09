; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126568 () Bool)

(assert start!126568)

(declare-fun lt!647671 () (_ BitVec 64))

(declare-fun x!665 () (_ BitVec 32))

(declare-datatypes ((array!99447 0))(
  ( (array!99448 (arr!47995 (Array (_ BitVec 32) (_ BitVec 64))) (size!48546 (_ BitVec 32))) )
))
(declare-fun lt!647673 () array!99447)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun e!832225 () Bool)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun b!1484273 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12258 0))(
  ( (MissingZero!12258 (index!51423 (_ BitVec 32))) (Found!12258 (index!51424 (_ BitVec 32))) (Intermediate!12258 (undefined!13070 Bool) (index!51425 (_ BitVec 32)) (x!133009 (_ BitVec 32))) (Undefined!12258) (MissingVacant!12258 (index!51426 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99447 (_ BitVec 32)) SeekEntryResult!12258)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99447 (_ BitVec 32)) SeekEntryResult!12258)

(assert (=> b!1484273 (= e!832225 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647671 lt!647673 mask!2687) (seekEntryOrOpen!0 lt!647671 lt!647673 mask!2687)))))

(declare-fun b!1484274 () Bool)

(declare-fun res!1009174 () Bool)

(declare-fun e!832223 () Bool)

(assert (=> b!1484274 (=> (not res!1009174) (not e!832223))))

(declare-fun a!2862 () array!99447)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99447 (_ BitVec 32)) Bool)

(assert (=> b!1484274 (= res!1009174 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1484275 () Bool)

(declare-fun res!1009179 () Bool)

(assert (=> b!1484275 (=> (not res!1009179) (not e!832223))))

(declare-datatypes ((List!34676 0))(
  ( (Nil!34673) (Cons!34672 (h!36046 (_ BitVec 64)) (t!49377 List!34676)) )
))
(declare-fun arrayNoDuplicates!0 (array!99447 (_ BitVec 32) List!34676) Bool)

(assert (=> b!1484275 (= res!1009179 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34673))))

(declare-fun res!1009183 () Bool)

(assert (=> start!126568 (=> (not res!1009183) (not e!832223))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126568 (= res!1009183 (validMask!0 mask!2687))))

(assert (=> start!126568 e!832223))

(assert (=> start!126568 true))

(declare-fun array_inv!36940 (array!99447) Bool)

(assert (=> start!126568 (array_inv!36940 a!2862)))

(declare-fun b!1484276 () Bool)

(declare-fun res!1009172 () Bool)

(declare-fun e!832222 () Bool)

(assert (=> b!1484276 (=> (not res!1009172) (not e!832222))))

(assert (=> b!1484276 (= res!1009172 e!832225)))

(declare-fun c!137078 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1484276 (= c!137078 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1484277 () Bool)

(declare-fun e!832220 () Bool)

(assert (=> b!1484277 (= e!832222 (not e!832220))))

(declare-fun res!1009171 () Bool)

(assert (=> b!1484277 (=> res!1009171 e!832220)))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1484277 (= res!1009171 (or (and (= (select (arr!47995 a!2862) index!646) (select (store (arr!47995 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47995 a!2862) index!646) (select (arr!47995 a!2862) j!93))) (= (select (arr!47995 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun e!832226 () Bool)

(assert (=> b!1484277 e!832226))

(declare-fun res!1009169 () Bool)

(assert (=> b!1484277 (=> (not res!1009169) (not e!832226))))

(assert (=> b!1484277 (= res!1009169 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49804 0))(
  ( (Unit!49805) )
))
(declare-fun lt!647674 () Unit!49804)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99447 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49804)

(assert (=> b!1484277 (= lt!647674 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1484278 () Bool)

(declare-fun res!1009167 () Bool)

(assert (=> b!1484278 (=> (not res!1009167) (not e!832226))))

(assert (=> b!1484278 (= res!1009167 (= (seekEntryOrOpen!0 (select (arr!47995 a!2862) j!93) a!2862 mask!2687) (Found!12258 j!93)))))

(declare-fun b!1484279 () Bool)

(assert (=> b!1484279 (= e!832220 true)))

(declare-fun lt!647676 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484279 (= lt!647676 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1484280 () Bool)

(declare-fun res!1009185 () Bool)

(assert (=> b!1484280 (=> (not res!1009185) (not e!832222))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1484280 (= res!1009185 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1484281 () Bool)

(declare-fun res!1009184 () Bool)

(assert (=> b!1484281 (=> (not res!1009184) (not e!832223))))

(assert (=> b!1484281 (= res!1009184 (and (= (size!48546 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48546 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48546 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1484282 () Bool)

(declare-fun e!832228 () Bool)

(assert (=> b!1484282 (= e!832226 e!832228)))

(declare-fun res!1009175 () Bool)

(assert (=> b!1484282 (=> res!1009175 e!832228)))

(declare-fun lt!647672 () (_ BitVec 64))

(assert (=> b!1484282 (= res!1009175 (or (and (= (select (arr!47995 a!2862) index!646) lt!647672) (= (select (arr!47995 a!2862) index!646) (select (arr!47995 a!2862) j!93))) (= (select (arr!47995 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1484282 (= lt!647672 (select (store (arr!47995 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1484283 () Bool)

(declare-fun res!1009176 () Bool)

(assert (=> b!1484283 (=> (not res!1009176) (not e!832226))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(assert (=> b!1484283 (= res!1009176 (or (= (select (arr!47995 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47995 a!2862) intermediateBeforeIndex!19) (select (arr!47995 a!2862) j!93))))))

(declare-fun b!1484284 () Bool)

(declare-fun res!1009173 () Bool)

(assert (=> b!1484284 (=> (not res!1009173) (not e!832223))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1484284 (= res!1009173 (validKeyInArray!0 (select (arr!47995 a!2862) j!93)))))

(declare-fun b!1484285 () Bool)

(declare-fun res!1009181 () Bool)

(declare-fun e!832229 () Bool)

(assert (=> b!1484285 (=> (not res!1009181) (not e!832229))))

(declare-fun lt!647677 () SeekEntryResult!12258)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99447 (_ BitVec 32)) SeekEntryResult!12258)

(assert (=> b!1484285 (= res!1009181 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47995 a!2862) j!93) a!2862 mask!2687) lt!647677))))

(declare-fun b!1484286 () Bool)

(declare-fun e!832224 () Bool)

(assert (=> b!1484286 (= e!832224 e!832229)))

(declare-fun res!1009180 () Bool)

(assert (=> b!1484286 (=> (not res!1009180) (not e!832229))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1484286 (= res!1009180 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47995 a!2862) j!93) mask!2687) (select (arr!47995 a!2862) j!93) a!2862 mask!2687) lt!647677))))

(assert (=> b!1484286 (= lt!647677 (Intermediate!12258 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1484287 () Bool)

(assert (=> b!1484287 (= e!832229 e!832222)))

(declare-fun res!1009177 () Bool)

(assert (=> b!1484287 (=> (not res!1009177) (not e!832222))))

(declare-fun lt!647675 () SeekEntryResult!12258)

(assert (=> b!1484287 (= res!1009177 (= lt!647675 (Intermediate!12258 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1484287 (= lt!647675 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!647671 mask!2687) lt!647671 lt!647673 mask!2687))))

(assert (=> b!1484287 (= lt!647671 (select (store (arr!47995 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1484288 () Bool)

(declare-fun res!1009168 () Bool)

(assert (=> b!1484288 (=> (not res!1009168) (not e!832223))))

(assert (=> b!1484288 (= res!1009168 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48546 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48546 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48546 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1484289 () Bool)

(assert (=> b!1484289 (= e!832225 (= lt!647675 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!647671 lt!647673 mask!2687)))))

(declare-fun b!1484290 () Bool)

(declare-fun res!1009178 () Bool)

(assert (=> b!1484290 (=> (not res!1009178) (not e!832223))))

(assert (=> b!1484290 (= res!1009178 (validKeyInArray!0 (select (arr!47995 a!2862) i!1006)))))

(declare-fun b!1484291 () Bool)

(assert (=> b!1484291 (= e!832223 e!832224)))

(declare-fun res!1009170 () Bool)

(assert (=> b!1484291 (=> (not res!1009170) (not e!832224))))

(assert (=> b!1484291 (= res!1009170 (= (select (store (arr!47995 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1484291 (= lt!647673 (array!99448 (store (arr!47995 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48546 a!2862)))))

(declare-fun e!832227 () Bool)

(declare-fun b!1484292 () Bool)

(assert (=> b!1484292 (= e!832227 (= (seekEntryOrOpen!0 lt!647671 lt!647673 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!647671 lt!647673 mask!2687)))))

(declare-fun b!1484293 () Bool)

(assert (=> b!1484293 (= e!832228 e!832227)))

(declare-fun res!1009182 () Bool)

(assert (=> b!1484293 (=> (not res!1009182) (not e!832227))))

(assert (=> b!1484293 (= res!1009182 (and (= index!646 intermediateAfterIndex!19) (= lt!647672 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!126568 res!1009183) b!1484281))

(assert (= (and b!1484281 res!1009184) b!1484290))

(assert (= (and b!1484290 res!1009178) b!1484284))

(assert (= (and b!1484284 res!1009173) b!1484274))

(assert (= (and b!1484274 res!1009174) b!1484275))

(assert (= (and b!1484275 res!1009179) b!1484288))

(assert (= (and b!1484288 res!1009168) b!1484291))

(assert (= (and b!1484291 res!1009170) b!1484286))

(assert (= (and b!1484286 res!1009180) b!1484285))

(assert (= (and b!1484285 res!1009181) b!1484287))

(assert (= (and b!1484287 res!1009177) b!1484276))

(assert (= (and b!1484276 c!137078) b!1484289))

(assert (= (and b!1484276 (not c!137078)) b!1484273))

(assert (= (and b!1484276 res!1009172) b!1484280))

(assert (= (and b!1484280 res!1009185) b!1484277))

(assert (= (and b!1484277 res!1009169) b!1484278))

(assert (= (and b!1484278 res!1009167) b!1484283))

(assert (= (and b!1484283 res!1009176) b!1484282))

(assert (= (and b!1484282 (not res!1009175)) b!1484293))

(assert (= (and b!1484293 res!1009182) b!1484292))

(assert (= (and b!1484277 (not res!1009171)) b!1484279))

(declare-fun m!1369653 () Bool)

(assert (=> b!1484274 m!1369653))

(declare-fun m!1369655 () Bool)

(assert (=> b!1484282 m!1369655))

(declare-fun m!1369657 () Bool)

(assert (=> b!1484282 m!1369657))

(declare-fun m!1369659 () Bool)

(assert (=> b!1484282 m!1369659))

(declare-fun m!1369661 () Bool)

(assert (=> b!1484282 m!1369661))

(declare-fun m!1369663 () Bool)

(assert (=> b!1484273 m!1369663))

(declare-fun m!1369665 () Bool)

(assert (=> b!1484273 m!1369665))

(assert (=> b!1484291 m!1369659))

(declare-fun m!1369667 () Bool)

(assert (=> b!1484291 m!1369667))

(declare-fun m!1369669 () Bool)

(assert (=> b!1484279 m!1369669))

(declare-fun m!1369671 () Bool)

(assert (=> b!1484275 m!1369671))

(assert (=> b!1484284 m!1369657))

(assert (=> b!1484284 m!1369657))

(declare-fun m!1369673 () Bool)

(assert (=> b!1484284 m!1369673))

(declare-fun m!1369675 () Bool)

(assert (=> b!1484289 m!1369675))

(assert (=> b!1484292 m!1369665))

(assert (=> b!1484292 m!1369663))

(assert (=> b!1484278 m!1369657))

(assert (=> b!1484278 m!1369657))

(declare-fun m!1369677 () Bool)

(assert (=> b!1484278 m!1369677))

(declare-fun m!1369679 () Bool)

(assert (=> b!1484287 m!1369679))

(assert (=> b!1484287 m!1369679))

(declare-fun m!1369681 () Bool)

(assert (=> b!1484287 m!1369681))

(assert (=> b!1484287 m!1369659))

(declare-fun m!1369683 () Bool)

(assert (=> b!1484287 m!1369683))

(assert (=> b!1484285 m!1369657))

(assert (=> b!1484285 m!1369657))

(declare-fun m!1369685 () Bool)

(assert (=> b!1484285 m!1369685))

(assert (=> b!1484286 m!1369657))

(assert (=> b!1484286 m!1369657))

(declare-fun m!1369687 () Bool)

(assert (=> b!1484286 m!1369687))

(assert (=> b!1484286 m!1369687))

(assert (=> b!1484286 m!1369657))

(declare-fun m!1369689 () Bool)

(assert (=> b!1484286 m!1369689))

(declare-fun m!1369691 () Bool)

(assert (=> b!1484290 m!1369691))

(assert (=> b!1484290 m!1369691))

(declare-fun m!1369693 () Bool)

(assert (=> b!1484290 m!1369693))

(declare-fun m!1369695 () Bool)

(assert (=> start!126568 m!1369695))

(declare-fun m!1369697 () Bool)

(assert (=> start!126568 m!1369697))

(declare-fun m!1369699 () Bool)

(assert (=> b!1484283 m!1369699))

(assert (=> b!1484283 m!1369657))

(declare-fun m!1369701 () Bool)

(assert (=> b!1484277 m!1369701))

(assert (=> b!1484277 m!1369659))

(assert (=> b!1484277 m!1369661))

(assert (=> b!1484277 m!1369655))

(declare-fun m!1369703 () Bool)

(assert (=> b!1484277 m!1369703))

(assert (=> b!1484277 m!1369657))

(push 1)

