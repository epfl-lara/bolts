; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665646 () Bool)

(assert start!665646)

(declare-fun b!6921646 () Bool)

(assert (=> b!6921646 true))

(assert (=> b!6921646 true))

(assert (=> b!6921646 true))

(declare-fun lambda!393478 () Int)

(declare-fun lambda!393477 () Int)

(assert (=> b!6921646 (not (= lambda!393478 lambda!393477))))

(assert (=> b!6921646 true))

(assert (=> b!6921646 true))

(assert (=> b!6921646 true))

(declare-fun bs!1847183 () Bool)

(declare-fun b!6921652 () Bool)

(assert (= bs!1847183 (and b!6921652 b!6921646)))

(declare-datatypes ((C!34104 0))(
  ( (C!34105 (val!26754 Int)) )
))
(declare-datatypes ((Regex!16917 0))(
  ( (ElementMatch!16917 (c!1285049 C!34104)) (Concat!25762 (regOne!34346 Regex!16917) (regTwo!34346 Regex!16917)) (EmptyExpr!16917) (Star!16917 (reg!17246 Regex!16917)) (EmptyLang!16917) (Union!16917 (regOne!34347 Regex!16917) (regTwo!34347 Regex!16917)) )
))
(declare-fun r1!6342 () Regex!16917)

(declare-fun r3!135 () Regex!16917)

(declare-datatypes ((List!66670 0))(
  ( (Nil!66546) (Cons!66546 (h!72994 C!34104) (t!380413 List!66670)) )
))
(declare-fun s!14361 () List!66670)

(declare-datatypes ((tuple2!67548 0))(
  ( (tuple2!67549 (_1!37077 List!66670) (_2!37077 List!66670)) )
))
(declare-fun lt!2470428 () tuple2!67548)

(declare-fun lambda!393479 () Int)

(declare-fun r2!6280 () Regex!16917)

(declare-fun lt!2470439 () Regex!16917)

(assert (=> bs!1847183 (= (and (= (_1!37077 lt!2470428) s!14361) (= r1!6342 lt!2470439) (= r2!6280 r3!135)) (= lambda!393479 lambda!393477))))

(assert (=> bs!1847183 (not (= lambda!393479 lambda!393478))))

(assert (=> b!6921652 true))

(assert (=> b!6921652 true))

(assert (=> b!6921652 true))

(declare-fun lambda!393480 () Int)

(assert (=> bs!1847183 (not (= lambda!393480 lambda!393477))))

(assert (=> bs!1847183 (= (and (= (_1!37077 lt!2470428) s!14361) (= r1!6342 lt!2470439) (= r2!6280 r3!135)) (= lambda!393480 lambda!393478))))

(assert (=> b!6921652 (not (= lambda!393480 lambda!393479))))

(assert (=> b!6921652 true))

(assert (=> b!6921652 true))

(assert (=> b!6921652 true))

(declare-fun bs!1847184 () Bool)

(declare-fun b!6921650 () Bool)

(assert (= bs!1847184 (and b!6921650 b!6921646)))

(declare-fun lt!2470441 () List!66670)

(declare-fun lambda!393481 () Int)

(assert (=> bs!1847184 (= (and (= lt!2470441 s!14361) (= r2!6280 lt!2470439)) (= lambda!393481 lambda!393477))))

(assert (=> bs!1847184 (not (= lambda!393481 lambda!393478))))

(declare-fun bs!1847185 () Bool)

(assert (= bs!1847185 (and b!6921650 b!6921652)))

