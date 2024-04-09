; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102906 () Bool)

(assert start!102906)

(declare-fun b!1236326 () Bool)

(declare-fun res!824421 () Bool)

(declare-fun e!700822 () Bool)

(assert (=> b!1236326 (=> (not res!824421) (not e!700822))))

(declare-datatypes ((array!79692 0))(
  ( (array!79693 (arr!38450 (Array (_ BitVec 32) (_ BitVec 64))) (size!38987 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79692)

(declare-datatypes ((List!27401 0))(
  ( (Nil!27398) (Cons!27397 (h!28606 (_ BitVec 64)) (t!40871 List!27401)) )
))
(declare-fun acc!846 () List!27401)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79692 (_ BitVec 32) List!27401) Bool)

(assert (=> b!1236326 (= res!824421 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236327 () Bool)

(declare-fun res!824422 () Bool)

(assert (=> b!1236327 (=> (not res!824422) (not e!700822))))

(declare-fun contains!7316 (List!27401 (_ BitVec 64)) Bool)

(assert (=> b!1236327 (= res!824422 (not (contains!7316 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236328 () Bool)

(assert (=> b!1236328 (= e!700822 false)))

(declare-fun lt!560734 () Bool)

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1236328 (= lt!560734 (contains!7316 acc!846 k!2925))))

(declare-fun res!824423 () Bool)

(assert (=> start!102906 (=> (not res!824423) (not e!700822))))

(assert (=> start!102906 (= res!824423 (and (bvslt (size!38987 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38987 a!3835))))))

(assert (=> start!102906 e!700822))

(declare-fun array_inv!29226 (array!79692) Bool)

(assert (=> start!102906 (array_inv!29226 a!3835)))

(assert (=> start!102906 true))

(declare-fun b!1236329 () Bool)

(declare-fun res!824420 () Bool)

(assert (=> b!1236329 (=> (not res!824420) (not e!700822))))

(assert (=> b!1236329 (= res!824420 (not (contains!7316 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236330 () Bool)

(declare-fun res!824419 () Bool)

(assert (=> b!1236330 (=> (not res!824419) (not e!700822))))

(declare-fun noDuplicate!1923 (List!27401) Bool)

(assert (=> b!1236330 (= res!824419 (noDuplicate!1923 acc!846))))

(assert (= (and start!102906 res!824423) b!1236330))

(assert (= (and b!1236330 res!824419) b!1236329))

(assert (= (and b!1236329 res!824420) b!1236327))

(assert (= (and b!1236327 res!824422) b!1236326))

(assert (= (and b!1236326 res!824421) b!1236328))

(declare-fun m!1140203 () Bool)

(assert (=> start!102906 m!1140203))

(declare-fun m!1140205 () Bool)

(assert (=> b!1236328 m!1140205))

(declare-fun m!1140207 () Bool)

(assert (=> b!1236327 m!1140207))

(declare-fun m!1140209 () Bool)

(assert (=> b!1236330 m!1140209))

(declare-fun m!1140211 () Bool)

(assert (=> b!1236329 m!1140211))

(declare-fun m!1140213 () Bool)

(assert (=> b!1236326 m!1140213))

(push 1)

(assert (not b!1236326))

(assert (not b!1236329))

(assert (not b!1236327))

(assert (not b!1236330))

(assert (not start!102906))

(assert (not b!1236328))

(check-sat)

(pop 1)

(push 1)

(check-sat)

