; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101876 () Bool)

(assert start!101876)

(declare-fun b!1226505 () Bool)

(declare-fun e!696585 () Bool)

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79158 0))(
  ( (array!79159 (arr!38201 (Array (_ BitVec 32) (_ BitVec 64))) (size!38738 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79158)

(assert (=> b!1226505 (= e!696585 (bvsgt from!3184 (size!38738 a!3806)))))

(declare-fun b!1226506 () Bool)

(declare-fun res!815270 () Bool)

(assert (=> b!1226506 (=> (not res!815270) (not e!696585))))

(declare-datatypes ((List!27152 0))(
  ( (Nil!27149) (Cons!27148 (h!28357 (_ BitVec 64)) (t!40622 List!27152)) )
))
(declare-fun acc!823 () List!27152)

(declare-fun contains!7067 (List!27152 (_ BitVec 64)) Bool)

(assert (=> b!1226506 (= res!815270 (not (contains!7067 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226507 () Bool)

(declare-fun res!815275 () Bool)

(assert (=> b!1226507 (=> (not res!815275) (not e!696585))))

(assert (=> b!1226507 (= res!815275 (not (contains!7067 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226508 () Bool)

(declare-fun res!815272 () Bool)

(assert (=> b!1226508 (=> (not res!815272) (not e!696585))))

(declare-fun noDuplicate!1674 (List!27152) Bool)

(assert (=> b!1226508 (= res!815272 (noDuplicate!1674 acc!823))))

(declare-fun res!815274 () Bool)

(assert (=> start!101876 (=> (not res!815274) (not e!696585))))

(assert (=> start!101876 (= res!815274 (bvslt (size!38738 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101876 e!696585))

(declare-fun array_inv!28977 (array!79158) Bool)

(assert (=> start!101876 (array_inv!28977 a!3806)))

(assert (=> start!101876 true))

(declare-fun b!1226509 () Bool)

(declare-fun res!815276 () Bool)

(assert (=> b!1226509 (=> (not res!815276) (not e!696585))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226509 (= res!815276 (validKeyInArray!0 k!2913))))

(declare-fun b!1226510 () Bool)

(declare-fun res!815273 () Bool)

(assert (=> b!1226510 (=> (not res!815273) (not e!696585))))

(declare-fun arrayContainsKey!0 (array!79158 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1226510 (= res!815273 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1226511 () Bool)

(declare-fun res!815271 () Bool)

(assert (=> b!1226511 (=> (not res!815271) (not e!696585))))

(assert (=> b!1226511 (= res!815271 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38738 a!3806)) (bvslt from!3184 (size!38738 a!3806))))))

(assert (= (and start!101876 res!815274) b!1226509))

(assert (= (and b!1226509 res!815276) b!1226511))

(assert (= (and b!1226511 res!815271) b!1226508))

(assert (= (and b!1226508 res!815272) b!1226507))

(assert (= (and b!1226507 res!815275) b!1226506))

(assert (= (and b!1226506 res!815270) b!1226510))

(assert (= (and b!1226510 res!815273) b!1226505))

(declare-fun m!1131593 () Bool)

(assert (=> b!1226509 m!1131593))

(declare-fun m!1131595 () Bool)

(assert (=> start!101876 m!1131595))

(declare-fun m!1131597 () Bool)

(assert (=> b!1226507 m!1131597))

(declare-fun m!1131599 () Bool)

(assert (=> b!1226508 m!1131599))

(declare-fun m!1131601 () Bool)

(assert (=> b!1226506 m!1131601))

(declare-fun m!1131603 () Bool)

(assert (=> b!1226510 m!1131603))

(push 1)

(assert (not b!1226507))

(assert (not b!1226506))

(assert (not b!1226510))

(assert (not b!1226509))

(assert (not start!101876))

(assert (not b!1226508))

(check-sat)

(pop 1)

(push 1)

(check-sat)

