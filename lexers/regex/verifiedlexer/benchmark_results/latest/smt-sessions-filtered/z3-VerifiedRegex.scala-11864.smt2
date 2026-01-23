; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666702 () Bool)

(assert start!666702)

(declare-fun b!6943703 () Bool)

(assert (=> b!6943703 true))

(assert (=> b!6943703 true))

(assert (=> b!6943703 true))

(declare-fun lambda!395846 () Int)

(declare-fun lambda!395845 () Int)

(assert (=> b!6943703 (not (= lambda!395846 lambda!395845))))

(assert (=> b!6943703 true))

(assert (=> b!6943703 true))

(assert (=> b!6943703 true))

(declare-datatypes ((C!34220 0))(
  ( (C!34221 (val!26812 Int)) )
))
(declare-datatypes ((Regex!16975 0))(
  ( (ElementMatch!16975 (c!1288295 C!34220)) (Concat!25820 (regOne!34462 Regex!16975) (regTwo!34462 Regex!16975)) (EmptyExpr!16975) (Star!16975 (reg!17304 Regex!16975)) (EmptyLang!16975) (Union!16975 (regOne!34463 Regex!16975) (regTwo!34463 Regex!16975)) )
))
(declare-fun r1!6342 () Regex!16975)

(declare-fun r3!135 () Regex!16975)

(declare-datatypes ((List!66728 0))(
  ( (Nil!66604) (Cons!66604 (h!73052 C!34220) (t!380471 List!66728)) )
))
(declare-fun s!14361 () List!66728)

(declare-datatypes ((tuple2!67664 0))(
  ( (tuple2!67665 (_1!37135 List!66728) (_2!37135 List!66728)) )
))
(declare-fun lt!2476883 () tuple2!67664)

(declare-fun lt!2476856 () Regex!16975)

(declare-fun r2!6280 () Regex!16975)

(declare-fun lambda!395847 () Int)

(assert (=> b!6943703 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476856)) (= lambda!395847 lambda!395845))))

(assert (=> b!6943703 (not (= lambda!395847 lambda!395846))))

(assert (=> b!6943703 true))

(assert (=> b!6943703 true))

(assert (=> b!6943703 true))

(declare-fun lambda!395848 () Int)

(assert (=> b!6943703 (not (= lambda!395848 lambda!395845))))

(assert (=> b!6943703 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476856)) (= lambda!395848 lambda!395846))))

(assert (=> b!6943703 (not (= lambda!395848 lambda!395847))))

(assert (=> b!6943703 true))

(assert (=> b!6943703 true))

(assert (=> b!6943703 true))

(declare-fun lambda!395849 () Int)

(declare-fun lt!2476878 () List!66728)

(assert (=> b!6943703 (= (and (= lt!2476878 s!14361) (= r2!6280 lt!2476856)) (= lambda!395849 lambda!395845))))

(assert (=> b!6943703 (not (= lambda!395849 lambda!395846))))

(assert (=> b!6943703 (= (and (= lt!2476878 (_2!37135 lt!2476883)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395849 lambda!395847))))

(assert (=> b!6943703 (not (= lambda!395849 lambda!395848))))

(assert (=> b!6943703 true))

(assert (=> b!6943703 true))

(assert (=> b!6943703 true))

(declare-fun lambda!395850 () Int)

(assert (=> b!6943703 (not (= lambda!395850 lambda!395849))))

(assert (=> b!6943703 (not (= lambda!395850 lambda!395845))))

(assert (=> b!6943703 (not (= lambda!395850 lambda!395847))))

(assert (=> b!6943703 (= (and (= lt!2476878 (_2!37135 lt!2476883)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395850 lambda!395848))))

(assert (=> b!6943703 (= (and (= lt!2476878 s!14361) (= r2!6280 lt!2476856)) (= lambda!395850 lambda!395846))))

(assert (=> b!6943703 true))

(assert (=> b!6943703 true))

(assert (=> b!6943703 true))

(declare-fun lambda!395851 () Int)

(declare-fun lt!2476875 () Regex!16975)

(assert (=> b!6943703 (= (and (= s!14361 lt!2476878) (= lt!2476875 r1!6342) (= r3!135 r2!6280)) (= lambda!395851 lambda!395849))))

(assert (=> b!6943703 (= (and (= lt!2476875 r1!6342) (= r3!135 lt!2476856)) (= lambda!395851 lambda!395845))))

(assert (=> b!6943703 (= (and (= s!14361 (_2!37135 lt!2476883)) (= lt!2476875 r2!6280)) (= lambda!395851 lambda!395847))))

(assert (=> b!6943703 (not (= lambda!395851 lambda!395850))))

(assert (=> b!6943703 (not (= lambda!395851 lambda!395848))))

(assert (=> b!6943703 (not (= lambda!395851 lambda!395846))))

(assert (=> b!6943703 true))

(assert (=> b!6943703 true))

(assert (=> b!6943703 true))

(declare-fun bs!1856109 () Bool)

(declare-fun b!6943704 () Bool)

(assert (= bs!1856109 (and b!6943704 b!6943703)))

(declare-fun lambda!395852 () Int)

(assert (=> bs!1856109 (= (and (= r1!6342 lt!2476875) (= lt!2476856 r3!135)) (= lambda!395852 lambda!395851))))

(assert (=> bs!1856109 (= (and (= s!14361 lt!2476878) (= lt!2476856 r2!6280)) (= lambda!395852 lambda!395849))))

(assert (=> bs!1856109 (= lambda!395852 lambda!395845)))

(assert (=> bs!1856109 (= (and (= s!14361 (_2!37135 lt!2476883)) (= r1!6342 r2!6280) (= lt!2476856 r3!135)) (= lambda!395852 lambda!395847))))

(assert (=> bs!1856109 (not (= lambda!395852 lambda!395850))))

(assert (=> bs!1856109 (not (= lambda!395852 lambda!395848))))

(assert (=> bs!1856109 (not (= lambda!395852 lambda!395846))))

(assert (=> b!6943704 true))

(assert (=> b!6943704 true))

(assert (=> b!6943704 true))

(declare-datatypes ((Unit!160688 0))(
  ( (Unit!160689) )
))
(declare-fun e!4176850 () Unit!160688)

(declare-fun Unit!160690 () Unit!160688)

(assert (=> b!6943703 (= e!4176850 Unit!160690)))

(declare-fun lt!2476858 () Unit!160688)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2916 (Regex!16975 Regex!16975 List!66728) Unit!160688)

(assert (=> b!6943703 (= lt!2476858 (lemmaFindConcatSeparationEquivalentToExists!2916 r1!6342 lt!2476856 s!14361))))

(declare-fun Exists!3975 (Int) Bool)

(assert (=> b!6943703 (Exists!3975 lambda!395845)))

(declare-fun lt!2476868 () Unit!160688)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2436 (Regex!16975 Regex!16975 List!66728) Unit!160688)

(assert (=> b!6943703 (= lt!2476868 (lemmaExistCutMatchRandMatchRSpecEquivalent!2436 r1!6342 lt!2476856 s!14361))))

(assert (=> b!6943703 (= (Exists!3975 lambda!395845) (Exists!3975 lambda!395846))))

(declare-datatypes ((Option!16744 0))(
  ( (None!16743) (Some!16743 (v!53015 tuple2!67664)) )
))
(declare-fun lt!2476864 () Option!16744)

(declare-fun get!23399 (Option!16744) tuple2!67664)

(assert (=> b!6943703 (= lt!2476883 (get!23399 lt!2476864))))

(declare-fun lt!2476876 () Unit!160688)

(declare-fun mainMatchTheorem!4032 (Regex!16975 List!66728) Unit!160688)

(assert (=> b!6943703 (= lt!2476876 (mainMatchTheorem!4032 r1!6342 (_1!37135 lt!2476883)))))

(declare-fun matchR!9114 (Regex!16975 List!66728) Bool)

(declare-fun matchRSpec!4032 (Regex!16975 List!66728) Bool)

(assert (=> b!6943703 (= (matchR!9114 r1!6342 (_1!37135 lt!2476883)) (matchRSpec!4032 r1!6342 (_1!37135 lt!2476883)))))

(declare-fun lt!2476887 () Unit!160688)

(assert (=> b!6943703 (= lt!2476887 (mainMatchTheorem!4032 lt!2476856 (_2!37135 lt!2476883)))))

(assert (=> b!6943703 (= (matchR!9114 lt!2476856 (_2!37135 lt!2476883)) (matchRSpec!4032 lt!2476856 (_2!37135 lt!2476883)))))

(declare-fun lt!2476872 () Unit!160688)

(assert (=> b!6943703 (= lt!2476872 (lemmaFindConcatSeparationEquivalentToExists!2916 r2!6280 r3!135 (_2!37135 lt!2476883)))))

(declare-fun lt!2476866 () Option!16744)

(declare-fun findConcatSeparation!3158 (Regex!16975 Regex!16975 List!66728 List!66728 List!66728) Option!16744)

(assert (=> b!6943703 (= lt!2476866 (findConcatSeparation!3158 r2!6280 r3!135 Nil!66604 (_2!37135 lt!2476883) (_2!37135 lt!2476883)))))

(declare-fun isDefined!13445 (Option!16744) Bool)

(assert (=> b!6943703 (= (isDefined!13445 lt!2476866) (Exists!3975 lambda!395847))))

(declare-fun lt!2476881 () Unit!160688)

(assert (=> b!6943703 (= lt!2476881 (lemmaExistCutMatchRandMatchRSpecEquivalent!2436 r2!6280 r3!135 (_2!37135 lt!2476883)))))

(assert (=> b!6943703 (= (Exists!3975 lambda!395847) (Exists!3975 lambda!395848))))

(declare-fun lt!2476861 () tuple2!67664)

(assert (=> b!6943703 (= lt!2476861 (get!23399 lt!2476866))))

(declare-fun lt!2476885 () Unit!160688)

(assert (=> b!6943703 (= lt!2476885 (mainMatchTheorem!4032 r2!6280 (_1!37135 lt!2476861)))))

(assert (=> b!6943703 (= (matchR!9114 r2!6280 (_1!37135 lt!2476861)) (matchRSpec!4032 r2!6280 (_1!37135 lt!2476861)))))

(declare-fun lt!2476879 () Unit!160688)

(assert (=> b!6943703 (= lt!2476879 (mainMatchTheorem!4032 r3!135 (_2!37135 lt!2476861)))))

(assert (=> b!6943703 (= (matchR!9114 r3!135 (_2!37135 lt!2476861)) (matchRSpec!4032 r3!135 (_2!37135 lt!2476861)))))

(declare-fun lt!2476871 () Unit!160688)

(declare-fun lemmaConcatAssociativity!3056 (List!66728 List!66728 List!66728) Unit!160688)

(assert (=> b!6943703 (= lt!2476871 (lemmaConcatAssociativity!3056 (_1!37135 lt!2476883) (_1!37135 lt!2476861) (_2!37135 lt!2476861)))))

(declare-fun ++!15014 (List!66728 List!66728) List!66728)

(assert (=> b!6943703 (= lt!2476878 (++!15014 (_1!37135 lt!2476883) (_1!37135 lt!2476861)))))

(assert (=> b!6943703 (= (++!15014 lt!2476878 (_2!37135 lt!2476861)) (++!15014 (_1!37135 lt!2476883) (++!15014 (_1!37135 lt!2476861) (_2!37135 lt!2476861))))))

(declare-fun lt!2476882 () Unit!160688)

(assert (=> b!6943703 (= lt!2476882 (mainMatchTheorem!4032 lt!2476875 lt!2476878))))

(assert (=> b!6943703 (= (matchR!9114 lt!2476875 lt!2476878) (matchRSpec!4032 lt!2476875 lt!2476878))))

(declare-fun lt!2476860 () Unit!160688)

(assert (=> b!6943703 (= lt!2476860 (lemmaFindConcatSeparationEquivalentToExists!2916 r1!6342 r2!6280 lt!2476878))))

(declare-fun lt!2476884 () Bool)

(assert (=> b!6943703 (= lt!2476884 (isDefined!13445 (findConcatSeparation!3158 r1!6342 r2!6280 Nil!66604 lt!2476878 lt!2476878)))))

(assert (=> b!6943703 (= lt!2476884 (Exists!3975 lambda!395849))))

(declare-fun lt!2476873 () Unit!160688)

(assert (=> b!6943703 (= lt!2476873 (lemmaExistCutMatchRandMatchRSpecEquivalent!2436 r1!6342 r2!6280 lt!2476878))))

(assert (=> b!6943703 (= (Exists!3975 lambda!395849) (Exists!3975 lambda!395850))))

(declare-fun lt!2476877 () Unit!160688)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!118 (Regex!16975 Regex!16975 List!66728 List!66728 List!66728 List!66728 List!66728) Unit!160688)

(assert (=> b!6943703 (= lt!2476877 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!118 r1!6342 r2!6280 (_1!37135 lt!2476883) (_1!37135 lt!2476861) lt!2476878 Nil!66604 lt!2476878))))

(assert (=> b!6943703 lt!2476884))

(declare-fun lt!2476862 () Unit!160688)

(assert (=> b!6943703 (= lt!2476862 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!118 lt!2476875 r3!135 lt!2476878 (_2!37135 lt!2476861) s!14361 Nil!66604 s!14361))))

(assert (=> b!6943703 (isDefined!13445 (findConcatSeparation!3158 lt!2476875 r3!135 Nil!66604 s!14361 s!14361))))

(declare-fun lt!2476880 () Unit!160688)

(assert (=> b!6943703 (= lt!2476880 (lemmaFindConcatSeparationEquivalentToExists!2916 lt!2476875 r3!135 s!14361))))

(assert (=> b!6943703 (Exists!3975 lambda!395851)))

(declare-fun lt!2476869 () Unit!160688)

(assert (=> b!6943703 (= lt!2476869 (lemmaExistCutMatchRandMatchRSpecEquivalent!2436 lt!2476875 r3!135 s!14361))))

(assert (=> b!6943703 false))

(declare-fun e!4176855 () Bool)

(declare-fun validRegex!8681 (Regex!16975) Bool)

(assert (=> b!6943704 (= e!4176855 (validRegex!8681 lt!2476856))))

(declare-fun lt!2476857 () Bool)

(assert (=> b!6943704 (= lt!2476857 (Exists!3975 lambda!395852))))

(declare-fun lt!2476874 () Unit!160688)

(assert (=> b!6943704 (= lt!2476874 (lemmaFindConcatSeparationEquivalentToExists!2916 r1!6342 lt!2476856 s!14361))))

(declare-fun lt!2476867 () Unit!160688)

(assert (=> b!6943704 (= lt!2476867 e!4176850)))

(declare-fun c!1288294 () Bool)

(assert (=> b!6943704 (= c!1288294 lt!2476857)))

(assert (=> b!6943704 (= lt!2476857 (isDefined!13445 lt!2476864))))

(assert (=> b!6943704 (= lt!2476864 (findConcatSeparation!3158 r1!6342 lt!2476856 Nil!66604 s!14361 s!14361))))

(declare-fun b!6943705 () Bool)

(declare-fun e!4176853 () Bool)

(declare-fun tp!1914018 () Bool)

(declare-fun tp!1914014 () Bool)

(assert (=> b!6943705 (= e!4176853 (and tp!1914018 tp!1914014))))

(declare-fun b!6943706 () Bool)

(declare-fun tp_is_empty!43175 () Bool)

(assert (=> b!6943706 (= e!4176853 tp_is_empty!43175)))

(declare-fun b!6943707 () Bool)

(declare-fun e!4176852 () Bool)

(declare-fun tp!1914005 () Bool)

(declare-fun tp!1914006 () Bool)

(assert (=> b!6943707 (= e!4176852 (and tp!1914005 tp!1914006))))

(declare-fun b!6943708 () Bool)

(declare-fun e!4176851 () Bool)

(assert (=> b!6943708 (= e!4176851 (not e!4176855))))

(declare-fun res!2832624 () Bool)

(assert (=> b!6943708 (=> res!2832624 e!4176855)))

(declare-fun lt!2476865 () Bool)

(assert (=> b!6943708 (= res!2832624 lt!2476865)))

(declare-fun lt!2476859 () Regex!16975)

(assert (=> b!6943708 (= (matchR!9114 lt!2476859 s!14361) (matchRSpec!4032 lt!2476859 s!14361))))

(declare-fun lt!2476863 () Unit!160688)

(assert (=> b!6943708 (= lt!2476863 (mainMatchTheorem!4032 lt!2476859 s!14361))))

(declare-fun lt!2476870 () Regex!16975)

(assert (=> b!6943708 (= lt!2476865 (matchRSpec!4032 lt!2476870 s!14361))))

(assert (=> b!6943708 (= lt!2476865 (matchR!9114 lt!2476870 s!14361))))

(declare-fun lt!2476886 () Unit!160688)

(assert (=> b!6943708 (= lt!2476886 (mainMatchTheorem!4032 lt!2476870 s!14361))))

(assert (=> b!6943708 (= lt!2476859 (Concat!25820 r1!6342 lt!2476856))))

(assert (=> b!6943708 (= lt!2476856 (Concat!25820 r2!6280 r3!135))))

(assert (=> b!6943708 (= lt!2476870 (Concat!25820 lt!2476875 r3!135))))

(assert (=> b!6943708 (= lt!2476875 (Concat!25820 r1!6342 r2!6280))))

(declare-fun b!6943709 () Bool)

(declare-fun tp!1914015 () Bool)

(declare-fun tp!1914016 () Bool)

(assert (=> b!6943709 (= e!4176853 (and tp!1914015 tp!1914016))))

(declare-fun res!2832626 () Bool)

(assert (=> start!666702 (=> (not res!2832626) (not e!4176851))))

(assert (=> start!666702 (= res!2832626 (validRegex!8681 r1!6342))))

(assert (=> start!666702 e!4176851))

(assert (=> start!666702 e!4176853))

(declare-fun e!4176854 () Bool)

(assert (=> start!666702 e!4176854))

(assert (=> start!666702 e!4176852))

(declare-fun e!4176856 () Bool)

(assert (=> start!666702 e!4176856))

(declare-fun b!6943710 () Bool)

(assert (=> b!6943710 (= e!4176852 tp_is_empty!43175)))

(declare-fun b!6943711 () Bool)

(declare-fun tp!1914010 () Bool)

(declare-fun tp!1914012 () Bool)

(assert (=> b!6943711 (= e!4176854 (and tp!1914010 tp!1914012))))

(declare-fun b!6943712 () Bool)

(declare-fun tp!1914013 () Bool)

(declare-fun tp!1914004 () Bool)

(assert (=> b!6943712 (= e!4176852 (and tp!1914013 tp!1914004))))

(declare-fun b!6943713 () Bool)

(declare-fun tp!1914009 () Bool)

(assert (=> b!6943713 (= e!4176853 tp!1914009)))

(declare-fun b!6943714 () Bool)

(declare-fun Unit!160691 () Unit!160688)

(assert (=> b!6943714 (= e!4176850 Unit!160691)))

(declare-fun b!6943715 () Bool)

(declare-fun tp!1914017 () Bool)

(declare-fun tp!1914019 () Bool)

(assert (=> b!6943715 (= e!4176854 (and tp!1914017 tp!1914019))))

(declare-fun b!6943716 () Bool)

(declare-fun tp!1914007 () Bool)

(assert (=> b!6943716 (= e!4176852 tp!1914007)))

(declare-fun b!6943717 () Bool)

(declare-fun res!2832625 () Bool)

(assert (=> b!6943717 (=> (not res!2832625) (not e!4176851))))

(assert (=> b!6943717 (= res!2832625 (validRegex!8681 r3!135))))

(declare-fun b!6943718 () Bool)

(declare-fun tp!1914008 () Bool)

(assert (=> b!6943718 (= e!4176854 tp!1914008)))

(declare-fun b!6943719 () Bool)

(declare-fun res!2832623 () Bool)

(assert (=> b!6943719 (=> (not res!2832623) (not e!4176851))))

(assert (=> b!6943719 (= res!2832623 (validRegex!8681 r2!6280))))

(declare-fun b!6943720 () Bool)

(assert (=> b!6943720 (= e!4176854 tp_is_empty!43175)))

(declare-fun b!6943721 () Bool)

(declare-fun tp!1914011 () Bool)

(assert (=> b!6943721 (= e!4176856 (and tp_is_empty!43175 tp!1914011))))

(assert (= (and start!666702 res!2832626) b!6943719))

(assert (= (and b!6943719 res!2832623) b!6943717))

(assert (= (and b!6943717 res!2832625) b!6943708))

(assert (= (and b!6943708 (not res!2832624)) b!6943704))

(assert (= (and b!6943704 c!1288294) b!6943703))

(assert (= (and b!6943704 (not c!1288294)) b!6943714))

(get-info :version)

(assert (= (and start!666702 ((_ is ElementMatch!16975) r1!6342)) b!6943706))

(assert (= (and start!666702 ((_ is Concat!25820) r1!6342)) b!6943705))

(assert (= (and start!666702 ((_ is Star!16975) r1!6342)) b!6943713))

(assert (= (and start!666702 ((_ is Union!16975) r1!6342)) b!6943709))

(assert (= (and start!666702 ((_ is ElementMatch!16975) r2!6280)) b!6943720))

(assert (= (and start!666702 ((_ is Concat!25820) r2!6280)) b!6943711))

(assert (= (and start!666702 ((_ is Star!16975) r2!6280)) b!6943718))

(assert (= (and start!666702 ((_ is Union!16975) r2!6280)) b!6943715))

(assert (= (and start!666702 ((_ is ElementMatch!16975) r3!135)) b!6943710))

(assert (= (and start!666702 ((_ is Concat!25820) r3!135)) b!6943707))

(assert (= (and start!666702 ((_ is Star!16975) r3!135)) b!6943716))

(assert (= (and start!666702 ((_ is Union!16975) r3!135)) b!6943712))

(assert (= (and start!666702 ((_ is Cons!66604) s!14361)) b!6943721))

(declare-fun m!7648428 () Bool)

(assert (=> b!6943708 m!7648428))

(declare-fun m!7648430 () Bool)

(assert (=> b!6943708 m!7648430))

(declare-fun m!7648432 () Bool)

(assert (=> b!6943708 m!7648432))

(declare-fun m!7648434 () Bool)

(assert (=> b!6943708 m!7648434))

(declare-fun m!7648436 () Bool)

(assert (=> b!6943708 m!7648436))

(declare-fun m!7648438 () Bool)

(assert (=> b!6943708 m!7648438))

(declare-fun m!7648440 () Bool)

(assert (=> b!6943704 m!7648440))

(declare-fun m!7648442 () Bool)

(assert (=> b!6943704 m!7648442))

(declare-fun m!7648444 () Bool)

(assert (=> b!6943704 m!7648444))

(declare-fun m!7648446 () Bool)

(assert (=> b!6943704 m!7648446))

(declare-fun m!7648448 () Bool)

(assert (=> b!6943704 m!7648448))

(declare-fun m!7648450 () Bool)

(assert (=> b!6943717 m!7648450))

(declare-fun m!7648452 () Bool)

(assert (=> b!6943703 m!7648452))

(declare-fun m!7648454 () Bool)

(assert (=> b!6943703 m!7648454))

(declare-fun m!7648456 () Bool)

(assert (=> b!6943703 m!7648456))

(declare-fun m!7648458 () Bool)

(assert (=> b!6943703 m!7648458))

(declare-fun m!7648460 () Bool)

(assert (=> b!6943703 m!7648460))

(declare-fun m!7648462 () Bool)

(assert (=> b!6943703 m!7648462))

(declare-fun m!7648464 () Bool)

(assert (=> b!6943703 m!7648464))

(declare-fun m!7648466 () Bool)

(assert (=> b!6943703 m!7648466))

(declare-fun m!7648468 () Bool)

(assert (=> b!6943703 m!7648468))

(declare-fun m!7648470 () Bool)

(assert (=> b!6943703 m!7648470))

(declare-fun m!7648472 () Bool)

(assert (=> b!6943703 m!7648472))

(declare-fun m!7648474 () Bool)

(assert (=> b!6943703 m!7648474))

(declare-fun m!7648476 () Bool)

(assert (=> b!6943703 m!7648476))

(declare-fun m!7648478 () Bool)

(assert (=> b!6943703 m!7648478))

(declare-fun m!7648480 () Bool)

(assert (=> b!6943703 m!7648480))

(declare-fun m!7648482 () Bool)

(assert (=> b!6943703 m!7648482))

(declare-fun m!7648484 () Bool)

(assert (=> b!6943703 m!7648484))

(declare-fun m!7648486 () Bool)

(assert (=> b!6943703 m!7648486))

(declare-fun m!7648488 () Bool)

(assert (=> b!6943703 m!7648488))

(assert (=> b!6943703 m!7648476))

(declare-fun m!7648490 () Bool)

(assert (=> b!6943703 m!7648490))

(declare-fun m!7648492 () Bool)

(assert (=> b!6943703 m!7648492))

(declare-fun m!7648494 () Bool)

(assert (=> b!6943703 m!7648494))

(declare-fun m!7648496 () Bool)

(assert (=> b!6943703 m!7648496))

(assert (=> b!6943703 m!7648446))

(declare-fun m!7648498 () Bool)

(assert (=> b!6943703 m!7648498))

(declare-fun m!7648500 () Bool)

(assert (=> b!6943703 m!7648500))

(declare-fun m!7648502 () Bool)

(assert (=> b!6943703 m!7648502))

(declare-fun m!7648504 () Bool)

(assert (=> b!6943703 m!7648504))

(declare-fun m!7648506 () Bool)

(assert (=> b!6943703 m!7648506))

(declare-fun m!7648508 () Bool)

(assert (=> b!6943703 m!7648508))

(declare-fun m!7648510 () Bool)

(assert (=> b!6943703 m!7648510))

(declare-fun m!7648512 () Bool)

(assert (=> b!6943703 m!7648512))

(declare-fun m!7648514 () Bool)

(assert (=> b!6943703 m!7648514))

(assert (=> b!6943703 m!7648488))

(declare-fun m!7648516 () Bool)

(assert (=> b!6943703 m!7648516))

(declare-fun m!7648518 () Bool)

(assert (=> b!6943703 m!7648518))

(assert (=> b!6943703 m!7648496))

(declare-fun m!7648520 () Bool)

(assert (=> b!6943703 m!7648520))

(declare-fun m!7648522 () Bool)

(assert (=> b!6943703 m!7648522))

(declare-fun m!7648524 () Bool)

(assert (=> b!6943703 m!7648524))

(declare-fun m!7648526 () Bool)

(assert (=> b!6943703 m!7648526))

(declare-fun m!7648528 () Bool)

(assert (=> b!6943703 m!7648528))

(declare-fun m!7648530 () Bool)

(assert (=> b!6943703 m!7648530))

(assert (=> b!6943703 m!7648462))

(declare-fun m!7648532 () Bool)

(assert (=> b!6943703 m!7648532))

(declare-fun m!7648534 () Bool)

(assert (=> b!6943703 m!7648534))

(assert (=> b!6943703 m!7648480))

(declare-fun m!7648536 () Bool)

(assert (=> b!6943703 m!7648536))

(declare-fun m!7648538 () Bool)

(assert (=> b!6943703 m!7648538))

(assert (=> b!6943703 m!7648472))

(declare-fun m!7648540 () Bool)

(assert (=> b!6943719 m!7648540))

(declare-fun m!7648542 () Bool)

(assert (=> start!666702 m!7648542))

(check-sat (not b!6943718) (not b!6943713) (not b!6943717) (not b!6943715) (not start!666702) (not b!6943704) (not b!6943709) (not b!6943721) (not b!6943712) (not b!6943719) tp_is_empty!43175 (not b!6943707) (not b!6943711) (not b!6943703) (not b!6943708) (not b!6943705) (not b!6943716))
(check-sat)
(get-model)

(declare-fun b!6943746 () Bool)

(declare-fun e!4176872 () Bool)

(declare-fun call!630754 () Bool)

(assert (=> b!6943746 (= e!4176872 call!630754)))

(declare-fun bm!630747 () Bool)

(declare-fun call!630753 () Bool)

(declare-fun c!1288300 () Bool)

(assert (=> bm!630747 (= call!630753 (validRegex!8681 (ite c!1288300 (regTwo!34463 r1!6342) (regOne!34462 r1!6342))))))

(declare-fun b!6943747 () Bool)

(declare-fun e!4176873 () Bool)

(declare-fun e!4176874 () Bool)

(assert (=> b!6943747 (= e!4176873 e!4176874)))

(declare-fun res!2832639 () Bool)

(assert (=> b!6943747 (=> (not res!2832639) (not e!4176874))))

(assert (=> b!6943747 (= res!2832639 call!630753)))

(declare-fun d!2168195 () Bool)

(declare-fun res!2832641 () Bool)

(declare-fun e!4176877 () Bool)

(assert (=> d!2168195 (=> res!2832641 e!4176877)))

(assert (=> d!2168195 (= res!2832641 ((_ is ElementMatch!16975) r1!6342))))

(assert (=> d!2168195 (= (validRegex!8681 r1!6342) e!4176877)))

(declare-fun bm!630748 () Bool)

(declare-fun c!1288301 () Bool)

(assert (=> bm!630748 (= call!630754 (validRegex!8681 (ite c!1288301 (reg!17304 r1!6342) (ite c!1288300 (regOne!34463 r1!6342) (regTwo!34462 r1!6342)))))))

(declare-fun b!6943748 () Bool)

(declare-fun call!630752 () Bool)

(assert (=> b!6943748 (= e!4176874 call!630752)))

(declare-fun b!6943749 () Bool)

(declare-fun res!2832637 () Bool)

(assert (=> b!6943749 (=> res!2832637 e!4176873)))

(assert (=> b!6943749 (= res!2832637 (not ((_ is Concat!25820) r1!6342)))))

(declare-fun e!4176875 () Bool)

(assert (=> b!6943749 (= e!4176875 e!4176873)))

(declare-fun b!6943750 () Bool)

(declare-fun e!4176871 () Bool)

(assert (=> b!6943750 (= e!4176871 call!630753)))

(declare-fun b!6943751 () Bool)

(declare-fun e!4176876 () Bool)

(assert (=> b!6943751 (= e!4176876 e!4176875)))

(assert (=> b!6943751 (= c!1288300 ((_ is Union!16975) r1!6342))))

(declare-fun b!6943752 () Bool)

(declare-fun res!2832640 () Bool)

(assert (=> b!6943752 (=> (not res!2832640) (not e!4176871))))

(assert (=> b!6943752 (= res!2832640 call!630752)))

(assert (=> b!6943752 (= e!4176875 e!4176871)))

(declare-fun bm!630749 () Bool)

(assert (=> bm!630749 (= call!630752 call!630754)))

(declare-fun b!6943753 () Bool)

(assert (=> b!6943753 (= e!4176877 e!4176876)))

(assert (=> b!6943753 (= c!1288301 ((_ is Star!16975) r1!6342))))

(declare-fun b!6943754 () Bool)

(assert (=> b!6943754 (= e!4176876 e!4176872)))

(declare-fun res!2832638 () Bool)

(declare-fun nullable!6788 (Regex!16975) Bool)

(assert (=> b!6943754 (= res!2832638 (not (nullable!6788 (reg!17304 r1!6342))))))

(assert (=> b!6943754 (=> (not res!2832638) (not e!4176872))))

(assert (= (and d!2168195 (not res!2832641)) b!6943753))

(assert (= (and b!6943753 c!1288301) b!6943754))

(assert (= (and b!6943753 (not c!1288301)) b!6943751))

(assert (= (and b!6943754 res!2832638) b!6943746))

(assert (= (and b!6943751 c!1288300) b!6943752))

(assert (= (and b!6943751 (not c!1288300)) b!6943749))

(assert (= (and b!6943752 res!2832640) b!6943750))

(assert (= (and b!6943749 (not res!2832637)) b!6943747))

(assert (= (and b!6943747 res!2832639) b!6943748))

(assert (= (or b!6943752 b!6943748) bm!630749))

(assert (= (or b!6943750 b!6943747) bm!630747))

(assert (= (or b!6943746 bm!630749) bm!630748))

(declare-fun m!7648544 () Bool)

(assert (=> bm!630747 m!7648544))

(declare-fun m!7648546 () Bool)

(assert (=> bm!630748 m!7648546))

(declare-fun m!7648548 () Bool)

(assert (=> b!6943754 m!7648548))

(assert (=> start!666702 d!2168195))

(declare-fun bs!1856115 () Bool)

(declare-fun b!6943858 () Bool)

(assert (= bs!1856115 (and b!6943858 b!6943703)))

(declare-fun lambda!395860 () Int)

(assert (=> bs!1856115 (not (= lambda!395860 lambda!395851))))

(assert (=> bs!1856115 (not (= lambda!395860 lambda!395849))))

(declare-fun bs!1856116 () Bool)

(assert (= bs!1856116 (and b!6943858 b!6943704)))

(assert (=> bs!1856116 (not (= lambda!395860 lambda!395852))))

(assert (=> bs!1856115 (not (= lambda!395860 lambda!395845))))

(assert (=> bs!1856115 (not (= lambda!395860 lambda!395847))))

(assert (=> bs!1856115 (not (= lambda!395860 lambda!395850))))

(assert (=> bs!1856115 (not (= lambda!395860 lambda!395848))))

(assert (=> bs!1856115 (not (= lambda!395860 lambda!395846))))

(assert (=> b!6943858 true))

(assert (=> b!6943858 true))

(declare-fun bs!1856117 () Bool)

(declare-fun b!6943853 () Bool)

(assert (= bs!1856117 (and b!6943853 b!6943703)))

(declare-fun lambda!395861 () Int)

(assert (=> bs!1856117 (not (= lambda!395861 lambda!395851))))

(assert (=> bs!1856117 (not (= lambda!395861 lambda!395849))))

(declare-fun bs!1856118 () Bool)

(assert (= bs!1856118 (and b!6943853 b!6943704)))

(assert (=> bs!1856118 (not (= lambda!395861 lambda!395852))))

(assert (=> bs!1856117 (not (= lambda!395861 lambda!395845))))

(declare-fun bs!1856119 () Bool)

(assert (= bs!1856119 (and b!6943853 b!6943858)))

(assert (=> bs!1856119 (not (= lambda!395861 lambda!395860))))

(assert (=> bs!1856117 (not (= lambda!395861 lambda!395847))))

(assert (=> bs!1856117 (= (and (= s!14361 lt!2476878) (= (regOne!34462 lt!2476859) r1!6342) (= (regTwo!34462 lt!2476859) r2!6280)) (= lambda!395861 lambda!395850))))

(assert (=> bs!1856117 (= (and (= s!14361 (_2!37135 lt!2476883)) (= (regOne!34462 lt!2476859) r2!6280) (= (regTwo!34462 lt!2476859) r3!135)) (= lambda!395861 lambda!395848))))

(assert (=> bs!1856117 (= (and (= (regOne!34462 lt!2476859) r1!6342) (= (regTwo!34462 lt!2476859) lt!2476856)) (= lambda!395861 lambda!395846))))

(assert (=> b!6943853 true))

(assert (=> b!6943853 true))

(declare-fun bm!630763 () Bool)

(declare-fun call!630769 () Bool)

(declare-fun isEmpty!38878 (List!66728) Bool)

(assert (=> bm!630763 (= call!630769 (isEmpty!38878 s!14361))))

(declare-fun b!6943845 () Bool)

(declare-fun c!1288325 () Bool)

(assert (=> b!6943845 (= c!1288325 ((_ is Union!16975) lt!2476859))))

(declare-fun e!4176942 () Bool)

(declare-fun e!4176937 () Bool)

(assert (=> b!6943845 (= e!4176942 e!4176937)))

(declare-fun b!6943846 () Bool)

(assert (=> b!6943846 (= e!4176942 (= s!14361 (Cons!66604 (c!1288295 lt!2476859) Nil!66604)))))

(declare-fun bm!630764 () Bool)

(declare-fun c!1288326 () Bool)

(declare-fun call!630768 () Bool)

(assert (=> bm!630764 (= call!630768 (Exists!3975 (ite c!1288326 lambda!395860 lambda!395861)))))

(declare-fun b!6943847 () Bool)

(declare-fun res!2832692 () Bool)

(declare-fun e!4176940 () Bool)

(assert (=> b!6943847 (=> res!2832692 e!4176940)))

(assert (=> b!6943847 (= res!2832692 call!630769)))

(declare-fun e!4176941 () Bool)

(assert (=> b!6943847 (= e!4176941 e!4176940)))

(declare-fun d!2168199 () Bool)

(declare-fun c!1288322 () Bool)

(assert (=> d!2168199 (= c!1288322 ((_ is EmptyExpr!16975) lt!2476859))))

(declare-fun e!4176945 () Bool)

(assert (=> d!2168199 (= (matchRSpec!4032 lt!2476859 s!14361) e!4176945)))

(declare-fun b!6943849 () Bool)

(declare-fun e!4176934 () Bool)

(assert (=> b!6943849 (= e!4176945 e!4176934)))

(declare-fun res!2832693 () Bool)

(assert (=> b!6943849 (= res!2832693 (not ((_ is EmptyLang!16975) lt!2476859)))))

(assert (=> b!6943849 (=> (not res!2832693) (not e!4176934))))

(declare-fun b!6943851 () Bool)

(declare-fun e!4176939 () Bool)

(assert (=> b!6943851 (= e!4176939 (matchRSpec!4032 (regTwo!34463 lt!2476859) s!14361))))

(assert (=> b!6943853 (= e!4176941 call!630768)))

(declare-fun b!6943855 () Bool)

(declare-fun c!1288323 () Bool)

(assert (=> b!6943855 (= c!1288323 ((_ is ElementMatch!16975) lt!2476859))))

(assert (=> b!6943855 (= e!4176934 e!4176942)))

(declare-fun b!6943857 () Bool)

(assert (=> b!6943857 (= e!4176937 e!4176941)))

(assert (=> b!6943857 (= c!1288326 ((_ is Star!16975) lt!2476859))))

(assert (=> b!6943858 (= e!4176940 call!630768)))

(declare-fun b!6943859 () Bool)

(assert (=> b!6943859 (= e!4176945 call!630769)))

(declare-fun b!6943860 () Bool)

(assert (=> b!6943860 (= e!4176937 e!4176939)))

(declare-fun res!2832695 () Bool)

(assert (=> b!6943860 (= res!2832695 (matchRSpec!4032 (regOne!34463 lt!2476859) s!14361))))

(assert (=> b!6943860 (=> res!2832695 e!4176939)))

(assert (= (and d!2168199 c!1288322) b!6943859))

(assert (= (and d!2168199 (not c!1288322)) b!6943849))

(assert (= (and b!6943849 res!2832693) b!6943855))

(assert (= (and b!6943855 c!1288323) b!6943846))

