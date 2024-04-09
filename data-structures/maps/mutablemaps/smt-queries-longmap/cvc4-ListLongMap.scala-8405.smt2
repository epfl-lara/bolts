; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102290 () Bool)

(assert start!102290)

(declare-fun b!1230628 () Bool)

(declare-fun res!819201 () Bool)

(declare-fun e!698263 () Bool)

(assert (=> b!1230628 (=> (not res!819201) (not e!698263))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79371 0))(
  ( (array!79372 (arr!38300 (Array (_ BitVec 32) (_ BitVec 64))) (size!38837 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79371)

(assert (=> b!1230628 (= res!819201 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38837 a!3806)) (bvslt from!3184 (size!38837 a!3806))))))

(declare-fun b!1230629 () Bool)

(assert (=> b!1230629 (= e!698263 (not true))))

(declare-datatypes ((List!27251 0))(
  ( (Nil!27248) (Cons!27247 (h!28456 (_ BitVec 64)) (t!40721 List!27251)) )
))
(declare-fun acc!823 () List!27251)

(declare-fun arrayNoDuplicates!0 (array!79371 (_ BitVec 32) List!27251) Bool)

(assert (=> b!1230629 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27247 (select (arr!38300 a!3806) from!3184) acc!823))))

(declare-fun b!1230630 () Bool)

(declare-fun res!819199 () Bool)

(assert (=> b!1230630 (=> (not res!819199) (not e!698263))))

(declare-fun noDuplicate!1773 (List!27251) Bool)

(assert (=> b!1230630 (= res!819199 (noDuplicate!1773 acc!823))))

(declare-fun b!1230631 () Bool)

(declare-fun res!819203 () Bool)

(assert (=> b!1230631 (=> (not res!819203) (not e!698263))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79371 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230631 (= res!819203 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!819196 () Bool)

(assert (=> start!102290 (=> (not res!819196) (not e!698263))))

(assert (=> start!102290 (= res!819196 (bvslt (size!38837 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102290 e!698263))

(declare-fun array_inv!29076 (array!79371) Bool)

(assert (=> start!102290 (array_inv!29076 a!3806)))

(assert (=> start!102290 true))

(declare-fun b!1230632 () Bool)

(declare-fun res!819197 () Bool)

(assert (=> b!1230632 (=> (not res!819197) (not e!698263))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230632 (= res!819197 (validKeyInArray!0 (select (arr!38300 a!3806) from!3184)))))

(declare-fun b!1230633 () Bool)

(declare-fun res!819195 () Bool)

(assert (=> b!1230633 (=> (not res!819195) (not e!698263))))

(assert (=> b!1230633 (= res!819195 (validKeyInArray!0 k!2913))))

(declare-fun b!1230634 () Bool)

(declare-fun res!819200 () Bool)

(assert (=> b!1230634 (=> (not res!819200) (not e!698263))))

(assert (=> b!1230634 (= res!819200 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230635 () Bool)

(declare-fun res!819198 () Bool)

(assert (=> b!1230635 (=> (not res!819198) (not e!698263))))

(declare-fun contains!7166 (List!27251 (_ BitVec 64)) Bool)

(assert (=> b!1230635 (= res!819198 (not (contains!7166 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230636 () Bool)

(declare-fun res!819202 () Bool)

(assert (=> b!1230636 (=> (not res!819202) (not e!698263))))

(assert (=> b!1230636 (= res!819202 (not (contains!7166 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and start!102290 res!819196) b!1230633))

(assert (= (and b!1230633 res!819195) b!1230628))

(assert (= (and b!1230628 res!819201) b!1230630))

(assert (= (and b!1230630 res!819199) b!1230635))

(assert (= (and b!1230635 res!819198) b!1230636))

(assert (= (and b!1230636 res!819202) b!1230631))

(assert (= (and b!1230631 res!819203) b!1230634))

(assert (= (and b!1230634 res!819200) b!1230632))

(assert (= (and b!1230632 res!819197) b!1230629))

(declare-fun m!1135041 () Bool)

(assert (=> b!1230631 m!1135041))

(declare-fun m!1135043 () Bool)

(assert (=> b!1230635 m!1135043))

(declare-fun m!1135045 () Bool)

(assert (=> b!1230630 m!1135045))

(declare-fun m!1135047 () Bool)

(assert (=> b!1230629 m!1135047))

(declare-fun m!1135049 () Bool)

(assert (=> b!1230629 m!1135049))

(declare-fun m!1135051 () Bool)

(assert (=> b!1230634 m!1135051))

(assert (=> b!1230632 m!1135047))

(assert (=> b!1230632 m!1135047))

(declare-fun m!1135053 () Bool)

(assert (=> b!1230632 m!1135053))

(declare-fun m!1135055 () Bool)

(assert (=> b!1230633 m!1135055))

(declare-fun m!1135057 () Bool)

(assert (=> start!102290 m!1135057))

(declare-fun m!1135059 () Bool)

(assert (=> b!1230636 m!1135059))

(push 1)

(assert (not b!1230633))

(assert (not b!1230635))

(assert (not b!1230630))

(assert (not b!1230636))

(assert (not b!1230629))

(assert (not start!102290))

(assert (not b!1230634))

(assert (not b!1230631))

(assert (not b!1230632))

(check-sat)

