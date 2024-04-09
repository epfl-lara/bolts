; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!62214 () Bool)

(assert start!62214)

(declare-fun res!460383 () Bool)

(declare-fun e!395966 () Bool)

(assert (=> start!62214 (=> (not res!460383) (not e!395966))))

(declare-datatypes ((array!39927 0))(
  ( (array!39928 (arr!19119 (Array (_ BitVec 32) (_ BitVec 64))) (size!19502 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39927)

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> start!62214 (= res!460383 (and (bvslt (size!19502 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19502 a!3626))))))

(assert (=> start!62214 e!395966))

(assert (=> start!62214 true))

(declare-fun array_inv!14893 (array!39927) Bool)

(assert (=> start!62214 (array_inv!14893 a!3626)))

(declare-fun b!696289 () Bool)

(declare-fun res!460399 () Bool)

(assert (=> b!696289 (=> (not res!460399) (not e!395966))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!696289 (= res!460399 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19502 a!3626))))))

(declare-fun b!696290 () Bool)

(declare-fun e!395967 () Bool)

(declare-datatypes ((List!13213 0))(
  ( (Nil!13210) (Cons!13209 (h!14254 (_ BitVec 64)) (t!19503 List!13213)) )
))
(declare-fun acc!681 () List!13213)

(declare-fun k!2843 () (_ BitVec 64))

(declare-fun contains!3756 (List!13213 (_ BitVec 64)) Bool)

(assert (=> b!696290 (= e!395967 (not (contains!3756 acc!681 k!2843)))))

(declare-fun b!696291 () Bool)

(declare-fun res!460387 () Bool)

(assert (=> b!696291 (=> (not res!460387) (not e!395966))))

