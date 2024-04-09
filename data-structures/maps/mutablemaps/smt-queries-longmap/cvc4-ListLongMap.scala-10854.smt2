; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127148 () Bool)

(assert start!127148)

(declare-fun b!1493786 () Bool)

(declare-fun e!836803 () Bool)

(declare-fun e!836807 () Bool)

(assert (=> b!1493786 (= e!836803 e!836807)))

(declare-fun res!1016339 () Bool)

(assert (=> b!1493786 (=> (not res!1016339) (not e!836807))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12383 0))(
  ( (MissingZero!12383 (index!51923 (_ BitVec 32))) (Found!12383 (index!51924 (_ BitVec 32))) (Intermediate!12383 (undefined!13195 Bool) (index!51925 (_ BitVec 32)) (x!133522 (_ BitVec 32))) (Undefined!12383) (MissingVacant!12383 (index!51926 (_ BitVec 32))) )
))
(declare-fun lt!651109 () SeekEntryResult!12383)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1493786 (= res!1016339 (= lt!651109 (Intermediate!12383 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!651108 () (_ BitVec 64))

(declare-datatypes ((array!99712 0))(
  ( (array!99713 (arr!48120 (Array (_ BitVec 32) (_ BitVec 64))) (size!48671 (_ BitVec 32))) )
))
(declare-fun lt!651107 () array!99712)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99712 (_ BitVec 32)) SeekEntryResult!12383)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493786 (= lt!651109 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651108 mask!2687) lt!651108 lt!651107 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun a!2862 () array!99712)

