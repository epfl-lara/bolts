; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!735810 () Bool)

(assert start!735810)

(declare-fun b!7646250 () Bool)

(declare-fun e!4544625 () Bool)

(declare-fun lt!2661051 () Int)

(declare-datatypes ((C!41262 0))(
  ( (C!41263 (val!31071 Int)) )
))
(declare-datatypes ((Regex!20468 0))(
  ( (ElementMatch!20468 (c!1408375 C!41262)) (Concat!29313 (regOne!41448 Regex!20468) (regTwo!41448 Regex!20468)) (EmptyExpr!20468) (Star!20468 (reg!20797 Regex!20468)) (EmptyLang!20468) (Union!20468 (regOne!41449 Regex!20468) (regTwo!41449 Regex!20468)) )
))
(declare-fun r!14126 () Regex!20468)

(declare-fun regexDepth!486 (Regex!20468) Int)

(assert (=> b!7646250 (= e!4544625 (< (+ lt!2661051 (regexDepth!486 (regTwo!41449 r!14126))) (+ lt!2661051 (regexDepth!486 r!14126))))))

(declare-datatypes ((List!73319 0))(
  ( (Nil!73195) (Cons!73195 (h!79643 C!41262) (t!388054 List!73319)) )
))
(declare-fun s!9605 () List!73319)

(declare-fun size!42592 (List!73319) Int)

(assert (=> b!7646250 (= lt!2661051 (size!42592 s!9605))))

(declare-fun b!7646251 () Bool)

(declare-fun e!4544628 () Bool)

(declare-fun tp_is_empty!51291 () Bool)

(declare-fun tp!2231911 () Bool)

(assert (=> b!7646251 (= e!4544628 (and tp_is_empty!51291 tp!2231911))))

(declare-fun b!7646252 () Bool)

(declare-fun e!4544631 () Bool)

(assert (=> b!7646252 (= e!4544631 false)))

(declare-fun res!3062650 () Bool)

(declare-fun e!4544627 () Bool)

(assert (=> start!735810 (=> (not res!3062650) (not e!4544627))))

(declare-fun validRegex!10886 (Regex!20468) Bool)

(assert (=> start!735810 (= res!3062650 (validRegex!10886 r!14126))))

(assert (=> start!735810 e!4544627))

(declare-fun e!4544624 () Bool)

(assert (=> start!735810 e!4544624))

(assert (=> start!735810 e!4544628))

(declare-fun b!7646253 () Bool)

(declare-fun e!4544629 () Bool)

(assert (=> b!7646253 (= e!4544629 false)))

(declare-fun b!7646254 () Bool)

(declare-fun res!3062649 () Bool)

(assert (=> b!7646254 (=> (not res!3062649) (not e!4544627))))

(declare-fun matchR!9969 (Regex!20468 List!73319) Bool)

(assert (=> b!7646254 (= res!3062649 (not (matchR!9969 r!14126 s!9605)))))

(declare-fun b!7646255 () Bool)

(declare-datatypes ((Unit!167944 0))(
  ( (Unit!167945) )
))
(declare-fun e!4544630 () Unit!167944)

(declare-fun Unit!167946 () Unit!167944)

(assert (=> b!7646255 (= e!4544630 Unit!167946)))

(declare-fun lt!2661058 () Unit!167944)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!115 (Regex!20468 Regex!20468 List!73319) Unit!167944)

(assert (=> b!7646255 (= lt!2661058 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!115 (regTwo!41449 r!14126) (regOne!41449 r!14126) s!9605))))

(assert (=> b!7646255 (matchR!9969 (Union!20468 (regTwo!41449 r!14126) (regOne!41449 r!14126)) s!9605)))

(declare-fun lt!2661055 () Unit!167944)

(declare-fun lemmaReversedUnionAcceptsSameString!43 (Regex!20468 Regex!20468 List!73319) Unit!167944)

(assert (=> b!7646255 (= lt!2661055 (lemmaReversedUnionAcceptsSameString!43 (regTwo!41449 r!14126) (regOne!41449 r!14126) s!9605))))

(declare-fun res!3062646 () Bool)

(assert (=> b!7646255 (= res!3062646 (matchR!9969 r!14126 s!9605))))

(assert (=> b!7646255 (=> (not res!3062646) (not e!4544629))))

(assert (=> b!7646255 e!4544629))

(declare-fun b!7646256 () Bool)

(declare-fun tp!2231914 () Bool)

(assert (=> b!7646256 (= e!4544624 tp!2231914)))

(declare-fun b!7646257 () Bool)

(declare-fun e!4544626 () Unit!167944)

(declare-fun Unit!167947 () Unit!167944)

(assert (=> b!7646257 (= e!4544626 Unit!167947)))

(declare-fun lt!2661057 () Unit!167944)

(assert (=> b!7646257 (= lt!2661057 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!115 (regOne!41449 r!14126) (regTwo!41449 r!14126) s!9605))))

(declare-fun res!3062648 () Bool)

(assert (=> b!7646257 (= res!3062648 (matchR!9969 r!14126 s!9605))))

(assert (=> b!7646257 (=> (not res!3062648) (not e!4544631))))

(assert (=> b!7646257 e!4544631))

(declare-fun b!7646258 () Bool)

(assert (=> b!7646258 (= e!4544624 tp_is_empty!51291)))

(declare-fun b!7646259 () Bool)

(declare-fun res!3062647 () Bool)

(assert (=> b!7646259 (=> (not res!3062647) (not e!4544627))))

(assert (=> b!7646259 (= res!3062647 (and (not (is-EmptyExpr!20468 r!14126)) (not (is-EmptyLang!20468 r!14126)) (not (is-ElementMatch!20468 r!14126)) (is-Union!20468 r!14126)))))

(declare-fun b!7646260 () Bool)

(declare-fun Unit!167948 () Unit!167944)

(assert (=> b!7646260 (= e!4544630 Unit!167948)))

(declare-fun b!7646261 () Bool)

(declare-fun Unit!167949 () Unit!167944)

(assert (=> b!7646261 (= e!4544626 Unit!167949)))

(declare-fun b!7646262 () Bool)

(declare-fun tp!2231913 () Bool)

(declare-fun tp!2231915 () Bool)

(assert (=> b!7646262 (= e!4544624 (and tp!2231913 tp!2231915))))

(declare-fun b!7646263 () Bool)

(declare-fun tp!2231912 () Bool)

(declare-fun tp!2231910 () Bool)

(assert (=> b!7646263 (= e!4544624 (and tp!2231912 tp!2231910))))

(declare-fun b!7646264 () Bool)

(assert (=> b!7646264 (= e!4544627 (not e!4544625))))

(declare-fun res!3062645 () Bool)

(assert (=> b!7646264 (=> res!3062645 e!4544625)))

(assert (=> b!7646264 (= res!3062645 (not (validRegex!10886 (regTwo!41449 r!14126))))))

(declare-fun lt!2661052 () Bool)

(declare-fun matchRSpec!4577 (Regex!20468 List!73319) Bool)

(assert (=> b!7646264 (= lt!2661052 (matchRSpec!4577 (regOne!41449 r!14126) s!9605))))

(declare-fun lt!2661053 () Unit!167944)

(declare-fun mainMatchTheorem!4557 (Regex!20468 List!73319) Unit!167944)

(assert (=> b!7646264 (= lt!2661053 (mainMatchTheorem!4557 (regOne!41449 r!14126) s!9605))))

(declare-fun lt!2661054 () Unit!167944)

(assert (=> b!7646264 (= lt!2661054 e!4544630)))

(declare-fun c!1408373 () Bool)

(assert (=> b!7646264 (= c!1408373 (matchR!9969 (regTwo!41449 r!14126) s!9605))))

(declare-fun lt!2661056 () Unit!167944)

(assert (=> b!7646264 (= lt!2661056 e!4544626)))

(declare-fun c!1408374 () Bool)

(assert (=> b!7646264 (= c!1408374 lt!2661052)))

(assert (=> b!7646264 (= lt!2661052 (matchR!9969 (regOne!41449 r!14126) s!9605))))

(assert (= (and start!735810 res!3062650) b!7646259))

(assert (= (and b!7646259 res!3062647) b!7646254))

(assert (= (and b!7646254 res!3062649) b!7646264))

(assert (= (and b!7646264 c!1408374) b!7646257))

(assert (= (and b!7646264 (not c!1408374)) b!7646261))

(assert (= (and b!7646257 res!3062648) b!7646252))

(assert (= (and b!7646264 c!1408373) b!7646255))

(assert (= (and b!7646264 (not c!1408373)) b!7646260))

(assert (= (and b!7646255 res!3062646) b!7646253))

(assert (= (and b!7646264 (not res!3062645)) b!7646250))

(assert (= (and start!735810 (is-ElementMatch!20468 r!14126)) b!7646258))

(assert (= (and start!735810 (is-Concat!29313 r!14126)) b!7646263))

(assert (= (and start!735810 (is-Star!20468 r!14126)) b!7646256))

(assert (= (and start!735810 (is-Union!20468 r!14126)) b!7646262))

(assert (= (and start!735810 (is-Cons!73195 s!9605)) b!7646251))

(declare-fun m!8164686 () Bool)

(assert (=> b!7646264 m!8164686))

(declare-fun m!8164688 () Bool)

(assert (=> b!7646264 m!8164688))

(declare-fun m!8164690 () Bool)

(assert (=> b!7646264 m!8164690))

(declare-fun m!8164692 () Bool)

(assert (=> b!7646264 m!8164692))

(declare-fun m!8164694 () Bool)

(assert (=> b!7646264 m!8164694))

(declare-fun m!8164696 () Bool)

(assert (=> b!7646250 m!8164696))

(declare-fun m!8164698 () Bool)

(assert (=> b!7646250 m!8164698))

(declare-fun m!8164700 () Bool)

(assert (=> b!7646250 m!8164700))

(declare-fun m!8164702 () Bool)

(assert (=> b!7646255 m!8164702))

(declare-fun m!8164704 () Bool)

(assert (=> b!7646255 m!8164704))

(declare-fun m!8164706 () Bool)

(assert (=> b!7646255 m!8164706))

(declare-fun m!8164708 () Bool)

(assert (=> b!7646255 m!8164708))

(declare-fun m!8164710 () Bool)

(assert (=> b!7646257 m!8164710))

(assert (=> b!7646257 m!8164708))

(declare-fun m!8164712 () Bool)

(assert (=> start!735810 m!8164712))

(assert (=> b!7646254 m!8164708))

(push 1)

(assert (not b!7646263))

(assert (not b!7646256))

(assert (not b!7646254))

(assert (not b!7646262))

(assert (not b!7646250))

(assert (not start!735810))

(assert (not b!7646264))

(assert (not b!7646257))

(assert tp_is_empty!51291)

