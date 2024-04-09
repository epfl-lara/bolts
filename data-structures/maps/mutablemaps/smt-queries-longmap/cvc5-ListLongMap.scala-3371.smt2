; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46288 () Bool)

(assert start!46288)

(declare-fun b!512456 () Bool)

(declare-fun res!313272 () Bool)

(declare-fun e!299247 () Bool)

(assert (=> b!512456 (=> (not res!313272) (not e!299247))))

(declare-datatypes ((array!32902 0))(
  ( (array!32903 (arr!15825 (Array (_ BitVec 32) (_ BitVec 64))) (size!16189 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32902)

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32902 (_ BitVec 32)) Bool)

(assert (=> b!512456 (= res!313272 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!512457 () Bool)

(declare-fun e!299249 () Bool)

(assert (=> b!512457 (= e!299249 e!299247)))

(declare-fun res!313277 () Bool)

(assert (=> b!512457 (=> (not res!313277) (not e!299247))))

(declare-datatypes ((SeekEntryResult!4299 0))(
  ( (MissingZero!4299 (index!19384 (_ BitVec 32))) (Found!4299 (index!19385 (_ BitVec 32))) (Intermediate!4299 (undefined!5111 Bool) (index!19386 (_ BitVec 32)) (x!48357 (_ BitVec 32))) (Undefined!4299) (MissingVacant!4299 (index!19387 (_ BitVec 32))) )
))
(declare-fun lt!234677 () SeekEntryResult!4299)

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!512457 (= res!313277 (or (= lt!234677 (MissingZero!4299 i!1204)) (= lt!234677 (MissingVacant!4299 i!1204))))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32902 (_ BitVec 32)) SeekEntryResult!4299)

(assert (=> b!512457 (= lt!234677 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!512459 () Bool)

(declare-fun res!313276 () Bool)

(assert (=> b!512459 (=> (not res!313276) (not e!299249))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!512459 (= res!313276 (and (= (size!16189 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16189 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16189 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!512460 () Bool)

(declare-fun res!313275 () Bool)

(assert (=> b!512460 (=> (not res!313275) (not e!299249))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!512460 (= res!313275 (validKeyInArray!0 k!2280))))

(declare-fun b!512461 () Bool)

(declare-fun e!299250 () Bool)

(assert (=> b!512461 (= e!299247 (not e!299250))))

(declare-fun res!313271 () Bool)

(assert (=> b!512461 (=> res!313271 e!299250)))

(declare-fun lt!234676 () (_ BitVec 32))

(declare-fun lt!234674 () SeekEntryResult!4299)

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32902 (_ BitVec 32)) SeekEntryResult!4299)

(assert (=> b!512461 (= res!313271 (= lt!234674 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234676 (select (store (arr!15825 a!3235) i!1204 k!2280) j!176) (array!32903 (store (arr!15825 a!3235) i!1204 k!2280) (size!16189 a!3235)) mask!3524)))))

(declare-fun lt!234675 () (_ BitVec 32))

(assert (=> b!512461 (= lt!234674 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234675 (select (arr!15825 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512461 (= lt!234676 (toIndex!0 (select (store (arr!15825 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!512461 (= lt!234675 (toIndex!0 (select (arr!15825 a!3235) j!176) mask!3524))))

(declare-fun e!299248 () Bool)

(assert (=> b!512461 e!299248))

(declare-fun res!313268 () Bool)

(assert (=> b!512461 (=> (not res!313268) (not e!299248))))

(assert (=> b!512461 (= res!313268 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15848 0))(
  ( (Unit!15849) )
))
(declare-fun lt!234673 () Unit!15848)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32902 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15848)

(assert (=> b!512461 (= lt!234673 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!512462 () Bool)

(declare-fun res!313270 () Bool)

(assert (=> b!512462 (=> (not res!313270) (not e!299247))))

(declare-datatypes ((List!10036 0))(
  ( (Nil!10033) (Cons!10032 (h!10912 (_ BitVec 64)) (t!16272 List!10036)) )
))
(declare-fun arrayNoDuplicates!0 (array!32902 (_ BitVec 32) List!10036) Bool)

(assert (=> b!512462 (= res!313270 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10033))))

(declare-fun b!512458 () Bool)

(declare-fun res!313273 () Bool)

(assert (=> b!512458 (=> (not res!313273) (not e!299249))))

(assert (=> b!512458 (= res!313273 (validKeyInArray!0 (select (arr!15825 a!3235) j!176)))))

(declare-fun res!313269 () Bool)

(assert (=> start!46288 (=> (not res!313269) (not e!299249))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46288 (= res!313269 (validMask!0 mask!3524))))

(assert (=> start!46288 e!299249))

(assert (=> start!46288 true))

(declare-fun array_inv!11599 (array!32902) Bool)

(assert (=> start!46288 (array_inv!11599 a!3235)))

(declare-fun b!512463 () Bool)

(assert (=> b!512463 (= e!299250 (or (not (is-Intermediate!4299 lt!234674)) (undefined!5111 lt!234674) (bvslt (x!48357 lt!234674) #b01111111111111111111111111111110)))))

(declare-fun b!512464 () Bool)

(declare-fun res!313274 () Bool)

(assert (=> b!512464 (=> (not res!313274) (not e!299249))))

(declare-fun arrayContainsKey!0 (array!32902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!512464 (= res!313274 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(declare-fun b!512465 () Bool)

(assert (=> b!512465 (= e!299248 (= (seekEntryOrOpen!0 (select (arr!15825 a!3235) j!176) a!3235 mask!3524) (Found!4299 j!176)))))

(assert (= (and start!46288 res!313269) b!512459))

(assert (= (and b!512459 res!313276) b!512458))

(assert (= (and b!512458 res!313273) b!512460))

(assert (= (and b!512460 res!313275) b!512464))

(assert (= (and b!512464 res!313274) b!512457))

(assert (= (and b!512457 res!313277) b!512456))

(assert (= (and b!512456 res!313272) b!512462))

(assert (= (and b!512462 res!313270) b!512461))

(assert (= (and b!512461 res!313268) b!512465))

(assert (= (and b!512461 (not res!313271)) b!512463))

(declare-fun m!494203 () Bool)

(assert (=> b!512465 m!494203))

(assert (=> b!512465 m!494203))

(declare-fun m!494205 () Bool)

(assert (=> b!512465 m!494205))

(declare-fun m!494207 () Bool)

(assert (=> b!512462 m!494207))

(declare-fun m!494209 () Bool)

(assert (=> b!512461 m!494209))

(declare-fun m!494211 () Bool)

(assert (=> b!512461 m!494211))

(declare-fun m!494213 () Bool)

(assert (=> b!512461 m!494213))

(assert (=> b!512461 m!494209))

(assert (=> b!512461 m!494203))

(declare-fun m!494215 () Bool)

(assert (=> b!512461 m!494215))

(assert (=> b!512461 m!494203))

(declare-fun m!494217 () Bool)

(assert (=> b!512461 m!494217))

(assert (=> b!512461 m!494209))

(declare-fun m!494219 () Bool)

(assert (=> b!512461 m!494219))

(assert (=> b!512461 m!494203))

(declare-fun m!494221 () Bool)

(assert (=> b!512461 m!494221))

(declare-fun m!494223 () Bool)

(assert (=> b!512461 m!494223))

(declare-fun m!494225 () Bool)

(assert (=> b!512456 m!494225))

(declare-fun m!494227 () Bool)

(assert (=> b!512460 m!494227))

(assert (=> b!512458 m!494203))

(assert (=> b!512458 m!494203))

(declare-fun m!494229 () Bool)

(assert (=> b!512458 m!494229))

(declare-fun m!494231 () Bool)

(assert (=> start!46288 m!494231))

(declare-fun m!494233 () Bool)

(assert (=> start!46288 m!494233))

(declare-fun m!494235 () Bool)

(assert (=> b!512464 m!494235))

(declare-fun m!494237 () Bool)

(assert (=> b!512457 m!494237))

(push 1)

(assert (not b!512456))

(assert (not b!512458))

(assert (not b!512465))

(assert (not b!512464))

(assert (not b!512460))

(assert (not b!512462))

(assert (not b!512457))

(assert (not b!512461))

(assert (not start!46288))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!512587 () Bool)

(declare-fun e!299324 () Bool)

(declare-fun call!31520 () Bool)

(assert (=> b!512587 (= e!299324 call!31520)))

(declare-fun b!512588 () Bool)

(declare-fun e!299327 () Bool)

(declare-fun e!299325 () Bool)

(assert (=> b!512588 (= e!299327 e!299325)))

(declare-fun res!313361 () Bool)

(assert (=> b!512588 (=> (not res!313361) (not e!299325))))

(declare-fun e!299326 () Bool)

(assert (=> b!512588 (= res!313361 (not e!299326))))

(declare-fun res!313363 () Bool)

(assert (=> b!512588 (=> (not res!313363) (not e!299326))))

(assert (=> b!512588 (= res!313363 (validKeyInArray!0 (select (arr!15825 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!78873 () Bool)

(declare-fun res!313362 () Bool)

(assert (=> d!78873 (=> res!313362 e!299327)))

(assert (=> d!78873 (= res!313362 (bvsge #b00000000000000000000000000000000 (size!16189 a!3235)))))

(assert (=> d!78873 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10033) e!299327)))

(declare-fun b!512589 () Bool)

(assert (=> b!512589 (= e!299324 call!31520)))

(declare-fun b!512590 () Bool)

(assert (=> b!512590 (= e!299325 e!299324)))

(declare-fun c!59893 () Bool)

(assert (=> b!512590 (= c!59893 (validKeyInArray!0 (select (arr!15825 a!3235) #b00000000000000000000000000000000)))))

(declare-fun bm!31517 () Bool)

(assert (=> bm!31517 (= call!31520 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!59893 (Cons!10032 (select (arr!15825 a!3235) #b00000000000000000000000000000000) Nil!10033) Nil!10033)))))

(declare-fun b!512591 () Bool)

(declare-fun contains!2732 (List!10036 (_ BitVec 64)) Bool)

(assert (=> b!512591 (= e!299326 (contains!2732 Nil!10033 (select (arr!15825 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!78873 (not res!313362)) b!512588))

(assert (= (and b!512588 res!313363) b!512591))

(assert (= (and b!512588 res!313361) b!512590))

(assert (= (and b!512590 c!59893) b!512587))

(assert (= (and b!512590 (not c!59893)) b!512589))

(assert (= (or b!512587 b!512589) bm!31517))

(declare-fun m!494345 () Bool)

(assert (=> b!512588 m!494345))

(assert (=> b!512588 m!494345))

(declare-fun m!494347 () Bool)

(assert (=> b!512588 m!494347))

(assert (=> b!512590 m!494345))

(assert (=> b!512590 m!494345))

(assert (=> b!512590 m!494347))

(assert (=> bm!31517 m!494345))

(declare-fun m!494349 () Bool)

(assert (=> bm!31517 m!494349))

(assert (=> b!512591 m!494345))

(assert (=> b!512591 m!494345))

(declare-fun m!494351 () Bool)

(assert (=> b!512591 m!494351))

(assert (=> b!512462 d!78873))

(declare-fun b!512650 () Bool)

(declare-fun e!299367 () SeekEntryResult!4299)

(declare-fun e!299366 () SeekEntryResult!4299)

(assert (=> b!512650 (= e!299367 e!299366)))

(declare-fun lt!234755 () (_ BitVec 64))

(declare-fun c!59916 () Bool)

(assert (=> b!512650 (= c!59916 (or (= lt!234755 (select (store (arr!15825 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!234755 lt!234755) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!512651 () Bool)

(assert (=> b!512651 (= e!299366 (Intermediate!4299 false lt!234676 #b00000000000000000000000000000000))))

(declare-fun b!512652 () Bool)

(declare-fun lt!234754 () SeekEntryResult!4299)

(assert (=> b!512652 (and (bvsge (index!19386 lt!234754) #b00000000000000000000000000000000) (bvslt (index!19386 lt!234754) (size!16189 (array!32903 (store (arr!15825 a!3235) i!1204 k!2280) (size!16189 a!3235)))))))

(declare-fun res!313383 () Bool)

(assert (=> b!512652 (= res!313383 (= (select (arr!15825 (array!32903 (store (arr!15825 a!3235) i!1204 k!2280) (size!16189 a!3235))) (index!19386 lt!234754)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!299368 () Bool)

(assert (=> b!512652 (=> res!313383 e!299368)))

(declare-fun b!512653 () Bool)

(declare-fun e!299365 () Bool)

(declare-fun e!299364 () Bool)

(assert (=> b!512653 (= e!299365 e!299364)))

(declare-fun res!313384 () Bool)

(assert (=> b!512653 (= res!313384 (and (is-Intermediate!4299 lt!234754) (not (undefined!5111 lt!234754)) (bvslt (x!48357 lt!234754) #b01111111111111111111111111111110) (bvsge (x!48357 lt!234754) #b00000000000000000000000000000000) (bvsge (x!48357 lt!234754) #b00000000000000000000000000000000)))))

(assert (=> b!512653 (=> (not res!313384) (not e!299364))))

(declare-fun b!512654 () Bool)

(assert (=> b!512654 (and (bvsge (index!19386 lt!234754) #b00000000000000000000000000000000) (bvslt (index!19386 lt!234754) (size!16189 (array!32903 (store (arr!15825 a!3235) i!1204 k!2280) (size!16189 a!3235)))))))

(declare-fun res!313382 () Bool)

(assert (=> b!512654 (= res!313382 (= (select (arr!15825 (array!32903 (store (arr!15825 a!3235) i!1204 k!2280) (size!16189 a!3235))) (index!19386 lt!234754)) (select (store (arr!15825 a!3235) i!1204 k!2280) j!176)))))

(assert (=> b!512654 (=> res!313382 e!299368)))

(assert (=> b!512654 (= e!299364 e!299368)))

(declare-fun b!512655 () Bool)

(assert (=> b!512655 (and (bvsge (index!19386 lt!234754) #b00000000000000000000000000000000) (bvslt (index!19386 lt!234754) (size!16189 (array!32903 (store (arr!15825 a!3235) i!1204 k!2280) (size!16189 a!3235)))))))

(assert (=> b!512655 (= e!299368 (= (select (arr!15825 (array!32903 (store (arr!15825 a!3235) i!1204 k!2280) (size!16189 a!3235))) (index!19386 lt!234754)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!512656 () Bool)

(assert (=> b!512656 (= e!299367 (Intermediate!4299 true lt!234676 #b00000000000000000000000000000000))))

(declare-fun b!512657 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!512657 (= e!299366 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!234676 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15825 a!3235) i!1204 k!2280) j!176) (array!32903 (store (arr!15825 a!3235) i!1204 k!2280) (size!16189 a!3235)) mask!3524))))

(declare-fun b!512658 () Bool)

(assert (=> b!512658 (= e!299365 (bvsge (x!48357 lt!234754) #b01111111111111111111111111111110))))

(declare-fun d!78881 () Bool)

(assert (=> d!78881 e!299365))

(declare-fun c!59914 () Bool)

(assert (=> d!78881 (= c!59914 (and (is-Intermediate!4299 lt!234754) (undefined!5111 lt!234754)))))

(assert (=> d!78881 (= lt!234754 e!299367)))

(declare-fun c!59915 () Bool)

(assert (=> d!78881 (= c!59915 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78881 (= lt!234755 (select (arr!15825 (array!32903 (store (arr!15825 a!3235) i!1204 k!2280) (size!16189 a!3235))) lt!234676))))

(assert (=> d!78881 (validMask!0 mask!3524)))

(assert (=> d!78881 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234676 (select (store (arr!15825 a!3235) i!1204 k!2280) j!176) (array!32903 (store (arr!15825 a!3235) i!1204 k!2280) (size!16189 a!3235)) mask!3524) lt!234754)))

(assert (= (and d!78881 c!59915) b!512656))

(assert (= (and d!78881 (not c!59915)) b!512650))

(assert (= (and b!512650 c!59916) b!512651))

(assert (= (and b!512650 (not c!59916)) b!512657))

(assert (= (and d!78881 c!59914) b!512658))

(assert (= (and d!78881 (not c!59914)) b!512653))

(assert (= (and b!512653 res!313384) b!512654))

(assert (= (and b!512654 (not res!313382)) b!512652))

(assert (= (and b!512652 (not res!313383)) b!512655))

(declare-fun m!494395 () Bool)

(assert (=> b!512657 m!494395))

(assert (=> b!512657 m!494395))

(assert (=> b!512657 m!494209))

(declare-fun m!494397 () Bool)

(assert (=> b!512657 m!494397))

(declare-fun m!494399 () Bool)

(assert (=> b!512655 m!494399))

(assert (=> b!512654 m!494399))

(assert (=> b!512652 m!494399))

(declare-fun m!494401 () Bool)

(assert (=> d!78881 m!494401))

(assert (=> d!78881 m!494231))

(assert (=> b!512461 d!78881))

(declare-fun d!78899 () Bool)

(declare-fun lt!234761 () (_ BitVec 32))

(declare-fun lt!234760 () (_ BitVec 32))

(assert (=> d!78899 (= lt!234761 (bvmul (bvxor lt!234760 (bvlshr lt!234760 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78899 (= lt!234760 ((_ extract 31 0) (bvand (bvxor (select (arr!15825 a!3235) j!176) (bvlshr (select (arr!15825 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78899 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313385 (let ((h!10915 ((_ extract 31 0) (bvand (bvxor (select (arr!15825 a!3235) j!176) (bvlshr (select (arr!15825 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48361 (bvmul (bvxor h!10915 (bvlshr h!10915 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48361 (bvlshr x!48361 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313385 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313385 #b00000000000000000000000000000000))))))

(assert (=> d!78899 (= (toIndex!0 (select (arr!15825 a!3235) j!176) mask!3524) (bvand (bvxor lt!234761 (bvlshr lt!234761 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!512461 d!78899))

(declare-fun b!512693 () Bool)

(declare-fun e!299389 () Bool)

(declare-fun call!31527 () Bool)

(assert (=> b!512693 (= e!299389 call!31527)))

(declare-fun d!78901 () Bool)

(declare-fun res!313396 () Bool)

(declare-fun e!299391 () Bool)

(assert (=> d!78901 (=> res!313396 e!299391)))

(assert (=> d!78901 (= res!313396 (bvsge j!176 (size!16189 a!3235)))))

(assert (=> d!78901 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!299391)))

(declare-fun b!512694 () Bool)

(declare-fun e!299390 () Bool)

(assert (=> b!512694 (= e!299390 e!299389)))

(declare-fun lt!234778 () (_ BitVec 64))

(assert (=> b!512694 (= lt!234778 (select (arr!15825 a!3235) j!176))))

(declare-fun lt!234776 () Unit!15848)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32902 (_ BitVec 64) (_ BitVec 32)) Unit!15848)

(assert (=> b!512694 (= lt!234776 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!234778 j!176))))

(assert (=> b!512694 (arrayContainsKey!0 a!3235 lt!234778 #b00000000000000000000000000000000)))

(declare-fun lt!234777 () Unit!15848)

(assert (=> b!512694 (= lt!234777 lt!234776)))

(declare-fun res!313397 () Bool)

(assert (=> b!512694 (= res!313397 (= (seekEntryOrOpen!0 (select (arr!15825 a!3235) j!176) a!3235 mask!3524) (Found!4299 j!176)))))

(assert (=> b!512694 (=> (not res!313397) (not e!299389))))

(declare-fun b!512695 () Bool)

(assert (=> b!512695 (= e!299390 call!31527)))

(declare-fun bm!31524 () Bool)

(assert (=> bm!31524 (= call!31527 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!512696 () Bool)

(assert (=> b!512696 (= e!299391 e!299390)))

(declare-fun c!59929 () Bool)

(assert (=> b!512696 (= c!59929 (validKeyInArray!0 (select (arr!15825 a!3235) j!176)))))

(assert (= (and d!78901 (not res!313396)) b!512696))

(assert (= (and b!512696 c!59929) b!512694))

(assert (= (and b!512696 (not c!59929)) b!512695))

(assert (= (and b!512694 res!313397) b!512693))

(assert (= (or b!512693 b!512695) bm!31524))

(assert (=> b!512694 m!494203))

(declare-fun m!494403 () Bool)

(assert (=> b!512694 m!494403))

(declare-fun m!494405 () Bool)

(assert (=> b!512694 m!494405))

(assert (=> b!512694 m!494203))

(assert (=> b!512694 m!494205))

(declare-fun m!494407 () Bool)

(assert (=> bm!31524 m!494407))

(assert (=> b!512696 m!494203))

(assert (=> b!512696 m!494203))

(assert (=> b!512696 m!494229))

(assert (=> b!512461 d!78901))

(declare-fun b!512701 () Bool)

(declare-fun e!299397 () SeekEntryResult!4299)

(declare-fun e!299396 () SeekEntryResult!4299)

(assert (=> b!512701 (= e!299397 e!299396)))

(declare-fun lt!234780 () (_ BitVec 64))

(declare-fun c!59934 () Bool)

(assert (=> b!512701 (= c!59934 (or (= lt!234780 (select (arr!15825 a!3235) j!176)) (= (bvadd lt!234780 lt!234780) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!512702 () Bool)

(assert (=> b!512702 (= e!299396 (Intermediate!4299 false lt!234675 #b00000000000000000000000000000000))))

(declare-fun b!512703 () Bool)

(declare-fun lt!234779 () SeekEntryResult!4299)

(assert (=> b!512703 (and (bvsge (index!19386 lt!234779) #b00000000000000000000000000000000) (bvslt (index!19386 lt!234779) (size!16189 a!3235)))))

(declare-fun res!313399 () Bool)

(assert (=> b!512703 (= res!313399 (= (select (arr!15825 a!3235) (index!19386 lt!234779)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!299398 () Bool)

(assert (=> b!512703 (=> res!313399 e!299398)))

(declare-fun b!512704 () Bool)

(declare-fun e!299395 () Bool)

(declare-fun e!299394 () Bool)

(assert (=> b!512704 (= e!299395 e!299394)))

(declare-fun res!313400 () Bool)

(assert (=> b!512704 (= res!313400 (and (is-Intermediate!4299 lt!234779) (not (undefined!5111 lt!234779)) (bvslt (x!48357 lt!234779) #b01111111111111111111111111111110) (bvsge (x!48357 lt!234779) #b00000000000000000000000000000000) (bvsge (x!48357 lt!234779) #b00000000000000000000000000000000)))))

(assert (=> b!512704 (=> (not res!313400) (not e!299394))))

(declare-fun b!512705 () Bool)

(assert (=> b!512705 (and (bvsge (index!19386 lt!234779) #b00000000000000000000000000000000) (bvslt (index!19386 lt!234779) (size!16189 a!3235)))))

(declare-fun res!313398 () Bool)

(assert (=> b!512705 (= res!313398 (= (select (arr!15825 a!3235) (index!19386 lt!234779)) (select (arr!15825 a!3235) j!176)))))

(assert (=> b!512705 (=> res!313398 e!299398)))

(assert (=> b!512705 (= e!299394 e!299398)))

(declare-fun b!512706 () Bool)

(assert (=> b!512706 (and (bvsge (index!19386 lt!234779) #b00000000000000000000000000000000) (bvslt (index!19386 lt!234779) (size!16189 a!3235)))))

(assert (=> b!512706 (= e!299398 (= (select (arr!15825 a!3235) (index!19386 lt!234779)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!512707 () Bool)

(assert (=> b!512707 (= e!299397 (Intermediate!4299 true lt!234675 #b00000000000000000000000000000000))))

(declare-fun b!512708 () Bool)

(assert (=> b!512708 (= e!299396 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!234675 #b00000000000000000000000000000000 mask!3524) (select (arr!15825 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!512709 () Bool)

(assert (=> b!512709 (= e!299395 (bvsge (x!48357 lt!234779) #b01111111111111111111111111111110))))

(declare-fun d!78903 () Bool)

(assert (=> d!78903 e!299395))

(declare-fun c!59932 () Bool)

(assert (=> d!78903 (= c!59932 (and (is-Intermediate!4299 lt!234779) (undefined!5111 lt!234779)))))

(assert (=> d!78903 (= lt!234779 e!299397)))

(declare-fun c!59933 () Bool)

(assert (=> d!78903 (= c!59933 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!78903 (= lt!234780 (select (arr!15825 a!3235) lt!234675))))

(assert (=> d!78903 (validMask!0 mask!3524)))

(assert (=> d!78903 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!234675 (select (arr!15825 a!3235) j!176) a!3235 mask!3524) lt!234779)))

(assert (= (and d!78903 c!59933) b!512707))

(assert (= (and d!78903 (not c!59933)) b!512701))

(assert (= (and b!512701 c!59934) b!512702))

(assert (= (and b!512701 (not c!59934)) b!512708))

(assert (= (and d!78903 c!59932) b!512709))

(assert (= (and d!78903 (not c!59932)) b!512704))

(assert (= (and b!512704 res!313400) b!512705))

(assert (= (and b!512705 (not res!313398)) b!512703))

(assert (= (and b!512703 (not res!313399)) b!512706))

(declare-fun m!494409 () Bool)

(assert (=> b!512708 m!494409))

(assert (=> b!512708 m!494409))

(assert (=> b!512708 m!494203))

(declare-fun m!494411 () Bool)

(assert (=> b!512708 m!494411))

(declare-fun m!494413 () Bool)

(assert (=> b!512706 m!494413))

(assert (=> b!512705 m!494413))

(assert (=> b!512703 m!494413))

(declare-fun m!494415 () Bool)

(assert (=> d!78903 m!494415))

(assert (=> d!78903 m!494231))

(assert (=> b!512461 d!78903))

(declare-fun d!78905 () Bool)

(assert (=> d!78905 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!234787 () Unit!15848)

(declare-fun choose!38 (array!32902 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15848)

(assert (=> d!78905 (= lt!234787 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!78905 (validMask!0 mask!3524)))

(assert (=> d!78905 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!234787)))

(declare-fun bs!16236 () Bool)

(assert (= bs!16236 d!78905))

(assert (=> bs!16236 m!494217))

(declare-fun m!494433 () Bool)

(assert (=> bs!16236 m!494433))

(assert (=> bs!16236 m!494231))

(assert (=> b!512461 d!78905))

(declare-fun d!78911 () Bool)

(declare-fun lt!234789 () (_ BitVec 32))

(declare-fun lt!234788 () (_ BitVec 32))

(assert (=> d!78911 (= lt!234789 (bvmul (bvxor lt!234788 (bvlshr lt!234788 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!78911 (= lt!234788 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15825 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15825 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!78911 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!313385 (let ((h!10915 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15825 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15825 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48361 (bvmul (bvxor h!10915 (bvlshr h!10915 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48361 (bvlshr x!48361 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!313385 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!313385 #b00000000000000000000000000000000))))))

(assert (=> d!78911 (= (toIndex!0 (select (store (arr!15825 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!234789 (bvlshr lt!234789 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!512461 d!78911))

(declare-fun b!512734 () Bool)

(declare-fun e!299413 () Bool)

(declare-fun call!31528 () Bool)

(assert (=> b!512734 (= e!299413 call!31528)))

(declare-fun d!78913 () Bool)

(declare-fun res!313414 () Bool)

(declare-fun e!299415 () Bool)

(assert (=> d!78913 (=> res!313414 e!299415)))

(assert (=> d!78913 (= res!313414 (bvsge #b00000000000000000000000000000000 (size!16189 a!3235)))))

(assert (=> d!78913 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!299415)))

(declare-fun b!512735 () Bool)

(declare-fun e!299414 () Bool)

(assert (=> b!512735 (= e!299414 e!299413)))

(declare-fun lt!234792 () (_ BitVec 64))

(assert (=> b!512735 (= lt!234792 (select (arr!15825 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!234790 () Unit!15848)

(assert (=> b!512735 (= lt!234790 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!234792 #b00000000000000000000000000000000))))

(assert (=> b!512735 (arrayContainsKey!0 a!3235 lt!234792 #b00000000000000000000000000000000)))

(declare-fun lt!234791 () Unit!15848)

(assert (=> b!512735 (= lt!234791 lt!234790)))

(declare-fun res!313415 () Bool)

(assert (=> b!512735 (= res!313415 (= (seekEntryOrOpen!0 (select (arr!15825 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4299 #b00000000000000000000000000000000)))))

(assert (=> b!512735 (=> (not res!313415) (not e!299413))))

(declare-fun b!512736 () Bool)

(assert (=> b!512736 (= e!299414 call!31528)))

(declare-fun bm!31525 () Bool)

(assert (=> bm!31525 (= call!31528 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!512737 () Bool)

(assert (=> b!512737 (= e!299415 e!299414)))

(declare-fun c!59941 () Bool)

(assert (=> b!512737 (= c!59941 (validKeyInArray!0 (select (arr!15825 a!3235) #b00000000000000000000000000000000)))))

(assert (= (and d!78913 (not res!313414)) b!512737))

(assert (= (and b!512737 c!59941) b!512735))

(assert (= (and b!512737 (not c!59941)) b!512736))

(assert (= (and b!512735 res!313415) b!512734))

(assert (= (or b!512734 b!512736) bm!31525))

(assert (=> b!512735 m!494345))

(declare-fun m!494435 () Bool)

(assert (=> b!512735 m!494435))

(declare-fun m!494437 () Bool)

(assert (=> b!512735 m!494437))

(assert (=> b!512735 m!494345))

(declare-fun m!494439 () Bool)

(assert (=> b!512735 m!494439))

(declare-fun m!494441 () Bool)

(assert (=> bm!31525 m!494441))

(assert (=> b!512737 m!494345))

(assert (=> b!512737 m!494345))

(assert (=> b!512737 m!494347))

(assert (=> b!512456 d!78913))

(declare-fun d!78915 () Bool)

(assert (=> d!78915 (= (validKeyInArray!0 (select (arr!15825 a!3235) j!176)) (and (not (= (select (arr!15825 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15825 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!512458 d!78915))

(declare-fun b!512778 () Bool)

(declare-fun e!299444 () SeekEntryResult!4299)

(declare-fun lt!234828 () SeekEntryResult!4299)

(assert (=> b!512778 (= e!299444 (Found!4299 (index!19386 lt!234828)))))

(declare-fun b!512779 () Bool)

(declare-fun e!299445 () SeekEntryResult!4299)

(assert (=> b!512779 (= e!299445 (MissingZero!4299 (index!19386 lt!234828)))))

(declare-fun b!512780 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32902 (_ BitVec 32)) SeekEntryResult!4299)

(assert (=> b!512780 (= e!299445 (seekKeyOrZeroReturnVacant!0 (x!48357 lt!234828) (index!19386 lt!234828) (index!19386 lt!234828) k!2280 a!3235 mask!3524))))

(declare-fun b!512781 () Bool)

(declare-fun e!299443 () SeekEntryResult!4299)

(assert (=> b!512781 (= e!299443 Undefined!4299)))

(declare-fun d!78919 () Bool)

(declare-fun lt!234830 () SeekEntryResult!4299)

(assert (=> d!78919 (and (or (is-Undefined!4299 lt!234830) (not (is-Found!4299 lt!234830)) (and (bvsge (index!19385 lt!234830) #b00000000000000000000000000000000) (bvslt (index!19385 lt!234830) (size!16189 a!3235)))) (or (is-Undefined!4299 lt!234830) (is-Found!4299 lt!234830) (not (is-MissingZero!4299 lt!234830)) (and (bvsge (index!19384 lt!234830) #b00000000000000000000000000000000) (bvslt (index!19384 lt!234830) (size!16189 a!3235)))) (or (is-Undefined!4299 lt!234830) (is-Found!4299 lt!234830) (is-MissingZero!4299 lt!234830) (not (is-MissingVacant!4299 lt!234830)) (and (bvsge (index!19387 lt!234830) #b00000000000000000000000000000000) (bvslt (index!19387 lt!234830) (size!16189 a!3235)))) (or (is-Undefined!4299 lt!234830) (ite (is-Found!4299 lt!234830) (= (select (arr!15825 a!3235) (index!19385 lt!234830)) k!2280) (ite (is-MissingZero!4299 lt!234830) (= (select (arr!15825 a!3235) (index!19384 lt!234830)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4299 lt!234830) (= (select (arr!15825 a!3235) (index!19387 lt!234830)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!78919 (= lt!234830 e!299443)))

(declare-fun c!59955 () Bool)

(assert (=> d!78919 (= c!59955 (and (is-Intermediate!4299 lt!234828) (undefined!5111 lt!234828)))))

(assert (=> d!78919 (= lt!234828 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!78919 (validMask!0 mask!3524)))

(assert (=> d!78919 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!234830)))

(declare-fun b!512782 () Bool)

(assert (=> b!512782 (= e!299443 e!299444)))

(declare-fun lt!234829 () (_ BitVec 64))

(assert (=> b!512782 (= lt!234829 (select (arr!15825 a!3235) (index!19386 lt!234828)))))

(declare-fun c!59956 () Bool)

(assert (=> b!512782 (= c!59956 (= lt!234829 k!2280))))

(declare-fun b!512784 () Bool)

(declare-fun c!59957 () Bool)

(assert (=> b!512784 (= c!59957 (= lt!234829 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!512784 (= e!299444 e!299445)))

(assert (= (and d!78919 c!59955) b!512781))

(assert (= (and d!78919 (not c!59955)) b!512782))

(assert (= (and b!512782 c!59956) b!512778))

(assert (= (and b!512782 (not c!59956)) b!512784))

(assert (= (and b!512784 c!59957) b!512779))

(assert (= (and b!512784 (not c!59957)) b!512780))

(declare-fun m!494471 () Bool)

(assert (=> b!512780 m!494471))

(assert (=> d!78919 m!494231))

(declare-fun m!494473 () Bool)

(assert (=> d!78919 m!494473))

(declare-fun m!494475 () Bool)

(assert (=> d!78919 m!494475))

(assert (=> d!78919 m!494475))

(declare-fun m!494477 () Bool)

(assert (=> d!78919 m!494477))

(declare-fun m!494479 () Bool)

(assert (=> d!78919 m!494479))

(declare-fun m!494481 () Bool)

(assert (=> d!78919 m!494481))

(declare-fun m!494483 () Bool)

(assert (=> b!512782 m!494483))

(assert (=> b!512457 d!78919))

(declare-fun d!78939 () Bool)

(declare-fun res!313441 () Bool)

(declare-fun e!299456 () Bool)

(assert (=> d!78939 (=> res!313441 e!299456)))

(assert (=> d!78939 (= res!313441 (= (select (arr!15825 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!78939 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!299456)))

(declare-fun b!512798 () Bool)

(declare-fun e!299457 () Bool)

(assert (=> b!512798 (= e!299456 e!299457)))

(declare-fun res!313442 () Bool)

(assert (=> b!512798 (=> (not res!313442) (not e!299457))))

(assert (=> b!512798 (= res!313442 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16189 a!3235)))))

(declare-fun b!512799 () Bool)

(assert (=> b!512799 (= e!299457 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!78939 (not res!313441)) b!512798))

(assert (= (and b!512798 res!313442) b!512799))

(assert (=> d!78939 m!494345))

(declare-fun m!494485 () Bool)

(assert (=> b!512799 m!494485))

(assert (=> b!512464 d!78939))

(declare-fun d!78941 () Bool)

(assert (=> d!78941 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

