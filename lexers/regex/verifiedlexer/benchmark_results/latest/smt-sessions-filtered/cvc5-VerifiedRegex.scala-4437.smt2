; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!236014 () Bool)

(assert start!236014)

(declare-fun b!2407847 () Bool)

(declare-fun res!1022627 () Bool)

(declare-fun e!1533206 () Bool)

(assert (=> b!2407847 (=> (not res!1022627) (not e!1533206))))

(declare-datatypes ((C!14290 0))(
  ( (C!14291 (val!8387 Int)) )
))
(declare-datatypes ((Regex!7066 0))(
  ( (ElementMatch!7066 (c!383536 C!14290)) (Concat!11702 (regOne!14644 Regex!7066) (regTwo!14644 Regex!7066)) (EmptyExpr!7066) (Star!7066 (reg!7395 Regex!7066)) (EmptyLang!7066) (Union!7066 (regOne!14645 Regex!7066) (regTwo!14645 Regex!7066)) )
))
(declare-fun r!13927 () Regex!7066)

(declare-datatypes ((List!28370 0))(
  ( (Nil!28272) (Cons!28272 (h!33673 Regex!7066) (t!208347 List!28370)) )
))
(declare-fun l!9164 () List!28370)

(declare-fun generalisedConcat!167 (List!28370) Regex!7066)

(assert (=> b!2407847 (= res!1022627 (= r!13927 (generalisedConcat!167 l!9164)))))

(declare-fun b!2407848 () Bool)

(declare-fun res!1022625 () Bool)

(declare-fun e!1533201 () Bool)

(assert (=> b!2407848 (=> res!1022625 e!1533201)))

(declare-fun isEmpty!16275 (List!28370) Bool)

(assert (=> b!2407848 (= res!1022625 (isEmpty!16275 l!9164))))

(declare-fun b!2407849 () Bool)

(declare-fun e!1533205 () Bool)

(assert (=> b!2407849 (= e!1533201 e!1533205)))

(declare-fun res!1022623 () Bool)

(assert (=> b!2407849 (=> res!1022623 e!1533205)))

(declare-fun lt!873136 () List!28370)

(assert (=> b!2407849 (= res!1022623 (not (isEmpty!16275 lt!873136)))))

(declare-fun tail!3625 (List!28370) List!28370)

(assert (=> b!2407849 (= lt!873136 (tail!3625 l!9164))))

(declare-fun b!2407850 () Bool)

(declare-fun res!1022626 () Bool)

(assert (=> b!2407850 (=> res!1022626 e!1533205)))

(assert (=> b!2407850 (= res!1022626 (not (= (generalisedConcat!167 lt!873136) EmptyExpr!7066)))))

(declare-fun b!2407851 () Bool)

(declare-fun e!1533207 () Bool)

(declare-fun tp!766203 () Bool)

(assert (=> b!2407851 (= e!1533207 tp!766203)))

(declare-fun b!2407852 () Bool)

(declare-fun tp!766206 () Bool)

(declare-fun tp!766205 () Bool)

(assert (=> b!2407852 (= e!1533207 (and tp!766206 tp!766205))))

(declare-fun b!2407853 () Bool)

(declare-fun e!1533202 () Bool)

(declare-fun tp!766207 () Bool)

(declare-fun tp!766202 () Bool)

(assert (=> b!2407853 (= e!1533202 (and tp!766207 tp!766202))))

(declare-fun res!1022622 () Bool)

(assert (=> start!236014 (=> (not res!1022622) (not e!1533206))))

(declare-fun lambda!90610 () Int)

(declare-fun forall!5700 (List!28370 Int) Bool)

(assert (=> start!236014 (= res!1022622 (forall!5700 l!9164 lambda!90610))))

(assert (=> start!236014 e!1533206))

(assert (=> start!236014 e!1533202))

(assert (=> start!236014 e!1533207))

(declare-fun e!1533203 () Bool)

(assert (=> start!236014 e!1533203))

(declare-fun b!2407854 () Bool)

(declare-fun tp_is_empty!11545 () Bool)

(declare-fun tp!766204 () Bool)

(assert (=> b!2407854 (= e!1533203 (and tp_is_empty!11545 tp!766204))))

(declare-fun b!2407855 () Bool)

(declare-fun e!1533204 () Bool)

(assert (=> b!2407855 (= e!1533205 e!1533204)))

(declare-fun res!1022621 () Bool)

(assert (=> b!2407855 (=> res!1022621 e!1533204)))

(declare-fun lt!873137 () Regex!7066)

(declare-datatypes ((List!28371 0))(
  ( (Nil!28273) (Cons!28273 (h!33674 C!14290) (t!208348 List!28371)) )
))
(declare-fun s!9460 () List!28371)

(declare-fun matchR!3183 (Regex!7066 List!28371) Bool)

(assert (=> b!2407855 (= res!1022621 (not (matchR!3183 lt!873137 s!9460)))))

(declare-fun head!5353 (List!28370) Regex!7066)

(assert (=> b!2407855 (= lt!873137 (head!5353 l!9164))))

(declare-fun b!2407856 () Bool)

(assert (=> b!2407856 (= e!1533206 (not e!1533201))))

(declare-fun res!1022624 () Bool)

(assert (=> b!2407856 (=> res!1022624 e!1533201)))

(assert (=> b!2407856 (= res!1022624 (or (is-Concat!11702 r!13927) (is-EmptyExpr!7066 r!13927)))))

(declare-fun matchRSpec!915 (Regex!7066 List!28371) Bool)

(assert (=> b!2407856 (= (matchR!3183 r!13927 s!9460) (matchRSpec!915 r!13927 s!9460))))

(declare-datatypes ((Unit!41403 0))(
  ( (Unit!41404) )
))
(declare-fun lt!873135 () Unit!41403)

(declare-fun mainMatchTheorem!915 (Regex!7066 List!28371) Unit!41403)

(assert (=> b!2407856 (= lt!873135 (mainMatchTheorem!915 r!13927 s!9460))))

(declare-fun b!2407857 () Bool)

(assert (=> b!2407857 (= e!1533207 tp_is_empty!11545)))

(declare-fun b!2407858 () Bool)

(assert (=> b!2407858 (= e!1533204 (not (= l!9164 Nil!28272)))))

(declare-fun ++!6995 (List!28371 List!28371) List!28371)

(assert (=> b!2407858 (matchR!3183 (Concat!11702 lt!873137 EmptyExpr!7066) (++!6995 s!9460 Nil!28273))))

(declare-fun lt!873138 () Unit!41403)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!65 (Regex!7066 Regex!7066 List!28371 List!28371) Unit!41403)

(assert (=> b!2407858 (= lt!873138 (lemmaTwoRegexMatchThenConcatMatchesConcatString!65 lt!873137 EmptyExpr!7066 s!9460 Nil!28273))))

(declare-fun b!2407859 () Bool)

(declare-fun tp!766200 () Bool)

(declare-fun tp!766201 () Bool)

(assert (=> b!2407859 (= e!1533207 (and tp!766200 tp!766201))))

(assert (= (and start!236014 res!1022622) b!2407847))

(assert (= (and b!2407847 res!1022627) b!2407856))

(assert (= (and b!2407856 (not res!1022624)) b!2407848))

(assert (= (and b!2407848 (not res!1022625)) b!2407849))

(assert (= (and b!2407849 (not res!1022623)) b!2407850))

(assert (= (and b!2407850 (not res!1022626)) b!2407855))

(assert (= (and b!2407855 (not res!1022621)) b!2407858))

(assert (= (and start!236014 (is-Cons!28272 l!9164)) b!2407853))

(assert (= (and start!236014 (is-ElementMatch!7066 r!13927)) b!2407857))

(assert (= (and start!236014 (is-Concat!11702 r!13927)) b!2407852))

(assert (= (and start!236014 (is-Star!7066 r!13927)) b!2407851))

(assert (= (and start!236014 (is-Union!7066 r!13927)) b!2407859))

(assert (= (and start!236014 (is-Cons!28273 s!9460)) b!2407854))

(declare-fun m!2800603 () Bool)

(assert (=> b!2407850 m!2800603))

(declare-fun m!2800605 () Bool)

