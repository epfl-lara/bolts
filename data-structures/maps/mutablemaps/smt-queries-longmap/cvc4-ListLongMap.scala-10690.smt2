; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125324 () Bool)

(assert start!125324)

(declare-fun b!1462694 () Bool)

(declare-fun e!822212 () Bool)

(declare-fun e!822205 () Bool)

(assert (=> b!1462694 (= e!822212 e!822205)))

(declare-fun res!992176 () Bool)

(assert (=> b!1462694 (=> (not res!992176) (not e!822205))))

(declare-datatypes ((SeekEntryResult!11903 0))(
  ( (MissingZero!11903 (index!50003 (_ BitVec 32))) (Found!11903 (index!50004 (_ BitVec 32))) (Intermediate!11903 (undefined!12715 Bool) (index!50005 (_ BitVec 32)) (x!131595 (_ BitVec 32))) (Undefined!11903) (MissingVacant!11903 (index!50006 (_ BitVec 32))) )
))
(declare-fun lt!640499 () SeekEntryResult!11903)

(declare-datatypes ((array!98689 0))(
  ( (array!98690 (arr!47628 (Array (_ BitVec 32) (_ BitVec 64))) (size!48179 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!98689)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98689 (_ BitVec 32)) SeekEntryResult!11903)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462694 (= res!992176 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47628 a!2862) j!93) mask!2687) (select (arr!47628 a!2862) j!93) a!2862 mask!2687) lt!640499))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1462694 (= lt!640499 (Intermediate!11903 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1462695 () Bool)

(declare-fun res!992182 () Bool)

(assert (=> b!1462695 (=> (not res!992182) (not e!822205))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1462695 (= res!992182 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47628 a!2862) j!93) a!2862 mask!2687) lt!640499))))

(declare-fun b!1462696 () Bool)

(declare-fun e!822208 () Bool)

(assert (=> b!1462696 (= e!822208 true)))

(declare-fun lt!640500 () Bool)

(declare-fun e!822203 () Bool)

(assert (=> b!1462696 (= lt!640500 e!822203)))

(declare-fun c!134774 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1462696 (= c!134774 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun b!1462697 () Bool)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun lt!640498 () (_ BitVec 64))

(declare-fun e!822204 () Bool)

(declare-fun lt!640496 () array!98689)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98689 (_ BitVec 32)) SeekEntryResult!11903)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98689 (_ BitVec 32)) SeekEntryResult!11903)

(assert (=> b!1462697 (= e!822204 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!640498 lt!640496 mask!2687) (seekEntryOrOpen!0 lt!640498 lt!640496 mask!2687)))))

(declare-fun b!1462698 () Bool)

(declare-fun res!992190 () Bool)

(declare-fun e!822207 () Bool)

(assert (=> b!1462698 (=> (not res!992190) (not e!822207))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1462698 (= res!992190 (and (= (size!48179 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48179 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48179 a!2862)) (not (= i!1006 j!93))))))

(declare-fun lt!640495 () (_ BitVec 32))

(declare-fun b!1462699 () Bool)

(assert (=> b!1462699 (= e!822203 (not (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640495 intermediateAfterIndex!19 lt!640498 lt!640496 mask!2687) (seekEntryOrOpen!0 lt!640498 lt!640496 mask!2687))))))

(declare-fun b!1462700 () Bool)

(declare-fun lt!640497 () SeekEntryResult!11903)

(assert (=> b!1462700 (= e!822204 (= lt!640497 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!640498 lt!640496 mask!2687)))))

(declare-fun b!1462701 () Bool)

(declare-fun res!992175 () Bool)

(assert (=> b!1462701 (=> (not res!992175) (not e!822207))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1462701 (= res!992175 (validKeyInArray!0 (select (arr!47628 a!2862) i!1006)))))

(declare-fun b!1462702 () Bool)

(declare-fun e!822206 () Bool)

(assert (=> b!1462702 (= e!822206 (or (= (select (arr!47628 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47628 a!2862) intermediateBeforeIndex!19) (select (arr!47628 a!2862) j!93))))))

(declare-fun b!1462703 () Bool)

(assert (=> b!1462703 (= e!822207 e!822212)))

(declare-fun res!992183 () Bool)

(assert (=> b!1462703 (=> (not res!992183) (not e!822212))))

