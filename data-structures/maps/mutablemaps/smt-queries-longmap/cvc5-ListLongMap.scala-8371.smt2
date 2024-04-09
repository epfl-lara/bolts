; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101866 () Bool)

(assert start!101866)

(declare-fun b!1226414 () Bool)

(declare-fun res!815179 () Bool)

(declare-fun e!696555 () Bool)

(assert (=> b!1226414 (=> (not res!815179) (not e!696555))))

(declare-datatypes ((List!27147 0))(
  ( (Nil!27144) (Cons!27143 (h!28352 (_ BitVec 64)) (t!40617 List!27147)) )
))
(declare-fun acc!823 () List!27147)

(declare-fun contains!7062 (List!27147 (_ BitVec 64)) Bool)

(assert (=> b!1226414 (= res!815179 (not (contains!7062 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226416 () Bool)

(assert (=> b!1226416 (= e!696555 false)))

(declare-fun lt!558761 () Bool)

(assert (=> b!1226416 (= lt!558761 (contains!7062 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226417 () Bool)

(declare-fun res!815182 () Bool)

(assert (=> b!1226417 (=> (not res!815182) (not e!696555))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226417 (= res!815182 (validKeyInArray!0 k!2913))))

(declare-fun b!1226418 () Bool)

(declare-fun res!815183 () Bool)

(assert (=> b!1226418 (=> (not res!815183) (not e!696555))))

(declare-fun noDuplicate!1669 (List!27147) Bool)

(assert (=> b!1226418 (= res!815183 (noDuplicate!1669 acc!823))))

(declare-fun b!1226415 () Bool)

(declare-fun res!815180 () Bool)

(assert (=> b!1226415 (=> (not res!815180) (not e!696555))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79148 0))(
  ( (array!79149 (arr!38196 (Array (_ BitVec 32) (_ BitVec 64))) (size!38733 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79148)

(assert (=> b!1226415 (= res!815180 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38733 a!3806)) (bvslt from!3184 (size!38733 a!3806))))))

(declare-fun res!815181 () Bool)

(assert (=> start!101866 (=> (not res!815181) (not e!696555))))

(assert (=> start!101866 (= res!815181 (bvslt (size!38733 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101866 e!696555))

(declare-fun array_inv!28972 (array!79148) Bool)

(assert (=> start!101866 (array_inv!28972 a!3806)))

(assert (=> start!101866 true))

(assert (= (and start!101866 res!815181) b!1226417))

(assert (= (and b!1226417 res!815182) b!1226415))

(assert (= (and b!1226415 res!815180) b!1226418))

(assert (= (and b!1226418 res!815183) b!1226414))

(assert (= (and b!1226414 res!815179) b!1226416))

(declare-fun m!1131539 () Bool)

(assert (=> b!1226416 m!1131539))

(declare-fun m!1131541 () Bool)

(assert (=> start!101866 m!1131541))

(declare-fun m!1131543 () Bool)

(assert (=> b!1226418 m!1131543))

(declare-fun m!1131545 () Bool)

(assert (=> b!1226417 m!1131545))

(declare-fun m!1131547 () Bool)

(assert (=> b!1226414 m!1131547))

(push 1)

(assert (not start!101866))

(assert (not b!1226418))

(assert (not b!1226414))

(assert (not b!1226417))

(assert (not b!1226416))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