(assert (= (and b!6943855 (not c!1288323)) b!6943845))

(assert (= (and b!6943845 c!1288325) b!6943860))

(assert (= (and b!6943845 (not c!1288325)) b!6943857))

(assert (= (and b!6943860 (not res!2832695)) b!6943851))

(assert (= (and b!6943857 c!1288326) b!6943847))

(assert (= (and b!6943857 (not c!1288326)) b!6943853))

(assert (= (and b!6943847 (not res!2832692)) b!6943858))

(assert (= (or b!6943858 b!6943853) bm!630764))

(assert (= (or b!6943859 b!6943847) bm!630763))

(declare-fun m!7648606 () Bool)

(assert (=> bm!630763 m!7648606))

(declare-fun m!7648608 () Bool)

(assert (=> bm!630764 m!7648608))

(declare-fun m!7648610 () Bool)

(assert (=> b!6943851 m!7648610))

(declare-fun m!7648612 () Bool)

(assert (=> b!6943860 m!7648612))

(assert (=> b!6943708 d!2168199))

(declare-fun b!6943961 () Bool)

(declare-fun e!4177002 () Bool)

(declare-fun e!4177005 () Bool)

(assert (=> b!6943961 (= e!4177002 e!4177005)))

(declare-fun res!2832765 () Bool)

(assert (=> b!6943961 (=> (not res!2832765) (not e!4177005))))

(declare-fun lt!2476912 () Bool)

(assert (=> b!6943961 (= res!2832765 (not lt!2476912))))

(declare-fun b!6943962 () Bool)

(declare-fun e!4177006 () Bool)

(assert (=> b!6943962 (= e!4177006 (not lt!2476912))))

(declare-fun b!6943963 () Bool)

(declare-fun res!2832762 () Bool)

(assert (=> b!6943963 (=> res!2832762 e!4177002)))

(assert (=> b!6943963 (= res!2832762 (not ((_ is ElementMatch!16975) lt!2476859)))))

(assert (=> b!6943963 (= e!4177006 e!4177002)))

(declare-fun b!6943964 () Bool)

(declare-fun e!4177001 () Bool)

(assert (=> b!6943964 (= e!4177001 e!4177006)))

(declare-fun c!1288349 () Bool)

(assert (=> b!6943964 (= c!1288349 ((_ is EmptyLang!16975) lt!2476859))))

(declare-fun b!6943965 () Bool)

(declare-fun e!4177003 () Bool)

(assert (=> b!6943965 (= e!4177005 e!4177003)))

(declare-fun res!2832763 () Bool)

(assert (=> b!6943965 (=> res!2832763 e!4177003)))

(declare-fun call!630784 () Bool)

(assert (=> b!6943965 (= res!2832763 call!630784)))

(declare-fun b!6943966 () Bool)

(declare-fun e!4177007 () Bool)

(declare-fun derivativeStep!5463 (Regex!16975 C!34220) Regex!16975)

(declare-fun head!13916 (List!66728) C!34220)

(declare-fun tail!12968 (List!66728) List!66728)

(assert (=> b!6943966 (= e!4177007 (matchR!9114 (derivativeStep!5463 lt!2476859 (head!13916 s!14361)) (tail!12968 s!14361)))))

(declare-fun b!6943967 () Bool)

(assert (=> b!6943967 (= e!4177003 (not (= (head!13916 s!14361) (c!1288295 lt!2476859))))))

(declare-fun b!6943969 () Bool)

(declare-fun res!2832760 () Bool)

(declare-fun e!4177004 () Bool)

(assert (=> b!6943969 (=> (not res!2832760) (not e!4177004))))

(assert (=> b!6943969 (= res!2832760 (not call!630784))))

(declare-fun b!6943970 () Bool)

(declare-fun res!2832761 () Bool)

(assert (=> b!6943970 (=> res!2832761 e!4177002)))

(assert (=> b!6943970 (= res!2832761 e!4177004)))

(declare-fun res!2832758 () Bool)

(assert (=> b!6943970 (=> (not res!2832758) (not e!4177004))))

(assert (=> b!6943970 (= res!2832758 lt!2476912)))

(declare-fun bm!630779 () Bool)

(assert (=> bm!630779 (= call!630784 (isEmpty!38878 s!14361))))

(declare-fun b!6943971 () Bool)

(declare-fun res!2832764 () Bool)

(assert (=> b!6943971 (=> res!2832764 e!4177003)))

(assert (=> b!6943971 (= res!2832764 (not (isEmpty!38878 (tail!12968 s!14361))))))

(declare-fun b!6943972 () Bool)

(assert (=> b!6943972 (= e!4177007 (nullable!6788 lt!2476859))))

(declare-fun b!6943968 () Bool)

(assert (=> b!6943968 (= e!4177004 (= (head!13916 s!14361) (c!1288295 lt!2476859)))))

(declare-fun d!2168217 () Bool)

(assert (=> d!2168217 e!4177001))

(declare-fun c!1288348 () Bool)

(assert (=> d!2168217 (= c!1288348 ((_ is EmptyExpr!16975) lt!2476859))))

(assert (=> d!2168217 (= lt!2476912 e!4177007)))

(declare-fun c!1288347 () Bool)

(assert (=> d!2168217 (= c!1288347 (isEmpty!38878 s!14361))))

(assert (=> d!2168217 (validRegex!8681 lt!2476859)))

(assert (=> d!2168217 (= (matchR!9114 lt!2476859 s!14361) lt!2476912)))

(declare-fun b!6943973 () Bool)

(assert (=> b!6943973 (= e!4177001 (= lt!2476912 call!630784))))

(declare-fun b!6943974 () Bool)

(declare-fun res!2832759 () Bool)

(assert (=> b!6943974 (=> (not res!2832759) (not e!4177004))))

(assert (=> b!6943974 (= res!2832759 (isEmpty!38878 (tail!12968 s!14361)))))

(assert (= (and d!2168217 c!1288347) b!6943972))

(assert (= (and d!2168217 (not c!1288347)) b!6943966))

(assert (= (and d!2168217 c!1288348) b!6943973))

(assert (= (and d!2168217 (not c!1288348)) b!6943964))

(assert (= (and b!6943964 c!1288349) b!6943962))

(assert (= (and b!6943964 (not c!1288349)) b!6943963))

(assert (= (and b!6943963 (not res!2832762)) b!6943970))

(assert (= (and b!6943970 res!2832758) b!6943969))

(assert (= (and b!6943969 res!2832760) b!6943974))

(assert (= (and b!6943974 res!2832759) b!6943968))

(assert (= (and b!6943970 (not res!2832761)) b!6943961))

(assert (= (and b!6943961 res!2832765) b!6943965))

(assert (= (and b!6943965 (not res!2832763)) b!6943971))

(assert (= (and b!6943971 (not res!2832764)) b!6943967))

(assert (= (or b!6943973 b!6943965 b!6943969) bm!630779))

(declare-fun m!7648656 () Bool)

(assert (=> b!6943972 m!7648656))

(declare-fun m!7648658 () Bool)

(assert (=> b!6943966 m!7648658))

(assert (=> b!6943966 m!7648658))

(declare-fun m!7648660 () Bool)

(assert (=> b!6943966 m!7648660))

(declare-fun m!7648662 () Bool)

(assert (=> b!6943966 m!7648662))

(assert (=> b!6943966 m!7648660))

(assert (=> b!6943966 m!7648662))

(declare-fun m!7648664 () Bool)

(assert (=> b!6943966 m!7648664))

(assert (=> b!6943968 m!7648658))

(assert (=> b!6943967 m!7648658))

(assert (=> b!6943974 m!7648662))

(assert (=> b!6943974 m!7648662))

(declare-fun m!7648668 () Bool)

(assert (=> b!6943974 m!7648668))

(assert (=> b!6943971 m!7648662))

(assert (=> b!6943971 m!7648662))

(assert (=> b!6943971 m!7648668))

(assert (=> bm!630779 m!7648606))

(assert (=> d!2168217 m!7648606))

(declare-fun m!7648672 () Bool)

(assert (=> d!2168217 m!7648672))

(assert (=> b!6943708 d!2168217))

(declare-fun d!2168241 () Bool)

(assert (=> d!2168241 (= (matchR!9114 lt!2476870 s!14361) (matchRSpec!4032 lt!2476870 s!14361))))

(declare-fun lt!2476918 () Unit!160688)

(declare-fun choose!51741 (Regex!16975 List!66728) Unit!160688)

(assert (=> d!2168241 (= lt!2476918 (choose!51741 lt!2476870 s!14361))))

(assert (=> d!2168241 (validRegex!8681 lt!2476870)))

(assert (=> d!2168241 (= (mainMatchTheorem!4032 lt!2476870 s!14361) lt!2476918)))

(declare-fun bs!1856137 () Bool)

(assert (= bs!1856137 d!2168241))

(assert (=> bs!1856137 m!7648430))

(assert (=> bs!1856137 m!7648432))

(declare-fun m!7648674 () Bool)

(assert (=> bs!1856137 m!7648674))

(declare-fun m!7648676 () Bool)

(assert (=> bs!1856137 m!7648676))

(assert (=> b!6943708 d!2168241))

(declare-fun bs!1856138 () Bool)

(declare-fun b!6944011 () Bool)

(assert (= bs!1856138 (and b!6944011 b!6943703)))

(declare-fun lambda!395873 () Int)

(assert (=> bs!1856138 (not (= lambda!395873 lambda!395851))))

(assert (=> bs!1856138 (not (= lambda!395873 lambda!395849))))

(declare-fun bs!1856139 () Bool)

(assert (= bs!1856139 (and b!6944011 b!6943704)))

(assert (=> bs!1856139 (not (= lambda!395873 lambda!395852))))

(assert (=> bs!1856138 (not (= lambda!395873 lambda!395845))))

(declare-fun bs!1856140 () Bool)

(assert (= bs!1856140 (and b!6944011 b!6943858)))

(assert (=> bs!1856140 (= (and (= (reg!17304 lt!2476870) (reg!17304 lt!2476859)) (= lt!2476870 lt!2476859)) (= lambda!395873 lambda!395860))))

(assert (=> bs!1856138 (not (= lambda!395873 lambda!395847))))

(assert (=> bs!1856138 (not (= lambda!395873 lambda!395850))))

(declare-fun bs!1856141 () Bool)

(assert (= bs!1856141 (and b!6944011 b!6943853)))

(assert (=> bs!1856141 (not (= lambda!395873 lambda!395861))))

(assert (=> bs!1856138 (not (= lambda!395873 lambda!395848))))

(assert (=> bs!1856138 (not (= lambda!395873 lambda!395846))))

(assert (=> b!6944011 true))

(assert (=> b!6944011 true))

(declare-fun bs!1856142 () Bool)

(declare-fun b!6944008 () Bool)

(assert (= bs!1856142 (and b!6944008 b!6943703)))

(declare-fun lambda!395874 () Int)

(assert (=> bs!1856142 (not (= lambda!395874 lambda!395851))))

(assert (=> bs!1856142 (not (= lambda!395874 lambda!395849))))

(declare-fun bs!1856143 () Bool)

(assert (= bs!1856143 (and b!6944008 b!6943704)))

(assert (=> bs!1856143 (not (= lambda!395874 lambda!395852))))

(assert (=> bs!1856142 (not (= lambda!395874 lambda!395845))))

(declare-fun bs!1856145 () Bool)

(assert (= bs!1856145 (and b!6944008 b!6943858)))

(assert (=> bs!1856145 (not (= lambda!395874 lambda!395860))))

(assert (=> bs!1856142 (not (= lambda!395874 lambda!395847))))

(assert (=> bs!1856142 (= (and (= s!14361 lt!2476878) (= (regOne!34462 lt!2476870) r1!6342) (= (regTwo!34462 lt!2476870) r2!6280)) (= lambda!395874 lambda!395850))))

(declare-fun bs!1856150 () Bool)

(assert (= bs!1856150 (and b!6944008 b!6943853)))

(assert (=> bs!1856150 (= (and (= (regOne!34462 lt!2476870) (regOne!34462 lt!2476859)) (= (regTwo!34462 lt!2476870) (regTwo!34462 lt!2476859))) (= lambda!395874 lambda!395861))))

(assert (=> bs!1856142 (= (and (= (regOne!34462 lt!2476870) r1!6342) (= (regTwo!34462 lt!2476870) lt!2476856)) (= lambda!395874 lambda!395846))))

(assert (=> bs!1856142 (= (and (= s!14361 (_2!37135 lt!2476883)) (= (regOne!34462 lt!2476870) r2!6280) (= (regTwo!34462 lt!2476870) r3!135)) (= lambda!395874 lambda!395848))))

(declare-fun bs!1856151 () Bool)

(assert (= bs!1856151 (and b!6944008 b!6944011)))

(assert (=> bs!1856151 (not (= lambda!395874 lambda!395873))))

(assert (=> b!6944008 true))

(assert (=> b!6944008 true))

(declare-fun bm!630780 () Bool)

(declare-fun call!630786 () Bool)

(assert (=> bm!630780 (= call!630786 (isEmpty!38878 s!14361))))

(declare-fun b!6944003 () Bool)

(declare-fun c!1288360 () Bool)

(assert (=> b!6944003 (= c!1288360 ((_ is Union!16975) lt!2476870))))

(declare-fun e!4177029 () Bool)

(declare-fun e!4177025 () Bool)

(assert (=> b!6944003 (= e!4177029 e!4177025)))

(declare-fun b!6944004 () Bool)

(assert (=> b!6944004 (= e!4177029 (= s!14361 (Cons!66604 (c!1288295 lt!2476870) Nil!66604)))))

(declare-fun call!630785 () Bool)

(declare-fun bm!630781 () Bool)

(declare-fun c!1288361 () Bool)

(assert (=> bm!630781 (= call!630785 (Exists!3975 (ite c!1288361 lambda!395873 lambda!395874)))))

(declare-fun b!6944005 () Bool)

(declare-fun res!2832778 () Bool)

(declare-fun e!4177027 () Bool)

(assert (=> b!6944005 (=> res!2832778 e!4177027)))

(assert (=> b!6944005 (= res!2832778 call!630786)))

(declare-fun e!4177028 () Bool)

(assert (=> b!6944005 (= e!4177028 e!4177027)))

(declare-fun d!2168243 () Bool)

(declare-fun c!1288358 () Bool)

(assert (=> d!2168243 (= c!1288358 ((_ is EmptyExpr!16975) lt!2476870))))

(declare-fun e!4177030 () Bool)

(assert (=> d!2168243 (= (matchRSpec!4032 lt!2476870 s!14361) e!4177030)))

(declare-fun b!6944006 () Bool)

(declare-fun e!4177024 () Bool)

(assert (=> b!6944006 (= e!4177030 e!4177024)))

(declare-fun res!2832779 () Bool)

(assert (=> b!6944006 (= res!2832779 (not ((_ is EmptyLang!16975) lt!2476870)))))

(assert (=> b!6944006 (=> (not res!2832779) (not e!4177024))))

(declare-fun b!6944007 () Bool)

(declare-fun e!4177026 () Bool)

(assert (=> b!6944007 (= e!4177026 (matchRSpec!4032 (regTwo!34463 lt!2476870) s!14361))))

(assert (=> b!6944008 (= e!4177028 call!630785)))

(declare-fun b!6944009 () Bool)

(declare-fun c!1288359 () Bool)

(assert (=> b!6944009 (= c!1288359 ((_ is ElementMatch!16975) lt!2476870))))

(assert (=> b!6944009 (= e!4177024 e!4177029)))

(declare-fun b!6944010 () Bool)

(assert (=> b!6944010 (= e!4177025 e!4177028)))

(assert (=> b!6944010 (= c!1288361 ((_ is Star!16975) lt!2476870))))

(assert (=> b!6944011 (= e!4177027 call!630785)))

(declare-fun b!6944012 () Bool)

(assert (=> b!6944012 (= e!4177030 call!630786)))

(declare-fun b!6944013 () Bool)

(assert (=> b!6944013 (= e!4177025 e!4177026)))

(declare-fun res!2832780 () Bool)

(assert (=> b!6944013 (= res!2832780 (matchRSpec!4032 (regOne!34463 lt!2476870) s!14361))))

(assert (=> b!6944013 (=> res!2832780 e!4177026)))

(assert (= (and d!2168243 c!1288358) b!6944012))

(assert (= (and d!2168243 (not c!1288358)) b!6944006))

(assert (= (and b!6944006 res!2832779) b!6944009))

(assert (= (and b!6944009 c!1288359) b!6944004))

(assert (= (and b!6944009 (not c!1288359)) b!6944003))

(assert (= (and b!6944003 c!1288360) b!6944013))

(assert (= (and b!6944003 (not c!1288360)) b!6944010))

(assert (= (and b!6944013 (not res!2832780)) b!6944007))

(assert (= (and b!6944010 c!1288361) b!6944005))

(assert (= (and b!6944010 (not c!1288361)) b!6944008))

(assert (= (and b!6944005 (not res!2832778)) b!6944011))

(assert (= (or b!6944011 b!6944008) bm!630781))

(assert (= (or b!6944012 b!6944005) bm!630780))

(assert (=> bm!630780 m!7648606))

(declare-fun m!7648678 () Bool)

(assert (=> bm!630781 m!7648678))

(declare-fun m!7648680 () Bool)

(assert (=> b!6944007 m!7648680))

(declare-fun m!7648682 () Bool)

(assert (=> b!6944013 m!7648682))

(assert (=> b!6943708 d!2168243))

(declare-fun b!6944029 () Bool)

(declare-fun e!4177041 () Bool)

(declare-fun e!4177044 () Bool)

(assert (=> b!6944029 (= e!4177041 e!4177044)))

(declare-fun res!2832795 () Bool)

(assert (=> b!6944029 (=> (not res!2832795) (not e!4177044))))

(declare-fun lt!2476919 () Bool)

(assert (=> b!6944029 (= res!2832795 (not lt!2476919))))

(declare-fun b!6944030 () Bool)

(declare-fun e!4177045 () Bool)

(assert (=> b!6944030 (= e!4177045 (not lt!2476919))))

(declare-fun b!6944031 () Bool)

(declare-fun res!2832792 () Bool)

(assert (=> b!6944031 (=> res!2832792 e!4177041)))

(assert (=> b!6944031 (= res!2832792 (not ((_ is ElementMatch!16975) lt!2476870)))))

(assert (=> b!6944031 (= e!4177045 e!4177041)))

(declare-fun b!6944032 () Bool)

(declare-fun e!4177040 () Bool)

(assert (=> b!6944032 (= e!4177040 e!4177045)))

(declare-fun c!1288368 () Bool)

(assert (=> b!6944032 (= c!1288368 ((_ is EmptyLang!16975) lt!2476870))))

(declare-fun b!6944033 () Bool)

(declare-fun e!4177042 () Bool)

(assert (=> b!6944033 (= e!4177044 e!4177042)))

(declare-fun res!2832793 () Bool)

(assert (=> b!6944033 (=> res!2832793 e!4177042)))

(declare-fun call!630793 () Bool)

(assert (=> b!6944033 (= res!2832793 call!630793)))

(declare-fun b!6944034 () Bool)

(declare-fun e!4177046 () Bool)

(assert (=> b!6944034 (= e!4177046 (matchR!9114 (derivativeStep!5463 lt!2476870 (head!13916 s!14361)) (tail!12968 s!14361)))))

(declare-fun b!6944035 () Bool)

(assert (=> b!6944035 (= e!4177042 (not (= (head!13916 s!14361) (c!1288295 lt!2476870))))))

(declare-fun b!6944037 () Bool)

(declare-fun res!2832790 () Bool)

(declare-fun e!4177043 () Bool)

(assert (=> b!6944037 (=> (not res!2832790) (not e!4177043))))

(assert (=> b!6944037 (= res!2832790 (not call!630793))))

(declare-fun b!6944038 () Bool)

(declare-fun res!2832791 () Bool)

(assert (=> b!6944038 (=> res!2832791 e!4177041)))

(assert (=> b!6944038 (= res!2832791 e!4177043)))

(declare-fun res!2832788 () Bool)

(assert (=> b!6944038 (=> (not res!2832788) (not e!4177043))))

(assert (=> b!6944038 (= res!2832788 lt!2476919)))

(declare-fun bm!630788 () Bool)

(assert (=> bm!630788 (= call!630793 (isEmpty!38878 s!14361))))

(declare-fun b!6944039 () Bool)

(declare-fun res!2832794 () Bool)

(assert (=> b!6944039 (=> res!2832794 e!4177042)))

(assert (=> b!6944039 (= res!2832794 (not (isEmpty!38878 (tail!12968 s!14361))))))

(declare-fun b!6944040 () Bool)

(assert (=> b!6944040 (= e!4177046 (nullable!6788 lt!2476870))))

(declare-fun b!6944036 () Bool)

(assert (=> b!6944036 (= e!4177043 (= (head!13916 s!14361) (c!1288295 lt!2476870)))))

(declare-fun d!2168245 () Bool)

(assert (=> d!2168245 e!4177040))

(declare-fun c!1288367 () Bool)

(assert (=> d!2168245 (= c!1288367 ((_ is EmptyExpr!16975) lt!2476870))))

(assert (=> d!2168245 (= lt!2476919 e!4177046)))

(declare-fun c!1288366 () Bool)

(assert (=> d!2168245 (= c!1288366 (isEmpty!38878 s!14361))))

(assert (=> d!2168245 (validRegex!8681 lt!2476870)))

(assert (=> d!2168245 (= (matchR!9114 lt!2476870 s!14361) lt!2476919)))

(declare-fun b!6944041 () Bool)

(assert (=> b!6944041 (= e!4177040 (= lt!2476919 call!630793))))

(declare-fun b!6944042 () Bool)

(declare-fun res!2832789 () Bool)

(assert (=> b!6944042 (=> (not res!2832789) (not e!4177043))))

(assert (=> b!6944042 (= res!2832789 (isEmpty!38878 (tail!12968 s!14361)))))

(assert (= (and d!2168245 c!1288366) b!6944040))

(assert (= (and d!2168245 (not c!1288366)) b!6944034))

(assert (= (and d!2168245 c!1288367) b!6944041))

(assert (= (and d!2168245 (not c!1288367)) b!6944032))

(assert (= (and b!6944032 c!1288368) b!6944030))

(assert (= (and b!6944032 (not c!1288368)) b!6944031))

(assert (= (and b!6944031 (not res!2832792)) b!6944038))

(assert (= (and b!6944038 res!2832788) b!6944037))

(assert (= (and b!6944037 res!2832790) b!6944042))

(assert (= (and b!6944042 res!2832789) b!6944036))

(assert (= (and b!6944038 (not res!2832791)) b!6944029))

(assert (= (and b!6944029 res!2832795) b!6944033))

(assert (= (and b!6944033 (not res!2832793)) b!6944039))

(assert (= (and b!6944039 (not res!2832794)) b!6944035))

(assert (= (or b!6944041 b!6944033 b!6944037) bm!630788))

(declare-fun m!7648692 () Bool)

(assert (=> b!6944040 m!7648692))

(assert (=> b!6944034 m!7648658))

(assert (=> b!6944034 m!7648658))

(declare-fun m!7648694 () Bool)

(assert (=> b!6944034 m!7648694))

(assert (=> b!6944034 m!7648662))

(assert (=> b!6944034 m!7648694))

(assert (=> b!6944034 m!7648662))

(declare-fun m!7648702 () Bool)

(assert (=> b!6944034 m!7648702))

(assert (=> b!6944036 m!7648658))

(assert (=> b!6944035 m!7648658))

(assert (=> b!6944042 m!7648662))

(assert (=> b!6944042 m!7648662))

(assert (=> b!6944042 m!7648668))

(assert (=> b!6944039 m!7648662))

(assert (=> b!6944039 m!7648662))

(assert (=> b!6944039 m!7648668))

(assert (=> bm!630788 m!7648606))

(assert (=> d!2168245 m!7648606))

(assert (=> d!2168245 m!7648676))

(assert (=> b!6943708 d!2168245))

(declare-fun d!2168251 () Bool)

(assert (=> d!2168251 (= (matchR!9114 lt!2476859 s!14361) (matchRSpec!4032 lt!2476859 s!14361))))

(declare-fun lt!2476921 () Unit!160688)

(assert (=> d!2168251 (= lt!2476921 (choose!51741 lt!2476859 s!14361))))

(assert (=> d!2168251 (validRegex!8681 lt!2476859)))

(assert (=> d!2168251 (= (mainMatchTheorem!4032 lt!2476859 s!14361) lt!2476921)))

(declare-fun bs!1856158 () Bool)

(assert (= bs!1856158 d!2168251))

(assert (=> bs!1856158 m!7648428))

(assert (=> bs!1856158 m!7648434))

(declare-fun m!7648712 () Bool)

(assert (=> bs!1856158 m!7648712))

(assert (=> bs!1856158 m!7648672))

(assert (=> b!6943708 d!2168251))

(declare-fun b!6944057 () Bool)

(declare-fun e!4177055 () Bool)

(declare-fun call!630797 () Bool)

(assert (=> b!6944057 (= e!4177055 call!630797)))

(declare-fun bm!630790 () Bool)

(declare-fun call!630796 () Bool)

(declare-fun c!1288372 () Bool)

(assert (=> bm!630790 (= call!630796 (validRegex!8681 (ite c!1288372 (regTwo!34463 r3!135) (regOne!34462 r3!135))))))

(declare-fun b!6944058 () Bool)

(declare-fun e!4177056 () Bool)

(declare-fun e!4177057 () Bool)

(assert (=> b!6944058 (= e!4177056 e!4177057)))

(declare-fun res!2832806 () Bool)

(assert (=> b!6944058 (=> (not res!2832806) (not e!4177057))))

(assert (=> b!6944058 (= res!2832806 call!630796)))

(declare-fun d!2168253 () Bool)

(declare-fun res!2832808 () Bool)

(declare-fun e!4177060 () Bool)

(assert (=> d!2168253 (=> res!2832808 e!4177060)))

(assert (=> d!2168253 (= res!2832808 ((_ is ElementMatch!16975) r3!135))))

(assert (=> d!2168253 (= (validRegex!8681 r3!135) e!4177060)))

(declare-fun c!1288373 () Bool)

(declare-fun bm!630791 () Bool)

(assert (=> bm!630791 (= call!630797 (validRegex!8681 (ite c!1288373 (reg!17304 r3!135) (ite c!1288372 (regOne!34463 r3!135) (regTwo!34462 r3!135)))))))

(declare-fun b!6944059 () Bool)

(declare-fun call!630795 () Bool)

(assert (=> b!6944059 (= e!4177057 call!630795)))

(declare-fun b!6944060 () Bool)

(declare-fun res!2832804 () Bool)

(assert (=> b!6944060 (=> res!2832804 e!4177056)))

(assert (=> b!6944060 (= res!2832804 (not ((_ is Concat!25820) r3!135)))))

(declare-fun e!4177058 () Bool)

(assert (=> b!6944060 (= e!4177058 e!4177056)))

(declare-fun b!6944061 () Bool)

(declare-fun e!4177054 () Bool)

(assert (=> b!6944061 (= e!4177054 call!630796)))

(declare-fun b!6944062 () Bool)

(declare-fun e!4177059 () Bool)

(assert (=> b!6944062 (= e!4177059 e!4177058)))

(assert (=> b!6944062 (= c!1288372 ((_ is Union!16975) r3!135))))

(declare-fun b!6944063 () Bool)

(declare-fun res!2832807 () Bool)

(assert (=> b!6944063 (=> (not res!2832807) (not e!4177054))))

(assert (=> b!6944063 (= res!2832807 call!630795)))

(assert (=> b!6944063 (= e!4177058 e!4177054)))

(declare-fun bm!630792 () Bool)

(assert (=> bm!630792 (= call!630795 call!630797)))

(declare-fun b!6944064 () Bool)

(assert (=> b!6944064 (= e!4177060 e!4177059)))

(assert (=> b!6944064 (= c!1288373 ((_ is Star!16975) r3!135))))

(declare-fun b!6944065 () Bool)

(assert (=> b!6944065 (= e!4177059 e!4177055)))

(declare-fun res!2832805 () Bool)

(assert (=> b!6944065 (= res!2832805 (not (nullable!6788 (reg!17304 r3!135))))))

(assert (=> b!6944065 (=> (not res!2832805) (not e!4177055))))

(assert (= (and d!2168253 (not res!2832808)) b!6944064))

(assert (= (and b!6944064 c!1288373) b!6944065))

(assert (= (and b!6944064 (not c!1288373)) b!6944062))

(assert (= (and b!6944065 res!2832805) b!6944057))

(assert (= (and b!6944062 c!1288372) b!6944063))

(assert (= (and b!6944062 (not c!1288372)) b!6944060))

(assert (= (and b!6944063 res!2832807) b!6944061))

(assert (= (and b!6944060 (not res!2832804)) b!6944058))

(assert (= (and b!6944058 res!2832806) b!6944059))

(assert (= (or b!6944063 b!6944059) bm!630792))

(assert (= (or b!6944061 b!6944058) bm!630790))

(assert (= (or b!6944057 bm!630792) bm!630791))

(declare-fun m!7648714 () Bool)

(assert (=> bm!630790 m!7648714))

(declare-fun m!7648716 () Bool)

(assert (=> bm!630791 m!7648716))

(declare-fun m!7648718 () Bool)

(assert (=> b!6944065 m!7648718))

(assert (=> b!6943717 d!2168253))

(declare-fun b!6944066 () Bool)

(declare-fun e!4177062 () Bool)

(declare-fun call!630800 () Bool)

(assert (=> b!6944066 (= e!4177062 call!630800)))

(declare-fun bm!630793 () Bool)

(declare-fun call!630799 () Bool)

(declare-fun c!1288374 () Bool)

(assert (=> bm!630793 (= call!630799 (validRegex!8681 (ite c!1288374 (regTwo!34463 r2!6280) (regOne!34462 r2!6280))))))

(declare-fun b!6944067 () Bool)

(declare-fun e!4177063 () Bool)

(declare-fun e!4177064 () Bool)

(assert (=> b!6944067 (= e!4177063 e!4177064)))

(declare-fun res!2832811 () Bool)

(assert (=> b!6944067 (=> (not res!2832811) (not e!4177064))))

(assert (=> b!6944067 (= res!2832811 call!630799)))

(declare-fun d!2168255 () Bool)

(declare-fun res!2832813 () Bool)

(declare-fun e!4177067 () Bool)

(assert (=> d!2168255 (=> res!2832813 e!4177067)))

(assert (=> d!2168255 (= res!2832813 ((_ is ElementMatch!16975) r2!6280))))

(assert (=> d!2168255 (= (validRegex!8681 r2!6280) e!4177067)))

(declare-fun bm!630794 () Bool)

(declare-fun c!1288375 () Bool)

(assert (=> bm!630794 (= call!630800 (validRegex!8681 (ite c!1288375 (reg!17304 r2!6280) (ite c!1288374 (regOne!34463 r2!6280) (regTwo!34462 r2!6280)))))))

(declare-fun b!6944068 () Bool)

(declare-fun call!630798 () Bool)

(assert (=> b!6944068 (= e!4177064 call!630798)))

(declare-fun b!6944069 () Bool)

(declare-fun res!2832809 () Bool)

(assert (=> b!6944069 (=> res!2832809 e!4177063)))

(assert (=> b!6944069 (= res!2832809 (not ((_ is Concat!25820) r2!6280)))))

(declare-fun e!4177065 () Bool)

(assert (=> b!6944069 (= e!4177065 e!4177063)))

(declare-fun b!6944070 () Bool)

(declare-fun e!4177061 () Bool)

(assert (=> b!6944070 (= e!4177061 call!630799)))

(declare-fun b!6944071 () Bool)

(declare-fun e!4177066 () Bool)

(assert (=> b!6944071 (= e!4177066 e!4177065)))

(assert (=> b!6944071 (= c!1288374 ((_ is Union!16975) r2!6280))))

(declare-fun b!6944072 () Bool)

(declare-fun res!2832812 () Bool)

(assert (=> b!6944072 (=> (not res!2832812) (not e!4177061))))

(assert (=> b!6944072 (= res!2832812 call!630798)))

(assert (=> b!6944072 (= e!4177065 e!4177061)))

(declare-fun bm!630795 () Bool)

(assert (=> bm!630795 (= call!630798 call!630800)))

(declare-fun b!6944073 () Bool)

(assert (=> b!6944073 (= e!4177067 e!4177066)))

(assert (=> b!6944073 (= c!1288375 ((_ is Star!16975) r2!6280))))

(declare-fun b!6944074 () Bool)

(assert (=> b!6944074 (= e!4177066 e!4177062)))

(declare-fun res!2832810 () Bool)

(assert (=> b!6944074 (= res!2832810 (not (nullable!6788 (reg!17304 r2!6280))))))

(assert (=> b!6944074 (=> (not res!2832810) (not e!4177062))))

(assert (= (and d!2168255 (not res!2832813)) b!6944073))

(assert (= (and b!6944073 c!1288375) b!6944074))

(assert (= (and b!6944073 (not c!1288375)) b!6944071))

(assert (= (and b!6944074 res!2832810) b!6944066))

(assert (= (and b!6944071 c!1288374) b!6944072))

(assert (= (and b!6944071 (not c!1288374)) b!6944069))

(assert (= (and b!6944072 res!2832812) b!6944070))

(assert (= (and b!6944069 (not res!2832809)) b!6944067))

(assert (= (and b!6944067 res!2832811) b!6944068))

(assert (= (or b!6944072 b!6944068) bm!630795))

(assert (= (or b!6944070 b!6944067) bm!630793))

(assert (= (or b!6944066 bm!630795) bm!630794))

(declare-fun m!7648720 () Bool)

(assert (=> bm!630793 m!7648720))

(declare-fun m!7648722 () Bool)

(assert (=> bm!630794 m!7648722))

(declare-fun m!7648724 () Bool)

(assert (=> b!6944074 m!7648724))

(assert (=> b!6943719 d!2168255))

(declare-fun d!2168257 () Bool)

(declare-fun choose!51743 (Int) Bool)

(assert (=> d!2168257 (= (Exists!3975 lambda!395850) (choose!51743 lambda!395850))))

(declare-fun bs!1856159 () Bool)

(assert (= bs!1856159 d!2168257))

(declare-fun m!7648726 () Bool)

(assert (=> bs!1856159 m!7648726))

(assert (=> b!6943703 d!2168257))

(declare-fun b!6944149 () Bool)

(declare-fun e!4177112 () Option!16744)

(declare-fun e!4177110 () Option!16744)

(assert (=> b!6944149 (= e!4177112 e!4177110)))

(declare-fun c!1288394 () Bool)

(assert (=> b!6944149 (= c!1288394 ((_ is Nil!66604) (_2!37135 lt!2476883)))))

(declare-fun b!6944150 () Bool)

(declare-fun e!4177109 () Bool)

(assert (=> b!6944150 (= e!4177109 (matchR!9114 r3!135 (_2!37135 lt!2476883)))))

(declare-fun b!6944151 () Bool)

(declare-fun e!4177108 () Bool)

(declare-fun lt!2476947 () Option!16744)

(assert (=> b!6944151 (= e!4177108 (= (++!15014 (_1!37135 (get!23399 lt!2476947)) (_2!37135 (get!23399 lt!2476947))) (_2!37135 lt!2476883)))))

(declare-fun b!6944152 () Bool)

(assert (=> b!6944152 (= e!4177112 (Some!16743 (tuple2!67665 Nil!66604 (_2!37135 lt!2476883))))))

(declare-fun b!6944153 () Bool)

(declare-fun res!2832852 () Bool)

(assert (=> b!6944153 (=> (not res!2832852) (not e!4177108))))

(assert (=> b!6944153 (= res!2832852 (matchR!9114 r2!6280 (_1!37135 (get!23399 lt!2476947))))))

(declare-fun b!6944154 () Bool)

(declare-fun res!2832853 () Bool)

(assert (=> b!6944154 (=> (not res!2832853) (not e!4177108))))

(assert (=> b!6944154 (= res!2832853 (matchR!9114 r3!135 (_2!37135 (get!23399 lt!2476947))))))

(declare-fun b!6944155 () Bool)

(declare-fun e!4177111 () Bool)

(assert (=> b!6944155 (= e!4177111 (not (isDefined!13445 lt!2476947)))))

(declare-fun b!6944156 () Bool)

(assert (=> b!6944156 (= e!4177110 None!16743)))

(declare-fun b!6944148 () Bool)

(declare-fun lt!2476948 () Unit!160688)

(declare-fun lt!2476949 () Unit!160688)

(assert (=> b!6944148 (= lt!2476948 lt!2476949)))

