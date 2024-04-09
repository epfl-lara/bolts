; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62370 () Bool)

(assert start!62370)

(declare-fun res!462179 () Bool)

(declare-fun e!396928 () Bool)

(assert (=> start!62370 (=> (not res!462179) (not e!396928))))

(declare-datatypes ((array!40005 0))(
  ( (array!40006 (arr!19155 (Array (_ BitVec 32) (_ BitVec 64))) (size!19538 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40005)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62370 (= res!462179 (and (bvslt (size!19538 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19538 a!3591))))))

(assert (=> start!62370 e!396928))

(assert (=> start!62370 true))

(declare-fun array_inv!14929 (array!40005) Bool)

(assert (=> start!62370 (array_inv!14929 a!3591)))

(declare-fun b!698193 () Bool)

(declare-fun res!462181 () Bool)

(assert (=> b!698193 (=> (not res!462181) (not e!396928))))

(declare-datatypes ((List!13249 0))(
  ( (Nil!13246) (Cons!13245 (h!14290 (_ BitVec 64)) (t!19539 List!13249)) )
))
(declare-fun acc!652 () List!13249)

(declare-fun contains!3792 (List!13249 (_ BitVec 64)) Bool)

(assert (=> b!698193 (= res!462181 (not (contains!3792 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698194 () Bool)

(declare-fun res!462180 () Bool)

(assert (=> b!698194 (=> (not res!462180) (not e!396928))))

(declare-fun noDuplicate!1039 (List!13249) Bool)

(assert (=> b!698194 (= res!462180 (noDuplicate!1039 acc!652))))

(declare-fun b!698195 () Bool)

(declare-fun res!462178 () Bool)

(assert (=> b!698195 (=> (not res!462178) (not e!396928))))

(assert (=> b!698195 (= res!462178 (not (contains!3792 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698196 () Bool)

(assert (=> b!698196 (= e!396928 false)))

(declare-fun lt!317202 () Bool)

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!698196 (= lt!317202 (contains!3792 acc!652 k!2824))))

(declare-fun b!698197 () Bool)

(declare-fun res!462177 () Bool)

(assert (=> b!698197 (=> (not res!462177) (not e!396928))))

(declare-fun newAcc!49 () List!13249)

(assert (=> b!698197 (= res!462177 (noDuplicate!1039 newAcc!49))))

(declare-fun b!698198 () Bool)

(declare-fun res!462182 () Bool)

(assert (=> b!698198 (=> (not res!462182) (not e!396928))))

(declare-fun arrayContainsKey!0 (array!40005 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!698198 (= res!462182 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(assert (= (and start!62370 res!462179) b!698194))

(assert (= (and b!698194 res!462180) b!698197))

(assert (= (and b!698197 res!462177) b!698193))

(assert (= (and b!698193 res!462181) b!698195))

(assert (= (and b!698195 res!462178) b!698198))

(assert (= (and b!698198 res!462182) b!698196))

(declare-fun m!658545 () Bool)

(assert (=> b!698195 m!658545))

(declare-fun m!658547 () Bool)

(assert (=> b!698193 m!658547))

(declare-fun m!658549 () Bool)

(assert (=> start!62370 m!658549))

(declare-fun m!658551 () Bool)

(assert (=> b!698196 m!658551))

(declare-fun m!658553 () Bool)

(assert (=> b!698197 m!658553))

(declare-fun m!658555 () Bool)

(assert (=> b!698194 m!658555))

(declare-fun m!658557 () Bool)

(assert (=> b!698198 m!658557))

(push 1)

(assert (not b!698195))

(assert (not b!698196))

(assert (not b!698193))

(assert (not start!62370))

(assert (not b!698197))

(assert (not b!698194))

(assert (not b!698198))

(check-sat)

(pop 1)

(push 1)

(check-sat)

