; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!59928 () Bool)

(assert start!59928)

(declare-fun b!663297 () Bool)

(declare-fun e!380586 () Bool)

(assert (=> b!663297 (= e!380586 (not true))))

(declare-datatypes ((Unit!23065 0))(
  ( (Unit!23066) )
))
(declare-fun lt!309247 () Unit!23065)

(declare-fun e!380587 () Unit!23065)

(assert (=> b!663297 (= lt!309247 e!380587)))

(declare-fun c!76343 () Bool)

(declare-datatypes ((array!38931 0))(
  ( (array!38932 (arr!18654 (Array (_ BitVec 32) (_ BitVec 64))) (size!19018 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38931)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663297 (= c!76343 (validKeyInArray!0 (select (arr!18654 a!3626) from!3004)))))

(declare-fun lt!309246 () Unit!23065)

(declare-fun e!380584 () Unit!23065)

(assert (=> b!663297 (= lt!309246 e!380584)))

(declare-fun c!76342 () Bool)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38931 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663297 (= c!76342 (arrayContainsKey!0 a!3626 k!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663297 (arrayContainsKey!0 (array!38932 (store (arr!18654 a!3626) i!1382 k!2843) (size!19018 a!3626)) k!2843 from!3004)))

(declare-fun b!663298 () Bool)

(declare-fun res!431360 () Bool)

(assert (=> b!663298 (=> (not res!431360) (not e!380586))))

(declare-datatypes ((List!12748 0))(
  ( (Nil!12745) (Cons!12744 (h!13789 (_ BitVec 64)) (t!18984 List!12748)) )
))
(declare-fun acc!681 () List!12748)

(declare-fun contains!3291 (List!12748 (_ BitVec 64)) Bool)

(assert (=> b!663298 (= res!431360 (not (contains!3291 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663299 () Bool)

(declare-fun res!431354 () Bool)

(assert (=> b!663299 (=> (not res!431354) (not e!380586))))

(declare-fun e!380581 () Bool)

(assert (=> b!663299 (= res!431354 e!380581)))

(declare-fun res!431353 () Bool)

(assert (=> b!663299 (=> res!431353 e!380581)))

(declare-fun e!380583 () Bool)

(assert (=> b!663299 (= res!431353 e!380583)))

(declare-fun res!431350 () Bool)

(assert (=> b!663299 (=> (not res!431350) (not e!380583))))

(assert (=> b!663299 (= res!431350 (bvsgt from!3004 i!1382))))

(declare-fun b!663300 () Bool)

(declare-fun Unit!23067 () Unit!23065)

(assert (=> b!663300 (= e!380584 Unit!23067)))

(declare-fun b!663301 () Bool)

(declare-fun res!431351 () Bool)

(assert (=> b!663301 (=> (not res!431351) (not e!380586))))

(assert (=> b!663301 (= res!431351 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19018 a!3626))))))

(declare-fun b!663302 () Bool)

(declare-fun Unit!23068 () Unit!23065)

(assert (=> b!663302 (= e!380584 Unit!23068)))

(declare-fun lt!309248 () Unit!23065)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38931 (_ BitVec 64) (_ BitVec 32)) Unit!23065)

(assert (=> b!663302 (= lt!309248 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k!2843 from!3004))))

(assert (=> b!663302 false))

(declare-fun b!663303 () Bool)

(declare-fun e!380585 () Bool)

(assert (=> b!663303 (= e!380581 e!380585)))

(declare-fun res!431347 () Bool)

(assert (=> b!663303 (=> (not res!431347) (not e!380585))))

(assert (=> b!663303 (= res!431347 (bvsle from!3004 i!1382))))

(declare-fun b!663304 () Bool)

(declare-fun lt!309249 () Unit!23065)

(assert (=> b!663304 (= e!380587 lt!309249)))

(declare-fun lt!309245 () Unit!23065)

(declare-fun lemmaListSubSeqRefl!0 (List!12748) Unit!23065)