(assert (=> bs!1847185 (= (and (= lt!2470441 (_1!37077 lt!2470428)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393481 lambda!393479))))

(assert (=> bs!1847185 (not (= lambda!393481 lambda!393480))))

(assert (=> b!6921650 true))

(assert (=> b!6921650 true))

(assert (=> b!6921650 true))

(declare-fun lambda!393482 () Int)

(assert (=> bs!1847184 (= (and (= lt!2470441 s!14361) (= r2!6280 lt!2470439)) (= lambda!393482 lambda!393478))))

(assert (=> bs!1847185 (= (and (= lt!2470441 (_1!37077 lt!2470428)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393482 lambda!393480))))

(assert (=> b!6921650 (not (= lambda!393482 lambda!393481))))

(assert (=> bs!1847185 (not (= lambda!393482 lambda!393479))))

(assert (=> bs!1847184 (not (= lambda!393482 lambda!393477))))

(assert (=> b!6921650 true))

(assert (=> b!6921650 true))

(assert (=> b!6921650 true))

(declare-fun b!6921635 () Bool)

(declare-fun e!4165835 () Bool)

(declare-fun e!4165842 () Bool)

(assert (=> b!6921635 (= e!4165835 e!4165842)))

(declare-fun res!2822364 () Bool)

(assert (=> b!6921635 (=> res!2822364 e!4165842)))

(declare-fun lt!2470449 () List!66670)

(assert (=> b!6921635 (= res!2822364 (not (= lt!2470449 s!14361)))))

(declare-fun lt!2470432 () tuple2!67548)

(declare-fun ++!14960 (List!66670 List!66670) List!66670)

(assert (=> b!6921635 (= lt!2470449 (++!14960 (++!14960 (_1!37077 lt!2470432) (_2!37077 lt!2470432)) (_2!37077 lt!2470428)))))

(declare-fun matchRSpec!3974 (Regex!16917 List!66670) Bool)

(assert (=> b!6921635 (matchRSpec!3974 r2!6280 (_2!37077 lt!2470432))))

(declare-datatypes ((Unit!160558 0))(
  ( (Unit!160559) )
))
(declare-fun lt!2470442 () Unit!160558)

(declare-fun mainMatchTheorem!3974 (Regex!16917 List!66670) Unit!160558)

(assert (=> b!6921635 (= lt!2470442 (mainMatchTheorem!3974 r2!6280 (_2!37077 lt!2470432)))))

(assert (=> b!6921635 (matchRSpec!3974 r1!6342 (_1!37077 lt!2470432))))

(declare-fun lt!2470445 () Unit!160558)

(assert (=> b!6921635 (= lt!2470445 (mainMatchTheorem!3974 r1!6342 (_1!37077 lt!2470432)))))

(declare-fun b!6921636 () Bool)

(declare-fun res!2822368 () Bool)

(declare-fun e!4165833 () Bool)

(assert (=> b!6921636 (=> (not res!2822368) (not e!4165833))))

(declare-fun validRegex!8623 (Regex!16917) Bool)

(assert (=> b!6921636 (= res!2822368 (validRegex!8623 r3!135))))

(declare-fun b!6921637 () Bool)

(declare-fun e!4165837 () Bool)

(declare-fun tp_is_empty!43059 () Bool)

(assert (=> b!6921637 (= e!4165837 tp_is_empty!43059)))

(declare-fun b!6921638 () Bool)

(declare-fun e!4165836 () Bool)

(declare-fun tp!1907876 () Bool)

(declare-fun tp!1907889 () Bool)

(assert (=> b!6921638 (= e!4165836 (and tp!1907876 tp!1907889))))

(declare-fun b!6921639 () Bool)

(declare-fun e!4165834 () Bool)

(declare-fun tp!1907887 () Bool)

(assert (=> b!6921639 (= e!4165834 tp!1907887)))

(declare-fun b!6921640 () Bool)

(declare-fun tp!1907884 () Bool)

(declare-fun tp!1907882 () Bool)

(assert (=> b!6921640 (= e!4165834 (and tp!1907884 tp!1907882))))

(declare-fun b!6921641 () Bool)

(declare-fun res!2822363 () Bool)

(declare-fun e!4165838 () Bool)

(assert (=> b!6921641 (=> res!2822363 e!4165838)))

(declare-fun matchR!9056 (Regex!16917 List!66670) Bool)

(assert (=> b!6921641 (= res!2822363 (not (matchR!9056 r3!135 (_2!37077 lt!2470428))))))

(declare-fun b!6921642 () Bool)

(assert (=> b!6921642 (= e!4165836 tp_is_empty!43059)))

(declare-fun res!2822370 () Bool)

(assert (=> start!665646 (=> (not res!2822370) (not e!4165833))))

(assert (=> start!665646 (= res!2822370 (validRegex!8623 r1!6342))))

(assert (=> start!665646 e!4165833))

(assert (=> start!665646 e!4165837))

(assert (=> start!665646 e!4165836))

(assert (=> start!665646 e!4165834))

(declare-fun e!4165839 () Bool)

(assert (=> start!665646 e!4165839))

(declare-fun b!6921643 () Bool)

(declare-fun tp!1907883 () Bool)

(declare-fun tp!1907888 () Bool)

(assert (=> b!6921643 (= e!4165837 (and tp!1907883 tp!1907888))))

(declare-fun b!6921644 () Bool)

(declare-fun res!2822366 () Bool)

(assert (=> b!6921644 (=> res!2822366 e!4165835)))

(assert (=> b!6921644 (= res!2822366 (not (matchR!9056 r2!6280 (_2!37077 lt!2470432))))))

(declare-fun b!6921645 () Bool)

(declare-fun e!4165841 () Bool)

(assert (=> b!6921645 (= e!4165841 true)))

(assert (=> b!6921645 (= lt!2470449 (++!14960 (_1!37077 lt!2470432) lt!2470441))))

(declare-fun lt!2470434 () Unit!160558)

(declare-fun lemmaConcatAssociativity!3008 (List!66670 List!66670 List!66670) Unit!160558)

(assert (=> b!6921645 (= lt!2470434 (lemmaConcatAssociativity!3008 (_1!37077 lt!2470432) (_2!37077 lt!2470432) (_2!37077 lt!2470428)))))

(declare-fun e!4165840 () Bool)

(assert (=> b!6921646 (= e!4165840 e!4165838)))

(declare-fun res!2822362 () Bool)

(assert (=> b!6921646 (=> res!2822362 e!4165838)))

(declare-fun lt!2470446 () Bool)

(assert (=> b!6921646 (= res!2822362 (not lt!2470446))))

(assert (=> b!6921646 (= lt!2470446 (matchRSpec!3974 lt!2470439 (_1!37077 lt!2470428)))))

(assert (=> b!6921646 (= lt!2470446 (matchR!9056 lt!2470439 (_1!37077 lt!2470428)))))

(declare-fun lt!2470437 () Unit!160558)

(assert (=> b!6921646 (= lt!2470437 (mainMatchTheorem!3974 lt!2470439 (_1!37077 lt!2470428)))))

(declare-datatypes ((Option!16686 0))(
  ( (None!16685) (Some!16685 (v!52957 tuple2!67548)) )
))
(declare-fun lt!2470438 () Option!16686)

(declare-fun get!23316 (Option!16686) tuple2!67548)

(assert (=> b!6921646 (= lt!2470428 (get!23316 lt!2470438))))

(declare-fun Exists!3919 (Int) Bool)

(assert (=> b!6921646 (= (Exists!3919 lambda!393477) (Exists!3919 lambda!393478))))

(declare-fun lt!2470433 () Unit!160558)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2386 (Regex!16917 Regex!16917 List!66670) Unit!160558)

(assert (=> b!6921646 (= lt!2470433 (lemmaExistCutMatchRandMatchRSpecEquivalent!2386 lt!2470439 r3!135 s!14361))))

(declare-fun isDefined!13389 (Option!16686) Bool)

(assert (=> b!6921646 (= (isDefined!13389 lt!2470438) (Exists!3919 lambda!393477))))

(declare-fun findConcatSeparation!3100 (Regex!16917 Regex!16917 List!66670 List!66670 List!66670) Option!16686)

(assert (=> b!6921646 (= lt!2470438 (findConcatSeparation!3100 lt!2470439 r3!135 Nil!66546 s!14361 s!14361))))

(declare-fun lt!2470423 () Unit!160558)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2862 (Regex!16917 Regex!16917 List!66670) Unit!160558)

