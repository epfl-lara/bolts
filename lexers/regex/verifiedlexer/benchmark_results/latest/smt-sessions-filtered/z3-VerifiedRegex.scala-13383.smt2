; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!725070 () Bool)

(assert start!725070)

(declare-fun b!7488470 () Bool)

(assert (=> b!7488470 true))

(assert (=> b!7488470 true))

(assert (=> b!7488470 true))

(declare-fun lambda!463963 () Int)

(declare-fun lambda!463962 () Int)

(assert (=> b!7488470 (not (= lambda!463963 lambda!463962))))

(assert (=> b!7488470 true))

(assert (=> b!7488470 true))

(assert (=> b!7488470 true))

(declare-fun b!7488455 () Bool)

(declare-fun e!4465720 () Bool)

(declare-fun tp_is_empty!49547 () Bool)

(declare-fun tp!2173507 () Bool)

(assert (=> b!7488455 (= e!4465720 (and tp_is_empty!49547 tp!2173507))))

(declare-fun b!7488456 () Bool)

(declare-fun e!4465718 () Bool)

(assert (=> b!7488456 (= e!4465718 tp_is_empty!49547)))

(declare-fun b!7488458 () Bool)

(declare-fun e!4465719 () Bool)

(declare-fun tp!2173516 () Bool)

(declare-fun tp!2173513 () Bool)

(assert (=> b!7488458 (= e!4465719 (and tp!2173516 tp!2173513))))

(declare-fun b!7488459 () Bool)

(declare-fun tp!2173511 () Bool)

(declare-fun tp!2173514 () Bool)

(assert (=> b!7488459 (= e!4465718 (and tp!2173511 tp!2173514))))

(declare-fun b!7488460 () Bool)

(declare-fun e!4465717 () Bool)

(declare-datatypes ((C!39532 0))(
  ( (C!39533 (val!30164 Int)) )
))
(declare-datatypes ((Regex!19629 0))(
  ( (ElementMatch!19629 (c!1382784 C!39532)) (Concat!28474 (regOne!39770 Regex!19629) (regTwo!39770 Regex!19629)) (EmptyExpr!19629) (Star!19629 (reg!19958 Regex!19629)) (EmptyLang!19629) (Union!19629 (regOne!39771 Regex!19629) (regTwo!39771 Regex!19629)) )
))
(declare-fun lt!2629090 () Regex!19629)

(declare-fun validRegex!10143 (Regex!19629) Bool)

(assert (=> b!7488460 (= e!4465717 (validRegex!10143 lt!2629090))))

(declare-fun b!7488461 () Bool)

(declare-fun tp!2173506 () Bool)

(assert (=> b!7488461 (= e!4465718 tp!2173506)))

(declare-fun b!7488462 () Bool)

(declare-fun tp!2173509 () Bool)

(assert (=> b!7488462 (= e!4465719 tp!2173509)))

(declare-fun b!7488463 () Bool)

(declare-fun e!4465722 () Bool)

(assert (=> b!7488463 (= e!4465722 tp_is_empty!49547)))

(declare-fun b!7488464 () Bool)

(declare-fun e!4465721 () Bool)

(declare-fun e!4465716 () Bool)

(assert (=> b!7488464 (= e!4465721 (not e!4465716))))

(declare-fun res!3003843 () Bool)

(assert (=> b!7488464 (=> res!3003843 e!4465716)))

(declare-fun lt!2629097 () Bool)

(assert (=> b!7488464 (= res!3003843 (not lt!2629097))))

(declare-fun lt!2629095 () Regex!19629)

(declare-datatypes ((List!72343 0))(
  ( (Nil!72219) (Cons!72219 (h!78667 C!39532) (t!386912 List!72343)) )
))
(declare-fun s!13591 () List!72343)

(declare-fun matchR!9391 (Regex!19629 List!72343) Bool)

(declare-fun matchRSpec!4306 (Regex!19629 List!72343) Bool)

(assert (=> b!7488464 (= (matchR!9391 lt!2629095 s!13591) (matchRSpec!4306 lt!2629095 s!13591))))

(declare-datatypes ((Unit!166089 0))(
  ( (Unit!166090) )
))
(declare-fun lt!2629091 () Unit!166089)

(declare-fun mainMatchTheorem!4300 (Regex!19629 List!72343) Unit!166089)

(assert (=> b!7488464 (= lt!2629091 (mainMatchTheorem!4300 lt!2629095 s!13591))))

(declare-fun lt!2629088 () Regex!19629)

(assert (=> b!7488464 (= lt!2629097 (matchRSpec!4306 lt!2629088 s!13591))))

(assert (=> b!7488464 (= lt!2629097 (matchR!9391 lt!2629088 s!13591))))

(declare-fun lt!2629096 () Unit!166089)

(assert (=> b!7488464 (= lt!2629096 (mainMatchTheorem!4300 lt!2629088 s!13591))))

(declare-fun r2!5783 () Regex!19629)

(declare-fun rTail!78 () Regex!19629)

(declare-fun r1!5845 () Regex!19629)

(assert (=> b!7488464 (= lt!2629095 (Union!19629 (Concat!28474 r1!5845 rTail!78) (Concat!28474 r2!5783 rTail!78)))))

(assert (=> b!7488464 (= lt!2629088 (Concat!28474 lt!2629090 rTail!78))))

(assert (=> b!7488464 (= lt!2629090 (Union!19629 r1!5845 r2!5783))))

(declare-fun b!7488465 () Bool)

(declare-fun res!3003845 () Bool)

(assert (=> b!7488465 (=> res!3003845 e!4465717)))

(declare-datatypes ((tuple2!68696 0))(
  ( (tuple2!68697 (_1!37651 List!72343) (_2!37651 List!72343)) )
))
(declare-fun lt!2629089 () tuple2!68696)

(assert (=> b!7488465 (= res!3003845 (not (matchR!9391 rTail!78 (_2!37651 lt!2629089))))))

(declare-fun b!7488466 () Bool)

(declare-fun tp!2173505 () Bool)

(declare-fun tp!2173504 () Bool)

(assert (=> b!7488466 (= e!4465722 (and tp!2173505 tp!2173504))))

(declare-fun b!7488467 () Bool)

(declare-fun tp!2173517 () Bool)

(declare-fun tp!2173508 () Bool)

(assert (=> b!7488467 (= e!4465719 (and tp!2173517 tp!2173508))))

(declare-fun res!3003842 () Bool)

(assert (=> start!725070 (=> (not res!3003842) (not e!4465721))))

(assert (=> start!725070 (= res!3003842 (validRegex!10143 r1!5845))))

(assert (=> start!725070 e!4465721))

(assert (=> start!725070 e!4465722))

(assert (=> start!725070 e!4465718))

(assert (=> start!725070 e!4465719))

(assert (=> start!725070 e!4465720))

(declare-fun b!7488457 () Bool)

(assert (=> b!7488457 (= e!4465719 tp_is_empty!49547)))

(declare-fun b!7488468 () Bool)

(declare-fun tp!2173510 () Bool)

(assert (=> b!7488468 (= e!4465722 tp!2173510)))

(declare-fun b!7488469 () Bool)

(declare-fun tp!2173512 () Bool)

(declare-fun tp!2173503 () Bool)

(assert (=> b!7488469 (= e!4465718 (and tp!2173512 tp!2173503))))

(assert (=> b!7488470 (= e!4465716 e!4465717)))

(declare-fun res!3003841 () Bool)

(assert (=> b!7488470 (=> res!3003841 e!4465717)))

(assert (=> b!7488470 (= res!3003841 (not (matchR!9391 lt!2629090 (_1!37651 lt!2629089))))))

(declare-datatypes ((Option!17180 0))(
  ( (None!17179) (Some!17179 (v!54308 tuple2!68696)) )
))
(declare-fun lt!2629092 () Option!17180)

(declare-fun get!25301 (Option!17180) tuple2!68696)

(assert (=> b!7488470 (= lt!2629089 (get!25301 lt!2629092))))

(declare-fun Exists!4246 (Int) Bool)

(assert (=> b!7488470 (= (Exists!4246 lambda!463962) (Exists!4246 lambda!463963))))

(declare-fun lt!2629093 () Unit!166089)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2574 (Regex!19629 Regex!19629 List!72343) Unit!166089)

(assert (=> b!7488470 (= lt!2629093 (lemmaExistCutMatchRandMatchRSpecEquivalent!2574 lt!2629090 rTail!78 s!13591))))

(declare-fun isDefined!13869 (Option!17180) Bool)

(assert (=> b!7488470 (= (isDefined!13869 lt!2629092) (Exists!4246 lambda!463962))))

(declare-fun findConcatSeparation!3302 (Regex!19629 Regex!19629 List!72343 List!72343 List!72343) Option!17180)

(assert (=> b!7488470 (= lt!2629092 (findConcatSeparation!3302 lt!2629090 rTail!78 Nil!72219 s!13591 s!13591))))

(declare-fun lt!2629094 () Unit!166089)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3060 (Regex!19629 Regex!19629 List!72343) Unit!166089)

(assert (=> b!7488470 (= lt!2629094 (lemmaFindConcatSeparationEquivalentToExists!3060 lt!2629090 rTail!78 s!13591))))

(declare-fun b!7488471 () Bool)

(declare-fun tp!2173502 () Bool)

(declare-fun tp!2173515 () Bool)

(assert (=> b!7488471 (= e!4465722 (and tp!2173502 tp!2173515))))

(declare-fun b!7488472 () Bool)

(declare-fun res!3003844 () Bool)

(assert (=> b!7488472 (=> (not res!3003844) (not e!4465721))))

(assert (=> b!7488472 (= res!3003844 (validRegex!10143 rTail!78))))

(declare-fun b!7488473 () Bool)

(declare-fun res!3003846 () Bool)

(assert (=> b!7488473 (=> (not res!3003846) (not e!4465721))))

(assert (=> b!7488473 (= res!3003846 (validRegex!10143 r2!5783))))

(assert (= (and start!725070 res!3003842) b!7488473))

(assert (= (and b!7488473 res!3003846) b!7488472))

(assert (= (and b!7488472 res!3003844) b!7488464))

(assert (= (and b!7488464 (not res!3003843)) b!7488470))

(assert (= (and b!7488470 (not res!3003841)) b!7488465))

(assert (= (and b!7488465 (not res!3003845)) b!7488460))

(get-info :version)

(assert (= (and start!725070 ((_ is ElementMatch!19629) r1!5845)) b!7488463))

(assert (= (and start!725070 ((_ is Concat!28474) r1!5845)) b!7488466))

(assert (= (and start!725070 ((_ is Star!19629) r1!5845)) b!7488468))

(assert (= (and start!725070 ((_ is Union!19629) r1!5845)) b!7488471))

(assert (= (and start!725070 ((_ is ElementMatch!19629) r2!5783)) b!7488456))

(assert (= (and start!725070 ((_ is Concat!28474) r2!5783)) b!7488469))

(assert (= (and start!725070 ((_ is Star!19629) r2!5783)) b!7488461))

(assert (= (and start!725070 ((_ is Union!19629) r2!5783)) b!7488459))

(assert (= (and start!725070 ((_ is ElementMatch!19629) rTail!78)) b!7488457))

(assert (= (and start!725070 ((_ is Concat!28474) rTail!78)) b!7488467))

(assert (= (and start!725070 ((_ is Star!19629) rTail!78)) b!7488462))

(assert (= (and start!725070 ((_ is Union!19629) rTail!78)) b!7488458))

(assert (= (and start!725070 ((_ is Cons!72219) s!13591)) b!7488455))

(declare-fun m!8076130 () Bool)

(assert (=> b!7488460 m!8076130))

(declare-fun m!8076132 () Bool)

(assert (=> start!725070 m!8076132))

(declare-fun m!8076134 () Bool)

(assert (=> b!7488464 m!8076134))

(declare-fun m!8076136 () Bool)

(assert (=> b!7488464 m!8076136))

(declare-fun m!8076138 () Bool)

(assert (=> b!7488464 m!8076138))

(declare-fun m!8076140 () Bool)

(assert (=> b!7488464 m!8076140))

(declare-fun m!8076142 () Bool)

(assert (=> b!7488464 m!8076142))

(declare-fun m!8076144 () Bool)

(assert (=> b!7488464 m!8076144))

(declare-fun m!8076146 () Bool)

(assert (=> b!7488470 m!8076146))

(declare-fun m!8076148 () Bool)

(assert (=> b!7488470 m!8076148))

(declare-fun m!8076150 () Bool)

(assert (=> b!7488470 m!8076150))

(declare-fun m!8076152 () Bool)

(assert (=> b!7488470 m!8076152))

(declare-fun m!8076154 () Bool)

(assert (=> b!7488470 m!8076154))

(declare-fun m!8076156 () Bool)

(assert (=> b!7488470 m!8076156))

(declare-fun m!8076158 () Bool)

(assert (=> b!7488470 m!8076158))

(assert (=> b!7488470 m!8076158))

(declare-fun m!8076160 () Bool)

(assert (=> b!7488470 m!8076160))

(declare-fun m!8076162 () Bool)

(assert (=> b!7488473 m!8076162))

(declare-fun m!8076164 () Bool)

(assert (=> b!7488472 m!8076164))

(declare-fun m!8076166 () Bool)

(assert (=> b!7488465 m!8076166))

(check-sat (not b!7488473) (not b!7488464) tp_is_empty!49547 (not b!7488470) (not b!7488468) (not b!7488469) (not b!7488455) (not b!7488461) (not start!725070) (not b!7488471) (not b!7488459) (not b!7488472) (not b!7488467) (not b!7488465) (not b!7488458) (not b!7488460) (not b!7488462) (not b!7488466))
(check-sat)
(get-model)

(declare-fun bm!687432 () Bool)

(declare-fun c!1382794 () Bool)

(declare-fun call!687438 () Bool)

(declare-fun c!1382793 () Bool)

