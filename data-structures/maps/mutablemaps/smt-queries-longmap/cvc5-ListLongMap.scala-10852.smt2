; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!127132 () Bool)

(assert start!127132)

(declare-fun b!1493354 () Bool)

(declare-fun res!1015955 () Bool)

(declare-fun e!836612 () Bool)

(assert (=> b!1493354 (=> (not res!1015955) (not e!836612))))

(declare-datatypes ((array!99696 0))(
  ( (array!99697 (arr!48112 (Array (_ BitVec 32) (_ BitVec 64))) (size!48663 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!99696)

(declare-fun i!1006 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1493354 (= res!1015955 (validKeyInArray!0 (select (arr!48112 a!2862) i!1006)))))

(declare-fun b!1493356 () Bool)

(declare-fun e!836613 () Bool)

(declare-fun e!836614 () Bool)

(assert (=> b!1493356 (= e!836613 e!836614)))

(declare-fun res!1015947 () Bool)

(assert (=> b!1493356 (=> (not res!1015947) (not e!836614))))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-datatypes ((SeekEntryResult!12375 0))(
  ( (MissingZero!12375 (index!51891 (_ BitVec 32))) (Found!12375 (index!51892 (_ BitVec 32))) (Intermediate!12375 (undefined!13187 Bool) (index!51893 (_ BitVec 32)) (x!133498 (_ BitVec 32))) (Undefined!12375) (MissingVacant!12375 (index!51894 (_ BitVec 32))) )
))
(declare-fun lt!650966 () SeekEntryResult!12375)

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(assert (=> b!1493356 (= res!1015947 (= lt!650966 (Intermediate!12375 false intermediateAfterIndex!19 intermediateAfterX!19)))))

(declare-fun lt!650965 () array!99696)

(declare-fun lt!650967 () (_ BitVec 64))

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99696 (_ BitVec 32)) SeekEntryResult!12375)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493356 (= lt!650966 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 lt!650967 mask!2687) lt!650967 lt!650965 mask!2687))))

(declare-fun j!93 () (_ BitVec 32))

