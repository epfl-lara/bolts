; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101890 () Bool)

(assert start!101890)

(declare-fun b!1226612 () Bool)

(declare-fun res!815381 () Bool)

(declare-fun e!696628 () Bool)

(assert (=> b!1226612 (=> (not res!815381) (not e!696628))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79172 0))(
  ( (array!79173 (arr!38208 (Array (_ BitVec 32) (_ BitVec 64))) (size!38745 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79172)

(assert (=> b!1226612 (= res!815381 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38745 a!3806)) (bvslt from!3184 (size!38745 a!3806))))))

(declare-fun res!815377 () Bool)

(assert (=> start!101890 (=> (not res!815377) (not e!696628))))

(assert (=> start!101890 (= res!815377 (bvslt (size!38745 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101890 e!696628))

(declare-fun array_inv!28984 (array!79172) Bool)

(assert (=> start!101890 (array_inv!28984 a!3806)))

(assert (=> start!101890 true))

(declare-fun b!1226613 () Bool)

(declare-fun res!815380 () Bool)

(assert (=> b!1226613 (=> (not res!815380) (not e!696628))))

(declare-datatypes ((List!27159 0))(
  ( (Nil!27156) (Cons!27155 (h!28364 (_ BitVec 64)) (t!40629 List!27159)) )
))
(declare-fun acc!823 () List!27159)

(declare-fun noDuplicate!1681 (List!27159) Bool)

(assert (=> b!1226613 (= res!815380 (noDuplicate!1681 acc!823))))

(declare-fun b!1226614 () Bool)

(declare-fun res!815379 () Bool)

(assert (=> b!1226614 (=> (not res!815379) (not e!696628))))

(declare-fun contains!7074 (List!27159 (_ BitVec 64)) Bool)

(assert (=> b!1226614 (= res!815379 (not (contains!7074 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226615 () Bool)

(assert (=> b!1226615 (= e!696628 false)))

(declare-fun lt!558788 () Bool)

(assert (=> b!1226615 (= lt!558788 (contains!7074 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226616 () Bool)

(declare-fun res!815378 () Bool)

(assert (=> b!1226616 (=> (not res!815378) (not e!696628))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226616 (= res!815378 (validKeyInArray!0 k!2913))))

(assert (= (and start!101890 res!815377) b!1226616))

(assert (= (and b!1226616 res!815378) b!1226612))

(assert (= (and b!1226612 res!815381) b!1226613))

(assert (= (and b!1226613 res!815380) b!1226614))

(assert (= (and b!1226614 res!815379) b!1226615))

(declare-fun m!1131665 () Bool)

(assert (=> start!101890 m!1131665))

(declare-fun m!1131667 () Bool)

(assert (=> b!1226615 m!1131667))

(declare-fun m!1131669 () Bool)

(assert (=> b!1226616 m!1131669))

(declare-fun m!1131671 () Bool)

(assert (=> b!1226614 m!1131671))

(declare-fun m!1131673 () Bool)

(assert (=> b!1226613 m!1131673))

(push 1)

(assert (not start!101890))

(assert (not b!1226614))

(assert (not b!1226616))

(assert (not b!1226613))

(assert (not b!1226615))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

