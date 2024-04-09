; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60900 () Bool)

(assert start!60900)

(declare-fun b!682836 () Bool)

(declare-fun e!388989 () Bool)

(declare-datatypes ((List!13042 0))(
  ( (Nil!13039) (Cons!13038 (h!14083 (_ BitVec 64)) (t!19293 List!13042)) )
))
(declare-fun acc!681 () List!13042)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3585 (List!13042 (_ BitVec 64)) Bool)

(assert (=> b!682836 (= e!388989 (not (contains!3585 acc!681 k!2843)))))

(declare-fun b!682837 () Bool)

(declare-fun res!448878 () Bool)

(declare-fun e!388992 () Bool)

(assert (=> b!682837 (=> (not res!448878) (not e!388992))))

(declare-datatypes ((array!39540 0))(
  ( (array!39541 (arr!18948 (Array (_ BitVec 32) (_ BitVec 64))) (size!19312 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39540)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39540 (_ BitVec 32) List!13042) Bool)

(assert (=> b!682837 (= res!448878 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!682838 () Bool)

(declare-datatypes ((Unit!23977 0))(
  ( (Unit!23978) )
))
(declare-fun e!388993 () Unit!23977)

(declare-fun Unit!23979 () Unit!23977)

(assert (=> b!682838 (= e!388993 Unit!23979)))

(declare-fun lt!313694 () Unit!23977)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39540 (_ BitVec 64) (_ BitVec 32)) Unit!23977)

(assert (=> b!682838 (= lt!313694 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!682838 false))

(declare-fun b!682839 () Bool)

(declare-fun e!388990 () Bool)

(assert (=> b!682839 (= e!388990 (contains!3585 acc!681 k!2843))))

(declare-fun b!682840 () Bool)

(declare-fun e!388988 () Unit!23977)

(declare-fun lt!313696 () Unit!23977)

(assert (=> b!682840 (= e!388988 lt!313696)))

(declare-fun lt!313698 () Unit!23977)

(declare-fun lemmaListSubSeqRefl!0 (List!13042) Unit!23977)

(assert (=> b!682840 (= lt!313698 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!170 (List!13042 List!13042) Bool)

(assert (=> b!682840 (subseq!170 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39540 List!13042 List!13042 (_ BitVec 32)) Unit!23977)

(declare-fun $colon$colon!334 (List!13042 (_ BitVec 64)) List!13042)

(assert (=> b!682840 (= lt!313696 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!334 acc!681 (select (arr!18948 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682840 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!682841 () Bool)

(declare-fun res!448874 () Bool)

(assert (=> b!682841 (=> (not res!448874) (not e!388992))))

(assert (=> b!682841 (= res!448874 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13039))))

(declare-fun b!682842 () Bool)

(declare-fun res!448882 () Bool)

(assert (=> b!682842 (=> (not res!448882) (not e!388992))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!682842 (= res!448882 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19312 a!3626))))))

(declare-fun b!682843 () Bool)

(declare-fun res!448880 () Bool)

(assert (=> b!682843 (=> (not res!448880) (not e!388992))))

(declare-fun arrayContainsKey!0 (array!39540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!682843 (= res!448880 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!682844 () Bool)

(declare-fun res!448879 () Bool)

(assert (=> b!682844 (=> (not res!448879) (not e!388992))))

(assert (=> b!682844 (= res!448879 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19312 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!448873 () Bool)

(assert (=> start!60900 (=> (not res!448873) (not e!388992))))

(assert (=> start!60900 (= res!448873 (and (bvslt (size!19312 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19312 a!3626))))))

(assert (=> start!60900 e!388992))

(assert (=> start!60900 true))

(declare-fun array_inv!14722 (array!39540) Bool)

(assert (=> start!60900 (array_inv!14722 a!3626)))

(declare-fun b!682845 () Bool)

(assert (=> b!682845 (= e!388992 (not true))))

(declare-fun -!135 (List!13042 (_ BitVec 64)) List!13042)

(assert (=> b!682845 (= (-!135 ($colon$colon!334 acc!681 k!2843) k!2843) acc!681)))

(declare-fun lt!313695 () Unit!23977)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13042) Unit!23977)

(assert (=> b!682845 (= lt!313695 (lemmaLMinusHeadEqualsTail!0 k!2843 acc!681))))

(assert (=> b!682845 (subseq!170 acc!681 acc!681)))

(declare-fun lt!313693 () Unit!23977)

(assert (=> b!682845 (= lt!313693 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!682845 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!313697 () Unit!23977)

(assert (=> b!682845 (= lt!313697 e!388988)))

(declare-fun c!77350 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!682845 (= c!77350 (validKeyInArray!0 (select (arr!18948 a!3626) from!3004)))))

(declare-fun lt!313692 () Unit!23977)

(assert (=> b!682845 (= lt!313692 e!388993)))

(declare-fun c!77351 () Bool)

(assert (=> b!682845 (= c!77351 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!682845 (arrayContainsKey!0 (array!39541 (store (arr!18948 a!3626) i!1382 k!2843) (size!19312 a!3626)) k!2843 from!3004)))

(declare-fun b!682846 () Bool)

(declare-fun res!448876 () Bool)

(assert (=> b!682846 (=> (not res!448876) (not e!388992))))

(assert (=> b!682846 (= res!448876 (not (contains!3585 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682847 () Bool)

(declare-fun e!388991 () Bool)

(assert (=> b!682847 (= e!388991 e!388989)))

(declare-fun res!448871 () Bool)

(assert (=> b!682847 (=> (not res!448871) (not e!388989))))

(assert (=> b!682847 (= res!448871 (bvsle from!3004 i!1382))))

(declare-fun b!682848 () Bool)

(declare-fun res!448883 () Bool)

(assert (=> b!682848 (=> (not res!448883) (not e!388992))))

(assert (=> b!682848 (= res!448883 (not (contains!3585 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!682849 () Bool)

(declare-fun Unit!23980 () Unit!23977)

(assert (=> b!682849 (= e!388993 Unit!23980)))

(declare-fun b!682850 () Bool)

(declare-fun res!448875 () Bool)

(assert (=> b!682850 (=> (not res!448875) (not e!388992))))

(declare-fun noDuplicate!832 (List!13042) Bool)

(assert (=> b!682850 (= res!448875 (noDuplicate!832 acc!681))))

(declare-fun b!682851 () Bool)

(declare-fun Unit!23981 () Unit!23977)

(assert (=> b!682851 (= e!388988 Unit!23981)))

(declare-fun b!682852 () Bool)

(declare-fun res!448877 () Bool)

(assert (=> b!682852 (=> (not res!448877) (not e!388992))))

(assert (=> b!682852 (= res!448877 e!388991)))

(declare-fun res!448870 () Bool)

(assert (=> b!682852 (=> res!448870 e!388991)))

(assert (=> b!682852 (= res!448870 e!388990)))

(declare-fun res!448872 () Bool)

(assert (=> b!682852 (=> (not res!448872) (not e!388990))))

(assert (=> b!682852 (= res!448872 (bvsgt from!3004 i!1382))))

(declare-fun b!682853 () Bool)

(declare-fun res!448881 () Bool)

(assert (=> b!682853 (=> (not res!448881) (not e!388992))))

(assert (=> b!682853 (= res!448881 (validKeyInArray!0 k!2843))))

(assert (= (and start!60900 res!448873) b!682850))

(assert (= (and b!682850 res!448875) b!682848))

(assert (= (and b!682848 res!448883) b!682846))

(assert (= (and b!682846 res!448876) b!682852))

(assert (= (and b!682852 res!448872) b!682839))

(assert (= (and b!682852 (not res!448870)) b!682847))

(assert (= (and b!682847 res!448871) b!682836))

(assert (= (and b!682852 res!448877) b!682841))

(assert (= (and b!682841 res!448874) b!682837))

(assert (= (and b!682837 res!448878) b!682842))

(assert (= (and b!682842 res!448882) b!682853))

(assert (= (and b!682853 res!448881) b!682843))

(assert (= (and b!682843 res!448880) b!682844))

(assert (= (and b!682844 res!448879) b!682845))

(assert (= (and b!682845 c!77351) b!682838))

(assert (= (and b!682845 (not c!77351)) b!682849))

(assert (= (and b!682845 c!77350) b!682840))

(assert (= (and b!682845 (not c!77350)) b!682851))

(declare-fun m!647505 () Bool)

(assert (=> b!682837 m!647505))

(declare-fun m!647507 () Bool)

(assert (=> b!682846 m!647507))

(declare-fun m!647509 () Bool)

(assert (=> b!682843 m!647509))

(declare-fun m!647511 () Bool)

(assert (=> b!682848 m!647511))

(declare-fun m!647513 () Bool)

(assert (=> b!682838 m!647513))

(declare-fun m!647515 () Bool)

(assert (=> b!682840 m!647515))

(declare-fun m!647517 () Bool)

(assert (=> b!682840 m!647517))

(declare-fun m!647519 () Bool)

(assert (=> b!682840 m!647519))

(declare-fun m!647521 () Bool)

(assert (=> b!682840 m!647521))

(assert (=> b!682840 m!647517))

(assert (=> b!682840 m!647519))

(declare-fun m!647523 () Bool)

(assert (=> b!682840 m!647523))

(declare-fun m!647525 () Bool)

(assert (=> b!682840 m!647525))

(declare-fun m!647527 () Bool)

(assert (=> b!682841 m!647527))

(declare-fun m!647529 () Bool)

(assert (=> b!682853 m!647529))

(declare-fun m!647531 () Bool)

(assert (=> b!682850 m!647531))

(declare-fun m!647533 () Bool)

(assert (=> start!60900 m!647533))

(declare-fun m!647535 () Bool)

(assert (=> b!682845 m!647535))

(declare-fun m!647537 () Bool)

(assert (=> b!682845 m!647537))

(assert (=> b!682845 m!647515))

(assert (=> b!682845 m!647517))

(declare-fun m!647539 () Bool)

(assert (=> b!682845 m!647539))

(declare-fun m!647541 () Bool)

(assert (=> b!682845 m!647541))

(assert (=> b!682845 m!647523))

(declare-fun m!647543 () Bool)

(assert (=> b!682845 m!647543))

(assert (=> b!682845 m!647535))

(assert (=> b!682845 m!647517))

(declare-fun m!647545 () Bool)

(assert (=> b!682845 m!647545))

(declare-fun m!647547 () Bool)

(assert (=> b!682845 m!647547))

(assert (=> b!682845 m!647525))

(declare-fun m!647549 () Bool)

(assert (=> b!682839 m!647549))

(assert (=> b!682836 m!647549))

(push 1)

(assert (not b!682850))

(assert (not b!682853))

(assert (not b!682838))

(assert (not b!682843))

(assert (not b!682837))

(assert (not b!682845))

(assert (not b!682846))

(assert (not b!682839))

(assert (not b!682848))

(assert (not b!682836))

(assert (not start!60900))

(assert (not b!682841))

(assert (not b!682840))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

