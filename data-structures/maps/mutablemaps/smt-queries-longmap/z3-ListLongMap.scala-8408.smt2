; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102306 () Bool)

(assert start!102306)

(declare-fun b!1230844 () Bool)

(declare-fun res!819415 () Bool)

(declare-fun e!698311 () Bool)

(assert (=> b!1230844 (=> (not res!819415) (not e!698311))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230844 (= res!819415 (validKeyInArray!0 k0!2913))))

(declare-fun b!1230845 () Bool)

(declare-fun res!819416 () Bool)

(assert (=> b!1230845 (=> (not res!819416) (not e!698311))))

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79387 0))(
  ( (array!79388 (arr!38308 (Array (_ BitVec 32) (_ BitVec 64))) (size!38845 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79387)

(assert (=> b!1230845 (= res!819416 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38845 a!3806)) (bvslt from!3184 (size!38845 a!3806))))))

(declare-fun b!1230846 () Bool)

(declare-fun res!819412 () Bool)

(assert (=> b!1230846 (=> (not res!819412) (not e!698311))))

(declare-datatypes ((List!27259 0))(
  ( (Nil!27256) (Cons!27255 (h!28464 (_ BitVec 64)) (t!40729 List!27259)) )
))
(declare-fun acc!823 () List!27259)

(declare-fun contains!7174 (List!27259 (_ BitVec 64)) Bool)

(assert (=> b!1230846 (= res!819412 (not (contains!7174 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230847 () Bool)

(declare-fun res!819413 () Bool)

(assert (=> b!1230847 (=> (not res!819413) (not e!698311))))

(assert (=> b!1230847 (= res!819413 (not (contains!7174 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230848 () Bool)

(assert (=> b!1230848 (= e!698311 (not true))))

(declare-fun arrayNoDuplicates!0 (array!79387 (_ BitVec 32) List!27259) Bool)

(assert (=> b!1230848 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27255 (select (arr!38308 a!3806) from!3184) acc!823))))

(declare-fun b!1230849 () Bool)

(declare-fun res!819411 () Bool)

(assert (=> b!1230849 (=> (not res!819411) (not e!698311))))

(assert (=> b!1230849 (= res!819411 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1230850 () Bool)

(declare-fun res!819417 () Bool)

(assert (=> b!1230850 (=> (not res!819417) (not e!698311))))

(declare-fun arrayContainsKey!0 (array!79387 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230850 (= res!819417 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1230851 () Bool)

(declare-fun res!819419 () Bool)

(assert (=> b!1230851 (=> (not res!819419) (not e!698311))))

(declare-fun noDuplicate!1781 (List!27259) Bool)

(assert (=> b!1230851 (= res!819419 (noDuplicate!1781 acc!823))))

(declare-fun b!1230852 () Bool)

(declare-fun res!819418 () Bool)

(assert (=> b!1230852 (=> (not res!819418) (not e!698311))))

(assert (=> b!1230852 (= res!819418 (validKeyInArray!0 (select (arr!38308 a!3806) from!3184)))))

(declare-fun res!819414 () Bool)

(assert (=> start!102306 (=> (not res!819414) (not e!698311))))

(assert (=> start!102306 (= res!819414 (bvslt (size!38845 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102306 e!698311))

(declare-fun array_inv!29084 (array!79387) Bool)

(assert (=> start!102306 (array_inv!29084 a!3806)))

(assert (=> start!102306 true))

(assert (= (and start!102306 res!819414) b!1230844))

(assert (= (and b!1230844 res!819415) b!1230845))

(assert (= (and b!1230845 res!819416) b!1230851))

(assert (= (and b!1230851 res!819419) b!1230847))

(assert (= (and b!1230847 res!819413) b!1230846))

(assert (= (and b!1230846 res!819412) b!1230850))

(assert (= (and b!1230850 res!819417) b!1230849))

(assert (= (and b!1230849 res!819411) b!1230852))

(assert (= (and b!1230852 res!819418) b!1230848))

(declare-fun m!1135201 () Bool)

(assert (=> b!1230844 m!1135201))

(declare-fun m!1135203 () Bool)

(assert (=> b!1230849 m!1135203))

(declare-fun m!1135205 () Bool)

(assert (=> b!1230850 m!1135205))

(declare-fun m!1135207 () Bool)

(assert (=> b!1230846 m!1135207))

(declare-fun m!1135209 () Bool)

(assert (=> b!1230847 m!1135209))

(declare-fun m!1135211 () Bool)

(assert (=> b!1230852 m!1135211))

(assert (=> b!1230852 m!1135211))

(declare-fun m!1135213 () Bool)

(assert (=> b!1230852 m!1135213))

(declare-fun m!1135215 () Bool)

(assert (=> start!102306 m!1135215))

(declare-fun m!1135217 () Bool)

(assert (=> b!1230851 m!1135217))

(assert (=> b!1230848 m!1135211))

(declare-fun m!1135219 () Bool)

(assert (=> b!1230848 m!1135219))

(check-sat (not b!1230846) (not start!102306) (not b!1230849) (not b!1230848) (not b!1230851) (not b!1230844) (not b!1230850) (not b!1230852) (not b!1230847))
(check-sat)