(assert (=> b!2407855 m!2800605))

(declare-fun m!2800607 () Bool)

(assert (=> b!2407855 m!2800607))

(declare-fun m!2800609 () Bool)

(assert (=> b!2407858 m!2800609))

(assert (=> b!2407858 m!2800609))

(declare-fun m!2800611 () Bool)

(assert (=> b!2407858 m!2800611))

(declare-fun m!2800613 () Bool)

(assert (=> b!2407858 m!2800613))

(declare-fun m!2800615 () Bool)

(assert (=> b!2407847 m!2800615))

(declare-fun m!2800617 () Bool)

(assert (=> b!2407856 m!2800617))

(declare-fun m!2800619 () Bool)

(assert (=> b!2407856 m!2800619))

(declare-fun m!2800621 () Bool)

(assert (=> b!2407856 m!2800621))

(declare-fun m!2800623 () Bool)

(assert (=> start!236014 m!2800623))

(declare-fun m!2800625 () Bool)

(assert (=> b!2407848 m!2800625))

(declare-fun m!2800627 () Bool)

(assert (=> b!2407849 m!2800627))

(declare-fun m!2800629 () Bool)

(assert (=> b!2407849 m!2800629))

(push 1)

(assert (not b!2407856))

(assert (not b!2407849))

(assert (not start!236014))

(assert (not b!2407859))

(assert tp_is_empty!11545)

(assert (not b!2407853))

(assert (not b!2407855))

(assert (not b!2407851))

(assert (not b!2407848))

(assert (not b!2407852))

(assert (not b!2407850))

(assert (not b!2407847))

(assert (not b!2407858))

(assert (not b!2407854))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!2407947 () Bool)

(declare-fun e!1533257 () Bool)

(declare-fun derivativeStep!1767 (Regex!7066 C!14290) Regex!7066)

(declare-fun head!5355 (List!28371) C!14290)

(declare-fun tail!3627 (List!28371) List!28371)

(assert (=> b!2407947 (= e!1533257 (matchR!3183 (derivativeStep!1767 r!13927 (head!5355 s!9460)) (tail!3627 s!9460)))))

(declare-fun b!2407948 () Bool)

(declare-fun res!1022671 () Bool)

(declare-fun e!1533258 () Bool)

(assert (=> b!2407948 (=> (not res!1022671) (not e!1533258))))

(declare-fun isEmpty!16277 (List!28371) Bool)

(assert (=> b!2407948 (= res!1022671 (isEmpty!16277 (tail!3627 s!9460)))))

(declare-fun b!2407949 () Bool)

(declare-fun e!1533261 () Bool)

(declare-fun e!1533259 () Bool)

(assert (=> b!2407949 (= e!1533261 e!1533259)))

(declare-fun res!1022675 () Bool)

(assert (=> b!2407949 (=> res!1022675 e!1533259)))

(declare-fun call!147085 () Bool)

(assert (=> b!2407949 (= res!1022675 call!147085)))

(declare-fun b!2407950 () Bool)

(declare-fun e!1533255 () Bool)

(declare-fun lt!873155 () Bool)

(assert (=> b!2407950 (= e!1533255 (not lt!873155))))

(declare-fun b!2407951 () Bool)

(declare-fun res!1022672 () Bool)

(declare-fun e!1533260 () Bool)

(assert (=> b!2407951 (=> res!1022672 e!1533260)))

(assert (=> b!2407951 (= res!1022672 (not (is-ElementMatch!7066 r!13927)))))

(assert (=> b!2407951 (= e!1533255 e!1533260)))

(declare-fun b!2407952 () Bool)

(declare-fun e!1533256 () Bool)

(assert (=> b!2407952 (= e!1533256 e!1533255)))

(declare-fun c!383552 () Bool)

(assert (=> b!2407952 (= c!383552 (is-EmptyLang!7066 r!13927))))

(declare-fun b!2407954 () Bool)

(declare-fun res!1022669 () Bool)

(assert (=> b!2407954 (=> res!1022669 e!1533259)))

(assert (=> b!2407954 (= res!1022669 (not (isEmpty!16277 (tail!3627 s!9460))))))

(declare-fun b!2407955 () Bool)

(assert (=> b!2407955 (= e!1533258 (= (head!5355 s!9460) (c!383536 r!13927)))))

(declare-fun b!2407956 () Bool)

(declare-fun nullable!2110 (Regex!7066) Bool)

(assert (=> b!2407956 (= e!1533257 (nullable!2110 r!13927))))

(declare-fun b!2407957 () Bool)

(assert (=> b!2407957 (= e!1533259 (not (= (head!5355 s!9460) (c!383536 r!13927))))))

(declare-fun bm!147080 () Bool)

(assert (=> bm!147080 (= call!147085 (isEmpty!16277 s!9460))))

(declare-fun b!2407958 () Bool)

(assert (=> b!2407958 (= e!1533260 e!1533261)))

(declare-fun res!1022670 () Bool)

(assert (=> b!2407958 (=> (not res!1022670) (not e!1533261))))

(assert (=> b!2407958 (= res!1022670 (not lt!873155))))

(declare-fun b!2407953 () Bool)

(declare-fun res!1022676 () Bool)

(assert (=> b!2407953 (=> (not res!1022676) (not e!1533258))))

(assert (=> b!2407953 (= res!1022676 (not call!147085))))

(declare-fun d!700260 () Bool)

(assert (=> d!700260 e!1533256))

(declare-fun c!383553 () Bool)

(assert (=> d!700260 (= c!383553 (is-EmptyExpr!7066 r!13927))))

(assert (=> d!700260 (= lt!873155 e!1533257)))

(declare-fun c!383554 () Bool)

(assert (=> d!700260 (= c!383554 (isEmpty!16277 s!9460))))

(declare-fun validRegex!2790 (Regex!7066) Bool)

(assert (=> d!700260 (validRegex!2790 r!13927)))

(assert (=> d!700260 (= (matchR!3183 r!13927 s!9460) lt!873155)))

(declare-fun b!2407959 () Bool)

(declare-fun res!1022673 () Bool)

(assert (=> b!2407959 (=> res!1022673 e!1533260)))

(assert (=> b!2407959 (= res!1022673 e!1533258)))

(declare-fun res!1022674 () Bool)

(assert (=> b!2407959 (=> (not res!1022674) (not e!1533258))))

(assert (=> b!2407959 (= res!1022674 lt!873155)))

(declare-fun b!2407960 () Bool)

(assert (=> b!2407960 (= e!1533256 (= lt!873155 call!147085))))

(assert (= (and d!700260 c!383554) b!2407956))

(assert (= (and d!700260 (not c!383554)) b!2407947))

(assert (= (and d!700260 c!383553) b!2407960))

(assert (= (and d!700260 (not c!383553)) b!2407952))

(assert (= (and b!2407952 c!383552) b!2407950))

(assert (= (and b!2407952 (not c!383552)) b!2407951))

(assert (= (and b!2407951 (not res!1022672)) b!2407959))

(assert (= (and b!2407959 res!1022674) b!2407953))

(assert (= (and b!2407953 res!1022676) b!2407948))

(assert (= (and b!2407948 res!1022671) b!2407955))

(assert (= (and b!2407959 (not res!1022673)) b!2407958))

(assert (= (and b!2407958 res!1022670) b!2407949))

(assert (= (and b!2407949 (not res!1022675)) b!2407954))

(assert (= (and b!2407954 (not res!1022669)) b!2407957))

(assert (= (or b!2407960 b!2407949 b!2407953) bm!147080))

(declare-fun m!2800659 () Bool)

(assert (=> b!2407948 m!2800659))

(assert (=> b!2407948 m!2800659))

(declare-fun m!2800661 () Bool)

(assert (=> b!2407948 m!2800661))

(declare-fun m!2800663 () Bool)

(assert (=> bm!147080 m!2800663))

(assert (=> b!2407954 m!2800659))

(assert (=> b!2407954 m!2800659))

(assert (=> b!2407954 m!2800661))

(declare-fun m!2800665 () Bool)

(assert (=> b!2407947 m!2800665))

(assert (=> b!2407947 m!2800665))

(declare-fun m!2800667 () Bool)

