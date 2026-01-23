; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756650 () Bool)

(assert start!756650)

(declare-fun b!8033015 () Bool)

(declare-fun e!4732246 () Bool)

(declare-fun tp!2404554 () Bool)

(assert (=> b!8033015 (= e!4732246 tp!2404554)))

(declare-fun b!8033016 () Bool)

(declare-fun res!3176566 () Bool)

(declare-fun e!4732247 () Bool)

(assert (=> b!8033016 (=> (not res!3176566) (not e!4732247))))

(declare-datatypes ((C!43774 0))(
  ( (C!43775 (val!32663 Int)) )
))
(declare-datatypes ((Regex!21718 0))(
  ( (ElementMatch!21718 (c!1473637 C!43774)) (Concat!30721 (regOne!43948 Regex!21718) (regTwo!43948 Regex!21718)) (EmptyExpr!21718) (Star!21718 (reg!22047 Regex!21718)) (EmptyLang!21718) (Union!21718 (regOne!43949 Regex!21718) (regTwo!43949 Regex!21718)) )
))
(declare-fun r!13107 () Regex!21718)

(declare-fun nullable!9751 (Regex!21718) Bool)

(assert (=> b!8033016 (= res!3176566 (nullable!9751 (regOne!43948 r!13107)))))

(declare-fun b!8033017 () Bool)

(declare-fun validRegex!12014 (Regex!21718) Bool)

(assert (=> b!8033017 (= e!4732247 (not (validRegex!12014 (regOne!43948 r!13107))))))

(declare-fun b!8033018 () Bool)

(declare-fun res!3176567 () Bool)

(assert (=> b!8033018 (=> (not res!3176567) (not e!4732247))))

(assert (=> b!8033018 (= res!3176567 (and (not (is-EmptyExpr!21718 r!13107)) (not (is-EmptyLang!21718 r!13107)) (not (is-ElementMatch!21718 r!13107)) (not (is-Union!21718 r!13107)) (not (is-Star!21718 r!13107))))))

(declare-fun b!8033019 () Bool)

(declare-fun tp!2404556 () Bool)

(declare-fun tp!2404555 () Bool)

(assert (=> b!8033019 (= e!4732246 (and tp!2404556 tp!2404555))))

(declare-fun b!8033020 () Bool)

(declare-fun tp_is_empty!54431 () Bool)

(assert (=> b!8033020 (= e!4732246 tp_is_empty!54431)))

(declare-fun res!3176568 () Bool)

(assert (=> start!756650 (=> (not res!3176568) (not e!4732247))))

(assert (=> start!756650 (= res!3176568 (validRegex!12014 r!13107))))

(assert (=> start!756650 e!4732247))

(assert (=> start!756650 e!4732246))

(declare-fun b!8033014 () Bool)

(declare-fun tp!2404558 () Bool)

(declare-fun tp!2404557 () Bool)

(assert (=> b!8033014 (= e!4732246 (and tp!2404558 tp!2404557))))

(assert (= (and start!756650 res!3176568) b!8033018))

(assert (= (and b!8033018 res!3176567) b!8033016))

(assert (= (and b!8033016 res!3176566) b!8033017))

(assert (= (and start!756650 (is-ElementMatch!21718 r!13107)) b!8033020))

(assert (= (and start!756650 (is-Concat!30721 r!13107)) b!8033019))

(assert (= (and start!756650 (is-Star!21718 r!13107)) b!8033015))

(assert (= (and start!756650 (is-Union!21718 r!13107)) b!8033014))

(declare-fun m!8392626 () Bool)

(assert (=> b!8033016 m!8392626))

(declare-fun m!8392628 () Bool)

(assert (=> b!8033017 m!8392628))

(declare-fun m!8392630 () Bool)

(assert (=> start!756650 m!8392630))

(push 1)

(assert (not b!8033019))

(assert (not b!8033017))

(assert (not b!8033014))

(assert (not b!8033015))

(assert (not b!8033016))

(assert tp_is_empty!54431)

(assert (not start!756650))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2394796 () Bool)

(declare-fun res!3176592 () Bool)

(declare-fun e!4732269 () Bool)

(assert (=> d!2394796 (=> res!3176592 e!4732269)))

(assert (=> d!2394796 (= res!3176592 (is-ElementMatch!21718 (regOne!43948 r!13107)))))

