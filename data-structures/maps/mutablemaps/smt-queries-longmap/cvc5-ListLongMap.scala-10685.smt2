; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125290 () Bool)

(assert start!125290)

(declare-fun b!1461571 () Bool)

(declare-fun e!821696 () Bool)

(declare-fun e!821694 () Bool)

(assert (=> b!1461571 (= e!821696 e!821694)))

(declare-fun res!991270 () Bool)

(assert (=> b!1461571 (=> res!991270 e!821694)))

(declare-datatypes ((array!98655 0))(
  ( (array!98656 (arr!47611 (Array (_ BitVec 32) (_ BitVec 64))) (size!48162 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98655)

(declare-fun lt!640139 () (_ BitVec 32))

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1461571 (= res!991270 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640139 #b00000000000000000000000000000000) (bvsge lt!640139 (size!48162 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461571 (= lt!640139 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1461572 () Bool)

(declare-fun res!991271 () Bool)

(declare-fun e!821693 () Bool)

(assert (=> b!1461572 (=> (not res!991271) (not e!821693))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1461572 (= res!991271 (validKeyInArray!0 (select (arr!47611 a!2862) j!93)))))

(declare-fun b!1461573 () Bool)

(declare-fun e!821700 () Bool)

(declare-fun e!821702 () Bool)

(assert (=> b!1461573 (= e!821700 e!821702)))

(declare-fun res!991261 () Bool)

(assert (=> b!1461573 (=> (not res!991261) (not e!821702))))

(declare-datatypes ((SeekEntryResult!11886 0))(
  ( (MissingZero!11886 (index!49935 (_ BitVec 32))) (Found!11886 (index!49936 (_ BitVec 32))) (Intermediate!11886 (undefined!12698 Bool) (index!49937 (_ BitVec 32)) (x!131538 (_ BitVec 32))) (Undefined!11886) (MissingVacant!11886 (index!49938 (_ BitVec 32))) )
))
(declare-fun lt!640142 () SeekEntryResult!11886)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98655 (_ BitVec 32)) SeekEntryResult!11886)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1461573 (= res!991261 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47611 a!2862) j!93) mask!2687) (select (arr!47611 a!2862) j!93) a!2862 mask!2687) lt!640142))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1461573 (= lt!640142 (Intermediate!11886 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1461574 () Bool)

(declare-fun e!821697 () Bool)

(assert (=> b!1461574 (= e!821697 (not e!821696))))

(declare-fun res!991259 () Bool)

(assert (=> b!1461574 (=> res!991259 e!821696)))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1461574 (= res!991259 (or (and (= (select (arr!47611 a!2862) index!646) (select (store (arr!47611 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47611 a!2862) index!646) (select (arr!47611 a!2862) j!93))) (= (select (arr!47611 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!821701 () Bool)

(assert (=> b!1461574 e!821701))

(declare-fun res!991269 () Bool)

(assert (=> b!1461574 (=> (not res!991269) (not e!821701))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98655 (_ BitVec 32)) Bool)

(assert (=> b!1461574 (= res!991269 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49216 0))(
  ( (Unit!49217) )
))
(declare-fun lt!640138 () Unit!49216)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98655 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49216)

(assert (=> b!1461574 (= lt!640138 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1461575 () Bool)

(declare-fun res!991264 () Bool)

(assert (=> b!1461575 (=> (not res!991264) (not e!821693))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1461575 (= res!991264 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48162 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48162 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48162 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1461576 () Bool)

(declare-fun lt!640143 () (_ BitVec 64))

(declare-fun lt!640144 () array!98655)

(declare-fun lt!640140 () SeekEntryResult!11886)

(declare-fun e!821695 () Bool)

(assert (=> b!1461576 (= e!821695 (= lt!640140 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640143 lt!640144 mask!2687)))))

(declare-fun b!1461577 () Bool)

(declare-fun res!991256 () Bool)

(assert (=> b!1461577 (=> (not res!991256) (not e!821693))))

(declare-datatypes ((List!34292 0))(
  ( (Nil!34289) (Cons!34288 (h!35638 (_ BitVec 64)) (t!48993 List!34292)) )
))
(declare-fun arrayNoDuplicates!0 (array!98655 (_ BitVec 32) List!34292) Bool)

(assert (=> b!1461577 (= res!991256 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34289))))

(declare-fun e!821699 () Bool)

(declare-fun b!1461578 () Bool)

(assert (=> b!1461578 (= e!821699 (not (= lt!640140 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640139 lt!640143 lt!640144 mask!2687))))))

(declare-fun b!1461579 () Bool)

(declare-fun res!991263 () Bool)

(assert (=> b!1461579 (=> (not res!991263) (not e!821697))))

(assert (=> b!1461579 (= res!991263 e!821695)))

(declare-fun c!134671 () Bool)

(assert (=> b!1461579 (= c!134671 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1461580 () Bool)

(declare-fun res!991266 () Bool)

(assert (=> b!1461580 (=> (not res!991266) (not e!821693))))

(assert (=> b!1461580 (= res!991266 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1461581 () Bool)

(declare-fun res!991255 () Bool)

(assert (=> b!1461581 (=> (not res!991255) (not e!821701))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98655 (_ BitVec 32)) SeekEntryResult!11886)

(assert (=> b!1461581 (= res!991255 (= (seekEntryOrOpen!0 (select (arr!47611 a!2862) j!93) a!2862 mask!2687) (Found!11886 j!93)))))

(declare-fun b!1461582 () Bool)

(declare-fun res!991267 () Bool)

(assert (=> b!1461582 (=> (not res!991267) (not e!821702))))

(assert (=> b!1461582 (= res!991267 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47611 a!2862) j!93) a!2862 mask!2687) lt!640142))))

(declare-fun b!1461583 () Bool)

(assert (=> b!1461583 (= e!821701 (or (= (select (arr!47611 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47611 a!2862) intermediateBeforeIndex!19) (select (arr!47611 a!2862) j!93))))))

(declare-fun res!991262 () Bool)

(assert (=> start!125290 (=> (not res!991262) (not e!821693))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125290 (= res!991262 (validMask!0 mask!2687))))

(assert (=> start!125290 e!821693))

(assert (=> start!125290 true))

(declare-fun array_inv!36556 (array!98655) Bool)

(assert (=> start!125290 (array_inv!36556 a!2862)))

(declare-fun b!1461584 () Bool)

(declare-fun res!991268 () Bool)

(assert (=> b!1461584 (=> (not res!991268) (not e!821693))))

(assert (=> b!1461584 (= res!991268 (validKeyInArray!0 (select (arr!47611 a!2862) i!1006)))))

(declare-fun b!1461585 () Bool)

(assert (=> b!1461585 (= e!821693 e!821700)))

(declare-fun res!991265 () Bool)

(assert (=> b!1461585 (=> (not res!991265) (not e!821700))))

(assert (=> b!1461585 (= res!991265 (= (select (store (arr!47611 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1461585 (= lt!640144 (array!98656 (store (arr!47611 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48162 a!2862)))))

(declare-fun b!1461586 () Bool)

(assert (=> b!1461586 (= e!821702 e!821697)))

(declare-fun res!991258 () Bool)

(assert (=> b!1461586 (=> (not res!991258) (not e!821697))))

(assert (=> b!1461586 (= res!991258 (= lt!640140 (Intermediate!11886 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1461586 (= lt!640140 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640143 mask!2687) lt!640143 lt!640144 mask!2687))))

(assert (=> b!1461586 (= lt!640143 (select (store (arr!47611 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1461587 () Bool)

(declare-fun res!991260 () Bool)

(assert (=> b!1461587 (=> (not res!991260) (not e!821697))))

(assert (=> b!1461587 (= res!991260 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1461588 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98655 (_ BitVec 32)) SeekEntryResult!11886)

(assert (=> b!1461588 (= e!821699 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640139 intermediateAfterIndex!19 lt!640143 lt!640144 mask!2687) (seekEntryOrOpen!0 lt!640143 lt!640144 mask!2687))))))

(declare-fun b!1461589 () Bool)

(declare-fun res!991257 () Bool)

(assert (=> b!1461589 (=> (not res!991257) (not e!821693))))

(assert (=> b!1461589 (= res!991257 (and (= (size!48162 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48162 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48162 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1461590 () Bool)

(assert (=> b!1461590 (= e!821694 true)))

(declare-fun lt!640141 () Bool)

(assert (=> b!1461590 (= lt!640141 e!821699)))

(declare-fun c!134672 () Bool)

(assert (=> b!1461590 (= c!134672 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1461591 () Bool)

(assert (=> b!1461591 (= e!821695 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640143 lt!640144 mask!2687) (seekEntryOrOpen!0 lt!640143 lt!640144 mask!2687)))))

(declare-fun b!1461592 () Bool)

(declare-fun res!991272 () Bool)

(assert (=> b!1461592 (=> res!991272 e!821694)))

(assert (=> b!1461592 (= res!991272 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640139 (select (arr!47611 a!2862) j!93) a!2862 mask!2687) lt!640142)))))

(assert (= (and start!125290 res!991262) b!1461589))

(assert (= (and b!1461589 res!991257) b!1461584))

(assert (= (and b!1461584 res!991268) b!1461572))

(assert (= (and b!1461572 res!991271) b!1461580))

(assert (= (and b!1461580 res!991266) b!1461577))

(assert (= (and b!1461577 res!991256) b!1461575))

(assert (= (and b!1461575 res!991264) b!1461585))

(assert (= (and b!1461585 res!991265) b!1461573))

(assert (= (and b!1461573 res!991261) b!1461582))

(assert (= (and b!1461582 res!991267) b!1461586))

(assert (= (and b!1461586 res!991258) b!1461579))

(assert (= (and b!1461579 c!134671) b!1461576))

(assert (= (and b!1461579 (not c!134671)) b!1461591))

(assert (= (and b!1461579 res!991263) b!1461587))

(assert (= (and b!1461587 res!991260) b!1461574))

(assert (= (and b!1461574 res!991269) b!1461581))

(assert (= (and b!1461581 res!991255) b!1461583))

(assert (= (and b!1461574 (not res!991259)) b!1461571))

(assert (= (and b!1461571 (not res!991270)) b!1461592))

(assert (= (and b!1461592 (not res!991272)) b!1461590))

(assert (= (and b!1461590 c!134672) b!1461578))

(assert (= (and b!1461590 (not c!134672)) b!1461588))

(declare-fun m!1349181 () Bool)

(assert (=> b!1461578 m!1349181))

(declare-fun m!1349183 () Bool)

(assert (=> b!1461582 m!1349183))

(assert (=> b!1461582 m!1349183))

(declare-fun m!1349185 () Bool)

(assert (=> b!1461582 m!1349185))

(declare-fun m!1349187 () Bool)

(assert (=> b!1461577 m!1349187))

(assert (=> b!1461581 m!1349183))

(assert (=> b!1461581 m!1349183))

(declare-fun m!1349189 () Bool)

(assert (=> b!1461581 m!1349189))

(declare-fun m!1349191 () Bool)

(assert (=> b!1461571 m!1349191))

(assert (=> b!1461573 m!1349183))

(assert (=> b!1461573 m!1349183))

(declare-fun m!1349193 () Bool)

(assert (=> b!1461573 m!1349193))

(assert (=> b!1461573 m!1349193))

(assert (=> b!1461573 m!1349183))

(declare-fun m!1349195 () Bool)

(assert (=> b!1461573 m!1349195))

(declare-fun m!1349197 () Bool)

(assert (=> b!1461576 m!1349197))

(assert (=> b!1461592 m!1349183))

(assert (=> b!1461592 m!1349183))

(declare-fun m!1349199 () Bool)

(assert (=> b!1461592 m!1349199))

(declare-fun m!1349201 () Bool)

(assert (=> b!1461588 m!1349201))

(declare-fun m!1349203 () Bool)

(assert (=> b!1461588 m!1349203))

(declare-fun m!1349205 () Bool)

(assert (=> start!125290 m!1349205))

(declare-fun m!1349207 () Bool)

(assert (=> start!125290 m!1349207))

(declare-fun m!1349209 () Bool)

(assert (=> b!1461586 m!1349209))

(assert (=> b!1461586 m!1349209))

(declare-fun m!1349211 () Bool)

(assert (=> b!1461586 m!1349211))

(declare-fun m!1349213 () Bool)

(assert (=> b!1461586 m!1349213))

(declare-fun m!1349215 () Bool)

(assert (=> b!1461586 m!1349215))

(assert (=> b!1461572 m!1349183))

(assert (=> b!1461572 m!1349183))

(declare-fun m!1349217 () Bool)

(assert (=> b!1461572 m!1349217))

(assert (=> b!1461585 m!1349213))

(declare-fun m!1349219 () Bool)

(assert (=> b!1461585 m!1349219))

(declare-fun m!1349221 () Bool)

(assert (=> b!1461574 m!1349221))

(assert (=> b!1461574 m!1349213))

(declare-fun m!1349223 () Bool)

(assert (=> b!1461574 m!1349223))

(declare-fun m!1349225 () Bool)

(assert (=> b!1461574 m!1349225))

(declare-fun m!1349227 () Bool)

(assert (=> b!1461574 m!1349227))

(assert (=> b!1461574 m!1349183))

(declare-fun m!1349229 () Bool)

(assert (=> b!1461584 m!1349229))

(assert (=> b!1461584 m!1349229))

(declare-fun m!1349231 () Bool)

(assert (=> b!1461584 m!1349231))

(declare-fun m!1349233 () Bool)

(assert (=> b!1461583 m!1349233))

(assert (=> b!1461583 m!1349183))

(declare-fun m!1349235 () Bool)

(assert (=> b!1461580 m!1349235))

(declare-fun m!1349237 () Bool)

(assert (=> b!1461591 m!1349237))

(assert (=> b!1461591 m!1349203))

(push 1)

