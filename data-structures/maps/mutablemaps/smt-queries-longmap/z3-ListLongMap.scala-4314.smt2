; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59930 () Bool)

(assert start!59930)

(declare-fun res!431389 () Bool)

(declare-fun e!380606 () Bool)

(assert (=> start!59930 (=> (not res!431389) (not e!380606))))

(declare-datatypes ((array!38933 0))(
  ( (array!38934 (arr!18655 (Array (_ BitVec 32) (_ BitVec 64))) (size!19019 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38933)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!59930 (= res!431389 (and (bvslt (size!19019 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19019 a!3626))))))

(assert (=> start!59930 e!380606))

(assert (=> start!59930 true))

(declare-fun array_inv!14429 (array!38933) Bool)

(assert (=> start!59930 (array_inv!14429 a!3626)))

(declare-fun b!663351 () Bool)

(declare-fun res!431390 () Bool)

(assert (=> b!663351 (=> (not res!431390) (not e!380606))))

(declare-fun e!380605 () Bool)

(assert (=> b!663351 (= res!431390 e!380605)))

(declare-fun res!431392 () Bool)

(assert (=> b!663351 (=> res!431392 e!380605)))

(declare-fun e!380602 () Bool)

(assert (=> b!663351 (= res!431392 e!380602)))

(declare-fun res!431395 () Bool)

(assert (=> b!663351 (=> (not res!431395) (not e!380602))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!663351 (= res!431395 (bvsgt from!3004 i!1382))))

(declare-fun b!663352 () Bool)

(assert (=> b!663352 (= e!380606 (not true))))

(declare-datatypes ((Unit!23070 0))(
  ( (Unit!23071) )
))
(declare-fun lt!309261 () Unit!23070)

(declare-fun e!380608 () Unit!23070)

(assert (=> b!663352 (= lt!309261 e!380608)))

(declare-fun c!76348 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!663352 (= c!76348 (validKeyInArray!0 (select (arr!18655 a!3626) from!3004)))))

(declare-fun lt!309263 () Unit!23070)

(declare-fun e!380607 () Unit!23070)

(assert (=> b!663352 (= lt!309263 e!380607)))

(declare-fun c!76349 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!38933 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!663352 (= c!76349 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663352 (arrayContainsKey!0 (array!38934 (store (arr!18655 a!3626) i!1382 k0!2843) (size!19019 a!3626)) k0!2843 from!3004)))

(declare-fun b!663353 () Bool)

(declare-fun res!431400 () Bool)

(assert (=> b!663353 (=> (not res!431400) (not e!380606))))

(declare-datatypes ((List!12749 0))(
  ( (Nil!12746) (Cons!12745 (h!13790 (_ BitVec 64)) (t!18985 List!12749)) )
))
(declare-fun acc!681 () List!12749)

(declare-fun noDuplicate!539 (List!12749) Bool)

(assert (=> b!663353 (= res!431400 (noDuplicate!539 acc!681))))

(declare-fun b!663354 () Bool)

(declare-fun res!431396 () Bool)

(assert (=> b!663354 (=> (not res!431396) (not e!380606))))

(assert (=> b!663354 (= res!431396 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19019 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!663355 () Bool)

(declare-fun Unit!23072 () Unit!23070)

(assert (=> b!663355 (= e!380607 Unit!23072)))

(declare-fun b!663356 () Bool)

(declare-fun res!431398 () Bool)

(assert (=> b!663356 (=> (not res!431398) (not e!380606))))

(declare-fun contains!3292 (List!12749 (_ BitVec 64)) Bool)

(assert (=> b!663356 (= res!431398 (not (contains!3292 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663357 () Bool)

(declare-fun res!431394 () Bool)

(assert (=> b!663357 (=> (not res!431394) (not e!380606))))

(assert (=> b!663357 (= res!431394 (validKeyInArray!0 k0!2843))))

(declare-fun b!663358 () Bool)

(declare-fun res!431391 () Bool)

(assert (=> b!663358 (=> (not res!431391) (not e!380606))))

(declare-fun arrayNoDuplicates!0 (array!38933 (_ BitVec 32) List!12749) Bool)

(assert (=> b!663358 (= res!431391 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!663359 () Bool)

(declare-fun e!380603 () Bool)

(assert (=> b!663359 (= e!380605 e!380603)))

(declare-fun res!431401 () Bool)

(assert (=> b!663359 (=> (not res!431401) (not e!380603))))

(assert (=> b!663359 (= res!431401 (bvsle from!3004 i!1382))))

(declare-fun b!663360 () Bool)

(declare-fun Unit!23073 () Unit!23070)

(assert (=> b!663360 (= e!380607 Unit!23073)))

(declare-fun lt!309264 () Unit!23070)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38933 (_ BitVec 64) (_ BitVec 32)) Unit!23070)

(assert (=> b!663360 (= lt!309264 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!663360 false))

(declare-fun b!663361 () Bool)

(declare-fun res!431393 () Bool)

(assert (=> b!663361 (=> (not res!431393) (not e!380606))))

(assert (=> b!663361 (= res!431393 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12746))))

(declare-fun b!663362 () Bool)

(declare-fun lt!309262 () Unit!23070)

(assert (=> b!663362 (= e!380608 lt!309262)))

(declare-fun lt!309260 () Unit!23070)

(declare-fun lemmaListSubSeqRefl!0 (List!12749) Unit!23070)

(assert (=> b!663362 (= lt!309260 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!30 (List!12749 List!12749) Bool)

(assert (=> b!663362 (subseq!30 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!38933 List!12749 List!12749 (_ BitVec 32)) Unit!23070)

(declare-fun $colon$colon!161 (List!12749 (_ BitVec 64)) List!12749)

(assert (=> b!663362 (= lt!309262 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!161 acc!681 (select (arr!18655 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!663362 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!663363 () Bool)

(declare-fun res!431399 () Bool)

(assert (=> b!663363 (=> (not res!431399) (not e!380606))))

(assert (=> b!663363 (= res!431399 (not (contains!3292 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!663364 () Bool)

(declare-fun Unit!23074 () Unit!23070)

(assert (=> b!663364 (= e!380608 Unit!23074)))

(declare-fun b!663365 () Bool)

(declare-fun res!431402 () Bool)

(assert (=> b!663365 (=> (not res!431402) (not e!380606))))

(assert (=> b!663365 (= res!431402 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!663366 () Bool)

(declare-fun res!431397 () Bool)

(assert (=> b!663366 (=> (not res!431397) (not e!380606))))

(assert (=> b!663366 (= res!431397 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19019 a!3626))))))

(declare-fun b!663367 () Bool)

(assert (=> b!663367 (= e!380602 (contains!3292 acc!681 k0!2843))))

(declare-fun b!663368 () Bool)

(assert (=> b!663368 (= e!380603 (not (contains!3292 acc!681 k0!2843)))))

(assert (= (and start!59930 res!431389) b!663353))

(assert (= (and b!663353 res!431400) b!663363))

(assert (= (and b!663363 res!431399) b!663356))

(assert (= (and b!663356 res!431398) b!663351))

(assert (= (and b!663351 res!431395) b!663367))

(assert (= (and b!663351 (not res!431392)) b!663359))

(assert (= (and b!663359 res!431401) b!663368))

(assert (= (and b!663351 res!431390) b!663361))

(assert (= (and b!663361 res!431393) b!663358))

(assert (= (and b!663358 res!431391) b!663366))

(assert (= (and b!663366 res!431397) b!663357))

(assert (= (and b!663357 res!431394) b!663365))

(assert (= (and b!663365 res!431402) b!663354))

(assert (= (and b!663354 res!431396) b!663352))

(assert (= (and b!663352 c!76349) b!663360))

(assert (= (and b!663352 (not c!76349)) b!663355))

(assert (= (and b!663352 c!76348) b!663362))

(assert (= (and b!663352 (not c!76348)) b!663364))

(declare-fun m!634963 () Bool)

(assert (=> b!663368 m!634963))

(declare-fun m!634965 () Bool)

(assert (=> b!663362 m!634965))

(declare-fun m!634967 () Bool)

(assert (=> b!663362 m!634967))

(declare-fun m!634969 () Bool)

(assert (=> b!663362 m!634969))

(declare-fun m!634971 () Bool)

(assert (=> b!663362 m!634971))

(assert (=> b!663362 m!634967))

(assert (=> b!663362 m!634969))

(declare-fun m!634973 () Bool)

(assert (=> b!663362 m!634973))

(declare-fun m!634975 () Bool)

(assert (=> b!663362 m!634975))

(declare-fun m!634977 () Bool)

(assert (=> b!663363 m!634977))

(declare-fun m!634979 () Bool)

(assert (=> b!663360 m!634979))

(assert (=> b!663352 m!634967))

(declare-fun m!634981 () Bool)

(assert (=> b!663352 m!634981))

(declare-fun m!634983 () Bool)

(assert (=> b!663352 m!634983))

(assert (=> b!663352 m!634967))

(declare-fun m!634985 () Bool)

(assert (=> b!663352 m!634985))

(declare-fun m!634987 () Bool)

(assert (=> b!663352 m!634987))

(declare-fun m!634989 () Bool)

(assert (=> b!663365 m!634989))

(declare-fun m!634991 () Bool)

(assert (=> b!663356 m!634991))

(declare-fun m!634993 () Bool)

(assert (=> b!663361 m!634993))

(declare-fun m!634995 () Bool)

(assert (=> b!663358 m!634995))

(declare-fun m!634997 () Bool)

(assert (=> start!59930 m!634997))

(declare-fun m!634999 () Bool)

(assert (=> b!663353 m!634999))

(declare-fun m!635001 () Bool)

(assert (=> b!663357 m!635001))

(assert (=> b!663367 m!634963))

(check-sat (not start!59930) (not b!663363) (not b!663356) (not b!663361) (not b!663353) (not b!663357) (not b!663360) (not b!663365) (not b!663367) (not b!663362) (not b!663352) (not b!663368) (not b!663358))
