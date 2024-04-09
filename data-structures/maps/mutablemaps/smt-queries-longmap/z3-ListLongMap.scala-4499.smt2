; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!62480 () Bool)

(assert start!62480)

(declare-fun b!702277 () Bool)

(declare-fun res!466284 () Bool)

(declare-fun e!397399 () Bool)

(assert (=> b!702277 (=> (not res!466284) (not e!397399))))

(declare-datatypes ((array!40115 0))(
  ( (array!40116 (arr!19210 (Array (_ BitVec 32) (_ BitVec 64))) (size!19593 (_ BitVec 32))) )
))
(declare-fun a!3591 () array!40115)

(declare-fun from!2969 () (_ BitVec 32))

(declare-datatypes ((List!13304 0))(
  ( (Nil!13301) (Cons!13300 (h!14345 (_ BitVec 64)) (t!19594 List!13304)) )
))
(declare-fun acc!652 () List!13304)

(declare-fun arrayNoDuplicates!0 (array!40115 (_ BitVec 32) List!13304) Bool)

(assert (=> b!702277 (= res!466284 (arrayNoDuplicates!0 a!3591 from!2969 acc!652))))

(declare-fun b!702278 () Bool)

(declare-fun res!466268 () Bool)

(assert (=> b!702278 (=> (not res!466268) (not e!397399))))

(declare-fun k0!2824 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!40115 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!702278 (= res!466268 (not (arrayContainsKey!0 a!3591 k0!2824 from!2969)))))

(declare-fun b!702279 () Bool)

(declare-fun res!466285 () Bool)

(assert (=> b!702279 (=> (not res!466285) (not e!397399))))

(declare-fun newAcc!49 () List!13304)

(declare-fun contains!3847 (List!13304 (_ BitVec 64)) Bool)

