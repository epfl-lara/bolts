; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667576 () Bool)

(assert start!667576)

(declare-fun b!6956780 () Bool)

(assert (=> b!6956780 true))

(assert (=> b!6956780 true))

(declare-fun bs!1858096 () Bool)

(declare-fun b!6956786 () Bool)

(assert (= bs!1858096 (and b!6956786 b!6956780)))

(declare-fun lambda!396854 () Int)

(declare-fun lambda!396853 () Int)

(assert (=> bs!1858096 (not (= lambda!396854 lambda!396853))))

(assert (=> b!6956786 true))

(assert (=> b!6956786 true))

(assert (=> b!6956786 true))

(declare-datatypes ((C!34386 0))(
  ( (C!34387 (val!26895 Int)) )
))
(declare-datatypes ((Regex!17058 0))(
  ( (ElementMatch!17058 (c!1290084 C!34386)) (Concat!25903 (regOne!34628 Regex!17058) (regTwo!34628 Regex!17058)) (EmptyExpr!17058) (Star!17058 (reg!17387 Regex!17058)) (EmptyLang!17058) (Union!17058 (regOne!34629 Regex!17058) (regTwo!34629 Regex!17058)) )
))
(declare-fun rInner!765 () Regex!17058)

(declare-fun lt!2478562 () Regex!17058)

(declare-fun lambda!396855 () Int)

(assert (=> bs!1858096 (= (= lt!2478562 (Star!17058 rInner!765)) (= lambda!396855 lambda!396853))))

(assert (=> b!6956786 (not (= lambda!396855 lambda!396854))))

(assert (=> b!6956786 true))

(assert (=> b!6956786 true))

(assert (=> b!6956786 true))

(declare-fun b!6956778 () Bool)

(declare-fun e!4183219 () Bool)

(declare-fun tp_is_empty!43341 () Bool)

(declare-fun tp!1917796 () Bool)

(assert (=> b!6956778 (= e!4183219 (and tp_is_empty!43341 tp!1917796))))

(declare-fun b!6956779 () Bool)

(declare-fun e!4183222 () Bool)

(declare-fun tp!1917798 () Bool)

(assert (=> b!6956779 (= e!4183222 tp!1917798)))

(declare-fun res!2838617 () Bool)

(declare-fun e!4183220 () Bool)

(assert (=> b!6956780 (=> (not res!2838617) (not e!4183220))))

(declare-fun Exists!4054 (Int) Bool)

(assert (=> b!6956780 (= res!2838617 (Exists!4054 lambda!396853))))

(declare-fun b!6956781 () Bool)

(declare-fun e!4183223 () Bool)

(declare-fun e!4183221 () Bool)

(assert (=> b!6956781 (= e!4183223 (not e!4183221))))

(declare-fun res!2838616 () Bool)

(assert (=> b!6956781 (=> res!2838616 e!4183221)))

(declare-fun lt!2478557 () Bool)

(declare-fun lt!2478559 () Bool)

(assert (=> b!6956781 (= res!2838616 (or (not lt!2478557) (not lt!2478559)))))

(declare-datatypes ((List!66811 0))(
  ( (Nil!66687) (Cons!66687 (h!73135 C!34386) (t!380554 List!66811)) )
))
(declare-datatypes ((tuple2!67818 0))(
  ( (tuple2!67819 (_1!37212 List!66811) (_2!37212 List!66811)) )
))
(declare-fun lt!2478561 () tuple2!67818)

(declare-fun matchRSpec!4083 (Regex!17058 List!66811) Bool)

(assert (=> b!6956781 (= lt!2478559 (matchRSpec!4083 lt!2478562 (_2!37212 lt!2478561)))))

(declare-fun matchR!9168 (Regex!17058 List!66811) Bool)

(assert (=> b!6956781 (= lt!2478559 (matchR!9168 lt!2478562 (_2!37212 lt!2478561)))))

(declare-datatypes ((Unit!160784 0))(
  ( (Unit!160785) )
))
(declare-fun lt!2478560 () Unit!160784)

(declare-fun mainMatchTheorem!4077 (Regex!17058 List!66811) Unit!160784)

(assert (=> b!6956781 (= lt!2478560 (mainMatchTheorem!4077 lt!2478562 (_2!37212 lt!2478561)))))

(assert (=> b!6956781 (= lt!2478562 (Star!17058 rInner!765))))

(assert (=> b!6956781 (= lt!2478557 (matchRSpec!4083 rInner!765 (_1!37212 lt!2478561)))))

(assert (=> b!6956781 (= lt!2478557 (matchR!9168 rInner!765 (_1!37212 lt!2478561)))))

(declare-fun lt!2478558 () Unit!160784)

(assert (=> b!6956781 (= lt!2478558 (mainMatchTheorem!4077 rInner!765 (_1!37212 lt!2478561)))))

(declare-fun b!6956782 () Bool)

(assert (=> b!6956782 (= e!4183220 e!4183223)))

(declare-fun res!2838615 () Bool)

(assert (=> b!6956782 (=> (not res!2838615) (not e!4183223))))

(declare-fun s!10388 () List!66811)

(declare-fun ++!15087 (List!66811 List!66811) List!66811)

(assert (=> b!6956782 (= res!2838615 (= (++!15087 (_1!37212 lt!2478561) (_2!37212 lt!2478561)) s!10388))))

(declare-fun pickWitness!381 (Int) tuple2!67818)

(assert (=> b!6956782 (= lt!2478561 (pickWitness!381 lambda!396853))))

(declare-fun b!6956783 () Bool)

(assert (=> b!6956783 (= e!4183222 tp_is_empty!43341)))

(declare-fun b!6956784 () Bool)

(declare-fun res!2838613 () Bool)

(assert (=> b!6956784 (=> (not res!2838613) (not e!4183220))))

(declare-fun nullable!6871 (Regex!17058) Bool)

(assert (=> b!6956784 (= res!2838613 (not (nullable!6871 rInner!765)))))

(declare-fun b!6956785 () Bool)

(declare-fun tp!1917795 () Bool)

(declare-fun tp!1917797 () Bool)

(assert (=> b!6956785 (= e!4183222 (and tp!1917795 tp!1917797))))

(assert (=> b!6956786 (= e!4183221 (= (Exists!4054 lambda!396855) (Exists!4054 lambda!396854)))))

(declare-fun lt!2478556 () Unit!160784)

(declare-fun ExistsThe!25 (tuple2!67818 Int) Unit!160784)

(assert (=> b!6956786 (= lt!2478556 (ExistsThe!25 lt!2478561 lambda!396854))))

(declare-fun b!6956787 () Bool)

(declare-fun tp!1917794 () Bool)

(declare-fun tp!1917799 () Bool)

(assert (=> b!6956787 (= e!4183222 (and tp!1917794 tp!1917799))))

(declare-fun res!2838614 () Bool)

(assert (=> start!667576 (=> (not res!2838614) (not e!4183220))))

(declare-fun validRegex!8764 (Regex!17058) Bool)

(assert (=> start!667576 (= res!2838614 (validRegex!8764 rInner!765))))

(assert (=> start!667576 e!4183220))

(assert (=> start!667576 e!4183222))

(assert (=> start!667576 e!4183219))

(assert (= (and start!667576 res!2838614) b!6956784))

(assert (= (and b!6956784 res!2838613) b!6956780))

(assert (= (and b!6956780 res!2838617) b!6956782))

(assert (= (and b!6956782 res!2838615) b!6956781))

(assert (= (and b!6956781 (not res!2838616)) b!6956786))

(assert (= (and start!667576 (is-ElementMatch!17058 rInner!765)) b!6956783))

(assert (= (and start!667576 (is-Concat!25903 rInner!765)) b!6956787))

(assert (= (and start!667576 (is-Star!17058 rInner!765)) b!6956779))

(assert (= (and start!667576 (is-Union!17058 rInner!765)) b!6956785))

(assert (= (and start!667576 (is-Cons!66687 s!10388)) b!6956778))

(declare-fun m!7654608 () Bool)

(assert (=> start!667576 m!7654608))

