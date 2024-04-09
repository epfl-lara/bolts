; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59840 () Bool)

(assert start!59840)

(declare-fun b!660829 () Bool)

(declare-fun res!429071 () Bool)

(declare-fun e!379684 () Bool)

(assert (=> b!660829 (=> (not res!429071) (not e!379684))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!38843 0))(
  ( (array!38844 (arr!18610 (Array (_ BitVec 32) (_ BitVec 64))) (size!18974 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38843)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!660829 (= res!429071 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18974 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!660830 () Bool)

(declare-fun res!429080 () Bool)

(assert (=> b!660830 (=> (not res!429080) (not e!379684))))

(declare-datatypes ((List!12704 0))(
  ( (Nil!12701) (Cons!12700 (h!13745 (_ BitVec 64)) (t!18940 List!12704)) )
))
(declare-fun acc!681 () List!12704)

(declare-fun noDuplicate!494 (List!12704) Bool)

(assert (=> b!660830 (= res!429080 (noDuplicate!494 acc!681))))

(declare-fun b!660831 () Bool)

(declare-fun res!429074 () Bool)

(assert (=> b!660831 (=> (not res!429074) (not e!379684))))

(declare-fun contains!3247 (List!12704 (_ BitVec 64)) Bool)

(assert (=> b!660831 (= res!429074 (not (contains!3247 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!429067 () Bool)

(assert (=> start!59840 (=> (not res!429067) (not e!379684))))

(assert (=> start!59840 (= res!429067 (and (bvslt (size!18974 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18974 a!3626))))))

(assert (=> start!59840 e!379684))

(assert (=> start!59840 true))

(declare-fun array_inv!14384 (array!38843) Bool)

(assert (=> start!59840 (array_inv!14384 a!3626)))

(declare-fun b!660832 () Bool)

(declare-fun res!429077 () Bool)

(assert (=> b!660832 (=> (not res!429077) (not e!379684))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38843 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!660832 (= res!429077 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!660833 () Bool)

(declare-fun e!379686 () Bool)

(assert (=> b!660833 (= e!379686 (not (contains!3247 acc!681 k0!2843)))))

(declare-fun b!660834 () Bool)

(declare-fun res!429070 () Bool)

(assert (=> b!660834 (=> (not res!429070) (not e!379684))))

(assert (=> b!660834 (= res!429070 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18974 a!3626))))))

(declare-fun b!660835 () Bool)

(declare-fun res!429069 () Bool)

(assert (=> b!660835 (=> (not res!429069) (not e!379684))))

(declare-fun e!379687 () Bool)

(assert (=> b!660835 (= res!429069 e!379687)))

(declare-fun res!429072 () Bool)

(assert (=> b!660835 (=> res!429072 e!379687)))

(declare-fun e!379685 () Bool)

(assert (=> b!660835 (= res!429072 e!379685)))

(declare-fun res!429079 () Bool)

(assert (=> b!660835 (=> (not res!429079) (not e!379685))))

(assert (=> b!660835 (= res!429079 (bvsgt from!3004 i!1382))))

(declare-fun b!660836 () Bool)

(declare-fun res!429073 () Bool)

(assert (=> b!660836 (=> (not res!429073) (not e!379684))))

(declare-fun arrayNoDuplicates!0 (array!38843 (_ BitVec 32) List!12704) Bool)

(assert (=> b!660836 (= res!429073 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12701))))

(declare-fun b!660837 () Bool)

(declare-fun res!429076 () Bool)

(assert (=> b!660837 (=> (not res!429076) (not e!379684))))

(assert (=> b!660837 (= res!429076 (not (contains!3247 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660838 () Bool)

(assert (=> b!660838 (= e!379687 e!379686)))

(declare-fun res!429078 () Bool)

(assert (=> b!660838 (=> (not res!429078) (not e!379686))))

(assert (=> b!660838 (= res!429078 (bvsle from!3004 i!1382))))

(declare-fun b!660839 () Bool)

(assert (=> b!660839 (= e!379684 (not true))))

(assert (=> b!660839 (arrayContainsKey!0 (array!38844 (store (arr!18610 a!3626) i!1382 k0!2843) (size!18974 a!3626)) k0!2843 from!3004)))

(declare-fun b!660840 () Bool)

(declare-fun res!429068 () Bool)

(assert (=> b!660840 (=> (not res!429068) (not e!379684))))

(assert (=> b!660840 (= res!429068 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660841 () Bool)

(assert (=> b!660841 (= e!379685 (contains!3247 acc!681 k0!2843))))

(declare-fun b!660842 () Bool)

(declare-fun res!429075 () Bool)

(assert (=> b!660842 (=> (not res!429075) (not e!379684))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!660842 (= res!429075 (validKeyInArray!0 k0!2843))))

(assert (= (and start!59840 res!429067) b!660830))

(assert (= (and b!660830 res!429080) b!660837))

(assert (= (and b!660837 res!429076) b!660831))

(assert (= (and b!660831 res!429074) b!660835))

(assert (= (and b!660835 res!429079) b!660841))

(assert (= (and b!660835 (not res!429072)) b!660838))

(assert (= (and b!660838 res!429078) b!660833))

(assert (= (and b!660835 res!429069) b!660836))

(assert (= (and b!660836 res!429073) b!660840))

(assert (= (and b!660840 res!429068) b!660834))

(assert (= (and b!660834 res!429070) b!660842))

(assert (= (and b!660842 res!429075) b!660832))

(assert (= (and b!660832 res!429077) b!660829))

(assert (= (and b!660829 res!429071) b!660839))

(declare-fun m!633277 () Bool)

(assert (=> b!660837 m!633277))

(declare-fun m!633279 () Bool)

(assert (=> b!660836 m!633279))

(declare-fun m!633281 () Bool)

(assert (=> b!660842 m!633281))

(declare-fun m!633283 () Bool)

(assert (=> b!660833 m!633283))

(declare-fun m!633285 () Bool)

(assert (=> b!660830 m!633285))

(declare-fun m!633287 () Bool)

(assert (=> b!660840 m!633287))

(assert (=> b!660841 m!633283))

(declare-fun m!633289 () Bool)

(assert (=> start!59840 m!633289))

(declare-fun m!633291 () Bool)

(assert (=> b!660832 m!633291))

(declare-fun m!633293 () Bool)

(assert (=> b!660839 m!633293))

(declare-fun m!633295 () Bool)

(assert (=> b!660839 m!633295))

(declare-fun m!633297 () Bool)

(assert (=> b!660831 m!633297))

(check-sat (not b!660842) (not start!59840) (not b!660832) (not b!660830) (not b!660831) (not b!660841) (not b!660833) (not b!660836) (not b!660837) (not b!660840) (not b!660839))
