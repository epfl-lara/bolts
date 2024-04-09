; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59834 () Bool)

(assert start!59834)

(declare-fun b!660703 () Bool)

(declare-fun res!428950 () Bool)

(declare-fun e!379642 () Bool)

(assert (=> b!660703 (=> (not res!428950) (not e!379642))))

(declare-fun e!379640 () Bool)

(assert (=> b!660703 (= res!428950 e!379640)))

(declare-fun res!428942 () Bool)

(assert (=> b!660703 (=> res!428942 e!379640)))

(declare-fun e!379641 () Bool)

(assert (=> b!660703 (= res!428942 e!379641)))

(declare-fun res!428945 () Bool)

(assert (=> b!660703 (=> (not res!428945) (not e!379641))))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660703 (= res!428945 (bvsgt from!3004 i!1382))))

(declare-fun b!660704 () Bool)

(declare-fun res!428946 () Bool)

(assert (=> b!660704 (=> (not res!428946) (not e!379642))))

(declare-datatypes ((array!38837 0))(
  ( (array!38838 (arr!18607 (Array (_ BitVec 32) (_ BitVec 64))) (size!18971 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38837)

(assert (=> b!660704 (= res!428946 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18971 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!428941 () Bool)

(assert (=> start!59834 (=> (not res!428941) (not e!379642))))

(assert (=> start!59834 (= res!428941 (and (bvslt (size!18971 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18971 a!3626))))))

(assert (=> start!59834 e!379642))

(assert (=> start!59834 true))

(declare-fun array_inv!14381 (array!38837) Bool)

(assert (=> start!59834 (array_inv!14381 a!3626)))

(declare-fun b!660705 () Bool)

(declare-fun res!428952 () Bool)

(assert (=> b!660705 (=> (not res!428952) (not e!379642))))

(declare-datatypes ((List!12701 0))(
  ( (Nil!12698) (Cons!12697 (h!13742 (_ BitVec 64)) (t!18937 List!12701)) )
))
(declare-fun acc!681 () List!12701)

(declare-fun arrayNoDuplicates!0 (array!38837 (_ BitVec 32) List!12701) Bool)

(assert (=> b!660705 (= res!428952 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660706 () Bool)

(declare-fun res!428944 () Bool)

(assert (=> b!660706 (=> (not res!428944) (not e!379642))))

(declare-fun contains!3244 (List!12701 (_ BitVec 64)) Bool)

(assert (=> b!660706 (= res!428944 (not (contains!3244 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660707 () Bool)

(declare-fun res!428949 () Bool)

(assert (=> b!660707 (=> (not res!428949) (not e!379642))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38837 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!660707 (= res!428949 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!660708 () Bool)

(declare-fun res!428951 () Bool)

(assert (=> b!660708 (=> (not res!428951) (not e!379642))))

(assert (=> b!660708 (= res!428951 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12698))))

(declare-fun b!660709 () Bool)

(declare-fun res!428953 () Bool)

(assert (=> b!660709 (=> (not res!428953) (not e!379642))))

(assert (=> b!660709 (= res!428953 (not (contains!3244 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660710 () Bool)

(declare-fun res!428954 () Bool)

(assert (=> b!660710 (=> (not res!428954) (not e!379642))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!660710 (= res!428954 (validKeyInArray!0 k0!2843))))

(declare-fun b!660711 () Bool)

(assert (=> b!660711 (= e!379641 (contains!3244 acc!681 k0!2843))))

(declare-fun b!660712 () Bool)

(assert (=> b!660712 (= e!379642 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(assert (=> b!660712 (arrayContainsKey!0 (array!38838 (store (arr!18607 a!3626) i!1382 k0!2843) (size!18971 a!3626)) k0!2843 from!3004)))

(declare-fun b!660713 () Bool)

(declare-fun e!379638 () Bool)

(assert (=> b!660713 (= e!379640 e!379638)))

(declare-fun res!428943 () Bool)

(assert (=> b!660713 (=> (not res!428943) (not e!379638))))

(assert (=> b!660713 (= res!428943 (bvsle from!3004 i!1382))))

(declare-fun b!660714 () Bool)

(declare-fun res!428948 () Bool)

(assert (=> b!660714 (=> (not res!428948) (not e!379642))))

(assert (=> b!660714 (= res!428948 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18971 a!3626))))))

(declare-fun b!660715 () Bool)

(assert (=> b!660715 (= e!379638 (not (contains!3244 acc!681 k0!2843)))))

(declare-fun b!660716 () Bool)

(declare-fun res!428947 () Bool)

(assert (=> b!660716 (=> (not res!428947) (not e!379642))))

(declare-fun noDuplicate!491 (List!12701) Bool)

(assert (=> b!660716 (= res!428947 (noDuplicate!491 acc!681))))

(assert (= (and start!59834 res!428941) b!660716))

(assert (= (and b!660716 res!428947) b!660709))

(assert (= (and b!660709 res!428953) b!660706))

(assert (= (and b!660706 res!428944) b!660703))

(assert (= (and b!660703 res!428945) b!660711))

(assert (= (and b!660703 (not res!428942)) b!660713))

(assert (= (and b!660713 res!428943) b!660715))

(assert (= (and b!660703 res!428950) b!660708))

(assert (= (and b!660708 res!428951) b!660705))

(assert (= (and b!660705 res!428952) b!660714))

(assert (= (and b!660714 res!428948) b!660710))

(assert (= (and b!660710 res!428954) b!660707))

(assert (= (and b!660707 res!428949) b!660704))

(assert (= (and b!660704 res!428946) b!660712))

(declare-fun m!633211 () Bool)

(assert (=> b!660708 m!633211))

(declare-fun m!633213 () Bool)

(assert (=> b!660716 m!633213))

(declare-fun m!633215 () Bool)

(assert (=> b!660709 m!633215))

(declare-fun m!633217 () Bool)

(assert (=> start!59834 m!633217))

(declare-fun m!633219 () Bool)

(assert (=> b!660715 m!633219))

(declare-fun m!633221 () Bool)

(assert (=> b!660706 m!633221))

(assert (=> b!660711 m!633219))

(declare-fun m!633223 () Bool)

(assert (=> b!660712 m!633223))

(declare-fun m!633225 () Bool)

(assert (=> b!660712 m!633225))

(declare-fun m!633227 () Bool)

(assert (=> b!660705 m!633227))

(declare-fun m!633229 () Bool)

(assert (=> b!660707 m!633229))

(declare-fun m!633231 () Bool)

(assert (=> b!660710 m!633231))

(check-sat (not b!660711) (not start!59834) (not b!660715) (not b!660707) (not b!660716) (not b!660712) (not b!660709) (not b!660705) (not b!660710) (not b!660708) (not b!660706))
(check-sat)