(assert (=> b!6944148 (= (++!15014 (++!15014 Nil!66604 (Cons!66604 (h!73052 (_2!37135 lt!2476883)) Nil!66604)) (t!380471 (_2!37135 lt!2476883))) (_2!37135 lt!2476883))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2867 (List!66728 C!34220 List!66728 List!66728) Unit!160688)

(assert (=> b!6944148 (= lt!2476949 (lemmaMoveElementToOtherListKeepsConcatEq!2867 Nil!66604 (h!73052 (_2!37135 lt!2476883)) (t!380471 (_2!37135 lt!2476883)) (_2!37135 lt!2476883)))))

(assert (=> b!6944148 (= e!4177110 (findConcatSeparation!3158 r2!6280 r3!135 (++!15014 Nil!66604 (Cons!66604 (h!73052 (_2!37135 lt!2476883)) Nil!66604)) (t!380471 (_2!37135 lt!2476883)) (_2!37135 lt!2476883)))))

(declare-fun d!2168259 () Bool)

(assert (=> d!2168259 e!4177111))

(declare-fun res!2832854 () Bool)

(assert (=> d!2168259 (=> res!2832854 e!4177111)))

(assert (=> d!2168259 (= res!2832854 e!4177108)))

(declare-fun res!2832855 () Bool)

(assert (=> d!2168259 (=> (not res!2832855) (not e!4177108))))

(assert (=> d!2168259 (= res!2832855 (isDefined!13445 lt!2476947))))

(assert (=> d!2168259 (= lt!2476947 e!4177112)))

(declare-fun c!1288395 () Bool)

(assert (=> d!2168259 (= c!1288395 e!4177109)))

(declare-fun res!2832851 () Bool)

(assert (=> d!2168259 (=> (not res!2832851) (not e!4177109))))

(assert (=> d!2168259 (= res!2832851 (matchR!9114 r2!6280 Nil!66604))))

(assert (=> d!2168259 (validRegex!8681 r2!6280)))

(assert (=> d!2168259 (= (findConcatSeparation!3158 r2!6280 r3!135 Nil!66604 (_2!37135 lt!2476883) (_2!37135 lt!2476883)) lt!2476947)))

(assert (= (and d!2168259 res!2832851) b!6944150))

(assert (= (and d!2168259 c!1288395) b!6944152))

(assert (= (and d!2168259 (not c!1288395)) b!6944149))

(assert (= (and b!6944149 c!1288394) b!6944156))

(assert (= (and b!6944149 (not c!1288394)) b!6944148))

(assert (= (and d!2168259 res!2832855) b!6944153))

(assert (= (and b!6944153 res!2832852) b!6944154))

(assert (= (and b!6944154 res!2832853) b!6944151))

(assert (= (and d!2168259 (not res!2832854)) b!6944155))

(declare-fun m!7648830 () Bool)

(assert (=> d!2168259 m!7648830))

(declare-fun m!7648832 () Bool)

(assert (=> d!2168259 m!7648832))

(assert (=> d!2168259 m!7648540))

(declare-fun m!7648834 () Bool)

(assert (=> b!6944154 m!7648834))

(declare-fun m!7648836 () Bool)

(assert (=> b!6944154 m!7648836))

(assert (=> b!6944151 m!7648834))

(declare-fun m!7648838 () Bool)

(assert (=> b!6944151 m!7648838))

(declare-fun m!7648840 () Bool)

(assert (=> b!6944150 m!7648840))

(declare-fun m!7648842 () Bool)

(assert (=> b!6944148 m!7648842))

(assert (=> b!6944148 m!7648842))

(declare-fun m!7648844 () Bool)

(assert (=> b!6944148 m!7648844))

(declare-fun m!7648846 () Bool)

(assert (=> b!6944148 m!7648846))

(assert (=> b!6944148 m!7648842))

(declare-fun m!7648848 () Bool)

(assert (=> b!6944148 m!7648848))

(assert (=> b!6944155 m!7648830))

(assert (=> b!6944153 m!7648834))

(declare-fun m!7648850 () Bool)

(assert (=> b!6944153 m!7648850))

(assert (=> b!6943703 d!2168259))

(declare-fun bs!1856262 () Bool)

(declare-fun d!2168289 () Bool)

(assert (= bs!1856262 (and d!2168289 b!6943703)))

(declare-fun lambda!395889 () Int)

(assert (=> bs!1856262 (= lambda!395889 lambda!395851)))

(assert (=> bs!1856262 (= (and (= s!14361 lt!2476878) (= lt!2476875 r1!6342) (= r3!135 r2!6280)) (= lambda!395889 lambda!395849))))

(declare-fun bs!1856266 () Bool)

(assert (= bs!1856266 (and d!2168289 b!6943704)))

(assert (=> bs!1856266 (= (and (= lt!2476875 r1!6342) (= r3!135 lt!2476856)) (= lambda!395889 lambda!395852))))

(declare-fun bs!1856267 () Bool)

(assert (= bs!1856267 (and d!2168289 b!6943858)))

(assert (=> bs!1856267 (not (= lambda!395889 lambda!395860))))

(assert (=> bs!1856262 (= (and (= s!14361 (_2!37135 lt!2476883)) (= lt!2476875 r2!6280)) (= lambda!395889 lambda!395847))))

(assert (=> bs!1856262 (not (= lambda!395889 lambda!395850))))

(declare-fun bs!1856273 () Bool)

(assert (= bs!1856273 (and d!2168289 b!6943853)))

(assert (=> bs!1856273 (not (= lambda!395889 lambda!395861))))

(assert (=> bs!1856262 (not (= lambda!395889 lambda!395846))))

(declare-fun bs!1856274 () Bool)

(assert (= bs!1856274 (and d!2168289 b!6944008)))

(assert (=> bs!1856274 (not (= lambda!395889 lambda!395874))))

(assert (=> bs!1856262 (= (and (= lt!2476875 r1!6342) (= r3!135 lt!2476856)) (= lambda!395889 lambda!395845))))

(assert (=> bs!1856262 (not (= lambda!395889 lambda!395848))))

(declare-fun bs!1856275 () Bool)

(assert (= bs!1856275 (and d!2168289 b!6944011)))

(assert (=> bs!1856275 (not (= lambda!395889 lambda!395873))))

(assert (=> d!2168289 true))

(assert (=> d!2168289 true))

(assert (=> d!2168289 true))

(assert (=> d!2168289 (= (isDefined!13445 (findConcatSeparation!3158 lt!2476875 r3!135 Nil!66604 s!14361 s!14361)) (Exists!3975 lambda!395889))))

(declare-fun lt!2476958 () Unit!160688)

(declare-fun choose!51744 (Regex!16975 Regex!16975 List!66728) Unit!160688)

(assert (=> d!2168289 (= lt!2476958 (choose!51744 lt!2476875 r3!135 s!14361))))

(assert (=> d!2168289 (validRegex!8681 lt!2476875)))

(assert (=> d!2168289 (= (lemmaFindConcatSeparationEquivalentToExists!2916 lt!2476875 r3!135 s!14361) lt!2476958)))

(declare-fun bs!1856279 () Bool)

(assert (= bs!1856279 d!2168289))

(declare-fun m!7648908 () Bool)

(assert (=> bs!1856279 m!7648908))

(assert (=> bs!1856279 m!7648476))

(assert (=> bs!1856279 m!7648490))

(declare-fun m!7648910 () Bool)

(assert (=> bs!1856279 m!7648910))

(declare-fun m!7648912 () Bool)

(assert (=> bs!1856279 m!7648912))

(assert (=> bs!1856279 m!7648476))

(assert (=> b!6943703 d!2168289))

(declare-fun d!2168307 () Bool)

(assert (=> d!2168307 (= (matchR!9114 r2!6280 (_1!37135 lt!2476861)) (matchRSpec!4032 r2!6280 (_1!37135 lt!2476861)))))

(declare-fun lt!2476960 () Unit!160688)

(assert (=> d!2168307 (= lt!2476960 (choose!51741 r2!6280 (_1!37135 lt!2476861)))))

(assert (=> d!2168307 (validRegex!8681 r2!6280)))

(assert (=> d!2168307 (= (mainMatchTheorem!4032 r2!6280 (_1!37135 lt!2476861)) lt!2476960)))

(declare-fun bs!1856284 () Bool)

(assert (= bs!1856284 d!2168307))

(assert (=> bs!1856284 m!7648534))

(assert (=> bs!1856284 m!7648494))

(declare-fun m!7648914 () Bool)

(assert (=> bs!1856284 m!7648914))

(assert (=> bs!1856284 m!7648540))

(assert (=> b!6943703 d!2168307))

(declare-fun b!6944242 () Bool)

(declare-fun res!2832897 () Bool)

(declare-fun e!4177158 () Bool)

(assert (=> b!6944242 (=> (not res!2832897) (not e!4177158))))

(declare-fun lt!2476967 () List!66728)

(declare-fun size!40806 (List!66728) Int)

(assert (=> b!6944242 (= res!2832897 (= (size!40806 lt!2476967) (+ (size!40806 lt!2476878) (size!40806 (_2!37135 lt!2476861)))))))

(declare-fun b!6944243 () Bool)

(assert (=> b!6944243 (= e!4177158 (or (not (= (_2!37135 lt!2476861) Nil!66604)) (= lt!2476967 lt!2476878)))))

(declare-fun d!2168309 () Bool)

(assert (=> d!2168309 e!4177158))

(declare-fun res!2832898 () Bool)

(assert (=> d!2168309 (=> (not res!2832898) (not e!4177158))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13109 (List!66728) (InoxSet C!34220))

(assert (=> d!2168309 (= res!2832898 (= (content!13109 lt!2476967) ((_ map or) (content!13109 lt!2476878) (content!13109 (_2!37135 lt!2476861)))))))

(declare-fun e!4177159 () List!66728)

(assert (=> d!2168309 (= lt!2476967 e!4177159)))

(declare-fun c!1288417 () Bool)

(assert (=> d!2168309 (= c!1288417 ((_ is Nil!66604) lt!2476878))))

(assert (=> d!2168309 (= (++!15014 lt!2476878 (_2!37135 lt!2476861)) lt!2476967)))

(declare-fun b!6944241 () Bool)

(assert (=> b!6944241 (= e!4177159 (Cons!66604 (h!73052 lt!2476878) (++!15014 (t!380471 lt!2476878) (_2!37135 lt!2476861))))))

(declare-fun b!6944240 () Bool)

(assert (=> b!6944240 (= e!4177159 (_2!37135 lt!2476861))))

(assert (= (and d!2168309 c!1288417) b!6944240))

(assert (= (and d!2168309 (not c!1288417)) b!6944241))

(assert (= (and d!2168309 res!2832898) b!6944242))

(assert (= (and b!6944242 res!2832897) b!6944243))

(declare-fun m!7648958 () Bool)

(assert (=> b!6944242 m!7648958))

(declare-fun m!7648960 () Bool)

(assert (=> b!6944242 m!7648960))

(declare-fun m!7648962 () Bool)

(assert (=> b!6944242 m!7648962))

(declare-fun m!7648964 () Bool)

(assert (=> d!2168309 m!7648964))

(declare-fun m!7648966 () Bool)

(assert (=> d!2168309 m!7648966))

(declare-fun m!7648968 () Bool)

(assert (=> d!2168309 m!7648968))

(declare-fun m!7648970 () Bool)

(assert (=> b!6944241 m!7648970))

(assert (=> b!6943703 d!2168309))

(declare-fun d!2168325 () Bool)

(assert (=> d!2168325 (= (Exists!3975 lambda!395851) (choose!51743 lambda!395851))))

(declare-fun bs!1856301 () Bool)

(assert (= bs!1856301 d!2168325))

(declare-fun m!7648972 () Bool)

(assert (=> bs!1856301 m!7648972))

(assert (=> b!6943703 d!2168325))

(declare-fun b!6944244 () Bool)

(declare-fun e!4177161 () Bool)

(declare-fun e!4177164 () Bool)

(assert (=> b!6944244 (= e!4177161 e!4177164)))

(declare-fun res!2832906 () Bool)

(assert (=> b!6944244 (=> (not res!2832906) (not e!4177164))))

(declare-fun lt!2476969 () Bool)

(assert (=> b!6944244 (= res!2832906 (not lt!2476969))))

(declare-fun b!6944245 () Bool)

(declare-fun e!4177165 () Bool)

(assert (=> b!6944245 (= e!4177165 (not lt!2476969))))

(declare-fun b!6944246 () Bool)

(declare-fun res!2832903 () Bool)

(assert (=> b!6944246 (=> res!2832903 e!4177161)))

(assert (=> b!6944246 (= res!2832903 (not ((_ is ElementMatch!16975) r3!135)))))

(assert (=> b!6944246 (= e!4177165 e!4177161)))

(declare-fun b!6944247 () Bool)

(declare-fun e!4177160 () Bool)

(assert (=> b!6944247 (= e!4177160 e!4177165)))

(declare-fun c!1288420 () Bool)

(assert (=> b!6944247 (= c!1288420 ((_ is EmptyLang!16975) r3!135))))

(declare-fun b!6944248 () Bool)

(declare-fun e!4177162 () Bool)

(assert (=> b!6944248 (= e!4177164 e!4177162)))

(declare-fun res!2832904 () Bool)

(assert (=> b!6944248 (=> res!2832904 e!4177162)))

(declare-fun call!630810 () Bool)

(assert (=> b!6944248 (= res!2832904 call!630810)))

(declare-fun b!6944249 () Bool)

(declare-fun e!4177166 () Bool)

(assert (=> b!6944249 (= e!4177166 (matchR!9114 (derivativeStep!5463 r3!135 (head!13916 (_2!37135 lt!2476861))) (tail!12968 (_2!37135 lt!2476861))))))

(declare-fun b!6944250 () Bool)

(assert (=> b!6944250 (= e!4177162 (not (= (head!13916 (_2!37135 lt!2476861)) (c!1288295 r3!135))))))

(declare-fun b!6944252 () Bool)

(declare-fun res!2832901 () Bool)

(declare-fun e!4177163 () Bool)

(assert (=> b!6944252 (=> (not res!2832901) (not e!4177163))))

(assert (=> b!6944252 (= res!2832901 (not call!630810))))

(declare-fun b!6944253 () Bool)

(declare-fun res!2832902 () Bool)

(assert (=> b!6944253 (=> res!2832902 e!4177161)))

(assert (=> b!6944253 (= res!2832902 e!4177163)))

(declare-fun res!2832899 () Bool)

(assert (=> b!6944253 (=> (not res!2832899) (not e!4177163))))

(assert (=> b!6944253 (= res!2832899 lt!2476969)))

(declare-fun bm!630805 () Bool)

(assert (=> bm!630805 (= call!630810 (isEmpty!38878 (_2!37135 lt!2476861)))))

(declare-fun b!6944254 () Bool)

(declare-fun res!2832905 () Bool)

(assert (=> b!6944254 (=> res!2832905 e!4177162)))

(assert (=> b!6944254 (= res!2832905 (not (isEmpty!38878 (tail!12968 (_2!37135 lt!2476861)))))))

(declare-fun b!6944255 () Bool)

(assert (=> b!6944255 (= e!4177166 (nullable!6788 r3!135))))

(declare-fun b!6944251 () Bool)

(assert (=> b!6944251 (= e!4177163 (= (head!13916 (_2!37135 lt!2476861)) (c!1288295 r3!135)))))

(declare-fun d!2168327 () Bool)

(assert (=> d!2168327 e!4177160))

(declare-fun c!1288419 () Bool)

(assert (=> d!2168327 (= c!1288419 ((_ is EmptyExpr!16975) r3!135))))

(assert (=> d!2168327 (= lt!2476969 e!4177166)))

(declare-fun c!1288418 () Bool)

(assert (=> d!2168327 (= c!1288418 (isEmpty!38878 (_2!37135 lt!2476861)))))

(assert (=> d!2168327 (validRegex!8681 r3!135)))

(assert (=> d!2168327 (= (matchR!9114 r3!135 (_2!37135 lt!2476861)) lt!2476969)))

(declare-fun b!6944256 () Bool)

(assert (=> b!6944256 (= e!4177160 (= lt!2476969 call!630810))))

(declare-fun b!6944257 () Bool)

(declare-fun res!2832900 () Bool)

(assert (=> b!6944257 (=> (not res!2832900) (not e!4177163))))

(assert (=> b!6944257 (= res!2832900 (isEmpty!38878 (tail!12968 (_2!37135 lt!2476861))))))

(assert (= (and d!2168327 c!1288418) b!6944255))

(assert (= (and d!2168327 (not c!1288418)) b!6944249))

(assert (= (and d!2168327 c!1288419) b!6944256))

(assert (= (and d!2168327 (not c!1288419)) b!6944247))

(assert (= (and b!6944247 c!1288420) b!6944245))

(assert (= (and b!6944247 (not c!1288420)) b!6944246))

(assert (= (and b!6944246 (not res!2832903)) b!6944253))

(assert (= (and b!6944253 res!2832899) b!6944252))

(assert (= (and b!6944252 res!2832901) b!6944257))

(assert (= (and b!6944257 res!2832900) b!6944251))

(assert (= (and b!6944253 (not res!2832902)) b!6944244))

(assert (= (and b!6944244 res!2832906) b!6944248))

(assert (= (and b!6944248 (not res!2832904)) b!6944254))

(assert (= (and b!6944254 (not res!2832905)) b!6944250))

(assert (= (or b!6944256 b!6944248 b!6944252) bm!630805))

(declare-fun m!7648974 () Bool)

(assert (=> b!6944255 m!7648974))

(declare-fun m!7648976 () Bool)

(assert (=> b!6944249 m!7648976))

(assert (=> b!6944249 m!7648976))

(declare-fun m!7648978 () Bool)

(assert (=> b!6944249 m!7648978))

(declare-fun m!7648980 () Bool)

(assert (=> b!6944249 m!7648980))

(assert (=> b!6944249 m!7648978))

(assert (=> b!6944249 m!7648980))

(declare-fun m!7648982 () Bool)

(assert (=> b!6944249 m!7648982))

(assert (=> b!6944251 m!7648976))

(assert (=> b!6944250 m!7648976))

(assert (=> b!6944257 m!7648980))

(assert (=> b!6944257 m!7648980))

(declare-fun m!7648984 () Bool)

(assert (=> b!6944257 m!7648984))

(assert (=> b!6944254 m!7648980))

(assert (=> b!6944254 m!7648980))

(assert (=> b!6944254 m!7648984))

(declare-fun m!7648986 () Bool)

(assert (=> bm!630805 m!7648986))

(assert (=> d!2168327 m!7648986))

(assert (=> d!2168327 m!7648450))

(assert (=> b!6943703 d!2168327))

(declare-fun d!2168329 () Bool)

(declare-fun isEmpty!38879 (Option!16744) Bool)

(assert (=> d!2168329 (= (isDefined!13445 lt!2476866) (not (isEmpty!38879 lt!2476866)))))

(declare-fun bs!1856315 () Bool)

(assert (= bs!1856315 d!2168329))

(declare-fun m!7648988 () Bool)

(assert (=> bs!1856315 m!7648988))

(assert (=> b!6943703 d!2168329))

(declare-fun b!6944258 () Bool)

(declare-fun e!4177168 () Bool)

(declare-fun e!4177171 () Bool)

(assert (=> b!6944258 (= e!4177168 e!4177171)))

(declare-fun res!2832914 () Bool)

(assert (=> b!6944258 (=> (not res!2832914) (not e!4177171))))

(declare-fun lt!2476970 () Bool)

(assert (=> b!6944258 (= res!2832914 (not lt!2476970))))

(declare-fun b!6944259 () Bool)

(declare-fun e!4177172 () Bool)

(assert (=> b!6944259 (= e!4177172 (not lt!2476970))))

(declare-fun b!6944260 () Bool)

(declare-fun res!2832911 () Bool)

(assert (=> b!6944260 (=> res!2832911 e!4177168)))

(assert (=> b!6944260 (= res!2832911 (not ((_ is ElementMatch!16975) lt!2476856)))))

(assert (=> b!6944260 (= e!4177172 e!4177168)))

(declare-fun b!6944261 () Bool)

(declare-fun e!4177167 () Bool)

(assert (=> b!6944261 (= e!4177167 e!4177172)))

(declare-fun c!1288423 () Bool)

(assert (=> b!6944261 (= c!1288423 ((_ is EmptyLang!16975) lt!2476856))))

(declare-fun b!6944262 () Bool)

(declare-fun e!4177169 () Bool)

(assert (=> b!6944262 (= e!4177171 e!4177169)))

(declare-fun res!2832912 () Bool)

(assert (=> b!6944262 (=> res!2832912 e!4177169)))

(declare-fun call!630811 () Bool)

(assert (=> b!6944262 (= res!2832912 call!630811)))

(declare-fun b!6944263 () Bool)

(declare-fun e!4177173 () Bool)

(assert (=> b!6944263 (= e!4177173 (matchR!9114 (derivativeStep!5463 lt!2476856 (head!13916 (_2!37135 lt!2476883))) (tail!12968 (_2!37135 lt!2476883))))))

(declare-fun b!6944264 () Bool)

(assert (=> b!6944264 (= e!4177169 (not (= (head!13916 (_2!37135 lt!2476883)) (c!1288295 lt!2476856))))))

(declare-fun b!6944266 () Bool)

(declare-fun res!2832909 () Bool)

(declare-fun e!4177170 () Bool)

(assert (=> b!6944266 (=> (not res!2832909) (not e!4177170))))

(assert (=> b!6944266 (= res!2832909 (not call!630811))))

(declare-fun b!6944267 () Bool)

(declare-fun res!2832910 () Bool)

(assert (=> b!6944267 (=> res!2832910 e!4177168)))

(assert (=> b!6944267 (= res!2832910 e!4177170)))

(declare-fun res!2832907 () Bool)

(assert (=> b!6944267 (=> (not res!2832907) (not e!4177170))))

(assert (=> b!6944267 (= res!2832907 lt!2476970)))

(declare-fun bm!630806 () Bool)

(assert (=> bm!630806 (= call!630811 (isEmpty!38878 (_2!37135 lt!2476883)))))

(declare-fun b!6944268 () Bool)

(declare-fun res!2832913 () Bool)

(assert (=> b!6944268 (=> res!2832913 e!4177169)))

(assert (=> b!6944268 (= res!2832913 (not (isEmpty!38878 (tail!12968 (_2!37135 lt!2476883)))))))

(declare-fun b!6944269 () Bool)

(assert (=> b!6944269 (= e!4177173 (nullable!6788 lt!2476856))))

(declare-fun b!6944265 () Bool)

(assert (=> b!6944265 (= e!4177170 (= (head!13916 (_2!37135 lt!2476883)) (c!1288295 lt!2476856)))))

(declare-fun d!2168331 () Bool)

(assert (=> d!2168331 e!4177167))

(declare-fun c!1288422 () Bool)

(assert (=> d!2168331 (= c!1288422 ((_ is EmptyExpr!16975) lt!2476856))))

(assert (=> d!2168331 (= lt!2476970 e!4177173)))

(declare-fun c!1288421 () Bool)

(assert (=> d!2168331 (= c!1288421 (isEmpty!38878 (_2!37135 lt!2476883)))))

(assert (=> d!2168331 (validRegex!8681 lt!2476856)))

(assert (=> d!2168331 (= (matchR!9114 lt!2476856 (_2!37135 lt!2476883)) lt!2476970)))

(declare-fun b!6944270 () Bool)

(assert (=> b!6944270 (= e!4177167 (= lt!2476970 call!630811))))

(declare-fun b!6944271 () Bool)

(declare-fun res!2832908 () Bool)

(assert (=> b!6944271 (=> (not res!2832908) (not e!4177170))))

(assert (=> b!6944271 (= res!2832908 (isEmpty!38878 (tail!12968 (_2!37135 lt!2476883))))))

(assert (= (and d!2168331 c!1288421) b!6944269))

(assert (= (and d!2168331 (not c!1288421)) b!6944263))

(assert (= (and d!2168331 c!1288422) b!6944270))

(assert (= (and d!2168331 (not c!1288422)) b!6944261))

(assert (= (and b!6944261 c!1288423) b!6944259))

(assert (= (and b!6944261 (not c!1288423)) b!6944260))

(assert (= (and b!6944260 (not res!2832911)) b!6944267))

(assert (= (and b!6944267 res!2832907) b!6944266))

(assert (= (and b!6944266 res!2832909) b!6944271))

(assert (= (and b!6944271 res!2832908) b!6944265))

(assert (= (and b!6944267 (not res!2832910)) b!6944258))

(assert (= (and b!6944258 res!2832914) b!6944262))

(assert (= (and b!6944262 (not res!2832912)) b!6944268))

(assert (= (and b!6944268 (not res!2832913)) b!6944264))

(assert (= (or b!6944270 b!6944262 b!6944266) bm!630806))

(declare-fun m!7648990 () Bool)

(assert (=> b!6944269 m!7648990))

(declare-fun m!7648992 () Bool)

(assert (=> b!6944263 m!7648992))

(assert (=> b!6944263 m!7648992))

(declare-fun m!7648994 () Bool)

(assert (=> b!6944263 m!7648994))

(declare-fun m!7648996 () Bool)

(assert (=> b!6944263 m!7648996))

(assert (=> b!6944263 m!7648994))

(assert (=> b!6944263 m!7648996))

(declare-fun m!7648998 () Bool)

(assert (=> b!6944263 m!7648998))

(assert (=> b!6944265 m!7648992))

(assert (=> b!6944264 m!7648992))

(assert (=> b!6944271 m!7648996))

(assert (=> b!6944271 m!7648996))

(declare-fun m!7649000 () Bool)

(assert (=> b!6944271 m!7649000))

(assert (=> b!6944268 m!7648996))

(assert (=> b!6944268 m!7648996))

(assert (=> b!6944268 m!7649000))

(declare-fun m!7649002 () Bool)

(assert (=> bm!630806 m!7649002))

(assert (=> d!2168331 m!7649002))

(assert (=> d!2168331 m!7648448))

(assert (=> b!6943703 d!2168331))

(declare-fun d!2168333 () Bool)

(assert (=> d!2168333 (= (isDefined!13445 (findConcatSeparation!3158 r1!6342 r2!6280 Nil!66604 lt!2476878 lt!2476878)) (not (isEmpty!38879 (findConcatSeparation!3158 r1!6342 r2!6280 Nil!66604 lt!2476878 lt!2476878))))))

(declare-fun bs!1856317 () Bool)

(assert (= bs!1856317 d!2168333))

(assert (=> bs!1856317 m!7648480))

(declare-fun m!7649004 () Bool)

(assert (=> bs!1856317 m!7649004))

(assert (=> b!6943703 d!2168333))

(declare-fun d!2168335 () Bool)

(assert (=> d!2168335 (isDefined!13445 (findConcatSeparation!3158 lt!2476875 r3!135 Nil!66604 s!14361 s!14361))))

(declare-fun lt!2476973 () Unit!160688)

(declare-fun choose!51745 (Regex!16975 Regex!16975 List!66728 List!66728 List!66728 List!66728 List!66728) Unit!160688)

(assert (=> d!2168335 (= lt!2476973 (choose!51745 lt!2476875 r3!135 lt!2476878 (_2!37135 lt!2476861) s!14361 Nil!66604 s!14361))))

(assert (=> d!2168335 (validRegex!8681 lt!2476875)))

(assert (=> d!2168335 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!118 lt!2476875 r3!135 lt!2476878 (_2!37135 lt!2476861) s!14361 Nil!66604 s!14361) lt!2476973)))

(declare-fun bs!1856325 () Bool)

(assert (= bs!1856325 d!2168335))

(assert (=> bs!1856325 m!7648476))

(assert (=> bs!1856325 m!7648476))

(assert (=> bs!1856325 m!7648490))

(declare-fun m!7649012 () Bool)

(assert (=> bs!1856325 m!7649012))

(assert (=> bs!1856325 m!7648908))

(assert (=> b!6943703 d!2168335))

(declare-fun b!6944283 () Bool)

(declare-fun e!4177182 () Bool)

(declare-fun e!4177185 () Bool)

(assert (=> b!6944283 (= e!4177182 e!4177185)))

(declare-fun res!2832925 () Bool)

(assert (=> b!6944283 (=> (not res!2832925) (not e!4177185))))

(declare-fun lt!2476974 () Bool)

(assert (=> b!6944283 (= res!2832925 (not lt!2476974))))

(declare-fun b!6944284 () Bool)

(declare-fun e!4177186 () Bool)

(assert (=> b!6944284 (= e!4177186 (not lt!2476974))))

(declare-fun b!6944285 () Bool)

(declare-fun res!2832922 () Bool)

(assert (=> b!6944285 (=> res!2832922 e!4177182)))

(assert (=> b!6944285 (= res!2832922 (not ((_ is ElementMatch!16975) r1!6342)))))

(assert (=> b!6944285 (= e!4177186 e!4177182)))

(declare-fun b!6944286 () Bool)

(declare-fun e!4177181 () Bool)

(assert (=> b!6944286 (= e!4177181 e!4177186)))

(declare-fun c!1288430 () Bool)

(assert (=> b!6944286 (= c!1288430 ((_ is EmptyLang!16975) r1!6342))))

(declare-fun b!6944287 () Bool)

(declare-fun e!4177183 () Bool)

(assert (=> b!6944287 (= e!4177185 e!4177183)))

(declare-fun res!2832923 () Bool)

(assert (=> b!6944287 (=> res!2832923 e!4177183)))

(declare-fun call!630814 () Bool)

(assert (=> b!6944287 (= res!2832923 call!630814)))

(declare-fun b!6944288 () Bool)

(declare-fun e!4177187 () Bool)

(assert (=> b!6944288 (= e!4177187 (matchR!9114 (derivativeStep!5463 r1!6342 (head!13916 (_1!37135 lt!2476883))) (tail!12968 (_1!37135 lt!2476883))))))

(declare-fun b!6944289 () Bool)

(assert (=> b!6944289 (= e!4177183 (not (= (head!13916 (_1!37135 lt!2476883)) (c!1288295 r1!6342))))))

(declare-fun b!6944291 () Bool)

(declare-fun res!2832920 () Bool)

(declare-fun e!4177184 () Bool)

(assert (=> b!6944291 (=> (not res!2832920) (not e!4177184))))

(assert (=> b!6944291 (= res!2832920 (not call!630814))))

(declare-fun b!6944292 () Bool)

(declare-fun res!2832921 () Bool)

(assert (=> b!6944292 (=> res!2832921 e!4177182)))

(assert (=> b!6944292 (= res!2832921 e!4177184)))

(declare-fun res!2832918 () Bool)

(assert (=> b!6944292 (=> (not res!2832918) (not e!4177184))))

(assert (=> b!6944292 (= res!2832918 lt!2476974)))

(declare-fun bm!630809 () Bool)

(assert (=> bm!630809 (= call!630814 (isEmpty!38878 (_1!37135 lt!2476883)))))

(declare-fun b!6944293 () Bool)

(declare-fun res!2832924 () Bool)

(assert (=> b!6944293 (=> res!2832924 e!4177183)))

(assert (=> b!6944293 (= res!2832924 (not (isEmpty!38878 (tail!12968 (_1!37135 lt!2476883)))))))

(declare-fun b!6944294 () Bool)

(assert (=> b!6944294 (= e!4177187 (nullable!6788 r1!6342))))

(declare-fun b!6944290 () Bool)

(assert (=> b!6944290 (= e!4177184 (= (head!13916 (_1!37135 lt!2476883)) (c!1288295 r1!6342)))))

(declare-fun d!2168339 () Bool)

(assert (=> d!2168339 e!4177181))

(declare-fun c!1288429 () Bool)

(assert (=> d!2168339 (= c!1288429 ((_ is EmptyExpr!16975) r1!6342))))

(assert (=> d!2168339 (= lt!2476974 e!4177187)))

(declare-fun c!1288428 () Bool)

(assert (=> d!2168339 (= c!1288428 (isEmpty!38878 (_1!37135 lt!2476883)))))

(assert (=> d!2168339 (validRegex!8681 r1!6342)))

(assert (=> d!2168339 (= (matchR!9114 r1!6342 (_1!37135 lt!2476883)) lt!2476974)))

(declare-fun b!6944295 () Bool)

(assert (=> b!6944295 (= e!4177181 (= lt!2476974 call!630814))))

(declare-fun b!6944296 () Bool)

(declare-fun res!2832919 () Bool)

(assert (=> b!6944296 (=> (not res!2832919) (not e!4177184))))

(assert (=> b!6944296 (= res!2832919 (isEmpty!38878 (tail!12968 (_1!37135 lt!2476883))))))

(assert (= (and d!2168339 c!1288428) b!6944294))

(assert (= (and d!2168339 (not c!1288428)) b!6944288))

(assert (= (and d!2168339 c!1288429) b!6944295))

(assert (= (and d!2168339 (not c!1288429)) b!6944286))

(assert (= (and b!6944286 c!1288430) b!6944284))

(assert (= (and b!6944286 (not c!1288430)) b!6944285))

(assert (= (and b!6944285 (not res!2832922)) b!6944292))

(assert (= (and b!6944292 res!2832918) b!6944291))

(assert (= (and b!6944291 res!2832920) b!6944296))

(assert (= (and b!6944296 res!2832919) b!6944290))

(assert (= (and b!6944292 (not res!2832921)) b!6944283))

(assert (= (and b!6944283 res!2832925) b!6944287))

(assert (= (and b!6944287 (not res!2832923)) b!6944293))

(assert (= (and b!6944293 (not res!2832924)) b!6944289))

(assert (= (or b!6944295 b!6944287 b!6944291) bm!630809))

(declare-fun m!7649014 () Bool)

(assert (=> b!6944294 m!7649014))

(declare-fun m!7649016 () Bool)

(assert (=> b!6944288 m!7649016))

(assert (=> b!6944288 m!7649016))

(declare-fun m!7649018 () Bool)

(assert (=> b!6944288 m!7649018))

(declare-fun m!7649020 () Bool)

(assert (=> b!6944288 m!7649020))

(assert (=> b!6944288 m!7649018))

(assert (=> b!6944288 m!7649020))

(declare-fun m!7649022 () Bool)

(assert (=> b!6944288 m!7649022))

(assert (=> b!6944290 m!7649016))

(assert (=> b!6944289 m!7649016))

(assert (=> b!6944296 m!7649020))

(assert (=> b!6944296 m!7649020))

(declare-fun m!7649024 () Bool)

(assert (=> b!6944296 m!7649024))

(assert (=> b!6944293 m!7649020))

(assert (=> b!6944293 m!7649020))

(assert (=> b!6944293 m!7649024))

(declare-fun m!7649026 () Bool)

(assert (=> bm!630809 m!7649026))

(assert (=> d!2168339 m!7649026))

(assert (=> d!2168339 m!7648542))

(assert (=> b!6943703 d!2168339))

(declare-fun d!2168341 () Bool)

(assert (=> d!2168341 (= (get!23399 lt!2476864) (v!53015 lt!2476864))))

(assert (=> b!6943703 d!2168341))

(declare-fun bs!1856337 () Bool)

(declare-fun d!2168343 () Bool)

(assert (= bs!1856337 (and d!2168343 b!6943703)))

(declare-fun lambda!395895 () Int)

(assert (=> bs!1856337 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 lt!2476875)) (= lambda!395895 lambda!395851))))

(assert (=> bs!1856337 (= (and (= (_2!37135 lt!2476883) lt!2476878) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395895 lambda!395849))))

(declare-fun bs!1856338 () Bool)

(assert (= bs!1856338 (and d!2168343 d!2168289)))

(assert (=> bs!1856338 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 lt!2476875)) (= lambda!395895 lambda!395889))))

(declare-fun bs!1856339 () Bool)

(assert (= bs!1856339 (and d!2168343 b!6943704)))

(assert (=> bs!1856339 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476856)) (= lambda!395895 lambda!395852))))

(declare-fun bs!1856341 () Bool)

(assert (= bs!1856341 (and d!2168343 b!6943858)))

(assert (=> bs!1856341 (not (= lambda!395895 lambda!395860))))

(assert (=> bs!1856337 (= lambda!395895 lambda!395847)))

(assert (=> bs!1856337 (not (= lambda!395895 lambda!395850))))

(declare-fun bs!1856344 () Bool)

(assert (= bs!1856344 (and d!2168343 b!6943853)))

(assert (=> bs!1856344 (not (= lambda!395895 lambda!395861))))

(assert (=> bs!1856337 (not (= lambda!395895 lambda!395846))))

(declare-fun bs!1856347 () Bool)

(assert (= bs!1856347 (and d!2168343 b!6944008)))

(assert (=> bs!1856347 (not (= lambda!395895 lambda!395874))))

(assert (=> bs!1856337 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476856)) (= lambda!395895 lambda!395845))))

(assert (=> bs!1856337 (not (= lambda!395895 lambda!395848))))

(declare-fun bs!1856350 () Bool)

(assert (= bs!1856350 (and d!2168343 b!6944011)))

(assert (=> bs!1856350 (not (= lambda!395895 lambda!395873))))

(assert (=> d!2168343 true))

(assert (=> d!2168343 true))

(assert (=> d!2168343 true))

(assert (=> d!2168343 (= (isDefined!13445 (findConcatSeparation!3158 r2!6280 r3!135 Nil!66604 (_2!37135 lt!2476883) (_2!37135 lt!2476883))) (Exists!3975 lambda!395895))))

(declare-fun lt!2476975 () Unit!160688)

(assert (=> d!2168343 (= lt!2476975 (choose!51744 r2!6280 r3!135 (_2!37135 lt!2476883)))))

(assert (=> d!2168343 (validRegex!8681 r2!6280)))

(assert (=> d!2168343 (= (lemmaFindConcatSeparationEquivalentToExists!2916 r2!6280 r3!135 (_2!37135 lt!2476883)) lt!2476975)))

(declare-fun bs!1856353 () Bool)

(assert (= bs!1856353 d!2168343))

(assert (=> bs!1856353 m!7648540))

(assert (=> bs!1856353 m!7648514))

(declare-fun m!7649028 () Bool)

(assert (=> bs!1856353 m!7649028))

(declare-fun m!7649030 () Bool)

(assert (=> bs!1856353 m!7649030))

(declare-fun m!7649032 () Bool)

(assert (=> bs!1856353 m!7649032))

(assert (=> bs!1856353 m!7648514))

(assert (=> b!6943703 d!2168343))

(declare-fun bs!1856358 () Bool)

(declare-fun d!2168345 () Bool)

(assert (= bs!1856358 (and d!2168345 b!6943703)))

(declare-fun lambda!395897 () Int)

(assert (=> bs!1856358 (= (and (= r1!6342 lt!2476875) (= lt!2476856 r3!135)) (= lambda!395897 lambda!395851))))

(assert (=> bs!1856358 (= (and (= s!14361 lt!2476878) (= lt!2476856 r2!6280)) (= lambda!395897 lambda!395849))))

(declare-fun bs!1856360 () Bool)

(assert (= bs!1856360 (and d!2168345 d!2168289)))

(assert (=> bs!1856360 (= (and (= r1!6342 lt!2476875) (= lt!2476856 r3!135)) (= lambda!395897 lambda!395889))))

(declare-fun bs!1856362 () Bool)

(assert (= bs!1856362 (and d!2168345 b!6943704)))

(assert (=> bs!1856362 (= lambda!395897 lambda!395852)))

(declare-fun bs!1856363 () Bool)

(assert (= bs!1856363 (and d!2168345 d!2168343)))

(assert (=> bs!1856363 (= (and (= s!14361 (_2!37135 lt!2476883)) (= r1!6342 r2!6280) (= lt!2476856 r3!135)) (= lambda!395897 lambda!395895))))

(declare-fun bs!1856364 () Bool)

(assert (= bs!1856364 (and d!2168345 b!6943858)))

(assert (=> bs!1856364 (not (= lambda!395897 lambda!395860))))

(assert (=> bs!1856358 (= (and (= s!14361 (_2!37135 lt!2476883)) (= r1!6342 r2!6280) (= lt!2476856 r3!135)) (= lambda!395897 lambda!395847))))

(assert (=> bs!1856358 (not (= lambda!395897 lambda!395850))))

(declare-fun bs!1856368 () Bool)

(assert (= bs!1856368 (and d!2168345 b!6943853)))

(assert (=> bs!1856368 (not (= lambda!395897 lambda!395861))))

(assert (=> bs!1856358 (not (= lambda!395897 lambda!395846))))

(declare-fun bs!1856370 () Bool)

(assert (= bs!1856370 (and d!2168345 b!6944008)))

(assert (=> bs!1856370 (not (= lambda!395897 lambda!395874))))

(assert (=> bs!1856358 (= lambda!395897 lambda!395845)))

(assert (=> bs!1856358 (not (= lambda!395897 lambda!395848))))

(declare-fun bs!1856371 () Bool)

(assert (= bs!1856371 (and d!2168345 b!6944011)))

(assert (=> bs!1856371 (not (= lambda!395897 lambda!395873))))

(assert (=> d!2168345 true))

