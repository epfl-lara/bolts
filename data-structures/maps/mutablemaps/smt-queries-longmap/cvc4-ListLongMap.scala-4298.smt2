; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59836 () Bool)

(assert start!59836)

(declare-fun b!660745 () Bool)

(declare-fun res!428989 () Bool)

(declare-fun e!379654 () Bool)

(assert (=> b!660745 (=> (not res!428989) (not e!379654))))

(declare-datatypes ((array!38839 0))(
  ( (array!38840 (arr!18608 (Array (_ BitVec 32) (_ BitVec 64))) (size!18972 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38839)

(declare-datatypes ((List!12702 0))(
  ( (Nil!12699) (Cons!12698 (h!13743 (_ BitVec 64)) (t!18938 List!12702)) )
))
(declare-fun arrayNoDuplicates!0 (array!38839 (_ BitVec 32) List!12702) Bool)

(assert (=> b!660745 (= res!428989 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12699))))

(declare-fun res!428993 () Bool)

(assert (=> start!59836 (=> (not res!428993) (not e!379654))))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59836 (= res!428993 (and (bvslt (size!18972 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18972 a!3626))))))

(assert (=> start!59836 e!379654))

(assert (=> start!59836 true))

(declare-fun array_inv!14382 (array!38839) Bool)

(assert (=> start!59836 (array_inv!14382 a!3626)))

(declare-fun b!660746 () Bool)

(declare-fun e!379655 () Bool)

(declare-fun acc!681 () List!12702)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3245 (List!12702 (_ BitVec 64)) Bool)

(assert (=> b!660746 (= e!379655 (contains!3245 acc!681 k!2843))))

(declare-fun b!660747 () Bool)

(declare-fun e!379657 () Bool)

(declare-fun e!379653 () Bool)

(assert (=> b!660747 (= e!379657 e!379653)))

(declare-fun res!428983 () Bool)

(assert (=> b!660747 (=> (not res!428983) (not e!379653))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!660747 (= res!428983 (bvsle from!3004 i!1382))))

(declare-fun b!660748 () Bool)

(assert (=> b!660748 (= e!379653 (not (contains!3245 acc!681 k!2843)))))

(declare-fun b!660749 () Bool)

(declare-fun res!428996 () Bool)

(assert (=> b!660749 (=> (not res!428996) (not e!379654))))

(assert (=> b!660749 (= res!428996 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!660750 () Bool)

(declare-fun res!428986 () Bool)

(assert (=> b!660750 (=> (not res!428986) (not e!379654))))

(assert (=> b!660750 (= res!428986 (not (contains!3245 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660751 () Bool)

(declare-fun res!428992 () Bool)

(assert (=> b!660751 (=> (not res!428992) (not e!379654))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!660751 (= res!428992 (validKeyInArray!0 k!2843))))

(declare-fun b!660752 () Bool)

(declare-fun res!428985 () Bool)

(assert (=> b!660752 (=> (not res!428985) (not e!379654))))

(declare-fun arrayContainsKey!0 (array!38839 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!660752 (= res!428985 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!660753 () Bool)

(declare-fun res!428988 () Bool)

(assert (=> b!660753 (=> (not res!428988) (not e!379654))))

(assert (=> b!660753 (= res!428988 e!379657)))

(declare-fun res!428990 () Bool)

(assert (=> b!660753 (=> res!428990 e!379657)))

(assert (=> b!660753 (= res!428990 e!379655)))

(declare-fun res!428991 () Bool)

(assert (=> b!660753 (=> (not res!428991) (not e!379655))))

(assert (=> b!660753 (= res!428991 (bvsgt from!3004 i!1382))))

(declare-fun b!660754 () Bool)

(assert (=> b!660754 (= e!379654 (not (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000)))))

(assert (=> b!660754 (arrayContainsKey!0 (array!38840 (store (arr!18608 a!3626) i!1382 k!2843) (size!18972 a!3626)) k!2843 from!3004)))

(declare-fun b!660755 () Bool)

(declare-fun res!428995 () Bool)

(assert (=> b!660755 (=> (not res!428995) (not e!379654))))

(assert (=> b!660755 (= res!428995 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18972 a!3626))))))

(declare-fun b!660756 () Bool)

(declare-fun res!428987 () Bool)

(assert (=> b!660756 (=> (not res!428987) (not e!379654))))

(assert (=> b!660756 (= res!428987 (not (contains!3245 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660757 () Bool)

(declare-fun res!428994 () Bool)

(assert (=> b!660757 (=> (not res!428994) (not e!379654))))

(declare-fun noDuplicate!492 (List!12702) Bool)

(assert (=> b!660757 (= res!428994 (noDuplicate!492 acc!681))))

(declare-fun b!660758 () Bool)

(declare-fun res!428984 () Bool)

(assert (=> b!660758 (=> (not res!428984) (not e!379654))))

(assert (=> b!660758 (= res!428984 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18972 a!3626)) (= from!3004 i!1382)))))

(assert (= (and start!59836 res!428993) b!660757))

(assert (= (and b!660757 res!428994) b!660756))

(assert (= (and b!660756 res!428987) b!660750))

(assert (= (and b!660750 res!428986) b!660753))

(assert (= (and b!660753 res!428991) b!660746))

(assert (= (and b!660753 (not res!428990)) b!660747))

(assert (= (and b!660747 res!428983) b!660748))

(assert (= (and b!660753 res!428988) b!660745))

(assert (= (and b!660745 res!428989) b!660749))

(assert (= (and b!660749 res!428996) b!660755))

(assert (= (and b!660755 res!428995) b!660751))

(assert (= (and b!660751 res!428992) b!660752))

(assert (= (and b!660752 res!428985) b!660758))

(assert (= (and b!660758 res!428984) b!660754))

(declare-fun m!633233 () Bool)

(assert (=> b!660751 m!633233))

(declare-fun m!633235 () Bool)

(assert (=> b!660757 m!633235))

(declare-fun m!633237 () Bool)

(assert (=> start!59836 m!633237))

(declare-fun m!633239 () Bool)

(assert (=> b!660752 m!633239))

(declare-fun m!633241 () Bool)

(assert (=> b!660754 m!633241))

(declare-fun m!633243 () Bool)

(assert (=> b!660754 m!633243))

(declare-fun m!633245 () Bool)

(assert (=> b!660748 m!633245))

(declare-fun m!633247 () Bool)

(assert (=> b!660756 m!633247))

(declare-fun m!633249 () Bool)

(assert (=> b!660745 m!633249))

(declare-fun m!633251 () Bool)

(assert (=> b!660750 m!633251))

(assert (=> b!660746 m!633245))

(declare-fun m!633253 () Bool)

(assert (=> b!660749 m!633253))

(push 1)

(assert (not b!660749))

(assert (not b!660748))

(assert (not b!660750))

(assert (not b!660745))

(assert (not b!660751))

(assert (not start!59836))

(assert (not b!660746))

(assert (not b!660757))

(assert (not b!660754))

(assert (not b!660756))

