; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!124560 () Bool)

(assert start!124560)

(declare-fun b!1440792 () Bool)

(declare-fun res!973331 () Bool)

(declare-fun e!812301 () Bool)

(assert (=> b!1440792 (=> (not res!973331) (not e!812301))))

(declare-datatypes ((array!97925 0))(
  ( (array!97926 (arr!47246 (Array (_ BitVec 32) (_ BitVec 64))) (size!47797 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97925)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1440792 (= res!973331 (validKeyInArray!0 (select (arr!47246 a!2862) i!1006)))))

(declare-fun b!1440793 () Bool)

(declare-fun res!973332 () Bool)

(declare-fun e!812303 () Bool)

(assert (=> b!1440793 (=> (not res!973332) (not e!812303))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(assert (=> b!1440793 (= res!973332 (and (bvsgt x!665 intermediateAfterX!19) (bvsge mask!2687 #b00000000000000000000000000000000)))))

(declare-fun b!1440794 () Bool)

(declare-fun res!973333 () Bool)

(assert (=> b!1440794 (=> (not res!973333) (not e!812301))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1440794 (= res!973333 (validKeyInArray!0 (select (arr!47246 a!2862) j!93)))))

(declare-fun b!1440795 () Bool)

(declare-fun res!973329 () Bool)

(assert (=> b!1440795 (=> (not res!973329) (not e!812303))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11521 0))(
  ( (MissingZero!11521 (index!48475 (_ BitVec 32))) (Found!11521 (index!48476 (_ BitVec 32))) (Intermediate!11521 (undefined!12333 Bool) (index!48477 (_ BitVec 32)) (x!130197 (_ BitVec 32))) (Undefined!11521) (MissingVacant!11521 (index!48478 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97925 (_ BitVec 32)) SeekEntryResult!11521)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1440795 (= res!973329 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (store (arr!47246 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) mask!2687) (select (store (arr!47246 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93) (array!97926 (store (arr!47246 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!47797 a!2862)) mask!2687) (Intermediate!11521 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun b!1440796 () Bool)

(declare-fun res!973338 () Bool)

(assert (=> b!1440796 (=> (not res!973338) (not e!812301))))

(declare-datatypes ((List!33927 0))(
  ( (Nil!33924) (Cons!33923 (h!35273 (_ BitVec 64)) (t!48628 List!33927)) )
))
(declare-fun arrayNoDuplicates!0 (array!97925 (_ BitVec 32) List!33927) Bool)

(assert (=> b!1440796 (= res!973338 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33924))))

(declare-fun b!1440797 () Bool)

(declare-fun res!973335 () Bool)

(assert (=> b!1440797 (=> (not res!973335) (not e!812301))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1440797 (= res!973335 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47797 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47797 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47797 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47246 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1440798 () Bool)

(declare-fun res!973336 () Bool)

(assert (=> b!1440798 (=> (not res!973336) (not e!812303))))

(declare-fun lt!632974 () SeekEntryResult!11521)

(assert (=> b!1440798 (= res!973336 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47246 a!2862) j!93) a!2862 mask!2687) lt!632974))))

(declare-fun res!973337 () Bool)

(assert (=> start!124560 (=> (not res!973337) (not e!812301))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124560 (= res!973337 (validMask!0 mask!2687))))

(assert (=> start!124560 e!812301))

(assert (=> start!124560 true))

(declare-fun array_inv!36191 (array!97925) Bool)

(assert (=> start!124560 (array_inv!36191 a!2862)))

(declare-fun b!1440799 () Bool)

(declare-fun res!973328 () Bool)

(assert (=> b!1440799 (=> (not res!973328) (not e!812301))))

(assert (=> b!1440799 (= res!973328 (and (= (size!47797 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47797 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47797 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1440800 () Bool)

(declare-fun res!973334 () Bool)

(assert (=> b!1440800 (=> (not res!973334) (not e!812301))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97925 (_ BitVec 32)) Bool)

(assert (=> b!1440800 (= res!973334 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1440801 () Bool)

(assert (=> b!1440801 (= e!812303 (not (validKeyInArray!0 (select (store (arr!47246 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))))

(declare-fun b!1440802 () Bool)

(assert (=> b!1440802 (= e!812301 e!812303)))

(declare-fun res!973330 () Bool)

(assert (=> b!1440802 (=> (not res!973330) (not e!812303))))

(assert (=> b!1440802 (= res!973330 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47246 a!2862) j!93) mask!2687) (select (arr!47246 a!2862) j!93) a!2862 mask!2687) lt!632974))))

(assert (=> b!1440802 (= lt!632974 (Intermediate!11521 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(assert (= (and start!124560 res!973337) b!1440799))

(assert (= (and b!1440799 res!973328) b!1440792))

(assert (= (and b!1440792 res!973331) b!1440794))

(assert (= (and b!1440794 res!973333) b!1440800))

(assert (= (and b!1440800 res!973334) b!1440796))

(assert (= (and b!1440796 res!973338) b!1440797))

(assert (= (and b!1440797 res!973335) b!1440802))

(assert (= (and b!1440802 res!973330) b!1440798))

(assert (= (and b!1440798 res!973336) b!1440795))

(assert (= (and b!1440795 res!973329) b!1440793))

(assert (= (and b!1440793 res!973332) b!1440801))

(declare-fun m!1330087 () Bool)

(assert (=> b!1440800 m!1330087))

(declare-fun m!1330089 () Bool)

(assert (=> b!1440798 m!1330089))

(assert (=> b!1440798 m!1330089))

(declare-fun m!1330091 () Bool)

(assert (=> b!1440798 m!1330091))

(assert (=> b!1440802 m!1330089))

(assert (=> b!1440802 m!1330089))

(declare-fun m!1330093 () Bool)

(assert (=> b!1440802 m!1330093))

(assert (=> b!1440802 m!1330093))

(assert (=> b!1440802 m!1330089))

(declare-fun m!1330095 () Bool)

(assert (=> b!1440802 m!1330095))

(declare-fun m!1330097 () Bool)

(assert (=> start!124560 m!1330097))

(declare-fun m!1330099 () Bool)

(assert (=> start!124560 m!1330099))

(declare-fun m!1330101 () Bool)

(assert (=> b!1440792 m!1330101))

(assert (=> b!1440792 m!1330101))

(declare-fun m!1330103 () Bool)

(assert (=> b!1440792 m!1330103))

(declare-fun m!1330105 () Bool)

(assert (=> b!1440801 m!1330105))

(declare-fun m!1330107 () Bool)

(assert (=> b!1440801 m!1330107))

(assert (=> b!1440801 m!1330107))

(declare-fun m!1330109 () Bool)

(assert (=> b!1440801 m!1330109))

(declare-fun m!1330111 () Bool)

(assert (=> b!1440796 m!1330111))

(assert (=> b!1440797 m!1330105))

(declare-fun m!1330113 () Bool)

(assert (=> b!1440797 m!1330113))

(assert (=> b!1440795 m!1330105))

(assert (=> b!1440795 m!1330107))

(assert (=> b!1440795 m!1330107))

(declare-fun m!1330115 () Bool)

(assert (=> b!1440795 m!1330115))

(assert (=> b!1440795 m!1330115))

(assert (=> b!1440795 m!1330107))

(declare-fun m!1330117 () Bool)

(assert (=> b!1440795 m!1330117))

(assert (=> b!1440794 m!1330089))

(assert (=> b!1440794 m!1330089))

(declare-fun m!1330119 () Bool)

(assert (=> b!1440794 m!1330119))

(check-sat (not start!124560) (not b!1440801) (not b!1440798) (not b!1440800) (not b!1440794) (not b!1440802) (not b!1440795) (not b!1440796) (not b!1440792))
(check-sat)
