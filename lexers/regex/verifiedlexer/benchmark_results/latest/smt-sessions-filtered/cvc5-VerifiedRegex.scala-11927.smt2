; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!668068 () Bool)

(assert start!668068)

(declare-fun bs!1858506 () Bool)

(declare-fun b!6963530 () Bool)

(assert (= bs!1858506 (and b!6963530 start!668068)))

(declare-fun lambda!397312 () Int)

(declare-fun lambda!397311 () Int)

(assert (=> bs!1858506 (not (= lambda!397312 lambda!397311))))

(assert (=> b!6963530 true))

(declare-fun b!6963527 () Bool)

(declare-fun res!2841224 () Bool)

(declare-fun e!4186610 () Bool)

(assert (=> b!6963527 (=> res!2841224 e!4186610)))

(declare-datatypes ((C!34470 0))(
  ( (C!34471 (val!26937 Int)) )
))
(declare-datatypes ((Regex!17100 0))(
  ( (ElementMatch!17100 (c!1291126 C!34470)) (Concat!25945 (regOne!34712 Regex!17100) (regTwo!34712 Regex!17100)) (EmptyExpr!17100) (Star!17100 (reg!17429 Regex!17100)) (EmptyLang!17100) (Union!17100 (regOne!34713 Regex!17100) (regTwo!34713 Regex!17100)) )
))
(declare-fun r!13765 () Regex!17100)

(declare-datatypes ((List!66885 0))(
  ( (Nil!66761) (Cons!66761 (h!73209 Regex!17100) (t!380628 List!66885)) )
))
(declare-fun lt!2479164 () List!66885)

(declare-fun generalisedUnion!2575 (List!66885) Regex!17100)

(assert (=> b!6963527 (= res!2841224 (not (= (regTwo!34713 r!13765) (generalisedUnion!2575 lt!2479164))))))

(declare-fun b!6963528 () Bool)

(declare-fun res!2841226 () Bool)

(declare-fun e!4186617 () Bool)

(assert (=> b!6963528 (=> res!2841226 e!4186617)))

(declare-fun l!9142 () List!66885)

(declare-fun isEmpty!38973 (List!66885) Bool)

(assert (=> b!6963528 (= res!2841226 (isEmpty!38973 l!9142))))

(declare-fun b!6963529 () Bool)

(declare-fun e!4186614 () Bool)

(assert (=> b!6963529 (= e!4186614 e!4186610)))

(declare-fun res!2841225 () Bool)

(assert (=> b!6963529 (=> res!2841225 e!4186610)))

(declare-fun forall!15971 (List!66885 Int) Bool)

(assert (=> b!6963529 (= res!2841225 (not (forall!15971 lt!2479164 lambda!397311)))))

(declare-fun lt!2479159 () Bool)

(declare-datatypes ((List!66886 0))(
  ( (Nil!66762) (Cons!66762 (h!73210 C!34470) (t!380629 List!66886)) )
))
(declare-fun s!9351 () List!66886)

(declare-fun matchRSpec!4121 (Regex!17100 List!66886) Bool)

(assert (=> b!6963529 (= lt!2479159 (matchRSpec!4121 (regTwo!34713 r!13765) s!9351))))

(declare-fun matchR!9206 (Regex!17100 List!66886) Bool)

(assert (=> b!6963529 (= lt!2479159 (matchR!9206 (regTwo!34713 r!13765) s!9351))))

(declare-datatypes ((Unit!160860 0))(
  ( (Unit!160861) )
))
(declare-fun lt!2479160 () Unit!160860)

(declare-fun mainMatchTheorem!4115 (Regex!17100 List!66886) Unit!160860)

(assert (=> b!6963529 (= lt!2479160 (mainMatchTheorem!4115 (regTwo!34713 r!13765) s!9351))))

(declare-fun lt!2479158 () Bool)

(assert (=> b!6963529 (= (matchR!9206 (regOne!34713 r!13765) s!9351) lt!2479158)))

(declare-fun lt!2479163 () Unit!160860)

(assert (=> b!6963529 (= lt!2479163 (mainMatchTheorem!4115 (regOne!34713 r!13765) s!9351))))

(declare-fun validRegex!8788 (Regex!17100) Bool)

(assert (=> b!6963530 (= e!4186610 (validRegex!8788 r!13765))))

(declare-fun exists!2860 (List!66885 Int) Bool)

(assert (=> b!6963530 (= lt!2479159 (exists!2860 lt!2479164 lambda!397312))))

(declare-fun lt!2479162 () Unit!160860)

(declare-fun matchRGenUnionSpec!347 (Regex!17100 List!66885 List!66886) Unit!160860)

(assert (=> b!6963530 (= lt!2479162 (matchRGenUnionSpec!347 (regTwo!34713 r!13765) lt!2479164 s!9351))))

(declare-fun b!6963531 () Bool)

(declare-fun e!4186612 () Bool)

(declare-fun tp!1920243 () Bool)

(assert (=> b!6963531 (= e!4186612 tp!1920243)))

(declare-fun b!6963532 () Bool)

(declare-fun e!4186609 () Bool)

(assert (=> b!6963532 (= e!4186609 (matchRSpec!4121 (regTwo!34713 r!13765) s!9351))))

(declare-fun b!6963533 () Bool)

(declare-fun e!4186616 () Bool)

(assert (=> b!6963533 (= e!4186616 e!4186614)))

(declare-fun res!2841222 () Bool)

(assert (=> b!6963533 (=> res!2841222 e!4186614)))

(declare-fun lt!2479165 () Bool)

(assert (=> b!6963533 (= res!2841222 (not (= lt!2479165 e!4186609)))))

(declare-fun res!2841223 () Bool)

(assert (=> b!6963533 (=> res!2841223 e!4186609)))

(assert (=> b!6963533 (= res!2841223 lt!2479158)))

(assert (=> b!6963533 (= lt!2479158 (matchRSpec!4121 (regOne!34713 r!13765) s!9351))))

(declare-fun b!6963534 () Bool)

(declare-fun tp_is_empty!43425 () Bool)

(assert (=> b!6963534 (= e!4186612 tp_is_empty!43425)))

(declare-fun b!6963526 () Bool)

(declare-fun tp!1920241 () Bool)

(declare-fun tp!1920245 () Bool)

(assert (=> b!6963526 (= e!4186612 (and tp!1920241 tp!1920245))))

(declare-fun res!2841227 () Bool)

(declare-fun e!4186615 () Bool)

(assert (=> start!668068 (=> (not res!2841227) (not e!4186615))))

(assert (=> start!668068 (= res!2841227 (forall!15971 l!9142 lambda!397311))))

(assert (=> start!668068 e!4186615))

(declare-fun e!4186611 () Bool)

(assert (=> start!668068 e!4186611))

(assert (=> start!668068 e!4186612))

(declare-fun e!4186613 () Bool)

(assert (=> start!668068 e!4186613))

(declare-fun b!6963535 () Bool)

(declare-fun tp!1920239 () Bool)

(declare-fun tp!1920238 () Bool)

(assert (=> b!6963535 (= e!4186612 (and tp!1920239 tp!1920238))))

(declare-fun b!6963536 () Bool)

(declare-fun tp!1920242 () Bool)

(declare-fun tp!1920240 () Bool)

(assert (=> b!6963536 (= e!4186611 (and tp!1920242 tp!1920240))))

(declare-fun b!6963537 () Bool)

(assert (=> b!6963537 (= e!4186615 (not e!4186617))))

(declare-fun res!2841219 () Bool)

(assert (=> b!6963537 (=> res!2841219 e!4186617)))

(assert (=> b!6963537 (= res!2841219 (not (is-Union!17100 r!13765)))))

(assert (=> b!6963537 (= lt!2479165 (matchRSpec!4121 r!13765 s!9351))))

(assert (=> b!6963537 (= lt!2479165 (matchR!9206 r!13765 s!9351))))

(declare-fun lt!2479161 () Unit!160860)

(assert (=> b!6963537 (= lt!2479161 (mainMatchTheorem!4115 r!13765 s!9351))))

(declare-fun b!6963538 () Bool)

(declare-fun tp!1920244 () Bool)

(assert (=> b!6963538 (= e!4186613 (and tp_is_empty!43425 tp!1920244))))

(declare-fun b!6963539 () Bool)

(assert (=> b!6963539 (= e!4186617 e!4186616)))

(declare-fun res!2841220 () Bool)

(assert (=> b!6963539 (=> res!2841220 e!4186616)))

(assert (=> b!6963539 (= res!2841220 (isEmpty!38973 lt!2479164))))

(declare-fun tail!13054 (List!66885) List!66885)

(assert (=> b!6963539 (= lt!2479164 (tail!13054 l!9142))))

(declare-fun b!6963540 () Bool)

(declare-fun res!2841221 () Bool)

(assert (=> b!6963540 (=> (not res!2841221) (not e!4186615))))

(assert (=> b!6963540 (= res!2841221 (= r!13765 (generalisedUnion!2575 l!9142)))))

(assert (= (and start!668068 res!2841227) b!6963540))

(assert (= (and b!6963540 res!2841221) b!6963537))

(assert (= (and b!6963537 (not res!2841219)) b!6963528))

(assert (= (and b!6963528 (not res!2841226)) b!6963539))

(assert (= (and b!6963539 (not res!2841220)) b!6963533))

(assert (= (and b!6963533 (not res!2841223)) b!6963532))

(assert (= (and b!6963533 (not res!2841222)) b!6963529))

(assert (= (and b!6963529 (not res!2841225)) b!6963527))

(assert (= (and b!6963527 (not res!2841224)) b!6963530))

(assert (= (and start!668068 (is-Cons!66761 l!9142)) b!6963536))

(assert (= (and start!668068 (is-ElementMatch!17100 r!13765)) b!6963534))

(assert (= (and start!668068 (is-Concat!25945 r!13765)) b!6963526))

(assert (= (and start!668068 (is-Star!17100 r!13765)) b!6963531))

(assert (= (and start!668068 (is-Union!17100 r!13765)) b!6963535))

(assert (= (and start!668068 (is-Cons!66762 s!9351)) b!6963538))

(declare-fun m!7657076 () Bool)

(assert (=> b!6963532 m!7657076))

(declare-fun m!7657078 () Bool)

(assert (=> b!6963539 m!7657078))

(declare-fun m!7657080 () Bool)

(assert (=> b!6963539 m!7657080))

(declare-fun m!7657082 () Bool)

(assert (=> b!6963528 m!7657082))

(declare-fun m!7657084 () Bool)

(assert (=> b!6963527 m!7657084))

(declare-fun m!7657086 () Bool)

(assert (=> b!6963533 m!7657086))

(declare-fun m!7657088 () Bool)

(assert (=> b!6963530 m!7657088))

(declare-fun m!7657090 () Bool)

(assert (=> b!6963530 m!7657090))

(declare-fun m!7657092 () Bool)

(assert (=> b!6963530 m!7657092))

(declare-fun m!7657094 () Bool)

(assert (=> b!6963529 m!7657094))

(declare-fun m!7657096 () Bool)

(assert (=> b!6963529 m!7657096))

(declare-fun m!7657098 () Bool)

(assert (=> b!6963529 m!7657098))

(declare-fun m!7657100 () Bool)

(assert (=> b!6963529 m!7657100))

(declare-fun m!7657102 () Bool)

(assert (=> b!6963529 m!7657102))