(assert (=> b!1462703 (= res!992183 (= (select (store (arr!47628 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1462703 (= lt!640496 (array!98690 (store (arr!47628 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48179 a!2862)))))

(declare-fun b!1462704 () Bool)

(declare-fun res!992188 () Bool)

(assert (=> b!1462704 (=> (not res!992188) (not e!822207))))

(assert (=> b!1462704 (= res!992188 (validKeyInArray!0 (select (arr!47628 a!2862) j!93)))))

(declare-fun b!1462705 () Bool)

(declare-fun res!992173 () Bool)

(assert (=> b!1462705 (=> (not res!992173) (not e!822207))))

(declare-datatypes ((List!34309 0))(
  ( (Nil!34306) (Cons!34305 (h!35655 (_ BitVec 64)) (t!49010 List!34309)) )
))
(declare-fun arrayNoDuplicates!0 (array!98689 (_ BitVec 32) List!34309) Bool)

(assert (=> b!1462705 (= res!992173 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34306))))

(declare-fun b!1462706 () Bool)

(declare-fun res!992181 () Bool)

(declare-fun e!822209 () Bool)

(assert (=> b!1462706 (=> (not res!992181) (not e!822209))))

(assert (=> b!1462706 (= res!992181 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1462707 () Bool)

(assert (=> b!1462707 (= e!822205 e!822209)))

(declare-fun res!992187 () Bool)

(assert (=> b!1462707 (=> (not res!992187) (not e!822209))))

(assert (=> b!1462707 (= res!992187 (= lt!640497 (Intermediate!11903 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1462707 (= lt!640497 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!640498 mask!2687) lt!640498 lt!640496 mask!2687))))

(assert (=> b!1462707 (= lt!640498 (select (store (arr!47628 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1462708 () Bool)

(assert (=> b!1462708 (= e!822203 (not (= lt!640497 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640495 lt!640498 lt!640496 mask!2687))))))

(declare-fun b!1462709 () Bool)

(declare-fun e!822210 () Bool)

(assert (=> b!1462709 (= e!822209 (not e!822210))))

(declare-fun res!992185 () Bool)

(assert (=> b!1462709 (=> res!992185 e!822210)))

(assert (=> b!1462709 (= res!992185 (or (and (= (select (arr!47628 a!2862) index!646) (select (store (arr!47628 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47628 a!2862) index!646) (select (arr!47628 a!2862) j!93))) (= (select (arr!47628 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1462709 e!822206))

(declare-fun res!992177 () Bool)

(assert (=> b!1462709 (=> (not res!992177) (not e!822206))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98689 (_ BitVec 32)) Bool)

(assert (=> b!1462709 (= res!992177 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49250 0))(
  ( (Unit!49251) )
))
(declare-fun lt!640501 () Unit!49250)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98689 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49250)

(assert (=> b!1462709 (= lt!640501 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1462693 () Bool)

(declare-fun res!992189 () Bool)

(assert (=> b!1462693 (=> (not res!992189) (not e!822207))))

(assert (=> b!1462693 (= res!992189 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48179 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48179 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48179 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun res!992174 () Bool)

(assert (=> start!125324 (=> (not res!992174) (not e!822207))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125324 (= res!992174 (validMask!0 mask!2687))))

(assert (=> start!125324 e!822207))

(assert (=> start!125324 true))

(declare-fun array_inv!36573 (array!98689) Bool)

(assert (=> start!125324 (array_inv!36573 a!2862)))

(declare-fun b!1462710 () Bool)

(declare-fun res!992179 () Bool)

(assert (=> b!1462710 (=> (not res!992179) (not e!822206))))

(assert (=> b!1462710 (= res!992179 (= (seekEntryOrOpen!0 (select (arr!47628 a!2862) j!93) a!2862 mask!2687) (Found!11903 j!93)))))

(declare-fun b!1462711 () Bool)

(declare-fun res!992180 () Bool)

(assert (=> b!1462711 (=> (not res!992180) (not e!822207))))

(assert (=> b!1462711 (= res!992180 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1462712 () Bool)

(declare-fun res!992178 () Bool)

(assert (=> b!1462712 (=> (not res!992178) (not e!822209))))

(assert (=> b!1462712 (= res!992178 e!822204)))

(declare-fun c!134773 () Bool)

(assert (=> b!1462712 (= c!134773 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1462713 () Bool)

(assert (=> b!1462713 (= e!822210 e!822208)))

(declare-fun res!992186 () Bool)

(assert (=> b!1462713 (=> res!992186 e!822208)))

(assert (=> b!1462713 (= res!992186 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!640495 #b00000000000000000000000000000000) (bvsge lt!640495 (size!48179 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1462713 (= lt!640495 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1462714 () Bool)

(declare-fun res!992184 () Bool)

(assert (=> b!1462714 (=> res!992184 e!822208)))

(assert (=> b!1462714 (= res!992184 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!640495 (select (arr!47628 a!2862) j!93) a!2862 mask!2687) lt!640499)))))

(assert (= (and start!125324 res!992174) b!1462698))

(assert (= (and b!1462698 res!992190) b!1462701))

(assert (= (and b!1462701 res!992175) b!1462704))

(assert (= (and b!1462704 res!992188) b!1462711))

(assert (= (and b!1462711 res!992180) b!1462705))

(assert (= (and b!1462705 res!992173) b!1462693))

(assert (= (and b!1462693 res!992189) b!1462703))

(assert (= (and b!1462703 res!992183) b!1462694))

(assert (= (and b!1462694 res!992176) b!1462695))

(assert (= (and b!1462695 res!992182) b!1462707))

(assert (= (and b!1462707 res!992187) b!1462712))

(assert (= (and b!1462712 c!134773) b!1462700))

(assert (= (and b!1462712 (not c!134773)) b!1462697))

(assert (= (and b!1462712 res!992178) b!1462706))

(assert (= (and b!1462706 res!992181) b!1462709))

(assert (= (and b!1462709 res!992177) b!1462710))

(assert (= (and b!1462710 res!992179) b!1462702))

(assert (= (and b!1462709 (not res!992185)) b!1462713))

(assert (= (and b!1462713 (not res!992186)) b!1462714))

(assert (= (and b!1462714 (not res!992184)) b!1462696))

(assert (= (and b!1462696 c!134774) b!1462708))

(assert (= (and b!1462696 (not c!134774)) b!1462699))

(declare-fun m!1350167 () Bool)

(assert (=> b!1462697 m!1350167))

(declare-fun m!1350169 () Bool)

(assert (=> b!1462697 m!1350169))

(declare-fun m!1350171 () Bool)

(assert (=> b!1462695 m!1350171))

(assert (=> b!1462695 m!1350171))

(declare-fun m!1350173 () Bool)

(assert (=> b!1462695 m!1350173))

(declare-fun m!1350175 () Bool)

(assert (=> b!1462709 m!1350175))

(declare-fun m!1350177 () Bool)

(assert (=> b!1462709 m!1350177))

(declare-fun m!1350179 () Bool)

(assert (=> b!1462709 m!1350179))

(declare-fun m!1350181 () Bool)

(assert (=> b!1462709 m!1350181))

(declare-fun m!1350183 () Bool)

(assert (=> b!1462709 m!1350183))

(assert (=> b!1462709 m!1350171))

(assert (=> b!1462694 m!1350171))

(assert (=> b!1462694 m!1350171))

(declare-fun m!1350185 () Bool)

(assert (=> b!1462694 m!1350185))

(assert (=> b!1462694 m!1350185))

(assert (=> b!1462694 m!1350171))

(declare-fun m!1350187 () Bool)

(assert (=> b!1462694 m!1350187))

(assert (=> b!1462704 m!1350171))

(assert (=> b!1462704 m!1350171))

(declare-fun m!1350189 () Bool)

(assert (=> b!1462704 m!1350189))

(declare-fun m!1350191 () Bool)

(assert (=> b!1462707 m!1350191))

(assert (=> b!1462707 m!1350191))

(declare-fun m!1350193 () Bool)

(assert (=> b!1462707 m!1350193))

(assert (=> b!1462707 m!1350177))

(declare-fun m!1350195 () Bool)

(assert (=> b!1462707 m!1350195))

(declare-fun m!1350197 () Bool)

(assert (=> b!1462711 m!1350197))

(declare-fun m!1350199 () Bool)

(assert (=> b!1462713 m!1350199))

(assert (=> b!1462710 m!1350171))

(assert (=> b!1462710 m!1350171))

(declare-fun m!1350201 () Bool)

(assert (=> b!1462710 m!1350201))

(declare-fun m!1350203 () Bool)

(assert (=> b!1462708 m!1350203))

(declare-fun m!1350205 () Bool)

(assert (=> b!1462700 m!1350205))

(declare-fun m!1350207 () Bool)

(assert (=> b!1462705 m!1350207))

(declare-fun m!1350209 () Bool)

(assert (=> b!1462702 m!1350209))

(assert (=> b!1462702 m!1350171))

(declare-fun m!1350211 () Bool)

(assert (=> b!1462701 m!1350211))

(assert (=> b!1462701 m!1350211))

(declare-fun m!1350213 () Bool)

(assert (=> b!1462701 m!1350213))

(declare-fun m!1350215 () Bool)

(assert (=> b!1462699 m!1350215))

(assert (=> b!1462699 m!1350169))

(assert (=> b!1462714 m!1350171))

(assert (=> b!1462714 m!1350171))

(declare-fun m!1350217 () Bool)

(assert (=> b!1462714 m!1350217))

(declare-fun m!1350219 () Bool)

(assert (=> start!125324 m!1350219))

(declare-fun m!1350221 () Bool)

(assert (=> start!125324 m!1350221))

(assert (=> b!1462703 m!1350177))

(declare-fun m!1350223 () Bool)

(assert (=> b!1462703 m!1350223))

(push 1)

