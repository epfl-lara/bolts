; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102912 () Bool)

(assert start!102912)

(declare-fun b!1236379 () Bool)

(declare-fun res!824476 () Bool)

(declare-fun e!700839 () Bool)

(assert (=> b!1236379 (=> (not res!824476) (not e!700839))))

(declare-datatypes ((List!27404 0))(
  ( (Nil!27401) (Cons!27400 (h!28609 (_ BitVec 64)) (t!40874 List!27404)) )
))
(declare-fun acc!846 () List!27404)

(declare-fun contains!7319 (List!27404 (_ BitVec 64)) Bool)

(assert (=> b!1236379 (= res!824476 (not (contains!7319 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236380 () Bool)

(declare-fun res!824473 () Bool)

(assert (=> b!1236380 (=> (not res!824473) (not e!700839))))

(declare-fun noDuplicate!1926 (List!27404) Bool)

(assert (=> b!1236380 (= res!824473 (noDuplicate!1926 acc!846))))

(declare-fun b!1236381 () Bool)

(declare-fun res!824475 () Bool)

(assert (=> b!1236381 (=> (not res!824475) (not e!700839))))

(declare-datatypes ((array!79698 0))(
  ( (array!79699 (arr!38453 (Array (_ BitVec 32) (_ BitVec 64))) (size!38990 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79698)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79698 (_ BitVec 32) List!27404) Bool)

(assert (=> b!1236381 (= res!824475 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1236383 () Bool)

(declare-fun res!824477 () Bool)

(assert (=> b!1236383 (=> (not res!824477) (not e!700839))))

(assert (=> b!1236383 (= res!824477 (not (contains!7319 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236384 () Bool)

(declare-fun res!824474 () Bool)

(assert (=> b!1236384 (=> (not res!824474) (not e!700839))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1236384 (= res!824474 (contains!7319 acc!846 k!2925))))

(declare-fun res!824472 () Bool)

(assert (=> start!102912 (=> (not res!824472) (not e!700839))))

(assert (=> start!102912 (= res!824472 (and (bvslt (size!38990 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38990 a!3835))))))

(assert (=> start!102912 e!700839))

(declare-fun array_inv!29229 (array!79698) Bool)

(assert (=> start!102912 (array_inv!29229 a!3835)))

(assert (=> start!102912 true))

(declare-fun b!1236382 () Bool)

(assert (=> b!1236382 (= e!700839 (bvslt (bvsub (size!38990 a!3835) from!3213) #b00000000000000000000000000000000))))

(assert (= (and start!102912 res!824472) b!1236380))

(assert (= (and b!1236380 res!824473) b!1236379))

(assert (= (and b!1236379 res!824476) b!1236383))

(assert (= (and b!1236383 res!824477) b!1236381))

(assert (= (and b!1236381 res!824475) b!1236384))

(assert (= (and b!1236384 res!824474) b!1236382))

(declare-fun m!1140239 () Bool)

(assert (=> b!1236380 m!1140239))

(declare-fun m!1140241 () Bool)

(assert (=> b!1236384 m!1140241))

(declare-fun m!1140243 () Bool)

(assert (=> b!1236379 m!1140243))

(declare-fun m!1140245 () Bool)

(assert (=> b!1236381 m!1140245))

(declare-fun m!1140247 () Bool)

(assert (=> start!102912 m!1140247))

(declare-fun m!1140249 () Bool)

(assert (=> b!1236383 m!1140249))

(push 1)

(assert (not b!1236383))

(assert (not b!1236379))

(assert (not b!1236381))

(assert (not b!1236384))

(assert (not start!102912))

(assert (not b!1236380))

(check-sat)

(pop 1)

(push 1)

(check-sat)

