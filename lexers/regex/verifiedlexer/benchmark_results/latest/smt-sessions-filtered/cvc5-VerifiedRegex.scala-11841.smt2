; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!665832 () Bool)

(assert start!665832)

(declare-fun b!6925582 () Bool)

(assert (=> b!6925582 true))

(assert (=> b!6925582 true))

(assert (=> b!6925582 true))

(declare-fun lambda!393928 () Int)

(declare-fun lambda!393927 () Int)

(assert (=> b!6925582 (not (= lambda!393928 lambda!393927))))

(assert (=> b!6925582 true))

(assert (=> b!6925582 true))

(assert (=> b!6925582 true))

(declare-fun bs!1848608 () Bool)

(declare-fun b!6925565 () Bool)

(assert (= bs!1848608 (and b!6925565 b!6925582)))

(declare-datatypes ((C!34126 0))(
  ( (C!34127 (val!26765 Int)) )
))
(declare-datatypes ((Regex!16928 0))(
  ( (ElementMatch!16928 (c!1285584 C!34126)) (Concat!25773 (regOne!34368 Regex!16928) (regTwo!34368 Regex!16928)) (EmptyExpr!16928) (Star!16928 (reg!17257 Regex!16928)) (EmptyLang!16928) (Union!16928 (regOne!34369 Regex!16928) (regTwo!34369 Regex!16928)) )
))
(declare-fun r3!135 () Regex!16928)

(declare-datatypes ((List!66681 0))(
  ( (Nil!66557) (Cons!66557 (h!73005 C!34126) (t!380424 List!66681)) )
))
(declare-fun s!14361 () List!66681)

(declare-fun lambda!393929 () Int)

(declare-fun lt!2471732 () Regex!16928)

(declare-fun r2!6280 () Regex!16928)

(declare-datatypes ((tuple2!67570 0))(
  ( (tuple2!67571 (_1!37088 List!66681) (_2!37088 List!66681)) )
))
(declare-fun lt!2471720 () tuple2!67570)

(declare-fun r1!6342 () Regex!16928)

(assert (=> bs!1848608 (= (and (= (_1!37088 lt!2471720) s!14361) (= r1!6342 lt!2471732) (= r2!6280 r3!135)) (= lambda!393929 lambda!393927))))

(assert (=> bs!1848608 (not (= lambda!393929 lambda!393928))))

(assert (=> b!6925565 true))

(assert (=> b!6925565 true))

(assert (=> b!6925565 true))

(declare-fun lambda!393930 () Int)

(assert (=> bs!1848608 (not (= lambda!393930 lambda!393927))))

(assert (=> bs!1848608 (= (and (= (_1!37088 lt!2471720) s!14361) (= r1!6342 lt!2471732) (= r2!6280 r3!135)) (= lambda!393930 lambda!393928))))

(assert (=> b!6925565 (not (= lambda!393930 lambda!393929))))

(assert (=> b!6925565 true))

(assert (=> b!6925565 true))

(assert (=> b!6925565 true))

(declare-fun bs!1848609 () Bool)

(declare-fun b!6925580 () Bool)

(assert (= bs!1848609 (and b!6925580 b!6925582)))

(declare-fun lt!2471730 () List!66681)

(declare-fun lambda!393931 () Int)

(assert (=> bs!1848609 (= (and (= lt!2471730 s!14361) (= r2!6280 lt!2471732)) (= lambda!393931 lambda!393927))))

(assert (=> bs!1848609 (not (= lambda!393931 lambda!393928))))

(declare-fun bs!1848610 () Bool)

(assert (= bs!1848610 (and b!6925580 b!6925565)))

(assert (=> bs!1848610 (= (and (= lt!2471730 (_1!37088 lt!2471720)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393931 lambda!393929))))

(assert (=> bs!1848610 (not (= lambda!393931 lambda!393930))))

(assert (=> b!6925580 true))

(assert (=> b!6925580 true))

(assert (=> b!6925580 true))

(declare-fun lambda!393932 () Int)

(assert (=> bs!1848610 (not (= lambda!393932 lambda!393929))))

(assert (=> b!6925580 (not (= lambda!393932 lambda!393931))))

(assert (=> bs!1848610 (= (and (= lt!2471730 (_1!37088 lt!2471720)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393932 lambda!393930))))

(assert (=> bs!1848609 (= (and (= lt!2471730 s!14361) (= r2!6280 lt!2471732)) (= lambda!393932 lambda!393928))))

(assert (=> bs!1848609 (not (= lambda!393932 lambda!393927))))

(assert (=> b!6925580 true))

(assert (=> b!6925580 true))

(assert (=> b!6925580 true))

(declare-fun b!6925560 () Bool)

(declare-fun e!4167798 () Bool)

(declare-fun tp!1908944 () Bool)

(declare-fun tp!1908937 () Bool)

(assert (=> b!6925560 (= e!4167798 (and tp!1908944 tp!1908937))))

(declare-fun b!6925561 () Bool)

(declare-fun e!4167805 () Bool)

(declare-fun tp!1908947 () Bool)

(declare-fun tp!1908932 () Bool)

(assert (=> b!6925561 (= e!4167805 (and tp!1908947 tp!1908932))))

(declare-fun b!6925562 () Bool)

(declare-fun tp!1908940 () Bool)

(assert (=> b!6925562 (= e!4167798 tp!1908940)))

(declare-fun b!6925563 () Bool)

(declare-fun e!4167796 () Bool)

(declare-fun e!4167803 () Bool)

(assert (=> b!6925563 (= e!4167796 e!4167803)))

(declare-fun res!2824302 () Bool)

(assert (=> b!6925563 (=> res!2824302 e!4167803)))

(declare-fun lt!2471735 () List!66681)

(assert (=> b!6925563 (= res!2824302 (not (= lt!2471735 s!14361)))))

(declare-fun lt!2471723 () List!66681)

(assert (=> b!6925563 (= lt!2471723 lt!2471735)))

(declare-fun lt!2471739 () tuple2!67570)

(declare-fun ++!14971 (List!66681 List!66681) List!66681)

(assert (=> b!6925563 (= lt!2471735 (++!14971 (_1!37088 lt!2471739) lt!2471730))))

(declare-datatypes ((Unit!160580 0))(
  ( (Unit!160581) )
))
(declare-fun lt!2471742 () Unit!160580)

(declare-fun lemmaConcatAssociativity!3019 (List!66681 List!66681 List!66681) Unit!160580)

(assert (=> b!6925563 (= lt!2471742 (lemmaConcatAssociativity!3019 (_1!37088 lt!2471739) (_2!37088 lt!2471739) (_2!37088 lt!2471720)))))

(declare-fun b!6925564 () Bool)

(declare-fun res!2824298 () Bool)

(declare-fun e!4167804 () Bool)

(assert (=> b!6925564 (=> res!2824298 e!4167804)))

(declare-fun matchR!9067 (Regex!16928 List!66681) Bool)

(assert (=> b!6925564 (= res!2824298 (not (matchR!9067 r2!6280 (_2!37088 lt!2471739))))))

(declare-fun e!4167801 () Bool)

(assert (=> b!6925565 (= e!4167801 e!4167804)))

(declare-fun res!2824296 () Bool)

(assert (=> b!6925565 (=> res!2824296 e!4167804)))

(assert (=> b!6925565 (= res!2824296 (not (matchR!9067 r1!6342 (_1!37088 lt!2471739))))))

(declare-datatypes ((Option!16697 0))(
  ( (None!16696) (Some!16696 (v!52968 tuple2!67570)) )
))
(declare-fun lt!2471744 () Option!16697)

(declare-fun get!23333 (Option!16697) tuple2!67570)

(assert (=> b!6925565 (= lt!2471739 (get!23333 lt!2471744))))

(declare-fun Exists!3930 (Int) Bool)

(assert (=> b!6925565 (= (Exists!3930 lambda!393929) (Exists!3930 lambda!393930))))

(declare-fun lt!2471738 () Unit!160580)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2397 (Regex!16928 Regex!16928 List!66681) Unit!160580)

(assert (=> b!6925565 (= lt!2471738 (lemmaExistCutMatchRandMatchRSpecEquivalent!2397 r1!6342 r2!6280 (_1!37088 lt!2471720)))))

(declare-fun isDefined!13400 (Option!16697) Bool)

(assert (=> b!6925565 (= (isDefined!13400 lt!2471744) (Exists!3930 lambda!393929))))

(declare-fun findConcatSeparation!3111 (Regex!16928 Regex!16928 List!66681 List!66681 List!66681) Option!16697)

(assert (=> b!6925565 (= lt!2471744 (findConcatSeparation!3111 r1!6342 r2!6280 Nil!66557 (_1!37088 lt!2471720) (_1!37088 lt!2471720)))))

(declare-fun lt!2471740 () Unit!160580)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2873 (Regex!16928 Regex!16928 List!66681) Unit!160580)

(assert (=> b!6925565 (= lt!2471740 (lemmaFindConcatSeparationEquivalentToExists!2873 r1!6342 r2!6280 (_1!37088 lt!2471720)))))

(declare-fun b!6925566 () Bool)

(declare-fun res!2824299 () Bool)

(declare-fun e!4167797 () Bool)

(assert (=> b!6925566 (=> (not res!2824299) (not e!4167797))))

(declare-fun validRegex!8634 (Regex!16928) Bool)

(assert (=> b!6925566 (= res!2824299 (validRegex!8634 r2!6280))))

(declare-fun b!6925567 () Bool)

(declare-fun e!4167800 () Bool)

(declare-fun tp!1908934 () Bool)

(declare-fun tp!1908933 () Bool)

(assert (=> b!6925567 (= e!4167800 (and tp!1908934 tp!1908933))))

(declare-fun b!6925568 () Bool)

(declare-fun tp!1908938 () Bool)

(assert (=> b!6925568 (= e!4167805 tp!1908938)))

(declare-fun res!2824301 () Bool)

(assert (=> start!665832 (=> (not res!2824301) (not e!4167797))))

(assert (=> start!665832 (= res!2824301 (validRegex!8634 r1!6342))))

(assert (=> start!665832 e!4167797))

(assert (=> start!665832 e!4167798))

(assert (=> start!665832 e!4167805))

(assert (=> start!665832 e!4167800))

(declare-fun e!4167799 () Bool)

(assert (=> start!665832 e!4167799))

(declare-fun b!6925569 () Bool)

(declare-fun res!2824294 () Bool)

(assert (=> b!6925569 (=> (not res!2824294) (not e!4167797))))

(assert (=> b!6925569 (= res!2824294 (validRegex!8634 r3!135))))

(declare-fun b!6925570 () Bool)

(declare-fun lt!2471728 () Regex!16928)

(assert (=> b!6925570 (= e!4167803 (validRegex!8634 lt!2471728))))

(assert (=> b!6925570 (isDefined!13400 (findConcatSeparation!3111 r1!6342 lt!2471728 Nil!66557 s!14361 s!14361))))

(declare-fun lt!2471721 () Unit!160580)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!89 (Regex!16928 Regex!16928 List!66681 List!66681 List!66681 List!66681 List!66681) Unit!160580)

(assert (=> b!6925570 (= lt!2471721 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!89 r1!6342 lt!2471728 (_1!37088 lt!2471739) lt!2471730 s!14361 Nil!66557 s!14361))))

(declare-fun b!6925571 () Bool)

(declare-fun tp_is_empty!43081 () Bool)

(assert (=> b!6925571 (= e!4167805 tp_is_empty!43081)))

(declare-fun b!6925572 () Bool)

(assert (=> b!6925572 (= e!4167800 tp_is_empty!43081)))

(declare-fun b!6925573 () Bool)

(declare-fun res!2824297 () Bool)

(assert (=> b!6925573 (=> res!2824297 e!4167801)))

(assert (=> b!6925573 (= res!2824297 (not (matchR!9067 r3!135 (_2!37088 lt!2471720))))))

(declare-fun b!6925574 () Bool)

(declare-fun e!4167802 () Bool)

(assert (=> b!6925574 (= e!4167797 (not e!4167802))))

(declare-fun res!2824300 () Bool)

(assert (=> b!6925574 (=> res!2824300 e!4167802)))

(declare-fun lt!2471736 () Bool)

(assert (=> b!6925574 (= res!2824300 (not lt!2471736))))

(declare-fun lt!2471727 () Regex!16928)

(declare-fun matchRSpec!3985 (Regex!16928 List!66681) Bool)

(assert (=> b!6925574 (= (matchR!9067 lt!2471727 s!14361) (matchRSpec!3985 lt!2471727 s!14361))))

(declare-fun lt!2471743 () Unit!160580)

(declare-fun mainMatchTheorem!3985 (Regex!16928 List!66681) Unit!160580)

(assert (=> b!6925574 (= lt!2471743 (mainMatchTheorem!3985 lt!2471727 s!14361))))

(declare-fun lt!2471722 () Regex!16928)

(assert (=> b!6925574 (= lt!2471736 (matchRSpec!3985 lt!2471722 s!14361))))

(assert (=> b!6925574 (= lt!2471736 (matchR!9067 lt!2471722 s!14361))))

(declare-fun lt!2471745 () Unit!160580)

(assert (=> b!6925574 (= lt!2471745 (mainMatchTheorem!3985 lt!2471722 s!14361))))

(assert (=> b!6925574 (= lt!2471727 (Concat!25773 r1!6342 lt!2471728))))

(assert (=> b!6925574 (= lt!2471728 (Concat!25773 r2!6280 r3!135))))

(assert (=> b!6925574 (= lt!2471722 (Concat!25773 lt!2471732 r3!135))))

(assert (=> b!6925574 (= lt!2471732 (Concat!25773 r1!6342 r2!6280))))

(declare-fun b!6925575 () Bool)

(declare-fun tp!1908942 () Bool)

(declare-fun tp!1908935 () Bool)

(assert (=> b!6925575 (= e!4167805 (and tp!1908942 tp!1908935))))

(declare-fun b!6925576 () Bool)

(declare-fun tp!1908945 () Bool)

(assert (=> b!6925576 (= e!4167800 tp!1908945)))

(declare-fun b!6925577 () Bool)

(declare-fun e!4167795 () Bool)

(assert (=> b!6925577 (= e!4167804 e!4167795)))

(declare-fun res!2824303 () Bool)

(assert (=> b!6925577 (=> res!2824303 e!4167795)))

(assert (=> b!6925577 (= res!2824303 (not (= lt!2471723 s!14361)))))

(assert (=> b!6925577 (= lt!2471723 (++!14971 (++!14971 (_1!37088 lt!2471739) (_2!37088 lt!2471739)) (_2!37088 lt!2471720)))))

(assert (=> b!6925577 (matchRSpec!3985 r2!6280 (_2!37088 lt!2471739))))

(declare-fun lt!2471741 () Unit!160580)

(assert (=> b!6925577 (= lt!2471741 (mainMatchTheorem!3985 r2!6280 (_2!37088 lt!2471739)))))

(assert (=> b!6925577 (matchRSpec!3985 r1!6342 (_1!37088 lt!2471739))))

(declare-fun lt!2471729 () Unit!160580)

(assert (=> b!6925577 (= lt!2471729 (mainMatchTheorem!3985 r1!6342 (_1!37088 lt!2471739)))))

(declare-fun b!6925578 () Bool)

(declare-fun tp!1908936 () Bool)

(declare-fun tp!1908939 () Bool)

(assert (=> b!6925578 (= e!4167800 (and tp!1908936 tp!1908939))))

(declare-fun b!6925579 () Bool)

(declare-fun tp!1908941 () Bool)

(assert (=> b!6925579 (= e!4167799 (and tp_is_empty!43081 tp!1908941))))

(assert (=> b!6925580 (= e!4167795 e!4167796)))

(declare-fun res!2824293 () Bool)

(assert (=> b!6925580 (=> res!2824293 e!4167796)))

(declare-fun lt!2471725 () Bool)

(assert (=> b!6925580 (= res!2824293 (not lt!2471725))))

(declare-fun lt!2471733 () Bool)

(assert (=> b!6925580 lt!2471733))

(declare-fun lt!2471719 () Unit!160580)

(assert (=> b!6925580 (= lt!2471719 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!89 r2!6280 r3!135 (_2!37088 lt!2471739) (_2!37088 lt!2471720) lt!2471730 Nil!66557 lt!2471730))))

(assert (=> b!6925580 (= (Exists!3930 lambda!393931) (Exists!3930 lambda!393932))))

(declare-fun lt!2471726 () Unit!160580)

(assert (=> b!6925580 (= lt!2471726 (lemmaExistCutMatchRandMatchRSpecEquivalent!2397 r2!6280 r3!135 lt!2471730))))

(assert (=> b!6925580 (= lt!2471733 (Exists!3930 lambda!393931))))

(assert (=> b!6925580 (= lt!2471733 (isDefined!13400 (findConcatSeparation!3111 r2!6280 r3!135 Nil!66557 lt!2471730 lt!2471730)))))

(declare-fun lt!2471737 () Unit!160580)

(assert (=> b!6925580 (= lt!2471737 (lemmaFindConcatSeparationEquivalentToExists!2873 r2!6280 r3!135 lt!2471730))))

(assert (=> b!6925580 (= lt!2471725 (matchRSpec!3985 lt!2471728 lt!2471730))))

(assert (=> b!6925580 (= lt!2471725 (matchR!9067 lt!2471728 lt!2471730))))

(declare-fun lt!2471747 () Unit!160580)

(assert (=> b!6925580 (= lt!2471747 (mainMatchTheorem!3985 lt!2471728 lt!2471730))))

(assert (=> b!6925580 (= lt!2471730 (++!14971 (_2!37088 lt!2471739) (_2!37088 lt!2471720)))))

(declare-fun b!6925581 () Bool)

(assert (=> b!6925581 (= e!4167798 tp_is_empty!43081)))

(assert (=> b!6925582 (= e!4167802 e!4167801)))

(declare-fun res!2824295 () Bool)

(assert (=> b!6925582 (=> res!2824295 e!4167801)))

(declare-fun lt!2471731 () Bool)

(assert (=> b!6925582 (= res!2824295 (not lt!2471731))))

(assert (=> b!6925582 (= lt!2471731 (matchRSpec!3985 lt!2471732 (_1!37088 lt!2471720)))))

(assert (=> b!6925582 (= lt!2471731 (matchR!9067 lt!2471732 (_1!37088 lt!2471720)))))

(declare-fun lt!2471734 () Unit!160580)

(assert (=> b!6925582 (= lt!2471734 (mainMatchTheorem!3985 lt!2471732 (_1!37088 lt!2471720)))))

(declare-fun lt!2471718 () Option!16697)

(assert (=> b!6925582 (= lt!2471720 (get!23333 lt!2471718))))

(assert (=> b!6925582 (= (Exists!3930 lambda!393927) (Exists!3930 lambda!393928))))

(declare-fun lt!2471724 () Unit!160580)

(assert (=> b!6925582 (= lt!2471724 (lemmaExistCutMatchRandMatchRSpecEquivalent!2397 lt!2471732 r3!135 s!14361))))

(assert (=> b!6925582 (= (isDefined!13400 lt!2471718) (Exists!3930 lambda!393927))))

(assert (=> b!6925582 (= lt!2471718 (findConcatSeparation!3111 lt!2471732 r3!135 Nil!66557 s!14361 s!14361))))

(declare-fun lt!2471746 () Unit!160580)

(assert (=> b!6925582 (= lt!2471746 (lemmaFindConcatSeparationEquivalentToExists!2873 lt!2471732 r3!135 s!14361))))

(declare-fun b!6925583 () Bool)

(declare-fun tp!1908943 () Bool)

(declare-fun tp!1908946 () Bool)

(assert (=> b!6925583 (= e!4167798 (and tp!1908943 tp!1908946))))

(assert (= (and start!665832 res!2824301) b!6925566))

(assert (= (and b!6925566 res!2824299) b!6925569))

(assert (= (and b!6925569 res!2824294) b!6925574))

(assert (= (and b!6925574 (not res!2824300)) b!6925582))

(assert (= (and b!6925582 (not res!2824295)) b!6925573))

(assert (= (and b!6925573 (not res!2824297)) b!6925565))

(assert (= (and b!6925565 (not res!2824296)) b!6925564))

(assert (= (and b!6925564 (not res!2824298)) b!6925577))

(assert (= (and b!6925577 (not res!2824303)) b!6925580))

(assert (= (and b!6925580 (not res!2824293)) b!6925563))

(assert (= (and b!6925563 (not res!2824302)) b!6925570))

(assert (= (and start!665832 (is-ElementMatch!16928 r1!6342)) b!6925581))

(assert (= (and start!665832 (is-Concat!25773 r1!6342)) b!6925583))

(assert (= (and start!665832 (is-Star!16928 r1!6342)) b!6925562))

(assert (= (and start!665832 (is-Union!16928 r1!6342)) b!6925560))

(assert (= (and start!665832 (is-ElementMatch!16928 r2!6280)) b!6925571))

(assert (= (and start!665832 (is-Concat!25773 r2!6280)) b!6925561))

(assert (= (and start!665832 (is-Star!16928 r2!6280)) b!6925568))

(assert (= (and start!665832 (is-Union!16928 r2!6280)) b!6925575))

(assert (= (and start!665832 (is-ElementMatch!16928 r3!135)) b!6925572))

(assert (= (and start!665832 (is-Concat!25773 r3!135)) b!6925578))

(assert (= (and start!665832 (is-Star!16928 r3!135)) b!6925576))

(assert (= (and start!665832 (is-Union!16928 r3!135)) b!6925567))

(assert (= (and start!665832 (is-Cons!66557 s!14361)) b!6925579))

(declare-fun m!7634416 () Bool)

(assert (=> b!6925569 m!7634416))

(declare-fun m!7634418 () Bool)

(assert (=> b!6925564 m!7634418))

(declare-fun m!7634420 () Bool)

(assert (=> b!6925570 m!7634420))

(declare-fun m!7634422 () Bool)

(assert (=> b!6925570 m!7634422))

(assert (=> b!6925570 m!7634422))

(declare-fun m!7634424 () Bool)

(assert (=> b!6925570 m!7634424))

(declare-fun m!7634426 () Bool)

(assert (=> b!6925570 m!7634426))

(declare-fun m!7634428 () Bool)

(assert (=> b!6925582 m!7634428))

(declare-fun m!7634430 () Bool)

(assert (=> b!6925582 m!7634430))

(declare-fun m!7634432 () Bool)

(assert (=> b!6925582 m!7634432))

(declare-fun m!7634434 () Bool)

(assert (=> b!6925582 m!7634434))

(assert (=> b!6925582 m!7634432))

(declare-fun m!7634436 () Bool)

(assert (=> b!6925582 m!7634436))

(declare-fun m!7634438 () Bool)

(assert (=> b!6925582 m!7634438))

(declare-fun m!7634440 () Bool)

(assert (=> b!6925582 m!7634440))

(declare-fun m!7634442 () Bool)

(assert (=> b!6925582 m!7634442))

(declare-fun m!7634444 () Bool)

(assert (=> b!6925582 m!7634444))

(declare-fun m!7634446 () Bool)

(assert (=> b!6925582 m!7634446))

(declare-fun m!7634448 () Bool)

(assert (=> b!6925573 m!7634448))

(declare-fun m!7634450 () Bool)

(assert (=> b!6925566 m!7634450))

(declare-fun m!7634452 () Bool)

(assert (=> b!6925563 m!7634452))

(declare-fun m!7634454 () Bool)

(assert (=> b!6925563 m!7634454))

(declare-fun m!7634456 () Bool)

(assert (=> start!665832 m!7634456))

(declare-fun m!7634458 () Bool)

(assert (=> b!6925574 m!7634458))

(declare-fun m!7634460 () Bool)

(assert (=> b!6925574 m!7634460))

(declare-fun m!7634462 () Bool)

(assert (=> b!6925574 m!7634462))

(declare-fun m!7634464 () Bool)

(assert (=> b!6925574 m!7634464))

(declare-fun m!7634466 () Bool)

(assert (=> b!6925574 m!7634466))

(declare-fun m!7634468 () Bool)

(assert (=> b!6925574 m!7634468))

(declare-fun m!7634470 () Bool)

(assert (=> b!6925580 m!7634470))

(declare-fun m!7634472 () Bool)

(assert (=> b!6925580 m!7634472))

(declare-fun m!7634474 () Bool)

(assert (=> b!6925580 m!7634474))

(assert (=> b!6925580 m!7634470))

(declare-fun m!7634476 () Bool)

(assert (=> b!6925580 m!7634476))

(declare-fun m!7634478 () Bool)

(assert (=> b!6925580 m!7634478))

(declare-fun m!7634480 () Bool)

(assert (=> b!6925580 m!7634480))

(declare-fun m!7634482 () Bool)

(assert (=> b!6925580 m!7634482))

(declare-fun m!7634484 () Bool)

(assert (=> b!6925580 m!7634484))

(declare-fun m!7634486 () Bool)

(assert (=> b!6925580 m!7634486))

(declare-fun m!7634488 () Bool)

(assert (=> b!6925580 m!7634488))

(declare-fun m!7634490 () Bool)

(assert (=> b!6925580 m!7634490))

(assert (=> b!6925580 m!7634484))

(declare-fun m!7634492 () Bool)

(assert (=> b!6925565 m!7634492))

(declare-fun m!7634494 () Bool)

(assert (=> b!6925565 m!7634494))

(declare-fun m!7634496 () Bool)

(assert (=> b!6925565 m!7634496))

(declare-fun m!7634498 () Bool)

(assert (=> b!6925565 m!7634498))

(declare-fun m!7634500 () Bool)

(assert (=> b!6925565 m!7634500))

(assert (=> b!6925565 m!7634498))

(declare-fun m!7634502 () Bool)

(assert (=> b!6925565 m!7634502))

(declare-fun m!7634504 () Bool)

(assert (=> b!6925565 m!7634504))

(declare-fun m!7634506 () Bool)

(assert (=> b!6925565 m!7634506))

(declare-fun m!7634508 () Bool)

(assert (=> b!6925577 m!7634508))

(declare-fun m!7634510 () Bool)

(assert (=> b!6925577 m!7634510))

(declare-fun m!7634512 () Bool)

(assert (=> b!6925577 m!7634512))

(declare-fun m!7634514 () Bool)

(assert (=> b!6925577 m!7634514))

(declare-fun m!7634516 () Bool)

(assert (=> b!6925577 m!7634516))

(declare-fun m!7634518 () Bool)

(assert (=> b!6925577 m!7634518))

(assert (=> b!6925577 m!7634516))

(push 1)

(assert (not b!6925579))

(assert (not b!6925563))

(assert (not b!6925576))

(assert (not b!6925566))

(assert (not b!6925574))

(assert (not b!6925565))

(assert (not b!6925575))

(assert (not b!6925570))

(assert (not b!6925560))

(assert (not b!6925582))

(assert (not b!6925568))

(assert (not b!6925573))

(assert (not b!6925577))

(assert (not b!6925567))

(assert (not b!6925583))

(assert (not start!665832))

(assert (not b!6925562))

(assert (not b!6925561))

(assert (not b!6925564))

(assert (not b!6925580))

(assert (not b!6925569))

(assert tp_is_empty!43081)

(assert (not b!6925578))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6925749 () Bool)

(declare-fun e!4167895 () Bool)

(declare-fun call!629441 () Bool)

(assert (=> b!6925749 (= e!4167895 call!629441)))

(declare-fun b!6925750 () Bool)

(declare-fun res!2824402 () Bool)

(declare-fun e!4167898 () Bool)

(assert (=> b!6925750 (=> res!2824402 e!4167898)))

(assert (=> b!6925750 (= res!2824402 (not (is-Concat!25773 r2!6280)))))

(declare-fun e!4167897 () Bool)

(assert (=> b!6925750 (= e!4167897 e!4167898)))

(declare-fun bm!629434 () Bool)

(declare-fun call!629439 () Bool)

(assert (=> bm!629434 (= call!629439 call!629441)))

(declare-fun b!6925751 () Bool)

(declare-fun e!4167892 () Bool)

(declare-fun e!4167896 () Bool)

(assert (=> b!6925751 (= e!4167892 e!4167896)))

(declare-fun c!1285596 () Bool)

(assert (=> b!6925751 (= c!1285596 (is-Star!16928 r2!6280))))

(declare-fun b!6925752 () Bool)

(assert (=> b!6925752 (= e!4167896 e!4167895)))

(declare-fun res!2824399 () Bool)

(declare-fun nullable!6755 (Regex!16928) Bool)

(assert (=> b!6925752 (= res!2824399 (not (nullable!6755 (reg!17257 r2!6280))))))

(assert (=> b!6925752 (=> (not res!2824399) (not e!4167895))))

(declare-fun bm!629435 () Bool)

(declare-fun c!1285597 () Bool)

(assert (=> bm!629435 (= call!629441 (validRegex!8634 (ite c!1285596 (reg!17257 r2!6280) (ite c!1285597 (regOne!34369 r2!6280) (regTwo!34368 r2!6280)))))))

(declare-fun b!6925753 () Bool)

(declare-fun e!4167893 () Bool)

(declare-fun call!629440 () Bool)

(assert (=> b!6925753 (= e!4167893 call!629440)))

(declare-fun b!6925754 () Bool)

(declare-fun e!4167894 () Bool)

(assert (=> b!6925754 (= e!4167898 e!4167894)))

(declare-fun res!2824398 () Bool)

(assert (=> b!6925754 (=> (not res!2824398) (not e!4167894))))

(assert (=> b!6925754 (= res!2824398 call!629440)))

(declare-fun d!2165250 () Bool)

(declare-fun res!2824401 () Bool)

(assert (=> d!2165250 (=> res!2824401 e!4167892)))

(assert (=> d!2165250 (= res!2824401 (is-ElementMatch!16928 r2!6280))))

(assert (=> d!2165250 (= (validRegex!8634 r2!6280) e!4167892)))

(declare-fun b!6925755 () Bool)

(assert (=> b!6925755 (= e!4167894 call!629439)))

(declare-fun bm!629436 () Bool)

(assert (=> bm!629436 (= call!629440 (validRegex!8634 (ite c!1285597 (regTwo!34369 r2!6280) (regOne!34368 r2!6280))))))

(declare-fun b!6925756 () Bool)

(declare-fun res!2824400 () Bool)

(assert (=> b!6925756 (=> (not res!2824400) (not e!4167893))))

(assert (=> b!6925756 (= res!2824400 call!629439)))

(assert (=> b!6925756 (= e!4167897 e!4167893)))

(declare-fun b!6925757 () Bool)

(assert (=> b!6925757 (= e!4167896 e!4167897)))

(assert (=> b!6925757 (= c!1285597 (is-Union!16928 r2!6280))))

(assert (= (and d!2165250 (not res!2824401)) b!6925751))

(assert (= (and b!6925751 c!1285596) b!6925752))

(assert (= (and b!6925751 (not c!1285596)) b!6925757))

(assert (= (and b!6925752 res!2824399) b!6925749))

(assert (= (and b!6925757 c!1285597) b!6925756))

(assert (= (and b!6925757 (not c!1285597)) b!6925750))

(assert (= (and b!6925756 res!2824400) b!6925753))

(assert (= (and b!6925750 (not res!2824402)) b!6925754))

(assert (= (and b!6925754 res!2824398) b!6925755))

(assert (= (or b!6925756 b!6925755) bm!629434))

(assert (= (or b!6925753 b!6925754) bm!629436))

(assert (= (or b!6925749 bm!629434) bm!629435))

(declare-fun m!7634630 () Bool)

(assert (=> b!6925752 m!7634630))

(declare-fun m!7634632 () Bool)

(assert (=> bm!629435 m!7634632))

(declare-fun m!7634634 () Bool)

(assert (=> bm!629436 m!7634634))

(assert (=> b!6925566 d!2165250))

(declare-fun b!6925767 () Bool)

(declare-fun e!4167904 () List!66681)

(assert (=> b!6925767 (= e!4167904 (Cons!66557 (h!73005 (_1!37088 lt!2471739)) (++!14971 (t!380424 (_1!37088 lt!2471739)) (_2!37088 lt!2471739))))))

(declare-fun d!2165254 () Bool)

(declare-fun e!4167903 () Bool)

(assert (=> d!2165254 e!4167903))

(declare-fun res!2824407 () Bool)

(assert (=> d!2165254 (=> (not res!2824407) (not e!4167903))))

(declare-fun lt!2471842 () List!66681)

(declare-fun content!13083 (List!66681) (Set C!34126))

(assert (=> d!2165254 (= res!2824407 (= (content!13083 lt!2471842) (set.union (content!13083 (_1!37088 lt!2471739)) (content!13083 (_2!37088 lt!2471739)))))))

(assert (=> d!2165254 (= lt!2471842 e!4167904)))

(declare-fun c!1285600 () Bool)

(assert (=> d!2165254 (= c!1285600 (is-Nil!66557 (_1!37088 lt!2471739)))))

(assert (=> d!2165254 (= (++!14971 (_1!37088 lt!2471739) (_2!37088 lt!2471739)) lt!2471842)))

(declare-fun b!6925769 () Bool)

(assert (=> b!6925769 (= e!4167903 (or (not (= (_2!37088 lt!2471739) Nil!66557)) (= lt!2471842 (_1!37088 lt!2471739))))))

(declare-fun b!6925768 () Bool)

(declare-fun res!2824408 () Bool)

(assert (=> b!6925768 (=> (not res!2824408) (not e!4167903))))

(declare-fun size!40780 (List!66681) Int)

(assert (=> b!6925768 (= res!2824408 (= (size!40780 lt!2471842) (+ (size!40780 (_1!37088 lt!2471739)) (size!40780 (_2!37088 lt!2471739)))))))

(declare-fun b!6925766 () Bool)

(assert (=> b!6925766 (= e!4167904 (_2!37088 lt!2471739))))

(assert (= (and d!2165254 c!1285600) b!6925766))

(assert (= (and d!2165254 (not c!1285600)) b!6925767))

(assert (= (and d!2165254 res!2824407) b!6925768))