(assert (=> bm!687432 (= call!687438 (validRegex!10143 (ite c!1382794 (reg!19958 r2!5783) (ite c!1382793 (regOne!39771 r2!5783) (regOne!39770 r2!5783)))))))

(declare-fun b!7488514 () Bool)

(declare-fun e!4465755 () Bool)

(declare-fun call!687437 () Bool)

(assert (=> b!7488514 (= e!4465755 call!687437)))

(declare-fun bm!687433 () Bool)

(declare-fun call!687439 () Bool)

(assert (=> bm!687433 (= call!687439 call!687438)))

(declare-fun b!7488515 () Bool)

(declare-fun e!4465754 () Bool)

(declare-fun e!4465752 () Bool)

(assert (=> b!7488515 (= e!4465754 e!4465752)))

(declare-fun res!3003871 () Bool)

(declare-fun nullable!8567 (Regex!19629) Bool)

(assert (=> b!7488515 (= res!3003871 (not (nullable!8567 (reg!19958 r2!5783))))))

(assert (=> b!7488515 (=> (not res!3003871) (not e!4465752))))

(declare-fun b!7488516 () Bool)

(assert (=> b!7488516 (= e!4465752 call!687438)))

(declare-fun b!7488517 () Bool)

(declare-fun e!4465751 () Bool)

(assert (=> b!7488517 (= e!4465751 e!4465754)))

(assert (=> b!7488517 (= c!1382794 ((_ is Star!19629) r2!5783))))

(declare-fun b!7488518 () Bool)

(declare-fun res!3003870 () Bool)

(declare-fun e!4465753 () Bool)

(assert (=> b!7488518 (=> res!3003870 e!4465753)))

(assert (=> b!7488518 (= res!3003870 (not ((_ is Concat!28474) r2!5783)))))

(declare-fun e!4465757 () Bool)

(assert (=> b!7488518 (= e!4465757 e!4465753)))

(declare-fun d!2300932 () Bool)

(declare-fun res!3003869 () Bool)

(assert (=> d!2300932 (=> res!3003869 e!4465751)))

(assert (=> d!2300932 (= res!3003869 ((_ is ElementMatch!19629) r2!5783))))

(assert (=> d!2300932 (= (validRegex!10143 r2!5783) e!4465751)))

(declare-fun b!7488519 () Bool)

(declare-fun res!3003867 () Bool)

(declare-fun e!4465756 () Bool)

(assert (=> b!7488519 (=> (not res!3003867) (not e!4465756))))

(assert (=> b!7488519 (= res!3003867 call!687439)))

(assert (=> b!7488519 (= e!4465757 e!4465756)))

(declare-fun b!7488520 () Bool)

(assert (=> b!7488520 (= e!4465756 call!687437)))

(declare-fun b!7488521 () Bool)

(assert (=> b!7488521 (= e!4465754 e!4465757)))

(assert (=> b!7488521 (= c!1382793 ((_ is Union!19629) r2!5783))))

(declare-fun b!7488522 () Bool)

(assert (=> b!7488522 (= e!4465753 e!4465755)))

(declare-fun res!3003868 () Bool)

(assert (=> b!7488522 (=> (not res!3003868) (not e!4465755))))

(assert (=> b!7488522 (= res!3003868 call!687439)))

(declare-fun bm!687434 () Bool)

(assert (=> bm!687434 (= call!687437 (validRegex!10143 (ite c!1382793 (regTwo!39771 r2!5783) (regTwo!39770 r2!5783))))))

(assert (= (and d!2300932 (not res!3003869)) b!7488517))

(assert (= (and b!7488517 c!1382794) b!7488515))

(assert (= (and b!7488517 (not c!1382794)) b!7488521))

(assert (= (and b!7488515 res!3003871) b!7488516))

(assert (= (and b!7488521 c!1382793) b!7488519))

(assert (= (and b!7488521 (not c!1382793)) b!7488518))

(assert (= (and b!7488519 res!3003867) b!7488520))

(assert (= (and b!7488518 (not res!3003870)) b!7488522))

(assert (= (and b!7488522 res!3003868) b!7488514))

(assert (= (or b!7488520 b!7488514) bm!687434))

(assert (= (or b!7488519 b!7488522) bm!687433))

(assert (= (or b!7488516 bm!687433) bm!687432))

(declare-fun m!8076168 () Bool)

(assert (=> bm!687432 m!8076168))

(declare-fun m!8076170 () Bool)

(assert (=> b!7488515 m!8076170))

(declare-fun m!8076172 () Bool)

(assert (=> bm!687434 m!8076172))

(assert (=> b!7488473 d!2300932))

(declare-fun bm!687438 () Bool)

(declare-fun call!687444 () Bool)

(declare-fun c!1382798 () Bool)

(declare-fun c!1382797 () Bool)

(assert (=> bm!687438 (= call!687444 (validRegex!10143 (ite c!1382798 (reg!19958 r1!5845) (ite c!1382797 (regOne!39771 r1!5845) (regOne!39770 r1!5845)))))))

(declare-fun b!7488532 () Bool)

(declare-fun e!4465769 () Bool)

(declare-fun call!687443 () Bool)

(assert (=> b!7488532 (= e!4465769 call!687443)))

(declare-fun bm!687439 () Bool)

(declare-fun call!687445 () Bool)

(assert (=> bm!687439 (= call!687445 call!687444)))

(declare-fun b!7488533 () Bool)

(declare-fun e!4465768 () Bool)

(declare-fun e!4465766 () Bool)

(assert (=> b!7488533 (= e!4465768 e!4465766)))

(declare-fun res!3003881 () Bool)

(assert (=> b!7488533 (= res!3003881 (not (nullable!8567 (reg!19958 r1!5845))))))

(assert (=> b!7488533 (=> (not res!3003881) (not e!4465766))))

(declare-fun b!7488534 () Bool)

(assert (=> b!7488534 (= e!4465766 call!687444)))

(declare-fun b!7488535 () Bool)

(declare-fun e!4465765 () Bool)

(assert (=> b!7488535 (= e!4465765 e!4465768)))

(assert (=> b!7488535 (= c!1382798 ((_ is Star!19629) r1!5845))))

(declare-fun b!7488536 () Bool)

(declare-fun res!3003880 () Bool)

(declare-fun e!4465767 () Bool)

(assert (=> b!7488536 (=> res!3003880 e!4465767)))

(assert (=> b!7488536 (= res!3003880 (not ((_ is Concat!28474) r1!5845)))))

(declare-fun e!4465771 () Bool)

(assert (=> b!7488536 (= e!4465771 e!4465767)))

(declare-fun d!2300936 () Bool)

(declare-fun res!3003879 () Bool)

(assert (=> d!2300936 (=> res!3003879 e!4465765)))

(assert (=> d!2300936 (= res!3003879 ((_ is ElementMatch!19629) r1!5845))))

(assert (=> d!2300936 (= (validRegex!10143 r1!5845) e!4465765)))

(declare-fun b!7488537 () Bool)

(declare-fun res!3003877 () Bool)

(declare-fun e!4465770 () Bool)

(assert (=> b!7488537 (=> (not res!3003877) (not e!4465770))))

(assert (=> b!7488537 (= res!3003877 call!687445)))

(assert (=> b!7488537 (= e!4465771 e!4465770)))

(declare-fun b!7488538 () Bool)

(assert (=> b!7488538 (= e!4465770 call!687443)))

(declare-fun b!7488539 () Bool)

(assert (=> b!7488539 (= e!4465768 e!4465771)))

(assert (=> b!7488539 (= c!1382797 ((_ is Union!19629) r1!5845))))

(declare-fun b!7488540 () Bool)

(assert (=> b!7488540 (= e!4465767 e!4465769)))

(declare-fun res!3003878 () Bool)

(assert (=> b!7488540 (=> (not res!3003878) (not e!4465769))))

(assert (=> b!7488540 (= res!3003878 call!687445)))

(declare-fun bm!687440 () Bool)

(assert (=> bm!687440 (= call!687443 (validRegex!10143 (ite c!1382797 (regTwo!39771 r1!5845) (regTwo!39770 r1!5845))))))

(assert (= (and d!2300936 (not res!3003879)) b!7488535))

(assert (= (and b!7488535 c!1382798) b!7488533))

(assert (= (and b!7488535 (not c!1382798)) b!7488539))

(assert (= (and b!7488533 res!3003881) b!7488534))

(assert (= (and b!7488539 c!1382797) b!7488537))

(assert (= (and b!7488539 (not c!1382797)) b!7488536))

(assert (= (and b!7488537 res!3003877) b!7488538))

(assert (= (and b!7488536 (not res!3003880)) b!7488540))

(assert (= (and b!7488540 res!3003878) b!7488532))

(assert (= (or b!7488538 b!7488532) bm!687440))

(assert (= (or b!7488537 b!7488540) bm!687439))

(assert (= (or b!7488534 bm!687439) bm!687438))

(declare-fun m!8076180 () Bool)

(assert (=> bm!687438 m!8076180))

(declare-fun m!8076182 () Bool)

(assert (=> b!7488533 m!8076182))

(declare-fun m!8076184 () Bool)

(assert (=> bm!687440 m!8076184))

(assert (=> start!725070 d!2300936))

(declare-fun c!1382800 () Bool)

(declare-fun bm!687441 () Bool)

(declare-fun call!687447 () Bool)

(declare-fun c!1382799 () Bool)

(assert (=> bm!687441 (= call!687447 (validRegex!10143 (ite c!1382800 (reg!19958 rTail!78) (ite c!1382799 (regOne!39771 rTail!78) (regOne!39770 rTail!78)))))))

(declare-fun b!7488541 () Bool)

(declare-fun e!4465776 () Bool)

(declare-fun call!687446 () Bool)

(assert (=> b!7488541 (= e!4465776 call!687446)))

(declare-fun bm!687442 () Bool)

(declare-fun call!687448 () Bool)

(assert (=> bm!687442 (= call!687448 call!687447)))

(declare-fun b!7488542 () Bool)

(declare-fun e!4465775 () Bool)

(declare-fun e!4465773 () Bool)

(assert (=> b!7488542 (= e!4465775 e!4465773)))

(declare-fun res!3003886 () Bool)

(assert (=> b!7488542 (= res!3003886 (not (nullable!8567 (reg!19958 rTail!78))))))

(assert (=> b!7488542 (=> (not res!3003886) (not e!4465773))))

(declare-fun b!7488543 () Bool)

(assert (=> b!7488543 (= e!4465773 call!687447)))

(declare-fun b!7488544 () Bool)

(declare-fun e!4465772 () Bool)

(assert (=> b!7488544 (= e!4465772 e!4465775)))

(assert (=> b!7488544 (= c!1382800 ((_ is Star!19629) rTail!78))))

(declare-fun b!7488545 () Bool)

(declare-fun res!3003885 () Bool)

(declare-fun e!4465774 () Bool)

(assert (=> b!7488545 (=> res!3003885 e!4465774)))

(assert (=> b!7488545 (= res!3003885 (not ((_ is Concat!28474) rTail!78)))))

(declare-fun e!4465778 () Bool)

(assert (=> b!7488545 (= e!4465778 e!4465774)))

(declare-fun d!2300940 () Bool)

(declare-fun res!3003884 () Bool)

(assert (=> d!2300940 (=> res!3003884 e!4465772)))

(assert (=> d!2300940 (= res!3003884 ((_ is ElementMatch!19629) rTail!78))))

(assert (=> d!2300940 (= (validRegex!10143 rTail!78) e!4465772)))

(declare-fun b!7488546 () Bool)

(declare-fun res!3003882 () Bool)

(declare-fun e!4465777 () Bool)

(assert (=> b!7488546 (=> (not res!3003882) (not e!4465777))))

(assert (=> b!7488546 (= res!3003882 call!687448)))

(assert (=> b!7488546 (= e!4465778 e!4465777)))

(declare-fun b!7488547 () Bool)

(assert (=> b!7488547 (= e!4465777 call!687446)))

(declare-fun b!7488548 () Bool)

(assert (=> b!7488548 (= e!4465775 e!4465778)))

(assert (=> b!7488548 (= c!1382799 ((_ is Union!19629) rTail!78))))

(declare-fun b!7488549 () Bool)

(assert (=> b!7488549 (= e!4465774 e!4465776)))

(declare-fun res!3003883 () Bool)

(assert (=> b!7488549 (=> (not res!3003883) (not e!4465776))))

(assert (=> b!7488549 (= res!3003883 call!687448)))

(declare-fun bm!687443 () Bool)

(assert (=> bm!687443 (= call!687446 (validRegex!10143 (ite c!1382799 (regTwo!39771 rTail!78) (regTwo!39770 rTail!78))))))

(assert (= (and d!2300940 (not res!3003884)) b!7488544))

(assert (= (and b!7488544 c!1382800) b!7488542))

(assert (= (and b!7488544 (not c!1382800)) b!7488548))

(assert (= (and b!7488542 res!3003886) b!7488543))

(assert (= (and b!7488548 c!1382799) b!7488546))

(assert (= (and b!7488548 (not c!1382799)) b!7488545))

(assert (= (and b!7488546 res!3003882) b!7488547))

(assert (= (and b!7488545 (not res!3003885)) b!7488549))

(assert (= (and b!7488549 res!3003883) b!7488541))

(assert (= (or b!7488547 b!7488541) bm!687443))

(assert (= (or b!7488546 b!7488549) bm!687442))

(assert (= (or b!7488543 bm!687442) bm!687441))

(declare-fun m!8076186 () Bool)

(assert (=> bm!687441 m!8076186))

(declare-fun m!8076188 () Bool)

(assert (=> b!7488542 m!8076188))

(declare-fun m!8076190 () Bool)

(assert (=> bm!687443 m!8076190))

(assert (=> b!7488472 d!2300940))

(declare-fun d!2300942 () Bool)

(assert (=> d!2300942 (= (get!25301 lt!2629092) (v!54308 lt!2629092))))

