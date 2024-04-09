; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102300 () Bool)

(assert start!102300)

(declare-fun b!1230763 () Bool)

(declare-fun res!819333 () Bool)

(declare-fun e!698293 () Bool)

(assert (=> b!1230763 (=> (not res!819333) (not e!698293))))

(declare-datatypes ((array!79381 0))(
  ( (array!79382 (arr!38305 (Array (_ BitVec 32) (_ BitVec 64))) (size!38842 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79381)

(declare-fun from!3184 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1230763 (= res!819333 (validKeyInArray!0 (select (arr!38305 a!3806) from!3184)))))

(declare-fun b!1230764 () Bool)

(declare-fun res!819334 () Bool)

(assert (=> b!1230764 (=> (not res!819334) (not e!698293))))

(declare-datatypes ((List!27256 0))(
  ( (Nil!27253) (Cons!27252 (h!28461 (_ BitVec 64)) (t!40726 List!27256)) )
))
(declare-fun acc!823 () List!27256)

(declare-fun contains!7171 (List!27256 (_ BitVec 64)) Bool)

(assert (=> b!1230764 (= res!819334 (not (contains!7171 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230765 () Bool)

(declare-fun res!819331 () Bool)

(assert (=> b!1230765 (=> (not res!819331) (not e!698293))))

(declare-fun noDuplicate!1778 (List!27256) Bool)

(assert (=> b!1230765 (= res!819331 (noDuplicate!1778 acc!823))))

(declare-fun b!1230766 () Bool)

(declare-fun res!819335 () Bool)

(assert (=> b!1230766 (=> (not res!819335) (not e!698293))))

(assert (=> b!1230766 (= res!819335 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38842 a!3806)) (bvslt from!3184 (size!38842 a!3806))))))

(declare-fun b!1230768 () Bool)

(declare-fun res!819338 () Bool)

(assert (=> b!1230768 (=> (not res!819338) (not e!698293))))

(declare-fun k0!2913 () (_ BitVec 64))

(assert (=> b!1230768 (= res!819338 (validKeyInArray!0 k0!2913))))

(declare-fun b!1230769 () Bool)

(declare-fun res!819330 () Bool)

(assert (=> b!1230769 (=> (not res!819330) (not e!698293))))

(assert (=> b!1230769 (= res!819330 (not (contains!7171 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1230770 () Bool)

(assert (=> b!1230770 (= e!698293 (not (bvsle from!3184 (size!38842 a!3806))))))

(declare-fun arrayNoDuplicates!0 (array!79381 (_ BitVec 32) List!27256) Bool)

(assert (=> b!1230770 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27252 (select (arr!38305 a!3806) from!3184) acc!823))))

(declare-fun b!1230771 () Bool)

(declare-fun res!819337 () Bool)

(assert (=> b!1230771 (=> (not res!819337) (not e!698293))))

(declare-fun arrayContainsKey!0 (array!79381 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1230771 (= res!819337 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun res!819332 () Bool)

(assert (=> start!102300 (=> (not res!819332) (not e!698293))))

(assert (=> start!102300 (= res!819332 (bvslt (size!38842 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102300 e!698293))

(declare-fun array_inv!29081 (array!79381) Bool)

(assert (=> start!102300 (array_inv!29081 a!3806)))

(assert (=> start!102300 true))

(declare-fun b!1230767 () Bool)

(declare-fun res!819336 () Bool)

(assert (=> b!1230767 (=> (not res!819336) (not e!698293))))

(assert (=> b!1230767 (= res!819336 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(assert (= (and start!102300 res!819332) b!1230768))

(assert (= (and b!1230768 res!819338) b!1230766))

(assert (= (and b!1230766 res!819335) b!1230765))

(assert (= (and b!1230765 res!819331) b!1230769))

(assert (= (and b!1230769 res!819330) b!1230764))

(assert (= (and b!1230764 res!819334) b!1230771))

(assert (= (and b!1230771 res!819337) b!1230767))

(assert (= (and b!1230767 res!819336) b!1230763))

(assert (= (and b!1230763 res!819333) b!1230770))

(declare-fun m!1135141 () Bool)

(assert (=> b!1230769 m!1135141))

(declare-fun m!1135143 () Bool)

(assert (=> start!102300 m!1135143))

(declare-fun m!1135145 () Bool)

(assert (=> b!1230770 m!1135145))

(declare-fun m!1135147 () Bool)

(assert (=> b!1230770 m!1135147))

(declare-fun m!1135149 () Bool)

(assert (=> b!1230767 m!1135149))

(assert (=> b!1230763 m!1135145))

(assert (=> b!1230763 m!1135145))

(declare-fun m!1135151 () Bool)

(assert (=> b!1230763 m!1135151))

(declare-fun m!1135153 () Bool)

(assert (=> b!1230764 m!1135153))

(declare-fun m!1135155 () Bool)

(assert (=> b!1230771 m!1135155))

(declare-fun m!1135157 () Bool)

(assert (=> b!1230765 m!1135157))

(declare-fun m!1135159 () Bool)

(assert (=> b!1230768 m!1135159))

(check-sat (not b!1230767) (not b!1230771) (not b!1230765) (not start!102300) (not b!1230769) (not b!1230770) (not b!1230764) (not b!1230763) (not b!1230768))
(check-sat)
