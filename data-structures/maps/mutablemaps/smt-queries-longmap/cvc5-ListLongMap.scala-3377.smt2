; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!46624 () Bool)

(assert start!46624)

(declare-fun res!314403 () Bool)

(declare-fun e!300448 () Bool)

(assert (=> start!46624 (=> (not res!314403) (not e!300448))))

(declare-fun mask!3524 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!46624 (= res!314403 (validMask!0 mask!3524))))

(assert (=> start!46624 e!300448))

(assert (=> start!46624 true))

(declare-datatypes ((array!32953 0))(
  ( (array!32954 (arr!15843 (Array (_ BitVec 32) (_ BitVec 64))) (size!16207 (_ BitVec 32))) )
))
(declare-fun a!3235 () array!32953)

(declare-fun array_inv!11617 (array!32953) Bool)

(assert (=> start!46624 (array_inv!11617 a!3235)))

(declare-fun b!514498 () Bool)

(declare-fun res!314397 () Bool)

(declare-fun e!300447 () Bool)

(assert (=> b!514498 (=> (not res!314397) (not e!300447))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!32953 (_ BitVec 32)) Bool)

(assert (=> b!514498 (= res!314397 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524))))

(declare-fun b!514499 () Bool)

(declare-fun res!314399 () Bool)

(declare-fun e!300451 () Bool)

(assert (=> b!514499 (=> res!314399 e!300451)))

(declare-datatypes ((SeekEntryResult!4317 0))(
  ( (MissingZero!4317 (index!19456 (_ BitVec 32))) (Found!4317 (index!19457 (_ BitVec 32))) (Intermediate!4317 (undefined!5129 Bool) (index!19458 (_ BitVec 32)) (x!48453 (_ BitVec 32))) (Undefined!4317) (MissingVacant!4317 (index!19459 (_ BitVec 32))) )
))
(declare-fun lt!235592 () SeekEntryResult!4317)

(assert (=> b!514499 (= res!314399 (or (undefined!5129 lt!235592) (not (is-Intermediate!4317 lt!235592))))))

(declare-fun b!514500 () Bool)

(declare-fun res!314404 () Bool)

(assert (=> b!514500 (=> (not res!314404) (not e!300448))))

(declare-fun k!2280 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!514500 (= res!314404 (validKeyInArray!0 k!2280))))

(declare-fun b!514501 () Bool)