(assert (=> b!7488470 d!2300942))

(declare-fun b!7488636 () Bool)

(declare-fun e!4465828 () Bool)

(declare-fun lt!2629102 () Bool)

(assert (=> b!7488636 (= e!4465828 (not lt!2629102))))

(declare-fun b!7488637 () Bool)

(declare-fun e!4465831 () Bool)

(declare-fun derivativeStep!5624 (Regex!19629 C!39532) Regex!19629)

(declare-fun head!15364 (List!72343) C!39532)

(declare-fun tail!14933 (List!72343) List!72343)

(assert (=> b!7488637 (= e!4465831 (matchR!9391 (derivativeStep!5624 lt!2629090 (head!15364 (_1!37651 lt!2629089))) (tail!14933 (_1!37651 lt!2629089))))))

(declare-fun b!7488638 () Bool)

(declare-fun e!4465827 () Bool)

(declare-fun call!687459 () Bool)

(assert (=> b!7488638 (= e!4465827 (= lt!2629102 call!687459))))

(declare-fun b!7488639 () Bool)

(declare-fun res!3003927 () Bool)

(declare-fun e!4465833 () Bool)

(assert (=> b!7488639 (=> res!3003927 e!4465833)))

(declare-fun isEmpty!41240 (List!72343) Bool)

(assert (=> b!7488639 (= res!3003927 (not (isEmpty!41240 (tail!14933 (_1!37651 lt!2629089)))))))

(declare-fun b!7488640 () Bool)

(assert (=> b!7488640 (= e!4465827 e!4465828)))

(declare-fun c!1382826 () Bool)

(assert (=> b!7488640 (= c!1382826 ((_ is EmptyLang!19629) lt!2629090))))

(declare-fun d!2300944 () Bool)

(assert (=> d!2300944 e!4465827))

(declare-fun c!1382827 () Bool)

(assert (=> d!2300944 (= c!1382827 ((_ is EmptyExpr!19629) lt!2629090))))

(assert (=> d!2300944 (= lt!2629102 e!4465831)))

(declare-fun c!1382825 () Bool)

(assert (=> d!2300944 (= c!1382825 (isEmpty!41240 (_1!37651 lt!2629089)))))

(assert (=> d!2300944 (validRegex!10143 lt!2629090)))

(assert (=> d!2300944 (= (matchR!9391 lt!2629090 (_1!37651 lt!2629089)) lt!2629102)))

(declare-fun b!7488641 () Bool)

(declare-fun res!3003929 () Bool)

(declare-fun e!4465832 () Bool)

(assert (=> b!7488641 (=> res!3003929 e!4465832)))

(assert (=> b!7488641 (= res!3003929 (not ((_ is ElementMatch!19629) lt!2629090)))))

(assert (=> b!7488641 (= e!4465828 e!4465832)))

(declare-fun b!7488642 () Bool)

(declare-fun res!3003926 () Bool)

(declare-fun e!4465830 () Bool)

(assert (=> b!7488642 (=> (not res!3003926) (not e!4465830))))

(assert (=> b!7488642 (= res!3003926 (not call!687459))))

(declare-fun b!7488643 () Bool)

(assert (=> b!7488643 (= e!4465833 (not (= (head!15364 (_1!37651 lt!2629089)) (c!1382784 lt!2629090))))))

(declare-fun bm!687454 () Bool)

(assert (=> bm!687454 (= call!687459 (isEmpty!41240 (_1!37651 lt!2629089)))))

(declare-fun b!7488644 () Bool)

(assert (=> b!7488644 (= e!4465830 (= (head!15364 (_1!37651 lt!2629089)) (c!1382784 lt!2629090)))))

(declare-fun b!7488645 () Bool)

(declare-fun e!4465829 () Bool)

(assert (=> b!7488645 (= e!4465829 e!4465833)))

(declare-fun res!3003930 () Bool)

(assert (=> b!7488645 (=> res!3003930 e!4465833)))

(assert (=> b!7488645 (= res!3003930 call!687459)))

(declare-fun b!7488646 () Bool)

(declare-fun res!3003932 () Bool)

(assert (=> b!7488646 (=> (not res!3003932) (not e!4465830))))

(assert (=> b!7488646 (= res!3003932 (isEmpty!41240 (tail!14933 (_1!37651 lt!2629089))))))

(declare-fun b!7488647 () Bool)

(assert (=> b!7488647 (= e!4465832 e!4465829)))

(declare-fun res!3003925 () Bool)

(assert (=> b!7488647 (=> (not res!3003925) (not e!4465829))))

(assert (=> b!7488647 (= res!3003925 (not lt!2629102))))

(declare-fun b!7488648 () Bool)

(assert (=> b!7488648 (= e!4465831 (nullable!8567 lt!2629090))))

(declare-fun b!7488649 () Bool)

(declare-fun res!3003931 () Bool)

(assert (=> b!7488649 (=> res!3003931 e!4465832)))

(assert (=> b!7488649 (= res!3003931 e!4465830)))

(declare-fun res!3003928 () Bool)

(assert (=> b!7488649 (=> (not res!3003928) (not e!4465830))))

(assert (=> b!7488649 (= res!3003928 lt!2629102)))

(assert (= (and d!2300944 c!1382825) b!7488648))

(assert (= (and d!2300944 (not c!1382825)) b!7488637))

(assert (= (and d!2300944 c!1382827) b!7488638))

(assert (= (and d!2300944 (not c!1382827)) b!7488640))

(assert (= (and b!7488640 c!1382826) b!7488636))

(assert (= (and b!7488640 (not c!1382826)) b!7488641))

(assert (= (and b!7488641 (not res!3003929)) b!7488649))

(assert (= (and b!7488649 res!3003928) b!7488642))

(assert (= (and b!7488642 res!3003926) b!7488646))

(assert (= (and b!7488646 res!3003932) b!7488644))

(assert (= (and b!7488649 (not res!3003931)) b!7488647))

(assert (= (and b!7488647 res!3003925) b!7488645))

(assert (= (and b!7488645 (not res!3003930)) b!7488639))

(assert (= (and b!7488639 (not res!3003927)) b!7488643))

(assert (= (or b!7488638 b!7488642 b!7488645) bm!687454))

(declare-fun m!8076206 () Bool)

(assert (=> d!2300944 m!8076206))

(assert (=> d!2300944 m!8076130))

(declare-fun m!8076208 () Bool)

(assert (=> b!7488646 m!8076208))

(assert (=> b!7488646 m!8076208))

(declare-fun m!8076210 () Bool)

(assert (=> b!7488646 m!8076210))

(declare-fun m!8076212 () Bool)

(assert (=> b!7488637 m!8076212))

(assert (=> b!7488637 m!8076212))

(declare-fun m!8076214 () Bool)

(assert (=> b!7488637 m!8076214))

(assert (=> b!7488637 m!8076208))

(assert (=> b!7488637 m!8076214))

(assert (=> b!7488637 m!8076208))

(declare-fun m!8076216 () Bool)

(assert (=> b!7488637 m!8076216))

(assert (=> bm!687454 m!8076206))

(assert (=> b!7488644 m!8076212))

(assert (=> b!7488639 m!8076208))

(assert (=> b!7488639 m!8076208))

(assert (=> b!7488639 m!8076210))

(assert (=> b!7488643 m!8076212))

(declare-fun m!8076218 () Bool)

(assert (=> b!7488648 m!8076218))

(assert (=> b!7488470 d!2300944))

(declare-fun bs!1934442 () Bool)

(declare-fun d!2300950 () Bool)

(assert (= bs!1934442 (and d!2300950 b!7488470)))

(declare-fun lambda!463976 () Int)

(assert (=> bs!1934442 (= lambda!463976 lambda!463962)))

(assert (=> bs!1934442 (not (= lambda!463976 lambda!463963))))

(assert (=> d!2300950 true))

(assert (=> d!2300950 true))

(assert (=> d!2300950 true))

(declare-fun lambda!463977 () Int)

(assert (=> bs!1934442 (not (= lambda!463977 lambda!463962))))

(assert (=> bs!1934442 (= lambda!463977 lambda!463963)))

(declare-fun bs!1934443 () Bool)

(assert (= bs!1934443 d!2300950))

(assert (=> bs!1934443 (not (= lambda!463977 lambda!463976))))

(assert (=> d!2300950 true))

(assert (=> d!2300950 true))

(assert (=> d!2300950 true))

(assert (=> d!2300950 (= (Exists!4246 lambda!463976) (Exists!4246 lambda!463977))))

(declare-fun lt!2629117 () Unit!166089)

(declare-fun choose!57882 (Regex!19629 Regex!19629 List!72343) Unit!166089)

(assert (=> d!2300950 (= lt!2629117 (choose!57882 lt!2629090 rTail!78 s!13591))))

(assert (=> d!2300950 (validRegex!10143 lt!2629090)))

(assert (=> d!2300950 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2574 lt!2629090 rTail!78 s!13591) lt!2629117)))

(declare-fun m!8076258 () Bool)

(assert (=> bs!1934443 m!8076258))

(declare-fun m!8076260 () Bool)

(assert (=> bs!1934443 m!8076260))

(declare-fun m!8076262 () Bool)

(assert (=> bs!1934443 m!8076262))

(assert (=> bs!1934443 m!8076130))

(assert (=> b!7488470 d!2300950))

(declare-fun d!2300964 () Bool)

(declare-fun choose!57883 (Int) Bool)

(assert (=> d!2300964 (= (Exists!4246 lambda!463962) (choose!57883 lambda!463962))))

(declare-fun bs!1934444 () Bool)

(assert (= bs!1934444 d!2300964))

(declare-fun m!8076286 () Bool)

(assert (=> bs!1934444 m!8076286))

(assert (=> b!7488470 d!2300964))

(declare-fun d!2300968 () Bool)

(assert (=> d!2300968 (= (Exists!4246 lambda!463963) (choose!57883 lambda!463963))))

(declare-fun bs!1934445 () Bool)

(assert (= bs!1934445 d!2300968))

(declare-fun m!8076288 () Bool)

(assert (=> bs!1934445 m!8076288))

(assert (=> b!7488470 d!2300968))

(declare-fun bs!1934452 () Bool)

(declare-fun d!2300972 () Bool)

(assert (= bs!1934452 (and d!2300972 b!7488470)))

(declare-fun lambda!463985 () Int)

(assert (=> bs!1934452 (= lambda!463985 lambda!463962)))

(assert (=> bs!1934452 (not (= lambda!463985 lambda!463963))))

(declare-fun bs!1934453 () Bool)

(assert (= bs!1934453 (and d!2300972 d!2300950)))

(assert (=> bs!1934453 (= lambda!463985 lambda!463976)))

(assert (=> bs!1934453 (not (= lambda!463985 lambda!463977))))

(assert (=> d!2300972 true))

(assert (=> d!2300972 true))

(assert (=> d!2300972 true))

(assert (=> d!2300972 (= (isDefined!13869 (findConcatSeparation!3302 lt!2629090 rTail!78 Nil!72219 s!13591 s!13591)) (Exists!4246 lambda!463985))))

(declare-fun lt!2629128 () Unit!166089)

(declare-fun choose!57884 (Regex!19629 Regex!19629 List!72343) Unit!166089)

(assert (=> d!2300972 (= lt!2629128 (choose!57884 lt!2629090 rTail!78 s!13591))))

(assert (=> d!2300972 (validRegex!10143 lt!2629090)))

(assert (=> d!2300972 (= (lemmaFindConcatSeparationEquivalentToExists!3060 lt!2629090 rTail!78 s!13591) lt!2629128)))

(declare-fun bs!1934454 () Bool)

(assert (= bs!1934454 d!2300972))

(assert (=> bs!1934454 m!8076150))

(declare-fun m!8076296 () Bool)

(assert (=> bs!1934454 m!8076296))

(assert (=> bs!1934454 m!8076150))

(assert (=> bs!1934454 m!8076130))

(declare-fun m!8076298 () Bool)

(assert (=> bs!1934454 m!8076298))

(declare-fun m!8076300 () Bool)

(assert (=> bs!1934454 m!8076300))

(assert (=> b!7488470 d!2300972))

(declare-fun d!2300976 () Bool)

(declare-fun isEmpty!41242 (Option!17180) Bool)

(assert (=> d!2300976 (= (isDefined!13869 lt!2629092) (not (isEmpty!41242 lt!2629092)))))

(declare-fun bs!1934461 () Bool)

(assert (= bs!1934461 d!2300976))

(declare-fun m!8076302 () Bool)

(assert (=> bs!1934461 m!8076302))

(assert (=> b!7488470 d!2300976))

(declare-fun b!7488901 () Bool)

(declare-fun e!4465954 () Bool)

(declare-fun lt!2629139 () Option!17180)

(assert (=> b!7488901 (= e!4465954 (not (isDefined!13869 lt!2629139)))))

(declare-fun d!2300978 () Bool)

(assert (=> d!2300978 e!4465954))

(declare-fun res!3004048 () Bool)

(assert (=> d!2300978 (=> res!3004048 e!4465954)))

(declare-fun e!4465955 () Bool)

(assert (=> d!2300978 (= res!3004048 e!4465955)))

(declare-fun res!3004046 () Bool)

(assert (=> d!2300978 (=> (not res!3004046) (not e!4465955))))

(assert (=> d!2300978 (= res!3004046 (isDefined!13869 lt!2629139))))

(declare-fun e!4465952 () Option!17180)

(assert (=> d!2300978 (= lt!2629139 e!4465952)))

(declare-fun c!1382860 () Bool)

(declare-fun e!4465953 () Bool)

(assert (=> d!2300978 (= c!1382860 e!4465953)))

(declare-fun res!3004049 () Bool)

(assert (=> d!2300978 (=> (not res!3004049) (not e!4465953))))

(assert (=> d!2300978 (= res!3004049 (matchR!9391 lt!2629090 Nil!72219))))