(assert (=> b!6963529 m!7657076))

(declare-fun m!7657104 () Bool)

(assert (=> start!668068 m!7657104))

(declare-fun m!7657106 () Bool)

(assert (=> b!6963540 m!7657106))

(declare-fun m!7657108 () Bool)

(assert (=> b!6963537 m!7657108))

(declare-fun m!7657110 () Bool)

(assert (=> b!6963537 m!7657110))

(declare-fun m!7657112 () Bool)

(assert (=> b!6963537 m!7657112))

(push 1)

(assert (not b!6963535))

(assert (not b!6963530))

(assert (not b!6963529))

(assert (not b!6963527))

(assert (not b!6963532))

(assert (not b!6963539))

(assert (not b!6963536))

(assert tp_is_empty!43425)

(assert (not b!6963533))

(assert (not b!6963540))

(assert (not b!6963537))

(assert (not b!6963531))

(assert (not start!668068))

(assert (not b!6963528))

(assert (not b!6963526))

(assert (not b!6963538))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6963610 () Bool)

(declare-fun e!4186667 () Bool)

(declare-fun call!632235 () Bool)

(assert (=> b!6963610 (= e!4186667 call!632235)))

(declare-fun c!1291133 () Bool)

(declare-fun call!632236 () Bool)

(declare-fun c!1291132 () Bool)

(declare-fun bm!632229 () Bool)

(assert (=> bm!632229 (= call!632236 (validRegex!8788 (ite c!1291133 (reg!17429 r!13765) (ite c!1291132 (regOne!34713 r!13765) (regOne!34712 r!13765)))))))

(declare-fun b!6963611 () Bool)

(declare-fun res!2841271 () Bool)

(declare-fun e!4186664 () Bool)

(assert (=> b!6963611 (=> res!2841271 e!4186664)))

(assert (=> b!6963611 (= res!2841271 (not (is-Concat!25945 r!13765)))))

(declare-fun e!4186661 () Bool)

(assert (=> b!6963611 (= e!4186661 e!4186664)))

(declare-fun b!6963612 () Bool)

(declare-fun e!4186663 () Bool)

(declare-fun e!4186662 () Bool)

(assert (=> b!6963612 (= e!4186663 e!4186662)))

(declare-fun res!2841267 () Bool)

(declare-fun nullable!6895 (Regex!17100) Bool)

(assert (=> b!6963612 (= res!2841267 (not (nullable!6895 (reg!17429 r!13765))))))

(assert (=> b!6963612 (=> (not res!2841267) (not e!4186662))))

(declare-fun b!6963613 () Bool)

(declare-fun e!4186665 () Bool)

(assert (=> b!6963613 (= e!4186665 call!632235)))

(declare-fun b!6963614 () Bool)

(assert (=> b!6963614 (= e!4186664 e!4186667)))

(declare-fun res!2841269 () Bool)

(assert (=> b!6963614 (=> (not res!2841269) (not e!4186667))))

(declare-fun call!632234 () Bool)

(assert (=> b!6963614 (= res!2841269 call!632234)))

(declare-fun d!2170306 () Bool)

(declare-fun res!2841268 () Bool)

(declare-fun e!4186666 () Bool)

(assert (=> d!2170306 (=> res!2841268 e!4186666)))

(assert (=> d!2170306 (= res!2841268 (is-ElementMatch!17100 r!13765))))

(assert (=> d!2170306 (= (validRegex!8788 r!13765) e!4186666)))

(declare-fun bm!632230 () Bool)

(assert (=> bm!632230 (= call!632234 call!632236)))

(declare-fun b!6963615 () Bool)

(declare-fun res!2841270 () Bool)

(assert (=> b!6963615 (=> (not res!2841270) (not e!4186665))))

(assert (=> b!6963615 (= res!2841270 call!632234)))

(assert (=> b!6963615 (= e!4186661 e!4186665)))

(declare-fun b!6963616 () Bool)

(assert (=> b!6963616 (= e!4186666 e!4186663)))

(assert (=> b!6963616 (= c!1291133 (is-Star!17100 r!13765))))

(declare-fun b!6963617 () Bool)

(assert (=> b!6963617 (= e!4186662 call!632236)))

(declare-fun b!6963618 () Bool)

(assert (=> b!6963618 (= e!4186663 e!4186661)))

(assert (=> b!6963618 (= c!1291132 (is-Union!17100 r!13765))))

(declare-fun bm!632231 () Bool)

(assert (=> bm!632231 (= call!632235 (validRegex!8788 (ite c!1291132 (regTwo!34713 r!13765) (regTwo!34712 r!13765))))))

(assert (= (and d!2170306 (not res!2841268)) b!6963616))

(assert (= (and b!6963616 c!1291133) b!6963612))

(assert (= (and b!6963616 (not c!1291133)) b!6963618))

(assert (= (and b!6963612 res!2841267) b!6963617))

(assert (= (and b!6963618 c!1291132) b!6963615))

(assert (= (and b!6963618 (not c!1291132)) b!6963611))

(assert (= (and b!6963615 res!2841270) b!6963613))

(assert (= (and b!6963611 (not res!2841271)) b!6963614))

(assert (= (and b!6963614 res!2841269) b!6963610))

(assert (= (or b!6963615 b!6963614) bm!632230))

(assert (= (or b!6963613 b!6963610) bm!632231))

(assert (= (or b!6963617 bm!632230) bm!632229))

(declare-fun m!7657152 () Bool)

(assert (=> bm!632229 m!7657152))

(declare-fun m!7657154 () Bool)

(assert (=> b!6963612 m!7657154))

(declare-fun m!7657156 () Bool)

(assert (=> bm!632231 m!7657156))

(assert (=> b!6963530 d!2170306))

(declare-fun bs!1858508 () Bool)

(declare-fun d!2170308 () Bool)

(assert (= bs!1858508 (and d!2170308 start!668068)))

(declare-fun lambda!397325 () Int)

(assert (=> bs!1858508 (not (= lambda!397325 lambda!397311))))

(declare-fun bs!1858509 () Bool)

(assert (= bs!1858509 (and d!2170308 b!6963530)))

(assert (=> bs!1858509 (not (= lambda!397325 lambda!397312))))

(assert (=> d!2170308 true))

(declare-fun order!27765 () Int)

(declare-fun dynLambda!26616 (Int Int) Int)

(assert (=> d!2170308 (< (dynLambda!26616 order!27765 lambda!397312) (dynLambda!26616 order!27765 lambda!397325))))

(assert (=> d!2170308 (= (exists!2860 lt!2479164 lambda!397312) (not (forall!15971 lt!2479164 lambda!397325)))))

(declare-fun bs!1858510 () Bool)

(assert (= bs!1858510 d!2170308))

(declare-fun m!7657158 () Bool)

(assert (=> bs!1858510 m!7657158))

(assert (=> b!6963530 d!2170308))

(declare-fun bs!1858511 () Bool)

(declare-fun d!2170310 () Bool)

(assert (= bs!1858511 (and d!2170310 start!668068)))

(declare-fun lambda!397330 () Int)

(assert (=> bs!1858511 (= lambda!397330 lambda!397311)))

(declare-fun bs!1858512 () Bool)

(assert (= bs!1858512 (and d!2170310 b!6963530)))

(assert (=> bs!1858512 (not (= lambda!397330 lambda!397312))))

(declare-fun bs!1858513 () Bool)

(assert (= bs!1858513 (and d!2170310 d!2170308)))

(assert (=> bs!1858513 (not (= lambda!397330 lambda!397325))))

(declare-fun lambda!397331 () Int)

(assert (=> bs!1858511 (not (= lambda!397331 lambda!397311))))

(assert (=> bs!1858512 (= lambda!397331 lambda!397312)))

(assert (=> bs!1858513 (not (= lambda!397331 lambda!397325))))

(declare-fun bs!1858514 () Bool)

(assert (= bs!1858514 d!2170310))

(assert (=> bs!1858514 (not (= lambda!397331 lambda!397330))))

(assert (=> d!2170310 true))

(assert (=> d!2170310 (= (matchR!9206 (regTwo!34713 r!13765) s!9351) (exists!2860 lt!2479164 lambda!397331))))

(declare-fun lt!2479194 () Unit!160860)

(declare-fun choose!51889 (Regex!17100 List!66885 List!66886) Unit!160860)

(assert (=> d!2170310 (= lt!2479194 (choose!51889 (regTwo!34713 r!13765) lt!2479164 s!9351))))

(assert (=> d!2170310 (forall!15971 lt!2479164 lambda!397330)))

(assert (=> d!2170310 (= (matchRGenUnionSpec!347 (regTwo!34713 r!13765) lt!2479164 s!9351) lt!2479194)))

(assert (=> bs!1858514 m!7657094))

(declare-fun m!7657160 () Bool)

(assert (=> bs!1858514 m!7657160))

(declare-fun m!7657162 () Bool)

(assert (=> bs!1858514 m!7657162))

(declare-fun m!7657164 () Bool)

(assert (=> bs!1858514 m!7657164))

(assert (=> b!6963530 d!2170310))

(declare-fun bs!1858517 () Bool)

(declare-fun d!2170312 () Bool)

(assert (= bs!1858517 (and d!2170312 d!2170310)))

(declare-fun lambda!397335 () Int)

(assert (=> bs!1858517 (= lambda!397335 lambda!397330)))

(declare-fun bs!1858518 () Bool)

(assert (= bs!1858518 (and d!2170312 d!2170308)))

(assert (=> bs!1858518 (not (= lambda!397335 lambda!397325))))

(declare-fun bs!1858519 () Bool)

(assert (= bs!1858519 (and d!2170312 start!668068)))

(assert (=> bs!1858519 (= lambda!397335 lambda!397311)))

(declare-fun bs!1858520 () Bool)

(assert (= bs!1858520 (and d!2170312 b!6963530)))

(assert (=> bs!1858520 (not (= lambda!397335 lambda!397312))))

(assert (=> bs!1858517 (not (= lambda!397335 lambda!397331))))

(declare-fun b!6963673 () Bool)

(declare-fun e!4186704 () Regex!17100)

(declare-fun e!4186700 () Regex!17100)

(assert (=> b!6963673 (= e!4186704 e!4186700)))

(declare-fun c!1291156 () Bool)

(assert (=> b!6963673 (= c!1291156 (is-Cons!66761 l!9142))))

(declare-fun b!6963674 () Bool)

(declare-fun e!4186703 () Bool)

(declare-fun e!4186705 () Bool)

(assert (=> b!6963674 (= e!4186703 e!4186705)))

(declare-fun c!1291157 () Bool)

(assert (=> b!6963674 (= c!1291157 (isEmpty!38973 (tail!13054 l!9142)))))

(declare-fun b!6963675 () Bool)

(declare-fun e!4186702 () Bool)

(assert (=> b!6963675 (= e!4186702 e!4186703)))

(declare-fun c!1291155 () Bool)

(assert (=> b!6963675 (= c!1291155 (isEmpty!38973 l!9142))))

(declare-fun b!6963676 () Bool)

(declare-fun lt!2479198 () Regex!17100)

(declare-fun isEmptyLang!2045 (Regex!17100) Bool)

(assert (=> b!6963676 (= e!4186703 (isEmptyLang!2045 lt!2479198))))

(declare-fun b!6963677 () Bool)

(assert (=> b!6963677 (= e!4186704 (h!73209 l!9142))))

