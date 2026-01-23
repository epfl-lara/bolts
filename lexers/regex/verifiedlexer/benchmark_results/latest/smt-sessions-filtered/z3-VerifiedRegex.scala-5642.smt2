; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282034 () Bool)

(assert start!282034)

(declare-fun b!2893507 () Bool)

(declare-fun e!1828416 () Bool)

(declare-fun tp!928978 () Bool)

(assert (=> b!2893507 (= e!1828416 tp!928978)))

(declare-fun b!2893508 () Bool)

(declare-fun e!1828419 () Bool)

(declare-datatypes ((C!17860 0))(
  ( (C!17861 (val!10964 Int)) )
))
(declare-datatypes ((Regex!8839 0))(
  ( (ElementMatch!8839 (c!470672 C!17860)) (Concat!14160 (regOne!18190 Regex!8839) (regTwo!18190 Regex!8839)) (EmptyExpr!8839) (Star!8839 (reg!9168 Regex!8839)) (EmptyLang!8839) (Union!8839 (regOne!18191 Regex!8839) (regTwo!18191 Regex!8839)) )
))
(declare-fun r!23079 () Regex!8839)

(declare-fun validRegex!3612 (Regex!8839) Bool)

(assert (=> b!2893508 (= e!1828419 (validRegex!3612 (regOne!18191 r!23079)))))

(declare-fun b!2893509 () Bool)

(declare-fun tp!928976 () Bool)

(declare-fun tp!928975 () Bool)

(assert (=> b!2893509 (= e!1828416 (and tp!928976 tp!928975))))

(declare-fun b!2893510 () Bool)

(declare-fun res!1196984 () Bool)

(declare-fun e!1828417 () Bool)

(assert (=> b!2893510 (=> (not res!1196984) (not e!1828417))))

(get-info :version)

(assert (=> b!2893510 (= res!1196984 (and (not ((_ is EmptyExpr!8839) r!23079)) (not ((_ is EmptyLang!8839) r!23079)) (not ((_ is ElementMatch!8839) r!23079)) (not ((_ is Star!8839) r!23079)) ((_ is Union!8839) r!23079)))))

(declare-fun b!2893511 () Bool)

(declare-fun res!1196985 () Bool)

(assert (=> b!2893511 (=> (not res!1196985) (not e!1828417))))

(declare-datatypes ((List!34640 0))(
  ( (Nil!34516) (Cons!34516 (h!39936 C!17860) (t!233683 List!34640)) )
))
(declare-datatypes ((Option!6512 0))(
  ( (None!6511) (Some!6511 (v!34637 List!34640)) )
))
(declare-fun getLanguageWitness!546 (Regex!8839) Option!6512)

(assert (=> b!2893511 (= res!1196985 (not ((_ is Some!6511) (getLanguageWitness!546 (regOne!18191 r!23079)))))))

(declare-fun res!1196981 () Bool)

(assert (=> start!282034 (=> (not res!1196981) (not e!1828417))))

(assert (=> start!282034 (= res!1196981 (validRegex!3612 r!23079))))

(assert (=> start!282034 e!1828417))

(assert (=> start!282034 e!1828416))

(declare-fun b!2893512 () Bool)

(declare-fun tp_is_empty!15265 () Bool)

(assert (=> b!2893512 (= e!1828416 tp_is_empty!15265)))

(declare-fun b!2893513 () Bool)

(declare-fun res!1196980 () Bool)

(assert (=> b!2893513 (=> (not res!1196980) (not e!1828417))))

(declare-fun isDefined!5076 (Option!6512) Bool)

(assert (=> b!2893513 (= res!1196980 (isDefined!5076 (getLanguageWitness!546 r!23079)))))

(declare-fun b!2893514 () Bool)

(declare-fun e!1828418 () Bool)

(assert (=> b!2893514 (= e!1828418 e!1828419)))

(declare-fun res!1196983 () Bool)

(assert (=> b!2893514 (=> (not res!1196983) (not e!1828419))))

(assert (=> b!2893514 (= res!1196983 (validRegex!3612 (regTwo!18191 r!23079)))))

(declare-fun b!2893515 () Bool)

(assert (=> b!2893515 (= e!1828417 (not e!1828418))))

(declare-fun res!1196982 () Bool)

(assert (=> b!2893515 (=> res!1196982 e!1828418)))

(declare-fun lt!1021269 () Option!6512)

(assert (=> b!2893515 (= res!1196982 (not (isDefined!5076 lt!1021269)))))

(declare-fun matchR!3803 (Regex!8839 List!34640) Bool)

(declare-fun get!10455 (Option!6512) List!34640)

(assert (=> b!2893515 (matchR!3803 (regTwo!18191 r!23079) (get!10455 lt!1021269))))

(declare-datatypes ((Unit!48095 0))(
  ( (Unit!48096) )
))
(declare-fun lt!1021270 () Unit!48095)

(declare-fun lemmaGetWitnessMatches!102 (Regex!8839) Unit!48095)

(assert (=> b!2893515 (= lt!1021270 (lemmaGetWitnessMatches!102 (regTwo!18191 r!23079)))))

(assert (=> b!2893515 (= lt!1021269 (getLanguageWitness!546 (regTwo!18191 r!23079)))))

(declare-fun b!2893516 () Bool)

(declare-fun tp!928979 () Bool)

(declare-fun tp!928977 () Bool)

(assert (=> b!2893516 (= e!1828416 (and tp!928979 tp!928977))))

(assert (= (and start!282034 res!1196981) b!2893513))

(assert (= (and b!2893513 res!1196980) b!2893510))

(assert (= (and b!2893510 res!1196984) b!2893511))

(assert (= (and b!2893511 res!1196985) b!2893515))

(assert (= (and b!2893515 (not res!1196982)) b!2893514))

(assert (= (and b!2893514 res!1196983) b!2893508))

(assert (= (and start!282034 ((_ is ElementMatch!8839) r!23079)) b!2893512))

(assert (= (and start!282034 ((_ is Concat!14160) r!23079)) b!2893516))

(assert (= (and start!282034 ((_ is Star!8839) r!23079)) b!2893507))

(assert (= (and start!282034 ((_ is Union!8839) r!23079)) b!2893509))

(declare-fun m!3303257 () Bool)

(assert (=> b!2893514 m!3303257))

(declare-fun m!3303259 () Bool)

(assert (=> start!282034 m!3303259))

(declare-fun m!3303261 () Bool)

(assert (=> b!2893513 m!3303261))

(assert (=> b!2893513 m!3303261))

(declare-fun m!3303263 () Bool)

(assert (=> b!2893513 m!3303263))

(declare-fun m!3303265 () Bool)

(assert (=> b!2893515 m!3303265))

(declare-fun m!3303267 () Bool)

(assert (=> b!2893515 m!3303267))

(declare-fun m!3303269 () Bool)

(assert (=> b!2893515 m!3303269))

(assert (=> b!2893515 m!3303267))

(declare-fun m!3303271 () Bool)

(assert (=> b!2893515 m!3303271))

(declare-fun m!3303273 () Bool)

(assert (=> b!2893515 m!3303273))

(declare-fun m!3303275 () Bool)

(assert (=> b!2893508 m!3303275))

(declare-fun m!3303277 () Bool)

(assert (=> b!2893511 m!3303277))

