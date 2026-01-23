; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230304 () Bool)

(assert start!230304)

(declare-fun b!2330566 () Bool)

(declare-datatypes ((Unit!40630 0))(
  ( (Unit!40631) )
))
(declare-fun e!1493211 () Unit!40630)

(declare-fun Unit!40632 () Unit!40630)

(assert (=> b!2330566 (= e!1493211 Unit!40632)))

(assert (=> b!2330566 false))

(declare-fun b!2330567 () Bool)

(declare-fun res!994953 () Bool)

(declare-fun e!1493210 () Bool)

(assert (=> b!2330567 (=> (not res!994953) (not e!1493210))))

(declare-datatypes ((C!13804 0))(
  ( (C!13805 (val!8062 Int)) )
))
(declare-datatypes ((Regex!6823 0))(
  ( (ElementMatch!6823 (c!370237 C!13804)) (Concat!11445 (regOne!14158 Regex!6823) (regTwo!14158 Regex!6823)) (EmptyExpr!6823) (Star!6823 (reg!7152 Regex!6823)) (EmptyLang!6823) (Union!6823 (regOne!14159 Regex!6823) (regTwo!14159 Regex!6823)) )
))
(declare-fun r!26197 () Regex!6823)

(declare-fun c!13498 () C!13804)

(declare-fun nullable!1902 (Regex!6823) Bool)

(declare-fun derivativeStep!1562 (Regex!6823 C!13804) Regex!6823)

(assert (=> b!2330567 (= res!994953 (nullable!1902 (derivativeStep!1562 r!26197 c!13498)))))

(declare-fun b!2330568 () Bool)

(declare-fun res!994955 () Bool)

(assert (=> b!2330568 (=> (not res!994955) (not e!1493210))))

(get-info :version)

(assert (=> b!2330568 (= res!994955 (and (not ((_ is EmptyExpr!6823) r!26197)) (not ((_ is EmptyLang!6823) r!26197)) (not ((_ is ElementMatch!6823) r!26197)) ((_ is Union!6823) r!26197)))))

(declare-fun b!2330569 () Bool)

(declare-fun e!1493213 () Bool)

(declare-fun tp!738507 () Bool)

(assert (=> b!2330569 (= e!1493213 tp!738507)))

(declare-fun b!2330570 () Bool)

(declare-fun e!1493212 () Bool)

(assert (=> b!2330570 (= e!1493210 e!1493212)))

(declare-fun res!994952 () Bool)

(assert (=> b!2330570 (=> (not res!994952) (not e!1493212))))

(assert (=> b!2330570 (= res!994952 (not (nullable!1902 (derivativeStep!1562 (regOne!14159 r!26197) c!13498))))))

(declare-fun lt!862254 () Unit!40630)

(assert (=> b!2330570 (= lt!862254 e!1493211)))

(declare-fun c!370236 () Bool)

(assert (=> b!2330570 (= c!370236 (nullable!1902 (regTwo!14159 r!26197)))))

(declare-fun lt!862255 () Unit!40630)

(declare-fun e!1493214 () Unit!40630)

(assert (=> b!2330570 (= lt!862255 e!1493214)))

(declare-fun c!370235 () Bool)

(assert (=> b!2330570 (= c!370235 (nullable!1902 (regOne!14159 r!26197)))))

(declare-fun b!2330571 () Bool)

(declare-fun tp!738511 () Bool)

(declare-fun tp!738509 () Bool)

(assert (=> b!2330571 (= e!1493213 (and tp!738511 tp!738509))))

(declare-fun b!2330572 () Bool)

(declare-fun res!994954 () Bool)

(assert (=> b!2330572 (=> (not res!994954) (not e!1493210))))

(assert (=> b!2330572 (= res!994954 (not (nullable!1902 r!26197)))))

(declare-fun res!994951 () Bool)

(assert (=> start!230304 (=> (not res!994951) (not e!1493210))))

(declare-fun validRegex!2568 (Regex!6823) Bool)

(assert (=> start!230304 (= res!994951 (validRegex!2568 r!26197))))

(assert (=> start!230304 e!1493210))

(assert (=> start!230304 e!1493213))

(declare-fun tp_is_empty!10957 () Bool)

(assert (=> start!230304 tp_is_empty!10957))

(declare-fun b!2330573 () Bool)

(declare-fun Unit!40633 () Unit!40630)

(assert (=> b!2330573 (= e!1493211 Unit!40633)))

(declare-fun b!2330574 () Bool)

(declare-fun Unit!40634 () Unit!40630)

(assert (=> b!2330574 (= e!1493214 Unit!40634)))

(assert (=> b!2330574 false))

(declare-fun b!2330575 () Bool)