(assert (=> b!2407947 m!2800667))

(assert (=> b!2407947 m!2800659))

(assert (=> b!2407947 m!2800667))

(assert (=> b!2407947 m!2800659))

(declare-fun m!2800669 () Bool)

(assert (=> b!2407947 m!2800669))

(assert (=> d!700260 m!2800663))

(declare-fun m!2800671 () Bool)

(assert (=> d!700260 m!2800671))

(assert (=> b!2407957 m!2800665))

(assert (=> b!2407955 m!2800665))

(declare-fun m!2800673 () Bool)

(assert (=> b!2407956 m!2800673))

(assert (=> b!2407856 d!700260))

(declare-fun b!2408009 () Bool)

(assert (=> b!2408009 true))

(assert (=> b!2408009 true))

(declare-fun bs!463348 () Bool)

(declare-fun b!2408006 () Bool)

(assert (= bs!463348 (and b!2408006 b!2408009)))

(declare-fun lambda!90622 () Int)

(declare-fun lambda!90621 () Int)

(assert (=> bs!463348 (not (= lambda!90622 lambda!90621))))

(assert (=> b!2408006 true))

(assert (=> b!2408006 true))

(declare-fun b!2408003 () Bool)

(declare-fun res!1022695 () Bool)

(declare-fun e!1533287 () Bool)

(assert (=> b!2408003 (=> res!1022695 e!1533287)))

(declare-fun call!147091 () Bool)

(assert (=> b!2408003 (= res!1022695 call!147091)))

(declare-fun e!1533288 () Bool)

(assert (=> b!2408003 (= e!1533288 e!1533287)))

(declare-fun b!2408004 () Bool)

(declare-fun c!383570 () Bool)

(assert (=> b!2408004 (= c!383570 (is-ElementMatch!7066 r!13927))))

(declare-fun e!1533291 () Bool)

(declare-fun e!1533289 () Bool)

(assert (=> b!2408004 (= e!1533291 e!1533289)))

(declare-fun b!2408005 () Bool)

(assert (=> b!2408005 (= e!1533289 (= s!9460 (Cons!28273 (c!383536 r!13927) Nil!28273)))))

(declare-fun call!147090 () Bool)

(assert (=> b!2408006 (= e!1533288 call!147090)))

(declare-fun bm!147085 () Bool)

(declare-fun c!383567 () Bool)

(declare-fun Exists!1119 (Int) Bool)

(assert (=> bm!147085 (= call!147090 (Exists!1119 (ite c!383567 lambda!90621 lambda!90622)))))

(declare-fun bm!147086 () Bool)

(assert (=> bm!147086 (= call!147091 (isEmpty!16277 s!9460))))

(declare-fun b!2408007 () Bool)

(declare-fun c!383568 () Bool)

(assert (=> b!2408007 (= c!383568 (is-Union!7066 r!13927))))

(declare-fun e!1533286 () Bool)

(assert (=> b!2408007 (= e!1533289 e!1533286)))

(declare-fun b!2408008 () Bool)

(declare-fun e!1533292 () Bool)

(assert (=> b!2408008 (= e!1533286 e!1533292)))

(declare-fun res!1022696 () Bool)

(assert (=> b!2408008 (= res!1022696 (matchRSpec!915 (regOne!14645 r!13927) s!9460))))

(assert (=> b!2408008 (=> res!1022696 e!1533292)))

(declare-fun b!2408010 () Bool)

(assert (=> b!2408010 (= e!1533292 (matchRSpec!915 (regTwo!14645 r!13927) s!9460))))

(declare-fun b!2408011 () Bool)

(declare-fun e!1533290 () Bool)

(assert (=> b!2408011 (= e!1533290 e!1533291)))

(declare-fun res!1022697 () Bool)

(assert (=> b!2408011 (= res!1022697 (not (is-EmptyLang!7066 r!13927)))))

(assert (=> b!2408011 (=> (not res!1022697) (not e!1533291))))

(declare-fun b!2408012 () Bool)

(assert (=> b!2408012 (= e!1533290 call!147091)))

(declare-fun b!2408013 () Bool)

(assert (=> b!2408013 (= e!1533286 e!1533288)))

(assert (=> b!2408013 (= c!383567 (is-Star!7066 r!13927))))

(assert (=> b!2408009 (= e!1533287 call!147090)))

(declare-fun d!700262 () Bool)

(declare-fun c!383569 () Bool)

(assert (=> d!700262 (= c!383569 (is-EmptyExpr!7066 r!13927))))

(assert (=> d!700262 (= (matchRSpec!915 r!13927 s!9460) e!1533290)))

(assert (= (and d!700262 c!383569) b!2408012))

(assert (= (and d!700262 (not c!383569)) b!2408011))

(assert (= (and b!2408011 res!1022697) b!2408004))

(assert (= (and b!2408004 c!383570) b!2408005))

(assert (= (and b!2408004 (not c!383570)) b!2408007))

(assert (= (and b!2408007 c!383568) b!2408008))

(assert (= (and b!2408007 (not c!383568)) b!2408013))

(assert (= (and b!2408008 (not res!1022696)) b!2408010))

(assert (= (and b!2408013 c!383567) b!2408003))

(assert (= (and b!2408013 (not c!383567)) b!2408006))

(assert (= (and b!2408003 (not res!1022695)) b!2408009))

(assert (= (or b!2408009 b!2408006) bm!147085))

(assert (= (or b!2408012 b!2408003) bm!147086))

(declare-fun m!2800689 () Bool)

(assert (=> bm!147085 m!2800689))

(assert (=> bm!147086 m!2800663))

(declare-fun m!2800691 () Bool)

(assert (=> b!2408008 m!2800691))

(declare-fun m!2800693 () Bool)

(assert (=> b!2408010 m!2800693))

(assert (=> b!2407856 d!700262))

(declare-fun d!700270 () Bool)

(assert (=> d!700270 (= (matchR!3183 r!13927 s!9460) (matchRSpec!915 r!13927 s!9460))))

(declare-fun lt!873161 () Unit!41403)

(declare-fun choose!14235 (Regex!7066 List!28371) Unit!41403)

(assert (=> d!700270 (= lt!873161 (choose!14235 r!13927 s!9460))))

(assert (=> d!700270 (validRegex!2790 r!13927)))

(assert (=> d!700270 (= (mainMatchTheorem!915 r!13927 s!9460) lt!873161)))

(declare-fun bs!463349 () Bool)

(assert (= bs!463349 d!700270))

(assert (=> bs!463349 m!2800617))

(assert (=> bs!463349 m!2800619))

(declare-fun m!2800695 () Bool)

(assert (=> bs!463349 m!2800695))

(assert (=> bs!463349 m!2800671))

(assert (=> b!2407856 d!700270))

(declare-fun bs!463350 () Bool)

(declare-fun d!700272 () Bool)

(assert (= bs!463350 (and d!700272 start!236014)))

(declare-fun lambda!90625 () Int)

(assert (=> bs!463350 (= lambda!90625 lambda!90610)))

(declare-fun b!2408066 () Bool)

(declare-fun e!1533319 () Regex!7066)

(declare-fun e!1533323 () Regex!7066)

(assert (=> b!2408066 (= e!1533319 e!1533323)))

(declare-fun c!383586 () Bool)

(assert (=> b!2408066 (= c!383586 (is-Cons!28272 lt!873136))))

(declare-fun e!1533321 () Bool)

(assert (=> d!700272 e!1533321))

(declare-fun res!1022719 () Bool)

(assert (=> d!700272 (=> (not res!1022719) (not e!1533321))))

(declare-fun lt!873164 () Regex!7066)

(assert (=> d!700272 (= res!1022719 (validRegex!2790 lt!873164))))

(assert (=> d!700272 (= lt!873164 e!1533319)))

(declare-fun c!383588 () Bool)

(declare-fun e!1533320 () Bool)

(assert (=> d!700272 (= c!383588 e!1533320)))

(declare-fun res!1022718 () Bool)

(assert (=> d!700272 (=> (not res!1022718) (not e!1533320))))

(assert (=> d!700272 (= res!1022718 (is-Cons!28272 lt!873136))))

(assert (=> d!700272 (forall!5700 lt!873136 lambda!90625)))

