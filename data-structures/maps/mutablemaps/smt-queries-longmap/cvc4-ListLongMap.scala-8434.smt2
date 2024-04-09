; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!102732 () Bool)

(assert start!102732)

(declare-fun b!1234268 () Bool)

(declare-fun res!822559 () Bool)

(declare-fun e!700071 () Bool)

(assert (=> b!1234268 (=> (not res!822559) (not e!700071))))

(declare-datatypes ((List!27338 0))(
  ( (Nil!27335) (Cons!27334 (h!28543 (_ BitVec 64)) (t!40808 List!27338)) )
))
(declare-fun acc!846 () List!27338)

(declare-fun contains!7253 (List!27338 (_ BitVec 64)) Bool)

(assert (=> b!1234268 (= res!822559 (not (contains!7253 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234269 () Bool)

(declare-fun res!822565 () Bool)

(assert (=> b!1234269 (=> (not res!822565) (not e!700071))))

(declare-fun from!3213 () (_ BitVec 32))

(declare-datatypes ((array!79563 0))(
  ( (array!79564 (arr!38387 (Array (_ BitVec 32) (_ BitVec 64))) (size!38924 (_ BitVec 32))) )
))
(declare-fun a!3835 () array!79563)

(assert (=> b!1234269 (= res!822565 (not (= from!3213 (bvsub (size!38924 a!3835) #b00000000000000000000000000000001))))))

(declare-fun b!1234270 () Bool)

(declare-fun res!822566 () Bool)

(assert (=> b!1234270 (=> (not res!822566) (not e!700071))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1234270 (= res!822566 (validKeyInArray!0 (select (arr!38387 a!3835) from!3213)))))

(declare-fun b!1234271 () Bool)

(declare-fun res!822562 () Bool)

(assert (=> b!1234271 (=> (not res!822562) (not e!700071))))

(declare-fun arrayNoDuplicates!0 (array!79563 (_ BitVec 32) List!27338) Bool)

(assert (=> b!1234271 (= res!822562 (arrayNoDuplicates!0 a!3835 from!3213 acc!846))))

(declare-fun b!1234272 () Bool)

(declare-fun res!822561 () Bool)

(assert (=> b!1234272 (=> (not res!822561) (not e!700071))))

(declare-fun noDuplicate!1860 (List!27338) Bool)

(assert (=> b!1234272 (= res!822561 (noDuplicate!1860 acc!846))))

(declare-fun b!1234273 () Bool)

(declare-fun res!822563 () Bool)

(assert (=> b!1234273 (=> (not res!822563) (not e!700071))))

(declare-fun k!2925 () (_ BitVec 64))

(assert (=> b!1234273 (= res!822563 (contains!7253 acc!846 k!2925))))

(declare-fun res!822564 () Bool)

(assert (=> start!102732 (=> (not res!822564) (not e!700071))))

(assert (=> start!102732 (= res!822564 (and (bvslt (size!38924 a!3835) #b01111111111111111111111111111111) (bvsge from!3213 #b00000000000000000000000000000000) (bvslt from!3213 (size!38924 a!3835))))))

(assert (=> start!102732 e!700071))

(declare-fun array_inv!29163 (array!79563) Bool)

(assert (=> start!102732 (array_inv!29163 a!3835)))

(assert (=> start!102732 true))

(declare-fun b!1234274 () Bool)

(declare-fun res!822560 () Bool)

(assert (=> b!1234274 (=> (not res!822560) (not e!700071))))

(assert (=> b!1234274 (= res!822560 (not (contains!7253 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1234275 () Bool)

(declare-fun lt!559783 () List!27338)

(declare-fun isEmpty!1008 (List!27338) Bool)

(assert (=> b!1234275 (= e!700071 (not (not (isEmpty!1008 lt!559783))))))

(declare-fun subseq!508 (List!27338 List!27338) Bool)

(assert (=> b!1234275 (subseq!508 lt!559783 lt!559783)))

(declare-datatypes ((Unit!40818 0))(
  ( (Unit!40819) )
))
(declare-fun lt!559782 () Unit!40818)

(declare-fun lemmaListSubSeqRefl!0 (List!27338) Unit!40818)

(assert (=> b!1234275 (= lt!559782 (lemmaListSubSeqRefl!0 lt!559783))))

(assert (=> b!1234275 (= lt!559783 (Cons!27334 (select (arr!38387 a!3835) from!3213) acc!846))))

(assert (= (and start!102732 res!822564) b!1234272))

(assert (= (and b!1234272 res!822561) b!1234274))

(assert (= (and b!1234274 res!822560) b!1234268))

(assert (= (and b!1234268 res!822559) b!1234271))

(assert (= (and b!1234271 res!822562) b!1234273))

(assert (= (and b!1234273 res!822563) b!1234269))

(assert (= (and b!1234269 res!822565) b!1234270))

(assert (= (and b!1234270 res!822566) b!1234275))

(declare-fun m!1138309 () Bool)

(assert (=> b!1234272 m!1138309))

(declare-fun m!1138311 () Bool)

(assert (=> b!1234275 m!1138311))

(declare-fun m!1138313 () Bool)

(assert (=> b!1234275 m!1138313))

(declare-fun m!1138315 () Bool)

(assert (=> b!1234275 m!1138315))

(declare-fun m!1138317 () Bool)

(assert (=> b!1234275 m!1138317))

(declare-fun m!1138319 () Bool)

(assert (=> b!1234271 m!1138319))

(assert (=> b!1234270 m!1138317))

(assert (=> b!1234270 m!1138317))

(declare-fun m!1138321 () Bool)

(assert (=> b!1234270 m!1138321))

(declare-fun m!1138323 () Bool)

(assert (=> b!1234273 m!1138323))

(declare-fun m!1138325 () Bool)

(assert (=> b!1234268 m!1138325))

(declare-fun m!1138327 () Bool)

(assert (=> start!102732 m!1138327))

(declare-fun m!1138329 () Bool)

(assert (=> b!1234274 m!1138329))

(push 1)

(assert (not start!102732))

(assert (not b!1234273))

(assert (not b!1234271))

(assert (not b!1234268))

(assert (not b!1234272))

(assert (not b!1234274))

(assert (not b!1234275))

(assert (not b!1234270))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!135341 () Bool)

(declare-fun res!822603 () Bool)

(declare-fun e!700109 () Bool)

(assert (=> d!135341 (=> res!822603 e!700109)))

(assert (=> d!135341 (= res!822603 (is-Nil!27335 acc!846))))

(assert (=> d!135341 (= (noDuplicate!1860 acc!846) e!700109)))

(declare-fun b!1234312 () Bool)

(declare-fun e!700110 () Bool)

(assert (=> b!1234312 (= e!700109 e!700110)))

(declare-fun res!822604 () Bool)

(assert (=> b!1234312 (=> (not res!822604) (not e!700110))))

(assert (=> b!1234312 (= res!822604 (not (contains!7253 (t!40808 acc!846) (h!28543 acc!846))))))

(declare-fun b!1234313 () Bool)

(assert (=> b!1234313 (= e!700110 (noDuplicate!1860 (t!40808 acc!846)))))

(assert (= (and d!135341 (not res!822603)) b!1234312))

(assert (= (and b!1234312 res!822604) b!1234313))

(declare-fun m!1138351 () Bool)

(assert (=> b!1234312 m!1138351))

(declare-fun m!1138353 () Bool)

(assert (=> b!1234313 m!1138353))

(assert (=> b!1234272 d!135341))

(declare-fun d!135347 () Bool)

(declare-fun lt!559801 () Bool)

(declare-fun content!587 (List!27338) (Set (_ BitVec 64)))

(assert (=> d!135347 (= lt!559801 (member k!2925 (content!587 acc!846)))))

(declare-fun e!700126 () Bool)

(assert (=> d!135347 (= lt!559801 e!700126)))

(declare-fun res!822619 () Bool)

(assert (=> d!135347 (=> (not res!822619) (not e!700126))))

(assert (=> d!135347 (= res!822619 (is-Cons!27334 acc!846))))

(assert (=> d!135347 (= (contains!7253 acc!846 k!2925) lt!559801)))

(declare-fun b!1234328 () Bool)

(declare-fun e!700125 () Bool)

(assert (=> b!1234328 (= e!700126 e!700125)))

(declare-fun res!822620 () Bool)

(assert (=> b!1234328 (=> res!822620 e!700125)))

(assert (=> b!1234328 (= res!822620 (= (h!28543 acc!846) k!2925))))

(declare-fun b!1234329 () Bool)

(assert (=> b!1234329 (= e!700125 (contains!7253 (t!40808 acc!846) k!2925))))

(assert (= (and d!135347 res!822619) b!1234328))

(assert (= (and b!1234328 (not res!822620)) b!1234329))

(declare-fun m!1138371 () Bool)

(assert (=> d!135347 m!1138371))

(declare-fun m!1138373 () Bool)

(assert (=> d!135347 m!1138373))

(declare-fun m!1138375 () Bool)

(assert (=> b!1234329 m!1138375))

(assert (=> b!1234273 d!135347))

(declare-fun d!135359 () Bool)

(assert (=> d!135359 (= (array_inv!29163 a!3835) (bvsge (size!38924 a!3835) #b00000000000000000000000000000000))))

(assert (=> start!102732 d!135359))

(declare-fun d!135361 () Bool)

(declare-fun lt!559802 () Bool)

(assert (=> d!135361 (= lt!559802 (member #b1000000000000000000000000000000000000000000000000000000000000000 (content!587 acc!846)))))

(declare-fun e!700132 () Bool)

(assert (=> d!135361 (= lt!559802 e!700132)))

(declare-fun res!822625 () Bool)

(assert (=> d!135361 (=> (not res!822625) (not e!700132))))

(assert (=> d!135361 (= res!822625 (is-Cons!27334 acc!846))))

(assert (=> d!135361 (= (contains!7253 acc!846 #b1000000000000000000000000000000000000000000000000000000000000000) lt!559802)))

(declare-fun b!1234334 () Bool)

(declare-fun e!700131 () Bool)

(assert (=> b!1234334 (= e!700132 e!700131)))

(declare-fun res!822626 () Bool)

(assert (=> b!1234334 (=> res!822626 e!700131)))

(assert (=> b!1234334 (= res!822626 (= (h!28543 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234335 () Bool)

(assert (=> b!1234335 (= e!700131 (contains!7253 (t!40808 acc!846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135361 res!822625) b!1234334))

(assert (= (and b!1234334 (not res!822626)) b!1234335))

(assert (=> d!135361 m!1138371))

(declare-fun m!1138377 () Bool)

(assert (=> d!135361 m!1138377))

(declare-fun m!1138379 () Bool)

(assert (=> b!1234335 m!1138379))

(assert (=> b!1234268 d!135361))

(declare-fun d!135363 () Bool)

(declare-fun lt!559803 () Bool)

(assert (=> d!135363 (= lt!559803 (member #b0000000000000000000000000000000000000000000000000000000000000000 (content!587 acc!846)))))

(declare-fun e!700134 () Bool)

(assert (=> d!135363 (= lt!559803 e!700134)))

(declare-fun res!822627 () Bool)

(assert (=> d!135363 (=> (not res!822627) (not e!700134))))

(assert (=> d!135363 (= res!822627 (is-Cons!27334 acc!846))))

(assert (=> d!135363 (= (contains!7253 acc!846 #b0000000000000000000000000000000000000000000000000000000000000000) lt!559803)))

(declare-fun b!1234336 () Bool)

(declare-fun e!700133 () Bool)

(assert (=> b!1234336 (= e!700134 e!700133)))

(declare-fun res!822628 () Bool)

(assert (=> b!1234336 (=> res!822628 e!700133)))

(assert (=> b!1234336 (= res!822628 (= (h!28543 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1234337 () Bool)

(assert (=> b!1234337 (= e!700133 (contains!7253 (t!40808 acc!846) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!135363 res!822627) b!1234336))

(assert (= (and b!1234336 (not res!822628)) b!1234337))

(assert (=> d!135363 m!1138371))

(declare-fun m!1138381 () Bool)

(assert (=> d!135363 m!1138381))

(declare-fun m!1138383 () Bool)

(assert (=> b!1234337 m!1138383))

(assert (=> b!1234274 d!135363))

(declare-fun d!135365 () Bool)

(assert (=> d!135365 (= (isEmpty!1008 lt!559783) (is-Nil!27335 lt!559783))))

(assert (=> b!1234275 d!135365))

(declare-fun b!1234374 () Bool)

(declare-fun e!700168 () Bool)

(declare-fun e!700166 () Bool)

(assert (=> b!1234374 (= e!700168 e!700166)))

(declare-fun res!822655 () Bool)

(assert (=> b!1234374 (=> res!822655 e!700166)))

(declare-fun e!700165 () Bool)

(assert (=> b!1234374 (= res!822655 e!700165)))

(declare-fun res!822654 () Bool)

(assert (=> b!1234374 (=> (not res!822654) (not e!700165))))

(assert (=> b!1234374 (= res!822654 (= (h!28543 lt!559783) (h!28543 lt!559783)))))

(declare-fun b!1234375 () Bool)

(assert (=> b!1234375 (= e!700165 (subseq!508 (t!40808 lt!559783) (t!40808 lt!559783)))))

(declare-fun b!1234376 () Bool)

(assert (=> b!1234376 (= e!700166 (subseq!508 lt!559783 (t!40808 lt!559783)))))

(declare-fun d!135369 () Bool)

(declare-fun res!822657 () Bool)

(declare-fun e!700167 () Bool)

(assert (=> d!135369 (=> res!822657 e!700167)))

