; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102828 () Bool)

(assert start!102828)

(declare-fun b!1235257 () Bool)

(declare-fun res!823540 () Bool)

(declare-fun e!700408 () Bool)

(assert (=> b!1235257 (=> (not res!823540) (not e!700408))))

(declare-datatypes ((List!27362 0))(
  ( (Nil!27359) (Cons!27358 (h!28567 (_ BitVec 64)) (t!40832 List!27362)) )
))
(declare-fun acc!846 () List!27362)

(declare-fun contains!7277 (List!27362 (_ BitVec 64)) Bool)

(assert (=> b!1235257 (= res!823540 (not (contains!7277 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!823530 () Bool)

(assert (=> start!102828 (=> (not res!823530) (not e!700408))))

(declare-datatypes ((array!79614 0))(
  ( (array!79615 (arr!38411 (Array (_ BitVec 32) (_ BitVec 64))) (size!38948 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79614)

(declare-fun from!3213 () (_ BitVec 32))

(assert (=> start!102828 (= res!823530 (and (bvslt (size!38948 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38948 a!3835))))))

(assert (=> start!102828 e!700408))

(declare-fun array_inv!29187 (array!79614) Bool)

(assert (=> start!102828 (array_inv!29187 a!3835)))

(assert (=> start!102828 true))

(declare-fun b!1235258 () Bool)

(declare-fun e!700406 () Bool)

(assert (=> b!1235258 (= e!700406 true)))

(declare-fun lt!560163 () List!27362)

(declare-fun lt!560167 () Bool)

(declare-fun arrayNoDuplicates!0 (array!79614 (_ BitVec 32) List!27362) Bool)

(assert (=> b!1235258 (= lt!560167 (arrayNoDuplicates!0 a!3835 (bvadd #b00000000000000000000000000000001 from!3213) lt!560163))))

(declare-datatypes ((Unit!40866 0))(
  ( (Unit!40867) )
))
(declare-fun lt!560165 () Unit!40866)

(declare-fun noDuplicateSubseq!79 (List!27362 List!27362) Unit!40866)

(assert (=> b!1235258 (= lt!560165 (noDuplicateSubseq!79 acc!846 lt!560163))))

(declare-fun b!1235259 () Bool)

(assert (=> b!1235259 (= e!700408 (not e!700406))))

(declare-fun res!823532 () Bool)

(assert (=> b!1235259 (=> res!823532 e!700406)))

(assert (=> b!1235259 (= res!823532 (bvslt (bvadd #b00000000000000000000000000000001 from!3213) #b00000000000000000000000000000000))))

(declare-fun subseq!532 (List!27362 List!27362) Bool)

(assert (=> b!1235259 (subseq!532 acc!846 lt!560163)))

(declare-fun lt!560166 () Unit!40866)

(declare-fun subseqTail!25 (List!27362 List!27362) Unit!40866)

(assert (=> b!1235259 (= lt!560166 (subseqTail!25 lt!560163 lt!560163))))

(assert (=> b!1235259 (subseq!532 lt!560163 lt!560163)))

(declare-fun lt!560164 () Unit!40866)

(declare-fun lemmaListSubSeqRefl!0 (List!27362) Unit!40866)

(assert (=> b!1235259 (= lt!560164 (lemmaListSubSeqRefl!0 lt!560163))))

(assert (=> b!1235259 (= lt!560163 (Cons!27358 (select (arr!38411 a!3835) from!3213) acc!846))))

(declare-fun b!1235260 () Bool)

(declare-fun res!823535 () Bool)

(assert (=> b!1235260 (=> (not res!823535) (not e!700408))))

(assert (=> b!1235260 (= res!823535 (not (= from!3213 (bvsub (size!38948 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1235261 () Bool)

(declare-fun res!823534 () Bool)

(assert (=> b!1235261 (=> res!823534 e!700406)))

(declare-fun noDuplicate!1884 (List!27362) Bool)

(assert (=> b!1235261 (= res!823534 (not (noDuplicate!1884 lt!560163)))))

(declare-fun b!1235262 () Bool)

(declare-fun res!823533 () Bool)

(assert (=> b!1235262 (=> (not res!823533) (not e!700408))))

(assert (=> b!1235262 (= res!823533 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1235263 () Bool)

(declare-fun res!823539 () Bool)

(assert (=> b!1235263 (=> res!823539 e!700406)))

(assert (=> b!1235263 (= res!823539 (contains!7277 lt!560163 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1235264 () Bool)

(declare-fun res!823536 () Bool)

(assert (=> b!1235264 (=> (not res!823536) (not e!700408))))

(assert (=> b!1235264 (= res!823536 (not (contains!7277 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1235265 () Bool)

(declare-fun res!823531 () Bool)

(assert (=> b!1235265 (=> (not res!823531) (not e!700408))))

(assert (=> b!1235265 (= res!823531 (noDuplicate!1884 acc!846))))

(declare-fun b!1235266 () Bool)

(declare-fun res!823541 () Bool)

(assert (=> b!1235266 (=> (not res!823541) (not e!700408))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1235266 (= res!823541 (contains!7277 acc!846 k!2925))))

(declare-fun b!1235267 () Bool)

(declare-fun res!823538 () Bool)

(assert (=> b!1235267 (=> res!823538 e!700406)))

(assert (=> b!1235267 (= res!823538 (contains!7277 lt!560163 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1235268 () Bool)

(declare-fun res!823537 () Bool)

(assert (=> b!1235268 (=> (not res!823537) (not e!700408))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1235268 (= res!823537 (validKeyInArray!0 (select (arr!38411 a!3835) from!3213)))))

(assert (= (and start!102828 res!823530) b!1235265))

(assert (= (and b!1235265 res!823531) b!1235264))

(assert (= (and b!1235264 res!823536) b!1235257))

(assert (= (and b!1235257 res!823540) b!1235262))

(assert (= (and b!1235262 res!823533) b!1235266))

(assert (= (and b!1235266 res!823541) b!1235260))

(assert (= (and b!1235260 res!823535) b!1235268))

(assert (= (and b!1235268 res!823537) b!1235259))

(assert (= (and b!1235259 (not res!823532)) b!1235261))

(assert (= (and b!1235261 (not res!823534)) b!1235263))

(assert (= (and b!1235263 (not res!823539)) b!1235267))

(assert (= (and b!1235267 (not res!823538)) b!1235258))

(declare-fun m!1139197 () Bool)

(assert (=> b!1235258 m!1139197))

(declare-fun m!1139199 () Bool)

(assert (=> b!1235258 m!1139199))

(declare-fun m!1139201 () Bool)

(assert (=> b!1235266 m!1139201))

(declare-fun m!1139203 () Bool)

(assert (=> b!1235261 m!1139203))

(declare-fun m!1139205 () Bool)

(assert (=> b!1235268 m!1139205))

(assert (=> b!1235268 m!1139205))

(declare-fun m!1139207 () Bool)

(assert (=> b!1235268 m!1139207))

(declare-fun m!1139209 () Bool)

(assert (=> b!1235262 m!1139209))

(declare-fun m!1139211 () Bool)

(assert (=> b!1235259 m!1139211))

(declare-fun m!1139213 () Bool)

(assert (=> b!1235259 m!1139213))

(assert (=> b!1235259 m!1139205))

(declare-fun m!1139215 () Bool)

(assert (=> b!1235259 m!1139215))

(declare-fun m!1139217 () Bool)

(assert (=> b!1235259 m!1139217))

(declare-fun m!1139219 () Bool)

(assert (=> b!1235267 m!1139219))

(declare-fun m!1139221 () Bool)

(assert (=> b!1235257 m!1139221))

(declare-fun m!1139223 () Bool)

(assert (=> b!1235265 m!1139223))

(declare-fun m!1139225 () Bool)

(assert (=> start!102828 m!1139225))

(declare-fun m!1139227 () Bool)

(assert (=> b!1235264 m!1139227))

(declare-fun m!1139229 () Bool)

(assert (=> b!1235263 m!1139229))

(push 1)

(assert (not start!102828))

(assert (not b!1235267))

(assert (not b!1235262))

(assert (not b!1235268))

(assert (not b!1235261))

(assert (not b!1235259))

(assert (not b!1235263))

(assert (not b!1235264))

(assert (not b!1235265))

(assert (not b!1235257))

(assert (not b!1235258))

(assert (not b!1235266))

(check-sat)

