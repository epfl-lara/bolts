; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102926 () Bool)

(assert start!102926)

(declare-fun b!1236491 () Bool)

(declare-fun res!824590 () Bool)

(declare-fun e!700881 () Bool)

(assert (=> b!1236491 (=> (not res!824590) (not e!700881))))

(declare-datatypes ((array!79712 0))(
  ( (array!79713 (arr!38460 (Array (_ BitVec 32) (_ BitVec 64))) (size!38997 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79712)

(declare-datatypes ((List!27411 0))(
  ( (Nil!27408) (Cons!27407 (h!28616 (_ BitVec 64)) (t!40881 List!27411)) )
))
(declare-fun acc!846 () List!27411)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79712 (_ BitVec 32) List!27411) Bool)

(assert (=> b!1236491 (= res!824590 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun res!824589 () Bool)

(assert (=> start!102926 (=> (not res!824589) (not e!700881))))

(assert (=> start!102926 (= res!824589 (and (bvslt (size!38997 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38997 a!3835))))))

(assert (=> start!102926 e!700881))

(declare-fun array_inv!29236 (array!79712) Bool)

(assert (=> start!102926 (array_inv!29236 a!3835)))

(assert (=> start!102926 true))

(declare-fun b!1236492 () Bool)

(assert (=> b!1236492 (= e!700881 (not true))))

(declare-fun lt!560757 () List!27411)

(declare-fun subseq!563 (List!27411 List!27411) Bool)

(assert (=> b!1236492 (subseq!563 lt!560757 lt!560757)))

(declare-datatypes ((Unit!40958 0))(
  ( (Unit!40959) )
))
(declare-fun lt!560758 () Unit!40958)

(declare-fun lemmaListSubSeqRefl!0 (List!27411) Unit!40958)

(assert (=> b!1236492 (= lt!560758 (lemmaListSubSeqRefl!0 lt!560757))))

(assert (=> b!1236492 (= lt!560757 (Cons!27407 (select (arr!38460 a!3835) from!3213) acc!846))))

(declare-fun b!1236493 () Bool)

(declare-fun res!824584 () Bool)

(assert (=> b!1236493 (=> (not res!824584) (not e!700881))))

(declare-fun contains!7326 (List!27411 (_ BitVec 64)) Bool)

(assert (=> b!1236493 (= res!824584 (not (contains!7326 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236494 () Bool)

(declare-fun res!824586 () Bool)

(assert (=> b!1236494 (=> (not res!824586) (not e!700881))))

(assert (=> b!1236494 (= res!824586 (not (contains!7326 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236495 () Bool)

(declare-fun res!824591 () Bool)

(assert (=> b!1236495 (=> (not res!824591) (not e!700881))))

(assert (=> b!1236495 (= res!824591 (not (= from!3213 (bvsub (size!38997 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1236496 () Bool)

(declare-fun res!824588 () Bool)

(assert (=> b!1236496 (=> (not res!824588) (not e!700881))))

(declare-fun noDuplicate!1933 (List!27411) Bool)

(assert (=> b!1236496 (= res!824588 (noDuplicate!1933 acc!846))))

(declare-fun b!1236497 () Bool)

(declare-fun res!824585 () Bool)

(assert (=> b!1236497 (=> (not res!824585) (not e!700881))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1236497 (= res!824585 (validKeyInArray!0 (select (arr!38460 a!3835) from!3213)))))

(declare-fun b!1236498 () Bool)

(declare-fun res!824587 () Bool)

(assert (=> b!1236498 (=> (not res!824587) (not e!700881))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1236498 (= res!824587 (contains!7326 acc!846 k!2925))))

(assert (= (and start!102926 res!824589) b!1236496))

(assert (= (and b!1236496 res!824588) b!1236494))

(assert (= (and b!1236494 res!824586) b!1236493))

(assert (= (and b!1236493 res!824584) b!1236491))

(assert (= (and b!1236491 res!824590) b!1236498))

(assert (= (and b!1236498 res!824587) b!1236495))

(assert (= (and b!1236495 res!824591) b!1236497))

(assert (= (and b!1236497 res!824585) b!1236492))

(declare-fun m!1140323 () Bool)

(assert (=> start!102926 m!1140323))

(declare-fun m!1140325 () Bool)

(assert (=> b!1236497 m!1140325))

(assert (=> b!1236497 m!1140325))

(declare-fun m!1140327 () Bool)

(assert (=> b!1236497 m!1140327))

(declare-fun m!1140329 () Bool)

(assert (=> b!1236491 m!1140329))

(declare-fun m!1140331 () Bool)

(assert (=> b!1236498 m!1140331))

(declare-fun m!1140333 () Bool)

(assert (=> b!1236492 m!1140333))

(declare-fun m!1140335 () Bool)

(assert (=> b!1236492 m!1140335))

(assert (=> b!1236492 m!1140325))

(declare-fun m!1140337 () Bool)

(assert (=> b!1236496 m!1140337))

(declare-fun m!1140339 () Bool)

(assert (=> b!1236493 m!1140339))

(declare-fun m!1140341 () Bool)

(assert (=> b!1236494 m!1140341))

(push 1)

(assert (not b!1236492))

(assert (not b!1236493))

(assert (not start!102926))

(assert (not b!1236498))

(assert (not b!1236496))

(assert (not b!1236491))

(assert (not b!1236497))

(assert (not b!1236494))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