(assert (=> b!702279 (= res!466285 (not (contains!3847 newAcc!49 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702280 () Bool)

(declare-fun e!397397 () Bool)

(assert (=> b!702280 (= e!397399 e!397397)))

(declare-fun res!466280 () Bool)

(assert (=> b!702280 (=> (not res!466280) (not e!397397))))

(assert (=> b!702280 (= res!466280 (bvsge (bvadd #b00000000000000000000000000000001 from!2969) #b00000000000000000000000000000000))))

(declare-fun lt!317648 () List!13304)

(declare-fun $colon$colon!488 (List!13304 (_ BitVec 64)) List!13304)

(assert (=> b!702280 (= lt!317648 ($colon$colon!488 newAcc!49 (select (arr!19210 a!3591) from!2969)))))

(declare-fun lt!317649 () List!13304)

(assert (=> b!702280 (= lt!317649 ($colon$colon!488 acc!652 (select (arr!19210 a!3591) from!2969)))))

(declare-fun b!702282 () Bool)

(declare-fun res!466272 () Bool)

(assert (=> b!702282 (=> (not res!466272) (not e!397397))))

(assert (=> b!702282 (= res!466272 (not (contains!3847 lt!317649 k0!2824)))))

(declare-fun b!702283 () Bool)

(declare-fun res!466266 () Bool)

(assert (=> b!702283 (=> (not res!466266) (not e!397397))))

(assert (=> b!702283 (= res!466266 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317649))))

(declare-fun b!702284 () Bool)

(declare-fun res!466281 () Bool)

(assert (=> b!702284 (=> (not res!466281) (not e!397397))))

(assert (=> b!702284 (= res!466281 (contains!3847 lt!317648 k0!2824))))

(declare-fun b!702285 () Bool)

(declare-fun res!466270 () Bool)

(assert (=> b!702285 (=> (not res!466270) (not e!397397))))

(assert (=> b!702285 (= res!466270 (not (contains!3847 lt!317649 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702286 () Bool)

(declare-fun res!466282 () Bool)

(assert (=> b!702286 (=> (not res!466282) (not e!397399))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!702286 (= res!466282 (validKeyInArray!0 k0!2824))))

(declare-fun b!702287 () Bool)

(declare-fun res!466276 () Bool)

(assert (=> b!702287 (=> (not res!466276) (not e!397399))))

(assert (=> b!702287 (= res!466276 (not (contains!3847 acc!652 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702288 () Bool)

(declare-fun res!466277 () Bool)

(assert (=> b!702288 (=> (not res!466277) (not e!397397))))

(assert (=> b!702288 (= res!466277 (not (contains!3847 lt!317649 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702289 () Bool)

(declare-fun res!466265 () Bool)

(assert (=> b!702289 (=> (not res!466265) (not e!397399))))

(assert (=> b!702289 (= res!466265 (validKeyInArray!0 (select (arr!19210 a!3591) from!2969)))))

(declare-fun b!702290 () Bool)

(declare-fun res!466261 () Bool)

(assert (=> b!702290 (=> (not res!466261) (not e!397397))))

(declare-fun noDuplicate!1094 (List!13304) Bool)

(assert (=> b!702290 (= res!466261 (noDuplicate!1094 lt!317648))))

(declare-fun b!702291 () Bool)

(declare-fun res!466286 () Bool)

(assert (=> b!702291 (=> (not res!466286) (not e!397399))))

(assert (=> b!702291 (= res!466286 (bvslt (bvadd #b00000000000000000000000000000001 from!2969) (size!19593 a!3591)))))

(declare-fun b!702292 () Bool)

(declare-fun res!466271 () Bool)

(assert (=> b!702292 (=> (not res!466271) (not e!397399))))

(assert (=> b!702292 (= res!466271 (not (contains!3847 newAcc!49 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702293 () Bool)

(declare-fun res!466262 () Bool)

(assert (=> b!702293 (=> (not res!466262) (not e!397397))))

(assert (=> b!702293 (= res!466262 (noDuplicate!1094 lt!317649))))

(declare-fun b!702294 () Bool)

(declare-fun res!466283 () Bool)

(assert (=> b!702294 (=> (not res!466283) (not e!397399))))

(assert (=> b!702294 (= res!466283 (noDuplicate!1094 acc!652))))

(declare-fun b!702295 () Bool)

(declare-fun res!466279 () Bool)

(assert (=> b!702295 (=> (not res!466279) (not e!397399))))

(declare-fun subseq!291 (List!13304 List!13304) Bool)

(assert (=> b!702295 (= res!466279 (subseq!291 acc!652 newAcc!49))))

(declare-fun b!702296 () Bool)

(declare-fun res!466274 () Bool)

(assert (=> b!702296 (=> (not res!466274) (not e!397397))))

(assert (=> b!702296 (= res!466274 (not (contains!3847 lt!317648 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702297 () Bool)

(assert (=> b!702297 (= e!397397 (not true))))

(assert (=> b!702297 (arrayNoDuplicates!0 a!3591 (bvadd #b00000000000000000000000000000001 from!2969) lt!317648)))

(declare-datatypes ((Unit!24570 0))(
  ( (Unit!24571) )
))
(declare-fun lt!317647 () Unit!24570)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!40115 (_ BitVec 64) (_ BitVec 32) List!13304 List!13304) Unit!24570)

(assert (=> b!702297 (= lt!317647 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969) lt!317649 lt!317648))))

(declare-fun res!466264 () Bool)

(assert (=> start!62480 (=> (not res!466264) (not e!397399))))

(assert (=> start!62480 (= res!466264 (and (bvslt (size!19593 a!3591) #b01111111111111111111111111111111) (bvsge from!2969 #b00000000000000000000000000000000) (bvslt from!2969 (size!19593 a!3591))))))

(assert (=> start!62480 e!397399))

(assert (=> start!62480 true))

(declare-fun array_inv!14984 (array!40115) Bool)

(assert (=> start!62480 (array_inv!14984 a!3591)))

(declare-fun b!702281 () Bool)

(declare-fun res!466269 () Bool)

(assert (=> b!702281 (=> (not res!466269) (not e!397399))))

(assert (=> b!702281 (= res!466269 (not (contains!3847 acc!652 k0!2824)))))

(declare-fun b!702298 () Bool)

(declare-fun res!466289 () Bool)

(assert (=> b!702298 (=> (not res!466289) (not e!397397))))

(assert (=> b!702298 (= res!466289 (not (contains!3847 lt!317648 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702299 () Bool)

(declare-fun res!466288 () Bool)

(assert (=> b!702299 (=> (not res!466288) (not e!397399))))

(assert (=> b!702299 (= res!466288 (contains!3847 newAcc!49 k0!2824))))

(declare-fun b!702300 () Bool)

(declare-fun res!466278 () Bool)

(assert (=> b!702300 (=> (not res!466278) (not e!397397))))

(declare-fun -!256 (List!13304 (_ BitVec 64)) List!13304)

(assert (=> b!702300 (= res!466278 (= (-!256 lt!317648 k0!2824) lt!317649))))

(declare-fun b!702301 () Bool)

(declare-fun res!466263 () Bool)

(assert (=> b!702301 (=> (not res!466263) (not e!397399))))

(assert (=> b!702301 (= res!466263 (not (contains!3847 acc!652 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!702302 () Bool)

(declare-fun res!466273 () Bool)

(assert (=> b!702302 (=> (not res!466273) (not e!397399))))

(assert (=> b!702302 (= res!466273 (noDuplicate!1094 newAcc!49))))

(declare-fun b!702303 () Bool)

(declare-fun res!466275 () Bool)

(assert (=> b!702303 (=> (not res!466275) (not e!397397))))

(assert (=> b!702303 (= res!466275 (not (arrayContainsKey!0 a!3591 k0!2824 (bvadd #b00000000000000000000000000000001 from!2969))))))

(declare-fun b!702304 () Bool)

(declare-fun res!466287 () Bool)

(assert (=> b!702304 (=> (not res!466287) (not e!397399))))

(assert (=> b!702304 (= res!466287 (= (-!256 newAcc!49 k0!2824) acc!652))))

(declare-fun b!702305 () Bool)

(declare-fun res!466267 () Bool)

(assert (=> b!702305 (=> (not res!466267) (not e!397397))))

(assert (=> b!702305 (= res!466267 (subseq!291 lt!317649 lt!317648))))

(assert (= (and start!62480 res!466264) b!702294))

(assert (= (and b!702294 res!466283) b!702302))

(assert (= (and b!702302 res!466273) b!702287))

(assert (= (and b!702287 res!466276) b!702301))

(assert (= (and b!702301 res!466263) b!702278))

(assert (= (and b!702278 res!466268) b!702281))

(assert (= (and b!702281 res!466269) b!702286))

(assert (= (and b!702286 res!466282) b!702277))

(assert (= (and b!702277 res!466284) b!702295))

(assert (= (and b!702295 res!466279) b!702299))

(assert (= (and b!702299 res!466288) b!702304))

(assert (= (and b!702304 res!466287) b!702292))

(assert (= (and b!702292 res!466271) b!702279))

(assert (= (and b!702279 res!466285) b!702291))

(assert (= (and b!702291 res!466286) b!702289))

(assert (= (and b!702289 res!466265) b!702280))

(assert (= (and b!702280 res!466280) b!702293))

(assert (= (and b!702293 res!466262) b!702290))

(assert (= (and b!702290 res!466261) b!702288))

(assert (= (and b!702288 res!466277) b!702285))

(assert (= (and b!702285 res!466270) b!702303))

(assert (= (and b!702303 res!466275) b!702282))

(assert (= (and b!702282 res!466272) b!702283))

(assert (= (and b!702283 res!466266) b!702305))

(assert (= (and b!702305 res!466267) b!702284))

(assert (= (and b!702284 res!466281) b!702300))

(assert (= (and b!702300 res!466278) b!702298))

(assert (= (and b!702298 res!466289) b!702296))

(assert (= (and b!702296 res!466274) b!702297))

(declare-fun m!661447 () Bool)

(assert (=> b!702288 m!661447))

(declare-fun m!661449 () Bool)

(assert (=> b!702298 m!661449))

(declare-fun m!661451 () Bool)

(assert (=> b!702300 m!661451))

(declare-fun m!661453 () Bool)

(assert (=> b!702302 m!661453))

(declare-fun m!661455 () Bool)

(assert (=> b!702290 m!661455))

(declare-fun m!661457 () Bool)

(assert (=> b!702305 m!661457))

(declare-fun m!661459 () Bool)

(assert (=> b!702301 m!661459))

(declare-fun m!661461 () Bool)

(assert (=> b!702285 m!661461))

(declare-fun m!661463 () Bool)

(assert (=> b!702282 m!661463))

(declare-fun m!661465 () Bool)

(assert (=> b!702295 m!661465))

(declare-fun m!661467 () Bool)

(assert (=> b!702279 m!661467))

(declare-fun m!661469 () Bool)

(assert (=> b!702284 m!661469))

(declare-fun m!661471 () Bool)

(assert (=> b!702281 m!661471))

(declare-fun m!661473 () Bool)

(assert (=> b!702294 m!661473))

(declare-fun m!661475 () Bool)

(assert (=> b!702278 m!661475))

(declare-fun m!661477 () Bool)

(assert (=> b!702289 m!661477))

(assert (=> b!702289 m!661477))

(declare-fun m!661479 () Bool)

(assert (=> b!702289 m!661479))

(declare-fun m!661481 () Bool)

(assert (=> b!702297 m!661481))

(declare-fun m!661483 () Bool)

(assert (=> b!702297 m!661483))

(declare-fun m!661485 () Bool)

(assert (=> start!62480 m!661485))

(declare-fun m!661487 () Bool)

(assert (=> b!702296 m!661487))

(declare-fun m!661489 () Bool)

(assert (=> b!702286 m!661489))

(declare-fun m!661491 () Bool)

(assert (=> b!702292 m!661491))

(declare-fun m!661493 () Bool)

(assert (=> b!702283 m!661493))

(declare-fun m!661495 () Bool)

(assert (=> b!702299 m!661495))

(declare-fun m!661497 () Bool)

(assert (=> b!702303 m!661497))

(declare-fun m!661499 () Bool)

(assert (=> b!702277 m!661499))

(declare-fun m!661501 () Bool)

(assert (=> b!702293 m!661501))

(assert (=> b!702280 m!661477))

(assert (=> b!702280 m!661477))

(declare-fun m!661503 () Bool)

(assert (=> b!702280 m!661503))

(assert (=> b!702280 m!661477))

(declare-fun m!661505 () Bool)

(assert (=> b!702280 m!661505))

(declare-fun m!661507 () Bool)

(assert (=> b!702287 m!661507))

(declare-fun m!661509 () Bool)

(assert (=> b!702304 m!661509))

(check-sat (not b!702297) (not b!702280) (not b!702300) (not b!702288) (not b!702279) (not b!702285) (not b!702282) (not b!702293) (not b!702287) (not b!702294) (not b!702283) (not b!702290) (not b!702277) (not b!702301) (not b!702305) (not b!702304) (not b!702296) (not b!702303) (not b!702292) (not b!702299) (not b!702298) (not b!702284) (not b!702286) (not b!702281) (not b!702278) (not start!62480) (not b!702289) (not b!702295) (not b!702302))
(check-sat)