(assert (=> b!2330575 (= e!1493213 tp_is_empty!10957)))

(declare-fun b!2330576 () Bool)

(declare-fun Unit!40635 () Unit!40630)

(assert (=> b!2330576 (= e!1493214 Unit!40635)))

(declare-fun b!2330577 () Bool)

(declare-fun tp!738510 () Bool)

(declare-fun tp!738508 () Bool)

(assert (=> b!2330577 (= e!1493213 (and tp!738510 tp!738508))))

(declare-fun b!2330578 () Bool)

(assert (=> b!2330578 (= e!1493212 (not (validRegex!2568 (regTwo!14159 r!26197))))))

(assert (= (and start!230304 res!994951) b!2330572))

(assert (= (and b!2330572 res!994954) b!2330567))

(assert (= (and b!2330567 res!994953) b!2330568))

(assert (= (and b!2330568 res!994955) b!2330570))

(assert (= (and b!2330570 c!370235) b!2330574))

(assert (= (and b!2330570 (not c!370235)) b!2330576))

(assert (= (and b!2330570 c!370236) b!2330566))

(assert (= (and b!2330570 (not c!370236)) b!2330573))

(assert (= (and b!2330570 res!994952) b!2330578))

(assert (= (and start!230304 ((_ is ElementMatch!6823) r!26197)) b!2330575))

(assert (= (and start!230304 ((_ is Concat!11445) r!26197)) b!2330577))

(assert (= (and start!230304 ((_ is Star!6823) r!26197)) b!2330569))

(assert (= (and start!230304 ((_ is Union!6823) r!26197)) b!2330571))

(declare-fun m!2760641 () Bool)

(assert (=> b!2330578 m!2760641))

(declare-fun m!2760643 () Bool)

(assert (=> b!2330567 m!2760643))

(assert (=> b!2330567 m!2760643))

(declare-fun m!2760645 () Bool)

(assert (=> b!2330567 m!2760645))

(declare-fun m!2760647 () Bool)

(assert (=> start!230304 m!2760647))

(declare-fun m!2760649 () Bool)

(assert (=> b!2330572 m!2760649))

(declare-fun m!2760651 () Bool)

(assert (=> b!2330570 m!2760651))

(assert (=> b!2330570 m!2760651))

(declare-fun m!2760653 () Bool)

(assert (=> b!2330570 m!2760653))

(declare-fun m!2760655 () Bool)

(assert (=> b!2330570 m!2760655))

(declare-fun m!2760657 () Bool)

(assert (=> b!2330570 m!2760657))

(check-sat (not b!2330569) (not start!230304) (not b!2330578) (not b!2330572) (not b!2330571) tp_is_empty!10957 (not b!2330567) (not b!2330577) (not b!2330570))
(check-sat)
(get-model)

(declare-fun d!689885 () Bool)

(declare-fun nullableFct!469 (Regex!6823) Bool)

(assert (=> d!689885 (= (nullable!1902 r!26197) (nullableFct!469 r!26197))))

(declare-fun bs!459790 () Bool)

(assert (= bs!459790 d!689885))

(declare-fun m!2760661 () Bool)

(assert (=> bs!459790 m!2760661))

(assert (=> b!2330572 d!689885))

(declare-fun b!2330617 () Bool)

(declare-fun e!1493240 () Bool)

(declare-fun e!1493245 () Bool)

(assert (=> b!2330617 (= e!1493240 e!1493245)))

(declare-fun c!370252 () Bool)

(assert (=> b!2330617 (= c!370252 ((_ is Star!6823) r!26197))))

(declare-fun bm!139046 () Bool)

(declare-fun call!139052 () Bool)

(declare-fun call!139051 () Bool)

(assert (=> bm!139046 (= call!139052 call!139051)))

(declare-fun b!2330618 () Bool)

(declare-fun e!1493244 () Bool)

(declare-fun e!1493241 () Bool)

(assert (=> b!2330618 (= e!1493244 e!1493241)))

(declare-fun res!994968 () Bool)

(assert (=> b!2330618 (=> (not res!994968) (not e!1493241))))

(declare-fun call!139053 () Bool)

(assert (=> b!2330618 (= res!994968 call!139053)))

(declare-fun b!2330619 () Bool)

(declare-fun e!1493243 () Bool)

(assert (=> b!2330619 (= e!1493245 e!1493243)))

(declare-fun c!370253 () Bool)

(assert (=> b!2330619 (= c!370253 ((_ is Union!6823) r!26197))))

(declare-fun d!689889 () Bool)

(declare-fun res!994966 () Bool)

(assert (=> d!689889 (=> res!994966 e!1493240)))

(assert (=> d!689889 (= res!994966 ((_ is ElementMatch!6823) r!26197))))