(assert (=> b!6921646 (= lt!2470423 (lemmaFindConcatSeparationEquivalentToExists!2862 lt!2470439 r3!135 s!14361))))

(declare-fun b!6921647 () Bool)

(declare-fun tp!1907886 () Bool)

(assert (=> b!6921647 (= e!4165839 (and tp_is_empty!43059 tp!1907886))))

(declare-fun b!6921648 () Bool)

(declare-fun res!2822365 () Bool)

(assert (=> b!6921648 (=> (not res!2822365) (not e!4165833))))

(assert (=> b!6921648 (= res!2822365 (validRegex!8623 r2!6280))))

(declare-fun b!6921649 () Bool)

(declare-fun tp!1907880 () Bool)

(assert (=> b!6921649 (= e!4165837 tp!1907880)))

(assert (=> b!6921650 (= e!4165842 e!4165841)))

(declare-fun res!2822361 () Bool)

(assert (=> b!6921650 (=> res!2822361 e!4165841)))

(declare-fun lt!2470431 () Bool)

(assert (=> b!6921650 (= res!2822361 (not lt!2470431))))

(declare-fun lt!2470443 () Bool)

(assert (=> b!6921650 lt!2470443))

(declare-fun lt!2470425 () Unit!160558)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!78 (Regex!16917 Regex!16917 List!66670 List!66670 List!66670 List!66670 List!66670) Unit!160558)

