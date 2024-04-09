; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!125322 () Bool)

(assert start!125322)

(declare-fun b!1462627 () Bool)

(declare-fun res!992130 () Bool)

(declare-fun e!822176 () Bool)

(assert (=> b!1462627 (=> (not res!992130) (not e!822176))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!98687 0))(
  ( (array!98688 (arr!47627 (Array (_ BitVec 32) (_ BitVec 64))) (size!48178 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98687)

(assert (=> b!1462627 (= res!992130 (and (= (size!48178 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48178 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48178 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1462628 () Bool)

(declare-fun e!822181 () Bool)

(declare-fun e!822180 () Bool)

(assert (=> b!1462628 (= e!822181 e!822180)))

(declare-fun res!992125 () Bool)

(assert (=> b!1462628 (=> res!992125 e!822180)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!640475 () (_ BitVec 32))

(assert (=> b!1462628 (= res!992125 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640475 #b00000000000000000000000000000000) (bvsge lt!640475 (size!48178 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462628 (= lt!640475 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1462629 () Bool)

(declare-fun res!992135 () Bool)

(declare-fun e!822177 () Bool)

(assert (=> b!1462629 (=> (not res!992135) (not e!822177))))

(declare-datatypes ((SeekEntryResult!11902 0))(
  ( (MissingZero!11902 (index!49999 (_ BitVec 32))) (Found!11902 (index!50000 (_ BitVec 32))) (Intermediate!11902 (undefined!12714 Bool) (index!50001 (_ BitVec 32)) (x!131594 (_ BitVec 32))) (Undefined!11902) (MissingVacant!11902 (index!50002 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98687 (_ BitVec 32)) SeekEntryResult!11902)

(assert (=> b!1462629 (= res!992135 (= (seekEntryOrOpen!0 (select (arr!47627 a!2862) j!93) a!2862 mask!2687) (Found!11902 j!93)))))

(declare-fun b!1462630 () Bool)

(declare-fun res!992121 () Bool)

(assert (=> b!1462630 (=> (not res!992121) (not e!822176))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1462630 (= res!992121 (validKeyInArray!0 (select (arr!47627 a!2862) i!1006)))))

(declare-fun b!1462631 () Bool)

(assert (=> b!1462631 (= e!822180 true)))

(declare-fun lt!640479 () Bool)

(declare-fun e!822178 () Bool)

(assert (=> b!1462631 (= lt!640479 e!822178)))

(declare-fun c!134767 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1462631 (= c!134767 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1462633 () Bool)

(declare-fun res!992131 () Bool)

(assert (=> b!1462633 (=> res!992131 e!822180)))

(declare-fun lt!640477 () SeekEntryResult!11902)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98687 (_ BitVec 32)) SeekEntryResult!11902)

(assert (=> b!1462633 (= res!992131 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640475 (select (arr!47627 a!2862) j!93) a!2862 mask!2687) lt!640477)))))

(declare-fun b!1462634 () Bool)

(declare-fun lt!640480 () (_ BitVec 64))

(declare-fun e!822174 () Bool)

(declare-fun lt!640476 () array!98687)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98687 (_ BitVec 32)) SeekEntryResult!11902)

(assert (=> b!1462634 (= e!822174 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640480 lt!640476 mask!2687) (seekEntryOrOpen!0 lt!640480 lt!640476 mask!2687)))))

(declare-fun b!1462635 () Bool)

(declare-fun e!822179 () Bool)

(assert (=> b!1462635 (= e!822176 e!822179)))

(declare-fun res!992129 () Bool)

(assert (=> b!1462635 (=> (not res!992129) (not e!822179))))

(assert (=> b!1462635 (= res!992129 (= (select (store (arr!47627 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1462635 (= lt!640476 (array!98688 (store (arr!47627 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48178 a!2862)))))

(declare-fun b!1462636 () Bool)

(declare-fun res!992126 () Bool)

(declare-fun e!822173 () Bool)

(assert (=> b!1462636 (=> (not res!992126) (not e!822173))))

(assert (=> b!1462636 (= res!992126 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47627 a!2862) j!93) a!2862 mask!2687) lt!640477))))

(declare-fun b!1462637 () Bool)

(assert (=> b!1462637 (= e!822178 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640475 intermediateAfterIndex!19 lt!640480 lt!640476 mask!2687) (seekEntryOrOpen!0 lt!640480 lt!640476 mask!2687))))))

(declare-fun b!1462638 () Bool)

(declare-fun e!822182 () Bool)

(assert (=> b!1462638 (= e!822182 (not e!822181))))

(declare-fun res!992127 () Bool)

(assert (=> b!1462638 (=> res!992127 e!822181)))

(assert (=> b!1462638 (= res!992127 (or (and (= (select (arr!47627 a!2862) index!646) (select (store (arr!47627 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47627 a!2862) index!646) (select (arr!47627 a!2862) j!93))) (= (select (arr!47627 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1462638 e!822177))

(declare-fun res!992133 () Bool)

(assert (=> b!1462638 (=> (not res!992133) (not e!822177))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98687 (_ BitVec 32)) Bool)

(assert (=> b!1462638 (= res!992133 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49248 0))(
  ( (Unit!49249) )
))
(declare-fun lt!640474 () Unit!49248)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98687 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49248)

(assert (=> b!1462638 (= lt!640474 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1462639 () Bool)

(declare-fun res!992119 () Bool)

(assert (=> b!1462639 (=> (not res!992119) (not e!822176))))

(assert (=> b!1462639 (= res!992119 (validKeyInArray!0 (select (arr!47627 a!2862) j!93)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun b!1462640 () Bool)

(assert (=> b!1462640 (= e!822177 (or (= (select (arr!47627 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47627 a!2862) intermediateBeforeIndex!19) (select (arr!47627 a!2862) j!93))))))

(declare-fun b!1462641 () Bool)

(declare-fun res!992122 () Bool)

(assert (=> b!1462641 (=> (not res!992122) (not e!822182))))

(assert (=> b!1462641 (= res!992122 e!822174)))

(declare-fun c!134768 () Bool)

(assert (=> b!1462641 (= c!134768 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1462642 () Bool)

(declare-fun res!992132 () Bool)

(assert (=> b!1462642 (=> (not res!992132) (not e!822176))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1462642 (= res!992132 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48178 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48178 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48178 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!992128 () Bool)

(assert (=> start!125322 (=> (not res!992128) (not e!822176))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125322 (= res!992128 (validMask!0 mask!2687))))

(assert (=> start!125322 e!822176))

(assert (=> start!125322 true))

(declare-fun array_inv!36572 (array!98687) Bool)

(assert (=> start!125322 (array_inv!36572 a!2862)))

(declare-fun lt!640478 () SeekEntryResult!11902)

(declare-fun b!1462632 () Bool)

(assert (=> b!1462632 (= e!822178 (not (= lt!640478 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640475 lt!640480 lt!640476 mask!2687))))))

(declare-fun b!1462643 () Bool)

(assert (=> b!1462643 (= e!822174 (= lt!640478 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640480 lt!640476 mask!2687)))))

(declare-fun b!1462644 () Bool)

(declare-fun res!992120 () Bool)

(assert (=> b!1462644 (=> (not res!992120) (not e!822182))))

(assert (=> b!1462644 (= res!992120 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1462645 () Bool)

(assert (=> b!1462645 (= e!822179 e!822173)))

(declare-fun res!992134 () Bool)

(assert (=> b!1462645 (=> (not res!992134) (not e!822173))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462645 (= res!992134 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47627 a!2862) j!93) mask!2687) (select (arr!47627 a!2862) j!93) a!2862 mask!2687) lt!640477))))

(assert (=> b!1462645 (= lt!640477 (Intermediate!11902 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1462646 () Bool)

(declare-fun res!992124 () Bool)

(assert (=> b!1462646 (=> (not res!992124) (not e!822176))))

(assert (=> b!1462646 (= res!992124 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1462647 () Bool)

(declare-fun res!992123 () Bool)

(assert (=> b!1462647 (=> (not res!992123) (not e!822176))))

(declare-datatypes ((List!34308 0))(
  ( (Nil!34305) (Cons!34304 (h!35654 (_ BitVec 64)) (t!49009 List!34308)) )
))
(declare-fun arrayNoDuplicates!0 (array!98687 (_ BitVec 32) List!34308) Bool)

(assert (=> b!1462647 (= res!992123 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34305))))

(declare-fun b!1462648 () Bool)

(assert (=> b!1462648 (= e!822173 e!822182)))

(declare-fun res!992136 () Bool)

(assert (=> b!1462648 (=> (not res!992136) (not e!822182))))

(assert (=> b!1462648 (= res!992136 (= lt!640478 (Intermediate!11902 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1462648 (= lt!640478 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640480 mask!2687) lt!640480 lt!640476 mask!2687))))

(assert (=> b!1462648 (= lt!640480 (select (store (arr!47627 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(assert (= (and start!125322 res!992128) b!1462627))

(assert (= (and b!1462627 res!992130) b!1462630))

(assert (= (and b!1462630 res!992121) b!1462639))

(assert (= (and b!1462639 res!992119) b!1462646))

(assert (= (and b!1462646 res!992124) b!1462647))

(assert (= (and b!1462647 res!992123) b!1462642))

(assert (= (and b!1462642 res!992132) b!1462635))

(assert (= (and b!1462635 res!992129) b!1462645))

(assert (= (and b!1462645 res!992134) b!1462636))

(assert (= (and b!1462636 res!992126) b!1462648))

(assert (= (and b!1462648 res!992136) b!1462641))

(assert (= (and b!1462641 c!134768) b!1462643))

(assert (= (and b!1462641 (not c!134768)) b!1462634))

(assert (= (and b!1462641 res!992122) b!1462644))

(assert (= (and b!1462644 res!992120) b!1462638))

(assert (= (and b!1462638 res!992133) b!1462629))

(assert (= (and b!1462629 res!992135) b!1462640))

(assert (= (and b!1462638 (not res!992127)) b!1462628))

(assert (= (and b!1462628 (not res!992125)) b!1462633))

(assert (= (and b!1462633 (not res!992131)) b!1462631))

(assert (= (and b!1462631 c!134767) b!1462632))

(assert (= (and b!1462631 (not c!134767)) b!1462637))

(declare-fun m!1350109 () Bool)

(assert (=> b!1462640 m!1350109))

(declare-fun m!1350111 () Bool)

(assert (=> b!1462640 m!1350111))

(declare-fun m!1350113 () Bool)

(assert (=> b!1462634 m!1350113))

(declare-fun m!1350115 () Bool)

(assert (=> b!1462634 m!1350115))

(declare-fun m!1350117 () Bool)

(assert (=> b!1462630 m!1350117))

(assert (=> b!1462630 m!1350117))

(declare-fun m!1350119 () Bool)

(assert (=> b!1462630 m!1350119))

(declare-fun m!1350121 () Bool)

(assert (=> start!125322 m!1350121))

(declare-fun m!1350123 () Bool)

(assert (=> start!125322 m!1350123))

(declare-fun m!1350125 () Bool)

(assert (=> b!1462637 m!1350125))

(assert (=> b!1462637 m!1350115))

(declare-fun m!1350127 () Bool)

(assert (=> b!1462648 m!1350127))

(assert (=> b!1462648 m!1350127))

(declare-fun m!1350129 () Bool)

(assert (=> b!1462648 m!1350129))

(declare-fun m!1350131 () Bool)

(assert (=> b!1462648 m!1350131))

(declare-fun m!1350133 () Bool)

(assert (=> b!1462648 m!1350133))

(assert (=> b!1462636 m!1350111))

(assert (=> b!1462636 m!1350111))

(declare-fun m!1350135 () Bool)

(assert (=> b!1462636 m!1350135))

(declare-fun m!1350137 () Bool)

(assert (=> b!1462632 m!1350137))

(assert (=> b!1462645 m!1350111))

(assert (=> b!1462645 m!1350111))

(declare-fun m!1350139 () Bool)

(assert (=> b!1462645 m!1350139))

(assert (=> b!1462645 m!1350139))

(assert (=> b!1462645 m!1350111))

(declare-fun m!1350141 () Bool)

(assert (=> b!1462645 m!1350141))

(assert (=> b!1462639 m!1350111))

(assert (=> b!1462639 m!1350111))

(declare-fun m!1350143 () Bool)

(assert (=> b!1462639 m!1350143))

(declare-fun m!1350145 () Bool)

(assert (=> b!1462638 m!1350145))

(assert (=> b!1462638 m!1350131))

(declare-fun m!1350147 () Bool)

(assert (=> b!1462638 m!1350147))

(declare-fun m!1350149 () Bool)

(assert (=> b!1462638 m!1350149))

(declare-fun m!1350151 () Bool)

(assert (=> b!1462638 m!1350151))

(assert (=> b!1462638 m!1350111))

(assert (=> b!1462629 m!1350111))

(assert (=> b!1462629 m!1350111))

(declare-fun m!1350153 () Bool)

(assert (=> b!1462629 m!1350153))

(assert (=> b!1462635 m!1350131))

(declare-fun m!1350155 () Bool)

(assert (=> b!1462635 m!1350155))

(declare-fun m!1350157 () Bool)

(assert (=> b!1462628 m!1350157))

(assert (=> b!1462633 m!1350111))

(assert (=> b!1462633 m!1350111))

(declare-fun m!1350159 () Bool)

(assert (=> b!1462633 m!1350159))

(declare-fun m!1350161 () Bool)

(assert (=> b!1462643 m!1350161))

(declare-fun m!1350163 () Bool)

(assert (=> b!1462647 m!1350163))

(declare-fun m!1350165 () Bool)

(assert (=> b!1462646 m!1350165))

(check-sat (not b!1462646) (not b!1462647) (not start!125322) (not b!1462638) (not b!1462629) (not b!1462634) (not b!1462648) (not b!1462630) (not b!1462645) (not b!1462628) (not b!1462637) (not b!1462636) (not b!1462633) (not b!1462632) (not b!1462643) (not b!1462639))
(check-sat)
