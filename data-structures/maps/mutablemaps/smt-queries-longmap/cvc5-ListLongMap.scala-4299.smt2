; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59838 () Bool)

(assert start!59838)

(declare-fun b!660787 () Bool)

(declare-fun e!379672 () Bool)

(assert (=> b!660787 (= e!379672 (not true))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun k!2843 () (_ BitVec 64))

(declare-datatypes ((array!38841 0))(
  ( (array!38842 (arr!18609 (Array (_ BitVec 32) (_ BitVec 64))) (size!18973 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38841)

(declare-fun arrayContainsKey!0 (array!38841 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!660787 (arrayContainsKey!0 (array!38842 (store (arr!18609 a!3626) i!1382 k!2843) (size!18973 a!3626)) k!2843 from!3004)))

(declare-fun b!660788 () Bool)

(declare-fun e!379671 () Bool)

(declare-fun e!379670 () Bool)

(assert (=> b!660788 (= e!379671 e!379670)))

(declare-fun res!429025 () Bool)

(assert (=> b!660788 (=> (not res!429025) (not e!379670))))

(assert (=> b!660788 (= res!429025 (bvsle from!3004 i!1382))))

(declare-fun b!660789 () Bool)

(declare-fun res!429031 () Bool)

(assert (=> b!660789 (=> (not res!429031) (not e!379672))))

(assert (=> b!660789 (= res!429031 e!379671)))

(declare-fun res!429028 () Bool)

(assert (=> b!660789 (=> res!429028 e!379671)))

(declare-fun e!379668 () Bool)

(assert (=> b!660789 (= res!429028 e!379668)))

(declare-fun res!429030 () Bool)

(assert (=> b!660789 (=> (not res!429030) (not e!379668))))

(assert (=> b!660789 (= res!429030 (bvsgt from!3004 i!1382))))

(declare-fun b!660790 () Bool)

(declare-fun res!429029 () Bool)

(assert (=> b!660790 (=> (not res!429029) (not e!379672))))

(assert (=> b!660790 (= res!429029 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!18973 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!660791 () Bool)

(declare-fun res!429035 () Bool)

(assert (=> b!660791 (=> (not res!429035) (not e!379672))))

(assert (=> b!660791 (= res!429035 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!18973 a!3626))))))

(declare-fun b!660792 () Bool)

(declare-fun res!429038 () Bool)

(assert (=> b!660792 (=> (not res!429038) (not e!379672))))

(assert (=> b!660792 (= res!429038 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!660793 () Bool)

(declare-datatypes ((List!12703 0))(
  ( (Nil!12700) (Cons!12699 (h!13744 (_ BitVec 64)) (t!18939 List!12703)) )
))
(declare-fun acc!681 () List!12703)

(declare-fun contains!3246 (List!12703 (_ BitVec 64)) Bool)

(assert (=> b!660793 (= e!379668 (contains!3246 acc!681 k!2843))))

(declare-fun b!660794 () Bool)

(declare-fun res!429027 () Bool)

(assert (=> b!660794 (=> (not res!429027) (not e!379672))))

(declare-fun noDuplicate!493 (List!12703) Bool)

(assert (=> b!660794 (= res!429027 (noDuplicate!493 acc!681))))

(declare-fun b!660795 () Bool)

(assert (=> b!660795 (= e!379670 (not (contains!3246 acc!681 k!2843)))))

(declare-fun b!660796 () Bool)

(declare-fun res!429033 () Bool)

(assert (=> b!660796 (=> (not res!429033) (not e!379672))))

(assert (=> b!660796 (= res!429033 (not (contains!3246 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660797 () Bool)

(declare-fun res!429032 () Bool)

(assert (=> b!660797 (=> (not res!429032) (not e!379672))))

(declare-fun arrayNoDuplicates!0 (array!38841 (_ BitVec 32) List!12703) Bool)

(assert (=> b!660797 (= res!429032 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12700))))

(declare-fun res!429036 () Bool)

(assert (=> start!59838 (=> (not res!429036) (not e!379672))))

(assert (=> start!59838 (= res!429036 (and (bvslt (size!18973 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18973 a!3626))))))

(assert (=> start!59838 e!379672))

(assert (=> start!59838 true))

(declare-fun array_inv!14383 (array!38841) Bool)

(assert (=> start!59838 (array_inv!14383 a!3626)))

(declare-fun b!660798 () Bool)

(declare-fun res!429034 () Bool)

(assert (=> b!660798 (=> (not res!429034) (not e!379672))))

(assert (=> b!660798 (= res!429034 (not (contains!3246 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!660799 () Bool)

(declare-fun res!429026 () Bool)

(assert (=> b!660799 (=> (not res!429026) (not e!379672))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!660799 (= res!429026 (validKeyInArray!0 k!2843))))

(declare-fun b!660800 () Bool)

(declare-fun res!429037 () Bool)

(assert (=> b!660800 (=> (not res!429037) (not e!379672))))

(assert (=> b!660800 (= res!429037 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(assert (= (and start!59838 res!429036) b!660794))

(assert (= (and b!660794 res!429027) b!660796))

(assert (= (and b!660796 res!429033) b!660798))

(assert (= (and b!660798 res!429034) b!660789))

(assert (= (and b!660789 res!429030) b!660793))

(assert (= (and b!660789 (not res!429028)) b!660788))

(assert (= (and b!660788 res!429025) b!660795))

(assert (= (and b!660789 res!429031) b!660797))

(assert (= (and b!660797 res!429032) b!660800))

(assert (= (and b!660800 res!429037) b!660791))

(assert (= (and b!660791 res!429035) b!660799))

(assert (= (and b!660799 res!429026) b!660792))

(assert (= (and b!660792 res!429038) b!660790))

(assert (= (and b!660790 res!429029) b!660787))

(declare-fun m!633255 () Bool)

(assert (=> b!660793 m!633255))

(declare-fun m!633257 () Bool)

(assert (=> b!660800 m!633257))

(assert (=> b!660795 m!633255))

(declare-fun m!633259 () Bool)

(assert (=> b!660787 m!633259))

(declare-fun m!633261 () Bool)

(assert (=> b!660787 m!633261))

(declare-fun m!633263 () Bool)

(assert (=> b!660792 m!633263))

(declare-fun m!633265 () Bool)

(assert (=> b!660797 m!633265))

(declare-fun m!633267 () Bool)

(assert (=> start!59838 m!633267))

(declare-fun m!633269 () Bool)

(assert (=> b!660798 m!633269))

(declare-fun m!633271 () Bool)

(assert (=> b!660794 m!633271))

(declare-fun m!633273 () Bool)

(assert (=> b!660796 m!633273))

(declare-fun m!633275 () Bool)

(assert (=> b!660799 m!633275))

(push 1)

(assert (not b!660795))

(assert (not b!660793))

(assert (not b!660792))

(assert (not b!660798))

(assert (not b!660797))

(assert (not b!660799))

(assert (not start!59838))

(assert (not b!660794))

(assert (not b!660796))

(assert (not b!660787))

(assert (not b!660800))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