(assert (= (and b!6925768 res!2824408) b!6925769))

(declare-fun m!7634636 () Bool)

(assert (=> b!6925767 m!7634636))

(declare-fun m!7634638 () Bool)

(assert (=> d!2165254 m!7634638))

(declare-fun m!7634640 () Bool)

(assert (=> d!2165254 m!7634640))

(declare-fun m!7634642 () Bool)

(assert (=> d!2165254 m!7634642))

(declare-fun m!7634644 () Bool)

(assert (=> b!6925768 m!7634644))

(declare-fun m!7634646 () Bool)

(assert (=> b!6925768 m!7634646))

(declare-fun m!7634648 () Bool)

(assert (=> b!6925768 m!7634648))

(assert (=> b!6925577 d!2165254))

(declare-fun bs!1848616 () Bool)

(declare-fun b!6925811 () Bool)

(assert (= bs!1848616 (and b!6925811 b!6925565)))

(declare-fun lambda!393961 () Int)

(assert (=> bs!1848616 (not (= lambda!393961 lambda!393929))))

(declare-fun bs!1848617 () Bool)

(assert (= bs!1848617 (and b!6925811 b!6925580)))

(assert (=> bs!1848617 (not (= lambda!393961 lambda!393931))))

(assert (=> bs!1848617 (not (= lambda!393961 lambda!393932))))

(assert (=> bs!1848616 (not (= lambda!393961 lambda!393930))))

(declare-fun bs!1848618 () Bool)

(assert (= bs!1848618 (and b!6925811 b!6925582)))

(assert (=> bs!1848618 (not (= lambda!393961 lambda!393928))))

(assert (=> bs!1848618 (not (= lambda!393961 lambda!393927))))

(assert (=> b!6925811 true))

(assert (=> b!6925811 true))

(declare-fun bs!1848619 () Bool)

(declare-fun b!6925809 () Bool)

(assert (= bs!1848619 (and b!6925809 b!6925811)))

(declare-fun lambda!393962 () Int)

(assert (=> bs!1848619 (not (= lambda!393962 lambda!393961))))

(declare-fun bs!1848620 () Bool)

(assert (= bs!1848620 (and b!6925809 b!6925565)))

(assert (=> bs!1848620 (not (= lambda!393962 lambda!393929))))

(declare-fun bs!1848621 () Bool)

(assert (= bs!1848621 (and b!6925809 b!6925580)))

(assert (=> bs!1848621 (not (= lambda!393962 lambda!393931))))

(assert (=> bs!1848621 (= (and (= (_2!37088 lt!2471739) lt!2471730) (= (regOne!34368 r2!6280) r2!6280) (= (regTwo!34368 r2!6280) r3!135)) (= lambda!393962 lambda!393932))))

(assert (=> bs!1848620 (= (and (= (_2!37088 lt!2471739) (_1!37088 lt!2471720)) (= (regOne!34368 r2!6280) r1!6342) (= (regTwo!34368 r2!6280) r2!6280)) (= lambda!393962 lambda!393930))))

(declare-fun bs!1848622 () Bool)

(assert (= bs!1848622 (and b!6925809 b!6925582)))

(assert (=> bs!1848622 (= (and (= (_2!37088 lt!2471739) s!14361) (= (regOne!34368 r2!6280) lt!2471732) (= (regTwo!34368 r2!6280) r3!135)) (= lambda!393962 lambda!393928))))

(assert (=> bs!1848622 (not (= lambda!393962 lambda!393927))))

(assert (=> b!6925809 true))

(assert (=> b!6925809 true))

(declare-fun call!629447 () Bool)

(declare-fun c!1285613 () Bool)

(declare-fun bm!629441 () Bool)

(assert (=> bm!629441 (= call!629447 (Exists!3930 (ite c!1285613 lambda!393961 lambda!393962)))))

(declare-fun bm!629442 () Bool)

(declare-fun call!629446 () Bool)

(declare-fun isEmpty!38812 (List!66681) Bool)

(assert (=> bm!629442 (= call!629446 (isEmpty!38812 (_2!37088 lt!2471739)))))

(declare-fun b!6925806 () Bool)

(declare-fun c!1285611 () Bool)

(assert (=> b!6925806 (= c!1285611 (is-ElementMatch!16928 r2!6280))))

(declare-fun e!4167926 () Bool)

(declare-fun e!4167930 () Bool)

(assert (=> b!6925806 (= e!4167926 e!4167930)))

(declare-fun b!6925807 () Bool)

(declare-fun c!1285614 () Bool)

(assert (=> b!6925807 (= c!1285614 (is-Union!16928 r2!6280))))

(declare-fun e!4167931 () Bool)

(assert (=> b!6925807 (= e!4167930 e!4167931)))

(declare-fun e!4167925 () Bool)

(assert (=> b!6925809 (= e!4167925 call!629447)))

(declare-fun b!6925810 () Bool)

(declare-fun e!4167928 () Bool)

(assert (=> b!6925810 (= e!4167928 e!4167926)))

(declare-fun res!2824426 () Bool)

(assert (=> b!6925810 (= res!2824426 (not (is-EmptyLang!16928 r2!6280)))))

(assert (=> b!6925810 (=> (not res!2824426) (not e!4167926))))

(declare-fun e!4167927 () Bool)

(assert (=> b!6925811 (= e!4167927 call!629447)))

(declare-fun b!6925812 () Bool)

(declare-fun e!4167929 () Bool)

(assert (=> b!6925812 (= e!4167931 e!4167929)))

(declare-fun res!2824427 () Bool)

(assert (=> b!6925812 (= res!2824427 (matchRSpec!3985 (regOne!34369 r2!6280) (_2!37088 lt!2471739)))))

(assert (=> b!6925812 (=> res!2824427 e!4167929)))

(declare-fun d!2165256 () Bool)

(declare-fun c!1285612 () Bool)

(assert (=> d!2165256 (= c!1285612 (is-EmptyExpr!16928 r2!6280))))

(assert (=> d!2165256 (= (matchRSpec!3985 r2!6280 (_2!37088 lt!2471739)) e!4167928)))

(declare-fun b!6925808 () Bool)

(assert (=> b!6925808 (= e!4167929 (matchRSpec!3985 (regTwo!34369 r2!6280) (_2!37088 lt!2471739)))))

(declare-fun b!6925813 () Bool)

(declare-fun res!2824425 () Bool)

(assert (=> b!6925813 (=> res!2824425 e!4167927)))

(assert (=> b!6925813 (= res!2824425 call!629446)))

(assert (=> b!6925813 (= e!4167925 e!4167927)))

(declare-fun b!6925814 () Bool)

(assert (=> b!6925814 (= e!4167928 call!629446)))

(declare-fun b!6925815 () Bool)

(assert (=> b!6925815 (= e!4167930 (= (_2!37088 lt!2471739) (Cons!66557 (c!1285584 r2!6280) Nil!66557)))))

(declare-fun b!6925816 () Bool)

(assert (=> b!6925816 (= e!4167931 e!4167925)))

(assert (=> b!6925816 (= c!1285613 (is-Star!16928 r2!6280))))

(assert (= (and d!2165256 c!1285612) b!6925814))

(assert (= (and d!2165256 (not c!1285612)) b!6925810))

(assert (= (and b!6925810 res!2824426) b!6925806))

(assert (= (and b!6925806 c!1285611) b!6925815))

(assert (= (and b!6925806 (not c!1285611)) b!6925807))

(assert (= (and b!6925807 c!1285614) b!6925812))

(assert (= (and b!6925807 (not c!1285614)) b!6925816))

(assert (= (and b!6925812 (not res!2824427)) b!6925808))

(assert (= (and b!6925816 c!1285613) b!6925813))

(assert (= (and b!6925816 (not c!1285613)) b!6925809))

(assert (= (and b!6925813 (not res!2824425)) b!6925811))

(assert (= (or b!6925811 b!6925809) bm!629441))

(assert (= (or b!6925814 b!6925813) bm!629442))

(declare-fun m!7634654 () Bool)

(assert (=> bm!629441 m!7634654))

(declare-fun m!7634656 () Bool)

(assert (=> bm!629442 m!7634656))

(declare-fun m!7634658 () Bool)

(assert (=> b!6925812 m!7634658))

(declare-fun m!7634660 () Bool)

(assert (=> b!6925808 m!7634660))

(assert (=> b!6925577 d!2165256))

(declare-fun d!2165262 () Bool)

(assert (=> d!2165262 (= (matchR!9067 r2!6280 (_2!37088 lt!2471739)) (matchRSpec!3985 r2!6280 (_2!37088 lt!2471739)))))

(declare-fun lt!2471847 () Unit!160580)

(declare-fun choose!51570 (Regex!16928 List!66681) Unit!160580)

(assert (=> d!2165262 (= lt!2471847 (choose!51570 r2!6280 (_2!37088 lt!2471739)))))

(assert (=> d!2165262 (validRegex!8634 r2!6280)))

(assert (=> d!2165262 (= (mainMatchTheorem!3985 r2!6280 (_2!37088 lt!2471739)) lt!2471847)))

(declare-fun bs!1848623 () Bool)

(assert (= bs!1848623 d!2165262))

(assert (=> bs!1848623 m!7634418))

(assert (=> bs!1848623 m!7634508))

(declare-fun m!7634662 () Bool)

(assert (=> bs!1848623 m!7634662))

(assert (=> bs!1848623 m!7634450))

(assert (=> b!6925577 d!2165262))

(declare-fun d!2165264 () Bool)

(assert (=> d!2165264 (= (matchR!9067 r1!6342 (_1!37088 lt!2471739)) (matchRSpec!3985 r1!6342 (_1!37088 lt!2471739)))))

(declare-fun lt!2471848 () Unit!160580)

(assert (=> d!2165264 (= lt!2471848 (choose!51570 r1!6342 (_1!37088 lt!2471739)))))

(assert (=> d!2165264 (validRegex!8634 r1!6342)))

(assert (=> d!2165264 (= (mainMatchTheorem!3985 r1!6342 (_1!37088 lt!2471739)) lt!2471848)))

(declare-fun bs!1848624 () Bool)

(assert (= bs!1848624 d!2165264))

(assert (=> bs!1848624 m!7634496))

(assert (=> bs!1848624 m!7634512))

(declare-fun m!7634664 () Bool)

(assert (=> bs!1848624 m!7634664))

(assert (=> bs!1848624 m!7634456))

(assert (=> b!6925577 d!2165264))

(declare-fun bs!1848625 () Bool)

(declare-fun b!6925846 () Bool)

(assert (= bs!1848625 (and b!6925846 b!6925811)))

(declare-fun lambda!393965 () Int)

(assert (=> bs!1848625 (= (and (= (_1!37088 lt!2471739) (_2!37088 lt!2471739)) (= (reg!17257 r1!6342) (reg!17257 r2!6280)) (= r1!6342 r2!6280)) (= lambda!393965 lambda!393961))))

(declare-fun bs!1848626 () Bool)

(assert (= bs!1848626 (and b!6925846 b!6925565)))

(assert (=> bs!1848626 (not (= lambda!393965 lambda!393929))))

(declare-fun bs!1848627 () Bool)

(assert (= bs!1848627 (and b!6925846 b!6925580)))

(assert (=> bs!1848627 (not (= lambda!393965 lambda!393931))))

(assert (=> bs!1848627 (not (= lambda!393965 lambda!393932))))

(assert (=> bs!1848626 (not (= lambda!393965 lambda!393930))))

(declare-fun bs!1848628 () Bool)

(assert (= bs!1848628 (and b!6925846 b!6925582)))

(assert (=> bs!1848628 (not (= lambda!393965 lambda!393928))))

(declare-fun bs!1848629 () Bool)

(assert (= bs!1848629 (and b!6925846 b!6925809)))

(assert (=> bs!1848629 (not (= lambda!393965 lambda!393962))))

(assert (=> bs!1848628 (not (= lambda!393965 lambda!393927))))

(assert (=> b!6925846 true))

(assert (=> b!6925846 true))

(declare-fun bs!1848630 () Bool)

(declare-fun b!6925844 () Bool)

(assert (= bs!1848630 (and b!6925844 b!6925811)))

(declare-fun lambda!393966 () Int)

(assert (=> bs!1848630 (not (= lambda!393966 lambda!393961))))

(declare-fun bs!1848631 () Bool)

(assert (= bs!1848631 (and b!6925844 b!6925565)))

(assert (=> bs!1848631 (not (= lambda!393966 lambda!393929))))

(declare-fun bs!1848632 () Bool)

(assert (= bs!1848632 (and b!6925844 b!6925846)))

(assert (=> bs!1848632 (not (= lambda!393966 lambda!393965))))

(declare-fun bs!1848633 () Bool)

(assert (= bs!1848633 (and b!6925844 b!6925580)))

(assert (=> bs!1848633 (not (= lambda!393966 lambda!393931))))

(assert (=> bs!1848633 (= (and (= (_1!37088 lt!2471739) lt!2471730) (= (regOne!34368 r1!6342) r2!6280) (= (regTwo!34368 r1!6342) r3!135)) (= lambda!393966 lambda!393932))))

(assert (=> bs!1848631 (= (and (= (_1!37088 lt!2471739) (_1!37088 lt!2471720)) (= (regOne!34368 r1!6342) r1!6342) (= (regTwo!34368 r1!6342) r2!6280)) (= lambda!393966 lambda!393930))))

(declare-fun bs!1848634 () Bool)

(assert (= bs!1848634 (and b!6925844 b!6925582)))

(assert (=> bs!1848634 (= (and (= (_1!37088 lt!2471739) s!14361) (= (regOne!34368 r1!6342) lt!2471732) (= (regTwo!34368 r1!6342) r3!135)) (= lambda!393966 lambda!393928))))

(declare-fun bs!1848635 () Bool)

(assert (= bs!1848635 (and b!6925844 b!6925809)))

(assert (=> bs!1848635 (= (and (= (_1!37088 lt!2471739) (_2!37088 lt!2471739)) (= (regOne!34368 r1!6342) (regOne!34368 r2!6280)) (= (regTwo!34368 r1!6342) (regTwo!34368 r2!6280))) (= lambda!393966 lambda!393962))))

(assert (=> bs!1848634 (not (= lambda!393966 lambda!393927))))

(assert (=> b!6925844 true))

(assert (=> b!6925844 true))

(declare-fun call!629449 () Bool)

(declare-fun c!1285623 () Bool)

(declare-fun bm!629443 () Bool)

(assert (=> bm!629443 (= call!629449 (Exists!3930 (ite c!1285623 lambda!393965 lambda!393966)))))

(declare-fun bm!629444 () Bool)

(declare-fun call!629448 () Bool)

(assert (=> bm!629444 (= call!629448 (isEmpty!38812 (_1!37088 lt!2471739)))))

(declare-fun b!6925841 () Bool)

(declare-fun c!1285621 () Bool)

(assert (=> b!6925841 (= c!1285621 (is-ElementMatch!16928 r1!6342))))

(declare-fun e!4167947 () Bool)

(declare-fun e!4167951 () Bool)

(assert (=> b!6925841 (= e!4167947 e!4167951)))

(declare-fun b!6925842 () Bool)

(declare-fun c!1285624 () Bool)

(assert (=> b!6925842 (= c!1285624 (is-Union!16928 r1!6342))))

(declare-fun e!4167952 () Bool)

(assert (=> b!6925842 (= e!4167951 e!4167952)))

(declare-fun e!4167946 () Bool)

(assert (=> b!6925844 (= e!4167946 call!629449)))

(declare-fun b!6925845 () Bool)

(declare-fun e!4167949 () Bool)

(assert (=> b!6925845 (= e!4167949 e!4167947)))

(declare-fun res!2824441 () Bool)

(assert (=> b!6925845 (= res!2824441 (not (is-EmptyLang!16928 r1!6342)))))

(assert (=> b!6925845 (=> (not res!2824441) (not e!4167947))))

(declare-fun e!4167948 () Bool)

(assert (=> b!6925846 (= e!4167948 call!629449)))

(declare-fun b!6925847 () Bool)

(declare-fun e!4167950 () Bool)

(assert (=> b!6925847 (= e!4167952 e!4167950)))

(declare-fun res!2824442 () Bool)

(assert (=> b!6925847 (= res!2824442 (matchRSpec!3985 (regOne!34369 r1!6342) (_1!37088 lt!2471739)))))

(assert (=> b!6925847 (=> res!2824442 e!4167950)))

(declare-fun d!2165266 () Bool)

(declare-fun c!1285622 () Bool)

(assert (=> d!2165266 (= c!1285622 (is-EmptyExpr!16928 r1!6342))))

(assert (=> d!2165266 (= (matchRSpec!3985 r1!6342 (_1!37088 lt!2471739)) e!4167949)))

(declare-fun b!6925843 () Bool)

(assert (=> b!6925843 (= e!4167950 (matchRSpec!3985 (regTwo!34369 r1!6342) (_1!37088 lt!2471739)))))

(declare-fun b!6925848 () Bool)

(declare-fun res!2824440 () Bool)

(assert (=> b!6925848 (=> res!2824440 e!4167948)))

(assert (=> b!6925848 (= res!2824440 call!629448)))

(assert (=> b!6925848 (= e!4167946 e!4167948)))

(declare-fun b!6925849 () Bool)

(assert (=> b!6925849 (= e!4167949 call!629448)))

(declare-fun b!6925850 () Bool)

(assert (=> b!6925850 (= e!4167951 (= (_1!37088 lt!2471739) (Cons!66557 (c!1285584 r1!6342) Nil!66557)))))

(declare-fun b!6925851 () Bool)

(assert (=> b!6925851 (= e!4167952 e!4167946)))

(assert (=> b!6925851 (= c!1285623 (is-Star!16928 r1!6342))))

(assert (= (and d!2165266 c!1285622) b!6925849))

(assert (= (and d!2165266 (not c!1285622)) b!6925845))

(assert (= (and b!6925845 res!2824441) b!6925841))

(assert (= (and b!6925841 c!1285621) b!6925850))

(assert (= (and b!6925841 (not c!1285621)) b!6925842))

(assert (= (and b!6925842 c!1285624) b!6925847))

(assert (= (and b!6925842 (not c!1285624)) b!6925851))

(assert (= (and b!6925847 (not res!2824442)) b!6925843))

(assert (= (and b!6925851 c!1285623) b!6925848))

(assert (= (and b!6925851 (not c!1285623)) b!6925844))

(assert (= (and b!6925848 (not res!2824440)) b!6925846))

(assert (= (or b!6925846 b!6925844) bm!629443))

(assert (= (or b!6925849 b!6925848) bm!629444))

(declare-fun m!7634666 () Bool)

(assert (=> bm!629443 m!7634666))

(declare-fun m!7634668 () Bool)

(assert (=> bm!629444 m!7634668))

(declare-fun m!7634670 () Bool)

(assert (=> b!6925847 m!7634670))

(declare-fun m!7634672 () Bool)

(assert (=> b!6925843 m!7634672))

(assert (=> b!6925577 d!2165266))

(declare-fun b!6925857 () Bool)

(declare-fun e!4167956 () List!66681)

(assert (=> b!6925857 (= e!4167956 (Cons!66557 (h!73005 (++!14971 (_1!37088 lt!2471739) (_2!37088 lt!2471739))) (++!14971 (t!380424 (++!14971 (_1!37088 lt!2471739) (_2!37088 lt!2471739))) (_2!37088 lt!2471720))))))

(declare-fun d!2165268 () Bool)

(declare-fun e!4167955 () Bool)

(assert (=> d!2165268 e!4167955))

(declare-fun res!2824447 () Bool)

(assert (=> d!2165268 (=> (not res!2824447) (not e!4167955))))

(declare-fun lt!2471849 () List!66681)

(assert (=> d!2165268 (= res!2824447 (= (content!13083 lt!2471849) (set.union (content!13083 (++!14971 (_1!37088 lt!2471739) (_2!37088 lt!2471739))) (content!13083 (_2!37088 lt!2471720)))))))

(assert (=> d!2165268 (= lt!2471849 e!4167956)))

(declare-fun c!1285625 () Bool)

(assert (=> d!2165268 (= c!1285625 (is-Nil!66557 (++!14971 (_1!37088 lt!2471739) (_2!37088 lt!2471739))))))

(assert (=> d!2165268 (= (++!14971 (++!14971 (_1!37088 lt!2471739) (_2!37088 lt!2471739)) (_2!37088 lt!2471720)) lt!2471849)))

(declare-fun b!6925859 () Bool)

(assert (=> b!6925859 (= e!4167955 (or (not (= (_2!37088 lt!2471720) Nil!66557)) (= lt!2471849 (++!14971 (_1!37088 lt!2471739) (_2!37088 lt!2471739)))))))

(declare-fun b!6925858 () Bool)

(declare-fun res!2824448 () Bool)

(assert (=> b!6925858 (=> (not res!2824448) (not e!4167955))))

(assert (=> b!6925858 (= res!2824448 (= (size!40780 lt!2471849) (+ (size!40780 (++!14971 (_1!37088 lt!2471739) (_2!37088 lt!2471739))) (size!40780 (_2!37088 lt!2471720)))))))

(declare-fun b!6925856 () Bool)

(assert (=> b!6925856 (= e!4167956 (_2!37088 lt!2471720))))

(assert (= (and d!2165268 c!1285625) b!6925856))

(assert (= (and d!2165268 (not c!1285625)) b!6925857))

(assert (= (and d!2165268 res!2824447) b!6925858))

(assert (= (and b!6925858 res!2824448) b!6925859))

(declare-fun m!7634674 () Bool)

(assert (=> b!6925857 m!7634674))

(declare-fun m!7634676 () Bool)

(assert (=> d!2165268 m!7634676))

(assert (=> d!2165268 m!7634516))

(declare-fun m!7634678 () Bool)

(assert (=> d!2165268 m!7634678))

(declare-fun m!7634680 () Bool)

(assert (=> d!2165268 m!7634680))

(declare-fun m!7634682 () Bool)

(assert (=> b!6925858 m!7634682))

(assert (=> b!6925858 m!7634516))

(declare-fun m!7634684 () Bool)

(assert (=> b!6925858 m!7634684))

(declare-fun m!7634686 () Bool)

(assert (=> b!6925858 m!7634686))

(assert (=> b!6925577 d!2165268))

(declare-fun b!6925860 () Bool)

(declare-fun e!4167960 () Bool)

(declare-fun call!629452 () Bool)

(assert (=> b!6925860 (= e!4167960 call!629452)))

(declare-fun b!6925861 () Bool)

(declare-fun res!2824453 () Bool)

(declare-fun e!4167963 () Bool)

(assert (=> b!6925861 (=> res!2824453 e!4167963)))

(assert (=> b!6925861 (= res!2824453 (not (is-Concat!25773 r3!135)))))

(declare-fun e!4167962 () Bool)

(assert (=> b!6925861 (= e!4167962 e!4167963)))

(declare-fun bm!629445 () Bool)

(declare-fun call!629450 () Bool)

(assert (=> bm!629445 (= call!629450 call!629452)))

(declare-fun b!6925862 () Bool)

(declare-fun e!4167957 () Bool)

(declare-fun e!4167961 () Bool)

(assert (=> b!6925862 (= e!4167957 e!4167961)))

(declare-fun c!1285626 () Bool)

(assert (=> b!6925862 (= c!1285626 (is-Star!16928 r3!135))))

(declare-fun b!6925863 () Bool)

(assert (=> b!6925863 (= e!4167961 e!4167960)))

(declare-fun res!2824450 () Bool)

(assert (=> b!6925863 (= res!2824450 (not (nullable!6755 (reg!17257 r3!135))))))

(assert (=> b!6925863 (=> (not res!2824450) (not e!4167960))))

(declare-fun bm!629446 () Bool)

(declare-fun c!1285627 () Bool)

(assert (=> bm!629446 (= call!629452 (validRegex!8634 (ite c!1285626 (reg!17257 r3!135) (ite c!1285627 (regOne!34369 r3!135) (regTwo!34368 r3!135)))))))

(declare-fun b!6925864 () Bool)

(declare-fun e!4167958 () Bool)

(declare-fun call!629451 () Bool)

(assert (=> b!6925864 (= e!4167958 call!629451)))

(declare-fun b!6925865 () Bool)

(declare-fun e!4167959 () Bool)

(assert (=> b!6925865 (= e!4167963 e!4167959)))

(declare-fun res!2824449 () Bool)

(assert (=> b!6925865 (=> (not res!2824449) (not e!4167959))))

(assert (=> b!6925865 (= res!2824449 call!629451)))

(declare-fun d!2165270 () Bool)

(declare-fun res!2824452 () Bool)

(assert (=> d!2165270 (=> res!2824452 e!4167957)))

(assert (=> d!2165270 (= res!2824452 (is-ElementMatch!16928 r3!135))))

(assert (=> d!2165270 (= (validRegex!8634 r3!135) e!4167957)))

(declare-fun b!6925866 () Bool)

(assert (=> b!6925866 (= e!4167959 call!629450)))

(declare-fun bm!629447 () Bool)

(assert (=> bm!629447 (= call!629451 (validRegex!8634 (ite c!1285627 (regTwo!34369 r3!135) (regOne!34368 r3!135))))))

(declare-fun b!6925867 () Bool)

(declare-fun res!2824451 () Bool)

(assert (=> b!6925867 (=> (not res!2824451) (not e!4167958))))

(assert (=> b!6925867 (= res!2824451 call!629450)))

(assert (=> b!6925867 (= e!4167962 e!4167958)))

(declare-fun b!6925868 () Bool)

(assert (=> b!6925868 (= e!4167961 e!4167962)))

(assert (=> b!6925868 (= c!1285627 (is-Union!16928 r3!135))))

(assert (= (and d!2165270 (not res!2824452)) b!6925862))

(assert (= (and b!6925862 c!1285626) b!6925863))

(assert (= (and b!6925862 (not c!1285626)) b!6925868))

(assert (= (and b!6925863 res!2824450) b!6925860))

(assert (= (and b!6925868 c!1285627) b!6925867))

(assert (= (and b!6925868 (not c!1285627)) b!6925861))

(assert (= (and b!6925867 res!2824451) b!6925864))

(assert (= (and b!6925861 (not res!2824453)) b!6925865))

(assert (= (and b!6925865 res!2824449) b!6925866))

(assert (= (or b!6925867 b!6925866) bm!629445))

(assert (= (or b!6925864 b!6925865) bm!629447))

(assert (= (or b!6925860 bm!629445) bm!629446))

(declare-fun m!7634688 () Bool)

(assert (=> b!6925863 m!7634688))

(declare-fun m!7634690 () Bool)

(assert (=> bm!629446 m!7634690))

(declare-fun m!7634692 () Bool)

(assert (=> bm!629447 m!7634692))

(assert (=> b!6925569 d!2165270))

(declare-fun d!2165272 () Bool)

(declare-fun e!4167983 () Bool)

(assert (=> d!2165272 e!4167983))

(declare-fun res!2824468 () Bool)

(assert (=> d!2165272 (=> res!2824468 e!4167983)))

(declare-fun e!4167985 () Bool)

(assert (=> d!2165272 (= res!2824468 e!4167985)))

(declare-fun res!2824469 () Bool)

(assert (=> d!2165272 (=> (not res!2824469) (not e!4167985))))

(declare-fun lt!2471857 () Option!16697)

(assert (=> d!2165272 (= res!2824469 (isDefined!13400 lt!2471857))))

(declare-fun e!4167982 () Option!16697)

(assert (=> d!2165272 (= lt!2471857 e!4167982)))

(declare-fun c!1285636 () Bool)

(declare-fun e!4167984 () Bool)

(assert (=> d!2165272 (= c!1285636 e!4167984)))

(declare-fun res!2824471 () Bool)

(assert (=> d!2165272 (=> (not res!2824471) (not e!4167984))))

(assert (=> d!2165272 (= res!2824471 (matchR!9067 r2!6280 Nil!66557))))

(assert (=> d!2165272 (validRegex!8634 r2!6280)))

(assert (=> d!2165272 (= (findConcatSeparation!3111 r2!6280 r3!135 Nil!66557 lt!2471730 lt!2471730) lt!2471857)))

(declare-fun b!6925898 () Bool)

(assert (=> b!6925898 (= e!4167983 (not (isDefined!13400 lt!2471857)))))

(declare-fun b!6925899 () Bool)

(assert (=> b!6925899 (= e!4167984 (matchR!9067 r3!135 lt!2471730))))

(declare-fun b!6925900 () Bool)

(declare-fun e!4167981 () Option!16697)

(assert (=> b!6925900 (= e!4167981 None!16696)))

(declare-fun b!6925901 () Bool)

(declare-fun res!2824470 () Bool)

(assert (=> b!6925901 (=> (not res!2824470) (not e!4167985))))

(assert (=> b!6925901 (= res!2824470 (matchR!9067 r2!6280 (_1!37088 (get!23333 lt!2471857))))))

(declare-fun b!6925902 () Bool)

(declare-fun res!2824467 () Bool)

(assert (=> b!6925902 (=> (not res!2824467) (not e!4167985))))

(assert (=> b!6925902 (= res!2824467 (matchR!9067 r3!135 (_2!37088 (get!23333 lt!2471857))))))

(declare-fun b!6925903 () Bool)

(declare-fun lt!2471858 () Unit!160580)

(declare-fun lt!2471856 () Unit!160580)

(assert (=> b!6925903 (= lt!2471858 lt!2471856)))

(assert (=> b!6925903 (= (++!14971 (++!14971 Nil!66557 (Cons!66557 (h!73005 lt!2471730) Nil!66557)) (t!380424 lt!2471730)) lt!2471730)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2834 (List!66681 C!34126 List!66681 List!66681) Unit!160580)

(assert (=> b!6925903 (= lt!2471856 (lemmaMoveElementToOtherListKeepsConcatEq!2834 Nil!66557 (h!73005 lt!2471730) (t!380424 lt!2471730) lt!2471730))))

(assert (=> b!6925903 (= e!4167981 (findConcatSeparation!3111 r2!6280 r3!135 (++!14971 Nil!66557 (Cons!66557 (h!73005 lt!2471730) Nil!66557)) (t!380424 lt!2471730) lt!2471730))))

(declare-fun b!6925904 () Bool)

(assert (=> b!6925904 (= e!4167982 (Some!16696 (tuple2!67571 Nil!66557 lt!2471730)))))

(declare-fun b!6925905 () Bool)

(assert (=> b!6925905 (= e!4167985 (= (++!14971 (_1!37088 (get!23333 lt!2471857)) (_2!37088 (get!23333 lt!2471857))) lt!2471730))))

(declare-fun b!6925906 () Bool)

(assert (=> b!6925906 (= e!4167982 e!4167981)))

(declare-fun c!1285637 () Bool)

(assert (=> b!6925906 (= c!1285637 (is-Nil!66557 lt!2471730))))

(assert (= (and d!2165272 res!2824471) b!6925899))

(assert (= (and d!2165272 c!1285636) b!6925904))

(assert (= (and d!2165272 (not c!1285636)) b!6925906))

(assert (= (and b!6925906 c!1285637) b!6925900))

(assert (= (and b!6925906 (not c!1285637)) b!6925903))

(assert (= (and d!2165272 res!2824469) b!6925901))

(assert (= (and b!6925901 res!2824470) b!6925902))

(assert (= (and b!6925902 res!2824467) b!6925905))

(assert (= (and d!2165272 (not res!2824468)) b!6925898))

(declare-fun m!7634694 () Bool)

(assert (=> b!6925902 m!7634694))

(declare-fun m!7634696 () Bool)

(assert (=> b!6925902 m!7634696))

(declare-fun m!7634698 () Bool)

(assert (=> b!6925898 m!7634698))

(declare-fun m!7634700 () Bool)

(assert (=> b!6925899 m!7634700))

(declare-fun m!7634702 () Bool)

(assert (=> b!6925903 m!7634702))

(assert (=> b!6925903 m!7634702))

(declare-fun m!7634704 () Bool)

(assert (=> b!6925903 m!7634704))

(declare-fun m!7634706 () Bool)

(assert (=> b!6925903 m!7634706))

(assert (=> b!6925903 m!7634702))

(declare-fun m!7634708 () Bool)

(assert (=> b!6925903 m!7634708))

(assert (=> b!6925905 m!7634694))

(declare-fun m!7634710 () Bool)

(assert (=> b!6925905 m!7634710))

(assert (=> d!2165272 m!7634698))

(declare-fun m!7634712 () Bool)

(assert (=> d!2165272 m!7634712))

(assert (=> d!2165272 m!7634450))

(assert (=> b!6925901 m!7634694))

(declare-fun m!7634714 () Bool)

(assert (=> b!6925901 m!7634714))

(assert (=> b!6925580 d!2165272))

(declare-fun bs!1848648 () Bool)

(declare-fun d!2165274 () Bool)

(assert (= bs!1848648 (and d!2165274 b!6925844)))

(declare-fun lambda!393976 () Int)

(assert (=> bs!1848648 (not (= lambda!393976 lambda!393966))))

(declare-fun bs!1848649 () Bool)

(assert (= bs!1848649 (and d!2165274 b!6925811)))

(assert (=> bs!1848649 (not (= lambda!393976 lambda!393961))))

(declare-fun bs!1848650 () Bool)

(assert (= bs!1848650 (and d!2165274 b!6925565)))

(assert (=> bs!1848650 (= (and (= lt!2471730 (_1!37088 lt!2471720)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393976 lambda!393929))))

(declare-fun bs!1848651 () Bool)

(assert (= bs!1848651 (and d!2165274 b!6925846)))

(assert (=> bs!1848651 (not (= lambda!393976 lambda!393965))))

(declare-fun bs!1848652 () Bool)

(assert (= bs!1848652 (and d!2165274 b!6925580)))

(assert (=> bs!1848652 (= lambda!393976 lambda!393931)))

(assert (=> bs!1848652 (not (= lambda!393976 lambda!393932))))

(assert (=> bs!1848650 (not (= lambda!393976 lambda!393930))))

(declare-fun bs!1848653 () Bool)

(assert (= bs!1848653 (and d!2165274 b!6925582)))

(assert (=> bs!1848653 (not (= lambda!393976 lambda!393928))))

(declare-fun bs!1848654 () Bool)

(assert (= bs!1848654 (and d!2165274 b!6925809)))

(assert (=> bs!1848654 (not (= lambda!393976 lambda!393962))))

(assert (=> bs!1848653 (= (and (= lt!2471730 s!14361) (= r2!6280 lt!2471732)) (= lambda!393976 lambda!393927))))

(assert (=> d!2165274 true))

(assert (=> d!2165274 true))

(assert (=> d!2165274 true))

(declare-fun lambda!393978 () Int)

(assert (=> bs!1848648 (= (and (= lt!2471730 (_1!37088 lt!2471739)) (= r2!6280 (regOne!34368 r1!6342)) (= r3!135 (regTwo!34368 r1!6342))) (= lambda!393978 lambda!393966))))

(assert (=> bs!1848649 (not (= lambda!393978 lambda!393961))))

(assert (=> bs!1848650 (not (= lambda!393978 lambda!393929))))

(assert (=> bs!1848651 (not (= lambda!393978 lambda!393965))))

(assert (=> bs!1848652 (not (= lambda!393978 lambda!393931))))

(assert (=> bs!1848652 (= lambda!393978 lambda!393932)))

(declare-fun bs!1848658 () Bool)

(assert (= bs!1848658 d!2165274))

(assert (=> bs!1848658 (not (= lambda!393978 lambda!393976))))

(assert (=> bs!1848650 (= (and (= lt!2471730 (_1!37088 lt!2471720)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393978 lambda!393930))))

(assert (=> bs!1848653 (= (and (= lt!2471730 s!14361) (= r2!6280 lt!2471732)) (= lambda!393978 lambda!393928))))

(assert (=> bs!1848654 (= (and (= lt!2471730 (_2!37088 lt!2471739)) (= r2!6280 (regOne!34368 r2!6280)) (= r3!135 (regTwo!34368 r2!6280))) (= lambda!393978 lambda!393962))))

(assert (=> bs!1848653 (not (= lambda!393978 lambda!393927))))

(assert (=> d!2165274 true))

(assert (=> d!2165274 true))

(assert (=> d!2165274 true))

(assert (=> d!2165274 (= (Exists!3930 lambda!393976) (Exists!3930 lambda!393978))))

(declare-fun lt!2471861 () Unit!160580)

(declare-fun choose!51572 (Regex!16928 Regex!16928 List!66681) Unit!160580)

(assert (=> d!2165274 (= lt!2471861 (choose!51572 r2!6280 r3!135 lt!2471730))))

(assert (=> d!2165274 (validRegex!8634 r2!6280)))

(assert (=> d!2165274 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2397 r2!6280 r3!135 lt!2471730) lt!2471861)))

(declare-fun m!7634724 () Bool)

(assert (=> bs!1848658 m!7634724))

(declare-fun m!7634726 () Bool)

(assert (=> bs!1848658 m!7634726))

(declare-fun m!7634728 () Bool)

(assert (=> bs!1848658 m!7634728))

(assert (=> bs!1848658 m!7634450))

(assert (=> b!6925580 d!2165274))

(declare-fun d!2165278 () Bool)

(assert (=> d!2165278 (isDefined!13400 (findConcatSeparation!3111 r2!6280 r3!135 Nil!66557 lt!2471730 lt!2471730))))

(declare-fun lt!2471864 () Unit!160580)

(declare-fun choose!51573 (Regex!16928 Regex!16928 List!66681 List!66681 List!66681 List!66681 List!66681) Unit!160580)

(assert (=> d!2165278 (= lt!2471864 (choose!51573 r2!6280 r3!135 (_2!37088 lt!2471739) (_2!37088 lt!2471720) lt!2471730 Nil!66557 lt!2471730))))

(assert (=> d!2165278 (validRegex!8634 r2!6280)))

(assert (=> d!2165278 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!89 r2!6280 r3!135 (_2!37088 lt!2471739) (_2!37088 lt!2471720) lt!2471730 Nil!66557 lt!2471730) lt!2471864)))