(declare-fun m!7654610 () Bool)

(assert (=> b!6956784 m!7654610))

(declare-fun m!7654612 () Bool)

(assert (=> b!6956786 m!7654612))

(declare-fun m!7654614 () Bool)

(assert (=> b!6956786 m!7654614))

(declare-fun m!7654616 () Bool)

(assert (=> b!6956786 m!7654616))

(declare-fun m!7654618 () Bool)

(assert (=> b!6956781 m!7654618))

(declare-fun m!7654620 () Bool)

(assert (=> b!6956781 m!7654620))

(declare-fun m!7654622 () Bool)

(assert (=> b!6956781 m!7654622))

(declare-fun m!7654624 () Bool)

(assert (=> b!6956781 m!7654624))

(declare-fun m!7654626 () Bool)

(assert (=> b!6956781 m!7654626))

(declare-fun m!7654628 () Bool)

(assert (=> b!6956781 m!7654628))

(declare-fun m!7654630 () Bool)

(assert (=> b!6956780 m!7654630))

(declare-fun m!7654632 () Bool)

(assert (=> b!6956782 m!7654632))

(declare-fun m!7654634 () Bool)

(assert (=> b!6956782 m!7654634))

(push 1)

(assert (not b!6956780))

(assert (not start!667576))

(assert tp_is_empty!43341)

(assert (not b!6956786))

(assert (not b!6956784))

(assert (not b!6956785))

(assert (not b!6956781))

(assert (not b!6956779))

(assert (not b!6956778))

(assert (not b!6956787))

(assert (not b!6956782))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2169643 () Bool)

(declare-fun choose!51851 (Int) Bool)

(assert (=> d!2169643 (= (Exists!4054 lambda!396853) (choose!51851 lambda!396853))))

(declare-fun bs!1858100 () Bool)

(assert (= bs!1858100 d!2169643))

(declare-fun m!7654668 () Bool)

(assert (=> bs!1858100 m!7654668))

(assert (=> b!6956780 d!2169643))

(declare-fun b!6956868 () Bool)

(declare-fun e!4183264 () Bool)

(declare-fun e!4183265 () Bool)

(assert (=> b!6956868 (= e!4183264 e!4183265)))

(declare-fun c!1290090 () Bool)

(assert (=> b!6956868 (= c!1290090 (is-Star!17058 rInner!765))))

(declare-fun b!6956869 () Bool)

(declare-fun e!4183268 () Bool)

(assert (=> b!6956869 (= e!4183265 e!4183268)))

(declare-fun c!1290091 () Bool)

(assert (=> b!6956869 (= c!1290091 (is-Union!17058 rInner!765))))

(declare-fun d!2169645 () Bool)

(declare-fun res!2838667 () Bool)

(assert (=> d!2169645 (=> res!2838667 e!4183264)))

(assert (=> d!2169645 (= res!2838667 (is-ElementMatch!17058 rInner!765))))

(assert (=> d!2169645 (= (validRegex!8764 rInner!765) e!4183264)))

(declare-fun b!6956870 () Bool)

(declare-fun e!4183266 () Bool)

(declare-fun call!631774 () Bool)

(assert (=> b!6956870 (= e!4183266 call!631774)))

(declare-fun b!6956871 () Bool)

(declare-fun res!2838669 () Bool)

(declare-fun e!4183263 () Bool)

(assert (=> b!6956871 (=> res!2838669 e!4183263)))

(assert (=> b!6956871 (= res!2838669 (not (is-Concat!25903 rInner!765)))))

(assert (=> b!6956871 (= e!4183268 e!4183263)))

(declare-fun b!6956872 () Bool)

(declare-fun e!4183269 () Bool)

(assert (=> b!6956872 (= e!4183263 e!4183269)))

(declare-fun res!2838668 () Bool)

(assert (=> b!6956872 (=> (not res!2838668) (not e!4183269))))

(assert (=> b!6956872 (= res!2838668 call!631774)))

(declare-fun b!6956873 () Bool)

(declare-fun e!4183267 () Bool)

(declare-fun call!631772 () Bool)

(assert (=> b!6956873 (= e!4183267 call!631772)))

(declare-fun bm!631767 () Bool)

(declare-fun call!631773 () Bool)

(assert (=> bm!631767 (= call!631773 call!631772)))

(declare-fun bm!631768 () Bool)

(assert (=> bm!631768 (= call!631774 (validRegex!8764 (ite c!1290091 (regTwo!34629 rInner!765) (regOne!34628 rInner!765))))))

(declare-fun bm!631769 () Bool)

(assert (=> bm!631769 (= call!631772 (validRegex!8764 (ite c!1290090 (reg!17387 rInner!765) (ite c!1290091 (regOne!34629 rInner!765) (regTwo!34628 rInner!765)))))))

(declare-fun b!6956874 () Bool)

(assert (=> b!6956874 (= e!4183269 call!631773)))

(declare-fun b!6956875 () Bool)

(assert (=> b!6956875 (= e!4183265 e!4183267)))

(declare-fun res!2838670 () Bool)

(assert (=> b!6956875 (= res!2838670 (not (nullable!6871 (reg!17387 rInner!765))))))

(assert (=> b!6956875 (=> (not res!2838670) (not e!4183267))))

(declare-fun b!6956876 () Bool)

(declare-fun res!2838671 () Bool)

(assert (=> b!6956876 (=> (not res!2838671) (not e!4183266))))

(assert (=> b!6956876 (= res!2838671 call!631773)))

(assert (=> b!6956876 (= e!4183268 e!4183266)))

(assert (= (and d!2169645 (not res!2838667)) b!6956868))

(assert (= (and b!6956868 c!1290090) b!6956875))

(assert (= (and b!6956868 (not c!1290090)) b!6956869))

(assert (= (and b!6956875 res!2838670) b!6956873))

(assert (= (and b!6956869 c!1290091) b!6956876))

(assert (= (and b!6956869 (not c!1290091)) b!6956871))

(assert (= (and b!6956876 res!2838671) b!6956870))

(assert (= (and b!6956871 (not res!2838669)) b!6956872))

(assert (= (and b!6956872 res!2838668) b!6956874))

(assert (= (or b!6956876 b!6956874) bm!631767))

(assert (= (or b!6956870 b!6956872) bm!631768))

(assert (= (or b!6956873 bm!631767) bm!631769))

(declare-fun m!7654674 () Bool)

(assert (=> bm!631768 m!7654674))

(declare-fun m!7654676 () Bool)

(assert (=> bm!631769 m!7654676))

(declare-fun m!7654678 () Bool)

(assert (=> b!6956875 m!7654678))

(assert (=> start!667576 d!2169645))

(declare-fun d!2169649 () Bool)

(assert (=> d!2169649 (= (Exists!4054 lambda!396855) (choose!51851 lambda!396855))))

(declare-fun bs!1858102 () Bool)

(assert (= bs!1858102 d!2169649))

(declare-fun m!7654680 () Bool)

(assert (=> bs!1858102 m!7654680))

(assert (=> b!6956786 d!2169649))

(declare-fun d!2169651 () Bool)

(assert (=> d!2169651 (= (Exists!4054 lambda!396854) (choose!51851 lambda!396854))))

(declare-fun bs!1858103 () Bool)

(assert (= bs!1858103 d!2169651))

(declare-fun m!7654682 () Bool)

(assert (=> bs!1858103 m!7654682))

(assert (=> b!6956786 d!2169651))

(declare-fun d!2169653 () Bool)

(assert (=> d!2169653 (Exists!4054 lambda!396854)))

(declare-fun lt!2478589 () Unit!160784)

(declare-fun choose!51852 (tuple2!67818 Int) Unit!160784)

(assert (=> d!2169653 (= lt!2478589 (choose!51852 lt!2478561 lambda!396854))))

(declare-fun dynLambda!26598 (Int tuple2!67818) Bool)

(assert (=> d!2169653 (dynLambda!26598 lambda!396854 lt!2478561)))

(assert (=> d!2169653 (= (ExistsThe!25 lt!2478561 lambda!396854) lt!2478589)))