(assert (=> d!2300978 (validRegex!10143 lt!2629090)))

(assert (=> d!2300978 (= (findConcatSeparation!3302 lt!2629090 rTail!78 Nil!72219 s!13591 s!13591) lt!2629139)))

(declare-fun b!7488902 () Bool)

(assert (=> b!7488902 (= e!4465953 (matchR!9391 rTail!78 s!13591))))

(declare-fun b!7488903 () Bool)

(declare-fun lt!2629140 () Unit!166089)

(declare-fun lt!2629138 () Unit!166089)

(assert (=> b!7488903 (= lt!2629140 lt!2629138)))

(declare-fun ++!17237 (List!72343 List!72343) List!72343)

(assert (=> b!7488903 (= (++!17237 (++!17237 Nil!72219 (Cons!72219 (h!78667 s!13591) Nil!72219)) (t!386912 s!13591)) s!13591)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3113 (List!72343 C!39532 List!72343 List!72343) Unit!166089)

(assert (=> b!7488903 (= lt!2629138 (lemmaMoveElementToOtherListKeepsConcatEq!3113 Nil!72219 (h!78667 s!13591) (t!386912 s!13591) s!13591))))

(declare-fun e!4465956 () Option!17180)

(assert (=> b!7488903 (= e!4465956 (findConcatSeparation!3302 lt!2629090 rTail!78 (++!17237 Nil!72219 (Cons!72219 (h!78667 s!13591) Nil!72219)) (t!386912 s!13591) s!13591))))

(declare-fun b!7488904 () Bool)

(assert (=> b!7488904 (= e!4465952 (Some!17179 (tuple2!68697 Nil!72219 s!13591)))))

(declare-fun b!7488905 () Bool)

(declare-fun res!3004047 () Bool)

(assert (=> b!7488905 (=> (not res!3004047) (not e!4465955))))

(assert (=> b!7488905 (= res!3004047 (matchR!9391 rTail!78 (_2!37651 (get!25301 lt!2629139))))))

(declare-fun b!7488906 () Bool)

(declare-fun res!3004045 () Bool)

(assert (=> b!7488906 (=> (not res!3004045) (not e!4465955))))

(assert (=> b!7488906 (= res!3004045 (matchR!9391 lt!2629090 (_1!37651 (get!25301 lt!2629139))))))

(declare-fun b!7488907 () Bool)

(assert (=> b!7488907 (= e!4465955 (= (++!17237 (_1!37651 (get!25301 lt!2629139)) (_2!37651 (get!25301 lt!2629139))) s!13591))))

(declare-fun b!7488908 () Bool)

(assert (=> b!7488908 (= e!4465956 None!17179)))

(declare-fun b!7488909 () Bool)

(assert (=> b!7488909 (= e!4465952 e!4465956)))

(declare-fun c!1382861 () Bool)

(assert (=> b!7488909 (= c!1382861 ((_ is Nil!72219) s!13591))))

(assert (= (and d!2300978 res!3004049) b!7488902))

(assert (= (and d!2300978 c!1382860) b!7488904))

(assert (= (and d!2300978 (not c!1382860)) b!7488909))

(assert (= (and b!7488909 c!1382861) b!7488908))

(assert (= (and b!7488909 (not c!1382861)) b!7488903))

(assert (= (and d!2300978 res!3004046) b!7488906))

(assert (= (and b!7488906 res!3004045) b!7488905))

(assert (= (and b!7488905 res!3004047) b!7488907))

(assert (= (and d!2300978 (not res!3004048)) b!7488901))

(declare-fun m!8076350 () Bool)

(assert (=> b!7488902 m!8076350))

(declare-fun m!8076352 () Bool)

(assert (=> b!7488905 m!8076352))

(declare-fun m!8076354 () Bool)

(assert (=> b!7488905 m!8076354))

(declare-fun m!8076356 () Bool)

(assert (=> d!2300978 m!8076356))

(declare-fun m!8076358 () Bool)

(assert (=> d!2300978 m!8076358))

(assert (=> d!2300978 m!8076130))

(assert (=> b!7488907 m!8076352))

(declare-fun m!8076360 () Bool)

(assert (=> b!7488907 m!8076360))

(assert (=> b!7488906 m!8076352))

(declare-fun m!8076362 () Bool)

(assert (=> b!7488906 m!8076362))

(assert (=> b!7488901 m!8076356))

(declare-fun m!8076364 () Bool)

(assert (=> b!7488903 m!8076364))

(assert (=> b!7488903 m!8076364))

(declare-fun m!8076366 () Bool)

(assert (=> b!7488903 m!8076366))

(declare-fun m!8076368 () Bool)

(assert (=> b!7488903 m!8076368))

(assert (=> b!7488903 m!8076364))

(declare-fun m!8076370 () Bool)

(assert (=> b!7488903 m!8076370))

(assert (=> b!7488470 d!2300978))

(declare-fun b!7488910 () Bool)

(declare-fun e!4465958 () Bool)

(declare-fun lt!2629141 () Bool)

(assert (=> b!7488910 (= e!4465958 (not lt!2629141))))

(declare-fun b!7488911 () Bool)

(declare-fun e!4465961 () Bool)

(assert (=> b!7488911 (= e!4465961 (matchR!9391 (derivativeStep!5624 rTail!78 (head!15364 (_2!37651 lt!2629089))) (tail!14933 (_2!37651 lt!2629089))))))

(declare-fun b!7488912 () Bool)

(declare-fun e!4465957 () Bool)

(declare-fun call!687475 () Bool)

(assert (=> b!7488912 (= e!4465957 (= lt!2629141 call!687475))))

(declare-fun b!7488913 () Bool)

(declare-fun res!3004052 () Bool)

(declare-fun e!4465963 () Bool)

(assert (=> b!7488913 (=> res!3004052 e!4465963)))

(assert (=> b!7488913 (= res!3004052 (not (isEmpty!41240 (tail!14933 (_2!37651 lt!2629089)))))))

(declare-fun b!7488914 () Bool)

(assert (=> b!7488914 (= e!4465957 e!4465958)))

(declare-fun c!1382863 () Bool)

(assert (=> b!7488914 (= c!1382863 ((_ is EmptyLang!19629) rTail!78))))

(declare-fun d!2300992 () Bool)

(assert (=> d!2300992 e!4465957))

(declare-fun c!1382864 () Bool)

(assert (=> d!2300992 (= c!1382864 ((_ is EmptyExpr!19629) rTail!78))))

(assert (=> d!2300992 (= lt!2629141 e!4465961)))

(declare-fun c!1382862 () Bool)

(assert (=> d!2300992 (= c!1382862 (isEmpty!41240 (_2!37651 lt!2629089)))))

(assert (=> d!2300992 (validRegex!10143 rTail!78)))

(assert (=> d!2300992 (= (matchR!9391 rTail!78 (_2!37651 lt!2629089)) lt!2629141)))

(declare-fun b!7488915 () Bool)

(declare-fun res!3004054 () Bool)

(declare-fun e!4465962 () Bool)

(assert (=> b!7488915 (=> res!3004054 e!4465962)))

(assert (=> b!7488915 (= res!3004054 (not ((_ is ElementMatch!19629) rTail!78)))))

(assert (=> b!7488915 (= e!4465958 e!4465962)))

(declare-fun b!7488916 () Bool)

(declare-fun res!3004051 () Bool)

(declare-fun e!4465960 () Bool)

(assert (=> b!7488916 (=> (not res!3004051) (not e!4465960))))

(assert (=> b!7488916 (= res!3004051 (not call!687475))))

(declare-fun b!7488917 () Bool)

(assert (=> b!7488917 (= e!4465963 (not (= (head!15364 (_2!37651 lt!2629089)) (c!1382784 rTail!78))))))

(declare-fun bm!687470 () Bool)

(assert (=> bm!687470 (= call!687475 (isEmpty!41240 (_2!37651 lt!2629089)))))

(declare-fun b!7488918 () Bool)

(assert (=> b!7488918 (= e!4465960 (= (head!15364 (_2!37651 lt!2629089)) (c!1382784 rTail!78)))))

(declare-fun b!7488919 () Bool)

(declare-fun e!4465959 () Bool)

(assert (=> b!7488919 (= e!4465959 e!4465963)))

(declare-fun res!3004055 () Bool)

(assert (=> b!7488919 (=> res!3004055 e!4465963)))

(assert (=> b!7488919 (= res!3004055 call!687475)))

(declare-fun b!7488920 () Bool)

(declare-fun res!3004057 () Bool)

(assert (=> b!7488920 (=> (not res!3004057) (not e!4465960))))

(assert (=> b!7488920 (= res!3004057 (isEmpty!41240 (tail!14933 (_2!37651 lt!2629089))))))

(declare-fun b!7488921 () Bool)

(assert (=> b!7488921 (= e!4465962 e!4465959)))

(declare-fun res!3004050 () Bool)

(assert (=> b!7488921 (=> (not res!3004050) (not e!4465959))))

(assert (=> b!7488921 (= res!3004050 (not lt!2629141))))

(declare-fun b!7488922 () Bool)

(assert (=> b!7488922 (= e!4465961 (nullable!8567 rTail!78))))

(declare-fun b!7488923 () Bool)

(declare-fun res!3004056 () Bool)

(assert (=> b!7488923 (=> res!3004056 e!4465962)))

(assert (=> b!7488923 (= res!3004056 e!4465960)))

(declare-fun res!3004053 () Bool)

(assert (=> b!7488923 (=> (not res!3004053) (not e!4465960))))

(assert (=> b!7488923 (= res!3004053 lt!2629141)))

(assert (= (and d!2300992 c!1382862) b!7488922))

(assert (= (and d!2300992 (not c!1382862)) b!7488911))

(assert (= (and d!2300992 c!1382864) b!7488912))

(assert (= (and d!2300992 (not c!1382864)) b!7488914))

(assert (= (and b!7488914 c!1382863) b!7488910))

(assert (= (and b!7488914 (not c!1382863)) b!7488915))

(assert (= (and b!7488915 (not res!3004054)) b!7488923))

(assert (= (and b!7488923 res!3004053) b!7488916))

(assert (= (and b!7488916 res!3004051) b!7488920))

(assert (= (and b!7488920 res!3004057) b!7488918))

(assert (= (and b!7488923 (not res!3004056)) b!7488921))

(assert (= (and b!7488921 res!3004050) b!7488919))

(assert (= (and b!7488919 (not res!3004055)) b!7488913))

(assert (= (and b!7488913 (not res!3004052)) b!7488917))

(assert (= (or b!7488912 b!7488916 b!7488919) bm!687470))

(declare-fun m!8076372 () Bool)

(assert (=> d!2300992 m!8076372))

(assert (=> d!2300992 m!8076164))

(declare-fun m!8076374 () Bool)

(assert (=> b!7488920 m!8076374))

(assert (=> b!7488920 m!8076374))

(declare-fun m!8076376 () Bool)

(assert (=> b!7488920 m!8076376))

(declare-fun m!8076378 () Bool)

(assert (=> b!7488911 m!8076378))

(assert (=> b!7488911 m!8076378))

(declare-fun m!8076380 () Bool)

(assert (=> b!7488911 m!8076380))

(assert (=> b!7488911 m!8076374))

(assert (=> b!7488911 m!8076380))

(assert (=> b!7488911 m!8076374))

(declare-fun m!8076382 () Bool)

(assert (=> b!7488911 m!8076382))

(assert (=> bm!687470 m!8076372))

(assert (=> b!7488918 m!8076378))

(assert (=> b!7488913 m!8076374))

(assert (=> b!7488913 m!8076374))

(assert (=> b!7488913 m!8076376))

(assert (=> b!7488917 m!8076378))

(declare-fun m!8076384 () Bool)

(assert (=> b!7488922 m!8076384))

(assert (=> b!7488465 d!2300992))

(declare-fun bm!687471 () Bool)

(declare-fun call!687477 () Bool)

(declare-fun c!1382865 () Bool)

(declare-fun c!1382866 () Bool)

(assert (=> bm!687471 (= call!687477 (validRegex!10143 (ite c!1382866 (reg!19958 lt!2629090) (ite c!1382865 (regOne!39771 lt!2629090) (regOne!39770 lt!2629090)))))))

(declare-fun b!7488924 () Bool)

(declare-fun e!4465968 () Bool)

(declare-fun call!687476 () Bool)

(assert (=> b!7488924 (= e!4465968 call!687476)))

(declare-fun bm!687472 () Bool)

(declare-fun call!687478 () Bool)

(assert (=> bm!687472 (= call!687478 call!687477)))

(declare-fun b!7488925 () Bool)

(declare-fun e!4465967 () Bool)

(declare-fun e!4465965 () Bool)

(assert (=> b!7488925 (= e!4465967 e!4465965)))

(declare-fun res!3004062 () Bool)

(assert (=> b!7488925 (= res!3004062 (not (nullable!8567 (reg!19958 lt!2629090))))))

(assert (=> b!7488925 (=> (not res!3004062) (not e!4465965))))

(declare-fun b!7488926 () Bool)

(assert (=> b!7488926 (= e!4465965 call!687477)))

(declare-fun b!7488927 () Bool)

(declare-fun e!4465964 () Bool)

(assert (=> b!7488927 (= e!4465964 e!4465967)))

(assert (=> b!7488927 (= c!1382866 ((_ is Star!19629) lt!2629090))))

(declare-fun b!7488928 () Bool)

(declare-fun res!3004061 () Bool)

(declare-fun e!4465966 () Bool)

(assert (=> b!7488928 (=> res!3004061 e!4465966)))

(assert (=> b!7488928 (= res!3004061 (not ((_ is Concat!28474) lt!2629090)))))

(declare-fun e!4465970 () Bool)

(assert (=> b!7488928 (= e!4465970 e!4465966)))

(declare-fun d!2300994 () Bool)

(declare-fun res!3004060 () Bool)

(assert (=> d!2300994 (=> res!3004060 e!4465964)))

(assert (=> d!2300994 (= res!3004060 ((_ is ElementMatch!19629) lt!2629090))))

(assert (=> d!2300994 (= (validRegex!10143 lt!2629090) e!4465964)))

(declare-fun b!7488929 () Bool)

(declare-fun res!3004058 () Bool)

(declare-fun e!4465969 () Bool)

(assert (=> b!7488929 (=> (not res!3004058) (not e!4465969))))

(assert (=> b!7488929 (= res!3004058 call!687478)))

(assert (=> b!7488929 (= e!4465970 e!4465969)))

(declare-fun b!7488930 () Bool)

(assert (=> b!7488930 (= e!4465969 call!687476)))

(declare-fun b!7488931 () Bool)

(assert (=> b!7488931 (= e!4465967 e!4465970)))

(assert (=> b!7488931 (= c!1382865 ((_ is Union!19629) lt!2629090))))

(declare-fun b!7488932 () Bool)

(assert (=> b!7488932 (= e!4465966 e!4465968)))

(declare-fun res!3004059 () Bool)

(assert (=> b!7488932 (=> (not res!3004059) (not e!4465968))))

(assert (=> b!7488932 (= res!3004059 call!687478)))

(declare-fun bm!687473 () Bool)

(assert (=> bm!687473 (= call!687476 (validRegex!10143 (ite c!1382865 (regTwo!39771 lt!2629090) (regTwo!39770 lt!2629090))))))

(assert (= (and d!2300994 (not res!3004060)) b!7488927))

(assert (= (and b!7488927 c!1382866) b!7488925))

(assert (= (and b!7488927 (not c!1382866)) b!7488931))

(assert (= (and b!7488925 res!3004062) b!7488926))

(assert (= (and b!7488931 c!1382865) b!7488929))

(assert (= (and b!7488931 (not c!1382865)) b!7488928))

(assert (= (and b!7488929 res!3004058) b!7488930))

(assert (= (and b!7488928 (not res!3004061)) b!7488932))

(assert (= (and b!7488932 res!3004059) b!7488924))

(assert (= (or b!7488930 b!7488924) bm!687473))

(assert (= (or b!7488929 b!7488932) bm!687472))

(assert (= (or b!7488926 bm!687472) bm!687471))

(declare-fun m!8076386 () Bool)

(assert (=> bm!687471 m!8076386))

(declare-fun m!8076388 () Bool)

(assert (=> b!7488925 m!8076388))

(declare-fun m!8076390 () Bool)

(assert (=> bm!687473 m!8076390))

(assert (=> b!7488460 d!2300994))

(declare-fun d!2300996 () Bool)

(assert (=> d!2300996 (= (matchR!9391 lt!2629095 s!13591) (matchRSpec!4306 lt!2629095 s!13591))))

(declare-fun lt!2629144 () Unit!166089)

(declare-fun choose!57885 (Regex!19629 List!72343) Unit!166089)

(assert (=> d!2300996 (= lt!2629144 (choose!57885 lt!2629095 s!13591))))

(assert (=> d!2300996 (validRegex!10143 lt!2629095)))

(assert (=> d!2300996 (= (mainMatchTheorem!4300 lt!2629095 s!13591) lt!2629144)))

(declare-fun bs!1934466 () Bool)

(assert (= bs!1934466 d!2300996))

(assert (=> bs!1934466 m!8076134))

(assert (=> bs!1934466 m!8076140))

(declare-fun m!8076392 () Bool)

(assert (=> bs!1934466 m!8076392))

(declare-fun m!8076394 () Bool)

(assert (=> bs!1934466 m!8076394))

(assert (=> b!7488464 d!2300996))

(declare-fun bs!1934467 () Bool)

(declare-fun b!7488971 () Bool)

(assert (= bs!1934467 (and b!7488971 b!7488470)))

(declare-fun lambda!463994 () Int)

(assert (=> bs!1934467 (not (= lambda!463994 lambda!463962))))

(declare-fun bs!1934468 () Bool)

(assert (= bs!1934468 (and b!7488971 d!2300950)))

(assert (=> bs!1934468 (not (= lambda!463994 lambda!463976))))

(assert (=> bs!1934468 (not (= lambda!463994 lambda!463977))))

(assert (=> bs!1934467 (not (= lambda!463994 lambda!463963))))

(declare-fun bs!1934469 () Bool)

(assert (= bs!1934469 (and b!7488971 d!2300972)))

(assert (=> bs!1934469 (not (= lambda!463994 lambda!463985))))

(assert (=> b!7488971 true))

(assert (=> b!7488971 true))

(declare-fun bs!1934470 () Bool)

(declare-fun b!7488972 () Bool)

(assert (= bs!1934470 (and b!7488972 b!7488470)))

(declare-fun lambda!463995 () Int)

(assert (=> bs!1934470 (not (= lambda!463995 lambda!463962))))

(declare-fun bs!1934471 () Bool)

(assert (= bs!1934471 (and b!7488972 d!2300950)))

(assert (=> bs!1934471 (not (= lambda!463995 lambda!463976))))

(assert (=> bs!1934471 (= (and (= (regOne!39770 lt!2629088) lt!2629090) (= (regTwo!39770 lt!2629088) rTail!78)) (= lambda!463995 lambda!463977))))

(declare-fun bs!1934472 () Bool)

(assert (= bs!1934472 (and b!7488972 d!2300972)))

(assert (=> bs!1934472 (not (= lambda!463995 lambda!463985))))

(assert (=> bs!1934470 (= (and (= (regOne!39770 lt!2629088) lt!2629090) (= (regTwo!39770 lt!2629088) rTail!78)) (= lambda!463995 lambda!463963))))

(declare-fun bs!1934473 () Bool)

(assert (= bs!1934473 (and b!7488972 b!7488971)))

(assert (=> bs!1934473 (not (= lambda!463995 lambda!463994))))

(assert (=> b!7488972 true))

(assert (=> b!7488972 true))

(declare-fun bm!687478 () Bool)

(declare-fun call!687484 () Bool)

(assert (=> bm!687478 (= call!687484 (isEmpty!41240 s!13591))))

(declare-fun b!7488965 () Bool)

(declare-fun res!3004080 () Bool)

(declare-fun e!4465989 () Bool)

(assert (=> b!7488965 (=> res!3004080 e!4465989)))

(assert (=> b!7488965 (= res!3004080 call!687484)))

(declare-fun e!4465994 () Bool)

(assert (=> b!7488965 (= e!4465994 e!4465989)))

(declare-fun b!7488966 () Bool)

(declare-fun e!4465995 () Bool)

(assert (=> b!7488966 (= e!4465995 e!4465994)))

(declare-fun c!1382877 () Bool)

(assert (=> b!7488966 (= c!1382877 ((_ is Star!19629) lt!2629088))))

(declare-fun b!7488967 () Bool)

(declare-fun e!4465992 () Bool)

(assert (=> b!7488967 (= e!4465992 (matchRSpec!4306 (regTwo!39771 lt!2629088) s!13591))))

(declare-fun b!7488968 () Bool)

(declare-fun e!4465991 () Bool)

(declare-fun e!4465990 () Bool)

(assert (=> b!7488968 (= e!4465991 e!4465990)))

(declare-fun res!3004081 () Bool)

(assert (=> b!7488968 (= res!3004081 (not ((_ is EmptyLang!19629) lt!2629088)))))

(assert (=> b!7488968 (=> (not res!3004081) (not e!4465990))))

(declare-fun d!2300998 () Bool)

(declare-fun c!1382876 () Bool)

(assert (=> d!2300998 (= c!1382876 ((_ is EmptyExpr!19629) lt!2629088))))

(assert (=> d!2300998 (= (matchRSpec!4306 lt!2629088 s!13591) e!4465991)))

(declare-fun b!7488969 () Bool)

(declare-fun c!1382875 () Bool)

(assert (=> b!7488969 (= c!1382875 ((_ is Union!19629) lt!2629088))))

(declare-fun e!4465993 () Bool)

(assert (=> b!7488969 (= e!4465993 e!4465995)))

(declare-fun b!7488970 () Bool)

(assert (=> b!7488970 (= e!4465995 e!4465992)))

(declare-fun res!3004079 () Bool)

(assert (=> b!7488970 (= res!3004079 (matchRSpec!4306 (regOne!39771 lt!2629088) s!13591))))

(assert (=> b!7488970 (=> res!3004079 e!4465992)))

(declare-fun call!687483 () Bool)

(declare-fun bm!687479 () Bool)

(assert (=> bm!687479 (= call!687483 (Exists!4246 (ite c!1382877 lambda!463994 lambda!463995)))))

(assert (=> b!7488971 (= e!4465989 call!687483)))

(assert (=> b!7488972 (= e!4465994 call!687483)))

(declare-fun b!7488973 () Bool)

(assert (=> b!7488973 (= e!4465991 call!687484)))

(declare-fun b!7488974 () Bool)

(declare-fun c!1382878 () Bool)

(assert (=> b!7488974 (= c!1382878 ((_ is ElementMatch!19629) lt!2629088))))

(assert (=> b!7488974 (= e!4465990 e!4465993)))

(declare-fun b!7488975 () Bool)

(assert (=> b!7488975 (= e!4465993 (= s!13591 (Cons!72219 (c!1382784 lt!2629088) Nil!72219)))))

(assert (= (and d!2300998 c!1382876) b!7488973))

(assert (= (and d!2300998 (not c!1382876)) b!7488968))

(assert (= (and b!7488968 res!3004081) b!7488974))

(assert (= (and b!7488974 c!1382878) b!7488975))

(assert (= (and b!7488974 (not c!1382878)) b!7488969))

(assert (= (and b!7488969 c!1382875) b!7488970))

(assert (= (and b!7488969 (not c!1382875)) b!7488966))

(assert (= (and b!7488970 (not res!3004079)) b!7488967))

(assert (= (and b!7488966 c!1382877) b!7488965))

(assert (= (and b!7488966 (not c!1382877)) b!7488972))

(assert (= (and b!7488965 (not res!3004080)) b!7488971))

(assert (= (or b!7488971 b!7488972) bm!687479))

(assert (= (or b!7488973 b!7488965) bm!687478))

(declare-fun m!8076396 () Bool)

(assert (=> bm!687478 m!8076396))

(declare-fun m!8076398 () Bool)

(assert (=> b!7488967 m!8076398))

(declare-fun m!8076400 () Bool)

(assert (=> b!7488970 m!8076400))

(declare-fun m!8076402 () Bool)

(assert (=> bm!687479 m!8076402))

(assert (=> b!7488464 d!2300998))

(declare-fun b!7488976 () Bool)

(declare-fun e!4465997 () Bool)

(declare-fun lt!2629145 () Bool)

(assert (=> b!7488976 (= e!4465997 (not lt!2629145))))

(declare-fun b!7488977 () Bool)

(declare-fun e!4466000 () Bool)

(assert (=> b!7488977 (= e!4466000 (matchR!9391 (derivativeStep!5624 lt!2629088 (head!15364 s!13591)) (tail!14933 s!13591)))))

(declare-fun b!7488978 () Bool)

(declare-fun e!4465996 () Bool)

(declare-fun call!687485 () Bool)

(assert (=> b!7488978 (= e!4465996 (= lt!2629145 call!687485))))

(declare-fun b!7488979 () Bool)

(declare-fun res!3004084 () Bool)

(declare-fun e!4466002 () Bool)

(assert (=> b!7488979 (=> res!3004084 e!4466002)))

(assert (=> b!7488979 (= res!3004084 (not (isEmpty!41240 (tail!14933 s!13591))))))

(declare-fun b!7488980 () Bool)

(assert (=> b!7488980 (= e!4465996 e!4465997)))

(declare-fun c!1382880 () Bool)

(assert (=> b!7488980 (= c!1382880 ((_ is EmptyLang!19629) lt!2629088))))

(declare-fun d!2301000 () Bool)

(assert (=> d!2301000 e!4465996))

(declare-fun c!1382881 () Bool)

(assert (=> d!2301000 (= c!1382881 ((_ is EmptyExpr!19629) lt!2629088))))

(assert (=> d!2301000 (= lt!2629145 e!4466000)))

(declare-fun c!1382879 () Bool)

(assert (=> d!2301000 (= c!1382879 (isEmpty!41240 s!13591))))

(assert (=> d!2301000 (validRegex!10143 lt!2629088)))

(assert (=> d!2301000 (= (matchR!9391 lt!2629088 s!13591) lt!2629145)))

(declare-fun b!7488981 () Bool)

(declare-fun res!3004086 () Bool)

(declare-fun e!4466001 () Bool)

(assert (=> b!7488981 (=> res!3004086 e!4466001)))

(assert (=> b!7488981 (= res!3004086 (not ((_ is ElementMatch!19629) lt!2629088)))))

(assert (=> b!7488981 (= e!4465997 e!4466001)))

(declare-fun b!7488982 () Bool)

(declare-fun res!3004083 () Bool)

(declare-fun e!4465999 () Bool)

(assert (=> b!7488982 (=> (not res!3004083) (not e!4465999))))

(assert (=> b!7488982 (= res!3004083 (not call!687485))))

(declare-fun b!7488983 () Bool)

(assert (=> b!7488983 (= e!4466002 (not (= (head!15364 s!13591) (c!1382784 lt!2629088))))))

(declare-fun bm!687480 () Bool)

(assert (=> bm!687480 (= call!687485 (isEmpty!41240 s!13591))))

(declare-fun b!7488984 () Bool)

(assert (=> b!7488984 (= e!4465999 (= (head!15364 s!13591) (c!1382784 lt!2629088)))))

(declare-fun b!7488985 () Bool)

(declare-fun e!4465998 () Bool)

(assert (=> b!7488985 (= e!4465998 e!4466002)))

(declare-fun res!3004087 () Bool)

(assert (=> b!7488985 (=> res!3004087 e!4466002)))

(assert (=> b!7488985 (= res!3004087 call!687485)))

(declare-fun b!7488986 () Bool)

(declare-fun res!3004089 () Bool)

(assert (=> b!7488986 (=> (not res!3004089) (not e!4465999))))

(assert (=> b!7488986 (= res!3004089 (isEmpty!41240 (tail!14933 s!13591)))))

(declare-fun b!7488987 () Bool)

(assert (=> b!7488987 (= e!4466001 e!4465998)))

(declare-fun res!3004082 () Bool)

(assert (=> b!7488987 (=> (not res!3004082) (not e!4465998))))

(assert (=> b!7488987 (= res!3004082 (not lt!2629145))))

(declare-fun b!7488988 () Bool)

(assert (=> b!7488988 (= e!4466000 (nullable!8567 lt!2629088))))

(declare-fun b!7488989 () Bool)

(declare-fun res!3004088 () Bool)

(assert (=> b!7488989 (=> res!3004088 e!4466001)))

(assert (=> b!7488989 (= res!3004088 e!4465999)))

(declare-fun res!3004085 () Bool)

(assert (=> b!7488989 (=> (not res!3004085) (not e!4465999))))

(assert (=> b!7488989 (= res!3004085 lt!2629145)))

(assert (= (and d!2301000 c!1382879) b!7488988))

(assert (= (and d!2301000 (not c!1382879)) b!7488977))

(assert (= (and d!2301000 c!1382881) b!7488978))

(assert (= (and d!2301000 (not c!1382881)) b!7488980))

(assert (= (and b!7488980 c!1382880) b!7488976))

(assert (= (and b!7488980 (not c!1382880)) b!7488981))

(assert (= (and b!7488981 (not res!3004086)) b!7488989))

(assert (= (and b!7488989 res!3004085) b!7488982))

(assert (= (and b!7488982 res!3004083) b!7488986))

(assert (= (and b!7488986 res!3004089) b!7488984))

(assert (= (and b!7488989 (not res!3004088)) b!7488987))

(assert (= (and b!7488987 res!3004082) b!7488985))

(assert (= (and b!7488985 (not res!3004087)) b!7488979))

(assert (= (and b!7488979 (not res!3004084)) b!7488983))

(assert (= (or b!7488978 b!7488982 b!7488985) bm!687480))

(assert (=> d!2301000 m!8076396))

(declare-fun m!8076404 () Bool)

(assert (=> d!2301000 m!8076404))

(declare-fun m!8076406 () Bool)

(assert (=> b!7488986 m!8076406))

(assert (=> b!7488986 m!8076406))

(declare-fun m!8076408 () Bool)

(assert (=> b!7488986 m!8076408))

(declare-fun m!8076410 () Bool)

(assert (=> b!7488977 m!8076410))

(assert (=> b!7488977 m!8076410))

(declare-fun m!8076412 () Bool)

(assert (=> b!7488977 m!8076412))

(assert (=> b!7488977 m!8076406))

(assert (=> b!7488977 m!8076412))

(assert (=> b!7488977 m!8076406))

(declare-fun m!8076414 () Bool)

(assert (=> b!7488977 m!8076414))

(assert (=> bm!687480 m!8076396))

(assert (=> b!7488984 m!8076410))

(assert (=> b!7488979 m!8076406))

(assert (=> b!7488979 m!8076406))

(assert (=> b!7488979 m!8076408))

(assert (=> b!7488983 m!8076410))

(declare-fun m!8076416 () Bool)

(assert (=> b!7488988 m!8076416))

(assert (=> b!7488464 d!2301000))

(declare-fun b!7488990 () Bool)

(declare-fun e!4466004 () Bool)

(declare-fun lt!2629146 () Bool)

(assert (=> b!7488990 (= e!4466004 (not lt!2629146))))

(declare-fun b!7488991 () Bool)

(declare-fun e!4466007 () Bool)

(assert (=> b!7488991 (= e!4466007 (matchR!9391 (derivativeStep!5624 lt!2629095 (head!15364 s!13591)) (tail!14933 s!13591)))))

(declare-fun b!7488992 () Bool)

(declare-fun e!4466003 () Bool)

(declare-fun call!687486 () Bool)

(assert (=> b!7488992 (= e!4466003 (= lt!2629146 call!687486))))

(declare-fun b!7488993 () Bool)

(declare-fun res!3004092 () Bool)

(declare-fun e!4466009 () Bool)

(assert (=> b!7488993 (=> res!3004092 e!4466009)))

(assert (=> b!7488993 (= res!3004092 (not (isEmpty!41240 (tail!14933 s!13591))))))

(declare-fun b!7488994 () Bool)

(assert (=> b!7488994 (= e!4466003 e!4466004)))

(declare-fun c!1382883 () Bool)

(assert (=> b!7488994 (= c!1382883 ((_ is EmptyLang!19629) lt!2629095))))

(declare-fun d!2301002 () Bool)

(assert (=> d!2301002 e!4466003))

(declare-fun c!1382884 () Bool)

(assert (=> d!2301002 (= c!1382884 ((_ is EmptyExpr!19629) lt!2629095))))

(assert (=> d!2301002 (= lt!2629146 e!4466007)))

(declare-fun c!1382882 () Bool)

(assert (=> d!2301002 (= c!1382882 (isEmpty!41240 s!13591))))

(assert (=> d!2301002 (validRegex!10143 lt!2629095)))

(assert (=> d!2301002 (= (matchR!9391 lt!2629095 s!13591) lt!2629146)))

(declare-fun b!7488995 () Bool)

(declare-fun res!3004094 () Bool)

(declare-fun e!4466008 () Bool)

(assert (=> b!7488995 (=> res!3004094 e!4466008)))

(assert (=> b!7488995 (= res!3004094 (not ((_ is ElementMatch!19629) lt!2629095)))))

(assert (=> b!7488995 (= e!4466004 e!4466008)))

(declare-fun b!7488996 () Bool)

(declare-fun res!3004091 () Bool)

(declare-fun e!4466006 () Bool)

(assert (=> b!7488996 (=> (not res!3004091) (not e!4466006))))

(assert (=> b!7488996 (= res!3004091 (not call!687486))))

(declare-fun b!7488997 () Bool)

(assert (=> b!7488997 (= e!4466009 (not (= (head!15364 s!13591) (c!1382784 lt!2629095))))))

(declare-fun bm!687481 () Bool)

(assert (=> bm!687481 (= call!687486 (isEmpty!41240 s!13591))))

(declare-fun b!7488998 () Bool)

(assert (=> b!7488998 (= e!4466006 (= (head!15364 s!13591) (c!1382784 lt!2629095)))))

(declare-fun b!7488999 () Bool)

(declare-fun e!4466005 () Bool)

(assert (=> b!7488999 (= e!4466005 e!4466009)))

(declare-fun res!3004095 () Bool)

(assert (=> b!7488999 (=> res!3004095 e!4466009)))

(assert (=> b!7488999 (= res!3004095 call!687486)))

(declare-fun b!7489000 () Bool)

(declare-fun res!3004097 () Bool)

(assert (=> b!7489000 (=> (not res!3004097) (not e!4466006))))

(assert (=> b!7489000 (= res!3004097 (isEmpty!41240 (tail!14933 s!13591)))))

(declare-fun b!7489001 () Bool)

(assert (=> b!7489001 (= e!4466008 e!4466005)))

(declare-fun res!3004090 () Bool)

(assert (=> b!7489001 (=> (not res!3004090) (not e!4466005))))

(assert (=> b!7489001 (= res!3004090 (not lt!2629146))))

(declare-fun b!7489002 () Bool)

(assert (=> b!7489002 (= e!4466007 (nullable!8567 lt!2629095))))

(declare-fun b!7489003 () Bool)

(declare-fun res!3004096 () Bool)

(assert (=> b!7489003 (=> res!3004096 e!4466008)))

(assert (=> b!7489003 (= res!3004096 e!4466006)))

(declare-fun res!3004093 () Bool)

(assert (=> b!7489003 (=> (not res!3004093) (not e!4466006))))

(assert (=> b!7489003 (= res!3004093 lt!2629146)))

(assert (= (and d!2301002 c!1382882) b!7489002))

(assert (= (and d!2301002 (not c!1382882)) b!7488991))

(assert (= (and d!2301002 c!1382884) b!7488992))

(assert (= (and d!2301002 (not c!1382884)) b!7488994))

(assert (= (and b!7488994 c!1382883) b!7488990))

(assert (= (and b!7488994 (not c!1382883)) b!7488995))

(assert (= (and b!7488995 (not res!3004094)) b!7489003))

(assert (= (and b!7489003 res!3004093) b!7488996))

(assert (= (and b!7488996 res!3004091) b!7489000))

(assert (= (and b!7489000 res!3004097) b!7488998))

(assert (= (and b!7489003 (not res!3004096)) b!7489001))

(assert (= (and b!7489001 res!3004090) b!7488999))

(assert (= (and b!7488999 (not res!3004095)) b!7488993))

(assert (= (and b!7488993 (not res!3004092)) b!7488997))

(assert (= (or b!7488992 b!7488996 b!7488999) bm!687481))

(assert (=> d!2301002 m!8076396))

(assert (=> d!2301002 m!8076394))

(assert (=> b!7489000 m!8076406))

(assert (=> b!7489000 m!8076406))

(assert (=> b!7489000 m!8076408))

(assert (=> b!7488991 m!8076410))

(assert (=> b!7488991 m!8076410))

(declare-fun m!8076418 () Bool)

(assert (=> b!7488991 m!8076418))

(assert (=> b!7488991 m!8076406))

(assert (=> b!7488991 m!8076418))

(assert (=> b!7488991 m!8076406))

(declare-fun m!8076420 () Bool)

(assert (=> b!7488991 m!8076420))

(assert (=> bm!687481 m!8076396))

(assert (=> b!7488998 m!8076410))

(assert (=> b!7488993 m!8076406))

(assert (=> b!7488993 m!8076406))

(assert (=> b!7488993 m!8076408))

(assert (=> b!7488997 m!8076410))

(declare-fun m!8076422 () Bool)

(assert (=> b!7489002 m!8076422))

(assert (=> b!7488464 d!2301002))

(declare-fun d!2301004 () Bool)

(assert (=> d!2301004 (= (matchR!9391 lt!2629088 s!13591) (matchRSpec!4306 lt!2629088 s!13591))))

(declare-fun lt!2629147 () Unit!166089)

(assert (=> d!2301004 (= lt!2629147 (choose!57885 lt!2629088 s!13591))))

(assert (=> d!2301004 (validRegex!10143 lt!2629088)))

(assert (=> d!2301004 (= (mainMatchTheorem!4300 lt!2629088 s!13591) lt!2629147)))

(declare-fun bs!1934474 () Bool)

(assert (= bs!1934474 d!2301004))

(assert (=> bs!1934474 m!8076144))

(assert (=> bs!1934474 m!8076136))

(declare-fun m!8076424 () Bool)

(assert (=> bs!1934474 m!8076424))

(assert (=> bs!1934474 m!8076404))

(assert (=> b!7488464 d!2301004))

(declare-fun bs!1934475 () Bool)

(declare-fun b!7489010 () Bool)

(assert (= bs!1934475 (and b!7489010 b!7488470)))

(declare-fun lambda!463996 () Int)

(assert (=> bs!1934475 (not (= lambda!463996 lambda!463962))))

(declare-fun bs!1934476 () Bool)

(assert (= bs!1934476 (and b!7489010 d!2300950)))

(assert (=> bs!1934476 (not (= lambda!463996 lambda!463976))))

(assert (=> bs!1934476 (not (= lambda!463996 lambda!463977))))

(declare-fun bs!1934477 () Bool)

(assert (= bs!1934477 (and b!7489010 b!7488972)))

(assert (=> bs!1934477 (not (= lambda!463996 lambda!463995))))

(declare-fun bs!1934478 () Bool)

(assert (= bs!1934478 (and b!7489010 d!2300972)))

(assert (=> bs!1934478 (not (= lambda!463996 lambda!463985))))

(assert (=> bs!1934475 (not (= lambda!463996 lambda!463963))))

(declare-fun bs!1934479 () Bool)

(assert (= bs!1934479 (and b!7489010 b!7488971)))

(assert (=> bs!1934479 (= (and (= (reg!19958 lt!2629095) (reg!19958 lt!2629088)) (= lt!2629095 lt!2629088)) (= lambda!463996 lambda!463994))))

(assert (=> b!7489010 true))

(assert (=> b!7489010 true))

(declare-fun bs!1934480 () Bool)

(declare-fun b!7489011 () Bool)

(assert (= bs!1934480 (and b!7489011 b!7488470)))

(declare-fun lambda!463997 () Int)

(assert (=> bs!1934480 (not (= lambda!463997 lambda!463962))))

(declare-fun bs!1934481 () Bool)

(assert (= bs!1934481 (and b!7489011 d!2300950)))

(assert (=> bs!1934481 (not (= lambda!463997 lambda!463976))))

(assert (=> bs!1934481 (= (and (= (regOne!39770 lt!2629095) lt!2629090) (= (regTwo!39770 lt!2629095) rTail!78)) (= lambda!463997 lambda!463977))))

(declare-fun bs!1934482 () Bool)

(assert (= bs!1934482 (and b!7489011 b!7489010)))

(assert (=> bs!1934482 (not (= lambda!463997 lambda!463996))))

(declare-fun bs!1934483 () Bool)

(assert (= bs!1934483 (and b!7489011 b!7488972)))

(assert (=> bs!1934483 (= (and (= (regOne!39770 lt!2629095) (regOne!39770 lt!2629088)) (= (regTwo!39770 lt!2629095) (regTwo!39770 lt!2629088))) (= lambda!463997 lambda!463995))))

(declare-fun bs!1934484 () Bool)

(assert (= bs!1934484 (and b!7489011 d!2300972)))

(assert (=> bs!1934484 (not (= lambda!463997 lambda!463985))))

(assert (=> bs!1934480 (= (and (= (regOne!39770 lt!2629095) lt!2629090) (= (regTwo!39770 lt!2629095) rTail!78)) (= lambda!463997 lambda!463963))))

(declare-fun bs!1934485 () Bool)

(assert (= bs!1934485 (and b!7489011 b!7488971)))

(assert (=> bs!1934485 (not (= lambda!463997 lambda!463994))))

(assert (=> b!7489011 true))

(assert (=> b!7489011 true))

(declare-fun bm!687482 () Bool)

(declare-fun call!687488 () Bool)

(assert (=> bm!687482 (= call!687488 (isEmpty!41240 s!13591))))

(declare-fun b!7489004 () Bool)

(declare-fun res!3004099 () Bool)

(declare-fun e!4466010 () Bool)

(assert (=> b!7489004 (=> res!3004099 e!4466010)))

(assert (=> b!7489004 (= res!3004099 call!687488)))

(declare-fun e!4466015 () Bool)

(assert (=> b!7489004 (= e!4466015 e!4466010)))

(declare-fun b!7489005 () Bool)

(declare-fun e!4466016 () Bool)

(assert (=> b!7489005 (= e!4466016 e!4466015)))

(declare-fun c!1382887 () Bool)

(assert (=> b!7489005 (= c!1382887 ((_ is Star!19629) lt!2629095))))

(declare-fun b!7489006 () Bool)

(declare-fun e!4466013 () Bool)

(assert (=> b!7489006 (= e!4466013 (matchRSpec!4306 (regTwo!39771 lt!2629095) s!13591))))

(declare-fun b!7489007 () Bool)

(declare-fun e!4466012 () Bool)

(declare-fun e!4466011 () Bool)

(assert (=> b!7489007 (= e!4466012 e!4466011)))

(declare-fun res!3004100 () Bool)

(assert (=> b!7489007 (= res!3004100 (not ((_ is EmptyLang!19629) lt!2629095)))))

(assert (=> b!7489007 (=> (not res!3004100) (not e!4466011))))

(declare-fun d!2301006 () Bool)

(declare-fun c!1382886 () Bool)

(assert (=> d!2301006 (= c!1382886 ((_ is EmptyExpr!19629) lt!2629095))))

(assert (=> d!2301006 (= (matchRSpec!4306 lt!2629095 s!13591) e!4466012)))

(declare-fun b!7489008 () Bool)

(declare-fun c!1382885 () Bool)

(assert (=> b!7489008 (= c!1382885 ((_ is Union!19629) lt!2629095))))

(declare-fun e!4466014 () Bool)

(assert (=> b!7489008 (= e!4466014 e!4466016)))

(declare-fun b!7489009 () Bool)

(assert (=> b!7489009 (= e!4466016 e!4466013)))

(declare-fun res!3004098 () Bool)

(assert (=> b!7489009 (= res!3004098 (matchRSpec!4306 (regOne!39771 lt!2629095) s!13591))))

(assert (=> b!7489009 (=> res!3004098 e!4466013)))

(declare-fun bm!687483 () Bool)

(declare-fun call!687487 () Bool)

(assert (=> bm!687483 (= call!687487 (Exists!4246 (ite c!1382887 lambda!463996 lambda!463997)))))

(assert (=> b!7489010 (= e!4466010 call!687487)))

(assert (=> b!7489011 (= e!4466015 call!687487)))

(declare-fun b!7489012 () Bool)

(assert (=> b!7489012 (= e!4466012 call!687488)))

(declare-fun b!7489013 () Bool)

(declare-fun c!1382888 () Bool)

(assert (=> b!7489013 (= c!1382888 ((_ is ElementMatch!19629) lt!2629095))))

(assert (=> b!7489013 (= e!4466011 e!4466014)))

(declare-fun b!7489014 () Bool)

(assert (=> b!7489014 (= e!4466014 (= s!13591 (Cons!72219 (c!1382784 lt!2629095) Nil!72219)))))

(assert (= (and d!2301006 c!1382886) b!7489012))

(assert (= (and d!2301006 (not c!1382886)) b!7489007))

(assert (= (and b!7489007 res!3004100) b!7489013))

(assert (= (and b!7489013 c!1382888) b!7489014))

(assert (= (and b!7489013 (not c!1382888)) b!7489008))

(assert (= (and b!7489008 c!1382885) b!7489009))

(assert (= (and b!7489008 (not c!1382885)) b!7489005))

(assert (= (and b!7489009 (not res!3004098)) b!7489006))

(assert (= (and b!7489005 c!1382887) b!7489004))

(assert (= (and b!7489005 (not c!1382887)) b!7489011))

(assert (= (and b!7489004 (not res!3004099)) b!7489010))

(assert (= (or b!7489010 b!7489011) bm!687483))

(assert (= (or b!7489012 b!7489004) bm!687482))

(assert (=> bm!687482 m!8076396))

(declare-fun m!8076426 () Bool)

(assert (=> b!7489006 m!8076426))

(declare-fun m!8076428 () Bool)

(assert (=> b!7489009 m!8076428))

(declare-fun m!8076430 () Bool)

(assert (=> bm!687483 m!8076430))

(assert (=> b!7488464 d!2301006))

(declare-fun b!7489028 () Bool)

(declare-fun e!4466019 () Bool)

(declare-fun tp!2173619 () Bool)

(declare-fun tp!2173618 () Bool)

(assert (=> b!7489028 (= e!4466019 (and tp!2173619 tp!2173618))))

(assert (=> b!7488467 (= tp!2173517 e!4466019)))

(declare-fun b!7489027 () Bool)

(declare-fun tp!2173620 () Bool)

(assert (=> b!7489027 (= e!4466019 tp!2173620)))

(declare-fun b!7489026 () Bool)

(declare-fun tp!2173616 () Bool)

(declare-fun tp!2173617 () Bool)

(assert (=> b!7489026 (= e!4466019 (and tp!2173616 tp!2173617))))

(declare-fun b!7489025 () Bool)

(assert (=> b!7489025 (= e!4466019 tp_is_empty!49547)))

(assert (= (and b!7488467 ((_ is ElementMatch!19629) (regOne!39770 rTail!78))) b!7489025))

(assert (= (and b!7488467 ((_ is Concat!28474) (regOne!39770 rTail!78))) b!7489026))

(assert (= (and b!7488467 ((_ is Star!19629) (regOne!39770 rTail!78))) b!7489027))

(assert (= (and b!7488467 ((_ is Union!19629) (regOne!39770 rTail!78))) b!7489028))

(declare-fun b!7489032 () Bool)

(declare-fun e!4466020 () Bool)

(declare-fun tp!2173624 () Bool)

(declare-fun tp!2173623 () Bool)

(assert (=> b!7489032 (= e!4466020 (and tp!2173624 tp!2173623))))

(assert (=> b!7488467 (= tp!2173508 e!4466020)))

(declare-fun b!7489031 () Bool)

(declare-fun tp!2173625 () Bool)

(assert (=> b!7489031 (= e!4466020 tp!2173625)))

(declare-fun b!7489030 () Bool)

(declare-fun tp!2173621 () Bool)

(declare-fun tp!2173622 () Bool)

(assert (=> b!7489030 (= e!4466020 (and tp!2173621 tp!2173622))))

(declare-fun b!7489029 () Bool)

(assert (=> b!7489029 (= e!4466020 tp_is_empty!49547)))

(assert (= (and b!7488467 ((_ is ElementMatch!19629) (regTwo!39770 rTail!78))) b!7489029))

(assert (= (and b!7488467 ((_ is Concat!28474) (regTwo!39770 rTail!78))) b!7489030))

(assert (= (and b!7488467 ((_ is Star!19629) (regTwo!39770 rTail!78))) b!7489031))

(assert (= (and b!7488467 ((_ is Union!19629) (regTwo!39770 rTail!78))) b!7489032))

(declare-fun b!7489036 () Bool)

(declare-fun e!4466021 () Bool)

(declare-fun tp!2173629 () Bool)

(declare-fun tp!2173628 () Bool)

(assert (=> b!7489036 (= e!4466021 (and tp!2173629 tp!2173628))))

(assert (=> b!7488462 (= tp!2173509 e!4466021)))

(declare-fun b!7489035 () Bool)

(declare-fun tp!2173630 () Bool)

(assert (=> b!7489035 (= e!4466021 tp!2173630)))

(declare-fun b!7489034 () Bool)

(declare-fun tp!2173626 () Bool)

(declare-fun tp!2173627 () Bool)

(assert (=> b!7489034 (= e!4466021 (and tp!2173626 tp!2173627))))

(declare-fun b!7489033 () Bool)

(assert (=> b!7489033 (= e!4466021 tp_is_empty!49547)))

(assert (= (and b!7488462 ((_ is ElementMatch!19629) (reg!19958 rTail!78))) b!7489033))

(assert (= (and b!7488462 ((_ is Concat!28474) (reg!19958 rTail!78))) b!7489034))

(assert (= (and b!7488462 ((_ is Star!19629) (reg!19958 rTail!78))) b!7489035))

(assert (= (and b!7488462 ((_ is Union!19629) (reg!19958 rTail!78))) b!7489036))

(declare-fun b!7489040 () Bool)

(declare-fun e!4466022 () Bool)

(declare-fun tp!2173634 () Bool)

(declare-fun tp!2173633 () Bool)

(assert (=> b!7489040 (= e!4466022 (and tp!2173634 tp!2173633))))

(assert (=> b!7488468 (= tp!2173510 e!4466022)))

(declare-fun b!7489039 () Bool)

(declare-fun tp!2173635 () Bool)

(assert (=> b!7489039 (= e!4466022 tp!2173635)))

(declare-fun b!7489038 () Bool)

(declare-fun tp!2173631 () Bool)

(declare-fun tp!2173632 () Bool)

(assert (=> b!7489038 (= e!4466022 (and tp!2173631 tp!2173632))))

(declare-fun b!7489037 () Bool)

(assert (=> b!7489037 (= e!4466022 tp_is_empty!49547)))

(assert (= (and b!7488468 ((_ is ElementMatch!19629) (reg!19958 r1!5845))) b!7489037))

(assert (= (and b!7488468 ((_ is Concat!28474) (reg!19958 r1!5845))) b!7489038))

(assert (= (and b!7488468 ((_ is Star!19629) (reg!19958 r1!5845))) b!7489039))

(assert (= (and b!7488468 ((_ is Union!19629) (reg!19958 r1!5845))) b!7489040))

(declare-fun b!7489045 () Bool)

(declare-fun e!4466025 () Bool)

(declare-fun tp!2173638 () Bool)

(assert (=> b!7489045 (= e!4466025 (and tp_is_empty!49547 tp!2173638))))

(assert (=> b!7488455 (= tp!2173507 e!4466025)))

(assert (= (and b!7488455 ((_ is Cons!72219) (t!386912 s!13591))) b!7489045))

(declare-fun b!7489049 () Bool)

(declare-fun e!4466026 () Bool)

(declare-fun tp!2173642 () Bool)

(declare-fun tp!2173641 () Bool)

(assert (=> b!7489049 (= e!4466026 (and tp!2173642 tp!2173641))))

(assert (=> b!7488471 (= tp!2173502 e!4466026)))

(declare-fun b!7489048 () Bool)

(declare-fun tp!2173643 () Bool)

(assert (=> b!7489048 (= e!4466026 tp!2173643)))

(declare-fun b!7489047 () Bool)

(declare-fun tp!2173639 () Bool)

(declare-fun tp!2173640 () Bool)

(assert (=> b!7489047 (= e!4466026 (and tp!2173639 tp!2173640))))

(declare-fun b!7489046 () Bool)

(assert (=> b!7489046 (= e!4466026 tp_is_empty!49547)))

(assert (= (and b!7488471 ((_ is ElementMatch!19629) (regOne!39771 r1!5845))) b!7489046))

(assert (= (and b!7488471 ((_ is Concat!28474) (regOne!39771 r1!5845))) b!7489047))

(assert (= (and b!7488471 ((_ is Star!19629) (regOne!39771 r1!5845))) b!7489048))

(assert (= (and b!7488471 ((_ is Union!19629) (regOne!39771 r1!5845))) b!7489049))

(declare-fun b!7489053 () Bool)

(declare-fun e!4466027 () Bool)

(declare-fun tp!2173647 () Bool)

(declare-fun tp!2173646 () Bool)

(assert (=> b!7489053 (= e!4466027 (and tp!2173647 tp!2173646))))

(assert (=> b!7488471 (= tp!2173515 e!4466027)))

(declare-fun b!7489052 () Bool)

(declare-fun tp!2173648 () Bool)

(assert (=> b!7489052 (= e!4466027 tp!2173648)))

(declare-fun b!7489051 () Bool)

(declare-fun tp!2173644 () Bool)

(declare-fun tp!2173645 () Bool)

(assert (=> b!7489051 (= e!4466027 (and tp!2173644 tp!2173645))))

(declare-fun b!7489050 () Bool)

(assert (=> b!7489050 (= e!4466027 tp_is_empty!49547)))

(assert (= (and b!7488471 ((_ is ElementMatch!19629) (regTwo!39771 r1!5845))) b!7489050))

(assert (= (and b!7488471 ((_ is Concat!28474) (regTwo!39771 r1!5845))) b!7489051))

(assert (= (and b!7488471 ((_ is Star!19629) (regTwo!39771 r1!5845))) b!7489052))

(assert (= (and b!7488471 ((_ is Union!19629) (regTwo!39771 r1!5845))) b!7489053))

(declare-fun b!7489057 () Bool)

(declare-fun e!4466028 () Bool)

(declare-fun tp!2173652 () Bool)

(declare-fun tp!2173651 () Bool)

(assert (=> b!7489057 (= e!4466028 (and tp!2173652 tp!2173651))))

(assert (=> b!7488466 (= tp!2173505 e!4466028)))

(declare-fun b!7489056 () Bool)

(declare-fun tp!2173653 () Bool)

(assert (=> b!7489056 (= e!4466028 tp!2173653)))

(declare-fun b!7489055 () Bool)

(declare-fun tp!2173649 () Bool)

(declare-fun tp!2173650 () Bool)

(assert (=> b!7489055 (= e!4466028 (and tp!2173649 tp!2173650))))

(declare-fun b!7489054 () Bool)

(assert (=> b!7489054 (= e!4466028 tp_is_empty!49547)))

(assert (= (and b!7488466 ((_ is ElementMatch!19629) (regOne!39770 r1!5845))) b!7489054))

(assert (= (and b!7488466 ((_ is Concat!28474) (regOne!39770 r1!5845))) b!7489055))

(assert (= (and b!7488466 ((_ is Star!19629) (regOne!39770 r1!5845))) b!7489056))

(assert (= (and b!7488466 ((_ is Union!19629) (regOne!39770 r1!5845))) b!7489057))

(declare-fun b!7489061 () Bool)

(declare-fun e!4466029 () Bool)

(declare-fun tp!2173657 () Bool)

(declare-fun tp!2173656 () Bool)

(assert (=> b!7489061 (= e!4466029 (and tp!2173657 tp!2173656))))

(assert (=> b!7488466 (= tp!2173504 e!4466029)))

(declare-fun b!7489060 () Bool)

(declare-fun tp!2173658 () Bool)

(assert (=> b!7489060 (= e!4466029 tp!2173658)))

(declare-fun b!7489059 () Bool)

(declare-fun tp!2173654 () Bool)

(declare-fun tp!2173655 () Bool)

(assert (=> b!7489059 (= e!4466029 (and tp!2173654 tp!2173655))))

(declare-fun b!7489058 () Bool)

(assert (=> b!7489058 (= e!4466029 tp_is_empty!49547)))

(assert (= (and b!7488466 ((_ is ElementMatch!19629) (regTwo!39770 r1!5845))) b!7489058))

(assert (= (and b!7488466 ((_ is Concat!28474) (regTwo!39770 r1!5845))) b!7489059))

(assert (= (and b!7488466 ((_ is Star!19629) (regTwo!39770 r1!5845))) b!7489060))

(assert (= (and b!7488466 ((_ is Union!19629) (regTwo!39770 r1!5845))) b!7489061))

(declare-fun b!7489065 () Bool)

(declare-fun e!4466030 () Bool)

(declare-fun tp!2173662 () Bool)

(declare-fun tp!2173661 () Bool)

(assert (=> b!7489065 (= e!4466030 (and tp!2173662 tp!2173661))))

(assert (=> b!7488461 (= tp!2173506 e!4466030)))

(declare-fun b!7489064 () Bool)

(declare-fun tp!2173663 () Bool)

(assert (=> b!7489064 (= e!4466030 tp!2173663)))

(declare-fun b!7489063 () Bool)

(declare-fun tp!2173659 () Bool)

(declare-fun tp!2173660 () Bool)

(assert (=> b!7489063 (= e!4466030 (and tp!2173659 tp!2173660))))

(declare-fun b!7489062 () Bool)

(assert (=> b!7489062 (= e!4466030 tp_is_empty!49547)))

(assert (= (and b!7488461 ((_ is ElementMatch!19629) (reg!19958 r2!5783))) b!7489062))

(assert (= (and b!7488461 ((_ is Concat!28474) (reg!19958 r2!5783))) b!7489063))

(assert (= (and b!7488461 ((_ is Star!19629) (reg!19958 r2!5783))) b!7489064))

(assert (= (and b!7488461 ((_ is Union!19629) (reg!19958 r2!5783))) b!7489065))

(declare-fun b!7489069 () Bool)

(declare-fun e!4466031 () Bool)

(declare-fun tp!2173667 () Bool)

(declare-fun tp!2173666 () Bool)

(assert (=> b!7489069 (= e!4466031 (and tp!2173667 tp!2173666))))

(assert (=> b!7488459 (= tp!2173511 e!4466031)))

(declare-fun b!7489068 () Bool)

(declare-fun tp!2173668 () Bool)

(assert (=> b!7489068 (= e!4466031 tp!2173668)))

(declare-fun b!7489067 () Bool)

(declare-fun tp!2173664 () Bool)

(declare-fun tp!2173665 () Bool)

(assert (=> b!7489067 (= e!4466031 (and tp!2173664 tp!2173665))))

(declare-fun b!7489066 () Bool)

(assert (=> b!7489066 (= e!4466031 tp_is_empty!49547)))

(assert (= (and b!7488459 ((_ is ElementMatch!19629) (regOne!39771 r2!5783))) b!7489066))

(assert (= (and b!7488459 ((_ is Concat!28474) (regOne!39771 r2!5783))) b!7489067))

(assert (= (and b!7488459 ((_ is Star!19629) (regOne!39771 r2!5783))) b!7489068))

(assert (= (and b!7488459 ((_ is Union!19629) (regOne!39771 r2!5783))) b!7489069))

(declare-fun b!7489073 () Bool)

(declare-fun e!4466032 () Bool)

(declare-fun tp!2173672 () Bool)

(declare-fun tp!2173671 () Bool)

(assert (=> b!7489073 (= e!4466032 (and tp!2173672 tp!2173671))))

(assert (=> b!7488459 (= tp!2173514 e!4466032)))

(declare-fun b!7489072 () Bool)

(declare-fun tp!2173673 () Bool)

(assert (=> b!7489072 (= e!4466032 tp!2173673)))

(declare-fun b!7489071 () Bool)

(declare-fun tp!2173669 () Bool)

(declare-fun tp!2173670 () Bool)

(assert (=> b!7489071 (= e!4466032 (and tp!2173669 tp!2173670))))

(declare-fun b!7489070 () Bool)

(assert (=> b!7489070 (= e!4466032 tp_is_empty!49547)))

(assert (= (and b!7488459 ((_ is ElementMatch!19629) (regTwo!39771 r2!5783))) b!7489070))

(assert (= (and b!7488459 ((_ is Concat!28474) (regTwo!39771 r2!5783))) b!7489071))

(assert (= (and b!7488459 ((_ is Star!19629) (regTwo!39771 r2!5783))) b!7489072))

(assert (= (and b!7488459 ((_ is Union!19629) (regTwo!39771 r2!5783))) b!7489073))

(declare-fun b!7489077 () Bool)

(declare-fun e!4466033 () Bool)

(declare-fun tp!2173677 () Bool)

(declare-fun tp!2173676 () Bool)

(assert (=> b!7489077 (= e!4466033 (and tp!2173677 tp!2173676))))

(assert (=> b!7488458 (= tp!2173516 e!4466033)))

(declare-fun b!7489076 () Bool)

(declare-fun tp!2173678 () Bool)

(assert (=> b!7489076 (= e!4466033 tp!2173678)))

(declare-fun b!7489075 () Bool)

(declare-fun tp!2173674 () Bool)

(declare-fun tp!2173675 () Bool)

(assert (=> b!7489075 (= e!4466033 (and tp!2173674 tp!2173675))))

(declare-fun b!7489074 () Bool)

(assert (=> b!7489074 (= e!4466033 tp_is_empty!49547)))

(assert (= (and b!7488458 ((_ is ElementMatch!19629) (regOne!39771 rTail!78))) b!7489074))

(assert (= (and b!7488458 ((_ is Concat!28474) (regOne!39771 rTail!78))) b!7489075))

(assert (= (and b!7488458 ((_ is Star!19629) (regOne!39771 rTail!78))) b!7489076))

(assert (= (and b!7488458 ((_ is Union!19629) (regOne!39771 rTail!78))) b!7489077))

(declare-fun b!7489081 () Bool)

(declare-fun e!4466034 () Bool)

(declare-fun tp!2173682 () Bool)

(declare-fun tp!2173681 () Bool)

(assert (=> b!7489081 (= e!4466034 (and tp!2173682 tp!2173681))))

(assert (=> b!7488458 (= tp!2173513 e!4466034)))

(declare-fun b!7489080 () Bool)

(declare-fun tp!2173683 () Bool)

(assert (=> b!7489080 (= e!4466034 tp!2173683)))

(declare-fun b!7489079 () Bool)

(declare-fun tp!2173679 () Bool)

(declare-fun tp!2173680 () Bool)

(assert (=> b!7489079 (= e!4466034 (and tp!2173679 tp!2173680))))

(declare-fun b!7489078 () Bool)

(assert (=> b!7489078 (= e!4466034 tp_is_empty!49547)))

(assert (= (and b!7488458 ((_ is ElementMatch!19629) (regTwo!39771 rTail!78))) b!7489078))

(assert (= (and b!7488458 ((_ is Concat!28474) (regTwo!39771 rTail!78))) b!7489079))

(assert (= (and b!7488458 ((_ is Star!19629) (regTwo!39771 rTail!78))) b!7489080))

(assert (= (and b!7488458 ((_ is Union!19629) (regTwo!39771 rTail!78))) b!7489081))

(declare-fun b!7489085 () Bool)

(declare-fun e!4466035 () Bool)

(declare-fun tp!2173687 () Bool)

(declare-fun tp!2173686 () Bool)

(assert (=> b!7489085 (= e!4466035 (and tp!2173687 tp!2173686))))

(assert (=> b!7488469 (= tp!2173512 e!4466035)))

(declare-fun b!7489084 () Bool)

(declare-fun tp!2173688 () Bool)

(assert (=> b!7489084 (= e!4466035 tp!2173688)))

(declare-fun b!7489083 () Bool)

(declare-fun tp!2173684 () Bool)

(declare-fun tp!2173685 () Bool)

(assert (=> b!7489083 (= e!4466035 (and tp!2173684 tp!2173685))))

(declare-fun b!7489082 () Bool)

(assert (=> b!7489082 (= e!4466035 tp_is_empty!49547)))

(assert (= (and b!7488469 ((_ is ElementMatch!19629) (regOne!39770 r2!5783))) b!7489082))

(assert (= (and b!7488469 ((_ is Concat!28474) (regOne!39770 r2!5783))) b!7489083))

(assert (= (and b!7488469 ((_ is Star!19629) (regOne!39770 r2!5783))) b!7489084))

(assert (= (and b!7488469 ((_ is Union!19629) (regOne!39770 r2!5783))) b!7489085))

(declare-fun b!7489089 () Bool)

(declare-fun e!4466036 () Bool)

(declare-fun tp!2173692 () Bool)

(declare-fun tp!2173691 () Bool)

(assert (=> b!7489089 (= e!4466036 (and tp!2173692 tp!2173691))))

(assert (=> b!7488469 (= tp!2173503 e!4466036)))

(declare-fun b!7489088 () Bool)

(declare-fun tp!2173693 () Bool)

(assert (=> b!7489088 (= e!4466036 tp!2173693)))

(declare-fun b!7489087 () Bool)

(declare-fun tp!2173689 () Bool)

(declare-fun tp!2173690 () Bool)

(assert (=> b!7489087 (= e!4466036 (and tp!2173689 tp!2173690))))

(declare-fun b!7489086 () Bool)

(assert (=> b!7489086 (= e!4466036 tp_is_empty!49547)))

(assert (= (and b!7488469 ((_ is ElementMatch!19629) (regTwo!39770 r2!5783))) b!7489086))

(assert (= (and b!7488469 ((_ is Concat!28474) (regTwo!39770 r2!5783))) b!7489087))

(assert (= (and b!7488469 ((_ is Star!19629) (regTwo!39770 r2!5783))) b!7489088))

(assert (= (and b!7488469 ((_ is Union!19629) (regTwo!39770 r2!5783))) b!7489089))

(check-sat (not b!7488970) (not bm!687432) (not b!7488986) (not b!7489040) (not b!7489047) (not d!2300968) (not b!7489032) (not b!7488643) (not bm!687482) (not b!7488913) (not b!7488918) (not b!7488920) (not d!2301000) (not d!2300978) (not b!7489076) (not d!2301002) (not b!7489067) (not b!7489057) (not b!7489071) (not b!7489027) (not d!2300996) (not b!7489055) (not b!7489077) (not b!7488997) (not b!7488998) (not b!7489068) (not b!7489039) (not b!7488639) (not b!7489064) (not b!7489045) tp_is_empty!49547 (not b!7489048) (not d!2300992) (not b!7488515) (not b!7489030) (not d!2300976) (not d!2300964) (not b!7489061) (not d!2301004) (not bm!687483) (not b!7488903) (not b!7489002) (not b!7489075) (not bm!687438) (not b!7489079) (not b!7488925) (not b!7489031) (not b!7489085) (not bm!687470) (not b!7489072) (not b!7488984) (not bm!687443) (not b!7488648) (not b!7488983) (not b!7489052) (not b!7488542) (not b!7489035) (not b!7489051) (not b!7489006) (not b!7489088) (not bm!687471) (not b!7489069) (not b!7489060) (not b!7488988) (not b!7489081) (not b!7489009) (not bm!687440) (not b!7488977) (not b!7488907) (not bm!687473) (not b!7488906) (not b!7488917) (not bm!687434) (not b!7489063) (not d!2300972) (not b!7488902) (not b!7488979) (not b!7488991) (not b!7488967) (not b!7488644) (not b!7488901) (not bm!687441) (not b!7489000) (not b!7489036) (not d!2300944) (not bm!687480) (not b!7489087) (not b!7488993) (not b!7489083) (not bm!687454) (not b!7489056) (not b!7489038) (not b!7489049) (not b!7488922) (not bm!687481) (not b!7489089) (not b!7489034) (not b!7489053) (not d!2300950) (not b!7489080) (not b!7489084) (not b!7489059) (not b!7488905) (not b!7488533) (not b!7488637) (not b!7488911) (not b!7488646) (not b!7489065) (not b!7489026) (not b!7489028) (not bm!687478) (not bm!687479) (not b!7489073))
(check-sat)
