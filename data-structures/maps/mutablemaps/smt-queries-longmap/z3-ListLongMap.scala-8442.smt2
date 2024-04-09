; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102826 () Bool)

(assert start!102826)

(declare-fun b!1235221 () Bool)

(declare-fun res!823498 () Bool)

(declare-fun e!700398 () Bool)

(assert (=> b!1235221 (=> res!823498 e!700398)))

(declare-datatypes ((List!27361 0))(
  ( (Nil!27358) (Cons!27357 (h!28566 (_ BitVec 64)) (t!40831 List!27361)) )
))
(declare-fun lt!560151 () List!27361)

(declare-fun noDuplicate!1883 (List!27361) Bool)

(assert (=> b!1235221 (= res!823498 (not (noDuplicate!1883 lt!560151)))))

(declare-fun b!1235222 () Bool)

(declare-fun res!823505 () Bool)

(declare-fun e!700399 () Bool)

(assert (=> b!1235222 (=> (not res!823505) (not e!700399))))

(declare-fun acc!846 () List!27361)

(assert (=> b!1235222 (= res!823505 (noDuplicate!1883 acc!846))))

(declare-fun b!1235223 () Bool)

(declare-fun res!823503 () Bool)

(assert (=> b!1235223 (=> (not res!823503) (not e!700399))))

