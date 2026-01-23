; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665206 () Bool)

(assert start!665206)

(declare-fun b!6910867 () Bool)

(assert (=> b!6910867 true))

(assert (=> b!6910867 true))

(assert (=> b!6910867 true))

(declare-fun lambda!392718 () Int)

(declare-fun lambda!392717 () Int)

(assert (=> b!6910867 (not (= lambda!392718 lambda!392717))))

(assert (=> b!6910867 true))

(assert (=> b!6910867 true))

(assert (=> b!6910867 true))

(declare-fun bs!1844735 () Bool)

(declare-fun b!6910862 () Bool)

(assert (= bs!1844735 (and b!6910862 b!6910867)))

(declare-datatypes ((C!34048 0))(
  ( (C!34049 (val!26726 Int)) )
))
(declare-datatypes ((Regex!16889 0))(
  ( (ElementMatch!16889 (c!1283655 C!34048)) (Concat!25734 (regOne!34290 Regex!16889) (regTwo!34290 Regex!16889)) (EmptyExpr!16889) (Star!16889 (reg!17218 Regex!16889)) (EmptyLang!16889) (Union!16889 (regOne!34291 Regex!16889) (regTwo!34291 Regex!16889)) )
))
(declare-fun r1!6342 () Regex!16889)

(declare-fun r3!135 () Regex!16889)

(declare-fun lt!2468559 () Regex!16889)

(declare-datatypes ((List!66646 0))(
  ( (Nil!66522) (Cons!66522 (h!72970 C!34048) (t!380389 List!66646)) )
))
(declare-fun s!14361 () List!66646)

(declare-datatypes ((tuple2!67512 0))(
  ( (tuple2!67513 (_1!37059 List!66646) (_2!37059 List!66646)) )
))
(declare-fun lt!2468558 () tuple2!67512)

(declare-fun lambda!392719 () Int)

(declare-fun r2!6280 () Regex!16889)

(assert (=> bs!1844735 (= (and (= (_2!37059 lt!2468558) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468559)) (= lambda!392719 lambda!392717))))

(assert (=> bs!1844735 (not (= lambda!392719 lambda!392718))))

(assert (=> b!6910862 true))

(assert (=> b!6910862 true))

(assert (=> b!6910862 true))

(declare-fun lambda!392720 () Int)

(assert (=> bs!1844735 (not (= lambda!392720 lambda!392717))))

(assert (=> bs!1844735 (= (and (= (_2!37059 lt!2468558) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468559)) (= lambda!392720 lambda!392718))))

(assert (=> b!6910862 (not (= lambda!392720 lambda!392719))))

(assert (=> b!6910862 true))

(assert (=> b!6910862 true))

(assert (=> b!6910862 true))

(declare-fun b!6910853 () Bool)

(declare-fun e!4160790 () Bool)

(declare-fun e!4160796 () Bool)

(assert (=> b!6910853 (= e!4160790 (not e!4160796))))

(declare-fun res!2818355 () Bool)

(assert (=> b!6910853 (=> res!2818355 e!4160796)))

(declare-fun lt!2468554 () Bool)

(assert (=> b!6910853 (= res!2818355 lt!2468554)))

(declare-fun lt!2468563 () Regex!16889)

(declare-fun matchR!9034 (Regex!16889 List!66646) Bool)

(declare-fun matchRSpec!3952 (Regex!16889 List!66646) Bool)

(assert (=> b!6910853 (= (matchR!9034 lt!2468563 s!14361) (matchRSpec!3952 lt!2468563 s!14361))))

(declare-datatypes ((Unit!160514 0))(
  ( (Unit!160515) )
))
(declare-fun lt!2468551 () Unit!160514)

(declare-fun mainMatchTheorem!3952 (Regex!16889 List!66646) Unit!160514)

(assert (=> b!6910853 (= lt!2468551 (mainMatchTheorem!3952 lt!2468563 s!14361))))

(declare-fun lt!2468557 () Regex!16889)

(assert (=> b!6910853 (= lt!2468554 (matchRSpec!3952 lt!2468557 s!14361))))

(assert (=> b!6910853 (= lt!2468554 (matchR!9034 lt!2468557 s!14361))))

(declare-fun lt!2468565 () Unit!160514)

(assert (=> b!6910853 (= lt!2468565 (mainMatchTheorem!3952 lt!2468557 s!14361))))

(assert (=> b!6910853 (= lt!2468563 (Concat!25734 r1!6342 lt!2468559))))

(assert (=> b!6910853 (= lt!2468559 (Concat!25734 r2!6280 r3!135))))

(assert (=> b!6910853 (= lt!2468557 (Concat!25734 (Concat!25734 r1!6342 r2!6280) r3!135))))

(declare-fun b!6910854 () Bool)

(declare-fun e!4160791 () Bool)

(declare-fun lt!2468561 () tuple2!67512)

(assert (=> b!6910854 (= e!4160791 (matchR!9034 r3!135 (_2!37059 lt!2468561)))))

(declare-fun b!6910855 () Bool)

(declare-fun e!4160795 () Bool)

(declare-fun tp!1903117 () Bool)

(assert (=> b!6910855 (= e!4160795 tp!1903117)))

(declare-fun b!6910856 () Bool)

(declare-fun tp!1903122 () Bool)

(declare-fun tp!1903121 () Bool)

(assert (=> b!6910856 (= e!4160795 (and tp!1903122 tp!1903121))))

(declare-fun b!6910858 () Bool)

(declare-fun res!2818359 () Bool)

(declare-fun e!4160797 () Bool)

(assert (=> b!6910858 (=> res!2818359 e!4160797)))

(assert (=> b!6910858 (= res!2818359 (not (matchR!9034 lt!2468559 (_2!37059 lt!2468558))))))

(declare-fun b!6910859 () Bool)

(declare-fun e!4160794 () Bool)

(declare-fun tp!1903115 () Bool)

(declare-fun tp!1903126 () Bool)

(assert (=> b!6910859 (= e!4160794 (and tp!1903115 tp!1903126))))

(declare-fun b!6910860 () Bool)

(declare-fun tp!1903112 () Bool)

(assert (=> b!6910860 (= e!4160794 tp!1903112)))

(declare-fun b!6910861 () Bool)

(declare-fun res!2818353 () Bool)

(assert (=> b!6910861 (=> (not res!2818353) (not e!4160790))))

(declare-fun validRegex!8597 (Regex!16889) Bool)

(assert (=> b!6910861 (= res!2818353 (validRegex!8597 r3!135))))

(assert (=> b!6910862 (= e!4160797 e!4160791)))

(declare-fun res!2818356 () Bool)

(assert (=> b!6910862 (=> res!2818356 e!4160791)))

(assert (=> b!6910862 (= res!2818356 (not (matchR!9034 r2!6280 (_1!37059 lt!2468561))))))

(declare-datatypes ((Option!16668 0))(
  ( (None!16667) (Some!16667 (v!52939 tuple2!67512)) )
))
(declare-fun lt!2468555 () Option!16668)

(declare-fun get!23284 (Option!16668) tuple2!67512)

(assert (=> b!6910862 (= lt!2468561 (get!23284 lt!2468555))))

(declare-fun Exists!3897 (Int) Bool)

(assert (=> b!6910862 (= (Exists!3897 lambda!392719) (Exists!3897 lambda!392720))))

(declare-fun lt!2468566 () Unit!160514)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2370 (Regex!16889 Regex!16889 List!66646) Unit!160514)

(assert (=> b!6910862 (= lt!2468566 (lemmaExistCutMatchRandMatchRSpecEquivalent!2370 r2!6280 r3!135 (_2!37059 lt!2468558)))))

(declare-fun isDefined!13371 (Option!16668) Bool)

(assert (=> b!6910862 (= (isDefined!13371 lt!2468555) (Exists!3897 lambda!392719))))

(declare-fun findConcatSeparation!3082 (Regex!16889 Regex!16889 List!66646 List!66646 List!66646) Option!16668)

(assert (=> b!6910862 (= lt!2468555 (findConcatSeparation!3082 r2!6280 r3!135 Nil!66522 (_2!37059 lt!2468558) (_2!37059 lt!2468558)))))

(declare-fun lt!2468553 () Unit!160514)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2844 (Regex!16889 Regex!16889 List!66646) Unit!160514)

(assert (=> b!6910862 (= lt!2468553 (lemmaFindConcatSeparationEquivalentToExists!2844 r2!6280 r3!135 (_2!37059 lt!2468558)))))

(assert (=> b!6910862 (matchRSpec!3952 lt!2468559 (_2!37059 lt!2468558))))

(declare-fun lt!2468562 () Unit!160514)

(assert (=> b!6910862 (= lt!2468562 (mainMatchTheorem!3952 lt!2468559 (_2!37059 lt!2468558)))))

(declare-fun b!6910863 () Bool)

(declare-fun e!4160798 () Bool)

(declare-fun tp!1903119 () Bool)

(declare-fun tp!1903125 () Bool)

(assert (=> b!6910863 (= e!4160798 (and tp!1903119 tp!1903125))))

(declare-fun b!6910864 () Bool)

(declare-fun tp!1903123 () Bool)

(assert (=> b!6910864 (= e!4160798 tp!1903123)))

(declare-fun b!6910865 () Bool)

(declare-fun e!4160793 () Bool)

(assert (=> b!6910865 (= e!4160796 e!4160793)))

(declare-fun res!2818354 () Bool)

(assert (=> b!6910865 (=> res!2818354 e!4160793)))

(declare-fun lt!2468564 () Option!16668)

(assert (=> b!6910865 (= res!2818354 (not (isDefined!13371 lt!2468564)))))

(assert (=> b!6910865 (= lt!2468564 (findConcatSeparation!3082 r1!6342 lt!2468559 Nil!66522 s!14361 s!14361))))

(declare-fun b!6910866 () Bool)

(declare-fun tp!1903124 () Bool)

(declare-fun tp!1903113 () Bool)

(assert (=> b!6910866 (= e!4160795 (and tp!1903124 tp!1903113))))

(assert (=> b!6910867 (= e!4160793 e!4160797)))

(declare-fun res!2818358 () Bool)

(assert (=> b!6910867 (=> res!2818358 e!4160797)))

(declare-fun lt!2468552 () Bool)

(assert (=> b!6910867 (= res!2818358 (not lt!2468552))))

(assert (=> b!6910867 (= lt!2468552 (matchRSpec!3952 r1!6342 (_1!37059 lt!2468558)))))

(assert (=> b!6910867 (= lt!2468552 (matchR!9034 r1!6342 (_1!37059 lt!2468558)))))

(declare-fun lt!2468560 () Unit!160514)

(assert (=> b!6910867 (= lt!2468560 (mainMatchTheorem!3952 r1!6342 (_1!37059 lt!2468558)))))

(assert (=> b!6910867 (= lt!2468558 (get!23284 lt!2468564))))

(assert (=> b!6910867 (= (Exists!3897 lambda!392717) (Exists!3897 lambda!392718))))

(declare-fun lt!2468556 () Unit!160514)

(assert (=> b!6910867 (= lt!2468556 (lemmaExistCutMatchRandMatchRSpecEquivalent!2370 r1!6342 lt!2468559 s!14361))))

(assert (=> b!6910867 (Exists!3897 lambda!392717)))

(declare-fun lt!2468567 () Unit!160514)

(assert (=> b!6910867 (= lt!2468567 (lemmaFindConcatSeparationEquivalentToExists!2844 r1!6342 lt!2468559 s!14361))))

(declare-fun b!6910868 () Bool)

(declare-fun tp!1903120 () Bool)

(declare-fun tp!1903116 () Bool)

(assert (=> b!6910868 (= e!4160798 (and tp!1903120 tp!1903116))))

(declare-fun b!6910869 () Bool)

(declare-fun tp!1903127 () Bool)

(declare-fun tp!1903114 () Bool)

(assert (=> b!6910869 (= e!4160794 (and tp!1903127 tp!1903114))))

(declare-fun b!6910870 () Bool)

(declare-fun tp_is_empty!43003 () Bool)

(assert (=> b!6910870 (= e!4160798 tp_is_empty!43003)))

(declare-fun b!6910871 () Bool)

(assert (=> b!6910871 (= e!4160795 tp_is_empty!43003)))

(declare-fun b!6910857 () Bool)

(declare-fun res!2818357 () Bool)

(assert (=> b!6910857 (=> (not res!2818357) (not e!4160790))))

(assert (=> b!6910857 (= res!2818357 (validRegex!8597 r2!6280))))

(declare-fun res!2818360 () Bool)

(assert (=> start!665206 (=> (not res!2818360) (not e!4160790))))

(assert (=> start!665206 (= res!2818360 (validRegex!8597 r1!6342))))

(assert (=> start!665206 e!4160790))

(assert (=> start!665206 e!4160798))

(assert (=> start!665206 e!4160795))

(assert (=> start!665206 e!4160794))

(declare-fun e!4160792 () Bool)

(assert (=> start!665206 e!4160792))

(declare-fun b!6910872 () Bool)

(declare-fun tp!1903118 () Bool)

(assert (=> b!6910872 (= e!4160792 (and tp_is_empty!43003 tp!1903118))))

(declare-fun b!6910873 () Bool)

(assert (=> b!6910873 (= e!4160794 tp_is_empty!43003)))

(assert (= (and start!665206 res!2818360) b!6910857))

(assert (= (and b!6910857 res!2818357) b!6910861))

(assert (= (and b!6910861 res!2818353) b!6910853))

(assert (= (and b!6910853 (not res!2818355)) b!6910865))

(assert (= (and b!6910865 (not res!2818354)) b!6910867))

(assert (= (and b!6910867 (not res!2818358)) b!6910858))

(assert (= (and b!6910858 (not res!2818359)) b!6910862))

(assert (= (and b!6910862 (not res!2818356)) b!6910854))

(get-info :version)

(assert (= (and start!665206 ((_ is ElementMatch!16889) r1!6342)) b!6910870))

(assert (= (and start!665206 ((_ is Concat!25734) r1!6342)) b!6910863))

(assert (= (and start!665206 ((_ is Star!16889) r1!6342)) b!6910864))

(assert (= (and start!665206 ((_ is Union!16889) r1!6342)) b!6910868))

(assert (= (and start!665206 ((_ is ElementMatch!16889) r2!6280)) b!6910871))

(assert (= (and start!665206 ((_ is Concat!25734) r2!6280)) b!6910866))

(assert (= (and start!665206 ((_ is Star!16889) r2!6280)) b!6910855))

(assert (= (and start!665206 ((_ is Union!16889) r2!6280)) b!6910856))

(assert (= (and start!665206 ((_ is ElementMatch!16889) r3!135)) b!6910873))

(assert (= (and start!665206 ((_ is Concat!25734) r3!135)) b!6910859))

(assert (= (and start!665206 ((_ is Star!16889) r3!135)) b!6910860))

(assert (= (and start!665206 ((_ is Union!16889) r3!135)) b!6910869))

(assert (= (and start!665206 ((_ is Cons!66522) s!14361)) b!6910872))

(declare-fun m!7625426 () Bool)

(assert (=> b!6910853 m!7625426))

(declare-fun m!7625428 () Bool)

(assert (=> b!6910853 m!7625428))

(declare-fun m!7625430 () Bool)

(assert (=> b!6910853 m!7625430))

(declare-fun m!7625432 () Bool)

(assert (=> b!6910853 m!7625432))

(declare-fun m!7625434 () Bool)

(assert (=> b!6910853 m!7625434))

(declare-fun m!7625436 () Bool)

(assert (=> b!6910853 m!7625436))

(declare-fun m!7625438 () Bool)

(assert (=> b!6910854 m!7625438))

(declare-fun m!7625440 () Bool)

(assert (=> b!6910862 m!7625440))

(declare-fun m!7625442 () Bool)

(assert (=> b!6910862 m!7625442))

(declare-fun m!7625444 () Bool)

(assert (=> b!6910862 m!7625444))

(declare-fun m!7625446 () Bool)

(assert (=> b!6910862 m!7625446))

(declare-fun m!7625448 () Bool)

(assert (=> b!6910862 m!7625448))

(declare-fun m!7625450 () Bool)

(assert (=> b!6910862 m!7625450))

(declare-fun m!7625452 () Bool)

(assert (=> b!6910862 m!7625452))

(assert (=> b!6910862 m!7625452))

(declare-fun m!7625454 () Bool)

(assert (=> b!6910862 m!7625454))

(declare-fun m!7625456 () Bool)

(assert (=> b!6910862 m!7625456))

(declare-fun m!7625458 () Bool)

(assert (=> b!6910862 m!7625458))

(declare-fun m!7625460 () Bool)

(assert (=> b!6910858 m!7625460))

(declare-fun m!7625462 () Bool)

(assert (=> start!665206 m!7625462))

(declare-fun m!7625464 () Bool)

(assert (=> b!6910867 m!7625464))

(declare-fun m!7625466 () Bool)

(assert (=> b!6910867 m!7625466))

(declare-fun m!7625468 () Bool)

(assert (=> b!6910867 m!7625468))

(declare-fun m!7625470 () Bool)

(assert (=> b!6910867 m!7625470))

(declare-fun m!7625472 () Bool)

(assert (=> b!6910867 m!7625472))

(assert (=> b!6910867 m!7625464))

(declare-fun m!7625474 () Bool)

(assert (=> b!6910867 m!7625474))

(declare-fun m!7625476 () Bool)

(assert (=> b!6910867 m!7625476))

(declare-fun m!7625478 () Bool)

(assert (=> b!6910867 m!7625478))

(declare-fun m!7625480 () Bool)

(assert (=> b!6910865 m!7625480))

(declare-fun m!7625482 () Bool)

(assert (=> b!6910865 m!7625482))

(declare-fun m!7625484 () Bool)

(assert (=> b!6910857 m!7625484))

(declare-fun m!7625486 () Bool)

(assert (=> b!6910861 m!7625486))

(check-sat (not b!6910854) (not b!6910869) (not b!6910860) (not b!6910865) (not b!6910872) (not b!6910866) (not b!6910867) (not b!6910853) (not b!6910856) (not b!6910857) (not start!665206) (not b!6910859) (not b!6910864) (not b!6910868) (not b!6910858) (not b!6910863) (not b!6910861) (not b!6910862) tp_is_empty!43003 (not b!6910855))
(check-sat)
(get-model)

(declare-fun b!6910908 () Bool)

(declare-fun res!2818383 () Bool)

(declare-fun e!4160815 () Bool)

(assert (=> b!6910908 (=> res!2818383 e!4160815)))

(declare-fun e!4160818 () Bool)

(assert (=> b!6910908 (= res!2818383 e!4160818)))

(declare-fun res!2818377 () Bool)

(assert (=> b!6910908 (=> (not res!2818377) (not e!4160818))))

(declare-fun lt!2468570 () Bool)

(assert (=> b!6910908 (= res!2818377 lt!2468570)))

(declare-fun b!6910909 () Bool)

(declare-fun res!2818384 () Bool)

(assert (=> b!6910909 (=> (not res!2818384) (not e!4160818))))

(declare-fun isEmpty!38768 (List!66646) Bool)

(declare-fun tail!12911 (List!66646) List!66646)

(assert (=> b!6910909 (= res!2818384 (isEmpty!38768 (tail!12911 s!14361)))))

(declare-fun b!6910910 () Bool)

(declare-fun e!4160814 () Bool)

(declare-fun head!13859 (List!66646) C!34048)

(assert (=> b!6910910 (= e!4160814 (not (= (head!13859 s!14361) (c!1283655 lt!2468563))))))

(declare-fun b!6910911 () Bool)

(declare-fun e!4160813 () Bool)

(assert (=> b!6910911 (= e!4160813 e!4160814)))

(declare-fun res!2818379 () Bool)

(assert (=> b!6910911 (=> res!2818379 e!4160814)))

(declare-fun call!628320 () Bool)

(assert (=> b!6910911 (= res!2818379 call!628320)))

(declare-fun b!6910912 () Bool)

(assert (=> b!6910912 (= e!4160818 (= (head!13859 s!14361) (c!1283655 lt!2468563)))))

(declare-fun b!6910913 () Bool)

(declare-fun res!2818378 () Bool)

(assert (=> b!6910913 (=> res!2818378 e!4160815)))

(assert (=> b!6910913 (= res!2818378 (not ((_ is ElementMatch!16889) lt!2468563)))))

(declare-fun e!4160819 () Bool)

(assert (=> b!6910913 (= e!4160819 e!4160815)))

(declare-fun d!2163336 () Bool)

(declare-fun e!4160817 () Bool)

(assert (=> d!2163336 e!4160817))

(declare-fun c!1283662 () Bool)

(assert (=> d!2163336 (= c!1283662 ((_ is EmptyExpr!16889) lt!2468563))))

(declare-fun e!4160816 () Bool)

(assert (=> d!2163336 (= lt!2468570 e!4160816)))

(declare-fun c!1283664 () Bool)

(assert (=> d!2163336 (= c!1283664 (isEmpty!38768 s!14361))))

(assert (=> d!2163336 (validRegex!8597 lt!2468563)))

(assert (=> d!2163336 (= (matchR!9034 lt!2468563 s!14361) lt!2468570)))

(declare-fun b!6910914 () Bool)

