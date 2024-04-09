; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62386 () Bool)

(assert start!62386)

(declare-fun b!698337 () Bool)

(declare-fun res!462322 () Bool)

(declare-fun e!396976 () Bool)

(assert (=> b!698337 (=> (not res!462322) (not e!396976))))

(declare-datatypes ((List!13257 0))(
  ( (Nil!13254) (Cons!13253 (h!14298 (_ BitVec 64)) (t!19547 List!13257)) )
))
(declare-fun acc!652 () List!13257)

(declare-fun contains!3800 (List!13257 (_ BitVec 64)) Bool)

(assert (=> b!698337 (= res!462322 (not (contains!3800 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!462321 () Bool)

(assert (=> start!62386 (=> (not res!462321) (not e!396976))))

(declare-datatypes ((array!40021 0))(
  ( (array!40022 (arr!19163 (Array (_ BitVec 32) (_ BitVec 64))) (size!19546 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40021)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62386 (= res!462321 (and (bvslt (size!19546 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19546 a!3591))))))

(assert (=> start!62386 e!396976))

(assert (=> start!62386 true))

(declare-fun array_inv!14937 (array!40021) Bool)

(assert (=> start!62386 (array_inv!14937 a!3591)))

(declare-fun b!698338 () Bool)

(declare-fun res!462326 () Bool)

(assert (=> b!698338 (=> (not res!462326) (not e!396976))))

(declare-fun noDuplicate!1047 (List!13257) Bool)

(assert (=> b!698338 (= res!462326 (noDuplicate!1047 acc!652))))

(declare-fun b!698339 () Bool)

(declare-fun res!462325 () Bool)

(assert (=> b!698339 (=> (not res!462325) (not e!396976))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40021 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!698339 (= res!462325 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!698340 () Bool)

(assert (=> b!698340 (= e!396976 false)))

(declare-fun lt!317226 () Bool)

(assert (=> b!698340 (= lt!317226 (contains!3800 acc!652 k!2824))))

(declare-fun b!698341 () Bool)

(declare-fun res!462323 () Bool)

(assert (=> b!698341 (=> (not res!462323) (not e!396976))))

(declare-fun newAcc!49 () List!13257)

(assert (=> b!698341 (= res!462323 (noDuplicate!1047 newAcc!49))))

(declare-fun b!698342 () Bool)

(declare-fun res!462324 () Bool)

(assert (=> b!698342 (=> (not res!462324) (not e!396976))))

(assert (=> b!698342 (= res!462324 (not (contains!3800 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62386 res!462321) b!698338))

(assert (= (and b!698338 res!462326) b!698341))

(assert (= (and b!698341 res!462323) b!698342))

(assert (= (and b!698342 res!462324) b!698337))

(assert (= (and b!698337 res!462322) b!698339))

(assert (= (and b!698339 res!462325) b!698340))

(declare-fun m!658657 () Bool)

(assert (=> b!698339 m!658657))

(declare-fun m!658659 () Bool)

(assert (=> b!698341 m!658659))

(declare-fun m!658661 () Bool)

(assert (=> b!698338 m!658661))

(declare-fun m!658663 () Bool)

(assert (=> b!698340 m!658663))

(declare-fun m!658665 () Bool)

(assert (=> b!698337 m!658665))

(declare-fun m!658667 () Bool)

(assert (=> b!698342 m!658667))

(declare-fun m!658669 () Bool)

(assert (=> start!62386 m!658669))

(push 1)

(assert (not b!698340))

(assert (not b!698342))

(assert (not b!698339))

(assert (not b!698338))

(assert (not b!698341))

(assert (not start!62386))

(assert (not b!698337))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

