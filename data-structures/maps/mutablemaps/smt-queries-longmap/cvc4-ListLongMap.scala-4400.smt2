; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!60520 () Bool)

(assert start!60520)

(declare-fun b!679918 () Bool)

(declare-datatypes ((Unit!23826 0))(
  ( (Unit!23827) )
))
(declare-fun e!387295 () Unit!23826)

(declare-fun Unit!23828 () Unit!23826)

(assert (=> b!679918 (= e!387295 Unit!23828)))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lt!312972 () Unit!23826)

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!39457 0))(
  ( (array!39458 (arr!18914 (Array (_ BitVec 32) (_ BitVec 64))) (size!19278 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39457)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39457 (_ BitVec 64) (_ BitVec 32)) Unit!23826)

(assert (=> b!679918 (= lt!312972 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!679918 false))

(declare-fun b!679919 () Bool)

(declare-fun e!387298 () Bool)

(declare-fun e!387293 () Bool)

(assert (=> b!679919 (= e!387298 (not e!387293))))

(declare-fun res!446385 () Bool)

(assert (=> b!679919 (=> res!446385 e!387293)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!679919 (= res!446385 (not (validKeyInArray!0 (select (arr!18914 a!3626) from!3004))))))

(declare-fun lt!312970 () Unit!23826)

(assert (=> b!679919 (= lt!312970 e!387295)))

(declare-fun c!77135 () Bool)

(declare-fun arrayContainsKey!0 (array!39457 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!679919 (= c!77135 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!679919 (arrayContainsKey!0 (array!39458 (store (arr!18914 a!3626) i!1382 k!2843) (size!19278 a!3626)) k!2843 from!3004)))

(declare-fun b!679920 () Bool)

(declare-fun Unit!23829 () Unit!23826)

(assert (=> b!679920 (= e!387295 Unit!23829)))

(declare-fun b!679921 () Bool)

(declare-fun res!446391 () Bool)

(assert (=> b!679921 (=> (not res!446391) (not e!387298))))

(declare-datatypes ((List!13008 0))(
  ( (Nil!13005) (Cons!13004 (h!14049 (_ BitVec 64)) (t!19244 List!13008)) )
))
(declare-fun acc!681 () List!13008)

(declare-fun contains!3551 (List!13008 (_ BitVec 64)) Bool)

(assert (=> b!679921 (= res!446391 (not (contains!3551 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679922 () Bool)

(declare-fun e!387294 () Bool)

(assert (=> b!679922 (= e!387294 (contains!3551 acc!681 k!2843))))

(declare-fun b!679923 () Bool)

(declare-fun res!446389 () Bool)

(assert (=> b!679923 (=> (not res!446389) (not e!387298))))

(assert (=> b!679923 (= res!446389 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19278 a!3626))))))

(declare-fun b!679924 () Bool)

(declare-fun res!446384 () Bool)

(assert (=> b!679924 (=> (not res!446384) (not e!387298))))

(assert (=> b!679924 (= res!446384 (validKeyInArray!0 k!2843))))

(declare-fun b!679925 () Bool)

(declare-fun res!446393 () Bool)

(assert (=> b!679925 (=> (not res!446393) (not e!387298))))

(declare-fun arrayNoDuplicates!0 (array!39457 (_ BitVec 32) List!13008) Bool)

(assert (=> b!679925 (= res!446393 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13005))))

(declare-fun b!679926 () Bool)

(declare-fun e!387297 () Bool)

(assert (=> b!679926 (= e!387297 (not (contains!3551 acc!681 k!2843)))))

(declare-fun b!679927 () Bool)

(declare-fun res!446390 () Bool)

(assert (=> b!679927 (=> (not res!446390) (not e!387298))))

(declare-fun noDuplicate!798 (List!13008) Bool)

(assert (=> b!679927 (= res!446390 (noDuplicate!798 acc!681))))

(declare-fun b!679928 () Bool)

(declare-fun res!446386 () Bool)

(assert (=> b!679928 (=> (not res!446386) (not e!387298))))

(assert (=> b!679928 (= res!446386 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19278 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!679929 () Bool)

(declare-fun res!446396 () Bool)

(assert (=> b!679929 (=> (not res!446396) (not e!387298))))

(assert (=> b!679929 (= res!446396 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!679930 () Bool)

(declare-fun e!387296 () Bool)

(assert (=> b!679930 (= e!387296 e!387297)))

(declare-fun res!446383 () Bool)

(assert (=> b!679930 (=> (not res!446383) (not e!387297))))

(assert (=> b!679930 (= res!446383 (bvsle from!3004 i!1382))))

(declare-fun b!679931 () Bool)

(declare-fun res!446388 () Bool)

(assert (=> b!679931 (=> (not res!446388) (not e!387298))))

(assert (=> b!679931 (= res!446388 e!387296)))

(declare-fun res!446392 () Bool)

(assert (=> b!679931 (=> res!446392 e!387296)))

(assert (=> b!679931 (= res!446392 e!387294)))

(declare-fun res!446395 () Bool)

(assert (=> b!679931 (=> (not res!446395) (not e!387294))))

(assert (=> b!679931 (= res!446395 (bvsgt from!3004 i!1382))))

(declare-fun res!446382 () Bool)

(assert (=> start!60520 (=> (not res!446382) (not e!387298))))

(assert (=> start!60520 (= res!446382 (and (bvslt (size!19278 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19278 a!3626))))))

(assert (=> start!60520 e!387298))

(assert (=> start!60520 true))

(declare-fun array_inv!14688 (array!39457) Bool)

(assert (=> start!60520 (array_inv!14688 a!3626)))

(declare-fun b!679932 () Bool)

(declare-fun res!446387 () Bool)

(assert (=> b!679932 (=> (not res!446387) (not e!387298))))

(assert (=> b!679932 (= res!446387 (not (contains!3551 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!679933 () Bool)

(declare-fun res!446394 () Bool)

(assert (=> b!679933 (=> (not res!446394) (not e!387298))))

(assert (=> b!679933 (= res!446394 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!679934 () Bool)

(assert (=> b!679934 (= e!387293 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun subseq!136 (List!13008 List!13008) Bool)

(assert (=> b!679934 (subseq!136 acc!681 acc!681)))

(declare-fun lt!312971 () Unit!23826)

(declare-fun lemmaListSubSeqRefl!0 (List!13008) Unit!23826)

(assert (=> b!679934 (= lt!312971 (lemmaListSubSeqRefl!0 acc!681))))

(assert (= (and start!60520 res!446382) b!679927))

(assert (= (and b!679927 res!446390) b!679921))

(assert (= (and b!679921 res!446391) b!679932))

(assert (= (and b!679932 res!446387) b!679931))

(assert (= (and b!679931 res!446395) b!679922))

(assert (= (and b!679931 (not res!446392)) b!679930))

(assert (= (and b!679930 res!446383) b!679926))

(assert (= (and b!679931 res!446388) b!679925))

(assert (= (and b!679925 res!446393) b!679933))

(assert (= (and b!679933 res!446394) b!679923))

(assert (= (and b!679923 res!446389) b!679924))

(assert (= (and b!679924 res!446384) b!679929))

(assert (= (and b!679929 res!446396) b!679928))

(assert (= (and b!679928 res!446386) b!679919))

(assert (= (and b!679919 c!77135) b!679918))

(assert (= (and b!679919 (not c!77135)) b!679920))

(assert (= (and b!679919 (not res!446385)) b!679934))

(declare-fun m!645143 () Bool)

(assert (=> b!679933 m!645143))

(declare-fun m!645145 () Bool)

(assert (=> b!679922 m!645145))

(declare-fun m!645147 () Bool)

(assert (=> b!679932 m!645147))

(declare-fun m!645149 () Bool)

(assert (=> b!679918 m!645149))

(declare-fun m!645151 () Bool)

(assert (=> b!679924 m!645151))

(declare-fun m!645153 () Bool)

(assert (=> b!679929 m!645153))

(declare-fun m!645155 () Bool)

(assert (=> b!679925 m!645155))

(declare-fun m!645157 () Bool)

(assert (=> b!679919 m!645157))

(declare-fun m!645159 () Bool)

(assert (=> b!679919 m!645159))

(declare-fun m!645161 () Bool)

(assert (=> b!679919 m!645161))

(assert (=> b!679919 m!645157))

(declare-fun m!645163 () Bool)

(assert (=> b!679919 m!645163))

(declare-fun m!645165 () Bool)

(assert (=> b!679919 m!645165))

(assert (=> b!679926 m!645145))

(declare-fun m!645167 () Bool)

(assert (=> b!679934 m!645167))

(declare-fun m!645169 () Bool)

(assert (=> b!679934 m!645169))

(declare-fun m!645171 () Bool)

(assert (=> start!60520 m!645171))

(declare-fun m!645173 () Bool)

(assert (=> b!679921 m!645173))

(declare-fun m!645175 () Bool)

(assert (=> b!679927 m!645175))

(push 1)

(assert (not b!679929))

(assert (not start!60520))

(assert (not b!679927))

(assert (not b!679921))