(assert (=> d!700272 (= (generalisedConcat!167 lt!873136) lt!873164)))

(declare-fun b!2408067 () Bool)

(assert (=> b!2408067 (= e!1533323 (Concat!11702 (h!33673 lt!873136) (generalisedConcat!167 (t!208347 lt!873136))))))

(declare-fun b!2408068 () Bool)

(assert (=> b!2408068 (= e!1533319 (h!33673 lt!873136))))

(declare-fun b!2408069 () Bool)

(assert (=> b!2408069 (= e!1533320 (isEmpty!16275 (t!208347 lt!873136)))))

(declare-fun b!2408070 () Bool)

(assert (=> b!2408070 (= e!1533323 EmptyExpr!7066)))

(declare-fun b!2408071 () Bool)

(declare-fun e!1533324 () Bool)

(declare-fun isConcat!129 (Regex!7066) Bool)

(assert (=> b!2408071 (= e!1533324 (isConcat!129 lt!873164))))

(declare-fun b!2408072 () Bool)

(declare-fun e!1533322 () Bool)

(assert (=> b!2408072 (= e!1533322 e!1533324)))

(declare-fun c!383585 () Bool)

(assert (=> b!2408072 (= c!383585 (isEmpty!16275 (tail!3625 lt!873136)))))

(declare-fun b!2408073 () Bool)

(assert (=> b!2408073 (= e!1533324 (= lt!873164 (head!5353 lt!873136)))))

(declare-fun b!2408074 () Bool)

(declare-fun isEmptyExpr!129 (Regex!7066) Bool)

(assert (=> b!2408074 (= e!1533322 (isEmptyExpr!129 lt!873164))))

(declare-fun b!2408075 () Bool)

(assert (=> b!2408075 (= e!1533321 e!1533322)))

(declare-fun c!383587 () Bool)

(assert (=> b!2408075 (= c!383587 (isEmpty!16275 lt!873136))))

(assert (= (and d!700272 res!1022718) b!2408069))

(assert (= (and d!700272 c!383588) b!2408068))

(assert (= (and d!700272 (not c!383588)) b!2408066))

(assert (= (and b!2408066 c!383586) b!2408067))

(assert (= (and b!2408066 (not c!383586)) b!2408070))

(assert (= (and d!700272 res!1022719) b!2408075))

(assert (= (and b!2408075 c!383587) b!2408074))

(assert (= (and b!2408075 (not c!383587)) b!2408072))

(assert (= (and b!2408072 c!383585) b!2408073))

(assert (= (and b!2408072 (not c!383585)) b!2408071))

(declare-fun m!2800697 () Bool)

(assert (=> b!2408072 m!2800697))

(assert (=> b!2408072 m!2800697))

(declare-fun m!2800699 () Bool)

(assert (=> b!2408072 m!2800699))

(declare-fun m!2800701 () Bool)

(assert (=> b!2408073 m!2800701))

(declare-fun m!2800703 () Bool)

(assert (=> b!2408074 m!2800703))

(assert (=> b!2408075 m!2800627))

(declare-fun m!2800705 () Bool)

(assert (=> b!2408069 m!2800705))

(declare-fun m!2800707 () Bool)

(assert (=> b!2408067 m!2800707))

(declare-fun m!2800709 () Bool)

(assert (=> d!700272 m!2800709))

(declare-fun m!2800711 () Bool)

(assert (=> d!700272 m!2800711))

(declare-fun m!2800713 () Bool)

(assert (=> b!2408071 m!2800713))

(assert (=> b!2407850 d!700272))

(declare-fun b!2408076 () Bool)

(declare-fun e!1533327 () Bool)

(assert (=> b!2408076 (= e!1533327 (matchR!3183 (derivativeStep!1767 lt!873137 (head!5355 s!9460)) (tail!3627 s!9460)))))

(declare-fun b!2408077 () Bool)

(declare-fun res!1022722 () Bool)

(declare-fun e!1533328 () Bool)

(assert (=> b!2408077 (=> (not res!1022722) (not e!1533328))))

(assert (=> b!2408077 (= res!1022722 (isEmpty!16277 (tail!3627 s!9460)))))

(declare-fun b!2408078 () Bool)

(declare-fun e!1533331 () Bool)

(declare-fun e!1533329 () Bool)

(assert (=> b!2408078 (= e!1533331 e!1533329)))

(declare-fun res!1022726 () Bool)

(assert (=> b!2408078 (=> res!1022726 e!1533329)))

(declare-fun call!147094 () Bool)

(assert (=> b!2408078 (= res!1022726 call!147094)))

(declare-fun b!2408079 () Bool)

(declare-fun e!1533325 () Bool)

(declare-fun lt!873165 () Bool)

(assert (=> b!2408079 (= e!1533325 (not lt!873165))))

(declare-fun b!2408080 () Bool)

(declare-fun res!1022723 () Bool)

(declare-fun e!1533330 () Bool)

(assert (=> b!2408080 (=> res!1022723 e!1533330)))

(assert (=> b!2408080 (= res!1022723 (not (is-ElementMatch!7066 lt!873137)))))

(assert (=> b!2408080 (= e!1533325 e!1533330)))

(declare-fun b!2408081 () Bool)

(declare-fun e!1533326 () Bool)

(assert (=> b!2408081 (= e!1533326 e!1533325)))

(declare-fun c!383589 () Bool)

(assert (=> b!2408081 (= c!383589 (is-EmptyLang!7066 lt!873137))))

(declare-fun b!2408083 () Bool)

(declare-fun res!1022720 () Bool)

(assert (=> b!2408083 (=> res!1022720 e!1533329)))

(assert (=> b!2408083 (= res!1022720 (not (isEmpty!16277 (tail!3627 s!9460))))))

(declare-fun b!2408084 () Bool)

(assert (=> b!2408084 (= e!1533328 (= (head!5355 s!9460) (c!383536 lt!873137)))))

(declare-fun b!2408085 () Bool)

(assert (=> b!2408085 (= e!1533327 (nullable!2110 lt!873137))))

(declare-fun b!2408086 () Bool)

(assert (=> b!2408086 (= e!1533329 (not (= (head!5355 s!9460) (c!383536 lt!873137))))))

(declare-fun bm!147089 () Bool)

(assert (=> bm!147089 (= call!147094 (isEmpty!16277 s!9460))))

(declare-fun b!2408087 () Bool)

(assert (=> b!2408087 (= e!1533330 e!1533331)))

(declare-fun res!1022721 () Bool)

(assert (=> b!2408087 (=> (not res!1022721) (not e!1533331))))

(assert (=> b!2408087 (= res!1022721 (not lt!873165))))

(declare-fun b!2408082 () Bool)

(declare-fun res!1022727 () Bool)

(assert (=> b!2408082 (=> (not res!1022727) (not e!1533328))))

(assert (=> b!2408082 (= res!1022727 (not call!147094))))

(declare-fun d!700274 () Bool)

(assert (=> d!700274 e!1533326))

(declare-fun c!383590 () Bool)

(assert (=> d!700274 (= c!383590 (is-EmptyExpr!7066 lt!873137))))

(assert (=> d!700274 (= lt!873165 e!1533327)))

(declare-fun c!383591 () Bool)

(assert (=> d!700274 (= c!383591 (isEmpty!16277 s!9460))))

(assert (=> d!700274 (validRegex!2790 lt!873137)))

(assert (=> d!700274 (= (matchR!3183 lt!873137 s!9460) lt!873165)))

(declare-fun b!2408088 () Bool)

(declare-fun res!1022724 () Bool)

(assert (=> b!2408088 (=> res!1022724 e!1533330)))

(assert (=> b!2408088 (= res!1022724 e!1533328)))

(declare-fun res!1022725 () Bool)

(assert (=> b!2408088 (=> (not res!1022725) (not e!1533328))))

(assert (=> b!2408088 (= res!1022725 lt!873165)))

(declare-fun b!2408089 () Bool)

(assert (=> b!2408089 (= e!1533326 (= lt!873165 call!147094))))

(assert (= (and d!700274 c!383591) b!2408085))

(assert (= (and d!700274 (not c!383591)) b!2408076))