(assert (=> d!2394796 (= (validRegex!12014 (regOne!43948 r!13107)) e!4732269)))

(declare-fun b!8033060 () Bool)

(declare-fun e!4732273 () Bool)

(declare-fun call!745235 () Bool)

(assert (=> b!8033060 (= e!4732273 call!745235)))

(declare-fun b!8033061 () Bool)

(declare-fun e!4732272 () Bool)

(declare-fun e!4732271 () Bool)

(assert (=> b!8033061 (= e!4732272 e!4732271)))

(declare-fun res!3176591 () Bool)

(assert (=> b!8033061 (= res!3176591 (not (nullable!9751 (reg!22047 (regOne!43948 r!13107)))))))

(assert (=> b!8033061 (=> (not res!3176591) (not e!4732271))))

(declare-fun b!8033062 () Bool)

(declare-fun call!745233 () Bool)

(assert (=> b!8033062 (= e!4732271 call!745233)))

(declare-fun b!8033063 () Bool)

(assert (=> b!8033063 (= e!4732269 e!4732272)))

(declare-fun c!1473643 () Bool)

(assert (=> b!8033063 (= c!1473643 (is-Star!21718 (regOne!43948 r!13107)))))

(declare-fun b!8033064 () Bool)

(declare-fun e!4732270 () Bool)

(assert (=> b!8033064 (= e!4732270 call!745235)))

(declare-fun b!8033065 () Bool)

(declare-fun res!3176589 () Bool)

(declare-fun e!4732274 () Bool)

(assert (=> b!8033065 (=> res!3176589 e!4732274)))

(assert (=> b!8033065 (= res!3176589 (not (is-Concat!30721 (regOne!43948 r!13107))))))

(declare-fun e!4732268 () Bool)

(assert (=> b!8033065 (= e!4732268 e!4732274)))

(declare-fun b!8033066 () Bool)

(assert (=> b!8033066 (= e!4732274 e!4732270)))

(declare-fun res!3176590 () Bool)

(assert (=> b!8033066 (=> (not res!3176590) (not e!4732270))))

(declare-fun call!745234 () Bool)

(assert (=> b!8033066 (= res!3176590 call!745234)))

(declare-fun bm!745228 () Bool)

(assert (=> bm!745228 (= call!745234 call!745233)))

(declare-fun b!8033067 () Bool)

(declare-fun res!3176588 () Bool)

(assert (=> b!8033067 (=> (not res!3176588) (not e!4732273))))

(assert (=> b!8033067 (= res!3176588 call!745234)))

(assert (=> b!8033067 (= e!4732268 e!4732273)))

(declare-fun b!8033068 () Bool)

(assert (=> b!8033068 (= e!4732272 e!4732268)))

(declare-fun c!1473644 () Bool)

(assert (=> b!8033068 (= c!1473644 (is-Union!21718 (regOne!43948 r!13107)))))

(declare-fun bm!745229 () Bool)

(assert (=> bm!745229 (= call!745233 (validRegex!12014 (ite c!1473643 (reg!22047 (regOne!43948 r!13107)) (ite c!1473644 (regOne!43949 (regOne!43948 r!13107)) (regOne!43948 (regOne!43948 r!13107))))))))

(declare-fun bm!745230 () Bool)

(assert (=> bm!745230 (= call!745235 (validRegex!12014 (ite c!1473644 (regTwo!43949 (regOne!43948 r!13107)) (regTwo!43948 (regOne!43948 r!13107)))))))

(assert (= (and d!2394796 (not res!3176592)) b!8033063))

(assert (= (and b!8033063 c!1473643) b!8033061))

(assert (= (and b!8033063 (not c!1473643)) b!8033068))

(assert (= (and b!8033061 res!3176591) b!8033062))

(assert (= (and b!8033068 c!1473644) b!8033067))

(assert (= (and b!8033068 (not c!1473644)) b!8033065))

(assert (= (and b!8033067 res!3176588) b!8033060))

(assert (= (and b!8033065 (not res!3176589)) b!8033066))

(assert (= (and b!8033066 res!3176590) b!8033064))

(assert (= (or b!8033060 b!8033064) bm!745230))

(assert (= (or b!8033067 b!8033066) bm!745228))

(assert (= (or b!8033062 bm!745228) bm!745229))

