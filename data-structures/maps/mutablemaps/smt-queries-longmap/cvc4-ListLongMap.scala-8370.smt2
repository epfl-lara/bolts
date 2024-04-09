; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101864 () Bool)

(assert start!101864)

(declare-fun res!815166 () Bool)

(declare-fun e!696550 () Bool)

(assert (=> start!101864 (=> (not res!815166) (not e!696550))))

(declare-datatypes ((array!79146 0))(
  ( (array!79147 (arr!38195 (Array (_ BitVec 32) (_ BitVec 64))) (size!38732 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79146)

(assert (=> start!101864 (= res!815166 (bvslt (size!38732 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101864 e!696550))

(declare-fun array_inv!28971 (array!79146) Bool)

(assert (=> start!101864 (array_inv!28971 a!3806)))

(assert (=> start!101864 true))

(declare-fun b!1226399 () Bool)

(declare-fun res!815165 () Bool)

(assert (=> b!1226399 (=> (not res!815165) (not e!696550))))

(declare-datatypes ((List!27146 0))(
  ( (Nil!27143) (Cons!27142 (h!28351 (_ BitVec 64)) (t!40616 List!27146)) )
))
(declare-fun acc!823 () List!27146)

(declare-fun noDuplicate!1668 (List!27146) Bool)

(assert (=> b!1226399 (= res!815165 (noDuplicate!1668 acc!823))))

(declare-fun b!1226400 () Bool)

(assert (=> b!1226400 (= e!696550 false)))

(declare-fun lt!558758 () Bool)

(declare-fun contains!7061 (List!27146 (_ BitVec 64)) Bool)

(assert (=> b!1226400 (= lt!558758 (contains!7061 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226401 () Bool)

(declare-fun res!815167 () Bool)

(assert (=> b!1226401 (=> (not res!815167) (not e!696550))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226401 (= res!815167 (validKeyInArray!0 k!2913))))

(declare-fun b!1226402 () Bool)

(declare-fun res!815168 () Bool)

(assert (=> b!1226402 (=> (not res!815168) (not e!696550))))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1226402 (= res!815168 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38732 a!3806)) (bvslt from!3184 (size!38732 a!3806))))))

(declare-fun b!1226403 () Bool)

(declare-fun res!815164 () Bool)

(assert (=> b!1226403 (=> (not res!815164) (not e!696550))))

(assert (=> b!1226403 (= res!815164 (not (contains!7061 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!101864 res!815166) b!1226401))

(assert (= (and b!1226401 res!815167) b!1226402))

(assert (= (and b!1226402 res!815168) b!1226399))

(assert (= (and b!1226399 res!815165) b!1226403))

(assert (= (and b!1226403 res!815164) b!1226400))

(declare-fun m!1131529 () Bool)

(assert (=> b!1226401 m!1131529))

(declare-fun m!1131531 () Bool)

(assert (=> start!101864 m!1131531))

(declare-fun m!1131533 () Bool)

(assert (=> b!1226399 m!1131533))

(declare-fun m!1131535 () Bool)

(assert (=> b!1226403 m!1131535))

(declare-fun m!1131537 () Bool)

(assert (=> b!1226400 m!1131537))

(push 1)

(assert (not b!1226400))

(assert (not b!1226401))

(assert (not b!1226399))

(assert (not start!101864))

(assert (not b!1226403))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

