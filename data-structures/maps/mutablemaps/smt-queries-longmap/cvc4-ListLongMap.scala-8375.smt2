; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101894 () Bool)

(assert start!101894)

(declare-fun b!1226642 () Bool)

(declare-fun res!815411 () Bool)

(declare-fun e!696640 () Bool)

(assert (=> b!1226642 (=> (not res!815411) (not e!696640))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79176 0))(
  ( (array!79177 (arr!38210 (Array (_ BitVec 32) (_ BitVec 64))) (size!38747 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79176)

(assert (=> b!1226642 (= res!815411 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38747 a!3806)) (bvslt from!3184 (size!38747 a!3806))))))

(declare-fun res!815407 () Bool)

(assert (=> start!101894 (=> (not res!815407) (not e!696640))))

(assert (=> start!101894 (= res!815407 (bvslt (size!38747 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!101894 e!696640))

(declare-fun array_inv!28986 (array!79176) Bool)

(assert (=> start!101894 (array_inv!28986 a!3806)))

(assert (=> start!101894 true))

(declare-fun b!1226643 () Bool)

(declare-fun res!815409 () Bool)

(assert (=> b!1226643 (=> (not res!815409) (not e!696640))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1226643 (= res!815409 (validKeyInArray!0 k!2913))))

(declare-fun b!1226644 () Bool)

(declare-fun res!815410 () Bool)

(assert (=> b!1226644 (=> (not res!815410) (not e!696640))))

(declare-datatypes ((List!27161 0))(
  ( (Nil!27158) (Cons!27157 (h!28366 (_ BitVec 64)) (t!40631 List!27161)) )
))
(declare-fun acc!823 () List!27161)

(declare-fun contains!7076 (List!27161 (_ BitVec 64)) Bool)

(assert (=> b!1226644 (= res!815410 (not (contains!7076 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1226645 () Bool)

(assert (=> b!1226645 (= e!696640 false)))

(declare-fun lt!558794 () Bool)

(assert (=> b!1226645 (= lt!558794 (contains!7076 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1226646 () Bool)

(declare-fun res!815408 () Bool)

(assert (=> b!1226646 (=> (not res!815408) (not e!696640))))

(declare-fun noDuplicate!1683 (List!27161) Bool)

(assert (=> b!1226646 (= res!815408 (noDuplicate!1683 acc!823))))

(assert (= (and start!101894 res!815407) b!1226643))

(assert (= (and b!1226643 res!815409) b!1226642))

(assert (= (and b!1226642 res!815411) b!1226646))

(assert (= (and b!1226646 res!815408) b!1226644))

(assert (= (and b!1226644 res!815410) b!1226645))

(declare-fun m!1131685 () Bool)

(assert (=> b!1226646 m!1131685))

(declare-fun m!1131687 () Bool)

(assert (=> start!101894 m!1131687))

(declare-fun m!1131689 () Bool)

(assert (=> b!1226644 m!1131689))

(declare-fun m!1131691 () Bool)

(assert (=> b!1226645 m!1131691))

(declare-fun m!1131693 () Bool)

(assert (=> b!1226643 m!1131693))

(push 1)

(assert (not b!1226645))

(assert (not b!1226643))

(assert (not b!1226646))

(assert (not start!101894))

(assert (not b!1226644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

