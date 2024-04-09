; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!60530 () Bool)

(assert start!60530)

(declare-fun b!680178 () Bool)

(declare-fun res!446627 () Bool)

(declare-fun e!387406 () Bool)

(assert (=> b!680178 (=> (not res!446627) (not e!387406))))

(declare-datatypes ((array!39467 0))(
  ( (array!39468 (arr!18919 (Array (_ BitVec 32) (_ BitVec 64))) (size!19283 (_ BitVec 32))) )
))
(declare-fun a!3626 () array!39467)

(declare-fun from!3004 () (_ BitVec 32))

(declare-datatypes ((List!13013 0))(
  ( (Nil!13010) (Cons!13009 (h!14054 (_ BitVec 64)) (t!19249 List!13013)) )
))
(declare-fun acc!681 () List!13013)

(declare-fun arrayNoDuplicates!0 (array!39467 (_ BitVec 32) List!13013) Bool)

(assert (=> b!680178 (= res!446627 (arrayNoDuplicates!0 a!3626 from!3004 acc!681))))

(declare-fun b!680179 () Bool)

(declare-fun e!387409 () Bool)

(declare-fun k0!2843 () (_ BitVec 64))

(declare-fun contains!3556 (List!13013 (_ BitVec 64)) Bool)

(assert (=> b!680179 (= e!387409 (contains!3556 acc!681 k0!2843))))

(declare-fun b!680180 () Bool)

(declare-fun e!387405 () Bool)

(declare-fun noDuplicate!803 (List!13013) Bool)

(declare-fun $colon$colon!305 (List!13013 (_ BitVec 64)) List!13013)

(assert (=> b!680180 (= e!387405 (noDuplicate!803 ($colon$colon!305 acc!681 (select (arr!18919 a!3626) from!3004))))))

(declare-fun b!680181 () Bool)

(declare-fun res!446622 () Bool)

(assert (=> b!680181 (=> (not res!446622) (not e!387406))))