(assert (=> b!6910914 (= e!4160817 e!4160819)))

(declare-fun c!1283663 () Bool)

(assert (=> b!6910914 (= c!1283663 ((_ is EmptyLang!16889) lt!2468563))))

(declare-fun b!6910915 () Bool)

(declare-fun res!2818381 () Bool)

(assert (=> b!6910915 (=> (not res!2818381) (not e!4160818))))

(assert (=> b!6910915 (= res!2818381 (not call!628320))))

(declare-fun b!6910916 () Bool)

(assert (=> b!6910916 (= e!4160819 (not lt!2468570))))

(declare-fun b!6910917 () Bool)

(declare-fun derivativeStep!5406 (Regex!16889 C!34048) Regex!16889)

(assert (=> b!6910917 (= e!4160816 (matchR!9034 (derivativeStep!5406 lt!2468563 (head!13859 s!14361)) (tail!12911 s!14361)))))

(declare-fun b!6910918 () Bool)

(declare-fun nullable!6727 (Regex!16889) Bool)

(assert (=> b!6910918 (= e!4160816 (nullable!6727 lt!2468563))))

(declare-fun b!6910919 () Bool)

(assert (=> b!6910919 (= e!4160815 e!4160813)))

(declare-fun res!2818382 () Bool)

(assert (=> b!6910919 (=> (not res!2818382) (not e!4160813))))

(assert (=> b!6910919 (= res!2818382 (not lt!2468570))))

(declare-fun bm!628315 () Bool)

(assert (=> bm!628315 (= call!628320 (isEmpty!38768 s!14361))))

(declare-fun b!6910920 () Bool)

(assert (=> b!6910920 (= e!4160817 (= lt!2468570 call!628320))))

(declare-fun b!6910921 () Bool)

(declare-fun res!2818380 () Bool)

(assert (=> b!6910921 (=> res!2818380 e!4160814)))

(assert (=> b!6910921 (= res!2818380 (not (isEmpty!38768 (tail!12911 s!14361))))))

(assert (= (and d!2163336 c!1283664) b!6910918))

(assert (= (and d!2163336 (not c!1283664)) b!6910917))

(assert (= (and d!2163336 c!1283662) b!6910920))

(assert (= (and d!2163336 (not c!1283662)) b!6910914))

(assert (= (and b!6910914 c!1283663) b!6910916))

(assert (= (and b!6910914 (not c!1283663)) b!6910913))

(assert (= (and b!6910913 (not res!2818378)) b!6910908))

(assert (= (and b!6910908 res!2818377) b!6910915))

(assert (= (and b!6910915 res!2818381) b!6910909))

(assert (= (and b!6910909 res!2818384) b!6910912))

(assert (= (and b!6910908 (not res!2818383)) b!6910919))

(assert (= (and b!6910919 res!2818382) b!6910911))

(assert (= (and b!6910911 (not res!2818379)) b!6910921))

(assert (= (and b!6910921 (not res!2818380)) b!6910910))

(assert (= (or b!6910920 b!6910911 b!6910915) bm!628315))

(declare-fun m!7625488 () Bool)

(assert (=> b!6910912 m!7625488))

(declare-fun m!7625490 () Bool)

(assert (=> d!2163336 m!7625490))

(declare-fun m!7625492 () Bool)

(assert (=> d!2163336 m!7625492))

(assert (=> b!6910910 m!7625488))

(assert (=> b!6910917 m!7625488))

(assert (=> b!6910917 m!7625488))

(declare-fun m!7625494 () Bool)

(assert (=> b!6910917 m!7625494))

(declare-fun m!7625496 () Bool)

(assert (=> b!6910917 m!7625496))

(assert (=> b!6910917 m!7625494))

(assert (=> b!6910917 m!7625496))

(declare-fun m!7625498 () Bool)

(assert (=> b!6910917 m!7625498))

(assert (=> b!6910909 m!7625496))

(assert (=> b!6910909 m!7625496))

(declare-fun m!7625500 () Bool)

(assert (=> b!6910909 m!7625500))

(declare-fun m!7625502 () Bool)

(assert (=> b!6910918 m!7625502))

(assert (=> b!6910921 m!7625496))

(assert (=> b!6910921 m!7625496))

(assert (=> b!6910921 m!7625500))

(assert (=> bm!628315 m!7625490))

(assert (=> b!6910853 d!2163336))

(declare-fun d!2163338 () Bool)

(assert (=> d!2163338 (= (matchR!9034 lt!2468557 s!14361) (matchRSpec!3952 lt!2468557 s!14361))))

(declare-fun lt!2468573 () Unit!160514)

(declare-fun choose!51470 (Regex!16889 List!66646) Unit!160514)

(assert (=> d!2163338 (= lt!2468573 (choose!51470 lt!2468557 s!14361))))

(assert (=> d!2163338 (validRegex!8597 lt!2468557)))

(assert (=> d!2163338 (= (mainMatchTheorem!3952 lt!2468557 s!14361) lt!2468573)))

(declare-fun bs!1844736 () Bool)

(assert (= bs!1844736 d!2163338))

(assert (=> bs!1844736 m!7625434))

(assert (=> bs!1844736 m!7625430))

(declare-fun m!7625504 () Bool)

(assert (=> bs!1844736 m!7625504))

(declare-fun m!7625506 () Bool)

(assert (=> bs!1844736 m!7625506))

(assert (=> b!6910853 d!2163338))

(declare-fun d!2163340 () Bool)

(assert (=> d!2163340 (= (matchR!9034 lt!2468563 s!14361) (matchRSpec!3952 lt!2468563 s!14361))))

(declare-fun lt!2468574 () Unit!160514)

(assert (=> d!2163340 (= lt!2468574 (choose!51470 lt!2468563 s!14361))))

(assert (=> d!2163340 (validRegex!8597 lt!2468563)))

(assert (=> d!2163340 (= (mainMatchTheorem!3952 lt!2468563 s!14361) lt!2468574)))

(declare-fun bs!1844737 () Bool)

(assert (= bs!1844737 d!2163340))

(assert (=> bs!1844737 m!7625436))

(assert (=> bs!1844737 m!7625432))

(declare-fun m!7625508 () Bool)

(assert (=> bs!1844737 m!7625508))

(assert (=> bs!1844737 m!7625492))

(assert (=> b!6910853 d!2163340))

(declare-fun bs!1844739 () Bool)

(declare-fun b!6910963 () Bool)

(assert (= bs!1844739 (and b!6910963 b!6910867)))

(declare-fun lambda!392725 () Int)

(assert (=> bs!1844739 (not (= lambda!392725 lambda!392717))))

(assert (=> bs!1844739 (not (= lambda!392725 lambda!392718))))

(declare-fun bs!1844740 () Bool)

(assert (= bs!1844740 (and b!6910963 b!6910862)))

(assert (=> bs!1844740 (not (= lambda!392725 lambda!392719))))

(assert (=> bs!1844740 (not (= lambda!392725 lambda!392720))))

(assert (=> b!6910963 true))

(assert (=> b!6910963 true))

(declare-fun bs!1844741 () Bool)

(declare-fun b!6910961 () Bool)

(assert (= bs!1844741 (and b!6910961 b!6910862)))

(declare-fun lambda!392726 () Int)

(assert (=> bs!1844741 (not (= lambda!392726 lambda!392719))))

(declare-fun bs!1844742 () Bool)

(assert (= bs!1844742 (and b!6910961 b!6910867)))

(assert (=> bs!1844742 (= (and (= (regOne!34290 lt!2468563) r1!6342) (= (regTwo!34290 lt!2468563) lt!2468559)) (= lambda!392726 lambda!392718))))

(assert (=> bs!1844741 (= (and (= s!14361 (_2!37059 lt!2468558)) (= (regOne!34290 lt!2468563) r2!6280) (= (regTwo!34290 lt!2468563) r3!135)) (= lambda!392726 lambda!392720))))

(declare-fun bs!1844743 () Bool)

(assert (= bs!1844743 (and b!6910961 b!6910963)))

(assert (=> bs!1844743 (not (= lambda!392726 lambda!392725))))

(assert (=> bs!1844742 (not (= lambda!392726 lambda!392717))))

(assert (=> b!6910961 true))

(assert (=> b!6910961 true))

(declare-fun b!6910954 () Bool)

(declare-fun e!4160844 () Bool)

(declare-fun e!4160839 () Bool)

(assert (=> b!6910954 (= e!4160844 e!4160839)))

(declare-fun res!2818403 () Bool)

(assert (=> b!6910954 (= res!2818403 (matchRSpec!3952 (regOne!34291 lt!2468563) s!14361))))

(assert (=> b!6910954 (=> res!2818403 e!4160839)))

(declare-fun b!6910955 () Bool)

(declare-fun c!1283674 () Bool)

(assert (=> b!6910955 (= c!1283674 ((_ is ElementMatch!16889) lt!2468563))))

(declare-fun e!4160838 () Bool)

(declare-fun e!4160841 () Bool)

(assert (=> b!6910955 (= e!4160838 e!4160841)))

(declare-fun b!6910956 () Bool)

(declare-fun c!1283673 () Bool)

(assert (=> b!6910956 (= c!1283673 ((_ is Union!16889) lt!2468563))))

(assert (=> b!6910956 (= e!4160841 e!4160844)))

(declare-fun d!2163342 () Bool)

(declare-fun c!1283676 () Bool)

(assert (=> d!2163342 (= c!1283676 ((_ is EmptyExpr!16889) lt!2468563))))

(declare-fun e!4160842 () Bool)

(assert (=> d!2163342 (= (matchRSpec!3952 lt!2468563 s!14361) e!4160842)))

(declare-fun b!6910957 () Bool)

(assert (=> b!6910957 (= e!4160841 (= s!14361 (Cons!66522 (c!1283655 lt!2468563) Nil!66522)))))

(declare-fun b!6910958 () Bool)

(declare-fun call!628326 () Bool)

(assert (=> b!6910958 (= e!4160842 call!628326)))

(declare-fun c!1283675 () Bool)

(declare-fun bm!628320 () Bool)

(declare-fun call!628325 () Bool)

(assert (=> bm!628320 (= call!628325 (Exists!3897 (ite c!1283675 lambda!392725 lambda!392726)))))

(declare-fun b!6910959 () Bool)

(assert (=> b!6910959 (= e!4160839 (matchRSpec!3952 (regTwo!34291 lt!2468563) s!14361))))

(declare-fun b!6910960 () Bool)

(assert (=> b!6910960 (= e!4160842 e!4160838)))

(declare-fun res!2818402 () Bool)

(assert (=> b!6910960 (= res!2818402 (not ((_ is EmptyLang!16889) lt!2468563)))))

(assert (=> b!6910960 (=> (not res!2818402) (not e!4160838))))

(declare-fun e!4160843 () Bool)

(assert (=> b!6910961 (= e!4160843 call!628325)))

(declare-fun b!6910962 () Bool)

(declare-fun res!2818401 () Bool)

(declare-fun e!4160840 () Bool)

(assert (=> b!6910962 (=> res!2818401 e!4160840)))

(assert (=> b!6910962 (= res!2818401 call!628326)))

(assert (=> b!6910962 (= e!4160843 e!4160840)))

(declare-fun bm!628321 () Bool)

(assert (=> bm!628321 (= call!628326 (isEmpty!38768 s!14361))))

(assert (=> b!6910963 (= e!4160840 call!628325)))

(declare-fun b!6910964 () Bool)

(assert (=> b!6910964 (= e!4160844 e!4160843)))

(assert (=> b!6910964 (= c!1283675 ((_ is Star!16889) lt!2468563))))

(assert (= (and d!2163342 c!1283676) b!6910958))

(assert (= (and d!2163342 (not c!1283676)) b!6910960))

(assert (= (and b!6910960 res!2818402) b!6910955))

(assert (= (and b!6910955 c!1283674) b!6910957))

(assert (= (and b!6910955 (not c!1283674)) b!6910956))

(assert (= (and b!6910956 c!1283673) b!6910954))

(assert (= (and b!6910956 (not c!1283673)) b!6910964))

(assert (= (and b!6910954 (not res!2818403)) b!6910959))

(assert (= (and b!6910964 c!1283675) b!6910962))

(assert (= (and b!6910964 (not c!1283675)) b!6910961))

(assert (= (and b!6910962 (not res!2818401)) b!6910963))

(assert (= (or b!6910963 b!6910961) bm!628320))

(assert (= (or b!6910958 b!6910962) bm!628321))

(declare-fun m!7625512 () Bool)

(assert (=> b!6910954 m!7625512))

(declare-fun m!7625514 () Bool)

(assert (=> bm!628320 m!7625514))

(declare-fun m!7625516 () Bool)

(assert (=> b!6910959 m!7625516))

(assert (=> bm!628321 m!7625490))

(assert (=> b!6910853 d!2163342))

(declare-fun bs!1844744 () Bool)

(declare-fun b!6910992 () Bool)

(assert (= bs!1844744 (and b!6910992 b!6910862)))

(declare-fun lambda!392727 () Int)

(assert (=> bs!1844744 (not (= lambda!392727 lambda!392719))))

(declare-fun bs!1844745 () Bool)

(assert (= bs!1844745 (and b!6910992 b!6910867)))

(assert (=> bs!1844745 (not (= lambda!392727 lambda!392718))))

(assert (=> bs!1844744 (not (= lambda!392727 lambda!392720))))

(declare-fun bs!1844746 () Bool)

(assert (= bs!1844746 (and b!6910992 b!6910963)))

(assert (=> bs!1844746 (= (and (= (reg!17218 lt!2468557) (reg!17218 lt!2468563)) (= lt!2468557 lt!2468563)) (= lambda!392727 lambda!392725))))

(assert (=> bs!1844745 (not (= lambda!392727 lambda!392717))))

(declare-fun bs!1844747 () Bool)

(assert (= bs!1844747 (and b!6910992 b!6910961)))

(assert (=> bs!1844747 (not (= lambda!392727 lambda!392726))))

(assert (=> b!6910992 true))

(assert (=> b!6910992 true))

(declare-fun bs!1844748 () Bool)

(declare-fun b!6910990 () Bool)

(assert (= bs!1844748 (and b!6910990 b!6910862)))

(declare-fun lambda!392728 () Int)

(assert (=> bs!1844748 (not (= lambda!392728 lambda!392719))))

(declare-fun bs!1844749 () Bool)

(assert (= bs!1844749 (and b!6910990 b!6910867)))

(assert (=> bs!1844749 (= (and (= (regOne!34290 lt!2468557) r1!6342) (= (regTwo!34290 lt!2468557) lt!2468559)) (= lambda!392728 lambda!392718))))

(assert (=> bs!1844748 (= (and (= s!14361 (_2!37059 lt!2468558)) (= (regOne!34290 lt!2468557) r2!6280) (= (regTwo!34290 lt!2468557) r3!135)) (= lambda!392728 lambda!392720))))

(declare-fun bs!1844750 () Bool)

(assert (= bs!1844750 (and b!6910990 b!6910963)))

(assert (=> bs!1844750 (not (= lambda!392728 lambda!392725))))

(assert (=> bs!1844749 (not (= lambda!392728 lambda!392717))))

(declare-fun bs!1844751 () Bool)

(assert (= bs!1844751 (and b!6910990 b!6910961)))

(assert (=> bs!1844751 (= (and (= (regOne!34290 lt!2468557) (regOne!34290 lt!2468563)) (= (regTwo!34290 lt!2468557) (regTwo!34290 lt!2468563))) (= lambda!392728 lambda!392726))))

(declare-fun bs!1844752 () Bool)

(assert (= bs!1844752 (and b!6910990 b!6910992)))

(assert (=> bs!1844752 (not (= lambda!392728 lambda!392727))))

(assert (=> b!6910990 true))

(assert (=> b!6910990 true))

(declare-fun b!6910983 () Bool)

(declare-fun e!4160861 () Bool)

(declare-fun e!4160856 () Bool)

(assert (=> b!6910983 (= e!4160861 e!4160856)))

(declare-fun res!2818416 () Bool)

(assert (=> b!6910983 (= res!2818416 (matchRSpec!3952 (regOne!34291 lt!2468557) s!14361))))

(assert (=> b!6910983 (=> res!2818416 e!4160856)))

(declare-fun b!6910984 () Bool)

(declare-fun c!1283682 () Bool)

(assert (=> b!6910984 (= c!1283682 ((_ is ElementMatch!16889) lt!2468557))))

(declare-fun e!4160855 () Bool)

(declare-fun e!4160858 () Bool)

(assert (=> b!6910984 (= e!4160855 e!4160858)))

(declare-fun b!6910985 () Bool)

(declare-fun c!1283681 () Bool)

(assert (=> b!6910985 (= c!1283681 ((_ is Union!16889) lt!2468557))))

(assert (=> b!6910985 (= e!4160858 e!4160861)))

(declare-fun d!2163348 () Bool)

(declare-fun c!1283684 () Bool)

(assert (=> d!2163348 (= c!1283684 ((_ is EmptyExpr!16889) lt!2468557))))

(declare-fun e!4160859 () Bool)

(assert (=> d!2163348 (= (matchRSpec!3952 lt!2468557 s!14361) e!4160859)))

(declare-fun b!6910986 () Bool)

(assert (=> b!6910986 (= e!4160858 (= s!14361 (Cons!66522 (c!1283655 lt!2468557) Nil!66522)))))

(declare-fun b!6910987 () Bool)

(declare-fun call!628328 () Bool)

(assert (=> b!6910987 (= e!4160859 call!628328)))

(declare-fun call!628327 () Bool)

(declare-fun bm!628322 () Bool)

(declare-fun c!1283683 () Bool)

(assert (=> bm!628322 (= call!628327 (Exists!3897 (ite c!1283683 lambda!392727 lambda!392728)))))

(declare-fun b!6910988 () Bool)

(assert (=> b!6910988 (= e!4160856 (matchRSpec!3952 (regTwo!34291 lt!2468557) s!14361))))

(declare-fun b!6910989 () Bool)

(assert (=> b!6910989 (= e!4160859 e!4160855)))

(declare-fun res!2818415 () Bool)

(assert (=> b!6910989 (= res!2818415 (not ((_ is EmptyLang!16889) lt!2468557)))))

(assert (=> b!6910989 (=> (not res!2818415) (not e!4160855))))

(declare-fun e!4160860 () Bool)

(assert (=> b!6910990 (= e!4160860 call!628327)))

(declare-fun b!6910991 () Bool)

(declare-fun res!2818414 () Bool)

(declare-fun e!4160857 () Bool)

(assert (=> b!6910991 (=> res!2818414 e!4160857)))

(assert (=> b!6910991 (= res!2818414 call!628328)))

(assert (=> b!6910991 (= e!4160860 e!4160857)))

(declare-fun bm!628323 () Bool)

(assert (=> bm!628323 (= call!628328 (isEmpty!38768 s!14361))))

(assert (=> b!6910992 (= e!4160857 call!628327)))

(declare-fun b!6910993 () Bool)

(assert (=> b!6910993 (= e!4160861 e!4160860)))

(assert (=> b!6910993 (= c!1283683 ((_ is Star!16889) lt!2468557))))

(assert (= (and d!2163348 c!1283684) b!6910987))

(assert (= (and d!2163348 (not c!1283684)) b!6910989))

(assert (= (and b!6910989 res!2818415) b!6910984))

(assert (= (and b!6910984 c!1283682) b!6910986))

(assert (= (and b!6910984 (not c!1283682)) b!6910985))

(assert (= (and b!6910985 c!1283681) b!6910983))

(assert (= (and b!6910985 (not c!1283681)) b!6910993))

(assert (= (and b!6910983 (not res!2818416)) b!6910988))

(assert (= (and b!6910993 c!1283683) b!6910991))

(assert (= (and b!6910993 (not c!1283683)) b!6910990))

(assert (= (and b!6910991 (not res!2818414)) b!6910992))

(assert (= (or b!6910992 b!6910990) bm!628322))

(assert (= (or b!6910987 b!6910991) bm!628323))

(declare-fun m!7625518 () Bool)

(assert (=> b!6910983 m!7625518))

(declare-fun m!7625520 () Bool)

(assert (=> bm!628322 m!7625520))

(declare-fun m!7625522 () Bool)

(assert (=> b!6910988 m!7625522))

(assert (=> bm!628323 m!7625490))

(assert (=> b!6910853 d!2163348))

(declare-fun b!6911003 () Bool)

(declare-fun res!2818428 () Bool)

(declare-fun e!4160869 () Bool)

(assert (=> b!6911003 (=> res!2818428 e!4160869)))

(declare-fun e!4160872 () Bool)

(assert (=> b!6911003 (= res!2818428 e!4160872)))

(declare-fun res!2818422 () Bool)

(assert (=> b!6911003 (=> (not res!2818422) (not e!4160872))))

(declare-fun lt!2468584 () Bool)

(assert (=> b!6911003 (= res!2818422 lt!2468584)))

(declare-fun b!6911004 () Bool)

(declare-fun res!2818429 () Bool)

(assert (=> b!6911004 (=> (not res!2818429) (not e!4160872))))

(assert (=> b!6911004 (= res!2818429 (isEmpty!38768 (tail!12911 s!14361)))))

(declare-fun b!6911005 () Bool)