(declare-fun bs!1848662 () Bool)

(assert (= bs!1848662 d!2165278))

(assert (=> bs!1848662 m!7634470))

(assert (=> bs!1848662 m!7634470))

(assert (=> bs!1848662 m!7634472))

(declare-fun m!7634738 () Bool)

(assert (=> bs!1848662 m!7634738))

(assert (=> bs!1848662 m!7634450))

(assert (=> b!6925580 d!2165278))

(declare-fun d!2165282 () Bool)

(declare-fun choose!51574 (Int) Bool)

(assert (=> d!2165282 (= (Exists!3930 lambda!393931) (choose!51574 lambda!393931))))

(declare-fun bs!1848663 () Bool)

(assert (= bs!1848663 d!2165282))

(declare-fun m!7634740 () Bool)

(assert (=> bs!1848663 m!7634740))

(assert (=> b!6925580 d!2165282))

(declare-fun d!2165284 () Bool)

(assert (=> d!2165284 (= (matchR!9067 lt!2471728 lt!2471730) (matchRSpec!3985 lt!2471728 lt!2471730))))

(declare-fun lt!2471865 () Unit!160580)

(assert (=> d!2165284 (= lt!2471865 (choose!51570 lt!2471728 lt!2471730))))

(assert (=> d!2165284 (validRegex!8634 lt!2471728)))

(assert (=> d!2165284 (= (mainMatchTheorem!3985 lt!2471728 lt!2471730) lt!2471865)))

(declare-fun bs!1848664 () Bool)

(assert (= bs!1848664 d!2165284))

(assert (=> bs!1848664 m!7634488))

(assert (=> bs!1848664 m!7634476))

(declare-fun m!7634742 () Bool)

(assert (=> bs!1848664 m!7634742))

(assert (=> bs!1848664 m!7634420))

(assert (=> b!6925580 d!2165284))

(declare-fun bs!1848665 () Bool)

(declare-fun d!2165286 () Bool)

(assert (= bs!1848665 (and d!2165286 b!6925844)))

(declare-fun lambda!393981 () Int)

(assert (=> bs!1848665 (not (= lambda!393981 lambda!393966))))

(declare-fun bs!1848666 () Bool)

(assert (= bs!1848666 (and d!2165286 b!6925811)))

(assert (=> bs!1848666 (not (= lambda!393981 lambda!393961))))

(declare-fun bs!1848667 () Bool)

(assert (= bs!1848667 (and d!2165286 b!6925565)))

(assert (=> bs!1848667 (= (and (= lt!2471730 (_1!37088 lt!2471720)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393981 lambda!393929))))

(declare-fun bs!1848668 () Bool)

(assert (= bs!1848668 (and d!2165286 b!6925846)))

(assert (=> bs!1848668 (not (= lambda!393981 lambda!393965))))

(declare-fun bs!1848669 () Bool)

(assert (= bs!1848669 (and d!2165286 b!6925580)))

(assert (=> bs!1848669 (not (= lambda!393981 lambda!393932))))

(declare-fun bs!1848670 () Bool)

(assert (= bs!1848670 (and d!2165286 d!2165274)))

(assert (=> bs!1848670 (= lambda!393981 lambda!393976)))

(assert (=> bs!1848667 (not (= lambda!393981 lambda!393930))))

(declare-fun bs!1848671 () Bool)

(assert (= bs!1848671 (and d!2165286 b!6925582)))

(assert (=> bs!1848671 (not (= lambda!393981 lambda!393928))))

(declare-fun bs!1848672 () Bool)

(assert (= bs!1848672 (and d!2165286 b!6925809)))

(assert (=> bs!1848672 (not (= lambda!393981 lambda!393962))))

(assert (=> bs!1848671 (= (and (= lt!2471730 s!14361) (= r2!6280 lt!2471732)) (= lambda!393981 lambda!393927))))

(assert (=> bs!1848669 (= lambda!393981 lambda!393931)))

(assert (=> bs!1848670 (not (= lambda!393981 lambda!393978))))

(assert (=> d!2165286 true))

(assert (=> d!2165286 true))

(assert (=> d!2165286 true))

(assert (=> d!2165286 (= (isDefined!13400 (findConcatSeparation!3111 r2!6280 r3!135 Nil!66557 lt!2471730 lt!2471730)) (Exists!3930 lambda!393981))))

(declare-fun lt!2471870 () Unit!160580)

(declare-fun choose!51575 (Regex!16928 Regex!16928 List!66681) Unit!160580)

(assert (=> d!2165286 (= lt!2471870 (choose!51575 r2!6280 r3!135 lt!2471730))))

(assert (=> d!2165286 (validRegex!8634 r2!6280)))

(assert (=> d!2165286 (= (lemmaFindConcatSeparationEquivalentToExists!2873 r2!6280 r3!135 lt!2471730) lt!2471870)))

(declare-fun bs!1848673 () Bool)

(assert (= bs!1848673 d!2165286))

(assert (=> bs!1848673 m!7634450))

(assert (=> bs!1848673 m!7634470))

(assert (=> bs!1848673 m!7634470))

(assert (=> bs!1848673 m!7634472))

(declare-fun m!7634744 () Bool)

(assert (=> bs!1848673 m!7634744))

(declare-fun m!7634746 () Bool)

(assert (=> bs!1848673 m!7634746))

(assert (=> b!6925580 d!2165286))

(declare-fun d!2165288 () Bool)

(assert (=> d!2165288 (= (Exists!3930 lambda!393932) (choose!51574 lambda!393932))))

(declare-fun bs!1848674 () Bool)

(assert (= bs!1848674 d!2165288))

(declare-fun m!7634748 () Bool)

(assert (=> bs!1848674 m!7634748))

(assert (=> b!6925580 d!2165288))

(declare-fun b!6925943 () Bool)

(declare-fun e!4168006 () List!66681)

(assert (=> b!6925943 (= e!4168006 (Cons!66557 (h!73005 (_2!37088 lt!2471739)) (++!14971 (t!380424 (_2!37088 lt!2471739)) (_2!37088 lt!2471720))))))

(declare-fun d!2165290 () Bool)

(declare-fun e!4168005 () Bool)

(assert (=> d!2165290 e!4168005))

(declare-fun res!2824493 () Bool)

(assert (=> d!2165290 (=> (not res!2824493) (not e!4168005))))

(declare-fun lt!2471872 () List!66681)

(assert (=> d!2165290 (= res!2824493 (= (content!13083 lt!2471872) (set.union (content!13083 (_2!37088 lt!2471739)) (content!13083 (_2!37088 lt!2471720)))))))

(assert (=> d!2165290 (= lt!2471872 e!4168006)))

(declare-fun c!1285645 () Bool)

(assert (=> d!2165290 (= c!1285645 (is-Nil!66557 (_2!37088 lt!2471739)))))

(assert (=> d!2165290 (= (++!14971 (_2!37088 lt!2471739) (_2!37088 lt!2471720)) lt!2471872)))

(declare-fun b!6925945 () Bool)

(assert (=> b!6925945 (= e!4168005 (or (not (= (_2!37088 lt!2471720) Nil!66557)) (= lt!2471872 (_2!37088 lt!2471739))))))

(declare-fun b!6925944 () Bool)

(declare-fun res!2824494 () Bool)

(assert (=> b!6925944 (=> (not res!2824494) (not e!4168005))))

(assert (=> b!6925944 (= res!2824494 (= (size!40780 lt!2471872) (+ (size!40780 (_2!37088 lt!2471739)) (size!40780 (_2!37088 lt!2471720)))))))

(declare-fun b!6925942 () Bool)

(assert (=> b!6925942 (= e!4168006 (_2!37088 lt!2471720))))

(assert (= (and d!2165290 c!1285645) b!6925942))

(assert (= (and d!2165290 (not c!1285645)) b!6925943))

(assert (= (and d!2165290 res!2824493) b!6925944))

(assert (= (and b!6925944 res!2824494) b!6925945))

(declare-fun m!7634764 () Bool)

(assert (=> b!6925943 m!7634764))

(declare-fun m!7634766 () Bool)

(assert (=> d!2165290 m!7634766))

(assert (=> d!2165290 m!7634642))

(assert (=> d!2165290 m!7634680))

(declare-fun m!7634768 () Bool)

(assert (=> b!6925944 m!7634768))

(assert (=> b!6925944 m!7634648))

(assert (=> b!6925944 m!7634686))

(assert (=> b!6925580 d!2165290))

(declare-fun b!6925978 () Bool)

(declare-fun res!2824515 () Bool)

(declare-fun e!4168028 () Bool)

(assert (=> b!6925978 (=> res!2824515 e!4168028)))

(declare-fun e!4168025 () Bool)

(assert (=> b!6925978 (= res!2824515 e!4168025)))

(declare-fun res!2824520 () Bool)

(assert (=> b!6925978 (=> (not res!2824520) (not e!4168025))))

(declare-fun lt!2471876 () Bool)

(assert (=> b!6925978 (= res!2824520 lt!2471876)))

(declare-fun b!6925979 () Bool)

(declare-fun res!2824517 () Bool)

(declare-fun e!4168023 () Bool)

(assert (=> b!6925979 (=> res!2824517 e!4168023)))

(declare-fun tail!12935 (List!66681) List!66681)

(assert (=> b!6925979 (= res!2824517 (not (isEmpty!38812 (tail!12935 lt!2471730))))))

(declare-fun b!6925980 () Bool)

(declare-fun e!4168027 () Bool)

(assert (=> b!6925980 (= e!4168027 e!4168023)))

(declare-fun res!2824518 () Bool)

(assert (=> b!6925980 (=> res!2824518 e!4168023)))

(declare-fun call!629463 () Bool)

(assert (=> b!6925980 (= res!2824518 call!629463)))

(declare-fun b!6925981 () Bool)

(declare-fun e!4168029 () Bool)

(declare-fun derivativeStep!5430 (Regex!16928 C!34126) Regex!16928)

(declare-fun head!13883 (List!66681) C!34126)

(assert (=> b!6925981 (= e!4168029 (matchR!9067 (derivativeStep!5430 lt!2471728 (head!13883 lt!2471730)) (tail!12935 lt!2471730)))))

(declare-fun b!6925982 () Bool)

(declare-fun res!2824513 () Bool)

(assert (=> b!6925982 (=> (not res!2824513) (not e!4168025))))

(assert (=> b!6925982 (= res!2824513 (not call!629463))))

(declare-fun b!6925983 () Bool)

(assert (=> b!6925983 (= e!4168025 (= (head!13883 lt!2471730) (c!1285584 lt!2471728)))))

(declare-fun b!6925984 () Bool)

(declare-fun res!2824519 () Bool)

(assert (=> b!6925984 (=> res!2824519 e!4168028)))

(assert (=> b!6925984 (= res!2824519 (not (is-ElementMatch!16928 lt!2471728)))))

(declare-fun e!4168024 () Bool)

(assert (=> b!6925984 (= e!4168024 e!4168028)))

(declare-fun bm!629458 () Bool)

(assert (=> bm!629458 (= call!629463 (isEmpty!38812 lt!2471730))))

(declare-fun b!6925985 () Bool)

(declare-fun e!4168026 () Bool)

(assert (=> b!6925985 (= e!4168026 e!4168024)))

(declare-fun c!1285653 () Bool)

(assert (=> b!6925985 (= c!1285653 (is-EmptyLang!16928 lt!2471728))))

(declare-fun b!6925986 () Bool)

(assert (=> b!6925986 (= e!4168024 (not lt!2471876))))

(declare-fun b!6925987 () Bool)

(declare-fun res!2824514 () Bool)

(assert (=> b!6925987 (=> (not res!2824514) (not e!4168025))))

(assert (=> b!6925987 (= res!2824514 (isEmpty!38812 (tail!12935 lt!2471730)))))

(declare-fun b!6925988 () Bool)

(assert (=> b!6925988 (= e!4168029 (nullable!6755 lt!2471728))))

(declare-fun b!6925989 () Bool)

(assert (=> b!6925989 (= e!4168026 (= lt!2471876 call!629463))))

(declare-fun b!6925990 () Bool)

(assert (=> b!6925990 (= e!4168023 (not (= (head!13883 lt!2471730) (c!1285584 lt!2471728))))))

(declare-fun d!2165294 () Bool)

(assert (=> d!2165294 e!4168026))

(declare-fun c!1285654 () Bool)

(assert (=> d!2165294 (= c!1285654 (is-EmptyExpr!16928 lt!2471728))))

(assert (=> d!2165294 (= lt!2471876 e!4168029)))

(declare-fun c!1285655 () Bool)

(assert (=> d!2165294 (= c!1285655 (isEmpty!38812 lt!2471730))))

(assert (=> d!2165294 (validRegex!8634 lt!2471728)))

(assert (=> d!2165294 (= (matchR!9067 lt!2471728 lt!2471730) lt!2471876)))

(declare-fun b!6925991 () Bool)

(assert (=> b!6925991 (= e!4168028 e!4168027)))

(declare-fun res!2824516 () Bool)

(assert (=> b!6925991 (=> (not res!2824516) (not e!4168027))))

(assert (=> b!6925991 (= res!2824516 (not lt!2471876))))

(assert (= (and d!2165294 c!1285655) b!6925988))

(assert (= (and d!2165294 (not c!1285655)) b!6925981))

(assert (= (and d!2165294 c!1285654) b!6925989))

(assert (= (and d!2165294 (not c!1285654)) b!6925985))

(assert (= (and b!6925985 c!1285653) b!6925986))

(assert (= (and b!6925985 (not c!1285653)) b!6925984))

(assert (= (and b!6925984 (not res!2824519)) b!6925978))

(assert (= (and b!6925978 res!2824520) b!6925982))

(assert (= (and b!6925982 res!2824513) b!6925987))

(assert (= (and b!6925987 res!2824514) b!6925983))

(assert (= (and b!6925978 (not res!2824515)) b!6925991))

(assert (= (and b!6925991 res!2824516) b!6925980))

(assert (= (and b!6925980 (not res!2824518)) b!6925979))

(assert (= (and b!6925979 (not res!2824517)) b!6925990))

(assert (= (or b!6925989 b!6925980 b!6925982) bm!629458))

(declare-fun m!7634784 () Bool)

(assert (=> b!6925979 m!7634784))

(assert (=> b!6925979 m!7634784))

(declare-fun m!7634786 () Bool)

(assert (=> b!6925979 m!7634786))

(declare-fun m!7634788 () Bool)

(assert (=> b!6925990 m!7634788))

(assert (=> b!6925981 m!7634788))

(assert (=> b!6925981 m!7634788))

(declare-fun m!7634790 () Bool)

(assert (=> b!6925981 m!7634790))

(assert (=> b!6925981 m!7634784))

(assert (=> b!6925981 m!7634790))

(assert (=> b!6925981 m!7634784))

(declare-fun m!7634792 () Bool)

(assert (=> b!6925981 m!7634792))

(declare-fun m!7634794 () Bool)

(assert (=> b!6925988 m!7634794))

(declare-fun m!7634796 () Bool)

(assert (=> d!2165294 m!7634796))

(assert (=> d!2165294 m!7634420))

(assert (=> b!6925983 m!7634788))

(assert (=> bm!629458 m!7634796))

(assert (=> b!6925987 m!7634784))

(assert (=> b!6925987 m!7634784))

(assert (=> b!6925987 m!7634786))

(assert (=> b!6925580 d!2165294))

(declare-fun bs!1848675 () Bool)

(declare-fun b!6925997 () Bool)

(assert (= bs!1848675 (and b!6925997 b!6925844)))

(declare-fun lambda!393982 () Int)

(assert (=> bs!1848675 (not (= lambda!393982 lambda!393966))))

(declare-fun bs!1848676 () Bool)

(assert (= bs!1848676 (and b!6925997 b!6925811)))

(assert (=> bs!1848676 (= (and (= lt!2471730 (_2!37088 lt!2471739)) (= (reg!17257 lt!2471728) (reg!17257 r2!6280)) (= lt!2471728 r2!6280)) (= lambda!393982 lambda!393961))))

(declare-fun bs!1848677 () Bool)

(assert (= bs!1848677 (and b!6925997 b!6925565)))

(assert (=> bs!1848677 (not (= lambda!393982 lambda!393929))))

(declare-fun bs!1848678 () Bool)

(assert (= bs!1848678 (and b!6925997 b!6925846)))

(assert (=> bs!1848678 (= (and (= lt!2471730 (_1!37088 lt!2471739)) (= (reg!17257 lt!2471728) (reg!17257 r1!6342)) (= lt!2471728 r1!6342)) (= lambda!393982 lambda!393965))))

(declare-fun bs!1848679 () Bool)

(assert (= bs!1848679 (and b!6925997 b!6925580)))

(assert (=> bs!1848679 (not (= lambda!393982 lambda!393932))))

(declare-fun bs!1848680 () Bool)

(assert (= bs!1848680 (and b!6925997 d!2165274)))

(assert (=> bs!1848680 (not (= lambda!393982 lambda!393976))))

(assert (=> bs!1848677 (not (= lambda!393982 lambda!393930))))

(declare-fun bs!1848681 () Bool)

(assert (= bs!1848681 (and b!6925997 b!6925582)))

(assert (=> bs!1848681 (not (= lambda!393982 lambda!393928))))

(declare-fun bs!1848682 () Bool)

(assert (= bs!1848682 (and b!6925997 d!2165286)))

(assert (=> bs!1848682 (not (= lambda!393982 lambda!393981))))

(declare-fun bs!1848683 () Bool)

(assert (= bs!1848683 (and b!6925997 b!6925809)))

(assert (=> bs!1848683 (not (= lambda!393982 lambda!393962))))

(assert (=> bs!1848681 (not (= lambda!393982 lambda!393927))))

(assert (=> bs!1848679 (not (= lambda!393982 lambda!393931))))

(assert (=> bs!1848680 (not (= lambda!393982 lambda!393978))))

(assert (=> b!6925997 true))

(assert (=> b!6925997 true))

(declare-fun bs!1848684 () Bool)

(declare-fun b!6925995 () Bool)

(assert (= bs!1848684 (and b!6925995 b!6925844)))

(declare-fun lambda!393983 () Int)

(assert (=> bs!1848684 (= (and (= lt!2471730 (_1!37088 lt!2471739)) (= (regOne!34368 lt!2471728) (regOne!34368 r1!6342)) (= (regTwo!34368 lt!2471728) (regTwo!34368 r1!6342))) (= lambda!393983 lambda!393966))))

(declare-fun bs!1848685 () Bool)

(assert (= bs!1848685 (and b!6925995 b!6925811)))

(assert (=> bs!1848685 (not (= lambda!393983 lambda!393961))))

(declare-fun bs!1848686 () Bool)

(assert (= bs!1848686 (and b!6925995 b!6925565)))

(assert (=> bs!1848686 (not (= lambda!393983 lambda!393929))))

(declare-fun bs!1848687 () Bool)

(assert (= bs!1848687 (and b!6925995 b!6925846)))

(assert (=> bs!1848687 (not (= lambda!393983 lambda!393965))))

(declare-fun bs!1848688 () Bool)

(assert (= bs!1848688 (and b!6925995 b!6925580)))

(assert (=> bs!1848688 (= (and (= (regOne!34368 lt!2471728) r2!6280) (= (regTwo!34368 lt!2471728) r3!135)) (= lambda!393983 lambda!393932))))

(declare-fun bs!1848689 () Bool)

(assert (= bs!1848689 (and b!6925995 d!2165274)))

(assert (=> bs!1848689 (not (= lambda!393983 lambda!393976))))

(assert (=> bs!1848686 (= (and (= lt!2471730 (_1!37088 lt!2471720)) (= (regOne!34368 lt!2471728) r1!6342) (= (regTwo!34368 lt!2471728) r2!6280)) (= lambda!393983 lambda!393930))))

(declare-fun bs!1848690 () Bool)

(assert (= bs!1848690 (and b!6925995 b!6925582)))

(assert (=> bs!1848690 (= (and (= lt!2471730 s!14361) (= (regOne!34368 lt!2471728) lt!2471732) (= (regTwo!34368 lt!2471728) r3!135)) (= lambda!393983 lambda!393928))))

(declare-fun bs!1848691 () Bool)

(assert (= bs!1848691 (and b!6925995 d!2165286)))

(assert (=> bs!1848691 (not (= lambda!393983 lambda!393981))))

(declare-fun bs!1848692 () Bool)

(assert (= bs!1848692 (and b!6925995 b!6925809)))

(assert (=> bs!1848692 (= (and (= lt!2471730 (_2!37088 lt!2471739)) (= (regOne!34368 lt!2471728) (regOne!34368 r2!6280)) (= (regTwo!34368 lt!2471728) (regTwo!34368 r2!6280))) (= lambda!393983 lambda!393962))))

(declare-fun bs!1848693 () Bool)

(assert (= bs!1848693 (and b!6925995 b!6925997)))

(assert (=> bs!1848693 (not (= lambda!393983 lambda!393982))))

(assert (=> bs!1848690 (not (= lambda!393983 lambda!393927))))

(assert (=> bs!1848688 (not (= lambda!393983 lambda!393931))))

(assert (=> bs!1848689 (= (and (= (regOne!34368 lt!2471728) r2!6280) (= (regTwo!34368 lt!2471728) r3!135)) (= lambda!393983 lambda!393978))))

(assert (=> b!6925995 true))

(assert (=> b!6925995 true))

(declare-fun call!629465 () Bool)

(declare-fun bm!629459 () Bool)

(declare-fun c!1285658 () Bool)

(assert (=> bm!629459 (= call!629465 (Exists!3930 (ite c!1285658 lambda!393982 lambda!393983)))))

(declare-fun bm!629460 () Bool)

(declare-fun call!629464 () Bool)

(assert (=> bm!629460 (= call!629464 (isEmpty!38812 lt!2471730))))

(declare-fun b!6925992 () Bool)

(declare-fun c!1285656 () Bool)

(assert (=> b!6925992 (= c!1285656 (is-ElementMatch!16928 lt!2471728))))

(declare-fun e!4168031 () Bool)

(declare-fun e!4168035 () Bool)

(assert (=> b!6925992 (= e!4168031 e!4168035)))

(declare-fun b!6925993 () Bool)

(declare-fun c!1285659 () Bool)

(assert (=> b!6925993 (= c!1285659 (is-Union!16928 lt!2471728))))

(declare-fun e!4168036 () Bool)

(assert (=> b!6925993 (= e!4168035 e!4168036)))

(declare-fun e!4168030 () Bool)

(assert (=> b!6925995 (= e!4168030 call!629465)))

(declare-fun b!6925996 () Bool)

(declare-fun e!4168033 () Bool)

(assert (=> b!6925996 (= e!4168033 e!4168031)))

(declare-fun res!2824522 () Bool)

(assert (=> b!6925996 (= res!2824522 (not (is-EmptyLang!16928 lt!2471728)))))

(assert (=> b!6925996 (=> (not res!2824522) (not e!4168031))))

(declare-fun e!4168032 () Bool)

(assert (=> b!6925997 (= e!4168032 call!629465)))

(declare-fun b!6925998 () Bool)

(declare-fun e!4168034 () Bool)

(assert (=> b!6925998 (= e!4168036 e!4168034)))

(declare-fun res!2824523 () Bool)

(assert (=> b!6925998 (= res!2824523 (matchRSpec!3985 (regOne!34369 lt!2471728) lt!2471730))))

(assert (=> b!6925998 (=> res!2824523 e!4168034)))

(declare-fun d!2165298 () Bool)

(declare-fun c!1285657 () Bool)

(assert (=> d!2165298 (= c!1285657 (is-EmptyExpr!16928 lt!2471728))))

(assert (=> d!2165298 (= (matchRSpec!3985 lt!2471728 lt!2471730) e!4168033)))

(declare-fun b!6925994 () Bool)

(assert (=> b!6925994 (= e!4168034 (matchRSpec!3985 (regTwo!34369 lt!2471728) lt!2471730))))

(declare-fun b!6925999 () Bool)

(declare-fun res!2824521 () Bool)

(assert (=> b!6925999 (=> res!2824521 e!4168032)))

(assert (=> b!6925999 (= res!2824521 call!629464)))

(assert (=> b!6925999 (= e!4168030 e!4168032)))

(declare-fun b!6926000 () Bool)

(assert (=> b!6926000 (= e!4168033 call!629464)))

(declare-fun b!6926001 () Bool)

(assert (=> b!6926001 (= e!4168035 (= lt!2471730 (Cons!66557 (c!1285584 lt!2471728) Nil!66557)))))

(declare-fun b!6926002 () Bool)

(assert (=> b!6926002 (= e!4168036 e!4168030)))

(assert (=> b!6926002 (= c!1285658 (is-Star!16928 lt!2471728))))

(assert (= (and d!2165298 c!1285657) b!6926000))

(assert (= (and d!2165298 (not c!1285657)) b!6925996))

(assert (= (and b!6925996 res!2824522) b!6925992))

(assert (= (and b!6925992 c!1285656) b!6926001))

(assert (= (and b!6925992 (not c!1285656)) b!6925993))

(assert (= (and b!6925993 c!1285659) b!6925998))

(assert (= (and b!6925993 (not c!1285659)) b!6926002))

(assert (= (and b!6925998 (not res!2824523)) b!6925994))

(assert (= (and b!6926002 c!1285658) b!6925999))

(assert (= (and b!6926002 (not c!1285658)) b!6925995))

(assert (= (and b!6925999 (not res!2824521)) b!6925997))

(assert (= (or b!6925997 b!6925995) bm!629459))

(assert (= (or b!6926000 b!6925999) bm!629460))

(declare-fun m!7634798 () Bool)

(assert (=> bm!629459 m!7634798))

(assert (=> bm!629460 m!7634796))

(declare-fun m!7634800 () Bool)

(assert (=> b!6925998 m!7634800))

(declare-fun m!7634802 () Bool)

(assert (=> b!6925994 m!7634802))

(assert (=> b!6925580 d!2165298))

(declare-fun d!2165300 () Bool)

(declare-fun isEmpty!38814 (Option!16697) Bool)

(assert (=> d!2165300 (= (isDefined!13400 (findConcatSeparation!3111 r2!6280 r3!135 Nil!66557 lt!2471730 lt!2471730)) (not (isEmpty!38814 (findConcatSeparation!3111 r2!6280 r3!135 Nil!66557 lt!2471730 lt!2471730))))))

(declare-fun bs!1848694 () Bool)

(assert (= bs!1848694 d!2165300))

(assert (=> bs!1848694 m!7634470))

(declare-fun m!7634804 () Bool)

(assert (=> bs!1848694 m!7634804))

(assert (=> b!6925580 d!2165300))

(declare-fun b!6926007 () Bool)

(declare-fun e!4168042 () Bool)

(declare-fun call!629468 () Bool)

(assert (=> b!6926007 (= e!4168042 call!629468)))

(declare-fun b!6926008 () Bool)

(declare-fun res!2824532 () Bool)

(declare-fun e!4168045 () Bool)

(assert (=> b!6926008 (=> res!2824532 e!4168045)))

(assert (=> b!6926008 (= res!2824532 (not (is-Concat!25773 lt!2471728)))))

(declare-fun e!4168044 () Bool)

(assert (=> b!6926008 (= e!4168044 e!4168045)))

(declare-fun bm!629461 () Bool)

(declare-fun call!629466 () Bool)

(assert (=> bm!629461 (= call!629466 call!629468)))

(declare-fun b!6926009 () Bool)

(declare-fun e!4168039 () Bool)

(declare-fun e!4168043 () Bool)

(assert (=> b!6926009 (= e!4168039 e!4168043)))

(declare-fun c!1285660 () Bool)

(assert (=> b!6926009 (= c!1285660 (is-Star!16928 lt!2471728))))

(declare-fun b!6926010 () Bool)

(assert (=> b!6926010 (= e!4168043 e!4168042)))

(declare-fun res!2824529 () Bool)

(assert (=> b!6926010 (= res!2824529 (not (nullable!6755 (reg!17257 lt!2471728))))))

(assert (=> b!6926010 (=> (not res!2824529) (not e!4168042))))

(declare-fun bm!629462 () Bool)

(declare-fun c!1285661 () Bool)

(assert (=> bm!629462 (= call!629468 (validRegex!8634 (ite c!1285660 (reg!17257 lt!2471728) (ite c!1285661 (regOne!34369 lt!2471728) (regTwo!34368 lt!2471728)))))))

(declare-fun b!6926011 () Bool)

(declare-fun e!4168040 () Bool)

(declare-fun call!629467 () Bool)

(assert (=> b!6926011 (= e!4168040 call!629467)))

(declare-fun b!6926012 () Bool)

(declare-fun e!4168041 () Bool)

(assert (=> b!6926012 (= e!4168045 e!4168041)))

(declare-fun res!2824528 () Bool)

(assert (=> b!6926012 (=> (not res!2824528) (not e!4168041))))

(assert (=> b!6926012 (= res!2824528 call!629467)))

(declare-fun d!2165302 () Bool)

(declare-fun res!2824531 () Bool)

(assert (=> d!2165302 (=> res!2824531 e!4168039)))

(assert (=> d!2165302 (= res!2824531 (is-ElementMatch!16928 lt!2471728))))

(assert (=> d!2165302 (= (validRegex!8634 lt!2471728) e!4168039)))

(declare-fun b!6926013 () Bool)

(assert (=> b!6926013 (= e!4168041 call!629466)))

(declare-fun bm!629463 () Bool)

(assert (=> bm!629463 (= call!629467 (validRegex!8634 (ite c!1285661 (regTwo!34369 lt!2471728) (regOne!34368 lt!2471728))))))

(declare-fun b!6926014 () Bool)

(declare-fun res!2824530 () Bool)

(assert (=> b!6926014 (=> (not res!2824530) (not e!4168040))))

(assert (=> b!6926014 (= res!2824530 call!629466)))

(assert (=> b!6926014 (= e!4168044 e!4168040)))

(declare-fun b!6926015 () Bool)

(assert (=> b!6926015 (= e!4168043 e!4168044)))

(assert (=> b!6926015 (= c!1285661 (is-Union!16928 lt!2471728))))

(assert (= (and d!2165302 (not res!2824531)) b!6926009))

(assert (= (and b!6926009 c!1285660) b!6926010))

(assert (= (and b!6926009 (not c!1285660)) b!6926015))

(assert (= (and b!6926010 res!2824529) b!6926007))

(assert (= (and b!6926015 c!1285661) b!6926014))

(assert (= (and b!6926015 (not c!1285661)) b!6926008))

(assert (= (and b!6926014 res!2824530) b!6926011))

(assert (= (and b!6926008 (not res!2824532)) b!6926012))

(assert (= (and b!6926012 res!2824528) b!6926013))

(assert (= (or b!6926014 b!6926013) bm!629461))

(assert (= (or b!6926011 b!6926012) bm!629463))

(assert (= (or b!6926007 bm!629461) bm!629462))

(declare-fun m!7634806 () Bool)

(assert (=> b!6926010 m!7634806))

(declare-fun m!7634808 () Bool)

(assert (=> bm!629462 m!7634808))

(declare-fun m!7634810 () Bool)

(assert (=> bm!629463 m!7634810))

(assert (=> b!6925570 d!2165302))

(declare-fun d!2165304 () Bool)

(assert (=> d!2165304 (= (isDefined!13400 (findConcatSeparation!3111 r1!6342 lt!2471728 Nil!66557 s!14361 s!14361)) (not (isEmpty!38814 (findConcatSeparation!3111 r1!6342 lt!2471728 Nil!66557 s!14361 s!14361))))))

(declare-fun bs!1848695 () Bool)

(assert (= bs!1848695 d!2165304))

(assert (=> bs!1848695 m!7634422))

(declare-fun m!7634812 () Bool)

(assert (=> bs!1848695 m!7634812))

(assert (=> b!6925570 d!2165304))

(declare-fun d!2165306 () Bool)

(declare-fun e!4168048 () Bool)

(assert (=> d!2165306 e!4168048))

(declare-fun res!2824534 () Bool)

(assert (=> d!2165306 (=> res!2824534 e!4168048)))

(declare-fun e!4168050 () Bool)

(assert (=> d!2165306 (= res!2824534 e!4168050)))

(declare-fun res!2824535 () Bool)

(assert (=> d!2165306 (=> (not res!2824535) (not e!4168050))))

(declare-fun lt!2471881 () Option!16697)

(assert (=> d!2165306 (= res!2824535 (isDefined!13400 lt!2471881))))

(declare-fun e!4168047 () Option!16697)

(assert (=> d!2165306 (= lt!2471881 e!4168047)))

(declare-fun c!1285662 () Bool)

(declare-fun e!4168049 () Bool)

(assert (=> d!2165306 (= c!1285662 e!4168049)))

(declare-fun res!2824537 () Bool)

(assert (=> d!2165306 (=> (not res!2824537) (not e!4168049))))

(assert (=> d!2165306 (= res!2824537 (matchR!9067 r1!6342 Nil!66557))))

(assert (=> d!2165306 (validRegex!8634 r1!6342)))

(assert (=> d!2165306 (= (findConcatSeparation!3111 r1!6342 lt!2471728 Nil!66557 s!14361 s!14361) lt!2471881)))

(declare-fun b!6926016 () Bool)

(assert (=> b!6926016 (= e!4168048 (not (isDefined!13400 lt!2471881)))))

(declare-fun b!6926017 () Bool)

(assert (=> b!6926017 (= e!4168049 (matchR!9067 lt!2471728 s!14361))))

(declare-fun b!6926018 () Bool)

(declare-fun e!4168046 () Option!16697)

(assert (=> b!6926018 (= e!4168046 None!16696)))

(declare-fun b!6926019 () Bool)

(declare-fun res!2824536 () Bool)

(assert (=> b!6926019 (=> (not res!2824536) (not e!4168050))))

(assert (=> b!6926019 (= res!2824536 (matchR!9067 r1!6342 (_1!37088 (get!23333 lt!2471881))))))

(declare-fun b!6926020 () Bool)

(declare-fun res!2824533 () Bool)

(assert (=> b!6926020 (=> (not res!2824533) (not e!4168050))))

(assert (=> b!6926020 (= res!2824533 (matchR!9067 lt!2471728 (_2!37088 (get!23333 lt!2471881))))))

(declare-fun b!6926021 () Bool)

(declare-fun lt!2471882 () Unit!160580)

(declare-fun lt!2471880 () Unit!160580)

(assert (=> b!6926021 (= lt!2471882 lt!2471880)))

(assert (=> b!6926021 (= (++!14971 (++!14971 Nil!66557 (Cons!66557 (h!73005 s!14361) Nil!66557)) (t!380424 s!14361)) s!14361)))

(assert (=> b!6926021 (= lt!2471880 (lemmaMoveElementToOtherListKeepsConcatEq!2834 Nil!66557 (h!73005 s!14361) (t!380424 s!14361) s!14361))))

(assert (=> b!6926021 (= e!4168046 (findConcatSeparation!3111 r1!6342 lt!2471728 (++!14971 Nil!66557 (Cons!66557 (h!73005 s!14361) Nil!66557)) (t!380424 s!14361) s!14361))))

(declare-fun b!6926022 () Bool)

(assert (=> b!6926022 (= e!4168047 (Some!16696 (tuple2!67571 Nil!66557 s!14361)))))

(declare-fun b!6926023 () Bool)

(assert (=> b!6926023 (= e!4168050 (= (++!14971 (_1!37088 (get!23333 lt!2471881)) (_2!37088 (get!23333 lt!2471881))) s!14361))))

(declare-fun b!6926024 () Bool)

(assert (=> b!6926024 (= e!4168047 e!4168046)))

(declare-fun c!1285663 () Bool)

(assert (=> b!6926024 (= c!1285663 (is-Nil!66557 s!14361))))

(assert (= (and d!2165306 res!2824537) b!6926017))

(assert (= (and d!2165306 c!1285662) b!6926022))

(assert (= (and d!2165306 (not c!1285662)) b!6926024))

(assert (= (and b!6926024 c!1285663) b!6926018))

(assert (= (and b!6926024 (not c!1285663)) b!6926021))

(assert (= (and d!2165306 res!2824535) b!6926019))

(assert (= (and b!6926019 res!2824536) b!6926020))

(assert (= (and b!6926020 res!2824533) b!6926023))

(assert (= (and d!2165306 (not res!2824534)) b!6926016))

(declare-fun m!7634814 () Bool)

(assert (=> b!6926020 m!7634814))

(declare-fun m!7634816 () Bool)

(assert (=> b!6926020 m!7634816))

(declare-fun m!7634818 () Bool)

(assert (=> b!6926016 m!7634818))

(declare-fun m!7634820 () Bool)

(assert (=> b!6926017 m!7634820))

(declare-fun m!7634822 () Bool)

(assert (=> b!6926021 m!7634822))

(assert (=> b!6926021 m!7634822))

(declare-fun m!7634824 () Bool)

(assert (=> b!6926021 m!7634824))

(declare-fun m!7634826 () Bool)

(assert (=> b!6926021 m!7634826))

(assert (=> b!6926021 m!7634822))

(declare-fun m!7634828 () Bool)

(assert (=> b!6926021 m!7634828))

(assert (=> b!6926023 m!7634814))

(declare-fun m!7634830 () Bool)

(assert (=> b!6926023 m!7634830))

(assert (=> d!2165306 m!7634818))

(declare-fun m!7634832 () Bool)

(assert (=> d!2165306 m!7634832))

(assert (=> d!2165306 m!7634456))

(assert (=> b!6926019 m!7634814))

(declare-fun m!7634834 () Bool)

(assert (=> b!6926019 m!7634834))

(assert (=> b!6925570 d!2165306))

(declare-fun d!2165308 () Bool)

(assert (=> d!2165308 (isDefined!13400 (findConcatSeparation!3111 r1!6342 lt!2471728 Nil!66557 s!14361 s!14361))))

(declare-fun lt!2471883 () Unit!160580)

(assert (=> d!2165308 (= lt!2471883 (choose!51573 r1!6342 lt!2471728 (_1!37088 lt!2471739) lt!2471730 s!14361 Nil!66557 s!14361))))

(assert (=> d!2165308 (validRegex!8634 r1!6342)))

(assert (=> d!2165308 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!89 r1!6342 lt!2471728 (_1!37088 lt!2471739) lt!2471730 s!14361 Nil!66557 s!14361) lt!2471883)))