(assert (=> d!2168345 true))

(assert (=> d!2168345 true))

(assert (=> d!2168345 (= (isDefined!13445 (findConcatSeparation!3158 r1!6342 lt!2476856 Nil!66604 s!14361 s!14361)) (Exists!3975 lambda!395897))))

(declare-fun lt!2476976 () Unit!160688)

(assert (=> d!2168345 (= lt!2476976 (choose!51744 r1!6342 lt!2476856 s!14361))))

(assert (=> d!2168345 (validRegex!8681 r1!6342)))

(assert (=> d!2168345 (= (lemmaFindConcatSeparationEquivalentToExists!2916 r1!6342 lt!2476856 s!14361) lt!2476976)))

(declare-fun bs!1856372 () Bool)

(assert (= bs!1856372 d!2168345))

(assert (=> bs!1856372 m!7648542))

(assert (=> bs!1856372 m!7648444))

(declare-fun m!7649034 () Bool)

(assert (=> bs!1856372 m!7649034))

(declare-fun m!7649036 () Bool)

(assert (=> bs!1856372 m!7649036))

(declare-fun m!7649038 () Bool)

(assert (=> bs!1856372 m!7649038))

(assert (=> bs!1856372 m!7648444))

(assert (=> b!6943703 d!2168345))

(declare-fun d!2168347 () Bool)

(assert (=> d!2168347 (= (Exists!3975 lambda!395846) (choose!51743 lambda!395846))))

(declare-fun bs!1856373 () Bool)

(assert (= bs!1856373 d!2168347))

(declare-fun m!7649046 () Bool)

(assert (=> bs!1856373 m!7649046))

(assert (=> b!6943703 d!2168347))

(declare-fun b!6944310 () Bool)

(declare-fun res!2832929 () Bool)

(declare-fun e!4177195 () Bool)

(assert (=> b!6944310 (=> (not res!2832929) (not e!4177195))))

(declare-fun lt!2476977 () List!66728)

(assert (=> b!6944310 (= res!2832929 (= (size!40806 lt!2476977) (+ (size!40806 (_1!37135 lt!2476883)) (size!40806 (_1!37135 lt!2476861)))))))

(declare-fun b!6944311 () Bool)

(assert (=> b!6944311 (= e!4177195 (or (not (= (_1!37135 lt!2476861) Nil!66604)) (= lt!2476977 (_1!37135 lt!2476883))))))

(declare-fun d!2168351 () Bool)

(assert (=> d!2168351 e!4177195))

(declare-fun res!2832930 () Bool)

(assert (=> d!2168351 (=> (not res!2832930) (not e!4177195))))

(assert (=> d!2168351 (= res!2832930 (= (content!13109 lt!2476977) ((_ map or) (content!13109 (_1!37135 lt!2476883)) (content!13109 (_1!37135 lt!2476861)))))))

(declare-fun e!4177196 () List!66728)

(assert (=> d!2168351 (= lt!2476977 e!4177196)))

(declare-fun c!1288435 () Bool)

(assert (=> d!2168351 (= c!1288435 ((_ is Nil!66604) (_1!37135 lt!2476883)))))

(assert (=> d!2168351 (= (++!15014 (_1!37135 lt!2476883) (_1!37135 lt!2476861)) lt!2476977)))

(declare-fun b!6944309 () Bool)

(assert (=> b!6944309 (= e!4177196 (Cons!66604 (h!73052 (_1!37135 lt!2476883)) (++!15014 (t!380471 (_1!37135 lt!2476883)) (_1!37135 lt!2476861))))))

(declare-fun b!6944308 () Bool)

(assert (=> b!6944308 (= e!4177196 (_1!37135 lt!2476861))))

(assert (= (and d!2168351 c!1288435) b!6944308))

(assert (= (and d!2168351 (not c!1288435)) b!6944309))

(assert (= (and d!2168351 res!2832930) b!6944310))

(assert (= (and b!6944310 res!2832929) b!6944311))

(declare-fun m!7649048 () Bool)

(assert (=> b!6944310 m!7649048))

(declare-fun m!7649050 () Bool)

(assert (=> b!6944310 m!7649050))

(declare-fun m!7649052 () Bool)

(assert (=> b!6944310 m!7649052))

(declare-fun m!7649054 () Bool)

(assert (=> d!2168351 m!7649054))

(declare-fun m!7649056 () Bool)

(assert (=> d!2168351 m!7649056))

(declare-fun m!7649058 () Bool)

(assert (=> d!2168351 m!7649058))

(declare-fun m!7649060 () Bool)

(assert (=> b!6944309 m!7649060))

(assert (=> b!6943703 d!2168351))

(declare-fun bs!1856378 () Bool)

(declare-fun b!6944320 () Bool)

(assert (= bs!1856378 (and b!6944320 d!2168345)))

(declare-fun lambda!395899 () Int)

(assert (=> bs!1856378 (not (= lambda!395899 lambda!395897))))

(declare-fun bs!1856381 () Bool)

(assert (= bs!1856381 (and b!6944320 b!6943703)))

(assert (=> bs!1856381 (not (= lambda!395899 lambda!395851))))

(assert (=> bs!1856381 (not (= lambda!395899 lambda!395849))))

(declare-fun bs!1856382 () Bool)

(assert (= bs!1856382 (and b!6944320 d!2168289)))

(assert (=> bs!1856382 (not (= lambda!395899 lambda!395889))))

(declare-fun bs!1856384 () Bool)

(assert (= bs!1856384 (and b!6944320 b!6943704)))

(assert (=> bs!1856384 (not (= lambda!395899 lambda!395852))))

(declare-fun bs!1856386 () Bool)

(assert (= bs!1856386 (and b!6944320 d!2168343)))

(assert (=> bs!1856386 (not (= lambda!395899 lambda!395895))))

(declare-fun bs!1856387 () Bool)

(assert (= bs!1856387 (and b!6944320 b!6943858)))

(assert (=> bs!1856387 (= (and (= (_1!37135 lt!2476883) s!14361) (= (reg!17304 r1!6342) (reg!17304 lt!2476859)) (= r1!6342 lt!2476859)) (= lambda!395899 lambda!395860))))

(assert (=> bs!1856381 (not (= lambda!395899 lambda!395847))))

(assert (=> bs!1856381 (not (= lambda!395899 lambda!395850))))

(declare-fun bs!1856390 () Bool)

(assert (= bs!1856390 (and b!6944320 b!6943853)))

(assert (=> bs!1856390 (not (= lambda!395899 lambda!395861))))

(assert (=> bs!1856381 (not (= lambda!395899 lambda!395846))))

(declare-fun bs!1856393 () Bool)

(assert (= bs!1856393 (and b!6944320 b!6944008)))

(assert (=> bs!1856393 (not (= lambda!395899 lambda!395874))))

(assert (=> bs!1856381 (not (= lambda!395899 lambda!395845))))

(assert (=> bs!1856381 (not (= lambda!395899 lambda!395848))))

(declare-fun bs!1856394 () Bool)

(assert (= bs!1856394 (and b!6944320 b!6944011)))

(assert (=> bs!1856394 (= (and (= (_1!37135 lt!2476883) s!14361) (= (reg!17304 r1!6342) (reg!17304 lt!2476870)) (= r1!6342 lt!2476870)) (= lambda!395899 lambda!395873))))

(assert (=> b!6944320 true))

(assert (=> b!6944320 true))

(declare-fun bs!1856401 () Bool)

(declare-fun b!6944317 () Bool)

(assert (= bs!1856401 (and b!6944317 d!2168345)))

(declare-fun lambda!395900 () Int)

(assert (=> bs!1856401 (not (= lambda!395900 lambda!395897))))

(declare-fun bs!1856403 () Bool)

(assert (= bs!1856403 (and b!6944317 b!6943703)))

(assert (=> bs!1856403 (not (= lambda!395900 lambda!395851))))

(declare-fun bs!1856404 () Bool)

(assert (= bs!1856404 (and b!6944317 b!6944320)))

(assert (=> bs!1856404 (not (= lambda!395900 lambda!395899))))

(assert (=> bs!1856403 (not (= lambda!395900 lambda!395849))))

(declare-fun bs!1856406 () Bool)

(assert (= bs!1856406 (and b!6944317 d!2168289)))

(assert (=> bs!1856406 (not (= lambda!395900 lambda!395889))))

(declare-fun bs!1856407 () Bool)

(assert (= bs!1856407 (and b!6944317 b!6943704)))

(assert (=> bs!1856407 (not (= lambda!395900 lambda!395852))))

(declare-fun bs!1856408 () Bool)

(assert (= bs!1856408 (and b!6944317 d!2168343)))

(assert (=> bs!1856408 (not (= lambda!395900 lambda!395895))))

(declare-fun bs!1856409 () Bool)

(assert (= bs!1856409 (and b!6944317 b!6943858)))

(assert (=> bs!1856409 (not (= lambda!395900 lambda!395860))))

(assert (=> bs!1856403 (not (= lambda!395900 lambda!395847))))

(assert (=> bs!1856403 (= (and (= (_1!37135 lt!2476883) lt!2476878) (= (regOne!34462 r1!6342) r1!6342) (= (regTwo!34462 r1!6342) r2!6280)) (= lambda!395900 lambda!395850))))

(declare-fun bs!1856410 () Bool)

(assert (= bs!1856410 (and b!6944317 b!6943853)))

(assert (=> bs!1856410 (= (and (= (_1!37135 lt!2476883) s!14361) (= (regOne!34462 r1!6342) (regOne!34462 lt!2476859)) (= (regTwo!34462 r1!6342) (regTwo!34462 lt!2476859))) (= lambda!395900 lambda!395861))))

(assert (=> bs!1856403 (= (and (= (_1!37135 lt!2476883) s!14361) (= (regOne!34462 r1!6342) r1!6342) (= (regTwo!34462 r1!6342) lt!2476856)) (= lambda!395900 lambda!395846))))

(declare-fun bs!1856413 () Bool)

(assert (= bs!1856413 (and b!6944317 b!6944008)))

(assert (=> bs!1856413 (= (and (= (_1!37135 lt!2476883) s!14361) (= (regOne!34462 r1!6342) (regOne!34462 lt!2476870)) (= (regTwo!34462 r1!6342) (regTwo!34462 lt!2476870))) (= lambda!395900 lambda!395874))))

(assert (=> bs!1856403 (not (= lambda!395900 lambda!395845))))

(assert (=> bs!1856403 (= (and (= (_1!37135 lt!2476883) (_2!37135 lt!2476883)) (= (regOne!34462 r1!6342) r2!6280) (= (regTwo!34462 r1!6342) r3!135)) (= lambda!395900 lambda!395848))))

(declare-fun bs!1856416 () Bool)

(assert (= bs!1856416 (and b!6944317 b!6944011)))

(assert (=> bs!1856416 (not (= lambda!395900 lambda!395873))))

(assert (=> b!6944317 true))

(assert (=> b!6944317 true))

(declare-fun bm!630812 () Bool)

(declare-fun call!630818 () Bool)

(assert (=> bm!630812 (= call!630818 (isEmpty!38878 (_1!37135 lt!2476883)))))

(declare-fun b!6944312 () Bool)

(declare-fun c!1288438 () Bool)

(assert (=> b!6944312 (= c!1288438 ((_ is Union!16975) r1!6342))))

(declare-fun e!4177202 () Bool)

(declare-fun e!4177198 () Bool)

(assert (=> b!6944312 (= e!4177202 e!4177198)))

(declare-fun b!6944313 () Bool)

(assert (=> b!6944313 (= e!4177202 (= (_1!37135 lt!2476883) (Cons!66604 (c!1288295 r1!6342) Nil!66604)))))

(declare-fun bm!630813 () Bool)

(declare-fun c!1288439 () Bool)

(declare-fun call!630817 () Bool)

(assert (=> bm!630813 (= call!630817 (Exists!3975 (ite c!1288439 lambda!395899 lambda!395900)))))

(declare-fun b!6944314 () Bool)

(declare-fun res!2832931 () Bool)

(declare-fun e!4177200 () Bool)

(assert (=> b!6944314 (=> res!2832931 e!4177200)))

(assert (=> b!6944314 (= res!2832931 call!630818)))

(declare-fun e!4177201 () Bool)

(assert (=> b!6944314 (= e!4177201 e!4177200)))

(declare-fun d!2168353 () Bool)

(declare-fun c!1288436 () Bool)

(assert (=> d!2168353 (= c!1288436 ((_ is EmptyExpr!16975) r1!6342))))

(declare-fun e!4177203 () Bool)

(assert (=> d!2168353 (= (matchRSpec!4032 r1!6342 (_1!37135 lt!2476883)) e!4177203)))

(declare-fun b!6944315 () Bool)

(declare-fun e!4177197 () Bool)

(assert (=> b!6944315 (= e!4177203 e!4177197)))

(declare-fun res!2832932 () Bool)

(assert (=> b!6944315 (= res!2832932 (not ((_ is EmptyLang!16975) r1!6342)))))

(assert (=> b!6944315 (=> (not res!2832932) (not e!4177197))))

(declare-fun b!6944316 () Bool)

(declare-fun e!4177199 () Bool)

(assert (=> b!6944316 (= e!4177199 (matchRSpec!4032 (regTwo!34463 r1!6342) (_1!37135 lt!2476883)))))

(assert (=> b!6944317 (= e!4177201 call!630817)))

(declare-fun b!6944318 () Bool)

(declare-fun c!1288437 () Bool)

(assert (=> b!6944318 (= c!1288437 ((_ is ElementMatch!16975) r1!6342))))

(assert (=> b!6944318 (= e!4177197 e!4177202)))

(declare-fun b!6944319 () Bool)

(assert (=> b!6944319 (= e!4177198 e!4177201)))

(assert (=> b!6944319 (= c!1288439 ((_ is Star!16975) r1!6342))))

(assert (=> b!6944320 (= e!4177200 call!630817)))

(declare-fun b!6944321 () Bool)

(assert (=> b!6944321 (= e!4177203 call!630818)))

(declare-fun b!6944322 () Bool)

(assert (=> b!6944322 (= e!4177198 e!4177199)))

(declare-fun res!2832933 () Bool)

(assert (=> b!6944322 (= res!2832933 (matchRSpec!4032 (regOne!34463 r1!6342) (_1!37135 lt!2476883)))))

(assert (=> b!6944322 (=> res!2832933 e!4177199)))

(assert (= (and d!2168353 c!1288436) b!6944321))

(assert (= (and d!2168353 (not c!1288436)) b!6944315))

(assert (= (and b!6944315 res!2832932) b!6944318))

(assert (= (and b!6944318 c!1288437) b!6944313))

(assert (= (and b!6944318 (not c!1288437)) b!6944312))

(assert (= (and b!6944312 c!1288438) b!6944322))

(assert (= (and b!6944312 (not c!1288438)) b!6944319))

(assert (= (and b!6944322 (not res!2832933)) b!6944316))

(assert (= (and b!6944319 c!1288439) b!6944314))

(assert (= (and b!6944319 (not c!1288439)) b!6944317))

(assert (= (and b!6944314 (not res!2832931)) b!6944320))

(assert (= (or b!6944320 b!6944317) bm!630813))

(assert (= (or b!6944321 b!6944314) bm!630812))

(assert (=> bm!630812 m!7649026))

(declare-fun m!7649062 () Bool)

(assert (=> bm!630813 m!7649062))

(declare-fun m!7649064 () Bool)

(assert (=> b!6944316 m!7649064))

(declare-fun m!7649066 () Bool)

(assert (=> b!6944322 m!7649066))

(assert (=> b!6943703 d!2168353))

(declare-fun d!2168355 () Bool)

(assert (=> d!2168355 (= (matchR!9114 lt!2476856 (_2!37135 lt!2476883)) (matchRSpec!4032 lt!2476856 (_2!37135 lt!2476883)))))

(declare-fun lt!2476978 () Unit!160688)

(assert (=> d!2168355 (= lt!2476978 (choose!51741 lt!2476856 (_2!37135 lt!2476883)))))

(assert (=> d!2168355 (validRegex!8681 lt!2476856)))

(assert (=> d!2168355 (= (mainMatchTheorem!4032 lt!2476856 (_2!37135 lt!2476883)) lt!2476978)))

(declare-fun bs!1856422 () Bool)

(assert (= bs!1856422 d!2168355))

(assert (=> bs!1856422 m!7648456))

(assert (=> bs!1856422 m!7648518))

(declare-fun m!7649068 () Bool)

(assert (=> bs!1856422 m!7649068))

(assert (=> bs!1856422 m!7648448))

(assert (=> b!6943703 d!2168355))

(declare-fun b!6944325 () Bool)

(declare-fun res!2832934 () Bool)

(declare-fun e!4177204 () Bool)

(assert (=> b!6944325 (=> (not res!2832934) (not e!4177204))))

(declare-fun lt!2476979 () List!66728)

(assert (=> b!6944325 (= res!2832934 (= (size!40806 lt!2476979) (+ (size!40806 (_1!37135 lt!2476861)) (size!40806 (_2!37135 lt!2476861)))))))

(declare-fun b!6944326 () Bool)

(assert (=> b!6944326 (= e!4177204 (or (not (= (_2!37135 lt!2476861) Nil!66604)) (= lt!2476979 (_1!37135 lt!2476861))))))

(declare-fun d!2168357 () Bool)

(assert (=> d!2168357 e!4177204))

(declare-fun res!2832935 () Bool)

(assert (=> d!2168357 (=> (not res!2832935) (not e!4177204))))

(assert (=> d!2168357 (= res!2832935 (= (content!13109 lt!2476979) ((_ map or) (content!13109 (_1!37135 lt!2476861)) (content!13109 (_2!37135 lt!2476861)))))))

(declare-fun e!4177205 () List!66728)

(assert (=> d!2168357 (= lt!2476979 e!4177205)))

(declare-fun c!1288440 () Bool)

(assert (=> d!2168357 (= c!1288440 ((_ is Nil!66604) (_1!37135 lt!2476861)))))

(assert (=> d!2168357 (= (++!15014 (_1!37135 lt!2476861) (_2!37135 lt!2476861)) lt!2476979)))

(declare-fun b!6944324 () Bool)

(assert (=> b!6944324 (= e!4177205 (Cons!66604 (h!73052 (_1!37135 lt!2476861)) (++!15014 (t!380471 (_1!37135 lt!2476861)) (_2!37135 lt!2476861))))))

(declare-fun b!6944323 () Bool)

(assert (=> b!6944323 (= e!4177205 (_2!37135 lt!2476861))))

(assert (= (and d!2168357 c!1288440) b!6944323))

(assert (= (and d!2168357 (not c!1288440)) b!6944324))

(assert (= (and d!2168357 res!2832935) b!6944325))

(assert (= (and b!6944325 res!2832934) b!6944326))

(declare-fun m!7649070 () Bool)

(assert (=> b!6944325 m!7649070))

(assert (=> b!6944325 m!7649052))

(assert (=> b!6944325 m!7648962))

(declare-fun m!7649072 () Bool)

(assert (=> d!2168357 m!7649072))

(assert (=> d!2168357 m!7649058))

(assert (=> d!2168357 m!7648968))

(declare-fun m!7649074 () Bool)

(assert (=> b!6944324 m!7649074))

(assert (=> b!6943703 d!2168357))

(declare-fun bs!1856466 () Bool)

(declare-fun d!2168359 () Bool)

(assert (= bs!1856466 (and d!2168359 d!2168345)))

(declare-fun lambda!395908 () Int)

(assert (=> bs!1856466 (= (and (= lt!2476878 s!14361) (= r2!6280 lt!2476856)) (= lambda!395908 lambda!395897))))

(declare-fun bs!1856467 () Bool)

(assert (= bs!1856467 (and d!2168359 b!6943703)))

(assert (=> bs!1856467 (= (and (= lt!2476878 s!14361) (= r1!6342 lt!2476875) (= r2!6280 r3!135)) (= lambda!395908 lambda!395851))))

(declare-fun bs!1856469 () Bool)

(assert (= bs!1856469 (and d!2168359 b!6944320)))

(assert (=> bs!1856469 (not (= lambda!395908 lambda!395899))))

(assert (=> bs!1856467 (= lambda!395908 lambda!395849)))

(declare-fun bs!1856471 () Bool)

(assert (= bs!1856471 (and d!2168359 d!2168289)))

(assert (=> bs!1856471 (= (and (= lt!2476878 s!14361) (= r1!6342 lt!2476875) (= r2!6280 r3!135)) (= lambda!395908 lambda!395889))))

(declare-fun bs!1856473 () Bool)

(assert (= bs!1856473 (and d!2168359 b!6943704)))

(assert (=> bs!1856473 (= (and (= lt!2476878 s!14361) (= r2!6280 lt!2476856)) (= lambda!395908 lambda!395852))))

(declare-fun bs!1856475 () Bool)

(assert (= bs!1856475 (and d!2168359 d!2168343)))

(assert (=> bs!1856475 (= (and (= lt!2476878 (_2!37135 lt!2476883)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395908 lambda!395895))))

(declare-fun bs!1856477 () Bool)

(assert (= bs!1856477 (and d!2168359 b!6943858)))

(assert (=> bs!1856477 (not (= lambda!395908 lambda!395860))))

(declare-fun bs!1856479 () Bool)

(assert (= bs!1856479 (and d!2168359 b!6944317)))

(assert (=> bs!1856479 (not (= lambda!395908 lambda!395900))))

(assert (=> bs!1856467 (= (and (= lt!2476878 (_2!37135 lt!2476883)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395908 lambda!395847))))

(assert (=> bs!1856467 (not (= lambda!395908 lambda!395850))))

(declare-fun bs!1856481 () Bool)

(assert (= bs!1856481 (and d!2168359 b!6943853)))

(assert (=> bs!1856481 (not (= lambda!395908 lambda!395861))))

(assert (=> bs!1856467 (not (= lambda!395908 lambda!395846))))

(declare-fun bs!1856483 () Bool)

(assert (= bs!1856483 (and d!2168359 b!6944008)))

(assert (=> bs!1856483 (not (= lambda!395908 lambda!395874))))

(assert (=> bs!1856467 (= (and (= lt!2476878 s!14361) (= r2!6280 lt!2476856)) (= lambda!395908 lambda!395845))))

(assert (=> bs!1856467 (not (= lambda!395908 lambda!395848))))

(declare-fun bs!1856487 () Bool)

(assert (= bs!1856487 (and d!2168359 b!6944011)))

(assert (=> bs!1856487 (not (= lambda!395908 lambda!395873))))

(assert (=> d!2168359 true))

(assert (=> d!2168359 true))

(assert (=> d!2168359 true))

(declare-fun lambda!395909 () Int)

(assert (=> bs!1856466 (not (= lambda!395909 lambda!395897))))

(assert (=> bs!1856467 (not (= lambda!395909 lambda!395851))))

(assert (=> bs!1856469 (not (= lambda!395909 lambda!395899))))

(assert (=> bs!1856467 (not (= lambda!395909 lambda!395849))))

(assert (=> bs!1856473 (not (= lambda!395909 lambda!395852))))

(assert (=> bs!1856475 (not (= lambda!395909 lambda!395895))))

(assert (=> bs!1856477 (not (= lambda!395909 lambda!395860))))

(assert (=> bs!1856479 (= (and (= lt!2476878 (_1!37135 lt!2476883)) (= r1!6342 (regOne!34462 r1!6342)) (= r2!6280 (regTwo!34462 r1!6342))) (= lambda!395909 lambda!395900))))

(assert (=> bs!1856467 (not (= lambda!395909 lambda!395847))))

(assert (=> bs!1856467 (= lambda!395909 lambda!395850)))

(assert (=> bs!1856481 (= (and (= lt!2476878 s!14361) (= r1!6342 (regOne!34462 lt!2476859)) (= r2!6280 (regTwo!34462 lt!2476859))) (= lambda!395909 lambda!395861))))

(assert (=> bs!1856467 (= (and (= lt!2476878 s!14361) (= r2!6280 lt!2476856)) (= lambda!395909 lambda!395846))))

(declare-fun bs!1856493 () Bool)

(assert (= bs!1856493 d!2168359))

(assert (=> bs!1856493 (not (= lambda!395909 lambda!395908))))

(assert (=> bs!1856471 (not (= lambda!395909 lambda!395889))))

(assert (=> bs!1856483 (= (and (= lt!2476878 s!14361) (= r1!6342 (regOne!34462 lt!2476870)) (= r2!6280 (regTwo!34462 lt!2476870))) (= lambda!395909 lambda!395874))))

(assert (=> bs!1856467 (not (= lambda!395909 lambda!395845))))

(assert (=> bs!1856467 (= (and (= lt!2476878 (_2!37135 lt!2476883)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395909 lambda!395848))))

(assert (=> bs!1856487 (not (= lambda!395909 lambda!395873))))

(assert (=> d!2168359 true))

(assert (=> d!2168359 true))

(assert (=> d!2168359 true))

(assert (=> d!2168359 (= (Exists!3975 lambda!395908) (Exists!3975 lambda!395909))))

(declare-fun lt!2476984 () Unit!160688)

(declare-fun choose!51746 (Regex!16975 Regex!16975 List!66728) Unit!160688)

(assert (=> d!2168359 (= lt!2476984 (choose!51746 r1!6342 r2!6280 lt!2476878))))

(assert (=> d!2168359 (validRegex!8681 r1!6342)))

(assert (=> d!2168359 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2436 r1!6342 r2!6280 lt!2476878) lt!2476984)))

(declare-fun m!7649110 () Bool)

(assert (=> bs!1856493 m!7649110))

(declare-fun m!7649112 () Bool)

(assert (=> bs!1856493 m!7649112))

(declare-fun m!7649114 () Bool)

(assert (=> bs!1856493 m!7649114))

(assert (=> bs!1856493 m!7648542))

(assert (=> b!6943703 d!2168359))

(declare-fun d!2168371 () Bool)

(assert (=> d!2168371 (= (isDefined!13445 (findConcatSeparation!3158 lt!2476875 r3!135 Nil!66604 s!14361 s!14361)) (not (isEmpty!38879 (findConcatSeparation!3158 lt!2476875 r3!135 Nil!66604 s!14361 s!14361))))))

(declare-fun bs!1856494 () Bool)

(assert (= bs!1856494 d!2168371))

(assert (=> bs!1856494 m!7648476))

(declare-fun m!7649120 () Bool)

(assert (=> bs!1856494 m!7649120))

(assert (=> b!6943703 d!2168371))

(declare-fun d!2168373 () Bool)

(assert (=> d!2168373 (= (Exists!3975 lambda!395848) (choose!51743 lambda!395848))))

(declare-fun bs!1856495 () Bool)

(assert (= bs!1856495 d!2168373))

(declare-fun m!7649124 () Bool)

(assert (=> bs!1856495 m!7649124))

(assert (=> b!6943703 d!2168373))

(declare-fun d!2168375 () Bool)

(assert (=> d!2168375 (= (get!23399 lt!2476866) (v!53015 lt!2476866))))

(assert (=> b!6943703 d!2168375))

(declare-fun b!6944378 () Bool)

(declare-fun res!2832963 () Bool)

(declare-fun e!4177231 () Bool)

(assert (=> b!6944378 (=> (not res!2832963) (not e!4177231))))

(declare-fun lt!2476987 () List!66728)

(assert (=> b!6944378 (= res!2832963 (= (size!40806 lt!2476987) (+ (size!40806 (_1!37135 lt!2476883)) (size!40806 (++!15014 (_1!37135 lt!2476861) (_2!37135 lt!2476861))))))))

(declare-fun b!6944379 () Bool)

(assert (=> b!6944379 (= e!4177231 (or (not (= (++!15014 (_1!37135 lt!2476861) (_2!37135 lt!2476861)) Nil!66604)) (= lt!2476987 (_1!37135 lt!2476883))))))

(declare-fun d!2168377 () Bool)

(assert (=> d!2168377 e!4177231))

(declare-fun res!2832964 () Bool)

(assert (=> d!2168377 (=> (not res!2832964) (not e!4177231))))

(assert (=> d!2168377 (= res!2832964 (= (content!13109 lt!2476987) ((_ map or) (content!13109 (_1!37135 lt!2476883)) (content!13109 (++!15014 (_1!37135 lt!2476861) (_2!37135 lt!2476861))))))))

(declare-fun e!4177232 () List!66728)

(assert (=> d!2168377 (= lt!2476987 e!4177232)))

(declare-fun c!1288451 () Bool)

(assert (=> d!2168377 (= c!1288451 ((_ is Nil!66604) (_1!37135 lt!2476883)))))

(assert (=> d!2168377 (= (++!15014 (_1!37135 lt!2476883) (++!15014 (_1!37135 lt!2476861) (_2!37135 lt!2476861))) lt!2476987)))

(declare-fun b!6944377 () Bool)

(assert (=> b!6944377 (= e!4177232 (Cons!66604 (h!73052 (_1!37135 lt!2476883)) (++!15014 (t!380471 (_1!37135 lt!2476883)) (++!15014 (_1!37135 lt!2476861) (_2!37135 lt!2476861)))))))

(declare-fun b!6944376 () Bool)

(assert (=> b!6944376 (= e!4177232 (++!15014 (_1!37135 lt!2476861) (_2!37135 lt!2476861)))))

(assert (= (and d!2168377 c!1288451) b!6944376))

(assert (= (and d!2168377 (not c!1288451)) b!6944377))

(assert (= (and d!2168377 res!2832964) b!6944378))

(assert (= (and b!6944378 res!2832963) b!6944379))

(declare-fun m!7649126 () Bool)

(assert (=> b!6944378 m!7649126))

(assert (=> b!6944378 m!7649050))

(assert (=> b!6944378 m!7648488))

(declare-fun m!7649128 () Bool)

(assert (=> b!6944378 m!7649128))

(declare-fun m!7649130 () Bool)

(assert (=> d!2168377 m!7649130))

(assert (=> d!2168377 m!7649056))

(assert (=> d!2168377 m!7648488))

(declare-fun m!7649132 () Bool)

(assert (=> d!2168377 m!7649132))

(assert (=> b!6944377 m!7648488))

(declare-fun m!7649134 () Bool)

(assert (=> b!6944377 m!7649134))

(assert (=> b!6943703 d!2168377))

(declare-fun d!2168379 () Bool)

(assert (=> d!2168379 (isDefined!13445 (findConcatSeparation!3158 r1!6342 r2!6280 Nil!66604 lt!2476878 lt!2476878))))

(declare-fun lt!2476988 () Unit!160688)

(assert (=> d!2168379 (= lt!2476988 (choose!51745 r1!6342 r2!6280 (_1!37135 lt!2476883) (_1!37135 lt!2476861) lt!2476878 Nil!66604 lt!2476878))))

(assert (=> d!2168379 (validRegex!8681 r1!6342)))

(assert (=> d!2168379 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!118 r1!6342 r2!6280 (_1!37135 lt!2476883) (_1!37135 lt!2476861) lt!2476878 Nil!66604 lt!2476878) lt!2476988)))

(declare-fun bs!1856496 () Bool)

(assert (= bs!1856496 d!2168379))

(assert (=> bs!1856496 m!7648480))

(assert (=> bs!1856496 m!7648480))

(assert (=> bs!1856496 m!7648536))

(declare-fun m!7649136 () Bool)

(assert (=> bs!1856496 m!7649136))

(assert (=> bs!1856496 m!7648542))

(assert (=> b!6943703 d!2168379))

(declare-fun bs!1856497 () Bool)

(declare-fun b!6944400 () Bool)

(assert (= bs!1856497 (and b!6944400 d!2168345)))

(declare-fun lambda!395910 () Int)

(assert (=> bs!1856497 (not (= lambda!395910 lambda!395897))))

(declare-fun bs!1856498 () Bool)

(assert (= bs!1856498 (and b!6944400 b!6943703)))

(assert (=> bs!1856498 (not (= lambda!395910 lambda!395851))))

(declare-fun bs!1856499 () Bool)

(assert (= bs!1856499 (and b!6944400 b!6944320)))

(assert (=> bs!1856499 (= (and (= (_2!37135 lt!2476883) (_1!37135 lt!2476883)) (= (reg!17304 lt!2476856) (reg!17304 r1!6342)) (= lt!2476856 r1!6342)) (= lambda!395910 lambda!395899))))

(assert (=> bs!1856498 (not (= lambda!395910 lambda!395849))))

(declare-fun bs!1856500 () Bool)

(assert (= bs!1856500 (and b!6944400 b!6943704)))

(assert (=> bs!1856500 (not (= lambda!395910 lambda!395852))))

(declare-fun bs!1856501 () Bool)

(assert (= bs!1856501 (and b!6944400 d!2168343)))

(assert (=> bs!1856501 (not (= lambda!395910 lambda!395895))))

(declare-fun bs!1856502 () Bool)

(assert (= bs!1856502 (and b!6944400 b!6943858)))

(assert (=> bs!1856502 (= (and (= (_2!37135 lt!2476883) s!14361) (= (reg!17304 lt!2476856) (reg!17304 lt!2476859)) (= lt!2476856 lt!2476859)) (= lambda!395910 lambda!395860))))

(declare-fun bs!1856503 () Bool)

(assert (= bs!1856503 (and b!6944400 b!6944317)))

(assert (=> bs!1856503 (not (= lambda!395910 lambda!395900))))

(assert (=> bs!1856498 (not (= lambda!395910 lambda!395847))))

(assert (=> bs!1856498 (not (= lambda!395910 lambda!395850))))

(declare-fun bs!1856504 () Bool)

(assert (= bs!1856504 (and b!6944400 d!2168359)))

(assert (=> bs!1856504 (not (= lambda!395910 lambda!395909))))

(declare-fun bs!1856505 () Bool)

(assert (= bs!1856505 (and b!6944400 b!6943853)))

(assert (=> bs!1856505 (not (= lambda!395910 lambda!395861))))

(assert (=> bs!1856498 (not (= lambda!395910 lambda!395846))))

(assert (=> bs!1856504 (not (= lambda!395910 lambda!395908))))

(declare-fun bs!1856506 () Bool)

(assert (= bs!1856506 (and b!6944400 d!2168289)))

(assert (=> bs!1856506 (not (= lambda!395910 lambda!395889))))

(declare-fun bs!1856507 () Bool)

(assert (= bs!1856507 (and b!6944400 b!6944008)))

(assert (=> bs!1856507 (not (= lambda!395910 lambda!395874))))

(assert (=> bs!1856498 (not (= lambda!395910 lambda!395845))))

(assert (=> bs!1856498 (not (= lambda!395910 lambda!395848))))

(declare-fun bs!1856508 () Bool)

(assert (= bs!1856508 (and b!6944400 b!6944011)))

(assert (=> bs!1856508 (= (and (= (_2!37135 lt!2476883) s!14361) (= (reg!17304 lt!2476856) (reg!17304 lt!2476870)) (= lt!2476856 lt!2476870)) (= lambda!395910 lambda!395873))))

(assert (=> b!6944400 true))

(assert (=> b!6944400 true))

(declare-fun bs!1856509 () Bool)

(declare-fun b!6944397 () Bool)

(assert (= bs!1856509 (and b!6944397 d!2168345)))

(declare-fun lambda!395911 () Int)

(assert (=> bs!1856509 (not (= lambda!395911 lambda!395897))))

(declare-fun bs!1856510 () Bool)

(assert (= bs!1856510 (and b!6944397 b!6943703)))

(assert (=> bs!1856510 (not (= lambda!395911 lambda!395851))))

(declare-fun bs!1856511 () Bool)

(assert (= bs!1856511 (and b!6944397 b!6944320)))

(assert (=> bs!1856511 (not (= lambda!395911 lambda!395899))))

(assert (=> bs!1856510 (not (= lambda!395911 lambda!395849))))

(declare-fun bs!1856512 () Bool)

(assert (= bs!1856512 (and b!6944397 b!6943704)))

(assert (=> bs!1856512 (not (= lambda!395911 lambda!395852))))

(declare-fun bs!1856513 () Bool)

(assert (= bs!1856513 (and b!6944397 d!2168343)))

(assert (=> bs!1856513 (not (= lambda!395911 lambda!395895))))

(declare-fun bs!1856514 () Bool)

(assert (= bs!1856514 (and b!6944397 b!6943858)))

(assert (=> bs!1856514 (not (= lambda!395911 lambda!395860))))

(declare-fun bs!1856515 () Bool)

(assert (= bs!1856515 (and b!6944397 b!6944317)))

(assert (=> bs!1856515 (= (and (= (_2!37135 lt!2476883) (_1!37135 lt!2476883)) (= (regOne!34462 lt!2476856) (regOne!34462 r1!6342)) (= (regTwo!34462 lt!2476856) (regTwo!34462 r1!6342))) (= lambda!395911 lambda!395900))))

(assert (=> bs!1856510 (not (= lambda!395911 lambda!395847))))

(assert (=> bs!1856510 (= (and (= (_2!37135 lt!2476883) lt!2476878) (= (regOne!34462 lt!2476856) r1!6342) (= (regTwo!34462 lt!2476856) r2!6280)) (= lambda!395911 lambda!395850))))

(declare-fun bs!1856516 () Bool)

(assert (= bs!1856516 (and b!6944397 d!2168359)))

(assert (=> bs!1856516 (= (and (= (_2!37135 lt!2476883) lt!2476878) (= (regOne!34462 lt!2476856) r1!6342) (= (regTwo!34462 lt!2476856) r2!6280)) (= lambda!395911 lambda!395909))))

(declare-fun bs!1856517 () Bool)

(assert (= bs!1856517 (and b!6944397 b!6943853)))

(assert (=> bs!1856517 (= (and (= (_2!37135 lt!2476883) s!14361) (= (regOne!34462 lt!2476856) (regOne!34462 lt!2476859)) (= (regTwo!34462 lt!2476856) (regTwo!34462 lt!2476859))) (= lambda!395911 lambda!395861))))

(declare-fun bs!1856518 () Bool)

(assert (= bs!1856518 (and b!6944397 b!6944400)))

(assert (=> bs!1856518 (not (= lambda!395911 lambda!395910))))

(assert (=> bs!1856510 (= (and (= (_2!37135 lt!2476883) s!14361) (= (regOne!34462 lt!2476856) r1!6342) (= (regTwo!34462 lt!2476856) lt!2476856)) (= lambda!395911 lambda!395846))))

(assert (=> bs!1856516 (not (= lambda!395911 lambda!395908))))

(declare-fun bs!1856519 () Bool)

(assert (= bs!1856519 (and b!6944397 d!2168289)))

(assert (=> bs!1856519 (not (= lambda!395911 lambda!395889))))

(declare-fun bs!1856520 () Bool)

(assert (= bs!1856520 (and b!6944397 b!6944008)))

(assert (=> bs!1856520 (= (and (= (_2!37135 lt!2476883) s!14361) (= (regOne!34462 lt!2476856) (regOne!34462 lt!2476870)) (= (regTwo!34462 lt!2476856) (regTwo!34462 lt!2476870))) (= lambda!395911 lambda!395874))))

