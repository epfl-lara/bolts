; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664666 () Bool)

(assert start!664666)

(declare-fun b!6899930 () Bool)

(assert (=> b!6899930 true))

(assert (=> b!6899930 true))

(assert (=> b!6899930 true))

(declare-fun lambda!391542 () Int)

(declare-fun lambda!391541 () Int)

(assert (=> b!6899930 (not (= lambda!391542 lambda!391541))))

(assert (=> b!6899930 true))

(assert (=> b!6899930 true))

(assert (=> b!6899930 true))

(declare-fun bs!1841743 () Bool)

(declare-fun b!6899926 () Bool)

(assert (= bs!1841743 (and b!6899926 b!6899930)))

(declare-fun lambda!391543 () Int)

(declare-datatypes ((C!33984 0))(
  ( (C!33985 (val!26694 Int)) )
))
(declare-datatypes ((Regex!16857 0))(
  ( (ElementMatch!16857 (c!1282115 C!33984)) (Concat!25702 (regOne!34226 Regex!16857) (regTwo!34226 Regex!16857)) (EmptyExpr!16857) (Star!16857 (reg!17186 Regex!16857)) (EmptyLang!16857) (Union!16857 (regOne!34227 Regex!16857) (regTwo!34227 Regex!16857)) )
))
(declare-fun r1!6342 () Regex!16857)

(declare-fun r3!135 () Regex!16857)

(declare-datatypes ((List!66614 0))(
  ( (Nil!66490) (Cons!66490 (h!72938 C!33984) (t!380357 List!66614)) )
))
(declare-datatypes ((tuple2!67448 0))(
  ( (tuple2!67449 (_1!37027 List!66614) (_2!37027 List!66614)) )
))
(declare-fun lt!2465648 () tuple2!67448)

(declare-fun s!14361 () List!66614)

(declare-fun lt!2465666 () Regex!16857)

(declare-fun r2!6280 () Regex!16857)

(assert (=> bs!1841743 (= (and (= (_2!37027 lt!2465648) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2465666)) (= lambda!391543 lambda!391541))))

(assert (=> bs!1841743 (not (= lambda!391543 lambda!391542))))

(assert (=> b!6899926 true))

(assert (=> b!6899926 true))

(assert (=> b!6899926 true))

(declare-fun lambda!391544 () Int)

(assert (=> bs!1841743 (not (= lambda!391544 lambda!391541))))

(assert (=> bs!1841743 (= (and (= (_2!37027 lt!2465648) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2465666)) (= lambda!391544 lambda!391542))))

(assert (=> b!6899926 (not (= lambda!391544 lambda!391543))))

(assert (=> b!6899926 true))

(assert (=> b!6899926 true))

(assert (=> b!6899926 true))

(declare-fun bs!1841744 () Bool)

(declare-fun b!6899927 () Bool)

(assert (= bs!1841744 (and b!6899927 b!6899930)))

(declare-fun lambda!391545 () Int)

(declare-fun lt!2465649 () List!66614)

(assert (=> bs!1841744 (= (and (= lt!2465649 s!14361) (= r2!6280 lt!2465666)) (= lambda!391545 lambda!391541))))

(assert (=> bs!1841744 (not (= lambda!391545 lambda!391542))))

(declare-fun bs!1841745 () Bool)

(assert (= bs!1841745 (and b!6899927 b!6899926)))