(declare-fun bs!1848701 () Bool)

(assert (= bs!1848701 d!2165308))

(assert (=> bs!1848701 m!7634422))

(assert (=> bs!1848701 m!7634422))

(assert (=> bs!1848701 m!7634424))

(declare-fun m!7634836 () Bool)

(assert (=> bs!1848701 m!7634836))

(assert (=> bs!1848701 m!7634456))

(assert (=> b!6925570 d!2165308))

(declare-fun bs!1848704 () Bool)

(declare-fun b!6926030 () Bool)

(assert (= bs!1848704 (and b!6926030 b!6925844)))

(declare-fun lambda!393987 () Int)

(assert (=> bs!1848704 (not (= lambda!393987 lambda!393966))))

(declare-fun bs!1848705 () Bool)

(assert (= bs!1848705 (and b!6926030 b!6925811)))

(assert (=> bs!1848705 (= (and (= (_1!37088 lt!2471720) (_2!37088 lt!2471739)) (= (reg!17257 lt!2471732) (reg!17257 r2!6280)) (= lt!2471732 r2!6280)) (= lambda!393987 lambda!393961))))

(declare-fun bs!1848706 () Bool)

(assert (= bs!1848706 (and b!6926030 b!6925565)))

(assert (=> bs!1848706 (not (= lambda!393987 lambda!393929))))

(declare-fun bs!1848708 () Bool)

(assert (= bs!1848708 (and b!6926030 b!6925846)))

(assert (=> bs!1848708 (= (and (= (_1!37088 lt!2471720) (_1!37088 lt!2471739)) (= (reg!17257 lt!2471732) (reg!17257 r1!6342)) (= lt!2471732 r1!6342)) (= lambda!393987 lambda!393965))))

(declare-fun bs!1848709 () Bool)

(assert (= bs!1848709 (and b!6926030 b!6925580)))

(assert (=> bs!1848709 (not (= lambda!393987 lambda!393932))))

(declare-fun bs!1848710 () Bool)

(assert (= bs!1848710 (and b!6926030 d!2165274)))

(assert (=> bs!1848710 (not (= lambda!393987 lambda!393976))))

(assert (=> bs!1848706 (not (= lambda!393987 lambda!393930))))

(declare-fun bs!1848711 () Bool)

(assert (= bs!1848711 (and b!6926030 b!6925582)))

(assert (=> bs!1848711 (not (= lambda!393987 lambda!393928))))

(declare-fun bs!1848712 () Bool)

(assert (= bs!1848712 (and b!6926030 d!2165286)))

(assert (=> bs!1848712 (not (= lambda!393987 lambda!393981))))

(declare-fun bs!1848713 () Bool)

(assert (= bs!1848713 (and b!6926030 b!6925809)))

(assert (=> bs!1848713 (not (= lambda!393987 lambda!393962))))

(declare-fun bs!1848714 () Bool)

(assert (= bs!1848714 (and b!6926030 b!6925997)))

(assert (=> bs!1848714 (= (and (= (_1!37088 lt!2471720) lt!2471730) (= (reg!17257 lt!2471732) (reg!17257 lt!2471728)) (= lt!2471732 lt!2471728)) (= lambda!393987 lambda!393982))))

(assert (=> bs!1848711 (not (= lambda!393987 lambda!393927))))

(assert (=> bs!1848709 (not (= lambda!393987 lambda!393931))))

(assert (=> bs!1848710 (not (= lambda!393987 lambda!393978))))

(declare-fun bs!1848715 () Bool)

(assert (= bs!1848715 (and b!6926030 b!6925995)))

(assert (=> bs!1848715 (not (= lambda!393987 lambda!393983))))

(assert (=> b!6926030 true))

(assert (=> b!6926030 true))

(declare-fun bs!1848716 () Bool)

(declare-fun b!6926028 () Bool)

(assert (= bs!1848716 (and b!6926028 b!6926030)))

(declare-fun lambda!393988 () Int)

(assert (=> bs!1848716 (not (= lambda!393988 lambda!393987))))

(declare-fun bs!1848717 () Bool)

(assert (= bs!1848717 (and b!6926028 b!6925844)))

(assert (=> bs!1848717 (= (and (= (_1!37088 lt!2471720) (_1!37088 lt!2471739)) (= (regOne!34368 lt!2471732) (regOne!34368 r1!6342)) (= (regTwo!34368 lt!2471732) (regTwo!34368 r1!6342))) (= lambda!393988 lambda!393966))))

(declare-fun bs!1848718 () Bool)

(assert (= bs!1848718 (and b!6926028 b!6925811)))

(assert (=> bs!1848718 (not (= lambda!393988 lambda!393961))))

(declare-fun bs!1848719 () Bool)

(assert (= bs!1848719 (and b!6926028 b!6925565)))

(assert (=> bs!1848719 (not (= lambda!393988 lambda!393929))))

(declare-fun bs!1848720 () Bool)

(assert (= bs!1848720 (and b!6926028 b!6925846)))

(assert (=> bs!1848720 (not (= lambda!393988 lambda!393965))))

(declare-fun bs!1848721 () Bool)

(assert (= bs!1848721 (and b!6926028 b!6925580)))

(assert (=> bs!1848721 (= (and (= (_1!37088 lt!2471720) lt!2471730) (= (regOne!34368 lt!2471732) r2!6280) (= (regTwo!34368 lt!2471732) r3!135)) (= lambda!393988 lambda!393932))))

(declare-fun bs!1848722 () Bool)

(assert (= bs!1848722 (and b!6926028 d!2165274)))

(assert (=> bs!1848722 (not (= lambda!393988 lambda!393976))))

(assert (=> bs!1848719 (= (and (= (regOne!34368 lt!2471732) r1!6342) (= (regTwo!34368 lt!2471732) r2!6280)) (= lambda!393988 lambda!393930))))

(declare-fun bs!1848723 () Bool)

(assert (= bs!1848723 (and b!6926028 b!6925582)))

(assert (=> bs!1848723 (= (and (= (_1!37088 lt!2471720) s!14361) (= (regOne!34368 lt!2471732) lt!2471732) (= (regTwo!34368 lt!2471732) r3!135)) (= lambda!393988 lambda!393928))))

(declare-fun bs!1848724 () Bool)

(assert (= bs!1848724 (and b!6926028 d!2165286)))

(assert (=> bs!1848724 (not (= lambda!393988 lambda!393981))))

(declare-fun bs!1848725 () Bool)

(assert (= bs!1848725 (and b!6926028 b!6925809)))

(assert (=> bs!1848725 (= (and (= (_1!37088 lt!2471720) (_2!37088 lt!2471739)) (= (regOne!34368 lt!2471732) (regOne!34368 r2!6280)) (= (regTwo!34368 lt!2471732) (regTwo!34368 r2!6280))) (= lambda!393988 lambda!393962))))

(declare-fun bs!1848726 () Bool)

(assert (= bs!1848726 (and b!6926028 b!6925997)))

(assert (=> bs!1848726 (not (= lambda!393988 lambda!393982))))

(assert (=> bs!1848723 (not (= lambda!393988 lambda!393927))))

(assert (=> bs!1848721 (not (= lambda!393988 lambda!393931))))

(assert (=> bs!1848722 (= (and (= (_1!37088 lt!2471720) lt!2471730) (= (regOne!34368 lt!2471732) r2!6280) (= (regTwo!34368 lt!2471732) r3!135)) (= lambda!393988 lambda!393978))))

(declare-fun bs!1848727 () Bool)

(assert (= bs!1848727 (and b!6926028 b!6925995)))

(assert (=> bs!1848727 (= (and (= (_1!37088 lt!2471720) lt!2471730) (= (regOne!34368 lt!2471732) (regOne!34368 lt!2471728)) (= (regTwo!34368 lt!2471732) (regTwo!34368 lt!2471728))) (= lambda!393988 lambda!393983))))

(assert (=> b!6926028 true))

(assert (=> b!6926028 true))

(declare-fun call!629470 () Bool)

(declare-fun c!1285666 () Bool)

(declare-fun bm!629464 () Bool)

(assert (=> bm!629464 (= call!629470 (Exists!3930 (ite c!1285666 lambda!393987 lambda!393988)))))

(declare-fun bm!629465 () Bool)

(declare-fun call!629469 () Bool)

(assert (=> bm!629465 (= call!629469 (isEmpty!38812 (_1!37088 lt!2471720)))))

(declare-fun b!6926025 () Bool)

(declare-fun c!1285664 () Bool)

(assert (=> b!6926025 (= c!1285664 (is-ElementMatch!16928 lt!2471732))))

(declare-fun e!4168052 () Bool)

(declare-fun e!4168056 () Bool)

(assert (=> b!6926025 (= e!4168052 e!4168056)))

(declare-fun b!6926026 () Bool)

(declare-fun c!1285667 () Bool)

(assert (=> b!6926026 (= c!1285667 (is-Union!16928 lt!2471732))))

(declare-fun e!4168057 () Bool)

(assert (=> b!6926026 (= e!4168056 e!4168057)))

(declare-fun e!4168051 () Bool)

(assert (=> b!6926028 (= e!4168051 call!629470)))

(declare-fun b!6926029 () Bool)

(declare-fun e!4168054 () Bool)

(assert (=> b!6926029 (= e!4168054 e!4168052)))

(declare-fun res!2824539 () Bool)

(assert (=> b!6926029 (= res!2824539 (not (is-EmptyLang!16928 lt!2471732)))))

(assert (=> b!6926029 (=> (not res!2824539) (not e!4168052))))

(declare-fun e!4168053 () Bool)

(assert (=> b!6926030 (= e!4168053 call!629470)))

(declare-fun b!6926031 () Bool)

(declare-fun e!4168055 () Bool)

(assert (=> b!6926031 (= e!4168057 e!4168055)))

(declare-fun res!2824540 () Bool)

(assert (=> b!6926031 (= res!2824540 (matchRSpec!3985 (regOne!34369 lt!2471732) (_1!37088 lt!2471720)))))

(assert (=> b!6926031 (=> res!2824540 e!4168055)))

(declare-fun d!2165310 () Bool)

(declare-fun c!1285665 () Bool)

(assert (=> d!2165310 (= c!1285665 (is-EmptyExpr!16928 lt!2471732))))

(assert (=> d!2165310 (= (matchRSpec!3985 lt!2471732 (_1!37088 lt!2471720)) e!4168054)))

(declare-fun b!6926027 () Bool)

(assert (=> b!6926027 (= e!4168055 (matchRSpec!3985 (regTwo!34369 lt!2471732) (_1!37088 lt!2471720)))))

(declare-fun b!6926032 () Bool)

(declare-fun res!2824538 () Bool)

(assert (=> b!6926032 (=> res!2824538 e!4168053)))

(assert (=> b!6926032 (= res!2824538 call!629469)))

(assert (=> b!6926032 (= e!4168051 e!4168053)))

(declare-fun b!6926033 () Bool)

(assert (=> b!6926033 (= e!4168054 call!629469)))

(declare-fun b!6926034 () Bool)

(assert (=> b!6926034 (= e!4168056 (= (_1!37088 lt!2471720) (Cons!66557 (c!1285584 lt!2471732) Nil!66557)))))

(declare-fun b!6926035 () Bool)

(assert (=> b!6926035 (= e!4168057 e!4168051)))

(assert (=> b!6926035 (= c!1285666 (is-Star!16928 lt!2471732))))

(assert (= (and d!2165310 c!1285665) b!6926033))

(assert (= (and d!2165310 (not c!1285665)) b!6926029))

(assert (= (and b!6926029 res!2824539) b!6926025))

(assert (= (and b!6926025 c!1285664) b!6926034))

(assert (= (and b!6926025 (not c!1285664)) b!6926026))

(assert (= (and b!6926026 c!1285667) b!6926031))

(assert (= (and b!6926026 (not c!1285667)) b!6926035))

(assert (= (and b!6926031 (not res!2824540)) b!6926027))

(assert (= (and b!6926035 c!1285666) b!6926032))

(assert (= (and b!6926035 (not c!1285666)) b!6926028))

(assert (= (and b!6926032 (not res!2824538)) b!6926030))

(assert (= (or b!6926030 b!6926028) bm!629464))

(assert (= (or b!6926033 b!6926032) bm!629465))

(declare-fun m!7634846 () Bool)

(assert (=> bm!629464 m!7634846))

(declare-fun m!7634848 () Bool)

(assert (=> bm!629465 m!7634848))

(declare-fun m!7634850 () Bool)

(assert (=> b!6926031 m!7634850))

(declare-fun m!7634852 () Bool)

(assert (=> b!6926027 m!7634852))

(assert (=> b!6925582 d!2165310))

(declare-fun b!6926036 () Bool)

(declare-fun res!2824543 () Bool)

(declare-fun e!4168063 () Bool)

(assert (=> b!6926036 (=> res!2824543 e!4168063)))

(declare-fun e!4168060 () Bool)

(assert (=> b!6926036 (= res!2824543 e!4168060)))

(declare-fun res!2824548 () Bool)

(assert (=> b!6926036 (=> (not res!2824548) (not e!4168060))))

(declare-fun lt!2471884 () Bool)

(assert (=> b!6926036 (= res!2824548 lt!2471884)))

(declare-fun b!6926037 () Bool)

(declare-fun res!2824545 () Bool)

(declare-fun e!4168058 () Bool)

(assert (=> b!6926037 (=> res!2824545 e!4168058)))

(assert (=> b!6926037 (= res!2824545 (not (isEmpty!38812 (tail!12935 (_1!37088 lt!2471720)))))))

(declare-fun b!6926038 () Bool)

(declare-fun e!4168062 () Bool)

(assert (=> b!6926038 (= e!4168062 e!4168058)))

(declare-fun res!2824546 () Bool)

(assert (=> b!6926038 (=> res!2824546 e!4168058)))

(declare-fun call!629471 () Bool)

(assert (=> b!6926038 (= res!2824546 call!629471)))

(declare-fun b!6926039 () Bool)

(declare-fun e!4168064 () Bool)

(assert (=> b!6926039 (= e!4168064 (matchR!9067 (derivativeStep!5430 lt!2471732 (head!13883 (_1!37088 lt!2471720))) (tail!12935 (_1!37088 lt!2471720))))))

(declare-fun b!6926040 () Bool)

(declare-fun res!2824541 () Bool)

(assert (=> b!6926040 (=> (not res!2824541) (not e!4168060))))

(assert (=> b!6926040 (= res!2824541 (not call!629471))))

(declare-fun b!6926041 () Bool)

(assert (=> b!6926041 (= e!4168060 (= (head!13883 (_1!37088 lt!2471720)) (c!1285584 lt!2471732)))))

(declare-fun b!6926042 () Bool)

(declare-fun res!2824547 () Bool)

(assert (=> b!6926042 (=> res!2824547 e!4168063)))

(assert (=> b!6926042 (= res!2824547 (not (is-ElementMatch!16928 lt!2471732)))))

(declare-fun e!4168059 () Bool)

(assert (=> b!6926042 (= e!4168059 e!4168063)))

(declare-fun bm!629466 () Bool)

(assert (=> bm!629466 (= call!629471 (isEmpty!38812 (_1!37088 lt!2471720)))))

(declare-fun b!6926043 () Bool)

(declare-fun e!4168061 () Bool)

(assert (=> b!6926043 (= e!4168061 e!4168059)))

(declare-fun c!1285668 () Bool)

(assert (=> b!6926043 (= c!1285668 (is-EmptyLang!16928 lt!2471732))))

(declare-fun b!6926044 () Bool)

(assert (=> b!6926044 (= e!4168059 (not lt!2471884))))

(declare-fun b!6926045 () Bool)

(declare-fun res!2824542 () Bool)

(assert (=> b!6926045 (=> (not res!2824542) (not e!4168060))))

(assert (=> b!6926045 (= res!2824542 (isEmpty!38812 (tail!12935 (_1!37088 lt!2471720))))))

(declare-fun b!6926046 () Bool)

(assert (=> b!6926046 (= e!4168064 (nullable!6755 lt!2471732))))

(declare-fun b!6926047 () Bool)

(assert (=> b!6926047 (= e!4168061 (= lt!2471884 call!629471))))

(declare-fun b!6926048 () Bool)

(assert (=> b!6926048 (= e!4168058 (not (= (head!13883 (_1!37088 lt!2471720)) (c!1285584 lt!2471732))))))

(declare-fun d!2165314 () Bool)

(assert (=> d!2165314 e!4168061))

(declare-fun c!1285669 () Bool)

(assert (=> d!2165314 (= c!1285669 (is-EmptyExpr!16928 lt!2471732))))

(assert (=> d!2165314 (= lt!2471884 e!4168064)))

(declare-fun c!1285670 () Bool)

(assert (=> d!2165314 (= c!1285670 (isEmpty!38812 (_1!37088 lt!2471720)))))

(assert (=> d!2165314 (validRegex!8634 lt!2471732)))

(assert (=> d!2165314 (= (matchR!9067 lt!2471732 (_1!37088 lt!2471720)) lt!2471884)))

(declare-fun b!6926049 () Bool)

(assert (=> b!6926049 (= e!4168063 e!4168062)))

(declare-fun res!2824544 () Bool)

(assert (=> b!6926049 (=> (not res!2824544) (not e!4168062))))

(assert (=> b!6926049 (= res!2824544 (not lt!2471884))))

(assert (= (and d!2165314 c!1285670) b!6926046))

(assert (= (and d!2165314 (not c!1285670)) b!6926039))

(assert (= (and d!2165314 c!1285669) b!6926047))

(assert (= (and d!2165314 (not c!1285669)) b!6926043))

(assert (= (and b!6926043 c!1285668) b!6926044))

(assert (= (and b!6926043 (not c!1285668)) b!6926042))

(assert (= (and b!6926042 (not res!2824547)) b!6926036))

(assert (= (and b!6926036 res!2824548) b!6926040))

(assert (= (and b!6926040 res!2824541) b!6926045))

(assert (= (and b!6926045 res!2824542) b!6926041))

(assert (= (and b!6926036 (not res!2824543)) b!6926049))

(assert (= (and b!6926049 res!2824544) b!6926038))

(assert (= (and b!6926038 (not res!2824546)) b!6926037))

(assert (= (and b!6926037 (not res!2824545)) b!6926048))

(assert (= (or b!6926047 b!6926038 b!6926040) bm!629466))

(declare-fun m!7634854 () Bool)

(assert (=> b!6926037 m!7634854))

(assert (=> b!6926037 m!7634854))

(declare-fun m!7634856 () Bool)

(assert (=> b!6926037 m!7634856))

(declare-fun m!7634858 () Bool)

(assert (=> b!6926048 m!7634858))

(assert (=> b!6926039 m!7634858))

(assert (=> b!6926039 m!7634858))

(declare-fun m!7634860 () Bool)

(assert (=> b!6926039 m!7634860))

(assert (=> b!6926039 m!7634854))

(assert (=> b!6926039 m!7634860))

(assert (=> b!6926039 m!7634854))

(declare-fun m!7634862 () Bool)

(assert (=> b!6926039 m!7634862))

(declare-fun m!7634864 () Bool)

(assert (=> b!6926046 m!7634864))

(assert (=> d!2165314 m!7634848))

(declare-fun m!7634866 () Bool)

(assert (=> d!2165314 m!7634866))

(assert (=> b!6926041 m!7634858))

(assert (=> bm!629466 m!7634848))

(assert (=> b!6926045 m!7634854))

(assert (=> b!6926045 m!7634854))

(assert (=> b!6926045 m!7634856))

(assert (=> b!6925582 d!2165314))

(declare-fun bs!1848728 () Bool)

(declare-fun d!2165316 () Bool)

(assert (= bs!1848728 (and d!2165316 b!6926030)))

(declare-fun lambda!393989 () Int)

(assert (=> bs!1848728 (not (= lambda!393989 lambda!393987))))

(declare-fun bs!1848729 () Bool)

(assert (= bs!1848729 (and d!2165316 b!6925844)))

(assert (=> bs!1848729 (not (= lambda!393989 lambda!393966))))

(declare-fun bs!1848730 () Bool)

(assert (= bs!1848730 (and d!2165316 b!6925811)))

(assert (=> bs!1848730 (not (= lambda!393989 lambda!393961))))

(declare-fun bs!1848731 () Bool)

(assert (= bs!1848731 (and d!2165316 b!6925565)))

(assert (=> bs!1848731 (= (and (= s!14361 (_1!37088 lt!2471720)) (= lt!2471732 r1!6342) (= r3!135 r2!6280)) (= lambda!393989 lambda!393929))))

(declare-fun bs!1848732 () Bool)

(assert (= bs!1848732 (and d!2165316 b!6925846)))

(assert (=> bs!1848732 (not (= lambda!393989 lambda!393965))))

(declare-fun bs!1848733 () Bool)

(assert (= bs!1848733 (and d!2165316 b!6926028)))

(assert (=> bs!1848733 (not (= lambda!393989 lambda!393988))))

(declare-fun bs!1848734 () Bool)

(assert (= bs!1848734 (and d!2165316 b!6925580)))

(assert (=> bs!1848734 (not (= lambda!393989 lambda!393932))))

(declare-fun bs!1848735 () Bool)

(assert (= bs!1848735 (and d!2165316 d!2165274)))

(assert (=> bs!1848735 (= (and (= s!14361 lt!2471730) (= lt!2471732 r2!6280)) (= lambda!393989 lambda!393976))))

(assert (=> bs!1848731 (not (= lambda!393989 lambda!393930))))

(declare-fun bs!1848736 () Bool)

(assert (= bs!1848736 (and d!2165316 b!6925582)))

(assert (=> bs!1848736 (not (= lambda!393989 lambda!393928))))

(declare-fun bs!1848737 () Bool)

(assert (= bs!1848737 (and d!2165316 d!2165286)))

(assert (=> bs!1848737 (= (and (= s!14361 lt!2471730) (= lt!2471732 r2!6280)) (= lambda!393989 lambda!393981))))

(declare-fun bs!1848738 () Bool)

(assert (= bs!1848738 (and d!2165316 b!6925809)))

(assert (=> bs!1848738 (not (= lambda!393989 lambda!393962))))

(declare-fun bs!1848739 () Bool)

(assert (= bs!1848739 (and d!2165316 b!6925997)))

(assert (=> bs!1848739 (not (= lambda!393989 lambda!393982))))

(assert (=> bs!1848736 (= lambda!393989 lambda!393927)))

(assert (=> bs!1848734 (= (and (= s!14361 lt!2471730) (= lt!2471732 r2!6280)) (= lambda!393989 lambda!393931))))

(assert (=> bs!1848735 (not (= lambda!393989 lambda!393978))))

(declare-fun bs!1848740 () Bool)

(assert (= bs!1848740 (and d!2165316 b!6925995)))

(assert (=> bs!1848740 (not (= lambda!393989 lambda!393983))))

(assert (=> d!2165316 true))

(assert (=> d!2165316 true))

(assert (=> d!2165316 true))

(declare-fun lambda!393990 () Int)

(assert (=> bs!1848728 (not (= lambda!393990 lambda!393987))))

(assert (=> bs!1848729 (= (and (= s!14361 (_1!37088 lt!2471739)) (= lt!2471732 (regOne!34368 r1!6342)) (= r3!135 (regTwo!34368 r1!6342))) (= lambda!393990 lambda!393966))))

(assert (=> bs!1848730 (not (= lambda!393990 lambda!393961))))

(assert (=> bs!1848731 (not (= lambda!393990 lambda!393929))))

(assert (=> bs!1848733 (= (and (= s!14361 (_1!37088 lt!2471720)) (= lt!2471732 (regOne!34368 lt!2471732)) (= r3!135 (regTwo!34368 lt!2471732))) (= lambda!393990 lambda!393988))))

(assert (=> bs!1848734 (= (and (= s!14361 lt!2471730) (= lt!2471732 r2!6280)) (= lambda!393990 lambda!393932))))

(assert (=> bs!1848735 (not (= lambda!393990 lambda!393976))))

(assert (=> bs!1848731 (= (and (= s!14361 (_1!37088 lt!2471720)) (= lt!2471732 r1!6342) (= r3!135 r2!6280)) (= lambda!393990 lambda!393930))))

(assert (=> bs!1848736 (= lambda!393990 lambda!393928)))

(assert (=> bs!1848737 (not (= lambda!393990 lambda!393981))))

(assert (=> bs!1848738 (= (and (= s!14361 (_2!37088 lt!2471739)) (= lt!2471732 (regOne!34368 r2!6280)) (= r3!135 (regTwo!34368 r2!6280))) (= lambda!393990 lambda!393962))))

(assert (=> bs!1848739 (not (= lambda!393990 lambda!393982))))

(assert (=> bs!1848736 (not (= lambda!393990 lambda!393927))))

(declare-fun bs!1848741 () Bool)

(assert (= bs!1848741 d!2165316))

(assert (=> bs!1848741 (not (= lambda!393990 lambda!393989))))

(assert (=> bs!1848732 (not (= lambda!393990 lambda!393965))))

(assert (=> bs!1848734 (not (= lambda!393990 lambda!393931))))

(assert (=> bs!1848735 (= (and (= s!14361 lt!2471730) (= lt!2471732 r2!6280)) (= lambda!393990 lambda!393978))))

(assert (=> bs!1848740 (= (and (= s!14361 lt!2471730) (= lt!2471732 (regOne!34368 lt!2471728)) (= r3!135 (regTwo!34368 lt!2471728))) (= lambda!393990 lambda!393983))))

(assert (=> d!2165316 true))

(assert (=> d!2165316 true))

(assert (=> d!2165316 true))

(assert (=> d!2165316 (= (Exists!3930 lambda!393989) (Exists!3930 lambda!393990))))

(declare-fun lt!2471885 () Unit!160580)

