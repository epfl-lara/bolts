; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!63514 () Bool)

(assert start!63514)

(declare-fun b!714831 () Bool)

(declare-fun res!477978 () Bool)

(declare-fun e!401718 () Bool)

(assert (=> b!714831 (=> (not res!477978) (not e!401718))))

(declare-datatypes ((List!13468 0))(
  ( (Nil!13465) (Cons!13464 (h!14509 (_ BitVec 64)) (t!19791 List!13468)) )
))
(declare-fun newAcc!49 () List!13468)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun contains!4011 (List!13468 (_ BitVec 64)) Bool)

(assert (=> b!714831 (= res!477978 (contains!4011 newAcc!49 k!2824))))

(declare-fun b!714832 () Bool)

(declare-fun res!477970 () Bool)

(assert (=> b!714832 (=> (not res!477970) (not e!401718))))

(declare-datatypes ((array!40482 0))(
  ( (array!40483 (arr!19374 (Array (_ BitVec 32) (_ BitVec 64))) (size!19790 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40482)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!714832 (= res!477970 (not (validKeyInArray!0 (select (arr!19374 a!3591) from!2969))))))

(declare-fun b!714833 () Bool)

(declare-fun res!477968 () Bool)

(assert (=> b!714833 (=> (not res!477968) (not e!401718))))

(declare-fun acc!652 () List!13468)

(declare-fun noDuplicate!1258 (List!13468) Bool)

(assert (=> b!714833 (= res!477968 (noDuplicate!1258 acc!652))))

(declare-fun b!714834 () Bool)

(declare-fun res!477971 () Bool)

(assert (=> b!714834 (=> (not res!477971) (not e!401718))))

(declare-fun -!420 (List!13468 (_ BitVec 64)) List!13468)

(assert (=> b!714834 (= res!477971 (= (-!420 newAcc!49 k!2824) acc!652))))

(declare-fun b!714835 () Bool)

(declare-fun res!477983 () Bool)

(assert (=> b!714835 (=> (not res!477983) (not e!401718))))

(assert (=> b!714835 (= res!477983 (not (contains!4011 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714837 () Bool)

(declare-fun res!477976 () Bool)

(assert (=> b!714837 (=> (not res!477976) (not e!401718))))

(declare-fun arrayContainsKey!0 (array!40482 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!714837 (= res!477976 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!714838 () Bool)

(assert (=> b!714838 (= e!401718 false)))

(declare-fun lt!318764 () Bool)

(declare-fun arrayNoDuplicates!0 (array!40482 (_ BitVec 32) List!13468) Bool)

(assert (=> b!714838 (= lt!318764 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) acc!652))))

(declare-fun b!714839 () Bool)

(declare-fun res!477975 () Bool)

(assert (=> b!714839 (=> (not res!477975) (not e!401718))))

(assert (=> b!714839 (= res!477975 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun b!714840 () Bool)

(declare-fun res!477977 () Bool)

(assert (=> b!714840 (=> (not res!477977) (not e!401718))))

(declare-fun subseq!455 (List!13468 List!13468) Bool)

(assert (=> b!714840 (= res!477977 (subseq!455 acc!652 newAcc!49))))

(declare-fun b!714841 () Bool)

(declare-fun res!477974 () Bool)

(assert (=> b!714841 (=> (not res!477974) (not e!401718))))

(assert (=> b!714841 (= res!477974 (not (arrayContainsKey!0 a!3591 k!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!714842 () Bool)

(declare-fun res!477981 () Bool)

(assert (=> b!714842 (=> (not res!477981) (not e!401718))))

(assert (=> b!714842 (= res!477981 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19790 a!3591)))))

(declare-fun b!714843 () Bool)

(declare-fun res!477984 () Bool)

(assert (=> b!714843 (=> (not res!477984) (not e!401718))))

(assert (=> b!714843 (= res!477984 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!714844 () Bool)

(declare-fun res!477969 () Bool)

(assert (=> b!714844 (=> (not res!477969) (not e!401718))))

(assert (=> b!714844 (= res!477969 (not (contains!4011 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714845 () Bool)

(declare-fun res!477982 () Bool)

(assert (=> b!714845 (=> (not res!477982) (not e!401718))))

(assert (=> b!714845 (= res!477982 (not (contains!4011 acc!652 k!2824)))))

(declare-fun b!714846 () Bool)

(declare-fun res!477973 () Bool)

(assert (=> b!714846 (=> (not res!477973) (not e!401718))))

(assert (=> b!714846 (= res!477973 (not (contains!4011 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!714836 () Bool)

(declare-fun res!477967 () Bool)

(assert (=> b!714836 (=> (not res!477967) (not e!401718))))

(assert (=> b!714836 (= res!477967 (not (contains!4011 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!477972 () Bool)

(assert (=> start!63514 (=> (not res!477972) (not e!401718))))

(assert (=> start!63514 (= res!477972 (and (bvslt (size!19790 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19790 a!3591))))))

(assert (=> start!63514 e!401718))

(assert (=> start!63514 true))

(declare-fun array_inv!15148 (array!40482) Bool)

(assert (=> start!63514 (array_inv!15148 a!3591)))

(declare-fun b!714847 () Bool)

(declare-fun res!477980 () Bool)

(assert (=> b!714847 (=> (not res!477980) (not e!401718))))

(assert (=> b!714847 (= res!477980 (validKeyInArray!0 k!2824))))

(declare-fun b!714848 () Bool)

(declare-fun res!477979 () Bool)

(assert (=> b!714848 (=> (not res!477979) (not e!401718))))

(assert (=> b!714848 (= res!477979 (noDuplicate!1258 newAcc!49))))

(assert (= (and start!63514 res!477972) b!714833))

(assert (= (and b!714833 res!477968) b!714848))

(assert (= (and b!714848 res!477979) b!714835))

(assert (= (and b!714835 res!477983) b!714846))

(assert (= (and b!714846 res!477973) b!714837))

(assert (= (and b!714837 res!477976) b!714845))

(assert (= (and b!714845 res!477982) b!714847))

(assert (= (and b!714847 res!477980) b!714843))

(assert (= (and b!714843 res!477984) b!714840))

(assert (= (and b!714840 res!477977) b!714831))

(assert (= (and b!714831 res!477978) b!714834))

(assert (= (and b!714834 res!477971) b!714836))

(assert (= (and b!714836 res!477967) b!714844))

(assert (= (and b!714844 res!477969) b!714842))

(assert (= (and b!714842 res!477981) b!714832))

(assert (= (and b!714832 res!477970) b!714839))

(assert (= (and b!714839 res!477975) b!714841))

(assert (= (and b!714841 res!477974) b!714838))

(declare-fun m!671301 () Bool)

(assert (=> b!714837 m!671301))

(declare-fun m!671303 () Bool)

(assert (=> b!714832 m!671303))

(assert (=> b!714832 m!671303))

(declare-fun m!671305 () Bool)

(assert (=> b!714832 m!671305))

(declare-fun m!671307 () Bool)

(assert (=> b!714834 m!671307))

(declare-fun m!671309 () Bool)

(assert (=> b!714838 m!671309))

(declare-fun m!671311 () Bool)

(assert (=> b!714840 m!671311))

(declare-fun m!671313 () Bool)

(assert (=> b!714836 m!671313))

(declare-fun m!671315 () Bool)

(assert (=> start!63514 m!671315))

(declare-fun m!671317 () Bool)

(assert (=> b!714848 m!671317))

(declare-fun m!671319 () Bool)

(assert (=> b!714843 m!671319))

(declare-fun m!671321 () Bool)

(assert (=> b!714831 m!671321))

(declare-fun m!671323 () Bool)

(assert (=> b!714847 m!671323))

(declare-fun m!671325 () Bool)

(assert (=> b!714846 m!671325))

(declare-fun m!671327 () Bool)

(assert (=> b!714845 m!671327))

(declare-fun m!671329 () Bool)

(assert (=> b!714835 m!671329))

(declare-fun m!671331 () Bool)

(assert (=> b!714841 m!671331))

(declare-fun m!671333 () Bool)

(assert (=> b!714844 m!671333))

(declare-fun m!671335 () Bool)

(assert (=> b!714833 m!671335))

(push 1)

(assert (not b!714845))

(assert (not b!714833))

(assert (not b!714841))

(assert (not b!714847))

(assert (not start!63514))

(assert (not b!714846))

(assert (not b!714835))

(assert (not b!714836))

(assert (not b!714843))

(assert (not b!714840))

(assert (not b!714848))

(assert (not b!714834))

(assert (not b!714831))

(assert (not b!714844))

(assert (not b!714832))

(assert (not b!714837))

(assert (not b!714838))

(check-sat)

