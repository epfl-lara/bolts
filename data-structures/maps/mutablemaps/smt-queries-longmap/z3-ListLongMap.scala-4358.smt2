; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60194 () Bool)

(assert start!60194)

(declare-fun b!672355 () Bool)

(declare-fun res!439165 () Bool)

(declare-fun e!384084 () Bool)

(assert (=> b!672355 (=> (not res!439165) (not e!384084))))

(declare-datatypes ((array!39197 0))(
  ( (array!39198 (arr!18787 (Array (_ BitVec 32) (_ BitVec 64))) (size!19151 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39197)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!12881 0))(
  ( (Nil!12878) (Cons!12877 (h!13922 (_ BitVec 64)) (t!19117 List!12881)) )
))
(declare-fun acc!681 () List!12881)

(declare-fun arrayNoDuplicates!0 (array!39197 (_ BitVec 32) List!12881) Bool)

(assert (=> b!672355 (= res!439165 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!672356 () Bool)

(declare-datatypes ((Unit!23612 0))(
  ( (Unit!23613) )
))
(declare-fun e!384081 () Unit!23612)

(declare-fun Unit!23614 () Unit!23612)

(assert (=> b!672356 (= e!384081 Unit!23614)))

(declare-fun b!672357 () Bool)

(declare-fun res!439147 () Bool)

(assert (=> b!672357 (=> (not res!439147) (not e!384084))))

(declare-fun contains!3424 (List!12881 (_ BitVec 64)) Bool)

(assert (=> b!672357 (= res!439147 (not (contains!3424 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672358 () Bool)

(declare-fun e!384088 () Bool)

(declare-fun e!384079 () Bool)

(assert (=> b!672358 (= e!384088 e!384079)))

(declare-fun res!439162 () Bool)

(assert (=> b!672358 (=> (not res!439162) (not e!384079))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!672358 (= res!439162 (bvsle from!3004 i!1382))))

(declare-fun b!672359 () Bool)

(declare-fun res!439164 () Bool)

(declare-fun e!384085 () Bool)

(assert (=> b!672359 (=> (not res!439164) (not e!384085))))

(declare-fun e!384080 () Bool)

(assert (=> b!672359 (= res!439164 e!384080)))

(declare-fun res!439156 () Bool)

(assert (=> b!672359 (=> res!439156 e!384080)))

(declare-fun e!384083 () Bool)

(assert (=> b!672359 (= res!439156 e!384083)))

(declare-fun res!439144 () Bool)

(assert (=> b!672359 (=> (not res!439144) (not e!384083))))

(assert (=> b!672359 (= res!439144 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672360 () Bool)

(declare-fun res!439150 () Bool)

(assert (=> b!672360 (=> (not res!439150) (not e!384084))))

(assert (=> b!672360 (= res!439150 (not (contains!3424 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!439157 () Bool)

(assert (=> start!60194 (=> (not res!439157) (not e!384084))))

(assert (=> start!60194 (= res!439157 (and (bvslt (size!19151 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19151 a!3626))))))

(assert (=> start!60194 e!384084))

(assert (=> start!60194 true))

(declare-fun array_inv!14561 (array!39197) Bool)

(assert (=> start!60194 (array_inv!14561 a!3626)))

(declare-fun b!672361 () Bool)

(declare-fun e!384086 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!672361 (= e!384086 (contains!3424 acc!681 k0!2843))))

(declare-fun b!672362 () Bool)

(declare-fun e!384082 () Bool)

(assert (=> b!672362 (= e!384080 e!384082)))

(declare-fun res!439146 () Bool)

(assert (=> b!672362 (=> (not res!439146) (not e!384082))))

(assert (=> b!672362 (= res!439146 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!672363 () Bool)

(declare-fun res!439148 () Bool)

(assert (=> b!672363 (=> (not res!439148) (not e!384084))))

(assert (=> b!672363 (= res!439148 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12878))))

(declare-fun b!672364 () Bool)

(declare-fun Unit!23615 () Unit!23612)

(assert (=> b!672364 (= e!384081 Unit!23615)))

(declare-fun arrayContainsKey!0 (array!39197 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!672364 (arrayContainsKey!0 a!3626 k0!2843 from!3004)))

(declare-fun lt!312270 () Unit!23612)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39197 (_ BitVec 64) (_ BitVec 32)) Unit!23612)

(assert (=> b!672364 (= lt!312270 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!672364 false))

(declare-fun b!672365 () Bool)

(declare-fun lt!312273 () List!12881)

(assert (=> b!672365 (= e!384083 (contains!3424 lt!312273 k0!2843))))

(declare-fun b!672366 () Bool)

(declare-fun res!439166 () Bool)

(assert (=> b!672366 (=> (not res!439166) (not e!384085))))

(assert (=> b!672366 (= res!439166 (not (contains!3424 lt!312273 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672367 () Bool)

(declare-fun res!439155 () Bool)

(assert (=> b!672367 (=> (not res!439155) (not e!384084))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!672367 (= res!439155 (validKeyInArray!0 k0!2843))))

(declare-fun b!672368 () Bool)

(declare-fun res!439143 () Bool)

(assert (=> b!672368 (=> (not res!439143) (not e!384084))))

(declare-fun noDuplicate!671 (List!12881) Bool)

(assert (=> b!672368 (= res!439143 (noDuplicate!671 acc!681))))

(declare-fun b!672369 () Bool)

(assert (=> b!672369 (= e!384079 (not (contains!3424 acc!681 k0!2843)))))

(declare-fun b!672370 () Bool)

(declare-fun res!439153 () Bool)

(assert (=> b!672370 (=> (not res!439153) (not e!384085))))

(assert (=> b!672370 (= res!439153 (not (contains!3424 lt!312273 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!672371 () Bool)

(assert (=> b!672371 (= e!384085 false)))

(declare-fun lt!312271 () Bool)

(assert (=> b!672371 (= lt!312271 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!312273))))

(declare-fun b!672372 () Bool)

(declare-fun e!384087 () Bool)

(assert (=> b!672372 (= e!384087 e!384085)))

(declare-fun res!439158 () Bool)

(assert (=> b!672372 (=> (not res!439158) (not e!384085))))

(assert (=> b!672372 (= res!439158 (bvsge (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun $colon$colon!272 (List!12881 (_ BitVec 64)) List!12881)

(assert (=> b!672372 (= lt!312273 ($colon$colon!272 acc!681 (select (arr!18787 a!3626) from!3004)))))

(declare-fun b!672373 () Bool)

(declare-fun res!439152 () Bool)

(assert (=> b!672373 (=> (not res!439152) (not e!384084))))

(assert (=> b!672373 (= res!439152 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!672374 () Bool)

(declare-fun res!439161 () Bool)

(assert (=> b!672374 (=> (not res!439161) (not e!384084))))

(assert (=> b!672374 (= res!439161 e!384088)))

(declare-fun res!439159 () Bool)

(assert (=> b!672374 (=> res!439159 e!384088)))

(assert (=> b!672374 (= res!439159 e!384086)))

(declare-fun res!439154 () Bool)

(assert (=> b!672374 (=> (not res!439154) (not e!384086))))

(assert (=> b!672374 (= res!439154 (bvsgt from!3004 i!1382))))

(declare-fun b!672375 () Bool)

(declare-fun res!439151 () Bool)

(assert (=> b!672375 (=> (not res!439151) (not e!384085))))

(assert (=> b!672375 (= res!439151 (noDuplicate!671 lt!312273))))

(declare-fun b!672376 () Bool)

(declare-fun res!439160 () Bool)

(assert (=> b!672376 (=> (not res!439160) (not e!384084))))

(assert (=> b!672376 (= res!439160 (validKeyInArray!0 (select (arr!18787 a!3626) from!3004)))))

(declare-fun b!672377 () Bool)

(assert (=> b!672377 (= e!384082 (not (contains!3424 lt!312273 k0!2843)))))

(declare-fun b!672378 () Bool)

(assert (=> b!672378 (= e!384084 e!384087)))

(declare-fun res!439163 () Bool)

(assert (=> b!672378 (=> (not res!439163) (not e!384087))))

(assert (=> b!672378 (= res!439163 (not (= (select (arr!18787 a!3626) from!3004) k0!2843)))))

(declare-fun lt!312272 () Unit!23612)

(assert (=> b!672378 (= lt!312272 e!384081)))

(declare-fun c!76973 () Bool)

(assert (=> b!672378 (= c!76973 (= (select (arr!18787 a!3626) from!3004) k0!2843))))

(declare-fun b!672379 () Bool)

(declare-fun res!439145 () Bool)

(assert (=> b!672379 (=> (not res!439145) (not e!384084))))

(assert (=> b!672379 (= res!439145 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19151 a!3626))))))

(declare-fun b!672380 () Bool)

(declare-fun res!439149 () Bool)

(assert (=> b!672380 (=> (not res!439149) (not e!384084))))

(assert (=> b!672380 (= res!439149 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19151 a!3626)) (not (= from!3004 i!1382))))))

(assert (= (and start!60194 res!439157) b!672368))

(assert (= (and b!672368 res!439143) b!672360))

(assert (= (and b!672360 res!439150) b!672357))

(assert (= (and b!672357 res!439147) b!672374))

(assert (= (and b!672374 res!439154) b!672361))

(assert (= (and b!672374 (not res!439159)) b!672358))

(assert (= (and b!672358 res!439162) b!672369))

(assert (= (and b!672374 res!439161) b!672363))

(assert (= (and b!672363 res!439148) b!672355))

(assert (= (and b!672355 res!439165) b!672379))

(assert (= (and b!672379 res!439145) b!672367))

(assert (= (and b!672367 res!439155) b!672373))

(assert (= (and b!672373 res!439152) b!672380))

(assert (= (and b!672380 res!439149) b!672376))

(assert (= (and b!672376 res!439160) b!672378))

(assert (= (and b!672378 c!76973) b!672364))

(assert (= (and b!672378 (not c!76973)) b!672356))

(assert (= (and b!672378 res!439163) b!672372))

(assert (= (and b!672372 res!439158) b!672375))

(assert (= (and b!672375 res!439151) b!672366))

(assert (= (and b!672366 res!439166) b!672370))

(assert (= (and b!672370 res!439153) b!672359))

(assert (= (and b!672359 res!439144) b!672365))

(assert (= (and b!672359 (not res!439156)) b!672362))

(assert (= (and b!672362 res!439146) b!672377))

(assert (= (and b!672359 res!439164) b!672371))

(declare-fun m!641321 () Bool)

(assert (=> b!672368 m!641321))

(declare-fun m!641323 () Bool)

(assert (=> b!672375 m!641323))

(declare-fun m!641325 () Bool)

(assert (=> b!672363 m!641325))

(declare-fun m!641327 () Bool)

(assert (=> b!672377 m!641327))

(declare-fun m!641329 () Bool)

(assert (=> b!672370 m!641329))

(declare-fun m!641331 () Bool)

(assert (=> b!672373 m!641331))

(declare-fun m!641333 () Bool)

(assert (=> b!672364 m!641333))

(declare-fun m!641335 () Bool)

(assert (=> b!672364 m!641335))

(declare-fun m!641337 () Bool)

(assert (=> b!672355 m!641337))

(declare-fun m!641339 () Bool)

(assert (=> b!672361 m!641339))

(declare-fun m!641341 () Bool)

(assert (=> b!672367 m!641341))

(declare-fun m!641343 () Bool)

(assert (=> b!672378 m!641343))

(assert (=> b!672369 m!641339))

(assert (=> b!672372 m!641343))

(assert (=> b!672372 m!641343))

(declare-fun m!641345 () Bool)

(assert (=> b!672372 m!641345))

(declare-fun m!641347 () Bool)

(assert (=> b!672371 m!641347))

(declare-fun m!641349 () Bool)

(assert (=> b!672357 m!641349))

(declare-fun m!641351 () Bool)

(assert (=> b!672360 m!641351))

(declare-fun m!641353 () Bool)

(assert (=> start!60194 m!641353))

(assert (=> b!672376 m!641343))

(assert (=> b!672376 m!641343))

(declare-fun m!641355 () Bool)

(assert (=> b!672376 m!641355))

(assert (=> b!672365 m!641327))

(declare-fun m!641357 () Bool)

(assert (=> b!672366 m!641357))

(check-sat (not b!672375) (not b!672369) (not b!672361) (not b!672377) (not b!672355) (not b!672368) (not b!672373) (not b!672364) (not b!672370) (not b!672365) (not b!672366) (not b!672360) (not start!60194) (not b!672372) (not b!672363) (not b!672367) (not b!672371) (not b!672376) (not b!672357))
(check-sat)