(declare-fun e!4160868 () Bool)

(assert (=> b!6911005 (= e!4160868 (not (= (head!13859 s!14361) (c!1283655 lt!2468557))))))

(declare-fun b!6911006 () Bool)

(declare-fun e!4160867 () Bool)

(assert (=> b!6911006 (= e!4160867 e!4160868)))

(declare-fun res!2818424 () Bool)

(assert (=> b!6911006 (=> res!2818424 e!4160868)))

(declare-fun call!628329 () Bool)

(assert (=> b!6911006 (= res!2818424 call!628329)))

(declare-fun b!6911007 () Bool)

(assert (=> b!6911007 (= e!4160872 (= (head!13859 s!14361) (c!1283655 lt!2468557)))))

(declare-fun b!6911008 () Bool)

(declare-fun res!2818423 () Bool)

(assert (=> b!6911008 (=> res!2818423 e!4160869)))

(assert (=> b!6911008 (= res!2818423 (not ((_ is ElementMatch!16889) lt!2468557)))))

(declare-fun e!4160873 () Bool)

(assert (=> b!6911008 (= e!4160873 e!4160869)))

(declare-fun d!2163350 () Bool)

(declare-fun e!4160871 () Bool)

(assert (=> d!2163350 e!4160871))

(declare-fun c!1283687 () Bool)

(assert (=> d!2163350 (= c!1283687 ((_ is EmptyExpr!16889) lt!2468557))))

(declare-fun e!4160870 () Bool)

(assert (=> d!2163350 (= lt!2468584 e!4160870)))

(declare-fun c!1283689 () Bool)

(assert (=> d!2163350 (= c!1283689 (isEmpty!38768 s!14361))))

(assert (=> d!2163350 (validRegex!8597 lt!2468557)))

(assert (=> d!2163350 (= (matchR!9034 lt!2468557 s!14361) lt!2468584)))

(declare-fun b!6911009 () Bool)

(assert (=> b!6911009 (= e!4160871 e!4160873)))

(declare-fun c!1283688 () Bool)

(assert (=> b!6911009 (= c!1283688 ((_ is EmptyLang!16889) lt!2468557))))

(declare-fun b!6911010 () Bool)

(declare-fun res!2818426 () Bool)

(assert (=> b!6911010 (=> (not res!2818426) (not e!4160872))))

(assert (=> b!6911010 (= res!2818426 (not call!628329))))

(declare-fun b!6911011 () Bool)

(assert (=> b!6911011 (= e!4160873 (not lt!2468584))))

(declare-fun b!6911012 () Bool)

(assert (=> b!6911012 (= e!4160870 (matchR!9034 (derivativeStep!5406 lt!2468557 (head!13859 s!14361)) (tail!12911 s!14361)))))

(declare-fun b!6911013 () Bool)

(assert (=> b!6911013 (= e!4160870 (nullable!6727 lt!2468557))))

(declare-fun b!6911014 () Bool)

(assert (=> b!6911014 (= e!4160869 e!4160867)))

(declare-fun res!2818427 () Bool)

(assert (=> b!6911014 (=> (not res!2818427) (not e!4160867))))

(assert (=> b!6911014 (= res!2818427 (not lt!2468584))))

(declare-fun bm!628324 () Bool)

(assert (=> bm!628324 (= call!628329 (isEmpty!38768 s!14361))))

(declare-fun b!6911015 () Bool)

(assert (=> b!6911015 (= e!4160871 (= lt!2468584 call!628329))))

(declare-fun b!6911016 () Bool)

(declare-fun res!2818425 () Bool)

(assert (=> b!6911016 (=> res!2818425 e!4160868)))

(assert (=> b!6911016 (= res!2818425 (not (isEmpty!38768 (tail!12911 s!14361))))))

(assert (= (and d!2163350 c!1283689) b!6911013))

(assert (= (and d!2163350 (not c!1283689)) b!6911012))

(assert (= (and d!2163350 c!1283687) b!6911015))

(assert (= (and d!2163350 (not c!1283687)) b!6911009))

(assert (= (and b!6911009 c!1283688) b!6911011))

(assert (= (and b!6911009 (not c!1283688)) b!6911008))

(assert (= (and b!6911008 (not res!2818423)) b!6911003))

(assert (= (and b!6911003 res!2818422) b!6911010))

(assert (= (and b!6911010 res!2818426) b!6911004))

(assert (= (and b!6911004 res!2818429) b!6911007))

(assert (= (and b!6911003 (not res!2818428)) b!6911014))

(assert (= (and b!6911014 res!2818427) b!6911006))

(assert (= (and b!6911006 (not res!2818424)) b!6911016))

(assert (= (and b!6911016 (not res!2818425)) b!6911005))

(assert (= (or b!6911015 b!6911006 b!6911010) bm!628324))

(assert (=> b!6911007 m!7625488))

(assert (=> d!2163350 m!7625490))

(assert (=> d!2163350 m!7625506))

(assert (=> b!6911005 m!7625488))

(assert (=> b!6911012 m!7625488))

(assert (=> b!6911012 m!7625488))

(declare-fun m!7625546 () Bool)

(assert (=> b!6911012 m!7625546))

(assert (=> b!6911012 m!7625496))

(assert (=> b!6911012 m!7625546))

(assert (=> b!6911012 m!7625496))

(declare-fun m!7625548 () Bool)

(assert (=> b!6911012 m!7625548))

(assert (=> b!6911004 m!7625496))

(assert (=> b!6911004 m!7625496))

(assert (=> b!6911004 m!7625500))

(declare-fun m!7625550 () Bool)

(assert (=> b!6911013 m!7625550))

(assert (=> b!6911016 m!7625496))

(assert (=> b!6911016 m!7625496))

(assert (=> b!6911016 m!7625500))

(assert (=> bm!628324 m!7625490))

(assert (=> b!6910853 d!2163350))

(declare-fun b!6911017 () Bool)

(declare-fun res!2818436 () Bool)

(declare-fun e!4160876 () Bool)

(assert (=> b!6911017 (=> res!2818436 e!4160876)))

(declare-fun e!4160879 () Bool)

(assert (=> b!6911017 (= res!2818436 e!4160879)))

(declare-fun res!2818430 () Bool)

(assert (=> b!6911017 (=> (not res!2818430) (not e!4160879))))

(declare-fun lt!2468585 () Bool)

(assert (=> b!6911017 (= res!2818430 lt!2468585)))

(declare-fun b!6911018 () Bool)

(declare-fun res!2818437 () Bool)

(assert (=> b!6911018 (=> (not res!2818437) (not e!4160879))))

(assert (=> b!6911018 (= res!2818437 (isEmpty!38768 (tail!12911 (_2!37059 lt!2468561))))))

(declare-fun b!6911019 () Bool)

(declare-fun e!4160875 () Bool)

(assert (=> b!6911019 (= e!4160875 (not (= (head!13859 (_2!37059 lt!2468561)) (c!1283655 r3!135))))))

(declare-fun b!6911020 () Bool)

(declare-fun e!4160874 () Bool)

(assert (=> b!6911020 (= e!4160874 e!4160875)))

(declare-fun res!2818432 () Bool)

(assert (=> b!6911020 (=> res!2818432 e!4160875)))

(declare-fun call!628330 () Bool)

(assert (=> b!6911020 (= res!2818432 call!628330)))

(declare-fun b!6911021 () Bool)

(assert (=> b!6911021 (= e!4160879 (= (head!13859 (_2!37059 lt!2468561)) (c!1283655 r3!135)))))

(declare-fun b!6911022 () Bool)

(declare-fun res!2818431 () Bool)

(assert (=> b!6911022 (=> res!2818431 e!4160876)))

(assert (=> b!6911022 (= res!2818431 (not ((_ is ElementMatch!16889) r3!135)))))

(declare-fun e!4160880 () Bool)

(assert (=> b!6911022 (= e!4160880 e!4160876)))

(declare-fun d!2163354 () Bool)

(declare-fun e!4160878 () Bool)

(assert (=> d!2163354 e!4160878))

(declare-fun c!1283690 () Bool)

(assert (=> d!2163354 (= c!1283690 ((_ is EmptyExpr!16889) r3!135))))

(declare-fun e!4160877 () Bool)

(assert (=> d!2163354 (= lt!2468585 e!4160877)))

(declare-fun c!1283692 () Bool)

(assert (=> d!2163354 (= c!1283692 (isEmpty!38768 (_2!37059 lt!2468561)))))

(assert (=> d!2163354 (validRegex!8597 r3!135)))

(assert (=> d!2163354 (= (matchR!9034 r3!135 (_2!37059 lt!2468561)) lt!2468585)))

(declare-fun b!6911023 () Bool)

(assert (=> b!6911023 (= e!4160878 e!4160880)))

(declare-fun c!1283691 () Bool)

(assert (=> b!6911023 (= c!1283691 ((_ is EmptyLang!16889) r3!135))))

(declare-fun b!6911024 () Bool)

(declare-fun res!2818434 () Bool)

(assert (=> b!6911024 (=> (not res!2818434) (not e!4160879))))

(assert (=> b!6911024 (= res!2818434 (not call!628330))))

(declare-fun b!6911025 () Bool)

(assert (=> b!6911025 (= e!4160880 (not lt!2468585))))

(declare-fun b!6911026 () Bool)

(assert (=> b!6911026 (= e!4160877 (matchR!9034 (derivativeStep!5406 r3!135 (head!13859 (_2!37059 lt!2468561))) (tail!12911 (_2!37059 lt!2468561))))))

(declare-fun b!6911027 () Bool)

(assert (=> b!6911027 (= e!4160877 (nullable!6727 r3!135))))

(declare-fun b!6911028 () Bool)

(assert (=> b!6911028 (= e!4160876 e!4160874)))

(declare-fun res!2818435 () Bool)

(assert (=> b!6911028 (=> (not res!2818435) (not e!4160874))))

(assert (=> b!6911028 (= res!2818435 (not lt!2468585))))

(declare-fun bm!628325 () Bool)

(assert (=> bm!628325 (= call!628330 (isEmpty!38768 (_2!37059 lt!2468561)))))

(declare-fun b!6911029 () Bool)

(assert (=> b!6911029 (= e!4160878 (= lt!2468585 call!628330))))

(declare-fun b!6911030 () Bool)

(declare-fun res!2818433 () Bool)

(assert (=> b!6911030 (=> res!2818433 e!4160875)))

(assert (=> b!6911030 (= res!2818433 (not (isEmpty!38768 (tail!12911 (_2!37059 lt!2468561)))))))

(assert (= (and d!2163354 c!1283692) b!6911027))

(assert (= (and d!2163354 (not c!1283692)) b!6911026))

(assert (= (and d!2163354 c!1283690) b!6911029))

(assert (= (and d!2163354 (not c!1283690)) b!6911023))

(assert (= (and b!6911023 c!1283691) b!6911025))

(assert (= (and b!6911023 (not c!1283691)) b!6911022))

(assert (= (and b!6911022 (not res!2818431)) b!6911017))

(assert (= (and b!6911017 res!2818430) b!6911024))

(assert (= (and b!6911024 res!2818434) b!6911018))

(assert (= (and b!6911018 res!2818437) b!6911021))

(assert (= (and b!6911017 (not res!2818436)) b!6911028))

(assert (= (and b!6911028 res!2818435) b!6911020))

(assert (= (and b!6911020 (not res!2818432)) b!6911030))

(assert (= (and b!6911030 (not res!2818433)) b!6911019))

(assert (= (or b!6911029 b!6911020 b!6911024) bm!628325))

(declare-fun m!7625552 () Bool)

(assert (=> b!6911021 m!7625552))

(declare-fun m!7625554 () Bool)

(assert (=> d!2163354 m!7625554))

(assert (=> d!2163354 m!7625486))

(assert (=> b!6911019 m!7625552))

(assert (=> b!6911026 m!7625552))

(assert (=> b!6911026 m!7625552))

(declare-fun m!7625556 () Bool)

(assert (=> b!6911026 m!7625556))

(declare-fun m!7625558 () Bool)

(assert (=> b!6911026 m!7625558))

(assert (=> b!6911026 m!7625556))

(assert (=> b!6911026 m!7625558))

(declare-fun m!7625560 () Bool)

(assert (=> b!6911026 m!7625560))

(assert (=> b!6911018 m!7625558))

(assert (=> b!6911018 m!7625558))

(declare-fun m!7625562 () Bool)

(assert (=> b!6911018 m!7625562))

(declare-fun m!7625564 () Bool)

(assert (=> b!6911027 m!7625564))

(assert (=> b!6911030 m!7625558))

(assert (=> b!6911030 m!7625558))

(assert (=> b!6911030 m!7625562))

(assert (=> bm!628325 m!7625554))

(assert (=> b!6910854 d!2163354))

(declare-fun b!6911077 () Bool)

(declare-fun res!2818468 () Bool)

(declare-fun e!4160915 () Bool)

(assert (=> b!6911077 (=> (not res!2818468) (not e!4160915))))

(declare-fun call!628339 () Bool)

(assert (=> b!6911077 (= res!2818468 call!628339)))

(declare-fun e!4160913 () Bool)

(assert (=> b!6911077 (= e!4160913 e!4160915)))

(declare-fun b!6911078 () Bool)

(declare-fun e!4160912 () Bool)

(declare-fun call!628340 () Bool)

(assert (=> b!6911078 (= e!4160912 call!628340)))

(declare-fun bm!628334 () Bool)

(assert (=> bm!628334 (= call!628339 call!628340)))

(declare-fun b!6911079 () Bool)

(declare-fun e!4160914 () Bool)

(assert (=> b!6911079 (= e!4160914 e!4160913)))

(declare-fun c!1283703 () Bool)

(assert (=> b!6911079 (= c!1283703 ((_ is Union!16889) r2!6280))))

(declare-fun bm!628335 () Bool)

(declare-fun call!628341 () Bool)

(assert (=> bm!628335 (= call!628341 (validRegex!8597 (ite c!1283703 (regTwo!34291 r2!6280) (regOne!34290 r2!6280))))))

(declare-fun b!6911080 () Bool)

(assert (=> b!6911080 (= e!4160915 call!628341)))

(declare-fun d!2163356 () Bool)

(declare-fun res!2818465 () Bool)

(declare-fun e!4160909 () Bool)

(assert (=> d!2163356 (=> res!2818465 e!4160909)))

(assert (=> d!2163356 (= res!2818465 ((_ is ElementMatch!16889) r2!6280))))

(assert (=> d!2163356 (= (validRegex!8597 r2!6280) e!4160909)))

(declare-fun b!6911081 () Bool)

(declare-fun e!4160911 () Bool)

(declare-fun e!4160910 () Bool)

(assert (=> b!6911081 (= e!4160911 e!4160910)))

(declare-fun res!2818466 () Bool)

(assert (=> b!6911081 (=> (not res!2818466) (not e!4160910))))

(assert (=> b!6911081 (= res!2818466 call!628341)))

(declare-fun c!1283704 () Bool)

(declare-fun bm!628336 () Bool)

(assert (=> bm!628336 (= call!628340 (validRegex!8597 (ite c!1283704 (reg!17218 r2!6280) (ite c!1283703 (regOne!34291 r2!6280) (regTwo!34290 r2!6280)))))))

(declare-fun b!6911082 () Bool)

(assert (=> b!6911082 (= e!4160909 e!4160914)))

(assert (=> b!6911082 (= c!1283704 ((_ is Star!16889) r2!6280))))

(declare-fun b!6911083 () Bool)

(declare-fun res!2818467 () Bool)

(assert (=> b!6911083 (=> res!2818467 e!4160911)))

(assert (=> b!6911083 (= res!2818467 (not ((_ is Concat!25734) r2!6280)))))

(assert (=> b!6911083 (= e!4160913 e!4160911)))

(declare-fun b!6911084 () Bool)

(assert (=> b!6911084 (= e!4160910 call!628339)))

(declare-fun b!6911085 () Bool)

(assert (=> b!6911085 (= e!4160914 e!4160912)))

(declare-fun res!2818464 () Bool)

(assert (=> b!6911085 (= res!2818464 (not (nullable!6727 (reg!17218 r2!6280))))))

(assert (=> b!6911085 (=> (not res!2818464) (not e!4160912))))

(assert (= (and d!2163356 (not res!2818465)) b!6911082))

(assert (= (and b!6911082 c!1283704) b!6911085))

(assert (= (and b!6911082 (not c!1283704)) b!6911079))

(assert (= (and b!6911085 res!2818464) b!6911078))

(assert (= (and b!6911079 c!1283703) b!6911077))

(assert (= (and b!6911079 (not c!1283703)) b!6911083))

(assert (= (and b!6911077 res!2818468) b!6911080))

(assert (= (and b!6911083 (not res!2818467)) b!6911081))

(assert (= (and b!6911081 res!2818466) b!6911084))

(assert (= (or b!6911077 b!6911084) bm!628334))

(assert (= (or b!6911080 b!6911081) bm!628335))

(assert (= (or b!6911078 bm!628334) bm!628336))

(declare-fun m!7625566 () Bool)

(assert (=> bm!628335 m!7625566))

(declare-fun m!7625568 () Bool)

(assert (=> bm!628336 m!7625568))

(declare-fun m!7625570 () Bool)

(assert (=> b!6911085 m!7625570))

(assert (=> b!6910857 d!2163356))

(declare-fun b!6911086 () Bool)

(declare-fun res!2818475 () Bool)

(declare-fun e!4160918 () Bool)

(assert (=> b!6911086 (=> res!2818475 e!4160918)))

(declare-fun e!4160921 () Bool)

(assert (=> b!6911086 (= res!2818475 e!4160921)))

(declare-fun res!2818469 () Bool)

(assert (=> b!6911086 (=> (not res!2818469) (not e!4160921))))

(declare-fun lt!2468588 () Bool)

(assert (=> b!6911086 (= res!2818469 lt!2468588)))

(declare-fun b!6911087 () Bool)

(declare-fun res!2818476 () Bool)

(assert (=> b!6911087 (=> (not res!2818476) (not e!4160921))))

(assert (=> b!6911087 (= res!2818476 (isEmpty!38768 (tail!12911 (_2!37059 lt!2468558))))))

(declare-fun b!6911088 () Bool)

(declare-fun e!4160917 () Bool)

(assert (=> b!6911088 (= e!4160917 (not (= (head!13859 (_2!37059 lt!2468558)) (c!1283655 lt!2468559))))))

(declare-fun b!6911089 () Bool)

(declare-fun e!4160916 () Bool)

(assert (=> b!6911089 (= e!4160916 e!4160917)))

(declare-fun res!2818471 () Bool)

(assert (=> b!6911089 (=> res!2818471 e!4160917)))

(declare-fun call!628342 () Bool)

(assert (=> b!6911089 (= res!2818471 call!628342)))

(declare-fun b!6911090 () Bool)

(assert (=> b!6911090 (= e!4160921 (= (head!13859 (_2!37059 lt!2468558)) (c!1283655 lt!2468559)))))

(declare-fun b!6911091 () Bool)

(declare-fun res!2818470 () Bool)

(assert (=> b!6911091 (=> res!2818470 e!4160918)))

(assert (=> b!6911091 (= res!2818470 (not ((_ is ElementMatch!16889) lt!2468559)))))

(declare-fun e!4160922 () Bool)

(assert (=> b!6911091 (= e!4160922 e!4160918)))

(declare-fun d!2163358 () Bool)

(declare-fun e!4160920 () Bool)

(assert (=> d!2163358 e!4160920))

(declare-fun c!1283705 () Bool)

(assert (=> d!2163358 (= c!1283705 ((_ is EmptyExpr!16889) lt!2468559))))

(declare-fun e!4160919 () Bool)

(assert (=> d!2163358 (= lt!2468588 e!4160919)))

(declare-fun c!1283707 () Bool)

(assert (=> d!2163358 (= c!1283707 (isEmpty!38768 (_2!37059 lt!2468558)))))

(assert (=> d!2163358 (validRegex!8597 lt!2468559)))

(assert (=> d!2163358 (= (matchR!9034 lt!2468559 (_2!37059 lt!2468558)) lt!2468588)))

(declare-fun b!6911092 () Bool)

(assert (=> b!6911092 (= e!4160920 e!4160922)))

(declare-fun c!1283706 () Bool)

(assert (=> b!6911092 (= c!1283706 ((_ is EmptyLang!16889) lt!2468559))))

(declare-fun b!6911093 () Bool)

(declare-fun res!2818473 () Bool)

(assert (=> b!6911093 (=> (not res!2818473) (not e!4160921))))

(assert (=> b!6911093 (= res!2818473 (not call!628342))))

(declare-fun b!6911094 () Bool)

(assert (=> b!6911094 (= e!4160922 (not lt!2468588))))

(declare-fun b!6911095 () Bool)

(assert (=> b!6911095 (= e!4160919 (matchR!9034 (derivativeStep!5406 lt!2468559 (head!13859 (_2!37059 lt!2468558))) (tail!12911 (_2!37059 lt!2468558))))))

(declare-fun b!6911096 () Bool)

(assert (=> b!6911096 (= e!4160919 (nullable!6727 lt!2468559))))

(declare-fun b!6911097 () Bool)

(assert (=> b!6911097 (= e!4160918 e!4160916)))