(assert (=> d!689889 (= (validRegex!2568 r!26197) e!1493240)))

(declare-fun bm!139047 () Bool)

(assert (=> bm!139047 (= call!139053 (validRegex!2568 (ite c!370253 (regOne!14159 r!26197) (regOne!14158 r!26197))))))

(declare-fun b!2330620 () Bool)

(declare-fun e!1493239 () Bool)

(assert (=> b!2330620 (= e!1493239 call!139052)))

(declare-fun bm!139048 () Bool)

(assert (=> bm!139048 (= call!139051 (validRegex!2568 (ite c!370252 (reg!7152 r!26197) (ite c!370253 (regTwo!14159 r!26197) (regTwo!14158 r!26197)))))))

(declare-fun b!2330621 () Bool)

(declare-fun e!1493242 () Bool)

(assert (=> b!2330621 (= e!1493242 call!139051)))

(declare-fun b!2330622 () Bool)

(declare-fun res!994969 () Bool)

(assert (=> b!2330622 (=> (not res!994969) (not e!1493239))))

(assert (=> b!2330622 (= res!994969 call!139053)))

(assert (=> b!2330622 (= e!1493243 e!1493239)))

(declare-fun b!2330623 () Bool)

(declare-fun res!994970 () Bool)

(assert (=> b!2330623 (=> res!994970 e!1493244)))

(assert (=> b!2330623 (= res!994970 (not ((_ is Concat!11445) r!26197)))))

(assert (=> b!2330623 (= e!1493243 e!1493244)))

(declare-fun b!2330624 () Bool)

(assert (=> b!2330624 (= e!1493241 call!139052)))

(declare-fun b!2330625 () Bool)

(assert (=> b!2330625 (= e!1493245 e!1493242)))

(declare-fun res!994967 () Bool)

(assert (=> b!2330625 (= res!994967 (not (nullable!1902 (reg!7152 r!26197))))))

(assert (=> b!2330625 (=> (not res!994967) (not e!1493242))))

(assert (= (and d!689889 (not res!994966)) b!2330617))

(assert (= (and b!2330617 c!370252) b!2330625))

(assert (= (and b!2330617 (not c!370252)) b!2330619))

(assert (= (and b!2330625 res!994967) b!2330621))

(assert (= (and b!2330619 c!370253) b!2330622))

(assert (= (and b!2330619 (not c!370253)) b!2330623))

(assert (= (and b!2330622 res!994969) b!2330620))

(assert (= (and b!2330623 (not res!994970)) b!2330618))

(assert (= (and b!2330618 res!994968) b!2330624))

(assert (= (or b!2330620 b!2330624) bm!139046))

(assert (= (or b!2330622 b!2330618) bm!139047))

(assert (= (or b!2330621 bm!139046) bm!139048))

(declare-fun m!2760663 () Bool)

(assert (=> bm!139047 m!2760663))

(declare-fun m!2760665 () Bool)

(assert (=> bm!139048 m!2760665))

(declare-fun m!2760667 () Bool)

(assert (=> b!2330625 m!2760667))

(assert (=> start!230304 d!689889))

(declare-fun d!689891 () Bool)

(assert (=> d!689891 (= (nullable!1902 (derivativeStep!1562 (regOne!14159 r!26197) c!13498)) (nullableFct!469 (derivativeStep!1562 (regOne!14159 r!26197) c!13498)))))

(declare-fun bs!459791 () Bool)

(assert (= bs!459791 d!689891))

(assert (=> bs!459791 m!2760651))

(declare-fun m!2760669 () Bool)

(assert (=> bs!459791 m!2760669))

(assert (=> b!2330570 d!689891))

(declare-fun b!2330684 () Bool)

(declare-fun e!1493283 () Regex!6823)

(assert (=> b!2330684 (= e!1493283 EmptyLang!6823)))

(declare-fun call!139081 () Regex!6823)

(declare-fun bm!139075 () Bool)

(declare-fun c!370280 () Bool)

(assert (=> bm!139075 (= call!139081 (derivativeStep!1562 (ite c!370280 (regOne!14159 (regOne!14159 r!26197)) (regTwo!14158 (regOne!14159 r!26197))) c!13498))))

(declare-fun b!2330685 () Bool)

(declare-fun e!1493284 () Regex!6823)

(declare-fun call!139080 () Regex!6823)

(assert (=> b!2330685 (= e!1493284 (Union!6823 (Concat!11445 call!139080 (regTwo!14158 (regOne!14159 r!26197))) EmptyLang!6823))))

(declare-fun b!2330686 () Bool)

(declare-fun e!1493282 () Regex!6823)

(declare-fun e!1493281 () Regex!6823)