(assert (=> bs!1856510 (not (= lambda!395911 lambda!395845))))

(assert (=> bs!1856510 (= (and (= (regOne!34462 lt!2476856) r2!6280) (= (regTwo!34462 lt!2476856) r3!135)) (= lambda!395911 lambda!395848))))

(declare-fun bs!1856521 () Bool)

(assert (= bs!1856521 (and b!6944397 b!6944011)))

(assert (=> bs!1856521 (not (= lambda!395911 lambda!395873))))

(assert (=> b!6944397 true))

(assert (=> b!6944397 true))

(declare-fun bm!630818 () Bool)

(declare-fun call!630824 () Bool)

(assert (=> bm!630818 (= call!630824 (isEmpty!38878 (_2!37135 lt!2476883)))))

(declare-fun b!6944392 () Bool)

(declare-fun c!1288454 () Bool)

(assert (=> b!6944392 (= c!1288454 ((_ is Union!16975) lt!2476856))))

(declare-fun e!4177241 () Bool)

(declare-fun e!4177237 () Bool)

(assert (=> b!6944392 (= e!4177241 e!4177237)))

(declare-fun b!6944393 () Bool)

(assert (=> b!6944393 (= e!4177241 (= (_2!37135 lt!2476883) (Cons!66604 (c!1288295 lt!2476856) Nil!66604)))))

(declare-fun c!1288455 () Bool)

(declare-fun call!630823 () Bool)

(declare-fun bm!630819 () Bool)

(assert (=> bm!630819 (= call!630823 (Exists!3975 (ite c!1288455 lambda!395910 lambda!395911)))))

(declare-fun b!6944394 () Bool)

(declare-fun res!2832965 () Bool)

(declare-fun e!4177239 () Bool)

(assert (=> b!6944394 (=> res!2832965 e!4177239)))

(assert (=> b!6944394 (= res!2832965 call!630824)))

(declare-fun e!4177240 () Bool)

(assert (=> b!6944394 (= e!4177240 e!4177239)))

(declare-fun d!2168381 () Bool)

(declare-fun c!1288452 () Bool)

(assert (=> d!2168381 (= c!1288452 ((_ is EmptyExpr!16975) lt!2476856))))

(declare-fun e!4177242 () Bool)

(assert (=> d!2168381 (= (matchRSpec!4032 lt!2476856 (_2!37135 lt!2476883)) e!4177242)))

(declare-fun b!6944395 () Bool)

(declare-fun e!4177236 () Bool)

(assert (=> b!6944395 (= e!4177242 e!4177236)))

(declare-fun res!2832966 () Bool)

(assert (=> b!6944395 (= res!2832966 (not ((_ is EmptyLang!16975) lt!2476856)))))

(assert (=> b!6944395 (=> (not res!2832966) (not e!4177236))))

(declare-fun b!6944396 () Bool)

(declare-fun e!4177238 () Bool)

(assert (=> b!6944396 (= e!4177238 (matchRSpec!4032 (regTwo!34463 lt!2476856) (_2!37135 lt!2476883)))))

(assert (=> b!6944397 (= e!4177240 call!630823)))

(declare-fun b!6944398 () Bool)

(declare-fun c!1288453 () Bool)

(assert (=> b!6944398 (= c!1288453 ((_ is ElementMatch!16975) lt!2476856))))

(assert (=> b!6944398 (= e!4177236 e!4177241)))

(declare-fun b!6944399 () Bool)

(assert (=> b!6944399 (= e!4177237 e!4177240)))

(assert (=> b!6944399 (= c!1288455 ((_ is Star!16975) lt!2476856))))

(assert (=> b!6944400 (= e!4177239 call!630823)))

(declare-fun b!6944401 () Bool)

(assert (=> b!6944401 (= e!4177242 call!630824)))

(declare-fun b!6944402 () Bool)

(assert (=> b!6944402 (= e!4177237 e!4177238)))

(declare-fun res!2832967 () Bool)

(assert (=> b!6944402 (= res!2832967 (matchRSpec!4032 (regOne!34463 lt!2476856) (_2!37135 lt!2476883)))))

(assert (=> b!6944402 (=> res!2832967 e!4177238)))

(assert (= (and d!2168381 c!1288452) b!6944401))

(assert (= (and d!2168381 (not c!1288452)) b!6944395))

(assert (= (and b!6944395 res!2832966) b!6944398))

(assert (= (and b!6944398 c!1288453) b!6944393))

(assert (= (and b!6944398 (not c!1288453)) b!6944392))

(assert (= (and b!6944392 c!1288454) b!6944402))

(assert (= (and b!6944392 (not c!1288454)) b!6944399))

(assert (= (and b!6944402 (not res!2832967)) b!6944396))

(assert (= (and b!6944399 c!1288455) b!6944394))

(assert (= (and b!6944399 (not c!1288455)) b!6944397))

(assert (= (and b!6944394 (not res!2832965)) b!6944400))

(assert (= (or b!6944400 b!6944397) bm!630819))

(assert (= (or b!6944401 b!6944394) bm!630818))

(assert (=> bm!630818 m!7649002))

(declare-fun m!7649138 () Bool)

(assert (=> bm!630819 m!7649138))

(declare-fun m!7649140 () Bool)

(assert (=> b!6944396 m!7649140))

(declare-fun m!7649142 () Bool)

(assert (=> b!6944402 m!7649142))

(assert (=> b!6943703 d!2168381))

(declare-fun b!6944465 () Bool)

(declare-fun e!4177264 () Option!16744)

(declare-fun e!4177262 () Option!16744)

(assert (=> b!6944465 (= e!4177264 e!4177262)))

(declare-fun c!1288456 () Bool)

(assert (=> b!6944465 (= c!1288456 ((_ is Nil!66604) s!14361))))

(declare-fun b!6944466 () Bool)

(declare-fun e!4177261 () Bool)

(assert (=> b!6944466 (= e!4177261 (matchR!9114 r3!135 s!14361))))

(declare-fun b!6944467 () Bool)

(declare-fun e!4177260 () Bool)

(declare-fun lt!2476989 () Option!16744)

(assert (=> b!6944467 (= e!4177260 (= (++!15014 (_1!37135 (get!23399 lt!2476989)) (_2!37135 (get!23399 lt!2476989))) s!14361))))

(declare-fun b!6944468 () Bool)

(assert (=> b!6944468 (= e!4177264 (Some!16743 (tuple2!67665 Nil!66604 s!14361)))))

(declare-fun b!6944469 () Bool)

(declare-fun res!2832969 () Bool)

(assert (=> b!6944469 (=> (not res!2832969) (not e!4177260))))

(assert (=> b!6944469 (= res!2832969 (matchR!9114 lt!2476875 (_1!37135 (get!23399 lt!2476989))))))

(declare-fun b!6944470 () Bool)

(declare-fun res!2832970 () Bool)

(assert (=> b!6944470 (=> (not res!2832970) (not e!4177260))))

(assert (=> b!6944470 (= res!2832970 (matchR!9114 r3!135 (_2!37135 (get!23399 lt!2476989))))))

(declare-fun b!6944471 () Bool)

(declare-fun e!4177263 () Bool)

(assert (=> b!6944471 (= e!4177263 (not (isDefined!13445 lt!2476989)))))

(declare-fun b!6944472 () Bool)

(assert (=> b!6944472 (= e!4177262 None!16743)))

(declare-fun b!6944464 () Bool)

(declare-fun lt!2476990 () Unit!160688)

(declare-fun lt!2476991 () Unit!160688)

(assert (=> b!6944464 (= lt!2476990 lt!2476991)))

(assert (=> b!6944464 (= (++!15014 (++!15014 Nil!66604 (Cons!66604 (h!73052 s!14361) Nil!66604)) (t!380471 s!14361)) s!14361)))

(assert (=> b!6944464 (= lt!2476991 (lemmaMoveElementToOtherListKeepsConcatEq!2867 Nil!66604 (h!73052 s!14361) (t!380471 s!14361) s!14361))))

(assert (=> b!6944464 (= e!4177262 (findConcatSeparation!3158 lt!2476875 r3!135 (++!15014 Nil!66604 (Cons!66604 (h!73052 s!14361) Nil!66604)) (t!380471 s!14361) s!14361))))

(declare-fun d!2168383 () Bool)

(assert (=> d!2168383 e!4177263))

(declare-fun res!2832971 () Bool)

(assert (=> d!2168383 (=> res!2832971 e!4177263)))

(assert (=> d!2168383 (= res!2832971 e!4177260)))

(declare-fun res!2832972 () Bool)

(assert (=> d!2168383 (=> (not res!2832972) (not e!4177260))))

(assert (=> d!2168383 (= res!2832972 (isDefined!13445 lt!2476989))))

(assert (=> d!2168383 (= lt!2476989 e!4177264)))

(declare-fun c!1288457 () Bool)

(assert (=> d!2168383 (= c!1288457 e!4177261)))

(declare-fun res!2832968 () Bool)

(assert (=> d!2168383 (=> (not res!2832968) (not e!4177261))))

(assert (=> d!2168383 (= res!2832968 (matchR!9114 lt!2476875 Nil!66604))))

(assert (=> d!2168383 (validRegex!8681 lt!2476875)))

(assert (=> d!2168383 (= (findConcatSeparation!3158 lt!2476875 r3!135 Nil!66604 s!14361 s!14361) lt!2476989)))

(assert (= (and d!2168383 res!2832968) b!6944466))

(assert (= (and d!2168383 c!1288457) b!6944468))

(assert (= (and d!2168383 (not c!1288457)) b!6944465))

(assert (= (and b!6944465 c!1288456) b!6944472))

(assert (= (and b!6944465 (not c!1288456)) b!6944464))

(assert (= (and d!2168383 res!2832972) b!6944469))

(assert (= (and b!6944469 res!2832969) b!6944470))

(assert (= (and b!6944470 res!2832970) b!6944467))

(assert (= (and d!2168383 (not res!2832971)) b!6944471))

(declare-fun m!7649144 () Bool)

(assert (=> d!2168383 m!7649144))

(declare-fun m!7649146 () Bool)

(assert (=> d!2168383 m!7649146))

(assert (=> d!2168383 m!7648908))

(declare-fun m!7649148 () Bool)

(assert (=> b!6944470 m!7649148))

(declare-fun m!7649150 () Bool)

(assert (=> b!6944470 m!7649150))

(assert (=> b!6944467 m!7649148))

(declare-fun m!7649152 () Bool)

(assert (=> b!6944467 m!7649152))

(declare-fun m!7649154 () Bool)

(assert (=> b!6944466 m!7649154))

(declare-fun m!7649156 () Bool)

(assert (=> b!6944464 m!7649156))

(assert (=> b!6944464 m!7649156))

(declare-fun m!7649158 () Bool)

(assert (=> b!6944464 m!7649158))

(declare-fun m!7649160 () Bool)

(assert (=> b!6944464 m!7649160))

(assert (=> b!6944464 m!7649156))

(declare-fun m!7649162 () Bool)

(assert (=> b!6944464 m!7649162))

(assert (=> b!6944471 m!7649144))

(assert (=> b!6944469 m!7649148))

(declare-fun m!7649164 () Bool)

(assert (=> b!6944469 m!7649164))

(assert (=> b!6943703 d!2168383))

(declare-fun b!6944473 () Bool)

(declare-fun e!4177266 () Bool)

(declare-fun e!4177269 () Bool)

(assert (=> b!6944473 (= e!4177266 e!4177269)))

(declare-fun res!2832980 () Bool)

(assert (=> b!6944473 (=> (not res!2832980) (not e!4177269))))

(declare-fun lt!2476992 () Bool)

(assert (=> b!6944473 (= res!2832980 (not lt!2476992))))

(declare-fun b!6944474 () Bool)

(declare-fun e!4177270 () Bool)

(assert (=> b!6944474 (= e!4177270 (not lt!2476992))))

(declare-fun b!6944475 () Bool)

(declare-fun res!2832977 () Bool)

(assert (=> b!6944475 (=> res!2832977 e!4177266)))

(assert (=> b!6944475 (= res!2832977 (not ((_ is ElementMatch!16975) r2!6280)))))

(assert (=> b!6944475 (= e!4177270 e!4177266)))

(declare-fun b!6944476 () Bool)

(declare-fun e!4177265 () Bool)

(assert (=> b!6944476 (= e!4177265 e!4177270)))

(declare-fun c!1288460 () Bool)

(assert (=> b!6944476 (= c!1288460 ((_ is EmptyLang!16975) r2!6280))))

(declare-fun b!6944477 () Bool)

(declare-fun e!4177267 () Bool)

(assert (=> b!6944477 (= e!4177269 e!4177267)))

(declare-fun res!2832978 () Bool)

(assert (=> b!6944477 (=> res!2832978 e!4177267)))

(declare-fun call!630825 () Bool)

(assert (=> b!6944477 (= res!2832978 call!630825)))

(declare-fun b!6944478 () Bool)

(declare-fun e!4177271 () Bool)

(assert (=> b!6944478 (= e!4177271 (matchR!9114 (derivativeStep!5463 r2!6280 (head!13916 (_1!37135 lt!2476861))) (tail!12968 (_1!37135 lt!2476861))))))

(declare-fun b!6944479 () Bool)

(assert (=> b!6944479 (= e!4177267 (not (= (head!13916 (_1!37135 lt!2476861)) (c!1288295 r2!6280))))))

(declare-fun b!6944481 () Bool)

(declare-fun res!2832975 () Bool)

(declare-fun e!4177268 () Bool)

(assert (=> b!6944481 (=> (not res!2832975) (not e!4177268))))

(assert (=> b!6944481 (= res!2832975 (not call!630825))))

(declare-fun b!6944482 () Bool)

(declare-fun res!2832976 () Bool)

(assert (=> b!6944482 (=> res!2832976 e!4177266)))

(assert (=> b!6944482 (= res!2832976 e!4177268)))

(declare-fun res!2832973 () Bool)

(assert (=> b!6944482 (=> (not res!2832973) (not e!4177268))))

(assert (=> b!6944482 (= res!2832973 lt!2476992)))

(declare-fun bm!630820 () Bool)

(assert (=> bm!630820 (= call!630825 (isEmpty!38878 (_1!37135 lt!2476861)))))

(declare-fun b!6944483 () Bool)

(declare-fun res!2832979 () Bool)

(assert (=> b!6944483 (=> res!2832979 e!4177267)))

(assert (=> b!6944483 (= res!2832979 (not (isEmpty!38878 (tail!12968 (_1!37135 lt!2476861)))))))

(declare-fun b!6944484 () Bool)

(assert (=> b!6944484 (= e!4177271 (nullable!6788 r2!6280))))

(declare-fun b!6944480 () Bool)

(assert (=> b!6944480 (= e!4177268 (= (head!13916 (_1!37135 lt!2476861)) (c!1288295 r2!6280)))))

(declare-fun d!2168385 () Bool)

(assert (=> d!2168385 e!4177265))

(declare-fun c!1288459 () Bool)

(assert (=> d!2168385 (= c!1288459 ((_ is EmptyExpr!16975) r2!6280))))

(assert (=> d!2168385 (= lt!2476992 e!4177271)))

(declare-fun c!1288458 () Bool)

(assert (=> d!2168385 (= c!1288458 (isEmpty!38878 (_1!37135 lt!2476861)))))

(assert (=> d!2168385 (validRegex!8681 r2!6280)))

(assert (=> d!2168385 (= (matchR!9114 r2!6280 (_1!37135 lt!2476861)) lt!2476992)))

(declare-fun b!6944485 () Bool)

(assert (=> b!6944485 (= e!4177265 (= lt!2476992 call!630825))))

(declare-fun b!6944486 () Bool)

(declare-fun res!2832974 () Bool)

(assert (=> b!6944486 (=> (not res!2832974) (not e!4177268))))

(assert (=> b!6944486 (= res!2832974 (isEmpty!38878 (tail!12968 (_1!37135 lt!2476861))))))

(assert (= (and d!2168385 c!1288458) b!6944484))

(assert (= (and d!2168385 (not c!1288458)) b!6944478))

(assert (= (and d!2168385 c!1288459) b!6944485))

(assert (= (and d!2168385 (not c!1288459)) b!6944476))

(assert (= (and b!6944476 c!1288460) b!6944474))

(assert (= (and b!6944476 (not c!1288460)) b!6944475))

(assert (= (and b!6944475 (not res!2832977)) b!6944482))

(assert (= (and b!6944482 res!2832973) b!6944481))

(assert (= (and b!6944481 res!2832975) b!6944486))

(assert (= (and b!6944486 res!2832974) b!6944480))

(assert (= (and b!6944482 (not res!2832976)) b!6944473))

(assert (= (and b!6944473 res!2832980) b!6944477))

(assert (= (and b!6944477 (not res!2832978)) b!6944483))

(assert (= (and b!6944483 (not res!2832979)) b!6944479))

(assert (= (or b!6944485 b!6944477 b!6944481) bm!630820))

(declare-fun m!7649166 () Bool)

(assert (=> b!6944484 m!7649166))

(declare-fun m!7649168 () Bool)

(assert (=> b!6944478 m!7649168))

(assert (=> b!6944478 m!7649168))

(declare-fun m!7649170 () Bool)

(assert (=> b!6944478 m!7649170))

(declare-fun m!7649172 () Bool)

(assert (=> b!6944478 m!7649172))

(assert (=> b!6944478 m!7649170))

(assert (=> b!6944478 m!7649172))

(declare-fun m!7649174 () Bool)

(assert (=> b!6944478 m!7649174))

(assert (=> b!6944480 m!7649168))

(assert (=> b!6944479 m!7649168))

(assert (=> b!6944486 m!7649172))

(assert (=> b!6944486 m!7649172))

(declare-fun m!7649176 () Bool)

(assert (=> b!6944486 m!7649176))

(assert (=> b!6944483 m!7649172))

(assert (=> b!6944483 m!7649172))

(assert (=> b!6944483 m!7649176))

(declare-fun m!7649178 () Bool)

(assert (=> bm!630820 m!7649178))

(assert (=> d!2168385 m!7649178))

(assert (=> d!2168385 m!7648540))

(assert (=> b!6943703 d!2168385))

(declare-fun d!2168387 () Bool)

(assert (=> d!2168387 (= (matchR!9114 lt!2476875 lt!2476878) (matchRSpec!4032 lt!2476875 lt!2476878))))

(declare-fun lt!2476993 () Unit!160688)

(assert (=> d!2168387 (= lt!2476993 (choose!51741 lt!2476875 lt!2476878))))

(assert (=> d!2168387 (validRegex!8681 lt!2476875)))

(assert (=> d!2168387 (= (mainMatchTheorem!4032 lt!2476875 lt!2476878) lt!2476993)))

(declare-fun bs!1856522 () Bool)

(assert (= bs!1856522 d!2168387))

(assert (=> bs!1856522 m!7648470))

(assert (=> bs!1856522 m!7648522))

(declare-fun m!7649180 () Bool)

(assert (=> bs!1856522 m!7649180))

(assert (=> bs!1856522 m!7648908))

(assert (=> b!6943703 d!2168387))

(declare-fun bs!1856523 () Bool)

(declare-fun d!2168389 () Bool)

(assert (= bs!1856523 (and d!2168389 d!2168345)))

(declare-fun lambda!395912 () Int)

(assert (=> bs!1856523 (= (and (= lt!2476878 s!14361) (= r2!6280 lt!2476856)) (= lambda!395912 lambda!395897))))

(declare-fun bs!1856524 () Bool)

(assert (= bs!1856524 (and d!2168389 b!6944397)))

(assert (=> bs!1856524 (not (= lambda!395912 lambda!395911))))

(declare-fun bs!1856525 () Bool)

(assert (= bs!1856525 (and d!2168389 b!6943703)))

(assert (=> bs!1856525 (= (and (= lt!2476878 s!14361) (= r1!6342 lt!2476875) (= r2!6280 r3!135)) (= lambda!395912 lambda!395851))))

(declare-fun bs!1856526 () Bool)

(assert (= bs!1856526 (and d!2168389 b!6944320)))

(assert (=> bs!1856526 (not (= lambda!395912 lambda!395899))))

(assert (=> bs!1856525 (= lambda!395912 lambda!395849)))

(declare-fun bs!1856527 () Bool)

(assert (= bs!1856527 (and d!2168389 b!6943704)))

(assert (=> bs!1856527 (= (and (= lt!2476878 s!14361) (= r2!6280 lt!2476856)) (= lambda!395912 lambda!395852))))

(declare-fun bs!1856528 () Bool)

(assert (= bs!1856528 (and d!2168389 d!2168343)))

(assert (=> bs!1856528 (= (and (= lt!2476878 (_2!37135 lt!2476883)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395912 lambda!395895))))

(declare-fun bs!1856529 () Bool)

(assert (= bs!1856529 (and d!2168389 b!6943858)))

(assert (=> bs!1856529 (not (= lambda!395912 lambda!395860))))

(declare-fun bs!1856530 () Bool)

(assert (= bs!1856530 (and d!2168389 b!6944317)))

(assert (=> bs!1856530 (not (= lambda!395912 lambda!395900))))

(assert (=> bs!1856525 (= (and (= lt!2476878 (_2!37135 lt!2476883)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395912 lambda!395847))))

(assert (=> bs!1856525 (not (= lambda!395912 lambda!395850))))

(declare-fun bs!1856531 () Bool)

(assert (= bs!1856531 (and d!2168389 d!2168359)))

(assert (=> bs!1856531 (not (= lambda!395912 lambda!395909))))

(declare-fun bs!1856532 () Bool)

(assert (= bs!1856532 (and d!2168389 b!6943853)))

(assert (=> bs!1856532 (not (= lambda!395912 lambda!395861))))

(declare-fun bs!1856533 () Bool)

(assert (= bs!1856533 (and d!2168389 b!6944400)))

(assert (=> bs!1856533 (not (= lambda!395912 lambda!395910))))

(assert (=> bs!1856525 (not (= lambda!395912 lambda!395846))))

(assert (=> bs!1856531 (= lambda!395912 lambda!395908)))

(declare-fun bs!1856534 () Bool)

(assert (= bs!1856534 (and d!2168389 d!2168289)))

(assert (=> bs!1856534 (= (and (= lt!2476878 s!14361) (= r1!6342 lt!2476875) (= r2!6280 r3!135)) (= lambda!395912 lambda!395889))))

(declare-fun bs!1856535 () Bool)

(assert (= bs!1856535 (and d!2168389 b!6944008)))

(assert (=> bs!1856535 (not (= lambda!395912 lambda!395874))))

(assert (=> bs!1856525 (= (and (= lt!2476878 s!14361) (= r2!6280 lt!2476856)) (= lambda!395912 lambda!395845))))

(assert (=> bs!1856525 (not (= lambda!395912 lambda!395848))))

(declare-fun bs!1856536 () Bool)

(assert (= bs!1856536 (and d!2168389 b!6944011)))

(assert (=> bs!1856536 (not (= lambda!395912 lambda!395873))))

(assert (=> d!2168389 true))

(assert (=> d!2168389 true))

(assert (=> d!2168389 true))

(assert (=> d!2168389 (= (isDefined!13445 (findConcatSeparation!3158 r1!6342 r2!6280 Nil!66604 lt!2476878 lt!2476878)) (Exists!3975 lambda!395912))))

(declare-fun lt!2476994 () Unit!160688)

(assert (=> d!2168389 (= lt!2476994 (choose!51744 r1!6342 r2!6280 lt!2476878))))

(assert (=> d!2168389 (validRegex!8681 r1!6342)))

(assert (=> d!2168389 (= (lemmaFindConcatSeparationEquivalentToExists!2916 r1!6342 r2!6280 lt!2476878) lt!2476994)))

(declare-fun bs!1856537 () Bool)

(assert (= bs!1856537 d!2168389))

(assert (=> bs!1856537 m!7648542))

(assert (=> bs!1856537 m!7648480))

(assert (=> bs!1856537 m!7648536))

(declare-fun m!7649182 () Bool)

(assert (=> bs!1856537 m!7649182))

(declare-fun m!7649184 () Bool)

(assert (=> bs!1856537 m!7649184))

(assert (=> bs!1856537 m!7648480))

(assert (=> b!6943703 d!2168389))

(declare-fun d!2168391 () Bool)

(assert (=> d!2168391 (= (matchR!9114 r3!135 (_2!37135 lt!2476861)) (matchRSpec!4032 r3!135 (_2!37135 lt!2476861)))))

(declare-fun lt!2476995 () Unit!160688)

(assert (=> d!2168391 (= lt!2476995 (choose!51741 r3!135 (_2!37135 lt!2476861)))))

(assert (=> d!2168391 (validRegex!8681 r3!135)))

(assert (=> d!2168391 (= (mainMatchTheorem!4032 r3!135 (_2!37135 lt!2476861)) lt!2476995)))

(declare-fun bs!1856538 () Bool)

(assert (= bs!1856538 d!2168391))

(assert (=> bs!1856538 m!7648454))

(assert (=> bs!1856538 m!7648508))

(declare-fun m!7649186 () Bool)

(assert (=> bs!1856538 m!7649186))

(assert (=> bs!1856538 m!7648450))

(assert (=> b!6943703 d!2168391))

(declare-fun bs!1856539 () Bool)

(declare-fun b!6944495 () Bool)

(assert (= bs!1856539 (and b!6944495 d!2168345)))

(declare-fun lambda!395913 () Int)

(assert (=> bs!1856539 (not (= lambda!395913 lambda!395897))))

(declare-fun bs!1856540 () Bool)

(assert (= bs!1856540 (and b!6944495 b!6944397)))

(assert (=> bs!1856540 (not (= lambda!395913 lambda!395911))))

(declare-fun bs!1856541 () Bool)

(assert (= bs!1856541 (and b!6944495 b!6943703)))

(assert (=> bs!1856541 (not (= lambda!395913 lambda!395851))))

(declare-fun bs!1856542 () Bool)

(assert (= bs!1856542 (and b!6944495 b!6944320)))

(assert (=> bs!1856542 (= (and (= lt!2476878 (_1!37135 lt!2476883)) (= (reg!17304 lt!2476875) (reg!17304 r1!6342)) (= lt!2476875 r1!6342)) (= lambda!395913 lambda!395899))))

(assert (=> bs!1856541 (not (= lambda!395913 lambda!395849))))

(declare-fun bs!1856543 () Bool)

(assert (= bs!1856543 (and b!6944495 b!6943704)))

(assert (=> bs!1856543 (not (= lambda!395913 lambda!395852))))

(declare-fun bs!1856544 () Bool)

(assert (= bs!1856544 (and b!6944495 d!2168343)))

(assert (=> bs!1856544 (not (= lambda!395913 lambda!395895))))

(declare-fun bs!1856545 () Bool)

(assert (= bs!1856545 (and b!6944495 b!6943858)))

(assert (=> bs!1856545 (= (and (= lt!2476878 s!14361) (= (reg!17304 lt!2476875) (reg!17304 lt!2476859)) (= lt!2476875 lt!2476859)) (= lambda!395913 lambda!395860))))

(declare-fun bs!1856546 () Bool)

(assert (= bs!1856546 (and b!6944495 b!6944317)))

(assert (=> bs!1856546 (not (= lambda!395913 lambda!395900))))

(assert (=> bs!1856541 (not (= lambda!395913 lambda!395847))))

(assert (=> bs!1856541 (not (= lambda!395913 lambda!395850))))

(declare-fun bs!1856547 () Bool)

(assert (= bs!1856547 (and b!6944495 d!2168359)))

(assert (=> bs!1856547 (not (= lambda!395913 lambda!395909))))

(declare-fun bs!1856548 () Bool)

(assert (= bs!1856548 (and b!6944495 b!6943853)))

(assert (=> bs!1856548 (not (= lambda!395913 lambda!395861))))

(assert (=> bs!1856541 (not (= lambda!395913 lambda!395846))))

(assert (=> bs!1856547 (not (= lambda!395913 lambda!395908))))

(declare-fun bs!1856549 () Bool)

(assert (= bs!1856549 (and b!6944495 d!2168289)))

(assert (=> bs!1856549 (not (= lambda!395913 lambda!395889))))

(declare-fun bs!1856550 () Bool)

(assert (= bs!1856550 (and b!6944495 b!6944008)))

(assert (=> bs!1856550 (not (= lambda!395913 lambda!395874))))

(assert (=> bs!1856541 (not (= lambda!395913 lambda!395845))))

(assert (=> bs!1856541 (not (= lambda!395913 lambda!395848))))

(declare-fun bs!1856551 () Bool)

(assert (= bs!1856551 (and b!6944495 b!6944011)))

(assert (=> bs!1856551 (= (and (= lt!2476878 s!14361) (= (reg!17304 lt!2476875) (reg!17304 lt!2476870)) (= lt!2476875 lt!2476870)) (= lambda!395913 lambda!395873))))

(declare-fun bs!1856552 () Bool)

(assert (= bs!1856552 (and b!6944495 b!6944400)))

(assert (=> bs!1856552 (= (and (= lt!2476878 (_2!37135 lt!2476883)) (= (reg!17304 lt!2476875) (reg!17304 lt!2476856)) (= lt!2476875 lt!2476856)) (= lambda!395913 lambda!395910))))

(declare-fun bs!1856553 () Bool)

(assert (= bs!1856553 (and b!6944495 d!2168389)))

(assert (=> bs!1856553 (not (= lambda!395913 lambda!395912))))

(assert (=> b!6944495 true))

(assert (=> b!6944495 true))

(declare-fun bs!1856554 () Bool)

(declare-fun b!6944492 () Bool)

(assert (= bs!1856554 (and b!6944492 d!2168345)))

(declare-fun lambda!395914 () Int)

(assert (=> bs!1856554 (not (= lambda!395914 lambda!395897))))

(declare-fun bs!1856555 () Bool)

(assert (= bs!1856555 (and b!6944492 b!6944397)))

(assert (=> bs!1856555 (= (and (= lt!2476878 (_2!37135 lt!2476883)) (= (regOne!34462 lt!2476875) (regOne!34462 lt!2476856)) (= (regTwo!34462 lt!2476875) (regTwo!34462 lt!2476856))) (= lambda!395914 lambda!395911))))

(declare-fun bs!1856556 () Bool)

(assert (= bs!1856556 (and b!6944492 b!6943703)))

(assert (=> bs!1856556 (not (= lambda!395914 lambda!395851))))

(declare-fun bs!1856557 () Bool)

(assert (= bs!1856557 (and b!6944492 b!6944320)))

(assert (=> bs!1856557 (not (= lambda!395914 lambda!395899))))

(assert (=> bs!1856556 (not (= lambda!395914 lambda!395849))))

(declare-fun bs!1856558 () Bool)

(assert (= bs!1856558 (and b!6944492 b!6943704)))

(assert (=> bs!1856558 (not (= lambda!395914 lambda!395852))))

(declare-fun bs!1856559 () Bool)

(assert (= bs!1856559 (and b!6944492 d!2168343)))

(assert (=> bs!1856559 (not (= lambda!395914 lambda!395895))))

(declare-fun bs!1856560 () Bool)

(assert (= bs!1856560 (and b!6944492 b!6943858)))

(assert (=> bs!1856560 (not (= lambda!395914 lambda!395860))))

(declare-fun bs!1856561 () Bool)

(assert (= bs!1856561 (and b!6944492 b!6944317)))

(assert (=> bs!1856561 (= (and (= lt!2476878 (_1!37135 lt!2476883)) (= (regOne!34462 lt!2476875) (regOne!34462 r1!6342)) (= (regTwo!34462 lt!2476875) (regTwo!34462 r1!6342))) (= lambda!395914 lambda!395900))))

(assert (=> bs!1856556 (not (= lambda!395914 lambda!395847))))

(declare-fun bs!1856562 () Bool)

(assert (= bs!1856562 (and b!6944492 d!2168359)))

(assert (=> bs!1856562 (= (and (= (regOne!34462 lt!2476875) r1!6342) (= (regTwo!34462 lt!2476875) r2!6280)) (= lambda!395914 lambda!395909))))

(declare-fun bs!1856563 () Bool)

(assert (= bs!1856563 (and b!6944492 b!6943853)))

(assert (=> bs!1856563 (= (and (= lt!2476878 s!14361) (= (regOne!34462 lt!2476875) (regOne!34462 lt!2476859)) (= (regTwo!34462 lt!2476875) (regTwo!34462 lt!2476859))) (= lambda!395914 lambda!395861))))

(assert (=> bs!1856556 (= (and (= lt!2476878 s!14361) (= (regOne!34462 lt!2476875) r1!6342) (= (regTwo!34462 lt!2476875) lt!2476856)) (= lambda!395914 lambda!395846))))

(assert (=> bs!1856562 (not (= lambda!395914 lambda!395908))))

(declare-fun bs!1856564 () Bool)

(assert (= bs!1856564 (and b!6944492 d!2168289)))

(assert (=> bs!1856564 (not (= lambda!395914 lambda!395889))))

(declare-fun bs!1856565 () Bool)

(assert (= bs!1856565 (and b!6944492 b!6944008)))

(assert (=> bs!1856565 (= (and (= lt!2476878 s!14361) (= (regOne!34462 lt!2476875) (regOne!34462 lt!2476870)) (= (regTwo!34462 lt!2476875) (regTwo!34462 lt!2476870))) (= lambda!395914 lambda!395874))))

(assert (=> bs!1856556 (not (= lambda!395914 lambda!395845))))

(declare-fun bs!1856566 () Bool)

(assert (= bs!1856566 (and b!6944492 b!6944495)))

(assert (=> bs!1856566 (not (= lambda!395914 lambda!395913))))

(assert (=> bs!1856556 (= (and (= (regOne!34462 lt!2476875) r1!6342) (= (regTwo!34462 lt!2476875) r2!6280)) (= lambda!395914 lambda!395850))))

(assert (=> bs!1856556 (= (and (= lt!2476878 (_2!37135 lt!2476883)) (= (regOne!34462 lt!2476875) r2!6280) (= (regTwo!34462 lt!2476875) r3!135)) (= lambda!395914 lambda!395848))))

(declare-fun bs!1856567 () Bool)

(assert (= bs!1856567 (and b!6944492 b!6944011)))

(assert (=> bs!1856567 (not (= lambda!395914 lambda!395873))))

(declare-fun bs!1856568 () Bool)

(assert (= bs!1856568 (and b!6944492 b!6944400)))

(assert (=> bs!1856568 (not (= lambda!395914 lambda!395910))))

(declare-fun bs!1856569 () Bool)

(assert (= bs!1856569 (and b!6944492 d!2168389)))

(assert (=> bs!1856569 (not (= lambda!395914 lambda!395912))))

(assert (=> b!6944492 true))

(assert (=> b!6944492 true))

(declare-fun bm!630821 () Bool)

(declare-fun call!630827 () Bool)

(assert (=> bm!630821 (= call!630827 (isEmpty!38878 lt!2476878))))

(declare-fun b!6944487 () Bool)

(declare-fun c!1288463 () Bool)

(assert (=> b!6944487 (= c!1288463 ((_ is Union!16975) lt!2476875))))

(declare-fun e!4177277 () Bool)

(declare-fun e!4177273 () Bool)

(assert (=> b!6944487 (= e!4177277 e!4177273)))

(declare-fun b!6944488 () Bool)

(assert (=> b!6944488 (= e!4177277 (= lt!2476878 (Cons!66604 (c!1288295 lt!2476875) Nil!66604)))))

(declare-fun call!630826 () Bool)

(declare-fun bm!630822 () Bool)

(declare-fun c!1288464 () Bool)

(assert (=> bm!630822 (= call!630826 (Exists!3975 (ite c!1288464 lambda!395913 lambda!395914)))))

(declare-fun b!6944489 () Bool)

(declare-fun res!2832981 () Bool)

(declare-fun e!4177275 () Bool)

(assert (=> b!6944489 (=> res!2832981 e!4177275)))

(assert (=> b!6944489 (= res!2832981 call!630827)))

(declare-fun e!4177276 () Bool)

(assert (=> b!6944489 (= e!4177276 e!4177275)))

(declare-fun d!2168393 () Bool)

(declare-fun c!1288461 () Bool)

(assert (=> d!2168393 (= c!1288461 ((_ is EmptyExpr!16975) lt!2476875))))

(declare-fun e!4177278 () Bool)

(assert (=> d!2168393 (= (matchRSpec!4032 lt!2476875 lt!2476878) e!4177278)))

(declare-fun b!6944490 () Bool)

(declare-fun e!4177272 () Bool)

(assert (=> b!6944490 (= e!4177278 e!4177272)))

(declare-fun res!2832982 () Bool)

(assert (=> b!6944490 (= res!2832982 (not ((_ is EmptyLang!16975) lt!2476875)))))

(assert (=> b!6944490 (=> (not res!2832982) (not e!4177272))))

(declare-fun b!6944491 () Bool)

(declare-fun e!4177274 () Bool)

(assert (=> b!6944491 (= e!4177274 (matchRSpec!4032 (regTwo!34463 lt!2476875) lt!2476878))))

(assert (=> b!6944492 (= e!4177276 call!630826)))

(declare-fun b!6944493 () Bool)

(declare-fun c!1288462 () Bool)

(assert (=> b!6944493 (= c!1288462 ((_ is ElementMatch!16975) lt!2476875))))

(assert (=> b!6944493 (= e!4177272 e!4177277)))

(declare-fun b!6944494 () Bool)

(assert (=> b!6944494 (= e!4177273 e!4177276)))

(assert (=> b!6944494 (= c!1288464 ((_ is Star!16975) lt!2476875))))

(assert (=> b!6944495 (= e!4177275 call!630826)))

(declare-fun b!6944496 () Bool)

(assert (=> b!6944496 (= e!4177278 call!630827)))

(declare-fun b!6944497 () Bool)

(assert (=> b!6944497 (= e!4177273 e!4177274)))

(declare-fun res!2832983 () Bool)

(assert (=> b!6944497 (= res!2832983 (matchRSpec!4032 (regOne!34463 lt!2476875) lt!2476878))))

(assert (=> b!6944497 (=> res!2832983 e!4177274)))

(assert (= (and d!2168393 c!1288461) b!6944496))

(assert (= (and d!2168393 (not c!1288461)) b!6944490))

(assert (= (and b!6944490 res!2832982) b!6944493))

(assert (= (and b!6944493 c!1288462) b!6944488))

(assert (= (and b!6944493 (not c!1288462)) b!6944487))

(assert (= (and b!6944487 c!1288463) b!6944497))

(assert (= (and b!6944487 (not c!1288463)) b!6944494))

(assert (= (and b!6944497 (not res!2832983)) b!6944491))

(assert (= (and b!6944494 c!1288464) b!6944489))

(assert (= (and b!6944494 (not c!1288464)) b!6944492))

(assert (= (and b!6944489 (not res!2832981)) b!6944495))

(assert (= (or b!6944495 b!6944492) bm!630822))

(assert (= (or b!6944496 b!6944489) bm!630821))

(declare-fun m!7649188 () Bool)

(assert (=> bm!630821 m!7649188))

(declare-fun m!7649190 () Bool)

(assert (=> bm!630822 m!7649190))

(declare-fun m!7649192 () Bool)

(assert (=> b!6944491 m!7649192))

(declare-fun m!7649194 () Bool)

(assert (=> b!6944497 m!7649194))

(assert (=> b!6943703 d!2168393))

(declare-fun bs!1856570 () Bool)

(declare-fun d!2168395 () Bool)

(assert (= bs!1856570 (and d!2168395 d!2168345)))

(declare-fun lambda!395915 () Int)

(assert (=> bs!1856570 (= lambda!395915 lambda!395897)))

(declare-fun bs!1856571 () Bool)

(assert (= bs!1856571 (and d!2168395 b!6944397)))

(assert (=> bs!1856571 (not (= lambda!395915 lambda!395911))))

(declare-fun bs!1856572 () Bool)

(assert (= bs!1856572 (and d!2168395 b!6943703)))

(assert (=> bs!1856572 (= (and (= r1!6342 lt!2476875) (= lt!2476856 r3!135)) (= lambda!395915 lambda!395851))))

(declare-fun bs!1856573 () Bool)

(assert (= bs!1856573 (and d!2168395 b!6944320)))

(assert (=> bs!1856573 (not (= lambda!395915 lambda!395899))))

(declare-fun bs!1856574 () Bool)

(assert (= bs!1856574 (and d!2168395 b!6944492)))

(assert (=> bs!1856574 (not (= lambda!395915 lambda!395914))))

(assert (=> bs!1856572 (= (and (= s!14361 lt!2476878) (= lt!2476856 r2!6280)) (= lambda!395915 lambda!395849))))

(declare-fun bs!1856575 () Bool)

(assert (= bs!1856575 (and d!2168395 b!6943704)))

(assert (=> bs!1856575 (= lambda!395915 lambda!395852)))

(declare-fun bs!1856576 () Bool)

(assert (= bs!1856576 (and d!2168395 d!2168343)))

(assert (=> bs!1856576 (= (and (= s!14361 (_2!37135 lt!2476883)) (= r1!6342 r2!6280) (= lt!2476856 r3!135)) (= lambda!395915 lambda!395895))))

(declare-fun bs!1856577 () Bool)

(assert (= bs!1856577 (and d!2168395 b!6943858)))

(assert (=> bs!1856577 (not (= lambda!395915 lambda!395860))))

(declare-fun bs!1856578 () Bool)

(assert (= bs!1856578 (and d!2168395 b!6944317)))

(assert (=> bs!1856578 (not (= lambda!395915 lambda!395900))))

(assert (=> bs!1856572 (= (and (= s!14361 (_2!37135 lt!2476883)) (= r1!6342 r2!6280) (= lt!2476856 r3!135)) (= lambda!395915 lambda!395847))))

(declare-fun bs!1856579 () Bool)

(assert (= bs!1856579 (and d!2168395 d!2168359)))

(assert (=> bs!1856579 (not (= lambda!395915 lambda!395909))))

(declare-fun bs!1856580 () Bool)

(assert (= bs!1856580 (and d!2168395 b!6943853)))

(assert (=> bs!1856580 (not (= lambda!395915 lambda!395861))))

(assert (=> bs!1856572 (not (= lambda!395915 lambda!395846))))

(assert (=> bs!1856579 (= (and (= s!14361 lt!2476878) (= lt!2476856 r2!6280)) (= lambda!395915 lambda!395908))))

(declare-fun bs!1856581 () Bool)

(assert (= bs!1856581 (and d!2168395 d!2168289)))

(assert (=> bs!1856581 (= (and (= r1!6342 lt!2476875) (= lt!2476856 r3!135)) (= lambda!395915 lambda!395889))))

(declare-fun bs!1856582 () Bool)

(assert (= bs!1856582 (and d!2168395 b!6944008)))

(assert (=> bs!1856582 (not (= lambda!395915 lambda!395874))))

(assert (=> bs!1856572 (= lambda!395915 lambda!395845)))

(declare-fun bs!1856583 () Bool)

(assert (= bs!1856583 (and d!2168395 b!6944495)))

(assert (=> bs!1856583 (not (= lambda!395915 lambda!395913))))

(assert (=> bs!1856572 (not (= lambda!395915 lambda!395850))))

(assert (=> bs!1856572 (not (= lambda!395915 lambda!395848))))

(declare-fun bs!1856584 () Bool)

(assert (= bs!1856584 (and d!2168395 b!6944011)))

(assert (=> bs!1856584 (not (= lambda!395915 lambda!395873))))

(declare-fun bs!1856585 () Bool)

(assert (= bs!1856585 (and d!2168395 b!6944400)))

(assert (=> bs!1856585 (not (= lambda!395915 lambda!395910))))

(declare-fun bs!1856586 () Bool)

(assert (= bs!1856586 (and d!2168395 d!2168389)))

(assert (=> bs!1856586 (= (and (= s!14361 lt!2476878) (= lt!2476856 r2!6280)) (= lambda!395915 lambda!395912))))

(assert (=> d!2168395 true))

(assert (=> d!2168395 true))

(assert (=> d!2168395 true))

(declare-fun lambda!395916 () Int)

(assert (=> bs!1856570 (not (= lambda!395916 lambda!395897))))

(assert (=> bs!1856571 (= (and (= s!14361 (_2!37135 lt!2476883)) (= r1!6342 (regOne!34462 lt!2476856)) (= lt!2476856 (regTwo!34462 lt!2476856))) (= lambda!395916 lambda!395911))))

(assert (=> bs!1856572 (not (= lambda!395916 lambda!395851))))

(assert (=> bs!1856573 (not (= lambda!395916 lambda!395899))))

(assert (=> bs!1856574 (= (and (= s!14361 lt!2476878) (= r1!6342 (regOne!34462 lt!2476875)) (= lt!2476856 (regTwo!34462 lt!2476875))) (= lambda!395916 lambda!395914))))

(assert (=> bs!1856572 (not (= lambda!395916 lambda!395849))))

(assert (=> bs!1856575 (not (= lambda!395916 lambda!395852))))

(assert (=> bs!1856576 (not (= lambda!395916 lambda!395895))))

(assert (=> bs!1856577 (not (= lambda!395916 lambda!395860))))

(assert (=> bs!1856578 (= (and (= s!14361 (_1!37135 lt!2476883)) (= r1!6342 (regOne!34462 r1!6342)) (= lt!2476856 (regTwo!34462 r1!6342))) (= lambda!395916 lambda!395900))))

(assert (=> bs!1856572 (not (= lambda!395916 lambda!395847))))

(assert (=> bs!1856579 (= (and (= s!14361 lt!2476878) (= lt!2476856 r2!6280)) (= lambda!395916 lambda!395909))))

(assert (=> bs!1856580 (= (and (= r1!6342 (regOne!34462 lt!2476859)) (= lt!2476856 (regTwo!34462 lt!2476859))) (= lambda!395916 lambda!395861))))

(assert (=> bs!1856572 (= lambda!395916 lambda!395846)))

(assert (=> bs!1856579 (not (= lambda!395916 lambda!395908))))

(assert (=> bs!1856581 (not (= lambda!395916 lambda!395889))))

(assert (=> bs!1856582 (= (and (= r1!6342 (regOne!34462 lt!2476870)) (= lt!2476856 (regTwo!34462 lt!2476870))) (= lambda!395916 lambda!395874))))

(assert (=> bs!1856572 (not (= lambda!395916 lambda!395845))))

(declare-fun bs!1856587 () Bool)

(assert (= bs!1856587 d!2168395))

(assert (=> bs!1856587 (not (= lambda!395916 lambda!395915))))

(assert (=> bs!1856583 (not (= lambda!395916 lambda!395913))))

(assert (=> bs!1856572 (= (and (= s!14361 lt!2476878) (= lt!2476856 r2!6280)) (= lambda!395916 lambda!395850))))

(assert (=> bs!1856572 (= (and (= s!14361 (_2!37135 lt!2476883)) (= r1!6342 r2!6280) (= lt!2476856 r3!135)) (= lambda!395916 lambda!395848))))

(assert (=> bs!1856584 (not (= lambda!395916 lambda!395873))))

(assert (=> bs!1856585 (not (= lambda!395916 lambda!395910))))

(assert (=> bs!1856586 (not (= lambda!395916 lambda!395912))))

(assert (=> d!2168395 true))

(assert (=> d!2168395 true))

(assert (=> d!2168395 true))

(assert (=> d!2168395 (= (Exists!3975 lambda!395915) (Exists!3975 lambda!395916))))

(declare-fun lt!2476996 () Unit!160688)

(assert (=> d!2168395 (= lt!2476996 (choose!51746 r1!6342 lt!2476856 s!14361))))

(assert (=> d!2168395 (validRegex!8681 r1!6342)))

(assert (=> d!2168395 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2436 r1!6342 lt!2476856 s!14361) lt!2476996)))

