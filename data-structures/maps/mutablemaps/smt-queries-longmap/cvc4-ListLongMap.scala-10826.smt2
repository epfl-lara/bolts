; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126716 () Bool)

(assert start!126716)

(declare-fun b!1487245 () Bool)

(declare-fun res!1011624 () Bool)

(declare-fun e!833687 () Bool)

(assert (=> b!1487245 (=> (not res!1011624) (not e!833687))))

(declare-datatypes ((array!99532 0))(
  ( (array!99533 (arr!48036 (Array (_ BitVec 32) (_ BitVec 64))) (size!48587 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99532)

(declare-datatypes ((List!34717 0))(
  ( (Nil!34714) (Cons!34713 (h!36090 (_ BitVec 64)) (t!49418 List!34717)) )
))
(declare-fun arrayNoDuplicates!0 (array!99532 (_ BitVec 32) List!34717) Bool)

(assert (=> b!1487245 (= res!1011624 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34714))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!833693 () Bool)

(declare-fun b!1487246 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun lt!648700 () (_ BitVec 64))

(declare-fun lt!648705 () array!99532)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12299 0))(
  ( (MissingZero!12299 (index!51587 (_ BitVec 32))) (Found!12299 (index!51588 (_ BitVec 32))) (Intermediate!12299 (undefined!13111 Bool) (index!51589 (_ BitVec 32)) (x!133166 (_ BitVec 32))) (Undefined!12299) (MissingVacant!12299 (index!51590 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99532 (_ BitVec 32)) SeekEntryResult!12299)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99532 (_ BitVec 32)) SeekEntryResult!12299)

(assert (=> b!1487246 (= e!833693 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648700 lt!648705 mask!2687) (seekEntryOrOpen!0 lt!648700 lt!648705 mask!2687)))))

(declare-fun b!1487247 () Bool)

(declare-fun e!833692 () Bool)

(declare-fun e!833683 () Bool)

(assert (=> b!1487247 (= e!833692 e!833683)))

(declare-fun res!1011628 () Bool)

(assert (=> b!1487247 (=> res!1011628 e!833683)))

(declare-fun lt!648706 () (_ BitVec 32))

(assert (=> b!1487247 (= res!1011628 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!648706 #b00000000000000000000000000000000) (bvsge lt!648706 (size!48587 a!2862))))))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487247 (= lt!648706 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1487248 () Bool)

(declare-fun res!1011631 () Bool)

(declare-fun e!833686 () Bool)

(assert (=> b!1487248 (=> (not res!1011631) (not e!833686))))

(declare-fun lt!648703 () SeekEntryResult!12299)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99532 (_ BitVec 32)) SeekEntryResult!12299)

(assert (=> b!1487248 (= res!1011631 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48036 a!2862) j!93) a!2862 mask!2687) lt!648703))))

(declare-fun b!1487249 () Bool)

(declare-fun e!833685 () Bool)

(declare-fun e!833690 () Bool)

(assert (=> b!1487249 (= e!833685 e!833690)))

(declare-fun res!1011626 () Bool)

(assert (=> b!1487249 (=> res!1011626 e!833690)))

