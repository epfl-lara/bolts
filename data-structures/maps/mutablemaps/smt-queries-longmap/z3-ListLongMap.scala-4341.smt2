; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60092 () Bool)

(assert start!60092)

(declare-fun b!669209 () Bool)

(declare-datatypes ((Unit!23475 0))(
  ( (Unit!23476) )
))
(declare-fun e!382775 () Unit!23475)

(declare-fun lt!311560 () Unit!23475)

(assert (=> b!669209 (= e!382775 lt!311560)))

(declare-fun lt!311557 () Unit!23475)

(declare-datatypes ((List!12830 0))(
  ( (Nil!12827) (Cons!12826 (h!13871 (_ BitVec 64)) (t!19066 List!12830)) )
))
(declare-fun acc!681 () List!12830)

(declare-fun lemmaListSubSeqRefl!0 (List!12830) Unit!23475)

(assert (=> b!669209 (= lt!311557 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun subseq!111 (List!12830 List!12830) Bool)

(assert (=> b!669209 (subseq!111 acc!681 acc!681)))

(declare-datatypes ((array!39095 0))(
  ( (array!39096 (arr!18736 (Array (_ BitVec 32) (_ BitVec 64))) (size!19100 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39095)

(declare-fun from!3004 () (_ BitVec 32))

(declare-fun lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 (array!39095 List!12830 List!12830 (_ BitVec 32)) Unit!23475)

(declare-fun $colon$colon!242 (List!12830 (_ BitVec 64)) List!12830)

(assert (=> b!669209 (= lt!311560 (lemmaArrayNoDuplicateWithAnAccThenWithSubSeqAcc!0 a!3626 ($colon$colon!242 acc!681 (select (arr!18736 a!3626) from!3004)) acc!681 (bvadd #b00000000000000000000000000000001 from!3004)))))

(declare-fun arrayNoDuplicates!0 (array!39095 (_ BitVec 32) List!12830) Bool)

(assert (=> b!669209 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun b!669210 () Bool)

(declare-fun res!436289 () Bool)

(declare-fun e!382783 () Bool)

(assert (=> b!669210 (=> (not res!436289) (not e!382783))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!669210 (= res!436289 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19100 a!3626)) (= from!3004 i!1382)))))

(declare-fun res!436275 () Bool)

(assert (=> start!60092 (=> (not res!436275) (not e!382783))))

(assert (=> start!60092 (= res!436275 (and (bvslt (size!19100 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19100 a!3626))))))

(assert (=> start!60092 e!382783))

(assert (=> start!60092 true))

(declare-fun array_inv!14510 (array!39095) Bool)

(assert (=> start!60092 (array_inv!14510 a!3626)))

(declare-fun b!669211 () Bool)

(declare-fun Unit!23477 () Unit!23475)

(assert (=> b!669211 (= e!382775 Unit!23477)))

(declare-fun b!669212 () Bool)

(declare-fun e!382778 () Bool)

(declare-fun e!382774 () Bool)

(assert (=> b!669212 (= e!382778 e!382774)))

(declare-fun res!436281 () Bool)

(assert (=> b!669212 (=> (not res!436281) (not e!382774))))

(assert (=> b!669212 (= res!436281 (bvsle (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669213 () Bool)

(declare-fun res!436295 () Bool)

(declare-fun e!382781 () Bool)

(assert (=> b!669213 (=> res!436295 e!382781)))

(declare-fun lt!311553 () List!12830)

(declare-fun contains!3373 (List!12830 (_ BitVec 64)) Bool)

(assert (=> b!669213 (= res!436295 (contains!3373 lt!311553 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669214 () Bool)

(assert (=> b!669214 (= e!382781 true)))

(declare-fun lt!311555 () Bool)

(assert (=> b!669214 (= lt!311555 e!382778)))

(declare-fun res!436285 () Bool)

(assert (=> b!669214 (=> res!436285 e!382778)))

(declare-fun e!382773 () Bool)

(assert (=> b!669214 (= res!436285 e!382773)))

(declare-fun res!436277 () Bool)

(assert (=> b!669214 (=> (not res!436277) (not e!382773))))

(assert (=> b!669214 (= res!436277 (bvsgt (bvadd #b00000000000000000000000000000001 from!3004) i!1382))))

(declare-fun b!669215 () Bool)

(declare-fun res!436283 () Bool)

(assert (=> b!669215 (=> (not res!436283) (not e!382783))))

(assert (=> b!669215 (= res!436283 (not (contains!3373 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669216 () Bool)

(declare-fun res!436282 () Bool)

(assert (=> b!669216 (=> (not res!436282) (not e!382783))))

(assert (=> b!669216 (= res!436282 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19100 a!3626))))))

(declare-fun b!669217 () Bool)

(declare-fun res!436276 () Bool)

(assert (=> b!669217 (=> res!436276 e!382781)))

(assert (=> b!669217 (= res!436276 (contains!3373 lt!311553 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!669218 () Bool)

(declare-fun e!382780 () Unit!23475)

(declare-fun Unit!23478 () Unit!23475)

(assert (=> b!669218 (= e!382780 Unit!23478)))

(declare-fun b!669219 () Bool)

(declare-fun res!436278 () Bool)

(assert (=> b!669219 (=> (not res!436278) (not e!382783))))

(assert (=> b!669219 (= res!436278 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!669220 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(assert (=> b!669220 (= e!382774 (not (contains!3373 lt!311553 k0!2843)))))

(declare-fun b!669221 () Bool)

(declare-fun res!436280 () Bool)

(assert (=> b!669221 (=> (not res!436280) (not e!382783))))

(declare-fun noDuplicate!620 (List!12830) Bool)

(assert (=> b!669221 (= res!436280 (noDuplicate!620 acc!681))))

(declare-fun b!669222 () Bool)

(declare-fun Unit!23479 () Unit!23475)

(assert (=> b!669222 (= e!382780 Unit!23479)))

(declare-fun lt!311556 () Unit!23475)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39095 (_ BitVec 64) (_ BitVec 32)) Unit!23475)

(assert (=> b!669222 (= lt!311556 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!669222 false))

(declare-fun b!669223 () Bool)

(assert (=> b!669223 (= e!382773 (contains!3373 lt!311553 k0!2843))))

(declare-fun b!669224 () Bool)

(declare-fun res!436294 () Bool)

(assert (=> b!669224 (=> (not res!436294) (not e!382783))))

(declare-fun arrayContainsKey!0 (array!39095 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!669224 (= res!436294 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!669225 () Bool)

(declare-fun e!382777 () Bool)

(declare-fun e!382779 () Bool)

(assert (=> b!669225 (= e!382777 e!382779)))

(declare-fun res!436279 () Bool)

(assert (=> b!669225 (=> (not res!436279) (not e!382779))))

(assert (=> b!669225 (= res!436279 (bvsle from!3004 i!1382))))

(declare-fun b!669226 () Bool)

(declare-fun res!436291 () Bool)

(assert (=> b!669226 (=> (not res!436291) (not e!382783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!669226 (= res!436291 (validKeyInArray!0 k0!2843))))

(declare-fun b!669227 () Bool)

(assert (=> b!669227 (= e!382779 (not (contains!3373 acc!681 k0!2843)))))

(declare-fun b!669228 () Bool)

(declare-fun res!436287 () Bool)

(assert (=> b!669228 (=> (not res!436287) (not e!382783))))

(assert (=> b!669228 (= res!436287 (not (contains!3373 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!669229 () Bool)

(declare-fun e!382782 () Bool)

(assert (=> b!669229 (= e!382782 (contains!3373 acc!681 k0!2843))))

(declare-fun b!669230 () Bool)

(declare-fun res!436286 () Bool)

(assert (=> b!669230 (=> (not res!436286) (not e!382783))))

(assert (=> b!669230 (= res!436286 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!12827))))

(declare-fun b!669231 () Bool)

(assert (=> b!669231 (= e!382783 (not e!382781))))

(declare-fun res!436293 () Bool)

(assert (=> b!669231 (=> res!436293 e!382781)))

(assert (=> b!669231 (= res!436293 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(assert (=> b!669231 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) lt!311553)))

(declare-fun lt!311559 () Unit!23475)

(declare-fun lemmaAddKeyNoContainsInAccStillNoDuplicate!0 (array!39095 (_ BitVec 64) (_ BitVec 32) List!12830 List!12830) Unit!23475)

(assert (=> b!669231 (= lt!311559 (lemmaAddKeyNoContainsInAccStillNoDuplicate!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004) acc!681 lt!311553))))

(declare-fun -!109 (List!12830 (_ BitVec 64)) List!12830)

(assert (=> b!669231 (= (-!109 lt!311553 k0!2843) acc!681)))

(assert (=> b!669231 (= lt!311553 ($colon$colon!242 acc!681 k0!2843))))

(declare-fun lt!311561 () Unit!23475)

(declare-fun lemmaLMinusHeadEqualsTail!0 ((_ BitVec 64) List!12830) Unit!23475)

(assert (=> b!669231 (= lt!311561 (lemmaLMinusHeadEqualsTail!0 k0!2843 acc!681))))

(assert (=> b!669231 (subseq!111 acc!681 acc!681)))

(declare-fun lt!311554 () Unit!23475)

(assert (=> b!669231 (= lt!311554 (lemmaListSubSeqRefl!0 acc!681))))

(assert (=> b!669231 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000001 from!3004) acc!681)))

(declare-fun lt!311562 () Unit!23475)

(assert (=> b!669231 (= lt!311562 e!382775)))

(declare-fun c!76835 () Bool)

(assert (=> b!669231 (= c!76835 (validKeyInArray!0 (select (arr!18736 a!3626) from!3004)))))

(declare-fun lt!311558 () Unit!23475)

(assert (=> b!669231 (= lt!311558 e!382780)))

(declare-fun c!76834 () Bool)

(assert (=> b!669231 (= c!76834 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!669231 (arrayContainsKey!0 (array!39096 (store (arr!18736 a!3626) i!1382 k0!2843) (size!19100 a!3626)) k0!2843 from!3004)))

(declare-fun b!669232 () Bool)

(declare-fun res!436290 () Bool)

(assert (=> b!669232 (=> (not res!436290) (not e!382783))))

(assert (=> b!669232 (= res!436290 e!382777)))

(declare-fun res!436288 () Bool)

(assert (=> b!669232 (=> res!436288 e!382777)))

(assert (=> b!669232 (= res!436288 e!382782)))

(declare-fun res!436284 () Bool)

(assert (=> b!669232 (=> (not res!436284) (not e!382782))))

(assert (=> b!669232 (= res!436284 (bvsgt from!3004 i!1382))))

(declare-fun b!669233 () Bool)

(declare-fun res!436292 () Bool)

(assert (=> b!669233 (=> res!436292 e!382781)))

(assert (=> b!669233 (= res!436292 (not (noDuplicate!620 lt!311553)))))

(assert (= (and start!60092 res!436275) b!669221))

(assert (= (and b!669221 res!436280) b!669215))

(assert (= (and b!669215 res!436283) b!669228))

(assert (= (and b!669228 res!436287) b!669232))

(assert (= (and b!669232 res!436284) b!669229))

(assert (= (and b!669232 (not res!436288)) b!669225))

(assert (= (and b!669225 res!436279) b!669227))

(assert (= (and b!669232 res!436290) b!669230))

(assert (= (and b!669230 res!436286) b!669219))

(assert (= (and b!669219 res!436278) b!669216))

(assert (= (and b!669216 res!436282) b!669226))

(assert (= (and b!669226 res!436291) b!669224))

(assert (= (and b!669224 res!436294) b!669210))

(assert (= (and b!669210 res!436289) b!669231))

(assert (= (and b!669231 c!76834) b!669222))

(assert (= (and b!669231 (not c!76834)) b!669218))

(assert (= (and b!669231 c!76835) b!669209))

(assert (= (and b!669231 (not c!76835)) b!669211))

(assert (= (and b!669231 (not res!436293)) b!669233))

(assert (= (and b!669233 (not res!436292)) b!669217))

(assert (= (and b!669217 (not res!436276)) b!669213))

(assert (= (and b!669213 (not res!436295)) b!669214))

(assert (= (and b!669214 res!436277) b!669223))

(assert (= (and b!669214 (not res!436285)) b!669212))

(assert (= (and b!669212 res!436281) b!669220))

(declare-fun m!639379 () Bool)

(assert (=> b!669221 m!639379))

(declare-fun m!639381 () Bool)

(assert (=> b!669226 m!639381))

(declare-fun m!639383 () Bool)

(assert (=> b!669227 m!639383))

(declare-fun m!639385 () Bool)

(assert (=> start!60092 m!639385))

(declare-fun m!639387 () Bool)

(assert (=> b!669230 m!639387))

(declare-fun m!639389 () Bool)

(assert (=> b!669224 m!639389))

(declare-fun m!639391 () Bool)

(assert (=> b!669223 m!639391))

(declare-fun m!639393 () Bool)

(assert (=> b!669222 m!639393))

(declare-fun m!639395 () Bool)

(assert (=> b!669213 m!639395))

(assert (=> b!669220 m!639391))

(declare-fun m!639397 () Bool)

(assert (=> b!669228 m!639397))

(declare-fun m!639399 () Bool)

(assert (=> b!669231 m!639399))

(declare-fun m!639401 () Bool)

(assert (=> b!669231 m!639401))

(declare-fun m!639403 () Bool)

(assert (=> b!669231 m!639403))

(declare-fun m!639405 () Bool)

(assert (=> b!669231 m!639405))

(declare-fun m!639407 () Bool)

(assert (=> b!669231 m!639407))

(declare-fun m!639409 () Bool)

(assert (=> b!669231 m!639409))

(declare-fun m!639411 () Bool)

(assert (=> b!669231 m!639411))

(declare-fun m!639413 () Bool)

(assert (=> b!669231 m!639413))

(declare-fun m!639415 () Bool)

(assert (=> b!669231 m!639415))

(declare-fun m!639417 () Bool)

(assert (=> b!669231 m!639417))

(assert (=> b!669231 m!639403))

(declare-fun m!639419 () Bool)

(assert (=> b!669231 m!639419))

(declare-fun m!639421 () Bool)

(assert (=> b!669231 m!639421))

(declare-fun m!639423 () Bool)

(assert (=> b!669231 m!639423))

(declare-fun m!639425 () Bool)

(assert (=> b!669217 m!639425))

(assert (=> b!669209 m!639401))

(assert (=> b!669209 m!639403))

(declare-fun m!639427 () Bool)

(assert (=> b!669209 m!639427))

(declare-fun m!639429 () Bool)

(assert (=> b!669209 m!639429))

(assert (=> b!669209 m!639403))

(assert (=> b!669209 m!639427))

(assert (=> b!669209 m!639413))

(assert (=> b!669209 m!639423))

(declare-fun m!639431 () Bool)

(assert (=> b!669215 m!639431))

(assert (=> b!669229 m!639383))

(declare-fun m!639433 () Bool)

(assert (=> b!669219 m!639433))

(declare-fun m!639435 () Bool)

(assert (=> b!669233 m!639435))

(check-sat (not b!669220) (not b!669219) (not b!669230) (not b!669227) (not b!669217) (not b!669224) (not b!669222) (not start!60092) (not b!669228) (not b!669223) (not b!669209) (not b!669221) (not b!669231) (not b!669226) (not b!669215) (not b!669233) (not b!669213) (not b!669229))
(check-sat)