(assert (=> b!2330686 (= e!1493282 e!1493281)))

(declare-fun c!370282 () Bool)

(assert (=> b!2330686 (= c!370282 ((_ is Star!6823) (regOne!14159 r!26197)))))

(declare-fun b!2330687 () Bool)

(declare-fun e!1493280 () Regex!6823)

(assert (=> b!2330687 (= e!1493280 (ite (= c!13498 (c!370237 (regOne!14159 r!26197))) EmptyExpr!6823 EmptyLang!6823))))

(declare-fun bm!139076 () Bool)

(declare-fun call!139082 () Regex!6823)

(assert (=> bm!139076 (= call!139082 (derivativeStep!1562 (ite c!370280 (regTwo!14159 (regOne!14159 r!26197)) (ite c!370282 (reg!7152 (regOne!14159 r!26197)) (regOne!14158 (regOne!14159 r!26197)))) c!13498))))

(declare-fun b!2330688 () Bool)

(declare-fun call!139083 () Regex!6823)

(assert (=> b!2330688 (= e!1493281 (Concat!11445 call!139083 (regOne!14159 r!26197)))))

(declare-fun d!689893 () Bool)

(declare-fun lt!862262 () Regex!6823)

(assert (=> d!689893 (validRegex!2568 lt!862262)))

(assert (=> d!689893 (= lt!862262 e!1493283)))

(declare-fun c!370279 () Bool)

(assert (=> d!689893 (= c!370279 (or ((_ is EmptyExpr!6823) (regOne!14159 r!26197)) ((_ is EmptyLang!6823) (regOne!14159 r!26197))))))

(assert (=> d!689893 (validRegex!2568 (regOne!14159 r!26197))))

(assert (=> d!689893 (= (derivativeStep!1562 (regOne!14159 r!26197) c!13498) lt!862262)))

(declare-fun bm!139077 () Bool)

(assert (=> bm!139077 (= call!139080 call!139083)))

(declare-fun bm!139078 () Bool)

(assert (=> bm!139078 (= call!139083 call!139082)))

(declare-fun b!2330689 () Bool)

(assert (=> b!2330689 (= e!1493284 (Union!6823 (Concat!11445 call!139080 (regTwo!14158 (regOne!14159 r!26197))) call!139081))))

(declare-fun b!2330690 () Bool)

(assert (=> b!2330690 (= e!1493282 (Union!6823 call!139081 call!139082))))

(declare-fun b!2330691 () Bool)

(declare-fun c!370278 () Bool)

(assert (=> b!2330691 (= c!370278 (nullable!1902 (regOne!14158 (regOne!14159 r!26197))))))

(assert (=> b!2330691 (= e!1493281 e!1493284)))

(declare-fun b!2330692 () Bool)

(assert (=> b!2330692 (= c!370280 ((_ is Union!6823) (regOne!14159 r!26197)))))

(assert (=> b!2330692 (= e!1493280 e!1493282)))

(declare-fun b!2330693 () Bool)

(assert (=> b!2330693 (= e!1493283 e!1493280)))

(declare-fun c!370281 () Bool)

(assert (=> b!2330693 (= c!370281 ((_ is ElementMatch!6823) (regOne!14159 r!26197)))))

(assert (= (and d!689893 c!370279) b!2330684))

(assert (= (and d!689893 (not c!370279)) b!2330693))

(assert (= (and b!2330693 c!370281) b!2330687))

(assert (= (and b!2330693 (not c!370281)) b!2330692))

(assert (= (and b!2330692 c!370280) b!2330690))

(assert (= (and b!2330692 (not c!370280)) b!2330686))

(assert (= (and b!2330686 c!370282) b!2330688))

(assert (= (and b!2330686 (not c!370282)) b!2330691))

(assert (= (and b!2330691 c!370278) b!2330689))

(assert (= (and b!2330691 (not c!370278)) b!2330685))

(assert (= (or b!2330689 b!2330685) bm!139077))

(assert (= (or b!2330688 bm!139077) bm!139078))

(assert (= (or b!2330690 bm!139078) bm!139076))

(assert (= (or b!2330690 b!2330689) bm!139075))

(declare-fun m!2760697 () Bool)

(assert (=> bm!139075 m!2760697))

(declare-fun m!2760699 () Bool)

(assert (=> bm!139076 m!2760699))

(declare-fun m!2760701 () Bool)

(assert (=> d!689893 m!2760701))

(declare-fun m!2760703 () Bool)

(assert (=> d!689893 m!2760703))

(declare-fun m!2760705 () Bool)

(assert (=> b!2330691 m!2760705))

(assert (=> b!2330570 d!689893))

(declare-fun d!689907 () Bool)