(assert (=> bs!1841745 (= (and (= lt!2465649 (_2!37027 lt!2465648)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391545 lambda!391543))))

(assert (=> bs!1841745 (not (= lambda!391545 lambda!391544))))

(assert (=> b!6899927 true))

(assert (=> b!6899927 true))

(assert (=> b!6899927 true))

(declare-fun lambda!391546 () Int)

(assert (=> bs!1841745 (not (= lambda!391546 lambda!391543))))

(assert (=> bs!1841744 (= (and (= lt!2465649 s!14361) (= r2!6280 lt!2465666)) (= lambda!391546 lambda!391542))))

(assert (=> bs!1841745 (= (and (= lt!2465649 (_2!37027 lt!2465648)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391546 lambda!391544))))

(assert (=> bs!1841744 (not (= lambda!391546 lambda!391541))))

(assert (=> b!6899927 (not (= lambda!391546 lambda!391545))))

(assert (=> b!6899927 true))

(assert (=> b!6899927 true))

(assert (=> b!6899927 true))

(declare-fun b!6899914 () Bool)

(declare-fun e!4155469 () Bool)

(declare-fun tp_is_empty!42939 () Bool)

(assert (=> b!6899914 (= e!4155469 tp_is_empty!42939)))

(declare-fun b!6899915 () Bool)

(declare-fun res!2813510 () Bool)

(declare-fun e!4155466 () Bool)

(assert (=> b!6899915 (=> (not res!2813510) (not e!4155466))))

(declare-fun validRegex!8565 (Regex!16857) Bool)

(assert (=> b!6899915 (= res!2813510 (validRegex!8565 r3!135))))

(declare-fun b!6899916 () Bool)

(declare-fun tp!1899650 () Bool)

(declare-fun tp!1899643 () Bool)

(assert (=> b!6899916 (= e!4155469 (and tp!1899650 tp!1899643))))

(declare-fun b!6899917 () Bool)

(declare-fun res!2813504 () Bool)

(declare-fun e!4155463 () Bool)

(assert (=> b!6899917 (=> res!2813504 e!4155463)))

(declare-fun lt!2465672 () tuple2!67448)

(declare-fun matchR!9002 (Regex!16857 List!66614) Bool)

(assert (=> b!6899917 (= res!2813504 (not (matchR!9002 r3!135 (_2!37027 lt!2465672))))))

(declare-fun b!6899918 () Bool)

(declare-fun e!4155462 () Bool)

(assert (=> b!6899918 (= e!4155466 (not e!4155462))))

(declare-fun res!2813512 () Bool)

(assert (=> b!6899918 (=> res!2813512 e!4155462)))

(declare-fun lt!2465668 () Bool)

(assert (=> b!6899918 (= res!2813512 lt!2465668)))

(declare-fun lt!2465663 () Regex!16857)

(declare-fun matchRSpec!3920 (Regex!16857 List!66614) Bool)

(assert (=> b!6899918 (= (matchR!9002 lt!2465663 s!14361) (matchRSpec!3920 lt!2465663 s!14361))))

(declare-datatypes ((Unit!160434 0))(
  ( (Unit!160435) )
))
(declare-fun lt!2465670 () Unit!160434)

(declare-fun mainMatchTheorem!3920 (Regex!16857 List!66614) Unit!160434)

(assert (=> b!6899918 (= lt!2465670 (mainMatchTheorem!3920 lt!2465663 s!14361))))

(declare-fun lt!2465646 () Regex!16857)

(assert (=> b!6899918 (= lt!2465668 (matchRSpec!3920 lt!2465646 s!14361))))

(assert (=> b!6899918 (= lt!2465668 (matchR!9002 lt!2465646 s!14361))))

(declare-fun lt!2465660 () Unit!160434)

(assert (=> b!6899918 (= lt!2465660 (mainMatchTheorem!3920 lt!2465646 s!14361))))

(assert (=> b!6899918 (= lt!2465663 (Concat!25702 r1!6342 lt!2465666))))

(assert (=> b!6899918 (= lt!2465666 (Concat!25702 r2!6280 r3!135))))

(declare-fun lt!2465645 () Regex!16857)

(assert (=> b!6899918 (= lt!2465646 (Concat!25702 lt!2465645 r3!135))))

(assert (=> b!6899918 (= lt!2465645 (Concat!25702 r1!6342 r2!6280))))

(declare-fun b!6899919 () Bool)

(declare-fun e!4155464 () Bool)

(declare-fun tp!1899641 () Bool)

(declare-fun tp!1899645 () Bool)

(assert (=> b!6899919 (= e!4155464 (and tp!1899641 tp!1899645))))

(declare-fun b!6899920 () Bool)

(declare-fun e!4155468 () Bool)

(assert (=> b!6899920 (= e!4155463 e!4155468)))

(declare-fun res!2813506 () Bool)

(assert (=> b!6899920 (=> res!2813506 e!4155468)))

(declare-fun lt!2465669 () List!66614)

(assert (=> b!6899920 (= res!2813506 (not (= lt!2465669 s!14361)))))

(declare-fun ++!14910 (List!66614 List!66614) List!66614)

(assert (=> b!6899920 (= lt!2465669 (++!14910 (_1!37027 lt!2465648) (++!14910 (_1!37027 lt!2465672) (_2!37027 lt!2465672))))))

(assert (=> b!6899920 (matchRSpec!3920 r3!135 (_2!37027 lt!2465672))))

(declare-fun lt!2465650 () Unit!160434)

(assert (=> b!6899920 (= lt!2465650 (mainMatchTheorem!3920 r3!135 (_2!37027 lt!2465672)))))

(assert (=> b!6899920 (matchRSpec!3920 r2!6280 (_1!37027 lt!2465672))))

(declare-fun lt!2465658 () Unit!160434)

(assert (=> b!6899920 (= lt!2465658 (mainMatchTheorem!3920 r2!6280 (_1!37027 lt!2465672)))))

(declare-fun b!6899921 () Bool)

(declare-fun e!4155467 () Bool)

(declare-fun tp!1899651 () Bool)

(assert (=> b!6899921 (= e!4155467 tp!1899651)))

(declare-fun b!6899922 () Bool)

(declare-fun tp!1899653 () Bool)

(declare-fun tp!1899642 () Bool)

(assert (=> b!6899922 (= e!4155467 (and tp!1899653 tp!1899642))))

(declare-fun b!6899923 () Bool)

(assert (=> b!6899923 (= e!4155467 tp_is_empty!42939)))

(declare-fun b!6899924 () Bool)

(declare-fun tp!1899647 () Bool)

(assert (=> b!6899924 (= e!4155469 tp!1899647)))

(declare-fun b!6899925 () Bool)

(declare-fun res!2813511 () Bool)

(declare-fun e!4155470 () Bool)

(assert (=> b!6899925 (=> res!2813511 e!4155470)))

(assert (=> b!6899925 (= res!2813511 (not (matchR!9002 lt!2465666 (_2!37027 lt!2465648))))))

(declare-fun res!2813508 () Bool)

(assert (=> start!664666 (=> (not res!2813508) (not e!4155466))))

(assert (=> start!664666 (= res!2813508 (validRegex!8565 r1!6342))))

(assert (=> start!664666 e!4155466))

(assert (=> start!664666 e!4155464))

(assert (=> start!664666 e!4155469))

(assert (=> start!664666 e!4155467))

(declare-fun e!4155465 () Bool)

(assert (=> start!664666 e!4155465))

(assert (=> b!6899926 (= e!4155470 e!4155463)))

(declare-fun res!2813505 () Bool)

(assert (=> b!6899926 (=> res!2813505 e!4155463)))

(assert (=> b!6899926 (= res!2813505 (not (matchR!9002 r2!6280 (_1!37027 lt!2465672))))))

(declare-datatypes ((Option!16636 0))(
  ( (None!16635) (Some!16635 (v!52907 tuple2!67448)) )
))
(declare-fun lt!2465653 () Option!16636)

(declare-fun get!23236 (Option!16636) tuple2!67448)

(assert (=> b!6899926 (= lt!2465672 (get!23236 lt!2465653))))

(declare-fun Exists!3865 (Int) Bool)

(assert (=> b!6899926 (= (Exists!3865 lambda!391543) (Exists!3865 lambda!391544))))

(declare-fun lt!2465651 () Unit!160434)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2338 (Regex!16857 Regex!16857 List!66614) Unit!160434)

(assert (=> b!6899926 (= lt!2465651 (lemmaExistCutMatchRandMatchRSpecEquivalent!2338 r2!6280 r3!135 (_2!37027 lt!2465648)))))

(declare-fun isDefined!13339 (Option!16636) Bool)

(assert (=> b!6899926 (= (isDefined!13339 lt!2465653) (Exists!3865 lambda!391543))))

(declare-fun findConcatSeparation!3050 (Regex!16857 Regex!16857 List!66614 List!66614 List!66614) Option!16636)

(assert (=> b!6899926 (= lt!2465653 (findConcatSeparation!3050 r2!6280 r3!135 Nil!66490 (_2!37027 lt!2465648) (_2!37027 lt!2465648)))))

(declare-fun lt!2465662 () Unit!160434)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2812 (Regex!16857 Regex!16857 List!66614) Unit!160434)

