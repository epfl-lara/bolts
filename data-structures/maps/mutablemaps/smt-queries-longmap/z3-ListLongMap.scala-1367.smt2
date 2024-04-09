; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!26868 () Bool)

(assert start!26868)

(declare-fun b!278593 () Bool)

(declare-fun e!177688 () Bool)

(declare-fun e!177687 () Bool)

(assert (=> b!278593 (= e!177688 e!177687)))

(declare-fun res!142065 () Bool)

(assert (=> b!278593 (=> (not res!142065) (not e!177687))))

(declare-datatypes ((SeekEntryResult!1747 0))(
  ( (MissingZero!1747 (index!9158 (_ BitVec 32))) (Found!1747 (index!9159 (_ BitVec 32))) (Intermediate!1747 (undefined!2559 Bool) (index!9160 (_ BitVec 32)) (x!27377 (_ BitVec 32))) (Undefined!1747) (MissingVacant!1747 (index!9161 (_ BitVec 32))) )
))
(declare-fun lt!138455 () SeekEntryResult!1747)

(declare-fun i!1267 () (_ BitVec 32))

(assert (=> b!278593 (= res!142065 (or (= lt!138455 (MissingZero!1747 i!1267)) (= lt!138455 (MissingVacant!1747 i!1267))))))

(declare-datatypes ((array!13861 0))(
  ( (array!13862 (arr!6578 (Array (_ BitVec 32) (_ BitVec 64))) (size!6930 (_ BitVec 32))) )
))
(declare-fun a!3325 () array!13861)

(declare-fun k0!2581 () (_ BitVec 64))

(declare-fun mask!3868 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!13861 (_ BitVec 32)) SeekEntryResult!1747)

(assert (=> b!278593 (= lt!138455 (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868))))

(declare-fun b!278594 () Bool)

(declare-fun res!142062 () Bool)

(assert (=> b!278594 (=> (not res!142062) (not e!177688))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!278594 (= res!142062 (validKeyInArray!0 k0!2581))))

(declare-fun b!278595 () Bool)

(declare-fun res!142066 () Bool)

(assert (=> b!278595 (=> (not res!142066) (not e!177687))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!13861 (_ BitVec 32)) Bool)

(assert (=> b!278595 (= res!142066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868))))

(declare-fun b!278596 () Bool)

(declare-fun res!142061 () Bool)

(assert (=> b!278596 (=> (not res!142061) (not e!177688))))

(declare-fun startIndex!26 () (_ BitVec 32))