(assert (=> d!689907 (= (nullable!1902 (regTwo!14159 r!26197)) (nullableFct!469 (regTwo!14159 r!26197)))))

(declare-fun bs!459796 () Bool)

(assert (= bs!459796 d!689907))

(declare-fun m!2760707 () Bool)

(assert (=> bs!459796 m!2760707))

(assert (=> b!2330570 d!689907))

(declare-fun d!689909 () Bool)

(assert (=> d!689909 (= (nullable!1902 (regOne!14159 r!26197)) (nullableFct!469 (regOne!14159 r!26197)))))

(declare-fun bs!459797 () Bool)

(assert (= bs!459797 d!689909))

(declare-fun m!2760709 () Bool)

(assert (=> bs!459797 m!2760709))

(assert (=> b!2330570 d!689909))

(declare-fun b!2330703 () Bool)

(declare-fun e!1493293 () Bool)

(declare-fun e!1493298 () Bool)

(assert (=> b!2330703 (= e!1493293 e!1493298)))

(declare-fun c!370285 () Bool)

(assert (=> b!2330703 (= c!370285 ((_ is Star!6823) (regTwo!14159 r!26197)))))

(declare-fun bm!139082 () Bool)

(declare-fun call!139088 () Bool)

(declare-fun call!139087 () Bool)

(assert (=> bm!139082 (= call!139088 call!139087)))

(declare-fun b!2330704 () Bool)

(declare-fun e!1493297 () Bool)

(declare-fun e!1493294 () Bool)

(assert (=> b!2330704 (= e!1493297 e!1493294)))

(declare-fun res!994988 () Bool)

(assert (=> b!2330704 (=> (not res!994988) (not e!1493294))))

(declare-fun call!139089 () Bool)

(assert (=> b!2330704 (= res!994988 call!139089)))

(declare-fun b!2330705 () Bool)

(declare-fun e!1493296 () Bool)

(assert (=> b!2330705 (= e!1493298 e!1493296)))

(declare-fun c!370286 () Bool)

(assert (=> b!2330705 (= c!370286 ((_ is Union!6823) (regTwo!14159 r!26197)))))

(declare-fun d!689911 () Bool)

(declare-fun res!994986 () Bool)

(assert (=> d!689911 (=> res!994986 e!1493293)))

(assert (=> d!689911 (= res!994986 ((_ is ElementMatch!6823) (regTwo!14159 r!26197)))))

(assert (=> d!689911 (= (validRegex!2568 (regTwo!14159 r!26197)) e!1493293)))

(declare-fun bm!139083 () Bool)

(assert (=> bm!139083 (= call!139089 (validRegex!2568 (ite c!370286 (regOne!14159 (regTwo!14159 r!26197)) (regOne!14158 (regTwo!14159 r!26197)))))))

(declare-fun b!2330706 () Bool)

(declare-fun e!1493292 () Bool)

(assert (=> b!2330706 (= e!1493292 call!139088)))

(declare-fun bm!139084 () Bool)

(assert (=> bm!139084 (= call!139087 (validRegex!2568 (ite c!370285 (reg!7152 (regTwo!14159 r!26197)) (ite c!370286 (regTwo!14159 (regTwo!14159 r!26197)) (regTwo!14158 (regTwo!14159 r!26197))))))))

(declare-fun b!2330707 () Bool)

(declare-fun e!1493295 () Bool)

(assert (=> b!2330707 (= e!1493295 call!139087)))

(declare-fun b!2330708 () Bool)

(declare-fun res!994989 () Bool)

(assert (=> b!2330708 (=> (not res!994989) (not e!1493292))))

(assert (=> b!2330708 (= res!994989 call!139089)))

(assert (=> b!2330708 (= e!1493296 e!1493292)))

(declare-fun b!2330709 () Bool)

(declare-fun res!994990 () Bool)

(assert (=> b!2330709 (=> res!994990 e!1493297)))

(assert (=> b!2330709 (= res!994990 (not ((_ is Concat!11445) (regTwo!14159 r!26197))))))

(assert (=> b!2330709 (= e!1493296 e!1493297)))

(declare-fun b!2330710 () Bool)

(assert (=> b!2330710 (= e!1493294 call!139088)))

(declare-fun b!2330711 () Bool)

(assert (=> b!2330711 (= e!1493298 e!1493295)))

(declare-fun res!994987 () Bool)

(assert (=> b!2330711 (= res!994987 (not (nullable!1902 (reg!7152 (regTwo!14159 r!26197)))))))

(assert (=> b!2330711 (=> (not res!994987) (not e!1493295))))

(assert (= (and d!689911 (not res!994986)) b!2330703))

(assert (= (and b!2330703 c!370285) b!2330711))