(assert (=> d!2170312 e!4186702))

(declare-fun res!2841285 () Bool)

(assert (=> d!2170312 (=> (not res!2841285) (not e!4186702))))

(assert (=> d!2170312 (= res!2841285 (validRegex!8788 lt!2479198))))

(assert (=> d!2170312 (= lt!2479198 e!4186704)))

(declare-fun c!1291154 () Bool)

(declare-fun e!4186701 () Bool)

(assert (=> d!2170312 (= c!1291154 e!4186701)))

(declare-fun res!2841284 () Bool)

(assert (=> d!2170312 (=> (not res!2841284) (not e!4186701))))

(assert (=> d!2170312 (= res!2841284 (is-Cons!66761 l!9142))))

(assert (=> d!2170312 (forall!15971 l!9142 lambda!397335)))

(assert (=> d!2170312 (= (generalisedUnion!2575 l!9142) lt!2479198)))

(declare-fun b!6963678 () Bool)

(declare-fun isUnion!1473 (Regex!17100) Bool)

(assert (=> b!6963678 (= e!4186705 (isUnion!1473 lt!2479198))))

(declare-fun b!6963679 () Bool)

(assert (=> b!6963679 (= e!4186701 (isEmpty!38973 (t!380628 l!9142)))))

(declare-fun b!6963680 () Bool)

(assert (=> b!6963680 (= e!4186700 EmptyLang!17100)))

(declare-fun b!6963681 () Bool)

(assert (=> b!6963681 (= e!4186700 (Union!17100 (h!73209 l!9142) (generalisedUnion!2575 (t!380628 l!9142))))))

(declare-fun b!6963682 () Bool)

(declare-fun head!13988 (List!66885) Regex!17100)

(assert (=> b!6963682 (= e!4186705 (= lt!2479198 (head!13988 l!9142)))))

(assert (= (and d!2170312 res!2841284) b!6963679))

(assert (= (and d!2170312 c!1291154) b!6963677))

(assert (= (and d!2170312 (not c!1291154)) b!6963673))

(assert (= (and b!6963673 c!1291156) b!6963681))

(assert (= (and b!6963673 (not c!1291156)) b!6963680))

(assert (= (and d!2170312 res!2841285) b!6963675))

(assert (= (and b!6963675 c!1291155) b!6963676))

(assert (= (and b!6963675 (not c!1291155)) b!6963674))

(assert (= (and b!6963674 c!1291157) b!6963682))

(assert (= (and b!6963674 (not c!1291157)) b!6963678))

(assert (=> b!6963674 m!7657080))

(assert (=> b!6963674 m!7657080))

(declare-fun m!7657184 () Bool)

(assert (=> b!6963674 m!7657184))

(declare-fun m!7657186 () Bool)

(assert (=> b!6963682 m!7657186))

(declare-fun m!7657188 () Bool)

(assert (=> b!6963676 m!7657188))

(declare-fun m!7657190 () Bool)

(assert (=> b!6963681 m!7657190))

(assert (=> b!6963675 m!7657082))

(declare-fun m!7657192 () Bool)

(assert (=> b!6963678 m!7657192))

(declare-fun m!7657194 () Bool)

(assert (=> d!2170312 m!7657194))

(declare-fun m!7657196 () Bool)

(assert (=> d!2170312 m!7657196))

(declare-fun m!7657198 () Bool)

(assert (=> b!6963679 m!7657198))

(assert (=> b!6963540 d!2170312))

(declare-fun b!6963733 () Bool)

(declare-fun e!4186738 () Bool)

(declare-fun derivativeStep!5521 (Regex!17100 C!34470) Regex!17100)

(declare-fun head!13989 (List!66886) C!34470)

(declare-fun tail!13056 (List!66886) List!66886)

(assert (=> b!6963733 (= e!4186738 (matchR!9206 (derivativeStep!5521 (regTwo!34713 r!13765) (head!13989 s!9351)) (tail!13056 s!9351)))))

(declare-fun b!6963734 () Bool)

(assert (=> b!6963734 (= e!4186738 (nullable!6895 (regTwo!34713 r!13765)))))

(declare-fun b!6963735 () Bool)

(declare-fun e!4186734 () Bool)

(declare-fun e!4186735 () Bool)

(assert (=> b!6963735 (= e!4186734 e!4186735)))

(declare-fun c!1291173 () Bool)

(assert (=> b!6963735 (= c!1291173 (is-EmptyLang!17100 (regTwo!34713 r!13765)))))

(declare-fun b!6963737 () Bool)

(declare-fun res!2841308 () Bool)

(declare-fun e!4186737 () Bool)

(assert (=> b!6963737 (=> (not res!2841308) (not e!4186737))))

(declare-fun isEmpty!38975 (List!66886) Bool)

(assert (=> b!6963737 (= res!2841308 (isEmpty!38975 (tail!13056 s!9351)))))

(declare-fun b!6963738 () Bool)

(declare-fun res!2841314 () Bool)

(assert (=> b!6963738 (=> (not res!2841314) (not e!4186737))))

(declare-fun call!632239 () Bool)

(assert (=> b!6963738 (= res!2841314 (not call!632239))))

(declare-fun bm!632234 () Bool)

(assert (=> bm!632234 (= call!632239 (isEmpty!38975 s!9351))))

(declare-fun b!6963739 () Bool)

(declare-fun lt!2479201 () Bool)

(assert (=> b!6963739 (= e!4186735 (not lt!2479201))))

(declare-fun b!6963740 () Bool)

(declare-fun e!4186739 () Bool)

(assert (=> b!6963740 (= e!4186739 (not (= (head!13989 s!9351) (c!1291126 (regTwo!34713 r!13765)))))))

(declare-fun d!2170316 () Bool)

(assert (=> d!2170316 e!4186734))

(declare-fun c!1291172 () Bool)

(assert (=> d!2170316 (= c!1291172 (is-EmptyExpr!17100 (regTwo!34713 r!13765)))))

(assert (=> d!2170316 (= lt!2479201 e!4186738)))

(declare-fun c!1291174 () Bool)

(assert (=> d!2170316 (= c!1291174 (isEmpty!38975 s!9351))))

(assert (=> d!2170316 (validRegex!8788 (regTwo!34713 r!13765))))

(assert (=> d!2170316 (= (matchR!9206 (regTwo!34713 r!13765) s!9351) lt!2479201)))

(declare-fun b!6963736 () Bool)

(declare-fun res!2841313 () Bool)

(declare-fun e!4186736 () Bool)

(assert (=> b!6963736 (=> res!2841313 e!4186736)))

(assert (=> b!6963736 (= res!2841313 e!4186737)))

(declare-fun res!2841309 () Bool)

(assert (=> b!6963736 (=> (not res!2841309) (not e!4186737))))

(assert (=> b!6963736 (= res!2841309 lt!2479201)))

(declare-fun b!6963741 () Bool)

(assert (=> b!6963741 (= e!4186737 (= (head!13989 s!9351) (c!1291126 (regTwo!34713 r!13765))))))

(declare-fun b!6963742 () Bool)

(declare-fun res!2841312 () Bool)

(assert (=> b!6963742 (=> res!2841312 e!4186736)))

(assert (=> b!6963742 (= res!2841312 (not (is-ElementMatch!17100 (regTwo!34713 r!13765))))))

(assert (=> b!6963742 (= e!4186735 e!4186736)))

(declare-fun b!6963743 () Bool)

(declare-fun e!4186740 () Bool)

(assert (=> b!6963743 (= e!4186736 e!4186740)))

(declare-fun res!2841310 () Bool)

(assert (=> b!6963743 (=> (not res!2841310) (not e!4186740))))

(assert (=> b!6963743 (= res!2841310 (not lt!2479201))))

(declare-fun b!6963744 () Bool)

(declare-fun res!2841311 () Bool)

(assert (=> b!6963744 (=> res!2841311 e!4186739)))

(assert (=> b!6963744 (= res!2841311 (not (isEmpty!38975 (tail!13056 s!9351))))))

(declare-fun b!6963745 () Bool)

(assert (=> b!6963745 (= e!4186734 (= lt!2479201 call!632239))))

(declare-fun b!6963746 () Bool)

(assert (=> b!6963746 (= e!4186740 e!4186739)))

(declare-fun res!2841315 () Bool)

(assert (=> b!6963746 (=> res!2841315 e!4186739)))

(assert (=> b!6963746 (= res!2841315 call!632239)))

(assert (= (and d!2170316 c!1291174) b!6963734))

(assert (= (and d!2170316 (not c!1291174)) b!6963733))

(assert (= (and d!2170316 c!1291172) b!6963745))

(assert (= (and d!2170316 (not c!1291172)) b!6963735))

(assert (= (and b!6963735 c!1291173) b!6963739))

(assert (= (and b!6963735 (not c!1291173)) b!6963742))

(assert (= (and b!6963742 (not res!2841312)) b!6963736))

(assert (= (and b!6963736 res!2841309) b!6963738))

(assert (= (and b!6963738 res!2841314) b!6963737))

(assert (= (and b!6963737 res!2841308) b!6963741))

(assert (= (and b!6963736 (not res!2841313)) b!6963743))

(assert (= (and b!6963743 res!2841310) b!6963746))

(assert (= (and b!6963746 (not res!2841315)) b!6963744))

(assert (= (and b!6963744 (not res!2841311)) b!6963740))

(assert (= (or b!6963745 b!6963738 b!6963746) bm!632234))

(declare-fun m!7657200 () Bool)

(assert (=> b!6963737 m!7657200))

(assert (=> b!6963737 m!7657200))

(declare-fun m!7657202 () Bool)

(assert (=> b!6963737 m!7657202))

(declare-fun m!7657204 () Bool)

(assert (=> b!6963733 m!7657204))

(assert (=> b!6963733 m!7657204))

(declare-fun m!7657206 () Bool)

(assert (=> b!6963733 m!7657206))

(assert (=> b!6963733 m!7657200))

(assert (=> b!6963733 m!7657206))

(assert (=> b!6963733 m!7657200))

(declare-fun m!7657208 () Bool)

(assert (=> b!6963733 m!7657208))

(assert (=> b!6963740 m!7657204))

(assert (=> b!6963744 m!7657200))

(assert (=> b!6963744 m!7657200))

(assert (=> b!6963744 m!7657202))

(assert (=> b!6963741 m!7657204))

(declare-fun m!7657210 () Bool)

(assert (=> b!6963734 m!7657210))

(declare-fun m!7657212 () Bool)

(assert (=> d!2170316 m!7657212))

(declare-fun m!7657214 () Bool)

(assert (=> d!2170316 m!7657214))

(assert (=> bm!632234 m!7657212))

(assert (=> b!6963529 d!2170316))

(declare-fun b!6963791 () Bool)

(assert (=> b!6963791 true))

(assert (=> b!6963791 true))

(declare-fun bs!1858521 () Bool)

(declare-fun b!6963798 () Bool)

(assert (= bs!1858521 (and b!6963798 b!6963791)))

(declare-fun lambda!397345 () Int)

(declare-fun lambda!397344 () Int)

(assert (=> bs!1858521 (not (= lambda!397345 lambda!397344))))

(assert (=> b!6963798 true))

(assert (=> b!6963798 true))

(declare-fun b!6963789 () Bool)

(declare-fun c!1291183 () Bool)

(assert (=> b!6963789 (= c!1291183 (is-Union!17100 (regTwo!34713 r!13765)))))

