; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59782 () Bool)

(assert start!59782)

(declare-fun res!428209 () Bool)

(declare-fun e!379249 () Bool)

(assert (=> start!59782 (=> (not res!428209) (not e!379249))))

(declare-datatypes ((array!38785 0))(
  ( (array!38786 (arr!18581 (Array (_ BitVec 32) (_ BitVec 64))) (size!18945 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38785)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59782 (= res!428209 (and (bvslt (size!18945 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!18945 a!3626))))))

(assert (=> start!59782 e!379249))

(assert (=> start!59782 true))

(declare-fun array_inv!14355 (array!38785) Bool)

(assert (=> start!59782 (array_inv!14355 a!3626)))

(declare-fun b!659968 () Bool)

(declare-fun res!428208 () Bool)

(assert (=> b!659968 (=> (not res!428208) (not e!379249))))

(declare-datatypes ((List!12675 0))(
  ( (Nil!12672) (Cons!12671 (h!13716 (_ BitVec 64)) (t!18911 List!12675)) )
))
(declare-fun acc!681 () List!12675)

(declare-fun contains!3218 (List!12675 (_ BitVec 64)) Bool)

(assert (=> b!659968 (= res!428208 (not (contains!3218 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659969 () Bool)

(declare-fun e!379248 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(assert (=> b!659969 (= e!379248 (not (contains!3218 acc!681 k!2843)))))

(declare-fun b!659970 () Bool)

(declare-fun res!428210 () Bool)

(assert (=> b!659970 (=> (not res!428210) (not e!379249))))

(assert (=> b!659970 (= res!428210 (not (contains!3218 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!659971 () Bool)

(declare-fun res!428211 () Bool)

(assert (=> b!659971 (=> (not res!428211) (not e!379249))))

(declare-fun e!379252 () Bool)

(assert (=> b!659971 (= res!428211 e!379252)))

(declare-fun res!428213 () Bool)

(assert (=> b!659971 (=> res!428213 e!379252)))

(declare-fun e!379250 () Bool)

(assert (=> b!659971 (= res!428213 e!379250)))

(declare-fun res!428212 () Bool)

(assert (=> b!659971 (=> (not res!428212) (not e!379250))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!659971 (= res!428212 (bvsgt from!3004 i!1382))))

(declare-fun b!659972 () Bool)

(assert (=> b!659972 (= e!379252 e!379248)))

(declare-fun res!428206 () Bool)

(assert (=> b!659972 (=> (not res!428206) (not e!379248))))

(assert (=> b!659972 (= res!428206 (bvsle from!3004 i!1382))))

(declare-fun b!659973 () Bool)

(assert (=> b!659973 (= e!379250 (contains!3218 acc!681 k!2843))))

(declare-fun b!659974 () Bool)

(declare-fun res!428207 () Bool)

(assert (=> b!659974 (=> (not res!428207) (not e!379249))))

(declare-fun noDuplicate!465 (List!12675) Bool)

(assert (=> b!659974 (= res!428207 (noDuplicate!465 acc!681))))

(declare-fun b!659975 () Bool)

(assert (=> b!659975 (= e!379249 false)))

(declare-fun lt!308694 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38785 (_ BitVec 32) List!12675) Bool)

(assert (=> b!659975 (= lt!308694 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12672))))

(assert (= (and start!59782 res!428209) b!659974))

(assert (= (and b!659974 res!428207) b!659970))

(assert (= (and b!659970 res!428210) b!659968))

(assert (= (and b!659968 res!428208) b!659971))

(assert (= (and b!659971 res!428212) b!659973))

(assert (= (and b!659971 (not res!428213)) b!659972))

(assert (= (and b!659972 res!428206) b!659969))

(assert (= (and b!659971 res!428211) b!659975))

(declare-fun m!632847 () Bool)

(assert (=> b!659968 m!632847))

(declare-fun m!632849 () Bool)

(assert (=> b!659974 m!632849))

(declare-fun m!632851 () Bool)

(assert (=> b!659975 m!632851))

(declare-fun m!632853 () Bool)

(assert (=> b!659973 m!632853))

(declare-fun m!632855 () Bool)

(assert (=> b!659970 m!632855))

(declare-fun m!632857 () Bool)

(assert (=> start!59782 m!632857))

(assert (=> b!659969 m!632853))

(push 1)

(assert (not b!659969))

(assert (not b!659970))

(assert (not b!659973))

(assert (not b!659975))

(assert (not start!59782))

(assert (not b!659968))

(assert (not b!659974))