(assert (= (and b!2330703 (not c!370285)) b!2330705))

(assert (= (and b!2330711 res!994987) b!2330707))

(assert (= (and b!2330705 c!370286) b!2330708))

(assert (= (and b!2330705 (not c!370286)) b!2330709))

(assert (= (and b!2330708 res!994989) b!2330706))

(assert (= (and b!2330709 (not res!994990)) b!2330704))

(assert (= (and b!2330704 res!994988) b!2330710))

(assert (= (or b!2330706 b!2330710) bm!139082))

(assert (= (or b!2330708 b!2330704) bm!139083))

(assert (= (or b!2330707 bm!139082) bm!139084))

(declare-fun m!2760717 () Bool)

(assert (=> bm!139083 m!2760717))

(declare-fun m!2760719 () Bool)

(assert (=> bm!139084 m!2760719))

(declare-fun m!2760721 () Bool)

(assert (=> b!2330711 m!2760721))

(assert (=> b!2330578 d!689911))

(declare-fun d!689915 () Bool)

(assert (=> d!689915 (= (nullable!1902 (derivativeStep!1562 r!26197 c!13498)) (nullableFct!469 (derivativeStep!1562 r!26197 c!13498)))))

(declare-fun bs!459798 () Bool)

(assert (= bs!459798 d!689915))

(assert (=> bs!459798 m!2760643))

(declare-fun m!2760723 () Bool)

(assert (=> bs!459798 m!2760723))

(assert (=> b!2330567 d!689915))

(declare-fun b!2330721 () Bool)

(declare-fun e!1493309 () Regex!6823)

(assert (=> b!2330721 (= e!1493309 EmptyLang!6823)))

(declare-fun bm!139088 () Bool)

(declare-fun call!139094 () Regex!6823)

(declare-fun c!370291 () Bool)

(assert (=> bm!139088 (= call!139094 (derivativeStep!1562 (ite c!370291 (regOne!14159 r!26197) (regTwo!14158 r!26197)) c!13498))))

(declare-fun b!2330722 () Bool)

(declare-fun e!1493310 () Regex!6823)

(declare-fun call!139093 () Regex!6823)

(assert (=> b!2330722 (= e!1493310 (Union!6823 (Concat!11445 call!139093 (regTwo!14158 r!26197)) EmptyLang!6823))))

(declare-fun b!2330723 () Bool)

(declare-fun e!1493308 () Regex!6823)

(declare-fun e!1493307 () Regex!6823)

(assert (=> b!2330723 (= e!1493308 e!1493307)))

(declare-fun c!370293 () Bool)

(assert (=> b!2330723 (= c!370293 ((_ is Star!6823) r!26197))))

(declare-fun b!2330724 () Bool)

(declare-fun e!1493306 () Regex!6823)

(assert (=> b!2330724 (= e!1493306 (ite (= c!13498 (c!370237 r!26197)) EmptyExpr!6823 EmptyLang!6823))))

(declare-fun call!139095 () Regex!6823)

(declare-fun bm!139089 () Bool)

(assert (=> bm!139089 (= call!139095 (derivativeStep!1562 (ite c!370291 (regTwo!14159 r!26197) (ite c!370293 (reg!7152 r!26197) (regOne!14158 r!26197))) c!13498))))

(declare-fun b!2330725 () Bool)

(declare-fun call!139096 () Regex!6823)

(assert (=> b!2330725 (= e!1493307 (Concat!11445 call!139096 r!26197))))

(declare-fun d!689917 () Bool)

(declare-fun lt!862263 () Regex!6823)

(assert (=> d!689917 (validRegex!2568 lt!862263)))

(assert (=> d!689917 (= lt!862263 e!1493309)))

(declare-fun c!370290 () Bool)

(assert (=> d!689917 (= c!370290 (or ((_ is EmptyExpr!6823) r!26197) ((_ is EmptyLang!6823) r!26197)))))

(assert (=> d!689917 (validRegex!2568 r!26197)))

(assert (=> d!689917 (= (derivativeStep!1562 r!26197 c!13498) lt!862263)))

(declare-fun bm!139090 () Bool)

(assert (=> bm!139090 (= call!139093 call!139096)))

(declare-fun bm!139091 () Bool)

(assert (=> bm!139091 (= call!139096 call!139095)))

(declare-fun b!2330726 () Bool)

(assert (=> b!2330726 (= e!1493310 (Union!6823 (Concat!11445 call!139093 (regTwo!14158 r!26197)) call!139094))))

(declare-fun b!2330727 () Bool)

(assert (=> b!2330727 (= e!1493308 (Union!6823 call!139094 call!139095))))

(declare-fun b!2330728 () Bool)

(declare-fun c!370289 () Bool)

