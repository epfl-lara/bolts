; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!668274 () Bool)

(assert start!668274)

(declare-fun bs!1858673 () Bool)

(declare-fun b!6966548 () Bool)

(assert (= bs!1858673 (and b!6966548 start!668274)))

(declare-fun lambda!397530 () Int)

(declare-fun lambda!397529 () Int)

(assert (=> bs!1858673 (not (= lambda!397530 lambda!397529))))

(assert (=> b!6966548 true))

(declare-fun b!6966542 () Bool)

(declare-fun res!2842250 () Bool)

(declare-fun e!4188172 () Bool)

(assert (=> b!6966542 (=> res!2842250 e!4188172)))

(declare-datatypes ((C!34508 0))(
  ( (C!34509 (val!26956 Int)) )
))
(declare-datatypes ((Regex!17119 0))(
  ( (ElementMatch!17119 (c!1291625 C!34508)) (Concat!25964 (regOne!34750 Regex!17119) (regTwo!34750 Regex!17119)) (EmptyExpr!17119) (Star!17119 (reg!17448 Regex!17119)) (EmptyLang!17119) (Union!17119 (regOne!34751 Regex!17119) (regTwo!34751 Regex!17119)) )
))
(declare-datatypes ((List!66919 0))(
  ( (Nil!66795) (Cons!66795 (h!73243 Regex!17119) (t!380662 List!66919)) )
))
(declare-fun l!9142 () List!66919)

(declare-fun isEmpty!38999 (List!66919) Bool)

(assert (=> b!6966542 (= res!2842250 (isEmpty!38999 l!9142))))

(declare-fun b!6966543 () Bool)

(declare-fun e!4188175 () Bool)

(declare-fun tp_is_empty!43463 () Bool)

(assert (=> b!6966543 (= e!4188175 tp_is_empty!43463)))

(declare-fun b!6966544 () Bool)

(declare-fun e!4188171 () Bool)

(declare-fun tp!1921422 () Bool)

(assert (=> b!6966544 (= e!4188171 (and tp_is_empty!43463 tp!1921422))))

(declare-fun b!6966545 () Bool)

(declare-fun res!2842248 () Bool)

(declare-fun e!4188174 () Bool)

(assert (=> b!6966545 (=> (not res!2842248) (not e!4188174))))

(declare-fun r!13765 () Regex!17119)

(declare-fun generalisedUnion!2594 (List!66919) Regex!17119)

(assert (=> b!6966545 (= res!2842248 (= r!13765 (generalisedUnion!2594 l!9142)))))

(declare-fun b!6966546 () Bool)

(declare-fun res!2842247 () Bool)

(declare-fun e!4188173 () Bool)

(assert (=> b!6966546 (=> res!2842247 e!4188173)))

(declare-fun lt!2479422 () List!66919)

(assert (=> b!6966546 (= res!2842247 (not (= (generalisedUnion!2594 lt!2479422) EmptyLang!17119)))))

(declare-fun b!6966547 () Bool)

(assert (=> b!6966547 (= e!4188174 (not e!4188172))))

(declare-fun res!2842251 () Bool)

(assert (=> b!6966547 (=> res!2842251 e!4188172)))

(get-info :version)

(assert (=> b!6966547 (= res!2842251 (not ((_ is Union!17119) r!13765)))))

(declare-fun lt!2479421 () Bool)

(declare-datatypes ((List!66920 0))(
  ( (Nil!66796) (Cons!66796 (h!73244 C!34508) (t!380663 List!66920)) )
))
(declare-fun s!9351 () List!66920)

(declare-fun matchRSpec!4136 (Regex!17119 List!66920) Bool)

(assert (=> b!6966547 (= lt!2479421 (matchRSpec!4136 r!13765 s!9351))))

(declare-fun matchR!9221 (Regex!17119 List!66920) Bool)

(assert (=> b!6966547 (= lt!2479421 (matchR!9221 r!13765 s!9351))))

(declare-datatypes ((Unit!160890 0))(
  ( (Unit!160891) )
))
(declare-fun lt!2479423 () Unit!160890)

(declare-fun mainMatchTheorem!4130 (Regex!17119 List!66920) Unit!160890)

(assert (=> b!6966547 (= lt!2479423 (mainMatchTheorem!4130 r!13765 s!9351))))

(declare-fun res!2842252 () Bool)

(assert (=> start!668274 (=> (not res!2842252) (not e!4188174))))

(declare-fun forall!15990 (List!66919 Int) Bool)

(assert (=> start!668274 (= res!2842252 (forall!15990 l!9142 lambda!397529))))

(assert (=> start!668274 e!4188174))

(declare-fun e!4188176 () Bool)

(assert (=> start!668274 e!4188176))

(assert (=> start!668274 e!4188175))

(assert (=> start!668274 e!4188171))

(declare-fun exists!2865 (List!66919 Int) Bool)

(assert (=> b!6966548 (= e!4188173 (= lt!2479421 (exists!2865 l!9142 lambda!397530)))))

(declare-fun b!6966549 () Bool)

(assert (=> b!6966549 (= e!4188172 e!4188173)))

(declare-fun res!2842249 () Bool)

(assert (=> b!6966549 (=> res!2842249 e!4188173)))

(assert (=> b!6966549 (= res!2842249 (not (isEmpty!38999 lt!2479422)))))

(declare-fun tail!13079 (List!66919) List!66919)

(assert (=> b!6966549 (= lt!2479422 (tail!13079 l!9142))))

(declare-fun b!6966550 () Bool)

(declare-fun tp!1921418 () Bool)

(declare-fun tp!1921417 () Bool)

(assert (=> b!6966550 (= e!4188176 (and tp!1921418 tp!1921417))))

(declare-fun b!6966551 () Bool)

(declare-fun tp!1921420 () Bool)

(assert (=> b!6966551 (= e!4188175 tp!1921420)))

(declare-fun b!6966552 () Bool)

(declare-fun tp!1921423 () Bool)

(declare-fun tp!1921421 () Bool)

(assert (=> b!6966552 (= e!4188175 (and tp!1921423 tp!1921421))))

(declare-fun b!6966553 () Bool)

(declare-fun tp!1921419 () Bool)

(declare-fun tp!1921416 () Bool)

(assert (=> b!6966553 (= e!4188175 (and tp!1921419 tp!1921416))))

(assert (= (and start!668274 res!2842252) b!6966545))

(assert (= (and b!6966545 res!2842248) b!6966547))

(assert (= (and b!6966547 (not res!2842251)) b!6966542))

(assert (= (and b!6966542 (not res!2842250)) b!6966549))

(assert (= (and b!6966549 (not res!2842249)) b!6966546))

(assert (= (and b!6966546 (not res!2842247)) b!6966548))

(assert (= (and start!668274 ((_ is Cons!66795) l!9142)) b!6966550))

(assert (= (and start!668274 ((_ is ElementMatch!17119) r!13765)) b!6966543))

(assert (= (and start!668274 ((_ is Concat!25964) r!13765)) b!6966552))

(assert (= (and start!668274 ((_ is Star!17119) r!13765)) b!6966551))

(assert (= (and start!668274 ((_ is Union!17119) r!13765)) b!6966553))

(assert (= (and start!668274 ((_ is Cons!66796) s!9351)) b!6966544))

(declare-fun m!7658188 () Bool)

(assert (=> b!6966542 m!7658188))

(declare-fun m!7658190 () Bool)

(assert (=> b!6966548 m!7658190))

(declare-fun m!7658192 () Bool)

(assert (=> b!6966545 m!7658192))

(declare-fun m!7658194 () Bool)

(assert (=> b!6966546 m!7658194))

(declare-fun m!7658196 () Bool)

(assert (=> start!668274 m!7658196))

(declare-fun m!7658198 () Bool)

(assert (=> b!6966549 m!7658198))

(declare-fun m!7658200 () Bool)

(assert (=> b!6966549 m!7658200))

(declare-fun m!7658202 () Bool)

(assert (=> b!6966547 m!7658202))

(declare-fun m!7658204 () Bool)

(assert (=> b!6966547 m!7658204))

(declare-fun m!7658206 () Bool)

(assert (=> b!6966547 m!7658206))

(check-sat (not b!6966551) (not b!6966549) (not b!6966544) tp_is_empty!43463 (not b!6966546) (not start!668274) (not b!6966553) (not b!6966548) (not b!6966547) (not b!6966542) (not b!6966545) (not b!6966550) (not b!6966552))
(check-sat)
(get-model)

(declare-fun bs!1858680 () Bool)

(declare-fun d!2170569 () Bool)

(assert (= bs!1858680 (and d!2170569 start!668274)))

(declare-fun lambda!397539 () Int)

(assert (=> bs!1858680 (= lambda!397539 lambda!397529)))

(declare-fun bs!1858681 () Bool)

(assert (= bs!1858681 (and d!2170569 b!6966548)))

(assert (=> bs!1858681 (not (= lambda!397539 lambda!397530))))

(declare-fun b!6966614 () Bool)

(declare-fun e!4188214 () Regex!17119)

(declare-fun e!4188215 () Regex!17119)

(assert (=> b!6966614 (= e!4188214 e!4188215)))

(declare-fun c!1291649 () Bool)

(assert (=> b!6966614 (= c!1291649 ((_ is Cons!66795) lt!2479422))))

(declare-fun b!6966616 () Bool)

(assert (=> b!6966616 (= e!4188214 (h!73243 lt!2479422))))

(declare-fun b!6966617 () Bool)

(declare-fun e!4188216 () Bool)

(declare-fun lt!2479429 () Regex!17119)

(declare-fun isEmptyLang!2059 (Regex!17119) Bool)

(assert (=> b!6966617 (= e!4188216 (isEmptyLang!2059 lt!2479429))))

(declare-fun b!6966618 () Bool)

(declare-fun e!4188217 () Bool)

(assert (=> b!6966618 (= e!4188217 (isEmpty!38999 (t!380662 lt!2479422)))))

(declare-fun b!6966619 () Bool)

(declare-fun e!4188213 () Bool)

(assert (=> b!6966619 (= e!4188216 e!4188213)))

(declare-fun c!1291646 () Bool)

(assert (=> b!6966619 (= c!1291646 (isEmpty!38999 (tail!13079 lt!2479422)))))

(declare-fun b!6966620 () Bool)

(assert (=> b!6966620 (= e!4188215 EmptyLang!17119)))

(declare-fun b!6966621 () Bool)

(declare-fun head!14014 (List!66919) Regex!17119)

(assert (=> b!6966621 (= e!4188213 (= lt!2479429 (head!14014 lt!2479422)))))

(declare-fun e!4188218 () Bool)

(assert (=> d!2170569 e!4188218))

(declare-fun res!2842270 () Bool)

(assert (=> d!2170569 (=> (not res!2842270) (not e!4188218))))

(declare-fun validRegex!8803 (Regex!17119) Bool)

(assert (=> d!2170569 (= res!2842270 (validRegex!8803 lt!2479429))))

(assert (=> d!2170569 (= lt!2479429 e!4188214)))

(declare-fun c!1291647 () Bool)

(assert (=> d!2170569 (= c!1291647 e!4188217)))

(declare-fun res!2842269 () Bool)

(assert (=> d!2170569 (=> (not res!2842269) (not e!4188217))))

(assert (=> d!2170569 (= res!2842269 ((_ is Cons!66795) lt!2479422))))

(assert (=> d!2170569 (forall!15990 lt!2479422 lambda!397539)))

(assert (=> d!2170569 (= (generalisedUnion!2594 lt!2479422) lt!2479429)))

(declare-fun b!6966615 () Bool)

(declare-fun isUnion!1487 (Regex!17119) Bool)

(assert (=> b!6966615 (= e!4188213 (isUnion!1487 lt!2479429))))

(declare-fun b!6966622 () Bool)

(assert (=> b!6966622 (= e!4188218 e!4188216)))

(declare-fun c!1291648 () Bool)

(assert (=> b!6966622 (= c!1291648 (isEmpty!38999 lt!2479422))))

(declare-fun b!6966623 () Bool)

(assert (=> b!6966623 (= e!4188215 (Union!17119 (h!73243 lt!2479422) (generalisedUnion!2594 (t!380662 lt!2479422))))))

(assert (= (and d!2170569 res!2842269) b!6966618))

(assert (= (and d!2170569 c!1291647) b!6966616))

(assert (= (and d!2170569 (not c!1291647)) b!6966614))

(assert (= (and b!6966614 c!1291649) b!6966623))

(assert (= (and b!6966614 (not c!1291649)) b!6966620))

(assert (= (and d!2170569 res!2842270) b!6966622))

(assert (= (and b!6966622 c!1291648) b!6966617))

(assert (= (and b!6966622 (not c!1291648)) b!6966619))

(assert (= (and b!6966619 c!1291646) b!6966621))

(assert (= (and b!6966619 (not c!1291646)) b!6966615))

(declare-fun m!7658232 () Bool)

(assert (=> b!6966621 m!7658232))

(declare-fun m!7658234 () Bool)

(assert (=> b!6966615 m!7658234))

(declare-fun m!7658236 () Bool)

(assert (=> d!2170569 m!7658236))

(declare-fun m!7658238 () Bool)

(assert (=> d!2170569 m!7658238))

(declare-fun m!7658240 () Bool)

(assert (=> b!6966618 m!7658240))

(assert (=> b!6966622 m!7658198))

(declare-fun m!7658242 () Bool)

(assert (=> b!6966619 m!7658242))

(assert (=> b!6966619 m!7658242))

(declare-fun m!7658244 () Bool)

(assert (=> b!6966619 m!7658244))

(declare-fun m!7658246 () Bool)

(assert (=> b!6966617 m!7658246))

(declare-fun m!7658248 () Bool)

(assert (=> b!6966623 m!7658248))

(assert (=> b!6966546 d!2170569))

(declare-fun bs!1858682 () Bool)

(declare-fun d!2170585 () Bool)

(assert (= bs!1858682 (and d!2170585 start!668274)))

(declare-fun lambda!397540 () Int)

(assert (=> bs!1858682 (= lambda!397540 lambda!397529)))

(declare-fun bs!1858683 () Bool)

(assert (= bs!1858683 (and d!2170585 b!6966548)))

(assert (=> bs!1858683 (not (= lambda!397540 lambda!397530))))

(declare-fun bs!1858684 () Bool)

(assert (= bs!1858684 (and d!2170585 d!2170569)))

(assert (=> bs!1858684 (= lambda!397540 lambda!397539)))

(declare-fun b!6966624 () Bool)

(declare-fun e!4188220 () Regex!17119)

(declare-fun e!4188221 () Regex!17119)

(assert (=> b!6966624 (= e!4188220 e!4188221)))

(declare-fun c!1291653 () Bool)

(assert (=> b!6966624 (= c!1291653 ((_ is Cons!66795) l!9142))))

(declare-fun b!6966626 () Bool)

(assert (=> b!6966626 (= e!4188220 (h!73243 l!9142))))

(declare-fun b!6966627 () Bool)

(declare-fun e!4188222 () Bool)

(declare-fun lt!2479430 () Regex!17119)

(assert (=> b!6966627 (= e!4188222 (isEmptyLang!2059 lt!2479430))))

(declare-fun b!6966628 () Bool)

(declare-fun e!4188223 () Bool)

(assert (=> b!6966628 (= e!4188223 (isEmpty!38999 (t!380662 l!9142)))))

(declare-fun b!6966629 () Bool)

(declare-fun e!4188219 () Bool)

(assert (=> b!6966629 (= e!4188222 e!4188219)))

(declare-fun c!1291650 () Bool)

(assert (=> b!6966629 (= c!1291650 (isEmpty!38999 (tail!13079 l!9142)))))

(declare-fun b!6966630 () Bool)

(assert (=> b!6966630 (= e!4188221 EmptyLang!17119)))

(declare-fun b!6966631 () Bool)

(assert (=> b!6966631 (= e!4188219 (= lt!2479430 (head!14014 l!9142)))))

(declare-fun e!4188224 () Bool)

(assert (=> d!2170585 e!4188224))

(declare-fun res!2842272 () Bool)

(assert (=> d!2170585 (=> (not res!2842272) (not e!4188224))))

(assert (=> d!2170585 (= res!2842272 (validRegex!8803 lt!2479430))))

(assert (=> d!2170585 (= lt!2479430 e!4188220)))

(declare-fun c!1291651 () Bool)

(assert (=> d!2170585 (= c!1291651 e!4188223)))

(declare-fun res!2842271 () Bool)

(assert (=> d!2170585 (=> (not res!2842271) (not e!4188223))))

(assert (=> d!2170585 (= res!2842271 ((_ is Cons!66795) l!9142))))

(assert (=> d!2170585 (forall!15990 l!9142 lambda!397540)))

(assert (=> d!2170585 (= (generalisedUnion!2594 l!9142) lt!2479430)))

(declare-fun b!6966625 () Bool)

(assert (=> b!6966625 (= e!4188219 (isUnion!1487 lt!2479430))))

(declare-fun b!6966632 () Bool)

(assert (=> b!6966632 (= e!4188224 e!4188222)))

(declare-fun c!1291652 () Bool)

(assert (=> b!6966632 (= c!1291652 (isEmpty!38999 l!9142))))

(declare-fun b!6966633 () Bool)

(assert (=> b!6966633 (= e!4188221 (Union!17119 (h!73243 l!9142) (generalisedUnion!2594 (t!380662 l!9142))))))

(assert (= (and d!2170585 res!2842271) b!6966628))

(assert (= (and d!2170585 c!1291651) b!6966626))

(assert (= (and d!2170585 (not c!1291651)) b!6966624))

(assert (= (and b!6966624 c!1291653) b!6966633))

(assert (= (and b!6966624 (not c!1291653)) b!6966630))

(assert (= (and d!2170585 res!2842272) b!6966632))

(assert (= (and b!6966632 c!1291652) b!6966627))

(assert (= (and b!6966632 (not c!1291652)) b!6966629))

(assert (= (and b!6966629 c!1291650) b!6966631))

(assert (= (and b!6966629 (not c!1291650)) b!6966625))

(declare-fun m!7658250 () Bool)

(assert (=> b!6966631 m!7658250))

(declare-fun m!7658252 () Bool)

(assert (=> b!6966625 m!7658252))

(declare-fun m!7658254 () Bool)

(assert (=> d!2170585 m!7658254))

(declare-fun m!7658256 () Bool)

(assert (=> d!2170585 m!7658256))

(declare-fun m!7658258 () Bool)

(assert (=> b!6966628 m!7658258))

(assert (=> b!6966632 m!7658188))

(assert (=> b!6966629 m!7658200))

(assert (=> b!6966629 m!7658200))

(declare-fun m!7658260 () Bool)

(assert (=> b!6966629 m!7658260))

(declare-fun m!7658262 () Bool)

(assert (=> b!6966627 m!7658262))

(declare-fun m!7658264 () Bool)

(assert (=> b!6966633 m!7658264))

(assert (=> b!6966545 d!2170585))

(declare-fun d!2170587 () Bool)

(assert (=> d!2170587 (= (isEmpty!38999 l!9142) ((_ is Nil!66795) l!9142))))

(assert (=> b!6966542 d!2170587))

(declare-fun b!6966819 () Bool)

(assert (=> b!6966819 true))

(assert (=> b!6966819 true))

(declare-fun bs!1858692 () Bool)

(declare-fun b!6966809 () Bool)

(assert (= bs!1858692 (and b!6966809 b!6966819)))

(declare-fun lambda!397553 () Int)

(declare-fun lambda!397552 () Int)

(assert (=> bs!1858692 (not (= lambda!397553 lambda!397552))))

(assert (=> b!6966809 true))

(assert (=> b!6966809 true))

(declare-fun e!4188311 () Bool)

(declare-fun call!632406 () Bool)

(assert (=> b!6966809 (= e!4188311 call!632406)))

(declare-fun b!6966810 () Bool)

(declare-fun e!4188313 () Bool)

(assert (=> b!6966810 (= e!4188313 (matchRSpec!4136 (regTwo!34751 r!13765) s!9351))))

(declare-fun bm!632400 () Bool)

(declare-fun call!632405 () Bool)

(declare-fun isEmpty!39001 (List!66920) Bool)

(assert (=> bm!632400 (= call!632405 (isEmpty!39001 s!9351))))

(declare-fun b!6966812 () Bool)

(declare-fun e!4188315 () Bool)

(assert (=> b!6966812 (= e!4188315 e!4188313)))

(declare-fun res!2842336 () Bool)

(assert (=> b!6966812 (= res!2842336 (matchRSpec!4136 (regOne!34751 r!13765) s!9351))))

(assert (=> b!6966812 (=> res!2842336 e!4188313)))

(declare-fun b!6966813 () Bool)

(declare-fun e!4188312 () Bool)

(declare-fun e!4188310 () Bool)

(assert (=> b!6966813 (= e!4188312 e!4188310)))

(declare-fun res!2842334 () Bool)

(assert (=> b!6966813 (= res!2842334 (not ((_ is EmptyLang!17119) r!13765)))))

(assert (=> b!6966813 (=> (not res!2842334) (not e!4188310))))

(declare-fun b!6966814 () Bool)

(declare-fun e!4188309 () Bool)

(assert (=> b!6966814 (= e!4188309 (= s!9351 (Cons!66796 (c!1291625 r!13765) Nil!66796)))))

(declare-fun b!6966815 () Bool)

(declare-fun c!1291690 () Bool)

(assert (=> b!6966815 (= c!1291690 ((_ is ElementMatch!17119) r!13765))))

(assert (=> b!6966815 (= e!4188310 e!4188309)))

(declare-fun b!6966816 () Bool)

(declare-fun c!1291687 () Bool)

(assert (=> b!6966816 (= c!1291687 ((_ is Union!17119) r!13765))))

(assert (=> b!6966816 (= e!4188309 e!4188315)))

(declare-fun b!6966817 () Bool)

(declare-fun res!2842335 () Bool)

(declare-fun e!4188314 () Bool)

(assert (=> b!6966817 (=> res!2842335 e!4188314)))

(assert (=> b!6966817 (= res!2842335 call!632405)))

(assert (=> b!6966817 (= e!4188311 e!4188314)))

(declare-fun b!6966818 () Bool)

(assert (=> b!6966818 (= e!4188312 call!632405)))

(declare-fun c!1291688 () Bool)

(declare-fun bm!632401 () Bool)

(declare-fun Exists!4084 (Int) Bool)

(assert (=> bm!632401 (= call!632406 (Exists!4084 (ite c!1291688 lambda!397552 lambda!397553)))))

(assert (=> b!6966819 (= e!4188314 call!632406)))

(declare-fun d!2170589 () Bool)

(declare-fun c!1291689 () Bool)

(assert (=> d!2170589 (= c!1291689 ((_ is EmptyExpr!17119) r!13765))))

(assert (=> d!2170589 (= (matchRSpec!4136 r!13765 s!9351) e!4188312)))

(declare-fun b!6966811 () Bool)

(assert (=> b!6966811 (= e!4188315 e!4188311)))

(assert (=> b!6966811 (= c!1291688 ((_ is Star!17119) r!13765))))

(assert (= (and d!2170589 c!1291689) b!6966818))

(assert (= (and d!2170589 (not c!1291689)) b!6966813))

(assert (= (and b!6966813 res!2842334) b!6966815))

(assert (= (and b!6966815 c!1291690) b!6966814))

(assert (= (and b!6966815 (not c!1291690)) b!6966816))

(assert (= (and b!6966816 c!1291687) b!6966812))

(assert (= (and b!6966816 (not c!1291687)) b!6966811))

(assert (= (and b!6966812 (not res!2842336)) b!6966810))

(assert (= (and b!6966811 c!1291688) b!6966817))

(assert (= (and b!6966811 (not c!1291688)) b!6966809))

(assert (= (and b!6966817 (not res!2842335)) b!6966819))

(assert (= (or b!6966819 b!6966809) bm!632401))

(assert (= (or b!6966818 b!6966817) bm!632400))

(declare-fun m!7658308 () Bool)

(assert (=> b!6966810 m!7658308))

(declare-fun m!7658310 () Bool)

(assert (=> bm!632400 m!7658310))

(declare-fun m!7658312 () Bool)

(assert (=> b!6966812 m!7658312))

(declare-fun m!7658314 () Bool)

(assert (=> bm!632401 m!7658314))

(assert (=> b!6966547 d!2170589))

(declare-fun d!2170599 () Bool)

(declare-fun e!4188333 () Bool)

(assert (=> d!2170599 e!4188333))

(declare-fun c!1291698 () Bool)

(assert (=> d!2170599 (= c!1291698 ((_ is EmptyExpr!17119) r!13765))))

(declare-fun lt!2479440 () Bool)

(declare-fun e!4188334 () Bool)

(assert (=> d!2170599 (= lt!2479440 e!4188334)))

(declare-fun c!1291699 () Bool)

(assert (=> d!2170599 (= c!1291699 (isEmpty!39001 s!9351))))

(assert (=> d!2170599 (validRegex!8803 r!13765)))

(assert (=> d!2170599 (= (matchR!9221 r!13765 s!9351) lt!2479440)))

(declare-fun b!6966852 () Bool)

(declare-fun e!4188335 () Bool)

(declare-fun head!14015 (List!66920) C!34508)

(assert (=> b!6966852 (= e!4188335 (= (head!14015 s!9351) (c!1291625 r!13765)))))

(declare-fun b!6966853 () Bool)

(declare-fun nullable!6906 (Regex!17119) Bool)

(assert (=> b!6966853 (= e!4188334 (nullable!6906 r!13765))))

(declare-fun b!6966854 () Bool)

(declare-fun res!2842356 () Bool)

(assert (=> b!6966854 (=> (not res!2842356) (not e!4188335))))

(declare-fun tail!13081 (List!66920) List!66920)

(assert (=> b!6966854 (= res!2842356 (isEmpty!39001 (tail!13081 s!9351)))))

(declare-fun b!6966855 () Bool)

(declare-fun e!4188336 () Bool)

(assert (=> b!6966855 (= e!4188336 (not (= (head!14015 s!9351) (c!1291625 r!13765))))))

(declare-fun b!6966856 () Bool)

(declare-fun e!4188330 () Bool)

(declare-fun e!4188331 () Bool)

(assert (=> b!6966856 (= e!4188330 e!4188331)))

(declare-fun res!2842360 () Bool)

(assert (=> b!6966856 (=> (not res!2842360) (not e!4188331))))

(assert (=> b!6966856 (= res!2842360 (not lt!2479440))))

(declare-fun b!6966857 () Bool)

(declare-fun e!4188332 () Bool)

(assert (=> b!6966857 (= e!4188333 e!4188332)))

(declare-fun c!1291697 () Bool)

(assert (=> b!6966857 (= c!1291697 ((_ is EmptyLang!17119) r!13765))))

(declare-fun b!6966858 () Bool)

(assert (=> b!6966858 (= e!4188332 (not lt!2479440))))

(declare-fun b!6966859 () Bool)

(declare-fun res!2842357 () Bool)

(assert (=> b!6966859 (=> res!2842357 e!4188336)))

(assert (=> b!6966859 (= res!2842357 (not (isEmpty!39001 (tail!13081 s!9351))))))

(declare-fun b!6966860 () Bool)

(declare-fun res!2842359 () Bool)

(assert (=> b!6966860 (=> res!2842359 e!4188330)))

(assert (=> b!6966860 (= res!2842359 (not ((_ is ElementMatch!17119) r!13765)))))

(assert (=> b!6966860 (= e!4188332 e!4188330)))

(declare-fun b!6966861 () Bool)

(declare-fun res!2842355 () Bool)

(assert (=> b!6966861 (=> (not res!2842355) (not e!4188335))))

(declare-fun call!632409 () Bool)

(assert (=> b!6966861 (= res!2842355 (not call!632409))))

(declare-fun b!6966862 () Bool)

(assert (=> b!6966862 (= e!4188333 (= lt!2479440 call!632409))))

(declare-fun b!6966863 () Bool)

(assert (=> b!6966863 (= e!4188331 e!4188336)))

(declare-fun res!2842353 () Bool)

(assert (=> b!6966863 (=> res!2842353 e!4188336)))

(assert (=> b!6966863 (= res!2842353 call!632409)))

(declare-fun b!6966864 () Bool)

(declare-fun derivativeStep!5531 (Regex!17119 C!34508) Regex!17119)

(assert (=> b!6966864 (= e!4188334 (matchR!9221 (derivativeStep!5531 r!13765 (head!14015 s!9351)) (tail!13081 s!9351)))))

(declare-fun bm!632404 () Bool)

(assert (=> bm!632404 (= call!632409 (isEmpty!39001 s!9351))))

(declare-fun b!6966865 () Bool)

(declare-fun res!2842354 () Bool)

(assert (=> b!6966865 (=> res!2842354 e!4188330)))

(assert (=> b!6966865 (= res!2842354 e!4188335)))

(declare-fun res!2842358 () Bool)

(assert (=> b!6966865 (=> (not res!2842358) (not e!4188335))))

(assert (=> b!6966865 (= res!2842358 lt!2479440)))

(assert (= (and d!2170599 c!1291699) b!6966853))

(assert (= (and d!2170599 (not c!1291699)) b!6966864))

(assert (= (and d!2170599 c!1291698) b!6966862))

(assert (= (and d!2170599 (not c!1291698)) b!6966857))

(assert (= (and b!6966857 c!1291697) b!6966858))

(assert (= (and b!6966857 (not c!1291697)) b!6966860))

(assert (= (and b!6966860 (not res!2842359)) b!6966865))

(assert (= (and b!6966865 res!2842358) b!6966861))

(assert (= (and b!6966861 res!2842355) b!6966854))

(assert (= (and b!6966854 res!2842356) b!6966852))

(assert (= (and b!6966865 (not res!2842354)) b!6966856))

(assert (= (and b!6966856 res!2842360) b!6966863))

(assert (= (and b!6966863 (not res!2842353)) b!6966859))

(assert (= (and b!6966859 (not res!2842357)) b!6966855))

(assert (= (or b!6966862 b!6966861 b!6966863) bm!632404))

(declare-fun m!7658316 () Bool)

(assert (=> b!6966853 m!7658316))

(assert (=> d!2170599 m!7658310))

(declare-fun m!7658318 () Bool)

(assert (=> d!2170599 m!7658318))

(declare-fun m!7658320 () Bool)

(assert (=> b!6966855 m!7658320))

(assert (=> bm!632404 m!7658310))

(declare-fun m!7658322 () Bool)

(assert (=> b!6966854 m!7658322))

(assert (=> b!6966854 m!7658322))

(declare-fun m!7658324 () Bool)

(assert (=> b!6966854 m!7658324))

(assert (=> b!6966852 m!7658320))

(assert (=> b!6966864 m!7658320))

(assert (=> b!6966864 m!7658320))

(declare-fun m!7658326 () Bool)

(assert (=> b!6966864 m!7658326))

(assert (=> b!6966864 m!7658322))

(assert (=> b!6966864 m!7658326))

(assert (=> b!6966864 m!7658322))

(declare-fun m!7658328 () Bool)

(assert (=> b!6966864 m!7658328))

(assert (=> b!6966859 m!7658322))

(assert (=> b!6966859 m!7658322))

(assert (=> b!6966859 m!7658324))

(assert (=> b!6966547 d!2170599))

(declare-fun d!2170601 () Bool)

(assert (=> d!2170601 (= (matchR!9221 r!13765 s!9351) (matchRSpec!4136 r!13765 s!9351))))

(declare-fun lt!2479443 () Unit!160890)

(declare-fun choose!51899 (Regex!17119 List!66920) Unit!160890)

(assert (=> d!2170601 (= lt!2479443 (choose!51899 r!13765 s!9351))))

(assert (=> d!2170601 (validRegex!8803 r!13765)))

(assert (=> d!2170601 (= (mainMatchTheorem!4130 r!13765 s!9351) lt!2479443)))

(declare-fun bs!1858693 () Bool)

(assert (= bs!1858693 d!2170601))

(assert (=> bs!1858693 m!7658204))

(assert (=> bs!1858693 m!7658202))

(declare-fun m!7658330 () Bool)

(assert (=> bs!1858693 m!7658330))

(assert (=> bs!1858693 m!7658318))

(assert (=> b!6966547 d!2170601))

(declare-fun bs!1858694 () Bool)

(declare-fun d!2170603 () Bool)

(assert (= bs!1858694 (and d!2170603 start!668274)))

(declare-fun lambda!397556 () Int)

(assert (=> bs!1858694 (not (= lambda!397556 lambda!397529))))

(declare-fun bs!1858695 () Bool)

(assert (= bs!1858695 (and d!2170603 b!6966548)))

(assert (=> bs!1858695 (not (= lambda!397556 lambda!397530))))

(declare-fun bs!1858696 () Bool)

(assert (= bs!1858696 (and d!2170603 d!2170569)))

(assert (=> bs!1858696 (not (= lambda!397556 lambda!397539))))

(declare-fun bs!1858697 () Bool)

(assert (= bs!1858697 (and d!2170603 d!2170585)))

(assert (=> bs!1858697 (not (= lambda!397556 lambda!397540))))

(assert (=> d!2170603 true))

(declare-fun order!27771 () Int)

(declare-fun dynLambda!26634 (Int Int) Int)

(assert (=> d!2170603 (< (dynLambda!26634 order!27771 lambda!397530) (dynLambda!26634 order!27771 lambda!397556))))

(assert (=> d!2170603 (= (exists!2865 l!9142 lambda!397530) (not (forall!15990 l!9142 lambda!397556)))))

(declare-fun bs!1858698 () Bool)

(assert (= bs!1858698 d!2170603))

(declare-fun m!7658332 () Bool)

(assert (=> bs!1858698 m!7658332))

(assert (=> b!6966548 d!2170603))

(declare-fun d!2170605 () Bool)

(declare-fun res!2842365 () Bool)

(declare-fun e!4188341 () Bool)

(assert (=> d!2170605 (=> res!2842365 e!4188341)))

(assert (=> d!2170605 (= res!2842365 ((_ is Nil!66795) l!9142))))

(assert (=> d!2170605 (= (forall!15990 l!9142 lambda!397529) e!4188341)))

(declare-fun b!6966872 () Bool)

(declare-fun e!4188342 () Bool)

(assert (=> b!6966872 (= e!4188341 e!4188342)))

(declare-fun res!2842366 () Bool)

(assert (=> b!6966872 (=> (not res!2842366) (not e!4188342))))

(declare-fun dynLambda!26635 (Int Regex!17119) Bool)

(assert (=> b!6966872 (= res!2842366 (dynLambda!26635 lambda!397529 (h!73243 l!9142)))))

(declare-fun b!6966873 () Bool)

(assert (=> b!6966873 (= e!4188342 (forall!15990 (t!380662 l!9142) lambda!397529))))

(assert (= (and d!2170605 (not res!2842365)) b!6966872))

(assert (= (and b!6966872 res!2842366) b!6966873))

(declare-fun b_lambda!260669 () Bool)

(assert (=> (not b_lambda!260669) (not b!6966872)))

(declare-fun m!7658334 () Bool)

(assert (=> b!6966872 m!7658334))

(declare-fun m!7658336 () Bool)

(assert (=> b!6966873 m!7658336))

(assert (=> start!668274 d!2170605))

(declare-fun d!2170607 () Bool)

(assert (=> d!2170607 (= (isEmpty!38999 lt!2479422) ((_ is Nil!66795) lt!2479422))))

(assert (=> b!6966549 d!2170607))

(declare-fun d!2170609 () Bool)

(assert (=> d!2170609 (= (tail!13079 l!9142) (t!380662 l!9142))))

(assert (=> b!6966549 d!2170609))

(declare-fun e!4188345 () Bool)

(assert (=> b!6966551 (= tp!1921420 e!4188345)))

(declare-fun b!6966887 () Bool)

(declare-fun tp!1921487 () Bool)

(declare-fun tp!1921486 () Bool)

(assert (=> b!6966887 (= e!4188345 (and tp!1921487 tp!1921486))))

(declare-fun b!6966885 () Bool)

(declare-fun tp!1921484 () Bool)

(declare-fun tp!1921483 () Bool)

(assert (=> b!6966885 (= e!4188345 (and tp!1921484 tp!1921483))))

(declare-fun b!6966884 () Bool)

(assert (=> b!6966884 (= e!4188345 tp_is_empty!43463)))

(declare-fun b!6966886 () Bool)

(declare-fun tp!1921485 () Bool)

(assert (=> b!6966886 (= e!4188345 tp!1921485)))

(assert (= (and b!6966551 ((_ is ElementMatch!17119) (reg!17448 r!13765))) b!6966884))

(assert (= (and b!6966551 ((_ is Concat!25964) (reg!17448 r!13765))) b!6966885))

(assert (= (and b!6966551 ((_ is Star!17119) (reg!17448 r!13765))) b!6966886))

(assert (= (and b!6966551 ((_ is Union!17119) (reg!17448 r!13765))) b!6966887))

(declare-fun e!4188346 () Bool)

(assert (=> b!6966552 (= tp!1921423 e!4188346)))

(declare-fun b!6966891 () Bool)

(declare-fun tp!1921492 () Bool)

(declare-fun tp!1921491 () Bool)

(assert (=> b!6966891 (= e!4188346 (and tp!1921492 tp!1921491))))

(declare-fun b!6966889 () Bool)

(declare-fun tp!1921489 () Bool)

(declare-fun tp!1921488 () Bool)

(assert (=> b!6966889 (= e!4188346 (and tp!1921489 tp!1921488))))

(declare-fun b!6966888 () Bool)

(assert (=> b!6966888 (= e!4188346 tp_is_empty!43463)))

(declare-fun b!6966890 () Bool)

(declare-fun tp!1921490 () Bool)

(assert (=> b!6966890 (= e!4188346 tp!1921490)))

(assert (= (and b!6966552 ((_ is ElementMatch!17119) (regOne!34750 r!13765))) b!6966888))

(assert (= (and b!6966552 ((_ is Concat!25964) (regOne!34750 r!13765))) b!6966889))

(assert (= (and b!6966552 ((_ is Star!17119) (regOne!34750 r!13765))) b!6966890))

(assert (= (and b!6966552 ((_ is Union!17119) (regOne!34750 r!13765))) b!6966891))

(declare-fun e!4188347 () Bool)

(assert (=> b!6966552 (= tp!1921421 e!4188347)))

(declare-fun b!6966895 () Bool)

(declare-fun tp!1921497 () Bool)

(declare-fun tp!1921496 () Bool)

(assert (=> b!6966895 (= e!4188347 (and tp!1921497 tp!1921496))))

(declare-fun b!6966893 () Bool)

(declare-fun tp!1921494 () Bool)

(declare-fun tp!1921493 () Bool)

(assert (=> b!6966893 (= e!4188347 (and tp!1921494 tp!1921493))))

(declare-fun b!6966892 () Bool)

(assert (=> b!6966892 (= e!4188347 tp_is_empty!43463)))

(declare-fun b!6966894 () Bool)

(declare-fun tp!1921495 () Bool)

(assert (=> b!6966894 (= e!4188347 tp!1921495)))

(assert (= (and b!6966552 ((_ is ElementMatch!17119) (regTwo!34750 r!13765))) b!6966892))

(assert (= (and b!6966552 ((_ is Concat!25964) (regTwo!34750 r!13765))) b!6966893))

(assert (= (and b!6966552 ((_ is Star!17119) (regTwo!34750 r!13765))) b!6966894))

(assert (= (and b!6966552 ((_ is Union!17119) (regTwo!34750 r!13765))) b!6966895))

(declare-fun e!4188348 () Bool)

(assert (=> b!6966553 (= tp!1921419 e!4188348)))

(declare-fun b!6966899 () Bool)

(declare-fun tp!1921502 () Bool)

(declare-fun tp!1921501 () Bool)

(assert (=> b!6966899 (= e!4188348 (and tp!1921502 tp!1921501))))

(declare-fun b!6966897 () Bool)

(declare-fun tp!1921499 () Bool)

(declare-fun tp!1921498 () Bool)

(assert (=> b!6966897 (= e!4188348 (and tp!1921499 tp!1921498))))

(declare-fun b!6966896 () Bool)

(assert (=> b!6966896 (= e!4188348 tp_is_empty!43463)))

(declare-fun b!6966898 () Bool)

(declare-fun tp!1921500 () Bool)

(assert (=> b!6966898 (= e!4188348 tp!1921500)))

(assert (= (and b!6966553 ((_ is ElementMatch!17119) (regOne!34751 r!13765))) b!6966896))

(assert (= (and b!6966553 ((_ is Concat!25964) (regOne!34751 r!13765))) b!6966897))

(assert (= (and b!6966553 ((_ is Star!17119) (regOne!34751 r!13765))) b!6966898))

(assert (= (and b!6966553 ((_ is Union!17119) (regOne!34751 r!13765))) b!6966899))

(declare-fun e!4188349 () Bool)

(assert (=> b!6966553 (= tp!1921416 e!4188349)))

(declare-fun b!6966903 () Bool)

(declare-fun tp!1921507 () Bool)

(declare-fun tp!1921506 () Bool)

(assert (=> b!6966903 (= e!4188349 (and tp!1921507 tp!1921506))))

(declare-fun b!6966901 () Bool)

(declare-fun tp!1921504 () Bool)

(declare-fun tp!1921503 () Bool)

(assert (=> b!6966901 (= e!4188349 (and tp!1921504 tp!1921503))))

(declare-fun b!6966900 () Bool)

(assert (=> b!6966900 (= e!4188349 tp_is_empty!43463)))

(declare-fun b!6966902 () Bool)

(declare-fun tp!1921505 () Bool)

(assert (=> b!6966902 (= e!4188349 tp!1921505)))

(assert (= (and b!6966553 ((_ is ElementMatch!17119) (regTwo!34751 r!13765))) b!6966900))

(assert (= (and b!6966553 ((_ is Concat!25964) (regTwo!34751 r!13765))) b!6966901))

(assert (= (and b!6966553 ((_ is Star!17119) (regTwo!34751 r!13765))) b!6966902))

(assert (= (and b!6966553 ((_ is Union!17119) (regTwo!34751 r!13765))) b!6966903))

(declare-fun e!4188350 () Bool)

(assert (=> b!6966550 (= tp!1921418 e!4188350)))

(declare-fun b!6966907 () Bool)

(declare-fun tp!1921512 () Bool)

(declare-fun tp!1921511 () Bool)

(assert (=> b!6966907 (= e!4188350 (and tp!1921512 tp!1921511))))

(declare-fun b!6966905 () Bool)

(declare-fun tp!1921509 () Bool)

(declare-fun tp!1921508 () Bool)

(assert (=> b!6966905 (= e!4188350 (and tp!1921509 tp!1921508))))

(declare-fun b!6966904 () Bool)

(assert (=> b!6966904 (= e!4188350 tp_is_empty!43463)))

(declare-fun b!6966906 () Bool)

(declare-fun tp!1921510 () Bool)

(assert (=> b!6966906 (= e!4188350 tp!1921510)))

(assert (= (and b!6966550 ((_ is ElementMatch!17119) (h!73243 l!9142))) b!6966904))

(assert (= (and b!6966550 ((_ is Concat!25964) (h!73243 l!9142))) b!6966905))

(assert (= (and b!6966550 ((_ is Star!17119) (h!73243 l!9142))) b!6966906))

(assert (= (and b!6966550 ((_ is Union!17119) (h!73243 l!9142))) b!6966907))

(declare-fun b!6966912 () Bool)

(declare-fun e!4188353 () Bool)

(declare-fun tp!1921517 () Bool)

(declare-fun tp!1921518 () Bool)

(assert (=> b!6966912 (= e!4188353 (and tp!1921517 tp!1921518))))

(assert (=> b!6966550 (= tp!1921417 e!4188353)))

(assert (= (and b!6966550 ((_ is Cons!66795) (t!380662 l!9142))) b!6966912))

(declare-fun b!6966917 () Bool)

(declare-fun e!4188356 () Bool)

(declare-fun tp!1921521 () Bool)

(assert (=> b!6966917 (= e!4188356 (and tp_is_empty!43463 tp!1921521))))

(assert (=> b!6966544 (= tp!1921422 e!4188356)))

(assert (= (and b!6966544 ((_ is Cons!66796) (t!380663 s!9351))) b!6966917))

(declare-fun b_lambda!260671 () Bool)

(assert (= b_lambda!260669 (or start!668274 b_lambda!260671)))

(declare-fun bs!1858699 () Bool)

(declare-fun d!2170611 () Bool)

(assert (= bs!1858699 (and d!2170611 start!668274)))

(assert (=> bs!1858699 (= (dynLambda!26635 lambda!397529 (h!73243 l!9142)) (validRegex!8803 (h!73243 l!9142)))))

(declare-fun m!7658338 () Bool)

(assert (=> bs!1858699 m!7658338))

(assert (=> b!6966872 d!2170611))

(check-sat (not d!2170599) (not b!6966627) (not b!6966912) (not b!6966902) (not bm!632404) (not b!6966618) (not d!2170601) (not b!6966890) (not b!6966903) (not b!6966906) (not b!6966628) (not b!6966853) (not bm!632400) (not b!6966852) (not b!6966917) (not bs!1858699) (not b!6966905) tp_is_empty!43463 (not d!2170603) (not b!6966885) (not b!6966887) (not b!6966907) (not b!6966615) (not b!6966886) (not b_lambda!260671) (not b!6966625) (not b!6966859) (not b!6966897) (not b!6966810) (not b!6966617) (not b!6966629) (not b!6966894) (not b!6966891) (not b!6966619) (not b!6966898) (not b!6966899) (not d!2170585) (not b!6966812) (not b!6966901) (not b!6966864) (not b!6966633) (not b!6966631) (not b!6966873) (not b!6966621) (not b!6966632) (not b!6966622) (not d!2170569) (not b!6966854) (not b!6966889) (not bm!632401) (not b!6966893) (not b!6966855) (not b!6966895) (not b!6966623))
(check-sat)
(get-model)

(declare-fun b!6967210 () Bool)

(declare-fun e!4188507 () Bool)

(declare-fun call!632452 () Bool)

(assert (=> b!6967210 (= e!4188507 call!632452)))

(declare-fun c!1291750 () Bool)

(declare-fun c!1291751 () Bool)

(declare-fun call!632453 () Bool)

(declare-fun bm!632446 () Bool)

(assert (=> bm!632446 (= call!632453 (validRegex!8803 (ite c!1291751 (reg!17448 (h!73243 l!9142)) (ite c!1291750 (regOne!34751 (h!73243 l!9142)) (regOne!34750 (h!73243 l!9142))))))))

(declare-fun bm!632447 () Bool)

(declare-fun call!632451 () Bool)

(assert (=> bm!632447 (= call!632451 call!632453)))

(declare-fun b!6967211 () Bool)

(declare-fun e!4188502 () Bool)

(declare-fun e!4188506 () Bool)

(assert (=> b!6967211 (= e!4188502 e!4188506)))

(assert (=> b!6967211 (= c!1291750 ((_ is Union!17119) (h!73243 l!9142)))))

(declare-fun b!6967212 () Bool)

(declare-fun e!4188505 () Bool)

(assert (=> b!6967212 (= e!4188505 e!4188507)))

(declare-fun res!2842435 () Bool)

(assert (=> b!6967212 (=> (not res!2842435) (not e!4188507))))

(assert (=> b!6967212 (= res!2842435 call!632451)))

(declare-fun b!6967213 () Bool)

(declare-fun e!4188504 () Bool)

(assert (=> b!6967213 (= e!4188504 e!4188502)))

(assert (=> b!6967213 (= c!1291751 ((_ is Star!17119) (h!73243 l!9142)))))

(declare-fun b!6967214 () Bool)

(declare-fun e!4188508 () Bool)

(assert (=> b!6967214 (= e!4188508 call!632452)))

(declare-fun b!6967215 () Bool)

(declare-fun e!4188503 () Bool)

(assert (=> b!6967215 (= e!4188503 call!632453)))

(declare-fun b!6967216 () Bool)

(declare-fun res!2842433 () Bool)

(assert (=> b!6967216 (=> (not res!2842433) (not e!4188508))))

(assert (=> b!6967216 (= res!2842433 call!632451)))

(assert (=> b!6967216 (= e!4188506 e!4188508)))

(declare-fun d!2170685 () Bool)

(declare-fun res!2842434 () Bool)

(assert (=> d!2170685 (=> res!2842434 e!4188504)))

(assert (=> d!2170685 (= res!2842434 ((_ is ElementMatch!17119) (h!73243 l!9142)))))

(assert (=> d!2170685 (= (validRegex!8803 (h!73243 l!9142)) e!4188504)))

(declare-fun bm!632448 () Bool)

(assert (=> bm!632448 (= call!632452 (validRegex!8803 (ite c!1291750 (regTwo!34751 (h!73243 l!9142)) (regTwo!34750 (h!73243 l!9142)))))))

(declare-fun b!6967217 () Bool)

(assert (=> b!6967217 (= e!4188502 e!4188503)))

(declare-fun res!2842436 () Bool)

(assert (=> b!6967217 (= res!2842436 (not (nullable!6906 (reg!17448 (h!73243 l!9142)))))))

(assert (=> b!6967217 (=> (not res!2842436) (not e!4188503))))

(declare-fun b!6967218 () Bool)

(declare-fun res!2842437 () Bool)

(assert (=> b!6967218 (=> res!2842437 e!4188505)))

(assert (=> b!6967218 (= res!2842437 (not ((_ is Concat!25964) (h!73243 l!9142))))))

(assert (=> b!6967218 (= e!4188506 e!4188505)))

(assert (= (and d!2170685 (not res!2842434)) b!6967213))

(assert (= (and b!6967213 c!1291751) b!6967217))

(assert (= (and b!6967213 (not c!1291751)) b!6967211))

(assert (= (and b!6967217 res!2842436) b!6967215))

(assert (= (and b!6967211 c!1291750) b!6967216))

(assert (= (and b!6967211 (not c!1291750)) b!6967218))

(assert (= (and b!6967216 res!2842433) b!6967214))

(assert (= (and b!6967218 (not res!2842437)) b!6967212))

(assert (= (and b!6967212 res!2842435) b!6967210))

(assert (= (or b!6967216 b!6967212) bm!632447))

(assert (= (or b!6967214 b!6967210) bm!632448))

(assert (= (or b!6967215 bm!632447) bm!632446))

(declare-fun m!7658460 () Bool)

(assert (=> bm!632446 m!7658460))

(declare-fun m!7658462 () Bool)

(assert (=> bm!632448 m!7658462))

(declare-fun m!7658464 () Bool)

(assert (=> b!6967217 m!7658464))

(assert (=> bs!1858699 d!2170685))

(declare-fun d!2170687 () Bool)

(declare-fun choose!51901 (Int) Bool)

(assert (=> d!2170687 (= (Exists!4084 (ite c!1291688 lambda!397552 lambda!397553)) (choose!51901 (ite c!1291688 lambda!397552 lambda!397553)))))

(declare-fun bs!1858732 () Bool)

(assert (= bs!1858732 d!2170687))

(declare-fun m!7658466 () Bool)

(assert (=> bs!1858732 m!7658466))

(assert (=> bm!632401 d!2170687))

(declare-fun d!2170689 () Bool)

(assert (=> d!2170689 (= (isUnion!1487 lt!2479429) ((_ is Union!17119) lt!2479429))))

(assert (=> b!6966615 d!2170689))

(declare-fun d!2170691 () Bool)

(assert (=> d!2170691 (= (head!14015 s!9351) (h!73244 s!9351))))

(assert (=> b!6966852 d!2170691))

(declare-fun d!2170693 () Bool)

(declare-fun nullableFct!2589 (Regex!17119) Bool)

(assert (=> d!2170693 (= (nullable!6906 r!13765) (nullableFct!2589 r!13765))))

(declare-fun bs!1858733 () Bool)

(assert (= bs!1858733 d!2170693))

(declare-fun m!7658468 () Bool)

(assert (=> bs!1858733 m!7658468))

(assert (=> b!6966853 d!2170693))

(declare-fun d!2170695 () Bool)

(declare-fun res!2842438 () Bool)

(declare-fun e!4188509 () Bool)

(assert (=> d!2170695 (=> res!2842438 e!4188509)))

(assert (=> d!2170695 (= res!2842438 ((_ is Nil!66795) l!9142))))

(assert (=> d!2170695 (= (forall!15990 l!9142 lambda!397556) e!4188509)))

(declare-fun b!6967219 () Bool)

(declare-fun e!4188510 () Bool)

(assert (=> b!6967219 (= e!4188509 e!4188510)))

(declare-fun res!2842439 () Bool)

(assert (=> b!6967219 (=> (not res!2842439) (not e!4188510))))

(assert (=> b!6967219 (= res!2842439 (dynLambda!26635 lambda!397556 (h!73243 l!9142)))))

(declare-fun b!6967220 () Bool)

(assert (=> b!6967220 (= e!4188510 (forall!15990 (t!380662 l!9142) lambda!397556))))

(assert (= (and d!2170695 (not res!2842438)) b!6967219))

(assert (= (and b!6967219 res!2842439) b!6967220))

(declare-fun b_lambda!260691 () Bool)

(assert (=> (not b_lambda!260691) (not b!6967219)))

(declare-fun m!7658470 () Bool)

(assert (=> b!6967219 m!7658470))

(declare-fun m!7658472 () Bool)

(assert (=> b!6967220 m!7658472))

(assert (=> d!2170603 d!2170695))

(declare-fun d!2170697 () Bool)

(assert (=> d!2170697 (= (isEmpty!38999 (t!380662 lt!2479422)) ((_ is Nil!66795) (t!380662 lt!2479422)))))

(assert (=> b!6966618 d!2170697))

(declare-fun d!2170699 () Bool)

(assert (=> d!2170699 (= (isEmptyLang!2059 lt!2479429) ((_ is EmptyLang!17119) lt!2479429))))

(assert (=> b!6966617 d!2170699))

(declare-fun d!2170701 () Bool)

(assert (=> d!2170701 (= (isEmpty!39001 (tail!13081 s!9351)) ((_ is Nil!66796) (tail!13081 s!9351)))))

(assert (=> b!6966854 d!2170701))

(declare-fun d!2170703 () Bool)

(assert (=> d!2170703 (= (tail!13081 s!9351) (t!380663 s!9351))))

(assert (=> b!6966854 d!2170703))

(declare-fun d!2170705 () Bool)

(assert (=> d!2170705 (= (isEmpty!39001 s!9351) ((_ is Nil!66796) s!9351))))

(assert (=> d!2170599 d!2170705))

(declare-fun b!6967221 () Bool)

(declare-fun e!4188516 () Bool)

(declare-fun call!632455 () Bool)

(assert (=> b!6967221 (= e!4188516 call!632455)))

(declare-fun call!632456 () Bool)

(declare-fun c!1291753 () Bool)

(declare-fun bm!632449 () Bool)

(declare-fun c!1291752 () Bool)

(assert (=> bm!632449 (= call!632456 (validRegex!8803 (ite c!1291753 (reg!17448 r!13765) (ite c!1291752 (regOne!34751 r!13765) (regOne!34750 r!13765)))))))

(declare-fun bm!632450 () Bool)

(declare-fun call!632454 () Bool)

(assert (=> bm!632450 (= call!632454 call!632456)))

(declare-fun b!6967222 () Bool)

(declare-fun e!4188511 () Bool)

(declare-fun e!4188515 () Bool)

(assert (=> b!6967222 (= e!4188511 e!4188515)))

(assert (=> b!6967222 (= c!1291752 ((_ is Union!17119) r!13765))))

(declare-fun b!6967223 () Bool)

(declare-fun e!4188514 () Bool)

(assert (=> b!6967223 (= e!4188514 e!4188516)))

(declare-fun res!2842442 () Bool)

(assert (=> b!6967223 (=> (not res!2842442) (not e!4188516))))

(assert (=> b!6967223 (= res!2842442 call!632454)))

(declare-fun b!6967224 () Bool)

(declare-fun e!4188513 () Bool)

(assert (=> b!6967224 (= e!4188513 e!4188511)))

(assert (=> b!6967224 (= c!1291753 ((_ is Star!17119) r!13765))))

(declare-fun b!6967225 () Bool)

(declare-fun e!4188517 () Bool)

(assert (=> b!6967225 (= e!4188517 call!632455)))

(declare-fun b!6967226 () Bool)

(declare-fun e!4188512 () Bool)

(assert (=> b!6967226 (= e!4188512 call!632456)))

(declare-fun b!6967227 () Bool)

(declare-fun res!2842440 () Bool)

(assert (=> b!6967227 (=> (not res!2842440) (not e!4188517))))

(assert (=> b!6967227 (= res!2842440 call!632454)))

(assert (=> b!6967227 (= e!4188515 e!4188517)))

(declare-fun d!2170707 () Bool)

(declare-fun res!2842441 () Bool)

(assert (=> d!2170707 (=> res!2842441 e!4188513)))

(assert (=> d!2170707 (= res!2842441 ((_ is ElementMatch!17119) r!13765))))

(assert (=> d!2170707 (= (validRegex!8803 r!13765) e!4188513)))

(declare-fun bm!632451 () Bool)

(assert (=> bm!632451 (= call!632455 (validRegex!8803 (ite c!1291752 (regTwo!34751 r!13765) (regTwo!34750 r!13765))))))

(declare-fun b!6967228 () Bool)

(assert (=> b!6967228 (= e!4188511 e!4188512)))

(declare-fun res!2842443 () Bool)

(assert (=> b!6967228 (= res!2842443 (not (nullable!6906 (reg!17448 r!13765))))))

(assert (=> b!6967228 (=> (not res!2842443) (not e!4188512))))

(declare-fun b!6967229 () Bool)

(declare-fun res!2842444 () Bool)

(assert (=> b!6967229 (=> res!2842444 e!4188514)))

(assert (=> b!6967229 (= res!2842444 (not ((_ is Concat!25964) r!13765)))))

(assert (=> b!6967229 (= e!4188515 e!4188514)))

(assert (= (and d!2170707 (not res!2842441)) b!6967224))

(assert (= (and b!6967224 c!1291753) b!6967228))

(assert (= (and b!6967224 (not c!1291753)) b!6967222))

(assert (= (and b!6967228 res!2842443) b!6967226))

(assert (= (and b!6967222 c!1291752) b!6967227))

(assert (= (and b!6967222 (not c!1291752)) b!6967229))

(assert (= (and b!6967227 res!2842440) b!6967225))

(assert (= (and b!6967229 (not res!2842444)) b!6967223))

(assert (= (and b!6967223 res!2842442) b!6967221))

(assert (= (or b!6967227 b!6967223) bm!632450))

(assert (= (or b!6967225 b!6967221) bm!632451))

(assert (= (or b!6967226 bm!632450) bm!632449))

(declare-fun m!7658474 () Bool)

(assert (=> bm!632449 m!7658474))

(declare-fun m!7658476 () Bool)

(assert (=> bm!632451 m!7658476))

(declare-fun m!7658478 () Bool)

(assert (=> b!6967228 m!7658478))

(assert (=> d!2170599 d!2170707))

(declare-fun d!2170709 () Bool)

(assert (=> d!2170709 (= (isEmpty!38999 (tail!13079 lt!2479422)) ((_ is Nil!66795) (tail!13079 lt!2479422)))))

(assert (=> b!6966619 d!2170709))

(declare-fun d!2170711 () Bool)

(assert (=> d!2170711 (= (tail!13079 lt!2479422) (t!380662 lt!2479422))))

(assert (=> b!6966619 d!2170711))

(assert (=> b!6966855 d!2170691))

(declare-fun d!2170713 () Bool)

(assert (=> d!2170713 (= (isUnion!1487 lt!2479430) ((_ is Union!17119) lt!2479430))))

(assert (=> b!6966625 d!2170713))

(declare-fun d!2170715 () Bool)

(assert (=> d!2170715 (= (isEmptyLang!2059 lt!2479430) ((_ is EmptyLang!17119) lt!2479430))))

(assert (=> b!6966627 d!2170715))

(assert (=> b!6966622 d!2170607))

(declare-fun d!2170717 () Bool)

(assert (=> d!2170717 (= (isEmpty!38999 (t!380662 l!9142)) ((_ is Nil!66795) (t!380662 l!9142)))))

(assert (=> b!6966628 d!2170717))

(declare-fun d!2170719 () Bool)

(assert (=> d!2170719 (= (head!14014 lt!2479422) (h!73243 lt!2479422))))

(assert (=> b!6966621 d!2170719))

(declare-fun bs!1858734 () Bool)

(declare-fun d!2170721 () Bool)

(assert (= bs!1858734 (and d!2170721 d!2170603)))

(declare-fun lambda!397563 () Int)

(assert (=> bs!1858734 (not (= lambda!397563 lambda!397556))))

(declare-fun bs!1858735 () Bool)

(assert (= bs!1858735 (and d!2170721 d!2170585)))

(assert (=> bs!1858735 (= lambda!397563 lambda!397540)))

(declare-fun bs!1858736 () Bool)

(assert (= bs!1858736 (and d!2170721 b!6966548)))

(assert (=> bs!1858736 (not (= lambda!397563 lambda!397530))))

(declare-fun bs!1858737 () Bool)

(assert (= bs!1858737 (and d!2170721 d!2170569)))

(assert (=> bs!1858737 (= lambda!397563 lambda!397539)))

(declare-fun bs!1858738 () Bool)

(assert (= bs!1858738 (and d!2170721 start!668274)))

(assert (=> bs!1858738 (= lambda!397563 lambda!397529)))

(declare-fun b!6967230 () Bool)

(declare-fun e!4188519 () Regex!17119)

(declare-fun e!4188520 () Regex!17119)

(assert (=> b!6967230 (= e!4188519 e!4188520)))

(declare-fun c!1291757 () Bool)

(assert (=> b!6967230 (= c!1291757 ((_ is Cons!66795) (t!380662 lt!2479422)))))

(declare-fun b!6967232 () Bool)

(assert (=> b!6967232 (= e!4188519 (h!73243 (t!380662 lt!2479422)))))

(declare-fun b!6967233 () Bool)

(declare-fun e!4188521 () Bool)

(declare-fun lt!2479450 () Regex!17119)

(assert (=> b!6967233 (= e!4188521 (isEmptyLang!2059 lt!2479450))))

(declare-fun b!6967234 () Bool)

(declare-fun e!4188522 () Bool)

(assert (=> b!6967234 (= e!4188522 (isEmpty!38999 (t!380662 (t!380662 lt!2479422))))))

(declare-fun b!6967235 () Bool)

(declare-fun e!4188518 () Bool)

(assert (=> b!6967235 (= e!4188521 e!4188518)))

(declare-fun c!1291754 () Bool)

(assert (=> b!6967235 (= c!1291754 (isEmpty!38999 (tail!13079 (t!380662 lt!2479422))))))

(declare-fun b!6967236 () Bool)

(assert (=> b!6967236 (= e!4188520 EmptyLang!17119)))

(declare-fun b!6967237 () Bool)

(assert (=> b!6967237 (= e!4188518 (= lt!2479450 (head!14014 (t!380662 lt!2479422))))))

(declare-fun e!4188523 () Bool)

(assert (=> d!2170721 e!4188523))

(declare-fun res!2842446 () Bool)

(assert (=> d!2170721 (=> (not res!2842446) (not e!4188523))))

(assert (=> d!2170721 (= res!2842446 (validRegex!8803 lt!2479450))))

(assert (=> d!2170721 (= lt!2479450 e!4188519)))

(declare-fun c!1291755 () Bool)

(assert (=> d!2170721 (= c!1291755 e!4188522)))

(declare-fun res!2842445 () Bool)

(assert (=> d!2170721 (=> (not res!2842445) (not e!4188522))))

(assert (=> d!2170721 (= res!2842445 ((_ is Cons!66795) (t!380662 lt!2479422)))))

(assert (=> d!2170721 (forall!15990 (t!380662 lt!2479422) lambda!397563)))

(assert (=> d!2170721 (= (generalisedUnion!2594 (t!380662 lt!2479422)) lt!2479450)))

(declare-fun b!6967231 () Bool)

(assert (=> b!6967231 (= e!4188518 (isUnion!1487 lt!2479450))))

(declare-fun b!6967238 () Bool)

(assert (=> b!6967238 (= e!4188523 e!4188521)))

(declare-fun c!1291756 () Bool)

(assert (=> b!6967238 (= c!1291756 (isEmpty!38999 (t!380662 lt!2479422)))))

(declare-fun b!6967239 () Bool)

(assert (=> b!6967239 (= e!4188520 (Union!17119 (h!73243 (t!380662 lt!2479422)) (generalisedUnion!2594 (t!380662 (t!380662 lt!2479422)))))))

(assert (= (and d!2170721 res!2842445) b!6967234))

(assert (= (and d!2170721 c!1291755) b!6967232))

(assert (= (and d!2170721 (not c!1291755)) b!6967230))

(assert (= (and b!6967230 c!1291757) b!6967239))

(assert (= (and b!6967230 (not c!1291757)) b!6967236))

(assert (= (and d!2170721 res!2842446) b!6967238))

(assert (= (and b!6967238 c!1291756) b!6967233))

(assert (= (and b!6967238 (not c!1291756)) b!6967235))

(assert (= (and b!6967235 c!1291754) b!6967237))

(assert (= (and b!6967235 (not c!1291754)) b!6967231))

(declare-fun m!7658480 () Bool)

(assert (=> b!6967237 m!7658480))

(declare-fun m!7658482 () Bool)

(assert (=> b!6967231 m!7658482))

(declare-fun m!7658484 () Bool)

(assert (=> d!2170721 m!7658484))

(declare-fun m!7658486 () Bool)

(assert (=> d!2170721 m!7658486))

(declare-fun m!7658488 () Bool)

(assert (=> b!6967234 m!7658488))

(assert (=> b!6967238 m!7658240))

(declare-fun m!7658490 () Bool)

(assert (=> b!6967235 m!7658490))

(assert (=> b!6967235 m!7658490))

(declare-fun m!7658492 () Bool)

(assert (=> b!6967235 m!7658492))

(declare-fun m!7658494 () Bool)

(assert (=> b!6967233 m!7658494))

(declare-fun m!7658496 () Bool)

(assert (=> b!6967239 m!7658496))

(assert (=> b!6966623 d!2170721))

(assert (=> b!6966859 d!2170701))

(assert (=> b!6966859 d!2170703))

(declare-fun d!2170723 () Bool)

(assert (=> d!2170723 (= (isEmpty!38999 (tail!13079 l!9142)) ((_ is Nil!66795) (tail!13079 l!9142)))))

(assert (=> b!6966629 d!2170723))

(assert (=> b!6966629 d!2170609))

(declare-fun b!6967240 () Bool)

(declare-fun e!4188529 () Bool)

(declare-fun call!632458 () Bool)

(assert (=> b!6967240 (= e!4188529 call!632458)))

(declare-fun bm!632452 () Bool)

(declare-fun c!1291759 () Bool)

(declare-fun call!632459 () Bool)

(declare-fun c!1291758 () Bool)

(assert (=> bm!632452 (= call!632459 (validRegex!8803 (ite c!1291759 (reg!17448 lt!2479430) (ite c!1291758 (regOne!34751 lt!2479430) (regOne!34750 lt!2479430)))))))

(declare-fun bm!632453 () Bool)

(declare-fun call!632457 () Bool)

(assert (=> bm!632453 (= call!632457 call!632459)))

(declare-fun b!6967241 () Bool)

(declare-fun e!4188524 () Bool)

(declare-fun e!4188528 () Bool)

(assert (=> b!6967241 (= e!4188524 e!4188528)))

(assert (=> b!6967241 (= c!1291758 ((_ is Union!17119) lt!2479430))))

(declare-fun b!6967242 () Bool)

(declare-fun e!4188527 () Bool)

(assert (=> b!6967242 (= e!4188527 e!4188529)))

(declare-fun res!2842449 () Bool)

(assert (=> b!6967242 (=> (not res!2842449) (not e!4188529))))

(assert (=> b!6967242 (= res!2842449 call!632457)))

(declare-fun b!6967243 () Bool)

(declare-fun e!4188526 () Bool)

(assert (=> b!6967243 (= e!4188526 e!4188524)))

(assert (=> b!6967243 (= c!1291759 ((_ is Star!17119) lt!2479430))))

(declare-fun b!6967244 () Bool)

(declare-fun e!4188530 () Bool)

(assert (=> b!6967244 (= e!4188530 call!632458)))

(declare-fun b!6967245 () Bool)

(declare-fun e!4188525 () Bool)

(assert (=> b!6967245 (= e!4188525 call!632459)))

(declare-fun b!6967246 () Bool)

(declare-fun res!2842447 () Bool)

(assert (=> b!6967246 (=> (not res!2842447) (not e!4188530))))

(assert (=> b!6967246 (= res!2842447 call!632457)))

(assert (=> b!6967246 (= e!4188528 e!4188530)))

(declare-fun d!2170725 () Bool)

(declare-fun res!2842448 () Bool)

(assert (=> d!2170725 (=> res!2842448 e!4188526)))

(assert (=> d!2170725 (= res!2842448 ((_ is ElementMatch!17119) lt!2479430))))

(assert (=> d!2170725 (= (validRegex!8803 lt!2479430) e!4188526)))

(declare-fun bm!632454 () Bool)

(assert (=> bm!632454 (= call!632458 (validRegex!8803 (ite c!1291758 (regTwo!34751 lt!2479430) (regTwo!34750 lt!2479430))))))

(declare-fun b!6967247 () Bool)

(assert (=> b!6967247 (= e!4188524 e!4188525)))

(declare-fun res!2842450 () Bool)

(assert (=> b!6967247 (= res!2842450 (not (nullable!6906 (reg!17448 lt!2479430))))))

(assert (=> b!6967247 (=> (not res!2842450) (not e!4188525))))

(declare-fun b!6967248 () Bool)

(declare-fun res!2842451 () Bool)

(assert (=> b!6967248 (=> res!2842451 e!4188527)))

(assert (=> b!6967248 (= res!2842451 (not ((_ is Concat!25964) lt!2479430)))))

(assert (=> b!6967248 (= e!4188528 e!4188527)))

(assert (= (and d!2170725 (not res!2842448)) b!6967243))

(assert (= (and b!6967243 c!1291759) b!6967247))

(assert (= (and b!6967243 (not c!1291759)) b!6967241))

(assert (= (and b!6967247 res!2842450) b!6967245))

(assert (= (and b!6967241 c!1291758) b!6967246))

(assert (= (and b!6967241 (not c!1291758)) b!6967248))

(assert (= (and b!6967246 res!2842447) b!6967244))

(assert (= (and b!6967248 (not res!2842451)) b!6967242))

(assert (= (and b!6967242 res!2842449) b!6967240))

(assert (= (or b!6967246 b!6967242) bm!632453))

(assert (= (or b!6967244 b!6967240) bm!632454))

(assert (= (or b!6967245 bm!632453) bm!632452))

(declare-fun m!7658498 () Bool)

(assert (=> bm!632452 m!7658498))

(declare-fun m!7658500 () Bool)

(assert (=> bm!632454 m!7658500))

(declare-fun m!7658502 () Bool)

(assert (=> b!6967247 m!7658502))

(assert (=> d!2170585 d!2170725))

(declare-fun d!2170727 () Bool)

(declare-fun res!2842452 () Bool)

(declare-fun e!4188531 () Bool)

(assert (=> d!2170727 (=> res!2842452 e!4188531)))

(assert (=> d!2170727 (= res!2842452 ((_ is Nil!66795) l!9142))))

(assert (=> d!2170727 (= (forall!15990 l!9142 lambda!397540) e!4188531)))

(declare-fun b!6967249 () Bool)

(declare-fun e!4188532 () Bool)

(assert (=> b!6967249 (= e!4188531 e!4188532)))

(declare-fun res!2842453 () Bool)

(assert (=> b!6967249 (=> (not res!2842453) (not e!4188532))))

(assert (=> b!6967249 (= res!2842453 (dynLambda!26635 lambda!397540 (h!73243 l!9142)))))

(declare-fun b!6967250 () Bool)

(assert (=> b!6967250 (= e!4188532 (forall!15990 (t!380662 l!9142) lambda!397540))))

(assert (= (and d!2170727 (not res!2842452)) b!6967249))

(assert (= (and b!6967249 res!2842453) b!6967250))

(declare-fun b_lambda!260693 () Bool)

(assert (=> (not b_lambda!260693) (not b!6967249)))

(declare-fun m!7658504 () Bool)

(assert (=> b!6967249 m!7658504))

(declare-fun m!7658506 () Bool)

(assert (=> b!6967250 m!7658506))

(assert (=> d!2170585 d!2170727))

(declare-fun d!2170729 () Bool)

(assert (=> d!2170729 (= (head!14014 l!9142) (h!73243 l!9142))))

(assert (=> b!6966631 d!2170729))

(declare-fun bs!1858739 () Bool)

(declare-fun b!6967261 () Bool)

(assert (= bs!1858739 (and b!6967261 b!6966819)))

(declare-fun lambda!397564 () Int)

(assert (=> bs!1858739 (= (and (= (reg!17448 (regTwo!34751 r!13765)) (reg!17448 r!13765)) (= (regTwo!34751 r!13765) r!13765)) (= lambda!397564 lambda!397552))))

(declare-fun bs!1858740 () Bool)

(assert (= bs!1858740 (and b!6967261 b!6966809)))

(assert (=> bs!1858740 (not (= lambda!397564 lambda!397553))))

(assert (=> b!6967261 true))

(assert (=> b!6967261 true))

(declare-fun bs!1858741 () Bool)

(declare-fun b!6967251 () Bool)

(assert (= bs!1858741 (and b!6967251 b!6966819)))

(declare-fun lambda!397565 () Int)

(assert (=> bs!1858741 (not (= lambda!397565 lambda!397552))))

(declare-fun bs!1858742 () Bool)

(assert (= bs!1858742 (and b!6967251 b!6966809)))

(assert (=> bs!1858742 (= (and (= (regOne!34750 (regTwo!34751 r!13765)) (regOne!34750 r!13765)) (= (regTwo!34750 (regTwo!34751 r!13765)) (regTwo!34750 r!13765))) (= lambda!397565 lambda!397553))))

(declare-fun bs!1858743 () Bool)

(assert (= bs!1858743 (and b!6967251 b!6967261)))

(assert (=> bs!1858743 (not (= lambda!397565 lambda!397564))))

(assert (=> b!6967251 true))

(assert (=> b!6967251 true))

(declare-fun e!4188535 () Bool)

(declare-fun call!632461 () Bool)

(assert (=> b!6967251 (= e!4188535 call!632461)))

(declare-fun b!6967252 () Bool)

(declare-fun e!4188537 () Bool)

(assert (=> b!6967252 (= e!4188537 (matchRSpec!4136 (regTwo!34751 (regTwo!34751 r!13765)) s!9351))))

(declare-fun bm!632455 () Bool)

(declare-fun call!632460 () Bool)

(assert (=> bm!632455 (= call!632460 (isEmpty!39001 s!9351))))

(declare-fun b!6967254 () Bool)

(declare-fun e!4188539 () Bool)

(assert (=> b!6967254 (= e!4188539 e!4188537)))

(declare-fun res!2842456 () Bool)

(assert (=> b!6967254 (= res!2842456 (matchRSpec!4136 (regOne!34751 (regTwo!34751 r!13765)) s!9351))))

(assert (=> b!6967254 (=> res!2842456 e!4188537)))

(declare-fun b!6967255 () Bool)

(declare-fun e!4188536 () Bool)

(declare-fun e!4188534 () Bool)

(assert (=> b!6967255 (= e!4188536 e!4188534)))

(declare-fun res!2842454 () Bool)

(assert (=> b!6967255 (= res!2842454 (not ((_ is EmptyLang!17119) (regTwo!34751 r!13765))))))

(assert (=> b!6967255 (=> (not res!2842454) (not e!4188534))))

(declare-fun b!6967256 () Bool)

(declare-fun e!4188533 () Bool)

(assert (=> b!6967256 (= e!4188533 (= s!9351 (Cons!66796 (c!1291625 (regTwo!34751 r!13765)) Nil!66796)))))

(declare-fun b!6967257 () Bool)

(declare-fun c!1291763 () Bool)

(assert (=> b!6967257 (= c!1291763 ((_ is ElementMatch!17119) (regTwo!34751 r!13765)))))

(assert (=> b!6967257 (= e!4188534 e!4188533)))

(declare-fun b!6967258 () Bool)

(declare-fun c!1291760 () Bool)

(assert (=> b!6967258 (= c!1291760 ((_ is Union!17119) (regTwo!34751 r!13765)))))

(assert (=> b!6967258 (= e!4188533 e!4188539)))

(declare-fun b!6967259 () Bool)

(declare-fun res!2842455 () Bool)

(declare-fun e!4188538 () Bool)

(assert (=> b!6967259 (=> res!2842455 e!4188538)))

(assert (=> b!6967259 (= res!2842455 call!632460)))

(assert (=> b!6967259 (= e!4188535 e!4188538)))

(declare-fun b!6967260 () Bool)

(assert (=> b!6967260 (= e!4188536 call!632460)))

(declare-fun c!1291761 () Bool)

(declare-fun bm!632456 () Bool)

(assert (=> bm!632456 (= call!632461 (Exists!4084 (ite c!1291761 lambda!397564 lambda!397565)))))

(assert (=> b!6967261 (= e!4188538 call!632461)))

(declare-fun d!2170731 () Bool)

(declare-fun c!1291762 () Bool)

(assert (=> d!2170731 (= c!1291762 ((_ is EmptyExpr!17119) (regTwo!34751 r!13765)))))

(assert (=> d!2170731 (= (matchRSpec!4136 (regTwo!34751 r!13765) s!9351) e!4188536)))

(declare-fun b!6967253 () Bool)

(assert (=> b!6967253 (= e!4188539 e!4188535)))

(assert (=> b!6967253 (= c!1291761 ((_ is Star!17119) (regTwo!34751 r!13765)))))

(assert (= (and d!2170731 c!1291762) b!6967260))

(assert (= (and d!2170731 (not c!1291762)) b!6967255))

(assert (= (and b!6967255 res!2842454) b!6967257))

(assert (= (and b!6967257 c!1291763) b!6967256))

(assert (= (and b!6967257 (not c!1291763)) b!6967258))

(assert (= (and b!6967258 c!1291760) b!6967254))

(assert (= (and b!6967258 (not c!1291760)) b!6967253))

(assert (= (and b!6967254 (not res!2842456)) b!6967252))

(assert (= (and b!6967253 c!1291761) b!6967259))

(assert (= (and b!6967253 (not c!1291761)) b!6967251))

(assert (= (and b!6967259 (not res!2842455)) b!6967261))

(assert (= (or b!6967261 b!6967251) bm!632456))

(assert (= (or b!6967260 b!6967259) bm!632455))

(declare-fun m!7658508 () Bool)

(assert (=> b!6967252 m!7658508))

(assert (=> bm!632455 m!7658310))

(declare-fun m!7658510 () Bool)

(assert (=> b!6967254 m!7658510))

(declare-fun m!7658512 () Bool)

(assert (=> bm!632456 m!7658512))

(assert (=> b!6966810 d!2170731))

(declare-fun b!6967262 () Bool)

(declare-fun e!4188545 () Bool)

(declare-fun call!632463 () Bool)

(assert (=> b!6967262 (= e!4188545 call!632463)))

(declare-fun c!1291765 () Bool)

(declare-fun bm!632457 () Bool)

(declare-fun call!632464 () Bool)

(declare-fun c!1291764 () Bool)

(assert (=> bm!632457 (= call!632464 (validRegex!8803 (ite c!1291765 (reg!17448 lt!2479429) (ite c!1291764 (regOne!34751 lt!2479429) (regOne!34750 lt!2479429)))))))

(declare-fun bm!632458 () Bool)

(declare-fun call!632462 () Bool)

(assert (=> bm!632458 (= call!632462 call!632464)))

(declare-fun b!6967263 () Bool)

(declare-fun e!4188540 () Bool)

(declare-fun e!4188544 () Bool)

(assert (=> b!6967263 (= e!4188540 e!4188544)))

(assert (=> b!6967263 (= c!1291764 ((_ is Union!17119) lt!2479429))))

(declare-fun b!6967264 () Bool)

(declare-fun e!4188543 () Bool)

(assert (=> b!6967264 (= e!4188543 e!4188545)))

(declare-fun res!2842459 () Bool)

(assert (=> b!6967264 (=> (not res!2842459) (not e!4188545))))

(assert (=> b!6967264 (= res!2842459 call!632462)))

(declare-fun b!6967265 () Bool)

(declare-fun e!4188542 () Bool)

(assert (=> b!6967265 (= e!4188542 e!4188540)))

(assert (=> b!6967265 (= c!1291765 ((_ is Star!17119) lt!2479429))))

(declare-fun b!6967266 () Bool)

(declare-fun e!4188546 () Bool)

(assert (=> b!6967266 (= e!4188546 call!632463)))

(declare-fun b!6967267 () Bool)

(declare-fun e!4188541 () Bool)

(assert (=> b!6967267 (= e!4188541 call!632464)))

(declare-fun b!6967268 () Bool)

(declare-fun res!2842457 () Bool)

(assert (=> b!6967268 (=> (not res!2842457) (not e!4188546))))

(assert (=> b!6967268 (= res!2842457 call!632462)))

(assert (=> b!6967268 (= e!4188544 e!4188546)))

(declare-fun d!2170733 () Bool)

(declare-fun res!2842458 () Bool)

(assert (=> d!2170733 (=> res!2842458 e!4188542)))

(assert (=> d!2170733 (= res!2842458 ((_ is ElementMatch!17119) lt!2479429))))

(assert (=> d!2170733 (= (validRegex!8803 lt!2479429) e!4188542)))

(declare-fun bm!632459 () Bool)

(assert (=> bm!632459 (= call!632463 (validRegex!8803 (ite c!1291764 (regTwo!34751 lt!2479429) (regTwo!34750 lt!2479429))))))

(declare-fun b!6967269 () Bool)

(assert (=> b!6967269 (= e!4188540 e!4188541)))

(declare-fun res!2842460 () Bool)

(assert (=> b!6967269 (= res!2842460 (not (nullable!6906 (reg!17448 lt!2479429))))))

(assert (=> b!6967269 (=> (not res!2842460) (not e!4188541))))

(declare-fun b!6967270 () Bool)

(declare-fun res!2842461 () Bool)

(assert (=> b!6967270 (=> res!2842461 e!4188543)))

(assert (=> b!6967270 (= res!2842461 (not ((_ is Concat!25964) lt!2479429)))))

(assert (=> b!6967270 (= e!4188544 e!4188543)))

(assert (= (and d!2170733 (not res!2842458)) b!6967265))

(assert (= (and b!6967265 c!1291765) b!6967269))

(assert (= (and b!6967265 (not c!1291765)) b!6967263))

(assert (= (and b!6967269 res!2842460) b!6967267))

(assert (= (and b!6967263 c!1291764) b!6967268))

(assert (= (and b!6967263 (not c!1291764)) b!6967270))

(assert (= (and b!6967268 res!2842457) b!6967266))

(assert (= (and b!6967270 (not res!2842461)) b!6967264))

(assert (= (and b!6967264 res!2842459) b!6967262))

(assert (= (or b!6967268 b!6967264) bm!632458))

(assert (= (or b!6967266 b!6967262) bm!632459))

(assert (= (or b!6967267 bm!632458) bm!632457))

(declare-fun m!7658514 () Bool)

(assert (=> bm!632457 m!7658514))

(declare-fun m!7658516 () Bool)

(assert (=> bm!632459 m!7658516))

(declare-fun m!7658518 () Bool)

(assert (=> b!6967269 m!7658518))

(assert (=> d!2170569 d!2170733))

(declare-fun d!2170735 () Bool)

(declare-fun res!2842462 () Bool)

(declare-fun e!4188547 () Bool)

(assert (=> d!2170735 (=> res!2842462 e!4188547)))

(assert (=> d!2170735 (= res!2842462 ((_ is Nil!66795) lt!2479422))))

(assert (=> d!2170735 (= (forall!15990 lt!2479422 lambda!397539) e!4188547)))

(declare-fun b!6967271 () Bool)

(declare-fun e!4188548 () Bool)

(assert (=> b!6967271 (= e!4188547 e!4188548)))

(declare-fun res!2842463 () Bool)

(assert (=> b!6967271 (=> (not res!2842463) (not e!4188548))))

(assert (=> b!6967271 (= res!2842463 (dynLambda!26635 lambda!397539 (h!73243 lt!2479422)))))

(declare-fun b!6967272 () Bool)

(assert (=> b!6967272 (= e!4188548 (forall!15990 (t!380662 lt!2479422) lambda!397539))))

(assert (= (and d!2170735 (not res!2842462)) b!6967271))

(assert (= (and b!6967271 res!2842463) b!6967272))

(declare-fun b_lambda!260695 () Bool)

(assert (=> (not b_lambda!260695) (not b!6967271)))

(declare-fun m!7658520 () Bool)

(assert (=> b!6967271 m!7658520))

(declare-fun m!7658522 () Bool)

(assert (=> b!6967272 m!7658522))

(assert (=> d!2170569 d!2170735))

(assert (=> d!2170601 d!2170599))

(assert (=> d!2170601 d!2170589))

(declare-fun d!2170737 () Bool)

(assert (=> d!2170737 (= (matchR!9221 r!13765 s!9351) (matchRSpec!4136 r!13765 s!9351))))

(assert (=> d!2170737 true))

(declare-fun _$88!5756 () Unit!160890)

(assert (=> d!2170737 (= (choose!51899 r!13765 s!9351) _$88!5756)))

(declare-fun bs!1858744 () Bool)

(assert (= bs!1858744 d!2170737))

(assert (=> bs!1858744 m!7658204))

(assert (=> bs!1858744 m!7658202))

(assert (=> d!2170601 d!2170737))

(assert (=> d!2170601 d!2170707))

(declare-fun d!2170739 () Bool)

(declare-fun res!2842464 () Bool)

(declare-fun e!4188549 () Bool)

(assert (=> d!2170739 (=> res!2842464 e!4188549)))

(assert (=> d!2170739 (= res!2842464 ((_ is Nil!66795) (t!380662 l!9142)))))

(assert (=> d!2170739 (= (forall!15990 (t!380662 l!9142) lambda!397529) e!4188549)))

(declare-fun b!6967273 () Bool)

(declare-fun e!4188550 () Bool)

(assert (=> b!6967273 (= e!4188549 e!4188550)))

(declare-fun res!2842465 () Bool)

(assert (=> b!6967273 (=> (not res!2842465) (not e!4188550))))

(assert (=> b!6967273 (= res!2842465 (dynLambda!26635 lambda!397529 (h!73243 (t!380662 l!9142))))))

(declare-fun b!6967274 () Bool)

(assert (=> b!6967274 (= e!4188550 (forall!15990 (t!380662 (t!380662 l!9142)) lambda!397529))))

(assert (= (and d!2170739 (not res!2842464)) b!6967273))

(assert (= (and b!6967273 res!2842465) b!6967274))

(declare-fun b_lambda!260697 () Bool)

(assert (=> (not b_lambda!260697) (not b!6967273)))

(declare-fun m!7658524 () Bool)

(assert (=> b!6967273 m!7658524))

(declare-fun m!7658526 () Bool)

(assert (=> b!6967274 m!7658526))

(assert (=> b!6966873 d!2170739))

(assert (=> bm!632400 d!2170705))

(assert (=> b!6966632 d!2170587))

(declare-fun d!2170741 () Bool)

(declare-fun e!4188554 () Bool)

(assert (=> d!2170741 e!4188554))

(declare-fun c!1291767 () Bool)

(assert (=> d!2170741 (= c!1291767 ((_ is EmptyExpr!17119) (derivativeStep!5531 r!13765 (head!14015 s!9351))))))

(declare-fun lt!2479451 () Bool)

(declare-fun e!4188555 () Bool)

(assert (=> d!2170741 (= lt!2479451 e!4188555)))

(declare-fun c!1291768 () Bool)

(assert (=> d!2170741 (= c!1291768 (isEmpty!39001 (tail!13081 s!9351)))))

(assert (=> d!2170741 (validRegex!8803 (derivativeStep!5531 r!13765 (head!14015 s!9351)))))

(assert (=> d!2170741 (= (matchR!9221 (derivativeStep!5531 r!13765 (head!14015 s!9351)) (tail!13081 s!9351)) lt!2479451)))

(declare-fun b!6967275 () Bool)

(declare-fun e!4188556 () Bool)

(assert (=> b!6967275 (= e!4188556 (= (head!14015 (tail!13081 s!9351)) (c!1291625 (derivativeStep!5531 r!13765 (head!14015 s!9351)))))))

(declare-fun b!6967276 () Bool)

(assert (=> b!6967276 (= e!4188555 (nullable!6906 (derivativeStep!5531 r!13765 (head!14015 s!9351))))))

(declare-fun b!6967277 () Bool)

(declare-fun res!2842469 () Bool)

(assert (=> b!6967277 (=> (not res!2842469) (not e!4188556))))

(assert (=> b!6967277 (= res!2842469 (isEmpty!39001 (tail!13081 (tail!13081 s!9351))))))

(declare-fun b!6967278 () Bool)

(declare-fun e!4188557 () Bool)

(assert (=> b!6967278 (= e!4188557 (not (= (head!14015 (tail!13081 s!9351)) (c!1291625 (derivativeStep!5531 r!13765 (head!14015 s!9351))))))))

(declare-fun b!6967279 () Bool)

(declare-fun e!4188551 () Bool)

(declare-fun e!4188552 () Bool)

(assert (=> b!6967279 (= e!4188551 e!4188552)))

(declare-fun res!2842473 () Bool)

(assert (=> b!6967279 (=> (not res!2842473) (not e!4188552))))

(assert (=> b!6967279 (= res!2842473 (not lt!2479451))))

(declare-fun b!6967280 () Bool)

(declare-fun e!4188553 () Bool)

(assert (=> b!6967280 (= e!4188554 e!4188553)))

(declare-fun c!1291766 () Bool)

(assert (=> b!6967280 (= c!1291766 ((_ is EmptyLang!17119) (derivativeStep!5531 r!13765 (head!14015 s!9351))))))

(declare-fun b!6967281 () Bool)

(assert (=> b!6967281 (= e!4188553 (not lt!2479451))))

(declare-fun b!6967282 () Bool)

(declare-fun res!2842470 () Bool)

(assert (=> b!6967282 (=> res!2842470 e!4188557)))

(assert (=> b!6967282 (= res!2842470 (not (isEmpty!39001 (tail!13081 (tail!13081 s!9351)))))))

(declare-fun b!6967283 () Bool)

(declare-fun res!2842472 () Bool)

(assert (=> b!6967283 (=> res!2842472 e!4188551)))

(assert (=> b!6967283 (= res!2842472 (not ((_ is ElementMatch!17119) (derivativeStep!5531 r!13765 (head!14015 s!9351)))))))

(assert (=> b!6967283 (= e!4188553 e!4188551)))

(declare-fun b!6967284 () Bool)

(declare-fun res!2842468 () Bool)

(assert (=> b!6967284 (=> (not res!2842468) (not e!4188556))))

(declare-fun call!632465 () Bool)

(assert (=> b!6967284 (= res!2842468 (not call!632465))))

(declare-fun b!6967285 () Bool)

(assert (=> b!6967285 (= e!4188554 (= lt!2479451 call!632465))))

(declare-fun b!6967286 () Bool)

(assert (=> b!6967286 (= e!4188552 e!4188557)))

(declare-fun res!2842466 () Bool)

(assert (=> b!6967286 (=> res!2842466 e!4188557)))

(assert (=> b!6967286 (= res!2842466 call!632465)))

(declare-fun b!6967287 () Bool)

(assert (=> b!6967287 (= e!4188555 (matchR!9221 (derivativeStep!5531 (derivativeStep!5531 r!13765 (head!14015 s!9351)) (head!14015 (tail!13081 s!9351))) (tail!13081 (tail!13081 s!9351))))))

(declare-fun bm!632460 () Bool)

(assert (=> bm!632460 (= call!632465 (isEmpty!39001 (tail!13081 s!9351)))))

(declare-fun b!6967288 () Bool)

(declare-fun res!2842467 () Bool)

(assert (=> b!6967288 (=> res!2842467 e!4188551)))

(assert (=> b!6967288 (= res!2842467 e!4188556)))

(declare-fun res!2842471 () Bool)

(assert (=> b!6967288 (=> (not res!2842471) (not e!4188556))))

(assert (=> b!6967288 (= res!2842471 lt!2479451)))

(assert (= (and d!2170741 c!1291768) b!6967276))

(assert (= (and d!2170741 (not c!1291768)) b!6967287))

(assert (= (and d!2170741 c!1291767) b!6967285))

(assert (= (and d!2170741 (not c!1291767)) b!6967280))

(assert (= (and b!6967280 c!1291766) b!6967281))

(assert (= (and b!6967280 (not c!1291766)) b!6967283))

(assert (= (and b!6967283 (not res!2842472)) b!6967288))

(assert (= (and b!6967288 res!2842471) b!6967284))

(assert (= (and b!6967284 res!2842468) b!6967277))

(assert (= (and b!6967277 res!2842469) b!6967275))

(assert (= (and b!6967288 (not res!2842467)) b!6967279))

(assert (= (and b!6967279 res!2842473) b!6967286))

(assert (= (and b!6967286 (not res!2842466)) b!6967282))

(assert (= (and b!6967282 (not res!2842470)) b!6967278))

(assert (= (or b!6967285 b!6967284 b!6967286) bm!632460))

(assert (=> b!6967276 m!7658326))

(declare-fun m!7658528 () Bool)

(assert (=> b!6967276 m!7658528))

(assert (=> d!2170741 m!7658322))

(assert (=> d!2170741 m!7658324))

(assert (=> d!2170741 m!7658326))

(declare-fun m!7658530 () Bool)

(assert (=> d!2170741 m!7658530))

(assert (=> b!6967278 m!7658322))

(declare-fun m!7658532 () Bool)

(assert (=> b!6967278 m!7658532))

(assert (=> bm!632460 m!7658322))

(assert (=> bm!632460 m!7658324))

(assert (=> b!6967277 m!7658322))

(declare-fun m!7658534 () Bool)

(assert (=> b!6967277 m!7658534))

(assert (=> b!6967277 m!7658534))

(declare-fun m!7658536 () Bool)

(assert (=> b!6967277 m!7658536))

(assert (=> b!6967275 m!7658322))

(assert (=> b!6967275 m!7658532))

(assert (=> b!6967287 m!7658322))

(assert (=> b!6967287 m!7658532))

(assert (=> b!6967287 m!7658326))

(assert (=> b!6967287 m!7658532))

(declare-fun m!7658538 () Bool)

(assert (=> b!6967287 m!7658538))

(assert (=> b!6967287 m!7658322))

(assert (=> b!6967287 m!7658534))

(assert (=> b!6967287 m!7658538))

(assert (=> b!6967287 m!7658534))

(declare-fun m!7658540 () Bool)

(assert (=> b!6967287 m!7658540))

(assert (=> b!6967282 m!7658322))

(assert (=> b!6967282 m!7658534))

(assert (=> b!6967282 m!7658534))

(assert (=> b!6967282 m!7658536))

(assert (=> b!6966864 d!2170741))

(declare-fun d!2170743 () Bool)

(declare-fun lt!2479454 () Regex!17119)

(assert (=> d!2170743 (validRegex!8803 lt!2479454)))

(declare-fun e!4188569 () Regex!17119)

(assert (=> d!2170743 (= lt!2479454 e!4188569)))

(declare-fun c!1291779 () Bool)

(assert (=> d!2170743 (= c!1291779 (or ((_ is EmptyExpr!17119) r!13765) ((_ is EmptyLang!17119) r!13765)))))

(assert (=> d!2170743 (validRegex!8803 r!13765)))

(assert (=> d!2170743 (= (derivativeStep!5531 r!13765 (head!14015 s!9351)) lt!2479454)))

(declare-fun b!6967309 () Bool)

(declare-fun c!1291780 () Bool)

(assert (=> b!6967309 (= c!1291780 ((_ is Union!17119) r!13765))))

(declare-fun e!4188571 () Regex!17119)

(declare-fun e!4188570 () Regex!17119)

(assert (=> b!6967309 (= e!4188571 e!4188570)))

(declare-fun b!6967310 () Bool)

(declare-fun call!632476 () Regex!17119)

(declare-fun call!632474 () Regex!17119)

(assert (=> b!6967310 (= e!4188570 (Union!17119 call!632476 call!632474))))

(declare-fun bm!632469 () Bool)

(declare-fun call!632477 () Regex!17119)

(assert (=> bm!632469 (= call!632477 call!632476)))

(declare-fun b!6967311 () Bool)

(declare-fun e!4188572 () Regex!17119)

(assert (=> b!6967311 (= e!4188572 (Concat!25964 call!632477 r!13765))))

(declare-fun b!6967312 () Bool)

(assert (=> b!6967312 (= e!4188569 e!4188571)))

(declare-fun c!1291782 () Bool)

(assert (=> b!6967312 (= c!1291782 ((_ is ElementMatch!17119) r!13765))))

(declare-fun b!6967313 () Bool)

(assert (=> b!6967313 (= e!4188571 (ite (= (head!14015 s!9351) (c!1291625 r!13765)) EmptyExpr!17119 EmptyLang!17119))))

(declare-fun b!6967314 () Bool)

(assert (=> b!6967314 (= e!4188570 e!4188572)))

(declare-fun c!1291781 () Bool)

(assert (=> b!6967314 (= c!1291781 ((_ is Star!17119) r!13765))))

(declare-fun bm!632470 () Bool)

(declare-fun c!1291783 () Bool)

(assert (=> bm!632470 (= call!632474 (derivativeStep!5531 (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765))) (head!14015 s!9351)))))

(declare-fun b!6967315 () Bool)

(declare-fun e!4188568 () Regex!17119)

(declare-fun call!632475 () Regex!17119)

(assert (=> b!6967315 (= e!4188568 (Union!17119 (Concat!25964 call!632475 (regTwo!34750 r!13765)) EmptyLang!17119))))

(declare-fun b!6967316 () Bool)

(assert (=> b!6967316 (= e!4188569 EmptyLang!17119)))

(declare-fun bm!632471 () Bool)

(assert (=> bm!632471 (= call!632475 call!632474)))

(declare-fun b!6967317 () Bool)

(assert (=> b!6967317 (= c!1291783 (nullable!6906 (regOne!34750 r!13765)))))

(assert (=> b!6967317 (= e!4188572 e!4188568)))

(declare-fun b!6967318 () Bool)

(assert (=> b!6967318 (= e!4188568 (Union!17119 (Concat!25964 call!632477 (regTwo!34750 r!13765)) call!632475))))

(declare-fun bm!632472 () Bool)

(assert (=> bm!632472 (= call!632476 (derivativeStep!5531 (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765))) (head!14015 s!9351)))))

(assert (= (and d!2170743 c!1291779) b!6967316))

(assert (= (and d!2170743 (not c!1291779)) b!6967312))

(assert (= (and b!6967312 c!1291782) b!6967313))

(assert (= (and b!6967312 (not c!1291782)) b!6967309))

(assert (= (and b!6967309 c!1291780) b!6967310))

(assert (= (and b!6967309 (not c!1291780)) b!6967314))

(assert (= (and b!6967314 c!1291781) b!6967311))

(assert (= (and b!6967314 (not c!1291781)) b!6967317))

(assert (= (and b!6967317 c!1291783) b!6967318))

(assert (= (and b!6967317 (not c!1291783)) b!6967315))

(assert (= (or b!6967318 b!6967315) bm!632471))

(assert (= (or b!6967311 b!6967318) bm!632469))

(assert (= (or b!6967310 bm!632469) bm!632472))

(assert (= (or b!6967310 bm!632471) bm!632470))

(declare-fun m!7658542 () Bool)

(assert (=> d!2170743 m!7658542))

(assert (=> d!2170743 m!7658318))

(assert (=> bm!632470 m!7658320))

(declare-fun m!7658544 () Bool)

(assert (=> bm!632470 m!7658544))

(declare-fun m!7658546 () Bool)

(assert (=> b!6967317 m!7658546))

(assert (=> bm!632472 m!7658320))

(declare-fun m!7658548 () Bool)

(assert (=> bm!632472 m!7658548))

(assert (=> b!6966864 d!2170743))

(assert (=> b!6966864 d!2170691))

(assert (=> b!6966864 d!2170703))

(declare-fun bs!1858745 () Bool)

(declare-fun d!2170745 () Bool)

(assert (= bs!1858745 (and d!2170745 d!2170603)))

(declare-fun lambda!397566 () Int)

(assert (=> bs!1858745 (not (= lambda!397566 lambda!397556))))

(declare-fun bs!1858746 () Bool)

(assert (= bs!1858746 (and d!2170745 d!2170585)))

(assert (=> bs!1858746 (= lambda!397566 lambda!397540)))

(declare-fun bs!1858747 () Bool)

(assert (= bs!1858747 (and d!2170745 d!2170721)))

(assert (=> bs!1858747 (= lambda!397566 lambda!397563)))

(declare-fun bs!1858748 () Bool)

(assert (= bs!1858748 (and d!2170745 b!6966548)))

(assert (=> bs!1858748 (not (= lambda!397566 lambda!397530))))

(declare-fun bs!1858749 () Bool)

(assert (= bs!1858749 (and d!2170745 d!2170569)))

(assert (=> bs!1858749 (= lambda!397566 lambda!397539)))

(declare-fun bs!1858750 () Bool)

(assert (= bs!1858750 (and d!2170745 start!668274)))

(assert (=> bs!1858750 (= lambda!397566 lambda!397529)))

(declare-fun b!6967319 () Bool)

(declare-fun e!4188574 () Regex!17119)

(declare-fun e!4188575 () Regex!17119)

(assert (=> b!6967319 (= e!4188574 e!4188575)))

(declare-fun c!1291787 () Bool)

(assert (=> b!6967319 (= c!1291787 ((_ is Cons!66795) (t!380662 l!9142)))))

(declare-fun b!6967321 () Bool)

(assert (=> b!6967321 (= e!4188574 (h!73243 (t!380662 l!9142)))))

(declare-fun b!6967322 () Bool)

(declare-fun e!4188576 () Bool)

(declare-fun lt!2479455 () Regex!17119)

(assert (=> b!6967322 (= e!4188576 (isEmptyLang!2059 lt!2479455))))

(declare-fun b!6967323 () Bool)

(declare-fun e!4188577 () Bool)

(assert (=> b!6967323 (= e!4188577 (isEmpty!38999 (t!380662 (t!380662 l!9142))))))

(declare-fun b!6967324 () Bool)

(declare-fun e!4188573 () Bool)

(assert (=> b!6967324 (= e!4188576 e!4188573)))

(declare-fun c!1291784 () Bool)

(assert (=> b!6967324 (= c!1291784 (isEmpty!38999 (tail!13079 (t!380662 l!9142))))))

(declare-fun b!6967325 () Bool)

(assert (=> b!6967325 (= e!4188575 EmptyLang!17119)))

(declare-fun b!6967326 () Bool)

(assert (=> b!6967326 (= e!4188573 (= lt!2479455 (head!14014 (t!380662 l!9142))))))

(declare-fun e!4188578 () Bool)

(assert (=> d!2170745 e!4188578))

(declare-fun res!2842475 () Bool)

(assert (=> d!2170745 (=> (not res!2842475) (not e!4188578))))

(assert (=> d!2170745 (= res!2842475 (validRegex!8803 lt!2479455))))

(assert (=> d!2170745 (= lt!2479455 e!4188574)))

(declare-fun c!1291785 () Bool)

(assert (=> d!2170745 (= c!1291785 e!4188577)))

(declare-fun res!2842474 () Bool)

(assert (=> d!2170745 (=> (not res!2842474) (not e!4188577))))

(assert (=> d!2170745 (= res!2842474 ((_ is Cons!66795) (t!380662 l!9142)))))

(assert (=> d!2170745 (forall!15990 (t!380662 l!9142) lambda!397566)))

(assert (=> d!2170745 (= (generalisedUnion!2594 (t!380662 l!9142)) lt!2479455)))

(declare-fun b!6967320 () Bool)

(assert (=> b!6967320 (= e!4188573 (isUnion!1487 lt!2479455))))

(declare-fun b!6967327 () Bool)

(assert (=> b!6967327 (= e!4188578 e!4188576)))

(declare-fun c!1291786 () Bool)

(assert (=> b!6967327 (= c!1291786 (isEmpty!38999 (t!380662 l!9142)))))

(declare-fun b!6967328 () Bool)

(assert (=> b!6967328 (= e!4188575 (Union!17119 (h!73243 (t!380662 l!9142)) (generalisedUnion!2594 (t!380662 (t!380662 l!9142)))))))

(assert (= (and d!2170745 res!2842474) b!6967323))

(assert (= (and d!2170745 c!1291785) b!6967321))

(assert (= (and d!2170745 (not c!1291785)) b!6967319))

(assert (= (and b!6967319 c!1291787) b!6967328))

(assert (= (and b!6967319 (not c!1291787)) b!6967325))

(assert (= (and d!2170745 res!2842475) b!6967327))

(assert (= (and b!6967327 c!1291786) b!6967322))

(assert (= (and b!6967327 (not c!1291786)) b!6967324))

(assert (= (and b!6967324 c!1291784) b!6967326))

(assert (= (and b!6967324 (not c!1291784)) b!6967320))

(declare-fun m!7658550 () Bool)

(assert (=> b!6967326 m!7658550))

(declare-fun m!7658552 () Bool)

(assert (=> b!6967320 m!7658552))

(declare-fun m!7658554 () Bool)

(assert (=> d!2170745 m!7658554))

(declare-fun m!7658556 () Bool)

(assert (=> d!2170745 m!7658556))

(declare-fun m!7658558 () Bool)

(assert (=> b!6967323 m!7658558))

(assert (=> b!6967327 m!7658258))

(declare-fun m!7658560 () Bool)

(assert (=> b!6967324 m!7658560))

(assert (=> b!6967324 m!7658560))

(declare-fun m!7658562 () Bool)

(assert (=> b!6967324 m!7658562))

(declare-fun m!7658564 () Bool)

(assert (=> b!6967322 m!7658564))

(declare-fun m!7658566 () Bool)

(assert (=> b!6967328 m!7658566))

(assert (=> b!6966633 d!2170745))

(assert (=> bm!632404 d!2170705))

(declare-fun bs!1858751 () Bool)

(declare-fun b!6967339 () Bool)

(assert (= bs!1858751 (and b!6967339 b!6966819)))

(declare-fun lambda!397567 () Int)

(assert (=> bs!1858751 (= (and (= (reg!17448 (regOne!34751 r!13765)) (reg!17448 r!13765)) (= (regOne!34751 r!13765) r!13765)) (= lambda!397567 lambda!397552))))

(declare-fun bs!1858752 () Bool)

(assert (= bs!1858752 (and b!6967339 b!6966809)))

(assert (=> bs!1858752 (not (= lambda!397567 lambda!397553))))

(declare-fun bs!1858753 () Bool)

(assert (= bs!1858753 (and b!6967339 b!6967261)))

(assert (=> bs!1858753 (= (and (= (reg!17448 (regOne!34751 r!13765)) (reg!17448 (regTwo!34751 r!13765))) (= (regOne!34751 r!13765) (regTwo!34751 r!13765))) (= lambda!397567 lambda!397564))))

(declare-fun bs!1858754 () Bool)

(assert (= bs!1858754 (and b!6967339 b!6967251)))

(assert (=> bs!1858754 (not (= lambda!397567 lambda!397565))))

(assert (=> b!6967339 true))

(assert (=> b!6967339 true))

(declare-fun bs!1858755 () Bool)

(declare-fun b!6967329 () Bool)

(assert (= bs!1858755 (and b!6967329 b!6966819)))

(declare-fun lambda!397568 () Int)

(assert (=> bs!1858755 (not (= lambda!397568 lambda!397552))))

(declare-fun bs!1858756 () Bool)

(assert (= bs!1858756 (and b!6967329 b!6967261)))

(assert (=> bs!1858756 (not (= lambda!397568 lambda!397564))))

(declare-fun bs!1858757 () Bool)

(assert (= bs!1858757 (and b!6967329 b!6966809)))

(assert (=> bs!1858757 (= (and (= (regOne!34750 (regOne!34751 r!13765)) (regOne!34750 r!13765)) (= (regTwo!34750 (regOne!34751 r!13765)) (regTwo!34750 r!13765))) (= lambda!397568 lambda!397553))))

(declare-fun bs!1858758 () Bool)

(assert (= bs!1858758 (and b!6967329 b!6967251)))

(assert (=> bs!1858758 (= (and (= (regOne!34750 (regOne!34751 r!13765)) (regOne!34750 (regTwo!34751 r!13765))) (= (regTwo!34750 (regOne!34751 r!13765)) (regTwo!34750 (regTwo!34751 r!13765)))) (= lambda!397568 lambda!397565))))

(declare-fun bs!1858759 () Bool)

(assert (= bs!1858759 (and b!6967329 b!6967339)))

(assert (=> bs!1858759 (not (= lambda!397568 lambda!397567))))

(assert (=> b!6967329 true))

(assert (=> b!6967329 true))

(declare-fun e!4188581 () Bool)

(declare-fun call!632479 () Bool)

(assert (=> b!6967329 (= e!4188581 call!632479)))

(declare-fun b!6967330 () Bool)

(declare-fun e!4188583 () Bool)

(assert (=> b!6967330 (= e!4188583 (matchRSpec!4136 (regTwo!34751 (regOne!34751 r!13765)) s!9351))))

(declare-fun bm!632473 () Bool)

(declare-fun call!632478 () Bool)

(assert (=> bm!632473 (= call!632478 (isEmpty!39001 s!9351))))

(declare-fun b!6967332 () Bool)

(declare-fun e!4188585 () Bool)

(assert (=> b!6967332 (= e!4188585 e!4188583)))

(declare-fun res!2842478 () Bool)

(assert (=> b!6967332 (= res!2842478 (matchRSpec!4136 (regOne!34751 (regOne!34751 r!13765)) s!9351))))

(assert (=> b!6967332 (=> res!2842478 e!4188583)))

(declare-fun b!6967333 () Bool)

(declare-fun e!4188582 () Bool)

(declare-fun e!4188580 () Bool)

(assert (=> b!6967333 (= e!4188582 e!4188580)))

(declare-fun res!2842476 () Bool)

(assert (=> b!6967333 (= res!2842476 (not ((_ is EmptyLang!17119) (regOne!34751 r!13765))))))

(assert (=> b!6967333 (=> (not res!2842476) (not e!4188580))))

(declare-fun b!6967334 () Bool)

(declare-fun e!4188579 () Bool)

(assert (=> b!6967334 (= e!4188579 (= s!9351 (Cons!66796 (c!1291625 (regOne!34751 r!13765)) Nil!66796)))))

(declare-fun b!6967335 () Bool)

(declare-fun c!1291791 () Bool)

(assert (=> b!6967335 (= c!1291791 ((_ is ElementMatch!17119) (regOne!34751 r!13765)))))

(assert (=> b!6967335 (= e!4188580 e!4188579)))

(declare-fun b!6967336 () Bool)

(declare-fun c!1291788 () Bool)

(assert (=> b!6967336 (= c!1291788 ((_ is Union!17119) (regOne!34751 r!13765)))))

(assert (=> b!6967336 (= e!4188579 e!4188585)))

(declare-fun b!6967337 () Bool)

(declare-fun res!2842477 () Bool)

(declare-fun e!4188584 () Bool)

(assert (=> b!6967337 (=> res!2842477 e!4188584)))

(assert (=> b!6967337 (= res!2842477 call!632478)))

(assert (=> b!6967337 (= e!4188581 e!4188584)))

(declare-fun b!6967338 () Bool)

(assert (=> b!6967338 (= e!4188582 call!632478)))

(declare-fun c!1291789 () Bool)

(declare-fun bm!632474 () Bool)

(assert (=> bm!632474 (= call!632479 (Exists!4084 (ite c!1291789 lambda!397567 lambda!397568)))))

(assert (=> b!6967339 (= e!4188584 call!632479)))

(declare-fun d!2170747 () Bool)

(declare-fun c!1291790 () Bool)

(assert (=> d!2170747 (= c!1291790 ((_ is EmptyExpr!17119) (regOne!34751 r!13765)))))

(assert (=> d!2170747 (= (matchRSpec!4136 (regOne!34751 r!13765) s!9351) e!4188582)))

(declare-fun b!6967331 () Bool)

(assert (=> b!6967331 (= e!4188585 e!4188581)))

(assert (=> b!6967331 (= c!1291789 ((_ is Star!17119) (regOne!34751 r!13765)))))

(assert (= (and d!2170747 c!1291790) b!6967338))

(assert (= (and d!2170747 (not c!1291790)) b!6967333))

(assert (= (and b!6967333 res!2842476) b!6967335))

(assert (= (and b!6967335 c!1291791) b!6967334))

(assert (= (and b!6967335 (not c!1291791)) b!6967336))

(assert (= (and b!6967336 c!1291788) b!6967332))

(assert (= (and b!6967336 (not c!1291788)) b!6967331))

(assert (= (and b!6967332 (not res!2842478)) b!6967330))

(assert (= (and b!6967331 c!1291789) b!6967337))

(assert (= (and b!6967331 (not c!1291789)) b!6967329))

(assert (= (and b!6967337 (not res!2842477)) b!6967339))

(assert (= (or b!6967339 b!6967329) bm!632474))

(assert (= (or b!6967338 b!6967337) bm!632473))

(declare-fun m!7658568 () Bool)

(assert (=> b!6967330 m!7658568))

(assert (=> bm!632473 m!7658310))

(declare-fun m!7658570 () Bool)

(assert (=> b!6967332 m!7658570))

(declare-fun m!7658572 () Bool)

(assert (=> bm!632474 m!7658572))

(assert (=> b!6966812 d!2170747))

(declare-fun e!4188586 () Bool)

(assert (=> b!6966887 (= tp!1921487 e!4188586)))

(declare-fun b!6967343 () Bool)

(declare-fun tp!1921684 () Bool)

(declare-fun tp!1921683 () Bool)

(assert (=> b!6967343 (= e!4188586 (and tp!1921684 tp!1921683))))

(declare-fun b!6967341 () Bool)

(declare-fun tp!1921681 () Bool)

(declare-fun tp!1921680 () Bool)

(assert (=> b!6967341 (= e!4188586 (and tp!1921681 tp!1921680))))

(declare-fun b!6967340 () Bool)

(assert (=> b!6967340 (= e!4188586 tp_is_empty!43463)))

(declare-fun b!6967342 () Bool)

(declare-fun tp!1921682 () Bool)

(assert (=> b!6967342 (= e!4188586 tp!1921682)))

(assert (= (and b!6966887 ((_ is ElementMatch!17119) (regOne!34751 (reg!17448 r!13765)))) b!6967340))

(assert (= (and b!6966887 ((_ is Concat!25964) (regOne!34751 (reg!17448 r!13765)))) b!6967341))

(assert (= (and b!6966887 ((_ is Star!17119) (regOne!34751 (reg!17448 r!13765)))) b!6967342))

(assert (= (and b!6966887 ((_ is Union!17119) (regOne!34751 (reg!17448 r!13765)))) b!6967343))

(declare-fun e!4188587 () Bool)

(assert (=> b!6966887 (= tp!1921486 e!4188587)))

(declare-fun b!6967347 () Bool)

(declare-fun tp!1921689 () Bool)

(declare-fun tp!1921688 () Bool)

(assert (=> b!6967347 (= e!4188587 (and tp!1921689 tp!1921688))))

(declare-fun b!6967345 () Bool)

(declare-fun tp!1921686 () Bool)

(declare-fun tp!1921685 () Bool)

(assert (=> b!6967345 (= e!4188587 (and tp!1921686 tp!1921685))))

(declare-fun b!6967344 () Bool)

(assert (=> b!6967344 (= e!4188587 tp_is_empty!43463)))

(declare-fun b!6967346 () Bool)

(declare-fun tp!1921687 () Bool)

(assert (=> b!6967346 (= e!4188587 tp!1921687)))

(assert (= (and b!6966887 ((_ is ElementMatch!17119) (regTwo!34751 (reg!17448 r!13765)))) b!6967344))

(assert (= (and b!6966887 ((_ is Concat!25964) (regTwo!34751 (reg!17448 r!13765)))) b!6967345))

(assert (= (and b!6966887 ((_ is Star!17119) (regTwo!34751 (reg!17448 r!13765)))) b!6967346))

(assert (= (and b!6966887 ((_ is Union!17119) (regTwo!34751 (reg!17448 r!13765)))) b!6967347))

(declare-fun e!4188588 () Bool)

(assert (=> b!6966912 (= tp!1921517 e!4188588)))

(declare-fun b!6967351 () Bool)

(declare-fun tp!1921694 () Bool)

(declare-fun tp!1921693 () Bool)

(assert (=> b!6967351 (= e!4188588 (and tp!1921694 tp!1921693))))

(declare-fun b!6967349 () Bool)

(declare-fun tp!1921691 () Bool)

(declare-fun tp!1921690 () Bool)

(assert (=> b!6967349 (= e!4188588 (and tp!1921691 tp!1921690))))

(declare-fun b!6967348 () Bool)

(assert (=> b!6967348 (= e!4188588 tp_is_empty!43463)))

(declare-fun b!6967350 () Bool)

(declare-fun tp!1921692 () Bool)

(assert (=> b!6967350 (= e!4188588 tp!1921692)))

(assert (= (and b!6966912 ((_ is ElementMatch!17119) (h!73243 (t!380662 l!9142)))) b!6967348))

(assert (= (and b!6966912 ((_ is Concat!25964) (h!73243 (t!380662 l!9142)))) b!6967349))

(assert (= (and b!6966912 ((_ is Star!17119) (h!73243 (t!380662 l!9142)))) b!6967350))

(assert (= (and b!6966912 ((_ is Union!17119) (h!73243 (t!380662 l!9142)))) b!6967351))

(declare-fun b!6967352 () Bool)

(declare-fun e!4188589 () Bool)

(declare-fun tp!1921695 () Bool)

(declare-fun tp!1921696 () Bool)

(assert (=> b!6967352 (= e!4188589 (and tp!1921695 tp!1921696))))

(assert (=> b!6966912 (= tp!1921518 e!4188589)))

(assert (= (and b!6966912 ((_ is Cons!66795) (t!380662 (t!380662 l!9142)))) b!6967352))

(declare-fun e!4188590 () Bool)

(assert (=> b!6966901 (= tp!1921504 e!4188590)))

(declare-fun b!6967356 () Bool)

(declare-fun tp!1921701 () Bool)

(declare-fun tp!1921700 () Bool)

(assert (=> b!6967356 (= e!4188590 (and tp!1921701 tp!1921700))))

(declare-fun b!6967354 () Bool)

(declare-fun tp!1921698 () Bool)

(declare-fun tp!1921697 () Bool)

(assert (=> b!6967354 (= e!4188590 (and tp!1921698 tp!1921697))))

(declare-fun b!6967353 () Bool)

(assert (=> b!6967353 (= e!4188590 tp_is_empty!43463)))

(declare-fun b!6967355 () Bool)

(declare-fun tp!1921699 () Bool)

(assert (=> b!6967355 (= e!4188590 tp!1921699)))

(assert (= (and b!6966901 ((_ is ElementMatch!17119) (regOne!34750 (regTwo!34751 r!13765)))) b!6967353))

(assert (= (and b!6966901 ((_ is Concat!25964) (regOne!34750 (regTwo!34751 r!13765)))) b!6967354))

(assert (= (and b!6966901 ((_ is Star!17119) (regOne!34750 (regTwo!34751 r!13765)))) b!6967355))

(assert (= (and b!6966901 ((_ is Union!17119) (regOne!34750 (regTwo!34751 r!13765)))) b!6967356))

(declare-fun e!4188591 () Bool)

(assert (=> b!6966901 (= tp!1921503 e!4188591)))

(declare-fun b!6967360 () Bool)

(declare-fun tp!1921706 () Bool)

(declare-fun tp!1921705 () Bool)

(assert (=> b!6967360 (= e!4188591 (and tp!1921706 tp!1921705))))

(declare-fun b!6967358 () Bool)

(declare-fun tp!1921703 () Bool)

(declare-fun tp!1921702 () Bool)

(assert (=> b!6967358 (= e!4188591 (and tp!1921703 tp!1921702))))

(declare-fun b!6967357 () Bool)

(assert (=> b!6967357 (= e!4188591 tp_is_empty!43463)))

(declare-fun b!6967359 () Bool)

(declare-fun tp!1921704 () Bool)

(assert (=> b!6967359 (= e!4188591 tp!1921704)))

(assert (= (and b!6966901 ((_ is ElementMatch!17119) (regTwo!34750 (regTwo!34751 r!13765)))) b!6967357))

(assert (= (and b!6966901 ((_ is Concat!25964) (regTwo!34750 (regTwo!34751 r!13765)))) b!6967358))

(assert (= (and b!6966901 ((_ is Star!17119) (regTwo!34750 (regTwo!34751 r!13765)))) b!6967359))

(assert (= (and b!6966901 ((_ is Union!17119) (regTwo!34750 (regTwo!34751 r!13765)))) b!6967360))

(declare-fun e!4188592 () Bool)

(assert (=> b!6966906 (= tp!1921510 e!4188592)))

(declare-fun b!6967364 () Bool)

(declare-fun tp!1921711 () Bool)

(declare-fun tp!1921710 () Bool)

(assert (=> b!6967364 (= e!4188592 (and tp!1921711 tp!1921710))))

(declare-fun b!6967362 () Bool)

(declare-fun tp!1921708 () Bool)

(declare-fun tp!1921707 () Bool)

(assert (=> b!6967362 (= e!4188592 (and tp!1921708 tp!1921707))))

(declare-fun b!6967361 () Bool)

(assert (=> b!6967361 (= e!4188592 tp_is_empty!43463)))

(declare-fun b!6967363 () Bool)

(declare-fun tp!1921709 () Bool)

(assert (=> b!6967363 (= e!4188592 tp!1921709)))

(assert (= (and b!6966906 ((_ is ElementMatch!17119) (reg!17448 (h!73243 l!9142)))) b!6967361))

(assert (= (and b!6966906 ((_ is Concat!25964) (reg!17448 (h!73243 l!9142)))) b!6967362))

(assert (= (and b!6966906 ((_ is Star!17119) (reg!17448 (h!73243 l!9142)))) b!6967363))

(assert (= (and b!6966906 ((_ is Union!17119) (reg!17448 (h!73243 l!9142)))) b!6967364))

(declare-fun e!4188593 () Bool)

(assert (=> b!6966905 (= tp!1921509 e!4188593)))

(declare-fun b!6967368 () Bool)

(declare-fun tp!1921716 () Bool)

(declare-fun tp!1921715 () Bool)

(assert (=> b!6967368 (= e!4188593 (and tp!1921716 tp!1921715))))

(declare-fun b!6967366 () Bool)

(declare-fun tp!1921713 () Bool)

(declare-fun tp!1921712 () Bool)

(assert (=> b!6967366 (= e!4188593 (and tp!1921713 tp!1921712))))

(declare-fun b!6967365 () Bool)

(assert (=> b!6967365 (= e!4188593 tp_is_empty!43463)))

(declare-fun b!6967367 () Bool)

(declare-fun tp!1921714 () Bool)

(assert (=> b!6967367 (= e!4188593 tp!1921714)))

(assert (= (and b!6966905 ((_ is ElementMatch!17119) (regOne!34750 (h!73243 l!9142)))) b!6967365))

(assert (= (and b!6966905 ((_ is Concat!25964) (regOne!34750 (h!73243 l!9142)))) b!6967366))

(assert (= (and b!6966905 ((_ is Star!17119) (regOne!34750 (h!73243 l!9142)))) b!6967367))

(assert (= (and b!6966905 ((_ is Union!17119) (regOne!34750 (h!73243 l!9142)))) b!6967368))

(declare-fun e!4188594 () Bool)

(assert (=> b!6966905 (= tp!1921508 e!4188594)))

(declare-fun b!6967372 () Bool)

(declare-fun tp!1921721 () Bool)

(declare-fun tp!1921720 () Bool)

(assert (=> b!6967372 (= e!4188594 (and tp!1921721 tp!1921720))))

(declare-fun b!6967370 () Bool)

(declare-fun tp!1921718 () Bool)

(declare-fun tp!1921717 () Bool)

(assert (=> b!6967370 (= e!4188594 (and tp!1921718 tp!1921717))))

(declare-fun b!6967369 () Bool)

(assert (=> b!6967369 (= e!4188594 tp_is_empty!43463)))

(declare-fun b!6967371 () Bool)

(declare-fun tp!1921719 () Bool)

(assert (=> b!6967371 (= e!4188594 tp!1921719)))

(assert (= (and b!6966905 ((_ is ElementMatch!17119) (regTwo!34750 (h!73243 l!9142)))) b!6967369))

(assert (= (and b!6966905 ((_ is Concat!25964) (regTwo!34750 (h!73243 l!9142)))) b!6967370))

(assert (= (and b!6966905 ((_ is Star!17119) (regTwo!34750 (h!73243 l!9142)))) b!6967371))

(assert (= (and b!6966905 ((_ is Union!17119) (regTwo!34750 (h!73243 l!9142)))) b!6967372))

(declare-fun e!4188595 () Bool)

(assert (=> b!6966893 (= tp!1921494 e!4188595)))

(declare-fun b!6967376 () Bool)

(declare-fun tp!1921726 () Bool)

(declare-fun tp!1921725 () Bool)

(assert (=> b!6967376 (= e!4188595 (and tp!1921726 tp!1921725))))

(declare-fun b!6967374 () Bool)

(declare-fun tp!1921723 () Bool)

(declare-fun tp!1921722 () Bool)

(assert (=> b!6967374 (= e!4188595 (and tp!1921723 tp!1921722))))

(declare-fun b!6967373 () Bool)

(assert (=> b!6967373 (= e!4188595 tp_is_empty!43463)))

(declare-fun b!6967375 () Bool)

(declare-fun tp!1921724 () Bool)

(assert (=> b!6967375 (= e!4188595 tp!1921724)))

(assert (= (and b!6966893 ((_ is ElementMatch!17119) (regOne!34750 (regTwo!34750 r!13765)))) b!6967373))

(assert (= (and b!6966893 ((_ is Concat!25964) (regOne!34750 (regTwo!34750 r!13765)))) b!6967374))

(assert (= (and b!6966893 ((_ is Star!17119) (regOne!34750 (regTwo!34750 r!13765)))) b!6967375))

(assert (= (and b!6966893 ((_ is Union!17119) (regOne!34750 (regTwo!34750 r!13765)))) b!6967376))

(declare-fun e!4188596 () Bool)

(assert (=> b!6966893 (= tp!1921493 e!4188596)))

(declare-fun b!6967380 () Bool)

(declare-fun tp!1921731 () Bool)

(declare-fun tp!1921730 () Bool)

(assert (=> b!6967380 (= e!4188596 (and tp!1921731 tp!1921730))))

(declare-fun b!6967378 () Bool)

(declare-fun tp!1921728 () Bool)

(declare-fun tp!1921727 () Bool)

(assert (=> b!6967378 (= e!4188596 (and tp!1921728 tp!1921727))))

(declare-fun b!6967377 () Bool)

(assert (=> b!6967377 (= e!4188596 tp_is_empty!43463)))

(declare-fun b!6967379 () Bool)

(declare-fun tp!1921729 () Bool)

(assert (=> b!6967379 (= e!4188596 tp!1921729)))

(assert (= (and b!6966893 ((_ is ElementMatch!17119) (regTwo!34750 (regTwo!34750 r!13765)))) b!6967377))

(assert (= (and b!6966893 ((_ is Concat!25964) (regTwo!34750 (regTwo!34750 r!13765)))) b!6967378))

(assert (= (and b!6966893 ((_ is Star!17119) (regTwo!34750 (regTwo!34750 r!13765)))) b!6967379))

(assert (= (and b!6966893 ((_ is Union!17119) (regTwo!34750 (regTwo!34750 r!13765)))) b!6967380))

(declare-fun e!4188597 () Bool)

(assert (=> b!6966907 (= tp!1921512 e!4188597)))

(declare-fun b!6967384 () Bool)

(declare-fun tp!1921736 () Bool)

(declare-fun tp!1921735 () Bool)

(assert (=> b!6967384 (= e!4188597 (and tp!1921736 tp!1921735))))

(declare-fun b!6967382 () Bool)

(declare-fun tp!1921733 () Bool)

(declare-fun tp!1921732 () Bool)

(assert (=> b!6967382 (= e!4188597 (and tp!1921733 tp!1921732))))

(declare-fun b!6967381 () Bool)

(assert (=> b!6967381 (= e!4188597 tp_is_empty!43463)))

(declare-fun b!6967383 () Bool)

(declare-fun tp!1921734 () Bool)

(assert (=> b!6967383 (= e!4188597 tp!1921734)))

(assert (= (and b!6966907 ((_ is ElementMatch!17119) (regOne!34751 (h!73243 l!9142)))) b!6967381))

(assert (= (and b!6966907 ((_ is Concat!25964) (regOne!34751 (h!73243 l!9142)))) b!6967382))

(assert (= (and b!6966907 ((_ is Star!17119) (regOne!34751 (h!73243 l!9142)))) b!6967383))

(assert (= (and b!6966907 ((_ is Union!17119) (regOne!34751 (h!73243 l!9142)))) b!6967384))

(declare-fun e!4188598 () Bool)

(assert (=> b!6966907 (= tp!1921511 e!4188598)))

(declare-fun b!6967388 () Bool)

(declare-fun tp!1921741 () Bool)

(declare-fun tp!1921740 () Bool)

(assert (=> b!6967388 (= e!4188598 (and tp!1921741 tp!1921740))))

(declare-fun b!6967386 () Bool)

(declare-fun tp!1921738 () Bool)

(declare-fun tp!1921737 () Bool)

(assert (=> b!6967386 (= e!4188598 (and tp!1921738 tp!1921737))))

(declare-fun b!6967385 () Bool)

(assert (=> b!6967385 (= e!4188598 tp_is_empty!43463)))

(declare-fun b!6967387 () Bool)

(declare-fun tp!1921739 () Bool)

(assert (=> b!6967387 (= e!4188598 tp!1921739)))

(assert (= (and b!6966907 ((_ is ElementMatch!17119) (regTwo!34751 (h!73243 l!9142)))) b!6967385))

(assert (= (and b!6966907 ((_ is Concat!25964) (regTwo!34751 (h!73243 l!9142)))) b!6967386))

(assert (= (and b!6966907 ((_ is Star!17119) (regTwo!34751 (h!73243 l!9142)))) b!6967387))

(assert (= (and b!6966907 ((_ is Union!17119) (regTwo!34751 (h!73243 l!9142)))) b!6967388))

(declare-fun e!4188599 () Bool)

(assert (=> b!6966898 (= tp!1921500 e!4188599)))

(declare-fun b!6967392 () Bool)

(declare-fun tp!1921746 () Bool)

(declare-fun tp!1921745 () Bool)

(assert (=> b!6967392 (= e!4188599 (and tp!1921746 tp!1921745))))

(declare-fun b!6967390 () Bool)

(declare-fun tp!1921743 () Bool)

(declare-fun tp!1921742 () Bool)

(assert (=> b!6967390 (= e!4188599 (and tp!1921743 tp!1921742))))

(declare-fun b!6967389 () Bool)

(assert (=> b!6967389 (= e!4188599 tp_is_empty!43463)))

(declare-fun b!6967391 () Bool)

(declare-fun tp!1921744 () Bool)

(assert (=> b!6967391 (= e!4188599 tp!1921744)))

(assert (= (and b!6966898 ((_ is ElementMatch!17119) (reg!17448 (regOne!34751 r!13765)))) b!6967389))

(assert (= (and b!6966898 ((_ is Concat!25964) (reg!17448 (regOne!34751 r!13765)))) b!6967390))

(assert (= (and b!6966898 ((_ is Star!17119) (reg!17448 (regOne!34751 r!13765)))) b!6967391))

(assert (= (and b!6966898 ((_ is Union!17119) (reg!17448 (regOne!34751 r!13765)))) b!6967392))

(declare-fun e!4188600 () Bool)

(assert (=> b!6966897 (= tp!1921499 e!4188600)))

(declare-fun b!6967396 () Bool)

(declare-fun tp!1921751 () Bool)

(declare-fun tp!1921750 () Bool)

(assert (=> b!6967396 (= e!4188600 (and tp!1921751 tp!1921750))))

(declare-fun b!6967394 () Bool)

(declare-fun tp!1921748 () Bool)

(declare-fun tp!1921747 () Bool)

(assert (=> b!6967394 (= e!4188600 (and tp!1921748 tp!1921747))))

(declare-fun b!6967393 () Bool)

(assert (=> b!6967393 (= e!4188600 tp_is_empty!43463)))

(declare-fun b!6967395 () Bool)

(declare-fun tp!1921749 () Bool)

(assert (=> b!6967395 (= e!4188600 tp!1921749)))

(assert (= (and b!6966897 ((_ is ElementMatch!17119) (regOne!34750 (regOne!34751 r!13765)))) b!6967393))

(assert (= (and b!6966897 ((_ is Concat!25964) (regOne!34750 (regOne!34751 r!13765)))) b!6967394))

(assert (= (and b!6966897 ((_ is Star!17119) (regOne!34750 (regOne!34751 r!13765)))) b!6967395))

(assert (= (and b!6966897 ((_ is Union!17119) (regOne!34750 (regOne!34751 r!13765)))) b!6967396))

(declare-fun e!4188601 () Bool)

(assert (=> b!6966897 (= tp!1921498 e!4188601)))

(declare-fun b!6967400 () Bool)

(declare-fun tp!1921756 () Bool)

(declare-fun tp!1921755 () Bool)

(assert (=> b!6967400 (= e!4188601 (and tp!1921756 tp!1921755))))

(declare-fun b!6967398 () Bool)

(declare-fun tp!1921753 () Bool)

(declare-fun tp!1921752 () Bool)

(assert (=> b!6967398 (= e!4188601 (and tp!1921753 tp!1921752))))

(declare-fun b!6967397 () Bool)

(assert (=> b!6967397 (= e!4188601 tp_is_empty!43463)))

(declare-fun b!6967399 () Bool)

(declare-fun tp!1921754 () Bool)

(assert (=> b!6967399 (= e!4188601 tp!1921754)))

(assert (= (and b!6966897 ((_ is ElementMatch!17119) (regTwo!34750 (regOne!34751 r!13765)))) b!6967397))

(assert (= (and b!6966897 ((_ is Concat!25964) (regTwo!34750 (regOne!34751 r!13765)))) b!6967398))

(assert (= (and b!6966897 ((_ is Star!17119) (regTwo!34750 (regOne!34751 r!13765)))) b!6967399))

(assert (= (and b!6966897 ((_ is Union!17119) (regTwo!34750 (regOne!34751 r!13765)))) b!6967400))

(declare-fun e!4188602 () Bool)

(assert (=> b!6966902 (= tp!1921505 e!4188602)))

(declare-fun b!6967404 () Bool)

(declare-fun tp!1921761 () Bool)

(declare-fun tp!1921760 () Bool)

(assert (=> b!6967404 (= e!4188602 (and tp!1921761 tp!1921760))))

(declare-fun b!6967402 () Bool)

(declare-fun tp!1921758 () Bool)

(declare-fun tp!1921757 () Bool)

(assert (=> b!6967402 (= e!4188602 (and tp!1921758 tp!1921757))))

(declare-fun b!6967401 () Bool)

(assert (=> b!6967401 (= e!4188602 tp_is_empty!43463)))

(declare-fun b!6967403 () Bool)

(declare-fun tp!1921759 () Bool)

(assert (=> b!6967403 (= e!4188602 tp!1921759)))

(assert (= (and b!6966902 ((_ is ElementMatch!17119) (reg!17448 (regTwo!34751 r!13765)))) b!6967401))

(assert (= (and b!6966902 ((_ is Concat!25964) (reg!17448 (regTwo!34751 r!13765)))) b!6967402))

(assert (= (and b!6966902 ((_ is Star!17119) (reg!17448 (regTwo!34751 r!13765)))) b!6967403))

(assert (= (and b!6966902 ((_ is Union!17119) (reg!17448 (regTwo!34751 r!13765)))) b!6967404))

(declare-fun e!4188603 () Bool)

(assert (=> b!6966885 (= tp!1921484 e!4188603)))

(declare-fun b!6967408 () Bool)

(declare-fun tp!1921766 () Bool)

(declare-fun tp!1921765 () Bool)

(assert (=> b!6967408 (= e!4188603 (and tp!1921766 tp!1921765))))

(declare-fun b!6967406 () Bool)

(declare-fun tp!1921763 () Bool)

(declare-fun tp!1921762 () Bool)

(assert (=> b!6967406 (= e!4188603 (and tp!1921763 tp!1921762))))

(declare-fun b!6967405 () Bool)

(assert (=> b!6967405 (= e!4188603 tp_is_empty!43463)))

(declare-fun b!6967407 () Bool)

(declare-fun tp!1921764 () Bool)

(assert (=> b!6967407 (= e!4188603 tp!1921764)))

(assert (= (and b!6966885 ((_ is ElementMatch!17119) (regOne!34750 (reg!17448 r!13765)))) b!6967405))

(assert (= (and b!6966885 ((_ is Concat!25964) (regOne!34750 (reg!17448 r!13765)))) b!6967406))

(assert (= (and b!6966885 ((_ is Star!17119) (regOne!34750 (reg!17448 r!13765)))) b!6967407))

(assert (= (and b!6966885 ((_ is Union!17119) (regOne!34750 (reg!17448 r!13765)))) b!6967408))

(declare-fun e!4188604 () Bool)

(assert (=> b!6966885 (= tp!1921483 e!4188604)))

(declare-fun b!6967412 () Bool)

(declare-fun tp!1921771 () Bool)

(declare-fun tp!1921770 () Bool)

(assert (=> b!6967412 (= e!4188604 (and tp!1921771 tp!1921770))))

(declare-fun b!6967410 () Bool)

(declare-fun tp!1921768 () Bool)

(declare-fun tp!1921767 () Bool)

(assert (=> b!6967410 (= e!4188604 (and tp!1921768 tp!1921767))))

(declare-fun b!6967409 () Bool)

(assert (=> b!6967409 (= e!4188604 tp_is_empty!43463)))

(declare-fun b!6967411 () Bool)

(declare-fun tp!1921769 () Bool)

(assert (=> b!6967411 (= e!4188604 tp!1921769)))

(assert (= (and b!6966885 ((_ is ElementMatch!17119) (regTwo!34750 (reg!17448 r!13765)))) b!6967409))

(assert (= (and b!6966885 ((_ is Concat!25964) (regTwo!34750 (reg!17448 r!13765)))) b!6967410))

(assert (= (and b!6966885 ((_ is Star!17119) (regTwo!34750 (reg!17448 r!13765)))) b!6967411))

(assert (= (and b!6966885 ((_ is Union!17119) (regTwo!34750 (reg!17448 r!13765)))) b!6967412))

(declare-fun e!4188605 () Bool)

(assert (=> b!6966899 (= tp!1921502 e!4188605)))

(declare-fun b!6967416 () Bool)

(declare-fun tp!1921776 () Bool)

(declare-fun tp!1921775 () Bool)

(assert (=> b!6967416 (= e!4188605 (and tp!1921776 tp!1921775))))

(declare-fun b!6967414 () Bool)

(declare-fun tp!1921773 () Bool)

(declare-fun tp!1921772 () Bool)

(assert (=> b!6967414 (= e!4188605 (and tp!1921773 tp!1921772))))

(declare-fun b!6967413 () Bool)

(assert (=> b!6967413 (= e!4188605 tp_is_empty!43463)))

(declare-fun b!6967415 () Bool)

(declare-fun tp!1921774 () Bool)

(assert (=> b!6967415 (= e!4188605 tp!1921774)))

(assert (= (and b!6966899 ((_ is ElementMatch!17119) (regOne!34751 (regOne!34751 r!13765)))) b!6967413))

(assert (= (and b!6966899 ((_ is Concat!25964) (regOne!34751 (regOne!34751 r!13765)))) b!6967414))

(assert (= (and b!6966899 ((_ is Star!17119) (regOne!34751 (regOne!34751 r!13765)))) b!6967415))

(assert (= (and b!6966899 ((_ is Union!17119) (regOne!34751 (regOne!34751 r!13765)))) b!6967416))

(declare-fun e!4188606 () Bool)

(assert (=> b!6966899 (= tp!1921501 e!4188606)))

(declare-fun b!6967420 () Bool)

(declare-fun tp!1921781 () Bool)

(declare-fun tp!1921780 () Bool)

(assert (=> b!6967420 (= e!4188606 (and tp!1921781 tp!1921780))))

(declare-fun b!6967418 () Bool)

(declare-fun tp!1921778 () Bool)

(declare-fun tp!1921777 () Bool)

(assert (=> b!6967418 (= e!4188606 (and tp!1921778 tp!1921777))))

(declare-fun b!6967417 () Bool)

(assert (=> b!6967417 (= e!4188606 tp_is_empty!43463)))

(declare-fun b!6967419 () Bool)

(declare-fun tp!1921779 () Bool)

(assert (=> b!6967419 (= e!4188606 tp!1921779)))

(assert (= (and b!6966899 ((_ is ElementMatch!17119) (regTwo!34751 (regOne!34751 r!13765)))) b!6967417))

(assert (= (and b!6966899 ((_ is Concat!25964) (regTwo!34751 (regOne!34751 r!13765)))) b!6967418))

(assert (= (and b!6966899 ((_ is Star!17119) (regTwo!34751 (regOne!34751 r!13765)))) b!6967419))

(assert (= (and b!6966899 ((_ is Union!17119) (regTwo!34751 (regOne!34751 r!13765)))) b!6967420))

(declare-fun e!4188607 () Bool)

(assert (=> b!6966890 (= tp!1921490 e!4188607)))

(declare-fun b!6967424 () Bool)

(declare-fun tp!1921786 () Bool)

(declare-fun tp!1921785 () Bool)

(assert (=> b!6967424 (= e!4188607 (and tp!1921786 tp!1921785))))

(declare-fun b!6967422 () Bool)

(declare-fun tp!1921783 () Bool)

(declare-fun tp!1921782 () Bool)

(assert (=> b!6967422 (= e!4188607 (and tp!1921783 tp!1921782))))

(declare-fun b!6967421 () Bool)

(assert (=> b!6967421 (= e!4188607 tp_is_empty!43463)))

(declare-fun b!6967423 () Bool)

(declare-fun tp!1921784 () Bool)

(assert (=> b!6967423 (= e!4188607 tp!1921784)))

(assert (= (and b!6966890 ((_ is ElementMatch!17119) (reg!17448 (regOne!34750 r!13765)))) b!6967421))

(assert (= (and b!6966890 ((_ is Concat!25964) (reg!17448 (regOne!34750 r!13765)))) b!6967422))

(assert (= (and b!6966890 ((_ is Star!17119) (reg!17448 (regOne!34750 r!13765)))) b!6967423))

(assert (= (and b!6966890 ((_ is Union!17119) (reg!17448 (regOne!34750 r!13765)))) b!6967424))

(declare-fun e!4188608 () Bool)

(assert (=> b!6966889 (= tp!1921489 e!4188608)))

(declare-fun b!6967428 () Bool)

(declare-fun tp!1921791 () Bool)

(declare-fun tp!1921790 () Bool)

(assert (=> b!6967428 (= e!4188608 (and tp!1921791 tp!1921790))))

(declare-fun b!6967426 () Bool)

(declare-fun tp!1921788 () Bool)

(declare-fun tp!1921787 () Bool)

(assert (=> b!6967426 (= e!4188608 (and tp!1921788 tp!1921787))))

(declare-fun b!6967425 () Bool)

(assert (=> b!6967425 (= e!4188608 tp_is_empty!43463)))

(declare-fun b!6967427 () Bool)

(declare-fun tp!1921789 () Bool)

(assert (=> b!6967427 (= e!4188608 tp!1921789)))

(assert (= (and b!6966889 ((_ is ElementMatch!17119) (regOne!34750 (regOne!34750 r!13765)))) b!6967425))

(assert (= (and b!6966889 ((_ is Concat!25964) (regOne!34750 (regOne!34750 r!13765)))) b!6967426))

(assert (= (and b!6966889 ((_ is Star!17119) (regOne!34750 (regOne!34750 r!13765)))) b!6967427))

(assert (= (and b!6966889 ((_ is Union!17119) (regOne!34750 (regOne!34750 r!13765)))) b!6967428))

(declare-fun e!4188609 () Bool)

(assert (=> b!6966889 (= tp!1921488 e!4188609)))

(declare-fun b!6967432 () Bool)

(declare-fun tp!1921796 () Bool)

(declare-fun tp!1921795 () Bool)

(assert (=> b!6967432 (= e!4188609 (and tp!1921796 tp!1921795))))

(declare-fun b!6967430 () Bool)

(declare-fun tp!1921793 () Bool)

(declare-fun tp!1921792 () Bool)

(assert (=> b!6967430 (= e!4188609 (and tp!1921793 tp!1921792))))

(declare-fun b!6967429 () Bool)

(assert (=> b!6967429 (= e!4188609 tp_is_empty!43463)))

(declare-fun b!6967431 () Bool)

(declare-fun tp!1921794 () Bool)

(assert (=> b!6967431 (= e!4188609 tp!1921794)))

(assert (= (and b!6966889 ((_ is ElementMatch!17119) (regTwo!34750 (regOne!34750 r!13765)))) b!6967429))

(assert (= (and b!6966889 ((_ is Concat!25964) (regTwo!34750 (regOne!34750 r!13765)))) b!6967430))

(assert (= (and b!6966889 ((_ is Star!17119) (regTwo!34750 (regOne!34750 r!13765)))) b!6967431))

(assert (= (and b!6966889 ((_ is Union!17119) (regTwo!34750 (regOne!34750 r!13765)))) b!6967432))

(declare-fun e!4188610 () Bool)

(assert (=> b!6966903 (= tp!1921507 e!4188610)))

(declare-fun b!6967436 () Bool)

(declare-fun tp!1921801 () Bool)

(declare-fun tp!1921800 () Bool)

(assert (=> b!6967436 (= e!4188610 (and tp!1921801 tp!1921800))))

(declare-fun b!6967434 () Bool)

(declare-fun tp!1921798 () Bool)

(declare-fun tp!1921797 () Bool)

(assert (=> b!6967434 (= e!4188610 (and tp!1921798 tp!1921797))))

(declare-fun b!6967433 () Bool)

(assert (=> b!6967433 (= e!4188610 tp_is_empty!43463)))

(declare-fun b!6967435 () Bool)

(declare-fun tp!1921799 () Bool)

(assert (=> b!6967435 (= e!4188610 tp!1921799)))

(assert (= (and b!6966903 ((_ is ElementMatch!17119) (regOne!34751 (regTwo!34751 r!13765)))) b!6967433))

(assert (= (and b!6966903 ((_ is Concat!25964) (regOne!34751 (regTwo!34751 r!13765)))) b!6967434))

(assert (= (and b!6966903 ((_ is Star!17119) (regOne!34751 (regTwo!34751 r!13765)))) b!6967435))

(assert (= (and b!6966903 ((_ is Union!17119) (regOne!34751 (regTwo!34751 r!13765)))) b!6967436))

(declare-fun e!4188611 () Bool)

(assert (=> b!6966903 (= tp!1921506 e!4188611)))

(declare-fun b!6967440 () Bool)

(declare-fun tp!1921806 () Bool)

(declare-fun tp!1921805 () Bool)

(assert (=> b!6967440 (= e!4188611 (and tp!1921806 tp!1921805))))

(declare-fun b!6967438 () Bool)

(declare-fun tp!1921803 () Bool)

(declare-fun tp!1921802 () Bool)

(assert (=> b!6967438 (= e!4188611 (and tp!1921803 tp!1921802))))

(declare-fun b!6967437 () Bool)

(assert (=> b!6967437 (= e!4188611 tp_is_empty!43463)))

(declare-fun b!6967439 () Bool)

(declare-fun tp!1921804 () Bool)

(assert (=> b!6967439 (= e!4188611 tp!1921804)))

(assert (= (and b!6966903 ((_ is ElementMatch!17119) (regTwo!34751 (regTwo!34751 r!13765)))) b!6967437))

(assert (= (and b!6966903 ((_ is Concat!25964) (regTwo!34751 (regTwo!34751 r!13765)))) b!6967438))

(assert (= (and b!6966903 ((_ is Star!17119) (regTwo!34751 (regTwo!34751 r!13765)))) b!6967439))

(assert (= (and b!6966903 ((_ is Union!17119) (regTwo!34751 (regTwo!34751 r!13765)))) b!6967440))

(declare-fun e!4188612 () Bool)

(assert (=> b!6966894 (= tp!1921495 e!4188612)))

(declare-fun b!6967444 () Bool)

(declare-fun tp!1921811 () Bool)

(declare-fun tp!1921810 () Bool)

(assert (=> b!6967444 (= e!4188612 (and tp!1921811 tp!1921810))))

(declare-fun b!6967442 () Bool)

(declare-fun tp!1921808 () Bool)

(declare-fun tp!1921807 () Bool)

(assert (=> b!6967442 (= e!4188612 (and tp!1921808 tp!1921807))))

(declare-fun b!6967441 () Bool)

(assert (=> b!6967441 (= e!4188612 tp_is_empty!43463)))

(declare-fun b!6967443 () Bool)

(declare-fun tp!1921809 () Bool)

(assert (=> b!6967443 (= e!4188612 tp!1921809)))

(assert (= (and b!6966894 ((_ is ElementMatch!17119) (reg!17448 (regTwo!34750 r!13765)))) b!6967441))

(assert (= (and b!6966894 ((_ is Concat!25964) (reg!17448 (regTwo!34750 r!13765)))) b!6967442))

(assert (= (and b!6966894 ((_ is Star!17119) (reg!17448 (regTwo!34750 r!13765)))) b!6967443))

(assert (= (and b!6966894 ((_ is Union!17119) (reg!17448 (regTwo!34750 r!13765)))) b!6967444))

(declare-fun b!6967445 () Bool)

(declare-fun e!4188613 () Bool)

(declare-fun tp!1921812 () Bool)

(assert (=> b!6967445 (= e!4188613 (and tp_is_empty!43463 tp!1921812))))

(assert (=> b!6966917 (= tp!1921521 e!4188613)))

(assert (= (and b!6966917 ((_ is Cons!66796) (t!380663 (t!380663 s!9351)))) b!6967445))

(declare-fun e!4188614 () Bool)

(assert (=> b!6966891 (= tp!1921492 e!4188614)))

(declare-fun b!6967449 () Bool)

(declare-fun tp!1921817 () Bool)

(declare-fun tp!1921816 () Bool)

(assert (=> b!6967449 (= e!4188614 (and tp!1921817 tp!1921816))))

(declare-fun b!6967447 () Bool)

(declare-fun tp!1921814 () Bool)

(declare-fun tp!1921813 () Bool)

(assert (=> b!6967447 (= e!4188614 (and tp!1921814 tp!1921813))))

(declare-fun b!6967446 () Bool)

(assert (=> b!6967446 (= e!4188614 tp_is_empty!43463)))

(declare-fun b!6967448 () Bool)

(declare-fun tp!1921815 () Bool)

(assert (=> b!6967448 (= e!4188614 tp!1921815)))

(assert (= (and b!6966891 ((_ is ElementMatch!17119) (regOne!34751 (regOne!34750 r!13765)))) b!6967446))

(assert (= (and b!6966891 ((_ is Concat!25964) (regOne!34751 (regOne!34750 r!13765)))) b!6967447))

(assert (= (and b!6966891 ((_ is Star!17119) (regOne!34751 (regOne!34750 r!13765)))) b!6967448))

(assert (= (and b!6966891 ((_ is Union!17119) (regOne!34751 (regOne!34750 r!13765)))) b!6967449))

(declare-fun e!4188615 () Bool)

(assert (=> b!6966891 (= tp!1921491 e!4188615)))

(declare-fun b!6967453 () Bool)

(declare-fun tp!1921822 () Bool)

(declare-fun tp!1921821 () Bool)

(assert (=> b!6967453 (= e!4188615 (and tp!1921822 tp!1921821))))

(declare-fun b!6967451 () Bool)

(declare-fun tp!1921819 () Bool)

(declare-fun tp!1921818 () Bool)

(assert (=> b!6967451 (= e!4188615 (and tp!1921819 tp!1921818))))

(declare-fun b!6967450 () Bool)

(assert (=> b!6967450 (= e!4188615 tp_is_empty!43463)))

(declare-fun b!6967452 () Bool)

(declare-fun tp!1921820 () Bool)

(assert (=> b!6967452 (= e!4188615 tp!1921820)))

(assert (= (and b!6966891 ((_ is ElementMatch!17119) (regTwo!34751 (regOne!34750 r!13765)))) b!6967450))

(assert (= (and b!6966891 ((_ is Concat!25964) (regTwo!34751 (regOne!34750 r!13765)))) b!6967451))

(assert (= (and b!6966891 ((_ is Star!17119) (regTwo!34751 (regOne!34750 r!13765)))) b!6967452))

(assert (= (and b!6966891 ((_ is Union!17119) (regTwo!34751 (regOne!34750 r!13765)))) b!6967453))

(declare-fun e!4188616 () Bool)

(assert (=> b!6966895 (= tp!1921497 e!4188616)))

(declare-fun b!6967457 () Bool)

(declare-fun tp!1921827 () Bool)

(declare-fun tp!1921826 () Bool)

(assert (=> b!6967457 (= e!4188616 (and tp!1921827 tp!1921826))))

(declare-fun b!6967455 () Bool)

(declare-fun tp!1921824 () Bool)

(declare-fun tp!1921823 () Bool)

(assert (=> b!6967455 (= e!4188616 (and tp!1921824 tp!1921823))))

(declare-fun b!6967454 () Bool)

(assert (=> b!6967454 (= e!4188616 tp_is_empty!43463)))

(declare-fun b!6967456 () Bool)

(declare-fun tp!1921825 () Bool)

(assert (=> b!6967456 (= e!4188616 tp!1921825)))

(assert (= (and b!6966895 ((_ is ElementMatch!17119) (regOne!34751 (regTwo!34750 r!13765)))) b!6967454))

(assert (= (and b!6966895 ((_ is Concat!25964) (regOne!34751 (regTwo!34750 r!13765)))) b!6967455))

(assert (= (and b!6966895 ((_ is Star!17119) (regOne!34751 (regTwo!34750 r!13765)))) b!6967456))

(assert (= (and b!6966895 ((_ is Union!17119) (regOne!34751 (regTwo!34750 r!13765)))) b!6967457))

(declare-fun e!4188617 () Bool)

(assert (=> b!6966895 (= tp!1921496 e!4188617)))

(declare-fun b!6967461 () Bool)

(declare-fun tp!1921832 () Bool)

(declare-fun tp!1921831 () Bool)

(assert (=> b!6967461 (= e!4188617 (and tp!1921832 tp!1921831))))

(declare-fun b!6967459 () Bool)

(declare-fun tp!1921829 () Bool)

(declare-fun tp!1921828 () Bool)

(assert (=> b!6967459 (= e!4188617 (and tp!1921829 tp!1921828))))

(declare-fun b!6967458 () Bool)

(assert (=> b!6967458 (= e!4188617 tp_is_empty!43463)))

(declare-fun b!6967460 () Bool)

(declare-fun tp!1921830 () Bool)

(assert (=> b!6967460 (= e!4188617 tp!1921830)))

(assert (= (and b!6966895 ((_ is ElementMatch!17119) (regTwo!34751 (regTwo!34750 r!13765)))) b!6967458))

(assert (= (and b!6966895 ((_ is Concat!25964) (regTwo!34751 (regTwo!34750 r!13765)))) b!6967459))

(assert (= (and b!6966895 ((_ is Star!17119) (regTwo!34751 (regTwo!34750 r!13765)))) b!6967460))

(assert (= (and b!6966895 ((_ is Union!17119) (regTwo!34751 (regTwo!34750 r!13765)))) b!6967461))

(declare-fun e!4188618 () Bool)

(assert (=> b!6966886 (= tp!1921485 e!4188618)))

(declare-fun b!6967465 () Bool)

(declare-fun tp!1921837 () Bool)

(declare-fun tp!1921836 () Bool)

(assert (=> b!6967465 (= e!4188618 (and tp!1921837 tp!1921836))))

(declare-fun b!6967463 () Bool)

(declare-fun tp!1921834 () Bool)

(declare-fun tp!1921833 () Bool)

(assert (=> b!6967463 (= e!4188618 (and tp!1921834 tp!1921833))))

(declare-fun b!6967462 () Bool)

(assert (=> b!6967462 (= e!4188618 tp_is_empty!43463)))

(declare-fun b!6967464 () Bool)

(declare-fun tp!1921835 () Bool)

(assert (=> b!6967464 (= e!4188618 tp!1921835)))

(assert (= (and b!6966886 ((_ is ElementMatch!17119) (reg!17448 (reg!17448 r!13765)))) b!6967462))

(assert (= (and b!6966886 ((_ is Concat!25964) (reg!17448 (reg!17448 r!13765)))) b!6967463))

(assert (= (and b!6966886 ((_ is Star!17119) (reg!17448 (reg!17448 r!13765)))) b!6967464))

(assert (= (and b!6966886 ((_ is Union!17119) (reg!17448 (reg!17448 r!13765)))) b!6967465))

(declare-fun b_lambda!260699 () Bool)

(assert (= b_lambda!260691 (or d!2170603 b_lambda!260699)))

(declare-fun bs!1858760 () Bool)

(declare-fun d!2170749 () Bool)

(assert (= bs!1858760 (and d!2170749 d!2170603)))

(assert (=> bs!1858760 (= (dynLambda!26635 lambda!397556 (h!73243 l!9142)) (not (dynLambda!26635 lambda!397530 (h!73243 l!9142))))))

(declare-fun b_lambda!260707 () Bool)

(assert (=> (not b_lambda!260707) (not bs!1858760)))

(declare-fun m!7658574 () Bool)

(assert (=> bs!1858760 m!7658574))

(assert (=> b!6967219 d!2170749))

(declare-fun b_lambda!260701 () Bool)

(assert (= b_lambda!260693 (or d!2170585 b_lambda!260701)))

(declare-fun bs!1858761 () Bool)

(declare-fun d!2170751 () Bool)

(assert (= bs!1858761 (and d!2170751 d!2170585)))

(assert (=> bs!1858761 (= (dynLambda!26635 lambda!397540 (h!73243 l!9142)) (validRegex!8803 (h!73243 l!9142)))))

(assert (=> bs!1858761 m!7658338))

(assert (=> b!6967249 d!2170751))

(declare-fun b_lambda!260703 () Bool)

(assert (= b_lambda!260697 (or start!668274 b_lambda!260703)))

(declare-fun bs!1858762 () Bool)

(declare-fun d!2170753 () Bool)

(assert (= bs!1858762 (and d!2170753 start!668274)))

(assert (=> bs!1858762 (= (dynLambda!26635 lambda!397529 (h!73243 (t!380662 l!9142))) (validRegex!8803 (h!73243 (t!380662 l!9142))))))

(declare-fun m!7658576 () Bool)

(assert (=> bs!1858762 m!7658576))

(assert (=> b!6967273 d!2170753))

(declare-fun b_lambda!260705 () Bool)

(assert (= b_lambda!260695 (or d!2170569 b_lambda!260705)))

(declare-fun bs!1858763 () Bool)

(declare-fun d!2170755 () Bool)

(assert (= bs!1858763 (and d!2170755 d!2170569)))

(assert (=> bs!1858763 (= (dynLambda!26635 lambda!397539 (h!73243 lt!2479422)) (validRegex!8803 (h!73243 lt!2479422)))))

(declare-fun m!7658578 () Bool)

(assert (=> bs!1858763 m!7658578))

(assert (=> b!6967271 d!2170755))

(check-sat (not b!6967392) (not b!6967220) (not b!6967400) (not b!6967330) (not d!2170745) (not b!6967443) (not b!6967440) (not b!6967342) (not bm!632472) (not bm!632452) (not b!6967396) (not b!6967274) (not b!6967407) (not d!2170693) (not b!6967252) (not b_lambda!260699) (not b!6967408) (not b!6967415) (not b!6967465) (not b!6967386) (not b!6967399) (not bm!632460) (not bm!632459) (not bm!632455) (not b!6967416) (not b!6967237) (not b!6967428) (not bm!632446) (not b_lambda!260703) (not b!6967269) (not b!6967332) (not b!6967423) (not b!6967323) (not b!6967410) (not b!6967395) (not b!6967444) (not b!6967327) (not b!6967449) (not b!6967235) (not d!2170687) (not b!6967287) (not b!6967317) (not b!6967354) (not b!6967380) (not b!6967447) (not bm!632470) (not b!6967239) (not b!6967349) (not b!6967320) (not bm!632449) (not b!6967432) (not b_lambda!260705) (not b!6967282) (not b!6967360) (not b!6967451) (not bm!632454) (not bm!632451) tp_is_empty!43463 (not b!6967430) (not bm!632474) (not b!6967362) (not b!6967464) (not b!6967376) (not b!6967460) (not b!6967419) (not b!6967322) (not b!6967414) (not b!6967403) (not b!6967366) (not b!6967371) (not b!6967326) (not b!6967453) (not b!6967461) (not d!2170737) (not b!6967434) (not bm!632448) (not b!6967390) (not b!6967350) (not b!6967343) (not b!6967438) (not b!6967368) (not b!6967228) (not b!6967427) (not bm!632457) (not b!6967391) (not b!6967445) (not b!6967364) (not b_lambda!260671) (not b!6967347) (not d!2170741) (not b!6967439) (not d!2170721) (not d!2170743) (not b!6967231) (not b!6967370) (not b!6967378) (not b!6967375) (not b!6967442) (not b!6967418) (not b_lambda!260707) (not b!6967247) (not b!6967455) (not b!6967422) (not b!6967324) (not b!6967278) (not b!6967388) (not b!6967374) (not bm!632456) (not b!6967352) (not b!6967452) (not bs!1858762) (not b!6967456) (not b!6967384) (not bs!1858761) (not b!6967431) (not b!6967234) (not b!6967358) (not b!6967412) (not b!6967277) (not b!6967383) (not b!6967459) (not b!6967457) (not b!6967435) (not b!6967448) (not b!6967275) (not b!6967328) (not b!6967254) (not b_lambda!260701) (not b!6967420) (not b!6967351) (not b!6967217) (not b!6967402) (not b!6967355) (not b!6967250) (not b!6967372) (not b!6967387) (not b!6967341) (not b!6967276) (not bm!632473) (not b!6967359) (not b!6967406) (not b!6967345) (not bs!1858763) (not b!6967238) (not b!6967363) (not b!6967424) (not b!6967379) (not b!6967382) (not b!6967426) (not b!6967404) (not b!6967233) (not b!6967411) (not b!6967436) (not b!6967346) (not b!6967356) (not b!6967394) (not b!6967463) (not b!6967398) (not b!6967272) (not b!6967367))
(check-sat)
(get-model)

(declare-fun b_lambda!260713 () Bool)

(assert (= b_lambda!260707 (or b!6966548 b_lambda!260713)))

(declare-fun bs!1858786 () Bool)

(declare-fun d!2170771 () Bool)

(assert (= bs!1858786 (and d!2170771 b!6966548)))

(declare-fun res!2842503 () Bool)

(declare-fun e!4188657 () Bool)

(assert (=> bs!1858786 (=> (not res!2842503) (not e!4188657))))

(assert (=> bs!1858786 (= res!2842503 (validRegex!8803 (h!73243 l!9142)))))

(assert (=> bs!1858786 (= (dynLambda!26635 lambda!397530 (h!73243 l!9142)) e!4188657)))

(declare-fun b!6967518 () Bool)

(assert (=> b!6967518 (= e!4188657 (matchR!9221 (h!73243 l!9142) s!9351))))

(assert (= (and bs!1858786 res!2842503) b!6967518))

(assert (=> bs!1858786 m!7658338))

(declare-fun m!7658610 () Bool)

(assert (=> b!6967518 m!7658610))

(assert (=> bs!1858760 d!2170771))

(check-sat (not b!6967392) (not b!6967220) (not b!6967400) (not b!6967330) (not d!2170745) (not b_lambda!260713) (not b!6967443) (not b!6967440) (not b!6967342) (not bm!632472) (not bm!632452) (not b!6967396) (not b!6967274) (not b!6967407) (not d!2170693) (not b!6967252) (not b_lambda!260699) (not b!6967408) (not b!6967415) (not b!6967465) (not b!6967386) (not b!6967399) (not bm!632460) (not bm!632459) (not bm!632455) (not b!6967416) (not b!6967237) (not b!6967428) (not bm!632446) (not b_lambda!260703) (not b!6967269) (not b!6967332) (not b!6967423) (not b!6967323) (not b!6967410) (not b!6967395) (not b!6967444) (not b!6967327) (not b!6967449) (not b!6967235) (not d!2170687) (not b!6967287) (not b!6967317) (not b!6967354) (not b!6967380) (not b!6967447) (not bm!632470) (not b!6967239) (not b!6967349) (not b!6967320) (not bm!632449) (not b!6967432) (not b_lambda!260705) (not b!6967282) (not b!6967360) (not b!6967451) (not bm!632454) (not bm!632451) tp_is_empty!43463 (not b!6967430) (not bm!632474) (not b!6967362) (not b!6967464) (not b!6967376) (not b!6967460) (not b!6967419) (not b!6967322) (not b!6967414) (not b!6967403) (not b!6967366) (not b!6967371) (not b!6967326) (not b!6967453) (not b!6967461) (not d!2170737) (not b!6967434) (not bm!632448) (not b!6967390) (not b!6967350) (not b!6967343) (not b!6967438) (not b!6967368) (not b!6967228) (not b!6967427) (not bm!632457) (not b!6967391) (not b!6967445) (not b!6967364) (not b_lambda!260671) (not b!6967347) (not d!2170741) (not b!6967439) (not d!2170721) (not d!2170743) (not b!6967231) (not b!6967370) (not b!6967378) (not b!6967375) (not b!6967442) (not b!6967418) (not b!6967247) (not b!6967455) (not b!6967422) (not b!6967324) (not b!6967278) (not b!6967388) (not b!6967374) (not bm!632456) (not b!6967352) (not b!6967452) (not bs!1858762) (not b!6967456) (not b!6967384) (not bs!1858761) (not b!6967431) (not b!6967234) (not b!6967358) (not b!6967412) (not b!6967277) (not b!6967383) (not b!6967459) (not b!6967518) (not b!6967457) (not b!6967435) (not b!6967448) (not b!6967275) (not b!6967328) (not b!6967254) (not b_lambda!260701) (not b!6967420) (not b!6967351) (not b!6967217) (not b!6967402) (not b!6967355) (not b!6967250) (not b!6967372) (not b!6967387) (not b!6967341) (not bs!1858786) (not b!6967276) (not bm!632473) (not b!6967359) (not b!6967406) (not b!6967345) (not bs!1858763) (not b!6967238) (not b!6967363) (not b!6967424) (not b!6967379) (not b!6967382) (not b!6967426) (not b!6967404) (not b!6967233) (not b!6967411) (not b!6967436) (not b!6967346) (not b!6967356) (not b!6967394) (not b!6967463) (not b!6967398) (not b!6967272) (not b!6967367))
(check-sat)
(get-model)

(declare-fun b!6968375 () Bool)

(declare-fun e!4188981 () Bool)

(declare-fun call!632551 () Bool)

(assert (=> b!6968375 (= e!4188981 call!632551)))

(declare-fun bm!632545 () Bool)

(declare-fun c!1291869 () Bool)

(declare-fun c!1291868 () Bool)

(declare-fun call!632552 () Bool)

(assert (=> bm!632545 (= call!632552 (validRegex!8803 (ite c!1291869 (reg!17448 (ite c!1291751 (reg!17448 (h!73243 l!9142)) (ite c!1291750 (regOne!34751 (h!73243 l!9142)) (regOne!34750 (h!73243 l!9142))))) (ite c!1291868 (regOne!34751 (ite c!1291751 (reg!17448 (h!73243 l!9142)) (ite c!1291750 (regOne!34751 (h!73243 l!9142)) (regOne!34750 (h!73243 l!9142))))) (regOne!34750 (ite c!1291751 (reg!17448 (h!73243 l!9142)) (ite c!1291750 (regOne!34751 (h!73243 l!9142)) (regOne!34750 (h!73243 l!9142)))))))))))

(declare-fun bm!632546 () Bool)

(declare-fun call!632550 () Bool)

(assert (=> bm!632546 (= call!632550 call!632552)))

(declare-fun b!6968376 () Bool)

(declare-fun e!4188976 () Bool)

(declare-fun e!4188980 () Bool)

(assert (=> b!6968376 (= e!4188976 e!4188980)))

(assert (=> b!6968376 (= c!1291868 ((_ is Union!17119) (ite c!1291751 (reg!17448 (h!73243 l!9142)) (ite c!1291750 (regOne!34751 (h!73243 l!9142)) (regOne!34750 (h!73243 l!9142))))))))

(declare-fun b!6968377 () Bool)

(declare-fun e!4188979 () Bool)

(assert (=> b!6968377 (= e!4188979 e!4188981)))

(declare-fun res!2842615 () Bool)

(assert (=> b!6968377 (=> (not res!2842615) (not e!4188981))))

(assert (=> b!6968377 (= res!2842615 call!632550)))

(declare-fun b!6968378 () Bool)

(declare-fun e!4188978 () Bool)

(assert (=> b!6968378 (= e!4188978 e!4188976)))

(assert (=> b!6968378 (= c!1291869 ((_ is Star!17119) (ite c!1291751 (reg!17448 (h!73243 l!9142)) (ite c!1291750 (regOne!34751 (h!73243 l!9142)) (regOne!34750 (h!73243 l!9142))))))))

(declare-fun b!6968379 () Bool)

(declare-fun e!4188982 () Bool)

(assert (=> b!6968379 (= e!4188982 call!632551)))

(declare-fun b!6968380 () Bool)

(declare-fun e!4188977 () Bool)

(assert (=> b!6968380 (= e!4188977 call!632552)))

(declare-fun b!6968381 () Bool)

(declare-fun res!2842613 () Bool)

(assert (=> b!6968381 (=> (not res!2842613) (not e!4188982))))

(assert (=> b!6968381 (= res!2842613 call!632550)))

(assert (=> b!6968381 (= e!4188980 e!4188982)))

(declare-fun d!2170885 () Bool)

(declare-fun res!2842614 () Bool)

(assert (=> d!2170885 (=> res!2842614 e!4188978)))

(assert (=> d!2170885 (= res!2842614 ((_ is ElementMatch!17119) (ite c!1291751 (reg!17448 (h!73243 l!9142)) (ite c!1291750 (regOne!34751 (h!73243 l!9142)) (regOne!34750 (h!73243 l!9142))))))))

(assert (=> d!2170885 (= (validRegex!8803 (ite c!1291751 (reg!17448 (h!73243 l!9142)) (ite c!1291750 (regOne!34751 (h!73243 l!9142)) (regOne!34750 (h!73243 l!9142))))) e!4188978)))

(declare-fun bm!632547 () Bool)

(assert (=> bm!632547 (= call!632551 (validRegex!8803 (ite c!1291868 (regTwo!34751 (ite c!1291751 (reg!17448 (h!73243 l!9142)) (ite c!1291750 (regOne!34751 (h!73243 l!9142)) (regOne!34750 (h!73243 l!9142))))) (regTwo!34750 (ite c!1291751 (reg!17448 (h!73243 l!9142)) (ite c!1291750 (regOne!34751 (h!73243 l!9142)) (regOne!34750 (h!73243 l!9142))))))))))

(declare-fun b!6968382 () Bool)

(assert (=> b!6968382 (= e!4188976 e!4188977)))

(declare-fun res!2842616 () Bool)

(assert (=> b!6968382 (= res!2842616 (not (nullable!6906 (reg!17448 (ite c!1291751 (reg!17448 (h!73243 l!9142)) (ite c!1291750 (regOne!34751 (h!73243 l!9142)) (regOne!34750 (h!73243 l!9142))))))))))

(assert (=> b!6968382 (=> (not res!2842616) (not e!4188977))))

(declare-fun b!6968383 () Bool)

(declare-fun res!2842617 () Bool)

(assert (=> b!6968383 (=> res!2842617 e!4188979)))

(assert (=> b!6968383 (= res!2842617 (not ((_ is Concat!25964) (ite c!1291751 (reg!17448 (h!73243 l!9142)) (ite c!1291750 (regOne!34751 (h!73243 l!9142)) (regOne!34750 (h!73243 l!9142)))))))))

(assert (=> b!6968383 (= e!4188980 e!4188979)))

(assert (= (and d!2170885 (not res!2842614)) b!6968378))

(assert (= (and b!6968378 c!1291869) b!6968382))

(assert (= (and b!6968378 (not c!1291869)) b!6968376))

(assert (= (and b!6968382 res!2842616) b!6968380))

(assert (= (and b!6968376 c!1291868) b!6968381))

(assert (= (and b!6968376 (not c!1291868)) b!6968383))

(assert (= (and b!6968381 res!2842613) b!6968379))

(assert (= (and b!6968383 (not res!2842617)) b!6968377))

(assert (= (and b!6968377 res!2842615) b!6968375))

(assert (= (or b!6968381 b!6968377) bm!632546))

(assert (= (or b!6968379 b!6968375) bm!632547))

(assert (= (or b!6968380 bm!632546) bm!632545))

(declare-fun m!7658826 () Bool)

(assert (=> bm!632545 m!7658826))

(declare-fun m!7658828 () Bool)

(assert (=> bm!632547 m!7658828))

(declare-fun m!7658830 () Bool)

(assert (=> b!6968382 m!7658830))

(assert (=> bm!632446 d!2170885))

(declare-fun d!2170887 () Bool)

(declare-fun res!2842618 () Bool)

(declare-fun e!4188983 () Bool)

(assert (=> d!2170887 (=> res!2842618 e!4188983)))

(assert (=> d!2170887 (= res!2842618 ((_ is Nil!66795) (t!380662 lt!2479422)))))

(assert (=> d!2170887 (= (forall!15990 (t!380662 lt!2479422) lambda!397539) e!4188983)))

(declare-fun b!6968384 () Bool)

(declare-fun e!4188984 () Bool)

(assert (=> b!6968384 (= e!4188983 e!4188984)))

(declare-fun res!2842619 () Bool)

(assert (=> b!6968384 (=> (not res!2842619) (not e!4188984))))

(assert (=> b!6968384 (= res!2842619 (dynLambda!26635 lambda!397539 (h!73243 (t!380662 lt!2479422))))))

(declare-fun b!6968385 () Bool)

(assert (=> b!6968385 (= e!4188984 (forall!15990 (t!380662 (t!380662 lt!2479422)) lambda!397539))))

(assert (= (and d!2170887 (not res!2842618)) b!6968384))

(assert (= (and b!6968384 res!2842619) b!6968385))

(declare-fun b_lambda!260739 () Bool)

(assert (=> (not b_lambda!260739) (not b!6968384)))

(declare-fun m!7658832 () Bool)

(assert (=> b!6968384 m!7658832))

(declare-fun m!7658834 () Bool)

(assert (=> b!6968385 m!7658834))

(assert (=> b!6967272 d!2170887))

(assert (=> b!6967238 d!2170697))

(declare-fun b!6968386 () Bool)

(declare-fun e!4188990 () Bool)

(declare-fun call!632554 () Bool)

(assert (=> b!6968386 (= e!4188990 call!632554)))

(declare-fun call!632555 () Bool)

(declare-fun bm!632548 () Bool)

(declare-fun c!1291870 () Bool)

(declare-fun c!1291871 () Bool)

(assert (=> bm!632548 (= call!632555 (validRegex!8803 (ite c!1291871 (reg!17448 (ite c!1291750 (regTwo!34751 (h!73243 l!9142)) (regTwo!34750 (h!73243 l!9142)))) (ite c!1291870 (regOne!34751 (ite c!1291750 (regTwo!34751 (h!73243 l!9142)) (regTwo!34750 (h!73243 l!9142)))) (regOne!34750 (ite c!1291750 (regTwo!34751 (h!73243 l!9142)) (regTwo!34750 (h!73243 l!9142))))))))))

(declare-fun bm!632549 () Bool)

(declare-fun call!632553 () Bool)

(assert (=> bm!632549 (= call!632553 call!632555)))

(declare-fun b!6968387 () Bool)

(declare-fun e!4188985 () Bool)

(declare-fun e!4188989 () Bool)

(assert (=> b!6968387 (= e!4188985 e!4188989)))

(assert (=> b!6968387 (= c!1291870 ((_ is Union!17119) (ite c!1291750 (regTwo!34751 (h!73243 l!9142)) (regTwo!34750 (h!73243 l!9142)))))))

(declare-fun b!6968388 () Bool)

(declare-fun e!4188988 () Bool)

(assert (=> b!6968388 (= e!4188988 e!4188990)))

(declare-fun res!2842622 () Bool)

(assert (=> b!6968388 (=> (not res!2842622) (not e!4188990))))

(assert (=> b!6968388 (= res!2842622 call!632553)))

(declare-fun b!6968389 () Bool)

(declare-fun e!4188987 () Bool)

(assert (=> b!6968389 (= e!4188987 e!4188985)))

(assert (=> b!6968389 (= c!1291871 ((_ is Star!17119) (ite c!1291750 (regTwo!34751 (h!73243 l!9142)) (regTwo!34750 (h!73243 l!9142)))))))

(declare-fun b!6968390 () Bool)

(declare-fun e!4188991 () Bool)

(assert (=> b!6968390 (= e!4188991 call!632554)))

(declare-fun b!6968391 () Bool)

(declare-fun e!4188986 () Bool)

(assert (=> b!6968391 (= e!4188986 call!632555)))

(declare-fun b!6968392 () Bool)

(declare-fun res!2842620 () Bool)

(assert (=> b!6968392 (=> (not res!2842620) (not e!4188991))))

(assert (=> b!6968392 (= res!2842620 call!632553)))

(assert (=> b!6968392 (= e!4188989 e!4188991)))

(declare-fun d!2170889 () Bool)

(declare-fun res!2842621 () Bool)

(assert (=> d!2170889 (=> res!2842621 e!4188987)))

(assert (=> d!2170889 (= res!2842621 ((_ is ElementMatch!17119) (ite c!1291750 (regTwo!34751 (h!73243 l!9142)) (regTwo!34750 (h!73243 l!9142)))))))

(assert (=> d!2170889 (= (validRegex!8803 (ite c!1291750 (regTwo!34751 (h!73243 l!9142)) (regTwo!34750 (h!73243 l!9142)))) e!4188987)))

(declare-fun bm!632550 () Bool)

(assert (=> bm!632550 (= call!632554 (validRegex!8803 (ite c!1291870 (regTwo!34751 (ite c!1291750 (regTwo!34751 (h!73243 l!9142)) (regTwo!34750 (h!73243 l!9142)))) (regTwo!34750 (ite c!1291750 (regTwo!34751 (h!73243 l!9142)) (regTwo!34750 (h!73243 l!9142)))))))))

(declare-fun b!6968393 () Bool)

(assert (=> b!6968393 (= e!4188985 e!4188986)))

(declare-fun res!2842623 () Bool)

(assert (=> b!6968393 (= res!2842623 (not (nullable!6906 (reg!17448 (ite c!1291750 (regTwo!34751 (h!73243 l!9142)) (regTwo!34750 (h!73243 l!9142)))))))))

(assert (=> b!6968393 (=> (not res!2842623) (not e!4188986))))

(declare-fun b!6968394 () Bool)

(declare-fun res!2842624 () Bool)

(assert (=> b!6968394 (=> res!2842624 e!4188988)))

(assert (=> b!6968394 (= res!2842624 (not ((_ is Concat!25964) (ite c!1291750 (regTwo!34751 (h!73243 l!9142)) (regTwo!34750 (h!73243 l!9142))))))))

(assert (=> b!6968394 (= e!4188989 e!4188988)))

(assert (= (and d!2170889 (not res!2842621)) b!6968389))

(assert (= (and b!6968389 c!1291871) b!6968393))

(assert (= (and b!6968389 (not c!1291871)) b!6968387))

(assert (= (and b!6968393 res!2842623) b!6968391))

(assert (= (and b!6968387 c!1291870) b!6968392))

(assert (= (and b!6968387 (not c!1291870)) b!6968394))

(assert (= (and b!6968392 res!2842620) b!6968390))

(assert (= (and b!6968394 (not res!2842624)) b!6968388))

(assert (= (and b!6968388 res!2842622) b!6968386))

(assert (= (or b!6968392 b!6968388) bm!632549))

(assert (= (or b!6968390 b!6968386) bm!632550))

(assert (= (or b!6968391 bm!632549) bm!632548))

(declare-fun m!7658836 () Bool)

(assert (=> bm!632548 m!7658836))

(declare-fun m!7658838 () Bool)

(assert (=> bm!632550 m!7658838))

(declare-fun m!7658840 () Bool)

(assert (=> b!6968393 m!7658840))

(assert (=> bm!632448 d!2170889))

(declare-fun d!2170891 () Bool)

(declare-fun e!4188995 () Bool)

(assert (=> d!2170891 e!4188995))

(declare-fun c!1291873 () Bool)

(assert (=> d!2170891 (= c!1291873 ((_ is EmptyExpr!17119) (derivativeStep!5531 (derivativeStep!5531 r!13765 (head!14015 s!9351)) (head!14015 (tail!13081 s!9351)))))))

(declare-fun lt!2479463 () Bool)

(declare-fun e!4188996 () Bool)

(assert (=> d!2170891 (= lt!2479463 e!4188996)))

(declare-fun c!1291874 () Bool)

(assert (=> d!2170891 (= c!1291874 (isEmpty!39001 (tail!13081 (tail!13081 s!9351))))))

(assert (=> d!2170891 (validRegex!8803 (derivativeStep!5531 (derivativeStep!5531 r!13765 (head!14015 s!9351)) (head!14015 (tail!13081 s!9351))))))

(assert (=> d!2170891 (= (matchR!9221 (derivativeStep!5531 (derivativeStep!5531 r!13765 (head!14015 s!9351)) (head!14015 (tail!13081 s!9351))) (tail!13081 (tail!13081 s!9351))) lt!2479463)))

(declare-fun b!6968395 () Bool)

(declare-fun e!4188997 () Bool)

(assert (=> b!6968395 (= e!4188997 (= (head!14015 (tail!13081 (tail!13081 s!9351))) (c!1291625 (derivativeStep!5531 (derivativeStep!5531 r!13765 (head!14015 s!9351)) (head!14015 (tail!13081 s!9351))))))))

(declare-fun b!6968396 () Bool)

(assert (=> b!6968396 (= e!4188996 (nullable!6906 (derivativeStep!5531 (derivativeStep!5531 r!13765 (head!14015 s!9351)) (head!14015 (tail!13081 s!9351)))))))

(declare-fun b!6968397 () Bool)

(declare-fun res!2842628 () Bool)

(assert (=> b!6968397 (=> (not res!2842628) (not e!4188997))))

(assert (=> b!6968397 (= res!2842628 (isEmpty!39001 (tail!13081 (tail!13081 (tail!13081 s!9351)))))))

(declare-fun b!6968398 () Bool)

(declare-fun e!4188998 () Bool)

(assert (=> b!6968398 (= e!4188998 (not (= (head!14015 (tail!13081 (tail!13081 s!9351))) (c!1291625 (derivativeStep!5531 (derivativeStep!5531 r!13765 (head!14015 s!9351)) (head!14015 (tail!13081 s!9351)))))))))

(declare-fun b!6968399 () Bool)

(declare-fun e!4188992 () Bool)

(declare-fun e!4188993 () Bool)

(assert (=> b!6968399 (= e!4188992 e!4188993)))

(declare-fun res!2842632 () Bool)

(assert (=> b!6968399 (=> (not res!2842632) (not e!4188993))))

(assert (=> b!6968399 (= res!2842632 (not lt!2479463))))

(declare-fun b!6968400 () Bool)

(declare-fun e!4188994 () Bool)

(assert (=> b!6968400 (= e!4188995 e!4188994)))

(declare-fun c!1291872 () Bool)

(assert (=> b!6968400 (= c!1291872 ((_ is EmptyLang!17119) (derivativeStep!5531 (derivativeStep!5531 r!13765 (head!14015 s!9351)) (head!14015 (tail!13081 s!9351)))))))

(declare-fun b!6968401 () Bool)

(assert (=> b!6968401 (= e!4188994 (not lt!2479463))))

(declare-fun b!6968402 () Bool)

(declare-fun res!2842629 () Bool)

(assert (=> b!6968402 (=> res!2842629 e!4188998)))

(assert (=> b!6968402 (= res!2842629 (not (isEmpty!39001 (tail!13081 (tail!13081 (tail!13081 s!9351))))))))

(declare-fun b!6968403 () Bool)

(declare-fun res!2842631 () Bool)

(assert (=> b!6968403 (=> res!2842631 e!4188992)))

(assert (=> b!6968403 (= res!2842631 (not ((_ is ElementMatch!17119) (derivativeStep!5531 (derivativeStep!5531 r!13765 (head!14015 s!9351)) (head!14015 (tail!13081 s!9351))))))))

(assert (=> b!6968403 (= e!4188994 e!4188992)))

(declare-fun b!6968404 () Bool)

(declare-fun res!2842627 () Bool)

(assert (=> b!6968404 (=> (not res!2842627) (not e!4188997))))

(declare-fun call!632556 () Bool)

(assert (=> b!6968404 (= res!2842627 (not call!632556))))

(declare-fun b!6968405 () Bool)

(assert (=> b!6968405 (= e!4188995 (= lt!2479463 call!632556))))

(declare-fun b!6968406 () Bool)

(assert (=> b!6968406 (= e!4188993 e!4188998)))

(declare-fun res!2842625 () Bool)

(assert (=> b!6968406 (=> res!2842625 e!4188998)))

(assert (=> b!6968406 (= res!2842625 call!632556)))

(declare-fun b!6968407 () Bool)

(assert (=> b!6968407 (= e!4188996 (matchR!9221 (derivativeStep!5531 (derivativeStep!5531 (derivativeStep!5531 r!13765 (head!14015 s!9351)) (head!14015 (tail!13081 s!9351))) (head!14015 (tail!13081 (tail!13081 s!9351)))) (tail!13081 (tail!13081 (tail!13081 s!9351)))))))

(declare-fun bm!632551 () Bool)

(assert (=> bm!632551 (= call!632556 (isEmpty!39001 (tail!13081 (tail!13081 s!9351))))))

(declare-fun b!6968408 () Bool)

(declare-fun res!2842626 () Bool)

(assert (=> b!6968408 (=> res!2842626 e!4188992)))

(assert (=> b!6968408 (= res!2842626 e!4188997)))

(declare-fun res!2842630 () Bool)

(assert (=> b!6968408 (=> (not res!2842630) (not e!4188997))))

(assert (=> b!6968408 (= res!2842630 lt!2479463)))

(assert (= (and d!2170891 c!1291874) b!6968396))

(assert (= (and d!2170891 (not c!1291874)) b!6968407))

(assert (= (and d!2170891 c!1291873) b!6968405))

(assert (= (and d!2170891 (not c!1291873)) b!6968400))

(assert (= (and b!6968400 c!1291872) b!6968401))

(assert (= (and b!6968400 (not c!1291872)) b!6968403))

(assert (= (and b!6968403 (not res!2842631)) b!6968408))

(assert (= (and b!6968408 res!2842630) b!6968404))

(assert (= (and b!6968404 res!2842627) b!6968397))

(assert (= (and b!6968397 res!2842628) b!6968395))

(assert (= (and b!6968408 (not res!2842626)) b!6968399))

(assert (= (and b!6968399 res!2842632) b!6968406))

(assert (= (and b!6968406 (not res!2842625)) b!6968402))

(assert (= (and b!6968402 (not res!2842629)) b!6968398))

(assert (= (or b!6968405 b!6968404 b!6968406) bm!632551))

(assert (=> b!6968396 m!7658538))

(declare-fun m!7658842 () Bool)

(assert (=> b!6968396 m!7658842))

(assert (=> d!2170891 m!7658534))

(assert (=> d!2170891 m!7658536))

(assert (=> d!2170891 m!7658538))

(declare-fun m!7658844 () Bool)

(assert (=> d!2170891 m!7658844))

(assert (=> b!6968398 m!7658534))

(declare-fun m!7658846 () Bool)

(assert (=> b!6968398 m!7658846))

(assert (=> bm!632551 m!7658534))

(assert (=> bm!632551 m!7658536))

(assert (=> b!6968397 m!7658534))

(declare-fun m!7658848 () Bool)

(assert (=> b!6968397 m!7658848))

(assert (=> b!6968397 m!7658848))

(declare-fun m!7658850 () Bool)

(assert (=> b!6968397 m!7658850))

(assert (=> b!6968395 m!7658534))

(assert (=> b!6968395 m!7658846))

(assert (=> b!6968407 m!7658534))

(assert (=> b!6968407 m!7658846))

(assert (=> b!6968407 m!7658538))

(assert (=> b!6968407 m!7658846))

(declare-fun m!7658852 () Bool)

(assert (=> b!6968407 m!7658852))

(assert (=> b!6968407 m!7658534))

(assert (=> b!6968407 m!7658848))

(assert (=> b!6968407 m!7658852))

(assert (=> b!6968407 m!7658848))

(declare-fun m!7658854 () Bool)

(assert (=> b!6968407 m!7658854))

(assert (=> b!6968402 m!7658534))

(assert (=> b!6968402 m!7658848))

(assert (=> b!6968402 m!7658848))

(assert (=> b!6968402 m!7658850))

(assert (=> b!6967287 d!2170891))

(declare-fun d!2170893 () Bool)

(declare-fun lt!2479464 () Regex!17119)

(assert (=> d!2170893 (validRegex!8803 lt!2479464)))

(declare-fun e!4189000 () Regex!17119)

(assert (=> d!2170893 (= lt!2479464 e!4189000)))

(declare-fun c!1291875 () Bool)

(assert (=> d!2170893 (= c!1291875 (or ((_ is EmptyExpr!17119) (derivativeStep!5531 r!13765 (head!14015 s!9351))) ((_ is EmptyLang!17119) (derivativeStep!5531 r!13765 (head!14015 s!9351)))))))

(assert (=> d!2170893 (validRegex!8803 (derivativeStep!5531 r!13765 (head!14015 s!9351)))))

(assert (=> d!2170893 (= (derivativeStep!5531 (derivativeStep!5531 r!13765 (head!14015 s!9351)) (head!14015 (tail!13081 s!9351))) lt!2479464)))

(declare-fun b!6968409 () Bool)

(declare-fun c!1291876 () Bool)

(assert (=> b!6968409 (= c!1291876 ((_ is Union!17119) (derivativeStep!5531 r!13765 (head!14015 s!9351))))))

(declare-fun e!4189002 () Regex!17119)

(declare-fun e!4189001 () Regex!17119)

(assert (=> b!6968409 (= e!4189002 e!4189001)))

(declare-fun b!6968410 () Bool)

(declare-fun call!632559 () Regex!17119)

(declare-fun call!632557 () Regex!17119)

(assert (=> b!6968410 (= e!4189001 (Union!17119 call!632559 call!632557))))

(declare-fun bm!632552 () Bool)

(declare-fun call!632560 () Regex!17119)

(assert (=> bm!632552 (= call!632560 call!632559)))

(declare-fun e!4189003 () Regex!17119)

(declare-fun b!6968411 () Bool)

(assert (=> b!6968411 (= e!4189003 (Concat!25964 call!632560 (derivativeStep!5531 r!13765 (head!14015 s!9351))))))

(declare-fun b!6968412 () Bool)

(assert (=> b!6968412 (= e!4189000 e!4189002)))

(declare-fun c!1291878 () Bool)

(assert (=> b!6968412 (= c!1291878 ((_ is ElementMatch!17119) (derivativeStep!5531 r!13765 (head!14015 s!9351))))))

(declare-fun b!6968413 () Bool)

(assert (=> b!6968413 (= e!4189002 (ite (= (head!14015 (tail!13081 s!9351)) (c!1291625 (derivativeStep!5531 r!13765 (head!14015 s!9351)))) EmptyExpr!17119 EmptyLang!17119))))

(declare-fun b!6968414 () Bool)

(assert (=> b!6968414 (= e!4189001 e!4189003)))

(declare-fun c!1291877 () Bool)

(assert (=> b!6968414 (= c!1291877 ((_ is Star!17119) (derivativeStep!5531 r!13765 (head!14015 s!9351))))))

(declare-fun bm!632553 () Bool)

(declare-fun c!1291879 () Bool)

(assert (=> bm!632553 (= call!632557 (derivativeStep!5531 (ite c!1291876 (regTwo!34751 (derivativeStep!5531 r!13765 (head!14015 s!9351))) (ite c!1291879 (regTwo!34750 (derivativeStep!5531 r!13765 (head!14015 s!9351))) (regOne!34750 (derivativeStep!5531 r!13765 (head!14015 s!9351))))) (head!14015 (tail!13081 s!9351))))))

(declare-fun b!6968415 () Bool)

(declare-fun call!632558 () Regex!17119)

(declare-fun e!4188999 () Regex!17119)

(assert (=> b!6968415 (= e!4188999 (Union!17119 (Concat!25964 call!632558 (regTwo!34750 (derivativeStep!5531 r!13765 (head!14015 s!9351)))) EmptyLang!17119))))

(declare-fun b!6968416 () Bool)

(assert (=> b!6968416 (= e!4189000 EmptyLang!17119)))

(declare-fun bm!632554 () Bool)

(assert (=> bm!632554 (= call!632558 call!632557)))

(declare-fun b!6968417 () Bool)

(assert (=> b!6968417 (= c!1291879 (nullable!6906 (regOne!34750 (derivativeStep!5531 r!13765 (head!14015 s!9351)))))))

(assert (=> b!6968417 (= e!4189003 e!4188999)))

(declare-fun b!6968418 () Bool)

(assert (=> b!6968418 (= e!4188999 (Union!17119 (Concat!25964 call!632560 (regTwo!34750 (derivativeStep!5531 r!13765 (head!14015 s!9351)))) call!632558))))

(declare-fun bm!632555 () Bool)

(assert (=> bm!632555 (= call!632559 (derivativeStep!5531 (ite c!1291876 (regOne!34751 (derivativeStep!5531 r!13765 (head!14015 s!9351))) (ite c!1291877 (reg!17448 (derivativeStep!5531 r!13765 (head!14015 s!9351))) (regOne!34750 (derivativeStep!5531 r!13765 (head!14015 s!9351))))) (head!14015 (tail!13081 s!9351))))))

(assert (= (and d!2170893 c!1291875) b!6968416))

(assert (= (and d!2170893 (not c!1291875)) b!6968412))

(assert (= (and b!6968412 c!1291878) b!6968413))

(assert (= (and b!6968412 (not c!1291878)) b!6968409))

(assert (= (and b!6968409 c!1291876) b!6968410))

(assert (= (and b!6968409 (not c!1291876)) b!6968414))

(assert (= (and b!6968414 c!1291877) b!6968411))

(assert (= (and b!6968414 (not c!1291877)) b!6968417))

(assert (= (and b!6968417 c!1291879) b!6968418))

(assert (= (and b!6968417 (not c!1291879)) b!6968415))

(assert (= (or b!6968418 b!6968415) bm!632554))

(assert (= (or b!6968411 b!6968418) bm!632552))

(assert (= (or b!6968410 bm!632552) bm!632555))

(assert (= (or b!6968410 bm!632554) bm!632553))

(declare-fun m!7658856 () Bool)

(assert (=> d!2170893 m!7658856))

(assert (=> d!2170893 m!7658326))

(assert (=> d!2170893 m!7658530))

(assert (=> bm!632553 m!7658532))

(declare-fun m!7658858 () Bool)

(assert (=> bm!632553 m!7658858))

(declare-fun m!7658860 () Bool)

(assert (=> b!6968417 m!7658860))

(assert (=> bm!632555 m!7658532))

(declare-fun m!7658862 () Bool)

(assert (=> bm!632555 m!7658862))

(assert (=> b!6967287 d!2170893))

(declare-fun d!2170895 () Bool)

(assert (=> d!2170895 (= (head!14015 (tail!13081 s!9351)) (h!73244 (tail!13081 s!9351)))))

(assert (=> b!6967287 d!2170895))

(declare-fun d!2170897 () Bool)

(assert (=> d!2170897 (= (tail!13081 (tail!13081 s!9351)) (t!380663 (tail!13081 s!9351)))))

(assert (=> b!6967287 d!2170897))

(declare-fun d!2170899 () Bool)

(assert (=> d!2170899 (= (nullable!6906 (regOne!34750 r!13765)) (nullableFct!2589 (regOne!34750 r!13765)))))

(declare-fun bs!1858871 () Bool)

(assert (= bs!1858871 d!2170899))

(declare-fun m!7658864 () Bool)

(assert (=> bs!1858871 m!7658864))

(assert (=> b!6967317 d!2170899))

(declare-fun d!2170901 () Bool)

(declare-fun lt!2479465 () Regex!17119)

(assert (=> d!2170901 (validRegex!8803 lt!2479465)))

(declare-fun e!4189005 () Regex!17119)

(assert (=> d!2170901 (= lt!2479465 e!4189005)))

(declare-fun c!1291880 () Bool)

(assert (=> d!2170901 (= c!1291880 (or ((_ is EmptyExpr!17119) (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765)))) ((_ is EmptyLang!17119) (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765))))))))

(assert (=> d!2170901 (validRegex!8803 (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765))))))

(assert (=> d!2170901 (= (derivativeStep!5531 (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765))) (head!14015 s!9351)) lt!2479465)))

(declare-fun b!6968419 () Bool)

(declare-fun c!1291881 () Bool)

(assert (=> b!6968419 (= c!1291881 ((_ is Union!17119) (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765)))))))

(declare-fun e!4189007 () Regex!17119)

(declare-fun e!4189006 () Regex!17119)

(assert (=> b!6968419 (= e!4189007 e!4189006)))

(declare-fun b!6968420 () Bool)

(declare-fun call!632563 () Regex!17119)

(declare-fun call!632561 () Regex!17119)

(assert (=> b!6968420 (= e!4189006 (Union!17119 call!632563 call!632561))))

(declare-fun bm!632556 () Bool)

(declare-fun call!632564 () Regex!17119)

(assert (=> bm!632556 (= call!632564 call!632563)))

(declare-fun e!4189008 () Regex!17119)

(declare-fun b!6968421 () Bool)

(assert (=> b!6968421 (= e!4189008 (Concat!25964 call!632564 (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765)))))))

(declare-fun b!6968422 () Bool)

(assert (=> b!6968422 (= e!4189005 e!4189007)))

(declare-fun c!1291883 () Bool)

(assert (=> b!6968422 (= c!1291883 ((_ is ElementMatch!17119) (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765)))))))

(declare-fun b!6968423 () Bool)

(assert (=> b!6968423 (= e!4189007 (ite (= (head!14015 s!9351) (c!1291625 (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765))))) EmptyExpr!17119 EmptyLang!17119))))

(declare-fun b!6968424 () Bool)

(assert (=> b!6968424 (= e!4189006 e!4189008)))

(declare-fun c!1291882 () Bool)

(assert (=> b!6968424 (= c!1291882 ((_ is Star!17119) (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765)))))))

(declare-fun c!1291884 () Bool)

(declare-fun bm!632557 () Bool)

(assert (=> bm!632557 (= call!632561 (derivativeStep!5531 (ite c!1291881 (regTwo!34751 (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765)))) (ite c!1291884 (regTwo!34750 (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765)))) (regOne!34750 (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765)))))) (head!14015 s!9351)))))

(declare-fun b!6968425 () Bool)

(declare-fun e!4189004 () Regex!17119)

(declare-fun call!632562 () Regex!17119)

(assert (=> b!6968425 (= e!4189004 (Union!17119 (Concat!25964 call!632562 (regTwo!34750 (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765))))) EmptyLang!17119))))

(declare-fun b!6968426 () Bool)

(assert (=> b!6968426 (= e!4189005 EmptyLang!17119)))

(declare-fun bm!632558 () Bool)

(assert (=> bm!632558 (= call!632562 call!632561)))

(declare-fun b!6968427 () Bool)

(assert (=> b!6968427 (= c!1291884 (nullable!6906 (regOne!34750 (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765))))))))

(assert (=> b!6968427 (= e!4189008 e!4189004)))

(declare-fun b!6968428 () Bool)

(assert (=> b!6968428 (= e!4189004 (Union!17119 (Concat!25964 call!632564 (regTwo!34750 (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765))))) call!632562))))

(declare-fun bm!632559 () Bool)

(assert (=> bm!632559 (= call!632563 (derivativeStep!5531 (ite c!1291881 (regOne!34751 (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765)))) (ite c!1291882 (reg!17448 (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765)))) (regOne!34750 (ite c!1291780 (regOne!34751 r!13765) (ite c!1291781 (reg!17448 r!13765) (regOne!34750 r!13765)))))) (head!14015 s!9351)))))

(assert (= (and d!2170901 c!1291880) b!6968426))

(assert (= (and d!2170901 (not c!1291880)) b!6968422))

(assert (= (and b!6968422 c!1291883) b!6968423))

(assert (= (and b!6968422 (not c!1291883)) b!6968419))

(assert (= (and b!6968419 c!1291881) b!6968420))

(assert (= (and b!6968419 (not c!1291881)) b!6968424))

(assert (= (and b!6968424 c!1291882) b!6968421))

(assert (= (and b!6968424 (not c!1291882)) b!6968427))

(assert (= (and b!6968427 c!1291884) b!6968428))

(assert (= (and b!6968427 (not c!1291884)) b!6968425))

(assert (= (or b!6968428 b!6968425) bm!632558))

(assert (= (or b!6968421 b!6968428) bm!632556))

(assert (= (or b!6968420 bm!632556) bm!632559))

(assert (= (or b!6968420 bm!632558) bm!632557))

(declare-fun m!7658866 () Bool)

(assert (=> d!2170901 m!7658866))

(declare-fun m!7658868 () Bool)

(assert (=> d!2170901 m!7658868))

(assert (=> bm!632557 m!7658320))

(declare-fun m!7658870 () Bool)

(assert (=> bm!632557 m!7658870))

(declare-fun m!7658872 () Bool)

(assert (=> b!6968427 m!7658872))

(assert (=> bm!632559 m!7658320))

(declare-fun m!7658874 () Bool)

(assert (=> bm!632559 m!7658874))

(assert (=> bm!632472 d!2170901))

(declare-fun b!6968429 () Bool)

(declare-fun e!4189014 () Bool)

(declare-fun call!632566 () Bool)

(assert (=> b!6968429 (= e!4189014 call!632566)))

(declare-fun bm!632560 () Bool)

(declare-fun c!1291886 () Bool)

(declare-fun call!632567 () Bool)

(declare-fun c!1291885 () Bool)

(assert (=> bm!632560 (= call!632567 (validRegex!8803 (ite c!1291886 (reg!17448 (h!73243 lt!2479422)) (ite c!1291885 (regOne!34751 (h!73243 lt!2479422)) (regOne!34750 (h!73243 lt!2479422))))))))

(declare-fun bm!632561 () Bool)

(declare-fun call!632565 () Bool)

(assert (=> bm!632561 (= call!632565 call!632567)))

(declare-fun b!6968430 () Bool)

(declare-fun e!4189009 () Bool)

(declare-fun e!4189013 () Bool)

(assert (=> b!6968430 (= e!4189009 e!4189013)))

(assert (=> b!6968430 (= c!1291885 ((_ is Union!17119) (h!73243 lt!2479422)))))

(declare-fun b!6968431 () Bool)

(declare-fun e!4189012 () Bool)

(assert (=> b!6968431 (= e!4189012 e!4189014)))

(declare-fun res!2842635 () Bool)

(assert (=> b!6968431 (=> (not res!2842635) (not e!4189014))))

(assert (=> b!6968431 (= res!2842635 call!632565)))

(declare-fun b!6968432 () Bool)

(declare-fun e!4189011 () Bool)

(assert (=> b!6968432 (= e!4189011 e!4189009)))

(assert (=> b!6968432 (= c!1291886 ((_ is Star!17119) (h!73243 lt!2479422)))))

(declare-fun b!6968433 () Bool)

(declare-fun e!4189015 () Bool)

(assert (=> b!6968433 (= e!4189015 call!632566)))

(declare-fun b!6968434 () Bool)

(declare-fun e!4189010 () Bool)

(assert (=> b!6968434 (= e!4189010 call!632567)))

(declare-fun b!6968435 () Bool)

(declare-fun res!2842633 () Bool)

(assert (=> b!6968435 (=> (not res!2842633) (not e!4189015))))

(assert (=> b!6968435 (= res!2842633 call!632565)))

(assert (=> b!6968435 (= e!4189013 e!4189015)))

(declare-fun d!2170903 () Bool)

(declare-fun res!2842634 () Bool)

(assert (=> d!2170903 (=> res!2842634 e!4189011)))

(assert (=> d!2170903 (= res!2842634 ((_ is ElementMatch!17119) (h!73243 lt!2479422)))))

(assert (=> d!2170903 (= (validRegex!8803 (h!73243 lt!2479422)) e!4189011)))

(declare-fun bm!632562 () Bool)

(assert (=> bm!632562 (= call!632566 (validRegex!8803 (ite c!1291885 (regTwo!34751 (h!73243 lt!2479422)) (regTwo!34750 (h!73243 lt!2479422)))))))

(declare-fun b!6968436 () Bool)

(assert (=> b!6968436 (= e!4189009 e!4189010)))

(declare-fun res!2842636 () Bool)

(assert (=> b!6968436 (= res!2842636 (not (nullable!6906 (reg!17448 (h!73243 lt!2479422)))))))

(assert (=> b!6968436 (=> (not res!2842636) (not e!4189010))))

(declare-fun b!6968437 () Bool)

(declare-fun res!2842637 () Bool)

(assert (=> b!6968437 (=> res!2842637 e!4189012)))

(assert (=> b!6968437 (= res!2842637 (not ((_ is Concat!25964) (h!73243 lt!2479422))))))

(assert (=> b!6968437 (= e!4189013 e!4189012)))

(assert (= (and d!2170903 (not res!2842634)) b!6968432))

(assert (= (and b!6968432 c!1291886) b!6968436))

(assert (= (and b!6968432 (not c!1291886)) b!6968430))

(assert (= (and b!6968436 res!2842636) b!6968434))

(assert (= (and b!6968430 c!1291885) b!6968435))

(assert (= (and b!6968430 (not c!1291885)) b!6968437))

(assert (= (and b!6968435 res!2842633) b!6968433))

(assert (= (and b!6968437 (not res!2842637)) b!6968431))

(assert (= (and b!6968431 res!2842635) b!6968429))

(assert (= (or b!6968435 b!6968431) bm!632561))

(assert (= (or b!6968433 b!6968429) bm!632562))

(assert (= (or b!6968434 bm!632561) bm!632560))

(declare-fun m!7658876 () Bool)

(assert (=> bm!632560 m!7658876))

(declare-fun m!7658878 () Bool)

(assert (=> bm!632562 m!7658878))

(declare-fun m!7658880 () Bool)

(assert (=> b!6968436 m!7658880))

(assert (=> bs!1858763 d!2170903))

(declare-fun b!6968438 () Bool)

(declare-fun e!4189021 () Bool)

(declare-fun call!632569 () Bool)

(assert (=> b!6968438 (= e!4189021 call!632569)))

(declare-fun c!1291887 () Bool)

(declare-fun bm!632563 () Bool)

(declare-fun call!632570 () Bool)

(declare-fun c!1291888 () Bool)

(assert (=> bm!632563 (= call!632570 (validRegex!8803 (ite c!1291888 (reg!17448 (ite c!1291759 (reg!17448 lt!2479430) (ite c!1291758 (regOne!34751 lt!2479430) (regOne!34750 lt!2479430)))) (ite c!1291887 (regOne!34751 (ite c!1291759 (reg!17448 lt!2479430) (ite c!1291758 (regOne!34751 lt!2479430) (regOne!34750 lt!2479430)))) (regOne!34750 (ite c!1291759 (reg!17448 lt!2479430) (ite c!1291758 (regOne!34751 lt!2479430) (regOne!34750 lt!2479430))))))))))

(declare-fun bm!632564 () Bool)

(declare-fun call!632568 () Bool)

(assert (=> bm!632564 (= call!632568 call!632570)))

(declare-fun b!6968439 () Bool)

(declare-fun e!4189016 () Bool)

(declare-fun e!4189020 () Bool)

(assert (=> b!6968439 (= e!4189016 e!4189020)))

(assert (=> b!6968439 (= c!1291887 ((_ is Union!17119) (ite c!1291759 (reg!17448 lt!2479430) (ite c!1291758 (regOne!34751 lt!2479430) (regOne!34750 lt!2479430)))))))

(declare-fun b!6968440 () Bool)

(declare-fun e!4189019 () Bool)

(assert (=> b!6968440 (= e!4189019 e!4189021)))

(declare-fun res!2842640 () Bool)

(assert (=> b!6968440 (=> (not res!2842640) (not e!4189021))))

(assert (=> b!6968440 (= res!2842640 call!632568)))

(declare-fun b!6968441 () Bool)

(declare-fun e!4189018 () Bool)

(assert (=> b!6968441 (= e!4189018 e!4189016)))

(assert (=> b!6968441 (= c!1291888 ((_ is Star!17119) (ite c!1291759 (reg!17448 lt!2479430) (ite c!1291758 (regOne!34751 lt!2479430) (regOne!34750 lt!2479430)))))))

(declare-fun b!6968442 () Bool)

(declare-fun e!4189022 () Bool)

(assert (=> b!6968442 (= e!4189022 call!632569)))

(declare-fun b!6968443 () Bool)

(declare-fun e!4189017 () Bool)

(assert (=> b!6968443 (= e!4189017 call!632570)))

(declare-fun b!6968444 () Bool)

(declare-fun res!2842638 () Bool)

(assert (=> b!6968444 (=> (not res!2842638) (not e!4189022))))

(assert (=> b!6968444 (= res!2842638 call!632568)))

(assert (=> b!6968444 (= e!4189020 e!4189022)))

(declare-fun d!2170905 () Bool)

(declare-fun res!2842639 () Bool)

(assert (=> d!2170905 (=> res!2842639 e!4189018)))

(assert (=> d!2170905 (= res!2842639 ((_ is ElementMatch!17119) (ite c!1291759 (reg!17448 lt!2479430) (ite c!1291758 (regOne!34751 lt!2479430) (regOne!34750 lt!2479430)))))))

(assert (=> d!2170905 (= (validRegex!8803 (ite c!1291759 (reg!17448 lt!2479430) (ite c!1291758 (regOne!34751 lt!2479430) (regOne!34750 lt!2479430)))) e!4189018)))

(declare-fun bm!632565 () Bool)

(assert (=> bm!632565 (= call!632569 (validRegex!8803 (ite c!1291887 (regTwo!34751 (ite c!1291759 (reg!17448 lt!2479430) (ite c!1291758 (regOne!34751 lt!2479430) (regOne!34750 lt!2479430)))) (regTwo!34750 (ite c!1291759 (reg!17448 lt!2479430) (ite c!1291758 (regOne!34751 lt!2479430) (regOne!34750 lt!2479430)))))))))

(declare-fun b!6968445 () Bool)

(assert (=> b!6968445 (= e!4189016 e!4189017)))

(declare-fun res!2842641 () Bool)

(assert (=> b!6968445 (= res!2842641 (not (nullable!6906 (reg!17448 (ite c!1291759 (reg!17448 lt!2479430) (ite c!1291758 (regOne!34751 lt!2479430) (regOne!34750 lt!2479430)))))))))

(assert (=> b!6968445 (=> (not res!2842641) (not e!4189017))))

(declare-fun b!6968446 () Bool)

(declare-fun res!2842642 () Bool)

(assert (=> b!6968446 (=> res!2842642 e!4189019)))

(assert (=> b!6968446 (= res!2842642 (not ((_ is Concat!25964) (ite c!1291759 (reg!17448 lt!2479430) (ite c!1291758 (regOne!34751 lt!2479430) (regOne!34750 lt!2479430))))))))

(assert (=> b!6968446 (= e!4189020 e!4189019)))

(assert (= (and d!2170905 (not res!2842639)) b!6968441))

(assert (= (and b!6968441 c!1291888) b!6968445))

(assert (= (and b!6968441 (not c!1291888)) b!6968439))

(assert (= (and b!6968445 res!2842641) b!6968443))

(assert (= (and b!6968439 c!1291887) b!6968444))

(assert (= (and b!6968439 (not c!1291887)) b!6968446))

(assert (= (and b!6968444 res!2842638) b!6968442))

(assert (= (and b!6968446 (not res!2842642)) b!6968440))

(assert (= (and b!6968440 res!2842640) b!6968438))

(assert (= (or b!6968444 b!6968440) bm!632564))

(assert (= (or b!6968442 b!6968438) bm!632565))

(assert (= (or b!6968443 bm!632564) bm!632563))

(declare-fun m!7658882 () Bool)

(assert (=> bm!632563 m!7658882))

(declare-fun m!7658884 () Bool)

(assert (=> bm!632565 m!7658884))

(declare-fun m!7658886 () Bool)

(assert (=> b!6968445 m!7658886))

(assert (=> bm!632452 d!2170905))

(declare-fun d!2170907 () Bool)

(assert (=> d!2170907 (= (Exists!4084 (ite c!1291789 lambda!397567 lambda!397568)) (choose!51901 (ite c!1291789 lambda!397567 lambda!397568)))))

(declare-fun bs!1858872 () Bool)

(assert (= bs!1858872 d!2170907))

(declare-fun m!7658888 () Bool)

(assert (=> bs!1858872 m!7658888))

(assert (=> bm!632474 d!2170907))

(assert (=> bs!1858786 d!2170685))

(declare-fun d!2170909 () Bool)

(declare-fun res!2842643 () Bool)

(declare-fun e!4189023 () Bool)

(assert (=> d!2170909 (=> res!2842643 e!4189023)))

(assert (=> d!2170909 (= res!2842643 ((_ is Nil!66795) (t!380662 l!9142)))))

(assert (=> d!2170909 (= (forall!15990 (t!380662 l!9142) lambda!397556) e!4189023)))

(declare-fun b!6968447 () Bool)

(declare-fun e!4189024 () Bool)

(assert (=> b!6968447 (= e!4189023 e!4189024)))

(declare-fun res!2842644 () Bool)

(assert (=> b!6968447 (=> (not res!2842644) (not e!4189024))))

(assert (=> b!6968447 (= res!2842644 (dynLambda!26635 lambda!397556 (h!73243 (t!380662 l!9142))))))

(declare-fun b!6968448 () Bool)

(assert (=> b!6968448 (= e!4189024 (forall!15990 (t!380662 (t!380662 l!9142)) lambda!397556))))

(assert (= (and d!2170909 (not res!2842643)) b!6968447))

(assert (= (and b!6968447 res!2842644) b!6968448))

(declare-fun b_lambda!260741 () Bool)

(assert (=> (not b_lambda!260741) (not b!6968447)))

(declare-fun m!7658890 () Bool)

(assert (=> b!6968447 m!7658890))

(declare-fun m!7658892 () Bool)

(assert (=> b!6968448 m!7658892))

(assert (=> b!6967220 d!2170909))

(declare-fun d!2170911 () Bool)

(assert (=> d!2170911 (= (nullable!6906 (reg!17448 lt!2479429)) (nullableFct!2589 (reg!17448 lt!2479429)))))

(declare-fun bs!1858873 () Bool)

(assert (= bs!1858873 d!2170911))

(declare-fun m!7658894 () Bool)

(assert (=> bs!1858873 m!7658894))

(assert (=> b!6967269 d!2170911))

(declare-fun d!2170913 () Bool)

(assert (=> d!2170913 (= (isUnion!1487 lt!2479455) ((_ is Union!17119) lt!2479455))))

(assert (=> b!6967320 d!2170913))

(declare-fun b!6968449 () Bool)

(declare-fun e!4189030 () Bool)

(declare-fun call!632572 () Bool)

(assert (=> b!6968449 (= e!4189030 call!632572)))

(declare-fun call!632573 () Bool)

(declare-fun c!1291890 () Bool)

(declare-fun bm!632566 () Bool)

(declare-fun c!1291889 () Bool)

(assert (=> bm!632566 (= call!632573 (validRegex!8803 (ite c!1291890 (reg!17448 (ite c!1291758 (regTwo!34751 lt!2479430) (regTwo!34750 lt!2479430))) (ite c!1291889 (regOne!34751 (ite c!1291758 (regTwo!34751 lt!2479430) (regTwo!34750 lt!2479430))) (regOne!34750 (ite c!1291758 (regTwo!34751 lt!2479430) (regTwo!34750 lt!2479430)))))))))

(declare-fun bm!632567 () Bool)

(declare-fun call!632571 () Bool)

(assert (=> bm!632567 (= call!632571 call!632573)))

(declare-fun b!6968450 () Bool)

(declare-fun e!4189025 () Bool)

(declare-fun e!4189029 () Bool)

(assert (=> b!6968450 (= e!4189025 e!4189029)))

(assert (=> b!6968450 (= c!1291889 ((_ is Union!17119) (ite c!1291758 (regTwo!34751 lt!2479430) (regTwo!34750 lt!2479430))))))

(declare-fun b!6968451 () Bool)

(declare-fun e!4189028 () Bool)

(assert (=> b!6968451 (= e!4189028 e!4189030)))

(declare-fun res!2842647 () Bool)

(assert (=> b!6968451 (=> (not res!2842647) (not e!4189030))))

(assert (=> b!6968451 (= res!2842647 call!632571)))

(declare-fun b!6968452 () Bool)

(declare-fun e!4189027 () Bool)

(assert (=> b!6968452 (= e!4189027 e!4189025)))

(assert (=> b!6968452 (= c!1291890 ((_ is Star!17119) (ite c!1291758 (regTwo!34751 lt!2479430) (regTwo!34750 lt!2479430))))))

(declare-fun b!6968453 () Bool)

(declare-fun e!4189031 () Bool)

(assert (=> b!6968453 (= e!4189031 call!632572)))

(declare-fun b!6968454 () Bool)

(declare-fun e!4189026 () Bool)

(assert (=> b!6968454 (= e!4189026 call!632573)))

(declare-fun b!6968455 () Bool)

(declare-fun res!2842645 () Bool)

(assert (=> b!6968455 (=> (not res!2842645) (not e!4189031))))

(assert (=> b!6968455 (= res!2842645 call!632571)))

(assert (=> b!6968455 (= e!4189029 e!4189031)))

(declare-fun d!2170915 () Bool)

(declare-fun res!2842646 () Bool)

(assert (=> d!2170915 (=> res!2842646 e!4189027)))

(assert (=> d!2170915 (= res!2842646 ((_ is ElementMatch!17119) (ite c!1291758 (regTwo!34751 lt!2479430) (regTwo!34750 lt!2479430))))))

(assert (=> d!2170915 (= (validRegex!8803 (ite c!1291758 (regTwo!34751 lt!2479430) (regTwo!34750 lt!2479430))) e!4189027)))

(declare-fun bm!632568 () Bool)

(assert (=> bm!632568 (= call!632572 (validRegex!8803 (ite c!1291889 (regTwo!34751 (ite c!1291758 (regTwo!34751 lt!2479430) (regTwo!34750 lt!2479430))) (regTwo!34750 (ite c!1291758 (regTwo!34751 lt!2479430) (regTwo!34750 lt!2479430))))))))

(declare-fun b!6968456 () Bool)

(assert (=> b!6968456 (= e!4189025 e!4189026)))

(declare-fun res!2842648 () Bool)

(assert (=> b!6968456 (= res!2842648 (not (nullable!6906 (reg!17448 (ite c!1291758 (regTwo!34751 lt!2479430) (regTwo!34750 lt!2479430))))))))

(assert (=> b!6968456 (=> (not res!2842648) (not e!4189026))))

(declare-fun b!6968457 () Bool)

(declare-fun res!2842649 () Bool)

(assert (=> b!6968457 (=> res!2842649 e!4189028)))

(assert (=> b!6968457 (= res!2842649 (not ((_ is Concat!25964) (ite c!1291758 (regTwo!34751 lt!2479430) (regTwo!34750 lt!2479430)))))))

(assert (=> b!6968457 (= e!4189029 e!4189028)))

(assert (= (and d!2170915 (not res!2842646)) b!6968452))

(assert (= (and b!6968452 c!1291890) b!6968456))

(assert (= (and b!6968452 (not c!1291890)) b!6968450))

(assert (= (and b!6968456 res!2842648) b!6968454))

(assert (= (and b!6968450 c!1291889) b!6968455))

(assert (= (and b!6968450 (not c!1291889)) b!6968457))

(assert (= (and b!6968455 res!2842645) b!6968453))

(assert (= (and b!6968457 (not res!2842649)) b!6968451))

(assert (= (and b!6968451 res!2842647) b!6968449))

(assert (= (or b!6968455 b!6968451) bm!632567))

(assert (= (or b!6968453 b!6968449) bm!632568))

(assert (= (or b!6968454 bm!632567) bm!632566))

(declare-fun m!7658896 () Bool)

(assert (=> bm!632566 m!7658896))

(declare-fun m!7658898 () Bool)

(assert (=> bm!632568 m!7658898))

(declare-fun m!7658900 () Bool)

(assert (=> b!6968456 m!7658900))

(assert (=> bm!632454 d!2170915))

(assert (=> d!2170737 d!2170599))

(assert (=> d!2170737 d!2170589))

(declare-fun d!2170917 () Bool)

(assert (=> d!2170917 (= (isEmptyLang!2059 lt!2479455) ((_ is EmptyLang!17119) lt!2479455))))

(assert (=> b!6967322 d!2170917))

(declare-fun b!6968458 () Bool)

(declare-fun e!4189037 () Bool)

(declare-fun call!632575 () Bool)

(assert (=> b!6968458 (= e!4189037 call!632575)))

(declare-fun bm!632569 () Bool)

(declare-fun call!632576 () Bool)

(declare-fun c!1291891 () Bool)

(declare-fun c!1291892 () Bool)

(assert (=> bm!632569 (= call!632576 (validRegex!8803 (ite c!1291892 (reg!17448 (ite c!1291753 (reg!17448 r!13765) (ite c!1291752 (regOne!34751 r!13765) (regOne!34750 r!13765)))) (ite c!1291891 (regOne!34751 (ite c!1291753 (reg!17448 r!13765) (ite c!1291752 (regOne!34751 r!13765) (regOne!34750 r!13765)))) (regOne!34750 (ite c!1291753 (reg!17448 r!13765) (ite c!1291752 (regOne!34751 r!13765) (regOne!34750 r!13765))))))))))

(declare-fun bm!632570 () Bool)

(declare-fun call!632574 () Bool)

(assert (=> bm!632570 (= call!632574 call!632576)))

(declare-fun b!6968459 () Bool)

(declare-fun e!4189032 () Bool)

(declare-fun e!4189036 () Bool)

(assert (=> b!6968459 (= e!4189032 e!4189036)))

(assert (=> b!6968459 (= c!1291891 ((_ is Union!17119) (ite c!1291753 (reg!17448 r!13765) (ite c!1291752 (regOne!34751 r!13765) (regOne!34750 r!13765)))))))

(declare-fun b!6968460 () Bool)

(declare-fun e!4189035 () Bool)

(assert (=> b!6968460 (= e!4189035 e!4189037)))

(declare-fun res!2842652 () Bool)

(assert (=> b!6968460 (=> (not res!2842652) (not e!4189037))))

(assert (=> b!6968460 (= res!2842652 call!632574)))

(declare-fun b!6968461 () Bool)

(declare-fun e!4189034 () Bool)

(assert (=> b!6968461 (= e!4189034 e!4189032)))

(assert (=> b!6968461 (= c!1291892 ((_ is Star!17119) (ite c!1291753 (reg!17448 r!13765) (ite c!1291752 (regOne!34751 r!13765) (regOne!34750 r!13765)))))))

(declare-fun b!6968462 () Bool)

(declare-fun e!4189038 () Bool)

(assert (=> b!6968462 (= e!4189038 call!632575)))

(declare-fun b!6968463 () Bool)

(declare-fun e!4189033 () Bool)

(assert (=> b!6968463 (= e!4189033 call!632576)))

(declare-fun b!6968464 () Bool)

(declare-fun res!2842650 () Bool)

(assert (=> b!6968464 (=> (not res!2842650) (not e!4189038))))

(assert (=> b!6968464 (= res!2842650 call!632574)))

(assert (=> b!6968464 (= e!4189036 e!4189038)))

(declare-fun d!2170919 () Bool)

(declare-fun res!2842651 () Bool)

(assert (=> d!2170919 (=> res!2842651 e!4189034)))

(assert (=> d!2170919 (= res!2842651 ((_ is ElementMatch!17119) (ite c!1291753 (reg!17448 r!13765) (ite c!1291752 (regOne!34751 r!13765) (regOne!34750 r!13765)))))))

(assert (=> d!2170919 (= (validRegex!8803 (ite c!1291753 (reg!17448 r!13765) (ite c!1291752 (regOne!34751 r!13765) (regOne!34750 r!13765)))) e!4189034)))

(declare-fun bm!632571 () Bool)

(assert (=> bm!632571 (= call!632575 (validRegex!8803 (ite c!1291891 (regTwo!34751 (ite c!1291753 (reg!17448 r!13765) (ite c!1291752 (regOne!34751 r!13765) (regOne!34750 r!13765)))) (regTwo!34750 (ite c!1291753 (reg!17448 r!13765) (ite c!1291752 (regOne!34751 r!13765) (regOne!34750 r!13765)))))))))

(declare-fun b!6968465 () Bool)

(assert (=> b!6968465 (= e!4189032 e!4189033)))

(declare-fun res!2842653 () Bool)

(assert (=> b!6968465 (= res!2842653 (not (nullable!6906 (reg!17448 (ite c!1291753 (reg!17448 r!13765) (ite c!1291752 (regOne!34751 r!13765) (regOne!34750 r!13765)))))))))

(assert (=> b!6968465 (=> (not res!2842653) (not e!4189033))))

(declare-fun b!6968466 () Bool)

(declare-fun res!2842654 () Bool)

(assert (=> b!6968466 (=> res!2842654 e!4189035)))

(assert (=> b!6968466 (= res!2842654 (not ((_ is Concat!25964) (ite c!1291753 (reg!17448 r!13765) (ite c!1291752 (regOne!34751 r!13765) (regOne!34750 r!13765))))))))

(assert (=> b!6968466 (= e!4189036 e!4189035)))

(assert (= (and d!2170919 (not res!2842651)) b!6968461))

(assert (= (and b!6968461 c!1291892) b!6968465))

(assert (= (and b!6968461 (not c!1291892)) b!6968459))

(assert (= (and b!6968465 res!2842653) b!6968463))

(assert (= (and b!6968459 c!1291891) b!6968464))

(assert (= (and b!6968459 (not c!1291891)) b!6968466))

(assert (= (and b!6968464 res!2842650) b!6968462))

(assert (= (and b!6968466 (not res!2842654)) b!6968460))

(assert (= (and b!6968460 res!2842652) b!6968458))

(assert (= (or b!6968464 b!6968460) bm!632570))

(assert (= (or b!6968462 b!6968458) bm!632571))

(assert (= (or b!6968463 bm!632570) bm!632569))

(declare-fun m!7658902 () Bool)

(assert (=> bm!632569 m!7658902))

(declare-fun m!7658904 () Bool)

(assert (=> bm!632571 m!7658904))

(declare-fun m!7658906 () Bool)

(assert (=> b!6968465 m!7658906))

(assert (=> bm!632449 d!2170919))

(declare-fun d!2170921 () Bool)

(assert (=> d!2170921 (= (nullable!6906 (derivativeStep!5531 r!13765 (head!14015 s!9351))) (nullableFct!2589 (derivativeStep!5531 r!13765 (head!14015 s!9351))))))

(declare-fun bs!1858874 () Bool)

(assert (= bs!1858874 d!2170921))

(assert (=> bs!1858874 m!7658326))

(declare-fun m!7658908 () Bool)

(assert (=> bs!1858874 m!7658908))

(assert (=> b!6967276 d!2170921))

(declare-fun d!2170923 () Bool)

(assert (=> d!2170923 (= (isEmpty!38999 (tail!13079 (t!380662 l!9142))) ((_ is Nil!66795) (tail!13079 (t!380662 l!9142))))))

(assert (=> b!6967324 d!2170923))

(declare-fun d!2170925 () Bool)

(assert (=> d!2170925 (= (tail!13079 (t!380662 l!9142)) (t!380662 (t!380662 l!9142)))))

(assert (=> b!6967324 d!2170925))

(declare-fun b!6968467 () Bool)

(declare-fun e!4189044 () Bool)

(declare-fun call!632578 () Bool)

(assert (=> b!6968467 (= e!4189044 call!632578)))

(declare-fun c!1291894 () Bool)

(declare-fun c!1291893 () Bool)

(declare-fun call!632579 () Bool)

(declare-fun bm!632572 () Bool)

(assert (=> bm!632572 (= call!632579 (validRegex!8803 (ite c!1291894 (reg!17448 (ite c!1291752 (regTwo!34751 r!13765) (regTwo!34750 r!13765))) (ite c!1291893 (regOne!34751 (ite c!1291752 (regTwo!34751 r!13765) (regTwo!34750 r!13765))) (regOne!34750 (ite c!1291752 (regTwo!34751 r!13765) (regTwo!34750 r!13765)))))))))

(declare-fun bm!632573 () Bool)

(declare-fun call!632577 () Bool)

(assert (=> bm!632573 (= call!632577 call!632579)))

(declare-fun b!6968468 () Bool)

(declare-fun e!4189039 () Bool)

(declare-fun e!4189043 () Bool)

(assert (=> b!6968468 (= e!4189039 e!4189043)))

(assert (=> b!6968468 (= c!1291893 ((_ is Union!17119) (ite c!1291752 (regTwo!34751 r!13765) (regTwo!34750 r!13765))))))

(declare-fun b!6968469 () Bool)

(declare-fun e!4189042 () Bool)

(assert (=> b!6968469 (= e!4189042 e!4189044)))

(declare-fun res!2842657 () Bool)

(assert (=> b!6968469 (=> (not res!2842657) (not e!4189044))))

(assert (=> b!6968469 (= res!2842657 call!632577)))

(declare-fun b!6968470 () Bool)

(declare-fun e!4189041 () Bool)

(assert (=> b!6968470 (= e!4189041 e!4189039)))

(assert (=> b!6968470 (= c!1291894 ((_ is Star!17119) (ite c!1291752 (regTwo!34751 r!13765) (regTwo!34750 r!13765))))))

(declare-fun b!6968471 () Bool)

(declare-fun e!4189045 () Bool)

(assert (=> b!6968471 (= e!4189045 call!632578)))

(declare-fun b!6968472 () Bool)

(declare-fun e!4189040 () Bool)

(assert (=> b!6968472 (= e!4189040 call!632579)))

(declare-fun b!6968473 () Bool)

(declare-fun res!2842655 () Bool)

(assert (=> b!6968473 (=> (not res!2842655) (not e!4189045))))

(assert (=> b!6968473 (= res!2842655 call!632577)))

(assert (=> b!6968473 (= e!4189043 e!4189045)))

(declare-fun d!2170927 () Bool)

(declare-fun res!2842656 () Bool)

(assert (=> d!2170927 (=> res!2842656 e!4189041)))

(assert (=> d!2170927 (= res!2842656 ((_ is ElementMatch!17119) (ite c!1291752 (regTwo!34751 r!13765) (regTwo!34750 r!13765))))))

(assert (=> d!2170927 (= (validRegex!8803 (ite c!1291752 (regTwo!34751 r!13765) (regTwo!34750 r!13765))) e!4189041)))

(declare-fun bm!632574 () Bool)

(assert (=> bm!632574 (= call!632578 (validRegex!8803 (ite c!1291893 (regTwo!34751 (ite c!1291752 (regTwo!34751 r!13765) (regTwo!34750 r!13765))) (regTwo!34750 (ite c!1291752 (regTwo!34751 r!13765) (regTwo!34750 r!13765))))))))

(declare-fun b!6968474 () Bool)

(assert (=> b!6968474 (= e!4189039 e!4189040)))

(declare-fun res!2842658 () Bool)

(assert (=> b!6968474 (= res!2842658 (not (nullable!6906 (reg!17448 (ite c!1291752 (regTwo!34751 r!13765) (regTwo!34750 r!13765))))))))

(assert (=> b!6968474 (=> (not res!2842658) (not e!4189040))))

(declare-fun b!6968475 () Bool)

(declare-fun res!2842659 () Bool)

(assert (=> b!6968475 (=> res!2842659 e!4189042)))

(assert (=> b!6968475 (= res!2842659 (not ((_ is Concat!25964) (ite c!1291752 (regTwo!34751 r!13765) (regTwo!34750 r!13765)))))))

(assert (=> b!6968475 (= e!4189043 e!4189042)))

(assert (= (and d!2170927 (not res!2842656)) b!6968470))

(assert (= (and b!6968470 c!1291894) b!6968474))

(assert (= (and b!6968470 (not c!1291894)) b!6968468))

(assert (= (and b!6968474 res!2842658) b!6968472))

(assert (= (and b!6968468 c!1291893) b!6968473))

(assert (= (and b!6968468 (not c!1291893)) b!6968475))

(assert (= (and b!6968473 res!2842655) b!6968471))

(assert (= (and b!6968475 (not res!2842659)) b!6968469))

(assert (= (and b!6968469 res!2842657) b!6968467))

(assert (= (or b!6968473 b!6968469) bm!632573))

(assert (= (or b!6968471 b!6968467) bm!632574))

(assert (= (or b!6968472 bm!632573) bm!632572))

(declare-fun m!7658910 () Bool)

(assert (=> bm!632572 m!7658910))

(declare-fun m!7658912 () Bool)

(assert (=> bm!632574 m!7658912))

(declare-fun m!7658914 () Bool)

(assert (=> b!6968474 m!7658914))

(assert (=> bm!632451 d!2170927))

(assert (=> b!6967278 d!2170895))

(declare-fun d!2170929 () Bool)

(assert (=> d!2170929 (= (head!14014 (t!380662 l!9142)) (h!73243 (t!380662 l!9142)))))

(assert (=> b!6967326 d!2170929))

(declare-fun b!6968476 () Bool)

(declare-fun e!4189051 () Bool)

(declare-fun call!632581 () Bool)

(assert (=> b!6968476 (= e!4189051 call!632581)))

(declare-fun call!632582 () Bool)

(declare-fun c!1291895 () Bool)

(declare-fun c!1291896 () Bool)

(declare-fun bm!632575 () Bool)

(assert (=> bm!632575 (= call!632582 (validRegex!8803 (ite c!1291896 (reg!17448 lt!2479455) (ite c!1291895 (regOne!34751 lt!2479455) (regOne!34750 lt!2479455)))))))

(declare-fun bm!632576 () Bool)

(declare-fun call!632580 () Bool)

(assert (=> bm!632576 (= call!632580 call!632582)))

(declare-fun b!6968477 () Bool)

(declare-fun e!4189046 () Bool)

(declare-fun e!4189050 () Bool)

(assert (=> b!6968477 (= e!4189046 e!4189050)))

(assert (=> b!6968477 (= c!1291895 ((_ is Union!17119) lt!2479455))))

(declare-fun b!6968478 () Bool)

(declare-fun e!4189049 () Bool)

(assert (=> b!6968478 (= e!4189049 e!4189051)))

(declare-fun res!2842662 () Bool)

(assert (=> b!6968478 (=> (not res!2842662) (not e!4189051))))

(assert (=> b!6968478 (= res!2842662 call!632580)))

(declare-fun b!6968479 () Bool)

(declare-fun e!4189048 () Bool)

(assert (=> b!6968479 (= e!4189048 e!4189046)))

(assert (=> b!6968479 (= c!1291896 ((_ is Star!17119) lt!2479455))))

(declare-fun b!6968480 () Bool)

(declare-fun e!4189052 () Bool)

(assert (=> b!6968480 (= e!4189052 call!632581)))

(declare-fun b!6968481 () Bool)

(declare-fun e!4189047 () Bool)

(assert (=> b!6968481 (= e!4189047 call!632582)))

(declare-fun b!6968482 () Bool)

(declare-fun res!2842660 () Bool)

(assert (=> b!6968482 (=> (not res!2842660) (not e!4189052))))

(assert (=> b!6968482 (= res!2842660 call!632580)))

(assert (=> b!6968482 (= e!4189050 e!4189052)))

(declare-fun d!2170931 () Bool)

(declare-fun res!2842661 () Bool)

(assert (=> d!2170931 (=> res!2842661 e!4189048)))

(assert (=> d!2170931 (= res!2842661 ((_ is ElementMatch!17119) lt!2479455))))

(assert (=> d!2170931 (= (validRegex!8803 lt!2479455) e!4189048)))

(declare-fun bm!632577 () Bool)

(assert (=> bm!632577 (= call!632581 (validRegex!8803 (ite c!1291895 (regTwo!34751 lt!2479455) (regTwo!34750 lt!2479455))))))

(declare-fun b!6968483 () Bool)

(assert (=> b!6968483 (= e!4189046 e!4189047)))

(declare-fun res!2842663 () Bool)

(assert (=> b!6968483 (= res!2842663 (not (nullable!6906 (reg!17448 lt!2479455))))))

(assert (=> b!6968483 (=> (not res!2842663) (not e!4189047))))

(declare-fun b!6968484 () Bool)

(declare-fun res!2842664 () Bool)

(assert (=> b!6968484 (=> res!2842664 e!4189049)))

(assert (=> b!6968484 (= res!2842664 (not ((_ is Concat!25964) lt!2479455)))))

(assert (=> b!6968484 (= e!4189050 e!4189049)))

(assert (= (and d!2170931 (not res!2842661)) b!6968479))

(assert (= (and b!6968479 c!1291896) b!6968483))

(assert (= (and b!6968479 (not c!1291896)) b!6968477))

(assert (= (and b!6968483 res!2842663) b!6968481))

(assert (= (and b!6968477 c!1291895) b!6968482))

(assert (= (and b!6968477 (not c!1291895)) b!6968484))

(assert (= (and b!6968482 res!2842660) b!6968480))

(assert (= (and b!6968484 (not res!2842664)) b!6968478))

(assert (= (and b!6968478 res!2842662) b!6968476))

(assert (= (or b!6968482 b!6968478) bm!632576))

(assert (= (or b!6968480 b!6968476) bm!632577))

(assert (= (or b!6968481 bm!632576) bm!632575))

(declare-fun m!7658916 () Bool)

(assert (=> bm!632575 m!7658916))

(declare-fun m!7658918 () Bool)

(assert (=> bm!632577 m!7658918))

(declare-fun m!7658920 () Bool)

(assert (=> b!6968483 m!7658920))

(assert (=> d!2170745 d!2170931))

(declare-fun d!2170933 () Bool)

(declare-fun res!2842665 () Bool)

(declare-fun e!4189053 () Bool)

(assert (=> d!2170933 (=> res!2842665 e!4189053)))

(assert (=> d!2170933 (= res!2842665 ((_ is Nil!66795) (t!380662 l!9142)))))

(assert (=> d!2170933 (= (forall!15990 (t!380662 l!9142) lambda!397566) e!4189053)))

(declare-fun b!6968485 () Bool)

(declare-fun e!4189054 () Bool)

(assert (=> b!6968485 (= e!4189053 e!4189054)))

(declare-fun res!2842666 () Bool)

(assert (=> b!6968485 (=> (not res!2842666) (not e!4189054))))

(assert (=> b!6968485 (= res!2842666 (dynLambda!26635 lambda!397566 (h!73243 (t!380662 l!9142))))))

(declare-fun b!6968486 () Bool)

(assert (=> b!6968486 (= e!4189054 (forall!15990 (t!380662 (t!380662 l!9142)) lambda!397566))))

(assert (= (and d!2170933 (not res!2842665)) b!6968485))

(assert (= (and b!6968485 res!2842666) b!6968486))

(declare-fun b_lambda!260743 () Bool)

(assert (=> (not b_lambda!260743) (not b!6968485)))

(declare-fun m!7658922 () Bool)

(assert (=> b!6968485 m!7658922))

(declare-fun m!7658924 () Bool)

(assert (=> b!6968486 m!7658924))

(assert (=> d!2170745 d!2170933))

(declare-fun bs!1858875 () Bool)

(declare-fun b!6968497 () Bool)

(assert (= bs!1858875 (and b!6968497 b!6966819)))

(declare-fun lambda!397579 () Int)

(assert (=> bs!1858875 (= (and (= (reg!17448 (regTwo!34751 (regTwo!34751 r!13765))) (reg!17448 r!13765)) (= (regTwo!34751 (regTwo!34751 r!13765)) r!13765)) (= lambda!397579 lambda!397552))))

(declare-fun bs!1858876 () Bool)

(assert (= bs!1858876 (and b!6968497 b!6967261)))

(assert (=> bs!1858876 (= (and (= (reg!17448 (regTwo!34751 (regTwo!34751 r!13765))) (reg!17448 (regTwo!34751 r!13765))) (= (regTwo!34751 (regTwo!34751 r!13765)) (regTwo!34751 r!13765))) (= lambda!397579 lambda!397564))))

(declare-fun bs!1858877 () Bool)

(assert (= bs!1858877 (and b!6968497 b!6966809)))

(assert (=> bs!1858877 (not (= lambda!397579 lambda!397553))))

(declare-fun bs!1858878 () Bool)

(assert (= bs!1858878 (and b!6968497 b!6967329)))

(assert (=> bs!1858878 (not (= lambda!397579 lambda!397568))))

(declare-fun bs!1858879 () Bool)

(assert (= bs!1858879 (and b!6968497 b!6967251)))

(assert (=> bs!1858879 (not (= lambda!397579 lambda!397565))))

(declare-fun bs!1858880 () Bool)

(assert (= bs!1858880 (and b!6968497 b!6967339)))

(assert (=> bs!1858880 (= (and (= (reg!17448 (regTwo!34751 (regTwo!34751 r!13765))) (reg!17448 (regOne!34751 r!13765))) (= (regTwo!34751 (regTwo!34751 r!13765)) (regOne!34751 r!13765))) (= lambda!397579 lambda!397567))))

(assert (=> b!6968497 true))

(assert (=> b!6968497 true))

(declare-fun bs!1858881 () Bool)

(declare-fun b!6968487 () Bool)

(assert (= bs!1858881 (and b!6968487 b!6966819)))

(declare-fun lambda!397580 () Int)

(assert (=> bs!1858881 (not (= lambda!397580 lambda!397552))))

(declare-fun bs!1858882 () Bool)

(assert (= bs!1858882 (and b!6968487 b!6966809)))

(assert (=> bs!1858882 (= (and (= (regOne!34750 (regTwo!34751 (regTwo!34751 r!13765))) (regOne!34750 r!13765)) (= (regTwo!34750 (regTwo!34751 (regTwo!34751 r!13765))) (regTwo!34750 r!13765))) (= lambda!397580 lambda!397553))))

(declare-fun bs!1858883 () Bool)

(assert (= bs!1858883 (and b!6968487 b!6967329)))

(assert (=> bs!1858883 (= (and (= (regOne!34750 (regTwo!34751 (regTwo!34751 r!13765))) (regOne!34750 (regOne!34751 r!13765))) (= (regTwo!34750 (regTwo!34751 (regTwo!34751 r!13765))) (regTwo!34750 (regOne!34751 r!13765)))) (= lambda!397580 lambda!397568))))

(declare-fun bs!1858884 () Bool)

(assert (= bs!1858884 (and b!6968487 b!6967251)))

(assert (=> bs!1858884 (= (and (= (regOne!34750 (regTwo!34751 (regTwo!34751 r!13765))) (regOne!34750 (regTwo!34751 r!13765))) (= (regTwo!34750 (regTwo!34751 (regTwo!34751 r!13765))) (regTwo!34750 (regTwo!34751 r!13765)))) (= lambda!397580 lambda!397565))))

(declare-fun bs!1858885 () Bool)

(assert (= bs!1858885 (and b!6968487 b!6967339)))

(assert (=> bs!1858885 (not (= lambda!397580 lambda!397567))))

(declare-fun bs!1858886 () Bool)

(assert (= bs!1858886 (and b!6968487 b!6967261)))

(assert (=> bs!1858886 (not (= lambda!397580 lambda!397564))))

(declare-fun bs!1858887 () Bool)

(assert (= bs!1858887 (and b!6968487 b!6968497)))

(assert (=> bs!1858887 (not (= lambda!397580 lambda!397579))))

(assert (=> b!6968487 true))

(assert (=> b!6968487 true))

(declare-fun e!4189057 () Bool)

(declare-fun call!632584 () Bool)

(assert (=> b!6968487 (= e!4189057 call!632584)))

(declare-fun b!6968488 () Bool)

(declare-fun e!4189059 () Bool)

(assert (=> b!6968488 (= e!4189059 (matchRSpec!4136 (regTwo!34751 (regTwo!34751 (regTwo!34751 r!13765))) s!9351))))

(declare-fun bm!632578 () Bool)

(declare-fun call!632583 () Bool)

(assert (=> bm!632578 (= call!632583 (isEmpty!39001 s!9351))))

(declare-fun b!6968490 () Bool)

(declare-fun e!4189061 () Bool)

(assert (=> b!6968490 (= e!4189061 e!4189059)))

(declare-fun res!2842669 () Bool)

(assert (=> b!6968490 (= res!2842669 (matchRSpec!4136 (regOne!34751 (regTwo!34751 (regTwo!34751 r!13765))) s!9351))))

(assert (=> b!6968490 (=> res!2842669 e!4189059)))

(declare-fun b!6968491 () Bool)

(declare-fun e!4189058 () Bool)

(declare-fun e!4189056 () Bool)

(assert (=> b!6968491 (= e!4189058 e!4189056)))

(declare-fun res!2842667 () Bool)

(assert (=> b!6968491 (= res!2842667 (not ((_ is EmptyLang!17119) (regTwo!34751 (regTwo!34751 r!13765)))))))

(assert (=> b!6968491 (=> (not res!2842667) (not e!4189056))))

(declare-fun b!6968492 () Bool)

(declare-fun e!4189055 () Bool)

(assert (=> b!6968492 (= e!4189055 (= s!9351 (Cons!66796 (c!1291625 (regTwo!34751 (regTwo!34751 r!13765))) Nil!66796)))))

(declare-fun b!6968493 () Bool)

(declare-fun c!1291900 () Bool)

(assert (=> b!6968493 (= c!1291900 ((_ is ElementMatch!17119) (regTwo!34751 (regTwo!34751 r!13765))))))

(assert (=> b!6968493 (= e!4189056 e!4189055)))

(declare-fun b!6968494 () Bool)

(declare-fun c!1291897 () Bool)

(assert (=> b!6968494 (= c!1291897 ((_ is Union!17119) (regTwo!34751 (regTwo!34751 r!13765))))))

(assert (=> b!6968494 (= e!4189055 e!4189061)))

(declare-fun b!6968495 () Bool)

(declare-fun res!2842668 () Bool)

(declare-fun e!4189060 () Bool)

(assert (=> b!6968495 (=> res!2842668 e!4189060)))

(assert (=> b!6968495 (= res!2842668 call!632583)))

(assert (=> b!6968495 (= e!4189057 e!4189060)))

(declare-fun b!6968496 () Bool)

(assert (=> b!6968496 (= e!4189058 call!632583)))

(declare-fun c!1291898 () Bool)

(declare-fun bm!632579 () Bool)

(assert (=> bm!632579 (= call!632584 (Exists!4084 (ite c!1291898 lambda!397579 lambda!397580)))))

(assert (=> b!6968497 (= e!4189060 call!632584)))

(declare-fun d!2170935 () Bool)

(declare-fun c!1291899 () Bool)

(assert (=> d!2170935 (= c!1291899 ((_ is EmptyExpr!17119) (regTwo!34751 (regTwo!34751 r!13765))))))

(assert (=> d!2170935 (= (matchRSpec!4136 (regTwo!34751 (regTwo!34751 r!13765)) s!9351) e!4189058)))

(declare-fun b!6968489 () Bool)

(assert (=> b!6968489 (= e!4189061 e!4189057)))

(assert (=> b!6968489 (= c!1291898 ((_ is Star!17119) (regTwo!34751 (regTwo!34751 r!13765))))))

(assert (= (and d!2170935 c!1291899) b!6968496))

(assert (= (and d!2170935 (not c!1291899)) b!6968491))

(assert (= (and b!6968491 res!2842667) b!6968493))

(assert (= (and b!6968493 c!1291900) b!6968492))

(assert (= (and b!6968493 (not c!1291900)) b!6968494))

(assert (= (and b!6968494 c!1291897) b!6968490))

(assert (= (and b!6968494 (not c!1291897)) b!6968489))

(assert (= (and b!6968490 (not res!2842669)) b!6968488))

(assert (= (and b!6968489 c!1291898) b!6968495))

(assert (= (and b!6968489 (not c!1291898)) b!6968487))

(assert (= (and b!6968495 (not res!2842668)) b!6968497))

(assert (= (or b!6968497 b!6968487) bm!632579))

(assert (= (or b!6968496 b!6968495) bm!632578))

(declare-fun m!7658926 () Bool)

(assert (=> b!6968488 m!7658926))

(assert (=> bm!632578 m!7658310))

(declare-fun m!7658928 () Bool)

(assert (=> b!6968490 m!7658928))

(declare-fun m!7658930 () Bool)

(assert (=> bm!632579 m!7658930))

(assert (=> b!6967252 d!2170935))

(declare-fun bs!1858888 () Bool)

(declare-fun d!2170937 () Bool)

(assert (= bs!1858888 (and d!2170937 d!2170603)))

(declare-fun lambda!397581 () Int)

(assert (=> bs!1858888 (not (= lambda!397581 lambda!397556))))

(declare-fun bs!1858889 () Bool)

(assert (= bs!1858889 (and d!2170937 d!2170585)))

(assert (=> bs!1858889 (= lambda!397581 lambda!397540)))

(declare-fun bs!1858890 () Bool)

(assert (= bs!1858890 (and d!2170937 d!2170745)))

(assert (=> bs!1858890 (= lambda!397581 lambda!397566)))

(declare-fun bs!1858891 () Bool)

(assert (= bs!1858891 (and d!2170937 d!2170721)))

(assert (=> bs!1858891 (= lambda!397581 lambda!397563)))

(declare-fun bs!1858892 () Bool)

(assert (= bs!1858892 (and d!2170937 b!6966548)))

(assert (=> bs!1858892 (not (= lambda!397581 lambda!397530))))

(declare-fun bs!1858893 () Bool)

(assert (= bs!1858893 (and d!2170937 d!2170569)))

(assert (=> bs!1858893 (= lambda!397581 lambda!397539)))

(declare-fun bs!1858894 () Bool)

(assert (= bs!1858894 (and d!2170937 start!668274)))

(assert (=> bs!1858894 (= lambda!397581 lambda!397529)))

(declare-fun b!6968498 () Bool)

(declare-fun e!4189063 () Regex!17119)

(declare-fun e!4189064 () Regex!17119)

(assert (=> b!6968498 (= e!4189063 e!4189064)))

(declare-fun c!1291904 () Bool)

(assert (=> b!6968498 (= c!1291904 ((_ is Cons!66795) (t!380662 (t!380662 l!9142))))))

(declare-fun b!6968500 () Bool)

(assert (=> b!6968500 (= e!4189063 (h!73243 (t!380662 (t!380662 l!9142))))))

(declare-fun b!6968501 () Bool)

(declare-fun e!4189065 () Bool)

(declare-fun lt!2479466 () Regex!17119)

(assert (=> b!6968501 (= e!4189065 (isEmptyLang!2059 lt!2479466))))

(declare-fun b!6968502 () Bool)

(declare-fun e!4189066 () Bool)

(assert (=> b!6968502 (= e!4189066 (isEmpty!38999 (t!380662 (t!380662 (t!380662 l!9142)))))))

(declare-fun b!6968503 () Bool)

(declare-fun e!4189062 () Bool)

(assert (=> b!6968503 (= e!4189065 e!4189062)))

(declare-fun c!1291901 () Bool)

(assert (=> b!6968503 (= c!1291901 (isEmpty!38999 (tail!13079 (t!380662 (t!380662 l!9142)))))))

(declare-fun b!6968504 () Bool)

(assert (=> b!6968504 (= e!4189064 EmptyLang!17119)))

(declare-fun b!6968505 () Bool)

(assert (=> b!6968505 (= e!4189062 (= lt!2479466 (head!14014 (t!380662 (t!380662 l!9142)))))))

(declare-fun e!4189067 () Bool)

(assert (=> d!2170937 e!4189067))

(declare-fun res!2842671 () Bool)

(assert (=> d!2170937 (=> (not res!2842671) (not e!4189067))))

(assert (=> d!2170937 (= res!2842671 (validRegex!8803 lt!2479466))))

(assert (=> d!2170937 (= lt!2479466 e!4189063)))

(declare-fun c!1291902 () Bool)

(assert (=> d!2170937 (= c!1291902 e!4189066)))

(declare-fun res!2842670 () Bool)

(assert (=> d!2170937 (=> (not res!2842670) (not e!4189066))))

(assert (=> d!2170937 (= res!2842670 ((_ is Cons!66795) (t!380662 (t!380662 l!9142))))))

(assert (=> d!2170937 (forall!15990 (t!380662 (t!380662 l!9142)) lambda!397581)))

(assert (=> d!2170937 (= (generalisedUnion!2594 (t!380662 (t!380662 l!9142))) lt!2479466)))

(declare-fun b!6968499 () Bool)

(assert (=> b!6968499 (= e!4189062 (isUnion!1487 lt!2479466))))

(declare-fun b!6968506 () Bool)

(assert (=> b!6968506 (= e!4189067 e!4189065)))

(declare-fun c!1291903 () Bool)

(assert (=> b!6968506 (= c!1291903 (isEmpty!38999 (t!380662 (t!380662 l!9142))))))

(declare-fun b!6968507 () Bool)

(assert (=> b!6968507 (= e!4189064 (Union!17119 (h!73243 (t!380662 (t!380662 l!9142))) (generalisedUnion!2594 (t!380662 (t!380662 (t!380662 l!9142))))))))

(assert (= (and d!2170937 res!2842670) b!6968502))

(assert (= (and d!2170937 c!1291902) b!6968500))

(assert (= (and d!2170937 (not c!1291902)) b!6968498))

(assert (= (and b!6968498 c!1291904) b!6968507))

(assert (= (and b!6968498 (not c!1291904)) b!6968504))

(assert (= (and d!2170937 res!2842671) b!6968506))

(assert (= (and b!6968506 c!1291903) b!6968501))

(assert (= (and b!6968506 (not c!1291903)) b!6968503))

(assert (= (and b!6968503 c!1291901) b!6968505))

(assert (= (and b!6968503 (not c!1291901)) b!6968499))

(declare-fun m!7658932 () Bool)

(assert (=> b!6968505 m!7658932))

(declare-fun m!7658934 () Bool)

(assert (=> b!6968499 m!7658934))

(declare-fun m!7658936 () Bool)

(assert (=> d!2170937 m!7658936))

(declare-fun m!7658938 () Bool)

(assert (=> d!2170937 m!7658938))

(declare-fun m!7658940 () Bool)

(assert (=> b!6968502 m!7658940))

(assert (=> b!6968506 m!7658558))

(declare-fun m!7658942 () Bool)

(assert (=> b!6968503 m!7658942))

(assert (=> b!6968503 m!7658942))

(declare-fun m!7658944 () Bool)

(assert (=> b!6968503 m!7658944))

(declare-fun m!7658946 () Bool)

(assert (=> b!6968501 m!7658946))

(declare-fun m!7658948 () Bool)

(assert (=> b!6968507 m!7658948))

(assert (=> b!6967328 d!2170937))

(declare-fun d!2170939 () Bool)

(assert (=> d!2170939 (= (isUnion!1487 lt!2479450) ((_ is Union!17119) lt!2479450))))

(assert (=> b!6967231 d!2170939))

(declare-fun d!2170941 () Bool)

(assert (=> d!2170941 (= (isEmpty!39001 (tail!13081 (tail!13081 s!9351))) ((_ is Nil!66796) (tail!13081 (tail!13081 s!9351))))))

(assert (=> b!6967282 d!2170941))

(assert (=> b!6967282 d!2170897))

(declare-fun d!2170943 () Bool)

(assert (=> d!2170943 true))

(assert (=> d!2170943 true))

(declare-fun res!2842674 () Bool)

(assert (=> d!2170943 (= (choose!51901 (ite c!1291688 lambda!397552 lambda!397553)) res!2842674)))

(assert (=> d!2170687 d!2170943))

(declare-fun d!2170945 () Bool)

(assert (=> d!2170945 (= (isEmptyLang!2059 lt!2479450) ((_ is EmptyLang!17119) lt!2479450))))

(assert (=> b!6967233 d!2170945))

(declare-fun b!6968508 () Bool)

(declare-fun e!4189073 () Bool)

(declare-fun call!632586 () Bool)

(assert (=> b!6968508 (= e!4189073 call!632586)))

(declare-fun c!1291905 () Bool)

(declare-fun bm!632580 () Bool)

(declare-fun c!1291906 () Bool)

(declare-fun call!632587 () Bool)

(assert (=> bm!632580 (= call!632587 (validRegex!8803 (ite c!1291906 (reg!17448 (ite c!1291765 (reg!17448 lt!2479429) (ite c!1291764 (regOne!34751 lt!2479429) (regOne!34750 lt!2479429)))) (ite c!1291905 (regOne!34751 (ite c!1291765 (reg!17448 lt!2479429) (ite c!1291764 (regOne!34751 lt!2479429) (regOne!34750 lt!2479429)))) (regOne!34750 (ite c!1291765 (reg!17448 lt!2479429) (ite c!1291764 (regOne!34751 lt!2479429) (regOne!34750 lt!2479429))))))))))

(declare-fun bm!632581 () Bool)

(declare-fun call!632585 () Bool)

(assert (=> bm!632581 (= call!632585 call!632587)))

(declare-fun b!6968509 () Bool)

(declare-fun e!4189068 () Bool)

(declare-fun e!4189072 () Bool)

(assert (=> b!6968509 (= e!4189068 e!4189072)))

(assert (=> b!6968509 (= c!1291905 ((_ is Union!17119) (ite c!1291765 (reg!17448 lt!2479429) (ite c!1291764 (regOne!34751 lt!2479429) (regOne!34750 lt!2479429)))))))

(declare-fun b!6968510 () Bool)

(declare-fun e!4189071 () Bool)

(assert (=> b!6968510 (= e!4189071 e!4189073)))

(declare-fun res!2842677 () Bool)

(assert (=> b!6968510 (=> (not res!2842677) (not e!4189073))))

(assert (=> b!6968510 (= res!2842677 call!632585)))

(declare-fun b!6968511 () Bool)

(declare-fun e!4189070 () Bool)

(assert (=> b!6968511 (= e!4189070 e!4189068)))

(assert (=> b!6968511 (= c!1291906 ((_ is Star!17119) (ite c!1291765 (reg!17448 lt!2479429) (ite c!1291764 (regOne!34751 lt!2479429) (regOne!34750 lt!2479429)))))))

(declare-fun b!6968512 () Bool)

(declare-fun e!4189074 () Bool)

(assert (=> b!6968512 (= e!4189074 call!632586)))

(declare-fun b!6968513 () Bool)

(declare-fun e!4189069 () Bool)

(assert (=> b!6968513 (= e!4189069 call!632587)))

(declare-fun b!6968514 () Bool)

(declare-fun res!2842675 () Bool)

(assert (=> b!6968514 (=> (not res!2842675) (not e!4189074))))

(assert (=> b!6968514 (= res!2842675 call!632585)))

(assert (=> b!6968514 (= e!4189072 e!4189074)))

(declare-fun d!2170947 () Bool)

(declare-fun res!2842676 () Bool)

(assert (=> d!2170947 (=> res!2842676 e!4189070)))

(assert (=> d!2170947 (= res!2842676 ((_ is ElementMatch!17119) (ite c!1291765 (reg!17448 lt!2479429) (ite c!1291764 (regOne!34751 lt!2479429) (regOne!34750 lt!2479429)))))))

(assert (=> d!2170947 (= (validRegex!8803 (ite c!1291765 (reg!17448 lt!2479429) (ite c!1291764 (regOne!34751 lt!2479429) (regOne!34750 lt!2479429)))) e!4189070)))

(declare-fun bm!632582 () Bool)

(assert (=> bm!632582 (= call!632586 (validRegex!8803 (ite c!1291905 (regTwo!34751 (ite c!1291765 (reg!17448 lt!2479429) (ite c!1291764 (regOne!34751 lt!2479429) (regOne!34750 lt!2479429)))) (regTwo!34750 (ite c!1291765 (reg!17448 lt!2479429) (ite c!1291764 (regOne!34751 lt!2479429) (regOne!34750 lt!2479429)))))))))

(declare-fun b!6968515 () Bool)

(assert (=> b!6968515 (= e!4189068 e!4189069)))

(declare-fun res!2842678 () Bool)

(assert (=> b!6968515 (= res!2842678 (not (nullable!6906 (reg!17448 (ite c!1291765 (reg!17448 lt!2479429) (ite c!1291764 (regOne!34751 lt!2479429) (regOne!34750 lt!2479429)))))))))

(assert (=> b!6968515 (=> (not res!2842678) (not e!4189069))))

(declare-fun b!6968516 () Bool)

(declare-fun res!2842679 () Bool)

(assert (=> b!6968516 (=> res!2842679 e!4189071)))

(assert (=> b!6968516 (= res!2842679 (not ((_ is Concat!25964) (ite c!1291765 (reg!17448 lt!2479429) (ite c!1291764 (regOne!34751 lt!2479429) (regOne!34750 lt!2479429))))))))

(assert (=> b!6968516 (= e!4189072 e!4189071)))

(assert (= (and d!2170947 (not res!2842676)) b!6968511))

(assert (= (and b!6968511 c!1291906) b!6968515))

(assert (= (and b!6968511 (not c!1291906)) b!6968509))

(assert (= (and b!6968515 res!2842678) b!6968513))

(assert (= (and b!6968509 c!1291905) b!6968514))

(assert (= (and b!6968509 (not c!1291905)) b!6968516))

(assert (= (and b!6968514 res!2842675) b!6968512))

(assert (= (and b!6968516 (not res!2842679)) b!6968510))

(assert (= (and b!6968510 res!2842677) b!6968508))

(assert (= (or b!6968514 b!6968510) bm!632581))

(assert (= (or b!6968512 b!6968508) bm!632582))

(assert (= (or b!6968513 bm!632581) bm!632580))

(declare-fun m!7658950 () Bool)

(assert (=> bm!632580 m!7658950))

(declare-fun m!7658952 () Bool)

(assert (=> bm!632582 m!7658952))

(declare-fun m!7658954 () Bool)

(assert (=> b!6968515 m!7658954))

(assert (=> bm!632457 d!2170947))

(assert (=> bm!632473 d!2170705))

(declare-fun d!2170949 () Bool)

(assert (=> d!2170949 (= (isEmpty!38999 (tail!13079 (t!380662 lt!2479422))) ((_ is Nil!66795) (tail!13079 (t!380662 lt!2479422))))))

(assert (=> b!6967235 d!2170949))

(declare-fun d!2170951 () Bool)

(assert (=> d!2170951 (= (tail!13079 (t!380662 lt!2479422)) (t!380662 (t!380662 lt!2479422)))))

(assert (=> b!6967235 d!2170951))

(declare-fun b!6968517 () Bool)

(declare-fun e!4189080 () Bool)

(declare-fun call!632589 () Bool)

(assert (=> b!6968517 (= e!4189080 call!632589)))

(declare-fun bm!632583 () Bool)

(declare-fun call!632590 () Bool)

(declare-fun c!1291907 () Bool)

(declare-fun c!1291908 () Bool)

(assert (=> bm!632583 (= call!632590 (validRegex!8803 (ite c!1291908 (reg!17448 lt!2479454) (ite c!1291907 (regOne!34751 lt!2479454) (regOne!34750 lt!2479454)))))))

(declare-fun bm!632584 () Bool)

(declare-fun call!632588 () Bool)

(assert (=> bm!632584 (= call!632588 call!632590)))

(declare-fun b!6968518 () Bool)

(declare-fun e!4189075 () Bool)

(declare-fun e!4189079 () Bool)

(assert (=> b!6968518 (= e!4189075 e!4189079)))

(assert (=> b!6968518 (= c!1291907 ((_ is Union!17119) lt!2479454))))

(declare-fun b!6968519 () Bool)

(declare-fun e!4189078 () Bool)

(assert (=> b!6968519 (= e!4189078 e!4189080)))

(declare-fun res!2842682 () Bool)

(assert (=> b!6968519 (=> (not res!2842682) (not e!4189080))))

(assert (=> b!6968519 (= res!2842682 call!632588)))

(declare-fun b!6968520 () Bool)

(declare-fun e!4189077 () Bool)

(assert (=> b!6968520 (= e!4189077 e!4189075)))

(assert (=> b!6968520 (= c!1291908 ((_ is Star!17119) lt!2479454))))

(declare-fun b!6968521 () Bool)

(declare-fun e!4189081 () Bool)

(assert (=> b!6968521 (= e!4189081 call!632589)))

(declare-fun b!6968522 () Bool)

(declare-fun e!4189076 () Bool)

(assert (=> b!6968522 (= e!4189076 call!632590)))

(declare-fun b!6968523 () Bool)

(declare-fun res!2842680 () Bool)

(assert (=> b!6968523 (=> (not res!2842680) (not e!4189081))))

(assert (=> b!6968523 (= res!2842680 call!632588)))

(assert (=> b!6968523 (= e!4189079 e!4189081)))

(declare-fun d!2170953 () Bool)

(declare-fun res!2842681 () Bool)

(assert (=> d!2170953 (=> res!2842681 e!4189077)))

(assert (=> d!2170953 (= res!2842681 ((_ is ElementMatch!17119) lt!2479454))))

(assert (=> d!2170953 (= (validRegex!8803 lt!2479454) e!4189077)))

(declare-fun bm!632585 () Bool)

(assert (=> bm!632585 (= call!632589 (validRegex!8803 (ite c!1291907 (regTwo!34751 lt!2479454) (regTwo!34750 lt!2479454))))))

(declare-fun b!6968524 () Bool)

(assert (=> b!6968524 (= e!4189075 e!4189076)))

(declare-fun res!2842683 () Bool)

(assert (=> b!6968524 (= res!2842683 (not (nullable!6906 (reg!17448 lt!2479454))))))

(assert (=> b!6968524 (=> (not res!2842683) (not e!4189076))))

(declare-fun b!6968525 () Bool)

(declare-fun res!2842684 () Bool)

(assert (=> b!6968525 (=> res!2842684 e!4189078)))

(assert (=> b!6968525 (= res!2842684 (not ((_ is Concat!25964) lt!2479454)))))

(assert (=> b!6968525 (= e!4189079 e!4189078)))

(assert (= (and d!2170953 (not res!2842681)) b!6968520))

(assert (= (and b!6968520 c!1291908) b!6968524))

(assert (= (and b!6968520 (not c!1291908)) b!6968518))

(assert (= (and b!6968524 res!2842683) b!6968522))

(assert (= (and b!6968518 c!1291907) b!6968523))

(assert (= (and b!6968518 (not c!1291907)) b!6968525))

(assert (= (and b!6968523 res!2842680) b!6968521))

(assert (= (and b!6968525 (not res!2842684)) b!6968519))

(assert (= (and b!6968519 res!2842682) b!6968517))

(assert (= (or b!6968523 b!6968519) bm!632584))

(assert (= (or b!6968521 b!6968517) bm!632585))

(assert (= (or b!6968522 bm!632584) bm!632583))

(declare-fun m!7658956 () Bool)

(assert (=> bm!632583 m!7658956))

(declare-fun m!7658958 () Bool)

(assert (=> bm!632585 m!7658958))

(declare-fun m!7658960 () Bool)

(assert (=> b!6968524 m!7658960))

(assert (=> d!2170743 d!2170953))

(assert (=> d!2170743 d!2170707))

(declare-fun b!6968526 () Bool)

(declare-fun e!4189087 () Bool)

(declare-fun call!632592 () Bool)

(assert (=> b!6968526 (= e!4189087 call!632592)))

(declare-fun c!1291909 () Bool)

(declare-fun call!632593 () Bool)

(declare-fun c!1291910 () Bool)

(declare-fun bm!632586 () Bool)

(assert (=> bm!632586 (= call!632593 (validRegex!8803 (ite c!1291910 (reg!17448 (ite c!1291764 (regTwo!34751 lt!2479429) (regTwo!34750 lt!2479429))) (ite c!1291909 (regOne!34751 (ite c!1291764 (regTwo!34751 lt!2479429) (regTwo!34750 lt!2479429))) (regOne!34750 (ite c!1291764 (regTwo!34751 lt!2479429) (regTwo!34750 lt!2479429)))))))))

(declare-fun bm!632587 () Bool)

(declare-fun call!632591 () Bool)

(assert (=> bm!632587 (= call!632591 call!632593)))

(declare-fun b!6968527 () Bool)

(declare-fun e!4189082 () Bool)

(declare-fun e!4189086 () Bool)

(assert (=> b!6968527 (= e!4189082 e!4189086)))

(assert (=> b!6968527 (= c!1291909 ((_ is Union!17119) (ite c!1291764 (regTwo!34751 lt!2479429) (regTwo!34750 lt!2479429))))))

(declare-fun b!6968528 () Bool)

(declare-fun e!4189085 () Bool)

(assert (=> b!6968528 (= e!4189085 e!4189087)))

(declare-fun res!2842687 () Bool)

(assert (=> b!6968528 (=> (not res!2842687) (not e!4189087))))

(assert (=> b!6968528 (= res!2842687 call!632591)))

(declare-fun b!6968529 () Bool)

(declare-fun e!4189084 () Bool)

(assert (=> b!6968529 (= e!4189084 e!4189082)))

(assert (=> b!6968529 (= c!1291910 ((_ is Star!17119) (ite c!1291764 (regTwo!34751 lt!2479429) (regTwo!34750 lt!2479429))))))

(declare-fun b!6968530 () Bool)

(declare-fun e!4189088 () Bool)

(assert (=> b!6968530 (= e!4189088 call!632592)))

(declare-fun b!6968531 () Bool)

(declare-fun e!4189083 () Bool)

(assert (=> b!6968531 (= e!4189083 call!632593)))

(declare-fun b!6968532 () Bool)

(declare-fun res!2842685 () Bool)

(assert (=> b!6968532 (=> (not res!2842685) (not e!4189088))))

(assert (=> b!6968532 (= res!2842685 call!632591)))

(assert (=> b!6968532 (= e!4189086 e!4189088)))

(declare-fun d!2170955 () Bool)

(declare-fun res!2842686 () Bool)

(assert (=> d!2170955 (=> res!2842686 e!4189084)))

(assert (=> d!2170955 (= res!2842686 ((_ is ElementMatch!17119) (ite c!1291764 (regTwo!34751 lt!2479429) (regTwo!34750 lt!2479429))))))

(assert (=> d!2170955 (= (validRegex!8803 (ite c!1291764 (regTwo!34751 lt!2479429) (regTwo!34750 lt!2479429))) e!4189084)))

(declare-fun bm!632588 () Bool)

(assert (=> bm!632588 (= call!632592 (validRegex!8803 (ite c!1291909 (regTwo!34751 (ite c!1291764 (regTwo!34751 lt!2479429) (regTwo!34750 lt!2479429))) (regTwo!34750 (ite c!1291764 (regTwo!34751 lt!2479429) (regTwo!34750 lt!2479429))))))))

(declare-fun b!6968533 () Bool)

(assert (=> b!6968533 (= e!4189082 e!4189083)))

(declare-fun res!2842688 () Bool)

(assert (=> b!6968533 (= res!2842688 (not (nullable!6906 (reg!17448 (ite c!1291764 (regTwo!34751 lt!2479429) (regTwo!34750 lt!2479429))))))))

(assert (=> b!6968533 (=> (not res!2842688) (not e!4189083))))

(declare-fun b!6968534 () Bool)

(declare-fun res!2842689 () Bool)

(assert (=> b!6968534 (=> res!2842689 e!4189085)))

(assert (=> b!6968534 (= res!2842689 (not ((_ is Concat!25964) (ite c!1291764 (regTwo!34751 lt!2479429) (regTwo!34750 lt!2479429)))))))

(assert (=> b!6968534 (= e!4189086 e!4189085)))

(assert (= (and d!2170955 (not res!2842686)) b!6968529))

(assert (= (and b!6968529 c!1291910) b!6968533))

(assert (= (and b!6968529 (not c!1291910)) b!6968527))

(assert (= (and b!6968533 res!2842688) b!6968531))

(assert (= (and b!6968527 c!1291909) b!6968532))

(assert (= (and b!6968527 (not c!1291909)) b!6968534))

(assert (= (and b!6968532 res!2842685) b!6968530))

(assert (= (and b!6968534 (not res!2842689)) b!6968528))

(assert (= (and b!6968528 res!2842687) b!6968526))

(assert (= (or b!6968532 b!6968528) bm!632587))

(assert (= (or b!6968530 b!6968526) bm!632588))

(assert (= (or b!6968531 bm!632587) bm!632586))

(declare-fun m!7658962 () Bool)

(assert (=> bm!632586 m!7658962))

(declare-fun m!7658964 () Bool)

(assert (=> bm!632588 m!7658964))

(declare-fun m!7658966 () Bool)

(assert (=> b!6968533 m!7658966))

(assert (=> bm!632459 d!2170955))

(declare-fun bs!1858895 () Bool)

(declare-fun b!6968545 () Bool)

(assert (= bs!1858895 (and b!6968545 b!6968487)))

(declare-fun lambda!397582 () Int)

(assert (=> bs!1858895 (not (= lambda!397582 lambda!397580))))

(declare-fun bs!1858896 () Bool)

(assert (= bs!1858896 (and b!6968545 b!6966819)))

(assert (=> bs!1858896 (= (and (= (reg!17448 (regOne!34751 (regOne!34751 r!13765))) (reg!17448 r!13765)) (= (regOne!34751 (regOne!34751 r!13765)) r!13765)) (= lambda!397582 lambda!397552))))

(declare-fun bs!1858897 () Bool)

(assert (= bs!1858897 (and b!6968545 b!6966809)))

(assert (=> bs!1858897 (not (= lambda!397582 lambda!397553))))

(declare-fun bs!1858898 () Bool)

(assert (= bs!1858898 (and b!6968545 b!6967329)))

(assert (=> bs!1858898 (not (= lambda!397582 lambda!397568))))

(declare-fun bs!1858899 () Bool)

(assert (= bs!1858899 (and b!6968545 b!6967251)))

(assert (=> bs!1858899 (not (= lambda!397582 lambda!397565))))

(declare-fun bs!1858900 () Bool)

(assert (= bs!1858900 (and b!6968545 b!6967339)))

(assert (=> bs!1858900 (= (and (= (reg!17448 (regOne!34751 (regOne!34751 r!13765))) (reg!17448 (regOne!34751 r!13765))) (= (regOne!34751 (regOne!34751 r!13765)) (regOne!34751 r!13765))) (= lambda!397582 lambda!397567))))

(declare-fun bs!1858901 () Bool)

(assert (= bs!1858901 (and b!6968545 b!6967261)))

(assert (=> bs!1858901 (= (and (= (reg!17448 (regOne!34751 (regOne!34751 r!13765))) (reg!17448 (regTwo!34751 r!13765))) (= (regOne!34751 (regOne!34751 r!13765)) (regTwo!34751 r!13765))) (= lambda!397582 lambda!397564))))

(declare-fun bs!1858902 () Bool)

(assert (= bs!1858902 (and b!6968545 b!6968497)))

(assert (=> bs!1858902 (= (and (= (reg!17448 (regOne!34751 (regOne!34751 r!13765))) (reg!17448 (regTwo!34751 (regTwo!34751 r!13765)))) (= (regOne!34751 (regOne!34751 r!13765)) (regTwo!34751 (regTwo!34751 r!13765)))) (= lambda!397582 lambda!397579))))

(assert (=> b!6968545 true))

(assert (=> b!6968545 true))

(declare-fun bs!1858903 () Bool)

(declare-fun b!6968535 () Bool)

(assert (= bs!1858903 (and b!6968535 b!6968487)))

(declare-fun lambda!397583 () Int)

(assert (=> bs!1858903 (= (and (= (regOne!34750 (regOne!34751 (regOne!34751 r!13765))) (regOne!34750 (regTwo!34751 (regTwo!34751 r!13765)))) (= (regTwo!34750 (regOne!34751 (regOne!34751 r!13765))) (regTwo!34750 (regTwo!34751 (regTwo!34751 r!13765))))) (= lambda!397583 lambda!397580))))

(declare-fun bs!1858904 () Bool)

(assert (= bs!1858904 (and b!6968535 b!6966819)))

(assert (=> bs!1858904 (not (= lambda!397583 lambda!397552))))

(declare-fun bs!1858905 () Bool)

(assert (= bs!1858905 (and b!6968535 b!6966809)))

(assert (=> bs!1858905 (= (and (= (regOne!34750 (regOne!34751 (regOne!34751 r!13765))) (regOne!34750 r!13765)) (= (regTwo!34750 (regOne!34751 (regOne!34751 r!13765))) (regTwo!34750 r!13765))) (= lambda!397583 lambda!397553))))

(declare-fun bs!1858906 () Bool)

(assert (= bs!1858906 (and b!6968535 b!6967329)))

(assert (=> bs!1858906 (= (and (= (regOne!34750 (regOne!34751 (regOne!34751 r!13765))) (regOne!34750 (regOne!34751 r!13765))) (= (regTwo!34750 (regOne!34751 (regOne!34751 r!13765))) (regTwo!34750 (regOne!34751 r!13765)))) (= lambda!397583 lambda!397568))))

(declare-fun bs!1858907 () Bool)

(assert (= bs!1858907 (and b!6968535 b!6967251)))

(assert (=> bs!1858907 (= (and (= (regOne!34750 (regOne!34751 (regOne!34751 r!13765))) (regOne!34750 (regTwo!34751 r!13765))) (= (regTwo!34750 (regOne!34751 (regOne!34751 r!13765))) (regTwo!34750 (regTwo!34751 r!13765)))) (= lambda!397583 lambda!397565))))

(declare-fun bs!1858908 () Bool)

(assert (= bs!1858908 (and b!6968535 b!6968545)))

(assert (=> bs!1858908 (not (= lambda!397583 lambda!397582))))

(declare-fun bs!1858909 () Bool)

(assert (= bs!1858909 (and b!6968535 b!6967339)))

(assert (=> bs!1858909 (not (= lambda!397583 lambda!397567))))

(declare-fun bs!1858910 () Bool)

(assert (= bs!1858910 (and b!6968535 b!6967261)))

(assert (=> bs!1858910 (not (= lambda!397583 lambda!397564))))

(declare-fun bs!1858911 () Bool)

(assert (= bs!1858911 (and b!6968535 b!6968497)))

(assert (=> bs!1858911 (not (= lambda!397583 lambda!397579))))

(assert (=> b!6968535 true))

(assert (=> b!6968535 true))

(declare-fun e!4189091 () Bool)

(declare-fun call!632595 () Bool)

(assert (=> b!6968535 (= e!4189091 call!632595)))

(declare-fun b!6968536 () Bool)

(declare-fun e!4189093 () Bool)

(assert (=> b!6968536 (= e!4189093 (matchRSpec!4136 (regTwo!34751 (regOne!34751 (regOne!34751 r!13765))) s!9351))))

(declare-fun bm!632589 () Bool)

(declare-fun call!632594 () Bool)

(assert (=> bm!632589 (= call!632594 (isEmpty!39001 s!9351))))

(declare-fun b!6968538 () Bool)

(declare-fun e!4189095 () Bool)

(assert (=> b!6968538 (= e!4189095 e!4189093)))

(declare-fun res!2842692 () Bool)

(assert (=> b!6968538 (= res!2842692 (matchRSpec!4136 (regOne!34751 (regOne!34751 (regOne!34751 r!13765))) s!9351))))

(assert (=> b!6968538 (=> res!2842692 e!4189093)))

(declare-fun b!6968539 () Bool)

(declare-fun e!4189092 () Bool)

(declare-fun e!4189090 () Bool)

(assert (=> b!6968539 (= e!4189092 e!4189090)))

(declare-fun res!2842690 () Bool)

(assert (=> b!6968539 (= res!2842690 (not ((_ is EmptyLang!17119) (regOne!34751 (regOne!34751 r!13765)))))))

(assert (=> b!6968539 (=> (not res!2842690) (not e!4189090))))

(declare-fun b!6968540 () Bool)

(declare-fun e!4189089 () Bool)

(assert (=> b!6968540 (= e!4189089 (= s!9351 (Cons!66796 (c!1291625 (regOne!34751 (regOne!34751 r!13765))) Nil!66796)))))

(declare-fun b!6968541 () Bool)

(declare-fun c!1291914 () Bool)

(assert (=> b!6968541 (= c!1291914 ((_ is ElementMatch!17119) (regOne!34751 (regOne!34751 r!13765))))))

(assert (=> b!6968541 (= e!4189090 e!4189089)))

(declare-fun b!6968542 () Bool)

(declare-fun c!1291911 () Bool)

(assert (=> b!6968542 (= c!1291911 ((_ is Union!17119) (regOne!34751 (regOne!34751 r!13765))))))

(assert (=> b!6968542 (= e!4189089 e!4189095)))

(declare-fun b!6968543 () Bool)

(declare-fun res!2842691 () Bool)

(declare-fun e!4189094 () Bool)

(assert (=> b!6968543 (=> res!2842691 e!4189094)))

(assert (=> b!6968543 (= res!2842691 call!632594)))

(assert (=> b!6968543 (= e!4189091 e!4189094)))

(declare-fun b!6968544 () Bool)

(assert (=> b!6968544 (= e!4189092 call!632594)))

(declare-fun c!1291912 () Bool)

(declare-fun bm!632590 () Bool)

(assert (=> bm!632590 (= call!632595 (Exists!4084 (ite c!1291912 lambda!397582 lambda!397583)))))

(assert (=> b!6968545 (= e!4189094 call!632595)))

(declare-fun d!2170957 () Bool)

(declare-fun c!1291913 () Bool)

(assert (=> d!2170957 (= c!1291913 ((_ is EmptyExpr!17119) (regOne!34751 (regOne!34751 r!13765))))))

(assert (=> d!2170957 (= (matchRSpec!4136 (regOne!34751 (regOne!34751 r!13765)) s!9351) e!4189092)))

(declare-fun b!6968537 () Bool)

(assert (=> b!6968537 (= e!4189095 e!4189091)))

(assert (=> b!6968537 (= c!1291912 ((_ is Star!17119) (regOne!34751 (regOne!34751 r!13765))))))

(assert (= (and d!2170957 c!1291913) b!6968544))

(assert (= (and d!2170957 (not c!1291913)) b!6968539))

(assert (= (and b!6968539 res!2842690) b!6968541))

(assert (= (and b!6968541 c!1291914) b!6968540))

(assert (= (and b!6968541 (not c!1291914)) b!6968542))

(assert (= (and b!6968542 c!1291911) b!6968538))

(assert (= (and b!6968542 (not c!1291911)) b!6968537))

(assert (= (and b!6968538 (not res!2842692)) b!6968536))

(assert (= (and b!6968537 c!1291912) b!6968543))

(assert (= (and b!6968537 (not c!1291912)) b!6968535))

(assert (= (and b!6968543 (not res!2842691)) b!6968545))

(assert (= (or b!6968545 b!6968535) bm!632590))

(assert (= (or b!6968544 b!6968543) bm!632589))

(declare-fun m!7658968 () Bool)

(assert (=> b!6968536 m!7658968))

(assert (=> bm!632589 m!7658310))

(declare-fun m!7658970 () Bool)

(assert (=> b!6968538 m!7658970))

(declare-fun m!7658972 () Bool)

(assert (=> bm!632590 m!7658972))

(assert (=> b!6967332 d!2170957))

(declare-fun b!6968546 () Bool)

(declare-fun e!4189101 () Bool)

(declare-fun call!632597 () Bool)

(assert (=> b!6968546 (= e!4189101 call!632597)))

(declare-fun call!632598 () Bool)

(declare-fun c!1291915 () Bool)

(declare-fun bm!632591 () Bool)

(declare-fun c!1291916 () Bool)

(assert (=> bm!632591 (= call!632598 (validRegex!8803 (ite c!1291916 (reg!17448 (h!73243 (t!380662 l!9142))) (ite c!1291915 (regOne!34751 (h!73243 (t!380662 l!9142))) (regOne!34750 (h!73243 (t!380662 l!9142)))))))))

(declare-fun bm!632592 () Bool)

(declare-fun call!632596 () Bool)

(assert (=> bm!632592 (= call!632596 call!632598)))

(declare-fun b!6968547 () Bool)

(declare-fun e!4189096 () Bool)

(declare-fun e!4189100 () Bool)

(assert (=> b!6968547 (= e!4189096 e!4189100)))

(assert (=> b!6968547 (= c!1291915 ((_ is Union!17119) (h!73243 (t!380662 l!9142))))))

(declare-fun b!6968548 () Bool)

(declare-fun e!4189099 () Bool)

(assert (=> b!6968548 (= e!4189099 e!4189101)))

(declare-fun res!2842695 () Bool)

(assert (=> b!6968548 (=> (not res!2842695) (not e!4189101))))

(assert (=> b!6968548 (= res!2842695 call!632596)))

(declare-fun b!6968549 () Bool)

(declare-fun e!4189098 () Bool)

(assert (=> b!6968549 (= e!4189098 e!4189096)))

(assert (=> b!6968549 (= c!1291916 ((_ is Star!17119) (h!73243 (t!380662 l!9142))))))

(declare-fun b!6968550 () Bool)

(declare-fun e!4189102 () Bool)

(assert (=> b!6968550 (= e!4189102 call!632597)))

(declare-fun b!6968551 () Bool)

(declare-fun e!4189097 () Bool)

(assert (=> b!6968551 (= e!4189097 call!632598)))

(declare-fun b!6968552 () Bool)

(declare-fun res!2842693 () Bool)

(assert (=> b!6968552 (=> (not res!2842693) (not e!4189102))))

(assert (=> b!6968552 (= res!2842693 call!632596)))

(assert (=> b!6968552 (= e!4189100 e!4189102)))

(declare-fun d!2170959 () Bool)

(declare-fun res!2842694 () Bool)

(assert (=> d!2170959 (=> res!2842694 e!4189098)))

(assert (=> d!2170959 (= res!2842694 ((_ is ElementMatch!17119) (h!73243 (t!380662 l!9142))))))

(assert (=> d!2170959 (= (validRegex!8803 (h!73243 (t!380662 l!9142))) e!4189098)))

(declare-fun bm!632593 () Bool)

(assert (=> bm!632593 (= call!632597 (validRegex!8803 (ite c!1291915 (regTwo!34751 (h!73243 (t!380662 l!9142))) (regTwo!34750 (h!73243 (t!380662 l!9142))))))))

(declare-fun b!6968553 () Bool)

(assert (=> b!6968553 (= e!4189096 e!4189097)))

(declare-fun res!2842696 () Bool)

(assert (=> b!6968553 (= res!2842696 (not (nullable!6906 (reg!17448 (h!73243 (t!380662 l!9142))))))))

(assert (=> b!6968553 (=> (not res!2842696) (not e!4189097))))

(declare-fun b!6968554 () Bool)

(declare-fun res!2842697 () Bool)

(assert (=> b!6968554 (=> res!2842697 e!4189099)))

(assert (=> b!6968554 (= res!2842697 (not ((_ is Concat!25964) (h!73243 (t!380662 l!9142)))))))

(assert (=> b!6968554 (= e!4189100 e!4189099)))

(assert (= (and d!2170959 (not res!2842694)) b!6968549))

(assert (= (and b!6968549 c!1291916) b!6968553))

(assert (= (and b!6968549 (not c!1291916)) b!6968547))

(assert (= (and b!6968553 res!2842696) b!6968551))

(assert (= (and b!6968547 c!1291915) b!6968552))

(assert (= (and b!6968547 (not c!1291915)) b!6968554))

(assert (= (and b!6968552 res!2842693) b!6968550))

(assert (= (and b!6968554 (not res!2842697)) b!6968548))

(assert (= (and b!6968548 res!2842695) b!6968546))

(assert (= (or b!6968552 b!6968548) bm!632592))

(assert (= (or b!6968550 b!6968546) bm!632593))

(assert (= (or b!6968551 bm!632592) bm!632591))

(declare-fun m!7658974 () Bool)

(assert (=> bm!632591 m!7658974))

(declare-fun m!7658976 () Bool)

(assert (=> bm!632593 m!7658976))

(declare-fun m!7658978 () Bool)

(assert (=> b!6968553 m!7658978))

(assert (=> bs!1858762 d!2170959))

(declare-fun b!6968555 () Bool)

(declare-fun e!4189108 () Bool)

(declare-fun call!632600 () Bool)

(assert (=> b!6968555 (= e!4189108 call!632600)))

(declare-fun c!1291918 () Bool)

(declare-fun c!1291917 () Bool)

(declare-fun call!632601 () Bool)

(declare-fun bm!632594 () Bool)

(assert (=> bm!632594 (= call!632601 (validRegex!8803 (ite c!1291918 (reg!17448 lt!2479450) (ite c!1291917 (regOne!34751 lt!2479450) (regOne!34750 lt!2479450)))))))

(declare-fun bm!632595 () Bool)

(declare-fun call!632599 () Bool)

(assert (=> bm!632595 (= call!632599 call!632601)))

(declare-fun b!6968556 () Bool)

(declare-fun e!4189103 () Bool)

(declare-fun e!4189107 () Bool)

(assert (=> b!6968556 (= e!4189103 e!4189107)))

(assert (=> b!6968556 (= c!1291917 ((_ is Union!17119) lt!2479450))))

(declare-fun b!6968557 () Bool)

(declare-fun e!4189106 () Bool)

(assert (=> b!6968557 (= e!4189106 e!4189108)))

(declare-fun res!2842700 () Bool)

(assert (=> b!6968557 (=> (not res!2842700) (not e!4189108))))

(assert (=> b!6968557 (= res!2842700 call!632599)))

(declare-fun b!6968558 () Bool)

(declare-fun e!4189105 () Bool)

(assert (=> b!6968558 (= e!4189105 e!4189103)))

(assert (=> b!6968558 (= c!1291918 ((_ is Star!17119) lt!2479450))))

(declare-fun b!6968559 () Bool)

(declare-fun e!4189109 () Bool)

(assert (=> b!6968559 (= e!4189109 call!632600)))

(declare-fun b!6968560 () Bool)

(declare-fun e!4189104 () Bool)

(assert (=> b!6968560 (= e!4189104 call!632601)))

(declare-fun b!6968561 () Bool)

(declare-fun res!2842698 () Bool)

(assert (=> b!6968561 (=> (not res!2842698) (not e!4189109))))

(assert (=> b!6968561 (= res!2842698 call!632599)))

(assert (=> b!6968561 (= e!4189107 e!4189109)))

(declare-fun d!2170961 () Bool)

(declare-fun res!2842699 () Bool)

(assert (=> d!2170961 (=> res!2842699 e!4189105)))

(assert (=> d!2170961 (= res!2842699 ((_ is ElementMatch!17119) lt!2479450))))

(assert (=> d!2170961 (= (validRegex!8803 lt!2479450) e!4189105)))

(declare-fun bm!632596 () Bool)

(assert (=> bm!632596 (= call!632600 (validRegex!8803 (ite c!1291917 (regTwo!34751 lt!2479450) (regTwo!34750 lt!2479450))))))

(declare-fun b!6968562 () Bool)

(assert (=> b!6968562 (= e!4189103 e!4189104)))

(declare-fun res!2842701 () Bool)

(assert (=> b!6968562 (= res!2842701 (not (nullable!6906 (reg!17448 lt!2479450))))))

(assert (=> b!6968562 (=> (not res!2842701) (not e!4189104))))

(declare-fun b!6968563 () Bool)

(declare-fun res!2842702 () Bool)

(assert (=> b!6968563 (=> res!2842702 e!4189106)))

(assert (=> b!6968563 (= res!2842702 (not ((_ is Concat!25964) lt!2479450)))))

(assert (=> b!6968563 (= e!4189107 e!4189106)))

(assert (= (and d!2170961 (not res!2842699)) b!6968558))

(assert (= (and b!6968558 c!1291918) b!6968562))

(assert (= (and b!6968558 (not c!1291918)) b!6968556))

(assert (= (and b!6968562 res!2842701) b!6968560))

(assert (= (and b!6968556 c!1291917) b!6968561))

(assert (= (and b!6968556 (not c!1291917)) b!6968563))

(assert (= (and b!6968561 res!2842698) b!6968559))

(assert (= (and b!6968563 (not res!2842702)) b!6968557))

(assert (= (and b!6968557 res!2842700) b!6968555))

(assert (= (or b!6968561 b!6968557) bm!632595))

(assert (= (or b!6968559 b!6968555) bm!632596))

(assert (= (or b!6968560 bm!632595) bm!632594))

(declare-fun m!7658980 () Bool)

(assert (=> bm!632594 m!7658980))

(declare-fun m!7658982 () Bool)

(assert (=> bm!632596 m!7658982))

(declare-fun m!7658984 () Bool)

(assert (=> b!6968562 m!7658984))

(assert (=> d!2170721 d!2170961))

(declare-fun d!2170963 () Bool)

(declare-fun res!2842703 () Bool)

(declare-fun e!4189110 () Bool)

(assert (=> d!2170963 (=> res!2842703 e!4189110)))

(assert (=> d!2170963 (= res!2842703 ((_ is Nil!66795) (t!380662 lt!2479422)))))

(assert (=> d!2170963 (= (forall!15990 (t!380662 lt!2479422) lambda!397563) e!4189110)))

(declare-fun b!6968564 () Bool)

(declare-fun e!4189111 () Bool)

(assert (=> b!6968564 (= e!4189110 e!4189111)))

(declare-fun res!2842704 () Bool)

(assert (=> b!6968564 (=> (not res!2842704) (not e!4189111))))

(assert (=> b!6968564 (= res!2842704 (dynLambda!26635 lambda!397563 (h!73243 (t!380662 lt!2479422))))))

(declare-fun b!6968565 () Bool)

(assert (=> b!6968565 (= e!4189111 (forall!15990 (t!380662 (t!380662 lt!2479422)) lambda!397563))))

(assert (= (and d!2170963 (not res!2842703)) b!6968564))

(assert (= (and b!6968564 res!2842704) b!6968565))

(declare-fun b_lambda!260745 () Bool)

(assert (=> (not b_lambda!260745) (not b!6968564)))

(declare-fun m!7658986 () Bool)

(assert (=> b!6968564 m!7658986))

(declare-fun m!7658988 () Bool)

(assert (=> b!6968565 m!7658988))

(assert (=> d!2170721 d!2170963))

(declare-fun d!2170965 () Bool)

(assert (=> d!2170965 (= (head!14014 (t!380662 lt!2479422)) (h!73243 (t!380662 lt!2479422)))))

(assert (=> b!6967237 d!2170965))

(assert (=> bm!632460 d!2170701))

(declare-fun bs!1858912 () Bool)

(declare-fun d!2170967 () Bool)

(assert (= bs!1858912 (and d!2170967 d!2170937)))

(declare-fun lambda!397584 () Int)

(assert (=> bs!1858912 (= lambda!397584 lambda!397581)))

(declare-fun bs!1858913 () Bool)

(assert (= bs!1858913 (and d!2170967 d!2170603)))

(assert (=> bs!1858913 (not (= lambda!397584 lambda!397556))))

(declare-fun bs!1858914 () Bool)

(assert (= bs!1858914 (and d!2170967 d!2170585)))

(assert (=> bs!1858914 (= lambda!397584 lambda!397540)))

(declare-fun bs!1858915 () Bool)

(assert (= bs!1858915 (and d!2170967 d!2170745)))

(assert (=> bs!1858915 (= lambda!397584 lambda!397566)))

(declare-fun bs!1858916 () Bool)

(assert (= bs!1858916 (and d!2170967 d!2170721)))

(assert (=> bs!1858916 (= lambda!397584 lambda!397563)))

(declare-fun bs!1858917 () Bool)

(assert (= bs!1858917 (and d!2170967 b!6966548)))

(assert (=> bs!1858917 (not (= lambda!397584 lambda!397530))))

(declare-fun bs!1858918 () Bool)

(assert (= bs!1858918 (and d!2170967 d!2170569)))

(assert (=> bs!1858918 (= lambda!397584 lambda!397539)))

(declare-fun bs!1858919 () Bool)

(assert (= bs!1858919 (and d!2170967 start!668274)))

(assert (=> bs!1858919 (= lambda!397584 lambda!397529)))

(declare-fun b!6968566 () Bool)

(declare-fun e!4189113 () Regex!17119)

(declare-fun e!4189114 () Regex!17119)

(assert (=> b!6968566 (= e!4189113 e!4189114)))

(declare-fun c!1291922 () Bool)

(assert (=> b!6968566 (= c!1291922 ((_ is Cons!66795) (t!380662 (t!380662 lt!2479422))))))

(declare-fun b!6968568 () Bool)

(assert (=> b!6968568 (= e!4189113 (h!73243 (t!380662 (t!380662 lt!2479422))))))

(declare-fun b!6968569 () Bool)

(declare-fun e!4189115 () Bool)

(declare-fun lt!2479467 () Regex!17119)

(assert (=> b!6968569 (= e!4189115 (isEmptyLang!2059 lt!2479467))))

(declare-fun b!6968570 () Bool)

(declare-fun e!4189116 () Bool)

(assert (=> b!6968570 (= e!4189116 (isEmpty!38999 (t!380662 (t!380662 (t!380662 lt!2479422)))))))

(declare-fun b!6968571 () Bool)

(declare-fun e!4189112 () Bool)

(assert (=> b!6968571 (= e!4189115 e!4189112)))

(declare-fun c!1291919 () Bool)

(assert (=> b!6968571 (= c!1291919 (isEmpty!38999 (tail!13079 (t!380662 (t!380662 lt!2479422)))))))

(declare-fun b!6968572 () Bool)

(assert (=> b!6968572 (= e!4189114 EmptyLang!17119)))

(declare-fun b!6968573 () Bool)

(assert (=> b!6968573 (= e!4189112 (= lt!2479467 (head!14014 (t!380662 (t!380662 lt!2479422)))))))

(declare-fun e!4189117 () Bool)

(assert (=> d!2170967 e!4189117))

(declare-fun res!2842706 () Bool)

(assert (=> d!2170967 (=> (not res!2842706) (not e!4189117))))

(assert (=> d!2170967 (= res!2842706 (validRegex!8803 lt!2479467))))

(assert (=> d!2170967 (= lt!2479467 e!4189113)))

(declare-fun c!1291920 () Bool)

(assert (=> d!2170967 (= c!1291920 e!4189116)))

(declare-fun res!2842705 () Bool)

(assert (=> d!2170967 (=> (not res!2842705) (not e!4189116))))

(assert (=> d!2170967 (= res!2842705 ((_ is Cons!66795) (t!380662 (t!380662 lt!2479422))))))

(assert (=> d!2170967 (forall!15990 (t!380662 (t!380662 lt!2479422)) lambda!397584)))

(assert (=> d!2170967 (= (generalisedUnion!2594 (t!380662 (t!380662 lt!2479422))) lt!2479467)))

(declare-fun b!6968567 () Bool)

(assert (=> b!6968567 (= e!4189112 (isUnion!1487 lt!2479467))))

(declare-fun b!6968574 () Bool)

(assert (=> b!6968574 (= e!4189117 e!4189115)))

(declare-fun c!1291921 () Bool)

(assert (=> b!6968574 (= c!1291921 (isEmpty!38999 (t!380662 (t!380662 lt!2479422))))))

(declare-fun b!6968575 () Bool)

(assert (=> b!6968575 (= e!4189114 (Union!17119 (h!73243 (t!380662 (t!380662 lt!2479422))) (generalisedUnion!2594 (t!380662 (t!380662 (t!380662 lt!2479422))))))))

(assert (= (and d!2170967 res!2842705) b!6968570))

(assert (= (and d!2170967 c!1291920) b!6968568))

(assert (= (and d!2170967 (not c!1291920)) b!6968566))

(assert (= (and b!6968566 c!1291922) b!6968575))

(assert (= (and b!6968566 (not c!1291922)) b!6968572))

(assert (= (and d!2170967 res!2842706) b!6968574))

(assert (= (and b!6968574 c!1291921) b!6968569))

(assert (= (and b!6968574 (not c!1291921)) b!6968571))

(assert (= (and b!6968571 c!1291919) b!6968573))

(assert (= (and b!6968571 (not c!1291919)) b!6968567))

(declare-fun m!7658990 () Bool)

(assert (=> b!6968573 m!7658990))

(declare-fun m!7658992 () Bool)

(assert (=> b!6968567 m!7658992))

(declare-fun m!7658994 () Bool)

(assert (=> d!2170967 m!7658994))

(declare-fun m!7658996 () Bool)

(assert (=> d!2170967 m!7658996))

(declare-fun m!7658998 () Bool)

(assert (=> b!6968570 m!7658998))

(assert (=> b!6968574 m!7658488))

(declare-fun m!7659000 () Bool)

(assert (=> b!6968571 m!7659000))

(assert (=> b!6968571 m!7659000))

(declare-fun m!7659002 () Bool)

(assert (=> b!6968571 m!7659002))

(declare-fun m!7659004 () Bool)

(assert (=> b!6968569 m!7659004))

(declare-fun m!7659006 () Bool)

(assert (=> b!6968575 m!7659006))

(assert (=> b!6967239 d!2170967))

(declare-fun d!2170969 () Bool)

(declare-fun res!2842707 () Bool)

(declare-fun e!4189118 () Bool)

(assert (=> d!2170969 (=> res!2842707 e!4189118)))

(assert (=> d!2170969 (= res!2842707 ((_ is Nil!66795) (t!380662 (t!380662 l!9142))))))

(assert (=> d!2170969 (= (forall!15990 (t!380662 (t!380662 l!9142)) lambda!397529) e!4189118)))

(declare-fun b!6968576 () Bool)

(declare-fun e!4189119 () Bool)

(assert (=> b!6968576 (= e!4189118 e!4189119)))

(declare-fun res!2842708 () Bool)

(assert (=> b!6968576 (=> (not res!2842708) (not e!4189119))))

(assert (=> b!6968576 (= res!2842708 (dynLambda!26635 lambda!397529 (h!73243 (t!380662 (t!380662 l!9142)))))))

(declare-fun b!6968577 () Bool)

(assert (=> b!6968577 (= e!4189119 (forall!15990 (t!380662 (t!380662 (t!380662 l!9142))) lambda!397529))))

(assert (= (and d!2170969 (not res!2842707)) b!6968576))

(assert (= (and b!6968576 res!2842708) b!6968577))

(declare-fun b_lambda!260747 () Bool)

(assert (=> (not b_lambda!260747) (not b!6968576)))

(declare-fun m!7659008 () Bool)

(assert (=> b!6968576 m!7659008))

(declare-fun m!7659010 () Bool)

(assert (=> b!6968577 m!7659010))

(assert (=> b!6967274 d!2170969))

(declare-fun d!2170971 () Bool)

(assert (=> d!2170971 (= (Exists!4084 (ite c!1291761 lambda!397564 lambda!397565)) (choose!51901 (ite c!1291761 lambda!397564 lambda!397565)))))

(declare-fun bs!1858920 () Bool)

(assert (= bs!1858920 d!2170971))

(declare-fun m!7659012 () Bool)

(assert (=> bs!1858920 m!7659012))

(assert (=> bm!632456 d!2170971))

(declare-fun d!2170973 () Bool)

(assert (=> d!2170973 (= (nullable!6906 (reg!17448 (h!73243 l!9142))) (nullableFct!2589 (reg!17448 (h!73243 l!9142))))))

(declare-fun bs!1858921 () Bool)

(assert (= bs!1858921 d!2170973))

(declare-fun m!7659014 () Bool)

(assert (=> bs!1858921 m!7659014))

(assert (=> b!6967217 d!2170973))

(declare-fun d!2170975 () Bool)

(declare-fun res!2842709 () Bool)

(declare-fun e!4189120 () Bool)

(assert (=> d!2170975 (=> res!2842709 e!4189120)))

(assert (=> d!2170975 (= res!2842709 ((_ is Nil!66795) (t!380662 l!9142)))))

(assert (=> d!2170975 (= (forall!15990 (t!380662 l!9142) lambda!397540) e!4189120)))

(declare-fun b!6968578 () Bool)

(declare-fun e!4189121 () Bool)

(assert (=> b!6968578 (= e!4189120 e!4189121)))

(declare-fun res!2842710 () Bool)

(assert (=> b!6968578 (=> (not res!2842710) (not e!4189121))))

(assert (=> b!6968578 (= res!2842710 (dynLambda!26635 lambda!397540 (h!73243 (t!380662 l!9142))))))

(declare-fun b!6968579 () Bool)

(assert (=> b!6968579 (= e!4189121 (forall!15990 (t!380662 (t!380662 l!9142)) lambda!397540))))

(assert (= (and d!2170975 (not res!2842709)) b!6968578))

(assert (= (and b!6968578 res!2842710) b!6968579))

(declare-fun b_lambda!260749 () Bool)

(assert (=> (not b_lambda!260749) (not b!6968578)))

(declare-fun m!7659016 () Bool)

(assert (=> b!6968578 m!7659016))

(declare-fun m!7659018 () Bool)

(assert (=> b!6968579 m!7659018))

(assert (=> b!6967250 d!2170975))

(declare-fun d!2170977 () Bool)

(declare-fun e!4189125 () Bool)

(assert (=> d!2170977 e!4189125))

(declare-fun c!1291924 () Bool)

(assert (=> d!2170977 (= c!1291924 ((_ is EmptyExpr!17119) (h!73243 l!9142)))))

(declare-fun lt!2479468 () Bool)

(declare-fun e!4189126 () Bool)

(assert (=> d!2170977 (= lt!2479468 e!4189126)))

(declare-fun c!1291925 () Bool)

(assert (=> d!2170977 (= c!1291925 (isEmpty!39001 s!9351))))

(assert (=> d!2170977 (validRegex!8803 (h!73243 l!9142))))

(assert (=> d!2170977 (= (matchR!9221 (h!73243 l!9142) s!9351) lt!2479468)))

(declare-fun b!6968580 () Bool)

(declare-fun e!4189127 () Bool)

(assert (=> b!6968580 (= e!4189127 (= (head!14015 s!9351) (c!1291625 (h!73243 l!9142))))))

(declare-fun b!6968581 () Bool)

(assert (=> b!6968581 (= e!4189126 (nullable!6906 (h!73243 l!9142)))))

(declare-fun b!6968582 () Bool)

(declare-fun res!2842714 () Bool)

(assert (=> b!6968582 (=> (not res!2842714) (not e!4189127))))

(assert (=> b!6968582 (= res!2842714 (isEmpty!39001 (tail!13081 s!9351)))))

(declare-fun b!6968583 () Bool)

(declare-fun e!4189128 () Bool)

(assert (=> b!6968583 (= e!4189128 (not (= (head!14015 s!9351) (c!1291625 (h!73243 l!9142)))))))

(declare-fun b!6968584 () Bool)

(declare-fun e!4189122 () Bool)

(declare-fun e!4189123 () Bool)

(assert (=> b!6968584 (= e!4189122 e!4189123)))

(declare-fun res!2842718 () Bool)

(assert (=> b!6968584 (=> (not res!2842718) (not e!4189123))))

(assert (=> b!6968584 (= res!2842718 (not lt!2479468))))

(declare-fun b!6968585 () Bool)

(declare-fun e!4189124 () Bool)

(assert (=> b!6968585 (= e!4189125 e!4189124)))

(declare-fun c!1291923 () Bool)

(assert (=> b!6968585 (= c!1291923 ((_ is EmptyLang!17119) (h!73243 l!9142)))))

(declare-fun b!6968586 () Bool)

(assert (=> b!6968586 (= e!4189124 (not lt!2479468))))

(declare-fun b!6968587 () Bool)

(declare-fun res!2842715 () Bool)

(assert (=> b!6968587 (=> res!2842715 e!4189128)))

(assert (=> b!6968587 (= res!2842715 (not (isEmpty!39001 (tail!13081 s!9351))))))

(declare-fun b!6968588 () Bool)

(declare-fun res!2842717 () Bool)

(assert (=> b!6968588 (=> res!2842717 e!4189122)))

(assert (=> b!6968588 (= res!2842717 (not ((_ is ElementMatch!17119) (h!73243 l!9142))))))

(assert (=> b!6968588 (= e!4189124 e!4189122)))

(declare-fun b!6968589 () Bool)

(declare-fun res!2842713 () Bool)

(assert (=> b!6968589 (=> (not res!2842713) (not e!4189127))))

(declare-fun call!632602 () Bool)

(assert (=> b!6968589 (= res!2842713 (not call!632602))))

(declare-fun b!6968590 () Bool)

(assert (=> b!6968590 (= e!4189125 (= lt!2479468 call!632602))))

(declare-fun b!6968591 () Bool)

(assert (=> b!6968591 (= e!4189123 e!4189128)))

(declare-fun res!2842711 () Bool)

(assert (=> b!6968591 (=> res!2842711 e!4189128)))

(assert (=> b!6968591 (= res!2842711 call!632602)))

(declare-fun b!6968592 () Bool)

(assert (=> b!6968592 (= e!4189126 (matchR!9221 (derivativeStep!5531 (h!73243 l!9142) (head!14015 s!9351)) (tail!13081 s!9351)))))

(declare-fun bm!632597 () Bool)

(assert (=> bm!632597 (= call!632602 (isEmpty!39001 s!9351))))

(declare-fun b!6968593 () Bool)

(declare-fun res!2842712 () Bool)

(assert (=> b!6968593 (=> res!2842712 e!4189122)))

(assert (=> b!6968593 (= res!2842712 e!4189127)))

(declare-fun res!2842716 () Bool)

(assert (=> b!6968593 (=> (not res!2842716) (not e!4189127))))

(assert (=> b!6968593 (= res!2842716 lt!2479468)))

(assert (= (and d!2170977 c!1291925) b!6968581))

(assert (= (and d!2170977 (not c!1291925)) b!6968592))

(assert (= (and d!2170977 c!1291924) b!6968590))

(assert (= (and d!2170977 (not c!1291924)) b!6968585))

(assert (= (and b!6968585 c!1291923) b!6968586))

(assert (= (and b!6968585 (not c!1291923)) b!6968588))

(assert (= (and b!6968588 (not res!2842717)) b!6968593))

(assert (= (and b!6968593 res!2842716) b!6968589))

(assert (= (and b!6968589 res!2842713) b!6968582))

(assert (= (and b!6968582 res!2842714) b!6968580))

(assert (= (and b!6968593 (not res!2842712)) b!6968584))

(assert (= (and b!6968584 res!2842718) b!6968591))

(assert (= (and b!6968591 (not res!2842711)) b!6968587))

(assert (= (and b!6968587 (not res!2842715)) b!6968583))

(assert (= (or b!6968590 b!6968589 b!6968591) bm!632597))

(declare-fun m!7659020 () Bool)

(assert (=> b!6968581 m!7659020))

(assert (=> d!2170977 m!7658310))

(assert (=> d!2170977 m!7658338))

(assert (=> b!6968583 m!7658320))

(assert (=> bm!632597 m!7658310))

(assert (=> b!6968582 m!7658322))

(assert (=> b!6968582 m!7658322))

(assert (=> b!6968582 m!7658324))

(assert (=> b!6968580 m!7658320))

(assert (=> b!6968592 m!7658320))

(assert (=> b!6968592 m!7658320))

(declare-fun m!7659022 () Bool)

(assert (=> b!6968592 m!7659022))

(assert (=> b!6968592 m!7658322))

(assert (=> b!6968592 m!7659022))

(assert (=> b!6968592 m!7658322))

(declare-fun m!7659024 () Bool)

(assert (=> b!6968592 m!7659024))

(assert (=> b!6968587 m!7658322))

(assert (=> b!6968587 m!7658322))

(assert (=> b!6968587 m!7658324))

(assert (=> b!6967518 d!2170977))

(declare-fun d!2170979 () Bool)

(assert (=> d!2170979 (= (isEmpty!38999 (t!380662 (t!380662 l!9142))) ((_ is Nil!66795) (t!380662 (t!380662 l!9142))))))

(assert (=> b!6967323 d!2170979))

(assert (=> d!2170741 d!2170701))

(declare-fun b!6968594 () Bool)

(declare-fun e!4189134 () Bool)

(declare-fun call!632604 () Bool)

(assert (=> b!6968594 (= e!4189134 call!632604)))

(declare-fun c!1291927 () Bool)

(declare-fun call!632605 () Bool)

(declare-fun c!1291926 () Bool)

(declare-fun bm!632598 () Bool)

(assert (=> bm!632598 (= call!632605 (validRegex!8803 (ite c!1291927 (reg!17448 (derivativeStep!5531 r!13765 (head!14015 s!9351))) (ite c!1291926 (regOne!34751 (derivativeStep!5531 r!13765 (head!14015 s!9351))) (regOne!34750 (derivativeStep!5531 r!13765 (head!14015 s!9351)))))))))

(declare-fun bm!632599 () Bool)

(declare-fun call!632603 () Bool)

(assert (=> bm!632599 (= call!632603 call!632605)))

(declare-fun b!6968595 () Bool)

(declare-fun e!4189129 () Bool)

(declare-fun e!4189133 () Bool)

(assert (=> b!6968595 (= e!4189129 e!4189133)))

(assert (=> b!6968595 (= c!1291926 ((_ is Union!17119) (derivativeStep!5531 r!13765 (head!14015 s!9351))))))

(declare-fun b!6968596 () Bool)

(declare-fun e!4189132 () Bool)

(assert (=> b!6968596 (= e!4189132 e!4189134)))

(declare-fun res!2842721 () Bool)

(assert (=> b!6968596 (=> (not res!2842721) (not e!4189134))))

(assert (=> b!6968596 (= res!2842721 call!632603)))

(declare-fun b!6968597 () Bool)

(declare-fun e!4189131 () Bool)

(assert (=> b!6968597 (= e!4189131 e!4189129)))

(assert (=> b!6968597 (= c!1291927 ((_ is Star!17119) (derivativeStep!5531 r!13765 (head!14015 s!9351))))))

(declare-fun b!6968598 () Bool)

(declare-fun e!4189135 () Bool)

(assert (=> b!6968598 (= e!4189135 call!632604)))

(declare-fun b!6968599 () Bool)

(declare-fun e!4189130 () Bool)

(assert (=> b!6968599 (= e!4189130 call!632605)))

(declare-fun b!6968600 () Bool)

(declare-fun res!2842719 () Bool)

(assert (=> b!6968600 (=> (not res!2842719) (not e!4189135))))

(assert (=> b!6968600 (= res!2842719 call!632603)))

(assert (=> b!6968600 (= e!4189133 e!4189135)))

(declare-fun d!2170981 () Bool)

(declare-fun res!2842720 () Bool)

(assert (=> d!2170981 (=> res!2842720 e!4189131)))

(assert (=> d!2170981 (= res!2842720 ((_ is ElementMatch!17119) (derivativeStep!5531 r!13765 (head!14015 s!9351))))))

(assert (=> d!2170981 (= (validRegex!8803 (derivativeStep!5531 r!13765 (head!14015 s!9351))) e!4189131)))

(declare-fun bm!632600 () Bool)

(assert (=> bm!632600 (= call!632604 (validRegex!8803 (ite c!1291926 (regTwo!34751 (derivativeStep!5531 r!13765 (head!14015 s!9351))) (regTwo!34750 (derivativeStep!5531 r!13765 (head!14015 s!9351))))))))

(declare-fun b!6968601 () Bool)

(assert (=> b!6968601 (= e!4189129 e!4189130)))

(declare-fun res!2842722 () Bool)

(assert (=> b!6968601 (= res!2842722 (not (nullable!6906 (reg!17448 (derivativeStep!5531 r!13765 (head!14015 s!9351))))))))

(assert (=> b!6968601 (=> (not res!2842722) (not e!4189130))))

(declare-fun b!6968602 () Bool)

(declare-fun res!2842723 () Bool)

(assert (=> b!6968602 (=> res!2842723 e!4189132)))

(assert (=> b!6968602 (= res!2842723 (not ((_ is Concat!25964) (derivativeStep!5531 r!13765 (head!14015 s!9351)))))))

(assert (=> b!6968602 (= e!4189133 e!4189132)))

(assert (= (and d!2170981 (not res!2842720)) b!6968597))

(assert (= (and b!6968597 c!1291927) b!6968601))

(assert (= (and b!6968597 (not c!1291927)) b!6968595))

(assert (= (and b!6968601 res!2842722) b!6968599))

(assert (= (and b!6968595 c!1291926) b!6968600))

(assert (= (and b!6968595 (not c!1291926)) b!6968602))

(assert (= (and b!6968600 res!2842719) b!6968598))

(assert (= (and b!6968602 (not res!2842723)) b!6968596))

(assert (= (and b!6968596 res!2842721) b!6968594))

(assert (= (or b!6968600 b!6968596) bm!632599))

(assert (= (or b!6968598 b!6968594) bm!632600))

(assert (= (or b!6968599 bm!632599) bm!632598))

(declare-fun m!7659026 () Bool)

(assert (=> bm!632598 m!7659026))

(declare-fun m!7659028 () Bool)

(assert (=> bm!632600 m!7659028))

(declare-fun m!7659030 () Bool)

(assert (=> b!6968601 m!7659030))

(assert (=> d!2170741 d!2170981))

(assert (=> b!6967275 d!2170895))

(assert (=> b!6967277 d!2170941))

(assert (=> b!6967277 d!2170897))

(declare-fun b!6968617 () Bool)

(declare-fun e!4189150 () Bool)

(declare-fun call!632610 () Bool)

(assert (=> b!6968617 (= e!4189150 call!632610)))

(declare-fun b!6968618 () Bool)

(declare-fun e!4189152 () Bool)

(declare-fun e!4189153 () Bool)

(assert (=> b!6968618 (= e!4189152 e!4189153)))

(declare-fun res!2842736 () Bool)

(assert (=> b!6968618 (=> res!2842736 e!4189153)))

(assert (=> b!6968618 (= res!2842736 ((_ is Star!17119) r!13765))))

(declare-fun b!6968619 () Bool)

(declare-fun e!4189151 () Bool)

(assert (=> b!6968619 (= e!4189151 e!4189152)))

(declare-fun res!2842737 () Bool)

(assert (=> b!6968619 (=> (not res!2842737) (not e!4189152))))

(assert (=> b!6968619 (= res!2842737 (and (not ((_ is EmptyLang!17119) r!13765)) (not ((_ is ElementMatch!17119) r!13765))))))

(declare-fun b!6968620 () Bool)

(declare-fun e!4189148 () Bool)

(assert (=> b!6968620 (= e!4189148 e!4189150)))

(declare-fun res!2842738 () Bool)

(declare-fun call!632611 () Bool)

(assert (=> b!6968620 (= res!2842738 call!632611)))

(assert (=> b!6968620 (=> (not res!2842738) (not e!4189150))))

(declare-fun b!6968621 () Bool)

(declare-fun e!4189149 () Bool)

(assert (=> b!6968621 (= e!4189148 e!4189149)))

(declare-fun res!2842734 () Bool)

(assert (=> b!6968621 (= res!2842734 call!632610)))

(assert (=> b!6968621 (=> res!2842734 e!4189149)))

(declare-fun b!6968623 () Bool)

(assert (=> b!6968623 (= e!4189153 e!4189148)))

(declare-fun c!1291930 () Bool)

(assert (=> b!6968623 (= c!1291930 ((_ is Union!17119) r!13765))))

(declare-fun bm!632605 () Bool)

(assert (=> bm!632605 (= call!632611 (nullable!6906 (ite c!1291930 (regTwo!34751 r!13765) (regOne!34750 r!13765))))))

(declare-fun bm!632606 () Bool)

(assert (=> bm!632606 (= call!632610 (nullable!6906 (ite c!1291930 (regOne!34751 r!13765) (regTwo!34750 r!13765))))))

(declare-fun b!6968622 () Bool)

(assert (=> b!6968622 (= e!4189149 call!632611)))

(declare-fun d!2170983 () Bool)

(declare-fun res!2842735 () Bool)

(assert (=> d!2170983 (=> res!2842735 e!4189151)))

(assert (=> d!2170983 (= res!2842735 ((_ is EmptyExpr!17119) r!13765))))

(assert (=> d!2170983 (= (nullableFct!2589 r!13765) e!4189151)))

(assert (= (and d!2170983 (not res!2842735)) b!6968619))

(assert (= (and b!6968619 res!2842737) b!6968618))

(assert (= (and b!6968618 (not res!2842736)) b!6968623))

(assert (= (and b!6968623 c!1291930) b!6968621))

(assert (= (and b!6968623 (not c!1291930)) b!6968620))

(assert (= (and b!6968621 (not res!2842734)) b!6968622))

(assert (= (and b!6968620 res!2842738) b!6968617))

(assert (= (or b!6968621 b!6968617) bm!632606))

(assert (= (or b!6968622 b!6968620) bm!632605))

(declare-fun m!7659032 () Bool)

(assert (=> bm!632605 m!7659032))

(declare-fun m!7659034 () Bool)

(assert (=> bm!632606 m!7659034))

(assert (=> d!2170693 d!2170983))

(assert (=> b!6967327 d!2170717))

(declare-fun d!2170985 () Bool)

(assert (=> d!2170985 (= (nullable!6906 (reg!17448 lt!2479430)) (nullableFct!2589 (reg!17448 lt!2479430)))))

(declare-fun bs!1858922 () Bool)

(assert (= bs!1858922 d!2170985))

(declare-fun m!7659036 () Bool)

(assert (=> bs!1858922 m!7659036))

(assert (=> b!6967247 d!2170985))

(assert (=> bm!632455 d!2170705))

(declare-fun bs!1858923 () Bool)

(declare-fun b!6968634 () Bool)

(assert (= bs!1858923 (and b!6968634 b!6968487)))

(declare-fun lambda!397585 () Int)

(assert (=> bs!1858923 (not (= lambda!397585 lambda!397580))))

(declare-fun bs!1858924 () Bool)

(assert (= bs!1858924 (and b!6968634 b!6966819)))

(assert (=> bs!1858924 (= (and (= (reg!17448 (regTwo!34751 (regOne!34751 r!13765))) (reg!17448 r!13765)) (= (regTwo!34751 (regOne!34751 r!13765)) r!13765)) (= lambda!397585 lambda!397552))))

(declare-fun bs!1858925 () Bool)

(assert (= bs!1858925 (and b!6968634 b!6967329)))

(assert (=> bs!1858925 (not (= lambda!397585 lambda!397568))))

(declare-fun bs!1858926 () Bool)

(assert (= bs!1858926 (and b!6968634 b!6967251)))

(assert (=> bs!1858926 (not (= lambda!397585 lambda!397565))))

(declare-fun bs!1858927 () Bool)

(assert (= bs!1858927 (and b!6968634 b!6968545)))

(assert (=> bs!1858927 (= (and (= (reg!17448 (regTwo!34751 (regOne!34751 r!13765))) (reg!17448 (regOne!34751 (regOne!34751 r!13765)))) (= (regTwo!34751 (regOne!34751 r!13765)) (regOne!34751 (regOne!34751 r!13765)))) (= lambda!397585 lambda!397582))))

(declare-fun bs!1858928 () Bool)

(assert (= bs!1858928 (and b!6968634 b!6967339)))

(assert (=> bs!1858928 (= (and (= (reg!17448 (regTwo!34751 (regOne!34751 r!13765))) (reg!17448 (regOne!34751 r!13765))) (= (regTwo!34751 (regOne!34751 r!13765)) (regOne!34751 r!13765))) (= lambda!397585 lambda!397567))))

(declare-fun bs!1858929 () Bool)

(assert (= bs!1858929 (and b!6968634 b!6967261)))

(assert (=> bs!1858929 (= (and (= (reg!17448 (regTwo!34751 (regOne!34751 r!13765))) (reg!17448 (regTwo!34751 r!13765))) (= (regTwo!34751 (regOne!34751 r!13765)) (regTwo!34751 r!13765))) (= lambda!397585 lambda!397564))))

(declare-fun bs!1858930 () Bool)

(assert (= bs!1858930 (and b!6968634 b!6968497)))

(assert (=> bs!1858930 (= (and (= (reg!17448 (regTwo!34751 (regOne!34751 r!13765))) (reg!17448 (regTwo!34751 (regTwo!34751 r!13765)))) (= (regTwo!34751 (regOne!34751 r!13765)) (regTwo!34751 (regTwo!34751 r!13765)))) (= lambda!397585 lambda!397579))))

(declare-fun bs!1858931 () Bool)

(assert (= bs!1858931 (and b!6968634 b!6966809)))

(assert (=> bs!1858931 (not (= lambda!397585 lambda!397553))))

(declare-fun bs!1858932 () Bool)

(assert (= bs!1858932 (and b!6968634 b!6968535)))

(assert (=> bs!1858932 (not (= lambda!397585 lambda!397583))))

(assert (=> b!6968634 true))

(assert (=> b!6968634 true))

(declare-fun bs!1858933 () Bool)

(declare-fun b!6968624 () Bool)

(assert (= bs!1858933 (and b!6968624 b!6968487)))

(declare-fun lambda!397586 () Int)

(assert (=> bs!1858933 (= (and (= (regOne!34750 (regTwo!34751 (regOne!34751 r!13765))) (regOne!34750 (regTwo!34751 (regTwo!34751 r!13765)))) (= (regTwo!34750 (regTwo!34751 (regOne!34751 r!13765))) (regTwo!34750 (regTwo!34751 (regTwo!34751 r!13765))))) (= lambda!397586 lambda!397580))))

(declare-fun bs!1858934 () Bool)

(assert (= bs!1858934 (and b!6968624 b!6966819)))

(assert (=> bs!1858934 (not (= lambda!397586 lambda!397552))))

(declare-fun bs!1858935 () Bool)

(assert (= bs!1858935 (and b!6968624 b!6968634)))

(assert (=> bs!1858935 (not (= lambda!397586 lambda!397585))))

(declare-fun bs!1858936 () Bool)

(assert (= bs!1858936 (and b!6968624 b!6967329)))

(assert (=> bs!1858936 (= (and (= (regOne!34750 (regTwo!34751 (regOne!34751 r!13765))) (regOne!34750 (regOne!34751 r!13765))) (= (regTwo!34750 (regTwo!34751 (regOne!34751 r!13765))) (regTwo!34750 (regOne!34751 r!13765)))) (= lambda!397586 lambda!397568))))

(declare-fun bs!1858937 () Bool)

(assert (= bs!1858937 (and b!6968624 b!6967251)))

(assert (=> bs!1858937 (= (and (= (regOne!34750 (regTwo!34751 (regOne!34751 r!13765))) (regOne!34750 (regTwo!34751 r!13765))) (= (regTwo!34750 (regTwo!34751 (regOne!34751 r!13765))) (regTwo!34750 (regTwo!34751 r!13765)))) (= lambda!397586 lambda!397565))))

(declare-fun bs!1858938 () Bool)

(assert (= bs!1858938 (and b!6968624 b!6968545)))

(assert (=> bs!1858938 (not (= lambda!397586 lambda!397582))))

(declare-fun bs!1858939 () Bool)

(assert (= bs!1858939 (and b!6968624 b!6967339)))

(assert (=> bs!1858939 (not (= lambda!397586 lambda!397567))))

(declare-fun bs!1858940 () Bool)

(assert (= bs!1858940 (and b!6968624 b!6967261)))

(assert (=> bs!1858940 (not (= lambda!397586 lambda!397564))))

(declare-fun bs!1858941 () Bool)

(assert (= bs!1858941 (and b!6968624 b!6968497)))

(assert (=> bs!1858941 (not (= lambda!397586 lambda!397579))))

(declare-fun bs!1858942 () Bool)

(assert (= bs!1858942 (and b!6968624 b!6966809)))

(assert (=> bs!1858942 (= (and (= (regOne!34750 (regTwo!34751 (regOne!34751 r!13765))) (regOne!34750 r!13765)) (= (regTwo!34750 (regTwo!34751 (regOne!34751 r!13765))) (regTwo!34750 r!13765))) (= lambda!397586 lambda!397553))))

(declare-fun bs!1858943 () Bool)

(assert (= bs!1858943 (and b!6968624 b!6968535)))

(assert (=> bs!1858943 (= (and (= (regOne!34750 (regTwo!34751 (regOne!34751 r!13765))) (regOne!34750 (regOne!34751 (regOne!34751 r!13765)))) (= (regTwo!34750 (regTwo!34751 (regOne!34751 r!13765))) (regTwo!34750 (regOne!34751 (regOne!34751 r!13765))))) (= lambda!397586 lambda!397583))))

(assert (=> b!6968624 true))

(assert (=> b!6968624 true))

(declare-fun e!4189156 () Bool)

(declare-fun call!632613 () Bool)

(assert (=> b!6968624 (= e!4189156 call!632613)))

(declare-fun b!6968625 () Bool)

(declare-fun e!4189158 () Bool)

(assert (=> b!6968625 (= e!4189158 (matchRSpec!4136 (regTwo!34751 (regTwo!34751 (regOne!34751 r!13765))) s!9351))))

(declare-fun bm!632607 () Bool)

(declare-fun call!632612 () Bool)

(assert (=> bm!632607 (= call!632612 (isEmpty!39001 s!9351))))

(declare-fun b!6968627 () Bool)

(declare-fun e!4189160 () Bool)

(assert (=> b!6968627 (= e!4189160 e!4189158)))

(declare-fun res!2842741 () Bool)

(assert (=> b!6968627 (= res!2842741 (matchRSpec!4136 (regOne!34751 (regTwo!34751 (regOne!34751 r!13765))) s!9351))))

(assert (=> b!6968627 (=> res!2842741 e!4189158)))

(declare-fun b!6968628 () Bool)

(declare-fun e!4189157 () Bool)

(declare-fun e!4189155 () Bool)

(assert (=> b!6968628 (= e!4189157 e!4189155)))

(declare-fun res!2842739 () Bool)

(assert (=> b!6968628 (= res!2842739 (not ((_ is EmptyLang!17119) (regTwo!34751 (regOne!34751 r!13765)))))))

(assert (=> b!6968628 (=> (not res!2842739) (not e!4189155))))

(declare-fun b!6968629 () Bool)

(declare-fun e!4189154 () Bool)

(assert (=> b!6968629 (= e!4189154 (= s!9351 (Cons!66796 (c!1291625 (regTwo!34751 (regOne!34751 r!13765))) Nil!66796)))))

(declare-fun b!6968630 () Bool)

(declare-fun c!1291934 () Bool)

(assert (=> b!6968630 (= c!1291934 ((_ is ElementMatch!17119) (regTwo!34751 (regOne!34751 r!13765))))))

(assert (=> b!6968630 (= e!4189155 e!4189154)))

(declare-fun b!6968631 () Bool)

(declare-fun c!1291931 () Bool)

(assert (=> b!6968631 (= c!1291931 ((_ is Union!17119) (regTwo!34751 (regOne!34751 r!13765))))))

(assert (=> b!6968631 (= e!4189154 e!4189160)))

(declare-fun b!6968632 () Bool)

(declare-fun res!2842740 () Bool)

(declare-fun e!4189159 () Bool)

(assert (=> b!6968632 (=> res!2842740 e!4189159)))

(assert (=> b!6968632 (= res!2842740 call!632612)))

(assert (=> b!6968632 (= e!4189156 e!4189159)))

(declare-fun b!6968633 () Bool)

(assert (=> b!6968633 (= e!4189157 call!632612)))

(declare-fun bm!632608 () Bool)

(declare-fun c!1291932 () Bool)

(assert (=> bm!632608 (= call!632613 (Exists!4084 (ite c!1291932 lambda!397585 lambda!397586)))))

(assert (=> b!6968634 (= e!4189159 call!632613)))

(declare-fun d!2170987 () Bool)

(declare-fun c!1291933 () Bool)

(assert (=> d!2170987 (= c!1291933 ((_ is EmptyExpr!17119) (regTwo!34751 (regOne!34751 r!13765))))))

(assert (=> d!2170987 (= (matchRSpec!4136 (regTwo!34751 (regOne!34751 r!13765)) s!9351) e!4189157)))

(declare-fun b!6968626 () Bool)

(assert (=> b!6968626 (= e!4189160 e!4189156)))

(assert (=> b!6968626 (= c!1291932 ((_ is Star!17119) (regTwo!34751 (regOne!34751 r!13765))))))

(assert (= (and d!2170987 c!1291933) b!6968633))

(assert (= (and d!2170987 (not c!1291933)) b!6968628))

(assert (= (and b!6968628 res!2842739) b!6968630))

(assert (= (and b!6968630 c!1291934) b!6968629))

(assert (= (and b!6968630 (not c!1291934)) b!6968631))

(assert (= (and b!6968631 c!1291931) b!6968627))

(assert (= (and b!6968631 (not c!1291931)) b!6968626))

(assert (= (and b!6968627 (not res!2842741)) b!6968625))

(assert (= (and b!6968626 c!1291932) b!6968632))

(assert (= (and b!6968626 (not c!1291932)) b!6968624))

(assert (= (and b!6968632 (not res!2842740)) b!6968634))

(assert (= (or b!6968634 b!6968624) bm!632608))

(assert (= (or b!6968633 b!6968632) bm!632607))

(declare-fun m!7659038 () Bool)

(assert (=> b!6968625 m!7659038))

(assert (=> bm!632607 m!7658310))

(declare-fun m!7659040 () Bool)

(assert (=> b!6968627 m!7659040))

(declare-fun m!7659042 () Bool)

(assert (=> bm!632608 m!7659042))

(assert (=> b!6967330 d!2170987))

(declare-fun d!2170989 () Bool)

(assert (=> d!2170989 (= (isEmpty!38999 (t!380662 (t!380662 lt!2479422))) ((_ is Nil!66795) (t!380662 (t!380662 lt!2479422))))))

(assert (=> b!6967234 d!2170989))

(assert (=> bs!1858761 d!2170685))

(declare-fun d!2170991 () Bool)

(assert (=> d!2170991 (= (nullable!6906 (reg!17448 r!13765)) (nullableFct!2589 (reg!17448 r!13765)))))

(declare-fun bs!1858944 () Bool)

(assert (= bs!1858944 d!2170991))

(declare-fun m!7659044 () Bool)

(assert (=> bs!1858944 m!7659044))

(assert (=> b!6967228 d!2170991))

(declare-fun d!2170993 () Bool)

(declare-fun lt!2479469 () Regex!17119)

(assert (=> d!2170993 (validRegex!8803 lt!2479469)))

(declare-fun e!4189162 () Regex!17119)

(assert (=> d!2170993 (= lt!2479469 e!4189162)))

(declare-fun c!1291935 () Bool)

(assert (=> d!2170993 (= c!1291935 (or ((_ is EmptyExpr!17119) (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765)))) ((_ is EmptyLang!17119) (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765))))))))

(assert (=> d!2170993 (validRegex!8803 (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765))))))

(assert (=> d!2170993 (= (derivativeStep!5531 (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765))) (head!14015 s!9351)) lt!2479469)))

(declare-fun b!6968635 () Bool)

(declare-fun c!1291936 () Bool)

(assert (=> b!6968635 (= c!1291936 ((_ is Union!17119) (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765)))))))

(declare-fun e!4189164 () Regex!17119)

(declare-fun e!4189163 () Regex!17119)

(assert (=> b!6968635 (= e!4189164 e!4189163)))

(declare-fun b!6968636 () Bool)

(declare-fun call!632616 () Regex!17119)

(declare-fun call!632614 () Regex!17119)

(assert (=> b!6968636 (= e!4189163 (Union!17119 call!632616 call!632614))))

(declare-fun bm!632609 () Bool)

(declare-fun call!632617 () Regex!17119)

(assert (=> bm!632609 (= call!632617 call!632616)))

(declare-fun e!4189165 () Regex!17119)

(declare-fun b!6968637 () Bool)

(assert (=> b!6968637 (= e!4189165 (Concat!25964 call!632617 (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765)))))))

(declare-fun b!6968638 () Bool)

(assert (=> b!6968638 (= e!4189162 e!4189164)))

(declare-fun c!1291938 () Bool)

(assert (=> b!6968638 (= c!1291938 ((_ is ElementMatch!17119) (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765)))))))

(declare-fun b!6968639 () Bool)

(assert (=> b!6968639 (= e!4189164 (ite (= (head!14015 s!9351) (c!1291625 (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765))))) EmptyExpr!17119 EmptyLang!17119))))

(declare-fun b!6968640 () Bool)

(assert (=> b!6968640 (= e!4189163 e!4189165)))

(declare-fun c!1291937 () Bool)

(assert (=> b!6968640 (= c!1291937 ((_ is Star!17119) (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765)))))))

(declare-fun bm!632610 () Bool)

(declare-fun c!1291939 () Bool)

(assert (=> bm!632610 (= call!632614 (derivativeStep!5531 (ite c!1291936 (regTwo!34751 (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765)))) (ite c!1291939 (regTwo!34750 (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765)))) (regOne!34750 (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765)))))) (head!14015 s!9351)))))

(declare-fun b!6968641 () Bool)

(declare-fun e!4189161 () Regex!17119)

(declare-fun call!632615 () Regex!17119)

(assert (=> b!6968641 (= e!4189161 (Union!17119 (Concat!25964 call!632615 (regTwo!34750 (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765))))) EmptyLang!17119))))

(declare-fun b!6968642 () Bool)

(assert (=> b!6968642 (= e!4189162 EmptyLang!17119)))

(declare-fun bm!632611 () Bool)

(assert (=> bm!632611 (= call!632615 call!632614)))

(declare-fun b!6968643 () Bool)

(assert (=> b!6968643 (= c!1291939 (nullable!6906 (regOne!34750 (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765))))))))

(assert (=> b!6968643 (= e!4189165 e!4189161)))

(declare-fun b!6968644 () Bool)

(assert (=> b!6968644 (= e!4189161 (Union!17119 (Concat!25964 call!632617 (regTwo!34750 (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765))))) call!632615))))

(declare-fun bm!632612 () Bool)

(assert (=> bm!632612 (= call!632616 (derivativeStep!5531 (ite c!1291936 (regOne!34751 (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765)))) (ite c!1291937 (reg!17448 (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765)))) (regOne!34750 (ite c!1291780 (regTwo!34751 r!13765) (ite c!1291783 (regTwo!34750 r!13765) (regOne!34750 r!13765)))))) (head!14015 s!9351)))))

(assert (= (and d!2170993 c!1291935) b!6968642))

(assert (= (and d!2170993 (not c!1291935)) b!6968638))

(assert (= (and b!6968638 c!1291938) b!6968639))

(assert (= (and b!6968638 (not c!1291938)) b!6968635))

(assert (= (and b!6968635 c!1291936) b!6968636))

(assert (= (and b!6968635 (not c!1291936)) b!6968640))

(assert (= (and b!6968640 c!1291937) b!6968637))

(assert (= (and b!6968640 (not c!1291937)) b!6968643))

(assert (= (and b!6968643 c!1291939) b!6968644))

(assert (= (and b!6968643 (not c!1291939)) b!6968641))

(assert (= (or b!6968644 b!6968641) bm!632611))

(assert (= (or b!6968637 b!6968644) bm!632609))

(assert (= (or b!6968636 bm!632609) bm!632612))

(assert (= (or b!6968636 bm!632611) bm!632610))

(declare-fun m!7659046 () Bool)

(assert (=> d!2170993 m!7659046))

(declare-fun m!7659048 () Bool)

(assert (=> d!2170993 m!7659048))

(assert (=> bm!632610 m!7658320))

(declare-fun m!7659050 () Bool)

(assert (=> bm!632610 m!7659050))

(declare-fun m!7659052 () Bool)

(assert (=> b!6968643 m!7659052))

(assert (=> bm!632612 m!7658320))

(declare-fun m!7659054 () Bool)

(assert (=> bm!632612 m!7659054))

(assert (=> bm!632470 d!2170993))

(declare-fun bs!1858945 () Bool)

(declare-fun b!6968655 () Bool)

(assert (= bs!1858945 (and b!6968655 b!6968487)))

(declare-fun lambda!397587 () Int)

(assert (=> bs!1858945 (not (= lambda!397587 lambda!397580))))

(declare-fun bs!1858946 () Bool)

(assert (= bs!1858946 (and b!6968655 b!6968634)))

(assert (=> bs!1858946 (= (and (= (reg!17448 (regOne!34751 (regTwo!34751 r!13765))) (reg!17448 (regTwo!34751 (regOne!34751 r!13765)))) (= (regOne!34751 (regTwo!34751 r!13765)) (regTwo!34751 (regOne!34751 r!13765)))) (= lambda!397587 lambda!397585))))

(declare-fun bs!1858947 () Bool)

(assert (= bs!1858947 (and b!6968655 b!6967329)))

(assert (=> bs!1858947 (not (= lambda!397587 lambda!397568))))

(declare-fun bs!1858948 () Bool)

(assert (= bs!1858948 (and b!6968655 b!6967251)))

(assert (=> bs!1858948 (not (= lambda!397587 lambda!397565))))

(declare-fun bs!1858949 () Bool)

(assert (= bs!1858949 (and b!6968655 b!6968545)))

(assert (=> bs!1858949 (= (and (= (reg!17448 (regOne!34751 (regTwo!34751 r!13765))) (reg!17448 (regOne!34751 (regOne!34751 r!13765)))) (= (regOne!34751 (regTwo!34751 r!13765)) (regOne!34751 (regOne!34751 r!13765)))) (= lambda!397587 lambda!397582))))

(declare-fun bs!1858950 () Bool)

(assert (= bs!1858950 (and b!6968655 b!6967339)))

(assert (=> bs!1858950 (= (and (= (reg!17448 (regOne!34751 (regTwo!34751 r!13765))) (reg!17448 (regOne!34751 r!13765))) (= (regOne!34751 (regTwo!34751 r!13765)) (regOne!34751 r!13765))) (= lambda!397587 lambda!397567))))

(declare-fun bs!1858951 () Bool)

(assert (= bs!1858951 (and b!6968655 b!6968624)))

(assert (=> bs!1858951 (not (= lambda!397587 lambda!397586))))

(declare-fun bs!1858952 () Bool)

(assert (= bs!1858952 (and b!6968655 b!6966819)))

(assert (=> bs!1858952 (= (and (= (reg!17448 (regOne!34751 (regTwo!34751 r!13765))) (reg!17448 r!13765)) (= (regOne!34751 (regTwo!34751 r!13765)) r!13765)) (= lambda!397587 lambda!397552))))

(declare-fun bs!1858953 () Bool)

(assert (= bs!1858953 (and b!6968655 b!6967261)))

(assert (=> bs!1858953 (= (and (= (reg!17448 (regOne!34751 (regTwo!34751 r!13765))) (reg!17448 (regTwo!34751 r!13765))) (= (regOne!34751 (regTwo!34751 r!13765)) (regTwo!34751 r!13765))) (= lambda!397587 lambda!397564))))

(declare-fun bs!1858954 () Bool)

(assert (= bs!1858954 (and b!6968655 b!6968497)))

(assert (=> bs!1858954 (= (and (= (reg!17448 (regOne!34751 (regTwo!34751 r!13765))) (reg!17448 (regTwo!34751 (regTwo!34751 r!13765)))) (= (regOne!34751 (regTwo!34751 r!13765)) (regTwo!34751 (regTwo!34751 r!13765)))) (= lambda!397587 lambda!397579))))

(declare-fun bs!1858955 () Bool)

(assert (= bs!1858955 (and b!6968655 b!6966809)))

(assert (=> bs!1858955 (not (= lambda!397587 lambda!397553))))

(declare-fun bs!1858956 () Bool)

(assert (= bs!1858956 (and b!6968655 b!6968535)))

(assert (=> bs!1858956 (not (= lambda!397587 lambda!397583))))

(assert (=> b!6968655 true))

(assert (=> b!6968655 true))

(declare-fun bs!1858957 () Bool)

(declare-fun b!6968645 () Bool)

(assert (= bs!1858957 (and b!6968645 b!6968487)))

(declare-fun lambda!397588 () Int)

(assert (=> bs!1858957 (= (and (= (regOne!34750 (regOne!34751 (regTwo!34751 r!13765))) (regOne!34750 (regTwo!34751 (regTwo!34751 r!13765)))) (= (regTwo!34750 (regOne!34751 (regTwo!34751 r!13765))) (regTwo!34750 (regTwo!34751 (regTwo!34751 r!13765))))) (= lambda!397588 lambda!397580))))

(declare-fun bs!1858958 () Bool)

(assert (= bs!1858958 (and b!6968645 b!6968634)))

(assert (=> bs!1858958 (not (= lambda!397588 lambda!397585))))

(declare-fun bs!1858959 () Bool)

(assert (= bs!1858959 (and b!6968645 b!6967329)))

(assert (=> bs!1858959 (= (and (= (regOne!34750 (regOne!34751 (regTwo!34751 r!13765))) (regOne!34750 (regOne!34751 r!13765))) (= (regTwo!34750 (regOne!34751 (regTwo!34751 r!13765))) (regTwo!34750 (regOne!34751 r!13765)))) (= lambda!397588 lambda!397568))))

(declare-fun bs!1858960 () Bool)

(assert (= bs!1858960 (and b!6968645 b!6968655)))

(assert (=> bs!1858960 (not (= lambda!397588 lambda!397587))))

(declare-fun bs!1858961 () Bool)

(assert (= bs!1858961 (and b!6968645 b!6967251)))

(assert (=> bs!1858961 (= (and (= (regOne!34750 (regOne!34751 (regTwo!34751 r!13765))) (regOne!34750 (regTwo!34751 r!13765))) (= (regTwo!34750 (regOne!34751 (regTwo!34751 r!13765))) (regTwo!34750 (regTwo!34751 r!13765)))) (= lambda!397588 lambda!397565))))

(declare-fun bs!1858962 () Bool)

(assert (= bs!1858962 (and b!6968645 b!6968545)))

(assert (=> bs!1858962 (not (= lambda!397588 lambda!397582))))

(declare-fun bs!1858963 () Bool)

(assert (= bs!1858963 (and b!6968645 b!6967339)))

(assert (=> bs!1858963 (not (= lambda!397588 lambda!397567))))

(declare-fun bs!1858964 () Bool)

(assert (= bs!1858964 (and b!6968645 b!6968624)))

(assert (=> bs!1858964 (= (and (= (regOne!34750 (regOne!34751 (regTwo!34751 r!13765))) (regOne!34750 (regTwo!34751 (regOne!34751 r!13765)))) (= (regTwo!34750 (regOne!34751 (regTwo!34751 r!13765))) (regTwo!34750 (regTwo!34751 (regOne!34751 r!13765))))) (= lambda!397588 lambda!397586))))

(declare-fun bs!1858965 () Bool)

(assert (= bs!1858965 (and b!6968645 b!6966819)))

(assert (=> bs!1858965 (not (= lambda!397588 lambda!397552))))

(declare-fun bs!1858966 () Bool)

(assert (= bs!1858966 (and b!6968645 b!6967261)))

(assert (=> bs!1858966 (not (= lambda!397588 lambda!397564))))

(declare-fun bs!1858967 () Bool)

(assert (= bs!1858967 (and b!6968645 b!6968497)))

(assert (=> bs!1858967 (not (= lambda!397588 lambda!397579))))

(declare-fun bs!1858968 () Bool)

(assert (= bs!1858968 (and b!6968645 b!6966809)))

(assert (=> bs!1858968 (= (and (= (regOne!34750 (regOne!34751 (regTwo!34751 r!13765))) (regOne!34750 r!13765)) (= (regTwo!34750 (regOne!34751 (regTwo!34751 r!13765))) (regTwo!34750 r!13765))) (= lambda!397588 lambda!397553))))

(declare-fun bs!1858969 () Bool)

(assert (= bs!1858969 (and b!6968645 b!6968535)))

(assert (=> bs!1858969 (= (and (= (regOne!34750 (regOne!34751 (regTwo!34751 r!13765))) (regOne!34750 (regOne!34751 (regOne!34751 r!13765)))) (= (regTwo!34750 (regOne!34751 (regTwo!34751 r!13765))) (regTwo!34750 (regOne!34751 (regOne!34751 r!13765))))) (= lambda!397588 lambda!397583))))

(assert (=> b!6968645 true))

(assert (=> b!6968645 true))

(declare-fun e!4189168 () Bool)

(declare-fun call!632619 () Bool)

(assert (=> b!6968645 (= e!4189168 call!632619)))

(declare-fun b!6968646 () Bool)

(declare-fun e!4189170 () Bool)

(assert (=> b!6968646 (= e!4189170 (matchRSpec!4136 (regTwo!34751 (regOne!34751 (regTwo!34751 r!13765))) s!9351))))

(declare-fun bm!632613 () Bool)

(declare-fun call!632618 () Bool)

(assert (=> bm!632613 (= call!632618 (isEmpty!39001 s!9351))))

(declare-fun b!6968648 () Bool)

(declare-fun e!4189172 () Bool)

(assert (=> b!6968648 (= e!4189172 e!4189170)))

(declare-fun res!2842744 () Bool)

(assert (=> b!6968648 (= res!2842744 (matchRSpec!4136 (regOne!34751 (regOne!34751 (regTwo!34751 r!13765))) s!9351))))

(assert (=> b!6968648 (=> res!2842744 e!4189170)))

(declare-fun b!6968649 () Bool)

(declare-fun e!4189169 () Bool)

(declare-fun e!4189167 () Bool)

(assert (=> b!6968649 (= e!4189169 e!4189167)))

(declare-fun res!2842742 () Bool)

(assert (=> b!6968649 (= res!2842742 (not ((_ is EmptyLang!17119) (regOne!34751 (regTwo!34751 r!13765)))))))

(assert (=> b!6968649 (=> (not res!2842742) (not e!4189167))))

(declare-fun b!6968650 () Bool)

(declare-fun e!4189166 () Bool)

(assert (=> b!6968650 (= e!4189166 (= s!9351 (Cons!66796 (c!1291625 (regOne!34751 (regTwo!34751 r!13765))) Nil!66796)))))

(declare-fun b!6968651 () Bool)

(declare-fun c!1291943 () Bool)

(assert (=> b!6968651 (= c!1291943 ((_ is ElementMatch!17119) (regOne!34751 (regTwo!34751 r!13765))))))

(assert (=> b!6968651 (= e!4189167 e!4189166)))

(declare-fun b!6968652 () Bool)

(declare-fun c!1291940 () Bool)

(assert (=> b!6968652 (= c!1291940 ((_ is Union!17119) (regOne!34751 (regTwo!34751 r!13765))))))

(assert (=> b!6968652 (= e!4189166 e!4189172)))

(declare-fun b!6968653 () Bool)

(declare-fun res!2842743 () Bool)

(declare-fun e!4189171 () Bool)

(assert (=> b!6968653 (=> res!2842743 e!4189171)))

(assert (=> b!6968653 (= res!2842743 call!632618)))

(assert (=> b!6968653 (= e!4189168 e!4189171)))

(declare-fun b!6968654 () Bool)

(assert (=> b!6968654 (= e!4189169 call!632618)))

(declare-fun bm!632614 () Bool)

(declare-fun c!1291941 () Bool)

(assert (=> bm!632614 (= call!632619 (Exists!4084 (ite c!1291941 lambda!397587 lambda!397588)))))

(assert (=> b!6968655 (= e!4189171 call!632619)))

(declare-fun d!2170995 () Bool)

(declare-fun c!1291942 () Bool)

(assert (=> d!2170995 (= c!1291942 ((_ is EmptyExpr!17119) (regOne!34751 (regTwo!34751 r!13765))))))

(assert (=> d!2170995 (= (matchRSpec!4136 (regOne!34751 (regTwo!34751 r!13765)) s!9351) e!4189169)))

(declare-fun b!6968647 () Bool)

(assert (=> b!6968647 (= e!4189172 e!4189168)))

(assert (=> b!6968647 (= c!1291941 ((_ is Star!17119) (regOne!34751 (regTwo!34751 r!13765))))))

(assert (= (and d!2170995 c!1291942) b!6968654))

(assert (= (and d!2170995 (not c!1291942)) b!6968649))

(assert (= (and b!6968649 res!2842742) b!6968651))

(assert (= (and b!6968651 c!1291943) b!6968650))

(assert (= (and b!6968651 (not c!1291943)) b!6968652))

(assert (= (and b!6968652 c!1291940) b!6968648))

(assert (= (and b!6968652 (not c!1291940)) b!6968647))

(assert (= (and b!6968648 (not res!2842744)) b!6968646))

(assert (= (and b!6968647 c!1291941) b!6968653))

(assert (= (and b!6968647 (not c!1291941)) b!6968645))

(assert (= (and b!6968653 (not res!2842743)) b!6968655))

(assert (= (or b!6968655 b!6968645) bm!632614))

(assert (= (or b!6968654 b!6968653) bm!632613))

(declare-fun m!7659056 () Bool)

(assert (=> b!6968646 m!7659056))

(assert (=> bm!632613 m!7658310))

(declare-fun m!7659058 () Bool)

(assert (=> b!6968648 m!7659058))

(declare-fun m!7659060 () Bool)

(assert (=> bm!632614 m!7659060))

(assert (=> b!6967254 d!2170995))

(declare-fun e!4189173 () Bool)

(assert (=> b!6967380 (= tp!1921731 e!4189173)))

(declare-fun b!6968659 () Bool)

(declare-fun tp!1922625 () Bool)

(declare-fun tp!1922624 () Bool)

(assert (=> b!6968659 (= e!4189173 (and tp!1922625 tp!1922624))))

(declare-fun b!6968657 () Bool)

(declare-fun tp!1922622 () Bool)

(declare-fun tp!1922621 () Bool)

(assert (=> b!6968657 (= e!4189173 (and tp!1922622 tp!1922621))))

(declare-fun b!6968656 () Bool)

(assert (=> b!6968656 (= e!4189173 tp_is_empty!43463)))

(declare-fun b!6968658 () Bool)

(declare-fun tp!1922623 () Bool)

(assert (=> b!6968658 (= e!4189173 tp!1922623)))

(assert (= (and b!6967380 ((_ is ElementMatch!17119) (regOne!34751 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968656))

(assert (= (and b!6967380 ((_ is Concat!25964) (regOne!34751 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968657))

(assert (= (and b!6967380 ((_ is Star!17119) (regOne!34751 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968658))

(assert (= (and b!6967380 ((_ is Union!17119) (regOne!34751 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968659))

(declare-fun e!4189174 () Bool)

(assert (=> b!6967380 (= tp!1921730 e!4189174)))

(declare-fun b!6968663 () Bool)

(declare-fun tp!1922630 () Bool)

(declare-fun tp!1922629 () Bool)

(assert (=> b!6968663 (= e!4189174 (and tp!1922630 tp!1922629))))

(declare-fun b!6968661 () Bool)

(declare-fun tp!1922627 () Bool)

(declare-fun tp!1922626 () Bool)

(assert (=> b!6968661 (= e!4189174 (and tp!1922627 tp!1922626))))

(declare-fun b!6968660 () Bool)

(assert (=> b!6968660 (= e!4189174 tp_is_empty!43463)))

(declare-fun b!6968662 () Bool)

(declare-fun tp!1922628 () Bool)

(assert (=> b!6968662 (= e!4189174 tp!1922628)))

(assert (= (and b!6967380 ((_ is ElementMatch!17119) (regTwo!34751 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968660))

(assert (= (and b!6967380 ((_ is Concat!25964) (regTwo!34751 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968661))

(assert (= (and b!6967380 ((_ is Star!17119) (regTwo!34751 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968662))

(assert (= (and b!6967380 ((_ is Union!17119) (regTwo!34751 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968663))

(declare-fun e!4189175 () Bool)

(assert (=> b!6967371 (= tp!1921719 e!4189175)))

(declare-fun b!6968667 () Bool)

(declare-fun tp!1922635 () Bool)

(declare-fun tp!1922634 () Bool)

(assert (=> b!6968667 (= e!4189175 (and tp!1922635 tp!1922634))))

(declare-fun b!6968665 () Bool)

(declare-fun tp!1922632 () Bool)

(declare-fun tp!1922631 () Bool)

(assert (=> b!6968665 (= e!4189175 (and tp!1922632 tp!1922631))))

(declare-fun b!6968664 () Bool)

(assert (=> b!6968664 (= e!4189175 tp_is_empty!43463)))

(declare-fun b!6968666 () Bool)

(declare-fun tp!1922633 () Bool)

(assert (=> b!6968666 (= e!4189175 tp!1922633)))

(assert (= (and b!6967371 ((_ is ElementMatch!17119) (reg!17448 (regTwo!34750 (h!73243 l!9142))))) b!6968664))

(assert (= (and b!6967371 ((_ is Concat!25964) (reg!17448 (regTwo!34750 (h!73243 l!9142))))) b!6968665))

(assert (= (and b!6967371 ((_ is Star!17119) (reg!17448 (regTwo!34750 (h!73243 l!9142))))) b!6968666))

(assert (= (and b!6967371 ((_ is Union!17119) (reg!17448 (regTwo!34750 (h!73243 l!9142))))) b!6968667))

(declare-fun e!4189176 () Bool)

(assert (=> b!6967362 (= tp!1921708 e!4189176)))

(declare-fun b!6968671 () Bool)

(declare-fun tp!1922640 () Bool)

(declare-fun tp!1922639 () Bool)

(assert (=> b!6968671 (= e!4189176 (and tp!1922640 tp!1922639))))

(declare-fun b!6968669 () Bool)

(declare-fun tp!1922637 () Bool)

(declare-fun tp!1922636 () Bool)

(assert (=> b!6968669 (= e!4189176 (and tp!1922637 tp!1922636))))

(declare-fun b!6968668 () Bool)

(assert (=> b!6968668 (= e!4189176 tp_is_empty!43463)))

(declare-fun b!6968670 () Bool)

(declare-fun tp!1922638 () Bool)

(assert (=> b!6968670 (= e!4189176 tp!1922638)))

(assert (= (and b!6967362 ((_ is ElementMatch!17119) (regOne!34750 (reg!17448 (h!73243 l!9142))))) b!6968668))

(assert (= (and b!6967362 ((_ is Concat!25964) (regOne!34750 (reg!17448 (h!73243 l!9142))))) b!6968669))

(assert (= (and b!6967362 ((_ is Star!17119) (regOne!34750 (reg!17448 (h!73243 l!9142))))) b!6968670))

(assert (= (and b!6967362 ((_ is Union!17119) (regOne!34750 (reg!17448 (h!73243 l!9142))))) b!6968671))

(declare-fun e!4189177 () Bool)

(assert (=> b!6967362 (= tp!1921707 e!4189177)))

(declare-fun b!6968675 () Bool)

(declare-fun tp!1922645 () Bool)

(declare-fun tp!1922644 () Bool)

(assert (=> b!6968675 (= e!4189177 (and tp!1922645 tp!1922644))))

(declare-fun b!6968673 () Bool)

(declare-fun tp!1922642 () Bool)

(declare-fun tp!1922641 () Bool)

(assert (=> b!6968673 (= e!4189177 (and tp!1922642 tp!1922641))))

(declare-fun b!6968672 () Bool)

(assert (=> b!6968672 (= e!4189177 tp_is_empty!43463)))

(declare-fun b!6968674 () Bool)

(declare-fun tp!1922643 () Bool)

(assert (=> b!6968674 (= e!4189177 tp!1922643)))

(assert (= (and b!6967362 ((_ is ElementMatch!17119) (regTwo!34750 (reg!17448 (h!73243 l!9142))))) b!6968672))

(assert (= (and b!6967362 ((_ is Concat!25964) (regTwo!34750 (reg!17448 (h!73243 l!9142))))) b!6968673))

(assert (= (and b!6967362 ((_ is Star!17119) (regTwo!34750 (reg!17448 (h!73243 l!9142))))) b!6968674))

(assert (= (and b!6967362 ((_ is Union!17119) (regTwo!34750 (reg!17448 (h!73243 l!9142))))) b!6968675))

(declare-fun e!4189178 () Bool)

(assert (=> b!6967457 (= tp!1921827 e!4189178)))

(declare-fun b!6968679 () Bool)

(declare-fun tp!1922650 () Bool)

(declare-fun tp!1922649 () Bool)

(assert (=> b!6968679 (= e!4189178 (and tp!1922650 tp!1922649))))

(declare-fun b!6968677 () Bool)

(declare-fun tp!1922647 () Bool)

(declare-fun tp!1922646 () Bool)

(assert (=> b!6968677 (= e!4189178 (and tp!1922647 tp!1922646))))

(declare-fun b!6968676 () Bool)

(assert (=> b!6968676 (= e!4189178 tp_is_empty!43463)))

(declare-fun b!6968678 () Bool)

(declare-fun tp!1922648 () Bool)

(assert (=> b!6968678 (= e!4189178 tp!1922648)))

(assert (= (and b!6967457 ((_ is ElementMatch!17119) (regOne!34751 (regOne!34751 (regTwo!34750 r!13765))))) b!6968676))

(assert (= (and b!6967457 ((_ is Concat!25964) (regOne!34751 (regOne!34751 (regTwo!34750 r!13765))))) b!6968677))

(assert (= (and b!6967457 ((_ is Star!17119) (regOne!34751 (regOne!34751 (regTwo!34750 r!13765))))) b!6968678))

(assert (= (and b!6967457 ((_ is Union!17119) (regOne!34751 (regOne!34751 (regTwo!34750 r!13765))))) b!6968679))

(declare-fun e!4189179 () Bool)

(assert (=> b!6967457 (= tp!1921826 e!4189179)))

(declare-fun b!6968683 () Bool)

(declare-fun tp!1922655 () Bool)

(declare-fun tp!1922654 () Bool)

(assert (=> b!6968683 (= e!4189179 (and tp!1922655 tp!1922654))))

(declare-fun b!6968681 () Bool)

(declare-fun tp!1922652 () Bool)

(declare-fun tp!1922651 () Bool)

(assert (=> b!6968681 (= e!4189179 (and tp!1922652 tp!1922651))))

(declare-fun b!6968680 () Bool)

(assert (=> b!6968680 (= e!4189179 tp_is_empty!43463)))

(declare-fun b!6968682 () Bool)

(declare-fun tp!1922653 () Bool)

(assert (=> b!6968682 (= e!4189179 tp!1922653)))

(assert (= (and b!6967457 ((_ is ElementMatch!17119) (regTwo!34751 (regOne!34751 (regTwo!34750 r!13765))))) b!6968680))

(assert (= (and b!6967457 ((_ is Concat!25964) (regTwo!34751 (regOne!34751 (regTwo!34750 r!13765))))) b!6968681))

(assert (= (and b!6967457 ((_ is Star!17119) (regTwo!34751 (regOne!34751 (regTwo!34750 r!13765))))) b!6968682))

(assert (= (and b!6967457 ((_ is Union!17119) (regTwo!34751 (regOne!34751 (regTwo!34750 r!13765))))) b!6968683))

(declare-fun e!4189180 () Bool)

(assert (=> b!6967347 (= tp!1921689 e!4189180)))

(declare-fun b!6968687 () Bool)

(declare-fun tp!1922660 () Bool)

(declare-fun tp!1922659 () Bool)

(assert (=> b!6968687 (= e!4189180 (and tp!1922660 tp!1922659))))

(declare-fun b!6968685 () Bool)

(declare-fun tp!1922657 () Bool)

(declare-fun tp!1922656 () Bool)

(assert (=> b!6968685 (= e!4189180 (and tp!1922657 tp!1922656))))

(declare-fun b!6968684 () Bool)

(assert (=> b!6968684 (= e!4189180 tp_is_empty!43463)))

(declare-fun b!6968686 () Bool)

(declare-fun tp!1922658 () Bool)

(assert (=> b!6968686 (= e!4189180 tp!1922658)))

(assert (= (and b!6967347 ((_ is ElementMatch!17119) (regOne!34751 (regTwo!34751 (reg!17448 r!13765))))) b!6968684))

(assert (= (and b!6967347 ((_ is Concat!25964) (regOne!34751 (regTwo!34751 (reg!17448 r!13765))))) b!6968685))

(assert (= (and b!6967347 ((_ is Star!17119) (regOne!34751 (regTwo!34751 (reg!17448 r!13765))))) b!6968686))

(assert (= (and b!6967347 ((_ is Union!17119) (regOne!34751 (regTwo!34751 (reg!17448 r!13765))))) b!6968687))

(declare-fun e!4189181 () Bool)

(assert (=> b!6967347 (= tp!1921688 e!4189181)))

(declare-fun b!6968691 () Bool)

(declare-fun tp!1922665 () Bool)

(declare-fun tp!1922664 () Bool)

(assert (=> b!6968691 (= e!4189181 (and tp!1922665 tp!1922664))))

(declare-fun b!6968689 () Bool)

(declare-fun tp!1922662 () Bool)

(declare-fun tp!1922661 () Bool)

(assert (=> b!6968689 (= e!4189181 (and tp!1922662 tp!1922661))))

(declare-fun b!6968688 () Bool)

(assert (=> b!6968688 (= e!4189181 tp_is_empty!43463)))

(declare-fun b!6968690 () Bool)

(declare-fun tp!1922663 () Bool)

(assert (=> b!6968690 (= e!4189181 tp!1922663)))

(assert (= (and b!6967347 ((_ is ElementMatch!17119) (regTwo!34751 (regTwo!34751 (reg!17448 r!13765))))) b!6968688))

(assert (= (and b!6967347 ((_ is Concat!25964) (regTwo!34751 (regTwo!34751 (reg!17448 r!13765))))) b!6968689))

(assert (= (and b!6967347 ((_ is Star!17119) (regTwo!34751 (regTwo!34751 (reg!17448 r!13765))))) b!6968690))

(assert (= (and b!6967347 ((_ is Union!17119) (regTwo!34751 (regTwo!34751 (reg!17448 r!13765))))) b!6968691))

(declare-fun e!4189182 () Bool)

(assert (=> b!6967448 (= tp!1921815 e!4189182)))

(declare-fun b!6968695 () Bool)

(declare-fun tp!1922670 () Bool)

(declare-fun tp!1922669 () Bool)

(assert (=> b!6968695 (= e!4189182 (and tp!1922670 tp!1922669))))

(declare-fun b!6968693 () Bool)

(declare-fun tp!1922667 () Bool)

(declare-fun tp!1922666 () Bool)

(assert (=> b!6968693 (= e!4189182 (and tp!1922667 tp!1922666))))

(declare-fun b!6968692 () Bool)

(assert (=> b!6968692 (= e!4189182 tp_is_empty!43463)))

(declare-fun b!6968694 () Bool)

(declare-fun tp!1922668 () Bool)

(assert (=> b!6968694 (= e!4189182 tp!1922668)))

(assert (= (and b!6967448 ((_ is ElementMatch!17119) (reg!17448 (regOne!34751 (regOne!34750 r!13765))))) b!6968692))

(assert (= (and b!6967448 ((_ is Concat!25964) (reg!17448 (regOne!34751 (regOne!34750 r!13765))))) b!6968693))

(assert (= (and b!6967448 ((_ is Star!17119) (reg!17448 (regOne!34751 (regOne!34750 r!13765))))) b!6968694))

(assert (= (and b!6967448 ((_ is Union!17119) (reg!17448 (regOne!34751 (regOne!34750 r!13765))))) b!6968695))

(declare-fun e!4189183 () Bool)

(assert (=> b!6967432 (= tp!1921796 e!4189183)))

(declare-fun b!6968699 () Bool)

(declare-fun tp!1922675 () Bool)

(declare-fun tp!1922674 () Bool)

(assert (=> b!6968699 (= e!4189183 (and tp!1922675 tp!1922674))))

(declare-fun b!6968697 () Bool)

(declare-fun tp!1922672 () Bool)

(declare-fun tp!1922671 () Bool)

(assert (=> b!6968697 (= e!4189183 (and tp!1922672 tp!1922671))))

(declare-fun b!6968696 () Bool)

(assert (=> b!6968696 (= e!4189183 tp_is_empty!43463)))

(declare-fun b!6968698 () Bool)

(declare-fun tp!1922673 () Bool)

(assert (=> b!6968698 (= e!4189183 tp!1922673)))

(assert (= (and b!6967432 ((_ is ElementMatch!17119) (regOne!34751 (regTwo!34750 (regOne!34750 r!13765))))) b!6968696))

(assert (= (and b!6967432 ((_ is Concat!25964) (regOne!34751 (regTwo!34750 (regOne!34750 r!13765))))) b!6968697))

(assert (= (and b!6967432 ((_ is Star!17119) (regOne!34751 (regTwo!34750 (regOne!34750 r!13765))))) b!6968698))

(assert (= (and b!6967432 ((_ is Union!17119) (regOne!34751 (regTwo!34750 (regOne!34750 r!13765))))) b!6968699))

(declare-fun e!4189184 () Bool)

(assert (=> b!6967432 (= tp!1921795 e!4189184)))

(declare-fun b!6968703 () Bool)

(declare-fun tp!1922680 () Bool)

(declare-fun tp!1922679 () Bool)

(assert (=> b!6968703 (= e!4189184 (and tp!1922680 tp!1922679))))

(declare-fun b!6968701 () Bool)

(declare-fun tp!1922677 () Bool)

(declare-fun tp!1922676 () Bool)

(assert (=> b!6968701 (= e!4189184 (and tp!1922677 tp!1922676))))

(declare-fun b!6968700 () Bool)

(assert (=> b!6968700 (= e!4189184 tp_is_empty!43463)))

(declare-fun b!6968702 () Bool)

(declare-fun tp!1922678 () Bool)

(assert (=> b!6968702 (= e!4189184 tp!1922678)))

(assert (= (and b!6967432 ((_ is ElementMatch!17119) (regTwo!34751 (regTwo!34750 (regOne!34750 r!13765))))) b!6968700))

(assert (= (and b!6967432 ((_ is Concat!25964) (regTwo!34751 (regTwo!34750 (regOne!34750 r!13765))))) b!6968701))

(assert (= (and b!6967432 ((_ is Star!17119) (regTwo!34751 (regTwo!34750 (regOne!34750 r!13765))))) b!6968702))

(assert (= (and b!6967432 ((_ is Union!17119) (regTwo!34751 (regTwo!34750 (regOne!34750 r!13765))))) b!6968703))

(declare-fun e!4189185 () Bool)

(assert (=> b!6967423 (= tp!1921784 e!4189185)))

(declare-fun b!6968707 () Bool)

(declare-fun tp!1922685 () Bool)

(declare-fun tp!1922684 () Bool)

(assert (=> b!6968707 (= e!4189185 (and tp!1922685 tp!1922684))))

(declare-fun b!6968705 () Bool)

(declare-fun tp!1922682 () Bool)

(declare-fun tp!1922681 () Bool)

(assert (=> b!6968705 (= e!4189185 (and tp!1922682 tp!1922681))))

(declare-fun b!6968704 () Bool)

(assert (=> b!6968704 (= e!4189185 tp_is_empty!43463)))

(declare-fun b!6968706 () Bool)

(declare-fun tp!1922683 () Bool)

(assert (=> b!6968706 (= e!4189185 tp!1922683)))

(assert (= (and b!6967423 ((_ is ElementMatch!17119) (reg!17448 (reg!17448 (regOne!34750 r!13765))))) b!6968704))

(assert (= (and b!6967423 ((_ is Concat!25964) (reg!17448 (reg!17448 (regOne!34750 r!13765))))) b!6968705))

(assert (= (and b!6967423 ((_ is Star!17119) (reg!17448 (reg!17448 (regOne!34750 r!13765))))) b!6968706))

(assert (= (and b!6967423 ((_ is Union!17119) (reg!17448 (reg!17448 (regOne!34750 r!13765))))) b!6968707))

(declare-fun e!4189186 () Bool)

(assert (=> b!6967414 (= tp!1921773 e!4189186)))

(declare-fun b!6968711 () Bool)

(declare-fun tp!1922690 () Bool)

(declare-fun tp!1922689 () Bool)

(assert (=> b!6968711 (= e!4189186 (and tp!1922690 tp!1922689))))

(declare-fun b!6968709 () Bool)

(declare-fun tp!1922687 () Bool)

(declare-fun tp!1922686 () Bool)

(assert (=> b!6968709 (= e!4189186 (and tp!1922687 tp!1922686))))

(declare-fun b!6968708 () Bool)

(assert (=> b!6968708 (= e!4189186 tp_is_empty!43463)))

(declare-fun b!6968710 () Bool)

(declare-fun tp!1922688 () Bool)

(assert (=> b!6968710 (= e!4189186 tp!1922688)))

(assert (= (and b!6967414 ((_ is ElementMatch!17119) (regOne!34750 (regOne!34751 (regOne!34751 r!13765))))) b!6968708))

(assert (= (and b!6967414 ((_ is Concat!25964) (regOne!34750 (regOne!34751 (regOne!34751 r!13765))))) b!6968709))

(assert (= (and b!6967414 ((_ is Star!17119) (regOne!34750 (regOne!34751 (regOne!34751 r!13765))))) b!6968710))

(assert (= (and b!6967414 ((_ is Union!17119) (regOne!34750 (regOne!34751 (regOne!34751 r!13765))))) b!6968711))

(declare-fun e!4189187 () Bool)

(assert (=> b!6967414 (= tp!1921772 e!4189187)))

(declare-fun b!6968715 () Bool)

(declare-fun tp!1922695 () Bool)

(declare-fun tp!1922694 () Bool)

(assert (=> b!6968715 (= e!4189187 (and tp!1922695 tp!1922694))))

(declare-fun b!6968713 () Bool)

(declare-fun tp!1922692 () Bool)

(declare-fun tp!1922691 () Bool)

(assert (=> b!6968713 (= e!4189187 (and tp!1922692 tp!1922691))))

(declare-fun b!6968712 () Bool)

(assert (=> b!6968712 (= e!4189187 tp_is_empty!43463)))

(declare-fun b!6968714 () Bool)

(declare-fun tp!1922693 () Bool)

(assert (=> b!6968714 (= e!4189187 tp!1922693)))

(assert (= (and b!6967414 ((_ is ElementMatch!17119) (regTwo!34750 (regOne!34751 (regOne!34751 r!13765))))) b!6968712))

(assert (= (and b!6967414 ((_ is Concat!25964) (regTwo!34750 (regOne!34751 (regOne!34751 r!13765))))) b!6968713))

(assert (= (and b!6967414 ((_ is Star!17119) (regTwo!34750 (regOne!34751 (regOne!34751 r!13765))))) b!6968714))

(assert (= (and b!6967414 ((_ is Union!17119) (regTwo!34750 (regOne!34751 (regOne!34751 r!13765))))) b!6968715))

(declare-fun e!4189188 () Bool)

(assert (=> b!6967400 (= tp!1921756 e!4189188)))

(declare-fun b!6968719 () Bool)

(declare-fun tp!1922700 () Bool)

(declare-fun tp!1922699 () Bool)

(assert (=> b!6968719 (= e!4189188 (and tp!1922700 tp!1922699))))

(declare-fun b!6968717 () Bool)

(declare-fun tp!1922697 () Bool)

(declare-fun tp!1922696 () Bool)

(assert (=> b!6968717 (= e!4189188 (and tp!1922697 tp!1922696))))

(declare-fun b!6968716 () Bool)

(assert (=> b!6968716 (= e!4189188 tp_is_empty!43463)))

(declare-fun b!6968718 () Bool)

(declare-fun tp!1922698 () Bool)

(assert (=> b!6968718 (= e!4189188 tp!1922698)))

(assert (= (and b!6967400 ((_ is ElementMatch!17119) (regOne!34751 (regTwo!34750 (regOne!34751 r!13765))))) b!6968716))

(assert (= (and b!6967400 ((_ is Concat!25964) (regOne!34751 (regTwo!34750 (regOne!34751 r!13765))))) b!6968717))

(assert (= (and b!6967400 ((_ is Star!17119) (regOne!34751 (regTwo!34750 (regOne!34751 r!13765))))) b!6968718))

(assert (= (and b!6967400 ((_ is Union!17119) (regOne!34751 (regTwo!34750 (regOne!34751 r!13765))))) b!6968719))

(declare-fun e!4189189 () Bool)

(assert (=> b!6967400 (= tp!1921755 e!4189189)))

(declare-fun b!6968723 () Bool)

(declare-fun tp!1922705 () Bool)

(declare-fun tp!1922704 () Bool)

(assert (=> b!6968723 (= e!4189189 (and tp!1922705 tp!1922704))))

(declare-fun b!6968721 () Bool)

(declare-fun tp!1922702 () Bool)

(declare-fun tp!1922701 () Bool)

(assert (=> b!6968721 (= e!4189189 (and tp!1922702 tp!1922701))))

(declare-fun b!6968720 () Bool)

(assert (=> b!6968720 (= e!4189189 tp_is_empty!43463)))

(declare-fun b!6968722 () Bool)

(declare-fun tp!1922703 () Bool)

(assert (=> b!6968722 (= e!4189189 tp!1922703)))

(assert (= (and b!6967400 ((_ is ElementMatch!17119) (regTwo!34751 (regTwo!34750 (regOne!34751 r!13765))))) b!6968720))

(assert (= (and b!6967400 ((_ is Concat!25964) (regTwo!34751 (regTwo!34750 (regOne!34751 r!13765))))) b!6968721))

(assert (= (and b!6967400 ((_ is Star!17119) (regTwo!34751 (regTwo!34750 (regOne!34751 r!13765))))) b!6968722))

(assert (= (and b!6967400 ((_ is Union!17119) (regTwo!34751 (regTwo!34750 (regOne!34751 r!13765))))) b!6968723))

(declare-fun e!4189190 () Bool)

(assert (=> b!6967391 (= tp!1921744 e!4189190)))

(declare-fun b!6968727 () Bool)

(declare-fun tp!1922710 () Bool)

(declare-fun tp!1922709 () Bool)

(assert (=> b!6968727 (= e!4189190 (and tp!1922710 tp!1922709))))

(declare-fun b!6968725 () Bool)

(declare-fun tp!1922707 () Bool)

(declare-fun tp!1922706 () Bool)

(assert (=> b!6968725 (= e!4189190 (and tp!1922707 tp!1922706))))

(declare-fun b!6968724 () Bool)

(assert (=> b!6968724 (= e!4189190 tp_is_empty!43463)))

(declare-fun b!6968726 () Bool)

(declare-fun tp!1922708 () Bool)

(assert (=> b!6968726 (= e!4189190 tp!1922708)))

(assert (= (and b!6967391 ((_ is ElementMatch!17119) (reg!17448 (reg!17448 (regOne!34751 r!13765))))) b!6968724))

(assert (= (and b!6967391 ((_ is Concat!25964) (reg!17448 (reg!17448 (regOne!34751 r!13765))))) b!6968725))

(assert (= (and b!6967391 ((_ is Star!17119) (reg!17448 (reg!17448 (regOne!34751 r!13765))))) b!6968726))

(assert (= (and b!6967391 ((_ is Union!17119) (reg!17448 (reg!17448 (regOne!34751 r!13765))))) b!6968727))

(declare-fun e!4189191 () Bool)

(assert (=> b!6967382 (= tp!1921733 e!4189191)))

(declare-fun b!6968731 () Bool)

(declare-fun tp!1922715 () Bool)

(declare-fun tp!1922714 () Bool)

(assert (=> b!6968731 (= e!4189191 (and tp!1922715 tp!1922714))))

(declare-fun b!6968729 () Bool)

(declare-fun tp!1922712 () Bool)

(declare-fun tp!1922711 () Bool)

(assert (=> b!6968729 (= e!4189191 (and tp!1922712 tp!1922711))))

(declare-fun b!6968728 () Bool)

(assert (=> b!6968728 (= e!4189191 tp_is_empty!43463)))

(declare-fun b!6968730 () Bool)

(declare-fun tp!1922713 () Bool)

(assert (=> b!6968730 (= e!4189191 tp!1922713)))

(assert (= (and b!6967382 ((_ is ElementMatch!17119) (regOne!34750 (regOne!34751 (h!73243 l!9142))))) b!6968728))

(assert (= (and b!6967382 ((_ is Concat!25964) (regOne!34750 (regOne!34751 (h!73243 l!9142))))) b!6968729))

(assert (= (and b!6967382 ((_ is Star!17119) (regOne!34750 (regOne!34751 (h!73243 l!9142))))) b!6968730))

(assert (= (and b!6967382 ((_ is Union!17119) (regOne!34750 (regOne!34751 (h!73243 l!9142))))) b!6968731))

(declare-fun e!4189192 () Bool)

(assert (=> b!6967382 (= tp!1921732 e!4189192)))

(declare-fun b!6968735 () Bool)

(declare-fun tp!1922720 () Bool)

(declare-fun tp!1922719 () Bool)

(assert (=> b!6968735 (= e!4189192 (and tp!1922720 tp!1922719))))

(declare-fun b!6968733 () Bool)

(declare-fun tp!1922717 () Bool)

(declare-fun tp!1922716 () Bool)

(assert (=> b!6968733 (= e!4189192 (and tp!1922717 tp!1922716))))

(declare-fun b!6968732 () Bool)

(assert (=> b!6968732 (= e!4189192 tp_is_empty!43463)))

(declare-fun b!6968734 () Bool)

(declare-fun tp!1922718 () Bool)

(assert (=> b!6968734 (= e!4189192 tp!1922718)))

(assert (= (and b!6967382 ((_ is ElementMatch!17119) (regTwo!34750 (regOne!34751 (h!73243 l!9142))))) b!6968732))

(assert (= (and b!6967382 ((_ is Concat!25964) (regTwo!34750 (regOne!34751 (h!73243 l!9142))))) b!6968733))

(assert (= (and b!6967382 ((_ is Star!17119) (regTwo!34750 (regOne!34751 (h!73243 l!9142))))) b!6968734))

(assert (= (and b!6967382 ((_ is Union!17119) (regTwo!34750 (regOne!34751 (h!73243 l!9142))))) b!6968735))

(declare-fun e!4189193 () Bool)

(assert (=> b!6967459 (= tp!1921829 e!4189193)))

(declare-fun b!6968739 () Bool)

(declare-fun tp!1922725 () Bool)

(declare-fun tp!1922724 () Bool)

(assert (=> b!6968739 (= e!4189193 (and tp!1922725 tp!1922724))))

(declare-fun b!6968737 () Bool)

(declare-fun tp!1922722 () Bool)

(declare-fun tp!1922721 () Bool)

(assert (=> b!6968737 (= e!4189193 (and tp!1922722 tp!1922721))))

(declare-fun b!6968736 () Bool)

(assert (=> b!6968736 (= e!4189193 tp_is_empty!43463)))

(declare-fun b!6968738 () Bool)

(declare-fun tp!1922723 () Bool)

(assert (=> b!6968738 (= e!4189193 tp!1922723)))

(assert (= (and b!6967459 ((_ is ElementMatch!17119) (regOne!34750 (regTwo!34751 (regTwo!34750 r!13765))))) b!6968736))

(assert (= (and b!6967459 ((_ is Concat!25964) (regOne!34750 (regTwo!34751 (regTwo!34750 r!13765))))) b!6968737))

(assert (= (and b!6967459 ((_ is Star!17119) (regOne!34750 (regTwo!34751 (regTwo!34750 r!13765))))) b!6968738))

(assert (= (and b!6967459 ((_ is Union!17119) (regOne!34750 (regTwo!34751 (regTwo!34750 r!13765))))) b!6968739))

(declare-fun e!4189194 () Bool)

(assert (=> b!6967459 (= tp!1921828 e!4189194)))

(declare-fun b!6968743 () Bool)

(declare-fun tp!1922730 () Bool)

(declare-fun tp!1922729 () Bool)

(assert (=> b!6968743 (= e!4189194 (and tp!1922730 tp!1922729))))

(declare-fun b!6968741 () Bool)

(declare-fun tp!1922727 () Bool)

(declare-fun tp!1922726 () Bool)

(assert (=> b!6968741 (= e!4189194 (and tp!1922727 tp!1922726))))

(declare-fun b!6968740 () Bool)

(assert (=> b!6968740 (= e!4189194 tp_is_empty!43463)))

(declare-fun b!6968742 () Bool)

(declare-fun tp!1922728 () Bool)

(assert (=> b!6968742 (= e!4189194 tp!1922728)))

(assert (= (and b!6967459 ((_ is ElementMatch!17119) (regTwo!34750 (regTwo!34751 (regTwo!34750 r!13765))))) b!6968740))

(assert (= (and b!6967459 ((_ is Concat!25964) (regTwo!34750 (regTwo!34751 (regTwo!34750 r!13765))))) b!6968741))

(assert (= (and b!6967459 ((_ is Star!17119) (regTwo!34750 (regTwo!34751 (regTwo!34750 r!13765))))) b!6968742))

(assert (= (and b!6967459 ((_ is Union!17119) (regTwo!34750 (regTwo!34751 (regTwo!34750 r!13765))))) b!6968743))

(declare-fun e!4189195 () Bool)

(assert (=> b!6967349 (= tp!1921691 e!4189195)))

(declare-fun b!6968747 () Bool)

(declare-fun tp!1922735 () Bool)

(declare-fun tp!1922734 () Bool)

(assert (=> b!6968747 (= e!4189195 (and tp!1922735 tp!1922734))))

(declare-fun b!6968745 () Bool)

(declare-fun tp!1922732 () Bool)

(declare-fun tp!1922731 () Bool)

(assert (=> b!6968745 (= e!4189195 (and tp!1922732 tp!1922731))))

(declare-fun b!6968744 () Bool)

(assert (=> b!6968744 (= e!4189195 tp_is_empty!43463)))

(declare-fun b!6968746 () Bool)

(declare-fun tp!1922733 () Bool)

(assert (=> b!6968746 (= e!4189195 tp!1922733)))

(assert (= (and b!6967349 ((_ is ElementMatch!17119) (regOne!34750 (h!73243 (t!380662 l!9142))))) b!6968744))

(assert (= (and b!6967349 ((_ is Concat!25964) (regOne!34750 (h!73243 (t!380662 l!9142))))) b!6968745))

(assert (= (and b!6967349 ((_ is Star!17119) (regOne!34750 (h!73243 (t!380662 l!9142))))) b!6968746))

(assert (= (and b!6967349 ((_ is Union!17119) (regOne!34750 (h!73243 (t!380662 l!9142))))) b!6968747))

(declare-fun e!4189196 () Bool)

(assert (=> b!6967349 (= tp!1921690 e!4189196)))

(declare-fun b!6968751 () Bool)

(declare-fun tp!1922740 () Bool)

(declare-fun tp!1922739 () Bool)

(assert (=> b!6968751 (= e!4189196 (and tp!1922740 tp!1922739))))

(declare-fun b!6968749 () Bool)

(declare-fun tp!1922737 () Bool)

(declare-fun tp!1922736 () Bool)

(assert (=> b!6968749 (= e!4189196 (and tp!1922737 tp!1922736))))

(declare-fun b!6968748 () Bool)

(assert (=> b!6968748 (= e!4189196 tp_is_empty!43463)))

(declare-fun b!6968750 () Bool)

(declare-fun tp!1922738 () Bool)

(assert (=> b!6968750 (= e!4189196 tp!1922738)))

(assert (= (and b!6967349 ((_ is ElementMatch!17119) (regTwo!34750 (h!73243 (t!380662 l!9142))))) b!6968748))

(assert (= (and b!6967349 ((_ is Concat!25964) (regTwo!34750 (h!73243 (t!380662 l!9142))))) b!6968749))

(assert (= (and b!6967349 ((_ is Star!17119) (regTwo!34750 (h!73243 (t!380662 l!9142))))) b!6968750))

(assert (= (and b!6967349 ((_ is Union!17119) (regTwo!34750 (h!73243 (t!380662 l!9142))))) b!6968751))

(declare-fun e!4189197 () Bool)

(assert (=> b!6967443 (= tp!1921809 e!4189197)))

(declare-fun b!6968755 () Bool)

(declare-fun tp!1922745 () Bool)

(declare-fun tp!1922744 () Bool)

(assert (=> b!6968755 (= e!4189197 (and tp!1922745 tp!1922744))))

(declare-fun b!6968753 () Bool)

(declare-fun tp!1922742 () Bool)

(declare-fun tp!1922741 () Bool)

(assert (=> b!6968753 (= e!4189197 (and tp!1922742 tp!1922741))))

(declare-fun b!6968752 () Bool)

(assert (=> b!6968752 (= e!4189197 tp_is_empty!43463)))

(declare-fun b!6968754 () Bool)

(declare-fun tp!1922743 () Bool)

(assert (=> b!6968754 (= e!4189197 tp!1922743)))

(assert (= (and b!6967443 ((_ is ElementMatch!17119) (reg!17448 (reg!17448 (regTwo!34750 r!13765))))) b!6968752))

(assert (= (and b!6967443 ((_ is Concat!25964) (reg!17448 (reg!17448 (regTwo!34750 r!13765))))) b!6968753))

(assert (= (and b!6967443 ((_ is Star!17119) (reg!17448 (reg!17448 (regTwo!34750 r!13765))))) b!6968754))

(assert (= (and b!6967443 ((_ is Union!17119) (reg!17448 (reg!17448 (regTwo!34750 r!13765))))) b!6968755))

(declare-fun e!4189198 () Bool)

(assert (=> b!6967434 (= tp!1921798 e!4189198)))

(declare-fun b!6968759 () Bool)

(declare-fun tp!1922750 () Bool)

(declare-fun tp!1922749 () Bool)

(assert (=> b!6968759 (= e!4189198 (and tp!1922750 tp!1922749))))

(declare-fun b!6968757 () Bool)

(declare-fun tp!1922747 () Bool)

(declare-fun tp!1922746 () Bool)

(assert (=> b!6968757 (= e!4189198 (and tp!1922747 tp!1922746))))

(declare-fun b!6968756 () Bool)

(assert (=> b!6968756 (= e!4189198 tp_is_empty!43463)))

(declare-fun b!6968758 () Bool)

(declare-fun tp!1922748 () Bool)

(assert (=> b!6968758 (= e!4189198 tp!1922748)))

(assert (= (and b!6967434 ((_ is ElementMatch!17119) (regOne!34750 (regOne!34751 (regTwo!34751 r!13765))))) b!6968756))

(assert (= (and b!6967434 ((_ is Concat!25964) (regOne!34750 (regOne!34751 (regTwo!34751 r!13765))))) b!6968757))

(assert (= (and b!6967434 ((_ is Star!17119) (regOne!34750 (regOne!34751 (regTwo!34751 r!13765))))) b!6968758))

(assert (= (and b!6967434 ((_ is Union!17119) (regOne!34750 (regOne!34751 (regTwo!34751 r!13765))))) b!6968759))

(declare-fun e!4189199 () Bool)

(assert (=> b!6967434 (= tp!1921797 e!4189199)))

(declare-fun b!6968763 () Bool)

(declare-fun tp!1922755 () Bool)

(declare-fun tp!1922754 () Bool)

(assert (=> b!6968763 (= e!4189199 (and tp!1922755 tp!1922754))))

(declare-fun b!6968761 () Bool)

(declare-fun tp!1922752 () Bool)

(declare-fun tp!1922751 () Bool)

(assert (=> b!6968761 (= e!4189199 (and tp!1922752 tp!1922751))))

(declare-fun b!6968760 () Bool)

(assert (=> b!6968760 (= e!4189199 tp_is_empty!43463)))

(declare-fun b!6968762 () Bool)

(declare-fun tp!1922753 () Bool)

(assert (=> b!6968762 (= e!4189199 tp!1922753)))

(assert (= (and b!6967434 ((_ is ElementMatch!17119) (regTwo!34750 (regOne!34751 (regTwo!34751 r!13765))))) b!6968760))

(assert (= (and b!6967434 ((_ is Concat!25964) (regTwo!34750 (regOne!34751 (regTwo!34751 r!13765))))) b!6968761))

(assert (= (and b!6967434 ((_ is Star!17119) (regTwo!34750 (regOne!34751 (regTwo!34751 r!13765))))) b!6968762))

(assert (= (and b!6967434 ((_ is Union!17119) (regTwo!34750 (regOne!34751 (regTwo!34751 r!13765))))) b!6968763))

(declare-fun e!4189200 () Bool)

(assert (=> b!6967368 (= tp!1921716 e!4189200)))

(declare-fun b!6968767 () Bool)

(declare-fun tp!1922760 () Bool)

(declare-fun tp!1922759 () Bool)

(assert (=> b!6968767 (= e!4189200 (and tp!1922760 tp!1922759))))

(declare-fun b!6968765 () Bool)

(declare-fun tp!1922757 () Bool)

(declare-fun tp!1922756 () Bool)

(assert (=> b!6968765 (= e!4189200 (and tp!1922757 tp!1922756))))

(declare-fun b!6968764 () Bool)

(assert (=> b!6968764 (= e!4189200 tp_is_empty!43463)))

(declare-fun b!6968766 () Bool)

(declare-fun tp!1922758 () Bool)

(assert (=> b!6968766 (= e!4189200 tp!1922758)))

(assert (= (and b!6967368 ((_ is ElementMatch!17119) (regOne!34751 (regOne!34750 (h!73243 l!9142))))) b!6968764))

(assert (= (and b!6967368 ((_ is Concat!25964) (regOne!34751 (regOne!34750 (h!73243 l!9142))))) b!6968765))

(assert (= (and b!6967368 ((_ is Star!17119) (regOne!34751 (regOne!34750 (h!73243 l!9142))))) b!6968766))

(assert (= (and b!6967368 ((_ is Union!17119) (regOne!34751 (regOne!34750 (h!73243 l!9142))))) b!6968767))

(declare-fun e!4189201 () Bool)

(assert (=> b!6967368 (= tp!1921715 e!4189201)))

(declare-fun b!6968771 () Bool)

(declare-fun tp!1922765 () Bool)

(declare-fun tp!1922764 () Bool)

(assert (=> b!6968771 (= e!4189201 (and tp!1922765 tp!1922764))))

(declare-fun b!6968769 () Bool)

(declare-fun tp!1922762 () Bool)

(declare-fun tp!1922761 () Bool)

(assert (=> b!6968769 (= e!4189201 (and tp!1922762 tp!1922761))))

(declare-fun b!6968768 () Bool)

(assert (=> b!6968768 (= e!4189201 tp_is_empty!43463)))

(declare-fun b!6968770 () Bool)

(declare-fun tp!1922763 () Bool)

(assert (=> b!6968770 (= e!4189201 tp!1922763)))

(assert (= (and b!6967368 ((_ is ElementMatch!17119) (regTwo!34751 (regOne!34750 (h!73243 l!9142))))) b!6968768))

(assert (= (and b!6967368 ((_ is Concat!25964) (regTwo!34751 (regOne!34750 (h!73243 l!9142))))) b!6968769))

(assert (= (and b!6967368 ((_ is Star!17119) (regTwo!34751 (regOne!34750 (h!73243 l!9142))))) b!6968770))

(assert (= (and b!6967368 ((_ is Union!17119) (regTwo!34751 (regOne!34750 (h!73243 l!9142))))) b!6968771))

(declare-fun e!4189202 () Bool)

(assert (=> b!6967359 (= tp!1921704 e!4189202)))

(declare-fun b!6968775 () Bool)

(declare-fun tp!1922770 () Bool)

(declare-fun tp!1922769 () Bool)

(assert (=> b!6968775 (= e!4189202 (and tp!1922770 tp!1922769))))

(declare-fun b!6968773 () Bool)

(declare-fun tp!1922767 () Bool)

(declare-fun tp!1922766 () Bool)

(assert (=> b!6968773 (= e!4189202 (and tp!1922767 tp!1922766))))

(declare-fun b!6968772 () Bool)

(assert (=> b!6968772 (= e!4189202 tp_is_empty!43463)))

(declare-fun b!6968774 () Bool)

(declare-fun tp!1922768 () Bool)

(assert (=> b!6968774 (= e!4189202 tp!1922768)))

(assert (= (and b!6967359 ((_ is ElementMatch!17119) (reg!17448 (regTwo!34750 (regTwo!34751 r!13765))))) b!6968772))

(assert (= (and b!6967359 ((_ is Concat!25964) (reg!17448 (regTwo!34750 (regTwo!34751 r!13765))))) b!6968773))

(assert (= (and b!6967359 ((_ is Star!17119) (reg!17448 (regTwo!34750 (regTwo!34751 r!13765))))) b!6968774))

(assert (= (and b!6967359 ((_ is Union!17119) (reg!17448 (regTwo!34750 (regTwo!34751 r!13765))))) b!6968775))

(declare-fun b!6968776 () Bool)

(declare-fun e!4189203 () Bool)

(declare-fun tp!1922771 () Bool)

(assert (=> b!6968776 (= e!4189203 (and tp_is_empty!43463 tp!1922771))))

(assert (=> b!6967445 (= tp!1921812 e!4189203)))

(assert (= (and b!6967445 ((_ is Cons!66796) (t!380663 (t!380663 (t!380663 s!9351))))) b!6968776))

(declare-fun e!4189204 () Bool)

(assert (=> b!6967420 (= tp!1921781 e!4189204)))

(declare-fun b!6968780 () Bool)

(declare-fun tp!1922776 () Bool)

(declare-fun tp!1922775 () Bool)

(assert (=> b!6968780 (= e!4189204 (and tp!1922776 tp!1922775))))

(declare-fun b!6968778 () Bool)

(declare-fun tp!1922773 () Bool)

(declare-fun tp!1922772 () Bool)

(assert (=> b!6968778 (= e!4189204 (and tp!1922773 tp!1922772))))

(declare-fun b!6968777 () Bool)

(assert (=> b!6968777 (= e!4189204 tp_is_empty!43463)))

(declare-fun b!6968779 () Bool)

(declare-fun tp!1922774 () Bool)

(assert (=> b!6968779 (= e!4189204 tp!1922774)))

(assert (= (and b!6967420 ((_ is ElementMatch!17119) (regOne!34751 (regTwo!34751 (regOne!34751 r!13765))))) b!6968777))

(assert (= (and b!6967420 ((_ is Concat!25964) (regOne!34751 (regTwo!34751 (regOne!34751 r!13765))))) b!6968778))

(assert (= (and b!6967420 ((_ is Star!17119) (regOne!34751 (regTwo!34751 (regOne!34751 r!13765))))) b!6968779))

(assert (= (and b!6967420 ((_ is Union!17119) (regOne!34751 (regTwo!34751 (regOne!34751 r!13765))))) b!6968780))

(declare-fun e!4189205 () Bool)

(assert (=> b!6967420 (= tp!1921780 e!4189205)))

(declare-fun b!6968784 () Bool)

(declare-fun tp!1922781 () Bool)

(declare-fun tp!1922780 () Bool)

(assert (=> b!6968784 (= e!4189205 (and tp!1922781 tp!1922780))))

(declare-fun b!6968782 () Bool)

(declare-fun tp!1922778 () Bool)

(declare-fun tp!1922777 () Bool)

(assert (=> b!6968782 (= e!4189205 (and tp!1922778 tp!1922777))))

(declare-fun b!6968781 () Bool)

(assert (=> b!6968781 (= e!4189205 tp_is_empty!43463)))

(declare-fun b!6968783 () Bool)

(declare-fun tp!1922779 () Bool)

(assert (=> b!6968783 (= e!4189205 tp!1922779)))

(assert (= (and b!6967420 ((_ is ElementMatch!17119) (regTwo!34751 (regTwo!34751 (regOne!34751 r!13765))))) b!6968781))

(assert (= (and b!6967420 ((_ is Concat!25964) (regTwo!34751 (regTwo!34751 (regOne!34751 r!13765))))) b!6968782))

(assert (= (and b!6967420 ((_ is Star!17119) (regTwo!34751 (regTwo!34751 (regOne!34751 r!13765))))) b!6968783))

(assert (= (and b!6967420 ((_ is Union!17119) (regTwo!34751 (regTwo!34751 (regOne!34751 r!13765))))) b!6968784))

(declare-fun e!4189206 () Bool)

(assert (=> b!6967411 (= tp!1921769 e!4189206)))

(declare-fun b!6968788 () Bool)

(declare-fun tp!1922786 () Bool)

(declare-fun tp!1922785 () Bool)

(assert (=> b!6968788 (= e!4189206 (and tp!1922786 tp!1922785))))

(declare-fun b!6968786 () Bool)

(declare-fun tp!1922783 () Bool)

(declare-fun tp!1922782 () Bool)

(assert (=> b!6968786 (= e!4189206 (and tp!1922783 tp!1922782))))

(declare-fun b!6968785 () Bool)

(assert (=> b!6968785 (= e!4189206 tp_is_empty!43463)))

(declare-fun b!6968787 () Bool)

(declare-fun tp!1922784 () Bool)

(assert (=> b!6968787 (= e!4189206 tp!1922784)))

(assert (= (and b!6967411 ((_ is ElementMatch!17119) (reg!17448 (regTwo!34750 (reg!17448 r!13765))))) b!6968785))

(assert (= (and b!6967411 ((_ is Concat!25964) (reg!17448 (regTwo!34750 (reg!17448 r!13765))))) b!6968786))

(assert (= (and b!6967411 ((_ is Star!17119) (reg!17448 (regTwo!34750 (reg!17448 r!13765))))) b!6968787))

(assert (= (and b!6967411 ((_ is Union!17119) (reg!17448 (regTwo!34750 (reg!17448 r!13765))))) b!6968788))

(declare-fun e!4189207 () Bool)

(assert (=> b!6967402 (= tp!1921758 e!4189207)))

(declare-fun b!6968792 () Bool)

(declare-fun tp!1922791 () Bool)

(declare-fun tp!1922790 () Bool)

(assert (=> b!6968792 (= e!4189207 (and tp!1922791 tp!1922790))))

(declare-fun b!6968790 () Bool)

(declare-fun tp!1922788 () Bool)

(declare-fun tp!1922787 () Bool)

(assert (=> b!6968790 (= e!4189207 (and tp!1922788 tp!1922787))))

(declare-fun b!6968789 () Bool)

(assert (=> b!6968789 (= e!4189207 tp_is_empty!43463)))

(declare-fun b!6968791 () Bool)

(declare-fun tp!1922789 () Bool)

(assert (=> b!6968791 (= e!4189207 tp!1922789)))

(assert (= (and b!6967402 ((_ is ElementMatch!17119) (regOne!34750 (reg!17448 (regTwo!34751 r!13765))))) b!6968789))

(assert (= (and b!6967402 ((_ is Concat!25964) (regOne!34750 (reg!17448 (regTwo!34751 r!13765))))) b!6968790))

(assert (= (and b!6967402 ((_ is Star!17119) (regOne!34750 (reg!17448 (regTwo!34751 r!13765))))) b!6968791))

(assert (= (and b!6967402 ((_ is Union!17119) (regOne!34750 (reg!17448 (regTwo!34751 r!13765))))) b!6968792))

(declare-fun e!4189208 () Bool)

(assert (=> b!6967402 (= tp!1921757 e!4189208)))

(declare-fun b!6968796 () Bool)

(declare-fun tp!1922796 () Bool)

(declare-fun tp!1922795 () Bool)

(assert (=> b!6968796 (= e!4189208 (and tp!1922796 tp!1922795))))

(declare-fun b!6968794 () Bool)

(declare-fun tp!1922793 () Bool)

(declare-fun tp!1922792 () Bool)

(assert (=> b!6968794 (= e!4189208 (and tp!1922793 tp!1922792))))

(declare-fun b!6968793 () Bool)

(assert (=> b!6968793 (= e!4189208 tp_is_empty!43463)))

(declare-fun b!6968795 () Bool)

(declare-fun tp!1922794 () Bool)

(assert (=> b!6968795 (= e!4189208 tp!1922794)))

(assert (= (and b!6967402 ((_ is ElementMatch!17119) (regTwo!34750 (reg!17448 (regTwo!34751 r!13765))))) b!6968793))

(assert (= (and b!6967402 ((_ is Concat!25964) (regTwo!34750 (reg!17448 (regTwo!34751 r!13765))))) b!6968794))

(assert (= (and b!6967402 ((_ is Star!17119) (regTwo!34750 (reg!17448 (regTwo!34751 r!13765))))) b!6968795))

(assert (= (and b!6967402 ((_ is Union!17119) (regTwo!34750 (reg!17448 (regTwo!34751 r!13765))))) b!6968796))

(declare-fun e!4189209 () Bool)

(assert (=> b!6967388 (= tp!1921741 e!4189209)))

(declare-fun b!6968800 () Bool)

(declare-fun tp!1922801 () Bool)

(declare-fun tp!1922800 () Bool)

(assert (=> b!6968800 (= e!4189209 (and tp!1922801 tp!1922800))))

(declare-fun b!6968798 () Bool)

(declare-fun tp!1922798 () Bool)

(declare-fun tp!1922797 () Bool)

(assert (=> b!6968798 (= e!4189209 (and tp!1922798 tp!1922797))))

(declare-fun b!6968797 () Bool)

(assert (=> b!6968797 (= e!4189209 tp_is_empty!43463)))

(declare-fun b!6968799 () Bool)

(declare-fun tp!1922799 () Bool)

(assert (=> b!6968799 (= e!4189209 tp!1922799)))

(assert (= (and b!6967388 ((_ is ElementMatch!17119) (regOne!34751 (regTwo!34751 (h!73243 l!9142))))) b!6968797))

(assert (= (and b!6967388 ((_ is Concat!25964) (regOne!34751 (regTwo!34751 (h!73243 l!9142))))) b!6968798))

(assert (= (and b!6967388 ((_ is Star!17119) (regOne!34751 (regTwo!34751 (h!73243 l!9142))))) b!6968799))

(assert (= (and b!6967388 ((_ is Union!17119) (regOne!34751 (regTwo!34751 (h!73243 l!9142))))) b!6968800))

(declare-fun e!4189210 () Bool)

(assert (=> b!6967388 (= tp!1921740 e!4189210)))

(declare-fun b!6968804 () Bool)

(declare-fun tp!1922806 () Bool)

(declare-fun tp!1922805 () Bool)

(assert (=> b!6968804 (= e!4189210 (and tp!1922806 tp!1922805))))

(declare-fun b!6968802 () Bool)

(declare-fun tp!1922803 () Bool)

(declare-fun tp!1922802 () Bool)

(assert (=> b!6968802 (= e!4189210 (and tp!1922803 tp!1922802))))

(declare-fun b!6968801 () Bool)

(assert (=> b!6968801 (= e!4189210 tp_is_empty!43463)))

(declare-fun b!6968803 () Bool)

(declare-fun tp!1922804 () Bool)

(assert (=> b!6968803 (= e!4189210 tp!1922804)))

(assert (= (and b!6967388 ((_ is ElementMatch!17119) (regTwo!34751 (regTwo!34751 (h!73243 l!9142))))) b!6968801))

(assert (= (and b!6967388 ((_ is Concat!25964) (regTwo!34751 (regTwo!34751 (h!73243 l!9142))))) b!6968802))

(assert (= (and b!6967388 ((_ is Star!17119) (regTwo!34751 (regTwo!34751 (h!73243 l!9142))))) b!6968803))

(assert (= (and b!6967388 ((_ is Union!17119) (regTwo!34751 (regTwo!34751 (h!73243 l!9142))))) b!6968804))

(declare-fun e!4189211 () Bool)

(assert (=> b!6967379 (= tp!1921729 e!4189211)))

(declare-fun b!6968808 () Bool)

(declare-fun tp!1922811 () Bool)

(declare-fun tp!1922810 () Bool)

(assert (=> b!6968808 (= e!4189211 (and tp!1922811 tp!1922810))))

(declare-fun b!6968806 () Bool)

(declare-fun tp!1922808 () Bool)

(declare-fun tp!1922807 () Bool)

(assert (=> b!6968806 (= e!4189211 (and tp!1922808 tp!1922807))))

(declare-fun b!6968805 () Bool)

(assert (=> b!6968805 (= e!4189211 tp_is_empty!43463)))

(declare-fun b!6968807 () Bool)

(declare-fun tp!1922809 () Bool)

(assert (=> b!6968807 (= e!4189211 tp!1922809)))

(assert (= (and b!6967379 ((_ is ElementMatch!17119) (reg!17448 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968805))

(assert (= (and b!6967379 ((_ is Concat!25964) (reg!17448 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968806))

(assert (= (and b!6967379 ((_ is Star!17119) (reg!17448 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968807))

(assert (= (and b!6967379 ((_ is Union!17119) (reg!17448 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968808))

(declare-fun e!4189212 () Bool)

(assert (=> b!6967370 (= tp!1921718 e!4189212)))

(declare-fun b!6968812 () Bool)

(declare-fun tp!1922816 () Bool)

(declare-fun tp!1922815 () Bool)

(assert (=> b!6968812 (= e!4189212 (and tp!1922816 tp!1922815))))

(declare-fun b!6968810 () Bool)

(declare-fun tp!1922813 () Bool)

(declare-fun tp!1922812 () Bool)

(assert (=> b!6968810 (= e!4189212 (and tp!1922813 tp!1922812))))

(declare-fun b!6968809 () Bool)

(assert (=> b!6968809 (= e!4189212 tp_is_empty!43463)))

(declare-fun b!6968811 () Bool)

(declare-fun tp!1922814 () Bool)

(assert (=> b!6968811 (= e!4189212 tp!1922814)))

(assert (= (and b!6967370 ((_ is ElementMatch!17119) (regOne!34750 (regTwo!34750 (h!73243 l!9142))))) b!6968809))

(assert (= (and b!6967370 ((_ is Concat!25964) (regOne!34750 (regTwo!34750 (h!73243 l!9142))))) b!6968810))

(assert (= (and b!6967370 ((_ is Star!17119) (regOne!34750 (regTwo!34750 (h!73243 l!9142))))) b!6968811))

(assert (= (and b!6967370 ((_ is Union!17119) (regOne!34750 (regTwo!34750 (h!73243 l!9142))))) b!6968812))

(declare-fun e!4189213 () Bool)

(assert (=> b!6967370 (= tp!1921717 e!4189213)))

(declare-fun b!6968816 () Bool)

(declare-fun tp!1922821 () Bool)

(declare-fun tp!1922820 () Bool)

(assert (=> b!6968816 (= e!4189213 (and tp!1922821 tp!1922820))))

(declare-fun b!6968814 () Bool)

(declare-fun tp!1922818 () Bool)

(declare-fun tp!1922817 () Bool)

(assert (=> b!6968814 (= e!4189213 (and tp!1922818 tp!1922817))))

(declare-fun b!6968813 () Bool)

(assert (=> b!6968813 (= e!4189213 tp_is_empty!43463)))

(declare-fun b!6968815 () Bool)

(declare-fun tp!1922819 () Bool)

(assert (=> b!6968815 (= e!4189213 tp!1922819)))

(assert (= (and b!6967370 ((_ is ElementMatch!17119) (regTwo!34750 (regTwo!34750 (h!73243 l!9142))))) b!6968813))

(assert (= (and b!6967370 ((_ is Concat!25964) (regTwo!34750 (regTwo!34750 (h!73243 l!9142))))) b!6968814))

(assert (= (and b!6967370 ((_ is Star!17119) (regTwo!34750 (regTwo!34750 (h!73243 l!9142))))) b!6968815))

(assert (= (and b!6967370 ((_ is Union!17119) (regTwo!34750 (regTwo!34750 (h!73243 l!9142))))) b!6968816))

(declare-fun e!4189214 () Bool)

(assert (=> b!6967465 (= tp!1921837 e!4189214)))

(declare-fun b!6968820 () Bool)

(declare-fun tp!1922826 () Bool)

(declare-fun tp!1922825 () Bool)

(assert (=> b!6968820 (= e!4189214 (and tp!1922826 tp!1922825))))

(declare-fun b!6968818 () Bool)

(declare-fun tp!1922823 () Bool)

(declare-fun tp!1922822 () Bool)

(assert (=> b!6968818 (= e!4189214 (and tp!1922823 tp!1922822))))

(declare-fun b!6968817 () Bool)

(assert (=> b!6968817 (= e!4189214 tp_is_empty!43463)))

(declare-fun b!6968819 () Bool)

(declare-fun tp!1922824 () Bool)

(assert (=> b!6968819 (= e!4189214 tp!1922824)))

(assert (= (and b!6967465 ((_ is ElementMatch!17119) (regOne!34751 (reg!17448 (reg!17448 r!13765))))) b!6968817))

(assert (= (and b!6967465 ((_ is Concat!25964) (regOne!34751 (reg!17448 (reg!17448 r!13765))))) b!6968818))

(assert (= (and b!6967465 ((_ is Star!17119) (regOne!34751 (reg!17448 (reg!17448 r!13765))))) b!6968819))

(assert (= (and b!6967465 ((_ is Union!17119) (regOne!34751 (reg!17448 (reg!17448 r!13765))))) b!6968820))

(declare-fun e!4189215 () Bool)

(assert (=> b!6967465 (= tp!1921836 e!4189215)))

(declare-fun b!6968824 () Bool)

(declare-fun tp!1922831 () Bool)

(declare-fun tp!1922830 () Bool)

(assert (=> b!6968824 (= e!4189215 (and tp!1922831 tp!1922830))))

(declare-fun b!6968822 () Bool)

(declare-fun tp!1922828 () Bool)

(declare-fun tp!1922827 () Bool)

(assert (=> b!6968822 (= e!4189215 (and tp!1922828 tp!1922827))))

(declare-fun b!6968821 () Bool)

(assert (=> b!6968821 (= e!4189215 tp_is_empty!43463)))

(declare-fun b!6968823 () Bool)

(declare-fun tp!1922829 () Bool)

(assert (=> b!6968823 (= e!4189215 tp!1922829)))

(assert (= (and b!6967465 ((_ is ElementMatch!17119) (regTwo!34751 (reg!17448 (reg!17448 r!13765))))) b!6968821))

(assert (= (and b!6967465 ((_ is Concat!25964) (regTwo!34751 (reg!17448 (reg!17448 r!13765))))) b!6968822))

(assert (= (and b!6967465 ((_ is Star!17119) (regTwo!34751 (reg!17448 (reg!17448 r!13765))))) b!6968823))

(assert (= (and b!6967465 ((_ is Union!17119) (regTwo!34751 (reg!17448 (reg!17448 r!13765))))) b!6968824))

(declare-fun e!4189216 () Bool)

(assert (=> b!6967456 (= tp!1921825 e!4189216)))

(declare-fun b!6968828 () Bool)

(declare-fun tp!1922836 () Bool)

(declare-fun tp!1922835 () Bool)

(assert (=> b!6968828 (= e!4189216 (and tp!1922836 tp!1922835))))

(declare-fun b!6968826 () Bool)

(declare-fun tp!1922833 () Bool)

(declare-fun tp!1922832 () Bool)

(assert (=> b!6968826 (= e!4189216 (and tp!1922833 tp!1922832))))

(declare-fun b!6968825 () Bool)

(assert (=> b!6968825 (= e!4189216 tp_is_empty!43463)))

(declare-fun b!6968827 () Bool)

(declare-fun tp!1922834 () Bool)

(assert (=> b!6968827 (= e!4189216 tp!1922834)))

(assert (= (and b!6967456 ((_ is ElementMatch!17119) (reg!17448 (regOne!34751 (regTwo!34750 r!13765))))) b!6968825))

(assert (= (and b!6967456 ((_ is Concat!25964) (reg!17448 (regOne!34751 (regTwo!34750 r!13765))))) b!6968826))

(assert (= (and b!6967456 ((_ is Star!17119) (reg!17448 (regOne!34751 (regTwo!34750 r!13765))))) b!6968827))

(assert (= (and b!6967456 ((_ is Union!17119) (reg!17448 (regOne!34751 (regTwo!34750 r!13765))))) b!6968828))

(declare-fun e!4189217 () Bool)

(assert (=> b!6967346 (= tp!1921687 e!4189217)))

(declare-fun b!6968832 () Bool)

(declare-fun tp!1922841 () Bool)

(declare-fun tp!1922840 () Bool)

(assert (=> b!6968832 (= e!4189217 (and tp!1922841 tp!1922840))))

(declare-fun b!6968830 () Bool)

(declare-fun tp!1922838 () Bool)

(declare-fun tp!1922837 () Bool)

(assert (=> b!6968830 (= e!4189217 (and tp!1922838 tp!1922837))))

(declare-fun b!6968829 () Bool)

(assert (=> b!6968829 (= e!4189217 tp_is_empty!43463)))

(declare-fun b!6968831 () Bool)

(declare-fun tp!1922839 () Bool)

(assert (=> b!6968831 (= e!4189217 tp!1922839)))

(assert (= (and b!6967346 ((_ is ElementMatch!17119) (reg!17448 (regTwo!34751 (reg!17448 r!13765))))) b!6968829))

(assert (= (and b!6967346 ((_ is Concat!25964) (reg!17448 (regTwo!34751 (reg!17448 r!13765))))) b!6968830))

(assert (= (and b!6967346 ((_ is Star!17119) (reg!17448 (regTwo!34751 (reg!17448 r!13765))))) b!6968831))

(assert (= (and b!6967346 ((_ is Union!17119) (reg!17448 (regTwo!34751 (reg!17448 r!13765))))) b!6968832))

(declare-fun e!4189218 () Bool)

(assert (=> b!6967447 (= tp!1921814 e!4189218)))

(declare-fun b!6968836 () Bool)

(declare-fun tp!1922846 () Bool)

(declare-fun tp!1922845 () Bool)

(assert (=> b!6968836 (= e!4189218 (and tp!1922846 tp!1922845))))

(declare-fun b!6968834 () Bool)

(declare-fun tp!1922843 () Bool)

(declare-fun tp!1922842 () Bool)

(assert (=> b!6968834 (= e!4189218 (and tp!1922843 tp!1922842))))

(declare-fun b!6968833 () Bool)

(assert (=> b!6968833 (= e!4189218 tp_is_empty!43463)))

(declare-fun b!6968835 () Bool)

(declare-fun tp!1922844 () Bool)

(assert (=> b!6968835 (= e!4189218 tp!1922844)))

(assert (= (and b!6967447 ((_ is ElementMatch!17119) (regOne!34750 (regOne!34751 (regOne!34750 r!13765))))) b!6968833))

(assert (= (and b!6967447 ((_ is Concat!25964) (regOne!34750 (regOne!34751 (regOne!34750 r!13765))))) b!6968834))

(assert (= (and b!6967447 ((_ is Star!17119) (regOne!34750 (regOne!34751 (regOne!34750 r!13765))))) b!6968835))

(assert (= (and b!6967447 ((_ is Union!17119) (regOne!34750 (regOne!34751 (regOne!34750 r!13765))))) b!6968836))

(declare-fun e!4189219 () Bool)

(assert (=> b!6967447 (= tp!1921813 e!4189219)))

(declare-fun b!6968840 () Bool)

(declare-fun tp!1922851 () Bool)

(declare-fun tp!1922850 () Bool)

(assert (=> b!6968840 (= e!4189219 (and tp!1922851 tp!1922850))))

(declare-fun b!6968838 () Bool)

(declare-fun tp!1922848 () Bool)

(declare-fun tp!1922847 () Bool)

(assert (=> b!6968838 (= e!4189219 (and tp!1922848 tp!1922847))))

(declare-fun b!6968837 () Bool)

(assert (=> b!6968837 (= e!4189219 tp_is_empty!43463)))

(declare-fun b!6968839 () Bool)

(declare-fun tp!1922849 () Bool)

(assert (=> b!6968839 (= e!4189219 tp!1922849)))

(assert (= (and b!6967447 ((_ is ElementMatch!17119) (regTwo!34750 (regOne!34751 (regOne!34750 r!13765))))) b!6968837))

(assert (= (and b!6967447 ((_ is Concat!25964) (regTwo!34750 (regOne!34751 (regOne!34750 r!13765))))) b!6968838))

(assert (= (and b!6967447 ((_ is Star!17119) (regTwo!34750 (regOne!34751 (regOne!34750 r!13765))))) b!6968839))

(assert (= (and b!6967447 ((_ is Union!17119) (regTwo!34750 (regOne!34751 (regOne!34750 r!13765))))) b!6968840))

(declare-fun e!4189220 () Bool)

(assert (=> b!6967440 (= tp!1921806 e!4189220)))

(declare-fun b!6968844 () Bool)

(declare-fun tp!1922856 () Bool)

(declare-fun tp!1922855 () Bool)

(assert (=> b!6968844 (= e!4189220 (and tp!1922856 tp!1922855))))

(declare-fun b!6968842 () Bool)

(declare-fun tp!1922853 () Bool)

(declare-fun tp!1922852 () Bool)

(assert (=> b!6968842 (= e!4189220 (and tp!1922853 tp!1922852))))

(declare-fun b!6968841 () Bool)

(assert (=> b!6968841 (= e!4189220 tp_is_empty!43463)))

(declare-fun b!6968843 () Bool)

(declare-fun tp!1922854 () Bool)

(assert (=> b!6968843 (= e!4189220 tp!1922854)))

(assert (= (and b!6967440 ((_ is ElementMatch!17119) (regOne!34751 (regTwo!34751 (regTwo!34751 r!13765))))) b!6968841))

(assert (= (and b!6967440 ((_ is Concat!25964) (regOne!34751 (regTwo!34751 (regTwo!34751 r!13765))))) b!6968842))

(assert (= (and b!6967440 ((_ is Star!17119) (regOne!34751 (regTwo!34751 (regTwo!34751 r!13765))))) b!6968843))

(assert (= (and b!6967440 ((_ is Union!17119) (regOne!34751 (regTwo!34751 (regTwo!34751 r!13765))))) b!6968844))

(declare-fun e!4189221 () Bool)

(assert (=> b!6967440 (= tp!1921805 e!4189221)))

(declare-fun b!6968848 () Bool)

(declare-fun tp!1922861 () Bool)

(declare-fun tp!1922860 () Bool)

(assert (=> b!6968848 (= e!4189221 (and tp!1922861 tp!1922860))))

(declare-fun b!6968846 () Bool)

(declare-fun tp!1922858 () Bool)

(declare-fun tp!1922857 () Bool)

(assert (=> b!6968846 (= e!4189221 (and tp!1922858 tp!1922857))))

(declare-fun b!6968845 () Bool)

(assert (=> b!6968845 (= e!4189221 tp_is_empty!43463)))

(declare-fun b!6968847 () Bool)

(declare-fun tp!1922859 () Bool)

(assert (=> b!6968847 (= e!4189221 tp!1922859)))

(assert (= (and b!6967440 ((_ is ElementMatch!17119) (regTwo!34751 (regTwo!34751 (regTwo!34751 r!13765))))) b!6968845))

(assert (= (and b!6967440 ((_ is Concat!25964) (regTwo!34751 (regTwo!34751 (regTwo!34751 r!13765))))) b!6968846))

(assert (= (and b!6967440 ((_ is Star!17119) (regTwo!34751 (regTwo!34751 (regTwo!34751 r!13765))))) b!6968847))

(assert (= (and b!6967440 ((_ is Union!17119) (regTwo!34751 (regTwo!34751 (regTwo!34751 r!13765))))) b!6968848))

(declare-fun e!4189222 () Bool)

(assert (=> b!6967431 (= tp!1921794 e!4189222)))

(declare-fun b!6968852 () Bool)

(declare-fun tp!1922866 () Bool)

(declare-fun tp!1922865 () Bool)

(assert (=> b!6968852 (= e!4189222 (and tp!1922866 tp!1922865))))

(declare-fun b!6968850 () Bool)

(declare-fun tp!1922863 () Bool)

(declare-fun tp!1922862 () Bool)

(assert (=> b!6968850 (= e!4189222 (and tp!1922863 tp!1922862))))

(declare-fun b!6968849 () Bool)

(assert (=> b!6968849 (= e!4189222 tp_is_empty!43463)))

(declare-fun b!6968851 () Bool)

(declare-fun tp!1922864 () Bool)

(assert (=> b!6968851 (= e!4189222 tp!1922864)))

(assert (= (and b!6967431 ((_ is ElementMatch!17119) (reg!17448 (regTwo!34750 (regOne!34750 r!13765))))) b!6968849))

(assert (= (and b!6967431 ((_ is Concat!25964) (reg!17448 (regTwo!34750 (regOne!34750 r!13765))))) b!6968850))

(assert (= (and b!6967431 ((_ is Star!17119) (reg!17448 (regTwo!34750 (regOne!34750 r!13765))))) b!6968851))

(assert (= (and b!6967431 ((_ is Union!17119) (reg!17448 (regTwo!34750 (regOne!34750 r!13765))))) b!6968852))

(declare-fun e!4189223 () Bool)

(assert (=> b!6967422 (= tp!1921783 e!4189223)))

(declare-fun b!6968856 () Bool)

(declare-fun tp!1922871 () Bool)

(declare-fun tp!1922870 () Bool)

(assert (=> b!6968856 (= e!4189223 (and tp!1922871 tp!1922870))))

(declare-fun b!6968854 () Bool)

(declare-fun tp!1922868 () Bool)

(declare-fun tp!1922867 () Bool)

(assert (=> b!6968854 (= e!4189223 (and tp!1922868 tp!1922867))))

(declare-fun b!6968853 () Bool)

(assert (=> b!6968853 (= e!4189223 tp_is_empty!43463)))

(declare-fun b!6968855 () Bool)

(declare-fun tp!1922869 () Bool)

(assert (=> b!6968855 (= e!4189223 tp!1922869)))

(assert (= (and b!6967422 ((_ is ElementMatch!17119) (regOne!34750 (reg!17448 (regOne!34750 r!13765))))) b!6968853))

(assert (= (and b!6967422 ((_ is Concat!25964) (regOne!34750 (reg!17448 (regOne!34750 r!13765))))) b!6968854))

(assert (= (and b!6967422 ((_ is Star!17119) (regOne!34750 (reg!17448 (regOne!34750 r!13765))))) b!6968855))

(assert (= (and b!6967422 ((_ is Union!17119) (regOne!34750 (reg!17448 (regOne!34750 r!13765))))) b!6968856))

(declare-fun e!4189224 () Bool)

(assert (=> b!6967422 (= tp!1921782 e!4189224)))

(declare-fun b!6968860 () Bool)

(declare-fun tp!1922876 () Bool)

(declare-fun tp!1922875 () Bool)

(assert (=> b!6968860 (= e!4189224 (and tp!1922876 tp!1922875))))

(declare-fun b!6968858 () Bool)

(declare-fun tp!1922873 () Bool)

(declare-fun tp!1922872 () Bool)

(assert (=> b!6968858 (= e!4189224 (and tp!1922873 tp!1922872))))

(declare-fun b!6968857 () Bool)

(assert (=> b!6968857 (= e!4189224 tp_is_empty!43463)))

(declare-fun b!6968859 () Bool)

(declare-fun tp!1922874 () Bool)

(assert (=> b!6968859 (= e!4189224 tp!1922874)))

(assert (= (and b!6967422 ((_ is ElementMatch!17119) (regTwo!34750 (reg!17448 (regOne!34750 r!13765))))) b!6968857))

(assert (= (and b!6967422 ((_ is Concat!25964) (regTwo!34750 (reg!17448 (regOne!34750 r!13765))))) b!6968858))

(assert (= (and b!6967422 ((_ is Star!17119) (regTwo!34750 (reg!17448 (regOne!34750 r!13765))))) b!6968859))

(assert (= (and b!6967422 ((_ is Union!17119) (regTwo!34750 (reg!17448 (regOne!34750 r!13765))))) b!6968860))

(declare-fun e!4189225 () Bool)

(assert (=> b!6967356 (= tp!1921701 e!4189225)))

(declare-fun b!6968864 () Bool)

(declare-fun tp!1922881 () Bool)

(declare-fun tp!1922880 () Bool)

(assert (=> b!6968864 (= e!4189225 (and tp!1922881 tp!1922880))))

(declare-fun b!6968862 () Bool)

(declare-fun tp!1922878 () Bool)

(declare-fun tp!1922877 () Bool)

(assert (=> b!6968862 (= e!4189225 (and tp!1922878 tp!1922877))))

(declare-fun b!6968861 () Bool)

(assert (=> b!6968861 (= e!4189225 tp_is_empty!43463)))

(declare-fun b!6968863 () Bool)

(declare-fun tp!1922879 () Bool)

(assert (=> b!6968863 (= e!4189225 tp!1922879)))

(assert (= (and b!6967356 ((_ is ElementMatch!17119) (regOne!34751 (regOne!34750 (regTwo!34751 r!13765))))) b!6968861))

(assert (= (and b!6967356 ((_ is Concat!25964) (regOne!34751 (regOne!34750 (regTwo!34751 r!13765))))) b!6968862))

(assert (= (and b!6967356 ((_ is Star!17119) (regOne!34751 (regOne!34750 (regTwo!34751 r!13765))))) b!6968863))

(assert (= (and b!6967356 ((_ is Union!17119) (regOne!34751 (regOne!34750 (regTwo!34751 r!13765))))) b!6968864))

(declare-fun e!4189226 () Bool)

(assert (=> b!6967356 (= tp!1921700 e!4189226)))

(declare-fun b!6968868 () Bool)

(declare-fun tp!1922886 () Bool)

(declare-fun tp!1922885 () Bool)

(assert (=> b!6968868 (= e!4189226 (and tp!1922886 tp!1922885))))

(declare-fun b!6968866 () Bool)

(declare-fun tp!1922883 () Bool)

(declare-fun tp!1922882 () Bool)

(assert (=> b!6968866 (= e!4189226 (and tp!1922883 tp!1922882))))

(declare-fun b!6968865 () Bool)

(assert (=> b!6968865 (= e!4189226 tp_is_empty!43463)))

(declare-fun b!6968867 () Bool)

(declare-fun tp!1922884 () Bool)

(assert (=> b!6968867 (= e!4189226 tp!1922884)))

(assert (= (and b!6967356 ((_ is ElementMatch!17119) (regTwo!34751 (regOne!34750 (regTwo!34751 r!13765))))) b!6968865))

(assert (= (and b!6967356 ((_ is Concat!25964) (regTwo!34751 (regOne!34750 (regTwo!34751 r!13765))))) b!6968866))

(assert (= (and b!6967356 ((_ is Star!17119) (regTwo!34751 (regOne!34750 (regTwo!34751 r!13765))))) b!6968867))

(assert (= (and b!6967356 ((_ is Union!17119) (regTwo!34751 (regOne!34750 (regTwo!34751 r!13765))))) b!6968868))

(declare-fun e!4189227 () Bool)

(assert (=> b!6967408 (= tp!1921766 e!4189227)))

(declare-fun b!6968872 () Bool)

(declare-fun tp!1922891 () Bool)

(declare-fun tp!1922890 () Bool)

(assert (=> b!6968872 (= e!4189227 (and tp!1922891 tp!1922890))))

(declare-fun b!6968870 () Bool)

(declare-fun tp!1922888 () Bool)

(declare-fun tp!1922887 () Bool)

(assert (=> b!6968870 (= e!4189227 (and tp!1922888 tp!1922887))))

(declare-fun b!6968869 () Bool)

(assert (=> b!6968869 (= e!4189227 tp_is_empty!43463)))

(declare-fun b!6968871 () Bool)

(declare-fun tp!1922889 () Bool)

(assert (=> b!6968871 (= e!4189227 tp!1922889)))

(assert (= (and b!6967408 ((_ is ElementMatch!17119) (regOne!34751 (regOne!34750 (reg!17448 r!13765))))) b!6968869))

(assert (= (and b!6967408 ((_ is Concat!25964) (regOne!34751 (regOne!34750 (reg!17448 r!13765))))) b!6968870))

(assert (= (and b!6967408 ((_ is Star!17119) (regOne!34751 (regOne!34750 (reg!17448 r!13765))))) b!6968871))

(assert (= (and b!6967408 ((_ is Union!17119) (regOne!34751 (regOne!34750 (reg!17448 r!13765))))) b!6968872))

(declare-fun e!4189228 () Bool)

(assert (=> b!6967408 (= tp!1921765 e!4189228)))

(declare-fun b!6968876 () Bool)

(declare-fun tp!1922896 () Bool)

(declare-fun tp!1922895 () Bool)

(assert (=> b!6968876 (= e!4189228 (and tp!1922896 tp!1922895))))

(declare-fun b!6968874 () Bool)

(declare-fun tp!1922893 () Bool)

(declare-fun tp!1922892 () Bool)

(assert (=> b!6968874 (= e!4189228 (and tp!1922893 tp!1922892))))

(declare-fun b!6968873 () Bool)

(assert (=> b!6968873 (= e!4189228 tp_is_empty!43463)))

(declare-fun b!6968875 () Bool)

(declare-fun tp!1922894 () Bool)

(assert (=> b!6968875 (= e!4189228 tp!1922894)))

(assert (= (and b!6967408 ((_ is ElementMatch!17119) (regTwo!34751 (regOne!34750 (reg!17448 r!13765))))) b!6968873))

(assert (= (and b!6967408 ((_ is Concat!25964) (regTwo!34751 (regOne!34750 (reg!17448 r!13765))))) b!6968874))

(assert (= (and b!6967408 ((_ is Star!17119) (regTwo!34751 (regOne!34750 (reg!17448 r!13765))))) b!6968875))

(assert (= (and b!6967408 ((_ is Union!17119) (regTwo!34751 (regOne!34750 (reg!17448 r!13765))))) b!6968876))

(declare-fun e!4189229 () Bool)

(assert (=> b!6967399 (= tp!1921754 e!4189229)))

(declare-fun b!6968880 () Bool)

(declare-fun tp!1922901 () Bool)

(declare-fun tp!1922900 () Bool)

(assert (=> b!6968880 (= e!4189229 (and tp!1922901 tp!1922900))))

(declare-fun b!6968878 () Bool)

(declare-fun tp!1922898 () Bool)

(declare-fun tp!1922897 () Bool)

(assert (=> b!6968878 (= e!4189229 (and tp!1922898 tp!1922897))))

(declare-fun b!6968877 () Bool)

(assert (=> b!6968877 (= e!4189229 tp_is_empty!43463)))

(declare-fun b!6968879 () Bool)

(declare-fun tp!1922899 () Bool)

(assert (=> b!6968879 (= e!4189229 tp!1922899)))

(assert (= (and b!6967399 ((_ is ElementMatch!17119) (reg!17448 (regTwo!34750 (regOne!34751 r!13765))))) b!6968877))

(assert (= (and b!6967399 ((_ is Concat!25964) (reg!17448 (regTwo!34750 (regOne!34751 r!13765))))) b!6968878))

(assert (= (and b!6967399 ((_ is Star!17119) (reg!17448 (regTwo!34750 (regOne!34751 r!13765))))) b!6968879))

(assert (= (and b!6967399 ((_ is Union!17119) (reg!17448 (regTwo!34750 (regOne!34751 r!13765))))) b!6968880))

(declare-fun e!4189230 () Bool)

(assert (=> b!6967390 (= tp!1921743 e!4189230)))

(declare-fun b!6968884 () Bool)

(declare-fun tp!1922906 () Bool)

(declare-fun tp!1922905 () Bool)

(assert (=> b!6968884 (= e!4189230 (and tp!1922906 tp!1922905))))

(declare-fun b!6968882 () Bool)

(declare-fun tp!1922903 () Bool)

(declare-fun tp!1922902 () Bool)

(assert (=> b!6968882 (= e!4189230 (and tp!1922903 tp!1922902))))

(declare-fun b!6968881 () Bool)

(assert (=> b!6968881 (= e!4189230 tp_is_empty!43463)))

(declare-fun b!6968883 () Bool)

(declare-fun tp!1922904 () Bool)

(assert (=> b!6968883 (= e!4189230 tp!1922904)))

(assert (= (and b!6967390 ((_ is ElementMatch!17119) (regOne!34750 (reg!17448 (regOne!34751 r!13765))))) b!6968881))

(assert (= (and b!6967390 ((_ is Concat!25964) (regOne!34750 (reg!17448 (regOne!34751 r!13765))))) b!6968882))

(assert (= (and b!6967390 ((_ is Star!17119) (regOne!34750 (reg!17448 (regOne!34751 r!13765))))) b!6968883))

(assert (= (and b!6967390 ((_ is Union!17119) (regOne!34750 (reg!17448 (regOne!34751 r!13765))))) b!6968884))

(declare-fun e!4189231 () Bool)

(assert (=> b!6967390 (= tp!1921742 e!4189231)))

(declare-fun b!6968888 () Bool)

(declare-fun tp!1922911 () Bool)

(declare-fun tp!1922910 () Bool)

(assert (=> b!6968888 (= e!4189231 (and tp!1922911 tp!1922910))))

(declare-fun b!6968886 () Bool)

(declare-fun tp!1922908 () Bool)

(declare-fun tp!1922907 () Bool)

(assert (=> b!6968886 (= e!4189231 (and tp!1922908 tp!1922907))))

(declare-fun b!6968885 () Bool)

(assert (=> b!6968885 (= e!4189231 tp_is_empty!43463)))

(declare-fun b!6968887 () Bool)

(declare-fun tp!1922909 () Bool)

(assert (=> b!6968887 (= e!4189231 tp!1922909)))

(assert (= (and b!6967390 ((_ is ElementMatch!17119) (regTwo!34750 (reg!17448 (regOne!34751 r!13765))))) b!6968885))

(assert (= (and b!6967390 ((_ is Concat!25964) (regTwo!34750 (reg!17448 (regOne!34751 r!13765))))) b!6968886))

(assert (= (and b!6967390 ((_ is Star!17119) (regTwo!34750 (reg!17448 (regOne!34751 r!13765))))) b!6968887))

(assert (= (and b!6967390 ((_ is Union!17119) (regTwo!34750 (reg!17448 (regOne!34751 r!13765))))) b!6968888))

(declare-fun e!4189232 () Bool)

(assert (=> b!6967442 (= tp!1921808 e!4189232)))

(declare-fun b!6968892 () Bool)

(declare-fun tp!1922916 () Bool)

(declare-fun tp!1922915 () Bool)

(assert (=> b!6968892 (= e!4189232 (and tp!1922916 tp!1922915))))

(declare-fun b!6968890 () Bool)

(declare-fun tp!1922913 () Bool)

(declare-fun tp!1922912 () Bool)

(assert (=> b!6968890 (= e!4189232 (and tp!1922913 tp!1922912))))

(declare-fun b!6968889 () Bool)

(assert (=> b!6968889 (= e!4189232 tp_is_empty!43463)))

(declare-fun b!6968891 () Bool)

(declare-fun tp!1922914 () Bool)

(assert (=> b!6968891 (= e!4189232 tp!1922914)))

(assert (= (and b!6967442 ((_ is ElementMatch!17119) (regOne!34750 (reg!17448 (regTwo!34750 r!13765))))) b!6968889))

(assert (= (and b!6967442 ((_ is Concat!25964) (regOne!34750 (reg!17448 (regTwo!34750 r!13765))))) b!6968890))

(assert (= (and b!6967442 ((_ is Star!17119) (regOne!34750 (reg!17448 (regTwo!34750 r!13765))))) b!6968891))

(assert (= (and b!6967442 ((_ is Union!17119) (regOne!34750 (reg!17448 (regTwo!34750 r!13765))))) b!6968892))

(declare-fun e!4189233 () Bool)

(assert (=> b!6967442 (= tp!1921807 e!4189233)))

(declare-fun b!6968896 () Bool)

(declare-fun tp!1922921 () Bool)

(declare-fun tp!1922920 () Bool)

(assert (=> b!6968896 (= e!4189233 (and tp!1922921 tp!1922920))))

(declare-fun b!6968894 () Bool)

(declare-fun tp!1922918 () Bool)

(declare-fun tp!1922917 () Bool)

(assert (=> b!6968894 (= e!4189233 (and tp!1922918 tp!1922917))))

(declare-fun b!6968893 () Bool)

(assert (=> b!6968893 (= e!4189233 tp_is_empty!43463)))

(declare-fun b!6968895 () Bool)

(declare-fun tp!1922919 () Bool)

(assert (=> b!6968895 (= e!4189233 tp!1922919)))

(assert (= (and b!6967442 ((_ is ElementMatch!17119) (regTwo!34750 (reg!17448 (regTwo!34750 r!13765))))) b!6968893))

(assert (= (and b!6967442 ((_ is Concat!25964) (regTwo!34750 (reg!17448 (regTwo!34750 r!13765))))) b!6968894))

(assert (= (and b!6967442 ((_ is Star!17119) (regTwo!34750 (reg!17448 (regTwo!34750 r!13765))))) b!6968895))

(assert (= (and b!6967442 ((_ is Union!17119) (regTwo!34750 (reg!17448 (regTwo!34750 r!13765))))) b!6968896))

(declare-fun e!4189234 () Bool)

(assert (=> b!6967376 (= tp!1921726 e!4189234)))

(declare-fun b!6968900 () Bool)

(declare-fun tp!1922926 () Bool)

(declare-fun tp!1922925 () Bool)

(assert (=> b!6968900 (= e!4189234 (and tp!1922926 tp!1922925))))

(declare-fun b!6968898 () Bool)

(declare-fun tp!1922923 () Bool)

(declare-fun tp!1922922 () Bool)

(assert (=> b!6968898 (= e!4189234 (and tp!1922923 tp!1922922))))

(declare-fun b!6968897 () Bool)

(assert (=> b!6968897 (= e!4189234 tp_is_empty!43463)))

(declare-fun b!6968899 () Bool)

(declare-fun tp!1922924 () Bool)

(assert (=> b!6968899 (= e!4189234 tp!1922924)))

(assert (= (and b!6967376 ((_ is ElementMatch!17119) (regOne!34751 (regOne!34750 (regTwo!34750 r!13765))))) b!6968897))

(assert (= (and b!6967376 ((_ is Concat!25964) (regOne!34751 (regOne!34750 (regTwo!34750 r!13765))))) b!6968898))

(assert (= (and b!6967376 ((_ is Star!17119) (regOne!34751 (regOne!34750 (regTwo!34750 r!13765))))) b!6968899))

(assert (= (and b!6967376 ((_ is Union!17119) (regOne!34751 (regOne!34750 (regTwo!34750 r!13765))))) b!6968900))

(declare-fun e!4189235 () Bool)

(assert (=> b!6967376 (= tp!1921725 e!4189235)))

(declare-fun b!6968904 () Bool)

(declare-fun tp!1922931 () Bool)

(declare-fun tp!1922930 () Bool)

(assert (=> b!6968904 (= e!4189235 (and tp!1922931 tp!1922930))))

(declare-fun b!6968902 () Bool)

(declare-fun tp!1922928 () Bool)

(declare-fun tp!1922927 () Bool)

(assert (=> b!6968902 (= e!4189235 (and tp!1922928 tp!1922927))))

(declare-fun b!6968901 () Bool)

(assert (=> b!6968901 (= e!4189235 tp_is_empty!43463)))

(declare-fun b!6968903 () Bool)

(declare-fun tp!1922929 () Bool)

(assert (=> b!6968903 (= e!4189235 tp!1922929)))

(assert (= (and b!6967376 ((_ is ElementMatch!17119) (regTwo!34751 (regOne!34750 (regTwo!34750 r!13765))))) b!6968901))

(assert (= (and b!6967376 ((_ is Concat!25964) (regTwo!34751 (regOne!34750 (regTwo!34750 r!13765))))) b!6968902))

(assert (= (and b!6967376 ((_ is Star!17119) (regTwo!34751 (regOne!34750 (regTwo!34750 r!13765))))) b!6968903))

(assert (= (and b!6967376 ((_ is Union!17119) (regTwo!34751 (regOne!34750 (regTwo!34750 r!13765))))) b!6968904))

(declare-fun e!4189236 () Bool)

(assert (=> b!6967367 (= tp!1921714 e!4189236)))

(declare-fun b!6968908 () Bool)

(declare-fun tp!1922936 () Bool)

(declare-fun tp!1922935 () Bool)

(assert (=> b!6968908 (= e!4189236 (and tp!1922936 tp!1922935))))

(declare-fun b!6968906 () Bool)

(declare-fun tp!1922933 () Bool)

(declare-fun tp!1922932 () Bool)

(assert (=> b!6968906 (= e!4189236 (and tp!1922933 tp!1922932))))

(declare-fun b!6968905 () Bool)

(assert (=> b!6968905 (= e!4189236 tp_is_empty!43463)))

(declare-fun b!6968907 () Bool)

(declare-fun tp!1922934 () Bool)

(assert (=> b!6968907 (= e!4189236 tp!1922934)))

(assert (= (and b!6967367 ((_ is ElementMatch!17119) (reg!17448 (regOne!34750 (h!73243 l!9142))))) b!6968905))

(assert (= (and b!6967367 ((_ is Concat!25964) (reg!17448 (regOne!34750 (h!73243 l!9142))))) b!6968906))

(assert (= (and b!6967367 ((_ is Star!17119) (reg!17448 (regOne!34750 (h!73243 l!9142))))) b!6968907))

(assert (= (and b!6967367 ((_ is Union!17119) (reg!17448 (regOne!34750 (h!73243 l!9142))))) b!6968908))

(declare-fun e!4189237 () Bool)

(assert (=> b!6967358 (= tp!1921703 e!4189237)))

(declare-fun b!6968912 () Bool)

(declare-fun tp!1922941 () Bool)

(declare-fun tp!1922940 () Bool)

(assert (=> b!6968912 (= e!4189237 (and tp!1922941 tp!1922940))))

(declare-fun b!6968910 () Bool)

(declare-fun tp!1922938 () Bool)

(declare-fun tp!1922937 () Bool)

(assert (=> b!6968910 (= e!4189237 (and tp!1922938 tp!1922937))))

(declare-fun b!6968909 () Bool)

(assert (=> b!6968909 (= e!4189237 tp_is_empty!43463)))

(declare-fun b!6968911 () Bool)

(declare-fun tp!1922939 () Bool)

(assert (=> b!6968911 (= e!4189237 tp!1922939)))

(assert (= (and b!6967358 ((_ is ElementMatch!17119) (regOne!34750 (regTwo!34750 (regTwo!34751 r!13765))))) b!6968909))

(assert (= (and b!6967358 ((_ is Concat!25964) (regOne!34750 (regTwo!34750 (regTwo!34751 r!13765))))) b!6968910))

(assert (= (and b!6967358 ((_ is Star!17119) (regOne!34750 (regTwo!34750 (regTwo!34751 r!13765))))) b!6968911))

(assert (= (and b!6967358 ((_ is Union!17119) (regOne!34750 (regTwo!34750 (regTwo!34751 r!13765))))) b!6968912))

(declare-fun e!4189238 () Bool)

(assert (=> b!6967358 (= tp!1921702 e!4189238)))

(declare-fun b!6968916 () Bool)

(declare-fun tp!1922946 () Bool)

(declare-fun tp!1922945 () Bool)

(assert (=> b!6968916 (= e!4189238 (and tp!1922946 tp!1922945))))

(declare-fun b!6968914 () Bool)

(declare-fun tp!1922943 () Bool)

(declare-fun tp!1922942 () Bool)

(assert (=> b!6968914 (= e!4189238 (and tp!1922943 tp!1922942))))

(declare-fun b!6968913 () Bool)

(assert (=> b!6968913 (= e!4189238 tp_is_empty!43463)))

(declare-fun b!6968915 () Bool)

(declare-fun tp!1922944 () Bool)

(assert (=> b!6968915 (= e!4189238 tp!1922944)))

(assert (= (and b!6967358 ((_ is ElementMatch!17119) (regTwo!34750 (regTwo!34750 (regTwo!34751 r!13765))))) b!6968913))

(assert (= (and b!6967358 ((_ is Concat!25964) (regTwo!34750 (regTwo!34750 (regTwo!34751 r!13765))))) b!6968914))

(assert (= (and b!6967358 ((_ is Star!17119) (regTwo!34750 (regTwo!34750 (regTwo!34751 r!13765))))) b!6968915))

(assert (= (and b!6967358 ((_ is Union!17119) (regTwo!34750 (regTwo!34750 (regTwo!34751 r!13765))))) b!6968916))

(declare-fun e!4189239 () Bool)

(assert (=> b!6967453 (= tp!1921822 e!4189239)))

(declare-fun b!6968920 () Bool)

(declare-fun tp!1922951 () Bool)

(declare-fun tp!1922950 () Bool)

(assert (=> b!6968920 (= e!4189239 (and tp!1922951 tp!1922950))))

(declare-fun b!6968918 () Bool)

(declare-fun tp!1922948 () Bool)

(declare-fun tp!1922947 () Bool)

(assert (=> b!6968918 (= e!4189239 (and tp!1922948 tp!1922947))))

(declare-fun b!6968917 () Bool)

(assert (=> b!6968917 (= e!4189239 tp_is_empty!43463)))

(declare-fun b!6968919 () Bool)

(declare-fun tp!1922949 () Bool)

(assert (=> b!6968919 (= e!4189239 tp!1922949)))

(assert (= (and b!6967453 ((_ is ElementMatch!17119) (regOne!34751 (regTwo!34751 (regOne!34750 r!13765))))) b!6968917))

(assert (= (and b!6967453 ((_ is Concat!25964) (regOne!34751 (regTwo!34751 (regOne!34750 r!13765))))) b!6968918))

(assert (= (and b!6967453 ((_ is Star!17119) (regOne!34751 (regTwo!34751 (regOne!34750 r!13765))))) b!6968919))

(assert (= (and b!6967453 ((_ is Union!17119) (regOne!34751 (regTwo!34751 (regOne!34750 r!13765))))) b!6968920))

(declare-fun e!4189240 () Bool)

(assert (=> b!6967453 (= tp!1921821 e!4189240)))

(declare-fun b!6968924 () Bool)

(declare-fun tp!1922956 () Bool)

(declare-fun tp!1922955 () Bool)

(assert (=> b!6968924 (= e!4189240 (and tp!1922956 tp!1922955))))

(declare-fun b!6968922 () Bool)

(declare-fun tp!1922953 () Bool)

(declare-fun tp!1922952 () Bool)

(assert (=> b!6968922 (= e!4189240 (and tp!1922953 tp!1922952))))

(declare-fun b!6968921 () Bool)

(assert (=> b!6968921 (= e!4189240 tp_is_empty!43463)))

(declare-fun b!6968923 () Bool)

(declare-fun tp!1922954 () Bool)

(assert (=> b!6968923 (= e!4189240 tp!1922954)))

(assert (= (and b!6967453 ((_ is ElementMatch!17119) (regTwo!34751 (regTwo!34751 (regOne!34750 r!13765))))) b!6968921))

(assert (= (and b!6967453 ((_ is Concat!25964) (regTwo!34751 (regTwo!34751 (regOne!34750 r!13765))))) b!6968922))

(assert (= (and b!6967453 ((_ is Star!17119) (regTwo!34751 (regTwo!34751 (regOne!34750 r!13765))))) b!6968923))

(assert (= (and b!6967453 ((_ is Union!17119) (regTwo!34751 (regTwo!34751 (regOne!34750 r!13765))))) b!6968924))

(declare-fun e!4189241 () Bool)

(assert (=> b!6967343 (= tp!1921684 e!4189241)))

(declare-fun b!6968928 () Bool)

(declare-fun tp!1922961 () Bool)

(declare-fun tp!1922960 () Bool)

(assert (=> b!6968928 (= e!4189241 (and tp!1922961 tp!1922960))))

(declare-fun b!6968926 () Bool)

(declare-fun tp!1922958 () Bool)

(declare-fun tp!1922957 () Bool)

(assert (=> b!6968926 (= e!4189241 (and tp!1922958 tp!1922957))))

(declare-fun b!6968925 () Bool)

(assert (=> b!6968925 (= e!4189241 tp_is_empty!43463)))

(declare-fun b!6968927 () Bool)

(declare-fun tp!1922959 () Bool)

(assert (=> b!6968927 (= e!4189241 tp!1922959)))

(assert (= (and b!6967343 ((_ is ElementMatch!17119) (regOne!34751 (regOne!34751 (reg!17448 r!13765))))) b!6968925))

(assert (= (and b!6967343 ((_ is Concat!25964) (regOne!34751 (regOne!34751 (reg!17448 r!13765))))) b!6968926))

(assert (= (and b!6967343 ((_ is Star!17119) (regOne!34751 (regOne!34751 (reg!17448 r!13765))))) b!6968927))

(assert (= (and b!6967343 ((_ is Union!17119) (regOne!34751 (regOne!34751 (reg!17448 r!13765))))) b!6968928))

(declare-fun e!4189242 () Bool)

(assert (=> b!6967343 (= tp!1921683 e!4189242)))

(declare-fun b!6968932 () Bool)

(declare-fun tp!1922966 () Bool)

(declare-fun tp!1922965 () Bool)

(assert (=> b!6968932 (= e!4189242 (and tp!1922966 tp!1922965))))

(declare-fun b!6968930 () Bool)

(declare-fun tp!1922963 () Bool)

(declare-fun tp!1922962 () Bool)

(assert (=> b!6968930 (= e!4189242 (and tp!1922963 tp!1922962))))

(declare-fun b!6968929 () Bool)

(assert (=> b!6968929 (= e!4189242 tp_is_empty!43463)))

(declare-fun b!6968931 () Bool)

(declare-fun tp!1922964 () Bool)

(assert (=> b!6968931 (= e!4189242 tp!1922964)))

(assert (= (and b!6967343 ((_ is ElementMatch!17119) (regTwo!34751 (regOne!34751 (reg!17448 r!13765))))) b!6968929))

(assert (= (and b!6967343 ((_ is Concat!25964) (regTwo!34751 (regOne!34751 (reg!17448 r!13765))))) b!6968930))

(assert (= (and b!6967343 ((_ is Star!17119) (regTwo!34751 (regOne!34751 (reg!17448 r!13765))))) b!6968931))

(assert (= (and b!6967343 ((_ is Union!17119) (regTwo!34751 (regOne!34751 (reg!17448 r!13765))))) b!6968932))

(declare-fun e!4189243 () Bool)

(assert (=> b!6967428 (= tp!1921791 e!4189243)))

(declare-fun b!6968936 () Bool)

(declare-fun tp!1922971 () Bool)

(declare-fun tp!1922970 () Bool)

(assert (=> b!6968936 (= e!4189243 (and tp!1922971 tp!1922970))))

(declare-fun b!6968934 () Bool)

(declare-fun tp!1922968 () Bool)

(declare-fun tp!1922967 () Bool)

(assert (=> b!6968934 (= e!4189243 (and tp!1922968 tp!1922967))))

(declare-fun b!6968933 () Bool)

(assert (=> b!6968933 (= e!4189243 tp_is_empty!43463)))

(declare-fun b!6968935 () Bool)

(declare-fun tp!1922969 () Bool)

(assert (=> b!6968935 (= e!4189243 tp!1922969)))

(assert (= (and b!6967428 ((_ is ElementMatch!17119) (regOne!34751 (regOne!34750 (regOne!34750 r!13765))))) b!6968933))

(assert (= (and b!6967428 ((_ is Concat!25964) (regOne!34751 (regOne!34750 (regOne!34750 r!13765))))) b!6968934))

(assert (= (and b!6967428 ((_ is Star!17119) (regOne!34751 (regOne!34750 (regOne!34750 r!13765))))) b!6968935))

(assert (= (and b!6967428 ((_ is Union!17119) (regOne!34751 (regOne!34750 (regOne!34750 r!13765))))) b!6968936))

(declare-fun e!4189244 () Bool)

(assert (=> b!6967428 (= tp!1921790 e!4189244)))

(declare-fun b!6968940 () Bool)

(declare-fun tp!1922976 () Bool)

(declare-fun tp!1922975 () Bool)

(assert (=> b!6968940 (= e!4189244 (and tp!1922976 tp!1922975))))

(declare-fun b!6968938 () Bool)

(declare-fun tp!1922973 () Bool)

(declare-fun tp!1922972 () Bool)

(assert (=> b!6968938 (= e!4189244 (and tp!1922973 tp!1922972))))

(declare-fun b!6968937 () Bool)

(assert (=> b!6968937 (= e!4189244 tp_is_empty!43463)))

(declare-fun b!6968939 () Bool)

(declare-fun tp!1922974 () Bool)

(assert (=> b!6968939 (= e!4189244 tp!1922974)))

(assert (= (and b!6967428 ((_ is ElementMatch!17119) (regTwo!34751 (regOne!34750 (regOne!34750 r!13765))))) b!6968937))

(assert (= (and b!6967428 ((_ is Concat!25964) (regTwo!34751 (regOne!34750 (regOne!34750 r!13765))))) b!6968938))

(assert (= (and b!6967428 ((_ is Star!17119) (regTwo!34751 (regOne!34750 (regOne!34750 r!13765))))) b!6968939))

(assert (= (and b!6967428 ((_ is Union!17119) (regTwo!34751 (regOne!34750 (regOne!34750 r!13765))))) b!6968940))

(declare-fun e!4189245 () Bool)

(assert (=> b!6967419 (= tp!1921779 e!4189245)))

(declare-fun b!6968944 () Bool)

(declare-fun tp!1922981 () Bool)

(declare-fun tp!1922980 () Bool)

(assert (=> b!6968944 (= e!4189245 (and tp!1922981 tp!1922980))))

(declare-fun b!6968942 () Bool)

(declare-fun tp!1922978 () Bool)

(declare-fun tp!1922977 () Bool)

(assert (=> b!6968942 (= e!4189245 (and tp!1922978 tp!1922977))))

(declare-fun b!6968941 () Bool)

(assert (=> b!6968941 (= e!4189245 tp_is_empty!43463)))

(declare-fun b!6968943 () Bool)

(declare-fun tp!1922979 () Bool)

(assert (=> b!6968943 (= e!4189245 tp!1922979)))

(assert (= (and b!6967419 ((_ is ElementMatch!17119) (reg!17448 (regTwo!34751 (regOne!34751 r!13765))))) b!6968941))

(assert (= (and b!6967419 ((_ is Concat!25964) (reg!17448 (regTwo!34751 (regOne!34751 r!13765))))) b!6968942))

(assert (= (and b!6967419 ((_ is Star!17119) (reg!17448 (regTwo!34751 (regOne!34751 r!13765))))) b!6968943))

(assert (= (and b!6967419 ((_ is Union!17119) (reg!17448 (regTwo!34751 (regOne!34751 r!13765))))) b!6968944))

(declare-fun e!4189246 () Bool)

(assert (=> b!6967410 (= tp!1921768 e!4189246)))

(declare-fun b!6968948 () Bool)

(declare-fun tp!1922986 () Bool)

(declare-fun tp!1922985 () Bool)

(assert (=> b!6968948 (= e!4189246 (and tp!1922986 tp!1922985))))

(declare-fun b!6968946 () Bool)

(declare-fun tp!1922983 () Bool)

(declare-fun tp!1922982 () Bool)

(assert (=> b!6968946 (= e!4189246 (and tp!1922983 tp!1922982))))

(declare-fun b!6968945 () Bool)

(assert (=> b!6968945 (= e!4189246 tp_is_empty!43463)))

(declare-fun b!6968947 () Bool)

(declare-fun tp!1922984 () Bool)

(assert (=> b!6968947 (= e!4189246 tp!1922984)))

(assert (= (and b!6967410 ((_ is ElementMatch!17119) (regOne!34750 (regTwo!34750 (reg!17448 r!13765))))) b!6968945))

(assert (= (and b!6967410 ((_ is Concat!25964) (regOne!34750 (regTwo!34750 (reg!17448 r!13765))))) b!6968946))

(assert (= (and b!6967410 ((_ is Star!17119) (regOne!34750 (regTwo!34750 (reg!17448 r!13765))))) b!6968947))

(assert (= (and b!6967410 ((_ is Union!17119) (regOne!34750 (regTwo!34750 (reg!17448 r!13765))))) b!6968948))

(declare-fun e!4189247 () Bool)

(assert (=> b!6967410 (= tp!1921767 e!4189247)))

(declare-fun b!6968952 () Bool)

(declare-fun tp!1922991 () Bool)

(declare-fun tp!1922990 () Bool)

(assert (=> b!6968952 (= e!4189247 (and tp!1922991 tp!1922990))))

(declare-fun b!6968950 () Bool)

(declare-fun tp!1922988 () Bool)

(declare-fun tp!1922987 () Bool)

(assert (=> b!6968950 (= e!4189247 (and tp!1922988 tp!1922987))))

(declare-fun b!6968949 () Bool)

(assert (=> b!6968949 (= e!4189247 tp_is_empty!43463)))

(declare-fun b!6968951 () Bool)

(declare-fun tp!1922989 () Bool)

(assert (=> b!6968951 (= e!4189247 tp!1922989)))

(assert (= (and b!6967410 ((_ is ElementMatch!17119) (regTwo!34750 (regTwo!34750 (reg!17448 r!13765))))) b!6968949))

(assert (= (and b!6967410 ((_ is Concat!25964) (regTwo!34750 (regTwo!34750 (reg!17448 r!13765))))) b!6968950))

(assert (= (and b!6967410 ((_ is Star!17119) (regTwo!34750 (regTwo!34750 (reg!17448 r!13765))))) b!6968951))

(assert (= (and b!6967410 ((_ is Union!17119) (regTwo!34750 (regTwo!34750 (reg!17448 r!13765))))) b!6968952))

(declare-fun e!4189248 () Bool)

(assert (=> b!6967396 (= tp!1921751 e!4189248)))

(declare-fun b!6968956 () Bool)

(declare-fun tp!1922996 () Bool)

(declare-fun tp!1922995 () Bool)

(assert (=> b!6968956 (= e!4189248 (and tp!1922996 tp!1922995))))

(declare-fun b!6968954 () Bool)

(declare-fun tp!1922993 () Bool)

(declare-fun tp!1922992 () Bool)

(assert (=> b!6968954 (= e!4189248 (and tp!1922993 tp!1922992))))

(declare-fun b!6968953 () Bool)

(assert (=> b!6968953 (= e!4189248 tp_is_empty!43463)))

(declare-fun b!6968955 () Bool)

(declare-fun tp!1922994 () Bool)

(assert (=> b!6968955 (= e!4189248 tp!1922994)))

(assert (= (and b!6967396 ((_ is ElementMatch!17119) (regOne!34751 (regOne!34750 (regOne!34751 r!13765))))) b!6968953))

(assert (= (and b!6967396 ((_ is Concat!25964) (regOne!34751 (regOne!34750 (regOne!34751 r!13765))))) b!6968954))

(assert (= (and b!6967396 ((_ is Star!17119) (regOne!34751 (regOne!34750 (regOne!34751 r!13765))))) b!6968955))

(assert (= (and b!6967396 ((_ is Union!17119) (regOne!34751 (regOne!34750 (regOne!34751 r!13765))))) b!6968956))

(declare-fun e!4189249 () Bool)

(assert (=> b!6967396 (= tp!1921750 e!4189249)))

(declare-fun b!6968960 () Bool)

(declare-fun tp!1923001 () Bool)

(declare-fun tp!1923000 () Bool)

(assert (=> b!6968960 (= e!4189249 (and tp!1923001 tp!1923000))))

(declare-fun b!6968958 () Bool)

(declare-fun tp!1922998 () Bool)

(declare-fun tp!1922997 () Bool)

(assert (=> b!6968958 (= e!4189249 (and tp!1922998 tp!1922997))))

(declare-fun b!6968957 () Bool)

(assert (=> b!6968957 (= e!4189249 tp_is_empty!43463)))

(declare-fun b!6968959 () Bool)

(declare-fun tp!1922999 () Bool)

(assert (=> b!6968959 (= e!4189249 tp!1922999)))

(assert (= (and b!6967396 ((_ is ElementMatch!17119) (regTwo!34751 (regOne!34750 (regOne!34751 r!13765))))) b!6968957))

(assert (= (and b!6967396 ((_ is Concat!25964) (regTwo!34751 (regOne!34750 (regOne!34751 r!13765))))) b!6968958))

(assert (= (and b!6967396 ((_ is Star!17119) (regTwo!34751 (regOne!34750 (regOne!34751 r!13765))))) b!6968959))

(assert (= (and b!6967396 ((_ is Union!17119) (regTwo!34751 (regOne!34750 (regOne!34751 r!13765))))) b!6968960))

(declare-fun e!4189250 () Bool)

(assert (=> b!6967387 (= tp!1921739 e!4189250)))

(declare-fun b!6968964 () Bool)

(declare-fun tp!1923006 () Bool)

(declare-fun tp!1923005 () Bool)

(assert (=> b!6968964 (= e!4189250 (and tp!1923006 tp!1923005))))

(declare-fun b!6968962 () Bool)

(declare-fun tp!1923003 () Bool)

(declare-fun tp!1923002 () Bool)

(assert (=> b!6968962 (= e!4189250 (and tp!1923003 tp!1923002))))

(declare-fun b!6968961 () Bool)

(assert (=> b!6968961 (= e!4189250 tp_is_empty!43463)))

(declare-fun b!6968963 () Bool)

(declare-fun tp!1923004 () Bool)

(assert (=> b!6968963 (= e!4189250 tp!1923004)))

(assert (= (and b!6967387 ((_ is ElementMatch!17119) (reg!17448 (regTwo!34751 (h!73243 l!9142))))) b!6968961))

(assert (= (and b!6967387 ((_ is Concat!25964) (reg!17448 (regTwo!34751 (h!73243 l!9142))))) b!6968962))

(assert (= (and b!6967387 ((_ is Star!17119) (reg!17448 (regTwo!34751 (h!73243 l!9142))))) b!6968963))

(assert (= (and b!6967387 ((_ is Union!17119) (reg!17448 (regTwo!34751 (h!73243 l!9142))))) b!6968964))

(declare-fun e!4189251 () Bool)

(assert (=> b!6967378 (= tp!1921728 e!4189251)))

(declare-fun b!6968968 () Bool)

(declare-fun tp!1923011 () Bool)

(declare-fun tp!1923010 () Bool)

(assert (=> b!6968968 (= e!4189251 (and tp!1923011 tp!1923010))))

(declare-fun b!6968966 () Bool)

(declare-fun tp!1923008 () Bool)

(declare-fun tp!1923007 () Bool)

(assert (=> b!6968966 (= e!4189251 (and tp!1923008 tp!1923007))))

(declare-fun b!6968965 () Bool)

(assert (=> b!6968965 (= e!4189251 tp_is_empty!43463)))

(declare-fun b!6968967 () Bool)

(declare-fun tp!1923009 () Bool)

(assert (=> b!6968967 (= e!4189251 tp!1923009)))

(assert (= (and b!6967378 ((_ is ElementMatch!17119) (regOne!34750 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968965))

(assert (= (and b!6967378 ((_ is Concat!25964) (regOne!34750 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968966))

(assert (= (and b!6967378 ((_ is Star!17119) (regOne!34750 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968967))

(assert (= (and b!6967378 ((_ is Union!17119) (regOne!34750 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968968))

(declare-fun e!4189252 () Bool)

(assert (=> b!6967378 (= tp!1921727 e!4189252)))

(declare-fun b!6968972 () Bool)

(declare-fun tp!1923016 () Bool)

(declare-fun tp!1923015 () Bool)

(assert (=> b!6968972 (= e!4189252 (and tp!1923016 tp!1923015))))

(declare-fun b!6968970 () Bool)

(declare-fun tp!1923013 () Bool)

(declare-fun tp!1923012 () Bool)

(assert (=> b!6968970 (= e!4189252 (and tp!1923013 tp!1923012))))

(declare-fun b!6968969 () Bool)

(assert (=> b!6968969 (= e!4189252 tp_is_empty!43463)))

(declare-fun b!6968971 () Bool)

(declare-fun tp!1923014 () Bool)

(assert (=> b!6968971 (= e!4189252 tp!1923014)))

(assert (= (and b!6967378 ((_ is ElementMatch!17119) (regTwo!34750 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968969))

(assert (= (and b!6967378 ((_ is Concat!25964) (regTwo!34750 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968970))

(assert (= (and b!6967378 ((_ is Star!17119) (regTwo!34750 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968971))

(assert (= (and b!6967378 ((_ is Union!17119) (regTwo!34750 (regTwo!34750 (regTwo!34750 r!13765))))) b!6968972))

(declare-fun e!4189253 () Bool)

(assert (=> b!6967464 (= tp!1921835 e!4189253)))

(declare-fun b!6968976 () Bool)

(declare-fun tp!1923021 () Bool)

(declare-fun tp!1923020 () Bool)

(assert (=> b!6968976 (= e!4189253 (and tp!1923021 tp!1923020))))

(declare-fun b!6968974 () Bool)

(declare-fun tp!1923018 () Bool)

(declare-fun tp!1923017 () Bool)

(assert (=> b!6968974 (= e!4189253 (and tp!1923018 tp!1923017))))

(declare-fun b!6968973 () Bool)

(assert (=> b!6968973 (= e!4189253 tp_is_empty!43463)))

(declare-fun b!6968975 () Bool)

(declare-fun tp!1923019 () Bool)

(assert (=> b!6968975 (= e!4189253 tp!1923019)))

(assert (= (and b!6967464 ((_ is ElementMatch!17119) (reg!17448 (reg!17448 (reg!17448 r!13765))))) b!6968973))

(assert (= (and b!6967464 ((_ is Concat!25964) (reg!17448 (reg!17448 (reg!17448 r!13765))))) b!6968974))

(assert (= (and b!6967464 ((_ is Star!17119) (reg!17448 (reg!17448 (reg!17448 r!13765))))) b!6968975))

(assert (= (and b!6967464 ((_ is Union!17119) (reg!17448 (reg!17448 (reg!17448 r!13765))))) b!6968976))

(declare-fun e!4189254 () Bool)

(assert (=> b!6967455 (= tp!1921824 e!4189254)))

(declare-fun b!6968980 () Bool)

(declare-fun tp!1923026 () Bool)

(declare-fun tp!1923025 () Bool)

(assert (=> b!6968980 (= e!4189254 (and tp!1923026 tp!1923025))))

(declare-fun b!6968978 () Bool)

(declare-fun tp!1923023 () Bool)

(declare-fun tp!1923022 () Bool)

(assert (=> b!6968978 (= e!4189254 (and tp!1923023 tp!1923022))))

(declare-fun b!6968977 () Bool)

(assert (=> b!6968977 (= e!4189254 tp_is_empty!43463)))

(declare-fun b!6968979 () Bool)

(declare-fun tp!1923024 () Bool)

(assert (=> b!6968979 (= e!4189254 tp!1923024)))

(assert (= (and b!6967455 ((_ is ElementMatch!17119) (regOne!34750 (regOne!34751 (regTwo!34750 r!13765))))) b!6968977))

(assert (= (and b!6967455 ((_ is Concat!25964) (regOne!34750 (regOne!34751 (regTwo!34750 r!13765))))) b!6968978))

(assert (= (and b!6967455 ((_ is Star!17119) (regOne!34750 (regOne!34751 (regTwo!34750 r!13765))))) b!6968979))

(assert (= (and b!6967455 ((_ is Union!17119) (regOne!34750 (regOne!34751 (regTwo!34750 r!13765))))) b!6968980))

(declare-fun e!4189255 () Bool)

(assert (=> b!6967455 (= tp!1921823 e!4189255)))

(declare-fun b!6968984 () Bool)

(declare-fun tp!1923031 () Bool)

(declare-fun tp!1923030 () Bool)

(assert (=> b!6968984 (= e!4189255 (and tp!1923031 tp!1923030))))

(declare-fun b!6968982 () Bool)

(declare-fun tp!1923028 () Bool)

(declare-fun tp!1923027 () Bool)

(assert (=> b!6968982 (= e!4189255 (and tp!1923028 tp!1923027))))

(declare-fun b!6968981 () Bool)

(assert (=> b!6968981 (= e!4189255 tp_is_empty!43463)))

(declare-fun b!6968983 () Bool)

(declare-fun tp!1923029 () Bool)

(assert (=> b!6968983 (= e!4189255 tp!1923029)))

(assert (= (and b!6967455 ((_ is ElementMatch!17119) (regTwo!34750 (regOne!34751 (regTwo!34750 r!13765))))) b!6968981))

(assert (= (and b!6967455 ((_ is Concat!25964) (regTwo!34750 (regOne!34751 (regTwo!34750 r!13765))))) b!6968982))

(assert (= (and b!6967455 ((_ is Star!17119) (regTwo!34750 (regOne!34751 (regTwo!34750 r!13765))))) b!6968983))

(assert (= (and b!6967455 ((_ is Union!17119) (regTwo!34750 (regOne!34751 (regTwo!34750 r!13765))))) b!6968984))

(declare-fun e!4189256 () Bool)

(assert (=> b!6967345 (= tp!1921686 e!4189256)))

(declare-fun b!6968988 () Bool)

(declare-fun tp!1923036 () Bool)

(declare-fun tp!1923035 () Bool)

(assert (=> b!6968988 (= e!4189256 (and tp!1923036 tp!1923035))))

(declare-fun b!6968986 () Bool)

(declare-fun tp!1923033 () Bool)

(declare-fun tp!1923032 () Bool)

(assert (=> b!6968986 (= e!4189256 (and tp!1923033 tp!1923032))))

(declare-fun b!6968985 () Bool)

(assert (=> b!6968985 (= e!4189256 tp_is_empty!43463)))

(declare-fun b!6968987 () Bool)

(declare-fun tp!1923034 () Bool)

(assert (=> b!6968987 (= e!4189256 tp!1923034)))

(assert (= (and b!6967345 ((_ is ElementMatch!17119) (regOne!34750 (regTwo!34751 (reg!17448 r!13765))))) b!6968985))

(assert (= (and b!6967345 ((_ is Concat!25964) (regOne!34750 (regTwo!34751 (reg!17448 r!13765))))) b!6968986))

(assert (= (and b!6967345 ((_ is Star!17119) (regOne!34750 (regTwo!34751 (reg!17448 r!13765))))) b!6968987))

(assert (= (and b!6967345 ((_ is Union!17119) (regOne!34750 (regTwo!34751 (reg!17448 r!13765))))) b!6968988))

(declare-fun e!4189257 () Bool)

(assert (=> b!6967345 (= tp!1921685 e!4189257)))

(declare-fun b!6968992 () Bool)

(declare-fun tp!1923041 () Bool)

(declare-fun tp!1923040 () Bool)

(assert (=> b!6968992 (= e!4189257 (and tp!1923041 tp!1923040))))

(declare-fun b!6968990 () Bool)

(declare-fun tp!1923038 () Bool)

(declare-fun tp!1923037 () Bool)

(assert (=> b!6968990 (= e!4189257 (and tp!1923038 tp!1923037))))

(declare-fun b!6968989 () Bool)

(assert (=> b!6968989 (= e!4189257 tp_is_empty!43463)))

(declare-fun b!6968991 () Bool)

(declare-fun tp!1923039 () Bool)

(assert (=> b!6968991 (= e!4189257 tp!1923039)))

(assert (= (and b!6967345 ((_ is ElementMatch!17119) (regTwo!34750 (regTwo!34751 (reg!17448 r!13765))))) b!6968989))

(assert (= (and b!6967345 ((_ is Concat!25964) (regTwo!34750 (regTwo!34751 (reg!17448 r!13765))))) b!6968990))

(assert (= (and b!6967345 ((_ is Star!17119) (regTwo!34750 (regTwo!34751 (reg!17448 r!13765))))) b!6968991))

(assert (= (and b!6967345 ((_ is Union!17119) (regTwo!34750 (regTwo!34751 (reg!17448 r!13765))))) b!6968992))

(declare-fun e!4189258 () Bool)

(assert (=> b!6967439 (= tp!1921804 e!4189258)))

(declare-fun b!6968996 () Bool)

(declare-fun tp!1923046 () Bool)

(declare-fun tp!1923045 () Bool)

(assert (=> b!6968996 (= e!4189258 (and tp!1923046 tp!1923045))))

(declare-fun b!6968994 () Bool)

(declare-fun tp!1923043 () Bool)

(declare-fun tp!1923042 () Bool)

(assert (=> b!6968994 (= e!4189258 (and tp!1923043 tp!1923042))))

(declare-fun b!6968993 () Bool)

(assert (=> b!6968993 (= e!4189258 tp_is_empty!43463)))

(declare-fun b!6968995 () Bool)

(declare-fun tp!1923044 () Bool)

(assert (=> b!6968995 (= e!4189258 tp!1923044)))

(assert (= (and b!6967439 ((_ is ElementMatch!17119) (reg!17448 (regTwo!34751 (regTwo!34751 r!13765))))) b!6968993))

(assert (= (and b!6967439 ((_ is Concat!25964) (reg!17448 (regTwo!34751 (regTwo!34751 r!13765))))) b!6968994))

(assert (= (and b!6967439 ((_ is Star!17119) (reg!17448 (regTwo!34751 (regTwo!34751 r!13765))))) b!6968995))

(assert (= (and b!6967439 ((_ is Union!17119) (reg!17448 (regTwo!34751 (regTwo!34751 r!13765))))) b!6968996))

(declare-fun e!4189259 () Bool)

(assert (=> b!6967430 (= tp!1921793 e!4189259)))

(declare-fun b!6969000 () Bool)

(declare-fun tp!1923051 () Bool)

(declare-fun tp!1923050 () Bool)

(assert (=> b!6969000 (= e!4189259 (and tp!1923051 tp!1923050))))

(declare-fun b!6968998 () Bool)

(declare-fun tp!1923048 () Bool)

(declare-fun tp!1923047 () Bool)

(assert (=> b!6968998 (= e!4189259 (and tp!1923048 tp!1923047))))

(declare-fun b!6968997 () Bool)

(assert (=> b!6968997 (= e!4189259 tp_is_empty!43463)))

(declare-fun b!6968999 () Bool)

(declare-fun tp!1923049 () Bool)

(assert (=> b!6968999 (= e!4189259 tp!1923049)))

(assert (= (and b!6967430 ((_ is ElementMatch!17119) (regOne!34750 (regTwo!34750 (regOne!34750 r!13765))))) b!6968997))

(assert (= (and b!6967430 ((_ is Concat!25964) (regOne!34750 (regTwo!34750 (regOne!34750 r!13765))))) b!6968998))

(assert (= (and b!6967430 ((_ is Star!17119) (regOne!34750 (regTwo!34750 (regOne!34750 r!13765))))) b!6968999))

(assert (= (and b!6967430 ((_ is Union!17119) (regOne!34750 (regTwo!34750 (regOne!34750 r!13765))))) b!6969000))

(declare-fun e!4189260 () Bool)

(assert (=> b!6967430 (= tp!1921792 e!4189260)))

(declare-fun b!6969004 () Bool)

(declare-fun tp!1923056 () Bool)

(declare-fun tp!1923055 () Bool)

(assert (=> b!6969004 (= e!4189260 (and tp!1923056 tp!1923055))))

(declare-fun b!6969002 () Bool)

(declare-fun tp!1923053 () Bool)

(declare-fun tp!1923052 () Bool)

(assert (=> b!6969002 (= e!4189260 (and tp!1923053 tp!1923052))))

(declare-fun b!6969001 () Bool)

(assert (=> b!6969001 (= e!4189260 tp_is_empty!43463)))

(declare-fun b!6969003 () Bool)

(declare-fun tp!1923054 () Bool)

(assert (=> b!6969003 (= e!4189260 tp!1923054)))

(assert (= (and b!6967430 ((_ is ElementMatch!17119) (regTwo!34750 (regTwo!34750 (regOne!34750 r!13765))))) b!6969001))

(assert (= (and b!6967430 ((_ is Concat!25964) (regTwo!34750 (regTwo!34750 (regOne!34750 r!13765))))) b!6969002))

(assert (= (and b!6967430 ((_ is Star!17119) (regTwo!34750 (regTwo!34750 (regOne!34750 r!13765))))) b!6969003))

(assert (= (and b!6967430 ((_ is Union!17119) (regTwo!34750 (regTwo!34750 (regOne!34750 r!13765))))) b!6969004))

(declare-fun e!4189261 () Bool)

(assert (=> b!6967364 (= tp!1921711 e!4189261)))

(declare-fun b!6969008 () Bool)

(declare-fun tp!1923061 () Bool)

(declare-fun tp!1923060 () Bool)

(assert (=> b!6969008 (= e!4189261 (and tp!1923061 tp!1923060))))

(declare-fun b!6969006 () Bool)

(declare-fun tp!1923058 () Bool)

(declare-fun tp!1923057 () Bool)

(assert (=> b!6969006 (= e!4189261 (and tp!1923058 tp!1923057))))

(declare-fun b!6969005 () Bool)

(assert (=> b!6969005 (= e!4189261 tp_is_empty!43463)))

(declare-fun b!6969007 () Bool)

(declare-fun tp!1923059 () Bool)

(assert (=> b!6969007 (= e!4189261 tp!1923059)))

(assert (= (and b!6967364 ((_ is ElementMatch!17119) (regOne!34751 (reg!17448 (h!73243 l!9142))))) b!6969005))

(assert (= (and b!6967364 ((_ is Concat!25964) (regOne!34751 (reg!17448 (h!73243 l!9142))))) b!6969006))

(assert (= (and b!6967364 ((_ is Star!17119) (regOne!34751 (reg!17448 (h!73243 l!9142))))) b!6969007))

(assert (= (and b!6967364 ((_ is Union!17119) (regOne!34751 (reg!17448 (h!73243 l!9142))))) b!6969008))

(declare-fun e!4189262 () Bool)

(assert (=> b!6967364 (= tp!1921710 e!4189262)))

(declare-fun b!6969012 () Bool)

(declare-fun tp!1923066 () Bool)

(declare-fun tp!1923065 () Bool)

(assert (=> b!6969012 (= e!4189262 (and tp!1923066 tp!1923065))))

(declare-fun b!6969010 () Bool)

(declare-fun tp!1923063 () Bool)

(declare-fun tp!1923062 () Bool)

(assert (=> b!6969010 (= e!4189262 (and tp!1923063 tp!1923062))))

(declare-fun b!6969009 () Bool)

(assert (=> b!6969009 (= e!4189262 tp_is_empty!43463)))

(declare-fun b!6969011 () Bool)

(declare-fun tp!1923064 () Bool)

(assert (=> b!6969011 (= e!4189262 tp!1923064)))

(assert (= (and b!6967364 ((_ is ElementMatch!17119) (regTwo!34751 (reg!17448 (h!73243 l!9142))))) b!6969009))

(assert (= (and b!6967364 ((_ is Concat!25964) (regTwo!34751 (reg!17448 (h!73243 l!9142))))) b!6969010))

(assert (= (and b!6967364 ((_ is Star!17119) (regTwo!34751 (reg!17448 (h!73243 l!9142))))) b!6969011))

(assert (= (and b!6967364 ((_ is Union!17119) (regTwo!34751 (reg!17448 (h!73243 l!9142))))) b!6969012))

(declare-fun e!4189263 () Bool)

(assert (=> b!6967355 (= tp!1921699 e!4189263)))

(declare-fun b!6969016 () Bool)

(declare-fun tp!1923071 () Bool)

(declare-fun tp!1923070 () Bool)

(assert (=> b!6969016 (= e!4189263 (and tp!1923071 tp!1923070))))

(declare-fun b!6969014 () Bool)

(declare-fun tp!1923068 () Bool)

(declare-fun tp!1923067 () Bool)

(assert (=> b!6969014 (= e!4189263 (and tp!1923068 tp!1923067))))

(declare-fun b!6969013 () Bool)

(assert (=> b!6969013 (= e!4189263 tp_is_empty!43463)))

(declare-fun b!6969015 () Bool)

(declare-fun tp!1923069 () Bool)

(assert (=> b!6969015 (= e!4189263 tp!1923069)))

(assert (= (and b!6967355 ((_ is ElementMatch!17119) (reg!17448 (regOne!34750 (regTwo!34751 r!13765))))) b!6969013))

(assert (= (and b!6967355 ((_ is Concat!25964) (reg!17448 (regOne!34750 (regTwo!34751 r!13765))))) b!6969014))

(assert (= (and b!6967355 ((_ is Star!17119) (reg!17448 (regOne!34750 (regTwo!34751 r!13765))))) b!6969015))

(assert (= (and b!6967355 ((_ is Union!17119) (reg!17448 (regOne!34750 (regTwo!34751 r!13765))))) b!6969016))

(declare-fun e!4189264 () Bool)

(assert (=> b!6967416 (= tp!1921776 e!4189264)))

(declare-fun b!6969020 () Bool)

(declare-fun tp!1923076 () Bool)

(declare-fun tp!1923075 () Bool)

(assert (=> b!6969020 (= e!4189264 (and tp!1923076 tp!1923075))))

(declare-fun b!6969018 () Bool)

(declare-fun tp!1923073 () Bool)

(declare-fun tp!1923072 () Bool)

(assert (=> b!6969018 (= e!4189264 (and tp!1923073 tp!1923072))))

(declare-fun b!6969017 () Bool)

(assert (=> b!6969017 (= e!4189264 tp_is_empty!43463)))

(declare-fun b!6969019 () Bool)

(declare-fun tp!1923074 () Bool)

(assert (=> b!6969019 (= e!4189264 tp!1923074)))

(assert (= (and b!6967416 ((_ is ElementMatch!17119) (regOne!34751 (regOne!34751 (regOne!34751 r!13765))))) b!6969017))

(assert (= (and b!6967416 ((_ is Concat!25964) (regOne!34751 (regOne!34751 (regOne!34751 r!13765))))) b!6969018))

(assert (= (and b!6967416 ((_ is Star!17119) (regOne!34751 (regOne!34751 (regOne!34751 r!13765))))) b!6969019))

(assert (= (and b!6967416 ((_ is Union!17119) (regOne!34751 (regOne!34751 (regOne!34751 r!13765))))) b!6969020))

(declare-fun e!4189265 () Bool)

(assert (=> b!6967416 (= tp!1921775 e!4189265)))

(declare-fun b!6969024 () Bool)

(declare-fun tp!1923081 () Bool)

(declare-fun tp!1923080 () Bool)

(assert (=> b!6969024 (= e!4189265 (and tp!1923081 tp!1923080))))

(declare-fun b!6969022 () Bool)

(declare-fun tp!1923078 () Bool)

(declare-fun tp!1923077 () Bool)

(assert (=> b!6969022 (= e!4189265 (and tp!1923078 tp!1923077))))

(declare-fun b!6969021 () Bool)

(assert (=> b!6969021 (= e!4189265 tp_is_empty!43463)))

(declare-fun b!6969023 () Bool)

(declare-fun tp!1923079 () Bool)

(assert (=> b!6969023 (= e!4189265 tp!1923079)))

(assert (= (and b!6967416 ((_ is ElementMatch!17119) (regTwo!34751 (regOne!34751 (regOne!34751 r!13765))))) b!6969021))

(assert (= (and b!6967416 ((_ is Concat!25964) (regTwo!34751 (regOne!34751 (regOne!34751 r!13765))))) b!6969022))

(assert (= (and b!6967416 ((_ is Star!17119) (regTwo!34751 (regOne!34751 (regOne!34751 r!13765))))) b!6969023))

(assert (= (and b!6967416 ((_ is Union!17119) (regTwo!34751 (regOne!34751 (regOne!34751 r!13765))))) b!6969024))

(declare-fun e!4189266 () Bool)

(assert (=> b!6967407 (= tp!1921764 e!4189266)))

(declare-fun b!6969028 () Bool)

(declare-fun tp!1923086 () Bool)

(declare-fun tp!1923085 () Bool)

(assert (=> b!6969028 (= e!4189266 (and tp!1923086 tp!1923085))))

(declare-fun b!6969026 () Bool)

(declare-fun tp!1923083 () Bool)

(declare-fun tp!1923082 () Bool)

(assert (=> b!6969026 (= e!4189266 (and tp!1923083 tp!1923082))))

(declare-fun b!6969025 () Bool)

(assert (=> b!6969025 (= e!4189266 tp_is_empty!43463)))

(declare-fun b!6969027 () Bool)

(declare-fun tp!1923084 () Bool)

(assert (=> b!6969027 (= e!4189266 tp!1923084)))

(assert (= (and b!6967407 ((_ is ElementMatch!17119) (reg!17448 (regOne!34750 (reg!17448 r!13765))))) b!6969025))

(assert (= (and b!6967407 ((_ is Concat!25964) (reg!17448 (regOne!34750 (reg!17448 r!13765))))) b!6969026))

(assert (= (and b!6967407 ((_ is Star!17119) (reg!17448 (regOne!34750 (reg!17448 r!13765))))) b!6969027))

(assert (= (and b!6967407 ((_ is Union!17119) (reg!17448 (regOne!34750 (reg!17448 r!13765))))) b!6969028))

(declare-fun e!4189267 () Bool)

(assert (=> b!6967398 (= tp!1921753 e!4189267)))

(declare-fun b!6969032 () Bool)

(declare-fun tp!1923091 () Bool)

(declare-fun tp!1923090 () Bool)

(assert (=> b!6969032 (= e!4189267 (and tp!1923091 tp!1923090))))

(declare-fun b!6969030 () Bool)

(declare-fun tp!1923088 () Bool)

(declare-fun tp!1923087 () Bool)

(assert (=> b!6969030 (= e!4189267 (and tp!1923088 tp!1923087))))

(declare-fun b!6969029 () Bool)

(assert (=> b!6969029 (= e!4189267 tp_is_empty!43463)))

(declare-fun b!6969031 () Bool)

(declare-fun tp!1923089 () Bool)

(assert (=> b!6969031 (= e!4189267 tp!1923089)))

(assert (= (and b!6967398 ((_ is ElementMatch!17119) (regOne!34750 (regTwo!34750 (regOne!34751 r!13765))))) b!6969029))

(assert (= (and b!6967398 ((_ is Concat!25964) (regOne!34750 (regTwo!34750 (regOne!34751 r!13765))))) b!6969030))

(assert (= (and b!6967398 ((_ is Star!17119) (regOne!34750 (regTwo!34750 (regOne!34751 r!13765))))) b!6969031))

(assert (= (and b!6967398 ((_ is Union!17119) (regOne!34750 (regTwo!34750 (regOne!34751 r!13765))))) b!6969032))

(declare-fun e!4189268 () Bool)

(assert (=> b!6967398 (= tp!1921752 e!4189268)))

(declare-fun b!6969036 () Bool)

(declare-fun tp!1923096 () Bool)

(declare-fun tp!1923095 () Bool)

(assert (=> b!6969036 (= e!4189268 (and tp!1923096 tp!1923095))))

(declare-fun b!6969034 () Bool)

(declare-fun tp!1923093 () Bool)

(declare-fun tp!1923092 () Bool)

(assert (=> b!6969034 (= e!4189268 (and tp!1923093 tp!1923092))))

(declare-fun b!6969033 () Bool)

(assert (=> b!6969033 (= e!4189268 tp_is_empty!43463)))

(declare-fun b!6969035 () Bool)

(declare-fun tp!1923094 () Bool)

(assert (=> b!6969035 (= e!4189268 tp!1923094)))

(assert (= (and b!6967398 ((_ is ElementMatch!17119) (regTwo!34750 (regTwo!34750 (regOne!34751 r!13765))))) b!6969033))

(assert (= (and b!6967398 ((_ is Concat!25964) (regTwo!34750 (regTwo!34750 (regOne!34751 r!13765))))) b!6969034))

(assert (= (and b!6967398 ((_ is Star!17119) (regTwo!34750 (regTwo!34750 (regOne!34751 r!13765))))) b!6969035))

(assert (= (and b!6967398 ((_ is Union!17119) (regTwo!34750 (regTwo!34750 (regOne!34751 r!13765))))) b!6969036))

(declare-fun e!4189269 () Bool)

(assert (=> b!6967384 (= tp!1921736 e!4189269)))

(declare-fun b!6969040 () Bool)

(declare-fun tp!1923101 () Bool)

(declare-fun tp!1923100 () Bool)

(assert (=> b!6969040 (= e!4189269 (and tp!1923101 tp!1923100))))

(declare-fun b!6969038 () Bool)

(declare-fun tp!1923098 () Bool)

(declare-fun tp!1923097 () Bool)

(assert (=> b!6969038 (= e!4189269 (and tp!1923098 tp!1923097))))

(declare-fun b!6969037 () Bool)

(assert (=> b!6969037 (= e!4189269 tp_is_empty!43463)))

(declare-fun b!6969039 () Bool)

(declare-fun tp!1923099 () Bool)

(assert (=> b!6969039 (= e!4189269 tp!1923099)))

(assert (= (and b!6967384 ((_ is ElementMatch!17119) (regOne!34751 (regOne!34751 (h!73243 l!9142))))) b!6969037))

(assert (= (and b!6967384 ((_ is Concat!25964) (regOne!34751 (regOne!34751 (h!73243 l!9142))))) b!6969038))

(assert (= (and b!6967384 ((_ is Star!17119) (regOne!34751 (regOne!34751 (h!73243 l!9142))))) b!6969039))

(assert (= (and b!6967384 ((_ is Union!17119) (regOne!34751 (regOne!34751 (h!73243 l!9142))))) b!6969040))

(declare-fun e!4189270 () Bool)

(assert (=> b!6967384 (= tp!1921735 e!4189270)))

(declare-fun b!6969044 () Bool)

(declare-fun tp!1923106 () Bool)

(declare-fun tp!1923105 () Bool)

(assert (=> b!6969044 (= e!4189270 (and tp!1923106 tp!1923105))))

(declare-fun b!6969042 () Bool)

(declare-fun tp!1923103 () Bool)

(declare-fun tp!1923102 () Bool)

(assert (=> b!6969042 (= e!4189270 (and tp!1923103 tp!1923102))))

(declare-fun b!6969041 () Bool)

(assert (=> b!6969041 (= e!4189270 tp_is_empty!43463)))

(declare-fun b!6969043 () Bool)

(declare-fun tp!1923104 () Bool)

(assert (=> b!6969043 (= e!4189270 tp!1923104)))

(assert (= (and b!6967384 ((_ is ElementMatch!17119) (regTwo!34751 (regOne!34751 (h!73243 l!9142))))) b!6969041))

(assert (= (and b!6967384 ((_ is Concat!25964) (regTwo!34751 (regOne!34751 (h!73243 l!9142))))) b!6969042))

(assert (= (and b!6967384 ((_ is Star!17119) (regTwo!34751 (regOne!34751 (h!73243 l!9142))))) b!6969043))

(assert (= (and b!6967384 ((_ is Union!17119) (regTwo!34751 (regOne!34751 (h!73243 l!9142))))) b!6969044))

(declare-fun e!4189271 () Bool)

(assert (=> b!6967375 (= tp!1921724 e!4189271)))

(declare-fun b!6969048 () Bool)

(declare-fun tp!1923111 () Bool)

(declare-fun tp!1923110 () Bool)

(assert (=> b!6969048 (= e!4189271 (and tp!1923111 tp!1923110))))

(declare-fun b!6969046 () Bool)

(declare-fun tp!1923108 () Bool)

(declare-fun tp!1923107 () Bool)

(assert (=> b!6969046 (= e!4189271 (and tp!1923108 tp!1923107))))

(declare-fun b!6969045 () Bool)

(assert (=> b!6969045 (= e!4189271 tp_is_empty!43463)))

(declare-fun b!6969047 () Bool)

(declare-fun tp!1923109 () Bool)

(assert (=> b!6969047 (= e!4189271 tp!1923109)))

(assert (= (and b!6967375 ((_ is ElementMatch!17119) (reg!17448 (regOne!34750 (regTwo!34750 r!13765))))) b!6969045))

(assert (= (and b!6967375 ((_ is Concat!25964) (reg!17448 (regOne!34750 (regTwo!34750 r!13765))))) b!6969046))

(assert (= (and b!6967375 ((_ is Star!17119) (reg!17448 (regOne!34750 (regTwo!34750 r!13765))))) b!6969047))

(assert (= (and b!6967375 ((_ is Union!17119) (reg!17448 (regOne!34750 (regTwo!34750 r!13765))))) b!6969048))

(declare-fun e!4189272 () Bool)

(assert (=> b!6967366 (= tp!1921713 e!4189272)))

(declare-fun b!6969052 () Bool)

(declare-fun tp!1923116 () Bool)

(declare-fun tp!1923115 () Bool)

(assert (=> b!6969052 (= e!4189272 (and tp!1923116 tp!1923115))))

(declare-fun b!6969050 () Bool)

(declare-fun tp!1923113 () Bool)

(declare-fun tp!1923112 () Bool)

(assert (=> b!6969050 (= e!4189272 (and tp!1923113 tp!1923112))))

(declare-fun b!6969049 () Bool)

(assert (=> b!6969049 (= e!4189272 tp_is_empty!43463)))

(declare-fun b!6969051 () Bool)

(declare-fun tp!1923114 () Bool)

(assert (=> b!6969051 (= e!4189272 tp!1923114)))

(assert (= (and b!6967366 ((_ is ElementMatch!17119) (regOne!34750 (regOne!34750 (h!73243 l!9142))))) b!6969049))

(assert (= (and b!6967366 ((_ is Concat!25964) (regOne!34750 (regOne!34750 (h!73243 l!9142))))) b!6969050))

(assert (= (and b!6967366 ((_ is Star!17119) (regOne!34750 (regOne!34750 (h!73243 l!9142))))) b!6969051))

(assert (= (and b!6967366 ((_ is Union!17119) (regOne!34750 (regOne!34750 (h!73243 l!9142))))) b!6969052))

(declare-fun e!4189273 () Bool)

(assert (=> b!6967366 (= tp!1921712 e!4189273)))

(declare-fun b!6969056 () Bool)

(declare-fun tp!1923121 () Bool)

(declare-fun tp!1923120 () Bool)

(assert (=> b!6969056 (= e!4189273 (and tp!1923121 tp!1923120))))

(declare-fun b!6969054 () Bool)

(declare-fun tp!1923118 () Bool)

(declare-fun tp!1923117 () Bool)

(assert (=> b!6969054 (= e!4189273 (and tp!1923118 tp!1923117))))

(declare-fun b!6969053 () Bool)

(assert (=> b!6969053 (= e!4189273 tp_is_empty!43463)))

(declare-fun b!6969055 () Bool)

(declare-fun tp!1923119 () Bool)

(assert (=> b!6969055 (= e!4189273 tp!1923119)))

(assert (= (and b!6967366 ((_ is ElementMatch!17119) (regTwo!34750 (regOne!34750 (h!73243 l!9142))))) b!6969053))

(assert (= (and b!6967366 ((_ is Concat!25964) (regTwo!34750 (regOne!34750 (h!73243 l!9142))))) b!6969054))

(assert (= (and b!6967366 ((_ is Star!17119) (regTwo!34750 (regOne!34750 (h!73243 l!9142))))) b!6969055))

(assert (= (and b!6967366 ((_ is Union!17119) (regTwo!34750 (regOne!34750 (h!73243 l!9142))))) b!6969056))

(declare-fun e!4189274 () Bool)

(assert (=> b!6967461 (= tp!1921832 e!4189274)))

(declare-fun b!6969060 () Bool)

(declare-fun tp!1923126 () Bool)

(declare-fun tp!1923125 () Bool)

(assert (=> b!6969060 (= e!4189274 (and tp!1923126 tp!1923125))))

(declare-fun b!6969058 () Bool)

(declare-fun tp!1923123 () Bool)

(declare-fun tp!1923122 () Bool)

(assert (=> b!6969058 (= e!4189274 (and tp!1923123 tp!1923122))))

(declare-fun b!6969057 () Bool)

(assert (=> b!6969057 (= e!4189274 tp_is_empty!43463)))

(declare-fun b!6969059 () Bool)

(declare-fun tp!1923124 () Bool)

(assert (=> b!6969059 (= e!4189274 tp!1923124)))

(assert (= (and b!6967461 ((_ is ElementMatch!17119) (regOne!34751 (regTwo!34751 (regTwo!34750 r!13765))))) b!6969057))

(assert (= (and b!6967461 ((_ is Concat!25964) (regOne!34751 (regTwo!34751 (regTwo!34750 r!13765))))) b!6969058))

(assert (= (and b!6967461 ((_ is Star!17119) (regOne!34751 (regTwo!34751 (regTwo!34750 r!13765))))) b!6969059))

(assert (= (and b!6967461 ((_ is Union!17119) (regOne!34751 (regTwo!34751 (regTwo!34750 r!13765))))) b!6969060))

(declare-fun e!4189275 () Bool)

(assert (=> b!6967461 (= tp!1921831 e!4189275)))

(declare-fun b!6969064 () Bool)

(declare-fun tp!1923131 () Bool)

(declare-fun tp!1923130 () Bool)

(assert (=> b!6969064 (= e!4189275 (and tp!1923131 tp!1923130))))

(declare-fun b!6969062 () Bool)

(declare-fun tp!1923128 () Bool)

(declare-fun tp!1923127 () Bool)

(assert (=> b!6969062 (= e!4189275 (and tp!1923128 tp!1923127))))

(declare-fun b!6969061 () Bool)

(assert (=> b!6969061 (= e!4189275 tp_is_empty!43463)))

(declare-fun b!6969063 () Bool)

(declare-fun tp!1923129 () Bool)

(assert (=> b!6969063 (= e!4189275 tp!1923129)))

(assert (= (and b!6967461 ((_ is ElementMatch!17119) (regTwo!34751 (regTwo!34751 (regTwo!34750 r!13765))))) b!6969061))

(assert (= (and b!6967461 ((_ is Concat!25964) (regTwo!34751 (regTwo!34751 (regTwo!34750 r!13765))))) b!6969062))

(assert (= (and b!6967461 ((_ is Star!17119) (regTwo!34751 (regTwo!34751 (regTwo!34750 r!13765))))) b!6969063))

(assert (= (and b!6967461 ((_ is Union!17119) (regTwo!34751 (regTwo!34751 (regTwo!34750 r!13765))))) b!6969064))

(declare-fun e!4189276 () Bool)

(assert (=> b!6967351 (= tp!1921694 e!4189276)))

(declare-fun b!6969068 () Bool)

(declare-fun tp!1923136 () Bool)

(declare-fun tp!1923135 () Bool)

(assert (=> b!6969068 (= e!4189276 (and tp!1923136 tp!1923135))))

(declare-fun b!6969066 () Bool)

(declare-fun tp!1923133 () Bool)

(declare-fun tp!1923132 () Bool)

(assert (=> b!6969066 (= e!4189276 (and tp!1923133 tp!1923132))))

(declare-fun b!6969065 () Bool)

(assert (=> b!6969065 (= e!4189276 tp_is_empty!43463)))

(declare-fun b!6969067 () Bool)

(declare-fun tp!1923134 () Bool)

(assert (=> b!6969067 (= e!4189276 tp!1923134)))

(assert (= (and b!6967351 ((_ is ElementMatch!17119) (regOne!34751 (h!73243 (t!380662 l!9142))))) b!6969065))

(assert (= (and b!6967351 ((_ is Concat!25964) (regOne!34751 (h!73243 (t!380662 l!9142))))) b!6969066))

(assert (= (and b!6967351 ((_ is Star!17119) (regOne!34751 (h!73243 (t!380662 l!9142))))) b!6969067))

(assert (= (and b!6967351 ((_ is Union!17119) (regOne!34751 (h!73243 (t!380662 l!9142))))) b!6969068))

(declare-fun e!4189277 () Bool)

(assert (=> b!6967351 (= tp!1921693 e!4189277)))

(declare-fun b!6969072 () Bool)

(declare-fun tp!1923141 () Bool)

(declare-fun tp!1923140 () Bool)

(assert (=> b!6969072 (= e!4189277 (and tp!1923141 tp!1923140))))

(declare-fun b!6969070 () Bool)

(declare-fun tp!1923138 () Bool)

(declare-fun tp!1923137 () Bool)

(assert (=> b!6969070 (= e!4189277 (and tp!1923138 tp!1923137))))

(declare-fun b!6969069 () Bool)

(assert (=> b!6969069 (= e!4189277 tp_is_empty!43463)))

(declare-fun b!6969071 () Bool)

(declare-fun tp!1923139 () Bool)

(assert (=> b!6969071 (= e!4189277 tp!1923139)))

(assert (= (and b!6967351 ((_ is ElementMatch!17119) (regTwo!34751 (h!73243 (t!380662 l!9142))))) b!6969069))

(assert (= (and b!6967351 ((_ is Concat!25964) (regTwo!34751 (h!73243 (t!380662 l!9142))))) b!6969070))

(assert (= (and b!6967351 ((_ is Star!17119) (regTwo!34751 (h!73243 (t!380662 l!9142))))) b!6969071))

(assert (= (and b!6967351 ((_ is Union!17119) (regTwo!34751 (h!73243 (t!380662 l!9142))))) b!6969072))

(declare-fun e!4189278 () Bool)

(assert (=> b!6967452 (= tp!1921820 e!4189278)))

(declare-fun b!6969076 () Bool)

(declare-fun tp!1923146 () Bool)

(declare-fun tp!1923145 () Bool)

(assert (=> b!6969076 (= e!4189278 (and tp!1923146 tp!1923145))))

(declare-fun b!6969074 () Bool)

(declare-fun tp!1923143 () Bool)

(declare-fun tp!1923142 () Bool)

(assert (=> b!6969074 (= e!4189278 (and tp!1923143 tp!1923142))))

(declare-fun b!6969073 () Bool)

(assert (=> b!6969073 (= e!4189278 tp_is_empty!43463)))

(declare-fun b!6969075 () Bool)

(declare-fun tp!1923144 () Bool)

(assert (=> b!6969075 (= e!4189278 tp!1923144)))

(assert (= (and b!6967452 ((_ is ElementMatch!17119) (reg!17448 (regTwo!34751 (regOne!34750 r!13765))))) b!6969073))

(assert (= (and b!6967452 ((_ is Concat!25964) (reg!17448 (regTwo!34751 (regOne!34750 r!13765))))) b!6969074))

(assert (= (and b!6967452 ((_ is Star!17119) (reg!17448 (regTwo!34751 (regOne!34750 r!13765))))) b!6969075))

(assert (= (and b!6967452 ((_ is Union!17119) (reg!17448 (regTwo!34751 (regOne!34750 r!13765))))) b!6969076))

(declare-fun e!4189279 () Bool)

(assert (=> b!6967342 (= tp!1921682 e!4189279)))

(declare-fun b!6969080 () Bool)

(declare-fun tp!1923151 () Bool)

(declare-fun tp!1923150 () Bool)

(assert (=> b!6969080 (= e!4189279 (and tp!1923151 tp!1923150))))

(declare-fun b!6969078 () Bool)

(declare-fun tp!1923148 () Bool)

(declare-fun tp!1923147 () Bool)

(assert (=> b!6969078 (= e!4189279 (and tp!1923148 tp!1923147))))

(declare-fun b!6969077 () Bool)

(assert (=> b!6969077 (= e!4189279 tp_is_empty!43463)))

(declare-fun b!6969079 () Bool)

(declare-fun tp!1923149 () Bool)

(assert (=> b!6969079 (= e!4189279 tp!1923149)))

(assert (= (and b!6967342 ((_ is ElementMatch!17119) (reg!17448 (regOne!34751 (reg!17448 r!13765))))) b!6969077))

(assert (= (and b!6967342 ((_ is Concat!25964) (reg!17448 (regOne!34751 (reg!17448 r!13765))))) b!6969078))

(assert (= (and b!6967342 ((_ is Star!17119) (reg!17448 (regOne!34751 (reg!17448 r!13765))))) b!6969079))

(assert (= (and b!6967342 ((_ is Union!17119) (reg!17448 (regOne!34751 (reg!17448 r!13765))))) b!6969080))

(declare-fun e!4189280 () Bool)

(assert (=> b!6967436 (= tp!1921801 e!4189280)))

(declare-fun b!6969084 () Bool)

(declare-fun tp!1923156 () Bool)

(declare-fun tp!1923155 () Bool)

(assert (=> b!6969084 (= e!4189280 (and tp!1923156 tp!1923155))))

(declare-fun b!6969082 () Bool)

(declare-fun tp!1923153 () Bool)

(declare-fun tp!1923152 () Bool)

(assert (=> b!6969082 (= e!4189280 (and tp!1923153 tp!1923152))))

(declare-fun b!6969081 () Bool)

(assert (=> b!6969081 (= e!4189280 tp_is_empty!43463)))

(declare-fun b!6969083 () Bool)

(declare-fun tp!1923154 () Bool)

(assert (=> b!6969083 (= e!4189280 tp!1923154)))

(assert (= (and b!6967436 ((_ is ElementMatch!17119) (regOne!34751 (regOne!34751 (regTwo!34751 r!13765))))) b!6969081))

(assert (= (and b!6967436 ((_ is Concat!25964) (regOne!34751 (regOne!34751 (regTwo!34751 r!13765))))) b!6969082))

(assert (= (and b!6967436 ((_ is Star!17119) (regOne!34751 (regOne!34751 (regTwo!34751 r!13765))))) b!6969083))

(assert (= (and b!6967436 ((_ is Union!17119) (regOne!34751 (regOne!34751 (regTwo!34751 r!13765))))) b!6969084))

(declare-fun e!4189281 () Bool)

(assert (=> b!6967436 (= tp!1921800 e!4189281)))

(declare-fun b!6969088 () Bool)

(declare-fun tp!1923161 () Bool)

(declare-fun tp!1923160 () Bool)

(assert (=> b!6969088 (= e!4189281 (and tp!1923161 tp!1923160))))

(declare-fun b!6969086 () Bool)

(declare-fun tp!1923158 () Bool)

(declare-fun tp!1923157 () Bool)

(assert (=> b!6969086 (= e!4189281 (and tp!1923158 tp!1923157))))

(declare-fun b!6969085 () Bool)

(assert (=> b!6969085 (= e!4189281 tp_is_empty!43463)))

(declare-fun b!6969087 () Bool)

(declare-fun tp!1923159 () Bool)

(assert (=> b!6969087 (= e!4189281 tp!1923159)))

(assert (= (and b!6967436 ((_ is ElementMatch!17119) (regTwo!34751 (regOne!34751 (regTwo!34751 r!13765))))) b!6969085))

(assert (= (and b!6967436 ((_ is Concat!25964) (regTwo!34751 (regOne!34751 (regTwo!34751 r!13765))))) b!6969086))

(assert (= (and b!6967436 ((_ is Star!17119) (regTwo!34751 (regOne!34751 (regTwo!34751 r!13765))))) b!6969087))

(assert (= (and b!6967436 ((_ is Union!17119) (regTwo!34751 (regOne!34751 (regTwo!34751 r!13765))))) b!6969088))

(declare-fun e!4189282 () Bool)

(assert (=> b!6967427 (= tp!1921789 e!4189282)))

(declare-fun b!6969092 () Bool)

(declare-fun tp!1923166 () Bool)

(declare-fun tp!1923165 () Bool)

(assert (=> b!6969092 (= e!4189282 (and tp!1923166 tp!1923165))))

(declare-fun b!6969090 () Bool)

(declare-fun tp!1923163 () Bool)

(declare-fun tp!1923162 () Bool)

(assert (=> b!6969090 (= e!4189282 (and tp!1923163 tp!1923162))))

(declare-fun b!6969089 () Bool)

(assert (=> b!6969089 (= e!4189282 tp_is_empty!43463)))

(declare-fun b!6969091 () Bool)

(declare-fun tp!1923164 () Bool)

(assert (=> b!6969091 (= e!4189282 tp!1923164)))

(assert (= (and b!6967427 ((_ is ElementMatch!17119) (reg!17448 (regOne!34750 (regOne!34750 r!13765))))) b!6969089))

(assert (= (and b!6967427 ((_ is Concat!25964) (reg!17448 (regOne!34750 (regOne!34750 r!13765))))) b!6969090))

(assert (= (and b!6967427 ((_ is Star!17119) (reg!17448 (regOne!34750 (regOne!34750 r!13765))))) b!6969091))

(assert (= (and b!6967427 ((_ is Union!17119) (reg!17448 (regOne!34750 (regOne!34750 r!13765))))) b!6969092))

(declare-fun e!4189283 () Bool)

(assert (=> b!6967418 (= tp!1921778 e!4189283)))

(declare-fun b!6969096 () Bool)

(declare-fun tp!1923171 () Bool)

(declare-fun tp!1923170 () Bool)

(assert (=> b!6969096 (= e!4189283 (and tp!1923171 tp!1923170))))

(declare-fun b!6969094 () Bool)

(declare-fun tp!1923168 () Bool)

(declare-fun tp!1923167 () Bool)

(assert (=> b!6969094 (= e!4189283 (and tp!1923168 tp!1923167))))

(declare-fun b!6969093 () Bool)

(assert (=> b!6969093 (= e!4189283 tp_is_empty!43463)))

(declare-fun b!6969095 () Bool)

(declare-fun tp!1923169 () Bool)

(assert (=> b!6969095 (= e!4189283 tp!1923169)))

(assert (= (and b!6967418 ((_ is ElementMatch!17119) (regOne!34750 (regTwo!34751 (regOne!34751 r!13765))))) b!6969093))

(assert (= (and b!6967418 ((_ is Concat!25964) (regOne!34750 (regTwo!34751 (regOne!34751 r!13765))))) b!6969094))

(assert (= (and b!6967418 ((_ is Star!17119) (regOne!34750 (regTwo!34751 (regOne!34751 r!13765))))) b!6969095))

(assert (= (and b!6967418 ((_ is Union!17119) (regOne!34750 (regTwo!34751 (regOne!34751 r!13765))))) b!6969096))

(declare-fun e!4189284 () Bool)

(assert (=> b!6967418 (= tp!1921777 e!4189284)))

(declare-fun b!6969100 () Bool)

(declare-fun tp!1923176 () Bool)

(declare-fun tp!1923175 () Bool)

(assert (=> b!6969100 (= e!4189284 (and tp!1923176 tp!1923175))))

(declare-fun b!6969098 () Bool)

(declare-fun tp!1923173 () Bool)

(declare-fun tp!1923172 () Bool)

(assert (=> b!6969098 (= e!4189284 (and tp!1923173 tp!1923172))))

(declare-fun b!6969097 () Bool)

(assert (=> b!6969097 (= e!4189284 tp_is_empty!43463)))

(declare-fun b!6969099 () Bool)

(declare-fun tp!1923174 () Bool)

(assert (=> b!6969099 (= e!4189284 tp!1923174)))

(assert (= (and b!6967418 ((_ is ElementMatch!17119) (regTwo!34750 (regTwo!34751 (regOne!34751 r!13765))))) b!6969097))

(assert (= (and b!6967418 ((_ is Concat!25964) (regTwo!34750 (regTwo!34751 (regOne!34751 r!13765))))) b!6969098))

(assert (= (and b!6967418 ((_ is Star!17119) (regTwo!34750 (regTwo!34751 (regOne!34751 r!13765))))) b!6969099))

(assert (= (and b!6967418 ((_ is Union!17119) (regTwo!34750 (regTwo!34751 (regOne!34751 r!13765))))) b!6969100))

(declare-fun e!4189285 () Bool)

(assert (=> b!6967352 (= tp!1921695 e!4189285)))

(declare-fun b!6969104 () Bool)

(declare-fun tp!1923181 () Bool)

(declare-fun tp!1923180 () Bool)

(assert (=> b!6969104 (= e!4189285 (and tp!1923181 tp!1923180))))

(declare-fun b!6969102 () Bool)

(declare-fun tp!1923178 () Bool)

(declare-fun tp!1923177 () Bool)

(assert (=> b!6969102 (= e!4189285 (and tp!1923178 tp!1923177))))

(declare-fun b!6969101 () Bool)

(assert (=> b!6969101 (= e!4189285 tp_is_empty!43463)))

(declare-fun b!6969103 () Bool)

(declare-fun tp!1923179 () Bool)

(assert (=> b!6969103 (= e!4189285 tp!1923179)))

(assert (= (and b!6967352 ((_ is ElementMatch!17119) (h!73243 (t!380662 (t!380662 l!9142))))) b!6969101))

(assert (= (and b!6967352 ((_ is Concat!25964) (h!73243 (t!380662 (t!380662 l!9142))))) b!6969102))

(assert (= (and b!6967352 ((_ is Star!17119) (h!73243 (t!380662 (t!380662 l!9142))))) b!6969103))

(assert (= (and b!6967352 ((_ is Union!17119) (h!73243 (t!380662 (t!380662 l!9142))))) b!6969104))

(declare-fun b!6969105 () Bool)

(declare-fun e!4189286 () Bool)

(declare-fun tp!1923182 () Bool)

(declare-fun tp!1923183 () Bool)

(assert (=> b!6969105 (= e!4189286 (and tp!1923182 tp!1923183))))

(assert (=> b!6967352 (= tp!1921696 e!4189286)))

(assert (= (and b!6967352 ((_ is Cons!66795) (t!380662 (t!380662 (t!380662 l!9142))))) b!6969105))

(declare-fun e!4189287 () Bool)

(assert (=> b!6967404 (= tp!1921761 e!4189287)))

(declare-fun b!6969109 () Bool)

(declare-fun tp!1923188 () Bool)

(declare-fun tp!1923187 () Bool)

(assert (=> b!6969109 (= e!4189287 (and tp!1923188 tp!1923187))))

(declare-fun b!6969107 () Bool)

(declare-fun tp!1923185 () Bool)

(declare-fun tp!1923184 () Bool)

(assert (=> b!6969107 (= e!4189287 (and tp!1923185 tp!1923184))))

(declare-fun b!6969106 () Bool)

(assert (=> b!6969106 (= e!4189287 tp_is_empty!43463)))

(declare-fun b!6969108 () Bool)

(declare-fun tp!1923186 () Bool)

(assert (=> b!6969108 (= e!4189287 tp!1923186)))

(assert (= (and b!6967404 ((_ is ElementMatch!17119) (regOne!34751 (reg!17448 (regTwo!34751 r!13765))))) b!6969106))

(assert (= (and b!6967404 ((_ is Concat!25964) (regOne!34751 (reg!17448 (regTwo!34751 r!13765))))) b!6969107))

(assert (= (and b!6967404 ((_ is Star!17119) (regOne!34751 (reg!17448 (regTwo!34751 r!13765))))) b!6969108))

(assert (= (and b!6967404 ((_ is Union!17119) (regOne!34751 (reg!17448 (regTwo!34751 r!13765))))) b!6969109))

(declare-fun e!4189288 () Bool)

(assert (=> b!6967404 (= tp!1921760 e!4189288)))

(declare-fun b!6969113 () Bool)

(declare-fun tp!1923193 () Bool)

(declare-fun tp!1923192 () Bool)

(assert (=> b!6969113 (= e!4189288 (and tp!1923193 tp!1923192))))

(declare-fun b!6969111 () Bool)

(declare-fun tp!1923190 () Bool)

(declare-fun tp!1923189 () Bool)

(assert (=> b!6969111 (= e!4189288 (and tp!1923190 tp!1923189))))

(declare-fun b!6969110 () Bool)

(assert (=> b!6969110 (= e!4189288 tp_is_empty!43463)))

(declare-fun b!6969112 () Bool)

(declare-fun tp!1923191 () Bool)

(assert (=> b!6969112 (= e!4189288 tp!1923191)))

(assert (= (and b!6967404 ((_ is ElementMatch!17119) (regTwo!34751 (reg!17448 (regTwo!34751 r!13765))))) b!6969110))

(assert (= (and b!6967404 ((_ is Concat!25964) (regTwo!34751 (reg!17448 (regTwo!34751 r!13765))))) b!6969111))

(assert (= (and b!6967404 ((_ is Star!17119) (regTwo!34751 (reg!17448 (regTwo!34751 r!13765))))) b!6969112))

(assert (= (and b!6967404 ((_ is Union!17119) (regTwo!34751 (reg!17448 (regTwo!34751 r!13765))))) b!6969113))

(declare-fun e!4189289 () Bool)

(assert (=> b!6967395 (= tp!1921749 e!4189289)))

(declare-fun b!6969117 () Bool)

(declare-fun tp!1923198 () Bool)

(declare-fun tp!1923197 () Bool)

(assert (=> b!6969117 (= e!4189289 (and tp!1923198 tp!1923197))))

(declare-fun b!6969115 () Bool)

(declare-fun tp!1923195 () Bool)

(declare-fun tp!1923194 () Bool)

(assert (=> b!6969115 (= e!4189289 (and tp!1923195 tp!1923194))))

(declare-fun b!6969114 () Bool)

(assert (=> b!6969114 (= e!4189289 tp_is_empty!43463)))

(declare-fun b!6969116 () Bool)

(declare-fun tp!1923196 () Bool)

(assert (=> b!6969116 (= e!4189289 tp!1923196)))

(assert (= (and b!6967395 ((_ is ElementMatch!17119) (reg!17448 (regOne!34750 (regOne!34751 r!13765))))) b!6969114))

(assert (= (and b!6967395 ((_ is Concat!25964) (reg!17448 (regOne!34750 (regOne!34751 r!13765))))) b!6969115))

(assert (= (and b!6967395 ((_ is Star!17119) (reg!17448 (regOne!34750 (regOne!34751 r!13765))))) b!6969116))

(assert (= (and b!6967395 ((_ is Union!17119) (reg!17448 (regOne!34750 (regOne!34751 r!13765))))) b!6969117))

(declare-fun e!4189290 () Bool)

(assert (=> b!6967386 (= tp!1921738 e!4189290)))

(declare-fun b!6969121 () Bool)

(declare-fun tp!1923203 () Bool)

(declare-fun tp!1923202 () Bool)

(assert (=> b!6969121 (= e!4189290 (and tp!1923203 tp!1923202))))

(declare-fun b!6969119 () Bool)

(declare-fun tp!1923200 () Bool)

(declare-fun tp!1923199 () Bool)

(assert (=> b!6969119 (= e!4189290 (and tp!1923200 tp!1923199))))

(declare-fun b!6969118 () Bool)

(assert (=> b!6969118 (= e!4189290 tp_is_empty!43463)))

(declare-fun b!6969120 () Bool)

(declare-fun tp!1923201 () Bool)

(assert (=> b!6969120 (= e!4189290 tp!1923201)))

(assert (= (and b!6967386 ((_ is ElementMatch!17119) (regOne!34750 (regTwo!34751 (h!73243 l!9142))))) b!6969118))

(assert (= (and b!6967386 ((_ is Concat!25964) (regOne!34750 (regTwo!34751 (h!73243 l!9142))))) b!6969119))

(assert (= (and b!6967386 ((_ is Star!17119) (regOne!34750 (regTwo!34751 (h!73243 l!9142))))) b!6969120))

(assert (= (and b!6967386 ((_ is Union!17119) (regOne!34750 (regTwo!34751 (h!73243 l!9142))))) b!6969121))

(declare-fun e!4189291 () Bool)

(assert (=> b!6967386 (= tp!1921737 e!4189291)))

(declare-fun b!6969125 () Bool)

(declare-fun tp!1923208 () Bool)

(declare-fun tp!1923207 () Bool)

(assert (=> b!6969125 (= e!4189291 (and tp!1923208 tp!1923207))))

(declare-fun b!6969123 () Bool)

(declare-fun tp!1923205 () Bool)

(declare-fun tp!1923204 () Bool)

(assert (=> b!6969123 (= e!4189291 (and tp!1923205 tp!1923204))))

(declare-fun b!6969122 () Bool)

(assert (=> b!6969122 (= e!4189291 tp_is_empty!43463)))

(declare-fun b!6969124 () Bool)

(declare-fun tp!1923206 () Bool)

(assert (=> b!6969124 (= e!4189291 tp!1923206)))

(assert (= (and b!6967386 ((_ is ElementMatch!17119) (regTwo!34750 (regTwo!34751 (h!73243 l!9142))))) b!6969122))

(assert (= (and b!6967386 ((_ is Concat!25964) (regTwo!34750 (regTwo!34751 (h!73243 l!9142))))) b!6969123))

(assert (= (and b!6967386 ((_ is Star!17119) (regTwo!34750 (regTwo!34751 (h!73243 l!9142))))) b!6969124))

(assert (= (and b!6967386 ((_ is Union!17119) (regTwo!34750 (regTwo!34751 (h!73243 l!9142))))) b!6969125))

(declare-fun e!4189292 () Bool)

(assert (=> b!6967463 (= tp!1921834 e!4189292)))

(declare-fun b!6969129 () Bool)

(declare-fun tp!1923213 () Bool)

(declare-fun tp!1923212 () Bool)

(assert (=> b!6969129 (= e!4189292 (and tp!1923213 tp!1923212))))

(declare-fun b!6969127 () Bool)

(declare-fun tp!1923210 () Bool)

(declare-fun tp!1923209 () Bool)

(assert (=> b!6969127 (= e!4189292 (and tp!1923210 tp!1923209))))

(declare-fun b!6969126 () Bool)

(assert (=> b!6969126 (= e!4189292 tp_is_empty!43463)))

(declare-fun b!6969128 () Bool)

(declare-fun tp!1923211 () Bool)

(assert (=> b!6969128 (= e!4189292 tp!1923211)))

(assert (= (and b!6967463 ((_ is ElementMatch!17119) (regOne!34750 (reg!17448 (reg!17448 r!13765))))) b!6969126))

(assert (= (and b!6967463 ((_ is Concat!25964) (regOne!34750 (reg!17448 (reg!17448 r!13765))))) b!6969127))

(assert (= (and b!6967463 ((_ is Star!17119) (regOne!34750 (reg!17448 (reg!17448 r!13765))))) b!6969128))

(assert (= (and b!6967463 ((_ is Union!17119) (regOne!34750 (reg!17448 (reg!17448 r!13765))))) b!6969129))

(declare-fun e!4189293 () Bool)

(assert (=> b!6967463 (= tp!1921833 e!4189293)))

(declare-fun b!6969133 () Bool)

(declare-fun tp!1923218 () Bool)

(declare-fun tp!1923217 () Bool)

(assert (=> b!6969133 (= e!4189293 (and tp!1923218 tp!1923217))))

(declare-fun b!6969131 () Bool)

(declare-fun tp!1923215 () Bool)

(declare-fun tp!1923214 () Bool)

(assert (=> b!6969131 (= e!4189293 (and tp!1923215 tp!1923214))))

(declare-fun b!6969130 () Bool)

(assert (=> b!6969130 (= e!4189293 tp_is_empty!43463)))

(declare-fun b!6969132 () Bool)

(declare-fun tp!1923216 () Bool)

(assert (=> b!6969132 (= e!4189293 tp!1923216)))

(assert (= (and b!6967463 ((_ is ElementMatch!17119) (regTwo!34750 (reg!17448 (reg!17448 r!13765))))) b!6969130))

(assert (= (and b!6967463 ((_ is Concat!25964) (regTwo!34750 (reg!17448 (reg!17448 r!13765))))) b!6969131))

(assert (= (and b!6967463 ((_ is Star!17119) (regTwo!34750 (reg!17448 (reg!17448 r!13765))))) b!6969132))

(assert (= (and b!6967463 ((_ is Union!17119) (regTwo!34750 (reg!17448 (reg!17448 r!13765))))) b!6969133))

(declare-fun e!4189294 () Bool)

(assert (=> b!6967438 (= tp!1921803 e!4189294)))

(declare-fun b!6969137 () Bool)

(declare-fun tp!1923223 () Bool)

(declare-fun tp!1923222 () Bool)

(assert (=> b!6969137 (= e!4189294 (and tp!1923223 tp!1923222))))

(declare-fun b!6969135 () Bool)

(declare-fun tp!1923220 () Bool)

(declare-fun tp!1923219 () Bool)

(assert (=> b!6969135 (= e!4189294 (and tp!1923220 tp!1923219))))

(declare-fun b!6969134 () Bool)

(assert (=> b!6969134 (= e!4189294 tp_is_empty!43463)))

(declare-fun b!6969136 () Bool)

(declare-fun tp!1923221 () Bool)

(assert (=> b!6969136 (= e!4189294 tp!1923221)))

(assert (= (and b!6967438 ((_ is ElementMatch!17119) (regOne!34750 (regTwo!34751 (regTwo!34751 r!13765))))) b!6969134))

(assert (= (and b!6967438 ((_ is Concat!25964) (regOne!34750 (regTwo!34751 (regTwo!34751 r!13765))))) b!6969135))

(assert (= (and b!6967438 ((_ is Star!17119) (regOne!34750 (regTwo!34751 (regTwo!34751 r!13765))))) b!6969136))

(assert (= (and b!6967438 ((_ is Union!17119) (regOne!34750 (regTwo!34751 (regTwo!34751 r!13765))))) b!6969137))

(declare-fun e!4189295 () Bool)

(assert (=> b!6967438 (= tp!1921802 e!4189295)))

(declare-fun b!6969141 () Bool)

(declare-fun tp!1923228 () Bool)

(declare-fun tp!1923227 () Bool)

(assert (=> b!6969141 (= e!4189295 (and tp!1923228 tp!1923227))))

(declare-fun b!6969139 () Bool)

(declare-fun tp!1923225 () Bool)

(declare-fun tp!1923224 () Bool)

(assert (=> b!6969139 (= e!4189295 (and tp!1923225 tp!1923224))))

(declare-fun b!6969138 () Bool)

(assert (=> b!6969138 (= e!4189295 tp_is_empty!43463)))

(declare-fun b!6969140 () Bool)

(declare-fun tp!1923226 () Bool)

(assert (=> b!6969140 (= e!4189295 tp!1923226)))

(assert (= (and b!6967438 ((_ is ElementMatch!17119) (regTwo!34750 (regTwo!34751 (regTwo!34751 r!13765))))) b!6969138))

(assert (= (and b!6967438 ((_ is Concat!25964) (regTwo!34750 (regTwo!34751 (regTwo!34751 r!13765))))) b!6969139))

(assert (= (and b!6967438 ((_ is Star!17119) (regTwo!34750 (regTwo!34751 (regTwo!34751 r!13765))))) b!6969140))

(assert (= (and b!6967438 ((_ is Union!17119) (regTwo!34750 (regTwo!34751 (regTwo!34751 r!13765))))) b!6969141))

(declare-fun e!4189296 () Bool)

(assert (=> b!6967372 (= tp!1921721 e!4189296)))

(declare-fun b!6969145 () Bool)

(declare-fun tp!1923233 () Bool)

(declare-fun tp!1923232 () Bool)

(assert (=> b!6969145 (= e!4189296 (and tp!1923233 tp!1923232))))

(declare-fun b!6969143 () Bool)

(declare-fun tp!1923230 () Bool)

(declare-fun tp!1923229 () Bool)

(assert (=> b!6969143 (= e!4189296 (and tp!1923230 tp!1923229))))

(declare-fun b!6969142 () Bool)

(assert (=> b!6969142 (= e!4189296 tp_is_empty!43463)))

(declare-fun b!6969144 () Bool)

(declare-fun tp!1923231 () Bool)

(assert (=> b!6969144 (= e!4189296 tp!1923231)))

(assert (= (and b!6967372 ((_ is ElementMatch!17119) (regOne!34751 (regTwo!34750 (h!73243 l!9142))))) b!6969142))

(assert (= (and b!6967372 ((_ is Concat!25964) (regOne!34751 (regTwo!34750 (h!73243 l!9142))))) b!6969143))

(assert (= (and b!6967372 ((_ is Star!17119) (regOne!34751 (regTwo!34750 (h!73243 l!9142))))) b!6969144))

(assert (= (and b!6967372 ((_ is Union!17119) (regOne!34751 (regTwo!34750 (h!73243 l!9142))))) b!6969145))

(declare-fun e!4189297 () Bool)

(assert (=> b!6967372 (= tp!1921720 e!4189297)))

(declare-fun b!6969149 () Bool)

(declare-fun tp!1923238 () Bool)

(declare-fun tp!1923237 () Bool)

(assert (=> b!6969149 (= e!4189297 (and tp!1923238 tp!1923237))))

(declare-fun b!6969147 () Bool)

(declare-fun tp!1923235 () Bool)

(declare-fun tp!1923234 () Bool)

(assert (=> b!6969147 (= e!4189297 (and tp!1923235 tp!1923234))))

(declare-fun b!6969146 () Bool)

(assert (=> b!6969146 (= e!4189297 tp_is_empty!43463)))

(declare-fun b!6969148 () Bool)

(declare-fun tp!1923236 () Bool)

(assert (=> b!6969148 (= e!4189297 tp!1923236)))

(assert (= (and b!6967372 ((_ is ElementMatch!17119) (regTwo!34751 (regTwo!34750 (h!73243 l!9142))))) b!6969146))

(assert (= (and b!6967372 ((_ is Concat!25964) (regTwo!34751 (regTwo!34750 (h!73243 l!9142))))) b!6969147))

(assert (= (and b!6967372 ((_ is Star!17119) (regTwo!34751 (regTwo!34750 (h!73243 l!9142))))) b!6969148))

(assert (= (and b!6967372 ((_ is Union!17119) (regTwo!34751 (regTwo!34750 (h!73243 l!9142))))) b!6969149))

(declare-fun e!4189298 () Bool)

(assert (=> b!6967363 (= tp!1921709 e!4189298)))

(declare-fun b!6969153 () Bool)

(declare-fun tp!1923243 () Bool)

(declare-fun tp!1923242 () Bool)

(assert (=> b!6969153 (= e!4189298 (and tp!1923243 tp!1923242))))

(declare-fun b!6969151 () Bool)

(declare-fun tp!1923240 () Bool)

(declare-fun tp!1923239 () Bool)

(assert (=> b!6969151 (= e!4189298 (and tp!1923240 tp!1923239))))

(declare-fun b!6969150 () Bool)

(assert (=> b!6969150 (= e!4189298 tp_is_empty!43463)))

(declare-fun b!6969152 () Bool)

(declare-fun tp!1923241 () Bool)

(assert (=> b!6969152 (= e!4189298 tp!1923241)))

(assert (= (and b!6967363 ((_ is ElementMatch!17119) (reg!17448 (reg!17448 (h!73243 l!9142))))) b!6969150))

(assert (= (and b!6967363 ((_ is Concat!25964) (reg!17448 (reg!17448 (h!73243 l!9142))))) b!6969151))

(assert (= (and b!6967363 ((_ is Star!17119) (reg!17448 (reg!17448 (h!73243 l!9142))))) b!6969152))

(assert (= (and b!6967363 ((_ is Union!17119) (reg!17448 (reg!17448 (h!73243 l!9142))))) b!6969153))

(declare-fun e!4189299 () Bool)

(assert (=> b!6967354 (= tp!1921698 e!4189299)))

(declare-fun b!6969157 () Bool)

(declare-fun tp!1923248 () Bool)

(declare-fun tp!1923247 () Bool)

(assert (=> b!6969157 (= e!4189299 (and tp!1923248 tp!1923247))))

(declare-fun b!6969155 () Bool)

(declare-fun tp!1923245 () Bool)

(declare-fun tp!1923244 () Bool)

(assert (=> b!6969155 (= e!4189299 (and tp!1923245 tp!1923244))))

(declare-fun b!6969154 () Bool)

(assert (=> b!6969154 (= e!4189299 tp_is_empty!43463)))

(declare-fun b!6969156 () Bool)

(declare-fun tp!1923246 () Bool)

(assert (=> b!6969156 (= e!4189299 tp!1923246)))

(assert (= (and b!6967354 ((_ is ElementMatch!17119) (regOne!34750 (regOne!34750 (regTwo!34751 r!13765))))) b!6969154))

(assert (= (and b!6967354 ((_ is Concat!25964) (regOne!34750 (regOne!34750 (regTwo!34751 r!13765))))) b!6969155))

(assert (= (and b!6967354 ((_ is Star!17119) (regOne!34750 (regOne!34750 (regTwo!34751 r!13765))))) b!6969156))

(assert (= (and b!6967354 ((_ is Union!17119) (regOne!34750 (regOne!34750 (regTwo!34751 r!13765))))) b!6969157))

(declare-fun e!4189300 () Bool)

(assert (=> b!6967354 (= tp!1921697 e!4189300)))

(declare-fun b!6969161 () Bool)

(declare-fun tp!1923253 () Bool)

(declare-fun tp!1923252 () Bool)

(assert (=> b!6969161 (= e!4189300 (and tp!1923253 tp!1923252))))

(declare-fun b!6969159 () Bool)

(declare-fun tp!1923250 () Bool)

(declare-fun tp!1923249 () Bool)

(assert (=> b!6969159 (= e!4189300 (and tp!1923250 tp!1923249))))

(declare-fun b!6969158 () Bool)

(assert (=> b!6969158 (= e!4189300 tp_is_empty!43463)))

(declare-fun b!6969160 () Bool)

(declare-fun tp!1923251 () Bool)

(assert (=> b!6969160 (= e!4189300 tp!1923251)))

(assert (= (and b!6967354 ((_ is ElementMatch!17119) (regTwo!34750 (regOne!34750 (regTwo!34751 r!13765))))) b!6969158))

(assert (= (and b!6967354 ((_ is Concat!25964) (regTwo!34750 (regOne!34750 (regTwo!34751 r!13765))))) b!6969159))

(assert (= (and b!6967354 ((_ is Star!17119) (regTwo!34750 (regOne!34750 (regTwo!34751 r!13765))))) b!6969160))

(assert (= (and b!6967354 ((_ is Union!17119) (regTwo!34750 (regOne!34750 (regTwo!34751 r!13765))))) b!6969161))

(declare-fun e!4189301 () Bool)

(assert (=> b!6967449 (= tp!1921817 e!4189301)))

(declare-fun b!6969165 () Bool)

(declare-fun tp!1923258 () Bool)

(declare-fun tp!1923257 () Bool)

(assert (=> b!6969165 (= e!4189301 (and tp!1923258 tp!1923257))))

(declare-fun b!6969163 () Bool)

(declare-fun tp!1923255 () Bool)

(declare-fun tp!1923254 () Bool)

(assert (=> b!6969163 (= e!4189301 (and tp!1923255 tp!1923254))))

(declare-fun b!6969162 () Bool)

(assert (=> b!6969162 (= e!4189301 tp_is_empty!43463)))

(declare-fun b!6969164 () Bool)

(declare-fun tp!1923256 () Bool)

(assert (=> b!6969164 (= e!4189301 tp!1923256)))

(assert (= (and b!6967449 ((_ is ElementMatch!17119) (regOne!34751 (regOne!34751 (regOne!34750 r!13765))))) b!6969162))

(assert (= (and b!6967449 ((_ is Concat!25964) (regOne!34751 (regOne!34751 (regOne!34750 r!13765))))) b!6969163))

(assert (= (and b!6967449 ((_ is Star!17119) (regOne!34751 (regOne!34751 (regOne!34750 r!13765))))) b!6969164))

(assert (= (and b!6967449 ((_ is Union!17119) (regOne!34751 (regOne!34751 (regOne!34750 r!13765))))) b!6969165))

(declare-fun e!4189302 () Bool)

(assert (=> b!6967449 (= tp!1921816 e!4189302)))

(declare-fun b!6969169 () Bool)

(declare-fun tp!1923263 () Bool)

(declare-fun tp!1923262 () Bool)

(assert (=> b!6969169 (= e!4189302 (and tp!1923263 tp!1923262))))

(declare-fun b!6969167 () Bool)

(declare-fun tp!1923260 () Bool)

(declare-fun tp!1923259 () Bool)

(assert (=> b!6969167 (= e!4189302 (and tp!1923260 tp!1923259))))

(declare-fun b!6969166 () Bool)

(assert (=> b!6969166 (= e!4189302 tp_is_empty!43463)))

(declare-fun b!6969168 () Bool)

(declare-fun tp!1923261 () Bool)

(assert (=> b!6969168 (= e!4189302 tp!1923261)))

(assert (= (and b!6967449 ((_ is ElementMatch!17119) (regTwo!34751 (regOne!34751 (regOne!34750 r!13765))))) b!6969166))

(assert (= (and b!6967449 ((_ is Concat!25964) (regTwo!34751 (regOne!34751 (regOne!34750 r!13765))))) b!6969167))

(assert (= (and b!6967449 ((_ is Star!17119) (regTwo!34751 (regOne!34751 (regOne!34750 r!13765))))) b!6969168))

(assert (= (and b!6967449 ((_ is Union!17119) (regTwo!34751 (regOne!34751 (regOne!34750 r!13765))))) b!6969169))

(declare-fun e!4189303 () Bool)

(assert (=> b!6967424 (= tp!1921786 e!4189303)))

(declare-fun b!6969173 () Bool)

(declare-fun tp!1923268 () Bool)

(declare-fun tp!1923267 () Bool)

(assert (=> b!6969173 (= e!4189303 (and tp!1923268 tp!1923267))))

(declare-fun b!6969171 () Bool)

(declare-fun tp!1923265 () Bool)

(declare-fun tp!1923264 () Bool)

(assert (=> b!6969171 (= e!4189303 (and tp!1923265 tp!1923264))))

(declare-fun b!6969170 () Bool)

(assert (=> b!6969170 (= e!4189303 tp_is_empty!43463)))

(declare-fun b!6969172 () Bool)

(declare-fun tp!1923266 () Bool)

(assert (=> b!6969172 (= e!4189303 tp!1923266)))

(assert (= (and b!6967424 ((_ is ElementMatch!17119) (regOne!34751 (reg!17448 (regOne!34750 r!13765))))) b!6969170))

(assert (= (and b!6967424 ((_ is Concat!25964) (regOne!34751 (reg!17448 (regOne!34750 r!13765))))) b!6969171))

(assert (= (and b!6967424 ((_ is Star!17119) (regOne!34751 (reg!17448 (regOne!34750 r!13765))))) b!6969172))

(assert (= (and b!6967424 ((_ is Union!17119) (regOne!34751 (reg!17448 (regOne!34750 r!13765))))) b!6969173))

(declare-fun e!4189304 () Bool)

(assert (=> b!6967424 (= tp!1921785 e!4189304)))

(declare-fun b!6969177 () Bool)

(declare-fun tp!1923273 () Bool)

(declare-fun tp!1923272 () Bool)

(assert (=> b!6969177 (= e!4189304 (and tp!1923273 tp!1923272))))

(declare-fun b!6969175 () Bool)

(declare-fun tp!1923270 () Bool)

(declare-fun tp!1923269 () Bool)

(assert (=> b!6969175 (= e!4189304 (and tp!1923270 tp!1923269))))

(declare-fun b!6969174 () Bool)

(assert (=> b!6969174 (= e!4189304 tp_is_empty!43463)))

(declare-fun b!6969176 () Bool)

(declare-fun tp!1923271 () Bool)

(assert (=> b!6969176 (= e!4189304 tp!1923271)))

(assert (= (and b!6967424 ((_ is ElementMatch!17119) (regTwo!34751 (reg!17448 (regOne!34750 r!13765))))) b!6969174))

(assert (= (and b!6967424 ((_ is Concat!25964) (regTwo!34751 (reg!17448 (regOne!34750 r!13765))))) b!6969175))

(assert (= (and b!6967424 ((_ is Star!17119) (regTwo!34751 (reg!17448 (regOne!34750 r!13765))))) b!6969176))

(assert (= (and b!6967424 ((_ is Union!17119) (regTwo!34751 (reg!17448 (regOne!34750 r!13765))))) b!6969177))

(declare-fun e!4189305 () Bool)

(assert (=> b!6967415 (= tp!1921774 e!4189305)))

(declare-fun b!6969181 () Bool)

(declare-fun tp!1923278 () Bool)

(declare-fun tp!1923277 () Bool)

(assert (=> b!6969181 (= e!4189305 (and tp!1923278 tp!1923277))))

(declare-fun b!6969179 () Bool)

(declare-fun tp!1923275 () Bool)

(declare-fun tp!1923274 () Bool)

(assert (=> b!6969179 (= e!4189305 (and tp!1923275 tp!1923274))))

(declare-fun b!6969178 () Bool)

(assert (=> b!6969178 (= e!4189305 tp_is_empty!43463)))

(declare-fun b!6969180 () Bool)

(declare-fun tp!1923276 () Bool)

(assert (=> b!6969180 (= e!4189305 tp!1923276)))

(assert (= (and b!6967415 ((_ is ElementMatch!17119) (reg!17448 (regOne!34751 (regOne!34751 r!13765))))) b!6969178))

(assert (= (and b!6967415 ((_ is Concat!25964) (reg!17448 (regOne!34751 (regOne!34751 r!13765))))) b!6969179))

(assert (= (and b!6967415 ((_ is Star!17119) (reg!17448 (regOne!34751 (regOne!34751 r!13765))))) b!6969180))

(assert (= (and b!6967415 ((_ is Union!17119) (reg!17448 (regOne!34751 (regOne!34751 r!13765))))) b!6969181))

(declare-fun e!4189306 () Bool)

(assert (=> b!6967406 (= tp!1921763 e!4189306)))

(declare-fun b!6969185 () Bool)

(declare-fun tp!1923283 () Bool)

(declare-fun tp!1923282 () Bool)

(assert (=> b!6969185 (= e!4189306 (and tp!1923283 tp!1923282))))

(declare-fun b!6969183 () Bool)

(declare-fun tp!1923280 () Bool)

(declare-fun tp!1923279 () Bool)

(assert (=> b!6969183 (= e!4189306 (and tp!1923280 tp!1923279))))

(declare-fun b!6969182 () Bool)

(assert (=> b!6969182 (= e!4189306 tp_is_empty!43463)))

(declare-fun b!6969184 () Bool)

(declare-fun tp!1923281 () Bool)

(assert (=> b!6969184 (= e!4189306 tp!1923281)))

(assert (= (and b!6967406 ((_ is ElementMatch!17119) (regOne!34750 (regOne!34750 (reg!17448 r!13765))))) b!6969182))

(assert (= (and b!6967406 ((_ is Concat!25964) (regOne!34750 (regOne!34750 (reg!17448 r!13765))))) b!6969183))

(assert (= (and b!6967406 ((_ is Star!17119) (regOne!34750 (regOne!34750 (reg!17448 r!13765))))) b!6969184))

(assert (= (and b!6967406 ((_ is Union!17119) (regOne!34750 (regOne!34750 (reg!17448 r!13765))))) b!6969185))

(declare-fun e!4189307 () Bool)

(assert (=> b!6967406 (= tp!1921762 e!4189307)))

(declare-fun b!6969189 () Bool)

(declare-fun tp!1923288 () Bool)

(declare-fun tp!1923287 () Bool)

(assert (=> b!6969189 (= e!4189307 (and tp!1923288 tp!1923287))))

(declare-fun b!6969187 () Bool)

(declare-fun tp!1923285 () Bool)

(declare-fun tp!1923284 () Bool)

(assert (=> b!6969187 (= e!4189307 (and tp!1923285 tp!1923284))))

(declare-fun b!6969186 () Bool)

(assert (=> b!6969186 (= e!4189307 tp_is_empty!43463)))

(declare-fun b!6969188 () Bool)

(declare-fun tp!1923286 () Bool)

(assert (=> b!6969188 (= e!4189307 tp!1923286)))

(assert (= (and b!6967406 ((_ is ElementMatch!17119) (regTwo!34750 (regOne!34750 (reg!17448 r!13765))))) b!6969186))

(assert (= (and b!6967406 ((_ is Concat!25964) (regTwo!34750 (regOne!34750 (reg!17448 r!13765))))) b!6969187))

(assert (= (and b!6967406 ((_ is Star!17119) (regTwo!34750 (regOne!34750 (reg!17448 r!13765))))) b!6969188))

(assert (= (and b!6967406 ((_ is Union!17119) (regTwo!34750 (regOne!34750 (reg!17448 r!13765))))) b!6969189))

(declare-fun e!4189308 () Bool)

(assert (=> b!6967392 (= tp!1921746 e!4189308)))

(declare-fun b!6969193 () Bool)

(declare-fun tp!1923293 () Bool)

(declare-fun tp!1923292 () Bool)

(assert (=> b!6969193 (= e!4189308 (and tp!1923293 tp!1923292))))

(declare-fun b!6969191 () Bool)

(declare-fun tp!1923290 () Bool)

(declare-fun tp!1923289 () Bool)

(assert (=> b!6969191 (= e!4189308 (and tp!1923290 tp!1923289))))

(declare-fun b!6969190 () Bool)

(assert (=> b!6969190 (= e!4189308 tp_is_empty!43463)))

(declare-fun b!6969192 () Bool)

(declare-fun tp!1923291 () Bool)

(assert (=> b!6969192 (= e!4189308 tp!1923291)))

(assert (= (and b!6967392 ((_ is ElementMatch!17119) (regOne!34751 (reg!17448 (regOne!34751 r!13765))))) b!6969190))

(assert (= (and b!6967392 ((_ is Concat!25964) (regOne!34751 (reg!17448 (regOne!34751 r!13765))))) b!6969191))

(assert (= (and b!6967392 ((_ is Star!17119) (regOne!34751 (reg!17448 (regOne!34751 r!13765))))) b!6969192))

(assert (= (and b!6967392 ((_ is Union!17119) (regOne!34751 (reg!17448 (regOne!34751 r!13765))))) b!6969193))

(declare-fun e!4189309 () Bool)

(assert (=> b!6967392 (= tp!1921745 e!4189309)))

(declare-fun b!6969197 () Bool)

(declare-fun tp!1923298 () Bool)

(declare-fun tp!1923297 () Bool)

(assert (=> b!6969197 (= e!4189309 (and tp!1923298 tp!1923297))))

(declare-fun b!6969195 () Bool)

(declare-fun tp!1923295 () Bool)

(declare-fun tp!1923294 () Bool)

(assert (=> b!6969195 (= e!4189309 (and tp!1923295 tp!1923294))))

(declare-fun b!6969194 () Bool)

(assert (=> b!6969194 (= e!4189309 tp_is_empty!43463)))

(declare-fun b!6969196 () Bool)

(declare-fun tp!1923296 () Bool)

(assert (=> b!6969196 (= e!4189309 tp!1923296)))

(assert (= (and b!6967392 ((_ is ElementMatch!17119) (regTwo!34751 (reg!17448 (regOne!34751 r!13765))))) b!6969194))

(assert (= (and b!6967392 ((_ is Concat!25964) (regTwo!34751 (reg!17448 (regOne!34751 r!13765))))) b!6969195))

(assert (= (and b!6967392 ((_ is Star!17119) (regTwo!34751 (reg!17448 (regOne!34751 r!13765))))) b!6969196))

(assert (= (and b!6967392 ((_ is Union!17119) (regTwo!34751 (reg!17448 (regOne!34751 r!13765))))) b!6969197))

(declare-fun e!4189310 () Bool)

(assert (=> b!6967383 (= tp!1921734 e!4189310)))

(declare-fun b!6969201 () Bool)

(declare-fun tp!1923303 () Bool)

(declare-fun tp!1923302 () Bool)

(assert (=> b!6969201 (= e!4189310 (and tp!1923303 tp!1923302))))

(declare-fun b!6969199 () Bool)

(declare-fun tp!1923300 () Bool)

(declare-fun tp!1923299 () Bool)

(assert (=> b!6969199 (= e!4189310 (and tp!1923300 tp!1923299))))

(declare-fun b!6969198 () Bool)

(assert (=> b!6969198 (= e!4189310 tp_is_empty!43463)))

(declare-fun b!6969200 () Bool)

(declare-fun tp!1923301 () Bool)

(assert (=> b!6969200 (= e!4189310 tp!1923301)))

(assert (= (and b!6967383 ((_ is ElementMatch!17119) (reg!17448 (regOne!34751 (h!73243 l!9142))))) b!6969198))

(assert (= (and b!6967383 ((_ is Concat!25964) (reg!17448 (regOne!34751 (h!73243 l!9142))))) b!6969199))

(assert (= (and b!6967383 ((_ is Star!17119) (reg!17448 (regOne!34751 (h!73243 l!9142))))) b!6969200))

(assert (= (and b!6967383 ((_ is Union!17119) (reg!17448 (regOne!34751 (h!73243 l!9142))))) b!6969201))

(declare-fun e!4189311 () Bool)

(assert (=> b!6967374 (= tp!1921723 e!4189311)))

(declare-fun b!6969205 () Bool)

(declare-fun tp!1923308 () Bool)

(declare-fun tp!1923307 () Bool)

(assert (=> b!6969205 (= e!4189311 (and tp!1923308 tp!1923307))))

(declare-fun b!6969203 () Bool)

(declare-fun tp!1923305 () Bool)

(declare-fun tp!1923304 () Bool)

(assert (=> b!6969203 (= e!4189311 (and tp!1923305 tp!1923304))))

(declare-fun b!6969202 () Bool)

(assert (=> b!6969202 (= e!4189311 tp_is_empty!43463)))

(declare-fun b!6969204 () Bool)

(declare-fun tp!1923306 () Bool)

(assert (=> b!6969204 (= e!4189311 tp!1923306)))

(assert (= (and b!6967374 ((_ is ElementMatch!17119) (regOne!34750 (regOne!34750 (regTwo!34750 r!13765))))) b!6969202))

(assert (= (and b!6967374 ((_ is Concat!25964) (regOne!34750 (regOne!34750 (regTwo!34750 r!13765))))) b!6969203))

(assert (= (and b!6967374 ((_ is Star!17119) (regOne!34750 (regOne!34750 (regTwo!34750 r!13765))))) b!6969204))

(assert (= (and b!6967374 ((_ is Union!17119) (regOne!34750 (regOne!34750 (regTwo!34750 r!13765))))) b!6969205))

(declare-fun e!4189312 () Bool)

(assert (=> b!6967374 (= tp!1921722 e!4189312)))

(declare-fun b!6969209 () Bool)

(declare-fun tp!1923313 () Bool)

(declare-fun tp!1923312 () Bool)

(assert (=> b!6969209 (= e!4189312 (and tp!1923313 tp!1923312))))

(declare-fun b!6969207 () Bool)

(declare-fun tp!1923310 () Bool)

(declare-fun tp!1923309 () Bool)

(assert (=> b!6969207 (= e!4189312 (and tp!1923310 tp!1923309))))

(declare-fun b!6969206 () Bool)

(assert (=> b!6969206 (= e!4189312 tp_is_empty!43463)))

(declare-fun b!6969208 () Bool)

(declare-fun tp!1923311 () Bool)

(assert (=> b!6969208 (= e!4189312 tp!1923311)))

(assert (= (and b!6967374 ((_ is ElementMatch!17119) (regTwo!34750 (regOne!34750 (regTwo!34750 r!13765))))) b!6969206))

(assert (= (and b!6967374 ((_ is Concat!25964) (regTwo!34750 (regOne!34750 (regTwo!34750 r!13765))))) b!6969207))

(assert (= (and b!6967374 ((_ is Star!17119) (regTwo!34750 (regOne!34750 (regTwo!34750 r!13765))))) b!6969208))

(assert (= (and b!6967374 ((_ is Union!17119) (regTwo!34750 (regOne!34750 (regTwo!34750 r!13765))))) b!6969209))

(declare-fun e!4189313 () Bool)

(assert (=> b!6967460 (= tp!1921830 e!4189313)))

(declare-fun b!6969213 () Bool)

(declare-fun tp!1923318 () Bool)

(declare-fun tp!1923317 () Bool)

(assert (=> b!6969213 (= e!4189313 (and tp!1923318 tp!1923317))))

(declare-fun b!6969211 () Bool)

(declare-fun tp!1923315 () Bool)

(declare-fun tp!1923314 () Bool)

(assert (=> b!6969211 (= e!4189313 (and tp!1923315 tp!1923314))))

(declare-fun b!6969210 () Bool)

(assert (=> b!6969210 (= e!4189313 tp_is_empty!43463)))

(declare-fun b!6969212 () Bool)

(declare-fun tp!1923316 () Bool)

(assert (=> b!6969212 (= e!4189313 tp!1923316)))

(assert (= (and b!6967460 ((_ is ElementMatch!17119) (reg!17448 (regTwo!34751 (regTwo!34750 r!13765))))) b!6969210))

(assert (= (and b!6967460 ((_ is Concat!25964) (reg!17448 (regTwo!34751 (regTwo!34750 r!13765))))) b!6969211))

(assert (= (and b!6967460 ((_ is Star!17119) (reg!17448 (regTwo!34751 (regTwo!34750 r!13765))))) b!6969212))

(assert (= (and b!6967460 ((_ is Union!17119) (reg!17448 (regTwo!34751 (regTwo!34750 r!13765))))) b!6969213))

(declare-fun e!4189314 () Bool)

(assert (=> b!6967350 (= tp!1921692 e!4189314)))

(declare-fun b!6969217 () Bool)

(declare-fun tp!1923323 () Bool)

(declare-fun tp!1923322 () Bool)

(assert (=> b!6969217 (= e!4189314 (and tp!1923323 tp!1923322))))

(declare-fun b!6969215 () Bool)

(declare-fun tp!1923320 () Bool)

(declare-fun tp!1923319 () Bool)

(assert (=> b!6969215 (= e!4189314 (and tp!1923320 tp!1923319))))

(declare-fun b!6969214 () Bool)

(assert (=> b!6969214 (= e!4189314 tp_is_empty!43463)))

(declare-fun b!6969216 () Bool)

(declare-fun tp!1923321 () Bool)

(assert (=> b!6969216 (= e!4189314 tp!1923321)))

(assert (= (and b!6967350 ((_ is ElementMatch!17119) (reg!17448 (h!73243 (t!380662 l!9142))))) b!6969214))

(assert (= (and b!6967350 ((_ is Concat!25964) (reg!17448 (h!73243 (t!380662 l!9142))))) b!6969215))

(assert (= (and b!6967350 ((_ is Star!17119) (reg!17448 (h!73243 (t!380662 l!9142))))) b!6969216))

(assert (= (and b!6967350 ((_ is Union!17119) (reg!17448 (h!73243 (t!380662 l!9142))))) b!6969217))

(declare-fun e!4189315 () Bool)

(assert (=> b!6967451 (= tp!1921819 e!4189315)))

(declare-fun b!6969221 () Bool)

(declare-fun tp!1923328 () Bool)

(declare-fun tp!1923327 () Bool)

(assert (=> b!6969221 (= e!4189315 (and tp!1923328 tp!1923327))))

(declare-fun b!6969219 () Bool)

(declare-fun tp!1923325 () Bool)

(declare-fun tp!1923324 () Bool)

(assert (=> b!6969219 (= e!4189315 (and tp!1923325 tp!1923324))))

(declare-fun b!6969218 () Bool)

(assert (=> b!6969218 (= e!4189315 tp_is_empty!43463)))

(declare-fun b!6969220 () Bool)

(declare-fun tp!1923326 () Bool)

(assert (=> b!6969220 (= e!4189315 tp!1923326)))

(assert (= (and b!6967451 ((_ is ElementMatch!17119) (regOne!34750 (regTwo!34751 (regOne!34750 r!13765))))) b!6969218))

(assert (= (and b!6967451 ((_ is Concat!25964) (regOne!34750 (regTwo!34751 (regOne!34750 r!13765))))) b!6969219))

(assert (= (and b!6967451 ((_ is Star!17119) (regOne!34750 (regTwo!34751 (regOne!34750 r!13765))))) b!6969220))

(assert (= (and b!6967451 ((_ is Union!17119) (regOne!34750 (regTwo!34751 (regOne!34750 r!13765))))) b!6969221))

(declare-fun e!4189316 () Bool)

(assert (=> b!6967451 (= tp!1921818 e!4189316)))

(declare-fun b!6969225 () Bool)

(declare-fun tp!1923333 () Bool)

(declare-fun tp!1923332 () Bool)

(assert (=> b!6969225 (= e!4189316 (and tp!1923333 tp!1923332))))

(declare-fun b!6969223 () Bool)

(declare-fun tp!1923330 () Bool)

(declare-fun tp!1923329 () Bool)

(assert (=> b!6969223 (= e!4189316 (and tp!1923330 tp!1923329))))

(declare-fun b!6969222 () Bool)

(assert (=> b!6969222 (= e!4189316 tp_is_empty!43463)))

(declare-fun b!6969224 () Bool)

(declare-fun tp!1923331 () Bool)

(assert (=> b!6969224 (= e!4189316 tp!1923331)))

(assert (= (and b!6967451 ((_ is ElementMatch!17119) (regTwo!34750 (regTwo!34751 (regOne!34750 r!13765))))) b!6969222))

(assert (= (and b!6967451 ((_ is Concat!25964) (regTwo!34750 (regTwo!34751 (regOne!34750 r!13765))))) b!6969223))

(assert (= (and b!6967451 ((_ is Star!17119) (regTwo!34750 (regTwo!34751 (regOne!34750 r!13765))))) b!6969224))

(assert (= (and b!6967451 ((_ is Union!17119) (regTwo!34750 (regTwo!34751 (regOne!34750 r!13765))))) b!6969225))

(declare-fun e!4189317 () Bool)

(assert (=> b!6967341 (= tp!1921681 e!4189317)))

(declare-fun b!6969229 () Bool)

(declare-fun tp!1923338 () Bool)

(declare-fun tp!1923337 () Bool)

(assert (=> b!6969229 (= e!4189317 (and tp!1923338 tp!1923337))))

(declare-fun b!6969227 () Bool)

(declare-fun tp!1923335 () Bool)

(declare-fun tp!1923334 () Bool)

(assert (=> b!6969227 (= e!4189317 (and tp!1923335 tp!1923334))))

(declare-fun b!6969226 () Bool)

(assert (=> b!6969226 (= e!4189317 tp_is_empty!43463)))

(declare-fun b!6969228 () Bool)

(declare-fun tp!1923336 () Bool)

(assert (=> b!6969228 (= e!4189317 tp!1923336)))

(assert (= (and b!6967341 ((_ is ElementMatch!17119) (regOne!34750 (regOne!34751 (reg!17448 r!13765))))) b!6969226))

(assert (= (and b!6967341 ((_ is Concat!25964) (regOne!34750 (regOne!34751 (reg!17448 r!13765))))) b!6969227))

(assert (= (and b!6967341 ((_ is Star!17119) (regOne!34750 (regOne!34751 (reg!17448 r!13765))))) b!6969228))

(assert (= (and b!6967341 ((_ is Union!17119) (regOne!34750 (regOne!34751 (reg!17448 r!13765))))) b!6969229))

(declare-fun e!4189318 () Bool)

(assert (=> b!6967341 (= tp!1921680 e!4189318)))

(declare-fun b!6969233 () Bool)

(declare-fun tp!1923343 () Bool)

(declare-fun tp!1923342 () Bool)

(assert (=> b!6969233 (= e!4189318 (and tp!1923343 tp!1923342))))

(declare-fun b!6969231 () Bool)

(declare-fun tp!1923340 () Bool)

(declare-fun tp!1923339 () Bool)

(assert (=> b!6969231 (= e!4189318 (and tp!1923340 tp!1923339))))

(declare-fun b!6969230 () Bool)

(assert (=> b!6969230 (= e!4189318 tp_is_empty!43463)))

(declare-fun b!6969232 () Bool)

(declare-fun tp!1923341 () Bool)

(assert (=> b!6969232 (= e!4189318 tp!1923341)))

(assert (= (and b!6967341 ((_ is ElementMatch!17119) (regTwo!34750 (regOne!34751 (reg!17448 r!13765))))) b!6969230))

(assert (= (and b!6967341 ((_ is Concat!25964) (regTwo!34750 (regOne!34751 (reg!17448 r!13765))))) b!6969231))

(assert (= (and b!6967341 ((_ is Star!17119) (regTwo!34750 (regOne!34751 (reg!17448 r!13765))))) b!6969232))

(assert (= (and b!6967341 ((_ is Union!17119) (regTwo!34750 (regOne!34751 (reg!17448 r!13765))))) b!6969233))

(declare-fun e!4189319 () Bool)

(assert (=> b!6967444 (= tp!1921811 e!4189319)))

(declare-fun b!6969237 () Bool)

(declare-fun tp!1923348 () Bool)

(declare-fun tp!1923347 () Bool)

(assert (=> b!6969237 (= e!4189319 (and tp!1923348 tp!1923347))))

(declare-fun b!6969235 () Bool)

(declare-fun tp!1923345 () Bool)

(declare-fun tp!1923344 () Bool)

(assert (=> b!6969235 (= e!4189319 (and tp!1923345 tp!1923344))))

(declare-fun b!6969234 () Bool)

(assert (=> b!6969234 (= e!4189319 tp_is_empty!43463)))

(declare-fun b!6969236 () Bool)

(declare-fun tp!1923346 () Bool)

(assert (=> b!6969236 (= e!4189319 tp!1923346)))

(assert (= (and b!6967444 ((_ is ElementMatch!17119) (regOne!34751 (reg!17448 (regTwo!34750 r!13765))))) b!6969234))

(assert (= (and b!6967444 ((_ is Concat!25964) (regOne!34751 (reg!17448 (regTwo!34750 r!13765))))) b!6969235))

(assert (= (and b!6967444 ((_ is Star!17119) (regOne!34751 (reg!17448 (regTwo!34750 r!13765))))) b!6969236))

(assert (= (and b!6967444 ((_ is Union!17119) (regOne!34751 (reg!17448 (regTwo!34750 r!13765))))) b!6969237))

(declare-fun e!4189320 () Bool)

(assert (=> b!6967444 (= tp!1921810 e!4189320)))

(declare-fun b!6969241 () Bool)

(declare-fun tp!1923353 () Bool)

(declare-fun tp!1923352 () Bool)

(assert (=> b!6969241 (= e!4189320 (and tp!1923353 tp!1923352))))

(declare-fun b!6969239 () Bool)

(declare-fun tp!1923350 () Bool)

(declare-fun tp!1923349 () Bool)

(assert (=> b!6969239 (= e!4189320 (and tp!1923350 tp!1923349))))

(declare-fun b!6969238 () Bool)

(assert (=> b!6969238 (= e!4189320 tp_is_empty!43463)))

(declare-fun b!6969240 () Bool)

(declare-fun tp!1923351 () Bool)

(assert (=> b!6969240 (= e!4189320 tp!1923351)))

(assert (= (and b!6967444 ((_ is ElementMatch!17119) (regTwo!34751 (reg!17448 (regTwo!34750 r!13765))))) b!6969238))

(assert (= (and b!6967444 ((_ is Concat!25964) (regTwo!34751 (reg!17448 (regTwo!34750 r!13765))))) b!6969239))

(assert (= (and b!6967444 ((_ is Star!17119) (regTwo!34751 (reg!17448 (regTwo!34750 r!13765))))) b!6969240))

(assert (= (and b!6967444 ((_ is Union!17119) (regTwo!34751 (reg!17448 (regTwo!34750 r!13765))))) b!6969241))

(declare-fun e!4189321 () Bool)

(assert (=> b!6967435 (= tp!1921799 e!4189321)))

(declare-fun b!6969245 () Bool)

(declare-fun tp!1923358 () Bool)

(declare-fun tp!1923357 () Bool)

(assert (=> b!6969245 (= e!4189321 (and tp!1923358 tp!1923357))))

(declare-fun b!6969243 () Bool)

(declare-fun tp!1923355 () Bool)

(declare-fun tp!1923354 () Bool)

(assert (=> b!6969243 (= e!4189321 (and tp!1923355 tp!1923354))))

(declare-fun b!6969242 () Bool)

(assert (=> b!6969242 (= e!4189321 tp_is_empty!43463)))

(declare-fun b!6969244 () Bool)

(declare-fun tp!1923356 () Bool)

(assert (=> b!6969244 (= e!4189321 tp!1923356)))

(assert (= (and b!6967435 ((_ is ElementMatch!17119) (reg!17448 (regOne!34751 (regTwo!34751 r!13765))))) b!6969242))

(assert (= (and b!6967435 ((_ is Concat!25964) (reg!17448 (regOne!34751 (regTwo!34751 r!13765))))) b!6969243))

(assert (= (and b!6967435 ((_ is Star!17119) (reg!17448 (regOne!34751 (regTwo!34751 r!13765))))) b!6969244))

(assert (= (and b!6967435 ((_ is Union!17119) (reg!17448 (regOne!34751 (regTwo!34751 r!13765))))) b!6969245))

(declare-fun e!4189322 () Bool)

(assert (=> b!6967426 (= tp!1921788 e!4189322)))

(declare-fun b!6969249 () Bool)

(declare-fun tp!1923363 () Bool)

(declare-fun tp!1923362 () Bool)

(assert (=> b!6969249 (= e!4189322 (and tp!1923363 tp!1923362))))

(declare-fun b!6969247 () Bool)

(declare-fun tp!1923360 () Bool)

(declare-fun tp!1923359 () Bool)

(assert (=> b!6969247 (= e!4189322 (and tp!1923360 tp!1923359))))

(declare-fun b!6969246 () Bool)

(assert (=> b!6969246 (= e!4189322 tp_is_empty!43463)))

(declare-fun b!6969248 () Bool)

(declare-fun tp!1923361 () Bool)

(assert (=> b!6969248 (= e!4189322 tp!1923361)))

(assert (= (and b!6967426 ((_ is ElementMatch!17119) (regOne!34750 (regOne!34750 (regOne!34750 r!13765))))) b!6969246))

(assert (= (and b!6967426 ((_ is Concat!25964) (regOne!34750 (regOne!34750 (regOne!34750 r!13765))))) b!6969247))

(assert (= (and b!6967426 ((_ is Star!17119) (regOne!34750 (regOne!34750 (regOne!34750 r!13765))))) b!6969248))

(assert (= (and b!6967426 ((_ is Union!17119) (regOne!34750 (regOne!34750 (regOne!34750 r!13765))))) b!6969249))

(declare-fun e!4189323 () Bool)

(assert (=> b!6967426 (= tp!1921787 e!4189323)))

(declare-fun b!6969253 () Bool)

(declare-fun tp!1923368 () Bool)

(declare-fun tp!1923367 () Bool)

(assert (=> b!6969253 (= e!4189323 (and tp!1923368 tp!1923367))))

(declare-fun b!6969251 () Bool)

(declare-fun tp!1923365 () Bool)

(declare-fun tp!1923364 () Bool)

(assert (=> b!6969251 (= e!4189323 (and tp!1923365 tp!1923364))))

(declare-fun b!6969250 () Bool)

(assert (=> b!6969250 (= e!4189323 tp_is_empty!43463)))

(declare-fun b!6969252 () Bool)

(declare-fun tp!1923366 () Bool)

(assert (=> b!6969252 (= e!4189323 tp!1923366)))

(assert (= (and b!6967426 ((_ is ElementMatch!17119) (regTwo!34750 (regOne!34750 (regOne!34750 r!13765))))) b!6969250))

(assert (= (and b!6967426 ((_ is Concat!25964) (regTwo!34750 (regOne!34750 (regOne!34750 r!13765))))) b!6969251))

(assert (= (and b!6967426 ((_ is Star!17119) (regTwo!34750 (regOne!34750 (regOne!34750 r!13765))))) b!6969252))

(assert (= (and b!6967426 ((_ is Union!17119) (regTwo!34750 (regOne!34750 (regOne!34750 r!13765))))) b!6969253))

(declare-fun e!4189324 () Bool)

(assert (=> b!6967360 (= tp!1921706 e!4189324)))

(declare-fun b!6969257 () Bool)

(declare-fun tp!1923373 () Bool)

(declare-fun tp!1923372 () Bool)

(assert (=> b!6969257 (= e!4189324 (and tp!1923373 tp!1923372))))

(declare-fun b!6969255 () Bool)

(declare-fun tp!1923370 () Bool)

(declare-fun tp!1923369 () Bool)

(assert (=> b!6969255 (= e!4189324 (and tp!1923370 tp!1923369))))

(declare-fun b!6969254 () Bool)

(assert (=> b!6969254 (= e!4189324 tp_is_empty!43463)))

(declare-fun b!6969256 () Bool)

(declare-fun tp!1923371 () Bool)

(assert (=> b!6969256 (= e!4189324 tp!1923371)))

(assert (= (and b!6967360 ((_ is ElementMatch!17119) (regOne!34751 (regTwo!34750 (regTwo!34751 r!13765))))) b!6969254))

(assert (= (and b!6967360 ((_ is Concat!25964) (regOne!34751 (regTwo!34750 (regTwo!34751 r!13765))))) b!6969255))

(assert (= (and b!6967360 ((_ is Star!17119) (regOne!34751 (regTwo!34750 (regTwo!34751 r!13765))))) b!6969256))

(assert (= (and b!6967360 ((_ is Union!17119) (regOne!34751 (regTwo!34750 (regTwo!34751 r!13765))))) b!6969257))

(declare-fun e!4189325 () Bool)

(assert (=> b!6967360 (= tp!1921705 e!4189325)))

(declare-fun b!6969261 () Bool)

(declare-fun tp!1923378 () Bool)

(declare-fun tp!1923377 () Bool)

(assert (=> b!6969261 (= e!4189325 (and tp!1923378 tp!1923377))))

(declare-fun b!6969259 () Bool)

(declare-fun tp!1923375 () Bool)

(declare-fun tp!1923374 () Bool)

(assert (=> b!6969259 (= e!4189325 (and tp!1923375 tp!1923374))))

(declare-fun b!6969258 () Bool)

(assert (=> b!6969258 (= e!4189325 tp_is_empty!43463)))

(declare-fun b!6969260 () Bool)

(declare-fun tp!1923376 () Bool)

(assert (=> b!6969260 (= e!4189325 tp!1923376)))

(assert (= (and b!6967360 ((_ is ElementMatch!17119) (regTwo!34751 (regTwo!34750 (regTwo!34751 r!13765))))) b!6969258))

(assert (= (and b!6967360 ((_ is Concat!25964) (regTwo!34751 (regTwo!34750 (regTwo!34751 r!13765))))) b!6969259))

(assert (= (and b!6967360 ((_ is Star!17119) (regTwo!34751 (regTwo!34750 (regTwo!34751 r!13765))))) b!6969260))

(assert (= (and b!6967360 ((_ is Union!17119) (regTwo!34751 (regTwo!34750 (regTwo!34751 r!13765))))) b!6969261))

(declare-fun e!4189326 () Bool)

(assert (=> b!6967412 (= tp!1921771 e!4189326)))

(declare-fun b!6969265 () Bool)

(declare-fun tp!1923383 () Bool)

(declare-fun tp!1923382 () Bool)

(assert (=> b!6969265 (= e!4189326 (and tp!1923383 tp!1923382))))

(declare-fun b!6969263 () Bool)

(declare-fun tp!1923380 () Bool)

(declare-fun tp!1923379 () Bool)

(assert (=> b!6969263 (= e!4189326 (and tp!1923380 tp!1923379))))

(declare-fun b!6969262 () Bool)

(assert (=> b!6969262 (= e!4189326 tp_is_empty!43463)))

(declare-fun b!6969264 () Bool)

(declare-fun tp!1923381 () Bool)

(assert (=> b!6969264 (= e!4189326 tp!1923381)))

(assert (= (and b!6967412 ((_ is ElementMatch!17119) (regOne!34751 (regTwo!34750 (reg!17448 r!13765))))) b!6969262))

(assert (= (and b!6967412 ((_ is Concat!25964) (regOne!34751 (regTwo!34750 (reg!17448 r!13765))))) b!6969263))

(assert (= (and b!6967412 ((_ is Star!17119) (regOne!34751 (regTwo!34750 (reg!17448 r!13765))))) b!6969264))

(assert (= (and b!6967412 ((_ is Union!17119) (regOne!34751 (regTwo!34750 (reg!17448 r!13765))))) b!6969265))

(declare-fun e!4189327 () Bool)

(assert (=> b!6967412 (= tp!1921770 e!4189327)))

(declare-fun b!6969269 () Bool)

(declare-fun tp!1923388 () Bool)

(declare-fun tp!1923387 () Bool)

(assert (=> b!6969269 (= e!4189327 (and tp!1923388 tp!1923387))))

(declare-fun b!6969267 () Bool)

(declare-fun tp!1923385 () Bool)

(declare-fun tp!1923384 () Bool)

(assert (=> b!6969267 (= e!4189327 (and tp!1923385 tp!1923384))))

(declare-fun b!6969266 () Bool)

(assert (=> b!6969266 (= e!4189327 tp_is_empty!43463)))

(declare-fun b!6969268 () Bool)

(declare-fun tp!1923386 () Bool)

(assert (=> b!6969268 (= e!4189327 tp!1923386)))

(assert (= (and b!6967412 ((_ is ElementMatch!17119) (regTwo!34751 (regTwo!34750 (reg!17448 r!13765))))) b!6969266))

(assert (= (and b!6967412 ((_ is Concat!25964) (regTwo!34751 (regTwo!34750 (reg!17448 r!13765))))) b!6969267))

(assert (= (and b!6967412 ((_ is Star!17119) (regTwo!34751 (regTwo!34750 (reg!17448 r!13765))))) b!6969268))

(assert (= (and b!6967412 ((_ is Union!17119) (regTwo!34751 (regTwo!34750 (reg!17448 r!13765))))) b!6969269))

(declare-fun e!4189328 () Bool)

(assert (=> b!6967403 (= tp!1921759 e!4189328)))

(declare-fun b!6969273 () Bool)

(declare-fun tp!1923393 () Bool)

(declare-fun tp!1923392 () Bool)

(assert (=> b!6969273 (= e!4189328 (and tp!1923393 tp!1923392))))

(declare-fun b!6969271 () Bool)

(declare-fun tp!1923390 () Bool)

(declare-fun tp!1923389 () Bool)

(assert (=> b!6969271 (= e!4189328 (and tp!1923390 tp!1923389))))

(declare-fun b!6969270 () Bool)

(assert (=> b!6969270 (= e!4189328 tp_is_empty!43463)))

(declare-fun b!6969272 () Bool)

(declare-fun tp!1923391 () Bool)

(assert (=> b!6969272 (= e!4189328 tp!1923391)))

(assert (= (and b!6967403 ((_ is ElementMatch!17119) (reg!17448 (reg!17448 (regTwo!34751 r!13765))))) b!6969270))

(assert (= (and b!6967403 ((_ is Concat!25964) (reg!17448 (reg!17448 (regTwo!34751 r!13765))))) b!6969271))

(assert (= (and b!6967403 ((_ is Star!17119) (reg!17448 (reg!17448 (regTwo!34751 r!13765))))) b!6969272))

(assert (= (and b!6967403 ((_ is Union!17119) (reg!17448 (reg!17448 (regTwo!34751 r!13765))))) b!6969273))

(declare-fun e!4189329 () Bool)

(assert (=> b!6967394 (= tp!1921748 e!4189329)))

(declare-fun b!6969277 () Bool)

(declare-fun tp!1923398 () Bool)

(declare-fun tp!1923397 () Bool)

(assert (=> b!6969277 (= e!4189329 (and tp!1923398 tp!1923397))))

(declare-fun b!6969275 () Bool)

(declare-fun tp!1923395 () Bool)

(declare-fun tp!1923394 () Bool)

(assert (=> b!6969275 (= e!4189329 (and tp!1923395 tp!1923394))))

(declare-fun b!6969274 () Bool)

(assert (=> b!6969274 (= e!4189329 tp_is_empty!43463)))

(declare-fun b!6969276 () Bool)

(declare-fun tp!1923396 () Bool)

(assert (=> b!6969276 (= e!4189329 tp!1923396)))

(assert (= (and b!6967394 ((_ is ElementMatch!17119) (regOne!34750 (regOne!34750 (regOne!34751 r!13765))))) b!6969274))

(assert (= (and b!6967394 ((_ is Concat!25964) (regOne!34750 (regOne!34750 (regOne!34751 r!13765))))) b!6969275))

(assert (= (and b!6967394 ((_ is Star!17119) (regOne!34750 (regOne!34750 (regOne!34751 r!13765))))) b!6969276))

(assert (= (and b!6967394 ((_ is Union!17119) (regOne!34750 (regOne!34750 (regOne!34751 r!13765))))) b!6969277))

(declare-fun e!4189330 () Bool)

(assert (=> b!6967394 (= tp!1921747 e!4189330)))

(declare-fun b!6969281 () Bool)

(declare-fun tp!1923403 () Bool)

(declare-fun tp!1923402 () Bool)

(assert (=> b!6969281 (= e!4189330 (and tp!1923403 tp!1923402))))

(declare-fun b!6969279 () Bool)

(declare-fun tp!1923400 () Bool)

(declare-fun tp!1923399 () Bool)

(assert (=> b!6969279 (= e!4189330 (and tp!1923400 tp!1923399))))

(declare-fun b!6969278 () Bool)

(assert (=> b!6969278 (= e!4189330 tp_is_empty!43463)))

(declare-fun b!6969280 () Bool)

(declare-fun tp!1923401 () Bool)

(assert (=> b!6969280 (= e!4189330 tp!1923401)))

(assert (= (and b!6967394 ((_ is ElementMatch!17119) (regTwo!34750 (regOne!34750 (regOne!34751 r!13765))))) b!6969278))

(assert (= (and b!6967394 ((_ is Concat!25964) (regTwo!34750 (regOne!34750 (regOne!34751 r!13765))))) b!6969279))

(assert (= (and b!6967394 ((_ is Star!17119) (regTwo!34750 (regOne!34750 (regOne!34751 r!13765))))) b!6969280))

(assert (= (and b!6967394 ((_ is Union!17119) (regTwo!34750 (regOne!34750 (regOne!34751 r!13765))))) b!6969281))

(declare-fun b_lambda!260751 () Bool)

(assert (= b_lambda!260749 (or d!2170585 b_lambda!260751)))

(declare-fun bs!1858970 () Bool)

(declare-fun d!2170997 () Bool)

(assert (= bs!1858970 (and d!2170997 d!2170585)))

(assert (=> bs!1858970 (= (dynLambda!26635 lambda!397540 (h!73243 (t!380662 l!9142))) (validRegex!8803 (h!73243 (t!380662 l!9142))))))

(assert (=> bs!1858970 m!7658576))

(assert (=> b!6968578 d!2170997))

(declare-fun b_lambda!260753 () Bool)

(assert (= b_lambda!260745 (or d!2170721 b_lambda!260753)))

(declare-fun bs!1858971 () Bool)

(declare-fun d!2170999 () Bool)

(assert (= bs!1858971 (and d!2170999 d!2170721)))

(assert (=> bs!1858971 (= (dynLambda!26635 lambda!397563 (h!73243 (t!380662 lt!2479422))) (validRegex!8803 (h!73243 (t!380662 lt!2479422))))))

(declare-fun m!7659062 () Bool)

(assert (=> bs!1858971 m!7659062))

(assert (=> b!6968564 d!2170999))

(declare-fun b_lambda!260755 () Bool)

(assert (= b_lambda!260747 (or start!668274 b_lambda!260755)))

(declare-fun bs!1858972 () Bool)

(declare-fun d!2171001 () Bool)

(assert (= bs!1858972 (and d!2171001 start!668274)))

(assert (=> bs!1858972 (= (dynLambda!26635 lambda!397529 (h!73243 (t!380662 (t!380662 l!9142)))) (validRegex!8803 (h!73243 (t!380662 (t!380662 l!9142)))))))

(declare-fun m!7659064 () Bool)

(assert (=> bs!1858972 m!7659064))

(assert (=> b!6968576 d!2171001))

(declare-fun b_lambda!260757 () Bool)

(assert (= b_lambda!260743 (or d!2170745 b_lambda!260757)))

(declare-fun bs!1858973 () Bool)

(declare-fun d!2171003 () Bool)

(assert (= bs!1858973 (and d!2171003 d!2170745)))

(assert (=> bs!1858973 (= (dynLambda!26635 lambda!397566 (h!73243 (t!380662 l!9142))) (validRegex!8803 (h!73243 (t!380662 l!9142))))))

(assert (=> bs!1858973 m!7658576))

(assert (=> b!6968485 d!2171003))

(declare-fun b_lambda!260759 () Bool)

(assert (= b_lambda!260741 (or d!2170603 b_lambda!260759)))

(declare-fun bs!1858974 () Bool)

(declare-fun d!2171005 () Bool)

(assert (= bs!1858974 (and d!2171005 d!2170603)))

(assert (=> bs!1858974 (= (dynLambda!26635 lambda!397556 (h!73243 (t!380662 l!9142))) (not (dynLambda!26635 lambda!397530 (h!73243 (t!380662 l!9142)))))))

(declare-fun b_lambda!260763 () Bool)

(assert (=> (not b_lambda!260763) (not bs!1858974)))

(declare-fun m!7659066 () Bool)

(assert (=> bs!1858974 m!7659066))

(assert (=> b!6968447 d!2171005))

(declare-fun b_lambda!260761 () Bool)

(assert (= b_lambda!260739 (or d!2170569 b_lambda!260761)))

(declare-fun bs!1858975 () Bool)

(declare-fun d!2171007 () Bool)

(assert (= bs!1858975 (and d!2171007 d!2170569)))

(assert (=> bs!1858975 (= (dynLambda!26635 lambda!397539 (h!73243 (t!380662 lt!2479422))) (validRegex!8803 (h!73243 (t!380662 lt!2479422))))))

(assert (=> bs!1858975 m!7659062))

(assert (=> b!6968384 d!2171007))

(check-sat (not b!6969063) (not b!6968940) (not b!6969224) (not b!6968795) (not b!6969055) (not b!6968646) (not b!6968975) (not b!6968711) (not b!6969040) (not d!2170973) (not b!6968972) (not b!6969108) (not b!6968574) (not b!6968891) (not b!6969039) (not b!6969060) (not b!6968948) (not b!6969200) (not bm!632557) (not b!6968847) (not b!6969259) (not b!6969245) (not b!6968715) (not b!6969275) (not b!6968693) (not b_lambda!260713) (not b!6968769) (not b!6968987) (not b!6969244) (not b!6969253) (not b!6969051) (not b!6968707) (not b!6969062) (not b!6968863) (not b!6968936) (not b!6968999) (not b!6968786) (not b!6968445) (not b!6969116) (not b!6968729) (not b!6968761) (not b!6969168) (not b!6969189) (not b!6968751) (not b!6968803) (not b!6969165) (not bm!632590) (not b!6969153) (not bm!632582) (not b!6969088) (not b!6968896) (not b!6969086) (not bm!632591) (not b!6969196) (not b!6969014) (not d!2170937) (not bm!632580) (not b!6968395) (not d!2170901) (not b!6969187) (not b!6969255) (not b!6968778) (not b!6968657) (not b!6968726) (not b!6968747) (not b!6968382) (not b!6968914) (not b!6968689) (not b!6968824) (not b!6969006) (not b!6969164) (not b!6969239) (not b!6968709) (not b!6968501) (not b!6969180) (not bm!632598) (not b!6968920) (not b!6969264) (not bm!632585) (not b!6968486) (not b!6968798) (not b_lambda!260699) (not b!6969277) (not b!6968765) (not b!6968998) (not b!6969024) (not b!6969209) (not b!6968872) (not b!6969167) (not b!6969141) (not b!6969043) (not b!6968745) (not b!6968718) (not b!6968706) (not b!6969004) (not b!6968822) (not b!6968931) (not b!6968579) (not b!6968958) (not b!6969120) (not b!6968783) (not b!6968796) (not b!6968427) (not b!6968810) (not b!6969121) (not b!6969220) (not b!6968864) (not b_lambda!260703) (not bm!632568) (not b!6969133) (not b!6968907) (not b_lambda!260755) (not b!6969243) (not b!6968575) (not b!6968675) (not b!6969193) (not b!6968717) (not b!6968746) (not b!6968721) (not b!6968835) (not b!6968906) (not b!6968739) (not bm!632613) (not b!6969172) (not bm!632550) (not b!6969036) (not b!6969047) (not b!6968838) (not b!6969058) (not b!6968939) (not b!6969241) (not b!6969048) (not b!6969169) (not b!6968919) (not b!6969090) (not b!6969271) (not b!6969099) (not b!6969256) (not b!6968663) (not b!6968456) (not b!6968816) (not b!6968802) (not b!6969195) (not b!6968580) (not b!6969157) (not b!6968856) (not b!6968860) (not b!6969056) (not b!6968658) (not b!6968587) (not b!6968703) (not d!2170921) (not b!6968879) (not b!6968681) (not b!6969112) (not b!6968922) (not b!6969276) (not b!6969252) (not d!2170985) (not b!6968662) (not b!6969022) (not bm!632588) (not bm!632572) (not b!6968787) (not b!6969267) (not b!6969257) (not b!6969139) (not b!6969183) (not b!6968788) (not b!6969054) (not b!6968988) (not b!6968943) (not b!6968883) (not b_lambda!260705) (not b!6969135) (not b!6968858) (not b!6968819) (not b!6968770) (not b!6969003) (not b!6968698) (not b!6968807) (not bm!632560) (not b!6968483) (not b!6969132) (not b!6968490) (not b!6969140) (not b!6969075) (not b!6968699) (not b!6968960) (not b!6969212) (not b!6968565) (not b!6968890) (not b!6968690) (not b!6968815) (not b!6969143) (not b!6968880) (not b!6969240) (not b!6968592) (not b!6969125) tp_is_empty!43463 (not b!6969095) (not b!6968871) (not b!6968954) (not d!2170893) (not b!6968571) (not b!6969156) (not b!6968465) (not b!6968794) (not b!6968758) (not b!6969176) (not b!6968714) (not b!6968840) (not b!6969127) (not b!6968702) (not bs!1858970) (not bm!632606) (not b!6968648) (not b!6969072) (not b!6968996) (not b!6969026) (not b!6968767) (not b!6968834) (not bm!632545) (not b!6968930) (not b!6968900) (not b!6968577) (not b!6968573) (not bm!632548) (not b!6968499) (not b!6969219) (not b!6969197) (not b!6968713) (not b!6968524) (not b!6969223) (not b!6969171) (not bm!632571) (not d!2170993) (not b!6968759) (not bm!632565) (not bm!632553) (not b!6968659) (not b!6968947) (not b!6969109) (not bm!632593) (not bm!632574) (not b!6969074) (not b_lambda!260759) (not b!6968911) (not b!6969083) (not b_lambda!260763) (not b!6969149) (not b!6968661) (not b!6969076) (not b!6969044) (not b!6968951) (not bm!632597) (not b!6969105) (not b!6968928) (not b!6968984) (not b!6969136) (not bm!632555) (not b!6968627) (not b!6968980) (not b!6968974) (not b!6968674) (not b!6969107) (not b!6968687) (not b!6968859) (not b!6968737) (not b!6968804) (not b!6968741) (not b_lambda!260671) (not b!6969016) (not b!6969215) (not bm!632600) (not b!6968916) (not b!6969046) (not b!6969251) (not bm!632575) (not b!6968553) (not b!6968735) (not b!6968956) (not b!6968792) (not bm!632579) (not b!6969217) (not b!6969273) (not b!6968908) (not b!6968995) (not b!6969151) (not b!6968898) (not b!6968727) (not b!6969010) (not b!6968832) (not b!6968719) (not b!6969034) (not b!6968779) (not b!6968671) (not b!6969281) (not b!6968935) (not b!6969179) (not b!6969082) (not b!6969050) (not b!6968775) (not b!6968942) (not b!6968763) (not bm!632607) (not b!6969027) (not b!6968979) (not b!6968812) (not b!6968895) (not b!6969232) (not b!6968918) (not bs!1858973) (not b!6969020) (not b!6968774) (not b!6968938) (not b!6968887) (not b!6968927) (not b!6968970) (not b!6968964) (not b!6968950) (not bm!632589) (not b!6968886) (not b!6968923) (not b!6968734) (not b!6968932) (not b!6968892) (not b!6969144) (not b!6968695) (not bm!632610) (not b!6968665) (not b!6968643) (not b!6968924) (not b!6968983) (not bm!632559) (not b!6968866) (not b!6969067) (not b!6968407) (not b!6968855) (not b!6968852) (not b!6969008) (not bm!632608) (not b!6969068) (not b!6969032) (not b!6968934) (not b!6969269) (not b!6968992) (not b!6969207) (not b!6969247) (not b!6968962) (not b!6969181) (not b!6969066) (not b!6968915) (not b!6968902) (not bm!632547) (not d!2170971) (not b!6968836) (not b!6968818) (not b!6968808) (not d!2170899) (not b!6969030) (not b_lambda!260757) (not b!6969152) (not b!6968806) (not b!6969184) (not b!6968722) (not b!6968669) (not b!6968959) (not b!6969260) (not bm!632551) (not b!6968968) (not b!6969123) (not b!6968694) (not b!6969018) (not b!6969236) (not b!6968581) (not bm!632563) (not b!6968402) (not b!6969087) (not b!6969079) (not b!6968691) (not b!6969019) (not b!6969148) (not b!6968870) (not b!6968994) (not b_lambda!260761) (not b!6968814) (not b!6968846) (not bs!1858971) (not b!6968876) (not b!6969094) (not b!6968780) (not b!6969208) (not b!6969059) (not b!6968875) (not b!6969145) (not b!6968725) (not b!6968839) (not bm!632594) (not b!6969071) (not b!6969131) (not b!6969279) (not b!6968677) (not d!2170891) (not b!6968533) (not b!6968776) (not b!6968967) (not b!6969155) (not b!6968952) (not b!6968820) (not b!6969102) (not b!6968990) (not b!6968705) (not b!6968569) (not b!6968784) (not b!6969103) (not b!6969185) (not bm!632578) (not b!6968505) (not b!6969111) (not b!6969204) (not b!6969091) (not b!6969228) (not b!6968754) (not b!6968946) (not b!6968743) (not b!6968536) (not b!6968843) (not b!6968682) (not b!6968697) (not b!6968506) (not b!6968567) (not b!6968753) (not b!6968850) (not b!6969031) (not b!6968799) (not b!6968385) (not bs!1858975) (not b!6968842) (not b_lambda!260701) (not d!2170911) (not b!6969104) (not b!6968562) (not b!6969147) (not b!6968710) (not b!6968685) (not b!6968583) (not b!6968851) (not b!6969113) (not b!6968601) (not b!6969002) (not b!6969191) (not b!6969221) (not b!6969225) (not bm!632577) (not b!6969028) (not b!6969117) (not b!6969261) (not b!6969129) (not b!6968773) (not b!6968670) (not b_lambda!260751) (not bm!632614) (not b!6968826) (not b!6968738) (not b!6969192) (not b!6968912) (not b!6969199) (not b!6968396) (not b!6969119) (not b!6969248) (not b!6968755) (not bm!632612) (not b!6968730) (not b!6968474) (not b!6969227) (not b!6969064) (not b!6968971) (not b!6969160) (not bm!632586) (not b!6969161) (not b!6968823) (not b!6968507) (not b!6968955) (not b!6969203) (not b!6969096) (not b!6968884) (not b!6969272) (not b!6969137) (not b!6968899) (not b!6969100) (not b!6968398) (not b!6968723) (not b!6969177) (not b!6968782) (not b!6968830) (not b!6969201) (not b!6968976) (not b!6968393) (not b!6968844) (not b!6968488) (not b_lambda!260753) (not bs!1858972) (not b!6968673) (not b!6968417) (not b!6968436) (not b!6969084) (not b!6968742) (not b!6968570) (not b!6968894) (not b!6968771) (not b!6969211) (not b!6968762) (not d!2170977) (not d!2170907) (not b!6969007) (not b!6968848) (not b!6968791) (not b!6969268) (not b!6968686) (not b!6968978) (not bm!632583) (not b!6968944) (not b!6969231) (not b!6969216) (not b!6968963) (not bm!632569) (not b!6969229) (not b!6969205) (not b!6968878) (not b!6968666) (not b!6968397) (not b!6968503) (not b!6969078) (not b!6968701) (not b!6969015) (not b!6968874) (not b!6968678) (not b!6968986) (not b!6968515) (not b!6968625) (not b!6969159) (not b!6969237) (not b!6969011) (not b!6968828) (not b!6968790) (not b!6969128) (not b!6968910) (not b!6969124) (not d!2170991) (not b!6968982) (not b!6969163) (not bm!632566) (not b!6968731) (not b!6968538) (not b!6969023) (not b!6968733) (not b!6969233) (not b!6968904) (not b!6969042) (not b!6968868) (not b!6969213) (not b!6969235) (not bm!632596) (not b!6969035) (not b!6969265) (not b!6969070) (not b!6968811) (not bm!632562) (not b!6968926) (not b!6969012) (not b!6969280) (not b!6968749) (not b!6969249) (not b!6968991) (not b!6969173) (not b!6968966) (not b!6968867) (not b!6968502) (not b!6969175) (not b!6969038) (not b!6968750) (not b!6969000) (not b!6968862) (not b!6968667) (not b!6968831) (not b!6968854) (not b!6969263) (not b!6968757) (not bm!632605) (not d!2170967) (not b!6968448) (not b!6968683) (not b!6968882) (not b!6968903) (not b!6968679) (not b!6968827) (not b!6968800) (not b!6968582) (not b!6969080) (not b!6969115) (not b!6968766) (not b!6969098) (not b!6968888) (not b!6969092) (not b!6969188) (not b!6969052))
(check-sat)