(assert (=> b!6899926 (= lt!2465662 (lemmaFindConcatSeparationEquivalentToExists!2812 r2!6280 r3!135 (_2!37027 lt!2465648)))))

(assert (=> b!6899926 (matchRSpec!3920 lt!2465666 (_2!37027 lt!2465648))))

(declare-fun lt!2465661 () Unit!160434)

(assert (=> b!6899926 (= lt!2465661 (mainMatchTheorem!3920 lt!2465666 (_2!37027 lt!2465648)))))

(declare-fun e!4155461 () Bool)

(assert (=> b!6899927 (= e!4155468 e!4155461)))

(declare-fun res!2813513 () Bool)

(assert (=> b!6899927 (=> res!2813513 e!4155461)))

(declare-fun lt!2465673 () Bool)

(declare-fun lt!2465667 () List!66614)

(assert (=> b!6899927 (= res!2813513 (or (not lt!2465673) (not (= lt!2465667 s!14361))))))

(declare-fun lt!2465652 () Bool)

(assert (=> b!6899927 lt!2465652))

(declare-fun lt!2465659 () Unit!160434)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!58 (Regex!16857 Regex!16857 List!66614 List!66614 List!66614 List!66614 List!66614) Unit!160434)

(assert (=> b!6899927 (= lt!2465659 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!58 r1!6342 r2!6280 (_1!37027 lt!2465648) (_1!37027 lt!2465672) lt!2465649 Nil!66490 lt!2465649))))