(declare-fun m!7649196 () Bool)

(assert (=> bs!1856587 m!7649196))

(declare-fun m!7649198 () Bool)

(assert (=> bs!1856587 m!7649198))

(declare-fun m!7649200 () Bool)

(assert (=> bs!1856587 m!7649200))

(assert (=> bs!1856587 m!7648542))

(assert (=> b!6943703 d!2168395))

(declare-fun bs!1856588 () Bool)

(declare-fun d!2168397 () Bool)

(assert (= bs!1856588 (and d!2168397 d!2168345)))

(declare-fun lambda!395917 () Int)

(assert (=> bs!1856588 (= (and (= lt!2476875 r1!6342) (= r3!135 lt!2476856)) (= lambda!395917 lambda!395897))))

(declare-fun bs!1856589 () Bool)

(assert (= bs!1856589 (and d!2168397 b!6944397)))

(assert (=> bs!1856589 (not (= lambda!395917 lambda!395911))))

(declare-fun bs!1856590 () Bool)

(assert (= bs!1856590 (and d!2168397 b!6943703)))

(assert (=> bs!1856590 (= lambda!395917 lambda!395851)))

(declare-fun bs!1856591 () Bool)

(assert (= bs!1856591 (and d!2168397 b!6944320)))

(assert (=> bs!1856591 (not (= lambda!395917 lambda!395899))))

(declare-fun bs!1856592 () Bool)

(assert (= bs!1856592 (and d!2168397 b!6944492)))

(assert (=> bs!1856592 (not (= lambda!395917 lambda!395914))))

(declare-fun bs!1856593 () Bool)

(assert (= bs!1856593 (and d!2168397 b!6943704)))

(assert (=> bs!1856593 (= (and (= lt!2476875 r1!6342) (= r3!135 lt!2476856)) (= lambda!395917 lambda!395852))))

(declare-fun bs!1856594 () Bool)

(assert (= bs!1856594 (and d!2168397 d!2168343)))

(assert (=> bs!1856594 (= (and (= s!14361 (_2!37135 lt!2476883)) (= lt!2476875 r2!6280)) (= lambda!395917 lambda!395895))))

(declare-fun bs!1856595 () Bool)

(assert (= bs!1856595 (and d!2168397 b!6943858)))

(assert (=> bs!1856595 (not (= lambda!395917 lambda!395860))))

(declare-fun bs!1856596 () Bool)

(assert (= bs!1856596 (and d!2168397 b!6944317)))

(assert (=> bs!1856596 (not (= lambda!395917 lambda!395900))))

(assert (=> bs!1856590 (= (and (= s!14361 (_2!37135 lt!2476883)) (= lt!2476875 r2!6280)) (= lambda!395917 lambda!395847))))

(declare-fun bs!1856597 () Bool)

(assert (= bs!1856597 (and d!2168397 d!2168359)))

(assert (=> bs!1856597 (not (= lambda!395917 lambda!395909))))

(declare-fun bs!1856598 () Bool)

(assert (= bs!1856598 (and d!2168397 b!6943853)))

(assert (=> bs!1856598 (not (= lambda!395917 lambda!395861))))

(assert (=> bs!1856590 (not (= lambda!395917 lambda!395846))))

(declare-fun bs!1856599 () Bool)

(assert (= bs!1856599 (and d!2168397 d!2168395)))

(assert (=> bs!1856599 (not (= lambda!395917 lambda!395916))))

(assert (=> bs!1856590 (= (and (= s!14361 lt!2476878) (= lt!2476875 r1!6342) (= r3!135 r2!6280)) (= lambda!395917 lambda!395849))))

(assert (=> bs!1856597 (= (and (= s!14361 lt!2476878) (= lt!2476875 r1!6342) (= r3!135 r2!6280)) (= lambda!395917 lambda!395908))))

(declare-fun bs!1856600 () Bool)

(assert (= bs!1856600 (and d!2168397 d!2168289)))

(assert (=> bs!1856600 (= lambda!395917 lambda!395889)))

(declare-fun bs!1856601 () Bool)

(assert (= bs!1856601 (and d!2168397 b!6944008)))

(assert (=> bs!1856601 (not (= lambda!395917 lambda!395874))))

(assert (=> bs!1856590 (= (and (= lt!2476875 r1!6342) (= r3!135 lt!2476856)) (= lambda!395917 lambda!395845))))

(assert (=> bs!1856599 (= (and (= lt!2476875 r1!6342) (= r3!135 lt!2476856)) (= lambda!395917 lambda!395915))))

(declare-fun bs!1856602 () Bool)

(assert (= bs!1856602 (and d!2168397 b!6944495)))

(assert (=> bs!1856602 (not (= lambda!395917 lambda!395913))))

(assert (=> bs!1856590 (not (= lambda!395917 lambda!395850))))

(assert (=> bs!1856590 (not (= lambda!395917 lambda!395848))))

(declare-fun bs!1856603 () Bool)

(assert (= bs!1856603 (and d!2168397 b!6944011)))

(assert (=> bs!1856603 (not (= lambda!395917 lambda!395873))))

(declare-fun bs!1856604 () Bool)

(assert (= bs!1856604 (and d!2168397 b!6944400)))

(assert (=> bs!1856604 (not (= lambda!395917 lambda!395910))))

(declare-fun bs!1856605 () Bool)

(assert (= bs!1856605 (and d!2168397 d!2168389)))

(assert (=> bs!1856605 (= (and (= s!14361 lt!2476878) (= lt!2476875 r1!6342) (= r3!135 r2!6280)) (= lambda!395917 lambda!395912))))

(assert (=> d!2168397 true))

(assert (=> d!2168397 true))

(assert (=> d!2168397 true))

(declare-fun lambda!395918 () Int)

(assert (=> bs!1856589 (= (and (= s!14361 (_2!37135 lt!2476883)) (= lt!2476875 (regOne!34462 lt!2476856)) (= r3!135 (regTwo!34462 lt!2476856))) (= lambda!395918 lambda!395911))))

(assert (=> bs!1856590 (not (= lambda!395918 lambda!395851))))

(assert (=> bs!1856591 (not (= lambda!395918 lambda!395899))))

(assert (=> bs!1856592 (= (and (= s!14361 lt!2476878) (= lt!2476875 (regOne!34462 lt!2476875)) (= r3!135 (regTwo!34462 lt!2476875))) (= lambda!395918 lambda!395914))))

(assert (=> bs!1856593 (not (= lambda!395918 lambda!395852))))

(assert (=> bs!1856594 (not (= lambda!395918 lambda!395895))))

(assert (=> bs!1856595 (not (= lambda!395918 lambda!395860))))

(assert (=> bs!1856596 (= (and (= s!14361 (_1!37135 lt!2476883)) (= lt!2476875 (regOne!34462 r1!6342)) (= r3!135 (regTwo!34462 r1!6342))) (= lambda!395918 lambda!395900))))

(assert (=> bs!1856590 (not (= lambda!395918 lambda!395847))))

(assert (=> bs!1856597 (= (and (= s!14361 lt!2476878) (= lt!2476875 r1!6342) (= r3!135 r2!6280)) (= lambda!395918 lambda!395909))))

(assert (=> bs!1856598 (= (and (= lt!2476875 (regOne!34462 lt!2476859)) (= r3!135 (regTwo!34462 lt!2476859))) (= lambda!395918 lambda!395861))))

(assert (=> bs!1856590 (= (and (= lt!2476875 r1!6342) (= r3!135 lt!2476856)) (= lambda!395918 lambda!395846))))

(declare-fun bs!1856606 () Bool)

(assert (= bs!1856606 d!2168397))

(assert (=> bs!1856606 (not (= lambda!395918 lambda!395917))))

(assert (=> bs!1856588 (not (= lambda!395918 lambda!395897))))

(assert (=> bs!1856599 (= (and (= lt!2476875 r1!6342) (= r3!135 lt!2476856)) (= lambda!395918 lambda!395916))))

(assert (=> bs!1856590 (not (= lambda!395918 lambda!395849))))

(assert (=> bs!1856597 (not (= lambda!395918 lambda!395908))))

(assert (=> bs!1856600 (not (= lambda!395918 lambda!395889))))

(assert (=> bs!1856601 (= (and (= lt!2476875 (regOne!34462 lt!2476870)) (= r3!135 (regTwo!34462 lt!2476870))) (= lambda!395918 lambda!395874))))

(assert (=> bs!1856590 (not (= lambda!395918 lambda!395845))))

(assert (=> bs!1856599 (not (= lambda!395918 lambda!395915))))

(assert (=> bs!1856602 (not (= lambda!395918 lambda!395913))))

(assert (=> bs!1856590 (= (and (= s!14361 lt!2476878) (= lt!2476875 r1!6342) (= r3!135 r2!6280)) (= lambda!395918 lambda!395850))))

(assert (=> bs!1856590 (= (and (= s!14361 (_2!37135 lt!2476883)) (= lt!2476875 r2!6280)) (= lambda!395918 lambda!395848))))

(assert (=> bs!1856603 (not (= lambda!395918 lambda!395873))))

(assert (=> bs!1856604 (not (= lambda!395918 lambda!395910))))

(assert (=> bs!1856605 (not (= lambda!395918 lambda!395912))))

(assert (=> d!2168397 true))

(assert (=> d!2168397 true))

(assert (=> d!2168397 true))

(assert (=> d!2168397 (= (Exists!3975 lambda!395917) (Exists!3975 lambda!395918))))

(declare-fun lt!2476997 () Unit!160688)

(assert (=> d!2168397 (= lt!2476997 (choose!51746 lt!2476875 r3!135 s!14361))))

(assert (=> d!2168397 (validRegex!8681 lt!2476875)))

(assert (=> d!2168397 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2436 lt!2476875 r3!135 s!14361) lt!2476997)))

(declare-fun m!7649202 () Bool)

(assert (=> bs!1856606 m!7649202))

(declare-fun m!7649204 () Bool)

(assert (=> bs!1856606 m!7649204))

(declare-fun m!7649206 () Bool)

(assert (=> bs!1856606 m!7649206))

(assert (=> bs!1856606 m!7648908))

(assert (=> b!6943703 d!2168397))

(declare-fun bs!1856607 () Bool)

(declare-fun d!2168399 () Bool)

(assert (= bs!1856607 (and d!2168399 b!6944397)))

(declare-fun lambda!395919 () Int)

(assert (=> bs!1856607 (not (= lambda!395919 lambda!395911))))

(declare-fun bs!1856608 () Bool)

(assert (= bs!1856608 (and d!2168399 b!6943703)))

(assert (=> bs!1856608 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 lt!2476875)) (= lambda!395919 lambda!395851))))

(declare-fun bs!1856609 () Bool)

(assert (= bs!1856609 (and d!2168399 b!6944320)))

(assert (=> bs!1856609 (not (= lambda!395919 lambda!395899))))

(declare-fun bs!1856610 () Bool)

(assert (= bs!1856610 (and d!2168399 b!6943704)))

(assert (=> bs!1856610 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476856)) (= lambda!395919 lambda!395852))))

(declare-fun bs!1856611 () Bool)

(assert (= bs!1856611 (and d!2168399 d!2168343)))

(assert (=> bs!1856611 (= lambda!395919 lambda!395895)))

(declare-fun bs!1856612 () Bool)

(assert (= bs!1856612 (and d!2168399 b!6943858)))

(assert (=> bs!1856612 (not (= lambda!395919 lambda!395860))))

(declare-fun bs!1856613 () Bool)

(assert (= bs!1856613 (and d!2168399 b!6944317)))

(assert (=> bs!1856613 (not (= lambda!395919 lambda!395900))))

(assert (=> bs!1856608 (= lambda!395919 lambda!395847)))

(declare-fun bs!1856614 () Bool)

(assert (= bs!1856614 (and d!2168399 d!2168359)))

(assert (=> bs!1856614 (not (= lambda!395919 lambda!395909))))

(declare-fun bs!1856615 () Bool)

(assert (= bs!1856615 (and d!2168399 b!6943853)))

(assert (=> bs!1856615 (not (= lambda!395919 lambda!395861))))

(assert (=> bs!1856608 (not (= lambda!395919 lambda!395846))))

(declare-fun bs!1856616 () Bool)

(assert (= bs!1856616 (and d!2168399 d!2168397)))

(assert (=> bs!1856616 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 lt!2476875)) (= lambda!395919 lambda!395917))))

(declare-fun bs!1856617 () Bool)

(assert (= bs!1856617 (and d!2168399 d!2168345)))

(assert (=> bs!1856617 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476856)) (= lambda!395919 lambda!395897))))

(declare-fun bs!1856618 () Bool)

(assert (= bs!1856618 (and d!2168399 b!6944492)))

(assert (=> bs!1856618 (not (= lambda!395919 lambda!395914))))

(assert (=> bs!1856616 (not (= lambda!395919 lambda!395918))))

(declare-fun bs!1856619 () Bool)

(assert (= bs!1856619 (and d!2168399 d!2168395)))

(assert (=> bs!1856619 (not (= lambda!395919 lambda!395916))))

(assert (=> bs!1856608 (= (and (= (_2!37135 lt!2476883) lt!2476878) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395919 lambda!395849))))

(assert (=> bs!1856614 (= (and (= (_2!37135 lt!2476883) lt!2476878) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395919 lambda!395908))))

(declare-fun bs!1856620 () Bool)

(assert (= bs!1856620 (and d!2168399 d!2168289)))

(assert (=> bs!1856620 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 lt!2476875)) (= lambda!395919 lambda!395889))))

(declare-fun bs!1856621 () Bool)

(assert (= bs!1856621 (and d!2168399 b!6944008)))

(assert (=> bs!1856621 (not (= lambda!395919 lambda!395874))))

(assert (=> bs!1856608 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476856)) (= lambda!395919 lambda!395845))))

(assert (=> bs!1856619 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476856)) (= lambda!395919 lambda!395915))))

(declare-fun bs!1856622 () Bool)

(assert (= bs!1856622 (and d!2168399 b!6944495)))

(assert (=> bs!1856622 (not (= lambda!395919 lambda!395913))))

(assert (=> bs!1856608 (not (= lambda!395919 lambda!395850))))

(assert (=> bs!1856608 (not (= lambda!395919 lambda!395848))))

(declare-fun bs!1856623 () Bool)

(assert (= bs!1856623 (and d!2168399 b!6944011)))

(assert (=> bs!1856623 (not (= lambda!395919 lambda!395873))))

(declare-fun bs!1856624 () Bool)

(assert (= bs!1856624 (and d!2168399 b!6944400)))

(assert (=> bs!1856624 (not (= lambda!395919 lambda!395910))))

(declare-fun bs!1856625 () Bool)

(assert (= bs!1856625 (and d!2168399 d!2168389)))

(assert (=> bs!1856625 (= (and (= (_2!37135 lt!2476883) lt!2476878) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395919 lambda!395912))))

(assert (=> d!2168399 true))

(assert (=> d!2168399 true))

(assert (=> d!2168399 true))

(declare-fun lambda!395920 () Int)

(assert (=> bs!1856608 (not (= lambda!395920 lambda!395851))))

(assert (=> bs!1856609 (not (= lambda!395920 lambda!395899))))

(assert (=> bs!1856610 (not (= lambda!395920 lambda!395852))))

(assert (=> bs!1856611 (not (= lambda!395920 lambda!395895))))

(assert (=> bs!1856612 (not (= lambda!395920 lambda!395860))))

(assert (=> bs!1856613 (= (and (= (_2!37135 lt!2476883) (_1!37135 lt!2476883)) (= r2!6280 (regOne!34462 r1!6342)) (= r3!135 (regTwo!34462 r1!6342))) (= lambda!395920 lambda!395900))))

(assert (=> bs!1856608 (not (= lambda!395920 lambda!395847))))

(assert (=> bs!1856614 (= (and (= (_2!37135 lt!2476883) lt!2476878) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395920 lambda!395909))))

(assert (=> bs!1856615 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 (regOne!34462 lt!2476859)) (= r3!135 (regTwo!34462 lt!2476859))) (= lambda!395920 lambda!395861))))

(assert (=> bs!1856608 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476856)) (= lambda!395920 lambda!395846))))

(assert (=> bs!1856616 (not (= lambda!395920 lambda!395917))))

(assert (=> bs!1856617 (not (= lambda!395920 lambda!395897))))

(assert (=> bs!1856607 (= (and (= r2!6280 (regOne!34462 lt!2476856)) (= r3!135 (regTwo!34462 lt!2476856))) (= lambda!395920 lambda!395911))))

(declare-fun bs!1856626 () Bool)

(assert (= bs!1856626 d!2168399))

(assert (=> bs!1856626 (not (= lambda!395920 lambda!395919))))

(assert (=> bs!1856618 (= (and (= (_2!37135 lt!2476883) lt!2476878) (= r2!6280 (regOne!34462 lt!2476875)) (= r3!135 (regTwo!34462 lt!2476875))) (= lambda!395920 lambda!395914))))

(assert (=> bs!1856616 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 lt!2476875)) (= lambda!395920 lambda!395918))))

(assert (=> bs!1856619 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2476856)) (= lambda!395920 lambda!395916))))

(assert (=> bs!1856608 (not (= lambda!395920 lambda!395849))))

(assert (=> bs!1856614 (not (= lambda!395920 lambda!395908))))

(assert (=> bs!1856620 (not (= lambda!395920 lambda!395889))))

(assert (=> bs!1856621 (= (and (= (_2!37135 lt!2476883) s!14361) (= r2!6280 (regOne!34462 lt!2476870)) (= r3!135 (regTwo!34462 lt!2476870))) (= lambda!395920 lambda!395874))))

(assert (=> bs!1856608 (not (= lambda!395920 lambda!395845))))

(assert (=> bs!1856619 (not (= lambda!395920 lambda!395915))))

(assert (=> bs!1856622 (not (= lambda!395920 lambda!395913))))

(assert (=> bs!1856608 (= (and (= (_2!37135 lt!2476883) lt!2476878) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395920 lambda!395850))))

(assert (=> bs!1856608 (= lambda!395920 lambda!395848)))

(assert (=> bs!1856623 (not (= lambda!395920 lambda!395873))))

(assert (=> bs!1856624 (not (= lambda!395920 lambda!395910))))

(assert (=> bs!1856625 (not (= lambda!395920 lambda!395912))))

(assert (=> d!2168399 true))

(assert (=> d!2168399 true))

(assert (=> d!2168399 true))

(assert (=> d!2168399 (= (Exists!3975 lambda!395919) (Exists!3975 lambda!395920))))

(declare-fun lt!2476998 () Unit!160688)

(assert (=> d!2168399 (= lt!2476998 (choose!51746 r2!6280 r3!135 (_2!37135 lt!2476883)))))

(assert (=> d!2168399 (validRegex!8681 r2!6280)))

(assert (=> d!2168399 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2436 r2!6280 r3!135 (_2!37135 lt!2476883)) lt!2476998)))

(declare-fun m!7649208 () Bool)

(assert (=> bs!1856626 m!7649208))

(declare-fun m!7649210 () Bool)

(assert (=> bs!1856626 m!7649210))

(declare-fun m!7649212 () Bool)

(assert (=> bs!1856626 m!7649212))

(assert (=> bs!1856626 m!7648540))

(assert (=> b!6943703 d!2168399))

(declare-fun d!2168401 () Bool)

(assert (=> d!2168401 (= (++!15014 (++!15014 (_1!37135 lt!2476883) (_1!37135 lt!2476861)) (_2!37135 lt!2476861)) (++!15014 (_1!37135 lt!2476883) (++!15014 (_1!37135 lt!2476861) (_2!37135 lt!2476861))))))

(declare-fun lt!2477001 () Unit!160688)

(declare-fun choose!51747 (List!66728 List!66728 List!66728) Unit!160688)

(assert (=> d!2168401 (= lt!2477001 (choose!51747 (_1!37135 lt!2476883) (_1!37135 lt!2476861) (_2!37135 lt!2476861)))))

(assert (=> d!2168401 (= (lemmaConcatAssociativity!3056 (_1!37135 lt!2476883) (_1!37135 lt!2476861) (_2!37135 lt!2476861)) lt!2477001)))

(declare-fun bs!1856627 () Bool)

(assert (= bs!1856627 d!2168401))

(declare-fun m!7649214 () Bool)

(assert (=> bs!1856627 m!7649214))

(assert (=> bs!1856627 m!7648510))

(declare-fun m!7649216 () Bool)

(assert (=> bs!1856627 m!7649216))

(assert (=> bs!1856627 m!7648510))

(assert (=> bs!1856627 m!7648488))

(assert (=> bs!1856627 m!7648516))

(assert (=> bs!1856627 m!7648488))

(assert (=> b!6943703 d!2168401))

(declare-fun bs!1856628 () Bool)

(declare-fun b!6944506 () Bool)

(assert (= bs!1856628 (and b!6944506 b!6943703)))

(declare-fun lambda!395921 () Int)

(assert (=> bs!1856628 (not (= lambda!395921 lambda!395851))))

(declare-fun bs!1856629 () Bool)

(assert (= bs!1856629 (and b!6944506 b!6944320)))

(assert (=> bs!1856629 (= (and (= (_2!37135 lt!2476861) (_1!37135 lt!2476883)) (= (reg!17304 r3!135) (reg!17304 r1!6342)) (= r3!135 r1!6342)) (= lambda!395921 lambda!395899))))

(declare-fun bs!1856630 () Bool)

(assert (= bs!1856630 (and b!6944506 b!6943704)))

(assert (=> bs!1856630 (not (= lambda!395921 lambda!395852))))

(declare-fun bs!1856631 () Bool)

(assert (= bs!1856631 (and b!6944506 b!6943858)))

(assert (=> bs!1856631 (= (and (= (_2!37135 lt!2476861) s!14361) (= (reg!17304 r3!135) (reg!17304 lt!2476859)) (= r3!135 lt!2476859)) (= lambda!395921 lambda!395860))))

(declare-fun bs!1856632 () Bool)

(assert (= bs!1856632 (and b!6944506 b!6944317)))

(assert (=> bs!1856632 (not (= lambda!395921 lambda!395900))))

(assert (=> bs!1856628 (not (= lambda!395921 lambda!395847))))

(declare-fun bs!1856633 () Bool)

(assert (= bs!1856633 (and b!6944506 d!2168359)))

(assert (=> bs!1856633 (not (= lambda!395921 lambda!395909))))

(declare-fun bs!1856634 () Bool)

(assert (= bs!1856634 (and b!6944506 b!6943853)))

(assert (=> bs!1856634 (not (= lambda!395921 lambda!395861))))

(assert (=> bs!1856628 (not (= lambda!395921 lambda!395846))))

(declare-fun bs!1856635 () Bool)

(assert (= bs!1856635 (and b!6944506 d!2168397)))

(assert (=> bs!1856635 (not (= lambda!395921 lambda!395917))))

(declare-fun bs!1856636 () Bool)

(assert (= bs!1856636 (and b!6944506 d!2168345)))

(assert (=> bs!1856636 (not (= lambda!395921 lambda!395897))))

(declare-fun bs!1856637 () Bool)

(assert (= bs!1856637 (and b!6944506 b!6944397)))

(assert (=> bs!1856637 (not (= lambda!395921 lambda!395911))))

(declare-fun bs!1856638 () Bool)

(assert (= bs!1856638 (and b!6944506 d!2168399)))

(assert (=> bs!1856638 (not (= lambda!395921 lambda!395919))))

(declare-fun bs!1856639 () Bool)

(assert (= bs!1856639 (and b!6944506 b!6944492)))

(assert (=> bs!1856639 (not (= lambda!395921 lambda!395914))))

(assert (=> bs!1856635 (not (= lambda!395921 lambda!395918))))

(declare-fun bs!1856640 () Bool)

(assert (= bs!1856640 (and b!6944506 d!2168395)))

(assert (=> bs!1856640 (not (= lambda!395921 lambda!395916))))

(assert (=> bs!1856628 (not (= lambda!395921 lambda!395849))))

(assert (=> bs!1856633 (not (= lambda!395921 lambda!395908))))

(declare-fun bs!1856641 () Bool)

(assert (= bs!1856641 (and b!6944506 d!2168289)))

(assert (=> bs!1856641 (not (= lambda!395921 lambda!395889))))

(assert (=> bs!1856638 (not (= lambda!395921 lambda!395920))))

(declare-fun bs!1856642 () Bool)

(assert (= bs!1856642 (and b!6944506 d!2168343)))

(assert (=> bs!1856642 (not (= lambda!395921 lambda!395895))))

(declare-fun bs!1856643 () Bool)

(assert (= bs!1856643 (and b!6944506 b!6944008)))

(assert (=> bs!1856643 (not (= lambda!395921 lambda!395874))))

(assert (=> bs!1856628 (not (= lambda!395921 lambda!395845))))

(assert (=> bs!1856640 (not (= lambda!395921 lambda!395915))))

(declare-fun bs!1856644 () Bool)

(assert (= bs!1856644 (and b!6944506 b!6944495)))

(assert (=> bs!1856644 (= (and (= (_2!37135 lt!2476861) lt!2476878) (= (reg!17304 r3!135) (reg!17304 lt!2476875)) (= r3!135 lt!2476875)) (= lambda!395921 lambda!395913))))

(assert (=> bs!1856628 (not (= lambda!395921 lambda!395850))))

(assert (=> bs!1856628 (not (= lambda!395921 lambda!395848))))

(declare-fun bs!1856645 () Bool)

(assert (= bs!1856645 (and b!6944506 b!6944011)))

(assert (=> bs!1856645 (= (and (= (_2!37135 lt!2476861) s!14361) (= (reg!17304 r3!135) (reg!17304 lt!2476870)) (= r3!135 lt!2476870)) (= lambda!395921 lambda!395873))))

(declare-fun bs!1856646 () Bool)

(assert (= bs!1856646 (and b!6944506 b!6944400)))

(assert (=> bs!1856646 (= (and (= (_2!37135 lt!2476861) (_2!37135 lt!2476883)) (= (reg!17304 r3!135) (reg!17304 lt!2476856)) (= r3!135 lt!2476856)) (= lambda!395921 lambda!395910))))

(declare-fun bs!1856647 () Bool)

(assert (= bs!1856647 (and b!6944506 d!2168389)))

(assert (=> bs!1856647 (not (= lambda!395921 lambda!395912))))

(assert (=> b!6944506 true))

(assert (=> b!6944506 true))

(declare-fun bs!1856648 () Bool)

(declare-fun b!6944503 () Bool)

(assert (= bs!1856648 (and b!6944503 b!6943703)))

(declare-fun lambda!395922 () Int)

(assert (=> bs!1856648 (not (= lambda!395922 lambda!395851))))

(declare-fun bs!1856649 () Bool)

(assert (= bs!1856649 (and b!6944503 b!6944320)))

(assert (=> bs!1856649 (not (= lambda!395922 lambda!395899))))

(declare-fun bs!1856650 () Bool)

(assert (= bs!1856650 (and b!6944503 b!6943704)))

(assert (=> bs!1856650 (not (= lambda!395922 lambda!395852))))

(declare-fun bs!1856651 () Bool)

(assert (= bs!1856651 (and b!6944503 b!6943858)))

(assert (=> bs!1856651 (not (= lambda!395922 lambda!395860))))

(declare-fun bs!1856652 () Bool)

(assert (= bs!1856652 (and b!6944503 b!6944317)))

(assert (=> bs!1856652 (= (and (= (_2!37135 lt!2476861) (_1!37135 lt!2476883)) (= (regOne!34462 r3!135) (regOne!34462 r1!6342)) (= (regTwo!34462 r3!135) (regTwo!34462 r1!6342))) (= lambda!395922 lambda!395900))))

(assert (=> bs!1856648 (not (= lambda!395922 lambda!395847))))

(declare-fun bs!1856653 () Bool)

(assert (= bs!1856653 (and b!6944503 d!2168359)))

(assert (=> bs!1856653 (= (and (= (_2!37135 lt!2476861) lt!2476878) (= (regOne!34462 r3!135) r1!6342) (= (regTwo!34462 r3!135) r2!6280)) (= lambda!395922 lambda!395909))))

(declare-fun bs!1856654 () Bool)

(assert (= bs!1856654 (and b!6944503 b!6943853)))

(assert (=> bs!1856654 (= (and (= (_2!37135 lt!2476861) s!14361) (= (regOne!34462 r3!135) (regOne!34462 lt!2476859)) (= (regTwo!34462 r3!135) (regTwo!34462 lt!2476859))) (= lambda!395922 lambda!395861))))

(assert (=> bs!1856648 (= (and (= (_2!37135 lt!2476861) s!14361) (= (regOne!34462 r3!135) r1!6342) (= (regTwo!34462 r3!135) lt!2476856)) (= lambda!395922 lambda!395846))))

(declare-fun bs!1856655 () Bool)

(assert (= bs!1856655 (and b!6944503 d!2168397)))

(assert (=> bs!1856655 (not (= lambda!395922 lambda!395917))))

(declare-fun bs!1856656 () Bool)

(assert (= bs!1856656 (and b!6944503 d!2168345)))

(assert (=> bs!1856656 (not (= lambda!395922 lambda!395897))))

(declare-fun bs!1856657 () Bool)

(assert (= bs!1856657 (and b!6944503 b!6944397)))

(assert (=> bs!1856657 (= (and (= (_2!37135 lt!2476861) (_2!37135 lt!2476883)) (= (regOne!34462 r3!135) (regOne!34462 lt!2476856)) (= (regTwo!34462 r3!135) (regTwo!34462 lt!2476856))) (= lambda!395922 lambda!395911))))

(declare-fun bs!1856658 () Bool)

(assert (= bs!1856658 (and b!6944503 d!2168399)))

(assert (=> bs!1856658 (not (= lambda!395922 lambda!395919))))

(declare-fun bs!1856659 () Bool)

(assert (= bs!1856659 (and b!6944503 b!6944492)))