(check-sat (not start!282034) (not b!2893513) (not b!2893516) tp_is_empty!15265 (not b!2893511) (not b!2893509) (not b!2893507) (not b!2893514) (not b!2893508) (not b!2893515))
(check-sat)
(get-model)

(declare-fun b!2893567 () Bool)

(declare-fun e!1828451 () Bool)

(declare-fun call!188086 () Bool)

(assert (=> b!2893567 (= e!1828451 call!188086)))

(declare-fun b!2893568 () Bool)

(declare-fun e!1828453 () Bool)

(declare-fun e!1828456 () Bool)

(assert (=> b!2893568 (= e!1828453 e!1828456)))

(declare-fun c!470694 () Bool)

(assert (=> b!2893568 (= c!470694 ((_ is Star!8839) r!23079))))

(declare-fun b!2893569 () Bool)

(declare-fun res!1196998 () Bool)

(declare-fun e!1828452 () Bool)

(assert (=> b!2893569 (=> res!1196998 e!1828452)))

(assert (=> b!2893569 (= res!1196998 (not ((_ is Concat!14160) r!23079)))))

(declare-fun e!1828455 () Bool)

(assert (=> b!2893569 (= e!1828455 e!1828452)))

(declare-fun bm!188081 () Bool)

(declare-fun call!188085 () Bool)

(declare-fun c!470693 () Bool)

(assert (=> bm!188081 (= call!188085 (validRegex!3612 (ite c!470693 (regOne!18191 r!23079) (regOne!18190 r!23079))))))

(declare-fun b!2893570 () Bool)

(declare-fun e!1828454 () Bool)

(assert (=> b!2893570 (= e!1828454 call!188086)))

(declare-fun b!2893571 () Bool)

(assert (=> b!2893571 (= e!1828456 e!1828455)))

(assert (=> b!2893571 (= c!470693 ((_ is Union!8839) r!23079))))

(declare-fun b!2893572 () Bool)

(declare-fun res!1196996 () Bool)

(assert (=> b!2893572 (=> (not res!1196996) (not e!1828454))))

(assert (=> b!2893572 (= res!1196996 call!188085)))

(assert (=> b!2893572 (= e!1828455 e!1828454)))

(declare-fun call!188087 () Bool)

(declare-fun bm!188082 () Bool)

(assert (=> bm!188082 (= call!188087 (validRegex!3612 (ite c!470694 (reg!9168 r!23079) (ite c!470693 (regTwo!18191 r!23079) (regTwo!18190 r!23079)))))))

(declare-fun b!2893573 () Bool)

(assert (=> b!2893573 (= e!1828452 e!1828451)))

(declare-fun res!1196997 () Bool)

(assert (=> b!2893573 (=> (not res!1196997) (not e!1828451))))

(assert (=> b!2893573 (= res!1196997 call!188085)))

(declare-fun b!2893574 () Bool)

(declare-fun e!1828450 () Bool)

(assert (=> b!2893574 (= e!1828450 call!188087)))

(declare-fun b!2893575 () Bool)

(assert (=> b!2893575 (= e!1828456 e!1828450)))

(declare-fun res!1196999 () Bool)

(declare-fun nullable!2738 (Regex!8839) Bool)

(assert (=> b!2893575 (= res!1196999 (not (nullable!2738 (reg!9168 r!23079))))))

(assert (=> b!2893575 (=> (not res!1196999) (not e!1828450))))

(declare-fun bm!188080 () Bool)

(assert (=> bm!188080 (= call!188086 call!188087)))

(declare-fun d!834627 () Bool)

(declare-fun res!1197000 () Bool)

(assert (=> d!834627 (=> res!1197000 e!1828453)))

(assert (=> d!834627 (= res!1197000 ((_ is ElementMatch!8839) r!23079))))

(assert (=> d!834627 (= (validRegex!3612 r!23079) e!1828453)))

(assert (= (and d!834627 (not res!1197000)) b!2893568))

(assert (= (and b!2893568 c!470694) b!2893575))

(assert (= (and b!2893568 (not c!470694)) b!2893571))

(assert (= (and b!2893575 res!1196999) b!2893574))

(assert (= (and b!2893571 c!470693) b!2893572))

(assert (= (and b!2893571 (not c!470693)) b!2893569))

(assert (= (and b!2893572 res!1196996) b!2893570))

(assert (= (and b!2893569 (not res!1196998)) b!2893573))

(assert (= (and b!2893573 res!1196997) b!2893567))

(assert (= (or b!2893570 b!2893567) bm!188080))

(assert (= (or b!2893572 b!2893573) bm!188081))

(assert (= (or b!2893574 bm!188080) bm!188082))

(declare-fun m!3303279 () Bool)

(assert (=> bm!188081 m!3303279))

(declare-fun m!3303281 () Bool)

(assert (=> bm!188082 m!3303281))

(declare-fun m!3303283 () Bool)

(assert (=> b!2893575 m!3303283))

(assert (=> start!282034 d!834627))

(declare-fun d!834631 () Bool)

(declare-fun isEmpty!18816 (Option!6512) Bool)

(assert (=> d!834631 (= (isDefined!5076 (getLanguageWitness!546 r!23079)) (not (isEmpty!18816 (getLanguageWitness!546 r!23079))))))

(declare-fun bs!523909 () Bool)

(assert (= bs!523909 d!834631))

(assert (=> bs!523909 m!3303261))

(declare-fun m!3303285 () Bool)

(assert (=> bs!523909 m!3303285))

(assert (=> b!2893513 d!834631))

(declare-fun b!2893642 () Bool)

(declare-fun e!1828496 () Option!6512)

(declare-fun e!1828501 () Option!6512)

(assert (=> b!2893642 (= e!1828496 e!1828501)))

(declare-fun lt!1021286 () Option!6512)

(declare-fun call!188104 () Option!6512)

(assert (=> b!2893642 (= lt!1021286 call!188104)))

(declare-fun c!470729 () Bool)

(assert (=> b!2893642 (= c!470729 ((_ is Some!6511) lt!1021286))))

(declare-fun bm!188099 () Bool)

(declare-fun c!470724 () Bool)

(assert (=> bm!188099 (= call!188104 (getLanguageWitness!546 (ite c!470724 (regOne!18191 r!23079) (regTwo!18190 r!23079))))))

(declare-fun b!2893643 () Bool)

(declare-fun c!470726 () Bool)

(declare-fun lt!1021288 () Option!6512)

(assert (=> b!2893643 (= c!470726 ((_ is Some!6511) lt!1021288))))

(assert (=> b!2893643 (= lt!1021288 call!188104)))

(declare-fun e!1828498 () Option!6512)

(declare-fun e!1828499 () Option!6512)

(assert (=> b!2893643 (= e!1828498 e!1828499)))

(declare-fun b!2893644 () Bool)

(assert (=> b!2893644 (= e!1828501 lt!1021286)))

(declare-fun bm!188100 () Bool)

(declare-fun call!188105 () Option!6512)

(assert (=> bm!188100 (= call!188105 (getLanguageWitness!546 (ite c!470724 (regTwo!18191 r!23079) (regOne!18190 r!23079))))))

(declare-fun b!2893645 () Bool)

(declare-fun e!1828500 () Option!6512)

(declare-fun e!1828495 () Option!6512)

(assert (=> b!2893645 (= e!1828500 e!1828495)))