(assert (=> b!6921650 (= lt!2470425 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!78 r2!6280 r3!135 (_2!37077 lt!2470432) (_2!37077 lt!2470428) lt!2470441 Nil!66546 lt!2470441))))

(assert (=> b!6921650 (= (Exists!3919 lambda!393481) (Exists!3919 lambda!393482))))

(declare-fun lt!2470429 () Unit!160558)

(assert (=> b!6921650 (= lt!2470429 (lemmaExistCutMatchRandMatchRSpecEquivalent!2386 r2!6280 r3!135 lt!2470441))))

(assert (=> b!6921650 (= lt!2470443 (Exists!3919 lambda!393481))))

(assert (=> b!6921650 (= lt!2470443 (isDefined!13389 (findConcatSeparation!3100 r2!6280 r3!135 Nil!66546 lt!2470441 lt!2470441)))))

(declare-fun lt!2470435 () Unit!160558)

(assert (=> b!6921650 (= lt!2470435 (lemmaFindConcatSeparationEquivalentToExists!2862 r2!6280 r3!135 lt!2470441))))

(declare-fun lt!2470430 () Regex!16917)

(assert (=> b!6921650 (= lt!2470431 (matchRSpec!3974 lt!2470430 lt!2470441))))

(assert (=> b!6921650 (= lt!2470431 (matchR!9056 lt!2470430 lt!2470441))))

(declare-fun lt!2470444 () Unit!160558)

(assert (=> b!6921650 (= lt!2470444 (mainMatchTheorem!3974 lt!2470430 lt!2470441))))

(assert (=> b!6921650 (= lt!2470441 (++!14960 (_2!37077 lt!2470432) (_2!37077 lt!2470428)))))

(declare-fun b!6921651 () Bool)

(declare-fun tp!1907877 () Bool)

(declare-fun tp!1907881 () Bool)

(assert (=> b!6921651 (= e!4165837 (and tp!1907877 tp!1907881))))

(assert (=> b!6921652 (= e!4165838 e!4165835)))

(declare-fun res!2822367 () Bool)

(assert (=> b!6921652 (=> res!2822367 e!4165835)))

(assert (=> b!6921652 (= res!2822367 (not (matchR!9056 r1!6342 (_1!37077 lt!2470432))))))

(declare-fun lt!2470427 () Option!16686)

(assert (=> b!6921652 (= lt!2470432 (get!23316 lt!2470427))))

(assert (=> b!6921652 (= (Exists!3919 lambda!393479) (Exists!3919 lambda!393480))))

(declare-fun lt!2470422 () Unit!160558)

(assert (=> b!6921652 (= lt!2470422 (lemmaExistCutMatchRandMatchRSpecEquivalent!2386 r1!6342 r2!6280 (_1!37077 lt!2470428)))))

(assert (=> b!6921652 (= (isDefined!13389 lt!2470427) (Exists!3919 lambda!393479))))

(assert (=> b!6921652 (= lt!2470427 (findConcatSeparation!3100 r1!6342 r2!6280 Nil!66546 (_1!37077 lt!2470428) (_1!37077 lt!2470428)))))

(declare-fun lt!2470426 () Unit!160558)

(assert (=> b!6921652 (= lt!2470426 (lemmaFindConcatSeparationEquivalentToExists!2862 r1!6342 r2!6280 (_1!37077 lt!2470428)))))

(declare-fun b!6921653 () Bool)

(assert (=> b!6921653 (= e!4165833 (not e!4165840))))

(declare-fun res!2822369 () Bool)

(assert (=> b!6921653 (=> res!2822369 e!4165840)))

(declare-fun lt!2470424 () Bool)

(assert (=> b!6921653 (= res!2822369 (not lt!2470424))))

(declare-fun lt!2470448 () Regex!16917)

(assert (=> b!6921653 (= (matchR!9056 lt!2470448 s!14361) (matchRSpec!3974 lt!2470448 s!14361))))

(declare-fun lt!2470436 () Unit!160558)

(assert (=> b!6921653 (= lt!2470436 (mainMatchTheorem!3974 lt!2470448 s!14361))))

