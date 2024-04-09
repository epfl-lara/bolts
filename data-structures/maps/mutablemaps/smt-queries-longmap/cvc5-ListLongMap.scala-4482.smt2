; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62376 () Bool)

(assert start!62376)

(declare-fun b!698247 () Bool)

(declare-fun res!462232 () Bool)

(declare-fun e!396946 () Bool)

(assert (=> b!698247 (=> (not res!462232) (not e!396946))))

(declare-datatypes ((List!13252 0))(
  ( (Nil!13249) (Cons!13248 (h!14293 (_ BitVec 64)) (t!19542 List!13252)) )
))
(declare-fun acc!652 () List!13252)

(declare-fun noDuplicate!1042 (List!13252) Bool)

(assert (=> b!698247 (= res!462232 (noDuplicate!1042 acc!652))))

(declare-fun b!698248 () Bool)

(declare-fun res!462234 () Bool)

(assert (=> b!698248 (=> (not res!462234) (not e!396946))))

(declare-fun contains!3795 (List!13252 (_ BitVec 64)) Bool)

(assert (=> b!698248 (= res!462234 (not (contains!3795 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698249 () Bool)

(declare-fun res!462236 () Bool)

(assert (=> b!698249 (=> (not res!462236) (not e!396946))))

(assert (=> b!698249 (= res!462236 (not (contains!3795 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698250 () Bool)

(declare-fun res!462231 () Bool)

(assert (=> b!698250 (=> (not res!462231) (not e!396946))))

(declare-datatypes ((array!40011 0))(
  ( (array!40012 (arr!19158 (Array (_ BitVec 32) (_ BitVec 64))) (size!19541 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40011)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40011 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!698250 (= res!462231 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!698251 () Bool)

(declare-fun res!462233 () Bool)

(assert (=> b!698251 (=> (not res!462233) (not e!396946))))

(declare-fun newAcc!49 () List!13252)

(assert (=> b!698251 (= res!462233 (noDuplicate!1042 newAcc!49))))

(declare-fun b!698252 () Bool)

(assert (=> b!698252 (= e!396946 false)))

(declare-fun lt!317211 () Bool)

(assert (=> b!698252 (= lt!317211 (contains!3795 acc!652 k!2824))))

(declare-fun res!462235 () Bool)

(assert (=> start!62376 (=> (not res!462235) (not e!396946))))

(assert (=> start!62376 (= res!462235 (and (bvslt (size!19541 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19541 a!3591))))))

(assert (=> start!62376 e!396946))

(assert (=> start!62376 true))

(declare-fun array_inv!14932 (array!40011) Bool)

(assert (=> start!62376 (array_inv!14932 a!3591)))

(assert (= (and start!62376 res!462235) b!698247))

(assert (= (and b!698247 res!462232) b!698251))

(assert (= (and b!698251 res!462233) b!698249))

(assert (= (and b!698249 res!462236) b!698248))

(assert (= (and b!698248 res!462234) b!698250))

(assert (= (and b!698250 res!462231) b!698252))

(declare-fun m!658587 () Bool)

(assert (=> b!698249 m!658587))

(declare-fun m!658589 () Bool)

(assert (=> b!698252 m!658589))

(declare-fun m!658591 () Bool)

(assert (=> b!698250 m!658591))

(declare-fun m!658593 () Bool)

(assert (=> b!698251 m!658593))

(declare-fun m!658595 () Bool)

(assert (=> b!698248 m!658595))

(declare-fun m!658597 () Bool)

(assert (=> b!698247 m!658597))

(declare-fun m!658599 () Bool)

(assert (=> start!62376 m!658599))

(push 1)

(assert (not b!698249))

(assert (not b!698251))

(assert (not b!698250))

(assert (not b!698248))

(assert (not b!698252))

(assert (not start!62376))

(assert (not b!698247))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

