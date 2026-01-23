; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665650 () Bool)

(assert start!665650)

(declare-fun b!6921879 () Bool)

(assert (=> b!6921879 true))

(assert (=> b!6921879 true))

(assert (=> b!6921879 true))

(declare-fun lambda!393526 () Int)

(declare-fun lambda!393525 () Int)

(assert (=> b!6921879 (not (= lambda!393526 lambda!393525))))

(assert (=> b!6921879 true))

(assert (=> b!6921879 true))

(assert (=> b!6921879 true))

(declare-fun bs!1847191 () Bool)

(declare-fun b!6921876 () Bool)

(assert (= bs!1847191 (and b!6921876 b!6921879)))

(declare-datatypes ((C!34108 0))(
  ( (C!34109 (val!26756 Int)) )
))
(declare-datatypes ((Regex!16919 0))(
  ( (ElementMatch!16919 (c!1285051 C!34108)) (Concat!25764 (regOne!34350 Regex!16919) (regTwo!34350 Regex!16919)) (EmptyExpr!16919) (Star!16919 (reg!17248 Regex!16919)) (EmptyLang!16919) (Union!16919 (regOne!34351 Regex!16919) (regTwo!34351 Regex!16919)) )
))
(declare-fun r3!135 () Regex!16919)

(declare-datatypes ((List!66672 0))(
  ( (Nil!66548) (Cons!66548 (h!72996 C!34108) (t!380415 List!66672)) )
))
(declare-fun s!14361 () List!66672)

(declare-fun lt!2470609 () Regex!16919)

(declare-datatypes ((tuple2!67552 0))(
  ( (tuple2!67553 (_1!37079 List!66672) (_2!37079 List!66672)) )
))
(declare-fun lt!2470615 () tuple2!67552)

(declare-fun r2!6280 () Regex!16919)

(declare-fun lambda!393527 () Int)

(declare-fun r1!6342 () Regex!16919)

(assert (=> bs!1847191 (= (and (= (_1!37079 lt!2470615) s!14361) (= r1!6342 lt!2470609) (= r2!6280 r3!135)) (= lambda!393527 lambda!393525))))

(assert (=> bs!1847191 (not (= lambda!393527 lambda!393526))))

(assert (=> b!6921876 true))

(assert (=> b!6921876 true))

(assert (=> b!6921876 true))

(declare-fun lambda!393528 () Int)

(assert (=> bs!1847191 (not (= lambda!393528 lambda!393525))))

(assert (=> bs!1847191 (= (and (= (_1!37079 lt!2470615) s!14361) (= r1!6342 lt!2470609) (= r2!6280 r3!135)) (= lambda!393528 lambda!393526))))

(assert (=> b!6921876 (not (= lambda!393528 lambda!393527))))

(assert (=> b!6921876 true))

(assert (=> b!6921876 true))

(assert (=> b!6921876 true))

(declare-fun bs!1847192 () Bool)

(declare-fun b!6921870 () Bool)

(assert (= bs!1847192 (and b!6921870 b!6921879)))

(declare-fun lambda!393529 () Int)

(declare-fun lt!2470600 () List!66672)

(assert (=> bs!1847192 (= (and (= lt!2470600 s!14361) (= r2!6280 lt!2470609)) (= lambda!393529 lambda!393525))))

(assert (=> bs!1847192 (not (= lambda!393529 lambda!393526))))

(declare-fun bs!1847193 () Bool)

(assert (= bs!1847193 (and b!6921870 b!6921876)))

(assert (=> bs!1847193 (= (and (= lt!2470600 (_1!37079 lt!2470615)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393529 lambda!393527))))

(assert (=> bs!1847193 (not (= lambda!393529 lambda!393528))))

(assert (=> b!6921870 true))

(assert (=> b!6921870 true))

(assert (=> b!6921870 true))

(declare-fun lambda!393530 () Int)

(assert (=> bs!1847192 (not (= lambda!393530 lambda!393525))))

(assert (=> bs!1847193 (= (and (= lt!2470600 (_1!37079 lt!2470615)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393530 lambda!393528))))

(assert (=> bs!1847193 (not (= lambda!393530 lambda!393527))))

(assert (=> bs!1847192 (= (and (= lt!2470600 s!14361) (= r2!6280 lt!2470609)) (= lambda!393530 lambda!393526))))

(assert (=> b!6921870 (not (= lambda!393530 lambda!393529))))

(assert (=> b!6921870 true))

(assert (=> b!6921870 true))

(assert (=> b!6921870 true))

(declare-fun b!6921862 () Bool)

(declare-fun e!4165935 () Bool)

(declare-fun tp_is_empty!43063 () Bool)

(assert (=> b!6921862 (= e!4165935 tp_is_empty!43063)))

(declare-fun b!6921863 () Bool)

(declare-fun tp!1907973 () Bool)

(declare-fun tp!1907984 () Bool)

(assert (=> b!6921863 (= e!4165935 (and tp!1907973 tp!1907984))))

(declare-fun b!6921864 () Bool)

(declare-fun res!2822503 () Bool)

(declare-fun e!4165938 () Bool)

(assert (=> b!6921864 (=> (not res!2822503) (not e!4165938))))

(declare-fun validRegex!8625 (Regex!16919) Bool)

(assert (=> b!6921864 (= res!2822503 (validRegex!8625 r2!6280))))

(declare-fun b!6921866 () Bool)

(declare-fun e!4165941 () Bool)

(declare-fun e!4165934 () Bool)

(assert (=> b!6921866 (= e!4165941 e!4165934)))

(declare-fun res!2822508 () Bool)

(assert (=> b!6921866 (=> res!2822508 e!4165934)))

(declare-fun lt!2470605 () List!66672)

(assert (=> b!6921866 (= res!2822508 (not (= lt!2470605 s!14361)))))

(declare-fun lt!2470595 () tuple2!67552)

(declare-fun ++!14962 (List!66672 List!66672) List!66672)

(assert (=> b!6921866 (= lt!2470605 (++!14962 (++!14962 (_1!37079 lt!2470595) (_2!37079 lt!2470595)) (_2!37079 lt!2470615)))))

(declare-fun matchRSpec!3976 (Regex!16919 List!66672) Bool)

(assert (=> b!6921866 (matchRSpec!3976 r2!6280 (_2!37079 lt!2470595))))

(declare-datatypes ((Unit!160562 0))(
  ( (Unit!160563) )
))
(declare-fun lt!2470606 () Unit!160562)

(declare-fun mainMatchTheorem!3976 (Regex!16919 List!66672) Unit!160562)

(assert (=> b!6921866 (= lt!2470606 (mainMatchTheorem!3976 r2!6280 (_2!37079 lt!2470595)))))

(assert (=> b!6921866 (matchRSpec!3976 r1!6342 (_1!37079 lt!2470595))))

(declare-fun lt!2470599 () Unit!160562)

(assert (=> b!6921866 (= lt!2470599 (mainMatchTheorem!3976 r1!6342 (_1!37079 lt!2470595)))))

(declare-fun b!6921867 () Bool)

(declare-fun e!4165937 () Bool)

(declare-fun tp!1907987 () Bool)

(assert (=> b!6921867 (= e!4165937 tp!1907987)))

(declare-fun b!6921868 () Bool)

(declare-fun e!4165936 () Bool)

(assert (=> b!6921868 (= e!4165938 (not e!4165936))))

(declare-fun res!2822498 () Bool)

(assert (=> b!6921868 (=> res!2822498 e!4165936)))

(declare-fun lt!2470613 () Bool)

(assert (=> b!6921868 (= res!2822498 (not lt!2470613))))

(declare-fun lt!2470607 () Regex!16919)

(declare-fun matchR!9058 (Regex!16919 List!66672) Bool)

(assert (=> b!6921868 (= (matchR!9058 lt!2470607 s!14361) (matchRSpec!3976 lt!2470607 s!14361))))

(declare-fun lt!2470620 () Unit!160562)

(assert (=> b!6921868 (= lt!2470620 (mainMatchTheorem!3976 lt!2470607 s!14361))))

(declare-fun lt!2470598 () Regex!16919)

(assert (=> b!6921868 (= lt!2470613 (matchRSpec!3976 lt!2470598 s!14361))))

(assert (=> b!6921868 (= lt!2470613 (matchR!9058 lt!2470598 s!14361))))

(declare-fun lt!2470623 () Unit!160562)

(assert (=> b!6921868 (= lt!2470623 (mainMatchTheorem!3976 lt!2470598 s!14361))))

(declare-fun lt!2470596 () Regex!16919)

(assert (=> b!6921868 (= lt!2470607 (Concat!25764 r1!6342 lt!2470596))))

(assert (=> b!6921868 (= lt!2470596 (Concat!25764 r2!6280 r3!135))))

(assert (=> b!6921868 (= lt!2470598 (Concat!25764 lt!2470609 r3!135))))

(assert (=> b!6921868 (= lt!2470609 (Concat!25764 r1!6342 r2!6280))))

(declare-fun b!6921869 () Bool)

(declare-fun res!2822507 () Bool)

(assert (=> b!6921869 (=> res!2822507 e!4165941)))

(assert (=> b!6921869 (= res!2822507 (not (matchR!9058 r2!6280 (_2!37079 lt!2470595))))))

(declare-fun e!4165944 () Bool)

(assert (=> b!6921870 (= e!4165934 e!4165944)))

(declare-fun res!2822506 () Bool)

(assert (=> b!6921870 (=> res!2822506 e!4165944)))

(declare-fun lt!2470614 () Bool)

(assert (=> b!6921870 (= res!2822506 (not lt!2470614))))

(declare-fun lt!2470611 () Bool)

(assert (=> b!6921870 lt!2470611))

(declare-fun lt!2470612 () Unit!160562)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!80 (Regex!16919 Regex!16919 List!66672 List!66672 List!66672 List!66672 List!66672) Unit!160562)

(assert (=> b!6921870 (= lt!2470612 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!80 r2!6280 r3!135 (_2!37079 lt!2470595) (_2!37079 lt!2470615) lt!2470600 Nil!66548 lt!2470600))))

(declare-fun Exists!3921 (Int) Bool)

(assert (=> b!6921870 (= (Exists!3921 lambda!393529) (Exists!3921 lambda!393530))))

(declare-fun lt!2470621 () Unit!160562)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2388 (Regex!16919 Regex!16919 List!66672) Unit!160562)

(assert (=> b!6921870 (= lt!2470621 (lemmaExistCutMatchRandMatchRSpecEquivalent!2388 r2!6280 r3!135 lt!2470600))))

(assert (=> b!6921870 (= lt!2470611 (Exists!3921 lambda!393529))))

(declare-datatypes ((Option!16688 0))(
  ( (None!16687) (Some!16687 (v!52959 tuple2!67552)) )
))
(declare-fun isDefined!13391 (Option!16688) Bool)

(declare-fun findConcatSeparation!3102 (Regex!16919 Regex!16919 List!66672 List!66672 List!66672) Option!16688)

(assert (=> b!6921870 (= lt!2470611 (isDefined!13391 (findConcatSeparation!3102 r2!6280 r3!135 Nil!66548 lt!2470600 lt!2470600)))))

(declare-fun lt!2470617 () Unit!160562)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2864 (Regex!16919 Regex!16919 List!66672) Unit!160562)

(assert (=> b!6921870 (= lt!2470617 (lemmaFindConcatSeparationEquivalentToExists!2864 r2!6280 r3!135 lt!2470600))))

(assert (=> b!6921870 (= lt!2470614 (matchRSpec!3976 lt!2470596 lt!2470600))))

(assert (=> b!6921870 (= lt!2470614 (matchR!9058 lt!2470596 lt!2470600))))

(declare-fun lt!2470616 () Unit!160562)

(assert (=> b!6921870 (= lt!2470616 (mainMatchTheorem!3976 lt!2470596 lt!2470600))))

(assert (=> b!6921870 (= lt!2470600 (++!14962 (_2!37079 lt!2470595) (_2!37079 lt!2470615)))))

(declare-fun b!6921871 () Bool)

(assert (=> b!6921871 (= e!4165937 tp_is_empty!43063)))

(declare-fun b!6921872 () Bool)

(declare-fun e!4165943 () Bool)

(declare-fun tp!1907981 () Bool)

(assert (=> b!6921872 (= e!4165943 (and tp_is_empty!43063 tp!1907981))))

(declare-fun b!6921873 () Bool)

(declare-fun tp!1907977 () Bool)

(declare-fun tp!1907983 () Bool)

(assert (=> b!6921873 (= e!4165935 (and tp!1907977 tp!1907983))))

(declare-fun b!6921874 () Bool)

(declare-fun tp!1907974 () Bool)

(declare-fun tp!1907985 () Bool)

(assert (=> b!6921874 (= e!4165937 (and tp!1907974 tp!1907985))))

(declare-fun b!6921875 () Bool)

(declare-fun e!4165940 () Bool)

(declare-fun tp!1907979 () Bool)

(declare-fun tp!1907976 () Bool)

(assert (=> b!6921875 (= e!4165940 (and tp!1907979 tp!1907976))))

(declare-fun res!2822505 () Bool)

(assert (=> start!665650 (=> (not res!2822505) (not e!4165938))))

(assert (=> start!665650 (= res!2822505 (validRegex!8625 r1!6342))))

(assert (=> start!665650 e!4165938))

(assert (=> start!665650 e!4165937))

(assert (=> start!665650 e!4165935))

(assert (=> start!665650 e!4165940))

(assert (=> start!665650 e!4165943))

(declare-fun b!6921865 () Bool)

(declare-fun res!2822502 () Bool)

(assert (=> b!6921865 (=> (not res!2822502) (not e!4165938))))

(assert (=> b!6921865 (= res!2822502 (validRegex!8625 r3!135))))

(declare-fun e!4165942 () Bool)

(assert (=> b!6921876 (= e!4165942 e!4165941)))

(declare-fun res!2822499 () Bool)

(assert (=> b!6921876 (=> res!2822499 e!4165941)))

(assert (=> b!6921876 (= res!2822499 (not (matchR!9058 r1!6342 (_1!37079 lt!2470595))))))

(declare-fun lt!2470610 () Option!16688)

(declare-fun get!23319 (Option!16688) tuple2!67552)

(assert (=> b!6921876 (= lt!2470595 (get!23319 lt!2470610))))

(assert (=> b!6921876 (= (Exists!3921 lambda!393527) (Exists!3921 lambda!393528))))

(declare-fun lt!2470597 () Unit!160562)

(assert (=> b!6921876 (= lt!2470597 (lemmaExistCutMatchRandMatchRSpecEquivalent!2388 r1!6342 r2!6280 (_1!37079 lt!2470615)))))

(assert (=> b!6921876 (= (isDefined!13391 lt!2470610) (Exists!3921 lambda!393527))))

(assert (=> b!6921876 (= lt!2470610 (findConcatSeparation!3102 r1!6342 r2!6280 Nil!66548 (_1!37079 lt!2470615) (_1!37079 lt!2470615)))))

(declare-fun lt!2470603 () Unit!160562)

(assert (=> b!6921876 (= lt!2470603 (lemmaFindConcatSeparationEquivalentToExists!2864 r1!6342 r2!6280 (_1!37079 lt!2470615)))))

(declare-fun b!6921877 () Bool)

(declare-fun tp!1907986 () Bool)

(assert (=> b!6921877 (= e!4165935 tp!1907986)))

(declare-fun b!6921878 () Bool)

(declare-fun tp!1907980 () Bool)

(declare-fun tp!1907978 () Bool)

(assert (=> b!6921878 (= e!4165940 (and tp!1907980 tp!1907978))))

(assert (=> b!6921879 (= e!4165936 e!4165942)))

(declare-fun res!2822500 () Bool)

(assert (=> b!6921879 (=> res!2822500 e!4165942)))

(declare-fun lt!2470622 () Bool)

(assert (=> b!6921879 (= res!2822500 (not lt!2470622))))

(assert (=> b!6921879 (= lt!2470622 (matchRSpec!3976 lt!2470609 (_1!37079 lt!2470615)))))

(assert (=> b!6921879 (= lt!2470622 (matchR!9058 lt!2470609 (_1!37079 lt!2470615)))))

(declare-fun lt!2470601 () Unit!160562)

(assert (=> b!6921879 (= lt!2470601 (mainMatchTheorem!3976 lt!2470609 (_1!37079 lt!2470615)))))

(declare-fun lt!2470618 () Option!16688)

(assert (=> b!6921879 (= lt!2470615 (get!23319 lt!2470618))))

(assert (=> b!6921879 (= (Exists!3921 lambda!393525) (Exists!3921 lambda!393526))))

(declare-fun lt!2470619 () Unit!160562)

(assert (=> b!6921879 (= lt!2470619 (lemmaExistCutMatchRandMatchRSpecEquivalent!2388 lt!2470609 r3!135 s!14361))))

(assert (=> b!6921879 (= (isDefined!13391 lt!2470618) (Exists!3921 lambda!393525))))

(assert (=> b!6921879 (= lt!2470618 (findConcatSeparation!3102 lt!2470609 r3!135 Nil!66548 s!14361 s!14361))))

(declare-fun lt!2470608 () Unit!160562)

(assert (=> b!6921879 (= lt!2470608 (lemmaFindConcatSeparationEquivalentToExists!2864 lt!2470609 r3!135 s!14361))))

(declare-fun b!6921880 () Bool)

(assert (=> b!6921880 (= e!4165940 tp_is_empty!43063)))

(declare-fun b!6921881 () Bool)

(declare-fun e!4165939 () Bool)

(assert (=> b!6921881 (= e!4165944 e!4165939)))

(declare-fun res!2822504 () Bool)

(assert (=> b!6921881 (=> res!2822504 e!4165939)))

(declare-fun lt!2470602 () List!66672)

(assert (=> b!6921881 (= res!2822504 (not (= lt!2470602 s!14361)))))

(assert (=> b!6921881 (= lt!2470605 lt!2470602)))

(assert (=> b!6921881 (= lt!2470602 (++!14962 (_1!37079 lt!2470595) lt!2470600))))

(declare-fun lt!2470604 () Unit!160562)

(declare-fun lemmaConcatAssociativity!3010 (List!66672 List!66672 List!66672) Unit!160562)

(assert (=> b!6921881 (= lt!2470604 (lemmaConcatAssociativity!3010 (_1!37079 lt!2470595) (_2!37079 lt!2470595) (_2!37079 lt!2470615)))))

(declare-fun b!6921882 () Bool)

(declare-fun res!2822501 () Bool)

(assert (=> b!6921882 (=> res!2822501 e!4165942)))

(assert (=> b!6921882 (= res!2822501 (not (matchR!9058 r3!135 (_2!37079 lt!2470615))))))

(declare-fun b!6921883 () Bool)

(declare-fun tp!1907972 () Bool)

(declare-fun tp!1907982 () Bool)

(assert (=> b!6921883 (= e!4165937 (and tp!1907972 tp!1907982))))

(declare-fun b!6921884 () Bool)

(assert (=> b!6921884 (= e!4165939 (validRegex!8625 lt!2470596))))

(declare-fun b!6921885 () Bool)

(declare-fun tp!1907975 () Bool)

(assert (=> b!6921885 (= e!4165940 tp!1907975)))

(assert (= (and start!665650 res!2822505) b!6921864))

(assert (= (and b!6921864 res!2822503) b!6921865))

(assert (= (and b!6921865 res!2822502) b!6921868))

(assert (= (and b!6921868 (not res!2822498)) b!6921879))

(assert (= (and b!6921879 (not res!2822500)) b!6921882))

(assert (= (and b!6921882 (not res!2822501)) b!6921876))

(assert (= (and b!6921876 (not res!2822499)) b!6921869))

(assert (= (and b!6921869 (not res!2822507)) b!6921866))

(assert (= (and b!6921866 (not res!2822508)) b!6921870))

(assert (= (and b!6921870 (not res!2822506)) b!6921881))

(assert (= (and b!6921881 (not res!2822504)) b!6921884))

(get-info :version)

(assert (= (and start!665650 ((_ is ElementMatch!16919) r1!6342)) b!6921871))

(assert (= (and start!665650 ((_ is Concat!25764) r1!6342)) b!6921874))

(assert (= (and start!665650 ((_ is Star!16919) r1!6342)) b!6921867))

(assert (= (and start!665650 ((_ is Union!16919) r1!6342)) b!6921883))

(assert (= (and start!665650 ((_ is ElementMatch!16919) r2!6280)) b!6921862))

(assert (= (and start!665650 ((_ is Concat!25764) r2!6280)) b!6921873))

(assert (= (and start!665650 ((_ is Star!16919) r2!6280)) b!6921877))

(assert (= (and start!665650 ((_ is Union!16919) r2!6280)) b!6921863))

(assert (= (and start!665650 ((_ is ElementMatch!16919) r3!135)) b!6921880))

(assert (= (and start!665650 ((_ is Concat!25764) r3!135)) b!6921875))

(assert (= (and start!665650 ((_ is Star!16919) r3!135)) b!6921885))

(assert (= (and start!665650 ((_ is Union!16919) r3!135)) b!6921878))

(assert (= (and start!665650 ((_ is Cons!66548) s!14361)) b!6921872))

(declare-fun m!7631446 () Bool)

(assert (=> b!6921865 m!7631446))

(declare-fun m!7631448 () Bool)

(assert (=> b!6921870 m!7631448))

(declare-fun m!7631450 () Bool)

(assert (=> b!6921870 m!7631450))

(declare-fun m!7631452 () Bool)

(assert (=> b!6921870 m!7631452))

(declare-fun m!7631454 () Bool)

(assert (=> b!6921870 m!7631454))

(declare-fun m!7631456 () Bool)

(assert (=> b!6921870 m!7631456))

(declare-fun m!7631458 () Bool)

(assert (=> b!6921870 m!7631458))

(assert (=> b!6921870 m!7631454))

(declare-fun m!7631460 () Bool)

(assert (=> b!6921870 m!7631460))

(assert (=> b!6921870 m!7631448))

(declare-fun m!7631462 () Bool)

(assert (=> b!6921870 m!7631462))

(declare-fun m!7631464 () Bool)

(assert (=> b!6921870 m!7631464))

(declare-fun m!7631466 () Bool)

(assert (=> b!6921870 m!7631466))

(declare-fun m!7631468 () Bool)

(assert (=> b!6921870 m!7631468))

(declare-fun m!7631470 () Bool)

(assert (=> b!6921879 m!7631470))

(declare-fun m!7631472 () Bool)

(assert (=> b!6921879 m!7631472))

(declare-fun m!7631474 () Bool)

(assert (=> b!6921879 m!7631474))

(declare-fun m!7631476 () Bool)

(assert (=> b!6921879 m!7631476))

(declare-fun m!7631478 () Bool)

(assert (=> b!6921879 m!7631478))

(declare-fun m!7631480 () Bool)

(assert (=> b!6921879 m!7631480))

(declare-fun m!7631482 () Bool)

(assert (=> b!6921879 m!7631482))

(declare-fun m!7631484 () Bool)

(assert (=> b!6921879 m!7631484))

(assert (=> b!6921879 m!7631478))

(declare-fun m!7631486 () Bool)

(assert (=> b!6921879 m!7631486))

(declare-fun m!7631488 () Bool)

(assert (=> b!6921879 m!7631488))

(declare-fun m!7631490 () Bool)

(assert (=> b!6921869 m!7631490))

(declare-fun m!7631492 () Bool)

(assert (=> b!6921866 m!7631492))

(declare-fun m!7631494 () Bool)

(assert (=> b!6921866 m!7631494))

(declare-fun m!7631496 () Bool)

(assert (=> b!6921866 m!7631496))

(declare-fun m!7631498 () Bool)

(assert (=> b!6921866 m!7631498))

(declare-fun m!7631500 () Bool)

(assert (=> b!6921866 m!7631500))

(declare-fun m!7631502 () Bool)

(assert (=> b!6921866 m!7631502))

(assert (=> b!6921866 m!7631492))

(declare-fun m!7631504 () Bool)

(assert (=> b!6921884 m!7631504))

(declare-fun m!7631506 () Bool)

(assert (=> b!6921876 m!7631506))

(declare-fun m!7631508 () Bool)

(assert (=> b!6921876 m!7631508))

(declare-fun m!7631510 () Bool)

(assert (=> b!6921876 m!7631510))

(declare-fun m!7631512 () Bool)

(assert (=> b!6921876 m!7631512))

(declare-fun m!7631514 () Bool)

(assert (=> b!6921876 m!7631514))

(declare-fun m!7631516 () Bool)

(assert (=> b!6921876 m!7631516))

(declare-fun m!7631518 () Bool)

(assert (=> b!6921876 m!7631518))

(declare-fun m!7631520 () Bool)

(assert (=> b!6921876 m!7631520))

(assert (=> b!6921876 m!7631518))

(declare-fun m!7631522 () Bool)

(assert (=> b!6921868 m!7631522))

(declare-fun m!7631524 () Bool)

(assert (=> b!6921868 m!7631524))

(declare-fun m!7631526 () Bool)

(assert (=> b!6921868 m!7631526))

(declare-fun m!7631528 () Bool)

(assert (=> b!6921868 m!7631528))

(declare-fun m!7631530 () Bool)

(assert (=> b!6921868 m!7631530))

(declare-fun m!7631532 () Bool)

(assert (=> b!6921868 m!7631532))

(declare-fun m!7631534 () Bool)

(assert (=> b!6921864 m!7631534))

(declare-fun m!7631536 () Bool)

(assert (=> start!665650 m!7631536))

(declare-fun m!7631538 () Bool)

(assert (=> b!6921882 m!7631538))

(declare-fun m!7631540 () Bool)

(assert (=> b!6921881 m!7631540))

(declare-fun m!7631542 () Bool)

(assert (=> b!6921881 m!7631542))

(check-sat (not b!6921883) (not start!665650) (not b!6921868) (not b!6921875) (not b!6921865) (not b!6921872) (not b!6921882) (not b!6921866) (not b!6921877) (not b!6921876) (not b!6921863) (not b!6921878) (not b!6921870) (not b!6921874) (not b!6921879) (not b!6921885) (not b!6921881) tp_is_empty!43063 (not b!6921873) (not b!6921867) (not b!6921884) (not b!6921864) (not b!6921869))
(check-sat)
(get-model)

(declare-fun d!2164643 () Bool)

(assert (=> d!2164643 (= (get!23319 lt!2470618) (v!52959 lt!2470618))))

(assert (=> b!6921879 d!2164643))

(declare-fun d!2164645 () Bool)

(declare-fun choose!51535 (Int) Bool)

(assert (=> d!2164645 (= (Exists!3921 lambda!393525) (choose!51535 lambda!393525))))

(declare-fun bs!1847194 () Bool)

(assert (= bs!1847194 d!2164645))

(declare-fun m!7631544 () Bool)

(assert (=> bs!1847194 m!7631544))

(assert (=> b!6921879 d!2164645))

(declare-fun bs!1847195 () Bool)

(declare-fun b!6921975 () Bool)

(assert (= bs!1847195 (and b!6921975 b!6921879)))

(declare-fun lambda!393535 () Int)

(assert (=> bs!1847195 (not (= lambda!393535 lambda!393525))))

(declare-fun bs!1847196 () Bool)

(assert (= bs!1847196 (and b!6921975 b!6921876)))

(assert (=> bs!1847196 (not (= lambda!393535 lambda!393528))))

(declare-fun bs!1847197 () Bool)

(assert (= bs!1847197 (and b!6921975 b!6921870)))

(assert (=> bs!1847197 (not (= lambda!393535 lambda!393530))))

(assert (=> bs!1847196 (not (= lambda!393535 lambda!393527))))

(assert (=> bs!1847195 (not (= lambda!393535 lambda!393526))))

(assert (=> bs!1847197 (not (= lambda!393535 lambda!393529))))

(assert (=> b!6921975 true))

(assert (=> b!6921975 true))

(declare-fun bs!1847198 () Bool)

(declare-fun b!6921971 () Bool)

(assert (= bs!1847198 (and b!6921971 b!6921879)))

(declare-fun lambda!393536 () Int)

(assert (=> bs!1847198 (not (= lambda!393536 lambda!393525))))

(declare-fun bs!1847199 () Bool)

(assert (= bs!1847199 (and b!6921971 b!6921876)))

(assert (=> bs!1847199 (= (and (= (regOne!34350 lt!2470609) r1!6342) (= (regTwo!34350 lt!2470609) r2!6280)) (= lambda!393536 lambda!393528))))

(declare-fun bs!1847200 () Bool)

(assert (= bs!1847200 (and b!6921971 b!6921870)))

(assert (=> bs!1847200 (= (and (= (_1!37079 lt!2470615) lt!2470600) (= (regOne!34350 lt!2470609) r2!6280) (= (regTwo!34350 lt!2470609) r3!135)) (= lambda!393536 lambda!393530))))

(declare-fun bs!1847201 () Bool)

(assert (= bs!1847201 (and b!6921971 b!6921975)))

(assert (=> bs!1847201 (not (= lambda!393536 lambda!393535))))

(assert (=> bs!1847199 (not (= lambda!393536 lambda!393527))))

(assert (=> bs!1847198 (= (and (= (_1!37079 lt!2470615) s!14361) (= (regOne!34350 lt!2470609) lt!2470609) (= (regTwo!34350 lt!2470609) r3!135)) (= lambda!393536 lambda!393526))))

(assert (=> bs!1847200 (not (= lambda!393536 lambda!393529))))

(assert (=> b!6921971 true))

(assert (=> b!6921971 true))

(declare-fun b!6921966 () Bool)

(declare-fun c!1285070 () Bool)

(assert (=> b!6921966 (= c!1285070 ((_ is Union!16919) lt!2470609))))

(declare-fun e!4165988 () Bool)

(declare-fun e!4165989 () Bool)

(assert (=> b!6921966 (= e!4165988 e!4165989)))

(declare-fun c!1285072 () Bool)

(declare-fun call!629174 () Bool)

(declare-fun bm!629168 () Bool)

(assert (=> bm!629168 (= call!629174 (Exists!3921 (ite c!1285072 lambda!393535 lambda!393536)))))

(declare-fun d!2164647 () Bool)

(declare-fun c!1285071 () Bool)

(assert (=> d!2164647 (= c!1285071 ((_ is EmptyExpr!16919) lt!2470609))))

(declare-fun e!4165986 () Bool)

(assert (=> d!2164647 (= (matchRSpec!3976 lt!2470609 (_1!37079 lt!2470615)) e!4165986)))

(declare-fun b!6921967 () Bool)

(declare-fun e!4165987 () Bool)

(assert (=> b!6921967 (= e!4165989 e!4165987)))

(declare-fun res!2822549 () Bool)

(assert (=> b!6921967 (= res!2822549 (matchRSpec!3976 (regOne!34351 lt!2470609) (_1!37079 lt!2470615)))))

(assert (=> b!6921967 (=> res!2822549 e!4165987)))

(declare-fun b!6921968 () Bool)

(declare-fun e!4165990 () Bool)

(assert (=> b!6921968 (= e!4165986 e!4165990)))

(declare-fun res!2822550 () Bool)

(assert (=> b!6921968 (= res!2822550 (not ((_ is EmptyLang!16919) lt!2470609)))))

(assert (=> b!6921968 (=> (not res!2822550) (not e!4165990))))

(declare-fun b!6921969 () Bool)

(declare-fun c!1285069 () Bool)

(assert (=> b!6921969 (= c!1285069 ((_ is ElementMatch!16919) lt!2470609))))

(assert (=> b!6921969 (= e!4165990 e!4165988)))

(declare-fun b!6921970 () Bool)

(assert (=> b!6921970 (= e!4165988 (= (_1!37079 lt!2470615) (Cons!66548 (c!1285051 lt!2470609) Nil!66548)))))

(declare-fun bm!629169 () Bool)

(declare-fun call!629173 () Bool)

(declare-fun isEmpty!38801 (List!66672) Bool)

(assert (=> bm!629169 (= call!629173 (isEmpty!38801 (_1!37079 lt!2470615)))))

(declare-fun e!4165984 () Bool)

(assert (=> b!6921971 (= e!4165984 call!629174)))

(declare-fun b!6921972 () Bool)

(assert (=> b!6921972 (= e!4165989 e!4165984)))

(assert (=> b!6921972 (= c!1285072 ((_ is Star!16919) lt!2470609))))

(declare-fun b!6921973 () Bool)

(declare-fun res!2822551 () Bool)

(declare-fun e!4165985 () Bool)

(assert (=> b!6921973 (=> res!2822551 e!4165985)))

(assert (=> b!6921973 (= res!2822551 call!629173)))

(assert (=> b!6921973 (= e!4165984 e!4165985)))

(declare-fun b!6921974 () Bool)

(assert (=> b!6921974 (= e!4165987 (matchRSpec!3976 (regTwo!34351 lt!2470609) (_1!37079 lt!2470615)))))

