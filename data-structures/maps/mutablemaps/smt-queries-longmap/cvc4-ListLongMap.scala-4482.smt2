; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62380 () Bool)

(assert start!62380)

(declare-fun b!698283 () Bool)

(declare-fun res!462268 () Bool)

(declare-fun e!396958 () Bool)

(assert (=> b!698283 (=> (not res!462268) (not e!396958))))

(declare-datatypes ((List!13254 0))(
  ( (Nil!13251) (Cons!13250 (h!14295 (_ BitVec 64)) (t!19544 List!13254)) )
))
(declare-fun newAcc!49 () List!13254)

(declare-fun noDuplicate!1044 (List!13254) Bool)

(assert (=> b!698283 (= res!462268 (noDuplicate!1044 newAcc!49))))

(declare-fun b!698284 () Bool)

(declare-fun res!462270 () Bool)

(assert (=> b!698284 (=> (not res!462270) (not e!396958))))

(declare-fun acc!652 () List!13254)

(declare-fun contains!3797 (List!13254 (_ BitVec 64)) Bool)

(assert (=> b!698284 (= res!462270 (not (contains!3797 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!698285 () Bool)

(assert (=> b!698285 (= e!396958 false)))

(declare-fun lt!317217 () Bool)

(declare-fun k!2824 () (_ BitVec 64))

(assert (=> b!698285 (= lt!317217 (contains!3797 acc!652 k!2824))))

(declare-fun b!698286 () Bool)

(declare-fun res!462267 () Bool)

(assert (=> b!698286 (=> (not res!462267) (not e!396958))))

(assert (=> b!698286 (= res!462267 (noDuplicate!1044 acc!652))))

(declare-fun b!698287 () Bool)

(declare-fun res!462269 () Bool)

(assert (=> b!698287 (=> (not res!462269) (not e!396958))))

(assert (=> b!698287 (= res!462269 (not (contains!3797 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!462271 () Bool)

(assert (=> start!62380 (=> (not res!462271) (not e!396958))))

(declare-datatypes ((array!40015 0))(
  ( (array!40016 (arr!19160 (Array (_ BitVec 32) (_ BitVec 64))) (size!19543 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40015)

(declare-fun from!2969 () (_ BitVec 32))

(assert (=> start!62380 (= res!462271 (and (bvslt (size!19543 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19543 a!3591))))))

(assert (=> start!62380 e!396958))

(assert (=> start!62380 true))

(declare-fun array_inv!14934 (array!40015) Bool)

(assert (=> start!62380 (array_inv!14934 a!3591)))

(declare-fun b!698288 () Bool)

(declare-fun res!462272 () Bool)

(assert (=> b!698288 (=> (not res!462272) (not e!396958))))

(declare-fun arrayContainsKey!0 (array!40015 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!698288 (= res!462272 (not (arrayContainsKey!0 a!3591 k!2824 from!2969)))))

(assert (= (and start!62380 res!462271) b!698286))

(assert (= (and b!698286 res!462267) b!698283))

(assert (= (and b!698283 res!462268) b!698284))

(assert (= (and b!698284 res!462270) b!698287))

(assert (= (and b!698287 res!462269) b!698288))

(assert (= (and b!698288 res!462272) b!698285))

(declare-fun m!658615 () Bool)

(assert (=> start!62380 m!658615))

(declare-fun m!658617 () Bool)

(assert (=> b!698287 m!658617))

(declare-fun m!658619 () Bool)

(assert (=> b!698285 m!658619))

(declare-fun m!658621 () Bool)

(assert (=> b!698283 m!658621))

(declare-fun m!658623 () Bool)

(assert (=> b!698284 m!658623))

(declare-fun m!658625 () Bool)

(assert (=> b!698286 m!658625))

(declare-fun m!658627 () Bool)

(assert (=> b!698288 m!658627))

(push 1)

(assert (not b!698286))

(assert (not b!698285))

(assert (not b!698288))

(assert (not b!698283))

(assert (not b!698284))

(assert (not start!62380))

(assert (not b!698287))

(check-sat)

(pop 1)

(push 1)

(check-sat)