(declare-fun m!8392640 () Bool)

(assert (=> b!8033061 m!8392640))

(declare-fun m!8392642 () Bool)

(assert (=> bm!745229 m!8392642))

(declare-fun m!8392644 () Bool)

(assert (=> bm!745230 m!8392644))

(assert (=> b!8033017 d!2394796))

(declare-fun d!2394802 () Bool)

(declare-fun res!3176597 () Bool)

(declare-fun e!4732276 () Bool)

(assert (=> d!2394802 (=> res!3176597 e!4732276)))

(assert (=> d!2394802 (= res!3176597 (is-ElementMatch!21718 r!13107))))

(assert (=> d!2394802 (= (validRegex!12014 r!13107) e!4732276)))

(declare-fun b!8033069 () Bool)

(declare-fun e!4732280 () Bool)

(declare-fun call!745238 () Bool)

(assert (=> b!8033069 (= e!4732280 call!745238)))

(declare-fun b!8033070 () Bool)

(declare-fun e!4732279 () Bool)

(declare-fun e!4732278 () Bool)

(assert (=> b!8033070 (= e!4732279 e!4732278)))

(declare-fun res!3176596 () Bool)

(assert (=> b!8033070 (= res!3176596 (not (nullable!9751 (reg!22047 r!13107))))))

(assert (=> b!8033070 (=> (not res!3176596) (not e!4732278))))

(declare-fun b!8033071 () Bool)

(declare-fun call!745236 () Bool)

(assert (=> b!8033071 (= e!4732278 call!745236)))

(declare-fun b!8033072 () Bool)

(assert (=> b!8033072 (= e!4732276 e!4732279)))

(declare-fun c!1473645 () Bool)

(assert (=> b!8033072 (= c!1473645 (is-Star!21718 r!13107))))

(declare-fun b!8033073 () Bool)

(declare-fun e!4732277 () Bool)

(assert (=> b!8033073 (= e!4732277 call!745238)))

(declare-fun b!8033074 () Bool)

(declare-fun res!3176594 () Bool)

(declare-fun e!4732281 () Bool)

(assert (=> b!8033074 (=> res!3176594 e!4732281)))

(assert (=> b!8033074 (= res!3176594 (not (is-Concat!30721 r!13107)))))

(declare-fun e!4732275 () Bool)

(assert (=> b!8033074 (= e!4732275 e!4732281)))

(declare-fun b!8033075 () Bool)

(assert (=> b!8033075 (= e!4732281 e!4732277)))

(declare-fun res!3176595 () Bool)

(assert (=> b!8033075 (=> (not res!3176595) (not e!4732277))))

(declare-fun call!745237 () Bool)

(assert (=> b!8033075 (= res!3176595 call!745237)))

(declare-fun bm!745231 () Bool)

(assert (=> bm!745231 (= call!745237 call!745236)))

(declare-fun b!8033076 () Bool)

(declare-fun res!3176593 () Bool)

(assert (=> b!8033076 (=> (not res!3176593) (not e!4732280))))

(assert (=> b!8033076 (= res!3176593 call!745237)))

(assert (=> b!8033076 (= e!4732275 e!4732280)))

(declare-fun b!8033077 () Bool)

(assert (=> b!8033077 (= e!4732279 e!4732275)))

(declare-fun c!1473646 () Bool)

(assert (=> b!8033077 (= c!1473646 (is-Union!21718 r!13107))))

(declare-fun bm!745232 () Bool)

(assert (=> bm!745232 (= call!745236 (validRegex!12014 (ite c!1473645 (reg!22047 r!13107) (ite c!1473646 (regOne!43949 r!13107) (regOne!43948 r!13107)))))))

(declare-fun bm!745233 () Bool)

(assert (=> bm!745233 (= call!745238 (validRegex!12014 (ite c!1473646 (regTwo!43949 r!13107) (regTwo!43948 r!13107))))))

(assert (= (and d!2394802 (not res!3176597)) b!8033072))

(assert (= (and b!8033072 c!1473645) b!8033070))

(assert (= (and b!8033072 (not c!1473645)) b!8033077))

(assert (= (and b!8033070 res!3176596) b!8033071))

(assert (= (and b!8033077 c!1473646) b!8033076))

(assert (= (and b!8033077 (not c!1473646)) b!8033074))