(assert (=> b!6921975 (= e!4165985 call!629174)))

(declare-fun b!6921976 () Bool)

(assert (=> b!6921976 (= e!4165986 call!629173)))

(assert (= (and d!2164647 c!1285071) b!6921976))

(assert (= (and d!2164647 (not c!1285071)) b!6921968))

(assert (= (and b!6921968 res!2822550) b!6921969))

(assert (= (and b!6921969 c!1285069) b!6921970))

(assert (= (and b!6921969 (not c!1285069)) b!6921966))

(assert (= (and b!6921966 c!1285070) b!6921967))

(assert (= (and b!6921966 (not c!1285070)) b!6921972))

(assert (= (and b!6921967 (not res!2822549)) b!6921974))

(assert (= (and b!6921972 c!1285072) b!6921973))

(assert (= (and b!6921972 (not c!1285072)) b!6921971))

(assert (= (and b!6921973 (not res!2822551)) b!6921975))

(assert (= (or b!6921975 b!6921971) bm!629168))

(assert (= (or b!6921976 b!6921973) bm!629169))

(declare-fun m!7631576 () Bool)

(assert (=> bm!629168 m!7631576))

(declare-fun m!7631578 () Bool)

(assert (=> b!6921967 m!7631578))

(declare-fun m!7631580 () Bool)

(assert (=> bm!629169 m!7631580))

(declare-fun m!7631582 () Bool)

(assert (=> b!6921974 m!7631582))

(assert (=> b!6921879 d!2164647))

(declare-fun d!2164657 () Bool)

(assert (=> d!2164657 (= (matchR!9058 lt!2470609 (_1!37079 lt!2470615)) (matchRSpec!3976 lt!2470609 (_1!37079 lt!2470615)))))

(declare-fun lt!2470635 () Unit!160562)

(declare-fun choose!51536 (Regex!16919 List!66672) Unit!160562)

(assert (=> d!2164657 (= lt!2470635 (choose!51536 lt!2470609 (_1!37079 lt!2470615)))))

(assert (=> d!2164657 (validRegex!8625 lt!2470609)))

(assert (=> d!2164657 (= (mainMatchTheorem!3976 lt!2470609 (_1!37079 lt!2470615)) lt!2470635)))

(declare-fun bs!1847203 () Bool)

(assert (= bs!1847203 d!2164657))

(assert (=> bs!1847203 m!7631484))

(assert (=> bs!1847203 m!7631480))

(declare-fun m!7631584 () Bool)

(assert (=> bs!1847203 m!7631584))

(declare-fun m!7631586 () Bool)

(assert (=> bs!1847203 m!7631586))

(assert (=> b!6921879 d!2164657))

(declare-fun b!6922131 () Bool)

(declare-fun e!4166090 () Bool)

(declare-fun e!4166088 () Bool)

(assert (=> b!6922131 (= e!4166090 e!4166088)))

(declare-fun res!2822631 () Bool)

(assert (=> b!6922131 (=> (not res!2822631) (not e!4166088))))

(declare-fun lt!2470640 () Bool)

(assert (=> b!6922131 (= res!2822631 (not lt!2470640))))

(declare-fun b!6922132 () Bool)

(declare-fun res!2822629 () Bool)

(declare-fun e!4166093 () Bool)

(assert (=> b!6922132 (=> res!2822629 e!4166093)))

(declare-fun tail!12930 (List!66672) List!66672)

(assert (=> b!6922132 (= res!2822629 (not (isEmpty!38801 (tail!12930 (_1!37079 lt!2470615)))))))

(declare-fun b!6922133 () Bool)

(assert (=> b!6922133 (= e!4166088 e!4166093)))

(declare-fun res!2822633 () Bool)

(assert (=> b!6922133 (=> res!2822633 e!4166093)))

(declare-fun call!629202 () Bool)

(assert (=> b!6922133 (= res!2822633 call!629202)))

(declare-fun b!6922134 () Bool)

(declare-fun e!4166087 () Bool)

(assert (=> b!6922134 (= e!4166087 (= lt!2470640 call!629202))))

(declare-fun b!6922135 () Bool)

(declare-fun res!2822630 () Bool)

(assert (=> b!6922135 (=> res!2822630 e!4166090)))

(declare-fun e!4166089 () Bool)

(assert (=> b!6922135 (= res!2822630 e!4166089)))

(declare-fun res!2822628 () Bool)

(assert (=> b!6922135 (=> (not res!2822628) (not e!4166089))))

(assert (=> b!6922135 (= res!2822628 lt!2470640)))

(declare-fun b!6922136 () Bool)

(declare-fun e!4166092 () Bool)

(declare-fun derivativeStep!5425 (Regex!16919 C!34108) Regex!16919)

(declare-fun head!13878 (List!66672) C!34108)

(assert (=> b!6922136 (= e!4166092 (matchR!9058 (derivativeStep!5425 lt!2470609 (head!13878 (_1!37079 lt!2470615))) (tail!12930 (_1!37079 lt!2470615))))))

(declare-fun bm!629197 () Bool)

(assert (=> bm!629197 (= call!629202 (isEmpty!38801 (_1!37079 lt!2470615)))))

(declare-fun b!6922137 () Bool)

(declare-fun e!4166091 () Bool)

(assert (=> b!6922137 (= e!4166087 e!4166091)))

(declare-fun c!1285114 () Bool)

(assert (=> b!6922137 (= c!1285114 ((_ is EmptyLang!16919) lt!2470609))))

(declare-fun b!6922138 () Bool)

(assert (=> b!6922138 (= e!4166089 (= (head!13878 (_1!37079 lt!2470615)) (c!1285051 lt!2470609)))))

(declare-fun b!6922139 () Bool)

(declare-fun nullable!6750 (Regex!16919) Bool)

(assert (=> b!6922139 (= e!4166092 (nullable!6750 lt!2470609))))

(declare-fun b!6922141 () Bool)

(assert (=> b!6922141 (= e!4166093 (not (= (head!13878 (_1!37079 lt!2470615)) (c!1285051 lt!2470609))))))

(declare-fun b!6922142 () Bool)

(declare-fun res!2822627 () Bool)

(assert (=> b!6922142 (=> res!2822627 e!4166090)))

(assert (=> b!6922142 (= res!2822627 (not ((_ is ElementMatch!16919) lt!2470609)))))

(assert (=> b!6922142 (= e!4166091 e!4166090)))

(declare-fun b!6922143 () Bool)

(assert (=> b!6922143 (= e!4166091 (not lt!2470640))))

(declare-fun b!6922144 () Bool)

(declare-fun res!2822632 () Bool)

(assert (=> b!6922144 (=> (not res!2822632) (not e!4166089))))

(assert (=> b!6922144 (= res!2822632 (isEmpty!38801 (tail!12930 (_1!37079 lt!2470615))))))

(declare-fun b!6922140 () Bool)

(declare-fun res!2822626 () Bool)

(assert (=> b!6922140 (=> (not res!2822626) (not e!4166089))))

(assert (=> b!6922140 (= res!2822626 (not call!629202))))

(declare-fun d!2164659 () Bool)

(assert (=> d!2164659 e!4166087))

(declare-fun c!1285115 () Bool)

(assert (=> d!2164659 (= c!1285115 ((_ is EmptyExpr!16919) lt!2470609))))

(assert (=> d!2164659 (= lt!2470640 e!4166092)))

(declare-fun c!1285113 () Bool)

(assert (=> d!2164659 (= c!1285113 (isEmpty!38801 (_1!37079 lt!2470615)))))

(assert (=> d!2164659 (validRegex!8625 lt!2470609)))

(assert (=> d!2164659 (= (matchR!9058 lt!2470609 (_1!37079 lt!2470615)) lt!2470640)))

(assert (= (and d!2164659 c!1285113) b!6922139))

(assert (= (and d!2164659 (not c!1285113)) b!6922136))

(assert (= (and d!2164659 c!1285115) b!6922134))

(assert (= (and d!2164659 (not c!1285115)) b!6922137))

(assert (= (and b!6922137 c!1285114) b!6922143))

(assert (= (and b!6922137 (not c!1285114)) b!6922142))

(assert (= (and b!6922142 (not res!2822627)) b!6922135))

(assert (= (and b!6922135 res!2822628) b!6922140))

(assert (= (and b!6922140 res!2822626) b!6922144))

(assert (= (and b!6922144 res!2822632) b!6922138))

(assert (= (and b!6922135 (not res!2822630)) b!6922131))

(assert (= (and b!6922131 res!2822631) b!6922133))

(assert (= (and b!6922133 (not res!2822633)) b!6922132))

(assert (= (and b!6922132 (not res!2822629)) b!6922141))

(assert (= (or b!6922134 b!6922133 b!6922140) bm!629197))

(declare-fun m!7631646 () Bool)

(assert (=> b!6922132 m!7631646))

(assert (=> b!6922132 m!7631646))

(declare-fun m!7631648 () Bool)

(assert (=> b!6922132 m!7631648))

(declare-fun m!7631650 () Bool)

(assert (=> b!6922136 m!7631650))

(assert (=> b!6922136 m!7631650))

(declare-fun m!7631654 () Bool)

(assert (=> b!6922136 m!7631654))

(assert (=> b!6922136 m!7631646))

(assert (=> b!6922136 m!7631654))

(assert (=> b!6922136 m!7631646))

(declare-fun m!7631660 () Bool)

(assert (=> b!6922136 m!7631660))

(assert (=> d!2164659 m!7631580))

(assert (=> d!2164659 m!7631586))

(assert (=> b!6922138 m!7631650))

(declare-fun m!7631662 () Bool)

(assert (=> b!6922139 m!7631662))

(assert (=> b!6922141 m!7631650))

(assert (=> bm!629197 m!7631580))

(assert (=> b!6922144 m!7631646))

(assert (=> b!6922144 m!7631646))

(assert (=> b!6922144 m!7631648))

(assert (=> b!6921879 d!2164659))

(declare-fun bs!1847248 () Bool)

(declare-fun d!2164679 () Bool)

(assert (= bs!1847248 (and d!2164679 b!6921879)))

(declare-fun lambda!393555 () Int)

(assert (=> bs!1847248 (= lambda!393555 lambda!393525)))

(declare-fun bs!1847249 () Bool)

(assert (= bs!1847249 (and d!2164679 b!6921876)))

(assert (=> bs!1847249 (not (= lambda!393555 lambda!393528))))

(declare-fun bs!1847250 () Bool)

(assert (= bs!1847250 (and d!2164679 b!6921870)))

(assert (=> bs!1847250 (not (= lambda!393555 lambda!393530))))

(declare-fun bs!1847251 () Bool)

(assert (= bs!1847251 (and d!2164679 b!6921975)))

(assert (=> bs!1847251 (not (= lambda!393555 lambda!393535))))

(assert (=> bs!1847249 (= (and (= s!14361 (_1!37079 lt!2470615)) (= lt!2470609 r1!6342) (= r3!135 r2!6280)) (= lambda!393555 lambda!393527))))

(declare-fun bs!1847252 () Bool)

(assert (= bs!1847252 (and d!2164679 b!6921971)))

(assert (=> bs!1847252 (not (= lambda!393555 lambda!393536))))

(assert (=> bs!1847248 (not (= lambda!393555 lambda!393526))))

(assert (=> bs!1847250 (= (and (= s!14361 lt!2470600) (= lt!2470609 r2!6280)) (= lambda!393555 lambda!393529))))

(assert (=> d!2164679 true))

(assert (=> d!2164679 true))

(assert (=> d!2164679 true))

(assert (=> d!2164679 (= (isDefined!13391 (findConcatSeparation!3102 lt!2470609 r3!135 Nil!66548 s!14361 s!14361)) (Exists!3921 lambda!393555))))

(declare-fun lt!2470647 () Unit!160562)

(declare-fun choose!51537 (Regex!16919 Regex!16919 List!66672) Unit!160562)

(assert (=> d!2164679 (= lt!2470647 (choose!51537 lt!2470609 r3!135 s!14361))))

(assert (=> d!2164679 (validRegex!8625 lt!2470609)))

(assert (=> d!2164679 (= (lemmaFindConcatSeparationEquivalentToExists!2864 lt!2470609 r3!135 s!14361) lt!2470647)))

(declare-fun bs!1847253 () Bool)

(assert (= bs!1847253 d!2164679))

(declare-fun m!7631670 () Bool)

(assert (=> bs!1847253 m!7631670))

(assert (=> bs!1847253 m!7631470))

(declare-fun m!7631672 () Bool)

(assert (=> bs!1847253 m!7631672))

(assert (=> bs!1847253 m!7631470))

(declare-fun m!7631674 () Bool)

(assert (=> bs!1847253 m!7631674))

(assert (=> bs!1847253 m!7631586))

(assert (=> b!6921879 d!2164679))

(declare-fun bs!1847265 () Bool)

(declare-fun d!2164683 () Bool)

(assert (= bs!1847265 (and d!2164683 b!6921879)))

(declare-fun lambda!393563 () Int)

(assert (=> bs!1847265 (= lambda!393563 lambda!393525)))

(declare-fun bs!1847266 () Bool)

(assert (= bs!1847266 (and d!2164683 b!6921876)))

(assert (=> bs!1847266 (not (= lambda!393563 lambda!393528))))

(declare-fun bs!1847268 () Bool)

(assert (= bs!1847268 (and d!2164683 b!6921870)))

(assert (=> bs!1847268 (not (= lambda!393563 lambda!393530))))

(declare-fun bs!1847269 () Bool)

(assert (= bs!1847269 (and d!2164683 d!2164679)))

(assert (=> bs!1847269 (= lambda!393563 lambda!393555)))

(declare-fun bs!1847271 () Bool)

(assert (= bs!1847271 (and d!2164683 b!6921975)))

(assert (=> bs!1847271 (not (= lambda!393563 lambda!393535))))

(assert (=> bs!1847266 (= (and (= s!14361 (_1!37079 lt!2470615)) (= lt!2470609 r1!6342) (= r3!135 r2!6280)) (= lambda!393563 lambda!393527))))

(declare-fun bs!1847272 () Bool)

(assert (= bs!1847272 (and d!2164683 b!6921971)))

(assert (=> bs!1847272 (not (= lambda!393563 lambda!393536))))

(assert (=> bs!1847265 (not (= lambda!393563 lambda!393526))))

(assert (=> bs!1847268 (= (and (= s!14361 lt!2470600) (= lt!2470609 r2!6280)) (= lambda!393563 lambda!393529))))

(assert (=> d!2164683 true))

(assert (=> d!2164683 true))

(assert (=> d!2164683 true))

(declare-fun lambda!393564 () Int)

(assert (=> bs!1847265 (not (= lambda!393564 lambda!393525))))

(assert (=> bs!1847266 (= (and (= s!14361 (_1!37079 lt!2470615)) (= lt!2470609 r1!6342) (= r3!135 r2!6280)) (= lambda!393564 lambda!393528))))

(declare-fun bs!1847273 () Bool)

(assert (= bs!1847273 d!2164683))

(assert (=> bs!1847273 (not (= lambda!393564 lambda!393563))))

(assert (=> bs!1847268 (= (and (= s!14361 lt!2470600) (= lt!2470609 r2!6280)) (= lambda!393564 lambda!393530))))

(assert (=> bs!1847269 (not (= lambda!393564 lambda!393555))))

(assert (=> bs!1847271 (not (= lambda!393564 lambda!393535))))

(assert (=> bs!1847266 (not (= lambda!393564 lambda!393527))))

(assert (=> bs!1847272 (= (and (= s!14361 (_1!37079 lt!2470615)) (= lt!2470609 (regOne!34350 lt!2470609)) (= r3!135 (regTwo!34350 lt!2470609))) (= lambda!393564 lambda!393536))))

(assert (=> bs!1847265 (= lambda!393564 lambda!393526)))

(assert (=> bs!1847268 (not (= lambda!393564 lambda!393529))))

(assert (=> d!2164683 true))

(assert (=> d!2164683 true))

(assert (=> d!2164683 true))

(assert (=> d!2164683 (= (Exists!3921 lambda!393563) (Exists!3921 lambda!393564))))

(declare-fun lt!2470663 () Unit!160562)

(declare-fun choose!51538 (Regex!16919 Regex!16919 List!66672) Unit!160562)

(assert (=> d!2164683 (= lt!2470663 (choose!51538 lt!2470609 r3!135 s!14361))))

(assert (=> d!2164683 (validRegex!8625 lt!2470609)))

(assert (=> d!2164683 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2388 lt!2470609 r3!135 s!14361) lt!2470663)))

(declare-fun m!7631720 () Bool)

(assert (=> bs!1847273 m!7631720))

(declare-fun m!7631724 () Bool)

(assert (=> bs!1847273 m!7631724))

(declare-fun m!7631726 () Bool)

(assert (=> bs!1847273 m!7631726))

(assert (=> bs!1847273 m!7631586))

(assert (=> b!6921879 d!2164683))

(declare-fun d!2164699 () Bool)

(assert (=> d!2164699 (= (Exists!3921 lambda!393526) (choose!51535 lambda!393526))))

(declare-fun bs!1847277 () Bool)

(assert (= bs!1847277 d!2164699))

(declare-fun m!7631730 () Bool)

(assert (=> bs!1847277 m!7631730))

(assert (=> b!6921879 d!2164699))

(declare-fun b!6922302 () Bool)

(declare-fun e!4166180 () Bool)

(declare-fun lt!2470692 () Option!16688)

(assert (=> b!6922302 (= e!4166180 (= (++!14962 (_1!37079 (get!23319 lt!2470692)) (_2!37079 (get!23319 lt!2470692))) s!14361))))

(declare-fun b!6922303 () Bool)

(declare-fun e!4166183 () Bool)

(assert (=> b!6922303 (= e!4166183 (not (isDefined!13391 lt!2470692)))))

(declare-fun d!2164703 () Bool)

(assert (=> d!2164703 e!4166183))

(declare-fun res!2822729 () Bool)

(assert (=> d!2164703 (=> res!2822729 e!4166183)))

(assert (=> d!2164703 (= res!2822729 e!4166180)))

(declare-fun res!2822731 () Bool)

(assert (=> d!2164703 (=> (not res!2822731) (not e!4166180))))

(assert (=> d!2164703 (= res!2822731 (isDefined!13391 lt!2470692))))

(declare-fun e!4166182 () Option!16688)

(assert (=> d!2164703 (= lt!2470692 e!4166182)))

(declare-fun c!1285148 () Bool)

(declare-fun e!4166184 () Bool)

(assert (=> d!2164703 (= c!1285148 e!4166184)))

(declare-fun res!2822733 () Bool)

(assert (=> d!2164703 (=> (not res!2822733) (not e!4166184))))

(assert (=> d!2164703 (= res!2822733 (matchR!9058 lt!2470609 Nil!66548))))

(assert (=> d!2164703 (validRegex!8625 lt!2470609)))

(assert (=> d!2164703 (= (findConcatSeparation!3102 lt!2470609 r3!135 Nil!66548 s!14361 s!14361) lt!2470692)))

(declare-fun b!6922304 () Bool)

(declare-fun res!2822730 () Bool)

(assert (=> b!6922304 (=> (not res!2822730) (not e!4166180))))

(assert (=> b!6922304 (= res!2822730 (matchR!9058 r3!135 (_2!37079 (get!23319 lt!2470692))))))

(declare-fun b!6922305 () Bool)

(declare-fun e!4166181 () Option!16688)

(assert (=> b!6922305 (= e!4166182 e!4166181)))

(declare-fun c!1285147 () Bool)

(assert (=> b!6922305 (= c!1285147 ((_ is Nil!66548) s!14361))))

(declare-fun b!6922306 () Bool)

(declare-fun res!2822732 () Bool)

(assert (=> b!6922306 (=> (not res!2822732) (not e!4166180))))

(assert (=> b!6922306 (= res!2822732 (matchR!9058 lt!2470609 (_1!37079 (get!23319 lt!2470692))))))

(declare-fun b!6922307 () Bool)

(declare-fun lt!2470690 () Unit!160562)

(declare-fun lt!2470691 () Unit!160562)

(assert (=> b!6922307 (= lt!2470690 lt!2470691)))