(declare-fun b_lambda!260475 () Bool)

(assert (=> (not b_lambda!260475) (not d!2169653)))

(declare-fun bs!1858104 () Bool)

(assert (= bs!1858104 d!2169653))

(assert (=> bs!1858104 m!7654614))

(declare-fun m!7654684 () Bool)

(assert (=> bs!1858104 m!7654684))

(declare-fun m!7654686 () Bool)

(assert (=> bs!1858104 m!7654686))

(assert (=> b!6956786 d!2169653))

(declare-fun b!6956932 () Bool)

(declare-fun res!2838705 () Bool)

(declare-fun e!4183310 () Bool)

(assert (=> b!6956932 (=> res!2838705 e!4183310)))

(declare-fun isEmpty!38923 (List!66811) Bool)

(declare-fun tail!13004 (List!66811) List!66811)

(assert (=> b!6956932 (= res!2838705 (not (isEmpty!38923 (tail!13004 (_2!37212 lt!2478561)))))))

(declare-fun b!6956933 () Bool)

(declare-fun e!4183305 () Bool)

(declare-fun head!13952 (List!66811) C!34386)

(assert (=> b!6956933 (= e!4183305 (= (head!13952 (_2!37212 lt!2478561)) (c!1290084 lt!2478562)))))

(declare-fun b!6956934 () Bool)

(declare-fun e!4183307 () Bool)

(declare-fun derivativeStep!5499 (Regex!17058 C!34386) Regex!17058)

(assert (=> b!6956934 (= e!4183307 (matchR!9168 (derivativeStep!5499 lt!2478562 (head!13952 (_2!37212 lt!2478561))) (tail!13004 (_2!37212 lt!2478561))))))

(declare-fun b!6956935 () Bool)

(declare-fun e!4183308 () Bool)

(declare-fun e!4183309 () Bool)

(assert (=> b!6956935 (= e!4183308 e!4183309)))

(declare-fun res!2838709 () Bool)

(assert (=> b!6956935 (=> (not res!2838709) (not e!4183309))))

(declare-fun lt!2478592 () Bool)

(assert (=> b!6956935 (= res!2838709 (not lt!2478592))))

(declare-fun b!6956936 () Bool)

(declare-fun res!2838704 () Bool)

(assert (=> b!6956936 (=> res!2838704 e!4183308)))

(assert (=> b!6956936 (= res!2838704 e!4183305)))

(declare-fun res!2838706 () Bool)

(assert (=> b!6956936 (=> (not res!2838706) (not e!4183305))))

(assert (=> b!6956936 (= res!2838706 lt!2478592)))

(declare-fun b!6956937 () Bool)

(declare-fun res!2838710 () Bool)

(assert (=> b!6956937 (=> (not res!2838710) (not e!4183305))))

(declare-fun call!631786 () Bool)

(assert (=> b!6956937 (= res!2838710 (not call!631786))))

(declare-fun b!6956938 () Bool)

(declare-fun e!4183306 () Bool)

(assert (=> b!6956938 (= e!4183306 (not lt!2478592))))

(declare-fun b!6956939 () Bool)

(declare-fun e!4183311 () Bool)

(assert (=> b!6956939 (= e!4183311 e!4183306)))

(declare-fun c!1290105 () Bool)

(assert (=> b!6956939 (= c!1290105 (is-EmptyLang!17058 lt!2478562))))

(declare-fun b!6956941 () Bool)

(assert (=> b!6956941 (= e!4183309 e!4183310)))

(declare-fun res!2838707 () Bool)

(assert (=> b!6956941 (=> res!2838707 e!4183310)))

(assert (=> b!6956941 (= res!2838707 call!631786)))

(declare-fun b!6956942 () Bool)

(assert (=> b!6956942 (= e!4183310 (not (= (head!13952 (_2!37212 lt!2478561)) (c!1290084 lt!2478562))))))

(declare-fun b!6956943 () Bool)

(declare-fun res!2838708 () Bool)

(assert (=> b!6956943 (=> (not res!2838708) (not e!4183305))))

(assert (=> b!6956943 (= res!2838708 (isEmpty!38923 (tail!13004 (_2!37212 lt!2478561))))))

(declare-fun b!6956944 () Bool)

(assert (=> b!6956944 (= e!4183307 (nullable!6871 lt!2478562))))

(declare-fun b!6956945 () Bool)

(declare-fun res!2838703 () Bool)

(assert (=> b!6956945 (=> res!2838703 e!4183308)))

(assert (=> b!6956945 (= res!2838703 (not (is-ElementMatch!17058 lt!2478562)))))

(assert (=> b!6956945 (= e!4183306 e!4183308)))

(declare-fun bm!631781 () Bool)

(assert (=> bm!631781 (= call!631786 (isEmpty!38923 (_2!37212 lt!2478561)))))

(declare-fun b!6956940 () Bool)

(assert (=> b!6956940 (= e!4183311 (= lt!2478592 call!631786))))

(declare-fun d!2169655 () Bool)

(assert (=> d!2169655 e!4183311))

(declare-fun c!1290106 () Bool)

(assert (=> d!2169655 (= c!1290106 (is-EmptyExpr!17058 lt!2478562))))

(assert (=> d!2169655 (= lt!2478592 e!4183307)))

(declare-fun c!1290104 () Bool)

(assert (=> d!2169655 (= c!1290104 (isEmpty!38923 (_2!37212 lt!2478561)))))

(assert (=> d!2169655 (validRegex!8764 lt!2478562)))

(assert (=> d!2169655 (= (matchR!9168 lt!2478562 (_2!37212 lt!2478561)) lt!2478592)))

(assert (= (and d!2169655 c!1290104) b!6956944))

(assert (= (and d!2169655 (not c!1290104)) b!6956934))

(assert (= (and d!2169655 c!1290106) b!6956940))

(assert (= (and d!2169655 (not c!1290106)) b!6956939))

(assert (= (and b!6956939 c!1290105) b!6956938))

(assert (= (and b!6956939 (not c!1290105)) b!6956945))

(assert (= (and b!6956945 (not res!2838703)) b!6956936))

(assert (= (and b!6956936 res!2838706) b!6956937))

(assert (= (and b!6956937 res!2838710) b!6956943))

(assert (= (and b!6956943 res!2838708) b!6956933))

(assert (= (and b!6956936 (not res!2838704)) b!6956935))

(assert (= (and b!6956935 res!2838709) b!6956941))

(assert (= (and b!6956941 (not res!2838707)) b!6956932))

(assert (= (and b!6956932 (not res!2838705)) b!6956942))

(assert (= (or b!6956940 b!6956937 b!6956941) bm!631781))

(declare-fun m!7654696 () Bool)

(assert (=> bm!631781 m!7654696))

(declare-fun m!7654698 () Bool)

(assert (=> b!6956944 m!7654698))

(declare-fun m!7654700 () Bool)

(assert (=> b!6956942 m!7654700))

(assert (=> b!6956934 m!7654700))

(assert (=> b!6956934 m!7654700))

(declare-fun m!7654702 () Bool)

(assert (=> b!6956934 m!7654702))

(declare-fun m!7654704 () Bool)

(assert (=> b!6956934 m!7654704))

(assert (=> b!6956934 m!7654702))

(assert (=> b!6956934 m!7654704))

(declare-fun m!7654706 () Bool)

(assert (=> b!6956934 m!7654706))

(assert (=> d!2169655 m!7654696))

(declare-fun m!7654708 () Bool)

(assert (=> d!2169655 m!7654708))

(assert (=> b!6956943 m!7654704))

(assert (=> b!6956943 m!7654704))

(declare-fun m!7654710 () Bool)

(assert (=> b!6956943 m!7654710))

(assert (=> b!6956932 m!7654704))

(assert (=> b!6956932 m!7654704))

(assert (=> b!6956932 m!7654710))

(assert (=> b!6956933 m!7654700))

(assert (=> b!6956781 d!2169655))

(declare-fun d!2169661 () Bool)