(assert (=> b!2330728 (= c!370289 (nullable!1902 (regOne!14158 r!26197)))))

(assert (=> b!2330728 (= e!1493307 e!1493310)))

(declare-fun b!2330729 () Bool)

(assert (=> b!2330729 (= c!370291 ((_ is Union!6823) r!26197))))

(assert (=> b!2330729 (= e!1493306 e!1493308)))

(declare-fun b!2330730 () Bool)

(assert (=> b!2330730 (= e!1493309 e!1493306)))

(declare-fun c!370292 () Bool)

(assert (=> b!2330730 (= c!370292 ((_ is ElementMatch!6823) r!26197))))

(assert (= (and d!689917 c!370290) b!2330721))

(assert (= (and d!689917 (not c!370290)) b!2330730))

(assert (= (and b!2330730 c!370292) b!2330724))

(assert (= (and b!2330730 (not c!370292)) b!2330729))

(assert (= (and b!2330729 c!370291) b!2330727))

(assert (= (and b!2330729 (not c!370291)) b!2330723))

(assert (= (and b!2330723 c!370293) b!2330725))

(assert (= (and b!2330723 (not c!370293)) b!2330728))

(assert (= (and b!2330728 c!370289) b!2330726))

(assert (= (and b!2330728 (not c!370289)) b!2330722))

(assert (= (or b!2330726 b!2330722) bm!139090))

(assert (= (or b!2330725 bm!139090) bm!139091))

(assert (= (or b!2330727 bm!139091) bm!139089))

(assert (= (or b!2330727 b!2330726) bm!139088))

(declare-fun m!2760731 () Bool)

(assert (=> bm!139088 m!2760731))

(declare-fun m!2760733 () Bool)

(assert (=> bm!139089 m!2760733))

(declare-fun m!2760735 () Bool)

(assert (=> d!689917 m!2760735))

(assert (=> d!689917 m!2760647))

(declare-fun m!2760737 () Bool)

(assert (=> b!2330728 m!2760737))

(assert (=> b!2330567 d!689917))

(declare-fun b!2330766 () Bool)

(declare-fun e!1493318 () Bool)

(declare-fun tp!738547 () Bool)

(declare-fun tp!738550 () Bool)

(assert (=> b!2330766 (= e!1493318 (and tp!738547 tp!738550))))

(declare-fun b!2330765 () Bool)

(declare-fun tp!738551 () Bool)

(assert (=> b!2330765 (= e!1493318 tp!738551)))

(assert (=> b!2330577 (= tp!738510 e!1493318)))

(declare-fun b!2330764 () Bool)

(declare-fun tp!738548 () Bool)

(declare-fun tp!738549 () Bool)

(assert (=> b!2330764 (= e!1493318 (and tp!738548 tp!738549))))

(declare-fun b!2330763 () Bool)

(assert (=> b!2330763 (= e!1493318 tp_is_empty!10957)))

(assert (= (and b!2330577 ((_ is ElementMatch!6823) (regOne!14158 r!26197))) b!2330763))

(assert (= (and b!2330577 ((_ is Concat!11445) (regOne!14158 r!26197))) b!2330764))

(assert (= (and b!2330577 ((_ is Star!6823) (regOne!14158 r!26197))) b!2330765))

(assert (= (and b!2330577 ((_ is Union!6823) (regOne!14158 r!26197))) b!2330766))

(declare-fun b!2330778 () Bool)

(declare-fun e!1493321 () Bool)

(declare-fun tp!738562 () Bool)

(declare-fun tp!738565 () Bool)

(assert (=> b!2330778 (= e!1493321 (and tp!738562 tp!738565))))

(declare-fun b!2330777 () Bool)

(declare-fun tp!738566 () Bool)

(assert (=> b!2330777 (= e!1493321 tp!738566)))

(assert (=> b!2330577 (= tp!738508 e!1493321)))

(declare-fun b!2330776 () Bool)

(declare-fun tp!738563 () Bool)

(declare-fun tp!738564 () Bool)

(assert (=> b!2330776 (= e!1493321 (and tp!738563 tp!738564))))

(declare-fun b!2330775 () Bool)

(assert (=> b!2330775 (= e!1493321 tp_is_empty!10957)))

(assert (= (and b!2330577 ((_ is ElementMatch!6823) (regTwo!14158 r!26197))) b!2330775))

(assert (= (and b!2330577 ((_ is Concat!11445) (regTwo!14158 r!26197))) b!2330776))

(assert (= (and b!2330577 ((_ is Star!6823) (regTwo!14158 r!26197))) b!2330777))

(assert (= (and b!2330577 ((_ is Union!6823) (regTwo!14158 r!26197))) b!2330778))

