; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!61580 () Bool)

(assert start!61580)

(declare-fun b!688349 () Bool)

(declare-fun e!392053 () Bool)

(declare-datatypes ((List!13100 0))(
  ( (Nil!13097) (Cons!13096 (h!14141 (_ BitVec 64)) (t!19372 List!13100)) )
))
(declare-fun acc!681 () List!13100)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3643 (List!13100 (_ BitVec 64)) Bool)

(assert (=> b!688349 (= e!392053 (contains!3643 acc!681 k0!2843))))

(declare-fun b!688350 () Bool)

(declare-fun res!453217 () Bool)

(declare-fun e!392052 () Bool)

(assert (=> b!688350 (=> (not res!453217) (not e!392052))))

(assert (=> b!688350 (= res!453217 (not (contains!3643 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688351 () Bool)

(declare-datatypes ((Unit!24267 0))(
  ( (Unit!24268) )
))
(declare-fun e!392056 () Unit!24267)

(declare-fun Unit!24269 () Unit!24267)

(assert (=> b!688351 (= e!392056 Unit!24269)))

(declare-fun b!688352 () Bool)

(declare-fun res!453215 () Bool)

(assert (=> b!688352 (=> (not res!453215) (not e!392052))))

(declare-fun i!1382 () (_ BitVec 32))

(declare-datatypes ((array!39677 0))(
  ( (array!39678 (arr!19006 (Array (_ BitVec 32) (_ BitVec 64))) (size!19387 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39677)

(assert (=> b!688352 (= res!453215 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19387 a!3626))))))

(declare-fun b!688353 () Bool)

(declare-fun res!453209 () Bool)

(assert (=> b!688353 (=> (not res!453209) (not e!392052))))

(declare-fun noDuplicate!890 (List!13100) Bool)

(assert (=> b!688353 (= res!453209 (noDuplicate!890 acc!681))))

(declare-fun b!688354 () Bool)

(declare-fun e!392051 () Bool)

(assert (=> b!688354 (= e!392052 (not e!392051))))

(declare-fun res!453210 () Bool)

(assert (=> b!688354 (=> res!453210 e!392051)))

(declare-fun from!3004 () (_ BitVec 32))

(assert (=> b!688354 (= res!453210 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun lt!315763 () List!13100)

(declare-fun arrayNoDuplicates!0 (array!39677 (_ BitVec 32) List!13100) Bool)

(assert (=> b!688354 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!315763)))

(declare-fun lt!315767 () Unit!24267)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39677 (_ BitVec 64) (_ BitVec 32) List!13100 List!13100) Unit!24267)

(assert (=> b!688354 (= lt!315767 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!315763))))

(declare-fun -!193 (List!13100 (_ BitVec 64)) List!13100)

(assert (=> b!688354 (= (-!193 lt!315763 k0!2843) acc!681)))

(declare-fun $colon$colon!392 (List!13100 (_ BitVec 64)) List!13100)

(assert (=> b!688354 (= lt!315763 ($colon$colon!392 acc!681 k0!2843))))

(declare-fun lt!315762 () Unit!24267)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!13100) Unit!24267)

(assert (=> b!688354 (= lt!315762 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(declare-fun subseq!228 (List!13100 List!13100) Bool)

(assert (=> b!688354 (subseq!228 acc!681 acc!681)))

(declare-fun lt!315766 () Unit!24267)

(declare-fun lemmaListSubSeqRefl!0 (List!13100) Unit!24267)

(assert (=> b!688354 (= lt!315766 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688354 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!315764 () Unit!24267)

(assert (=> b!688354 (= lt!315764 e!392056)))

(declare-fun c!77939 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!688354 (= c!77939 (validKeyInArray!0 (select (arr!19006 a!3626) from!3004)))))

(declare-fun lt!315759 () Unit!24267)

(declare-fun e!392048 () Unit!24267)

(assert (=> b!688354 (= lt!315759 e!392048)))

(declare-fun c!77938 () Bool)

(declare-fun arrayContainsKey!0 (array!39677 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!688354 (= c!77938 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688354 (arrayContainsKey!0 (array!39678 (store (arr!19006 a!3626) i!1382 k0!2843) (size!19387 a!3626)) k0!2843 from!3004)))

(declare-fun b!688355 () Bool)

(declare-fun Unit!24270 () Unit!24267)

(assert (=> b!688355 (= e!392048 Unit!24270)))

(declare-fun b!688356 () Bool)

(declare-fun e!392047 () Bool)

(assert (=> b!688356 (= e!392047 (not (contains!3643 acc!681 k0!2843)))))

(declare-fun b!688357 () Bool)

(declare-fun Unit!24271 () Unit!24267)

(assert (=> b!688357 (= e!392048 Unit!24271)))

(declare-fun lt!315760 () Unit!24267)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39677 (_ BitVec 64) (_ BitVec 32)) Unit!24267)

(assert (=> b!688357 (= lt!315760 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!688357 false))

(declare-fun b!688358 () Bool)

(declare-fun res!453216 () Bool)

(assert (=> b!688358 (=> res!453216 e!392051)))

(assert (=> b!688358 (= res!453216 (contains!3643 lt!315763 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688359 () Bool)

(assert (=> b!688359 (= e!392051 true)))

(declare-fun lt!315761 () Bool)

(declare-fun e!392046 () Bool)

(assert (=> b!688359 (= lt!315761 e!392046)))

(declare-fun res!453219 () Bool)

(assert (=> b!688359 (=> res!453219 e!392046)))

(declare-fun e!392049 () Bool)

(assert (=> b!688359 (= res!453219 e!392049)))

(declare-fun res!453227 () Bool)

(assert (=> b!688359 (=> (not res!453227) (not e!392049))))

(assert (=> b!688359 (= res!453227 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!688360 () Bool)

(declare-fun res!453225 () Bool)

(assert (=> b!688360 (=> res!453225 e!392051)))

(assert (=> b!688360 (= res!453225 (not (noDuplicate!890 lt!315763)))))

(declare-fun b!688361 () Bool)

(declare-fun res!453212 () Bool)

(assert (=> b!688361 (=> (not res!453212) (not e!392052))))

(assert (=> b!688361 (= res!453212 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13097))))

(declare-fun b!688362 () Bool)

(assert (=> b!688362 (= e!392049 (contains!3643 lt!315763 k0!2843))))

(declare-fun b!688363 () Bool)

(declare-fun res!453207 () Bool)

(assert (=> b!688363 (=> (not res!453207) (not e!392052))))

(assert (=> b!688363 (= res!453207 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!688364 () Bool)

(declare-fun res!453223 () Bool)

(assert (=> b!688364 (=> res!453223 e!392051)))

(assert (=> b!688364 (= res!453223 (contains!3643 lt!315763 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!688365 () Bool)

(declare-fun res!453220 () Bool)

(assert (=> b!688365 (=> (not res!453220) (not e!392052))))

(declare-fun e!392054 () Bool)

(assert (=> b!688365 (= res!453220 e!392054)))

(declare-fun res!453218 () Bool)

(assert (=> b!688365 (=> res!453218 e!392054)))

(assert (=> b!688365 (= res!453218 e!392053)))

(declare-fun res!453208 () Bool)

(assert (=> b!688365 (=> (not res!453208) (not e!392053))))

(assert (=> b!688365 (= res!453208 (bvsgt from!3004 i!1382))))

(declare-fun b!688366 () Bool)

(declare-fun res!453226 () Bool)

(assert (=> b!688366 (=> (not res!453226) (not e!392052))))

(assert (=> b!688366 (= res!453226 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19387 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!453213 () Bool)

(assert (=> start!61580 (=> (not res!453213) (not e!392052))))

(assert (=> start!61580 (= res!453213 (and (bvslt (size!19387 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19387 a!3626))))))

(assert (=> start!61580 e!392052))

(assert (=> start!61580 true))

(declare-fun array_inv!14780 (array!39677) Bool)

(assert (=> start!61580 (array_inv!14780 a!3626)))

(declare-fun b!688367 () Bool)

(declare-fun lt!315765 () Unit!24267)

(assert (=> b!688367 (= e!392056 lt!315765)))

(declare-fun lt!315768 () Unit!24267)

(assert (=> b!688367 (= lt!315768 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!688367 (subseq!228 acc!681 acc!681)))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39677 List!13100 List!13100 (_ BitVec 32)) Unit!24267)

(assert (=> b!688367 (= lt!315765 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!392 acc!681 (select (arr!19006 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!688367 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!688368 () Bool)

(declare-fun e!392055 () Bool)

(assert (=> b!688368 (= e!392055 (not (contains!3643 lt!315763 k0!2843)))))

(declare-fun b!688369 () Bool)

(declare-fun res!453224 () Bool)

(assert (=> b!688369 (=> (not res!453224) (not e!392052))))

(assert (=> b!688369 (= res!453224 (not (contains!3643 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!688370 () Bool)

(declare-fun res!453211 () Bool)

(assert (=> b!688370 (=> (not res!453211) (not e!392052))))

(assert (=> b!688370 (= res!453211 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!688371 () Bool)

(assert (=> b!688371 (= e!392054 e!392047)))

(declare-fun res!453221 () Bool)

(assert (=> b!688371 (=> (not res!453221) (not e!392047))))

(assert (=> b!688371 (= res!453221 (bvsle from!3004 i!1382))))

(declare-fun b!688372 () Bool)

(declare-fun res!453214 () Bool)

(assert (=> b!688372 (=> (not res!453214) (not e!392052))))

(assert (=> b!688372 (= res!453214 (validKeyInArray!0 k0!2843))))

(declare-fun b!688373 () Bool)

(assert (=> b!688373 (= e!392046 e!392055)))

(declare-fun res!453222 () Bool)

(assert (=> b!688373 (=> (not res!453222) (not e!392055))))

(assert (=> b!688373 (= res!453222 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(assert (= (and start!61580 res!453213) b!688353))

(assert (= (and b!688353 res!453209) b!688350))

(assert (= (and b!688350 res!453217) b!688369))

(assert (= (and b!688369 res!453224) b!688365))

(assert (= (and b!688365 res!453208) b!688349))

(assert (= (and b!688365 (not res!453218)) b!688371))

(assert (= (and b!688371 res!453221) b!688356))

(assert (= (and b!688365 res!453220) b!688361))

(assert (= (and b!688361 res!453212) b!688363))

(assert (= (and b!688363 res!453207) b!688352))

(assert (= (and b!688352 res!453215) b!688372))

(assert (= (and b!688372 res!453214) b!688370))

(assert (= (and b!688370 res!453211) b!688366))

(assert (= (and b!688366 res!453226) b!688354))

(assert (= (and b!688354 c!77938) b!688357))

(assert (= (and b!688354 (not c!77938)) b!688355))

(assert (= (and b!688354 c!77939) b!688367))

(assert (= (and b!688354 (not c!77939)) b!688351))

(assert (= (and b!688354 (not res!453210)) b!688360))

(assert (= (and b!688360 (not res!453225)) b!688364))

(assert (= (and b!688364 (not res!453223)) b!688358))

(assert (= (and b!688358 (not res!453216)) b!688359))

(assert (= (and b!688359 res!453227) b!688362))

(assert (= (and b!688359 (not res!453219)) b!688373))

(assert (= (and b!688373 res!453222) b!688368))

(declare-fun m!652285 () Bool)

(assert (=> b!688360 m!652285))

(declare-fun m!652287 () Bool)

(assert (=> b!688353 m!652287))

(declare-fun m!652289 () Bool)

(assert (=> b!688370 m!652289))

(declare-fun m!652291 () Bool)

(assert (=> b!688372 m!652291))

(declare-fun m!652293 () Bool)

(assert (=> b!688368 m!652293))

(declare-fun m!652295 () Bool)

(assert (=> b!688350 m!652295))

(declare-fun m!652297 () Bool)

(assert (=> b!688358 m!652297))

(declare-fun m!652299 () Bool)

(assert (=> b!688357 m!652299))

(declare-fun m!652301 () Bool)

(assert (=> b!688354 m!652301))

(declare-fun m!652303 () Bool)

(assert (=> b!688354 m!652303))

(declare-fun m!652305 () Bool)

(assert (=> b!688354 m!652305))

(declare-fun m!652307 () Bool)

(assert (=> b!688354 m!652307))

(declare-fun m!652309 () Bool)

(assert (=> b!688354 m!652309))

(declare-fun m!652311 () Bool)

(assert (=> b!688354 m!652311))

(declare-fun m!652313 () Bool)

(assert (=> b!688354 m!652313))

(declare-fun m!652315 () Bool)

(assert (=> b!688354 m!652315))

(declare-fun m!652317 () Bool)

(assert (=> b!688354 m!652317))

(declare-fun m!652319 () Bool)

(assert (=> b!688354 m!652319))

(assert (=> b!688354 m!652303))

(declare-fun m!652321 () Bool)

(assert (=> b!688354 m!652321))

(declare-fun m!652323 () Bool)

(assert (=> b!688354 m!652323))

(declare-fun m!652325 () Bool)

(assert (=> b!688354 m!652325))

(declare-fun m!652327 () Bool)

(assert (=> b!688364 m!652327))

(assert (=> b!688362 m!652293))

(declare-fun m!652329 () Bool)

(assert (=> b!688363 m!652329))

(declare-fun m!652331 () Bool)

(assert (=> b!688361 m!652331))

(declare-fun m!652333 () Bool)

(assert (=> b!688369 m!652333))

(declare-fun m!652335 () Bool)

(assert (=> b!688356 m!652335))

(assert (=> b!688349 m!652335))

(declare-fun m!652337 () Bool)

(assert (=> start!61580 m!652337))

(assert (=> b!688367 m!652301))

(assert (=> b!688367 m!652303))

(declare-fun m!652339 () Bool)

(assert (=> b!688367 m!652339))

(declare-fun m!652341 () Bool)

(assert (=> b!688367 m!652341))

(assert (=> b!688367 m!652303))

(assert (=> b!688367 m!652339))

(assert (=> b!688367 m!652313))

(assert (=> b!688367 m!652325))

(check-sat (not b!688350) (not b!688372) (not b!688368) (not b!688367) (not b!688357) (not start!61580) (not b!688349) (not b!688361) (not b!688354) (not b!688370) (not b!688362) (not b!688363) (not b!688364) (not b!688360) (not b!688353) (not b!688369) (not b!688358) (not b!688356))
