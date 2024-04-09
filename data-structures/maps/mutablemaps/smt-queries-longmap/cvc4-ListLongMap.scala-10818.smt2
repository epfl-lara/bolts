; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126602 () Bool)

(assert start!126602)

(declare-fun b!1485344 () Bool)

(declare-fun res!1010136 () Bool)

(declare-fun e!832736 () Bool)

(assert (=> b!1485344 (=> (not res!1010136) (not e!832736))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-datatypes ((array!99481 0))(
  ( (array!99482 (arr!48012 (Array (_ BitVec 32) (_ BitVec 64))) (size!48563 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99481)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1485344 (= res!1010136 (or (= (select (arr!48012 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48012 a!2862) intermediateBeforeIndex!19) (select (arr!48012 a!2862) j!93))))))

(declare-fun b!1485345 () Bool)

(declare-fun res!1010146 () Bool)

(declare-fun e!832737 () Bool)

(assert (=> b!1485345 (=> (not res!1010146) (not e!832737))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1485345 (= res!1010146 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48563 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48563 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48563 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1485346 () Bool)

(declare-fun res!1010151 () Bool)

(assert (=> b!1485346 (=> (not res!1010151) (not e!832737))))

(declare-datatypes ((List!34693 0))(
  ( (Nil!34690) (Cons!34689 (h!36063 (_ BitVec 64)) (t!49394 List!34693)) )
))
(declare-fun arrayNoDuplicates!0 (array!99481 (_ BitVec 32) List!34693) Bool)

(assert (=> b!1485346 (= res!1010151 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34690))))

(declare-fun b!1485347 () Bool)

(declare-fun e!832738 () Bool)

(declare-fun e!832734 () Bool)

(assert (=> b!1485347 (= e!832738 e!832734)))

(declare-fun res!1010147 () Bool)

(assert (=> b!1485347 (=> (not res!1010147) (not e!832734))))

(declare-fun lt!648033 () (_ BitVec 64))

(assert (=> b!1485347 (= res!1010147 (and (= index!646 intermediateAfterIndex!19) (= lt!648033 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1485348 () Bool)

(declare-fun e!832730 () Bool)

(assert (=> b!1485348 (= e!832737 e!832730)))

(declare-fun res!1010152 () Bool)

(assert (=> b!1485348 (=> (not res!1010152) (not e!832730))))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1485348 (= res!1010152 (= (select (store (arr!48012 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!648031 () array!99481)

(assert (=> b!1485348 (= lt!648031 (array!99482 (store (arr!48012 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48563 a!2862)))))

(declare-fun b!1485349 () Bool)

(declare-fun res!1010142 () Bool)

(declare-fun e!832733 () Bool)

(assert (=> b!1485349 (=> (not res!1010142) (not e!832733))))

(declare-fun e!832735 () Bool)

(assert (=> b!1485349 (= res!1010142 e!832735)))

(declare-fun c!137129 () Bool)

(assert (=> b!1485349 (= c!137129 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1485350 () Bool)

(declare-fun res!1010141 () Bool)

(assert (=> b!1485350 (=> (not res!1010141) (not e!832737))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1485350 (= res!1010141 (validKeyInArray!0 (select (arr!48012 a!2862) i!1006)))))

(declare-fun res!1010139 () Bool)

(assert (=> start!126602 (=> (not res!1010139) (not e!832737))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126602 (= res!1010139 (validMask!0 mask!2687))))

(assert (=> start!126602 e!832737))

(assert (=> start!126602 true))

(declare-fun array_inv!36957 (array!99481) Bool)

(assert (=> start!126602 (array_inv!36957 a!2862)))

(declare-fun b!1485351 () Bool)

(declare-fun res!1010144 () Bool)

(assert (=> b!1485351 (=> (not res!1010144) (not e!832733))))

(assert (=> b!1485351 (= res!1010144 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1485352 () Bool)

(declare-fun res!1010149 () Bool)

(assert (=> b!1485352 (=> (not res!1010149) (not e!832737))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99481 (_ BitVec 32)) Bool)

(assert (=> b!1485352 (= res!1010149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1485353 () Bool)

(declare-fun lt!648034 () (_ BitVec 64))

(declare-datatypes ((SeekEntryResult!12275 0))(
  ( (MissingZero!12275 (index!51491 (_ BitVec 32))) (Found!12275 (index!51492 (_ BitVec 32))) (Intermediate!12275 (undefined!13087 Bool) (index!51493 (_ BitVec 32)) (x!133066 (_ BitVec 32))) (Undefined!12275) (MissingVacant!12275 (index!51494 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99481 (_ BitVec 32)) SeekEntryResult!12275)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99481 (_ BitVec 32)) SeekEntryResult!12275)

(assert (=> b!1485353 (= e!832734 (= (seekEntryOrOpen!0 lt!648034 lt!648031 mask!2687) (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648034 lt!648031 mask!2687)))))

(declare-fun b!1485354 () Bool)

(declare-fun e!832731 () Bool)

(assert (=> b!1485354 (= e!832731 true)))

(declare-fun lt!648029 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485354 (= lt!648029 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1485355 () Bool)

(declare-fun e!832739 () Bool)

(assert (=> b!1485355 (= e!832739 e!832733)))

(declare-fun res!1010140 () Bool)

(assert (=> b!1485355 (=> (not res!1010140) (not e!832733))))

(declare-fun lt!648028 () SeekEntryResult!12275)

(assert (=> b!1485355 (= res!1010140 (= lt!648028 (Intermediate!12275 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99481 (_ BitVec 32)) SeekEntryResult!12275)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1485355 (= lt!648028 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!648034 mask!2687) lt!648034 lt!648031 mask!2687))))

(assert (=> b!1485355 (= lt!648034 (select (store (arr!48012 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1485356 () Bool)

(assert (=> b!1485356 (= e!832733 (not e!832731))))

(declare-fun res!1010145 () Bool)

(assert (=> b!1485356 (=> res!1010145 e!832731)))

(assert (=> b!1485356 (= res!1010145 (or (and (= (select (arr!48012 a!2862) index!646) (select (store (arr!48012 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48012 a!2862) index!646) (select (arr!48012 a!2862) j!93))) (= (select (arr!48012 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485356 e!832736))

(declare-fun res!1010143 () Bool)

(assert (=> b!1485356 (=> (not res!1010143) (not e!832736))))

(assert (=> b!1485356 (= res!1010143 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!49838 0))(
  ( (Unit!49839) )
))
(declare-fun lt!648032 () Unit!49838)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99481 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49838)

(assert (=> b!1485356 (= lt!648032 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1485357 () Bool)

(declare-fun res!1010154 () Bool)

(assert (=> b!1485357 (=> (not res!1010154) (not e!832739))))

(declare-fun lt!648030 () SeekEntryResult!12275)

(assert (=> b!1485357 (= res!1010154 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48012 a!2862) j!93) a!2862 mask!2687) lt!648030))))

(declare-fun b!1485358 () Bool)

(assert (=> b!1485358 (= e!832736 e!832738)))

(declare-fun res!1010148 () Bool)

(assert (=> b!1485358 (=> res!1010148 e!832738)))

(assert (=> b!1485358 (= res!1010148 (or (and (= (select (arr!48012 a!2862) index!646) lt!648033) (= (select (arr!48012 a!2862) index!646) (select (arr!48012 a!2862) j!93))) (= (select (arr!48012 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (not (= x!665 intermediateAfterX!19))))))

(assert (=> b!1485358 (= lt!648033 (select (store (arr!48012 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646))))

(declare-fun b!1485359 () Bool)

(declare-fun res!1010150 () Bool)

(assert (=> b!1485359 (=> (not res!1010150) (not e!832737))))

(assert (=> b!1485359 (= res!1010150 (validKeyInArray!0 (select (arr!48012 a!2862) j!93)))))

(declare-fun b!1485360 () Bool)

(assert (=> b!1485360 (= e!832735 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!648034 lt!648031 mask!2687) (seekEntryOrOpen!0 lt!648034 lt!648031 mask!2687)))))

(declare-fun b!1485361 () Bool)

(declare-fun res!1010153 () Bool)

(assert (=> b!1485361 (=> (not res!1010153) (not e!832737))))

(assert (=> b!1485361 (= res!1010153 (and (= (size!48563 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48563 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48563 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1485362 () Bool)

(declare-fun res!1010138 () Bool)

(assert (=> b!1485362 (=> (not res!1010138) (not e!832736))))

(assert (=> b!1485362 (= res!1010138 (= (seekEntryOrOpen!0 (select (arr!48012 a!2862) j!93) a!2862 mask!2687) (Found!12275 j!93)))))

(declare-fun b!1485363 () Bool)

(assert (=> b!1485363 (= e!832730 e!832739)))

(declare-fun res!1010137 () Bool)

(assert (=> b!1485363 (=> (not res!1010137) (not e!832739))))

(assert (=> b!1485363 (= res!1010137 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48012 a!2862) j!93) mask!2687) (select (arr!48012 a!2862) j!93) a!2862 mask!2687) lt!648030))))

(assert (=> b!1485363 (= lt!648030 (Intermediate!12275 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1485364 () Bool)

(assert (=> b!1485364 (= e!832735 (= lt!648028 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!648034 lt!648031 mask!2687)))))

(assert (= (and start!126602 res!1010139) b!1485361))

(assert (= (and b!1485361 res!1010153) b!1485350))

(assert (= (and b!1485350 res!1010141) b!1485359))

(assert (= (and b!1485359 res!1010150) b!1485352))

(assert (= (and b!1485352 res!1010149) b!1485346))

(assert (= (and b!1485346 res!1010151) b!1485345))

(assert (= (and b!1485345 res!1010146) b!1485348))

(assert (= (and b!1485348 res!1010152) b!1485363))

(assert (= (and b!1485363 res!1010137) b!1485357))

(assert (= (and b!1485357 res!1010154) b!1485355))

(assert (= (and b!1485355 res!1010140) b!1485349))

(assert (= (and b!1485349 c!137129) b!1485364))

(assert (= (and b!1485349 (not c!137129)) b!1485360))

(assert (= (and b!1485349 res!1010142) b!1485351))

(assert (= (and b!1485351 res!1010144) b!1485356))

(assert (= (and b!1485356 res!1010143) b!1485362))

(assert (= (and b!1485362 res!1010138) b!1485344))

(assert (= (and b!1485344 res!1010136) b!1485358))

(assert (= (and b!1485358 (not res!1010148)) b!1485347))

(assert (= (and b!1485347 res!1010147) b!1485353))

(assert (= (and b!1485356 (not res!1010145)) b!1485354))

(declare-fun m!1370537 () Bool)

(assert (=> b!1485346 m!1370537))

(declare-fun m!1370539 () Bool)

(assert (=> b!1485355 m!1370539))

(assert (=> b!1485355 m!1370539))

(declare-fun m!1370541 () Bool)

(assert (=> b!1485355 m!1370541))

(declare-fun m!1370543 () Bool)

(assert (=> b!1485355 m!1370543))

(declare-fun m!1370545 () Bool)

(assert (=> b!1485355 m!1370545))

(declare-fun m!1370547 () Bool)

(assert (=> b!1485344 m!1370547))

(declare-fun m!1370549 () Bool)

(assert (=> b!1485344 m!1370549))

(declare-fun m!1370551 () Bool)

(assert (=> b!1485354 m!1370551))

(assert (=> b!1485359 m!1370549))

(assert (=> b!1485359 m!1370549))

(declare-fun m!1370553 () Bool)

(assert (=> b!1485359 m!1370553))

(assert (=> b!1485363 m!1370549))

(assert (=> b!1485363 m!1370549))

(declare-fun m!1370555 () Bool)

(assert (=> b!1485363 m!1370555))

(assert (=> b!1485363 m!1370555))

(assert (=> b!1485363 m!1370549))

(declare-fun m!1370557 () Bool)

(assert (=> b!1485363 m!1370557))

(assert (=> b!1485357 m!1370549))

(assert (=> b!1485357 m!1370549))

(declare-fun m!1370559 () Bool)

(assert (=> b!1485357 m!1370559))

(declare-fun m!1370561 () Bool)

(assert (=> b!1485360 m!1370561))

(declare-fun m!1370563 () Bool)

(assert (=> b!1485360 m!1370563))

(assert (=> b!1485348 m!1370543))

(declare-fun m!1370565 () Bool)

(assert (=> b!1485348 m!1370565))

(declare-fun m!1370567 () Bool)

(assert (=> b!1485352 m!1370567))

(assert (=> b!1485353 m!1370563))

(assert (=> b!1485353 m!1370561))

(declare-fun m!1370569 () Bool)

(assert (=> start!126602 m!1370569))

(declare-fun m!1370571 () Bool)

(assert (=> start!126602 m!1370571))

(assert (=> b!1485362 m!1370549))

(assert (=> b!1485362 m!1370549))

(declare-fun m!1370573 () Bool)

(assert (=> b!1485362 m!1370573))

(declare-fun m!1370575 () Bool)

(assert (=> b!1485356 m!1370575))

(assert (=> b!1485356 m!1370543))

(declare-fun m!1370577 () Bool)

(assert (=> b!1485356 m!1370577))

(declare-fun m!1370579 () Bool)

(assert (=> b!1485356 m!1370579))

(declare-fun m!1370581 () Bool)

(assert (=> b!1485356 m!1370581))

(assert (=> b!1485356 m!1370549))

(assert (=> b!1485358 m!1370579))

(assert (=> b!1485358 m!1370549))

(assert (=> b!1485358 m!1370543))

(assert (=> b!1485358 m!1370577))

(declare-fun m!1370583 () Bool)

(assert (=> b!1485350 m!1370583))

(assert (=> b!1485350 m!1370583))

(declare-fun m!1370585 () Bool)

(assert (=> b!1485350 m!1370585))

(declare-fun m!1370587 () Bool)

(assert (=> b!1485364 m!1370587))

(push 1)

