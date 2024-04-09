; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62358 () Bool)

(assert start!62358)

(declare-fun b!698082 () Bool)

(declare-fun res!462067 () Bool)

(declare-fun e!396892 () Bool)

(assert (=> b!698082 (=> (not res!462067) (not e!396892))))

(declare-datatypes ((List!13243 0))(
  ( (Nil!13240) (Cons!13239 (h!14284 (_ BitVec 64)) (t!19533 List!13243)) )
))
(declare-fun newAcc!49 () List!13243)

(declare-fun noDuplicate!1033 (List!13243) Bool)

(assert (=> b!698082 (= res!462067 (noDuplicate!1033 newAcc!49))))

(declare-fun b!698081 () Bool)

(declare-fun res!462068 () Bool)

(assert (=> b!698081 (=> (not res!462068) (not e!396892))))

(declare-fun acc!652 () List!13243)

(assert (=> b!698081 (= res!462068 (noDuplicate!1033 acc!652))))

(declare-fun b!698083 () Bool)

(declare-fun res!462066 () Bool)

(assert (=> b!698083 (=> (not res!462066) (not e!396892))))

(declare-fun contains!3786 (List!13243 (_ BitVec 64)) Bool)

(assert (=> b!698083 (= res!462066 (not (contains!3786 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698084 () Bool)

(assert (=> b!698084 (= e!396892 false)))

(declare-fun lt!317193 () Bool)

(assert (=> b!698084 (= lt!317193 (contains!3786 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!462065 () Bool)

(assert (=> start!62358 (=> (not res!462065) (not e!396892))))

(declare-datatypes ((array!39993 0))(
  ( (array!39994 (arr!19149 (Array (_ BitVec 32) (_ BitVec 64))) (size!19532 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!39993)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62358 (= res!462065 (and (bvslt (size!19532 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19532 a!3591))))))

(assert (=> start!62358 e!396892))

(declare-fun array_inv!14923 (array!39993) Bool)

(assert (=> start!62358 (array_inv!14923 a!3591)))

(assert (=> start!62358 true))

(assert (= (and start!62358 res!462065) b!698081))

(assert (= (and b!698081 res!462068) b!698082))

(assert (= (and b!698082 res!462067) b!698083))

(assert (= (and b!698083 res!462066) b!698084))

(declare-fun m!658467 () Bool)

(assert (=> b!698081 m!658467))

(declare-fun m!658469 () Bool)

(assert (=> b!698084 m!658469))

(declare-fun m!658471 () Bool)

(assert (=> b!698082 m!658471))

(declare-fun m!658473 () Bool)

(assert (=> b!698083 m!658473))

(declare-fun m!658475 () Bool)

(assert (=> start!62358 m!658475))

(push 1)

(assert (not b!698083))

(assert (not start!62358))

(assert (not b!698081))

(assert (not b!698082))

(assert (not b!698084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

