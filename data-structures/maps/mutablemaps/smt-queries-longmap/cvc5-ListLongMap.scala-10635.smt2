; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124990 () Bool)

(assert start!124990)

(declare-fun b!1452120 () Bool)

(declare-fun res!983382 () Bool)

(declare-fun e!817520 () Bool)

(assert (=> b!1452120 (=> (not res!983382) (not e!817520))))

(declare-fun e!817522 () Bool)

(assert (=> b!1452120 (= res!983382 e!817522)))

(declare-fun c!133886 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1452120 (= c!133886 (bvsle x!665 intermediateAfterX!19))))

(declare-fun lt!636813 () (_ BitVec 64))

(declare-fun b!1452121 () Bool)

(declare-datatypes ((array!98355 0))(
  ( (array!98356 (arr!47461 (Array (_ BitVec 32) (_ BitVec 64))) (size!48012 (_ BitVec 32))) )
))
(declare-fun lt!636817 () array!98355)

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!11736 0))(
  ( (MissingZero!11736 (index!49335 (_ BitVec 32))) (Found!11736 (index!49336 (_ BitVec 32))) (Intermediate!11736 (undefined!12548 Bool) (index!49337 (_ BitVec 32)) (x!130988 (_ BitVec 32))) (Undefined!11736) (MissingVacant!11736 (index!49338 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98355 (_ BitVec 32)) SeekEntryResult!11736)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!98355 (_ BitVec 32)) SeekEntryResult!11736)

(assert (=> b!1452121 (= e!817522 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!636813 lt!636817 mask!2687) (seekEntryOrOpen!0 lt!636813 lt!636817 mask!2687)))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!817523 () Bool)

(declare-fun b!1452122 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!98355)

