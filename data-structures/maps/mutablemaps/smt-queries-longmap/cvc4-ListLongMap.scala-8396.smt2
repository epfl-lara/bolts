; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102200 () Bool)

(assert start!102200)

(declare-fun b!1229693 () Bool)

(declare-fun res!818286 () Bool)

(declare-fun e!697927 () Bool)

(assert (=> b!1229693 (=> (not res!818286) (not e!697927))))

(declare-datatypes ((List!27224 0))(
  ( (Nil!27221) (Cons!27220 (h!28429 (_ BitVec 64)) (t!40694 List!27224)) )
))
(declare-fun acc!823 () List!27224)

(declare-fun contains!7139 (List!27224 (_ BitVec 64)) Bool)

(assert (=> b!1229693 (= res!818286 (not (contains!7139 acc!823 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229694 () Bool)

(declare-fun res!818292 () Bool)

(assert (=> b!1229694 (=> (not res!818292) (not e!697927))))

(assert (=> b!1229694 (= res!818292 (not (contains!7139 acc!823 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1229696 () Bool)

(declare-fun e!697930 () Bool)

(assert (=> b!1229696 (= e!697930 true)))

(declare-fun lt!559188 () List!27224)

(declare-fun from!3184 () (_ BitVec 32))

(declare-datatypes ((array!79314 0))(
  ( (array!79315 (arr!38273 (Array (_ BitVec 32) (_ BitVec 64))) (size!38810 (_ BitVec 32))) )
))
(declare-fun a!3806 () array!79314)

(declare-fun lt!559189 () Bool)

(assert (=> b!1229696 (= lt!559189 (contains!7139 lt!559188 (select (arr!38273 a!3806) from!3184)))))

(declare-fun b!1229697 () Bool)

(declare-fun res!818297 () Bool)

(assert (=> b!1229697 (=> res!818297 e!697930)))

(assert (=> b!1229697 (= res!818297 (contains!7139 lt!559188 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229698 () Bool)

(declare-fun e!697928 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79314 (_ BitVec 32) List!27224) Bool)

(assert (=> b!1229698 (= e!697928 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27220 (select (arr!38273 a!3806) from!3184) Nil!27221)))))

(declare-fun b!1229699 () Bool)

(declare-fun res!818293 () Bool)

(assert (=> b!1229699 (=> res!818293 e!697930)))

(declare-fun noDuplicate!1746 (List!27224) Bool)

(assert (=> b!1229699 (= res!818293 (not (noDuplicate!1746 lt!559188)))))

(declare-fun b!1229700 () Bool)

(declare-fun res!818287 () Bool)

(assert (=> b!1229700 (=> res!818287 e!697930)))

(assert (=> b!1229700 (= res!818287 (contains!7139 lt!559188 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1229701 () Bool)

(declare-fun res!818295 () Bool)

(assert (=> b!1229701 (=> (not res!818295) (not e!697927))))

(declare-fun k!2913 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1229701 (= res!818295 (validKeyInArray!0 k!2913))))

(declare-fun b!1229702 () Bool)

(declare-fun res!818296 () Bool)

(assert (=> b!1229702 (=> (not res!818296) (not e!697927))))

(assert (=> b!1229702 (= res!818296 (arrayNoDuplicates!0 a!3806 from!3184 acc!823))))

(declare-fun b!1229703 () Bool)

(assert (=> b!1229703 (= e!697927 (not e!697930))))

(declare-fun res!818290 () Bool)

(assert (=> b!1229703 (=> res!818290 e!697930)))

(assert (=> b!1229703 (= res!818290 (bvslt (bvadd #b00000000000000000000000000000001 from!3184) #b00000000000000000000000000000000))))

(assert (=> b!1229703 (= lt!559188 (Cons!27220 (select (arr!38273 a!3806) from!3184) Nil!27221))))

(assert (=> b!1229703 e!697928))

(declare-fun res!818285 () Bool)

(assert (=> b!1229703 (=> (not res!818285) (not e!697928))))

(assert (=> b!1229703 (= res!818285 (arrayNoDuplicates!0 a!3806 from!3184 Nil!27221))))

(declare-datatypes ((Unit!40686 0))(
  ( (Unit!40687) )
))
(declare-fun lt!559190 () Unit!40686)

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!79314 List!27224 List!27224 (_ BitVec 32)) Unit!40686)

(assert (=> b!1229703 (= lt!559190 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3806 acc!823 Nil!27221 from!3184))))

(assert (=> b!1229703 (arrayNoDuplicates!0 a!3806 (bvadd #b00000000000000000000000000000001 from!3184) (Cons!27220 (select (arr!38273 a!3806) from!3184) acc!823))))

(declare-fun b!1229704 () Bool)

(declare-fun res!818294 () Bool)

(assert (=> b!1229704 (=> (not res!818294) (not e!697927))))

(assert (=> b!1229704 (= res!818294 (and (bvsge from!3184 #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!3184) (size!38810 a!3806)) (bvslt from!3184 (size!38810 a!3806))))))

(declare-fun b!1229705 () Bool)

(declare-fun res!818288 () Bool)

(assert (=> b!1229705 (=> (not res!818288) (not e!697927))))

(declare-fun arrayContainsKey!0 (array!79314 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1229705 (= res!818288 (arrayContainsKey!0 a!3806 k!2913 (bvadd #b00000000000000000000000000000001 from!3184)))))

(declare-fun b!1229706 () Bool)

(declare-fun res!818289 () Bool)

(assert (=> b!1229706 (=> (not res!818289) (not e!697927))))

(assert (=> b!1229706 (= res!818289 (validKeyInArray!0 (select (arr!38273 a!3806) from!3184)))))

(declare-fun res!818284 () Bool)

(assert (=> start!102200 (=> (not res!818284) (not e!697927))))

(assert (=> start!102200 (= res!818284 (bvslt (size!38810 a!3806) #b01111111111111111111111111111111))))

(assert (=> start!102200 e!697927))

(declare-fun array_inv!29049 (array!79314) Bool)

(assert (=> start!102200 (array_inv!29049 a!3806)))

(assert (=> start!102200 true))

(declare-fun b!1229695 () Bool)

(declare-fun res!818291 () Bool)

(assert (=> b!1229695 (=> (not res!818291) (not e!697927))))

(assert (=> b!1229695 (= res!818291 (noDuplicate!1746 acc!823))))

(assert (= (and start!102200 res!818284) b!1229701))

(assert (= (and b!1229701 res!818295) b!1229704))

(assert (= (and b!1229704 res!818294) b!1229695))

(assert (= (and b!1229695 res!818291) b!1229693))

(assert (= (and b!1229693 res!818286) b!1229694))

(assert (= (and b!1229694 res!818292) b!1229705))

(assert (= (and b!1229705 res!818288) b!1229702))

(assert (= (and b!1229702 res!818296) b!1229706))

(assert (= (and b!1229706 res!818289) b!1229703))

(assert (= (and b!1229703 res!818285) b!1229698))

(assert (= (and b!1229703 (not res!818290)) b!1229699))

(assert (= (and b!1229699 (not res!818293)) b!1229700))

(assert (= (and b!1229700 (not res!818287)) b!1229697))

(assert (= (and b!1229697 (not res!818297)) b!1229696))

(declare-fun m!1134265 () Bool)

(assert (=> b!1229695 m!1134265))

(declare-fun m!1134267 () Bool)

(assert (=> b!1229693 m!1134267))

(declare-fun m!1134269 () Bool)

(assert (=> b!1229694 m!1134269))

(declare-fun m!1134271 () Bool)

(assert (=> b!1229696 m!1134271))

(assert (=> b!1229696 m!1134271))

(declare-fun m!1134273 () Bool)

(assert (=> b!1229696 m!1134273))

(declare-fun m!1134275 () Bool)

(assert (=> b!1229697 m!1134275))

(declare-fun m!1134277 () Bool)

(assert (=> b!1229701 m!1134277))

(declare-fun m!1134279 () Bool)

(assert (=> b!1229700 m!1134279))

(declare-fun m!1134281 () Bool)

(assert (=> b!1229705 m!1134281))

(assert (=> b!1229698 m!1134271))

(declare-fun m!1134283 () Bool)

(assert (=> b!1229698 m!1134283))

(declare-fun m!1134285 () Bool)

(assert (=> start!102200 m!1134285))

(assert (=> b!1229703 m!1134271))

(declare-fun m!1134287 () Bool)

(assert (=> b!1229703 m!1134287))

(declare-fun m!1134289 () Bool)

(assert (=> b!1229703 m!1134289))

(declare-fun m!1134291 () Bool)

(assert (=> b!1229703 m!1134291))

(assert (=> b!1229706 m!1134271))

(assert (=> b!1229706 m!1134271))

(declare-fun m!1134293 () Bool)

(assert (=> b!1229706 m!1134293))

(declare-fun m!1134295 () Bool)

(assert (=> b!1229699 m!1134295))

(declare-fun m!1134297 () Bool)

(assert (=> b!1229702 m!1134297))

(push 1)

(assert (not b!1229700))

(assert (not b!1229699))

(assert (not start!102200))

(assert (not b!1229705))

(assert (not b!1229693))

(assert (not b!1229697))

(assert (not b!1229706))

(assert (not b!1229702))

(assert (not b!1229701))

(assert (not b!1229703))

(assert (not b!1229695))

(assert (not b!1229694))

(assert (not b!1229698))

(assert (not b!1229696))

(check-sat)

(pop 1)

