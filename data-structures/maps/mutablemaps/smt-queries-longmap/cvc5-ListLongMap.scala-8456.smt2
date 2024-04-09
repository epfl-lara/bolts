; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102908 () Bool)

(assert start!102908)

(declare-fun b!1236343 () Bool)

(declare-fun res!824437 () Bool)

(declare-fun e!700827 () Bool)

(assert (=> b!1236343 (=> (not res!824437) (not e!700827))))

(declare-datatypes ((List!27402 0))(
  ( (Nil!27399) (Cons!27398 (h!28607 (_ BitVec 64)) (t!40872 List!27402)) )
))
(declare-fun acc!846 () List!27402)

(declare-fun k!2925 () (_ BitVec 64))

(declare-fun contains!7317 (List!27402 (_ BitVec 64)) Bool)

(assert (=> b!1236343 (= res!824437 (contains!7317 acc!846 k!2925))))

(declare-fun b!1236344 () Bool)

(declare-datatypes ((array!79694 0))(
  ( (array!79695 (arr!38451 (Array (_ BitVec 32) (_ BitVec 64))) (size!38988 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79694)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> b!1236344 (= e!700827 (bvslt (bvsub (size!38988 a!3835) from!3213) #b00000000000000000000000000000000))))

(declare-fun b!1236345 () Bool)

(declare-fun res!824438 () Bool)

(assert (=> b!1236345 (=> (not res!824438) (not e!700827))))

(declare-fun noDuplicate!1924 (List!27402) Bool)

(assert (=> b!1236345 (= res!824438 (noDuplicate!1924 acc!846))))

(declare-fun res!824436 () Bool)

(assert (=> start!102908 (=> (not res!824436) (not e!700827))))

(assert (=> start!102908 (= res!824436 (and (bvslt (size!38988 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38988 a!3835))))))

(assert (=> start!102908 e!700827))

(declare-fun array_inv!29227 (array!79694) Bool)

(assert (=> start!102908 (array_inv!29227 a!3835)))

(assert (=> start!102908 true))

(declare-fun b!1236346 () Bool)

(declare-fun res!824439 () Bool)

(assert (=> b!1236346 (=> (not res!824439) (not e!700827))))

(declare-fun arrayNoDuplicates!0 (array!79694 (_ BitVec 32) List!27402) Bool)

(assert (=> b!1236346 (= res!824439 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236347 () Bool)

(declare-fun res!824441 () Bool)

(assert (=> b!1236347 (=> (not res!824441) (not e!700827))))

(assert (=> b!1236347 (= res!824441 (not (contains!7317 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236348 () Bool)

(declare-fun res!824440 () Bool)

(assert (=> b!1236348 (=> (not res!824440) (not e!700827))))

(assert (=> b!1236348 (= res!824440 (not (contains!7317 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102908 res!824436) b!1236345))

(assert (= (and b!1236345 res!824438) b!1236347))

(assert (= (and b!1236347 res!824441) b!1236348))

(assert (= (and b!1236348 res!824440) b!1236346))

(assert (= (and b!1236346 res!824439) b!1236343))

(assert (= (and b!1236343 res!824437) b!1236344))

(declare-fun m!1140215 () Bool)

(assert (=> start!102908 m!1140215))

(declare-fun m!1140217 () Bool)

(assert (=> b!1236343 m!1140217))

(declare-fun m!1140219 () Bool)

(assert (=> b!1236346 m!1140219))

(declare-fun m!1140221 () Bool)

(assert (=> b!1236347 m!1140221))

(declare-fun m!1140223 () Bool)

(assert (=> b!1236348 m!1140223))

(declare-fun m!1140225 () Bool)

(assert (=> b!1236345 m!1140225))

(push 1)

(assert (not b!1236343))

(assert (not b!1236345))

(assert (not b!1236348))

(assert (not start!102908))

(assert (not b!1236347))

(assert (not b!1236346))

(check-sat)

(pop 1)

(push 1)

(check-sat)