(assert (=> d!2165316 (= lt!2471885 (choose!51572 lt!2471732 r3!135 s!14361))))

(assert (=> d!2165316 (validRegex!8634 lt!2471732)))

(assert (=> d!2165316 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2397 lt!2471732 r3!135 s!14361) lt!2471885)))

(declare-fun m!7634868 () Bool)

(assert (=> bs!1848741 m!7634868))

(declare-fun m!7634870 () Bool)

(assert (=> bs!1848741 m!7634870))

(declare-fun m!7634872 () Bool)

(assert (=> bs!1848741 m!7634872))

(assert (=> bs!1848741 m!7634866))

(assert (=> b!6925582 d!2165316))

(declare-fun d!2165318 () Bool)

(assert (=> d!2165318 (= (Exists!3930 lambda!393928) (choose!51574 lambda!393928))))

(declare-fun bs!1848742 () Bool)

(assert (= bs!1848742 d!2165318))

(declare-fun m!7634874 () Bool)

(assert (=> bs!1848742 m!7634874))

(assert (=> b!6925582 d!2165318))

(declare-fun d!2165320 () Bool)

(assert (=> d!2165320 (= (matchR!9067 lt!2471732 (_1!37088 lt!2471720)) (matchRSpec!3985 lt!2471732 (_1!37088 lt!2471720)))))

(declare-fun lt!2471888 () Unit!160580)

(assert (=> d!2165320 (= lt!2471888 (choose!51570 lt!2471732 (_1!37088 lt!2471720)))))

(assert (=> d!2165320 (validRegex!8634 lt!2471732)))

(assert (=> d!2165320 (= (mainMatchTheorem!3985 lt!2471732 (_1!37088 lt!2471720)) lt!2471888)))

(declare-fun bs!1848743 () Bool)

(assert (= bs!1848743 d!2165320))

(assert (=> bs!1848743 m!7634430))

(assert (=> bs!1848743 m!7634444))

(declare-fun m!7634876 () Bool)

(assert (=> bs!1848743 m!7634876))

(assert (=> bs!1848743 m!7634866))

(assert (=> b!6925582 d!2165320))

(declare-fun bs!1848744 () Bool)

(declare-fun d!2165322 () Bool)

(assert (= bs!1848744 (and d!2165322 b!6926030)))

(declare-fun lambda!393993 () Int)

(assert (=> bs!1848744 (not (= lambda!393993 lambda!393987))))

(declare-fun bs!1848745 () Bool)

(assert (= bs!1848745 (and d!2165322 b!6925844)))

(assert (=> bs!1848745 (not (= lambda!393993 lambda!393966))))

(declare-fun bs!1848746 () Bool)

(assert (= bs!1848746 (and d!2165322 b!6925811)))

(assert (=> bs!1848746 (not (= lambda!393993 lambda!393961))))

(declare-fun bs!1848747 () Bool)

(assert (= bs!1848747 (and d!2165322 b!6925565)))

(assert (=> bs!1848747 (= (and (= s!14361 (_1!37088 lt!2471720)) (= lt!2471732 r1!6342) (= r3!135 r2!6280)) (= lambda!393993 lambda!393929))))

(declare-fun bs!1848748 () Bool)

(assert (= bs!1848748 (and d!2165322 b!6926028)))

(assert (=> bs!1848748 (not (= lambda!393993 lambda!393988))))

(declare-fun bs!1848749 () Bool)

(assert (= bs!1848749 (and d!2165322 d!2165316)))

(assert (=> bs!1848749 (not (= lambda!393993 lambda!393990))))

(declare-fun bs!1848750 () Bool)

(assert (= bs!1848750 (and d!2165322 b!6925580)))

(assert (=> bs!1848750 (not (= lambda!393993 lambda!393932))))

(declare-fun bs!1848751 () Bool)

(assert (= bs!1848751 (and d!2165322 d!2165274)))

(assert (=> bs!1848751 (= (and (= s!14361 lt!2471730) (= lt!2471732 r2!6280)) (= lambda!393993 lambda!393976))))

(assert (=> bs!1848747 (not (= lambda!393993 lambda!393930))))

(declare-fun bs!1848752 () Bool)

(assert (= bs!1848752 (and d!2165322 b!6925582)))

(assert (=> bs!1848752 (not (= lambda!393993 lambda!393928))))

(declare-fun bs!1848753 () Bool)

(assert (= bs!1848753 (and d!2165322 d!2165286)))

(assert (=> bs!1848753 (= (and (= s!14361 lt!2471730) (= lt!2471732 r2!6280)) (= lambda!393993 lambda!393981))))

(declare-fun bs!1848754 () Bool)

(assert (= bs!1848754 (and d!2165322 b!6925809)))

(assert (=> bs!1848754 (not (= lambda!393993 lambda!393962))))

(declare-fun bs!1848755 () Bool)

(assert (= bs!1848755 (and d!2165322 b!6925997)))

(assert (=> bs!1848755 (not (= lambda!393993 lambda!393982))))

(assert (=> bs!1848752 (= lambda!393993 lambda!393927)))

(assert (=> bs!1848749 (= lambda!393993 lambda!393989)))

(declare-fun bs!1848756 () Bool)

(assert (= bs!1848756 (and d!2165322 b!6925846)))

(assert (=> bs!1848756 (not (= lambda!393993 lambda!393965))))

(assert (=> bs!1848750 (= (and (= s!14361 lt!2471730) (= lt!2471732 r2!6280)) (= lambda!393993 lambda!393931))))

(assert (=> bs!1848751 (not (= lambda!393993 lambda!393978))))

(declare-fun bs!1848757 () Bool)

(assert (= bs!1848757 (and d!2165322 b!6925995)))

(assert (=> bs!1848757 (not (= lambda!393993 lambda!393983))))

(assert (=> d!2165322 true))

(assert (=> d!2165322 true))

(assert (=> d!2165322 true))

(assert (=> d!2165322 (= (isDefined!13400 (findConcatSeparation!3111 lt!2471732 r3!135 Nil!66557 s!14361 s!14361)) (Exists!3930 lambda!393993))))

(declare-fun lt!2471889 () Unit!160580)

(assert (=> d!2165322 (= lt!2471889 (choose!51575 lt!2471732 r3!135 s!14361))))

(assert (=> d!2165322 (validRegex!8634 lt!2471732)))

(assert (=> d!2165322 (= (lemmaFindConcatSeparationEquivalentToExists!2873 lt!2471732 r3!135 s!14361) lt!2471889)))

(declare-fun bs!1848758 () Bool)

(assert (= bs!1848758 d!2165322))

(assert (=> bs!1848758 m!7634866))

(assert (=> bs!1848758 m!7634440))

(assert (=> bs!1848758 m!7634440))

(declare-fun m!7634878 () Bool)

(assert (=> bs!1848758 m!7634878))

(declare-fun m!7634880 () Bool)

(assert (=> bs!1848758 m!7634880))

(declare-fun m!7634882 () Bool)

(assert (=> bs!1848758 m!7634882))

(assert (=> b!6925582 d!2165322))

(declare-fun d!2165324 () Bool)

(declare-fun e!4168071 () Bool)

(assert (=> d!2165324 e!4168071))

(declare-fun res!2824558 () Bool)

(assert (=> d!2165324 (=> res!2824558 e!4168071)))

(declare-fun e!4168073 () Bool)

(assert (=> d!2165324 (= res!2824558 e!4168073)))

(declare-fun res!2824559 () Bool)

(assert (=> d!2165324 (=> (not res!2824559) (not e!4168073))))

(declare-fun lt!2471891 () Option!16697)

(assert (=> d!2165324 (= res!2824559 (isDefined!13400 lt!2471891))))

(declare-fun e!4168070 () Option!16697)

(assert (=> d!2165324 (= lt!2471891 e!4168070)))

(declare-fun c!1285671 () Bool)

(declare-fun e!4168072 () Bool)

(assert (=> d!2165324 (= c!1285671 e!4168072)))

(declare-fun res!2824561 () Bool)

(assert (=> d!2165324 (=> (not res!2824561) (not e!4168072))))

(assert (=> d!2165324 (= res!2824561 (matchR!9067 lt!2471732 Nil!66557))))

(assert (=> d!2165324 (validRegex!8634 lt!2471732)))

(assert (=> d!2165324 (= (findConcatSeparation!3111 lt!2471732 r3!135 Nil!66557 s!14361 s!14361) lt!2471891)))

(declare-fun b!6926058 () Bool)

(assert (=> b!6926058 (= e!4168071 (not (isDefined!13400 lt!2471891)))))

(declare-fun b!6926059 () Bool)

(assert (=> b!6926059 (= e!4168072 (matchR!9067 r3!135 s!14361))))

(declare-fun b!6926060 () Bool)

(declare-fun e!4168069 () Option!16697)

(assert (=> b!6926060 (= e!4168069 None!16696)))

(declare-fun b!6926061 () Bool)

(declare-fun res!2824560 () Bool)

(assert (=> b!6926061 (=> (not res!2824560) (not e!4168073))))

(assert (=> b!6926061 (= res!2824560 (matchR!9067 lt!2471732 (_1!37088 (get!23333 lt!2471891))))))

(declare-fun b!6926062 () Bool)

(declare-fun res!2824557 () Bool)

(assert (=> b!6926062 (=> (not res!2824557) (not e!4168073))))

(assert (=> b!6926062 (= res!2824557 (matchR!9067 r3!135 (_2!37088 (get!23333 lt!2471891))))))

(declare-fun b!6926063 () Bool)

(declare-fun lt!2471892 () Unit!160580)

(declare-fun lt!2471890 () Unit!160580)

(assert (=> b!6926063 (= lt!2471892 lt!2471890)))

(assert (=> b!6926063 (= (++!14971 (++!14971 Nil!66557 (Cons!66557 (h!73005 s!14361) Nil!66557)) (t!380424 s!14361)) s!14361)))

(assert (=> b!6926063 (= lt!2471890 (lemmaMoveElementToOtherListKeepsConcatEq!2834 Nil!66557 (h!73005 s!14361) (t!380424 s!14361) s!14361))))

(assert (=> b!6926063 (= e!4168069 (findConcatSeparation!3111 lt!2471732 r3!135 (++!14971 Nil!66557 (Cons!66557 (h!73005 s!14361) Nil!66557)) (t!380424 s!14361) s!14361))))

(declare-fun b!6926064 () Bool)

(assert (=> b!6926064 (= e!4168070 (Some!16696 (tuple2!67571 Nil!66557 s!14361)))))

(declare-fun b!6926065 () Bool)

(assert (=> b!6926065 (= e!4168073 (= (++!14971 (_1!37088 (get!23333 lt!2471891)) (_2!37088 (get!23333 lt!2471891))) s!14361))))

(declare-fun b!6926066 () Bool)

(assert (=> b!6926066 (= e!4168070 e!4168069)))

(declare-fun c!1285672 () Bool)

(assert (=> b!6926066 (= c!1285672 (is-Nil!66557 s!14361))))

(assert (= (and d!2165324 res!2824561) b!6926059))

(assert (= (and d!2165324 c!1285671) b!6926064))

(assert (= (and d!2165324 (not c!1285671)) b!6926066))

(assert (= (and b!6926066 c!1285672) b!6926060))

(assert (= (and b!6926066 (not c!1285672)) b!6926063))

(assert (= (and d!2165324 res!2824559) b!6926061))

(assert (= (and b!6926061 res!2824560) b!6926062))

(assert (= (and b!6926062 res!2824557) b!6926065))

(assert (= (and d!2165324 (not res!2824558)) b!6926058))

(declare-fun m!7634884 () Bool)

(assert (=> b!6926062 m!7634884))

(declare-fun m!7634886 () Bool)

(assert (=> b!6926062 m!7634886))

(declare-fun m!7634888 () Bool)

(assert (=> b!6926058 m!7634888))

(declare-fun m!7634890 () Bool)

(assert (=> b!6926059 m!7634890))

(assert (=> b!6926063 m!7634822))

(assert (=> b!6926063 m!7634822))

(assert (=> b!6926063 m!7634824))

(assert (=> b!6926063 m!7634826))

(assert (=> b!6926063 m!7634822))

(declare-fun m!7634892 () Bool)

(assert (=> b!6926063 m!7634892))

(assert (=> b!6926065 m!7634884))

(declare-fun m!7634894 () Bool)

(assert (=> b!6926065 m!7634894))

(assert (=> d!2165324 m!7634888))

(declare-fun m!7634896 () Bool)

(assert (=> d!2165324 m!7634896))

(assert (=> d!2165324 m!7634866))

(assert (=> b!6926061 m!7634884))

(declare-fun m!7634898 () Bool)

(assert (=> b!6926061 m!7634898))

(assert (=> b!6925582 d!2165324))

(declare-fun d!2165326 () Bool)

(assert (=> d!2165326 (= (get!23333 lt!2471718) (v!52968 lt!2471718))))

(assert (=> b!6925582 d!2165326))

(declare-fun d!2165328 () Bool)

(assert (=> d!2165328 (= (Exists!3930 lambda!393927) (choose!51574 lambda!393927))))

(declare-fun bs!1848759 () Bool)

(assert (= bs!1848759 d!2165328))

(declare-fun m!7634900 () Bool)

(assert (=> bs!1848759 m!7634900))

(assert (=> b!6925582 d!2165328))

(declare-fun d!2165330 () Bool)

(assert (=> d!2165330 (= (isDefined!13400 lt!2471718) (not (isEmpty!38814 lt!2471718)))))

(declare-fun bs!1848760 () Bool)

(assert (= bs!1848760 d!2165330))

(declare-fun m!7634902 () Bool)

(assert (=> bs!1848760 m!7634902))

(assert (=> b!6925582 d!2165330))

(declare-fun b!6926067 () Bool)

(declare-fun res!2824564 () Bool)

(declare-fun e!4168079 () Bool)

(assert (=> b!6926067 (=> res!2824564 e!4168079)))

(declare-fun e!4168076 () Bool)

(assert (=> b!6926067 (= res!2824564 e!4168076)))

(declare-fun res!2824569 () Bool)

(assert (=> b!6926067 (=> (not res!2824569) (not e!4168076))))

(declare-fun lt!2471894 () Bool)

(assert (=> b!6926067 (= res!2824569 lt!2471894)))

(declare-fun b!6926068 () Bool)

(declare-fun res!2824566 () Bool)

(declare-fun e!4168074 () Bool)

(assert (=> b!6926068 (=> res!2824566 e!4168074)))

(assert (=> b!6926068 (= res!2824566 (not (isEmpty!38812 (tail!12935 (_2!37088 lt!2471720)))))))

(declare-fun b!6926069 () Bool)

(declare-fun e!4168078 () Bool)

(assert (=> b!6926069 (= e!4168078 e!4168074)))

(declare-fun res!2824567 () Bool)

(assert (=> b!6926069 (=> res!2824567 e!4168074)))

(declare-fun call!629472 () Bool)

(assert (=> b!6926069 (= res!2824567 call!629472)))

(declare-fun b!6926070 () Bool)

(declare-fun e!4168080 () Bool)

(assert (=> b!6926070 (= e!4168080 (matchR!9067 (derivativeStep!5430 r3!135 (head!13883 (_2!37088 lt!2471720))) (tail!12935 (_2!37088 lt!2471720))))))

(declare-fun b!6926071 () Bool)

(declare-fun res!2824562 () Bool)

(assert (=> b!6926071 (=> (not res!2824562) (not e!4168076))))

(assert (=> b!6926071 (= res!2824562 (not call!629472))))

(declare-fun b!6926072 () Bool)

(assert (=> b!6926072 (= e!4168076 (= (head!13883 (_2!37088 lt!2471720)) (c!1285584 r3!135)))))

(declare-fun b!6926073 () Bool)

(declare-fun res!2824568 () Bool)

(assert (=> b!6926073 (=> res!2824568 e!4168079)))

(assert (=> b!6926073 (= res!2824568 (not (is-ElementMatch!16928 r3!135)))))

(declare-fun e!4168075 () Bool)

(assert (=> b!6926073 (= e!4168075 e!4168079)))

(declare-fun bm!629467 () Bool)

(assert (=> bm!629467 (= call!629472 (isEmpty!38812 (_2!37088 lt!2471720)))))

(declare-fun b!6926074 () Bool)

(declare-fun e!4168077 () Bool)

(assert (=> b!6926074 (= e!4168077 e!4168075)))

(declare-fun c!1285673 () Bool)

(assert (=> b!6926074 (= c!1285673 (is-EmptyLang!16928 r3!135))))

(declare-fun b!6926075 () Bool)

(assert (=> b!6926075 (= e!4168075 (not lt!2471894))))

(declare-fun b!6926076 () Bool)

(declare-fun res!2824563 () Bool)

(assert (=> b!6926076 (=> (not res!2824563) (not e!4168076))))

(assert (=> b!6926076 (= res!2824563 (isEmpty!38812 (tail!12935 (_2!37088 lt!2471720))))))

(declare-fun b!6926077 () Bool)

(assert (=> b!6926077 (= e!4168080 (nullable!6755 r3!135))))

(declare-fun b!6926078 () Bool)

(assert (=> b!6926078 (= e!4168077 (= lt!2471894 call!629472))))

(declare-fun b!6926079 () Bool)

(assert (=> b!6926079 (= e!4168074 (not (= (head!13883 (_2!37088 lt!2471720)) (c!1285584 r3!135))))))

(declare-fun d!2165332 () Bool)

(assert (=> d!2165332 e!4168077))

(declare-fun c!1285674 () Bool)

(assert (=> d!2165332 (= c!1285674 (is-EmptyExpr!16928 r3!135))))

(assert (=> d!2165332 (= lt!2471894 e!4168080)))

(declare-fun c!1285675 () Bool)

(assert (=> d!2165332 (= c!1285675 (isEmpty!38812 (_2!37088 lt!2471720)))))

(assert (=> d!2165332 (validRegex!8634 r3!135)))

(assert (=> d!2165332 (= (matchR!9067 r3!135 (_2!37088 lt!2471720)) lt!2471894)))

(declare-fun b!6926080 () Bool)

(assert (=> b!6926080 (= e!4168079 e!4168078)))

(declare-fun res!2824565 () Bool)

(assert (=> b!6926080 (=> (not res!2824565) (not e!4168078))))

(assert (=> b!6926080 (= res!2824565 (not lt!2471894))))

(assert (= (and d!2165332 c!1285675) b!6926077))

(assert (= (and d!2165332 (not c!1285675)) b!6926070))

(assert (= (and d!2165332 c!1285674) b!6926078))

(assert (= (and d!2165332 (not c!1285674)) b!6926074))

(assert (= (and b!6926074 c!1285673) b!6926075))

(assert (= (and b!6926074 (not c!1285673)) b!6926073))

(assert (= (and b!6926073 (not res!2824568)) b!6926067))

(assert (= (and b!6926067 res!2824569) b!6926071))

(assert (= (and b!6926071 res!2824562) b!6926076))

(assert (= (and b!6926076 res!2824563) b!6926072))

(assert (= (and b!6926067 (not res!2824564)) b!6926080))

(assert (= (and b!6926080 res!2824565) b!6926069))

(assert (= (and b!6926069 (not res!2824567)) b!6926068))

(assert (= (and b!6926068 (not res!2824566)) b!6926079))

(assert (= (or b!6926078 b!6926069 b!6926071) bm!629467))

(declare-fun m!7634904 () Bool)

(assert (=> b!6926068 m!7634904))

(assert (=> b!6926068 m!7634904))

(declare-fun m!7634906 () Bool)

(assert (=> b!6926068 m!7634906))

(declare-fun m!7634908 () Bool)

(assert (=> b!6926079 m!7634908))

(assert (=> b!6926070 m!7634908))

(assert (=> b!6926070 m!7634908))

(declare-fun m!7634910 () Bool)

(assert (=> b!6926070 m!7634910))

(assert (=> b!6926070 m!7634904))

(assert (=> b!6926070 m!7634910))

(assert (=> b!6926070 m!7634904))

(declare-fun m!7634912 () Bool)

(assert (=> b!6926070 m!7634912))

(declare-fun m!7634914 () Bool)

(assert (=> b!6926077 m!7634914))

(declare-fun m!7634916 () Bool)

(assert (=> d!2165332 m!7634916))

(assert (=> d!2165332 m!7634416))

(assert (=> b!6926072 m!7634908))

(assert (=> bm!629467 m!7634916))

(assert (=> b!6926076 m!7634904))

(assert (=> b!6926076 m!7634904))

(assert (=> b!6926076 m!7634906))

(assert (=> b!6925573 d!2165332))

(declare-fun b!6926082 () Bool)

(declare-fun e!4168082 () List!66681)

(assert (=> b!6926082 (= e!4168082 (Cons!66557 (h!73005 (_1!37088 lt!2471739)) (++!14971 (t!380424 (_1!37088 lt!2471739)) lt!2471730)))))

(declare-fun d!2165334 () Bool)

(declare-fun e!4168081 () Bool)

(assert (=> d!2165334 e!4168081))

(declare-fun res!2824570 () Bool)

(assert (=> d!2165334 (=> (not res!2824570) (not e!4168081))))

(declare-fun lt!2471895 () List!66681)

(assert (=> d!2165334 (= res!2824570 (= (content!13083 lt!2471895) (set.union (content!13083 (_1!37088 lt!2471739)) (content!13083 lt!2471730))))))

(assert (=> d!2165334 (= lt!2471895 e!4168082)))

(declare-fun c!1285676 () Bool)

(assert (=> d!2165334 (= c!1285676 (is-Nil!66557 (_1!37088 lt!2471739)))))

(assert (=> d!2165334 (= (++!14971 (_1!37088 lt!2471739) lt!2471730) lt!2471895)))

(declare-fun b!6926084 () Bool)

(assert (=> b!6926084 (= e!4168081 (or (not (= lt!2471730 Nil!66557)) (= lt!2471895 (_1!37088 lt!2471739))))))

(declare-fun b!6926083 () Bool)

(declare-fun res!2824571 () Bool)

(assert (=> b!6926083 (=> (not res!2824571) (not e!4168081))))

(assert (=> b!6926083 (= res!2824571 (= (size!40780 lt!2471895) (+ (size!40780 (_1!37088 lt!2471739)) (size!40780 lt!2471730))))))

(declare-fun b!6926081 () Bool)

(assert (=> b!6926081 (= e!4168082 lt!2471730)))

(assert (= (and d!2165334 c!1285676) b!6926081))

(assert (= (and d!2165334 (not c!1285676)) b!6926082))

(assert (= (and d!2165334 res!2824570) b!6926083))

(assert (= (and b!6926083 res!2824571) b!6926084))

(declare-fun m!7634918 () Bool)

(assert (=> b!6926082 m!7634918))

(declare-fun m!7634920 () Bool)

(assert (=> d!2165334 m!7634920))

(assert (=> d!2165334 m!7634640))

(declare-fun m!7634922 () Bool)

(assert (=> d!2165334 m!7634922))

(declare-fun m!7634924 () Bool)

(assert (=> b!6926083 m!7634924))

(assert (=> b!6926083 m!7634646))

(declare-fun m!7634926 () Bool)

(assert (=> b!6926083 m!7634926))

(assert (=> b!6925563 d!2165334))

(declare-fun d!2165336 () Bool)

(assert (=> d!2165336 (= (++!14971 (++!14971 (_1!37088 lt!2471739) (_2!37088 lt!2471739)) (_2!37088 lt!2471720)) (++!14971 (_1!37088 lt!2471739) (++!14971 (_2!37088 lt!2471739) (_2!37088 lt!2471720))))))

(declare-fun lt!2471898 () Unit!160580)

(declare-fun choose!51579 (List!66681 List!66681 List!66681) Unit!160580)

(assert (=> d!2165336 (= lt!2471898 (choose!51579 (_1!37088 lt!2471739) (_2!37088 lt!2471739) (_2!37088 lt!2471720)))))

(assert (=> d!2165336 (= (lemmaConcatAssociativity!3019 (_1!37088 lt!2471739) (_2!37088 lt!2471739) (_2!37088 lt!2471720)) lt!2471898)))

(declare-fun bs!1848769 () Bool)

(assert (= bs!1848769 d!2165336))

(assert (=> bs!1848769 m!7634474))

(declare-fun m!7634928 () Bool)

(assert (=> bs!1848769 m!7634928))

(assert (=> bs!1848769 m!7634474))

(declare-fun m!7634930 () Bool)

(assert (=> bs!1848769 m!7634930))

(assert (=> bs!1848769 m!7634516))

(assert (=> bs!1848769 m!7634518))

(assert (=> bs!1848769 m!7634516))

(assert (=> b!6925563 d!2165336))

(declare-fun bs!1848770 () Bool)

(declare-fun b!6926090 () Bool)

(assert (= bs!1848770 (and b!6926090 b!6926030)))

(declare-fun lambda!393998 () Int)

(assert (=> bs!1848770 (= (and (= s!14361 (_1!37088 lt!2471720)) (= (reg!17257 lt!2471722) (reg!17257 lt!2471732)) (= lt!2471722 lt!2471732)) (= lambda!393998 lambda!393987))))

(declare-fun bs!1848771 () Bool)

(assert (= bs!1848771 (and b!6926090 b!6925844)))

(assert (=> bs!1848771 (not (= lambda!393998 lambda!393966))))

(declare-fun bs!1848772 () Bool)

(assert (= bs!1848772 (and b!6926090 b!6925811)))

(assert (=> bs!1848772 (= (and (= s!14361 (_2!37088 lt!2471739)) (= (reg!17257 lt!2471722) (reg!17257 r2!6280)) (= lt!2471722 r2!6280)) (= lambda!393998 lambda!393961))))

(declare-fun bs!1848773 () Bool)

(assert (= bs!1848773 (and b!6926090 b!6925565)))

(assert (=> bs!1848773 (not (= lambda!393998 lambda!393929))))

(declare-fun bs!1848775 () Bool)

(assert (= bs!1848775 (and b!6926090 b!6926028)))

(assert (=> bs!1848775 (not (= lambda!393998 lambda!393988))))

(declare-fun bs!1848776 () Bool)

(assert (= bs!1848776 (and b!6926090 d!2165316)))

(assert (=> bs!1848776 (not (= lambda!393998 lambda!393990))))

(declare-fun bs!1848777 () Bool)

(assert (= bs!1848777 (and b!6926090 b!6925580)))

(assert (=> bs!1848777 (not (= lambda!393998 lambda!393932))))

(declare-fun bs!1848778 () Bool)

(assert (= bs!1848778 (and b!6926090 d!2165274)))

(assert (=> bs!1848778 (not (= lambda!393998 lambda!393976))))

(declare-fun bs!1848779 () Bool)

(assert (= bs!1848779 (and b!6926090 d!2165322)))

(assert (=> bs!1848779 (not (= lambda!393998 lambda!393993))))

(assert (=> bs!1848773 (not (= lambda!393998 lambda!393930))))

(declare-fun bs!1848780 () Bool)

(assert (= bs!1848780 (and b!6926090 b!6925582)))

(assert (=> bs!1848780 (not (= lambda!393998 lambda!393928))))

(declare-fun bs!1848781 () Bool)

(assert (= bs!1848781 (and b!6926090 d!2165286)))

(assert (=> bs!1848781 (not (= lambda!393998 lambda!393981))))

(declare-fun bs!1848782 () Bool)

(assert (= bs!1848782 (and b!6926090 b!6925809)))

(assert (=> bs!1848782 (not (= lambda!393998 lambda!393962))))

(declare-fun bs!1848783 () Bool)

(assert (= bs!1848783 (and b!6926090 b!6925997)))

(assert (=> bs!1848783 (= (and (= s!14361 lt!2471730) (= (reg!17257 lt!2471722) (reg!17257 lt!2471728)) (= lt!2471722 lt!2471728)) (= lambda!393998 lambda!393982))))

(assert (=> bs!1848780 (not (= lambda!393998 lambda!393927))))

(assert (=> bs!1848776 (not (= lambda!393998 lambda!393989))))

(declare-fun bs!1848784 () Bool)

(assert (= bs!1848784 (and b!6926090 b!6925846)))

(assert (=> bs!1848784 (= (and (= s!14361 (_1!37088 lt!2471739)) (= (reg!17257 lt!2471722) (reg!17257 r1!6342)) (= lt!2471722 r1!6342)) (= lambda!393998 lambda!393965))))

(assert (=> bs!1848777 (not (= lambda!393998 lambda!393931))))

(assert (=> bs!1848778 (not (= lambda!393998 lambda!393978))))

(declare-fun bs!1848785 () Bool)

(assert (= bs!1848785 (and b!6926090 b!6925995)))

(assert (=> bs!1848785 (not (= lambda!393998 lambda!393983))))

(assert (=> b!6926090 true))

(assert (=> b!6926090 true))

(declare-fun bs!1848786 () Bool)

(declare-fun b!6926088 () Bool)

(assert (= bs!1848786 (and b!6926088 b!6926030)))

(declare-fun lambda!393999 () Int)

(assert (=> bs!1848786 (not (= lambda!393999 lambda!393987))))

(declare-fun bs!1848788 () Bool)

(assert (= bs!1848788 (and b!6926088 b!6925844)))

(assert (=> bs!1848788 (= (and (= s!14361 (_1!37088 lt!2471739)) (= (regOne!34368 lt!2471722) (regOne!34368 r1!6342)) (= (regTwo!34368 lt!2471722) (regTwo!34368 r1!6342))) (= lambda!393999 lambda!393966))))

(declare-fun bs!1848789 () Bool)

(assert (= bs!1848789 (and b!6926088 b!6925811)))

(assert (=> bs!1848789 (not (= lambda!393999 lambda!393961))))

(declare-fun bs!1848790 () Bool)

(assert (= bs!1848790 (and b!6926088 b!6925565)))

(assert (=> bs!1848790 (not (= lambda!393999 lambda!393929))))

(declare-fun bs!1848792 () Bool)

(assert (= bs!1848792 (and b!6926088 d!2165316)))

(assert (=> bs!1848792 (= (and (= (regOne!34368 lt!2471722) lt!2471732) (= (regTwo!34368 lt!2471722) r3!135)) (= lambda!393999 lambda!393990))))

(declare-fun bs!1848793 () Bool)

(assert (= bs!1848793 (and b!6926088 b!6925580)))

(assert (=> bs!1848793 (= (and (= s!14361 lt!2471730) (= (regOne!34368 lt!2471722) r2!6280) (= (regTwo!34368 lt!2471722) r3!135)) (= lambda!393999 lambda!393932))))

(declare-fun bs!1848794 () Bool)

(assert (= bs!1848794 (and b!6926088 d!2165274)))

(assert (=> bs!1848794 (not (= lambda!393999 lambda!393976))))

(declare-fun bs!1848795 () Bool)

(assert (= bs!1848795 (and b!6926088 d!2165322)))

(assert (=> bs!1848795 (not (= lambda!393999 lambda!393993))))

(assert (=> bs!1848790 (= (and (= s!14361 (_1!37088 lt!2471720)) (= (regOne!34368 lt!2471722) r1!6342) (= (regTwo!34368 lt!2471722) r2!6280)) (= lambda!393999 lambda!393930))))

(declare-fun bs!1848796 () Bool)

(assert (= bs!1848796 (and b!6926088 b!6925582)))

(assert (=> bs!1848796 (= (and (= (regOne!34368 lt!2471722) lt!2471732) (= (regTwo!34368 lt!2471722) r3!135)) (= lambda!393999 lambda!393928))))

(declare-fun bs!1848797 () Bool)

(assert (= bs!1848797 (and b!6926088 d!2165286)))

(assert (=> bs!1848797 (not (= lambda!393999 lambda!393981))))

(declare-fun bs!1848798 () Bool)

(assert (= bs!1848798 (and b!6926088 b!6925809)))

(assert (=> bs!1848798 (= (and (= s!14361 (_2!37088 lt!2471739)) (= (regOne!34368 lt!2471722) (regOne!34368 r2!6280)) (= (regTwo!34368 lt!2471722) (regTwo!34368 r2!6280))) (= lambda!393999 lambda!393962))))

(declare-fun bs!1848799 () Bool)

(assert (= bs!1848799 (and b!6926088 b!6925997)))

(assert (=> bs!1848799 (not (= lambda!393999 lambda!393982))))

(assert (=> bs!1848796 (not (= lambda!393999 lambda!393927))))

(assert (=> bs!1848792 (not (= lambda!393999 lambda!393989))))

(declare-fun bs!1848800 () Bool)

(assert (= bs!1848800 (and b!6926088 b!6925846)))

(assert (=> bs!1848800 (not (= lambda!393999 lambda!393965))))

(declare-fun bs!1848801 () Bool)

(assert (= bs!1848801 (and b!6926088 b!6926028)))

(assert (=> bs!1848801 (= (and (= s!14361 (_1!37088 lt!2471720)) (= (regOne!34368 lt!2471722) (regOne!34368 lt!2471732)) (= (regTwo!34368 lt!2471722) (regTwo!34368 lt!2471732))) (= lambda!393999 lambda!393988))))

(declare-fun bs!1848802 () Bool)

(assert (= bs!1848802 (and b!6926088 b!6926090)))

(assert (=> bs!1848802 (not (= lambda!393999 lambda!393998))))

(assert (=> bs!1848793 (not (= lambda!393999 lambda!393931))))

(assert (=> bs!1848794 (= (and (= s!14361 lt!2471730) (= (regOne!34368 lt!2471722) r2!6280) (= (regTwo!34368 lt!2471722) r3!135)) (= lambda!393999 lambda!393978))))

(declare-fun bs!1848803 () Bool)

(assert (= bs!1848803 (and b!6926088 b!6925995)))

(assert (=> bs!1848803 (= (and (= s!14361 lt!2471730) (= (regOne!34368 lt!2471722) (regOne!34368 lt!2471728)) (= (regTwo!34368 lt!2471722) (regTwo!34368 lt!2471728))) (= lambda!393999 lambda!393983))))

(assert (=> b!6926088 true))

(assert (=> b!6926088 true))

(declare-fun call!629474 () Bool)

