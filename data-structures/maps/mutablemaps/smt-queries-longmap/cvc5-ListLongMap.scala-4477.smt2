; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62346 () Bool)

(assert start!62346)

(declare-fun b!698012 () Bool)

(declare-fun e!396856 () Bool)

(assert (=> b!698012 (= e!396856 false)))

(declare-fun lt!317175 () Bool)

(declare-datatypes ((List!13237 0))(
  ( (Nil!13234) (Cons!13233 (h!14278 (_ BitVec 64)) (t!19527 List!13237)) )
))
(declare-fun acc!652 () List!13237)

(declare-fun contains!3780 (List!13237 (_ BitVec 64)) Bool)

(assert (=> b!698012 (= lt!317175 (contains!3780 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!698009 () Bool)

(declare-fun res!461995 () Bool)

(assert (=> b!698009 (=> (not res!461995) (not e!396856))))

(declare-fun noDuplicate!1027 (List!13237) Bool)

(assert (=> b!698009 (= res!461995 (noDuplicate!1027 acc!652))))

(declare-fun b!698010 () Bool)

(declare-fun res!461993 () Bool)

(assert (=> b!698010 (=> (not res!461993) (not e!396856))))

(declare-fun newAcc!49 () List!13237)

(assert (=> b!698010 (= res!461993 (noDuplicate!1027 newAcc!49))))

(declare-fun res!461996 () Bool)

(assert (=> start!62346 (=> (not res!461996) (not e!396856))))

(declare-datatypes ((array!39981 0))(
  ( (array!39982 (arr!19143 (Array (_ BitVec 32) (_ BitVec 64))) (size!19526 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!39981)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62346 (= res!461996 (and (bvslt (size!19526 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19526 a!3591))))))

(assert (=> start!62346 e!396856))

(declare-fun array_inv!14917 (array!39981) Bool)

(assert (=> start!62346 (array_inv!14917 a!3591)))

(assert (=> start!62346 true))

(declare-fun b!698011 () Bool)

(declare-fun res!461994 () Bool)

(assert (=> b!698011 (=> (not res!461994) (not e!396856))))

(assert (=> b!698011 (= res!461994 (not (contains!3780 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62346 res!461996) b!698009))

(assert (= (and b!698009 res!461995) b!698010))

(assert (= (and b!698010 res!461993) b!698011))

(assert (= (and b!698011 res!461994) b!698012))

(declare-fun m!658407 () Bool)

(assert (=> b!698010 m!658407))

(declare-fun m!658409 () Bool)

(assert (=> b!698009 m!658409))

(declare-fun m!658411 () Bool)

(assert (=> b!698012 m!658411))

(declare-fun m!658413 () Bool)

(assert (=> b!698011 m!658413))

(declare-fun m!658415 () Bool)

(assert (=> start!62346 m!658415))

(push 1)

(assert (not b!698011))

(assert (not b!698010))

(assert (not b!698012))

(assert (not b!698009))

(assert (not start!62346))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