(declare-fun c!470723 () Bool)

(assert (=> b!2893645 (= c!470723 ((_ is EmptyLang!8839) r!23079))))

(declare-fun b!2893646 () Bool)

(assert (=> b!2893646 (= e!1828499 None!6511)))

(declare-fun b!2893647 () Bool)

(assert (=> b!2893647 (= e!1828496 e!1828498)))

(declare-fun lt!1021287 () Option!6512)

(assert (=> b!2893647 (= lt!1021287 call!188105)))

(declare-fun c!470725 () Bool)

(assert (=> b!2893647 (= c!470725 ((_ is Some!6511) lt!1021287))))

(declare-fun b!2893649 () Bool)

(declare-fun c!470730 () Bool)

(assert (=> b!2893649 (= c!470730 ((_ is ElementMatch!8839) r!23079))))

(declare-fun e!1828502 () Option!6512)

(assert (=> b!2893649 (= e!1828495 e!1828502)))

(declare-fun b!2893650 () Bool)

(assert (=> b!2893650 (= c!470724 ((_ is Union!8839) r!23079))))

(declare-fun e!1828497 () Option!6512)

(assert (=> b!2893650 (= e!1828497 e!1828496)))

(declare-fun b!2893651 () Bool)

(assert (=> b!2893651 (= e!1828500 (Some!6511 Nil!34516))))

(declare-fun b!2893652 () Bool)

(assert (=> b!2893652 (= e!1828501 call!188105)))

(declare-fun b!2893653 () Bool)

(assert (=> b!2893653 (= e!1828495 None!6511)))

(declare-fun b!2893648 () Bool)

(declare-fun ++!8237 (List!34640 List!34640) List!34640)

(assert (=> b!2893648 (= e!1828499 (Some!6511 (++!8237 (v!34637 lt!1021287) (v!34637 lt!1021288))))))

(declare-fun d!834633 () Bool)

(declare-fun c!470727 () Bool)

(assert (=> d!834633 (= c!470727 ((_ is EmptyExpr!8839) r!23079))))

(assert (=> d!834633 (= (getLanguageWitness!546 r!23079) e!1828500)))

(declare-fun b!2893654 () Bool)

(assert (=> b!2893654 (= e!1828502 (Some!6511 (Cons!34516 (c!470672 r!23079) Nil!34516)))))

(declare-fun b!2893655 () Bool)

(assert (=> b!2893655 (= e!1828502 e!1828497)))

(declare-fun c!470728 () Bool)

(assert (=> b!2893655 (= c!470728 ((_ is Star!8839) r!23079))))

(declare-fun b!2893656 () Bool)

(assert (=> b!2893656 (= e!1828497 (Some!6511 Nil!34516))))

(declare-fun b!2893657 () Bool)

(assert (=> b!2893657 (= e!1828498 None!6511)))

(assert (= (and d!834633 c!470727) b!2893651))

(assert (= (and d!834633 (not c!470727)) b!2893645))

(assert (= (and b!2893645 c!470723) b!2893653))

(assert (= (and b!2893645 (not c!470723)) b!2893649))

(assert (= (and b!2893649 c!470730) b!2893654))

(assert (= (and b!2893649 (not c!470730)) b!2893655))

(assert (= (and b!2893655 c!470728) b!2893656))

(assert (= (and b!2893655 (not c!470728)) b!2893650))

(assert (= (and b!2893650 c!470724) b!2893642))

(assert (= (and b!2893650 (not c!470724)) b!2893647))

(assert (= (and b!2893642 c!470729) b!2893644))

(assert (= (and b!2893642 (not c!470729)) b!2893652))

(assert (= (and b!2893647 c!470725) b!2893643))

(assert (= (and b!2893647 (not c!470725)) b!2893657))

(assert (= (and b!2893643 c!470726) b!2893648))

(assert (= (and b!2893643 (not c!470726)) b!2893646))

(assert (= (or b!2893652 b!2893647) bm!188100))

(assert (= (or b!2893642 b!2893643) bm!188099))

(declare-fun m!3303293 () Bool)

(assert (=> bm!188099 m!3303293))

(declare-fun m!3303295 () Bool)

(assert (=> bm!188100 m!3303295))

(declare-fun m!3303297 () Bool)

(assert (=> b!2893648 m!3303297))

(assert (=> b!2893513 d!834633))

(declare-fun b!2893658 () Bool)

(declare-fun e!1828504 () Bool)

(declare-fun call!188107 () Bool)

(assert (=> b!2893658 (= e!1828504 call!188107)))

(declare-fun b!2893659 () Bool)

(declare-fun e!1828506 () Bool)

(declare-fun e!1828509 () Bool)

(assert (=> b!2893659 (= e!1828506 e!1828509)))

(declare-fun c!470732 () Bool)

(assert (=> b!2893659 (= c!470732 ((_ is Star!8839) (regOne!18191 r!23079)))))

(declare-fun b!2893660 () Bool)

(declare-fun res!1197013 () Bool)

(declare-fun e!1828505 () Bool)

(assert (=> b!2893660 (=> res!1197013 e!1828505)))

(assert (=> b!2893660 (= res!1197013 (not ((_ is Concat!14160) (regOne!18191 r!23079))))))

(declare-fun e!1828508 () Bool)

(assert (=> b!2893660 (= e!1828508 e!1828505)))

(declare-fun bm!188102 () Bool)

(declare-fun call!188106 () Bool)

(declare-fun c!470731 () Bool)

(assert (=> bm!188102 (= call!188106 (validRegex!3612 (ite c!470731 (regOne!18191 (regOne!18191 r!23079)) (regOne!18190 (regOne!18191 r!23079)))))))

(declare-fun b!2893661 () Bool)

(declare-fun e!1828507 () Bool)

(assert (=> b!2893661 (= e!1828507 call!188107)))

(declare-fun b!2893662 () Bool)

(assert (=> b!2893662 (= e!1828509 e!1828508)))

(assert (=> b!2893662 (= c!470731 ((_ is Union!8839) (regOne!18191 r!23079)))))

(declare-fun b!2893663 () Bool)

(declare-fun res!1197011 () Bool)

(assert (=> b!2893663 (=> (not res!1197011) (not e!1828507))))

(assert (=> b!2893663 (= res!1197011 call!188106)))

(assert (=> b!2893663 (= e!1828508 e!1828507)))

(declare-fun bm!188103 () Bool)

(declare-fun call!188108 () Bool)

(assert (=> bm!188103 (= call!188108 (validRegex!3612 (ite c!470732 (reg!9168 (regOne!18191 r!23079)) (ite c!470731 (regTwo!18191 (regOne!18191 r!23079)) (regTwo!18190 (regOne!18191 r!23079))))))))

(declare-fun b!2893664 () Bool)

(assert (=> b!2893664 (= e!1828505 e!1828504)))

(declare-fun res!1197012 () Bool)

(assert (=> b!2893664 (=> (not res!1197012) (not e!1828504))))

(assert (=> b!2893664 (= res!1197012 call!188106)))

(declare-fun b!2893665 () Bool)

(declare-fun e!1828503 () Bool)

(assert (=> b!2893665 (= e!1828503 call!188108)))

(declare-fun b!2893666 () Bool)

(assert (=> b!2893666 (= e!1828509 e!1828503)))

(declare-fun res!1197014 () Bool)

