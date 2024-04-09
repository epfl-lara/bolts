; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101884 () Bool)

(assert start!101884)

(declare-fun b!1226567 () Bool)

(declare-fun e!696609 () Bool)

(assert (=> b!1226567 (= e!696609 false)))

(declare-fun lt!558779 () Bool)

(declare-datatypes ((List!27156 0))(
  ( (Nil!27153) (Cons!27152 (h!28361 (_ BitVec 64)) (t!40626 List!27156)) )
))
(declare-fun acc!823 () List!27156)

(declare-fun contains!7071 (List!27156 (_ BitVec 64)) Bool)

(assert (=> b!1226567 (= lt!558779 (contains!7071 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226568 () Bool)

(declare-fun res!815336 () Bool)

(assert (=> b!1226568 (=> (not res!815336) (not e!696609))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226568 (= res!815336 (validKeyInArray!0 k!2913))))

(declare-fun b!1226569 () Bool)

(declare-fun res!815335 () Bool)

(assert (=> b!1226569 (=> (not res!815335) (not e!696609))))

(declare-fun noDuplicate!1678 (List!27156) Bool)

(assert (=> b!1226569 (= res!815335 (noDuplicate!1678 acc!823))))

(declare-fun res!815334 () Bool)

(assert (=> start!101884 (=> (not res!815334) (not e!696609))))

(declare-datatypes ((array!79166 0))(
  ( (array!79167 (arr!38205 (Array (_ BitVec 32) (_ BitVec 64))) (size!38742 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79166)

(assert (=> start!101884 (= res!815334 (bvslt (size!38742 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101884 e!696609))

(declare-fun array_inv!28981 (array!79166) Bool)

(assert (=> start!101884 (array_inv!28981 a!3806)))

(assert (=> start!101884 true))

(declare-fun b!1226570 () Bool)

(declare-fun res!815333 () Bool)

(assert (=> b!1226570 (=> (not res!815333) (not e!696609))))

(assert (=> b!1226570 (= res!815333 (not (contains!7071 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226571 () Bool)

(declare-fun res!815332 () Bool)

(assert (=> b!1226571 (=> (not res!815332) (not e!696609))))

(declare-fun from!3184 () (_ BitVec 32))

(assert (=> b!1226571 (= res!815332 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38742 a!3806)) (bvslt from!3184 (size!38742 a!3806))))))

(assert (= (and start!101884 res!815334) b!1226568))

(assert (= (and b!1226568 res!815336) b!1226571))

(assert (= (and b!1226571 res!815332) b!1226569))

(assert (= (and b!1226569 res!815335) b!1226570))

(assert (= (and b!1226570 res!815333) b!1226567))

(declare-fun m!1131635 () Bool)

(assert (=> b!1226568 m!1131635))

(declare-fun m!1131637 () Bool)

(assert (=> b!1226570 m!1131637))

(declare-fun m!1131639 () Bool)

(assert (=> b!1226569 m!1131639))

(declare-fun m!1131641 () Bool)

(assert (=> b!1226567 m!1131641))

(declare-fun m!1131643 () Bool)

(assert (=> start!101884 m!1131643))

(push 1)

(assert (not b!1226569))

(assert (not b!1226570))

(assert (not start!101884))

(assert (not b!1226568))

(assert (not b!1226567))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