(assert (not b!7646251))

(assert (not b!7646255))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7646331 () Bool)

(declare-fun res!3062685 () Bool)

(declare-fun e!4544674 () Bool)

(assert (=> b!7646331 (=> res!3062685 e!4544674)))

(assert (=> b!7646331 (= res!3062685 (not (is-Concat!29313 r!14126)))))

(declare-fun e!4544679 () Bool)

(assert (=> b!7646331 (= e!4544679 e!4544674)))

(declare-fun b!7646332 () Bool)

(declare-fun e!4544676 () Bool)

(declare-fun call!701970 () Bool)

(assert (=> b!7646332 (= e!4544676 call!701970)))

(declare-fun b!7646333 () Bool)

(assert (=> b!7646333 (= e!4544674 e!4544676)))

(declare-fun res!3062683 () Bool)

(assert (=> b!7646333 (=> (not res!3062683) (not e!4544676))))

(declare-fun call!701969 () Bool)

(assert (=> b!7646333 (= res!3062683 call!701969)))

(declare-fun bm!701964 () Bool)

(declare-fun c!1408388 () Bool)

(assert (=> bm!701964 (= call!701969 (validRegex!10886 (ite c!1408388 (regOne!41449 r!14126) (regOne!41448 r!14126))))))

(declare-fun b!7646334 () Bool)

(declare-fun e!4544677 () Bool)

(assert (=> b!7646334 (= e!4544677 e!4544679)))

(assert (=> b!7646334 (= c!1408388 (is-Union!20468 r!14126))))

(declare-fun b!7646335 () Bool)

(declare-fun e!4544678 () Bool)

(assert (=> b!7646335 (= e!4544678 e!4544677)))

(declare-fun c!1408387 () Bool)

(assert (=> b!7646335 (= c!1408387 (is-Star!20468 r!14126))))

(declare-fun b!7646336 () Bool)

(declare-fun e!4544675 () Bool)

(assert (=> b!7646336 (= e!4544675 call!701970)))

(declare-fun b!7646337 () Bool)

(declare-fun e!4544673 () Bool)

(declare-fun call!701971 () Bool)

(assert (=> b!7646337 (= e!4544673 call!701971)))

(declare-fun d!2325582 () Bool)

(declare-fun res!3062684 () Bool)

(assert (=> d!2325582 (=> res!3062684 e!4544678)))

(assert (=> d!2325582 (= res!3062684 (is-ElementMatch!20468 r!14126))))

(assert (=> d!2325582 (= (validRegex!10886 r!14126) e!4544678)))

(declare-fun bm!701965 () Bool)

(assert (=> bm!701965 (= call!701971 (validRegex!10886 (ite c!1408387 (reg!20797 r!14126) (ite c!1408388 (regTwo!41449 r!14126) (regTwo!41448 r!14126)))))))

(declare-fun bm!701966 () Bool)

(assert (=> bm!701966 (= call!701970 call!701971)))

(declare-fun b!7646338 () Bool)

(assert (=> b!7646338 (= e!4544677 e!4544673)))

(declare-fun res!3062686 () Bool)

(declare-fun nullable!8969 (Regex!20468) Bool)

(assert (=> b!7646338 (= res!3062686 (not (nullable!8969 (reg!20797 r!14126))))))

(assert (=> b!7646338 (=> (not res!3062686) (not e!4544673))))

(declare-fun b!7646339 () Bool)

(declare-fun res!3062682 () Bool)

(assert (=> b!7646339 (=> (not res!3062682) (not e!4544675))))

(assert (=> b!7646339 (= res!3062682 call!701969)))

(assert (=> b!7646339 (= e!4544679 e!4544675)))

(assert (= (and d!2325582 (not res!3062684)) b!7646335))

(assert (= (and b!7646335 c!1408387) b!7646338))

(assert (= (and b!7646335 (not c!1408387)) b!7646334))

(assert (= (and b!7646338 res!3062686) b!7646337))

(assert (= (and b!7646334 c!1408388) b!7646339))

(assert (= (and b!7646334 (not c!1408388)) b!7646331))

(assert (= (and b!7646339 res!3062682) b!7646336))

(assert (= (and b!7646331 (not res!3062685)) b!7646333))

(assert (= (and b!7646333 res!3062683) b!7646332))

(assert (= (or b!7646339 b!7646333) bm!701964))

(assert (= (or b!7646336 b!7646332) bm!701966))

(assert (= (or b!7646337 bm!701966) bm!701965))

(declare-fun m!8164748 () Bool)

(assert (=> bm!701964 m!8164748))

(declare-fun m!8164750 () Bool)

(assert (=> bm!701965 m!8164750))

(declare-fun m!8164752 () Bool)

(assert (=> b!7646338 m!8164752))

(assert (=> start!735810 d!2325582))

(declare-fun d!2325588 () Bool)

(assert (=> d!2325588 (matchR!9969 (Union!20468 (regTwo!41449 r!14126) (regOne!41449 r!14126)) s!9605)))

(declare-fun lt!2661090 () Unit!167944)

(declare-fun choose!59038 (Regex!20468 Regex!20468 List!73319) Unit!167944)

(assert (=> d!2325588 (= lt!2661090 (choose!59038 (regTwo!41449 r!14126) (regOne!41449 r!14126) s!9605))))

(declare-fun e!4544696 () Bool)

(assert (=> d!2325588 e!4544696))

(declare-fun res!3062703 () Bool)

(assert (=> d!2325588 (=> (not res!3062703) (not e!4544696))))

(assert (=> d!2325588 (= res!3062703 (validRegex!10886 (regTwo!41449 r!14126)))))

(assert (=> d!2325588 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!115 (regTwo!41449 r!14126) (regOne!41449 r!14126) s!9605) lt!2661090)))

(declare-fun b!7646368 () Bool)

(assert (=> b!7646368 (= e!4544696 (validRegex!10886 (regOne!41449 r!14126)))))

(assert (= (and d!2325588 res!3062703) b!7646368))

(assert (=> d!2325588 m!8164704))

(declare-fun m!8164754 () Bool)

(assert (=> d!2325588 m!8164754))

(assert (=> d!2325588 m!8164688))

(declare-fun m!8164756 () Bool)

(assert (=> b!7646368 m!8164756))

(assert (=> b!7646255 d!2325588))

(declare-fun b!7646431 () Bool)

(declare-fun e!4544732 () Bool)

(declare-fun derivativeStep!5939 (Regex!20468 C!41262) Regex!20468)

(declare-fun head!15739 (List!73319) C!41262)

(declare-fun tail!15279 (List!73319) List!73319)

(assert (=> b!7646431 (= e!4544732 (matchR!9969 (derivativeStep!5939 (Union!20468 (regTwo!41449 r!14126) (regOne!41449 r!14126)) (head!15739 s!9605)) (tail!15279 s!9605)))))

(declare-fun b!7646432 () Bool)

(declare-fun res!3062745 () Bool)

(declare-fun e!4544730 () Bool)

(assert (=> b!7646432 (=> (not res!3062745) (not e!4544730))))

(declare-fun isEmpty!41820 (List!73319) Bool)

(assert (=> b!7646432 (= res!3062745 (isEmpty!41820 (tail!15279 s!9605)))))

(declare-fun b!7646433 () Bool)

(declare-fun res!3062743 () Bool)

(declare-fun e!4544734 () Bool)

(assert (=> b!7646433 (=> res!3062743 e!4544734)))

(assert (=> b!7646433 (= res!3062743 e!4544730)))

(declare-fun res!3062747 () Bool)

(assert (=> b!7646433 (=> (not res!3062747) (not e!4544730))))

(declare-fun lt!2661099 () Bool)

(assert (=> b!7646433 (= res!3062747 lt!2661099)))

(declare-fun b!7646434 () Bool)

(declare-fun e!4544731 () Bool)

(declare-fun e!4544733 () Bool)

(assert (=> b!7646434 (= e!4544731 e!4544733)))

(declare-fun res!3062749 () Bool)

(assert (=> b!7646434 (=> res!3062749 e!4544733)))

(declare-fun call!701978 () Bool)

(assert (=> b!7646434 (= res!3062749 call!701978)))

(declare-fun bm!701973 () Bool)

(assert (=> bm!701973 (= call!701978 (isEmpty!41820 s!9605))))

(declare-fun b!7646435 () Bool)

(declare-fun e!4544729 () Bool)

(declare-fun e!4544735 () Bool)

(assert (=> b!7646435 (= e!4544729 e!4544735)))

(declare-fun c!1408407 () Bool)

(assert (=> b!7646435 (= c!1408407 (is-EmptyLang!20468 (Union!20468 (regTwo!41449 r!14126) (regOne!41449 r!14126))))))

(declare-fun b!7646436 () Bool)

(assert (=> b!7646436 (= e!4544732 (nullable!8969 (Union!20468 (regTwo!41449 r!14126) (regOne!41449 r!14126))))))

(declare-fun b!7646437 () Bool)

(assert (=> b!7646437 (= e!4544734 e!4544731)))

(declare-fun res!3062744 () Bool)

(assert (=> b!7646437 (=> (not res!3062744) (not e!4544731))))

(assert (=> b!7646437 (= res!3062744 (not lt!2661099))))

(declare-fun b!7646438 () Bool)

(assert (=> b!7646438 (= e!4544729 (= lt!2661099 call!701978))))

(declare-fun b!7646439 () Bool)

(declare-fun res!3062746 () Bool)

(assert (=> b!7646439 (=> (not res!3062746) (not e!4544730))))

(assert (=> b!7646439 (= res!3062746 (not call!701978))))

(declare-fun b!7646440 () Bool)

(assert (=> b!7646440 (= e!4544735 (not lt!2661099))))

(declare-fun b!7646441 () Bool)

(declare-fun res!3062742 () Bool)

(assert (=> b!7646441 (=> res!3062742 e!4544733)))

(assert (=> b!7646441 (= res!3062742 (not (isEmpty!41820 (tail!15279 s!9605))))))

(declare-fun b!7646442 () Bool)

(assert (=> b!7646442 (= e!4544730 (= (head!15739 s!9605) (c!1408375 (Union!20468 (regTwo!41449 r!14126) (regOne!41449 r!14126)))))))

(declare-fun b!7646443 () Bool)

(assert (=> b!7646443 (= e!4544733 (not (= (head!15739 s!9605) (c!1408375 (Union!20468 (regTwo!41449 r!14126) (regOne!41449 r!14126))))))))

(declare-fun b!7646444 () Bool)

(declare-fun res!3062748 () Bool)

(assert (=> b!7646444 (=> res!3062748 e!4544734)))

(assert (=> b!7646444 (= res!3062748 (not (is-ElementMatch!20468 (Union!20468 (regTwo!41449 r!14126) (regOne!41449 r!14126)))))))