(assert (=> b!1452122 (= e!817523 (and (or (= (select (arr!47461 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47461 a!2862) intermediateBeforeIndex!19) (select (arr!47461 a!2862) j!93))) (or (and (= (select (arr!47461 a!2862) index!646) (select (store (arr!47461 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47461 a!2862) index!646) (select (arr!47461 a!2862) j!93))) (= (select (arr!47461 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (and (= index!646 intermediateAfterIndex!19) (= (select (store (arr!47461 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1452123 () Bool)

(declare-fun res!983383 () Bool)

(declare-fun e!817524 () Bool)

(assert (=> b!1452123 (=> (not res!983383) (not e!817524))))

(assert (=> b!1452123 (= res!983383 (and (= (size!48012 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48012 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48012 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1452124 () Bool)

(declare-fun e!817521 () Bool)

(assert (=> b!1452124 (= e!817524 e!817521)))

(declare-fun res!983386 () Bool)

(assert (=> b!1452124 (=> (not res!983386) (not e!817521))))

(assert (=> b!1452124 (= res!983386 (= (select (store (arr!47461 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1452124 (= lt!636817 (array!98356 (store (arr!47461 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48012 a!2862)))))

(declare-fun b!1452125 () Bool)

(declare-fun res!983378 () Bool)

(assert (=> b!1452125 (=> (not res!983378) (not e!817524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!98355 (_ BitVec 32)) Bool)

(assert (=> b!1452125 (= res!983378 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1452126 () Bool)

(declare-fun res!983379 () Bool)

(assert (=> b!1452126 (=> (not res!983379) (not e!817523))))

(assert (=> b!1452126 (= res!983379 (= (seekEntryOrOpen!0 (select (arr!47461 a!2862) j!93) a!2862 mask!2687) (Found!11736 j!93)))))

(declare-fun b!1452127 () Bool)

(declare-fun e!817526 () Bool)

(assert (=> b!1452127 (= e!817526 e!817520)))

(declare-fun res!983377 () Bool)

(assert (=> b!1452127 (=> (not res!983377) (not e!817520))))

(declare-fun lt!636815 () SeekEntryResult!11736)

(assert (=> b!1452127 (= res!983377 (= lt!636815 (Intermediate!11736 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!98355 (_ BitVec 32)) SeekEntryResult!11736)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1452127 (= lt!636815 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!636813 mask!2687) lt!636813 lt!636817 mask!2687))))

(assert (=> b!1452127 (= lt!636813 (select (store (arr!47461 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1452128 () Bool)

(assert (=> b!1452128 (= e!817520 (not (or (and (= (select (arr!47461 a!2862) index!646) (select (store (arr!47461 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47461 a!2862) index!646) (select (arr!47461 a!2862) j!93))) (= (select (arr!47461 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19)) (bvslt mask!2687 #b00000000000000000000000000000000) (bvslt index!646 (bvadd #b00000000000000000000000000000001 mask!2687)))))))

(assert (=> b!1452128 e!817523))

(declare-fun res!983387 () Bool)

(assert (=> b!1452128 (=> (not res!983387) (not e!817523))))

(assert (=> b!1452128 (= res!983387 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!48916 0))(
  ( (Unit!48917) )
))
(declare-fun lt!636814 () Unit!48916)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!98355 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!48916)

(assert (=> b!1452128 (= lt!636814 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1452129 () Bool)

(declare-fun res!983380 () Bool)

(assert (=> b!1452129 (=> (not res!983380) (not e!817524))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1452129 (= res!983380 (validKeyInArray!0 (select (arr!47461 a!2862) j!93)))))

(declare-fun res!983385 () Bool)

(assert (=> start!124990 (=> (not res!983385) (not e!817524))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124990 (= res!983385 (validMask!0 mask!2687))))

(assert (=> start!124990 e!817524))

(assert (=> start!124990 true))

(declare-fun array_inv!36406 (array!98355) Bool)

(assert (=> start!124990 (array_inv!36406 a!2862)))

(declare-fun b!1452130 () Bool)

(assert (=> b!1452130 (= e!817522 (= lt!636815 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!636813 lt!636817 mask!2687)))))

(declare-fun b!1452131 () Bool)

(assert (=> b!1452131 (= e!817521 e!817526)))

(declare-fun res!983376 () Bool)

(assert (=> b!1452131 (=> (not res!983376) (not e!817526))))

(declare-fun lt!636816 () SeekEntryResult!11736)

(assert (=> b!1452131 (= res!983376 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47461 a!2862) j!93) mask!2687) (select (arr!47461 a!2862) j!93) a!2862 mask!2687) lt!636816))))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1452131 (= lt!636816 (Intermediate!11736 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1452132 () Bool)

(declare-fun res!983381 () Bool)

(assert (=> b!1452132 (=> (not res!983381) (not e!817524))))

(assert (=> b!1452132 (= res!983381 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48012 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48012 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48012 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1452133 () Bool)

(declare-fun res!983374 () Bool)

(assert (=> b!1452133 (=> (not res!983374) (not e!817520))))

(assert (=> b!1452133 (= res!983374 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1452134 () Bool)

(declare-fun res!983384 () Bool)

(assert (=> b!1452134 (=> (not res!983384) (not e!817524))))

(assert (=> b!1452134 (= res!983384 (validKeyInArray!0 (select (arr!47461 a!2862) i!1006)))))

(declare-fun b!1452135 () Bool)

(declare-fun res!983388 () Bool)

(assert (=> b!1452135 (=> (not res!983388) (not e!817526))))

(assert (=> b!1452135 (= res!983388 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47461 a!2862) j!93) a!2862 mask!2687) lt!636816))))

(declare-fun b!1452136 () Bool)

(declare-fun res!983375 () Bool)

(assert (=> b!1452136 (=> (not res!983375) (not e!817524))))

(declare-datatypes ((List!34142 0))(
  ( (Nil!34139) (Cons!34138 (h!35488 (_ BitVec 64)) (t!48843 List!34142)) )
))
(declare-fun arrayNoDuplicates!0 (array!98355 (_ BitVec 32) List!34142) Bool)

(assert (=> b!1452136 (= res!983375 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34139))))

(assert (= (and start!124990 res!983385) b!1452123))

(assert (= (and b!1452123 res!983383) b!1452134))

(assert (= (and b!1452134 res!983384) b!1452129))

(assert (= (and b!1452129 res!983380) b!1452125))

(assert (= (and b!1452125 res!983378) b!1452136))

(assert (= (and b!1452136 res!983375) b!1452132))

(assert (= (and b!1452132 res!983381) b!1452124))

(assert (= (and b!1452124 res!983386) b!1452131))

(assert (= (and b!1452131 res!983376) b!1452135))

(assert (= (and b!1452135 res!983388) b!1452127))

(assert (= (and b!1452127 res!983377) b!1452120))

(assert (= (and b!1452120 c!133886) b!1452130))

(assert (= (and b!1452120 (not c!133886)) b!1452121))

(assert (= (and b!1452120 res!983382) b!1452133))

(assert (= (and b!1452133 res!983374) b!1452128))

(assert (= (and b!1452128 res!983387) b!1452126))

(assert (= (and b!1452126 res!983379) b!1452122))

(declare-fun m!1340757 () Bool)

(assert (=> b!1452125 m!1340757))

(declare-fun m!1340759 () Bool)

(assert (=> start!124990 m!1340759))

(declare-fun m!1340761 () Bool)

(assert (=> start!124990 m!1340761))

(declare-fun m!1340763 () Bool)

(assert (=> b!1452124 m!1340763))

(declare-fun m!1340765 () Bool)

(assert (=> b!1452124 m!1340765))

(assert (=> b!1452122 m!1340763))

(declare-fun m!1340767 () Bool)

(assert (=> b!1452122 m!1340767))

(declare-fun m!1340769 () Bool)

(assert (=> b!1452122 m!1340769))

(declare-fun m!1340771 () Bool)

(assert (=> b!1452122 m!1340771))

(declare-fun m!1340773 () Bool)

(assert (=> b!1452122 m!1340773))

(declare-fun m!1340775 () Bool)

(assert (=> b!1452134 m!1340775))

(assert (=> b!1452134 m!1340775))

(declare-fun m!1340777 () Bool)

(assert (=> b!1452134 m!1340777))

(assert (=> b!1452135 m!1340773))

(assert (=> b!1452135 m!1340773))

(declare-fun m!1340779 () Bool)

(assert (=> b!1452135 m!1340779))

(assert (=> b!1452129 m!1340773))

(assert (=> b!1452129 m!1340773))

(declare-fun m!1340781 () Bool)

(assert (=> b!1452129 m!1340781))

(declare-fun m!1340783 () Bool)

(assert (=> b!1452128 m!1340783))

(assert (=> b!1452128 m!1340763))

(assert (=> b!1452128 m!1340769))

(assert (=> b!1452128 m!1340771))

(declare-fun m!1340785 () Bool)

(assert (=> b!1452128 m!1340785))

(assert (=> b!1452128 m!1340773))

(assert (=> b!1452131 m!1340773))

(assert (=> b!1452131 m!1340773))

(declare-fun m!1340787 () Bool)

(assert (=> b!1452131 m!1340787))

(assert (=> b!1452131 m!1340787))

(assert (=> b!1452131 m!1340773))

(declare-fun m!1340789 () Bool)

(assert (=> b!1452131 m!1340789))

(declare-fun m!1340791 () Bool)

(assert (=> b!1452127 m!1340791))

(assert (=> b!1452127 m!1340791))

(declare-fun m!1340793 () Bool)

(assert (=> b!1452127 m!1340793))

(assert (=> b!1452127 m!1340763))

(declare-fun m!1340795 () Bool)

(assert (=> b!1452127 m!1340795))

(declare-fun m!1340797 () Bool)

(assert (=> b!1452136 m!1340797))

(declare-fun m!1340799 () Bool)

(assert (=> b!1452121 m!1340799))

(declare-fun m!1340801 () Bool)

(assert (=> b!1452121 m!1340801))

(assert (=> b!1452126 m!1340773))

(assert (=> b!1452126 m!1340773))

(declare-fun m!1340803 () Bool)

(assert (=> b!1452126 m!1340803))

(declare-fun m!1340805 () Bool)

(assert (=> b!1452130 m!1340805))

(push 1)

(assert (not b!1452130))

(assert (not b!1452129))

(assert (not b!1452131))

(assert (not start!124990))

(assert (not b!1452127))

(assert (not b!1452134))

(assert (not b!1452135))

(assert (not b!1452126))

(assert (not b!1452125))

(assert (not b!1452128))

(assert (not b!1452121))

(assert (not b!1452136))

(check-sat)

(pop 1)

(push 1)

(check-sat)