(declare-fun b!2330782 () Bool)

(declare-fun e!1493322 () Bool)

(declare-fun tp!738567 () Bool)

(declare-fun tp!738570 () Bool)

(assert (=> b!2330782 (= e!1493322 (and tp!738567 tp!738570))))

(declare-fun b!2330781 () Bool)

(declare-fun tp!738571 () Bool)

(assert (=> b!2330781 (= e!1493322 tp!738571)))

(assert (=> b!2330571 (= tp!738511 e!1493322)))

(declare-fun b!2330780 () Bool)

(declare-fun tp!738568 () Bool)

(declare-fun tp!738569 () Bool)

(assert (=> b!2330780 (= e!1493322 (and tp!738568 tp!738569))))

(declare-fun b!2330779 () Bool)

(assert (=> b!2330779 (= e!1493322 tp_is_empty!10957)))

(assert (= (and b!2330571 ((_ is ElementMatch!6823) (regOne!14159 r!26197))) b!2330779))

(assert (= (and b!2330571 ((_ is Concat!11445) (regOne!14159 r!26197))) b!2330780))

(assert (= (and b!2330571 ((_ is Star!6823) (regOne!14159 r!26197))) b!2330781))

(assert (= (and b!2330571 ((_ is Union!6823) (regOne!14159 r!26197))) b!2330782))

(declare-fun b!2330786 () Bool)

(declare-fun e!1493323 () Bool)

(declare-fun tp!738572 () Bool)

(declare-fun tp!738575 () Bool)

(assert (=> b!2330786 (= e!1493323 (and tp!738572 tp!738575))))

(declare-fun b!2330785 () Bool)

(declare-fun tp!738576 () Bool)

(assert (=> b!2330785 (= e!1493323 tp!738576)))

(assert (=> b!2330571 (= tp!738509 e!1493323)))

(declare-fun b!2330784 () Bool)

(declare-fun tp!738573 () Bool)

(declare-fun tp!738574 () Bool)

(assert (=> b!2330784 (= e!1493323 (and tp!738573 tp!738574))))

(declare-fun b!2330783 () Bool)

(assert (=> b!2330783 (= e!1493323 tp_is_empty!10957)))

(assert (= (and b!2330571 ((_ is ElementMatch!6823) (regTwo!14159 r!26197))) b!2330783))

(assert (= (and b!2330571 ((_ is Concat!11445) (regTwo!14159 r!26197))) b!2330784))

(assert (= (and b!2330571 ((_ is Star!6823) (regTwo!14159 r!26197))) b!2330785))

(assert (= (and b!2330571 ((_ is Union!6823) (regTwo!14159 r!26197))) b!2330786))

(declare-fun b!2330790 () Bool)

(declare-fun e!1493324 () Bool)

(declare-fun tp!738577 () Bool)

(declare-fun tp!738580 () Bool)

(assert (=> b!2330790 (= e!1493324 (and tp!738577 tp!738580))))

(declare-fun b!2330789 () Bool)

(declare-fun tp!738581 () Bool)

(assert (=> b!2330789 (= e!1493324 tp!738581)))

(assert (=> b!2330569 (= tp!738507 e!1493324)))

(declare-fun b!2330788 () Bool)

(declare-fun tp!738578 () Bool)

(declare-fun tp!738579 () Bool)

(assert (=> b!2330788 (= e!1493324 (and tp!738578 tp!738579))))

(declare-fun b!2330787 () Bool)

(assert (=> b!2330787 (= e!1493324 tp_is_empty!10957)))

(assert (= (and b!2330569 ((_ is ElementMatch!6823) (reg!7152 r!26197))) b!2330787))

(assert (= (and b!2330569 ((_ is Concat!11445) (reg!7152 r!26197))) b!2330788))

(assert (= (and b!2330569 ((_ is Star!6823) (reg!7152 r!26197))) b!2330789))

(assert (= (and b!2330569 ((_ is Union!6823) (reg!7152 r!26197))) b!2330790))

(check-sat (not d!689907) (not b!2330765) (not b!2330764) (not b!2330766) (not b!2330784) (not b!2330785) (not b!2330691) (not b!2330625) tp_is_empty!10957 (not bm!139047) (not b!2330789) (not bm!139048) (not bm!139088) (not b!2330776) (not b!2330780) (not bm!139089) (not d!689893) (not b!2330781) (not d!689909) (not b!2330777) (not b!2330790) (not bm!139075) (not b!2330786) (not b!2330728) (not b!2330788) (not d!689915) (not b!2330778) (not d!689917) (not bm!139076) (not d!689885) (not b!2330711) (not d!689891) (not bm!139084) (not bm!139083) (not b!2330782))
(check-sat)