(assert (=> b!680181 (= res!446622 (not (contains!3556 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680182 () Bool)

(declare-fun res!446621 () Bool)

(assert (=> b!680182 (=> (not res!446621) (not e!387406))))

(assert (=> b!680182 (= res!446621 (noDuplicate!803 acc!681))))

(declare-fun b!680183 () Bool)

(declare-fun e!387403 () Bool)

(declare-fun e!387407 () Bool)

(assert (=> b!680183 (= e!387403 e!387407)))

(declare-fun res!446612 () Bool)

(assert (=> b!680183 (=> (not res!446612) (not e!387407))))

(declare-fun i!1382 () (_ BitVec 32))

(assert (=> b!680183 (= res!446612 (bvsle from!3004 i!1382))))

(declare-fun b!680185 () Bool)

(declare-fun e!387408 () Bool)

(assert (=> b!680185 (= e!387408 e!387405)))

(declare-fun res!446620 () Bool)

(assert (=> b!680185 (=> res!446620 e!387405)))

(assert (=> b!680185 (= res!446620 (bvslt (bvadd #b00000000000000000000000000000001 from!3004) #b00000000000000000000000000000000))))

(declare-fun subseq!141 (List!13013 List!13013) Bool)

(assert (=> b!680185 (subseq!141 acc!681 acc!681)))

(declare-datatypes ((Unit!23846 0))(
  ( (Unit!23847) )
))
(declare-fun lt!313017 () Unit!23846)

(declare-fun lemmaListSubSeqRefl!0 (List!13013) Unit!23846)

(assert (=> b!680185 (= lt!313017 (lemmaListSubSeqRefl!0 acc!681))))

(declare-fun b!680186 () Bool)

(declare-fun res!446626 () Bool)

(assert (=> b!680186 (=> (not res!446626) (not e!387406))))

(assert (=> b!680186 (= res!446626 (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13010))))

(declare-fun b!680187 () Bool)

(declare-fun e!387402 () Unit!23846)

(declare-fun Unit!23848 () Unit!23846)

(assert (=> b!680187 (= e!387402 Unit!23848)))

(declare-fun b!680188 () Bool)

(declare-fun res!446617 () Bool)

(assert (=> b!680188 (=> (not res!446617) (not e!387406))))

(declare-fun arrayContainsKey!0 (array!39467 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!680188 (= res!446617 (not (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))))

(declare-fun b!680189 () Bool)

(declare-fun res!446613 () Bool)

(assert (=> b!680189 (=> (not res!446613) (not e!387406))))

(assert (=> b!680189 (= res!446613 e!387403)))

(declare-fun res!446618 () Bool)

(assert (=> b!680189 (=> res!446618 e!387403)))

(assert (=> b!680189 (= res!446618 e!387409)))

(declare-fun res!446619 () Bool)

(assert (=> b!680189 (=> (not res!446619) (not e!387409))))

(assert (=> b!680189 (= res!446619 (bvsgt from!3004 i!1382))))

(declare-fun b!680190 () Bool)

(declare-fun res!446623 () Bool)

(assert (=> b!680190 (=> (not res!446623) (not e!387406))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!680190 (= res!446623 (validKeyInArray!0 k0!2843))))

(declare-fun b!680191 () Bool)

(declare-fun Unit!23849 () Unit!23846)

(assert (=> b!680191 (= e!387402 Unit!23849)))

(declare-fun lt!313016 () Unit!23846)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!39467 (_ BitVec 64) (_ BitVec 32)) Unit!23846)

(assert (=> b!680191 (= lt!313016 (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004))))

(assert (=> b!680191 false))

(declare-fun b!680192 () Bool)

(declare-fun res!446614 () Bool)

(assert (=> b!680192 (=> (not res!446614) (not e!387406))))

(assert (=> b!680192 (= res!446614 (not (contains!3556 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!680193 () Bool)

(declare-fun res!446616 () Bool)

(assert (=> b!680193 (=> (not res!446616) (not e!387406))))

(assert (=> b!680193 (= res!446616 (and (bvsge i!1382 #b00000000000000000000000000000000) (bvslt i!1382 (size!19283 a!3626))))))

(declare-fun b!680194 () Bool)

(declare-fun res!446615 () Bool)

(assert (=> b!680194 (=> (not res!446615) (not e!387406))))

(assert (=> b!680194 (= res!446615 (and (bvslt (bvadd #b00000000000000000000000000000001 from!3004) (size!19283 a!3626)) (= from!3004 i!1382)))))

(declare-fun b!680195 () Bool)

(assert (=> b!680195 (= e!387407 (not (contains!3556 acc!681 k0!2843)))))

(declare-fun b!680184 () Bool)

(assert (=> b!680184 (= e!387406 (not e!387408))))

(declare-fun res!446624 () Bool)

(assert (=> b!680184 (=> res!446624 e!387408)))

(assert (=> b!680184 (= res!446624 (not (validKeyInArray!0 (select (arr!18919 a!3626) from!3004))))))

(declare-fun lt!313015 () Unit!23846)

(assert (=> b!680184 (= lt!313015 e!387402)))

(declare-fun c!77150 () Bool)

(assert (=> b!680184 (= c!77150 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)))))

(assert (=> b!680184 (arrayContainsKey!0 (array!39468 (store (arr!18919 a!3626) i!1382 k0!2843) (size!19283 a!3626)) k0!2843 from!3004)))

(declare-fun res!446625 () Bool)

(assert (=> start!60530 (=> (not res!446625) (not e!387406))))

(assert (=> start!60530 (= res!446625 (and (bvslt (size!19283 a!3626) #b01111111111111111111111111111111) (bvsge from!3004 #b00000000000000000000000000000000) (bvslt from!3004 (size!19283 a!3626))))))

(assert (=> start!60530 e!387406))

(assert (=> start!60530 true))

(declare-fun array_inv!14693 (array!39467) Bool)

(assert (=> start!60530 (array_inv!14693 a!3626)))

(assert (= (and start!60530 res!446625) b!680182))

(assert (= (and b!680182 res!446621) b!680192))

(assert (= (and b!680192 res!446614) b!680181))

(assert (= (and b!680181 res!446622) b!680189))

(assert (= (and b!680189 res!446619) b!680179))

(assert (= (and b!680189 (not res!446618)) b!680183))

(assert (= (and b!680183 res!446612) b!680195))

(assert (= (and b!680189 res!446613) b!680186))

(assert (= (and b!680186 res!446626) b!680178))

(assert (= (and b!680178 res!446627) b!680193))

(assert (= (and b!680193 res!446616) b!680190))

(assert (= (and b!680190 res!446623) b!680188))

(assert (= (and b!680188 res!446617) b!680194))

(assert (= (and b!680194 res!446615) b!680184))

(assert (= (and b!680184 c!77150) b!680191))

(assert (= (and b!680184 (not c!77150)) b!680187))

(assert (= (and b!680184 (not res!446624)) b!680185))

(assert (= (and b!680185 (not res!446620)) b!680180))

(declare-fun m!645317 () Bool)

(assert (=> b!680186 m!645317))

(declare-fun m!645319 () Bool)

(assert (=> b!680191 m!645319))

(declare-fun m!645321 () Bool)

(assert (=> b!680184 m!645321))

(declare-fun m!645323 () Bool)

(assert (=> b!680184 m!645323))

(declare-fun m!645325 () Bool)

(assert (=> b!680184 m!645325))

(assert (=> b!680184 m!645321))

(declare-fun m!645327 () Bool)

(assert (=> b!680184 m!645327))

(declare-fun m!645329 () Bool)

(assert (=> b!680184 m!645329))

(declare-fun m!645331 () Bool)

(assert (=> b!680182 m!645331))

(declare-fun m!645333 () Bool)

(assert (=> start!60530 m!645333))

(assert (=> b!680180 m!645321))

(assert (=> b!680180 m!645321))

(declare-fun m!645335 () Bool)

(assert (=> b!680180 m!645335))

(assert (=> b!680180 m!645335))

(declare-fun m!645337 () Bool)

(assert (=> b!680180 m!645337))

(declare-fun m!645339 () Bool)

(assert (=> b!680190 m!645339))

(declare-fun m!645341 () Bool)

(assert (=> b!680179 m!645341))

(assert (=> b!680195 m!645341))

(declare-fun m!645343 () Bool)

(assert (=> b!680178 m!645343))

(declare-fun m!645345 () Bool)

(assert (=> b!680192 m!645345))

(declare-fun m!645347 () Bool)

(assert (=> b!680188 m!645347))

(declare-fun m!645349 () Bool)

(assert (=> b!680185 m!645349))

(declare-fun m!645351 () Bool)

(assert (=> b!680185 m!645351))

(declare-fun m!645353 () Bool)

(assert (=> b!680181 m!645353))

(check-sat (not b!680185) (not b!680188) (not start!60530) (not b!680195) (not b!680178) (not b!680186) (not b!680190) (not b!680179) (not b!680191) (not b!680181) (not b!680192) (not b!680184) (not b!680182) (not b!680180))
(check-sat)
(get-model)

(declare-fun d!93449 () Bool)

(declare-fun lt!313029 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!268 (List!13013) (InoxSet (_ BitVec 64)))

(assert (=> d!93449 (= lt!313029 (select (content!268 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!387439 () Bool)

(assert (=> d!93449 (= lt!313029 e!387439)))

(declare-fun res!446681 () Bool)

(assert (=> d!93449 (=> (not res!446681) (not e!387439))))

(get-info :version)

(assert (=> d!93449 (= res!446681 ((_ is Cons!13009) acc!681))))

(assert (=> d!93449 (= (contains!3556 acc!681 #b0000000000000000000000000000000000000000000000000000000000000000) lt!313029)))

(declare-fun b!680254 () Bool)

(declare-fun e!387438 () Bool)

(assert (=> b!680254 (= e!387439 e!387438)))

(declare-fun res!446680 () Bool)

(assert (=> b!680254 (=> res!446680 e!387438)))

(assert (=> b!680254 (= res!446680 (= (h!14054 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680255 () Bool)

(assert (=> b!680255 (= e!387438 (contains!3556 (t!19249 acc!681) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93449 res!446681) b!680254))

(assert (= (and b!680254 (not res!446680)) b!680255))

(declare-fun m!645393 () Bool)

(assert (=> d!93449 m!645393))

(declare-fun m!645395 () Bool)

(assert (=> d!93449 m!645395))

(declare-fun m!645397 () Bool)

(assert (=> b!680255 m!645397))

(assert (=> b!680192 d!93449))

(declare-fun d!93451 () Bool)

(declare-fun lt!313030 () Bool)

(assert (=> d!93451 (= lt!313030 (select (content!268 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!387441 () Bool)

(assert (=> d!93451 (= lt!313030 e!387441)))

(declare-fun res!446683 () Bool)

(assert (=> d!93451 (=> (not res!446683) (not e!387441))))

(assert (=> d!93451 (= res!446683 ((_ is Cons!13009) acc!681))))

(assert (=> d!93451 (= (contains!3556 acc!681 #b1000000000000000000000000000000000000000000000000000000000000000) lt!313030)))

(declare-fun b!680256 () Bool)

(declare-fun e!387440 () Bool)

(assert (=> b!680256 (= e!387441 e!387440)))

(declare-fun res!446682 () Bool)

(assert (=> b!680256 (=> res!446682 e!387440)))

(assert (=> b!680256 (= res!446682 (= (h!14054 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!680257 () Bool)

(assert (=> b!680257 (= e!387440 (contains!3556 (t!19249 acc!681) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!93451 res!446683) b!680256))

(assert (= (and b!680256 (not res!446682)) b!680257))

(assert (=> d!93451 m!645393))

(declare-fun m!645399 () Bool)

(assert (=> d!93451 m!645399))

(declare-fun m!645401 () Bool)

(assert (=> b!680257 m!645401))

(assert (=> b!680181 d!93451))

(declare-fun d!93453 () Bool)

(assert (=> d!93453 (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000)))

(declare-fun lt!313033 () Unit!23846)

(declare-fun choose!13 (array!39467 (_ BitVec 64) (_ BitVec 32)) Unit!23846)

(assert (=> d!93453 (= lt!313033 (choose!13 a!3626 k0!2843 from!3004))))

(assert (=> d!93453 (bvsge from!3004 #b00000000000000000000000000000000)))

(assert (=> d!93453 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 a!3626 k0!2843 from!3004) lt!313033)))

(declare-fun bs!19973 () Bool)

(assert (= bs!19973 d!93453))

(assert (=> bs!19973 m!645347))

(declare-fun m!645403 () Bool)

(assert (=> bs!19973 m!645403))

(assert (=> b!680191 d!93453))

(declare-fun d!93457 () Bool)

(declare-fun res!446694 () Bool)

(declare-fun e!387452 () Bool)

(assert (=> d!93457 (=> res!446694 e!387452)))

(assert (=> d!93457 (= res!446694 ((_ is Nil!13010) ($colon$colon!305 acc!681 (select (arr!18919 a!3626) from!3004))))))

(assert (=> d!93457 (= (noDuplicate!803 ($colon$colon!305 acc!681 (select (arr!18919 a!3626) from!3004))) e!387452)))

(declare-fun b!680268 () Bool)

(declare-fun e!387453 () Bool)

(assert (=> b!680268 (= e!387452 e!387453)))

(declare-fun res!446695 () Bool)

(assert (=> b!680268 (=> (not res!446695) (not e!387453))))

(assert (=> b!680268 (= res!446695 (not (contains!3556 (t!19249 ($colon$colon!305 acc!681 (select (arr!18919 a!3626) from!3004))) (h!14054 ($colon$colon!305 acc!681 (select (arr!18919 a!3626) from!3004))))))))

(declare-fun b!680269 () Bool)

(assert (=> b!680269 (= e!387453 (noDuplicate!803 (t!19249 ($colon$colon!305 acc!681 (select (arr!18919 a!3626) from!3004)))))))

(assert (= (and d!93457 (not res!446694)) b!680268))

(assert (= (and b!680268 res!446695) b!680269))

(declare-fun m!645411 () Bool)

(assert (=> b!680268 m!645411))

(declare-fun m!645413 () Bool)

(assert (=> b!680269 m!645413))

(assert (=> b!680180 d!93457))

(declare-fun d!93465 () Bool)

(assert (=> d!93465 (= ($colon$colon!305 acc!681 (select (arr!18919 a!3626) from!3004)) (Cons!13009 (select (arr!18919 a!3626) from!3004) acc!681))))

(assert (=> b!680180 d!93465))

(declare-fun d!93469 () Bool)

(assert (=> d!93469 (= (validKeyInArray!0 k0!2843) (and (not (= k0!2843 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!2843 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!680190 d!93469))

(declare-fun d!93471 () Bool)

(declare-fun lt!313038 () Bool)

(assert (=> d!93471 (= lt!313038 (select (content!268 acc!681) k0!2843))))

(declare-fun e!387465 () Bool)

(assert (=> d!93471 (= lt!313038 e!387465)))

(declare-fun res!446707 () Bool)

(assert (=> d!93471 (=> (not res!446707) (not e!387465))))

(assert (=> d!93471 (= res!446707 ((_ is Cons!13009) acc!681))))

(assert (=> d!93471 (= (contains!3556 acc!681 k0!2843) lt!313038)))

(declare-fun b!680280 () Bool)

(declare-fun e!387464 () Bool)

(assert (=> b!680280 (= e!387465 e!387464)))

(declare-fun res!446706 () Bool)

(assert (=> b!680280 (=> res!446706 e!387464)))

(assert (=> b!680280 (= res!446706 (= (h!14054 acc!681) k0!2843))))

(declare-fun b!680281 () Bool)

(assert (=> b!680281 (= e!387464 (contains!3556 (t!19249 acc!681) k0!2843))))

(assert (= (and d!93471 res!446707) b!680280))

(assert (= (and b!680280 (not res!446706)) b!680281))

(assert (=> d!93471 m!645393))

(declare-fun m!645419 () Bool)

(assert (=> d!93471 m!645419))

(declare-fun m!645421 () Bool)

(assert (=> b!680281 m!645421))

(assert (=> b!680195 d!93471))

(declare-fun d!93473 () Bool)

(assert (=> d!93473 (= (validKeyInArray!0 (select (arr!18919 a!3626) from!3004)) (and (not (= (select (arr!18919 a!3626) from!3004) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!18919 a!3626) from!3004) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!680184 d!93473))

(declare-fun d!93475 () Bool)

(declare-fun res!446724 () Bool)

(declare-fun e!387482 () Bool)

(assert (=> d!93475 (=> res!446724 e!387482)))

(assert (=> d!93475 (= res!446724 (= (select (arr!18919 a!3626) (bvadd #b00000000000000000000000000000001 from!3004)) k0!2843))))

(assert (=> d!93475 (= (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004)) e!387482)))

(declare-fun b!680298 () Bool)

(declare-fun e!387483 () Bool)

(assert (=> b!680298 (= e!387482 e!387483)))

(declare-fun res!446725 () Bool)

(assert (=> b!680298 (=> (not res!446725) (not e!387483))))

(assert (=> b!680298 (= res!446725 (bvslt (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001) (size!19283 a!3626)))))

(declare-fun b!680299 () Bool)

(assert (=> b!680299 (= e!387483 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000001 from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93475 (not res!446724)) b!680298))

(assert (= (and b!680298 res!446725) b!680299))

(declare-fun m!645435 () Bool)

(assert (=> d!93475 m!645435))

(declare-fun m!645439 () Bool)

(assert (=> b!680299 m!645439))

(assert (=> b!680184 d!93475))

(declare-fun d!93485 () Bool)

(declare-fun res!446730 () Bool)

(declare-fun e!387488 () Bool)

(assert (=> d!93485 (=> res!446730 e!387488)))

(assert (=> d!93485 (= res!446730 (= (select (arr!18919 (array!39468 (store (arr!18919 a!3626) i!1382 k0!2843) (size!19283 a!3626))) from!3004) k0!2843))))

(assert (=> d!93485 (= (arrayContainsKey!0 (array!39468 (store (arr!18919 a!3626) i!1382 k0!2843) (size!19283 a!3626)) k0!2843 from!3004) e!387488)))

(declare-fun b!680304 () Bool)

(declare-fun e!387489 () Bool)

(assert (=> b!680304 (= e!387488 e!387489)))

(declare-fun res!446731 () Bool)

(assert (=> b!680304 (=> (not res!446731) (not e!387489))))

(assert (=> b!680304 (= res!446731 (bvslt (bvadd from!3004 #b00000000000000000000000000000001) (size!19283 (array!39468 (store (arr!18919 a!3626) i!1382 k0!2843) (size!19283 a!3626)))))))

(declare-fun b!680305 () Bool)

(assert (=> b!680305 (= e!387489 (arrayContainsKey!0 (array!39468 (store (arr!18919 a!3626) i!1382 k0!2843) (size!19283 a!3626)) k0!2843 (bvadd from!3004 #b00000000000000000000000000000001)))))

(assert (= (and d!93485 (not res!446730)) b!680304))

(assert (= (and b!680304 res!446731) b!680305))

(declare-fun m!645447 () Bool)

(assert (=> d!93485 m!645447))

(declare-fun m!645451 () Bool)

(assert (=> b!680305 m!645451))

(assert (=> b!680184 d!93485))

(declare-fun d!93493 () Bool)

(declare-fun res!446732 () Bool)

(declare-fun e!387490 () Bool)

(assert (=> d!93493 (=> res!446732 e!387490)))

(assert (=> d!93493 (= res!446732 ((_ is Nil!13010) acc!681))))

(assert (=> d!93493 (= (noDuplicate!803 acc!681) e!387490)))

(declare-fun b!680306 () Bool)

(declare-fun e!387491 () Bool)

(assert (=> b!680306 (= e!387490 e!387491)))

(declare-fun res!446733 () Bool)

(assert (=> b!680306 (=> (not res!446733) (not e!387491))))

(assert (=> b!680306 (= res!446733 (not (contains!3556 (t!19249 acc!681) (h!14054 acc!681))))))

(declare-fun b!680307 () Bool)

(assert (=> b!680307 (= e!387491 (noDuplicate!803 (t!19249 acc!681)))))

(assert (= (and d!93493 (not res!446732)) b!680306))

(assert (= (and b!680306 res!446733) b!680307))

(declare-fun m!645453 () Bool)

(assert (=> b!680306 m!645453))

(declare-fun m!645455 () Bool)

(assert (=> b!680307 m!645455))

(assert (=> b!680182 d!93493))

(declare-fun b!680348 () Bool)

(declare-fun e!387532 () Bool)

(declare-fun e!387530 () Bool)

(assert (=> b!680348 (= e!387532 e!387530)))

(declare-fun res!446772 () Bool)

(assert (=> b!680348 (=> (not res!446772) (not e!387530))))

(declare-fun e!387531 () Bool)

(assert (=> b!680348 (= res!446772 (not e!387531))))

(declare-fun res!446771 () Bool)

(assert (=> b!680348 (=> (not res!446771) (not e!387531))))

(assert (=> b!680348 (= res!446771 (validKeyInArray!0 (select (arr!18919 a!3626) #b00000000000000000000000000000000)))))

(declare-fun b!680349 () Bool)

(declare-fun e!387533 () Bool)

(declare-fun call!33938 () Bool)

(assert (=> b!680349 (= e!387533 call!33938)))

(declare-fun d!93495 () Bool)

(declare-fun res!446770 () Bool)

(assert (=> d!93495 (=> res!446770 e!387532)))

(assert (=> d!93495 (= res!446770 (bvsge #b00000000000000000000000000000000 (size!19283 a!3626)))))

(assert (=> d!93495 (= (arrayNoDuplicates!0 a!3626 #b00000000000000000000000000000000 Nil!13010) e!387532)))

(declare-fun b!680350 () Bool)

(assert (=> b!680350 (= e!387533 call!33938)))

(declare-fun b!680351 () Bool)

(assert (=> b!680351 (= e!387530 e!387533)))

(declare-fun c!77156 () Bool)

(assert (=> b!680351 (= c!77156 (validKeyInArray!0 (select (arr!18919 a!3626) #b00000000000000000000000000000000)))))

(declare-fun bm!33935 () Bool)

(assert (=> bm!33935 (= call!33938 (arrayNoDuplicates!0 a!3626 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!77156 (Cons!13009 (select (arr!18919 a!3626) #b00000000000000000000000000000000) Nil!13010) Nil!13010)))))

(declare-fun b!680352 () Bool)

(assert (=> b!680352 (= e!387531 (contains!3556 Nil!13010 (select (arr!18919 a!3626) #b00000000000000000000000000000000)))))

(assert (= (and d!93495 (not res!446770)) b!680348))

(assert (= (and b!680348 res!446771) b!680352))

(assert (= (and b!680348 res!446772) b!680351))

(assert (= (and b!680351 c!77156) b!680350))

(assert (= (and b!680351 (not c!77156)) b!680349))

(assert (= (or b!680350 b!680349) bm!33935))

(declare-fun m!645479 () Bool)

(assert (=> b!680348 m!645479))

(assert (=> b!680348 m!645479))

(declare-fun m!645481 () Bool)

(assert (=> b!680348 m!645481))

(assert (=> b!680351 m!645479))

(assert (=> b!680351 m!645479))

(assert (=> b!680351 m!645481))

(assert (=> bm!33935 m!645479))

(declare-fun m!645483 () Bool)

(assert (=> bm!33935 m!645483))

(assert (=> b!680352 m!645479))

(assert (=> b!680352 m!645479))

(declare-fun m!645485 () Bool)

(assert (=> b!680352 m!645485))

(assert (=> b!680186 d!93495))

(declare-fun b!680376 () Bool)

(declare-fun e!387556 () Bool)

(declare-fun e!387554 () Bool)

(assert (=> b!680376 (= e!387556 e!387554)))

(declare-fun res!446792 () Bool)

(assert (=> b!680376 (=> res!446792 e!387554)))

(declare-fun e!387557 () Bool)

(assert (=> b!680376 (= res!446792 e!387557)))

(declare-fun res!446791 () Bool)

(assert (=> b!680376 (=> (not res!446791) (not e!387557))))

(assert (=> b!680376 (= res!446791 (= (h!14054 acc!681) (h!14054 acc!681)))))

(declare-fun d!93509 () Bool)

(declare-fun res!446793 () Bool)

(declare-fun e!387555 () Bool)

(assert (=> d!93509 (=> res!446793 e!387555)))

(assert (=> d!93509 (= res!446793 ((_ is Nil!13010) acc!681))))

(assert (=> d!93509 (= (subseq!141 acc!681 acc!681) e!387555)))

(declare-fun b!680375 () Bool)

(assert (=> b!680375 (= e!387555 e!387556)))

(declare-fun res!446794 () Bool)

(assert (=> b!680375 (=> (not res!446794) (not e!387556))))

(assert (=> b!680375 (= res!446794 ((_ is Cons!13009) acc!681))))

(declare-fun b!680377 () Bool)

(assert (=> b!680377 (= e!387557 (subseq!141 (t!19249 acc!681) (t!19249 acc!681)))))

(declare-fun b!680378 () Bool)

(assert (=> b!680378 (= e!387554 (subseq!141 acc!681 (t!19249 acc!681)))))

(assert (= (and d!93509 (not res!446793)) b!680375))

(assert (= (and b!680375 res!446794) b!680376))

(assert (= (and b!680376 res!446791) b!680377))

(assert (= (and b!680376 (not res!446792)) b!680378))

(declare-fun m!645495 () Bool)

(assert (=> b!680377 m!645495))

(declare-fun m!645497 () Bool)

(assert (=> b!680378 m!645497))

(assert (=> b!680185 d!93509))

(declare-fun d!93517 () Bool)

(assert (=> d!93517 (subseq!141 acc!681 acc!681)))

(declare-fun lt!313055 () Unit!23846)

(declare-fun choose!36 (List!13013) Unit!23846)

(assert (=> d!93517 (= lt!313055 (choose!36 acc!681))))

(assert (=> d!93517 (= (lemmaListSubSeqRefl!0 acc!681) lt!313055)))

(declare-fun bs!19977 () Bool)

(assert (= bs!19977 d!93517))

(assert (=> bs!19977 m!645349))

(declare-fun m!645503 () Bool)

(assert (=> bs!19977 m!645503))

(assert (=> b!680185 d!93517))

(declare-fun d!93521 () Bool)

(assert (=> d!93521 (= (array_inv!14693 a!3626) (bvsge (size!19283 a!3626) #b00000000000000000000000000000000))))

(assert (=> start!60530 d!93521))

(assert (=> b!680179 d!93471))

(declare-fun b!680384 () Bool)

(declare-fun e!387564 () Bool)

(declare-fun e!387562 () Bool)

(assert (=> b!680384 (= e!387564 e!387562)))

(declare-fun res!446800 () Bool)

(assert (=> b!680384 (=> (not res!446800) (not e!387562))))

(declare-fun e!387563 () Bool)

(assert (=> b!680384 (= res!446800 (not e!387563))))

(declare-fun res!446799 () Bool)

(assert (=> b!680384 (=> (not res!446799) (not e!387563))))

(assert (=> b!680384 (= res!446799 (validKeyInArray!0 (select (arr!18919 a!3626) from!3004)))))

(declare-fun b!680385 () Bool)

(declare-fun e!387565 () Bool)

(declare-fun call!33942 () Bool)

(assert (=> b!680385 (= e!387565 call!33942)))

(declare-fun d!93523 () Bool)

(declare-fun res!446798 () Bool)

(assert (=> d!93523 (=> res!446798 e!387564)))

(assert (=> d!93523 (= res!446798 (bvsge from!3004 (size!19283 a!3626)))))

(assert (=> d!93523 (= (arrayNoDuplicates!0 a!3626 from!3004 acc!681) e!387564)))

(declare-fun b!680386 () Bool)

(assert (=> b!680386 (= e!387565 call!33942)))

(declare-fun b!680387 () Bool)

(assert (=> b!680387 (= e!387562 e!387565)))

(declare-fun c!77160 () Bool)

(assert (=> b!680387 (= c!77160 (validKeyInArray!0 (select (arr!18919 a!3626) from!3004)))))

(declare-fun bm!33939 () Bool)

(assert (=> bm!33939 (= call!33942 (arrayNoDuplicates!0 a!3626 (bvadd from!3004 #b00000000000000000000000000000001) (ite c!77160 (Cons!13009 (select (arr!18919 a!3626) from!3004) acc!681) acc!681)))))

(declare-fun b!680388 () Bool)

(assert (=> b!680388 (= e!387563 (contains!3556 acc!681 (select (arr!18919 a!3626) from!3004)))))

(assert (= (and d!93523 (not res!446798)) b!680384))

(assert (= (and b!680384 res!446799) b!680388))

(assert (= (and b!680384 res!446800) b!680387))

(assert (= (and b!680387 c!77160) b!680386))

(assert (= (and b!680387 (not c!77160)) b!680385))

(assert (= (or b!680386 b!680385) bm!33939))

(assert (=> b!680384 m!645321))

(assert (=> b!680384 m!645321))

(assert (=> b!680384 m!645327))

(assert (=> b!680387 m!645321))

(assert (=> b!680387 m!645321))

(assert (=> b!680387 m!645327))

(assert (=> bm!33939 m!645321))

(declare-fun m!645505 () Bool)

(assert (=> bm!33939 m!645505))

(assert (=> b!680388 m!645321))

(assert (=> b!680388 m!645321))

(declare-fun m!645507 () Bool)

(assert (=> b!680388 m!645507))

(assert (=> b!680178 d!93523))

(declare-fun d!93525 () Bool)

(declare-fun res!446811 () Bool)

(declare-fun e!387578 () Bool)

(assert (=> d!93525 (=> res!446811 e!387578)))

(assert (=> d!93525 (= res!446811 (= (select (arr!18919 a!3626) #b00000000000000000000000000000000) k0!2843))))

(assert (=> d!93525 (= (arrayContainsKey!0 a!3626 k0!2843 #b00000000000000000000000000000000) e!387578)))

(declare-fun b!680403 () Bool)

(declare-fun e!387579 () Bool)

(assert (=> b!680403 (= e!387578 e!387579)))

(declare-fun res!446812 () Bool)

(assert (=> b!680403 (=> (not res!446812) (not e!387579))))

(assert (=> b!680403 (= res!446812 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!19283 a!3626)))))

(declare-fun b!680404 () Bool)

(assert (=> b!680404 (= e!387579 (arrayContainsKey!0 a!3626 k0!2843 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!93525 (not res!446811)) b!680403))

(assert (= (and b!680403 res!446812) b!680404))

(assert (=> d!93525 m!645479))

(declare-fun m!645509 () Bool)

(assert (=> b!680404 m!645509))

(assert (=> b!680188 d!93525))

(check-sat (not b!680307) (not b!680255) (not d!93471) (not d!93449) (not d!93453) (not b!680306) (not b!680281) (not b!680351) (not bm!33939) (not b!680378) (not b!680305) (not bm!33935) (not b!680404) (not b!680269) (not b!680348) (not b!680384) (not d!93517) (not b!680299) (not b!680352) (not b!680387) (not d!93451) (not b!680257) (not b!680268) (not b!680377) (not b!680388))
(check-sat)
