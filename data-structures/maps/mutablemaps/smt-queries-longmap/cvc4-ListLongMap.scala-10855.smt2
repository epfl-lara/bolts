; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127154 () Bool)

(assert start!127154)

(declare-fun b!1493948 () Bool)

(declare-fun e!836878 () Bool)

(assert (=> b!1493948 (= e!836878 true)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun lt!651163 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493948 (= lt!651163 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1493950 () Bool)

(declare-fun res!1016486 () Bool)

(declare-fun e!836876 () Bool)

(assert (=> b!1493950 (=> (not res!1016486) (not e!836876))))

(declare-datatypes ((array!99718 0))(
  ( (array!99719 (arr!48123 (Array (_ BitVec 32) (_ BitVec 64))) (size!48674 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99718)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99718 (_ BitVec 32)) Bool)

(assert (=> b!1493950 (= res!1016486 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1493951 () Bool)

(declare-fun e!836877 () Bool)

(declare-fun e!836879 () Bool)

(assert (=> b!1493951 (= e!836877 e!836879)))

(declare-fun res!1016478 () Bool)

(assert (=> b!1493951 (=> (not res!1016478) (not e!836879))))

(declare-datatypes ((SeekEntryResult!12386 0))(
  ( (MissingZero!12386 (index!51935 (_ BitVec 32))) (Found!12386 (index!51936 (_ BitVec 32))) (Intermediate!12386 (undefined!13198 Bool) (index!51937 (_ BitVec 32)) (x!133533 (_ BitVec 32))) (Undefined!12386) (MissingVacant!12386 (index!51938 (_ BitVec 32))) )
))
(declare-fun lt!651165 () SeekEntryResult!12386)

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99718 (_ BitVec 32)) SeekEntryResult!12386)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493951 (= res!1016478 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48123 a!2862) j!93) mask!2687) (select (arr!48123 a!2862) j!93) a!2862 mask!2687) lt!651165))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1493951 (= lt!651165 (Intermediate!12386 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1493952 () Bool)

(declare-fun res!1016487 () Bool)

(declare-fun e!836875 () Bool)

(assert (=> b!1493952 (=> (not res!1016487) (not e!836875))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99718 (_ BitVec 32)) SeekEntryResult!12386)

(assert (=> b!1493952 (= res!1016487 (= (seekEntryOrOpen!0 (select (arr!48123 a!2862) j!93) a!2862 mask!2687) (Found!12386 j!93)))))

(declare-fun e!836872 () Bool)

(declare-fun b!1493953 () Bool)

(declare-fun lt!651166 () (_ BitVec 64))

(declare-fun lt!651161 () array!99718)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99718 (_ BitVec 32)) SeekEntryResult!12386)

(assert (=> b!1493953 (= e!836872 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651166 lt!651161 mask!2687) (seekEntryOrOpen!0 lt!651166 lt!651161 mask!2687)))))

(declare-fun b!1493954 () Bool)

(declare-fun res!1016477 () Bool)

(declare-fun e!836873 () Bool)

(assert (=> b!1493954 (=> (not res!1016477) (not e!836873))))

(assert (=> b!1493954 (= res!1016477 e!836872)))

