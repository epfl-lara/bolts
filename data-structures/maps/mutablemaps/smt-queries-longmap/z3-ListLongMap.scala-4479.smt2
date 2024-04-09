; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62360 () Bool)

(assert start!62360)

(declare-fun b!698096 () Bool)

(declare-fun e!396897 () Bool)

(assert (=> b!698096 (= e!396897 false)))

(declare-fun lt!317196 () Bool)

(declare-datatypes ((List!13244 0))(
  ( (Nil!13241) (Cons!13240 (h!14285 (_ BitVec 64)) (t!19534 List!13244)) )
))
(declare-fun acc!652 () List!13244)

(declare-fun contains!3787 (List!13244 (_ BitVec 64)) Bool)

(assert (=> b!698096 (= lt!317196 (contains!3787 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!462077 () Bool)

(assert (=> start!62360 (=> (not res!462077) (not e!396897))))

(declare-datatypes ((array!39995 0))(
  ( (array!39996 (arr!19150 (Array (_ BitVec 32) (_ BitVec 64))) (size!19533 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!39995)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62360 (= res!462077 (and (bvslt (size!19533 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19533 a!3591))))))

(assert (=> start!62360 e!396897))

(declare-fun array_inv!14924 (array!39995) Bool)

(assert (=> start!62360 (array_inv!14924 a!3591)))

(assert (=> start!62360 true))

(declare-fun b!698095 () Bool)

(declare-fun res!462078 () Bool)

(assert (=> b!698095 (=> (not res!462078) (not e!396897))))

(assert (=> b!698095 (= res!462078 (not (contains!3787 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698093 () Bool)

(declare-fun res!462080 () Bool)

(assert (=> b!698093 (=> (not res!462080) (not e!396897))))

(declare-fun noDuplicate!1034 (List!13244) Bool)

(assert (=> b!698093 (= res!462080 (noDuplicate!1034 acc!652))))

(declare-fun b!698094 () Bool)

(declare-fun res!462079 () Bool)

(assert (=> b!698094 (=> (not res!462079) (not e!396897))))

(declare-fun newAcc!49 () List!13244)

(assert (=> b!698094 (= res!462079 (noDuplicate!1034 newAcc!49))))

(assert (= (and start!62360 res!462077) b!698093))

(assert (= (and b!698093 res!462080) b!698094))

(assert (= (and b!698094 res!462079) b!698095))

(assert (= (and b!698095 res!462078) b!698096))

(declare-fun m!658477 () Bool)

(assert (=> b!698095 m!658477))

(declare-fun m!658479 () Bool)

(assert (=> b!698094 m!658479))

(declare-fun m!658481 () Bool)

(assert (=> b!698096 m!658481))

(declare-fun m!658483 () Bool)

(assert (=> b!698093 m!658483))

(declare-fun m!658485 () Bool)

(assert (=> start!62360 m!658485))

(check-sat (not b!698095) (not b!698094) (not start!62360) (not b!698093) (not b!698096))
(check-sat)