(declare-fun c!1285679 () Bool)

(declare-fun bm!629468 () Bool)

(assert (=> bm!629468 (= call!629474 (Exists!3930 (ite c!1285679 lambda!393998 lambda!393999)))))

(declare-fun bm!629469 () Bool)

(declare-fun call!629473 () Bool)

(assert (=> bm!629469 (= call!629473 (isEmpty!38812 s!14361))))

(declare-fun b!6926085 () Bool)

(declare-fun c!1285677 () Bool)

(assert (=> b!6926085 (= c!1285677 (is-ElementMatch!16928 lt!2471722))))

(declare-fun e!4168084 () Bool)

(declare-fun e!4168088 () Bool)

(assert (=> b!6926085 (= e!4168084 e!4168088)))

(declare-fun b!6926086 () Bool)

(declare-fun c!1285680 () Bool)

(assert (=> b!6926086 (= c!1285680 (is-Union!16928 lt!2471722))))

(declare-fun e!4168089 () Bool)

(assert (=> b!6926086 (= e!4168088 e!4168089)))

(declare-fun e!4168083 () Bool)

(assert (=> b!6926088 (= e!4168083 call!629474)))

(declare-fun b!6926089 () Bool)

(declare-fun e!4168086 () Bool)

(assert (=> b!6926089 (= e!4168086 e!4168084)))

(declare-fun res!2824573 () Bool)

(assert (=> b!6926089 (= res!2824573 (not (is-EmptyLang!16928 lt!2471722)))))

(assert (=> b!6926089 (=> (not res!2824573) (not e!4168084))))

(declare-fun e!4168085 () Bool)

(assert (=> b!6926090 (= e!4168085 call!629474)))

(declare-fun b!6926091 () Bool)

(declare-fun e!4168087 () Bool)

(assert (=> b!6926091 (= e!4168089 e!4168087)))

(declare-fun res!2824574 () Bool)

(assert (=> b!6926091 (= res!2824574 (matchRSpec!3985 (regOne!34369 lt!2471722) s!14361))))

(assert (=> b!6926091 (=> res!2824574 e!4168087)))

(declare-fun d!2165338 () Bool)

(declare-fun c!1285678 () Bool)

(assert (=> d!2165338 (= c!1285678 (is-EmptyExpr!16928 lt!2471722))))

(assert (=> d!2165338 (= (matchRSpec!3985 lt!2471722 s!14361) e!4168086)))

(declare-fun b!6926087 () Bool)

(assert (=> b!6926087 (= e!4168087 (matchRSpec!3985 (regTwo!34369 lt!2471722) s!14361))))

(declare-fun b!6926092 () Bool)

(declare-fun res!2824572 () Bool)

(assert (=> b!6926092 (=> res!2824572 e!4168085)))

(assert (=> b!6926092 (= res!2824572 call!629473)))

(assert (=> b!6926092 (= e!4168083 e!4168085)))

(declare-fun b!6926093 () Bool)

(assert (=> b!6926093 (= e!4168086 call!629473)))

(declare-fun b!6926094 () Bool)

(assert (=> b!6926094 (= e!4168088 (= s!14361 (Cons!66557 (c!1285584 lt!2471722) Nil!66557)))))

(declare-fun b!6926095 () Bool)

(assert (=> b!6926095 (= e!4168089 e!4168083)))

(assert (=> b!6926095 (= c!1285679 (is-Star!16928 lt!2471722))))

(assert (= (and d!2165338 c!1285678) b!6926093))

(assert (= (and d!2165338 (not c!1285678)) b!6926089))

(assert (= (and b!6926089 res!2824573) b!6926085))

(assert (= (and b!6926085 c!1285677) b!6926094))

(assert (= (and b!6926085 (not c!1285677)) b!6926086))

(assert (= (and b!6926086 c!1285680) b!6926091))

(assert (= (and b!6926086 (not c!1285680)) b!6926095))

(assert (= (and b!6926091 (not res!2824574)) b!6926087))

(assert (= (and b!6926095 c!1285679) b!6926092))

(assert (= (and b!6926095 (not c!1285679)) b!6926088))

(assert (= (and b!6926092 (not res!2824572)) b!6926090))

(assert (= (or b!6926090 b!6926088) bm!629468))

(assert (= (or b!6926093 b!6926092) bm!629469))

(declare-fun m!7634942 () Bool)

(assert (=> bm!629468 m!7634942))

(declare-fun m!7634944 () Bool)

(assert (=> bm!629469 m!7634944))

(declare-fun m!7634946 () Bool)

(assert (=> b!6926091 m!7634946))

(declare-fun m!7634948 () Bool)

(assert (=> b!6926087 m!7634948))

(assert (=> b!6925574 d!2165338))

(declare-fun b!6926096 () Bool)

(declare-fun res!2824577 () Bool)

(declare-fun e!4168095 () Bool)

(assert (=> b!6926096 (=> res!2824577 e!4168095)))

(declare-fun e!4168092 () Bool)

(assert (=> b!6926096 (= res!2824577 e!4168092)))

(declare-fun res!2824582 () Bool)

(assert (=> b!6926096 (=> (not res!2824582) (not e!4168092))))

(declare-fun lt!2471900 () Bool)

(assert (=> b!6926096 (= res!2824582 lt!2471900)))

(declare-fun b!6926097 () Bool)

(declare-fun res!2824579 () Bool)

(declare-fun e!4168090 () Bool)

(assert (=> b!6926097 (=> res!2824579 e!4168090)))

(assert (=> b!6926097 (= res!2824579 (not (isEmpty!38812 (tail!12935 s!14361))))))

(declare-fun b!6926098 () Bool)

(declare-fun e!4168094 () Bool)

(assert (=> b!6926098 (= e!4168094 e!4168090)))

(declare-fun res!2824580 () Bool)

(assert (=> b!6926098 (=> res!2824580 e!4168090)))

(declare-fun call!629475 () Bool)

(assert (=> b!6926098 (= res!2824580 call!629475)))

(declare-fun b!6926099 () Bool)

(declare-fun e!4168096 () Bool)

(assert (=> b!6926099 (= e!4168096 (matchR!9067 (derivativeStep!5430 lt!2471722 (head!13883 s!14361)) (tail!12935 s!14361)))))

(declare-fun b!6926100 () Bool)

(declare-fun res!2824575 () Bool)

(assert (=> b!6926100 (=> (not res!2824575) (not e!4168092))))

(assert (=> b!6926100 (= res!2824575 (not call!629475))))

(declare-fun b!6926101 () Bool)

(assert (=> b!6926101 (= e!4168092 (= (head!13883 s!14361) (c!1285584 lt!2471722)))))

(declare-fun b!6926102 () Bool)

(declare-fun res!2824581 () Bool)

(assert (=> b!6926102 (=> res!2824581 e!4168095)))

(assert (=> b!6926102 (= res!2824581 (not (is-ElementMatch!16928 lt!2471722)))))

(declare-fun e!4168091 () Bool)

(assert (=> b!6926102 (= e!4168091 e!4168095)))

(declare-fun bm!629470 () Bool)

(assert (=> bm!629470 (= call!629475 (isEmpty!38812 s!14361))))

(declare-fun b!6926103 () Bool)

(declare-fun e!4168093 () Bool)

(assert (=> b!6926103 (= e!4168093 e!4168091)))

(declare-fun c!1285681 () Bool)

(assert (=> b!6926103 (= c!1285681 (is-EmptyLang!16928 lt!2471722))))

(declare-fun b!6926104 () Bool)

(assert (=> b!6926104 (= e!4168091 (not lt!2471900))))

(declare-fun b!6926105 () Bool)

(declare-fun res!2824576 () Bool)

(assert (=> b!6926105 (=> (not res!2824576) (not e!4168092))))

(assert (=> b!6926105 (= res!2824576 (isEmpty!38812 (tail!12935 s!14361)))))

(declare-fun b!6926106 () Bool)

(assert (=> b!6926106 (= e!4168096 (nullable!6755 lt!2471722))))

(declare-fun b!6926107 () Bool)

(assert (=> b!6926107 (= e!4168093 (= lt!2471900 call!629475))))

(declare-fun b!6926108 () Bool)

(assert (=> b!6926108 (= e!4168090 (not (= (head!13883 s!14361) (c!1285584 lt!2471722))))))

(declare-fun d!2165346 () Bool)

(assert (=> d!2165346 e!4168093))

(declare-fun c!1285682 () Bool)

(assert (=> d!2165346 (= c!1285682 (is-EmptyExpr!16928 lt!2471722))))

(assert (=> d!2165346 (= lt!2471900 e!4168096)))

(declare-fun c!1285683 () Bool)

(assert (=> d!2165346 (= c!1285683 (isEmpty!38812 s!14361))))

(assert (=> d!2165346 (validRegex!8634 lt!2471722)))

(assert (=> d!2165346 (= (matchR!9067 lt!2471722 s!14361) lt!2471900)))

(declare-fun b!6926109 () Bool)

(assert (=> b!6926109 (= e!4168095 e!4168094)))

(declare-fun res!2824578 () Bool)

(assert (=> b!6926109 (=> (not res!2824578) (not e!4168094))))

(assert (=> b!6926109 (= res!2824578 (not lt!2471900))))

(assert (= (and d!2165346 c!1285683) b!6926106))

(assert (= (and d!2165346 (not c!1285683)) b!6926099))

(assert (= (and d!2165346 c!1285682) b!6926107))

(assert (= (and d!2165346 (not c!1285682)) b!6926103))

(assert (= (and b!6926103 c!1285681) b!6926104))

(assert (= (and b!6926103 (not c!1285681)) b!6926102))

(assert (= (and b!6926102 (not res!2824581)) b!6926096))

(assert (= (and b!6926096 res!2824582) b!6926100))

(assert (= (and b!6926100 res!2824575) b!6926105))

(assert (= (and b!6926105 res!2824576) b!6926101))

(assert (= (and b!6926096 (not res!2824577)) b!6926109))

(assert (= (and b!6926109 res!2824578) b!6926098))

(assert (= (and b!6926098 (not res!2824580)) b!6926097))

(assert (= (and b!6926097 (not res!2824579)) b!6926108))

(assert (= (or b!6926107 b!6926098 b!6926100) bm!629470))

(declare-fun m!7634950 () Bool)

(assert (=> b!6926097 m!7634950))

(assert (=> b!6926097 m!7634950))

(declare-fun m!7634952 () Bool)

(assert (=> b!6926097 m!7634952))

(declare-fun m!7634954 () Bool)

(assert (=> b!6926108 m!7634954))

(assert (=> b!6926099 m!7634954))

(assert (=> b!6926099 m!7634954))

(declare-fun m!7634956 () Bool)

(assert (=> b!6926099 m!7634956))

(assert (=> b!6926099 m!7634950))

(assert (=> b!6926099 m!7634956))

(assert (=> b!6926099 m!7634950))

(declare-fun m!7634958 () Bool)

(assert (=> b!6926099 m!7634958))

(declare-fun m!7634960 () Bool)

(assert (=> b!6926106 m!7634960))

(assert (=> d!2165346 m!7634944))

(declare-fun m!7634962 () Bool)

(assert (=> d!2165346 m!7634962))

(assert (=> b!6926101 m!7634954))

(assert (=> bm!629470 m!7634944))

(assert (=> b!6926105 m!7634950))

(assert (=> b!6926105 m!7634950))

(assert (=> b!6926105 m!7634952))

(assert (=> b!6925574 d!2165346))

(declare-fun d!2165348 () Bool)

(assert (=> d!2165348 (= (matchR!9067 lt!2471727 s!14361) (matchRSpec!3985 lt!2471727 s!14361))))

(declare-fun lt!2471901 () Unit!160580)

(assert (=> d!2165348 (= lt!2471901 (choose!51570 lt!2471727 s!14361))))

(assert (=> d!2165348 (validRegex!8634 lt!2471727)))

(assert (=> d!2165348 (= (mainMatchTheorem!3985 lt!2471727 s!14361) lt!2471901)))

(declare-fun bs!1848804 () Bool)

(assert (= bs!1848804 d!2165348))

(assert (=> bs!1848804 m!7634458))

(assert (=> bs!1848804 m!7634468))

(declare-fun m!7634964 () Bool)

(assert (=> bs!1848804 m!7634964))

(declare-fun m!7634966 () Bool)

(assert (=> bs!1848804 m!7634966))

(assert (=> b!6925574 d!2165348))

(declare-fun d!2165350 () Bool)

(assert (=> d!2165350 (= (matchR!9067 lt!2471722 s!14361) (matchRSpec!3985 lt!2471722 s!14361))))

(declare-fun lt!2471902 () Unit!160580)

(assert (=> d!2165350 (= lt!2471902 (choose!51570 lt!2471722 s!14361))))

(assert (=> d!2165350 (validRegex!8634 lt!2471722)))

(assert (=> d!2165350 (= (mainMatchTheorem!3985 lt!2471722 s!14361) lt!2471902)))

(declare-fun bs!1848805 () Bool)

(assert (= bs!1848805 d!2165350))

(assert (=> bs!1848805 m!7634462))

(assert (=> bs!1848805 m!7634466))

(declare-fun m!7634968 () Bool)

(assert (=> bs!1848805 m!7634968))

(assert (=> bs!1848805 m!7634962))

(assert (=> b!6925574 d!2165350))

(declare-fun b!6926110 () Bool)

(declare-fun res!2824585 () Bool)

(declare-fun e!4168102 () Bool)

(assert (=> b!6926110 (=> res!2824585 e!4168102)))

(declare-fun e!4168099 () Bool)

(assert (=> b!6926110 (= res!2824585 e!4168099)))

(declare-fun res!2824590 () Bool)

(assert (=> b!6926110 (=> (not res!2824590) (not e!4168099))))

(declare-fun lt!2471903 () Bool)

(assert (=> b!6926110 (= res!2824590 lt!2471903)))

(declare-fun b!6926111 () Bool)

(declare-fun res!2824587 () Bool)

(declare-fun e!4168097 () Bool)

(assert (=> b!6926111 (=> res!2824587 e!4168097)))

(assert (=> b!6926111 (= res!2824587 (not (isEmpty!38812 (tail!12935 s!14361))))))

(declare-fun b!6926112 () Bool)

(declare-fun e!4168101 () Bool)

(assert (=> b!6926112 (= e!4168101 e!4168097)))

(declare-fun res!2824588 () Bool)

(assert (=> b!6926112 (=> res!2824588 e!4168097)))

(declare-fun call!629476 () Bool)

(assert (=> b!6926112 (= res!2824588 call!629476)))

(declare-fun b!6926113 () Bool)

(declare-fun e!4168103 () Bool)

(assert (=> b!6926113 (= e!4168103 (matchR!9067 (derivativeStep!5430 lt!2471727 (head!13883 s!14361)) (tail!12935 s!14361)))))

(declare-fun b!6926114 () Bool)

(declare-fun res!2824583 () Bool)

(assert (=> b!6926114 (=> (not res!2824583) (not e!4168099))))

(assert (=> b!6926114 (= res!2824583 (not call!629476))))

(declare-fun b!6926115 () Bool)

(assert (=> b!6926115 (= e!4168099 (= (head!13883 s!14361) (c!1285584 lt!2471727)))))

(declare-fun b!6926116 () Bool)

(declare-fun res!2824589 () Bool)

(assert (=> b!6926116 (=> res!2824589 e!4168102)))

(assert (=> b!6926116 (= res!2824589 (not (is-ElementMatch!16928 lt!2471727)))))

(declare-fun e!4168098 () Bool)

(assert (=> b!6926116 (= e!4168098 e!4168102)))

(declare-fun bm!629471 () Bool)

(assert (=> bm!629471 (= call!629476 (isEmpty!38812 s!14361))))

(declare-fun b!6926117 () Bool)

(declare-fun e!4168100 () Bool)

(assert (=> b!6926117 (= e!4168100 e!4168098)))

(declare-fun c!1285684 () Bool)

(assert (=> b!6926117 (= c!1285684 (is-EmptyLang!16928 lt!2471727))))

(declare-fun b!6926118 () Bool)

(assert (=> b!6926118 (= e!4168098 (not lt!2471903))))

(declare-fun b!6926119 () Bool)

(declare-fun res!2824584 () Bool)

(assert (=> b!6926119 (=> (not res!2824584) (not e!4168099))))

(assert (=> b!6926119 (= res!2824584 (isEmpty!38812 (tail!12935 s!14361)))))

(declare-fun b!6926120 () Bool)

(assert (=> b!6926120 (= e!4168103 (nullable!6755 lt!2471727))))

(declare-fun b!6926121 () Bool)

(assert (=> b!6926121 (= e!4168100 (= lt!2471903 call!629476))))

(declare-fun b!6926122 () Bool)

(assert (=> b!6926122 (= e!4168097 (not (= (head!13883 s!14361) (c!1285584 lt!2471727))))))

(declare-fun d!2165352 () Bool)

(assert (=> d!2165352 e!4168100))

(declare-fun c!1285685 () Bool)

(assert (=> d!2165352 (= c!1285685 (is-EmptyExpr!16928 lt!2471727))))

(assert (=> d!2165352 (= lt!2471903 e!4168103)))

(declare-fun c!1285686 () Bool)

(assert (=> d!2165352 (= c!1285686 (isEmpty!38812 s!14361))))

(assert (=> d!2165352 (validRegex!8634 lt!2471727)))

(assert (=> d!2165352 (= (matchR!9067 lt!2471727 s!14361) lt!2471903)))

(declare-fun b!6926123 () Bool)

(assert (=> b!6926123 (= e!4168102 e!4168101)))

(declare-fun res!2824586 () Bool)

(assert (=> b!6926123 (=> (not res!2824586) (not e!4168101))))

(assert (=> b!6926123 (= res!2824586 (not lt!2471903))))

(assert (= (and d!2165352 c!1285686) b!6926120))

(assert (= (and d!2165352 (not c!1285686)) b!6926113))

(assert (= (and d!2165352 c!1285685) b!6926121))

(assert (= (and d!2165352 (not c!1285685)) b!6926117))

(assert (= (and b!6926117 c!1285684) b!6926118))

(assert (= (and b!6926117 (not c!1285684)) b!6926116))

(assert (= (and b!6926116 (not res!2824589)) b!6926110))

(assert (= (and b!6926110 res!2824590) b!6926114))

(assert (= (and b!6926114 res!2824583) b!6926119))

(assert (= (and b!6926119 res!2824584) b!6926115))

(assert (= (and b!6926110 (not res!2824585)) b!6926123))

(assert (= (and b!6926123 res!2824586) b!6926112))

(assert (= (and b!6926112 (not res!2824588)) b!6926111))

(assert (= (and b!6926111 (not res!2824587)) b!6926122))

(assert (= (or b!6926121 b!6926112 b!6926114) bm!629471))

(assert (=> b!6926111 m!7634950))

(assert (=> b!6926111 m!7634950))

(assert (=> b!6926111 m!7634952))

(assert (=> b!6926122 m!7634954))

(assert (=> b!6926113 m!7634954))

(assert (=> b!6926113 m!7634954))

(declare-fun m!7634970 () Bool)

(assert (=> b!6926113 m!7634970))

(assert (=> b!6926113 m!7634950))

(assert (=> b!6926113 m!7634970))

(assert (=> b!6926113 m!7634950))

(declare-fun m!7634972 () Bool)

(assert (=> b!6926113 m!7634972))

(declare-fun m!7634974 () Bool)

(assert (=> b!6926120 m!7634974))

(assert (=> d!2165352 m!7634944))

(assert (=> d!2165352 m!7634966))

(assert (=> b!6926115 m!7634954))

(assert (=> bm!629471 m!7634944))

(assert (=> b!6926119 m!7634950))

(assert (=> b!6926119 m!7634950))

(assert (=> b!6926119 m!7634952))

(assert (=> b!6925574 d!2165352))

(declare-fun bs!1848806 () Bool)

(declare-fun b!6926129 () Bool)

(assert (= bs!1848806 (and b!6926129 b!6926030)))

(declare-fun lambda!394000 () Int)

(assert (=> bs!1848806 (= (and (= s!14361 (_1!37088 lt!2471720)) (= (reg!17257 lt!2471727) (reg!17257 lt!2471732)) (= lt!2471727 lt!2471732)) (= lambda!394000 lambda!393987))))

(declare-fun bs!1848807 () Bool)

(assert (= bs!1848807 (and b!6926129 b!6925844)))

(assert (=> bs!1848807 (not (= lambda!394000 lambda!393966))))

(declare-fun bs!1848808 () Bool)

(assert (= bs!1848808 (and b!6926129 b!6925811)))

(assert (=> bs!1848808 (= (and (= s!14361 (_2!37088 lt!2471739)) (= (reg!17257 lt!2471727) (reg!17257 r2!6280)) (= lt!2471727 r2!6280)) (= lambda!394000 lambda!393961))))

(declare-fun bs!1848809 () Bool)

(assert (= bs!1848809 (and b!6926129 b!6925565)))

(assert (=> bs!1848809 (not (= lambda!394000 lambda!393929))))

(declare-fun bs!1848810 () Bool)

(assert (= bs!1848810 (and b!6926129 d!2165316)))

(assert (=> bs!1848810 (not (= lambda!394000 lambda!393990))))

(declare-fun bs!1848811 () Bool)

(assert (= bs!1848811 (and b!6926129 b!6925580)))

(assert (=> bs!1848811 (not (= lambda!394000 lambda!393932))))

(declare-fun bs!1848812 () Bool)

(assert (= bs!1848812 (and b!6926129 d!2165274)))

(assert (=> bs!1848812 (not (= lambda!394000 lambda!393976))))

(declare-fun bs!1848813 () Bool)

(assert (= bs!1848813 (and b!6926129 d!2165322)))

(assert (=> bs!1848813 (not (= lambda!394000 lambda!393993))))

(assert (=> bs!1848809 (not (= lambda!394000 lambda!393930))))

(declare-fun bs!1848814 () Bool)

(assert (= bs!1848814 (and b!6926129 b!6925582)))

(assert (=> bs!1848814 (not (= lambda!394000 lambda!393928))))

(declare-fun bs!1848815 () Bool)

(assert (= bs!1848815 (and b!6926129 d!2165286)))

(assert (=> bs!1848815 (not (= lambda!394000 lambda!393981))))

(declare-fun bs!1848816 () Bool)

(assert (= bs!1848816 (and b!6926129 b!6925809)))

(assert (=> bs!1848816 (not (= lambda!394000 lambda!393962))))

(declare-fun bs!1848817 () Bool)

(assert (= bs!1848817 (and b!6926129 b!6925997)))

(assert (=> bs!1848817 (= (and (= s!14361 lt!2471730) (= (reg!17257 lt!2471727) (reg!17257 lt!2471728)) (= lt!2471727 lt!2471728)) (= lambda!394000 lambda!393982))))

(assert (=> bs!1848814 (not (= lambda!394000 lambda!393927))))

(assert (=> bs!1848810 (not (= lambda!394000 lambda!393989))))

(declare-fun bs!1848818 () Bool)

(assert (= bs!1848818 (and b!6926129 b!6925846)))

(assert (=> bs!1848818 (= (and (= s!14361 (_1!37088 lt!2471739)) (= (reg!17257 lt!2471727) (reg!17257 r1!6342)) (= lt!2471727 r1!6342)) (= lambda!394000 lambda!393965))))

(declare-fun bs!1848819 () Bool)

(assert (= bs!1848819 (and b!6926129 b!6926088)))

(assert (=> bs!1848819 (not (= lambda!394000 lambda!393999))))

(declare-fun bs!1848820 () Bool)

(assert (= bs!1848820 (and b!6926129 b!6926028)))

(assert (=> bs!1848820 (not (= lambda!394000 lambda!393988))))

(declare-fun bs!1848821 () Bool)

(assert (= bs!1848821 (and b!6926129 b!6926090)))

(assert (=> bs!1848821 (= (and (= (reg!17257 lt!2471727) (reg!17257 lt!2471722)) (= lt!2471727 lt!2471722)) (= lambda!394000 lambda!393998))))

(assert (=> bs!1848811 (not (= lambda!394000 lambda!393931))))

(assert (=> bs!1848812 (not (= lambda!394000 lambda!393978))))

(declare-fun bs!1848822 () Bool)

(assert (= bs!1848822 (and b!6926129 b!6925995)))

(assert (=> bs!1848822 (not (= lambda!394000 lambda!393983))))

(assert (=> b!6926129 true))

(assert (=> b!6926129 true))

(declare-fun bs!1848823 () Bool)

(declare-fun b!6926127 () Bool)

(assert (= bs!1848823 (and b!6926127 b!6926030)))

(declare-fun lambda!394001 () Int)

(assert (=> bs!1848823 (not (= lambda!394001 lambda!393987))))

(declare-fun bs!1848824 () Bool)

(assert (= bs!1848824 (and b!6926127 b!6925844)))

(assert (=> bs!1848824 (= (and (= s!14361 (_1!37088 lt!2471739)) (= (regOne!34368 lt!2471727) (regOne!34368 r1!6342)) (= (regTwo!34368 lt!2471727) (regTwo!34368 r1!6342))) (= lambda!394001 lambda!393966))))

(declare-fun bs!1848825 () Bool)

(assert (= bs!1848825 (and b!6926127 b!6925811)))

(assert (=> bs!1848825 (not (= lambda!394001 lambda!393961))))

(declare-fun bs!1848826 () Bool)

(assert (= bs!1848826 (and b!6926127 b!6925565)))

(assert (=> bs!1848826 (not (= lambda!394001 lambda!393929))))

(declare-fun bs!1848827 () Bool)

(assert (= bs!1848827 (and b!6926127 d!2165316)))

(assert (=> bs!1848827 (= (and (= (regOne!34368 lt!2471727) lt!2471732) (= (regTwo!34368 lt!2471727) r3!135)) (= lambda!394001 lambda!393990))))

(declare-fun bs!1848828 () Bool)

(assert (= bs!1848828 (and b!6926127 b!6925580)))

(assert (=> bs!1848828 (= (and (= s!14361 lt!2471730) (= (regOne!34368 lt!2471727) r2!6280) (= (regTwo!34368 lt!2471727) r3!135)) (= lambda!394001 lambda!393932))))

(declare-fun bs!1848829 () Bool)

(assert (= bs!1848829 (and b!6926127 d!2165322)))

(assert (=> bs!1848829 (not (= lambda!394001 lambda!393993))))

(assert (=> bs!1848826 (= (and (= s!14361 (_1!37088 lt!2471720)) (= (regOne!34368 lt!2471727) r1!6342) (= (regTwo!34368 lt!2471727) r2!6280)) (= lambda!394001 lambda!393930))))

(declare-fun bs!1848830 () Bool)

(assert (= bs!1848830 (and b!6926127 b!6925582)))

(assert (=> bs!1848830 (= (and (= (regOne!34368 lt!2471727) lt!2471732) (= (regTwo!34368 lt!2471727) r3!135)) (= lambda!394001 lambda!393928))))

(declare-fun bs!1848831 () Bool)

(assert (= bs!1848831 (and b!6926127 d!2165286)))

(assert (=> bs!1848831 (not (= lambda!394001 lambda!393981))))

(declare-fun bs!1848832 () Bool)

(assert (= bs!1848832 (and b!6926127 b!6925809)))

(assert (=> bs!1848832 (= (and (= s!14361 (_2!37088 lt!2471739)) (= (regOne!34368 lt!2471727) (regOne!34368 r2!6280)) (= (regTwo!34368 lt!2471727) (regTwo!34368 r2!6280))) (= lambda!394001 lambda!393962))))

(declare-fun bs!1848833 () Bool)

(assert (= bs!1848833 (and b!6926127 b!6925997)))

(assert (=> bs!1848833 (not (= lambda!394001 lambda!393982))))

(assert (=> bs!1848830 (not (= lambda!394001 lambda!393927))))

(assert (=> bs!1848827 (not (= lambda!394001 lambda!393989))))

(declare-fun bs!1848834 () Bool)

(assert (= bs!1848834 (and b!6926127 b!6925846)))

(assert (=> bs!1848834 (not (= lambda!394001 lambda!393965))))

(declare-fun bs!1848835 () Bool)

(assert (= bs!1848835 (and b!6926127 b!6926088)))

(assert (=> bs!1848835 (= (and (= (regOne!34368 lt!2471727) (regOne!34368 lt!2471722)) (= (regTwo!34368 lt!2471727) (regTwo!34368 lt!2471722))) (= lambda!394001 lambda!393999))))

(declare-fun bs!1848836 () Bool)

(assert (= bs!1848836 (and b!6926127 b!6926028)))

(assert (=> bs!1848836 (= (and (= s!14361 (_1!37088 lt!2471720)) (= (regOne!34368 lt!2471727) (regOne!34368 lt!2471732)) (= (regTwo!34368 lt!2471727) (regTwo!34368 lt!2471732))) (= lambda!394001 lambda!393988))))

(declare-fun bs!1848837 () Bool)

(assert (= bs!1848837 (and b!6926127 b!6926090)))

(assert (=> bs!1848837 (not (= lambda!394001 lambda!393998))))

(assert (=> bs!1848828 (not (= lambda!394001 lambda!393931))))

(declare-fun bs!1848838 () Bool)

(assert (= bs!1848838 (and b!6926127 d!2165274)))

(assert (=> bs!1848838 (= (and (= s!14361 lt!2471730) (= (regOne!34368 lt!2471727) r2!6280) (= (regTwo!34368 lt!2471727) r3!135)) (= lambda!394001 lambda!393978))))

(declare-fun bs!1848839 () Bool)

(assert (= bs!1848839 (and b!6926127 b!6925995)))

(assert (=> bs!1848839 (= (and (= s!14361 lt!2471730) (= (regOne!34368 lt!2471727) (regOne!34368 lt!2471728)) (= (regTwo!34368 lt!2471727) (regTwo!34368 lt!2471728))) (= lambda!394001 lambda!393983))))

(declare-fun bs!1848840 () Bool)

(assert (= bs!1848840 (and b!6926127 b!6926129)))

(assert (=> bs!1848840 (not (= lambda!394001 lambda!394000))))

(assert (=> bs!1848838 (not (= lambda!394001 lambda!393976))))

(assert (=> b!6926127 true))

(assert (=> b!6926127 true))

(declare-fun bm!629472 () Bool)

(declare-fun c!1285689 () Bool)

(declare-fun call!629478 () Bool)

(assert (=> bm!629472 (= call!629478 (Exists!3930 (ite c!1285689 lambda!394000 lambda!394001)))))

(declare-fun bm!629473 () Bool)

(declare-fun call!629477 () Bool)

(assert (=> bm!629473 (= call!629477 (isEmpty!38812 s!14361))))

(declare-fun b!6926124 () Bool)

(declare-fun c!1285687 () Bool)

(assert (=> b!6926124 (= c!1285687 (is-ElementMatch!16928 lt!2471727))))

(declare-fun e!4168105 () Bool)

(declare-fun e!4168109 () Bool)

(assert (=> b!6926124 (= e!4168105 e!4168109)))

(declare-fun b!6926125 () Bool)

(declare-fun c!1285690 () Bool)

(assert (=> b!6926125 (= c!1285690 (is-Union!16928 lt!2471727))))

(declare-fun e!4168110 () Bool)

(assert (=> b!6926125 (= e!4168109 e!4168110)))

(declare-fun e!4168104 () Bool)

(assert (=> b!6926127 (= e!4168104 call!629478)))

(declare-fun b!6926128 () Bool)

(declare-fun e!4168107 () Bool)

(assert (=> b!6926128 (= e!4168107 e!4168105)))

(declare-fun res!2824592 () Bool)

(assert (=> b!6926128 (= res!2824592 (not (is-EmptyLang!16928 lt!2471727)))))

(assert (=> b!6926128 (=> (not res!2824592) (not e!4168105))))

(declare-fun e!4168106 () Bool)

(assert (=> b!6926129 (= e!4168106 call!629478)))

(declare-fun b!6926130 () Bool)

(declare-fun e!4168108 () Bool)

(assert (=> b!6926130 (= e!4168110 e!4168108)))

(declare-fun res!2824593 () Bool)

(assert (=> b!6926130 (= res!2824593 (matchRSpec!3985 (regOne!34369 lt!2471727) s!14361))))

(assert (=> b!6926130 (=> res!2824593 e!4168108)))

(declare-fun d!2165354 () Bool)

(declare-fun c!1285688 () Bool)

(assert (=> d!2165354 (= c!1285688 (is-EmptyExpr!16928 lt!2471727))))

(assert (=> d!2165354 (= (matchRSpec!3985 lt!2471727 s!14361) e!4168107)))

(declare-fun b!6926126 () Bool)

(assert (=> b!6926126 (= e!4168108 (matchRSpec!3985 (regTwo!34369 lt!2471727) s!14361))))

(declare-fun b!6926131 () Bool)

(declare-fun res!2824591 () Bool)

(assert (=> b!6926131 (=> res!2824591 e!4168106)))

(assert (=> b!6926131 (= res!2824591 call!629477)))

(assert (=> b!6926131 (= e!4168104 e!4168106)))

(declare-fun b!6926132 () Bool)

(assert (=> b!6926132 (= e!4168107 call!629477)))

(declare-fun b!6926133 () Bool)

(assert (=> b!6926133 (= e!4168109 (= s!14361 (Cons!66557 (c!1285584 lt!2471727) Nil!66557)))))

(declare-fun b!6926134 () Bool)

(assert (=> b!6926134 (= e!4168110 e!4168104)))

(assert (=> b!6926134 (= c!1285689 (is-Star!16928 lt!2471727))))

(assert (= (and d!2165354 c!1285688) b!6926132))

(assert (= (and d!2165354 (not c!1285688)) b!6926128))

(assert (= (and b!6926128 res!2824592) b!6926124))

(assert (= (and b!6926124 c!1285687) b!6926133))

(assert (= (and b!6926124 (not c!1285687)) b!6926125))

(assert (= (and b!6926125 c!1285690) b!6926130))

(assert (= (and b!6926125 (not c!1285690)) b!6926134))