(assert (=> b!6899927 (= (Exists!3865 lambda!391545) (Exists!3865 lambda!391546))))

(declare-fun lt!2465671 () Unit!160434)

(assert (=> b!6899927 (= lt!2465671 (lemmaExistCutMatchRandMatchRSpecEquivalent!2338 r1!6342 r2!6280 lt!2465649))))

(assert (=> b!6899927 (= lt!2465652 (Exists!3865 lambda!391545))))

(assert (=> b!6899927 (= lt!2465652 (isDefined!13339 (findConcatSeparation!3050 r1!6342 r2!6280 Nil!66490 lt!2465649 lt!2465649)))))

(declare-fun lt!2465664 () Unit!160434)

(assert (=> b!6899927 (= lt!2465664 (lemmaFindConcatSeparationEquivalentToExists!2812 r1!6342 r2!6280 lt!2465649))))

(assert (=> b!6899927 (= lt!2465673 (matchRSpec!3920 lt!2465645 lt!2465649))))

(assert (=> b!6899927 (= lt!2465673 (matchR!9002 lt!2465645 lt!2465649))))

(declare-fun lt!2465657 () Unit!160434)

(assert (=> b!6899927 (= lt!2465657 (mainMatchTheorem!3920 lt!2465645 lt!2465649))))

(assert (=> b!6899927 (= lt!2465667 lt!2465669)))

(assert (=> b!6899927 (= lt!2465667 (++!14910 lt!2465649 (_2!37027 lt!2465672)))))

(assert (=> b!6899927 (= lt!2465649 (++!14910 (_1!37027 lt!2465648) (_1!37027 lt!2465672)))))

(declare-fun lt!2465655 () Unit!160434)

(declare-fun lemmaConcatAssociativity!2990 (List!66614 List!66614 List!66614) Unit!160434)