(declare-fun lt!2470440 () Regex!16917)

(assert (=> b!6921653 (= lt!2470424 (matchRSpec!3974 lt!2470440 s!14361))))

(assert (=> b!6921653 (= lt!2470424 (matchR!9056 lt!2470440 s!14361))))

(declare-fun lt!2470447 () Unit!160558)

(assert (=> b!6921653 (= lt!2470447 (mainMatchTheorem!3974 lt!2470440 s!14361))))

(assert (=> b!6921653 (= lt!2470448 (Concat!25762 r1!6342 lt!2470430))))

(assert (=> b!6921653 (= lt!2470430 (Concat!25762 r2!6280 r3!135))))

(assert (=> b!6921653 (= lt!2470440 (Concat!25762 lt!2470439 r3!135))))

(assert (=> b!6921653 (= lt!2470439 (Concat!25762 r1!6342 r2!6280))))

(declare-fun b!6921654 () Bool)

(declare-fun tp!1907879 () Bool)

(assert (=> b!6921654 (= e!4165836 tp!1907879)))

(declare-fun b!6921655 () Bool)

(declare-fun tp!1907885 () Bool)

(declare-fun tp!1907890 () Bool)

(assert (=> b!6921655 (= e!4165834 (and tp!1907885 tp!1907890))))

(declare-fun b!6921656 () Bool)

(assert (=> b!6921656 (= e!4165834 tp_is_empty!43059)))

(declare-fun b!6921657 () Bool)

(declare-fun tp!1907878 () Bool)

(declare-fun tp!1907891 () Bool)

(assert (=> b!6921657 (= e!4165836 (and tp!1907878 tp!1907891))))

(assert (= (and start!665646 res!2822370) b!6921648))

(assert (= (and b!6921648 res!2822365) b!6921636))

(assert (= (and b!6921636 res!2822368) b!6921653))

(assert (= (and b!6921653 (not res!2822369)) b!6921646))

(assert (= (and b!6921646 (not res!2822362)) b!6921641))

(assert (= (and b!6921641 (not res!2822363)) b!6921652))

(assert (= (and b!6921652 (not res!2822367)) b!6921644))

(assert (= (and b!6921644 (not res!2822366)) b!6921635))

(assert (= (and b!6921635 (not res!2822364)) b!6921650))

(assert (= (and b!6921650 (not res!2822361)) b!6921645))

(get-info :version)

(assert (= (and start!665646 ((_ is ElementMatch!16917) r1!6342)) b!6921637))

(assert (= (and start!665646 ((_ is Concat!25762) r1!6342)) b!6921643))

(assert (= (and start!665646 ((_ is Star!16917) r1!6342)) b!6921649))

(assert (= (and start!665646 ((_ is Union!16917) r1!6342)) b!6921651))

(assert (= (and start!665646 ((_ is ElementMatch!16917) r2!6280)) b!6921642))

(assert (= (and start!665646 ((_ is Concat!25762) r2!6280)) b!6921638))

(assert (= (and start!665646 ((_ is Star!16917) r2!6280)) b!6921654))

(assert (= (and start!665646 ((_ is Union!16917) r2!6280)) b!6921657))

(assert (= (and start!665646 ((_ is ElementMatch!16917) r3!135)) b!6921656))

(assert (= (and start!665646 ((_ is Concat!25762) r3!135)) b!6921640))

(assert (= (and start!665646 ((_ is Star!16917) r3!135)) b!6921639))

(assert (= (and start!665646 ((_ is Union!16917) r3!135)) b!6921655))

(assert (= (and start!665646 ((_ is Cons!66546) s!14361)) b!6921647))

(declare-fun m!7631252 () Bool)

(assert (=> b!6921648 m!7631252))

(declare-fun m!7631254 () Bool)

(assert (=> b!6921650 m!7631254))

(declare-fun m!7631256 () Bool)

(assert (=> b!6921650 m!7631256))

(declare-fun m!7631258 () Bool)

(assert (=> b!6921650 m!7631258))

(declare-fun m!7631260 () Bool)

(assert (=> b!6921650 m!7631260))

(declare-fun m!7631262 () Bool)

(assert (=> b!6921650 m!7631262))

(declare-fun m!7631264 () Bool)

(assert (=> b!6921650 m!7631264))

(declare-fun m!7631266 () Bool)

(assert (=> b!6921650 m!7631266))

(declare-fun m!7631268 () Bool)

