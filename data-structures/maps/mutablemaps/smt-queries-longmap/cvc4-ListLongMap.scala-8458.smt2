; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102924 () Bool)

(assert start!102924)

(declare-fun b!1236470 () Bool)

(declare-fun res!824567 () Bool)

(declare-fun e!700875 () Bool)

(assert (=> b!1236470 (=> (not res!824567) (not e!700875))))

(declare-datatypes ((List!27410 0))(
  ( (Nil!27407) (Cons!27406 (h!28615 (_ BitVec 64)) (t!40880 List!27410)) )
))
(declare-fun acc!846 () List!27410)

(declare-fun contains!7325 (List!27410 (_ BitVec 64)) Bool)

(assert (=> b!1236470 (= res!824567 (not (contains!7325 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236471 () Bool)

(declare-fun res!824566 () Bool)

(assert (=> b!1236471 (=> (not res!824566) (not e!700875))))

(declare-fun noDuplicate!1932 (List!27410) Bool)

(assert (=> b!1236471 (= res!824566 (noDuplicate!1932 acc!846))))

(declare-fun b!1236472 () Bool)

(declare-fun res!824564 () Bool)

(assert (=> b!1236472 (=> (not res!824564) (not e!700875))))

(assert (=> b!1236472 (= res!824564 (not (contains!7325 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1236473 () Bool)

(assert (=> b!1236473 (= e!700875 false)))

(declare-fun lt!560752 () Bool)

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1236473 (= lt!560752 (contains!7325 acc!846 k!2925))))

(declare-fun res!824565 () Bool)

(assert (=> start!102924 (=> (not res!824565) (not e!700875))))

(declare-datatypes ((array!79710 0))(
  ( (array!79711 (arr!38459 (Array (_ BitVec 32) (_ BitVec 64))) (size!38996 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79710)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102924 (= res!824565 (and (bvslt (size!38996 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38996 a!3835))))))

(assert (=> start!102924 e!700875))

(declare-fun array_inv!29235 (array!79710) Bool)

(assert (=> start!102924 (array_inv!29235 a!3835)))

(assert (=> start!102924 true))

(declare-fun b!1236474 () Bool)

(declare-fun res!824563 () Bool)

(assert (=> b!1236474 (=> (not res!824563) (not e!700875))))

(declare-fun arrayNoDuplicates!0 (array!79710 (_ BitVec 32) List!27410) Bool)

(assert (=> b!1236474 (= res!824563 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(assert (= (and start!102924 res!824565) b!1236471))

(assert (= (and b!1236471 res!824566) b!1236470))

(assert (= (and b!1236470 res!824567) b!1236472))

(assert (= (and b!1236472 res!824564) b!1236474))

(assert (= (and b!1236474 res!824563) b!1236473))

(declare-fun m!1140311 () Bool)

(assert (=> start!102924 m!1140311))

(declare-fun m!1140313 () Bool)

(assert (=> b!1236473 m!1140313))

(declare-fun m!1140315 () Bool)

(assert (=> b!1236470 m!1140315))

(declare-fun m!1140317 () Bool)

(assert (=> b!1236474 m!1140317))

(declare-fun m!1140319 () Bool)

(assert (=> b!1236472 m!1140319))

(declare-fun m!1140321 () Bool)

(assert (=> b!1236471 m!1140321))

(push 1)

(assert (not b!1236473))

(assert (not start!102924))

(assert (not b!1236470))

(assert (not b!1236472))

(assert (not b!1236474))

(assert (not b!1236471))

(check-sat)