(assert (=> b!514501 (= e!300451 (and (bvsge (index!19458 lt!235592) #b00000000000000000000000000000000) (bvslt (index!19458 lt!235592) (size!16207 a!3235))))))

(declare-fun j!176 () (_ BitVec 32))

(assert (=> b!514501 (and (bvslt (x!48453 lt!235592) #b01111111111111111111111111111110) (or (= (select (arr!15843 a!3235) (index!19458 lt!235592)) (select (arr!15843 a!3235) j!176)) (= (select (arr!15843 a!3235) (index!19458 lt!235592)) #b0000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!15843 a!3235) (index!19458 lt!235592)) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!514502 () Bool)

(declare-fun res!314405 () Bool)

(assert (=> b!514502 (=> (not res!314405) (not e!300447))))

(declare-datatypes ((List!10054 0))(
  ( (Nil!10051) (Cons!10050 (h!10945 (_ BitVec 64)) (t!16290 List!10054)) )
))
(declare-fun arrayNoDuplicates!0 (array!32953 (_ BitVec 32) List!10054) Bool)

(assert (=> b!514502 (= res!314405 (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10051))))

(declare-fun b!514503 () Bool)

(declare-fun res!314401 () Bool)

(assert (=> b!514503 (=> (not res!314401) (not e!300448))))

(declare-fun i!1204 () (_ BitVec 32))

(assert (=> b!514503 (= res!314401 (and (= (size!16207 a!3235) (bvadd #b00000000000000000000000000000001 mask!3524)) (bvsge i!1204 #b00000000000000000000000000000000) (bvslt i!1204 (size!16207 a!3235)) (bvsge j!176 #b00000000000000000000000000000000) (bvslt j!176 (size!16207 a!3235)) (not (= i!1204 j!176))))))

(declare-fun b!514504 () Bool)

(assert (=> b!514504 (= e!300448 e!300447)))

(declare-fun res!314398 () Bool)

(assert (=> b!514504 (=> (not res!314398) (not e!300447))))

(declare-fun lt!235589 () SeekEntryResult!4317)

(assert (=> b!514504 (= res!314398 (or (= lt!235589 (MissingZero!4317 i!1204)) (= lt!235589 (MissingVacant!4317 i!1204))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!32953 (_ BitVec 32)) SeekEntryResult!4317)

(assert (=> b!514504 (= lt!235589 (seekEntryOrOpen!0 k!2280 a!3235 mask!3524))))

(declare-fun b!514505 () Bool)

(assert (=> b!514505 (= e!300447 (not e!300451))))

(declare-fun res!314395 () Bool)

(assert (=> b!514505 (=> res!314395 e!300451)))

(declare-fun lt!235588 () (_ BitVec 32))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32953 (_ BitVec 32)) SeekEntryResult!4317)

(assert (=> b!514505 (= res!314395 (= lt!235592 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235588 (select (store (arr!15843 a!3235) i!1204 k!2280) j!176) (array!32954 (store (arr!15843 a!3235) i!1204 k!2280) (size!16207 a!3235)) mask!3524)))))

(declare-fun lt!235591 () (_ BitVec 32))

(assert (=> b!514505 (= lt!235592 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235591 (select (arr!15843 a!3235) j!176) a!3235 mask!3524))))

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514505 (= lt!235588 (toIndex!0 (select (store (arr!15843 a!3235) i!1204 k!2280) j!176) mask!3524))))

(assert (=> b!514505 (= lt!235591 (toIndex!0 (select (arr!15843 a!3235) j!176) mask!3524))))

(declare-fun e!300449 () Bool)

(assert (=> b!514505 e!300449))

(declare-fun res!314400 () Bool)

(assert (=> b!514505 (=> (not res!314400) (not e!300449))))

(assert (=> b!514505 (= res!314400 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524))))

(declare-datatypes ((Unit!15884 0))(
  ( (Unit!15885) )
))
(declare-fun lt!235590 () Unit!15884)

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!32953 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15884)

(assert (=> b!514505 (= lt!235590 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(declare-fun b!514506 () Bool)

(declare-fun res!314402 () Bool)

(assert (=> b!514506 (=> (not res!314402) (not e!300448))))

(assert (=> b!514506 (= res!314402 (validKeyInArray!0 (select (arr!15843 a!3235) j!176)))))

(declare-fun b!514507 () Bool)

(assert (=> b!514507 (= e!300449 (= (seekEntryOrOpen!0 (select (arr!15843 a!3235) j!176) a!3235 mask!3524) (Found!4317 j!176)))))

(declare-fun b!514508 () Bool)

(declare-fun res!314396 () Bool)

(assert (=> b!514508 (=> (not res!314396) (not e!300448))))

(declare-fun arrayContainsKey!0 (array!32953 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!514508 (= res!314396 (not (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000)))))

(assert (= (and start!46624 res!314403) b!514503))

(assert (= (and b!514503 res!314401) b!514506))

(assert (= (and b!514506 res!314402) b!514500))

(assert (= (and b!514500 res!314404) b!514508))

(assert (= (and b!514508 res!314396) b!514504))

(assert (= (and b!514504 res!314398) b!514498))

(assert (= (and b!514498 res!314397) b!514502))

(assert (= (and b!514502 res!314405) b!514505))

(assert (= (and b!514505 res!314400) b!514507))

(assert (= (and b!514505 (not res!314395)) b!514499))

(assert (= (and b!514499 (not res!314399)) b!514501))

(declare-fun m!495889 () Bool)

(assert (=> b!514502 m!495889))

(declare-fun m!495891 () Bool)

(assert (=> start!46624 m!495891))

(declare-fun m!495893 () Bool)

(assert (=> start!46624 m!495893))

(declare-fun m!495895 () Bool)

(assert (=> b!514506 m!495895))

(assert (=> b!514506 m!495895))

(declare-fun m!495897 () Bool)

(assert (=> b!514506 m!495897))

(declare-fun m!495899 () Bool)

(assert (=> b!514501 m!495899))

(assert (=> b!514501 m!495895))

(declare-fun m!495901 () Bool)

(assert (=> b!514498 m!495901))

(declare-fun m!495903 () Bool)

(assert (=> b!514500 m!495903))

(declare-fun m!495905 () Bool)

(assert (=> b!514504 m!495905))

(assert (=> b!514505 m!495895))

(declare-fun m!495907 () Bool)

(assert (=> b!514505 m!495907))

(declare-fun m!495909 () Bool)

(assert (=> b!514505 m!495909))

(declare-fun m!495911 () Bool)

(assert (=> b!514505 m!495911))

(assert (=> b!514505 m!495895))

(declare-fun m!495913 () Bool)

(assert (=> b!514505 m!495913))

(assert (=> b!514505 m!495895))

(declare-fun m!495915 () Bool)

(assert (=> b!514505 m!495915))

(assert (=> b!514505 m!495911))

(declare-fun m!495917 () Bool)

(assert (=> b!514505 m!495917))

(declare-fun m!495919 () Bool)

(assert (=> b!514505 m!495919))

(assert (=> b!514505 m!495911))

(declare-fun m!495921 () Bool)

(assert (=> b!514505 m!495921))

(declare-fun m!495923 () Bool)

(assert (=> b!514508 m!495923))

(assert (=> b!514507 m!495895))

(assert (=> b!514507 m!495895))

(declare-fun m!495925 () Bool)

(assert (=> b!514507 m!495925))

(push 1)

(assert (not b!514507))

(assert (not b!514504))

(assert (not b!514500))

(assert (not b!514505))

(assert (not b!514502))

(assert (not start!46624))

(assert (not b!514508))

(assert (not b!514498))

(assert (not b!514506))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!514646 () Bool)

(declare-fun e!300529 () Bool)

(declare-fun e!300527 () Bool)

(assert (=> b!514646 (= e!300529 e!300527)))

(declare-fun c!60365 () Bool)

(assert (=> b!514646 (= c!60365 (validKeyInArray!0 (select (arr!15843 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514647 () Bool)

(declare-fun call!31625 () Bool)

(assert (=> b!514647 (= e!300527 call!31625)))

(declare-fun d!79337 () Bool)

(declare-fun res!314492 () Bool)

(assert (=> d!79337 (=> res!314492 e!300529)))

(assert (=> d!79337 (= res!314492 (bvsge #b00000000000000000000000000000000 (size!16207 a!3235)))))

(assert (=> d!79337 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3235 mask!3524) e!300529)))

(declare-fun b!514648 () Bool)

(declare-fun e!300528 () Bool)

(assert (=> b!514648 (= e!300528 call!31625)))

(declare-fun bm!31622 () Bool)

(assert (=> bm!31622 (= call!31625 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!514649 () Bool)

(assert (=> b!514649 (= e!300527 e!300528)))

(declare-fun lt!235656 () (_ BitVec 64))

(assert (=> b!514649 (= lt!235656 (select (arr!15843 a!3235) #b00000000000000000000000000000000))))

(declare-fun lt!235657 () Unit!15884)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!32953 (_ BitVec 64) (_ BitVec 32)) Unit!15884)

(assert (=> b!514649 (= lt!235657 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235656 #b00000000000000000000000000000000))))

(assert (=> b!514649 (arrayContainsKey!0 a!3235 lt!235656 #b00000000000000000000000000000000)))

(declare-fun lt!235658 () Unit!15884)

(assert (=> b!514649 (= lt!235658 lt!235657)))

(declare-fun res!314491 () Bool)

(assert (=> b!514649 (= res!314491 (= (seekEntryOrOpen!0 (select (arr!15843 a!3235) #b00000000000000000000000000000000) a!3235 mask!3524) (Found!4317 #b00000000000000000000000000000000)))))

(assert (=> b!514649 (=> (not res!314491) (not e!300528))))

(assert (= (and d!79337 (not res!314492)) b!514646))

(assert (= (and b!514646 c!60365) b!514649))

(assert (= (and b!514646 (not c!60365)) b!514647))

(assert (= (and b!514649 res!314491) b!514648))

(assert (= (or b!514648 b!514647) bm!31622))

(declare-fun m!496045 () Bool)

(assert (=> b!514646 m!496045))

(assert (=> b!514646 m!496045))

(declare-fun m!496047 () Bool)

(assert (=> b!514646 m!496047))

(declare-fun m!496049 () Bool)

(assert (=> bm!31622 m!496049))

(assert (=> b!514649 m!496045))

(declare-fun m!496051 () Bool)

(assert (=> b!514649 m!496051))

(declare-fun m!496053 () Bool)

(assert (=> b!514649 m!496053))

(assert (=> b!514649 m!496045))

(declare-fun m!496055 () Bool)

(assert (=> b!514649 m!496055))

(assert (=> b!514498 d!79337))

(declare-fun d!79345 () Bool)

(declare-fun lt!235691 () SeekEntryResult!4317)

(assert (=> d!79345 (and (or (is-Undefined!4317 lt!235691) (not (is-Found!4317 lt!235691)) (and (bvsge (index!19457 lt!235691) #b00000000000000000000000000000000) (bvslt (index!19457 lt!235691) (size!16207 a!3235)))) (or (is-Undefined!4317 lt!235691) (is-Found!4317 lt!235691) (not (is-MissingZero!4317 lt!235691)) (and (bvsge (index!19456 lt!235691) #b00000000000000000000000000000000) (bvslt (index!19456 lt!235691) (size!16207 a!3235)))) (or (is-Undefined!4317 lt!235691) (is-Found!4317 lt!235691) (is-MissingZero!4317 lt!235691) (not (is-MissingVacant!4317 lt!235691)) (and (bvsge (index!19459 lt!235691) #b00000000000000000000000000000000) (bvslt (index!19459 lt!235691) (size!16207 a!3235)))) (or (is-Undefined!4317 lt!235691) (ite (is-Found!4317 lt!235691) (= (select (arr!15843 a!3235) (index!19457 lt!235691)) k!2280) (ite (is-MissingZero!4317 lt!235691) (= (select (arr!15843 a!3235) (index!19456 lt!235691)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4317 lt!235691) (= (select (arr!15843 a!3235) (index!19459 lt!235691)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!300577 () SeekEntryResult!4317)

(assert (=> d!79345 (= lt!235691 e!300577)))

(declare-fun c!60388 () Bool)

(declare-fun lt!235689 () SeekEntryResult!4317)

(assert (=> d!79345 (= c!60388 (and (is-Intermediate!4317 lt!235689) (undefined!5129 lt!235689)))))

(assert (=> d!79345 (= lt!235689 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2280 mask!3524) k!2280 a!3235 mask!3524))))

(assert (=> d!79345 (validMask!0 mask!3524)))

(assert (=> d!79345 (= (seekEntryOrOpen!0 k!2280 a!3235 mask!3524) lt!235691)))

(declare-fun b!514720 () Bool)

(declare-fun c!60390 () Bool)

(declare-fun lt!235690 () (_ BitVec 64))

(assert (=> b!514720 (= c!60390 (= lt!235690 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!300575 () SeekEntryResult!4317)

(declare-fun e!300576 () SeekEntryResult!4317)

(assert (=> b!514720 (= e!300575 e!300576)))

(declare-fun b!514721 () Bool)

(assert (=> b!514721 (= e!300576 (MissingZero!4317 (index!19458 lt!235689)))))

(declare-fun b!514722 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!32953 (_ BitVec 32)) SeekEntryResult!4317)

(assert (=> b!514722 (= e!300576 (seekKeyOrZeroReturnVacant!0 (x!48453 lt!235689) (index!19458 lt!235689) (index!19458 lt!235689) k!2280 a!3235 mask!3524))))

(declare-fun b!514723 () Bool)

(assert (=> b!514723 (= e!300577 e!300575)))

(assert (=> b!514723 (= lt!235690 (select (arr!15843 a!3235) (index!19458 lt!235689)))))

(declare-fun c!60389 () Bool)

(assert (=> b!514723 (= c!60389 (= lt!235690 k!2280))))

(declare-fun b!514724 () Bool)

(assert (=> b!514724 (= e!300577 Undefined!4317)))

(declare-fun b!514725 () Bool)

(assert (=> b!514725 (= e!300575 (Found!4317 (index!19458 lt!235689)))))

(assert (= (and d!79345 c!60388) b!514724))

(assert (= (and d!79345 (not c!60388)) b!514723))

(assert (= (and b!514723 c!60389) b!514725))

(assert (= (and b!514723 (not c!60389)) b!514720))

(assert (= (and b!514720 c!60390) b!514721))

(assert (= (and b!514720 (not c!60390)) b!514722))

(declare-fun m!496093 () Bool)

(assert (=> d!79345 m!496093))

(declare-fun m!496095 () Bool)

(assert (=> d!79345 m!496095))

(declare-fun m!496097 () Bool)

(assert (=> d!79345 m!496097))

(declare-fun m!496099 () Bool)

(assert (=> d!79345 m!496099))

(declare-fun m!496101 () Bool)

(assert (=> d!79345 m!496101))

(assert (=> d!79345 m!496099))

(assert (=> d!79345 m!495891))

(declare-fun m!496103 () Bool)

(assert (=> b!514722 m!496103))

(declare-fun m!496105 () Bool)

(assert (=> b!514723 m!496105))

(assert (=> b!514504 d!79345))

(declare-fun d!79361 () Bool)

(declare-fun lt!235701 () (_ BitVec 32))

(declare-fun lt!235700 () (_ BitVec 32))

(assert (=> d!79361 (= lt!235701 (bvmul (bvxor lt!235700 (bvlshr lt!235700 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79361 (= lt!235700 ((_ extract 31 0) (bvand (bvxor (select (arr!15843 a!3235) j!176) (bvlshr (select (arr!15843 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79361 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314524 (let ((h!10950 ((_ extract 31 0) (bvand (bvxor (select (arr!15843 a!3235) j!176) (bvlshr (select (arr!15843 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48459 (bvmul (bvxor h!10950 (bvlshr h!10950 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48459 (bvlshr x!48459 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314524 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314524 #b00000000000000000000000000000000))))))

(assert (=> d!79361 (= (toIndex!0 (select (arr!15843 a!3235) j!176) mask!3524) (bvand (bvxor lt!235701 (bvlshr lt!235701 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!514505 d!79361))

(declare-fun b!514735 () Bool)

(declare-fun e!300585 () Bool)

(declare-fun e!300583 () Bool)

(assert (=> b!514735 (= e!300585 e!300583)))

(declare-fun c!60394 () Bool)

(assert (=> b!514735 (= c!60394 (validKeyInArray!0 (select (arr!15843 a!3235) j!176)))))

(declare-fun b!514736 () Bool)

(declare-fun call!31630 () Bool)

(assert (=> b!514736 (= e!300583 call!31630)))

(declare-fun d!79365 () Bool)

(declare-fun res!314526 () Bool)

(assert (=> d!79365 (=> res!314526 e!300585)))

(assert (=> d!79365 (= res!314526 (bvsge j!176 (size!16207 a!3235)))))

(assert (=> d!79365 (= (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524) e!300585)))

(declare-fun b!514737 () Bool)

(declare-fun e!300584 () Bool)

(assert (=> b!514737 (= e!300584 call!31630)))

(declare-fun bm!31627 () Bool)

(assert (=> bm!31627 (= call!31630 (arrayForallSeekEntryOrOpenFound!0 (bvadd j!176 #b00000000000000000000000000000001) a!3235 mask!3524))))

(declare-fun b!514738 () Bool)

(assert (=> b!514738 (= e!300583 e!300584)))

(declare-fun lt!235703 () (_ BitVec 64))

(assert (=> b!514738 (= lt!235703 (select (arr!15843 a!3235) j!176))))

(declare-fun lt!235704 () Unit!15884)

(assert (=> b!514738 (= lt!235704 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3235 lt!235703 j!176))))

(assert (=> b!514738 (arrayContainsKey!0 a!3235 lt!235703 #b00000000000000000000000000000000)))

(declare-fun lt!235705 () Unit!15884)

(assert (=> b!514738 (= lt!235705 lt!235704)))

(declare-fun res!314525 () Bool)

(assert (=> b!514738 (= res!314525 (= (seekEntryOrOpen!0 (select (arr!15843 a!3235) j!176) a!3235 mask!3524) (Found!4317 j!176)))))

(assert (=> b!514738 (=> (not res!314525) (not e!300584))))

(assert (= (and d!79365 (not res!314526)) b!514735))

(assert (= (and b!514735 c!60394) b!514738))

(assert (= (and b!514735 (not c!60394)) b!514736))

(assert (= (and b!514738 res!314525) b!514737))

(assert (= (or b!514737 b!514736) bm!31627))

(assert (=> b!514735 m!495895))

(assert (=> b!514735 m!495895))

(assert (=> b!514735 m!495897))

(declare-fun m!496117 () Bool)

(assert (=> bm!31627 m!496117))

(assert (=> b!514738 m!495895))

(declare-fun m!496119 () Bool)

(assert (=> b!514738 m!496119))

(declare-fun m!496121 () Bool)

(assert (=> b!514738 m!496121))

(assert (=> b!514738 m!495895))

(assert (=> b!514738 m!495925))

(assert (=> b!514505 d!79365))

(declare-fun b!514813 () Bool)

(declare-fun lt!235730 () SeekEntryResult!4317)

(assert (=> b!514813 (and (bvsge (index!19458 lt!235730) #b00000000000000000000000000000000) (bvslt (index!19458 lt!235730) (size!16207 a!3235)))))

(declare-fun res!314556 () Bool)

(assert (=> b!514813 (= res!314556 (= (select (arr!15843 a!3235) (index!19458 lt!235730)) (select (arr!15843 a!3235) j!176)))))

(declare-fun e!300634 () Bool)

(assert (=> b!514813 (=> res!314556 e!300634)))

(declare-fun e!300635 () Bool)

(assert (=> b!514813 (= e!300635 e!300634)))

(declare-fun b!514814 () Bool)

(assert (=> b!514814 (and (bvsge (index!19458 lt!235730) #b00000000000000000000000000000000) (bvslt (index!19458 lt!235730) (size!16207 a!3235)))))

(declare-fun res!314555 () Bool)

(assert (=> b!514814 (= res!314555 (= (select (arr!15843 a!3235) (index!19458 lt!235730)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514814 (=> res!314555 e!300634)))

(declare-fun e!300632 () SeekEntryResult!4317)

(declare-fun b!514815 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!514815 (= e!300632 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235591 #b00000000000000000000000000000000 mask!3524) (select (arr!15843 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!514816 () Bool)

(declare-fun e!300631 () SeekEntryResult!4317)

(assert (=> b!514816 (= e!300631 e!300632)))

(declare-fun lt!235729 () (_ BitVec 64))

(declare-fun c!60419 () Bool)

(assert (=> b!514816 (= c!60419 (or (= lt!235729 (select (arr!15843 a!3235) j!176)) (= (bvadd lt!235729 lt!235729) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!79371 () Bool)

(declare-fun e!300633 () Bool)

(assert (=> d!79371 e!300633))

(declare-fun c!60420 () Bool)

(assert (=> d!79371 (= c!60420 (and (is-Intermediate!4317 lt!235730) (undefined!5129 lt!235730)))))

(assert (=> d!79371 (= lt!235730 e!300631)))

(declare-fun c!60418 () Bool)

(assert (=> d!79371 (= c!60418 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79371 (= lt!235729 (select (arr!15843 a!3235) lt!235591))))

(assert (=> d!79371 (validMask!0 mask!3524)))

(assert (=> d!79371 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235591 (select (arr!15843 a!3235) j!176) a!3235 mask!3524) lt!235730)))

(declare-fun b!514817 () Bool)

(assert (=> b!514817 (= e!300633 (bvsge (x!48453 lt!235730) #b01111111111111111111111111111110))))

(declare-fun b!514818 () Bool)

(assert (=> b!514818 (and (bvsge (index!19458 lt!235730) #b00000000000000000000000000000000) (bvslt (index!19458 lt!235730) (size!16207 a!3235)))))

(assert (=> b!514818 (= e!300634 (= (select (arr!15843 a!3235) (index!19458 lt!235730)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!514819 () Bool)

(assert (=> b!514819 (= e!300631 (Intermediate!4317 true lt!235591 #b00000000000000000000000000000000))))

(declare-fun b!514820 () Bool)

(assert (=> b!514820 (= e!300633 e!300635)))

(declare-fun res!314557 () Bool)

(assert (=> b!514820 (= res!314557 (and (is-Intermediate!4317 lt!235730) (not (undefined!5129 lt!235730)) (bvslt (x!48453 lt!235730) #b01111111111111111111111111111110) (bvsge (x!48453 lt!235730) #b00000000000000000000000000000000) (bvsge (x!48453 lt!235730) #b00000000000000000000000000000000)))))

(assert (=> b!514820 (=> (not res!314557) (not e!300635))))

(declare-fun b!514821 () Bool)

(assert (=> b!514821 (= e!300632 (Intermediate!4317 false lt!235591 #b00000000000000000000000000000000))))

(assert (= (and d!79371 c!60418) b!514819))

(assert (= (and d!79371 (not c!60418)) b!514816))

(assert (= (and b!514816 c!60419) b!514821))

(assert (= (and b!514816 (not c!60419)) b!514815))

(assert (= (and d!79371 c!60420) b!514817))

(assert (= (and d!79371 (not c!60420)) b!514820))

(assert (= (and b!514820 res!314557) b!514813))

(assert (= (and b!514813 (not res!314556)) b!514814))

(assert (= (and b!514814 (not res!314555)) b!514818))

(declare-fun m!496155 () Bool)

(assert (=> b!514814 m!496155))

(declare-fun m!496157 () Bool)

(assert (=> b!514815 m!496157))

(assert (=> b!514815 m!496157))

(assert (=> b!514815 m!495895))

(declare-fun m!496159 () Bool)

(assert (=> b!514815 m!496159))

(declare-fun m!496161 () Bool)

(assert (=> d!79371 m!496161))

(assert (=> d!79371 m!495891))

(assert (=> b!514813 m!496155))

(assert (=> b!514818 m!496155))

(assert (=> b!514505 d!79371))

(declare-fun b!514826 () Bool)

(declare-fun lt!235735 () SeekEntryResult!4317)

(assert (=> b!514826 (and (bvsge (index!19458 lt!235735) #b00000000000000000000000000000000) (bvslt (index!19458 lt!235735) (size!16207 (array!32954 (store (arr!15843 a!3235) i!1204 k!2280) (size!16207 a!3235)))))))

(declare-fun res!314561 () Bool)

(assert (=> b!514826 (= res!314561 (= (select (arr!15843 (array!32954 (store (arr!15843 a!3235) i!1204 k!2280) (size!16207 a!3235))) (index!19458 lt!235735)) (select (store (arr!15843 a!3235) i!1204 k!2280) j!176)))))

(declare-fun e!300642 () Bool)

(assert (=> b!514826 (=> res!314561 e!300642)))

(declare-fun e!300643 () Bool)

(assert (=> b!514826 (= e!300643 e!300642)))

(declare-fun b!514827 () Bool)

(assert (=> b!514827 (and (bvsge (index!19458 lt!235735) #b00000000000000000000000000000000) (bvslt (index!19458 lt!235735) (size!16207 (array!32954 (store (arr!15843 a!3235) i!1204 k!2280) (size!16207 a!3235)))))))

(declare-fun res!314560 () Bool)

(assert (=> b!514827 (= res!314560 (= (select (arr!15843 (array!32954 (store (arr!15843 a!3235) i!1204 k!2280) (size!16207 a!3235))) (index!19458 lt!235735)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!514827 (=> res!314560 e!300642)))

(declare-fun e!300640 () SeekEntryResult!4317)

(declare-fun b!514828 () Bool)

(assert (=> b!514828 (= e!300640 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 lt!235588 #b00000000000000000000000000000000 mask!3524) (select (store (arr!15843 a!3235) i!1204 k!2280) j!176) (array!32954 (store (arr!15843 a!3235) i!1204 k!2280) (size!16207 a!3235)) mask!3524))))

(declare-fun b!514829 () Bool)

(declare-fun e!300639 () SeekEntryResult!4317)

(assert (=> b!514829 (= e!300639 e!300640)))

(declare-fun lt!235734 () (_ BitVec 64))

(declare-fun c!60423 () Bool)

(assert (=> b!514829 (= c!60423 (or (= lt!235734 (select (store (arr!15843 a!3235) i!1204 k!2280) j!176)) (= (bvadd lt!235734 lt!235734) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!79385 () Bool)

(declare-fun e!300641 () Bool)

(assert (=> d!79385 e!300641))

(declare-fun c!60424 () Bool)

(assert (=> d!79385 (= c!60424 (and (is-Intermediate!4317 lt!235735) (undefined!5129 lt!235735)))))

(assert (=> d!79385 (= lt!235735 e!300639)))

(declare-fun c!60422 () Bool)

(assert (=> d!79385 (= c!60422 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!79385 (= lt!235734 (select (arr!15843 (array!32954 (store (arr!15843 a!3235) i!1204 k!2280) (size!16207 a!3235))) lt!235588))))

(assert (=> d!79385 (validMask!0 mask!3524)))

(assert (=> d!79385 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 lt!235588 (select (store (arr!15843 a!3235) i!1204 k!2280) j!176) (array!32954 (store (arr!15843 a!3235) i!1204 k!2280) (size!16207 a!3235)) mask!3524) lt!235735)))

(declare-fun b!514830 () Bool)

(assert (=> b!514830 (= e!300641 (bvsge (x!48453 lt!235735) #b01111111111111111111111111111110))))

(declare-fun b!514831 () Bool)

(assert (=> b!514831 (and (bvsge (index!19458 lt!235735) #b00000000000000000000000000000000) (bvslt (index!19458 lt!235735) (size!16207 (array!32954 (store (arr!15843 a!3235) i!1204 k!2280) (size!16207 a!3235)))))))

(assert (=> b!514831 (= e!300642 (= (select (arr!15843 (array!32954 (store (arr!15843 a!3235) i!1204 k!2280) (size!16207 a!3235))) (index!19458 lt!235735)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!514832 () Bool)

(assert (=> b!514832 (= e!300639 (Intermediate!4317 true lt!235588 #b00000000000000000000000000000000))))

(declare-fun b!514833 () Bool)

(assert (=> b!514833 (= e!300641 e!300643)))

(declare-fun res!314562 () Bool)

(assert (=> b!514833 (= res!314562 (and (is-Intermediate!4317 lt!235735) (not (undefined!5129 lt!235735)) (bvslt (x!48453 lt!235735) #b01111111111111111111111111111110) (bvsge (x!48453 lt!235735) #b00000000000000000000000000000000) (bvsge (x!48453 lt!235735) #b00000000000000000000000000000000)))))

(assert (=> b!514833 (=> (not res!314562) (not e!300643))))

(declare-fun b!514834 () Bool)

(assert (=> b!514834 (= e!300640 (Intermediate!4317 false lt!235588 #b00000000000000000000000000000000))))

(assert (= (and d!79385 c!60422) b!514832))

(assert (= (and d!79385 (not c!60422)) b!514829))

(assert (= (and b!514829 c!60423) b!514834))

(assert (= (and b!514829 (not c!60423)) b!514828))

(assert (= (and d!79385 c!60424) b!514830))

(assert (= (and d!79385 (not c!60424)) b!514833))

(assert (= (and b!514833 res!314562) b!514826))

(assert (= (and b!514826 (not res!314561)) b!514827))

(assert (= (and b!514827 (not res!314560)) b!514831))

(declare-fun m!496169 () Bool)

(assert (=> b!514827 m!496169))

(declare-fun m!496171 () Bool)

(assert (=> b!514828 m!496171))

(assert (=> b!514828 m!496171))

(assert (=> b!514828 m!495911))

(declare-fun m!496173 () Bool)

(assert (=> b!514828 m!496173))

(declare-fun m!496175 () Bool)

(assert (=> d!79385 m!496175))

(assert (=> d!79385 m!495891))

(assert (=> b!514826 m!496169))

(assert (=> b!514831 m!496169))

(assert (=> b!514505 d!79385))

(declare-fun d!79389 () Bool)

(assert (=> d!79389 (arrayForallSeekEntryOrOpenFound!0 j!176 a!3235 mask!3524)))

(declare-fun lt!235743 () Unit!15884)

(declare-fun choose!38 (array!32953 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!15884)

(assert (=> d!79389 (= lt!235743 (choose!38 a!3235 mask!3524 #b00000000000000000000000000000000 j!176))))

(assert (=> d!79389 (validMask!0 mask!3524)))

(assert (=> d!79389 (= (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 a!3235 mask!3524 #b00000000000000000000000000000000 j!176) lt!235743)))

(declare-fun bs!16271 () Bool)

(assert (= bs!16271 d!79389))

(assert (=> bs!16271 m!495915))

(declare-fun m!496179 () Bool)

(assert (=> bs!16271 m!496179))

(assert (=> bs!16271 m!495891))

(assert (=> b!514505 d!79389))

(declare-fun d!79395 () Bool)

(declare-fun lt!235748 () (_ BitVec 32))

(declare-fun lt!235747 () (_ BitVec 32))

(assert (=> d!79395 (= lt!235748 (bvmul (bvxor lt!235747 (bvlshr lt!235747 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!79395 (= lt!235747 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15843 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15843 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!79395 (and (bvsge mask!3524 #b00000000000000000000000000000000) (let ((res!314524 (let ((h!10950 ((_ extract 31 0) (bvand (bvxor (select (store (arr!15843 a!3235) i!1204 k!2280) j!176) (bvlshr (select (store (arr!15843 a!3235) i!1204 k!2280) j!176) #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!48459 (bvmul (bvxor h!10950 (bvlshr h!10950 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!48459 (bvlshr x!48459 #b00000000000000000000000000001101)) mask!3524))))) (and (bvslt res!314524 (bvadd mask!3524 #b00000000000000000000000000000001)) (bvsge res!314524 #b00000000000000000000000000000000))))))

(assert (=> d!79395 (= (toIndex!0 (select (store (arr!15843 a!3235) i!1204 k!2280) j!176) mask!3524) (bvand (bvxor lt!235748 (bvlshr lt!235748 #b00000000000000000000000000001101)) mask!3524))))

(assert (=> b!514505 d!79395))

(declare-fun d!79397 () Bool)

(assert (=> d!79397 (= (validKeyInArray!0 k!2280) (and (not (= k!2280 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2280 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!514500 d!79397))

(declare-fun d!79401 () Bool)

(assert (=> d!79401 (= (validKeyInArray!0 (select (arr!15843 a!3235) j!176)) (and (not (= (select (arr!15843 a!3235) j!176) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!15843 a!3235) j!176) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!514506 d!79401))

(declare-fun d!79403 () Bool)

(declare-fun lt!235751 () SeekEntryResult!4317)

(assert (=> d!79403 (and (or (is-Undefined!4317 lt!235751) (not (is-Found!4317 lt!235751)) (and (bvsge (index!19457 lt!235751) #b00000000000000000000000000000000) (bvslt (index!19457 lt!235751) (size!16207 a!3235)))) (or (is-Undefined!4317 lt!235751) (is-Found!4317 lt!235751) (not (is-MissingZero!4317 lt!235751)) (and (bvsge (index!19456 lt!235751) #b00000000000000000000000000000000) (bvslt (index!19456 lt!235751) (size!16207 a!3235)))) (or (is-Undefined!4317 lt!235751) (is-Found!4317 lt!235751) (is-MissingZero!4317 lt!235751) (not (is-MissingVacant!4317 lt!235751)) (and (bvsge (index!19459 lt!235751) #b00000000000000000000000000000000) (bvslt (index!19459 lt!235751) (size!16207 a!3235)))) (or (is-Undefined!4317 lt!235751) (ite (is-Found!4317 lt!235751) (= (select (arr!15843 a!3235) (index!19457 lt!235751)) (select (arr!15843 a!3235) j!176)) (ite (is-MissingZero!4317 lt!235751) (= (select (arr!15843 a!3235) (index!19456 lt!235751)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!4317 lt!235751) (= (select (arr!15843 a!3235) (index!19459 lt!235751)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!300649 () SeekEntryResult!4317)

(assert (=> d!79403 (= lt!235751 e!300649)))

(declare-fun c!60426 () Bool)

(declare-fun lt!235749 () SeekEntryResult!4317)

(assert (=> d!79403 (= c!60426 (and (is-Intermediate!4317 lt!235749) (undefined!5129 lt!235749)))))

(assert (=> d!79403 (= lt!235749 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!15843 a!3235) j!176) mask!3524) (select (arr!15843 a!3235) j!176) a!3235 mask!3524))))

(assert (=> d!79403 (validMask!0 mask!3524)))

(assert (=> d!79403 (= (seekEntryOrOpen!0 (select (arr!15843 a!3235) j!176) a!3235 mask!3524) lt!235751)))

(declare-fun b!514839 () Bool)

(declare-fun c!60428 () Bool)

(declare-fun lt!235750 () (_ BitVec 64))

(assert (=> b!514839 (= c!60428 (= lt!235750 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!300647 () SeekEntryResult!4317)

(declare-fun e!300648 () SeekEntryResult!4317)

(assert (=> b!514839 (= e!300647 e!300648)))

(declare-fun b!514840 () Bool)

(assert (=> b!514840 (= e!300648 (MissingZero!4317 (index!19458 lt!235749)))))

(declare-fun b!514841 () Bool)

(assert (=> b!514841 (= e!300648 (seekKeyOrZeroReturnVacant!0 (x!48453 lt!235749) (index!19458 lt!235749) (index!19458 lt!235749) (select (arr!15843 a!3235) j!176) a!3235 mask!3524))))

(declare-fun b!514842 () Bool)

(assert (=> b!514842 (= e!300649 e!300647)))

(assert (=> b!514842 (= lt!235750 (select (arr!15843 a!3235) (index!19458 lt!235749)))))

(declare-fun c!60427 () Bool)

(assert (=> b!514842 (= c!60427 (= lt!235750 (select (arr!15843 a!3235) j!176)))))

(declare-fun b!514843 () Bool)

(assert (=> b!514843 (= e!300649 Undefined!4317)))

(declare-fun b!514844 () Bool)

(assert (=> b!514844 (= e!300647 (Found!4317 (index!19458 lt!235749)))))

(assert (= (and d!79403 c!60426) b!514843))

(assert (= (and d!79403 (not c!60426)) b!514842))

(assert (= (and b!514842 c!60427) b!514844))

(assert (= (and b!514842 (not c!60427)) b!514839))

(assert (= (and b!514839 c!60428) b!514840))

(assert (= (and b!514839 (not c!60428)) b!514841))

(declare-fun m!496189 () Bool)

(assert (=> d!79403 m!496189))

(declare-fun m!496191 () Bool)

(assert (=> d!79403 m!496191))

(declare-fun m!496193 () Bool)

(assert (=> d!79403 m!496193))

(assert (=> d!79403 m!495913))

(assert (=> d!79403 m!495895))

(declare-fun m!496195 () Bool)

(assert (=> d!79403 m!496195))

(assert (=> d!79403 m!495895))

(assert (=> d!79403 m!495913))

(assert (=> d!79403 m!495891))

(assert (=> b!514841 m!495895))

(declare-fun m!496197 () Bool)

(assert (=> b!514841 m!496197))

(declare-fun m!496199 () Bool)

(assert (=> b!514842 m!496199))

(assert (=> b!514507 d!79403))

(declare-fun b!514855 () Bool)

(declare-fun e!300661 () Bool)

(declare-fun call!31637 () Bool)

(assert (=> b!514855 (= e!300661 call!31637)))

(declare-fun b!514856 () Bool)

(declare-fun e!300660 () Bool)

(declare-fun e!300658 () Bool)

(assert (=> b!514856 (= e!300660 e!300658)))

(declare-fun res!314571 () Bool)

(assert (=> b!514856 (=> (not res!314571) (not e!300658))))

(declare-fun e!300659 () Bool)

(assert (=> b!514856 (= res!314571 (not e!300659))))

(declare-fun res!314573 () Bool)

(assert (=> b!514856 (=> (not res!314573) (not e!300659))))

(assert (=> b!514856 (= res!314573 (validKeyInArray!0 (select (arr!15843 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514857 () Bool)

(declare-fun contains!2746 (List!10054 (_ BitVec 64)) Bool)

(assert (=> b!514857 (= e!300659 (contains!2746 Nil!10051 (select (arr!15843 a!3235) #b00000000000000000000000000000000)))))

(declare-fun b!514858 () Bool)

(assert (=> b!514858 (= e!300658 e!300661)))

(declare-fun c!60431 () Bool)

(assert (=> b!514858 (= c!60431 (validKeyInArray!0 (select (arr!15843 a!3235) #b00000000000000000000000000000000)))))

(declare-fun d!79405 () Bool)

(declare-fun res!314572 () Bool)

(assert (=> d!79405 (=> res!314572 e!300660)))

(assert (=> d!79405 (= res!314572 (bvsge #b00000000000000000000000000000000 (size!16207 a!3235)))))

(assert (=> d!79405 (= (arrayNoDuplicates!0 a!3235 #b00000000000000000000000000000000 Nil!10051) e!300660)))

(declare-fun bm!31634 () Bool)

(assert (=> bm!31634 (= call!31637 (arrayNoDuplicates!0 a!3235 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!60431 (Cons!10050 (select (arr!15843 a!3235) #b00000000000000000000000000000000) Nil!10051) Nil!10051)))))

(declare-fun b!514859 () Bool)

(assert (=> b!514859 (= e!300661 call!31637)))

(assert (= (and d!79405 (not res!314572)) b!514856))

(assert (= (and b!514856 res!314573) b!514857))

(assert (= (and b!514856 res!314571) b!514858))

(assert (= (and b!514858 c!60431) b!514855))

(assert (= (and b!514858 (not c!60431)) b!514859))

(assert (= (or b!514855 b!514859) bm!31634))

(assert (=> b!514856 m!496045))

(assert (=> b!514856 m!496045))

(assert (=> b!514856 m!496047))

(assert (=> b!514857 m!496045))

(assert (=> b!514857 m!496045))

(declare-fun m!496201 () Bool)

(assert (=> b!514857 m!496201))

(assert (=> b!514858 m!496045))

(assert (=> b!514858 m!496045))

(assert (=> b!514858 m!496047))

(assert (=> bm!31634 m!496045))

(declare-fun m!496203 () Bool)

(assert (=> bm!31634 m!496203))

(assert (=> b!514502 d!79405))

(declare-fun d!79407 () Bool)

(declare-fun res!314578 () Bool)

(declare-fun e!300666 () Bool)

(assert (=> d!79407 (=> res!314578 e!300666)))

(assert (=> d!79407 (= res!314578 (= (select (arr!15843 a!3235) #b00000000000000000000000000000000) k!2280))))

(assert (=> d!79407 (= (arrayContainsKey!0 a!3235 k!2280 #b00000000000000000000000000000000) e!300666)))

(declare-fun b!514864 () Bool)

(declare-fun e!300667 () Bool)

(assert (=> b!514864 (= e!300666 e!300667)))

(declare-fun res!314579 () Bool)

(assert (=> b!514864 (=> (not res!314579) (not e!300667))))

(assert (=> b!514864 (= res!314579 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!16207 a!3235)))))

(declare-fun b!514865 () Bool)

(assert (=> b!514865 (= e!300667 (arrayContainsKey!0 a!3235 k!2280 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!79407 (not res!314578)) b!514864))

(assert (= (and b!514864 res!314579) b!514865))

(assert (=> d!79407 m!496045))

(declare-fun m!496205 () Bool)

(assert (=> b!514865 m!496205))

(assert (=> b!514508 d!79407))

(declare-fun d!79413 () Bool)

(assert (=> d!79413 (= (validMask!0 mask!3524) (and (or (= mask!3524 #b00000000000000000000000000000111) (= mask!3524 #b00000000000000000000000000001111) (= mask!3524 #b00000000000000000000000000011111) (= mask!3524 #b00000000000000000000000000111111) (= mask!3524 #b00000000000000000000000001111111) (= mask!3524 #b00000000000000000000000011111111) (= mask!3524 #b00000000000000000000000111111111) (= mask!3524 #b00000000000000000000001111111111) (= mask!3524 #b00000000000000000000011111111111) (= mask!3524 #b00000000000000000000111111111111) (= mask!3524 #b00000000000000000001111111111111) (= mask!3524 #b00000000000000000011111111111111) (= mask!3524 #b00000000000000000111111111111111) (= mask!3524 #b00000000000000001111111111111111) (= mask!3524 #b00000000000000011111111111111111) (= mask!3524 #b00000000000000111111111111111111) (= mask!3524 #b00000000000001111111111111111111) (= mask!3524 #b00000000000011111111111111111111) (= mask!3524 #b00000000000111111111111111111111) (= mask!3524 #b00000000001111111111111111111111) (= mask!3524 #b00000000011111111111111111111111) (= mask!3524 #b00000000111111111111111111111111) (= mask!3524 #b00000001111111111111111111111111) (= mask!3524 #b00000011111111111111111111111111) (= mask!3524 #b00000111111111111111111111111111) (= mask!3524 #b00001111111111111111111111111111) (= mask!3524 #b00011111111111111111111111111111) (= mask!3524 #b00111111111111111111111111111111)) (bvsle mask!3524 #b00111111111111111111111111111111)))))

(assert (=> start!46624 d!79413))

(declare-fun d!79415 () Bool)

(assert (=> d!79415 (= (array_inv!11617 a!3235) (bvsge (size!16207 a!3235) #b00000000000000000000000000000000))))

(assert (=> start!46624 d!79415))

(push 1)

(assert (not d!79403))

(assert (not b!514841))

(assert (not d!79389))

(assert (not b!514856))

(assert (not bm!31622))

(assert (not b!514858))

(assert (not bm!31634))

(assert (not bm!31627))

(assert (not b!514865))

(assert (not b!514735))

(assert (not b!514722))

(assert (not b!514857))

(assert (not b!514649))

(assert (not b!514738))

(assert (not b!514646))

(assert (not b!514828))

(assert (not d!79385))

(assert (not d!79345))

(assert (not b!514815))

(assert (not d!79371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

