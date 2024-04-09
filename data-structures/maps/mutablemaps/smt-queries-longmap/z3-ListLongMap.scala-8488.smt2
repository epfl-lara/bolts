; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103478 () Bool)

(assert start!103478)

(declare-fun res!827603 () Bool)

(declare-fun e!702952 () Bool)

(assert (=> start!103478 (=> (not res!827603) (not e!702952))))

(declare-datatypes ((array!79909 0))(
  ( (array!79910 (arr!38548 (Array (_ BitVec 32) (_ BitVec 64))) (size!39085 (_ BitVec 32))) )
))
(declare-fun a!3575 () array!79909)

(declare-fun from!2953 () (_ BitVec 32))

(declare-fun newFrom!281 () (_ BitVec 32))

(assert (=> start!103478 (= res!827603 (and (bvsge from!2953 #b00000000000000000000000000000000) (bvslt from!2953 (size!39085 a!3575)) (bvsge newFrom!281 #b00000000000000000000000000000000) (bvsle newFrom!281 from!2953) (bvslt (size!39085 a!3575) #b01111111111111111111111111111111)))))

(assert (=> start!103478 e!702952))

(assert (=> start!103478 true))

(declare-fun array_inv!29324 (array!79909) Bool)

(assert (=> start!103478 (array_inv!29324 a!3575)))

(declare-fun b!1240192 () Bool)

(declare-fun res!827604 () Bool)

(assert (=> b!1240192 (=> (not res!827604) (not e!702952))))

(declare-fun k0!2808 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79909 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1240192 (= res!827604 (arrayContainsKey!0 a!3575 k0!2808 from!2953))))

(declare-fun b!1240193 () Bool)

(declare-fun res!827605 () Bool)

(assert (=> b!1240193 (=> (not res!827605) (not e!702952))))

(assert (=> b!1240193 (= res!827605 (and (bvsgt from!2953 newFrom!281) (bvsge (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!2953 #b00000000000000000000000000000001) (size!39085 a!3575))))))

(declare-fun b!1240194 () Bool)

(assert (=> b!1240194 (= e!702952 (not (arrayContainsKey!0 a!3575 k0!2808 (bvsub from!2953 #b00000000000000000000000000000001))))))

(assert (= (and start!103478 res!827603) b!1240192))

(assert (= (and b!1240192 res!827604) b!1240193))

(assert (= (and b!1240193 res!827605) b!1240194))

(declare-fun m!1143557 () Bool)

(assert (=> start!103478 m!1143557))

(declare-fun m!1143559 () Bool)

(assert (=> b!1240192 m!1143559))

(declare-fun m!1143561 () Bool)

(assert (=> b!1240194 m!1143561))

(check-sat (not b!1240194) (not start!103478) (not b!1240192))
(check-sat)
(get-model)

(declare-fun d!136163 () Bool)

(declare-fun res!827619 () Bool)

(declare-fun e!702964 () Bool)

(assert (=> d!136163 (=> res!827619 e!702964)))

(assert (=> d!136163 (= res!827619 (= (select (arr!38548 a!3575) (bvsub from!2953 #b00000000000000000000000000000001)) k0!2808))))

(assert (=> d!136163 (= (arrayContainsKey!0 a!3575 k0!2808 (bvsub from!2953 #b00000000000000000000000000000001)) e!702964)))

(declare-fun b!1240208 () Bool)

(declare-fun e!702965 () Bool)

(assert (=> b!1240208 (= e!702964 e!702965)))

(declare-fun res!827620 () Bool)

(assert (=> b!1240208 (=> (not res!827620) (not e!702965))))

(assert (=> b!1240208 (= res!827620 (bvslt (bvadd (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!39085 a!3575)))))

(declare-fun b!1240209 () Bool)

(assert (=> b!1240209 (= e!702965 (arrayContainsKey!0 a!3575 k0!2808 (bvadd (bvsub from!2953 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (= (and d!136163 (not res!827619)) b!1240208))

(assert (= (and b!1240208 res!827620) b!1240209))

(declare-fun m!1143569 () Bool)

(assert (=> d!136163 m!1143569))

(declare-fun m!1143571 () Bool)

(assert (=> b!1240209 m!1143571))

(assert (=> b!1240194 d!136163))

(declare-fun d!136165 () Bool)

(assert (=> d!136165 (= (array_inv!29324 a!3575) (bvsge (size!39085 a!3575) #b00000000000000000000000000000000))))

(assert (=> start!103478 d!136165))

(declare-fun d!136167 () Bool)

(declare-fun res!827621 () Bool)

(declare-fun e!702966 () Bool)

(assert (=> d!136167 (=> res!827621 e!702966)))

(assert (=> d!136167 (= res!827621 (= (select (arr!38548 a!3575) from!2953) k0!2808))))

(assert (=> d!136167 (= (arrayContainsKey!0 a!3575 k0!2808 from!2953) e!702966)))

(declare-fun b!1240210 () Bool)

(declare-fun e!702967 () Bool)

(assert (=> b!1240210 (= e!702966 e!702967)))

(declare-fun res!827622 () Bool)

(assert (=> b!1240210 (=> (not res!827622) (not e!702967))))

(assert (=> b!1240210 (= res!827622 (bvslt (bvadd from!2953 #b00000000000000000000000000000001) (size!39085 a!3575)))))

(declare-fun b!1240211 () Bool)

(assert (=> b!1240211 (= e!702967 (arrayContainsKey!0 a!3575 k0!2808 (bvadd from!2953 #b00000000000000000000000000000001)))))

(assert (= (and d!136167 (not res!827621)) b!1240210))

(assert (= (and b!1240210 res!827622) b!1240211))

(declare-fun m!1143573 () Bool)

(assert (=> d!136167 m!1143573))

(declare-fun m!1143575 () Bool)

(assert (=> b!1240211 m!1143575))

(assert (=> b!1240192 d!136167))

(check-sat (not b!1240211) (not b!1240209))
(check-sat)