(declare-datatypes ((array!79612 0))(
  ( (array!79613 (arr!38410 (Array (_ BitVec 32) (_ BitVec 64))) (size!38947 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79612)

(declare-fun from!3213 () (_ BitVec 32))

(declare-fun arrayNoDuplicates!0 (array!79612 (_ BitVec 32) List!27361) Bool)

(assert (=> b!1235223 (= res!823503 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235224 () Bool)

(declare-fun res!823494 () Bool)

(assert (=> b!1235224 (=> (not res!823494) (not e!700399))))

(declare-fun contains!7276 (List!27361 (_ BitVec 64)) Bool)

(assert (=> b!1235224 (= res!823494 (not (contains!7276 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235225 () Bool)

(declare-fun res!823496 () Bool)

(assert (=> b!1235225 (=> (not res!823496) (not e!700399))))

(assert (=> b!1235225 (= res!823496 (not (= from!3213 (bvsub (size!38947 a!3835) #b00000000000000000000000000000001))))))

(declare-fun res!823502 () Bool)

(assert (=> start!102826 (=> (not res!823502) (not e!700399))))

(assert (=> start!102826 (= res!823502 (and (bvslt (size!38947 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38947 a!3835))))))

(assert (=> start!102826 e!700399))

(declare-fun array_inv!29186 (array!79612) Bool)

(assert (=> start!102826 (array_inv!29186 a!3835)))

(assert (=> start!102826 true))

(declare-fun b!1235226 () Bool)

(declare-fun res!823500 () Bool)

(assert (=> b!1235226 (=> (not res!823500) (not e!700399))))

(assert (=> b!1235226 (= res!823500 (not (contains!7276 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235227 () Bool)

(declare-fun res!823504 () Bool)

(assert (=> b!1235227 (=> res!823504 e!700398)))

(assert (=> b!1235227 (= res!823504 (contains!7276 lt!560151 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1235228 () Bool)

(declare-fun res!823497 () Bool)

(assert (=> b!1235228 (=> res!823497 e!700398)))

(assert (=> b!1235228 (= res!823497 (contains!7276 lt!560151 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1235229 () Bool)

(assert (=> b!1235229 (= e!700399 (not e!700398))))

(declare-fun res!823501 () Bool)

(assert (=> b!1235229 (=> res!823501 e!700398)))

(assert (=> b!1235229 (= res!823501 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!531 (List!27361 List!27361) Bool)

(assert (=> b!1235229 (subseq!531 acc!846 lt!560151)))

(declare-datatypes ((Unit!40864 0))(
  ( (Unit!40865) )
))
(declare-fun lt!560148 () Unit!40864)

(declare-fun subseqTail!24 (List!27361 List!27361) Unit!40864)

(assert (=> b!1235229 (= lt!560148 (subseqTail!24 lt!560151 lt!560151))))

(assert (=> b!1235229 (subseq!531 lt!560151 lt!560151)))

(declare-fun lt!560150 () Unit!40864)

(declare-fun lemmaListSubSeqRefl!0 (List!27361) Unit!40864)

(assert (=> b!1235229 (= lt!560150 (lemmaListSubSeqRefl!0 lt!560151))))

(assert (=> b!1235229 (= lt!560151 (Cons!27357 (select (arr!38410 a!3835) from!3213) acc!846))))

(declare-fun b!1235230 () Bool)

(declare-fun res!823495 () Bool)

(assert (=> b!1235230 (=> (not res!823495) (not e!700399))))

(declare-fun k0!2925 () (_ BitVec 64))

(assert (=> b!1235230 (= res!823495 (contains!7276 acc!846 k0!2925))))

(declare-fun b!1235231 () Bool)

(declare-fun res!823499 () Bool)

(assert (=> b!1235231 (=> (not res!823499) (not e!700399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235231 (= res!823499 (validKeyInArray!0 (select (arr!38410 a!3835) from!3213)))))

(declare-fun b!1235232 () Bool)

(assert (=> b!1235232 (= e!700398 true)))

(declare-fun lt!560149 () Bool)

(assert (=> b!1235232 (= lt!560149 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!560151))))

(declare-fun lt!560152 () Unit!40864)

(declare-fun noDuplicateSubseq!78 (List!27361 List!27361) Unit!40864)

(assert (=> b!1235232 (= lt!560152 (noDuplicateSubseq!78 acc!846 lt!560151))))

(assert (= (and start!102826 res!823502) b!1235222))

(assert (= (and b!1235222 res!823505) b!1235226))

(assert (= (and b!1235226 res!823500) b!1235224))

(assert (= (and b!1235224 res!823494) b!1235223))

(assert (= (and b!1235223 res!823503) b!1235230))

(assert (= (and b!1235230 res!823495) b!1235225))

(assert (= (and b!1235225 res!823496) b!1235231))

(assert (= (and b!1235231 res!823499) b!1235229))

(assert (= (and b!1235229 (not res!823501)) b!1235221))

(assert (= (and b!1235221 (not res!823498)) b!1235227))

(assert (= (and b!1235227 (not res!823504)) b!1235228))

(assert (= (and b!1235228 (not res!823497)) b!1235232))

(declare-fun m!1139163 () Bool)

(assert (=> b!1235221 m!1139163))

(declare-fun m!1139165 () Bool)

(assert (=> b!1235230 m!1139165))

(declare-fun m!1139167 () Bool)

(assert (=> b!1235229 m!1139167))

(declare-fun m!1139169 () Bool)

(assert (=> b!1235229 m!1139169))

(declare-fun m!1139171 () Bool)

(assert (=> b!1235229 m!1139171))

(declare-fun m!1139173 () Bool)

(assert (=> b!1235229 m!1139173))

(declare-fun m!1139175 () Bool)

(assert (=> b!1235229 m!1139175))

(declare-fun m!1139177 () Bool)

(assert (=> b!1235222 m!1139177))

(declare-fun m!1139179 () Bool)

(assert (=> start!102826 m!1139179))

(declare-fun m!1139181 () Bool)

(assert (=> b!1235223 m!1139181))

(declare-fun m!1139183 () Bool)

(assert (=> b!1235226 m!1139183))

(declare-fun m!1139185 () Bool)

(assert (=> b!1235232 m!1139185))

(declare-fun m!1139187 () Bool)

(assert (=> b!1235232 m!1139187))

(declare-fun m!1139189 () Bool)

(assert (=> b!1235224 m!1139189))

(declare-fun m!1139191 () Bool)

(assert (=> b!1235228 m!1139191))

(assert (=> b!1235231 m!1139175))

(assert (=> b!1235231 m!1139175))

(declare-fun m!1139193 () Bool)

(assert (=> b!1235231 m!1139193))

(declare-fun m!1139195 () Bool)

(assert (=> b!1235227 m!1139195))

(check-sat (not b!1235223) (not b!1235226) (not start!102826) (not b!1235232) (not b!1235231) (not b!1235230) (not b!1235224) (not b!1235221) (not b!1235222) (not b!1235227) (not b!1235229) (not b!1235228))
(check-sat)