(assert (=> b!7646444 (= e!4544735 e!4544734)))

(declare-fun d!2325590 () Bool)

(assert (=> d!2325590 e!4544729))

(declare-fun c!1408408 () Bool)

(assert (=> d!2325590 (= c!1408408 (is-EmptyExpr!20468 (Union!20468 (regTwo!41449 r!14126) (regOne!41449 r!14126))))))

(assert (=> d!2325590 (= lt!2661099 e!4544732)))

(declare-fun c!1408409 () Bool)

(assert (=> d!2325590 (= c!1408409 (isEmpty!41820 s!9605))))

(assert (=> d!2325590 (validRegex!10886 (Union!20468 (regTwo!41449 r!14126) (regOne!41449 r!14126)))))

(assert (=> d!2325590 (= (matchR!9969 (Union!20468 (regTwo!41449 r!14126) (regOne!41449 r!14126)) s!9605) lt!2661099)))

(assert (= (and d!2325590 c!1408409) b!7646436))

(assert (= (and d!2325590 (not c!1408409)) b!7646431))

(assert (= (and d!2325590 c!1408408) b!7646438))

(assert (= (and d!2325590 (not c!1408408)) b!7646435))

(assert (= (and b!7646435 c!1408407) b!7646440))

(assert (= (and b!7646435 (not c!1408407)) b!7646444))

(assert (= (and b!7646444 (not res!3062748)) b!7646433))

(assert (= (and b!7646433 res!3062747) b!7646439))

(assert (= (and b!7646439 res!3062746) b!7646432))

(assert (= (and b!7646432 res!3062745) b!7646442))

(assert (= (and b!7646433 (not res!3062743)) b!7646437))

(assert (= (and b!7646437 res!3062744) b!7646434))

(assert (= (and b!7646434 (not res!3062749)) b!7646441))

(assert (= (and b!7646441 (not res!3062742)) b!7646443))

(assert (= (or b!7646438 b!7646434 b!7646439) bm!701973))

(declare-fun m!8164784 () Bool)

(assert (=> b!7646443 m!8164784))

(declare-fun m!8164786 () Bool)

(assert (=> b!7646432 m!8164786))

(assert (=> b!7646432 m!8164786))

(declare-fun m!8164788 () Bool)

(assert (=> b!7646432 m!8164788))

(assert (=> b!7646442 m!8164784))

(declare-fun m!8164790 () Bool)

(assert (=> d!2325590 m!8164790))

(declare-fun m!8164792 () Bool)

(assert (=> d!2325590 m!8164792))

(assert (=> b!7646441 m!8164786))

(assert (=> b!7646441 m!8164786))

(assert (=> b!7646441 m!8164788))

(declare-fun m!8164794 () Bool)

(assert (=> b!7646436 m!8164794))

(assert (=> bm!701973 m!8164790))

(assert (=> b!7646431 m!8164784))

(assert (=> b!7646431 m!8164784))

(declare-fun m!8164796 () Bool)

(assert (=> b!7646431 m!8164796))

(assert (=> b!7646431 m!8164786))

(assert (=> b!7646431 m!8164796))

(assert (=> b!7646431 m!8164786))

(declare-fun m!8164798 () Bool)

(assert (=> b!7646431 m!8164798))

(assert (=> b!7646255 d!2325590))

(declare-fun d!2325600 () Bool)

(assert (=> d!2325600 (matchR!9969 (Union!20468 (regOne!41449 r!14126) (regTwo!41449 r!14126)) s!9605)))

(declare-fun lt!2661102 () Unit!167944)

(declare-fun choose!59039 (Regex!20468 Regex!20468 List!73319) Unit!167944)

(assert (=> d!2325600 (= lt!2661102 (choose!59039 (regTwo!41449 r!14126) (regOne!41449 r!14126) s!9605))))

(declare-fun e!4544752 () Bool)

(assert (=> d!2325600 e!4544752))

(declare-fun res!3062762 () Bool)

(assert (=> d!2325600 (=> (not res!3062762) (not e!4544752))))

(assert (=> d!2325600 (= res!3062762 (validRegex!10886 (regTwo!41449 r!14126)))))

(assert (=> d!2325600 (= (lemmaReversedUnionAcceptsSameString!43 (regTwo!41449 r!14126) (regOne!41449 r!14126) s!9605) lt!2661102)))

(declare-fun b!7646465 () Bool)

(assert (=> b!7646465 (= e!4544752 (validRegex!10886 (regOne!41449 r!14126)))))

(assert (= (and d!2325600 res!3062762) b!7646465))

(declare-fun m!8164800 () Bool)

(assert (=> d!2325600 m!8164800))

(declare-fun m!8164802 () Bool)

(assert (=> d!2325600 m!8164802))

(assert (=> d!2325600 m!8164688))

(assert (=> b!7646465 m!8164756))

(assert (=> b!7646255 d!2325600))

(declare-fun b!7646466 () Bool)

(declare-fun e!4544756 () Bool)

(assert (=> b!7646466 (= e!4544756 (matchR!9969 (derivativeStep!5939 r!14126 (head!15739 s!9605)) (tail!15279 s!9605)))))

(declare-fun b!7646467 () Bool)

(declare-fun res!3062766 () Bool)

(declare-fun e!4544754 () Bool)

(assert (=> b!7646467 (=> (not res!3062766) (not e!4544754))))

(assert (=> b!7646467 (= res!3062766 (isEmpty!41820 (tail!15279 s!9605)))))

(declare-fun b!7646468 () Bool)

(declare-fun res!3062764 () Bool)

(declare-fun e!4544758 () Bool)

(assert (=> b!7646468 (=> res!3062764 e!4544758)))

(assert (=> b!7646468 (= res!3062764 e!4544754)))

(declare-fun res!3062768 () Bool)

(assert (=> b!7646468 (=> (not res!3062768) (not e!4544754))))

(declare-fun lt!2661103 () Bool)

(assert (=> b!7646468 (= res!3062768 lt!2661103)))

(declare-fun b!7646469 () Bool)

(declare-fun e!4544755 () Bool)

(declare-fun e!4544757 () Bool)

(assert (=> b!7646469 (= e!4544755 e!4544757)))

(declare-fun res!3062770 () Bool)

(assert (=> b!7646469 (=> res!3062770 e!4544757)))

(declare-fun call!701985 () Bool)

(assert (=> b!7646469 (= res!3062770 call!701985)))

(declare-fun bm!701980 () Bool)

(assert (=> bm!701980 (= call!701985 (isEmpty!41820 s!9605))))

(declare-fun b!7646470 () Bool)

(declare-fun e!4544753 () Bool)

(declare-fun e!4544759 () Bool)

(assert (=> b!7646470 (= e!4544753 e!4544759)))

(declare-fun c!1408414 () Bool)

(assert (=> b!7646470 (= c!1408414 (is-EmptyLang!20468 r!14126))))

(declare-fun b!7646471 () Bool)

(assert (=> b!7646471 (= e!4544756 (nullable!8969 r!14126))))

(declare-fun b!7646472 () Bool)

(assert (=> b!7646472 (= e!4544758 e!4544755)))

(declare-fun res!3062765 () Bool)

(assert (=> b!7646472 (=> (not res!3062765) (not e!4544755))))

(assert (=> b!7646472 (= res!3062765 (not lt!2661103))))

(declare-fun b!7646473 () Bool)

(assert (=> b!7646473 (= e!4544753 (= lt!2661103 call!701985))))

(declare-fun b!7646474 () Bool)

(declare-fun res!3062767 () Bool)

(assert (=> b!7646474 (=> (not res!3062767) (not e!4544754))))

(assert (=> b!7646474 (= res!3062767 (not call!701985))))

(declare-fun b!7646475 () Bool)

(assert (=> b!7646475 (= e!4544759 (not lt!2661103))))

(declare-fun b!7646476 () Bool)

(declare-fun res!3062763 () Bool)

(assert (=> b!7646476 (=> res!3062763 e!4544757)))

(assert (=> b!7646476 (= res!3062763 (not (isEmpty!41820 (tail!15279 s!9605))))))

(declare-fun b!7646477 () Bool)

(assert (=> b!7646477 (= e!4544754 (= (head!15739 s!9605) (c!1408375 r!14126)))))

(declare-fun b!7646478 () Bool)

(assert (=> b!7646478 (= e!4544757 (not (= (head!15739 s!9605) (c!1408375 r!14126))))))

(declare-fun b!7646479 () Bool)

(declare-fun res!3062769 () Bool)

(assert (=> b!7646479 (=> res!3062769 e!4544758)))

(assert (=> b!7646479 (= res!3062769 (not (is-ElementMatch!20468 r!14126)))))

(assert (=> b!7646479 (= e!4544759 e!4544758)))

(declare-fun d!2325602 () Bool)

(assert (=> d!2325602 e!4544753))

(declare-fun c!1408415 () Bool)

(assert (=> d!2325602 (= c!1408415 (is-EmptyExpr!20468 r!14126))))

(assert (=> d!2325602 (= lt!2661103 e!4544756)))

(declare-fun c!1408416 () Bool)

(assert (=> d!2325602 (= c!1408416 (isEmpty!41820 s!9605))))

(assert (=> d!2325602 (validRegex!10886 r!14126)))

(assert (=> d!2325602 (= (matchR!9969 r!14126 s!9605) lt!2661103)))

(assert (= (and d!2325602 c!1408416) b!7646471))

(assert (= (and d!2325602 (not c!1408416)) b!7646466))

(assert (= (and d!2325602 c!1408415) b!7646473))

(assert (= (and d!2325602 (not c!1408415)) b!7646470))

(assert (= (and b!7646470 c!1408414) b!7646475))

(assert (= (and b!7646470 (not c!1408414)) b!7646479))

(assert (= (and b!7646479 (not res!3062769)) b!7646468))

(assert (= (and b!7646468 res!3062768) b!7646474))

(assert (= (and b!7646474 res!3062767) b!7646467))

(assert (= (and b!7646467 res!3062766) b!7646477))

(assert (= (and b!7646468 (not res!3062764)) b!7646472))

(assert (= (and b!7646472 res!3062765) b!7646469))

(assert (= (and b!7646469 (not res!3062770)) b!7646476))

(assert (= (and b!7646476 (not res!3062763)) b!7646478))

(assert (= (or b!7646473 b!7646469 b!7646474) bm!701980))

(assert (=> b!7646478 m!8164784))

(assert (=> b!7646467 m!8164786))

(assert (=> b!7646467 m!8164786))

(assert (=> b!7646467 m!8164788))

(assert (=> b!7646477 m!8164784))

(assert (=> d!2325602 m!8164790))

(assert (=> d!2325602 m!8164712))

(assert (=> b!7646476 m!8164786))

(assert (=> b!7646476 m!8164786))

(assert (=> b!7646476 m!8164788))