(assert (= (and b!8033076 res!3176593) b!8033069))

(assert (= (and b!8033074 (not res!3176594)) b!8033075))

(assert (= (and b!8033075 res!3176595) b!8033073))

(assert (= (or b!8033069 b!8033073) bm!745233))

(assert (= (or b!8033076 b!8033075) bm!745231))

(assert (= (or b!8033071 bm!745231) bm!745232))

(declare-fun m!8392646 () Bool)

(assert (=> b!8033070 m!8392646))

(declare-fun m!8392648 () Bool)

(assert (=> bm!745232 m!8392648))

(declare-fun m!8392650 () Bool)

(assert (=> bm!745233 m!8392650))

(assert (=> start!756650 d!2394802))

(declare-fun d!2394804 () Bool)

(declare-fun nullableFct!3855 (Regex!21718) Bool)

(assert (=> d!2394804 (= (nullable!9751 (regOne!43948 r!13107)) (nullableFct!3855 (regOne!43948 r!13107)))))

(declare-fun bs!1971468 () Bool)

(assert (= bs!1971468 d!2394804))

(declare-fun m!8392652 () Bool)

(assert (=> bs!1971468 m!8392652))

(assert (=> b!8033016 d!2394804))

(declare-fun b!8033103 () Bool)

(declare-fun e!4732294 () Bool)

(declare-fun tp!2404587 () Bool)

(declare-fun tp!2404585 () Bool)

(assert (=> b!8033103 (= e!4732294 (and tp!2404587 tp!2404585))))

(declare-fun b!8033105 () Bool)

(declare-fun tp!2404584 () Bool)

(declare-fun tp!2404588 () Bool)

(assert (=> b!8033105 (= e!4732294 (and tp!2404584 tp!2404588))))

(declare-fun b!8033104 () Bool)

(declare-fun tp!2404586 () Bool)

(assert (=> b!8033104 (= e!4732294 tp!2404586)))

(declare-fun b!8033102 () Bool)

(assert (=> b!8033102 (= e!4732294 tp_is_empty!54431)))

(assert (=> b!8033019 (= tp!2404556 e!4732294)))

(assert (= (and b!8033019 (is-ElementMatch!21718 (regOne!43948 r!13107))) b!8033102))

(assert (= (and b!8033019 (is-Concat!30721 (regOne!43948 r!13107))) b!8033103))

(assert (= (and b!8033019 (is-Star!21718 (regOne!43948 r!13107))) b!8033104))

(assert (= (and b!8033019 (is-Union!21718 (regOne!43948 r!13107))) b!8033105))

(declare-fun b!8033111 () Bool)

(declare-fun e!4732299 () Bool)

(declare-fun tp!2404592 () Bool)

(declare-fun tp!2404590 () Bool)

(assert (=> b!8033111 (= e!4732299 (and tp!2404592 tp!2404590))))

(declare-fun b!8033113 () Bool)

(declare-fun tp!2404589 () Bool)

(declare-fun tp!2404593 () Bool)

(assert (=> b!8033113 (= e!4732299 (and tp!2404589 tp!2404593))))

(declare-fun b!8033112 () Bool)

(declare-fun tp!2404591 () Bool)

(assert (=> b!8033112 (= e!4732299 tp!2404591)))

(declare-fun b!8033110 () Bool)

(assert (=> b!8033110 (= e!4732299 tp_is_empty!54431)))

(assert (=> b!8033019 (= tp!2404555 e!4732299)))

(assert (= (and b!8033019 (is-ElementMatch!21718 (regTwo!43948 r!13107))) b!8033110))

(assert (= (and b!8033019 (is-Concat!30721 (regTwo!43948 r!13107))) b!8033111))

(assert (= (and b!8033019 (is-Star!21718 (regTwo!43948 r!13107))) b!8033112))

(assert (= (and b!8033019 (is-Union!21718 (regTwo!43948 r!13107))) b!8033113))

(declare-fun b!8033115 () Bool)

(declare-fun e!4732300 () Bool)

(declare-fun tp!2404597 () Bool)

(declare-fun tp!2404595 () Bool)

(assert (=> b!8033115 (= e!4732300 (and tp!2404597 tp!2404595))))

(declare-fun b!8033117 () Bool)

(declare-fun tp!2404594 () Bool)

(declare-fun tp!2404598 () Bool)

