; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!59900 () Bool)

(assert start!59900)

(declare-fun b!662417 () Bool)

(declare-fun res!430586 () Bool)

(declare-fun e!380261 () Bool)

(assert (=> b!662417 (=> (not res!430586) (not e!380261))))

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!662417 (= res!430586 (validKeyInArray!0 k0!2843))))

(declare-fun b!662418 () Bool)

(declare-fun res!430590 () Bool)

(declare-fun e!380262 () Bool)

(assert (=> b!662418 (=> res!430590 e!380262)))

(declare-datatypes ((List!12734 0))(
  ( (Nil!12731) (Cons!12730 (h!13775 (_ BitVec 64)) (t!18970 List!12734)) )
))
(declare-fun acc!681 () List!12734)

(declare-fun lt!309007 () List!12734)

(declare-fun subseq!15 (List!12734 List!12734) Bool)

(assert (=> b!662418 (= res!430590 (not (subseq!15 acc!681 lt!309007)))))

(declare-fun b!662419 () Bool)

(declare-fun res!430584 () Bool)

(assert (=> b!662419 (=> (not res!430584) (not e!380261))))

(declare-fun contains!3277 (List!12734 (_ BitVec 64)) Bool)

(assert (=> b!662419 (= res!430584 (not (contains!3277 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662420 () Bool)

(declare-fun res!430580 () Bool)

(assert (=> b!662420 (=> (not res!430580) (not e!380261))))

(declare-datatypes ((array!38903 0))(
  ( (array!38904 (arr!18640 (Array (_ BitVec 32) (_ BitVec 64))) (size!19004 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!38903)

(declare-fun arrayContainsKey!0 (array!38903 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!662420 (= res!430580 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!662421 () Bool)

(declare-fun res!430589 () Bool)

(assert (=> b!662421 (=> (not res!430589) (not e!380261))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!662421 (= res!430589 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19004 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!662422 () Bool)

(declare-fun e!380258 () Bool)

(declare-fun e!380260 () Bool)

(assert (=> b!662422 (= e!380258 e!380260)))

(declare-fun res!430575 () Bool)

(assert (=> b!662422 (=> (not res!430575) (not e!380260))))

(assert (=> b!662422 (= res!430575 (bvsle from!3004 i!1382))))

(declare-fun b!662423 () Bool)

(declare-fun res!430578 () Bool)

(assert (=> b!662423 (=> res!430578 e!380262)))

(assert (=> b!662423 (= res!430578 (contains!3277 lt!309007 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!662425 () Bool)

(declare-fun res!430573 () Bool)

(assert (=> b!662425 (=> (not res!430573) (not e!380261))))

(declare-fun noDuplicate!524 (List!12734) Bool)

(assert (=> b!662425 (= res!430573 (noDuplicate!524 acc!681))))

(declare-fun b!662426 () Bool)

(declare-fun e!380257 () Bool)

(assert (=> b!662426 (= e!380257 e!380262)))

(declare-fun res!430587 () Bool)

(assert (=> b!662426 (=> res!430587 e!380262)))

(assert (=> b!662426 (= res!430587 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!146 (List!12734 (_ BitVec 64)) List!12734)

(assert (=> b!662426 (= lt!309007 ($colon$colon!146 acc!681 (select (arr!18640 a!3626) from!3004)))))

(assert (=> b!662426 (subseq!15 acc!681 acc!681)))

(declare-datatypes ((Unit!23006 0))(
  ( (Unit!23007) )
))
(declare-fun lt!309005 () Unit!23006)

(declare-fun lemmaListSubSeqRefl!0 (List!12734) Unit!23006)

(assert (=> b!662426 (= lt!309005 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!662427 () Bool)

(assert (=> b!662427 (= e!380262 true)))

(declare-fun lt!309008 () Bool)

(declare-fun arrayNoDuplicates!0 (array!38903 (_ BitVec 32) List!12734) Bool)

(assert (=> b!662427 (= lt!309008 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!309007))))

(declare-fun lt!309004 () Unit!23006)

(declare-fun noDuplicateSubseq!15 (List!12734 List!12734) Unit!23006)

(assert (=> b!662427 (= lt!309004 (noDuplicateSubseq!15 acc!681 lt!309007))))

(declare-fun b!662428 () Bool)

(declare-fun e!380259 () Bool)

(assert (=> b!662428 (= e!380259 (contains!3277 acc!681 k0!2843))))

(declare-fun b!662429 () Bool)

(declare-fun res!430583 () Bool)

(assert (=> b!662429 (=> (not res!430583) (not e!380261))))

(assert (=> b!662429 (= res!430583 (not (contains!3277 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!662430 () Bool)

(declare-fun e!380263 () Unit!23006)

(declare-fun Unit!23008 () Unit!23006)

(assert (=> b!662430 (= e!380263 Unit!23008)))

(declare-fun b!662431 () Bool)

(declare-fun res!430591 () Bool)

(assert (=> b!662431 (=> (not res!430591) (not e!380261))))

(assert (=> b!662431 (= res!430591 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12731))))

(declare-fun b!662432 () Bool)

(declare-fun res!430579 () Bool)

(assert (=> b!662432 (=> res!430579 e!380262)))

(assert (=> b!662432 (= res!430579 (not (noDuplicate!524 lt!309007)))))

(declare-fun b!662433 () Bool)

(declare-fun res!430581 () Bool)

(assert (=> b!662433 (=> (not res!430581) (not e!380261))))

(assert (=> b!662433 (= res!430581 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19004 a!3626))))))

(declare-fun b!662434 () Bool)

(declare-fun Unit!23009 () Unit!23006)

(assert (=> b!662434 (= e!380263 Unit!23009)))

(declare-fun lt!309009 () Unit!23006)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!38903 (_ BitVec 64) (_ BitVec 32)) Unit!23006)

(assert (=> b!662434 (= lt!309009 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!662434 false))

(declare-fun b!662435 () Bool)

(declare-fun res!430582 () Bool)

(assert (=> b!662435 (=> (not res!430582) (not e!380261))))

(assert (=> b!662435 (= res!430582 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!662436 () Bool)

(declare-fun res!430588 () Bool)

(assert (=> b!662436 (=> (not res!430588) (not e!380261))))

(assert (=> b!662436 (= res!430588 e!380258)))

(declare-fun res!430574 () Bool)

(assert (=> b!662436 (=> res!430574 e!380258)))

(assert (=> b!662436 (= res!430574 e!380259)))

(declare-fun res!430577 () Bool)

(assert (=> b!662436 (=> (not res!430577) (not e!380259))))

(assert (=> b!662436 (= res!430577 (bvsgt from!3004 i!1382))))

(declare-fun b!662424 () Bool)

(declare-fun res!430576 () Bool)

(assert (=> b!662424 (=> res!430576 e!380262)))

(assert (=> b!662424 (= res!430576 (contains!3277 lt!309007 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!430585 () Bool)

(assert (=> start!59900 (=> (not res!430585) (not e!380261))))

(assert (=> start!59900 (= res!430585 (and (bvslt (size!19004 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19004 a!3626))))))

(assert (=> start!59900 e!380261))

(assert (=> start!59900 true))

(declare-fun array_inv!14414 (array!38903) Bool)

(assert (=> start!59900 (array_inv!14414 a!3626)))

(declare-fun b!662437 () Bool)

(assert (=> b!662437 (= e!380260 (not (contains!3277 acc!681 k0!2843)))))

(declare-fun b!662438 () Bool)

(assert (=> b!662438 (= e!380261 (not e!380257))))

(declare-fun res!430592 () Bool)

(assert (=> b!662438 (=> res!430592 e!380257)))

(assert (=> b!662438 (= res!430592 (not (validKeyInArray!0 (select (arr!18640 a!3626) from!3004))))))

(declare-fun lt!309006 () Unit!23006)

(assert (=> b!662438 (= lt!309006 e!380263)))

(declare-fun c!76289 () Bool)

(assert (=> b!662438 (= c!76289 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!662438 (arrayContainsKey!0 (array!38904 (store (arr!18640 a!3626) i!1382 k0!2843) (size!19004 a!3626)) k0!2843 from!3004)))

(assert (= (and start!59900 res!430585) b!662425))

(assert (= (and b!662425 res!430573) b!662419))

(assert (= (and b!662419 res!430584) b!662429))

(assert (= (and b!662429 res!430583) b!662436))

(assert (= (and b!662436 res!430577) b!662428))

(assert (= (and b!662436 (not res!430574)) b!662422))

(assert (= (and b!662422 res!430575) b!662437))

(assert (= (and b!662436 res!430588) b!662431))

(assert (= (and b!662431 res!430591) b!662435))

(assert (= (and b!662435 res!430582) b!662433))

(assert (= (and b!662433 res!430581) b!662417))

(assert (= (and b!662417 res!430586) b!662420))

(assert (= (and b!662420 res!430580) b!662421))

(assert (= (and b!662421 res!430589) b!662438))

(assert (= (and b!662438 c!76289) b!662434))

(assert (= (and b!662438 (not c!76289)) b!662430))

(assert (= (and b!662438 (not res!430592)) b!662426))

(assert (= (and b!662426 (not res!430587)) b!662432))

(assert (= (and b!662432 (not res!430579)) b!662424))

(assert (= (and b!662424 (not res!430576)) b!662423))

(assert (= (and b!662423 (not res!430578)) b!662418))

(assert (= (and b!662418 (not res!430590)) b!662427))

(declare-fun m!634275 () Bool)

(assert (=> start!59900 m!634275))

(declare-fun m!634277 () Bool)

(assert (=> b!662427 m!634277))

(declare-fun m!634279 () Bool)

(assert (=> b!662427 m!634279))

(declare-fun m!634281 () Bool)

(assert (=> b!662432 m!634281))

(declare-fun m!634283 () Bool)

(assert (=> b!662420 m!634283))

(declare-fun m!634285 () Bool)

(assert (=> b!662435 m!634285))

(declare-fun m!634287 () Bool)

(assert (=> b!662426 m!634287))

(assert (=> b!662426 m!634287))

(declare-fun m!634289 () Bool)

(assert (=> b!662426 m!634289))

(declare-fun m!634291 () Bool)

(assert (=> b!662426 m!634291))

(declare-fun m!634293 () Bool)

(assert (=> b!662426 m!634293))

(declare-fun m!634295 () Bool)

(assert (=> b!662437 m!634295))

(declare-fun m!634297 () Bool)

(assert (=> b!662424 m!634297))

(declare-fun m!634299 () Bool)

(assert (=> b!662429 m!634299))

(assert (=> b!662438 m!634287))

(declare-fun m!634301 () Bool)

(assert (=> b!662438 m!634301))

(declare-fun m!634303 () Bool)

(assert (=> b!662438 m!634303))

(assert (=> b!662438 m!634287))

(declare-fun m!634305 () Bool)

(assert (=> b!662438 m!634305))

(declare-fun m!634307 () Bool)

(assert (=> b!662438 m!634307))

(declare-fun m!634309 () Bool)

(assert (=> b!662423 m!634309))

(declare-fun m!634311 () Bool)

(assert (=> b!662418 m!634311))

(declare-fun m!634313 () Bool)

(assert (=> b!662417 m!634313))

(declare-fun m!634315 () Bool)

(assert (=> b!662431 m!634315))

(assert (=> b!662428 m!634295))

(declare-fun m!634317 () Bool)

(assert (=> b!662425 m!634317))

(declare-fun m!634319 () Bool)

(assert (=> b!662434 m!634319))

(declare-fun m!634321 () Bool)

(assert (=> b!662419 m!634321))

(check-sat (not b!662435) (not b!662419) (not b!662423) (not b!662425) (not b!662437) (not b!662418) (not b!662429) (not b!662438) (not b!662424) (not b!662431) (not b!662428) (not b!662426) (not b!662434) (not b!662420) (not start!59900) (not b!662432) (not b!662417) (not b!662427))
(check-sat)