(assert (=> b!6921650 m!7631268))

(declare-fun m!7631270 () Bool)

(assert (=> b!6921650 m!7631270))

(assert (=> b!6921650 m!7631256))

(assert (=> b!6921650 m!7631260))

(declare-fun m!7631272 () Bool)

(assert (=> b!6921650 m!7631272))

(declare-fun m!7631274 () Bool)

(assert (=> b!6921650 m!7631274))

(declare-fun m!7631276 () Bool)

(assert (=> b!6921652 m!7631276))

(declare-fun m!7631278 () Bool)

(assert (=> b!6921652 m!7631278))

(declare-fun m!7631280 () Bool)

(assert (=> b!6921652 m!7631280))

(declare-fun m!7631282 () Bool)

(assert (=> b!6921652 m!7631282))

(declare-fun m!7631284 () Bool)

(assert (=> b!6921652 m!7631284))

(declare-fun m!7631286 () Bool)

(assert (=> b!6921652 m!7631286))

(declare-fun m!7631288 () Bool)

(assert (=> b!6921652 m!7631288))

(declare-fun m!7631290 () Bool)

(assert (=> b!6921652 m!7631290))

(assert (=> b!6921652 m!7631280))

(declare-fun m!7631292 () Bool)

(assert (=> b!6921636 m!7631292))

(declare-fun m!7631294 () Bool)

(assert (=> b!6921641 m!7631294))

(declare-fun m!7631296 () Bool)

(assert (=> start!665646 m!7631296))

(declare-fun m!7631298 () Bool)

(assert (=> b!6921645 m!7631298))

(declare-fun m!7631300 () Bool)

(assert (=> b!6921645 m!7631300))

(declare-fun m!7631302 () Bool)

(assert (=> b!6921635 m!7631302))

(declare-fun m!7631304 () Bool)

(assert (=> b!6921635 m!7631304))

(declare-fun m!7631306 () Bool)

(assert (=> b!6921635 m!7631306))

(declare-fun m!7631308 () Bool)

(assert (=> b!6921635 m!7631308))

(assert (=> b!6921635 m!7631302))

(declare-fun m!7631310 () Bool)

(assert (=> b!6921635 m!7631310))

(declare-fun m!7631312 () Bool)

(assert (=> b!6921635 m!7631312))

(declare-fun m!7631314 () Bool)

(assert (=> b!6921646 m!7631314))

(declare-fun m!7631316 () Bool)

(assert (=> b!6921646 m!7631316))

(declare-fun m!7631318 () Bool)

(assert (=> b!6921646 m!7631318))

(declare-fun m!7631320 () Bool)

(assert (=> b!6921646 m!7631320))

(declare-fun m!7631322 () Bool)

(assert (=> b!6921646 m!7631322))

(declare-fun m!7631324 () Bool)

(assert (=> b!6921646 m!7631324))

(declare-fun m!7631326 () Bool)

(assert (=> b!6921646 m!7631326))

(declare-fun m!7631328 () Bool)

(assert (=> b!6921646 m!7631328))

(assert (=> b!6921646 m!7631318))

(declare-fun m!7631330 () Bool)

(assert (=> b!6921646 m!7631330))

(declare-fun m!7631332 () Bool)

(assert (=> b!6921646 m!7631332))

(declare-fun m!7631334 () Bool)

(assert (=> b!6921644 m!7631334))

(declare-fun m!7631336 () Bool)

(assert (=> b!6921653 m!7631336))

(declare-fun m!7631338 () Bool)

(assert (=> b!6921653 m!7631338))

(declare-fun m!7631340 () Bool)

(assert (=> b!6921653 m!7631340))

(declare-fun m!7631342 () Bool)

(assert (=> b!6921653 m!7631342))

(declare-fun m!7631344 () Bool)

(assert (=> b!6921653 m!7631344))

(declare-fun m!7631346 () Bool)

(assert (=> b!6921653 m!7631346))

(check-sat (not b!6921645) (not b!6921655) (not b!6921636) (not b!6921651) (not start!665646) (not b!6921654) (not b!6921643) (not b!6921646) (not b!6921639) (not b!6921648) (not b!6921653) (not b!6921644) (not b!6921641) (not b!6921638) (not b!6921647) (not b!6921650) (not b!6921652) (not b!6921640) tp_is_empty!43059 (not b!6921649) (not b!6921635) (not b!6921657))
(check-sat)