(assert (=> b!2893666 (= res!1197014 (not (nullable!2738 (reg!9168 (regOne!18191 r!23079)))))))

(assert (=> b!2893666 (=> (not res!1197014) (not e!1828503))))

(declare-fun bm!188101 () Bool)

(assert (=> bm!188101 (= call!188107 call!188108)))

(declare-fun d!834637 () Bool)

(declare-fun res!1197015 () Bool)

(assert (=> d!834637 (=> res!1197015 e!1828506)))

(assert (=> d!834637 (= res!1197015 ((_ is ElementMatch!8839) (regOne!18191 r!23079)))))

(assert (=> d!834637 (= (validRegex!3612 (regOne!18191 r!23079)) e!1828506)))

(assert (= (and d!834637 (not res!1197015)) b!2893659))

(assert (= (and b!2893659 c!470732) b!2893666))

(assert (= (and b!2893659 (not c!470732)) b!2893662))

(assert (= (and b!2893666 res!1197014) b!2893665))

(assert (= (and b!2893662 c!470731) b!2893663))

(assert (= (and b!2893662 (not c!470731)) b!2893660))

(assert (= (and b!2893663 res!1197011) b!2893661))

(assert (= (and b!2893660 (not res!1197013)) b!2893664))

(assert (= (and b!2893664 res!1197012) b!2893658))

(assert (= (or b!2893661 b!2893658) bm!188101))

(assert (= (or b!2893663 b!2893664) bm!188102))

(assert (= (or b!2893665 bm!188101) bm!188103))

(declare-fun m!3303299 () Bool)

(assert (=> bm!188102 m!3303299))

(declare-fun m!3303301 () Bool)

(assert (=> bm!188103 m!3303301))

(declare-fun m!3303303 () Bool)

(assert (=> b!2893666 m!3303303))

(assert (=> b!2893508 d!834637))

(declare-fun b!2893676 () Bool)

(declare-fun e!1828518 () Option!6512)

(declare-fun e!1828523 () Option!6512)

(assert (=> b!2893676 (= e!1828518 e!1828523)))

(declare-fun lt!1021289 () Option!6512)

(declare-fun call!188112 () Option!6512)

(assert (=> b!2893676 (= lt!1021289 call!188112)))

(declare-fun c!470741 () Bool)

(assert (=> b!2893676 (= c!470741 ((_ is Some!6511) lt!1021289))))

(declare-fun bm!188107 () Bool)

(declare-fun c!470736 () Bool)

(assert (=> bm!188107 (= call!188112 (getLanguageWitness!546 (ite c!470736 (regOne!18191 (regOne!18191 r!23079)) (regTwo!18190 (regOne!18191 r!23079)))))))

(declare-fun b!2893677 () Bool)

(declare-fun c!470738 () Bool)

(declare-fun lt!1021291 () Option!6512)

(assert (=> b!2893677 (= c!470738 ((_ is Some!6511) lt!1021291))))

(assert (=> b!2893677 (= lt!1021291 call!188112)))

(declare-fun e!1828520 () Option!6512)

(declare-fun e!1828521 () Option!6512)

(assert (=> b!2893677 (= e!1828520 e!1828521)))

(declare-fun b!2893678 () Bool)

(assert (=> b!2893678 (= e!1828523 lt!1021289)))

(declare-fun bm!188108 () Bool)

(declare-fun call!188113 () Option!6512)

(assert (=> bm!188108 (= call!188113 (getLanguageWitness!546 (ite c!470736 (regTwo!18191 (regOne!18191 r!23079)) (regOne!18190 (regOne!18191 r!23079)))))))

(declare-fun b!2893679 () Bool)

(declare-fun e!1828522 () Option!6512)

(declare-fun e!1828517 () Option!6512)

(assert (=> b!2893679 (= e!1828522 e!1828517)))

(declare-fun c!470735 () Bool)

(assert (=> b!2893679 (= c!470735 ((_ is EmptyLang!8839) (regOne!18191 r!23079)))))

(declare-fun b!2893680 () Bool)

(assert (=> b!2893680 (= e!1828521 None!6511)))

(declare-fun b!2893681 () Bool)

(assert (=> b!2893681 (= e!1828518 e!1828520)))

(declare-fun lt!1021290 () Option!6512)

(assert (=> b!2893681 (= lt!1021290 call!188113)))

(declare-fun c!470737 () Bool)

(assert (=> b!2893681 (= c!470737 ((_ is Some!6511) lt!1021290))))

(declare-fun b!2893683 () Bool)

(declare-fun c!470742 () Bool)

(assert (=> b!2893683 (= c!470742 ((_ is ElementMatch!8839) (regOne!18191 r!23079)))))

(declare-fun e!1828524 () Option!6512)

(assert (=> b!2893683 (= e!1828517 e!1828524)))

(declare-fun b!2893684 () Bool)

(assert (=> b!2893684 (= c!470736 ((_ is Union!8839) (regOne!18191 r!23079)))))

(declare-fun e!1828519 () Option!6512)

(assert (=> b!2893684 (= e!1828519 e!1828518)))

(declare-fun b!2893685 () Bool)

(assert (=> b!2893685 (= e!1828522 (Some!6511 Nil!34516))))

(declare-fun b!2893686 () Bool)

(assert (=> b!2893686 (= e!1828523 call!188113)))

(declare-fun b!2893687 () Bool)

(assert (=> b!2893687 (= e!1828517 None!6511)))

(declare-fun b!2893682 () Bool)

(assert (=> b!2893682 (= e!1828521 (Some!6511 (++!8237 (v!34637 lt!1021290) (v!34637 lt!1021291))))))

(declare-fun d!834639 () Bool)

(declare-fun c!470739 () Bool)

(assert (=> d!834639 (= c!470739 ((_ is EmptyExpr!8839) (regOne!18191 r!23079)))))

(assert (=> d!834639 (= (getLanguageWitness!546 (regOne!18191 r!23079)) e!1828522)))

(declare-fun b!2893688 () Bool)

(assert (=> b!2893688 (= e!1828524 (Some!6511 (Cons!34516 (c!470672 (regOne!18191 r!23079)) Nil!34516)))))

(declare-fun b!2893689 () Bool)

(assert (=> b!2893689 (= e!1828524 e!1828519)))

(declare-fun c!470740 () Bool)

(assert (=> b!2893689 (= c!470740 ((_ is Star!8839) (regOne!18191 r!23079)))))

(declare-fun b!2893690 () Bool)

(assert (=> b!2893690 (= e!1828519 (Some!6511 Nil!34516))))

(declare-fun b!2893691 () Bool)

(assert (=> b!2893691 (= e!1828520 None!6511)))

(assert (= (and d!834639 c!470739) b!2893685))

(assert (= (and d!834639 (not c!470739)) b!2893679))

(assert (= (and b!2893679 c!470735) b!2893687))

(assert (= (and b!2893679 (not c!470735)) b!2893683))

(assert (= (and b!2893683 c!470742) b!2893688))

(assert (= (and b!2893683 (not c!470742)) b!2893689))

(assert (= (and b!2893689 c!470740) b!2893690))

(assert (= (and b!2893689 (not c!470740)) b!2893684))

(assert (= (and b!2893684 c!470736) b!2893676))

(assert (= (and b!2893684 (not c!470736)) b!2893681))