(assert (=> bs!1856659 (= (and (= (_2!37135 lt!2476861) lt!2476878) (= (regOne!34462 r3!135) (regOne!34462 lt!2476875)) (= (regTwo!34462 r3!135) (regTwo!34462 lt!2476875))) (= lambda!395922 lambda!395914))))

(assert (=> bs!1856655 (= (and (= (_2!37135 lt!2476861) s!14361) (= (regOne!34462 r3!135) lt!2476875) (= (regTwo!34462 r3!135) r3!135)) (= lambda!395922 lambda!395918))))

(declare-fun bs!1856660 () Bool)

(assert (= bs!1856660 (and b!6944503 d!2168395)))

(assert (=> bs!1856660 (= (and (= (_2!37135 lt!2476861) s!14361) (= (regOne!34462 r3!135) r1!6342) (= (regTwo!34462 r3!135) lt!2476856)) (= lambda!395922 lambda!395916))))

(assert (=> bs!1856648 (not (= lambda!395922 lambda!395849))))

(assert (=> bs!1856653 (not (= lambda!395922 lambda!395908))))

(declare-fun bs!1856661 () Bool)

(assert (= bs!1856661 (and b!6944503 d!2168289)))

(assert (=> bs!1856661 (not (= lambda!395922 lambda!395889))))

(assert (=> bs!1856658 (= (and (= (_2!37135 lt!2476861) (_2!37135 lt!2476883)) (= (regOne!34462 r3!135) r2!6280) (= (regTwo!34462 r3!135) r3!135)) (= lambda!395922 lambda!395920))))

(declare-fun bs!1856662 () Bool)

(assert (= bs!1856662 (and b!6944503 d!2168343)))

(assert (=> bs!1856662 (not (= lambda!395922 lambda!395895))))

(declare-fun bs!1856663 () Bool)

(assert (= bs!1856663 (and b!6944503 b!6944008)))

(assert (=> bs!1856663 (= (and (= (_2!37135 lt!2476861) s!14361) (= (regOne!34462 r3!135) (regOne!34462 lt!2476870)) (= (regTwo!34462 r3!135) (regTwo!34462 lt!2476870))) (= lambda!395922 lambda!395874))))

(assert (=> bs!1856648 (not (= lambda!395922 lambda!395845))))

(assert (=> bs!1856660 (not (= lambda!395922 lambda!395915))))

(declare-fun bs!1856664 () Bool)

(assert (= bs!1856664 (and b!6944503 b!6944495)))

(assert (=> bs!1856664 (not (= lambda!395922 lambda!395913))))

(assert (=> bs!1856648 (= (and (= (_2!37135 lt!2476861) lt!2476878) (= (regOne!34462 r3!135) r1!6342) (= (regTwo!34462 r3!135) r2!6280)) (= lambda!395922 lambda!395850))))

(declare-fun bs!1856665 () Bool)

(assert (= bs!1856665 (and b!6944503 b!6944506)))

(assert (=> bs!1856665 (not (= lambda!395922 lambda!395921))))

(assert (=> bs!1856648 (= (and (= (_2!37135 lt!2476861) (_2!37135 lt!2476883)) (= (regOne!34462 r3!135) r2!6280) (= (regTwo!34462 r3!135) r3!135)) (= lambda!395922 lambda!395848))))

(declare-fun bs!1856666 () Bool)

(assert (= bs!1856666 (and b!6944503 b!6944011)))

(assert (=> bs!1856666 (not (= lambda!395922 lambda!395873))))

(declare-fun bs!1856667 () Bool)

(assert (= bs!1856667 (and b!6944503 b!6944400)))

(assert (=> bs!1856667 (not (= lambda!395922 lambda!395910))))

(declare-fun bs!1856668 () Bool)

(assert (= bs!1856668 (and b!6944503 d!2168389)))

(assert (=> bs!1856668 (not (= lambda!395922 lambda!395912))))

(assert (=> b!6944503 true))

(assert (=> b!6944503 true))

(declare-fun bm!630823 () Bool)

(declare-fun call!630829 () Bool)

(assert (=> bm!630823 (= call!630829 (isEmpty!38878 (_2!37135 lt!2476861)))))

(declare-fun b!6944498 () Bool)

(declare-fun c!1288467 () Bool)

(assert (=> b!6944498 (= c!1288467 ((_ is Union!16975) r3!135))))

(declare-fun e!4177284 () Bool)

(declare-fun e!4177280 () Bool)

(assert (=> b!6944498 (= e!4177284 e!4177280)))

(declare-fun b!6944499 () Bool)

(assert (=> b!6944499 (= e!4177284 (= (_2!37135 lt!2476861) (Cons!66604 (c!1288295 r3!135) Nil!66604)))))

(declare-fun c!1288468 () Bool)

(declare-fun bm!630824 () Bool)

(declare-fun call!630828 () Bool)

(assert (=> bm!630824 (= call!630828 (Exists!3975 (ite c!1288468 lambda!395921 lambda!395922)))))

(declare-fun b!6944500 () Bool)

(declare-fun res!2832984 () Bool)

(declare-fun e!4177282 () Bool)

(assert (=> b!6944500 (=> res!2832984 e!4177282)))

(assert (=> b!6944500 (= res!2832984 call!630829)))

(declare-fun e!4177283 () Bool)

(assert (=> b!6944500 (= e!4177283 e!4177282)))

(declare-fun d!2168403 () Bool)

(declare-fun c!1288465 () Bool)

(assert (=> d!2168403 (= c!1288465 ((_ is EmptyExpr!16975) r3!135))))

(declare-fun e!4177285 () Bool)

(assert (=> d!2168403 (= (matchRSpec!4032 r3!135 (_2!37135 lt!2476861)) e!4177285)))

(declare-fun b!6944501 () Bool)

(declare-fun e!4177279 () Bool)

(assert (=> b!6944501 (= e!4177285 e!4177279)))

(declare-fun res!2832985 () Bool)

(assert (=> b!6944501 (= res!2832985 (not ((_ is EmptyLang!16975) r3!135)))))

(assert (=> b!6944501 (=> (not res!2832985) (not e!4177279))))

(declare-fun b!6944502 () Bool)

(declare-fun e!4177281 () Bool)

(assert (=> b!6944502 (= e!4177281 (matchRSpec!4032 (regTwo!34463 r3!135) (_2!37135 lt!2476861)))))

(assert (=> b!6944503 (= e!4177283 call!630828)))

(declare-fun b!6944504 () Bool)

(declare-fun c!1288466 () Bool)

(assert (=> b!6944504 (= c!1288466 ((_ is ElementMatch!16975) r3!135))))

(assert (=> b!6944504 (= e!4177279 e!4177284)))

(declare-fun b!6944505 () Bool)

(assert (=> b!6944505 (= e!4177280 e!4177283)))

(assert (=> b!6944505 (= c!1288468 ((_ is Star!16975) r3!135))))

(assert (=> b!6944506 (= e!4177282 call!630828)))

(declare-fun b!6944507 () Bool)

(assert (=> b!6944507 (= e!4177285 call!630829)))

(declare-fun b!6944508 () Bool)

(assert (=> b!6944508 (= e!4177280 e!4177281)))

(declare-fun res!2832986 () Bool)

(assert (=> b!6944508 (= res!2832986 (matchRSpec!4032 (regOne!34463 r3!135) (_2!37135 lt!2476861)))))

(assert (=> b!6944508 (=> res!2832986 e!4177281)))

(assert (= (and d!2168403 c!1288465) b!6944507))

(assert (= (and d!2168403 (not c!1288465)) b!6944501))

(assert (= (and b!6944501 res!2832985) b!6944504))

(assert (= (and b!6944504 c!1288466) b!6944499))

(assert (= (and b!6944504 (not c!1288466)) b!6944498))

(assert (= (and b!6944498 c!1288467) b!6944508))

(assert (= (and b!6944498 (not c!1288467)) b!6944505))

(assert (= (and b!6944508 (not res!2832986)) b!6944502))

(assert (= (and b!6944505 c!1288468) b!6944500))

(assert (= (and b!6944505 (not c!1288468)) b!6944503))

(assert (= (and b!6944500 (not res!2832984)) b!6944506))

(assert (= (or b!6944506 b!6944503) bm!630824))

(assert (= (or b!6944507 b!6944500) bm!630823))

(assert (=> bm!630823 m!7648986))

(declare-fun m!7649218 () Bool)

(assert (=> bm!630824 m!7649218))

(declare-fun m!7649220 () Bool)

(assert (=> b!6944502 m!7649220))

(declare-fun m!7649222 () Bool)

(assert (=> b!6944508 m!7649222))

(assert (=> b!6943703 d!2168403))

(declare-fun d!2168405 () Bool)

(assert (=> d!2168405 (= (matchR!9114 r1!6342 (_1!37135 lt!2476883)) (matchRSpec!4032 r1!6342 (_1!37135 lt!2476883)))))

(declare-fun lt!2477002 () Unit!160688)

(assert (=> d!2168405 (= lt!2477002 (choose!51741 r1!6342 (_1!37135 lt!2476883)))))

(assert (=> d!2168405 (validRegex!8681 r1!6342)))

(assert (=> d!2168405 (= (mainMatchTheorem!4032 r1!6342 (_1!37135 lt!2476883)) lt!2477002)))

(declare-fun bs!1856669 () Bool)

(assert (= bs!1856669 d!2168405))

(assert (=> bs!1856669 m!7648474))

(assert (=> bs!1856669 m!7648452))

(declare-fun m!7649224 () Bool)

(assert (=> bs!1856669 m!7649224))

(assert (=> bs!1856669 m!7648542))

(assert (=> b!6943703 d!2168405))

(declare-fun b!6944509 () Bool)

(declare-fun e!4177287 () Bool)

(declare-fun e!4177290 () Bool)

(assert (=> b!6944509 (= e!4177287 e!4177290)))

(declare-fun res!2832994 () Bool)

(assert (=> b!6944509 (=> (not res!2832994) (not e!4177290))))

(declare-fun lt!2477003 () Bool)

(assert (=> b!6944509 (= res!2832994 (not lt!2477003))))

(declare-fun b!6944510 () Bool)

(declare-fun e!4177291 () Bool)

(assert (=> b!6944510 (= e!4177291 (not lt!2477003))))

(declare-fun b!6944511 () Bool)

(declare-fun res!2832991 () Bool)

(assert (=> b!6944511 (=> res!2832991 e!4177287)))

(assert (=> b!6944511 (= res!2832991 (not ((_ is ElementMatch!16975) lt!2476875)))))

(assert (=> b!6944511 (= e!4177291 e!4177287)))

(declare-fun b!6944512 () Bool)

(declare-fun e!4177286 () Bool)

(assert (=> b!6944512 (= e!4177286 e!4177291)))

(declare-fun c!1288471 () Bool)

(assert (=> b!6944512 (= c!1288471 ((_ is EmptyLang!16975) lt!2476875))))

(declare-fun b!6944513 () Bool)

(declare-fun e!4177288 () Bool)

(assert (=> b!6944513 (= e!4177290 e!4177288)))

(declare-fun res!2832992 () Bool)

(assert (=> b!6944513 (=> res!2832992 e!4177288)))

(declare-fun call!630830 () Bool)

(assert (=> b!6944513 (= res!2832992 call!630830)))

(declare-fun b!6944514 () Bool)

(declare-fun e!4177292 () Bool)

(assert (=> b!6944514 (= e!4177292 (matchR!9114 (derivativeStep!5463 lt!2476875 (head!13916 lt!2476878)) (tail!12968 lt!2476878)))))

(declare-fun b!6944515 () Bool)

(assert (=> b!6944515 (= e!4177288 (not (= (head!13916 lt!2476878) (c!1288295 lt!2476875))))))

(declare-fun b!6944517 () Bool)

(declare-fun res!2832989 () Bool)

(declare-fun e!4177289 () Bool)

(assert (=> b!6944517 (=> (not res!2832989) (not e!4177289))))

(assert (=> b!6944517 (= res!2832989 (not call!630830))))

(declare-fun b!6944518 () Bool)

(declare-fun res!2832990 () Bool)

(assert (=> b!6944518 (=> res!2832990 e!4177287)))

(assert (=> b!6944518 (= res!2832990 e!4177289)))

(declare-fun res!2832987 () Bool)

(assert (=> b!6944518 (=> (not res!2832987) (not e!4177289))))

(assert (=> b!6944518 (= res!2832987 lt!2477003)))

(declare-fun bm!630825 () Bool)

(assert (=> bm!630825 (= call!630830 (isEmpty!38878 lt!2476878))))

(declare-fun b!6944519 () Bool)

(declare-fun res!2832993 () Bool)

(assert (=> b!6944519 (=> res!2832993 e!4177288)))

(assert (=> b!6944519 (= res!2832993 (not (isEmpty!38878 (tail!12968 lt!2476878))))))

(declare-fun b!6944520 () Bool)

(assert (=> b!6944520 (= e!4177292 (nullable!6788 lt!2476875))))

(declare-fun b!6944516 () Bool)

(assert (=> b!6944516 (= e!4177289 (= (head!13916 lt!2476878) (c!1288295 lt!2476875)))))

(declare-fun d!2168407 () Bool)

(assert (=> d!2168407 e!4177286))

(declare-fun c!1288470 () Bool)

(assert (=> d!2168407 (= c!1288470 ((_ is EmptyExpr!16975) lt!2476875))))

(assert (=> d!2168407 (= lt!2477003 e!4177292)))

(declare-fun c!1288469 () Bool)

(assert (=> d!2168407 (= c!1288469 (isEmpty!38878 lt!2476878))))

(assert (=> d!2168407 (validRegex!8681 lt!2476875)))

(assert (=> d!2168407 (= (matchR!9114 lt!2476875 lt!2476878) lt!2477003)))

(declare-fun b!6944521 () Bool)

(assert (=> b!6944521 (= e!4177286 (= lt!2477003 call!630830))))

(declare-fun b!6944522 () Bool)

(declare-fun res!2832988 () Bool)

(assert (=> b!6944522 (=> (not res!2832988) (not e!4177289))))

(assert (=> b!6944522 (= res!2832988 (isEmpty!38878 (tail!12968 lt!2476878)))))

(assert (= (and d!2168407 c!1288469) b!6944520))

(assert (= (and d!2168407 (not c!1288469)) b!6944514))

(assert (= (and d!2168407 c!1288470) b!6944521))

(assert (= (and d!2168407 (not c!1288470)) b!6944512))

(assert (= (and b!6944512 c!1288471) b!6944510))

(assert (= (and b!6944512 (not c!1288471)) b!6944511))

(assert (= (and b!6944511 (not res!2832991)) b!6944518))

(assert (= (and b!6944518 res!2832987) b!6944517))

(assert (= (and b!6944517 res!2832989) b!6944522))

(assert (= (and b!6944522 res!2832988) b!6944516))

(assert (= (and b!6944518 (not res!2832990)) b!6944509))

(assert (= (and b!6944509 res!2832994) b!6944513))

(assert (= (and b!6944513 (not res!2832992)) b!6944519))

(assert (= (and b!6944519 (not res!2832993)) b!6944515))

(assert (= (or b!6944521 b!6944513 b!6944517) bm!630825))

(declare-fun m!7649226 () Bool)

(assert (=> b!6944520 m!7649226))

(declare-fun m!7649228 () Bool)

(assert (=> b!6944514 m!7649228))

(assert (=> b!6944514 m!7649228))

(declare-fun m!7649230 () Bool)

(assert (=> b!6944514 m!7649230))

(declare-fun m!7649232 () Bool)

(assert (=> b!6944514 m!7649232))

(assert (=> b!6944514 m!7649230))

(assert (=> b!6944514 m!7649232))

(declare-fun m!7649234 () Bool)

(assert (=> b!6944514 m!7649234))

(assert (=> b!6944516 m!7649228))

(assert (=> b!6944515 m!7649228))

(assert (=> b!6944522 m!7649232))

(assert (=> b!6944522 m!7649232))

(declare-fun m!7649236 () Bool)

(assert (=> b!6944522 m!7649236))

(assert (=> b!6944519 m!7649232))

(assert (=> b!6944519 m!7649232))

(assert (=> b!6944519 m!7649236))

(assert (=> bm!630825 m!7649188))

(assert (=> d!2168407 m!7649188))

(assert (=> d!2168407 m!7648908))

(assert (=> b!6943703 d!2168407))

(declare-fun d!2168409 () Bool)

(assert (=> d!2168409 (= (Exists!3975 lambda!395845) (choose!51743 lambda!395845))))

(declare-fun bs!1856670 () Bool)

(assert (= bs!1856670 d!2168409))

(declare-fun m!7649238 () Bool)

(assert (=> bs!1856670 m!7649238))

(assert (=> b!6943703 d!2168409))

(declare-fun d!2168411 () Bool)

(assert (=> d!2168411 (= (Exists!3975 lambda!395849) (choose!51743 lambda!395849))))

(declare-fun bs!1856671 () Bool)

(assert (= bs!1856671 d!2168411))

(declare-fun m!7649240 () Bool)

(assert (=> bs!1856671 m!7649240))

(assert (=> b!6943703 d!2168411))

(declare-fun b!6944524 () Bool)

(declare-fun e!4177297 () Option!16744)

(declare-fun e!4177295 () Option!16744)

(assert (=> b!6944524 (= e!4177297 e!4177295)))

(declare-fun c!1288472 () Bool)

(assert (=> b!6944524 (= c!1288472 ((_ is Nil!66604) lt!2476878))))

(declare-fun b!6944525 () Bool)

(declare-fun e!4177294 () Bool)

(assert (=> b!6944525 (= e!4177294 (matchR!9114 r2!6280 lt!2476878))))

(declare-fun b!6944526 () Bool)

(declare-fun e!4177293 () Bool)

(declare-fun lt!2477004 () Option!16744)

(assert (=> b!6944526 (= e!4177293 (= (++!15014 (_1!37135 (get!23399 lt!2477004)) (_2!37135 (get!23399 lt!2477004))) lt!2476878))))

(declare-fun b!6944527 () Bool)

(assert (=> b!6944527 (= e!4177297 (Some!16743 (tuple2!67665 Nil!66604 lt!2476878)))))

(declare-fun b!6944528 () Bool)

(declare-fun res!2832996 () Bool)

(assert (=> b!6944528 (=> (not res!2832996) (not e!4177293))))

(assert (=> b!6944528 (= res!2832996 (matchR!9114 r1!6342 (_1!37135 (get!23399 lt!2477004))))))

(declare-fun b!6944529 () Bool)

(declare-fun res!2832997 () Bool)

(assert (=> b!6944529 (=> (not res!2832997) (not e!4177293))))

(assert (=> b!6944529 (= res!2832997 (matchR!9114 r2!6280 (_2!37135 (get!23399 lt!2477004))))))

(declare-fun b!6944530 () Bool)

(declare-fun e!4177296 () Bool)

(assert (=> b!6944530 (= e!4177296 (not (isDefined!13445 lt!2477004)))))

(declare-fun b!6944531 () Bool)

(assert (=> b!6944531 (= e!4177295 None!16743)))

(declare-fun b!6944523 () Bool)

(declare-fun lt!2477005 () Unit!160688)

(declare-fun lt!2477006 () Unit!160688)

(assert (=> b!6944523 (= lt!2477005 lt!2477006)))

(assert (=> b!6944523 (= (++!15014 (++!15014 Nil!66604 (Cons!66604 (h!73052 lt!2476878) Nil!66604)) (t!380471 lt!2476878)) lt!2476878)))

(assert (=> b!6944523 (= lt!2477006 (lemmaMoveElementToOtherListKeepsConcatEq!2867 Nil!66604 (h!73052 lt!2476878) (t!380471 lt!2476878) lt!2476878))))

(assert (=> b!6944523 (= e!4177295 (findConcatSeparation!3158 r1!6342 r2!6280 (++!15014 Nil!66604 (Cons!66604 (h!73052 lt!2476878) Nil!66604)) (t!380471 lt!2476878) lt!2476878))))

(declare-fun d!2168413 () Bool)

(assert (=> d!2168413 e!4177296))

(declare-fun res!2832998 () Bool)

(assert (=> d!2168413 (=> res!2832998 e!4177296)))

(assert (=> d!2168413 (= res!2832998 e!4177293)))

(declare-fun res!2832999 () Bool)

(assert (=> d!2168413 (=> (not res!2832999) (not e!4177293))))

(assert (=> d!2168413 (= res!2832999 (isDefined!13445 lt!2477004))))

(assert (=> d!2168413 (= lt!2477004 e!4177297)))

(declare-fun c!1288473 () Bool)

(assert (=> d!2168413 (= c!1288473 e!4177294)))

(declare-fun res!2832995 () Bool)

(assert (=> d!2168413 (=> (not res!2832995) (not e!4177294))))

(assert (=> d!2168413 (= res!2832995 (matchR!9114 r1!6342 Nil!66604))))

(assert (=> d!2168413 (validRegex!8681 r1!6342)))

(assert (=> d!2168413 (= (findConcatSeparation!3158 r1!6342 r2!6280 Nil!66604 lt!2476878 lt!2476878) lt!2477004)))

(assert (= (and d!2168413 res!2832995) b!6944525))

(assert (= (and d!2168413 c!1288473) b!6944527))

(assert (= (and d!2168413 (not c!1288473)) b!6944524))

(assert (= (and b!6944524 c!1288472) b!6944531))

(assert (= (and b!6944524 (not c!1288472)) b!6944523))

(assert (= (and d!2168413 res!2832999) b!6944528))

(assert (= (and b!6944528 res!2832996) b!6944529))

(assert (= (and b!6944529 res!2832997) b!6944526))

(assert (= (and d!2168413 (not res!2832998)) b!6944530))

(declare-fun m!7649242 () Bool)

(assert (=> d!2168413 m!7649242))

(declare-fun m!7649244 () Bool)

(assert (=> d!2168413 m!7649244))

(assert (=> d!2168413 m!7648542))

(declare-fun m!7649246 () Bool)

(assert (=> b!6944529 m!7649246))

(declare-fun m!7649248 () Bool)

(assert (=> b!6944529 m!7649248))

(assert (=> b!6944526 m!7649246))

(declare-fun m!7649250 () Bool)

(assert (=> b!6944526 m!7649250))

(declare-fun m!7649252 () Bool)

(assert (=> b!6944525 m!7649252))

(declare-fun m!7649254 () Bool)

(assert (=> b!6944523 m!7649254))

(assert (=> b!6944523 m!7649254))

(declare-fun m!7649256 () Bool)

(assert (=> b!6944523 m!7649256))

(declare-fun m!7649258 () Bool)

(assert (=> b!6944523 m!7649258))

(assert (=> b!6944523 m!7649254))

(declare-fun m!7649260 () Bool)

(assert (=> b!6944523 m!7649260))

(assert (=> b!6944530 m!7649242))

(assert (=> b!6944528 m!7649246))

(declare-fun m!7649262 () Bool)

(assert (=> b!6944528 m!7649262))

(assert (=> b!6943703 d!2168413))

(declare-fun d!2168415 () Bool)

(assert (=> d!2168415 (= (Exists!3975 lambda!395847) (choose!51743 lambda!395847))))

(declare-fun bs!1856672 () Bool)

(assert (= bs!1856672 d!2168415))

(declare-fun m!7649264 () Bool)

(assert (=> bs!1856672 m!7649264))

(assert (=> b!6943703 d!2168415))

(declare-fun bs!1856673 () Bool)

(declare-fun b!6944540 () Bool)

(assert (= bs!1856673 (and b!6944540 b!6943703)))

(declare-fun lambda!395923 () Int)

(assert (=> bs!1856673 (not (= lambda!395923 lambda!395851))))

(declare-fun bs!1856674 () Bool)

(assert (= bs!1856674 (and b!6944540 b!6944320)))

(assert (=> bs!1856674 (= (and (= (_1!37135 lt!2476861) (_1!37135 lt!2476883)) (= (reg!17304 r2!6280) (reg!17304 r1!6342)) (= r2!6280 r1!6342)) (= lambda!395923 lambda!395899))))

(declare-fun bs!1856675 () Bool)

(assert (= bs!1856675 (and b!6944540 b!6943704)))

(assert (=> bs!1856675 (not (= lambda!395923 lambda!395852))))

(declare-fun bs!1856676 () Bool)

(assert (= bs!1856676 (and b!6944540 b!6943858)))

(assert (=> bs!1856676 (= (and (= (_1!37135 lt!2476861) s!14361) (= (reg!17304 r2!6280) (reg!17304 lt!2476859)) (= r2!6280 lt!2476859)) (= lambda!395923 lambda!395860))))

(declare-fun bs!1856677 () Bool)

(assert (= bs!1856677 (and b!6944540 b!6944317)))

(assert (=> bs!1856677 (not (= lambda!395923 lambda!395900))))

(declare-fun bs!1856678 () Bool)

(assert (= bs!1856678 (and b!6944540 d!2168359)))

(assert (=> bs!1856678 (not (= lambda!395923 lambda!395909))))

(declare-fun bs!1856679 () Bool)

(assert (= bs!1856679 (and b!6944540 b!6943853)))

(assert (=> bs!1856679 (not (= lambda!395923 lambda!395861))))

(assert (=> bs!1856673 (not (= lambda!395923 lambda!395846))))

(declare-fun bs!1856680 () Bool)

(assert (= bs!1856680 (and b!6944540 d!2168397)))

(assert (=> bs!1856680 (not (= lambda!395923 lambda!395917))))

(declare-fun bs!1856681 () Bool)

(assert (= bs!1856681 (and b!6944540 d!2168345)))

(assert (=> bs!1856681 (not (= lambda!395923 lambda!395897))))

(declare-fun bs!1856682 () Bool)

(assert (= bs!1856682 (and b!6944540 b!6944397)))

(assert (=> bs!1856682 (not (= lambda!395923 lambda!395911))))

(declare-fun bs!1856683 () Bool)

(assert (= bs!1856683 (and b!6944540 d!2168399)))

(assert (=> bs!1856683 (not (= lambda!395923 lambda!395919))))

(declare-fun bs!1856684 () Bool)

(assert (= bs!1856684 (and b!6944540 b!6944492)))

(assert (=> bs!1856684 (not (= lambda!395923 lambda!395914))))

(assert (=> bs!1856680 (not (= lambda!395923 lambda!395918))))

(declare-fun bs!1856685 () Bool)

(assert (= bs!1856685 (and b!6944540 d!2168395)))

(assert (=> bs!1856685 (not (= lambda!395923 lambda!395916))))

(assert (=> bs!1856673 (not (= lambda!395923 lambda!395849))))

(assert (=> bs!1856678 (not (= lambda!395923 lambda!395908))))

(declare-fun bs!1856686 () Bool)

(assert (= bs!1856686 (and b!6944540 d!2168289)))

(assert (=> bs!1856686 (not (= lambda!395923 lambda!395889))))

(assert (=> bs!1856683 (not (= lambda!395923 lambda!395920))))

(declare-fun bs!1856687 () Bool)

(assert (= bs!1856687 (and b!6944540 d!2168343)))

(assert (=> bs!1856687 (not (= lambda!395923 lambda!395895))))

(declare-fun bs!1856688 () Bool)

(assert (= bs!1856688 (and b!6944540 b!6944008)))

(assert (=> bs!1856688 (not (= lambda!395923 lambda!395874))))

(assert (=> bs!1856673 (not (= lambda!395923 lambda!395845))))

(declare-fun bs!1856689 () Bool)

(assert (= bs!1856689 (and b!6944540 b!6944503)))

(assert (=> bs!1856689 (not (= lambda!395923 lambda!395922))))

(assert (=> bs!1856673 (not (= lambda!395923 lambda!395847))))

(assert (=> bs!1856685 (not (= lambda!395923 lambda!395915))))

(declare-fun bs!1856690 () Bool)

(assert (= bs!1856690 (and b!6944540 b!6944495)))

(assert (=> bs!1856690 (= (and (= (_1!37135 lt!2476861) lt!2476878) (= (reg!17304 r2!6280) (reg!17304 lt!2476875)) (= r2!6280 lt!2476875)) (= lambda!395923 lambda!395913))))

(assert (=> bs!1856673 (not (= lambda!395923 lambda!395850))))

(declare-fun bs!1856691 () Bool)

(assert (= bs!1856691 (and b!6944540 b!6944506)))

(assert (=> bs!1856691 (= (and (= (_1!37135 lt!2476861) (_2!37135 lt!2476861)) (= (reg!17304 r2!6280) (reg!17304 r3!135)) (= r2!6280 r3!135)) (= lambda!395923 lambda!395921))))

(assert (=> bs!1856673 (not (= lambda!395923 lambda!395848))))

(declare-fun bs!1856692 () Bool)

(assert (= bs!1856692 (and b!6944540 b!6944011)))

(assert (=> bs!1856692 (= (and (= (_1!37135 lt!2476861) s!14361) (= (reg!17304 r2!6280) (reg!17304 lt!2476870)) (= r2!6280 lt!2476870)) (= lambda!395923 lambda!395873))))

(declare-fun bs!1856693 () Bool)

(assert (= bs!1856693 (and b!6944540 b!6944400)))

(assert (=> bs!1856693 (= (and (= (_1!37135 lt!2476861) (_2!37135 lt!2476883)) (= (reg!17304 r2!6280) (reg!17304 lt!2476856)) (= r2!6280 lt!2476856)) (= lambda!395923 lambda!395910))))

(declare-fun bs!1856694 () Bool)

(assert (= bs!1856694 (and b!6944540 d!2168389)))

(assert (=> bs!1856694 (not (= lambda!395923 lambda!395912))))

(assert (=> b!6944540 true))

(assert (=> b!6944540 true))

(declare-fun bs!1856695 () Bool)

(declare-fun b!6944537 () Bool)

(assert (= bs!1856695 (and b!6944537 b!6943703)))

(declare-fun lambda!395924 () Int)

(assert (=> bs!1856695 (not (= lambda!395924 lambda!395851))))

(declare-fun bs!1856696 () Bool)

(assert (= bs!1856696 (and b!6944537 b!6944320)))

(assert (=> bs!1856696 (not (= lambda!395924 lambda!395899))))

(declare-fun bs!1856697 () Bool)

(assert (= bs!1856697 (and b!6944537 b!6943704)))

(assert (=> bs!1856697 (not (= lambda!395924 lambda!395852))))

(declare-fun bs!1856698 () Bool)

(assert (= bs!1856698 (and b!6944537 b!6943858)))

(assert (=> bs!1856698 (not (= lambda!395924 lambda!395860))))

(declare-fun bs!1856699 () Bool)

(assert (= bs!1856699 (and b!6944537 b!6944317)))

(assert (=> bs!1856699 (= (and (= (_1!37135 lt!2476861) (_1!37135 lt!2476883)) (= (regOne!34462 r2!6280) (regOne!34462 r1!6342)) (= (regTwo!34462 r2!6280) (regTwo!34462 r1!6342))) (= lambda!395924 lambda!395900))))

(declare-fun bs!1856700 () Bool)

(assert (= bs!1856700 (and b!6944537 d!2168359)))

(assert (=> bs!1856700 (= (and (= (_1!37135 lt!2476861) lt!2476878) (= (regOne!34462 r2!6280) r1!6342) (= (regTwo!34462 r2!6280) r2!6280)) (= lambda!395924 lambda!395909))))

(declare-fun bs!1856701 () Bool)

(assert (= bs!1856701 (and b!6944537 b!6943853)))

(assert (=> bs!1856701 (= (and (= (_1!37135 lt!2476861) s!14361) (= (regOne!34462 r2!6280) (regOne!34462 lt!2476859)) (= (regTwo!34462 r2!6280) (regTwo!34462 lt!2476859))) (= lambda!395924 lambda!395861))))

(declare-fun bs!1856702 () Bool)

(assert (= bs!1856702 (and b!6944537 d!2168397)))

(assert (=> bs!1856702 (not (= lambda!395924 lambda!395917))))

(declare-fun bs!1856703 () Bool)

(assert (= bs!1856703 (and b!6944537 d!2168345)))

(assert (=> bs!1856703 (not (= lambda!395924 lambda!395897))))

(declare-fun bs!1856704 () Bool)

(assert (= bs!1856704 (and b!6944537 b!6944397)))

(assert (=> bs!1856704 (= (and (= (_1!37135 lt!2476861) (_2!37135 lt!2476883)) (= (regOne!34462 r2!6280) (regOne!34462 lt!2476856)) (= (regTwo!34462 r2!6280) (regTwo!34462 lt!2476856))) (= lambda!395924 lambda!395911))))

(declare-fun bs!1856705 () Bool)

(assert (= bs!1856705 (and b!6944537 d!2168399)))

(assert (=> bs!1856705 (not (= lambda!395924 lambda!395919))))

(declare-fun bs!1856706 () Bool)

(assert (= bs!1856706 (and b!6944537 b!6944492)))

(assert (=> bs!1856706 (= (and (= (_1!37135 lt!2476861) lt!2476878) (= (regOne!34462 r2!6280) (regOne!34462 lt!2476875)) (= (regTwo!34462 r2!6280) (regTwo!34462 lt!2476875))) (= lambda!395924 lambda!395914))))

(assert (=> bs!1856702 (= (and (= (_1!37135 lt!2476861) s!14361) (= (regOne!34462 r2!6280) lt!2476875) (= (regTwo!34462 r2!6280) r3!135)) (= lambda!395924 lambda!395918))))

(declare-fun bs!1856707 () Bool)

(assert (= bs!1856707 (and b!6944537 d!2168395)))

(assert (=> bs!1856707 (= (and (= (_1!37135 lt!2476861) s!14361) (= (regOne!34462 r2!6280) r1!6342) (= (regTwo!34462 r2!6280) lt!2476856)) (= lambda!395924 lambda!395916))))

(assert (=> bs!1856695 (not (= lambda!395924 lambda!395849))))

(assert (=> bs!1856700 (not (= lambda!395924 lambda!395908))))

(declare-fun bs!1856708 () Bool)

(assert (= bs!1856708 (and b!6944537 d!2168289)))

(assert (=> bs!1856708 (not (= lambda!395924 lambda!395889))))

(assert (=> bs!1856705 (= (and (= (_1!37135 lt!2476861) (_2!37135 lt!2476883)) (= (regOne!34462 r2!6280) r2!6280) (= (regTwo!34462 r2!6280) r3!135)) (= lambda!395924 lambda!395920))))

(declare-fun bs!1856709 () Bool)

(assert (= bs!1856709 (and b!6944537 d!2168343)))

(assert (=> bs!1856709 (not (= lambda!395924 lambda!395895))))

(declare-fun bs!1856710 () Bool)

(assert (= bs!1856710 (and b!6944537 b!6944008)))

(assert (=> bs!1856710 (= (and (= (_1!37135 lt!2476861) s!14361) (= (regOne!34462 r2!6280) (regOne!34462 lt!2476870)) (= (regTwo!34462 r2!6280) (regTwo!34462 lt!2476870))) (= lambda!395924 lambda!395874))))

(assert (=> bs!1856695 (not (= lambda!395924 lambda!395845))))

(declare-fun bs!1856711 () Bool)

(assert (= bs!1856711 (and b!6944537 b!6944503)))

(assert (=> bs!1856711 (= (and (= (_1!37135 lt!2476861) (_2!37135 lt!2476861)) (= (regOne!34462 r2!6280) (regOne!34462 r3!135)) (= (regTwo!34462 r2!6280) (regTwo!34462 r3!135))) (= lambda!395924 lambda!395922))))

(assert (=> bs!1856695 (not (= lambda!395924 lambda!395847))))

(assert (=> bs!1856707 (not (= lambda!395924 lambda!395915))))

(declare-fun bs!1856712 () Bool)

(assert (= bs!1856712 (and b!6944537 b!6944495)))

(assert (=> bs!1856712 (not (= lambda!395924 lambda!395913))))

(assert (=> bs!1856695 (= (and (= (_1!37135 lt!2476861) lt!2476878) (= (regOne!34462 r2!6280) r1!6342) (= (regTwo!34462 r2!6280) r2!6280)) (= lambda!395924 lambda!395850))))

(declare-fun bs!1856713 () Bool)

(assert (= bs!1856713 (and b!6944537 b!6944506)))

(assert (=> bs!1856713 (not (= lambda!395924 lambda!395921))))

(assert (=> bs!1856695 (= (and (= (_1!37135 lt!2476861) (_2!37135 lt!2476883)) (= (regOne!34462 r2!6280) r2!6280) (= (regTwo!34462 r2!6280) r3!135)) (= lambda!395924 lambda!395848))))

(declare-fun bs!1856714 () Bool)

(assert (= bs!1856714 (and b!6944537 b!6944011)))

(assert (=> bs!1856714 (not (= lambda!395924 lambda!395873))))

(declare-fun bs!1856715 () Bool)

(assert (= bs!1856715 (and b!6944537 b!6944400)))

(assert (=> bs!1856715 (not (= lambda!395924 lambda!395910))))

(declare-fun bs!1856716 () Bool)

(assert (= bs!1856716 (and b!6944537 d!2168389)))

(assert (=> bs!1856716 (not (= lambda!395924 lambda!395912))))

(assert (=> bs!1856695 (= (and (= (_1!37135 lt!2476861) s!14361) (= (regOne!34462 r2!6280) r1!6342) (= (regTwo!34462 r2!6280) lt!2476856)) (= lambda!395924 lambda!395846))))

(declare-fun bs!1856717 () Bool)

(assert (= bs!1856717 (and b!6944537 b!6944540)))

(assert (=> bs!1856717 (not (= lambda!395924 lambda!395923))))

(assert (=> b!6944537 true))

(assert (=> b!6944537 true))

(declare-fun bm!630826 () Bool)

(declare-fun call!630832 () Bool)

(assert (=> bm!630826 (= call!630832 (isEmpty!38878 (_1!37135 lt!2476861)))))

(declare-fun b!6944532 () Bool)

(declare-fun c!1288476 () Bool)

(assert (=> b!6944532 (= c!1288476 ((_ is Union!16975) r2!6280))))

(declare-fun e!4177303 () Bool)

(declare-fun e!4177299 () Bool)

(assert (=> b!6944532 (= e!4177303 e!4177299)))

(declare-fun b!6944533 () Bool)

(assert (=> b!6944533 (= e!4177303 (= (_1!37135 lt!2476861) (Cons!66604 (c!1288295 r2!6280) Nil!66604)))))

(declare-fun call!630831 () Bool)

(declare-fun c!1288477 () Bool)

(declare-fun bm!630827 () Bool)

(assert (=> bm!630827 (= call!630831 (Exists!3975 (ite c!1288477 lambda!395923 lambda!395924)))))

(declare-fun b!6944534 () Bool)

(declare-fun res!2833000 () Bool)

(declare-fun e!4177301 () Bool)

(assert (=> b!6944534 (=> res!2833000 e!4177301)))