(assert (=> b!663304 (= lt!309245 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!29 (List!12748 List!12748) Bool)

(assert (=> b!663304 (subseq!29 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38931 List!12748 List!12748 (_ BitVec 32)) Unit!23065)

(declare-fun $colon$colon!160 (List!12748 (_ BitVec 64)) List!12748)

(assert (=> b!663304 (= lt!309249 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!160 acc!681 (select (arr!18654 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!38931 (_ BitVec 32) List!12748) Bool)

(assert (=> b!663304 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!663305 () Bool)

(declare-fun res!431359 () Bool)

(assert (=> b!663305 (=> (not res!431359) (not e!380586))))

(assert (=> b!663305 (= res!431359 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12745))))

(declare-fun b!663306 () Bool)

(assert (=> b!663306 (= e!380583 (contains!3291 acc!681 k!2843))))

(declare-fun b!663307 () Bool)

(declare-fun res!431355 () Bool)

(assert (=> b!663307 (=> (not res!431355) (not e!380586))))

(assert (=> b!663307 (= res!431355 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!663308 () Bool)

(declare-fun res!431357 () Bool)

(assert (=> b!663308 (=> (not res!431357) (not e!380586))))

(assert (=> b!663308 (= res!431357 (validKeyInArray!0 k!2843))))

(declare-fun b!663309 () Bool)

(declare-fun res!431358 () Bool)

(assert (=> b!663309 (=> (not res!431358) (not e!380586))))

(assert (=> b!663309 (= res!431358 (not (contains!3291 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663310 () Bool)

(declare-fun res!431352 () Bool)

(assert (=> b!663310 (=> (not res!431352) (not e!380586))))

(assert (=> b!663310 (= res!431352 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19018 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663311 () Bool)

(declare-fun Unit!23069 () Unit!23065)

(assert (=> b!663311 (= e!380587 Unit!23069)))

(declare-fun b!663312 () Bool)

(assert (=> b!663312 (= e!380585 (not (contains!3291 acc!681 k!2843)))))

(declare-fun res!431349 () Bool)

(assert (=> start!59928 (=> (not res!431349) (not e!380586))))

(assert (=> start!59928 (= res!431349 (and (bvslt (size!19018 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19018 a!3626))))))

(assert (=> start!59928 e!380586))

(assert (=> start!59928 true))

(declare-fun array_inv!14428 (array!38931) Bool)

(assert (=> start!59928 (array_inv!14428 a!3626)))

(declare-fun b!663313 () Bool)

(declare-fun res!431348 () Bool)

(assert (=> b!663313 (=> (not res!431348) (not e!380586))))

(declare-fun noDuplicate!538 (List!12748) Bool)

(assert (=> b!663313 (= res!431348 (noDuplicate!538 acc!681))))

(declare-fun b!663314 () Bool)

(declare-fun res!431356 () Bool)

(assert (=> b!663314 (=> (not res!431356) (not e!380586))))

(assert (=> b!663314 (= res!431356 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(assert (= (and start!59928 res!431349) b!663313))

(assert (= (and b!663313 res!431348) b!663298))

(assert (= (and b!663298 res!431360) b!663309))

(assert (= (and b!663309 res!431358) b!663299))

(assert (= (and b!663299 res!431350) b!663306))

(assert (= (and b!663299 (not res!431353)) b!663303))

(assert (= (and b!663303 res!431347) b!663312))

(assert (= (and b!663299 res!431354) b!663305))

(assert (= (and b!663305 res!431359) b!663307))

(assert (= (and b!663307 res!431355) b!663301))

(assert (= (and b!663301 res!431351) b!663308))

(assert (= (and b!663308 res!431357) b!663314))

(assert (= (and b!663314 res!431356) b!663310))

(assert (= (and b!663310 res!431352) b!663297))

(assert (= (and b!663297 c!76342) b!663302))

(assert (= (and b!663297 (not c!76342)) b!663300))

(assert (= (and b!663297 c!76343) b!663304))

(assert (= (and b!663297 (not c!76343)) b!663311))

(declare-fun m!634923 () Bool)

(assert (=> b!663308 m!634923))

(declare-fun m!634925 () Bool)

(assert (=> b!663309 m!634925))

(declare-fun m!634927 () Bool)

(assert (=> b!663302 m!634927))

(declare-fun m!634929 () Bool)

(assert (=> b!663297 m!634929))

(declare-fun m!634931 () Bool)

(assert (=> b!663297 m!634931))

(declare-fun m!634933 () Bool)

(assert (=> b!663297 m!634933))

(assert (=> b!663297 m!634929))

(declare-fun m!634935 () Bool)

(assert (=> b!663297 m!634935))

(declare-fun m!634937 () Bool)

(assert (=> b!663297 m!634937))

(declare-fun m!634939 () Bool)

(assert (=> b!663307 m!634939))

(declare-fun m!634941 () Bool)

(assert (=> b!663304 m!634941))

(assert (=> b!663304 m!634929))

(declare-fun m!634943 () Bool)

(assert (=> b!663304 m!634943))

(declare-fun m!634945 () Bool)

(assert (=> b!663304 m!634945))

(assert (=> b!663304 m!634929))

(assert (=> b!663304 m!634943))

(declare-fun m!634947 () Bool)

(assert (=> b!663304 m!634947))

(declare-fun m!634949 () Bool)

(assert (=> b!663304 m!634949))

(declare-fun m!634951 () Bool)

(assert (=> b!663312 m!634951))

(declare-fun m!634953 () Bool)

(assert (=> b!663313 m!634953))

(assert (=> b!663306 m!634951))

(declare-fun m!634955 () Bool)

(assert (=> b!663314 m!634955))

(declare-fun m!634957 () Bool)

(assert (=> start!59928 m!634957))

(declare-fun m!634959 () Bool)

(assert (=> b!663298 m!634959))

(declare-fun m!634961 () Bool)

(assert (=> b!663305 m!634961))

(push 1)

(assert (not b!663309))

(assert (not b!663298))

(assert (not b!663302))

(assert (not start!59928))

(assert (not b!663305))

(assert (not b!663312))

(assert (not b!663297))

(assert (not b!663306))

(assert (not b!663314))

(assert (not b!663308))

(assert (not b!663313))

(assert (not b!663304))

(assert (not b!663307))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

