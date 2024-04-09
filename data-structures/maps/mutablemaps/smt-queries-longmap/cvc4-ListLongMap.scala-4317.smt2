; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59950 () Bool)

(assert start!59950)

(declare-fun b!663891 () Bool)

(declare-fun e!380818 () Bool)

(declare-datatypes ((List!12759 0))(
  ( (Nil!12756) (Cons!12755 (h!13800 (_ BitVec 64)) (t!18995 List!12759)) )
))
(declare-fun acc!681 () List!12759)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3302 (List!12759 (_ BitVec 64)) Bool)

(assert (=> b!663891 (= e!380818 (contains!3302 acc!681 k!2843))))

(declare-fun b!663892 () Bool)

(declare-fun res!431819 () Bool)

(declare-fun e!380815 () Bool)

(assert (=> b!663892 (=> (not res!431819) (not e!380815))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663892 (= res!431819 (validKeyInArray!0 k!2843))))

(declare-fun b!663893 () Bool)

(declare-fun res!431814 () Bool)

(assert (=> b!663893 (=> (not res!431814) (not e!380815))))

(assert (=> b!663893 (= res!431814 (not (contains!3302 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663894 () Bool)

(declare-fun e!380816 () Bool)

(assert (=> b!663894 (= e!380816 (not (contains!3302 acc!681 k!2843)))))

(declare-fun b!663895 () Bool)

(declare-fun res!431818 () Bool)

(assert (=> b!663895 (=> (not res!431818) (not e!380815))))

(declare-fun noDuplicate!549 (List!12759) Bool)

(assert (=> b!663895 (= res!431818 (noDuplicate!549 acc!681))))

(declare-fun res!431817 () Bool)

(assert (=> start!59950 (=> (not res!431817) (not e!380815))))

(declare-datatypes ((array!38953 0))(
  ( (array!38954 (arr!18665 (Array (_ BitVec 32) (_ BitVec 64))) (size!19029 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38953)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59950 (= res!431817 (and (bvslt (size!19029 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19029 a!3626))))))

(assert (=> start!59950 e!380815))

(assert (=> start!59950 true))

(declare-fun array_inv!14439 (array!38953) Bool)

(assert (=> start!59950 (array_inv!14439 a!3626)))

(declare-fun b!663896 () Bool)

(declare-fun e!380817 () Bool)

(assert (=> b!663896 (= e!380817 e!380816)))

(declare-fun res!431811 () Bool)

(assert (=> b!663896 (=> (not res!431811) (not e!380816))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663896 (= res!431811 (bvsle from!3004 i!1382))))

(declare-fun b!663897 () Bool)

(declare-fun res!431821 () Bool)

(assert (=> b!663897 (=> (not res!431821) (not e!380815))))

(assert (=> b!663897 (= res!431821 (not (contains!3302 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663898 () Bool)

(declare-datatypes ((Unit!23120 0))(
  ( (Unit!23121) )
))
(declare-fun e!380812 () Unit!23120)

(declare-fun lt!309427 () Unit!23120)

(assert (=> b!663898 (= e!380812 lt!309427)))

(declare-fun lt!309429 () Unit!23120)

(declare-fun lemmaListSubSeqRefl!0 (List!12759) Unit!23120)

(assert (=> b!663898 (= lt!309429 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!40 (List!12759 List!12759) Bool)

(assert (=> b!663898 (subseq!40 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38953 List!12759 List!12759 (_ BitVec 32)) Unit!23120)

(declare-fun $colon$colon!171 (List!12759 (_ BitVec 64)) List!12759)

(assert (=> b!663898 (= lt!309427 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!171 acc!681 (select (arr!18665 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!38953 (_ BitVec 32) List!12759) Bool)

(assert (=> b!663898 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!663899 () Bool)

(assert (=> b!663899 (= e!380815 (not true))))

(declare-fun lt!309431 () Bool)

(assert (=> b!663899 (= lt!309431 (contains!3302 acc!681 k!2843))))

(assert (=> b!663899 (subseq!40 acc!681 acc!681)))

(declare-fun lt!309430 () Unit!23120)

(assert (=> b!663899 (= lt!309430 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!663899 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!309426 () Unit!23120)

(assert (=> b!663899 (= lt!309426 e!380812)))

(declare-fun c!76408 () Bool)

(assert (=> b!663899 (= c!76408 (validKeyInArray!0 (select (arr!18665 a!3626) from!3004)))))

(declare-fun lt!309428 () Unit!23120)

(declare-fun e!380814 () Unit!23120)

(assert (=> b!663899 (= lt!309428 e!380814)))

(declare-fun c!76409 () Bool)

(declare-fun arrayContainsKey!0 (array!38953 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663899 (= c!76409 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663899 (arrayContainsKey!0 (array!38954 (store (arr!18665 a!3626) i!1382 k!2843) (size!19029 a!3626)) k!2843 from!3004)))

(declare-fun b!663900 () Bool)

(declare-fun Unit!23122 () Unit!23120)

(assert (=> b!663900 (= e!380812 Unit!23122)))

(declare-fun b!663901 () Bool)

(declare-fun res!431813 () Bool)

(assert (=> b!663901 (=> (not res!431813) (not e!380815))))

(assert (=> b!663901 (= res!431813 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19029 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663902 () Bool)

(declare-fun res!431820 () Bool)

(assert (=> b!663902 (=> (not res!431820) (not e!380815))))

(assert (=> b!663902 (= res!431820 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!663903 () Bool)

(declare-fun res!431809 () Bool)

(assert (=> b!663903 (=> (not res!431809) (not e!380815))))

(assert (=> b!663903 (= res!431809 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12756))))

(declare-fun b!663904 () Bool)

(declare-fun Unit!23123 () Unit!23120)

(assert (=> b!663904 (= e!380814 Unit!23123)))

(declare-fun lt!309432 () Unit!23120)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38953 (_ BitVec 64) (_ BitVec 32)) Unit!23120)

(assert (=> b!663904 (= lt!309432 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!663904 false))

(declare-fun b!663905 () Bool)

(declare-fun res!431816 () Bool)

(assert (=> b!663905 (=> (not res!431816) (not e!380815))))

(assert (=> b!663905 (= res!431816 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663906 () Bool)

(declare-fun Unit!23124 () Unit!23120)

(assert (=> b!663906 (= e!380814 Unit!23124)))

(declare-fun b!663907 () Bool)

(declare-fun res!431810 () Bool)

(assert (=> b!663907 (=> (not res!431810) (not e!380815))))

(assert (=> b!663907 (= res!431810 e!380817)))

(declare-fun res!431815 () Bool)

(assert (=> b!663907 (=> res!431815 e!380817)))

(assert (=> b!663907 (= res!431815 e!380818)))

(declare-fun res!431812 () Bool)

(assert (=> b!663907 (=> (not res!431812) (not e!380818))))

(assert (=> b!663907 (= res!431812 (bvsgt from!3004 i!1382))))

(declare-fun b!663908 () Bool)

(declare-fun res!431822 () Bool)

(assert (=> b!663908 (=> (not res!431822) (not e!380815))))

(assert (=> b!663908 (= res!431822 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19029 a!3626))))))

(assert (= (and start!59950 res!431817) b!663895))

(assert (= (and b!663895 res!431818) b!663893))

(assert (= (and b!663893 res!431814) b!663897))

(assert (= (and b!663897 res!431821) b!663907))

(assert (= (and b!663907 res!431812) b!663891))

(assert (= (and b!663907 (not res!431815)) b!663896))

(assert (= (and b!663896 res!431811) b!663894))

(assert (= (and b!663907 res!431810) b!663903))

(assert (= (and b!663903 res!431809) b!663902))

(assert (= (and b!663902 res!431820) b!663908))

(assert (= (and b!663908 res!431822) b!663892))

(assert (= (and b!663892 res!431819) b!663905))

(assert (= (and b!663905 res!431816) b!663901))

(assert (= (and b!663901 res!431813) b!663899))

(assert (= (and b!663899 c!76409) b!663904))

(assert (= (and b!663899 (not c!76409)) b!663906))

(assert (= (and b!663899 c!76408) b!663898))

(assert (= (and b!663899 (not c!76408)) b!663900))

(declare-fun m!635363 () Bool)

(assert (=> b!663905 m!635363))

(declare-fun m!635365 () Bool)

(assert (=> b!663899 m!635365))

(declare-fun m!635367 () Bool)

(assert (=> b!663899 m!635367))

(declare-fun m!635369 () Bool)

(assert (=> b!663899 m!635369))

(declare-fun m!635371 () Bool)

(assert (=> b!663899 m!635371))

(declare-fun m!635373 () Bool)

(assert (=> b!663899 m!635373))

(declare-fun m!635375 () Bool)

(assert (=> b!663899 m!635375))

(assert (=> b!663899 m!635367))

(declare-fun m!635377 () Bool)

(assert (=> b!663899 m!635377))

(declare-fun m!635379 () Bool)

(assert (=> b!663899 m!635379))

(declare-fun m!635381 () Bool)

(assert (=> b!663899 m!635381))

(declare-fun m!635383 () Bool)

(assert (=> b!663892 m!635383))

(declare-fun m!635385 () Bool)

(assert (=> b!663903 m!635385))

(declare-fun m!635387 () Bool)

(assert (=> b!663893 m!635387))

(declare-fun m!635389 () Bool)

(assert (=> b!663904 m!635389))

(assert (=> b!663894 m!635369))

(declare-fun m!635391 () Bool)

(assert (=> start!59950 m!635391))

(assert (=> b!663891 m!635369))

(declare-fun m!635393 () Bool)

(assert (=> b!663902 m!635393))

(declare-fun m!635395 () Bool)

(assert (=> b!663897 m!635395))

(declare-fun m!635397 () Bool)

(assert (=> b!663895 m!635397))

(assert (=> b!663898 m!635365))

(assert (=> b!663898 m!635367))

(declare-fun m!635399 () Bool)

(assert (=> b!663898 m!635399))

(declare-fun m!635401 () Bool)

(assert (=> b!663898 m!635401))

(assert (=> b!663898 m!635367))

(assert (=> b!663898 m!635399))

(assert (=> b!663898 m!635373))

(assert (=> b!663898 m!635381))

(push 1)

(assert (not b!663893))

(assert (not b!663899))

(assert (not b!663903))

(assert (not b!663905))

(assert (not start!59950))

(assert (not b!663895))

(assert (not b!663892))

(assert (not b!663894))

(assert (not b!663891))

(assert (not b!663904))

(assert (not b!663897))

(assert (not b!663902))

(assert (not b!663898))

(check-sat)

