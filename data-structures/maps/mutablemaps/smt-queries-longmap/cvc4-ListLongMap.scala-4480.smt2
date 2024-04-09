; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62368 () Bool)

(assert start!62368)

(declare-fun b!698173 () Bool)

(declare-fun res!462163 () Bool)

(declare-fun e!396922 () Bool)

(assert (=> b!698173 (=> (not res!462163) (not e!396922))))

(declare-datatypes ((List!13248 0))(
  ( (Nil!13245) (Cons!13244 (h!14289 (_ BitVec 64)) (t!19538 List!13248)) )
))
(declare-fun acc!652 () List!13248)

(declare-fun contains!3791 (List!13248 (_ BitVec 64)) Bool)

(assert (=> b!698173 (= res!462163 (not (contains!3791 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698174 () Bool)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((array!40003 0))(
  ( (array!40004 (arr!19154 (Array (_ BitVec 32) (_ BitVec 64))) (size!19537 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40003)

(assert (=> b!698174 (= e!396922 (bvsgt from!2969 (size!19537 a!3591)))))

(declare-fun b!698175 () Bool)

(declare-fun res!462157 () Bool)

(assert (=> b!698175 (=> (not res!462157) (not e!396922))))

(declare-fun noDuplicate!1038 (List!13248) Bool)

(assert (=> b!698175 (= res!462157 (noDuplicate!1038 acc!652))))

(declare-fun b!698176 () Bool)

(declare-fun res!462159 () Bool)

(assert (=> b!698176 (=> (not res!462159) (not e!396922))))

(declare-fun k!2824 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!698176 (= res!462159 (validKeyInArray!0 k!2824))))

(declare-fun b!698177 () Bool)

(declare-fun res!462162 () Bool)

(assert (=> b!698177 (=> (not res!462162) (not e!396922))))

(assert (=> b!698177 (= res!462162 (not (contains!3791 acc!652 k!2824)))))

(declare-fun b!698178 () Bool)

(declare-fun res!462161 () Bool)

(assert (=> b!698178 (=> (not res!462161) (not e!396922))))

(declare-fun arrayContainsKey!0 (array!40003 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!698178 (= res!462161 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(declare-fun b!698179 () Bool)

(declare-fun res!462160 () Bool)

(assert (=> b!698179 (=> (not res!462160) (not e!396922))))

(declare-fun newAcc!49 () List!13248)

(assert (=> b!698179 (= res!462160 (noDuplicate!1038 newAcc!49))))

(declare-fun b!698180 () Bool)

(declare-fun res!462158 () Bool)

(assert (=> b!698180 (=> (not res!462158) (not e!396922))))

(assert (=> b!698180 (= res!462158 (not (contains!3791 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!462164 () Bool)

(assert (=> start!62368 (=> (not res!462164) (not e!396922))))

(assert (=> start!62368 (= res!462164 (and (bvslt (size!19537 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19537 a!3591))))))

(assert (=> start!62368 e!396922))

(assert (=> start!62368 true))

(declare-fun array_inv!14928 (array!40003) Bool)

(assert (=> start!62368 (array_inv!14928 a!3591)))

(assert (= (and start!62368 res!462164) b!698175))

(assert (= (and b!698175 res!462157) b!698179))

(assert (= (and b!698179 res!462160) b!698173))

(assert (= (and b!698173 res!462163) b!698180))

(assert (= (and b!698180 res!462158) b!698178))

(assert (= (and b!698178 res!462161) b!698177))

(assert (= (and b!698177 res!462162) b!698176))

(assert (= (and b!698176 res!462159) b!698174))

(declare-fun m!658529 () Bool)

(assert (=> b!698175 m!658529))

(declare-fun m!658531 () Bool)

(assert (=> start!62368 m!658531))

(declare-fun m!658533 () Bool)

(assert (=> b!698180 m!658533))

(declare-fun m!658535 () Bool)

(assert (=> b!698173 m!658535))

(declare-fun m!658537 () Bool)

(assert (=> b!698176 m!658537))

(declare-fun m!658539 () Bool)

(assert (=> b!698179 m!658539))

(declare-fun m!658541 () Bool)

(assert (=> b!698177 m!658541))

(declare-fun m!658543 () Bool)

(assert (=> b!698178 m!658543))

(push 1)

(assert (not b!698177))

(assert (not b!698178))

(assert (not b!698180))

(assert (not b!698173))

(assert (not b!698176))

(assert (not b!698175))

(assert (not b!698179))

(assert (not start!62368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