(declare-fun m!8164804 () Bool)

(assert (=> b!7646471 m!8164804))

(assert (=> bm!701980 m!8164790))

(assert (=> b!7646466 m!8164784))

(assert (=> b!7646466 m!8164784))

(declare-fun m!8164806 () Bool)

(assert (=> b!7646466 m!8164806))

(assert (=> b!7646466 m!8164786))

(assert (=> b!7646466 m!8164806))

(assert (=> b!7646466 m!8164786))

(declare-fun m!8164808 () Bool)

(assert (=> b!7646466 m!8164808))

(assert (=> b!7646255 d!2325602))

(assert (=> b!7646254 d!2325602))

(declare-fun bm!701999 () Bool)

(declare-fun call!702010 () Int)

(declare-fun c!1408446 () Bool)

(declare-fun c!1408445 () Bool)

(assert (=> bm!701999 (= call!702010 (regexDepth!486 (ite c!1408445 (reg!20797 (regTwo!41449 r!14126)) (ite c!1408446 (regOne!41449 (regTwo!41449 r!14126)) (regTwo!41448 (regTwo!41449 r!14126))))))))

(declare-fun b!7646559 () Bool)

(assert (=> b!7646559 (= c!1408446 (is-Union!20468 (regTwo!41449 r!14126)))))

(declare-fun e!4544816 () Int)

(declare-fun e!4544815 () Int)

(assert (=> b!7646559 (= e!4544816 e!4544815)))

(declare-fun bm!702000 () Bool)

(declare-fun call!702009 () Int)

(declare-fun c!1408448 () Bool)

(assert (=> bm!702000 (= call!702009 (regexDepth!486 (ite c!1408448 (regTwo!41449 (regTwo!41449 r!14126)) (regTwo!41448 (regTwo!41449 r!14126)))))))

(declare-fun b!7646560 () Bool)

(declare-fun e!4544810 () Int)

(assert (=> b!7646560 (= e!4544810 1)))

(declare-fun b!7646561 () Bool)

(declare-fun res!3062798 () Bool)

(declare-fun e!4544809 () Bool)

(assert (=> b!7646561 (=> (not res!3062798) (not e!4544809))))

(declare-fun lt!2661107 () Int)

(declare-fun call!702004 () Int)

(assert (=> b!7646561 (= res!3062798 (> lt!2661107 call!702004))))

(declare-fun e!4544814 () Bool)

(assert (=> b!7646561 (= e!4544814 e!4544809)))

(declare-fun b!7646562 () Bool)

(declare-fun call!702006 () Int)

(assert (=> b!7646562 (= e!4544815 (+ 1 call!702006))))

(declare-fun bm!702001 () Bool)

(declare-fun call!702008 () Int)

(assert (=> bm!702001 (= call!702004 call!702008)))

(declare-fun b!7646563 () Bool)

(declare-fun e!4544817 () Bool)

(declare-fun e!4544811 () Bool)

(assert (=> b!7646563 (= e!4544817 e!4544811)))

(assert (=> b!7646563 (= c!1408448 (is-Union!20468 (regTwo!41449 r!14126)))))

(declare-fun bm!702002 () Bool)

(declare-fun call!702005 () Int)

(assert (=> bm!702002 (= call!702005 (regexDepth!486 (ite c!1408446 (regTwo!41449 (regTwo!41449 r!14126)) (regOne!41448 (regTwo!41449 r!14126)))))))

(declare-fun bm!702003 () Bool)

(declare-fun call!702007 () Int)

(assert (=> bm!702003 (= call!702007 call!702010)))

(declare-fun d!2325604 () Bool)

(assert (=> d!2325604 e!4544817))

(declare-fun res!3062797 () Bool)

(assert (=> d!2325604 (=> (not res!3062797) (not e!4544817))))

(assert (=> d!2325604 (= res!3062797 (> lt!2661107 0))))

(assert (=> d!2325604 (= lt!2661107 e!4544810)))

(declare-fun c!1408449 () Bool)

(assert (=> d!2325604 (= c!1408449 (is-ElementMatch!20468 (regTwo!41449 r!14126)))))

(assert (=> d!2325604 (= (regexDepth!486 (regTwo!41449 r!14126)) lt!2661107)))

(declare-fun b!7646564 () Bool)

(declare-fun e!4544808 () Int)

(assert (=> b!7646564 (= e!4544815 e!4544808)))

(declare-fun c!1408450 () Bool)

(assert (=> b!7646564 (= c!1408450 (is-Concat!29313 (regTwo!41449 r!14126)))))

(declare-fun b!7646565 () Bool)

(declare-fun e!4544812 () Bool)

(assert (=> b!7646565 (= e!4544812 (> lt!2661107 call!702004))))

(declare-fun b!7646566 () Bool)

(assert (=> b!7646566 (= e!4544808 (+ 1 call!702006))))

(declare-fun b!7646567 () Bool)

(assert (=> b!7646567 (= e!4544811 e!4544814)))

(declare-fun c!1408444 () Bool)

(assert (=> b!7646567 (= c!1408444 (is-Concat!29313 (regTwo!41449 r!14126)))))

(declare-fun b!7646568 () Bool)

(assert (=> b!7646568 (= e!4544810 e!4544816)))

(assert (=> b!7646568 (= c!1408445 (is-Star!20468 (regTwo!41449 r!14126)))))

(declare-fun b!7646569 () Bool)

(assert (=> b!7646569 (= e!4544809 (> lt!2661107 call!702009))))

(declare-fun b!7646570 () Bool)

(declare-fun c!1408447 () Bool)

(assert (=> b!7646570 (= c!1408447 (is-Star!20468 (regTwo!41449 r!14126)))))

(assert (=> b!7646570 (= e!4544814 e!4544812)))

(declare-fun b!7646571 () Bool)

(assert (=> b!7646571 (= e!4544808 1)))

(declare-fun b!7646572 () Bool)

(assert (=> b!7646572 (= e!4544812 (= lt!2661107 1))))

(declare-fun b!7646573 () Bool)

(declare-fun e!4544813 () Bool)

(assert (=> b!7646573 (= e!4544811 e!4544813)))

(declare-fun res!3062796 () Bool)

(assert (=> b!7646573 (= res!3062796 (> lt!2661107 call!702008))))

(assert (=> b!7646573 (=> (not res!3062796) (not e!4544813))))

(declare-fun b!7646574 () Bool)

(assert (=> b!7646574 (= e!4544813 (> lt!2661107 call!702009))))

(declare-fun b!7646575 () Bool)

(assert (=> b!7646575 (= e!4544816 (+ 1 call!702010))))

(declare-fun bm!702004 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!702004 (= call!702006 (maxBigInt!0 (ite c!1408446 call!702007 call!702005) (ite c!1408446 call!702005 call!702007)))))

(declare-fun bm!702005 () Bool)

(assert (=> bm!702005 (= call!702008 (regexDepth!486 (ite c!1408448 (regOne!41449 (regTwo!41449 r!14126)) (ite c!1408444 (regOne!41448 (regTwo!41449 r!14126)) (reg!20797 (regTwo!41449 r!14126))))))))

(assert (= (and d!2325604 c!1408449) b!7646560))

(assert (= (and d!2325604 (not c!1408449)) b!7646568))

(assert (= (and b!7646568 c!1408445) b!7646575))

(assert (= (and b!7646568 (not c!1408445)) b!7646559))

(assert (= (and b!7646559 c!1408446) b!7646562))

(assert (= (and b!7646559 (not c!1408446)) b!7646564))

(assert (= (and b!7646564 c!1408450) b!7646566))

(assert (= (and b!7646564 (not c!1408450)) b!7646571))

(assert (= (or b!7646562 b!7646566) bm!702003))

(assert (= (or b!7646562 b!7646566) bm!702002))

(assert (= (or b!7646562 b!7646566) bm!702004))

(assert (= (or b!7646575 bm!702003) bm!701999))

(assert (= (and d!2325604 res!3062797) b!7646563))

(assert (= (and b!7646563 c!1408448) b!7646573))

(assert (= (and b!7646563 (not c!1408448)) b!7646567))

(assert (= (and b!7646573 res!3062796) b!7646574))

(assert (= (and b!7646567 c!1408444) b!7646561))

(assert (= (and b!7646567 (not c!1408444)) b!7646570))

(assert (= (and b!7646561 res!3062798) b!7646569))

(assert (= (and b!7646570 c!1408447) b!7646565))

(assert (= (and b!7646570 (not c!1408447)) b!7646572))

(assert (= (or b!7646561 b!7646565) bm!702001))

(assert (= (or b!7646573 bm!702001) bm!702005))

(assert (= (or b!7646574 b!7646569) bm!702000))

(declare-fun m!8164822 () Bool)

(assert (=> bm!702002 m!8164822))

(declare-fun m!8164824 () Bool)

(assert (=> bm!701999 m!8164824))

(declare-fun m!8164826 () Bool)

(assert (=> bm!702004 m!8164826))

(declare-fun m!8164828 () Bool)

(assert (=> bm!702000 m!8164828))

(declare-fun m!8164830 () Bool)

(assert (=> bm!702005 m!8164830))

(assert (=> b!7646250 d!2325604))

(declare-fun c!1408453 () Bool)

(declare-fun c!1408452 () Bool)

(declare-fun bm!702006 () Bool)

(declare-fun call!702017 () Int)

(assert (=> bm!702006 (= call!702017 (regexDepth!486 (ite c!1408452 (reg!20797 r!14126) (ite c!1408453 (regOne!41449 r!14126) (regTwo!41448 r!14126)))))))

(declare-fun b!7646576 () Bool)

(assert (=> b!7646576 (= c!1408453 (is-Union!20468 r!14126))))

(declare-fun e!4544826 () Int)

(declare-fun e!4544825 () Int)

(assert (=> b!7646576 (= e!4544826 e!4544825)))

(declare-fun bm!702007 () Bool)

(declare-fun call!702016 () Int)

(declare-fun c!1408455 () Bool)

(assert (=> bm!702007 (= call!702016 (regexDepth!486 (ite c!1408455 (regTwo!41449 r!14126) (regTwo!41448 r!14126))))))

(declare-fun b!7646577 () Bool)

(declare-fun e!4544820 () Int)

(assert (=> b!7646577 (= e!4544820 1)))

(declare-fun b!7646578 () Bool)

(declare-fun res!3062801 () Bool)

(declare-fun e!4544819 () Bool)

(assert (=> b!7646578 (=> (not res!3062801) (not e!4544819))))

(declare-fun lt!2661108 () Int)

(declare-fun call!702011 () Int)

(assert (=> b!7646578 (= res!3062801 (> lt!2661108 call!702011))))

(declare-fun e!4544824 () Bool)

(assert (=> b!7646578 (= e!4544824 e!4544819)))