(declare-fun arrayContainsKey!0 (array!39927 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!696291 (= res!460387 (not (arrayContainsKey!0 a!3626 k!2843 #b00000000000000000000000000000000)))))

(declare-fun b!696292 () Bool)

(declare-fun e!395963 () Bool)

(assert (=> b!696292 (= e!395963 e!395967)))

(declare-fun res!460381 () Bool)

(assert (=> b!696292 (=> (not res!460381) (not e!395967))))

(assert (=> b!696292 (= res!460381 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696293 () Bool)

(declare-fun res!460394 () Bool)

(assert (=> b!696293 (=> (not res!460394) (not e!395966))))

(assert (=> b!696293 (= res!460394 (not (contains!3756 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696294 () Bool)

(declare-fun res!460388 () Bool)

(assert (=> b!696294 (=> (not res!460388) (not e!395966))))

(declare-fun arrayNoDuplicates!0 (array!39927 (_ BitVec 32) List!13213) Bool)

(assert (=> b!696294 (= res!460388 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!696295 () Bool)

(declare-fun res!460397 () Bool)

(assert (=> b!696295 (=> (not res!460397) (not e!395966))))

(assert (=> b!696295 (= res!460397 e!395963)))

(declare-fun res!460393 () Bool)

(assert (=> b!696295 (=> res!460393 e!395963)))

(declare-fun e!395968 () Bool)

(assert (=> b!696295 (= res!460393 e!395968)))

(declare-fun res!460390 () Bool)

(assert (=> b!696295 (=> (not res!460390) (not e!395968))))

(assert (=> b!696295 (= res!460390 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!696296 () Bool)

(declare-fun res!460384 () Bool)

(assert (=> b!696296 (=> (not res!460384) (not e!395966))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!696296 (= res!460384 (validKeyInArray!0 k!2843))))

(declare-fun b!696297 () Bool)

(declare-fun res!460382 () Bool)

(assert (=> b!696297 (=> (not res!460382) (not e!395966))))

(assert (=> b!696297 (= res!460382 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19502 a!3626)) (not (= from!3004 i!1382))))))

(declare-fun b!696298 () Bool)

(declare-fun res!460389 () Bool)

(assert (=> b!696298 (=> (not res!460389) (not e!395966))))

(assert (=> b!696298 (= res!460389 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun b!696299 () Bool)

(declare-fun res!460395 () Bool)

(assert (=> b!696299 (=> (not res!460395) (not e!395966))))

(declare-fun noDuplicate!1003 (List!13213) Bool)

(assert (=> b!696299 (= res!460395 (noDuplicate!1003 acc!681))))

(declare-fun b!696300 () Bool)

(assert (=> b!696300 (= e!395968 (contains!3756 acc!681 k!2843))))

(declare-fun b!696301 () Bool)

(declare-fun res!460386 () Bool)

(assert (=> b!696301 (=> (not res!460386) (not e!395966))))

(declare-fun e!395962 () Bool)

(assert (=> b!696301 (= res!460386 e!395962)))

(declare-fun res!460400 () Bool)

(assert (=> b!696301 (=> res!460400 e!395962)))

(declare-fun e!395965 () Bool)

(assert (=> b!696301 (= res!460400 e!395965)))

(declare-fun res!460396 () Bool)

(assert (=> b!696301 (=> (not res!460396) (not e!395965))))

(assert (=> b!696301 (= res!460396 (bvsgt from!3004 i!1382))))

(declare-fun b!696302 () Bool)

(declare-fun e!395961 () Bool)

(assert (=> b!696302 (= e!395962 e!395961)))

(declare-fun res!460398 () Bool)

(assert (=> b!696302 (=> (not res!460398) (not e!395961))))

(assert (=> b!696302 (= res!460398 (bvsle from!3004 i!1382))))

(declare-fun b!696303 () Bool)

(assert (=> b!696303 (= e!395965 (contains!3756 acc!681 k!2843))))

(declare-fun b!696304 () Bool)

(assert (=> b!696304 (= e!395966 false)))

(declare-fun lt!317052 () Bool)

(assert (=> b!696304 (= lt!317052 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681))))

(declare-fun b!696305 () Bool)

(declare-fun res!460385 () Bool)

(assert (=> b!696305 (=> (not res!460385) (not e!395966))))

(assert (=> b!696305 (= res!460385 (not (contains!3756 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!696306 () Bool)

(assert (=> b!696306 (= e!395961 (not (contains!3756 acc!681 k!2843)))))

(declare-fun b!696307 () Bool)

(declare-fun res!460392 () Bool)

(assert (=> b!696307 (=> (not res!460392) (not e!395966))))

(assert (=> b!696307 (= res!460392 (not (validKeyInArray!0 (select (arr!19119 a!3626) from!3004))))))

(declare-fun b!696308 () Bool)

(declare-fun res!460391 () Bool)

(assert (=> b!696308 (=> (not res!460391) (not e!395966))))

(assert (=> b!696308 (= res!460391 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13210))))

(assert (= (and start!62214 res!460383) b!696299))

(assert (= (and b!696299 res!460395) b!696305))

(assert (= (and b!696305 res!460385) b!696293))

(assert (= (and b!696293 res!460394) b!696301))

(assert (= (and b!696301 res!460396) b!696303))

(assert (= (and b!696301 (not res!460400)) b!696302))

(assert (= (and b!696302 res!460398) b!696306))

(assert (= (and b!696301 res!460386) b!696308))

(assert (= (and b!696308 res!460391) b!696294))

(assert (= (and b!696294 res!460388) b!696289))

(assert (= (and b!696289 res!460399) b!696296))

(assert (= (and b!696296 res!460384) b!696291))

(assert (= (and b!696291 res!460387) b!696297))

(assert (= (and b!696297 res!460382) b!696307))

(assert (= (and b!696307 res!460392) b!696298))

(assert (= (and b!696298 res!460389) b!696295))

(assert (= (and b!696295 res!460390) b!696300))

(assert (= (and b!696295 (not res!460393)) b!696292))

(assert (= (and b!696292 res!460381) b!696290))

(assert (= (and b!696295 res!460397) b!696304))

(declare-fun m!657321 () Bool)

(assert (=> b!696290 m!657321))

(assert (=> b!696300 m!657321))

(declare-fun m!657323 () Bool)

(assert (=> b!696299 m!657323))

(declare-fun m!657325 () Bool)

(assert (=> b!696294 m!657325))

(assert (=> b!696303 m!657321))

(declare-fun m!657327 () Bool)

(assert (=> b!696304 m!657327))

(declare-fun m!657329 () Bool)

(assert (=> b!696293 m!657329))

(declare-fun m!657331 () Bool)

(assert (=> b!696308 m!657331))

(declare-fun m!657333 () Bool)

(assert (=> b!696291 m!657333))

(declare-fun m!657335 () Bool)

(assert (=> b!696307 m!657335))

(assert (=> b!696307 m!657335))

(declare-fun m!657337 () Bool)

(assert (=> b!696307 m!657337))

(declare-fun m!657339 () Bool)

(assert (=> b!696305 m!657339))

(assert (=> b!696306 m!657321))

(declare-fun m!657341 () Bool)

(assert (=> b!696296 m!657341))

(declare-fun m!657343 () Bool)

(assert (=> start!62214 m!657343))

(push 1)

(assert (not b!696304))

(assert (not b!696307))

(assert (not b!696291))

(assert (not b!696305))

(assert (not b!696299))

(assert (not b!696306))

(assert (not b!696303))

(assert (not start!62214))

(assert (not b!696300))

(assert (not b!696290))

(assert (not b!696293))

(assert (not b!696308))

(assert (not b!696296))

(assert (not b!696294))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

