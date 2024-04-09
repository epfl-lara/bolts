; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62364 () Bool)

(assert start!62364)

(declare-fun b!698125 () Bool)

(declare-fun res!462111 () Bool)

(declare-fun e!396910 () Bool)

(assert (=> b!698125 (=> (not res!462111) (not e!396910))))

(declare-datatypes ((array!39999 0))(
  ( (array!40000 (arr!19152 (Array (_ BitVec 32) (_ BitVec 64))) (size!19535 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!39999)

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun from!2969 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!39999 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!698125 (= res!462111 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!698127 () Bool)

(declare-fun res!462114 () Bool)

(assert (=> b!698127 (=> (not res!462114) (not e!396910))))

(declare-datatypes ((List!13246 0))(
  ( (Nil!13243) (Cons!13242 (h!14287 (_ BitVec 64)) (t!19536 List!13246)) )
))
(declare-fun newAcc!49 () List!13246)

(declare-fun noDuplicate!1036 (List!13246) Bool)

(assert (=> b!698127 (= res!462114 (noDuplicate!1036 newAcc!49))))

(declare-fun b!698128 () Bool)

(declare-fun res!462112 () Bool)

(assert (=> b!698128 (=> (not res!462112) (not e!396910))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!698128 (= res!462112 (validKeyInArray!0 k!2824))))

(declare-fun b!698129 () Bool)

(declare-fun res!462115 () Bool)

(assert (=> b!698129 (=> (not res!462115) (not e!396910))))

(declare-fun acc!652 () List!13246)

(assert (=> b!698129 (= res!462115 (noDuplicate!1036 acc!652))))

(declare-fun b!698130 () Bool)

(assert (=> b!698130 (= e!396910 (bvsgt from!2969 (size!19535 a!3591)))))

(declare-fun b!698126 () Bool)

(declare-fun res!462109 () Bool)

(assert (=> b!698126 (=> (not res!462109) (not e!396910))))

(declare-fun contains!3789 (List!13246 (_ BitVec 64)) Bool)

(assert (=> b!698126 (= res!462109 (not (contains!3789 acc!652 k!2824)))))

(declare-fun res!462116 () Bool)

(assert (=> start!62364 (=> (not res!462116) (not e!396910))))

(assert (=> start!62364 (= res!462116 (and (bvslt (size!19535 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19535 a!3591))))))

(assert (=> start!62364 e!396910))

(assert (=> start!62364 true))

(declare-fun array_inv!14926 (array!39999) Bool)

(assert (=> start!62364 (array_inv!14926 a!3591)))

(declare-fun b!698131 () Bool)

(declare-fun res!462113 () Bool)

(assert (=> b!698131 (=> (not res!462113) (not e!396910))))

(assert (=> b!698131 (= res!462113 (not (contains!3789 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698132 () Bool)

(declare-fun res!462110 () Bool)

(assert (=> b!698132 (=> (not res!462110) (not e!396910))))

(assert (=> b!698132 (= res!462110 (not (contains!3789 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!62364 res!462116) b!698129))

(assert (= (and b!698129 res!462115) b!698127))

(assert (= (and b!698127 res!462114) b!698131))

(assert (= (and b!698131 res!462113) b!698132))

(assert (= (and b!698132 res!462110) b!698125))

(assert (= (and b!698125 res!462111) b!698126))

(assert (= (and b!698126 res!462109) b!698128))

(assert (= (and b!698128 res!462112) b!698130))

(declare-fun m!658497 () Bool)

(assert (=> b!698128 m!658497))

(declare-fun m!658499 () Bool)

(assert (=> start!62364 m!658499))

(declare-fun m!658501 () Bool)

(assert (=> b!698125 m!658501))

(declare-fun m!658503 () Bool)

(assert (=> b!698132 m!658503))

(declare-fun m!658505 () Bool)

(assert (=> b!698126 m!658505))

(declare-fun m!658507 () Bool)

(assert (=> b!698129 m!658507))

(declare-fun m!658509 () Bool)

(assert (=> b!698131 m!658509))

(declare-fun m!658511 () Bool)

(assert (=> b!698127 m!658511))

(push 1)

(assert (not start!62364))

(assert (not b!698125))

(assert (not b!698128))

(assert (not b!698131))

(assert (not b!698127))

(assert (not b!698132))

(assert (not b!698129))

(assert (not b!698126))

(check-sat)

(pop 1)

(push 1)

(check-sat)

