; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26870 () Bool)

(assert start!26870)

(declare-fun b!278620 () Bool)

(declare-fun res!142087 () Bool)

(declare-fun e!177696 () Bool)

(assert (=> b!278620 (=> (not res!142087) (not e!177696))))

(declare-datatypes ((array!13863 0))(
  ( (array!13864 (arr!6579 (Array (_ BitVec 32) (_ BitVec 64))) (size!6931 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13863)

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!278620 (= res!142087 (validKeyInArray!0 (select (arr!6579 a!3325) startIndex!26)))))

(declare-fun b!278621 () Bool)

(declare-fun res!142093 () Bool)

(assert (=> b!278621 (=> (not res!142093) (not e!177696))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13863 (_ BitVec 32)) Bool)

(assert (=> b!278621 (= res!142093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!278622 () Bool)

(declare-fun res!142095 () Bool)

(declare-fun e!177695 () Bool)

(assert (=> b!278622 (=> (not res!142095) (not e!177695))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!13863 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!278622 (= res!142095 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(declare-fun b!278623 () Bool)

(declare-fun res!142089 () Bool)

(assert (=> b!278623 (=> (not res!142089) (not e!177696))))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!278623 (= res!142089 (not (= startIndex!26 i!1267)))))

(declare-fun b!278624 () Bool)

(assert (=> b!278624 (= e!177696 (bvsge (size!6931 a!3325) #b01111111111111111111111111111111))))

(declare-fun b!278626 () Bool)

(assert (=> b!278626 (= e!177695 e!177696)))

(declare-fun res!142092 () Bool)

(assert (=> b!278626 (=> (not res!142092) (not e!177696))))

(declare-datatypes ((SeekEntryResult!1748 0))(
  ( (MissingZero!1748 (index!9162 (_ BitVec 32))) (Found!1748 (index!9163 (_ BitVec 32))) (Intermediate!1748 (undefined!2560 Bool) (index!9164 (_ BitVec 32)) (x!27378 (_ BitVec 32))) (Undefined!1748) (MissingVacant!1748 (index!9165 (_ BitVec 32))) )
))
(declare-fun lt!138458 () SeekEntryResult!1748)

(assert (=> b!278626 (= res!142092 (or (= lt!138458 (MissingZero!1748 i!1267)) (= lt!138458 (MissingVacant!1748 i!1267))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13863 (_ BitVec 32)) SeekEntryResult!1748)

(assert (=> b!278626 (= lt!138458 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!142088 () Bool)

(assert (=> start!26870 (=> (not res!142088) (not e!177695))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26870 (= res!142088 (validMask!0 mask!3868))))

(assert (=> start!26870 e!177695))

(declare-fun array_inv!4533 (array!13863) Bool)

(assert (=> start!26870 (array_inv!4533 a!3325)))

(assert (=> start!26870 true))

(declare-fun b!278625 () Bool)

(declare-fun res!142094 () Bool)

(assert (=> b!278625 (=> (not res!142094) (not e!177695))))

(assert (=> b!278625 (= res!142094 (and (= (size!6931 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6931 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6931 a!3325))))))

(declare-fun b!278627 () Bool)

(declare-fun res!142090 () Bool)

(assert (=> b!278627 (=> (not res!142090) (not e!177695))))

(assert (=> b!278627 (= res!142090 (validKeyInArray!0 k!2581))))

(declare-fun b!278628 () Bool)

(declare-fun res!142091 () Bool)

(assert (=> b!278628 (=> (not res!142091) (not e!177695))))

(declare-datatypes ((List!4408 0))(
  ( (Nil!4405) (Cons!4404 (h!5074 (_ BitVec 64)) (t!9498 List!4408)) )
))
(declare-fun arrayNoDuplicates!0 (array!13863 (_ BitVec 32) List!4408) Bool)

(assert (=> b!278628 (= res!142091 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4405))))

(assert (= (and start!26870 res!142088) b!278625))

(assert (= (and b!278625 res!142094) b!278627))

(assert (= (and b!278627 res!142090) b!278628))

(assert (= (and b!278628 res!142091) b!278622))

(assert (= (and b!278622 res!142095) b!278626))

(assert (= (and b!278626 res!142092) b!278621))

(assert (= (and b!278621 res!142093) b!278623))

(assert (= (and b!278623 res!142089) b!278620))

(assert (= (and b!278620 res!142087) b!278624))

(declare-fun m!293671 () Bool)

(assert (=> b!278628 m!293671))

(declare-fun m!293673 () Bool)

(assert (=> b!278626 m!293673))

(declare-fun m!293675 () Bool)

(assert (=> b!278627 m!293675))

(declare-fun m!293677 () Bool)

(assert (=> start!26870 m!293677))

(declare-fun m!293679 () Bool)

(assert (=> start!26870 m!293679))

(declare-fun m!293681 () Bool)

(assert (=> b!278621 m!293681))

(declare-fun m!293683 () Bool)

(assert (=> b!278622 m!293683))

(declare-fun m!293685 () Bool)

(assert (=> b!278620 m!293685))

(assert (=> b!278620 m!293685))

(declare-fun m!293687 () Bool)

(assert (=> b!278620 m!293687))

(push 1)

(assert (not b!278626))

(assert (not b!278628))

(assert (not b!278620))

(assert (not start!26870))

(assert (not b!278621))

(assert (not b!278622))

(assert (not b!278627))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!278692 () Bool)

(declare-fun e!177743 () SeekEntryResult!1748)

(declare-fun e!177744 () SeekEntryResult!1748)

(assert (=> b!278692 (= e!177743 e!177744)))

(declare-fun lt!138480 () (_ BitVec 64))

(declare-fun lt!138481 () SeekEntryResult!1748)

(assert (=> b!278692 (= lt!138480 (select (arr!6579 a!3325) (index!9164 lt!138481)))))

(declare-fun c!45837 () Bool)

(assert (=> b!278692 (= c!45837 (= lt!138480 k!2581))))

(declare-fun b!278693 () Bool)

(declare-fun e!177745 () SeekEntryResult!1748)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13863 (_ BitVec 32)) SeekEntryResult!1748)

(assert (=> b!278693 (= e!177745 (seekKeyOrZeroReturnVacant!0 (x!27378 lt!138481) (index!9164 lt!138481) (index!9164 lt!138481) k!2581 a!3325 mask!3868))))

(declare-fun b!278694 () Bool)

(assert (=> b!278694 (= e!177743 Undefined!1748)))

(declare-fun d!64849 () Bool)

(declare-fun lt!138482 () SeekEntryResult!1748)

(assert (=> d!64849 (and (or (is-Undefined!1748 lt!138482) (not (is-Found!1748 lt!138482)) (and (bvsge (index!9163 lt!138482) #b00000000000000000000000000000000) (bvslt (index!9163 lt!138482) (size!6931 a!3325)))) (or (is-Undefined!1748 lt!138482) (is-Found!1748 lt!138482) (not (is-MissingZero!1748 lt!138482)) (and (bvsge (index!9162 lt!138482) #b00000000000000000000000000000000) (bvslt (index!9162 lt!138482) (size!6931 a!3325)))) (or (is-Undefined!1748 lt!138482) (is-Found!1748 lt!138482) (is-MissingZero!1748 lt!138482) (not (is-MissingVacant!1748 lt!138482)) (and (bvsge (index!9165 lt!138482) #b00000000000000000000000000000000) (bvslt (index!9165 lt!138482) (size!6931 a!3325)))) (or (is-Undefined!1748 lt!138482) (ite (is-Found!1748 lt!138482) (= (select (arr!6579 a!3325) (index!9163 lt!138482)) k!2581) (ite (is-MissingZero!1748 lt!138482) (= (select (arr!6579 a!3325) (index!9162 lt!138482)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1748 lt!138482) (= (select (arr!6579 a!3325) (index!9165 lt!138482)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64849 (= lt!138482 e!177743)))

(declare-fun c!45839 () Bool)

(assert (=> d!64849 (= c!45839 (and (is-Intermediate!1748 lt!138481) (undefined!2560 lt!138481)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13863 (_ BitVec 32)) SeekEntryResult!1748)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64849 (= lt!138481 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868))))

(assert (=> d!64849 (validMask!0 mask!3868)))

(assert (=> d!64849 (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) lt!138482)))

(declare-fun b!278695 () Bool)

(assert (=> b!278695 (= e!177744 (Found!1748 (index!9164 lt!138481)))))

(declare-fun b!278696 () Bool)

(assert (=> b!278696 (= e!177745 (MissingZero!1748 (index!9164 lt!138481)))))

(declare-fun b!278697 () Bool)

(declare-fun c!45838 () Bool)

(assert (=> b!278697 (= c!45838 (= lt!138480 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278697 (= e!177744 e!177745)))

(assert (= (and d!64849 c!45839) b!278694))

(assert (= (and d!64849 (not c!45839)) b!278692))

(assert (= (and b!278692 c!45837) b!278695))

(assert (= (and b!278692 (not c!45837)) b!278697))

(assert (= (and b!278697 c!45838) b!278696))

(assert (= (and b!278697 (not c!45838)) b!278693))

(declare-fun m!293711 () Bool)

(assert (=> b!278692 m!293711))

(declare-fun m!293713 () Bool)

(assert (=> b!278693 m!293713))

(declare-fun m!293715 () Bool)

(assert (=> d!64849 m!293715))

(declare-fun m!293717 () Bool)

(assert (=> d!64849 m!293717))

(assert (=> d!64849 m!293677))

(assert (=> d!64849 m!293715))

(declare-fun m!293719 () Bool)

(assert (=> d!64849 m!293719))

(declare-fun m!293721 () Bool)

(assert (=> d!64849 m!293721))

(declare-fun m!293723 () Bool)

(assert (=> d!64849 m!293723))

(assert (=> b!278626 d!64849))

(declare-fun d!64865 () Bool)

(assert (=> d!64865 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!26870 d!64865))

(declare-fun d!64873 () Bool)

(assert (=> d!64873 (= (array_inv!4533 a!3325) (bvsge (size!6931 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!26870 d!64873))

(declare-fun b!278739 () Bool)

(declare-fun e!177774 () Bool)

(declare-fun e!177775 () Bool)

(assert (=> b!278739 (= e!177774 e!177775)))

(declare-fun lt!138500 () (_ BitVec 64))

(assert (=> b!278739 (= lt!138500 (select (arr!6579 a!3325) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8803 0))(
  ( (Unit!8804) )
))
(declare-fun lt!138499 () Unit!8803)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13863 (_ BitVec 64) (_ BitVec 32)) Unit!8803)

(assert (=> b!278739 (= lt!138499 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138500 #b00000000000000000000000000000000))))

(assert (=> b!278739 (arrayContainsKey!0 a!3325 lt!138500 #b00000000000000000000000000000000)))

(declare-fun lt!138498 () Unit!8803)

(assert (=> b!278739 (= lt!138498 lt!138499)))

(declare-fun res!142136 () Bool)

(assert (=> b!278739 (= res!142136 (= (seekEntryOrOpen!0 (select (arr!6579 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1748 #b00000000000000000000000000000000)))))

(assert (=> b!278739 (=> (not res!142136) (not e!177775))))

(declare-fun b!278740 () Bool)

(declare-fun call!25397 () Bool)

(assert (=> b!278740 (= e!177775 call!25397)))

(declare-fun b!278741 () Bool)

(declare-fun e!177773 () Bool)

(assert (=> b!278741 (= e!177773 e!177774)))

(declare-fun c!45854 () Bool)

(assert (=> b!278741 (= c!45854 (validKeyInArray!0 (select (arr!6579 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!64875 () Bool)

(declare-fun res!142137 () Bool)

(assert (=> d!64875 (=> res!142137 e!177773)))

(assert (=> d!64875 (= res!142137 (bvsge #b00000000000000000000000000000000 (size!6931 a!3325)))))

(assert (=> d!64875 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!177773)))

(declare-fun b!278742 () Bool)

(assert (=> b!278742 (= e!177774 call!25397)))

(declare-fun bm!25394 () Bool)

(assert (=> bm!25394 (= call!25397 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(assert (= (and d!64875 (not res!142137)) b!278741))

(assert (= (and b!278741 c!45854) b!278739))

(assert (= (and b!278741 (not c!45854)) b!278742))

(assert (= (and b!278739 res!142136) b!278740))

(assert (= (or b!278740 b!278742) bm!25394))

(declare-fun m!293745 () Bool)

(assert (=> b!278739 m!293745))

(declare-fun m!293747 () Bool)

(assert (=> b!278739 m!293747))

(declare-fun m!293749 () Bool)

(assert (=> b!278739 m!293749))

(assert (=> b!278739 m!293745))

(declare-fun m!293751 () Bool)