(declare-fun res!2818474 () Bool)

(assert (=> b!6911097 (=> (not res!2818474) (not e!4160916))))

(assert (=> b!6911097 (= res!2818474 (not lt!2468588))))

(declare-fun bm!628337 () Bool)

(assert (=> bm!628337 (= call!628342 (isEmpty!38768 (_2!37059 lt!2468558)))))

(declare-fun b!6911098 () Bool)

(assert (=> b!6911098 (= e!4160920 (= lt!2468588 call!628342))))

(declare-fun b!6911099 () Bool)

(declare-fun res!2818472 () Bool)

(assert (=> b!6911099 (=> res!2818472 e!4160917)))

(assert (=> b!6911099 (= res!2818472 (not (isEmpty!38768 (tail!12911 (_2!37059 lt!2468558)))))))

(assert (= (and d!2163358 c!1283707) b!6911096))

(assert (= (and d!2163358 (not c!1283707)) b!6911095))

(assert (= (and d!2163358 c!1283705) b!6911098))

(assert (= (and d!2163358 (not c!1283705)) b!6911092))

(assert (= (and b!6911092 c!1283706) b!6911094))

(assert (= (and b!6911092 (not c!1283706)) b!6911091))

(assert (= (and b!6911091 (not res!2818470)) b!6911086))

(assert (= (and b!6911086 res!2818469) b!6911093))

(assert (= (and b!6911093 res!2818473) b!6911087))

(assert (= (and b!6911087 res!2818476) b!6911090))

(assert (= (and b!6911086 (not res!2818475)) b!6911097))

(assert (= (and b!6911097 res!2818474) b!6911089))

(assert (= (and b!6911089 (not res!2818471)) b!6911099))

(assert (= (and b!6911099 (not res!2818472)) b!6911088))

(assert (= (or b!6911098 b!6911089 b!6911093) bm!628337))

(declare-fun m!7625572 () Bool)

(assert (=> b!6911090 m!7625572))

(declare-fun m!7625574 () Bool)

(assert (=> d!2163358 m!7625574))

(declare-fun m!7625576 () Bool)

(assert (=> d!2163358 m!7625576))

(assert (=> b!6911088 m!7625572))

(assert (=> b!6911095 m!7625572))

(assert (=> b!6911095 m!7625572))

(declare-fun m!7625578 () Bool)

(assert (=> b!6911095 m!7625578))

(declare-fun m!7625580 () Bool)

(assert (=> b!6911095 m!7625580))

(assert (=> b!6911095 m!7625578))

(assert (=> b!6911095 m!7625580))

(declare-fun m!7625582 () Bool)

(assert (=> b!6911095 m!7625582))

(assert (=> b!6911087 m!7625580))

(assert (=> b!6911087 m!7625580))

(declare-fun m!7625584 () Bool)

(assert (=> b!6911087 m!7625584))

(declare-fun m!7625586 () Bool)

(assert (=> b!6911096 m!7625586))

(assert (=> b!6911099 m!7625580))

(assert (=> b!6911099 m!7625580))

(assert (=> b!6911099 m!7625584))

(assert (=> bm!628337 m!7625574))

(assert (=> b!6910858 d!2163358))

(declare-fun b!6911100 () Bool)

(declare-fun res!2818481 () Bool)

(declare-fun e!4160929 () Bool)

(assert (=> b!6911100 (=> (not res!2818481) (not e!4160929))))

(declare-fun call!628343 () Bool)

(assert (=> b!6911100 (= res!2818481 call!628343)))

(declare-fun e!4160927 () Bool)

(assert (=> b!6911100 (= e!4160927 e!4160929)))

(declare-fun b!6911101 () Bool)

(declare-fun e!4160926 () Bool)

(declare-fun call!628344 () Bool)

(assert (=> b!6911101 (= e!4160926 call!628344)))

(declare-fun bm!628338 () Bool)

(assert (=> bm!628338 (= call!628343 call!628344)))

(declare-fun b!6911102 () Bool)

(declare-fun e!4160928 () Bool)

(assert (=> b!6911102 (= e!4160928 e!4160927)))

(declare-fun c!1283708 () Bool)

(assert (=> b!6911102 (= c!1283708 ((_ is Union!16889) r1!6342))))

(declare-fun bm!628339 () Bool)

(declare-fun call!628345 () Bool)

(assert (=> bm!628339 (= call!628345 (validRegex!8597 (ite c!1283708 (regTwo!34291 r1!6342) (regOne!34290 r1!6342))))))

(declare-fun b!6911103 () Bool)

(assert (=> b!6911103 (= e!4160929 call!628345)))

(declare-fun d!2163360 () Bool)

(declare-fun res!2818478 () Bool)

(declare-fun e!4160923 () Bool)

(assert (=> d!2163360 (=> res!2818478 e!4160923)))

(assert (=> d!2163360 (= res!2818478 ((_ is ElementMatch!16889) r1!6342))))

(assert (=> d!2163360 (= (validRegex!8597 r1!6342) e!4160923)))

(declare-fun b!6911104 () Bool)

(declare-fun e!4160925 () Bool)

(declare-fun e!4160924 () Bool)

(assert (=> b!6911104 (= e!4160925 e!4160924)))

(declare-fun res!2818479 () Bool)

(assert (=> b!6911104 (=> (not res!2818479) (not e!4160924))))

(assert (=> b!6911104 (= res!2818479 call!628345)))

(declare-fun c!1283709 () Bool)

(declare-fun bm!628340 () Bool)

(assert (=> bm!628340 (= call!628344 (validRegex!8597 (ite c!1283709 (reg!17218 r1!6342) (ite c!1283708 (regOne!34291 r1!6342) (regTwo!34290 r1!6342)))))))

(declare-fun b!6911105 () Bool)

(assert (=> b!6911105 (= e!4160923 e!4160928)))

(assert (=> b!6911105 (= c!1283709 ((_ is Star!16889) r1!6342))))

(declare-fun b!6911106 () Bool)

(declare-fun res!2818480 () Bool)

(assert (=> b!6911106 (=> res!2818480 e!4160925)))

(assert (=> b!6911106 (= res!2818480 (not ((_ is Concat!25734) r1!6342)))))

(assert (=> b!6911106 (= e!4160927 e!4160925)))

(declare-fun b!6911107 () Bool)

(assert (=> b!6911107 (= e!4160924 call!628343)))

(declare-fun b!6911108 () Bool)

(assert (=> b!6911108 (= e!4160928 e!4160926)))

(declare-fun res!2818477 () Bool)

(assert (=> b!6911108 (= res!2818477 (not (nullable!6727 (reg!17218 r1!6342))))))

(assert (=> b!6911108 (=> (not res!2818477) (not e!4160926))))

(assert (= (and d!2163360 (not res!2818478)) b!6911105))

(assert (= (and b!6911105 c!1283709) b!6911108))

(assert (= (and b!6911105 (not c!1283709)) b!6911102))

(assert (= (and b!6911108 res!2818477) b!6911101))

(assert (= (and b!6911102 c!1283708) b!6911100))

(assert (= (and b!6911102 (not c!1283708)) b!6911106))

(assert (= (and b!6911100 res!2818481) b!6911103))

(assert (= (and b!6911106 (not res!2818480)) b!6911104))

(assert (= (and b!6911104 res!2818479) b!6911107))

(assert (= (or b!6911100 b!6911107) bm!628338))

(assert (= (or b!6911103 b!6911104) bm!628339))

(assert (= (or b!6911101 bm!628338) bm!628340))

(declare-fun m!7625588 () Bool)

(assert (=> bm!628339 m!7625588))

(declare-fun m!7625590 () Bool)

(assert (=> bm!628340 m!7625590))

(declare-fun m!7625592 () Bool)

(assert (=> b!6911108 m!7625592))

(assert (=> start!665206 d!2163360))

(declare-fun b!6911109 () Bool)

(declare-fun res!2818486 () Bool)

(declare-fun e!4160936 () Bool)

(assert (=> b!6911109 (=> (not res!2818486) (not e!4160936))))

(declare-fun call!628346 () Bool)

(assert (=> b!6911109 (= res!2818486 call!628346)))

(declare-fun e!4160934 () Bool)

(assert (=> b!6911109 (= e!4160934 e!4160936)))

(declare-fun b!6911110 () Bool)

(declare-fun e!4160933 () Bool)

(declare-fun call!628347 () Bool)

(assert (=> b!6911110 (= e!4160933 call!628347)))

(declare-fun bm!628341 () Bool)

(assert (=> bm!628341 (= call!628346 call!628347)))

(declare-fun b!6911111 () Bool)

(declare-fun e!4160935 () Bool)

(assert (=> b!6911111 (= e!4160935 e!4160934)))

(declare-fun c!1283710 () Bool)

(assert (=> b!6911111 (= c!1283710 ((_ is Union!16889) r3!135))))

(declare-fun bm!628342 () Bool)

(declare-fun call!628348 () Bool)

(assert (=> bm!628342 (= call!628348 (validRegex!8597 (ite c!1283710 (regTwo!34291 r3!135) (regOne!34290 r3!135))))))

(declare-fun b!6911112 () Bool)

(assert (=> b!6911112 (= e!4160936 call!628348)))

(declare-fun d!2163362 () Bool)

(declare-fun res!2818483 () Bool)

(declare-fun e!4160930 () Bool)

(assert (=> d!2163362 (=> res!2818483 e!4160930)))

(assert (=> d!2163362 (= res!2818483 ((_ is ElementMatch!16889) r3!135))))

(assert (=> d!2163362 (= (validRegex!8597 r3!135) e!4160930)))

(declare-fun b!6911113 () Bool)

(declare-fun e!4160932 () Bool)

(declare-fun e!4160931 () Bool)

(assert (=> b!6911113 (= e!4160932 e!4160931)))

(declare-fun res!2818484 () Bool)

(assert (=> b!6911113 (=> (not res!2818484) (not e!4160931))))

(assert (=> b!6911113 (= res!2818484 call!628348)))

(declare-fun bm!628343 () Bool)

(declare-fun c!1283711 () Bool)

(assert (=> bm!628343 (= call!628347 (validRegex!8597 (ite c!1283711 (reg!17218 r3!135) (ite c!1283710 (regOne!34291 r3!135) (regTwo!34290 r3!135)))))))

(declare-fun b!6911114 () Bool)

(assert (=> b!6911114 (= e!4160930 e!4160935)))

(assert (=> b!6911114 (= c!1283711 ((_ is Star!16889) r3!135))))

(declare-fun b!6911115 () Bool)

(declare-fun res!2818485 () Bool)

(assert (=> b!6911115 (=> res!2818485 e!4160932)))

(assert (=> b!6911115 (= res!2818485 (not ((_ is Concat!25734) r3!135)))))

(assert (=> b!6911115 (= e!4160934 e!4160932)))

(declare-fun b!6911116 () Bool)

(assert (=> b!6911116 (= e!4160931 call!628346)))

(declare-fun b!6911117 () Bool)

(assert (=> b!6911117 (= e!4160935 e!4160933)))

(declare-fun res!2818482 () Bool)

(assert (=> b!6911117 (= res!2818482 (not (nullable!6727 (reg!17218 r3!135))))))

(assert (=> b!6911117 (=> (not res!2818482) (not e!4160933))))

(assert (= (and d!2163362 (not res!2818483)) b!6911114))

(assert (= (and b!6911114 c!1283711) b!6911117))

(assert (= (and b!6911114 (not c!1283711)) b!6911111))

(assert (= (and b!6911117 res!2818482) b!6911110))

(assert (= (and b!6911111 c!1283710) b!6911109))

(assert (= (and b!6911111 (not c!1283710)) b!6911115))

(assert (= (and b!6911109 res!2818486) b!6911112))

(assert (= (and b!6911115 (not res!2818485)) b!6911113))

(assert (= (and b!6911113 res!2818484) b!6911116))

(assert (= (or b!6911109 b!6911116) bm!628341))

(assert (= (or b!6911112 b!6911113) bm!628342))

(assert (= (or b!6911110 bm!628341) bm!628343))

(declare-fun m!7625594 () Bool)

(assert (=> bm!628342 m!7625594))

(declare-fun m!7625596 () Bool)

(assert (=> bm!628343 m!7625596))

(declare-fun m!7625598 () Bool)

(assert (=> b!6911117 m!7625598))

(assert (=> b!6910861 d!2163362))

(declare-fun d!2163364 () Bool)

(declare-fun choose!51475 (Int) Bool)

(assert (=> d!2163364 (= (Exists!3897 lambda!392719) (choose!51475 lambda!392719))))

(declare-fun bs!1844753 () Bool)

(assert (= bs!1844753 d!2163364))

(declare-fun m!7625600 () Bool)

(assert (=> bs!1844753 m!7625600))

(assert (=> b!6910862 d!2163364))

(declare-fun bs!1844754 () Bool)

(declare-fun d!2163366 () Bool)

(assert (= bs!1844754 (and d!2163366 b!6910862)))

(declare-fun lambda!392731 () Int)

(assert (=> bs!1844754 (= lambda!392731 lambda!392719)))

(declare-fun bs!1844755 () Bool)

(assert (= bs!1844755 (and d!2163366 b!6910867)))

(assert (=> bs!1844755 (not (= lambda!392731 lambda!392718))))

(assert (=> bs!1844754 (not (= lambda!392731 lambda!392720))))

(declare-fun bs!1844756 () Bool)

(assert (= bs!1844756 (and d!2163366 b!6910963)))

(assert (=> bs!1844756 (not (= lambda!392731 lambda!392725))))

(assert (=> bs!1844755 (= (and (= (_2!37059 lt!2468558) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468559)) (= lambda!392731 lambda!392717))))

(declare-fun bs!1844757 () Bool)

(assert (= bs!1844757 (and d!2163366 b!6910990)))

(assert (=> bs!1844757 (not (= lambda!392731 lambda!392728))))

(declare-fun bs!1844758 () Bool)

(assert (= bs!1844758 (and d!2163366 b!6910961)))

(assert (=> bs!1844758 (not (= lambda!392731 lambda!392726))))

(declare-fun bs!1844759 () Bool)

(assert (= bs!1844759 (and d!2163366 b!6910992)))

(assert (=> bs!1844759 (not (= lambda!392731 lambda!392727))))

(assert (=> d!2163366 true))

(assert (=> d!2163366 true))

(assert (=> d!2163366 true))

(assert (=> d!2163366 (= (isDefined!13371 (findConcatSeparation!3082 r2!6280 r3!135 Nil!66522 (_2!37059 lt!2468558) (_2!37059 lt!2468558))) (Exists!3897 lambda!392731))))

(declare-fun lt!2468592 () Unit!160514)

(declare-fun choose!51476 (Regex!16889 Regex!16889 List!66646) Unit!160514)

(assert (=> d!2163366 (= lt!2468592 (choose!51476 r2!6280 r3!135 (_2!37059 lt!2468558)))))

(assert (=> d!2163366 (validRegex!8597 r2!6280)))

(assert (=> d!2163366 (= (lemmaFindConcatSeparationEquivalentToExists!2844 r2!6280 r3!135 (_2!37059 lt!2468558)) lt!2468592)))

(declare-fun bs!1844760 () Bool)

(assert (= bs!1844760 d!2163366))

(declare-fun m!7625638 () Bool)

(assert (=> bs!1844760 m!7625638))

(assert (=> bs!1844760 m!7625484))

(assert (=> bs!1844760 m!7625458))

(assert (=> bs!1844760 m!7625458))

(declare-fun m!7625640 () Bool)

(assert (=> bs!1844760 m!7625640))

(declare-fun m!7625644 () Bool)

(assert (=> bs!1844760 m!7625644))

(assert (=> b!6910862 d!2163366))

(declare-fun bs!1844762 () Bool)

(declare-fun b!6911195 () Bool)

(assert (= bs!1844762 (and b!6911195 b!6910862)))

(declare-fun lambda!392732 () Int)

(assert (=> bs!1844762 (not (= lambda!392732 lambda!392719))))

(declare-fun bs!1844763 () Bool)

(assert (= bs!1844763 (and b!6911195 d!2163366)))

(assert (=> bs!1844763 (not (= lambda!392732 lambda!392731))))

(declare-fun bs!1844764 () Bool)

(assert (= bs!1844764 (and b!6911195 b!6910867)))

(assert (=> bs!1844764 (not (= lambda!392732 lambda!392718))))

(assert (=> bs!1844762 (not (= lambda!392732 lambda!392720))))

(declare-fun bs!1844765 () Bool)

(assert (= bs!1844765 (and b!6911195 b!6910963)))

(assert (=> bs!1844765 (= (and (= (_2!37059 lt!2468558) s!14361) (= (reg!17218 lt!2468559) (reg!17218 lt!2468563)) (= lt!2468559 lt!2468563)) (= lambda!392732 lambda!392725))))

(assert (=> bs!1844764 (not (= lambda!392732 lambda!392717))))

(declare-fun bs!1844766 () Bool)

(assert (= bs!1844766 (and b!6911195 b!6910990)))

(assert (=> bs!1844766 (not (= lambda!392732 lambda!392728))))

(declare-fun bs!1844767 () Bool)

(assert (= bs!1844767 (and b!6911195 b!6910961)))

(assert (=> bs!1844767 (not (= lambda!392732 lambda!392726))))

(declare-fun bs!1844768 () Bool)

(assert (= bs!1844768 (and b!6911195 b!6910992)))

(assert (=> bs!1844768 (= (and (= (_2!37059 lt!2468558) s!14361) (= (reg!17218 lt!2468559) (reg!17218 lt!2468557)) (= lt!2468559 lt!2468557)) (= lambda!392732 lambda!392727))))

(assert (=> b!6911195 true))

(assert (=> b!6911195 true))

(declare-fun bs!1844769 () Bool)

(declare-fun b!6911193 () Bool)

(assert (= bs!1844769 (and b!6911193 b!6910862)))

(declare-fun lambda!392733 () Int)

(assert (=> bs!1844769 (not (= lambda!392733 lambda!392719))))

(declare-fun bs!1844770 () Bool)

(assert (= bs!1844770 (and b!6911193 d!2163366)))

(assert (=> bs!1844770 (not (= lambda!392733 lambda!392731))))

(declare-fun bs!1844771 () Bool)

(assert (= bs!1844771 (and b!6911193 b!6910867)))

(assert (=> bs!1844771 (= (and (= (_2!37059 lt!2468558) s!14361) (= (regOne!34290 lt!2468559) r1!6342) (= (regTwo!34290 lt!2468559) lt!2468559)) (= lambda!392733 lambda!392718))))

(assert (=> bs!1844769 (= (and (= (regOne!34290 lt!2468559) r2!6280) (= (regTwo!34290 lt!2468559) r3!135)) (= lambda!392733 lambda!392720))))

(declare-fun bs!1844772 () Bool)

(assert (= bs!1844772 (and b!6911193 b!6910963)))

(assert (=> bs!1844772 (not (= lambda!392733 lambda!392725))))

(assert (=> bs!1844771 (not (= lambda!392733 lambda!392717))))

(declare-fun bs!1844773 () Bool)

(assert (= bs!1844773 (and b!6911193 b!6911195)))

(assert (=> bs!1844773 (not (= lambda!392733 lambda!392732))))

(declare-fun bs!1844774 () Bool)

(assert (= bs!1844774 (and b!6911193 b!6910990)))

(assert (=> bs!1844774 (= (and (= (_2!37059 lt!2468558) s!14361) (= (regOne!34290 lt!2468559) (regOne!34290 lt!2468557)) (= (regTwo!34290 lt!2468559) (regTwo!34290 lt!2468557))) (= lambda!392733 lambda!392728))))

(declare-fun bs!1844775 () Bool)

(assert (= bs!1844775 (and b!6911193 b!6910961)))

(assert (=> bs!1844775 (= (and (= (_2!37059 lt!2468558) s!14361) (= (regOne!34290 lt!2468559) (regOne!34290 lt!2468563)) (= (regTwo!34290 lt!2468559) (regTwo!34290 lt!2468563))) (= lambda!392733 lambda!392726))))

(declare-fun bs!1844776 () Bool)

(assert (= bs!1844776 (and b!6911193 b!6910992)))

(assert (=> bs!1844776 (not (= lambda!392733 lambda!392727))))

(assert (=> b!6911193 true))

(assert (=> b!6911193 true))

(declare-fun b!6911186 () Bool)

(declare-fun e!4160987 () Bool)

(declare-fun e!4160982 () Bool)

(assert (=> b!6911186 (= e!4160987 e!4160982)))

(declare-fun res!2818529 () Bool)

(assert (=> b!6911186 (= res!2818529 (matchRSpec!3952 (regOne!34291 lt!2468559) (_2!37059 lt!2468558)))))

(assert (=> b!6911186 (=> res!2818529 e!4160982)))

(declare-fun b!6911187 () Bool)

(declare-fun c!1283727 () Bool)

(assert (=> b!6911187 (= c!1283727 ((_ is ElementMatch!16889) lt!2468559))))

(declare-fun e!4160981 () Bool)

(declare-fun e!4160984 () Bool)

(assert (=> b!6911187 (= e!4160981 e!4160984)))

(declare-fun b!6911188 () Bool)

(declare-fun c!1283726 () Bool)

