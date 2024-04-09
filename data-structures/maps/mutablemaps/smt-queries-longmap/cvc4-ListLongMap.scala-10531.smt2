; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!124202 () Bool)

(assert start!124202)

(declare-fun b!1437254 () Bool)

(declare-fun res!970246 () Bool)

(declare-fun e!810897 () Bool)

(assert (=> b!1437254 (=> (not res!970246) (not e!810897))))

(declare-fun x!665 () (_ BitVec 32))

(declare-fun intermediateBeforeIndex!19 () (_ BitVec 32))

(declare-fun intermediateBeforeX!19 () (_ BitVec 32))

(declare-fun intermediateAfterX!19 () (_ BitVec 32))

(declare-fun index!646 () (_ BitVec 32))

(declare-fun intermediateAfterIndex!19 () (_ BitVec 32))

(declare-fun i!1006 () (_ BitVec 32))

(declare-datatypes ((array!97723 0))(
  ( (array!97724 (arr!47151 (Array (_ BitVec 32) (_ BitVec 64))) (size!47702 (_ BitVec 32))) )
))
(declare-fun a!2862 () array!97723)

(assert (=> b!1437254 (= res!970246 (and (bvsge x!665 #b00000000000000000000000000000000) (bvsle x!665 #b01111111111111111111111111111110) (bvsge intermediateBeforeX!19 #b00000000000000000000000000000000) (bvsle intermediateBeforeX!19 #b01111111111111111111111111111110) (bvsge intermediateAfterX!19 #b00000000000000000000000000000000) (bvsle intermediateAfterX!19 #b01111111111111111111111111111110) (bvsge index!646 #b00000000000000000000000000000000) (bvslt index!646 (size!47702 a!2862)) (bvsge intermediateBeforeIndex!19 #b00000000000000000000000000000000) (bvslt intermediateBeforeIndex!19 (size!47702 a!2862)) (bvsge intermediateAfterIndex!19 #b00000000000000000000000000000000) (bvslt intermediateAfterIndex!19 (size!47702 a!2862)) (bvslt intermediateAfterX!19 intermediateBeforeX!19) (= (select (store (arr!47151 a!2862) i!1006 #b1000000000000000000000000000000000000000000000000000000000000000) intermediateAfterIndex!19) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437255 () Bool)

(declare-fun res!970251 () Bool)

(declare-fun e!810899 () Bool)

(assert (=> b!1437255 (=> (not res!970251) (not e!810899))))

(declare-datatypes ((SeekEntryResult!11426 0))(
  ( (MissingZero!11426 (index!48095 (_ BitVec 32))) (Found!11426 (index!48096 (_ BitVec 32))) (Intermediate!11426 (undefined!12238 Bool) (index!48097 (_ BitVec 32)) (x!129822 (_ BitVec 32))) (Undefined!11426) (MissingVacant!11426 (index!48098 (_ BitVec 32))) )
))
(declare-fun lt!632203 () SeekEntryResult!11426)

(declare-fun mask!2687 () (_ BitVec 32))

(declare-fun j!93 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!97723 (_ BitVec 32)) SeekEntryResult!11426)

(assert (=> b!1437255 (= res!970251 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47151 a!2862) j!93) a!2862 mask!2687) lt!632203))))

(declare-fun b!1437256 () Bool)

(declare-fun res!970249 () Bool)

(assert (=> b!1437256 (=> (not res!970249) (not e!810897))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!97723 (_ BitVec 32)) Bool)

(assert (=> b!1437256 (= res!970249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687))))

(declare-fun res!970254 () Bool)

(assert (=> start!124202 (=> (not res!970254) (not e!810897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!124202 (= res!970254 (validMask!0 mask!2687))))

(assert (=> start!124202 e!810897))

(assert (=> start!124202 true))

(declare-fun array_inv!36096 (array!97723) Bool)

(assert (=> start!124202 (array_inv!36096 a!2862)))

(declare-fun b!1437257 () Bool)

(assert (=> b!1437257 (= e!810897 e!810899)))

(declare-fun res!970247 () Bool)

(assert (=> b!1437257 (=> (not res!970247) (not e!810899))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437257 (= res!970247 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47151 a!2862) j!93) mask!2687) (select (arr!47151 a!2862) j!93) a!2862 mask!2687) lt!632203))))

(assert (=> b!1437257 (= lt!632203 (Intermediate!11426 false intermediateBeforeIndex!19 intermediateBeforeX!19))))

(declare-fun b!1437258 () Bool)

(declare-fun res!970248 () Bool)

(assert (=> b!1437258 (=> (not res!970248) (not e!810897))))

