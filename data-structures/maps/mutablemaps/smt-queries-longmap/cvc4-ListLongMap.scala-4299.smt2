; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59842 () Bool)

(assert start!59842)

(declare-fun b!660871 () Bool)

(declare-fun res!429118 () Bool)

(declare-fun e!379702 () Bool)

(assert (=> b!660871 (=> (not res!429118) (not e!379702))))

(declare-datatypes ((array!38845 0))(
  ( (array!38846 (arr!18611 (Array (_ BitVec 32) (_ BitVec 64))) (size!18975 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38845)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12705 0))(
  ( (Nil!12702) (Cons!12701 (h!13746 (_ BitVec 64)) (t!18941 List!12705)) )
))
(declare-fun acc!681 () List!12705)

(declare-fun arrayNoDuplicates!0 (array!38845 (_ BitVec 32) List!12705) Bool)

(assert (=> b!660871 (= res!429118 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660872 () Bool)

(declare-fun res!429115 () Bool)

(assert (=> b!660872 (=> (not res!429115) (not e!379702))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660872 (= res!429115 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18975 a!3626))))))

(declare-fun b!660873 () Bool)

(declare-fun e!379701 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3248 (List!12705 (_ BitVec 64)) Bool)

(assert (=> b!660873 (= e!379701 (contains!3248 acc!681 k!2843))))

(declare-fun b!660874 () Bool)

(declare-fun res!429117 () Bool)

(assert (=> b!660874 (=> (not res!429117) (not e!379702))))

(declare-fun e!379699 () Bool)

(assert (=> b!660874 (= res!429117 e!379699)))

(declare-fun res!429121 () Bool)

(assert (=> b!660874 (=> res!429121 e!379699)))

(assert (=> b!660874 (= res!429121 e!379701)))

(declare-fun res!429112 () Bool)

(assert (=> b!660874 (=> (not res!429112) (not e!379701))))

(assert (=> b!660874 (= res!429112 (bvsgt from!3004 i!1382))))

(declare-fun b!660875 () Bool)

(declare-fun res!429109 () Bool)

(assert (=> b!660875 (=> (not res!429109) (not e!379702))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!660875 (= res!429109 (validKeyInArray!0 k!2843))))

(declare-fun res!429114 () Bool)

(assert (=> start!59842 (=> (not res!429114) (not e!379702))))

(assert (=> start!59842 (= res!429114 (and (bvslt (size!18975 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18975 a!3626))))))

(assert (=> start!59842 e!379702))

(assert (=> start!59842 true))

(declare-fun array_inv!14385 (array!38845) Bool)

(assert (=> start!59842 (array_inv!14385 a!3626)))

(declare-fun b!660876 () Bool)

(declare-fun res!429116 () Bool)

(assert (=> b!660876 (=> (not res!429116) (not e!379702))))

(assert (=> b!660876 (= res!429116 (not (contains!3248 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660877 () Bool)

(declare-fun res!429113 () Bool)

(assert (=> b!660877 (=> (not res!429113) (not e!379702))))

(assert (=> b!660877 (= res!429113 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18975 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!660878 () Bool)

(assert (=> b!660878 (= e!379702 (not true))))

(declare-fun arrayContainsKey!0 (array!38845 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!660878 (arrayContainsKey!0 (array!38846 (store (arr!18611 a!3626) i!1382 k!2843) (size!18975 a!3626)) k!2843 from!3004)))

(declare-fun b!660879 () Bool)

(declare-fun e!379700 () Bool)

(assert (=> b!660879 (= e!379699 e!379700)))

(declare-fun res!429119 () Bool)

(assert (=> b!660879 (=> (not res!429119) (not e!379700))))

(assert (=> b!660879 (= res!429119 (bvsle from!3004 i!1382))))

(declare-fun b!660880 () Bool)

(assert (=> b!660880 (= e!379700 (not (contains!3248 acc!681 k!2843)))))

(declare-fun b!660881 () Bool)

(declare-fun res!429120 () Bool)

(assert (=> b!660881 (=> (not res!429120) (not e!379702))))

(assert (=> b!660881 (= res!429120 (not (contains!3248 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660882 () Bool)

(declare-fun res!429122 () Bool)

(assert (=> b!660882 (=> (not res!429122) (not e!379702))))

(assert (=> b!660882 (= res!429122 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!660883 () Bool)

(declare-fun res!429111 () Bool)

(assert (=> b!660883 (=> (not res!429111) (not e!379702))))

(assert (=> b!660883 (= res!429111 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12702))))

(declare-fun b!660884 () Bool)

(declare-fun res!429110 () Bool)

(assert (=> b!660884 (=> (not res!429110) (not e!379702))))

(declare-fun noDuplicate!495 (List!12705) Bool)

(assert (=> b!660884 (= res!429110 (noDuplicate!495 acc!681))))

(assert (= (and start!59842 res!429114) b!660884))

(assert (= (and b!660884 res!429110) b!660876))

(assert (= (and b!660876 res!429116) b!660881))

(assert (= (and b!660881 res!429120) b!660874))

(assert (= (and b!660874 res!429112) b!660873))

(assert (= (and b!660874 (not res!429121)) b!660879))

(assert (= (and b!660879 res!429119) b!660880))

(assert (= (and b!660874 res!429117) b!660883))

(assert (= (and b!660883 res!429111) b!660871))

(assert (= (and b!660871 res!429118) b!660872))

(assert (= (and b!660872 res!429115) b!660875))

(assert (= (and b!660875 res!429109) b!660882))

(assert (= (and b!660882 res!429122) b!660877))

(assert (= (and b!660877 res!429113) b!660878))

(declare-fun m!633299 () Bool)

(assert (=> b!660873 m!633299))

(declare-fun m!633301 () Bool)

(assert (=> b!660876 m!633301))

(declare-fun m!633303 () Bool)

(assert (=> b!660884 m!633303))

(declare-fun m!633305 () Bool)

(assert (=> b!660883 m!633305))

(assert (=> b!660880 m!633299))

(declare-fun m!633307 () Bool)

(assert (=> start!59842 m!633307))

(declare-fun m!633309 () Bool)

(assert (=> b!660881 m!633309))

(declare-fun m!633311 () Bool)

(assert (=> b!660871 m!633311))

(declare-fun m!633313 () Bool)

(assert (=> b!660878 m!633313))

(declare-fun m!633315 () Bool)

(assert (=> b!660878 m!633315))

(declare-fun m!633317 () Bool)

(assert (=> b!660882 m!633317))

(declare-fun m!633319 () Bool)

(assert (=> b!660875 m!633319))

(push 1)

(assert (not b!660881))

(assert (not b!660883))

(assert (not b!660871))

(assert (not b!660873))

(assert (not b!660882))

(assert (not b!660876))

(assert (not b!660878))

(assert (not start!59842))

(assert (not b!660884))

(assert (not b!660875))

(assert (not b!660880))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