(assert (=> b!6911188 (= c!1283726 ((_ is Union!16889) lt!2468559))))

(assert (=> b!6911188 (= e!4160984 e!4160987)))

(declare-fun d!2163374 () Bool)

(declare-fun c!1283729 () Bool)

(assert (=> d!2163374 (= c!1283729 ((_ is EmptyExpr!16889) lt!2468559))))

(declare-fun e!4160985 () Bool)

(assert (=> d!2163374 (= (matchRSpec!3952 lt!2468559 (_2!37059 lt!2468558)) e!4160985)))

(declare-fun b!6911189 () Bool)

(assert (=> b!6911189 (= e!4160984 (= (_2!37059 lt!2468558) (Cons!66522 (c!1283655 lt!2468559) Nil!66522)))))

(declare-fun b!6911190 () Bool)

(declare-fun call!628364 () Bool)

(assert (=> b!6911190 (= e!4160985 call!628364)))

(declare-fun bm!628358 () Bool)

(declare-fun c!1283728 () Bool)

(declare-fun call!628363 () Bool)

(assert (=> bm!628358 (= call!628363 (Exists!3897 (ite c!1283728 lambda!392732 lambda!392733)))))

(declare-fun b!6911191 () Bool)

(assert (=> b!6911191 (= e!4160982 (matchRSpec!3952 (regTwo!34291 lt!2468559) (_2!37059 lt!2468558)))))

(declare-fun b!6911192 () Bool)

(assert (=> b!6911192 (= e!4160985 e!4160981)))

(declare-fun res!2818528 () Bool)

(assert (=> b!6911192 (= res!2818528 (not ((_ is EmptyLang!16889) lt!2468559)))))

(assert (=> b!6911192 (=> (not res!2818528) (not e!4160981))))

(declare-fun e!4160986 () Bool)

(assert (=> b!6911193 (= e!4160986 call!628363)))

(declare-fun b!6911194 () Bool)

(declare-fun res!2818527 () Bool)

(declare-fun e!4160983 () Bool)

(assert (=> b!6911194 (=> res!2818527 e!4160983)))

(assert (=> b!6911194 (= res!2818527 call!628364)))

(assert (=> b!6911194 (= e!4160986 e!4160983)))

(declare-fun bm!628359 () Bool)

(assert (=> bm!628359 (= call!628364 (isEmpty!38768 (_2!37059 lt!2468558)))))

(assert (=> b!6911195 (= e!4160983 call!628363)))

(declare-fun b!6911196 () Bool)

(assert (=> b!6911196 (= e!4160987 e!4160986)))

(assert (=> b!6911196 (= c!1283728 ((_ is Star!16889) lt!2468559))))

(assert (= (and d!2163374 c!1283729) b!6911190))

(assert (= (and d!2163374 (not c!1283729)) b!6911192))

(assert (= (and b!6911192 res!2818528) b!6911187))

(assert (= (and b!6911187 c!1283727) b!6911189))

(assert (= (and b!6911187 (not c!1283727)) b!6911188))

(assert (= (and b!6911188 c!1283726) b!6911186))

(assert (= (and b!6911188 (not c!1283726)) b!6911196))

(assert (= (and b!6911186 (not res!2818529)) b!6911191))

(assert (= (and b!6911196 c!1283728) b!6911194))

(assert (= (and b!6911196 (not c!1283728)) b!6911193))

(assert (= (and b!6911194 (not res!2818527)) b!6911195))

(assert (= (or b!6911195 b!6911193) bm!628358))

(assert (= (or b!6911190 b!6911194) bm!628359))

(declare-fun m!7625666 () Bool)

(assert (=> b!6911186 m!7625666))

(declare-fun m!7625668 () Bool)

(assert (=> bm!628358 m!7625668))

(declare-fun m!7625670 () Bool)

(assert (=> b!6911191 m!7625670))

(assert (=> bm!628359 m!7625574))

(assert (=> b!6910862 d!2163374))

(declare-fun d!2163382 () Bool)

(assert (=> d!2163382 (= (get!23284 lt!2468555) (v!52939 lt!2468555))))

(assert (=> b!6910862 d!2163382))

(declare-fun b!6911237 () Bool)

(declare-fun lt!2468608 () Unit!160514)

(declare-fun lt!2468607 () Unit!160514)

(assert (=> b!6911237 (= lt!2468608 lt!2468607)))

(declare-fun ++!14942 (List!66646 List!66646) List!66646)

(assert (=> b!6911237 (= (++!14942 (++!14942 Nil!66522 (Cons!66522 (h!72970 (_2!37059 lt!2468558)) Nil!66522)) (t!380389 (_2!37059 lt!2468558))) (_2!37059 lt!2468558))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2815 (List!66646 C!34048 List!66646 List!66646) Unit!160514)

(assert (=> b!6911237 (= lt!2468607 (lemmaMoveElementToOtherListKeepsConcatEq!2815 Nil!66522 (h!72970 (_2!37059 lt!2468558)) (t!380389 (_2!37059 lt!2468558)) (_2!37059 lt!2468558)))))

(declare-fun e!4161010 () Option!16668)

(assert (=> b!6911237 (= e!4161010 (findConcatSeparation!3082 r2!6280 r3!135 (++!14942 Nil!66522 (Cons!66522 (h!72970 (_2!37059 lt!2468558)) Nil!66522)) (t!380389 (_2!37059 lt!2468558)) (_2!37059 lt!2468558)))))

(declare-fun b!6911239 () Bool)

(assert (=> b!6911239 (= e!4161010 None!16667)))

(declare-fun b!6911240 () Bool)

(declare-fun e!4161011 () Bool)

(declare-fun lt!2468609 () Option!16668)

(assert (=> b!6911240 (= e!4161011 (= (++!14942 (_1!37059 (get!23284 lt!2468609)) (_2!37059 (get!23284 lt!2468609))) (_2!37059 lt!2468558)))))

(declare-fun b!6911241 () Bool)

(declare-fun e!4161012 () Bool)

(assert (=> b!6911241 (= e!4161012 (matchR!9034 r3!135 (_2!37059 lt!2468558)))))

(declare-fun b!6911242 () Bool)

(declare-fun e!4161009 () Option!16668)

(assert (=> b!6911242 (= e!4161009 e!4161010)))

(declare-fun c!1283738 () Bool)

(assert (=> b!6911242 (= c!1283738 ((_ is Nil!66522) (_2!37059 lt!2468558)))))

(declare-fun b!6911243 () Bool)

(assert (=> b!6911243 (= e!4161009 (Some!16667 (tuple2!67513 Nil!66522 (_2!37059 lt!2468558))))))

(declare-fun b!6911238 () Bool)

(declare-fun res!2818560 () Bool)

(assert (=> b!6911238 (=> (not res!2818560) (not e!4161011))))

(assert (=> b!6911238 (= res!2818560 (matchR!9034 r2!6280 (_1!37059 (get!23284 lt!2468609))))))

(declare-fun d!2163384 () Bool)

(declare-fun e!4161013 () Bool)

(assert (=> d!2163384 e!4161013))

(declare-fun res!2818559 () Bool)

(assert (=> d!2163384 (=> res!2818559 e!4161013)))

(assert (=> d!2163384 (= res!2818559 e!4161011)))

(declare-fun res!2818558 () Bool)

(assert (=> d!2163384 (=> (not res!2818558) (not e!4161011))))

(assert (=> d!2163384 (= res!2818558 (isDefined!13371 lt!2468609))))

(assert (=> d!2163384 (= lt!2468609 e!4161009)))

(declare-fun c!1283737 () Bool)

(assert (=> d!2163384 (= c!1283737 e!4161012)))

(declare-fun res!2818556 () Bool)

(assert (=> d!2163384 (=> (not res!2818556) (not e!4161012))))

(assert (=> d!2163384 (= res!2818556 (matchR!9034 r2!6280 Nil!66522))))

(assert (=> d!2163384 (validRegex!8597 r2!6280)))

(assert (=> d!2163384 (= (findConcatSeparation!3082 r2!6280 r3!135 Nil!66522 (_2!37059 lt!2468558) (_2!37059 lt!2468558)) lt!2468609)))

(declare-fun b!6911244 () Bool)

(declare-fun res!2818557 () Bool)

(assert (=> b!6911244 (=> (not res!2818557) (not e!4161011))))

(assert (=> b!6911244 (= res!2818557 (matchR!9034 r3!135 (_2!37059 (get!23284 lt!2468609))))))

(declare-fun b!6911245 () Bool)

(assert (=> b!6911245 (= e!4161013 (not (isDefined!13371 lt!2468609)))))

(assert (= (and d!2163384 res!2818556) b!6911241))

(assert (= (and d!2163384 c!1283737) b!6911243))

(assert (= (and d!2163384 (not c!1283737)) b!6911242))

(assert (= (and b!6911242 c!1283738) b!6911239))

(assert (= (and b!6911242 (not c!1283738)) b!6911237))

(assert (= (and d!2163384 res!2818558) b!6911238))

(assert (= (and b!6911238 res!2818560) b!6911244))

(assert (= (and b!6911244 res!2818557) b!6911240))

(assert (= (and d!2163384 (not res!2818559)) b!6911245))

(declare-fun m!7625680 () Bool)

(assert (=> b!6911240 m!7625680))

(declare-fun m!7625682 () Bool)

(assert (=> b!6911240 m!7625682))

(assert (=> b!6911238 m!7625680))

(declare-fun m!7625684 () Bool)

(assert (=> b!6911238 m!7625684))

(declare-fun m!7625686 () Bool)

(assert (=> b!6911241 m!7625686))

(assert (=> b!6911244 m!7625680))

(declare-fun m!7625688 () Bool)

(assert (=> b!6911244 m!7625688))

(declare-fun m!7625690 () Bool)

(assert (=> b!6911245 m!7625690))

(declare-fun m!7625692 () Bool)

(assert (=> b!6911237 m!7625692))

(assert (=> b!6911237 m!7625692))

(declare-fun m!7625694 () Bool)

(assert (=> b!6911237 m!7625694))

(declare-fun m!7625696 () Bool)

(assert (=> b!6911237 m!7625696))

(assert (=> b!6911237 m!7625692))

(declare-fun m!7625698 () Bool)

(assert (=> b!6911237 m!7625698))

(assert (=> d!2163384 m!7625690))

(declare-fun m!7625700 () Bool)

(assert (=> d!2163384 m!7625700))

(assert (=> d!2163384 m!7625484))

(assert (=> b!6910862 d!2163384))

(declare-fun b!6911246 () Bool)

(declare-fun res!2818567 () Bool)

(declare-fun e!4161016 () Bool)

(assert (=> b!6911246 (=> res!2818567 e!4161016)))

(declare-fun e!4161019 () Bool)

(assert (=> b!6911246 (= res!2818567 e!4161019)))

(declare-fun res!2818561 () Bool)

(assert (=> b!6911246 (=> (not res!2818561) (not e!4161019))))

(declare-fun lt!2468610 () Bool)

(assert (=> b!6911246 (= res!2818561 lt!2468610)))

(declare-fun b!6911247 () Bool)

(declare-fun res!2818568 () Bool)

(assert (=> b!6911247 (=> (not res!2818568) (not e!4161019))))

(assert (=> b!6911247 (= res!2818568 (isEmpty!38768 (tail!12911 (_1!37059 lt!2468561))))))

(declare-fun b!6911248 () Bool)

(declare-fun e!4161015 () Bool)

(assert (=> b!6911248 (= e!4161015 (not (= (head!13859 (_1!37059 lt!2468561)) (c!1283655 r2!6280))))))

(declare-fun b!6911249 () Bool)

(declare-fun e!4161014 () Bool)

(assert (=> b!6911249 (= e!4161014 e!4161015)))

(declare-fun res!2818563 () Bool)

(assert (=> b!6911249 (=> res!2818563 e!4161015)))

(declare-fun call!628366 () Bool)

(assert (=> b!6911249 (= res!2818563 call!628366)))

(declare-fun b!6911250 () Bool)

(assert (=> b!6911250 (= e!4161019 (= (head!13859 (_1!37059 lt!2468561)) (c!1283655 r2!6280)))))

(declare-fun b!6911251 () Bool)

(declare-fun res!2818562 () Bool)

(assert (=> b!6911251 (=> res!2818562 e!4161016)))

(assert (=> b!6911251 (= res!2818562 (not ((_ is ElementMatch!16889) r2!6280)))))

(declare-fun e!4161020 () Bool)

(assert (=> b!6911251 (= e!4161020 e!4161016)))

(declare-fun d!2163390 () Bool)

(declare-fun e!4161018 () Bool)

(assert (=> d!2163390 e!4161018))

(declare-fun c!1283739 () Bool)

(assert (=> d!2163390 (= c!1283739 ((_ is EmptyExpr!16889) r2!6280))))

(declare-fun e!4161017 () Bool)

(assert (=> d!2163390 (= lt!2468610 e!4161017)))

(declare-fun c!1283741 () Bool)

(assert (=> d!2163390 (= c!1283741 (isEmpty!38768 (_1!37059 lt!2468561)))))

(assert (=> d!2163390 (validRegex!8597 r2!6280)))

(assert (=> d!2163390 (= (matchR!9034 r2!6280 (_1!37059 lt!2468561)) lt!2468610)))

(declare-fun b!6911252 () Bool)

(assert (=> b!6911252 (= e!4161018 e!4161020)))

(declare-fun c!1283740 () Bool)

(assert (=> b!6911252 (= c!1283740 ((_ is EmptyLang!16889) r2!6280))))

(declare-fun b!6911253 () Bool)

(declare-fun res!2818565 () Bool)

(assert (=> b!6911253 (=> (not res!2818565) (not e!4161019))))

(assert (=> b!6911253 (= res!2818565 (not call!628366))))

(declare-fun b!6911254 () Bool)

(assert (=> b!6911254 (= e!4161020 (not lt!2468610))))

(declare-fun b!6911255 () Bool)

(assert (=> b!6911255 (= e!4161017 (matchR!9034 (derivativeStep!5406 r2!6280 (head!13859 (_1!37059 lt!2468561))) (tail!12911 (_1!37059 lt!2468561))))))

(declare-fun b!6911256 () Bool)

(assert (=> b!6911256 (= e!4161017 (nullable!6727 r2!6280))))

(declare-fun b!6911257 () Bool)

(assert (=> b!6911257 (= e!4161016 e!4161014)))

(declare-fun res!2818566 () Bool)

(assert (=> b!6911257 (=> (not res!2818566) (not e!4161014))))

(assert (=> b!6911257 (= res!2818566 (not lt!2468610))))

(declare-fun bm!628361 () Bool)

(assert (=> bm!628361 (= call!628366 (isEmpty!38768 (_1!37059 lt!2468561)))))

(declare-fun b!6911258 () Bool)

(assert (=> b!6911258 (= e!4161018 (= lt!2468610 call!628366))))

(declare-fun b!6911259 () Bool)

(declare-fun res!2818564 () Bool)

(assert (=> b!6911259 (=> res!2818564 e!4161015)))

(assert (=> b!6911259 (= res!2818564 (not (isEmpty!38768 (tail!12911 (_1!37059 lt!2468561)))))))

(assert (= (and d!2163390 c!1283741) b!6911256))

(assert (= (and d!2163390 (not c!1283741)) b!6911255))

(assert (= (and d!2163390 c!1283739) b!6911258))

(assert (= (and d!2163390 (not c!1283739)) b!6911252))

(assert (= (and b!6911252 c!1283740) b!6911254))

(assert (= (and b!6911252 (not c!1283740)) b!6911251))

(assert (= (and b!6911251 (not res!2818562)) b!6911246))

(assert (= (and b!6911246 res!2818561) b!6911253))

(assert (= (and b!6911253 res!2818565) b!6911247))

(assert (= (and b!6911247 res!2818568) b!6911250))

(assert (= (and b!6911246 (not res!2818567)) b!6911257))

(assert (= (and b!6911257 res!2818566) b!6911249))

(assert (= (and b!6911249 (not res!2818563)) b!6911259))

(assert (= (and b!6911259 (not res!2818564)) b!6911248))

(assert (= (or b!6911258 b!6911249 b!6911253) bm!628361))

(declare-fun m!7625702 () Bool)

(assert (=> b!6911250 m!7625702))

(declare-fun m!7625704 () Bool)

(assert (=> d!2163390 m!7625704))

(assert (=> d!2163390 m!7625484))

(assert (=> b!6911248 m!7625702))

(assert (=> b!6911255 m!7625702))

(assert (=> b!6911255 m!7625702))

(declare-fun m!7625706 () Bool)

(assert (=> b!6911255 m!7625706))

(declare-fun m!7625708 () Bool)

(assert (=> b!6911255 m!7625708))

(assert (=> b!6911255 m!7625706))

(assert (=> b!6911255 m!7625708))

(declare-fun m!7625710 () Bool)

(assert (=> b!6911255 m!7625710))

(assert (=> b!6911247 m!7625708))

(assert (=> b!6911247 m!7625708))

(declare-fun m!7625712 () Bool)

(assert (=> b!6911247 m!7625712))

(declare-fun m!7625714 () Bool)

(assert (=> b!6911256 m!7625714))

(assert (=> b!6911259 m!7625708))

(assert (=> b!6911259 m!7625708))

(assert (=> b!6911259 m!7625712))

(assert (=> bm!628361 m!7625704))

(assert (=> b!6910862 d!2163390))

(declare-fun d!2163392 () Bool)

(assert (=> d!2163392 (= (matchR!9034 lt!2468559 (_2!37059 lt!2468558)) (matchRSpec!3952 lt!2468559 (_2!37059 lt!2468558)))))

(declare-fun lt!2468613 () Unit!160514)

(assert (=> d!2163392 (= lt!2468613 (choose!51470 lt!2468559 (_2!37059 lt!2468558)))))

(assert (=> d!2163392 (validRegex!8597 lt!2468559)))

(assert (=> d!2163392 (= (mainMatchTheorem!3952 lt!2468559 (_2!37059 lt!2468558)) lt!2468613)))

(declare-fun bs!1844781 () Bool)

(assert (= bs!1844781 d!2163392))

(assert (=> bs!1844781 m!7625460))

(assert (=> bs!1844781 m!7625446))

(declare-fun m!7625716 () Bool)

(assert (=> bs!1844781 m!7625716))

(assert (=> bs!1844781 m!7625576))

(assert (=> b!6910862 d!2163392))

(declare-fun d!2163394 () Bool)

(assert (=> d!2163394 (= (Exists!3897 lambda!392720) (choose!51475 lambda!392720))))

(declare-fun bs!1844782 () Bool)

(assert (= bs!1844782 d!2163394))

(declare-fun m!7625718 () Bool)

(assert (=> bs!1844782 m!7625718))

(assert (=> b!6910862 d!2163394))

(declare-fun bs!1844787 () Bool)

(declare-fun d!2163396 () Bool)

(assert (= bs!1844787 (and d!2163396 b!6910862)))

(declare-fun lambda!392747 () Int)

(assert (=> bs!1844787 (= lambda!392747 lambda!392719)))

(declare-fun bs!1844788 () Bool)

(assert (= bs!1844788 (and d!2163396 d!2163366)))

(assert (=> bs!1844788 (= lambda!392747 lambda!392731)))

(declare-fun bs!1844789 () Bool)

(assert (= bs!1844789 (and d!2163396 b!6910867)))

(assert (=> bs!1844789 (not (= lambda!392747 lambda!392718))))

(assert (=> bs!1844787 (not (= lambda!392747 lambda!392720))))

(declare-fun bs!1844790 () Bool)

(assert (= bs!1844790 (and d!2163396 b!6910963)))

(assert (=> bs!1844790 (not (= lambda!392747 lambda!392725))))

(assert (=> bs!1844789 (= (and (= (_2!37059 lt!2468558) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468559)) (= lambda!392747 lambda!392717))))

(declare-fun bs!1844791 () Bool)

(assert (= bs!1844791 (and d!2163396 b!6910990)))

(assert (=> bs!1844791 (not (= lambda!392747 lambda!392728))))

(declare-fun bs!1844792 () Bool)

(assert (= bs!1844792 (and d!2163396 b!6911195)))

(assert (=> bs!1844792 (not (= lambda!392747 lambda!392732))))

(declare-fun bs!1844793 () Bool)

(assert (= bs!1844793 (and d!2163396 b!6911193)))

(assert (=> bs!1844793 (not (= lambda!392747 lambda!392733))))

(declare-fun bs!1844794 () Bool)

(assert (= bs!1844794 (and d!2163396 b!6910961)))

(assert (=> bs!1844794 (not (= lambda!392747 lambda!392726))))

(declare-fun bs!1844795 () Bool)

(assert (= bs!1844795 (and d!2163396 b!6910992)))

(assert (=> bs!1844795 (not (= lambda!392747 lambda!392727))))

(assert (=> d!2163396 true))

(assert (=> d!2163396 true))

(assert (=> d!2163396 true))

(declare-fun lambda!392750 () Int)

(assert (=> bs!1844788 (not (= lambda!392750 lambda!392731))))

(assert (=> bs!1844789 (= (and (= (_2!37059 lt!2468558) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2468559)) (= lambda!392750 lambda!392718))))

(assert (=> bs!1844787 (= lambda!392750 lambda!392720)))

(assert (=> bs!1844790 (not (= lambda!392750 lambda!392725))))

(assert (=> bs!1844789 (not (= lambda!392750 lambda!392717))))

(assert (=> bs!1844791 (= (and (= (_2!37059 lt!2468558) s!14361) (= r2!6280 (regOne!34290 lt!2468557)) (= r3!135 (regTwo!34290 lt!2468557))) (= lambda!392750 lambda!392728))))

(declare-fun bs!1844796 () Bool)

(assert (= bs!1844796 d!2163396))

(assert (=> bs!1844796 (not (= lambda!392750 lambda!392747))))

(assert (=> bs!1844787 (not (= lambda!392750 lambda!392719))))

(assert (=> bs!1844792 (not (= lambda!392750 lambda!392732))))

(assert (=> bs!1844793 (= (and (= r2!6280 (regOne!34290 lt!2468559)) (= r3!135 (regTwo!34290 lt!2468559))) (= lambda!392750 lambda!392733))))

(assert (=> bs!1844794 (= (and (= (_2!37059 lt!2468558) s!14361) (= r2!6280 (regOne!34290 lt!2468563)) (= r3!135 (regTwo!34290 lt!2468563))) (= lambda!392750 lambda!392726))))

(assert (=> bs!1844795 (not (= lambda!392750 lambda!392727))))

(assert (=> d!2163396 true))

(assert (=> d!2163396 true))

(assert (=> d!2163396 true))

(assert (=> d!2163396 (= (Exists!3897 lambda!392747) (Exists!3897 lambda!392750))))

(declare-fun lt!2468617 () Unit!160514)

(declare-fun choose!51477 (Regex!16889 Regex!16889 List!66646) Unit!160514)

(assert (=> d!2163396 (= lt!2468617 (choose!51477 r2!6280 r3!135 (_2!37059 lt!2468558)))))

(assert (=> d!2163396 (validRegex!8597 r2!6280)))

(assert (=> d!2163396 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2370 r2!6280 r3!135 (_2!37059 lt!2468558)) lt!2468617)))

