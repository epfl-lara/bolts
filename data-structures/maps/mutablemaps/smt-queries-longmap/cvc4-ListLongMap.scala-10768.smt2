; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!125972 () Bool)

(assert start!125972)

(declare-fun b!1474678 () Bool)

(declare-fun res!1001958 () Bool)

(declare-fun e!827390 () Bool)

(assert (=> b!1474678 (=> (not res!1001958) (not e!827390))))

(declare-fun e!827392 () Bool)

(assert (=> b!1474678 (= res!1001958 e!827392)))

(declare-fun c!135881 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(assert (=> b!1474678 (= c!135881 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1474679 () Bool)

(declare-datatypes ((SeekEntryResult!12125 0))(
  ( (MissingZero!12125 (index!50891 (_ BitVec 32))) (Found!12125 (index!50892 (_ BitVec 32))) (Intermediate!12125 (undefined!12937 Bool) (index!50893 (_ BitVec 32)) (x!132468 (_ BitVec 32))) (Undefined!12125) (MissingVacant!12125 (index!50894 (_ BitVec 32))) )
))
(declare-fun lt!644299 () SeekEntryResult!12125)

(declare-fun e!827395 () Bool)

(declare-fun index!646 () (_ BitVec 32))

(declare-datatypes ((array!99166 0))(
  ( (array!99167 (arr!47862 (Array (_ BitVec 32) (_ BitVec 64))) (size!48413 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99166)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99166 (_ BitVec 32)) SeekEntryResult!12125)

(assert (=> b!1474679 (= e!827395 (= lt!644299 (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47862 a!2862) j!93) a!2862 mask!2687)))))

(declare-fun lt!644296 () SeekEntryResult!12125)

(declare-fun b!1474680 () Bool)

(declare-fun lt!644298 () array!99166)

(declare-fun lt!644294 () (_ BitVec 64))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99166 (_ BitVec 32)) SeekEntryResult!12125)

(assert (=> b!1474680 (= e!827392 (= lt!644296 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!644294 lt!644298 mask!2687)))))

(declare-fun b!1474681 () Bool)

(declare-fun e!827393 () Bool)

(declare-fun e!827394 () Bool)

(assert (=> b!1474681 (= e!827393 e!827394)))

(declare-fun res!1001955 () Bool)