(assert (=> b!6899927 (= lt!2465655 (lemmaConcatAssociativity!2990 (_1!37027 lt!2465648) (_1!37027 lt!2465672) (_2!37027 lt!2465672)))))

(declare-fun b!6899928 () Bool)

(declare-fun e!4155460 () Bool)

(assert (=> b!6899928 (= e!4155462 e!4155460)))

(declare-fun res!2813514 () Bool)

(assert (=> b!6899928 (=> res!2813514 e!4155460)))

(declare-fun lt!2465647 () Option!16636)

(assert (=> b!6899928 (= res!2813514 (not (isDefined!13339 lt!2465647)))))

(assert (=> b!6899928 (= lt!2465647 (findConcatSeparation!3050 r1!6342 lt!2465666 Nil!66490 s!14361 s!14361))))

(declare-fun b!6899929 () Bool)

(declare-fun tp!1899655 () Bool)

(assert (=> b!6899929 (= e!4155465 (and tp_is_empty!42939 tp!1899655))))

(assert (=> b!6899930 (= e!4155460 e!4155470)))

(declare-fun res!2813507 () Bool)

(assert (=> b!6899930 (=> res!2813507 e!4155470)))

(declare-fun lt!2465656 () Bool)

(assert (=> b!6899930 (= res!2813507 (not lt!2465656))))

(assert (=> b!6899930 (= lt!2465656 (matchRSpec!3920 r1!6342 (_1!37027 lt!2465648)))))

(assert (=> b!6899930 (= lt!2465656 (matchR!9002 r1!6342 (_1!37027 lt!2465648)))))

(declare-fun lt!2465654 () Unit!160434)

(assert (=> b!6899930 (= lt!2465654 (mainMatchTheorem!3920 r1!6342 (_1!37027 lt!2465648)))))

(assert (=> b!6899930 (= lt!2465648 (get!23236 lt!2465647))))

(assert (=> b!6899930 (= (Exists!3865 lambda!391541) (Exists!3865 lambda!391542))))

(declare-fun lt!2465674 () Unit!160434)

(assert (=> b!6899930 (= lt!2465674 (lemmaExistCutMatchRandMatchRSpecEquivalent!2338 r1!6342 lt!2465666 s!14361))))

(assert (=> b!6899930 (Exists!3865 lambda!391541)))

(declare-fun lt!2465675 () Unit!160434)

(assert (=> b!6899930 (= lt!2465675 (lemmaFindConcatSeparationEquivalentToExists!2812 r1!6342 lt!2465666 s!14361))))

(declare-fun b!6899931 () Bool)

(assert (=> b!6899931 (= e!4155461 true)))

(assert (=> b!6899931 (isDefined!13339 (findConcatSeparation!3050 lt!2465645 r3!135 Nil!66490 s!14361 s!14361))))

(declare-fun lt!2465665 () Unit!160434)

(assert (=> b!6899931 (= lt!2465665 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!58 lt!2465645 r3!135 lt!2465649 (_2!37027 lt!2465672) s!14361 Nil!66490 s!14361))))

(declare-fun b!6899932 () Bool)

(declare-fun tp!1899652 () Bool)

(declare-fun tp!1899646 () Bool)

(assert (=> b!6899932 (= e!4155469 (and tp!1899652 tp!1899646))))

(declare-fun b!6899933 () Bool)

(declare-fun res!2813509 () Bool)

(assert (=> b!6899933 (=> (not res!2813509) (not e!4155466))))

(assert (=> b!6899933 (= res!2813509 (validRegex!8565 r2!6280))))

(declare-fun b!6899934 () Bool)

(assert (=> b!6899934 (= e!4155464 tp_is_empty!42939)))

(declare-fun b!6899935 () Bool)

(declare-fun tp!1899644 () Bool)

(declare-fun tp!1899648 () Bool)

(assert (=> b!6899935 (= e!4155467 (and tp!1899644 tp!1899648))))

(declare-fun b!6899936 () Bool)

(declare-fun tp!1899649 () Bool)

(assert (=> b!6899936 (= e!4155464 tp!1899649)))