(assert (= (and b!2893676 c!470741) b!2893678))

(assert (= (and b!2893676 (not c!470741)) b!2893686))

(assert (= (and b!2893681 c!470737) b!2893677))

(assert (= (and b!2893681 (not c!470737)) b!2893691))

(assert (= (and b!2893677 c!470738) b!2893682))

(assert (= (and b!2893677 (not c!470738)) b!2893680))

(assert (= (or b!2893686 b!2893681) bm!188108))

(assert (= (or b!2893676 b!2893677) bm!188107))

(declare-fun m!3303313 () Bool)

(assert (=> bm!188107 m!3303313))

(declare-fun m!3303315 () Bool)

(assert (=> bm!188108 m!3303315))

(declare-fun m!3303317 () Bool)

(assert (=> b!2893682 m!3303317))

(assert (=> b!2893511 d!834639))

(declare-fun b!2893708 () Bool)

(declare-fun e!1828534 () Option!6512)

(declare-fun e!1828539 () Option!6512)

(assert (=> b!2893708 (= e!1828534 e!1828539)))

(declare-fun lt!1021295 () Option!6512)

(declare-fun call!188116 () Option!6512)

(assert (=> b!2893708 (= lt!1021295 call!188116)))

(declare-fun c!470757 () Bool)

(assert (=> b!2893708 (= c!470757 ((_ is Some!6511) lt!1021295))))

(declare-fun bm!188111 () Bool)

(declare-fun c!470752 () Bool)

(assert (=> bm!188111 (= call!188116 (getLanguageWitness!546 (ite c!470752 (regOne!18191 (regTwo!18191 r!23079)) (regTwo!18190 (regTwo!18191 r!23079)))))))

(declare-fun b!2893709 () Bool)

(declare-fun c!470754 () Bool)

(declare-fun lt!1021297 () Option!6512)

(assert (=> b!2893709 (= c!470754 ((_ is Some!6511) lt!1021297))))

(assert (=> b!2893709 (= lt!1021297 call!188116)))

(declare-fun e!1828536 () Option!6512)

(declare-fun e!1828537 () Option!6512)

(assert (=> b!2893709 (= e!1828536 e!1828537)))

(declare-fun b!2893710 () Bool)

(assert (=> b!2893710 (= e!1828539 lt!1021295)))

(declare-fun bm!188112 () Bool)

(declare-fun call!188117 () Option!6512)

(assert (=> bm!188112 (= call!188117 (getLanguageWitness!546 (ite c!470752 (regTwo!18191 (regTwo!18191 r!23079)) (regOne!18190 (regTwo!18191 r!23079)))))))

(declare-fun b!2893711 () Bool)

(declare-fun e!1828538 () Option!6512)

(declare-fun e!1828533 () Option!6512)

(assert (=> b!2893711 (= e!1828538 e!1828533)))

(declare-fun c!470751 () Bool)

(assert (=> b!2893711 (= c!470751 ((_ is EmptyLang!8839) (regTwo!18191 r!23079)))))

(declare-fun b!2893712 () Bool)

(assert (=> b!2893712 (= e!1828537 None!6511)))

(declare-fun b!2893713 () Bool)

(assert (=> b!2893713 (= e!1828534 e!1828536)))

(declare-fun lt!1021296 () Option!6512)

(assert (=> b!2893713 (= lt!1021296 call!188117)))

(declare-fun c!470753 () Bool)

(assert (=> b!2893713 (= c!470753 ((_ is Some!6511) lt!1021296))))

(declare-fun b!2893715 () Bool)

(declare-fun c!470758 () Bool)

(assert (=> b!2893715 (= c!470758 ((_ is ElementMatch!8839) (regTwo!18191 r!23079)))))

(declare-fun e!1828540 () Option!6512)

(assert (=> b!2893715 (= e!1828533 e!1828540)))

(declare-fun b!2893716 () Bool)

(assert (=> b!2893716 (= c!470752 ((_ is Union!8839) (regTwo!18191 r!23079)))))

(declare-fun e!1828535 () Option!6512)

(assert (=> b!2893716 (= e!1828535 e!1828534)))

(declare-fun b!2893717 () Bool)

(assert (=> b!2893717 (= e!1828538 (Some!6511 Nil!34516))))

(declare-fun b!2893718 () Bool)

(assert (=> b!2893718 (= e!1828539 call!188117)))

(declare-fun b!2893719 () Bool)

(assert (=> b!2893719 (= e!1828533 None!6511)))

(declare-fun b!2893714 () Bool)

(assert (=> b!2893714 (= e!1828537 (Some!6511 (++!8237 (v!34637 lt!1021296) (v!34637 lt!1021297))))))

(declare-fun d!834645 () Bool)

(declare-fun c!470755 () Bool)

(assert (=> d!834645 (= c!470755 ((_ is EmptyExpr!8839) (regTwo!18191 r!23079)))))

(assert (=> d!834645 (= (getLanguageWitness!546 (regTwo!18191 r!23079)) e!1828538)))

(declare-fun b!2893720 () Bool)

(assert (=> b!2893720 (= e!1828540 (Some!6511 (Cons!34516 (c!470672 (regTwo!18191 r!23079)) Nil!34516)))))

(declare-fun b!2893721 () Bool)

(assert (=> b!2893721 (= e!1828540 e!1828535)))

(declare-fun c!470756 () Bool)

(assert (=> b!2893721 (= c!470756 ((_ is Star!8839) (regTwo!18191 r!23079)))))

(declare-fun b!2893722 () Bool)

(assert (=> b!2893722 (= e!1828535 (Some!6511 Nil!34516))))

(declare-fun b!2893723 () Bool)

(assert (=> b!2893723 (= e!1828536 None!6511)))

(assert (= (and d!834645 c!470755) b!2893717))

(assert (= (and d!834645 (not c!470755)) b!2893711))

(assert (= (and b!2893711 c!470751) b!2893719))

(assert (= (and b!2893711 (not c!470751)) b!2893715))

(assert (= (and b!2893715 c!470758) b!2893720))

(assert (= (and b!2893715 (not c!470758)) b!2893721))

(assert (= (and b!2893721 c!470756) b!2893722))

(assert (= (and b!2893721 (not c!470756)) b!2893716))

(assert (= (and b!2893716 c!470752) b!2893708))

(assert (= (and b!2893716 (not c!470752)) b!2893713))

(assert (= (and b!2893708 c!470757) b!2893710))

(assert (= (and b!2893708 (not c!470757)) b!2893718))

(assert (= (and b!2893713 c!470753) b!2893709))

(assert (= (and b!2893713 (not c!470753)) b!2893723))

(assert (= (and b!2893709 c!470754) b!2893714))

(assert (= (and b!2893709 (not c!470754)) b!2893712))

(assert (= (or b!2893718 b!2893713) bm!188112))

(assert (= (or b!2893708 b!2893709) bm!188111))

(declare-fun m!3303321 () Bool)

(assert (=> bm!188111 m!3303321))

(declare-fun m!3303325 () Bool)

(assert (=> bm!188112 m!3303325))

(declare-fun m!3303329 () Bool)

(assert (=> b!2893714 m!3303329))

(assert (=> b!2893515 d!834645))

(declare-fun d!834649 () Bool)

(assert (=> d!834649 (matchR!3803 (regTwo!18191 r!23079) (get!10455 (getLanguageWitness!546 (regTwo!18191 r!23079))))))

