; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!126034 () Bool)

(assert start!126034)

(declare-fun b!1475127 () Bool)

(declare-fun res!1002110 () Bool)

(declare-fun e!827650 () Bool)

(assert (=> b!1475127 (=> (not res!1002110) (not e!827650))))

(declare-datatypes ((array!99171 0))(
  ( (array!99172 (arr!47863 (Array (_ BitVec 32) (_ BitVec 64))) (size!48414 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99171)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1475127 (= res!1002110 (validKeyInArray!0 (select (arr!47863 a!2862) i!1006)))))

(declare-fun res!1002103 () Bool)

(assert (=> start!126034 (=> (not res!1002103) (not e!827650))))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!126034 (= res!1002103 (validMask!0 mask!2687))))

(assert (=> start!126034 e!827650))

(assert (=> start!126034 true))

(declare-fun array_inv!36808 (array!99171) Bool)

(assert (=> start!126034 (array_inv!36808 a!2862)))

(declare-fun b!1475128 () Bool)

(declare-fun res!1002109 () Bool)

(assert (=> b!1475128 (=> (not res!1002109) (not e!827650))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1475128 (= res!1002109 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48414 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48414 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48414 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1475129 () Bool)

(declare-fun e!827653 () Bool)

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1475129 (= e!827653 (not (or (and (= (select (arr!47863 a!2862) index!646) (select (store (arr!47863 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47863 a!2862) index!646) (select (arr!47863 a!2862) j!93))) (not (= (select (arr!47863 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000)) (= index!646 intermediateBeforeIndex!19))))))

(declare-fun e!827654 () Bool)

(assert (=> b!1475129 e!827654))

(declare-fun res!1002104 () Bool)

(assert (=> b!1475129 (=> (not res!1002104) (not e!827654))))

(declare-datatypes ((SeekEntryResult!12126 0))(
  ( (MissingZero!12126 (index!50895 (_ BitVec 32))) (Found!12126 (index!50896 (_ BitVec 32))) (Intermediate!12126 (undefined!12938 Bool) (index!50897 (_ BitVec 32)) (x!132486 (_ BitVec 32))) (Undefined!12126) (MissingVacant!12126 (index!50898 (_ BitVec 32))) )
))
(declare-fun lt!644478 () SeekEntryResult!12126)

(assert (=> b!1475129 (= res!1002104 (and (= lt!644478 (Found!12126 j!93)) (or (= (select (arr!47863 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47863 a!2862) intermediateBeforeIndex!19) (select (arr!47863 a!2862) j!93)))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99171 (_ BitVec 32)) SeekEntryResult!12126)

(assert (=> b!1475129 (= lt!644478 (seekEntryOrOpen!0 (select (arr!47863 a!2862) j!93) a!2862 mask!2687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99171 (_ BitVec 32)) Bool)

(assert (=> b!1475129 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49540 0))(
  ( (Unit!49541) )
))
(declare-fun lt!644477 () Unit!49540)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99171 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49540)

(assert (=> b!1475129 (= lt!644477 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1475130 () Bool)

(declare-fun res!1002108 () Bool)

(assert (=> b!1475130 (=> (not res!1002108) (not e!827650))))

(assert (=> b!1475130 (= res!1002108 (and (= (size!48414 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48414 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48414 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1475131 () Bool)

(declare-fun e!827651 () Bool)

(assert (=> b!1475131 (= e!827650 e!827651)))

(declare-fun res!1002111 () Bool)

(assert (=> b!1475131 (=> (not res!1002111) (not e!827651))))

(assert (=> b!1475131 (= res!1002111 (= (select (store (arr!47863 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!644482 () array!99171)

(assert (=> b!1475131 (= lt!644482 (array!99172 (store (arr!47863 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48414 a!2862)))))

(declare-fun b!1475132 () Bool)

(declare-fun res!1002112 () Bool)

(declare-fun e!827647 () Bool)

(assert (=> b!1475132 (=> (not res!1002112) (not e!827647))))

(declare-fun lt!644479 () SeekEntryResult!12126)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99171 (_ BitVec 32)) SeekEntryResult!12126)

(assert (=> b!1475132 (= res!1002112 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47863 a!2862) j!93) a!2862 mask!2687) lt!644479))))

(declare-fun b!1475133 () Bool)

(assert (=> b!1475133 (= e!827651 e!827647)))

(declare-fun res!1002107 () Bool)

(assert (=> b!1475133 (=> (not res!1002107) (not e!827647))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1475133 (= res!1002107 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47863 a!2862) j!93) mask!2687) (select (arr!47863 a!2862) j!93) a!2862 mask!2687) lt!644479))))

(assert (=> b!1475133 (= lt!644479 (Intermediate!12126 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun e!827652 () Bool)

(declare-fun b!1475134 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99171 (_ BitVec 32)) SeekEntryResult!12126)

(assert (=> b!1475134 (= e!827652 (= lt!644478 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47863 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun b!1475135 () Bool)

(declare-fun res!1002105 () Bool)

(assert (=> b!1475135 (=> (not res!1002105) (not e!827653))))

(assert (=> b!1475135 (= res!1002105 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun e!827648 () Bool)

(declare-fun b!1475136 () Bool)

(declare-fun lt!644480 () (_ BitVec 64))

(assert (=> b!1475136 (= e!827648 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644480 lt!644482 mask!2687) (seekEntryOrOpen!0 lt!644480 lt!644482 mask!2687)))))

(declare-fun b!1475137 () Bool)

(assert (=> b!1475137 (= e!827647 e!827653)))

(declare-fun res!1002113 () Bool)

(assert (=> b!1475137 (=> (not res!1002113) (not e!827653))))

(declare-fun lt!644481 () SeekEntryResult!12126)

(assert (=> b!1475137 (= res!1002113 (= lt!644481 (Intermediate!12126 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(assert (=> b!1475137 (= lt!644481 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644480 mask!2687) lt!644480 lt!644482 mask!2687))))

(assert (=> b!1475137 (= lt!644480 (select (store (arr!47863 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1475138 () Bool)

(assert (=> b!1475138 (= e!827654 e!827652)))

(declare-fun res!1002106 () Bool)

(assert (=> b!1475138 (=> res!1002106 e!827652)))

(assert (=> b!1475138 (= res!1002106 (or (and (= (select (arr!47863 a!2862) index!646) (select (store (arr!47863 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47863 a!2862) index!646) (select (arr!47863 a!2862) j!93))) (not (= (select (arr!47863 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1475139 () Bool)

(declare-fun res!1002114 () Bool)

(assert (=> b!1475139 (=> (not res!1002114) (not e!827650))))

(declare-datatypes ((List!34544 0))(
  ( (Nil!34541) (Cons!34540 (h!35902 (_ BitVec 64)) (t!49245 List!34544)) )
))
(declare-fun arrayNoDuplicates!0 (array!99171 (_ BitVec 32) List!34544) Bool)

(assert (=> b!1475139 (= res!1002114 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34541))))

(declare-fun b!1475140 () Bool)

(declare-fun res!1002116 () Bool)

(assert (=> b!1475140 (=> (not res!1002116) (not e!827650))))

(assert (=> b!1475140 (= res!1002116 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1475141 () Bool)

(assert (=> b!1475141 (= e!827648 (= lt!644481 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644480 lt!644482 mask!2687)))))

(declare-fun b!1475142 () Bool)

(declare-fun res!1002117 () Bool)

(assert (=> b!1475142 (=> (not res!1002117) (not e!827650))))

(assert (=> b!1475142 (= res!1002117 (validKeyInArray!0 (select (arr!47863 a!2862) j!93)))))

(declare-fun b!1475143 () Bool)

(declare-fun res!1002115 () Bool)

(assert (=> b!1475143 (=> (not res!1002115) (not e!827653))))

(assert (=> b!1475143 (= res!1002115 e!827648)))

(declare-fun c!136031 () Bool)

(assert (=> b!1475143 (= c!136031 (bvsle x!665 intermediateAfterX!19))))

(assert (= (and start!126034 res!1002103) b!1475130))

(assert (= (and b!1475130 res!1002108) b!1475127))

(assert (= (and b!1475127 res!1002110) b!1475142))

(assert (= (and b!1475142 res!1002117) b!1475140))

(assert (= (and b!1475140 res!1002116) b!1475139))

(assert (= (and b!1475139 res!1002114) b!1475128))

(assert (= (and b!1475128 res!1002109) b!1475131))

(assert (= (and b!1475131 res!1002111) b!1475133))

(assert (= (and b!1475133 res!1002107) b!1475132))

(assert (= (and b!1475132 res!1002112) b!1475137))

(assert (= (and b!1475137 res!1002113) b!1475143))

(assert (= (and b!1475143 c!136031) b!1475141))

(assert (= (and b!1475143 (not c!136031)) b!1475136))

(assert (= (and b!1475143 res!1002115) b!1475135))

(assert (= (and b!1475135 res!1002105) b!1475129))

(assert (= (and b!1475129 res!1002104) b!1475138))

(assert (= (and b!1475138 (not res!1002106)) b!1475134))

(declare-fun m!1361475 () Bool)

(assert (=> b!1475131 m!1361475))

(declare-fun m!1361477 () Bool)

(assert (=> b!1475131 m!1361477))

(declare-fun m!1361479 () Bool)

(assert (=> b!1475136 m!1361479))

(declare-fun m!1361481 () Bool)

(assert (=> b!1475136 m!1361481))

(declare-fun m!1361483 () Bool)

(assert (=> b!1475129 m!1361483))

(assert (=> b!1475129 m!1361475))

(declare-fun m!1361485 () Bool)

(assert (=> b!1475129 m!1361485))

(declare-fun m!1361487 () Bool)

(assert (=> b!1475129 m!1361487))

(declare-fun m!1361489 () Bool)

(assert (=> b!1475129 m!1361489))

(declare-fun m!1361491 () Bool)

(assert (=> b!1475129 m!1361491))

(declare-fun m!1361493 () Bool)

(assert (=> b!1475129 m!1361493))

(declare-fun m!1361495 () Bool)

(assert (=> b!1475129 m!1361495))

(assert (=> b!1475129 m!1361491))

(declare-fun m!1361497 () Bool)

(assert (=> start!126034 m!1361497))

(declare-fun m!1361499 () Bool)

(assert (=> start!126034 m!1361499))

(assert (=> b!1475132 m!1361491))

(assert (=> b!1475132 m!1361491))

(declare-fun m!1361501 () Bool)

(assert (=> b!1475132 m!1361501))

(declare-fun m!1361503 () Bool)

(assert (=> b!1475137 m!1361503))

(assert (=> b!1475137 m!1361503))

(declare-fun m!1361505 () Bool)

(assert (=> b!1475137 m!1361505))

(assert (=> b!1475137 m!1361475))

(declare-fun m!1361507 () Bool)

(assert (=> b!1475137 m!1361507))

(assert (=> b!1475134 m!1361491))

(assert (=> b!1475134 m!1361491))

(declare-fun m!1361509 () Bool)

(assert (=> b!1475134 m!1361509))

(assert (=> b!1475138 m!1361489))

(assert (=> b!1475138 m!1361475))

(assert (=> b!1475138 m!1361487))

(assert (=> b!1475138 m!1361491))

(assert (=> b!1475142 m!1361491))

(assert (=> b!1475142 m!1361491))

(declare-fun m!1361511 () Bool)

(assert (=> b!1475142 m!1361511))

(declare-fun m!1361513 () Bool)

(assert (=> b!1475141 m!1361513))

(declare-fun m!1361515 () Bool)

(assert (=> b!1475140 m!1361515))

(declare-fun m!1361517 () Bool)

(assert (=> b!1475139 m!1361517))

(assert (=> b!1475133 m!1361491))

(assert (=> b!1475133 m!1361491))

(declare-fun m!1361519 () Bool)

(assert (=> b!1475133 m!1361519))

(assert (=> b!1475133 m!1361519))

(assert (=> b!1475133 m!1361491))

(declare-fun m!1361521 () Bool)

(assert (=> b!1475133 m!1361521))

(declare-fun m!1361523 () Bool)

(assert (=> b!1475127 m!1361523))

(assert (=> b!1475127 m!1361523))

(declare-fun m!1361525 () Bool)

(assert (=> b!1475127 m!1361525))

(push 1)

(assert (not b!1475140))

(assert (not b!1475129))

(assert (not start!126034))

(assert (not b!1475136))

(assert (not b!1475142))

(assert (not b!1475132))

(assert (not b!1475137))

(assert (not b!1475134))

(assert (not b!1475133))

(assert (not b!1475141))

(assert (not b!1475127))

(assert (not b!1475139))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!155721 () Bool)

(declare-fun e!827792 () Bool)

(assert (=> d!155721 e!827792))

(declare-fun c!136087 () Bool)

(declare-fun lt!644576 () SeekEntryResult!12126)

(assert (=> d!155721 (= c!136087 (and (is-Intermediate!12126 lt!644576) (undefined!12938 lt!644576)))))

(declare-fun e!827788 () SeekEntryResult!12126)

(assert (=> d!155721 (= lt!644576 e!827788)))

(declare-fun c!136088 () Bool)

(assert (=> d!155721 (= c!136088 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!644577 () (_ BitVec 64))

(assert (=> d!155721 (= lt!644577 (select (arr!47863 a!2862) index!646))))

(assert (=> d!155721 (validMask!0 mask!2687)))

(assert (=> d!155721 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47863 a!2862) j!93) a!2862 mask!2687) lt!644576)))

(declare-fun b!1475390 () Bool)

(assert (=> b!1475390 (= e!827788 (Intermediate!12126 true index!646 x!665))))

(declare-fun b!1475391 () Bool)

(assert (=> b!1475391 (and (bvsge (index!50897 lt!644576) #b00000000000000000000000000000000) (bvslt (index!50897 lt!644576) (size!48414 a!2862)))))

(declare-fun e!827789 () Bool)

(assert (=> b!1475391 (= e!827789 (= (select (arr!47863 a!2862) (index!50897 lt!644576)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475392 () Bool)

(declare-fun e!827790 () SeekEntryResult!12126)

(assert (=> b!1475392 (= e!827790 (Intermediate!12126 false index!646 x!665))))

(declare-fun b!1475393 () Bool)

(assert (=> b!1475393 (= e!827792 (bvsge (x!132486 lt!644576) #b01111111111111111111111111111110))))

(declare-fun b!1475394 () Bool)

(assert (=> b!1475394 (= e!827788 e!827790)))

(declare-fun c!136086 () Bool)

(assert (=> b!1475394 (= c!136086 (or (= lt!644577 (select (arr!47863 a!2862) j!93)) (= (bvadd lt!644577 lt!644577) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1475395 () Bool)

(declare-fun e!827791 () Bool)

(assert (=> b!1475395 (= e!827792 e!827791)))

(declare-fun res!1002258 () Bool)

(assert (=> b!1475395 (= res!1002258 (and (is-Intermediate!12126 lt!644576) (not (undefined!12938 lt!644576)) (bvslt (x!132486 lt!644576) #b01111111111111111111111111111110) (bvsge (x!132486 lt!644576) #b00000000000000000000000000000000) (bvsge (x!132486 lt!644576) x!665)))))

(assert (=> b!1475395 (=> (not res!1002258) (not e!827791))))

(declare-fun b!1475396 () Bool)

(assert (=> b!1475396 (and (bvsge (index!50897 lt!644576) #b00000000000000000000000000000000) (bvslt (index!50897 lt!644576) (size!48414 a!2862)))))

(declare-fun res!1002260 () Bool)

(assert (=> b!1475396 (= res!1002260 (= (select (arr!47863 a!2862) (index!50897 lt!644576)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475396 (=> res!1002260 e!827789)))

(declare-fun b!1475397 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1475397 (= e!827790 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47863 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1475398 () Bool)

(assert (=> b!1475398 (and (bvsge (index!50897 lt!644576) #b00000000000000000000000000000000) (bvslt (index!50897 lt!644576) (size!48414 a!2862)))))

(declare-fun res!1002259 () Bool)

(assert (=> b!1475398 (= res!1002259 (= (select (arr!47863 a!2862) (index!50897 lt!644576)) (select (arr!47863 a!2862) j!93)))))

(assert (=> b!1475398 (=> res!1002259 e!827789)))

(assert (=> b!1475398 (= e!827791 e!827789)))

(assert (= (and d!155721 c!136088) b!1475390))

(assert (= (and d!155721 (not c!136088)) b!1475394))

(assert (= (and b!1475394 c!136086) b!1475392))

(assert (= (and b!1475394 (not c!136086)) b!1475397))

(assert (= (and d!155721 c!136087) b!1475393))

(assert (= (and d!155721 (not c!136087)) b!1475395))

(assert (= (and b!1475395 res!1002258) b!1475398))

(assert (= (and b!1475398 (not res!1002259)) b!1475396))

(assert (= (and b!1475396 (not res!1002260)) b!1475391))

(assert (=> d!155721 m!1361489))

(assert (=> d!155721 m!1361497))

(declare-fun m!1361695 () Bool)

(assert (=> b!1475396 m!1361695))

(assert (=> b!1475391 m!1361695))

(assert (=> b!1475398 m!1361695))

(declare-fun m!1361697 () Bool)

(assert (=> b!1475397 m!1361697))

(assert (=> b!1475397 m!1361697))

(assert (=> b!1475397 m!1361491))

(declare-fun m!1361699 () Bool)

(assert (=> b!1475397 m!1361699))

(assert (=> b!1475132 d!155721))

(declare-fun d!155743 () Bool)

(declare-fun e!827797 () Bool)

(assert (=> d!155743 e!827797))

(declare-fun c!136090 () Bool)

(declare-fun lt!644578 () SeekEntryResult!12126)

(assert (=> d!155743 (= c!136090 (and (is-Intermediate!12126 lt!644578) (undefined!12938 lt!644578)))))

(declare-fun e!827793 () SeekEntryResult!12126)

(assert (=> d!155743 (= lt!644578 e!827793)))

(declare-fun c!136091 () Bool)

(assert (=> d!155743 (= c!136091 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!644579 () (_ BitVec 64))

(assert (=> d!155743 (= lt!644579 (select (arr!47863 a!2862) (toIndex!0 (select (arr!47863 a!2862) j!93) mask!2687)))))

(assert (=> d!155743 (validMask!0 mask!2687)))

(assert (=> d!155743 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47863 a!2862) j!93) mask!2687) (select (arr!47863 a!2862) j!93) a!2862 mask!2687) lt!644578)))

(declare-fun b!1475399 () Bool)

(assert (=> b!1475399 (= e!827793 (Intermediate!12126 true (toIndex!0 (select (arr!47863 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475400 () Bool)

(assert (=> b!1475400 (and (bvsge (index!50897 lt!644578) #b00000000000000000000000000000000) (bvslt (index!50897 lt!644578) (size!48414 a!2862)))))

(declare-fun e!827794 () Bool)

(assert (=> b!1475400 (= e!827794 (= (select (arr!47863 a!2862) (index!50897 lt!644578)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!827795 () SeekEntryResult!12126)

(declare-fun b!1475401 () Bool)

(assert (=> b!1475401 (= e!827795 (Intermediate!12126 false (toIndex!0 (select (arr!47863 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475402 () Bool)

(assert (=> b!1475402 (= e!827797 (bvsge (x!132486 lt!644578) #b01111111111111111111111111111110))))

(declare-fun b!1475403 () Bool)

(assert (=> b!1475403 (= e!827793 e!827795)))

(declare-fun c!136089 () Bool)

(assert (=> b!1475403 (= c!136089 (or (= lt!644579 (select (arr!47863 a!2862) j!93)) (= (bvadd lt!644579 lt!644579) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1475404 () Bool)

(declare-fun e!827796 () Bool)

(assert (=> b!1475404 (= e!827797 e!827796)))

(declare-fun res!1002261 () Bool)

(assert (=> b!1475404 (= res!1002261 (and (is-Intermediate!12126 lt!644578) (not (undefined!12938 lt!644578)) (bvslt (x!132486 lt!644578) #b01111111111111111111111111111110) (bvsge (x!132486 lt!644578) #b00000000000000000000000000000000) (bvsge (x!132486 lt!644578) #b00000000000000000000000000000000)))))

(assert (=> b!1475404 (=> (not res!1002261) (not e!827796))))

(declare-fun b!1475405 () Bool)

(assert (=> b!1475405 (and (bvsge (index!50897 lt!644578) #b00000000000000000000000000000000) (bvslt (index!50897 lt!644578) (size!48414 a!2862)))))

(declare-fun res!1002263 () Bool)

(assert (=> b!1475405 (= res!1002263 (= (select (arr!47863 a!2862) (index!50897 lt!644578)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475405 (=> res!1002263 e!827794)))

(declare-fun b!1475406 () Bool)

(assert (=> b!1475406 (= e!827795 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47863 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47863 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1475407 () Bool)

(assert (=> b!1475407 (and (bvsge (index!50897 lt!644578) #b00000000000000000000000000000000) (bvslt (index!50897 lt!644578) (size!48414 a!2862)))))

(declare-fun res!1002262 () Bool)

(assert (=> b!1475407 (= res!1002262 (= (select (arr!47863 a!2862) (index!50897 lt!644578)) (select (arr!47863 a!2862) j!93)))))

(assert (=> b!1475407 (=> res!1002262 e!827794)))

(assert (=> b!1475407 (= e!827796 e!827794)))

(assert (= (and d!155743 c!136091) b!1475399))

(assert (= (and d!155743 (not c!136091)) b!1475403))

(assert (= (and b!1475403 c!136089) b!1475401))

(assert (= (and b!1475403 (not c!136089)) b!1475406))

(assert (= (and d!155743 c!136090) b!1475402))

(assert (= (and d!155743 (not c!136090)) b!1475404))

(assert (= (and b!1475404 res!1002261) b!1475407))

(assert (= (and b!1475407 (not res!1002262)) b!1475405))

(assert (= (and b!1475405 (not res!1002263)) b!1475400))

(assert (=> d!155743 m!1361519))

(declare-fun m!1361701 () Bool)

(assert (=> d!155743 m!1361701))

(assert (=> d!155743 m!1361497))

(declare-fun m!1361703 () Bool)

(assert (=> b!1475405 m!1361703))

(assert (=> b!1475400 m!1361703))

(assert (=> b!1475407 m!1361703))

(assert (=> b!1475406 m!1361519))

(declare-fun m!1361705 () Bool)

(assert (=> b!1475406 m!1361705))

(assert (=> b!1475406 m!1361705))

(assert (=> b!1475406 m!1361491))

(declare-fun m!1361707 () Bool)

(assert (=> b!1475406 m!1361707))

(assert (=> b!1475133 d!155743))

(declare-fun d!155745 () Bool)

(declare-fun lt!644589 () (_ BitVec 32))

(declare-fun lt!644588 () (_ BitVec 32))

(assert (=> d!155745 (= lt!644589 (bvmul (bvxor lt!644588 (bvlshr lt!644588 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155745 (= lt!644588 ((_ extract 31 0) (bvand (bvxor (select (arr!47863 a!2862) j!93) (bvlshr (select (arr!47863 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155745 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1002264 (let ((h!35907 ((_ extract 31 0) (bvand (bvxor (select (arr!47863 a!2862) j!93) (bvlshr (select (arr!47863 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132494 (bvmul (bvxor h!35907 (bvlshr h!35907 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132494 (bvlshr x!132494 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1002264 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1002264 #b00000000000000000000000000000000))))))

(assert (=> d!155745 (= (toIndex!0 (select (arr!47863 a!2862) j!93) mask!2687) (bvand (bvxor lt!644589 (bvlshr lt!644589 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1475133 d!155745))

(declare-fun d!155747 () Bool)

(assert (=> d!155747 (= (validKeyInArray!0 (select (arr!47863 a!2862) j!93)) (and (not (= (select (arr!47863 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47863 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1475142 d!155747))

(declare-fun b!1475486 () Bool)

(declare-fun e!827849 () Bool)

(declare-fun call!67795 () Bool)

(assert (=> b!1475486 (= e!827849 call!67795)))

(declare-fun b!1475487 () Bool)

(declare-fun e!827850 () Bool)

(assert (=> b!1475487 (= e!827850 e!827849)))

(declare-fun lt!644619 () (_ BitVec 64))

(assert (=> b!1475487 (= lt!644619 (select (arr!47863 a!2862) #b00000000000000000000000000000000))))

(declare-fun lt!644618 () Unit!49540)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!99171 (_ BitVec 64) (_ BitVec 32)) Unit!49540)

(assert (=> b!1475487 (= lt!644618 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!644619 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!99171 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1475487 (arrayContainsKey!0 a!2862 lt!644619 #b00000000000000000000000000000000)))

(declare-fun lt!644617 () Unit!49540)

(assert (=> b!1475487 (= lt!644617 lt!644618)))

(declare-fun res!1002290 () Bool)

(assert (=> b!1475487 (= res!1002290 (= (seekEntryOrOpen!0 (select (arr!47863 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!12126 #b00000000000000000000000000000000)))))

(assert (=> b!1475487 (=> (not res!1002290) (not e!827849))))

(declare-fun bm!67792 () Bool)

(assert (=> bm!67792 (= call!67795 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!155751 () Bool)

(declare-fun res!1002289 () Bool)

(declare-fun e!827848 () Bool)

(assert (=> d!155751 (=> res!1002289 e!827848)))

(assert (=> d!155751 (= res!1002289 (bvsge #b00000000000000000000000000000000 (size!48414 a!2862)))))

(assert (=> d!155751 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!827848)))

(declare-fun b!1475488 () Bool)

(assert (=> b!1475488 (= e!827850 call!67795)))

(declare-fun b!1475489 () Bool)

(assert (=> b!1475489 (= e!827848 e!827850)))

(declare-fun c!136119 () Bool)

(assert (=> b!1475489 (= c!136119 (validKeyInArray!0 (select (arr!47863 a!2862) #b00000000000000000000000000000000)))))

(assert (= (and d!155751 (not res!1002289)) b!1475489))

(assert (= (and b!1475489 c!136119) b!1475487))

(assert (= (and b!1475489 (not c!136119)) b!1475488))

(assert (= (and b!1475487 res!1002290) b!1475486))

(assert (= (or b!1475486 b!1475488) bm!67792))

(declare-fun m!1361755 () Bool)

(assert (=> b!1475487 m!1361755))

(declare-fun m!1361759 () Bool)

(assert (=> b!1475487 m!1361759))

(declare-fun m!1361763 () Bool)

(assert (=> b!1475487 m!1361763))

(assert (=> b!1475487 m!1361755))

(declare-fun m!1361765 () Bool)

(assert (=> b!1475487 m!1361765))

(declare-fun m!1361767 () Bool)

(assert (=> bm!67792 m!1361767))

(assert (=> b!1475489 m!1361755))

(assert (=> b!1475489 m!1361755))

(declare-fun m!1361769 () Bool)

(assert (=> b!1475489 m!1361769))

(assert (=> b!1475140 d!155751))

(declare-fun d!155771 () Bool)

(declare-fun e!827855 () Bool)

(assert (=> d!155771 e!827855))

(declare-fun c!136121 () Bool)

(declare-fun lt!644620 () SeekEntryResult!12126)

(assert (=> d!155771 (= c!136121 (and (is-Intermediate!12126 lt!644620) (undefined!12938 lt!644620)))))

(declare-fun e!827851 () SeekEntryResult!12126)

(assert (=> d!155771 (= lt!644620 e!827851)))

(declare-fun c!136122 () Bool)

(assert (=> d!155771 (= c!136122 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!644621 () (_ BitVec 64))

(assert (=> d!155771 (= lt!644621 (select (arr!47863 lt!644482) index!646))))

(assert (=> d!155771 (validMask!0 mask!2687)))

(assert (=> d!155771 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644480 lt!644482 mask!2687) lt!644620)))

(declare-fun b!1475490 () Bool)

(assert (=> b!1475490 (= e!827851 (Intermediate!12126 true index!646 x!665))))

(declare-fun b!1475491 () Bool)

(assert (=> b!1475491 (and (bvsge (index!50897 lt!644620) #b00000000000000000000000000000000) (bvslt (index!50897 lt!644620) (size!48414 lt!644482)))))

(declare-fun e!827852 () Bool)

(assert (=> b!1475491 (= e!827852 (= (select (arr!47863 lt!644482) (index!50897 lt!644620)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475492 () Bool)

(declare-fun e!827853 () SeekEntryResult!12126)

(assert (=> b!1475492 (= e!827853 (Intermediate!12126 false index!646 x!665))))

(declare-fun b!1475493 () Bool)

(assert (=> b!1475493 (= e!827855 (bvsge (x!132486 lt!644620) #b01111111111111111111111111111110))))

(declare-fun b!1475494 () Bool)

(assert (=> b!1475494 (= e!827851 e!827853)))

(declare-fun c!136120 () Bool)

(assert (=> b!1475494 (= c!136120 (or (= lt!644621 lt!644480) (= (bvadd lt!644621 lt!644621) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1475495 () Bool)

(declare-fun e!827854 () Bool)

(assert (=> b!1475495 (= e!827855 e!827854)))

(declare-fun res!1002291 () Bool)

(assert (=> b!1475495 (= res!1002291 (and (is-Intermediate!12126 lt!644620) (not (undefined!12938 lt!644620)) (bvslt (x!132486 lt!644620) #b01111111111111111111111111111110) (bvsge (x!132486 lt!644620) #b00000000000000000000000000000000) (bvsge (x!132486 lt!644620) x!665)))))

(assert (=> b!1475495 (=> (not res!1002291) (not e!827854))))

(declare-fun b!1475496 () Bool)

(assert (=> b!1475496 (and (bvsge (index!50897 lt!644620) #b00000000000000000000000000000000) (bvslt (index!50897 lt!644620) (size!48414 lt!644482)))))

(declare-fun res!1002293 () Bool)

(assert (=> b!1475496 (= res!1002293 (= (select (arr!47863 lt!644482) (index!50897 lt!644620)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475496 (=> res!1002293 e!827852)))

(declare-fun b!1475497 () Bool)

(assert (=> b!1475497 (= e!827853 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) lt!644480 lt!644482 mask!2687))))

(declare-fun b!1475498 () Bool)

(assert (=> b!1475498 (and (bvsge (index!50897 lt!644620) #b00000000000000000000000000000000) (bvslt (index!50897 lt!644620) (size!48414 lt!644482)))))

(declare-fun res!1002292 () Bool)

(assert (=> b!1475498 (= res!1002292 (= (select (arr!47863 lt!644482) (index!50897 lt!644620)) lt!644480))))

(assert (=> b!1475498 (=> res!1002292 e!827852)))

(assert (=> b!1475498 (= e!827854 e!827852)))

(assert (= (and d!155771 c!136122) b!1475490))

(assert (= (and d!155771 (not c!136122)) b!1475494))

(assert (= (and b!1475494 c!136120) b!1475492))

(assert (= (and b!1475494 (not c!136120)) b!1475497))

(assert (= (and d!155771 c!136121) b!1475493))

(assert (= (and d!155771 (not c!136121)) b!1475495))

(assert (= (and b!1475495 res!1002291) b!1475498))

(assert (= (and b!1475498 (not res!1002292)) b!1475496))

(assert (= (and b!1475496 (not res!1002293)) b!1475491))

(declare-fun m!1361771 () Bool)

(assert (=> d!155771 m!1361771))

(assert (=> d!155771 m!1361497))

(declare-fun m!1361773 () Bool)

(assert (=> b!1475496 m!1361773))

(assert (=> b!1475491 m!1361773))

(assert (=> b!1475498 m!1361773))

(assert (=> b!1475497 m!1361697))

(assert (=> b!1475497 m!1361697))

(declare-fun m!1361775 () Bool)

(assert (=> b!1475497 m!1361775))

(assert (=> b!1475141 d!155771))

(declare-fun d!155773 () Bool)

(assert (=> d!155773 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!126034 d!155773))

(declare-fun d!155781 () Bool)

(assert (=> d!155781 (= (array_inv!36808 a!2862) (bvsge (size!48414 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!126034 d!155781))

(declare-fun b!1475536 () Bool)

(declare-fun e!827880 () Bool)

(declare-fun contains!9920 (List!34544 (_ BitVec 64)) Bool)

(assert (=> b!1475536 (= e!827880 (contains!9920 Nil!34541 (select (arr!47863 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1475537 () Bool)

(declare-fun e!827879 () Bool)

(declare-fun e!827881 () Bool)

(assert (=> b!1475537 (= e!827879 e!827881)))

(declare-fun c!136137 () Bool)

(assert (=> b!1475537 (= c!136137 (validKeyInArray!0 (select (arr!47863 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1475538 () Bool)

(declare-fun call!67798 () Bool)

(assert (=> b!1475538 (= e!827881 call!67798)))

(declare-fun bm!67795 () Bool)

(assert (=> bm!67795 (= call!67798 (arrayNoDuplicates!0 a!2862 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!136137 (Cons!34540 (select (arr!47863 a!2862) #b00000000000000000000000000000000) Nil!34541) Nil!34541)))))

(declare-fun b!1475539 () Bool)

(declare-fun e!827878 () Bool)

(assert (=> b!1475539 (= e!827878 e!827879)))

(declare-fun res!1002304 () Bool)

(assert (=> b!1475539 (=> (not res!1002304) (not e!827879))))

(assert (=> b!1475539 (= res!1002304 (not e!827880))))

(declare-fun res!1002303 () Bool)

(assert (=> b!1475539 (=> (not res!1002303) (not e!827880))))

(assert (=> b!1475539 (= res!1002303 (validKeyInArray!0 (select (arr!47863 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1475540 () Bool)

(assert (=> b!1475540 (= e!827881 call!67798)))

(declare-fun d!155783 () Bool)

(declare-fun res!1002305 () Bool)

(assert (=> d!155783 (=> res!1002305 e!827878)))

(assert (=> d!155783 (= res!1002305 (bvsge #b00000000000000000000000000000000 (size!48414 a!2862)))))

(assert (=> d!155783 (= (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34541) e!827878)))

(assert (= (and d!155783 (not res!1002305)) b!1475539))

(assert (= (and b!1475539 res!1002303) b!1475536))

(assert (= (and b!1475539 res!1002304) b!1475537))

(assert (= (and b!1475537 c!136137) b!1475538))

(assert (= (and b!1475537 (not c!136137)) b!1475540))

(assert (= (or b!1475538 b!1475540) bm!67795))

(assert (=> b!1475536 m!1361755))

(assert (=> b!1475536 m!1361755))

(declare-fun m!1361793 () Bool)

(assert (=> b!1475536 m!1361793))

(assert (=> b!1475537 m!1361755))

(assert (=> b!1475537 m!1361755))

(assert (=> b!1475537 m!1361769))

(assert (=> bm!67795 m!1361755))

(declare-fun m!1361795 () Bool)

(assert (=> bm!67795 m!1361795))

(assert (=> b!1475539 m!1361755))

(assert (=> b!1475539 m!1361755))

(assert (=> b!1475539 m!1361769))

(assert (=> b!1475139 d!155783))

(declare-fun b!1475586 () Bool)

(declare-fun e!827907 () SeekEntryResult!12126)

(declare-fun lt!644652 () SeekEntryResult!12126)

(assert (=> b!1475586 (= e!827907 (MissingZero!12126 (index!50897 lt!644652)))))

(declare-fun b!1475587 () Bool)

(declare-fun e!827905 () SeekEntryResult!12126)

(assert (=> b!1475587 (= e!827905 (Found!12126 (index!50897 lt!644652)))))

(declare-fun d!155787 () Bool)

(declare-fun lt!644651 () SeekEntryResult!12126)

(assert (=> d!155787 (and (or (is-Undefined!12126 lt!644651) (not (is-Found!12126 lt!644651)) (and (bvsge (index!50896 lt!644651) #b00000000000000000000000000000000) (bvslt (index!50896 lt!644651) (size!48414 a!2862)))) (or (is-Undefined!12126 lt!644651) (is-Found!12126 lt!644651) (not (is-MissingZero!12126 lt!644651)) (and (bvsge (index!50895 lt!644651) #b00000000000000000000000000000000) (bvslt (index!50895 lt!644651) (size!48414 a!2862)))) (or (is-Undefined!12126 lt!644651) (is-Found!12126 lt!644651) (is-MissingZero!12126 lt!644651) (not (is-MissingVacant!12126 lt!644651)) (and (bvsge (index!50898 lt!644651) #b00000000000000000000000000000000) (bvslt (index!50898 lt!644651) (size!48414 a!2862)))) (or (is-Undefined!12126 lt!644651) (ite (is-Found!12126 lt!644651) (= (select (arr!47863 a!2862) (index!50896 lt!644651)) (select (arr!47863 a!2862) j!93)) (ite (is-MissingZero!12126 lt!644651) (= (select (arr!47863 a!2862) (index!50895 lt!644651)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12126 lt!644651) (= (select (arr!47863 a!2862) (index!50898 lt!644651)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!827906 () SeekEntryResult!12126)

(assert (=> d!155787 (= lt!644651 e!827906)))

(declare-fun c!136159 () Bool)

(assert (=> d!155787 (= c!136159 (and (is-Intermediate!12126 lt!644652) (undefined!12938 lt!644652)))))

(assert (=> d!155787 (= lt!644652 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47863 a!2862) j!93) mask!2687) (select (arr!47863 a!2862) j!93) a!2862 mask!2687))))

(assert (=> d!155787 (validMask!0 mask!2687)))

(assert (=> d!155787 (= (seekEntryOrOpen!0 (select (arr!47863 a!2862) j!93) a!2862 mask!2687) lt!644651)))

(declare-fun b!1475588 () Bool)

(assert (=> b!1475588 (= e!827906 e!827905)))

(declare-fun lt!644653 () (_ BitVec 64))

(assert (=> b!1475588 (= lt!644653 (select (arr!47863 a!2862) (index!50897 lt!644652)))))

(declare-fun c!136161 () Bool)

(assert (=> b!1475588 (= c!136161 (= lt!644653 (select (arr!47863 a!2862) j!93)))))

(declare-fun b!1475589 () Bool)

(assert (=> b!1475589 (= e!827907 (seekKeyOrZeroReturnVacant!0 (x!132486 lt!644652) (index!50897 lt!644652) (index!50897 lt!644652) (select (arr!47863 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1475590 () Bool)

(assert (=> b!1475590 (= e!827906 Undefined!12126)))

(declare-fun b!1475591 () Bool)

(declare-fun c!136160 () Bool)

(assert (=> b!1475591 (= c!136160 (= lt!644653 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475591 (= e!827905 e!827907)))

(assert (= (and d!155787 c!136159) b!1475590))

(assert (= (and d!155787 (not c!136159)) b!1475588))

(assert (= (and b!1475588 c!136161) b!1475587))

(assert (= (and b!1475588 (not c!136161)) b!1475591))

(assert (= (and b!1475591 c!136160) b!1475586))

(assert (= (and b!1475591 (not c!136160)) b!1475589))

(declare-fun m!1361817 () Bool)

(assert (=> d!155787 m!1361817))

(assert (=> d!155787 m!1361519))

(assert (=> d!155787 m!1361491))

(assert (=> d!155787 m!1361521))

(assert (=> d!155787 m!1361497))

(declare-fun m!1361819 () Bool)

(assert (=> d!155787 m!1361819))

(declare-fun m!1361821 () Bool)

(assert (=> d!155787 m!1361821))

(assert (=> d!155787 m!1361491))

(assert (=> d!155787 m!1361519))

(declare-fun m!1361823 () Bool)

(assert (=> b!1475588 m!1361823))

(assert (=> b!1475589 m!1361491))

(declare-fun m!1361825 () Bool)

(assert (=> b!1475589 m!1361825))

(assert (=> b!1475129 d!155787))

(declare-fun b!1475598 () Bool)

(declare-fun e!827912 () Bool)

(declare-fun call!67799 () Bool)

(assert (=> b!1475598 (= e!827912 call!67799)))

(declare-fun b!1475599 () Bool)

(declare-fun e!827913 () Bool)

(assert (=> b!1475599 (= e!827913 e!827912)))

(declare-fun lt!644659 () (_ BitVec 64))

(assert (=> b!1475599 (= lt!644659 (select (arr!47863 a!2862) j!93))))

(declare-fun lt!644658 () Unit!49540)

(assert (=> b!1475599 (= lt!644658 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!644659 j!93))))

(assert (=> b!1475599 (arrayContainsKey!0 a!2862 lt!644659 #b00000000000000000000000000000000)))

(declare-fun lt!644657 () Unit!49540)

(assert (=> b!1475599 (= lt!644657 lt!644658)))

(declare-fun res!1002310 () Bool)

(assert (=> b!1475599 (= res!1002310 (= (seekEntryOrOpen!0 (select (arr!47863 a!2862) j!93) a!2862 mask!2687) (Found!12126 j!93)))))

(assert (=> b!1475599 (=> (not res!1002310) (not e!827912))))

(declare-fun bm!67796 () Bool)

(assert (=> bm!67796 (= call!67799 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!93 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun d!155795 () Bool)

(declare-fun res!1002309 () Bool)

(declare-fun e!827911 () Bool)

(assert (=> d!155795 (=> res!1002309 e!827911)))

(assert (=> d!155795 (= res!1002309 (bvsge j!93 (size!48414 a!2862)))))

(assert (=> d!155795 (= (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687) e!827911)))

(declare-fun b!1475600 () Bool)

(assert (=> b!1475600 (= e!827913 call!67799)))

(declare-fun b!1475601 () Bool)

(assert (=> b!1475601 (= e!827911 e!827913)))

(declare-fun c!136165 () Bool)

(assert (=> b!1475601 (= c!136165 (validKeyInArray!0 (select (arr!47863 a!2862) j!93)))))

(assert (= (and d!155795 (not res!1002309)) b!1475601))

(assert (= (and b!1475601 c!136165) b!1475599))

(assert (= (and b!1475601 (not c!136165)) b!1475600))

(assert (= (and b!1475599 res!1002310) b!1475598))

(assert (= (or b!1475598 b!1475600) bm!67796))

(assert (=> b!1475599 m!1361491))

(declare-fun m!1361837 () Bool)

(assert (=> b!1475599 m!1361837))

(declare-fun m!1361839 () Bool)

(assert (=> b!1475599 m!1361839))

(assert (=> b!1475599 m!1361491))

(assert (=> b!1475599 m!1361493))

(declare-fun m!1361841 () Bool)

(assert (=> bm!67796 m!1361841))

(assert (=> b!1475601 m!1361491))

(assert (=> b!1475601 m!1361491))

(assert (=> b!1475601 m!1361511))

(assert (=> b!1475129 d!155795))

(declare-fun d!155799 () Bool)

(assert (=> d!155799 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-fun lt!644667 () Unit!49540)

(declare-fun choose!38 (array!99171 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49540)

(assert (=> d!155799 (= lt!644667 (choose!38 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(assert (=> d!155799 (validMask!0 mask!2687)))

(assert (=> d!155799 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93) lt!644667)))

(declare-fun bs!42570 () Bool)

(assert (= bs!42570 d!155799))

(assert (=> bs!42570 m!1361495))

(declare-fun m!1361849 () Bool)

(assert (=> bs!42570 m!1361849))

(assert (=> bs!42570 m!1361497))

(assert (=> b!1475129 d!155799))

(declare-fun d!155803 () Bool)

(assert (=> d!155803 (= (validKeyInArray!0 (select (arr!47863 a!2862) i!1006)) (and (not (= (select (arr!47863 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47863 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1475127 d!155803))

(declare-fun e!827925 () SeekEntryResult!12126)

(declare-fun b!1475618 () Bool)

(assert (=> b!1475618 (= e!827925 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!644480 lt!644482 mask!2687))))

(declare-fun b!1475619 () Bool)

(declare-fun e!827924 () SeekEntryResult!12126)

(declare-fun e!827923 () SeekEntryResult!12126)

(assert (=> b!1475619 (= e!827924 e!827923)))

(declare-fun c!136174 () Bool)

(declare-fun lt!644673 () (_ BitVec 64))

(assert (=> b!1475619 (= c!136174 (= lt!644673 lt!644480))))

(declare-fun b!1475620 () Bool)

(assert (=> b!1475620 (= e!827923 (Found!12126 index!646))))

(declare-fun d!155805 () Bool)

(declare-fun lt!644674 () SeekEntryResult!12126)

(assert (=> d!155805 (and (or (is-Undefined!12126 lt!644674) (not (is-Found!12126 lt!644674)) (and (bvsge (index!50896 lt!644674) #b00000000000000000000000000000000) (bvslt (index!50896 lt!644674) (size!48414 lt!644482)))) (or (is-Undefined!12126 lt!644674) (is-Found!12126 lt!644674) (not (is-MissingVacant!12126 lt!644674)) (not (= (index!50898 lt!644674) intermediateAfterIndex!19)) (and (bvsge (index!50898 lt!644674) #b00000000000000000000000000000000) (bvslt (index!50898 lt!644674) (size!48414 lt!644482)))) (or (is-Undefined!12126 lt!644674) (ite (is-Found!12126 lt!644674) (= (select (arr!47863 lt!644482) (index!50896 lt!644674)) lt!644480) (and (is-MissingVacant!12126 lt!644674) (= (index!50898 lt!644674) intermediateAfterIndex!19) (= (select (arr!47863 lt!644482) (index!50898 lt!644674)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!155805 (= lt!644674 e!827924)))

(declare-fun c!136173 () Bool)

(assert (=> d!155805 (= c!136173 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155805 (= lt!644673 (select (arr!47863 lt!644482) index!646))))

(assert (=> d!155805 (validMask!0 mask!2687)))

(assert (=> d!155805 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644480 lt!644482 mask!2687) lt!644674)))

(declare-fun b!1475621 () Bool)

(assert (=> b!1475621 (= e!827924 Undefined!12126)))

(declare-fun b!1475622 () Bool)

(declare-fun c!136175 () Bool)

(assert (=> b!1475622 (= c!136175 (= lt!644673 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475622 (= e!827923 e!827925)))

(declare-fun b!1475623 () Bool)

(assert (=> b!1475623 (= e!827925 (MissingVacant!12126 intermediateAfterIndex!19))))

(assert (= (and d!155805 c!136173) b!1475621))

(assert (= (and d!155805 (not c!136173)) b!1475619))

(assert (= (and b!1475619 c!136174) b!1475620))

(assert (= (and b!1475619 (not c!136174)) b!1475622))

(assert (= (and b!1475622 c!136175) b!1475623))

(assert (= (and b!1475622 (not c!136175)) b!1475618))

(assert (=> b!1475618 m!1361697))

(assert (=> b!1475618 m!1361697))

(declare-fun m!1361853 () Bool)

(assert (=> b!1475618 m!1361853))

(declare-fun m!1361855 () Bool)

(assert (=> d!155805 m!1361855))

(declare-fun m!1361857 () Bool)

(assert (=> d!155805 m!1361857))

(assert (=> d!155805 m!1361771))

(assert (=> d!155805 m!1361497))

(assert (=> b!1475136 d!155805))

(declare-fun b!1475624 () Bool)

(declare-fun e!827928 () SeekEntryResult!12126)

(declare-fun lt!644676 () SeekEntryResult!12126)

(assert (=> b!1475624 (= e!827928 (MissingZero!12126 (index!50897 lt!644676)))))

(declare-fun b!1475625 () Bool)

(declare-fun e!827926 () SeekEntryResult!12126)

(assert (=> b!1475625 (= e!827926 (Found!12126 (index!50897 lt!644676)))))

(declare-fun d!155807 () Bool)

(declare-fun lt!644675 () SeekEntryResult!12126)

(assert (=> d!155807 (and (or (is-Undefined!12126 lt!644675) (not (is-Found!12126 lt!644675)) (and (bvsge (index!50896 lt!644675) #b00000000000000000000000000000000) (bvslt (index!50896 lt!644675) (size!48414 lt!644482)))) (or (is-Undefined!12126 lt!644675) (is-Found!12126 lt!644675) (not (is-MissingZero!12126 lt!644675)) (and (bvsge (index!50895 lt!644675) #b00000000000000000000000000000000) (bvslt (index!50895 lt!644675) (size!48414 lt!644482)))) (or (is-Undefined!12126 lt!644675) (is-Found!12126 lt!644675) (is-MissingZero!12126 lt!644675) (not (is-MissingVacant!12126 lt!644675)) (and (bvsge (index!50898 lt!644675) #b00000000000000000000000000000000) (bvslt (index!50898 lt!644675) (size!48414 lt!644482)))) (or (is-Undefined!12126 lt!644675) (ite (is-Found!12126 lt!644675) (= (select (arr!47863 lt!644482) (index!50896 lt!644675)) lt!644480) (ite (is-MissingZero!12126 lt!644675) (= (select (arr!47863 lt!644482) (index!50895 lt!644675)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12126 lt!644675) (= (select (arr!47863 lt!644482) (index!50898 lt!644675)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!827927 () SeekEntryResult!12126)

(assert (=> d!155807 (= lt!644675 e!827927)))

(declare-fun c!136176 () Bool)

(assert (=> d!155807 (= c!136176 (and (is-Intermediate!12126 lt!644676) (undefined!12938 lt!644676)))))

(assert (=> d!155807 (= lt!644676 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644480 mask!2687) lt!644480 lt!644482 mask!2687))))

(assert (=> d!155807 (validMask!0 mask!2687)))

(assert (=> d!155807 (= (seekEntryOrOpen!0 lt!644480 lt!644482 mask!2687) lt!644675)))

(declare-fun b!1475626 () Bool)

(assert (=> b!1475626 (= e!827927 e!827926)))

(declare-fun lt!644677 () (_ BitVec 64))

(assert (=> b!1475626 (= lt!644677 (select (arr!47863 lt!644482) (index!50897 lt!644676)))))

(declare-fun c!136178 () Bool)

(assert (=> b!1475626 (= c!136178 (= lt!644677 lt!644480))))

(declare-fun b!1475627 () Bool)

(assert (=> b!1475627 (= e!827928 (seekKeyOrZeroReturnVacant!0 (x!132486 lt!644676) (index!50897 lt!644676) (index!50897 lt!644676) lt!644480 lt!644482 mask!2687))))

(declare-fun b!1475628 () Bool)

(assert (=> b!1475628 (= e!827927 Undefined!12126)))

(declare-fun b!1475629 () Bool)

(declare-fun c!136177 () Bool)

(assert (=> b!1475629 (= c!136177 (= lt!644677 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475629 (= e!827926 e!827928)))

(assert (= (and d!155807 c!136176) b!1475628))

(assert (= (and d!155807 (not c!136176)) b!1475626))

(assert (= (and b!1475626 c!136178) b!1475625))

(assert (= (and b!1475626 (not c!136178)) b!1475629))

(assert (= (and b!1475629 c!136177) b!1475624))

(assert (= (and b!1475629 (not c!136177)) b!1475627))

(declare-fun m!1361859 () Bool)

(assert (=> d!155807 m!1361859))

(assert (=> d!155807 m!1361503))

(assert (=> d!155807 m!1361505))

(assert (=> d!155807 m!1361497))

(declare-fun m!1361861 () Bool)

(assert (=> d!155807 m!1361861))

(declare-fun m!1361863 () Bool)

(assert (=> d!155807 m!1361863))

(assert (=> d!155807 m!1361503))

(declare-fun m!1361865 () Bool)

(assert (=> b!1475626 m!1361865))

(declare-fun m!1361867 () Bool)

(assert (=> b!1475627 m!1361867))

(assert (=> b!1475136 d!155807))

(declare-fun d!155809 () Bool)

(declare-fun e!827933 () Bool)

(assert (=> d!155809 e!827933))

(declare-fun c!136180 () Bool)

(declare-fun lt!644678 () SeekEntryResult!12126)

(assert (=> d!155809 (= c!136180 (and (is-Intermediate!12126 lt!644678) (undefined!12938 lt!644678)))))

(declare-fun e!827929 () SeekEntryResult!12126)

(assert (=> d!155809 (= lt!644678 e!827929)))

(declare-fun c!136181 () Bool)

(assert (=> d!155809 (= c!136181 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!644679 () (_ BitVec 64))

(assert (=> d!155809 (= lt!644679 (select (arr!47863 lt!644482) (toIndex!0 lt!644480 mask!2687)))))

(assert (=> d!155809 (validMask!0 mask!2687)))

(assert (=> d!155809 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644480 mask!2687) lt!644480 lt!644482 mask!2687) lt!644678)))

(declare-fun b!1475630 () Bool)

(assert (=> b!1475630 (= e!827929 (Intermediate!12126 true (toIndex!0 lt!644480 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475631 () Bool)

(assert (=> b!1475631 (and (bvsge (index!50897 lt!644678) #b00000000000000000000000000000000) (bvslt (index!50897 lt!644678) (size!48414 lt!644482)))))

(declare-fun e!827930 () Bool)

(assert (=> b!1475631 (= e!827930 (= (select (arr!47863 lt!644482) (index!50897 lt!644678)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475632 () Bool)

(declare-fun e!827931 () SeekEntryResult!12126)

(assert (=> b!1475632 (= e!827931 (Intermediate!12126 false (toIndex!0 lt!644480 mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475633 () Bool)

(assert (=> b!1475633 (= e!827933 (bvsge (x!132486 lt!644678) #b01111111111111111111111111111110))))

(declare-fun b!1475634 () Bool)

(assert (=> b!1475634 (= e!827929 e!827931)))

(declare-fun c!136179 () Bool)

(assert (=> b!1475634 (= c!136179 (or (= lt!644679 lt!644480) (= (bvadd lt!644679 lt!644679) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1475635 () Bool)

(declare-fun e!827932 () Bool)

(assert (=> b!1475635 (= e!827933 e!827932)))

(declare-fun res!1002313 () Bool)

(assert (=> b!1475635 (= res!1002313 (and (is-Intermediate!12126 lt!644678) (not (undefined!12938 lt!644678)) (bvslt (x!132486 lt!644678) #b01111111111111111111111111111110) (bvsge (x!132486 lt!644678) #b00000000000000000000000000000000) (bvsge (x!132486 lt!644678) #b00000000000000000000000000000000)))))

(assert (=> b!1475635 (=> (not res!1002313) (not e!827932))))

(declare-fun b!1475636 () Bool)

(assert (=> b!1475636 (and (bvsge (index!50897 lt!644678) #b00000000000000000000000000000000) (bvslt (index!50897 lt!644678) (size!48414 lt!644482)))))

(declare-fun res!1002315 () Bool)

(assert (=> b!1475636 (= res!1002315 (= (select (arr!47863 lt!644482) (index!50897 lt!644678)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475636 (=> res!1002315 e!827930)))

(declare-fun b!1475637 () Bool)

(assert (=> b!1475637 (= e!827931 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 lt!644480 mask!2687) #b00000000000000000000000000000000 mask!2687) lt!644480 lt!644482 mask!2687))))

(declare-fun b!1475638 () Bool)

(assert (=> b!1475638 (and (bvsge (index!50897 lt!644678) #b00000000000000000000000000000000) (bvslt (index!50897 lt!644678) (size!48414 lt!644482)))))

(declare-fun res!1002314 () Bool)

(assert (=> b!1475638 (= res!1002314 (= (select (arr!47863 lt!644482) (index!50897 lt!644678)) lt!644480))))

(assert (=> b!1475638 (=> res!1002314 e!827930)))

(assert (=> b!1475638 (= e!827932 e!827930)))

(assert (= (and d!155809 c!136181) b!1475630))

(assert (= (and d!155809 (not c!136181)) b!1475634))

(assert (= (and b!1475634 c!136179) b!1475632))

(assert (= (and b!1475634 (not c!136179)) b!1475637))

(assert (= (and d!155809 c!136180) b!1475633))

(assert (= (and d!155809 (not c!136180)) b!1475635))

(assert (= (and b!1475635 res!1002313) b!1475638))

(assert (= (and b!1475638 (not res!1002314)) b!1475636))

(assert (= (and b!1475636 (not res!1002315)) b!1475631))

(assert (=> d!155809 m!1361503))

(declare-fun m!1361869 () Bool)

(assert (=> d!155809 m!1361869))

(assert (=> d!155809 m!1361497))

(declare-fun m!1361871 () Bool)

(assert (=> b!1475636 m!1361871))

(assert (=> b!1475631 m!1361871))

(assert (=> b!1475638 m!1361871))

(assert (=> b!1475637 m!1361503))

(declare-fun m!1361873 () Bool)

(assert (=> b!1475637 m!1361873))

(assert (=> b!1475637 m!1361873))

(declare-fun m!1361875 () Bool)

(assert (=> b!1475637 m!1361875))

(assert (=> b!1475137 d!155809))

(declare-fun d!155811 () Bool)

(declare-fun lt!644681 () (_ BitVec 32))

(declare-fun lt!644680 () (_ BitVec 32))

(assert (=> d!155811 (= lt!644681 (bvmul (bvxor lt!644680 (bvlshr lt!644680 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155811 (= lt!644680 ((_ extract 31 0) (bvand (bvxor lt!644480 (bvlshr lt!644480 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155811 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1002264 (let ((h!35907 ((_ extract 31 0) (bvand (bvxor lt!644480 (bvlshr lt!644480 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132494 (bvmul (bvxor h!35907 (bvlshr h!35907 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132494 (bvlshr x!132494 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1002264 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1002264 #b00000000000000000000000000000000))))))

(assert (=> d!155811 (= (toIndex!0 lt!644480 mask!2687) (bvand (bvxor lt!644681 (bvlshr lt!644681 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1475137 d!155811))

(declare-fun e!827936 () SeekEntryResult!12126)

(declare-fun b!1475639 () Bool)

(assert (=> b!1475639 (= e!827936 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) index!646 (select (arr!47863 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1475640 () Bool)

(declare-fun e!827935 () SeekEntryResult!12126)

(declare-fun e!827934 () SeekEntryResult!12126)

(assert (=> b!1475640 (= e!827935 e!827934)))

(declare-fun lt!644682 () (_ BitVec 64))

(declare-fun c!136183 () Bool)

(assert (=> b!1475640 (= c!136183 (= lt!644682 (select (arr!47863 a!2862) j!93)))))

(declare-fun b!1475641 () Bool)

(assert (=> b!1475641 (= e!827934 (Found!12126 index!646))))

(declare-fun lt!644683 () SeekEntryResult!12126)

(declare-fun d!155813 () Bool)

(assert (=> d!155813 (and (or (is-Undefined!12126 lt!644683) (not (is-Found!12126 lt!644683)) (and (bvsge (index!50896 lt!644683) #b00000000000000000000000000000000) (bvslt (index!50896 lt!644683) (size!48414 a!2862)))) (or (is-Undefined!12126 lt!644683) (is-Found!12126 lt!644683) (not (is-MissingVacant!12126 lt!644683)) (not (= (index!50898 lt!644683) index!646)) (and (bvsge (index!50898 lt!644683) #b00000000000000000000000000000000) (bvslt (index!50898 lt!644683) (size!48414 a!2862)))) (or (is-Undefined!12126 lt!644683) (ite (is-Found!12126 lt!644683) (= (select (arr!47863 a!2862) (index!50896 lt!644683)) (select (arr!47863 a!2862) j!93)) (and (is-MissingVacant!12126 lt!644683) (= (index!50898 lt!644683) index!646) (= (select (arr!47863 a!2862) (index!50898 lt!644683)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!155813 (= lt!644683 e!827935)))

(declare-fun c!136182 () Bool)

(assert (=> d!155813 (= c!136182 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155813 (= lt!644682 (select (arr!47863 a!2862) index!646))))

(assert (=> d!155813 (validMask!0 mask!2687)))

(assert (=> d!155813 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47863 a!2862) j!93) a!2862 mask!2687) lt!644683)))

(declare-fun b!1475642 () Bool)

(assert (=> b!1475642 (= e!827935 Undefined!12126)))

(declare-fun b!1475643 () Bool)

(declare-fun c!136184 () Bool)

(assert (=> b!1475643 (= c!136184 (= lt!644682 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1475643 (= e!827934 e!827936)))

(declare-fun b!1475644 () Bool)

(assert (=> b!1475644 (= e!827936 (MissingVacant!12126 index!646))))

(assert (= (and d!155813 c!136182) b!1475642))

(assert (= (and d!155813 (not c!136182)) b!1475640))

(assert (= (and b!1475640 c!136183) b!1475641))

(assert (= (and b!1475640 (not c!136183)) b!1475643))

(assert (= (and b!1475643 c!136184) b!1475644))

(assert (= (and b!1475643 (not c!136184)) b!1475639))

(assert (=> b!1475639 m!1361697))

(assert (=> b!1475639 m!1361697))

(assert (=> b!1475639 m!1361491))

(declare-fun m!1361877 () Bool)

(assert (=> b!1475639 m!1361877))

(declare-fun m!1361879 () Bool)

(assert (=> d!155813 m!1361879))

(declare-fun m!1361881 () Bool)

(assert (=> d!155813 m!1361881))

(assert (=> d!155813 m!1361489))

(assert (=> d!155813 m!1361497))

(assert (=> b!1475134 d!155813))

(push 1)

(assert (not b!1475489))

(assert (not d!155813))

(assert (not d!155809))

(assert (not d!155807))

(assert (not b!1475487))

(assert (not b!1475618))

(assert (not b!1475599))

(assert (not b!1475497))

(assert (not d!155743))

(assert (not d!155799))

(assert (not bm!67796))

(assert (not b!1475539))

(assert (not b!1475397))

(assert (not d!155805))

(assert (not b!1475406))

(assert (not b!1475639))

(assert (not d!155771))

(assert (not b!1475536))

(assert (not b!1475601))

(assert (not b!1475589))

(assert (not bm!67792))

(assert (not b!1475537))

(assert (not bm!67795))

(assert (not b!1475627))

(assert (not d!155787))

(assert (not d!155721))

(assert (not b!1475637))

(check-sat)

(pop 1)

(push 1)

(check-sat)