(declare-fun b!7646579 () Bool)

(declare-fun call!702013 () Int)

(assert (=> b!7646579 (= e!4544825 (+ 1 call!702013))))

(declare-fun bm!702008 () Bool)

(declare-fun call!702015 () Int)

(assert (=> bm!702008 (= call!702011 call!702015)))

(declare-fun b!7646580 () Bool)

(declare-fun e!4544827 () Bool)

(declare-fun e!4544821 () Bool)

(assert (=> b!7646580 (= e!4544827 e!4544821)))

(assert (=> b!7646580 (= c!1408455 (is-Union!20468 r!14126))))

(declare-fun bm!702009 () Bool)

(declare-fun call!702012 () Int)

(assert (=> bm!702009 (= call!702012 (regexDepth!486 (ite c!1408453 (regTwo!41449 r!14126) (regOne!41448 r!14126))))))

(declare-fun bm!702010 () Bool)

(declare-fun call!702014 () Int)

(assert (=> bm!702010 (= call!702014 call!702017)))

(declare-fun d!2325610 () Bool)

(assert (=> d!2325610 e!4544827))

(declare-fun res!3062800 () Bool)

(assert (=> d!2325610 (=> (not res!3062800) (not e!4544827))))

(assert (=> d!2325610 (= res!3062800 (> lt!2661108 0))))

(assert (=> d!2325610 (= lt!2661108 e!4544820)))

(declare-fun c!1408456 () Bool)

(assert (=> d!2325610 (= c!1408456 (is-ElementMatch!20468 r!14126))))

(assert (=> d!2325610 (= (regexDepth!486 r!14126) lt!2661108)))

(declare-fun b!7646581 () Bool)

(declare-fun e!4544818 () Int)

(assert (=> b!7646581 (= e!4544825 e!4544818)))

(declare-fun c!1408457 () Bool)

(assert (=> b!7646581 (= c!1408457 (is-Concat!29313 r!14126))))

(declare-fun b!7646582 () Bool)

(declare-fun e!4544822 () Bool)

(assert (=> b!7646582 (= e!4544822 (> lt!2661108 call!702011))))

(declare-fun b!7646583 () Bool)

(assert (=> b!7646583 (= e!4544818 (+ 1 call!702013))))

(declare-fun b!7646584 () Bool)

(assert (=> b!7646584 (= e!4544821 e!4544824)))

(declare-fun c!1408451 () Bool)

(assert (=> b!7646584 (= c!1408451 (is-Concat!29313 r!14126))))

(declare-fun b!7646585 () Bool)

(assert (=> b!7646585 (= e!4544820 e!4544826)))

(assert (=> b!7646585 (= c!1408452 (is-Star!20468 r!14126))))

(declare-fun b!7646586 () Bool)

(assert (=> b!7646586 (= e!4544819 (> lt!2661108 call!702016))))

(declare-fun b!7646587 () Bool)

(declare-fun c!1408454 () Bool)

(assert (=> b!7646587 (= c!1408454 (is-Star!20468 r!14126))))

(assert (=> b!7646587 (= e!4544824 e!4544822)))

(declare-fun b!7646588 () Bool)

(assert (=> b!7646588 (= e!4544818 1)))

(declare-fun b!7646589 () Bool)

(assert (=> b!7646589 (= e!4544822 (= lt!2661108 1))))

(declare-fun b!7646590 () Bool)

(declare-fun e!4544823 () Bool)

(assert (=> b!7646590 (= e!4544821 e!4544823)))

(declare-fun res!3062799 () Bool)

(assert (=> b!7646590 (= res!3062799 (> lt!2661108 call!702015))))

(assert (=> b!7646590 (=> (not res!3062799) (not e!4544823))))

(declare-fun b!7646591 () Bool)

(assert (=> b!7646591 (= e!4544823 (> lt!2661108 call!702016))))

(declare-fun b!7646592 () Bool)

(assert (=> b!7646592 (= e!4544826 (+ 1 call!702017))))

(declare-fun bm!702011 () Bool)

(assert (=> bm!702011 (= call!702013 (maxBigInt!0 (ite c!1408453 call!702014 call!702012) (ite c!1408453 call!702012 call!702014)))))

(declare-fun bm!702012 () Bool)

(assert (=> bm!702012 (= call!702015 (regexDepth!486 (ite c!1408455 (regOne!41449 r!14126) (ite c!1408451 (regOne!41448 r!14126) (reg!20797 r!14126)))))))

(assert (= (and d!2325610 c!1408456) b!7646577))

(assert (= (and d!2325610 (not c!1408456)) b!7646585))

(assert (= (and b!7646585 c!1408452) b!7646592))

(assert (= (and b!7646585 (not c!1408452)) b!7646576))

(assert (= (and b!7646576 c!1408453) b!7646579))

(assert (= (and b!7646576 (not c!1408453)) b!7646581))

(assert (= (and b!7646581 c!1408457) b!7646583))

(assert (= (and b!7646581 (not c!1408457)) b!7646588))

(assert (= (or b!7646579 b!7646583) bm!702010))

(assert (= (or b!7646579 b!7646583) bm!702009))

(assert (= (or b!7646579 b!7646583) bm!702011))

(assert (= (or b!7646592 bm!702010) bm!702006))

(assert (= (and d!2325610 res!3062800) b!7646580))

(assert (= (and b!7646580 c!1408455) b!7646590))

(assert (= (and b!7646580 (not c!1408455)) b!7646584))

(assert (= (and b!7646590 res!3062799) b!7646591))

(assert (= (and b!7646584 c!1408451) b!7646578))

(assert (= (and b!7646584 (not c!1408451)) b!7646587))

(assert (= (and b!7646578 res!3062801) b!7646586))

(assert (= (and b!7646587 c!1408454) b!7646582))

(assert (= (and b!7646587 (not c!1408454)) b!7646589))

(assert (= (or b!7646578 b!7646582) bm!702008))

(assert (= (or b!7646590 bm!702008) bm!702012))

(assert (= (or b!7646591 b!7646586) bm!702007))

(declare-fun m!8164832 () Bool)

(assert (=> bm!702009 m!8164832))

(declare-fun m!8164834 () Bool)

(assert (=> bm!702006 m!8164834))

(declare-fun m!8164836 () Bool)

(assert (=> bm!702011 m!8164836))

(declare-fun m!8164838 () Bool)

(assert (=> bm!702007 m!8164838))

(declare-fun m!8164840 () Bool)

(assert (=> bm!702012 m!8164840))

(assert (=> b!7646250 d!2325610))

(declare-fun d!2325612 () Bool)

(declare-fun lt!2661111 () Int)

(assert (=> d!2325612 (>= lt!2661111 0)))

(declare-fun e!4544830 () Int)

(assert (=> d!2325612 (= lt!2661111 e!4544830)))

(declare-fun c!1408460 () Bool)

(assert (=> d!2325612 (= c!1408460 (is-Nil!73195 s!9605))))

(assert (=> d!2325612 (= (size!42592 s!9605) lt!2661111)))

(declare-fun b!7646597 () Bool)

(assert (=> b!7646597 (= e!4544830 0)))

(declare-fun b!7646598 () Bool)

(assert (=> b!7646598 (= e!4544830 (+ 1 (size!42592 (t!388054 s!9605))))))

(assert (= (and d!2325612 c!1408460) b!7646597))

(assert (= (and d!2325612 (not c!1408460)) b!7646598))

(declare-fun m!8164842 () Bool)

(assert (=> b!7646598 m!8164842))

(assert (=> b!7646250 d!2325612))

(declare-fun d!2325614 () Bool)

(assert (=> d!2325614 (matchR!9969 (Union!20468 (regOne!41449 r!14126) (regTwo!41449 r!14126)) s!9605)))

(declare-fun lt!2661112 () Unit!167944)

(assert (=> d!2325614 (= lt!2661112 (choose!59038 (regOne!41449 r!14126) (regTwo!41449 r!14126) s!9605))))

(declare-fun e!4544831 () Bool)

(assert (=> d!2325614 e!4544831))

(declare-fun res!3062802 () Bool)

(assert (=> d!2325614 (=> (not res!3062802) (not e!4544831))))

(assert (=> d!2325614 (= res!3062802 (validRegex!10886 (regOne!41449 r!14126)))))

(assert (=> d!2325614 (= (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!115 (regOne!41449 r!14126) (regTwo!41449 r!14126) s!9605) lt!2661112)))

(declare-fun b!7646599 () Bool)

(assert (=> b!7646599 (= e!4544831 (validRegex!10886 (regTwo!41449 r!14126)))))

(assert (= (and d!2325614 res!3062802) b!7646599))

(assert (=> d!2325614 m!8164800))

(declare-fun m!8164844 () Bool)

(assert (=> d!2325614 m!8164844))

(assert (=> d!2325614 m!8164756))

(assert (=> b!7646599 m!8164688))

(assert (=> b!7646257 d!2325614))

(assert (=> b!7646257 d!2325602))

(declare-fun b!7646600 () Bool)

(declare-fun e!4544835 () Bool)

(assert (=> b!7646600 (= e!4544835 (matchR!9969 (derivativeStep!5939 (regTwo!41449 r!14126) (head!15739 s!9605)) (tail!15279 s!9605)))))

(declare-fun b!7646601 () Bool)

(declare-fun res!3062806 () Bool)

(declare-fun e!4544833 () Bool)

(assert (=> b!7646601 (=> (not res!3062806) (not e!4544833))))

(assert (=> b!7646601 (= res!3062806 (isEmpty!41820 (tail!15279 s!9605)))))

(declare-fun b!7646602 () Bool)

(declare-fun res!3062804 () Bool)

(declare-fun e!4544837 () Bool)

(assert (=> b!7646602 (=> res!3062804 e!4544837)))

(assert (=> b!7646602 (= res!3062804 e!4544833)))

(declare-fun res!3062808 () Bool)

(assert (=> b!7646602 (=> (not res!3062808) (not e!4544833))))

(declare-fun lt!2661113 () Bool)

(assert (=> b!7646602 (= res!3062808 lt!2661113)))

(declare-fun b!7646603 () Bool)

(declare-fun e!4544834 () Bool)

(declare-fun e!4544836 () Bool)

(assert (=> b!7646603 (= e!4544834 e!4544836)))

(declare-fun res!3062810 () Bool)

(assert (=> b!7646603 (=> res!3062810 e!4544836)))

(declare-fun call!702018 () Bool)

(assert (=> b!7646603 (= res!3062810 call!702018)))

(declare-fun bm!702013 () Bool)

(assert (=> bm!702013 (= call!702018 (isEmpty!41820 s!9605))))

(declare-fun b!7646604 () Bool)

(declare-fun e!4544832 () Bool)

(declare-fun e!4544838 () Bool)

(assert (=> b!7646604 (= e!4544832 e!4544838)))

