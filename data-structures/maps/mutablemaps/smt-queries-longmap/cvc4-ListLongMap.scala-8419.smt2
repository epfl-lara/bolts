; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102494 () Bool)

(assert start!102494)

(declare-fun b!1232337 () Bool)

(declare-fun res!820826 () Bool)

(declare-fun e!699003 () Bool)

(assert (=> b!1232337 (=> (not res!820826) (not e!699003))))

(declare-datatypes ((array!79464 0))(
  ( (array!79465 (arr!38342 (Array (_ BitVec 32) (_ BitVec 64))) (size!38879 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79464)

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayContainsKey!0 (array!79464 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1232337 (= res!820826 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1232338 () Bool)

(declare-fun res!820824 () Bool)

(assert (=> b!1232338 (=> (not res!820824) (not e!699003))))

(declare-datatypes ((List!27293 0))(
  ( (Nil!27290) (Cons!27289 (h!28498 (_ BitVec 64)) (t!40763 List!27293)) )
))
(declare-fun acc!823 () List!27293)

(declare-fun arrayNoDuplicates!0 (array!79464 (_ BitVec 32) List!27293) Bool)

(assert (=> b!1232338 (= res!820824 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!820827 () Bool)

(assert (=> start!102494 (=> (not res!820827) (not e!699003))))

(assert (=> start!102494 (= res!820827 (bvslt (size!38879 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102494 e!699003))

(declare-fun array_inv!29118 (array!79464) Bool)

(assert (=> start!102494 (array_inv!29118 a!3806)))

(assert (=> start!102494 true))

(declare-fun b!1232339 () Bool)

(declare-fun res!820822 () Bool)

(assert (=> b!1232339 (=> (not res!820822) (not e!699003))))

(declare-fun contains!7208 (List!27293 (_ BitVec 64)) Bool)

(assert (=> b!1232339 (= res!820822 (not (contains!7208 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232340 () Bool)

(declare-fun res!820820 () Bool)

(assert (=> b!1232340 (=> (not res!820820) (not e!699003))))

(assert (=> b!1232340 (= res!820820 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38879 a!3806)) (bvslt from!3184 (size!38879 a!3806))))))

(declare-fun b!1232341 () Bool)

(declare-fun res!820821 () Bool)

(assert (=> b!1232341 (=> (not res!820821) (not e!699003))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1232341 (= res!820821 (validKeyInArray!0 (select (arr!38342 a!3806) from!3184)))))

(declare-fun b!1232342 () Bool)

(declare-fun res!820823 () Bool)

(assert (=> b!1232342 (=> (not res!820823) (not e!699003))))

(declare-fun noDuplicate!1815 (List!27293) Bool)

(assert (=> b!1232342 (= res!820823 (noDuplicate!1815 acc!823))))

(declare-fun b!1232343 () Bool)

(declare-fun res!820828 () Bool)

(assert (=> b!1232343 (=> (not res!820828) (not e!699003))))

(assert (=> b!1232343 (= res!820828 (validKeyInArray!0 k!2913))))

(declare-fun b!1232344 () Bool)

(declare-fun res!820825 () Bool)

(assert (=> b!1232344 (=> (not res!820825) (not e!699003))))

(assert (=> b!1232344 (= res!820825 (not (contains!7208 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1232345 () Bool)

(assert (=> b!1232345 (= e!699003 (not true))))

(declare-fun e!699004 () Bool)

(assert (=> b!1232345 e!699004))

(declare-fun res!820829 () Bool)

(assert (=> b!1232345 (=> (not res!820829) (not e!699004))))

(assert (=> b!1232345 (= res!820829 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27290))))

(declare-datatypes ((Unit!40764 0))(
  ( (Unit!40765) )
))
(declare-fun lt!559457 () Unit!40764)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79464 List!27293 List!27293 (_ BitVec 32)) Unit!40764)

(assert (=> b!1232345 (= lt!559457 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27290 from!3184))))

(assert (=> b!1232345 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27289 (select (arr!38342 a!3806) from!3184) acc!823))))

(declare-fun b!1232346 () Bool)

(assert (=> b!1232346 (= e!699004 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27289 (select (arr!38342 a!3806) from!3184) Nil!27290)))))

(assert (= (and start!102494 res!820827) b!1232343))

(assert (= (and b!1232343 res!820828) b!1232340))

(assert (= (and b!1232340 res!820820) b!1232342))

(assert (= (and b!1232342 res!820823) b!1232339))

(assert (= (and b!1232339 res!820822) b!1232344))

(assert (= (and b!1232344 res!820825) b!1232337))

(assert (= (and b!1232337 res!820826) b!1232338))

(assert (= (and b!1232338 res!820824) b!1232341))

(assert (= (and b!1232341 res!820821) b!1232345))

(assert (= (and b!1232345 res!820829) b!1232346))

(declare-fun m!1136403 () Bool)

(assert (=> b!1232338 m!1136403))

(declare-fun m!1136405 () Bool)

(assert (=> b!1232343 m!1136405))

(declare-fun m!1136407 () Bool)

(assert (=> b!1232342 m!1136407))

(declare-fun m!1136409 () Bool)

(assert (=> b!1232337 m!1136409))

(declare-fun m!1136411 () Bool)

(assert (=> start!102494 m!1136411))

(declare-fun m!1136413 () Bool)

(assert (=> b!1232344 m!1136413))

(declare-fun m!1136415 () Bool)

(assert (=> b!1232345 m!1136415))

(declare-fun m!1136417 () Bool)

(assert (=> b!1232345 m!1136417))

(declare-fun m!1136419 () Bool)

(assert (=> b!1232345 m!1136419))

(declare-fun m!1136421 () Bool)

(assert (=> b!1232345 m!1136421))

(declare-fun m!1136423 () Bool)

(assert (=> b!1232339 m!1136423))

(assert (=> b!1232341 m!1136419))

(assert (=> b!1232341 m!1136419))

(declare-fun m!1136425 () Bool)

(assert (=> b!1232341 m!1136425))

(assert (=> b!1232346 m!1136419))

(declare-fun m!1136427 () Bool)

(assert (=> b!1232346 m!1136427))

(push 1)

(assert (not b!1232337))

(assert (not b!1232343))

(assert (not start!102494))

(assert (not b!1232346))

(assert (not b!1232342))

(assert (not b!1232338))

(assert (not b!1232344))

(assert (not b!1232345))

(assert (not b!1232341))

(assert (not b!1232339))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

