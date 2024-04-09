; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127240 () Bool)

(assert start!127240)

(declare-fun b!1494922 () Bool)

(declare-fun e!837383 () Bool)

(declare-fun e!837378 () Bool)

(assert (=> b!1494922 (= e!837383 e!837378)))

(declare-fun res!1017106 () Bool)

(assert (=> b!1494922 (=> res!1017106 e!837378)))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun lt!651528 () (_ BitVec 32))

(declare-datatypes ((array!99741 0))(
  ( (array!99742 (arr!48133 (Array (_ BitVec 32) (_ BitVec 64))) (size!48684 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99741)

(assert (=> b!1494922 (= res!1017106 (or (bvslt (bvadd #b00000000000000000000000000000001 x!665) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110) (bvslt lt!651528 #b00000000000000000000000000000000) (bvsge lt!651528 (size!48684 a!2862))))))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494922 (= lt!651528 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1494923 () Bool)

(declare-fun e!837379 () Bool)

(assert (=> b!1494923 (= e!837378 e!837379)))

(declare-fun c!138448 () Bool)

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1494923 (= c!138448 (bvsle (bvadd #b00000000000000000000000000000001 x!665) intermediateAfterX!19))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun e!837377 () Bool)

(declare-fun b!1494924 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1494924 (= e!837377 (or (= (select (arr!48133 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48133 a!2862) intermediateBeforeIndex!19) (select (arr!48133 a!2862) j!93))))))

(declare-fun b!1494926 () Bool)

(declare-fun res!1017099 () Bool)

(declare-fun e!837382 () Bool)

(assert (=> b!1494926 (=> (not res!1017099) (not e!837382))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1494926 (= res!1017099 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun lt!651529 () (_ BitVec 64))

(declare-fun lt!651527 () array!99741)

(declare-fun b!1494927 () Bool)

(declare-datatypes ((SeekEntryResult!12396 0))(
  ( (MissingZero!12396 (index!51975 (_ BitVec 32))) (Found!12396 (index!51976 (_ BitVec 32))) (Intermediate!12396 (undefined!13208 Bool) (index!51977 (_ BitVec 32)) (x!133587 (_ BitVec 32))) (Undefined!12396) (MissingVacant!12396 (index!51978 (_ BitVec 32))) )
))
(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99741 (_ BitVec 32)) SeekEntryResult!12396)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99741 (_ BitVec 32)) SeekEntryResult!12396)

(assert (=> b!1494927 (= e!837379 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651528 intermediateAfterIndex!19 lt!651529 lt!651527 mask!2687) (seekEntryOrOpen!0 lt!651529 lt!651527 mask!2687)))))

(declare-fun b!1494928 () Bool)

(declare-fun res!1017095 () Bool)

(declare-fun e!837375 () Bool)

(assert (=> b!1494928 (=> (not res!1017095) (not e!837375))))

(assert (=> b!1494928 (= res!1017095 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48684 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48684 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48684 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1494929 () Bool)

(declare-fun e!837381 () Bool)

(declare-fun e!837376 () Bool)

(assert (=> b!1494929 (= e!837381 e!837376)))

(declare-fun res!1017107 () Bool)

(assert (=> b!1494929 (=> (not res!1017107) (not e!837376))))

(declare-fun lt!651526 () SeekEntryResult!12396)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99741 (_ BitVec 32)) SeekEntryResult!12396)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1494929 (= res!1017107 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48133 a!2862) j!93) mask!2687) (select (arr!48133 a!2862) j!93) a!2862 mask!2687) lt!651526))))

(assert (=> b!1494929 (= lt!651526 (Intermediate!12396 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1494930 () Bool)

(declare-fun res!1017109 () Bool)

(assert (=> b!1494930 (=> (not res!1017109) (not e!837375))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1494930 (= res!1017109 (validKeyInArray!0 (select (arr!48133 a!2862) j!93)))))

(declare-fun b!1494931 () Bool)

(assert (=> b!1494931 (= e!837382 (not e!837383))))

(declare-fun res!1017102 () Bool)

(assert (=> b!1494931 (=> res!1017102 e!837383)))

(assert (=> b!1494931 (= res!1017102 (or (and (= (select (arr!48133 a!2862) index!646) (select (store (arr!48133 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48133 a!2862) index!646) (select (arr!48133 a!2862) j!93))) (= (select (arr!48133 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(assert (=> b!1494931 e!837377))

(declare-fun res!1017101 () Bool)

(assert (=> b!1494931 (=> (not res!1017101) (not e!837377))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99741 (_ BitVec 32)) Bool)

(assert (=> b!1494931 (= res!1017101 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50080 0))(
  ( (Unit!50081) )
))
(declare-fun lt!651525 () Unit!50080)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99741 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50080)

(assert (=> b!1494931 (= lt!651525 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1494932 () Bool)

(declare-fun res!1017096 () Bool)

(assert (=> b!1494932 (=> (not res!1017096) (not e!837375))))

(assert (=> b!1494932 (= res!1017096 (and (= (size!48684 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48684 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48684 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1494933 () Bool)

(declare-fun res!1017105 () Bool)

(assert (=> b!1494933 (=> (not res!1017105) (not e!837375))))

(assert (=> b!1494933 (= res!1017105 (validKeyInArray!0 (select (arr!48133 a!2862) i!1006)))))

(declare-fun b!1494934 () Bool)

(declare-fun res!1017108 () Bool)

(assert (=> b!1494934 (=> res!1017108 e!837378)))

(assert (=> b!1494934 (= res!1017108 (not (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651528 (select (arr!48133 a!2862) j!93) a!2862 mask!2687) lt!651526)))))

(declare-fun res!1017094 () Bool)

(assert (=> start!127240 (=> (not res!1017094) (not e!837375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127240 (= res!1017094 (validMask!0 mask!2687))))

(assert (=> start!127240 e!837375))

(assert (=> start!127240 true))

(declare-fun array_inv!37078 (array!99741) Bool)

(assert (=> start!127240 (array_inv!37078 a!2862)))

(declare-fun b!1494925 () Bool)

(declare-fun res!1017103 () Bool)

(assert (=> b!1494925 (=> (not res!1017103) (not e!837382))))

(declare-fun e!837380 () Bool)

(assert (=> b!1494925 (= res!1017103 e!837380)))

(declare-fun c!138449 () Bool)

(assert (=> b!1494925 (= c!138449 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1494935 () Bool)

(declare-fun res!1017098 () Bool)

(assert (=> b!1494935 (=> (not res!1017098) (not e!837375))))

(assert (=> b!1494935 (= res!1017098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1494936 () Bool)

(declare-fun res!1017100 () Bool)

(assert (=> b!1494936 (=> (not res!1017100) (not e!837377))))

(assert (=> b!1494936 (= res!1017100 (= (seekEntryOrOpen!0 (select (arr!48133 a!2862) j!93) a!2862 mask!2687) (Found!12396 j!93)))))

(declare-fun b!1494937 () Bool)

(declare-fun lt!651524 () SeekEntryResult!12396)

(assert (=> b!1494937 (= e!837380 (= lt!651524 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651529 lt!651527 mask!2687)))))

(declare-fun b!1494938 () Bool)

(assert (=> b!1494938 (= e!837379 (= lt!651524 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651528 lt!651529 lt!651527 mask!2687)))))

(declare-fun b!1494939 () Bool)

(assert (=> b!1494939 (= e!837375 e!837381)))

(declare-fun res!1017110 () Bool)

(assert (=> b!1494939 (=> (not res!1017110) (not e!837381))))

(assert (=> b!1494939 (= res!1017110 (= (select (store (arr!48133 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1494939 (= lt!651527 (array!99742 (store (arr!48133 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48684 a!2862)))))

(declare-fun b!1494940 () Bool)

(declare-fun res!1017104 () Bool)

(assert (=> b!1494940 (=> (not res!1017104) (not e!837376))))

(assert (=> b!1494940 (= res!1017104 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48133 a!2862) j!93) a!2862 mask!2687) lt!651526))))

(declare-fun b!1494941 () Bool)

(assert (=> b!1494941 (= e!837376 e!837382)))

(declare-fun res!1017111 () Bool)

(assert (=> b!1494941 (=> (not res!1017111) (not e!837382))))

(assert (=> b!1494941 (= res!1017111 (= lt!651524 (Intermediate!12396 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1494941 (= lt!651524 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651529 mask!2687) lt!651529 lt!651527 mask!2687))))

(assert (=> b!1494941 (= lt!651529 (select (store (arr!48133 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1494942 () Bool)

(assert (=> b!1494942 (= e!837380 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651529 lt!651527 mask!2687) (seekEntryOrOpen!0 lt!651529 lt!651527 mask!2687)))))

(declare-fun b!1494943 () Bool)

(declare-fun res!1017097 () Bool)

(assert (=> b!1494943 (=> (not res!1017097) (not e!837375))))

(declare-datatypes ((List!34814 0))(
  ( (Nil!34811) (Cons!34810 (h!36202 (_ BitVec 64)) (t!49515 List!34814)) )
))
(declare-fun arrayNoDuplicates!0 (array!99741 (_ BitVec 32) List!34814) Bool)

(assert (=> b!1494943 (= res!1017097 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34811))))

(assert (= (and start!127240 res!1017094) b!1494932))

(assert (= (and b!1494932 res!1017096) b!1494933))

(assert (= (and b!1494933 res!1017105) b!1494930))

(assert (= (and b!1494930 res!1017109) b!1494935))

(assert (= (and b!1494935 res!1017098) b!1494943))

(assert (= (and b!1494943 res!1017097) b!1494928))

(assert (= (and b!1494928 res!1017095) b!1494939))

(assert (= (and b!1494939 res!1017110) b!1494929))

(assert (= (and b!1494929 res!1017107) b!1494940))

(assert (= (and b!1494940 res!1017104) b!1494941))

(assert (= (and b!1494941 res!1017111) b!1494925))

(assert (= (and b!1494925 c!138449) b!1494937))

(assert (= (and b!1494925 (not c!138449)) b!1494942))

(assert (= (and b!1494925 res!1017103) b!1494926))

(assert (= (and b!1494926 res!1017099) b!1494931))

(assert (= (and b!1494931 res!1017101) b!1494936))

(assert (= (and b!1494936 res!1017100) b!1494924))

(assert (= (and b!1494931 (not res!1017102)) b!1494922))

(assert (= (and b!1494922 (not res!1017106)) b!1494934))

(assert (= (and b!1494934 (not res!1017108)) b!1494923))

(assert (= (and b!1494923 c!138448) b!1494938))

(assert (= (and b!1494923 (not c!138448)) b!1494927))

(declare-fun m!1378557 () Bool)

(assert (=> b!1494929 m!1378557))

(assert (=> b!1494929 m!1378557))

(declare-fun m!1378559 () Bool)

(assert (=> b!1494929 m!1378559))

(assert (=> b!1494929 m!1378559))

(assert (=> b!1494929 m!1378557))

(declare-fun m!1378561 () Bool)

(assert (=> b!1494929 m!1378561))

(declare-fun m!1378563 () Bool)

(assert (=> b!1494937 m!1378563))

(declare-fun m!1378565 () Bool)

(assert (=> b!1494931 m!1378565))

(declare-fun m!1378567 () Bool)

(assert (=> b!1494931 m!1378567))

(declare-fun m!1378569 () Bool)

(assert (=> b!1494931 m!1378569))

(declare-fun m!1378571 () Bool)

(assert (=> b!1494931 m!1378571))

(declare-fun m!1378573 () Bool)

(assert (=> b!1494931 m!1378573))

(assert (=> b!1494931 m!1378557))

(declare-fun m!1378575 () Bool)

(assert (=> b!1494942 m!1378575))

(declare-fun m!1378577 () Bool)

(assert (=> b!1494942 m!1378577))

(assert (=> b!1494934 m!1378557))

(assert (=> b!1494934 m!1378557))

(declare-fun m!1378579 () Bool)

(assert (=> b!1494934 m!1378579))

(declare-fun m!1378581 () Bool)

(assert (=> b!1494933 m!1378581))

(assert (=> b!1494933 m!1378581))

(declare-fun m!1378583 () Bool)

(assert (=> b!1494933 m!1378583))

(declare-fun m!1378585 () Bool)

(assert (=> b!1494941 m!1378585))

(assert (=> b!1494941 m!1378585))

(declare-fun m!1378587 () Bool)

(assert (=> b!1494941 m!1378587))

(assert (=> b!1494941 m!1378567))

(declare-fun m!1378589 () Bool)

(assert (=> b!1494941 m!1378589))

(declare-fun m!1378591 () Bool)

(assert (=> b!1494924 m!1378591))

(assert (=> b!1494924 m!1378557))

(declare-fun m!1378593 () Bool)

(assert (=> b!1494938 m!1378593))

(assert (=> b!1494930 m!1378557))

(assert (=> b!1494930 m!1378557))

(declare-fun m!1378595 () Bool)

(assert (=> b!1494930 m!1378595))

(declare-fun m!1378597 () Bool)

(assert (=> b!1494927 m!1378597))

(assert (=> b!1494927 m!1378577))

(declare-fun m!1378599 () Bool)

(assert (=> start!127240 m!1378599))

(declare-fun m!1378601 () Bool)

(assert (=> start!127240 m!1378601))

(assert (=> b!1494936 m!1378557))

(assert (=> b!1494936 m!1378557))

(declare-fun m!1378603 () Bool)

(assert (=> b!1494936 m!1378603))

(declare-fun m!1378605 () Bool)

(assert (=> b!1494935 m!1378605))

(declare-fun m!1378607 () Bool)

(assert (=> b!1494943 m!1378607))

(assert (=> b!1494940 m!1378557))

(assert (=> b!1494940 m!1378557))

(declare-fun m!1378609 () Bool)

(assert (=> b!1494940 m!1378609))

(assert (=> b!1494939 m!1378567))

(declare-fun m!1378611 () Bool)

(assert (=> b!1494939 m!1378611))

(declare-fun m!1378613 () Bool)

(assert (=> b!1494922 m!1378613))

(push 1)

(assert (not b!1494941))

(assert (not start!127240))

(assert (not b!1494935))

(assert (not b!1494934))

(assert (not b!1494938))

(assert (not b!1494937))

(assert (not b!1494940))

(assert (not b!1494931))

(assert (not b!1494930))

(assert (not b!1494922))

(assert (not b!1494943))

(assert (not b!1494929))

(assert (not b!1494927))

(assert (not b!1494942))

(assert (not b!1494933))

(assert (not b!1494936))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1495239 () Bool)

(declare-fun c!138525 () Bool)

(declare-fun lt!651624 () (_ BitVec 64))

(assert (=> b!1495239 (= c!138525 (= lt!651624 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837539 () SeekEntryResult!12396)

(declare-fun e!837540 () SeekEntryResult!12396)

(assert (=> b!1495239 (= e!837539 e!837540)))

(declare-fun b!1495240 () Bool)

(declare-fun lt!651625 () SeekEntryResult!12396)

(assert (=> b!1495240 (= e!837539 (Found!12396 (index!51977 lt!651625)))))

(declare-fun b!1495241 () Bool)

(assert (=> b!1495241 (= e!837540 (seekKeyOrZeroReturnVacant!0 (x!133587 lt!651625) (index!51977 lt!651625) (index!51977 lt!651625) (select (arr!48133 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!157123 () Bool)

(declare-fun lt!651623 () SeekEntryResult!12396)

(assert (=> d!157123 (and (or (is-Undefined!12396 lt!651623) (not (is-Found!12396 lt!651623)) (and (bvsge (index!51976 lt!651623) #b00000000000000000000000000000000) (bvslt (index!51976 lt!651623) (size!48684 a!2862)))) (or (is-Undefined!12396 lt!651623) (is-Found!12396 lt!651623) (not (is-MissingZero!12396 lt!651623)) (and (bvsge (index!51975 lt!651623) #b00000000000000000000000000000000) (bvslt (index!51975 lt!651623) (size!48684 a!2862)))) (or (is-Undefined!12396 lt!651623) (is-Found!12396 lt!651623) (is-MissingZero!12396 lt!651623) (not (is-MissingVacant!12396 lt!651623)) (and (bvsge (index!51978 lt!651623) #b00000000000000000000000000000000) (bvslt (index!51978 lt!651623) (size!48684 a!2862)))) (or (is-Undefined!12396 lt!651623) (ite (is-Found!12396 lt!651623) (= (select (arr!48133 a!2862) (index!51976 lt!651623)) (select (arr!48133 a!2862) j!93)) (ite (is-MissingZero!12396 lt!651623) (= (select (arr!48133 a!2862) (index!51975 lt!651623)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12396 lt!651623) (= (select (arr!48133 a!2862) (index!51978 lt!651623)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!837538 () SeekEntryResult!12396)

(assert (=> d!157123 (= lt!651623 e!837538)))

(declare-fun c!138523 () Bool)

(assert (=> d!157123 (= c!138523 (and (is-Intermediate!12396 lt!651625) (undefined!13208 lt!651625)))))

(assert (=> d!157123 (= lt!651625 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48133 a!2862) j!93) mask!2687) (select (arr!48133 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!157123 (validMask!0 mask!2687)))

(assert (=> d!157123 (= (seekEntryOrOpen!0 (select (arr!48133 a!2862) j!93) a!2862 mask!2687) lt!651623)))

(declare-fun b!1495242 () Bool)

(assert (=> b!1495242 (= e!837538 Undefined!12396)))

(declare-fun b!1495243 () Bool)

(assert (=> b!1495243 (= e!837538 e!837539)))

(assert (=> b!1495243 (= lt!651624 (select (arr!48133 a!2862) (index!51977 lt!651625)))))

(declare-fun c!138524 () Bool)

(assert (=> b!1495243 (= c!138524 (= lt!651624 (select (arr!48133 a!2862) j!93)))))

(declare-fun b!1495244 () Bool)

(assert (=> b!1495244 (= e!837540 (MissingZero!12396 (index!51977 lt!651625)))))

(assert (= (and d!157123 c!138523) b!1495242))

(assert (= (and d!157123 (not c!138523)) b!1495243))

(assert (= (and b!1495243 c!138524) b!1495240))

(assert (= (and b!1495243 (not c!138524)) b!1495239))

(assert (= (and b!1495239 c!138525) b!1495244))

(assert (= (and b!1495239 (not c!138525)) b!1495241))

(assert (=> b!1495241 m!1378557))

(declare-fun m!1378815 () Bool)

(assert (=> b!1495241 m!1378815))

(assert (=> d!157123 m!1378559))

(assert (=> d!157123 m!1378557))

(assert (=> d!157123 m!1378561))

(declare-fun m!1378817 () Bool)

(assert (=> d!157123 m!1378817))

(declare-fun m!1378819 () Bool)

(assert (=> d!157123 m!1378819))

(declare-fun m!1378821 () Bool)

(assert (=> d!157123 m!1378821))

(assert (=> d!157123 m!1378557))

(assert (=> d!157123 m!1378559))

(assert (=> d!157123 m!1378599))

(declare-fun m!1378823 () Bool)

(assert (=> b!1495243 m!1378823))

(assert (=> b!1494936 d!157123))

(declare-fun b!1495308 () Bool)

(declare-fun e!837578 () Bool)

(declare-fun lt!651653 () SeekEntryResult!12396)

(assert (=> b!1495308 (= e!837578 (bvsge (x!133587 lt!651653) #b01111111111111111111111111111110))))

(declare-fun b!1495309 () Bool)

(declare-fun e!837579 () SeekEntryResult!12396)

(assert (=> b!1495309 (= e!837579 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651528 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) (select (arr!48133 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1495310 () Bool)

(declare-fun e!837575 () Bool)

(assert (=> b!1495310 (= e!837578 e!837575)))

(declare-fun res!1017277 () Bool)

(assert (=> b!1495310 (= res!1017277 (and (is-Intermediate!12396 lt!651653) (not (undefined!13208 lt!651653)) (bvslt (x!133587 lt!651653) #b01111111111111111111111111111110) (bvsge (x!133587 lt!651653) #b00000000000000000000000000000000) (bvsge (x!133587 lt!651653) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1495310 (=> (not res!1017277) (not e!837575))))

(declare-fun d!157143 () Bool)

(assert (=> d!157143 e!837578))

(declare-fun c!138552 () Bool)

(assert (=> d!157143 (= c!138552 (and (is-Intermediate!12396 lt!651653) (undefined!13208 lt!651653)))))

(declare-fun e!837577 () SeekEntryResult!12396)

(assert (=> d!157143 (= lt!651653 e!837577)))

(declare-fun c!138550 () Bool)

(assert (=> d!157143 (= c!138550 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(declare-fun lt!651654 () (_ BitVec 64))

(assert (=> d!157143 (= lt!651654 (select (arr!48133 a!2862) lt!651528))))

(assert (=> d!157143 (validMask!0 mask!2687)))

(assert (=> d!157143 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651528 (select (arr!48133 a!2862) j!93) a!2862 mask!2687) lt!651653)))

(declare-fun b!1495311 () Bool)

(assert (=> b!1495311 (= e!837577 (Intermediate!12396 true lt!651528 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1495312 () Bool)

(assert (=> b!1495312 (and (bvsge (index!51977 lt!651653) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651653) (size!48684 a!2862)))))

(declare-fun e!837576 () Bool)

(assert (=> b!1495312 (= e!837576 (= (select (arr!48133 a!2862) (index!51977 lt!651653)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495313 () Bool)

(assert (=> b!1495313 (= e!837579 (Intermediate!12396 false lt!651528 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1495314 () Bool)

(assert (=> b!1495314 (= e!837577 e!837579)))

(declare-fun c!138551 () Bool)

(assert (=> b!1495314 (= c!138551 (or (= lt!651654 (select (arr!48133 a!2862) j!93)) (= (bvadd lt!651654 lt!651654) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495315 () Bool)

(assert (=> b!1495315 (and (bvsge (index!51977 lt!651653) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651653) (size!48684 a!2862)))))

(declare-fun res!1017278 () Bool)

(assert (=> b!1495315 (= res!1017278 (= (select (arr!48133 a!2862) (index!51977 lt!651653)) (select (arr!48133 a!2862) j!93)))))

(assert (=> b!1495315 (=> res!1017278 e!837576)))

(assert (=> b!1495315 (= e!837575 e!837576)))

(declare-fun b!1495316 () Bool)

(assert (=> b!1495316 (and (bvsge (index!51977 lt!651653) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651653) (size!48684 a!2862)))))

(declare-fun res!1017279 () Bool)

(assert (=> b!1495316 (= res!1017279 (= (select (arr!48133 a!2862) (index!51977 lt!651653)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495316 (=> res!1017279 e!837576)))

(assert (= (and d!157143 c!138550) b!1495311))

(assert (= (and d!157143 (not c!138550)) b!1495314))

(assert (= (and b!1495314 c!138551) b!1495313))

(assert (= (and b!1495314 (not c!138551)) b!1495309))

(assert (= (and d!157143 c!138552) b!1495308))

(assert (= (and d!157143 (not c!138552)) b!1495310))

(assert (= (and b!1495310 res!1017277) b!1495315))

(assert (= (and b!1495315 (not res!1017278)) b!1495316))

(assert (= (and b!1495316 (not res!1017279)) b!1495312))

(declare-fun m!1378855 () Bool)

(assert (=> d!157143 m!1378855))

(assert (=> d!157143 m!1378599))

(declare-fun m!1378857 () Bool)

(assert (=> b!1495312 m!1378857))

(assert (=> b!1495315 m!1378857))

(assert (=> b!1495316 m!1378857))

(declare-fun m!1378859 () Bool)

(assert (=> b!1495309 m!1378859))

(assert (=> b!1495309 m!1378859))

(assert (=> b!1495309 m!1378557))

(declare-fun m!1378861 () Bool)

(assert (=> b!1495309 m!1378861))

(assert (=> b!1494934 d!157143))

(declare-fun b!1495325 () Bool)

(declare-fun e!837587 () Bool)

(declare-fun call!68008 () Bool)

(assert (=> b!1495325 (= e!837587 call!68008)))

(declare-fun b!1495326 () Bool)

(declare-fun e!837586 () Bool)

(assert (=> b!1495326 (= e!837586 call!68008)))

(declare-fun bm!68005 () Bool)

(assert (=> bm!68005 (= call!68008 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1495327 () Bool)

(assert (=> b!1495327 (= e!837587 e!837586)))

(declare-fun lt!651661 () (_ BitVec 64))

(assert (=> b!1495327 (= lt!651661 (select (arr!48133 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!651663 () Unit!50080)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99741 (_ BitVec 64) (_ BitVec 32)) Unit!50080)

(assert (=> b!1495327 (= lt!651663 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!651661 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99741 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1495327 (arrayContainsKey!0 a!2862 lt!651661 #b00000000000000000000000000000000)))

(declare-fun lt!651662 () Unit!50080)

(assert (=> b!1495327 (= lt!651662 lt!651663)))

(declare-fun res!1017285 () Bool)

(assert (=> b!1495327 (= res!1017285 (= (seekEntryOrOpen!0 (select (arr!48133 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12396 #b00000000000000000000000000000000)))))

(assert (=> b!1495327 (=> (not res!1017285) (not e!837586))))

(declare-fun b!1495328 () Bool)

(declare-fun e!837588 () Bool)

(assert (=> b!1495328 (= e!837588 e!837587)))

(declare-fun c!138555 () Bool)

(assert (=> b!1495328 (= c!138555 (validKeyInArray!0 (select (arr!48133 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!157163 () Bool)

(declare-fun res!1017284 () Bool)

(assert (=> d!157163 (=> res!1017284 e!837588)))

(assert (=> d!157163 (= res!1017284 (bvsge #b00000000000000000000000000000000 (size!48684 a!2862)))))

(assert (=> d!157163 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!837588)))

(assert (= (and d!157163 (not res!1017284)) b!1495328))

(assert (= (and b!1495328 c!138555) b!1495327))

(assert (= (and b!1495328 (not c!138555)) b!1495325))

(assert (= (and b!1495327 res!1017285) b!1495326))

(assert (= (or b!1495326 b!1495325) bm!68005))

(declare-fun m!1378863 () Bool)

(assert (=> bm!68005 m!1378863))

(declare-fun m!1378865 () Bool)

(assert (=> b!1495327 m!1378865))

(declare-fun m!1378867 () Bool)

(assert (=> b!1495327 m!1378867))

(declare-fun m!1378869 () Bool)

(assert (=> b!1495327 m!1378869))

(assert (=> b!1495327 m!1378865))

(declare-fun m!1378871 () Bool)

(assert (=> b!1495327 m!1378871))

(assert (=> b!1495328 m!1378865))

(assert (=> b!1495328 m!1378865))

(declare-fun m!1378873 () Bool)

(assert (=> b!1495328 m!1378873))

(assert (=> b!1494935 d!157163))

(declare-fun b!1495336 () Bool)

(declare-fun e!837594 () Bool)

(declare-fun lt!651670 () SeekEntryResult!12396)

(assert (=> b!1495336 (= e!837594 (bvsge (x!133587 lt!651670) #b01111111111111111111111111111110))))

(declare-fun b!1495337 () Bool)

(declare-fun e!837595 () SeekEntryResult!12396)

(assert (=> b!1495337 (= e!837595 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651528 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) lt!651529 lt!651527 mask!2687))))

(declare-fun b!1495339 () Bool)

(declare-fun e!837591 () Bool)

(assert (=> b!1495339 (= e!837594 e!837591)))

(declare-fun res!1017286 () Bool)

(assert (=> b!1495339 (= res!1017286 (and (is-Intermediate!12396 lt!651670) (not (undefined!13208 lt!651670)) (bvslt (x!133587 lt!651670) #b01111111111111111111111111111110) (bvsge (x!133587 lt!651670) #b00000000000000000000000000000000) (bvsge (x!133587 lt!651670) (bvadd #b00000000000000000000000000000001 x!665))))))

(assert (=> b!1495339 (=> (not res!1017286) (not e!837591))))

(declare-fun d!157165 () Bool)

(assert (=> d!157165 e!837594))

(declare-fun c!138561 () Bool)

(assert (=> d!157165 (= c!138561 (and (is-Intermediate!12396 lt!651670) (undefined!13208 lt!651670)))))

(declare-fun e!837593 () SeekEntryResult!12396)

(assert (=> d!157165 (= lt!651670 e!837593)))

(declare-fun c!138558 () Bool)

(assert (=> d!157165 (= c!138558 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(declare-fun lt!651671 () (_ BitVec 64))

(assert (=> d!157165 (= lt!651671 (select (arr!48133 lt!651527) lt!651528))))

(assert (=> d!157165 (validMask!0 mask!2687)))

(assert (=> d!157165 (= (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651528 lt!651529 lt!651527 mask!2687) lt!651670)))

(declare-fun b!1495340 () Bool)

(assert (=> b!1495340 (= e!837593 (Intermediate!12396 true lt!651528 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1495341 () Bool)

(assert (=> b!1495341 (and (bvsge (index!51977 lt!651670) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651670) (size!48684 lt!651527)))))

(declare-fun e!837592 () Bool)

(assert (=> b!1495341 (= e!837592 (= (select (arr!48133 lt!651527) (index!51977 lt!651670)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495342 () Bool)

(assert (=> b!1495342 (= e!837595 (Intermediate!12396 false lt!651528 (bvadd #b00000000000000000000000000000001 x!665)))))

(declare-fun b!1495343 () Bool)

(assert (=> b!1495343 (= e!837593 e!837595)))

(declare-fun c!138559 () Bool)

(assert (=> b!1495343 (= c!138559 (or (= lt!651671 lt!651529) (= (bvadd lt!651671 lt!651671) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495344 () Bool)

(assert (=> b!1495344 (and (bvsge (index!51977 lt!651670) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651670) (size!48684 lt!651527)))))

(declare-fun res!1017287 () Bool)

(assert (=> b!1495344 (= res!1017287 (= (select (arr!48133 lt!651527) (index!51977 lt!651670)) lt!651529))))

(assert (=> b!1495344 (=> res!1017287 e!837592)))

(assert (=> b!1495344 (= e!837591 e!837592)))

(declare-fun b!1495345 () Bool)

(assert (=> b!1495345 (and (bvsge (index!51977 lt!651670) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651670) (size!48684 lt!651527)))))

(declare-fun res!1017288 () Bool)

(assert (=> b!1495345 (= res!1017288 (= (select (arr!48133 lt!651527) (index!51977 lt!651670)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495345 (=> res!1017288 e!837592)))

(assert (= (and d!157165 c!138558) b!1495340))

(assert (= (and d!157165 (not c!138558)) b!1495343))

(assert (= (and b!1495343 c!138559) b!1495342))

(assert (= (and b!1495343 (not c!138559)) b!1495337))

(assert (= (and d!157165 c!138561) b!1495336))

(assert (= (and d!157165 (not c!138561)) b!1495339))

(assert (= (and b!1495339 res!1017286) b!1495344))

(assert (= (and b!1495344 (not res!1017287)) b!1495345))

(assert (= (and b!1495345 (not res!1017288)) b!1495341))

(declare-fun m!1378875 () Bool)

(assert (=> d!157165 m!1378875))

(assert (=> d!157165 m!1378599))

(declare-fun m!1378877 () Bool)

(assert (=> b!1495341 m!1378877))

(assert (=> b!1495344 m!1378877))

(assert (=> b!1495345 m!1378877))

(assert (=> b!1495337 m!1378859))

(assert (=> b!1495337 m!1378859))

(declare-fun m!1378879 () Bool)

(assert (=> b!1495337 m!1378879))

(assert (=> b!1494938 d!157165))

(declare-fun b!1495350 () Bool)

(declare-fun e!837603 () Bool)

(declare-fun lt!651672 () SeekEntryResult!12396)

(assert (=> b!1495350 (= e!837603 (bvsge (x!133587 lt!651672) #b01111111111111111111111111111110))))

(declare-fun e!837604 () SeekEntryResult!12396)

(declare-fun b!1495351 () Bool)

(assert (=> b!1495351 (= e!837604 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!651529 lt!651527 mask!2687))))

(declare-fun b!1495352 () Bool)

(declare-fun e!837600 () Bool)

(assert (=> b!1495352 (= e!837603 e!837600)))

(declare-fun res!1017289 () Bool)

(assert (=> b!1495352 (= res!1017289 (and (is-Intermediate!12396 lt!651672) (not (undefined!13208 lt!651672)) (bvslt (x!133587 lt!651672) #b01111111111111111111111111111110) (bvsge (x!133587 lt!651672) #b00000000000000000000000000000000) (bvsge (x!133587 lt!651672) x!665)))))

(assert (=> b!1495352 (=> (not res!1017289) (not e!837600))))

(declare-fun d!157167 () Bool)

(assert (=> d!157167 e!837603))

(declare-fun c!138567 () Bool)

(assert (=> d!157167 (= c!138567 (and (is-Intermediate!12396 lt!651672) (undefined!13208 lt!651672)))))

(declare-fun e!837602 () SeekEntryResult!12396)

(assert (=> d!157167 (= lt!651672 e!837602)))

(declare-fun c!138565 () Bool)

(assert (=> d!157167 (= c!138565 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!651673 () (_ BitVec 64))

(assert (=> d!157167 (= lt!651673 (select (arr!48133 lt!651527) index!646))))

(assert (=> d!157167 (validMask!0 mask!2687)))

(assert (=> d!157167 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651529 lt!651527 mask!2687) lt!651672)))

(declare-fun b!1495353 () Bool)

(assert (=> b!1495353 (= e!837602 (Intermediate!12396 true index!646 x!665))))

(declare-fun b!1495354 () Bool)

(assert (=> b!1495354 (and (bvsge (index!51977 lt!651672) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651672) (size!48684 lt!651527)))))

(declare-fun e!837601 () Bool)

(assert (=> b!1495354 (= e!837601 (= (select (arr!48133 lt!651527) (index!51977 lt!651672)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495355 () Bool)

(assert (=> b!1495355 (= e!837604 (Intermediate!12396 false index!646 x!665))))

(declare-fun b!1495356 () Bool)

(assert (=> b!1495356 (= e!837602 e!837604)))

(declare-fun c!138566 () Bool)

(assert (=> b!1495356 (= c!138566 (or (= lt!651673 lt!651529) (= (bvadd lt!651673 lt!651673) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495357 () Bool)

(assert (=> b!1495357 (and (bvsge (index!51977 lt!651672) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651672) (size!48684 lt!651527)))))

(declare-fun res!1017290 () Bool)

(assert (=> b!1495357 (= res!1017290 (= (select (arr!48133 lt!651527) (index!51977 lt!651672)) lt!651529))))

(assert (=> b!1495357 (=> res!1017290 e!837601)))

(assert (=> b!1495357 (= e!837600 e!837601)))

(declare-fun b!1495358 () Bool)

(assert (=> b!1495358 (and (bvsge (index!51977 lt!651672) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651672) (size!48684 lt!651527)))))

(declare-fun res!1017291 () Bool)

(assert (=> b!1495358 (= res!1017291 (= (select (arr!48133 lt!651527) (index!51977 lt!651672)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495358 (=> res!1017291 e!837601)))

(assert (= (and d!157167 c!138565) b!1495353))

(assert (= (and d!157167 (not c!138565)) b!1495356))

(assert (= (and b!1495356 c!138566) b!1495355))

(assert (= (and b!1495356 (not c!138566)) b!1495351))

(assert (= (and d!157167 c!138567) b!1495350))

(assert (= (and d!157167 (not c!138567)) b!1495352))

(assert (= (and b!1495352 res!1017289) b!1495357))

(assert (= (and b!1495357 (not res!1017290)) b!1495358))

(assert (= (and b!1495358 (not res!1017291)) b!1495354))

(declare-fun m!1378881 () Bool)

(assert (=> d!157167 m!1378881))

(assert (=> d!157167 m!1378599))

(declare-fun m!1378883 () Bool)

(assert (=> b!1495354 m!1378883))

(assert (=> b!1495357 m!1378883))

(assert (=> b!1495358 m!1378883))

(assert (=> b!1495351 m!1378613))

(assert (=> b!1495351 m!1378613))

(declare-fun m!1378885 () Bool)

(assert (=> b!1495351 m!1378885))

(assert (=> b!1494937 d!157167))

(declare-fun b!1495398 () Bool)

(declare-fun e!837629 () SeekEntryResult!12396)

(declare-fun e!837628 () SeekEntryResult!12396)

(assert (=> b!1495398 (= e!837629 e!837628)))

(declare-fun c!138585 () Bool)

(declare-fun lt!651693 () (_ BitVec 64))

(assert (=> b!1495398 (= c!138585 (= lt!651693 lt!651529))))

(declare-fun b!1495399 () Bool)

(assert (=> b!1495399 (= e!837628 (Found!12396 lt!651528))))

(declare-fun e!837630 () SeekEntryResult!12396)

(declare-fun b!1495400 () Bool)

(assert (=> b!1495400 (= e!837630 (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665 #b00000000000000000000000000000001) (nextIndex!0 lt!651528 (bvadd #b00000000000000000000000000000001 x!665) mask!2687) intermediateAfterIndex!19 lt!651529 lt!651527 mask!2687))))

(declare-fun b!1495401 () Bool)

(declare-fun c!138583 () Bool)

(assert (=> b!1495401 (= c!138583 (= lt!651693 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495401 (= e!837628 e!837630)))

(declare-fun d!157169 () Bool)

(declare-fun lt!651692 () SeekEntryResult!12396)

(assert (=> d!157169 (and (or (is-Undefined!12396 lt!651692) (not (is-Found!12396 lt!651692)) (and (bvsge (index!51976 lt!651692) #b00000000000000000000000000000000) (bvslt (index!51976 lt!651692) (size!48684 lt!651527)))) (or (is-Undefined!12396 lt!651692) (is-Found!12396 lt!651692) (not (is-MissingVacant!12396 lt!651692)) (not (= (index!51978 lt!651692) intermediateAfterIndex!19)) (and (bvsge (index!51978 lt!651692) #b00000000000000000000000000000000) (bvslt (index!51978 lt!651692) (size!48684 lt!651527)))) (or (is-Undefined!12396 lt!651692) (ite (is-Found!12396 lt!651692) (= (select (arr!48133 lt!651527) (index!51976 lt!651692)) lt!651529) (and (is-MissingVacant!12396 lt!651692) (= (index!51978 lt!651692) intermediateAfterIndex!19) (= (select (arr!48133 lt!651527) (index!51978 lt!651692)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157169 (= lt!651692 e!837629)))

(declare-fun c!138584 () Bool)

(assert (=> d!157169 (= c!138584 (bvsge (bvadd #b00000000000000000000000000000001 x!665) #b01111111111111111111111111111110))))

(assert (=> d!157169 (= lt!651693 (select (arr!48133 lt!651527) lt!651528))))

(assert (=> d!157169 (validMask!0 mask!2687)))

(assert (=> d!157169 (= (seekKeyOrZeroReturnVacant!0 (bvadd #b00000000000000000000000000000001 x!665) lt!651528 intermediateAfterIndex!19 lt!651529 lt!651527 mask!2687) lt!651692)))

(declare-fun b!1495402 () Bool)

(assert (=> b!1495402 (= e!837629 Undefined!12396)))

(declare-fun b!1495403 () Bool)

(assert (=> b!1495403 (= e!837630 (MissingVacant!12396 intermediateAfterIndex!19))))

(assert (= (and d!157169 c!138584) b!1495402))

(assert (= (and d!157169 (not c!138584)) b!1495398))

(assert (= (and b!1495398 c!138585) b!1495399))

(assert (= (and b!1495398 (not c!138585)) b!1495401))

(assert (= (and b!1495401 c!138583) b!1495403))

(assert (= (and b!1495401 (not c!138583)) b!1495400))

(assert (=> b!1495400 m!1378859))

(assert (=> b!1495400 m!1378859))

(declare-fun m!1378913 () Bool)

(assert (=> b!1495400 m!1378913))

(declare-fun m!1378915 () Bool)

(assert (=> d!157169 m!1378915))

(declare-fun m!1378917 () Bool)

(assert (=> d!157169 m!1378917))

(assert (=> d!157169 m!1378875))

(assert (=> d!157169 m!1378599))

(assert (=> b!1494927 d!157169))

(declare-fun b!1495404 () Bool)

(declare-fun c!138588 () Bool)

(declare-fun lt!651695 () (_ BitVec 64))

(assert (=> b!1495404 (= c!138588 (= lt!651695 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!837632 () SeekEntryResult!12396)

(declare-fun e!837633 () SeekEntryResult!12396)

(assert (=> b!1495404 (= e!837632 e!837633)))

(declare-fun b!1495405 () Bool)

(declare-fun lt!651696 () SeekEntryResult!12396)

(assert (=> b!1495405 (= e!837632 (Found!12396 (index!51977 lt!651696)))))

(declare-fun b!1495406 () Bool)

(assert (=> b!1495406 (= e!837633 (seekKeyOrZeroReturnVacant!0 (x!133587 lt!651696) (index!51977 lt!651696) (index!51977 lt!651696) lt!651529 lt!651527 mask!2687))))

(declare-fun d!157181 () Bool)

(declare-fun lt!651694 () SeekEntryResult!12396)

(assert (=> d!157181 (and (or (is-Undefined!12396 lt!651694) (not (is-Found!12396 lt!651694)) (and (bvsge (index!51976 lt!651694) #b00000000000000000000000000000000) (bvslt (index!51976 lt!651694) (size!48684 lt!651527)))) (or (is-Undefined!12396 lt!651694) (is-Found!12396 lt!651694) (not (is-MissingZero!12396 lt!651694)) (and (bvsge (index!51975 lt!651694) #b00000000000000000000000000000000) (bvslt (index!51975 lt!651694) (size!48684 lt!651527)))) (or (is-Undefined!12396 lt!651694) (is-Found!12396 lt!651694) (is-MissingZero!12396 lt!651694) (not (is-MissingVacant!12396 lt!651694)) (and (bvsge (index!51978 lt!651694) #b00000000000000000000000000000000) (bvslt (index!51978 lt!651694) (size!48684 lt!651527)))) (or (is-Undefined!12396 lt!651694) (ite (is-Found!12396 lt!651694) (= (select (arr!48133 lt!651527) (index!51976 lt!651694)) lt!651529) (ite (is-MissingZero!12396 lt!651694) (= (select (arr!48133 lt!651527) (index!51975 lt!651694)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12396 lt!651694) (= (select (arr!48133 lt!651527) (index!51978 lt!651694)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!837631 () SeekEntryResult!12396)

(assert (=> d!157181 (= lt!651694 e!837631)))

(declare-fun c!138586 () Bool)

(assert (=> d!157181 (= c!138586 (and (is-Intermediate!12396 lt!651696) (undefined!13208 lt!651696)))))

(assert (=> d!157181 (= lt!651696 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651529 mask!2687) lt!651529 lt!651527 mask!2687))))

(assert (=> d!157181 (validMask!0 mask!2687)))

(assert (=> d!157181 (= (seekEntryOrOpen!0 lt!651529 lt!651527 mask!2687) lt!651694)))

(declare-fun b!1495407 () Bool)

(assert (=> b!1495407 (= e!837631 Undefined!12396)))

(declare-fun b!1495408 () Bool)

(assert (=> b!1495408 (= e!837631 e!837632)))

(assert (=> b!1495408 (= lt!651695 (select (arr!48133 lt!651527) (index!51977 lt!651696)))))

(declare-fun c!138587 () Bool)

(assert (=> b!1495408 (= c!138587 (= lt!651695 lt!651529))))

(declare-fun b!1495409 () Bool)

(assert (=> b!1495409 (= e!837633 (MissingZero!12396 (index!51977 lt!651696)))))

(assert (= (and d!157181 c!138586) b!1495407))

(assert (= (and d!157181 (not c!138586)) b!1495408))

(assert (= (and b!1495408 c!138587) b!1495405))

(assert (= (and b!1495408 (not c!138587)) b!1495404))

(assert (= (and b!1495404 c!138588) b!1495409))

(assert (= (and b!1495404 (not c!138588)) b!1495406))

(declare-fun m!1378919 () Bool)

(assert (=> b!1495406 m!1378919))

(assert (=> d!157181 m!1378585))

(assert (=> d!157181 m!1378587))

(declare-fun m!1378921 () Bool)

(assert (=> d!157181 m!1378921))

(declare-fun m!1378923 () Bool)

(assert (=> d!157181 m!1378923))

(declare-fun m!1378925 () Bool)

(assert (=> d!157181 m!1378925))

(assert (=> d!157181 m!1378585))

(assert (=> d!157181 m!1378599))

(declare-fun m!1378927 () Bool)

(assert (=> b!1495408 m!1378927))

(assert (=> b!1494927 d!157181))

(declare-fun b!1495410 () Bool)

(declare-fun e!837637 () Bool)

(declare-fun lt!651699 () SeekEntryResult!12396)

(assert (=> b!1495410 (= e!837637 (bvsge (x!133587 lt!651699) #b01111111111111111111111111111110))))

(declare-fun e!837638 () SeekEntryResult!12396)

(declare-fun b!1495411 () Bool)

(assert (=> b!1495411 (= e!837638 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!651529 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!651529 lt!651527 mask!2687))))

(declare-fun b!1495412 () Bool)

(declare-fun e!837634 () Bool)

(assert (=> b!1495412 (= e!837637 e!837634)))

(declare-fun res!1017301 () Bool)

(assert (=> b!1495412 (= res!1017301 (and (is-Intermediate!12396 lt!651699) (not (undefined!13208 lt!651699)) (bvslt (x!133587 lt!651699) #b01111111111111111111111111111110) (bvsge (x!133587 lt!651699) #b00000000000000000000000000000000) (bvsge (x!133587 lt!651699) #b00000000000000000000000000000000)))))

(assert (=> b!1495412 (=> (not res!1017301) (not e!837634))))

(declare-fun d!157183 () Bool)

(assert (=> d!157183 e!837637))

(declare-fun c!138591 () Bool)

(assert (=> d!157183 (= c!138591 (and (is-Intermediate!12396 lt!651699) (undefined!13208 lt!651699)))))

(declare-fun e!837636 () SeekEntryResult!12396)

(assert (=> d!157183 (= lt!651699 e!837636)))

(declare-fun c!138589 () Bool)

(assert (=> d!157183 (= c!138589 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!651700 () (_ BitVec 64))

(assert (=> d!157183 (= lt!651700 (select (arr!48133 lt!651527) (toIndex!0 lt!651529 mask!2687)))))

(assert (=> d!157183 (validMask!0 mask!2687)))

(assert (=> d!157183 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651529 mask!2687) lt!651529 lt!651527 mask!2687) lt!651699)))

(declare-fun b!1495413 () Bool)

(assert (=> b!1495413 (= e!837636 (Intermediate!12396 true (toIndex!0 lt!651529 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1495414 () Bool)

(assert (=> b!1495414 (and (bvsge (index!51977 lt!651699) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651699) (size!48684 lt!651527)))))

(declare-fun e!837635 () Bool)

(assert (=> b!1495414 (= e!837635 (= (select (arr!48133 lt!651527) (index!51977 lt!651699)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495415 () Bool)

(assert (=> b!1495415 (= e!837638 (Intermediate!12396 false (toIndex!0 lt!651529 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1495416 () Bool)

(assert (=> b!1495416 (= e!837636 e!837638)))

(declare-fun c!138590 () Bool)

(assert (=> b!1495416 (= c!138590 (or (= lt!651700 lt!651529) (= (bvadd lt!651700 lt!651700) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495417 () Bool)

(assert (=> b!1495417 (and (bvsge (index!51977 lt!651699) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651699) (size!48684 lt!651527)))))

(declare-fun res!1017302 () Bool)

(assert (=> b!1495417 (= res!1017302 (= (select (arr!48133 lt!651527) (index!51977 lt!651699)) lt!651529))))

(assert (=> b!1495417 (=> res!1017302 e!837635)))

(assert (=> b!1495417 (= e!837634 e!837635)))

(declare-fun b!1495418 () Bool)

(assert (=> b!1495418 (and (bvsge (index!51977 lt!651699) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651699) (size!48684 lt!651527)))))

(declare-fun res!1017303 () Bool)

(assert (=> b!1495418 (= res!1017303 (= (select (arr!48133 lt!651527) (index!51977 lt!651699)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495418 (=> res!1017303 e!837635)))

(assert (= (and d!157183 c!138589) b!1495413))

(assert (= (and d!157183 (not c!138589)) b!1495416))

(assert (= (and b!1495416 c!138590) b!1495415))

(assert (= (and b!1495416 (not c!138590)) b!1495411))

(assert (= (and d!157183 c!138591) b!1495410))

(assert (= (and d!157183 (not c!138591)) b!1495412))

(assert (= (and b!1495412 res!1017301) b!1495417))

(assert (= (and b!1495417 (not res!1017302)) b!1495418))

(assert (= (and b!1495418 (not res!1017303)) b!1495414))

(assert (=> d!157183 m!1378585))

(declare-fun m!1378931 () Bool)

(assert (=> d!157183 m!1378931))

(assert (=> d!157183 m!1378599))

(declare-fun m!1378933 () Bool)

(assert (=> b!1495414 m!1378933))

(assert (=> b!1495417 m!1378933))

(assert (=> b!1495418 m!1378933))

(assert (=> b!1495411 m!1378585))

(declare-fun m!1378935 () Bool)

(assert (=> b!1495411 m!1378935))

(assert (=> b!1495411 m!1378935))

(declare-fun m!1378937 () Bool)

(assert (=> b!1495411 m!1378937))

(assert (=> b!1494941 d!157183))

(declare-fun d!157187 () Bool)

(declare-fun lt!651707 () (_ BitVec 32))

(declare-fun lt!651706 () (_ BitVec 32))

(assert (=> d!157187 (= lt!651707 (bvmul (bvxor lt!651706 (bvlshr lt!651706 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!157187 (= lt!651706 ((_ extract 31 0) (bvand (bvxor lt!651529 (bvlshr lt!651529 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!157187 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1017304 (let ((h!36206 ((_ extract 31 0) (bvand (bvxor lt!651529 (bvlshr lt!651529 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133599 (bvmul (bvxor h!36206 (bvlshr h!36206 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133599 (bvlshr x!133599 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1017304 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1017304 #b00000000000000000000000000000000))))))

(assert (=> d!157187 (= (toIndex!0 lt!651529 mask!2687) (bvand (bvxor lt!651707 (bvlshr lt!651707 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1494941 d!157187))

(declare-fun d!157189 () Bool)

(assert (=> d!157189 (= (validKeyInArray!0 (select (arr!48133 a!2862) j!93)) (and (not (= (select (arr!48133 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48133 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1494930 d!157189))

(declare-fun b!1495434 () Bool)

(declare-fun e!837652 () Bool)

(declare-fun call!68015 () Bool)

(assert (=> b!1495434 (= e!837652 call!68015)))

(declare-fun b!1495435 () Bool)

(declare-fun e!837651 () Bool)

(assert (=> b!1495435 (= e!837651 call!68015)))

(declare-fun bm!68012 () Bool)

(assert (=> bm!68012 (= call!68015 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1495436 () Bool)

(assert (=> b!1495436 (= e!837652 e!837651)))

(declare-fun lt!651708 () (_ BitVec 64))

(assert (=> b!1495436 (= lt!651708 (select (arr!48133 a!2862) j!93))))

(declare-fun lt!651710 () Unit!50080)

(assert (=> b!1495436 (= lt!651710 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!651708 j!93))))

(assert (=> b!1495436 (arrayContainsKey!0 a!2862 lt!651708 #b00000000000000000000000000000000)))

(declare-fun lt!651709 () Unit!50080)

(assert (=> b!1495436 (= lt!651709 lt!651710)))

(declare-fun res!1017315 () Bool)

(assert (=> b!1495436 (= res!1017315 (= (seekEntryOrOpen!0 (select (arr!48133 a!2862) j!93) a!2862 mask!2687) (Found!12396 j!93)))))

(assert (=> b!1495436 (=> (not res!1017315) (not e!837651))))

(declare-fun b!1495437 () Bool)

(declare-fun e!837653 () Bool)

(assert (=> b!1495437 (= e!837653 e!837652)))

(declare-fun c!138595 () Bool)

(assert (=> b!1495437 (= c!138595 (validKeyInArray!0 (select (arr!48133 a!2862) j!93)))))

(declare-fun d!157191 () Bool)

(declare-fun res!1017314 () Bool)

(assert (=> d!157191 (=> res!1017314 e!837653)))

(assert (=> d!157191 (= res!1017314 (bvsge j!93 (size!48684 a!2862)))))

(assert (=> d!157191 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!837653)))

(assert (= (and d!157191 (not res!1017314)) b!1495437))

(assert (= (and b!1495437 c!138595) b!1495436))

(assert (= (and b!1495437 (not c!138595)) b!1495434))

(assert (= (and b!1495436 res!1017315) b!1495435))

(assert (= (or b!1495435 b!1495434) bm!68012))

(declare-fun m!1378941 () Bool)

(assert (=> bm!68012 m!1378941))

(assert (=> b!1495436 m!1378557))

(declare-fun m!1378945 () Bool)

(assert (=> b!1495436 m!1378945))

(declare-fun m!1378947 () Bool)

(assert (=> b!1495436 m!1378947))

(assert (=> b!1495436 m!1378557))

(assert (=> b!1495436 m!1378603))

(assert (=> b!1495437 m!1378557))

(assert (=> b!1495437 m!1378557))

(assert (=> b!1495437 m!1378595))

(assert (=> b!1494931 d!157191))

(declare-fun d!157195 () Bool)

(assert (=> d!157195 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!651715 () Unit!50080)

(declare-fun choose!38 (array!99741 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50080)

(assert (=> d!157195 (= lt!651715 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!157195 (validMask!0 mask!2687)))

(assert (=> d!157195 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!651715)))

(declare-fun bs!42908 () Bool)

(assert (= bs!42908 d!157195))

(assert (=> bs!42908 m!1378573))

(declare-fun m!1378957 () Bool)

(assert (=> bs!42908 m!1378957))

(assert (=> bs!42908 m!1378599))

(assert (=> b!1494931 d!157195))

(declare-fun d!157199 () Bool)

(assert (=> d!157199 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!127240 d!157199))

(declare-fun d!157205 () Bool)

(assert (=> d!157205 (= (array_inv!37078 a!2862) (bvsge (size!48684 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!127240 d!157205))

(declare-fun b!1495453 () Bool)

(declare-fun e!837665 () Bool)

(declare-fun lt!651725 () SeekEntryResult!12396)

(assert (=> b!1495453 (= e!837665 (bvsge (x!133587 lt!651725) #b01111111111111111111111111111110))))

(declare-fun e!837666 () SeekEntryResult!12396)

(declare-fun b!1495454 () Bool)

(assert (=> b!1495454 (= e!837666 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!48133 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!48133 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1495455 () Bool)

(declare-fun e!837662 () Bool)

(assert (=> b!1495455 (= e!837665 e!837662)))

(declare-fun res!1017320 () Bool)

(assert (=> b!1495455 (= res!1017320 (and (is-Intermediate!12396 lt!651725) (not (undefined!13208 lt!651725)) (bvslt (x!133587 lt!651725) #b01111111111111111111111111111110) (bvsge (x!133587 lt!651725) #b00000000000000000000000000000000) (bvsge (x!133587 lt!651725) #b00000000000000000000000000000000)))))

(assert (=> b!1495455 (=> (not res!1017320) (not e!837662))))

(declare-fun d!157207 () Bool)

(assert (=> d!157207 e!837665))

(declare-fun c!138604 () Bool)

(assert (=> d!157207 (= c!138604 (and (is-Intermediate!12396 lt!651725) (undefined!13208 lt!651725)))))

(declare-fun e!837664 () SeekEntryResult!12396)

(assert (=> d!157207 (= lt!651725 e!837664)))

(declare-fun c!138602 () Bool)

(assert (=> d!157207 (= c!138602 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!651726 () (_ BitVec 64))

(assert (=> d!157207 (= lt!651726 (select (arr!48133 a!2862) (toIndex!0 (select (arr!48133 a!2862) j!93) mask!2687)))))

(assert (=> d!157207 (validMask!0 mask!2687)))

(assert (=> d!157207 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48133 a!2862) j!93) mask!2687) (select (arr!48133 a!2862) j!93) a!2862 mask!2687) lt!651725)))

(declare-fun b!1495456 () Bool)

(assert (=> b!1495456 (= e!837664 (Intermediate!12396 true (toIndex!0 (select (arr!48133 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1495457 () Bool)

(assert (=> b!1495457 (and (bvsge (index!51977 lt!651725) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651725) (size!48684 a!2862)))))

(declare-fun e!837663 () Bool)

(assert (=> b!1495457 (= e!837663 (= (select (arr!48133 a!2862) (index!51977 lt!651725)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495458 () Bool)

(assert (=> b!1495458 (= e!837666 (Intermediate!12396 false (toIndex!0 (select (arr!48133 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1495459 () Bool)

(assert (=> b!1495459 (= e!837664 e!837666)))

(declare-fun c!138603 () Bool)

(assert (=> b!1495459 (= c!138603 (or (= lt!651726 (select (arr!48133 a!2862) j!93)) (= (bvadd lt!651726 lt!651726) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495460 () Bool)

(assert (=> b!1495460 (and (bvsge (index!51977 lt!651725) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651725) (size!48684 a!2862)))))

(declare-fun res!1017321 () Bool)

(assert (=> b!1495460 (= res!1017321 (= (select (arr!48133 a!2862) (index!51977 lt!651725)) (select (arr!48133 a!2862) j!93)))))

(assert (=> b!1495460 (=> res!1017321 e!837663)))

(assert (=> b!1495460 (= e!837662 e!837663)))

(declare-fun b!1495461 () Bool)

(assert (=> b!1495461 (and (bvsge (index!51977 lt!651725) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651725) (size!48684 a!2862)))))

(declare-fun res!1017322 () Bool)

(assert (=> b!1495461 (= res!1017322 (= (select (arr!48133 a!2862) (index!51977 lt!651725)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495461 (=> res!1017322 e!837663)))

(assert (= (and d!157207 c!138602) b!1495456))

(assert (= (and d!157207 (not c!138602)) b!1495459))

(assert (= (and b!1495459 c!138603) b!1495458))

(assert (= (and b!1495459 (not c!138603)) b!1495454))

(assert (= (and d!157207 c!138604) b!1495453))

(assert (= (and d!157207 (not c!138604)) b!1495455))

(assert (= (and b!1495455 res!1017320) b!1495460))

(assert (= (and b!1495460 (not res!1017321)) b!1495461))

(assert (= (and b!1495461 (not res!1017322)) b!1495457))

(assert (=> d!157207 m!1378559))

(declare-fun m!1378969 () Bool)

(assert (=> d!157207 m!1378969))

(assert (=> d!157207 m!1378599))

(declare-fun m!1378971 () Bool)

(assert (=> b!1495457 m!1378971))

(assert (=> b!1495460 m!1378971))

(assert (=> b!1495461 m!1378971))

(assert (=> b!1495454 m!1378559))

(declare-fun m!1378973 () Bool)

(assert (=> b!1495454 m!1378973))

(assert (=> b!1495454 m!1378973))

(assert (=> b!1495454 m!1378557))

(declare-fun m!1378975 () Bool)

(assert (=> b!1495454 m!1378975))

(assert (=> b!1494929 d!157207))

(declare-fun d!157209 () Bool)

(declare-fun lt!651728 () (_ BitVec 32))

(declare-fun lt!651727 () (_ BitVec 32))

(assert (=> d!157209 (= lt!651728 (bvmul (bvxor lt!651727 (bvlshr lt!651727 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!157209 (= lt!651727 ((_ extract 31 0) (bvand (bvxor (select (arr!48133 a!2862) j!93) (bvlshr (select (arr!48133 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!157209 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1017304 (let ((h!36206 ((_ extract 31 0) (bvand (bvxor (select (arr!48133 a!2862) j!93) (bvlshr (select (arr!48133 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!133599 (bvmul (bvxor h!36206 (bvlshr h!36206 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!133599 (bvlshr x!133599 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1017304 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1017304 #b00000000000000000000000000000000))))))

(assert (=> d!157209 (= (toIndex!0 (select (arr!48133 a!2862) j!93) mask!2687) (bvand (bvxor lt!651728 (bvlshr lt!651728 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1494929 d!157209))

(declare-fun b!1495462 () Bool)

(declare-fun e!837670 () Bool)

(declare-fun lt!651729 () SeekEntryResult!12396)

(assert (=> b!1495462 (= e!837670 (bvsge (x!133587 lt!651729) #b01111111111111111111111111111110))))

(declare-fun b!1495463 () Bool)

(declare-fun e!837671 () SeekEntryResult!12396)

(assert (=> b!1495463 (= e!837671 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!48133 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1495464 () Bool)

(declare-fun e!837667 () Bool)

(assert (=> b!1495464 (= e!837670 e!837667)))

(declare-fun res!1017323 () Bool)

(assert (=> b!1495464 (= res!1017323 (and (is-Intermediate!12396 lt!651729) (not (undefined!13208 lt!651729)) (bvslt (x!133587 lt!651729) #b01111111111111111111111111111110) (bvsge (x!133587 lt!651729) #b00000000000000000000000000000000) (bvsge (x!133587 lt!651729) x!665)))))

(assert (=> b!1495464 (=> (not res!1017323) (not e!837667))))

(declare-fun d!157211 () Bool)

(assert (=> d!157211 e!837670))

(declare-fun c!138607 () Bool)

(assert (=> d!157211 (= c!138607 (and (is-Intermediate!12396 lt!651729) (undefined!13208 lt!651729)))))

(declare-fun e!837669 () SeekEntryResult!12396)

(assert (=> d!157211 (= lt!651729 e!837669)))

(declare-fun c!138605 () Bool)

(assert (=> d!157211 (= c!138605 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!651730 () (_ BitVec 64))

(assert (=> d!157211 (= lt!651730 (select (arr!48133 a!2862) index!646))))

(assert (=> d!157211 (validMask!0 mask!2687)))

(assert (=> d!157211 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48133 a!2862) j!93) a!2862 mask!2687) lt!651729)))

(declare-fun b!1495465 () Bool)

(assert (=> b!1495465 (= e!837669 (Intermediate!12396 true index!646 x!665))))

(declare-fun b!1495466 () Bool)

(assert (=> b!1495466 (and (bvsge (index!51977 lt!651729) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651729) (size!48684 a!2862)))))

(declare-fun e!837668 () Bool)

(assert (=> b!1495466 (= e!837668 (= (select (arr!48133 a!2862) (index!51977 lt!651729)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1495467 () Bool)

(assert (=> b!1495467 (= e!837671 (Intermediate!12396 false index!646 x!665))))

(declare-fun b!1495468 () Bool)

(assert (=> b!1495468 (= e!837669 e!837671)))

(declare-fun c!138606 () Bool)

(assert (=> b!1495468 (= c!138606 (or (= lt!651730 (select (arr!48133 a!2862) j!93)) (= (bvadd lt!651730 lt!651730) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1495469 () Bool)

(assert (=> b!1495469 (and (bvsge (index!51977 lt!651729) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651729) (size!48684 a!2862)))))

(declare-fun res!1017324 () Bool)

(assert (=> b!1495469 (= res!1017324 (= (select (arr!48133 a!2862) (index!51977 lt!651729)) (select (arr!48133 a!2862) j!93)))))

(assert (=> b!1495469 (=> res!1017324 e!837668)))

(assert (=> b!1495469 (= e!837667 e!837668)))

(declare-fun b!1495470 () Bool)

(assert (=> b!1495470 (and (bvsge (index!51977 lt!651729) #b00000000000000000000000000000000) (bvslt (index!51977 lt!651729) (size!48684 a!2862)))))

(declare-fun res!1017325 () Bool)

(assert (=> b!1495470 (= res!1017325 (= (select (arr!48133 a!2862) (index!51977 lt!651729)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495470 (=> res!1017325 e!837668)))

(assert (= (and d!157211 c!138605) b!1495465))

(assert (= (and d!157211 (not c!138605)) b!1495468))

(assert (= (and b!1495468 c!138606) b!1495467))

(assert (= (and b!1495468 (not c!138606)) b!1495463))

(assert (= (and d!157211 c!138607) b!1495462))

(assert (= (and d!157211 (not c!138607)) b!1495464))

(assert (= (and b!1495464 res!1017323) b!1495469))

(assert (= (and b!1495469 (not res!1017324)) b!1495470))

(assert (= (and b!1495470 (not res!1017325)) b!1495466))

(assert (=> d!157211 m!1378571))

(assert (=> d!157211 m!1378599))

(declare-fun m!1378977 () Bool)

(assert (=> b!1495466 m!1378977))

(assert (=> b!1495469 m!1378977))

(assert (=> b!1495470 m!1378977))

(assert (=> b!1495463 m!1378613))

(assert (=> b!1495463 m!1378613))

(assert (=> b!1495463 m!1378557))

(declare-fun m!1378979 () Bool)

(assert (=> b!1495463 m!1378979))

(assert (=> b!1494940 d!157211))

(declare-fun d!157215 () Bool)

(assert (=> d!157215 (= (validKeyInArray!0 (select (arr!48133 a!2862) i!1006)) (and (not (= (select (arr!48133 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!48133 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1494933 d!157215))

(declare-fun d!157219 () Bool)

(declare-fun lt!651739 () (_ BitVec 32))

(assert (=> d!157219 (and (bvsge lt!651739 #b00000000000000000000000000000000) (bvslt lt!651739 (bvadd mask!2687 #b00000000000000000000000000000001)))))

(declare-fun choose!52 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!157219 (= lt!651739 (choose!52 index!646 x!665 mask!2687))))

(assert (=> d!157219 (validMask!0 mask!2687)))

(assert (=> d!157219 (= (nextIndex!0 index!646 x!665 mask!2687) lt!651739)))

(declare-fun bs!42909 () Bool)

(assert (= bs!42909 d!157219))

(declare-fun m!1378995 () Bool)

(assert (=> bs!42909 m!1378995))

(assert (=> bs!42909 m!1378599))

(assert (=> b!1494922 d!157219))

(declare-fun b!1495498 () Bool)

(declare-fun e!837688 () SeekEntryResult!12396)

(declare-fun e!837687 () SeekEntryResult!12396)

(assert (=> b!1495498 (= e!837688 e!837687)))

(declare-fun c!138619 () Bool)

(declare-fun lt!651743 () (_ BitVec 64))

(assert (=> b!1495498 (= c!138619 (= lt!651743 lt!651529))))

(declare-fun b!1495499 () Bool)

(assert (=> b!1495499 (= e!837687 (Found!12396 index!646))))

(declare-fun b!1495500 () Bool)

(declare-fun e!837689 () SeekEntryResult!12396)

(assert (=> b!1495500 (= e!837689 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!651529 lt!651527 mask!2687))))

(declare-fun b!1495501 () Bool)

(declare-fun c!138617 () Bool)

(assert (=> b!1495501 (= c!138617 (= lt!651743 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1495501 (= e!837687 e!837689)))

(declare-fun lt!651742 () SeekEntryResult!12396)

(declare-fun d!157227 () Bool)

(assert (=> d!157227 (and (or (is-Undefined!12396 lt!651742) (not (is-Found!12396 lt!651742)) (and (bvsge (index!51976 lt!651742) #b00000000000000000000000000000000) (bvslt (index!51976 lt!651742) (size!48684 lt!651527)))) (or (is-Undefined!12396 lt!651742) (is-Found!12396 lt!651742) (not (is-MissingVacant!12396 lt!651742)) (not (= (index!51978 lt!651742) intermediateAfterIndex!19)) (and (bvsge (index!51978 lt!651742) #b00000000000000000000000000000000) (bvslt (index!51978 lt!651742) (size!48684 lt!651527)))) (or (is-Undefined!12396 lt!651742) (ite (is-Found!12396 lt!651742) (= (select (arr!48133 lt!651527) (index!51976 lt!651742)) lt!651529) (and (is-MissingVacant!12396 lt!651742) (= (index!51978 lt!651742) intermediateAfterIndex!19) (= (select (arr!48133 lt!651527) (index!51978 lt!651742)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!157227 (= lt!651742 e!837688)))

(declare-fun c!138618 () Bool)

(assert (=> d!157227 (= c!138618 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!157227 (= lt!651743 (select (arr!48133 lt!651527) index!646))))

(assert (=> d!157227 (validMask!0 mask!2687)))

(assert (=> d!157227 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651529 lt!651527 mask!2687) lt!651742)))

(declare-fun b!1495502 () Bool)

(assert (=> b!1495502 (= e!837688 Undefined!12396)))

(declare-fun b!1495503 () Bool)

(assert (=> b!1495503 (= e!837689 (MissingVacant!12396 intermediateAfterIndex!19))))

(assert (= (and d!157227 c!138618) b!1495502))

(assert (= (and d!157227 (not c!138618)) b!1495498))

(assert (= (and b!1495498 c!138619) b!1495499))

(assert (= (and b!1495498 (not c!138619)) b!1495501))

(assert (= (and b!1495501 c!138617) b!1495503))

(assert (= (and b!1495501 (not c!138617)) b!1495500))

(assert (=> b!1495500 m!1378613))

(assert (=> b!1495500 m!1378613))

(declare-fun m!1378999 () Bool)

(assert (=> b!1495500 m!1378999))

(declare-fun m!1379001 () Bool)

(assert (=> d!157227 m!1379001))

(declare-fun m!1379003 () Bool)

(assert (=> d!157227 m!1379003))

(assert (=> d!157227 m!1378881))

(assert (=> d!157227 m!1378599))

(assert (=> b!1494942 d!157227))

(assert (=> b!1494942 d!157181))

(declare-fun b!1495524 () Bool)

(declare-fun e!837705 () Bool)

(declare-fun call!68019 () Bool)

(assert (=> b!1495524 (= e!837705 call!68019)))

(declare-fun bm!68016 () Bool)

(declare-fun c!138626 () Bool)

(assert (=> bm!68016 (= call!68019 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!138626 (Cons!34810 (select (arr!48133 a!2862) #b00000000000000000000000000000000) Nil!34811) Nil!34811)))))

(declare-fun b!1495525 () Bool)

(assert (=> b!1495525 (= e!837705 call!68019)))

(declare-fun b!1495526 () Bool)

(declare-fun e!837704 () Bool)

(assert (=> b!1495526 (= e!837704 e!837705)))

(assert (=> b!1495526 (= c!138626 (validKeyInArray!0 (select (arr!48133 a!2862) #b00000000000000000000000000000000)))))

(declare-fun d!157231 () Bool)

(declare-fun res!1017345 () Bool)

(declare-fun e!837707 () Bool)

(assert (=> d!157231 (=> res!1017345 e!837707)))

(assert (=> d!157231 (= res!1017345 (bvsge #b00000000000000000000000000000000 (size!48684 a!2862)))))

(assert (=> d!157231 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34811) e!837707)))

(declare-fun b!1495527 () Bool)

(assert (=> b!1495527 (= e!837707 e!837704)))

(declare-fun res!1017343 () Bool)

(assert (=> b!1495527 (=> (not res!1017343) (not e!837704))))

(declare-fun e!837706 () Bool)

(assert (=> b!1495527 (= res!1017343 (not e!837706))))

(declare-fun res!1017344 () Bool)

(assert (=> b!1495527 (=> (not res!1017344) (not e!837706))))

(assert (=> b!1495527 (= res!1017344 (validKeyInArray!0 (select (arr!48133 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1495528 () Bool)

(declare-fun contains!9944 (List!34814 (_ BitVec 64)) Bool)

(assert (=> b!1495528 (= e!837706 (contains!9944 Nil!34811 (select (arr!48133 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!157231 (not res!1017345)) b!1495527))

(assert (= (and b!1495527 res!1017344) b!1495528))

(assert (= (and b!1495527 res!1017343) b!1495526))

(assert (= (and b!1495526 c!138626) b!1495524))

(assert (= (and b!1495526 (not c!138626)) b!1495525))

(assert (= (or b!1495524 b!1495525) bm!68016))

(assert (=> bm!68016 m!1378865))

(declare-fun m!1379021 () Bool)

(assert (=> bm!68016 m!1379021))

(assert (=> b!1495526 m!1378865))

(assert (=> b!1495526 m!1378865))

(assert (=> b!1495526 m!1378873))

(assert (=> b!1495527 m!1378865))

(assert (=> b!1495527 m!1378865))

(assert (=> b!1495527 m!1378873))

(assert (=> b!1495528 m!1378865))

(assert (=> b!1495528 m!1378865))

(declare-fun m!1379023 () Bool)

(assert (=> b!1495528 m!1379023))

(assert (=> b!1494943 d!157231))

(push 1)

(assert (not b!1495526))

(assert (not b!1495463))

(assert (not b!1495454))

(assert (not b!1495436))

(assert (not b!1495411))

(assert (not d!157181))

(assert (not b!1495406))

(assert (not d!157227))

(assert (not d!157195))

(assert (not bm!68016))

(assert (not d!157183))

(assert (not d!157143))

(assert (not d!157219))

(assert (not b!1495528))

(assert (not b!1495241))

(assert (not d!157165))

(assert (not b!1495337))

(assert (not b!1495309))

(assert (not b!1495351))

(assert (not b!1495400))

(assert (not b!1495437))

(assert (not b!1495500))

(assert (not d!157169))

(assert (not d!157123))

(assert (not d!157207))

(assert (not bm!68005))

(assert (not bm!68012))

(assert (not d!157211))

(assert (not b!1495327))

(assert (not d!157167))

(assert (not b!1495527))

(assert (not b!1495328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