(declare-fun m!7625726 () Bool)

(assert (=> bs!1844796 m!7625726))

(declare-fun m!7625728 () Bool)

(assert (=> bs!1844796 m!7625728))

(declare-fun m!7625730 () Bool)

(assert (=> bs!1844796 m!7625730))

(assert (=> bs!1844796 m!7625484))

(assert (=> b!6910862 d!2163396))

(declare-fun d!2163400 () Bool)

(declare-fun isEmpty!38771 (Option!16668) Bool)

(assert (=> d!2163400 (= (isDefined!13371 lt!2468555) (not (isEmpty!38771 lt!2468555)))))

(declare-fun bs!1844797 () Bool)

(assert (= bs!1844797 d!2163400))

(declare-fun m!7625732 () Bool)

(assert (=> bs!1844797 m!7625732))

(assert (=> b!6910862 d!2163400))

(declare-fun bs!1844798 () Bool)

(declare-fun d!2163402 () Bool)

(assert (= bs!1844798 (and d!2163402 d!2163366)))

(declare-fun lambda!392753 () Int)

(assert (=> bs!1844798 (= (and (= s!14361 (_2!37059 lt!2468558)) (= r1!6342 r2!6280) (= lt!2468559 r3!135)) (= lambda!392753 lambda!392731))))

(declare-fun bs!1844799 () Bool)

(assert (= bs!1844799 (and d!2163402 b!6910867)))

(assert (=> bs!1844799 (not (= lambda!392753 lambda!392718))))

(declare-fun bs!1844800 () Bool)

(assert (= bs!1844800 (and d!2163402 b!6910862)))

(assert (=> bs!1844800 (not (= lambda!392753 lambda!392720))))

(declare-fun bs!1844801 () Bool)

(assert (= bs!1844801 (and d!2163402 b!6910963)))

(assert (=> bs!1844801 (not (= lambda!392753 lambda!392725))))

(assert (=> bs!1844799 (= lambda!392753 lambda!392717)))

(declare-fun bs!1844802 () Bool)

(assert (= bs!1844802 (and d!2163402 d!2163396)))

(assert (=> bs!1844802 (= (and (= s!14361 (_2!37059 lt!2468558)) (= r1!6342 r2!6280) (= lt!2468559 r3!135)) (= lambda!392753 lambda!392747))))

(assert (=> bs!1844800 (= (and (= s!14361 (_2!37059 lt!2468558)) (= r1!6342 r2!6280) (= lt!2468559 r3!135)) (= lambda!392753 lambda!392719))))

(declare-fun bs!1844803 () Bool)

(assert (= bs!1844803 (and d!2163402 b!6911195)))

(assert (=> bs!1844803 (not (= lambda!392753 lambda!392732))))

(declare-fun bs!1844804 () Bool)

(assert (= bs!1844804 (and d!2163402 b!6911193)))

(assert (=> bs!1844804 (not (= lambda!392753 lambda!392733))))

(declare-fun bs!1844805 () Bool)

(assert (= bs!1844805 (and d!2163402 b!6910990)))

(assert (=> bs!1844805 (not (= lambda!392753 lambda!392728))))

(assert (=> bs!1844802 (not (= lambda!392753 lambda!392750))))

(declare-fun bs!1844806 () Bool)

(assert (= bs!1844806 (and d!2163402 b!6910961)))

(assert (=> bs!1844806 (not (= lambda!392753 lambda!392726))))

(declare-fun bs!1844807 () Bool)

(assert (= bs!1844807 (and d!2163402 b!6910992)))

(assert (=> bs!1844807 (not (= lambda!392753 lambda!392727))))

(assert (=> d!2163402 true))

(assert (=> d!2163402 true))

(assert (=> d!2163402 true))

(assert (=> d!2163402 (= (isDefined!13371 (findConcatSeparation!3082 r1!6342 lt!2468559 Nil!66522 s!14361 s!14361)) (Exists!3897 lambda!392753))))

(declare-fun lt!2468618 () Unit!160514)

(assert (=> d!2163402 (= lt!2468618 (choose!51476 r1!6342 lt!2468559 s!14361))))

(assert (=> d!2163402 (validRegex!8597 r1!6342)))

(assert (=> d!2163402 (= (lemmaFindConcatSeparationEquivalentToExists!2844 r1!6342 lt!2468559 s!14361) lt!2468618)))

(declare-fun bs!1844808 () Bool)

(assert (= bs!1844808 d!2163402))

(declare-fun m!7625734 () Bool)

(assert (=> bs!1844808 m!7625734))

(assert (=> bs!1844808 m!7625462))

(assert (=> bs!1844808 m!7625482))

(assert (=> bs!1844808 m!7625482))

(declare-fun m!7625736 () Bool)

(assert (=> bs!1844808 m!7625736))

(declare-fun m!7625738 () Bool)

(assert (=> bs!1844808 m!7625738))

(assert (=> b!6910867 d!2163402))

(declare-fun bs!1844809 () Bool)

(declare-fun d!2163404 () Bool)

(assert (= bs!1844809 (and d!2163404 d!2163366)))

(declare-fun lambda!392754 () Int)

(assert (=> bs!1844809 (= (and (= s!14361 (_2!37059 lt!2468558)) (= r1!6342 r2!6280) (= lt!2468559 r3!135)) (= lambda!392754 lambda!392731))))

(declare-fun bs!1844810 () Bool)

(assert (= bs!1844810 (and d!2163404 b!6910867)))

(assert (=> bs!1844810 (not (= lambda!392754 lambda!392718))))

(declare-fun bs!1844811 () Bool)

(assert (= bs!1844811 (and d!2163404 b!6910862)))

(assert (=> bs!1844811 (not (= lambda!392754 lambda!392720))))

(declare-fun bs!1844812 () Bool)

(assert (= bs!1844812 (and d!2163404 b!6910963)))

(assert (=> bs!1844812 (not (= lambda!392754 lambda!392725))))

(assert (=> bs!1844810 (= lambda!392754 lambda!392717)))

(declare-fun bs!1844813 () Bool)

(assert (= bs!1844813 (and d!2163404 d!2163396)))

(assert (=> bs!1844813 (= (and (= s!14361 (_2!37059 lt!2468558)) (= r1!6342 r2!6280) (= lt!2468559 r3!135)) (= lambda!392754 lambda!392747))))

(assert (=> bs!1844811 (= (and (= s!14361 (_2!37059 lt!2468558)) (= r1!6342 r2!6280) (= lt!2468559 r3!135)) (= lambda!392754 lambda!392719))))

(declare-fun bs!1844814 () Bool)

(assert (= bs!1844814 (and d!2163404 b!6911195)))

(assert (=> bs!1844814 (not (= lambda!392754 lambda!392732))))

(declare-fun bs!1844815 () Bool)

(assert (= bs!1844815 (and d!2163404 b!6911193)))

(assert (=> bs!1844815 (not (= lambda!392754 lambda!392733))))

(declare-fun bs!1844816 () Bool)

(assert (= bs!1844816 (and d!2163404 b!6910990)))

(assert (=> bs!1844816 (not (= lambda!392754 lambda!392728))))

(assert (=> bs!1844813 (not (= lambda!392754 lambda!392750))))

(declare-fun bs!1844819 () Bool)

(assert (= bs!1844819 (and d!2163404 d!2163402)))

(assert (=> bs!1844819 (= lambda!392754 lambda!392753)))

(declare-fun bs!1844821 () Bool)

(assert (= bs!1844821 (and d!2163404 b!6910961)))

(assert (=> bs!1844821 (not (= lambda!392754 lambda!392726))))

(declare-fun bs!1844822 () Bool)

(assert (= bs!1844822 (and d!2163404 b!6910992)))

(assert (=> bs!1844822 (not (= lambda!392754 lambda!392727))))

(assert (=> d!2163404 true))

(assert (=> d!2163404 true))

(assert (=> d!2163404 true))

(declare-fun lambda!392756 () Int)

(assert (=> bs!1844809 (not (= lambda!392756 lambda!392731))))

(assert (=> bs!1844810 (= lambda!392756 lambda!392718)))

(declare-fun bs!1844824 () Bool)

(assert (= bs!1844824 d!2163404))

(assert (=> bs!1844824 (not (= lambda!392756 lambda!392754))))

(assert (=> bs!1844811 (= (and (= s!14361 (_2!37059 lt!2468558)) (= r1!6342 r2!6280) (= lt!2468559 r3!135)) (= lambda!392756 lambda!392720))))

(assert (=> bs!1844812 (not (= lambda!392756 lambda!392725))))

(assert (=> bs!1844810 (not (= lambda!392756 lambda!392717))))

(assert (=> bs!1844813 (not (= lambda!392756 lambda!392747))))

(assert (=> bs!1844811 (not (= lambda!392756 lambda!392719))))

(assert (=> bs!1844814 (not (= lambda!392756 lambda!392732))))

(assert (=> bs!1844815 (= (and (= s!14361 (_2!37059 lt!2468558)) (= r1!6342 (regOne!34290 lt!2468559)) (= lt!2468559 (regTwo!34290 lt!2468559))) (= lambda!392756 lambda!392733))))

(assert (=> bs!1844816 (= (and (= r1!6342 (regOne!34290 lt!2468557)) (= lt!2468559 (regTwo!34290 lt!2468557))) (= lambda!392756 lambda!392728))))

(assert (=> bs!1844813 (= (and (= s!14361 (_2!37059 lt!2468558)) (= r1!6342 r2!6280) (= lt!2468559 r3!135)) (= lambda!392756 lambda!392750))))

(assert (=> bs!1844819 (not (= lambda!392756 lambda!392753))))

(assert (=> bs!1844821 (= (and (= r1!6342 (regOne!34290 lt!2468563)) (= lt!2468559 (regTwo!34290 lt!2468563))) (= lambda!392756 lambda!392726))))

(assert (=> bs!1844822 (not (= lambda!392756 lambda!392727))))

(assert (=> d!2163404 true))

(assert (=> d!2163404 true))

(assert (=> d!2163404 true))

(assert (=> d!2163404 (= (Exists!3897 lambda!392754) (Exists!3897 lambda!392756))))

(declare-fun lt!2468619 () Unit!160514)

(assert (=> d!2163404 (= lt!2468619 (choose!51477 r1!6342 lt!2468559 s!14361))))

(assert (=> d!2163404 (validRegex!8597 r1!6342)))

(assert (=> d!2163404 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2370 r1!6342 lt!2468559 s!14361) lt!2468619)))

(declare-fun m!7625740 () Bool)

(assert (=> bs!1844824 m!7625740))

(declare-fun m!7625742 () Bool)

(assert (=> bs!1844824 m!7625742))

(declare-fun m!7625744 () Bool)

(assert (=> bs!1844824 m!7625744))

(assert (=> bs!1844824 m!7625462))

(assert (=> b!6910867 d!2163404))

(declare-fun b!6911315 () Bool)

(declare-fun res!2818606 () Bool)

(declare-fun e!4161054 () Bool)

(assert (=> b!6911315 (=> res!2818606 e!4161054)))

(declare-fun e!4161057 () Bool)

(assert (=> b!6911315 (= res!2818606 e!4161057)))

(declare-fun res!2818600 () Bool)

(assert (=> b!6911315 (=> (not res!2818600) (not e!4161057))))

(declare-fun lt!2468620 () Bool)

(assert (=> b!6911315 (= res!2818600 lt!2468620)))

(declare-fun b!6911316 () Bool)

(declare-fun res!2818607 () Bool)

(assert (=> b!6911316 (=> (not res!2818607) (not e!4161057))))

(assert (=> b!6911316 (= res!2818607 (isEmpty!38768 (tail!12911 (_1!37059 lt!2468558))))))

(declare-fun b!6911317 () Bool)

(declare-fun e!4161053 () Bool)

(assert (=> b!6911317 (= e!4161053 (not (= (head!13859 (_1!37059 lt!2468558)) (c!1283655 r1!6342))))))

(declare-fun b!6911318 () Bool)

(declare-fun e!4161052 () Bool)

(assert (=> b!6911318 (= e!4161052 e!4161053)))

(declare-fun res!2818602 () Bool)

(assert (=> b!6911318 (=> res!2818602 e!4161053)))

(declare-fun call!628373 () Bool)

(assert (=> b!6911318 (= res!2818602 call!628373)))

(declare-fun b!6911319 () Bool)

(assert (=> b!6911319 (= e!4161057 (= (head!13859 (_1!37059 lt!2468558)) (c!1283655 r1!6342)))))

(declare-fun b!6911320 () Bool)

(declare-fun res!2818601 () Bool)

(assert (=> b!6911320 (=> res!2818601 e!4161054)))

(assert (=> b!6911320 (= res!2818601 (not ((_ is ElementMatch!16889) r1!6342)))))

(declare-fun e!4161058 () Bool)

(assert (=> b!6911320 (= e!4161058 e!4161054)))

(declare-fun d!2163406 () Bool)

(declare-fun e!4161056 () Bool)

(assert (=> d!2163406 e!4161056))

(declare-fun c!1283754 () Bool)

(assert (=> d!2163406 (= c!1283754 ((_ is EmptyExpr!16889) r1!6342))))

(declare-fun e!4161055 () Bool)

(assert (=> d!2163406 (= lt!2468620 e!4161055)))

(declare-fun c!1283756 () Bool)

(assert (=> d!2163406 (= c!1283756 (isEmpty!38768 (_1!37059 lt!2468558)))))

(assert (=> d!2163406 (validRegex!8597 r1!6342)))

(assert (=> d!2163406 (= (matchR!9034 r1!6342 (_1!37059 lt!2468558)) lt!2468620)))

(declare-fun b!6911321 () Bool)

(assert (=> b!6911321 (= e!4161056 e!4161058)))

(declare-fun c!1283755 () Bool)

(assert (=> b!6911321 (= c!1283755 ((_ is EmptyLang!16889) r1!6342))))

(declare-fun b!6911322 () Bool)

(declare-fun res!2818604 () Bool)

(assert (=> b!6911322 (=> (not res!2818604) (not e!4161057))))

(assert (=> b!6911322 (= res!2818604 (not call!628373))))

(declare-fun b!6911323 () Bool)

(assert (=> b!6911323 (= e!4161058 (not lt!2468620))))

(declare-fun b!6911324 () Bool)

(assert (=> b!6911324 (= e!4161055 (matchR!9034 (derivativeStep!5406 r1!6342 (head!13859 (_1!37059 lt!2468558))) (tail!12911 (_1!37059 lt!2468558))))))

(declare-fun b!6911325 () Bool)

(assert (=> b!6911325 (= e!4161055 (nullable!6727 r1!6342))))

(declare-fun b!6911326 () Bool)

(assert (=> b!6911326 (= e!4161054 e!4161052)))

(declare-fun res!2818605 () Bool)

(assert (=> b!6911326 (=> (not res!2818605) (not e!4161052))))

(assert (=> b!6911326 (= res!2818605 (not lt!2468620))))

(declare-fun bm!628368 () Bool)

(assert (=> bm!628368 (= call!628373 (isEmpty!38768 (_1!37059 lt!2468558)))))

(declare-fun b!6911327 () Bool)

(assert (=> b!6911327 (= e!4161056 (= lt!2468620 call!628373))))

(declare-fun b!6911328 () Bool)

(declare-fun res!2818603 () Bool)

(assert (=> b!6911328 (=> res!2818603 e!4161053)))

(assert (=> b!6911328 (= res!2818603 (not (isEmpty!38768 (tail!12911 (_1!37059 lt!2468558)))))))

(assert (= (and d!2163406 c!1283756) b!6911325))

(assert (= (and d!2163406 (not c!1283756)) b!6911324))

(assert (= (and d!2163406 c!1283754) b!6911327))

(assert (= (and d!2163406 (not c!1283754)) b!6911321))

(assert (= (and b!6911321 c!1283755) b!6911323))

(assert (= (and b!6911321 (not c!1283755)) b!6911320))

(assert (= (and b!6911320 (not res!2818601)) b!6911315))

(assert (= (and b!6911315 res!2818600) b!6911322))

(assert (= (and b!6911322 res!2818604) b!6911316))

(assert (= (and b!6911316 res!2818607) b!6911319))

(assert (= (and b!6911315 (not res!2818606)) b!6911326))

(assert (= (and b!6911326 res!2818605) b!6911318))

(assert (= (and b!6911318 (not res!2818602)) b!6911328))

(assert (= (and b!6911328 (not res!2818603)) b!6911317))

(assert (= (or b!6911327 b!6911318 b!6911322) bm!628368))

(declare-fun m!7625754 () Bool)

(assert (=> b!6911319 m!7625754))

(declare-fun m!7625756 () Bool)

(assert (=> d!2163406 m!7625756))

(assert (=> d!2163406 m!7625462))

(assert (=> b!6911317 m!7625754))

(assert (=> b!6911324 m!7625754))

(assert (=> b!6911324 m!7625754))

(declare-fun m!7625758 () Bool)

(assert (=> b!6911324 m!7625758))

(declare-fun m!7625760 () Bool)

(assert (=> b!6911324 m!7625760))

(assert (=> b!6911324 m!7625758))

(assert (=> b!6911324 m!7625760))

(declare-fun m!7625762 () Bool)

(assert (=> b!6911324 m!7625762))

(assert (=> b!6911316 m!7625760))

(assert (=> b!6911316 m!7625760))

(declare-fun m!7625764 () Bool)

(assert (=> b!6911316 m!7625764))

(declare-fun m!7625766 () Bool)

(assert (=> b!6911325 m!7625766))

(assert (=> b!6911328 m!7625760))

(assert (=> b!6911328 m!7625760))

(assert (=> b!6911328 m!7625764))

(assert (=> bm!628368 m!7625756))

(assert (=> b!6910867 d!2163406))

(declare-fun d!2163414 () Bool)

(assert (=> d!2163414 (= (matchR!9034 r1!6342 (_1!37059 lt!2468558)) (matchRSpec!3952 r1!6342 (_1!37059 lt!2468558)))))

(declare-fun lt!2468622 () Unit!160514)

(assert (=> d!2163414 (= lt!2468622 (choose!51470 r1!6342 (_1!37059 lt!2468558)))))

(assert (=> d!2163414 (validRegex!8597 r1!6342)))

(assert (=> d!2163414 (= (mainMatchTheorem!3952 r1!6342 (_1!37059 lt!2468558)) lt!2468622)))

(declare-fun bs!1844831 () Bool)

(assert (= bs!1844831 d!2163414))

(assert (=> bs!1844831 m!7625468))

(assert (=> bs!1844831 m!7625472))

(declare-fun m!7625768 () Bool)

(assert (=> bs!1844831 m!7625768))

(assert (=> bs!1844831 m!7625462))

(assert (=> b!6910867 d!2163414))

(declare-fun d!2163416 () Bool)

(assert (=> d!2163416 (= (get!23284 lt!2468564) (v!52939 lt!2468564))))

(assert (=> b!6910867 d!2163416))

(declare-fun d!2163418 () Bool)

(assert (=> d!2163418 (= (Exists!3897 lambda!392718) (choose!51475 lambda!392718))))

(declare-fun bs!1844832 () Bool)

(assert (= bs!1844832 d!2163418))