(declare-fun b!6899937 () Bool)

(declare-fun tp!1899640 () Bool)

(declare-fun tp!1899654 () Bool)

(assert (=> b!6899937 (= e!4155464 (and tp!1899640 tp!1899654))))

(assert (= (and start!664666 res!2813508) b!6899933))

(assert (= (and b!6899933 res!2813509) b!6899915))

(assert (= (and b!6899915 res!2813510) b!6899918))

(assert (= (and b!6899918 (not res!2813512)) b!6899928))

(assert (= (and b!6899928 (not res!2813514)) b!6899930))

(assert (= (and b!6899930 (not res!2813507)) b!6899925))

(assert (= (and b!6899925 (not res!2813511)) b!6899926))

(assert (= (and b!6899926 (not res!2813505)) b!6899917))

(assert (= (and b!6899917 (not res!2813504)) b!6899920))

(assert (= (and b!6899920 (not res!2813506)) b!6899927))

(assert (= (and b!6899927 (not res!2813513)) b!6899931))

(get-info :version)

(assert (= (and start!664666 ((_ is ElementMatch!16857) r1!6342)) b!6899934))

(assert (= (and start!664666 ((_ is Concat!25702) r1!6342)) b!6899937))

(assert (= (and start!664666 ((_ is Star!16857) r1!6342)) b!6899936))

(assert (= (and start!664666 ((_ is Union!16857) r1!6342)) b!6899919))

(assert (= (and start!664666 ((_ is ElementMatch!16857) r2!6280)) b!6899914))

(assert (= (and start!664666 ((_ is Concat!25702) r2!6280)) b!6899916))

(assert (= (and start!664666 ((_ is Star!16857) r2!6280)) b!6899924))

(assert (= (and start!664666 ((_ is Union!16857) r2!6280)) b!6899932))

(assert (= (and start!664666 ((_ is ElementMatch!16857) r3!135)) b!6899923))

(assert (= (and start!664666 ((_ is Concat!25702) r3!135)) b!6899922))

(assert (= (and start!664666 ((_ is Star!16857) r3!135)) b!6899921))

(assert (= (and start!664666 ((_ is Union!16857) r3!135)) b!6899935))

(assert (= (and start!664666 ((_ is Cons!66490) s!14361)) b!6899929))

(declare-fun m!7618058 () Bool)

(assert (=> b!6899930 m!7618058))

(declare-fun m!7618060 () Bool)

(assert (=> b!6899930 m!7618060))

(declare-fun m!7618062 () Bool)

(assert (=> b!6899930 m!7618062))

(declare-fun m!7618064 () Bool)

(assert (=> b!6899930 m!7618064))

(declare-fun m!7618066 () Bool)

(assert (=> b!6899930 m!7618066))

(declare-fun m!7618068 () Bool)

(assert (=> b!6899930 m!7618068))

(assert (=> b!6899930 m!7618060))

(declare-fun m!7618070 () Bool)

(assert (=> b!6899930 m!7618070))

(declare-fun m!7618072 () Bool)

(assert (=> b!6899930 m!7618072))

(declare-fun m!7618074 () Bool)

(assert (=> start!664666 m!7618074))

(declare-fun m!7618076 () Bool)

(assert (=> b!6899933 m!7618076))

(declare-fun m!7618078 () Bool)

(assert (=> b!6899917 m!7618078))

(declare-fun m!7618080 () Bool)

(assert (=> b!6899920 m!7618080))

(declare-fun m!7618082 () Bool)

(assert (=> b!6899920 m!7618082))

(declare-fun m!7618084 () Bool)

(assert (=> b!6899920 m!7618084))

(declare-fun m!7618086 () Bool)

(assert (=> b!6899920 m!7618086))

(assert (=> b!6899920 m!7618086))

(declare-fun m!7618088 () Bool)

(assert (=> b!6899920 m!7618088))

(declare-fun m!7618090 () Bool)

(assert (=> b!6899920 m!7618090))

(declare-fun m!7618092 () Bool)

