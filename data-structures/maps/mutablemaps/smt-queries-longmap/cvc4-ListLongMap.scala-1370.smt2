; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26930 () Bool)

(assert start!26930)

(declare-fun b!278997 () Bool)

(declare-fun res!142375 () Bool)

(declare-fun e!177885 () Bool)

(assert (=> b!278997 (=> (not res!142375) (not e!177885))))

(declare-datatypes ((array!13884 0))(
  ( (array!13885 (arr!6588 (Array (_ BitVec 32) (_ BitVec 64))) (size!6940 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13884)

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13884 (_ BitVec 32)) Bool)

(assert (=> b!278997 (= res!142375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!278998 () Bool)

(declare-fun res!142378 () Bool)

(declare-fun e!177886 () Bool)

(assert (=> b!278998 (=> (not res!142378) (not e!177886))))

(declare-fun i!1267 () (_ BitVec 32))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!278998 (= res!142378 (and (= (size!6940 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6940 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6940 a!3325))))))

(declare-fun b!278999 () Bool)

(declare-fun res!142379 () Bool)

(assert (=> b!278999 (=> (not res!142379) (not e!177886))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!278999 (= res!142379 (validKeyInArray!0 k!2581))))

(declare-fun b!279000 () Bool)

(declare-fun res!142381 () Bool)

(assert (=> b!279000 (=> (not res!142381) (not e!177885))))

(assert (=> b!279000 (= res!142381 (validKeyInArray!0 (select (arr!6588 a!3325) startIndex!26)))))

(declare-fun b!279001 () Bool)

(assert (=> b!279001 (= e!177886 e!177885)))

(declare-fun res!142376 () Bool)

(assert (=> b!279001 (=> (not res!142376) (not e!177885))))

(declare-datatypes ((SeekEntryResult!1757 0))(
  ( (MissingZero!1757 (index!9198 (_ BitVec 32))) (Found!1757 (index!9199 (_ BitVec 32))) (Intermediate!1757 (undefined!2569 Bool) (index!9200 (_ BitVec 32)) (x!27411 (_ BitVec 32))) (Undefined!1757) (MissingVacant!1757 (index!9201 (_ BitVec 32))) )
))
(declare-fun lt!138548 () SeekEntryResult!1757)

(assert (=> b!279001 (= res!142376 (or (= lt!138548 (MissingZero!1757 i!1267)) (= lt!138548 (MissingVacant!1757 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13884 (_ BitVec 32)) SeekEntryResult!1757)

(assert (=> b!279001 (= lt!138548 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!279002 () Bool)

(declare-datatypes ((List!4417 0))(
  ( (Nil!4414) (Cons!4413 (h!5083 (_ BitVec 64)) (t!9507 List!4417)) )
))
(declare-fun noDuplicate!151 (List!4417) Bool)

(assert (=> b!279002 (= e!177885 (not (noDuplicate!151 Nil!4414)))))

(declare-fun b!279003 () Bool)

(declare-fun res!142377 () Bool)

(assert (=> b!279003 (=> (not res!142377) (not e!177885))))

(assert (=> b!279003 (= res!142377 (not (= startIndex!26 i!1267)))))

(declare-fun b!279004 () Bool)

(declare-fun res!142383 () Bool)

(assert (=> b!279004 (=> (not res!142383) (not e!177885))))

(assert (=> b!279004 (= res!142383 (and (bvslt (size!6940 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6940 a!3325))))))

(declare-fun res!142374 () Bool)

(assert (=> start!26930 (=> (not res!142374) (not e!177886))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26930 (= res!142374 (validMask!0 mask!3868))))

(assert (=> start!26930 e!177886))

(declare-fun array_inv!4542 (array!13884) Bool)

(assert (=> start!26930 (array_inv!4542 a!3325)))

(assert (=> start!26930 true))

(declare-fun b!279005 () Bool)

(declare-fun res!142380 () Bool)

(assert (=> b!279005 (=> (not res!142380) (not e!177886))))

(declare-fun arrayNoDuplicates!0 (array!13884 (_ BitVec 32) List!4417) Bool)

(assert (=> b!279005 (= res!142380 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4414))))

(declare-fun b!279006 () Bool)

(declare-fun res!142382 () Bool)

(assert (=> b!279006 (=> (not res!142382) (not e!177886))))

(declare-fun arrayContainsKey!0 (array!13884 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!279006 (= res!142382 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26930 res!142374) b!278998))

(assert (= (and b!278998 res!142378) b!278999))

(assert (= (and b!278999 res!142379) b!279005))

(assert (= (and b!279005 res!142380) b!279006))

(assert (= (and b!279006 res!142382) b!279001))

(assert (= (and b!279001 res!142376) b!278997))

(assert (= (and b!278997 res!142375) b!279003))

(assert (= (and b!279003 res!142377) b!279000))

(assert (= (and b!279000 res!142381) b!279004))

(assert (= (and b!279004 res!142383) b!279002))

(declare-fun m!293921 () Bool)

(assert (=> start!26930 m!293921))

(declare-fun m!293923 () Bool)

(assert (=> start!26930 m!293923))

(declare-fun m!293925 () Bool)

(assert (=> b!279005 m!293925))

(declare-fun m!293927 () Bool)

(assert (=> b!279006 m!293927))

(declare-fun m!293929 () Bool)

(assert (=> b!278999 m!293929))

(declare-fun m!293931 () Bool)

(assert (=> b!279002 m!293931))

(declare-fun m!293933 () Bool)

(assert (=> b!279001 m!293933))

(declare-fun m!293935 () Bool)

(assert (=> b!279000 m!293935))

(assert (=> b!279000 m!293935))

(declare-fun m!293937 () Bool)

(assert (=> b!279000 m!293937))

(declare-fun m!293939 () Bool)

(assert (=> b!278997 m!293939))

(push 1)

(assert (not b!279001))

(assert (not b!278999))

(assert (not b!279006))

(assert (not start!26930))

(assert (not b!279005))

(assert (not b!278997))

(assert (not b!279000))

(assert (not b!279002))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64909 () Bool)

(assert (=> d!64909 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!26930 d!64909))

(declare-fun d!64917 () Bool)

(assert (=> d!64917 (= (array_inv!4542 a!3325) (bvsge (size!6940 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!26930 d!64917))

(declare-fun d!64919 () Bool)

(assert (=> d!64919 (= (validKeyInArray!0 k!2581) (and (not (= k!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!278999 d!64919))

(declare-fun b!279068 () Bool)

(declare-fun e!177939 () Bool)

(declare-fun contains!1967 (List!4417 (_ BitVec 64)) Bool)

(assert (=> b!279068 (= e!177939 (contains!1967 Nil!4414 (select (arr!6588 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279069 () Bool)

(declare-fun e!177937 () Bool)

(declare-fun call!25415 () Bool)

(assert (=> b!279069 (= e!177937 call!25415)))

(declare-fun d!64921 () Bool)

(declare-fun res!142423 () Bool)

(declare-fun e!177938 () Bool)

(assert (=> d!64921 (=> res!142423 e!177938)))

(assert (=> d!64921 (= res!142423 (bvsge #b00000000000000000000000000000000 (size!6940 a!3325)))))

(assert (=> d!64921 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4414) e!177938)))

(declare-fun b!279070 () Bool)

(declare-fun e!177940 () Bool)

(assert (=> b!279070 (= e!177940 e!177937)))

(declare-fun c!45875 () Bool)

(assert (=> b!279070 (= c!45875 (validKeyInArray!0 (select (arr!6588 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279071 () Bool)

(assert (=> b!279071 (= e!177938 e!177940)))

(declare-fun res!142425 () Bool)

(assert (=> b!279071 (=> (not res!142425) (not e!177940))))

(assert (=> b!279071 (= res!142425 (not e!177939))))

(declare-fun res!142424 () Bool)

(assert (=> b!279071 (=> (not res!142424) (not e!177939))))

(assert (=> b!279071 (= res!142424 (validKeyInArray!0 (select (arr!6588 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279072 () Bool)

(assert (=> b!279072 (= e!177937 call!25415)))

(declare-fun bm!25412 () Bool)

(assert (=> bm!25412 (= call!25415 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45875 (Cons!4413 (select (arr!6588 a!3325) #b00000000000000000000000000000000) Nil!4414) Nil!4414)))))

(assert (= (and d!64921 (not res!142423)) b!279071))

(assert (= (and b!279071 res!142424) b!279068))

(assert (= (and b!279071 res!142425) b!279070))

(assert (= (and b!279070 c!45875) b!279069))

(assert (= (and b!279070 (not c!45875)) b!279072))

(assert (= (or b!279069 b!279072) bm!25412))

(declare-fun m!293975 () Bool)

(assert (=> b!279068 m!293975))

(assert (=> b!279068 m!293975))

(declare-fun m!293977 () Bool)

(assert (=> b!279068 m!293977))

(assert (=> b!279070 m!293975))

(assert (=> b!279070 m!293975))

(declare-fun m!293979 () Bool)

(assert (=> b!279070 m!293979))

(assert (=> b!279071 m!293975))

(assert (=> b!279071 m!293975))

(assert (=> b!279071 m!293979))

(assert (=> bm!25412 m!293975))

(declare-fun m!293981 () Bool)

(assert (=> bm!25412 m!293981))

(assert (=> b!279005 d!64921))

(declare-fun d!64933 () Bool)

(assert (=> d!64933 (= (validKeyInArray!0 (select (arr!6588 a!3325) startIndex!26)) (and (not (= (select (arr!6588 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6588 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!279000 d!64933))

(declare-fun d!64935 () Bool)

(declare-fun res!142430 () Bool)

(declare-fun e!177945 () Bool)

(assert (=> d!64935 (=> res!142430 e!177945)))

(assert (=> d!64935 (= res!142430 (= (select (arr!6588 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!64935 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!177945)))

(declare-fun b!279077 () Bool)

(declare-fun e!177946 () Bool)

(assert (=> b!279077 (= e!177945 e!177946)))

