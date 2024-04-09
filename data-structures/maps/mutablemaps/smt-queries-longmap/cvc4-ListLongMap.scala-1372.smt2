; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!27044 () Bool)

(assert start!27044)

(declare-fun b!279585 () Bool)

(declare-fun res!142785 () Bool)

(declare-fun e!178223 () Bool)

(assert (=> b!279585 (=> (not res!142785) (not e!178223))))

(declare-datatypes ((array!13902 0))(
  ( (array!13903 (arr!6594 (Array (_ BitVec 32) (_ BitVec 64))) (size!6946 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13902)

(assert (=> b!279585 (= res!142785 (and (bvslt (size!6946 a!3325) #b01111111111111111111111111111111) (bvslt #b00000000000000000000000000000000 (size!6946 a!3325))))))

(declare-fun b!279586 () Bool)

(declare-fun res!142783 () Bool)

(assert (=> b!279586 (=> (not res!142783) (not e!178223))))

(declare-datatypes ((List!4423 0))(
  ( (Nil!4420) (Cons!4419 (h!5089 (_ BitVec 64)) (t!9513 List!4423)) )
))
(declare-fun contains!1973 (List!4423 (_ BitVec 64)) Bool)

(assert (=> b!279586 (= res!142783 (not (contains!1973 Nil!4420 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!279587 () Bool)

(declare-fun res!142786 () Bool)

(assert (=> b!279587 (=> (not res!142786) (not e!178223))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!279587 (= res!142786 (not (= startIndex!26 i!1267)))))

(declare-fun b!279589 () Bool)

(declare-fun e!178225 () Bool)

(assert (=> b!279589 (= e!178225 e!178223)))

(declare-fun res!142789 () Bool)

(assert (=> b!279589 (=> (not res!142789) (not e!178223))))

(declare-datatypes ((SeekEntryResult!1763 0))(
  ( (MissingZero!1763 (index!9222 (_ BitVec 32))) (Found!1763 (index!9223 (_ BitVec 32))) (Intermediate!1763 (undefined!2575 Bool) (index!9224 (_ BitVec 32)) (x!27433 (_ BitVec 32))) (Undefined!1763) (MissingVacant!1763 (index!9225 (_ BitVec 32))) )
))
(declare-fun lt!138686 () SeekEntryResult!1763)

(assert (=> b!279589 (= res!142789 (or (= lt!138686 (MissingZero!1763 i!1267)) (= lt!138686 (MissingVacant!1763 i!1267))))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13902 (_ BitVec 32)) SeekEntryResult!1763)

(assert (=> b!279589 (= lt!138686 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun b!279590 () Bool)

(declare-fun res!142793 () Bool)

(assert (=> b!279590 (=> (not res!142793) (not e!178223))))

(declare-fun noDuplicate!157 (List!4423) Bool)

(assert (=> b!279590 (= res!142793 (noDuplicate!157 Nil!4420))))

(declare-fun b!279591 () Bool)

(declare-fun res!142782 () Bool)

(assert (=> b!279591 (=> (not res!142782) (not e!178225))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!279591 (= res!142782 (validKeyInArray!0 k!2581))))

(declare-fun b!279592 () Bool)

(declare-fun res!142792 () Bool)

(assert (=> b!279592 (=> (not res!142792) (not e!178223))))

(assert (=> b!279592 (= res!142792 (validKeyInArray!0 (select (arr!6594 a!3325) startIndex!26)))))

(declare-fun b!279593 () Bool)

(assert (=> b!279593 (= e!178223 (contains!1973 Nil!4420 k!2581))))

(declare-fun b!279594 () Bool)

(declare-fun res!142790 () Bool)

(assert (=> b!279594 (=> (not res!142790) (not e!178225))))

(assert (=> b!279594 (= res!142790 (and (= (size!6946 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6946 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6946 a!3325))))))

(declare-fun b!279595 () Bool)

(declare-fun res!142784 () Bool)

(assert (=> b!279595 (=> (not res!142784) (not e!178223))))

(assert (=> b!279595 (= res!142784 (not (contains!1973 Nil!4420 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!279596 () Bool)

(declare-fun res!142787 () Bool)

(assert (=> b!279596 (=> (not res!142787) (not e!178225))))

(declare-fun arrayNoDuplicates!0 (array!13902 (_ BitVec 32) List!4423) Bool)

(assert (=> b!279596 (= res!142787 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4420))))

(declare-fun b!279597 () Bool)

(declare-fun res!142794 () Bool)

(assert (=> b!279597 (=> (not res!142794) (not e!178223))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13902 (_ BitVec 32)) Bool)

(assert (=> b!279597 (= res!142794 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun res!142791 () Bool)

(assert (=> start!27044 (=> (not res!142791) (not e!178225))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!27044 (= res!142791 (validMask!0 mask!3868))))

(assert (=> start!27044 e!178225))

(declare-fun array_inv!4548 (array!13902) Bool)

(assert (=> start!27044 (array_inv!4548 a!3325)))

(assert (=> start!27044 true))

(declare-fun b!279588 () Bool)

(declare-fun res!142788 () Bool)

(assert (=> b!279588 (=> (not res!142788) (not e!178225))))

(declare-fun arrayContainsKey!0 (array!13902 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!279588 (= res!142788 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!27044 res!142791) b!279594))

(assert (= (and b!279594 res!142790) b!279591))

(assert (= (and b!279591 res!142782) b!279596))

(assert (= (and b!279596 res!142787) b!279588))

(assert (= (and b!279588 res!142788) b!279589))

(assert (= (and b!279589 res!142789) b!279597))

(assert (= (and b!279597 res!142794) b!279587))

(assert (= (and b!279587 res!142786) b!279592))

(assert (= (and b!279592 res!142792) b!279585))

(assert (= (and b!279585 res!142785) b!279590))

(assert (= (and b!279590 res!142793) b!279595))

(assert (= (and b!279595 res!142784) b!279586))

(assert (= (and b!279586 res!142783) b!279593))

(declare-fun m!294311 () Bool)

(assert (=> start!27044 m!294311))

(declare-fun m!294313 () Bool)

(assert (=> start!27044 m!294313))

(declare-fun m!294315 () Bool)

(assert (=> b!279595 m!294315))

(declare-fun m!294317 () Bool)

(assert (=> b!279588 m!294317))

(declare-fun m!294319 () Bool)

(assert (=> b!279586 m!294319))

(declare-fun m!294321 () Bool)

(assert (=> b!279592 m!294321))

(assert (=> b!279592 m!294321))

(declare-fun m!294323 () Bool)

(assert (=> b!279592 m!294323))

(declare-fun m!294325 () Bool)

(assert (=> b!279591 m!294325))

(declare-fun m!294327 () Bool)

(assert (=> b!279593 m!294327))

(declare-fun m!294329 () Bool)

(assert (=> b!279589 m!294329))

(declare-fun m!294331 () Bool)

(assert (=> b!279590 m!294331))

(declare-fun m!294333 () Bool)

(assert (=> b!279596 m!294333))

(declare-fun m!294335 () Bool)

(assert (=> b!279597 m!294335))

(push 1)

(assert (not b!279589))

(assert (not start!27044))

(assert (not b!279593))

(assert (not b!279586))

(assert (not b!279596))

(assert (not b!279591))

(assert (not b!279590))

(assert (not b!279595))

(assert (not b!279588))

(assert (not b!279592))

(assert (not b!279597))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!279676 () Bool)

(declare-fun e!178292 () SeekEntryResult!1763)

(declare-fun lt!138720 () SeekEntryResult!1763)

(assert (=> b!279676 (= e!178292 (MissingZero!1763 (index!9224 lt!138720)))))

(declare-fun b!279677 () Bool)

(declare-fun e!178293 () SeekEntryResult!1763)

(declare-fun e!178294 () SeekEntryResult!1763)

(assert (=> b!279677 (= e!178293 e!178294)))

(declare-fun lt!138722 () (_ BitVec 64))

(assert (=> b!279677 (= lt!138722 (select (arr!6594 a!3325) (index!9224 lt!138720)))))

(declare-fun c!45967 () Bool)

(assert (=> b!279677 (= c!45967 (= lt!138722 k!2581))))

(declare-fun b!279678 () Bool)

(assert (=> b!279678 (= e!178294 (Found!1763 (index!9224 lt!138720)))))

(declare-fun b!279679 () Bool)

(declare-fun c!45968 () Bool)

(assert (=> b!279679 (= c!45968 (= lt!138722 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!279679 (= e!178294 e!178292)))

(declare-fun b!279680 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13902 (_ BitVec 32)) SeekEntryResult!1763)

(assert (=> b!279680 (= e!178292 (seekKeyOrZeroReturnVacant!0 (x!27433 lt!138720) (index!9224 lt!138720) (index!9224 lt!138720) k!2581 a!3325 mask!3868))))

(declare-fun d!65031 () Bool)

(declare-fun lt!138721 () SeekEntryResult!1763)

(assert (=> d!65031 (and (or (is-Undefined!1763 lt!138721) (not (is-Found!1763 lt!138721)) (and (bvsge (index!9223 lt!138721) #b00000000000000000000000000000000) (bvslt (index!9223 lt!138721) (size!6946 a!3325)))) (or (is-Undefined!1763 lt!138721) (is-Found!1763 lt!138721) (not (is-MissingZero!1763 lt!138721)) (and (bvsge (index!9222 lt!138721) #b00000000000000000000000000000000) (bvslt (index!9222 lt!138721) (size!6946 a!3325)))) (or (is-Undefined!1763 lt!138721) (is-Found!1763 lt!138721) (is-MissingZero!1763 lt!138721) (not (is-MissingVacant!1763 lt!138721)) (and (bvsge (index!9225 lt!138721) #b00000000000000000000000000000000) (bvslt (index!9225 lt!138721) (size!6946 a!3325)))) (or (is-Undefined!1763 lt!138721) (ite (is-Found!1763 lt!138721) (= (select (arr!6594 a!3325) (index!9223 lt!138721)) k!2581) (ite (is-MissingZero!1763 lt!138721) (= (select (arr!6594 a!3325) (index!9222 lt!138721)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1763 lt!138721) (= (select (arr!6594 a!3325) (index!9225 lt!138721)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!65031 (= lt!138721 e!178293)))

(declare-fun c!45966 () Bool)

(assert (=> d!65031 (= c!45966 (and (is-Intermediate!1763 lt!138720) (undefined!2575 lt!138720)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13902 (_ BitVec 32)) SeekEntryResult!1763)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!65031 (= lt!138720 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868))))

(assert (=> d!65031 (validMask!0 mask!3868)))

(assert (=> d!65031 (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) lt!138721)))

(declare-fun b!279681 () Bool)

(assert (=> b!279681 (= e!178293 Undefined!1763)))

(assert (= (and d!65031 c!45966) b!279681))

(assert (= (and d!65031 (not c!45966)) b!279677))

(assert (= (and b!279677 c!45967) b!279678))

(assert (= (and b!279677 (not c!45967)) b!279679))

(assert (= (and b!279679 c!45968) b!279676))

(assert (= (and b!279679 (not c!45968)) b!279680))

(declare-fun m!294397 () Bool)

(assert (=> b!279677 m!294397))

(declare-fun m!294399 () Bool)

(assert (=> b!279680 m!294399))

(declare-fun m!294401 () Bool)

(assert (=> d!65031 m!294401))

(assert (=> d!65031 m!294311))

(declare-fun m!294403 () Bool)

(assert (=> d!65031 m!294403))

(declare-fun m!294405 () Bool)

(assert (=> d!65031 m!294405))

(assert (=> d!65031 m!294405))

(declare-fun m!294407 () Bool)

(assert (=> d!65031 m!294407))

(declare-fun m!294409 () Bool)

(assert (=> d!65031 m!294409))

(assert (=> b!279589 d!65031))

(declare-fun d!65061 () Bool)

(declare-fun res!142853 () Bool)

(declare-fun e!178299 () Bool)

(assert (=> d!65061 (=> res!142853 e!178299)))

(assert (=> d!65061 (= res!142853 (= (select (arr!6594 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!65061 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!178299)))

(declare-fun b!279686 () Bool)

(declare-fun e!178300 () Bool)

(assert (=> b!279686 (= e!178299 e!178300)))

(declare-fun res!142854 () Bool)

(assert (=> b!279686 (=> (not res!142854) (not e!178300))))

(assert (=> b!279686 (= res!142854 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6946 a!3325)))))

(declare-fun b!279687 () Bool)

(assert (=> b!279687 (= e!178300 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!65061 (not res!142853)) b!279686))

(assert (= (and b!279686 res!142854) b!279687))

(declare-fun m!294411 () Bool)

(assert (=> d!65061 m!294411))

(declare-fun m!294413 () Bool)

(assert (=> b!279687 m!294413))

(assert (=> b!279588 d!65061))

(declare-fun d!65063 () Bool)

(declare-fun lt!138725 () Bool)

(declare-fun content!189 (List!4423) (Set (_ BitVec 64)))

(assert (=> d!65063 (= lt!138725 (member k!2581 (content!189 Nil!4420)))))

(declare-fun e!178306 () Bool)

(assert (=> d!65063 (= lt!138725 e!178306)))

(declare-fun res!142859 () Bool)

(assert (=> d!65063 (=> (not res!142859) (not e!178306))))

(assert (=> d!65063 (= res!142859 (is-Cons!4419 Nil!4420))))

(assert (=> d!65063 (= (contains!1973 Nil!4420 k!2581) lt!138725)))

(declare-fun b!279692 () Bool)

(declare-fun e!178305 () Bool)

(assert (=> b!279692 (= e!178306 e!178305)))

(declare-fun res!142860 () Bool)

(assert (=> b!279692 (=> res!142860 e!178305)))

(assert (=> b!279692 (= res!142860 (= (h!5089 Nil!4420) k!2581))))

(declare-fun b!279693 () Bool)

(assert (=> b!279693 (= e!178305 (contains!1973 (t!9513 Nil!4420) k!2581))))

(assert (= (and d!65063 res!142859) b!279692))

(assert (= (and b!279692 (not res!142860)) b!279693))

(declare-fun m!294415 () Bool)

(assert (=> d!65063 m!294415))

(declare-fun m!294417 () Bool)

(assert (=> d!65063 m!294417))

(declare-fun m!294419 () Bool)

(assert (=> b!279693 m!294419))

(assert (=> b!279593 d!65063))

(declare-fun d!65065 () Bool)

(assert (=> d!65065 (= (validKeyInArray!0 (select (arr!6594 a!3325) startIndex!26)) (and (not (= (select (arr!6594 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6594 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!279592 d!65065))

(declare-fun d!65067 () Bool)

(assert (=> d!65067 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!27044 d!65067))

(declare-fun d!65073 () Bool)

(assert (=> d!65073 (= (array_inv!4548 a!3325) (bvsge (size!6946 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!27044 d!65073))

(declare-fun d!65077 () Bool)

(declare-fun lt!138735 () Bool)

(assert (=> d!65077 (= lt!138735 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!189 Nil!4420)))))

(declare-fun e!178317 () Bool)

(assert (=> d!65077 (= lt!138735 e!178317)))

(declare-fun res!142861 () Bool)

(assert (=> d!65077 (=> (not res!142861) (not e!178317))))

(assert (=> d!65077 (= res!142861 (is-Cons!4419 Nil!4420))))

(assert (=> d!65077 (= (contains!1973 Nil!4420 #b1000000000000000000000000000000000000000000000000000000000000000) lt!138735)))

(declare-fun b!279712 () Bool)

(declare-fun e!178316 () Bool)

(assert (=> b!279712 (= e!178317 e!178316)))

(declare-fun res!142862 () Bool)

(assert (=> b!279712 (=> res!142862 e!178316)))

(assert (=> b!279712 (= res!142862 (= (h!5089 Nil!4420) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!279713 () Bool)

(assert (=> b!279713 (= e!178316 (contains!1973 (t!9513 Nil!4420) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!65077 res!142861) b!279712))

(assert (= (and b!279712 (not res!142862)) b!279713))

(assert (=> d!65077 m!294415))

(declare-fun m!294435 () Bool)

(assert (=> d!65077 m!294435))

(declare-fun m!294437 () Bool)

(assert (=> b!279713 m!294437))

(assert (=> b!279586 d!65077))

(declare-fun b!279751 () Bool)

(declare-fun e!178345 () Bool)

(declare-fun e!178346 () Bool)

(assert (=> b!279751 (= e!178345 e!178346)))

(declare-fun lt!138749 () (_ BitVec 64))

(assert (=> b!279751 (= lt!138749 (select (arr!6594 a!3325) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8819 0))(
  ( (Unit!8820) )
))
(declare-fun lt!138750 () Unit!8819)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13902 (_ BitVec 64) (_ BitVec 32)) Unit!8819)

(assert (=> b!279751 (= lt!138750 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138749 #b00000000000000000000000000000000))))

(assert (=> b!279751 (arrayContainsKey!0 a!3325 lt!138749 #b00000000000000000000000000000000)))

(declare-fun lt!138751 () Unit!8819)

(assert (=> b!279751 (= lt!138751 lt!138750)))

(declare-fun res!142878 () Bool)

(assert (=> b!279751 (= res!142878 (= (seekEntryOrOpen!0 (select (arr!6594 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1763 #b00000000000000000000000000000000)))))

(assert (=> b!279751 (=> (not res!142878) (not e!178346))))

(declare-fun d!65079 () Bool)

(declare-fun res!142879 () Bool)

(declare-fun e!178344 () Bool)

(assert (=> d!65079 (=> res!142879 e!178344)))

(assert (=> d!65079 (= res!142879 (bvsge #b00000000000000000000000000000000 (size!6946 a!3325)))))

(assert (=> d!65079 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!178344)))

(declare-fun b!279752 () Bool)

(declare-fun call!25451 () Bool)

(assert (=> b!279752 (= e!178345 call!25451)))

(declare-fun bm!25448 () Bool)

(assert (=> bm!25448 (= call!25451 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!279753 () Bool)

(assert (=> b!279753 (= e!178344 e!178345)))

(declare-fun c!45989 () Bool)

(assert (=> b!279753 (= c!45989 (validKeyInArray!0 (select (arr!6594 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!279754 () Bool)

(assert (=> b!279754 (= e!178346 call!25451)))

(assert (= (and d!65079 (not res!142879)) b!279753))

(assert (= (and b!279753 c!45989) b!279751))

(assert (= (and b!279753 (not c!45989)) b!279752))

(assert (= (and b!279751 res!142878) b!279754))

(assert (= (or b!279754 b!279752) bm!25448))

(assert (=> b!279751 m!294411))

(declare-fun m!294447 () Bool)

(assert (=> b!279751 m!294447))