(declare-fun c!1408461 () Bool)

(assert (=> b!7646604 (= c!1408461 (is-EmptyLang!20468 (regTwo!41449 r!14126)))))

(declare-fun b!7646605 () Bool)

(assert (=> b!7646605 (= e!4544835 (nullable!8969 (regTwo!41449 r!14126)))))

(declare-fun b!7646606 () Bool)

(assert (=> b!7646606 (= e!4544837 e!4544834)))

(declare-fun res!3062805 () Bool)

(assert (=> b!7646606 (=> (not res!3062805) (not e!4544834))))

(assert (=> b!7646606 (= res!3062805 (not lt!2661113))))

(declare-fun b!7646607 () Bool)

(assert (=> b!7646607 (= e!4544832 (= lt!2661113 call!702018))))

(declare-fun b!7646608 () Bool)

(declare-fun res!3062807 () Bool)

(assert (=> b!7646608 (=> (not res!3062807) (not e!4544833))))

(assert (=> b!7646608 (= res!3062807 (not call!702018))))

(declare-fun b!7646609 () Bool)

(assert (=> b!7646609 (= e!4544838 (not lt!2661113))))

(declare-fun b!7646610 () Bool)

(declare-fun res!3062803 () Bool)

(assert (=> b!7646610 (=> res!3062803 e!4544836)))

(assert (=> b!7646610 (= res!3062803 (not (isEmpty!41820 (tail!15279 s!9605))))))

(declare-fun b!7646611 () Bool)

(assert (=> b!7646611 (= e!4544833 (= (head!15739 s!9605) (c!1408375 (regTwo!41449 r!14126))))))

(declare-fun b!7646612 () Bool)

(assert (=> b!7646612 (= e!4544836 (not (= (head!15739 s!9605) (c!1408375 (regTwo!41449 r!14126)))))))

(declare-fun b!7646613 () Bool)

(declare-fun res!3062809 () Bool)

(assert (=> b!7646613 (=> res!3062809 e!4544837)))

(assert (=> b!7646613 (= res!3062809 (not (is-ElementMatch!20468 (regTwo!41449 r!14126))))))

(assert (=> b!7646613 (= e!4544838 e!4544837)))

(declare-fun d!2325616 () Bool)

(assert (=> d!2325616 e!4544832))

(declare-fun c!1408462 () Bool)

(assert (=> d!2325616 (= c!1408462 (is-EmptyExpr!20468 (regTwo!41449 r!14126)))))

(assert (=> d!2325616 (= lt!2661113 e!4544835)))

(declare-fun c!1408463 () Bool)

(assert (=> d!2325616 (= c!1408463 (isEmpty!41820 s!9605))))

(assert (=> d!2325616 (validRegex!10886 (regTwo!41449 r!14126))))

(assert (=> d!2325616 (= (matchR!9969 (regTwo!41449 r!14126) s!9605) lt!2661113)))

(assert (= (and d!2325616 c!1408463) b!7646605))

(assert (= (and d!2325616 (not c!1408463)) b!7646600))

(assert (= (and d!2325616 c!1408462) b!7646607))

(assert (= (and d!2325616 (not c!1408462)) b!7646604))

(assert (= (and b!7646604 c!1408461) b!7646609))

(assert (= (and b!7646604 (not c!1408461)) b!7646613))

(assert (= (and b!7646613 (not res!3062809)) b!7646602))

(assert (= (and b!7646602 res!3062808) b!7646608))

(assert (= (and b!7646608 res!3062807) b!7646601))

(assert (= (and b!7646601 res!3062806) b!7646611))

(assert (= (and b!7646602 (not res!3062804)) b!7646606))

(assert (= (and b!7646606 res!3062805) b!7646603))

(assert (= (and b!7646603 (not res!3062810)) b!7646610))

(assert (= (and b!7646610 (not res!3062803)) b!7646612))

(assert (= (or b!7646607 b!7646603 b!7646608) bm!702013))

(assert (=> b!7646612 m!8164784))

(assert (=> b!7646601 m!8164786))

(assert (=> b!7646601 m!8164786))

(assert (=> b!7646601 m!8164788))

(assert (=> b!7646611 m!8164784))

(assert (=> d!2325616 m!8164790))

(assert (=> d!2325616 m!8164688))

(assert (=> b!7646610 m!8164786))

(assert (=> b!7646610 m!8164786))

(assert (=> b!7646610 m!8164788))

(declare-fun m!8164846 () Bool)

(assert (=> b!7646605 m!8164846))

(assert (=> bm!702013 m!8164790))

(assert (=> b!7646600 m!8164784))

(assert (=> b!7646600 m!8164784))

(declare-fun m!8164848 () Bool)

(assert (=> b!7646600 m!8164848))

(assert (=> b!7646600 m!8164786))

(assert (=> b!7646600 m!8164848))

(assert (=> b!7646600 m!8164786))

(declare-fun m!8164850 () Bool)

(assert (=> b!7646600 m!8164850))

(assert (=> b!7646264 d!2325616))

(declare-fun b!7646650 () Bool)

(assert (=> b!7646650 true))

(assert (=> b!7646650 true))

(declare-fun bs!1944803 () Bool)

(declare-fun b!7646656 () Bool)

(assert (= bs!1944803 (and b!7646656 b!7646650)))

(declare-fun lambda!469709 () Int)

(declare-fun lambda!469708 () Int)

(assert (=> bs!1944803 (not (= lambda!469709 lambda!469708))))

(assert (=> b!7646656 true))

(assert (=> b!7646656 true))

(declare-fun d!2325618 () Bool)

(declare-fun c!1408473 () Bool)

(assert (=> d!2325618 (= c!1408473 (is-EmptyExpr!20468 (regOne!41449 r!14126)))))

(declare-fun e!4544859 () Bool)

(assert (=> d!2325618 (= (matchRSpec!4577 (regOne!41449 r!14126) s!9605) e!4544859)))

(declare-fun b!7646646 () Bool)

(declare-fun e!4544863 () Bool)

(declare-fun e!4544861 () Bool)

(assert (=> b!7646646 (= e!4544863 e!4544861)))

(declare-fun res!3062829 () Bool)

(assert (=> b!7646646 (= res!3062829 (matchRSpec!4577 (regOne!41449 (regOne!41449 r!14126)) s!9605))))

(assert (=> b!7646646 (=> res!3062829 e!4544861)))

(declare-fun c!1408472 () Bool)

(declare-fun call!702024 () Bool)

(declare-fun bm!702018 () Bool)

(declare-fun Exists!4597 (Int) Bool)

(assert (=> bm!702018 (= call!702024 (Exists!4597 (ite c!1408472 lambda!469708 lambda!469709)))))

(declare-fun b!7646647 () Bool)

(declare-fun c!1408474 () Bool)

(assert (=> b!7646647 (= c!1408474 (is-ElementMatch!20468 (regOne!41449 r!14126)))))

(declare-fun e!4544857 () Bool)

(declare-fun e!4544862 () Bool)

(assert (=> b!7646647 (= e!4544857 e!4544862)))

(declare-fun b!7646648 () Bool)

(assert (=> b!7646648 (= e!4544861 (matchRSpec!4577 (regTwo!41449 (regOne!41449 r!14126)) s!9605))))

(declare-fun b!7646649 () Bool)

(assert (=> b!7646649 (= e!4544862 (= s!9605 (Cons!73195 (c!1408375 (regOne!41449 r!14126)) Nil!73195)))))

(declare-fun e!4544858 () Bool)

(assert (=> b!7646650 (= e!4544858 call!702024)))

(declare-fun b!7646651 () Bool)

(declare-fun call!702023 () Bool)

(assert (=> b!7646651 (= e!4544859 call!702023)))

(declare-fun b!7646652 () Bool)

(declare-fun e!4544860 () Bool)

(assert (=> b!7646652 (= e!4544863 e!4544860)))

(assert (=> b!7646652 (= c!1408472 (is-Star!20468 (regOne!41449 r!14126)))))

(declare-fun b!7646653 () Bool)

(declare-fun c!1408475 () Bool)

(assert (=> b!7646653 (= c!1408475 (is-Union!20468 (regOne!41449 r!14126)))))

(assert (=> b!7646653 (= e!4544862 e!4544863)))

(declare-fun b!7646654 () Bool)

(assert (=> b!7646654 (= e!4544859 e!4544857)))

(declare-fun res!3062828 () Bool)

(assert (=> b!7646654 (= res!3062828 (not (is-EmptyLang!20468 (regOne!41449 r!14126))))))

(assert (=> b!7646654 (=> (not res!3062828) (not e!4544857))))

(declare-fun b!7646655 () Bool)

(declare-fun res!3062827 () Bool)

(assert (=> b!7646655 (=> res!3062827 e!4544858)))

(assert (=> b!7646655 (= res!3062827 call!702023)))

(assert (=> b!7646655 (= e!4544860 e!4544858)))

(declare-fun bm!702019 () Bool)

(assert (=> bm!702019 (= call!702023 (isEmpty!41820 s!9605))))

(assert (=> b!7646656 (= e!4544860 call!702024)))

(assert (= (and d!2325618 c!1408473) b!7646651))

(assert (= (and d!2325618 (not c!1408473)) b!7646654))

(assert (= (and b!7646654 res!3062828) b!7646647))

(assert (= (and b!7646647 c!1408474) b!7646649))

(assert (= (and b!7646647 (not c!1408474)) b!7646653))

(assert (= (and b!7646653 c!1408475) b!7646646))

(assert (= (and b!7646653 (not c!1408475)) b!7646652))

(assert (= (and b!7646646 (not res!3062829)) b!7646648))

(assert (= (and b!7646652 c!1408472) b!7646655))

(assert (= (and b!7646652 (not c!1408472)) b!7646656))

(assert (= (and b!7646655 (not res!3062827)) b!7646650))

(assert (= (or b!7646650 b!7646656) bm!702018))

(assert (= (or b!7646651 b!7646655) bm!702019))

(declare-fun m!8164852 () Bool)

(assert (=> b!7646646 m!8164852))

(declare-fun m!8164854 () Bool)

(assert (=> bm!702018 m!8164854))

(declare-fun m!8164856 () Bool)

(assert (=> b!7646648 m!8164856))

(assert (=> bm!702019 m!8164790))

(assert (=> b!7646264 d!2325618))

(declare-fun b!7646661 () Bool)

(declare-fun res!3062833 () Bool)

(declare-fun e!4544865 () Bool)

(assert (=> b!7646661 (=> res!3062833 e!4544865)))

(assert (=> b!7646661 (= res!3062833 (not (is-Concat!29313 (regTwo!41449 r!14126))))))

(declare-fun e!4544870 () Bool)

(assert (=> b!7646661 (= e!4544870 e!4544865)))