(assert (=> d!2169661 (= (matchR!9168 rInner!765 (_1!37212 lt!2478561)) (matchRSpec!4083 rInner!765 (_1!37212 lt!2478561)))))

(declare-fun lt!2478597 () Unit!160784)

(declare-fun choose!51853 (Regex!17058 List!66811) Unit!160784)

(assert (=> d!2169661 (= lt!2478597 (choose!51853 rInner!765 (_1!37212 lt!2478561)))))

(assert (=> d!2169661 (validRegex!8764 rInner!765)))

(assert (=> d!2169661 (= (mainMatchTheorem!4077 rInner!765 (_1!37212 lt!2478561)) lt!2478597)))

(declare-fun bs!1858106 () Bool)

(assert (= bs!1858106 d!2169661))

(assert (=> bs!1858106 m!7654622))

(assert (=> bs!1858106 m!7654626))

(declare-fun m!7654712 () Bool)

(assert (=> bs!1858106 m!7654712))

(assert (=> bs!1858106 m!7654608))

(assert (=> b!6956781 d!2169661))

(declare-fun bs!1858109 () Bool)

(declare-fun b!6956987 () Bool)

(assert (= bs!1858109 (and b!6956987 b!6956780)))

(declare-fun lambda!396873 () Int)

(assert (=> bs!1858109 (not (= lambda!396873 lambda!396853))))

(declare-fun bs!1858110 () Bool)

(assert (= bs!1858110 (and b!6956987 b!6956786)))

(assert (=> bs!1858110 (= (and (= (_2!37212 lt!2478561) s!10388) (= (reg!17387 lt!2478562) rInner!765)) (= lambda!396873 lambda!396854))))

(assert (=> bs!1858110 (not (= lambda!396873 lambda!396855))))

(assert (=> b!6956987 true))

(assert (=> b!6956987 true))

(declare-fun bs!1858111 () Bool)

(declare-fun b!6956990 () Bool)

(assert (= bs!1858111 (and b!6956990 b!6956780)))

(declare-fun lambda!396874 () Int)

(assert (=> bs!1858111 (not (= lambda!396874 lambda!396853))))

(declare-fun bs!1858112 () Bool)

(assert (= bs!1858112 (and b!6956990 b!6956786)))

(assert (=> bs!1858112 (not (= lambda!396874 lambda!396854))))

(assert (=> bs!1858112 (not (= lambda!396874 lambda!396855))))

(declare-fun bs!1858113 () Bool)

(assert (= bs!1858113 (and b!6956990 b!6956987)))

(assert (=> bs!1858113 (not (= lambda!396874 lambda!396873))))

(assert (=> b!6956990 true))

(assert (=> b!6956990 true))

(declare-fun b!6956984 () Bool)

(declare-fun e!4183334 () Bool)

(assert (=> b!6956984 (= e!4183334 (matchRSpec!4083 (regTwo!34629 lt!2478562) (_2!37212 lt!2478561)))))

(declare-fun b!6956986 () Bool)

(declare-fun res!2838729 () Bool)

(declare-fun e!4183333 () Bool)

(assert (=> b!6956986 (=> res!2838729 e!4183333)))

(declare-fun call!631792 () Bool)

(assert (=> b!6956986 (= res!2838729 call!631792)))

(declare-fun e!4183335 () Bool)

(assert (=> b!6956986 (= e!4183335 e!4183333)))

(declare-fun call!631791 () Bool)

(assert (=> b!6956987 (= e!4183333 call!631791)))

(declare-fun b!6956988 () Bool)

(declare-fun e!4183337 () Bool)

(assert (=> b!6956988 (= e!4183337 e!4183335)))

(declare-fun c!1290120 () Bool)

(assert (=> b!6956988 (= c!1290120 (is-Star!17058 lt!2478562))))

(declare-fun b!6956985 () Bool)

(declare-fun e!4183336 () Bool)

(assert (=> b!6956985 (= e!4183336 (= (_2!37212 lt!2478561) (Cons!66687 (c!1290084 lt!2478562) Nil!66687)))))

(declare-fun d!2169663 () Bool)

(declare-fun c!1290118 () Bool)

(assert (=> d!2169663 (= c!1290118 (is-EmptyExpr!17058 lt!2478562))))

(declare-fun e!4183332 () Bool)

(assert (=> d!2169663 (= (matchRSpec!4083 lt!2478562 (_2!37212 lt!2478561)) e!4183332)))

(declare-fun b!6956989 () Bool)

(assert (=> b!6956989 (= e!4183337 e!4183334)))

(declare-fun res!2838727 () Bool)

(assert (=> b!6956989 (= res!2838727 (matchRSpec!4083 (regOne!34629 lt!2478562) (_2!37212 lt!2478561)))))

(assert (=> b!6956989 (=> res!2838727 e!4183334)))

(declare-fun bm!631786 () Bool)

(assert (=> bm!631786 (= call!631791 (Exists!4054 (ite c!1290120 lambda!396873 lambda!396874)))))

(assert (=> b!6956990 (= e!4183335 call!631791)))

(declare-fun bm!631787 () Bool)

(assert (=> bm!631787 (= call!631792 (isEmpty!38923 (_2!37212 lt!2478561)))))

(declare-fun b!6956991 () Bool)

(assert (=> b!6956991 (= e!4183332 call!631792)))

(declare-fun b!6956992 () Bool)

(declare-fun e!4183338 () Bool)

(assert (=> b!6956992 (= e!4183332 e!4183338)))

(declare-fun res!2838728 () Bool)

(assert (=> b!6956992 (= res!2838728 (not (is-EmptyLang!17058 lt!2478562)))))

(assert (=> b!6956992 (=> (not res!2838728) (not e!4183338))))

(declare-fun b!6956993 () Bool)

(declare-fun c!1290117 () Bool)

(assert (=> b!6956993 (= c!1290117 (is-Union!17058 lt!2478562))))

(assert (=> b!6956993 (= e!4183336 e!4183337)))

(declare-fun b!6956994 () Bool)

(declare-fun c!1290119 () Bool)

(assert (=> b!6956994 (= c!1290119 (is-ElementMatch!17058 lt!2478562))))

(assert (=> b!6956994 (= e!4183338 e!4183336)))

(assert (= (and d!2169663 c!1290118) b!6956991))

(assert (= (and d!2169663 (not c!1290118)) b!6956992))

(assert (= (and b!6956992 res!2838728) b!6956994))

(assert (= (and b!6956994 c!1290119) b!6956985))

(assert (= (and b!6956994 (not c!1290119)) b!6956993))

(assert (= (and b!6956993 c!1290117) b!6956989))

(assert (= (and b!6956993 (not c!1290117)) b!6956988))

(assert (= (and b!6956989 (not res!2838727)) b!6956984))

(assert (= (and b!6956988 c!1290120) b!6956986))

(assert (= (and b!6956988 (not c!1290120)) b!6956990))

(assert (= (and b!6956986 (not res!2838729)) b!6956987))

(assert (= (or b!6956987 b!6956990) bm!631786))

(assert (= (or b!6956991 b!6956986) bm!631787))

(declare-fun m!7654720 () Bool)

(assert (=> b!6956984 m!7654720))

(declare-fun m!7654722 () Bool)

(assert (=> b!6956989 m!7654722))

(declare-fun m!7654724 () Bool)

(assert (=> bm!631786 m!7654724))

(assert (=> bm!631787 m!7654696))

(assert (=> b!6956781 d!2169663))

(declare-fun d!2169669 () Bool)

(assert (=> d!2169669 (= (matchR!9168 lt!2478562 (_2!37212 lt!2478561)) (matchRSpec!4083 lt!2478562 (_2!37212 lt!2478561)))))

(declare-fun lt!2478602 () Unit!160784)

(assert (=> d!2169669 (= lt!2478602 (choose!51853 lt!2478562 (_2!37212 lt!2478561)))))

(assert (=> d!2169669 (validRegex!8764 lt!2478562)))

(assert (=> d!2169669 (= (mainMatchTheorem!4077 lt!2478562 (_2!37212 lt!2478561)) lt!2478602)))

(declare-fun bs!1858114 () Bool)