(declare-fun lt!1021303 () Unit!48095)

(declare-fun choose!17063 (Regex!8839) Unit!48095)

(assert (=> d!834649 (= lt!1021303 (choose!17063 (regTwo!18191 r!23079)))))

(assert (=> d!834649 (validRegex!3612 (regTwo!18191 r!23079))))

(assert (=> d!834649 (= (lemmaGetWitnessMatches!102 (regTwo!18191 r!23079)) lt!1021303)))

(declare-fun bs!523911 () Bool)

(assert (= bs!523911 d!834649))

(declare-fun m!3303337 () Bool)

(assert (=> bs!523911 m!3303337))

(declare-fun m!3303339 () Bool)

(assert (=> bs!523911 m!3303339))

(assert (=> bs!523911 m!3303271))

(assert (=> bs!523911 m!3303337))

(assert (=> bs!523911 m!3303271))

(assert (=> bs!523911 m!3303257))

(declare-fun m!3303341 () Bool)

(assert (=> bs!523911 m!3303341))

(assert (=> b!2893515 d!834649))

(declare-fun d!834653 () Bool)

(assert (=> d!834653 (= (get!10455 lt!1021269) (v!34637 lt!1021269))))

(assert (=> b!2893515 d!834653))

(declare-fun b!2893796 () Bool)

(declare-fun res!1197060 () Bool)

(declare-fun e!1828578 () Bool)

(assert (=> b!2893796 (=> (not res!1197060) (not e!1828578))))

(declare-fun isEmpty!18819 (List!34640) Bool)

(declare-fun tail!4612 (List!34640) List!34640)

(assert (=> b!2893796 (= res!1197060 (isEmpty!18819 (tail!4612 (get!10455 lt!1021269))))))

(declare-fun b!2893797 () Bool)

(declare-fun res!1197053 () Bool)

(declare-fun e!1828581 () Bool)

(assert (=> b!2893797 (=> res!1197053 e!1828581)))

(assert (=> b!2893797 (= res!1197053 (not (isEmpty!18819 (tail!4612 (get!10455 lt!1021269)))))))

(declare-fun bm!188119 () Bool)

(declare-fun call!188124 () Bool)

(assert (=> bm!188119 (= call!188124 (isEmpty!18819 (get!10455 lt!1021269)))))

(declare-fun b!2893799 () Bool)

(declare-fun head!6387 (List!34640) C!17860)

(assert (=> b!2893799 (= e!1828578 (= (head!6387 (get!10455 lt!1021269)) (c!470672 (regTwo!18191 r!23079))))))

(declare-fun b!2893800 () Bool)

(declare-fun e!1828579 () Bool)

(declare-fun e!1828580 () Bool)

(assert (=> b!2893800 (= e!1828579 e!1828580)))

(declare-fun c!470780 () Bool)

(assert (=> b!2893800 (= c!470780 ((_ is EmptyLang!8839) (regTwo!18191 r!23079)))))

(declare-fun b!2893801 () Bool)

(declare-fun res!1197055 () Bool)

(declare-fun e!1828582 () Bool)

(assert (=> b!2893801 (=> res!1197055 e!1828582)))

(assert (=> b!2893801 (= res!1197055 (not ((_ is ElementMatch!8839) (regTwo!18191 r!23079))))))

(assert (=> b!2893801 (= e!1828580 e!1828582)))

(declare-fun b!2893802 () Bool)

(declare-fun lt!1021311 () Bool)

(assert (=> b!2893802 (= e!1828579 (= lt!1021311 call!188124))))

(declare-fun b!2893803 () Bool)

(declare-fun e!1828577 () Bool)

(assert (=> b!2893803 (= e!1828577 (nullable!2738 (regTwo!18191 r!23079)))))

(declare-fun b!2893804 () Bool)

(declare-fun derivativeStep!2358 (Regex!8839 C!17860) Regex!8839)

(assert (=> b!2893804 (= e!1828577 (matchR!3803 (derivativeStep!2358 (regTwo!18191 r!23079) (head!6387 (get!10455 lt!1021269))) (tail!4612 (get!10455 lt!1021269))))))

(declare-fun b!2893805 () Bool)

(declare-fun res!1197058 () Bool)

(assert (=> b!2893805 (=> (not res!1197058) (not e!1828578))))

(assert (=> b!2893805 (= res!1197058 (not call!188124))))

(declare-fun b!2893806 () Bool)

(declare-fun e!1828583 () Bool)

(assert (=> b!2893806 (= e!1828582 e!1828583)))

(declare-fun res!1197057 () Bool)

(assert (=> b!2893806 (=> (not res!1197057) (not e!1828583))))

(assert (=> b!2893806 (= res!1197057 (not lt!1021311))))

(declare-fun b!2893807 () Bool)

(assert (=> b!2893807 (= e!1828583 e!1828581)))

(declare-fun res!1197059 () Bool)

(assert (=> b!2893807 (=> res!1197059 e!1828581)))

(assert (=> b!2893807 (= res!1197059 call!188124)))

(declare-fun d!834655 () Bool)

(assert (=> d!834655 e!1828579))

(declare-fun c!470781 () Bool)

(assert (=> d!834655 (= c!470781 ((_ is EmptyExpr!8839) (regTwo!18191 r!23079)))))

(assert (=> d!834655 (= lt!1021311 e!1828577)))

(declare-fun c!470779 () Bool)

(assert (=> d!834655 (= c!470779 (isEmpty!18819 (get!10455 lt!1021269)))))

(assert (=> d!834655 (validRegex!3612 (regTwo!18191 r!23079))))

(assert (=> d!834655 (= (matchR!3803 (regTwo!18191 r!23079) (get!10455 lt!1021269)) lt!1021311)))

(declare-fun b!2893798 () Bool)

(assert (=> b!2893798 (= e!1828580 (not lt!1021311))))

(declare-fun b!2893808 () Bool)

(declare-fun res!1197056 () Bool)

(assert (=> b!2893808 (=> res!1197056 e!1828582)))

(assert (=> b!2893808 (= res!1197056 e!1828578)))

(declare-fun res!1197054 () Bool)

(assert (=> b!2893808 (=> (not res!1197054) (not e!1828578))))

(assert (=> b!2893808 (= res!1197054 lt!1021311)))

(declare-fun b!2893809 () Bool)

(assert (=> b!2893809 (= e!1828581 (not (= (head!6387 (get!10455 lt!1021269)) (c!470672 (regTwo!18191 r!23079)))))))

(assert (= (and d!834655 c!470779) b!2893803))

(assert (= (and d!834655 (not c!470779)) b!2893804))

(assert (= (and d!834655 c!470781) b!2893802))

(assert (= (and d!834655 (not c!470781)) b!2893800))

(assert (= (and b!2893800 c!470780) b!2893798))

(assert (= (and b!2893800 (not c!470780)) b!2893801))

(assert (= (and b!2893801 (not res!1197055)) b!2893808))

(assert (= (and b!2893808 res!1197054) b!2893805))

(assert (= (and b!2893805 res!1197058) b!2893796))

(assert (= (and b!2893796 res!1197060) b!2893799))

(assert (= (and b!2893808 (not res!1197056)) b!2893806))

(assert (= (and b!2893806 res!1197057) b!2893807))