(assert (=> b!1493356 (= lt!650967 (select (store (arr!48112 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) j!93))))

(declare-fun b!1493357 () Bool)

(declare-fun e!836609 () Bool)

(assert (=> b!1493357 (= e!836609 e!836613)))

(declare-fun res!1015959 () Bool)

(assert (=> b!1493357 (=> (not res!1015959) (not e!836613))))

(declare-fun lt!650963 () SeekEntryResult!12375)

(assert (=> b!1493357 (= res!1015959 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!48112 a!2862) j!93) mask!2687) (select (arr!48112 a!2862) j!93) a!2862 mask!2687) lt!650963))))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(assert (=> b!1493357 (= lt!650963 (Intermediate!12375 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1493358 () Bool)

(declare-fun res!1015948 () Bool)

(assert (=> b!1493358 (=> (not res!1015948) (not e!836612))))

(assert (=> b!1493358 (= res!1015948 (and (= (size!48663 a!2862) (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!48663 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!48663 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1493359 () Bool)

(declare-fun res!1015961 () Bool)

(assert (=> b!1493359 (=> (not res!1015961) (not e!836614))))

(declare-fun e!836610 () Bool)

(assert (=> b!1493359 (= res!1015961 e!836610)))

(declare-fun c!138236 () Bool)

(declare-fun x!665 () (_ BitVec 32))

(assert (=> b!1493359 (= c!138236 (bvsle x!665 intermediateAfterX!19))))

(declare-fun b!1493360 () Bool)

(declare-fun res!1015952 () Bool)

(assert (=> b!1493360 (=> (not res!1015952) (not e!836612))))

(assert (=> b!1493360 (= res!1015952 (validKeyInArray!0 (select (arr!48112 a!2862) j!93)))))

(declare-fun b!1493361 () Bool)

(declare-fun e!836615 () Bool)

(assert (=> b!1493361 (= e!836614 (not e!836615))))

(declare-fun res!1015954 () Bool)

(assert (=> b!1493361 (=> res!1015954 e!836615)))

(declare-fun index!646 () (_ BitVec 32))

(assert (=> b!1493361 (= res!1015954 (or (and (= (select (arr!48112 a!2862) index!646) (select (store (arr!48112 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) index!646)) (= (select (arr!48112 a!2862) index!646) (select (arr!48112 a!2862) j!93))) (= (select (arr!48112 a!2862) index!646) #b1000000000000000000000000000000000000000000000000000000000000000) (= x!665 intermediateAfterX!19)))))

(declare-fun e!836608 () Bool)

(assert (=> b!1493361 e!836608))

(declare-fun res!1015951 () Bool)

(assert (=> b!1493361 (=> (not res!1015951) (not e!836608))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!99696 (_ BitVec 32)) Bool)

(assert (=> b!1493361 (= res!1015951 (arrayForallSeekEntryOrOpenFound!0 j!93 a!2862 mask!2687))))

(declare-datatypes ((Unit!50038 0))(
  ( (Unit!50039) )
))
(declare-fun lt!650964 () Unit!50038)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!99696 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!50038)

(assert (=> b!1493361 (= lt!650964 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!2862 mask!2687 #b00000000000000000000000000000000 j!93))))

(declare-fun b!1493362 () Bool)

(declare-fun res!1015953 () Bool)

(assert (=> b!1493362 (=> (not res!1015953) (not e!836613))))

(assert (=> b!1493362 (= res!1015953 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!48112 a!2862) j!93) a!2862 mask!2687) lt!650963))))

(declare-fun b!1493363 () Bool)

(assert (=> b!1493363 (= e!836615 true)))

(declare-fun lt!650968 () (_ BitVec 32))

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1493363 (= lt!650968 (nextIndex!0 index!646 x!665 mask!2687))))

(declare-fun b!1493355 () Bool)

(declare-fun res!1015960 () Bool)

(assert (=> b!1493355 (=> (not res!1015960) (not e!836612))))

(assert (=> b!1493355 (= res!1015960 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!1015958 () Bool)

(assert (=> start!127132 (=> (not res!1015958) (not e!836612))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!127132 (= res!1015958 (validMask!0 mask!2687))))

(assert (=> start!127132 e!836612))

(assert (=> start!127132 true))

(declare-fun array_inv!37057 (array!99696) Bool)

(assert (=> start!127132 (array_inv!37057 a!2862)))

(declare-fun b!1493364 () Bool)

(assert (=> b!1493364 (= e!836612 e!836609)))

(declare-fun res!1015949 () Bool)

(assert (=> b!1493364 (=> (not res!1015949) (not e!836609))))

(assert (=> b!1493364 (= res!1015949 (= (select (store (arr!48112 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1493364 (= lt!650965 (array!99697 (store (arr!48112 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) (size!48663 a!2862)))))

(declare-fun b!1493365 () Bool)

(declare-fun res!1015962 () Bool)

(assert (=> b!1493365 (=> (not res!1015962) (not e!836612))))

(assert (=> b!1493365 (= res!1015962 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!48663 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!48663 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!48663 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19)))))

(declare-fun b!1493366 () Bool)

(declare-fun res!1015957 () Bool)

(assert (=> b!1493366 (=> (not res!1015957) (not e!836614))))

(assert (=> b!1493366 (= res!1015957 (and (bvsle x!665 intermediateBeforeX!19) (= intermediateAfterIndex!19 i!1006)))))

(declare-fun b!1493367 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!99696 (_ BitVec 32)) SeekEntryResult!12375)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!99696 (_ BitVec 32)) SeekEntryResult!12375)

(assert (=> b!1493367 (= e!836610 (= (seekKeyOrZeroReturnVacant!0 x!665 index!646 intermediateAfterIndex!19 lt!650967 lt!650965 mask!2687) (seekEntryOrOpen!0 lt!650967 lt!650965 mask!2687)))))

(declare-fun b!1493368 () Bool)

(declare-fun res!1015950 () Bool)

(assert (=> b!1493368 (=> (not res!1015950) (not e!836608))))

(assert (=> b!1493368 (= res!1015950 (= (seekEntryOrOpen!0 (select (arr!48112 a!2862) j!93) a!2862 mask!2687) (Found!12375 j!93)))))

(declare-fun b!1493369 () Bool)

(declare-fun res!1015956 () Bool)

(assert (=> b!1493369 (=> (not res!1015956) (not e!836612))))

(declare-datatypes ((List!34793 0))(
  ( (Nil!34790) (Cons!34789 (h!36178 (_ BitVec 64)) (t!49494 List!34793)) )
))
(declare-fun arrayNoDuplicates!0 (array!99696 (_ BitVec 32) List!34793) Bool)

(assert (=> b!1493369 (= res!1015956 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!34790))))

(declare-fun b!1493370 () Bool)

(assert (=> b!1493370 (= e!836608 (or (= (select (arr!48112 a!2862) intermediateBeforeIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!48112 a!2862) intermediateBeforeIndex!19) (select (arr!48112 a!2862) j!93))))))

(declare-fun b!1493371 () Bool)

(assert (=> b!1493371 (= e!836610 (= lt!650966 (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 lt!650967 lt!650965 mask!2687)))))

(assert (= (and start!127132 res!1015958) b!1493358))

(assert (= (and b!1493358 res!1015948) b!1493354))

(assert (= (and b!1493354 res!1015955) b!1493360))

(assert (= (and b!1493360 res!1015952) b!1493355))

(assert (= (and b!1493355 res!1015960) b!1493369))

(assert (= (and b!1493369 res!1015956) b!1493365))

(assert (= (and b!1493365 res!1015962) b!1493364))

(assert (= (and b!1493364 res!1015949) b!1493357))

(assert (= (and b!1493357 res!1015959) b!1493362))

(assert (= (and b!1493362 res!1015953) b!1493356))

(assert (= (and b!1493356 res!1015947) b!1493359))

(assert (= (and b!1493359 c!138236) b!1493371))

(assert (= (and b!1493359 (not c!138236)) b!1493367))

(assert (= (and b!1493359 res!1015961) b!1493366))

(assert (= (and b!1493366 res!1015957) b!1493361))

(assert (= (and b!1493361 res!1015951) b!1493368))

(assert (= (and b!1493368 res!1015950) b!1493370))

(assert (= (and b!1493361 (not res!1015954)) b!1493363))

(declare-fun m!1377195 () Bool)

(assert (=> b!1493360 m!1377195))

(assert (=> b!1493360 m!1377195))

(declare-fun m!1377197 () Bool)

(assert (=> b!1493360 m!1377197))

(declare-fun m!1377199 () Bool)

(assert (=> b!1493363 m!1377199))

(declare-fun m!1377201 () Bool)

(assert (=> b!1493364 m!1377201))

(declare-fun m!1377203 () Bool)

(assert (=> b!1493364 m!1377203))

(declare-fun m!1377205 () Bool)

(assert (=> b!1493355 m!1377205))

(declare-fun m!1377207 () Bool)

(assert (=> b!1493367 m!1377207))

(declare-fun m!1377209 () Bool)

(assert (=> b!1493367 m!1377209))

(assert (=> b!1493357 m!1377195))

(assert (=> b!1493357 m!1377195))

(declare-fun m!1377211 () Bool)

(assert (=> b!1493357 m!1377211))

(assert (=> b!1493357 m!1377211))

(assert (=> b!1493357 m!1377195))

(declare-fun m!1377213 () Bool)

(assert (=> b!1493357 m!1377213))

(assert (=> b!1493362 m!1377195))

(assert (=> b!1493362 m!1377195))

(declare-fun m!1377215 () Bool)

(assert (=> b!1493362 m!1377215))

(assert (=> b!1493368 m!1377195))

(assert (=> b!1493368 m!1377195))

(declare-fun m!1377217 () Bool)

(assert (=> b!1493368 m!1377217))

(declare-fun m!1377219 () Bool)

(assert (=> b!1493370 m!1377219))

(assert (=> b!1493370 m!1377195))

(declare-fun m!1377221 () Bool)

(assert (=> b!1493369 m!1377221))

(declare-fun m!1377223 () Bool)

(assert (=> b!1493354 m!1377223))

(assert (=> b!1493354 m!1377223))

(declare-fun m!1377225 () Bool)

(assert (=> b!1493354 m!1377225))

(declare-fun m!1377227 () Bool)

(assert (=> start!127132 m!1377227))

(declare-fun m!1377229 () Bool)

(assert (=> start!127132 m!1377229))

(declare-fun m!1377231 () Bool)

(assert (=> b!1493371 m!1377231))

(declare-fun m!1377233 () Bool)

(assert (=> b!1493356 m!1377233))

(assert (=> b!1493356 m!1377233))

(declare-fun m!1377235 () Bool)

(assert (=> b!1493356 m!1377235))

(assert (=> b!1493356 m!1377201))

(declare-fun m!1377237 () Bool)

(assert (=> b!1493356 m!1377237))

(declare-fun m!1377239 () Bool)

(assert (=> b!1493361 m!1377239))

(assert (=> b!1493361 m!1377201))

(declare-fun m!1377241 () Bool)

(assert (=> b!1493361 m!1377241))

(declare-fun m!1377243 () Bool)

(assert (=> b!1493361 m!1377243))

(declare-fun m!1377245 () Bool)

(assert (=> b!1493361 m!1377245))

(assert (=> b!1493361 m!1377195))

(push 1)