(assert (= bs!1858114 d!2169669))

(assert (=> bs!1858114 m!7654620))

(assert (=> bs!1858114 m!7654618))

(declare-fun m!7654726 () Bool)

(assert (=> bs!1858114 m!7654726))

(assert (=> bs!1858114 m!7654708))

(assert (=> b!6956781 d!2169669))

(declare-fun bs!1858115 () Bool)

(declare-fun b!6957020 () Bool)

(assert (= bs!1858115 (and b!6957020 b!6956990)))

(declare-fun lambda!396875 () Int)

(assert (=> bs!1858115 (not (= lambda!396875 lambda!396874))))

(declare-fun bs!1858116 () Bool)

(assert (= bs!1858116 (and b!6957020 b!6956780)))

(assert (=> bs!1858116 (not (= lambda!396875 lambda!396853))))

(declare-fun bs!1858117 () Bool)

(assert (= bs!1858117 (and b!6957020 b!6956987)))

(assert (=> bs!1858117 (= (and (= (_1!37212 lt!2478561) (_2!37212 lt!2478561)) (= (reg!17387 rInner!765) (reg!17387 lt!2478562)) (= rInner!765 lt!2478562)) (= lambda!396875 lambda!396873))))

(declare-fun bs!1858118 () Bool)

(assert (= bs!1858118 (and b!6957020 b!6956786)))

(assert (=> bs!1858118 (not (= lambda!396875 lambda!396855))))

(assert (=> bs!1858118 (= (and (= (_1!37212 lt!2478561) s!10388) (= (reg!17387 rInner!765) rInner!765) (= rInner!765 lt!2478562)) (= lambda!396875 lambda!396854))))

(assert (=> b!6957020 true))

(assert (=> b!6957020 true))

(declare-fun bs!1858119 () Bool)

(declare-fun b!6957023 () Bool)

(assert (= bs!1858119 (and b!6957023 b!6956990)))

(declare-fun lambda!396876 () Int)

(assert (=> bs!1858119 (= (and (= (_1!37212 lt!2478561) (_2!37212 lt!2478561)) (= (regOne!34628 rInner!765) (regOne!34628 lt!2478562)) (= (regTwo!34628 rInner!765) (regTwo!34628 lt!2478562))) (= lambda!396876 lambda!396874))))

(declare-fun bs!1858120 () Bool)

(assert (= bs!1858120 (and b!6957023 b!6956780)))

(assert (=> bs!1858120 (not (= lambda!396876 lambda!396853))))

(declare-fun bs!1858121 () Bool)

(assert (= bs!1858121 (and b!6957023 b!6956987)))

(assert (=> bs!1858121 (not (= lambda!396876 lambda!396873))))

(declare-fun bs!1858122 () Bool)

(assert (= bs!1858122 (and b!6957023 b!6957020)))

(assert (=> bs!1858122 (not (= lambda!396876 lambda!396875))))

(declare-fun bs!1858123 () Bool)

(assert (= bs!1858123 (and b!6957023 b!6956786)))

(assert (=> bs!1858123 (not (= lambda!396876 lambda!396855))))

(assert (=> bs!1858123 (not (= lambda!396876 lambda!396854))))

(assert (=> b!6957023 true))

(assert (=> b!6957023 true))

(declare-fun b!6957017 () Bool)

(declare-fun e!4183353 () Bool)

(assert (=> b!6957017 (= e!4183353 (matchRSpec!4083 (regTwo!34629 rInner!765) (_1!37212 lt!2478561)))))

(declare-fun b!6957019 () Bool)

(declare-fun res!2838748 () Bool)

(declare-fun e!4183352 () Bool)

(assert (=> b!6957019 (=> res!2838748 e!4183352)))

(declare-fun call!631796 () Bool)

(assert (=> b!6957019 (= res!2838748 call!631796)))

(declare-fun e!4183354 () Bool)

(assert (=> b!6957019 (= e!4183354 e!4183352)))

(declare-fun call!631795 () Bool)

(assert (=> b!6957020 (= e!4183352 call!631795)))

(declare-fun b!6957021 () Bool)

(declare-fun e!4183356 () Bool)

(assert (=> b!6957021 (= e!4183356 e!4183354)))

(declare-fun c!1290128 () Bool)

(assert (=> b!6957021 (= c!1290128 (is-Star!17058 rInner!765))))

(declare-fun b!6957018 () Bool)

(declare-fun e!4183355 () Bool)

(assert (=> b!6957018 (= e!4183355 (= (_1!37212 lt!2478561) (Cons!66687 (c!1290084 rInner!765) Nil!66687)))))

(declare-fun d!2169671 () Bool)

(declare-fun c!1290126 () Bool)

(assert (=> d!2169671 (= c!1290126 (is-EmptyExpr!17058 rInner!765))))

(declare-fun e!4183351 () Bool)

(assert (=> d!2169671 (= (matchRSpec!4083 rInner!765 (_1!37212 lt!2478561)) e!4183351)))

(declare-fun b!6957022 () Bool)

(assert (=> b!6957022 (= e!4183356 e!4183353)))

(declare-fun res!2838746 () Bool)

(assert (=> b!6957022 (= res!2838746 (matchRSpec!4083 (regOne!34629 rInner!765) (_1!37212 lt!2478561)))))

(assert (=> b!6957022 (=> res!2838746 e!4183353)))

(declare-fun bm!631790 () Bool)

(assert (=> bm!631790 (= call!631795 (Exists!4054 (ite c!1290128 lambda!396875 lambda!396876)))))

(assert (=> b!6957023 (= e!4183354 call!631795)))

(declare-fun bm!631791 () Bool)

(assert (=> bm!631791 (= call!631796 (isEmpty!38923 (_1!37212 lt!2478561)))))

(declare-fun b!6957024 () Bool)

(assert (=> b!6957024 (= e!4183351 call!631796)))

(declare-fun b!6957025 () Bool)

(declare-fun e!4183357 () Bool)

(assert (=> b!6957025 (= e!4183351 e!4183357)))

(declare-fun res!2838747 () Bool)

(assert (=> b!6957025 (= res!2838747 (not (is-EmptyLang!17058 rInner!765)))))

(assert (=> b!6957025 (=> (not res!2838747) (not e!4183357))))

(declare-fun b!6957026 () Bool)

(declare-fun c!1290125 () Bool)

(assert (=> b!6957026 (= c!1290125 (is-Union!17058 rInner!765))))

(assert (=> b!6957026 (= e!4183355 e!4183356)))

(declare-fun b!6957027 () Bool)

(declare-fun c!1290127 () Bool)

(assert (=> b!6957027 (= c!1290127 (is-ElementMatch!17058 rInner!765))))

(assert (=> b!6957027 (= e!4183357 e!4183355)))

(assert (= (and d!2169671 c!1290126) b!6957024))

(assert (= (and d!2169671 (not c!1290126)) b!6957025))

(assert (= (and b!6957025 res!2838747) b!6957027))

(assert (= (and b!6957027 c!1290127) b!6957018))

(assert (= (and b!6957027 (not c!1290127)) b!6957026))

(assert (= (and b!6957026 c!1290125) b!6957022))

(assert (= (and b!6957026 (not c!1290125)) b!6957021))

(assert (= (and b!6957022 (not res!2838746)) b!6957017))

(assert (= (and b!6957021 c!1290128) b!6957019))

(assert (= (and b!6957021 (not c!1290128)) b!6957023))

(assert (= (and b!6957019 (not res!2838748)) b!6957020))

(assert (= (or b!6957020 b!6957023) bm!631790))

(assert (= (or b!6957024 b!6957019) bm!631791))

(declare-fun m!7654728 () Bool)

(assert (=> b!6957017 m!7654728))

(declare-fun m!7654730 () Bool)

(assert (=> b!6957022 m!7654730))

(declare-fun m!7654732 () Bool)

(assert (=> bm!631790 m!7654732))

(declare-fun m!7654734 () Bool)

(assert (=> bm!631791 m!7654734))

(assert (=> b!6956781 d!2169671))

