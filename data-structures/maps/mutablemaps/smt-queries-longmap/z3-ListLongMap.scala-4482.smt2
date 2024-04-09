; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62378 () Bool)

(assert start!62378)

(declare-fun b!698265 () Bool)

(declare-fun res!462249 () Bool)

(declare-fun e!396952 () Bool)

(assert (=> b!698265 (=> (not res!462249) (not e!396952))))

(declare-datatypes ((List!13253 0))(
  ( (Nil!13250) (Cons!13249 (h!14294 (_ BitVec 64)) (t!19543 List!13253)) )
))
(declare-fun acc!652 () List!13253)

(declare-fun noDuplicate!1043 (List!13253) Bool)

(assert (=> b!698265 (= res!462249 (noDuplicate!1043 acc!652))))

(declare-fun b!698266 () Bool)

(declare-fun res!462251 () Bool)

(assert (=> b!698266 (=> (not res!462251) (not e!396952))))

(declare-fun newAcc!49 () List!13253)

(assert (=> b!698266 (= res!462251 (noDuplicate!1043 newAcc!49))))

(declare-fun b!698267 () Bool)

(declare-fun res!462254 () Bool)

(assert (=> b!698267 (=> (not res!462254) (not e!396952))))

(declare-fun contains!3796 (List!13253 (_ BitVec 64)) Bool)

(assert (=> b!698267 (= res!462254 (not (contains!3796 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698268 () Bool)

(assert (=> b!698268 (= e!396952 false)))

(declare-fun lt!317214 () Bool)

(declare-fun k0!2824 () (_ BitVec 64))

(assert (=> b!698268 (= lt!317214 (contains!3796 acc!652 k0!2824))))

(declare-fun b!698269 () Bool)

(declare-fun res!462250 () Bool)

(assert (=> b!698269 (=> (not res!462250) (not e!396952))))

(declare-datatypes ((array!40013 0))(
  ( (array!40014 (arr!19159 (Array (_ BitVec 32) (_ BitVec 64))) (size!19542 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40013)

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!40013 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!698269 (= res!462250 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!698270 () Bool)

(declare-fun res!462253 () Bool)

(assert (=> b!698270 (=> (not res!462253) (not e!396952))))

(assert (=> b!698270 (= res!462253 (not (contains!3796 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!462252 () Bool)

(assert (=> start!62378 (=> (not res!462252) (not e!396952))))

(assert (=> start!62378 (= res!462252 (and (bvslt (size!19542 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19542 a!3591))))))

(assert (=> start!62378 e!396952))

(assert (=> start!62378 true))

(declare-fun array_inv!14933 (array!40013) Bool)

(assert (=> start!62378 (array_inv!14933 a!3591)))

(assert (= (and start!62378 res!462252) b!698265))

(assert (= (and b!698265 res!462249) b!698266))

(assert (= (and b!698266 res!462251) b!698270))

(assert (= (and b!698270 res!462253) b!698267))

(assert (= (and b!698267 res!462254) b!698269))

(assert (= (and b!698269 res!462250) b!698268))

(declare-fun m!658601 () Bool)

(assert (=> start!62378 m!658601))

(declare-fun m!658603 () Bool)

(assert (=> b!698270 m!658603))

(declare-fun m!658605 () Bool)

(assert (=> b!698269 m!658605))

(declare-fun m!658607 () Bool)

(assert (=> b!698265 m!658607))

(declare-fun m!658609 () Bool)

(assert (=> b!698268 m!658609))

(declare-fun m!658611 () Bool)

(assert (=> b!698267 m!658611))

(declare-fun m!658613 () Bool)

(assert (=> b!698266 m!658613))

(check-sat (not b!698270) (not b!698268) (not b!698266) (not start!62378) (not b!698265) (not b!698267) (not b!698269))
(check-sat)