(assert (= (and d!700274 c!383590) b!2408089))

(assert (= (and d!700274 (not c!383590)) b!2408081))

(assert (= (and b!2408081 c!383589) b!2408079))

(assert (= (and b!2408081 (not c!383589)) b!2408080))

(assert (= (and b!2408080 (not res!1022723)) b!2408088))

(assert (= (and b!2408088 res!1022725) b!2408082))

(assert (= (and b!2408082 res!1022727) b!2408077))

(assert (= (and b!2408077 res!1022722) b!2408084))

(assert (= (and b!2408088 (not res!1022724)) b!2408087))

(assert (= (and b!2408087 res!1022721) b!2408078))

(assert (= (and b!2408078 (not res!1022726)) b!2408083))

(assert (= (and b!2408083 (not res!1022720)) b!2408086))

(assert (= (or b!2408089 b!2408078 b!2408082) bm!147089))

(assert (=> b!2408077 m!2800659))

(assert (=> b!2408077 m!2800659))

(assert (=> b!2408077 m!2800661))

(assert (=> bm!147089 m!2800663))

(assert (=> b!2408083 m!2800659))

(assert (=> b!2408083 m!2800659))

(assert (=> b!2408083 m!2800661))

(assert (=> b!2408076 m!2800665))

(assert (=> b!2408076 m!2800665))

(declare-fun m!2800715 () Bool)

(assert (=> b!2408076 m!2800715))

(assert (=> b!2408076 m!2800659))

(assert (=> b!2408076 m!2800715))

(assert (=> b!2408076 m!2800659))

(declare-fun m!2800717 () Bool)

(assert (=> b!2408076 m!2800717))

(assert (=> d!700274 m!2800663))

(declare-fun m!2800719 () Bool)

(assert (=> d!700274 m!2800719))

(assert (=> b!2408086 m!2800665))

(assert (=> b!2408084 m!2800665))

(declare-fun m!2800721 () Bool)

(assert (=> b!2408085 m!2800721))

(assert (=> b!2407855 d!700274))

(declare-fun d!700276 () Bool)

(assert (=> d!700276 (= (head!5353 l!9164) (h!33673 l!9164))))

(assert (=> b!2407855 d!700276))

(declare-fun d!700278 () Bool)

(declare-fun res!1022740 () Bool)

(declare-fun e!1533343 () Bool)

(assert (=> d!700278 (=> res!1022740 e!1533343)))

(assert (=> d!700278 (= res!1022740 (is-Nil!28272 l!9164))))

(assert (=> d!700278 (= (forall!5700 l!9164 lambda!90610) e!1533343)))

(declare-fun b!2408106 () Bool)

(declare-fun e!1533344 () Bool)

(assert (=> b!2408106 (= e!1533343 e!1533344)))

(declare-fun res!1022741 () Bool)

(assert (=> b!2408106 (=> (not res!1022741) (not e!1533344))))

(declare-fun dynLambda!12173 (Int Regex!7066) Bool)

(assert (=> b!2408106 (= res!1022741 (dynLambda!12173 lambda!90610 (h!33673 l!9164)))))

(declare-fun b!2408108 () Bool)

(assert (=> b!2408108 (= e!1533344 (forall!5700 (t!208347 l!9164) lambda!90610))))

(assert (= (and d!700278 (not res!1022740)) b!2408106))

(assert (= (and b!2408106 res!1022741) b!2408108))

(declare-fun b_lambda!74451 () Bool)

(assert (=> (not b_lambda!74451) (not b!2408106)))

(declare-fun m!2800723 () Bool)

(assert (=> b!2408106 m!2800723))

(declare-fun m!2800725 () Bool)

(assert (=> b!2408108 m!2800725))

(assert (=> start!236014 d!700278))

(declare-fun d!700280 () Bool)

(assert (=> d!700280 (= (isEmpty!16275 lt!873136) (is-Nil!28272 lt!873136))))

(assert (=> b!2407849 d!700280))

(declare-fun d!700282 () Bool)

(assert (=> d!700282 (= (tail!3625 l!9164) (t!208347 l!9164))))

(assert (=> b!2407849 d!700282))

(declare-fun d!700284 () Bool)

(assert (=> d!700284 (= (isEmpty!16275 l!9164) (is-Nil!28272 l!9164))))

(assert (=> b!2407848 d!700284))

(declare-fun b!2408110 () Bool)

(declare-fun e!1533347 () Bool)

(assert (=> b!2408110 (= e!1533347 (matchR!3183 (derivativeStep!1767 (Concat!11702 lt!873137 EmptyExpr!7066) (head!5355 (++!6995 s!9460 Nil!28273))) (tail!3627 (++!6995 s!9460 Nil!28273))))))

(declare-fun b!2408111 () Bool)

(declare-fun res!1022744 () Bool)

(declare-fun e!1533348 () Bool)

(assert (=> b!2408111 (=> (not res!1022744) (not e!1533348))))

(assert (=> b!2408111 (= res!1022744 (isEmpty!16277 (tail!3627 (++!6995 s!9460 Nil!28273))))))

(declare-fun b!2408112 () Bool)

(declare-fun e!1533351 () Bool)

(declare-fun e!1533349 () Bool)

(assert (=> b!2408112 (= e!1533351 e!1533349)))

(declare-fun res!1022748 () Bool)

(assert (=> b!2408112 (=> res!1022748 e!1533349)))

(declare-fun call!147096 () Bool)

(assert (=> b!2408112 (= res!1022748 call!147096)))

(declare-fun b!2408113 () Bool)

(declare-fun e!1533345 () Bool)

(declare-fun lt!873167 () Bool)

(assert (=> b!2408113 (= e!1533345 (not lt!873167))))

(declare-fun b!2408114 () Bool)

(declare-fun res!1022745 () Bool)

(declare-fun e!1533350 () Bool)

(assert (=> b!2408114 (=> res!1022745 e!1533350)))

(assert (=> b!2408114 (= res!1022745 (not (is-ElementMatch!7066 (Concat!11702 lt!873137 EmptyExpr!7066))))))

(assert (=> b!2408114 (= e!1533345 e!1533350)))

(declare-fun b!2408115 () Bool)

(declare-fun e!1533346 () Bool)

(assert (=> b!2408115 (= e!1533346 e!1533345)))

(declare-fun c!383595 () Bool)

(assert (=> b!2408115 (= c!383595 (is-EmptyLang!7066 (Concat!11702 lt!873137 EmptyExpr!7066)))))

(declare-fun b!2408117 () Bool)

(declare-fun res!1022742 () Bool)

(assert (=> b!2408117 (=> res!1022742 e!1533349)))

(assert (=> b!2408117 (= res!1022742 (not (isEmpty!16277 (tail!3627 (++!6995 s!9460 Nil!28273)))))))

(declare-fun b!2408118 () Bool)

(assert (=> b!2408118 (= e!1533348 (= (head!5355 (++!6995 s!9460 Nil!28273)) (c!383536 (Concat!11702 lt!873137 EmptyExpr!7066))))))

(declare-fun b!2408119 () Bool)

(assert (=> b!2408119 (= e!1533347 (nullable!2110 (Concat!11702 lt!873137 EmptyExpr!7066)))))

(declare-fun b!2408120 () Bool)

(assert (=> b!2408120 (= e!1533349 (not (= (head!5355 (++!6995 s!9460 Nil!28273)) (c!383536 (Concat!11702 lt!873137 EmptyExpr!7066)))))))

(declare-fun bm!147091 () Bool)

(assert (=> bm!147091 (= call!147096 (isEmpty!16277 (++!6995 s!9460 Nil!28273)))))

(declare-fun b!2408121 () Bool)

(assert (=> b!2408121 (= e!1533350 e!1533351)))

(declare-fun res!1022743 () Bool)

(assert (=> b!2408121 (=> (not res!1022743) (not e!1533351))))

(assert (=> b!2408121 (= res!1022743 (not lt!873167))))

(declare-fun b!2408116 () Bool)

(declare-fun res!1022749 () Bool)

(assert (=> b!2408116 (=> (not res!1022749) (not e!1533348))))

(assert (=> b!2408116 (= res!1022749 (not call!147096))))

(declare-fun d!700286 () Bool)

