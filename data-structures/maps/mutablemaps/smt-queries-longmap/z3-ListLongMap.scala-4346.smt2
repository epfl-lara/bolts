; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60122 () Bool)

(assert start!60122)

(declare-fun b!670366 () Bool)

(declare-datatypes ((Unit!23550 0))(
  ( (Unit!23551) )
))
(declare-fun e!383272 () Unit!23550)

(declare-fun lt!312040 () Unit!23550)

(assert (=> b!670366 (= e!383272 lt!312040)))

(declare-fun lt!312041 () Unit!23550)

(declare-datatypes ((List!12845 0))(
  ( (Nil!12842) (Cons!12841 (h!13886 (_ BitVec 64)) (t!19081 List!12845)) )
))
(declare-fun acc!681 () List!12845)

(declare-fun lemmaListSubSeqRefl!0 (List!12845) Unit!23550)

(assert (=> b!670366 (= lt!312041 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!126 (List!12845 List!12845) Bool)

(assert (=> b!670366 (subseq!126 acc!681 acc!681)))

(declare-datatypes ((array!39125 0))(
  ( (array!39126 (arr!18751 (Array (_ BitVec 32) (_ BitVec 64))) (size!19115 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39125)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39125 List!12845 List!12845 (_ BitVec 32)) Unit!23550)

(declare-fun $colon$colon!257 (List!12845 (_ BitVec 64)) List!12845)

(assert (=> b!670366 (= lt!312040 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!257 acc!681 (select (arr!18751 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39125 (_ BitVec 32) List!12845) Bool)

(assert (=> b!670366 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!670367 () Bool)

(declare-fun e!383268 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3388 (List!12845 (_ BitVec 64)) Bool)

(assert (=> b!670367 (= e!383268 (not (contains!3388 acc!681 k0!2843)))))

(declare-fun b!670368 () Bool)

(declare-fun e!383273 () Unit!23550)

(declare-fun Unit!23552 () Unit!23550)

(assert (=> b!670368 (= e!383273 Unit!23552)))

(declare-fun lt!312036 () Unit!23550)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39125 (_ BitVec 64) (_ BitVec 32)) Unit!23550)

(assert (=> b!670368 (= lt!312036 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!670368 false))

(declare-fun b!670369 () Bool)

(declare-fun res!437260 () Bool)

(declare-fun e!383270 () Bool)

(assert (=> b!670369 (=> (not res!437260) (not e!383270))))

(assert (=> b!670369 (= res!437260 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12842))))

(declare-fun b!670370 () Bool)

(declare-fun res!437264 () Bool)

(assert (=> b!670370 (=> (not res!437264) (not e!383270))))

(assert (=> b!670370 (= res!437264 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!670371 () Bool)

(declare-fun res!437258 () Bool)

(declare-fun e!383276 () Bool)

(assert (=> b!670371 (=> res!437258 e!383276)))

(declare-fun lt!312038 () List!12845)

(assert (=> b!670371 (= res!437258 (contains!3388 lt!312038 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!670372 () Bool)

(declare-fun res!437268 () Bool)

(assert (=> b!670372 (=> (not res!437268) (not e!383270))))

(assert (=> b!670372 (= res!437268 (not (contains!3388 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670373 () Bool)

(declare-fun Unit!23553 () Unit!23550)

(assert (=> b!670373 (= e!383273 Unit!23553)))

(declare-fun b!670374 () Bool)

(declare-fun res!437266 () Bool)

(assert (=> b!670374 (=> (not res!437266) (not e!383270))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!670374 (= res!437266 (validKeyInArray!0 k0!2843))))

(declare-fun b!670375 () Bool)

(declare-fun e!383275 () Bool)

(assert (=> b!670375 (= e!383275 e!383268)))

(declare-fun res!437255 () Bool)

(assert (=> b!670375 (=> (not res!437255) (not e!383268))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!670375 (= res!437255 (bvsle from!3004 i!1382))))

(declare-fun b!670376 () Bool)

(declare-fun e!383278 () Bool)

(assert (=> b!670376 (= e!383278 (contains!3388 lt!312038 k0!2843))))

(declare-fun b!670378 () Bool)

(declare-fun e!383271 () Bool)

(assert (=> b!670378 (= e!383271 e!383278)))

(declare-fun res!437261 () Bool)

(assert (=> b!670378 (=> res!437261 e!383278)))

(assert (=> b!670378 (= res!437261 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun res!437252 () Bool)

(assert (=> start!60122 (=> (not res!437252) (not e!383270))))

(assert (=> start!60122 (= res!437252 (and (bvslt (size!19115 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19115 a!3626))))))

(assert (=> start!60122 e!383270))

(assert (=> start!60122 true))

(declare-fun array_inv!14525 (array!39125) Bool)

(assert (=> start!60122 (array_inv!14525 a!3626)))

(declare-fun b!670377 () Bool)

(declare-fun e!383269 () Bool)

(assert (=> b!670377 (= e!383269 (not (contains!3388 lt!312038 k0!2843)))))

(declare-fun b!670379 () Bool)

(assert (=> b!670379 (= e!383270 (not e!383276))))

(declare-fun res!437273 () Bool)

(assert (=> b!670379 (=> res!437273 e!383276)))

(assert (=> b!670379 (= res!437273 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!670379 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312038)))

(declare-fun lt!312039 () Unit!23550)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39125 (_ BitVec 64) (_ BitVec 32) List!12845 List!12845) Unit!23550)

(assert (=> b!670379 (= lt!312039 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!312038))))

(declare-fun -!124 (List!12845 (_ BitVec 64)) List!12845)

(assert (=> b!670379 (= (-!124 lt!312038 k0!2843) acc!681)))

(assert (=> b!670379 (= lt!312038 ($colon$colon!257 acc!681 k0!2843))))

(declare-fun lt!312035 () Unit!23550)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12845) Unit!23550)

(assert (=> b!670379 (= lt!312035 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!670379 (subseq!126 acc!681 acc!681)))

(declare-fun lt!312042 () Unit!23550)

(assert (=> b!670379 (= lt!312042 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!670379 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!312044 () Unit!23550)

(assert (=> b!670379 (= lt!312044 e!383272)))

(declare-fun c!76924 () Bool)

(assert (=> b!670379 (= c!76924 (validKeyInArray!0 (select (arr!18751 a!3626) from!3004)))))

(declare-fun lt!312037 () Unit!23550)

(assert (=> b!670379 (= lt!312037 e!383273)))

(declare-fun c!76925 () Bool)

(declare-fun arrayContainsKey!0 (array!39125 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!670379 (= c!76925 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun lt!312045 () array!39125)

(assert (=> b!670379 (arrayContainsKey!0 lt!312045 k0!2843 from!3004)))

(assert (=> b!670379 (= lt!312045 (array!39126 (store (arr!18751 a!3626) i!1382 k0!2843) (size!19115 a!3626)))))

(declare-fun b!670380 () Bool)

(declare-fun res!437262 () Bool)

(assert (=> b!670380 (=> res!437262 e!383276)))

(assert (=> b!670380 (= res!437262 (contains!3388 lt!312038 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!670381 () Bool)

(declare-fun res!437267 () Bool)

(assert (=> b!670381 (=> (not res!437267) (not e!383270))))

(assert (=> b!670381 (= res!437267 e!383275)))

(declare-fun res!437271 () Bool)

(assert (=> b!670381 (=> res!437271 e!383275)))

(declare-fun e!383277 () Bool)

(assert (=> b!670381 (= res!437271 e!383277)))

(declare-fun res!437254 () Bool)

(assert (=> b!670381 (=> (not res!437254) (not e!383277))))

(assert (=> b!670381 (= res!437254 (bvsgt from!3004 i!1382))))

(declare-fun b!670382 () Bool)

(declare-fun res!437257 () Bool)

(assert (=> b!670382 (=> (not res!437257) (not e!383270))))

(assert (=> b!670382 (= res!437257 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!670383 () Bool)

(declare-fun res!437269 () Bool)

(assert (=> b!670383 (=> (not res!437269) (not e!383270))))

(assert (=> b!670383 (= res!437269 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19115 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!670384 () Bool)

(declare-fun res!437253 () Bool)

(assert (=> b!670384 (=> (not res!437253) (not e!383270))))

(declare-fun noDuplicate!635 (List!12845) Bool)

(assert (=> b!670384 (= res!437253 (noDuplicate!635 acc!681))))

(declare-fun b!670385 () Bool)

(declare-fun Unit!23554 () Unit!23550)

(assert (=> b!670385 (= e!383272 Unit!23554)))

(declare-fun b!670386 () Bool)

(declare-fun res!437270 () Bool)

(assert (=> b!670386 (=> res!437270 e!383276)))

(assert (=> b!670386 (= res!437270 e!383271)))

(declare-fun res!437272 () Bool)

(assert (=> b!670386 (=> (not res!437272) (not e!383271))))

(assert (=> b!670386 (= res!437272 e!383269)))

(declare-fun res!437263 () Bool)

(assert (=> b!670386 (=> res!437263 e!383269)))

(assert (=> b!670386 (= res!437263 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!670387 () Bool)

(assert (=> b!670387 (= e!383277 (contains!3388 acc!681 k0!2843))))

(declare-fun b!670388 () Bool)

(declare-fun res!437259 () Bool)

(assert (=> b!670388 (=> (not res!437259) (not e!383270))))

(assert (=> b!670388 (= res!437259 (not (contains!3388 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!670389 () Bool)

(declare-fun res!437256 () Bool)

(assert (=> b!670389 (=> (not res!437256) (not e!383270))))

(assert (=> b!670389 (= res!437256 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19115 a!3626))))))

(declare-fun b!670390 () Bool)

(declare-fun res!437265 () Bool)

(assert (=> b!670390 (=> res!437265 e!383276)))

(assert (=> b!670390 (= res!437265 (not (noDuplicate!635 lt!312038)))))

(declare-fun b!670391 () Bool)

(assert (=> b!670391 (= e!383276 true)))

(assert (=> b!670391 (arrayNoDuplicates!0 lt!312045 (bvadd #b00000000000000000000000000000001 from!3004) lt!312038)))

(declare-fun lt!312043 () Unit!23550)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!39125 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!12845) Unit!23550)

(assert (=> b!670391 (= lt!312043 (lemmaPutNewValidKeyPreservesNoDuplicate!0 a!3626 k0!2843 i!1382 (bvadd #b00000000000000000000000000000001 from!3004) lt!312038))))

(assert (= (and start!60122 res!437252) b!670384))

(assert (= (and b!670384 res!437253) b!670372))

(assert (= (and b!670372 res!437268) b!670388))

(assert (= (and b!670388 res!437259) b!670381))

(assert (= (and b!670381 res!437254) b!670387))

(assert (= (and b!670381 (not res!437271)) b!670375))

(assert (= (and b!670375 res!437255) b!670367))

(assert (= (and b!670381 res!437267) b!670369))

(assert (= (and b!670369 res!437260) b!670370))

(assert (= (and b!670370 res!437264) b!670389))

(assert (= (and b!670389 res!437256) b!670374))

(assert (= (and b!670374 res!437266) b!670382))

(assert (= (and b!670382 res!437257) b!670383))

(assert (= (and b!670383 res!437269) b!670379))

(assert (= (and b!670379 c!76925) b!670368))

(assert (= (and b!670379 (not c!76925)) b!670373))

(assert (= (and b!670379 c!76924) b!670366))

(assert (= (and b!670379 (not c!76924)) b!670385))

(assert (= (and b!670379 (not res!437273)) b!670390))

(assert (= (and b!670390 (not res!437265)) b!670380))

(assert (= (and b!670380 (not res!437262)) b!670371))

(assert (= (and b!670371 (not res!437258)) b!670386))

(assert (= (and b!670386 (not res!437263)) b!670377))

(assert (= (and b!670386 res!437272) b!670378))

(assert (= (and b!670378 (not res!437261)) b!670376))

(assert (= (and b!670386 (not res!437270)) b!670391))

(declare-fun m!640289 () Bool)

(assert (=> b!670369 m!640289))

(declare-fun m!640291 () Bool)

(assert (=> b!670379 m!640291))

(declare-fun m!640293 () Bool)

(assert (=> b!670379 m!640293))

(declare-fun m!640295 () Bool)

(assert (=> b!670379 m!640295))

(declare-fun m!640297 () Bool)

(assert (=> b!670379 m!640297))

(declare-fun m!640299 () Bool)

(assert (=> b!670379 m!640299))

(declare-fun m!640301 () Bool)

(assert (=> b!670379 m!640301))

(declare-fun m!640303 () Bool)

(assert (=> b!670379 m!640303))

(declare-fun m!640305 () Bool)

(assert (=> b!670379 m!640305))

(declare-fun m!640307 () Bool)

(assert (=> b!670379 m!640307))

(assert (=> b!670379 m!640293))

(declare-fun m!640309 () Bool)

(assert (=> b!670379 m!640309))

(declare-fun m!640311 () Bool)

(assert (=> b!670379 m!640311))

(declare-fun m!640313 () Bool)

(assert (=> b!670379 m!640313))

(declare-fun m!640315 () Bool)

(assert (=> b!670379 m!640315))

(assert (=> b!670366 m!640291))

(assert (=> b!670366 m!640293))

(declare-fun m!640317 () Bool)

(assert (=> b!670366 m!640317))

(declare-fun m!640319 () Bool)

(assert (=> b!670366 m!640319))

(assert (=> b!670366 m!640293))

(assert (=> b!670366 m!640317))

(assert (=> b!670366 m!640301))

(assert (=> b!670366 m!640311))

(declare-fun m!640321 () Bool)

(assert (=> b!670384 m!640321))

(declare-fun m!640323 () Bool)

(assert (=> start!60122 m!640323))

(declare-fun m!640325 () Bool)

(assert (=> b!670380 m!640325))

(declare-fun m!640327 () Bool)

(assert (=> b!670370 m!640327))

(declare-fun m!640329 () Bool)

(assert (=> b!670368 m!640329))

(declare-fun m!640331 () Bool)

(assert (=> b!670367 m!640331))

(declare-fun m!640333 () Bool)

(assert (=> b!670391 m!640333))

(declare-fun m!640335 () Bool)

(assert (=> b!670391 m!640335))

(declare-fun m!640337 () Bool)

(assert (=> b!670377 m!640337))

(assert (=> b!670387 m!640331))

(declare-fun m!640339 () Bool)

(assert (=> b!670372 m!640339))

(declare-fun m!640341 () Bool)

(assert (=> b!670382 m!640341))

(declare-fun m!640343 () Bool)

(assert (=> b!670390 m!640343))

(assert (=> b!670376 m!640337))

(declare-fun m!640345 () Bool)

(assert (=> b!670374 m!640345))

(declare-fun m!640347 () Bool)

(assert (=> b!670388 m!640347))

(declare-fun m!640349 () Bool)

(assert (=> b!670371 m!640349))

(check-sat (not b!670377) (not b!670387) (not b!670390) (not start!60122) (not b!670370) (not b!670367) (not b!670382) (not b!670388) (not b!670371) (not b!670372) (not b!670374) (not b!670391) (not b!670368) (not b!670379) (not b!670384) (not b!670366) (not b!670369) (not b!670380) (not b!670376))
