; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26984 () Bool)

(assert start!26984)

(declare-fun b!279274 () Bool)

(declare-fun res!142570 () Bool)

(declare-fun e!178046 () Bool)

(assert (=> b!279274 (=> (not res!142570) (not e!178046))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!279274 (= res!142570 (validKeyInArray!0 k!2581))))

(declare-fun b!279275 () Bool)

(declare-fun e!178047 () Bool)

(declare-datatypes ((List!4420 0))(
  ( (Nil!4417) (Cons!4416 (h!5086 (_ BitVec 64)) (t!9510 List!4420)) )
))
(declare-fun contains!1970 (List!4420 (_ BitVec 64)) Bool)

(assert (=> b!279275 (= e!178047 (contains!1970 Nil!4417 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!279276 () Bool)

(declare-fun res!142567 () Bool)

(declare-fun e!178048 () Bool)

(assert (=> b!279276 (=> (not res!142567) (not e!178048))))

(declare-datatypes ((array!13893 0))(
  ( (array!13894 (arr!6591 (Array (_ BitVec 32) (_ BitVec 64))) (size!6943 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13893)

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!279276 (= res!142567 (validKeyInArray!0 (select (arr!6591 a!3325) startIndex!26)))))

(declare-fun res!142569 () Bool)

(assert (=> start!26984 (=> (not res!142569) (not e!178046))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26984 (= res!142569 (validMask!0 mask!3868))))

(assert (=> start!26984 e!178046))

(declare-fun array_inv!4545 (array!13893) Bool)

(assert (=> start!26984 (array_inv!4545 a!3325)))

(assert (=> start!26984 true))

(declare-fun b!279277 () Bool)

(declare-fun res!142572 () Bool)

(assert (=> b!279277 (=> (not res!142572) (not e!178046))))

(declare-fun arrayContainsKey!0 (array!13893 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!279277 (= res!142572 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!279278 () Bool)

(declare-fun res!142571 () Bool)

(assert (=> b!279278 (=> (not res!142571) (not e!178048))))

(declare-fun noDuplicate!154 (List!4420) Bool)

(assert (=> b!279278 (= res!142571 (noDuplicate!154 Nil!4417))))

(declare-fun b!279279 () Bool)

(declare-fun res!142562 () Bool)

(assert (=> b!279279 (=> (not res!142562) (not e!178046))))

(declare-fun arrayNoDuplicates!0 (array!13893 (_ BitVec 32) List!4420) Bool)

(assert (=> b!279279 (= res!142562 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4417))))

(declare-fun b!279280 () Bool)

(assert (=> b!279280 (= e!178048 e!178047)))

(declare-fun res!142561 () Bool)

(assert (=> b!279280 (=> res!142561 e!178047)))

(assert (=> b!279280 (= res!142561 (contains!1970 Nil!4417 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!279281 () Bool)

(declare-fun res!142568 () Bool)

(assert (=> b!279281 (=> (not res!142568) (not e!178048))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13893 (_ BitVec 32)) Bool)

(assert (=> b!279281 (= res!142568 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!279282 () Bool)

(declare-fun res!142566 () Bool)

(assert (=> b!279282 (=> (not res!142566) (not e!178046))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!279282 (= res!142566 (and (= (size!6943 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6943 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6943 a!3325))))))

(declare-fun b!279283 () Bool)

(assert (=> b!279283 (= e!178046 e!178048)))

(declare-fun res!142564 () Bool)

(assert (=> b!279283 (=> (not res!142564) (not e!178048))))

(declare-datatypes ((SeekEntryResult!1760 0))(
  ( (MissingZero!1760 (index!9210 (_ BitVec 32))) (Found!1760 (index!9211 (_ BitVec 32))) (Intermediate!1760 (undefined!2572 Bool) (index!9212 (_ BitVec 32)) (x!27422 (_ BitVec 32))) (Undefined!1760) (MissingVacant!1760 (index!9213 (_ BitVec 32))) )
))
(declare-fun lt!138611 () SeekEntryResult!1760)

(assert (=> b!279283 (= res!142564 (or (= lt!138611 (MissingZero!1760 i!1267)) (= lt!138611 (MissingVacant!1760 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13893 (_ BitVec 32)) SeekEntryResult!1760)

(assert (=> b!279283 (= lt!138611 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!279284 () Bool)

(declare-fun res!142565 () Bool)

(assert (=> b!279284 (=> (not res!142565) (not e!178048))))

(assert (=> b!279284 (= res!142565 (not (= startIndex!26 i!1267)))))

(declare-fun b!279285 () Bool)

(declare-fun res!142563 () Bool)

(assert (=> b!279285 (=> (not res!142563) (not e!178048))))

(assert (=> b!279285 (= res!142563 (and (bvslt (size!6943 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6943 a!3325))))))

(assert (= (and start!26984 res!142569) b!279282))

(assert (= (and b!279282 res!142566) b!279274))

(assert (= (and b!279274 res!142570) b!279279))

(assert (= (and b!279279 res!142562) b!279277))

(assert (= (and b!279277 res!142572) b!279283))

(assert (= (and b!279283 res!142564) b!279281))

(assert (= (and b!279281 res!142568) b!279284))

(assert (= (and b!279284 res!142565) b!279276))

(assert (= (and b!279276 res!142567) b!279285))

(assert (= (and b!279285 res!142563) b!279278))

(assert (= (and b!279278 res!142571) b!279280))

(assert (= (and b!279280 (not res!142561)) b!279275))

(declare-fun m!294097 () Bool)

(assert (=> b!279276 m!294097))

(assert (=> b!279276 m!294097))

(declare-fun m!294099 () Bool)

(assert (=> b!279276 m!294099))

(declare-fun m!294101 () Bool)

(assert (=> b!279277 m!294101))

(declare-fun m!294103 () Bool)

(assert (=> b!279281 m!294103))

(declare-fun m!294105 () Bool)

(assert (=> b!279274 m!294105))

(declare-fun m!294107 () Bool)

(assert (=> b!279280 m!294107))

(declare-fun m!294109 () Bool)

(assert (=> b!279275 m!294109))

(declare-fun m!294111 () Bool)

(assert (=> start!26984 m!294111))

(declare-fun m!294113 () Bool)

(assert (=> start!26984 m!294113))

(declare-fun m!294115 () Bool)

(assert (=> b!279278 m!294115))

(declare-fun m!294117 () Bool)

(assert (=> b!279283 m!294117))

(declare-fun m!294119 () Bool)

(assert (=> b!279279 m!294119))

(push 1)

(assert (not b!279278))

(assert (not b!279276))

(assert (not b!279279))

(assert (not b!279280))

(assert (not b!279277))

(assert (not start!26984))

(assert (not b!279283))

(assert (not b!279281))

(assert (not b!279274))

(assert (not b!279275))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64967 () Bool)

(assert (=> d!64967 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!26984 d!64967))

(declare-fun d!64971 () Bool)

(assert (=> d!64971 (= (array_inv!4545 a!3325) (bvsge (size!6943 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!26984 d!64971))

(declare-fun d!64973 () Bool)

(declare-fun res!142612 () Bool)

(declare-fun e!178100 () Bool)

(assert (=> d!64973 (=> res!142612 e!178100)))

(assert (=> d!64973 (= res!142612 (is-Nil!4417 Nil!4417))))

(assert (=> d!64973 (= (noDuplicate!154 Nil!4417) e!178100)))

(declare-fun b!279349 () Bool)

(declare-fun e!178101 () Bool)

(assert (=> b!279349 (= e!178100 e!178101)))

(declare-fun res!142613 () Bool)

(assert (=> b!279349 (=> (not res!142613) (not e!178101))))

(assert (=> b!279349 (= res!142613 (not (contains!1970 (t!9510 Nil!4417) (h!5086 Nil!4417))))))

(declare-fun b!279350 () Bool)

(assert (=> b!279350 (= e!178101 (noDuplicate!154 (t!9510 Nil!4417)))))

(assert (= (and d!64973 (not res!142612)) b!279349))

(assert (= (and b!279349 res!142613) b!279350))

(declare-fun m!294157 () Bool)

(assert (=> b!279349 m!294157))

(declare-fun m!294159 () Bool)

(assert (=> b!279350 m!294159))

(assert (=> b!279278 d!64973))

(declare-fun b!279384 () Bool)

(declare-fun e!178124 () SeekEntryResult!1760)

(assert (=> b!279384 (= e!178124 Undefined!1760)))

(declare-fun d!64979 () Bool)

(declare-fun lt!138644 () SeekEntryResult!1760)

(assert (=> d!64979 (and (or (is-Undefined!1760 lt!138644) (not (is-Found!1760 lt!138644)) (and (bvsge (index!9211 lt!138644) #b00000000000000000000000000000000) (bvslt (index!9211 lt!138644) (size!6943 a!3325)))) (or (is-Undefined!1760 lt!138644) (is-Found!1760 lt!138644) (not (is-MissingZero!1760 lt!138644)) (and (bvsge (index!9210 lt!138644) #b00000000000000000000000000000000) (bvslt (index!9210 lt!138644) (size!6943 a!3325)))) (or (is-Undefined!1760 lt!138644) (is-Found!1760 lt!138644) (is-MissingZero!1760 lt!138644) (not (is-MissingVacant!1760 lt!138644)) (and (bvsge (index!9213 lt!138644) #b00000000000000000000000000000000) (bvslt (index!9213 lt!138644) (size!6943 a!3325)))) (or (is-Undefined!1760 lt!138644) (ite (is-Found!1760 lt!138644) (= (select (arr!6591 a!3325) (index!9211 lt!138644)) k!2581) (ite (is-MissingZero!1760 lt!138644) (= (select (arr!6591 a!3325) (index!9210 lt!138644)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1760 lt!138644) (= (select (arr!6591 a!3325) (index!9213 lt!138644)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64979 (= lt!138644 e!178124)))

(declare-fun c!45935 () Bool)

(declare-fun lt!138643 () SeekEntryResult!1760)

(assert (=> d!64979 (= c!45935 (and (is-Intermediate!1760 lt!138643) (undefined!2572 lt!138643)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13893 (_ BitVec 32)) SeekEntryResult!1760)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64979 (= lt!138643 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868))))

(assert (=> d!64979 (validMask!0 mask!3868)))

(assert (=> d!64979 (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) lt!138644)))

(declare-fun b!279385 () Bool)

(declare-fun e!178123 () SeekEntryResult!1760)

(assert (=> b!279385 (= e!178124 e!178123)))

(declare-fun lt!138645 () (_ BitVec 64))

(assert (=> b!279385 (= lt!138645 (select (arr!6591 a!3325) (index!9212 lt!138643)))))

(declare-fun c!45933 () Bool)

(assert (=> b!279385 (= c!45933 (= lt!138645 k!2581))))

(declare-fun b!279386 () Bool)

(declare-fun c!45934 () Bool)

(assert (=> b!279386 (= c!45934 (= lt!138645 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!178125 () SeekEntryResult!1760)

(assert (=> b!279386 (= e!178123 e!178125)))

(declare-fun b!279387 () Bool)

(assert (=> b!279387 (= e!178123 (Found!1760 (index!9212 lt!138643)))))

(declare-fun b!279388 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13893 (_ BitVec 32)) SeekEntryResult!1760)

(assert (=> b!279388 (= e!178125 (seekKeyOrZeroReturnVacant!0 (x!27422 lt!138643) (index!9212 lt!138643) (index!9212 lt!138643) k!2581 a!3325 mask!3868))))

(declare-fun b!279389 () Bool)

(assert (=> b!279389 (= e!178125 (MissingZero!1760 (index!9212 lt!138643)))))

(assert (= (and d!64979 c!45935) b!279384))

(assert (= (and d!64979 (not c!45935)) b!279385))

(assert (= (and b!279385 c!45933) b!279387))

(assert (= (and b!279385 (not c!45933)) b!279386))

(assert (= (and b!279386 c!45934) b!279389))

(assert (= (and b!279386 (not c!45934)) b!279388))

(declare-fun m!294183 () Bool)

(assert (=> d!64979 m!294183))

(declare-fun m!294185 () Bool)

(assert (=> d!64979 m!294185))

(declare-fun m!294187 () Bool)

(assert (=> d!64979 m!294187))

(declare-fun m!294189 () Bool)

(assert (=> d!64979 m!294189))

(assert (=> d!64979 m!294111))

(declare-fun m!294191 () Bool)

(assert (=> d!64979 m!294191))

(assert (=> d!64979 m!294183))

(declare-fun m!294193 () Bool)

(assert (=> b!279385 m!294193))

(declare-fun m!294195 () Bool)

(assert (=> b!279388 m!294195))

(assert (=> b!279283 d!64979))

(declare-fun d!64995 () Bool)

(declare-fun res!142633 () Bool)

(declare-fun e!178136 () Bool)

(assert (=> d!64995 (=> res!142633 e!178136)))

(assert (=> d!64995 (= res!142633 (= (select (arr!6591 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!64995 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!178136)))

(declare-fun b!279400 () Bool)

(declare-fun e!178137 () Bool)

(assert (=> b!279400 (= e!178136 e!178137)))

(declare-fun res!142634 () Bool)

(assert (=> b!279400 (=> (not res!142634) (not e!178137))))

(assert (=> b!279400 (= res!142634 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6943 a!3325)))))

(declare-fun b!279401 () Bool)

(assert (=> b!279401 (= e!178137 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64995 (not res!142633)) b!279400))

(assert (= (and b!279400 res!142634) b!279401))

(declare-fun m!294199 () Bool)

(assert (=> d!64995 m!294199))

(declare-fun m!294201 () Bool)

(assert (=> b!279401 m!294201))

(assert (=> b!279277 d!64995))

(declare-fun d!65001 () Bool)

(assert (=> d!65001 (= (validKeyInArray!0 (select (arr!6591 a!3325) startIndex!26)) (and (not (= (select (arr!6591 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6591 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!279276 d!65001))

(declare-fun bm!25432 () Bool)

(declare-fun call!25435 () Bool)

(assert (=> bm!25432 (= call!25435 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!279448 () Bool)

(declare-fun e!178171 () Bool)

(assert (=> b!279448 (= e!178171 call!25435)))

(declare-fun b!279449 () Bool)

(declare-fun e!178172 () Bool)

(assert (=> b!279449 (= e!178172 e!178171)))

(declare-fun c!45949 () Bool)

(assert (=> b!279449 (= c!45949 (validKeyInArray!0 (select (arr!6591 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279450 () Bool)

(declare-fun e!178173 () Bool)

(assert (=> b!279450 (= e!178171 e!178173)))

(declare-fun lt!138669 () (_ BitVec 64))

(assert (=> b!279450 (= lt!138669 (select (arr!6591 a!3325) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8813 0))(
  ( (Unit!8814) )
))
(declare-fun lt!138667 () Unit!8813)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13893 (_ BitVec 64) (_ BitVec 32)) Unit!8813)