(assert (=> d!700286 e!1533346))

(declare-fun c!383596 () Bool)

(assert (=> d!700286 (= c!383596 (is-EmptyExpr!7066 (Concat!11702 lt!873137 EmptyExpr!7066)))))

(assert (=> d!700286 (= lt!873167 e!1533347)))

(declare-fun c!383597 () Bool)

(assert (=> d!700286 (= c!383597 (isEmpty!16277 (++!6995 s!9460 Nil!28273)))))

(assert (=> d!700286 (validRegex!2790 (Concat!11702 lt!873137 EmptyExpr!7066))))

(assert (=> d!700286 (= (matchR!3183 (Concat!11702 lt!873137 EmptyExpr!7066) (++!6995 s!9460 Nil!28273)) lt!873167)))

(declare-fun b!2408122 () Bool)

(declare-fun res!1022746 () Bool)

(assert (=> b!2408122 (=> res!1022746 e!1533350)))

(assert (=> b!2408122 (= res!1022746 e!1533348)))

(declare-fun res!1022747 () Bool)

(assert (=> b!2408122 (=> (not res!1022747) (not e!1533348))))

(assert (=> b!2408122 (= res!1022747 lt!873167)))

(declare-fun b!2408123 () Bool)

(assert (=> b!2408123 (= e!1533346 (= lt!873167 call!147096))))

(assert (= (and d!700286 c!383597) b!2408119))

(assert (= (and d!700286 (not c!383597)) b!2408110))

(assert (= (and d!700286 c!383596) b!2408123))

(assert (= (and d!700286 (not c!383596)) b!2408115))

(assert (= (and b!2408115 c!383595) b!2408113))

(assert (= (and b!2408115 (not c!383595)) b!2408114))

(assert (= (and b!2408114 (not res!1022745)) b!2408122))

(assert (= (and b!2408122 res!1022747) b!2408116))

(assert (= (and b!2408116 res!1022749) b!2408111))

(assert (= (and b!2408111 res!1022744) b!2408118))

(assert (= (and b!2408122 (not res!1022746)) b!2408121))

(assert (= (and b!2408121 res!1022743) b!2408112))

(assert (= (and b!2408112 (not res!1022748)) b!2408117))

(assert (= (and b!2408117 (not res!1022742)) b!2408120))

(assert (= (or b!2408123 b!2408112 b!2408116) bm!147091))

(assert (=> b!2408111 m!2800609))

(declare-fun m!2800731 () Bool)

(assert (=> b!2408111 m!2800731))

(assert (=> b!2408111 m!2800731))

(declare-fun m!2800735 () Bool)

(assert (=> b!2408111 m!2800735))

(assert (=> bm!147091 m!2800609))

(declare-fun m!2800737 () Bool)

(assert (=> bm!147091 m!2800737))

(assert (=> b!2408117 m!2800609))

(assert (=> b!2408117 m!2800731))

(assert (=> b!2408117 m!2800731))

(assert (=> b!2408117 m!2800735))

(assert (=> b!2408110 m!2800609))

(declare-fun m!2800741 () Bool)

(assert (=> b!2408110 m!2800741))

(assert (=> b!2408110 m!2800741))

(declare-fun m!2800743 () Bool)

(assert (=> b!2408110 m!2800743))

(assert (=> b!2408110 m!2800609))

(assert (=> b!2408110 m!2800731))

(assert (=> b!2408110 m!2800743))

(assert (=> b!2408110 m!2800731))

(declare-fun m!2800747 () Bool)

(assert (=> b!2408110 m!2800747))

(assert (=> d!700286 m!2800609))

(assert (=> d!700286 m!2800737))

(declare-fun m!2800749 () Bool)

(assert (=> d!700286 m!2800749))

(assert (=> b!2408120 m!2800609))

(assert (=> b!2408120 m!2800741))

(assert (=> b!2408118 m!2800609))

(assert (=> b!2408118 m!2800741))

(declare-fun m!2800751 () Bool)

(assert (=> b!2408119 m!2800751))

(assert (=> b!2407858 d!700286))

(declare-fun d!700288 () Bool)

(declare-fun e!1533356 () Bool)

(assert (=> d!700288 e!1533356))

(declare-fun res!1022755 () Bool)

(assert (=> d!700288 (=> (not res!1022755) (not e!1533356))))

(declare-fun lt!873170 () List!28371)

(declare-fun content!3868 (List!28371) (Set C!14290))

(assert (=> d!700288 (= res!1022755 (= (content!3868 lt!873170) (set.union (content!3868 s!9460) (content!3868 Nil!28273))))))

(declare-fun e!1533357 () List!28371)

(assert (=> d!700288 (= lt!873170 e!1533357)))

(declare-fun c!383600 () Bool)

(assert (=> d!700288 (= c!383600 (is-Nil!28273 s!9460))))

(assert (=> d!700288 (= (++!6995 s!9460 Nil!28273) lt!873170)))

(declare-fun b!2408133 () Bool)

(assert (=> b!2408133 (= e!1533357 (Cons!28273 (h!33674 s!9460) (++!6995 (t!208348 s!9460) Nil!28273)))))

(declare-fun b!2408132 () Bool)

(assert (=> b!2408132 (= e!1533357 Nil!28273)))

(declare-fun b!2408134 () Bool)

(declare-fun res!1022754 () Bool)

(assert (=> b!2408134 (=> (not res!1022754) (not e!1533356))))

(declare-fun size!22206 (List!28371) Int)

(assert (=> b!2408134 (= res!1022754 (= (size!22206 lt!873170) (+ (size!22206 s!9460) (size!22206 Nil!28273))))))

(declare-fun b!2408135 () Bool)

(assert (=> b!2408135 (= e!1533356 (or (not (= Nil!28273 Nil!28273)) (= lt!873170 s!9460)))))

(assert (= (and d!700288 c!383600) b!2408132))

(assert (= (and d!700288 (not c!383600)) b!2408133))

(assert (= (and d!700288 res!1022755) b!2408134))

(assert (= (and b!2408134 res!1022754) b!2408135))

(declare-fun m!2800759 () Bool)

(assert (=> d!700288 m!2800759))

(declare-fun m!2800761 () Bool)

(assert (=> d!700288 m!2800761))

(declare-fun m!2800763 () Bool)

(assert (=> d!700288 m!2800763))

(declare-fun m!2800765 () Bool)

(assert (=> b!2408133 m!2800765))

(declare-fun m!2800767 () Bool)

(assert (=> b!2408134 m!2800767))

(declare-fun m!2800769 () Bool)

(assert (=> b!2408134 m!2800769))

(declare-fun m!2800771 () Bool)

(assert (=> b!2408134 m!2800771))

(assert (=> b!2407858 d!700288))

(declare-fun d!700292 () Bool)

(assert (=> d!700292 (matchR!3183 (Concat!11702 lt!873137 EmptyExpr!7066) (++!6995 s!9460 Nil!28273))))

(declare-fun lt!873175 () Unit!41403)

(declare-fun choose!14236 (Regex!7066 Regex!7066 List!28371 List!28371) Unit!41403)

(assert (=> d!700292 (= lt!873175 (choose!14236 lt!873137 EmptyExpr!7066 s!9460 Nil!28273))))

(declare-fun e!1533364 () Bool)

(assert (=> d!700292 e!1533364))

(declare-fun res!1022762 () Bool)

(assert (=> d!700292 (=> (not res!1022762) (not e!1533364))))

(assert (=> d!700292 (= res!1022762 (validRegex!2790 lt!873137))))

(assert (=> d!700292 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!65 lt!873137 EmptyExpr!7066 s!9460 Nil!28273) lt!873175)))

(declare-fun b!2408146 () Bool)

(assert (=> b!2408146 (= e!1533364 (validRegex!2790 EmptyExpr!7066))))

(assert (= (and d!700292 res!1022762) b!2408146))

(assert (=> d!700292 m!2800609))

(assert (=> d!700292 m!2800609))

(assert (=> d!700292 m!2800611))

(declare-fun m!2800773 () Bool)

(assert (=> d!700292 m!2800773))

(assert (=> d!700292 m!2800719))

(declare-fun m!2800775 () Bool)