(assert (=> b!6899927 m!7618092))

(declare-fun m!7618094 () Bool)

(assert (=> b!6899927 m!7618094))

(declare-fun m!7618096 () Bool)

(assert (=> b!6899927 m!7618096))

(declare-fun m!7618098 () Bool)

(assert (=> b!6899927 m!7618098))

(declare-fun m!7618100 () Bool)

(assert (=> b!6899927 m!7618100))

(declare-fun m!7618102 () Bool)

(assert (=> b!6899927 m!7618102))

(declare-fun m!7618104 () Bool)

(assert (=> b!6899927 m!7618104))

(declare-fun m!7618106 () Bool)

(assert (=> b!6899927 m!7618106))

(declare-fun m!7618108 () Bool)

(assert (=> b!6899927 m!7618108))

(assert (=> b!6899927 m!7618108))

(declare-fun m!7618110 () Bool)

(assert (=> b!6899927 m!7618110))

(assert (=> b!6899927 m!7618100))

(declare-fun m!7618112 () Bool)

(assert (=> b!6899927 m!7618112))

(declare-fun m!7618114 () Bool)

(assert (=> b!6899927 m!7618114))

(declare-fun m!7618116 () Bool)

(assert (=> b!6899927 m!7618116))

(declare-fun m!7618118 () Bool)

(assert (=> b!6899928 m!7618118))

(declare-fun m!7618120 () Bool)

(assert (=> b!6899928 m!7618120))

(declare-fun m!7618122 () Bool)

(assert (=> b!6899931 m!7618122))

(assert (=> b!6899931 m!7618122))

(declare-fun m!7618124 () Bool)

(assert (=> b!6899931 m!7618124))

(declare-fun m!7618126 () Bool)

(assert (=> b!6899931 m!7618126))

(declare-fun m!7618128 () Bool)

(assert (=> b!6899926 m!7618128))

(declare-fun m!7618130 () Bool)

(assert (=> b!6899926 m!7618130))

(declare-fun m!7618132 () Bool)

(assert (=> b!6899926 m!7618132))

(declare-fun m!7618134 () Bool)

(assert (=> b!6899926 m!7618134))

(declare-fun m!7618136 () Bool)

(assert (=> b!6899926 m!7618136))

(declare-fun m!7618138 () Bool)

(assert (=> b!6899926 m!7618138))

(declare-fun m!7618140 () Bool)

(assert (=> b!6899926 m!7618140))

(declare-fun m!7618142 () Bool)

(assert (=> b!6899926 m!7618142))

(declare-fun m!7618144 () Bool)

(assert (=> b!6899926 m!7618144))

(declare-fun m!7618146 () Bool)

(assert (=> b!6899926 m!7618146))

(assert (=> b!6899926 m!7618132))

(declare-fun m!7618148 () Bool)

(assert (=> b!6899915 m!7618148))

(declare-fun m!7618150 () Bool)

(assert (=> b!6899918 m!7618150))

(declare-fun m!7618152 () Bool)

(assert (=> b!6899918 m!7618152))

(declare-fun m!7618154 () Bool)

(assert (=> b!6899918 m!7618154))

(declare-fun m!7618156 () Bool)

(assert (=> b!6899918 m!7618156))

(declare-fun m!7618158 () Bool)

(assert (=> b!6899918 m!7618158))

(declare-fun m!7618160 () Bool)

(assert (=> b!6899918 m!7618160))

(declare-fun m!7618162 () Bool)

(assert (=> b!6899925 m!7618162))

(check-sat (not b!6899919) (not start!664666) (not b!6899928) (not b!6899916) (not b!6899935) (not b!6899936) (not b!6899930) (not b!6899918) (not b!6899925) (not b!6899917) (not b!6899937) (not b!6899920) (not b!6899927) (not b!6899924) (not b!6899922) (not b!6899921) (not b!6899929) tp_is_empty!42939 (not b!6899926) (not b!6899931) (not b!6899932) (not b!6899915) (not b!6899933))
(check-sat)
