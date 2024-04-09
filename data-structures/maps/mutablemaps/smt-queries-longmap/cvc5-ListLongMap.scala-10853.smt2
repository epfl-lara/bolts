; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127138 () Bool)

(assert start!127138)

(declare-fun res!1016099 () Bool)

(declare-fun e!836685 () Bool)

(assert (=> start!127138 (=> (not res!1016099) (not e!836685))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127138 (= res!1016099 (validMask!0 mask!2687))))

(assert (=> start!127138 e!836685))

(assert (=> start!127138 true))

(declare-datatypes ((array!99702 0))(
  ( (array!99703 (arr!48115 (Array (_ BitVec 32) (_ BitVec 64))) (size!48666 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99702)

(declare-fun array_inv!37060 (array!99702) Bool)

(assert (=> start!127138 (array_inv!37060 a!2862)))

(declare-fun b!1493516 () Bool)

(declare-fun e!836687 () Bool)

(declare-fun e!836682 () Bool)

(assert (=> b!1493516 (= e!836687 e!836682)))

(declare-fun res!1016102 () Bool)

(assert (=> b!1493516 (=> (not res!1016102) (not e!836682))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12378 0))(
  ( (MissingZero!12378 (index!51903 (_ BitVec 32))) (Found!12378 (index!51904 (_ BitVec 32))) (Intermediate!12378 (undefined!13190 Bool) (index!51905 (_ BitVec 32)) (x!133509 (_ BitVec 32))) (Undefined!12378) (MissingVacant!12378 (index!51906 (_ BitVec 32))) )
))
(declare-fun lt!651018 () SeekEntryResult!12378)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1493516 (= res!1016102 (= lt!651018 (Intermediate!12378 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!651022 () (_ BitVec 64))

(declare-fun lt!651021 () array!99702)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99702 (_ BitVec 32)) SeekEntryResult!12378)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493516 (= lt!651018 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!651022 mask!2687) lt!651022 lt!651021 mask!2687))))

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1493516 (= lt!651022 (select (store (arr!48115 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1493517 () Bool)

(declare-fun res!1016092 () Bool)

(assert (=> b!1493517 (=> (not res!1016092) (not e!836685))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1493517 (= res!1016092 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48666 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48666 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48666 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1493518 () Bool)

(declare-fun res!1016104 () Bool)

(assert (=> b!1493518 (=> (not res!1016104) (not e!836685))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1493518 (= res!1016104 (validKeyInArray!0 (select (arr!48115 a!2862) i!1006)))))

(declare-fun e!836684 () Bool)

(declare-fun b!1493519 () Bool)

(assert (=> b!1493519 (= e!836684 (= lt!651018 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!651022 lt!651021 mask!2687)))))

(declare-fun b!1493520 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99702 (_ BitVec 32)) SeekEntryResult!12378)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99702 (_ BitVec 32)) SeekEntryResult!12378)

(assert (=> b!1493520 (= e!836684 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!651022 lt!651021 mask!2687) (seekEntryOrOpen!0 lt!651022 lt!651021 mask!2687)))))

(declare-fun b!1493521 () Bool)

(declare-fun res!1016101 () Bool)

(assert (=> b!1493521 (=> (not res!1016101) (not e!836687))))

(declare-fun lt!651017 () SeekEntryResult!12378)

(assert (=> b!1493521 (= res!1016101 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48115 a!2862) j!93) a!2862 mask!2687) lt!651017))))

(declare-fun b!1493522 () Bool)

(declare-fun e!836681 () Bool)

(assert (=> b!1493522 (= e!836681 true)))