(assert (=> b!278596 (= res!142061 (and (= (size!6930 a!3325) (bvadd #b00000000000000000000000000000001 mask!3868)) (bvsge i!1267 #b00000000000000000000000000000000) (bvslt i!1267 (size!6930 a!3325)) (bvsge startIndex!26 #b00000000000000000000000000000000) (bvslt startIndex!26 (size!6930 a!3325))))))

(declare-fun b!278597 () Bool)

(declare-fun res!142067 () Bool)

(assert (=> b!278597 (=> (not res!142067) (not e!177688))))

(declare-fun arrayContainsKey!0 (array!13861 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!278597 (= res!142067 (not (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000)))))

(declare-fun res!142063 () Bool)

(assert (=> start!26868 (=> (not res!142063) (not e!177688))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!26868 (= res!142063 (validMask!0 mask!3868))))

(assert (=> start!26868 e!177688))

(declare-fun array_inv!4532 (array!13861) Bool)

(assert (=> start!26868 (array_inv!4532 a!3325)))

(assert (=> start!26868 true))

(declare-fun b!278598 () Bool)

(declare-fun res!142068 () Bool)

(assert (=> b!278598 (=> (not res!142068) (not e!177688))))

(declare-datatypes ((List!4407 0))(
  ( (Nil!4404) (Cons!4403 (h!5073 (_ BitVec 64)) (t!9497 List!4407)) )
))
(declare-fun arrayNoDuplicates!0 (array!13861 (_ BitVec 32) List!4407) Bool)

(assert (=> b!278598 (= res!142068 (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4404))))

(declare-fun b!278599 () Bool)

(declare-fun res!142060 () Bool)

(assert (=> b!278599 (=> (not res!142060) (not e!177687))))

(assert (=> b!278599 (= res!142060 (validKeyInArray!0 (select (arr!6578 a!3325) startIndex!26)))))

(declare-fun b!278600 () Bool)

(assert (=> b!278600 (= e!177687 (bvsge (size!6930 a!3325) #b01111111111111111111111111111111))))

(declare-fun b!278601 () Bool)

(declare-fun res!142064 () Bool)

(assert (=> b!278601 (=> (not res!142064) (not e!177687))))

(assert (=> b!278601 (= res!142064 (not (= startIndex!26 i!1267)))))

(assert (= (and start!26868 res!142063) b!278596))

(assert (= (and b!278596 res!142061) b!278594))

(assert (= (and b!278594 res!142062) b!278598))

(assert (= (and b!278598 res!142068) b!278597))

(assert (= (and b!278597 res!142067) b!278593))

(assert (= (and b!278593 res!142065) b!278595))

(assert (= (and b!278595 res!142066) b!278601))

(assert (= (and b!278601 res!142064) b!278599))

(assert (= (and b!278599 res!142060) b!278600))

(declare-fun m!293653 () Bool)

(assert (=> b!278598 m!293653))

(declare-fun m!293655 () Bool)

(assert (=> b!278593 m!293655))

(declare-fun m!293657 () Bool)

(assert (=> b!278597 m!293657))

(declare-fun m!293659 () Bool)

(assert (=> start!26868 m!293659))

(declare-fun m!293661 () Bool)

(assert (=> start!26868 m!293661))

(declare-fun m!293663 () Bool)

(assert (=> b!278599 m!293663))

(assert (=> b!278599 m!293663))

(declare-fun m!293665 () Bool)

(assert (=> b!278599 m!293665))

(declare-fun m!293667 () Bool)

(assert (=> b!278595 m!293667))

(declare-fun m!293669 () Bool)

(assert (=> b!278594 m!293669))

(check-sat (not b!278599) (not b!278593) (not b!278594) (not b!278598) (not start!26868) (not b!278597) (not b!278595))
(check-sat)
(get-model)

(declare-fun b!278637 () Bool)

(declare-fun e!177705 () Bool)

(declare-fun call!25388 () Bool)

(assert (=> b!278637 (= e!177705 call!25388)))

(declare-fun b!278638 () Bool)

(declare-fun e!177706 () Bool)

(assert (=> b!278638 (= e!177706 call!25388)))

(declare-fun d!64843 () Bool)

(declare-fun res!142101 () Bool)

(declare-fun e!177704 () Bool)

(assert (=> d!64843 (=> res!142101 e!177704)))

(assert (=> d!64843 (= res!142101 (bvsge #b00000000000000000000000000000000 (size!6930 a!3325)))))

(assert (=> d!64843 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 a!3325 mask!3868) e!177704)))

(declare-fun bm!25385 () Bool)

(assert (=> bm!25385 (= call!25388 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) a!3325 mask!3868))))

(declare-fun b!278639 () Bool)

(assert (=> b!278639 (= e!177706 e!177705)))

(declare-fun lt!138466 () (_ BitVec 64))

(assert (=> b!278639 (= lt!138466 (select (arr!6578 a!3325) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!8799 0))(
  ( (Unit!8800) )
))
(declare-fun lt!138465 () Unit!8799)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!13861 (_ BitVec 64) (_ BitVec 32)) Unit!8799)

(assert (=> b!278639 (= lt!138465 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3325 lt!138466 #b00000000000000000000000000000000))))

(assert (=> b!278639 (arrayContainsKey!0 a!3325 lt!138466 #b00000000000000000000000000000000)))

(declare-fun lt!138467 () Unit!8799)

(assert (=> b!278639 (= lt!138467 lt!138465)))

(declare-fun res!142100 () Bool)

(assert (=> b!278639 (= res!142100 (= (seekEntryOrOpen!0 (select (arr!6578 a!3325) #b00000000000000000000000000000000) a!3325 mask!3868) (Found!1747 #b00000000000000000000000000000000)))))

(assert (=> b!278639 (=> (not res!142100) (not e!177705))))

(declare-fun b!278640 () Bool)

(assert (=> b!278640 (= e!177704 e!177706)))

(declare-fun c!45821 () Bool)

(assert (=> b!278640 (= c!45821 (validKeyInArray!0 (select (arr!6578 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!64843 (not res!142101)) b!278640))

(assert (= (and b!278640 c!45821) b!278639))

(assert (= (and b!278640 (not c!45821)) b!278638))

(assert (= (and b!278639 res!142100) b!278637))

(assert (= (or b!278637 b!278638) bm!25385))

(declare-fun m!293689 () Bool)

(assert (=> bm!25385 m!293689))

(declare-fun m!293691 () Bool)

(assert (=> b!278639 m!293691))

(declare-fun m!293693 () Bool)

(assert (=> b!278639 m!293693))

(declare-fun m!293695 () Bool)

(assert (=> b!278639 m!293695))

(assert (=> b!278639 m!293691))

(declare-fun m!293697 () Bool)

(assert (=> b!278639 m!293697))

(assert (=> b!278640 m!293691))

(assert (=> b!278640 m!293691))

(declare-fun m!293699 () Bool)

(assert (=> b!278640 m!293699))

(assert (=> b!278595 d!64843))

(declare-fun d!64851 () Bool)

(declare-fun res!142116 () Bool)

(declare-fun e!177724 () Bool)

(assert (=> d!64851 (=> res!142116 e!177724)))

(assert (=> d!64851 (= res!142116 (bvsge #b00000000000000000000000000000000 (size!6930 a!3325)))))

(assert (=> d!64851 (= (arrayNoDuplicates!0 a!3325 #b00000000000000000000000000000000 Nil!4404) e!177724)))

(declare-fun b!278657 () Bool)

(declare-fun e!177721 () Bool)

(declare-fun contains!1963 (List!4407 (_ BitVec 64)) Bool)

(assert (=> b!278657 (= e!177721 (contains!1963 Nil!4404 (select (arr!6578 a!3325) #b00000000000000000000000000000000)))))

(declare-fun bm!25388 () Bool)

(declare-fun call!25391 () Bool)

(declare-fun c!45824 () Bool)

(assert (=> bm!25388 (= call!25391 (arrayNoDuplicates!0 a!3325 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!45824 (Cons!4403 (select (arr!6578 a!3325) #b00000000000000000000000000000000) Nil!4404) Nil!4404)))))

(declare-fun b!278658 () Bool)

(declare-fun e!177722 () Bool)

(assert (=> b!278658 (= e!177724 e!177722)))

(declare-fun res!142114 () Bool)

(assert (=> b!278658 (=> (not res!142114) (not e!177722))))

(assert (=> b!278658 (= res!142114 (not e!177721))))

(declare-fun res!142115 () Bool)

(assert (=> b!278658 (=> (not res!142115) (not e!177721))))

(assert (=> b!278658 (= res!142115 (validKeyInArray!0 (select (arr!6578 a!3325) #b00000000000000000000000000000000)))))

(declare-fun b!278659 () Bool)

(declare-fun e!177723 () Bool)

(assert (=> b!278659 (= e!177723 call!25391)))

(declare-fun b!278660 () Bool)

(assert (=> b!278660 (= e!177723 call!25391)))

(declare-fun b!278661 () Bool)

(assert (=> b!278661 (= e!177722 e!177723)))

(assert (=> b!278661 (= c!45824 (validKeyInArray!0 (select (arr!6578 a!3325) #b00000000000000000000000000000000)))))

(assert (= (and d!64851 (not res!142116)) b!278658))

(assert (= (and b!278658 res!142115) b!278657))

(assert (= (and b!278658 res!142114) b!278661))

(assert (= (and b!278661 c!45824) b!278659))

(assert (= (and b!278661 (not c!45824)) b!278660))

(assert (= (or b!278659 b!278660) bm!25388))

(assert (=> b!278657 m!293691))

(assert (=> b!278657 m!293691))

(declare-fun m!293705 () Bool)

(assert (=> b!278657 m!293705))

(assert (=> bm!25388 m!293691))

(declare-fun m!293707 () Bool)

(assert (=> bm!25388 m!293707))

(assert (=> b!278658 m!293691))

(assert (=> b!278658 m!293691))

(assert (=> b!278658 m!293699))

(assert (=> b!278661 m!293691))

(assert (=> b!278661 m!293691))

(assert (=> b!278661 m!293699))

(assert (=> b!278598 d!64851))

(declare-fun d!64857 () Bool)

(declare-fun res!142121 () Bool)

(declare-fun e!177729 () Bool)

(assert (=> d!64857 (=> res!142121 e!177729)))

(assert (=> d!64857 (= res!142121 (= (select (arr!6578 a!3325) #b00000000000000000000000000000000) k0!2581))))

(assert (=> d!64857 (= (arrayContainsKey!0 a!3325 k0!2581 #b00000000000000000000000000000000) e!177729)))

(declare-fun b!278666 () Bool)

(declare-fun e!177730 () Bool)

(assert (=> b!278666 (= e!177729 e!177730)))

(declare-fun res!142122 () Bool)

(assert (=> b!278666 (=> (not res!142122) (not e!177730))))

(assert (=> b!278666 (= res!142122 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6930 a!3325)))))

(declare-fun b!278667 () Bool)

(assert (=> b!278667 (= e!177730 (arrayContainsKey!0 a!3325 k0!2581 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!64857 (not res!142121)) b!278666))

(assert (= (and b!278666 res!142122) b!278667))

(assert (=> d!64857 m!293691))

(declare-fun m!293709 () Bool)

(assert (=> b!278667 m!293709))

(assert (=> b!278597 d!64857))

(declare-fun d!64859 () Bool)

(assert (=> d!64859 (= (validMask!0 mask!3868) (and (or (= mask!3868 #b00000000000000000000000000000111) (= mask!3868 #b00000000000000000000000000001111) (= mask!3868 #b00000000000000000000000000011111) (= mask!3868 #b00000000000000000000000000111111) (= mask!3868 #b00000000000000000000000001111111) (= mask!3868 #b00000000000000000000000011111111) (= mask!3868 #b00000000000000000000000111111111) (= mask!3868 #b00000000000000000000001111111111) (= mask!3868 #b00000000000000000000011111111111) (= mask!3868 #b00000000000000000000111111111111) (= mask!3868 #b00000000000000000001111111111111) (= mask!3868 #b00000000000000000011111111111111) (= mask!3868 #b00000000000000000111111111111111) (= mask!3868 #b00000000000000001111111111111111) (= mask!3868 #b00000000000000011111111111111111) (= mask!3868 #b00000000000000111111111111111111) (= mask!3868 #b00000000000001111111111111111111) (= mask!3868 #b00000000000011111111111111111111) (= mask!3868 #b00000000000111111111111111111111) (= mask!3868 #b00000000001111111111111111111111) (= mask!3868 #b00000000011111111111111111111111) (= mask!3868 #b00000000111111111111111111111111) (= mask!3868 #b00000001111111111111111111111111) (= mask!3868 #b00000011111111111111111111111111) (= mask!3868 #b00000111111111111111111111111111) (= mask!3868 #b00001111111111111111111111111111) (= mask!3868 #b00011111111111111111111111111111) (= mask!3868 #b00111111111111111111111111111111)) (bvsle mask!3868 #b00111111111111111111111111111111)))))

(assert (=> start!26868 d!64859))

(declare-fun d!64861 () Bool)

(assert (=> d!64861 (= (array_inv!4532 a!3325) (bvsge (size!6930 a!3325) #b00000000000000000000000000000000))))

(assert (=> start!26868 d!64861))

(declare-fun d!64863 () Bool)

(assert (=> d!64863 (= (validKeyInArray!0 (select (arr!6578 a!3325) startIndex!26)) (and (not (= (select (arr!6578 a!3325) startIndex!26) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!6578 a!3325) startIndex!26) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!278599 d!64863))

(declare-fun d!64867 () Bool)

(assert (=> d!64867 (= (validKeyInArray!0 k0!2581) (and (not (= k0!2581 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2581 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!278594 d!64867))

(declare-fun b!278743 () Bool)

(declare-fun e!177776 () SeekEntryResult!1747)

(declare-fun lt!138502 () SeekEntryResult!1747)

(assert (=> b!278743 (= e!177776 (MissingZero!1747 (index!9160 lt!138502)))))

(declare-fun b!278744 () Bool)

(declare-fun e!177777 () SeekEntryResult!1747)

(assert (=> b!278744 (= e!177777 (Found!1747 (index!9160 lt!138502)))))

(declare-fun b!278745 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13861 (_ BitVec 32)) SeekEntryResult!1747)

(assert (=> b!278745 (= e!177776 (seekKeyOrZeroReturnVacant!0 (x!27377 lt!138502) (index!9160 lt!138502) (index!9160 lt!138502) k0!2581 a!3325 mask!3868))))

(declare-fun b!278747 () Bool)

(declare-fun e!177778 () SeekEntryResult!1747)

(assert (=> b!278747 (= e!177778 Undefined!1747)))

(declare-fun b!278748 () Bool)

(declare-fun c!45856 () Bool)

(declare-fun lt!138501 () (_ BitVec 64))

(assert (=> b!278748 (= c!45856 (= lt!138501 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!278748 (= e!177777 e!177776)))

(declare-fun d!64869 () Bool)

(declare-fun lt!138503 () SeekEntryResult!1747)

(get-info :version)

(assert (=> d!64869 (and (or ((_ is Undefined!1747) lt!138503) (not ((_ is Found!1747) lt!138503)) (and (bvsge (index!9159 lt!138503) #b00000000000000000000000000000000) (bvslt (index!9159 lt!138503) (size!6930 a!3325)))) (or ((_ is Undefined!1747) lt!138503) ((_ is Found!1747) lt!138503) (not ((_ is MissingZero!1747) lt!138503)) (and (bvsge (index!9158 lt!138503) #b00000000000000000000000000000000) (bvslt (index!9158 lt!138503) (size!6930 a!3325)))) (or ((_ is Undefined!1747) lt!138503) ((_ is Found!1747) lt!138503) ((_ is MissingZero!1747) lt!138503) (not ((_ is MissingVacant!1747) lt!138503)) (and (bvsge (index!9161 lt!138503) #b00000000000000000000000000000000) (bvslt (index!9161 lt!138503) (size!6930 a!3325)))) (or ((_ is Undefined!1747) lt!138503) (ite ((_ is Found!1747) lt!138503) (= (select (arr!6578 a!3325) (index!9159 lt!138503)) k0!2581) (ite ((_ is MissingZero!1747) lt!138503) (= (select (arr!6578 a!3325) (index!9158 lt!138503)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1747) lt!138503) (= (select (arr!6578 a!3325) (index!9161 lt!138503)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!64869 (= lt!138503 e!177778)))

(declare-fun c!45855 () Bool)

(assert (=> d!64869 (= c!45855 (and ((_ is Intermediate!1747) lt!138502) (undefined!2559 lt!138502)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!13861 (_ BitVec 32)) SeekEntryResult!1747)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!64869 (= lt!138502 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 k0!2581 mask!3868) k0!2581 a!3325 mask!3868))))

(assert (=> d!64869 (validMask!0 mask!3868)))

(assert (=> d!64869 (= (seekEntryOrOpen!0 k0!2581 a!3325 mask!3868) lt!138503)))

(declare-fun b!278746 () Bool)

(assert (=> b!278746 (= e!177778 e!177777)))

(assert (=> b!278746 (= lt!138501 (select (arr!6578 a!3325) (index!9160 lt!138502)))))

(declare-fun c!45857 () Bool)

(assert (=> b!278746 (= c!45857 (= lt!138501 k0!2581))))

(assert (= (and d!64869 c!45855) b!278747))

(assert (= (and d!64869 (not c!45855)) b!278746))

(assert (= (and b!278746 c!45857) b!278744))

(assert (= (and b!278746 (not c!45857)) b!278748))

(assert (= (and b!278748 c!45856) b!278743))

(assert (= (and b!278748 (not c!45856)) b!278745))

(declare-fun m!293757 () Bool)

(assert (=> b!278745 m!293757))

(declare-fun m!293759 () Bool)

(assert (=> d!64869 m!293759))

(declare-fun m!293761 () Bool)

(assert (=> d!64869 m!293761))

(declare-fun m!293763 () Bool)

(assert (=> d!64869 m!293763))

(assert (=> d!64869 m!293659))

(declare-fun m!293765 () Bool)

(assert (=> d!64869 m!293765))

(declare-fun m!293767 () Bool)

(assert (=> d!64869 m!293767))

(assert (=> d!64869 m!293759))

(declare-fun m!293769 () Bool)

(assert (=> b!278746 m!293769))

(assert (=> b!278593 d!64869))

(check-sat (not bm!25385) (not b!278658) (not b!278640) (not b!278639) (not b!278661) (not b!278745) (not b!278657) (not d!64869) (not bm!25388) (not b!278667))
(check-sat)