(assert (=> b!1437258 (= res!970248 (and (= (size!47702 a!2862) (bvadd #b00000000000000000000000000000001 mask!2687)) (bvsge i!1006 #b00000000000000000000000000000000) (bvslt i!1006 (size!47702 a!2862)) (bvsge j!93 #b00000000000000000000000000000000) (bvslt j!93 (size!47702 a!2862)) (not (= i!1006 j!93))))))

(declare-fun b!1437259 () Bool)

(declare-fun res!970250 () Bool)

(assert (=> b!1437259 (=> (not res!970250) (not e!810897))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1437259 (= res!970250 (validKeyInArray!0 (select (arr!47151 a!2862) j!93)))))

(declare-fun b!1437260 () Bool)

(declare-fun res!970253 () Bool)

(assert (=> b!1437260 (=> (not res!970253) (not e!810897))))

(declare-datatypes ((List!33832 0))(
  ( (Nil!33829) (Cons!33828 (h!35166 (_ BitVec 64)) (t!48533 List!33832)) )
))
(declare-fun arrayNoDuplicates!0 (array!97723 (_ BitVec 32) List!33832) Bool)

(assert (=> b!1437260 (= res!970253 (arrayNoDuplicates!0 a!2862 #b00000000000000000000000000000000 Nil!33829))))

(declare-fun b!1437261 () Bool)

(assert (=> b!1437261 (= e!810899 (and (bvsge mask!2687 #b00000000000000000000000000000000) (bvsgt mask!2687 #b00111111111111111111111111111111)))))

(declare-fun b!1437262 () Bool)

(declare-fun res!970252 () Bool)

(assert (=> b!1437262 (=> (not res!970252) (not e!810897))))

(assert (=> b!1437262 (= res!970252 (validKeyInArray!0 (select (arr!47151 a!2862) i!1006)))))

(assert (= (and start!124202 res!970254) b!1437258))

(assert (= (and b!1437258 res!970248) b!1437262))

(assert (= (and b!1437262 res!970252) b!1437259))

(assert (= (and b!1437259 res!970250) b!1437256))

(assert (= (and b!1437256 res!970249) b!1437260))

(assert (= (and b!1437260 res!970253) b!1437254))

(assert (= (and b!1437254 res!970246) b!1437257))

(assert (= (and b!1437257 res!970247) b!1437255))

(assert (= (and b!1437255 res!970251) b!1437261))

(declare-fun m!1326631 () Bool)

(assert (=> start!124202 m!1326631))

(declare-fun m!1326633 () Bool)

(assert (=> start!124202 m!1326633))

(declare-fun m!1326635 () Bool)

(assert (=> b!1437255 m!1326635))

(assert (=> b!1437255 m!1326635))

(declare-fun m!1326637 () Bool)

(assert (=> b!1437255 m!1326637))

(declare-fun m!1326639 () Bool)

(assert (=> b!1437254 m!1326639))

(declare-fun m!1326641 () Bool)

(assert (=> b!1437254 m!1326641))

(declare-fun m!1326643 () Bool)

(assert (=> b!1437262 m!1326643))

(assert (=> b!1437262 m!1326643))

(declare-fun m!1326645 () Bool)

(assert (=> b!1437262 m!1326645))

(declare-fun m!1326647 () Bool)

(assert (=> b!1437260 m!1326647))

(declare-fun m!1326649 () Bool)

(assert (=> b!1437256 m!1326649))

(assert (=> b!1437257 m!1326635))

(assert (=> b!1437257 m!1326635))

(declare-fun m!1326651 () Bool)

(assert (=> b!1437257 m!1326651))

(assert (=> b!1437257 m!1326651))

(assert (=> b!1437257 m!1326635))

(declare-fun m!1326653 () Bool)

(assert (=> b!1437257 m!1326653))

(assert (=> b!1437259 m!1326635))

(assert (=> b!1437259 m!1326635))

(declare-fun m!1326655 () Bool)

(assert (=> b!1437259 m!1326655))

(push 1)

(assert (not b!1437257))

(assert (not b!1437256))

(assert (not b!1437260))

(assert (not b!1437262))

(assert (not b!1437259))

(assert (not b!1437255))

(assert (not start!124202))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1437317 () Bool)

(declare-fun e!810933 () Bool)

(declare-fun e!810930 () Bool)

(assert (=> b!1437317 (= e!810933 e!810930)))

(declare-fun res!970274 () Bool)

(declare-fun lt!632222 () SeekEntryResult!11426)

(assert (=> b!1437317 (= res!970274 (and (is-Intermediate!11426 lt!632222) (not (undefined!12238 lt!632222)) (bvslt (x!129822 lt!632222) #b01111111111111111111111111111110) (bvsge (x!129822 lt!632222) #b00000000000000000000000000000000) (bvsge (x!129822 lt!632222) #b00000000000000000000000000000000)))))

(assert (=> b!1437317 (=> (not res!970274) (not e!810930))))

(declare-fun d!154575 () Bool)

(assert (=> d!154575 e!810933))

(declare-fun c!133031 () Bool)

(assert (=> d!154575 (= c!133031 (and (is-Intermediate!11426 lt!632222) (undefined!12238 lt!632222)))))

(declare-fun e!810931 () SeekEntryResult!11426)

(assert (=> d!154575 (= lt!632222 e!810931)))

(declare-fun c!133030 () Bool)

(assert (=> d!154575 (= c!133030 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!632223 () (_ BitVec 64))

(assert (=> d!154575 (= lt!632223 (select (arr!47151 a!2862) (toIndex!0 (select (arr!47151 a!2862) j!93) mask!2687)))))

(assert (=> d!154575 (validMask!0 mask!2687)))

(assert (=> d!154575 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!47151 a!2862) j!93) mask!2687) (select (arr!47151 a!2862) j!93) a!2862 mask!2687) lt!632222)))

(declare-fun b!1437318 () Bool)

(assert (=> b!1437318 (= e!810931 (Intermediate!11426 true (toIndex!0 (select (arr!47151 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1437319 () Bool)

(assert (=> b!1437319 (and (bvsge (index!48097 lt!632222) #b00000000000000000000000000000000) (bvslt (index!48097 lt!632222) (size!47702 a!2862)))))

(declare-fun res!970275 () Bool)

(assert (=> b!1437319 (= res!970275 (= (select (arr!47151 a!2862) (index!48097 lt!632222)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!810932 () Bool)

(assert (=> b!1437319 (=> res!970275 e!810932)))

(declare-fun b!1437320 () Bool)

(assert (=> b!1437320 (and (bvsge (index!48097 lt!632222) #b00000000000000000000000000000000) (bvslt (index!48097 lt!632222) (size!47702 a!2862)))))

(assert (=> b!1437320 (= e!810932 (= (select (arr!47151 a!2862) (index!48097 lt!632222)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!810934 () SeekEntryResult!11426)

(declare-fun b!1437321 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1437321 (= e!810934 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 (select (arr!47151 a!2862) j!93) mask!2687) #b00000000000000000000000000000000 mask!2687) (select (arr!47151 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1437322 () Bool)

(assert (=> b!1437322 (= e!810934 (Intermediate!11426 false (toIndex!0 (select (arr!47151 a!2862) j!93) mask!2687) #b00000000000000000000000000000000))))

(declare-fun b!1437323 () Bool)

(assert (=> b!1437323 (and (bvsge (index!48097 lt!632222) #b00000000000000000000000000000000) (bvslt (index!48097 lt!632222) (size!47702 a!2862)))))

(declare-fun res!970276 () Bool)

(assert (=> b!1437323 (= res!970276 (= (select (arr!47151 a!2862) (index!48097 lt!632222)) (select (arr!47151 a!2862) j!93)))))

(assert (=> b!1437323 (=> res!970276 e!810932)))

(assert (=> b!1437323 (= e!810930 e!810932)))

(declare-fun b!1437324 () Bool)

(assert (=> b!1437324 (= e!810931 e!810934)))

(declare-fun c!133029 () Bool)

(assert (=> b!1437324 (= c!133029 (or (= lt!632223 (select (arr!47151 a!2862) j!93)) (= (bvadd lt!632223 lt!632223) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1437325 () Bool)

(assert (=> b!1437325 (= e!810933 (bvsge (x!129822 lt!632222) #b01111111111111111111111111111110))))

(assert (= (and d!154575 c!133030) b!1437318))

(assert (= (and d!154575 (not c!133030)) b!1437324))

(assert (= (and b!1437324 c!133029) b!1437322))

(assert (= (and b!1437324 (not c!133029)) b!1437321))

(assert (= (and d!154575 c!133031) b!1437325))

(assert (= (and d!154575 (not c!133031)) b!1437317))

(assert (= (and b!1437317 res!970274) b!1437323))

(assert (= (and b!1437323 (not res!970276)) b!1437319))

(assert (= (and b!1437319 (not res!970275)) b!1437320))

(declare-fun m!1326673 () Bool)

(assert (=> b!1437323 m!1326673))

(assert (=> b!1437321 m!1326651))

(declare-fun m!1326675 () Bool)

(assert (=> b!1437321 m!1326675))

(assert (=> b!1437321 m!1326675))

(assert (=> b!1437321 m!1326635))

(declare-fun m!1326677 () Bool)

(assert (=> b!1437321 m!1326677))

(assert (=> b!1437319 m!1326673))

(assert (=> d!154575 m!1326651))

(declare-fun m!1326679 () Bool)

(assert (=> d!154575 m!1326679))

(assert (=> d!154575 m!1326631))

(assert (=> b!1437320 m!1326673))

(assert (=> b!1437257 d!154575))

(declare-fun d!154595 () Bool)

(declare-fun lt!632233 () (_ BitVec 32))

(declare-fun lt!632232 () (_ BitVec 32))

(assert (=> d!154595 (= lt!632233 (bvmul (bvxor lt!632232 (bvlshr lt!632232 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!154595 (= lt!632232 ((_ extract 31 0) (bvand (bvxor (select (arr!47151 a!2862) j!93) (bvlshr (select (arr!47151 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!154595 (and (bvsge mask!2687 #b00000000000000000000000000000000) (let ((res!970277 (let ((h!35168 ((_ extract 31 0) (bvand (bvxor (select (arr!47151 a!2862) j!93) (bvlshr (select (arr!47151 a!2862) j!93) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!129827 (bvmul (bvxor h!35168 (bvlshr h!35168 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!129827 (bvlshr x!129827 #b00000000000000000000000000001101)) mask!2687))))) (and (bvslt res!970277 (bvadd mask!2687 #b00000000000000000000000000000001)) (bvsge res!970277 #b00000000000000000000000000000000))))))

(assert (=> d!154595 (= (toIndex!0 (select (arr!47151 a!2862) j!93) mask!2687) (bvand (bvxor lt!632233 (bvlshr lt!632233 #b00000000000000000000000000001101)) mask!2687))))

(assert (=> b!1437257 d!154595))

(declare-fun d!154597 () Bool)

(assert (=> d!154597 (= (validKeyInArray!0 (select (arr!47151 a!2862) i!1006)) (and (not (= (select (arr!47151 a!2862) i!1006) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!47151 a!2862) i!1006) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1437262 d!154597))

(declare-fun d!154599 () Bool)

(declare-fun res!970309 () Bool)

(declare-fun e!810979 () Bool)

(assert (=> d!154599 (=> res!970309 e!810979)))

(assert (=> d!154599 (= res!970309 (bvsge #b00000000000000000000000000000000 (size!47702 a!2862)))))

(assert (=> d!154599 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!2862 mask!2687) e!810979)))

(declare-fun b!1437393 () Bool)

(declare-fun e!810981 () Bool)

(declare-fun e!810980 () Bool)

(assert (=> b!1437393 (= e!810981 e!810980)))

(declare-fun lt!632256 () (_ BitVec 64))

(assert (=> b!1437393 (= lt!632256 (select (arr!47151 a!2862) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!48502 0))(
  ( (Unit!48503) )
))
(declare-fun lt!632257 () Unit!48502)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!97723 (_ BitVec 64) (_ BitVec 32)) Unit!48502)

(assert (=> b!1437393 (= lt!632257 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!2862 lt!632256 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!97723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1437393 (arrayContainsKey!0 a!2862 lt!632256 #b00000000000000000000000000000000)))

(declare-fun lt!632258 () Unit!48502)

(assert (=> b!1437393 (= lt!632258 lt!632257)))

(declare-fun res!970308 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!97723 (_ BitVec 32)) SeekEntryResult!11426)

(assert (=> b!1437393 (= res!970308 (= (seekEntryOrOpen!0 (select (arr!47151 a!2862) #b00000000000000000000000000000000) a!2862 mask!2687) (Found!11426 #b00000000000000000000000000000000)))))

(assert (=> b!1437393 (=> (not res!970308) (not e!810980))))

(declare-fun b!1437394 () Bool)

(declare-fun call!67631 () Bool)

(assert (=> b!1437394 (= e!810981 call!67631)))

(declare-fun bm!67628 () Bool)

(assert (=> bm!67628 (= call!67631 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!2862 mask!2687))))

(declare-fun b!1437395 () Bool)

(assert (=> b!1437395 (= e!810979 e!810981)))

(declare-fun c!133051 () Bool)

(assert (=> b!1437395 (= c!133051 (validKeyInArray!0 (select (arr!47151 a!2862) #b00000000000000000000000000000000)))))

(declare-fun b!1437396 () Bool)

(assert (=> b!1437396 (= e!810980 call!67631)))

(assert (= (and d!154599 (not res!970309)) b!1437395))

(assert (= (and b!1437395 c!133051) b!1437393))

(assert (= (and b!1437395 (not c!133051)) b!1437394))

(assert (= (and b!1437393 res!970308) b!1437396))

(assert (= (or b!1437396 b!1437394) bm!67628))

(declare-fun m!1326705 () Bool)

(assert (=> b!1437393 m!1326705))

(declare-fun m!1326707 () Bool)

(assert (=> b!1437393 m!1326707))

(declare-fun m!1326709 () Bool)

(assert (=> b!1437393 m!1326709))

(assert (=> b!1437393 m!1326705))

(declare-fun m!1326711 () Bool)

(assert (=> b!1437393 m!1326711))

(declare-fun m!1326713 () Bool)

(assert (=> bm!67628 m!1326713))

(assert (=> b!1437395 m!1326705))

(assert (=> b!1437395 m!1326705))

(declare-fun m!1326715 () Bool)

(assert (=> b!1437395 m!1326715))

(assert (=> b!1437256 d!154599))

(declare-fun b!1437407 () Bool)

(declare-fun e!810994 () Bool)

(declare-fun e!810991 () Bool)

(assert (=> b!1437407 (= e!810994 e!810991)))

(declare-fun res!970318 () Bool)

(declare-fun lt!632262 () SeekEntryResult!11426)

(assert (=> b!1437407 (= res!970318 (and (is-Intermediate!11426 lt!632262) (not (undefined!12238 lt!632262)) (bvslt (x!129822 lt!632262) #b01111111111111111111111111111110) (bvsge (x!129822 lt!632262) #b00000000000000000000000000000000) (bvsge (x!129822 lt!632262) x!665)))))

(assert (=> b!1437407 (=> (not res!970318) (not e!810991))))

(declare-fun d!154609 () Bool)

(assert (=> d!154609 e!810994))

(declare-fun c!133055 () Bool)

(assert (=> d!154609 (= c!133055 (and (is-Intermediate!11426 lt!632262) (undefined!12238 lt!632262)))))

(declare-fun e!810992 () SeekEntryResult!11426)

(assert (=> d!154609 (= lt!632262 e!810992)))

(declare-fun c!133054 () Bool)

(assert (=> d!154609 (= c!133054 (bvsge x!665 #b01111111111111111111111111111110))))

(declare-fun lt!632263 () (_ BitVec 64))

(assert (=> d!154609 (= lt!632263 (select (arr!47151 a!2862) index!646))))

(assert (=> d!154609 (validMask!0 mask!2687)))

(assert (=> d!154609 (= (seekKeyOrZeroOrLongMinValue!0 x!665 index!646 (select (arr!47151 a!2862) j!93) a!2862 mask!2687) lt!632262)))

(declare-fun b!1437408 () Bool)

(assert (=> b!1437408 (= e!810992 (Intermediate!11426 true index!646 x!665))))

(declare-fun b!1437409 () Bool)

(assert (=> b!1437409 (and (bvsge (index!48097 lt!632262) #b00000000000000000000000000000000) (bvslt (index!48097 lt!632262) (size!47702 a!2862)))))

(declare-fun res!970319 () Bool)

(assert (=> b!1437409 (= res!970319 (= (select (arr!47151 a!2862) (index!48097 lt!632262)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!810993 () Bool)

(assert (=> b!1437409 (=> res!970319 e!810993)))

(declare-fun b!1437410 () Bool)

(assert (=> b!1437410 (and (bvsge (index!48097 lt!632262) #b00000000000000000000000000000000) (bvslt (index!48097 lt!632262) (size!47702 a!2862)))))

(assert (=> b!1437410 (= e!810993 (= (select (arr!47151 a!2862) (index!48097 lt!632262)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1437411 () Bool)

(declare-fun e!810995 () SeekEntryResult!11426)

(assert (=> b!1437411 (= e!810995 (seekKeyOrZeroOrLongMinValue!0 (bvadd x!665 #b00000000000000000000000000000001) (nextIndex!0 index!646 x!665 mask!2687) (select (arr!47151 a!2862) j!93) a!2862 mask!2687))))

(declare-fun b!1437412 () Bool)

(assert (=> b!1437412 (= e!810995 (Intermediate!11426 false index!646 x!665))))

(declare-fun b!1437413 () Bool)

(assert (=> b!1437413 (and (bvsge (index!48097 lt!632262) #b00000000000000000000000000000000) (bvslt (index!48097 lt!632262) (size!47702 a!2862)))))