(declare-fun b!7646662 () Bool)

(declare-fun e!4544867 () Bool)

(declare-fun call!702026 () Bool)

(assert (=> b!7646662 (= e!4544867 call!702026)))

(declare-fun b!7646663 () Bool)

(assert (=> b!7646663 (= e!4544865 e!4544867)))

(declare-fun res!3062831 () Bool)

(assert (=> b!7646663 (=> (not res!3062831) (not e!4544867))))

(declare-fun call!702025 () Bool)

(assert (=> b!7646663 (= res!3062831 call!702025)))

(declare-fun bm!702020 () Bool)

(declare-fun c!1408477 () Bool)

(assert (=> bm!702020 (= call!702025 (validRegex!10886 (ite c!1408477 (regOne!41449 (regTwo!41449 r!14126)) (regOne!41448 (regTwo!41449 r!14126)))))))

(declare-fun b!7646664 () Bool)

(declare-fun e!4544868 () Bool)

(assert (=> b!7646664 (= e!4544868 e!4544870)))

(assert (=> b!7646664 (= c!1408477 (is-Union!20468 (regTwo!41449 r!14126)))))

(declare-fun b!7646665 () Bool)

(declare-fun e!4544869 () Bool)

(assert (=> b!7646665 (= e!4544869 e!4544868)))

(declare-fun c!1408476 () Bool)

(assert (=> b!7646665 (= c!1408476 (is-Star!20468 (regTwo!41449 r!14126)))))

(declare-fun b!7646666 () Bool)

(declare-fun e!4544866 () Bool)

(assert (=> b!7646666 (= e!4544866 call!702026)))

(declare-fun b!7646667 () Bool)

(declare-fun e!4544864 () Bool)

(declare-fun call!702027 () Bool)

(assert (=> b!7646667 (= e!4544864 call!702027)))

(declare-fun d!2325620 () Bool)

(declare-fun res!3062832 () Bool)

(assert (=> d!2325620 (=> res!3062832 e!4544869)))

(assert (=> d!2325620 (= res!3062832 (is-ElementMatch!20468 (regTwo!41449 r!14126)))))

(assert (=> d!2325620 (= (validRegex!10886 (regTwo!41449 r!14126)) e!4544869)))

(declare-fun bm!702021 () Bool)

(assert (=> bm!702021 (= call!702027 (validRegex!10886 (ite c!1408476 (reg!20797 (regTwo!41449 r!14126)) (ite c!1408477 (regTwo!41449 (regTwo!41449 r!14126)) (regTwo!41448 (regTwo!41449 r!14126))))))))

(declare-fun bm!702022 () Bool)

(assert (=> bm!702022 (= call!702026 call!702027)))

(declare-fun b!7646668 () Bool)

(assert (=> b!7646668 (= e!4544868 e!4544864)))

(declare-fun res!3062834 () Bool)

(assert (=> b!7646668 (= res!3062834 (not (nullable!8969 (reg!20797 (regTwo!41449 r!14126)))))))

(assert (=> b!7646668 (=> (not res!3062834) (not e!4544864))))

(declare-fun b!7646669 () Bool)

(declare-fun res!3062830 () Bool)

(assert (=> b!7646669 (=> (not res!3062830) (not e!4544866))))

(assert (=> b!7646669 (= res!3062830 call!702025)))

(assert (=> b!7646669 (= e!4544870 e!4544866)))

(assert (= (and d!2325620 (not res!3062832)) b!7646665))

(assert (= (and b!7646665 c!1408476) b!7646668))

(assert (= (and b!7646665 (not c!1408476)) b!7646664))

(assert (= (and b!7646668 res!3062834) b!7646667))

(assert (= (and b!7646664 c!1408477) b!7646669))

(assert (= (and b!7646664 (not c!1408477)) b!7646661))

(assert (= (and b!7646669 res!3062830) b!7646666))

(assert (= (and b!7646661 (not res!3062833)) b!7646663))

(assert (= (and b!7646663 res!3062831) b!7646662))

(assert (= (or b!7646669 b!7646663) bm!702020))

(assert (= (or b!7646666 b!7646662) bm!702022))

(assert (= (or b!7646667 bm!702022) bm!702021))

(declare-fun m!8164858 () Bool)

(assert (=> bm!702020 m!8164858))

(declare-fun m!8164860 () Bool)

(assert (=> bm!702021 m!8164860))

(declare-fun m!8164862 () Bool)

(assert (=> b!7646668 m!8164862))

(assert (=> b!7646264 d!2325620))

(declare-fun d!2325622 () Bool)

(assert (=> d!2325622 (= (matchR!9969 (regOne!41449 r!14126) s!9605) (matchRSpec!4577 (regOne!41449 r!14126) s!9605))))

(declare-fun lt!2661116 () Unit!167944)

(declare-fun choose!59042 (Regex!20468 List!73319) Unit!167944)

(assert (=> d!2325622 (= lt!2661116 (choose!59042 (regOne!41449 r!14126) s!9605))))

(assert (=> d!2325622 (validRegex!10886 (regOne!41449 r!14126))))

(assert (=> d!2325622 (= (mainMatchTheorem!4557 (regOne!41449 r!14126) s!9605) lt!2661116)))

(declare-fun bs!1944804 () Bool)

(assert (= bs!1944804 d!2325622))

(assert (=> bs!1944804 m!8164694))

(assert (=> bs!1944804 m!8164686))

(declare-fun m!8164864 () Bool)

(assert (=> bs!1944804 m!8164864))

(assert (=> bs!1944804 m!8164756))

(assert (=> b!7646264 d!2325622))

(declare-fun b!7646670 () Bool)

(declare-fun e!4544874 () Bool)

(assert (=> b!7646670 (= e!4544874 (matchR!9969 (derivativeStep!5939 (regOne!41449 r!14126) (head!15739 s!9605)) (tail!15279 s!9605)))))

(declare-fun b!7646671 () Bool)

(declare-fun res!3062838 () Bool)

(declare-fun e!4544872 () Bool)

(assert (=> b!7646671 (=> (not res!3062838) (not e!4544872))))

(assert (=> b!7646671 (= res!3062838 (isEmpty!41820 (tail!15279 s!9605)))))

(declare-fun b!7646672 () Bool)

(declare-fun res!3062836 () Bool)

(declare-fun e!4544876 () Bool)

(assert (=> b!7646672 (=> res!3062836 e!4544876)))

(assert (=> b!7646672 (= res!3062836 e!4544872)))

(declare-fun res!3062840 () Bool)

(assert (=> b!7646672 (=> (not res!3062840) (not e!4544872))))

(declare-fun lt!2661117 () Bool)

(assert (=> b!7646672 (= res!3062840 lt!2661117)))

(declare-fun b!7646673 () Bool)

(declare-fun e!4544873 () Bool)

(declare-fun e!4544875 () Bool)

(assert (=> b!7646673 (= e!4544873 e!4544875)))

(declare-fun res!3062842 () Bool)

(assert (=> b!7646673 (=> res!3062842 e!4544875)))

(declare-fun call!702028 () Bool)

(assert (=> b!7646673 (= res!3062842 call!702028)))

(declare-fun bm!702023 () Bool)

(assert (=> bm!702023 (= call!702028 (isEmpty!41820 s!9605))))

(declare-fun b!7646674 () Bool)

(declare-fun e!4544871 () Bool)

(declare-fun e!4544877 () Bool)

(assert (=> b!7646674 (= e!4544871 e!4544877)))

(declare-fun c!1408478 () Bool)

(assert (=> b!7646674 (= c!1408478 (is-EmptyLang!20468 (regOne!41449 r!14126)))))

(declare-fun b!7646675 () Bool)

(assert (=> b!7646675 (= e!4544874 (nullable!8969 (regOne!41449 r!14126)))))

(declare-fun b!7646676 () Bool)

(assert (=> b!7646676 (= e!4544876 e!4544873)))

(declare-fun res!3062837 () Bool)

(assert (=> b!7646676 (=> (not res!3062837) (not e!4544873))))

(assert (=> b!7646676 (= res!3062837 (not lt!2661117))))

(declare-fun b!7646677 () Bool)

(assert (=> b!7646677 (= e!4544871 (= lt!2661117 call!702028))))

(declare-fun b!7646678 () Bool)

(declare-fun res!3062839 () Bool)

(assert (=> b!7646678 (=> (not res!3062839) (not e!4544872))))

(assert (=> b!7646678 (= res!3062839 (not call!702028))))

(declare-fun b!7646679 () Bool)

(assert (=> b!7646679 (= e!4544877 (not lt!2661117))))

(declare-fun b!7646680 () Bool)

(declare-fun res!3062835 () Bool)

(assert (=> b!7646680 (=> res!3062835 e!4544875)))

(assert (=> b!7646680 (= res!3062835 (not (isEmpty!41820 (tail!15279 s!9605))))))

(declare-fun b!7646681 () Bool)

(assert (=> b!7646681 (= e!4544872 (= (head!15739 s!9605) (c!1408375 (regOne!41449 r!14126))))))

(declare-fun b!7646682 () Bool)

(assert (=> b!7646682 (= e!4544875 (not (= (head!15739 s!9605) (c!1408375 (regOne!41449 r!14126)))))))

(declare-fun b!7646683 () Bool)

(declare-fun res!3062841 () Bool)

(assert (=> b!7646683 (=> res!3062841 e!4544876)))

(assert (=> b!7646683 (= res!3062841 (not (is-ElementMatch!20468 (regOne!41449 r!14126))))))

(assert (=> b!7646683 (= e!4544877 e!4544876)))

(declare-fun d!2325624 () Bool)

(assert (=> d!2325624 e!4544871))

(declare-fun c!1408479 () Bool)

(assert (=> d!2325624 (= c!1408479 (is-EmptyExpr!20468 (regOne!41449 r!14126)))))

(assert (=> d!2325624 (= lt!2661117 e!4544874)))

(declare-fun c!1408480 () Bool)

(assert (=> d!2325624 (= c!1408480 (isEmpty!41820 s!9605))))

(assert (=> d!2325624 (validRegex!10886 (regOne!41449 r!14126))))

(assert (=> d!2325624 (= (matchR!9969 (regOne!41449 r!14126) s!9605) lt!2661117)))

(assert (= (and d!2325624 c!1408480) b!7646675))

(assert (= (and d!2325624 (not c!1408480)) b!7646670))

(assert (= (and d!2325624 c!1408479) b!7646677))

(assert (= (and d!2325624 (not c!1408479)) b!7646674))

(assert (= (and b!7646674 c!1408478) b!7646679))

(assert (= (and b!7646674 (not c!1408478)) b!7646683))

(assert (= (and b!7646683 (not res!3062841)) b!7646672))

(assert (= (and b!7646672 res!3062840) b!7646678))

(assert (= (and b!7646678 res!3062839) b!7646671))