(declare-fun c!138269 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1493954 (= c!138269 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1493955 () Bool)

(declare-fun res!1016483 () Bool)

(assert (=> b!1493955 (=> (not res!1016483) (not e!836876))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1493955 (= res!1016483 (and (= (size!48674 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48674 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48674 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1493956 () Bool)

(declare-fun res!1016489 () Bool)

(assert (=> b!1493956 (=> (not res!1016489) (not e!836876))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1493956 (= res!1016489 (validKeyInArray!0 (select (arr!48123 a!2862) i!1006)))))

(declare-fun b!1493957 () Bool)

(assert (=> b!1493957 (= e!836876 e!836877)))

(declare-fun res!1016479 () Bool)

(assert (=> b!1493957 (=> (not res!1016479) (not e!836877))))

(assert (=> b!1493957 (= res!1016479 (= (select (store (arr!48123 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493957 (= lt!651161 (array!99719 (store (arr!48123 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48674 a!2862)))))

(declare-fun b!1493958 () Bool)

(declare-fun res!1016484 () Bool)

(assert (=> b!1493958 (=> (not res!1016484) (not e!836873))))

(assert (=> b!1493958 (= res!1016484 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1493959 () Bool)

(declare-fun res!1016482 () Bool)

(assert (=> b!1493959 (=> (not res!1016482) (not e!836876))))

(assert (=> b!1493959 (= res!1016482 (validKeyInArray!0 (select (arr!48123 a!2862) j!93)))))

(declare-fun res!1016490 () Bool)

(assert (=> start!127154 (=> (not res!1016490) (not e!836876))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127154 (= res!1016490 (validMask!0 mask!2687))))

(assert (=> start!127154 e!836876))

(assert (=> start!127154 true))

(declare-fun array_inv!37068 (array!99718) Bool)

(assert (=> start!127154 (array_inv!37068 a!2862)))

(declare-fun b!1493949 () Bool)

(assert (=> b!1493949 (= e!836879 e!836873)))

(declare-fun res!1016476 () Bool)

(assert (=> b!1493949 (=> (not res!1016476) (not e!836873))))

(declare-fun lt!651162 () SeekEntryResult!12386)

(assert (=> b!1493949 (= res!1016476 (= lt!651162 (Intermediate!12386 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1493949 (= lt!651162 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651166 mask!2687) lt!651166 lt!651161 mask!2687))))

(assert (=> b!1493949 (= lt!651166 (select (store (arr!48123 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1493960 () Bool)

(declare-fun res!1016485 () Bool)

(assert (=> b!1493960 (=> (not res!1016485) (not e!836876))))

(declare-datatypes ((List!34804 0))(
  ( (Nil!34801) (Cons!34800 (h!36189 (_ BitVec 64)) (t!49505 List!34804)) )
))
(declare-fun arrayNoDuplicates!0 (array!99718 (_ BitVec 32) List!34804) Bool)

(assert (=> b!1493960 (= res!1016485 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34801))))

(declare-fun b!1493961 () Bool)

(assert (=> b!1493961 (= e!836873 (not e!836878))))

(declare-fun res!1016480 () Bool)

(assert (=> b!1493961 (=> res!1016480 e!836878)))

(assert (=> b!1493961 (= res!1016480 (or (and (= (select (arr!48123 a!2862) index!646) (select (store (arr!48123 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48123 a!2862) index!646) (select (arr!48123 a!2862) j!93))) (= (select (arr!48123 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1493961 e!836875))

(declare-fun res!1016488 () Bool)

(assert (=> b!1493961 (=> (not res!1016488) (not e!836875))))

(assert (=> b!1493961 (= res!1016488 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50060 0))(
  ( (Unit!50061) )
))
(declare-fun lt!651164 () Unit!50060)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99718 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50060)

(assert (=> b!1493961 (= lt!651164 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1493962 () Bool)

(assert (=> b!1493962 (= e!836872 (= lt!651162 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651166 lt!651161 mask!2687)))))

(declare-fun b!1493963 () Bool)

(assert (=> b!1493963 (= e!836875 (or (= (select (arr!48123 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48123 a!2862) intermediateBeforeIndex!19) (select (arr!48123 a!2862) j!93))))))

(declare-fun b!1493964 () Bool)

(declare-fun res!1016481 () Bool)

(assert (=> b!1493964 (=> (not res!1016481) (not e!836876))))

(assert (=> b!1493964 (= res!1016481 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48674 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48674 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48674 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1493965 () Bool)

(declare-fun res!1016475 () Bool)

(assert (=> b!1493965 (=> (not res!1016475) (not e!836879))))

(assert (=> b!1493965 (= res!1016475 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48123 a!2862) j!93) a!2862 mask!2687) lt!651165))))

(assert (= (and start!127154 res!1016490) b!1493955))

(assert (= (and b!1493955 res!1016483) b!1493956))

(assert (= (and b!1493956 res!1016489) b!1493959))

(assert (= (and b!1493959 res!1016482) b!1493950))

(assert (= (and b!1493950 res!1016486) b!1493960))

(assert (= (and b!1493960 res!1016485) b!1493964))

(assert (= (and b!1493964 res!1016481) b!1493957))

(assert (= (and b!1493957 res!1016479) b!1493951))

(assert (= (and b!1493951 res!1016478) b!1493965))

(assert (= (and b!1493965 res!1016475) b!1493949))

(assert (= (and b!1493949 res!1016476) b!1493954))

(assert (= (and b!1493954 c!138269) b!1493962))

(assert (= (and b!1493954 (not c!138269)) b!1493953))

(assert (= (and b!1493954 res!1016477) b!1493958))

(assert (= (and b!1493958 res!1016484) b!1493961))

(assert (= (and b!1493961 res!1016488) b!1493952))

(assert (= (and b!1493952 res!1016487) b!1493963))

(assert (= (and b!1493961 (not res!1016480)) b!1493948))

(declare-fun m!1377767 () Bool)

(assert (=> b!1493956 m!1377767))

(assert (=> b!1493956 m!1377767))

(declare-fun m!1377769 () Bool)

(assert (=> b!1493956 m!1377769))

(declare-fun m!1377771 () Bool)

(assert (=> b!1493961 m!1377771))

(declare-fun m!1377773 () Bool)

(assert (=> b!1493961 m!1377773))

(declare-fun m!1377775 () Bool)

(assert (=> b!1493961 m!1377775))

(declare-fun m!1377777 () Bool)

(assert (=> b!1493961 m!1377777))

(declare-fun m!1377779 () Bool)

(assert (=> b!1493961 m!1377779))

(declare-fun m!1377781 () Bool)

(assert (=> b!1493961 m!1377781))

(declare-fun m!1377783 () Bool)

(assert (=> start!127154 m!1377783))

(declare-fun m!1377785 () Bool)

(assert (=> start!127154 m!1377785))

(declare-fun m!1377787 () Bool)

(assert (=> b!1493962 m!1377787))

(declare-fun m!1377789 () Bool)

(assert (=> b!1493963 m!1377789))

(assert (=> b!1493963 m!1377781))

(assert (=> b!1493957 m!1377773))

(declare-fun m!1377791 () Bool)

(assert (=> b!1493957 m!1377791))

(declare-fun m!1377793 () Bool)

(assert (=> b!1493953 m!1377793))

(declare-fun m!1377795 () Bool)

(assert (=> b!1493953 m!1377795))

(declare-fun m!1377797 () Bool)

(assert (=> b!1493960 m!1377797))

(assert (=> b!1493959 m!1377781))

(assert (=> b!1493959 m!1377781))

(declare-fun m!1377799 () Bool)

(assert (=> b!1493959 m!1377799))

(assert (=> b!1493965 m!1377781))

(assert (=> b!1493965 m!1377781))

(declare-fun m!1377801 () Bool)

(assert (=> b!1493965 m!1377801))

(assert (=> b!1493951 m!1377781))

(assert (=> b!1493951 m!1377781))

(declare-fun m!1377803 () Bool)

(assert (=> b!1493951 m!1377803))

(assert (=> b!1493951 m!1377803))

(assert (=> b!1493951 m!1377781))

(declare-fun m!1377805 () Bool)

(assert (=> b!1493951 m!1377805))

(declare-fun m!1377807 () Bool)

(assert (=> b!1493948 m!1377807))

(declare-fun m!1377809 () Bool)

(assert (=> b!1493950 m!1377809))

(declare-fun m!1377811 () Bool)

(assert (=> b!1493949 m!1377811))

(assert (=> b!1493949 m!1377811))

(declare-fun m!1377813 () Bool)

(assert (=> b!1493949 m!1377813))

(assert (=> b!1493949 m!1377773))

(declare-fun m!1377815 () Bool)

(assert (=> b!1493949 m!1377815))

(assert (=> b!1493952 m!1377781))

(assert (=> b!1493952 m!1377781))

(declare-fun m!1377817 () Bool)

(assert (=> b!1493952 m!1377817))

(push 1)