(assert (=> b!1493786 (= lt!651108 (select (store (arr!48120 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1493787 () Bool)

(declare-fun res!1016332 () Bool)

(declare-fun e!836806 () Bool)

(assert (=> b!1493787 (=> (not res!1016332) (not e!836806))))

(assert (=> b!1493787 (= res!1016332 (and (= (size!48671 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48671 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48671 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1493788 () Bool)

(declare-fun e!836801 () Bool)

(assert (=> b!1493788 (= e!836801 e!836803)))

(declare-fun res!1016341 () Bool)

(assert (=> b!1493788 (=> (not res!1016341) (not e!836803))))

(declare-fun lt!651111 () SeekEntryResult!12383)

(assert (=> b!1493788 (= res!1016341 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48120 a!2862) j!93) mask!2687) (select (arr!48120 a!2862) j!93) a!2862 mask!2687) lt!651111))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1493788 (= lt!651111 (Intermediate!12383 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1493789 () Bool)

(declare-fun res!1016335 () Bool)

(declare-fun e!836802 () Bool)

(assert (=> b!1493789 (=> (not res!1016335) (not e!836802))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99712 (_ BitVec 32)) SeekEntryResult!12383)

(assert (=> b!1493789 (= res!1016335 (= (seekEntryOrOpen!0 (select (arr!48120 a!2862) j!93) a!2862 mask!2687) (Found!12383 j!93)))))

(declare-fun b!1493790 () Bool)

(declare-fun res!1016343 () Bool)

(assert (=> b!1493790 (=> (not res!1016343) (not e!836806))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1493790 (= res!1016343 (validKeyInArray!0 (select (arr!48120 a!2862) j!93)))))

(declare-fun b!1493791 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun e!836804 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1493791 (= e!836804 (= lt!651109 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651108 lt!651107 mask!2687)))))

(declare-fun b!1493792 () Bool)

(declare-fun res!1016346 () Bool)

(assert (=> b!1493792 (=> (not res!1016346) (not e!836807))))

(assert (=> b!1493792 (= res!1016346 e!836804)))

(declare-fun c!138260 () Bool)

(assert (=> b!1493792 (= c!138260 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1493794 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99712 (_ BitVec 32)) SeekEntryResult!12383)

(assert (=> b!1493794 (= e!836804 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651108 lt!651107 mask!2687) (seekEntryOrOpen!0 lt!651108 lt!651107 mask!2687)))))

(declare-fun b!1493795 () Bool)

(assert (=> b!1493795 (= e!836806 e!836801)))

(declare-fun res!1016345 () Bool)

(assert (=> b!1493795 (=> (not res!1016345) (not e!836801))))

(assert (=> b!1493795 (= res!1016345 (= (select (store (arr!48120 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493795 (= lt!651107 (array!99713 (store (arr!48120 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48671 a!2862)))))

(declare-fun b!1493796 () Bool)

(declare-fun res!1016331 () Bool)

(assert (=> b!1493796 (=> (not res!1016331) (not e!836807))))

(assert (=> b!1493796 (= res!1016331 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1493797 () Bool)

(declare-fun res!1016342 () Bool)

(assert (=> b!1493797 (=> (not res!1016342) (not e!836806))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99712 (_ BitVec 32)) Bool)

(assert (=> b!1493797 (= res!1016342 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1493798 () Bool)

(declare-fun res!1016334 () Bool)

(assert (=> b!1493798 (=> (not res!1016334) (not e!836806))))

(assert (=> b!1493798 (= res!1016334 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48671 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48671 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48671 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1493799 () Bool)

(declare-fun e!836805 () Bool)

(assert (=> b!1493799 (= e!836805 true)))

(declare-fun lt!651112 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493799 (= lt!651112 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1493800 () Bool)

(declare-fun res!1016337 () Bool)

(assert (=> b!1493800 (=> (not res!1016337) (not e!836806))))

(assert (=> b!1493800 (= res!1016337 (validKeyInArray!0 (select (arr!48120 a!2862) i!1006)))))

(declare-fun b!1493801 () Bool)

(assert (=> b!1493801 (= e!836802 (or (= (select (arr!48120 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48120 a!2862) intermediateBeforeIndex!19) (select (arr!48120 a!2862) j!93))))))

(declare-fun b!1493802 () Bool)

(declare-fun res!1016336 () Bool)

(assert (=> b!1493802 (=> (not res!1016336) (not e!836803))))

(assert (=> b!1493802 (= res!1016336 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48120 a!2862) j!93) a!2862 mask!2687) lt!651111))))

(declare-fun b!1493803 () Bool)

(assert (=> b!1493803 (= e!836807 (not e!836805))))

(declare-fun res!1016333 () Bool)

(assert (=> b!1493803 (=> res!1016333 e!836805)))

(assert (=> b!1493803 (= res!1016333 (or (and (= (select (arr!48120 a!2862) index!646) (select (store (arr!48120 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48120 a!2862) index!646) (select (arr!48120 a!2862) j!93))) (= (select (arr!48120 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1493803 e!836802))

(declare-fun res!1016338 () Bool)

(assert (=> b!1493803 (=> (not res!1016338) (not e!836802))))

(assert (=> b!1493803 (= res!1016338 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50054 0))(
  ( (Unit!50055) )
))
(declare-fun lt!651110 () Unit!50054)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99712 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50054)

(assert (=> b!1493803 (= lt!651110 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1493793 () Bool)

(declare-fun res!1016344 () Bool)

(assert (=> b!1493793 (=> (not res!1016344) (not e!836806))))

(declare-datatypes ((List!34801 0))(
  ( (Nil!34798) (Cons!34797 (h!36186 (_ BitVec 64)) (t!49502 List!34801)) )
))
(declare-fun arrayNoDuplicates!0 (array!99712 (_ BitVec 32) List!34801) Bool)

(assert (=> b!1493793 (= res!1016344 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34798))))

(declare-fun res!1016340 () Bool)

(assert (=> start!127148 (=> (not res!1016340) (not e!836806))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127148 (= res!1016340 (validMask!0 mask!2687))))

(assert (=> start!127148 e!836806))

(assert (=> start!127148 true))

(declare-fun array_inv!37065 (array!99712) Bool)

(assert (=> start!127148 (array_inv!37065 a!2862)))

(assert (= (and start!127148 res!1016340) b!1493787))

(assert (= (and b!1493787 res!1016332) b!1493800))

(assert (= (and b!1493800 res!1016337) b!1493790))

(assert (= (and b!1493790 res!1016343) b!1493797))

(assert (= (and b!1493797 res!1016342) b!1493793))

(assert (= (and b!1493793 res!1016344) b!1493798))

(assert (= (and b!1493798 res!1016334) b!1493795))

(assert (= (and b!1493795 res!1016345) b!1493788))

(assert (= (and b!1493788 res!1016341) b!1493802))

(assert (= (and b!1493802 res!1016336) b!1493786))

(assert (= (and b!1493786 res!1016339) b!1493792))

(assert (= (and b!1493792 c!138260) b!1493791))

(assert (= (and b!1493792 (not c!138260)) b!1493794))

(assert (= (and b!1493792 res!1016346) b!1493796))

(assert (= (and b!1493796 res!1016331) b!1493803))

(assert (= (and b!1493803 res!1016338) b!1493789))

(assert (= (and b!1493789 res!1016335) b!1493801))

(assert (= (and b!1493803 (not res!1016333)) b!1493799))

(declare-fun m!1377611 () Bool)

(assert (=> b!1493793 m!1377611))

(declare-fun m!1377613 () Bool)

(assert (=> b!1493797 m!1377613))

(declare-fun m!1377615 () Bool)

(assert (=> b!1493789 m!1377615))

(assert (=> b!1493789 m!1377615))

(declare-fun m!1377617 () Bool)

(assert (=> b!1493789 m!1377617))

(declare-fun m!1377619 () Bool)

(assert (=> b!1493803 m!1377619))

(declare-fun m!1377621 () Bool)

(assert (=> b!1493803 m!1377621))

(declare-fun m!1377623 () Bool)

(assert (=> b!1493803 m!1377623))

(declare-fun m!1377625 () Bool)

(assert (=> b!1493803 m!1377625))

(declare-fun m!1377627 () Bool)

(assert (=> b!1493803 m!1377627))

(assert (=> b!1493803 m!1377615))

(declare-fun m!1377629 () Bool)

(assert (=> b!1493791 m!1377629))

(declare-fun m!1377631 () Bool)

(assert (=> b!1493801 m!1377631))

(assert (=> b!1493801 m!1377615))

(assert (=> b!1493790 m!1377615))

(assert (=> b!1493790 m!1377615))

(declare-fun m!1377633 () Bool)

(assert (=> b!1493790 m!1377633))

(declare-fun m!1377635 () Bool)

(assert (=> start!127148 m!1377635))

(declare-fun m!1377637 () Bool)

(assert (=> start!127148 m!1377637))

(assert (=> b!1493795 m!1377621))

(declare-fun m!1377639 () Bool)

(assert (=> b!1493795 m!1377639))

(declare-fun m!1377641 () Bool)

(assert (=> b!1493800 m!1377641))

(assert (=> b!1493800 m!1377641))

(declare-fun m!1377643 () Bool)

(assert (=> b!1493800 m!1377643))

(declare-fun m!1377645 () Bool)

(assert (=> b!1493786 m!1377645))

(assert (=> b!1493786 m!1377645))

(declare-fun m!1377647 () Bool)

(assert (=> b!1493786 m!1377647))

(assert (=> b!1493786 m!1377621))

(declare-fun m!1377649 () Bool)

(assert (=> b!1493786 m!1377649))

(declare-fun m!1377651 () Bool)

(assert (=> b!1493794 m!1377651))

(declare-fun m!1377653 () Bool)

(assert (=> b!1493794 m!1377653))

(declare-fun m!1377655 () Bool)

(assert (=> b!1493799 m!1377655))

(assert (=> b!1493802 m!1377615))

(assert (=> b!1493802 m!1377615))

(declare-fun m!1377657 () Bool)

(assert (=> b!1493802 m!1377657))

(assert (=> b!1493788 m!1377615))

(assert (=> b!1493788 m!1377615))

(declare-fun m!1377659 () Bool)

(assert (=> b!1493788 m!1377659))

(assert (=> b!1493788 m!1377659))

(assert (=> b!1493788 m!1377615))

(declare-fun m!1377661 () Bool)

(assert (=> b!1493788 m!1377661))

(push 1)