(declare-fun m!7625770 () Bool)

(assert (=> bs!1844832 m!7625770))

(assert (=> b!6910867 d!2163418))

(declare-fun d!2163420 () Bool)

(assert (=> d!2163420 (= (Exists!3897 lambda!392717) (choose!51475 lambda!392717))))

(declare-fun bs!1844833 () Bool)

(assert (= bs!1844833 d!2163420))

(declare-fun m!7625772 () Bool)

(assert (=> bs!1844833 m!7625772))

(assert (=> b!6910867 d!2163420))

(declare-fun bs!1844834 () Bool)

(declare-fun b!6911352 () Bool)

(assert (= bs!1844834 (and b!6911352 d!2163366)))

(declare-fun lambda!392758 () Int)

(assert (=> bs!1844834 (not (= lambda!392758 lambda!392731))))

(declare-fun bs!1844835 () Bool)

(assert (= bs!1844835 (and b!6911352 b!6910867)))

(assert (=> bs!1844835 (not (= lambda!392758 lambda!392718))))

(declare-fun bs!1844836 () Bool)

(assert (= bs!1844836 (and b!6911352 d!2163404)))

(assert (=> bs!1844836 (not (= lambda!392758 lambda!392756))))

(assert (=> bs!1844836 (not (= lambda!392758 lambda!392754))))

(declare-fun bs!1844838 () Bool)

(assert (= bs!1844838 (and b!6911352 b!6910862)))

(assert (=> bs!1844838 (not (= lambda!392758 lambda!392720))))

(declare-fun bs!1844840 () Bool)

(assert (= bs!1844840 (and b!6911352 b!6910963)))

(assert (=> bs!1844840 (= (and (= (_1!37059 lt!2468558) s!14361) (= (reg!17218 r1!6342) (reg!17218 lt!2468563)) (= r1!6342 lt!2468563)) (= lambda!392758 lambda!392725))))

(assert (=> bs!1844835 (not (= lambda!392758 lambda!392717))))

(declare-fun bs!1844843 () Bool)

(assert (= bs!1844843 (and b!6911352 d!2163396)))

(assert (=> bs!1844843 (not (= lambda!392758 lambda!392747))))

(assert (=> bs!1844838 (not (= lambda!392758 lambda!392719))))

(declare-fun bs!1844845 () Bool)

(assert (= bs!1844845 (and b!6911352 b!6911195)))

(assert (=> bs!1844845 (= (and (= (_1!37059 lt!2468558) (_2!37059 lt!2468558)) (= (reg!17218 r1!6342) (reg!17218 lt!2468559)) (= r1!6342 lt!2468559)) (= lambda!392758 lambda!392732))))

(declare-fun bs!1844846 () Bool)

(assert (= bs!1844846 (and b!6911352 b!6911193)))

(assert (=> bs!1844846 (not (= lambda!392758 lambda!392733))))

(declare-fun bs!1844847 () Bool)

(assert (= bs!1844847 (and b!6911352 b!6910990)))

(assert (=> bs!1844847 (not (= lambda!392758 lambda!392728))))

(assert (=> bs!1844843 (not (= lambda!392758 lambda!392750))))

(declare-fun bs!1844849 () Bool)

(assert (= bs!1844849 (and b!6911352 d!2163402)))

(assert (=> bs!1844849 (not (= lambda!392758 lambda!392753))))

(declare-fun bs!1844850 () Bool)

(assert (= bs!1844850 (and b!6911352 b!6910961)))

(assert (=> bs!1844850 (not (= lambda!392758 lambda!392726))))

(declare-fun bs!1844851 () Bool)

(assert (= bs!1844851 (and b!6911352 b!6910992)))

(assert (=> bs!1844851 (= (and (= (_1!37059 lt!2468558) s!14361) (= (reg!17218 r1!6342) (reg!17218 lt!2468557)) (= r1!6342 lt!2468557)) (= lambda!392758 lambda!392727))))

(assert (=> b!6911352 true))

(assert (=> b!6911352 true))

(declare-fun bs!1844855 () Bool)

(declare-fun b!6911350 () Bool)

(assert (= bs!1844855 (and b!6911350 d!2163366)))

(declare-fun lambda!392761 () Int)

(assert (=> bs!1844855 (not (= lambda!392761 lambda!392731))))

(declare-fun bs!1844857 () Bool)

(assert (= bs!1844857 (and b!6911350 b!6910867)))

(assert (=> bs!1844857 (= (and (= (_1!37059 lt!2468558) s!14361) (= (regOne!34290 r1!6342) r1!6342) (= (regTwo!34290 r1!6342) lt!2468559)) (= lambda!392761 lambda!392718))))

(declare-fun bs!1844859 () Bool)

(assert (= bs!1844859 (and b!6911350 d!2163404)))

(assert (=> bs!1844859 (= (and (= (_1!37059 lt!2468558) s!14361) (= (regOne!34290 r1!6342) r1!6342) (= (regTwo!34290 r1!6342) lt!2468559)) (= lambda!392761 lambda!392756))))

(assert (=> bs!1844859 (not (= lambda!392761 lambda!392754))))

(declare-fun bs!1844861 () Bool)

(assert (= bs!1844861 (and b!6911350 b!6910862)))

(assert (=> bs!1844861 (= (and (= (_1!37059 lt!2468558) (_2!37059 lt!2468558)) (= (regOne!34290 r1!6342) r2!6280) (= (regTwo!34290 r1!6342) r3!135)) (= lambda!392761 lambda!392720))))

(declare-fun bs!1844862 () Bool)

(assert (= bs!1844862 (and b!6911350 b!6910963)))

(assert (=> bs!1844862 (not (= lambda!392761 lambda!392725))))

(declare-fun bs!1844864 () Bool)

(assert (= bs!1844864 (and b!6911350 d!2163396)))

(assert (=> bs!1844864 (not (= lambda!392761 lambda!392747))))

(assert (=> bs!1844861 (not (= lambda!392761 lambda!392719))))

(assert (=> bs!1844857 (not (= lambda!392761 lambda!392717))))

(declare-fun bs!1844865 () Bool)

(assert (= bs!1844865 (and b!6911350 b!6911352)))

(assert (=> bs!1844865 (not (= lambda!392761 lambda!392758))))

(declare-fun bs!1844866 () Bool)

(assert (= bs!1844866 (and b!6911350 b!6911195)))

(assert (=> bs!1844866 (not (= lambda!392761 lambda!392732))))

(declare-fun bs!1844867 () Bool)

(assert (= bs!1844867 (and b!6911350 b!6911193)))

(assert (=> bs!1844867 (= (and (= (_1!37059 lt!2468558) (_2!37059 lt!2468558)) (= (regOne!34290 r1!6342) (regOne!34290 lt!2468559)) (= (regTwo!34290 r1!6342) (regTwo!34290 lt!2468559))) (= lambda!392761 lambda!392733))))

(declare-fun bs!1844868 () Bool)

(assert (= bs!1844868 (and b!6911350 b!6910990)))

(assert (=> bs!1844868 (= (and (= (_1!37059 lt!2468558) s!14361) (= (regOne!34290 r1!6342) (regOne!34290 lt!2468557)) (= (regTwo!34290 r1!6342) (regTwo!34290 lt!2468557))) (= lambda!392761 lambda!392728))))

(assert (=> bs!1844864 (= (and (= (_1!37059 lt!2468558) (_2!37059 lt!2468558)) (= (regOne!34290 r1!6342) r2!6280) (= (regTwo!34290 r1!6342) r3!135)) (= lambda!392761 lambda!392750))))

(declare-fun bs!1844869 () Bool)

(assert (= bs!1844869 (and b!6911350 d!2163402)))

(assert (=> bs!1844869 (not (= lambda!392761 lambda!392753))))

(declare-fun bs!1844871 () Bool)

(assert (= bs!1844871 (and b!6911350 b!6910961)))

(assert (=> bs!1844871 (= (and (= (_1!37059 lt!2468558) s!14361) (= (regOne!34290 r1!6342) (regOne!34290 lt!2468563)) (= (regTwo!34290 r1!6342) (regTwo!34290 lt!2468563))) (= lambda!392761 lambda!392726))))

(declare-fun bs!1844872 () Bool)

(assert (= bs!1844872 (and b!6911350 b!6910992)))

(assert (=> bs!1844872 (not (= lambda!392761 lambda!392727))))

(assert (=> b!6911350 true))

(assert (=> b!6911350 true))

(declare-fun b!6911343 () Bool)

(declare-fun e!4161072 () Bool)

(declare-fun e!4161067 () Bool)

(assert (=> b!6911343 (= e!4161072 e!4161067)))

(declare-fun res!2818618 () Bool)

(assert (=> b!6911343 (= res!2818618 (matchRSpec!3952 (regOne!34291 r1!6342) (_1!37059 lt!2468558)))))

(assert (=> b!6911343 (=> res!2818618 e!4161067)))

(declare-fun b!6911344 () Bool)

(declare-fun c!1283761 () Bool)

(assert (=> b!6911344 (= c!1283761 ((_ is ElementMatch!16889) r1!6342))))

(declare-fun e!4161066 () Bool)

(declare-fun e!4161069 () Bool)

(assert (=> b!6911344 (= e!4161066 e!4161069)))

(declare-fun b!6911345 () Bool)

(declare-fun c!1283760 () Bool)

(assert (=> b!6911345 (= c!1283760 ((_ is Union!16889) r1!6342))))

(assert (=> b!6911345 (= e!4161069 e!4161072)))

(declare-fun d!2163422 () Bool)

(declare-fun c!1283763 () Bool)

(assert (=> d!2163422 (= c!1283763 ((_ is EmptyExpr!16889) r1!6342))))

(declare-fun e!4161070 () Bool)

(assert (=> d!2163422 (= (matchRSpec!3952 r1!6342 (_1!37059 lt!2468558)) e!4161070)))

(declare-fun b!6911346 () Bool)

(assert (=> b!6911346 (= e!4161069 (= (_1!37059 lt!2468558) (Cons!66522 (c!1283655 r1!6342) Nil!66522)))))

(declare-fun b!6911347 () Bool)

(declare-fun call!628376 () Bool)

(assert (=> b!6911347 (= e!4161070 call!628376)))

(declare-fun call!628375 () Bool)

(declare-fun bm!628370 () Bool)

(declare-fun c!1283762 () Bool)

(assert (=> bm!628370 (= call!628375 (Exists!3897 (ite c!1283762 lambda!392758 lambda!392761)))))

(declare-fun b!6911348 () Bool)

(assert (=> b!6911348 (= e!4161067 (matchRSpec!3952 (regTwo!34291 r1!6342) (_1!37059 lt!2468558)))))

(declare-fun b!6911349 () Bool)

(assert (=> b!6911349 (= e!4161070 e!4161066)))

(declare-fun res!2818617 () Bool)

(assert (=> b!6911349 (= res!2818617 (not ((_ is EmptyLang!16889) r1!6342)))))

(assert (=> b!6911349 (=> (not res!2818617) (not e!4161066))))

(declare-fun e!4161071 () Bool)

(assert (=> b!6911350 (= e!4161071 call!628375)))

(declare-fun b!6911351 () Bool)

(declare-fun res!2818616 () Bool)

(declare-fun e!4161068 () Bool)

(assert (=> b!6911351 (=> res!2818616 e!4161068)))

(assert (=> b!6911351 (= res!2818616 call!628376)))

(assert (=> b!6911351 (= e!4161071 e!4161068)))

(declare-fun bm!628371 () Bool)

(assert (=> bm!628371 (= call!628376 (isEmpty!38768 (_1!37059 lt!2468558)))))

(assert (=> b!6911352 (= e!4161068 call!628375)))

(declare-fun b!6911353 () Bool)

(assert (=> b!6911353 (= e!4161072 e!4161071)))

(assert (=> b!6911353 (= c!1283762 ((_ is Star!16889) r1!6342))))

(assert (= (and d!2163422 c!1283763) b!6911347))

(assert (= (and d!2163422 (not c!1283763)) b!6911349))

(assert (= (and b!6911349 res!2818617) b!6911344))

(assert (= (and b!6911344 c!1283761) b!6911346))

(assert (= (and b!6911344 (not c!1283761)) b!6911345))

(assert (= (and b!6911345 c!1283760) b!6911343))

(assert (= (and b!6911345 (not c!1283760)) b!6911353))

(assert (= (and b!6911343 (not res!2818618)) b!6911348))

(assert (= (and b!6911353 c!1283762) b!6911351))

(assert (= (and b!6911353 (not c!1283762)) b!6911350))

(assert (= (and b!6911351 (not res!2818616)) b!6911352))

(assert (= (or b!6911352 b!6911350) bm!628370))

(assert (= (or b!6911347 b!6911351) bm!628371))

(declare-fun m!7625798 () Bool)

(assert (=> b!6911343 m!7625798))

(declare-fun m!7625800 () Bool)

(assert (=> bm!628370 m!7625800))

(declare-fun m!7625802 () Bool)

(assert (=> b!6911348 m!7625802))

(assert (=> bm!628371 m!7625756))

(assert (=> b!6910867 d!2163422))

(declare-fun d!2163430 () Bool)

(assert (=> d!2163430 (= (isDefined!13371 lt!2468564) (not (isEmpty!38771 lt!2468564)))))

(declare-fun bs!1844875 () Bool)

(assert (= bs!1844875 d!2163430))

(declare-fun m!7625804 () Bool)

(assert (=> bs!1844875 m!7625804))

(assert (=> b!6910865 d!2163430))

(declare-fun b!6911376 () Bool)

(declare-fun lt!2468625 () Unit!160514)

(declare-fun lt!2468624 () Unit!160514)

(assert (=> b!6911376 (= lt!2468625 lt!2468624)))

(assert (=> b!6911376 (= (++!14942 (++!14942 Nil!66522 (Cons!66522 (h!72970 s!14361) Nil!66522)) (t!380389 s!14361)) s!14361)))

(assert (=> b!6911376 (= lt!2468624 (lemmaMoveElementToOtherListKeepsConcatEq!2815 Nil!66522 (h!72970 s!14361) (t!380389 s!14361) s!14361))))

(declare-fun e!4161088 () Option!16668)

(assert (=> b!6911376 (= e!4161088 (findConcatSeparation!3082 r1!6342 lt!2468559 (++!14942 Nil!66522 (Cons!66522 (h!72970 s!14361) Nil!66522)) (t!380389 s!14361) s!14361))))

(declare-fun b!6911378 () Bool)

(assert (=> b!6911378 (= e!4161088 None!16667)))

(declare-fun b!6911379 () Bool)

(declare-fun e!4161089 () Bool)

(declare-fun lt!2468626 () Option!16668)

(assert (=> b!6911379 (= e!4161089 (= (++!14942 (_1!37059 (get!23284 lt!2468626)) (_2!37059 (get!23284 lt!2468626))) s!14361))))

(declare-fun b!6911380 () Bool)

(declare-fun e!4161090 () Bool)

(assert (=> b!6911380 (= e!4161090 (matchR!9034 lt!2468559 s!14361))))

(declare-fun b!6911381 () Bool)

(declare-fun e!4161087 () Option!16668)

(assert (=> b!6911381 (= e!4161087 e!4161088)))

(declare-fun c!1283773 () Bool)

(assert (=> b!6911381 (= c!1283773 ((_ is Nil!66522) s!14361))))

(declare-fun b!6911382 () Bool)

(assert (=> b!6911382 (= e!4161087 (Some!16667 (tuple2!67513 Nil!66522 s!14361)))))

(declare-fun b!6911377 () Bool)

(declare-fun res!2818629 () Bool)

(assert (=> b!6911377 (=> (not res!2818629) (not e!4161089))))

(assert (=> b!6911377 (= res!2818629 (matchR!9034 r1!6342 (_1!37059 (get!23284 lt!2468626))))))

(declare-fun d!2163432 () Bool)

(declare-fun e!4161091 () Bool)

(assert (=> d!2163432 e!4161091))

(declare-fun res!2818628 () Bool)

(assert (=> d!2163432 (=> res!2818628 e!4161091)))

(assert (=> d!2163432 (= res!2818628 e!4161089)))

(declare-fun res!2818627 () Bool)

(assert (=> d!2163432 (=> (not res!2818627) (not e!4161089))))

(assert (=> d!2163432 (= res!2818627 (isDefined!13371 lt!2468626))))

(assert (=> d!2163432 (= lt!2468626 e!4161087)))

(declare-fun c!1283772 () Bool)

(assert (=> d!2163432 (= c!1283772 e!4161090)))

(declare-fun res!2818625 () Bool)

(assert (=> d!2163432 (=> (not res!2818625) (not e!4161090))))

(assert (=> d!2163432 (= res!2818625 (matchR!9034 r1!6342 Nil!66522))))

(assert (=> d!2163432 (validRegex!8597 r1!6342)))

(assert (=> d!2163432 (= (findConcatSeparation!3082 r1!6342 lt!2468559 Nil!66522 s!14361 s!14361) lt!2468626)))

(declare-fun b!6911383 () Bool)

(declare-fun res!2818626 () Bool)

(assert (=> b!6911383 (=> (not res!2818626) (not e!4161089))))

(assert (=> b!6911383 (= res!2818626 (matchR!9034 lt!2468559 (_2!37059 (get!23284 lt!2468626))))))

(declare-fun b!6911384 () Bool)

(assert (=> b!6911384 (= e!4161091 (not (isDefined!13371 lt!2468626)))))

(assert (= (and d!2163432 res!2818625) b!6911380))

(assert (= (and d!2163432 c!1283772) b!6911382))

(assert (= (and d!2163432 (not c!1283772)) b!6911381))

(assert (= (and b!6911381 c!1283773) b!6911378))

(assert (= (and b!6911381 (not c!1283773)) b!6911376))

(assert (= (and d!2163432 res!2818627) b!6911377))

(assert (= (and b!6911377 res!2818629) b!6911383))

(assert (= (and b!6911383 res!2818626) b!6911379))

(assert (= (and d!2163432 (not res!2818628)) b!6911384))

(declare-fun m!7625806 () Bool)

(assert (=> b!6911379 m!7625806))

(declare-fun m!7625808 () Bool)

(assert (=> b!6911379 m!7625808))

(assert (=> b!6911377 m!7625806))

(declare-fun m!7625810 () Bool)

(assert (=> b!6911377 m!7625810))

(declare-fun m!7625812 () Bool)

(assert (=> b!6911380 m!7625812))

(assert (=> b!6911383 m!7625806))

(declare-fun m!7625814 () Bool)

(assert (=> b!6911383 m!7625814))

(declare-fun m!7625816 () Bool)

(assert (=> b!6911384 m!7625816))

(declare-fun m!7625818 () Bool)

(assert (=> b!6911376 m!7625818))

(assert (=> b!6911376 m!7625818))

(declare-fun m!7625820 () Bool)

(assert (=> b!6911376 m!7625820))

(declare-fun m!7625822 () Bool)

(assert (=> b!6911376 m!7625822))

(assert (=> b!6911376 m!7625818))

(declare-fun m!7625824 () Bool)

(assert (=> b!6911376 m!7625824))

(assert (=> d!2163432 m!7625816))

(declare-fun m!7625826 () Bool)

(assert (=> d!2163432 m!7625826))

(assert (=> d!2163432 m!7625462))

(assert (=> b!6910865 d!2163432))

(declare-fun b!6911398 () Bool)

(declare-fun e!4161094 () Bool)

(declare-fun tp!1903140 () Bool)

(declare-fun tp!1903141 () Bool)

(assert (=> b!6911398 (= e!4161094 (and tp!1903140 tp!1903141))))

(assert (=> b!6910864 (= tp!1903123 e!4161094)))

(declare-fun b!6911395 () Bool)

(assert (=> b!6911395 (= e!4161094 tp_is_empty!43003)))

(declare-fun b!6911397 () Bool)

(declare-fun tp!1903139 () Bool)

(assert (=> b!6911397 (= e!4161094 tp!1903139)))

(declare-fun b!6911396 () Bool)

(declare-fun tp!1903138 () Bool)

(declare-fun tp!1903142 () Bool)

(assert (=> b!6911396 (= e!4161094 (and tp!1903138 tp!1903142))))

(assert (= (and b!6910864 ((_ is ElementMatch!16889) (reg!17218 r1!6342))) b!6911395))

(assert (= (and b!6910864 ((_ is Concat!25734) (reg!17218 r1!6342))) b!6911396))

(assert (= (and b!6910864 ((_ is Star!16889) (reg!17218 r1!6342))) b!6911397))

(assert (= (and b!6910864 ((_ is Union!16889) (reg!17218 r1!6342))) b!6911398))

(declare-fun b!6911402 () Bool)

(declare-fun e!4161095 () Bool)

(declare-fun tp!1903145 () Bool)

(declare-fun tp!1903146 () Bool)

(assert (=> b!6911402 (= e!4161095 (and tp!1903145 tp!1903146))))

(assert (=> b!6910869 (= tp!1903127 e!4161095)))

(declare-fun b!6911399 () Bool)

(assert (=> b!6911399 (= e!4161095 tp_is_empty!43003)))

(declare-fun b!6911401 () Bool)

(declare-fun tp!1903144 () Bool)

(assert (=> b!6911401 (= e!4161095 tp!1903144)))

