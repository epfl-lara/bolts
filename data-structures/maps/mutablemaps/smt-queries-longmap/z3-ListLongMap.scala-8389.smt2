; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!102048 () Bool)

(assert start!102048)

(declare-fun b!1228285 () Bool)

(declare-fun e!697192 () Bool)

(assert (=> b!1228285 (= e!697192 (not true))))

(declare-datatypes ((array!79264 0))(
  ( (array!79265 (arr!38251 (Array (_ BitVec 32) (_ BitVec 64))) (size!38788 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79264)

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((List!27202 0))(
  ( (Nil!27199) (Cons!27198 (h!28407 (_ BitVec 64)) (t!40672 List!27202)) )
))
(declare-fun arrayNoDuplicates!0 (array!79264 (_ BitVec 32) List!27202) Bool)

(assert (=> b!1228285 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27199)))

(declare-fun acc!823 () List!27202)

(declare-datatypes ((Unit!40642 0))(
  ( (Unit!40643) )
))
(declare-fun lt!558929 () Unit!40642)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79264 List!27202 List!27202 (_ BitVec 32)) Unit!40642)

(assert (=> b!1228285 (= lt!558929 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27199 from!3184))))

(assert (=> b!1228285 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27198 (select (arr!38251 a!3806) from!3184) acc!823))))

(declare-fun b!1228286 () Bool)

(declare-fun res!817015 () Bool)

(assert (=> b!1228286 (=> (not res!817015) (not e!697192))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1228286 (= res!817015 (validKeyInArray!0 (select (arr!38251 a!3806) from!3184)))))

(declare-fun b!1228287 () Bool)

(declare-fun res!817014 () Bool)

(assert (=> b!1228287 (=> (not res!817014) (not e!697192))))

(declare-fun contains!7117 (List!27202 (_ BitVec 64)) Bool)

(assert (=> b!1228287 (= res!817014 (not (contains!7117 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228288 () Bool)

(declare-fun res!817016 () Bool)

(assert (=> b!1228288 (=> (not res!817016) (not e!697192))))

(assert (=> b!1228288 (= res!817016 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun res!817021 () Bool)

(assert (=> start!102048 (=> (not res!817021) (not e!697192))))

(assert (=> start!102048 (= res!817021 (bvslt (size!38788 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102048 e!697192))

(declare-fun array_inv!29027 (array!79264) Bool)

(assert (=> start!102048 (array_inv!29027 a!3806)))

(assert (=> start!102048 true))

(declare-fun b!1228289 () Bool)

(declare-fun res!817020 () Bool)

(assert (=> b!1228289 (=> (not res!817020) (not e!697192))))

(declare-fun k0!2913 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!79264 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1228289 (= res!817020 (arrayContainsKey!0 a!3806 k0!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1228290 () Bool)

(declare-fun res!817019 () Bool)

(assert (=> b!1228290 (=> (not res!817019) (not e!697192))))

(declare-fun noDuplicate!1724 (List!27202) Bool)

(assert (=> b!1228290 (= res!817019 (noDuplicate!1724 acc!823))))

(declare-fun b!1228291 () Bool)

(declare-fun res!817017 () Bool)

(assert (=> b!1228291 (=> (not res!817017) (not e!697192))))

(assert (=> b!1228291 (= res!817017 (validKeyInArray!0 k0!2913))))

(declare-fun b!1228292 () Bool)

(declare-fun res!817018 () Bool)

(assert (=> b!1228292 (=> (not res!817018) (not e!697192))))

(assert (=> b!1228292 (= res!817018 (not (contains!7117 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1228293 () Bool)

(declare-fun res!817022 () Bool)

(assert (=> b!1228293 (=> (not res!817022) (not e!697192))))

(assert (=> b!1228293 (= res!817022 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38788 a!3806)) (bvslt from!3184 (size!38788 a!3806))))))

(assert (= (and start!102048 res!817021) b!1228291))

(assert (= (and b!1228291 res!817017) b!1228293))

(assert (= (and b!1228293 res!817022) b!1228290))

(assert (= (and b!1228290 res!817019) b!1228287))

(assert (= (and b!1228287 res!817014) b!1228292))

(assert (= (and b!1228292 res!817018) b!1228289))

(assert (= (and b!1228289 res!817020) b!1228288))

(assert (= (and b!1228288 res!817016) b!1228286))

(assert (= (and b!1228286 res!817015) b!1228285))

(declare-fun m!1132877 () Bool)

(assert (=> b!1228285 m!1132877))

(declare-fun m!1132879 () Bool)

(assert (=> b!1228285 m!1132879))

(declare-fun m!1132881 () Bool)

(assert (=> b!1228285 m!1132881))

(declare-fun m!1132883 () Bool)

(assert (=> b!1228285 m!1132883))

(declare-fun m!1132885 () Bool)

(assert (=> b!1228289 m!1132885))

(declare-fun m!1132887 () Bool)

(assert (=> b!1228290 m!1132887))

(declare-fun m!1132889 () Bool)

(assert (=> b!1228291 m!1132889))

(assert (=> b!1228286 m!1132881))

(assert (=> b!1228286 m!1132881))

(declare-fun m!1132891 () Bool)

(assert (=> b!1228286 m!1132891))

(declare-fun m!1132893 () Bool)

(assert (=> b!1228292 m!1132893))

(declare-fun m!1132895 () Bool)

(assert (=> b!1228288 m!1132895))

(declare-fun m!1132897 () Bool)

(assert (=> b!1228287 m!1132897))

(declare-fun m!1132899 () Bool)

(assert (=> start!102048 m!1132899))

(check-sat (not b!1228289) (not b!1228292) (not b!1228288) (not b!1228285) (not b!1228290) (not b!1228287) (not start!102048) (not b!1228291) (not b!1228286))