(declare-fun e!4186769 () Bool)

(declare-fun e!4186766 () Bool)

(assert (=> b!6963789 (= e!4186769 e!4186766)))

(declare-fun bm!632243 () Bool)

(declare-fun call!632249 () Bool)

(assert (=> bm!632243 (= call!632249 (isEmpty!38975 s!9351))))

(declare-fun b!6963790 () Bool)

(declare-fun c!1291184 () Bool)

(assert (=> b!6963790 (= c!1291184 (is-ElementMatch!17100 (regTwo!34713 r!13765)))))

(declare-fun e!4186763 () Bool)

(assert (=> b!6963790 (= e!4186763 e!4186769)))

(declare-fun e!4186767 () Bool)

(declare-fun call!632248 () Bool)

(assert (=> b!6963791 (= e!4186767 call!632248)))

(declare-fun bm!632244 () Bool)

(declare-fun c!1291186 () Bool)

(declare-fun Exists!4076 (Int) Bool)

(assert (=> bm!632244 (= call!632248 (Exists!4076 (ite c!1291186 lambda!397344 lambda!397345)))))

(declare-fun b!6963792 () Bool)

(declare-fun e!4186768 () Bool)

(assert (=> b!6963792 (= e!4186768 (matchRSpec!4121 (regTwo!34713 (regTwo!34713 r!13765)) s!9351))))

(declare-fun d!2170318 () Bool)

(declare-fun c!1291185 () Bool)

(assert (=> d!2170318 (= c!1291185 (is-EmptyExpr!17100 (regTwo!34713 r!13765)))))

(declare-fun e!4186765 () Bool)

(assert (=> d!2170318 (= (matchRSpec!4121 (regTwo!34713 r!13765) s!9351) e!4186765)))

(declare-fun b!6963793 () Bool)

(assert (=> b!6963793 (= e!4186765 e!4186763)))

(declare-fun res!2841342 () Bool)

(assert (=> b!6963793 (= res!2841342 (not (is-EmptyLang!17100 (regTwo!34713 r!13765))))))

(assert (=> b!6963793 (=> (not res!2841342) (not e!4186763))))

(declare-fun b!6963794 () Bool)

(assert (=> b!6963794 (= e!4186766 e!4186768)))

(declare-fun res!2841344 () Bool)

(assert (=> b!6963794 (= res!2841344 (matchRSpec!4121 (regOne!34713 (regTwo!34713 r!13765)) s!9351))))

(assert (=> b!6963794 (=> res!2841344 e!4186768)))

(declare-fun b!6963795 () Bool)

(declare-fun res!2841343 () Bool)

(assert (=> b!6963795 (=> res!2841343 e!4186767)))

(assert (=> b!6963795 (= res!2841343 call!632249)))

(declare-fun e!4186764 () Bool)

(assert (=> b!6963795 (= e!4186764 e!4186767)))

(declare-fun b!6963796 () Bool)

(assert (=> b!6963796 (= e!4186766 e!4186764)))

(assert (=> b!6963796 (= c!1291186 (is-Star!17100 (regTwo!34713 r!13765)))))

(declare-fun b!6963797 () Bool)

(assert (=> b!6963797 (= e!4186765 call!632249)))

(assert (=> b!6963798 (= e!4186764 call!632248)))

(declare-fun b!6963799 () Bool)

(assert (=> b!6963799 (= e!4186769 (= s!9351 (Cons!66762 (c!1291126 (regTwo!34713 r!13765)) Nil!66762)))))

(assert (= (and d!2170318 c!1291185) b!6963797))

(assert (= (and d!2170318 (not c!1291185)) b!6963793))

(assert (= (and b!6963793 res!2841342) b!6963790))

(assert (= (and b!6963790 c!1291184) b!6963799))

(assert (= (and b!6963790 (not c!1291184)) b!6963789))

(assert (= (and b!6963789 c!1291183) b!6963794))

(assert (= (and b!6963789 (not c!1291183)) b!6963796))

(assert (= (and b!6963794 (not res!2841344)) b!6963792))

(assert (= (and b!6963796 c!1291186) b!6963795))

(assert (= (and b!6963796 (not c!1291186)) b!6963798))

(assert (= (and b!6963795 (not res!2841343)) b!6963791))

(assert (= (or b!6963791 b!6963798) bm!632244))

(assert (= (or b!6963797 b!6963795) bm!632243))

(assert (=> bm!632243 m!7657212))

(declare-fun m!7657216 () Bool)

(assert (=> bm!632244 m!7657216))

(declare-fun m!7657218 () Bool)

(assert (=> b!6963792 m!7657218))

(declare-fun m!7657220 () Bool)

(assert (=> b!6963794 m!7657220))

(assert (=> b!6963529 d!2170318))

(declare-fun d!2170320 () Bool)

(assert (=> d!2170320 (= (matchR!9206 (regTwo!34713 r!13765) s!9351) (matchRSpec!4121 (regTwo!34713 r!13765) s!9351))))

(declare-fun lt!2479204 () Unit!160860)

(declare-fun choose!51890 (Regex!17100 List!66886) Unit!160860)

(assert (=> d!2170320 (= lt!2479204 (choose!51890 (regTwo!34713 r!13765) s!9351))))

(assert (=> d!2170320 (validRegex!8788 (regTwo!34713 r!13765))))

(assert (=> d!2170320 (= (mainMatchTheorem!4115 (regTwo!34713 r!13765) s!9351) lt!2479204)))

(declare-fun bs!1858522 () Bool)

(assert (= bs!1858522 d!2170320))

(assert (=> bs!1858522 m!7657094))

(assert (=> bs!1858522 m!7657076))

(declare-fun m!7657222 () Bool)

(assert (=> bs!1858522 m!7657222))

(assert (=> bs!1858522 m!7657214))

(assert (=> b!6963529 d!2170320))

(declare-fun b!6963815 () Bool)

(declare-fun e!4186781 () Bool)

(assert (=> b!6963815 (= e!4186781 (matchR!9206 (derivativeStep!5521 (regOne!34713 r!13765) (head!13989 s!9351)) (tail!13056 s!9351)))))

(declare-fun b!6963816 () Bool)

(assert (=> b!6963816 (= e!4186781 (nullable!6895 (regOne!34713 r!13765)))))

(declare-fun b!6963817 () Bool)

(declare-fun e!4186777 () Bool)

(declare-fun e!4186778 () Bool)

(assert (=> b!6963817 (= e!4186777 e!4186778)))

(declare-fun c!1291192 () Bool)

(assert (=> b!6963817 (= c!1291192 (is-EmptyLang!17100 (regOne!34713 r!13765)))))

(declare-fun b!6963819 () Bool)

(declare-fun res!2841348 () Bool)

(declare-fun e!4186780 () Bool)

(assert (=> b!6963819 (=> (not res!2841348) (not e!4186780))))

(assert (=> b!6963819 (= res!2841348 (isEmpty!38975 (tail!13056 s!9351)))))

(declare-fun b!6963820 () Bool)

(declare-fun res!2841354 () Bool)

(assert (=> b!6963820 (=> (not res!2841354) (not e!4186780))))

(declare-fun call!632252 () Bool)

(assert (=> b!6963820 (= res!2841354 (not call!632252))))

(declare-fun bm!632247 () Bool)

(assert (=> bm!632247 (= call!632252 (isEmpty!38975 s!9351))))

(declare-fun b!6963821 () Bool)

(declare-fun lt!2479205 () Bool)

(assert (=> b!6963821 (= e!4186778 (not lt!2479205))))

(declare-fun b!6963822 () Bool)

(declare-fun e!4186782 () Bool)

(assert (=> b!6963822 (= e!4186782 (not (= (head!13989 s!9351) (c!1291126 (regOne!34713 r!13765)))))))

(declare-fun d!2170322 () Bool)

(assert (=> d!2170322 e!4186777))

(declare-fun c!1291191 () Bool)

(assert (=> d!2170322 (= c!1291191 (is-EmptyExpr!17100 (regOne!34713 r!13765)))))

(assert (=> d!2170322 (= lt!2479205 e!4186781)))

(declare-fun c!1291193 () Bool)

(assert (=> d!2170322 (= c!1291193 (isEmpty!38975 s!9351))))

(assert (=> d!2170322 (validRegex!8788 (regOne!34713 r!13765))))

(assert (=> d!2170322 (= (matchR!9206 (regOne!34713 r!13765) s!9351) lt!2479205)))

(declare-fun b!6963818 () Bool)

(declare-fun res!2841353 () Bool)

(declare-fun e!4186779 () Bool)

(assert (=> b!6963818 (=> res!2841353 e!4186779)))

(assert (=> b!6963818 (= res!2841353 e!4186780)))

(declare-fun res!2841349 () Bool)

(assert (=> b!6963818 (=> (not res!2841349) (not e!4186780))))

(assert (=> b!6963818 (= res!2841349 lt!2479205)))

(declare-fun b!6963823 () Bool)

(assert (=> b!6963823 (= e!4186780 (= (head!13989 s!9351) (c!1291126 (regOne!34713 r!13765))))))

(declare-fun b!6963824 () Bool)

(declare-fun res!2841352 () Bool)

(assert (=> b!6963824 (=> res!2841352 e!4186779)))

(assert (=> b!6963824 (= res!2841352 (not (is-ElementMatch!17100 (regOne!34713 r!13765))))))

(assert (=> b!6963824 (= e!4186778 e!4186779)))

(declare-fun b!6963825 () Bool)

(declare-fun e!4186783 () Bool)

(assert (=> b!6963825 (= e!4186779 e!4186783)))

(declare-fun res!2841350 () Bool)

(assert (=> b!6963825 (=> (not res!2841350) (not e!4186783))))

(assert (=> b!6963825 (= res!2841350 (not lt!2479205))))

(declare-fun b!6963826 () Bool)

(declare-fun res!2841351 () Bool)

(assert (=> b!6963826 (=> res!2841351 e!4186782)))

(assert (=> b!6963826 (= res!2841351 (not (isEmpty!38975 (tail!13056 s!9351))))))

(declare-fun b!6963827 () Bool)

(assert (=> b!6963827 (= e!4186777 (= lt!2479205 call!632252))))

(declare-fun b!6963828 () Bool)

(assert (=> b!6963828 (= e!4186783 e!4186782)))

(declare-fun res!2841355 () Bool)

(assert (=> b!6963828 (=> res!2841355 e!4186782)))

(assert (=> b!6963828 (= res!2841355 call!632252)))

(assert (= (and d!2170322 c!1291193) b!6963816))

(assert (= (and d!2170322 (not c!1291193)) b!6963815))

(assert (= (and d!2170322 c!1291191) b!6963827))

(assert (= (and d!2170322 (not c!1291191)) b!6963817))

(assert (= (and b!6963817 c!1291192) b!6963821))

(assert (= (and b!6963817 (not c!1291192)) b!6963824))

(assert (= (and b!6963824 (not res!2841352)) b!6963818))

(assert (= (and b!6963818 res!2841349) b!6963820))

(assert (= (and b!6963820 res!2841354) b!6963819))

(assert (= (and b!6963819 res!2841348) b!6963823))

(assert (= (and b!6963818 (not res!2841353)) b!6963825))

(assert (= (and b!6963825 res!2841350) b!6963828))

(assert (= (and b!6963828 (not res!2841355)) b!6963826))