(assert (= (and b!6926130 (not res!2824593)) b!6926126))

(assert (= (and b!6926134 c!1285689) b!6926131))

(assert (= (and b!6926134 (not c!1285689)) b!6926127))

(assert (= (and b!6926131 (not res!2824591)) b!6926129))

(assert (= (or b!6926129 b!6926127) bm!629472))

(assert (= (or b!6926132 b!6926131) bm!629473))

(declare-fun m!7634976 () Bool)

(assert (=> bm!629472 m!7634976))

(assert (=> bm!629473 m!7634944))

(declare-fun m!7634978 () Bool)

(assert (=> b!6926130 m!7634978))

(declare-fun m!7634980 () Bool)

(assert (=> b!6926126 m!7634980))

(assert (=> b!6925574 d!2165354))

(declare-fun b!6926135 () Bool)

(declare-fun res!2824596 () Bool)

(declare-fun e!4168116 () Bool)

(assert (=> b!6926135 (=> res!2824596 e!4168116)))

(declare-fun e!4168113 () Bool)

(assert (=> b!6926135 (= res!2824596 e!4168113)))

(declare-fun res!2824601 () Bool)

(assert (=> b!6926135 (=> (not res!2824601) (not e!4168113))))

(declare-fun lt!2471904 () Bool)

(assert (=> b!6926135 (= res!2824601 lt!2471904)))

(declare-fun b!6926136 () Bool)

(declare-fun res!2824598 () Bool)

(declare-fun e!4168111 () Bool)

(assert (=> b!6926136 (=> res!2824598 e!4168111)))

(assert (=> b!6926136 (= res!2824598 (not (isEmpty!38812 (tail!12935 (_2!37088 lt!2471739)))))))

(declare-fun b!6926137 () Bool)

(declare-fun e!4168115 () Bool)

(assert (=> b!6926137 (= e!4168115 e!4168111)))

(declare-fun res!2824599 () Bool)

(assert (=> b!6926137 (=> res!2824599 e!4168111)))

(declare-fun call!629479 () Bool)

(assert (=> b!6926137 (= res!2824599 call!629479)))

(declare-fun b!6926138 () Bool)

(declare-fun e!4168117 () Bool)

(assert (=> b!6926138 (= e!4168117 (matchR!9067 (derivativeStep!5430 r2!6280 (head!13883 (_2!37088 lt!2471739))) (tail!12935 (_2!37088 lt!2471739))))))

(declare-fun b!6926139 () Bool)

(declare-fun res!2824594 () Bool)

(assert (=> b!6926139 (=> (not res!2824594) (not e!4168113))))

(assert (=> b!6926139 (= res!2824594 (not call!629479))))

(declare-fun b!6926140 () Bool)

(assert (=> b!6926140 (= e!4168113 (= (head!13883 (_2!37088 lt!2471739)) (c!1285584 r2!6280)))))

(declare-fun b!6926141 () Bool)

(declare-fun res!2824600 () Bool)

(assert (=> b!6926141 (=> res!2824600 e!4168116)))

(assert (=> b!6926141 (= res!2824600 (not (is-ElementMatch!16928 r2!6280)))))

(declare-fun e!4168112 () Bool)

(assert (=> b!6926141 (= e!4168112 e!4168116)))

(declare-fun bm!629474 () Bool)

(assert (=> bm!629474 (= call!629479 (isEmpty!38812 (_2!37088 lt!2471739)))))

(declare-fun b!6926142 () Bool)

(declare-fun e!4168114 () Bool)

(assert (=> b!6926142 (= e!4168114 e!4168112)))

(declare-fun c!1285691 () Bool)

(assert (=> b!6926142 (= c!1285691 (is-EmptyLang!16928 r2!6280))))

(declare-fun b!6926143 () Bool)

(assert (=> b!6926143 (= e!4168112 (not lt!2471904))))

(declare-fun b!6926144 () Bool)

(declare-fun res!2824595 () Bool)

(assert (=> b!6926144 (=> (not res!2824595) (not e!4168113))))

(assert (=> b!6926144 (= res!2824595 (isEmpty!38812 (tail!12935 (_2!37088 lt!2471739))))))

(declare-fun b!6926145 () Bool)

(assert (=> b!6926145 (= e!4168117 (nullable!6755 r2!6280))))

(declare-fun b!6926146 () Bool)

(assert (=> b!6926146 (= e!4168114 (= lt!2471904 call!629479))))

(declare-fun b!6926147 () Bool)

(assert (=> b!6926147 (= e!4168111 (not (= (head!13883 (_2!37088 lt!2471739)) (c!1285584 r2!6280))))))

(declare-fun d!2165356 () Bool)

(assert (=> d!2165356 e!4168114))

(declare-fun c!1285692 () Bool)

(assert (=> d!2165356 (= c!1285692 (is-EmptyExpr!16928 r2!6280))))

(assert (=> d!2165356 (= lt!2471904 e!4168117)))

(declare-fun c!1285693 () Bool)

(assert (=> d!2165356 (= c!1285693 (isEmpty!38812 (_2!37088 lt!2471739)))))

(assert (=> d!2165356 (validRegex!8634 r2!6280)))

(assert (=> d!2165356 (= (matchR!9067 r2!6280 (_2!37088 lt!2471739)) lt!2471904)))

(declare-fun b!6926148 () Bool)

(assert (=> b!6926148 (= e!4168116 e!4168115)))

(declare-fun res!2824597 () Bool)

(assert (=> b!6926148 (=> (not res!2824597) (not e!4168115))))

(assert (=> b!6926148 (= res!2824597 (not lt!2471904))))

(assert (= (and d!2165356 c!1285693) b!6926145))

(assert (= (and d!2165356 (not c!1285693)) b!6926138))

(assert (= (and d!2165356 c!1285692) b!6926146))

(assert (= (and d!2165356 (not c!1285692)) b!6926142))

(assert (= (and b!6926142 c!1285691) b!6926143))

(assert (= (and b!6926142 (not c!1285691)) b!6926141))

(assert (= (and b!6926141 (not res!2824600)) b!6926135))

(assert (= (and b!6926135 res!2824601) b!6926139))

(assert (= (and b!6926139 res!2824594) b!6926144))

(assert (= (and b!6926144 res!2824595) b!6926140))

(assert (= (and b!6926135 (not res!2824596)) b!6926148))

(assert (= (and b!6926148 res!2824597) b!6926137))

(assert (= (and b!6926137 (not res!2824599)) b!6926136))

(assert (= (and b!6926136 (not res!2824598)) b!6926147))

(assert (= (or b!6926146 b!6926137 b!6926139) bm!629474))

(declare-fun m!7634982 () Bool)

(assert (=> b!6926136 m!7634982))

(assert (=> b!6926136 m!7634982))

(declare-fun m!7634984 () Bool)

(assert (=> b!6926136 m!7634984))

(declare-fun m!7634986 () Bool)

(assert (=> b!6926147 m!7634986))

(assert (=> b!6926138 m!7634986))

(assert (=> b!6926138 m!7634986))

(declare-fun m!7634988 () Bool)

(assert (=> b!6926138 m!7634988))

(assert (=> b!6926138 m!7634982))

(assert (=> b!6926138 m!7634988))

(assert (=> b!6926138 m!7634982))

(declare-fun m!7634990 () Bool)

(assert (=> b!6926138 m!7634990))

(declare-fun m!7634992 () Bool)

(assert (=> b!6926145 m!7634992))

(assert (=> d!2165356 m!7634656))

(assert (=> d!2165356 m!7634450))

(assert (=> b!6926140 m!7634986))

(assert (=> bm!629474 m!7634656))

(assert (=> b!6926144 m!7634982))

(assert (=> b!6926144 m!7634982))

(assert (=> b!6926144 m!7634984))

(assert (=> b!6925564 d!2165356))

(declare-fun b!6926149 () Bool)

(declare-fun e!4168121 () Bool)

(declare-fun call!629482 () Bool)

(assert (=> b!6926149 (= e!4168121 call!629482)))

(declare-fun b!6926150 () Bool)

(declare-fun res!2824606 () Bool)

(declare-fun e!4168124 () Bool)

(assert (=> b!6926150 (=> res!2824606 e!4168124)))

(assert (=> b!6926150 (= res!2824606 (not (is-Concat!25773 r1!6342)))))

(declare-fun e!4168123 () Bool)

(assert (=> b!6926150 (= e!4168123 e!4168124)))

(declare-fun bm!629475 () Bool)

(declare-fun call!629480 () Bool)

(assert (=> bm!629475 (= call!629480 call!629482)))

(declare-fun b!6926151 () Bool)

(declare-fun e!4168118 () Bool)

(declare-fun e!4168122 () Bool)

(assert (=> b!6926151 (= e!4168118 e!4168122)))

(declare-fun c!1285694 () Bool)

(assert (=> b!6926151 (= c!1285694 (is-Star!16928 r1!6342))))

(declare-fun b!6926152 () Bool)

(assert (=> b!6926152 (= e!4168122 e!4168121)))

(declare-fun res!2824603 () Bool)

(assert (=> b!6926152 (= res!2824603 (not (nullable!6755 (reg!17257 r1!6342))))))

(assert (=> b!6926152 (=> (not res!2824603) (not e!4168121))))

(declare-fun c!1285695 () Bool)

(declare-fun bm!629476 () Bool)

(assert (=> bm!629476 (= call!629482 (validRegex!8634 (ite c!1285694 (reg!17257 r1!6342) (ite c!1285695 (regOne!34369 r1!6342) (regTwo!34368 r1!6342)))))))

(declare-fun b!6926153 () Bool)

(declare-fun e!4168119 () Bool)

(declare-fun call!629481 () Bool)

(assert (=> b!6926153 (= e!4168119 call!629481)))

(declare-fun b!6926154 () Bool)

(declare-fun e!4168120 () Bool)

(assert (=> b!6926154 (= e!4168124 e!4168120)))

(declare-fun res!2824602 () Bool)

(assert (=> b!6926154 (=> (not res!2824602) (not e!4168120))))

(assert (=> b!6926154 (= res!2824602 call!629481)))

(declare-fun d!2165358 () Bool)

(declare-fun res!2824605 () Bool)

(assert (=> d!2165358 (=> res!2824605 e!4168118)))

(assert (=> d!2165358 (= res!2824605 (is-ElementMatch!16928 r1!6342))))

(assert (=> d!2165358 (= (validRegex!8634 r1!6342) e!4168118)))

(declare-fun b!6926155 () Bool)

(assert (=> b!6926155 (= e!4168120 call!629480)))

(declare-fun bm!629477 () Bool)

(assert (=> bm!629477 (= call!629481 (validRegex!8634 (ite c!1285695 (regTwo!34369 r1!6342) (regOne!34368 r1!6342))))))

(declare-fun b!6926156 () Bool)

(declare-fun res!2824604 () Bool)

(assert (=> b!6926156 (=> (not res!2824604) (not e!4168119))))

(assert (=> b!6926156 (= res!2824604 call!629480)))

(assert (=> b!6926156 (= e!4168123 e!4168119)))

(declare-fun b!6926157 () Bool)

(assert (=> b!6926157 (= e!4168122 e!4168123)))

(assert (=> b!6926157 (= c!1285695 (is-Union!16928 r1!6342))))

(assert (= (and d!2165358 (not res!2824605)) b!6926151))

(assert (= (and b!6926151 c!1285694) b!6926152))

(assert (= (and b!6926151 (not c!1285694)) b!6926157))

(assert (= (and b!6926152 res!2824603) b!6926149))

(assert (= (and b!6926157 c!1285695) b!6926156))

(assert (= (and b!6926157 (not c!1285695)) b!6926150))

(assert (= (and b!6926156 res!2824604) b!6926153))

(assert (= (and b!6926150 (not res!2824606)) b!6926154))

(assert (= (and b!6926154 res!2824602) b!6926155))

(assert (= (or b!6926156 b!6926155) bm!629475))

(assert (= (or b!6926153 b!6926154) bm!629477))

(assert (= (or b!6926149 bm!629475) bm!629476))

(declare-fun m!7634994 () Bool)

(assert (=> b!6926152 m!7634994))

(declare-fun m!7634996 () Bool)

(assert (=> bm!629476 m!7634996))

(declare-fun m!7634998 () Bool)

(assert (=> bm!629477 m!7634998))

(assert (=> start!665832 d!2165358))

(declare-fun bs!1848841 () Bool)

(declare-fun d!2165360 () Bool)

(assert (= bs!1848841 (and d!2165360 b!6926030)))

(declare-fun lambda!394002 () Int)

(assert (=> bs!1848841 (not (= lambda!394002 lambda!393987))))

(declare-fun bs!1848842 () Bool)

(assert (= bs!1848842 (and d!2165360 b!6925844)))

(assert (=> bs!1848842 (not (= lambda!394002 lambda!393966))))

(declare-fun bs!1848843 () Bool)

(assert (= bs!1848843 (and d!2165360 b!6925811)))

(assert (=> bs!1848843 (not (= lambda!394002 lambda!393961))))

(declare-fun bs!1848844 () Bool)

(assert (= bs!1848844 (and d!2165360 b!6925565)))

(assert (=> bs!1848844 (= lambda!394002 lambda!393929)))

(declare-fun bs!1848845 () Bool)

(assert (= bs!1848845 (and d!2165360 d!2165316)))

(assert (=> bs!1848845 (not (= lambda!394002 lambda!393990))))

(declare-fun bs!1848846 () Bool)

(assert (= bs!1848846 (and d!2165360 b!6926127)))

(assert (=> bs!1848846 (not (= lambda!394002 lambda!394001))))

(declare-fun bs!1848847 () Bool)

(assert (= bs!1848847 (and d!2165360 b!6925580)))

(assert (=> bs!1848847 (not (= lambda!394002 lambda!393932))))

(declare-fun bs!1848848 () Bool)

(assert (= bs!1848848 (and d!2165360 d!2165322)))

(assert (=> bs!1848848 (= (and (= (_1!37088 lt!2471720) s!14361) (= r1!6342 lt!2471732) (= r2!6280 r3!135)) (= lambda!394002 lambda!393993))))

(assert (=> bs!1848844 (not (= lambda!394002 lambda!393930))))

(declare-fun bs!1848849 () Bool)

(assert (= bs!1848849 (and d!2165360 b!6925582)))

(assert (=> bs!1848849 (not (= lambda!394002 lambda!393928))))

(declare-fun bs!1848850 () Bool)

(assert (= bs!1848850 (and d!2165360 d!2165286)))

(assert (=> bs!1848850 (= (and (= (_1!37088 lt!2471720) lt!2471730) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394002 lambda!393981))))

(declare-fun bs!1848851 () Bool)

(assert (= bs!1848851 (and d!2165360 b!6925809)))

(assert (=> bs!1848851 (not (= lambda!394002 lambda!393962))))

(declare-fun bs!1848852 () Bool)

(assert (= bs!1848852 (and d!2165360 b!6925997)))

(assert (=> bs!1848852 (not (= lambda!394002 lambda!393982))))

(assert (=> bs!1848849 (= (and (= (_1!37088 lt!2471720) s!14361) (= r1!6342 lt!2471732) (= r2!6280 r3!135)) (= lambda!394002 lambda!393927))))

(assert (=> bs!1848845 (= (and (= (_1!37088 lt!2471720) s!14361) (= r1!6342 lt!2471732) (= r2!6280 r3!135)) (= lambda!394002 lambda!393989))))

(declare-fun bs!1848853 () Bool)

(assert (= bs!1848853 (and d!2165360 b!6925846)))

(assert (=> bs!1848853 (not (= lambda!394002 lambda!393965))))

(declare-fun bs!1848854 () Bool)

(assert (= bs!1848854 (and d!2165360 b!6926088)))

(assert (=> bs!1848854 (not (= lambda!394002 lambda!393999))))

(declare-fun bs!1848855 () Bool)

(assert (= bs!1848855 (and d!2165360 b!6926028)))

(assert (=> bs!1848855 (not (= lambda!394002 lambda!393988))))

(declare-fun bs!1848856 () Bool)

(assert (= bs!1848856 (and d!2165360 b!6926090)))

(assert (=> bs!1848856 (not (= lambda!394002 lambda!393998))))

(assert (=> bs!1848847 (= (and (= (_1!37088 lt!2471720) lt!2471730) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394002 lambda!393931))))

(declare-fun bs!1848857 () Bool)

(assert (= bs!1848857 (and d!2165360 d!2165274)))

(assert (=> bs!1848857 (not (= lambda!394002 lambda!393978))))

(declare-fun bs!1848858 () Bool)

(assert (= bs!1848858 (and d!2165360 b!6925995)))

(assert (=> bs!1848858 (not (= lambda!394002 lambda!393983))))

(declare-fun bs!1848859 () Bool)

(assert (= bs!1848859 (and d!2165360 b!6926129)))

(assert (=> bs!1848859 (not (= lambda!394002 lambda!394000))))

(assert (=> bs!1848857 (= (and (= (_1!37088 lt!2471720) lt!2471730) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394002 lambda!393976))))

(assert (=> d!2165360 true))

(assert (=> d!2165360 true))

(assert (=> d!2165360 true))

(declare-fun lambda!394003 () Int)

(assert (=> bs!1848841 (not (= lambda!394003 lambda!393987))))

(assert (=> bs!1848842 (= (and (= (_1!37088 lt!2471720) (_1!37088 lt!2471739)) (= r1!6342 (regOne!34368 r1!6342)) (= r2!6280 (regTwo!34368 r1!6342))) (= lambda!394003 lambda!393966))))

(assert (=> bs!1848843 (not (= lambda!394003 lambda!393961))))

(assert (=> bs!1848844 (not (= lambda!394003 lambda!393929))))

(assert (=> bs!1848845 (= (and (= (_1!37088 lt!2471720) s!14361) (= r1!6342 lt!2471732) (= r2!6280 r3!135)) (= lambda!394003 lambda!393990))))

(assert (=> bs!1848846 (= (and (= (_1!37088 lt!2471720) s!14361) (= r1!6342 (regOne!34368 lt!2471727)) (= r2!6280 (regTwo!34368 lt!2471727))) (= lambda!394003 lambda!394001))))

(assert (=> bs!1848847 (= (and (= (_1!37088 lt!2471720) lt!2471730) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394003 lambda!393932))))

(assert (=> bs!1848848 (not (= lambda!394003 lambda!393993))))

(declare-fun bs!1848860 () Bool)

(assert (= bs!1848860 d!2165360))

(assert (=> bs!1848860 (not (= lambda!394003 lambda!394002))))

(assert (=> bs!1848844 (= lambda!394003 lambda!393930)))

(assert (=> bs!1848849 (= (and (= (_1!37088 lt!2471720) s!14361) (= r1!6342 lt!2471732) (= r2!6280 r3!135)) (= lambda!394003 lambda!393928))))

(assert (=> bs!1848850 (not (= lambda!394003 lambda!393981))))

(assert (=> bs!1848851 (= (and (= (_1!37088 lt!2471720) (_2!37088 lt!2471739)) (= r1!6342 (regOne!34368 r2!6280)) (= r2!6280 (regTwo!34368 r2!6280))) (= lambda!394003 lambda!393962))))

(assert (=> bs!1848852 (not (= lambda!394003 lambda!393982))))

(assert (=> bs!1848849 (not (= lambda!394003 lambda!393927))))

(assert (=> bs!1848845 (not (= lambda!394003 lambda!393989))))

(assert (=> bs!1848853 (not (= lambda!394003 lambda!393965))))

(assert (=> bs!1848854 (= (and (= (_1!37088 lt!2471720) s!14361) (= r1!6342 (regOne!34368 lt!2471722)) (= r2!6280 (regTwo!34368 lt!2471722))) (= lambda!394003 lambda!393999))))

(assert (=> bs!1848855 (= (and (= r1!6342 (regOne!34368 lt!2471732)) (= r2!6280 (regTwo!34368 lt!2471732))) (= lambda!394003 lambda!393988))))

(assert (=> bs!1848856 (not (= lambda!394003 lambda!393998))))

(assert (=> bs!1848847 (not (= lambda!394003 lambda!393931))))

(assert (=> bs!1848857 (= (and (= (_1!37088 lt!2471720) lt!2471730) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394003 lambda!393978))))

(assert (=> bs!1848858 (= (and (= (_1!37088 lt!2471720) lt!2471730) (= r1!6342 (regOne!34368 lt!2471728)) (= r2!6280 (regTwo!34368 lt!2471728))) (= lambda!394003 lambda!393983))))

(assert (=> bs!1848859 (not (= lambda!394003 lambda!394000))))

(assert (=> bs!1848857 (not (= lambda!394003 lambda!393976))))

(assert (=> d!2165360 true))

(assert (=> d!2165360 true))

(assert (=> d!2165360 true))

(assert (=> d!2165360 (= (Exists!3930 lambda!394002) (Exists!3930 lambda!394003))))

(declare-fun lt!2471905 () Unit!160580)

(assert (=> d!2165360 (= lt!2471905 (choose!51572 r1!6342 r2!6280 (_1!37088 lt!2471720)))))

(assert (=> d!2165360 (validRegex!8634 r1!6342)))

(assert (=> d!2165360 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2397 r1!6342 r2!6280 (_1!37088 lt!2471720)) lt!2471905)))

(declare-fun m!7635000 () Bool)

(assert (=> bs!1848860 m!7635000))

(declare-fun m!7635002 () Bool)

(assert (=> bs!1848860 m!7635002))

(declare-fun m!7635004 () Bool)

(assert (=> bs!1848860 m!7635004))

(assert (=> bs!1848860 m!7634456))

(assert (=> b!6925565 d!2165360))

(declare-fun d!2165362 () Bool)

(assert (=> d!2165362 (= (get!23333 lt!2471744) (v!52968 lt!2471744))))

(assert (=> b!6925565 d!2165362))

(declare-fun bs!1848861 () Bool)

(declare-fun d!2165364 () Bool)

(assert (= bs!1848861 (and d!2165364 b!6926030)))

(declare-fun lambda!394004 () Int)

(assert (=> bs!1848861 (not (= lambda!394004 lambda!393987))))

(declare-fun bs!1848862 () Bool)

(assert (= bs!1848862 (and d!2165364 b!6925844)))

(assert (=> bs!1848862 (not (= lambda!394004 lambda!393966))))

(declare-fun bs!1848863 () Bool)

(assert (= bs!1848863 (and d!2165364 b!6925811)))

(assert (=> bs!1848863 (not (= lambda!394004 lambda!393961))))

(declare-fun bs!1848864 () Bool)

(assert (= bs!1848864 (and d!2165364 b!6925565)))

(assert (=> bs!1848864 (= lambda!394004 lambda!393929)))

(declare-fun bs!1848865 () Bool)

(assert (= bs!1848865 (and d!2165364 d!2165360)))

(assert (=> bs!1848865 (not (= lambda!394004 lambda!394003))))

(declare-fun bs!1848866 () Bool)

(assert (= bs!1848866 (and d!2165364 d!2165316)))

(assert (=> bs!1848866 (not (= lambda!394004 lambda!393990))))

(declare-fun bs!1848867 () Bool)

(assert (= bs!1848867 (and d!2165364 b!6926127)))

(assert (=> bs!1848867 (not (= lambda!394004 lambda!394001))))

(declare-fun bs!1848868 () Bool)

(assert (= bs!1848868 (and d!2165364 b!6925580)))

(assert (=> bs!1848868 (not (= lambda!394004 lambda!393932))))

(declare-fun bs!1848869 () Bool)

(assert (= bs!1848869 (and d!2165364 d!2165322)))

(assert (=> bs!1848869 (= (and (= (_1!37088 lt!2471720) s!14361) (= r1!6342 lt!2471732) (= r2!6280 r3!135)) (= lambda!394004 lambda!393993))))

(assert (=> bs!1848865 (= lambda!394004 lambda!394002)))

(assert (=> bs!1848864 (not (= lambda!394004 lambda!393930))))

(declare-fun bs!1848870 () Bool)

(assert (= bs!1848870 (and d!2165364 b!6925582)))

(assert (=> bs!1848870 (not (= lambda!394004 lambda!393928))))

(declare-fun bs!1848871 () Bool)

(assert (= bs!1848871 (and d!2165364 d!2165286)))

(assert (=> bs!1848871 (= (and (= (_1!37088 lt!2471720) lt!2471730) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394004 lambda!393981))))

(declare-fun bs!1848872 () Bool)

(assert (= bs!1848872 (and d!2165364 b!6925809)))

(assert (=> bs!1848872 (not (= lambda!394004 lambda!393962))))

(declare-fun bs!1848873 () Bool)

(assert (= bs!1848873 (and d!2165364 b!6925997)))

(assert (=> bs!1848873 (not (= lambda!394004 lambda!393982))))

(assert (=> bs!1848870 (= (and (= (_1!37088 lt!2471720) s!14361) (= r1!6342 lt!2471732) (= r2!6280 r3!135)) (= lambda!394004 lambda!393927))))

(assert (=> bs!1848866 (= (and (= (_1!37088 lt!2471720) s!14361) (= r1!6342 lt!2471732) (= r2!6280 r3!135)) (= lambda!394004 lambda!393989))))

(declare-fun bs!1848874 () Bool)

(assert (= bs!1848874 (and d!2165364 b!6925846)))

(assert (=> bs!1848874 (not (= lambda!394004 lambda!393965))))

(declare-fun bs!1848875 () Bool)

(assert (= bs!1848875 (and d!2165364 b!6926088)))

(assert (=> bs!1848875 (not (= lambda!394004 lambda!393999))))

(declare-fun bs!1848876 () Bool)

(assert (= bs!1848876 (and d!2165364 b!6926028)))

(assert (=> bs!1848876 (not (= lambda!394004 lambda!393988))))

(declare-fun bs!1848877 () Bool)

(assert (= bs!1848877 (and d!2165364 b!6926090)))

(assert (=> bs!1848877 (not (= lambda!394004 lambda!393998))))

(assert (=> bs!1848868 (= (and (= (_1!37088 lt!2471720) lt!2471730) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394004 lambda!393931))))

(declare-fun bs!1848880 () Bool)

(assert (= bs!1848880 (and d!2165364 d!2165274)))

(assert (=> bs!1848880 (not (= lambda!394004 lambda!393978))))

(declare-fun bs!1848881 () Bool)

(assert (= bs!1848881 (and d!2165364 b!6925995)))

(assert (=> bs!1848881 (not (= lambda!394004 lambda!393983))))

(declare-fun bs!1848882 () Bool)

(assert (= bs!1848882 (and d!2165364 b!6926129)))

(assert (=> bs!1848882 (not (= lambda!394004 lambda!394000))))

(assert (=> bs!1848880 (= (and (= (_1!37088 lt!2471720) lt!2471730) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394004 lambda!393976))))

(assert (=> d!2165364 true))

(assert (=> d!2165364 true))

(assert (=> d!2165364 true))

(assert (=> d!2165364 (= (isDefined!13400 (findConcatSeparation!3111 r1!6342 r2!6280 Nil!66557 (_1!37088 lt!2471720) (_1!37088 lt!2471720))) (Exists!3930 lambda!394004))))

(declare-fun lt!2471912 () Unit!160580)

(assert (=> d!2165364 (= lt!2471912 (choose!51575 r1!6342 r2!6280 (_1!37088 lt!2471720)))))

(assert (=> d!2165364 (validRegex!8634 r1!6342)))

(assert (=> d!2165364 (= (lemmaFindConcatSeparationEquivalentToExists!2873 r1!6342 r2!6280 (_1!37088 lt!2471720)) lt!2471912)))

(declare-fun bs!1848883 () Bool)

(assert (= bs!1848883 d!2165364))

(assert (=> bs!1848883 m!7634456))

(assert (=> bs!1848883 m!7634500))

(assert (=> bs!1848883 m!7634500))

(declare-fun m!7635032 () Bool)

(assert (=> bs!1848883 m!7635032))

(declare-fun m!7635034 () Bool)

(assert (=> bs!1848883 m!7635034))

(declare-fun m!7635036 () Bool)

(assert (=> bs!1848883 m!7635036))

(assert (=> b!6925565 d!2165364))

(declare-fun d!2165374 () Bool)

(declare-fun e!4168142 () Bool)

(assert (=> d!2165374 e!4168142))

(declare-fun res!2824623 () Bool)

(assert (=> d!2165374 (=> res!2824623 e!4168142)))

(declare-fun e!4168144 () Bool)

(assert (=> d!2165374 (= res!2824623 e!4168144)))

(declare-fun res!2824624 () Bool)

(assert (=> d!2165374 (=> (not res!2824624) (not e!4168144))))

(declare-fun lt!2471917 () Option!16697)

(assert (=> d!2165374 (= res!2824624 (isDefined!13400 lt!2471917))))

(declare-fun e!4168141 () Option!16697)

(assert (=> d!2165374 (= lt!2471917 e!4168141)))

(declare-fun c!1285702 () Bool)

(declare-fun e!4168143 () Bool)

(assert (=> d!2165374 (= c!1285702 e!4168143)))

(declare-fun res!2824626 () Bool)

(assert (=> d!2165374 (=> (not res!2824626) (not e!4168143))))

(assert (=> d!2165374 (= res!2824626 (matchR!9067 r1!6342 Nil!66557))))

(assert (=> d!2165374 (validRegex!8634 r1!6342)))

(assert (=> d!2165374 (= (findConcatSeparation!3111 r1!6342 r2!6280 Nil!66557 (_1!37088 lt!2471720) (_1!37088 lt!2471720)) lt!2471917)))

(declare-fun b!6926185 () Bool)

(assert (=> b!6926185 (= e!4168142 (not (isDefined!13400 lt!2471917)))))

(declare-fun b!6926186 () Bool)

(assert (=> b!6926186 (= e!4168143 (matchR!9067 r2!6280 (_1!37088 lt!2471720)))))

(declare-fun b!6926187 () Bool)

(declare-fun e!4168140 () Option!16697)

(assert (=> b!6926187 (= e!4168140 None!16696)))

(declare-fun b!6926188 () Bool)

(declare-fun res!2824625 () Bool)

(assert (=> b!6926188 (=> (not res!2824625) (not e!4168144))))

(assert (=> b!6926188 (= res!2824625 (matchR!9067 r1!6342 (_1!37088 (get!23333 lt!2471917))))))

(declare-fun b!6926189 () Bool)

(declare-fun res!2824622 () Bool)

(assert (=> b!6926189 (=> (not res!2824622) (not e!4168144))))

(assert (=> b!6926189 (= res!2824622 (matchR!9067 r2!6280 (_2!37088 (get!23333 lt!2471917))))))

(declare-fun b!6926190 () Bool)

(declare-fun lt!2471918 () Unit!160580)

(declare-fun lt!2471916 () Unit!160580)

(assert (=> b!6926190 (= lt!2471918 lt!2471916)))

(assert (=> b!6926190 (= (++!14971 (++!14971 Nil!66557 (Cons!66557 (h!73005 (_1!37088 lt!2471720)) Nil!66557)) (t!380424 (_1!37088 lt!2471720))) (_1!37088 lt!2471720))))

(assert (=> b!6926190 (= lt!2471916 (lemmaMoveElementToOtherListKeepsConcatEq!2834 Nil!66557 (h!73005 (_1!37088 lt!2471720)) (t!380424 (_1!37088 lt!2471720)) (_1!37088 lt!2471720)))))

(assert (=> b!6926190 (= e!4168140 (findConcatSeparation!3111 r1!6342 r2!6280 (++!14971 Nil!66557 (Cons!66557 (h!73005 (_1!37088 lt!2471720)) Nil!66557)) (t!380424 (_1!37088 lt!2471720)) (_1!37088 lt!2471720)))))

(declare-fun b!6926191 () Bool)

(assert (=> b!6926191 (= e!4168141 (Some!16696 (tuple2!67571 Nil!66557 (_1!37088 lt!2471720))))))

(declare-fun b!6926192 () Bool)

(assert (=> b!6926192 (= e!4168144 (= (++!14971 (_1!37088 (get!23333 lt!2471917)) (_2!37088 (get!23333 lt!2471917))) (_1!37088 lt!2471720)))))

(declare-fun b!6926193 () Bool)

(assert (=> b!6926193 (= e!4168141 e!4168140)))

(declare-fun c!1285703 () Bool)

(assert (=> b!6926193 (= c!1285703 (is-Nil!66557 (_1!37088 lt!2471720)))))

(assert (= (and d!2165374 res!2824626) b!6926186))

(assert (= (and d!2165374 c!1285702) b!6926191))

(assert (= (and d!2165374 (not c!1285702)) b!6926193))

(assert (= (and b!6926193 c!1285703) b!6926187))

(assert (= (and b!6926193 (not c!1285703)) b!6926190))

(assert (= (and d!2165374 res!2824624) b!6926188))

(assert (= (and b!6926188 res!2824625) b!6926189))

(assert (= (and b!6926189 res!2824622) b!6926192))

(assert (= (and d!2165374 (not res!2824623)) b!6926185))

(declare-fun m!7635038 () Bool)

(assert (=> b!6926189 m!7635038))

(declare-fun m!7635040 () Bool)

(assert (=> b!6926189 m!7635040))

(declare-fun m!7635042 () Bool)

(assert (=> b!6926185 m!7635042))

(declare-fun m!7635044 () Bool)

(assert (=> b!6926186 m!7635044))

(declare-fun m!7635046 () Bool)

(assert (=> b!6926190 m!7635046))

(assert (=> b!6926190 m!7635046))

(declare-fun m!7635048 () Bool)

(assert (=> b!6926190 m!7635048))

(declare-fun m!7635050 () Bool)

(assert (=> b!6926190 m!7635050))

(assert (=> b!6926190 m!7635046))

(declare-fun m!7635052 () Bool)

(assert (=> b!6926190 m!7635052))

(assert (=> b!6926192 m!7635038))

(declare-fun m!7635054 () Bool)

(assert (=> b!6926192 m!7635054))

(assert (=> d!2165374 m!7635042))

(assert (=> d!2165374 m!7634832))

(assert (=> d!2165374 m!7634456))

