; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101872 () Bool)

(assert start!101872)

(declare-fun b!1226463 () Bool)

(declare-fun res!815229 () Bool)

(declare-fun e!696574 () Bool)

(assert (=> b!1226463 (=> (not res!815229) (not e!696574))))

(declare-datatypes ((List!27150 0))(
  ( (Nil!27147) (Cons!27146 (h!28355 (_ BitVec 64)) (t!40620 List!27150)) )
))
(declare-fun acc!823 () List!27150)

(declare-fun contains!7065 (List!27150 (_ BitVec 64)) Bool)

(assert (=> b!1226463 (= res!815229 (not (contains!7065 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226464 () Bool)

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79154 0))(
  ( (array!79155 (arr!38199 (Array (_ BitVec 32) (_ BitVec 64))) (size!38736 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79154)

(assert (=> b!1226464 (= e!696574 (bvsgt from!3184 (size!38736 a!3806)))))

(declare-fun b!1226465 () Bool)

(declare-fun res!815230 () Bool)

(assert (=> b!1226465 (=> (not res!815230) (not e!696574))))

(assert (=> b!1226465 (= res!815230 (not (contains!7065 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226466 () Bool)

(declare-fun res!815233 () Bool)

(assert (=> b!1226466 (=> (not res!815233) (not e!696574))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226466 (= res!815233 (validKeyInArray!0 k!2913))))

(declare-fun b!1226467 () Bool)

(declare-fun res!815231 () Bool)

(assert (=> b!1226467 (=> (not res!815231) (not e!696574))))

(declare-fun arrayContainsKey!0 (array!79154 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1226467 (= res!815231 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1226468 () Bool)

(declare-fun res!815232 () Bool)

(assert (=> b!1226468 (=> (not res!815232) (not e!696574))))

(declare-fun noDuplicate!1672 (List!27150) Bool)

(assert (=> b!1226468 (= res!815232 (noDuplicate!1672 acc!823))))

(declare-fun b!1226469 () Bool)

(declare-fun res!815228 () Bool)

(assert (=> b!1226469 (=> (not res!815228) (not e!696574))))

(assert (=> b!1226469 (= res!815228 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38736 a!3806)) (bvslt from!3184 (size!38736 a!3806))))))

(declare-fun res!815234 () Bool)

(assert (=> start!101872 (=> (not res!815234) (not e!696574))))

(assert (=> start!101872 (= res!815234 (bvslt (size!38736 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101872 e!696574))

(declare-fun array_inv!28975 (array!79154) Bool)

(assert (=> start!101872 (array_inv!28975 a!3806)))

(assert (=> start!101872 true))

(assert (= (and start!101872 res!815234) b!1226466))

(assert (= (and b!1226466 res!815233) b!1226469))

(assert (= (and b!1226469 res!815228) b!1226468))

(assert (= (and b!1226468 res!815232) b!1226465))

(assert (= (and b!1226465 res!815230) b!1226463))

(assert (= (and b!1226463 res!815229) b!1226467))

(assert (= (and b!1226467 res!815231) b!1226464))

(declare-fun m!1131569 () Bool)

(assert (=> b!1226468 m!1131569))

(declare-fun m!1131571 () Bool)

(assert (=> b!1226465 m!1131571))

(declare-fun m!1131573 () Bool)

(assert (=> b!1226463 m!1131573))

(declare-fun m!1131575 () Bool)

(assert (=> b!1226466 m!1131575))

(declare-fun m!1131577 () Bool)

(assert (=> start!101872 m!1131577))

(declare-fun m!1131579 () Bool)

(assert (=> b!1226467 m!1131579))

(push 1)

(assert (not b!1226465))

(assert (not b!1226466))

(assert (not b!1226463))

(assert (not b!1226467))

(assert (not b!1226468))

(assert (not start!101872))

(check-sat)

(pop 1)

(push 1)

(check-sat)