(declare-fun b!6957028 () Bool)

(declare-fun res!2838751 () Bool)

(declare-fun e!4183363 () Bool)

(assert (=> b!6957028 (=> res!2838751 e!4183363)))

(assert (=> b!6957028 (= res!2838751 (not (isEmpty!38923 (tail!13004 (_1!37212 lt!2478561)))))))

(declare-fun b!6957029 () Bool)

(declare-fun e!4183358 () Bool)

(assert (=> b!6957029 (= e!4183358 (= (head!13952 (_1!37212 lt!2478561)) (c!1290084 rInner!765)))))

(declare-fun b!6957030 () Bool)

(declare-fun e!4183360 () Bool)

(assert (=> b!6957030 (= e!4183360 (matchR!9168 (derivativeStep!5499 rInner!765 (head!13952 (_1!37212 lt!2478561))) (tail!13004 (_1!37212 lt!2478561))))))

(declare-fun b!6957031 () Bool)

(declare-fun e!4183361 () Bool)

(declare-fun e!4183362 () Bool)

(assert (=> b!6957031 (= e!4183361 e!4183362)))

(declare-fun res!2838755 () Bool)

(assert (=> b!6957031 (=> (not res!2838755) (not e!4183362))))

(declare-fun lt!2478603 () Bool)

(assert (=> b!6957031 (= res!2838755 (not lt!2478603))))

(declare-fun b!6957032 () Bool)

(declare-fun res!2838750 () Bool)

(assert (=> b!6957032 (=> res!2838750 e!4183361)))

(assert (=> b!6957032 (= res!2838750 e!4183358)))

(declare-fun res!2838752 () Bool)

(assert (=> b!6957032 (=> (not res!2838752) (not e!4183358))))

(assert (=> b!6957032 (= res!2838752 lt!2478603)))

(declare-fun b!6957033 () Bool)

(declare-fun res!2838756 () Bool)

(assert (=> b!6957033 (=> (not res!2838756) (not e!4183358))))

(declare-fun call!631797 () Bool)

(assert (=> b!6957033 (= res!2838756 (not call!631797))))

(declare-fun b!6957034 () Bool)

(declare-fun e!4183359 () Bool)

(assert (=> b!6957034 (= e!4183359 (not lt!2478603))))

(declare-fun b!6957035 () Bool)

(declare-fun e!4183364 () Bool)

(assert (=> b!6957035 (= e!4183364 e!4183359)))

(declare-fun c!1290130 () Bool)

(assert (=> b!6957035 (= c!1290130 (is-EmptyLang!17058 rInner!765))))

(declare-fun b!6957037 () Bool)

(assert (=> b!6957037 (= e!4183362 e!4183363)))

(declare-fun res!2838753 () Bool)

(assert (=> b!6957037 (=> res!2838753 e!4183363)))

(assert (=> b!6957037 (= res!2838753 call!631797)))

(declare-fun b!6957038 () Bool)

(assert (=> b!6957038 (= e!4183363 (not (= (head!13952 (_1!37212 lt!2478561)) (c!1290084 rInner!765))))))

(declare-fun b!6957039 () Bool)

(declare-fun res!2838754 () Bool)

(assert (=> b!6957039 (=> (not res!2838754) (not e!4183358))))

(assert (=> b!6957039 (= res!2838754 (isEmpty!38923 (tail!13004 (_1!37212 lt!2478561))))))

(declare-fun b!6957040 () Bool)

(assert (=> b!6957040 (= e!4183360 (nullable!6871 rInner!765))))

(declare-fun b!6957041 () Bool)

(declare-fun res!2838749 () Bool)

(assert (=> b!6957041 (=> res!2838749 e!4183361)))

(assert (=> b!6957041 (= res!2838749 (not (is-ElementMatch!17058 rInner!765)))))

(assert (=> b!6957041 (= e!4183359 e!4183361)))

(declare-fun bm!631792 () Bool)

(assert (=> bm!631792 (= call!631797 (isEmpty!38923 (_1!37212 lt!2478561)))))

(declare-fun b!6957036 () Bool)

(assert (=> b!6957036 (= e!4183364 (= lt!2478603 call!631797))))

(declare-fun d!2169673 () Bool)

(assert (=> d!2169673 e!4183364))

(declare-fun c!1290131 () Bool)

(assert (=> d!2169673 (= c!1290131 (is-EmptyExpr!17058 rInner!765))))

(assert (=> d!2169673 (= lt!2478603 e!4183360)))

(declare-fun c!1290129 () Bool)

(assert (=> d!2169673 (= c!1290129 (isEmpty!38923 (_1!37212 lt!2478561)))))

(assert (=> d!2169673 (validRegex!8764 rInner!765)))

(assert (=> d!2169673 (= (matchR!9168 rInner!765 (_1!37212 lt!2478561)) lt!2478603)))

(assert (= (and d!2169673 c!1290129) b!6957040))

(assert (= (and d!2169673 (not c!1290129)) b!6957030))

(assert (= (and d!2169673 c!1290131) b!6957036))

(assert (= (and d!2169673 (not c!1290131)) b!6957035))

(assert (= (and b!6957035 c!1290130) b!6957034))

(assert (= (and b!6957035 (not c!1290130)) b!6957041))

(assert (= (and b!6957041 (not res!2838749)) b!6957032))

(assert (= (and b!6957032 res!2838752) b!6957033))

(assert (= (and b!6957033 res!2838756) b!6957039))

(assert (= (and b!6957039 res!2838754) b!6957029))

(assert (= (and b!6957032 (not res!2838750)) b!6957031))

(assert (= (and b!6957031 res!2838755) b!6957037))

(assert (= (and b!6957037 (not res!2838753)) b!6957028))

(assert (= (and b!6957028 (not res!2838751)) b!6957038))

(assert (= (or b!6957036 b!6957033 b!6957037) bm!631792))

(assert (=> bm!631792 m!7654734))

(assert (=> b!6957040 m!7654610))

(declare-fun m!7654736 () Bool)

(assert (=> b!6957038 m!7654736))

(assert (=> b!6957030 m!7654736))

(assert (=> b!6957030 m!7654736))

(declare-fun m!7654738 () Bool)

(assert (=> b!6957030 m!7654738))

(declare-fun m!7654740 () Bool)

(assert (=> b!6957030 m!7654740))

(assert (=> b!6957030 m!7654738))

(assert (=> b!6957030 m!7654740))

(declare-fun m!7654742 () Bool)

(assert (=> b!6957030 m!7654742))

(assert (=> d!2169673 m!7654734))

(assert (=> d!2169673 m!7654608))

(assert (=> b!6957039 m!7654740))

(assert (=> b!6957039 m!7654740))

(declare-fun m!7654744 () Bool)

(assert (=> b!6957039 m!7654744))

(assert (=> b!6957028 m!7654740))

(assert (=> b!6957028 m!7654740))

(assert (=> b!6957028 m!7654744))

(assert (=> b!6957029 m!7654736))

(assert (=> b!6956781 d!2169673))

(declare-fun b!6957064 () Bool)

(declare-fun e!4183376 () List!66811)

(assert (=> b!6957064 (= e!4183376 (_2!37212 lt!2478561))))

(declare-fun b!6957067 () Bool)

(declare-fun e!4183377 () Bool)

(declare-fun lt!2478607 () List!66811)

(assert (=> b!6957067 (= e!4183377 (or (not (= (_2!37212 lt!2478561) Nil!66687)) (= lt!2478607 (_1!37212 lt!2478561))))))

(declare-fun b!6957065 () Bool)

(assert (=> b!6957065 (= e!4183376 (Cons!66687 (h!73135 (_1!37212 lt!2478561)) (++!15087 (t!380554 (_1!37212 lt!2478561)) (_2!37212 lt!2478561))))))

(declare-fun b!6957066 () Bool)

(declare-fun res!2838769 () Bool)

(assert (=> b!6957066 (=> (not res!2838769) (not e!4183377))))

(declare-fun size!40850 (List!66811) Int)