(assert (= (and b!7646671 res!3062838) b!7646681))

(assert (= (and b!7646672 (not res!3062836)) b!7646676))

(assert (= (and b!7646676 res!3062837) b!7646673))

(assert (= (and b!7646673 (not res!3062842)) b!7646680))

(assert (= (and b!7646680 (not res!3062835)) b!7646682))

(assert (= (or b!7646677 b!7646673 b!7646678) bm!702023))

(assert (=> b!7646682 m!8164784))

(assert (=> b!7646671 m!8164786))

(assert (=> b!7646671 m!8164786))

(assert (=> b!7646671 m!8164788))

(assert (=> b!7646681 m!8164784))

(assert (=> d!2325624 m!8164790))

(assert (=> d!2325624 m!8164756))

(assert (=> b!7646680 m!8164786))

(assert (=> b!7646680 m!8164786))

(assert (=> b!7646680 m!8164788))

(declare-fun m!8164866 () Bool)

(assert (=> b!7646675 m!8164866))

(assert (=> bm!702023 m!8164790))

(assert (=> b!7646670 m!8164784))

(assert (=> b!7646670 m!8164784))

(declare-fun m!8164868 () Bool)

(assert (=> b!7646670 m!8164868))

(assert (=> b!7646670 m!8164786))

(assert (=> b!7646670 m!8164868))

(assert (=> b!7646670 m!8164786))

(declare-fun m!8164870 () Bool)

(assert (=> b!7646670 m!8164870))

(assert (=> b!7646264 d!2325624))

(declare-fun b!7646694 () Bool)

(declare-fun e!4544880 () Bool)

(assert (=> b!7646694 (= e!4544880 tp_is_empty!51291)))

(declare-fun b!7646697 () Bool)

(declare-fun tp!2231946 () Bool)

(declare-fun tp!2231948 () Bool)

(assert (=> b!7646697 (= e!4544880 (and tp!2231946 tp!2231948))))

(declare-fun b!7646696 () Bool)

(declare-fun tp!2231944 () Bool)

(assert (=> b!7646696 (= e!4544880 tp!2231944)))

(assert (=> b!7646256 (= tp!2231914 e!4544880)))

(declare-fun b!7646695 () Bool)

(declare-fun tp!2231945 () Bool)

(declare-fun tp!2231947 () Bool)

(assert (=> b!7646695 (= e!4544880 (and tp!2231945 tp!2231947))))

(assert (= (and b!7646256 (is-ElementMatch!20468 (reg!20797 r!14126))) b!7646694))

(assert (= (and b!7646256 (is-Concat!29313 (reg!20797 r!14126))) b!7646695))

(assert (= (and b!7646256 (is-Star!20468 (reg!20797 r!14126))) b!7646696))

(assert (= (and b!7646256 (is-Union!20468 (reg!20797 r!14126))) b!7646697))

(declare-fun b!7646702 () Bool)

(declare-fun e!4544883 () Bool)

(declare-fun tp!2231951 () Bool)

(assert (=> b!7646702 (= e!4544883 (and tp_is_empty!51291 tp!2231951))))

(assert (=> b!7646251 (= tp!2231911 e!4544883)))

(assert (= (and b!7646251 (is-Cons!73195 (t!388054 s!9605))) b!7646702))

(declare-fun b!7646703 () Bool)

(declare-fun e!4544884 () Bool)

(assert (=> b!7646703 (= e!4544884 tp_is_empty!51291)))

(declare-fun b!7646706 () Bool)

(declare-fun tp!2231954 () Bool)

(declare-fun tp!2231956 () Bool)

(assert (=> b!7646706 (= e!4544884 (and tp!2231954 tp!2231956))))

(declare-fun b!7646705 () Bool)

(declare-fun tp!2231952 () Bool)

(assert (=> b!7646705 (= e!4544884 tp!2231952)))

(assert (=> b!7646263 (= tp!2231912 e!4544884)))

(declare-fun b!7646704 () Bool)

(declare-fun tp!2231953 () Bool)

(declare-fun tp!2231955 () Bool)

(assert (=> b!7646704 (= e!4544884 (and tp!2231953 tp!2231955))))

(assert (= (and b!7646263 (is-ElementMatch!20468 (regOne!41448 r!14126))) b!7646703))

(assert (= (and b!7646263 (is-Concat!29313 (regOne!41448 r!14126))) b!7646704))

(assert (= (and b!7646263 (is-Star!20468 (regOne!41448 r!14126))) b!7646705))

(assert (= (and b!7646263 (is-Union!20468 (regOne!41448 r!14126))) b!7646706))

(declare-fun b!7646707 () Bool)

(declare-fun e!4544885 () Bool)

(assert (=> b!7646707 (= e!4544885 tp_is_empty!51291)))

(declare-fun b!7646710 () Bool)

(declare-fun tp!2231959 () Bool)

(declare-fun tp!2231961 () Bool)

(assert (=> b!7646710 (= e!4544885 (and tp!2231959 tp!2231961))))

(declare-fun b!7646709 () Bool)

(declare-fun tp!2231957 () Bool)

(assert (=> b!7646709 (= e!4544885 tp!2231957)))

(assert (=> b!7646263 (= tp!2231910 e!4544885)))

(declare-fun b!7646708 () Bool)

(declare-fun tp!2231958 () Bool)

(declare-fun tp!2231960 () Bool)

(assert (=> b!7646708 (= e!4544885 (and tp!2231958 tp!2231960))))

(assert (= (and b!7646263 (is-ElementMatch!20468 (regTwo!41448 r!14126))) b!7646707))

(assert (= (and b!7646263 (is-Concat!29313 (regTwo!41448 r!14126))) b!7646708))

(assert (= (and b!7646263 (is-Star!20468 (regTwo!41448 r!14126))) b!7646709))

(assert (= (and b!7646263 (is-Union!20468 (regTwo!41448 r!14126))) b!7646710))

(declare-fun b!7646711 () Bool)

(declare-fun e!4544886 () Bool)

(assert (=> b!7646711 (= e!4544886 tp_is_empty!51291)))

(declare-fun b!7646714 () Bool)

(declare-fun tp!2231964 () Bool)

(declare-fun tp!2231966 () Bool)

(assert (=> b!7646714 (= e!4544886 (and tp!2231964 tp!2231966))))

(declare-fun b!7646713 () Bool)

(declare-fun tp!2231962 () Bool)

(assert (=> b!7646713 (= e!4544886 tp!2231962)))

(assert (=> b!7646262 (= tp!2231913 e!4544886)))

(declare-fun b!7646712 () Bool)

(declare-fun tp!2231963 () Bool)

(declare-fun tp!2231965 () Bool)

(assert (=> b!7646712 (= e!4544886 (and tp!2231963 tp!2231965))))

(assert (= (and b!7646262 (is-ElementMatch!20468 (regOne!41449 r!14126))) b!7646711))

(assert (= (and b!7646262 (is-Concat!29313 (regOne!41449 r!14126))) b!7646712))

(assert (= (and b!7646262 (is-Star!20468 (regOne!41449 r!14126))) b!7646713))

(assert (= (and b!7646262 (is-Union!20468 (regOne!41449 r!14126))) b!7646714))

(declare-fun b!7646715 () Bool)

(declare-fun e!4544887 () Bool)

(assert (=> b!7646715 (= e!4544887 tp_is_empty!51291)))

(declare-fun b!7646718 () Bool)

(declare-fun tp!2231969 () Bool)

(declare-fun tp!2231971 () Bool)

(assert (=> b!7646718 (= e!4544887 (and tp!2231969 tp!2231971))))

(declare-fun b!7646717 () Bool)

(declare-fun tp!2231967 () Bool)

(assert (=> b!7646717 (= e!4544887 tp!2231967)))

(assert (=> b!7646262 (= tp!2231915 e!4544887)))

(declare-fun b!7646716 () Bool)

(declare-fun tp!2231968 () Bool)

(declare-fun tp!2231970 () Bool)

(assert (=> b!7646716 (= e!4544887 (and tp!2231968 tp!2231970))))

(assert (= (and b!7646262 (is-ElementMatch!20468 (regTwo!41449 r!14126))) b!7646715))

(assert (= (and b!7646262 (is-Concat!29313 (regTwo!41449 r!14126))) b!7646716))

(assert (= (and b!7646262 (is-Star!20468 (regTwo!41449 r!14126))) b!7646717))

(assert (= (and b!7646262 (is-Union!20468 (regTwo!41449 r!14126))) b!7646718))

(push 1)

(assert (not bm!701980))

(assert (not bm!702020))

(assert (not bm!702002))

(assert (not b!7646477))

(assert (not b!7646600))

(assert (not d!2325602))

(assert (not d!2325600))

(assert (not bm!702011))

(assert (not b!7646705))

(assert (not b!7646696))

(assert (not d!2325588))

(assert (not b!7646443))

(assert (not b!7646682))

(assert (not b!7646646))

(assert (not b!7646680))

(assert (not b!7646668))

(assert (not b!7646467))

(assert (not bm!702005))

(assert (not bm!702009))

(assert (not b!7646712))

(assert (not b!7646716))

(assert (not b!7646670))

(assert (not b!7646611))

(assert (not b!7646612))

(assert (not b!7646601))

(assert (not bm!701973))

(assert (not d!2325614))

(assert (not b!7646704))

(assert (not b!7646671))

(assert (not bm!702007))

(assert (not b!7646706))

(assert (not bm!702000))

(assert (not b!7646432))

(assert (not b!7646605))

(assert (not b!7646441))

(assert (not b!7646431))

(assert (not bm!702006))

(assert (not d!2325616))

(assert (not b!7646710))

(assert (not d!2325622))

(assert (not b!7646714))

(assert (not b!7646476))

(assert (not bm!702012))

(assert (not b!7646436))

(assert (not bm!702019))

(assert (not b!7646702))

(assert (not b!7646599))

(assert (not b!7646478))

(assert (not b!7646368))

(assert (not b!7646681))

(assert (not b!7646598))

(assert (not bm!701965))

(assert (not bm!701964))

(assert (not b!7646442))

(assert (not bm!702013))

(assert (not d!2325624))

(assert (not bm!702004))

(assert (not b!7646695))

(assert (not b!7646465))

(assert (not b!7646697))

(assert (not b!7646338))

(assert (not b!7646675))

(assert (not bm!702018))

(assert (not b!7646466))

(assert (not b!7646713))

(assert (not b!7646610))

(assert (not bm!702021))

(assert (not b!7646708))

(assert (not d!2325590))

(assert (not b!7646718))

(assert tp_is_empty!51291)

(assert (not bm!701999))

(assert (not b!7646717))

(assert (not bm!702023))

(assert (not b!7646709))

(assert (not b!7646471))

(assert (not b!7646648))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

