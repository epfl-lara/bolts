; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59910 () Bool)

(assert start!59910)

(declare-fun b!662747 () Bool)

(declare-fun res!430877 () Bool)

(declare-fun e!380376 () Bool)

(assert (=> b!662747 (=> (not res!430877) (not e!380376))))

(declare-datatypes ((List!12739 0))(
  ( (Nil!12736) (Cons!12735 (h!13780 (_ BitVec 64)) (t!18975 List!12739)) )
))
(declare-fun acc!681 () List!12739)

(declare-fun contains!3282 (List!12739 (_ BitVec 64)) Bool)

(assert (=> b!662747 (= res!430877 (not (contains!3282 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662748 () Bool)

(declare-fun res!430878 () Bool)

(assert (=> b!662748 (=> (not res!430878) (not e!380376))))

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!662748 (= res!430878 (validKeyInArray!0 k!2843))))

(declare-fun b!662749 () Bool)

(declare-fun res!430882 () Bool)

(declare-fun e!380379 () Bool)

(assert (=> b!662749 (=> res!430882 e!380379)))

(declare-fun lt!309095 () List!12739)

(assert (=> b!662749 (= res!430882 (contains!3282 lt!309095 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662750 () Bool)

(declare-datatypes ((Unit!23026 0))(
  ( (Unit!23027) )
))
(declare-fun e!380383 () Unit!23026)

(declare-fun Unit!23028 () Unit!23026)

(assert (=> b!662750 (= e!380383 Unit!23028)))

(declare-fun b!662751 () Bool)

(declare-fun res!430886 () Bool)

(assert (=> b!662751 (=> (not res!430886) (not e!380376))))

(declare-datatypes ((array!38913 0))(
  ( (array!38914 (arr!18645 (Array (_ BitVec 32) (_ BitVec 64))) (size!19009 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38913)

(declare-fun arrayContainsKey!0 (array!38913 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!662751 (= res!430886 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!662752 () Bool)

(declare-fun res!430875 () Bool)

(assert (=> b!662752 (=> (not res!430875) (not e!380376))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!38913 (_ BitVec 32) List!12739) Bool)

(assert (=> b!662752 (= res!430875 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!662753 () Bool)

(declare-fun res!430887 () Bool)

(assert (=> b!662753 (=> res!430887 e!380379)))

(declare-fun subseq!20 (List!12739 List!12739) Bool)

(assert (=> b!662753 (= res!430887 (not (subseq!20 acc!681 lt!309095)))))

(declare-fun b!662754 () Bool)

(declare-fun res!430881 () Bool)

(assert (=> b!662754 (=> (not res!430881) (not e!380376))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!662754 (= res!430881 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19009 a!3626))))))

(declare-fun b!662755 () Bool)

(declare-fun res!430883 () Bool)

(assert (=> b!662755 (=> (not res!430883) (not e!380376))))

(assert (=> b!662755 (= res!430883 (not (contains!3282 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662756 () Bool)

(declare-fun e!380382 () Bool)

(assert (=> b!662756 (= e!380382 (contains!3282 acc!681 k!2843))))

(declare-fun b!662757 () Bool)

(declare-fun Unit!23029 () Unit!23026)

(assert (=> b!662757 (= e!380383 Unit!23029)))

(declare-fun lt!309096 () Unit!23026)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38913 (_ BitVec 64) (_ BitVec 32)) Unit!23026)

(assert (=> b!662757 (= lt!309096 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!662757 false))

(declare-fun b!662758 () Bool)

(declare-fun e!380378 () Bool)

(assert (=> b!662758 (= e!380376 (not e!380378))))

(declare-fun res!430888 () Bool)

(assert (=> b!662758 (=> res!430888 e!380378)))

(assert (=> b!662758 (= res!430888 (not (validKeyInArray!0 (select (arr!18645 a!3626) from!3004))))))

(declare-fun lt!309097 () Unit!23026)

(assert (=> b!662758 (= lt!309097 e!380383)))

(declare-fun c!76304 () Bool)

(assert (=> b!662758 (= c!76304 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!662758 (arrayContainsKey!0 (array!38914 (store (arr!18645 a!3626) i!1382 k!2843) (size!19009 a!3626)) k!2843 from!3004)))

(declare-fun b!662759 () Bool)

(declare-fun e!380380 () Bool)

(declare-fun e!380377 () Bool)

(assert (=> b!662759 (= e!380380 e!380377)))

(declare-fun res!430891 () Bool)

(assert (=> b!662759 (=> (not res!430891) (not e!380377))))

(assert (=> b!662759 (= res!430891 (bvsle from!3004 i!1382))))

(declare-fun b!662760 () Bool)

(declare-fun res!430874 () Bool)

(assert (=> b!662760 (=> (not res!430874) (not e!380376))))

(assert (=> b!662760 (= res!430874 e!380380)))

(declare-fun res!430880 () Bool)

(assert (=> b!662760 (=> res!430880 e!380380)))

(assert (=> b!662760 (= res!430880 e!380382)))

(declare-fun res!430885 () Bool)

(assert (=> b!662760 (=> (not res!430885) (not e!380382))))

(assert (=> b!662760 (= res!430885 (bvsgt from!3004 i!1382))))

(declare-fun b!662761 () Bool)

(assert (=> b!662761 (= e!380378 e!380379)))

(declare-fun res!430892 () Bool)

(assert (=> b!662761 (=> res!430892 e!380379)))

(assert (=> b!662761 (= res!430892 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!151 (List!12739 (_ BitVec 64)) List!12739)

(assert (=> b!662761 (= lt!309095 ($colon$colon!151 acc!681 (select (arr!18645 a!3626) from!3004)))))

(assert (=> b!662761 (subseq!20 acc!681 acc!681)))

(declare-fun lt!309099 () Unit!23026)

(declare-fun lemmaListSubSeqRefl!0 (List!12739) Unit!23026)

(assert (=> b!662761 (= lt!309099 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!662762 () Bool)

(declare-fun res!430873 () Bool)

(assert (=> b!662762 (=> (not res!430873) (not e!380376))))

(declare-fun noDuplicate!529 (List!12739) Bool)

(assert (=> b!662762 (= res!430873 (noDuplicate!529 acc!681))))

(declare-fun b!662763 () Bool)

(assert (=> b!662763 (= e!380379 true)))

(declare-fun lt!309098 () Bool)

(assert (=> b!662763 (= lt!309098 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!309095))))

(declare-fun lt!309094 () Unit!23026)

(declare-fun noDuplicateSubseq!20 (List!12739 List!12739) Unit!23026)

(assert (=> b!662763 (= lt!309094 (noDuplicateSubseq!20 acc!681 lt!309095))))

(declare-fun b!662764 () Bool)

(declare-fun res!430890 () Bool)

(assert (=> b!662764 (=> (not res!430890) (not e!380376))))

(assert (=> b!662764 (= res!430890 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19009 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!662765 () Bool)

(declare-fun res!430879 () Bool)

(assert (=> b!662765 (=> res!430879 e!380379)))

(assert (=> b!662765 (= res!430879 (contains!3282 lt!309095 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!430884 () Bool)

(assert (=> start!59910 (=> (not res!430884) (not e!380376))))

(assert (=> start!59910 (= res!430884 (and (bvslt (size!19009 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19009 a!3626))))))

(assert (=> start!59910 e!380376))

(assert (=> start!59910 true))

(declare-fun array_inv!14419 (array!38913) Bool)

(assert (=> start!59910 (array_inv!14419 a!3626)))

(declare-fun b!662766 () Bool)

(declare-fun res!430889 () Bool)

(assert (=> b!662766 (=> res!430889 e!380379)))

(assert (=> b!662766 (= res!430889 (not (noDuplicate!529 lt!309095)))))

(declare-fun b!662767 () Bool)

(assert (=> b!662767 (= e!380377 (not (contains!3282 acc!681 k!2843)))))

(declare-fun b!662768 () Bool)

(declare-fun res!430876 () Bool)

(assert (=> b!662768 (=> (not res!430876) (not e!380376))))

(assert (=> b!662768 (= res!430876 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12736))))

(assert (= (and start!59910 res!430884) b!662762))

(assert (= (and b!662762 res!430873) b!662755))

(assert (= (and b!662755 res!430883) b!662747))

(assert (= (and b!662747 res!430877) b!662760))

(assert (= (and b!662760 res!430885) b!662756))

(assert (= (and b!662760 (not res!430880)) b!662759))

(assert (= (and b!662759 res!430891) b!662767))

(assert (= (and b!662760 res!430874) b!662768))

(assert (= (and b!662768 res!430876) b!662752))

(assert (= (and b!662752 res!430875) b!662754))

(assert (= (and b!662754 res!430881) b!662748))

(assert (= (and b!662748 res!430878) b!662751))

(assert (= (and b!662751 res!430886) b!662764))

(assert (= (and b!662764 res!430890) b!662758))

(assert (= (and b!662758 c!76304) b!662757))

(assert (= (and b!662758 (not c!76304)) b!662750))

(assert (= (and b!662758 (not res!430888)) b!662761))

(assert (= (and b!662761 (not res!430892)) b!662766))

(assert (= (and b!662766 (not res!430889)) b!662765))

(assert (= (and b!662765 (not res!430879)) b!662749))

(assert (= (and b!662749 (not res!430882)) b!662753))

(assert (= (and b!662753 (not res!430887)) b!662763))

(declare-fun m!634515 () Bool)

(assert (=> b!662768 m!634515))

(declare-fun m!634517 () Bool)

(assert (=> b!662756 m!634517))

(declare-fun m!634519 () Bool)

(assert (=> b!662747 m!634519))

(declare-fun m!634521 () Bool)

(assert (=> b!662755 m!634521))

(declare-fun m!634523 () Bool)

(assert (=> b!662766 m!634523))

(declare-fun m!634525 () Bool)

(assert (=> b!662765 m!634525))

(declare-fun m!634527 () Bool)

(assert (=> b!662749 m!634527))

(declare-fun m!634529 () Bool)

(assert (=> b!662761 m!634529))

(assert (=> b!662761 m!634529))

(declare-fun m!634531 () Bool)

(assert (=> b!662761 m!634531))

(declare-fun m!634533 () Bool)

(assert (=> b!662761 m!634533))

(declare-fun m!634535 () Bool)

(assert (=> b!662761 m!634535))

(assert (=> b!662767 m!634517))

(declare-fun m!634537 () Bool)

(assert (=> b!662751 m!634537))

(declare-fun m!634539 () Bool)

(assert (=> b!662748 m!634539))

(assert (=> b!662758 m!634529))

(declare-fun m!634541 () Bool)

(assert (=> b!662758 m!634541))

(declare-fun m!634543 () Bool)

(assert (=> b!662758 m!634543))

(assert (=> b!662758 m!634529))

(declare-fun m!634545 () Bool)

(assert (=> b!662758 m!634545))

(declare-fun m!634547 () Bool)

(assert (=> b!662758 m!634547))

(declare-fun m!634549 () Bool)

(assert (=> b!662757 m!634549))

(declare-fun m!634551 () Bool)

(assert (=> b!662753 m!634551))

(declare-fun m!634553 () Bool)

(assert (=> b!662762 m!634553))

(declare-fun m!634555 () Bool)

(assert (=> b!662763 m!634555))

(declare-fun m!634557 () Bool)

(assert (=> b!662763 m!634557))

(declare-fun m!634559 () Bool)

(assert (=> start!59910 m!634559))

(declare-fun m!634561 () Bool)

(assert (=> b!662752 m!634561))

(push 1)