(assert (=> b!6944534 (= res!2833000 call!630832)))

(declare-fun e!4177302 () Bool)

(assert (=> b!6944534 (= e!4177302 e!4177301)))

(declare-fun d!2168417 () Bool)

(declare-fun c!1288474 () Bool)

(assert (=> d!2168417 (= c!1288474 ((_ is EmptyExpr!16975) r2!6280))))

(declare-fun e!4177304 () Bool)

(assert (=> d!2168417 (= (matchRSpec!4032 r2!6280 (_1!37135 lt!2476861)) e!4177304)))

(declare-fun b!6944535 () Bool)

(declare-fun e!4177298 () Bool)

(assert (=> b!6944535 (= e!4177304 e!4177298)))

(declare-fun res!2833001 () Bool)

(assert (=> b!6944535 (= res!2833001 (not ((_ is EmptyLang!16975) r2!6280)))))

(assert (=> b!6944535 (=> (not res!2833001) (not e!4177298))))

(declare-fun b!6944536 () Bool)

(declare-fun e!4177300 () Bool)

(assert (=> b!6944536 (= e!4177300 (matchRSpec!4032 (regTwo!34463 r2!6280) (_1!37135 lt!2476861)))))

(assert (=> b!6944537 (= e!4177302 call!630831)))

(declare-fun b!6944538 () Bool)

(declare-fun c!1288475 () Bool)

(assert (=> b!6944538 (= c!1288475 ((_ is ElementMatch!16975) r2!6280))))

(assert (=> b!6944538 (= e!4177298 e!4177303)))

(declare-fun b!6944539 () Bool)

(assert (=> b!6944539 (= e!4177299 e!4177302)))

(assert (=> b!6944539 (= c!1288477 ((_ is Star!16975) r2!6280))))

(assert (=> b!6944540 (= e!4177301 call!630831)))

(declare-fun b!6944541 () Bool)

(assert (=> b!6944541 (= e!4177304 call!630832)))

(declare-fun b!6944542 () Bool)

(assert (=> b!6944542 (= e!4177299 e!4177300)))

(declare-fun res!2833002 () Bool)

(assert (=> b!6944542 (= res!2833002 (matchRSpec!4032 (regOne!34463 r2!6280) (_1!37135 lt!2476861)))))

(assert (=> b!6944542 (=> res!2833002 e!4177300)))

(assert (= (and d!2168417 c!1288474) b!6944541))

(assert (= (and d!2168417 (not c!1288474)) b!6944535))

(assert (= (and b!6944535 res!2833001) b!6944538))

(assert (= (and b!6944538 c!1288475) b!6944533))

(assert (= (and b!6944538 (not c!1288475)) b!6944532))

(assert (= (and b!6944532 c!1288476) b!6944542))

(assert (= (and b!6944532 (not c!1288476)) b!6944539))

(assert (= (and b!6944542 (not res!2833002)) b!6944536))

(assert (= (and b!6944539 c!1288477) b!6944534))

(assert (= (and b!6944539 (not c!1288477)) b!6944537))

(assert (= (and b!6944534 (not res!2833000)) b!6944540))

(assert (= (or b!6944540 b!6944537) bm!630827))

(assert (= (or b!6944541 b!6944534) bm!630826))

(assert (=> bm!630826 m!7649178))

(declare-fun m!7649266 () Bool)

(assert (=> bm!630827 m!7649266))

(declare-fun m!7649268 () Bool)

(assert (=> b!6944536 m!7649268))

(declare-fun m!7649270 () Bool)

(assert (=> b!6944542 m!7649270))

(assert (=> b!6943703 d!2168417))

(declare-fun d!2168419 () Bool)

(assert (=> d!2168419 (= (Exists!3975 lambda!395852) (choose!51743 lambda!395852))))

(declare-fun bs!1856718 () Bool)

(assert (= bs!1856718 d!2168419))

(declare-fun m!7649272 () Bool)

(assert (=> bs!1856718 m!7649272))

(assert (=> b!6943704 d!2168419))

(declare-fun d!2168421 () Bool)

(assert (=> d!2168421 (= (isDefined!13445 lt!2476864) (not (isEmpty!38879 lt!2476864)))))

(declare-fun bs!1856719 () Bool)

(assert (= bs!1856719 d!2168421))

(declare-fun m!7649274 () Bool)

(assert (=> bs!1856719 m!7649274))

(assert (=> b!6943704 d!2168421))

(declare-fun b!6944543 () Bool)

(declare-fun e!4177306 () Bool)

(declare-fun call!630835 () Bool)

(assert (=> b!6944543 (= e!4177306 call!630835)))

(declare-fun bm!630828 () Bool)

(declare-fun call!630834 () Bool)

(declare-fun c!1288478 () Bool)

(assert (=> bm!630828 (= call!630834 (validRegex!8681 (ite c!1288478 (regTwo!34463 lt!2476856) (regOne!34462 lt!2476856))))))

(declare-fun b!6944544 () Bool)

(declare-fun e!4177307 () Bool)

(declare-fun e!4177308 () Bool)

(assert (=> b!6944544 (= e!4177307 e!4177308)))

(declare-fun res!2833005 () Bool)

(assert (=> b!6944544 (=> (not res!2833005) (not e!4177308))))

(assert (=> b!6944544 (= res!2833005 call!630834)))

(declare-fun d!2168423 () Bool)

(declare-fun res!2833007 () Bool)

(declare-fun e!4177311 () Bool)

(assert (=> d!2168423 (=> res!2833007 e!4177311)))

(assert (=> d!2168423 (= res!2833007 ((_ is ElementMatch!16975) lt!2476856))))

(assert (=> d!2168423 (= (validRegex!8681 lt!2476856) e!4177311)))

(declare-fun c!1288479 () Bool)

(declare-fun bm!630829 () Bool)

(assert (=> bm!630829 (= call!630835 (validRegex!8681 (ite c!1288479 (reg!17304 lt!2476856) (ite c!1288478 (regOne!34463 lt!2476856) (regTwo!34462 lt!2476856)))))))

(declare-fun b!6944545 () Bool)

(declare-fun call!630833 () Bool)

(assert (=> b!6944545 (= e!4177308 call!630833)))

(declare-fun b!6944546 () Bool)

(declare-fun res!2833003 () Bool)

(assert (=> b!6944546 (=> res!2833003 e!4177307)))

(assert (=> b!6944546 (= res!2833003 (not ((_ is Concat!25820) lt!2476856)))))

(declare-fun e!4177309 () Bool)

(assert (=> b!6944546 (= e!4177309 e!4177307)))

(declare-fun b!6944547 () Bool)

(declare-fun e!4177305 () Bool)

(assert (=> b!6944547 (= e!4177305 call!630834)))

(declare-fun b!6944548 () Bool)

(declare-fun e!4177310 () Bool)

(assert (=> b!6944548 (= e!4177310 e!4177309)))

(assert (=> b!6944548 (= c!1288478 ((_ is Union!16975) lt!2476856))))

(declare-fun b!6944549 () Bool)

(declare-fun res!2833006 () Bool)

(assert (=> b!6944549 (=> (not res!2833006) (not e!4177305))))

(assert (=> b!6944549 (= res!2833006 call!630833)))

(assert (=> b!6944549 (= e!4177309 e!4177305)))

(declare-fun bm!630830 () Bool)

(assert (=> bm!630830 (= call!630833 call!630835)))

(declare-fun b!6944550 () Bool)

(assert (=> b!6944550 (= e!4177311 e!4177310)))

(assert (=> b!6944550 (= c!1288479 ((_ is Star!16975) lt!2476856))))

(declare-fun b!6944551 () Bool)

(assert (=> b!6944551 (= e!4177310 e!4177306)))

(declare-fun res!2833004 () Bool)

(assert (=> b!6944551 (= res!2833004 (not (nullable!6788 (reg!17304 lt!2476856))))))

(assert (=> b!6944551 (=> (not res!2833004) (not e!4177306))))

(assert (= (and d!2168423 (not res!2833007)) b!6944550))

(assert (= (and b!6944550 c!1288479) b!6944551))

(assert (= (and b!6944550 (not c!1288479)) b!6944548))

(assert (= (and b!6944551 res!2833004) b!6944543))

(assert (= (and b!6944548 c!1288478) b!6944549))

(assert (= (and b!6944548 (not c!1288478)) b!6944546))

(assert (= (and b!6944549 res!2833006) b!6944547))

(assert (= (and b!6944546 (not res!2833003)) b!6944544))

(assert (= (and b!6944544 res!2833005) b!6944545))

(assert (= (or b!6944549 b!6944545) bm!630830))

(assert (= (or b!6944547 b!6944544) bm!630828))

(assert (= (or b!6944543 bm!630830) bm!630829))

(declare-fun m!7649276 () Bool)

(assert (=> bm!630828 m!7649276))

(declare-fun m!7649278 () Bool)

(assert (=> bm!630829 m!7649278))

(declare-fun m!7649280 () Bool)

(assert (=> b!6944551 m!7649280))

(assert (=> b!6943704 d!2168423))

(declare-fun b!6944553 () Bool)

(declare-fun e!4177316 () Option!16744)

(declare-fun e!4177314 () Option!16744)

(assert (=> b!6944553 (= e!4177316 e!4177314)))

(declare-fun c!1288480 () Bool)

(assert (=> b!6944553 (= c!1288480 ((_ is Nil!66604) s!14361))))

(declare-fun b!6944554 () Bool)

(declare-fun e!4177313 () Bool)

(assert (=> b!6944554 (= e!4177313 (matchR!9114 lt!2476856 s!14361))))

(declare-fun b!6944555 () Bool)

(declare-fun e!4177312 () Bool)

(declare-fun lt!2477007 () Option!16744)

(assert (=> b!6944555 (= e!4177312 (= (++!15014 (_1!37135 (get!23399 lt!2477007)) (_2!37135 (get!23399 lt!2477007))) s!14361))))

(declare-fun b!6944556 () Bool)

(assert (=> b!6944556 (= e!4177316 (Some!16743 (tuple2!67665 Nil!66604 s!14361)))))

(declare-fun b!6944557 () Bool)

(declare-fun res!2833009 () Bool)

(assert (=> b!6944557 (=> (not res!2833009) (not e!4177312))))

(assert (=> b!6944557 (= res!2833009 (matchR!9114 r1!6342 (_1!37135 (get!23399 lt!2477007))))))

(declare-fun b!6944558 () Bool)

(declare-fun res!2833010 () Bool)

(assert (=> b!6944558 (=> (not res!2833010) (not e!4177312))))

(assert (=> b!6944558 (= res!2833010 (matchR!9114 lt!2476856 (_2!37135 (get!23399 lt!2477007))))))

(declare-fun b!6944559 () Bool)

(declare-fun e!4177315 () Bool)

(assert (=> b!6944559 (= e!4177315 (not (isDefined!13445 lt!2477007)))))

(declare-fun b!6944560 () Bool)

(assert (=> b!6944560 (= e!4177314 None!16743)))

(declare-fun b!6944552 () Bool)

(declare-fun lt!2477008 () Unit!160688)

(declare-fun lt!2477009 () Unit!160688)

(assert (=> b!6944552 (= lt!2477008 lt!2477009)))

(assert (=> b!6944552 (= (++!15014 (++!15014 Nil!66604 (Cons!66604 (h!73052 s!14361) Nil!66604)) (t!380471 s!14361)) s!14361)))

(assert (=> b!6944552 (= lt!2477009 (lemmaMoveElementToOtherListKeepsConcatEq!2867 Nil!66604 (h!73052 s!14361) (t!380471 s!14361) s!14361))))

(assert (=> b!6944552 (= e!4177314 (findConcatSeparation!3158 r1!6342 lt!2476856 (++!15014 Nil!66604 (Cons!66604 (h!73052 s!14361) Nil!66604)) (t!380471 s!14361) s!14361))))

(declare-fun d!2168425 () Bool)

(assert (=> d!2168425 e!4177315))

(declare-fun res!2833011 () Bool)

(assert (=> d!2168425 (=> res!2833011 e!4177315)))

(assert (=> d!2168425 (= res!2833011 e!4177312)))

(declare-fun res!2833012 () Bool)

(assert (=> d!2168425 (=> (not res!2833012) (not e!4177312))))

(assert (=> d!2168425 (= res!2833012 (isDefined!13445 lt!2477007))))

(assert (=> d!2168425 (= lt!2477007 e!4177316)))

(declare-fun c!1288481 () Bool)

(assert (=> d!2168425 (= c!1288481 e!4177313)))

(declare-fun res!2833008 () Bool)

(assert (=> d!2168425 (=> (not res!2833008) (not e!4177313))))

(assert (=> d!2168425 (= res!2833008 (matchR!9114 r1!6342 Nil!66604))))

(assert (=> d!2168425 (validRegex!8681 r1!6342)))

(assert (=> d!2168425 (= (findConcatSeparation!3158 r1!6342 lt!2476856 Nil!66604 s!14361 s!14361) lt!2477007)))

(assert (= (and d!2168425 res!2833008) b!6944554))

(assert (= (and d!2168425 c!1288481) b!6944556))

(assert (= (and d!2168425 (not c!1288481)) b!6944553))

(assert (= (and b!6944553 c!1288480) b!6944560))

(assert (= (and b!6944553 (not c!1288480)) b!6944552))

(assert (= (and d!2168425 res!2833012) b!6944557))

(assert (= (and b!6944557 res!2833009) b!6944558))

(assert (= (and b!6944558 res!2833010) b!6944555))

(assert (= (and d!2168425 (not res!2833011)) b!6944559))

(declare-fun m!7649282 () Bool)

(assert (=> d!2168425 m!7649282))

(assert (=> d!2168425 m!7649244))

(assert (=> d!2168425 m!7648542))

(declare-fun m!7649284 () Bool)

(assert (=> b!6944558 m!7649284))

(declare-fun m!7649286 () Bool)

(assert (=> b!6944558 m!7649286))

(assert (=> b!6944555 m!7649284))

(declare-fun m!7649288 () Bool)

(assert (=> b!6944555 m!7649288))

(declare-fun m!7649290 () Bool)

(assert (=> b!6944554 m!7649290))

(assert (=> b!6944552 m!7649156))

(assert (=> b!6944552 m!7649156))

(assert (=> b!6944552 m!7649158))

(assert (=> b!6944552 m!7649160))

(assert (=> b!6944552 m!7649156))

(declare-fun m!7649292 () Bool)

(assert (=> b!6944552 m!7649292))

(assert (=> b!6944559 m!7649282))

(assert (=> b!6944557 m!7649284))

(declare-fun m!7649294 () Bool)

(assert (=> b!6944557 m!7649294))

(assert (=> b!6943704 d!2168425))

(assert (=> b!6943704 d!2168345))

(declare-fun b!6944573 () Bool)

(declare-fun e!4177319 () Bool)

(declare-fun tp!1914118 () Bool)

(assert (=> b!6944573 (= e!4177319 tp!1914118)))

(declare-fun b!6944571 () Bool)

(assert (=> b!6944571 (= e!4177319 tp_is_empty!43175)))

(declare-fun b!6944574 () Bool)

(declare-fun tp!1914119 () Bool)

(declare-fun tp!1914120 () Bool)

(assert (=> b!6944574 (= e!4177319 (and tp!1914119 tp!1914120))))

(declare-fun b!6944572 () Bool)

(declare-fun tp!1914122 () Bool)

(declare-fun tp!1914121 () Bool)

(assert (=> b!6944572 (= e!4177319 (and tp!1914122 tp!1914121))))

(assert (=> b!6943718 (= tp!1914008 e!4177319)))

(assert (= (and b!6943718 ((_ is ElementMatch!16975) (reg!17304 r2!6280))) b!6944571))

(assert (= (and b!6943718 ((_ is Concat!25820) (reg!17304 r2!6280))) b!6944572))

(assert (= (and b!6943718 ((_ is Star!16975) (reg!17304 r2!6280))) b!6944573))

(assert (= (and b!6943718 ((_ is Union!16975) (reg!17304 r2!6280))) b!6944574))

(declare-fun b!6944577 () Bool)

(declare-fun e!4177320 () Bool)

(declare-fun tp!1914123 () Bool)

(assert (=> b!6944577 (= e!4177320 tp!1914123)))

(declare-fun b!6944575 () Bool)

(assert (=> b!6944575 (= e!4177320 tp_is_empty!43175)))

(declare-fun b!6944578 () Bool)

(declare-fun tp!1914124 () Bool)

(declare-fun tp!1914125 () Bool)

(assert (=> b!6944578 (= e!4177320 (and tp!1914124 tp!1914125))))

(declare-fun b!6944576 () Bool)

(declare-fun tp!1914127 () Bool)

(declare-fun tp!1914126 () Bool)

(assert (=> b!6944576 (= e!4177320 (and tp!1914127 tp!1914126))))

(assert (=> b!6943707 (= tp!1914005 e!4177320)))

(assert (= (and b!6943707 ((_ is ElementMatch!16975) (regOne!34462 r3!135))) b!6944575))

(assert (= (and b!6943707 ((_ is Concat!25820) (regOne!34462 r3!135))) b!6944576))

(assert (= (and b!6943707 ((_ is Star!16975) (regOne!34462 r3!135))) b!6944577))

(assert (= (and b!6943707 ((_ is Union!16975) (regOne!34462 r3!135))) b!6944578))

(declare-fun b!6944581 () Bool)

(declare-fun e!4177321 () Bool)

(declare-fun tp!1914128 () Bool)

(assert (=> b!6944581 (= e!4177321 tp!1914128)))

(declare-fun b!6944579 () Bool)

(assert (=> b!6944579 (= e!4177321 tp_is_empty!43175)))

(declare-fun b!6944582 () Bool)

(declare-fun tp!1914129 () Bool)

(declare-fun tp!1914130 () Bool)

(assert (=> b!6944582 (= e!4177321 (and tp!1914129 tp!1914130))))

(declare-fun b!6944580 () Bool)

(declare-fun tp!1914132 () Bool)

(declare-fun tp!1914131 () Bool)

(assert (=> b!6944580 (= e!4177321 (and tp!1914132 tp!1914131))))

(assert (=> b!6943707 (= tp!1914006 e!4177321)))

(assert (= (and b!6943707 ((_ is ElementMatch!16975) (regTwo!34462 r3!135))) b!6944579))

(assert (= (and b!6943707 ((_ is Concat!25820) (regTwo!34462 r3!135))) b!6944580))

(assert (= (and b!6943707 ((_ is Star!16975) (regTwo!34462 r3!135))) b!6944581))

(assert (= (and b!6943707 ((_ is Union!16975) (regTwo!34462 r3!135))) b!6944582))

(declare-fun b!6944585 () Bool)

(declare-fun e!4177322 () Bool)

(declare-fun tp!1914133 () Bool)

(assert (=> b!6944585 (= e!4177322 tp!1914133)))

(declare-fun b!6944583 () Bool)

(assert (=> b!6944583 (= e!4177322 tp_is_empty!43175)))

(declare-fun b!6944586 () Bool)

(declare-fun tp!1914134 () Bool)

(declare-fun tp!1914135 () Bool)

(assert (=> b!6944586 (= e!4177322 (and tp!1914134 tp!1914135))))

(declare-fun b!6944584 () Bool)

(declare-fun tp!1914137 () Bool)

(declare-fun tp!1914136 () Bool)

(assert (=> b!6944584 (= e!4177322 (and tp!1914137 tp!1914136))))

(assert (=> b!6943713 (= tp!1914009 e!4177322)))

(assert (= (and b!6943713 ((_ is ElementMatch!16975) (reg!17304 r1!6342))) b!6944583))

(assert (= (and b!6943713 ((_ is Concat!25820) (reg!17304 r1!6342))) b!6944584))

(assert (= (and b!6943713 ((_ is Star!16975) (reg!17304 r1!6342))) b!6944585))

(assert (= (and b!6943713 ((_ is Union!16975) (reg!17304 r1!6342))) b!6944586))

(declare-fun b!6944589 () Bool)

(declare-fun e!4177323 () Bool)

(declare-fun tp!1914138 () Bool)

(assert (=> b!6944589 (= e!4177323 tp!1914138)))

(declare-fun b!6944587 () Bool)

(assert (=> b!6944587 (= e!4177323 tp_is_empty!43175)))

(declare-fun b!6944590 () Bool)

(declare-fun tp!1914139 () Bool)

(declare-fun tp!1914140 () Bool)

(assert (=> b!6944590 (= e!4177323 (and tp!1914139 tp!1914140))))

(declare-fun b!6944588 () Bool)

(declare-fun tp!1914142 () Bool)

(declare-fun tp!1914141 () Bool)

(assert (=> b!6944588 (= e!4177323 (and tp!1914142 tp!1914141))))

(assert (=> b!6943711 (= tp!1914010 e!4177323)))

(assert (= (and b!6943711 ((_ is ElementMatch!16975) (regOne!34462 r2!6280))) b!6944587))

(assert (= (and b!6943711 ((_ is Concat!25820) (regOne!34462 r2!6280))) b!6944588))

(assert (= (and b!6943711 ((_ is Star!16975) (regOne!34462 r2!6280))) b!6944589))

(assert (= (and b!6943711 ((_ is Union!16975) (regOne!34462 r2!6280))) b!6944590))

(declare-fun b!6944593 () Bool)

(declare-fun e!4177324 () Bool)

(declare-fun tp!1914143 () Bool)

(assert (=> b!6944593 (= e!4177324 tp!1914143)))

(declare-fun b!6944591 () Bool)

(assert (=> b!6944591 (= e!4177324 tp_is_empty!43175)))

(declare-fun b!6944594 () Bool)

(declare-fun tp!1914144 () Bool)

(declare-fun tp!1914145 () Bool)

(assert (=> b!6944594 (= e!4177324 (and tp!1914144 tp!1914145))))

(declare-fun b!6944592 () Bool)

(declare-fun tp!1914147 () Bool)

(declare-fun tp!1914146 () Bool)

(assert (=> b!6944592 (= e!4177324 (and tp!1914147 tp!1914146))))

(assert (=> b!6943711 (= tp!1914012 e!4177324)))

(assert (= (and b!6943711 ((_ is ElementMatch!16975) (regTwo!34462 r2!6280))) b!6944591))

(assert (= (and b!6943711 ((_ is Concat!25820) (regTwo!34462 r2!6280))) b!6944592))

(assert (= (and b!6943711 ((_ is Star!16975) (regTwo!34462 r2!6280))) b!6944593))

(assert (= (and b!6943711 ((_ is Union!16975) (regTwo!34462 r2!6280))) b!6944594))

(declare-fun b!6944597 () Bool)

(declare-fun e!4177325 () Bool)

(declare-fun tp!1914148 () Bool)

(assert (=> b!6944597 (= e!4177325 tp!1914148)))

(declare-fun b!6944595 () Bool)

(assert (=> b!6944595 (= e!4177325 tp_is_empty!43175)))

(declare-fun b!6944598 () Bool)

(declare-fun tp!1914149 () Bool)

(declare-fun tp!1914150 () Bool)

(assert (=> b!6944598 (= e!4177325 (and tp!1914149 tp!1914150))))

(declare-fun b!6944596 () Bool)

(declare-fun tp!1914152 () Bool)

(declare-fun tp!1914151 () Bool)

(assert (=> b!6944596 (= e!4177325 (and tp!1914152 tp!1914151))))

(assert (=> b!6943712 (= tp!1914013 e!4177325)))

(assert (= (and b!6943712 ((_ is ElementMatch!16975) (regOne!34463 r3!135))) b!6944595))

(assert (= (and b!6943712 ((_ is Concat!25820) (regOne!34463 r3!135))) b!6944596))

(assert (= (and b!6943712 ((_ is Star!16975) (regOne!34463 r3!135))) b!6944597))

(assert (= (and b!6943712 ((_ is Union!16975) (regOne!34463 r3!135))) b!6944598))

(declare-fun b!6944601 () Bool)

(declare-fun e!4177326 () Bool)

(declare-fun tp!1914153 () Bool)

(assert (=> b!6944601 (= e!4177326 tp!1914153)))

(declare-fun b!6944599 () Bool)

(assert (=> b!6944599 (= e!4177326 tp_is_empty!43175)))

(declare-fun b!6944602 () Bool)

(declare-fun tp!1914154 () Bool)

(declare-fun tp!1914155 () Bool)

(assert (=> b!6944602 (= e!4177326 (and tp!1914154 tp!1914155))))

(declare-fun b!6944600 () Bool)

(declare-fun tp!1914157 () Bool)

(declare-fun tp!1914156 () Bool)

(assert (=> b!6944600 (= e!4177326 (and tp!1914157 tp!1914156))))

(assert (=> b!6943712 (= tp!1914004 e!4177326)))

(assert (= (and b!6943712 ((_ is ElementMatch!16975) (regTwo!34463 r3!135))) b!6944599))

(assert (= (and b!6943712 ((_ is Concat!25820) (regTwo!34463 r3!135))) b!6944600))

(assert (= (and b!6943712 ((_ is Star!16975) (regTwo!34463 r3!135))) b!6944601))

(assert (= (and b!6943712 ((_ is Union!16975) (regTwo!34463 r3!135))) b!6944602))

(declare-fun b!6944605 () Bool)

(declare-fun e!4177327 () Bool)

(declare-fun tp!1914158 () Bool)

(assert (=> b!6944605 (= e!4177327 tp!1914158)))

(declare-fun b!6944603 () Bool)

(assert (=> b!6944603 (= e!4177327 tp_is_empty!43175)))

(declare-fun b!6944606 () Bool)

(declare-fun tp!1914159 () Bool)

(declare-fun tp!1914160 () Bool)

(assert (=> b!6944606 (= e!4177327 (and tp!1914159 tp!1914160))))

(declare-fun b!6944604 () Bool)

(declare-fun tp!1914162 () Bool)

(declare-fun tp!1914161 () Bool)

(assert (=> b!6944604 (= e!4177327 (and tp!1914162 tp!1914161))))

(assert (=> b!6943715 (= tp!1914017 e!4177327)))

(assert (= (and b!6943715 ((_ is ElementMatch!16975) (regOne!34463 r2!6280))) b!6944603))

(assert (= (and b!6943715 ((_ is Concat!25820) (regOne!34463 r2!6280))) b!6944604))

(assert (= (and b!6943715 ((_ is Star!16975) (regOne!34463 r2!6280))) b!6944605))

(assert (= (and b!6943715 ((_ is Union!16975) (regOne!34463 r2!6280))) b!6944606))

(declare-fun b!6944609 () Bool)

(declare-fun e!4177328 () Bool)

(declare-fun tp!1914163 () Bool)

(assert (=> b!6944609 (= e!4177328 tp!1914163)))

(declare-fun b!6944607 () Bool)

(assert (=> b!6944607 (= e!4177328 tp_is_empty!43175)))

(declare-fun b!6944610 () Bool)

(declare-fun tp!1914164 () Bool)

(declare-fun tp!1914165 () Bool)

(assert (=> b!6944610 (= e!4177328 (and tp!1914164 tp!1914165))))

(declare-fun b!6944608 () Bool)

(declare-fun tp!1914167 () Bool)

(declare-fun tp!1914166 () Bool)

(assert (=> b!6944608 (= e!4177328 (and tp!1914167 tp!1914166))))

(assert (=> b!6943715 (= tp!1914019 e!4177328)))

(assert (= (and b!6943715 ((_ is ElementMatch!16975) (regTwo!34463 r2!6280))) b!6944607))

(assert (= (and b!6943715 ((_ is Concat!25820) (regTwo!34463 r2!6280))) b!6944608))

(assert (= (and b!6943715 ((_ is Star!16975) (regTwo!34463 r2!6280))) b!6944609))

(assert (= (and b!6943715 ((_ is Union!16975) (regTwo!34463 r2!6280))) b!6944610))

(declare-fun b!6944613 () Bool)

(declare-fun e!4177329 () Bool)

(declare-fun tp!1914168 () Bool)

(assert (=> b!6944613 (= e!4177329 tp!1914168)))

(declare-fun b!6944611 () Bool)

(assert (=> b!6944611 (= e!4177329 tp_is_empty!43175)))

(declare-fun b!6944614 () Bool)

(declare-fun tp!1914169 () Bool)

(declare-fun tp!1914170 () Bool)

(assert (=> b!6944614 (= e!4177329 (and tp!1914169 tp!1914170))))

(declare-fun b!6944612 () Bool)

(declare-fun tp!1914172 () Bool)

(declare-fun tp!1914171 () Bool)

(assert (=> b!6944612 (= e!4177329 (and tp!1914172 tp!1914171))))

(assert (=> b!6943716 (= tp!1914007 e!4177329)))

(assert (= (and b!6943716 ((_ is ElementMatch!16975) (reg!17304 r3!135))) b!6944611))

(assert (= (and b!6943716 ((_ is Concat!25820) (reg!17304 r3!135))) b!6944612))

(assert (= (and b!6943716 ((_ is Star!16975) (reg!17304 r3!135))) b!6944613))

(assert (= (and b!6943716 ((_ is Union!16975) (reg!17304 r3!135))) b!6944614))

(declare-fun b!6944619 () Bool)

(declare-fun e!4177332 () Bool)

(declare-fun tp!1914175 () Bool)

(assert (=> b!6944619 (= e!4177332 (and tp_is_empty!43175 tp!1914175))))

(assert (=> b!6943721 (= tp!1914011 e!4177332)))

(assert (= (and b!6943721 ((_ is Cons!66604) (t!380471 s!14361))) b!6944619))

(declare-fun b!6944622 () Bool)

(declare-fun e!4177333 () Bool)

(declare-fun tp!1914176 () Bool)

(assert (=> b!6944622 (= e!4177333 tp!1914176)))

(declare-fun b!6944620 () Bool)

(assert (=> b!6944620 (= e!4177333 tp_is_empty!43175)))

(declare-fun b!6944623 () Bool)

(declare-fun tp!1914177 () Bool)

(declare-fun tp!1914178 () Bool)

(assert (=> b!6944623 (= e!4177333 (and tp!1914177 tp!1914178))))

(declare-fun b!6944621 () Bool)

(declare-fun tp!1914180 () Bool)

(declare-fun tp!1914179 () Bool)

(assert (=> b!6944621 (= e!4177333 (and tp!1914180 tp!1914179))))

(assert (=> b!6943705 (= tp!1914018 e!4177333)))

(assert (= (and b!6943705 ((_ is ElementMatch!16975) (regOne!34462 r1!6342))) b!6944620))

(assert (= (and b!6943705 ((_ is Concat!25820) (regOne!34462 r1!6342))) b!6944621))

(assert (= (and b!6943705 ((_ is Star!16975) (regOne!34462 r1!6342))) b!6944622))

(assert (= (and b!6943705 ((_ is Union!16975) (regOne!34462 r1!6342))) b!6944623))

(declare-fun b!6944626 () Bool)

(declare-fun e!4177334 () Bool)

(declare-fun tp!1914181 () Bool)

(assert (=> b!6944626 (= e!4177334 tp!1914181)))

(declare-fun b!6944624 () Bool)

(assert (=> b!6944624 (= e!4177334 tp_is_empty!43175)))

(declare-fun b!6944627 () Bool)

(declare-fun tp!1914182 () Bool)

(declare-fun tp!1914183 () Bool)

(assert (=> b!6944627 (= e!4177334 (and tp!1914182 tp!1914183))))

(declare-fun b!6944625 () Bool)

(declare-fun tp!1914185 () Bool)

(declare-fun tp!1914184 () Bool)

(assert (=> b!6944625 (= e!4177334 (and tp!1914185 tp!1914184))))

(assert (=> b!6943705 (= tp!1914014 e!4177334)))

(assert (= (and b!6943705 ((_ is ElementMatch!16975) (regTwo!34462 r1!6342))) b!6944624))

(assert (= (and b!6943705 ((_ is Concat!25820) (regTwo!34462 r1!6342))) b!6944625))

(assert (= (and b!6943705 ((_ is Star!16975) (regTwo!34462 r1!6342))) b!6944626))

(assert (= (and b!6943705 ((_ is Union!16975) (regTwo!34462 r1!6342))) b!6944627))

(declare-fun b!6944630 () Bool)

(declare-fun e!4177335 () Bool)

(declare-fun tp!1914186 () Bool)

(assert (=> b!6944630 (= e!4177335 tp!1914186)))

(declare-fun b!6944628 () Bool)

(assert (=> b!6944628 (= e!4177335 tp_is_empty!43175)))

(declare-fun b!6944631 () Bool)

(declare-fun tp!1914187 () Bool)

(declare-fun tp!1914188 () Bool)

(assert (=> b!6944631 (= e!4177335 (and tp!1914187 tp!1914188))))

(declare-fun b!6944629 () Bool)

(declare-fun tp!1914190 () Bool)

(declare-fun tp!1914189 () Bool)

(assert (=> b!6944629 (= e!4177335 (and tp!1914190 tp!1914189))))

(assert (=> b!6943709 (= tp!1914015 e!4177335)))

(assert (= (and b!6943709 ((_ is ElementMatch!16975) (regOne!34463 r1!6342))) b!6944628))

(assert (= (and b!6943709 ((_ is Concat!25820) (regOne!34463 r1!6342))) b!6944629))

(assert (= (and b!6943709 ((_ is Star!16975) (regOne!34463 r1!6342))) b!6944630))

(assert (= (and b!6943709 ((_ is Union!16975) (regOne!34463 r1!6342))) b!6944631))

(declare-fun b!6944634 () Bool)

(declare-fun e!4177336 () Bool)

(declare-fun tp!1914191 () Bool)

(assert (=> b!6944634 (= e!4177336 tp!1914191)))

(declare-fun b!6944632 () Bool)

(assert (=> b!6944632 (= e!4177336 tp_is_empty!43175)))

(declare-fun b!6944635 () Bool)

(declare-fun tp!1914192 () Bool)

(declare-fun tp!1914193 () Bool)

(assert (=> b!6944635 (= e!4177336 (and tp!1914192 tp!1914193))))

(declare-fun b!6944633 () Bool)

(declare-fun tp!1914195 () Bool)

(declare-fun tp!1914194 () Bool)

(assert (=> b!6944633 (= e!4177336 (and tp!1914195 tp!1914194))))

(assert (=> b!6943709 (= tp!1914016 e!4177336)))

(assert (= (and b!6943709 ((_ is ElementMatch!16975) (regTwo!34463 r1!6342))) b!6944632))

(assert (= (and b!6943709 ((_ is Concat!25820) (regTwo!34463 r1!6342))) b!6944633))

(assert (= (and b!6943709 ((_ is Star!16975) (regTwo!34463 r1!6342))) b!6944634))

(assert (= (and b!6943709 ((_ is Union!16975) (regTwo!34463 r1!6342))) b!6944635))

(check-sat (not b!6944150) (not b!6944601) (not d!2168399) (not b!6944600) (not b!6944154) (not b!6943971) (not b!6944249) (not d!2168413) (not bm!630790) (not d!2168343) (not b!6944623) (not bm!630781) (not d!2168333) (not b!6944484) (not bm!630794) (not b!6944635) (not b!6944630) (not b!6944522) (not b!6944578) (not b!6944497) (not b!6944529) (not d!2168379) (not b!6944609) (not d!2168419) (not b!6944309) (not bm!630812) (not b!6944264) (not b!6944542) (not d!2168407) (not b!6944581) (not bm!630793) (not b!6944592) (not bm!630748) (not bm!630764) (not b!6944604) (not b!6944466) (not b!6944589) (not b!6944039) (not d!2168389) (not b!6944590) (not b!6944265) (not b!6943968) (not d!2168347) (not b!6944486) (not b!6944596) (not b!6944151) (not b!6944491) (not d!2168411) (not b!6944074) (not b!6944519) (not bm!630779) (not b!6944530) (not b!6943754) (not b!6944558) (not b!6944525) (not b!6944478) (not b!6944294) (not d!2168241) (not b!6944555) (not b!6944479) (not b!6944035) (not b!6944293) (not b!6944634) (not d!2168327) (not b!6944573) (not bm!630828) (not bm!630791) (not b!6944269) (not b!6944378) (not bm!630809) (not d!2168405) (not b!6944612) (not b!6944626) (not d!2168251) (not b!6944552) (not b!6944586) (not b!6944402) (not bm!630820) (not b!6944250) (not b!6943851) (not d!2168217) (not b!6944557) (not b!6944551) (not d!2168397) (not b!6944480) (not b!6944588) (not b!6944271) (not b!6944042) (not b!6944324) (not b!6944377) (not b!6944514) (not d!2168395) (not d!2168335) (not bm!630823) (not b!6944034) (not d!2168309) (not b!6944508) (not b!6944597) (not b!6944464) (not b!6944013) (not d!2168401) (not b!6944040) (not d!2168377) (not bm!630827) (not b!6944065) (not b!6944606) (not b!6944625) (not d!2168387) (not bm!630818) (not d!2168425) (not b!6944155) (not b!6944605) (not b!6944467) (not bm!630825) (not b!6943972) (not bm!630788) (not b!6943966) (not bm!630822) (not d!2168355) (not b!6944483) (not bm!630821) (not d!2168307) (not b!6944255) (not d!2168257) (not b!6944007) (not d!2168245) (not b!6944153) (not bm!630747) (not b!6944515) (not bm!630819) (not b!6944310) (not b!6944602) (not b!6944577) (not bm!630805) (not b!6944251) (not bm!630824) (not b!6944289) (not b!6944526) (not d!2168385) (not d!2168259) (not b!6944572) (not b!6944254) (not b!6944559) (not bm!630829) (not b!6944322) (not b!6944241) (not b!6944516) (not b!6944613) (not b!6944296) (not d!2168409) (not d!2168391) (not b!6944619) (not d!2168373) (not d!2168421) (not b!6944621) (not b!6944528) (not b!6944584) (not b!6944257) (not b!6944502) (not bm!630780) (not d!2168331) (not b!6943974) (not bm!630826) (not b!6944631) tp_is_empty!43175 (not b!6944263) (not b!6944036) (not b!6944627) (not d!2168371) (not d!2168383) (not d!2168289) (not b!6944582) (not d!2168415) (not b!6944268) (not b!6943967) (not b!6944325) (not b!6944469) (not bm!630813) (not d!2168325) (not bm!630763) (not b!6944614) (not d!2168329) (not d!2168345) (not b!6944290) (not b!6944242) (not bm!630806) (not b!6944629) (not b!6944580) (not b!6944598) (not d!2168359) (not b!6944594) (not b!6944523) (not b!6944396) (not b!6944574) (not b!6944622) (not b!6944633) (not b!6944593) (not b!6944536) (not d!2168339) (not b!6944585) (not d!2168357) (not b!6944316) (not b!6944471) (not b!6944554) (not b!6944288) (not b!6944148) (not b!6944610) (not b!6943860) (not d!2168351) (not b!6944470) (not b!6944520) (not b!6944608) (not b!6944576))
(check-sat)
