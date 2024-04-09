; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59914 () Bool)

(assert start!59914)

(declare-fun b!662879 () Bool)

(declare-fun res!431000 () Bool)

(declare-fun e!380427 () Bool)

(assert (=> b!662879 (=> (not res!431000) (not e!380427))))

(declare-datatypes ((List!12741 0))(
  ( (Nil!12738) (Cons!12737 (h!13782 (_ BitVec 64)) (t!18977 List!12741)) )
))
(declare-fun acc!681 () List!12741)

(declare-fun noDuplicate!531 (List!12741) Bool)

(assert (=> b!662879 (= res!431000 (noDuplicate!531 acc!681))))

(declare-fun b!662880 () Bool)

(declare-fun e!380426 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3284 (List!12741 (_ BitVec 64)) Bool)

(assert (=> b!662880 (= e!380426 (not (contains!3284 acc!681 k!2843)))))

(declare-fun b!662881 () Bool)

(declare-fun e!380430 () Bool)

(assert (=> b!662881 (= e!380430 true)))

(declare-fun lt!309134 () List!12741)

(declare-fun lt!309130 () Bool)

(declare-datatypes ((array!38917 0))(
  ( (array!38918 (arr!18647 (Array (_ BitVec 32) (_ BitVec 64))) (size!19011 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38917)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!38917 (_ BitVec 32) List!12741) Bool)

(assert (=> b!662881 (= lt!309130 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!309134))))

(declare-datatypes ((Unit!23034 0))(
  ( (Unit!23035) )
))
(declare-fun lt!309132 () Unit!23034)

(declare-fun noDuplicateSubseq!22 (List!12741 List!12741) Unit!23034)

(assert (=> b!662881 (= lt!309132 (noDuplicateSubseq!22 acc!681 lt!309134))))

(declare-fun b!662882 () Bool)

(declare-fun e!380424 () Unit!23034)

(declare-fun Unit!23036 () Unit!23034)

(assert (=> b!662882 (= e!380424 Unit!23036)))

(declare-fun b!662883 () Bool)

(declare-fun res!431007 () Bool)

(assert (=> b!662883 (=> res!431007 e!380430)))

(declare-fun subseq!22 (List!12741 List!12741) Bool)

(assert (=> b!662883 (= res!431007 (not (subseq!22 acc!681 lt!309134)))))

(declare-fun b!662884 () Bool)

(declare-fun res!430999 () Bool)

(assert (=> b!662884 (=> res!430999 e!380430)))

(assert (=> b!662884 (= res!430999 (not (noDuplicate!531 lt!309134)))))

(declare-fun b!662885 () Bool)

(declare-fun res!431002 () Bool)

(assert (=> b!662885 (=> (not res!431002) (not e!380427))))

(assert (=> b!662885 (= res!431002 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!662886 () Bool)

(declare-fun e!380428 () Bool)

(assert (=> b!662886 (= e!380428 (contains!3284 acc!681 k!2843))))

(declare-fun b!662887 () Bool)

(declare-fun res!431008 () Bool)

(assert (=> b!662887 (=> (not res!431008) (not e!380427))))

(assert (=> b!662887 (= res!431008 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12738))))

(declare-fun b!662888 () Bool)

(declare-fun e!380431 () Bool)

(assert (=> b!662888 (= e!380431 e!380430)))

(declare-fun res!430993 () Bool)

(assert (=> b!662888 (=> res!430993 e!380430)))

(assert (=> b!662888 (= res!430993 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!153 (List!12741 (_ BitVec 64)) List!12741)

(assert (=> b!662888 (= lt!309134 ($colon$colon!153 acc!681 (select (arr!18647 a!3626) from!3004)))))

(assert (=> b!662888 (subseq!22 acc!681 acc!681)))

(declare-fun lt!309131 () Unit!23034)

(declare-fun lemmaListSubSeqRefl!0 (List!12741) Unit!23034)

(assert (=> b!662888 (= lt!309131 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!662889 () Bool)

(declare-fun res!431011 () Bool)

(assert (=> b!662889 (=> (not res!431011) (not e!380427))))

(assert (=> b!662889 (= res!431011 (not (contains!3284 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!430995 () Bool)

(assert (=> start!59914 (=> (not res!430995) (not e!380427))))

(assert (=> start!59914 (= res!430995 (and (bvslt (size!19011 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19011 a!3626))))))

(assert (=> start!59914 e!380427))

(assert (=> start!59914 true))

(declare-fun array_inv!14421 (array!38917) Bool)

(assert (=> start!59914 (array_inv!14421 a!3626)))

(declare-fun b!662890 () Bool)

(declare-fun e!380425 () Bool)

(assert (=> b!662890 (= e!380425 e!380426)))

(declare-fun res!430994 () Bool)

(assert (=> b!662890 (=> (not res!430994) (not e!380426))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!662890 (= res!430994 (bvsle from!3004 i!1382))))

(declare-fun b!662891 () Bool)

(declare-fun Unit!23037 () Unit!23034)

(assert (=> b!662891 (= e!380424 Unit!23037)))

(declare-fun lt!309133 () Unit!23034)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38917 (_ BitVec 64) (_ BitVec 32)) Unit!23034)

(assert (=> b!662891 (= lt!309133 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!662891 false))

(declare-fun b!662892 () Bool)

(declare-fun res!430998 () Bool)

(assert (=> b!662892 (=> (not res!430998) (not e!380427))))

(assert (=> b!662892 (= res!430998 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19011 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!662893 () Bool)

(declare-fun res!430997 () Bool)

(assert (=> b!662893 (=> (not res!430997) (not e!380427))))

(assert (=> b!662893 (= res!430997 (not (contains!3284 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662894 () Bool)

(declare-fun res!431005 () Bool)

(assert (=> b!662894 (=> res!431005 e!380430)))

(assert (=> b!662894 (= res!431005 (contains!3284 lt!309134 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662895 () Bool)

(declare-fun res!431010 () Bool)

(assert (=> b!662895 (=> (not res!431010) (not e!380427))))

(assert (=> b!662895 (= res!431010 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19011 a!3626))))))

(declare-fun b!662896 () Bool)

(declare-fun res!430996 () Bool)

(assert (=> b!662896 (=> (not res!430996) (not e!380427))))

(declare-fun arrayContainsKey!0 (array!38917 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!662896 (= res!430996 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!662897 () Bool)

(declare-fun res!431009 () Bool)

(assert (=> b!662897 (=> (not res!431009) (not e!380427))))

(assert (=> b!662897 (= res!431009 e!380425)))

(declare-fun res!431012 () Bool)

(assert (=> b!662897 (=> res!431012 e!380425)))

(assert (=> b!662897 (= res!431012 e!380428)))

(declare-fun res!431004 () Bool)

(assert (=> b!662897 (=> (not res!431004) (not e!380428))))

(assert (=> b!662897 (= res!431004 (bvsgt from!3004 i!1382))))

(declare-fun b!662898 () Bool)

(declare-fun res!431001 () Bool)

(assert (=> b!662898 (=> (not res!431001) (not e!380427))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!662898 (= res!431001 (validKeyInArray!0 k!2843))))

(declare-fun b!662899 () Bool)

(declare-fun res!431006 () Bool)

(assert (=> b!662899 (=> res!431006 e!380430)))

(assert (=> b!662899 (= res!431006 (contains!3284 lt!309134 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662900 () Bool)

(assert (=> b!662900 (= e!380427 (not e!380431))))

(declare-fun res!431003 () Bool)

(assert (=> b!662900 (=> res!431003 e!380431)))

(assert (=> b!662900 (= res!431003 (not (validKeyInArray!0 (select (arr!18647 a!3626) from!3004))))))

(declare-fun lt!309135 () Unit!23034)

(assert (=> b!662900 (= lt!309135 e!380424)))

(declare-fun c!76310 () Bool)

(assert (=> b!662900 (= c!76310 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!662900 (arrayContainsKey!0 (array!38918 (store (arr!18647 a!3626) i!1382 k!2843) (size!19011 a!3626)) k!2843 from!3004)))

(assert (= (and start!59914 res!430995) b!662879))

(assert (= (and b!662879 res!431000) b!662893))

(assert (= (and b!662893 res!430997) b!662889))

(assert (= (and b!662889 res!431011) b!662897))

(assert (= (and b!662897 res!431004) b!662886))

(assert (= (and b!662897 (not res!431012)) b!662890))

(assert (= (and b!662890 res!430994) b!662880))

(assert (= (and b!662897 res!431009) b!662887))

(assert (= (and b!662887 res!431008) b!662885))

(assert (= (and b!662885 res!431002) b!662895))

(assert (= (and b!662895 res!431010) b!662898))

(assert (= (and b!662898 res!431001) b!662896))

(assert (= (and b!662896 res!430996) b!662892))

(assert (= (and b!662892 res!430998) b!662900))

(assert (= (and b!662900 c!76310) b!662891))

(assert (= (and b!662900 (not c!76310)) b!662882))

(assert (= (and b!662900 (not res!431003)) b!662888))

(assert (= (and b!662888 (not res!430993)) b!662884))

(assert (= (and b!662884 (not res!430999)) b!662899))

(assert (= (and b!662899 (not res!431006)) b!662894))

(assert (= (and b!662894 (not res!431005)) b!662883))

(assert (= (and b!662883 (not res!431007)) b!662881))

(declare-fun m!634611 () Bool)

(assert (=> b!662893 m!634611))

(declare-fun m!634613 () Bool)

(assert (=> b!662883 m!634613))

(declare-fun m!634615 () Bool)

(assert (=> b!662886 m!634615))

(declare-fun m!634617 () Bool)

(assert (=> b!662898 m!634617))

(declare-fun m!634619 () Bool)

(assert (=> b!662891 m!634619))

(declare-fun m!634621 () Bool)

(assert (=> b!662888 m!634621))

(assert (=> b!662888 m!634621))

(declare-fun m!634623 () Bool)

(assert (=> b!662888 m!634623))

(declare-fun m!634625 () Bool)

(assert (=> b!662888 m!634625))

(declare-fun m!634627 () Bool)

(assert (=> b!662888 m!634627))

(declare-fun m!634629 () Bool)

(assert (=> b!662879 m!634629))

(declare-fun m!634631 () Bool)

(assert (=> b!662884 m!634631))

(declare-fun m!634633 () Bool)

(assert (=> b!662887 m!634633))

(declare-fun m!634635 () Bool)

(assert (=> start!59914 m!634635))

(assert (=> b!662880 m!634615))

(declare-fun m!634637 () Bool)

(assert (=> b!662885 m!634637))

(declare-fun m!634639 () Bool)

(assert (=> b!662899 m!634639))

(declare-fun m!634641 () Bool)

(assert (=> b!662889 m!634641))

(declare-fun m!634643 () Bool)

(assert (=> b!662881 m!634643))

(declare-fun m!634645 () Bool)

(assert (=> b!662881 m!634645))

(declare-fun m!634647 () Bool)

(assert (=> b!662896 m!634647))

(assert (=> b!662900 m!634621))

(declare-fun m!634649 () Bool)

(assert (=> b!662900 m!634649))

(declare-fun m!634651 () Bool)

(assert (=> b!662900 m!634651))

(assert (=> b!662900 m!634621))

(declare-fun m!634653 () Bool)

(assert (=> b!662900 m!634653))

(declare-fun m!634655 () Bool)

(assert (=> b!662900 m!634655))

(declare-fun m!634657 () Bool)

(assert (=> b!662894 m!634657))

(push 1)