(assert (= (and b!6963826 (not res!2841351)) b!6963822))

(assert (= (or b!6963827 b!6963820 b!6963828) bm!632247))

(assert (=> b!6963819 m!7657200))

(assert (=> b!6963819 m!7657200))

(assert (=> b!6963819 m!7657202))

(assert (=> b!6963815 m!7657204))

(assert (=> b!6963815 m!7657204))

(declare-fun m!7657224 () Bool)

(assert (=> b!6963815 m!7657224))

(assert (=> b!6963815 m!7657200))

(assert (=> b!6963815 m!7657224))

(assert (=> b!6963815 m!7657200))

(declare-fun m!7657226 () Bool)

(assert (=> b!6963815 m!7657226))

(assert (=> b!6963822 m!7657204))

(assert (=> b!6963826 m!7657200))

(assert (=> b!6963826 m!7657200))

(assert (=> b!6963826 m!7657202))

(assert (=> b!6963823 m!7657204))

(declare-fun m!7657228 () Bool)

(assert (=> b!6963816 m!7657228))

(assert (=> d!2170322 m!7657212))

(declare-fun m!7657230 () Bool)

(assert (=> d!2170322 m!7657230))

(assert (=> bm!632247 m!7657212))

(assert (=> b!6963529 d!2170322))

(declare-fun d!2170324 () Bool)

(assert (=> d!2170324 (= (matchR!9206 (regOne!34713 r!13765) s!9351) (matchRSpec!4121 (regOne!34713 r!13765) s!9351))))

(declare-fun lt!2479206 () Unit!160860)

(assert (=> d!2170324 (= lt!2479206 (choose!51890 (regOne!34713 r!13765) s!9351))))

(assert (=> d!2170324 (validRegex!8788 (regOne!34713 r!13765))))

(assert (=> d!2170324 (= (mainMatchTheorem!4115 (regOne!34713 r!13765) s!9351) lt!2479206)))

(declare-fun bs!1858523 () Bool)

(assert (= bs!1858523 d!2170324))

(assert (=> bs!1858523 m!7657100))

(assert (=> bs!1858523 m!7657086))

(declare-fun m!7657232 () Bool)

(assert (=> bs!1858523 m!7657232))

(assert (=> bs!1858523 m!7657230))

(assert (=> b!6963529 d!2170324))

(declare-fun d!2170326 () Bool)

(declare-fun res!2841360 () Bool)

(declare-fun e!4186788 () Bool)

(assert (=> d!2170326 (=> res!2841360 e!4186788)))

(assert (=> d!2170326 (= res!2841360 (is-Nil!66761 lt!2479164))))

(assert (=> d!2170326 (= (forall!15971 lt!2479164 lambda!397311) e!4186788)))

(declare-fun b!6963837 () Bool)

(declare-fun e!4186789 () Bool)

(assert (=> b!6963837 (= e!4186788 e!4186789)))

(declare-fun res!2841361 () Bool)

(assert (=> b!6963837 (=> (not res!2841361) (not e!4186789))))

(declare-fun dynLambda!26617 (Int Regex!17100) Bool)

(assert (=> b!6963837 (= res!2841361 (dynLambda!26617 lambda!397311 (h!73209 lt!2479164)))))

(declare-fun b!6963838 () Bool)

(assert (=> b!6963838 (= e!4186789 (forall!15971 (t!380628 lt!2479164) lambda!397311))))

(assert (= (and d!2170326 (not res!2841360)) b!6963837))

(assert (= (and b!6963837 res!2841361) b!6963838))

(declare-fun b_lambda!260601 () Bool)

(assert (=> (not b_lambda!260601) (not b!6963837)))

(declare-fun m!7657234 () Bool)

(assert (=> b!6963837 m!7657234))

(declare-fun m!7657236 () Bool)

(assert (=> b!6963838 m!7657236))

(assert (=> b!6963529 d!2170326))

(declare-fun d!2170328 () Bool)

(assert (=> d!2170328 (= (isEmpty!38973 lt!2479164) (is-Nil!66761 lt!2479164))))

(assert (=> b!6963539 d!2170328))

(declare-fun d!2170330 () Bool)

(assert (=> d!2170330 (= (tail!13054 l!9142) (t!380628 l!9142))))

(assert (=> b!6963539 d!2170330))

(declare-fun d!2170332 () Bool)

(declare-fun res!2841362 () Bool)

(declare-fun e!4186790 () Bool)

(assert (=> d!2170332 (=> res!2841362 e!4186790)))

(assert (=> d!2170332 (= res!2841362 (is-Nil!66761 l!9142))))

(assert (=> d!2170332 (= (forall!15971 l!9142 lambda!397311) e!4186790)))

(declare-fun b!6963839 () Bool)

(declare-fun e!4186791 () Bool)

(assert (=> b!6963839 (= e!4186790 e!4186791)))

(declare-fun res!2841363 () Bool)

(assert (=> b!6963839 (=> (not res!2841363) (not e!4186791))))

(assert (=> b!6963839 (= res!2841363 (dynLambda!26617 lambda!397311 (h!73209 l!9142)))))

(declare-fun b!6963840 () Bool)

(assert (=> b!6963840 (= e!4186791 (forall!15971 (t!380628 l!9142) lambda!397311))))

(assert (= (and d!2170332 (not res!2841362)) b!6963839))

(assert (= (and b!6963839 res!2841363) b!6963840))

(declare-fun b_lambda!260603 () Bool)

(assert (=> (not b_lambda!260603) (not b!6963839)))

(declare-fun m!7657238 () Bool)

(assert (=> b!6963839 m!7657238))

(declare-fun m!7657240 () Bool)

(assert (=> b!6963840 m!7657240))

(assert (=> start!668068 d!2170332))

(declare-fun d!2170334 () Bool)

(assert (=> d!2170334 (= (isEmpty!38973 l!9142) (is-Nil!66761 l!9142))))

(assert (=> b!6963528 d!2170334))

(declare-fun bs!1858525 () Bool)

(declare-fun b!6963843 () Bool)

(assert (= bs!1858525 (and b!6963843 b!6963791)))

(declare-fun lambda!397348 () Int)

(assert (=> bs!1858525 (= (and (= (reg!17429 (regOne!34713 r!13765)) (reg!17429 (regTwo!34713 r!13765))) (= (regOne!34713 r!13765) (regTwo!34713 r!13765))) (= lambda!397348 lambda!397344))))

(declare-fun bs!1858526 () Bool)

(assert (= bs!1858526 (and b!6963843 b!6963798)))

(assert (=> bs!1858526 (not (= lambda!397348 lambda!397345))))

(assert (=> b!6963843 true))

(assert (=> b!6963843 true))

(declare-fun bs!1858527 () Bool)

(declare-fun b!6963850 () Bool)

(assert (= bs!1858527 (and b!6963850 b!6963791)))

(declare-fun lambda!397349 () Int)

(assert (=> bs!1858527 (not (= lambda!397349 lambda!397344))))

(declare-fun bs!1858528 () Bool)

(assert (= bs!1858528 (and b!6963850 b!6963798)))

(assert (=> bs!1858528 (= (and (= (regOne!34712 (regOne!34713 r!13765)) (regOne!34712 (regTwo!34713 r!13765))) (= (regTwo!34712 (regOne!34713 r!13765)) (regTwo!34712 (regTwo!34713 r!13765)))) (= lambda!397349 lambda!397345))))

(declare-fun bs!1858529 () Bool)

(assert (= bs!1858529 (and b!6963850 b!6963843)))

(assert (=> bs!1858529 (not (= lambda!397349 lambda!397348))))

(assert (=> b!6963850 true))

(assert (=> b!6963850 true))

(declare-fun b!6963841 () Bool)

(declare-fun c!1291194 () Bool)

(assert (=> b!6963841 (= c!1291194 (is-Union!17100 (regOne!34713 r!13765)))))

(declare-fun e!4186798 () Bool)

(declare-fun e!4186795 () Bool)

(assert (=> b!6963841 (= e!4186798 e!4186795)))

(declare-fun bm!632248 () Bool)

(declare-fun call!632254 () Bool)

(assert (=> bm!632248 (= call!632254 (isEmpty!38975 s!9351))))

(declare-fun b!6963842 () Bool)

(declare-fun c!1291195 () Bool)

(assert (=> b!6963842 (= c!1291195 (is-ElementMatch!17100 (regOne!34713 r!13765)))))

(declare-fun e!4186792 () Bool)

(assert (=> b!6963842 (= e!4186792 e!4186798)))

(declare-fun e!4186796 () Bool)

(declare-fun call!632253 () Bool)

(assert (=> b!6963843 (= e!4186796 call!632253)))

(declare-fun bm!632249 () Bool)

(declare-fun c!1291197 () Bool)

(assert (=> bm!632249 (= call!632253 (Exists!4076 (ite c!1291197 lambda!397348 lambda!397349)))))

(declare-fun b!6963844 () Bool)

(declare-fun e!4186797 () Bool)

(assert (=> b!6963844 (= e!4186797 (matchRSpec!4121 (regTwo!34713 (regOne!34713 r!13765)) s!9351))))

(declare-fun d!2170336 () Bool)

(declare-fun c!1291196 () Bool)

(assert (=> d!2170336 (= c!1291196 (is-EmptyExpr!17100 (regOne!34713 r!13765)))))

(declare-fun e!4186794 () Bool)

(assert (=> d!2170336 (= (matchRSpec!4121 (regOne!34713 r!13765) s!9351) e!4186794)))

(declare-fun b!6963845 () Bool)

(assert (=> b!6963845 (= e!4186794 e!4186792)))

(declare-fun res!2841364 () Bool)

(assert (=> b!6963845 (= res!2841364 (not (is-EmptyLang!17100 (regOne!34713 r!13765))))))

(assert (=> b!6963845 (=> (not res!2841364) (not e!4186792))))

(declare-fun b!6963846 () Bool)

(assert (=> b!6963846 (= e!4186795 e!4186797)))

(declare-fun res!2841366 () Bool)

(assert (=> b!6963846 (= res!2841366 (matchRSpec!4121 (regOne!34713 (regOne!34713 r!13765)) s!9351))))

(assert (=> b!6963846 (=> res!2841366 e!4186797)))

(declare-fun b!6963847 () Bool)

(declare-fun res!2841365 () Bool)

(assert (=> b!6963847 (=> res!2841365 e!4186796)))

(assert (=> b!6963847 (= res!2841365 call!632254)))

(declare-fun e!4186793 () Bool)

(assert (=> b!6963847 (= e!4186793 e!4186796)))

(declare-fun b!6963848 () Bool)

(assert (=> b!6963848 (= e!4186795 e!4186793)))

(assert (=> b!6963848 (= c!1291197 (is-Star!17100 (regOne!34713 r!13765)))))

(declare-fun b!6963849 () Bool)

(assert (=> b!6963849 (= e!4186794 call!632254)))

(assert (=> b!6963850 (= e!4186793 call!632253)))

(declare-fun b!6963851 () Bool)

(assert (=> b!6963851 (= e!4186798 (= s!9351 (Cons!66762 (c!1291126 (regOne!34713 r!13765)) Nil!66762)))))

(assert (= (and d!2170336 c!1291196) b!6963849))

(assert (= (and d!2170336 (not c!1291196)) b!6963845))

(assert (= (and b!6963845 res!2841364) b!6963842))

(assert (= (and b!6963842 c!1291195) b!6963851))

