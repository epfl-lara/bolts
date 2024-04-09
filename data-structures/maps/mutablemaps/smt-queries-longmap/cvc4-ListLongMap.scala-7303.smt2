; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!93406 () Bool)

(assert start!93406)

(declare-fun b!1057909 () Bool)

(declare-fun res!706635 () Bool)

(declare-fun e!601799 () Bool)

(assert (=> b!1057909 (=> (not res!706635) (not e!601799))))

(declare-fun k!2747 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1057909 (= res!706635 (validKeyInArray!0 k!2747))))

(declare-fun res!706639 () Bool)

(assert (=> start!93406 (=> (not res!706639) (not e!601799))))

(declare-fun i!1381 () (_ BitVec 32))

(declare-datatypes ((array!66708 0))(
  ( (array!66709 (arr!32070 (Array (_ BitVec 32) (_ BitVec 64))) (size!32607 (_ BitVec 32))) )
))
(declare-fun a!3488 () array!66708)

(assert (=> start!93406 (= res!706639 (and (bvsge i!1381 #b00000000000000000000000000000000) (bvslt i!1381 (size!32607 a!3488)) (bvslt (size!32607 a!3488) #b01111111111111111111111111111111)))))

(assert (=> start!93406 e!601799))

(assert (=> start!93406 true))

(declare-fun array_inv!24692 (array!66708) Bool)

(assert (=> start!93406 (array_inv!24692 a!3488)))

(declare-fun b!1057910 () Bool)

(declare-fun e!601803 () Bool)

(declare-fun e!601800 () Bool)

(assert (=> b!1057910 (= e!601803 e!601800)))

(declare-fun res!706641 () Bool)

(assert (=> b!1057910 (=> res!706641 e!601800)))

(declare-fun lt!466650 () (_ BitVec 32))

(assert (=> b!1057910 (= res!706641 (or (bvsgt lt!466650 i!1381) (bvsle i!1381 lt!466650)))))

(declare-fun b!1057911 () Bool)

(declare-fun res!706637 () Bool)

(assert (=> b!1057911 (=> (not res!706637) (not e!601799))))

(assert (=> b!1057911 (= res!706637 (= (select (arr!32070 a!3488) i!1381) k!2747))))

(declare-fun b!1057912 () Bool)

(declare-fun e!601801 () Bool)

(declare-fun e!601804 () Bool)

(assert (=> b!1057912 (= e!601801 e!601804)))

(declare-fun res!706642 () Bool)

(assert (=> b!1057912 (=> (not res!706642) (not e!601804))))

(declare-datatypes ((List!22513 0))(
  ( (Nil!22510) (Cons!22509 (h!23718 (_ BitVec 64)) (t!31827 List!22513)) )
))
(declare-fun contains!6219 (List!22513 (_ BitVec 64)) Bool)

(assert (=> b!1057912 (= res!706642 (not (contains!6219 Nil!22510 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1057913 () Bool)

(declare-fun e!601805 () Bool)

(assert (=> b!1057913 (= e!601799 e!601805)))

(declare-fun res!706638 () Bool)

(assert (=> b!1057913 (=> (not res!706638) (not e!601805))))

(declare-fun lt!466652 () array!66708)

(declare-fun arrayContainsKey!0 (array!66708 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1057913 (= res!706638 (arrayContainsKey!0 lt!466652 k!2747 #b00000000000000000000000000000000))))

(assert (=> b!1057913 (= lt!466652 (array!66709 (store (arr!32070 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) (size!32607 a!3488)))))

(declare-fun b!1057914 () Bool)

(declare-fun e!601802 () Bool)

(assert (=> b!1057914 (= e!601805 e!601802)))

(declare-fun res!706644 () Bool)

(assert (=> b!1057914 (=> (not res!706644) (not e!601802))))

(assert (=> b!1057914 (= res!706644 (not (= lt!466650 i!1381)))))

(declare-fun arrayScanForKey!0 (array!66708 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1057914 (= lt!466650 (arrayScanForKey!0 lt!466652 k!2747 #b00000000000000000000000000000000))))

(declare-fun b!1057915 () Bool)

(assert (=> b!1057915 (= e!601800 (arrayContainsKey!0 a!3488 k!2747 i!1381))))

(declare-fun b!1057916 () Bool)

(declare-fun e!601806 () Bool)

(assert (=> b!1057916 (= e!601802 (not e!601806))))

(declare-fun res!706643 () Bool)

(assert (=> b!1057916 (=> res!706643 e!601806)))

(assert (=> b!1057916 (= res!706643 (or (bvsgt lt!466650 i!1381) (bvsle i!1381 lt!466650)))))

(assert (=> b!1057916 e!601803))

(declare-fun res!706634 () Bool)

(assert (=> b!1057916 (=> (not res!706634) (not e!601803))))

(assert (=> b!1057916 (= res!706634 (= (select (store (arr!32070 a!3488) i!1381 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466650) k!2747))))

(declare-fun b!1057917 () Bool)

(declare-fun res!706645 () Bool)

(assert (=> b!1057917 (=> (not res!706645) (not e!601799))))

(declare-fun arrayNoDuplicates!0 (array!66708 (_ BitVec 32) List!22513) Bool)

(assert (=> b!1057917 (= res!706645 (arrayNoDuplicates!0 a!3488 #b00000000000000000000000000000000 Nil!22510))))

(declare-fun b!1057918 () Bool)

(assert (=> b!1057918 (= e!601804 (not (contains!6219 Nil!22510 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1057919 () Bool)

(declare-fun res!706640 () Bool)

(assert (=> b!1057919 (=> res!706640 e!601801)))

(declare-fun noDuplicate!1580 (List!22513) Bool)

(assert (=> b!1057919 (= res!706640 (not (noDuplicate!1580 Nil!22510)))))

(declare-fun b!1057920 () Bool)

(assert (=> b!1057920 (= e!601806 e!601801)))

(declare-fun res!706636 () Bool)

(assert (=> b!1057920 (=> res!706636 e!601801)))

(declare-fun lt!466653 () (_ BitVec 32))

(assert (=> b!1057920 (= res!706636 (or (bvslt lt!466650 #b00000000000000000000000000000000) (bvsge lt!466653 (size!32607 a!3488)) (bvsge lt!466650 (size!32607 a!3488))))))

(assert (=> b!1057920 (arrayContainsKey!0 a!3488 k!2747 lt!466653)))

(declare-datatypes ((Unit!34671 0))(
  ( (Unit!34672) )
))
(declare-fun lt!466654 () Unit!34671)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!66708 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34671)

(assert (=> b!1057920 (= lt!466654 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466653))))

(assert (=> b!1057920 (= lt!466653 (bvadd #b00000000000000000000000000000001 lt!466650))))

(assert (=> b!1057920 (arrayNoDuplicates!0 a!3488 lt!466650 Nil!22510)))

(declare-fun lt!466651 () Unit!34671)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!66708 (_ BitVec 32) (_ BitVec 32)) Unit!34671)

(assert (=> b!1057920 (= lt!466651 (lemmaNoDuplicateFromThenFromBigger!0 a!3488 #b00000000000000000000000000000000 lt!466650))))

(assert (= (and start!93406 res!706639) b!1057917))

(assert (= (and b!1057917 res!706645) b!1057909))

(assert (= (and b!1057909 res!706635) b!1057911))

(assert (= (and b!1057911 res!706637) b!1057913))

(assert (= (and b!1057913 res!706638) b!1057914))

(assert (= (and b!1057914 res!706644) b!1057916))

(assert (= (and b!1057916 res!706634) b!1057910))

(assert (= (and b!1057910 (not res!706641)) b!1057915))

(assert (= (and b!1057916 (not res!706643)) b!1057920))

(assert (= (and b!1057920 (not res!706636)) b!1057919))

(assert (= (and b!1057919 (not res!706640)) b!1057912))

(assert (= (and b!1057912 res!706642) b!1057918))

(declare-fun m!977701 () Bool)

(assert (=> b!1057909 m!977701))

(declare-fun m!977703 () Bool)

(assert (=> b!1057920 m!977703))

(declare-fun m!977705 () Bool)

(assert (=> b!1057920 m!977705))

(declare-fun m!977707 () Bool)

(assert (=> b!1057920 m!977707))

(declare-fun m!977709 () Bool)

(assert (=> b!1057920 m!977709))

(declare-fun m!977711 () Bool)

(assert (=> b!1057911 m!977711))

(declare-fun m!977713 () Bool)

(assert (=> b!1057916 m!977713))

(declare-fun m!977715 () Bool)

(assert (=> b!1057916 m!977715))

(declare-fun m!977717 () Bool)

(assert (=> b!1057919 m!977717))

(declare-fun m!977719 () Bool)

(assert (=> start!93406 m!977719))

(declare-fun m!977721 () Bool)

(assert (=> b!1057914 m!977721))

(declare-fun m!977723 () Bool)

(assert (=> b!1057913 m!977723))

(assert (=> b!1057913 m!977713))

(declare-fun m!977725 () Bool)

(assert (=> b!1057912 m!977725))

(declare-fun m!977727 () Bool)

(assert (=> b!1057917 m!977727))

(declare-fun m!977729 () Bool)

(assert (=> b!1057915 m!977729))

(declare-fun m!977731 () Bool)

(assert (=> b!1057918 m!977731))

(push 1)

(assert (not b!1057920))

(assert (not b!1057913))

(assert (not b!1057917))

(assert (not start!93406))

(assert (not b!1057918))

(assert (not b!1057914))

(assert (not b!1057909))

(assert (not b!1057912))

(assert (not b!1057915))

(assert (not b!1057919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!128485 () Bool)

(declare-fun lt!466663 () Bool)

(declare-fun content!536 (List!22513) (Set (_ BitVec 64)))

(assert (=> d!128485 (= lt!466663 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!536 Nil!22510)))))

(declare-fun e!601828 () Bool)

(assert (=> d!128485 (= lt!466663 e!601828)))

(declare-fun res!706664 () Bool)

(assert (=> d!128485 (=> (not res!706664) (not e!601828))))

(assert (=> d!128485 (= res!706664 (is-Cons!22509 Nil!22510))))

(assert (=> d!128485 (= (contains!6219 Nil!22510 #b0000000000000000000000000000000000000000000000000000000000000000) lt!466663)))

(declare-fun b!1057946 () Bool)

(declare-fun e!601829 () Bool)

(assert (=> b!1057946 (= e!601828 e!601829)))

(declare-fun res!706665 () Bool)

(assert (=> b!1057946 (=> res!706665 e!601829)))

(assert (=> b!1057946 (= res!706665 (= (h!23718 Nil!22510) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1057948 () Bool)

(assert (=> b!1057948 (= e!601829 (contains!6219 (t!31827 Nil!22510) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!128485 res!706664) b!1057946))

(assert (= (and b!1057946 (not res!706665)) b!1057948))

(declare-fun m!977747 () Bool)

(assert (=> d!128485 m!977747))

(declare-fun m!977749 () Bool)

(assert (=> d!128485 m!977749))

(declare-fun m!977751 () Bool)

(assert (=> b!1057948 m!977751))

(assert (=> b!1057912 d!128485))

(declare-fun d!128489 () Bool)

(declare-fun res!706676 () Bool)

(declare-fun e!601842 () Bool)

(assert (=> d!128489 (=> res!706676 e!601842)))

(assert (=> d!128489 (= res!706676 (= (select (arr!32070 lt!466652) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128489 (= (arrayContainsKey!0 lt!466652 k!2747 #b00000000000000000000000000000000) e!601842)))

(declare-fun b!1057961 () Bool)

(declare-fun e!601843 () Bool)

(assert (=> b!1057961 (= e!601842 e!601843)))

(declare-fun res!706677 () Bool)

(assert (=> b!1057961 (=> (not res!706677) (not e!601843))))

(assert (=> b!1057961 (= res!706677 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!32607 lt!466652)))))

(declare-fun b!1057962 () Bool)

(assert (=> b!1057962 (= e!601843 (arrayContainsKey!0 lt!466652 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128489 (not res!706676)) b!1057961))

(assert (= (and b!1057961 res!706677) b!1057962))

(declare-fun m!977757 () Bool)

(assert (=> d!128489 m!977757))

(declare-fun m!977759 () Bool)

(assert (=> b!1057962 m!977759))

(assert (=> b!1057913 d!128489))

(declare-fun d!128493 () Bool)

(assert (=> d!128493 (= (array_inv!24692 a!3488) (bvsge (size!32607 a!3488) #b00000000000000000000000000000000))))

(assert (=> start!93406 d!128493))

(declare-fun d!128495 () Bool)

(declare-fun lt!466666 () Bool)

(assert (=> d!128495 (= lt!466666 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!536 Nil!22510)))))

(declare-fun e!601848 () Bool)

(assert (=> d!128495 (= lt!466666 e!601848)))

(declare-fun res!706681 () Bool)

(assert (=> d!128495 (=> (not res!706681) (not e!601848))))

(assert (=> d!128495 (= res!706681 (is-Cons!22509 Nil!22510))))

(assert (=> d!128495 (= (contains!6219 Nil!22510 #b1000000000000000000000000000000000000000000000000000000000000000) lt!466666)))

(declare-fun b!1057968 () Bool)

(declare-fun e!601849 () Bool)

(assert (=> b!1057968 (= e!601848 e!601849)))

(declare-fun res!706682 () Bool)

(assert (=> b!1057968 (=> res!706682 e!601849)))

(assert (=> b!1057968 (= res!706682 (= (h!23718 Nil!22510) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1057969 () Bool)

(assert (=> b!1057969 (= e!601849 (contains!6219 (t!31827 Nil!22510) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!128495 res!706681) b!1057968))

(assert (= (and b!1057968 (not res!706682)) b!1057969))

(assert (=> d!128495 m!977747))

(declare-fun m!977769 () Bool)

(assert (=> d!128495 m!977769))

(declare-fun m!977771 () Bool)

(assert (=> b!1057969 m!977771))

(assert (=> b!1057918 d!128495))

(declare-fun d!128499 () Bool)

(declare-fun res!706687 () Bool)

(declare-fun e!601854 () Bool)

(assert (=> d!128499 (=> res!706687 e!601854)))

(assert (=> d!128499 (= res!706687 (is-Nil!22510 Nil!22510))))

(assert (=> d!128499 (= (noDuplicate!1580 Nil!22510) e!601854)))

(declare-fun b!1057974 () Bool)

(declare-fun e!601855 () Bool)

(assert (=> b!1057974 (= e!601854 e!601855)))

(declare-fun res!706688 () Bool)

(assert (=> b!1057974 (=> (not res!706688) (not e!601855))))

(assert (=> b!1057974 (= res!706688 (not (contains!6219 (t!31827 Nil!22510) (h!23718 Nil!22510))))))

(declare-fun b!1057975 () Bool)

(assert (=> b!1057975 (= e!601855 (noDuplicate!1580 (t!31827 Nil!22510)))))

(assert (= (and d!128499 (not res!706687)) b!1057974))

(assert (= (and b!1057974 res!706688) b!1057975))

(declare-fun m!977777 () Bool)

(assert (=> b!1057974 m!977777))

(declare-fun m!977779 () Bool)

(assert (=> b!1057975 m!977779))

(assert (=> b!1057919 d!128499))

(declare-fun d!128505 () Bool)

(assert (=> d!128505 (= (validKeyInArray!0 k!2747) (and (not (= k!2747 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!2747 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1057909 d!128505))

(declare-fun d!128507 () Bool)

(declare-fun lt!466679 () (_ BitVec 32))

(assert (=> d!128507 (and (or (bvslt lt!466679 #b00000000000000000000000000000000) (bvsge lt!466679 (size!32607 lt!466652)) (and (bvsge lt!466679 #b00000000000000000000000000000000) (bvslt lt!466679 (size!32607 lt!466652)))) (bvsge lt!466679 #b00000000000000000000000000000000) (bvslt lt!466679 (size!32607 lt!466652)) (= (select (arr!32070 lt!466652) lt!466679) k!2747))))

(declare-fun e!601888 () (_ BitVec 32))

(assert (=> d!128507 (= lt!466679 e!601888)))

(declare-fun c!107112 () Bool)

(assert (=> d!128507 (= c!107112 (= (select (arr!32070 lt!466652) #b00000000000000000000000000000000) k!2747))))

(assert (=> d!128507 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!32607 lt!466652)) (bvslt (size!32607 lt!466652) #b01111111111111111111111111111111))))

(assert (=> d!128507 (= (arrayScanForKey!0 lt!466652 k!2747 #b00000000000000000000000000000000) lt!466679)))

(declare-fun b!1058014 () Bool)

(assert (=> b!1058014 (= e!601888 #b00000000000000000000000000000000)))

(declare-fun b!1058015 () Bool)

(assert (=> b!1058015 (= e!601888 (arrayScanForKey!0 lt!466652 k!2747 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!128507 c!107112) b!1058014))

(assert (= (and d!128507 (not c!107112)) b!1058015))

(declare-fun m!977813 () Bool)

(assert (=> d!128507 m!977813))

(assert (=> d!128507 m!977757))

(declare-fun m!977815 () Bool)

(assert (=> b!1058015 m!977815))

(assert (=> b!1057914 d!128507))

(declare-fun d!128521 () Bool)

(declare-fun res!706715 () Bool)

(declare-fun e!601889 () Bool)

(assert (=> d!128521 (=> res!706715 e!601889)))

(assert (=> d!128521 (= res!706715 (= (select (arr!32070 a!3488) i!1381) k!2747))))

(assert (=> d!128521 (= (arrayContainsKey!0 a!3488 k!2747 i!1381) e!601889)))

(declare-fun b!1058016 () Bool)

(declare-fun e!601890 () Bool)

(assert (=> b!1058016 (= e!601889 e!601890)))

(declare-fun res!706716 () Bool)

(assert (=> b!1058016 (=> (not res!706716) (not e!601890))))

(assert (=> b!1058016 (= res!706716 (bvslt (bvadd i!1381 #b00000000000000000000000000000001) (size!32607 a!3488)))))

(declare-fun b!1058017 () Bool)

(assert (=> b!1058017 (= e!601890 (arrayContainsKey!0 a!3488 k!2747 (bvadd i!1381 #b00000000000000000000000000000001)))))

(assert (= (and d!128521 (not res!706715)) b!1058016))

(assert (= (and b!1058016 res!706716) b!1058017))

(assert (=> d!128521 m!977711))

(declare-fun m!977817 () Bool)

(assert (=> b!1058017 m!977817))

(assert (=> b!1057915 d!128521))

(declare-fun d!128523 () Bool)

(declare-fun res!706717 () Bool)

(declare-fun e!601891 () Bool)

(assert (=> d!128523 (=> res!706717 e!601891)))

(assert (=> d!128523 (= res!706717 (= (select (arr!32070 a!3488) lt!466653) k!2747))))

(assert (=> d!128523 (= (arrayContainsKey!0 a!3488 k!2747 lt!466653) e!601891)))

(declare-fun b!1058018 () Bool)

(declare-fun e!601892 () Bool)

(assert (=> b!1058018 (= e!601891 e!601892)))

(declare-fun res!706718 () Bool)

(assert (=> b!1058018 (=> (not res!706718) (not e!601892))))

(assert (=> b!1058018 (= res!706718 (bvslt (bvadd lt!466653 #b00000000000000000000000000000001) (size!32607 a!3488)))))

(declare-fun b!1058019 () Bool)

(assert (=> b!1058019 (= e!601892 (arrayContainsKey!0 a!3488 k!2747 (bvadd lt!466653 #b00000000000000000000000000000001)))))

(assert (= (and d!128523 (not res!706717)) b!1058018))

(assert (= (and b!1058018 res!706718) b!1058019))

(declare-fun m!977819 () Bool)

(assert (=> d!128523 m!977819))

(declare-fun m!977821 () Bool)

(assert (=> b!1058019 m!977821))

(assert (=> b!1057920 d!128523))

(declare-fun d!128529 () Bool)

(assert (=> d!128529 (arrayContainsKey!0 a!3488 k!2747 lt!466653)))

(declare-fun lt!466685 () Unit!34671)

(declare-fun choose!114 (array!66708 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!34671)

(assert (=> d!128529 (= lt!466685 (choose!114 a!3488 k!2747 i!1381 lt!466653))))

(assert (=> d!128529 (bvsge i!1381 #b00000000000000000000000000000000)))

(assert (=> d!128529 (= (lemmaArrayContainsFromImpliesContainsFromSmaller!0 a!3488 k!2747 i!1381 lt!466653) lt!466685)))

(declare-fun bs!31027 () Bool)

(assert (= bs!31027 d!128529))

(assert (=> bs!31027 m!977703))

(declare-fun m!977825 () Bool)

(assert (=> bs!31027 m!977825))

(assert (=> b!1057920 d!128529))

(declare-fun b!1058044 () Bool)

(declare-fun e!601916 () Bool)

(declare-fun e!601913 () Bool)

(assert (=> b!1058044 (= e!601916 e!601913)))

(declare-fun res!706736 () Bool)

(assert (=> b!1058044 (=> (not res!706736) (not e!601913))))

(declare-fun e!601915 () Bool)

(assert (=> b!1058044 (= res!706736 (not e!601915))))

(declare-fun res!706735 () Bool)

(assert (=> b!1058044 (=> (not res!706735) (not e!601915))))

(assert (=> b!1058044 (= res!706735 (validKeyInArray!0 (select (arr!32070 a!3488) lt!466650)))))

(declare-fun d!128531 () Bool)

(declare-fun res!706737 () Bool)

(assert (=> d!128531 (=> res!706737 e!601916)))

(assert (=> d!128531 (= res!706737 (bvsge lt!466650 (size!32607 a!3488)))))