(assert (=> b!6922307 (= (++!14962 (++!14962 Nil!66548 (Cons!66548 (h!72996 s!14361) Nil!66548)) (t!380415 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2828 (List!66672 C!34108 List!66672 List!66672) Unit!160562)

(assert (=> b!6922307 (= lt!2470691 (lemmaMoveElementToOtherListKeepsConcatEq!2828 Nil!66548 (h!72996 s!14361) (t!380415 s!14361) s!14361))))

(assert (=> b!6922307 (= e!4166181 (findConcatSeparation!3102 lt!2470609 r3!135 (++!14962 Nil!66548 (Cons!66548 (h!72996 s!14361) Nil!66548)) (t!380415 s!14361) s!14361))))

(declare-fun b!6922308 () Bool)

(assert (=> b!6922308 (= e!4166184 (matchR!9058 r3!135 s!14361))))

(declare-fun b!6922309 () Bool)

(assert (=> b!6922309 (= e!4166181 None!16687)))

(declare-fun b!6922310 () Bool)

(assert (=> b!6922310 (= e!4166182 (Some!16687 (tuple2!67553 Nil!66548 s!14361)))))

(assert (= (and d!2164703 res!2822733) b!6922308))

(assert (= (and d!2164703 c!1285148) b!6922310))

(assert (= (and d!2164703 (not c!1285148)) b!6922305))

(assert (= (and b!6922305 c!1285147) b!6922309))

(assert (= (and b!6922305 (not c!1285147)) b!6922307))

(assert (= (and d!2164703 res!2822731) b!6922306))

(assert (= (and b!6922306 res!2822732) b!6922304))

(assert (= (and b!6922304 res!2822730) b!6922302))

(assert (= (and d!2164703 (not res!2822729)) b!6922303))

(declare-fun m!7631860 () Bool)

(assert (=> b!6922307 m!7631860))

(assert (=> b!6922307 m!7631860))

(declare-fun m!7631862 () Bool)

(assert (=> b!6922307 m!7631862))

(declare-fun m!7631864 () Bool)

(assert (=> b!6922307 m!7631864))

(assert (=> b!6922307 m!7631860))

(declare-fun m!7631866 () Bool)

(assert (=> b!6922307 m!7631866))

(declare-fun m!7631868 () Bool)

(assert (=> b!6922308 m!7631868))

(declare-fun m!7631870 () Bool)

(assert (=> b!6922303 m!7631870))

(declare-fun m!7631872 () Bool)

(assert (=> b!6922302 m!7631872))

(declare-fun m!7631876 () Bool)

(assert (=> b!6922302 m!7631876))

(assert (=> b!6922304 m!7631872))

(declare-fun m!7631884 () Bool)

(assert (=> b!6922304 m!7631884))

(assert (=> d!2164703 m!7631870))

(declare-fun m!7631888 () Bool)

(assert (=> d!2164703 m!7631888))

(assert (=> d!2164703 m!7631586))

(assert (=> b!6922306 m!7631872))

(declare-fun m!7631892 () Bool)

(assert (=> b!6922306 m!7631892))

(assert (=> b!6921879 d!2164703))

(declare-fun d!2164745 () Bool)

(declare-fun isEmpty!38802 (Option!16688) Bool)

(assert (=> d!2164745 (= (isDefined!13391 lt!2470618) (not (isEmpty!38802 lt!2470618)))))

(declare-fun bs!1847359 () Bool)

(assert (= bs!1847359 d!2164745))

(declare-fun m!7631896 () Bool)

(assert (=> bs!1847359 m!7631896))

(assert (=> b!6921879 d!2164745))

(declare-fun bm!629216 () Bool)

(declare-fun call!629221 () Bool)

(declare-fun call!629222 () Bool)

(assert (=> bm!629216 (= call!629221 call!629222)))

(declare-fun b!6922368 () Bool)

(declare-fun res!2822763 () Bool)

(declare-fun e!4166223 () Bool)

(assert (=> b!6922368 (=> (not res!2822763) (not e!4166223))))

(declare-fun call!629223 () Bool)

(assert (=> b!6922368 (= res!2822763 call!629223)))

(declare-fun e!4166225 () Bool)

(assert (=> b!6922368 (= e!4166225 e!4166223)))

(declare-fun d!2164749 () Bool)

(declare-fun res!2822766 () Bool)

(declare-fun e!4166221 () Bool)

(assert (=> d!2164749 (=> res!2822766 e!4166221)))

(assert (=> d!2164749 (= res!2822766 ((_ is ElementMatch!16919) r1!6342))))

(assert (=> d!2164749 (= (validRegex!8625 r1!6342) e!4166221)))

(declare-fun b!6922369 () Bool)

(declare-fun e!4166226 () Bool)

(declare-fun e!4166224 () Bool)

(assert (=> b!6922369 (= e!4166226 e!4166224)))

(declare-fun res!2822765 () Bool)

(assert (=> b!6922369 (= res!2822765 (not (nullable!6750 (reg!17248 r1!6342))))))

(assert (=> b!6922369 (=> (not res!2822765) (not e!4166224))))

(declare-fun bm!629217 () Bool)

(declare-fun c!1285164 () Bool)

(declare-fun c!1285163 () Bool)

(assert (=> bm!629217 (= call!629222 (validRegex!8625 (ite c!1285163 (reg!17248 r1!6342) (ite c!1285164 (regTwo!34351 r1!6342) (regOne!34350 r1!6342)))))))

(declare-fun b!6922370 () Bool)

(declare-fun e!4166222 () Bool)

(declare-fun e!4166220 () Bool)

(assert (=> b!6922370 (= e!4166222 e!4166220)))

(declare-fun res!2822767 () Bool)

(assert (=> b!6922370 (=> (not res!2822767) (not e!4166220))))

(assert (=> b!6922370 (= res!2822767 call!629221)))

(declare-fun bm!629218 () Bool)

(assert (=> bm!629218 (= call!629223 (validRegex!8625 (ite c!1285164 (regOne!34351 r1!6342) (regTwo!34350 r1!6342))))))

(declare-fun b!6922371 () Bool)

(assert (=> b!6922371 (= e!4166220 call!629223)))

(declare-fun b!6922372 () Bool)

(assert (=> b!6922372 (= e!4166221 e!4166226)))

(assert (=> b!6922372 (= c!1285163 ((_ is Star!16919) r1!6342))))

(declare-fun b!6922373 () Bool)

(assert (=> b!6922373 (= e!4166223 call!629221)))

(declare-fun b!6922374 () Bool)

(declare-fun res!2822764 () Bool)

(assert (=> b!6922374 (=> res!2822764 e!4166222)))

(assert (=> b!6922374 (= res!2822764 (not ((_ is Concat!25764) r1!6342)))))

(assert (=> b!6922374 (= e!4166225 e!4166222)))

(declare-fun b!6922375 () Bool)

(assert (=> b!6922375 (= e!4166224 call!629222)))

(declare-fun b!6922376 () Bool)

(assert (=> b!6922376 (= e!4166226 e!4166225)))

(assert (=> b!6922376 (= c!1285164 ((_ is Union!16919) r1!6342))))

(assert (= (and d!2164749 (not res!2822766)) b!6922372))

(assert (= (and b!6922372 c!1285163) b!6922369))

(assert (= (and b!6922372 (not c!1285163)) b!6922376))

(assert (= (and b!6922369 res!2822765) b!6922375))

(assert (= (and b!6922376 c!1285164) b!6922368))

(assert (= (and b!6922376 (not c!1285164)) b!6922374))

(assert (= (and b!6922368 res!2822763) b!6922373))

(assert (= (and b!6922374 (not res!2822764)) b!6922370))

(assert (= (and b!6922370 res!2822767) b!6922371))

(assert (= (or b!6922368 b!6922371) bm!629218))

(assert (= (or b!6922373 b!6922370) bm!629216))

(assert (= (or b!6922375 bm!629216) bm!629217))

(declare-fun m!7631926 () Bool)

(assert (=> b!6922369 m!7631926))

(declare-fun m!7631928 () Bool)

(assert (=> bm!629217 m!7631928))

(declare-fun m!7631930 () Bool)

(assert (=> bm!629218 m!7631930))

(assert (=> start!665650 d!2164749))

(declare-fun b!6922377 () Bool)

(declare-fun e!4166230 () Bool)

(declare-fun e!4166228 () Bool)

(assert (=> b!6922377 (= e!4166230 e!4166228)))

(declare-fun res!2822773 () Bool)

(assert (=> b!6922377 (=> (not res!2822773) (not e!4166228))))

(declare-fun lt!2470698 () Bool)

(assert (=> b!6922377 (= res!2822773 (not lt!2470698))))

(declare-fun b!6922378 () Bool)

(declare-fun res!2822771 () Bool)

(declare-fun e!4166233 () Bool)

(assert (=> b!6922378 (=> res!2822771 e!4166233)))

(assert (=> b!6922378 (= res!2822771 (not (isEmpty!38801 (tail!12930 s!14361))))))

(declare-fun b!6922379 () Bool)

(assert (=> b!6922379 (= e!4166228 e!4166233)))

(declare-fun res!2822775 () Bool)

(assert (=> b!6922379 (=> res!2822775 e!4166233)))

(declare-fun call!629224 () Bool)

(assert (=> b!6922379 (= res!2822775 call!629224)))

(declare-fun b!6922380 () Bool)

(declare-fun e!4166227 () Bool)

(assert (=> b!6922380 (= e!4166227 (= lt!2470698 call!629224))))

(declare-fun b!6922381 () Bool)

(declare-fun res!2822772 () Bool)

(assert (=> b!6922381 (=> res!2822772 e!4166230)))

(declare-fun e!4166229 () Bool)

(assert (=> b!6922381 (= res!2822772 e!4166229)))

(declare-fun res!2822770 () Bool)

(assert (=> b!6922381 (=> (not res!2822770) (not e!4166229))))

(assert (=> b!6922381 (= res!2822770 lt!2470698)))

(declare-fun b!6922382 () Bool)

(declare-fun e!4166232 () Bool)

(assert (=> b!6922382 (= e!4166232 (matchR!9058 (derivativeStep!5425 lt!2470607 (head!13878 s!14361)) (tail!12930 s!14361)))))

(declare-fun bm!629219 () Bool)

(assert (=> bm!629219 (= call!629224 (isEmpty!38801 s!14361))))

(declare-fun b!6922383 () Bool)

(declare-fun e!4166231 () Bool)

(assert (=> b!6922383 (= e!4166227 e!4166231)))

(declare-fun c!1285166 () Bool)

(assert (=> b!6922383 (= c!1285166 ((_ is EmptyLang!16919) lt!2470607))))

(declare-fun b!6922384 () Bool)

(assert (=> b!6922384 (= e!4166229 (= (head!13878 s!14361) (c!1285051 lt!2470607)))))

(declare-fun b!6922385 () Bool)

(assert (=> b!6922385 (= e!4166232 (nullable!6750 lt!2470607))))

(declare-fun b!6922387 () Bool)

(assert (=> b!6922387 (= e!4166233 (not (= (head!13878 s!14361) (c!1285051 lt!2470607))))))

(declare-fun b!6922388 () Bool)

(declare-fun res!2822769 () Bool)

(assert (=> b!6922388 (=> res!2822769 e!4166230)))

(assert (=> b!6922388 (= res!2822769 (not ((_ is ElementMatch!16919) lt!2470607)))))

(assert (=> b!6922388 (= e!4166231 e!4166230)))

(declare-fun b!6922389 () Bool)

(assert (=> b!6922389 (= e!4166231 (not lt!2470698))))

(declare-fun b!6922390 () Bool)

(declare-fun res!2822774 () Bool)

(assert (=> b!6922390 (=> (not res!2822774) (not e!4166229))))

(assert (=> b!6922390 (= res!2822774 (isEmpty!38801 (tail!12930 s!14361)))))

(declare-fun b!6922386 () Bool)

(declare-fun res!2822768 () Bool)

(assert (=> b!6922386 (=> (not res!2822768) (not e!4166229))))

(assert (=> b!6922386 (= res!2822768 (not call!629224))))

(declare-fun d!2164759 () Bool)

(assert (=> d!2164759 e!4166227))

(declare-fun c!1285167 () Bool)

(assert (=> d!2164759 (= c!1285167 ((_ is EmptyExpr!16919) lt!2470607))))

(assert (=> d!2164759 (= lt!2470698 e!4166232)))

(declare-fun c!1285165 () Bool)

(assert (=> d!2164759 (= c!1285165 (isEmpty!38801 s!14361))))

(assert (=> d!2164759 (validRegex!8625 lt!2470607)))

(assert (=> d!2164759 (= (matchR!9058 lt!2470607 s!14361) lt!2470698)))

(assert (= (and d!2164759 c!1285165) b!6922385))

(assert (= (and d!2164759 (not c!1285165)) b!6922382))

(assert (= (and d!2164759 c!1285167) b!6922380))

(assert (= (and d!2164759 (not c!1285167)) b!6922383))

(assert (= (and b!6922383 c!1285166) b!6922389))

(assert (= (and b!6922383 (not c!1285166)) b!6922388))

(assert (= (and b!6922388 (not res!2822769)) b!6922381))

(assert (= (and b!6922381 res!2822770) b!6922386))

(assert (= (and b!6922386 res!2822768) b!6922390))

(assert (= (and b!6922390 res!2822774) b!6922384))

(assert (= (and b!6922381 (not res!2822772)) b!6922377))

(assert (= (and b!6922377 res!2822773) b!6922379))

(assert (= (and b!6922379 (not res!2822775)) b!6922378))

(assert (= (and b!6922378 (not res!2822771)) b!6922387))

(assert (= (or b!6922380 b!6922379 b!6922386) bm!629219))

(declare-fun m!7631932 () Bool)

(assert (=> b!6922378 m!7631932))

(assert (=> b!6922378 m!7631932))

(declare-fun m!7631934 () Bool)

(assert (=> b!6922378 m!7631934))

(declare-fun m!7631936 () Bool)

(assert (=> b!6922382 m!7631936))

(assert (=> b!6922382 m!7631936))

(declare-fun m!7631938 () Bool)

(assert (=> b!6922382 m!7631938))

(assert (=> b!6922382 m!7631932))

(assert (=> b!6922382 m!7631938))

(assert (=> b!6922382 m!7631932))

(declare-fun m!7631940 () Bool)

(assert (=> b!6922382 m!7631940))

(declare-fun m!7631942 () Bool)

(assert (=> d!2164759 m!7631942))

(declare-fun m!7631944 () Bool)

(assert (=> d!2164759 m!7631944))

(assert (=> b!6922384 m!7631936))

(declare-fun m!7631946 () Bool)

(assert (=> b!6922385 m!7631946))

(assert (=> b!6922387 m!7631936))

(assert (=> bm!629219 m!7631942))

(assert (=> b!6922390 m!7631932))

(assert (=> b!6922390 m!7631932))

(assert (=> b!6922390 m!7631934))

(assert (=> b!6921868 d!2164759))

(declare-fun d!2164761 () Bool)

(assert (=> d!2164761 (= (matchR!9058 lt!2470607 s!14361) (matchRSpec!3976 lt!2470607 s!14361))))

(declare-fun lt!2470699 () Unit!160562)

(assert (=> d!2164761 (= lt!2470699 (choose!51536 lt!2470607 s!14361))))

(assert (=> d!2164761 (validRegex!8625 lt!2470607)))

(assert (=> d!2164761 (= (mainMatchTheorem!3976 lt!2470607 s!14361) lt!2470699)))

(declare-fun bs!1847408 () Bool)

(assert (= bs!1847408 d!2164761))

(assert (=> bs!1847408 m!7631526))

(assert (=> bs!1847408 m!7631524))

(declare-fun m!7631948 () Bool)

(assert (=> bs!1847408 m!7631948))

(assert (=> bs!1847408 m!7631944))

(assert (=> b!6921868 d!2164761))

(declare-fun d!2164763 () Bool)

(assert (=> d!2164763 (= (matchR!9058 lt!2470598 s!14361) (matchRSpec!3976 lt!2470598 s!14361))))

(declare-fun lt!2470700 () Unit!160562)

(assert (=> d!2164763 (= lt!2470700 (choose!51536 lt!2470598 s!14361))))

(assert (=> d!2164763 (validRegex!8625 lt!2470598)))

(assert (=> d!2164763 (= (mainMatchTheorem!3976 lt!2470598 s!14361) lt!2470700)))

(declare-fun bs!1847410 () Bool)

(assert (= bs!1847410 d!2164763))

(assert (=> bs!1847410 m!7631530))

(assert (=> bs!1847410 m!7631522))

(declare-fun m!7631950 () Bool)

(assert (=> bs!1847410 m!7631950))

(declare-fun m!7631952 () Bool)

(assert (=> bs!1847410 m!7631952))

(assert (=> b!6921868 d!2164763))

(declare-fun bs!1847411 () Bool)

(declare-fun b!6922400 () Bool)

(assert (= bs!1847411 (and b!6922400 b!6921879)))

(declare-fun lambda!393575 () Int)

(assert (=> bs!1847411 (not (= lambda!393575 lambda!393525))))

(declare-fun bs!1847412 () Bool)

(assert (= bs!1847412 (and b!6922400 b!6921876)))

(assert (=> bs!1847412 (not (= lambda!393575 lambda!393528))))

(declare-fun bs!1847413 () Bool)

(assert (= bs!1847413 (and b!6922400 d!2164683)))

(assert (=> bs!1847413 (not (= lambda!393575 lambda!393563))))

(declare-fun bs!1847414 () Bool)

(assert (= bs!1847414 (and b!6922400 d!2164679)))

(assert (=> bs!1847414 (not (= lambda!393575 lambda!393555))))

(declare-fun bs!1847416 () Bool)

(assert (= bs!1847416 (and b!6922400 b!6921975)))

(assert (=> bs!1847416 (= (and (= s!14361 (_1!37079 lt!2470615)) (= (reg!17248 lt!2470598) (reg!17248 lt!2470609)) (= lt!2470598 lt!2470609)) (= lambda!393575 lambda!393535))))

(assert (=> bs!1847412 (not (= lambda!393575 lambda!393527))))

(declare-fun bs!1847419 () Bool)

(assert (= bs!1847419 (and b!6922400 b!6921971)))

(assert (=> bs!1847419 (not (= lambda!393575 lambda!393536))))

(assert (=> bs!1847411 (not (= lambda!393575 lambda!393526))))

(declare-fun bs!1847422 () Bool)

(assert (= bs!1847422 (and b!6922400 b!6921870)))

(assert (=> bs!1847422 (not (= lambda!393575 lambda!393529))))

(assert (=> bs!1847413 (not (= lambda!393575 lambda!393564))))

(assert (=> bs!1847422 (not (= lambda!393575 lambda!393530))))

(assert (=> b!6922400 true))

(assert (=> b!6922400 true))

(declare-fun bs!1847429 () Bool)

(declare-fun b!6922396 () Bool)

(assert (= bs!1847429 (and b!6922396 b!6921876)))

(declare-fun lambda!393577 () Int)

(assert (=> bs!1847429 (= (and (= s!14361 (_1!37079 lt!2470615)) (= (regOne!34350 lt!2470598) r1!6342) (= (regTwo!34350 lt!2470598) r2!6280)) (= lambda!393577 lambda!393528))))

(declare-fun bs!1847431 () Bool)

(assert (= bs!1847431 (and b!6922396 d!2164683)))

(assert (=> bs!1847431 (not (= lambda!393577 lambda!393563))))

(declare-fun bs!1847432 () Bool)

(assert (= bs!1847432 (and b!6922396 d!2164679)))

(assert (=> bs!1847432 (not (= lambda!393577 lambda!393555))))

(declare-fun bs!1847434 () Bool)

(assert (= bs!1847434 (and b!6922396 b!6921975)))

(assert (=> bs!1847434 (not (= lambda!393577 lambda!393535))))

(assert (=> bs!1847429 (not (= lambda!393577 lambda!393527))))

(declare-fun bs!1847436 () Bool)

(assert (= bs!1847436 (and b!6922396 b!6921971)))

(assert (=> bs!1847436 (= (and (= s!14361 (_1!37079 lt!2470615)) (= (regOne!34350 lt!2470598) (regOne!34350 lt!2470609)) (= (regTwo!34350 lt!2470598) (regTwo!34350 lt!2470609))) (= lambda!393577 lambda!393536))))

(declare-fun bs!1847438 () Bool)

(assert (= bs!1847438 (and b!6922396 b!6921879)))

(assert (=> bs!1847438 (not (= lambda!393577 lambda!393525))))

(declare-fun bs!1847440 () Bool)

(assert (= bs!1847440 (and b!6922396 b!6922400)))

(assert (=> bs!1847440 (not (= lambda!393577 lambda!393575))))

(assert (=> bs!1847438 (= (and (= (regOne!34350 lt!2470598) lt!2470609) (= (regTwo!34350 lt!2470598) r3!135)) (= lambda!393577 lambda!393526))))

(declare-fun bs!1847442 () Bool)

(assert (= bs!1847442 (and b!6922396 b!6921870)))

(assert (=> bs!1847442 (not (= lambda!393577 lambda!393529))))

(assert (=> bs!1847431 (= (and (= (regOne!34350 lt!2470598) lt!2470609) (= (regTwo!34350 lt!2470598) r3!135)) (= lambda!393577 lambda!393564))))

(assert (=> bs!1847442 (= (and (= s!14361 lt!2470600) (= (regOne!34350 lt!2470598) r2!6280) (= (regTwo!34350 lt!2470598) r3!135)) (= lambda!393577 lambda!393530))))

(assert (=> b!6922396 true))

(assert (=> b!6922396 true))

(declare-fun b!6922391 () Bool)

(declare-fun c!1285169 () Bool)

(assert (=> b!6922391 (= c!1285169 ((_ is Union!16919) lt!2470598))))

(declare-fun e!4166238 () Bool)

(declare-fun e!4166239 () Bool)

(assert (=> b!6922391 (= e!4166238 e!4166239)))

(declare-fun c!1285171 () Bool)

(declare-fun call!629226 () Bool)

(declare-fun bm!629220 () Bool)

(assert (=> bm!629220 (= call!629226 (Exists!3921 (ite c!1285171 lambda!393575 lambda!393577)))))

(declare-fun d!2164765 () Bool)

(declare-fun c!1285170 () Bool)

(assert (=> d!2164765 (= c!1285170 ((_ is EmptyExpr!16919) lt!2470598))))

(declare-fun e!4166236 () Bool)

(assert (=> d!2164765 (= (matchRSpec!3976 lt!2470598 s!14361) e!4166236)))

(declare-fun b!6922392 () Bool)

(declare-fun e!4166237 () Bool)

(assert (=> b!6922392 (= e!4166239 e!4166237)))

(declare-fun res!2822776 () Bool)

(assert (=> b!6922392 (= res!2822776 (matchRSpec!3976 (regOne!34351 lt!2470598) s!14361))))

(assert (=> b!6922392 (=> res!2822776 e!4166237)))

(declare-fun b!6922393 () Bool)

(declare-fun e!4166240 () Bool)

(assert (=> b!6922393 (= e!4166236 e!4166240)))

(declare-fun res!2822777 () Bool)

(assert (=> b!6922393 (= res!2822777 (not ((_ is EmptyLang!16919) lt!2470598)))))

(assert (=> b!6922393 (=> (not res!2822777) (not e!4166240))))

(declare-fun b!6922394 () Bool)

(declare-fun c!1285168 () Bool)

(assert (=> b!6922394 (= c!1285168 ((_ is ElementMatch!16919) lt!2470598))))

(assert (=> b!6922394 (= e!4166240 e!4166238)))

(declare-fun b!6922395 () Bool)

(assert (=> b!6922395 (= e!4166238 (= s!14361 (Cons!66548 (c!1285051 lt!2470598) Nil!66548)))))

(declare-fun bm!629221 () Bool)

(declare-fun call!629225 () Bool)

(assert (=> bm!629221 (= call!629225 (isEmpty!38801 s!14361))))

(declare-fun e!4166234 () Bool)

(assert (=> b!6922396 (= e!4166234 call!629226)))

(declare-fun b!6922397 () Bool)

(assert (=> b!6922397 (= e!4166239 e!4166234)))

(assert (=> b!6922397 (= c!1285171 ((_ is Star!16919) lt!2470598))))

(declare-fun b!6922398 () Bool)

(declare-fun res!2822778 () Bool)

(declare-fun e!4166235 () Bool)

(assert (=> b!6922398 (=> res!2822778 e!4166235)))

(assert (=> b!6922398 (= res!2822778 call!629225)))

(assert (=> b!6922398 (= e!4166234 e!4166235)))

(declare-fun b!6922399 () Bool)

(assert (=> b!6922399 (= e!4166237 (matchRSpec!3976 (regTwo!34351 lt!2470598) s!14361))))

(assert (=> b!6922400 (= e!4166235 call!629226)))

(declare-fun b!6922401 () Bool)

(assert (=> b!6922401 (= e!4166236 call!629225)))

(assert (= (and d!2164765 c!1285170) b!6922401))

(assert (= (and d!2164765 (not c!1285170)) b!6922393))

(assert (= (and b!6922393 res!2822777) b!6922394))

(assert (= (and b!6922394 c!1285168) b!6922395))

(assert (= (and b!6922394 (not c!1285168)) b!6922391))

(assert (= (and b!6922391 c!1285169) b!6922392))

(assert (= (and b!6922391 (not c!1285169)) b!6922397))

(assert (= (and b!6922392 (not res!2822776)) b!6922399))

(assert (= (and b!6922397 c!1285171) b!6922398))

(assert (= (and b!6922397 (not c!1285171)) b!6922396))

(assert (= (and b!6922398 (not res!2822778)) b!6922400))

(assert (= (or b!6922400 b!6922396) bm!629220))

(assert (= (or b!6922401 b!6922398) bm!629221))

(declare-fun m!7631960 () Bool)

(assert (=> bm!629220 m!7631960))

(declare-fun m!7631962 () Bool)

(assert (=> b!6922392 m!7631962))

(assert (=> bm!629221 m!7631942))

(declare-fun m!7631964 () Bool)

(assert (=> b!6922399 m!7631964))

(assert (=> b!6921868 d!2164765))

(declare-fun b!6922413 () Bool)

(declare-fun e!4166251 () Bool)

(declare-fun e!4166249 () Bool)

(assert (=> b!6922413 (= e!4166251 e!4166249)))

(declare-fun res!2822787 () Bool)

(assert (=> b!6922413 (=> (not res!2822787) (not e!4166249))))

(declare-fun lt!2470701 () Bool)

(assert (=> b!6922413 (= res!2822787 (not lt!2470701))))

(declare-fun b!6922414 () Bool)

(declare-fun res!2822785 () Bool)

(declare-fun e!4166254 () Bool)

(assert (=> b!6922414 (=> res!2822785 e!4166254)))

(assert (=> b!6922414 (= res!2822785 (not (isEmpty!38801 (tail!12930 s!14361))))))

(declare-fun b!6922415 () Bool)

(assert (=> b!6922415 (= e!4166249 e!4166254)))

(declare-fun res!2822789 () Bool)

(assert (=> b!6922415 (=> res!2822789 e!4166254)))

(declare-fun call!629229 () Bool)

(assert (=> b!6922415 (= res!2822789 call!629229)))

(declare-fun b!6922416 () Bool)

(declare-fun e!4166248 () Bool)

(assert (=> b!6922416 (= e!4166248 (= lt!2470701 call!629229))))

(declare-fun b!6922417 () Bool)

(declare-fun res!2822786 () Bool)

(assert (=> b!6922417 (=> res!2822786 e!4166251)))

(declare-fun e!4166250 () Bool)

(assert (=> b!6922417 (= res!2822786 e!4166250)))

(declare-fun res!2822784 () Bool)

(assert (=> b!6922417 (=> (not res!2822784) (not e!4166250))))

(assert (=> b!6922417 (= res!2822784 lt!2470701)))

(declare-fun b!6922418 () Bool)

(declare-fun e!4166253 () Bool)

(assert (=> b!6922418 (= e!4166253 (matchR!9058 (derivativeStep!5425 lt!2470598 (head!13878 s!14361)) (tail!12930 s!14361)))))

(declare-fun bm!629224 () Bool)

(assert (=> bm!629224 (= call!629229 (isEmpty!38801 s!14361))))

(declare-fun b!6922419 () Bool)

(declare-fun e!4166252 () Bool)

(assert (=> b!6922419 (= e!4166248 e!4166252)))

(declare-fun c!1285177 () Bool)

(assert (=> b!6922419 (= c!1285177 ((_ is EmptyLang!16919) lt!2470598))))

(declare-fun b!6922420 () Bool)

(assert (=> b!6922420 (= e!4166250 (= (head!13878 s!14361) (c!1285051 lt!2470598)))))

(declare-fun b!6922421 () Bool)

(assert (=> b!6922421 (= e!4166253 (nullable!6750 lt!2470598))))

(declare-fun b!6922423 () Bool)

(assert (=> b!6922423 (= e!4166254 (not (= (head!13878 s!14361) (c!1285051 lt!2470598))))))

(declare-fun b!6922424 () Bool)

(declare-fun res!2822783 () Bool)

(assert (=> b!6922424 (=> res!2822783 e!4166251)))

(assert (=> b!6922424 (= res!2822783 (not ((_ is ElementMatch!16919) lt!2470598)))))

(assert (=> b!6922424 (= e!4166252 e!4166251)))

(declare-fun b!6922425 () Bool)

(assert (=> b!6922425 (= e!4166252 (not lt!2470701))))

(declare-fun b!6922426 () Bool)

(declare-fun res!2822788 () Bool)

(assert (=> b!6922426 (=> (not res!2822788) (not e!4166250))))

(assert (=> b!6922426 (= res!2822788 (isEmpty!38801 (tail!12930 s!14361)))))

(declare-fun b!6922422 () Bool)

(declare-fun res!2822782 () Bool)

(assert (=> b!6922422 (=> (not res!2822782) (not e!4166250))))

(assert (=> b!6922422 (= res!2822782 (not call!629229))))

(declare-fun d!2164769 () Bool)

(assert (=> d!2164769 e!4166248))

(declare-fun c!1285178 () Bool)

(assert (=> d!2164769 (= c!1285178 ((_ is EmptyExpr!16919) lt!2470598))))

(assert (=> d!2164769 (= lt!2470701 e!4166253)))

(declare-fun c!1285176 () Bool)

(assert (=> d!2164769 (= c!1285176 (isEmpty!38801 s!14361))))

(assert (=> d!2164769 (validRegex!8625 lt!2470598)))

(assert (=> d!2164769 (= (matchR!9058 lt!2470598 s!14361) lt!2470701)))

(assert (= (and d!2164769 c!1285176) b!6922421))

(assert (= (and d!2164769 (not c!1285176)) b!6922418))

(assert (= (and d!2164769 c!1285178) b!6922416))

(assert (= (and d!2164769 (not c!1285178)) b!6922419))

(assert (= (and b!6922419 c!1285177) b!6922425))

(assert (= (and b!6922419 (not c!1285177)) b!6922424))

(assert (= (and b!6922424 (not res!2822783)) b!6922417))

(assert (= (and b!6922417 res!2822784) b!6922422))

(assert (= (and b!6922422 res!2822782) b!6922426))

(assert (= (and b!6922426 res!2822788) b!6922420))

(assert (= (and b!6922417 (not res!2822786)) b!6922413))

(assert (= (and b!6922413 res!2822787) b!6922415))

(assert (= (and b!6922415 (not res!2822789)) b!6922414))

(assert (= (and b!6922414 (not res!2822785)) b!6922423))

(assert (= (or b!6922416 b!6922415 b!6922422) bm!629224))

(assert (=> b!6922414 m!7631932))

(assert (=> b!6922414 m!7631932))

(assert (=> b!6922414 m!7631934))

(assert (=> b!6922418 m!7631936))

(assert (=> b!6922418 m!7631936))

(declare-fun m!7631966 () Bool)

(assert (=> b!6922418 m!7631966))

(assert (=> b!6922418 m!7631932))

(assert (=> b!6922418 m!7631966))

(assert (=> b!6922418 m!7631932))

(declare-fun m!7631968 () Bool)

(assert (=> b!6922418 m!7631968))

(assert (=> d!2164769 m!7631942))

(assert (=> d!2164769 m!7631952))

(assert (=> b!6922420 m!7631936))

(declare-fun m!7631970 () Bool)

(assert (=> b!6922421 m!7631970))

(assert (=> b!6922423 m!7631936))

(assert (=> bm!629224 m!7631942))

(assert (=> b!6922426 m!7631932))

(assert (=> b!6922426 m!7631932))

(assert (=> b!6922426 m!7631934))

(assert (=> b!6921868 d!2164769))

(declare-fun bs!1847460 () Bool)

(declare-fun b!6922436 () Bool)

(assert (= bs!1847460 (and b!6922436 b!6921876)))

(declare-fun lambda!393579 () Int)

(assert (=> bs!1847460 (not (= lambda!393579 lambda!393528))))

(declare-fun bs!1847461 () Bool)

(assert (= bs!1847461 (and b!6922436 b!6922396)))

(assert (=> bs!1847461 (not (= lambda!393579 lambda!393577))))

(declare-fun bs!1847463 () Bool)

(assert (= bs!1847463 (and b!6922436 d!2164683)))

(assert (=> bs!1847463 (not (= lambda!393579 lambda!393563))))

(declare-fun bs!1847465 () Bool)

(assert (= bs!1847465 (and b!6922436 d!2164679)))

(assert (=> bs!1847465 (not (= lambda!393579 lambda!393555))))

(declare-fun bs!1847466 () Bool)

(assert (= bs!1847466 (and b!6922436 b!6921975)))

(assert (=> bs!1847466 (= (and (= s!14361 (_1!37079 lt!2470615)) (= (reg!17248 lt!2470607) (reg!17248 lt!2470609)) (= lt!2470607 lt!2470609)) (= lambda!393579 lambda!393535))))

(assert (=> bs!1847460 (not (= lambda!393579 lambda!393527))))

(declare-fun bs!1847469 () Bool)

(assert (= bs!1847469 (and b!6922436 b!6921971)))

(assert (=> bs!1847469 (not (= lambda!393579 lambda!393536))))

(declare-fun bs!1847470 () Bool)

(assert (= bs!1847470 (and b!6922436 b!6921879)))

(assert (=> bs!1847470 (not (= lambda!393579 lambda!393525))))

(declare-fun bs!1847472 () Bool)

(assert (= bs!1847472 (and b!6922436 b!6922400)))

(assert (=> bs!1847472 (= (and (= (reg!17248 lt!2470607) (reg!17248 lt!2470598)) (= lt!2470607 lt!2470598)) (= lambda!393579 lambda!393575))))

(assert (=> bs!1847470 (not (= lambda!393579 lambda!393526))))

(declare-fun bs!1847473 () Bool)

(assert (= bs!1847473 (and b!6922436 b!6921870)))

(assert (=> bs!1847473 (not (= lambda!393579 lambda!393529))))

(assert (=> bs!1847463 (not (= lambda!393579 lambda!393564))))

(assert (=> bs!1847473 (not (= lambda!393579 lambda!393530))))

(assert (=> b!6922436 true))

(assert (=> b!6922436 true))

(declare-fun bs!1847474 () Bool)

(declare-fun b!6922432 () Bool)

(assert (= bs!1847474 (and b!6922432 b!6921876)))

(declare-fun lambda!393580 () Int)

(assert (=> bs!1847474 (= (and (= s!14361 (_1!37079 lt!2470615)) (= (regOne!34350 lt!2470607) r1!6342) (= (regTwo!34350 lt!2470607) r2!6280)) (= lambda!393580 lambda!393528))))

(declare-fun bs!1847475 () Bool)

(assert (= bs!1847475 (and b!6922432 b!6922396)))

(assert (=> bs!1847475 (= (and (= (regOne!34350 lt!2470607) (regOne!34350 lt!2470598)) (= (regTwo!34350 lt!2470607) (regTwo!34350 lt!2470598))) (= lambda!393580 lambda!393577))))

(declare-fun bs!1847476 () Bool)

(assert (= bs!1847476 (and b!6922432 d!2164683)))

(assert (=> bs!1847476 (not (= lambda!393580 lambda!393563))))

(declare-fun bs!1847477 () Bool)

(assert (= bs!1847477 (and b!6922432 d!2164679)))

(assert (=> bs!1847477 (not (= lambda!393580 lambda!393555))))

(declare-fun bs!1847478 () Bool)

(assert (= bs!1847478 (and b!6922432 b!6921975)))

(assert (=> bs!1847478 (not (= lambda!393580 lambda!393535))))

(assert (=> bs!1847474 (not (= lambda!393580 lambda!393527))))

(declare-fun bs!1847479 () Bool)

(assert (= bs!1847479 (and b!6922432 b!6921971)))

(assert (=> bs!1847479 (= (and (= s!14361 (_1!37079 lt!2470615)) (= (regOne!34350 lt!2470607) (regOne!34350 lt!2470609)) (= (regTwo!34350 lt!2470607) (regTwo!34350 lt!2470609))) (= lambda!393580 lambda!393536))))

(declare-fun bs!1847480 () Bool)

(assert (= bs!1847480 (and b!6922432 b!6922436)))

(assert (=> bs!1847480 (not (= lambda!393580 lambda!393579))))

(declare-fun bs!1847481 () Bool)

(assert (= bs!1847481 (and b!6922432 b!6921879)))

(assert (=> bs!1847481 (not (= lambda!393580 lambda!393525))))

(declare-fun bs!1847482 () Bool)

(assert (= bs!1847482 (and b!6922432 b!6922400)))

(assert (=> bs!1847482 (not (= lambda!393580 lambda!393575))))

(assert (=> bs!1847481 (= (and (= (regOne!34350 lt!2470607) lt!2470609) (= (regTwo!34350 lt!2470607) r3!135)) (= lambda!393580 lambda!393526))))

(declare-fun bs!1847483 () Bool)

(assert (= bs!1847483 (and b!6922432 b!6921870)))

(assert (=> bs!1847483 (not (= lambda!393580 lambda!393529))))

(assert (=> bs!1847476 (= (and (= (regOne!34350 lt!2470607) lt!2470609) (= (regTwo!34350 lt!2470607) r3!135)) (= lambda!393580 lambda!393564))))

(assert (=> bs!1847483 (= (and (= s!14361 lt!2470600) (= (regOne!34350 lt!2470607) r2!6280) (= (regTwo!34350 lt!2470607) r3!135)) (= lambda!393580 lambda!393530))))

(assert (=> b!6922432 true))

(assert (=> b!6922432 true))

(declare-fun b!6922427 () Bool)

(declare-fun c!1285180 () Bool)

(assert (=> b!6922427 (= c!1285180 ((_ is Union!16919) lt!2470607))))

(declare-fun e!4166259 () Bool)

(declare-fun e!4166260 () Bool)

(assert (=> b!6922427 (= e!4166259 e!4166260)))

(declare-fun c!1285182 () Bool)

(declare-fun bm!629225 () Bool)

(declare-fun call!629231 () Bool)

(assert (=> bm!629225 (= call!629231 (Exists!3921 (ite c!1285182 lambda!393579 lambda!393580)))))

(declare-fun d!2164771 () Bool)

(declare-fun c!1285181 () Bool)

(assert (=> d!2164771 (= c!1285181 ((_ is EmptyExpr!16919) lt!2470607))))

(declare-fun e!4166257 () Bool)

(assert (=> d!2164771 (= (matchRSpec!3976 lt!2470607 s!14361) e!4166257)))

(declare-fun b!6922428 () Bool)

(declare-fun e!4166258 () Bool)

(assert (=> b!6922428 (= e!4166260 e!4166258)))

(declare-fun res!2822790 () Bool)

(assert (=> b!6922428 (= res!2822790 (matchRSpec!3976 (regOne!34351 lt!2470607) s!14361))))

(assert (=> b!6922428 (=> res!2822790 e!4166258)))

(declare-fun b!6922429 () Bool)

(declare-fun e!4166261 () Bool)

(assert (=> b!6922429 (= e!4166257 e!4166261)))

(declare-fun res!2822791 () Bool)

(assert (=> b!6922429 (= res!2822791 (not ((_ is EmptyLang!16919) lt!2470607)))))

(assert (=> b!6922429 (=> (not res!2822791) (not e!4166261))))

(declare-fun b!6922430 () Bool)

(declare-fun c!1285179 () Bool)

(assert (=> b!6922430 (= c!1285179 ((_ is ElementMatch!16919) lt!2470607))))

(assert (=> b!6922430 (= e!4166261 e!4166259)))

(declare-fun b!6922431 () Bool)

(assert (=> b!6922431 (= e!4166259 (= s!14361 (Cons!66548 (c!1285051 lt!2470607) Nil!66548)))))

(declare-fun bm!629226 () Bool)

(declare-fun call!629230 () Bool)

(assert (=> bm!629226 (= call!629230 (isEmpty!38801 s!14361))))

(declare-fun e!4166255 () Bool)

(assert (=> b!6922432 (= e!4166255 call!629231)))

(declare-fun b!6922433 () Bool)

(assert (=> b!6922433 (= e!4166260 e!4166255)))

(assert (=> b!6922433 (= c!1285182 ((_ is Star!16919) lt!2470607))))

(declare-fun b!6922434 () Bool)

(declare-fun res!2822792 () Bool)

(declare-fun e!4166256 () Bool)

(assert (=> b!6922434 (=> res!2822792 e!4166256)))

(assert (=> b!6922434 (= res!2822792 call!629230)))

(assert (=> b!6922434 (= e!4166255 e!4166256)))

(declare-fun b!6922435 () Bool)

(assert (=> b!6922435 (= e!4166258 (matchRSpec!3976 (regTwo!34351 lt!2470607) s!14361))))

(assert (=> b!6922436 (= e!4166256 call!629231)))

(declare-fun b!6922437 () Bool)

(assert (=> b!6922437 (= e!4166257 call!629230)))

(assert (= (and d!2164771 c!1285181) b!6922437))

(assert (= (and d!2164771 (not c!1285181)) b!6922429))

(assert (= (and b!6922429 res!2822791) b!6922430))

(assert (= (and b!6922430 c!1285179) b!6922431))

(assert (= (and b!6922430 (not c!1285179)) b!6922427))

(assert (= (and b!6922427 c!1285180) b!6922428))

(assert (= (and b!6922427 (not c!1285180)) b!6922433))

(assert (= (and b!6922428 (not res!2822790)) b!6922435))

(assert (= (and b!6922433 c!1285182) b!6922434))

(assert (= (and b!6922433 (not c!1285182)) b!6922432))

(assert (= (and b!6922434 (not res!2822792)) b!6922436))

(assert (= (or b!6922436 b!6922432) bm!629225))

(assert (= (or b!6922437 b!6922434) bm!629226))

(declare-fun m!7631984 () Bool)

(assert (=> bm!629225 m!7631984))

(declare-fun m!7631986 () Bool)

(assert (=> b!6922428 m!7631986))

(assert (=> bm!629226 m!7631942))

(declare-fun m!7631988 () Bool)

(assert (=> b!6922435 m!7631988))

(assert (=> b!6921868 d!2164771))

(declare-fun b!6922467 () Bool)

(declare-fun e!4166277 () Bool)

(declare-fun e!4166275 () Bool)

(assert (=> b!6922467 (= e!4166277 e!4166275)))

(declare-fun res!2822806 () Bool)

(assert (=> b!6922467 (=> (not res!2822806) (not e!4166275))))

(declare-fun lt!2470703 () Bool)

(assert (=> b!6922467 (= res!2822806 (not lt!2470703))))

(declare-fun b!6922468 () Bool)

(declare-fun res!2822804 () Bool)

(declare-fun e!4166280 () Bool)

(assert (=> b!6922468 (=> res!2822804 e!4166280)))

(assert (=> b!6922468 (= res!2822804 (not (isEmpty!38801 (tail!12930 (_2!37079 lt!2470595)))))))

(declare-fun b!6922469 () Bool)

(assert (=> b!6922469 (= e!4166275 e!4166280)))

(declare-fun res!2822808 () Bool)

(assert (=> b!6922469 (=> res!2822808 e!4166280)))

(declare-fun call!629233 () Bool)

(assert (=> b!6922469 (= res!2822808 call!629233)))

(declare-fun b!6922470 () Bool)

(declare-fun e!4166274 () Bool)

(assert (=> b!6922470 (= e!4166274 (= lt!2470703 call!629233))))

(declare-fun b!6922471 () Bool)

(declare-fun res!2822805 () Bool)

(assert (=> b!6922471 (=> res!2822805 e!4166277)))

(declare-fun e!4166276 () Bool)

(assert (=> b!6922471 (= res!2822805 e!4166276)))

(declare-fun res!2822803 () Bool)

(assert (=> b!6922471 (=> (not res!2822803) (not e!4166276))))

(assert (=> b!6922471 (= res!2822803 lt!2470703)))

(declare-fun b!6922472 () Bool)

(declare-fun e!4166279 () Bool)

(assert (=> b!6922472 (= e!4166279 (matchR!9058 (derivativeStep!5425 r2!6280 (head!13878 (_2!37079 lt!2470595))) (tail!12930 (_2!37079 lt!2470595))))))

(declare-fun bm!629228 () Bool)

(assert (=> bm!629228 (= call!629233 (isEmpty!38801 (_2!37079 lt!2470595)))))

(declare-fun b!6922473 () Bool)

(declare-fun e!4166278 () Bool)

(assert (=> b!6922473 (= e!4166274 e!4166278)))

(declare-fun c!1285187 () Bool)

(assert (=> b!6922473 (= c!1285187 ((_ is EmptyLang!16919) r2!6280))))

(declare-fun b!6922474 () Bool)

(assert (=> b!6922474 (= e!4166276 (= (head!13878 (_2!37079 lt!2470595)) (c!1285051 r2!6280)))))

(declare-fun b!6922475 () Bool)

(assert (=> b!6922475 (= e!4166279 (nullable!6750 r2!6280))))

(declare-fun b!6922477 () Bool)

(assert (=> b!6922477 (= e!4166280 (not (= (head!13878 (_2!37079 lt!2470595)) (c!1285051 r2!6280))))))

(declare-fun b!6922478 () Bool)

(declare-fun res!2822802 () Bool)

(assert (=> b!6922478 (=> res!2822802 e!4166277)))

(assert (=> b!6922478 (= res!2822802 (not ((_ is ElementMatch!16919) r2!6280)))))

(assert (=> b!6922478 (= e!4166278 e!4166277)))

(declare-fun b!6922479 () Bool)

(assert (=> b!6922479 (= e!4166278 (not lt!2470703))))

(declare-fun b!6922480 () Bool)

(declare-fun res!2822807 () Bool)

(assert (=> b!6922480 (=> (not res!2822807) (not e!4166276))))

(assert (=> b!6922480 (= res!2822807 (isEmpty!38801 (tail!12930 (_2!37079 lt!2470595))))))

(declare-fun b!6922476 () Bool)

(declare-fun res!2822801 () Bool)

(assert (=> b!6922476 (=> (not res!2822801) (not e!4166276))))

(assert (=> b!6922476 (= res!2822801 (not call!629233))))

(declare-fun d!2164775 () Bool)

(assert (=> d!2164775 e!4166274))

(declare-fun c!1285188 () Bool)

(assert (=> d!2164775 (= c!1285188 ((_ is EmptyExpr!16919) r2!6280))))

(assert (=> d!2164775 (= lt!2470703 e!4166279)))

(declare-fun c!1285186 () Bool)

(assert (=> d!2164775 (= c!1285186 (isEmpty!38801 (_2!37079 lt!2470595)))))

(assert (=> d!2164775 (validRegex!8625 r2!6280)))

(assert (=> d!2164775 (= (matchR!9058 r2!6280 (_2!37079 lt!2470595)) lt!2470703)))

(assert (= (and d!2164775 c!1285186) b!6922475))

(assert (= (and d!2164775 (not c!1285186)) b!6922472))

(assert (= (and d!2164775 c!1285188) b!6922470))

(assert (= (and d!2164775 (not c!1285188)) b!6922473))

(assert (= (and b!6922473 c!1285187) b!6922479))

(assert (= (and b!6922473 (not c!1285187)) b!6922478))

(assert (= (and b!6922478 (not res!2822802)) b!6922471))

(assert (= (and b!6922471 res!2822803) b!6922476))

(assert (= (and b!6922476 res!2822801) b!6922480))

(assert (= (and b!6922480 res!2822807) b!6922474))

(assert (= (and b!6922471 (not res!2822805)) b!6922467))

(assert (= (and b!6922467 res!2822806) b!6922469))

(assert (= (and b!6922469 (not res!2822808)) b!6922468))

(assert (= (and b!6922468 (not res!2822804)) b!6922477))

(assert (= (or b!6922470 b!6922469 b!6922476) bm!629228))

(declare-fun m!7631990 () Bool)

(assert (=> b!6922468 m!7631990))

(assert (=> b!6922468 m!7631990))

(declare-fun m!7631992 () Bool)

(assert (=> b!6922468 m!7631992))

(declare-fun m!7631994 () Bool)

(assert (=> b!6922472 m!7631994))

(assert (=> b!6922472 m!7631994))

(declare-fun m!7631996 () Bool)

(assert (=> b!6922472 m!7631996))

(assert (=> b!6922472 m!7631990))

(assert (=> b!6922472 m!7631996))

(assert (=> b!6922472 m!7631990))

(declare-fun m!7631998 () Bool)

(assert (=> b!6922472 m!7631998))

(declare-fun m!7632000 () Bool)

(assert (=> d!2164775 m!7632000))

(assert (=> d!2164775 m!7631534))

(assert (=> b!6922474 m!7631994))

(declare-fun m!7632002 () Bool)

(assert (=> b!6922475 m!7632002))

(assert (=> b!6922477 m!7631994))

(assert (=> bm!629228 m!7632000))

(assert (=> b!6922480 m!7631990))

(assert (=> b!6922480 m!7631990))

(assert (=> b!6922480 m!7631992))

(assert (=> b!6921869 d!2164775))

(declare-fun b!6922550 () Bool)

(declare-fun e!4166300 () List!66672)

(assert (=> b!6922550 (= e!4166300 (Cons!66548 (h!72996 (_1!37079 lt!2470595)) (++!14962 (t!380415 (_1!37079 lt!2470595)) lt!2470600)))))

(declare-fun b!6922552 () Bool)

(declare-fun lt!2470706 () List!66672)

(declare-fun e!4166301 () Bool)

(assert (=> b!6922552 (= e!4166301 (or (not (= lt!2470600 Nil!66548)) (= lt!2470706 (_1!37079 lt!2470595))))))

(declare-fun b!6922551 () Bool)

(declare-fun res!2822814 () Bool)

(assert (=> b!6922551 (=> (not res!2822814) (not e!4166301))))

(declare-fun size!40775 (List!66672) Int)

(assert (=> b!6922551 (= res!2822814 (= (size!40775 lt!2470706) (+ (size!40775 (_1!37079 lt!2470595)) (size!40775 lt!2470600))))))

(declare-fun d!2164777 () Bool)

(assert (=> d!2164777 e!4166301))

(declare-fun res!2822813 () Bool)

(assert (=> d!2164777 (=> (not res!2822813) (not e!4166301))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13078 (List!66672) (InoxSet C!34108))

(assert (=> d!2164777 (= res!2822813 (= (content!13078 lt!2470706) ((_ map or) (content!13078 (_1!37079 lt!2470595)) (content!13078 lt!2470600))))))

(assert (=> d!2164777 (= lt!2470706 e!4166300)))

(declare-fun c!1285191 () Bool)

(assert (=> d!2164777 (= c!1285191 ((_ is Nil!66548) (_1!37079 lt!2470595)))))

(assert (=> d!2164777 (= (++!14962 (_1!37079 lt!2470595) lt!2470600) lt!2470706)))

(declare-fun b!6922549 () Bool)

(assert (=> b!6922549 (= e!4166300 lt!2470600)))

(assert (= (and d!2164777 c!1285191) b!6922549))

(assert (= (and d!2164777 (not c!1285191)) b!6922550))

(assert (= (and d!2164777 res!2822813) b!6922551))

(assert (= (and b!6922551 res!2822814) b!6922552))

(declare-fun m!7632004 () Bool)

(assert (=> b!6922550 m!7632004))

(declare-fun m!7632006 () Bool)

(assert (=> b!6922551 m!7632006))

(declare-fun m!7632008 () Bool)

(assert (=> b!6922551 m!7632008))

(declare-fun m!7632010 () Bool)

(assert (=> b!6922551 m!7632010))

(declare-fun m!7632012 () Bool)

(assert (=> d!2164777 m!7632012))

(declare-fun m!7632014 () Bool)

(assert (=> d!2164777 m!7632014))

(declare-fun m!7632016 () Bool)

(assert (=> d!2164777 m!7632016))

(assert (=> b!6921881 d!2164777))

(declare-fun d!2164779 () Bool)

(assert (=> d!2164779 (= (++!14962 (++!14962 (_1!37079 lt!2470595) (_2!37079 lt!2470595)) (_2!37079 lt!2470615)) (++!14962 (_1!37079 lt!2470595) (++!14962 (_2!37079 lt!2470595) (_2!37079 lt!2470615))))))

(declare-fun lt!2470709 () Unit!160562)

(declare-fun choose!51543 (List!66672 List!66672 List!66672) Unit!160562)

(assert (=> d!2164779 (= lt!2470709 (choose!51543 (_1!37079 lt!2470595) (_2!37079 lt!2470595) (_2!37079 lt!2470615)))))

(assert (=> d!2164779 (= (lemmaConcatAssociativity!3010 (_1!37079 lt!2470595) (_2!37079 lt!2470595) (_2!37079 lt!2470615)) lt!2470709)))

(declare-fun bs!1847484 () Bool)

(assert (= bs!1847484 d!2164779))

(assert (=> bs!1847484 m!7631464))

(declare-fun m!7632018 () Bool)

(assert (=> bs!1847484 m!7632018))

(declare-fun m!7632020 () Bool)

(assert (=> bs!1847484 m!7632020))

(assert (=> bs!1847484 m!7631464))

(assert (=> bs!1847484 m!7631492))

(assert (=> bs!1847484 m!7631494))

(assert (=> bs!1847484 m!7631492))

(assert (=> b!6921881 d!2164779))

(declare-fun b!6922553 () Bool)

(declare-fun e!4166302 () Bool)

(declare-fun lt!2470712 () Option!16688)

(assert (=> b!6922553 (= e!4166302 (= (++!14962 (_1!37079 (get!23319 lt!2470712)) (_2!37079 (get!23319 lt!2470712))) lt!2470600))))

(declare-fun b!6922554 () Bool)

(declare-fun e!4166305 () Bool)

(assert (=> b!6922554 (= e!4166305 (not (isDefined!13391 lt!2470712)))))

(declare-fun d!2164781 () Bool)

(assert (=> d!2164781 e!4166305))

(declare-fun res!2822815 () Bool)

(assert (=> d!2164781 (=> res!2822815 e!4166305)))

(assert (=> d!2164781 (= res!2822815 e!4166302)))

(declare-fun res!2822817 () Bool)

(assert (=> d!2164781 (=> (not res!2822817) (not e!4166302))))

(assert (=> d!2164781 (= res!2822817 (isDefined!13391 lt!2470712))))

(declare-fun e!4166304 () Option!16688)

(assert (=> d!2164781 (= lt!2470712 e!4166304)))

(declare-fun c!1285193 () Bool)

(declare-fun e!4166306 () Bool)

(assert (=> d!2164781 (= c!1285193 e!4166306)))

(declare-fun res!2822819 () Bool)

(assert (=> d!2164781 (=> (not res!2822819) (not e!4166306))))

(assert (=> d!2164781 (= res!2822819 (matchR!9058 r2!6280 Nil!66548))))

(assert (=> d!2164781 (validRegex!8625 r2!6280)))

(assert (=> d!2164781 (= (findConcatSeparation!3102 r2!6280 r3!135 Nil!66548 lt!2470600 lt!2470600) lt!2470712)))

(declare-fun b!6922555 () Bool)

(declare-fun res!2822816 () Bool)

(assert (=> b!6922555 (=> (not res!2822816) (not e!4166302))))

(assert (=> b!6922555 (= res!2822816 (matchR!9058 r3!135 (_2!37079 (get!23319 lt!2470712))))))

(declare-fun b!6922556 () Bool)

(declare-fun e!4166303 () Option!16688)

(assert (=> b!6922556 (= e!4166304 e!4166303)))

(declare-fun c!1285192 () Bool)

(assert (=> b!6922556 (= c!1285192 ((_ is Nil!66548) lt!2470600))))

(declare-fun b!6922557 () Bool)

(declare-fun res!2822818 () Bool)

(assert (=> b!6922557 (=> (not res!2822818) (not e!4166302))))

(assert (=> b!6922557 (= res!2822818 (matchR!9058 r2!6280 (_1!37079 (get!23319 lt!2470712))))))

(declare-fun b!6922558 () Bool)

(declare-fun lt!2470710 () Unit!160562)

(declare-fun lt!2470711 () Unit!160562)

(assert (=> b!6922558 (= lt!2470710 lt!2470711)))

(assert (=> b!6922558 (= (++!14962 (++!14962 Nil!66548 (Cons!66548 (h!72996 lt!2470600) Nil!66548)) (t!380415 lt!2470600)) lt!2470600)))

(assert (=> b!6922558 (= lt!2470711 (lemmaMoveElementToOtherListKeepsConcatEq!2828 Nil!66548 (h!72996 lt!2470600) (t!380415 lt!2470600) lt!2470600))))

(assert (=> b!6922558 (= e!4166303 (findConcatSeparation!3102 r2!6280 r3!135 (++!14962 Nil!66548 (Cons!66548 (h!72996 lt!2470600) Nil!66548)) (t!380415 lt!2470600) lt!2470600))))

(declare-fun b!6922559 () Bool)

(assert (=> b!6922559 (= e!4166306 (matchR!9058 r3!135 lt!2470600))))

(declare-fun b!6922560 () Bool)

(assert (=> b!6922560 (= e!4166303 None!16687)))

(declare-fun b!6922561 () Bool)

(assert (=> b!6922561 (= e!4166304 (Some!16687 (tuple2!67553 Nil!66548 lt!2470600)))))

(assert (= (and d!2164781 res!2822819) b!6922559))

(assert (= (and d!2164781 c!1285193) b!6922561))

(assert (= (and d!2164781 (not c!1285193)) b!6922556))

(assert (= (and b!6922556 c!1285192) b!6922560))

(assert (= (and b!6922556 (not c!1285192)) b!6922558))

(assert (= (and d!2164781 res!2822817) b!6922557))

(assert (= (and b!6922557 res!2822818) b!6922555))

(assert (= (and b!6922555 res!2822816) b!6922553))

(assert (= (and d!2164781 (not res!2822815)) b!6922554))

(declare-fun m!7632022 () Bool)

(assert (=> b!6922558 m!7632022))

(assert (=> b!6922558 m!7632022))

(declare-fun m!7632024 () Bool)

(assert (=> b!6922558 m!7632024))

(declare-fun m!7632026 () Bool)

(assert (=> b!6922558 m!7632026))

(assert (=> b!6922558 m!7632022))

(declare-fun m!7632028 () Bool)

(assert (=> b!6922558 m!7632028))

(declare-fun m!7632030 () Bool)

(assert (=> b!6922559 m!7632030))

(declare-fun m!7632032 () Bool)

(assert (=> b!6922554 m!7632032))

(declare-fun m!7632034 () Bool)

(assert (=> b!6922553 m!7632034))

(declare-fun m!7632036 () Bool)

(assert (=> b!6922553 m!7632036))

(assert (=> b!6922555 m!7632034))

(declare-fun m!7632038 () Bool)

(assert (=> b!6922555 m!7632038))

(assert (=> d!2164781 m!7632032))

(declare-fun m!7632040 () Bool)

(assert (=> d!2164781 m!7632040))

(assert (=> d!2164781 m!7631534))

(assert (=> b!6922557 m!7632034))

(declare-fun m!7632042 () Bool)

(assert (=> b!6922557 m!7632042))

(assert (=> b!6921870 d!2164781))

(declare-fun d!2164783 () Bool)

(assert (=> d!2164783 (= (matchR!9058 lt!2470596 lt!2470600) (matchRSpec!3976 lt!2470596 lt!2470600))))

(declare-fun lt!2470713 () Unit!160562)

(assert (=> d!2164783 (= lt!2470713 (choose!51536 lt!2470596 lt!2470600))))

(assert (=> d!2164783 (validRegex!8625 lt!2470596)))

(assert (=> d!2164783 (= (mainMatchTheorem!3976 lt!2470596 lt!2470600) lt!2470713)))

(declare-fun bs!1847485 () Bool)

(assert (= bs!1847485 d!2164783))

(assert (=> bs!1847485 m!7631460))

(assert (=> bs!1847485 m!7631462))

(declare-fun m!7632044 () Bool)

(assert (=> bs!1847485 m!7632044))

(assert (=> bs!1847485 m!7631504))

(assert (=> b!6921870 d!2164783))

(declare-fun d!2164785 () Bool)

(assert (=> d!2164785 (= (Exists!3921 lambda!393530) (choose!51535 lambda!393530))))

(declare-fun bs!1847486 () Bool)

(assert (= bs!1847486 d!2164785))

(declare-fun m!7632046 () Bool)

(assert (=> bs!1847486 m!7632046))

(assert (=> b!6921870 d!2164785))

(declare-fun bs!1847487 () Bool)

(declare-fun b!6922571 () Bool)

(assert (= bs!1847487 (and b!6922571 b!6921876)))

(declare-fun lambda!393581 () Int)

(assert (=> bs!1847487 (not (= lambda!393581 lambda!393528))))

(declare-fun bs!1847488 () Bool)

(assert (= bs!1847488 (and b!6922571 b!6922396)))

(assert (=> bs!1847488 (not (= lambda!393581 lambda!393577))))

(declare-fun bs!1847489 () Bool)

(assert (= bs!1847489 (and b!6922571 d!2164683)))

(assert (=> bs!1847489 (not (= lambda!393581 lambda!393563))))

(declare-fun bs!1847490 () Bool)

(assert (= bs!1847490 (and b!6922571 b!6922432)))

(assert (=> bs!1847490 (not (= lambda!393581 lambda!393580))))

(declare-fun bs!1847491 () Bool)

(assert (= bs!1847491 (and b!6922571 d!2164679)))

(assert (=> bs!1847491 (not (= lambda!393581 lambda!393555))))

(declare-fun bs!1847492 () Bool)

(assert (= bs!1847492 (and b!6922571 b!6921975)))

(assert (=> bs!1847492 (= (and (= lt!2470600 (_1!37079 lt!2470615)) (= (reg!17248 lt!2470596) (reg!17248 lt!2470609)) (= lt!2470596 lt!2470609)) (= lambda!393581 lambda!393535))))

(assert (=> bs!1847487 (not (= lambda!393581 lambda!393527))))

(declare-fun bs!1847493 () Bool)

(assert (= bs!1847493 (and b!6922571 b!6921971)))

(assert (=> bs!1847493 (not (= lambda!393581 lambda!393536))))

(declare-fun bs!1847494 () Bool)

(assert (= bs!1847494 (and b!6922571 b!6922436)))

(assert (=> bs!1847494 (= (and (= lt!2470600 s!14361) (= (reg!17248 lt!2470596) (reg!17248 lt!2470607)) (= lt!2470596 lt!2470607)) (= lambda!393581 lambda!393579))))

(declare-fun bs!1847495 () Bool)

(assert (= bs!1847495 (and b!6922571 b!6921879)))

(assert (=> bs!1847495 (not (= lambda!393581 lambda!393525))))

(declare-fun bs!1847496 () Bool)

(assert (= bs!1847496 (and b!6922571 b!6922400)))

(assert (=> bs!1847496 (= (and (= lt!2470600 s!14361) (= (reg!17248 lt!2470596) (reg!17248 lt!2470598)) (= lt!2470596 lt!2470598)) (= lambda!393581 lambda!393575))))

(assert (=> bs!1847495 (not (= lambda!393581 lambda!393526))))

(declare-fun bs!1847497 () Bool)

(assert (= bs!1847497 (and b!6922571 b!6921870)))

(assert (=> bs!1847497 (not (= lambda!393581 lambda!393529))))

(assert (=> bs!1847489 (not (= lambda!393581 lambda!393564))))

(assert (=> bs!1847497 (not (= lambda!393581 lambda!393530))))

(assert (=> b!6922571 true))

(assert (=> b!6922571 true))

(declare-fun bs!1847498 () Bool)

(declare-fun b!6922567 () Bool)

(assert (= bs!1847498 (and b!6922567 b!6922571)))

(declare-fun lambda!393582 () Int)

(assert (=> bs!1847498 (not (= lambda!393582 lambda!393581))))

(declare-fun bs!1847499 () Bool)

(assert (= bs!1847499 (and b!6922567 b!6921876)))

(assert (=> bs!1847499 (= (and (= lt!2470600 (_1!37079 lt!2470615)) (= (regOne!34350 lt!2470596) r1!6342) (= (regTwo!34350 lt!2470596) r2!6280)) (= lambda!393582 lambda!393528))))

(declare-fun bs!1847500 () Bool)

(assert (= bs!1847500 (and b!6922567 b!6922396)))

(assert (=> bs!1847500 (= (and (= lt!2470600 s!14361) (= (regOne!34350 lt!2470596) (regOne!34350 lt!2470598)) (= (regTwo!34350 lt!2470596) (regTwo!34350 lt!2470598))) (= lambda!393582 lambda!393577))))

(declare-fun bs!1847501 () Bool)

(assert (= bs!1847501 (and b!6922567 d!2164683)))

(assert (=> bs!1847501 (not (= lambda!393582 lambda!393563))))

(declare-fun bs!1847502 () Bool)

(assert (= bs!1847502 (and b!6922567 b!6922432)))

(assert (=> bs!1847502 (= (and (= lt!2470600 s!14361) (= (regOne!34350 lt!2470596) (regOne!34350 lt!2470607)) (= (regTwo!34350 lt!2470596) (regTwo!34350 lt!2470607))) (= lambda!393582 lambda!393580))))

(declare-fun bs!1847503 () Bool)

(assert (= bs!1847503 (and b!6922567 d!2164679)))

(assert (=> bs!1847503 (not (= lambda!393582 lambda!393555))))

(declare-fun bs!1847504 () Bool)

(assert (= bs!1847504 (and b!6922567 b!6921975)))

(assert (=> bs!1847504 (not (= lambda!393582 lambda!393535))))

(assert (=> bs!1847499 (not (= lambda!393582 lambda!393527))))

(declare-fun bs!1847505 () Bool)

(assert (= bs!1847505 (and b!6922567 b!6921971)))

(assert (=> bs!1847505 (= (and (= lt!2470600 (_1!37079 lt!2470615)) (= (regOne!34350 lt!2470596) (regOne!34350 lt!2470609)) (= (regTwo!34350 lt!2470596) (regTwo!34350 lt!2470609))) (= lambda!393582 lambda!393536))))

(declare-fun bs!1847506 () Bool)

(assert (= bs!1847506 (and b!6922567 b!6922436)))

(assert (=> bs!1847506 (not (= lambda!393582 lambda!393579))))

(declare-fun bs!1847507 () Bool)

(assert (= bs!1847507 (and b!6922567 b!6921879)))

(assert (=> bs!1847507 (not (= lambda!393582 lambda!393525))))

(declare-fun bs!1847508 () Bool)

(assert (= bs!1847508 (and b!6922567 b!6922400)))

(assert (=> bs!1847508 (not (= lambda!393582 lambda!393575))))

(assert (=> bs!1847507 (= (and (= lt!2470600 s!14361) (= (regOne!34350 lt!2470596) lt!2470609) (= (regTwo!34350 lt!2470596) r3!135)) (= lambda!393582 lambda!393526))))

(declare-fun bs!1847509 () Bool)

(assert (= bs!1847509 (and b!6922567 b!6921870)))

(assert (=> bs!1847509 (not (= lambda!393582 lambda!393529))))

(assert (=> bs!1847501 (= (and (= lt!2470600 s!14361) (= (regOne!34350 lt!2470596) lt!2470609) (= (regTwo!34350 lt!2470596) r3!135)) (= lambda!393582 lambda!393564))))

(assert (=> bs!1847509 (= (and (= (regOne!34350 lt!2470596) r2!6280) (= (regTwo!34350 lt!2470596) r3!135)) (= lambda!393582 lambda!393530))))

(assert (=> b!6922567 true))

(assert (=> b!6922567 true))

(declare-fun b!6922562 () Bool)

(declare-fun c!1285195 () Bool)

(assert (=> b!6922562 (= c!1285195 ((_ is Union!16919) lt!2470596))))

(declare-fun e!4166311 () Bool)

(declare-fun e!4166312 () Bool)

(assert (=> b!6922562 (= e!4166311 e!4166312)))

(declare-fun call!629235 () Bool)

(declare-fun bm!629229 () Bool)

(declare-fun c!1285197 () Bool)

(assert (=> bm!629229 (= call!629235 (Exists!3921 (ite c!1285197 lambda!393581 lambda!393582)))))

(declare-fun d!2164787 () Bool)

(declare-fun c!1285196 () Bool)

(assert (=> d!2164787 (= c!1285196 ((_ is EmptyExpr!16919) lt!2470596))))

(declare-fun e!4166309 () Bool)

(assert (=> d!2164787 (= (matchRSpec!3976 lt!2470596 lt!2470600) e!4166309)))

(declare-fun b!6922563 () Bool)

(declare-fun e!4166310 () Bool)

(assert (=> b!6922563 (= e!4166312 e!4166310)))

(declare-fun res!2822820 () Bool)

(assert (=> b!6922563 (= res!2822820 (matchRSpec!3976 (regOne!34351 lt!2470596) lt!2470600))))

(assert (=> b!6922563 (=> res!2822820 e!4166310)))

(declare-fun b!6922564 () Bool)

(declare-fun e!4166313 () Bool)

(assert (=> b!6922564 (= e!4166309 e!4166313)))

(declare-fun res!2822821 () Bool)

(assert (=> b!6922564 (= res!2822821 (not ((_ is EmptyLang!16919) lt!2470596)))))

(assert (=> b!6922564 (=> (not res!2822821) (not e!4166313))))

(declare-fun b!6922565 () Bool)

(declare-fun c!1285194 () Bool)

(assert (=> b!6922565 (= c!1285194 ((_ is ElementMatch!16919) lt!2470596))))

(assert (=> b!6922565 (= e!4166313 e!4166311)))

(declare-fun b!6922566 () Bool)

(assert (=> b!6922566 (= e!4166311 (= lt!2470600 (Cons!66548 (c!1285051 lt!2470596) Nil!66548)))))

(declare-fun bm!629230 () Bool)

(declare-fun call!629234 () Bool)

(assert (=> bm!629230 (= call!629234 (isEmpty!38801 lt!2470600))))

(declare-fun e!4166307 () Bool)

(assert (=> b!6922567 (= e!4166307 call!629235)))

(declare-fun b!6922568 () Bool)

(assert (=> b!6922568 (= e!4166312 e!4166307)))

(assert (=> b!6922568 (= c!1285197 ((_ is Star!16919) lt!2470596))))

(declare-fun b!6922569 () Bool)

(declare-fun res!2822822 () Bool)

(declare-fun e!4166308 () Bool)

(assert (=> b!6922569 (=> res!2822822 e!4166308)))

(assert (=> b!6922569 (= res!2822822 call!629234)))

(assert (=> b!6922569 (= e!4166307 e!4166308)))

(declare-fun b!6922570 () Bool)

(assert (=> b!6922570 (= e!4166310 (matchRSpec!3976 (regTwo!34351 lt!2470596) lt!2470600))))

(assert (=> b!6922571 (= e!4166308 call!629235)))

(declare-fun b!6922572 () Bool)

(assert (=> b!6922572 (= e!4166309 call!629234)))

(assert (= (and d!2164787 c!1285196) b!6922572))

(assert (= (and d!2164787 (not c!1285196)) b!6922564))

(assert (= (and b!6922564 res!2822821) b!6922565))

(assert (= (and b!6922565 c!1285194) b!6922566))

(assert (= (and b!6922565 (not c!1285194)) b!6922562))

(assert (= (and b!6922562 c!1285195) b!6922563))

(assert (= (and b!6922562 (not c!1285195)) b!6922568))

(assert (= (and b!6922563 (not res!2822820)) b!6922570))

(assert (= (and b!6922568 c!1285197) b!6922569))

(assert (= (and b!6922568 (not c!1285197)) b!6922567))

(assert (= (and b!6922569 (not res!2822822)) b!6922571))

(assert (= (or b!6922571 b!6922567) bm!629229))

(assert (= (or b!6922572 b!6922569) bm!629230))

(declare-fun m!7632048 () Bool)

(assert (=> bm!629229 m!7632048))

(declare-fun m!7632050 () Bool)

(assert (=> b!6922563 m!7632050))

(declare-fun m!7632052 () Bool)

(assert (=> bm!629230 m!7632052))

(declare-fun m!7632054 () Bool)

(assert (=> b!6922570 m!7632054))

(assert (=> b!6921870 d!2164787))

(declare-fun b!6922574 () Bool)

(declare-fun e!4166314 () List!66672)

(assert (=> b!6922574 (= e!4166314 (Cons!66548 (h!72996 (_2!37079 lt!2470595)) (++!14962 (t!380415 (_2!37079 lt!2470595)) (_2!37079 lt!2470615))))))

(declare-fun b!6922576 () Bool)

(declare-fun lt!2470714 () List!66672)

(declare-fun e!4166315 () Bool)

(assert (=> b!6922576 (= e!4166315 (or (not (= (_2!37079 lt!2470615) Nil!66548)) (= lt!2470714 (_2!37079 lt!2470595))))))

(declare-fun b!6922575 () Bool)

(declare-fun res!2822824 () Bool)

(assert (=> b!6922575 (=> (not res!2822824) (not e!4166315))))

(assert (=> b!6922575 (= res!2822824 (= (size!40775 lt!2470714) (+ (size!40775 (_2!37079 lt!2470595)) (size!40775 (_2!37079 lt!2470615)))))))

(declare-fun d!2164789 () Bool)

(assert (=> d!2164789 e!4166315))

(declare-fun res!2822823 () Bool)

(assert (=> d!2164789 (=> (not res!2822823) (not e!4166315))))

(assert (=> d!2164789 (= res!2822823 (= (content!13078 lt!2470714) ((_ map or) (content!13078 (_2!37079 lt!2470595)) (content!13078 (_2!37079 lt!2470615)))))))

(assert (=> d!2164789 (= lt!2470714 e!4166314)))

(declare-fun c!1285198 () Bool)

(assert (=> d!2164789 (= c!1285198 ((_ is Nil!66548) (_2!37079 lt!2470595)))))

(assert (=> d!2164789 (= (++!14962 (_2!37079 lt!2470595) (_2!37079 lt!2470615)) lt!2470714)))

(declare-fun b!6922573 () Bool)

(assert (=> b!6922573 (= e!4166314 (_2!37079 lt!2470615))))

(assert (= (and d!2164789 c!1285198) b!6922573))

(assert (= (and d!2164789 (not c!1285198)) b!6922574))

(assert (= (and d!2164789 res!2822823) b!6922575))

(assert (= (and b!6922575 res!2822824) b!6922576))

(declare-fun m!7632056 () Bool)

(assert (=> b!6922574 m!7632056))

(declare-fun m!7632058 () Bool)

(assert (=> b!6922575 m!7632058))

(declare-fun m!7632060 () Bool)

(assert (=> b!6922575 m!7632060))

(declare-fun m!7632062 () Bool)

(assert (=> b!6922575 m!7632062))

(declare-fun m!7632064 () Bool)

(assert (=> d!2164789 m!7632064))

(declare-fun m!7632066 () Bool)

(assert (=> d!2164789 m!7632066))

(declare-fun m!7632068 () Bool)

(assert (=> d!2164789 m!7632068))

(assert (=> b!6921870 d!2164789))

(declare-fun d!2164791 () Bool)

(assert (=> d!2164791 (= (isDefined!13391 (findConcatSeparation!3102 r2!6280 r3!135 Nil!66548 lt!2470600 lt!2470600)) (not (isEmpty!38802 (findConcatSeparation!3102 r2!6280 r3!135 Nil!66548 lt!2470600 lt!2470600))))))

(declare-fun bs!1847510 () Bool)

(assert (= bs!1847510 d!2164791))

(assert (=> bs!1847510 m!7631454))

(declare-fun m!7632070 () Bool)

(assert (=> bs!1847510 m!7632070))

(assert (=> b!6921870 d!2164791))

(declare-fun bs!1847511 () Bool)

(declare-fun d!2164793 () Bool)

(assert (= bs!1847511 (and d!2164793 b!6922571)))

(declare-fun lambda!393583 () Int)

(assert (=> bs!1847511 (not (= lambda!393583 lambda!393581))))

(declare-fun bs!1847512 () Bool)

(assert (= bs!1847512 (and d!2164793 b!6921876)))

(assert (=> bs!1847512 (not (= lambda!393583 lambda!393528))))

(declare-fun bs!1847513 () Bool)

(assert (= bs!1847513 (and d!2164793 b!6922396)))

(assert (=> bs!1847513 (not (= lambda!393583 lambda!393577))))

(declare-fun bs!1847514 () Bool)

(assert (= bs!1847514 (and d!2164793 d!2164683)))

(assert (=> bs!1847514 (= (and (= lt!2470600 s!14361) (= r2!6280 lt!2470609)) (= lambda!393583 lambda!393563))))

(declare-fun bs!1847515 () Bool)

(assert (= bs!1847515 (and d!2164793 d!2164679)))

(assert (=> bs!1847515 (= (and (= lt!2470600 s!14361) (= r2!6280 lt!2470609)) (= lambda!393583 lambda!393555))))

(declare-fun bs!1847516 () Bool)

(assert (= bs!1847516 (and d!2164793 b!6921975)))

(assert (=> bs!1847516 (not (= lambda!393583 lambda!393535))))

(assert (=> bs!1847512 (= (and (= lt!2470600 (_1!37079 lt!2470615)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393583 lambda!393527))))

(declare-fun bs!1847517 () Bool)

(assert (= bs!1847517 (and d!2164793 b!6921971)))

(assert (=> bs!1847517 (not (= lambda!393583 lambda!393536))))

(declare-fun bs!1847518 () Bool)

(assert (= bs!1847518 (and d!2164793 b!6922436)))

(assert (=> bs!1847518 (not (= lambda!393583 lambda!393579))))

(declare-fun bs!1847519 () Bool)

(assert (= bs!1847519 (and d!2164793 b!6921879)))

(assert (=> bs!1847519 (= (and (= lt!2470600 s!14361) (= r2!6280 lt!2470609)) (= lambda!393583 lambda!393525))))

(declare-fun bs!1847520 () Bool)

(assert (= bs!1847520 (and d!2164793 b!6922400)))

(assert (=> bs!1847520 (not (= lambda!393583 lambda!393575))))

(assert (=> bs!1847519 (not (= lambda!393583 lambda!393526))))

(declare-fun bs!1847521 () Bool)

(assert (= bs!1847521 (and d!2164793 b!6921870)))

(assert (=> bs!1847521 (= lambda!393583 lambda!393529)))

(assert (=> bs!1847514 (not (= lambda!393583 lambda!393564))))

(assert (=> bs!1847521 (not (= lambda!393583 lambda!393530))))

(declare-fun bs!1847522 () Bool)

(assert (= bs!1847522 (and d!2164793 b!6922432)))

(assert (=> bs!1847522 (not (= lambda!393583 lambda!393580))))

(declare-fun bs!1847523 () Bool)

(assert (= bs!1847523 (and d!2164793 b!6922567)))

(assert (=> bs!1847523 (not (= lambda!393583 lambda!393582))))

(assert (=> d!2164793 true))

(assert (=> d!2164793 true))

(assert (=> d!2164793 true))

(declare-fun lambda!393584 () Int)

(assert (=> bs!1847511 (not (= lambda!393584 lambda!393581))))

(assert (=> bs!1847512 (= (and (= lt!2470600 (_1!37079 lt!2470615)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393584 lambda!393528))))

(assert (=> bs!1847514 (not (= lambda!393584 lambda!393563))))

(assert (=> bs!1847515 (not (= lambda!393584 lambda!393555))))

(assert (=> bs!1847516 (not (= lambda!393584 lambda!393535))))

(assert (=> bs!1847512 (not (= lambda!393584 lambda!393527))))

(assert (=> bs!1847517 (= (and (= lt!2470600 (_1!37079 lt!2470615)) (= r2!6280 (regOne!34350 lt!2470609)) (= r3!135 (regTwo!34350 lt!2470609))) (= lambda!393584 lambda!393536))))

(assert (=> bs!1847518 (not (= lambda!393584 lambda!393579))))

(assert (=> bs!1847519 (not (= lambda!393584 lambda!393525))))

(assert (=> bs!1847520 (not (= lambda!393584 lambda!393575))))

(assert (=> bs!1847513 (= (and (= lt!2470600 s!14361) (= r2!6280 (regOne!34350 lt!2470598)) (= r3!135 (regTwo!34350 lt!2470598))) (= lambda!393584 lambda!393577))))

(declare-fun bs!1847524 () Bool)

(assert (= bs!1847524 d!2164793))

(assert (=> bs!1847524 (not (= lambda!393584 lambda!393583))))

(assert (=> bs!1847519 (= (and (= lt!2470600 s!14361) (= r2!6280 lt!2470609)) (= lambda!393584 lambda!393526))))

(assert (=> bs!1847521 (not (= lambda!393584 lambda!393529))))

(assert (=> bs!1847514 (= (and (= lt!2470600 s!14361) (= r2!6280 lt!2470609)) (= lambda!393584 lambda!393564))))

(assert (=> bs!1847521 (= lambda!393584 lambda!393530)))

(assert (=> bs!1847522 (= (and (= lt!2470600 s!14361) (= r2!6280 (regOne!34350 lt!2470607)) (= r3!135 (regTwo!34350 lt!2470607))) (= lambda!393584 lambda!393580))))

(assert (=> bs!1847523 (= (and (= r2!6280 (regOne!34350 lt!2470596)) (= r3!135 (regTwo!34350 lt!2470596))) (= lambda!393584 lambda!393582))))

(assert (=> d!2164793 true))

(assert (=> d!2164793 true))

(assert (=> d!2164793 true))

(assert (=> d!2164793 (= (Exists!3921 lambda!393583) (Exists!3921 lambda!393584))))

(declare-fun lt!2470715 () Unit!160562)

(assert (=> d!2164793 (= lt!2470715 (choose!51538 r2!6280 r3!135 lt!2470600))))

(assert (=> d!2164793 (validRegex!8625 r2!6280)))

(assert (=> d!2164793 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2388 r2!6280 r3!135 lt!2470600) lt!2470715)))

(declare-fun m!7632072 () Bool)

(assert (=> bs!1847524 m!7632072))

(declare-fun m!7632074 () Bool)

(assert (=> bs!1847524 m!7632074))

(declare-fun m!7632076 () Bool)

(assert (=> bs!1847524 m!7632076))

(assert (=> bs!1847524 m!7631534))

(assert (=> b!6921870 d!2164793))

(declare-fun b!6922577 () Bool)

(declare-fun e!4166319 () Bool)

(declare-fun e!4166317 () Bool)

(assert (=> b!6922577 (= e!4166319 e!4166317)))

(declare-fun res!2822830 () Bool)

(assert (=> b!6922577 (=> (not res!2822830) (not e!4166317))))

(declare-fun lt!2470716 () Bool)

(assert (=> b!6922577 (= res!2822830 (not lt!2470716))))

(declare-fun b!6922578 () Bool)

(declare-fun res!2822828 () Bool)

(declare-fun e!4166322 () Bool)

(assert (=> b!6922578 (=> res!2822828 e!4166322)))

(assert (=> b!6922578 (= res!2822828 (not (isEmpty!38801 (tail!12930 lt!2470600))))))

(declare-fun b!6922579 () Bool)

(assert (=> b!6922579 (= e!4166317 e!4166322)))

(declare-fun res!2822832 () Bool)

(assert (=> b!6922579 (=> res!2822832 e!4166322)))

(declare-fun call!629236 () Bool)

(assert (=> b!6922579 (= res!2822832 call!629236)))

(declare-fun b!6922580 () Bool)

(declare-fun e!4166316 () Bool)

(assert (=> b!6922580 (= e!4166316 (= lt!2470716 call!629236))))

(declare-fun b!6922581 () Bool)

(declare-fun res!2822829 () Bool)

(assert (=> b!6922581 (=> res!2822829 e!4166319)))

(declare-fun e!4166318 () Bool)

(assert (=> b!6922581 (= res!2822829 e!4166318)))

(declare-fun res!2822827 () Bool)

(assert (=> b!6922581 (=> (not res!2822827) (not e!4166318))))

(assert (=> b!6922581 (= res!2822827 lt!2470716)))

(declare-fun b!6922582 () Bool)

(declare-fun e!4166321 () Bool)

(assert (=> b!6922582 (= e!4166321 (matchR!9058 (derivativeStep!5425 lt!2470596 (head!13878 lt!2470600)) (tail!12930 lt!2470600)))))

(declare-fun bm!629231 () Bool)

(assert (=> bm!629231 (= call!629236 (isEmpty!38801 lt!2470600))))

(declare-fun b!6922583 () Bool)

(declare-fun e!4166320 () Bool)

(assert (=> b!6922583 (= e!4166316 e!4166320)))

(declare-fun c!1285200 () Bool)

(assert (=> b!6922583 (= c!1285200 ((_ is EmptyLang!16919) lt!2470596))))

(declare-fun b!6922584 () Bool)

(assert (=> b!6922584 (= e!4166318 (= (head!13878 lt!2470600) (c!1285051 lt!2470596)))))

(declare-fun b!6922585 () Bool)

(assert (=> b!6922585 (= e!4166321 (nullable!6750 lt!2470596))))

(declare-fun b!6922587 () Bool)

(assert (=> b!6922587 (= e!4166322 (not (= (head!13878 lt!2470600) (c!1285051 lt!2470596))))))

(declare-fun b!6922588 () Bool)

(declare-fun res!2822826 () Bool)

(assert (=> b!6922588 (=> res!2822826 e!4166319)))

(assert (=> b!6922588 (= res!2822826 (not ((_ is ElementMatch!16919) lt!2470596)))))

(assert (=> b!6922588 (= e!4166320 e!4166319)))

(declare-fun b!6922589 () Bool)

(assert (=> b!6922589 (= e!4166320 (not lt!2470716))))

(declare-fun b!6922590 () Bool)

(declare-fun res!2822831 () Bool)

(assert (=> b!6922590 (=> (not res!2822831) (not e!4166318))))

(assert (=> b!6922590 (= res!2822831 (isEmpty!38801 (tail!12930 lt!2470600)))))

(declare-fun b!6922586 () Bool)

(declare-fun res!2822825 () Bool)

(assert (=> b!6922586 (=> (not res!2822825) (not e!4166318))))

(assert (=> b!6922586 (= res!2822825 (not call!629236))))

(declare-fun d!2164795 () Bool)

(assert (=> d!2164795 e!4166316))

(declare-fun c!1285201 () Bool)

(assert (=> d!2164795 (= c!1285201 ((_ is EmptyExpr!16919) lt!2470596))))

(assert (=> d!2164795 (= lt!2470716 e!4166321)))

(declare-fun c!1285199 () Bool)

(assert (=> d!2164795 (= c!1285199 (isEmpty!38801 lt!2470600))))

(assert (=> d!2164795 (validRegex!8625 lt!2470596)))

(assert (=> d!2164795 (= (matchR!9058 lt!2470596 lt!2470600) lt!2470716)))

(assert (= (and d!2164795 c!1285199) b!6922585))

(assert (= (and d!2164795 (not c!1285199)) b!6922582))

(assert (= (and d!2164795 c!1285201) b!6922580))

(assert (= (and d!2164795 (not c!1285201)) b!6922583))

(assert (= (and b!6922583 c!1285200) b!6922589))

(assert (= (and b!6922583 (not c!1285200)) b!6922588))

(assert (= (and b!6922588 (not res!2822826)) b!6922581))

(assert (= (and b!6922581 res!2822827) b!6922586))

(assert (= (and b!6922586 res!2822825) b!6922590))

(assert (= (and b!6922590 res!2822831) b!6922584))

(assert (= (and b!6922581 (not res!2822829)) b!6922577))

(assert (= (and b!6922577 res!2822830) b!6922579))

(assert (= (and b!6922579 (not res!2822832)) b!6922578))

(assert (= (and b!6922578 (not res!2822828)) b!6922587))

(assert (= (or b!6922580 b!6922579 b!6922586) bm!629231))

(declare-fun m!7632078 () Bool)

(assert (=> b!6922578 m!7632078))

(assert (=> b!6922578 m!7632078))

(declare-fun m!7632080 () Bool)

(assert (=> b!6922578 m!7632080))

(declare-fun m!7632082 () Bool)

(assert (=> b!6922582 m!7632082))

(assert (=> b!6922582 m!7632082))

(declare-fun m!7632084 () Bool)

(assert (=> b!6922582 m!7632084))

(assert (=> b!6922582 m!7632078))

(assert (=> b!6922582 m!7632084))

(assert (=> b!6922582 m!7632078))

(declare-fun m!7632086 () Bool)

(assert (=> b!6922582 m!7632086))

(assert (=> d!2164795 m!7632052))

(assert (=> d!2164795 m!7631504))

(assert (=> b!6922584 m!7632082))

(declare-fun m!7632088 () Bool)

(assert (=> b!6922585 m!7632088))

(assert (=> b!6922587 m!7632082))

(assert (=> bm!629231 m!7632052))

(assert (=> b!6922590 m!7632078))

(assert (=> b!6922590 m!7632078))

(assert (=> b!6922590 m!7632080))

(assert (=> b!6921870 d!2164795))

(declare-fun bs!1847525 () Bool)

(declare-fun d!2164797 () Bool)

(assert (= bs!1847525 (and d!2164797 b!6922571)))

(declare-fun lambda!393585 () Int)

(assert (=> bs!1847525 (not (= lambda!393585 lambda!393581))))

(declare-fun bs!1847526 () Bool)

(assert (= bs!1847526 (and d!2164797 b!6921876)))

(assert (=> bs!1847526 (not (= lambda!393585 lambda!393528))))

(declare-fun bs!1847527 () Bool)

(assert (= bs!1847527 (and d!2164797 d!2164683)))

(assert (=> bs!1847527 (= (and (= lt!2470600 s!14361) (= r2!6280 lt!2470609)) (= lambda!393585 lambda!393563))))

(declare-fun bs!1847528 () Bool)

(assert (= bs!1847528 (and d!2164797 d!2164793)))

(assert (=> bs!1847528 (not (= lambda!393585 lambda!393584))))

(declare-fun bs!1847529 () Bool)

(assert (= bs!1847529 (and d!2164797 d!2164679)))

(assert (=> bs!1847529 (= (and (= lt!2470600 s!14361) (= r2!6280 lt!2470609)) (= lambda!393585 lambda!393555))))

(declare-fun bs!1847530 () Bool)

(assert (= bs!1847530 (and d!2164797 b!6921975)))

(assert (=> bs!1847530 (not (= lambda!393585 lambda!393535))))

(assert (=> bs!1847526 (= (and (= lt!2470600 (_1!37079 lt!2470615)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393585 lambda!393527))))

(declare-fun bs!1847531 () Bool)

(assert (= bs!1847531 (and d!2164797 b!6921971)))

(assert (=> bs!1847531 (not (= lambda!393585 lambda!393536))))

(declare-fun bs!1847532 () Bool)

(assert (= bs!1847532 (and d!2164797 b!6922436)))

(assert (=> bs!1847532 (not (= lambda!393585 lambda!393579))))

(declare-fun bs!1847533 () Bool)

(assert (= bs!1847533 (and d!2164797 b!6921879)))

(assert (=> bs!1847533 (= (and (= lt!2470600 s!14361) (= r2!6280 lt!2470609)) (= lambda!393585 lambda!393525))))

(declare-fun bs!1847534 () Bool)

(assert (= bs!1847534 (and d!2164797 b!6922400)))

(assert (=> bs!1847534 (not (= lambda!393585 lambda!393575))))

(declare-fun bs!1847535 () Bool)

(assert (= bs!1847535 (and d!2164797 b!6922396)))

(assert (=> bs!1847535 (not (= lambda!393585 lambda!393577))))

(assert (=> bs!1847528 (= lambda!393585 lambda!393583)))

(assert (=> bs!1847533 (not (= lambda!393585 lambda!393526))))

(declare-fun bs!1847536 () Bool)

(assert (= bs!1847536 (and d!2164797 b!6921870)))

(assert (=> bs!1847536 (= lambda!393585 lambda!393529)))

(assert (=> bs!1847527 (not (= lambda!393585 lambda!393564))))

(assert (=> bs!1847536 (not (= lambda!393585 lambda!393530))))

(declare-fun bs!1847537 () Bool)

(assert (= bs!1847537 (and d!2164797 b!6922432)))

(assert (=> bs!1847537 (not (= lambda!393585 lambda!393580))))

(declare-fun bs!1847538 () Bool)

(assert (= bs!1847538 (and d!2164797 b!6922567)))

(assert (=> bs!1847538 (not (= lambda!393585 lambda!393582))))

(assert (=> d!2164797 true))

(assert (=> d!2164797 true))

(assert (=> d!2164797 true))

(assert (=> d!2164797 (= (isDefined!13391 (findConcatSeparation!3102 r2!6280 r3!135 Nil!66548 lt!2470600 lt!2470600)) (Exists!3921 lambda!393585))))

(declare-fun lt!2470717 () Unit!160562)

(assert (=> d!2164797 (= lt!2470717 (choose!51537 r2!6280 r3!135 lt!2470600))))

(assert (=> d!2164797 (validRegex!8625 r2!6280)))

(assert (=> d!2164797 (= (lemmaFindConcatSeparationEquivalentToExists!2864 r2!6280 r3!135 lt!2470600) lt!2470717)))

(declare-fun bs!1847539 () Bool)

(assert (= bs!1847539 d!2164797))

(declare-fun m!7632090 () Bool)

(assert (=> bs!1847539 m!7632090))

(assert (=> bs!1847539 m!7631454))

(declare-fun m!7632092 () Bool)

(assert (=> bs!1847539 m!7632092))

(assert (=> bs!1847539 m!7631454))

(assert (=> bs!1847539 m!7631456))

(assert (=> bs!1847539 m!7631534))

(assert (=> b!6921870 d!2164797))

(declare-fun d!2164799 () Bool)

(assert (=> d!2164799 (= (Exists!3921 lambda!393529) (choose!51535 lambda!393529))))

(declare-fun bs!1847540 () Bool)

(assert (= bs!1847540 d!2164799))

(declare-fun m!7632094 () Bool)

(assert (=> bs!1847540 m!7632094))

(assert (=> b!6921870 d!2164799))

(declare-fun d!2164801 () Bool)

(assert (=> d!2164801 (isDefined!13391 (findConcatSeparation!3102 r2!6280 r3!135 Nil!66548 lt!2470600 lt!2470600))))

(declare-fun lt!2470720 () Unit!160562)

(declare-fun choose!51545 (Regex!16919 Regex!16919 List!66672 List!66672 List!66672 List!66672 List!66672) Unit!160562)

(assert (=> d!2164801 (= lt!2470720 (choose!51545 r2!6280 r3!135 (_2!37079 lt!2470595) (_2!37079 lt!2470615) lt!2470600 Nil!66548 lt!2470600))))

(assert (=> d!2164801 (validRegex!8625 r2!6280)))

(assert (=> d!2164801 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!80 r2!6280 r3!135 (_2!37079 lt!2470595) (_2!37079 lt!2470615) lt!2470600 Nil!66548 lt!2470600) lt!2470720)))

(declare-fun bs!1847541 () Bool)

(assert (= bs!1847541 d!2164801))

(assert (=> bs!1847541 m!7631454))

(assert (=> bs!1847541 m!7631454))

(assert (=> bs!1847541 m!7631456))

(declare-fun m!7632096 () Bool)

(assert (=> bs!1847541 m!7632096))

(assert (=> bs!1847541 m!7631534))

(assert (=> b!6921870 d!2164801))

(declare-fun b!6922591 () Bool)

(declare-fun e!4166326 () Bool)

(declare-fun e!4166324 () Bool)

(assert (=> b!6922591 (= e!4166326 e!4166324)))

(declare-fun res!2822838 () Bool)

(assert (=> b!6922591 (=> (not res!2822838) (not e!4166324))))

(declare-fun lt!2470721 () Bool)

(assert (=> b!6922591 (= res!2822838 (not lt!2470721))))

(declare-fun b!6922592 () Bool)

(declare-fun res!2822836 () Bool)

(declare-fun e!4166329 () Bool)

(assert (=> b!6922592 (=> res!2822836 e!4166329)))

(assert (=> b!6922592 (= res!2822836 (not (isEmpty!38801 (tail!12930 (_2!37079 lt!2470615)))))))

(declare-fun b!6922593 () Bool)

(assert (=> b!6922593 (= e!4166324 e!4166329)))

(declare-fun res!2822840 () Bool)

(assert (=> b!6922593 (=> res!2822840 e!4166329)))

(declare-fun call!629237 () Bool)

(assert (=> b!6922593 (= res!2822840 call!629237)))

(declare-fun b!6922594 () Bool)

(declare-fun e!4166323 () Bool)

(assert (=> b!6922594 (= e!4166323 (= lt!2470721 call!629237))))

(declare-fun b!6922595 () Bool)

(declare-fun res!2822837 () Bool)

(assert (=> b!6922595 (=> res!2822837 e!4166326)))

(declare-fun e!4166325 () Bool)

(assert (=> b!6922595 (= res!2822837 e!4166325)))

(declare-fun res!2822835 () Bool)

(assert (=> b!6922595 (=> (not res!2822835) (not e!4166325))))

(assert (=> b!6922595 (= res!2822835 lt!2470721)))

(declare-fun b!6922596 () Bool)

(declare-fun e!4166328 () Bool)

(assert (=> b!6922596 (= e!4166328 (matchR!9058 (derivativeStep!5425 r3!135 (head!13878 (_2!37079 lt!2470615))) (tail!12930 (_2!37079 lt!2470615))))))

(declare-fun bm!629232 () Bool)

(assert (=> bm!629232 (= call!629237 (isEmpty!38801 (_2!37079 lt!2470615)))))

(declare-fun b!6922597 () Bool)

(declare-fun e!4166327 () Bool)

(assert (=> b!6922597 (= e!4166323 e!4166327)))

(declare-fun c!1285203 () Bool)

(assert (=> b!6922597 (= c!1285203 ((_ is EmptyLang!16919) r3!135))))

(declare-fun b!6922598 () Bool)

(assert (=> b!6922598 (= e!4166325 (= (head!13878 (_2!37079 lt!2470615)) (c!1285051 r3!135)))))

(declare-fun b!6922599 () Bool)

(assert (=> b!6922599 (= e!4166328 (nullable!6750 r3!135))))

(declare-fun b!6922601 () Bool)

(assert (=> b!6922601 (= e!4166329 (not (= (head!13878 (_2!37079 lt!2470615)) (c!1285051 r3!135))))))

(declare-fun b!6922602 () Bool)

(declare-fun res!2822834 () Bool)

(assert (=> b!6922602 (=> res!2822834 e!4166326)))

(assert (=> b!6922602 (= res!2822834 (not ((_ is ElementMatch!16919) r3!135)))))

(assert (=> b!6922602 (= e!4166327 e!4166326)))

(declare-fun b!6922603 () Bool)

(assert (=> b!6922603 (= e!4166327 (not lt!2470721))))

(declare-fun b!6922604 () Bool)

(declare-fun res!2822839 () Bool)

(assert (=> b!6922604 (=> (not res!2822839) (not e!4166325))))

(assert (=> b!6922604 (= res!2822839 (isEmpty!38801 (tail!12930 (_2!37079 lt!2470615))))))

(declare-fun b!6922600 () Bool)

(declare-fun res!2822833 () Bool)

(assert (=> b!6922600 (=> (not res!2822833) (not e!4166325))))

(assert (=> b!6922600 (= res!2822833 (not call!629237))))

(declare-fun d!2164803 () Bool)

(assert (=> d!2164803 e!4166323))

(declare-fun c!1285204 () Bool)

(assert (=> d!2164803 (= c!1285204 ((_ is EmptyExpr!16919) r3!135))))

(assert (=> d!2164803 (= lt!2470721 e!4166328)))

(declare-fun c!1285202 () Bool)

(assert (=> d!2164803 (= c!1285202 (isEmpty!38801 (_2!37079 lt!2470615)))))

(assert (=> d!2164803 (validRegex!8625 r3!135)))

(assert (=> d!2164803 (= (matchR!9058 r3!135 (_2!37079 lt!2470615)) lt!2470721)))

(assert (= (and d!2164803 c!1285202) b!6922599))

(assert (= (and d!2164803 (not c!1285202)) b!6922596))

(assert (= (and d!2164803 c!1285204) b!6922594))

(assert (= (and d!2164803 (not c!1285204)) b!6922597))

(assert (= (and b!6922597 c!1285203) b!6922603))

(assert (= (and b!6922597 (not c!1285203)) b!6922602))

(assert (= (and b!6922602 (not res!2822834)) b!6922595))

(assert (= (and b!6922595 res!2822835) b!6922600))

(assert (= (and b!6922600 res!2822833) b!6922604))

(assert (= (and b!6922604 res!2822839) b!6922598))

(assert (= (and b!6922595 (not res!2822837)) b!6922591))

(assert (= (and b!6922591 res!2822838) b!6922593))

(assert (= (and b!6922593 (not res!2822840)) b!6922592))

(assert (= (and b!6922592 (not res!2822836)) b!6922601))

(assert (= (or b!6922594 b!6922593 b!6922600) bm!629232))

(declare-fun m!7632098 () Bool)

(assert (=> b!6922592 m!7632098))

(assert (=> b!6922592 m!7632098))

(declare-fun m!7632100 () Bool)

(assert (=> b!6922592 m!7632100))

(declare-fun m!7632102 () Bool)

(assert (=> b!6922596 m!7632102))

(assert (=> b!6922596 m!7632102))

(declare-fun m!7632104 () Bool)

(assert (=> b!6922596 m!7632104))

(assert (=> b!6922596 m!7632098))

(assert (=> b!6922596 m!7632104))

(assert (=> b!6922596 m!7632098))

(declare-fun m!7632106 () Bool)

(assert (=> b!6922596 m!7632106))

(declare-fun m!7632108 () Bool)

(assert (=> d!2164803 m!7632108))

(assert (=> d!2164803 m!7631446))

(assert (=> b!6922598 m!7632102))

(declare-fun m!7632110 () Bool)

(assert (=> b!6922599 m!7632110))

(assert (=> b!6922601 m!7632102))

(assert (=> bm!629232 m!7632108))

(assert (=> b!6922604 m!7632098))

(assert (=> b!6922604 m!7632098))

(assert (=> b!6922604 m!7632100))

(assert (=> b!6921882 d!2164803))

(declare-fun bm!629233 () Bool)

(declare-fun call!629238 () Bool)

(declare-fun call!629239 () Bool)

(assert (=> bm!629233 (= call!629238 call!629239)))

(declare-fun b!6922605 () Bool)

(declare-fun res!2822841 () Bool)

(declare-fun e!4166333 () Bool)

(assert (=> b!6922605 (=> (not res!2822841) (not e!4166333))))

(declare-fun call!629240 () Bool)

(assert (=> b!6922605 (= res!2822841 call!629240)))

(declare-fun e!4166335 () Bool)

(assert (=> b!6922605 (= e!4166335 e!4166333)))

(declare-fun d!2164805 () Bool)

(declare-fun res!2822844 () Bool)

(declare-fun e!4166331 () Bool)

(assert (=> d!2164805 (=> res!2822844 e!4166331)))

(assert (=> d!2164805 (= res!2822844 ((_ is ElementMatch!16919) lt!2470596))))

(assert (=> d!2164805 (= (validRegex!8625 lt!2470596) e!4166331)))

(declare-fun b!6922606 () Bool)

(declare-fun e!4166336 () Bool)

(declare-fun e!4166334 () Bool)

(assert (=> b!6922606 (= e!4166336 e!4166334)))

(declare-fun res!2822843 () Bool)

(assert (=> b!6922606 (= res!2822843 (not (nullable!6750 (reg!17248 lt!2470596))))))

(assert (=> b!6922606 (=> (not res!2822843) (not e!4166334))))

(declare-fun bm!629234 () Bool)

(declare-fun c!1285206 () Bool)

(declare-fun c!1285205 () Bool)

(assert (=> bm!629234 (= call!629239 (validRegex!8625 (ite c!1285205 (reg!17248 lt!2470596) (ite c!1285206 (regTwo!34351 lt!2470596) (regOne!34350 lt!2470596)))))))

(declare-fun b!6922607 () Bool)

(declare-fun e!4166332 () Bool)

(declare-fun e!4166330 () Bool)

(assert (=> b!6922607 (= e!4166332 e!4166330)))

(declare-fun res!2822845 () Bool)

(assert (=> b!6922607 (=> (not res!2822845) (not e!4166330))))

(assert (=> b!6922607 (= res!2822845 call!629238)))

(declare-fun bm!629235 () Bool)

(assert (=> bm!629235 (= call!629240 (validRegex!8625 (ite c!1285206 (regOne!34351 lt!2470596) (regTwo!34350 lt!2470596))))))

(declare-fun b!6922608 () Bool)

(assert (=> b!6922608 (= e!4166330 call!629240)))

(declare-fun b!6922609 () Bool)

(assert (=> b!6922609 (= e!4166331 e!4166336)))

(assert (=> b!6922609 (= c!1285205 ((_ is Star!16919) lt!2470596))))

(declare-fun b!6922610 () Bool)

(assert (=> b!6922610 (= e!4166333 call!629238)))

(declare-fun b!6922611 () Bool)

(declare-fun res!2822842 () Bool)

(assert (=> b!6922611 (=> res!2822842 e!4166332)))

(assert (=> b!6922611 (= res!2822842 (not ((_ is Concat!25764) lt!2470596)))))

(assert (=> b!6922611 (= e!4166335 e!4166332)))

(declare-fun b!6922612 () Bool)

(assert (=> b!6922612 (= e!4166334 call!629239)))

(declare-fun b!6922613 () Bool)

(assert (=> b!6922613 (= e!4166336 e!4166335)))

(assert (=> b!6922613 (= c!1285206 ((_ is Union!16919) lt!2470596))))

(assert (= (and d!2164805 (not res!2822844)) b!6922609))

(assert (= (and b!6922609 c!1285205) b!6922606))

(assert (= (and b!6922609 (not c!1285205)) b!6922613))

(assert (= (and b!6922606 res!2822843) b!6922612))

(assert (= (and b!6922613 c!1285206) b!6922605))

(assert (= (and b!6922613 (not c!1285206)) b!6922611))

(assert (= (and b!6922605 res!2822841) b!6922610))

(assert (= (and b!6922611 (not res!2822842)) b!6922607))

(assert (= (and b!6922607 res!2822845) b!6922608))

(assert (= (or b!6922605 b!6922608) bm!629235))

(assert (= (or b!6922610 b!6922607) bm!629233))

(assert (= (or b!6922612 bm!629233) bm!629234))

(declare-fun m!7632112 () Bool)

(assert (=> b!6922606 m!7632112))

(declare-fun m!7632114 () Bool)

(assert (=> bm!629234 m!7632114))

(declare-fun m!7632116 () Bool)

(assert (=> bm!629235 m!7632116))

(assert (=> b!6921884 d!2164805))

(declare-fun bm!629236 () Bool)

(declare-fun call!629241 () Bool)

(declare-fun call!629242 () Bool)

(assert (=> bm!629236 (= call!629241 call!629242)))

(declare-fun b!6922614 () Bool)

(declare-fun res!2822846 () Bool)

(declare-fun e!4166340 () Bool)

(assert (=> b!6922614 (=> (not res!2822846) (not e!4166340))))

(declare-fun call!629243 () Bool)

(assert (=> b!6922614 (= res!2822846 call!629243)))

(declare-fun e!4166342 () Bool)

(assert (=> b!6922614 (= e!4166342 e!4166340)))

(declare-fun d!2164807 () Bool)

(declare-fun res!2822849 () Bool)

(declare-fun e!4166338 () Bool)

(assert (=> d!2164807 (=> res!2822849 e!4166338)))

(assert (=> d!2164807 (= res!2822849 ((_ is ElementMatch!16919) r2!6280))))

(assert (=> d!2164807 (= (validRegex!8625 r2!6280) e!4166338)))

(declare-fun b!6922615 () Bool)

(declare-fun e!4166343 () Bool)

(declare-fun e!4166341 () Bool)

(assert (=> b!6922615 (= e!4166343 e!4166341)))

(declare-fun res!2822848 () Bool)

(assert (=> b!6922615 (= res!2822848 (not (nullable!6750 (reg!17248 r2!6280))))))

(assert (=> b!6922615 (=> (not res!2822848) (not e!4166341))))

(declare-fun bm!629237 () Bool)

(declare-fun c!1285208 () Bool)

(declare-fun c!1285207 () Bool)

(assert (=> bm!629237 (= call!629242 (validRegex!8625 (ite c!1285207 (reg!17248 r2!6280) (ite c!1285208 (regTwo!34351 r2!6280) (regOne!34350 r2!6280)))))))

(declare-fun b!6922616 () Bool)

(declare-fun e!4166339 () Bool)

(declare-fun e!4166337 () Bool)

(assert (=> b!6922616 (= e!4166339 e!4166337)))

(declare-fun res!2822850 () Bool)

(assert (=> b!6922616 (=> (not res!2822850) (not e!4166337))))

(assert (=> b!6922616 (= res!2822850 call!629241)))

(declare-fun bm!629238 () Bool)

(assert (=> bm!629238 (= call!629243 (validRegex!8625 (ite c!1285208 (regOne!34351 r2!6280) (regTwo!34350 r2!6280))))))

(declare-fun b!6922617 () Bool)

(assert (=> b!6922617 (= e!4166337 call!629243)))

(declare-fun b!6922618 () Bool)

(assert (=> b!6922618 (= e!4166338 e!4166343)))

(assert (=> b!6922618 (= c!1285207 ((_ is Star!16919) r2!6280))))

(declare-fun b!6922619 () Bool)

(assert (=> b!6922619 (= e!4166340 call!629241)))

(declare-fun b!6922620 () Bool)

(declare-fun res!2822847 () Bool)

(assert (=> b!6922620 (=> res!2822847 e!4166339)))

(assert (=> b!6922620 (= res!2822847 (not ((_ is Concat!25764) r2!6280)))))

(assert (=> b!6922620 (= e!4166342 e!4166339)))

(declare-fun b!6922621 () Bool)

(assert (=> b!6922621 (= e!4166341 call!629242)))

(declare-fun b!6922622 () Bool)

(assert (=> b!6922622 (= e!4166343 e!4166342)))

(assert (=> b!6922622 (= c!1285208 ((_ is Union!16919) r2!6280))))

(assert (= (and d!2164807 (not res!2822849)) b!6922618))

(assert (= (and b!6922618 c!1285207) b!6922615))

(assert (= (and b!6922618 (not c!1285207)) b!6922622))

(assert (= (and b!6922615 res!2822848) b!6922621))

(assert (= (and b!6922622 c!1285208) b!6922614))

(assert (= (and b!6922622 (not c!1285208)) b!6922620))

(assert (= (and b!6922614 res!2822846) b!6922619))

(assert (= (and b!6922620 (not res!2822847)) b!6922616))

(assert (= (and b!6922616 res!2822850) b!6922617))

(assert (= (or b!6922614 b!6922617) bm!629238))

(assert (= (or b!6922619 b!6922616) bm!629236))

(assert (= (or b!6922621 bm!629236) bm!629237))

(declare-fun m!7632118 () Bool)

(assert (=> b!6922615 m!7632118))

(declare-fun m!7632120 () Bool)

(assert (=> bm!629237 m!7632120))

(declare-fun m!7632122 () Bool)

(assert (=> bm!629238 m!7632122))

(assert (=> b!6921864 d!2164807))

(declare-fun bm!629239 () Bool)

(declare-fun call!629244 () Bool)

(declare-fun call!629245 () Bool)

(assert (=> bm!629239 (= call!629244 call!629245)))

(declare-fun b!6922623 () Bool)

(declare-fun res!2822851 () Bool)

(declare-fun e!4166347 () Bool)

(assert (=> b!6922623 (=> (not res!2822851) (not e!4166347))))

(declare-fun call!629246 () Bool)

(assert (=> b!6922623 (= res!2822851 call!629246)))

(declare-fun e!4166349 () Bool)

(assert (=> b!6922623 (= e!4166349 e!4166347)))

(declare-fun d!2164809 () Bool)

(declare-fun res!2822854 () Bool)

(declare-fun e!4166345 () Bool)

(assert (=> d!2164809 (=> res!2822854 e!4166345)))

(assert (=> d!2164809 (= res!2822854 ((_ is ElementMatch!16919) r3!135))))

(assert (=> d!2164809 (= (validRegex!8625 r3!135) e!4166345)))

(declare-fun b!6922624 () Bool)

(declare-fun e!4166350 () Bool)

(declare-fun e!4166348 () Bool)

(assert (=> b!6922624 (= e!4166350 e!4166348)))

(declare-fun res!2822853 () Bool)

(assert (=> b!6922624 (= res!2822853 (not (nullable!6750 (reg!17248 r3!135))))))

(assert (=> b!6922624 (=> (not res!2822853) (not e!4166348))))

(declare-fun bm!629240 () Bool)

(declare-fun c!1285210 () Bool)

(declare-fun c!1285209 () Bool)

(assert (=> bm!629240 (= call!629245 (validRegex!8625 (ite c!1285209 (reg!17248 r3!135) (ite c!1285210 (regTwo!34351 r3!135) (regOne!34350 r3!135)))))))

(declare-fun b!6922625 () Bool)

(declare-fun e!4166346 () Bool)

(declare-fun e!4166344 () Bool)

(assert (=> b!6922625 (= e!4166346 e!4166344)))

(declare-fun res!2822855 () Bool)

(assert (=> b!6922625 (=> (not res!2822855) (not e!4166344))))

(assert (=> b!6922625 (= res!2822855 call!629244)))

(declare-fun bm!629241 () Bool)

(assert (=> bm!629241 (= call!629246 (validRegex!8625 (ite c!1285210 (regOne!34351 r3!135) (regTwo!34350 r3!135))))))

(declare-fun b!6922626 () Bool)

(assert (=> b!6922626 (= e!4166344 call!629246)))

(declare-fun b!6922627 () Bool)

(assert (=> b!6922627 (= e!4166345 e!4166350)))

(assert (=> b!6922627 (= c!1285209 ((_ is Star!16919) r3!135))))

(declare-fun b!6922628 () Bool)

(assert (=> b!6922628 (= e!4166347 call!629244)))

(declare-fun b!6922629 () Bool)

(declare-fun res!2822852 () Bool)

(assert (=> b!6922629 (=> res!2822852 e!4166346)))

(assert (=> b!6922629 (= res!2822852 (not ((_ is Concat!25764) r3!135)))))

(assert (=> b!6922629 (= e!4166349 e!4166346)))

(declare-fun b!6922630 () Bool)

(assert (=> b!6922630 (= e!4166348 call!629245)))

(declare-fun b!6922631 () Bool)

(assert (=> b!6922631 (= e!4166350 e!4166349)))

(assert (=> b!6922631 (= c!1285210 ((_ is Union!16919) r3!135))))

(assert (= (and d!2164809 (not res!2822854)) b!6922627))

(assert (= (and b!6922627 c!1285209) b!6922624))

(assert (= (and b!6922627 (not c!1285209)) b!6922631))

(assert (= (and b!6922624 res!2822853) b!6922630))

(assert (= (and b!6922631 c!1285210) b!6922623))

(assert (= (and b!6922631 (not c!1285210)) b!6922629))

(assert (= (and b!6922623 res!2822851) b!6922628))

(assert (= (and b!6922629 (not res!2822852)) b!6922625))

(assert (= (and b!6922625 res!2822855) b!6922626))

(assert (= (or b!6922623 b!6922626) bm!629241))

(assert (= (or b!6922628 b!6922625) bm!629239))

(assert (= (or b!6922630 bm!629239) bm!629240))

(declare-fun m!7632124 () Bool)

(assert (=> b!6922624 m!7632124))

(declare-fun m!7632126 () Bool)

(assert (=> bm!629240 m!7632126))

(declare-fun m!7632128 () Bool)

(assert (=> bm!629241 m!7632128))

(assert (=> b!6921865 d!2164809))

(declare-fun d!2164811 () Bool)

(assert (=> d!2164811 (= (get!23319 lt!2470610) (v!52959 lt!2470610))))

(assert (=> b!6921876 d!2164811))

(declare-fun d!2164813 () Bool)

(assert (=> d!2164813 (= (Exists!3921 lambda!393527) (choose!51535 lambda!393527))))

(declare-fun bs!1847542 () Bool)

(assert (= bs!1847542 d!2164813))

(declare-fun m!7632130 () Bool)

(assert (=> bs!1847542 m!7632130))

(assert (=> b!6921876 d!2164813))

(declare-fun b!6922632 () Bool)

(declare-fun e!4166351 () Bool)

(declare-fun lt!2470724 () Option!16688)

(assert (=> b!6922632 (= e!4166351 (= (++!14962 (_1!37079 (get!23319 lt!2470724)) (_2!37079 (get!23319 lt!2470724))) (_1!37079 lt!2470615)))))

(declare-fun b!6922633 () Bool)

(declare-fun e!4166354 () Bool)

(assert (=> b!6922633 (= e!4166354 (not (isDefined!13391 lt!2470724)))))

(declare-fun d!2164815 () Bool)

(assert (=> d!2164815 e!4166354))

(declare-fun res!2822856 () Bool)

(assert (=> d!2164815 (=> res!2822856 e!4166354)))

(assert (=> d!2164815 (= res!2822856 e!4166351)))

(declare-fun res!2822858 () Bool)

(assert (=> d!2164815 (=> (not res!2822858) (not e!4166351))))

(assert (=> d!2164815 (= res!2822858 (isDefined!13391 lt!2470724))))

(declare-fun e!4166353 () Option!16688)

(assert (=> d!2164815 (= lt!2470724 e!4166353)))

(declare-fun c!1285212 () Bool)

(declare-fun e!4166355 () Bool)

(assert (=> d!2164815 (= c!1285212 e!4166355)))

(declare-fun res!2822860 () Bool)

(assert (=> d!2164815 (=> (not res!2822860) (not e!4166355))))

(assert (=> d!2164815 (= res!2822860 (matchR!9058 r1!6342 Nil!66548))))

(assert (=> d!2164815 (validRegex!8625 r1!6342)))

(assert (=> d!2164815 (= (findConcatSeparation!3102 r1!6342 r2!6280 Nil!66548 (_1!37079 lt!2470615) (_1!37079 lt!2470615)) lt!2470724)))

(declare-fun b!6922634 () Bool)

(declare-fun res!2822857 () Bool)

(assert (=> b!6922634 (=> (not res!2822857) (not e!4166351))))

(assert (=> b!6922634 (= res!2822857 (matchR!9058 r2!6280 (_2!37079 (get!23319 lt!2470724))))))

(declare-fun b!6922635 () Bool)

(declare-fun e!4166352 () Option!16688)

(assert (=> b!6922635 (= e!4166353 e!4166352)))

(declare-fun c!1285211 () Bool)

(assert (=> b!6922635 (= c!1285211 ((_ is Nil!66548) (_1!37079 lt!2470615)))))

(declare-fun b!6922636 () Bool)

(declare-fun res!2822859 () Bool)

(assert (=> b!6922636 (=> (not res!2822859) (not e!4166351))))

(assert (=> b!6922636 (= res!2822859 (matchR!9058 r1!6342 (_1!37079 (get!23319 lt!2470724))))))

(declare-fun b!6922637 () Bool)

(declare-fun lt!2470722 () Unit!160562)

(declare-fun lt!2470723 () Unit!160562)

(assert (=> b!6922637 (= lt!2470722 lt!2470723)))

(assert (=> b!6922637 (= (++!14962 (++!14962 Nil!66548 (Cons!66548 (h!72996 (_1!37079 lt!2470615)) Nil!66548)) (t!380415 (_1!37079 lt!2470615))) (_1!37079 lt!2470615))))

(assert (=> b!6922637 (= lt!2470723 (lemmaMoveElementToOtherListKeepsConcatEq!2828 Nil!66548 (h!72996 (_1!37079 lt!2470615)) (t!380415 (_1!37079 lt!2470615)) (_1!37079 lt!2470615)))))

(assert (=> b!6922637 (= e!4166352 (findConcatSeparation!3102 r1!6342 r2!6280 (++!14962 Nil!66548 (Cons!66548 (h!72996 (_1!37079 lt!2470615)) Nil!66548)) (t!380415 (_1!37079 lt!2470615)) (_1!37079 lt!2470615)))))

(declare-fun b!6922638 () Bool)

(assert (=> b!6922638 (= e!4166355 (matchR!9058 r2!6280 (_1!37079 lt!2470615)))))

(declare-fun b!6922639 () Bool)

(assert (=> b!6922639 (= e!4166352 None!16687)))

(declare-fun b!6922640 () Bool)

(assert (=> b!6922640 (= e!4166353 (Some!16687 (tuple2!67553 Nil!66548 (_1!37079 lt!2470615))))))

(assert (= (and d!2164815 res!2822860) b!6922638))

(assert (= (and d!2164815 c!1285212) b!6922640))

(assert (= (and d!2164815 (not c!1285212)) b!6922635))

(assert (= (and b!6922635 c!1285211) b!6922639))

(assert (= (and b!6922635 (not c!1285211)) b!6922637))

(assert (= (and d!2164815 res!2822858) b!6922636))

(assert (= (and b!6922636 res!2822859) b!6922634))

(assert (= (and b!6922634 res!2822857) b!6922632))

(assert (= (and d!2164815 (not res!2822856)) b!6922633))

(declare-fun m!7632132 () Bool)

(assert (=> b!6922637 m!7632132))

(assert (=> b!6922637 m!7632132))

(declare-fun m!7632134 () Bool)

(assert (=> b!6922637 m!7632134))

(declare-fun m!7632136 () Bool)

(assert (=> b!6922637 m!7632136))

(assert (=> b!6922637 m!7632132))

(declare-fun m!7632138 () Bool)

(assert (=> b!6922637 m!7632138))

(declare-fun m!7632140 () Bool)

(assert (=> b!6922638 m!7632140))

(declare-fun m!7632142 () Bool)

(assert (=> b!6922633 m!7632142))

(declare-fun m!7632144 () Bool)

(assert (=> b!6922632 m!7632144))

(declare-fun m!7632146 () Bool)

(assert (=> b!6922632 m!7632146))

(assert (=> b!6922634 m!7632144))

(declare-fun m!7632148 () Bool)

(assert (=> b!6922634 m!7632148))

(assert (=> d!2164815 m!7632142))

(declare-fun m!7632150 () Bool)

(assert (=> d!2164815 m!7632150))

(assert (=> d!2164815 m!7631536))

(assert (=> b!6922636 m!7632144))

(declare-fun m!7632152 () Bool)

(assert (=> b!6922636 m!7632152))

(assert (=> b!6921876 d!2164815))

(declare-fun d!2164817 () Bool)

(assert (=> d!2164817 (= (isDefined!13391 lt!2470610) (not (isEmpty!38802 lt!2470610)))))

(declare-fun bs!1847543 () Bool)

(assert (= bs!1847543 d!2164817))

(declare-fun m!7632154 () Bool)

(assert (=> bs!1847543 m!7632154))

(assert (=> b!6921876 d!2164817))

(declare-fun d!2164819 () Bool)

(assert (=> d!2164819 (= (Exists!3921 lambda!393528) (choose!51535 lambda!393528))))

(declare-fun bs!1847544 () Bool)

(assert (= bs!1847544 d!2164819))

(declare-fun m!7632156 () Bool)

(assert (=> bs!1847544 m!7632156))

(assert (=> b!6921876 d!2164819))

(declare-fun b!6922641 () Bool)

(declare-fun e!4166359 () Bool)

(declare-fun e!4166357 () Bool)

(assert (=> b!6922641 (= e!4166359 e!4166357)))

(declare-fun res!2822866 () Bool)

(assert (=> b!6922641 (=> (not res!2822866) (not e!4166357))))

(declare-fun lt!2470725 () Bool)

(assert (=> b!6922641 (= res!2822866 (not lt!2470725))))

(declare-fun b!6922642 () Bool)

(declare-fun res!2822864 () Bool)

(declare-fun e!4166362 () Bool)

(assert (=> b!6922642 (=> res!2822864 e!4166362)))

(assert (=> b!6922642 (= res!2822864 (not (isEmpty!38801 (tail!12930 (_1!37079 lt!2470595)))))))

(declare-fun b!6922643 () Bool)

(assert (=> b!6922643 (= e!4166357 e!4166362)))

(declare-fun res!2822868 () Bool)

(assert (=> b!6922643 (=> res!2822868 e!4166362)))

(declare-fun call!629247 () Bool)

(assert (=> b!6922643 (= res!2822868 call!629247)))

(declare-fun b!6922644 () Bool)

(declare-fun e!4166356 () Bool)

(assert (=> b!6922644 (= e!4166356 (= lt!2470725 call!629247))))

(declare-fun b!6922645 () Bool)

(declare-fun res!2822865 () Bool)

(assert (=> b!6922645 (=> res!2822865 e!4166359)))

(declare-fun e!4166358 () Bool)

(assert (=> b!6922645 (= res!2822865 e!4166358)))

(declare-fun res!2822863 () Bool)

(assert (=> b!6922645 (=> (not res!2822863) (not e!4166358))))

(assert (=> b!6922645 (= res!2822863 lt!2470725)))

(declare-fun b!6922646 () Bool)

(declare-fun e!4166361 () Bool)

(assert (=> b!6922646 (= e!4166361 (matchR!9058 (derivativeStep!5425 r1!6342 (head!13878 (_1!37079 lt!2470595))) (tail!12930 (_1!37079 lt!2470595))))))

(declare-fun bm!629242 () Bool)

(assert (=> bm!629242 (= call!629247 (isEmpty!38801 (_1!37079 lt!2470595)))))

(declare-fun b!6922647 () Bool)

(declare-fun e!4166360 () Bool)

(assert (=> b!6922647 (= e!4166356 e!4166360)))

(declare-fun c!1285214 () Bool)

(assert (=> b!6922647 (= c!1285214 ((_ is EmptyLang!16919) r1!6342))))

(declare-fun b!6922648 () Bool)

(assert (=> b!6922648 (= e!4166358 (= (head!13878 (_1!37079 lt!2470595)) (c!1285051 r1!6342)))))

(declare-fun b!6922649 () Bool)

(assert (=> b!6922649 (= e!4166361 (nullable!6750 r1!6342))))

(declare-fun b!6922651 () Bool)

(assert (=> b!6922651 (= e!4166362 (not (= (head!13878 (_1!37079 lt!2470595)) (c!1285051 r1!6342))))))

(declare-fun b!6922652 () Bool)

(declare-fun res!2822862 () Bool)

(assert (=> b!6922652 (=> res!2822862 e!4166359)))

(assert (=> b!6922652 (= res!2822862 (not ((_ is ElementMatch!16919) r1!6342)))))

(assert (=> b!6922652 (= e!4166360 e!4166359)))

(declare-fun b!6922653 () Bool)

(assert (=> b!6922653 (= e!4166360 (not lt!2470725))))

(declare-fun b!6922654 () Bool)

(declare-fun res!2822867 () Bool)

(assert (=> b!6922654 (=> (not res!2822867) (not e!4166358))))

(assert (=> b!6922654 (= res!2822867 (isEmpty!38801 (tail!12930 (_1!37079 lt!2470595))))))

(declare-fun b!6922650 () Bool)

(declare-fun res!2822861 () Bool)

(assert (=> b!6922650 (=> (not res!2822861) (not e!4166358))))

(assert (=> b!6922650 (= res!2822861 (not call!629247))))

(declare-fun d!2164821 () Bool)

(assert (=> d!2164821 e!4166356))

(declare-fun c!1285215 () Bool)

(assert (=> d!2164821 (= c!1285215 ((_ is EmptyExpr!16919) r1!6342))))

(assert (=> d!2164821 (= lt!2470725 e!4166361)))

(declare-fun c!1285213 () Bool)

(assert (=> d!2164821 (= c!1285213 (isEmpty!38801 (_1!37079 lt!2470595)))))

(assert (=> d!2164821 (validRegex!8625 r1!6342)))

(assert (=> d!2164821 (= (matchR!9058 r1!6342 (_1!37079 lt!2470595)) lt!2470725)))

(assert (= (and d!2164821 c!1285213) b!6922649))

(assert (= (and d!2164821 (not c!1285213)) b!6922646))

(assert (= (and d!2164821 c!1285215) b!6922644))

(assert (= (and d!2164821 (not c!1285215)) b!6922647))

(assert (= (and b!6922647 c!1285214) b!6922653))

(assert (= (and b!6922647 (not c!1285214)) b!6922652))

(assert (= (and b!6922652 (not res!2822862)) b!6922645))

(assert (= (and b!6922645 res!2822863) b!6922650))

(assert (= (and b!6922650 res!2822861) b!6922654))

(assert (= (and b!6922654 res!2822867) b!6922648))

(assert (= (and b!6922645 (not res!2822865)) b!6922641))

(assert (= (and b!6922641 res!2822866) b!6922643))

(assert (= (and b!6922643 (not res!2822868)) b!6922642))

(assert (= (and b!6922642 (not res!2822864)) b!6922651))

(assert (= (or b!6922644 b!6922643 b!6922650) bm!629242))

(declare-fun m!7632158 () Bool)

(assert (=> b!6922642 m!7632158))

(assert (=> b!6922642 m!7632158))

(declare-fun m!7632160 () Bool)

(assert (=> b!6922642 m!7632160))

(declare-fun m!7632162 () Bool)

(assert (=> b!6922646 m!7632162))

(assert (=> b!6922646 m!7632162))

(declare-fun m!7632164 () Bool)

(assert (=> b!6922646 m!7632164))

(assert (=> b!6922646 m!7632158))

(assert (=> b!6922646 m!7632164))

(assert (=> b!6922646 m!7632158))

(declare-fun m!7632166 () Bool)

(assert (=> b!6922646 m!7632166))

(declare-fun m!7632168 () Bool)

(assert (=> d!2164821 m!7632168))

(assert (=> d!2164821 m!7631536))

(assert (=> b!6922648 m!7632162))

(declare-fun m!7632170 () Bool)

(assert (=> b!6922649 m!7632170))

(assert (=> b!6922651 m!7632162))

(assert (=> bm!629242 m!7632168))

(assert (=> b!6922654 m!7632158))

(assert (=> b!6922654 m!7632158))

(assert (=> b!6922654 m!7632160))

(assert (=> b!6921876 d!2164821))

(declare-fun bs!1847545 () Bool)

(declare-fun d!2164823 () Bool)

(assert (= bs!1847545 (and d!2164823 b!6922571)))

(declare-fun lambda!393586 () Int)

(assert (=> bs!1847545 (not (= lambda!393586 lambda!393581))))

(declare-fun bs!1847546 () Bool)

(assert (= bs!1847546 (and d!2164823 d!2164683)))

(assert (=> bs!1847546 (= (and (= (_1!37079 lt!2470615) s!14361) (= r1!6342 lt!2470609) (= r2!6280 r3!135)) (= lambda!393586 lambda!393563))))

(declare-fun bs!1847547 () Bool)

(assert (= bs!1847547 (and d!2164823 d!2164793)))

(assert (=> bs!1847547 (not (= lambda!393586 lambda!393584))))

(declare-fun bs!1847548 () Bool)

(assert (= bs!1847548 (and d!2164823 d!2164679)))

(assert (=> bs!1847548 (= (and (= (_1!37079 lt!2470615) s!14361) (= r1!6342 lt!2470609) (= r2!6280 r3!135)) (= lambda!393586 lambda!393555))))

(declare-fun bs!1847549 () Bool)

(assert (= bs!1847549 (and d!2164823 b!6921975)))

(assert (=> bs!1847549 (not (= lambda!393586 lambda!393535))))

(declare-fun bs!1847550 () Bool)

(assert (= bs!1847550 (and d!2164823 b!6921876)))

(assert (=> bs!1847550 (= lambda!393586 lambda!393527)))

(declare-fun bs!1847551 () Bool)

(assert (= bs!1847551 (and d!2164823 b!6921971)))

(assert (=> bs!1847551 (not (= lambda!393586 lambda!393536))))

(declare-fun bs!1847552 () Bool)

(assert (= bs!1847552 (and d!2164823 b!6922436)))

(assert (=> bs!1847552 (not (= lambda!393586 lambda!393579))))

(declare-fun bs!1847553 () Bool)

(assert (= bs!1847553 (and d!2164823 b!6921879)))

(assert (=> bs!1847553 (= (and (= (_1!37079 lt!2470615) s!14361) (= r1!6342 lt!2470609) (= r2!6280 r3!135)) (= lambda!393586 lambda!393525))))

(declare-fun bs!1847554 () Bool)

(assert (= bs!1847554 (and d!2164823 b!6922400)))

(assert (=> bs!1847554 (not (= lambda!393586 lambda!393575))))

(declare-fun bs!1847555 () Bool)

(assert (= bs!1847555 (and d!2164823 d!2164797)))

(assert (=> bs!1847555 (= (and (= (_1!37079 lt!2470615) lt!2470600) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393586 lambda!393585))))

(assert (=> bs!1847550 (not (= lambda!393586 lambda!393528))))

(declare-fun bs!1847556 () Bool)

(assert (= bs!1847556 (and d!2164823 b!6922396)))

(assert (=> bs!1847556 (not (= lambda!393586 lambda!393577))))

(assert (=> bs!1847547 (= (and (= (_1!37079 lt!2470615) lt!2470600) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393586 lambda!393583))))

(assert (=> bs!1847553 (not (= lambda!393586 lambda!393526))))

(declare-fun bs!1847557 () Bool)

(assert (= bs!1847557 (and d!2164823 b!6921870)))

(assert (=> bs!1847557 (= (and (= (_1!37079 lt!2470615) lt!2470600) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393586 lambda!393529))))

(assert (=> bs!1847546 (not (= lambda!393586 lambda!393564))))

(assert (=> bs!1847557 (not (= lambda!393586 lambda!393530))))

(declare-fun bs!1847558 () Bool)

(assert (= bs!1847558 (and d!2164823 b!6922432)))

(assert (=> bs!1847558 (not (= lambda!393586 lambda!393580))))

(declare-fun bs!1847559 () Bool)

(assert (= bs!1847559 (and d!2164823 b!6922567)))

(assert (=> bs!1847559 (not (= lambda!393586 lambda!393582))))

(assert (=> d!2164823 true))

(assert (=> d!2164823 true))

(assert (=> d!2164823 true))

(assert (=> d!2164823 (= (isDefined!13391 (findConcatSeparation!3102 r1!6342 r2!6280 Nil!66548 (_1!37079 lt!2470615) (_1!37079 lt!2470615))) (Exists!3921 lambda!393586))))

(declare-fun lt!2470726 () Unit!160562)

(assert (=> d!2164823 (= lt!2470726 (choose!51537 r1!6342 r2!6280 (_1!37079 lt!2470615)))))

(assert (=> d!2164823 (validRegex!8625 r1!6342)))

(assert (=> d!2164823 (= (lemmaFindConcatSeparationEquivalentToExists!2864 r1!6342 r2!6280 (_1!37079 lt!2470615)) lt!2470726)))

(declare-fun bs!1847560 () Bool)

(assert (= bs!1847560 d!2164823))

(declare-fun m!7632172 () Bool)

(assert (=> bs!1847560 m!7632172))

(assert (=> bs!1847560 m!7631512))

(declare-fun m!7632174 () Bool)

(assert (=> bs!1847560 m!7632174))

(assert (=> bs!1847560 m!7631512))

(declare-fun m!7632176 () Bool)

(assert (=> bs!1847560 m!7632176))

(assert (=> bs!1847560 m!7631536))

(assert (=> b!6921876 d!2164823))

(declare-fun bs!1847561 () Bool)

(declare-fun d!2164825 () Bool)

(assert (= bs!1847561 (and d!2164825 b!6922571)))

(declare-fun lambda!393587 () Int)

(assert (=> bs!1847561 (not (= lambda!393587 lambda!393581))))

(declare-fun bs!1847562 () Bool)

(assert (= bs!1847562 (and d!2164825 d!2164683)))

(assert (=> bs!1847562 (= (and (= (_1!37079 lt!2470615) s!14361) (= r1!6342 lt!2470609) (= r2!6280 r3!135)) (= lambda!393587 lambda!393563))))

(declare-fun bs!1847563 () Bool)

(assert (= bs!1847563 (and d!2164825 d!2164793)))

(assert (=> bs!1847563 (not (= lambda!393587 lambda!393584))))

(declare-fun bs!1847564 () Bool)

(assert (= bs!1847564 (and d!2164825 d!2164679)))

(assert (=> bs!1847564 (= (and (= (_1!37079 lt!2470615) s!14361) (= r1!6342 lt!2470609) (= r2!6280 r3!135)) (= lambda!393587 lambda!393555))))

(declare-fun bs!1847565 () Bool)

(assert (= bs!1847565 (and d!2164825 b!6921975)))

(assert (=> bs!1847565 (not (= lambda!393587 lambda!393535))))

(declare-fun bs!1847566 () Bool)

(assert (= bs!1847566 (and d!2164825 b!6921876)))

(assert (=> bs!1847566 (= lambda!393587 lambda!393527)))

(declare-fun bs!1847567 () Bool)

(assert (= bs!1847567 (and d!2164825 b!6921971)))

(assert (=> bs!1847567 (not (= lambda!393587 lambda!393536))))

(declare-fun bs!1847568 () Bool)

(assert (= bs!1847568 (and d!2164825 b!6922436)))

(assert (=> bs!1847568 (not (= lambda!393587 lambda!393579))))

(declare-fun bs!1847569 () Bool)

(assert (= bs!1847569 (and d!2164825 b!6921879)))

(assert (=> bs!1847569 (= (and (= (_1!37079 lt!2470615) s!14361) (= r1!6342 lt!2470609) (= r2!6280 r3!135)) (= lambda!393587 lambda!393525))))

(declare-fun bs!1847570 () Bool)

(assert (= bs!1847570 (and d!2164825 b!6922400)))

(assert (=> bs!1847570 (not (= lambda!393587 lambda!393575))))

(declare-fun bs!1847571 () Bool)

(assert (= bs!1847571 (and d!2164825 d!2164797)))

(assert (=> bs!1847571 (= (and (= (_1!37079 lt!2470615) lt!2470600) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393587 lambda!393585))))

(assert (=> bs!1847566 (not (= lambda!393587 lambda!393528))))

(declare-fun bs!1847572 () Bool)

(assert (= bs!1847572 (and d!2164825 b!6922396)))

(assert (=> bs!1847572 (not (= lambda!393587 lambda!393577))))

(assert (=> bs!1847563 (= (and (= (_1!37079 lt!2470615) lt!2470600) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393587 lambda!393583))))

(assert (=> bs!1847569 (not (= lambda!393587 lambda!393526))))

(declare-fun bs!1847573 () Bool)

(assert (= bs!1847573 (and d!2164825 b!6921870)))

(assert (=> bs!1847573 (= (and (= (_1!37079 lt!2470615) lt!2470600) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393587 lambda!393529))))

(assert (=> bs!1847562 (not (= lambda!393587 lambda!393564))))

(assert (=> bs!1847573 (not (= lambda!393587 lambda!393530))))

(declare-fun bs!1847574 () Bool)

(assert (= bs!1847574 (and d!2164825 b!6922432)))

(assert (=> bs!1847574 (not (= lambda!393587 lambda!393580))))

(declare-fun bs!1847575 () Bool)

(assert (= bs!1847575 (and d!2164825 d!2164823)))

(assert (=> bs!1847575 (= lambda!393587 lambda!393586)))

(declare-fun bs!1847576 () Bool)

(assert (= bs!1847576 (and d!2164825 b!6922567)))

(assert (=> bs!1847576 (not (= lambda!393587 lambda!393582))))

(assert (=> d!2164825 true))

(assert (=> d!2164825 true))

(assert (=> d!2164825 true))

(declare-fun lambda!393588 () Int)

(assert (=> bs!1847561 (not (= lambda!393588 lambda!393581))))

(assert (=> bs!1847562 (not (= lambda!393588 lambda!393563))))

(assert (=> bs!1847564 (not (= lambda!393588 lambda!393555))))

(assert (=> bs!1847565 (not (= lambda!393588 lambda!393535))))

(assert (=> bs!1847566 (not (= lambda!393588 lambda!393527))))

(assert (=> bs!1847567 (= (and (= r1!6342 (regOne!34350 lt!2470609)) (= r2!6280 (regTwo!34350 lt!2470609))) (= lambda!393588 lambda!393536))))

(assert (=> bs!1847568 (not (= lambda!393588 lambda!393579))))

(assert (=> bs!1847569 (not (= lambda!393588 lambda!393525))))

(assert (=> bs!1847570 (not (= lambda!393588 lambda!393575))))

(assert (=> bs!1847571 (not (= lambda!393588 lambda!393585))))

(assert (=> bs!1847566 (= lambda!393588 lambda!393528)))

(assert (=> bs!1847572 (= (and (= (_1!37079 lt!2470615) s!14361) (= r1!6342 (regOne!34350 lt!2470598)) (= r2!6280 (regTwo!34350 lt!2470598))) (= lambda!393588 lambda!393577))))

(assert (=> bs!1847563 (not (= lambda!393588 lambda!393583))))

(declare-fun bs!1847577 () Bool)

(assert (= bs!1847577 d!2164825))

(assert (=> bs!1847577 (not (= lambda!393588 lambda!393587))))

(assert (=> bs!1847563 (= (and (= (_1!37079 lt!2470615) lt!2470600) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393588 lambda!393584))))

(assert (=> bs!1847569 (= (and (= (_1!37079 lt!2470615) s!14361) (= r1!6342 lt!2470609) (= r2!6280 r3!135)) (= lambda!393588 lambda!393526))))

(assert (=> bs!1847573 (not (= lambda!393588 lambda!393529))))

(assert (=> bs!1847562 (= (and (= (_1!37079 lt!2470615) s!14361) (= r1!6342 lt!2470609) (= r2!6280 r3!135)) (= lambda!393588 lambda!393564))))

(assert (=> bs!1847573 (= (and (= (_1!37079 lt!2470615) lt!2470600) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!393588 lambda!393530))))

(assert (=> bs!1847574 (= (and (= (_1!37079 lt!2470615) s!14361) (= r1!6342 (regOne!34350 lt!2470607)) (= r2!6280 (regTwo!34350 lt!2470607))) (= lambda!393588 lambda!393580))))

(assert (=> bs!1847575 (not (= lambda!393588 lambda!393586))))

(assert (=> bs!1847576 (= (and (= (_1!37079 lt!2470615) lt!2470600) (= r1!6342 (regOne!34350 lt!2470596)) (= r2!6280 (regTwo!34350 lt!2470596))) (= lambda!393588 lambda!393582))))

(assert (=> d!2164825 true))

(assert (=> d!2164825 true))

(assert (=> d!2164825 true))

(assert (=> d!2164825 (= (Exists!3921 lambda!393587) (Exists!3921 lambda!393588))))

(declare-fun lt!2470727 () Unit!160562)

(assert (=> d!2164825 (= lt!2470727 (choose!51538 r1!6342 r2!6280 (_1!37079 lt!2470615)))))

(assert (=> d!2164825 (validRegex!8625 r1!6342)))

(assert (=> d!2164825 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2388 r1!6342 r2!6280 (_1!37079 lt!2470615)) lt!2470727)))

(declare-fun m!7632178 () Bool)

(assert (=> bs!1847577 m!7632178))

(declare-fun m!7632180 () Bool)

(assert (=> bs!1847577 m!7632180))

(declare-fun m!7632182 () Bool)

(assert (=> bs!1847577 m!7632182))

(assert (=> bs!1847577 m!7631536))

(assert (=> b!6921876 d!2164825))

(declare-fun bs!1847578 () Bool)

(declare-fun b!6922664 () Bool)

(assert (= bs!1847578 (and b!6922664 b!6922571)))

(declare-fun lambda!393589 () Int)

(assert (=> bs!1847578 (= (and (= (_1!37079 lt!2470595) lt!2470600) (= (reg!17248 r1!6342) (reg!17248 lt!2470596)) (= r1!6342 lt!2470596)) (= lambda!393589 lambda!393581))))

(declare-fun bs!1847579 () Bool)

(assert (= bs!1847579 (and b!6922664 d!2164825)))

(assert (=> bs!1847579 (not (= lambda!393589 lambda!393588))))

(declare-fun bs!1847580 () Bool)

(assert (= bs!1847580 (and b!6922664 d!2164683)))

(assert (=> bs!1847580 (not (= lambda!393589 lambda!393563))))

(declare-fun bs!1847581 () Bool)

(assert (= bs!1847581 (and b!6922664 d!2164679)))

(assert (=> bs!1847581 (not (= lambda!393589 lambda!393555))))

(declare-fun bs!1847582 () Bool)

(assert (= bs!1847582 (and b!6922664 b!6921975)))

(assert (=> bs!1847582 (= (and (= (_1!37079 lt!2470595) (_1!37079 lt!2470615)) (= (reg!17248 r1!6342) (reg!17248 lt!2470609)) (= r1!6342 lt!2470609)) (= lambda!393589 lambda!393535))))

(declare-fun bs!1847583 () Bool)

(assert (= bs!1847583 (and b!6922664 b!6921876)))

(assert (=> bs!1847583 (not (= lambda!393589 lambda!393527))))

(declare-fun bs!1847584 () Bool)

(assert (= bs!1847584 (and b!6922664 b!6921971)))

(assert (=> bs!1847584 (not (= lambda!393589 lambda!393536))))

(declare-fun bs!1847585 () Bool)

(assert (= bs!1847585 (and b!6922664 b!6922436)))

(assert (=> bs!1847585 (= (and (= (_1!37079 lt!2470595) s!14361) (= (reg!17248 r1!6342) (reg!17248 lt!2470607)) (= r1!6342 lt!2470607)) (= lambda!393589 lambda!393579))))

(declare-fun bs!1847586 () Bool)

(assert (= bs!1847586 (and b!6922664 b!6921879)))

(assert (=> bs!1847586 (not (= lambda!393589 lambda!393525))))

(declare-fun bs!1847587 () Bool)

(assert (= bs!1847587 (and b!6922664 b!6922400)))

(assert (=> bs!1847587 (= (and (= (_1!37079 lt!2470595) s!14361) (= (reg!17248 r1!6342) (reg!17248 lt!2470598)) (= r1!6342 lt!2470598)) (= lambda!393589 lambda!393575))))

(declare-fun bs!1847588 () Bool)

(assert (= bs!1847588 (and b!6922664 d!2164797)))

(assert (=> bs!1847588 (not (= lambda!393589 lambda!393585))))

(assert (=> bs!1847583 (not (= lambda!393589 lambda!393528))))

(declare-fun bs!1847589 () Bool)

(assert (= bs!1847589 (and b!6922664 b!6922396)))

(assert (=> bs!1847589 (not (= lambda!393589 lambda!393577))))

(declare-fun bs!1847590 () Bool)

(assert (= bs!1847590 (and b!6922664 d!2164793)))

(assert (=> bs!1847590 (not (= lambda!393589 lambda!393583))))

(assert (=> bs!1847579 (not (= lambda!393589 lambda!393587))))

(assert (=> bs!1847590 (not (= lambda!393589 lambda!393584))))

(assert (=> bs!1847586 (not (= lambda!393589 lambda!393526))))

(declare-fun bs!1847591 () Bool)

(assert (= bs!1847591 (and b!6922664 b!6921870)))

(assert (=> bs!1847591 (not (= lambda!393589 lambda!393529))))

(assert (=> bs!1847580 (not (= lambda!393589 lambda!393564))))

(assert (=> bs!1847591 (not (= lambda!393589 lambda!393530))))

(declare-fun bs!1847592 () Bool)

(assert (= bs!1847592 (and b!6922664 b!6922432)))

(assert (=> bs!1847592 (not (= lambda!393589 lambda!393580))))

(declare-fun bs!1847593 () Bool)

(assert (= bs!1847593 (and b!6922664 d!2164823)))

(assert (=> bs!1847593 (not (= lambda!393589 lambda!393586))))

(declare-fun bs!1847594 () Bool)

(assert (= bs!1847594 (and b!6922664 b!6922567)))

(assert (=> bs!1847594 (not (= lambda!393589 lambda!393582))))

(assert (=> b!6922664 true))

(assert (=> b!6922664 true))

(declare-fun bs!1847595 () Bool)

(declare-fun b!6922660 () Bool)

(assert (= bs!1847595 (and b!6922660 b!6922571)))

(declare-fun lambda!393590 () Int)

(assert (=> bs!1847595 (not (= lambda!393590 lambda!393581))))

(declare-fun bs!1847596 () Bool)

(assert (= bs!1847596 (and b!6922660 d!2164825)))

(assert (=> bs!1847596 (= (and (= (_1!37079 lt!2470595) (_1!37079 lt!2470615)) (= (regOne!34350 r1!6342) r1!6342) (= (regTwo!34350 r1!6342) r2!6280)) (= lambda!393590 lambda!393588))))

(declare-fun bs!1847597 () Bool)

(assert (= bs!1847597 (and b!6922660 d!2164683)))

(assert (=> bs!1847597 (not (= lambda!393590 lambda!393563))))

(declare-fun bs!1847598 () Bool)

(assert (= bs!1847598 (and b!6922660 d!2164679)))

(assert (=> bs!1847598 (not (= lambda!393590 lambda!393555))))

(declare-fun bs!1847599 () Bool)

(assert (= bs!1847599 (and b!6922660 b!6921975)))

(assert (=> bs!1847599 (not (= lambda!393590 lambda!393535))))

(declare-fun bs!1847600 () Bool)

(assert (= bs!1847600 (and b!6922660 b!6921876)))

(assert (=> bs!1847600 (not (= lambda!393590 lambda!393527))))

(declare-fun bs!1847601 () Bool)

(assert (= bs!1847601 (and b!6922660 b!6921971)))

(assert (=> bs!1847601 (= (and (= (_1!37079 lt!2470595) (_1!37079 lt!2470615)) (= (regOne!34350 r1!6342) (regOne!34350 lt!2470609)) (= (regTwo!34350 r1!6342) (regTwo!34350 lt!2470609))) (= lambda!393590 lambda!393536))))

(declare-fun bs!1847602 () Bool)

(assert (= bs!1847602 (and b!6922660 b!6922436)))

(assert (=> bs!1847602 (not (= lambda!393590 lambda!393579))))

(declare-fun bs!1847603 () Bool)

(assert (= bs!1847603 (and b!6922660 b!6921879)))

(assert (=> bs!1847603 (not (= lambda!393590 lambda!393525))))

(declare-fun bs!1847604 () Bool)

(assert (= bs!1847604 (and b!6922660 b!6922400)))

(assert (=> bs!1847604 (not (= lambda!393590 lambda!393575))))

(declare-fun bs!1847605 () Bool)

(assert (= bs!1847605 (and b!6922660 d!2164797)))

(assert (=> bs!1847605 (not (= lambda!393590 lambda!393585))))

(assert (=> bs!1847600 (= (and (= (_1!37079 lt!2470595) (_1!37079 lt!2470615)) (= (regOne!34350 r1!6342) r1!6342) (= (regTwo!34350 r1!6342) r2!6280)) (= lambda!393590 lambda!393528))))

(declare-fun bs!1847606 () Bool)

(assert (= bs!1847606 (and b!6922660 b!6922396)))

(assert (=> bs!1847606 (= (and (= (_1!37079 lt!2470595) s!14361) (= (regOne!34350 r1!6342) (regOne!34350 lt!2470598)) (= (regTwo!34350 r1!6342) (regTwo!34350 lt!2470598))) (= lambda!393590 lambda!393577))))

(declare-fun bs!1847607 () Bool)

(assert (= bs!1847607 (and b!6922660 d!2164793)))

(assert (=> bs!1847607 (not (= lambda!393590 lambda!393583))))

(assert (=> bs!1847596 (not (= lambda!393590 lambda!393587))))

(assert (=> bs!1847607 (= (and (= (_1!37079 lt!2470595) lt!2470600) (= (regOne!34350 r1!6342) r2!6280) (= (regTwo!34350 r1!6342) r3!135)) (= lambda!393590 lambda!393584))))

(assert (=> bs!1847603 (= (and (= (_1!37079 lt!2470595) s!14361) (= (regOne!34350 r1!6342) lt!2470609) (= (regTwo!34350 r1!6342) r3!135)) (= lambda!393590 lambda!393526))))

(declare-fun bs!1847608 () Bool)

(assert (= bs!1847608 (and b!6922660 b!6922664)))

(assert (=> bs!1847608 (not (= lambda!393590 lambda!393589))))

(declare-fun bs!1847609 () Bool)

(assert (= bs!1847609 (and b!6922660 b!6921870)))

(assert (=> bs!1847609 (not (= lambda!393590 lambda!393529))))

(assert (=> bs!1847597 (= (and (= (_1!37079 lt!2470595) s!14361) (= (regOne!34350 r1!6342) lt!2470609) (= (regTwo!34350 r1!6342) r3!135)) (= lambda!393590 lambda!393564))))

(assert (=> bs!1847609 (= (and (= (_1!37079 lt!2470595) lt!2470600) (= (regOne!34350 r1!6342) r2!6280) (= (regTwo!34350 r1!6342) r3!135)) (= lambda!393590 lambda!393530))))

(declare-fun bs!1847610 () Bool)

(assert (= bs!1847610 (and b!6922660 b!6922432)))

(assert (=> bs!1847610 (= (and (= (_1!37079 lt!2470595) s!14361) (= (regOne!34350 r1!6342) (regOne!34350 lt!2470607)) (= (regTwo!34350 r1!6342) (regTwo!34350 lt!2470607))) (= lambda!393590 lambda!393580))))

(declare-fun bs!1847611 () Bool)

(assert (= bs!1847611 (and b!6922660 d!2164823)))

(assert (=> bs!1847611 (not (= lambda!393590 lambda!393586))))

(declare-fun bs!1847612 () Bool)

(assert (= bs!1847612 (and b!6922660 b!6922567)))

(assert (=> bs!1847612 (= (and (= (_1!37079 lt!2470595) lt!2470600) (= (regOne!34350 r1!6342) (regOne!34350 lt!2470596)) (= (regTwo!34350 r1!6342) (regTwo!34350 lt!2470596))) (= lambda!393590 lambda!393582))))

(assert (=> b!6922660 true))

(assert (=> b!6922660 true))

(declare-fun b!6922655 () Bool)

(declare-fun c!1285217 () Bool)

(assert (=> b!6922655 (= c!1285217 ((_ is Union!16919) r1!6342))))

(declare-fun e!4166367 () Bool)

(declare-fun e!4166368 () Bool)

(assert (=> b!6922655 (= e!4166367 e!4166368)))

(declare-fun call!629249 () Bool)

(declare-fun c!1285219 () Bool)

(declare-fun bm!629243 () Bool)

(assert (=> bm!629243 (= call!629249 (Exists!3921 (ite c!1285219 lambda!393589 lambda!393590)))))

(declare-fun d!2164827 () Bool)

(declare-fun c!1285218 () Bool)

(assert (=> d!2164827 (= c!1285218 ((_ is EmptyExpr!16919) r1!6342))))

(declare-fun e!4166365 () Bool)

(assert (=> d!2164827 (= (matchRSpec!3976 r1!6342 (_1!37079 lt!2470595)) e!4166365)))

(declare-fun b!6922656 () Bool)

(declare-fun e!4166366 () Bool)

(assert (=> b!6922656 (= e!4166368 e!4166366)))

(declare-fun res!2822869 () Bool)

(assert (=> b!6922656 (= res!2822869 (matchRSpec!3976 (regOne!34351 r1!6342) (_1!37079 lt!2470595)))))

(assert (=> b!6922656 (=> res!2822869 e!4166366)))

(declare-fun b!6922657 () Bool)

(declare-fun e!4166369 () Bool)

(assert (=> b!6922657 (= e!4166365 e!4166369)))

(declare-fun res!2822870 () Bool)

(assert (=> b!6922657 (= res!2822870 (not ((_ is EmptyLang!16919) r1!6342)))))

(assert (=> b!6922657 (=> (not res!2822870) (not e!4166369))))

(declare-fun b!6922658 () Bool)

(declare-fun c!1285216 () Bool)

(assert (=> b!6922658 (= c!1285216 ((_ is ElementMatch!16919) r1!6342))))

(assert (=> b!6922658 (= e!4166369 e!4166367)))

(declare-fun b!6922659 () Bool)

(assert (=> b!6922659 (= e!4166367 (= (_1!37079 lt!2470595) (Cons!66548 (c!1285051 r1!6342) Nil!66548)))))

(declare-fun bm!629244 () Bool)

(declare-fun call!629248 () Bool)

(assert (=> bm!629244 (= call!629248 (isEmpty!38801 (_1!37079 lt!2470595)))))

(declare-fun e!4166363 () Bool)

(assert (=> b!6922660 (= e!4166363 call!629249)))

(declare-fun b!6922661 () Bool)

(assert (=> b!6922661 (= e!4166368 e!4166363)))

(assert (=> b!6922661 (= c!1285219 ((_ is Star!16919) r1!6342))))

(declare-fun b!6922662 () Bool)

(declare-fun res!2822871 () Bool)

(declare-fun e!4166364 () Bool)

(assert (=> b!6922662 (=> res!2822871 e!4166364)))

(assert (=> b!6922662 (= res!2822871 call!629248)))

(assert (=> b!6922662 (= e!4166363 e!4166364)))

(declare-fun b!6922663 () Bool)

(assert (=> b!6922663 (= e!4166366 (matchRSpec!3976 (regTwo!34351 r1!6342) (_1!37079 lt!2470595)))))

(assert (=> b!6922664 (= e!4166364 call!629249)))

(declare-fun b!6922665 () Bool)

(assert (=> b!6922665 (= e!4166365 call!629248)))

(assert (= (and d!2164827 c!1285218) b!6922665))

(assert (= (and d!2164827 (not c!1285218)) b!6922657))

(assert (= (and b!6922657 res!2822870) b!6922658))

(assert (= (and b!6922658 c!1285216) b!6922659))

(assert (= (and b!6922658 (not c!1285216)) b!6922655))

(assert (= (and b!6922655 c!1285217) b!6922656))

(assert (= (and b!6922655 (not c!1285217)) b!6922661))

(assert (= (and b!6922656 (not res!2822869)) b!6922663))

(assert (= (and b!6922661 c!1285219) b!6922662))

(assert (= (and b!6922661 (not c!1285219)) b!6922660))

(assert (= (and b!6922662 (not res!2822871)) b!6922664))

(assert (= (or b!6922664 b!6922660) bm!629243))

(assert (= (or b!6922665 b!6922662) bm!629244))

(declare-fun m!7632184 () Bool)

(assert (=> bm!629243 m!7632184))

(declare-fun m!7632186 () Bool)

(assert (=> b!6922656 m!7632186))

(assert (=> bm!629244 m!7632168))

(declare-fun m!7632188 () Bool)

(assert (=> b!6922663 m!7632188))

(assert (=> b!6921866 d!2164827))

(declare-fun b!6922667 () Bool)

(declare-fun e!4166370 () List!66672)

(assert (=> b!6922667 (= e!4166370 (Cons!66548 (h!72996 (++!14962 (_1!37079 lt!2470595) (_2!37079 lt!2470595))) (++!14962 (t!380415 (++!14962 (_1!37079 lt!2470595) (_2!37079 lt!2470595))) (_2!37079 lt!2470615))))))

(declare-fun lt!2470728 () List!66672)

(declare-fun e!4166371 () Bool)

(declare-fun b!6922669 () Bool)

(assert (=> b!6922669 (= e!4166371 (or (not (= (_2!37079 lt!2470615) Nil!66548)) (= lt!2470728 (++!14962 (_1!37079 lt!2470595) (_2!37079 lt!2470595)))))))

(declare-fun b!6922668 () Bool)

(declare-fun res!2822873 () Bool)

(assert (=> b!6922668 (=> (not res!2822873) (not e!4166371))))

(assert (=> b!6922668 (= res!2822873 (= (size!40775 lt!2470728) (+ (size!40775 (++!14962 (_1!37079 lt!2470595) (_2!37079 lt!2470595))) (size!40775 (_2!37079 lt!2470615)))))))

(declare-fun d!2164829 () Bool)

(assert (=> d!2164829 e!4166371))

(declare-fun res!2822872 () Bool)

(assert (=> d!2164829 (=> (not res!2822872) (not e!4166371))))

(assert (=> d!2164829 (= res!2822872 (= (content!13078 lt!2470728) ((_ map or) (content!13078 (++!14962 (_1!37079 lt!2470595) (_2!37079 lt!2470595))) (content!13078 (_2!37079 lt!2470615)))))))

(assert (=> d!2164829 (= lt!2470728 e!4166370)))

(declare-fun c!1285220 () Bool)

(assert (=> d!2164829 (= c!1285220 ((_ is Nil!66548) (++!14962 (_1!37079 lt!2470595) (_2!37079 lt!2470595))))))

(assert (=> d!2164829 (= (++!14962 (++!14962 (_1!37079 lt!2470595) (_2!37079 lt!2470595)) (_2!37079 lt!2470615)) lt!2470728)))

(declare-fun b!6922666 () Bool)

(assert (=> b!6922666 (= e!4166370 (_2!37079 lt!2470615))))

(assert (= (and d!2164829 c!1285220) b!6922666))

(assert (= (and d!2164829 (not c!1285220)) b!6922667))

(assert (= (and d!2164829 res!2822872) b!6922668))

(assert (= (and b!6922668 res!2822873) b!6922669))

(declare-fun m!7632190 () Bool)

(assert (=> b!6922667 m!7632190))

(declare-fun m!7632192 () Bool)

(assert (=> b!6922668 m!7632192))

(assert (=> b!6922668 m!7631492))

(declare-fun m!7632194 () Bool)

(assert (=> b!6922668 m!7632194))

(assert (=> b!6922668 m!7632062))

(declare-fun m!7632196 () Bool)

(assert (=> d!2164829 m!7632196))

(assert (=> d!2164829 m!7631492))

(declare-fun m!7632198 () Bool)

(assert (=> d!2164829 m!7632198))

(assert (=> d!2164829 m!7632068))

(assert (=> b!6921866 d!2164829))

(declare-fun d!2164831 () Bool)

(assert (=> d!2164831 (= (matchR!9058 r1!6342 (_1!37079 lt!2470595)) (matchRSpec!3976 r1!6342 (_1!37079 lt!2470595)))))

(declare-fun lt!2470729 () Unit!160562)

(assert (=> d!2164831 (= lt!2470729 (choose!51536 r1!6342 (_1!37079 lt!2470595)))))

(assert (=> d!2164831 (validRegex!8625 r1!6342)))

(assert (=> d!2164831 (= (mainMatchTheorem!3976 r1!6342 (_1!37079 lt!2470595)) lt!2470729)))

(declare-fun bs!1847613 () Bool)

(assert (= bs!1847613 d!2164831))

(assert (=> bs!1847613 m!7631516))

(assert (=> bs!1847613 m!7631498))

(declare-fun m!7632200 () Bool)

(assert (=> bs!1847613 m!7632200))

(assert (=> bs!1847613 m!7631536))

(assert (=> b!6921866 d!2164831))

(declare-fun bs!1847614 () Bool)

(declare-fun b!6922679 () Bool)

(assert (= bs!1847614 (and b!6922679 b!6922571)))

(declare-fun lambda!393591 () Int)

(assert (=> bs!1847614 (= (and (= (_2!37079 lt!2470595) lt!2470600) (= (reg!17248 r2!6280) (reg!17248 lt!2470596)) (= r2!6280 lt!2470596)) (= lambda!393591 lambda!393581))))

(declare-fun bs!1847615 () Bool)

(assert (= bs!1847615 (and b!6922679 d!2164825)))

(assert (=> bs!1847615 (not (= lambda!393591 lambda!393588))))

(declare-fun bs!1847616 () Bool)

(assert (= bs!1847616 (and b!6922679 d!2164683)))

(assert (=> bs!1847616 (not (= lambda!393591 lambda!393563))))

(declare-fun bs!1847617 () Bool)

(assert (= bs!1847617 (and b!6922679 d!2164679)))

(assert (=> bs!1847617 (not (= lambda!393591 lambda!393555))))

(declare-fun bs!1847618 () Bool)

(assert (= bs!1847618 (and b!6922679 b!6921975)))

(assert (=> bs!1847618 (= (and (= (_2!37079 lt!2470595) (_1!37079 lt!2470615)) (= (reg!17248 r2!6280) (reg!17248 lt!2470609)) (= r2!6280 lt!2470609)) (= lambda!393591 lambda!393535))))

(declare-fun bs!1847619 () Bool)

(assert (= bs!1847619 (and b!6922679 b!6921876)))

(assert (=> bs!1847619 (not (= lambda!393591 lambda!393527))))

(declare-fun bs!1847620 () Bool)

(assert (= bs!1847620 (and b!6922679 b!6921971)))

(assert (=> bs!1847620 (not (= lambda!393591 lambda!393536))))

(declare-fun bs!1847621 () Bool)

(assert (= bs!1847621 (and b!6922679 b!6922436)))

(assert (=> bs!1847621 (= (and (= (_2!37079 lt!2470595) s!14361) (= (reg!17248 r2!6280) (reg!17248 lt!2470607)) (= r2!6280 lt!2470607)) (= lambda!393591 lambda!393579))))

(declare-fun bs!1847622 () Bool)

(assert (= bs!1847622 (and b!6922679 b!6922660)))

(assert (=> bs!1847622 (not (= lambda!393591 lambda!393590))))

(declare-fun bs!1847623 () Bool)

(assert (= bs!1847623 (and b!6922679 b!6921879)))

(assert (=> bs!1847623 (not (= lambda!393591 lambda!393525))))

(declare-fun bs!1847624 () Bool)

(assert (= bs!1847624 (and b!6922679 b!6922400)))

(assert (=> bs!1847624 (= (and (= (_2!37079 lt!2470595) s!14361) (= (reg!17248 r2!6280) (reg!17248 lt!2470598)) (= r2!6280 lt!2470598)) (= lambda!393591 lambda!393575))))

(declare-fun bs!1847625 () Bool)

(assert (= bs!1847625 (and b!6922679 d!2164797)))

(assert (=> bs!1847625 (not (= lambda!393591 lambda!393585))))

(assert (=> bs!1847619 (not (= lambda!393591 lambda!393528))))

(declare-fun bs!1847626 () Bool)

(assert (= bs!1847626 (and b!6922679 b!6922396)))

(assert (=> bs!1847626 (not (= lambda!393591 lambda!393577))))

(declare-fun bs!1847627 () Bool)

(assert (= bs!1847627 (and b!6922679 d!2164793)))

(assert (=> bs!1847627 (not (= lambda!393591 lambda!393583))))

(assert (=> bs!1847615 (not (= lambda!393591 lambda!393587))))

(assert (=> bs!1847627 (not (= lambda!393591 lambda!393584))))

(assert (=> bs!1847623 (not (= lambda!393591 lambda!393526))))

(declare-fun bs!1847628 () Bool)

(assert (= bs!1847628 (and b!6922679 b!6922664)))

(assert (=> bs!1847628 (= (and (= (_2!37079 lt!2470595) (_1!37079 lt!2470595)) (= (reg!17248 r2!6280) (reg!17248 r1!6342)) (= r2!6280 r1!6342)) (= lambda!393591 lambda!393589))))

(declare-fun bs!1847629 () Bool)

(assert (= bs!1847629 (and b!6922679 b!6921870)))

(assert (=> bs!1847629 (not (= lambda!393591 lambda!393529))))

(assert (=> bs!1847616 (not (= lambda!393591 lambda!393564))))

(assert (=> bs!1847629 (not (= lambda!393591 lambda!393530))))

(declare-fun bs!1847630 () Bool)

(assert (= bs!1847630 (and b!6922679 b!6922432)))

(assert (=> bs!1847630 (not (= lambda!393591 lambda!393580))))

(declare-fun bs!1847631 () Bool)

(assert (= bs!1847631 (and b!6922679 d!2164823)))

(assert (=> bs!1847631 (not (= lambda!393591 lambda!393586))))

(declare-fun bs!1847632 () Bool)

(assert (= bs!1847632 (and b!6922679 b!6922567)))

(assert (=> bs!1847632 (not (= lambda!393591 lambda!393582))))

(assert (=> b!6922679 true))

(assert (=> b!6922679 true))

(declare-fun bs!1847633 () Bool)

(declare-fun b!6922675 () Bool)

(assert (= bs!1847633 (and b!6922675 b!6922571)))

(declare-fun lambda!393592 () Int)

(assert (=> bs!1847633 (not (= lambda!393592 lambda!393581))))

(declare-fun bs!1847634 () Bool)

(assert (= bs!1847634 (and b!6922675 d!2164825)))

(assert (=> bs!1847634 (= (and (= (_2!37079 lt!2470595) (_1!37079 lt!2470615)) (= (regOne!34350 r2!6280) r1!6342) (= (regTwo!34350 r2!6280) r2!6280)) (= lambda!393592 lambda!393588))))

(declare-fun bs!1847635 () Bool)

(assert (= bs!1847635 (and b!6922675 d!2164683)))

(assert (=> bs!1847635 (not (= lambda!393592 lambda!393563))))

(declare-fun bs!1847636 () Bool)

(assert (= bs!1847636 (and b!6922675 b!6922679)))

(assert (=> bs!1847636 (not (= lambda!393592 lambda!393591))))

(declare-fun bs!1847637 () Bool)

(assert (= bs!1847637 (and b!6922675 d!2164679)))

(assert (=> bs!1847637 (not (= lambda!393592 lambda!393555))))

(declare-fun bs!1847638 () Bool)

(assert (= bs!1847638 (and b!6922675 b!6921975)))

(assert (=> bs!1847638 (not (= lambda!393592 lambda!393535))))

(declare-fun bs!1847639 () Bool)

(assert (= bs!1847639 (and b!6922675 b!6921876)))

(assert (=> bs!1847639 (not (= lambda!393592 lambda!393527))))

(declare-fun bs!1847640 () Bool)

(assert (= bs!1847640 (and b!6922675 b!6921971)))

(assert (=> bs!1847640 (= (and (= (_2!37079 lt!2470595) (_1!37079 lt!2470615)) (= (regOne!34350 r2!6280) (regOne!34350 lt!2470609)) (= (regTwo!34350 r2!6280) (regTwo!34350 lt!2470609))) (= lambda!393592 lambda!393536))))

(declare-fun bs!1847641 () Bool)

(assert (= bs!1847641 (and b!6922675 b!6922436)))

(assert (=> bs!1847641 (not (= lambda!393592 lambda!393579))))

(declare-fun bs!1847642 () Bool)

(assert (= bs!1847642 (and b!6922675 b!6922660)))

(assert (=> bs!1847642 (= (and (= (_2!37079 lt!2470595) (_1!37079 lt!2470595)) (= (regOne!34350 r2!6280) (regOne!34350 r1!6342)) (= (regTwo!34350 r2!6280) (regTwo!34350 r1!6342))) (= lambda!393592 lambda!393590))))

(declare-fun bs!1847643 () Bool)

(assert (= bs!1847643 (and b!6922675 b!6921879)))

(assert (=> bs!1847643 (not (= lambda!393592 lambda!393525))))

(declare-fun bs!1847644 () Bool)

(assert (= bs!1847644 (and b!6922675 b!6922400)))

(assert (=> bs!1847644 (not (= lambda!393592 lambda!393575))))

(declare-fun bs!1847645 () Bool)

(assert (= bs!1847645 (and b!6922675 d!2164797)))

(assert (=> bs!1847645 (not (= lambda!393592 lambda!393585))))

(assert (=> bs!1847639 (= (and (= (_2!37079 lt!2470595) (_1!37079 lt!2470615)) (= (regOne!34350 r2!6280) r1!6342) (= (regTwo!34350 r2!6280) r2!6280)) (= lambda!393592 lambda!393528))))

(declare-fun bs!1847646 () Bool)

(assert (= bs!1847646 (and b!6922675 b!6922396)))

(assert (=> bs!1847646 (= (and (= (_2!37079 lt!2470595) s!14361) (= (regOne!34350 r2!6280) (regOne!34350 lt!2470598)) (= (regTwo!34350 r2!6280) (regTwo!34350 lt!2470598))) (= lambda!393592 lambda!393577))))

(declare-fun bs!1847647 () Bool)

(assert (= bs!1847647 (and b!6922675 d!2164793)))

(assert (=> bs!1847647 (not (= lambda!393592 lambda!393583))))

(assert (=> bs!1847634 (not (= lambda!393592 lambda!393587))))

(assert (=> bs!1847647 (= (and (= (_2!37079 lt!2470595) lt!2470600) (= (regOne!34350 r2!6280) r2!6280) (= (regTwo!34350 r2!6280) r3!135)) (= lambda!393592 lambda!393584))))

(assert (=> bs!1847643 (= (and (= (_2!37079 lt!2470595) s!14361) (= (regOne!34350 r2!6280) lt!2470609) (= (regTwo!34350 r2!6280) r3!135)) (= lambda!393592 lambda!393526))))

(declare-fun bs!1847648 () Bool)

(assert (= bs!1847648 (and b!6922675 b!6922664)))

(assert (=> bs!1847648 (not (= lambda!393592 lambda!393589))))

(declare-fun bs!1847649 () Bool)

(assert (= bs!1847649 (and b!6922675 b!6921870)))

(assert (=> bs!1847649 (not (= lambda!393592 lambda!393529))))

(assert (=> bs!1847635 (= (and (= (_2!37079 lt!2470595) s!14361) (= (regOne!34350 r2!6280) lt!2470609) (= (regTwo!34350 r2!6280) r3!135)) (= lambda!393592 lambda!393564))))

(assert (=> bs!1847649 (= (and (= (_2!37079 lt!2470595) lt!2470600) (= (regOne!34350 r2!6280) r2!6280) (= (regTwo!34350 r2!6280) r3!135)) (= lambda!393592 lambda!393530))))

(declare-fun bs!1847650 () Bool)

(assert (= bs!1847650 (and b!6922675 b!6922432)))

(assert (=> bs!1847650 (= (and (= (_2!37079 lt!2470595) s!14361) (= (regOne!34350 r2!6280) (regOne!34350 lt!2470607)) (= (regTwo!34350 r2!6280) (regTwo!34350 lt!2470607))) (= lambda!393592 lambda!393580))))

(declare-fun bs!1847651 () Bool)

(assert (= bs!1847651 (and b!6922675 d!2164823)))

(assert (=> bs!1847651 (not (= lambda!393592 lambda!393586))))

(declare-fun bs!1847652 () Bool)

(assert (= bs!1847652 (and b!6922675 b!6922567)))

(assert (=> bs!1847652 (= (and (= (_2!37079 lt!2470595) lt!2470600) (= (regOne!34350 r2!6280) (regOne!34350 lt!2470596)) (= (regTwo!34350 r2!6280) (regTwo!34350 lt!2470596))) (= lambda!393592 lambda!393582))))

(assert (=> b!6922675 true))

(assert (=> b!6922675 true))

(declare-fun b!6922670 () Bool)

(declare-fun c!1285222 () Bool)

(assert (=> b!6922670 (= c!1285222 ((_ is Union!16919) r2!6280))))

(declare-fun e!4166376 () Bool)

(declare-fun e!4166377 () Bool)

(assert (=> b!6922670 (= e!4166376 e!4166377)))

(declare-fun c!1285224 () Bool)

(declare-fun bm!629245 () Bool)

(declare-fun call!629251 () Bool)

(assert (=> bm!629245 (= call!629251 (Exists!3921 (ite c!1285224 lambda!393591 lambda!393592)))))

(declare-fun d!2164833 () Bool)

(declare-fun c!1285223 () Bool)

(assert (=> d!2164833 (= c!1285223 ((_ is EmptyExpr!16919) r2!6280))))

(declare-fun e!4166374 () Bool)

(assert (=> d!2164833 (= (matchRSpec!3976 r2!6280 (_2!37079 lt!2470595)) e!4166374)))

(declare-fun b!6922671 () Bool)

(declare-fun e!4166375 () Bool)

(assert (=> b!6922671 (= e!4166377 e!4166375)))

(declare-fun res!2822874 () Bool)

(assert (=> b!6922671 (= res!2822874 (matchRSpec!3976 (regOne!34351 r2!6280) (_2!37079 lt!2470595)))))

(assert (=> b!6922671 (=> res!2822874 e!4166375)))

(declare-fun b!6922672 () Bool)

(declare-fun e!4166378 () Bool)

(assert (=> b!6922672 (= e!4166374 e!4166378)))

(declare-fun res!2822875 () Bool)

(assert (=> b!6922672 (= res!2822875 (not ((_ is EmptyLang!16919) r2!6280)))))

(assert (=> b!6922672 (=> (not res!2822875) (not e!4166378))))

(declare-fun b!6922673 () Bool)

(declare-fun c!1285221 () Bool)

(assert (=> b!6922673 (= c!1285221 ((_ is ElementMatch!16919) r2!6280))))

(assert (=> b!6922673 (= e!4166378 e!4166376)))

(declare-fun b!6922674 () Bool)

(assert (=> b!6922674 (= e!4166376 (= (_2!37079 lt!2470595) (Cons!66548 (c!1285051 r2!6280) Nil!66548)))))

(declare-fun bm!629246 () Bool)

(declare-fun call!629250 () Bool)

(assert (=> bm!629246 (= call!629250 (isEmpty!38801 (_2!37079 lt!2470595)))))

(declare-fun e!4166372 () Bool)

(assert (=> b!6922675 (= e!4166372 call!629251)))

(declare-fun b!6922676 () Bool)

(assert (=> b!6922676 (= e!4166377 e!4166372)))

(assert (=> b!6922676 (= c!1285224 ((_ is Star!16919) r2!6280))))

(declare-fun b!6922677 () Bool)

(declare-fun res!2822876 () Bool)

(declare-fun e!4166373 () Bool)

(assert (=> b!6922677 (=> res!2822876 e!4166373)))

(assert (=> b!6922677 (= res!2822876 call!629250)))

(assert (=> b!6922677 (= e!4166372 e!4166373)))

(declare-fun b!6922678 () Bool)

(assert (=> b!6922678 (= e!4166375 (matchRSpec!3976 (regTwo!34351 r2!6280) (_2!37079 lt!2470595)))))

(assert (=> b!6922679 (= e!4166373 call!629251)))

(declare-fun b!6922680 () Bool)

(assert (=> b!6922680 (= e!4166374 call!629250)))

(assert (= (and d!2164833 c!1285223) b!6922680))

(assert (= (and d!2164833 (not c!1285223)) b!6922672))

(assert (= (and b!6922672 res!2822875) b!6922673))

(assert (= (and b!6922673 c!1285221) b!6922674))

(assert (= (and b!6922673 (not c!1285221)) b!6922670))

(assert (= (and b!6922670 c!1285222) b!6922671))

(assert (= (and b!6922670 (not c!1285222)) b!6922676))

(assert (= (and b!6922671 (not res!2822874)) b!6922678))

(assert (= (and b!6922676 c!1285224) b!6922677))

(assert (= (and b!6922676 (not c!1285224)) b!6922675))

(assert (= (and b!6922677 (not res!2822876)) b!6922679))

(assert (= (or b!6922679 b!6922675) bm!629245))

(assert (= (or b!6922680 b!6922677) bm!629246))

(declare-fun m!7632202 () Bool)

(assert (=> bm!629245 m!7632202))

(declare-fun m!7632204 () Bool)

(assert (=> b!6922671 m!7632204))

(assert (=> bm!629246 m!7632000))

(declare-fun m!7632206 () Bool)

(assert (=> b!6922678 m!7632206))

(assert (=> b!6921866 d!2164833))

(declare-fun d!2164835 () Bool)

(assert (=> d!2164835 (= (matchR!9058 r2!6280 (_2!37079 lt!2470595)) (matchRSpec!3976 r2!6280 (_2!37079 lt!2470595)))))

(declare-fun lt!2470730 () Unit!160562)

(assert (=> d!2164835 (= lt!2470730 (choose!51536 r2!6280 (_2!37079 lt!2470595)))))

(assert (=> d!2164835 (validRegex!8625 r2!6280)))

(assert (=> d!2164835 (= (mainMatchTheorem!3976 r2!6280 (_2!37079 lt!2470595)) lt!2470730)))

(declare-fun bs!1847653 () Bool)

(assert (= bs!1847653 d!2164835))

(assert (=> bs!1847653 m!7631490))

(assert (=> bs!1847653 m!7631500))

(declare-fun m!7632208 () Bool)

(assert (=> bs!1847653 m!7632208))

(assert (=> bs!1847653 m!7631534))

(assert (=> b!6921866 d!2164835))

(declare-fun b!6922682 () Bool)

(declare-fun e!4166379 () List!66672)

(assert (=> b!6922682 (= e!4166379 (Cons!66548 (h!72996 (_1!37079 lt!2470595)) (++!14962 (t!380415 (_1!37079 lt!2470595)) (_2!37079 lt!2470595))))))

(declare-fun b!6922684 () Bool)

(declare-fun e!4166380 () Bool)

(declare-fun lt!2470731 () List!66672)

(assert (=> b!6922684 (= e!4166380 (or (not (= (_2!37079 lt!2470595) Nil!66548)) (= lt!2470731 (_1!37079 lt!2470595))))))

(declare-fun b!6922683 () Bool)

(declare-fun res!2822878 () Bool)

(assert (=> b!6922683 (=> (not res!2822878) (not e!4166380))))

(assert (=> b!6922683 (= res!2822878 (= (size!40775 lt!2470731) (+ (size!40775 (_1!37079 lt!2470595)) (size!40775 (_2!37079 lt!2470595)))))))

(declare-fun d!2164837 () Bool)

(assert (=> d!2164837 e!4166380))

(declare-fun res!2822877 () Bool)

(assert (=> d!2164837 (=> (not res!2822877) (not e!4166380))))

(assert (=> d!2164837 (= res!2822877 (= (content!13078 lt!2470731) ((_ map or) (content!13078 (_1!37079 lt!2470595)) (content!13078 (_2!37079 lt!2470595)))))))

(assert (=> d!2164837 (= lt!2470731 e!4166379)))

(declare-fun c!1285225 () Bool)

(assert (=> d!2164837 (= c!1285225 ((_ is Nil!66548) (_1!37079 lt!2470595)))))

(assert (=> d!2164837 (= (++!14962 (_1!37079 lt!2470595) (_2!37079 lt!2470595)) lt!2470731)))

(declare-fun b!6922681 () Bool)

(assert (=> b!6922681 (= e!4166379 (_2!37079 lt!2470595))))

(assert (= (and d!2164837 c!1285225) b!6922681))

(assert (= (and d!2164837 (not c!1285225)) b!6922682))

(assert (= (and d!2164837 res!2822877) b!6922683))

(assert (= (and b!6922683 res!2822878) b!6922684))

(declare-fun m!7632210 () Bool)

(assert (=> b!6922682 m!7632210))

(declare-fun m!7632212 () Bool)

(assert (=> b!6922683 m!7632212))

(assert (=> b!6922683 m!7632008))

(assert (=> b!6922683 m!7632060))

(declare-fun m!7632214 () Bool)

(assert (=> d!2164837 m!7632214))

(assert (=> d!2164837 m!7632014))

(assert (=> d!2164837 m!7632066))

(assert (=> b!6921866 d!2164837))

(declare-fun b!6922697 () Bool)

(declare-fun e!4166383 () Bool)

(declare-fun tp!1908089 () Bool)

(assert (=> b!6922697 (= e!4166383 tp!1908089)))

(declare-fun b!6922695 () Bool)

(assert (=> b!6922695 (= e!4166383 tp_is_empty!43063)))

(declare-fun b!6922696 () Bool)

(declare-fun tp!1908088 () Bool)

(declare-fun tp!1908087 () Bool)

(assert (=> b!6922696 (= e!4166383 (and tp!1908088 tp!1908087))))

(assert (=> b!6921863 (= tp!1907973 e!4166383)))

(declare-fun b!6922698 () Bool)

(declare-fun tp!1908090 () Bool)

(declare-fun tp!1908086 () Bool)

(assert (=> b!6922698 (= e!4166383 (and tp!1908090 tp!1908086))))

(assert (= (and b!6921863 ((_ is ElementMatch!16919) (regOne!34351 r2!6280))) b!6922695))

(assert (= (and b!6921863 ((_ is Concat!25764) (regOne!34351 r2!6280))) b!6922696))

(assert (= (and b!6921863 ((_ is Star!16919) (regOne!34351 r2!6280))) b!6922697))

(assert (= (and b!6921863 ((_ is Union!16919) (regOne!34351 r2!6280))) b!6922698))

(declare-fun b!6922701 () Bool)

(declare-fun e!4166384 () Bool)

(declare-fun tp!1908094 () Bool)

(assert (=> b!6922701 (= e!4166384 tp!1908094)))

(declare-fun b!6922699 () Bool)

(assert (=> b!6922699 (= e!4166384 tp_is_empty!43063)))

(declare-fun b!6922700 () Bool)

(declare-fun tp!1908093 () Bool)

(declare-fun tp!1908092 () Bool)

(assert (=> b!6922700 (= e!4166384 (and tp!1908093 tp!1908092))))

(assert (=> b!6921863 (= tp!1907984 e!4166384)))

(declare-fun b!6922702 () Bool)

(declare-fun tp!1908095 () Bool)

(declare-fun tp!1908091 () Bool)

(assert (=> b!6922702 (= e!4166384 (and tp!1908095 tp!1908091))))

(assert (= (and b!6921863 ((_ is ElementMatch!16919) (regTwo!34351 r2!6280))) b!6922699))

(assert (= (and b!6921863 ((_ is Concat!25764) (regTwo!34351 r2!6280))) b!6922700))

(assert (= (and b!6921863 ((_ is Star!16919) (regTwo!34351 r2!6280))) b!6922701))

(assert (= (and b!6921863 ((_ is Union!16919) (regTwo!34351 r2!6280))) b!6922702))

(declare-fun b!6922705 () Bool)

(declare-fun e!4166385 () Bool)

(declare-fun tp!1908099 () Bool)

(assert (=> b!6922705 (= e!4166385 tp!1908099)))

(declare-fun b!6922703 () Bool)

(assert (=> b!6922703 (= e!4166385 tp_is_empty!43063)))

(declare-fun b!6922704 () Bool)

(declare-fun tp!1908098 () Bool)

(declare-fun tp!1908097 () Bool)

(assert (=> b!6922704 (= e!4166385 (and tp!1908098 tp!1908097))))

(assert (=> b!6921885 (= tp!1907975 e!4166385)))

(declare-fun b!6922706 () Bool)

(declare-fun tp!1908100 () Bool)

(declare-fun tp!1908096 () Bool)

(assert (=> b!6922706 (= e!4166385 (and tp!1908100 tp!1908096))))

(assert (= (and b!6921885 ((_ is ElementMatch!16919) (reg!17248 r3!135))) b!6922703))

(assert (= (and b!6921885 ((_ is Concat!25764) (reg!17248 r3!135))) b!6922704))

(assert (= (and b!6921885 ((_ is Star!16919) (reg!17248 r3!135))) b!6922705))

(assert (= (and b!6921885 ((_ is Union!16919) (reg!17248 r3!135))) b!6922706))

(declare-fun b!6922709 () Bool)

(declare-fun e!4166386 () Bool)

(declare-fun tp!1908104 () Bool)

(assert (=> b!6922709 (= e!4166386 tp!1908104)))

(declare-fun b!6922707 () Bool)

(assert (=> b!6922707 (= e!4166386 tp_is_empty!43063)))

(declare-fun b!6922708 () Bool)

(declare-fun tp!1908103 () Bool)

(declare-fun tp!1908102 () Bool)

(assert (=> b!6922708 (= e!4166386 (and tp!1908103 tp!1908102))))

(assert (=> b!6921874 (= tp!1907974 e!4166386)))

(declare-fun b!6922710 () Bool)

(declare-fun tp!1908105 () Bool)

(declare-fun tp!1908101 () Bool)

(assert (=> b!6922710 (= e!4166386 (and tp!1908105 tp!1908101))))

(assert (= (and b!6921874 ((_ is ElementMatch!16919) (regOne!34350 r1!6342))) b!6922707))

(assert (= (and b!6921874 ((_ is Concat!25764) (regOne!34350 r1!6342))) b!6922708))

(assert (= (and b!6921874 ((_ is Star!16919) (regOne!34350 r1!6342))) b!6922709))

(assert (= (and b!6921874 ((_ is Union!16919) (regOne!34350 r1!6342))) b!6922710))

(declare-fun b!6922713 () Bool)

(declare-fun e!4166387 () Bool)

(declare-fun tp!1908109 () Bool)

(assert (=> b!6922713 (= e!4166387 tp!1908109)))

(declare-fun b!6922711 () Bool)

(assert (=> b!6922711 (= e!4166387 tp_is_empty!43063)))

(declare-fun b!6922712 () Bool)

(declare-fun tp!1908108 () Bool)

(declare-fun tp!1908107 () Bool)

(assert (=> b!6922712 (= e!4166387 (and tp!1908108 tp!1908107))))

(assert (=> b!6921874 (= tp!1907985 e!4166387)))

(declare-fun b!6922714 () Bool)

(declare-fun tp!1908110 () Bool)

(declare-fun tp!1908106 () Bool)

(assert (=> b!6922714 (= e!4166387 (and tp!1908110 tp!1908106))))

(assert (= (and b!6921874 ((_ is ElementMatch!16919) (regTwo!34350 r1!6342))) b!6922711))

(assert (= (and b!6921874 ((_ is Concat!25764) (regTwo!34350 r1!6342))) b!6922712))

(assert (= (and b!6921874 ((_ is Star!16919) (regTwo!34350 r1!6342))) b!6922713))

(assert (= (and b!6921874 ((_ is Union!16919) (regTwo!34350 r1!6342))) b!6922714))

(declare-fun b!6922717 () Bool)

(declare-fun e!4166388 () Bool)

(declare-fun tp!1908114 () Bool)

(assert (=> b!6922717 (= e!4166388 tp!1908114)))

(declare-fun b!6922715 () Bool)

(assert (=> b!6922715 (= e!4166388 tp_is_empty!43063)))

(declare-fun b!6922716 () Bool)

(declare-fun tp!1908113 () Bool)

(declare-fun tp!1908112 () Bool)

(assert (=> b!6922716 (= e!4166388 (and tp!1908113 tp!1908112))))

(assert (=> b!6921875 (= tp!1907979 e!4166388)))

(declare-fun b!6922718 () Bool)

(declare-fun tp!1908115 () Bool)

(declare-fun tp!1908111 () Bool)

(assert (=> b!6922718 (= e!4166388 (and tp!1908115 tp!1908111))))

(assert (= (and b!6921875 ((_ is ElementMatch!16919) (regOne!34350 r3!135))) b!6922715))

(assert (= (and b!6921875 ((_ is Concat!25764) (regOne!34350 r3!135))) b!6922716))

(assert (= (and b!6921875 ((_ is Star!16919) (regOne!34350 r3!135))) b!6922717))

(assert (= (and b!6921875 ((_ is Union!16919) (regOne!34350 r3!135))) b!6922718))

(declare-fun b!6922721 () Bool)

(declare-fun e!4166389 () Bool)

(declare-fun tp!1908119 () Bool)

(assert (=> b!6922721 (= e!4166389 tp!1908119)))

(declare-fun b!6922719 () Bool)

(assert (=> b!6922719 (= e!4166389 tp_is_empty!43063)))

(declare-fun b!6922720 () Bool)

(declare-fun tp!1908118 () Bool)

(declare-fun tp!1908117 () Bool)

(assert (=> b!6922720 (= e!4166389 (and tp!1908118 tp!1908117))))

(assert (=> b!6921875 (= tp!1907976 e!4166389)))

(declare-fun b!6922722 () Bool)

(declare-fun tp!1908120 () Bool)

(declare-fun tp!1908116 () Bool)

(assert (=> b!6922722 (= e!4166389 (and tp!1908120 tp!1908116))))

(assert (= (and b!6921875 ((_ is ElementMatch!16919) (regTwo!34350 r3!135))) b!6922719))

(assert (= (and b!6921875 ((_ is Concat!25764) (regTwo!34350 r3!135))) b!6922720))

(assert (= (and b!6921875 ((_ is Star!16919) (regTwo!34350 r3!135))) b!6922721))

(assert (= (and b!6921875 ((_ is Union!16919) (regTwo!34350 r3!135))) b!6922722))

(declare-fun b!6922725 () Bool)

(declare-fun e!4166390 () Bool)

(declare-fun tp!1908124 () Bool)

(assert (=> b!6922725 (= e!4166390 tp!1908124)))

(declare-fun b!6922723 () Bool)

(assert (=> b!6922723 (= e!4166390 tp_is_empty!43063)))

(declare-fun b!6922724 () Bool)

(declare-fun tp!1908123 () Bool)

(declare-fun tp!1908122 () Bool)

(assert (=> b!6922724 (= e!4166390 (and tp!1908123 tp!1908122))))

(assert (=> b!6921877 (= tp!1907986 e!4166390)))

(declare-fun b!6922726 () Bool)

(declare-fun tp!1908125 () Bool)

(declare-fun tp!1908121 () Bool)

(assert (=> b!6922726 (= e!4166390 (and tp!1908125 tp!1908121))))

(assert (= (and b!6921877 ((_ is ElementMatch!16919) (reg!17248 r2!6280))) b!6922723))

(assert (= (and b!6921877 ((_ is Concat!25764) (reg!17248 r2!6280))) b!6922724))

(assert (= (and b!6921877 ((_ is Star!16919) (reg!17248 r2!6280))) b!6922725))

(assert (= (and b!6921877 ((_ is Union!16919) (reg!17248 r2!6280))) b!6922726))

(declare-fun b!6922729 () Bool)

(declare-fun e!4166391 () Bool)

(declare-fun tp!1908129 () Bool)

(assert (=> b!6922729 (= e!4166391 tp!1908129)))

(declare-fun b!6922727 () Bool)

(assert (=> b!6922727 (= e!4166391 tp_is_empty!43063)))

(declare-fun b!6922728 () Bool)

(declare-fun tp!1908128 () Bool)

(declare-fun tp!1908127 () Bool)

(assert (=> b!6922728 (= e!4166391 (and tp!1908128 tp!1908127))))

(assert (=> b!6921883 (= tp!1907972 e!4166391)))

(declare-fun b!6922730 () Bool)

(declare-fun tp!1908130 () Bool)

(declare-fun tp!1908126 () Bool)

(assert (=> b!6922730 (= e!4166391 (and tp!1908130 tp!1908126))))

(assert (= (and b!6921883 ((_ is ElementMatch!16919) (regOne!34351 r1!6342))) b!6922727))

(assert (= (and b!6921883 ((_ is Concat!25764) (regOne!34351 r1!6342))) b!6922728))

(assert (= (and b!6921883 ((_ is Star!16919) (regOne!34351 r1!6342))) b!6922729))

(assert (= (and b!6921883 ((_ is Union!16919) (regOne!34351 r1!6342))) b!6922730))

(declare-fun b!6922733 () Bool)

(declare-fun e!4166392 () Bool)

(declare-fun tp!1908134 () Bool)

(assert (=> b!6922733 (= e!4166392 tp!1908134)))

(declare-fun b!6922731 () Bool)

(assert (=> b!6922731 (= e!4166392 tp_is_empty!43063)))

(declare-fun b!6922732 () Bool)

(declare-fun tp!1908133 () Bool)

(declare-fun tp!1908132 () Bool)

(assert (=> b!6922732 (= e!4166392 (and tp!1908133 tp!1908132))))

(assert (=> b!6921883 (= tp!1907982 e!4166392)))

(declare-fun b!6922734 () Bool)

(declare-fun tp!1908135 () Bool)

(declare-fun tp!1908131 () Bool)

(assert (=> b!6922734 (= e!4166392 (and tp!1908135 tp!1908131))))

(assert (= (and b!6921883 ((_ is ElementMatch!16919) (regTwo!34351 r1!6342))) b!6922731))

(assert (= (and b!6921883 ((_ is Concat!25764) (regTwo!34351 r1!6342))) b!6922732))

(assert (= (and b!6921883 ((_ is Star!16919) (regTwo!34351 r1!6342))) b!6922733))

(assert (= (and b!6921883 ((_ is Union!16919) (regTwo!34351 r1!6342))) b!6922734))

(declare-fun b!6922737 () Bool)

(declare-fun e!4166393 () Bool)

(declare-fun tp!1908139 () Bool)

(assert (=> b!6922737 (= e!4166393 tp!1908139)))

(declare-fun b!6922735 () Bool)

(assert (=> b!6922735 (= e!4166393 tp_is_empty!43063)))

(declare-fun b!6922736 () Bool)

(declare-fun tp!1908138 () Bool)

(declare-fun tp!1908137 () Bool)

(assert (=> b!6922736 (= e!4166393 (and tp!1908138 tp!1908137))))

(assert (=> b!6921867 (= tp!1907987 e!4166393)))

(declare-fun b!6922738 () Bool)

(declare-fun tp!1908140 () Bool)

(declare-fun tp!1908136 () Bool)

(assert (=> b!6922738 (= e!4166393 (and tp!1908140 tp!1908136))))

(assert (= (and b!6921867 ((_ is ElementMatch!16919) (reg!17248 r1!6342))) b!6922735))

(assert (= (and b!6921867 ((_ is Concat!25764) (reg!17248 r1!6342))) b!6922736))

(assert (= (and b!6921867 ((_ is Star!16919) (reg!17248 r1!6342))) b!6922737))

(assert (= (and b!6921867 ((_ is Union!16919) (reg!17248 r1!6342))) b!6922738))

(declare-fun b!6922743 () Bool)

(declare-fun e!4166396 () Bool)

(declare-fun tp!1908143 () Bool)

(assert (=> b!6922743 (= e!4166396 (and tp_is_empty!43063 tp!1908143))))

(assert (=> b!6921872 (= tp!1907981 e!4166396)))

(assert (= (and b!6921872 ((_ is Cons!66548) (t!380415 s!14361))) b!6922743))

(declare-fun b!6922746 () Bool)

(declare-fun e!4166397 () Bool)

(declare-fun tp!1908147 () Bool)

(assert (=> b!6922746 (= e!4166397 tp!1908147)))

(declare-fun b!6922744 () Bool)

(assert (=> b!6922744 (= e!4166397 tp_is_empty!43063)))

(declare-fun b!6922745 () Bool)

(declare-fun tp!1908146 () Bool)

(declare-fun tp!1908145 () Bool)

(assert (=> b!6922745 (= e!4166397 (and tp!1908146 tp!1908145))))

(assert (=> b!6921873 (= tp!1907977 e!4166397)))

(declare-fun b!6922747 () Bool)

(declare-fun tp!1908148 () Bool)

(declare-fun tp!1908144 () Bool)

(assert (=> b!6922747 (= e!4166397 (and tp!1908148 tp!1908144))))

(assert (= (and b!6921873 ((_ is ElementMatch!16919) (regOne!34350 r2!6280))) b!6922744))

(assert (= (and b!6921873 ((_ is Concat!25764) (regOne!34350 r2!6280))) b!6922745))

(assert (= (and b!6921873 ((_ is Star!16919) (regOne!34350 r2!6280))) b!6922746))

(assert (= (and b!6921873 ((_ is Union!16919) (regOne!34350 r2!6280))) b!6922747))

(declare-fun b!6922750 () Bool)

(declare-fun e!4166398 () Bool)

(declare-fun tp!1908152 () Bool)

(assert (=> b!6922750 (= e!4166398 tp!1908152)))

(declare-fun b!6922748 () Bool)

(assert (=> b!6922748 (= e!4166398 tp_is_empty!43063)))

(declare-fun b!6922749 () Bool)

(declare-fun tp!1908151 () Bool)

(declare-fun tp!1908150 () Bool)

(assert (=> b!6922749 (= e!4166398 (and tp!1908151 tp!1908150))))

(assert (=> b!6921873 (= tp!1907983 e!4166398)))

(declare-fun b!6922751 () Bool)

(declare-fun tp!1908153 () Bool)

(declare-fun tp!1908149 () Bool)

(assert (=> b!6922751 (= e!4166398 (and tp!1908153 tp!1908149))))

(assert (= (and b!6921873 ((_ is ElementMatch!16919) (regTwo!34350 r2!6280))) b!6922748))

(assert (= (and b!6921873 ((_ is Concat!25764) (regTwo!34350 r2!6280))) b!6922749))

(assert (= (and b!6921873 ((_ is Star!16919) (regTwo!34350 r2!6280))) b!6922750))

(assert (= (and b!6921873 ((_ is Union!16919) (regTwo!34350 r2!6280))) b!6922751))

(declare-fun b!6922754 () Bool)

(declare-fun e!4166399 () Bool)

(declare-fun tp!1908157 () Bool)

(assert (=> b!6922754 (= e!4166399 tp!1908157)))

(declare-fun b!6922752 () Bool)

(assert (=> b!6922752 (= e!4166399 tp_is_empty!43063)))

(declare-fun b!6922753 () Bool)

(declare-fun tp!1908156 () Bool)

(declare-fun tp!1908155 () Bool)

(assert (=> b!6922753 (= e!4166399 (and tp!1908156 tp!1908155))))

(assert (=> b!6921878 (= tp!1907980 e!4166399)))

(declare-fun b!6922755 () Bool)

(declare-fun tp!1908158 () Bool)

(declare-fun tp!1908154 () Bool)

(assert (=> b!6922755 (= e!4166399 (and tp!1908158 tp!1908154))))

(assert (= (and b!6921878 ((_ is ElementMatch!16919) (regOne!34351 r3!135))) b!6922752))

(assert (= (and b!6921878 ((_ is Concat!25764) (regOne!34351 r3!135))) b!6922753))

(assert (= (and b!6921878 ((_ is Star!16919) (regOne!34351 r3!135))) b!6922754))

(assert (= (and b!6921878 ((_ is Union!16919) (regOne!34351 r3!135))) b!6922755))

(declare-fun b!6922758 () Bool)

(declare-fun e!4166400 () Bool)

(declare-fun tp!1908162 () Bool)

(assert (=> b!6922758 (= e!4166400 tp!1908162)))

(declare-fun b!6922756 () Bool)

(assert (=> b!6922756 (= e!4166400 tp_is_empty!43063)))

(declare-fun b!6922757 () Bool)

(declare-fun tp!1908161 () Bool)

(declare-fun tp!1908160 () Bool)

(assert (=> b!6922757 (= e!4166400 (and tp!1908161 tp!1908160))))

(assert (=> b!6921878 (= tp!1907978 e!4166400)))

(declare-fun b!6922759 () Bool)

(declare-fun tp!1908163 () Bool)

(declare-fun tp!1908159 () Bool)

(assert (=> b!6922759 (= e!4166400 (and tp!1908163 tp!1908159))))

(assert (= (and b!6921878 ((_ is ElementMatch!16919) (regTwo!34351 r3!135))) b!6922756))

(assert (= (and b!6921878 ((_ is Concat!25764) (regTwo!34351 r3!135))) b!6922757))

(assert (= (and b!6921878 ((_ is Star!16919) (regTwo!34351 r3!135))) b!6922758))

(assert (= (and b!6921878 ((_ is Union!16919) (regTwo!34351 r3!135))) b!6922759))

(check-sat (not d!2164817) (not b!6922730) (not b!6922615) (not b!6922702) (not b!6922587) (not b!6922758) (not b!6922746) (not bm!629241) (not d!2164761) (not bm!629228) (not d!2164793) (not b!6922599) (not b!6922304) (not d!2164699) (not b!6922633) (not b!6922420) (not d!2164813) (not bm!629244) (not b!6922414) (not b!6922558) (not b!6922725) (not d!2164781) (not b!6922717) (not b!6922745) (not d!2164759) (not b!6922713) (not b!6922141) (not b!6922480) (not b!6922553) (not d!2164775) (not b!6922384) (not b!6922369) (not b!6922734) (not bm!629237) (not b!6922554) (not bm!629221) (not b!6921974) (not d!2164795) (not b!6922654) (not b!6922718) (not b!6922590) (not b!6922708) (not b!6922656) (not b!6922698) (not b!6922306) (not b!6922642) (not d!2164645) (not b!6922132) (not b!6922624) (not b!6922663) (not b!6922710) (not b!6922592) (not d!2164791) (not b!6922682) (not b!6922668) (not b!6922435) (not b!6922474) (not d!2164779) (not b!6922555) (not b!6922378) (not d!2164659) (not d!2164801) (not b!6922671) (not b!6922390) (not d!2164837) (not b!6922726) (not d!2164825) (not b!6921967) (not b!6922557) tp_is_empty!43063 (not d!2164819) (not bm!629217) (not b!6922559) (not b!6922755) (not b!6922754) (not d!2164683) (not d!2164769) (not b!6922563) (not b!6922596) (not b!6922638) (not b!6922683) (not bm!629238) (not b!6922418) (not b!6922716) (not b!6922387) (not b!6922729) (not d!2164803) (not b!6922582) (not d!2164821) (not b!6922747) (not d!2164703) (not b!6922585) (not b!6922648) (not b!6922651) (not b!6922667) (not b!6922382) (not b!6922138) (not b!6922302) (not d!2164763) (not d!2164745) (not b!6922722) (not d!2164835) (not bm!629235) (not b!6922307) (not b!6922709) (not bm!629245) (not bm!629168) (not b!6922637) (not b!6922136) (not d!2164829) (not b!6922477) (not b!6922706) (not bm!629229) (not b!6922392) (not bm!629169) (not b!6922701) (not b!6922736) (not b!6922632) (not bm!629242) (not b!6922385) (not b!6922737) (not b!6922728) (not d!2164777) (not b!6922606) (not b!6922551) (not b!6922720) (not b!6922749) (not b!6922472) (not b!6922646) (not b!6922678) (not b!6922634) (not bm!629234) (not b!6922733) (not b!6922751) (not b!6922574) (not d!2164799) (not bm!629224) (not b!6922139) (not bm!629243) (not bm!629197) (not b!6922550) (not d!2164789) (not bm!629232) (not b!6922601) (not bm!629230) (not b!6922144) (not d!2164785) (not b!6922759) (not d!2164831) (not b!6922475) (not bm!629231) (not b!6922721) (not b!6922575) (not b!6922750) (not b!6922704) (not b!6922743) (not b!6922738) (not bm!629246) (not bm!629218) (not b!6922468) (not d!2164815) (not b!6922757) (not bm!629226) (not b!6922636) (not bm!629225) (not d!2164823) (not b!6922724) (not bm!629240) (not b!6922423) (not b!6922308) (not b!6922732) (not d!2164657) (not b!6922714) (not b!6922570) (not b!6922696) (not bm!629220) (not bm!629219) (not b!6922649) (not d!2164783) (not b!6922584) (not b!6922700) (not b!6922399) (not b!6922428) (not b!6922303) (not b!6922578) (not d!2164797) (not d!2164679) (not b!6922712) (not b!6922598) (not b!6922604) (not b!6922421) (not b!6922697) (not b!6922753) (not b!6922426) (not b!6922705))
(check-sat)