(assert (= (and b!6963842 (not c!1291195)) b!6963841))

(assert (= (and b!6963841 c!1291194) b!6963846))

(assert (= (and b!6963841 (not c!1291194)) b!6963848))

(assert (= (and b!6963846 (not res!2841366)) b!6963844))

(assert (= (and b!6963848 c!1291197) b!6963847))

(assert (= (and b!6963848 (not c!1291197)) b!6963850))

(assert (= (and b!6963847 (not res!2841365)) b!6963843))

(assert (= (or b!6963843 b!6963850) bm!632249))

(assert (= (or b!6963849 b!6963847) bm!632248))

(assert (=> bm!632248 m!7657212))

(declare-fun m!7657250 () Bool)

(assert (=> bm!632249 m!7657250))

(declare-fun m!7657252 () Bool)

(assert (=> b!6963844 m!7657252))

(declare-fun m!7657254 () Bool)

(assert (=> b!6963846 m!7657254))

(assert (=> b!6963533 d!2170336))

(declare-fun bs!1858530 () Bool)

(declare-fun d!2170340 () Bool)

(assert (= bs!1858530 (and d!2170340 d!2170310)))

(declare-fun lambda!397350 () Int)

(assert (=> bs!1858530 (= lambda!397350 lambda!397330)))

(declare-fun bs!1858531 () Bool)

(assert (= bs!1858531 (and d!2170340 d!2170308)))

(assert (=> bs!1858531 (not (= lambda!397350 lambda!397325))))

(declare-fun bs!1858532 () Bool)

(assert (= bs!1858532 (and d!2170340 start!668068)))

(assert (=> bs!1858532 (= lambda!397350 lambda!397311)))

(declare-fun bs!1858533 () Bool)

(assert (= bs!1858533 (and d!2170340 d!2170312)))

(assert (=> bs!1858533 (= lambda!397350 lambda!397335)))

(declare-fun bs!1858534 () Bool)

(assert (= bs!1858534 (and d!2170340 b!6963530)))

(assert (=> bs!1858534 (not (= lambda!397350 lambda!397312))))

(assert (=> bs!1858530 (not (= lambda!397350 lambda!397331))))

(declare-fun b!6963852 () Bool)

(declare-fun e!4186803 () Regex!17100)

(declare-fun e!4186799 () Regex!17100)

(assert (=> b!6963852 (= e!4186803 e!4186799)))

(declare-fun c!1291200 () Bool)

(assert (=> b!6963852 (= c!1291200 (is-Cons!66761 lt!2479164))))

(declare-fun b!6963853 () Bool)

(declare-fun e!4186802 () Bool)

(declare-fun e!4186804 () Bool)

(assert (=> b!6963853 (= e!4186802 e!4186804)))

(declare-fun c!1291201 () Bool)

(assert (=> b!6963853 (= c!1291201 (isEmpty!38973 (tail!13054 lt!2479164)))))

(declare-fun b!6963854 () Bool)

(declare-fun e!4186801 () Bool)

(assert (=> b!6963854 (= e!4186801 e!4186802)))

(declare-fun c!1291199 () Bool)

(assert (=> b!6963854 (= c!1291199 (isEmpty!38973 lt!2479164))))

(declare-fun b!6963855 () Bool)

(declare-fun lt!2479207 () Regex!17100)

(assert (=> b!6963855 (= e!4186802 (isEmptyLang!2045 lt!2479207))))

(declare-fun b!6963856 () Bool)

(assert (=> b!6963856 (= e!4186803 (h!73209 lt!2479164))))

(assert (=> d!2170340 e!4186801))

(declare-fun res!2841368 () Bool)

(assert (=> d!2170340 (=> (not res!2841368) (not e!4186801))))

(assert (=> d!2170340 (= res!2841368 (validRegex!8788 lt!2479207))))

(assert (=> d!2170340 (= lt!2479207 e!4186803)))

(declare-fun c!1291198 () Bool)

(declare-fun e!4186800 () Bool)

(assert (=> d!2170340 (= c!1291198 e!4186800)))

(declare-fun res!2841367 () Bool)

(assert (=> d!2170340 (=> (not res!2841367) (not e!4186800))))

(assert (=> d!2170340 (= res!2841367 (is-Cons!66761 lt!2479164))))

(assert (=> d!2170340 (forall!15971 lt!2479164 lambda!397350)))

(assert (=> d!2170340 (= (generalisedUnion!2575 lt!2479164) lt!2479207)))

(declare-fun b!6963857 () Bool)

(assert (=> b!6963857 (= e!4186804 (isUnion!1473 lt!2479207))))

(declare-fun b!6963858 () Bool)

(assert (=> b!6963858 (= e!4186800 (isEmpty!38973 (t!380628 lt!2479164)))))

(declare-fun b!6963859 () Bool)

(assert (=> b!6963859 (= e!4186799 EmptyLang!17100)))

(declare-fun b!6963860 () Bool)

(assert (=> b!6963860 (= e!4186799 (Union!17100 (h!73209 lt!2479164) (generalisedUnion!2575 (t!380628 lt!2479164))))))

(declare-fun b!6963861 () Bool)

(assert (=> b!6963861 (= e!4186804 (= lt!2479207 (head!13988 lt!2479164)))))

(assert (= (and d!2170340 res!2841367) b!6963858))

(assert (= (and d!2170340 c!1291198) b!6963856))

(assert (= (and d!2170340 (not c!1291198)) b!6963852))

(assert (= (and b!6963852 c!1291200) b!6963860))

(assert (= (and b!6963852 (not c!1291200)) b!6963859))

(assert (= (and d!2170340 res!2841368) b!6963854))

(assert (= (and b!6963854 c!1291199) b!6963855))

(assert (= (and b!6963854 (not c!1291199)) b!6963853))

(assert (= (and b!6963853 c!1291201) b!6963861))

(assert (= (and b!6963853 (not c!1291201)) b!6963857))

(declare-fun m!7657256 () Bool)

(assert (=> b!6963853 m!7657256))

(assert (=> b!6963853 m!7657256))

(declare-fun m!7657258 () Bool)

(assert (=> b!6963853 m!7657258))

(declare-fun m!7657260 () Bool)

(assert (=> b!6963861 m!7657260))

(declare-fun m!7657262 () Bool)

(assert (=> b!6963855 m!7657262))

(declare-fun m!7657264 () Bool)

(assert (=> b!6963860 m!7657264))

(assert (=> b!6963854 m!7657078))

(declare-fun m!7657266 () Bool)

(assert (=> b!6963857 m!7657266))

(declare-fun m!7657268 () Bool)

(assert (=> d!2170340 m!7657268))

(declare-fun m!7657270 () Bool)

(assert (=> d!2170340 m!7657270))

(declare-fun m!7657272 () Bool)

(assert (=> b!6963858 m!7657272))

(assert (=> b!6963527 d!2170340))

(assert (=> b!6963532 d!2170318))

(declare-fun bs!1858535 () Bool)

(declare-fun b!6963864 () Bool)

(assert (= bs!1858535 (and b!6963864 b!6963791)))

(declare-fun lambda!397351 () Int)

(assert (=> bs!1858535 (= (and (= (reg!17429 r!13765) (reg!17429 (regTwo!34713 r!13765))) (= r!13765 (regTwo!34713 r!13765))) (= lambda!397351 lambda!397344))))

(declare-fun bs!1858536 () Bool)

(assert (= bs!1858536 (and b!6963864 b!6963798)))

(assert (=> bs!1858536 (not (= lambda!397351 lambda!397345))))

(declare-fun bs!1858537 () Bool)

(assert (= bs!1858537 (and b!6963864 b!6963843)))

(assert (=> bs!1858537 (= (and (= (reg!17429 r!13765) (reg!17429 (regOne!34713 r!13765))) (= r!13765 (regOne!34713 r!13765))) (= lambda!397351 lambda!397348))))

(declare-fun bs!1858538 () Bool)

(assert (= bs!1858538 (and b!6963864 b!6963850)))

(assert (=> bs!1858538 (not (= lambda!397351 lambda!397349))))

(assert (=> b!6963864 true))

(assert (=> b!6963864 true))

(declare-fun bs!1858539 () Bool)

(declare-fun b!6963871 () Bool)

(assert (= bs!1858539 (and b!6963871 b!6963850)))

(declare-fun lambda!397352 () Int)

(assert (=> bs!1858539 (= (and (= (regOne!34712 r!13765) (regOne!34712 (regOne!34713 r!13765))) (= (regTwo!34712 r!13765) (regTwo!34712 (regOne!34713 r!13765)))) (= lambda!397352 lambda!397349))))

(declare-fun bs!1858540 () Bool)

(assert (= bs!1858540 (and b!6963871 b!6963843)))

(assert (=> bs!1858540 (not (= lambda!397352 lambda!397348))))

(declare-fun bs!1858541 () Bool)

(assert (= bs!1858541 (and b!6963871 b!6963798)))

(assert (=> bs!1858541 (= (and (= (regOne!34712 r!13765) (regOne!34712 (regTwo!34713 r!13765))) (= (regTwo!34712 r!13765) (regTwo!34712 (regTwo!34713 r!13765)))) (= lambda!397352 lambda!397345))))

(declare-fun bs!1858542 () Bool)

(assert (= bs!1858542 (and b!6963871 b!6963791)))

(assert (=> bs!1858542 (not (= lambda!397352 lambda!397344))))

(declare-fun bs!1858543 () Bool)

(assert (= bs!1858543 (and b!6963871 b!6963864)))

(assert (=> bs!1858543 (not (= lambda!397352 lambda!397351))))

(assert (=> b!6963871 true))

(assert (=> b!6963871 true))

(declare-fun b!6963862 () Bool)

(declare-fun c!1291202 () Bool)

(assert (=> b!6963862 (= c!1291202 (is-Union!17100 r!13765))))

(declare-fun e!4186811 () Bool)

(declare-fun e!4186808 () Bool)

(assert (=> b!6963862 (= e!4186811 e!4186808)))

(declare-fun bm!632250 () Bool)

(declare-fun call!632256 () Bool)

(assert (=> bm!632250 (= call!632256 (isEmpty!38975 s!9351))))

(declare-fun b!6963863 () Bool)

(declare-fun c!1291203 () Bool)

(assert (=> b!6963863 (= c!1291203 (is-ElementMatch!17100 r!13765))))

(declare-fun e!4186805 () Bool)

(assert (=> b!6963863 (= e!4186805 e!4186811)))

(declare-fun e!4186809 () Bool)

(declare-fun call!632255 () Bool)

(assert (=> b!6963864 (= e!4186809 call!632255)))

(declare-fun bm!632251 () Bool)

(declare-fun c!1291205 () Bool)

(assert (=> bm!632251 (= call!632255 (Exists!4076 (ite c!1291205 lambda!397351 lambda!397352)))))

(declare-fun b!6963865 () Bool)

(declare-fun e!4186810 () Bool)

(assert (=> b!6963865 (= e!4186810 (matchRSpec!4121 (regTwo!34713 r!13765) s!9351))))

(declare-fun d!2170342 () Bool)

(declare-fun c!1291204 () Bool)

(assert (=> d!2170342 (= c!1291204 (is-EmptyExpr!17100 r!13765))))

(declare-fun e!4186807 () Bool)

(assert (=> d!2170342 (= (matchRSpec!4121 r!13765 s!9351) e!4186807)))

