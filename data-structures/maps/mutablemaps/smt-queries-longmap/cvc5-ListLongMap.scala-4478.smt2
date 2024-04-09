; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62352 () Bool)

(assert start!62352)

(declare-fun res!462030 () Bool)

(declare-fun e!396873 () Bool)

(assert (=> start!62352 (=> (not res!462030) (not e!396873))))

(declare-datatypes ((array!39987 0))(
  ( (array!39988 (arr!19146 (Array (_ BitVec 32) (_ BitVec 64))) (size!19529 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!39987)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62352 (= res!462030 (and (bvslt (size!19529 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19529 a!3591))))))

(assert (=> start!62352 e!396873))

(declare-fun array_inv!14920 (array!39987) Bool)

(assert (=> start!62352 (array_inv!14920 a!3591)))

(assert (=> start!62352 true))

(declare-fun b!698047 () Bool)

(declare-fun res!462032 () Bool)

(assert (=> b!698047 (=> (not res!462032) (not e!396873))))

(declare-datatypes ((List!13240 0))(
  ( (Nil!13237) (Cons!13236 (h!14281 (_ BitVec 64)) (t!19530 List!13240)) )
))
(declare-fun acc!652 () List!13240)

(declare-fun contains!3783 (List!13240 (_ BitVec 64)) Bool)

(assert (=> b!698047 (= res!462032 (not (contains!3783 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698048 () Bool)

(assert (=> b!698048 (= e!396873 false)))

(declare-fun lt!317184 () Bool)

(assert (=> b!698048 (= lt!317184 (contains!3783 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!698046 () Bool)

(declare-fun res!462031 () Bool)

(assert (=> b!698046 (=> (not res!462031) (not e!396873))))

(declare-fun newAcc!49 () List!13240)

(declare-fun noDuplicate!1030 (List!13240) Bool)

(assert (=> b!698046 (= res!462031 (noDuplicate!1030 newAcc!49))))

(declare-fun b!698045 () Bool)

(declare-fun res!462029 () Bool)

(assert (=> b!698045 (=> (not res!462029) (not e!396873))))

(assert (=> b!698045 (= res!462029 (noDuplicate!1030 acc!652))))

(assert (= (and start!62352 res!462030) b!698045))

(assert (= (and b!698045 res!462029) b!698046))

(assert (= (and b!698046 res!462031) b!698047))

(assert (= (and b!698047 res!462032) b!698048))

(declare-fun m!658437 () Bool)

(assert (=> b!698046 m!658437))

(declare-fun m!658439 () Bool)

(assert (=> b!698045 m!658439))

(declare-fun m!658441 () Bool)

(assert (=> b!698048 m!658441))

(declare-fun m!658443 () Bool)

(assert (=> b!698047 m!658443))

(declare-fun m!658445 () Bool)

(assert (=> start!62352 m!658445))

(push 1)

(assert (not b!698047))

(assert (not start!62352))

(assert (not b!698045))

(assert (not b!698046))

(assert (not b!698048))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