(declare-fun lt!648702 () (_ BitVec 64))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1487249 (= res!1011626 (or (and (= (select (arr!48036 a!2862) index!646) lt!648702) (= (select (arr!48036 a!2862) index!646) (select (arr!48036 a!2862) j!93))) (= (select (arr!48036 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1487249 (= lt!648702 (select (store (arr!48036 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1487250 () Bool)

(declare-fun res!1011636 () Bool)

(assert (=> b!1487250 (=> (not res!1011636) (not e!833687))))

(assert (=> b!1487250 (= res!1011636 (and (= (size!48587 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48587 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48587 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1487251 () Bool)

(declare-fun res!1011633 () Bool)

(assert (=> b!1487251 (=> (not res!1011633) (not e!833687))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1487251 (= res!1011633 (validKeyInArray!0 (select (arr!48036 a!2862) i!1006)))))

(declare-fun res!1011621 () Bool)

(assert (=> start!126716 (=> (not res!1011621) (not e!833687))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126716 (= res!1011621 (validMask!0 mask!2687))))

(assert (=> start!126716 e!833687))

(assert (=> start!126716 true))

(declare-fun array_inv!36981 (array!99532) Bool)

(assert (=> start!126716 (array_inv!36981 a!2862)))

(declare-fun b!1487252 () Bool)

(declare-fun e!833684 () Bool)

(assert (=> b!1487252 (= e!833684 e!833686)))

(declare-fun res!1011635 () Bool)

(assert (=> b!1487252 (=> (not res!1011635) (not e!833686))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1487252 (= res!1011635 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48036 a!2862) j!93) mask!2687) (select (arr!48036 a!2862) j!93) a!2862 mask!2687) lt!648703))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1487252 (= lt!648703 (Intermediate!12299 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1487253 () Bool)

(assert (=> b!1487253 (= e!833687 e!833684)))

(declare-fun res!1011629 () Bool)

(assert (=> b!1487253 (=> (not res!1011629) (not e!833684))))

(assert (=> b!1487253 (= res!1011629 (= (select (store (arr!48036 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487253 (= lt!648705 (array!99533 (store (arr!48036 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48587 a!2862)))))

(declare-fun b!1487254 () Bool)

(declare-fun e!833688 () Bool)

(assert (=> b!1487254 (= e!833686 e!833688)))

(declare-fun res!1011634 () Bool)

(assert (=> b!1487254 (=> (not res!1011634) (not e!833688))))

(declare-fun lt!648704 () SeekEntryResult!12299)

(assert (=> b!1487254 (= res!1011634 (= lt!648704 (Intermediate!12299 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1487254 (= lt!648704 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648700 mask!2687) lt!648700 lt!648705 mask!2687))))

(assert (=> b!1487254 (= lt!648700 (select (store (arr!48036 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1487255 () Bool)

(declare-fun res!1011630 () Bool)

(assert (=> b!1487255 (=> (not res!1011630) (not e!833687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99532 (_ BitVec 32)) Bool)

(assert (=> b!1487255 (= res!1011630 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1487256 () Bool)

(declare-fun res!1011639 () Bool)

(assert (=> b!1487256 (=> (not res!1011639) (not e!833685))))

(assert (=> b!1487256 (= res!1011639 (or (= (select (arr!48036 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48036 a!2862) intermediateBeforeIndex!19) (select (arr!48036 a!2862) j!93))))))

(declare-fun b!1487257 () Bool)

(declare-fun res!1011638 () Bool)

(assert (=> b!1487257 (=> (not res!1011638) (not e!833687))))

(assert (=> b!1487257 (= res!1011638 (validKeyInArray!0 (select (arr!48036 a!2862) j!93)))))

(declare-fun b!1487258 () Bool)

(assert (=> b!1487258 (= e!833688 (not e!833692))))

(declare-fun res!1011623 () Bool)

(assert (=> b!1487258 (=> res!1011623 e!833692)))

(assert (=> b!1487258 (= res!1011623 (or (and (= (select (arr!48036 a!2862) index!646) (select (store (arr!48036 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48036 a!2862) index!646) (select (arr!48036 a!2862) j!93))) (= (select (arr!48036 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1487258 e!833685))

(declare-fun res!1011620 () Bool)

(assert (=> b!1487258 (=> (not res!1011620) (not e!833685))))

(assert (=> b!1487258 (= res!1011620 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49886 0))(
  ( (Unit!49887) )
))
(declare-fun lt!648701 () Unit!49886)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99532 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49886)

(assert (=> b!1487258 (= lt!648701 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1487259 () Bool)

(declare-fun e!833691 () Bool)

(assert (=> b!1487259 (= e!833690 e!833691)))

(declare-fun res!1011622 () Bool)

(assert (=> b!1487259 (=> (not res!1011622) (not e!833691))))

(assert (=> b!1487259 (= res!1011622 (and (= index!646 intermediateAfterIndex!19) (= lt!648702 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487260 () Bool)

(declare-fun res!1011637 () Bool)

(assert (=> b!1487260 (=> (not res!1011637) (not e!833688))))

(assert (=> b!1487260 (= res!1011637 e!833693)))

(declare-fun c!137339 () Bool)

(assert (=> b!1487260 (= c!137339 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1487261 () Bool)

(assert (=> b!1487261 (= e!833683 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648706 (select (arr!48036 a!2862) j!93) a!2862 mask!2687) lt!648703))))

(declare-fun b!1487262 () Bool)

(declare-fun res!1011632 () Bool)

(assert (=> b!1487262 (=> (not res!1011632) (not e!833687))))

(assert (=> b!1487262 (= res!1011632 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48587 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48587 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48587 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1487263 () Bool)

(declare-fun res!1011625 () Bool)

(assert (=> b!1487263 (=> (not res!1011625) (not e!833688))))

(assert (=> b!1487263 (= res!1011625 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1487264 () Bool)

(assert (=> b!1487264 (= e!833693 (= lt!648704 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648700 lt!648705 mask!2687)))))

(declare-fun b!1487265 () Bool)

(assert (=> b!1487265 (= e!833691 (= (seekEntryOrOpen!0 lt!648700 lt!648705 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648700 lt!648705 mask!2687)))))

(declare-fun b!1487266 () Bool)

(declare-fun res!1011627 () Bool)

(assert (=> b!1487266 (=> (not res!1011627) (not e!833685))))

(assert (=> b!1487266 (= res!1011627 (= (seekEntryOrOpen!0 (select (arr!48036 a!2862) j!93) a!2862 mask!2687) (Found!12299 j!93)))))

(assert (= (and start!126716 res!1011621) b!1487250))

(assert (= (and b!1487250 res!1011636) b!1487251))

(assert (= (and b!1487251 res!1011633) b!1487257))

(assert (= (and b!1487257 res!1011638) b!1487255))

(assert (= (and b!1487255 res!1011630) b!1487245))

(assert (= (and b!1487245 res!1011624) b!1487262))

(assert (= (and b!1487262 res!1011632) b!1487253))

(assert (= (and b!1487253 res!1011629) b!1487252))

(assert (= (and b!1487252 res!1011635) b!1487248))

(assert (= (and b!1487248 res!1011631) b!1487254))

(assert (= (and b!1487254 res!1011634) b!1487260))

(assert (= (and b!1487260 c!137339) b!1487264))

(assert (= (and b!1487260 (not c!137339)) b!1487246))

(assert (= (and b!1487260 res!1011637) b!1487263))

(assert (= (and b!1487263 res!1011625) b!1487258))

(assert (= (and b!1487258 res!1011620) b!1487266))

(assert (= (and b!1487266 res!1011627) b!1487256))

(assert (= (and b!1487256 res!1011639) b!1487249))

(assert (= (and b!1487249 (not res!1011626)) b!1487259))

(assert (= (and b!1487259 res!1011622) b!1487265))

(assert (= (and b!1487258 (not res!1011623)) b!1487247))

(assert (= (and b!1487247 (not res!1011628)) b!1487261))

(declare-fun m!1372023 () Bool)

(assert (=> b!1487252 m!1372023))

(assert (=> b!1487252 m!1372023))

(declare-fun m!1372025 () Bool)

(assert (=> b!1487252 m!1372025))

(assert (=> b!1487252 m!1372025))

(assert (=> b!1487252 m!1372023))

(declare-fun m!1372027 () Bool)

(assert (=> b!1487252 m!1372027))

(declare-fun m!1372029 () Bool)

(assert (=> b!1487255 m!1372029))

(declare-fun m!1372031 () Bool)

(assert (=> b!1487264 m!1372031))

(declare-fun m!1372033 () Bool)

(assert (=> b!1487245 m!1372033))

(declare-fun m!1372035 () Bool)

(assert (=> b!1487258 m!1372035))

(declare-fun m!1372037 () Bool)

(assert (=> b!1487258 m!1372037))

(declare-fun m!1372039 () Bool)

(assert (=> b!1487258 m!1372039))

(declare-fun m!1372041 () Bool)

(assert (=> b!1487258 m!1372041))

(declare-fun m!1372043 () Bool)

(assert (=> b!1487258 m!1372043))

(assert (=> b!1487258 m!1372023))

(assert (=> b!1487261 m!1372023))

(assert (=> b!1487261 m!1372023))

(declare-fun m!1372045 () Bool)

(assert (=> b!1487261 m!1372045))

(declare-fun m!1372047 () Bool)

(assert (=> b!1487247 m!1372047))

(assert (=> b!1487257 m!1372023))

(assert (=> b!1487257 m!1372023))

(declare-fun m!1372049 () Bool)

(assert (=> b!1487257 m!1372049))

(declare-fun m!1372051 () Bool)

(assert (=> b!1487256 m!1372051))

(assert (=> b!1487256 m!1372023))

(declare-fun m!1372053 () Bool)

(assert (=> b!1487251 m!1372053))

(assert (=> b!1487251 m!1372053))

(declare-fun m!1372055 () Bool)

(assert (=> b!1487251 m!1372055))

(declare-fun m!1372057 () Bool)

(assert (=> start!126716 m!1372057))

(declare-fun m!1372059 () Bool)

(assert (=> start!126716 m!1372059))

(declare-fun m!1372061 () Bool)

(assert (=> b!1487265 m!1372061))

(declare-fun m!1372063 () Bool)

(assert (=> b!1487265 m!1372063))

(assert (=> b!1487249 m!1372041))

(assert (=> b!1487249 m!1372023))

(assert (=> b!1487249 m!1372037))

(assert (=> b!1487249 m!1372039))

(assert (=> b!1487266 m!1372023))

(assert (=> b!1487266 m!1372023))

(declare-fun m!1372065 () Bool)

(assert (=> b!1487266 m!1372065))

(assert (=> b!1487253 m!1372037))

(declare-fun m!1372067 () Bool)

(assert (=> b!1487253 m!1372067))

(declare-fun m!1372069 () Bool)

(assert (=> b!1487254 m!1372069))

(assert (=> b!1487254 m!1372069))

(declare-fun m!1372071 () Bool)

(assert (=> b!1487254 m!1372071))

(assert (=> b!1487254 m!1372037))

(declare-fun m!1372073 () Bool)

(assert (=> b!1487254 m!1372073))

(assert (=> b!1487246 m!1372063))

(assert (=> b!1487246 m!1372061))

(assert (=> b!1487248 m!1372023))

(assert (=> b!1487248 m!1372023))

(declare-fun m!1372075 () Bool)

(assert (=> b!1487248 m!1372075))

(push 1)

(assert (not b!1487258))

(assert (not b!1487252))

(assert (not b!1487257))

(assert (not b!1487264))

(assert (not b!1487261))

(assert (not b!1487254))

(assert (not start!126716))

(assert (not b!1487251))

(assert (not b!1487248))

(assert (not b!1487245))

(assert (not b!1487247))

(assert (not b!1487266))

(assert (not b!1487255))

(assert (not b!1487246))

(assert (not b!1487265))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1487349 () Bool)

(declare-fun e!833740 () Bool)

(declare-fun contains!9931 (List!34717 (_ BitVec 64)) Bool)

(assert (=> b!1487349 (= e!833740 (contains!9931 Nil!34714 (select (arr!48036 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1487350 () Bool)

(declare-fun e!833742 () Bool)

(declare-fun call!67896 () Bool)

(assert (=> b!1487350 (= e!833742 call!67896)))

(declare-fun bm!67893 () Bool)

(declare-fun c!137372 () Bool)

(assert (=> bm!67893 (= call!67896 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!137372 (Cons!34713 (select (arr!48036 a!2862) #b00000000000000000000000000000000) Nil!34714) Nil!34714)))))

(declare-fun b!1487351 () Bool)

(assert (=> b!1487351 (= e!833742 call!67896)))

(declare-fun d!156481 () Bool)

(declare-fun res!1011659 () Bool)

(declare-fun e!833741 () Bool)

(assert (=> d!156481 (=> res!1011659 e!833741)))

(assert (=> d!156481 (= res!1011659 (bvsge #b00000000000000000000000000000000 (size!48587 a!2862)))))

(assert (=> d!156481 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34714) e!833741)))

(declare-fun b!1487352 () Bool)

(declare-fun e!833743 () Bool)

(assert (=> b!1487352 (= e!833743 e!833742)))

(assert (=> b!1487352 (= c!137372 (validKeyInArray!0 (select (arr!48036 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1487353 () Bool)

(assert (=> b!1487353 (= e!833741 e!833743)))

(declare-fun res!1011660 () Bool)

(assert (=> b!1487353 (=> (not res!1011660) (not e!833743))))

(assert (=> b!1487353 (= res!1011660 (not e!833740))))

(declare-fun res!1011658 () Bool)

(assert (=> b!1487353 (=> (not res!1011658) (not e!833740))))

(assert (=> b!1487353 (= res!1011658 (validKeyInArray!0 (select (arr!48036 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156481 (not res!1011659)) b!1487353))

(assert (= (and b!1487353 res!1011658) b!1487349))

(assert (= (and b!1487353 res!1011660) b!1487352))

(assert (= (and b!1487352 c!137372) b!1487351))

(assert (= (and b!1487352 (not c!137372)) b!1487350))

(assert (= (or b!1487351 b!1487350) bm!67893))

(declare-fun m!1372103 () Bool)

(assert (=> b!1487349 m!1372103))

(assert (=> b!1487349 m!1372103))

(declare-fun m!1372105 () Bool)

(assert (=> b!1487349 m!1372105))

(assert (=> bm!67893 m!1372103))

(declare-fun m!1372107 () Bool)

(assert (=> bm!67893 m!1372107))

(assert (=> b!1487352 m!1372103))

(assert (=> b!1487352 m!1372103))

(declare-fun m!1372109 () Bool)

(assert (=> b!1487352 m!1372109))

(assert (=> b!1487353 m!1372103))

(assert (=> b!1487353 m!1372103))

(assert (=> b!1487353 m!1372109))

(assert (=> b!1487245 d!156481))

(declare-fun d!156489 () Bool)

(declare-fun lt!648774 () SeekEntryResult!12299)

(assert (=> d!156489 (and (or (is-Undefined!12299 lt!648774) (not (is-Found!12299 lt!648774)) (and (bvsge (index!51588 lt!648774) #b00000000000000000000000000000000) (bvslt (index!51588 lt!648774) (size!48587 a!2862)))) (or (is-Undefined!12299 lt!648774) (is-Found!12299 lt!648774) (not (is-MissingZero!12299 lt!648774)) (and (bvsge (index!51587 lt!648774) #b00000000000000000000000000000000) (bvslt (index!51587 lt!648774) (size!48587 a!2862)))) (or (is-Undefined!12299 lt!648774) (is-Found!12299 lt!648774) (is-MissingZero!12299 lt!648774) (not (is-MissingVacant!12299 lt!648774)) (and (bvsge (index!51590 lt!648774) #b00000000000000000000000000000000) (bvslt (index!51590 lt!648774) (size!48587 a!2862)))) (or (is-Undefined!12299 lt!648774) (ite (is-Found!12299 lt!648774) (= (select (arr!48036 a!2862) (index!51588 lt!648774)) (select (arr!48036 a!2862) j!93)) (ite (is-MissingZero!12299 lt!648774) (= (select (arr!48036 a!2862) (index!51587 lt!648774)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12299 lt!648774) (= (select (arr!48036 a!2862) (index!51590 lt!648774)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!833787 () SeekEntryResult!12299)

(assert (=> d!156489 (= lt!648774 e!833787)))

(declare-fun c!137394 () Bool)

(declare-fun lt!648775 () SeekEntryResult!12299)

(assert (=> d!156489 (= c!137394 (and (is-Intermediate!12299 lt!648775) (undefined!13111 lt!648775)))))

(assert (=> d!156489 (= lt!648775 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48036 a!2862) j!93) mask!2687) (select (arr!48036 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!156489 (validMask!0 mask!2687)))

(assert (=> d!156489 (= (seekEntryOrOpen!0 (select (arr!48036 a!2862) j!93) a!2862 mask!2687) lt!648774)))

(declare-fun b!1487417 () Bool)

(declare-fun e!833785 () SeekEntryResult!12299)

(assert (=> b!1487417 (= e!833785 (Found!12299 (index!51589 lt!648775)))))

(declare-fun b!1487418 () Bool)

(assert (=> b!1487418 (= e!833787 Undefined!12299)))

(declare-fun b!1487419 () Bool)

(declare-fun c!137392 () Bool)

(declare-fun lt!648776 () (_ BitVec 64))

(assert (=> b!1487419 (= c!137392 (= lt!648776 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!833786 () SeekEntryResult!12299)

(assert (=> b!1487419 (= e!833785 e!833786)))

(declare-fun b!1487420 () Bool)

(assert (=> b!1487420 (= e!833786 (MissingZero!12299 (index!51589 lt!648775)))))

(declare-fun b!1487421 () Bool)

(assert (=> b!1487421 (= e!833786 (seekKeyOrZeroReturnVacant!0 (x!133166 lt!648775) (index!51589 lt!648775) (index!51589 lt!648775) (select (arr!48036 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1487422 () Bool)

(assert (=> b!1487422 (= e!833787 e!833785)))

(assert (=> b!1487422 (= lt!648776 (select (arr!48036 a!2862) (index!51589 lt!648775)))))

(declare-fun c!137393 () Bool)

(assert (=> b!1487422 (= c!137393 (= lt!648776 (select (arr!48036 a!2862) j!93)))))

(assert (= (and d!156489 c!137394) b!1487418))

(assert (= (and d!156489 (not c!137394)) b!1487422))

(assert (= (and b!1487422 c!137393) b!1487417))

(assert (= (and b!1487422 (not c!137393)) b!1487419))

(assert (= (and b!1487419 c!137392) b!1487420))

(assert (= (and b!1487419 (not c!137392)) b!1487421))

(assert (=> d!156489 m!1372023))

(assert (=> d!156489 m!1372025))

(declare-fun m!1372157 () Bool)

(assert (=> d!156489 m!1372157))

(declare-fun m!1372159 () Bool)

(assert (=> d!156489 m!1372159))

(assert (=> d!156489 m!1372025))

(assert (=> d!156489 m!1372023))

(assert (=> d!156489 m!1372027))

(declare-fun m!1372161 () Bool)

(assert (=> d!156489 m!1372161))

(assert (=> d!156489 m!1372057))

(assert (=> b!1487421 m!1372023))

(declare-fun m!1372163 () Bool)

(assert (=> b!1487421 m!1372163))

(declare-fun m!1372165 () Bool)

(assert (=> b!1487422 m!1372165))

(assert (=> b!1487266 d!156489))

(declare-fun bm!67906 () Bool)

(declare-fun call!67909 () Bool)

(assert (=> bm!67906 (= call!67909 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!156507 () Bool)

(declare-fun res!1011701 () Bool)

(declare-fun e!833815 () Bool)

(assert (=> d!156507 (=> res!1011701 e!833815)))

(assert (=> d!156507 (= res!1011701 (bvsge #b00000000000000000000000000000000 (size!48587 a!2862)))))

(assert (=> d!156507 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!833815)))

(declare-fun b!1487465 () Bool)

(declare-fun e!833817 () Bool)

(assert (=> b!1487465 (= e!833817 call!67909)))

(declare-fun b!1487466 () Bool)

(declare-fun e!833816 () Bool)

(assert (=> b!1487466 (= e!833817 e!833816)))

(declare-fun lt!648795 () (_ BitVec 64))

(assert (=> b!1487466 (= lt!648795 (select (arr!48036 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!648794 () Unit!49886)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99532 (_ BitVec 64) (_ BitVec 32)) Unit!49886)

(assert (=> b!1487466 (= lt!648794 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!648795 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99532 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1487466 (arrayContainsKey!0 a!2862 lt!648795 #b00000000000000000000000000000000)))

(declare-fun lt!648796 () Unit!49886)

(assert (=> b!1487466 (= lt!648796 lt!648794)))

(declare-fun res!1011702 () Bool)

(assert (=> b!1487466 (= res!1011702 (= (seekEntryOrOpen!0 (select (arr!48036 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12299 #b00000000000000000000000000000000)))))

(assert (=> b!1487466 (=> (not res!1011702) (not e!833816))))

(declare-fun b!1487467 () Bool)

(assert (=> b!1487467 (= e!833816 call!67909)))

(declare-fun b!1487468 () Bool)

(assert (=> b!1487468 (= e!833815 e!833817)))

(declare-fun c!137409 () Bool)

(assert (=> b!1487468 (= c!137409 (validKeyInArray!0 (select (arr!48036 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!156507 (not res!1011701)) b!1487468))

(assert (= (and b!1487468 c!137409) b!1487466))

(assert (= (and b!1487468 (not c!137409)) b!1487465))

(assert (= (and b!1487466 res!1011702) b!1487467))

(assert (= (or b!1487467 b!1487465) bm!67906))

(declare-fun m!1372181 () Bool)

(assert (=> bm!67906 m!1372181))

(assert (=> b!1487466 m!1372103))

(declare-fun m!1372183 () Bool)

(assert (=> b!1487466 m!1372183))

(declare-fun m!1372185 () Bool)

(assert (=> b!1487466 m!1372185))

(assert (=> b!1487466 m!1372103))

(declare-fun m!1372187 () Bool)

(assert (=> b!1487466 m!1372187))

(assert (=> b!1487468 m!1372103))

(assert (=> b!1487468 m!1372103))

(assert (=> b!1487468 m!1372109))

(assert (=> b!1487255 d!156507))

(declare-fun d!156521 () Bool)

(declare-fun lt!648797 () SeekEntryResult!12299)

(assert (=> d!156521 (and (or (is-Undefined!12299 lt!648797) (not (is-Found!12299 lt!648797)) (and (bvsge (index!51588 lt!648797) #b00000000000000000000000000000000) (bvslt (index!51588 lt!648797) (size!48587 lt!648705)))) (or (is-Undefined!12299 lt!648797) (is-Found!12299 lt!648797) (not (is-MissingZero!12299 lt!648797)) (and (bvsge (index!51587 lt!648797) #b00000000000000000000000000000000) (bvslt (index!51587 lt!648797) (size!48587 lt!648705)))) (or (is-Undefined!12299 lt!648797) (is-Found!12299 lt!648797) (is-MissingZero!12299 lt!648797) (not (is-MissingVacant!12299 lt!648797)) (and (bvsge (index!51590 lt!648797) #b00000000000000000000000000000000) (bvslt (index!51590 lt!648797) (size!48587 lt!648705)))) (or (is-Undefined!12299 lt!648797) (ite (is-Found!12299 lt!648797) (= (select (arr!48036 lt!648705) (index!51588 lt!648797)) lt!648700) (ite (is-MissingZero!12299 lt!648797) (= (select (arr!48036 lt!648705) (index!51587 lt!648797)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12299 lt!648797) (= (select (arr!48036 lt!648705) (index!51590 lt!648797)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!833820 () SeekEntryResult!12299)

(assert (=> d!156521 (= lt!648797 e!833820)))

(declare-fun c!137412 () Bool)

(declare-fun lt!648798 () SeekEntryResult!12299)

(assert (=> d!156521 (= c!137412 (and (is-Intermediate!12299 lt!648798) (undefined!13111 lt!648798)))))

(assert (=> d!156521 (= lt!648798 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648700 mask!2687) lt!648700 lt!648705 mask!2687))))

(assert (=> d!156521 (validMask!0 mask!2687)))

(assert (=> d!156521 (= (seekEntryOrOpen!0 lt!648700 lt!648705 mask!2687) lt!648797)))

(declare-fun b!1487469 () Bool)

(declare-fun e!833818 () SeekEntryResult!12299)

(assert (=> b!1487469 (= e!833818 (Found!12299 (index!51589 lt!648798)))))

(declare-fun b!1487470 () Bool)

(assert (=> b!1487470 (= e!833820 Undefined!12299)))

(declare-fun b!1487471 () Bool)

(declare-fun c!137410 () Bool)

(declare-fun lt!648799 () (_ BitVec 64))

(assert (=> b!1487471 (= c!137410 (= lt!648799 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!833819 () SeekEntryResult!12299)

(assert (=> b!1487471 (= e!833818 e!833819)))

(declare-fun b!1487472 () Bool)

(assert (=> b!1487472 (= e!833819 (MissingZero!12299 (index!51589 lt!648798)))))

(declare-fun b!1487473 () Bool)

(assert (=> b!1487473 (= e!833819 (seekKeyOrZeroReturnVacant!0 (x!133166 lt!648798) (index!51589 lt!648798) (index!51589 lt!648798) lt!648700 lt!648705 mask!2687))))

(declare-fun b!1487474 () Bool)

(assert (=> b!1487474 (= e!833820 e!833818)))

(assert (=> b!1487474 (= lt!648799 (select (arr!48036 lt!648705) (index!51589 lt!648798)))))

(declare-fun c!137411 () Bool)

(assert (=> b!1487474 (= c!137411 (= lt!648799 lt!648700))))

(assert (= (and d!156521 c!137412) b!1487470))

(assert (= (and d!156521 (not c!137412)) b!1487474))

(assert (= (and b!1487474 c!137411) b!1487469))

(assert (= (and b!1487474 (not c!137411)) b!1487471))

(assert (= (and b!1487471 c!137410) b!1487472))

(assert (= (and b!1487471 (not c!137410)) b!1487473))

(assert (=> d!156521 m!1372069))

(declare-fun m!1372189 () Bool)

(assert (=> d!156521 m!1372189))

(declare-fun m!1372191 () Bool)

(assert (=> d!156521 m!1372191))

(assert (=> d!156521 m!1372069))

(assert (=> d!156521 m!1372071))

(declare-fun m!1372193 () Bool)

(assert (=> d!156521 m!1372193))

(assert (=> d!156521 m!1372057))

(declare-fun m!1372195 () Bool)

(assert (=> b!1487473 m!1372195))

(declare-fun m!1372197 () Bool)

(assert (=> b!1487474 m!1372197))

(assert (=> b!1487265 d!156521))

(declare-fun b!1487520 () Bool)

(declare-fun e!833851 () SeekEntryResult!12299)

(assert (=> b!1487520 (= e!833851 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!648700 lt!648705 mask!2687))))

(declare-fun b!1487521 () Bool)

(declare-fun e!833849 () SeekEntryResult!12299)

(assert (=> b!1487521 (= e!833849 (Found!12299 index!646))))

(declare-fun b!1487522 () Bool)

(declare-fun e!833850 () SeekEntryResult!12299)

(assert (=> b!1487522 (= e!833850 Undefined!12299)))

(declare-fun d!156523 () Bool)

(declare-fun lt!648808 () SeekEntryResult!12299)

(assert (=> d!156523 (and (or (is-Undefined!12299 lt!648808) (not (is-Found!12299 lt!648808)) (and (bvsge (index!51588 lt!648808) #b00000000000000000000000000000000) (bvslt (index!51588 lt!648808) (size!48587 lt!648705)))) (or (is-Undefined!12299 lt!648808) (is-Found!12299 lt!648808) (not (is-MissingVacant!12299 lt!648808)) (not (= (index!51590 lt!648808) intermediateAfterIndex!19)) (and (bvsge (index!51590 lt!648808) #b00000000000000000000000000000000) (bvslt (index!51590 lt!648808) (size!48587 lt!648705)))) (or (is-Undefined!12299 lt!648808) (ite (is-Found!12299 lt!648808) (= (select (arr!48036 lt!648705) (index!51588 lt!648808)) lt!648700) (and (is-MissingVacant!12299 lt!648808) (= (index!51590 lt!648808) intermediateAfterIndex!19) (= (select (arr!48036 lt!648705) (index!51590 lt!648808)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!156523 (= lt!648808 e!833850)))

(declare-fun c!137430 () Bool)

(assert (=> d!156523 (= c!137430 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!648809 () (_ BitVec 64))

(assert (=> d!156523 (= lt!648809 (select (arr!48036 lt!648705) index!646))))

(assert (=> d!156523 (validMask!0 mask!2687)))

(assert (=> d!156523 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648700 lt!648705 mask!2687) lt!648808)))

(declare-fun b!1487523 () Bool)

(assert (=> b!1487523 (= e!833851 (MissingVacant!12299 intermediateAfterIndex!19))))

(declare-fun b!1487524 () Bool)

(declare-fun c!137428 () Bool)

(assert (=> b!1487524 (= c!137428 (= lt!648809 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487524 (= e!833849 e!833851)))

(declare-fun b!1487525 () Bool)

(assert (=> b!1487525 (= e!833850 e!833849)))

(declare-fun c!137429 () Bool)

(assert (=> b!1487525 (= c!137429 (= lt!648809 lt!648700))))

(assert (= (and d!156523 c!137430) b!1487522))

(assert (= (and d!156523 (not c!137430)) b!1487525))

(assert (= (and b!1487525 c!137429) b!1487521))

(assert (= (and b!1487525 (not c!137429)) b!1487524))

(assert (= (and b!1487524 c!137428) b!1487523))

(assert (= (and b!1487524 (not c!137428)) b!1487520))

(assert (=> b!1487520 m!1372047))

(assert (=> b!1487520 m!1372047))

(declare-fun m!1372221 () Bool)

(assert (=> b!1487520 m!1372221))

(declare-fun m!1372223 () Bool)

(assert (=> d!156523 m!1372223))

(declare-fun m!1372225 () Bool)

(assert (=> d!156523 m!1372225))

(declare-fun m!1372227 () Bool)

(assert (=> d!156523 m!1372227))

(assert (=> d!156523 m!1372057))

(assert (=> b!1487265 d!156523))

(declare-fun b!1487562 () Bool)

(declare-fun e!833874 () Bool)

(declare-fun lt!648824 () SeekEntryResult!12299)

(assert (=> b!1487562 (= e!833874 (bvsge (x!133166 lt!648824) #b01111111111111111111111111111110))))

(declare-fun b!1487563 () Bool)

(assert (=> b!1487563 (and (bvsge (index!51589 lt!648824) #b00000000000000000000000000000000) (bvslt (index!51589 lt!648824) (size!48587 lt!648705)))))

(declare-fun e!833871 () Bool)

(assert (=> b!1487563 (= e!833871 (= (select (arr!48036 lt!648705) (index!51589 lt!648824)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1487564 () Bool)

(declare-fun e!833875 () SeekEntryResult!12299)

(declare-fun e!833872 () SeekEntryResult!12299)

(assert (=> b!1487564 (= e!833875 e!833872)))

(declare-fun c!137448 () Bool)

(declare-fun lt!648823 () (_ BitVec 64))

(assert (=> b!1487564 (= c!137448 (or (= lt!648823 lt!648700) (= (bvadd lt!648823 lt!648823) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487565 () Bool)

(assert (=> b!1487565 (= e!833872 (Intermediate!12299 false (toIndex!0 lt!648700 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1487566 () Bool)

(declare-fun e!833873 () Bool)

(assert (=> b!1487566 (= e!833874 e!833873)))

(declare-fun res!1011726 () Bool)

(assert (=> b!1487566 (= res!1011726 (and (is-Intermediate!12299 lt!648824) (not (undefined!13111 lt!648824)) (bvslt (x!133166 lt!648824) #b01111111111111111111111111111110) (bvsge (x!133166 lt!648824) #b00000000000000000000000000000000) (bvsge (x!133166 lt!648824) #b00000000000000000000000000000000)))))

(assert (=> b!1487566 (=> (not res!1011726) (not e!833873))))

(declare-fun b!1487567 () Bool)

(assert (=> b!1487567 (= e!833875 (Intermediate!12299 true (toIndex!0 lt!648700 mask!2687) #b00000000000000000000000000000000))))

(declare-fun d!156533 () Bool)

(assert (=> d!156533 e!833874))

(declare-fun c!137446 () Bool)

(assert (=> d!156533 (= c!137446 (and (is-Intermediate!12299 lt!648824) (undefined!13111 lt!648824)))))

(assert (=> d!156533 (= lt!648824 e!833875)))

(declare-fun c!137447 () Bool)

(assert (=> d!156533 (= c!137447 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!156533 (= lt!648823 (select (arr!48036 lt!648705) (toIndex!0 lt!648700 mask!2687)))))

(assert (=> d!156533 (validMask!0 mask!2687)))

(assert (=> d!156533 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648700 mask!2687) lt!648700 lt!648705 mask!2687) lt!648824)))

(declare-fun b!1487568 () Bool)

(assert (=> b!1487568 (and (bvsge (index!51589 lt!648824) #b00000000000000000000000000000000) (bvslt (index!51589 lt!648824) (size!48587 lt!648705)))))

(declare-fun res!1011724 () Bool)

(assert (=> b!1487568 (= res!1011724 (= (select (arr!48036 lt!648705) (index!51589 lt!648824)) lt!648700))))

(assert (=> b!1487568 (=> res!1011724 e!833871)))

(assert (=> b!1487568 (= e!833873 e!833871)))

(declare-fun b!1487569 () Bool)

(assert (=> b!1487569 (and (bvsge (index!51589 lt!648824) #b00000000000000000000000000000000) (bvslt (index!51589 lt!648824) (size!48587 lt!648705)))))

(declare-fun res!1011725 () Bool)

(assert (=> b!1487569 (= res!1011725 (= (select (arr!48036 lt!648705) (index!51589 lt!648824)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487569 (=> res!1011725 e!833871)))

(declare-fun b!1487570 () Bool)

(assert (=> b!1487570 (= e!833872 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!648700 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!648700 lt!648705 mask!2687))))

(assert (= (and d!156533 c!137447) b!1487567))

(assert (= (and d!156533 (not c!137447)) b!1487564))

(assert (= (and b!1487564 c!137448) b!1487565))

(assert (= (and b!1487564 (not c!137448)) b!1487570))

(assert (= (and d!156533 c!137446) b!1487562))

(assert (= (and d!156533 (not c!137446)) b!1487566))

(assert (= (and b!1487566 res!1011726) b!1487568))

(assert (= (and b!1487568 (not res!1011724)) b!1487569))

(assert (= (and b!1487569 (not res!1011725)) b!1487563))

(declare-fun m!1372239 () Bool)

(assert (=> b!1487568 m!1372239))

(assert (=> b!1487570 m!1372069))

(declare-fun m!1372241 () Bool)

(assert (=> b!1487570 m!1372241))

(assert (=> b!1487570 m!1372241))

(declare-fun m!1372243 () Bool)

(assert (=> b!1487570 m!1372243))

(assert (=> b!1487569 m!1372239))

(assert (=> b!1487563 m!1372239))

(assert (=> d!156533 m!1372069))

(declare-fun m!1372245 () Bool)

(assert (=> d!156533 m!1372245))

(assert (=> d!156533 m!1372057))

(assert (=> b!1487254 d!156533))

(declare-fun d!156537 () Bool)

(declare-fun lt!648830 () (_ BitVec 32))

(declare-fun lt!648829 () (_ BitVec 32))

(assert (=> d!156537 (= lt!648830 (bvmul (bvxor lt!648829 (bvlshr lt!648829 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!156537 (= lt!648829 ((_ extract 31 0) (bvand (bvxor lt!648700 (bvlshr lt!648700 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!156537 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1011727 (let ((h!36092 ((_ extract 31 0) (bvand (bvxor lt!648700 (bvlshr lt!648700 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133174 (bvmul (bvxor h!36092 (bvlshr h!36092 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133174 (bvlshr x!133174 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1011727 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1011727 #b00000000000000000000000000000000))))))

(assert (=> d!156537 (= (toIndex!0 lt!648700 mask!2687) (bvand (bvxor lt!648830 (bvlshr lt!648830 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1487254 d!156537))

(declare-fun b!1487579 () Bool)

(declare-fun e!833881 () Bool)

(declare-fun lt!648836 () SeekEntryResult!12299)

(assert (=> b!1487579 (= e!833881 (bvsge (x!133166 lt!648836) #b01111111111111111111111111111110))))

(declare-fun b!1487580 () Bool)

(assert (=> b!1487580 (and (bvsge (index!51589 lt!648836) #b00000000000000000000000000000000) (bvslt (index!51589 lt!648836) (size!48587 lt!648705)))))

(declare-fun e!833878 () Bool)

(assert (=> b!1487580 (= e!833878 (= (select (arr!48036 lt!648705) (index!51589 lt!648836)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1487581 () Bool)

(declare-fun e!833883 () SeekEntryResult!12299)

(declare-fun e!833879 () SeekEntryResult!12299)

(assert (=> b!1487581 (= e!833883 e!833879)))

(declare-fun c!137455 () Bool)

(declare-fun lt!648835 () (_ BitVec 64))

(assert (=> b!1487581 (= c!137455 (or (= lt!648835 lt!648700) (= (bvadd lt!648835 lt!648835) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487582 () Bool)

(assert (=> b!1487582 (= e!833879 (Intermediate!12299 false index!646 x!665))))

(declare-fun b!1487583 () Bool)

(declare-fun e!833880 () Bool)

(assert (=> b!1487583 (= e!833881 e!833880)))

(declare-fun res!1011730 () Bool)

(assert (=> b!1487583 (= res!1011730 (and (is-Intermediate!12299 lt!648836) (not (undefined!13111 lt!648836)) (bvslt (x!133166 lt!648836) #b01111111111111111111111111111110) (bvsge (x!133166 lt!648836) #b00000000000000000000000000000000) (bvsge (x!133166 lt!648836) x!665)))))

(assert (=> b!1487583 (=> (not res!1011730) (not e!833880))))

(declare-fun b!1487584 () Bool)

(assert (=> b!1487584 (= e!833883 (Intermediate!12299 true index!646 x!665))))

(declare-fun d!156539 () Bool)

(assert (=> d!156539 e!833881))

(declare-fun c!137451 () Bool)

(assert (=> d!156539 (= c!137451 (and (is-Intermediate!12299 lt!648836) (undefined!13111 lt!648836)))))

(assert (=> d!156539 (= lt!648836 e!833883)))

(declare-fun c!137452 () Bool)

(assert (=> d!156539 (= c!137452 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!156539 (= lt!648835 (select (arr!48036 lt!648705) index!646))))

(assert (=> d!156539 (validMask!0 mask!2687)))

(assert (=> d!156539 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648700 lt!648705 mask!2687) lt!648836)))

(declare-fun b!1487585 () Bool)

(assert (=> b!1487585 (and (bvsge (index!51589 lt!648836) #b00000000000000000000000000000000) (bvslt (index!51589 lt!648836) (size!48587 lt!648705)))))

(declare-fun res!1011728 () Bool)

(assert (=> b!1487585 (= res!1011728 (= (select (arr!48036 lt!648705) (index!51589 lt!648836)) lt!648700))))

(assert (=> b!1487585 (=> res!1011728 e!833878)))

(assert (=> b!1487585 (= e!833880 e!833878)))

(declare-fun b!1487586 () Bool)

(assert (=> b!1487586 (and (bvsge (index!51589 lt!648836) #b00000000000000000000000000000000) (bvslt (index!51589 lt!648836) (size!48587 lt!648705)))))

(declare-fun res!1011729 () Bool)

(assert (=> b!1487586 (= res!1011729 (= (select (arr!48036 lt!648705) (index!51589 lt!648836)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1487586 (=> res!1011729 e!833878)))

(declare-fun b!1487587 () Bool)

(assert (=> b!1487587 (= e!833879 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!648700 lt!648705 mask!2687))))

(assert (= (and d!156539 c!137452) b!1487584))

(assert (= (and d!156539 (not c!137452)) b!1487581))

(assert (= (and b!1487581 c!137455) b!1487582))

(assert (= (and b!1487581 (not c!137455)) b!1487587))

(assert (= (and d!156539 c!137451) b!1487579))

(assert (= (and d!156539 (not c!137451)) b!1487583))

(assert (= (and b!1487583 res!1011730) b!1487585))

(assert (= (and b!1487585 (not res!1011728)) b!1487586))

(assert (= (and b!1487586 (not res!1011729)) b!1487580))

(declare-fun m!1372247 () Bool)

(assert (=> b!1487585 m!1372247))

(assert (=> b!1487587 m!1372047))

(assert (=> b!1487587 m!1372047))

(declare-fun m!1372249 () Bool)

(assert (=> b!1487587 m!1372249))

(assert (=> b!1487586 m!1372247))

(assert (=> b!1487580 m!1372247))

(assert (=> d!156539 m!1372227))

(assert (=> d!156539 m!1372057))

(assert (=> b!1487264 d!156539))

(declare-fun bm!67910 () Bool)

(declare-fun call!67913 () Bool)

(assert (=> bm!67910 (= call!67913 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!156541 () Bool)

(declare-fun res!1011731 () Bool)

(declare-fun e!833887 () Bool)

(assert (=> d!156541 (=> res!1011731 e!833887)))

(assert (=> d!156541 (= res!1011731 (bvsge j!93 (size!48587 a!2862)))))

(assert (=> d!156541 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!833887)))

(declare-fun b!1487592 () Bool)

(declare-fun e!833889 () Bool)

(assert (=> b!1487592 (= e!833889 call!67913)))

(declare-fun b!1487593 () Bool)

(declare-fun e!833888 () Bool)

(assert (=> b!1487593 (= e!833889 e!833888)))

(declare-fun lt!648838 () (_ BitVec 64))

(assert (=> b!1487593 (= lt!648838 (select (arr!48036 a!2862) j!93))))

(declare-fun lt!648837 () Unit!49886)

(assert (=> b!1487593 (= lt!648837 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!648838 j!93))))

(assert (=> b!1487593 (arrayContainsKey!0 a!2862 lt!648838 #b00000000000000000000000000000000)))

(declare-fun lt!648839 () Unit!49886)

(assert (=> b!1487593 (= lt!648839 lt!648837)))

(declare-fun res!1011732 () Bool)

(assert (=> b!1487593 (= res!1011732 (= (seekEntryOrOpen!0 (select (arr!48036 a!2862) j!93) a!2862 mask!2687) (Found!12299 j!93)))))

(assert (=> b!1487593 (=> (not res!1011732) (not e!833888))))

(declare-fun b!1487594 () Bool)

(assert (=> b!1487594 (= e!833888 call!67913)))

(declare-fun b!1487595 () Bool)

(assert (=> b!1487595 (= e!833887 e!833889)))

(declare-fun c!137458 () Bool)

(assert (=> b!1487595 (= c!137458 (validKeyInArray!0 (select (arr!48036 a!2862) j!93)))))

(assert (= (and d!156541 (not res!1011731)) b!1487595))

(assert (= (and b!1487595 c!137458) b!1487593))

(assert (= (and b!1487595 (not c!137458)) b!1487592))

(assert (= (and b!1487593 res!1011732) b!1487594))

(assert (= (or b!1487594 b!1487592) bm!67910))

(declare-fun m!1372251 () Bool)

(assert (=> bm!67910 m!1372251))

(assert (=> b!1487593 m!1372023))

(declare-fun m!1372253 () Bool)

(assert (=> b!1487593 m!1372253))

(declare-fun m!1372255 () Bool)

(assert (=> b!1487593 m!1372255))

(assert (=> b!1487593 m!1372023))

(assert (=> b!1487593 m!1372065))

(assert (=> b!1487595 m!1372023))

(assert (=> b!1487595 m!1372023))

(assert (=> b!1487595 m!1372049))

(assert (=> b!1487258 d!156541))

(declare-fun d!156543 () Bool)

(assert (=> d!156543 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!648844 () Unit!49886)

(declare-fun choose!38 (array!99532 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49886)

(assert (=> d!156543 (= lt!648844 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!156543 (validMask!0 mask!2687)))

(assert (=> d!156543 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!648844)))

(declare-fun bs!42779 () Bool)

(assert (= bs!42779 d!156543))

(assert (=> bs!42779 m!1372043))

(declare-fun m!1372263 () Bool)

(assert (=> bs!42779 m!1372263))

(assert (=> bs!42779 m!1372057))

(assert (=> b!1487258 d!156543))

(declare-fun d!156547 () Bool)

(declare-fun lt!648853 () (_ BitVec 32))

(assert (=> d!156547 (and (bvsge lt!648853 #b00000000000000000000000000000000) (bvslt lt!648853 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!156547 (= lt!648853 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!156547 (validMask!0 mask!2687)))

(assert (=> d!156547 (= (nextIndex!0 index!646 x!665 mask!2687) lt!648853)))

(declare-fun bs!42781 () Bool)

(assert (= bs!42781 d!156547))

(declare-fun m!1372269 () Bool)

(assert (=> bs!42781 m!1372269))

(assert (=> bs!42781 m!1372057))

(assert (=> b!1487247 d!156547))

(declare-fun d!156553 () Bool)

(assert (=> d!156553 (= (validKeyInArray!0 (select (arr!48036 a!2862) j!93)) (and (not (= (select (arr!48036 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48036 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1487257 d!156553))

(assert (=> b!1487246 d!156523))

(assert (=> b!1487246 d!156521))

(declare-fun b!1487615 () Bool)

(declare-fun e!833904 () Bool)

(declare-fun lt!648857 () SeekEntryResult!12299)

(assert (=> b!1487615 (= e!833904 (bvsge (x!133166 lt!648857) #b01111111111111111111111111111110))))

(declare-fun b!1487616 () Bool)

(assert (=> b!1487616 (and (bvsge (index!51589 lt!648857) #b00000000000000000000000000000000) (bvslt (index!51589 lt!648857) (size!48587 a!2862)))))

(declare-fun e!833901 () Bool)

(assert (=> b!1487616 (= e!833901 (= (select (arr!48036 a!2862) (index!51589 lt!648857)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1487617 () Bool)

(declare-fun e!833905 () SeekEntryResult!12299)

(declare-fun e!833902 () SeekEntryResult!12299)

(assert (=> b!1487617 (= e!833905 e!833902)))

(declare-fun c!137468 () Bool)

(declare-fun lt!648856 () (_ BitVec 64))

(assert (=> b!1487617 (= c!137468 (or (= lt!648856 (select (arr!48036 a!2862) j!93)) (= (bvadd lt!648856 lt!648856) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1487618 () Bool)

(assert (=> b!1487618 (= e!833902 (Intermediate!12299 false lt!648706 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1487619 () Bool)

(declare-fun e!833903 () Bool)

(assert (=> b!1487619 (= e!833904 e!833903)))

(declare-fun res!1011740 () Bool)

(assert (=> b!1487619 (= res!1011740 (and (is-Intermediate!12299 lt!648857) (not (undefined!13111 lt!648857)) (bvslt (x!133166 lt!648857) #b01111111111111111111111111111110) (bvsge (x!133166 lt!648857) #b00000000000000000000000000000000) (bvsge (x!133166 lt!648857) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1487619 (=> (not res!1011740) (not e!833903))))

(declare-fun b!1487620 () Bool)

(assert (=> b!1487620 (= e!833905 (Intermediate!12299 true lt!648706 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun d!156557 () Bool)

(assert (=> d!156557 e!833904))

(declare-fun c!137466 () Bool)

(assert (=> d!156557 (= c!137466 (and (is-Intermediate!12299 lt!648857) (undefined!13111 lt!648857)))))

(assert (=> d!156557 (= lt!648857 e!833905)))

(declare-fun c!137467 () Bool)

(assert (=> d!156557 (= c!137467 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(assert (=> d!156557 (= lt!648856 (select (arr!48036 a!2862) lt!648706))))

(assert (=> d!156557 (validMask!0 mask!2687)))

(assert (=> d!156557 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!648706 (select (arr!48036 a!2862) j!93) a!2862 mask!2687) lt!648857)))