(assert (=> b!8033117 (= e!4732300 (and tp!2404594 tp!2404598))))

(declare-fun b!8033116 () Bool)

(declare-fun tp!2404596 () Bool)

(assert (=> b!8033116 (= e!4732300 tp!2404596)))

(declare-fun b!8033114 () Bool)

(assert (=> b!8033114 (= e!4732300 tp_is_empty!54431)))

(assert (=> b!8033014 (= tp!2404558 e!4732300)))

(assert (= (and b!8033014 (is-ElementMatch!21718 (regOne!43949 r!13107))) b!8033114))

(assert (= (and b!8033014 (is-Concat!30721 (regOne!43949 r!13107))) b!8033115))

(assert (= (and b!8033014 (is-Star!21718 (regOne!43949 r!13107))) b!8033116))

(assert (= (and b!8033014 (is-Union!21718 (regOne!43949 r!13107))) b!8033117))

(declare-fun b!8033119 () Bool)

(declare-fun e!4732301 () Bool)

(declare-fun tp!2404602 () Bool)

(declare-fun tp!2404600 () Bool)

(assert (=> b!8033119 (= e!4732301 (and tp!2404602 tp!2404600))))

(declare-fun b!8033121 () Bool)

(declare-fun tp!2404599 () Bool)

(declare-fun tp!2404603 () Bool)

(assert (=> b!8033121 (= e!4732301 (and tp!2404599 tp!2404603))))

(declare-fun b!8033120 () Bool)

(declare-fun tp!2404601 () Bool)

(assert (=> b!8033120 (= e!4732301 tp!2404601)))

(declare-fun b!8033118 () Bool)

(assert (=> b!8033118 (= e!4732301 tp_is_empty!54431)))

(assert (=> b!8033014 (= tp!2404557 e!4732301)))

(assert (= (and b!8033014 (is-ElementMatch!21718 (regTwo!43949 r!13107))) b!8033118))

(assert (= (and b!8033014 (is-Concat!30721 (regTwo!43949 r!13107))) b!8033119))

(assert (= (and b!8033014 (is-Star!21718 (regTwo!43949 r!13107))) b!8033120))

(assert (= (and b!8033014 (is-Union!21718 (regTwo!43949 r!13107))) b!8033121))

(declare-fun b!8033123 () Bool)

(declare-fun e!4732302 () Bool)

(declare-fun tp!2404607 () Bool)

(declare-fun tp!2404605 () Bool)

(assert (=> b!8033123 (= e!4732302 (and tp!2404607 tp!2404605))))

(declare-fun b!8033125 () Bool)

(declare-fun tp!2404604 () Bool)

(declare-fun tp!2404608 () Bool)

(assert (=> b!8033125 (= e!4732302 (and tp!2404604 tp!2404608))))

(declare-fun b!8033124 () Bool)

(declare-fun tp!2404606 () Bool)

(assert (=> b!8033124 (= e!4732302 tp!2404606)))

(declare-fun b!8033122 () Bool)

(assert (=> b!8033122 (= e!4732302 tp_is_empty!54431)))

(assert (=> b!8033015 (= tp!2404554 e!4732302)))

(assert (= (and b!8033015 (is-ElementMatch!21718 (reg!22047 r!13107))) b!8033122))

(assert (= (and b!8033015 (is-Concat!30721 (reg!22047 r!13107))) b!8033123))

(assert (= (and b!8033015 (is-Star!21718 (reg!22047 r!13107))) b!8033124))

(assert (= (and b!8033015 (is-Union!21718 (reg!22047 r!13107))) b!8033125))

(push 1)

(assert (not bm!745229))

(assert (not b!8033124))

(assert (not b!8033125))

(assert (not b!8033111))

(assert (not b!8033105))

(assert (not b!8033113))

(assert (not b!8033061))

(assert (not b!8033117))

(assert (not b!8033104))

(assert (not b!8033103))

(assert (not b!8033120))

(assert (not b!8033070))

(assert (not bm!745233))

(assert (not b!8033119))

(assert (not b!8033116))

(assert (not b!8033115))

(assert (not b!8033121))

(assert (not b!8033112))

(assert (not d!2394804))

(assert tp_is_empty!54431)

(assert (not b!8033123))

(assert (not bm!745232))

(assert (not bm!745230))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