(declare-fun b!6963866 () Bool)

(assert (=> b!6963866 (= e!4186807 e!4186805)))

(declare-fun res!2841369 () Bool)

(assert (=> b!6963866 (= res!2841369 (not (is-EmptyLang!17100 r!13765)))))

(assert (=> b!6963866 (=> (not res!2841369) (not e!4186805))))

(declare-fun b!6963867 () Bool)

(assert (=> b!6963867 (= e!4186808 e!4186810)))

(declare-fun res!2841371 () Bool)

(assert (=> b!6963867 (= res!2841371 (matchRSpec!4121 (regOne!34713 r!13765) s!9351))))

(assert (=> b!6963867 (=> res!2841371 e!4186810)))

(declare-fun b!6963868 () Bool)

(declare-fun res!2841370 () Bool)

(assert (=> b!6963868 (=> res!2841370 e!4186809)))

(assert (=> b!6963868 (= res!2841370 call!632256)))

(declare-fun e!4186806 () Bool)

(assert (=> b!6963868 (= e!4186806 e!4186809)))

(declare-fun b!6963869 () Bool)

(assert (=> b!6963869 (= e!4186808 e!4186806)))

(assert (=> b!6963869 (= c!1291205 (is-Star!17100 r!13765))))

(declare-fun b!6963870 () Bool)

(assert (=> b!6963870 (= e!4186807 call!632256)))

(assert (=> b!6963871 (= e!4186806 call!632255)))

(declare-fun b!6963872 () Bool)

(assert (=> b!6963872 (= e!4186811 (= s!9351 (Cons!66762 (c!1291126 r!13765) Nil!66762)))))

(assert (= (and d!2170342 c!1291204) b!6963870))

(assert (= (and d!2170342 (not c!1291204)) b!6963866))

(assert (= (and b!6963866 res!2841369) b!6963863))

(assert (= (and b!6963863 c!1291203) b!6963872))

(assert (= (and b!6963863 (not c!1291203)) b!6963862))

(assert (= (and b!6963862 c!1291202) b!6963867))

(assert (= (and b!6963862 (not c!1291202)) b!6963869))

(assert (= (and b!6963867 (not res!2841371)) b!6963865))

(assert (= (and b!6963869 c!1291205) b!6963868))

(assert (= (and b!6963869 (not c!1291205)) b!6963871))

(assert (= (and b!6963868 (not res!2841370)) b!6963864))

(assert (= (or b!6963864 b!6963871) bm!632251))

(assert (= (or b!6963870 b!6963868) bm!632250))

(assert (=> bm!632250 m!7657212))

(declare-fun m!7657274 () Bool)

(assert (=> bm!632251 m!7657274))

(assert (=> b!6963865 m!7657076))

(assert (=> b!6963867 m!7657086))

(assert (=> b!6963537 d!2170342))

(declare-fun b!6963891 () Bool)

(declare-fun e!4186830 () Bool)

(assert (=> b!6963891 (= e!4186830 (matchR!9206 (derivativeStep!5521 r!13765 (head!13989 s!9351)) (tail!13056 s!9351)))))

(declare-fun b!6963892 () Bool)

(assert (=> b!6963892 (= e!4186830 (nullable!6895 r!13765))))

(declare-fun b!6963893 () Bool)

(declare-fun e!4186826 () Bool)

(declare-fun e!4186827 () Bool)

(assert (=> b!6963893 (= e!4186826 e!4186827)))

(declare-fun c!1291211 () Bool)

(assert (=> b!6963893 (= c!1291211 (is-EmptyLang!17100 r!13765))))

(declare-fun b!6963895 () Bool)

(declare-fun res!2841382 () Bool)

(declare-fun e!4186829 () Bool)

(assert (=> b!6963895 (=> (not res!2841382) (not e!4186829))))

(assert (=> b!6963895 (= res!2841382 (isEmpty!38975 (tail!13056 s!9351)))))

(declare-fun b!6963896 () Bool)

(declare-fun res!2841388 () Bool)

(assert (=> b!6963896 (=> (not res!2841388) (not e!4186829))))

(declare-fun call!632259 () Bool)

(assert (=> b!6963896 (= res!2841388 (not call!632259))))

(declare-fun bm!632254 () Bool)

(assert (=> bm!632254 (= call!632259 (isEmpty!38975 s!9351))))

(declare-fun b!6963897 () Bool)

(declare-fun lt!2479208 () Bool)

(assert (=> b!6963897 (= e!4186827 (not lt!2479208))))

(declare-fun b!6963898 () Bool)

(declare-fun e!4186831 () Bool)

(assert (=> b!6963898 (= e!4186831 (not (= (head!13989 s!9351) (c!1291126 r!13765))))))

(declare-fun d!2170344 () Bool)

(assert (=> d!2170344 e!4186826))

(declare-fun c!1291210 () Bool)

(assert (=> d!2170344 (= c!1291210 (is-EmptyExpr!17100 r!13765))))

(assert (=> d!2170344 (= lt!2479208 e!4186830)))

(declare-fun c!1291212 () Bool)

(assert (=> d!2170344 (= c!1291212 (isEmpty!38975 s!9351))))

(assert (=> d!2170344 (validRegex!8788 r!13765)))

(assert (=> d!2170344 (= (matchR!9206 r!13765 s!9351) lt!2479208)))

(declare-fun b!6963894 () Bool)

(declare-fun res!2841387 () Bool)

(declare-fun e!4186828 () Bool)

(assert (=> b!6963894 (=> res!2841387 e!4186828)))

(assert (=> b!6963894 (= res!2841387 e!4186829)))

(declare-fun res!2841383 () Bool)

(assert (=> b!6963894 (=> (not res!2841383) (not e!4186829))))

(assert (=> b!6963894 (= res!2841383 lt!2479208)))

(declare-fun b!6963899 () Bool)

(assert (=> b!6963899 (= e!4186829 (= (head!13989 s!9351) (c!1291126 r!13765)))))

(declare-fun b!6963900 () Bool)

(declare-fun res!2841386 () Bool)

(assert (=> b!6963900 (=> res!2841386 e!4186828)))

(assert (=> b!6963900 (= res!2841386 (not (is-ElementMatch!17100 r!13765)))))

(assert (=> b!6963900 (= e!4186827 e!4186828)))

(declare-fun b!6963901 () Bool)

(declare-fun e!4186832 () Bool)

(assert (=> b!6963901 (= e!4186828 e!4186832)))

(declare-fun res!2841384 () Bool)

(assert (=> b!6963901 (=> (not res!2841384) (not e!4186832))))

(assert (=> b!6963901 (= res!2841384 (not lt!2479208))))

(declare-fun b!6963902 () Bool)

(declare-fun res!2841385 () Bool)

(assert (=> b!6963902 (=> res!2841385 e!4186831)))

(assert (=> b!6963902 (= res!2841385 (not (isEmpty!38975 (tail!13056 s!9351))))))

(declare-fun b!6963903 () Bool)

(assert (=> b!6963903 (= e!4186826 (= lt!2479208 call!632259))))

(declare-fun b!6963904 () Bool)

(assert (=> b!6963904 (= e!4186832 e!4186831)))

(declare-fun res!2841389 () Bool)

(assert (=> b!6963904 (=> res!2841389 e!4186831)))

(assert (=> b!6963904 (= res!2841389 call!632259)))

(assert (= (and d!2170344 c!1291212) b!6963892))

(assert (= (and d!2170344 (not c!1291212)) b!6963891))

(assert (= (and d!2170344 c!1291210) b!6963903))

(assert (= (and d!2170344 (not c!1291210)) b!6963893))

(assert (= (and b!6963893 c!1291211) b!6963897))

(assert (= (and b!6963893 (not c!1291211)) b!6963900))

(assert (= (and b!6963900 (not res!2841386)) b!6963894))

(assert (= (and b!6963894 res!2841383) b!6963896))

(assert (= (and b!6963896 res!2841388) b!6963895))

(assert (= (and b!6963895 res!2841382) b!6963899))

(assert (= (and b!6963894 (not res!2841387)) b!6963901))

(assert (= (and b!6963901 res!2841384) b!6963904))

(assert (= (and b!6963904 (not res!2841389)) b!6963902))

(assert (= (and b!6963902 (not res!2841385)) b!6963898))

(assert (= (or b!6963903 b!6963896 b!6963904) bm!632254))

(assert (=> b!6963895 m!7657200))

(assert (=> b!6963895 m!7657200))

(assert (=> b!6963895 m!7657202))

(assert (=> b!6963891 m!7657204))

(assert (=> b!6963891 m!7657204))

(declare-fun m!7657276 () Bool)

(assert (=> b!6963891 m!7657276))

(assert (=> b!6963891 m!7657200))

(assert (=> b!6963891 m!7657276))

(assert (=> b!6963891 m!7657200))

(declare-fun m!7657278 () Bool)

(assert (=> b!6963891 m!7657278))

(assert (=> b!6963898 m!7657204))

(assert (=> b!6963902 m!7657200))

(assert (=> b!6963902 m!7657200))

(assert (=> b!6963902 m!7657202))

(assert (=> b!6963899 m!7657204))

(declare-fun m!7657280 () Bool)

(assert (=> b!6963892 m!7657280))

(assert (=> d!2170344 m!7657212))

(assert (=> d!2170344 m!7657088))

(assert (=> bm!632254 m!7657212))

(assert (=> b!6963537 d!2170344))

(declare-fun d!2170346 () Bool)

(assert (=> d!2170346 (= (matchR!9206 r!13765 s!9351) (matchRSpec!4121 r!13765 s!9351))))

(declare-fun lt!2479209 () Unit!160860)

(assert (=> d!2170346 (= lt!2479209 (choose!51890 r!13765 s!9351))))

(assert (=> d!2170346 (validRegex!8788 r!13765)))

(assert (=> d!2170346 (= (mainMatchTheorem!4115 r!13765 s!9351) lt!2479209)))

(declare-fun bs!1858544 () Bool)

(assert (= bs!1858544 d!2170346))

(assert (=> bs!1858544 m!7657110))

(assert (=> bs!1858544 m!7657108))

(declare-fun m!7657282 () Bool)

(assert (=> bs!1858544 m!7657282))

(assert (=> bs!1858544 m!7657088))

(assert (=> b!6963537 d!2170346))

(declare-fun e!4186835 () Bool)

(assert (=> b!6963531 (= tp!1920243 e!4186835)))

(declare-fun b!6963917 () Bool)

(declare-fun tp!1920283 () Bool)

(assert (=> b!6963917 (= e!4186835 tp!1920283)))

(declare-fun b!6963918 () Bool)

(declare-fun tp!1920282 () Bool)

(declare-fun tp!1920280 () Bool)

(assert (=> b!6963918 (= e!4186835 (and tp!1920282 tp!1920280))))

(declare-fun b!6963916 () Bool)

(declare-fun tp!1920284 () Bool)

(declare-fun tp!1920281 () Bool)

(assert (=> b!6963916 (= e!4186835 (and tp!1920284 tp!1920281))))

(declare-fun b!6963915 () Bool)

(assert (=> b!6963915 (= e!4186835 tp_is_empty!43425)))

(assert (= (and b!6963531 (is-ElementMatch!17100 (reg!17429 r!13765))) b!6963915))

(assert (= (and b!6963531 (is-Concat!25945 (reg!17429 r!13765))) b!6963916))