(assert (=> b!2408146 m!2800775))

(assert (=> b!2407858 d!700292))

(declare-fun bs!463351 () Bool)

(declare-fun d!700294 () Bool)

(assert (= bs!463351 (and d!700294 start!236014)))

(declare-fun lambda!90626 () Int)

(assert (=> bs!463351 (= lambda!90626 lambda!90610)))

(declare-fun bs!463352 () Bool)

(assert (= bs!463352 (and d!700294 d!700272)))

(assert (=> bs!463352 (= lambda!90626 lambda!90625)))

(declare-fun b!2408147 () Bool)

(declare-fun e!1533365 () Regex!7066)

(declare-fun e!1533369 () Regex!7066)

(assert (=> b!2408147 (= e!1533365 e!1533369)))

(declare-fun c!383604 () Bool)

(assert (=> b!2408147 (= c!383604 (is-Cons!28272 l!9164))))

(declare-fun e!1533367 () Bool)

(assert (=> d!700294 e!1533367))

(declare-fun res!1022764 () Bool)

(assert (=> d!700294 (=> (not res!1022764) (not e!1533367))))

(declare-fun lt!873176 () Regex!7066)

(assert (=> d!700294 (= res!1022764 (validRegex!2790 lt!873176))))

(assert (=> d!700294 (= lt!873176 e!1533365)))

(declare-fun c!383606 () Bool)

(declare-fun e!1533366 () Bool)

(assert (=> d!700294 (= c!383606 e!1533366)))

(declare-fun res!1022763 () Bool)

(assert (=> d!700294 (=> (not res!1022763) (not e!1533366))))

(assert (=> d!700294 (= res!1022763 (is-Cons!28272 l!9164))))

(assert (=> d!700294 (forall!5700 l!9164 lambda!90626)))

(assert (=> d!700294 (= (generalisedConcat!167 l!9164) lt!873176)))

(declare-fun b!2408148 () Bool)

(assert (=> b!2408148 (= e!1533369 (Concat!11702 (h!33673 l!9164) (generalisedConcat!167 (t!208347 l!9164))))))

(declare-fun b!2408149 () Bool)

(assert (=> b!2408149 (= e!1533365 (h!33673 l!9164))))

(declare-fun b!2408150 () Bool)

(assert (=> b!2408150 (= e!1533366 (isEmpty!16275 (t!208347 l!9164)))))

(declare-fun b!2408151 () Bool)

(assert (=> b!2408151 (= e!1533369 EmptyExpr!7066)))

(declare-fun b!2408152 () Bool)

(declare-fun e!1533370 () Bool)

(assert (=> b!2408152 (= e!1533370 (isConcat!129 lt!873176))))

(declare-fun b!2408153 () Bool)

(declare-fun e!1533368 () Bool)

(assert (=> b!2408153 (= e!1533368 e!1533370)))

(declare-fun c!383603 () Bool)

(assert (=> b!2408153 (= c!383603 (isEmpty!16275 (tail!3625 l!9164)))))

(declare-fun b!2408154 () Bool)

(assert (=> b!2408154 (= e!1533370 (= lt!873176 (head!5353 l!9164)))))

(declare-fun b!2408155 () Bool)

(assert (=> b!2408155 (= e!1533368 (isEmptyExpr!129 lt!873176))))

(declare-fun b!2408156 () Bool)

(assert (=> b!2408156 (= e!1533367 e!1533368)))

(declare-fun c!383605 () Bool)

(assert (=> b!2408156 (= c!383605 (isEmpty!16275 l!9164))))

(assert (= (and d!700294 res!1022763) b!2408150))

(assert (= (and d!700294 c!383606) b!2408149))

(assert (= (and d!700294 (not c!383606)) b!2408147))

(assert (= (and b!2408147 c!383604) b!2408148))

(assert (= (and b!2408147 (not c!383604)) b!2408151))

(assert (= (and d!700294 res!1022764) b!2408156))

(assert (= (and b!2408156 c!383605) b!2408155))

(assert (= (and b!2408156 (not c!383605)) b!2408153))

(assert (= (and b!2408153 c!383603) b!2408154))

(assert (= (and b!2408153 (not c!383603)) b!2408152))

(assert (=> b!2408153 m!2800629))

(assert (=> b!2408153 m!2800629))

(declare-fun m!2800777 () Bool)

(assert (=> b!2408153 m!2800777))

(assert (=> b!2408154 m!2800607))

(declare-fun m!2800779 () Bool)

(assert (=> b!2408155 m!2800779))

(assert (=> b!2408156 m!2800625))

(declare-fun m!2800781 () Bool)

(assert (=> b!2408150 m!2800781))

(declare-fun m!2800783 () Bool)

(assert (=> b!2408148 m!2800783))

(declare-fun m!2800785 () Bool)

(assert (=> d!700294 m!2800785))

(declare-fun m!2800787 () Bool)

(assert (=> d!700294 m!2800787))

(declare-fun m!2800789 () Bool)

(assert (=> b!2408152 m!2800789))

(assert (=> b!2407847 d!700294))

(declare-fun b!2408172 () Bool)

(declare-fun e!1533375 () Bool)

(declare-fun tp!766244 () Bool)

(declare-fun tp!766243 () Bool)

(assert (=> b!2408172 (= e!1533375 (and tp!766244 tp!766243))))

(declare-fun b!2408171 () Bool)

(assert (=> b!2408171 (= e!1533375 tp_is_empty!11545)))

(assert (=> b!2407852 (= tp!766206 e!1533375)))

(declare-fun b!2408174 () Bool)

(declare-fun tp!766245 () Bool)

(declare-fun tp!766242 () Bool)

(assert (=> b!2408174 (= e!1533375 (and tp!766245 tp!766242))))

(declare-fun b!2408173 () Bool)

(declare-fun tp!766246 () Bool)

(assert (=> b!2408173 (= e!1533375 tp!766246)))

(assert (= (and b!2407852 (is-ElementMatch!7066 (regOne!14644 r!13927))) b!2408171))

(assert (= (and b!2407852 (is-Concat!11702 (regOne!14644 r!13927))) b!2408172))

(assert (= (and b!2407852 (is-Star!7066 (regOne!14644 r!13927))) b!2408173))

(assert (= (and b!2407852 (is-Union!7066 (regOne!14644 r!13927))) b!2408174))

(declare-fun b!2408176 () Bool)

(declare-fun e!1533376 () Bool)

(declare-fun tp!766249 () Bool)

(declare-fun tp!766248 () Bool)

(assert (=> b!2408176 (= e!1533376 (and tp!766249 tp!766248))))

(declare-fun b!2408175 () Bool)

(assert (=> b!2408175 (= e!1533376 tp_is_empty!11545)))

(assert (=> b!2407852 (= tp!766205 e!1533376)))

(declare-fun b!2408178 () Bool)

(declare-fun tp!766250 () Bool)

(declare-fun tp!766247 () Bool)

(assert (=> b!2408178 (= e!1533376 (and tp!766250 tp!766247))))

(declare-fun b!2408177 () Bool)

(declare-fun tp!766251 () Bool)

(assert (=> b!2408177 (= e!1533376 tp!766251)))

(assert (= (and b!2407852 (is-ElementMatch!7066 (regTwo!14644 r!13927))) b!2408175))

(assert (= (and b!2407852 (is-Concat!11702 (regTwo!14644 r!13927))) b!2408176))

(assert (= (and b!2407852 (is-Star!7066 (regTwo!14644 r!13927))) b!2408177))

(assert (= (and b!2407852 (is-Union!7066 (regTwo!14644 r!13927))) b!2408178))

(declare-fun b!2408180 () Bool)

(declare-fun e!1533377 () Bool)

(declare-fun tp!766254 () Bool)

(declare-fun tp!766253 () Bool)

(assert (=> b!2408180 (= e!1533377 (and tp!766254 tp!766253))))

(declare-fun b!2408179 () Bool)

(assert (=> b!2408179 (= e!1533377 tp_is_empty!11545)))

(assert (=> b!2407851 (= tp!766203 e!1533377)))

(declare-fun b!2408182 () Bool)

(declare-fun tp!766255 () Bool)

(declare-fun tp!766252 () Bool)

