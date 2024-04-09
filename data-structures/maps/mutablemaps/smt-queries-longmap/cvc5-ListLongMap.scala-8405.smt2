; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102286 () Bool)

(assert start!102286)

(declare-fun res!819145 () Bool)

(declare-fun e!698250 () Bool)

(assert (=> start!102286 (=> (not res!819145) (not e!698250))))

(declare-datatypes ((array!79367 0))(
  ( (array!79368 (arr!38298 (Array (_ BitVec 32) (_ BitVec 64))) (size!38835 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79367)

(assert (=> start!102286 (= res!819145 (bvslt (size!38835 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102286 e!698250))

(declare-fun array_inv!29074 (array!79367) Bool)

(assert (=> start!102286 (array_inv!29074 a!3806)))

(assert (=> start!102286 true))

(declare-fun b!1230574 () Bool)

(declare-fun res!819149 () Bool)

(assert (=> b!1230574 (=> (not res!819149) (not e!698250))))

(declare-datatypes ((List!27249 0))(
  ( (Nil!27246) (Cons!27245 (h!28454 (_ BitVec 64)) (t!40719 List!27249)) )
))
(declare-fun acc!823 () List!27249)

(declare-fun contains!7164 (List!27249 (_ BitVec 64)) Bool)

(assert (=> b!1230574 (= res!819149 (not (contains!7164 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230575 () Bool)

(declare-fun res!819141 () Bool)

(assert (=> b!1230575 (=> (not res!819141) (not e!698250))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79367 (_ BitVec 32) List!27249) Bool)

(assert (=> b!1230575 (= res!819141 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230576 () Bool)

(declare-fun res!819146 () Bool)

(assert (=> b!1230576 (=> (not res!819146) (not e!698250))))

(assert (=> b!1230576 (= res!819146 (not (contains!7164 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230577 () Bool)

(assert (=> b!1230577 (= e!698250 (not true))))

(assert (=> b!1230577 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27245 (select (arr!38298 a!3806) from!3184) acc!823))))

(declare-fun b!1230578 () Bool)

(declare-fun res!819143 () Bool)

(assert (=> b!1230578 (=> (not res!819143) (not e!698250))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230578 (= res!819143 (validKeyInArray!0 k!2913))))

(declare-fun b!1230579 () Bool)

(declare-fun res!819147 () Bool)

(assert (=> b!1230579 (=> (not res!819147) (not e!698250))))

(declare-fun noDuplicate!1771 (List!27249) Bool)

(assert (=> b!1230579 (= res!819147 (noDuplicate!1771 acc!823))))

(declare-fun b!1230580 () Bool)

(declare-fun res!819144 () Bool)

(assert (=> b!1230580 (=> (not res!819144) (not e!698250))))

(assert (=> b!1230580 (= res!819144 (validKeyInArray!0 (select (arr!38298 a!3806) from!3184)))))

(declare-fun b!1230581 () Bool)

(declare-fun res!819148 () Bool)

(assert (=> b!1230581 (=> (not res!819148) (not e!698250))))

(declare-fun arrayContainsKey!0 (array!79367 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230581 (= res!819148 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230582 () Bool)

(declare-fun res!819142 () Bool)

(assert (=> b!1230582 (=> (not res!819142) (not e!698250))))

(assert (=> b!1230582 (= res!819142 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38835 a!3806)) (bvslt from!3184 (size!38835 a!3806))))))

(assert (= (and start!102286 res!819145) b!1230578))

(assert (= (and b!1230578 res!819143) b!1230582))

(assert (= (and b!1230582 res!819142) b!1230579))

(assert (= (and b!1230579 res!819147) b!1230576))

(assert (= (and b!1230576 res!819146) b!1230574))

(assert (= (and b!1230574 res!819149) b!1230581))

(assert (= (and b!1230581 res!819148) b!1230575))

(assert (= (and b!1230575 res!819141) b!1230580))

(assert (= (and b!1230580 res!819144) b!1230577))

(declare-fun m!1135001 () Bool)

(assert (=> start!102286 m!1135001))

(declare-fun m!1135003 () Bool)

(assert (=> b!1230578 m!1135003))

(declare-fun m!1135005 () Bool)

(assert (=> b!1230576 m!1135005))

(declare-fun m!1135007 () Bool)

(assert (=> b!1230574 m!1135007))

(declare-fun m!1135009 () Bool)

(assert (=> b!1230575 m!1135009))

(declare-fun m!1135011 () Bool)

(assert (=> b!1230579 m!1135011))

(declare-fun m!1135013 () Bool)

(assert (=> b!1230581 m!1135013))

(declare-fun m!1135015 () Bool)

(assert (=> b!1230580 m!1135015))

(assert (=> b!1230580 m!1135015))

(declare-fun m!1135017 () Bool)

(assert (=> b!1230580 m!1135017))

(assert (=> b!1230577 m!1135015))

(declare-fun m!1135019 () Bool)

(assert (=> b!1230577 m!1135019))

(push 1)

(assert (not b!1230577))

(assert (not b!1230581))

(assert (not b!1230576))

(assert (not b!1230575))

(assert (not b!1230580))

(assert (not b!1230574))

(assert (not b!1230578))

(assert (not start!102286))

(assert (not b!1230579))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