(assert (= (and b!2893807 (not res!1197059)) b!2893797))

(assert (= (and b!2893797 (not res!1197053)) b!2893809))

(assert (= (or b!2893802 b!2893805 b!2893807) bm!188119))

(assert (=> bm!188119 m!3303267))

(declare-fun m!3303359 () Bool)

(assert (=> bm!188119 m!3303359))

(assert (=> b!2893796 m!3303267))

(declare-fun m!3303363 () Bool)

(assert (=> b!2893796 m!3303363))

(assert (=> b!2893796 m!3303363))

(declare-fun m!3303365 () Bool)

(assert (=> b!2893796 m!3303365))

(assert (=> b!2893804 m!3303267))

(declare-fun m!3303367 () Bool)

(assert (=> b!2893804 m!3303367))

(assert (=> b!2893804 m!3303367))

(declare-fun m!3303371 () Bool)

(assert (=> b!2893804 m!3303371))

(assert (=> b!2893804 m!3303267))

(assert (=> b!2893804 m!3303363))

(assert (=> b!2893804 m!3303371))

(assert (=> b!2893804 m!3303363))

(declare-fun m!3303375 () Bool)

(assert (=> b!2893804 m!3303375))

(declare-fun m!3303377 () Bool)

(assert (=> b!2893803 m!3303377))

(assert (=> b!2893809 m!3303267))

(assert (=> b!2893809 m!3303367))

(assert (=> b!2893797 m!3303267))

(assert (=> b!2893797 m!3303363))

(assert (=> b!2893797 m!3303363))

(assert (=> b!2893797 m!3303365))

(assert (=> d!834655 m!3303267))

(assert (=> d!834655 m!3303359))

(assert (=> d!834655 m!3303257))

(assert (=> b!2893799 m!3303267))

(assert (=> b!2893799 m!3303367))

(assert (=> b!2893515 d!834655))

(declare-fun d!834663 () Bool)

(assert (=> d!834663 (= (isDefined!5076 lt!1021269) (not (isEmpty!18816 lt!1021269)))))

(declare-fun bs!523914 () Bool)

(assert (= bs!523914 d!834663))

(declare-fun m!3303379 () Bool)

(assert (=> bs!523914 m!3303379))

(assert (=> b!2893515 d!834663))

(declare-fun b!2893824 () Bool)

(declare-fun e!1828592 () Bool)

(declare-fun call!188127 () Bool)

(assert (=> b!2893824 (= e!1828592 call!188127)))

(declare-fun b!2893825 () Bool)

(declare-fun e!1828594 () Bool)

(declare-fun e!1828597 () Bool)

(assert (=> b!2893825 (= e!1828594 e!1828597)))

(declare-fun c!470786 () Bool)

(assert (=> b!2893825 (= c!470786 ((_ is Star!8839) (regTwo!18191 r!23079)))))

(declare-fun b!2893826 () Bool)

(declare-fun res!1197071 () Bool)

(declare-fun e!1828593 () Bool)

(assert (=> b!2893826 (=> res!1197071 e!1828593)))

(assert (=> b!2893826 (= res!1197071 (not ((_ is Concat!14160) (regTwo!18191 r!23079))))))

(declare-fun e!1828596 () Bool)

(assert (=> b!2893826 (= e!1828596 e!1828593)))

(declare-fun bm!188122 () Bool)

(declare-fun call!188126 () Bool)

(declare-fun c!470785 () Bool)

(assert (=> bm!188122 (= call!188126 (validRegex!3612 (ite c!470785 (regOne!18191 (regTwo!18191 r!23079)) (regOne!18190 (regTwo!18191 r!23079)))))))

(declare-fun b!2893827 () Bool)

(declare-fun e!1828595 () Bool)

(assert (=> b!2893827 (= e!1828595 call!188127)))

(declare-fun b!2893828 () Bool)

(assert (=> b!2893828 (= e!1828597 e!1828596)))

(assert (=> b!2893828 (= c!470785 ((_ is Union!8839) (regTwo!18191 r!23079)))))

(declare-fun b!2893829 () Bool)

(declare-fun res!1197069 () Bool)

(assert (=> b!2893829 (=> (not res!1197069) (not e!1828595))))

(assert (=> b!2893829 (= res!1197069 call!188126)))

(assert (=> b!2893829 (= e!1828596 e!1828595)))

(declare-fun call!188128 () Bool)

(declare-fun bm!188123 () Bool)

(assert (=> bm!188123 (= call!188128 (validRegex!3612 (ite c!470786 (reg!9168 (regTwo!18191 r!23079)) (ite c!470785 (regTwo!18191 (regTwo!18191 r!23079)) (regTwo!18190 (regTwo!18191 r!23079))))))))

(declare-fun b!2893830 () Bool)

(assert (=> b!2893830 (= e!1828593 e!1828592)))

(declare-fun res!1197070 () Bool)

(assert (=> b!2893830 (=> (not res!1197070) (not e!1828592))))

(assert (=> b!2893830 (= res!1197070 call!188126)))

(declare-fun b!2893831 () Bool)

(declare-fun e!1828591 () Bool)

(assert (=> b!2893831 (= e!1828591 call!188128)))

(declare-fun b!2893832 () Bool)

(assert (=> b!2893832 (= e!1828597 e!1828591)))

(declare-fun res!1197072 () Bool)

(assert (=> b!2893832 (= res!1197072 (not (nullable!2738 (reg!9168 (regTwo!18191 r!23079)))))))

(assert (=> b!2893832 (=> (not res!1197072) (not e!1828591))))

(declare-fun bm!188121 () Bool)

(assert (=> bm!188121 (= call!188127 call!188128)))

(declare-fun d!834665 () Bool)

(declare-fun res!1197073 () Bool)

(assert (=> d!834665 (=> res!1197073 e!1828594)))

(assert (=> d!834665 (= res!1197073 ((_ is ElementMatch!8839) (regTwo!18191 r!23079)))))

(assert (=> d!834665 (= (validRegex!3612 (regTwo!18191 r!23079)) e!1828594)))

(assert (= (and d!834665 (not res!1197073)) b!2893825))

(assert (= (and b!2893825 c!470786) b!2893832))

(assert (= (and b!2893825 (not c!470786)) b!2893828))

(assert (= (and b!2893832 res!1197072) b!2893831))

(assert (= (and b!2893828 c!470785) b!2893829))

(assert (= (and b!2893828 (not c!470785)) b!2893826))

(assert (= (and b!2893829 res!1197069) b!2893827))

(assert (= (and b!2893826 (not res!1197071)) b!2893830))

(assert (= (and b!2893830 res!1197070) b!2893824))

(assert (= (or b!2893827 b!2893824) bm!188121))

(assert (= (or b!2893829 b!2893830) bm!188122))

(assert (= (or b!2893831 bm!188121) bm!188123))

(declare-fun m!3303383 () Bool)

(assert (=> bm!188122 m!3303383))

(declare-fun m!3303389 () Bool)

(assert (=> bm!188123 m!3303389))

(declare-fun m!3303391 () Bool)

(assert (=> b!2893832 m!3303391))

(assert (=> b!2893514 d!834665))

(declare-fun b!2893874 () Bool)

(declare-fun e!1828616 () Bool)

(declare-fun tp!929000 () Bool)

(declare-fun tp!929003 () Bool)

