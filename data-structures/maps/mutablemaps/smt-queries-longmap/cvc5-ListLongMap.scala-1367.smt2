; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!26866 () Bool)

(assert start!26866)

(declare-fun b!278566 () Bool)

(declare-fun e!177677 () Bool)

(declare-datatypes ((array!13859 0))(
  ( (array!13860 (arr!6577 (Array (_ BitVec 32) (_ BitVec 64))) (size!6929 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13859)

(assert (=> b!278566 (= e!177677 (bvsge (size!6929 a!3325) #b01111111111111111111111111111111))))

(declare-fun b!278567 () Bool)

(declare-fun res!142035 () Bool)

(assert (=> b!278567 (=> (not res!142035) (not e!177677))))

(declare-fun startIndex!26 () (_ BitVec 32))

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!278567 (= res!142035 (not (= startIndex!26 i!1267)))))

(declare-fun b!278568 () Bool)

(declare-fun res!142038 () Bool)

(declare-fun e!177679 () Bool)

(assert (=> b!278568 (=> (not res!142038) (not e!177679))))

(declare-datatypes ((List!4406 0))(
  ( (Nil!4403) (Cons!4402 (h!5072 (_ BitVec 64)) (t!9496 List!4406)) )
))
(declare-fun arrayNoDuplicates!0 (array!13859 (_ BitVec 32) List!4406) Bool)

(assert (=> b!278568 (= res!142038 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4403))))

(declare-fun b!278569 () Bool)

(declare-fun res!142034 () Bool)

(assert (=> b!278569 (=> (not res!142034) (not e!177679))))

(declare-fun k!2581 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!278569 (= res!142034 (validKeyInArray!0 k!2581))))

(declare-fun b!278570 () Bool)

(assert (=> b!278570 (= e!177679 e!177677)))

(declare-fun res!142037 () Bool)

(assert (=> b!278570 (=> (not res!142037) (not e!177677))))

(declare-datatypes ((SeekEntryResult!1746 0))(
  ( (MissingZero!1746 (index!9154 (_ BitVec 32))) (Found!1746 (index!9155 (_ BitVec 32))) (Intermediate!1746 (undefined!2558 Bool) (index!9156 (_ BitVec 32)) (x!27376 (_ BitVec 32))) (Undefined!1746) (MissingVacant!1746 (index!9157 (_ BitVec 32))) )
))
(declare-fun lt!138452 () SeekEntryResult!1746)

(assert (=> b!278570 (= res!142037 (or (= lt!138452 (MissingZero!1746 i!1267)) (= lt!138452 (MissingVacant!1746 i!1267))))))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13859 (_ BitVec 32)) SeekEntryResult!1746)

(assert (=> b!278570 (= lt!138452 (seekEntryOrOpen!0 k!2581 a!3325 mask!3868))))

(declare-fun res!142036 () Bool)

(assert (=> start!26866 (=> (not res!142036) (not e!177679))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26866 (= res!142036 (validMask!0 mask!3868))))

(assert (=> start!26866 e!177679))

(declare-fun array_inv!4531 (array!13859) Bool)

(assert (=> start!26866 (array_inv!4531 a!3325)))

(assert (=> start!26866 true))

(declare-fun b!278571 () Bool)

(declare-fun res!142040 () Bool)

(assert (=> b!278571 (=> (not res!142040) (not e!177677))))

(assert (=> b!278571 (= res!142040 (validKeyInArray!0 (select (arr!6577 a!3325) startIndex!26)))))

(declare-fun b!278572 () Bool)

(declare-fun res!142041 () Bool)

(assert (=> b!278572 (=> (not res!142041) (not e!177679))))

(assert (=> b!278572 (= res!142041 (and (= (size!6929 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6929 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6929 a!3325))))))

(declare-fun b!278573 () Bool)

(declare-fun res!142039 () Bool)

(assert (=> b!278573 (=> (not res!142039) (not e!177677))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13859 (_ BitVec 32)) Bool)

(assert (=> b!278573 (= res!142039 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!278574 () Bool)

(declare-fun res!142033 () Bool)

(assert (=> b!278574 (=> (not res!142033) (not e!177679))))

(declare-fun arrayContainsKey!0 (array!13859 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!278574 (= res!142033 (not (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000)))))

(assert (= (and start!26866 res!142036) b!278572))

(assert (= (and b!278572 res!142041) b!278569))

(assert (= (and b!278569 res!142034) b!278568))

(assert (= (and b!278568 res!142038) b!278574))

(assert (= (and b!278574 res!142033) b!278570))

(assert (= (and b!278570 res!142037) b!278573))

(assert (= (and b!278573 res!142039) b!278567))

(assert (= (and b!278567 res!142035) b!278571))

(assert (= (and b!278571 res!142040) b!278566))

(declare-fun m!293635 () Bool)

(assert (=> b!278574 m!293635))

(declare-fun m!293637 () Bool)

(assert (=> b!278568 m!293637))

(declare-fun m!293639 () Bool)

(assert (=> b!278571 m!293639))

(assert (=> b!278571 m!293639))

(declare-fun m!293641 () Bool)

(assert (=> b!278571 m!293641))

(declare-fun m!293643 () Bool)

(assert (=> b!278573 m!293643))

(declare-fun m!293645 () Bool)

(assert (=> b!278570 m!293645))

(declare-fun m!293647 () Bool)

(assert (=> start!26866 m!293647))

(declare-fun m!293649 () Bool)

(assert (=> start!26866 m!293649))

(declare-fun m!293651 () Bool)

(assert (=> b!278569 m!293651))

(push 1)

(assert (not start!26866))

(assert (not b!278574))

(assert (not b!278571))

(assert (not b!278568))

(assert (not b!278569))

(assert (not b!278573))

(assert (not b!278570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!64845 () Bool)

(assert (=> d!64845 (= (validKeyInArray!0 k!2581) (and (not (= k!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!278569 d!64845))

(declare-fun d!64847 () Bool)

(declare-fun res!142106 () Bool)

(declare-fun e!177711 () Bool)

(assert (=> d!64847 (=> res!142106 e!177711)))

(assert (=> d!64847 (= res!142106 (= (select (arr!6577 a!3325) #b00000000000000000000000000000000) k!2581))))

(assert (=> d!64847 (= (arrayContainsKey!0 a!3325 k!2581 #b00000000000000000000000000000000) e!177711)))

(declare-fun b!278645 () Bool)

(declare-fun e!177712 () Bool)

(assert (=> b!278645 (= e!177711 e!177712)))

(declare-fun res!142107 () Bool)

(assert (=> b!278645 (=> (not res!142107) (not e!177712))))

(assert (=> b!278645 (= res!142107 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6929 a!3325)))))

(declare-fun b!278646 () Bool)

(assert (=> b!278646 (= e!177712 (arrayContainsKey!0 a!3325 k!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64847 (not res!142106)) b!278645))

(assert (= (and b!278645 res!142107) b!278646))

(declare-fun m!293701 () Bool)

(assert (=> d!64847 m!293701))

(declare-fun m!293703 () Bool)

(assert (=> b!278646 m!293703))

(assert (=> b!278574 d!64847))

(declare-fun d!64853 () Bool)

(assert (=> d!64853 (= (validKeyInArray!0 (select (arr!6577 a!3325) startIndex!26)) (and (not (= (select (arr!6577 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6577 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!278571 d!64853))

(declare-fun b!278698 () Bool)

(declare-fun e!177747 () SeekEntryResult!1746)

(declare-fun lt!138485 () SeekEntryResult!1746)

(assert (=> b!278698 (= e!177747 (MissingZero!1746 (index!9156 lt!138485)))))

(declare-fun b!278699 () Bool)

(declare-fun e!177746 () SeekEntryResult!1746)

(assert (=> b!278699 (= e!177746 (Found!1746 (index!9156 lt!138485)))))

(declare-fun d!64855 () Bool)

(declare-fun lt!138484 () SeekEntryResult!1746)

(assert (=> d!64855 (and (or (is-Undefined!1746 lt!138484) (not (is-Found!1746 lt!138484)) (and (bvsge (index!9155 lt!138484) #b00000000000000000000000000000000) (bvslt (index!9155 lt!138484) (size!6929 a!3325)))) (or (is-Undefined!1746 lt!138484) (is-Found!1746 lt!138484) (not (is-MissingZero!1746 lt!138484)) (and (bvsge (index!9154 lt!138484) #b00000000000000000000000000000000) (bvslt (index!9154 lt!138484) (size!6929 a!3325)))) (or (is-Undefined!1746 lt!138484) (is-Found!1746 lt!138484) (is-MissingZero!1746 lt!138484) (not (is-MissingVacant!1746 lt!138484)) (and (bvsge (index!9157 lt!138484) #b00000000000000000000000000000000) (bvslt (index!9157 lt!138484) (size!6929 a!3325)))) (or (is-Undefined!1746 lt!138484) (ite (is-Found!1746 lt!138484) (= (select (arr!6577 a!3325) (index!9155 lt!138484)) k!2581) (ite (is-MissingZero!1746 lt!138484) (= (select (arr!6577 a!3325) (index!9154 lt!138484)) #b0000000000000000000000000000000000000000000000000000000000000000) (and (is-MissingVacant!1746 lt!138484) (= (select (arr!6577 a!3325) (index!9157 lt!138484)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!177748 () SeekEntryResult!1746)

(assert (=> d!64855 (= lt!138484 e!177748)))

(declare-fun c!45842 () Bool)

(assert (=> d!64855 (= c!45842 (and (is-Intermediate!1746 lt!138485) (undefined!2558 lt!138485)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13859 (_ BitVec 32)) SeekEntryResult!1746)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64855 (= lt!138485 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k!2581 mask!3868) k!2581 a!3325 mask!3868))))

(assert (=> d!64855 (validMask!0 mask!3868)))

(assert (=> d!64855 (= (seekEntryOrOpen!0 k!2581 a!3325 mask!3868) lt!138484)))

(declare-fun b!278700 () Bool)

(assert (=> b!278700 (= e!177748 Undefined!1746)))

(declare-fun b!278701 () Bool)

(declare-fun c!45841 () Bool)

(declare-fun lt!138483 () (_ BitVec 64))

(assert (=> b!278701 (= c!45841 (= lt!138483 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278701 (= e!177746 e!177747)))

(declare-fun b!278702 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13859 (_ BitVec 32)) SeekEntryResult!1746)

(assert (=> b!278702 (= e!177747 (seekKeyOrZeroReturnVacant!0 (x!27376 lt!138485) (index!9156 lt!138485) (index!9156 lt!138485) k!2581 a!3325 mask!3868))))

(declare-fun b!278703 () Bool)

(assert (=> b!278703 (= e!177748 e!177746)))

(assert (=> b!278703 (= lt!138483 (select (arr!6577 a!3325) (index!9156 lt!138485)))))

(declare-fun c!45840 () Bool)

(assert (=> b!278703 (= c!45840 (= lt!138483 k!2581))))

(assert (= (and d!64855 c!45842) b!278700))

(assert (= (and d!64855 (not c!45842)) b!278703))

(assert (= (and b!278703 c!45840) b!278699))

(assert (= (and b!278703 (not c!45840)) b!278701))

(assert (= (and b!278701 c!45841) b!278698))

(assert (= (and b!278701 (not c!45841)) b!278702))

(declare-fun m!293725 () Bool)

(assert (=> d!64855 m!293725))

(assert (=> d!64855 m!293725))

(declare-fun m!293727 () Bool)

(assert (=> d!64855 m!293727))

(declare-fun m!293729 () Bool)

(assert (=> d!64855 m!293729))

(declare-fun m!293731 () Bool)

(assert (=> d!64855 m!293731))

(assert (=> d!64855 m!293647))

(declare-fun m!293733 () Bool)

(assert (=> d!64855 m!293733))

(declare-fun m!293735 () Bool)

(assert (=> b!278702 m!293735))

(declare-fun m!293737 () Bool)

(assert (=> b!278703 m!293737))

(assert (=> b!278570 d!64855))

(declare-fun d!64871 () Bool)

(assert (=> d!64871 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!26866 d!64871))

(declare-fun d!64877 () Bool)

(assert (=> d!64877 (= (array_inv!4531 a!3325) (bvsge (size!6929 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!26866 d!64877))

(declare-fun bm!25393 () Bool)

(declare-fun call!25396 () Bool)

(declare-fun c!45853 () Bool)

(assert (=> bm!25393 (= call!25396 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45853 (Cons!4402 (select (arr!6577 a!3325) #b00000000000000000000000000000000) Nil!4403) Nil!4403)))))

(declare-fun b!278734 () Bool)

(declare-fun e!177771 () Bool)

(declare-fun contains!1964 (List!4406 (_ BitVec 64)) Bool)

(assert (=> b!278734 (= e!177771 (contains!1964 Nil!4403 (select (arr!6577 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!278735 () Bool)

(declare-fun e!177770 () Bool)

(assert (=> b!278735 (= e!177770 call!25396)))

(declare-fun b!278736 () Bool)

(assert (=> b!278736 (= e!177770 call!25396)))

(declare-fun d!64879 () Bool)

(declare-fun res!142135 () Bool)

(declare-fun e!177772 () Bool)

(assert (=> d!64879 (=> res!142135 e!177772)))

(assert (=> d!64879 (= res!142135 (bvsge #b00000000000000000000000000000000 (size!6929 a!3325)))))

(assert (=> d!64879 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4403) e!177772)))

(declare-fun b!278737 () Bool)

(declare-fun e!177769 () Bool)

(assert (=> b!278737 (= e!177769 e!177770)))

(assert (=> b!278737 (= c!45853 (validKeyInArray!0 (select (arr!6577 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!278738 () Bool)

(assert (=> b!278738 (= e!177772 e!177769)))

(declare-fun res!142134 () Bool)

(assert (=> b!278738 (=> (not res!142134) (not e!177769))))

(assert (=> b!278738 (= res!142134 (not e!177771))))

(declare-fun res!142133 () Bool)

(assert (=> b!278738 (=> (not res!142133) (not e!177771))))

(assert (=> b!278738 (= res!142133 (validKeyInArray!0 (select (arr!6577 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!64879 (not res!142135)) b!278738))

(assert (= (and b!278738 res!142133) b!278734))

(assert (= (and b!278738 res!142134) b!278737))

(assert (= (and b!278737 c!45853) b!278736))

(assert (= (and b!278737 (not c!45853)) b!278735))

(assert (= (or b!278736 b!278735) bm!25393))

(assert (=> bm!25393 m!293701))

(declare-fun m!293739 () Bool)

(assert (=> bm!25393 m!293739))

(assert (=> b!278734 m!293701))

(assert (=> b!278734 m!293701))

(declare-fun m!293741 () Bool)

(assert (=> b!278734 m!293741))

(assert (=> b!278737 m!293701))

(assert (=> b!278737 m!293701))

(declare-fun m!293743 () Bool)

(assert (=> b!278737 m!293743))

(assert (=> b!278738 m!293701))

(assert (=> b!278738 m!293701))

(assert (=> b!278738 m!293743))

(assert (=> b!278568 d!64879))

(declare-fun b!278771 () Bool)

(declare-fun e!177797 () Bool)

(declare-fun e!177799 () Bool)

(assert (=> b!278771 (= e!177797 e!177799)))

(declare-fun lt!138512 () (_ BitVec 64))

(assert (=> b!278771 (= lt!138512 (select (arr!6577 a!3325) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8801 0))(
  ( (Unit!8802) )
))
(declare-fun lt!138510 () Unit!8801)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13859 (_ BitVec 64) (_ BitVec 32)) Unit!8801)

(assert (=> b!278771 (= lt!138510 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138512 #b00000000000000000000000000000000))))

(assert (=> b!278771 (arrayContainsKey!0 a!3325 lt!138512 #b00000000000000000000000000000000)))

(declare-fun lt!138511 () Unit!8801)

(assert (=> b!278771 (= lt!138511 lt!138510)))

(declare-fun res!142154 () Bool)

(assert (=> b!278771 (= res!142154 (= (seekEntryOrOpen!0 (select (arr!6577 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1746 #b00000000000000000000000000000000)))))

(assert (=> b!278771 (=> (not res!142154) (not e!177799))))

(declare-fun b!278772 () Bool)

(declare-fun e!177798 () Bool)

(assert (=> b!278772 (= e!177798 e!177797)))

(declare-fun c!45860 () Bool)

(assert (=> b!278772 (= c!45860 (validKeyInArray!0 (select (arr!6577 a!3325) #b00000000000000000000000000000000)))))

(declare-fun d!64881 () Bool)

(declare-fun res!142155 () Bool)

(assert (=> d!64881 (=> res!142155 e!177798)))

(assert (=> d!64881 (= res!142155 (bvsge #b00000000000000000000000000000000 (size!6929 a!3325)))))

(assert (=> d!64881 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!177798)))

(declare-fun b!278773 () Bool)

(declare-fun call!25400 () Bool)

(assert (=> b!278773 (= e!177799 call!25400)))

(declare-fun b!278774 () Bool)

(assert (=> b!278774 (= e!177797 call!25400)))

(declare-fun bm!25397 () Bool)

(assert (=> bm!25397 (= call!25400 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(assert (= (and d!64881 (not res!142155)) b!278772))

(assert (= (and b!278772 c!45860) b!278771))

(assert (= (and b!278772 (not c!45860)) b!278774))

(assert (= (and b!278771 res!142154) b!278773))

(assert (= (or b!278773 b!278774) bm!25397))

(assert (=> b!278771 m!293701))

(declare-fun m!293773 () Bool)

(assert (=> b!278771 m!293773))

(declare-fun m!293775 () Bool)

(assert (=> b!278771 m!293775))

(assert (=> b!278771 m!293701))

(declare-fun m!293777 () Bool)

(assert (=> b!278771 m!293777))

(assert (=> b!278772 m!293701))

(assert (=> b!278772 m!293701))

(assert (=> b!278772 m!293743))

(declare-fun m!293779 () Bool)

(assert (=> bm!25397 m!293779))

(assert (=> b!278573 d!64881))

(push 1)

