; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62166 () Bool)

(assert start!62166)

(declare-fun b!695795 () Bool)

(declare-fun res!459927 () Bool)

(declare-fun e!395694 () Bool)

(assert (=> b!695795 (=> (not res!459927) (not e!395694))))

(declare-datatypes ((array!39912 0))(
  ( (array!39913 (arr!19113 (Array (_ BitVec 32) (_ BitVec 64))) (size!19496 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39912)

(declare-datatypes ((List!13207 0))(
  ( (Nil!13204) (Cons!13203 (h!14248 (_ BitVec 64)) (t!19497 List!13207)) )
))
(declare-fun acc!681 () List!13207)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!39912 (_ BitVec 32) List!13207) Bool)

(assert (=> b!695795 (= res!459927 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!695796 () Bool)

(declare-fun res!459925 () Bool)

(assert (=> b!695796 (=> (not res!459925) (not e!395694))))

(declare-fun contains!3750 (List!13207 (_ BitVec 64)) Bool)

(assert (=> b!695796 (= res!459925 (not (contains!3750 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695797 () Bool)

(declare-fun res!459930 () Bool)

(assert (=> b!695797 (=> (not res!459930) (not e!395694))))

(declare-fun e!395697 () Bool)

(assert (=> b!695797 (= res!459930 e!395697)))

(declare-fun res!459921 () Bool)

(assert (=> b!695797 (=> res!459921 e!395697)))

(declare-fun e!395695 () Bool)

(assert (=> b!695797 (= res!459921 e!395695)))

(declare-fun res!459931 () Bool)

(assert (=> b!695797 (=> (not res!459931) (not e!395695))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!695797 (= res!459931 (bvsgt from!3004 i!1382))))

(declare-fun b!695798 () Bool)

(declare-fun res!459923 () Bool)

(assert (=> b!695798 (=> (not res!459923) (not e!395694))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!695798 (= res!459923 (not (validKeyInArray!0 (select (arr!19113 a!3626) from!3004))))))

(declare-fun b!695799 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!695799 (= e!395695 (contains!3750 acc!681 k!2843))))

(declare-fun b!695800 () Bool)

(declare-fun res!459932 () Bool)

(assert (=> b!695800 (=> (not res!459932) (not e!395694))))

(declare-fun noDuplicate!997 (List!13207) Bool)

(assert (=> b!695800 (= res!459932 (noDuplicate!997 acc!681))))

(declare-fun b!695801 () Bool)

(declare-fun res!459922 () Bool)

(assert (=> b!695801 (=> (not res!459922) (not e!395694))))

(assert (=> b!695801 (= res!459922 (not (contains!3750 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!695802 () Bool)

(declare-fun res!459918 () Bool)

(assert (=> b!695802 (=> (not res!459918) (not e!395694))))

(assert (=> b!695802 (= res!459918 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13204))))

(declare-fun b!695803 () Bool)

(declare-fun res!459920 () Bool)

(assert (=> b!695803 (=> (not res!459920) (not e!395694))))

(assert (=> b!695803 (= res!459920 (validKeyInArray!0 k!2843))))

(declare-fun b!695804 () Bool)

(declare-fun res!459924 () Bool)

(assert (=> b!695804 (=> (not res!459924) (not e!395694))))

(declare-fun arrayContainsKey!0 (array!39912 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!695804 (= res!459924 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!695805 () Bool)

(declare-fun e!395698 () Bool)

(assert (=> b!695805 (= e!395698 (contains!3750 acc!681 k!2843))))

(declare-fun b!695806 () Bool)

(declare-fun e!395693 () Bool)

(assert (=> b!695806 (= e!395693 (not (contains!3750 acc!681 k!2843)))))

(declare-fun b!695807 () Bool)

(declare-fun e!395696 () Bool)

(assert (=> b!695807 (= e!395696 (not (contains!3750 acc!681 k!2843)))))

(declare-fun b!695808 () Bool)

(declare-fun res!459935 () Bool)

(assert (=> b!695808 (=> (not res!459935) (not e!395694))))

(assert (=> b!695808 (= res!459935 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!695809 () Bool)

(declare-fun res!459933 () Bool)

(assert (=> b!695809 (=> (not res!459933) (not e!395694))))

(assert (=> b!695809 (= res!459933 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19496 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!695810 () Bool)

(declare-fun res!459917 () Bool)

(assert (=> b!695810 (=> (not res!459917) (not e!395694))))

(assert (=> b!695810 (= res!459917 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19496 a!3626))))))

(declare-fun b!695811 () Bool)

(assert (=> b!695811 (= e!395694 false)))

(declare-fun lt!317028 () Bool)

(declare-fun e!395691 () Bool)

(assert (=> b!695811 (= lt!317028 e!395691)))

(declare-fun res!459926 () Bool)

(assert (=> b!695811 (=> res!459926 e!395691)))

(assert (=> b!695811 (= res!459926 e!395698)))

(declare-fun res!459919 () Bool)

(assert (=> b!695811 (=> (not res!459919) (not e!395698))))

(assert (=> b!695811 (= res!459919 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!695812 () Bool)

(assert (=> b!695812 (= e!395697 e!395696)))

(declare-fun res!459929 () Bool)

(assert (=> b!695812 (=> (not res!459929) (not e!395696))))

(assert (=> b!695812 (= res!459929 (bvsle from!3004 i!1382))))

(declare-fun res!459934 () Bool)

(assert (=> start!62166 (=> (not res!459934) (not e!395694))))

(assert (=> start!62166 (= res!459934 (and (bvslt (size!19496 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19496 a!3626))))))

(assert (=> start!62166 e!395694))

(assert (=> start!62166 true))

(declare-fun array_inv!14887 (array!39912) Bool)

(assert (=> start!62166 (array_inv!14887 a!3626)))

(declare-fun b!695813 () Bool)

(assert (=> b!695813 (= e!395691 e!395693)))

(declare-fun res!459928 () Bool)

(assert (=> b!695813 (=> (not res!459928) (not e!395693))))

(assert (=> b!695813 (= res!459928 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!62166 res!459934) b!695800))

(assert (= (and b!695800 res!459932) b!695796))

(assert (= (and b!695796 res!459925) b!695801))

(assert (= (and b!695801 res!459922) b!695797))

(assert (= (and b!695797 res!459931) b!695799))

(assert (= (and b!695797 (not res!459921)) b!695812))

(assert (= (and b!695812 res!459929) b!695807))

(assert (= (and b!695797 res!459930) b!695802))

(assert (= (and b!695802 res!459918) b!695795))

(assert (= (and b!695795 res!459927) b!695810))

(assert (= (and b!695810 res!459917) b!695803))

(assert (= (and b!695803 res!459920) b!695804))

(assert (= (and b!695804 res!459924) b!695809))

(assert (= (and b!695809 res!459933) b!695798))

(assert (= (and b!695798 res!459923) b!695808))

(assert (= (and b!695808 res!459935) b!695811))

(assert (= (and b!695811 res!459919) b!695805))

(assert (= (and b!695811 (not res!459926)) b!695813))

(assert (= (and b!695813 res!459928) b!695806))

(declare-fun m!657063 () Bool)

(assert (=> b!695806 m!657063))

(declare-fun m!657065 () Bool)

(assert (=> b!695803 m!657065))

(declare-fun m!657067 () Bool)

(assert (=> b!695800 m!657067))

(assert (=> b!695805 m!657063))

(declare-fun m!657069 () Bool)

(assert (=> b!695802 m!657069))

(declare-fun m!657071 () Bool)

(assert (=> b!695804 m!657071))

(declare-fun m!657073 () Bool)

(assert (=> b!695795 m!657073))

(assert (=> b!695807 m!657063))

(declare-fun m!657075 () Bool)

(assert (=> b!695798 m!657075))

(assert (=> b!695798 m!657075))

(declare-fun m!657077 () Bool)

(assert (=> b!695798 m!657077))

(declare-fun m!657079 () Bool)

(assert (=> b!695796 m!657079))

(declare-fun m!657081 () Bool)

(assert (=> start!62166 m!657081))

(assert (=> b!695799 m!657063))

(declare-fun m!657083 () Bool)

(assert (=> b!695801 m!657083))

(push 1)

(assert (not b!695798))

(assert (not b!695795))

(assert (not b!695805))

(assert (not b!695807))

(assert (not b!695801))

(assert (not b!695803))

(assert (not b!695804))

(assert (not start!62166))

(assert (not b!695806))

(assert (not b!695802))

(assert (not b!695800))

(assert (not b!695796))

(assert (not b!695799))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