(assert (=> b!1474681 (=> (not res!1001955) (not e!827394))))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(assert (=> b!1474681 (= res!1001955 (= (select (store (arr!47862 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474681 (= lt!644298 (array!99167 (store (arr!47862 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48413 a!2862)))))

(declare-fun b!1474682 () Bool)

(declare-fun res!1001951 () Bool)

(assert (=> b!1474682 (=> (not res!1001951) (not e!827393))))

(declare-datatypes ((List!34543 0))(
  ( (Nil!34540) (Cons!34539 (h!35898 (_ BitVec 64)) (t!49244 List!34543)) )
))
(declare-fun arrayNoDuplicates!0 (array!99166 (_ BitVec 32) List!34543) Bool)

(assert (=> b!1474682 (= res!1001951 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34540))))

(declare-fun b!1474683 () Bool)

(declare-fun e!827396 () Bool)

(assert (=> b!1474683 (= e!827396 e!827390)))

(declare-fun res!1001960 () Bool)

(assert (=> b!1474683 (=> (not res!1001960) (not e!827390))))

(assert (=> b!1474683 (= res!1001960 (= lt!644296 (Intermediate!12125 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474683 (= lt!644296 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644294 mask!2687) lt!644294 lt!644298 mask!2687))))

(assert (=> b!1474683 (= lt!644294 (select (store (arr!47862 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1474684 () Bool)

(declare-fun res!1001959 () Bool)

(assert (=> b!1474684 (=> (not res!1001959) (not e!827393))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99166 (_ BitVec 32)) Bool)

(assert (=> b!1474684 (= res!1001959 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun b!1474685 () Bool)

(declare-fun res!1001953 () Bool)

(assert (=> b!1474685 (=> (not res!1001953) (not e!827393))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1474685 (= res!1001953 (validKeyInArray!0 (select (arr!47862 a!2862) j!93)))))

(declare-fun b!1474686 () Bool)

(assert (=> b!1474686 (= e!827394 e!827396)))

(declare-fun res!1001957 () Bool)

(assert (=> b!1474686 (=> (not res!1001957) (not e!827396))))

(declare-fun lt!644297 () SeekEntryResult!12125)

(assert (=> b!1474686 (= res!1001957 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47862 a!2862) j!93) mask!2687) (select (arr!47862 a!2862) j!93) a!2862 mask!2687) lt!644297))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1474686 (= lt!644297 (Intermediate!12125 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1474687 () Bool)

(declare-fun res!1001954 () Bool)

(assert (=> b!1474687 (=> (not res!1001954) (not e!827396))))

(assert (=> b!1474687 (= res!1001954 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47862 a!2862) j!93) a!2862 mask!2687) lt!644297))))

(declare-fun b!1474688 () Bool)

(declare-fun res!1001956 () Bool)

(assert (=> b!1474688 (=> (not res!1001956) (not e!827393))))

(assert (=> b!1474688 (= res!1001956 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48413 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48413 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48413 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1474690 () Bool)

(declare-fun res!1001961 () Bool)

(assert (=> b!1474690 (=> (not res!1001961) (not e!827390))))

(assert (=> b!1474690 (= res!1001961 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1474691 () Bool)

(assert (=> b!1474691 (= e!827390 (not e!827395))))

(declare-fun res!1001952 () Bool)

(assert (=> b!1474691 (=> res!1001952 e!827395)))

(assert (=> b!1474691 (= res!1001952 (or (and (= (select (arr!47862 a!2862) index!646) (select (store (arr!47862 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!47862 a!2862) index!646) (select (arr!47862 a!2862) j!93))) (not (= (select (arr!47862 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1474691 (and (= lt!644299 (Found!12125 j!93)) (or (= (select (arr!47862 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!47862 a!2862) intermediateBeforeIndex!19) (select (arr!47862 a!2862) j!93))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99166 (_ BitVec 32)) SeekEntryResult!12125)

(assert (=> b!1474691 (= lt!644299 (seekEntryOrOpen!0 (select (arr!47862 a!2862) j!93) a!2862 mask!2687))))

(assert (=> b!1474691 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687)))

(declare-datatypes ((Unit!49538 0))(
  ( (Unit!49539) )
))
(declare-fun lt!644295 () Unit!49538)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99166 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!49538)

(assert (=> b!1474691 (= lt!644295 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1474692 () Bool)

(declare-fun res!1001964 () Bool)

(assert (=> b!1474692 (=> (not res!1001964) (not e!827393))))

(assert (=> b!1474692 (= res!1001964 (validKeyInArray!0 (select (arr!47862 a!2862) i!1006)))))

(declare-fun b!1474693 () Bool)

(declare-fun res!1001963 () Bool)

(assert (=> b!1474693 (=> (not res!1001963) (not e!827393))))

(assert (=> b!1474693 (= res!1001963 (and (= (size!48413 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48413 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48413 a!2862)) (not (= i!1006 j!93))))))

(declare-fun res!1001962 () Bool)

(assert (=> start!125972 (=> (not res!1001962) (not e!827393))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!125972 (= res!1001962 (validMask!0 mask!2687))))

(assert (=> start!125972 e!827393))

(assert (=> start!125972 true))

(declare-fun array_inv!36807 (array!99166) Bool)

(assert (=> start!125972 (array_inv!36807 a!2862)))

(declare-fun b!1474689 () Bool)

(assert (=> b!1474689 (= e!827392 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644294 lt!644298 mask!2687) (seekEntryOrOpen!0 lt!644294 lt!644298 mask!2687)))))

(assert (= (and start!125972 res!1001962) b!1474693))

(assert (= (and b!1474693 res!1001963) b!1474692))

(assert (= (and b!1474692 res!1001964) b!1474685))

(assert (= (and b!1474685 res!1001953) b!1474684))

(assert (= (and b!1474684 res!1001959) b!1474682))

(assert (= (and b!1474682 res!1001951) b!1474688))

(assert (= (and b!1474688 res!1001956) b!1474681))

(assert (= (and b!1474681 res!1001955) b!1474686))

(assert (= (and b!1474686 res!1001957) b!1474687))

(assert (= (and b!1474687 res!1001954) b!1474683))

(assert (= (and b!1474683 res!1001960) b!1474678))

(assert (= (and b!1474678 c!135881) b!1474680))

(assert (= (and b!1474678 (not c!135881)) b!1474689))

(assert (= (and b!1474678 res!1001958) b!1474690))

(assert (= (and b!1474690 res!1001961) b!1474691))

(assert (= (and b!1474691 (not res!1001952)) b!1474679))

(declare-fun m!1361171 () Bool)

(assert (=> b!1474685 m!1361171))

(assert (=> b!1474685 m!1361171))

(declare-fun m!1361173 () Bool)

(assert (=> b!1474685 m!1361173))

(declare-fun m!1361175 () Bool)

(assert (=> start!125972 m!1361175))

(declare-fun m!1361177 () Bool)

(assert (=> start!125972 m!1361177))

(declare-fun m!1361179 () Bool)

(assert (=> b!1474684 m!1361179))

(declare-fun m!1361181 () Bool)

(assert (=> b!1474689 m!1361181))

(declare-fun m!1361183 () Bool)

(assert (=> b!1474689 m!1361183))

(declare-fun m!1361185 () Bool)

(assert (=> b!1474680 m!1361185))

(declare-fun m!1361187 () Bool)

(assert (=> b!1474681 m!1361187))

(declare-fun m!1361189 () Bool)

(assert (=> b!1474681 m!1361189))

(declare-fun m!1361191 () Bool)

(assert (=> b!1474692 m!1361191))

(assert (=> b!1474692 m!1361191))

(declare-fun m!1361193 () Bool)

(assert (=> b!1474692 m!1361193))

(assert (=> b!1474686 m!1361171))

(assert (=> b!1474686 m!1361171))

(declare-fun m!1361195 () Bool)

(assert (=> b!1474686 m!1361195))

(assert (=> b!1474686 m!1361195))

(assert (=> b!1474686 m!1361171))

(declare-fun m!1361197 () Bool)

(assert (=> b!1474686 m!1361197))

(declare-fun m!1361199 () Bool)

(assert (=> b!1474682 m!1361199))

(assert (=> b!1474679 m!1361171))

(assert (=> b!1474679 m!1361171))

(declare-fun m!1361201 () Bool)

(assert (=> b!1474679 m!1361201))

(declare-fun m!1361203 () Bool)

(assert (=> b!1474683 m!1361203))

(assert (=> b!1474683 m!1361203))

(declare-fun m!1361205 () Bool)

(assert (=> b!1474683 m!1361205))

(assert (=> b!1474683 m!1361187))

(declare-fun m!1361207 () Bool)

(assert (=> b!1474683 m!1361207))

(assert (=> b!1474687 m!1361171))

(assert (=> b!1474687 m!1361171))

(declare-fun m!1361209 () Bool)

(assert (=> b!1474687 m!1361209))

(declare-fun m!1361211 () Bool)

(assert (=> b!1474691 m!1361211))

(assert (=> b!1474691 m!1361187))

(declare-fun m!1361213 () Bool)

(assert (=> b!1474691 m!1361213))

(declare-fun m!1361215 () Bool)

(assert (=> b!1474691 m!1361215))

(declare-fun m!1361217 () Bool)

(assert (=> b!1474691 m!1361217))

(assert (=> b!1474691 m!1361171))

(declare-fun m!1361219 () Bool)

(assert (=> b!1474691 m!1361219))

(declare-fun m!1361221 () Bool)

(assert (=> b!1474691 m!1361221))

(assert (=> b!1474691 m!1361171))

(push 1)

(assert (not b!1474683))

(assert (not b!1474689))

(assert (not b!1474682))

(assert (not b!1474684))

(assert (not b!1474691))

(assert (not b!1474679))

(assert (not b!1474680))

(assert (not start!125972))

(assert (not b!1474686))

(assert (not b!1474687))

(assert (not b!1474692))

(assert (not b!1474685))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!827485 () SeekEntryResult!12125)

(declare-fun b!1474848 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1474848 (= e!827485 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) index!646 (select (arr!47862 a!2862) j!93) a!2862 mask!2687))))

(declare-fun d!155617 () Bool)

(declare-fun lt!644362 () SeekEntryResult!12125)

(assert (=> d!155617 (and (or (is-Undefined!12125 lt!644362) (not (is-Found!12125 lt!644362)) (and (bvsge (index!50892 lt!644362) #b00000000000000000000000000000000) (bvslt (index!50892 lt!644362) (size!48413 a!2862)))) (or (is-Undefined!12125 lt!644362) (is-Found!12125 lt!644362) (not (is-MissingVacant!12125 lt!644362)) (not (= (index!50894 lt!644362) index!646)) (and (bvsge (index!50894 lt!644362) #b00000000000000000000000000000000) (bvslt (index!50894 lt!644362) (size!48413 a!2862)))) (or (is-Undefined!12125 lt!644362) (ite (is-Found!12125 lt!644362) (= (select (arr!47862 a!2862) (index!50892 lt!644362)) (select (arr!47862 a!2862) j!93)) (and (is-MissingVacant!12125 lt!644362) (= (index!50894 lt!644362) index!646) (= (select (arr!47862 a!2862) (index!50894 lt!644362)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!827484 () SeekEntryResult!12125)

(assert (=> d!155617 (= lt!644362 e!827484)))

(declare-fun c!135940 () Bool)

(assert (=> d!155617 (= c!135940 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!644363 () (_ BitVec 64))

(assert (=> d!155617 (= lt!644363 (select (arr!47862 a!2862) index!646))))

(assert (=> d!155617 (validMask!0 mask!2687)))

(assert (=> d!155617 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 index!646 (select (arr!47862 a!2862) j!93) a!2862 mask!2687) lt!644362)))

(declare-fun b!1474849 () Bool)

(declare-fun e!827483 () SeekEntryResult!12125)

(assert (=> b!1474849 (= e!827484 e!827483)))

(declare-fun c!135942 () Bool)

(assert (=> b!1474849 (= c!135942 (= lt!644363 (select (arr!47862 a!2862) j!93)))))

(declare-fun b!1474850 () Bool)

(assert (=> b!1474850 (= e!827484 Undefined!12125)))

(declare-fun b!1474851 () Bool)

(declare-fun c!135941 () Bool)

(assert (=> b!1474851 (= c!135941 (= lt!644363 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474851 (= e!827483 e!827485)))

(declare-fun b!1474852 () Bool)

(assert (=> b!1474852 (= e!827485 (MissingVacant!12125 index!646))))

(declare-fun b!1474853 () Bool)

(assert (=> b!1474853 (= e!827483 (Found!12125 index!646))))

(assert (= (and d!155617 c!135940) b!1474850))

(assert (= (and d!155617 (not c!135940)) b!1474849))

(assert (= (and b!1474849 c!135942) b!1474853))

(assert (= (and b!1474849 (not c!135942)) b!1474851))

(assert (= (and b!1474851 c!135941) b!1474852))

(assert (= (and b!1474851 (not c!135941)) b!1474848))

(declare-fun m!1361303 () Bool)

(assert (=> b!1474848 m!1361303))

(assert (=> b!1474848 m!1361303))

(assert (=> b!1474848 m!1361171))

(declare-fun m!1361305 () Bool)

(assert (=> b!1474848 m!1361305))

(declare-fun m!1361307 () Bool)

(assert (=> d!155617 m!1361307))

(declare-fun m!1361309 () Bool)

(assert (=> d!155617 m!1361309))

(assert (=> d!155617 m!1361217))

(assert (=> d!155617 m!1361175))

(assert (=> b!1474679 d!155617))

(declare-fun d!155633 () Bool)

(assert (=> d!155633 (= (validMask!0 mask!2687) (and (or (= mask!2687 #b00000000000000000000000000000111) (= mask!2687 #b00000000000000000000000000001111) (= mask!2687 #b00000000000000000000000000011111) (= mask!2687 #b00000000000000000000000000111111) (= mask!2687 #b00000000000000000000000001111111) (= mask!2687 #b00000000000000000000000011111111) (= mask!2687 #b00000000000000000000000111111111) (= mask!2687 #b00000000000000000000001111111111) (= mask!2687 #b00000000000000000000011111111111) (= mask!2687 #b00000000000000000000111111111111) (= mask!2687 #b00000000000000000001111111111111) (= mask!2687 #b00000000000000000011111111111111) (= mask!2687 #b00000000000000000111111111111111) (= mask!2687 #b00000000000000001111111111111111) (= mask!2687 #b00000000000000011111111111111111) (= mask!2687 #b00000000000000111111111111111111) (= mask!2687 #b00000000000001111111111111111111) (= mask!2687 #b00000000000011111111111111111111) (= mask!2687 #b00000000000111111111111111111111) (= mask!2687 #b00000000001111111111111111111111) (= mask!2687 #b00000000011111111111111111111111) (= mask!2687 #b00000000111111111111111111111111) (= mask!2687 #b00000001111111111111111111111111) (= mask!2687 #b00000011111111111111111111111111) (= mask!2687 #b00000111111111111111111111111111) (= mask!2687 #b00001111111111111111111111111111) (= mask!2687 #b00011111111111111111111111111111) (= mask!2687 #b00111111111111111111111111111111)) (bvsle mask!2687 #b00111111111111111111111111111111)))))

(assert (=> start!125972 d!155633))

(declare-fun d!155651 () Bool)

(assert (=> d!155651 (= (array_inv!36807 a!2862) (bvsge (size!48413 a!2862) #b00000000000000000000000000000000))))

(assert (=> start!125972 d!155651))

(declare-fun b!1474890 () Bool)

(declare-fun e!827511 () SeekEntryResult!12125)

(assert (=> b!1474890 (= e!827511 (seekKeyOrZeroReturnVacant!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) intermediateAfterIndex!19 lt!644294 lt!644298 mask!2687))))

(declare-fun d!155653 () Bool)

(declare-fun lt!644379 () SeekEntryResult!12125)

(assert (=> d!155653 (and (or (is-Undefined!12125 lt!644379) (not (is-Found!12125 lt!644379)) (and (bvsge (index!50892 lt!644379) #b00000000000000000000000000000000) (bvslt (index!50892 lt!644379) (size!48413 lt!644298)))) (or (is-Undefined!12125 lt!644379) (is-Found!12125 lt!644379) (not (is-MissingVacant!12125 lt!644379)) (not (= (index!50894 lt!644379) intermediateAfterIndex!19)) (and (bvsge (index!50894 lt!644379) #b00000000000000000000000000000000) (bvslt (index!50894 lt!644379) (size!48413 lt!644298)))) (or (is-Undefined!12125 lt!644379) (ite (is-Found!12125 lt!644379) (= (select (arr!47862 lt!644298) (index!50892 lt!644379)) lt!644294) (and (is-MissingVacant!12125 lt!644379) (= (index!50894 lt!644379) intermediateAfterIndex!19) (= (select (arr!47862 lt!644298) (index!50894 lt!644379)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!827510 () SeekEntryResult!12125)

(assert (=> d!155653 (= lt!644379 e!827510)))

(declare-fun c!135955 () Bool)

(assert (=> d!155653 (= c!135955 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!644380 () (_ BitVec 64))

(assert (=> d!155653 (= lt!644380 (select (arr!47862 lt!644298) index!646))))

(assert (=> d!155653 (validMask!0 mask!2687)))

(assert (=> d!155653 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!644294 lt!644298 mask!2687) lt!644379)))

(declare-fun b!1474891 () Bool)

(declare-fun e!827509 () SeekEntryResult!12125)

(assert (=> b!1474891 (= e!827510 e!827509)))

(declare-fun c!135957 () Bool)

(assert (=> b!1474891 (= c!135957 (= lt!644380 lt!644294))))

(declare-fun b!1474892 () Bool)

(assert (=> b!1474892 (= e!827510 Undefined!12125)))

(declare-fun b!1474893 () Bool)

(declare-fun c!135956 () Bool)

(assert (=> b!1474893 (= c!135956 (= lt!644380 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474893 (= e!827509 e!827511)))

(declare-fun b!1474894 () Bool)

(assert (=> b!1474894 (= e!827511 (MissingVacant!12125 intermediateAfterIndex!19))))

(declare-fun b!1474895 () Bool)

(assert (=> b!1474895 (= e!827509 (Found!12125 index!646))))

(assert (= (and d!155653 c!135955) b!1474892))

(assert (= (and d!155653 (not c!135955)) b!1474891))

(assert (= (and b!1474891 c!135957) b!1474895))

(assert (= (and b!1474891 (not c!135957)) b!1474893))

(assert (= (and b!1474893 c!135956) b!1474894))

(assert (= (and b!1474893 (not c!135956)) b!1474890))

(assert (=> b!1474890 m!1361303))

(assert (=> b!1474890 m!1361303))

(declare-fun m!1361339 () Bool)

(assert (=> b!1474890 m!1361339))

(declare-fun m!1361341 () Bool)

(assert (=> d!155653 m!1361341))

(declare-fun m!1361343 () Bool)

(assert (=> d!155653 m!1361343))

(declare-fun m!1361345 () Bool)

(assert (=> d!155653 m!1361345))

(assert (=> d!155653 m!1361175))

(assert (=> b!1474689 d!155653))

(declare-fun d!155655 () Bool)

(declare-fun lt!644393 () SeekEntryResult!12125)

(assert (=> d!155655 (and (or (is-Undefined!12125 lt!644393) (not (is-Found!12125 lt!644393)) (and (bvsge (index!50892 lt!644393) #b00000000000000000000000000000000) (bvslt (index!50892 lt!644393) (size!48413 lt!644298)))) (or (is-Undefined!12125 lt!644393) (is-Found!12125 lt!644393) (not (is-MissingZero!12125 lt!644393)) (and (bvsge (index!50891 lt!644393) #b00000000000000000000000000000000) (bvslt (index!50891 lt!644393) (size!48413 lt!644298)))) (or (is-Undefined!12125 lt!644393) (is-Found!12125 lt!644393) (is-MissingZero!12125 lt!644393) (not (is-MissingVacant!12125 lt!644393)) (and (bvsge (index!50894 lt!644393) #b00000000000000000000000000000000) (bvslt (index!50894 lt!644393) (size!48413 lt!644298)))) (or (is-Undefined!12125 lt!644393) (ite (is-Found!12125 lt!644393) (= (select (arr!47862 lt!644298) (index!50892 lt!644393)) lt!644294) (ite (is-MissingZero!12125 lt!644393) (= (select (arr!47862 lt!644298) (index!50891 lt!644393)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!12125 lt!644393) (= (select (arr!47862 lt!644298) (index!50894 lt!644393)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!827527 () SeekEntryResult!12125)

(assert (=> d!155655 (= lt!644393 e!827527)))

(declare-fun c!135975 () Bool)

(declare-fun lt!644395 () SeekEntryResult!12125)

(assert (=> d!155655 (= c!135975 (and (is-Intermediate!12125 lt!644395) (undefined!12937 lt!644395)))))

(assert (=> d!155655 (= lt!644395 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!644294 mask!2687) lt!644294 lt!644298 mask!2687))))

(assert (=> d!155655 (validMask!0 mask!2687)))

(assert (=> d!155655 (= (seekEntryOrOpen!0 lt!644294 lt!644298 mask!2687) lt!644393)))

(declare-fun b!1474926 () Bool)

(assert (=> b!1474926 (= e!827527 Undefined!12125)))

(declare-fun b!1474927 () Bool)

(declare-fun e!827528 () SeekEntryResult!12125)

(assert (=> b!1474927 (= e!827527 e!827528)))

(declare-fun lt!644394 () (_ BitVec 64))

(assert (=> b!1474927 (= lt!644394 (select (arr!47862 lt!644298) (index!50893 lt!644395)))))

(declare-fun c!135974 () Bool)

(assert (=> b!1474927 (= c!135974 (= lt!644394 lt!644294))))

(declare-fun b!1474928 () Bool)

(declare-fun e!827529 () SeekEntryResult!12125)

(assert (=> b!1474928 (= e!827529 (seekKeyOrZeroReturnVacant!0 (x!132468 lt!644395) (index!50893 lt!644395) (index!50893 lt!644395) lt!644294 lt!644298 mask!2687))))

(declare-fun b!1474929 () Bool)

(assert (=> b!1474929 (= e!827528 (Found!12125 (index!50893 lt!644395)))))

(declare-fun b!1474930 () Bool)

(assert (=> b!1474930 (= e!827529 (MissingZero!12125 (index!50893 lt!644395)))))

(declare-fun b!1474931 () Bool)

(declare-fun c!135973 () Bool)

(assert (=> b!1474931 (= c!135973 (= lt!644394 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1474931 (= e!827528 e!827529)))

(assert (= (and d!155655 c!135975) b!1474926))

(assert (= (and d!155655 (not c!135975)) b!1474927))

(assert (= (and b!1474927 c!135974) b!1474929))

(assert (= (and b!1474927 (not c!135974)) b!1474931))

(assert (= (and b!1474931 c!135973) b!1474930))

(assert (= (and b!1474931 (not c!135973)) b!1474928))

(declare-fun m!1361353 () Bool)

(assert (=> d!155655 m!1361353))

(assert (=> d!155655 m!1361203))

(assert (=> d!155655 m!1361175))

(assert (=> d!155655 m!1361203))

(assert (=> d!155655 m!1361205))

(declare-fun m!1361355 () Bool)

(assert (=> d!155655 m!1361355))

(declare-fun m!1361357 () Bool)

(assert (=> d!155655 m!1361357))

(declare-fun m!1361359 () Bool)

(assert (=> b!1474927 m!1361359))

(declare-fun m!1361361 () Bool)

(assert (=> b!1474928 m!1361361))

(assert (=> b!1474689 d!155655))

(declare-fun b!1474989 () Bool)

(declare-fun lt!644420 () SeekEntryResult!12125)

(assert (=> b!1474989 (and (bvsge (index!50893 lt!644420) #b00000000000000000000000000000000) (bvslt (index!50893 lt!644420) (size!48413 a!2862)))))

(declare-fun res!1002034 () Bool)

(assert (=> b!1474989 (= res!1002034 (= (select (arr!47862 a!2862) (index!50893 lt!644420)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!827563 () Bool)

(assert (=> b!1474989 (=> res!1002034 e!827563)))

(declare-fun b!1474990 () Bool)

(declare-fun e!827565 () SeekEntryResult!12125)

(declare-fun e!827566 () SeekEntryResult!12125)

(assert (=> b!1474990 (= e!827565 e!827566)))

(declare-fun c!135997 () Bool)

(declare-fun lt!644421 () (_ BitVec 64))

(assert (=> b!1474990 (= c!135997 (or (= lt!644421 (select (arr!47862 a!2862) j!93)) (= (bvadd lt!644421 lt!644421) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1474991 () Bool)

(declare-fun e!827567 () Bool)

(declare-fun e!827564 () Bool)

(assert (=> b!1474991 (= e!827567 e!827564)))

(declare-fun res!1002033 () Bool)

(assert (=> b!1474991 (= res!1002033 (and (is-Intermediate!12125 lt!644420) (not (undefined!12937 lt!644420)) (bvslt (x!132468 lt!644420) #b01111111111111111111111111111110) (bvsge (x!132468 lt!644420) #b00000000000000000000000000000000) (bvsge (x!132468 lt!644420) x!665)))))

(assert (=> b!1474991 (=> (not res!1002033) (not e!827564))))

(declare-fun b!1474992 () Bool)

(assert (=> b!1474992 (= e!827566 (Intermediate!12125 false index!646 x!665))))

(declare-fun b!1474993 () Bool)

(assert (=> b!1474993 (= e!827567 (bvsge (x!132468 lt!644420) #b01111111111111111111111111111110))))

(declare-fun d!155659 () Bool)

(assert (=> d!155659 e!827567))

(declare-fun c!135999 () Bool)

(assert (=> d!155659 (= c!135999 (and (is-Intermediate!12125 lt!644420) (undefined!12937 lt!644420)))))

(assert (=> d!155659 (= lt!644420 e!827565)))

(declare-fun c!135998 () Bool)

(assert (=> d!155659 (= c!135998 (bvsge x!665 #b01111111111111111111111111111110))))

(assert (=> d!155659 (= lt!644421 (select (arr!47862 a!2862) index!646))))

(assert (=> d!155659 (validMask!0 mask!2687)))

(assert (=> d!155659 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47862 a!2862) j!93) a!2862 mask!2687) lt!644420)))

(declare-fun b!1474994 () Bool)

(assert (=> b!1474994 (and (bvsge (index!50893 lt!644420) #b00000000000000000000000000000000) (bvslt (index!50893 lt!644420) (size!48413 a!2862)))))

(declare-fun res!1002032 () Bool)

(assert (=> b!1474994 (= res!1002032 (= (select (arr!47862 a!2862) (index!50893 lt!644420)) (select (arr!47862 a!2862) j!93)))))

(assert (=> b!1474994 (=> res!1002032 e!827563)))

(assert (=> b!1474994 (= e!827564 e!827563)))

(declare-fun b!1474995 () Bool)

(assert (=> b!1474995 (and (bvsge (index!50893 lt!644420) #b00000000000000000000000000000000) (bvslt (index!50893 lt!644420) (size!48413 a!2862)))))

(assert (=> b!1474995 (= e!827563 (= (select (arr!47862 a!2862) (index!50893 lt!644420)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1474996 () Bool)

(assert (=> b!1474996 (= e!827566 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47862 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1474997 () Bool)

(assert (=> b!1474997 (= e!827565 (Intermediate!12125 true index!646 x!665))))

(assert (= (and d!155659 c!135998) b!1474997))

(assert (= (and d!155659 (not c!135998)) b!1474990))

(assert (= (and b!1474990 c!135997) b!1474992))

(assert (= (and b!1474990 (not c!135997)) b!1474996))

(assert (= (and d!155659 c!135999) b!1474993))

(assert (= (and d!155659 (not c!135999)) b!1474991))

(assert (= (and b!1474991 res!1002033) b!1474994))

(assert (= (and b!1474994 (not res!1002032)) b!1474989))

(assert (= (and b!1474989 (not res!1002034)) b!1474995))

(declare-fun m!1361389 () Bool)

(assert (=> b!1474994 m!1361389))

(assert (=> b!1474996 m!1361303))

(assert (=> b!1474996 m!1361303))

(assert (=> b!1474996 m!1361171))

(declare-fun m!1361391 () Bool)

(assert (=> b!1474996 m!1361391))

(assert (=> b!1474995 m!1361389))

(assert (=> d!155659 m!1361217))

(assert (=> d!155659 m!1361175))

(assert (=> b!1474989 m!1361389))

(assert (=> b!1474687 d!155659))

(declare-fun b!1474998 () Bool)

(declare-fun lt!644422 () SeekEntryResult!12125)

(assert (=> b!1474998 (and (bvsge (index!50893 lt!644422) #b00000000000000000000000000000000) (bvslt (index!50893 lt!644422) (size!48413 a!2862)))))

(declare-fun res!1002037 () Bool)

(assert (=> b!1474998 (= res!1002037 (= (select (arr!47862 a!2862) (index!50893 lt!644422)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!827568 () Bool)

(assert (=> b!1474998 (=> res!1002037 e!827568)))

(declare-fun b!1474999 () Bool)

(declare-fun e!827570 () SeekEntryResult!12125)

(declare-fun e!827571 () SeekEntryResult!12125)

(assert (=> b!1474999 (= e!827570 e!827571)))

(declare-fun lt!644423 () (_ BitVec 64))

(declare-fun c!136000 () Bool)

(assert (=> b!1474999 (= c!136000 (or (= lt!644423 (select (arr!47862 a!2862) j!93)) (= (bvadd lt!644423 lt!644423) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1475000 () Bool)

(declare-fun e!827572 () Bool)

(declare-fun e!827569 () Bool)

(assert (=> b!1475000 (= e!827572 e!827569)))

(declare-fun res!1002036 () Bool)

(assert (=> b!1475000 (= res!1002036 (and (is-Intermediate!12125 lt!644422) (not (undefined!12937 lt!644422)) (bvslt (x!132468 lt!644422) #b01111111111111111111111111111110) (bvsge (x!132468 lt!644422) #b00000000000000000000000000000000) (bvsge (x!132468 lt!644422) #b00000000000000000000000000000000)))))

(assert (=> b!1475000 (=> (not res!1002036) (not e!827569))))

(declare-fun b!1475001 () Bool)

(assert (=> b!1475001 (= e!827571 (Intermediate!12125 false (toIndex!0 (select (arr!47862 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1475002 () Bool)

(assert (=> b!1475002 (= e!827572 (bvsge (x!132468 lt!644422) #b01111111111111111111111111111110))))

(declare-fun d!155667 () Bool)

(assert (=> d!155667 e!827572))

(declare-fun c!136002 () Bool)

(assert (=> d!155667 (= c!136002 (and (is-Intermediate!12125 lt!644422) (undefined!12937 lt!644422)))))

(assert (=> d!155667 (= lt!644422 e!827570)))

(declare-fun c!136001 () Bool)

(assert (=> d!155667 (= c!136001 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!155667 (= lt!644423 (select (arr!47862 a!2862) (toIndex!0 (select (arr!47862 a!2862) j!93) mask!2687)))))

(assert (=> d!155667 (validMask!0 mask!2687)))

(assert (=> d!155667 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47862 a!2862) j!93) mask!2687) (select (arr!47862 a!2862) j!93) a!2862 mask!2687) lt!644422)))

(declare-fun b!1475003 () Bool)

(assert (=> b!1475003 (and (bvsge (index!50893 lt!644422) #b00000000000000000000000000000000) (bvslt (index!50893 lt!644422) (size!48413 a!2862)))))

(declare-fun res!1002035 () Bool)

(assert (=> b!1475003 (= res!1002035 (= (select (arr!47862 a!2862) (index!50893 lt!644422)) (select (arr!47862 a!2862) j!93)))))

(assert (=> b!1475003 (=> res!1002035 e!827568)))

(assert (=> b!1475003 (= e!827569 e!827568)))

(declare-fun b!1475004 () Bool)

(assert (=> b!1475004 (and (bvsge (index!50893 lt!644422) #b00000000000000000000000000000000) (bvslt (index!50893 lt!644422) (size!48413 a!2862)))))

(assert (=> b!1475004 (= e!827568 (= (select (arr!47862 a!2862) (index!50893 lt!644422)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1475005 () Bool)

(assert (=> b!1475005 (= e!827571 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47862 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47862 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1475006 () Bool)

(assert (=> b!1475006 (= e!827570 (Intermediate!12125 true (toIndex!0 (select (arr!47862 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(assert (= (and d!155667 c!136001) b!1475006))

(assert (= (and d!155667 (not c!136001)) b!1474999))

(assert (= (and b!1474999 c!136000) b!1475001))

(assert (= (and b!1474999 (not c!136000)) b!1475005))

(assert (= (and d!155667 c!136002) b!1475002))

(assert (= (and d!155667 (not c!136002)) b!1475000))

(assert (= (and b!1475000 res!1002036) b!1475003))

(assert (= (and b!1475003 (not res!1002035)) b!1474998))

(assert (= (and b!1474998 (not res!1002037)) b!1475004))

(declare-fun m!1361393 () Bool)

(assert (=> b!1475003 m!1361393))

(assert (=> b!1475005 m!1361195))

(declare-fun m!1361395 () Bool)

(assert (=> b!1475005 m!1361395))

(assert (=> b!1475005 m!1361395))

(assert (=> b!1475005 m!1361171))

(declare-fun m!1361397 () Bool)

(assert (=> b!1475005 m!1361397))

(assert (=> b!1475004 m!1361393))

(assert (=> d!155667 m!1361195))

(declare-fun m!1361399 () Bool)

(assert (=> d!155667 m!1361399))

(assert (=> d!155667 m!1361175))

(assert (=> b!1474998 m!1361393))

(assert (=> b!1474686 d!155667))

(declare-fun d!155669 () Bool)

(declare-fun lt!644429 () (_ BitVec 32))

(declare-fun lt!644428 () (_ BitVec 32))

(assert (=> d!155669 (= lt!644429 (bvmul (bvxor lt!644428 (bvlshr lt!644428 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!155669 (= lt!644428 ((_ extract 31 0) (bvand (bvxor (select (arr!47862 a!2862) j!93) (bvlshr (select (arr!47862 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!155669 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!1002040 (let ((h!35901 ((_ extract 31 0) (bvand (bvxor (select (arr!47862 a!2862) j!93) (bvlshr (select (arr!47862 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!132477 (bvmul (bvxor h!35901 (bvlshr h!35901 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!132477 (bvlshr x!132477 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!1002040 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!1002040 #b00000000000000000000000000000000))))))

(assert (=> d!155669 (= (toIndex!0 (select (arr!47862 a!2862) j!93) mask!2687) (bvand (bvxor lt!644429 (bvlshr lt!644429 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1474686 d!155669))

(declare-fun d!155673 () Bool)

(assert (=> d!155673 (= (validKeyInArray!0 (select (arr!47862 a!2862) j!93)) (and (not (= (select (arr!47862 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47862 a!2862) j!93) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1474685 d!155673))

(declare-fun b!1475030 () Bool)

(declare-fun e!827592 () Bool)

(declare-fun call!67774 () Bool)

(assert (=> b!1475030 (= e!827592 call!67774)))

(declare-fun d!155675 () Bool)

(declare-fun res!1002053 () Bool)

(declare-fun e!827591 () Bool)

