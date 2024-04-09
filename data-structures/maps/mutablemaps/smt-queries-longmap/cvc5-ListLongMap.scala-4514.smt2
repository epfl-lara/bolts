; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62568 () Bool)

(assert start!62568)

(declare-fun b!704895 () Bool)

(declare-fun res!468896 () Bool)

(declare-fun e!397683 () Bool)

(assert (=> b!704895 (=> (not res!468896) (not e!397683))))

(declare-datatypes ((List!13348 0))(
  ( (Nil!13345) (Cons!13344 (h!14389 (_ BitVec 64)) (t!19638 List!13348)) )
))
(declare-fun newAcc!49 () List!13348)

(declare-fun noDuplicate!1138 (List!13348) Bool)

(assert (=> b!704895 (= res!468896 (noDuplicate!1138 newAcc!49))))

(declare-fun b!704896 () Bool)

(declare-fun res!468884 () Bool)

(assert (=> b!704896 (=> (not res!468884) (not e!397683))))

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40203 0))(
  ( (array!40204 (arr!19254 (Array (_ BitVec 32) (_ BitVec 64))) (size!19637 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40203)

(assert (=> b!704896 (= res!468884 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19637 a!3591)))))

(declare-fun b!704897 () Bool)

(declare-fun res!468888 () Bool)

(assert (=> b!704897 (=> (not res!468888) (not e!397683))))

(declare-fun acc!652 () List!13348)

(declare-fun arrayNoDuplicates!0 (array!40203 (_ BitVec 32) List!13348) Bool)

(assert (=> b!704897 (= res!468888 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!704898 () Bool)

(declare-fun res!468879 () Bool)

(assert (=> b!704898 (=> (not res!468879) (not e!397683))))

(declare-fun contains!3891 (List!13348 (_ BitVec 64)) Bool)

(assert (=> b!704898 (= res!468879 (not (contains!3891 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704899 () Bool)

(declare-fun res!468895 () Bool)

(assert (=> b!704899 (=> (not res!468895) (not e!397683))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40203 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!704899 (= res!468895 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!704900 () Bool)

(assert (=> b!704900 (= e!397683 false)))

(declare-fun lt!317823 () Bool)

(assert (=> b!704900 (= lt!317823 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!704901 () Bool)

(declare-fun res!468894 () Bool)

(assert (=> b!704901 (=> (not res!468894) (not e!397683))))

(assert (=> b!704901 (= res!468894 (not (contains!3891 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704902 () Bool)

(declare-fun res!468885 () Bool)

(assert (=> b!704902 (=> (not res!468885) (not e!397683))))

(assert (=> b!704902 (= res!468885 (not (contains!3891 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704903 () Bool)

(declare-fun res!468890 () Bool)

(assert (=> b!704903 (=> (not res!468890) (not e!397683))))

(assert (=> b!704903 (= res!468890 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!704904 () Bool)

(declare-fun res!468887 () Bool)

(assert (=> b!704904 (=> (not res!468887) (not e!397683))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!704904 (= res!468887 (validKeyInArray!0 k!2824))))

(declare-fun res!468886 () Bool)

(assert (=> start!62568 (=> (not res!468886) (not e!397683))))

(assert (=> start!62568 (= res!468886 (and (bvslt (size!19637 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19637 a!3591))))))

(assert (=> start!62568 e!397683))

(assert (=> start!62568 true))

(declare-fun array_inv!15028 (array!40203) Bool)

(assert (=> start!62568 (array_inv!15028 a!3591)))

(declare-fun b!704905 () Bool)

(declare-fun res!468889 () Bool)

(assert (=> b!704905 (=> (not res!468889) (not e!397683))))

(assert (=> b!704905 (= res!468889 (contains!3891 newAcc!49 k!2824))))

(declare-fun b!704906 () Bool)

(declare-fun res!468892 () Bool)

(assert (=> b!704906 (=> (not res!468892) (not e!397683))))

(assert (=> b!704906 (= res!468892 (not (contains!3891 acc!652 k!2824)))))

(declare-fun b!704907 () Bool)

(declare-fun res!468881 () Bool)

(assert (=> b!704907 (=> (not res!468881) (not e!397683))))

(declare-fun subseq!335 (List!13348 List!13348) Bool)

(assert (=> b!704907 (= res!468881 (subseq!335 acc!652 newAcc!49))))

(declare-fun b!704908 () Bool)

(declare-fun res!468893 () Bool)

(assert (=> b!704908 (=> (not res!468893) (not e!397683))))

(assert (=> b!704908 (= res!468893 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!704909 () Bool)

(declare-fun res!468883 () Bool)

(assert (=> b!704909 (=> (not res!468883) (not e!397683))))

(assert (=> b!704909 (= res!468883 (not (contains!3891 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!704910 () Bool)

(declare-fun res!468882 () Bool)

(assert (=> b!704910 (=> (not res!468882) (not e!397683))))

(declare-fun -!300 (List!13348 (_ BitVec 64)) List!13348)

(assert (=> b!704910 (= res!468882 (= (-!300 newAcc!49 k!2824) acc!652))))

(declare-fun b!704911 () Bool)

(declare-fun res!468891 () Bool)

(assert (=> b!704911 (=> (not res!468891) (not e!397683))))

(assert (=> b!704911 (= res!468891 (noDuplicate!1138 acc!652))))

(declare-fun b!704912 () Bool)

(declare-fun res!468880 () Bool)

(assert (=> b!704912 (=> (not res!468880) (not e!397683))))

(assert (=> b!704912 (= res!468880 (not (validKeyInArray!0 (select (arr!19254 a!3591) from!2969))))))

(assert (= (and start!62568 res!468886) b!704911))

(assert (= (and b!704911 res!468891) b!704895))

(assert (= (and b!704895 res!468896) b!704898))

(assert (= (and b!704898 res!468879) b!704909))

(assert (= (and b!704909 res!468883) b!704899))

(assert (= (and b!704899 res!468895) b!704906))

(assert (= (and b!704906 res!468892) b!704904))

(assert (= (and b!704904 res!468887) b!704897))

(assert (= (and b!704897 res!468888) b!704907))

(assert (= (and b!704907 res!468881) b!704905))

(assert (= (and b!704905 res!468889) b!704910))

(assert (= (and b!704910 res!468882) b!704902))

(assert (= (and b!704902 res!468885) b!704901))

(assert (= (and b!704901 res!468894) b!704896))

(assert (= (and b!704896 res!468884) b!704912))

(assert (= (and b!704912 res!468880) b!704908))

(assert (= (and b!704908 res!468893) b!704903))

(assert (= (and b!704903 res!468890) b!704900))

(declare-fun m!663255 () Bool)

(assert (=> b!704903 m!663255))

(declare-fun m!663257 () Bool)

(assert (=> b!704909 m!663257))

(declare-fun m!663259 () Bool)

(assert (=> b!704905 m!663259))

(declare-fun m!663261 () Bool)

(assert (=> b!704911 m!663261))

(declare-fun m!663263 () Bool)

(assert (=> b!704910 m!663263))

(declare-fun m!663265 () Bool)

(assert (=> b!704895 m!663265))

(declare-fun m!663267 () Bool)

(assert (=> b!704899 m!663267))

(declare-fun m!663269 () Bool)

(assert (=> b!704901 m!663269))

(declare-fun m!663271 () Bool)

(assert (=> b!704900 m!663271))

(declare-fun m!663273 () Bool)

(assert (=> b!704904 m!663273))

(declare-fun m!663275 () Bool)

(assert (=> b!704897 m!663275))

(declare-fun m!663277 () Bool)

(assert (=> b!704902 m!663277))

(declare-fun m!663279 () Bool)

(assert (=> b!704906 m!663279))

(declare-fun m!663281 () Bool)

(assert (=> b!704907 m!663281))

(declare-fun m!663283 () Bool)

(assert (=> start!62568 m!663283))

(declare-fun m!663285 () Bool)

(assert (=> b!704912 m!663285))

(assert (=> b!704912 m!663285))

(declare-fun m!663287 () Bool)

(assert (=> b!704912 m!663287))

(declare-fun m!663289 () Bool)

(assert (=> b!704898 m!663289))

(push 1)

(assert (not b!704898))

(assert (not b!704905))

(assert (not b!704906))

(assert (not b!704895))

(assert (not b!704897))

(assert (not b!704909))

(assert (not b!704910))

(assert (not b!704912))

(assert (not b!704911))

(assert (not b!704899))

(assert (not start!62568))

(assert (not b!704902))

(assert (not b!704907))

(assert (not b!704900))

(assert (not b!704904))

(assert (not b!704901))

(assert (not b!704903))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