(assert (=> b!6926188 m!7635038))

(declare-fun m!7635056 () Bool)

(assert (=> b!6926188 m!7635056))

(assert (=> b!6925565 d!2165374))

(declare-fun b!6926194 () Bool)

(declare-fun res!2824629 () Bool)

(declare-fun e!4168150 () Bool)

(assert (=> b!6926194 (=> res!2824629 e!4168150)))

(declare-fun e!4168147 () Bool)

(assert (=> b!6926194 (= res!2824629 e!4168147)))

(declare-fun res!2824634 () Bool)

(assert (=> b!6926194 (=> (not res!2824634) (not e!4168147))))

(declare-fun lt!2471919 () Bool)

(assert (=> b!6926194 (= res!2824634 lt!2471919)))

(declare-fun b!6926195 () Bool)

(declare-fun res!2824631 () Bool)

(declare-fun e!4168145 () Bool)

(assert (=> b!6926195 (=> res!2824631 e!4168145)))

(assert (=> b!6926195 (= res!2824631 (not (isEmpty!38812 (tail!12935 (_1!37088 lt!2471739)))))))

(declare-fun b!6926196 () Bool)

(declare-fun e!4168149 () Bool)

(assert (=> b!6926196 (= e!4168149 e!4168145)))

(declare-fun res!2824632 () Bool)

(assert (=> b!6926196 (=> res!2824632 e!4168145)))

(declare-fun call!629483 () Bool)

(assert (=> b!6926196 (= res!2824632 call!629483)))

(declare-fun b!6926197 () Bool)

(declare-fun e!4168151 () Bool)

(assert (=> b!6926197 (= e!4168151 (matchR!9067 (derivativeStep!5430 r1!6342 (head!13883 (_1!37088 lt!2471739))) (tail!12935 (_1!37088 lt!2471739))))))

(declare-fun b!6926198 () Bool)

(declare-fun res!2824627 () Bool)

(assert (=> b!6926198 (=> (not res!2824627) (not e!4168147))))

(assert (=> b!6926198 (= res!2824627 (not call!629483))))

(declare-fun b!6926199 () Bool)

(assert (=> b!6926199 (= e!4168147 (= (head!13883 (_1!37088 lt!2471739)) (c!1285584 r1!6342)))))

(declare-fun b!6926200 () Bool)

(declare-fun res!2824633 () Bool)

(assert (=> b!6926200 (=> res!2824633 e!4168150)))

(assert (=> b!6926200 (= res!2824633 (not (is-ElementMatch!16928 r1!6342)))))

(declare-fun e!4168146 () Bool)

(assert (=> b!6926200 (= e!4168146 e!4168150)))

(declare-fun bm!629478 () Bool)

(assert (=> bm!629478 (= call!629483 (isEmpty!38812 (_1!37088 lt!2471739)))))

(declare-fun b!6926201 () Bool)

(declare-fun e!4168148 () Bool)

(assert (=> b!6926201 (= e!4168148 e!4168146)))

(declare-fun c!1285704 () Bool)

(assert (=> b!6926201 (= c!1285704 (is-EmptyLang!16928 r1!6342))))

(declare-fun b!6926202 () Bool)

(assert (=> b!6926202 (= e!4168146 (not lt!2471919))))

(declare-fun b!6926203 () Bool)

(declare-fun res!2824628 () Bool)

(assert (=> b!6926203 (=> (not res!2824628) (not e!4168147))))

(assert (=> b!6926203 (= res!2824628 (isEmpty!38812 (tail!12935 (_1!37088 lt!2471739))))))

(declare-fun b!6926204 () Bool)

(assert (=> b!6926204 (= e!4168151 (nullable!6755 r1!6342))))

(declare-fun b!6926205 () Bool)

(assert (=> b!6926205 (= e!4168148 (= lt!2471919 call!629483))))

(declare-fun b!6926206 () Bool)

(assert (=> b!6926206 (= e!4168145 (not (= (head!13883 (_1!37088 lt!2471739)) (c!1285584 r1!6342))))))

(declare-fun d!2165376 () Bool)

(assert (=> d!2165376 e!4168148))

(declare-fun c!1285705 () Bool)

(assert (=> d!2165376 (= c!1285705 (is-EmptyExpr!16928 r1!6342))))

(assert (=> d!2165376 (= lt!2471919 e!4168151)))

(declare-fun c!1285706 () Bool)

(assert (=> d!2165376 (= c!1285706 (isEmpty!38812 (_1!37088 lt!2471739)))))

(assert (=> d!2165376 (validRegex!8634 r1!6342)))

(assert (=> d!2165376 (= (matchR!9067 r1!6342 (_1!37088 lt!2471739)) lt!2471919)))

(declare-fun b!6926207 () Bool)

(assert (=> b!6926207 (= e!4168150 e!4168149)))

(declare-fun res!2824630 () Bool)

(assert (=> b!6926207 (=> (not res!2824630) (not e!4168149))))

(assert (=> b!6926207 (= res!2824630 (not lt!2471919))))

(assert (= (and d!2165376 c!1285706) b!6926204))

(assert (= (and d!2165376 (not c!1285706)) b!6926197))

(assert (= (and d!2165376 c!1285705) b!6926205))

(assert (= (and d!2165376 (not c!1285705)) b!6926201))

(assert (= (and b!6926201 c!1285704) b!6926202))

(assert (= (and b!6926201 (not c!1285704)) b!6926200))

(assert (= (and b!6926200 (not res!2824633)) b!6926194))

(assert (= (and b!6926194 res!2824634) b!6926198))

(assert (= (and b!6926198 res!2824627) b!6926203))

(assert (= (and b!6926203 res!2824628) b!6926199))

(assert (= (and b!6926194 (not res!2824629)) b!6926207))

(assert (= (and b!6926207 res!2824630) b!6926196))

(assert (= (and b!6926196 (not res!2824632)) b!6926195))

(assert (= (and b!6926195 (not res!2824631)) b!6926206))

(assert (= (or b!6926205 b!6926196 b!6926198) bm!629478))

(declare-fun m!7635058 () Bool)

(assert (=> b!6926195 m!7635058))

(assert (=> b!6926195 m!7635058))

(declare-fun m!7635060 () Bool)

(assert (=> b!6926195 m!7635060))

(declare-fun m!7635062 () Bool)

(assert (=> b!6926206 m!7635062))

(assert (=> b!6926197 m!7635062))

(assert (=> b!6926197 m!7635062))

(declare-fun m!7635064 () Bool)

(assert (=> b!6926197 m!7635064))

(assert (=> b!6926197 m!7635058))

(assert (=> b!6926197 m!7635064))

(assert (=> b!6926197 m!7635058))

(declare-fun m!7635066 () Bool)

(assert (=> b!6926197 m!7635066))

(declare-fun m!7635068 () Bool)

(assert (=> b!6926204 m!7635068))

(assert (=> d!2165376 m!7634668))

(assert (=> d!2165376 m!7634456))

(assert (=> b!6926199 m!7635062))

(assert (=> bm!629478 m!7634668))

(assert (=> b!6926203 m!7635058))

(assert (=> b!6926203 m!7635058))

(assert (=> b!6926203 m!7635060))

(assert (=> b!6925565 d!2165376))

(declare-fun d!2165378 () Bool)

(assert (=> d!2165378 (= (isDefined!13400 lt!2471744) (not (isEmpty!38814 lt!2471744)))))

(declare-fun bs!1848884 () Bool)

(assert (= bs!1848884 d!2165378))

(declare-fun m!7635070 () Bool)

(assert (=> bs!1848884 m!7635070))

(assert (=> b!6925565 d!2165378))

(declare-fun d!2165380 () Bool)

(assert (=> d!2165380 (= (Exists!3930 lambda!393929) (choose!51574 lambda!393929))))

(declare-fun bs!1848885 () Bool)

(assert (= bs!1848885 d!2165380))

(declare-fun m!7635072 () Bool)

(assert (=> bs!1848885 m!7635072))

(assert (=> b!6925565 d!2165380))

(declare-fun d!2165382 () Bool)

(assert (=> d!2165382 (= (Exists!3930 lambda!393930) (choose!51574 lambda!393930))))

(declare-fun bs!1848886 () Bool)

(assert (= bs!1848886 d!2165382))

(declare-fun m!7635074 () Bool)

(assert (=> bs!1848886 m!7635074))

(assert (=> b!6925565 d!2165382))

(declare-fun b!6926225 () Bool)

(declare-fun e!4168154 () Bool)

(declare-fun tp!1909006 () Bool)

(declare-fun tp!1909009 () Bool)

(assert (=> b!6926225 (= e!4168154 (and tp!1909006 tp!1909009))))

(declare-fun b!6926220 () Bool)

(assert (=> b!6926220 (= e!4168154 tp_is_empty!43081)))

(assert (=> b!6925560 (= tp!1908944 e!4168154)))

(declare-fun b!6926221 () Bool)

(declare-fun tp!1909007 () Bool)

(declare-fun tp!1909010 () Bool)

(assert (=> b!6926221 (= e!4168154 (and tp!1909007 tp!1909010))))

(declare-fun b!6926223 () Bool)

(declare-fun tp!1909008 () Bool)

(assert (=> b!6926223 (= e!4168154 tp!1909008)))

(assert (= (and b!6925560 (is-ElementMatch!16928 (regOne!34369 r1!6342))) b!6926220))

(assert (= (and b!6925560 (is-Concat!25773 (regOne!34369 r1!6342))) b!6926221))

(assert (= (and b!6925560 (is-Star!16928 (regOne!34369 r1!6342))) b!6926223))

(assert (= (and b!6925560 (is-Union!16928 (regOne!34369 r1!6342))) b!6926225))

(declare-fun b!6926229 () Bool)

(declare-fun e!4168157 () Bool)

(declare-fun tp!1909011 () Bool)

(declare-fun tp!1909014 () Bool)

(assert (=> b!6926229 (= e!4168157 (and tp!1909011 tp!1909014))))

(declare-fun b!6926226 () Bool)

(assert (=> b!6926226 (= e!4168157 tp_is_empty!43081)))

(assert (=> b!6925560 (= tp!1908937 e!4168157)))

(declare-fun b!6926227 () Bool)

(declare-fun tp!1909012 () Bool)

(declare-fun tp!1909015 () Bool)

(assert (=> b!6926227 (= e!4168157 (and tp!1909012 tp!1909015))))

(declare-fun b!6926228 () Bool)

(declare-fun tp!1909013 () Bool)

(assert (=> b!6926228 (= e!4168157 tp!1909013)))

(assert (= (and b!6925560 (is-ElementMatch!16928 (regTwo!34369 r1!6342))) b!6926226))

(assert (= (and b!6925560 (is-Concat!25773 (regTwo!34369 r1!6342))) b!6926227))

(assert (= (and b!6925560 (is-Star!16928 (regTwo!34369 r1!6342))) b!6926228))

(assert (= (and b!6925560 (is-Union!16928 (regTwo!34369 r1!6342))) b!6926229))

(declare-fun b!6926237 () Bool)

(declare-fun e!4168160 () Bool)

(declare-fun tp!1909016 () Bool)

(declare-fun tp!1909019 () Bool)

(assert (=> b!6926237 (= e!4168160 (and tp!1909016 tp!1909019))))

(declare-fun b!6926234 () Bool)

(assert (=> b!6926234 (= e!4168160 tp_is_empty!43081)))

(assert (=> b!6925576 (= tp!1908945 e!4168160)))

(declare-fun b!6926235 () Bool)

(declare-fun tp!1909017 () Bool)

(declare-fun tp!1909020 () Bool)

(assert (=> b!6926235 (= e!4168160 (and tp!1909017 tp!1909020))))

(declare-fun b!6926236 () Bool)

(declare-fun tp!1909018 () Bool)

(assert (=> b!6926236 (= e!4168160 tp!1909018)))

(assert (= (and b!6925576 (is-ElementMatch!16928 (reg!17257 r3!135))) b!6926234))

(assert (= (and b!6925576 (is-Concat!25773 (reg!17257 r3!135))) b!6926235))

(assert (= (and b!6925576 (is-Star!16928 (reg!17257 r3!135))) b!6926236))

(assert (= (and b!6925576 (is-Union!16928 (reg!17257 r3!135))) b!6926237))

(declare-fun b!6926247 () Bool)

(declare-fun e!4168165 () Bool)

(declare-fun tp!1909021 () Bool)

(declare-fun tp!1909024 () Bool)

(assert (=> b!6926247 (= e!4168165 (and tp!1909021 tp!1909024))))

(declare-fun b!6926244 () Bool)

(assert (=> b!6926244 (= e!4168165 tp_is_empty!43081)))

(assert (=> b!6925561 (= tp!1908947 e!4168165)))

(declare-fun b!6926245 () Bool)

(declare-fun tp!1909022 () Bool)

(declare-fun tp!1909025 () Bool)

(assert (=> b!6926245 (= e!4168165 (and tp!1909022 tp!1909025))))

(declare-fun b!6926246 () Bool)

(declare-fun tp!1909023 () Bool)

(assert (=> b!6926246 (= e!4168165 tp!1909023)))

(assert (= (and b!6925561 (is-ElementMatch!16928 (regOne!34368 r2!6280))) b!6926244))

(assert (= (and b!6925561 (is-Concat!25773 (regOne!34368 r2!6280))) b!6926245))

(assert (= (and b!6925561 (is-Star!16928 (regOne!34368 r2!6280))) b!6926246))

(assert (= (and b!6925561 (is-Union!16928 (regOne!34368 r2!6280))) b!6926247))

(declare-fun b!6926261 () Bool)

(declare-fun e!4168170 () Bool)

(declare-fun tp!1909026 () Bool)

(declare-fun tp!1909029 () Bool)

(assert (=> b!6926261 (= e!4168170 (and tp!1909026 tp!1909029))))

(declare-fun b!6926258 () Bool)

(assert (=> b!6926258 (= e!4168170 tp_is_empty!43081)))

(assert (=> b!6925561 (= tp!1908932 e!4168170)))

(declare-fun b!6926259 () Bool)

(declare-fun tp!1909027 () Bool)

(declare-fun tp!1909030 () Bool)

(assert (=> b!6926259 (= e!4168170 (and tp!1909027 tp!1909030))))

(declare-fun b!6926260 () Bool)

(declare-fun tp!1909028 () Bool)

(assert (=> b!6926260 (= e!4168170 tp!1909028)))

(assert (= (and b!6925561 (is-ElementMatch!16928 (regTwo!34368 r2!6280))) b!6926258))

(assert (= (and b!6925561 (is-Concat!25773 (regTwo!34368 r2!6280))) b!6926259))

(assert (= (and b!6925561 (is-Star!16928 (regTwo!34368 r2!6280))) b!6926260))

(assert (= (and b!6925561 (is-Union!16928 (regTwo!34368 r2!6280))) b!6926261))

(declare-fun b!6926269 () Bool)

(declare-fun e!4168173 () Bool)

(declare-fun tp!1909031 () Bool)

(declare-fun tp!1909034 () Bool)

(assert (=> b!6926269 (= e!4168173 (and tp!1909031 tp!1909034))))

(declare-fun b!6926266 () Bool)

(assert (=> b!6926266 (= e!4168173 tp_is_empty!43081)))

(assert (=> b!6925567 (= tp!1908934 e!4168173)))

(declare-fun b!6926267 () Bool)

(declare-fun tp!1909032 () Bool)

(declare-fun tp!1909035 () Bool)

(assert (=> b!6926267 (= e!4168173 (and tp!1909032 tp!1909035))))

(declare-fun b!6926268 () Bool)

(declare-fun tp!1909033 () Bool)

(assert (=> b!6926268 (= e!4168173 tp!1909033)))

(assert (= (and b!6925567 (is-ElementMatch!16928 (regOne!34369 r3!135))) b!6926266))

(assert (= (and b!6925567 (is-Concat!25773 (regOne!34369 r3!135))) b!6926267))

(assert (= (and b!6925567 (is-Star!16928 (regOne!34369 r3!135))) b!6926268))

(assert (= (and b!6925567 (is-Union!16928 (regOne!34369 r3!135))) b!6926269))

(declare-fun b!6926273 () Bool)

(declare-fun e!4168174 () Bool)

(declare-fun tp!1909036 () Bool)

(declare-fun tp!1909039 () Bool)

(assert (=> b!6926273 (= e!4168174 (and tp!1909036 tp!1909039))))

(declare-fun b!6926270 () Bool)

(assert (=> b!6926270 (= e!4168174 tp_is_empty!43081)))

(assert (=> b!6925567 (= tp!1908933 e!4168174)))

(declare-fun b!6926271 () Bool)

(declare-fun tp!1909037 () Bool)

(declare-fun tp!1909040 () Bool)

(assert (=> b!6926271 (= e!4168174 (and tp!1909037 tp!1909040))))

(declare-fun b!6926272 () Bool)

(declare-fun tp!1909038 () Bool)

(assert (=> b!6926272 (= e!4168174 tp!1909038)))

(assert (= (and b!6925567 (is-ElementMatch!16928 (regTwo!34369 r3!135))) b!6926270))

(assert (= (and b!6925567 (is-Concat!25773 (regTwo!34369 r3!135))) b!6926271))

(assert (= (and b!6925567 (is-Star!16928 (regTwo!34369 r3!135))) b!6926272))

(assert (= (and b!6925567 (is-Union!16928 (regTwo!34369 r3!135))) b!6926273))

(declare-fun b!6926277 () Bool)

(declare-fun e!4168175 () Bool)

(declare-fun tp!1909041 () Bool)

(declare-fun tp!1909044 () Bool)

(assert (=> b!6926277 (= e!4168175 (and tp!1909041 tp!1909044))))

(declare-fun b!6926274 () Bool)

(assert (=> b!6926274 (= e!4168175 tp_is_empty!43081)))

(assert (=> b!6925583 (= tp!1908943 e!4168175)))

(declare-fun b!6926275 () Bool)

(declare-fun tp!1909042 () Bool)

(declare-fun tp!1909045 () Bool)

(assert (=> b!6926275 (= e!4168175 (and tp!1909042 tp!1909045))))

(declare-fun b!6926276 () Bool)

(declare-fun tp!1909043 () Bool)

(assert (=> b!6926276 (= e!4168175 tp!1909043)))

(assert (= (and b!6925583 (is-ElementMatch!16928 (regOne!34368 r1!6342))) b!6926274))

(assert (= (and b!6925583 (is-Concat!25773 (regOne!34368 r1!6342))) b!6926275))

(assert (= (and b!6925583 (is-Star!16928 (regOne!34368 r1!6342))) b!6926276))

(assert (= (and b!6925583 (is-Union!16928 (regOne!34368 r1!6342))) b!6926277))

(declare-fun b!6926281 () Bool)

(declare-fun e!4168176 () Bool)

(declare-fun tp!1909046 () Bool)

(declare-fun tp!1909049 () Bool)

(assert (=> b!6926281 (= e!4168176 (and tp!1909046 tp!1909049))))

(declare-fun b!6926278 () Bool)

(assert (=> b!6926278 (= e!4168176 tp_is_empty!43081)))

(assert (=> b!6925583 (= tp!1908946 e!4168176)))

(declare-fun b!6926279 () Bool)

(declare-fun tp!1909047 () Bool)

(declare-fun tp!1909050 () Bool)

(assert (=> b!6926279 (= e!4168176 (and tp!1909047 tp!1909050))))

(declare-fun b!6926280 () Bool)

(declare-fun tp!1909048 () Bool)

(assert (=> b!6926280 (= e!4168176 tp!1909048)))

(assert (= (and b!6925583 (is-ElementMatch!16928 (regTwo!34368 r1!6342))) b!6926278))

(assert (= (and b!6925583 (is-Concat!25773 (regTwo!34368 r1!6342))) b!6926279))

(assert (= (and b!6925583 (is-Star!16928 (regTwo!34368 r1!6342))) b!6926280))

(assert (= (and b!6925583 (is-Union!16928 (regTwo!34368 r1!6342))) b!6926281))

(declare-fun b!6926285 () Bool)

(declare-fun e!4168177 () Bool)

(declare-fun tp!1909051 () Bool)

(declare-fun tp!1909054 () Bool)

(assert (=> b!6926285 (= e!4168177 (and tp!1909051 tp!1909054))))

(declare-fun b!6926282 () Bool)

(assert (=> b!6926282 (= e!4168177 tp_is_empty!43081)))

(assert (=> b!6925562 (= tp!1908940 e!4168177)))

(declare-fun b!6926283 () Bool)

(declare-fun tp!1909052 () Bool)

(declare-fun tp!1909055 () Bool)

(assert (=> b!6926283 (= e!4168177 (and tp!1909052 tp!1909055))))

(declare-fun b!6926284 () Bool)

(declare-fun tp!1909053 () Bool)

(assert (=> b!6926284 (= e!4168177 tp!1909053)))

(assert (= (and b!6925562 (is-ElementMatch!16928 (reg!17257 r1!6342))) b!6926282))

(assert (= (and b!6925562 (is-Concat!25773 (reg!17257 r1!6342))) b!6926283))

(assert (= (and b!6925562 (is-Star!16928 (reg!17257 r1!6342))) b!6926284))

(assert (= (and b!6925562 (is-Union!16928 (reg!17257 r1!6342))) b!6926285))

(declare-fun b!6926289 () Bool)

(declare-fun e!4168178 () Bool)

(declare-fun tp!1909056 () Bool)

(declare-fun tp!1909059 () Bool)

(assert (=> b!6926289 (= e!4168178 (and tp!1909056 tp!1909059))))

(declare-fun b!6926286 () Bool)

(assert (=> b!6926286 (= e!4168178 tp_is_empty!43081)))

(assert (=> b!6925578 (= tp!1908936 e!4168178)))

(declare-fun b!6926287 () Bool)

(declare-fun tp!1909057 () Bool)

(declare-fun tp!1909060 () Bool)

(assert (=> b!6926287 (= e!4168178 (and tp!1909057 tp!1909060))))

(declare-fun b!6926288 () Bool)

(declare-fun tp!1909058 () Bool)

(assert (=> b!6926288 (= e!4168178 tp!1909058)))

(assert (= (and b!6925578 (is-ElementMatch!16928 (regOne!34368 r3!135))) b!6926286))

(assert (= (and b!6925578 (is-Concat!25773 (regOne!34368 r3!135))) b!6926287))

(assert (= (and b!6925578 (is-Star!16928 (regOne!34368 r3!135))) b!6926288))

(assert (= (and b!6925578 (is-Union!16928 (regOne!34368 r3!135))) b!6926289))

(declare-fun b!6926293 () Bool)

(declare-fun e!4168179 () Bool)

(declare-fun tp!1909061 () Bool)

(declare-fun tp!1909064 () Bool)

(assert (=> b!6926293 (= e!4168179 (and tp!1909061 tp!1909064))))

(declare-fun b!6926290 () Bool)

(assert (=> b!6926290 (= e!4168179 tp_is_empty!43081)))

(assert (=> b!6925578 (= tp!1908939 e!4168179)))

(declare-fun b!6926291 () Bool)

(declare-fun tp!1909062 () Bool)

(declare-fun tp!1909065 () Bool)

(assert (=> b!6926291 (= e!4168179 (and tp!1909062 tp!1909065))))

(declare-fun b!6926292 () Bool)

(declare-fun tp!1909063 () Bool)

(assert (=> b!6926292 (= e!4168179 tp!1909063)))

(assert (= (and b!6925578 (is-ElementMatch!16928 (regTwo!34368 r3!135))) b!6926290))

(assert (= (and b!6925578 (is-Concat!25773 (regTwo!34368 r3!135))) b!6926291))

(assert (= (and b!6925578 (is-Star!16928 (regTwo!34368 r3!135))) b!6926292))

(assert (= (and b!6925578 (is-Union!16928 (regTwo!34368 r3!135))) b!6926293))

(declare-fun b!6926297 () Bool)

(declare-fun e!4168180 () Bool)

(declare-fun tp!1909066 () Bool)

(declare-fun tp!1909069 () Bool)

(assert (=> b!6926297 (= e!4168180 (and tp!1909066 tp!1909069))))

(declare-fun b!6926294 () Bool)

(assert (=> b!6926294 (= e!4168180 tp_is_empty!43081)))

(assert (=> b!6925568 (= tp!1908938 e!4168180)))

(declare-fun b!6926295 () Bool)

(declare-fun tp!1909067 () Bool)

(declare-fun tp!1909070 () Bool)

(assert (=> b!6926295 (= e!4168180 (and tp!1909067 tp!1909070))))

(declare-fun b!6926296 () Bool)

(declare-fun tp!1909068 () Bool)

(assert (=> b!6926296 (= e!4168180 tp!1909068)))

(assert (= (and b!6925568 (is-ElementMatch!16928 (reg!17257 r2!6280))) b!6926294))

(assert (= (and b!6925568 (is-Concat!25773 (reg!17257 r2!6280))) b!6926295))

(assert (= (and b!6925568 (is-Star!16928 (reg!17257 r2!6280))) b!6926296))

(assert (= (and b!6925568 (is-Union!16928 (reg!17257 r2!6280))) b!6926297))

(declare-fun b!6926302 () Bool)

(declare-fun e!4168183 () Bool)

(declare-fun tp!1909073 () Bool)

(assert (=> b!6926302 (= e!4168183 (and tp_is_empty!43081 tp!1909073))))

(assert (=> b!6925579 (= tp!1908941 e!4168183)))

(assert (= (and b!6925579 (is-Cons!66557 (t!380424 s!14361))) b!6926302))

(declare-fun b!6926306 () Bool)

(declare-fun e!4168184 () Bool)

(declare-fun tp!1909074 () Bool)

(declare-fun tp!1909077 () Bool)

(assert (=> b!6926306 (= e!4168184 (and tp!1909074 tp!1909077))))

(declare-fun b!6926303 () Bool)

(assert (=> b!6926303 (= e!4168184 tp_is_empty!43081)))

(assert (=> b!6925575 (= tp!1908942 e!4168184)))

(declare-fun b!6926304 () Bool)

(declare-fun tp!1909075 () Bool)

(declare-fun tp!1909078 () Bool)

(assert (=> b!6926304 (= e!4168184 (and tp!1909075 tp!1909078))))

(declare-fun b!6926305 () Bool)

(declare-fun tp!1909076 () Bool)

(assert (=> b!6926305 (= e!4168184 tp!1909076)))

(assert (= (and b!6925575 (is-ElementMatch!16928 (regOne!34369 r2!6280))) b!6926303))

(assert (= (and b!6925575 (is-Concat!25773 (regOne!34369 r2!6280))) b!6926304))

(assert (= (and b!6925575 (is-Star!16928 (regOne!34369 r2!6280))) b!6926305))

(assert (= (and b!6925575 (is-Union!16928 (regOne!34369 r2!6280))) b!6926306))

(declare-fun b!6926310 () Bool)

(declare-fun e!4168185 () Bool)

(declare-fun tp!1909079 () Bool)

(declare-fun tp!1909082 () Bool)

(assert (=> b!6926310 (= e!4168185 (and tp!1909079 tp!1909082))))

(declare-fun b!6926307 () Bool)

(assert (=> b!6926307 (= e!4168185 tp_is_empty!43081)))

(assert (=> b!6925575 (= tp!1908935 e!4168185)))

(declare-fun b!6926308 () Bool)

(declare-fun tp!1909080 () Bool)

(declare-fun tp!1909083 () Bool)

(assert (=> b!6926308 (= e!4168185 (and tp!1909080 tp!1909083))))

(declare-fun b!6926309 () Bool)

(declare-fun tp!1909081 () Bool)

(assert (=> b!6926309 (= e!4168185 tp!1909081)))

(assert (= (and b!6925575 (is-ElementMatch!16928 (regTwo!34369 r2!6280))) b!6926307))

(assert (= (and b!6925575 (is-Concat!25773 (regTwo!34369 r2!6280))) b!6926308))

(assert (= (and b!6925575 (is-Star!16928 (regTwo!34369 r2!6280))) b!6926309))

(assert (= (and b!6925575 (is-Union!16928 (regTwo!34369 r2!6280))) b!6926310))

(push 1)

(assert (not b!6926031))

(assert (not b!6926189))

(assert (not b!6926245))

(assert (not bm!629466))

(assert (not b!6925858))

(assert (not b!6926277))

(assert (not bm!629468))

(assert (not bm!629474))

(assert (not bm!629477))

(assert (not b!6926305))

(assert (not b!6926289))

(assert (not b!6926082))

(assert (not b!6926072))

(assert (not b!6926197))

(assert (not b!6926235))

(assert (not b!6925808))

(assert (not b!6926261))

(assert (not b!6925994))

(assert (not b!6926087))

(assert (not d!2165272))

(assert (not b!6926017))

(assert (not b!6926126))

(assert (not b!6925752))

(assert (not b!6926065))

(assert (not d!2165306))

(assert (not b!6926021))

(assert (not b!6926097))

(assert (not bm!629463))

(assert (not b!6926108))

(assert (not bm!629473))

(assert (not d!2165286))

(assert (not b!6926119))

(assert (not b!6926229))

(assert (not b!6926296))

(assert (not d!2165304))

(assert (not b!6926105))

(assert (not d!2165380))

(assert (not b!6926083))

(assert (not b!6926099))

(assert (not d!2165284))

(assert (not b!6926287))

(assert (not b!6926037))

(assert (not b!6926152))

(assert (not d!2165268))

(assert (not b!6926279))

(assert (not b!6925905))

(assert (not b!6925898))

(assert (not b!6925944))

(assert (not b!6926079))

(assert (not b!6925903))

(assert (not d!2165314))

(assert (not b!6926115))

(assert (not d!2165336))

(assert (not b!6926101))

(assert (not d!2165332))

(assert (not b!6926186))

(assert (not b!6926302))

(assert (not b!6926190))

(assert (not d!2165328))

(assert (not b!6926147))

(assert (not d!2165300))

(assert (not b!6926295))

(assert (not d!2165288))

(assert (not b!6926293))

(assert (not b!6926140))

(assert (not b!6926048))

(assert (not bm!629443))

(assert (not b!6926027))

(assert (not b!6926285))

(assert (not d!2165350))

(assert (not b!6926259))

(assert (not d!2165282))

(assert (not bm!629478))

(assert (not b!6926070))

(assert (not b!6925901))

(assert (not d!2165348))

(assert (not b!6926041))

(assert (not b!6926106))

(assert (not d!2165290))

(assert (not b!6925979))

(assert (not b!6926225))

(assert (not d!2165334))

(assert (not b!6926228))

(assert (not b!6925983))

(assert (not d!2165382))

(assert (not b!6926236))

(assert (not d!2165324))

(assert (not b!6926268))

(assert (not d!2165308))

(assert (not b!6925988))

(assert (not b!6926039))

(assert (not d!2165330))

(assert (not b!6925990))

(assert (not b!6926020))

(assert (not b!6926275))

(assert (not bm!629462))

(assert (not d!2165376))

(assert (not bm!629459))

(assert (not b!6926019))

(assert (not b!6926267))

(assert (not b!6925847))

(assert (not b!6926246))

(assert (not d!2165320))

(assert (not b!6926192))

(assert (not b!6926204))

(assert (not b!6926046))

(assert (not b!6925943))

(assert (not b!6926309))

(assert (not b!6926144))

(assert (not b!6926185))

(assert (not bm!629465))

(assert (not b!6926237))

(assert (not b!6925857))

(assert (not d!2165364))

(assert (not b!6926195))

(assert (not d!2165316))

(assert (not b!6926247))

(assert (not b!6926010))

(assert (not b!6925767))

(assert (not b!6925902))

(assert (not bm!629458))

(assert (not bm!629460))

(assert (not b!6926291))

(assert (not bm!629436))

(assert (not b!6926297))

(assert (not b!6926223))

(assert (not b!6926091))

(assert (not d!2165264))

(assert (not bm!629447))

(assert (not b!6926061))

(assert (not bm!629442))

(assert (not b!6925812))

(assert (not b!6925863))

(assert (not b!6926062))

(assert (not bm!629476))

(assert (not b!6926227))

(assert (not b!6925981))

(assert (not d!2165318))

(assert (not b!6926145))

(assert (not b!6926269))

(assert (not d!2165378))

(assert (not b!6926283))

(assert (not d!2165352))

(assert (not b!6926136))

(assert (not b!6925843))

(assert (not b!6926221))

(assert (not d!2165374))

(assert (not b!6925987))

(assert (not b!6926045))

(assert (not d!2165254))

(assert (not bm!629470))

(assert (not b!6926206))

(assert (not b!6926308))

(assert (not b!6926203))

(assert (not d!2165322))

(assert (not b!6925998))

(assert (not b!6926077))

(assert (not d!2165278))

(assert (not b!6926058))

(assert (not b!6926138))

(assert (not bm!629441))

(assert (not b!6925768))

(assert (not b!6926276))

(assert (not b!6926310))

(assert (not b!6926288))

(assert (not bm!629472))

(assert (not b!6926280))

(assert (not bm!629435))

(assert (not bm!629446))

(assert (not b!6926111))

(assert (not b!6926023))

(assert (not b!6926120))

(assert (not d!2165360))

(assert (not b!6926272))

(assert (not b!6926113))

(assert (not d!2165294))

(assert (not bm!629471))

(assert (not b!6926260))

(assert (not b!6926306))

(assert (not b!6925899))

(assert (not d!2165262))

(assert (not b!6926068))

(assert (not bm!629464))

(assert (not b!6926063))

(assert (not bm!629444))

(assert (not b!6926292))

(assert (not b!6926188))

(assert (not b!6926273))

(assert (not b!6926122))

(assert (not bm!629467))

(assert (not b!6926271))

(assert (not d!2165356))

(assert (not b!6926284))

(assert tp_is_empty!43081)

(assert (not bm!629469))

(assert (not b!6926304))

(assert (not d!2165346))

(assert (not b!6926281))

(assert (not b!6926059))

(assert (not b!6926199))

(assert (not b!6926130))

(assert (not b!6926076))

(assert (not b!6926016))

(assert (not d!2165274))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