(assert (=> b!6957066 (= res!2838769 (= (size!40850 lt!2478607) (+ (size!40850 (_1!37212 lt!2478561)) (size!40850 (_2!37212 lt!2478561)))))))

(declare-fun d!2169675 () Bool)

(assert (=> d!2169675 e!4183377))

(declare-fun res!2838770 () Bool)

(assert (=> d!2169675 (=> (not res!2838770) (not e!4183377))))

(declare-fun content!13153 (List!66811) (Set C!34386))

(assert (=> d!2169675 (= res!2838770 (= (content!13153 lt!2478607) (set.union (content!13153 (_1!37212 lt!2478561)) (content!13153 (_2!37212 lt!2478561)))))))

(assert (=> d!2169675 (= lt!2478607 e!4183376)))

(declare-fun c!1290137 () Bool)

(assert (=> d!2169675 (= c!1290137 (is-Nil!66687 (_1!37212 lt!2478561)))))

(assert (=> d!2169675 (= (++!15087 (_1!37212 lt!2478561) (_2!37212 lt!2478561)) lt!2478607)))

(assert (= (and d!2169675 c!1290137) b!6957064))

(assert (= (and d!2169675 (not c!1290137)) b!6957065))

(assert (= (and d!2169675 res!2838770) b!6957066))

(assert (= (and b!6957066 res!2838769) b!6957067))

(declare-fun m!7654746 () Bool)

(assert (=> b!6957065 m!7654746))

(declare-fun m!7654748 () Bool)

(assert (=> b!6957066 m!7654748))

(declare-fun m!7654750 () Bool)

(assert (=> b!6957066 m!7654750))

(declare-fun m!7654752 () Bool)

(assert (=> b!6957066 m!7654752))

(declare-fun m!7654754 () Bool)

(assert (=> d!2169675 m!7654754))

(declare-fun m!7654756 () Bool)

(assert (=> d!2169675 m!7654756))

(declare-fun m!7654758 () Bool)

(assert (=> d!2169675 m!7654758))

(assert (=> b!6956782 d!2169675))

(declare-fun d!2169677 () Bool)

(declare-fun lt!2478610 () tuple2!67818)

(assert (=> d!2169677 (dynLambda!26598 lambda!396853 lt!2478610)))

(declare-fun choose!51856 (Int) tuple2!67818)

(assert (=> d!2169677 (= lt!2478610 (choose!51856 lambda!396853))))

(assert (=> d!2169677 (Exists!4054 lambda!396853)))

(assert (=> d!2169677 (= (pickWitness!381 lambda!396853) lt!2478610)))

(declare-fun b_lambda!260477 () Bool)

(assert (=> (not b_lambda!260477) (not d!2169677)))

(declare-fun bs!1858124 () Bool)

(assert (= bs!1858124 d!2169677))

(declare-fun m!7654774 () Bool)

(assert (=> bs!1858124 m!7654774))

(declare-fun m!7654776 () Bool)

(assert (=> bs!1858124 m!7654776))

(assert (=> bs!1858124 m!7654630))

(assert (=> b!6956782 d!2169677))

(declare-fun d!2169681 () Bool)

(declare-fun nullableFct!2581 (Regex!17058) Bool)

(assert (=> d!2169681 (= (nullable!6871 rInner!765) (nullableFct!2581 rInner!765))))

(declare-fun bs!1858125 () Bool)

(assert (= bs!1858125 d!2169681))

(declare-fun m!7654778 () Bool)

(assert (=> bs!1858125 m!7654778))

(assert (=> b!6956784 d!2169681))

(declare-fun e!4183387 () Bool)

(assert (=> b!6956787 (= tp!1917794 e!4183387)))

(declare-fun b!6957093 () Bool)

(declare-fun tp!1917832 () Bool)

(declare-fun tp!1917830 () Bool)

(assert (=> b!6957093 (= e!4183387 (and tp!1917832 tp!1917830))))

(declare-fun b!6957094 () Bool)

(declare-fun tp!1917828 () Bool)

(assert (=> b!6957094 (= e!4183387 tp!1917828)))

(declare-fun b!6957092 () Bool)

(assert (=> b!6957092 (= e!4183387 tp_is_empty!43341)))

(declare-fun b!6957095 () Bool)

(declare-fun tp!1917829 () Bool)

(declare-fun tp!1917831 () Bool)

(assert (=> b!6957095 (= e!4183387 (and tp!1917829 tp!1917831))))

(assert (= (and b!6956787 (is-ElementMatch!17058 (regOne!34628 rInner!765))) b!6957092))

(assert (= (and b!6956787 (is-Concat!25903 (regOne!34628 rInner!765))) b!6957093))

(assert (= (and b!6956787 (is-Star!17058 (regOne!34628 rInner!765))) b!6957094))

(assert (= (and b!6956787 (is-Union!17058 (regOne!34628 rInner!765))) b!6957095))

(declare-fun e!4183388 () Bool)

(assert (=> b!6956787 (= tp!1917799 e!4183388)))

(declare-fun b!6957097 () Bool)

(declare-fun tp!1917837 () Bool)

(declare-fun tp!1917835 () Bool)

(assert (=> b!6957097 (= e!4183388 (and tp!1917837 tp!1917835))))

(declare-fun b!6957098 () Bool)

(declare-fun tp!1917833 () Bool)

(assert (=> b!6957098 (= e!4183388 tp!1917833)))

(declare-fun b!6957096 () Bool)

(assert (=> b!6957096 (= e!4183388 tp_is_empty!43341)))

(declare-fun b!6957099 () Bool)

(declare-fun tp!1917834 () Bool)

(declare-fun tp!1917836 () Bool)

(assert (=> b!6957099 (= e!4183388 (and tp!1917834 tp!1917836))))

(assert (= (and b!6956787 (is-ElementMatch!17058 (regTwo!34628 rInner!765))) b!6957096))

(assert (= (and b!6956787 (is-Concat!25903 (regTwo!34628 rInner!765))) b!6957097))

(assert (= (and b!6956787 (is-Star!17058 (regTwo!34628 rInner!765))) b!6957098))

(assert (= (and b!6956787 (is-Union!17058 (regTwo!34628 rInner!765))) b!6957099))

(declare-fun b!6957104 () Bool)

(declare-fun e!4183391 () Bool)

(declare-fun tp!1917840 () Bool)

(assert (=> b!6957104 (= e!4183391 (and tp_is_empty!43341 tp!1917840))))

(assert (=> b!6956778 (= tp!1917796 e!4183391)))

(assert (= (and b!6956778 (is-Cons!66687 (t!380554 s!10388))) b!6957104))

(declare-fun e!4183392 () Bool)

(assert (=> b!6956779 (= tp!1917798 e!4183392)))

(declare-fun b!6957106 () Bool)

(declare-fun tp!1917845 () Bool)

(declare-fun tp!1917843 () Bool)

(assert (=> b!6957106 (= e!4183392 (and tp!1917845 tp!1917843))))

(declare-fun b!6957107 () Bool)

(declare-fun tp!1917841 () Bool)

(assert (=> b!6957107 (= e!4183392 tp!1917841)))

(declare-fun b!6957105 () Bool)

(assert (=> b!6957105 (= e!4183392 tp_is_empty!43341)))

(declare-fun b!6957108 () Bool)

(declare-fun tp!1917842 () Bool)

(declare-fun tp!1917844 () Bool)

(assert (=> b!6957108 (= e!4183392 (and tp!1917842 tp!1917844))))

(assert (= (and b!6956779 (is-ElementMatch!17058 (reg!17387 rInner!765))) b!6957105))

(assert (= (and b!6956779 (is-Concat!25903 (reg!17387 rInner!765))) b!6957106))

(assert (= (and b!6956779 (is-Star!17058 (reg!17387 rInner!765))) b!6957107))

(assert (= (and b!6956779 (is-Union!17058 (reg!17387 rInner!765))) b!6957108))

(declare-fun e!4183393 () Bool)

(assert (=> b!6956785 (= tp!1917795 e!4183393)))

(declare-fun b!6957110 () Bool)

(declare-fun tp!1917850 () Bool)