(assert (=> b!2893874 (= e!1828616 (and tp!929000 tp!929003))))

(declare-fun b!2893873 () Bool)

(declare-fun tp!929004 () Bool)

(assert (=> b!2893873 (= e!1828616 tp!929004)))

(assert (=> b!2893507 (= tp!928978 e!1828616)))

(declare-fun b!2893871 () Bool)

(assert (=> b!2893871 (= e!1828616 tp_is_empty!15265)))

(declare-fun b!2893872 () Bool)

(declare-fun tp!929002 () Bool)

(declare-fun tp!929001 () Bool)

(assert (=> b!2893872 (= e!1828616 (and tp!929002 tp!929001))))

(assert (= (and b!2893507 ((_ is ElementMatch!8839) (reg!9168 r!23079))) b!2893871))

(assert (= (and b!2893507 ((_ is Concat!14160) (reg!9168 r!23079))) b!2893872))

(assert (= (and b!2893507 ((_ is Star!8839) (reg!9168 r!23079))) b!2893873))

(assert (= (and b!2893507 ((_ is Union!8839) (reg!9168 r!23079))) b!2893874))

(declare-fun b!2893882 () Bool)

(declare-fun e!1828618 () Bool)

(declare-fun tp!929010 () Bool)

(declare-fun tp!929013 () Bool)

(assert (=> b!2893882 (= e!1828618 (and tp!929010 tp!929013))))

(declare-fun b!2893881 () Bool)

(declare-fun tp!929014 () Bool)

(assert (=> b!2893881 (= e!1828618 tp!929014)))

(assert (=> b!2893516 (= tp!928979 e!1828618)))

(declare-fun b!2893879 () Bool)

(assert (=> b!2893879 (= e!1828618 tp_is_empty!15265)))

(declare-fun b!2893880 () Bool)

(declare-fun tp!929012 () Bool)

(declare-fun tp!929011 () Bool)

(assert (=> b!2893880 (= e!1828618 (and tp!929012 tp!929011))))

(assert (= (and b!2893516 ((_ is ElementMatch!8839) (regOne!18190 r!23079))) b!2893879))

(assert (= (and b!2893516 ((_ is Concat!14160) (regOne!18190 r!23079))) b!2893880))

(assert (= (and b!2893516 ((_ is Star!8839) (regOne!18190 r!23079))) b!2893881))

(assert (= (and b!2893516 ((_ is Union!8839) (regOne!18190 r!23079))) b!2893882))

(declare-fun b!2893888 () Bool)

(declare-fun e!1828620 () Bool)

(declare-fun tp!929017 () Bool)

(declare-fun tp!929023 () Bool)

(assert (=> b!2893888 (= e!1828620 (and tp!929017 tp!929023))))

(declare-fun b!2893887 () Bool)

(declare-fun tp!929024 () Bool)

(assert (=> b!2893887 (= e!1828620 tp!929024)))

(assert (=> b!2893516 (= tp!928977 e!1828620)))

(declare-fun b!2893885 () Bool)

(assert (=> b!2893885 (= e!1828620 tp_is_empty!15265)))

(declare-fun b!2893886 () Bool)

(declare-fun tp!929021 () Bool)

(declare-fun tp!929019 () Bool)

(assert (=> b!2893886 (= e!1828620 (and tp!929021 tp!929019))))

(assert (= (and b!2893516 ((_ is ElementMatch!8839) (regTwo!18190 r!23079))) b!2893885))

(assert (= (and b!2893516 ((_ is Concat!14160) (regTwo!18190 r!23079))) b!2893886))

(assert (= (and b!2893516 ((_ is Star!8839) (regTwo!18190 r!23079))) b!2893887))

(assert (= (and b!2893516 ((_ is Union!8839) (regTwo!18190 r!23079))) b!2893888))

(declare-fun b!2893898 () Bool)

(declare-fun e!1828622 () Bool)

(declare-fun tp!929030 () Bool)

(declare-fun tp!929033 () Bool)

(assert (=> b!2893898 (= e!1828622 (and tp!929030 tp!929033))))

(declare-fun b!2893897 () Bool)

(declare-fun tp!929034 () Bool)

(assert (=> b!2893897 (= e!1828622 tp!929034)))

(assert (=> b!2893509 (= tp!928976 e!1828622)))

(declare-fun b!2893895 () Bool)

(assert (=> b!2893895 (= e!1828622 tp_is_empty!15265)))

(declare-fun b!2893896 () Bool)

(declare-fun tp!929032 () Bool)

(declare-fun tp!929031 () Bool)

(assert (=> b!2893896 (= e!1828622 (and tp!929032 tp!929031))))

(assert (= (and b!2893509 ((_ is ElementMatch!8839) (regOne!18191 r!23079))) b!2893895))

(assert (= (and b!2893509 ((_ is Concat!14160) (regOne!18191 r!23079))) b!2893896))

(assert (= (and b!2893509 ((_ is Star!8839) (regOne!18191 r!23079))) b!2893897))

(assert (= (and b!2893509 ((_ is Union!8839) (regOne!18191 r!23079))) b!2893898))

(declare-fun b!2893906 () Bool)

(declare-fun e!1828624 () Bool)

(declare-fun tp!929040 () Bool)

(declare-fun tp!929043 () Bool)

(assert (=> b!2893906 (= e!1828624 (and tp!929040 tp!929043))))

(declare-fun b!2893905 () Bool)

(declare-fun tp!929044 () Bool)

(assert (=> b!2893905 (= e!1828624 tp!929044)))

(assert (=> b!2893509 (= tp!928975 e!1828624)))

(declare-fun b!2893903 () Bool)

(assert (=> b!2893903 (= e!1828624 tp_is_empty!15265)))

(declare-fun b!2893904 () Bool)

(declare-fun tp!929042 () Bool)

(declare-fun tp!929041 () Bool)

(assert (=> b!2893904 (= e!1828624 (and tp!929042 tp!929041))))

(assert (= (and b!2893509 ((_ is ElementMatch!8839) (regTwo!18191 r!23079))) b!2893903))

(assert (= (and b!2893509 ((_ is Concat!14160) (regTwo!18191 r!23079))) b!2893904))

(assert (= (and b!2893509 ((_ is Star!8839) (regTwo!18191 r!23079))) b!2893905))

(assert (= (and b!2893509 ((_ is Union!8839) (regTwo!18191 r!23079))) b!2893906))

(check-sat (not bm!188103) (not d!834631) (not bm!188111) (not bm!188100) (not b!2893881) (not bm!188108) (not bm!188099) (not b!2893804) (not b!2893797) (not d!834649) (not bm!188107) (not b!2893886) (not b!2893897) (not b!2893682) (not b!2893803) (not b!2893906) (not bm!188119) (not b!2893905) (not b!2893874) (not bm!188112) (not b!2893904) (not b!2893880) (not b!2893882) (not b!2893887) (not b!2893873) (not d!834655) (not b!2893666) (not d!834663) (not bm!188123) (not b!2893888) tp_is_empty!15265 (not b!2893896) (not b!2893872) (not bm!188081) (not bm!188102) (not b!2893796) (not b!2893832) (not b!2893799) (not b!2893714) (not b!2893809) (not b!2893898) (not bm!188082) (not b!2893648) (not bm!188122) (not b!2893575))
(check-sat)