(assert (=> b!2408182 (= e!1533377 (and tp!766255 tp!766252))))

(declare-fun b!2408181 () Bool)

(declare-fun tp!766256 () Bool)

(assert (=> b!2408181 (= e!1533377 tp!766256)))

(assert (= (and b!2407851 (is-ElementMatch!7066 (reg!7395 r!13927))) b!2408179))

(assert (= (and b!2407851 (is-Concat!11702 (reg!7395 r!13927))) b!2408180))

(assert (= (and b!2407851 (is-Star!7066 (reg!7395 r!13927))) b!2408181))

(assert (= (and b!2407851 (is-Union!7066 (reg!7395 r!13927))) b!2408182))

(declare-fun b!2408187 () Bool)

(declare-fun e!1533380 () Bool)

(declare-fun tp!766259 () Bool)

(assert (=> b!2408187 (= e!1533380 (and tp_is_empty!11545 tp!766259))))

(assert (=> b!2407854 (= tp!766204 e!1533380)))

(assert (= (and b!2407854 (is-Cons!28273 (t!208348 s!9460))) b!2408187))

(declare-fun b!2408189 () Bool)

(declare-fun e!1533381 () Bool)

(declare-fun tp!766262 () Bool)

(declare-fun tp!766261 () Bool)

(assert (=> b!2408189 (= e!1533381 (and tp!766262 tp!766261))))

(declare-fun b!2408188 () Bool)

(assert (=> b!2408188 (= e!1533381 tp_is_empty!11545)))

(assert (=> b!2407859 (= tp!766200 e!1533381)))

(declare-fun b!2408191 () Bool)

(declare-fun tp!766263 () Bool)

(declare-fun tp!766260 () Bool)

(assert (=> b!2408191 (= e!1533381 (and tp!766263 tp!766260))))

(declare-fun b!2408190 () Bool)

(declare-fun tp!766264 () Bool)

(assert (=> b!2408190 (= e!1533381 tp!766264)))

(assert (= (and b!2407859 (is-ElementMatch!7066 (regOne!14645 r!13927))) b!2408188))

(assert (= (and b!2407859 (is-Concat!11702 (regOne!14645 r!13927))) b!2408189))

(assert (= (and b!2407859 (is-Star!7066 (regOne!14645 r!13927))) b!2408190))

(assert (= (and b!2407859 (is-Union!7066 (regOne!14645 r!13927))) b!2408191))

(declare-fun b!2408193 () Bool)

(declare-fun e!1533382 () Bool)

(declare-fun tp!766267 () Bool)

(declare-fun tp!766266 () Bool)

(assert (=> b!2408193 (= e!1533382 (and tp!766267 tp!766266))))

(declare-fun b!2408192 () Bool)

(assert (=> b!2408192 (= e!1533382 tp_is_empty!11545)))

(assert (=> b!2407859 (= tp!766201 e!1533382)))

(declare-fun b!2408195 () Bool)

(declare-fun tp!766268 () Bool)

(declare-fun tp!766265 () Bool)

(assert (=> b!2408195 (= e!1533382 (and tp!766268 tp!766265))))

(declare-fun b!2408194 () Bool)

(declare-fun tp!766269 () Bool)

(assert (=> b!2408194 (= e!1533382 tp!766269)))

(assert (= (and b!2407859 (is-ElementMatch!7066 (regTwo!14645 r!13927))) b!2408192))

(assert (= (and b!2407859 (is-Concat!11702 (regTwo!14645 r!13927))) b!2408193))

(assert (= (and b!2407859 (is-Star!7066 (regTwo!14645 r!13927))) b!2408194))

(assert (= (and b!2407859 (is-Union!7066 (regTwo!14645 r!13927))) b!2408195))

(declare-fun b!2408197 () Bool)

(declare-fun e!1533383 () Bool)

(declare-fun tp!766272 () Bool)

(declare-fun tp!766271 () Bool)

(assert (=> b!2408197 (= e!1533383 (and tp!766272 tp!766271))))

(declare-fun b!2408196 () Bool)

(assert (=> b!2408196 (= e!1533383 tp_is_empty!11545)))

(assert (=> b!2407853 (= tp!766207 e!1533383)))

(declare-fun b!2408199 () Bool)

(declare-fun tp!766273 () Bool)

(declare-fun tp!766270 () Bool)

(assert (=> b!2408199 (= e!1533383 (and tp!766273 tp!766270))))

(declare-fun b!2408198 () Bool)

(declare-fun tp!766274 () Bool)

(assert (=> b!2408198 (= e!1533383 tp!766274)))

(assert (= (and b!2407853 (is-ElementMatch!7066 (h!33673 l!9164))) b!2408196))

(assert (= (and b!2407853 (is-Concat!11702 (h!33673 l!9164))) b!2408197))

(assert (= (and b!2407853 (is-Star!7066 (h!33673 l!9164))) b!2408198))

(assert (= (and b!2407853 (is-Union!7066 (h!33673 l!9164))) b!2408199))

(declare-fun b!2408204 () Bool)

(declare-fun e!1533386 () Bool)

(declare-fun tp!766279 () Bool)

(declare-fun tp!766280 () Bool)

(assert (=> b!2408204 (= e!1533386 (and tp!766279 tp!766280))))

(assert (=> b!2407853 (= tp!766202 e!1533386)))

(assert (= (and b!2407853 (is-Cons!28272 (t!208347 l!9164))) b!2408204))

(declare-fun b_lambda!74453 () Bool)

(assert (= b_lambda!74451 (or start!236014 b_lambda!74453)))

(declare-fun bs!463353 () Bool)

(declare-fun d!700298 () Bool)

(assert (= bs!463353 (and d!700298 start!236014)))

(assert (=> bs!463353 (= (dynLambda!12173 lambda!90610 (h!33673 l!9164)) (validRegex!2790 (h!33673 l!9164)))))

(declare-fun m!2800805 () Bool)

(assert (=> bs!463353 m!2800805))

(assert (=> b!2408106 d!700298))

(push 1)

(assert (not b!2408110))

(assert (not b!2408153))

(assert (not b!2408108))

(assert (not bm!147080))

(assert (not d!700292))

(assert (not b!2408174))

(assert (not b!2408067))

(assert (not bm!147089))

(assert (not b!2408182))

(assert (not b!2408086))

(assert (not b!2408118))

(assert (not b!2408008))

(assert (not b!2408075))

(assert (not b!2408120))

(assert (not d!700294))

(assert (not b!2408133))

(assert (not b!2408083))

(assert (not b!2408204))

(assert (not b!2408176))

(assert (not d!700288))

(assert (not b!2408146))

(assert (not b!2408177))

(assert (not b!2408190))

(assert (not b!2407956))

(assert (not b!2408077))

(assert (not b_lambda!74453))

(assert (not b!2408187))

(assert (not b!2408069))

(assert (not d!700286))

(assert (not b!2408010))

(assert (not b!2408197))

(assert (not b!2408150))

(assert (not b!2408199))

(assert (not b!2408152))

(assert (not b!2408085))

(assert (not b!2408155))

(assert tp_is_empty!11545)

(assert (not d!700274))

(assert (not b!2407957))

(assert (not bs!463353))

(assert (not b!2408074))

(assert (not b!2408071))

(assert (not b!2407947))

(assert (not b!2408198))

(assert (not b!2407948))

(assert (not b!2408195))

(assert (not d!700272))

(assert (not b!2408173))

(assert (not b!2408154))

(assert (not b!2408180))

(assert (not bm!147091))

(assert (not b!2407955))

(assert (not b!2408111))

(assert (not b!2408072))

(assert (not b!2408084))

(assert (not b!2408148))

(assert (not b!2408172))

(assert (not bm!147085))

(assert (not b!2408189))

(assert (not b!2408193))

(assert (not b!2408119))

(assert (not b!2408191))

(assert (not b!2407954))

(assert (not d!700260))

(assert (not b!2408076))

(assert (not b!2408181))

(assert (not b!2408156))

(assert (not d!700270))

(assert (not b!2408117))

(assert (not b!2408194))

(assert (not b!2408134))

(assert (not b!2408178))

(assert (not bm!147086))

(assert (not b!2408073))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