(declare-fun lt!651020 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493522 (= lt!651020 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1493523 () Bool)

(declare-fun res!1016097 () Bool)

(assert (=> b!1493523 (=> (not res!1016097) (not e!836682))))

(assert (=> b!1493523 (= res!1016097 e!836684)))

(declare-fun c!138245 () Bool)

(assert (=> b!1493523 (= c!138245 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1493524 () Bool)

(declare-fun res!1016094 () Bool)

(assert (=> b!1493524 (=> (not res!1016094) (not e!836685))))

(assert (=> b!1493524 (= res!1016094 (validKeyInArray!0 (select (arr!48115 a!2862) j!93)))))

(declare-fun b!1493525 () Bool)

(assert (=> b!1493525 (= e!836682 (not e!836681))))

(declare-fun res!1016091 () Bool)

(assert (=> b!1493525 (=> res!1016091 e!836681)))

(assert (=> b!1493525 (= res!1016091 (or (and (= (select (arr!48115 a!2862) index!646) (select (store (arr!48115 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48115 a!2862) index!646) (select (arr!48115 a!2862) j!93))) (= (select (arr!48115 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!836686 () Bool)

(assert (=> b!1493525 e!836686))

(declare-fun res!1016095 () Bool)

(assert (=> b!1493525 (=> (not res!1016095) (not e!836686))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99702 (_ BitVec 32)) Bool)

(assert (=> b!1493525 (= res!1016095 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50044 0))(
  ( (Unit!50045) )
))
(declare-fun lt!651019 () Unit!50044)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99702 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50044)

(assert (=> b!1493525 (= lt!651019 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1493526 () Bool)

(declare-fun res!1016106 () Bool)

(assert (=> b!1493526 (=> (not res!1016106) (not e!836685))))

(declare-datatypes ((List!34796 0))(
  ( (Nil!34793) (Cons!34792 (h!36181 (_ BitVec 64)) (t!49497 List!34796)) )
))
(declare-fun arrayNoDuplicates!0 (array!99702 (_ BitVec 32) List!34796) Bool)

(assert (=> b!1493526 (= res!1016106 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34793))))

(declare-fun b!1493527 () Bool)

(declare-fun res!1016096 () Bool)

(assert (=> b!1493527 (=> (not res!1016096) (not e!836686))))

(assert (=> b!1493527 (= res!1016096 (= (seekEntryOrOpen!0 (select (arr!48115 a!2862) j!93) a!2862 mask!2687) (Found!12378 j!93)))))

(declare-fun b!1493528 () Bool)

(declare-fun e!836683 () Bool)

(assert (=> b!1493528 (= e!836683 e!836687)))

(declare-fun res!1016103 () Bool)

(assert (=> b!1493528 (=> (not res!1016103) (not e!836687))))

(assert (=> b!1493528 (= res!1016103 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48115 a!2862) j!93) mask!2687) (select (arr!48115 a!2862) j!93) a!2862 mask!2687) lt!651017))))

(assert (=> b!1493528 (= lt!651017 (Intermediate!12378 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1493529 () Bool)

(assert (=> b!1493529 (= e!836685 e!836683)))

(declare-fun res!1016105 () Bool)

(assert (=> b!1493529 (=> (not res!1016105) (not e!836683))))

(assert (=> b!1493529 (= res!1016105 (= (select (store (arr!48115 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493529 (= lt!651021 (array!99703 (store (arr!48115 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48666 a!2862)))))

(declare-fun b!1493530 () Bool)

(declare-fun res!1016093 () Bool)

(assert (=> b!1493530 (=> (not res!1016093) (not e!836685))))

(assert (=> b!1493530 (= res!1016093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1493531 () Bool)

(assert (=> b!1493531 (= e!836686 (or (= (select (arr!48115 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48115 a!2862) intermediateBeforeIndex!19) (select (arr!48115 a!2862) j!93))))))

(declare-fun b!1493532 () Bool)

(declare-fun res!1016098 () Bool)

(assert (=> b!1493532 (=> (not res!1016098) (not e!836685))))

(assert (=> b!1493532 (= res!1016098 (and (= (size!48666 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48666 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48666 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1493533 () Bool)

(declare-fun res!1016100 () Bool)

(assert (=> b!1493533 (=> (not res!1016100) (not e!836682))))

(assert (=> b!1493533 (= res!1016100 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(assert (= (and start!127138 res!1016099) b!1493532))

(assert (= (and b!1493532 res!1016098) b!1493518))

(assert (= (and b!1493518 res!1016104) b!1493524))

(assert (= (and b!1493524 res!1016094) b!1493530))

(assert (= (and b!1493530 res!1016093) b!1493526))

(assert (= (and b!1493526 res!1016106) b!1493517))

(assert (= (and b!1493517 res!1016092) b!1493529))

(assert (= (and b!1493529 res!1016105) b!1493528))

(assert (= (and b!1493528 res!1016103) b!1493521))

(assert (= (and b!1493521 res!1016101) b!1493516))

(assert (= (and b!1493516 res!1016102) b!1493523))

(assert (= (and b!1493523 c!138245) b!1493519))

(assert (= (and b!1493523 (not c!138245)) b!1493520))

(assert (= (and b!1493523 res!1016097) b!1493533))

(assert (= (and b!1493533 res!1016100) b!1493525))

(assert (= (and b!1493525 res!1016095) b!1493527))

(assert (= (and b!1493527 res!1016096) b!1493531))

(assert (= (and b!1493525 (not res!1016091)) b!1493522))

(declare-fun m!1377351 () Bool)

(assert (=> b!1493531 m!1377351))

(declare-fun m!1377353 () Bool)

(assert (=> b!1493531 m!1377353))

(assert (=> b!1493527 m!1377353))

(assert (=> b!1493527 m!1377353))

(declare-fun m!1377355 () Bool)

(assert (=> b!1493527 m!1377355))

(assert (=> b!1493521 m!1377353))

(assert (=> b!1493521 m!1377353))

(declare-fun m!1377357 () Bool)

(assert (=> b!1493521 m!1377357))

(declare-fun m!1377359 () Bool)

(assert (=> b!1493519 m!1377359))

(declare-fun m!1377361 () Bool)

(assert (=> b!1493522 m!1377361))

(declare-fun m!1377363 () Bool)

(assert (=> b!1493516 m!1377363))

(assert (=> b!1493516 m!1377363))

(declare-fun m!1377365 () Bool)

(assert (=> b!1493516 m!1377365))

(declare-fun m!1377367 () Bool)

(assert (=> b!1493516 m!1377367))

(declare-fun m!1377369 () Bool)

(assert (=> b!1493516 m!1377369))

(assert (=> b!1493529 m!1377367))

(declare-fun m!1377371 () Bool)

(assert (=> b!1493529 m!1377371))

(declare-fun m!1377373 () Bool)

(assert (=> b!1493518 m!1377373))

(assert (=> b!1493518 m!1377373))

(declare-fun m!1377375 () Bool)

(assert (=> b!1493518 m!1377375))

(declare-fun m!1377377 () Bool)

(assert (=> b!1493525 m!1377377))

(assert (=> b!1493525 m!1377367))

(declare-fun m!1377379 () Bool)

(assert (=> b!1493525 m!1377379))

(declare-fun m!1377381 () Bool)

(assert (=> b!1493525 m!1377381))

(declare-fun m!1377383 () Bool)

(assert (=> b!1493525 m!1377383))

(assert (=> b!1493525 m!1377353))

(declare-fun m!1377385 () Bool)

(assert (=> b!1493520 m!1377385))

(declare-fun m!1377387 () Bool)

(assert (=> b!1493520 m!1377387))

(declare-fun m!1377389 () Bool)

(assert (=> b!1493526 m!1377389))

(declare-fun m!1377391 () Bool)

(assert (=> start!127138 m!1377391))

(declare-fun m!1377393 () Bool)

(assert (=> start!127138 m!1377393))

(assert (=> b!1493528 m!1377353))

(assert (=> b!1493528 m!1377353))

(declare-fun m!1377395 () Bool)

(assert (=> b!1493528 m!1377395))

(assert (=> b!1493528 m!1377395))

(assert (=> b!1493528 m!1377353))

(declare-fun m!1377397 () Bool)

(assert (=> b!1493528 m!1377397))

(declare-fun m!1377399 () Bool)

(assert (=> b!1493530 m!1377399))

(assert (=> b!1493524 m!1377353))

(assert (=> b!1493524 m!1377353))

(declare-fun m!1377401 () Bool)

(assert (=> b!1493524 m!1377401))

(push 1)