(assert (= (and b!6963531 (is-Star!17100 (reg!17429 r!13765))) b!6963917))

(assert (= (and b!6963531 (is-Union!17100 (reg!17429 r!13765))) b!6963918))

(declare-fun e!4186836 () Bool)

(assert (=> b!6963536 (= tp!1920242 e!4186836)))

(declare-fun b!6963921 () Bool)

(declare-fun tp!1920288 () Bool)

(assert (=> b!6963921 (= e!4186836 tp!1920288)))

(declare-fun b!6963922 () Bool)

(declare-fun tp!1920287 () Bool)

(declare-fun tp!1920285 () Bool)

(assert (=> b!6963922 (= e!4186836 (and tp!1920287 tp!1920285))))

(declare-fun b!6963920 () Bool)

(declare-fun tp!1920289 () Bool)

(declare-fun tp!1920286 () Bool)

(assert (=> b!6963920 (= e!4186836 (and tp!1920289 tp!1920286))))

(declare-fun b!6963919 () Bool)

(assert (=> b!6963919 (= e!4186836 tp_is_empty!43425)))

(assert (= (and b!6963536 (is-ElementMatch!17100 (h!73209 l!9142))) b!6963919))

(assert (= (and b!6963536 (is-Concat!25945 (h!73209 l!9142))) b!6963920))

(assert (= (and b!6963536 (is-Star!17100 (h!73209 l!9142))) b!6963921))

(assert (= (and b!6963536 (is-Union!17100 (h!73209 l!9142))) b!6963922))

(declare-fun b!6963927 () Bool)

(declare-fun e!4186839 () Bool)

(declare-fun tp!1920294 () Bool)

(declare-fun tp!1920295 () Bool)

(assert (=> b!6963927 (= e!4186839 (and tp!1920294 tp!1920295))))

(assert (=> b!6963536 (= tp!1920240 e!4186839)))

(assert (= (and b!6963536 (is-Cons!66761 (t!380628 l!9142))) b!6963927))

(declare-fun e!4186840 () Bool)

(assert (=> b!6963535 (= tp!1920239 e!4186840)))

(declare-fun b!6963930 () Bool)

(declare-fun tp!1920299 () Bool)

(assert (=> b!6963930 (= e!4186840 tp!1920299)))

(declare-fun b!6963931 () Bool)

(declare-fun tp!1920298 () Bool)

(declare-fun tp!1920296 () Bool)

(assert (=> b!6963931 (= e!4186840 (and tp!1920298 tp!1920296))))

(declare-fun b!6963929 () Bool)

(declare-fun tp!1920300 () Bool)

(declare-fun tp!1920297 () Bool)

(assert (=> b!6963929 (= e!4186840 (and tp!1920300 tp!1920297))))

(declare-fun b!6963928 () Bool)

(assert (=> b!6963928 (= e!4186840 tp_is_empty!43425)))

(assert (= (and b!6963535 (is-ElementMatch!17100 (regOne!34713 r!13765))) b!6963928))

(assert (= (and b!6963535 (is-Concat!25945 (regOne!34713 r!13765))) b!6963929))

(assert (= (and b!6963535 (is-Star!17100 (regOne!34713 r!13765))) b!6963930))

(assert (= (and b!6963535 (is-Union!17100 (regOne!34713 r!13765))) b!6963931))

(declare-fun e!4186841 () Bool)

(assert (=> b!6963535 (= tp!1920238 e!4186841)))

(declare-fun b!6963934 () Bool)

(declare-fun tp!1920304 () Bool)

(assert (=> b!6963934 (= e!4186841 tp!1920304)))

(declare-fun b!6963935 () Bool)

(declare-fun tp!1920303 () Bool)

(declare-fun tp!1920301 () Bool)

(assert (=> b!6963935 (= e!4186841 (and tp!1920303 tp!1920301))))

(declare-fun b!6963933 () Bool)

(declare-fun tp!1920305 () Bool)

(declare-fun tp!1920302 () Bool)

(assert (=> b!6963933 (= e!4186841 (and tp!1920305 tp!1920302))))

(declare-fun b!6963932 () Bool)

(assert (=> b!6963932 (= e!4186841 tp_is_empty!43425)))

(assert (= (and b!6963535 (is-ElementMatch!17100 (regTwo!34713 r!13765))) b!6963932))

(assert (= (and b!6963535 (is-Concat!25945 (regTwo!34713 r!13765))) b!6963933))

(assert (= (and b!6963535 (is-Star!17100 (regTwo!34713 r!13765))) b!6963934))

(assert (= (and b!6963535 (is-Union!17100 (regTwo!34713 r!13765))) b!6963935))

(declare-fun b!6963940 () Bool)

(declare-fun e!4186844 () Bool)

(declare-fun tp!1920308 () Bool)

(assert (=> b!6963940 (= e!4186844 (and tp_is_empty!43425 tp!1920308))))

(assert (=> b!6963538 (= tp!1920244 e!4186844)))

(assert (= (and b!6963538 (is-Cons!66762 (t!380629 s!9351))) b!6963940))

(declare-fun e!4186845 () Bool)

(assert (=> b!6963526 (= tp!1920241 e!4186845)))

(declare-fun b!6963943 () Bool)

(declare-fun tp!1920312 () Bool)

(assert (=> b!6963943 (= e!4186845 tp!1920312)))

(declare-fun b!6963944 () Bool)

(declare-fun tp!1920311 () Bool)

(declare-fun tp!1920309 () Bool)

(assert (=> b!6963944 (= e!4186845 (and tp!1920311 tp!1920309))))

(declare-fun b!6963942 () Bool)

(declare-fun tp!1920313 () Bool)

(declare-fun tp!1920310 () Bool)

(assert (=> b!6963942 (= e!4186845 (and tp!1920313 tp!1920310))))

(declare-fun b!6963941 () Bool)

(assert (=> b!6963941 (= e!4186845 tp_is_empty!43425)))

(assert (= (and b!6963526 (is-ElementMatch!17100 (regOne!34712 r!13765))) b!6963941))

(assert (= (and b!6963526 (is-Concat!25945 (regOne!34712 r!13765))) b!6963942))

(assert (= (and b!6963526 (is-Star!17100 (regOne!34712 r!13765))) b!6963943))

(assert (= (and b!6963526 (is-Union!17100 (regOne!34712 r!13765))) b!6963944))

(declare-fun e!4186846 () Bool)

(assert (=> b!6963526 (= tp!1920245 e!4186846)))

(declare-fun b!6963947 () Bool)

(declare-fun tp!1920317 () Bool)

(assert (=> b!6963947 (= e!4186846 tp!1920317)))

(declare-fun b!6963948 () Bool)

(declare-fun tp!1920316 () Bool)

(declare-fun tp!1920314 () Bool)

(assert (=> b!6963948 (= e!4186846 (and tp!1920316 tp!1920314))))

(declare-fun b!6963946 () Bool)

(declare-fun tp!1920318 () Bool)

(declare-fun tp!1920315 () Bool)

(assert (=> b!6963946 (= e!4186846 (and tp!1920318 tp!1920315))))

(declare-fun b!6963945 () Bool)

(assert (=> b!6963945 (= e!4186846 tp_is_empty!43425)))

(assert (= (and b!6963526 (is-ElementMatch!17100 (regTwo!34712 r!13765))) b!6963945))

(assert (= (and b!6963526 (is-Concat!25945 (regTwo!34712 r!13765))) b!6963946))

(assert (= (and b!6963526 (is-Star!17100 (regTwo!34712 r!13765))) b!6963947))

(assert (= (and b!6963526 (is-Union!17100 (regTwo!34712 r!13765))) b!6963948))

(declare-fun b_lambda!260605 () Bool)

(assert (= b_lambda!260603 (or start!668068 b_lambda!260605)))

(declare-fun bs!1858545 () Bool)

(declare-fun d!2170348 () Bool)

(assert (= bs!1858545 (and d!2170348 start!668068)))

(assert (=> bs!1858545 (= (dynLambda!26617 lambda!397311 (h!73209 l!9142)) (validRegex!8788 (h!73209 l!9142)))))

(declare-fun m!7657284 () Bool)

(assert (=> bs!1858545 m!7657284))

(assert (=> b!6963839 d!2170348))

(declare-fun b_lambda!260607 () Bool)

(assert (= b_lambda!260601 (or start!668068 b_lambda!260607)))

(declare-fun bs!1858546 () Bool)

(declare-fun d!2170350 () Bool)

(assert (= bs!1858546 (and d!2170350 start!668068)))

(assert (=> bs!1858546 (= (dynLambda!26617 lambda!397311 (h!73209 lt!2479164)) (validRegex!8788 (h!73209 lt!2479164)))))

(declare-fun m!7657286 () Bool)

(assert (=> bs!1858546 m!7657286))

(assert (=> b!6963837 d!2170350))

(push 1)

(assert (not b!6963857))

(assert (not b_lambda!260605))

(assert (not b!6963823))

(assert (not d!2170312))

(assert (not b!6963946))

(assert (not b!6963917))

(assert (not b!6963733))

(assert (not b!6963902))

(assert (not b!6963947))

(assert (not b!6963921))

(assert (not b!6963741))

(assert (not b!6963860))

(assert (not b!6963895))

(assert (not d!2170310))

(assert (not b!6963940))

(assert (not b!6963934))

(assert (not b!6963865))

(assert (not b!6963853))

(assert (not b!6963838))

(assert (not b!6963943))

(assert (not b!6963942))

(assert (not b!6963678))

(assert (not bm!632248))

(assert (not b!6963846))

(assert (not b!6963922))

(assert (not b!6963675))

(assert (not b!6963948))

(assert (not b!6963612))

(assert (not b!6963744))

(assert (not bm!632243))

(assert (not bm!632247))

(assert (not b!6963822))

(assert (not b!6963815))

(assert (not b!6963933))

(assert (not bs!1858545))

(assert (not bm!632234))

(assert (not b!6963676))

(assert (not b!6963674))

(assert (not bm!632250))

(assert (not b!6963840))

(assert (not b!6963898))

(assert (not b!6963681))

(assert (not bm!632251))

(assert (not b!6963792))

(assert (not bm!632229))

(assert (not b!6963935))

(assert (not b!6963892))

(assert (not b!6963816))

(assert (not d!2170324))

(assert (not b!6963740))

(assert (not bm!632244))

(assert (not b!6963854))

(assert (not bs!1858546))

(assert (not b!6963861))

(assert (not b!6963899))

(assert (not d!2170340))

(assert (not b!6963858))

(assert (not b!6963844))

(assert (not b!6963930))

(assert (not b!6963679))

(assert (not b!6963682))

(assert (not b!6963867))

(assert (not b!6963927))

(assert (not b!6963944))

(assert (not bm!632249))

(assert (not d!2170308))

(assert (not b!6963794))

(assert (not b!6963929))

(assert (not b!6963891))

(assert tp_is_empty!43425)

(assert (not bm!632254))

(assert (not d!2170322))

(assert (not b!6963819))

(assert (not b_lambda!260607))

(assert (not b!6963855))

(assert (not b!6963931))

(assert (not b!6963826))

(assert (not d!2170344))

(assert (not b!6963916))

(assert (not b!6963920))

(assert (not b!6963737))

(assert (not b!6963734))

(assert (not d!2170346))

(assert (not bm!632231))

(assert (not d!2170320))

(assert (not b!6963918))

(assert (not d!2170316))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

