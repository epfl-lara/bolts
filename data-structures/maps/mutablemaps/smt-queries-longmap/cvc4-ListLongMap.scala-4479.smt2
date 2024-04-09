; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62362 () Bool)

(assert start!62362)

(declare-fun res!462092 () Bool)

(declare-fun e!396904 () Bool)

(assert (=> start!62362 (=> (not res!462092) (not e!396904))))

(declare-datatypes ((array!39997 0))(
  ( (array!39998 (arr!19151 (Array (_ BitVec 32) (_ BitVec 64))) (size!19534 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!39997)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62362 (= res!462092 (and (bvslt (size!19534 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19534 a!3591))))))

(assert (=> start!62362 e!396904))

(declare-fun array_inv!14925 (array!39997) Bool)

(assert (=> start!62362 (array_inv!14925 a!3591)))

(assert (=> start!62362 true))

(declare-fun b!698106 () Bool)

(declare-fun res!462090 () Bool)

(assert (=> b!698106 (=> (not res!462090) (not e!396904))))

(declare-datatypes ((List!13245 0))(
  ( (Nil!13242) (Cons!13241 (h!14286 (_ BitVec 64)) (t!19535 List!13245)) )
))
(declare-fun newAcc!49 () List!13245)

(declare-fun noDuplicate!1035 (List!13245) Bool)

(assert (=> b!698106 (= res!462090 (noDuplicate!1035 newAcc!49))))

(declare-fun b!698108 () Bool)

(assert (=> b!698108 (= e!396904 false)))

(declare-fun lt!317199 () Bool)

(declare-fun acc!652 () List!13245)

(declare-fun contains!3788 (List!13245 (_ BitVec 64)) Bool)

(assert (=> b!698108 (= lt!317199 (contains!3788 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!698105 () Bool)

(declare-fun res!462091 () Bool)

(assert (=> b!698105 (=> (not res!462091) (not e!396904))))

(assert (=> b!698105 (= res!462091 (noDuplicate!1035 acc!652))))

(declare-fun b!698107 () Bool)

(declare-fun res!462089 () Bool)

(assert (=> b!698107 (=> (not res!462089) (not e!396904))))

(assert (=> b!698107 (= res!462089 (not (contains!3788 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62362 res!462092) b!698105))

(assert (= (and b!698105 res!462091) b!698106))

(assert (= (and b!698106 res!462090) b!698107))

(assert (= (and b!698107 res!462089) b!698108))

(declare-fun m!658487 () Bool)

(assert (=> b!698105 m!658487))

(declare-fun m!658489 () Bool)

(assert (=> start!62362 m!658489))

(declare-fun m!658491 () Bool)

(assert (=> b!698107 m!658491))

(declare-fun m!658493 () Bool)

(assert (=> b!698106 m!658493))

(declare-fun m!658495 () Bool)

(assert (=> b!698108 m!658495))

(push 1)

(assert (not b!698107))

(assert (not start!62362))

(assert (not b!698105))

(assert (not b!698106))

(assert (not b!698108))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