(declare-fun b!6911400 () Bool)

(declare-fun tp!1903143 () Bool)

(declare-fun tp!1903147 () Bool)

(assert (=> b!6911400 (= e!4161095 (and tp!1903143 tp!1903147))))

(assert (= (and b!6910869 ((_ is ElementMatch!16889) (regOne!34291 r3!135))) b!6911399))

(assert (= (and b!6910869 ((_ is Concat!25734) (regOne!34291 r3!135))) b!6911400))

(assert (= (and b!6910869 ((_ is Star!16889) (regOne!34291 r3!135))) b!6911401))

(assert (= (and b!6910869 ((_ is Union!16889) (regOne!34291 r3!135))) b!6911402))

(declare-fun b!6911406 () Bool)

(declare-fun e!4161096 () Bool)

(declare-fun tp!1903150 () Bool)

(declare-fun tp!1903151 () Bool)

(assert (=> b!6911406 (= e!4161096 (and tp!1903150 tp!1903151))))

(assert (=> b!6910869 (= tp!1903114 e!4161096)))

(declare-fun b!6911403 () Bool)

(assert (=> b!6911403 (= e!4161096 tp_is_empty!43003)))

(declare-fun b!6911405 () Bool)

(declare-fun tp!1903149 () Bool)

(assert (=> b!6911405 (= e!4161096 tp!1903149)))

(declare-fun b!6911404 () Bool)

(declare-fun tp!1903148 () Bool)

(declare-fun tp!1903152 () Bool)

(assert (=> b!6911404 (= e!4161096 (and tp!1903148 tp!1903152))))

(assert (= (and b!6910869 ((_ is ElementMatch!16889) (regTwo!34291 r3!135))) b!6911403))

(assert (= (and b!6910869 ((_ is Concat!25734) (regTwo!34291 r3!135))) b!6911404))

(assert (= (and b!6910869 ((_ is Star!16889) (regTwo!34291 r3!135))) b!6911405))

(assert (= (and b!6910869 ((_ is Union!16889) (regTwo!34291 r3!135))) b!6911406))

(declare-fun b!6911410 () Bool)

(declare-fun e!4161097 () Bool)

(declare-fun tp!1903155 () Bool)

(declare-fun tp!1903156 () Bool)

(assert (=> b!6911410 (= e!4161097 (and tp!1903155 tp!1903156))))

(assert (=> b!6910859 (= tp!1903115 e!4161097)))

(declare-fun b!6911407 () Bool)

(assert (=> b!6911407 (= e!4161097 tp_is_empty!43003)))

(declare-fun b!6911409 () Bool)

(declare-fun tp!1903154 () Bool)

(assert (=> b!6911409 (= e!4161097 tp!1903154)))

(declare-fun b!6911408 () Bool)

(declare-fun tp!1903153 () Bool)

(declare-fun tp!1903157 () Bool)

(assert (=> b!6911408 (= e!4161097 (and tp!1903153 tp!1903157))))

(assert (= (and b!6910859 ((_ is ElementMatch!16889) (regOne!34290 r3!135))) b!6911407))

(assert (= (and b!6910859 ((_ is Concat!25734) (regOne!34290 r3!135))) b!6911408))

(assert (= (and b!6910859 ((_ is Star!16889) (regOne!34290 r3!135))) b!6911409))

(assert (= (and b!6910859 ((_ is Union!16889) (regOne!34290 r3!135))) b!6911410))

(declare-fun b!6911414 () Bool)

(declare-fun e!4161098 () Bool)

(declare-fun tp!1903160 () Bool)

(declare-fun tp!1903161 () Bool)

(assert (=> b!6911414 (= e!4161098 (and tp!1903160 tp!1903161))))

(assert (=> b!6910859 (= tp!1903126 e!4161098)))

(declare-fun b!6911411 () Bool)

(assert (=> b!6911411 (= e!4161098 tp_is_empty!43003)))

(declare-fun b!6911413 () Bool)

(declare-fun tp!1903159 () Bool)

(assert (=> b!6911413 (= e!4161098 tp!1903159)))

(declare-fun b!6911412 () Bool)

(declare-fun tp!1903158 () Bool)

(declare-fun tp!1903162 () Bool)

(assert (=> b!6911412 (= e!4161098 (and tp!1903158 tp!1903162))))

(assert (= (and b!6910859 ((_ is ElementMatch!16889) (regTwo!34290 r3!135))) b!6911411))

(assert (= (and b!6910859 ((_ is Concat!25734) (regTwo!34290 r3!135))) b!6911412))

(assert (= (and b!6910859 ((_ is Star!16889) (regTwo!34290 r3!135))) b!6911413))

(assert (= (and b!6910859 ((_ is Union!16889) (regTwo!34290 r3!135))) b!6911414))

(declare-fun b!6911418 () Bool)

(declare-fun e!4161099 () Bool)

(declare-fun tp!1903165 () Bool)

(declare-fun tp!1903166 () Bool)

(assert (=> b!6911418 (= e!4161099 (and tp!1903165 tp!1903166))))

(assert (=> b!6910868 (= tp!1903120 e!4161099)))

(declare-fun b!6911415 () Bool)

(assert (=> b!6911415 (= e!4161099 tp_is_empty!43003)))

(declare-fun b!6911417 () Bool)

(declare-fun tp!1903164 () Bool)

(assert (=> b!6911417 (= e!4161099 tp!1903164)))

(declare-fun b!6911416 () Bool)

(declare-fun tp!1903163 () Bool)

(declare-fun tp!1903167 () Bool)

(assert (=> b!6911416 (= e!4161099 (and tp!1903163 tp!1903167))))

(assert (= (and b!6910868 ((_ is ElementMatch!16889) (regOne!34291 r1!6342))) b!6911415))

(assert (= (and b!6910868 ((_ is Concat!25734) (regOne!34291 r1!6342))) b!6911416))

(assert (= (and b!6910868 ((_ is Star!16889) (regOne!34291 r1!6342))) b!6911417))

(assert (= (and b!6910868 ((_ is Union!16889) (regOne!34291 r1!6342))) b!6911418))

(declare-fun b!6911436 () Bool)

(declare-fun e!4161107 () Bool)

(declare-fun tp!1903170 () Bool)

(declare-fun tp!1903171 () Bool)

(assert (=> b!6911436 (= e!4161107 (and tp!1903170 tp!1903171))))

(assert (=> b!6910868 (= tp!1903116 e!4161107)))

(declare-fun b!6911433 () Bool)

(assert (=> b!6911433 (= e!4161107 tp_is_empty!43003)))

(declare-fun b!6911435 () Bool)

(declare-fun tp!1903169 () Bool)

(assert (=> b!6911435 (= e!4161107 tp!1903169)))

(declare-fun b!6911434 () Bool)

(declare-fun tp!1903168 () Bool)

(declare-fun tp!1903172 () Bool)

(assert (=> b!6911434 (= e!4161107 (and tp!1903168 tp!1903172))))

(assert (= (and b!6910868 ((_ is ElementMatch!16889) (regTwo!34291 r1!6342))) b!6911433))

(assert (= (and b!6910868 ((_ is Concat!25734) (regTwo!34291 r1!6342))) b!6911434))

(assert (= (and b!6910868 ((_ is Star!16889) (regTwo!34291 r1!6342))) b!6911435))

(assert (= (and b!6910868 ((_ is Union!16889) (regTwo!34291 r1!6342))) b!6911436))

(declare-fun b!6911440 () Bool)

(declare-fun e!4161108 () Bool)

(declare-fun tp!1903175 () Bool)

(declare-fun tp!1903176 () Bool)

(assert (=> b!6911440 (= e!4161108 (and tp!1903175 tp!1903176))))

(assert (=> b!6910863 (= tp!1903119 e!4161108)))

(declare-fun b!6911437 () Bool)

(assert (=> b!6911437 (= e!4161108 tp_is_empty!43003)))

(declare-fun b!6911439 () Bool)

(declare-fun tp!1903174 () Bool)

(assert (=> b!6911439 (= e!4161108 tp!1903174)))

(declare-fun b!6911438 () Bool)

(declare-fun tp!1903173 () Bool)

(declare-fun tp!1903177 () Bool)

(assert (=> b!6911438 (= e!4161108 (and tp!1903173 tp!1903177))))

(assert (= (and b!6910863 ((_ is ElementMatch!16889) (regOne!34290 r1!6342))) b!6911437))

(assert (= (and b!6910863 ((_ is Concat!25734) (regOne!34290 r1!6342))) b!6911438))

(assert (= (and b!6910863 ((_ is Star!16889) (regOne!34290 r1!6342))) b!6911439))

(assert (= (and b!6910863 ((_ is Union!16889) (regOne!34290 r1!6342))) b!6911440))

(declare-fun b!6911444 () Bool)

(declare-fun e!4161109 () Bool)

(declare-fun tp!1903180 () Bool)

(declare-fun tp!1903181 () Bool)

(assert (=> b!6911444 (= e!4161109 (and tp!1903180 tp!1903181))))

(assert (=> b!6910863 (= tp!1903125 e!4161109)))

(declare-fun b!6911441 () Bool)

(assert (=> b!6911441 (= e!4161109 tp_is_empty!43003)))

(declare-fun b!6911443 () Bool)

(declare-fun tp!1903179 () Bool)

(assert (=> b!6911443 (= e!4161109 tp!1903179)))

(declare-fun b!6911442 () Bool)

(declare-fun tp!1903178 () Bool)

(declare-fun tp!1903182 () Bool)

(assert (=> b!6911442 (= e!4161109 (and tp!1903178 tp!1903182))))

(assert (= (and b!6910863 ((_ is ElementMatch!16889) (regTwo!34290 r1!6342))) b!6911441))

(assert (= (and b!6910863 ((_ is Concat!25734) (regTwo!34290 r1!6342))) b!6911442))

(assert (= (and b!6910863 ((_ is Star!16889) (regTwo!34290 r1!6342))) b!6911443))

(assert (= (and b!6910863 ((_ is Union!16889) (regTwo!34290 r1!6342))) b!6911444))

(declare-fun b!6911448 () Bool)

(declare-fun e!4161110 () Bool)

(declare-fun tp!1903185 () Bool)

(declare-fun tp!1903186 () Bool)

(assert (=> b!6911448 (= e!4161110 (and tp!1903185 tp!1903186))))

(assert (=> b!6910856 (= tp!1903122 e!4161110)))

(declare-fun b!6911445 () Bool)

(assert (=> b!6911445 (= e!4161110 tp_is_empty!43003)))

(declare-fun b!6911447 () Bool)

(declare-fun tp!1903184 () Bool)

(assert (=> b!6911447 (= e!4161110 tp!1903184)))

(declare-fun b!6911446 () Bool)

(declare-fun tp!1903183 () Bool)

(declare-fun tp!1903187 () Bool)

(assert (=> b!6911446 (= e!4161110 (and tp!1903183 tp!1903187))))

(assert (= (and b!6910856 ((_ is ElementMatch!16889) (regOne!34291 r2!6280))) b!6911445))

(assert (= (and b!6910856 ((_ is Concat!25734) (regOne!34291 r2!6280))) b!6911446))

(assert (= (and b!6910856 ((_ is Star!16889) (regOne!34291 r2!6280))) b!6911447))

(assert (= (and b!6910856 ((_ is Union!16889) (regOne!34291 r2!6280))) b!6911448))

(declare-fun b!6911452 () Bool)

(declare-fun e!4161111 () Bool)

(declare-fun tp!1903190 () Bool)

(declare-fun tp!1903191 () Bool)

(assert (=> b!6911452 (= e!4161111 (and tp!1903190 tp!1903191))))

(assert (=> b!6910856 (= tp!1903121 e!4161111)))

(declare-fun b!6911449 () Bool)

(assert (=> b!6911449 (= e!4161111 tp_is_empty!43003)))

(declare-fun b!6911451 () Bool)

(declare-fun tp!1903189 () Bool)

(assert (=> b!6911451 (= e!4161111 tp!1903189)))

(declare-fun b!6911450 () Bool)

(declare-fun tp!1903188 () Bool)

(declare-fun tp!1903192 () Bool)

(assert (=> b!6911450 (= e!4161111 (and tp!1903188 tp!1903192))))

(assert (= (and b!6910856 ((_ is ElementMatch!16889) (regTwo!34291 r2!6280))) b!6911449))

(assert (= (and b!6910856 ((_ is Concat!25734) (regTwo!34291 r2!6280))) b!6911450))

(assert (= (and b!6910856 ((_ is Star!16889) (regTwo!34291 r2!6280))) b!6911451))

(assert (= (and b!6910856 ((_ is Union!16889) (regTwo!34291 r2!6280))) b!6911452))

(declare-fun b!6911468 () Bool)

(declare-fun e!4161121 () Bool)

(declare-fun tp!1903195 () Bool)

(assert (=> b!6911468 (= e!4161121 (and tp_is_empty!43003 tp!1903195))))

(assert (=> b!6910872 (= tp!1903118 e!4161121)))

(assert (= (and b!6910872 ((_ is Cons!66522) (t!380389 s!14361))) b!6911468))

(declare-fun b!6911472 () Bool)

(declare-fun e!4161122 () Bool)

(declare-fun tp!1903198 () Bool)

(declare-fun tp!1903199 () Bool)

(assert (=> b!6911472 (= e!4161122 (and tp!1903198 tp!1903199))))

(assert (=> b!6910860 (= tp!1903112 e!4161122)))

(declare-fun b!6911469 () Bool)

(assert (=> b!6911469 (= e!4161122 tp_is_empty!43003)))

(declare-fun b!6911471 () Bool)

(declare-fun tp!1903197 () Bool)

(assert (=> b!6911471 (= e!4161122 tp!1903197)))

(declare-fun b!6911470 () Bool)

(declare-fun tp!1903196 () Bool)

(declare-fun tp!1903200 () Bool)

(assert (=> b!6911470 (= e!4161122 (and tp!1903196 tp!1903200))))

(assert (= (and b!6910860 ((_ is ElementMatch!16889) (reg!17218 r3!135))) b!6911469))

(assert (= (and b!6910860 ((_ is Concat!25734) (reg!17218 r3!135))) b!6911470))

(assert (= (and b!6910860 ((_ is Star!16889) (reg!17218 r3!135))) b!6911471))

(assert (= (and b!6910860 ((_ is Union!16889) (reg!17218 r3!135))) b!6911472))

(declare-fun b!6911476 () Bool)

(declare-fun e!4161123 () Bool)

(declare-fun tp!1903203 () Bool)

(declare-fun tp!1903204 () Bool)

(assert (=> b!6911476 (= e!4161123 (and tp!1903203 tp!1903204))))

(assert (=> b!6910866 (= tp!1903124 e!4161123)))

(declare-fun b!6911473 () Bool)

(assert (=> b!6911473 (= e!4161123 tp_is_empty!43003)))

(declare-fun b!6911475 () Bool)

(declare-fun tp!1903202 () Bool)

(assert (=> b!6911475 (= e!4161123 tp!1903202)))

(declare-fun b!6911474 () Bool)

(declare-fun tp!1903201 () Bool)

(declare-fun tp!1903205 () Bool)

(assert (=> b!6911474 (= e!4161123 (and tp!1903201 tp!1903205))))

(assert (= (and b!6910866 ((_ is ElementMatch!16889) (regOne!34290 r2!6280))) b!6911473))

(assert (= (and b!6910866 ((_ is Concat!25734) (regOne!34290 r2!6280))) b!6911474))

(assert (= (and b!6910866 ((_ is Star!16889) (regOne!34290 r2!6280))) b!6911475))

(assert (= (and b!6910866 ((_ is Union!16889) (regOne!34290 r2!6280))) b!6911476))

(declare-fun b!6911480 () Bool)

(declare-fun e!4161124 () Bool)

(declare-fun tp!1903208 () Bool)

(declare-fun tp!1903209 () Bool)

(assert (=> b!6911480 (= e!4161124 (and tp!1903208 tp!1903209))))

(assert (=> b!6910866 (= tp!1903113 e!4161124)))

(declare-fun b!6911477 () Bool)

(assert (=> b!6911477 (= e!4161124 tp_is_empty!43003)))

(declare-fun b!6911479 () Bool)

(declare-fun tp!1903207 () Bool)

(assert (=> b!6911479 (= e!4161124 tp!1903207)))

(declare-fun b!6911478 () Bool)

(declare-fun tp!1903206 () Bool)

(declare-fun tp!1903210 () Bool)

(assert (=> b!6911478 (= e!4161124 (and tp!1903206 tp!1903210))))

(assert (= (and b!6910866 ((_ is ElementMatch!16889) (regTwo!34290 r2!6280))) b!6911477))

(assert (= (and b!6910866 ((_ is Concat!25734) (regTwo!34290 r2!6280))) b!6911478))

(assert (= (and b!6910866 ((_ is Star!16889) (regTwo!34290 r2!6280))) b!6911479))

(assert (= (and b!6910866 ((_ is Union!16889) (regTwo!34290 r2!6280))) b!6911480))

(declare-fun b!6911484 () Bool)

(declare-fun e!4161125 () Bool)

(declare-fun tp!1903213 () Bool)

(declare-fun tp!1903214 () Bool)

(assert (=> b!6911484 (= e!4161125 (and tp!1903213 tp!1903214))))

(assert (=> b!6910855 (= tp!1903117 e!4161125)))

(declare-fun b!6911481 () Bool)

(assert (=> b!6911481 (= e!4161125 tp_is_empty!43003)))

(declare-fun b!6911483 () Bool)

(declare-fun tp!1903212 () Bool)

(assert (=> b!6911483 (= e!4161125 tp!1903212)))

(declare-fun b!6911482 () Bool)

(declare-fun tp!1903211 () Bool)

(declare-fun tp!1903215 () Bool)

(assert (=> b!6911482 (= e!4161125 (and tp!1903211 tp!1903215))))

(assert (= (and b!6910855 ((_ is ElementMatch!16889) (reg!17218 r2!6280))) b!6911481))

(assert (= (and b!6910855 ((_ is Concat!25734) (reg!17218 r2!6280))) b!6911482))

(assert (= (and b!6910855 ((_ is Star!16889) (reg!17218 r2!6280))) b!6911483))

(assert (= (and b!6910855 ((_ is Union!16889) (reg!17218 r2!6280))) b!6911484))

(check-sat (not b!6911117) (not d!2163358) (not d!2163340) (not b!6911090) (not b!6911448) (not b!6911434) (not b!6911438) (not b!6911478) (not bm!628368) (not b!6911417) (not d!2163432) (not b!6911400) (not b!6911416) (not d!2163366) (not bm!628361) (not b!6911476) (not b!6911259) (not b!6911470) (not b!6911471) (not b!6910909) (not b!6911030) (not b!6911012) (not b!6911435) (not b!6911256) (not b!6910917) (not b!6911414) (not bm!628320) (not d!2163354) (not b!6911087) (not b!6911348) (not b!6911019) (not b!6911396) (not b!6911482) (not b!6911404) (not b!6911472) (not d!2163392) (not b!6911406) (not d!2163338) (not b!6911099) (not b!6911248) (not b!6910918) (not b!6911444) (not bm!628340) (not b!6911447) (not b!6911436) (not b!6911439) (not b!6911324) (not b!6911474) (not b!6911108) (not b!6911013) (not bm!628370) (not b!6911005) (not d!2163336) (not b!6911245) (not d!2163364) (not b!6911085) (not b!6911244) (not d!2163418) (not b!6911255) (not bm!628359) (not b!6911452) (not b!6911418) (not b!6910983) (not b!6911468) (not b!6911451) (not b!6911443) (not b!6911380) (not b!6911328) (not b!6911397) (not d!2163414) (not d!2163384) (not b!6911250) (not d!2163350) (not b!6911021) (not b!6911412) (not bm!628324) (not d!2163394) (not b!6911450) (not b!6911096) (not b!6911026) (not b!6911413) (not b!6911402) (not b!6910921) (not bm!628336) (not b!6911088) (not d!2163396) (not b!6911405) (not b!6910988) (not b!6911018) (not d!2163406) (not b!6911480) (not bm!628371) (not b!6911319) (not b!6911479) (not bm!628358) (not b!6911237) (not bm!628325) (not d!2163390) (not b!6910910) (not b!6911410) (not b!6911442) (not b!6911027) (not bm!628342) (not b!6911384) (not d!2163400) (not bm!628323) (not b!6911408) (not bm!628321) (not b!6911475) (not b!6911484) (not b!6911247) (not b!6911376) (not b!6911317) (not b!6911379) (not b!6911343) (not b!6911398) tp_is_empty!43003 (not b!6911004) (not bm!628337) (not d!2163420) (not bm!628322) (not b!6911240) (not b!6911238) (not d!2163430) (not b!6911446) (not bm!628339) (not b!6911325) (not b!6911016) (not b!6911095) (not bm!628343) (not b!6910954) (not b!6911401) (not bm!628315) (not b!6911377) (not b!6911316) (not b!6911409) (not b!6911383) (not d!2163404) (not bm!628335) (not b!6911483) (not b!6911191) (not b!6911440) (not b!6911186) (not b!6910912) (not b!6911241) (not b!6910959) (not d!2163402) (not b!6911007))
(check-sat)