(declare-fun tp!1917848 () Bool)

(assert (=> b!6957110 (= e!4183393 (and tp!1917850 tp!1917848))))

(declare-fun b!6957111 () Bool)

(declare-fun tp!1917846 () Bool)

(assert (=> b!6957111 (= e!4183393 tp!1917846)))

(declare-fun b!6957109 () Bool)

(assert (=> b!6957109 (= e!4183393 tp_is_empty!43341)))

(declare-fun b!6957112 () Bool)

(declare-fun tp!1917847 () Bool)

(declare-fun tp!1917849 () Bool)

(assert (=> b!6957112 (= e!4183393 (and tp!1917847 tp!1917849))))

(assert (= (and b!6956785 (is-ElementMatch!17058 (regOne!34629 rInner!765))) b!6957109))

(assert (= (and b!6956785 (is-Concat!25903 (regOne!34629 rInner!765))) b!6957110))

(assert (= (and b!6956785 (is-Star!17058 (regOne!34629 rInner!765))) b!6957111))

(assert (= (and b!6956785 (is-Union!17058 (regOne!34629 rInner!765))) b!6957112))

(declare-fun e!4183394 () Bool)

(assert (=> b!6956785 (= tp!1917797 e!4183394)))

(declare-fun b!6957114 () Bool)

(declare-fun tp!1917855 () Bool)

(declare-fun tp!1917853 () Bool)

(assert (=> b!6957114 (= e!4183394 (and tp!1917855 tp!1917853))))

(declare-fun b!6957115 () Bool)

(declare-fun tp!1917851 () Bool)

(assert (=> b!6957115 (= e!4183394 tp!1917851)))

(declare-fun b!6957113 () Bool)

(assert (=> b!6957113 (= e!4183394 tp_is_empty!43341)))

(declare-fun b!6957116 () Bool)

(declare-fun tp!1917852 () Bool)

(declare-fun tp!1917854 () Bool)

(assert (=> b!6957116 (= e!4183394 (and tp!1917852 tp!1917854))))

(assert (= (and b!6956785 (is-ElementMatch!17058 (regTwo!34629 rInner!765))) b!6957113))

(assert (= (and b!6956785 (is-Concat!25903 (regTwo!34629 rInner!765))) b!6957114))

(assert (= (and b!6956785 (is-Star!17058 (regTwo!34629 rInner!765))) b!6957115))

(assert (= (and b!6956785 (is-Union!17058 (regTwo!34629 rInner!765))) b!6957116))

(declare-fun b_lambda!260479 () Bool)

(assert (= b_lambda!260475 (or b!6956786 b_lambda!260479)))

(declare-fun bs!1858126 () Bool)

(declare-fun d!2169685 () Bool)

(assert (= bs!1858126 (and d!2169685 b!6956786)))

(declare-fun res!2838779 () Bool)

(declare-fun e!4183395 () Bool)

(assert (=> bs!1858126 (=> (not res!2838779) (not e!4183395))))

(assert (=> bs!1858126 (= res!2838779 (= (++!15087 (_1!37212 lt!2478561) (_2!37212 lt!2478561)) s!10388))))

(assert (=> bs!1858126 (= (dynLambda!26598 lambda!396854 lt!2478561) e!4183395)))

(declare-fun b!6957117 () Bool)

(declare-fun res!2838780 () Bool)

(assert (=> b!6957117 (=> (not res!2838780) (not e!4183395))))

(assert (=> b!6957117 (= res!2838780 (not (isEmpty!38923 (_1!37212 lt!2478561))))))

(declare-fun b!6957118 () Bool)

(declare-fun res!2838781 () Bool)

(assert (=> b!6957118 (=> (not res!2838781) (not e!4183395))))

(assert (=> b!6957118 (= res!2838781 (matchRSpec!4083 rInner!765 (_1!37212 lt!2478561)))))

(declare-fun b!6957119 () Bool)

(assert (=> b!6957119 (= e!4183395 (matchRSpec!4083 lt!2478562 (_2!37212 lt!2478561)))))

(assert (= (and bs!1858126 res!2838779) b!6957117))

(assert (= (and b!6957117 res!2838780) b!6957118))

(assert (= (and b!6957118 res!2838781) b!6957119))

(assert (=> bs!1858126 m!7654632))

(assert (=> b!6957117 m!7654734))

(assert (=> b!6957118 m!7654626))

(assert (=> b!6957119 m!7654618))

(assert (=> d!2169653 d!2169685))

(declare-fun b_lambda!260481 () Bool)

(assert (= b_lambda!260477 (or b!6956780 b_lambda!260481)))

(declare-fun bs!1858127 () Bool)

(declare-fun d!2169687 () Bool)

(assert (= bs!1858127 (and d!2169687 b!6956780)))

(declare-fun res!2838782 () Bool)

(declare-fun e!4183396 () Bool)

(assert (=> bs!1858127 (=> (not res!2838782) (not e!4183396))))

(assert (=> bs!1858127 (= res!2838782 (= (++!15087 (_1!37212 lt!2478610) (_2!37212 lt!2478610)) s!10388))))

(assert (=> bs!1858127 (= (dynLambda!26598 lambda!396853 lt!2478610) e!4183396)))

(declare-fun b!6957120 () Bool)

(declare-fun res!2838783 () Bool)

(assert (=> b!6957120 (=> (not res!2838783) (not e!4183396))))

(assert (=> b!6957120 (= res!2838783 (matchR!9168 rInner!765 (_1!37212 lt!2478610)))))

(declare-fun b!6957121 () Bool)

(assert (=> b!6957121 (= e!4183396 (matchR!9168 (Star!17058 rInner!765) (_2!37212 lt!2478610)))))

(assert (= (and bs!1858127 res!2838782) b!6957120))

(assert (= (and b!6957120 res!2838783) b!6957121))

(declare-fun m!7654792 () Bool)

(assert (=> bs!1858127 m!7654792))

(declare-fun m!7654794 () Bool)

(assert (=> b!6957120 m!7654794))

(declare-fun m!7654796 () Bool)

(assert (=> b!6957121 m!7654796))

(assert (=> d!2169677 d!2169687))

(push 1)

(assert (not bm!631769))

(assert (not b!6956932))

(assert (not b!6957039))

(assert (not b!6957095))

(assert (not b!6957115))

(assert (not b!6956944))

(assert (not d!2169669))

(assert (not b!6956989))

(assert (not b!6957106))

(assert (not b!6956933))

(assert (not b!6957097))

(assert (not b!6957120))

(assert (not d!2169651))

(assert (not b!6956875))

(assert (not b!6956934))

(assert (not b_lambda!260481))

(assert (not bm!631790))

(assert (not b!6957099))

(assert tp_is_empty!43341)

(assert (not b!6957118))

(assert (not d!2169677))

(assert (not bm!631787))

(assert (not b!6957028))

(assert (not bm!631768))

(assert (not d!2169673))

(assert (not b!6957110))

(assert (not b!6957116))

(assert (not b!6957093))

(assert (not d!2169643))

(assert (not b!6957121))

(assert (not d!2169681))

(assert (not bm!631786))

(assert (not bm!631781))

(assert (not b!6957022))

(assert (not b!6957065))

(assert (not b!6957066))

(assert (not b!6957117))

(assert (not b!6957114))

(assert (not bm!631791))

(assert (not b!6957119))

(assert (not b!6957112))

(assert (not b!6957098))

(assert (not bs!1858127))

(assert (not b!6957038))

(assert (not bm!631792))

(assert (not d!2169655))

(assert (not b!6956984))

(assert (not b_lambda!260479))

(assert (not d!2169653))

(assert (not b!6957104))

(assert (not b!6957017))

(assert (not d!2169649))

(assert (not b!6956942))

(assert (not d!2169675))

(assert (not d!2169661))

(assert (not bs!1858126))

(assert (not b!6957040))

(assert (not b!6957111))

(assert (not b!6957094))

(assert (not b!6957108))

(assert (not b!6957029))

(assert (not b!6956943))

(assert (not b!6957107))

(assert (not b!6957030))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

