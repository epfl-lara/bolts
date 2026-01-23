; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!666582 () Bool)

(assert start!666582)

(declare-fun b!6941062 () Bool)

(assert (=> b!6941062 true))

(assert (=> b!6941062 true))

(assert (=> b!6941062 true))

(declare-fun lambda!395474 () Int)

(declare-fun lambda!395473 () Int)

(assert (=> b!6941062 (not (= lambda!395474 lambda!395473))))

(assert (=> b!6941062 true))

(assert (=> b!6941062 true))

(assert (=> b!6941062 true))

(declare-fun bs!1854830 () Bool)

(declare-fun b!6941061 () Bool)

(assert (= bs!1854830 (and b!6941061 b!6941062)))

(declare-fun lambda!395475 () Int)

(declare-datatypes ((C!34204 0))(
  ( (C!34205 (val!26804 Int)) )
))
(declare-datatypes ((List!66720 0))(
  ( (Nil!66596) (Cons!66596 (h!73044 C!34204) (t!380463 List!66720)) )
))
(declare-datatypes ((tuple2!67648 0))(
  ( (tuple2!67649 (_1!37127 List!66720) (_2!37127 List!66720)) )
))
(declare-fun lt!2475899 () tuple2!67648)

(declare-datatypes ((Regex!16967 0))(
  ( (ElementMatch!16967 (c!1287895 C!34204)) (Concat!25812 (regOne!34446 Regex!16967) (regTwo!34446 Regex!16967)) (EmptyExpr!16967) (Star!16967 (reg!17296 Regex!16967)) (EmptyLang!16967) (Union!16967 (regOne!34447 Regex!16967) (regTwo!34447 Regex!16967)) )
))
(declare-fun r3!135 () Regex!16967)

(declare-fun r2!6280 () Regex!16967)

(declare-fun r1!6342 () Regex!16967)

(declare-fun lt!2475872 () Regex!16967)

(declare-fun s!14361 () List!66720)

(assert (=> bs!1854830 (= (and (= (_2!37127 lt!2475899) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2475872)) (= lambda!395475 lambda!395473))))

(assert (=> bs!1854830 (not (= lambda!395475 lambda!395474))))

(assert (=> b!6941061 true))

(assert (=> b!6941061 true))

(assert (=> b!6941061 true))

(declare-fun lambda!395476 () Int)

(assert (=> bs!1854830 (not (= lambda!395476 lambda!395473))))

(assert (=> bs!1854830 (= (and (= (_2!37127 lt!2475899) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2475872)) (= lambda!395476 lambda!395474))))

(assert (=> b!6941061 (not (= lambda!395476 lambda!395475))))

(assert (=> b!6941061 true))

(assert (=> b!6941061 true))

(assert (=> b!6941061 true))

(declare-fun bs!1854831 () Bool)

(declare-fun b!6941070 () Bool)

(assert (= bs!1854831 (and b!6941070 b!6941062)))

(declare-fun lambda!395477 () Int)

(declare-fun lt!2475880 () List!66720)

(assert (=> bs!1854831 (= (and (= lt!2475880 s!14361) (= r2!6280 lt!2475872)) (= lambda!395477 lambda!395473))))

(assert (=> bs!1854831 (not (= lambda!395477 lambda!395474))))

(declare-fun bs!1854832 () Bool)

(assert (= bs!1854832 (and b!6941070 b!6941061)))

(assert (=> bs!1854832 (= (and (= lt!2475880 (_2!37127 lt!2475899)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395477 lambda!395475))))

(assert (=> bs!1854832 (not (= lambda!395477 lambda!395476))))

(assert (=> b!6941070 true))

(assert (=> b!6941070 true))

(assert (=> b!6941070 true))

(declare-fun lambda!395478 () Int)

(assert (=> b!6941070 (not (= lambda!395478 lambda!395477))))

(assert (=> bs!1854832 (not (= lambda!395478 lambda!395475))))

(assert (=> bs!1854832 (= (and (= lt!2475880 (_2!37127 lt!2475899)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395478 lambda!395476))))

(assert (=> bs!1854831 (not (= lambda!395478 lambda!395473))))

(assert (=> bs!1854831 (= (and (= lt!2475880 s!14361) (= r2!6280 lt!2475872)) (= lambda!395478 lambda!395474))))

(assert (=> b!6941070 true))

(assert (=> b!6941070 true))

(assert (=> b!6941070 true))

(declare-fun bs!1854833 () Bool)

(declare-fun b!6941078 () Bool)

(assert (= bs!1854833 (and b!6941078 b!6941070)))

(declare-fun lambda!395479 () Int)

(declare-fun lt!2475892 () Regex!16967)

(assert (=> bs!1854833 (= (and (= s!14361 lt!2475880) (= lt!2475892 r1!6342) (= r3!135 r2!6280)) (= lambda!395479 lambda!395477))))

(declare-fun bs!1854834 () Bool)

(assert (= bs!1854834 (and b!6941078 b!6941061)))

(assert (=> bs!1854834 (= (and (= s!14361 (_2!37127 lt!2475899)) (= lt!2475892 r2!6280)) (= lambda!395479 lambda!395475))))

(assert (=> bs!1854834 (not (= lambda!395479 lambda!395476))))

(declare-fun bs!1854835 () Bool)

(assert (= bs!1854835 (and b!6941078 b!6941062)))

(assert (=> bs!1854835 (= (and (= lt!2475892 r1!6342) (= r3!135 lt!2475872)) (= lambda!395479 lambda!395473))))

(assert (=> bs!1854833 (not (= lambda!395479 lambda!395478))))

(assert (=> bs!1854835 (not (= lambda!395479 lambda!395474))))

(assert (=> b!6941078 true))

(assert (=> b!6941078 true))

(assert (=> b!6941078 true))

(declare-fun lambda!395480 () Int)

(assert (=> bs!1854833 (not (= lambda!395480 lambda!395477))))

(assert (=> b!6941078 (not (= lambda!395480 lambda!395479))))

(assert (=> bs!1854834 (not (= lambda!395480 lambda!395475))))

(assert (=> bs!1854834 (= (and (= s!14361 (_2!37127 lt!2475899)) (= lt!2475892 r2!6280)) (= lambda!395480 lambda!395476))))

(assert (=> bs!1854835 (not (= lambda!395480 lambda!395473))))

(assert (=> bs!1854833 (= (and (= s!14361 lt!2475880) (= lt!2475892 r1!6342) (= r3!135 r2!6280)) (= lambda!395480 lambda!395478))))

(assert (=> bs!1854835 (= (and (= lt!2475892 r1!6342) (= r3!135 lt!2475872)) (= lambda!395480 lambda!395474))))

(assert (=> b!6941078 true))

(assert (=> b!6941078 true))

(assert (=> b!6941078 true))

(declare-fun b!6941060 () Bool)

(declare-fun e!4175564 () Bool)

(declare-fun tp!1913273 () Bool)

(declare-fun tp!1913276 () Bool)

(assert (=> b!6941060 (= e!4175564 (and tp!1913273 tp!1913276))))

(declare-fun e!4175569 () Bool)

(declare-fun e!4175573 () Bool)

(assert (=> b!6941061 (= e!4175569 e!4175573)))

(declare-fun res!2831429 () Bool)

(assert (=> b!6941061 (=> res!2831429 e!4175573)))

(declare-fun lt!2475891 () tuple2!67648)

(declare-fun matchR!9106 (Regex!16967 List!66720) Bool)

(assert (=> b!6941061 (= res!2831429 (not (matchR!9106 r2!6280 (_1!37127 lt!2475891))))))

(declare-datatypes ((Option!16736 0))(
  ( (None!16735) (Some!16735 (v!53007 tuple2!67648)) )
))
(declare-fun lt!2475877 () Option!16736)

(declare-fun get!23387 (Option!16736) tuple2!67648)

(assert (=> b!6941061 (= lt!2475891 (get!23387 lt!2475877))))

(declare-fun Exists!3967 (Int) Bool)

(assert (=> b!6941061 (= (Exists!3967 lambda!395475) (Exists!3967 lambda!395476))))

(declare-datatypes ((Unit!160658 0))(
  ( (Unit!160659) )
))
(declare-fun lt!2475885 () Unit!160658)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2428 (Regex!16967 Regex!16967 List!66720) Unit!160658)

(assert (=> b!6941061 (= lt!2475885 (lemmaExistCutMatchRandMatchRSpecEquivalent!2428 r2!6280 r3!135 (_2!37127 lt!2475899)))))

(declare-fun isDefined!13437 (Option!16736) Bool)

(assert (=> b!6941061 (= (isDefined!13437 lt!2475877) (Exists!3967 lambda!395475))))

(declare-fun findConcatSeparation!3150 (Regex!16967 Regex!16967 List!66720 List!66720 List!66720) Option!16736)

(assert (=> b!6941061 (= lt!2475877 (findConcatSeparation!3150 r2!6280 r3!135 Nil!66596 (_2!37127 lt!2475899) (_2!37127 lt!2475899)))))

(declare-fun lt!2475884 () Unit!160658)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2908 (Regex!16967 Regex!16967 List!66720) Unit!160658)

(assert (=> b!6941061 (= lt!2475884 (lemmaFindConcatSeparationEquivalentToExists!2908 r2!6280 r3!135 (_2!37127 lt!2475899)))))

(declare-fun matchRSpec!4024 (Regex!16967 List!66720) Bool)

(assert (=> b!6941061 (matchRSpec!4024 lt!2475872 (_2!37127 lt!2475899))))

(declare-fun lt!2475888 () Unit!160658)

(declare-fun mainMatchTheorem!4024 (Regex!16967 List!66720) Unit!160658)

(assert (=> b!6941061 (= lt!2475888 (mainMatchTheorem!4024 lt!2475872 (_2!37127 lt!2475899)))))

(declare-fun e!4175567 () Bool)

(assert (=> b!6941062 (= e!4175567 e!4175569)))

(declare-fun res!2831428 () Bool)

(assert (=> b!6941062 (=> res!2831428 e!4175569)))

(declare-fun lt!2475881 () Bool)

(assert (=> b!6941062 (= res!2831428 (not lt!2475881))))

(assert (=> b!6941062 (= lt!2475881 (matchRSpec!4024 r1!6342 (_1!37127 lt!2475899)))))

(assert (=> b!6941062 (= lt!2475881 (matchR!9106 r1!6342 (_1!37127 lt!2475899)))))

(declare-fun lt!2475898 () Unit!160658)

(assert (=> b!6941062 (= lt!2475898 (mainMatchTheorem!4024 r1!6342 (_1!37127 lt!2475899)))))

(declare-fun lt!2475897 () Option!16736)

(assert (=> b!6941062 (= lt!2475899 (get!23387 lt!2475897))))

(assert (=> b!6941062 (= (Exists!3967 lambda!395473) (Exists!3967 lambda!395474))))

(declare-fun lt!2475875 () Unit!160658)

(assert (=> b!6941062 (= lt!2475875 (lemmaExistCutMatchRandMatchRSpecEquivalent!2428 r1!6342 lt!2475872 s!14361))))

(assert (=> b!6941062 (Exists!3967 lambda!395473)))

(declare-fun lt!2475889 () Unit!160658)

(assert (=> b!6941062 (= lt!2475889 (lemmaFindConcatSeparationEquivalentToExists!2908 r1!6342 lt!2475872 s!14361))))

(declare-fun b!6941063 () Bool)

(declare-fun e!4175566 () Bool)

(declare-fun tp!1913275 () Bool)

(declare-fun tp!1913280 () Bool)

(assert (=> b!6941063 (= e!4175566 (and tp!1913275 tp!1913280))))

(declare-fun b!6941064 () Bool)

(declare-fun res!2831423 () Bool)

(declare-fun e!4175572 () Bool)

(assert (=> b!6941064 (=> (not res!2831423) (not e!4175572))))

(declare-fun validRegex!8673 (Regex!16967) Bool)

(assert (=> b!6941064 (= res!2831423 (validRegex!8673 r3!135))))

(declare-fun res!2831425 () Bool)

(assert (=> start!666582 (=> (not res!2831425) (not e!4175572))))

(assert (=> start!666582 (= res!2831425 (validRegex!8673 r1!6342))))

(assert (=> start!666582 e!4175572))

(assert (=> start!666582 e!4175566))

(declare-fun e!4175574 () Bool)

(assert (=> start!666582 e!4175574))

(assert (=> start!666582 e!4175564))

(declare-fun e!4175571 () Bool)

(assert (=> start!666582 e!4175571))

(declare-fun b!6941065 () Bool)

(declare-fun tp!1913277 () Bool)

(assert (=> b!6941065 (= e!4175566 tp!1913277)))

(declare-fun b!6941066 () Bool)

(declare-fun res!2831424 () Bool)

(assert (=> b!6941066 (=> res!2831424 e!4175573)))

(assert (=> b!6941066 (= res!2831424 (not (matchR!9106 r3!135 (_2!37127 lt!2475891))))))

(declare-fun b!6941067 () Bool)

(declare-fun e!4175570 () Bool)

(assert (=> b!6941067 (= e!4175572 (not e!4175570))))

(declare-fun res!2831430 () Bool)

(assert (=> b!6941067 (=> res!2831430 e!4175570)))

(declare-fun lt!2475876 () Bool)

(assert (=> b!6941067 (= res!2831430 lt!2475876)))

(declare-fun lt!2475878 () Regex!16967)

(assert (=> b!6941067 (= (matchR!9106 lt!2475878 s!14361) (matchRSpec!4024 lt!2475878 s!14361))))

(declare-fun lt!2475883 () Unit!160658)

(assert (=> b!6941067 (= lt!2475883 (mainMatchTheorem!4024 lt!2475878 s!14361))))

(declare-fun lt!2475869 () Regex!16967)

(assert (=> b!6941067 (= lt!2475876 (matchRSpec!4024 lt!2475869 s!14361))))

(assert (=> b!6941067 (= lt!2475876 (matchR!9106 lt!2475869 s!14361))))

(declare-fun lt!2475895 () Unit!160658)

(assert (=> b!6941067 (= lt!2475895 (mainMatchTheorem!4024 lt!2475869 s!14361))))

(assert (=> b!6941067 (= lt!2475878 (Concat!25812 r1!6342 lt!2475872))))

(assert (=> b!6941067 (= lt!2475872 (Concat!25812 r2!6280 r3!135))))

(assert (=> b!6941067 (= lt!2475869 (Concat!25812 lt!2475892 r3!135))))

(assert (=> b!6941067 (= lt!2475892 (Concat!25812 r1!6342 r2!6280))))

(declare-fun b!6941068 () Bool)

(declare-fun tp_is_empty!43159 () Bool)

(assert (=> b!6941068 (= e!4175566 tp_is_empty!43159)))

(declare-fun b!6941069 () Bool)

(declare-fun tp!1913279 () Bool)

(assert (=> b!6941069 (= e!4175564 tp!1913279)))

(declare-fun e!4175565 () Bool)

(declare-fun e!4175568 () Bool)

(assert (=> b!6941070 (= e!4175565 e!4175568)))

(declare-fun res!2831426 () Bool)

(assert (=> b!6941070 (=> res!2831426 e!4175568)))

(declare-fun lt!2475873 () Bool)

(declare-fun lt!2475871 () List!66720)

(assert (=> b!6941070 (= res!2831426 (or (not lt!2475873) (not (= lt!2475871 s!14361))))))

(declare-fun lt!2475879 () Bool)

(assert (=> b!6941070 lt!2475879))

(declare-fun lt!2475870 () Unit!160658)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!110 (Regex!16967 Regex!16967 List!66720 List!66720 List!66720 List!66720 List!66720) Unit!160658)

(assert (=> b!6941070 (= lt!2475870 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!110 r1!6342 r2!6280 (_1!37127 lt!2475899) (_1!37127 lt!2475891) lt!2475880 Nil!66596 lt!2475880))))

(assert (=> b!6941070 (= (Exists!3967 lambda!395477) (Exists!3967 lambda!395478))))

(declare-fun lt!2475868 () Unit!160658)

(assert (=> b!6941070 (= lt!2475868 (lemmaExistCutMatchRandMatchRSpecEquivalent!2428 r1!6342 r2!6280 lt!2475880))))

(assert (=> b!6941070 (= lt!2475879 (Exists!3967 lambda!395477))))

(assert (=> b!6941070 (= lt!2475879 (isDefined!13437 (findConcatSeparation!3150 r1!6342 r2!6280 Nil!66596 lt!2475880 lt!2475880)))))

(declare-fun lt!2475893 () Unit!160658)

(assert (=> b!6941070 (= lt!2475893 (lemmaFindConcatSeparationEquivalentToExists!2908 r1!6342 r2!6280 lt!2475880))))

(assert (=> b!6941070 (= lt!2475873 (matchRSpec!4024 lt!2475892 lt!2475880))))

(assert (=> b!6941070 (= lt!2475873 (matchR!9106 lt!2475892 lt!2475880))))

(declare-fun lt!2475886 () Unit!160658)

(assert (=> b!6941070 (= lt!2475886 (mainMatchTheorem!4024 lt!2475892 lt!2475880))))

(declare-fun lt!2475882 () List!66720)

(assert (=> b!6941070 (= lt!2475871 lt!2475882)))

(declare-fun ++!15006 (List!66720 List!66720) List!66720)

(assert (=> b!6941070 (= lt!2475871 (++!15006 lt!2475880 (_2!37127 lt!2475891)))))

(assert (=> b!6941070 (= lt!2475880 (++!15006 (_1!37127 lt!2475899) (_1!37127 lt!2475891)))))

(declare-fun lt!2475896 () Unit!160658)

(declare-fun lemmaConcatAssociativity!3048 (List!66720 List!66720 List!66720) Unit!160658)

(assert (=> b!6941070 (= lt!2475896 (lemmaConcatAssociativity!3048 (_1!37127 lt!2475899) (_1!37127 lt!2475891) (_2!37127 lt!2475891)))))

(declare-fun b!6941071 () Bool)

(assert (=> b!6941071 (= e!4175573 e!4175565)))

(declare-fun res!2831432 () Bool)

(assert (=> b!6941071 (=> res!2831432 e!4175565)))

(assert (=> b!6941071 (= res!2831432 (not (= lt!2475882 s!14361)))))

(assert (=> b!6941071 (= lt!2475882 (++!15006 (_1!37127 lt!2475899) (++!15006 (_1!37127 lt!2475891) (_2!37127 lt!2475891))))))

(assert (=> b!6941071 (matchRSpec!4024 r3!135 (_2!37127 lt!2475891))))

(declare-fun lt!2475874 () Unit!160658)

(assert (=> b!6941071 (= lt!2475874 (mainMatchTheorem!4024 r3!135 (_2!37127 lt!2475891)))))

(assert (=> b!6941071 (matchRSpec!4024 r2!6280 (_1!37127 lt!2475891))))

(declare-fun lt!2475867 () Unit!160658)

(assert (=> b!6941071 (= lt!2475867 (mainMatchTheorem!4024 r2!6280 (_1!37127 lt!2475891)))))

(declare-fun b!6941072 () Bool)

(declare-fun tp!1913283 () Bool)

(declare-fun tp!1913271 () Bool)

(assert (=> b!6941072 (= e!4175574 (and tp!1913283 tp!1913271))))

(declare-fun b!6941073 () Bool)

(declare-fun res!2831427 () Bool)

(assert (=> b!6941073 (=> res!2831427 e!4175569)))

(assert (=> b!6941073 (= res!2831427 (not (matchR!9106 lt!2475872 (_2!37127 lt!2475899))))))

(declare-fun b!6941074 () Bool)

(declare-fun tp!1913270 () Bool)

(declare-fun tp!1913272 () Bool)

(assert (=> b!6941074 (= e!4175566 (and tp!1913270 tp!1913272))))

(declare-fun b!6941075 () Bool)

(declare-fun tp!1913274 () Bool)

(assert (=> b!6941075 (= e!4175574 tp!1913274)))

(declare-fun b!6941076 () Bool)

(assert (=> b!6941076 (= e!4175564 tp_is_empty!43159)))

(declare-fun b!6941077 () Bool)

(declare-fun tp!1913281 () Bool)

(declare-fun tp!1913278 () Bool)

(assert (=> b!6941077 (= e!4175574 (and tp!1913281 tp!1913278))))

(assert (=> b!6941078 (= e!4175568 false)))

(assert (=> b!6941078 (= (Exists!3967 lambda!395479) (Exists!3967 lambda!395480))))

(declare-fun lt!2475894 () Unit!160658)

(assert (=> b!6941078 (= lt!2475894 (lemmaExistCutMatchRandMatchRSpecEquivalent!2428 lt!2475892 r3!135 s!14361))))

(assert (=> b!6941078 (Exists!3967 lambda!395479)))

(declare-fun lt!2475890 () Unit!160658)

(assert (=> b!6941078 (= lt!2475890 (lemmaFindConcatSeparationEquivalentToExists!2908 lt!2475892 r3!135 s!14361))))

(assert (=> b!6941078 (isDefined!13437 (findConcatSeparation!3150 lt!2475892 r3!135 Nil!66596 s!14361 s!14361))))

(declare-fun lt!2475887 () Unit!160658)

(assert (=> b!6941078 (= lt!2475887 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!110 lt!2475892 r3!135 lt!2475880 (_2!37127 lt!2475891) s!14361 Nil!66596 s!14361))))

(declare-fun b!6941079 () Bool)

(assert (=> b!6941079 (= e!4175570 e!4175567)))

(declare-fun res!2831422 () Bool)

(assert (=> b!6941079 (=> res!2831422 e!4175567)))

(assert (=> b!6941079 (= res!2831422 (not (isDefined!13437 lt!2475897)))))

(assert (=> b!6941079 (= lt!2475897 (findConcatSeparation!3150 r1!6342 lt!2475872 Nil!66596 s!14361 s!14361))))

(declare-fun b!6941080 () Bool)

(declare-fun tp!1913269 () Bool)

(assert (=> b!6941080 (= e!4175571 (and tp_is_empty!43159 tp!1913269))))

(declare-fun b!6941081 () Bool)

(declare-fun tp!1913268 () Bool)

(declare-fun tp!1913282 () Bool)

(assert (=> b!6941081 (= e!4175564 (and tp!1913268 tp!1913282))))

(declare-fun b!6941082 () Bool)

(declare-fun res!2831431 () Bool)

(assert (=> b!6941082 (=> (not res!2831431) (not e!4175572))))

(assert (=> b!6941082 (= res!2831431 (validRegex!8673 r2!6280))))

(declare-fun b!6941083 () Bool)

(assert (=> b!6941083 (= e!4175574 tp_is_empty!43159)))

(assert (= (and start!666582 res!2831425) b!6941082))

(assert (= (and b!6941082 res!2831431) b!6941064))

(assert (= (and b!6941064 res!2831423) b!6941067))

(assert (= (and b!6941067 (not res!2831430)) b!6941079))

(assert (= (and b!6941079 (not res!2831422)) b!6941062))

(assert (= (and b!6941062 (not res!2831428)) b!6941073))

(assert (= (and b!6941073 (not res!2831427)) b!6941061))

(assert (= (and b!6941061 (not res!2831429)) b!6941066))

(assert (= (and b!6941066 (not res!2831424)) b!6941071))

(assert (= (and b!6941071 (not res!2831432)) b!6941070))

(assert (= (and b!6941070 (not res!2831426)) b!6941078))

(get-info :version)

(assert (= (and start!666582 ((_ is ElementMatch!16967) r1!6342)) b!6941068))

(assert (= (and start!666582 ((_ is Concat!25812) r1!6342)) b!6941074))

(assert (= (and start!666582 ((_ is Star!16967) r1!6342)) b!6941065))

(assert (= (and start!666582 ((_ is Union!16967) r1!6342)) b!6941063))

(assert (= (and start!666582 ((_ is ElementMatch!16967) r2!6280)) b!6941083))

(assert (= (and start!666582 ((_ is Concat!25812) r2!6280)) b!6941077))

(assert (= (and start!666582 ((_ is Star!16967) r2!6280)) b!6941075))

(assert (= (and start!666582 ((_ is Union!16967) r2!6280)) b!6941072))

(assert (= (and start!666582 ((_ is ElementMatch!16967) r3!135)) b!6941076))

(assert (= (and start!666582 ((_ is Concat!25812) r3!135)) b!6941060))

(assert (= (and start!666582 ((_ is Star!16967) r3!135)) b!6941069))

(assert (= (and start!666582 ((_ is Union!16967) r3!135)) b!6941081))

(assert (= (and start!666582 ((_ is Cons!66596) s!14361)) b!6941080))

(declare-fun m!7646026 () Bool)

(assert (=> b!6941071 m!7646026))

(declare-fun m!7646028 () Bool)

(assert (=> b!6941071 m!7646028))

(declare-fun m!7646030 () Bool)

(assert (=> b!6941071 m!7646030))

(declare-fun m!7646032 () Bool)

(assert (=> b!6941071 m!7646032))

(assert (=> b!6941071 m!7646030))

(declare-fun m!7646034 () Bool)

(assert (=> b!6941071 m!7646034))

(declare-fun m!7646036 () Bool)

(assert (=> b!6941071 m!7646036))

(declare-fun m!7646038 () Bool)

(assert (=> b!6941073 m!7646038))

(declare-fun m!7646040 () Bool)

(assert (=> b!6941082 m!7646040))

(declare-fun m!7646042 () Bool)

(assert (=> b!6941079 m!7646042))

(declare-fun m!7646044 () Bool)

(assert (=> b!6941079 m!7646044))

(declare-fun m!7646046 () Bool)

(assert (=> b!6941066 m!7646046))

(declare-fun m!7646048 () Bool)

(assert (=> b!6941070 m!7646048))

(declare-fun m!7646050 () Bool)

(assert (=> b!6941070 m!7646050))

(declare-fun m!7646052 () Bool)

(assert (=> b!6941070 m!7646052))

(declare-fun m!7646054 () Bool)

(assert (=> b!6941070 m!7646054))

(declare-fun m!7646056 () Bool)

(assert (=> b!6941070 m!7646056))

(declare-fun m!7646058 () Bool)

(assert (=> b!6941070 m!7646058))

(declare-fun m!7646060 () Bool)

(assert (=> b!6941070 m!7646060))

(declare-fun m!7646062 () Bool)

(assert (=> b!6941070 m!7646062))

(declare-fun m!7646064 () Bool)

(assert (=> b!6941070 m!7646064))

(declare-fun m!7646066 () Bool)

(assert (=> b!6941070 m!7646066))

(declare-fun m!7646068 () Bool)

(assert (=> b!6941070 m!7646068))

(declare-fun m!7646070 () Bool)

(assert (=> b!6941070 m!7646070))

(assert (=> b!6941070 m!7646052))

(declare-fun m!7646072 () Bool)

(assert (=> b!6941070 m!7646072))

(assert (=> b!6941070 m!7646056))

(declare-fun m!7646074 () Bool)

(assert (=> start!666582 m!7646074))

(declare-fun m!7646076 () Bool)

(assert (=> b!6941064 m!7646076))

(declare-fun m!7646078 () Bool)

(assert (=> b!6941061 m!7646078))

(declare-fun m!7646080 () Bool)

(assert (=> b!6941061 m!7646080))

(declare-fun m!7646082 () Bool)

(assert (=> b!6941061 m!7646082))

(declare-fun m!7646084 () Bool)

(assert (=> b!6941061 m!7646084))

(declare-fun m!7646086 () Bool)

(assert (=> b!6941061 m!7646086))

(declare-fun m!7646088 () Bool)

(assert (=> b!6941061 m!7646088))

(declare-fun m!7646090 () Bool)

(assert (=> b!6941061 m!7646090))

(declare-fun m!7646092 () Bool)

(assert (=> b!6941061 m!7646092))

(declare-fun m!7646094 () Bool)

(assert (=> b!6941061 m!7646094))

(declare-fun m!7646096 () Bool)

(assert (=> b!6941061 m!7646096))

(assert (=> b!6941061 m!7646088))

(declare-fun m!7646098 () Bool)

(assert (=> b!6941062 m!7646098))

(declare-fun m!7646100 () Bool)

(assert (=> b!6941062 m!7646100))

(declare-fun m!7646102 () Bool)

(assert (=> b!6941062 m!7646102))

(declare-fun m!7646104 () Bool)

(assert (=> b!6941062 m!7646104))

(declare-fun m!7646106 () Bool)

(assert (=> b!6941062 m!7646106))

(declare-fun m!7646108 () Bool)

(assert (=> b!6941062 m!7646108))

(declare-fun m!7646110 () Bool)

(assert (=> b!6941062 m!7646110))

(assert (=> b!6941062 m!7646100))

(declare-fun m!7646112 () Bool)

(assert (=> b!6941062 m!7646112))

(declare-fun m!7646114 () Bool)

(assert (=> b!6941078 m!7646114))

(declare-fun m!7646116 () Bool)

(assert (=> b!6941078 m!7646116))

(assert (=> b!6941078 m!7646116))

(declare-fun m!7646118 () Bool)

(assert (=> b!6941078 m!7646118))

(declare-fun m!7646120 () Bool)

(assert (=> b!6941078 m!7646120))

(declare-fun m!7646122 () Bool)

(assert (=> b!6941078 m!7646122))

(assert (=> b!6941078 m!7646120))

(declare-fun m!7646124 () Bool)

(assert (=> b!6941078 m!7646124))

(declare-fun m!7646126 () Bool)

(assert (=> b!6941078 m!7646126))

(declare-fun m!7646128 () Bool)

(assert (=> b!6941067 m!7646128))

(declare-fun m!7646130 () Bool)

(assert (=> b!6941067 m!7646130))

(declare-fun m!7646132 () Bool)

(assert (=> b!6941067 m!7646132))

(declare-fun m!7646134 () Bool)

(assert (=> b!6941067 m!7646134))

(declare-fun m!7646136 () Bool)

(assert (=> b!6941067 m!7646136))

(declare-fun m!7646138 () Bool)

(assert (=> b!6941067 m!7646138))

(check-sat (not b!6941064) (not b!6941081) (not b!6941060) (not b!6941063) (not b!6941062) (not b!6941072) (not b!6941079) (not b!6941073) (not b!6941065) tp_is_empty!43159 (not b!6941075) (not b!6941067) (not b!6941078) (not b!6941061) (not b!6941071) (not b!6941080) (not b!6941069) (not b!6941070) (not b!6941074) (not b!6941077) (not start!666582) (not b!6941066) (not b!6941082))
(check-sat)
(get-model)

(declare-fun bs!1854837 () Bool)

(declare-fun b!6941177 () Bool)

(assert (= bs!1854837 (and b!6941177 b!6941070)))

(declare-fun lambda!395485 () Int)

(assert (=> bs!1854837 (not (= lambda!395485 lambda!395477))))

(declare-fun bs!1854838 () Bool)

(assert (= bs!1854838 (and b!6941177 b!6941078)))

(assert (=> bs!1854838 (not (= lambda!395485 lambda!395479))))

(declare-fun bs!1854839 () Bool)

(assert (= bs!1854839 (and b!6941177 b!6941061)))

(assert (=> bs!1854839 (not (= lambda!395485 lambda!395475))))

(assert (=> bs!1854839 (not (= lambda!395485 lambda!395476))))

(declare-fun bs!1854840 () Bool)

(assert (= bs!1854840 (and b!6941177 b!6941062)))

(assert (=> bs!1854840 (not (= lambda!395485 lambda!395473))))

(assert (=> bs!1854837 (not (= lambda!395485 lambda!395478))))

(assert (=> bs!1854838 (not (= lambda!395485 lambda!395480))))

(assert (=> bs!1854840 (not (= lambda!395485 lambda!395474))))

(assert (=> b!6941177 true))

(assert (=> b!6941177 true))

(declare-fun bs!1854841 () Bool)

(declare-fun b!6941182 () Bool)

(assert (= bs!1854841 (and b!6941182 b!6941070)))

(declare-fun lambda!395486 () Int)

(assert (=> bs!1854841 (not (= lambda!395486 lambda!395477))))

(declare-fun bs!1854842 () Bool)

(assert (= bs!1854842 (and b!6941182 b!6941078)))

(assert (=> bs!1854842 (not (= lambda!395486 lambda!395479))))

(declare-fun bs!1854843 () Bool)

(assert (= bs!1854843 (and b!6941182 b!6941177)))

(assert (=> bs!1854843 (not (= lambda!395486 lambda!395485))))

(declare-fun bs!1854844 () Bool)

(assert (= bs!1854844 (and b!6941182 b!6941061)))

(assert (=> bs!1854844 (not (= lambda!395486 lambda!395475))))

(assert (=> bs!1854844 (= (and (= (_2!37127 lt!2475891) (_2!37127 lt!2475899)) (= (regOne!34446 r3!135) r2!6280) (= (regTwo!34446 r3!135) r3!135)) (= lambda!395486 lambda!395476))))

(declare-fun bs!1854845 () Bool)

(assert (= bs!1854845 (and b!6941182 b!6941062)))

(assert (=> bs!1854845 (not (= lambda!395486 lambda!395473))))

(assert (=> bs!1854841 (= (and (= (_2!37127 lt!2475891) lt!2475880) (= (regOne!34446 r3!135) r1!6342) (= (regTwo!34446 r3!135) r2!6280)) (= lambda!395486 lambda!395478))))

(assert (=> bs!1854842 (= (and (= (_2!37127 lt!2475891) s!14361) (= (regOne!34446 r3!135) lt!2475892) (= (regTwo!34446 r3!135) r3!135)) (= lambda!395486 lambda!395480))))

(assert (=> bs!1854845 (= (and (= (_2!37127 lt!2475891) s!14361) (= (regOne!34446 r3!135) r1!6342) (= (regTwo!34446 r3!135) lt!2475872)) (= lambda!395486 lambda!395474))))

(assert (=> b!6941182 true))

(assert (=> b!6941182 true))

(declare-fun d!2167735 () Bool)

(declare-fun c!1287919 () Bool)

(assert (=> d!2167735 (= c!1287919 ((_ is EmptyExpr!16967) r3!135))))

(declare-fun e!4175630 () Bool)

(assert (=> d!2167735 (= (matchRSpec!4024 r3!135 (_2!37127 lt!2475891)) e!4175630)))

(declare-fun e!4175629 () Bool)

(declare-fun call!630588 () Bool)

(assert (=> b!6941177 (= e!4175629 call!630588)))

(declare-fun bm!630582 () Bool)

(declare-fun c!1287916 () Bool)

(assert (=> bm!630582 (= call!630588 (Exists!3967 (ite c!1287916 lambda!395485 lambda!395486)))))

(declare-fun b!6941178 () Bool)

(declare-fun e!4175632 () Bool)

(assert (=> b!6941178 (= e!4175632 (matchRSpec!4024 (regTwo!34447 r3!135) (_2!37127 lt!2475891)))))

(declare-fun b!6941179 () Bool)

(declare-fun e!4175628 () Bool)

(declare-fun e!4175633 () Bool)

(assert (=> b!6941179 (= e!4175628 e!4175633)))

(assert (=> b!6941179 (= c!1287916 ((_ is Star!16967) r3!135))))

(declare-fun b!6941180 () Bool)

(declare-fun res!2831480 () Bool)

(assert (=> b!6941180 (=> res!2831480 e!4175629)))

(declare-fun call!630587 () Bool)

(assert (=> b!6941180 (= res!2831480 call!630587)))

(assert (=> b!6941180 (= e!4175633 e!4175629)))

(declare-fun b!6941181 () Bool)

(declare-fun e!4175634 () Bool)

(assert (=> b!6941181 (= e!4175634 (= (_2!37127 lt!2475891) (Cons!66596 (c!1287895 r3!135) Nil!66596)))))

(declare-fun bm!630583 () Bool)

(declare-fun isEmpty!38869 (List!66720) Bool)

(assert (=> bm!630583 (= call!630587 (isEmpty!38869 (_2!37127 lt!2475891)))))

(assert (=> b!6941182 (= e!4175633 call!630588)))

(declare-fun b!6941183 () Bool)

(declare-fun c!1287918 () Bool)

(assert (=> b!6941183 (= c!1287918 ((_ is Union!16967) r3!135))))

(assert (=> b!6941183 (= e!4175634 e!4175628)))

(declare-fun b!6941184 () Bool)

(declare-fun e!4175631 () Bool)

(assert (=> b!6941184 (= e!4175630 e!4175631)))

(declare-fun res!2831482 () Bool)

(assert (=> b!6941184 (= res!2831482 (not ((_ is EmptyLang!16967) r3!135)))))

(assert (=> b!6941184 (=> (not res!2831482) (not e!4175631))))

(declare-fun b!6941185 () Bool)

(declare-fun c!1287917 () Bool)

(assert (=> b!6941185 (= c!1287917 ((_ is ElementMatch!16967) r3!135))))

(assert (=> b!6941185 (= e!4175631 e!4175634)))

(declare-fun b!6941186 () Bool)

(assert (=> b!6941186 (= e!4175628 e!4175632)))

(declare-fun res!2831481 () Bool)

(assert (=> b!6941186 (= res!2831481 (matchRSpec!4024 (regOne!34447 r3!135) (_2!37127 lt!2475891)))))

(assert (=> b!6941186 (=> res!2831481 e!4175632)))

(declare-fun b!6941187 () Bool)

(assert (=> b!6941187 (= e!4175630 call!630587)))

(assert (= (and d!2167735 c!1287919) b!6941187))

(assert (= (and d!2167735 (not c!1287919)) b!6941184))

(assert (= (and b!6941184 res!2831482) b!6941185))

(assert (= (and b!6941185 c!1287917) b!6941181))

(assert (= (and b!6941185 (not c!1287917)) b!6941183))

(assert (= (and b!6941183 c!1287918) b!6941186))

(assert (= (and b!6941183 (not c!1287918)) b!6941179))

(assert (= (and b!6941186 (not res!2831481)) b!6941178))

(assert (= (and b!6941179 c!1287916) b!6941180))

(assert (= (and b!6941179 (not c!1287916)) b!6941182))

(assert (= (and b!6941180 (not res!2831480)) b!6941177))

(assert (= (or b!6941177 b!6941182) bm!630582))

(assert (= (or b!6941187 b!6941180) bm!630583))

(declare-fun m!7646162 () Bool)

(assert (=> bm!630582 m!7646162))

(declare-fun m!7646164 () Bool)

(assert (=> b!6941178 m!7646164))

(declare-fun m!7646166 () Bool)

(assert (=> bm!630583 m!7646166))

(declare-fun m!7646168 () Bool)

(assert (=> b!6941186 m!7646168))

(assert (=> b!6941071 d!2167735))

(declare-fun b!6941220 () Bool)

(declare-fun res!2831504 () Bool)

(declare-fun e!4175650 () Bool)

(assert (=> b!6941220 (=> (not res!2831504) (not e!4175650))))

(declare-fun lt!2475910 () List!66720)

(declare-fun size!40802 (List!66720) Int)

(assert (=> b!6941220 (= res!2831504 (= (size!40802 lt!2475910) (+ (size!40802 (_1!37127 lt!2475891)) (size!40802 (_2!37127 lt!2475891)))))))

(declare-fun b!6941218 () Bool)

(declare-fun e!4175651 () List!66720)

(assert (=> b!6941218 (= e!4175651 (_2!37127 lt!2475891))))

(declare-fun d!2167747 () Bool)

(assert (=> d!2167747 e!4175650))

(declare-fun res!2831503 () Bool)

(assert (=> d!2167747 (=> (not res!2831503) (not e!4175650))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13105 (List!66720) (InoxSet C!34204))

(assert (=> d!2167747 (= res!2831503 (= (content!13105 lt!2475910) ((_ map or) (content!13105 (_1!37127 lt!2475891)) (content!13105 (_2!37127 lt!2475891)))))))

(assert (=> d!2167747 (= lt!2475910 e!4175651)))

(declare-fun c!1287925 () Bool)

(assert (=> d!2167747 (= c!1287925 ((_ is Nil!66596) (_1!37127 lt!2475891)))))

(assert (=> d!2167747 (= (++!15006 (_1!37127 lt!2475891) (_2!37127 lt!2475891)) lt!2475910)))

(declare-fun b!6941221 () Bool)

(assert (=> b!6941221 (= e!4175650 (or (not (= (_2!37127 lt!2475891) Nil!66596)) (= lt!2475910 (_1!37127 lt!2475891))))))

(declare-fun b!6941219 () Bool)

(assert (=> b!6941219 (= e!4175651 (Cons!66596 (h!73044 (_1!37127 lt!2475891)) (++!15006 (t!380463 (_1!37127 lt!2475891)) (_2!37127 lt!2475891))))))

(assert (= (and d!2167747 c!1287925) b!6941218))

(assert (= (and d!2167747 (not c!1287925)) b!6941219))

(assert (= (and d!2167747 res!2831503) b!6941220))

(assert (= (and b!6941220 res!2831504) b!6941221))

(declare-fun m!7646176 () Bool)

(assert (=> b!6941220 m!7646176))

(declare-fun m!7646178 () Bool)

(assert (=> b!6941220 m!7646178))

(declare-fun m!7646180 () Bool)

(assert (=> b!6941220 m!7646180))

(declare-fun m!7646182 () Bool)

(assert (=> d!2167747 m!7646182))

(declare-fun m!7646184 () Bool)

(assert (=> d!2167747 m!7646184))

(declare-fun m!7646186 () Bool)

(assert (=> d!2167747 m!7646186))

(declare-fun m!7646188 () Bool)

(assert (=> b!6941219 m!7646188))

(assert (=> b!6941071 d!2167747))

(declare-fun b!6941228 () Bool)

(declare-fun res!2831510 () Bool)

(declare-fun e!4175654 () Bool)

(assert (=> b!6941228 (=> (not res!2831510) (not e!4175654))))

(declare-fun lt!2475911 () List!66720)

(assert (=> b!6941228 (= res!2831510 (= (size!40802 lt!2475911) (+ (size!40802 (_1!37127 lt!2475899)) (size!40802 (++!15006 (_1!37127 lt!2475891) (_2!37127 lt!2475891))))))))

(declare-fun b!6941226 () Bool)

(declare-fun e!4175655 () List!66720)

(assert (=> b!6941226 (= e!4175655 (++!15006 (_1!37127 lt!2475891) (_2!37127 lt!2475891)))))

(declare-fun d!2167751 () Bool)

(assert (=> d!2167751 e!4175654))

(declare-fun res!2831509 () Bool)

(assert (=> d!2167751 (=> (not res!2831509) (not e!4175654))))

(assert (=> d!2167751 (= res!2831509 (= (content!13105 lt!2475911) ((_ map or) (content!13105 (_1!37127 lt!2475899)) (content!13105 (++!15006 (_1!37127 lt!2475891) (_2!37127 lt!2475891))))))))

(assert (=> d!2167751 (= lt!2475911 e!4175655)))

(declare-fun c!1287926 () Bool)

(assert (=> d!2167751 (= c!1287926 ((_ is Nil!66596) (_1!37127 lt!2475899)))))

(assert (=> d!2167751 (= (++!15006 (_1!37127 lt!2475899) (++!15006 (_1!37127 lt!2475891) (_2!37127 lt!2475891))) lt!2475911)))

(declare-fun b!6941229 () Bool)

(assert (=> b!6941229 (= e!4175654 (or (not (= (++!15006 (_1!37127 lt!2475891) (_2!37127 lt!2475891)) Nil!66596)) (= lt!2475911 (_1!37127 lt!2475899))))))

(declare-fun b!6941227 () Bool)

(assert (=> b!6941227 (= e!4175655 (Cons!66596 (h!73044 (_1!37127 lt!2475899)) (++!15006 (t!380463 (_1!37127 lt!2475899)) (++!15006 (_1!37127 lt!2475891) (_2!37127 lt!2475891)))))))

(assert (= (and d!2167751 c!1287926) b!6941226))

(assert (= (and d!2167751 (not c!1287926)) b!6941227))

(assert (= (and d!2167751 res!2831509) b!6941228))

(assert (= (and b!6941228 res!2831510) b!6941229))

(declare-fun m!7646190 () Bool)

(assert (=> b!6941228 m!7646190))

(declare-fun m!7646192 () Bool)

(assert (=> b!6941228 m!7646192))

(assert (=> b!6941228 m!7646030))

(declare-fun m!7646194 () Bool)

(assert (=> b!6941228 m!7646194))

(declare-fun m!7646196 () Bool)

(assert (=> d!2167751 m!7646196))

(declare-fun m!7646198 () Bool)

(assert (=> d!2167751 m!7646198))

(assert (=> d!2167751 m!7646030))

(declare-fun m!7646200 () Bool)

(assert (=> d!2167751 m!7646200))

(assert (=> b!6941227 m!7646030))

(declare-fun m!7646202 () Bool)

(assert (=> b!6941227 m!7646202))

(assert (=> b!6941071 d!2167751))

(declare-fun d!2167753 () Bool)

(assert (=> d!2167753 (= (matchR!9106 r2!6280 (_1!37127 lt!2475891)) (matchRSpec!4024 r2!6280 (_1!37127 lt!2475891)))))

(declare-fun lt!2475915 () Unit!160658)

(declare-fun choose!51716 (Regex!16967 List!66720) Unit!160658)

(assert (=> d!2167753 (= lt!2475915 (choose!51716 r2!6280 (_1!37127 lt!2475891)))))

(assert (=> d!2167753 (validRegex!8673 r2!6280)))

(assert (=> d!2167753 (= (mainMatchTheorem!4024 r2!6280 (_1!37127 lt!2475891)) lt!2475915)))

(declare-fun bs!1854858 () Bool)

(assert (= bs!1854858 d!2167753))

(assert (=> bs!1854858 m!7646086))

(assert (=> bs!1854858 m!7646028))

(declare-fun m!7646212 () Bool)

(assert (=> bs!1854858 m!7646212))

(assert (=> bs!1854858 m!7646040))

(assert (=> b!6941071 d!2167753))

(declare-fun d!2167759 () Bool)

(assert (=> d!2167759 (= (matchR!9106 r3!135 (_2!37127 lt!2475891)) (matchRSpec!4024 r3!135 (_2!37127 lt!2475891)))))

(declare-fun lt!2475916 () Unit!160658)

(assert (=> d!2167759 (= lt!2475916 (choose!51716 r3!135 (_2!37127 lt!2475891)))))

(assert (=> d!2167759 (validRegex!8673 r3!135)))

(assert (=> d!2167759 (= (mainMatchTheorem!4024 r3!135 (_2!37127 lt!2475891)) lt!2475916)))

(declare-fun bs!1854859 () Bool)

(assert (= bs!1854859 d!2167759))

(assert (=> bs!1854859 m!7646046))

(assert (=> bs!1854859 m!7646036))

(declare-fun m!7646214 () Bool)

(assert (=> bs!1854859 m!7646214))

(assert (=> bs!1854859 m!7646076))

(assert (=> b!6941071 d!2167759))

(declare-fun bs!1854860 () Bool)

(declare-fun b!6941252 () Bool)

(assert (= bs!1854860 (and b!6941252 b!6941070)))

(declare-fun lambda!395498 () Int)

(assert (=> bs!1854860 (not (= lambda!395498 lambda!395477))))

(declare-fun bs!1854861 () Bool)

(assert (= bs!1854861 (and b!6941252 b!6941078)))

(assert (=> bs!1854861 (not (= lambda!395498 lambda!395479))))

(declare-fun bs!1854862 () Bool)

(assert (= bs!1854862 (and b!6941252 b!6941177)))

(assert (=> bs!1854862 (= (and (= (_1!37127 lt!2475891) (_2!37127 lt!2475891)) (= (reg!17296 r2!6280) (reg!17296 r3!135)) (= r2!6280 r3!135)) (= lambda!395498 lambda!395485))))

(declare-fun bs!1854863 () Bool)

(assert (= bs!1854863 (and b!6941252 b!6941061)))

(assert (=> bs!1854863 (not (= lambda!395498 lambda!395475))))

(assert (=> bs!1854863 (not (= lambda!395498 lambda!395476))))

(declare-fun bs!1854864 () Bool)

(assert (= bs!1854864 (and b!6941252 b!6941062)))

(assert (=> bs!1854864 (not (= lambda!395498 lambda!395473))))

(assert (=> bs!1854861 (not (= lambda!395498 lambda!395480))))

(assert (=> bs!1854864 (not (= lambda!395498 lambda!395474))))

(assert (=> bs!1854860 (not (= lambda!395498 lambda!395478))))

(declare-fun bs!1854865 () Bool)

(assert (= bs!1854865 (and b!6941252 b!6941182)))

(assert (=> bs!1854865 (not (= lambda!395498 lambda!395486))))

(assert (=> b!6941252 true))

(assert (=> b!6941252 true))

(declare-fun bs!1854866 () Bool)

(declare-fun b!6941257 () Bool)

(assert (= bs!1854866 (and b!6941257 b!6941070)))

(declare-fun lambda!395501 () Int)

(assert (=> bs!1854866 (not (= lambda!395501 lambda!395477))))

(declare-fun bs!1854867 () Bool)

(assert (= bs!1854867 (and b!6941257 b!6941078)))

(assert (=> bs!1854867 (not (= lambda!395501 lambda!395479))))

(declare-fun bs!1854868 () Bool)

(assert (= bs!1854868 (and b!6941257 b!6941177)))

(assert (=> bs!1854868 (not (= lambda!395501 lambda!395485))))

(declare-fun bs!1854869 () Bool)

(assert (= bs!1854869 (and b!6941257 b!6941252)))

(assert (=> bs!1854869 (not (= lambda!395501 lambda!395498))))

(declare-fun bs!1854870 () Bool)

(assert (= bs!1854870 (and b!6941257 b!6941061)))

(assert (=> bs!1854870 (not (= lambda!395501 lambda!395475))))

(assert (=> bs!1854870 (= (and (= (_1!37127 lt!2475891) (_2!37127 lt!2475899)) (= (regOne!34446 r2!6280) r2!6280) (= (regTwo!34446 r2!6280) r3!135)) (= lambda!395501 lambda!395476))))

(declare-fun bs!1854871 () Bool)

(assert (= bs!1854871 (and b!6941257 b!6941062)))

(assert (=> bs!1854871 (not (= lambda!395501 lambda!395473))))

(assert (=> bs!1854867 (= (and (= (_1!37127 lt!2475891) s!14361) (= (regOne!34446 r2!6280) lt!2475892) (= (regTwo!34446 r2!6280) r3!135)) (= lambda!395501 lambda!395480))))

(assert (=> bs!1854871 (= (and (= (_1!37127 lt!2475891) s!14361) (= (regOne!34446 r2!6280) r1!6342) (= (regTwo!34446 r2!6280) lt!2475872)) (= lambda!395501 lambda!395474))))

(assert (=> bs!1854866 (= (and (= (_1!37127 lt!2475891) lt!2475880) (= (regOne!34446 r2!6280) r1!6342) (= (regTwo!34446 r2!6280) r2!6280)) (= lambda!395501 lambda!395478))))

(declare-fun bs!1854872 () Bool)

(assert (= bs!1854872 (and b!6941257 b!6941182)))

(assert (=> bs!1854872 (= (and (= (_1!37127 lt!2475891) (_2!37127 lt!2475891)) (= (regOne!34446 r2!6280) (regOne!34446 r3!135)) (= (regTwo!34446 r2!6280) (regTwo!34446 r3!135))) (= lambda!395501 lambda!395486))))

(assert (=> b!6941257 true))

(assert (=> b!6941257 true))

(declare-fun d!2167761 () Bool)

(declare-fun c!1287938 () Bool)

(assert (=> d!2167761 (= c!1287938 ((_ is EmptyExpr!16967) r2!6280))))

(declare-fun e!4175672 () Bool)

(assert (=> d!2167761 (= (matchRSpec!4024 r2!6280 (_1!37127 lt!2475891)) e!4175672)))

(declare-fun e!4175671 () Bool)

(declare-fun call!630591 () Bool)

(assert (=> b!6941252 (= e!4175671 call!630591)))

(declare-fun bm!630585 () Bool)

(declare-fun c!1287935 () Bool)

(assert (=> bm!630585 (= call!630591 (Exists!3967 (ite c!1287935 lambda!395498 lambda!395501)))))

(declare-fun b!6941253 () Bool)

(declare-fun e!4175674 () Bool)

(assert (=> b!6941253 (= e!4175674 (matchRSpec!4024 (regTwo!34447 r2!6280) (_1!37127 lt!2475891)))))

(declare-fun b!6941254 () Bool)

(declare-fun e!4175670 () Bool)

(declare-fun e!4175675 () Bool)

(assert (=> b!6941254 (= e!4175670 e!4175675)))

(assert (=> b!6941254 (= c!1287935 ((_ is Star!16967) r2!6280))))

(declare-fun b!6941255 () Bool)

(declare-fun res!2831517 () Bool)

(assert (=> b!6941255 (=> res!2831517 e!4175671)))

(declare-fun call!630590 () Bool)

(assert (=> b!6941255 (= res!2831517 call!630590)))

(assert (=> b!6941255 (= e!4175675 e!4175671)))

(declare-fun b!6941256 () Bool)

(declare-fun e!4175676 () Bool)

(assert (=> b!6941256 (= e!4175676 (= (_1!37127 lt!2475891) (Cons!66596 (c!1287895 r2!6280) Nil!66596)))))

(declare-fun bm!630586 () Bool)

(assert (=> bm!630586 (= call!630590 (isEmpty!38869 (_1!37127 lt!2475891)))))

(assert (=> b!6941257 (= e!4175675 call!630591)))

(declare-fun b!6941258 () Bool)

(declare-fun c!1287937 () Bool)

(assert (=> b!6941258 (= c!1287937 ((_ is Union!16967) r2!6280))))

(assert (=> b!6941258 (= e!4175676 e!4175670)))

(declare-fun b!6941259 () Bool)

(declare-fun e!4175673 () Bool)

(assert (=> b!6941259 (= e!4175672 e!4175673)))

(declare-fun res!2831519 () Bool)

(assert (=> b!6941259 (= res!2831519 (not ((_ is EmptyLang!16967) r2!6280)))))

(assert (=> b!6941259 (=> (not res!2831519) (not e!4175673))))

(declare-fun b!6941260 () Bool)

(declare-fun c!1287936 () Bool)

(assert (=> b!6941260 (= c!1287936 ((_ is ElementMatch!16967) r2!6280))))

(assert (=> b!6941260 (= e!4175673 e!4175676)))

(declare-fun b!6941261 () Bool)

(assert (=> b!6941261 (= e!4175670 e!4175674)))

(declare-fun res!2831518 () Bool)

(assert (=> b!6941261 (= res!2831518 (matchRSpec!4024 (regOne!34447 r2!6280) (_1!37127 lt!2475891)))))

(assert (=> b!6941261 (=> res!2831518 e!4175674)))

(declare-fun b!6941262 () Bool)

(assert (=> b!6941262 (= e!4175672 call!630590)))

(assert (= (and d!2167761 c!1287938) b!6941262))

(assert (= (and d!2167761 (not c!1287938)) b!6941259))

(assert (= (and b!6941259 res!2831519) b!6941260))

(assert (= (and b!6941260 c!1287936) b!6941256))

(assert (= (and b!6941260 (not c!1287936)) b!6941258))

(assert (= (and b!6941258 c!1287937) b!6941261))

(assert (= (and b!6941258 (not c!1287937)) b!6941254))

(assert (= (and b!6941261 (not res!2831518)) b!6941253))

(assert (= (and b!6941254 c!1287935) b!6941255))

(assert (= (and b!6941254 (not c!1287935)) b!6941257))

(assert (= (and b!6941255 (not res!2831517)) b!6941252))

(assert (= (or b!6941252 b!6941257) bm!630585))

(assert (= (or b!6941262 b!6941255) bm!630586))

(declare-fun m!7646216 () Bool)

(assert (=> bm!630585 m!7646216))

(declare-fun m!7646218 () Bool)

(assert (=> b!6941253 m!7646218))

(declare-fun m!7646220 () Bool)

(assert (=> bm!630586 m!7646220))

(declare-fun m!7646222 () Bool)

(assert (=> b!6941261 m!7646222))

(assert (=> b!6941071 d!2167761))

(declare-fun d!2167763 () Bool)

(declare-fun isEmpty!38870 (Option!16736) Bool)

(assert (=> d!2167763 (= (isDefined!13437 (findConcatSeparation!3150 r1!6342 r2!6280 Nil!66596 lt!2475880 lt!2475880)) (not (isEmpty!38870 (findConcatSeparation!3150 r1!6342 r2!6280 Nil!66596 lt!2475880 lt!2475880))))))

(declare-fun bs!1854880 () Bool)

(assert (= bs!1854880 d!2167763))

(assert (=> bs!1854880 m!7646052))

(declare-fun m!7646224 () Bool)

(assert (=> bs!1854880 m!7646224))

(assert (=> b!6941070 d!2167763))

(declare-fun d!2167765 () Bool)

(assert (=> d!2167765 (= (matchR!9106 lt!2475892 lt!2475880) (matchRSpec!4024 lt!2475892 lt!2475880))))

(declare-fun lt!2475917 () Unit!160658)

(assert (=> d!2167765 (= lt!2475917 (choose!51716 lt!2475892 lt!2475880))))

(assert (=> d!2167765 (validRegex!8673 lt!2475892)))

(assert (=> d!2167765 (= (mainMatchTheorem!4024 lt!2475892 lt!2475880) lt!2475917)))

(declare-fun bs!1854883 () Bool)

(assert (= bs!1854883 d!2167765))

(assert (=> bs!1854883 m!7646048))

(assert (=> bs!1854883 m!7646072))

(declare-fun m!7646226 () Bool)

(assert (=> bs!1854883 m!7646226))

(declare-fun m!7646228 () Bool)

(assert (=> bs!1854883 m!7646228))

(assert (=> b!6941070 d!2167765))

(declare-fun b!6941286 () Bool)

(declare-fun res!2831534 () Bool)

(declare-fun e!4175688 () Bool)

(assert (=> b!6941286 (=> (not res!2831534) (not e!4175688))))

(declare-fun lt!2475918 () List!66720)

(assert (=> b!6941286 (= res!2831534 (= (size!40802 lt!2475918) (+ (size!40802 (_1!37127 lt!2475899)) (size!40802 (_1!37127 lt!2475891)))))))

(declare-fun b!6941284 () Bool)

(declare-fun e!4175689 () List!66720)

(assert (=> b!6941284 (= e!4175689 (_1!37127 lt!2475891))))

(declare-fun d!2167767 () Bool)

(assert (=> d!2167767 e!4175688))

(declare-fun res!2831533 () Bool)

(assert (=> d!2167767 (=> (not res!2831533) (not e!4175688))))

(assert (=> d!2167767 (= res!2831533 (= (content!13105 lt!2475918) ((_ map or) (content!13105 (_1!37127 lt!2475899)) (content!13105 (_1!37127 lt!2475891)))))))

(assert (=> d!2167767 (= lt!2475918 e!4175689)))

(declare-fun c!1287943 () Bool)

(assert (=> d!2167767 (= c!1287943 ((_ is Nil!66596) (_1!37127 lt!2475899)))))

(assert (=> d!2167767 (= (++!15006 (_1!37127 lt!2475899) (_1!37127 lt!2475891)) lt!2475918)))

(declare-fun b!6941287 () Bool)

(assert (=> b!6941287 (= e!4175688 (or (not (= (_1!37127 lt!2475891) Nil!66596)) (= lt!2475918 (_1!37127 lt!2475899))))))

(declare-fun b!6941285 () Bool)

(assert (=> b!6941285 (= e!4175689 (Cons!66596 (h!73044 (_1!37127 lt!2475899)) (++!15006 (t!380463 (_1!37127 lt!2475899)) (_1!37127 lt!2475891))))))

(assert (= (and d!2167767 c!1287943) b!6941284))

(assert (= (and d!2167767 (not c!1287943)) b!6941285))

(assert (= (and d!2167767 res!2831533) b!6941286))

(assert (= (and b!6941286 res!2831534) b!6941287))

(declare-fun m!7646230 () Bool)

(assert (=> b!6941286 m!7646230))

(assert (=> b!6941286 m!7646192))

(assert (=> b!6941286 m!7646178))

(declare-fun m!7646232 () Bool)

(assert (=> d!2167767 m!7646232))

(assert (=> d!2167767 m!7646198))

(assert (=> d!2167767 m!7646184))

(declare-fun m!7646234 () Bool)

(assert (=> b!6941285 m!7646234))

(assert (=> b!6941070 d!2167767))

(declare-fun b!6941363 () Bool)

(declare-fun e!4175736 () Option!16736)

(assert (=> b!6941363 (= e!4175736 None!16735)))

(declare-fun b!6941364 () Bool)

(declare-fun res!2831577 () Bool)

(declare-fun e!4175737 () Bool)

(assert (=> b!6941364 (=> (not res!2831577) (not e!4175737))))

(declare-fun lt!2475942 () Option!16736)

(assert (=> b!6941364 (= res!2831577 (matchR!9106 r1!6342 (_1!37127 (get!23387 lt!2475942))))))

(declare-fun b!6941365 () Bool)

(declare-fun lt!2475940 () Unit!160658)

(declare-fun lt!2475941 () Unit!160658)

(assert (=> b!6941365 (= lt!2475940 lt!2475941)))

(assert (=> b!6941365 (= (++!15006 (++!15006 Nil!66596 (Cons!66596 (h!73044 lt!2475880) Nil!66596)) (t!380463 lt!2475880)) lt!2475880)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2863 (List!66720 C!34204 List!66720 List!66720) Unit!160658)

(assert (=> b!6941365 (= lt!2475941 (lemmaMoveElementToOtherListKeepsConcatEq!2863 Nil!66596 (h!73044 lt!2475880) (t!380463 lt!2475880) lt!2475880))))

(assert (=> b!6941365 (= e!4175736 (findConcatSeparation!3150 r1!6342 r2!6280 (++!15006 Nil!66596 (Cons!66596 (h!73044 lt!2475880) Nil!66596)) (t!380463 lt!2475880) lt!2475880))))

(declare-fun d!2167769 () Bool)

(declare-fun e!4175739 () Bool)

(assert (=> d!2167769 e!4175739))

(declare-fun res!2831576 () Bool)

(assert (=> d!2167769 (=> res!2831576 e!4175739)))

(assert (=> d!2167769 (= res!2831576 e!4175737)))

(declare-fun res!2831579 () Bool)

(assert (=> d!2167769 (=> (not res!2831579) (not e!4175737))))

(assert (=> d!2167769 (= res!2831579 (isDefined!13437 lt!2475942))))

(declare-fun e!4175735 () Option!16736)

(assert (=> d!2167769 (= lt!2475942 e!4175735)))

(declare-fun c!1287961 () Bool)

(declare-fun e!4175738 () Bool)

(assert (=> d!2167769 (= c!1287961 e!4175738)))

(declare-fun res!2831578 () Bool)

(assert (=> d!2167769 (=> (not res!2831578) (not e!4175738))))

(assert (=> d!2167769 (= res!2831578 (matchR!9106 r1!6342 Nil!66596))))

(assert (=> d!2167769 (validRegex!8673 r1!6342)))

(assert (=> d!2167769 (= (findConcatSeparation!3150 r1!6342 r2!6280 Nil!66596 lt!2475880 lt!2475880) lt!2475942)))

(declare-fun b!6941366 () Bool)

(assert (=> b!6941366 (= e!4175735 e!4175736)))

(declare-fun c!1287962 () Bool)

(assert (=> b!6941366 (= c!1287962 ((_ is Nil!66596) lt!2475880))))

(declare-fun b!6941367 () Bool)

(assert (=> b!6941367 (= e!4175737 (= (++!15006 (_1!37127 (get!23387 lt!2475942)) (_2!37127 (get!23387 lt!2475942))) lt!2475880))))

(declare-fun b!6941368 () Bool)

(declare-fun res!2831580 () Bool)

(assert (=> b!6941368 (=> (not res!2831580) (not e!4175737))))

(assert (=> b!6941368 (= res!2831580 (matchR!9106 r2!6280 (_2!37127 (get!23387 lt!2475942))))))

(declare-fun b!6941369 () Bool)

(assert (=> b!6941369 (= e!4175738 (matchR!9106 r2!6280 lt!2475880))))

(declare-fun b!6941370 () Bool)

(assert (=> b!6941370 (= e!4175735 (Some!16735 (tuple2!67649 Nil!66596 lt!2475880)))))

(declare-fun b!6941371 () Bool)

(assert (=> b!6941371 (= e!4175739 (not (isDefined!13437 lt!2475942)))))

(assert (= (and d!2167769 res!2831578) b!6941369))

(assert (= (and d!2167769 c!1287961) b!6941370))

(assert (= (and d!2167769 (not c!1287961)) b!6941366))

(assert (= (and b!6941366 c!1287962) b!6941363))

(assert (= (and b!6941366 (not c!1287962)) b!6941365))

(assert (= (and d!2167769 res!2831579) b!6941364))

(assert (= (and b!6941364 res!2831577) b!6941368))

(assert (= (and b!6941368 res!2831580) b!6941367))

(assert (= (and d!2167769 (not res!2831576)) b!6941371))

(declare-fun m!7646294 () Bool)

(assert (=> b!6941367 m!7646294))

(declare-fun m!7646296 () Bool)

(assert (=> b!6941367 m!7646296))

(declare-fun m!7646298 () Bool)

(assert (=> b!6941369 m!7646298))

(declare-fun m!7646300 () Bool)

(assert (=> b!6941371 m!7646300))

(assert (=> b!6941364 m!7646294))

(declare-fun m!7646302 () Bool)

(assert (=> b!6941364 m!7646302))

(declare-fun m!7646304 () Bool)

(assert (=> b!6941365 m!7646304))

(assert (=> b!6941365 m!7646304))

(declare-fun m!7646306 () Bool)

(assert (=> b!6941365 m!7646306))

(declare-fun m!7646308 () Bool)

(assert (=> b!6941365 m!7646308))

(assert (=> b!6941365 m!7646304))

(declare-fun m!7646310 () Bool)

(assert (=> b!6941365 m!7646310))

(assert (=> b!6941368 m!7646294))

(declare-fun m!7646312 () Bool)

(assert (=> b!6941368 m!7646312))

(assert (=> d!2167769 m!7646300))

(declare-fun m!7646314 () Bool)

(assert (=> d!2167769 m!7646314))

(assert (=> d!2167769 m!7646074))

(assert (=> b!6941070 d!2167769))

(declare-fun bs!1854898 () Bool)

(declare-fun b!6941383 () Bool)

(assert (= bs!1854898 (and b!6941383 b!6941070)))

(declare-fun lambda!395505 () Int)

(assert (=> bs!1854898 (not (= lambda!395505 lambda!395477))))

(declare-fun bs!1854901 () Bool)

(assert (= bs!1854901 (and b!6941383 b!6941078)))

(assert (=> bs!1854901 (not (= lambda!395505 lambda!395479))))

(declare-fun bs!1854904 () Bool)

(assert (= bs!1854904 (and b!6941383 b!6941177)))

(assert (=> bs!1854904 (= (and (= lt!2475880 (_2!37127 lt!2475891)) (= (reg!17296 lt!2475892) (reg!17296 r3!135)) (= lt!2475892 r3!135)) (= lambda!395505 lambda!395485))))

(declare-fun bs!1854907 () Bool)

(assert (= bs!1854907 (and b!6941383 b!6941252)))

(assert (=> bs!1854907 (= (and (= lt!2475880 (_1!37127 lt!2475891)) (= (reg!17296 lt!2475892) (reg!17296 r2!6280)) (= lt!2475892 r2!6280)) (= lambda!395505 lambda!395498))))

(declare-fun bs!1854909 () Bool)

(assert (= bs!1854909 (and b!6941383 b!6941061)))

(assert (=> bs!1854909 (not (= lambda!395505 lambda!395475))))

(assert (=> bs!1854909 (not (= lambda!395505 lambda!395476))))

(declare-fun bs!1854912 () Bool)

(assert (= bs!1854912 (and b!6941383 b!6941062)))

(assert (=> bs!1854912 (not (= lambda!395505 lambda!395473))))

(assert (=> bs!1854901 (not (= lambda!395505 lambda!395480))))

(assert (=> bs!1854912 (not (= lambda!395505 lambda!395474))))

(assert (=> bs!1854898 (not (= lambda!395505 lambda!395478))))

(declare-fun bs!1854913 () Bool)

(assert (= bs!1854913 (and b!6941383 b!6941257)))

(assert (=> bs!1854913 (not (= lambda!395505 lambda!395501))))

(declare-fun bs!1854914 () Bool)

(assert (= bs!1854914 (and b!6941383 b!6941182)))

(assert (=> bs!1854914 (not (= lambda!395505 lambda!395486))))

(assert (=> b!6941383 true))

(assert (=> b!6941383 true))

(declare-fun bs!1854916 () Bool)

(declare-fun b!6941388 () Bool)

(assert (= bs!1854916 (and b!6941388 b!6941070)))

(declare-fun lambda!395507 () Int)

(assert (=> bs!1854916 (not (= lambda!395507 lambda!395477))))

(declare-fun bs!1854917 () Bool)

(assert (= bs!1854917 (and b!6941388 b!6941078)))

(assert (=> bs!1854917 (not (= lambda!395507 lambda!395479))))

(declare-fun bs!1854918 () Bool)

(assert (= bs!1854918 (and b!6941388 b!6941177)))

(assert (=> bs!1854918 (not (= lambda!395507 lambda!395485))))

(declare-fun bs!1854919 () Bool)

(assert (= bs!1854919 (and b!6941388 b!6941252)))

(assert (=> bs!1854919 (not (= lambda!395507 lambda!395498))))

(declare-fun bs!1854920 () Bool)

(assert (= bs!1854920 (and b!6941388 b!6941061)))

(assert (=> bs!1854920 (not (= lambda!395507 lambda!395475))))

(assert (=> bs!1854920 (= (and (= lt!2475880 (_2!37127 lt!2475899)) (= (regOne!34446 lt!2475892) r2!6280) (= (regTwo!34446 lt!2475892) r3!135)) (= lambda!395507 lambda!395476))))

(declare-fun bs!1854922 () Bool)

(assert (= bs!1854922 (and b!6941388 b!6941383)))

(assert (=> bs!1854922 (not (= lambda!395507 lambda!395505))))

(declare-fun bs!1854923 () Bool)

(assert (= bs!1854923 (and b!6941388 b!6941062)))

(assert (=> bs!1854923 (not (= lambda!395507 lambda!395473))))

(assert (=> bs!1854917 (= (and (= lt!2475880 s!14361) (= (regOne!34446 lt!2475892) lt!2475892) (= (regTwo!34446 lt!2475892) r3!135)) (= lambda!395507 lambda!395480))))

(assert (=> bs!1854923 (= (and (= lt!2475880 s!14361) (= (regOne!34446 lt!2475892) r1!6342) (= (regTwo!34446 lt!2475892) lt!2475872)) (= lambda!395507 lambda!395474))))

(assert (=> bs!1854916 (= (and (= (regOne!34446 lt!2475892) r1!6342) (= (regTwo!34446 lt!2475892) r2!6280)) (= lambda!395507 lambda!395478))))

(declare-fun bs!1854924 () Bool)

(assert (= bs!1854924 (and b!6941388 b!6941257)))

(assert (=> bs!1854924 (= (and (= lt!2475880 (_1!37127 lt!2475891)) (= (regOne!34446 lt!2475892) (regOne!34446 r2!6280)) (= (regTwo!34446 lt!2475892) (regTwo!34446 r2!6280))) (= lambda!395507 lambda!395501))))

(declare-fun bs!1854925 () Bool)

(assert (= bs!1854925 (and b!6941388 b!6941182)))

(assert (=> bs!1854925 (= (and (= lt!2475880 (_2!37127 lt!2475891)) (= (regOne!34446 lt!2475892) (regOne!34446 r3!135)) (= (regTwo!34446 lt!2475892) (regTwo!34446 r3!135))) (= lambda!395507 lambda!395486))))

(assert (=> b!6941388 true))

(assert (=> b!6941388 true))

(declare-fun d!2167785 () Bool)

(declare-fun c!1287970 () Bool)

(assert (=> d!2167785 (= c!1287970 ((_ is EmptyExpr!16967) lt!2475892))))

(declare-fun e!4175749 () Bool)

(assert (=> d!2167785 (= (matchRSpec!4024 lt!2475892 lt!2475880) e!4175749)))

(declare-fun e!4175748 () Bool)

(declare-fun call!630607 () Bool)

(assert (=> b!6941383 (= e!4175748 call!630607)))

(declare-fun c!1287967 () Bool)

(declare-fun bm!630601 () Bool)

(assert (=> bm!630601 (= call!630607 (Exists!3967 (ite c!1287967 lambda!395505 lambda!395507)))))

(declare-fun b!6941384 () Bool)

(declare-fun e!4175751 () Bool)

(assert (=> b!6941384 (= e!4175751 (matchRSpec!4024 (regTwo!34447 lt!2475892) lt!2475880))))

(declare-fun b!6941385 () Bool)

(declare-fun e!4175747 () Bool)

(declare-fun e!4175752 () Bool)

(assert (=> b!6941385 (= e!4175747 e!4175752)))

(assert (=> b!6941385 (= c!1287967 ((_ is Star!16967) lt!2475892))))

(declare-fun b!6941386 () Bool)

(declare-fun res!2831584 () Bool)

(assert (=> b!6941386 (=> res!2831584 e!4175748)))

(declare-fun call!630606 () Bool)

(assert (=> b!6941386 (= res!2831584 call!630606)))

(assert (=> b!6941386 (= e!4175752 e!4175748)))

(declare-fun b!6941387 () Bool)

(declare-fun e!4175753 () Bool)

(assert (=> b!6941387 (= e!4175753 (= lt!2475880 (Cons!66596 (c!1287895 lt!2475892) Nil!66596)))))

(declare-fun bm!630602 () Bool)

(assert (=> bm!630602 (= call!630606 (isEmpty!38869 lt!2475880))))

(assert (=> b!6941388 (= e!4175752 call!630607)))

(declare-fun b!6941389 () Bool)

(declare-fun c!1287969 () Bool)

(assert (=> b!6941389 (= c!1287969 ((_ is Union!16967) lt!2475892))))

(assert (=> b!6941389 (= e!4175753 e!4175747)))

(declare-fun b!6941390 () Bool)

(declare-fun e!4175750 () Bool)

(assert (=> b!6941390 (= e!4175749 e!4175750)))

(declare-fun res!2831586 () Bool)

(assert (=> b!6941390 (= res!2831586 (not ((_ is EmptyLang!16967) lt!2475892)))))

(assert (=> b!6941390 (=> (not res!2831586) (not e!4175750))))

(declare-fun b!6941391 () Bool)

(declare-fun c!1287968 () Bool)

(assert (=> b!6941391 (= c!1287968 ((_ is ElementMatch!16967) lt!2475892))))

(assert (=> b!6941391 (= e!4175750 e!4175753)))

(declare-fun b!6941392 () Bool)

(assert (=> b!6941392 (= e!4175747 e!4175751)))

(declare-fun res!2831585 () Bool)

(assert (=> b!6941392 (= res!2831585 (matchRSpec!4024 (regOne!34447 lt!2475892) lt!2475880))))

(assert (=> b!6941392 (=> res!2831585 e!4175751)))

(declare-fun b!6941393 () Bool)

(assert (=> b!6941393 (= e!4175749 call!630606)))

(assert (= (and d!2167785 c!1287970) b!6941393))

(assert (= (and d!2167785 (not c!1287970)) b!6941390))

(assert (= (and b!6941390 res!2831586) b!6941391))

(assert (= (and b!6941391 c!1287968) b!6941387))

(assert (= (and b!6941391 (not c!1287968)) b!6941389))

(assert (= (and b!6941389 c!1287969) b!6941392))

(assert (= (and b!6941389 (not c!1287969)) b!6941385))

(assert (= (and b!6941392 (not res!2831585)) b!6941384))

(assert (= (and b!6941385 c!1287967) b!6941386))

(assert (= (and b!6941385 (not c!1287967)) b!6941388))

(assert (= (and b!6941386 (not res!2831584)) b!6941383))

(assert (= (or b!6941383 b!6941388) bm!630601))

(assert (= (or b!6941393 b!6941386) bm!630602))

(declare-fun m!7646344 () Bool)

(assert (=> bm!630601 m!7646344))

(declare-fun m!7646346 () Bool)

(assert (=> b!6941384 m!7646346))

(declare-fun m!7646348 () Bool)

(assert (=> bm!630602 m!7646348))

(declare-fun m!7646350 () Bool)

(assert (=> b!6941392 m!7646350))

(assert (=> b!6941070 d!2167785))

(declare-fun bs!1854960 () Bool)

(declare-fun d!2167795 () Bool)

(assert (= bs!1854960 (and d!2167795 b!6941070)))

(declare-fun lambda!395514 () Int)

(assert (=> bs!1854960 (= lambda!395514 lambda!395477)))

(declare-fun bs!1854962 () Bool)

(assert (= bs!1854962 (and d!2167795 b!6941078)))

(assert (=> bs!1854962 (= (and (= lt!2475880 s!14361) (= r1!6342 lt!2475892) (= r2!6280 r3!135)) (= lambda!395514 lambda!395479))))

(declare-fun bs!1854964 () Bool)

(assert (= bs!1854964 (and d!2167795 b!6941177)))

(assert (=> bs!1854964 (not (= lambda!395514 lambda!395485))))

(declare-fun bs!1854966 () Bool)

(assert (= bs!1854966 (and d!2167795 b!6941252)))

(assert (=> bs!1854966 (not (= lambda!395514 lambda!395498))))

(declare-fun bs!1854967 () Bool)

(assert (= bs!1854967 (and d!2167795 b!6941061)))

(assert (=> bs!1854967 (= (and (= lt!2475880 (_2!37127 lt!2475899)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395514 lambda!395475))))

(assert (=> bs!1854967 (not (= lambda!395514 lambda!395476))))

(declare-fun bs!1854969 () Bool)

(assert (= bs!1854969 (and d!2167795 b!6941383)))

(assert (=> bs!1854969 (not (= lambda!395514 lambda!395505))))

(declare-fun bs!1854970 () Bool)

(assert (= bs!1854970 (and d!2167795 b!6941062)))

(assert (=> bs!1854970 (= (and (= lt!2475880 s!14361) (= r2!6280 lt!2475872)) (= lambda!395514 lambda!395473))))

(assert (=> bs!1854962 (not (= lambda!395514 lambda!395480))))

(declare-fun bs!1854971 () Bool)

(assert (= bs!1854971 (and d!2167795 b!6941388)))

(assert (=> bs!1854971 (not (= lambda!395514 lambda!395507))))

(assert (=> bs!1854970 (not (= lambda!395514 lambda!395474))))

(assert (=> bs!1854960 (not (= lambda!395514 lambda!395478))))

(declare-fun bs!1854972 () Bool)

(assert (= bs!1854972 (and d!2167795 b!6941257)))

(assert (=> bs!1854972 (not (= lambda!395514 lambda!395501))))

(declare-fun bs!1854974 () Bool)

(assert (= bs!1854974 (and d!2167795 b!6941182)))

(assert (=> bs!1854974 (not (= lambda!395514 lambda!395486))))

(assert (=> d!2167795 true))

(assert (=> d!2167795 true))

(assert (=> d!2167795 true))

(assert (=> d!2167795 (= (isDefined!13437 (findConcatSeparation!3150 r1!6342 r2!6280 Nil!66596 lt!2475880 lt!2475880)) (Exists!3967 lambda!395514))))

(declare-fun lt!2475956 () Unit!160658)

(declare-fun choose!51718 (Regex!16967 Regex!16967 List!66720) Unit!160658)

(assert (=> d!2167795 (= lt!2475956 (choose!51718 r1!6342 r2!6280 lt!2475880))))

(assert (=> d!2167795 (validRegex!8673 r1!6342)))

(assert (=> d!2167795 (= (lemmaFindConcatSeparationEquivalentToExists!2908 r1!6342 r2!6280 lt!2475880) lt!2475956)))

(declare-fun bs!1854978 () Bool)

(assert (= bs!1854978 d!2167795))

(assert (=> bs!1854978 m!7646074))

(assert (=> bs!1854978 m!7646052))

(declare-fun m!7646382 () Bool)

(assert (=> bs!1854978 m!7646382))

(assert (=> bs!1854978 m!7646052))

(assert (=> bs!1854978 m!7646054))

(declare-fun m!7646384 () Bool)

(assert (=> bs!1854978 m!7646384))

(assert (=> b!6941070 d!2167795))

(declare-fun b!6941494 () Bool)

(declare-fun e!4175812 () Bool)

(declare-fun head!13912 (List!66720) C!34204)

(assert (=> b!6941494 (= e!4175812 (not (= (head!13912 lt!2475880) (c!1287895 lt!2475892))))))

(declare-fun b!6941495 () Bool)

(declare-fun e!4175811 () Bool)

(assert (=> b!6941495 (= e!4175811 (= (head!13912 lt!2475880) (c!1287895 lt!2475892)))))

(declare-fun b!6941496 () Bool)

(declare-fun res!2831646 () Bool)

(assert (=> b!6941496 (=> res!2831646 e!4175812)))

(declare-fun tail!12964 (List!66720) List!66720)

(assert (=> b!6941496 (= res!2831646 (not (isEmpty!38869 (tail!12964 lt!2475880))))))

(declare-fun b!6941497 () Bool)

(declare-fun res!2831645 () Bool)

(declare-fun e!4175813 () Bool)

(assert (=> b!6941497 (=> res!2831645 e!4175813)))

(assert (=> b!6941497 (= res!2831645 (not ((_ is ElementMatch!16967) lt!2475892)))))

(declare-fun e!4175810 () Bool)

(assert (=> b!6941497 (= e!4175810 e!4175813)))

(declare-fun b!6941498 () Bool)

(declare-fun e!4175807 () Bool)

(assert (=> b!6941498 (= e!4175807 e!4175810)))

(declare-fun c!1287995 () Bool)

(assert (=> b!6941498 (= c!1287995 ((_ is EmptyLang!16967) lt!2475892))))

(declare-fun b!6941499 () Bool)

(declare-fun res!2831639 () Bool)

(assert (=> b!6941499 (=> (not res!2831639) (not e!4175811))))

(assert (=> b!6941499 (= res!2831639 (isEmpty!38869 (tail!12964 lt!2475880)))))

(declare-fun b!6941500 () Bool)

(declare-fun e!4175809 () Bool)

(declare-fun nullable!6784 (Regex!16967) Bool)

(assert (=> b!6941500 (= e!4175809 (nullable!6784 lt!2475892))))

(declare-fun b!6941502 () Bool)

(declare-fun derivativeStep!5459 (Regex!16967 C!34204) Regex!16967)

(assert (=> b!6941502 (= e!4175809 (matchR!9106 (derivativeStep!5459 lt!2475892 (head!13912 lt!2475880)) (tail!12964 lt!2475880)))))

(declare-fun b!6941503 () Bool)

(declare-fun lt!2475963 () Bool)

(declare-fun call!630617 () Bool)

(assert (=> b!6941503 (= e!4175807 (= lt!2475963 call!630617))))

(declare-fun b!6941504 () Bool)

(declare-fun e!4175808 () Bool)

(assert (=> b!6941504 (= e!4175808 e!4175812)))

(declare-fun res!2831641 () Bool)

(assert (=> b!6941504 (=> res!2831641 e!4175812)))

(assert (=> b!6941504 (= res!2831641 call!630617)))

(declare-fun b!6941505 () Bool)

(declare-fun res!2831643 () Bool)

(assert (=> b!6941505 (=> res!2831643 e!4175813)))

(assert (=> b!6941505 (= res!2831643 e!4175811)))

(declare-fun res!2831644 () Bool)

(assert (=> b!6941505 (=> (not res!2831644) (not e!4175811))))

(assert (=> b!6941505 (= res!2831644 lt!2475963)))

(declare-fun b!6941506 () Bool)

(assert (=> b!6941506 (= e!4175810 (not lt!2475963))))

(declare-fun bm!630612 () Bool)

(assert (=> bm!630612 (= call!630617 (isEmpty!38869 lt!2475880))))

(declare-fun b!6941507 () Bool)

(assert (=> b!6941507 (= e!4175813 e!4175808)))

(declare-fun res!2831640 () Bool)

(assert (=> b!6941507 (=> (not res!2831640) (not e!4175808))))

(assert (=> b!6941507 (= res!2831640 (not lt!2475963))))

(declare-fun b!6941501 () Bool)

(declare-fun res!2831642 () Bool)

(assert (=> b!6941501 (=> (not res!2831642) (not e!4175811))))

(assert (=> b!6941501 (= res!2831642 (not call!630617))))

(declare-fun d!2167809 () Bool)

(assert (=> d!2167809 e!4175807))

(declare-fun c!1287997 () Bool)

(assert (=> d!2167809 (= c!1287997 ((_ is EmptyExpr!16967) lt!2475892))))

(assert (=> d!2167809 (= lt!2475963 e!4175809)))

(declare-fun c!1287996 () Bool)

(assert (=> d!2167809 (= c!1287996 (isEmpty!38869 lt!2475880))))

(assert (=> d!2167809 (validRegex!8673 lt!2475892)))

(assert (=> d!2167809 (= (matchR!9106 lt!2475892 lt!2475880) lt!2475963)))

(assert (= (and d!2167809 c!1287996) b!6941500))

(assert (= (and d!2167809 (not c!1287996)) b!6941502))

(assert (= (and d!2167809 c!1287997) b!6941503))

(assert (= (and d!2167809 (not c!1287997)) b!6941498))

(assert (= (and b!6941498 c!1287995) b!6941506))

(assert (= (and b!6941498 (not c!1287995)) b!6941497))

(assert (= (and b!6941497 (not res!2831645)) b!6941505))

(assert (= (and b!6941505 res!2831644) b!6941501))

(assert (= (and b!6941501 res!2831642) b!6941499))

(assert (= (and b!6941499 res!2831639) b!6941495))

(assert (= (and b!6941505 (not res!2831643)) b!6941507))

(assert (= (and b!6941507 res!2831640) b!6941504))

(assert (= (and b!6941504 (not res!2831641)) b!6941496))

(assert (= (and b!6941496 (not res!2831646)) b!6941494))

(assert (= (or b!6941503 b!6941504 b!6941501) bm!630612))

(assert (=> d!2167809 m!7646348))

(assert (=> d!2167809 m!7646228))

(declare-fun m!7646426 () Bool)

(assert (=> b!6941494 m!7646426))

(declare-fun m!7646428 () Bool)

(assert (=> b!6941499 m!7646428))

(assert (=> b!6941499 m!7646428))

(declare-fun m!7646430 () Bool)

(assert (=> b!6941499 m!7646430))

(declare-fun m!7646434 () Bool)

(assert (=> b!6941500 m!7646434))

(assert (=> b!6941495 m!7646426))

(assert (=> bm!630612 m!7646348))

(assert (=> b!6941496 m!7646428))

(assert (=> b!6941496 m!7646428))

(assert (=> b!6941496 m!7646430))

(assert (=> b!6941502 m!7646426))

(assert (=> b!6941502 m!7646426))

(declare-fun m!7646436 () Bool)

(assert (=> b!6941502 m!7646436))

(assert (=> b!6941502 m!7646428))

(assert (=> b!6941502 m!7646436))

(assert (=> b!6941502 m!7646428))

(declare-fun m!7646438 () Bool)

(assert (=> b!6941502 m!7646438))

(assert (=> b!6941070 d!2167809))

(declare-fun d!2167825 () Bool)

(declare-fun choose!51720 (Int) Bool)

(assert (=> d!2167825 (= (Exists!3967 lambda!395478) (choose!51720 lambda!395478))))

(declare-fun bs!1855020 () Bool)

(assert (= bs!1855020 d!2167825))

(declare-fun m!7646440 () Bool)

(assert (=> bs!1855020 m!7646440))

(assert (=> b!6941070 d!2167825))

(declare-fun b!6941521 () Bool)

(declare-fun res!2831651 () Bool)

(declare-fun e!4175821 () Bool)

(assert (=> b!6941521 (=> (not res!2831651) (not e!4175821))))

(declare-fun lt!2475964 () List!66720)

(assert (=> b!6941521 (= res!2831651 (= (size!40802 lt!2475964) (+ (size!40802 lt!2475880) (size!40802 (_2!37127 lt!2475891)))))))

(declare-fun b!6941519 () Bool)

(declare-fun e!4175822 () List!66720)

(assert (=> b!6941519 (= e!4175822 (_2!37127 lt!2475891))))

(declare-fun d!2167827 () Bool)

(assert (=> d!2167827 e!4175821))

(declare-fun res!2831650 () Bool)

(assert (=> d!2167827 (=> (not res!2831650) (not e!4175821))))

(assert (=> d!2167827 (= res!2831650 (= (content!13105 lt!2475964) ((_ map or) (content!13105 lt!2475880) (content!13105 (_2!37127 lt!2475891)))))))

(assert (=> d!2167827 (= lt!2475964 e!4175822)))

(declare-fun c!1288002 () Bool)

(assert (=> d!2167827 (= c!1288002 ((_ is Nil!66596) lt!2475880))))

(assert (=> d!2167827 (= (++!15006 lt!2475880 (_2!37127 lt!2475891)) lt!2475964)))

(declare-fun b!6941522 () Bool)

(assert (=> b!6941522 (= e!4175821 (or (not (= (_2!37127 lt!2475891) Nil!66596)) (= lt!2475964 lt!2475880)))))

(declare-fun b!6941520 () Bool)

(assert (=> b!6941520 (= e!4175822 (Cons!66596 (h!73044 lt!2475880) (++!15006 (t!380463 lt!2475880) (_2!37127 lt!2475891))))))

(assert (= (and d!2167827 c!1288002) b!6941519))

(assert (= (and d!2167827 (not c!1288002)) b!6941520))

(assert (= (and d!2167827 res!2831650) b!6941521))

(assert (= (and b!6941521 res!2831651) b!6941522))

(declare-fun m!7646442 () Bool)

(assert (=> b!6941521 m!7646442))

(declare-fun m!7646444 () Bool)

(assert (=> b!6941521 m!7646444))

(assert (=> b!6941521 m!7646180))

(declare-fun m!7646446 () Bool)

(assert (=> d!2167827 m!7646446))

(declare-fun m!7646448 () Bool)

(assert (=> d!2167827 m!7646448))

(assert (=> d!2167827 m!7646186))

(declare-fun m!7646450 () Bool)

(assert (=> b!6941520 m!7646450))

(assert (=> b!6941070 d!2167827))

(declare-fun d!2167829 () Bool)

(assert (=> d!2167829 (= (++!15006 (++!15006 (_1!37127 lt!2475899) (_1!37127 lt!2475891)) (_2!37127 lt!2475891)) (++!15006 (_1!37127 lt!2475899) (++!15006 (_1!37127 lt!2475891) (_2!37127 lt!2475891))))))

(declare-fun lt!2475967 () Unit!160658)

(declare-fun choose!51721 (List!66720 List!66720 List!66720) Unit!160658)

(assert (=> d!2167829 (= lt!2475967 (choose!51721 (_1!37127 lt!2475899) (_1!37127 lt!2475891) (_2!37127 lt!2475891)))))

(assert (=> d!2167829 (= (lemmaConcatAssociativity!3048 (_1!37127 lt!2475899) (_1!37127 lt!2475891) (_2!37127 lt!2475891)) lt!2475967)))

(declare-fun bs!1855037 () Bool)

(assert (= bs!1855037 d!2167829))

(assert (=> bs!1855037 m!7646030))

(assert (=> bs!1855037 m!7646058))

(declare-fun m!7646452 () Bool)

(assert (=> bs!1855037 m!7646452))

(assert (=> bs!1855037 m!7646058))

(declare-fun m!7646454 () Bool)

(assert (=> bs!1855037 m!7646454))

(assert (=> bs!1855037 m!7646030))

(assert (=> bs!1855037 m!7646034))

(assert (=> b!6941070 d!2167829))

(declare-fun bs!1855089 () Bool)

(declare-fun d!2167831 () Bool)

(assert (= bs!1855089 (and d!2167831 b!6941070)))

(declare-fun lambda!395526 () Int)

(assert (=> bs!1855089 (= lambda!395526 lambda!395477)))

(declare-fun bs!1855090 () Bool)

(assert (= bs!1855090 (and d!2167831 b!6941078)))

(assert (=> bs!1855090 (= (and (= lt!2475880 s!14361) (= r1!6342 lt!2475892) (= r2!6280 r3!135)) (= lambda!395526 lambda!395479))))

(declare-fun bs!1855092 () Bool)

(assert (= bs!1855092 (and d!2167831 b!6941177)))

(assert (=> bs!1855092 (not (= lambda!395526 lambda!395485))))

(declare-fun bs!1855094 () Bool)

(assert (= bs!1855094 (and d!2167831 b!6941252)))

(assert (=> bs!1855094 (not (= lambda!395526 lambda!395498))))

(declare-fun bs!1855096 () Bool)

(assert (= bs!1855096 (and d!2167831 b!6941061)))

(assert (=> bs!1855096 (= (and (= lt!2475880 (_2!37127 lt!2475899)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395526 lambda!395475))))

(assert (=> bs!1855096 (not (= lambda!395526 lambda!395476))))

(declare-fun bs!1855098 () Bool)

(assert (= bs!1855098 (and d!2167831 b!6941383)))

(assert (=> bs!1855098 (not (= lambda!395526 lambda!395505))))

(declare-fun bs!1855099 () Bool)

(assert (= bs!1855099 (and d!2167831 b!6941062)))

(assert (=> bs!1855099 (= (and (= lt!2475880 s!14361) (= r2!6280 lt!2475872)) (= lambda!395526 lambda!395473))))

(assert (=> bs!1855090 (not (= lambda!395526 lambda!395480))))

(declare-fun bs!1855102 () Bool)

(assert (= bs!1855102 (and d!2167831 d!2167795)))

(assert (=> bs!1855102 (= lambda!395526 lambda!395514)))

(declare-fun bs!1855103 () Bool)

(assert (= bs!1855103 (and d!2167831 b!6941388)))

(assert (=> bs!1855103 (not (= lambda!395526 lambda!395507))))

(assert (=> bs!1855099 (not (= lambda!395526 lambda!395474))))

(assert (=> bs!1855089 (not (= lambda!395526 lambda!395478))))

(declare-fun bs!1855104 () Bool)

(assert (= bs!1855104 (and d!2167831 b!6941257)))

(assert (=> bs!1855104 (not (= lambda!395526 lambda!395501))))

(declare-fun bs!1855105 () Bool)

(assert (= bs!1855105 (and d!2167831 b!6941182)))

(assert (=> bs!1855105 (not (= lambda!395526 lambda!395486))))

(assert (=> d!2167831 true))

(assert (=> d!2167831 true))

(assert (=> d!2167831 true))

(declare-fun lambda!395528 () Int)

(assert (=> bs!1855089 (not (= lambda!395528 lambda!395477))))

(assert (=> bs!1855090 (not (= lambda!395528 lambda!395479))))

(assert (=> bs!1855092 (not (= lambda!395528 lambda!395485))))

(assert (=> bs!1855094 (not (= lambda!395528 lambda!395498))))

(assert (=> bs!1855096 (not (= lambda!395528 lambda!395475))))

(assert (=> bs!1855096 (= (and (= lt!2475880 (_2!37127 lt!2475899)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!395528 lambda!395476))))

(assert (=> bs!1855098 (not (= lambda!395528 lambda!395505))))

(assert (=> bs!1855099 (not (= lambda!395528 lambda!395473))))

(assert (=> bs!1855090 (= (and (= lt!2475880 s!14361) (= r1!6342 lt!2475892) (= r2!6280 r3!135)) (= lambda!395528 lambda!395480))))

(assert (=> bs!1855102 (not (= lambda!395528 lambda!395514))))

(assert (=> bs!1855103 (= (and (= r1!6342 (regOne!34446 lt!2475892)) (= r2!6280 (regTwo!34446 lt!2475892))) (= lambda!395528 lambda!395507))))

(declare-fun bs!1855106 () Bool)

(assert (= bs!1855106 d!2167831))

(assert (=> bs!1855106 (not (= lambda!395528 lambda!395526))))

(assert (=> bs!1855099 (= (and (= lt!2475880 s!14361) (= r2!6280 lt!2475872)) (= lambda!395528 lambda!395474))))

(assert (=> bs!1855089 (= lambda!395528 lambda!395478)))

(assert (=> bs!1855104 (= (and (= lt!2475880 (_1!37127 lt!2475891)) (= r1!6342 (regOne!34446 r2!6280)) (= r2!6280 (regTwo!34446 r2!6280))) (= lambda!395528 lambda!395501))))

(assert (=> bs!1855105 (= (and (= lt!2475880 (_2!37127 lt!2475891)) (= r1!6342 (regOne!34446 r3!135)) (= r2!6280 (regTwo!34446 r3!135))) (= lambda!395528 lambda!395486))))

(assert (=> d!2167831 true))

(assert (=> d!2167831 true))

(assert (=> d!2167831 true))

(assert (=> d!2167831 (= (Exists!3967 lambda!395526) (Exists!3967 lambda!395528))))

(declare-fun lt!2475972 () Unit!160658)

(declare-fun choose!51722 (Regex!16967 Regex!16967 List!66720) Unit!160658)

(assert (=> d!2167831 (= lt!2475972 (choose!51722 r1!6342 r2!6280 lt!2475880))))

(assert (=> d!2167831 (validRegex!8673 r1!6342)))

(assert (=> d!2167831 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2428 r1!6342 r2!6280 lt!2475880) lt!2475972)))

(declare-fun m!7646474 () Bool)

(assert (=> bs!1855106 m!7646474))

(declare-fun m!7646476 () Bool)

(assert (=> bs!1855106 m!7646476))

(declare-fun m!7646478 () Bool)

(assert (=> bs!1855106 m!7646478))

(assert (=> bs!1855106 m!7646074))

(assert (=> b!6941070 d!2167831))

(declare-fun d!2167841 () Bool)

(assert (=> d!2167841 (isDefined!13437 (findConcatSeparation!3150 r1!6342 r2!6280 Nil!66596 lt!2475880 lt!2475880))))

(declare-fun lt!2475981 () Unit!160658)

(declare-fun choose!51723 (Regex!16967 Regex!16967 List!66720 List!66720 List!66720 List!66720 List!66720) Unit!160658)

(assert (=> d!2167841 (= lt!2475981 (choose!51723 r1!6342 r2!6280 (_1!37127 lt!2475899) (_1!37127 lt!2475891) lt!2475880 Nil!66596 lt!2475880))))

(assert (=> d!2167841 (validRegex!8673 r1!6342)))

(assert (=> d!2167841 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!110 r1!6342 r2!6280 (_1!37127 lt!2475899) (_1!37127 lt!2475891) lt!2475880 Nil!66596 lt!2475880) lt!2475981)))

(declare-fun bs!1855110 () Bool)

(assert (= bs!1855110 d!2167841))

(assert (=> bs!1855110 m!7646052))

(assert (=> bs!1855110 m!7646052))

(assert (=> bs!1855110 m!7646054))

(declare-fun m!7646528 () Bool)

(assert (=> bs!1855110 m!7646528))

(assert (=> bs!1855110 m!7646074))

(assert (=> b!6941070 d!2167841))

(declare-fun d!2167855 () Bool)

(assert (=> d!2167855 (= (Exists!3967 lambda!395477) (choose!51720 lambda!395477))))

(declare-fun bs!1855111 () Bool)

(assert (= bs!1855111 d!2167855))

(declare-fun m!7646530 () Bool)

(assert (=> bs!1855111 m!7646530))

(assert (=> b!6941070 d!2167855))

(declare-fun b!6941583 () Bool)

(declare-fun res!2831687 () Bool)

(declare-fun e!4175860 () Bool)

(assert (=> b!6941583 (=> (not res!2831687) (not e!4175860))))

(declare-fun call!630629 () Bool)

(assert (=> b!6941583 (= res!2831687 call!630629)))

(declare-fun e!4175863 () Bool)

(assert (=> b!6941583 (= e!4175863 e!4175860)))

(declare-fun b!6941584 () Bool)

(declare-fun e!4175862 () Bool)

(declare-fun e!4175861 () Bool)

(assert (=> b!6941584 (= e!4175862 e!4175861)))

(declare-fun res!2831689 () Bool)

(assert (=> b!6941584 (= res!2831689 (not (nullable!6784 (reg!17296 r2!6280))))))

(assert (=> b!6941584 (=> (not res!2831689) (not e!4175861))))

(declare-fun b!6941585 () Bool)

(declare-fun e!4175865 () Bool)

(assert (=> b!6941585 (= e!4175865 e!4175862)))

(declare-fun c!1288016 () Bool)

(assert (=> b!6941585 (= c!1288016 ((_ is Star!16967) r2!6280))))

(declare-fun b!6941586 () Bool)

(declare-fun e!4175864 () Bool)

(declare-fun e!4175866 () Bool)

(assert (=> b!6941586 (= e!4175864 e!4175866)))

(declare-fun res!2831690 () Bool)

(assert (=> b!6941586 (=> (not res!2831690) (not e!4175866))))

(declare-fun call!630630 () Bool)

(assert (=> b!6941586 (= res!2831690 call!630630)))

(declare-fun b!6941587 () Bool)

(assert (=> b!6941587 (= e!4175866 call!630629)))

(declare-fun b!6941588 () Bool)

(declare-fun call!630631 () Bool)

(assert (=> b!6941588 (= e!4175861 call!630631)))

(declare-fun b!6941589 () Bool)

(declare-fun res!2831688 () Bool)

(assert (=> b!6941589 (=> res!2831688 e!4175864)))

(assert (=> b!6941589 (= res!2831688 (not ((_ is Concat!25812) r2!6280)))))

(assert (=> b!6941589 (= e!4175863 e!4175864)))

(declare-fun bm!630625 () Bool)

(assert (=> bm!630625 (= call!630630 call!630631)))

(declare-fun b!6941590 () Bool)

(assert (=> b!6941590 (= e!4175862 e!4175863)))

(declare-fun c!1288017 () Bool)

(assert (=> b!6941590 (= c!1288017 ((_ is Union!16967) r2!6280))))

(declare-fun b!6941591 () Bool)

(assert (=> b!6941591 (= e!4175860 call!630630)))

(declare-fun bm!630626 () Bool)

(assert (=> bm!630626 (= call!630629 (validRegex!8673 (ite c!1288017 (regOne!34447 r2!6280) (regTwo!34446 r2!6280))))))

(declare-fun d!2167857 () Bool)

(declare-fun res!2831686 () Bool)

(assert (=> d!2167857 (=> res!2831686 e!4175865)))

(assert (=> d!2167857 (= res!2831686 ((_ is ElementMatch!16967) r2!6280))))

(assert (=> d!2167857 (= (validRegex!8673 r2!6280) e!4175865)))

(declare-fun bm!630624 () Bool)

(assert (=> bm!630624 (= call!630631 (validRegex!8673 (ite c!1288016 (reg!17296 r2!6280) (ite c!1288017 (regTwo!34447 r2!6280) (regOne!34446 r2!6280)))))))

(assert (= (and d!2167857 (not res!2831686)) b!6941585))

(assert (= (and b!6941585 c!1288016) b!6941584))

(assert (= (and b!6941585 (not c!1288016)) b!6941590))

(assert (= (and b!6941584 res!2831689) b!6941588))

(assert (= (and b!6941590 c!1288017) b!6941583))

(assert (= (and b!6941590 (not c!1288017)) b!6941589))

(assert (= (and b!6941583 res!2831687) b!6941591))

(assert (= (and b!6941589 (not res!2831688)) b!6941586))

(assert (= (and b!6941586 res!2831690) b!6941587))

(assert (= (or b!6941583 b!6941587) bm!630626))

(assert (= (or b!6941591 b!6941586) bm!630625))

(assert (= (or b!6941588 bm!630625) bm!630624))

(declare-fun m!7646532 () Bool)

(assert (=> b!6941584 m!7646532))

(declare-fun m!7646534 () Bool)

(assert (=> bm!630626 m!7646534))

(declare-fun m!7646536 () Bool)

(assert (=> bm!630624 m!7646536))

(assert (=> b!6941082 d!2167857))

(declare-fun bs!1855153 () Bool)

(declare-fun d!2167859 () Bool)

(assert (= bs!1855153 (and d!2167859 b!6941070)))

(declare-fun lambda!395531 () Int)

(assert (=> bs!1855153 (= (and (= (_2!37127 lt!2475899) lt!2475880) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395531 lambda!395477))))

(declare-fun bs!1855154 () Bool)

(assert (= bs!1855154 (and d!2167859 b!6941078)))

(assert (=> bs!1855154 (= (and (= (_2!37127 lt!2475899) s!14361) (= r2!6280 lt!2475892)) (= lambda!395531 lambda!395479))))

(declare-fun bs!1855155 () Bool)

(assert (= bs!1855155 (and d!2167859 b!6941177)))

(assert (=> bs!1855155 (not (= lambda!395531 lambda!395485))))

(declare-fun bs!1855156 () Bool)

(assert (= bs!1855156 (and d!2167859 b!6941252)))

(assert (=> bs!1855156 (not (= lambda!395531 lambda!395498))))

(declare-fun bs!1855157 () Bool)

(assert (= bs!1855157 (and d!2167859 b!6941061)))

(assert (=> bs!1855157 (= lambda!395531 lambda!395475)))

(assert (=> bs!1855157 (not (= lambda!395531 lambda!395476))))

(declare-fun bs!1855158 () Bool)

(assert (= bs!1855158 (and d!2167859 b!6941383)))

(assert (=> bs!1855158 (not (= lambda!395531 lambda!395505))))

(declare-fun bs!1855159 () Bool)

(assert (= bs!1855159 (and d!2167859 d!2167831)))

(assert (=> bs!1855159 (not (= lambda!395531 lambda!395528))))

(declare-fun bs!1855160 () Bool)

(assert (= bs!1855160 (and d!2167859 b!6941062)))

(assert (=> bs!1855160 (= (and (= (_2!37127 lt!2475899) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2475872)) (= lambda!395531 lambda!395473))))

(assert (=> bs!1855154 (not (= lambda!395531 lambda!395480))))

(declare-fun bs!1855161 () Bool)

(assert (= bs!1855161 (and d!2167859 d!2167795)))

(assert (=> bs!1855161 (= (and (= (_2!37127 lt!2475899) lt!2475880) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395531 lambda!395514))))

(declare-fun bs!1855162 () Bool)

(assert (= bs!1855162 (and d!2167859 b!6941388)))

(assert (=> bs!1855162 (not (= lambda!395531 lambda!395507))))

(assert (=> bs!1855159 (= (and (= (_2!37127 lt!2475899) lt!2475880) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395531 lambda!395526))))

(assert (=> bs!1855160 (not (= lambda!395531 lambda!395474))))

(assert (=> bs!1855153 (not (= lambda!395531 lambda!395478))))

(declare-fun bs!1855163 () Bool)

(assert (= bs!1855163 (and d!2167859 b!6941257)))

(assert (=> bs!1855163 (not (= lambda!395531 lambda!395501))))

(declare-fun bs!1855164 () Bool)

(assert (= bs!1855164 (and d!2167859 b!6941182)))

(assert (=> bs!1855164 (not (= lambda!395531 lambda!395486))))

(assert (=> d!2167859 true))

(assert (=> d!2167859 true))

(assert (=> d!2167859 true))

(assert (=> d!2167859 (= (isDefined!13437 (findConcatSeparation!3150 r2!6280 r3!135 Nil!66596 (_2!37127 lt!2475899) (_2!37127 lt!2475899))) (Exists!3967 lambda!395531))))

(declare-fun lt!2475982 () Unit!160658)

(assert (=> d!2167859 (= lt!2475982 (choose!51718 r2!6280 r3!135 (_2!37127 lt!2475899)))))

(assert (=> d!2167859 (validRegex!8673 r2!6280)))

(assert (=> d!2167859 (= (lemmaFindConcatSeparationEquivalentToExists!2908 r2!6280 r3!135 (_2!37127 lt!2475899)) lt!2475982)))

(declare-fun bs!1855165 () Bool)

(assert (= bs!1855165 d!2167859))

(assert (=> bs!1855165 m!7646040))

(assert (=> bs!1855165 m!7646084))

(declare-fun m!7646554 () Bool)

(assert (=> bs!1855165 m!7646554))

(assert (=> bs!1855165 m!7646084))

(declare-fun m!7646556 () Bool)

(assert (=> bs!1855165 m!7646556))

(declare-fun m!7646558 () Bool)

(assert (=> bs!1855165 m!7646558))

(assert (=> b!6941061 d!2167859))

(declare-fun b!6941607 () Bool)

(declare-fun e!4175877 () Option!16736)

(assert (=> b!6941607 (= e!4175877 None!16735)))

(declare-fun b!6941608 () Bool)

(declare-fun res!2831697 () Bool)

(declare-fun e!4175878 () Bool)

(assert (=> b!6941608 (=> (not res!2831697) (not e!4175878))))

(declare-fun lt!2475986 () Option!16736)

(assert (=> b!6941608 (= res!2831697 (matchR!9106 r2!6280 (_1!37127 (get!23387 lt!2475986))))))

(declare-fun b!6941609 () Bool)

(declare-fun lt!2475984 () Unit!160658)

(declare-fun lt!2475985 () Unit!160658)

(assert (=> b!6941609 (= lt!2475984 lt!2475985)))

(assert (=> b!6941609 (= (++!15006 (++!15006 Nil!66596 (Cons!66596 (h!73044 (_2!37127 lt!2475899)) Nil!66596)) (t!380463 (_2!37127 lt!2475899))) (_2!37127 lt!2475899))))

(assert (=> b!6941609 (= lt!2475985 (lemmaMoveElementToOtherListKeepsConcatEq!2863 Nil!66596 (h!73044 (_2!37127 lt!2475899)) (t!380463 (_2!37127 lt!2475899)) (_2!37127 lt!2475899)))))

(assert (=> b!6941609 (= e!4175877 (findConcatSeparation!3150 r2!6280 r3!135 (++!15006 Nil!66596 (Cons!66596 (h!73044 (_2!37127 lt!2475899)) Nil!66596)) (t!380463 (_2!37127 lt!2475899)) (_2!37127 lt!2475899)))))

(declare-fun d!2167865 () Bool)

(declare-fun e!4175880 () Bool)

(assert (=> d!2167865 e!4175880))

(declare-fun res!2831696 () Bool)

(assert (=> d!2167865 (=> res!2831696 e!4175880)))

(assert (=> d!2167865 (= res!2831696 e!4175878)))

(declare-fun res!2831699 () Bool)

(assert (=> d!2167865 (=> (not res!2831699) (not e!4175878))))

(assert (=> d!2167865 (= res!2831699 (isDefined!13437 lt!2475986))))

(declare-fun e!4175876 () Option!16736)

(assert (=> d!2167865 (= lt!2475986 e!4175876)))

(declare-fun c!1288023 () Bool)

(declare-fun e!4175879 () Bool)

(assert (=> d!2167865 (= c!1288023 e!4175879)))

(declare-fun res!2831698 () Bool)

(assert (=> d!2167865 (=> (not res!2831698) (not e!4175879))))

(assert (=> d!2167865 (= res!2831698 (matchR!9106 r2!6280 Nil!66596))))

(assert (=> d!2167865 (validRegex!8673 r2!6280)))

(assert (=> d!2167865 (= (findConcatSeparation!3150 r2!6280 r3!135 Nil!66596 (_2!37127 lt!2475899) (_2!37127 lt!2475899)) lt!2475986)))

(declare-fun b!6941610 () Bool)

(assert (=> b!6941610 (= e!4175876 e!4175877)))

(declare-fun c!1288024 () Bool)

(assert (=> b!6941610 (= c!1288024 ((_ is Nil!66596) (_2!37127 lt!2475899)))))

(declare-fun b!6941611 () Bool)

(assert (=> b!6941611 (= e!4175878 (= (++!15006 (_1!37127 (get!23387 lt!2475986)) (_2!37127 (get!23387 lt!2475986))) (_2!37127 lt!2475899)))))

(declare-fun b!6941612 () Bool)

(declare-fun res!2831700 () Bool)

(assert (=> b!6941612 (=> (not res!2831700) (not e!4175878))))

(assert (=> b!6941612 (= res!2831700 (matchR!9106 r3!135 (_2!37127 (get!23387 lt!2475986))))))

(declare-fun b!6941613 () Bool)

(assert (=> b!6941613 (= e!4175879 (matchR!9106 r3!135 (_2!37127 lt!2475899)))))

(declare-fun b!6941614 () Bool)

(assert (=> b!6941614 (= e!4175876 (Some!16735 (tuple2!67649 Nil!66596 (_2!37127 lt!2475899))))))

(declare-fun b!6941615 () Bool)

(assert (=> b!6941615 (= e!4175880 (not (isDefined!13437 lt!2475986)))))

(assert (= (and d!2167865 res!2831698) b!6941613))

(assert (= (and d!2167865 c!1288023) b!6941614))

(assert (= (and d!2167865 (not c!1288023)) b!6941610))

(assert (= (and b!6941610 c!1288024) b!6941607))

(assert (= (and b!6941610 (not c!1288024)) b!6941609))

(assert (= (and d!2167865 res!2831699) b!6941608))

(assert (= (and b!6941608 res!2831697) b!6941612))

(assert (= (and b!6941612 res!2831700) b!6941611))

(assert (= (and d!2167865 (not res!2831696)) b!6941615))

(declare-fun m!7646560 () Bool)

(assert (=> b!6941611 m!7646560))

(declare-fun m!7646562 () Bool)

(assert (=> b!6941611 m!7646562))

(declare-fun m!7646564 () Bool)

(assert (=> b!6941613 m!7646564))

(declare-fun m!7646566 () Bool)

(assert (=> b!6941615 m!7646566))

(assert (=> b!6941608 m!7646560))

(declare-fun m!7646568 () Bool)

(assert (=> b!6941608 m!7646568))

(declare-fun m!7646570 () Bool)

(assert (=> b!6941609 m!7646570))

(assert (=> b!6941609 m!7646570))

(declare-fun m!7646572 () Bool)

(assert (=> b!6941609 m!7646572))

(declare-fun m!7646574 () Bool)

(assert (=> b!6941609 m!7646574))

(assert (=> b!6941609 m!7646570))

(declare-fun m!7646576 () Bool)

(assert (=> b!6941609 m!7646576))

(assert (=> b!6941612 m!7646560))

(declare-fun m!7646578 () Bool)

(assert (=> b!6941612 m!7646578))

(assert (=> d!2167865 m!7646566))

(declare-fun m!7646580 () Bool)

(assert (=> d!2167865 m!7646580))

(assert (=> d!2167865 m!7646040))

(assert (=> b!6941061 d!2167865))

(declare-fun d!2167867 () Bool)

(assert (=> d!2167867 (= (matchR!9106 lt!2475872 (_2!37127 lt!2475899)) (matchRSpec!4024 lt!2475872 (_2!37127 lt!2475899)))))

(declare-fun lt!2475987 () Unit!160658)

(assert (=> d!2167867 (= lt!2475987 (choose!51716 lt!2475872 (_2!37127 lt!2475899)))))

(assert (=> d!2167867 (validRegex!8673 lt!2475872)))

(assert (=> d!2167867 (= (mainMatchTheorem!4024 lt!2475872 (_2!37127 lt!2475899)) lt!2475987)))

(declare-fun bs!1855181 () Bool)

(assert (= bs!1855181 d!2167867))

(assert (=> bs!1855181 m!7646038))

(assert (=> bs!1855181 m!7646096))

(declare-fun m!7646582 () Bool)

(assert (=> bs!1855181 m!7646582))

(declare-fun m!7646584 () Bool)

(assert (=> bs!1855181 m!7646584))

(assert (=> b!6941061 d!2167867))

(declare-fun bs!1855186 () Bool)

(declare-fun d!2167869 () Bool)

(assert (= bs!1855186 (and d!2167869 b!6941070)))

(declare-fun lambda!395533 () Int)

(assert (=> bs!1855186 (= (and (= (_2!37127 lt!2475899) lt!2475880) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395533 lambda!395477))))

(declare-fun bs!1855188 () Bool)

(assert (= bs!1855188 (and d!2167869 b!6941078)))

(assert (=> bs!1855188 (= (and (= (_2!37127 lt!2475899) s!14361) (= r2!6280 lt!2475892)) (= lambda!395533 lambda!395479))))

(declare-fun bs!1855189 () Bool)

(assert (= bs!1855189 (and d!2167869 b!6941177)))

(assert (=> bs!1855189 (not (= lambda!395533 lambda!395485))))

(declare-fun bs!1855190 () Bool)

(assert (= bs!1855190 (and d!2167869 b!6941252)))

(assert (=> bs!1855190 (not (= lambda!395533 lambda!395498))))

(declare-fun bs!1855192 () Bool)

(assert (= bs!1855192 (and d!2167869 b!6941061)))

(assert (=> bs!1855192 (= lambda!395533 lambda!395475)))

(assert (=> bs!1855192 (not (= lambda!395533 lambda!395476))))

(declare-fun bs!1855194 () Bool)

(assert (= bs!1855194 (and d!2167869 b!6941383)))

(assert (=> bs!1855194 (not (= lambda!395533 lambda!395505))))

(declare-fun bs!1855195 () Bool)

(assert (= bs!1855195 (and d!2167869 d!2167831)))

(assert (=> bs!1855195 (not (= lambda!395533 lambda!395528))))

(declare-fun bs!1855196 () Bool)

(assert (= bs!1855196 (and d!2167869 b!6941062)))

(assert (=> bs!1855196 (= (and (= (_2!37127 lt!2475899) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2475872)) (= lambda!395533 lambda!395473))))

(assert (=> bs!1855188 (not (= lambda!395533 lambda!395480))))

(declare-fun bs!1855197 () Bool)

(assert (= bs!1855197 (and d!2167869 b!6941388)))

(assert (=> bs!1855197 (not (= lambda!395533 lambda!395507))))

(assert (=> bs!1855195 (= (and (= (_2!37127 lt!2475899) lt!2475880) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395533 lambda!395526))))

(assert (=> bs!1855196 (not (= lambda!395533 lambda!395474))))

(assert (=> bs!1855186 (not (= lambda!395533 lambda!395478))))

(declare-fun bs!1855201 () Bool)

(assert (= bs!1855201 (and d!2167869 b!6941257)))

(assert (=> bs!1855201 (not (= lambda!395533 lambda!395501))))

(declare-fun bs!1855203 () Bool)

(assert (= bs!1855203 (and d!2167869 b!6941182)))

(assert (=> bs!1855203 (not (= lambda!395533 lambda!395486))))

(declare-fun bs!1855205 () Bool)

(assert (= bs!1855205 (and d!2167869 d!2167859)))

(assert (=> bs!1855205 (= lambda!395533 lambda!395531)))

(declare-fun bs!1855207 () Bool)

(assert (= bs!1855207 (and d!2167869 d!2167795)))

(assert (=> bs!1855207 (= (and (= (_2!37127 lt!2475899) lt!2475880) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395533 lambda!395514))))

(assert (=> d!2167869 true))

(assert (=> d!2167869 true))

(assert (=> d!2167869 true))

(declare-fun lambda!395535 () Int)

(assert (=> bs!1855186 (not (= lambda!395535 lambda!395477))))

(assert (=> bs!1855188 (not (= lambda!395535 lambda!395479))))

(assert (=> bs!1855189 (not (= lambda!395535 lambda!395485))))

(assert (=> bs!1855190 (not (= lambda!395535 lambda!395498))))

(assert (=> bs!1855192 (not (= lambda!395535 lambda!395475))))

(assert (=> bs!1855192 (= lambda!395535 lambda!395476)))

(assert (=> bs!1855194 (not (= lambda!395535 lambda!395505))))

(assert (=> bs!1855195 (= (and (= (_2!37127 lt!2475899) lt!2475880) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395535 lambda!395528))))

(assert (=> bs!1855196 (not (= lambda!395535 lambda!395473))))

(assert (=> bs!1855188 (= (and (= (_2!37127 lt!2475899) s!14361) (= r2!6280 lt!2475892)) (= lambda!395535 lambda!395480))))

(assert (=> bs!1855197 (= (and (= (_2!37127 lt!2475899) lt!2475880) (= r2!6280 (regOne!34446 lt!2475892)) (= r3!135 (regTwo!34446 lt!2475892))) (= lambda!395535 lambda!395507))))

(assert (=> bs!1855196 (= (and (= (_2!37127 lt!2475899) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2475872)) (= lambda!395535 lambda!395474))))

(assert (=> bs!1855186 (= (and (= (_2!37127 lt!2475899) lt!2475880) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!395535 lambda!395478))))

(assert (=> bs!1855201 (= (and (= (_2!37127 lt!2475899) (_1!37127 lt!2475891)) (= r2!6280 (regOne!34446 r2!6280)) (= r3!135 (regTwo!34446 r2!6280))) (= lambda!395535 lambda!395501))))

(assert (=> bs!1855203 (= (and (= (_2!37127 lt!2475899) (_2!37127 lt!2475891)) (= r2!6280 (regOne!34446 r3!135)) (= r3!135 (regTwo!34446 r3!135))) (= lambda!395535 lambda!395486))))

(assert (=> bs!1855205 (not (= lambda!395535 lambda!395531))))

(assert (=> bs!1855207 (not (= lambda!395535 lambda!395514))))

(assert (=> bs!1855195 (not (= lambda!395535 lambda!395526))))

(declare-fun bs!1855224 () Bool)

(assert (= bs!1855224 d!2167869))

(assert (=> bs!1855224 (not (= lambda!395535 lambda!395533))))

(assert (=> d!2167869 true))

(assert (=> d!2167869 true))

(assert (=> d!2167869 true))

(assert (=> d!2167869 (= (Exists!3967 lambda!395533) (Exists!3967 lambda!395535))))

(declare-fun lt!2475988 () Unit!160658)

(assert (=> d!2167869 (= lt!2475988 (choose!51722 r2!6280 r3!135 (_2!37127 lt!2475899)))))

(assert (=> d!2167869 (validRegex!8673 r2!6280)))

(assert (=> d!2167869 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2428 r2!6280 r3!135 (_2!37127 lt!2475899)) lt!2475988)))

(declare-fun m!7646586 () Bool)

(assert (=> bs!1855224 m!7646586))

(declare-fun m!7646588 () Bool)

(assert (=> bs!1855224 m!7646588))

(declare-fun m!7646590 () Bool)

(assert (=> bs!1855224 m!7646590))

(assert (=> bs!1855224 m!7646040))

(assert (=> b!6941061 d!2167869))

(declare-fun d!2167871 () Bool)

(assert (=> d!2167871 (= (Exists!3967 lambda!395475) (choose!51720 lambda!395475))))

(declare-fun bs!1855226 () Bool)

(assert (= bs!1855226 d!2167871))

(declare-fun m!7646592 () Bool)

(assert (=> bs!1855226 m!7646592))

(assert (=> b!6941061 d!2167871))

(declare-fun b!6941616 () Bool)

(declare-fun e!4175886 () Bool)

(assert (=> b!6941616 (= e!4175886 (not (= (head!13912 (_1!37127 lt!2475891)) (c!1287895 r2!6280))))))

(declare-fun b!6941617 () Bool)

(declare-fun e!4175885 () Bool)

(assert (=> b!6941617 (= e!4175885 (= (head!13912 (_1!37127 lt!2475891)) (c!1287895 r2!6280)))))

(declare-fun b!6941618 () Bool)

(declare-fun res!2831708 () Bool)

(assert (=> b!6941618 (=> res!2831708 e!4175886)))

(assert (=> b!6941618 (= res!2831708 (not (isEmpty!38869 (tail!12964 (_1!37127 lt!2475891)))))))

(declare-fun b!6941619 () Bool)

(declare-fun res!2831707 () Bool)

(declare-fun e!4175887 () Bool)

(assert (=> b!6941619 (=> res!2831707 e!4175887)))

(assert (=> b!6941619 (= res!2831707 (not ((_ is ElementMatch!16967) r2!6280)))))

(declare-fun e!4175884 () Bool)

(assert (=> b!6941619 (= e!4175884 e!4175887)))

(declare-fun b!6941620 () Bool)

(declare-fun e!4175881 () Bool)

(assert (=> b!6941620 (= e!4175881 e!4175884)))

(declare-fun c!1288025 () Bool)

(assert (=> b!6941620 (= c!1288025 ((_ is EmptyLang!16967) r2!6280))))

(declare-fun b!6941621 () Bool)

(declare-fun res!2831701 () Bool)

(assert (=> b!6941621 (=> (not res!2831701) (not e!4175885))))

(assert (=> b!6941621 (= res!2831701 (isEmpty!38869 (tail!12964 (_1!37127 lt!2475891))))))

(declare-fun b!6941622 () Bool)

(declare-fun e!4175883 () Bool)

(assert (=> b!6941622 (= e!4175883 (nullable!6784 r2!6280))))

(declare-fun b!6941624 () Bool)

(assert (=> b!6941624 (= e!4175883 (matchR!9106 (derivativeStep!5459 r2!6280 (head!13912 (_1!37127 lt!2475891))) (tail!12964 (_1!37127 lt!2475891))))))

(declare-fun b!6941625 () Bool)

(declare-fun lt!2475989 () Bool)

(declare-fun call!630634 () Bool)

(assert (=> b!6941625 (= e!4175881 (= lt!2475989 call!630634))))

(declare-fun b!6941626 () Bool)

(declare-fun e!4175882 () Bool)

(assert (=> b!6941626 (= e!4175882 e!4175886)))

(declare-fun res!2831703 () Bool)

(assert (=> b!6941626 (=> res!2831703 e!4175886)))

(assert (=> b!6941626 (= res!2831703 call!630634)))

(declare-fun b!6941627 () Bool)

(declare-fun res!2831705 () Bool)

(assert (=> b!6941627 (=> res!2831705 e!4175887)))

(assert (=> b!6941627 (= res!2831705 e!4175885)))

(declare-fun res!2831706 () Bool)

(assert (=> b!6941627 (=> (not res!2831706) (not e!4175885))))

(assert (=> b!6941627 (= res!2831706 lt!2475989)))

(declare-fun b!6941628 () Bool)

(assert (=> b!6941628 (= e!4175884 (not lt!2475989))))

(declare-fun bm!630629 () Bool)

(assert (=> bm!630629 (= call!630634 (isEmpty!38869 (_1!37127 lt!2475891)))))

(declare-fun b!6941629 () Bool)

(assert (=> b!6941629 (= e!4175887 e!4175882)))

(declare-fun res!2831702 () Bool)

(assert (=> b!6941629 (=> (not res!2831702) (not e!4175882))))

(assert (=> b!6941629 (= res!2831702 (not lt!2475989))))

(declare-fun b!6941623 () Bool)

(declare-fun res!2831704 () Bool)

(assert (=> b!6941623 (=> (not res!2831704) (not e!4175885))))

(assert (=> b!6941623 (= res!2831704 (not call!630634))))

(declare-fun d!2167873 () Bool)

(assert (=> d!2167873 e!4175881))

(declare-fun c!1288027 () Bool)

(assert (=> d!2167873 (= c!1288027 ((_ is EmptyExpr!16967) r2!6280))))

(assert (=> d!2167873 (= lt!2475989 e!4175883)))

(declare-fun c!1288026 () Bool)

(assert (=> d!2167873 (= c!1288026 (isEmpty!38869 (_1!37127 lt!2475891)))))

(assert (=> d!2167873 (validRegex!8673 r2!6280)))

(assert (=> d!2167873 (= (matchR!9106 r2!6280 (_1!37127 lt!2475891)) lt!2475989)))

(assert (= (and d!2167873 c!1288026) b!6941622))

(assert (= (and d!2167873 (not c!1288026)) b!6941624))

(assert (= (and d!2167873 c!1288027) b!6941625))

(assert (= (and d!2167873 (not c!1288027)) b!6941620))

(assert (= (and b!6941620 c!1288025) b!6941628))

(assert (= (and b!6941620 (not c!1288025)) b!6941619))

(assert (= (and b!6941619 (not res!2831707)) b!6941627))

(assert (= (and b!6941627 res!2831706) b!6941623))

(assert (= (and b!6941623 res!2831704) b!6941621))

(assert (= (and b!6941621 res!2831701) b!6941617))

(assert (= (and b!6941627 (not res!2831705)) b!6941629))

(assert (= (and b!6941629 res!2831702) b!6941626))

(assert (= (and b!6941626 (not res!2831703)) b!6941618))

(assert (= (and b!6941618 (not res!2831708)) b!6941616))

(assert (= (or b!6941625 b!6941626 b!6941623) bm!630629))

(assert (=> d!2167873 m!7646220))

(assert (=> d!2167873 m!7646040))

(declare-fun m!7646608 () Bool)

(assert (=> b!6941616 m!7646608))

(declare-fun m!7646610 () Bool)

(assert (=> b!6941621 m!7646610))

(assert (=> b!6941621 m!7646610))

(declare-fun m!7646612 () Bool)

(assert (=> b!6941621 m!7646612))

(declare-fun m!7646614 () Bool)

(assert (=> b!6941622 m!7646614))

(assert (=> b!6941617 m!7646608))

(assert (=> bm!630629 m!7646220))

(assert (=> b!6941618 m!7646610))

(assert (=> b!6941618 m!7646610))

(assert (=> b!6941618 m!7646612))

(assert (=> b!6941624 m!7646608))

(assert (=> b!6941624 m!7646608))

(declare-fun m!7646618 () Bool)

(assert (=> b!6941624 m!7646618))

(assert (=> b!6941624 m!7646610))

(assert (=> b!6941624 m!7646618))

(assert (=> b!6941624 m!7646610))

(declare-fun m!7646620 () Bool)

(assert (=> b!6941624 m!7646620))

(assert (=> b!6941061 d!2167873))

(declare-fun d!2167881 () Bool)

(assert (=> d!2167881 (= (get!23387 lt!2475877) (v!53007 lt!2475877))))

(assert (=> b!6941061 d!2167881))

(declare-fun d!2167883 () Bool)

(assert (=> d!2167883 (= (isDefined!13437 lt!2475877) (not (isEmpty!38870 lt!2475877)))))

(declare-fun bs!1855228 () Bool)

(assert (= bs!1855228 d!2167883))

(declare-fun m!7646622 () Bool)

(assert (=> bs!1855228 m!7646622))

(assert (=> b!6941061 d!2167883))

(declare-fun d!2167885 () Bool)

(assert (=> d!2167885 (= (Exists!3967 lambda!395476) (choose!51720 lambda!395476))))

(declare-fun bs!1855229 () Bool)

(assert (= bs!1855229 d!2167885))

(declare-fun m!7646626 () Bool)

(assert (=> bs!1855229 m!7646626))

(assert (=> b!6941061 d!2167885))

(declare-fun bs!1855231 () Bool)

(declare-fun b!6941648 () Bool)

(assert (= bs!1855231 (and b!6941648 b!6941070)))

(declare-fun lambda!395536 () Int)

(assert (=> bs!1855231 (not (= lambda!395536 lambda!395477))))

(declare-fun bs!1855232 () Bool)

(assert (= bs!1855232 (and b!6941648 b!6941078)))

(assert (=> bs!1855232 (not (= lambda!395536 lambda!395479))))

(declare-fun bs!1855233 () Bool)

(assert (= bs!1855233 (and b!6941648 b!6941177)))

(assert (=> bs!1855233 (= (and (= (_2!37127 lt!2475899) (_2!37127 lt!2475891)) (= (reg!17296 lt!2475872) (reg!17296 r3!135)) (= lt!2475872 r3!135)) (= lambda!395536 lambda!395485))))

(declare-fun bs!1855234 () Bool)

(assert (= bs!1855234 (and b!6941648 b!6941252)))

(assert (=> bs!1855234 (= (and (= (_2!37127 lt!2475899) (_1!37127 lt!2475891)) (= (reg!17296 lt!2475872) (reg!17296 r2!6280)) (= lt!2475872 r2!6280)) (= lambda!395536 lambda!395498))))

(declare-fun bs!1855235 () Bool)

(assert (= bs!1855235 (and b!6941648 b!6941061)))

(assert (=> bs!1855235 (not (= lambda!395536 lambda!395475))))

(assert (=> bs!1855235 (not (= lambda!395536 lambda!395476))))

(declare-fun bs!1855236 () Bool)

(assert (= bs!1855236 (and b!6941648 b!6941383)))

(assert (=> bs!1855236 (= (and (= (_2!37127 lt!2475899) lt!2475880) (= (reg!17296 lt!2475872) (reg!17296 lt!2475892)) (= lt!2475872 lt!2475892)) (= lambda!395536 lambda!395505))))

(declare-fun bs!1855237 () Bool)

(assert (= bs!1855237 (and b!6941648 d!2167831)))

(assert (=> bs!1855237 (not (= lambda!395536 lambda!395528))))

(declare-fun bs!1855238 () Bool)

(assert (= bs!1855238 (and b!6941648 b!6941062)))

(assert (=> bs!1855238 (not (= lambda!395536 lambda!395473))))

(assert (=> bs!1855232 (not (= lambda!395536 lambda!395480))))

(assert (=> bs!1855238 (not (= lambda!395536 lambda!395474))))

(assert (=> bs!1855231 (not (= lambda!395536 lambda!395478))))

(declare-fun bs!1855239 () Bool)

(assert (= bs!1855239 (and b!6941648 b!6941257)))

(assert (=> bs!1855239 (not (= lambda!395536 lambda!395501))))

(declare-fun bs!1855240 () Bool)

(assert (= bs!1855240 (and b!6941648 b!6941182)))

(assert (=> bs!1855240 (not (= lambda!395536 lambda!395486))))

(declare-fun bs!1855241 () Bool)

(assert (= bs!1855241 (and b!6941648 d!2167859)))

(assert (=> bs!1855241 (not (= lambda!395536 lambda!395531))))

(declare-fun bs!1855242 () Bool)

(assert (= bs!1855242 (and b!6941648 d!2167795)))

(assert (=> bs!1855242 (not (= lambda!395536 lambda!395514))))

(declare-fun bs!1855243 () Bool)

(assert (= bs!1855243 (and b!6941648 d!2167869)))

(assert (=> bs!1855243 (not (= lambda!395536 lambda!395535))))

(declare-fun bs!1855244 () Bool)

(assert (= bs!1855244 (and b!6941648 b!6941388)))

(assert (=> bs!1855244 (not (= lambda!395536 lambda!395507))))

(assert (=> bs!1855237 (not (= lambda!395536 lambda!395526))))

(assert (=> bs!1855243 (not (= lambda!395536 lambda!395533))))

(assert (=> b!6941648 true))

(assert (=> b!6941648 true))

(declare-fun bs!1855246 () Bool)

(declare-fun b!6941653 () Bool)

(assert (= bs!1855246 (and b!6941653 b!6941070)))

(declare-fun lambda!395537 () Int)

(assert (=> bs!1855246 (not (= lambda!395537 lambda!395477))))

(declare-fun bs!1855247 () Bool)

(assert (= bs!1855247 (and b!6941653 b!6941078)))

(assert (=> bs!1855247 (not (= lambda!395537 lambda!395479))))

(declare-fun bs!1855249 () Bool)

(assert (= bs!1855249 (and b!6941653 b!6941252)))

(assert (=> bs!1855249 (not (= lambda!395537 lambda!395498))))

(declare-fun bs!1855250 () Bool)

(assert (= bs!1855250 (and b!6941653 b!6941061)))

(assert (=> bs!1855250 (not (= lambda!395537 lambda!395475))))

(assert (=> bs!1855250 (= (and (= (regOne!34446 lt!2475872) r2!6280) (= (regTwo!34446 lt!2475872) r3!135)) (= lambda!395537 lambda!395476))))

(declare-fun bs!1855251 () Bool)

(assert (= bs!1855251 (and b!6941653 b!6941383)))

(assert (=> bs!1855251 (not (= lambda!395537 lambda!395505))))

(declare-fun bs!1855252 () Bool)

(assert (= bs!1855252 (and b!6941653 d!2167831)))

(assert (=> bs!1855252 (= (and (= (_2!37127 lt!2475899) lt!2475880) (= (regOne!34446 lt!2475872) r1!6342) (= (regTwo!34446 lt!2475872) r2!6280)) (= lambda!395537 lambda!395528))))

(declare-fun bs!1855254 () Bool)

(assert (= bs!1855254 (and b!6941653 b!6941062)))

(assert (=> bs!1855254 (not (= lambda!395537 lambda!395473))))

(assert (=> bs!1855247 (= (and (= (_2!37127 lt!2475899) s!14361) (= (regOne!34446 lt!2475872) lt!2475892) (= (regTwo!34446 lt!2475872) r3!135)) (= lambda!395537 lambda!395480))))

(assert (=> bs!1855254 (= (and (= (_2!37127 lt!2475899) s!14361) (= (regOne!34446 lt!2475872) r1!6342) (= (regTwo!34446 lt!2475872) lt!2475872)) (= lambda!395537 lambda!395474))))

(declare-fun bs!1855257 () Bool)

(assert (= bs!1855257 (and b!6941653 b!6941648)))

(assert (=> bs!1855257 (not (= lambda!395537 lambda!395536))))

(declare-fun bs!1855259 () Bool)

(assert (= bs!1855259 (and b!6941653 b!6941177)))

(assert (=> bs!1855259 (not (= lambda!395537 lambda!395485))))

(assert (=> bs!1855246 (= (and (= (_2!37127 lt!2475899) lt!2475880) (= (regOne!34446 lt!2475872) r1!6342) (= (regTwo!34446 lt!2475872) r2!6280)) (= lambda!395537 lambda!395478))))

(declare-fun bs!1855261 () Bool)

(assert (= bs!1855261 (and b!6941653 b!6941257)))

(assert (=> bs!1855261 (= (and (= (_2!37127 lt!2475899) (_1!37127 lt!2475891)) (= (regOne!34446 lt!2475872) (regOne!34446 r2!6280)) (= (regTwo!34446 lt!2475872) (regTwo!34446 r2!6280))) (= lambda!395537 lambda!395501))))

(declare-fun bs!1855263 () Bool)

(assert (= bs!1855263 (and b!6941653 b!6941182)))

(assert (=> bs!1855263 (= (and (= (_2!37127 lt!2475899) (_2!37127 lt!2475891)) (= (regOne!34446 lt!2475872) (regOne!34446 r3!135)) (= (regTwo!34446 lt!2475872) (regTwo!34446 r3!135))) (= lambda!395537 lambda!395486))))

(declare-fun bs!1855265 () Bool)

(assert (= bs!1855265 (and b!6941653 d!2167859)))

(assert (=> bs!1855265 (not (= lambda!395537 lambda!395531))))

(declare-fun bs!1855266 () Bool)

(assert (= bs!1855266 (and b!6941653 d!2167795)))

(assert (=> bs!1855266 (not (= lambda!395537 lambda!395514))))

(declare-fun bs!1855268 () Bool)

(assert (= bs!1855268 (and b!6941653 d!2167869)))

(assert (=> bs!1855268 (= (and (= (regOne!34446 lt!2475872) r2!6280) (= (regTwo!34446 lt!2475872) r3!135)) (= lambda!395537 lambda!395535))))

(declare-fun bs!1855270 () Bool)

(assert (= bs!1855270 (and b!6941653 b!6941388)))

(assert (=> bs!1855270 (= (and (= (_2!37127 lt!2475899) lt!2475880) (= (regOne!34446 lt!2475872) (regOne!34446 lt!2475892)) (= (regTwo!34446 lt!2475872) (regTwo!34446 lt!2475892))) (= lambda!395537 lambda!395507))))

(assert (=> bs!1855252 (not (= lambda!395537 lambda!395526))))

(assert (=> bs!1855268 (not (= lambda!395537 lambda!395533))))

(assert (=> b!6941653 true))

(assert (=> b!6941653 true))

(declare-fun d!2167887 () Bool)

(declare-fun c!1288035 () Bool)

(assert (=> d!2167887 (= c!1288035 ((_ is EmptyExpr!16967) lt!2475872))))

(declare-fun e!4175899 () Bool)

(assert (=> d!2167887 (= (matchRSpec!4024 lt!2475872 (_2!37127 lt!2475899)) e!4175899)))

(declare-fun e!4175898 () Bool)

(declare-fun call!630637 () Bool)

(assert (=> b!6941648 (= e!4175898 call!630637)))

(declare-fun c!1288032 () Bool)

(declare-fun bm!630631 () Bool)

(assert (=> bm!630631 (= call!630637 (Exists!3967 (ite c!1288032 lambda!395536 lambda!395537)))))

(declare-fun b!6941649 () Bool)

(declare-fun e!4175901 () Bool)

(assert (=> b!6941649 (= e!4175901 (matchRSpec!4024 (regTwo!34447 lt!2475872) (_2!37127 lt!2475899)))))

(declare-fun b!6941650 () Bool)

(declare-fun e!4175897 () Bool)

(declare-fun e!4175902 () Bool)

(assert (=> b!6941650 (= e!4175897 e!4175902)))

(assert (=> b!6941650 (= c!1288032 ((_ is Star!16967) lt!2475872))))

(declare-fun b!6941651 () Bool)

(declare-fun res!2831719 () Bool)

(assert (=> b!6941651 (=> res!2831719 e!4175898)))

(declare-fun call!630636 () Bool)

(assert (=> b!6941651 (= res!2831719 call!630636)))

(assert (=> b!6941651 (= e!4175902 e!4175898)))

(declare-fun b!6941652 () Bool)

(declare-fun e!4175903 () Bool)

(assert (=> b!6941652 (= e!4175903 (= (_2!37127 lt!2475899) (Cons!66596 (c!1287895 lt!2475872) Nil!66596)))))

(declare-fun bm!630632 () Bool)

(assert (=> bm!630632 (= call!630636 (isEmpty!38869 (_2!37127 lt!2475899)))))

(assert (=> b!6941653 (= e!4175902 call!630637)))

(declare-fun b!6941654 () Bool)

(declare-fun c!1288034 () Bool)

(assert (=> b!6941654 (= c!1288034 ((_ is Union!16967) lt!2475872))))

(assert (=> b!6941654 (= e!4175903 e!4175897)))

(declare-fun b!6941655 () Bool)

(declare-fun e!4175900 () Bool)

(assert (=> b!6941655 (= e!4175899 e!4175900)))

(declare-fun res!2831721 () Bool)

(assert (=> b!6941655 (= res!2831721 (not ((_ is EmptyLang!16967) lt!2475872)))))

(assert (=> b!6941655 (=> (not res!2831721) (not e!4175900))))

(declare-fun b!6941656 () Bool)

(declare-fun c!1288033 () Bool)

(assert (=> b!6941656 (= c!1288033 ((_ is ElementMatch!16967) lt!2475872))))

(assert (=> b!6941656 (= e!4175900 e!4175903)))

(declare-fun b!6941657 () Bool)

(assert (=> b!6941657 (= e!4175897 e!4175901)))

(declare-fun res!2831720 () Bool)

(assert (=> b!6941657 (= res!2831720 (matchRSpec!4024 (regOne!34447 lt!2475872) (_2!37127 lt!2475899)))))

(assert (=> b!6941657 (=> res!2831720 e!4175901)))

(declare-fun b!6941658 () Bool)

(assert (=> b!6941658 (= e!4175899 call!630636)))

(assert (= (and d!2167887 c!1288035) b!6941658))

(assert (= (and d!2167887 (not c!1288035)) b!6941655))

(assert (= (and b!6941655 res!2831721) b!6941656))

(assert (= (and b!6941656 c!1288033) b!6941652))

(assert (= (and b!6941656 (not c!1288033)) b!6941654))

(assert (= (and b!6941654 c!1288034) b!6941657))

(assert (= (and b!6941654 (not c!1288034)) b!6941650))

(assert (= (and b!6941657 (not res!2831720)) b!6941649))

(assert (= (and b!6941650 c!1288032) b!6941651))

(assert (= (and b!6941650 (not c!1288032)) b!6941653))

(assert (= (and b!6941651 (not res!2831719)) b!6941648))

(assert (= (or b!6941648 b!6941653) bm!630631))

(assert (= (or b!6941658 b!6941651) bm!630632))

(declare-fun m!7646680 () Bool)

(assert (=> bm!630631 m!7646680))

(declare-fun m!7646682 () Bool)

(assert (=> b!6941649 m!7646682))

(declare-fun m!7646684 () Bool)

(assert (=> bm!630632 m!7646684))

(declare-fun m!7646686 () Bool)

(assert (=> b!6941657 m!7646686))

(assert (=> b!6941061 d!2167887))

(declare-fun b!6941677 () Bool)

(declare-fun res!2831733 () Bool)

(declare-fun e!4175914 () Bool)

(assert (=> b!6941677 (=> (not res!2831733) (not e!4175914))))

(declare-fun call!630638 () Bool)

(assert (=> b!6941677 (= res!2831733 call!630638)))

(declare-fun e!4175917 () Bool)

(assert (=> b!6941677 (= e!4175917 e!4175914)))

(declare-fun b!6941678 () Bool)

(declare-fun e!4175916 () Bool)

(declare-fun e!4175915 () Bool)

(assert (=> b!6941678 (= e!4175916 e!4175915)))

(declare-fun res!2831735 () Bool)

(assert (=> b!6941678 (= res!2831735 (not (nullable!6784 (reg!17296 r1!6342))))))

(assert (=> b!6941678 (=> (not res!2831735) (not e!4175915))))

(declare-fun b!6941679 () Bool)

(declare-fun e!4175919 () Bool)

(assert (=> b!6941679 (= e!4175919 e!4175916)))

(declare-fun c!1288040 () Bool)

(assert (=> b!6941679 (= c!1288040 ((_ is Star!16967) r1!6342))))

(declare-fun b!6941680 () Bool)

(declare-fun e!4175918 () Bool)

(declare-fun e!4175920 () Bool)

(assert (=> b!6941680 (= e!4175918 e!4175920)))

(declare-fun res!2831736 () Bool)

(assert (=> b!6941680 (=> (not res!2831736) (not e!4175920))))

(declare-fun call!630639 () Bool)

(assert (=> b!6941680 (= res!2831736 call!630639)))

(declare-fun b!6941681 () Bool)

(assert (=> b!6941681 (= e!4175920 call!630638)))

(declare-fun b!6941682 () Bool)

(declare-fun call!630640 () Bool)

(assert (=> b!6941682 (= e!4175915 call!630640)))

(declare-fun b!6941683 () Bool)

(declare-fun res!2831734 () Bool)

(assert (=> b!6941683 (=> res!2831734 e!4175918)))

(assert (=> b!6941683 (= res!2831734 (not ((_ is Concat!25812) r1!6342)))))

(assert (=> b!6941683 (= e!4175917 e!4175918)))

(declare-fun bm!630634 () Bool)

(assert (=> bm!630634 (= call!630639 call!630640)))

(declare-fun b!6941684 () Bool)

(assert (=> b!6941684 (= e!4175916 e!4175917)))

(declare-fun c!1288041 () Bool)

(assert (=> b!6941684 (= c!1288041 ((_ is Union!16967) r1!6342))))

(declare-fun b!6941685 () Bool)

(assert (=> b!6941685 (= e!4175914 call!630639)))

(declare-fun bm!630635 () Bool)

(assert (=> bm!630635 (= call!630638 (validRegex!8673 (ite c!1288041 (regOne!34447 r1!6342) (regTwo!34446 r1!6342))))))

(declare-fun d!2167901 () Bool)

(declare-fun res!2831732 () Bool)

(assert (=> d!2167901 (=> res!2831732 e!4175919)))

(assert (=> d!2167901 (= res!2831732 ((_ is ElementMatch!16967) r1!6342))))

(assert (=> d!2167901 (= (validRegex!8673 r1!6342) e!4175919)))

(declare-fun bm!630633 () Bool)

(assert (=> bm!630633 (= call!630640 (validRegex!8673 (ite c!1288040 (reg!17296 r1!6342) (ite c!1288041 (regTwo!34447 r1!6342) (regOne!34446 r1!6342)))))))

(assert (= (and d!2167901 (not res!2831732)) b!6941679))

(assert (= (and b!6941679 c!1288040) b!6941678))

(assert (= (and b!6941679 (not c!1288040)) b!6941684))

(assert (= (and b!6941678 res!2831735) b!6941682))

(assert (= (and b!6941684 c!1288041) b!6941677))

(assert (= (and b!6941684 (not c!1288041)) b!6941683))

(assert (= (and b!6941677 res!2831733) b!6941685))

(assert (= (and b!6941683 (not res!2831734)) b!6941680))

(assert (= (and b!6941680 res!2831736) b!6941681))

(assert (= (or b!6941677 b!6941681) bm!630635))

(assert (= (or b!6941685 b!6941680) bm!630634))

(assert (= (or b!6941682 bm!630634) bm!630633))

(declare-fun m!7646688 () Bool)

(assert (=> b!6941678 m!7646688))

(declare-fun m!7646690 () Bool)

(assert (=> bm!630635 m!7646690))

(declare-fun m!7646692 () Bool)

(assert (=> bm!630633 m!7646692))

(assert (=> start!666582 d!2167901))

(declare-fun d!2167903 () Bool)

(assert (=> d!2167903 (= (isDefined!13437 lt!2475897) (not (isEmpty!38870 lt!2475897)))))

(declare-fun bs!1855284 () Bool)

(assert (= bs!1855284 d!2167903))

(declare-fun m!7646694 () Bool)

(assert (=> bs!1855284 m!7646694))

(assert (=> b!6941079 d!2167903))

(declare-fun b!6941686 () Bool)

(declare-fun e!4175922 () Option!16736)

(assert (=> b!6941686 (= e!4175922 None!16735)))

(declare-fun b!6941687 () Bool)

(declare-fun res!2831738 () Bool)

(declare-fun e!4175923 () Bool)

(assert (=> b!6941687 (=> (not res!2831738) (not e!4175923))))

(declare-fun lt!2476003 () Option!16736)

(assert (=> b!6941687 (= res!2831738 (matchR!9106 r1!6342 (_1!37127 (get!23387 lt!2476003))))))

(declare-fun b!6941688 () Bool)

(declare-fun lt!2476001 () Unit!160658)

(declare-fun lt!2476002 () Unit!160658)

(assert (=> b!6941688 (= lt!2476001 lt!2476002)))

(assert (=> b!6941688 (= (++!15006 (++!15006 Nil!66596 (Cons!66596 (h!73044 s!14361) Nil!66596)) (t!380463 s!14361)) s!14361)))

(assert (=> b!6941688 (= lt!2476002 (lemmaMoveElementToOtherListKeepsConcatEq!2863 Nil!66596 (h!73044 s!14361) (t!380463 s!14361) s!14361))))

(assert (=> b!6941688 (= e!4175922 (findConcatSeparation!3150 r1!6342 lt!2475872 (++!15006 Nil!66596 (Cons!66596 (h!73044 s!14361) Nil!66596)) (t!380463 s!14361) s!14361))))

(declare-fun d!2167905 () Bool)

(declare-fun e!4175925 () Bool)

(assert (=> d!2167905 e!4175925))

(declare-fun res!2831737 () Bool)

(assert (=> d!2167905 (=> res!2831737 e!4175925)))

(assert (=> d!2167905 (= res!2831737 e!4175923)))

(declare-fun res!2831740 () Bool)

(assert (=> d!2167905 (=> (not res!2831740) (not e!4175923))))

(assert (=> d!2167905 (= res!2831740 (isDefined!13437 lt!2476003))))

(declare-fun e!4175921 () Option!16736)

(assert (=> d!2167905 (= lt!2476003 e!4175921)))

(declare-fun c!1288042 () Bool)

(declare-fun e!4175924 () Bool)

(assert (=> d!2167905 (= c!1288042 e!4175924)))

(declare-fun res!2831739 () Bool)

(assert (=> d!2167905 (=> (not res!2831739) (not e!4175924))))

(assert (=> d!2167905 (= res!2831739 (matchR!9106 r1!6342 Nil!66596))))

(assert (=> d!2167905 (validRegex!8673 r1!6342)))

(assert (=> d!2167905 (= (findConcatSeparation!3150 r1!6342 lt!2475872 Nil!66596 s!14361 s!14361) lt!2476003)))

(declare-fun b!6941689 () Bool)

(assert (=> b!6941689 (= e!4175921 e!4175922)))

(declare-fun c!1288043 () Bool)

(assert (=> b!6941689 (= c!1288043 ((_ is Nil!66596) s!14361))))

(declare-fun b!6941690 () Bool)

(assert (=> b!6941690 (= e!4175923 (= (++!15006 (_1!37127 (get!23387 lt!2476003)) (_2!37127 (get!23387 lt!2476003))) s!14361))))

(declare-fun b!6941691 () Bool)

(declare-fun res!2831741 () Bool)

(assert (=> b!6941691 (=> (not res!2831741) (not e!4175923))))

(assert (=> b!6941691 (= res!2831741 (matchR!9106 lt!2475872 (_2!37127 (get!23387 lt!2476003))))))

(declare-fun b!6941692 () Bool)

(assert (=> b!6941692 (= e!4175924 (matchR!9106 lt!2475872 s!14361))))

(declare-fun b!6941693 () Bool)

(assert (=> b!6941693 (= e!4175921 (Some!16735 (tuple2!67649 Nil!66596 s!14361)))))

(declare-fun b!6941694 () Bool)

(assert (=> b!6941694 (= e!4175925 (not (isDefined!13437 lt!2476003)))))

(assert (= (and d!2167905 res!2831739) b!6941692))

(assert (= (and d!2167905 c!1288042) b!6941693))

(assert (= (and d!2167905 (not c!1288042)) b!6941689))

(assert (= (and b!6941689 c!1288043) b!6941686))

(assert (= (and b!6941689 (not c!1288043)) b!6941688))

(assert (= (and d!2167905 res!2831740) b!6941687))

(assert (= (and b!6941687 res!2831738) b!6941691))

(assert (= (and b!6941691 res!2831741) b!6941690))

(assert (= (and d!2167905 (not res!2831737)) b!6941694))

(declare-fun m!7646700 () Bool)

(assert (=> b!6941690 m!7646700))

(declare-fun m!7646702 () Bool)

(assert (=> b!6941690 m!7646702))

(declare-fun m!7646704 () Bool)

(assert (=> b!6941692 m!7646704))

(declare-fun m!7646706 () Bool)

(assert (=> b!6941694 m!7646706))

(assert (=> b!6941687 m!7646700))

(declare-fun m!7646708 () Bool)

(assert (=> b!6941687 m!7646708))

(declare-fun m!7646710 () Bool)

(assert (=> b!6941688 m!7646710))

(assert (=> b!6941688 m!7646710))

(declare-fun m!7646712 () Bool)

(assert (=> b!6941688 m!7646712))

(declare-fun m!7646714 () Bool)

(assert (=> b!6941688 m!7646714))

(assert (=> b!6941688 m!7646710))

(declare-fun m!7646716 () Bool)

(assert (=> b!6941688 m!7646716))

(assert (=> b!6941691 m!7646700))

(declare-fun m!7646718 () Bool)

(assert (=> b!6941691 m!7646718))

(assert (=> d!2167905 m!7646706))

(assert (=> d!2167905 m!7646314))

(assert (=> d!2167905 m!7646074))

(assert (=> b!6941079 d!2167905))

(declare-fun d!2167909 () Bool)

(assert (=> d!2167909 (= (Exists!3967 lambda!395480) (choose!51720 lambda!395480))))

(declare-fun bs!1855290 () Bool)

(assert (= bs!1855290 d!2167909))

(declare-fun m!7646720 () Bool)

(assert (=> bs!1855290 m!7646720))

(assert (=> b!6941078 d!2167909))

(declare-fun bs!1855295 () Bool)

(declare-fun d!2167911 () Bool)

(assert (= bs!1855295 (and d!2167911 b!6941070)))

(declare-fun lambda!395540 () Int)

(assert (=> bs!1855295 (= (and (= s!14361 lt!2475880) (= lt!2475892 r1!6342) (= r3!135 r2!6280)) (= lambda!395540 lambda!395477))))

(declare-fun bs!1855297 () Bool)

(assert (= bs!1855297 (and d!2167911 b!6941078)))

(assert (=> bs!1855297 (= lambda!395540 lambda!395479)))

(declare-fun bs!1855299 () Bool)

(assert (= bs!1855299 (and d!2167911 b!6941252)))

(assert (=> bs!1855299 (not (= lambda!395540 lambda!395498))))

(declare-fun bs!1855301 () Bool)

(assert (= bs!1855301 (and d!2167911 b!6941061)))

(assert (=> bs!1855301 (= (and (= s!14361 (_2!37127 lt!2475899)) (= lt!2475892 r2!6280)) (= lambda!395540 lambda!395475))))

(assert (=> bs!1855301 (not (= lambda!395540 lambda!395476))))

(declare-fun bs!1855304 () Bool)

(assert (= bs!1855304 (and d!2167911 d!2167831)))

(assert (=> bs!1855304 (not (= lambda!395540 lambda!395528))))

(declare-fun bs!1855306 () Bool)

(assert (= bs!1855306 (and d!2167911 b!6941062)))

(assert (=> bs!1855306 (= (and (= lt!2475892 r1!6342) (= r3!135 lt!2475872)) (= lambda!395540 lambda!395473))))

(assert (=> bs!1855297 (not (= lambda!395540 lambda!395480))))

(assert (=> bs!1855306 (not (= lambda!395540 lambda!395474))))

(declare-fun bs!1855309 () Bool)

(assert (= bs!1855309 (and d!2167911 b!6941648)))

(assert (=> bs!1855309 (not (= lambda!395540 lambda!395536))))

(declare-fun bs!1855311 () Bool)

(assert (= bs!1855311 (and d!2167911 b!6941177)))

(assert (=> bs!1855311 (not (= lambda!395540 lambda!395485))))

(declare-fun bs!1855313 () Bool)

(assert (= bs!1855313 (and d!2167911 b!6941383)))

(assert (=> bs!1855313 (not (= lambda!395540 lambda!395505))))

(declare-fun bs!1855315 () Bool)

(assert (= bs!1855315 (and d!2167911 b!6941653)))

(assert (=> bs!1855315 (not (= lambda!395540 lambda!395537))))

(assert (=> bs!1855295 (not (= lambda!395540 lambda!395478))))

(declare-fun bs!1855317 () Bool)

(assert (= bs!1855317 (and d!2167911 b!6941257)))

(assert (=> bs!1855317 (not (= lambda!395540 lambda!395501))))

(declare-fun bs!1855319 () Bool)

(assert (= bs!1855319 (and d!2167911 b!6941182)))

(assert (=> bs!1855319 (not (= lambda!395540 lambda!395486))))

(declare-fun bs!1855320 () Bool)

(assert (= bs!1855320 (and d!2167911 d!2167859)))

(assert (=> bs!1855320 (= (and (= s!14361 (_2!37127 lt!2475899)) (= lt!2475892 r2!6280)) (= lambda!395540 lambda!395531))))

(declare-fun bs!1855322 () Bool)

(assert (= bs!1855322 (and d!2167911 d!2167795)))

(assert (=> bs!1855322 (= (and (= s!14361 lt!2475880) (= lt!2475892 r1!6342) (= r3!135 r2!6280)) (= lambda!395540 lambda!395514))))

(declare-fun bs!1855324 () Bool)

(assert (= bs!1855324 (and d!2167911 d!2167869)))

(assert (=> bs!1855324 (not (= lambda!395540 lambda!395535))))

(declare-fun bs!1855326 () Bool)

(assert (= bs!1855326 (and d!2167911 b!6941388)))

(assert (=> bs!1855326 (not (= lambda!395540 lambda!395507))))

(assert (=> bs!1855304 (= (and (= s!14361 lt!2475880) (= lt!2475892 r1!6342) (= r3!135 r2!6280)) (= lambda!395540 lambda!395526))))

(assert (=> bs!1855324 (= (and (= s!14361 (_2!37127 lt!2475899)) (= lt!2475892 r2!6280)) (= lambda!395540 lambda!395533))))

(assert (=> d!2167911 true))

(assert (=> d!2167911 true))

(assert (=> d!2167911 true))

(assert (=> d!2167911 (= (isDefined!13437 (findConcatSeparation!3150 lt!2475892 r3!135 Nil!66596 s!14361 s!14361)) (Exists!3967 lambda!395540))))

(declare-fun lt!2476005 () Unit!160658)

(assert (=> d!2167911 (= lt!2476005 (choose!51718 lt!2475892 r3!135 s!14361))))

(assert (=> d!2167911 (validRegex!8673 lt!2475892)))

(assert (=> d!2167911 (= (lemmaFindConcatSeparationEquivalentToExists!2908 lt!2475892 r3!135 s!14361) lt!2476005)))

(declare-fun bs!1855329 () Bool)

(assert (= bs!1855329 d!2167911))

(assert (=> bs!1855329 m!7646228))

(assert (=> bs!1855329 m!7646120))

(declare-fun m!7646722 () Bool)

(assert (=> bs!1855329 m!7646722))

(assert (=> bs!1855329 m!7646120))

(assert (=> bs!1855329 m!7646122))

(declare-fun m!7646724 () Bool)

(assert (=> bs!1855329 m!7646724))

(assert (=> b!6941078 d!2167911))

(declare-fun bs!1855331 () Bool)

(declare-fun d!2167913 () Bool)

(assert (= bs!1855331 (and d!2167913 b!6941070)))

(declare-fun lambda!395542 () Int)

(assert (=> bs!1855331 (= (and (= s!14361 lt!2475880) (= lt!2475892 r1!6342) (= r3!135 r2!6280)) (= lambda!395542 lambda!395477))))

(declare-fun bs!1855332 () Bool)

(assert (= bs!1855332 (and d!2167913 b!6941078)))

(assert (=> bs!1855332 (= lambda!395542 lambda!395479)))

(declare-fun bs!1855334 () Bool)

(assert (= bs!1855334 (and d!2167913 b!6941252)))

(assert (=> bs!1855334 (not (= lambda!395542 lambda!395498))))

(declare-fun bs!1855335 () Bool)

(assert (= bs!1855335 (and d!2167913 d!2167911)))

(assert (=> bs!1855335 (= lambda!395542 lambda!395540)))

(declare-fun bs!1855336 () Bool)

(assert (= bs!1855336 (and d!2167913 b!6941061)))

(assert (=> bs!1855336 (= (and (= s!14361 (_2!37127 lt!2475899)) (= lt!2475892 r2!6280)) (= lambda!395542 lambda!395475))))

(assert (=> bs!1855336 (not (= lambda!395542 lambda!395476))))

(declare-fun bs!1855337 () Bool)

(assert (= bs!1855337 (and d!2167913 d!2167831)))

(assert (=> bs!1855337 (not (= lambda!395542 lambda!395528))))

(declare-fun bs!1855338 () Bool)

(assert (= bs!1855338 (and d!2167913 b!6941062)))

(assert (=> bs!1855338 (= (and (= lt!2475892 r1!6342) (= r3!135 lt!2475872)) (= lambda!395542 lambda!395473))))

(assert (=> bs!1855332 (not (= lambda!395542 lambda!395480))))

(assert (=> bs!1855338 (not (= lambda!395542 lambda!395474))))

(declare-fun bs!1855339 () Bool)

(assert (= bs!1855339 (and d!2167913 b!6941648)))

(assert (=> bs!1855339 (not (= lambda!395542 lambda!395536))))

(declare-fun bs!1855340 () Bool)

(assert (= bs!1855340 (and d!2167913 b!6941177)))

(assert (=> bs!1855340 (not (= lambda!395542 lambda!395485))))

(declare-fun bs!1855341 () Bool)

(assert (= bs!1855341 (and d!2167913 b!6941383)))

(assert (=> bs!1855341 (not (= lambda!395542 lambda!395505))))

(declare-fun bs!1855342 () Bool)

(assert (= bs!1855342 (and d!2167913 b!6941653)))

(assert (=> bs!1855342 (not (= lambda!395542 lambda!395537))))

(assert (=> bs!1855331 (not (= lambda!395542 lambda!395478))))

(declare-fun bs!1855343 () Bool)

(assert (= bs!1855343 (and d!2167913 b!6941257)))

(assert (=> bs!1855343 (not (= lambda!395542 lambda!395501))))

(declare-fun bs!1855344 () Bool)

(assert (= bs!1855344 (and d!2167913 b!6941182)))

(assert (=> bs!1855344 (not (= lambda!395542 lambda!395486))))

(declare-fun bs!1855345 () Bool)

(assert (= bs!1855345 (and d!2167913 d!2167859)))

(assert (=> bs!1855345 (= (and (= s!14361 (_2!37127 lt!2475899)) (= lt!2475892 r2!6280)) (= lambda!395542 lambda!395531))))

(declare-fun bs!1855346 () Bool)

(assert (= bs!1855346 (and d!2167913 d!2167795)))

(assert (=> bs!1855346 (= (and (= s!14361 lt!2475880) (= lt!2475892 r1!6342) (= r3!135 r2!6280)) (= lambda!395542 lambda!395514))))

(declare-fun bs!1855347 () Bool)

(assert (= bs!1855347 (and d!2167913 d!2167869)))

(assert (=> bs!1855347 (not (= lambda!395542 lambda!395535))))

(declare-fun bs!1855348 () Bool)

(assert (= bs!1855348 (and d!2167913 b!6941388)))

(assert (=> bs!1855348 (not (= lambda!395542 lambda!395507))))

(assert (=> bs!1855337 (= (and (= s!14361 lt!2475880) (= lt!2475892 r1!6342) (= r3!135 r2!6280)) (= lambda!395542 lambda!395526))))

(assert (=> bs!1855347 (= (and (= s!14361 (_2!37127 lt!2475899)) (= lt!2475892 r2!6280)) (= lambda!395542 lambda!395533))))

(assert (=> d!2167913 true))

(assert (=> d!2167913 true))

(assert (=> d!2167913 true))

(declare-fun lambda!395543 () Int)

(assert (=> bs!1855331 (not (= lambda!395543 lambda!395477))))

(assert (=> bs!1855332 (not (= lambda!395543 lambda!395479))))

(assert (=> bs!1855334 (not (= lambda!395543 lambda!395498))))

(assert (=> bs!1855335 (not (= lambda!395543 lambda!395540))))

(assert (=> bs!1855336 (not (= lambda!395543 lambda!395475))))

(assert (=> bs!1855336 (= (and (= s!14361 (_2!37127 lt!2475899)) (= lt!2475892 r2!6280)) (= lambda!395543 lambda!395476))))

(assert (=> bs!1855337 (= (and (= s!14361 lt!2475880) (= lt!2475892 r1!6342) (= r3!135 r2!6280)) (= lambda!395543 lambda!395528))))

(assert (=> bs!1855338 (not (= lambda!395543 lambda!395473))))

(assert (=> bs!1855332 (= lambda!395543 lambda!395480)))

(assert (=> bs!1855338 (= (and (= lt!2475892 r1!6342) (= r3!135 lt!2475872)) (= lambda!395543 lambda!395474))))

(assert (=> bs!1855339 (not (= lambda!395543 lambda!395536))))

(assert (=> bs!1855340 (not (= lambda!395543 lambda!395485))))

(assert (=> bs!1855341 (not (= lambda!395543 lambda!395505))))

(assert (=> bs!1855342 (= (and (= s!14361 (_2!37127 lt!2475899)) (= lt!2475892 (regOne!34446 lt!2475872)) (= r3!135 (regTwo!34446 lt!2475872))) (= lambda!395543 lambda!395537))))

(assert (=> bs!1855331 (= (and (= s!14361 lt!2475880) (= lt!2475892 r1!6342) (= r3!135 r2!6280)) (= lambda!395543 lambda!395478))))

(assert (=> bs!1855343 (= (and (= s!14361 (_1!37127 lt!2475891)) (= lt!2475892 (regOne!34446 r2!6280)) (= r3!135 (regTwo!34446 r2!6280))) (= lambda!395543 lambda!395501))))

(assert (=> bs!1855344 (= (and (= s!14361 (_2!37127 lt!2475891)) (= lt!2475892 (regOne!34446 r3!135)) (= r3!135 (regTwo!34446 r3!135))) (= lambda!395543 lambda!395486))))

(assert (=> bs!1855345 (not (= lambda!395543 lambda!395531))))

(assert (=> bs!1855346 (not (= lambda!395543 lambda!395514))))

(assert (=> bs!1855347 (= (and (= s!14361 (_2!37127 lt!2475899)) (= lt!2475892 r2!6280)) (= lambda!395543 lambda!395535))))

(assert (=> bs!1855348 (= (and (= s!14361 lt!2475880) (= lt!2475892 (regOne!34446 lt!2475892)) (= r3!135 (regTwo!34446 lt!2475892))) (= lambda!395543 lambda!395507))))

(declare-fun bs!1855351 () Bool)

(assert (= bs!1855351 d!2167913))

(assert (=> bs!1855351 (not (= lambda!395543 lambda!395542))))

(assert (=> bs!1855337 (not (= lambda!395543 lambda!395526))))

(assert (=> bs!1855347 (not (= lambda!395543 lambda!395533))))

(assert (=> d!2167913 true))

(assert (=> d!2167913 true))

(assert (=> d!2167913 true))

(assert (=> d!2167913 (= (Exists!3967 lambda!395542) (Exists!3967 lambda!395543))))

(declare-fun lt!2476006 () Unit!160658)

(assert (=> d!2167913 (= lt!2476006 (choose!51722 lt!2475892 r3!135 s!14361))))

(assert (=> d!2167913 (validRegex!8673 lt!2475892)))

(assert (=> d!2167913 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2428 lt!2475892 r3!135 s!14361) lt!2476006)))

(declare-fun m!7646748 () Bool)

(assert (=> bs!1855351 m!7646748))

(declare-fun m!7646750 () Bool)

(assert (=> bs!1855351 m!7646750))

(declare-fun m!7646752 () Bool)

(assert (=> bs!1855351 m!7646752))

(assert (=> bs!1855351 m!7646228))

(assert (=> b!6941078 d!2167913))

(declare-fun b!6941719 () Bool)

(declare-fun e!4175936 () Option!16736)

(assert (=> b!6941719 (= e!4175936 None!16735)))

(declare-fun b!6941720 () Bool)

(declare-fun res!2831751 () Bool)

(declare-fun e!4175937 () Bool)

(assert (=> b!6941720 (=> (not res!2831751) (not e!4175937))))

(declare-fun lt!2476010 () Option!16736)

(assert (=> b!6941720 (= res!2831751 (matchR!9106 lt!2475892 (_1!37127 (get!23387 lt!2476010))))))

(declare-fun b!6941721 () Bool)

(declare-fun lt!2476008 () Unit!160658)

(declare-fun lt!2476009 () Unit!160658)

(assert (=> b!6941721 (= lt!2476008 lt!2476009)))

(assert (=> b!6941721 (= (++!15006 (++!15006 Nil!66596 (Cons!66596 (h!73044 s!14361) Nil!66596)) (t!380463 s!14361)) s!14361)))

(assert (=> b!6941721 (= lt!2476009 (lemmaMoveElementToOtherListKeepsConcatEq!2863 Nil!66596 (h!73044 s!14361) (t!380463 s!14361) s!14361))))

(assert (=> b!6941721 (= e!4175936 (findConcatSeparation!3150 lt!2475892 r3!135 (++!15006 Nil!66596 (Cons!66596 (h!73044 s!14361) Nil!66596)) (t!380463 s!14361) s!14361))))

(declare-fun d!2167921 () Bool)

(declare-fun e!4175939 () Bool)

(assert (=> d!2167921 e!4175939))

(declare-fun res!2831750 () Bool)

(assert (=> d!2167921 (=> res!2831750 e!4175939)))

(assert (=> d!2167921 (= res!2831750 e!4175937)))

(declare-fun res!2831753 () Bool)

(assert (=> d!2167921 (=> (not res!2831753) (not e!4175937))))

(assert (=> d!2167921 (= res!2831753 (isDefined!13437 lt!2476010))))

(declare-fun e!4175935 () Option!16736)

(assert (=> d!2167921 (= lt!2476010 e!4175935)))

(declare-fun c!1288047 () Bool)

(declare-fun e!4175938 () Bool)

(assert (=> d!2167921 (= c!1288047 e!4175938)))

(declare-fun res!2831752 () Bool)

(assert (=> d!2167921 (=> (not res!2831752) (not e!4175938))))

(assert (=> d!2167921 (= res!2831752 (matchR!9106 lt!2475892 Nil!66596))))

(assert (=> d!2167921 (validRegex!8673 lt!2475892)))

(assert (=> d!2167921 (= (findConcatSeparation!3150 lt!2475892 r3!135 Nil!66596 s!14361 s!14361) lt!2476010)))

(declare-fun b!6941722 () Bool)

(assert (=> b!6941722 (= e!4175935 e!4175936)))

(declare-fun c!1288048 () Bool)

(assert (=> b!6941722 (= c!1288048 ((_ is Nil!66596) s!14361))))

(declare-fun b!6941723 () Bool)

(assert (=> b!6941723 (= e!4175937 (= (++!15006 (_1!37127 (get!23387 lt!2476010)) (_2!37127 (get!23387 lt!2476010))) s!14361))))

(declare-fun b!6941724 () Bool)

(declare-fun res!2831754 () Bool)

(assert (=> b!6941724 (=> (not res!2831754) (not e!4175937))))

(assert (=> b!6941724 (= res!2831754 (matchR!9106 r3!135 (_2!37127 (get!23387 lt!2476010))))))

(declare-fun b!6941725 () Bool)

(assert (=> b!6941725 (= e!4175938 (matchR!9106 r3!135 s!14361))))

(declare-fun b!6941726 () Bool)

(assert (=> b!6941726 (= e!4175935 (Some!16735 (tuple2!67649 Nil!66596 s!14361)))))

(declare-fun b!6941727 () Bool)

(assert (=> b!6941727 (= e!4175939 (not (isDefined!13437 lt!2476010)))))

(assert (= (and d!2167921 res!2831752) b!6941725))

(assert (= (and d!2167921 c!1288047) b!6941726))

(assert (= (and d!2167921 (not c!1288047)) b!6941722))

(assert (= (and b!6941722 c!1288048) b!6941719))

(assert (= (and b!6941722 (not c!1288048)) b!6941721))

(assert (= (and d!2167921 res!2831753) b!6941720))

(assert (= (and b!6941720 res!2831751) b!6941724))

(assert (= (and b!6941724 res!2831754) b!6941723))

(assert (= (and d!2167921 (not res!2831750)) b!6941727))

(declare-fun m!7646754 () Bool)

(assert (=> b!6941723 m!7646754))

(declare-fun m!7646756 () Bool)

(assert (=> b!6941723 m!7646756))

(declare-fun m!7646758 () Bool)

(assert (=> b!6941725 m!7646758))

(declare-fun m!7646760 () Bool)

(assert (=> b!6941727 m!7646760))

(assert (=> b!6941720 m!7646754))

(declare-fun m!7646762 () Bool)

(assert (=> b!6941720 m!7646762))

(assert (=> b!6941721 m!7646710))

(assert (=> b!6941721 m!7646710))

(assert (=> b!6941721 m!7646712))

(assert (=> b!6941721 m!7646714))

(assert (=> b!6941721 m!7646710))

(declare-fun m!7646764 () Bool)

(assert (=> b!6941721 m!7646764))

(assert (=> b!6941724 m!7646754))

(declare-fun m!7646766 () Bool)

(assert (=> b!6941724 m!7646766))

(assert (=> d!2167921 m!7646760))

(declare-fun m!7646768 () Bool)

(assert (=> d!2167921 m!7646768))

(assert (=> d!2167921 m!7646228))

(assert (=> b!6941078 d!2167921))

(declare-fun d!2167923 () Bool)

(assert (=> d!2167923 (= (Exists!3967 lambda!395479) (choose!51720 lambda!395479))))

(declare-fun bs!1855352 () Bool)

(assert (= bs!1855352 d!2167923))

(declare-fun m!7646770 () Bool)

(assert (=> bs!1855352 m!7646770))

(assert (=> b!6941078 d!2167923))

(declare-fun d!2167925 () Bool)

(assert (=> d!2167925 (isDefined!13437 (findConcatSeparation!3150 lt!2475892 r3!135 Nil!66596 s!14361 s!14361))))

(declare-fun lt!2476011 () Unit!160658)

(assert (=> d!2167925 (= lt!2476011 (choose!51723 lt!2475892 r3!135 lt!2475880 (_2!37127 lt!2475891) s!14361 Nil!66596 s!14361))))

(assert (=> d!2167925 (validRegex!8673 lt!2475892)))

(assert (=> d!2167925 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!110 lt!2475892 r3!135 lt!2475880 (_2!37127 lt!2475891) s!14361 Nil!66596 s!14361) lt!2476011)))

(declare-fun bs!1855353 () Bool)

(assert (= bs!1855353 d!2167925))

(assert (=> bs!1855353 m!7646120))

(assert (=> bs!1855353 m!7646120))

(assert (=> bs!1855353 m!7646122))

(declare-fun m!7646772 () Bool)

(assert (=> bs!1855353 m!7646772))

(assert (=> bs!1855353 m!7646228))

(assert (=> b!6941078 d!2167925))

(declare-fun d!2167927 () Bool)

(assert (=> d!2167927 (= (isDefined!13437 (findConcatSeparation!3150 lt!2475892 r3!135 Nil!66596 s!14361 s!14361)) (not (isEmpty!38870 (findConcatSeparation!3150 lt!2475892 r3!135 Nil!66596 s!14361 s!14361))))))

(declare-fun bs!1855354 () Bool)

(assert (= bs!1855354 d!2167927))

(assert (=> bs!1855354 m!7646120))

(declare-fun m!7646774 () Bool)

(assert (=> bs!1855354 m!7646774))

(assert (=> b!6941078 d!2167927))

(declare-fun b!6941761 () Bool)

(declare-fun e!4175954 () Bool)

(assert (=> b!6941761 (= e!4175954 (not (= (head!13912 s!14361) (c!1287895 lt!2475878))))))

(declare-fun b!6941762 () Bool)

(declare-fun e!4175953 () Bool)

(assert (=> b!6941762 (= e!4175953 (= (head!13912 s!14361) (c!1287895 lt!2475878)))))

(declare-fun b!6941763 () Bool)

(declare-fun res!2831762 () Bool)

(assert (=> b!6941763 (=> res!2831762 e!4175954)))

(assert (=> b!6941763 (= res!2831762 (not (isEmpty!38869 (tail!12964 s!14361))))))

(declare-fun b!6941764 () Bool)

(declare-fun res!2831761 () Bool)

(declare-fun e!4175955 () Bool)

(assert (=> b!6941764 (=> res!2831761 e!4175955)))

(assert (=> b!6941764 (= res!2831761 (not ((_ is ElementMatch!16967) lt!2475878)))))

(declare-fun e!4175952 () Bool)

(assert (=> b!6941764 (= e!4175952 e!4175955)))

(declare-fun b!6941765 () Bool)

(declare-fun e!4175949 () Bool)

(assert (=> b!6941765 (= e!4175949 e!4175952)))

(declare-fun c!1288049 () Bool)

(assert (=> b!6941765 (= c!1288049 ((_ is EmptyLang!16967) lt!2475878))))

(declare-fun b!6941766 () Bool)

(declare-fun res!2831755 () Bool)

(assert (=> b!6941766 (=> (not res!2831755) (not e!4175953))))

(assert (=> b!6941766 (= res!2831755 (isEmpty!38869 (tail!12964 s!14361)))))

(declare-fun b!6941767 () Bool)

(declare-fun e!4175951 () Bool)

(assert (=> b!6941767 (= e!4175951 (nullable!6784 lt!2475878))))

(declare-fun b!6941769 () Bool)

(assert (=> b!6941769 (= e!4175951 (matchR!9106 (derivativeStep!5459 lt!2475878 (head!13912 s!14361)) (tail!12964 s!14361)))))

(declare-fun b!6941770 () Bool)

(declare-fun lt!2476012 () Bool)

(declare-fun call!630642 () Bool)

(assert (=> b!6941770 (= e!4175949 (= lt!2476012 call!630642))))

(declare-fun b!6941771 () Bool)

(declare-fun e!4175950 () Bool)

(assert (=> b!6941771 (= e!4175950 e!4175954)))

(declare-fun res!2831757 () Bool)

(assert (=> b!6941771 (=> res!2831757 e!4175954)))

(assert (=> b!6941771 (= res!2831757 call!630642)))

(declare-fun b!6941772 () Bool)

(declare-fun res!2831759 () Bool)

(assert (=> b!6941772 (=> res!2831759 e!4175955)))

(assert (=> b!6941772 (= res!2831759 e!4175953)))

(declare-fun res!2831760 () Bool)

(assert (=> b!6941772 (=> (not res!2831760) (not e!4175953))))

(assert (=> b!6941772 (= res!2831760 lt!2476012)))

(declare-fun b!6941773 () Bool)

(assert (=> b!6941773 (= e!4175952 (not lt!2476012))))

(declare-fun bm!630637 () Bool)

(assert (=> bm!630637 (= call!630642 (isEmpty!38869 s!14361))))

(declare-fun b!6941774 () Bool)

(assert (=> b!6941774 (= e!4175955 e!4175950)))

(declare-fun res!2831756 () Bool)

(assert (=> b!6941774 (=> (not res!2831756) (not e!4175950))))

(assert (=> b!6941774 (= res!2831756 (not lt!2476012))))

(declare-fun b!6941768 () Bool)

(declare-fun res!2831758 () Bool)

(assert (=> b!6941768 (=> (not res!2831758) (not e!4175953))))

(assert (=> b!6941768 (= res!2831758 (not call!630642))))

(declare-fun d!2167929 () Bool)

(assert (=> d!2167929 e!4175949))

(declare-fun c!1288051 () Bool)

(assert (=> d!2167929 (= c!1288051 ((_ is EmptyExpr!16967) lt!2475878))))

(assert (=> d!2167929 (= lt!2476012 e!4175951)))

(declare-fun c!1288050 () Bool)

(assert (=> d!2167929 (= c!1288050 (isEmpty!38869 s!14361))))

(assert (=> d!2167929 (validRegex!8673 lt!2475878)))

(assert (=> d!2167929 (= (matchR!9106 lt!2475878 s!14361) lt!2476012)))

(assert (= (and d!2167929 c!1288050) b!6941767))

(assert (= (and d!2167929 (not c!1288050)) b!6941769))

(assert (= (and d!2167929 c!1288051) b!6941770))

(assert (= (and d!2167929 (not c!1288051)) b!6941765))

(assert (= (and b!6941765 c!1288049) b!6941773))

(assert (= (and b!6941765 (not c!1288049)) b!6941764))

(assert (= (and b!6941764 (not res!2831761)) b!6941772))

(assert (= (and b!6941772 res!2831760) b!6941768))

(assert (= (and b!6941768 res!2831758) b!6941766))

(assert (= (and b!6941766 res!2831755) b!6941762))

(assert (= (and b!6941772 (not res!2831759)) b!6941774))

(assert (= (and b!6941774 res!2831756) b!6941771))

(assert (= (and b!6941771 (not res!2831757)) b!6941763))

(assert (= (and b!6941763 (not res!2831762)) b!6941761))

(assert (= (or b!6941770 b!6941771 b!6941768) bm!630637))

(declare-fun m!7646776 () Bool)

(assert (=> d!2167929 m!7646776))

(declare-fun m!7646778 () Bool)

(assert (=> d!2167929 m!7646778))

(declare-fun m!7646780 () Bool)

(assert (=> b!6941761 m!7646780))

(declare-fun m!7646782 () Bool)

(assert (=> b!6941766 m!7646782))

(assert (=> b!6941766 m!7646782))

(declare-fun m!7646784 () Bool)

(assert (=> b!6941766 m!7646784))

(declare-fun m!7646786 () Bool)

(assert (=> b!6941767 m!7646786))

(assert (=> b!6941762 m!7646780))

(assert (=> bm!630637 m!7646776))

(assert (=> b!6941763 m!7646782))

(assert (=> b!6941763 m!7646782))

(assert (=> b!6941763 m!7646784))

(assert (=> b!6941769 m!7646780))

(assert (=> b!6941769 m!7646780))

(declare-fun m!7646788 () Bool)

(assert (=> b!6941769 m!7646788))

(assert (=> b!6941769 m!7646782))

(assert (=> b!6941769 m!7646788))

(assert (=> b!6941769 m!7646782))

(declare-fun m!7646790 () Bool)

(assert (=> b!6941769 m!7646790))

(assert (=> b!6941067 d!2167929))

(declare-fun bs!1855355 () Bool)

(declare-fun b!6941799 () Bool)

(assert (= bs!1855355 (and b!6941799 d!2167913)))

(declare-fun lambda!395544 () Int)

(assert (=> bs!1855355 (not (= lambda!395544 lambda!395543))))

(declare-fun bs!1855356 () Bool)

(assert (= bs!1855356 (and b!6941799 b!6941070)))

(assert (=> bs!1855356 (not (= lambda!395544 lambda!395477))))

(declare-fun bs!1855357 () Bool)

(assert (= bs!1855357 (and b!6941799 b!6941078)))

(assert (=> bs!1855357 (not (= lambda!395544 lambda!395479))))

(declare-fun bs!1855358 () Bool)

(assert (= bs!1855358 (and b!6941799 b!6941252)))

(assert (=> bs!1855358 (= (and (= s!14361 (_1!37127 lt!2475891)) (= (reg!17296 lt!2475878) (reg!17296 r2!6280)) (= lt!2475878 r2!6280)) (= lambda!395544 lambda!395498))))

(declare-fun bs!1855359 () Bool)

(assert (= bs!1855359 (and b!6941799 d!2167911)))

(assert (=> bs!1855359 (not (= lambda!395544 lambda!395540))))

(declare-fun bs!1855360 () Bool)

(assert (= bs!1855360 (and b!6941799 b!6941061)))

(assert (=> bs!1855360 (not (= lambda!395544 lambda!395475))))

(assert (=> bs!1855360 (not (= lambda!395544 lambda!395476))))

(declare-fun bs!1855361 () Bool)

(assert (= bs!1855361 (and b!6941799 d!2167831)))

(assert (=> bs!1855361 (not (= lambda!395544 lambda!395528))))

(declare-fun bs!1855362 () Bool)

(assert (= bs!1855362 (and b!6941799 b!6941062)))

(assert (=> bs!1855362 (not (= lambda!395544 lambda!395473))))

(assert (=> bs!1855357 (not (= lambda!395544 lambda!395480))))

(assert (=> bs!1855362 (not (= lambda!395544 lambda!395474))))

(declare-fun bs!1855363 () Bool)

(assert (= bs!1855363 (and b!6941799 b!6941648)))

(assert (=> bs!1855363 (= (and (= s!14361 (_2!37127 lt!2475899)) (= (reg!17296 lt!2475878) (reg!17296 lt!2475872)) (= lt!2475878 lt!2475872)) (= lambda!395544 lambda!395536))))

(declare-fun bs!1855364 () Bool)

(assert (= bs!1855364 (and b!6941799 b!6941177)))

(assert (=> bs!1855364 (= (and (= s!14361 (_2!37127 lt!2475891)) (= (reg!17296 lt!2475878) (reg!17296 r3!135)) (= lt!2475878 r3!135)) (= lambda!395544 lambda!395485))))

(declare-fun bs!1855365 () Bool)

(assert (= bs!1855365 (and b!6941799 b!6941383)))

(assert (=> bs!1855365 (= (and (= s!14361 lt!2475880) (= (reg!17296 lt!2475878) (reg!17296 lt!2475892)) (= lt!2475878 lt!2475892)) (= lambda!395544 lambda!395505))))

(declare-fun bs!1855366 () Bool)

(assert (= bs!1855366 (and b!6941799 b!6941653)))

(assert (=> bs!1855366 (not (= lambda!395544 lambda!395537))))

(assert (=> bs!1855356 (not (= lambda!395544 lambda!395478))))

(declare-fun bs!1855367 () Bool)

(assert (= bs!1855367 (and b!6941799 b!6941257)))

(assert (=> bs!1855367 (not (= lambda!395544 lambda!395501))))

(declare-fun bs!1855368 () Bool)

(assert (= bs!1855368 (and b!6941799 b!6941182)))

(assert (=> bs!1855368 (not (= lambda!395544 lambda!395486))))

(declare-fun bs!1855369 () Bool)

(assert (= bs!1855369 (and b!6941799 d!2167859)))

(assert (=> bs!1855369 (not (= lambda!395544 lambda!395531))))

(declare-fun bs!1855370 () Bool)

(assert (= bs!1855370 (and b!6941799 d!2167795)))

(assert (=> bs!1855370 (not (= lambda!395544 lambda!395514))))

(declare-fun bs!1855371 () Bool)

(assert (= bs!1855371 (and b!6941799 d!2167869)))

(assert (=> bs!1855371 (not (= lambda!395544 lambda!395535))))

(declare-fun bs!1855372 () Bool)

(assert (= bs!1855372 (and b!6941799 b!6941388)))

(assert (=> bs!1855372 (not (= lambda!395544 lambda!395507))))

(assert (=> bs!1855355 (not (= lambda!395544 lambda!395542))))

(assert (=> bs!1855361 (not (= lambda!395544 lambda!395526))))

(assert (=> bs!1855371 (not (= lambda!395544 lambda!395533))))

(assert (=> b!6941799 true))

(assert (=> b!6941799 true))

(declare-fun bs!1855373 () Bool)

(declare-fun b!6941804 () Bool)

(assert (= bs!1855373 (and b!6941804 d!2167913)))

(declare-fun lambda!395545 () Int)

(assert (=> bs!1855373 (= (and (= (regOne!34446 lt!2475878) lt!2475892) (= (regTwo!34446 lt!2475878) r3!135)) (= lambda!395545 lambda!395543))))

(declare-fun bs!1855374 () Bool)

(assert (= bs!1855374 (and b!6941804 b!6941070)))

(assert (=> bs!1855374 (not (= lambda!395545 lambda!395477))))

(declare-fun bs!1855375 () Bool)

(assert (= bs!1855375 (and b!6941804 b!6941799)))

(assert (=> bs!1855375 (not (= lambda!395545 lambda!395544))))

(declare-fun bs!1855376 () Bool)

(assert (= bs!1855376 (and b!6941804 b!6941078)))

(assert (=> bs!1855376 (not (= lambda!395545 lambda!395479))))

(declare-fun bs!1855377 () Bool)

(assert (= bs!1855377 (and b!6941804 b!6941252)))

(assert (=> bs!1855377 (not (= lambda!395545 lambda!395498))))

(declare-fun bs!1855378 () Bool)

(assert (= bs!1855378 (and b!6941804 d!2167911)))

(assert (=> bs!1855378 (not (= lambda!395545 lambda!395540))))

(declare-fun bs!1855379 () Bool)

(assert (= bs!1855379 (and b!6941804 b!6941061)))

(assert (=> bs!1855379 (not (= lambda!395545 lambda!395475))))

(assert (=> bs!1855379 (= (and (= s!14361 (_2!37127 lt!2475899)) (= (regOne!34446 lt!2475878) r2!6280) (= (regTwo!34446 lt!2475878) r3!135)) (= lambda!395545 lambda!395476))))

(declare-fun bs!1855380 () Bool)

(assert (= bs!1855380 (and b!6941804 d!2167831)))

(assert (=> bs!1855380 (= (and (= s!14361 lt!2475880) (= (regOne!34446 lt!2475878) r1!6342) (= (regTwo!34446 lt!2475878) r2!6280)) (= lambda!395545 lambda!395528))))

(declare-fun bs!1855381 () Bool)

(assert (= bs!1855381 (and b!6941804 b!6941062)))

(assert (=> bs!1855381 (not (= lambda!395545 lambda!395473))))

(assert (=> bs!1855376 (= (and (= (regOne!34446 lt!2475878) lt!2475892) (= (regTwo!34446 lt!2475878) r3!135)) (= lambda!395545 lambda!395480))))

(assert (=> bs!1855381 (= (and (= (regOne!34446 lt!2475878) r1!6342) (= (regTwo!34446 lt!2475878) lt!2475872)) (= lambda!395545 lambda!395474))))

(declare-fun bs!1855382 () Bool)

(assert (= bs!1855382 (and b!6941804 b!6941648)))

(assert (=> bs!1855382 (not (= lambda!395545 lambda!395536))))

(declare-fun bs!1855383 () Bool)

(assert (= bs!1855383 (and b!6941804 b!6941177)))

(assert (=> bs!1855383 (not (= lambda!395545 lambda!395485))))

(declare-fun bs!1855384 () Bool)

(assert (= bs!1855384 (and b!6941804 b!6941383)))

(assert (=> bs!1855384 (not (= lambda!395545 lambda!395505))))

(declare-fun bs!1855385 () Bool)

(assert (= bs!1855385 (and b!6941804 b!6941653)))

(assert (=> bs!1855385 (= (and (= s!14361 (_2!37127 lt!2475899)) (= (regOne!34446 lt!2475878) (regOne!34446 lt!2475872)) (= (regTwo!34446 lt!2475878) (regTwo!34446 lt!2475872))) (= lambda!395545 lambda!395537))))

(assert (=> bs!1855374 (= (and (= s!14361 lt!2475880) (= (regOne!34446 lt!2475878) r1!6342) (= (regTwo!34446 lt!2475878) r2!6280)) (= lambda!395545 lambda!395478))))

(declare-fun bs!1855386 () Bool)

(assert (= bs!1855386 (and b!6941804 b!6941257)))

(assert (=> bs!1855386 (= (and (= s!14361 (_1!37127 lt!2475891)) (= (regOne!34446 lt!2475878) (regOne!34446 r2!6280)) (= (regTwo!34446 lt!2475878) (regTwo!34446 r2!6280))) (= lambda!395545 lambda!395501))))

(declare-fun bs!1855387 () Bool)

(assert (= bs!1855387 (and b!6941804 b!6941182)))

(assert (=> bs!1855387 (= (and (= s!14361 (_2!37127 lt!2475891)) (= (regOne!34446 lt!2475878) (regOne!34446 r3!135)) (= (regTwo!34446 lt!2475878) (regTwo!34446 r3!135))) (= lambda!395545 lambda!395486))))

(declare-fun bs!1855388 () Bool)

(assert (= bs!1855388 (and b!6941804 d!2167859)))

(assert (=> bs!1855388 (not (= lambda!395545 lambda!395531))))

(declare-fun bs!1855389 () Bool)

(assert (= bs!1855389 (and b!6941804 d!2167795)))

(assert (=> bs!1855389 (not (= lambda!395545 lambda!395514))))

(declare-fun bs!1855390 () Bool)

(assert (= bs!1855390 (and b!6941804 d!2167869)))

(assert (=> bs!1855390 (= (and (= s!14361 (_2!37127 lt!2475899)) (= (regOne!34446 lt!2475878) r2!6280) (= (regTwo!34446 lt!2475878) r3!135)) (= lambda!395545 lambda!395535))))

(declare-fun bs!1855391 () Bool)

(assert (= bs!1855391 (and b!6941804 b!6941388)))

(assert (=> bs!1855391 (= (and (= s!14361 lt!2475880) (= (regOne!34446 lt!2475878) (regOne!34446 lt!2475892)) (= (regTwo!34446 lt!2475878) (regTwo!34446 lt!2475892))) (= lambda!395545 lambda!395507))))

(assert (=> bs!1855373 (not (= lambda!395545 lambda!395542))))

(assert (=> bs!1855380 (not (= lambda!395545 lambda!395526))))

(assert (=> bs!1855390 (not (= lambda!395545 lambda!395533))))

(assert (=> b!6941804 true))

(assert (=> b!6941804 true))

(declare-fun d!2167931 () Bool)

(declare-fun c!1288055 () Bool)

(assert (=> d!2167931 (= c!1288055 ((_ is EmptyExpr!16967) lt!2475878))))

(declare-fun e!4175965 () Bool)

(assert (=> d!2167931 (= (matchRSpec!4024 lt!2475878 s!14361) e!4175965)))

(declare-fun e!4175964 () Bool)

(declare-fun call!630644 () Bool)

(assert (=> b!6941799 (= e!4175964 call!630644)))

(declare-fun bm!630638 () Bool)

(declare-fun c!1288052 () Bool)

(assert (=> bm!630638 (= call!630644 (Exists!3967 (ite c!1288052 lambda!395544 lambda!395545)))))

(declare-fun b!6941800 () Bool)

(declare-fun e!4175967 () Bool)

(assert (=> b!6941800 (= e!4175967 (matchRSpec!4024 (regTwo!34447 lt!2475878) s!14361))))

(declare-fun b!6941801 () Bool)

(declare-fun e!4175963 () Bool)

(declare-fun e!4175968 () Bool)

(assert (=> b!6941801 (= e!4175963 e!4175968)))

(assert (=> b!6941801 (= c!1288052 ((_ is Star!16967) lt!2475878))))

(declare-fun b!6941802 () Bool)

(declare-fun res!2831763 () Bool)

(assert (=> b!6941802 (=> res!2831763 e!4175964)))

(declare-fun call!630643 () Bool)

(assert (=> b!6941802 (= res!2831763 call!630643)))

(assert (=> b!6941802 (= e!4175968 e!4175964)))

(declare-fun b!6941803 () Bool)

(declare-fun e!4175969 () Bool)

(assert (=> b!6941803 (= e!4175969 (= s!14361 (Cons!66596 (c!1287895 lt!2475878) Nil!66596)))))

(declare-fun bm!630639 () Bool)

(assert (=> bm!630639 (= call!630643 (isEmpty!38869 s!14361))))

(assert (=> b!6941804 (= e!4175968 call!630644)))

(declare-fun b!6941805 () Bool)

(declare-fun c!1288054 () Bool)

(assert (=> b!6941805 (= c!1288054 ((_ is Union!16967) lt!2475878))))

(assert (=> b!6941805 (= e!4175969 e!4175963)))

(declare-fun b!6941806 () Bool)

(declare-fun e!4175966 () Bool)

(assert (=> b!6941806 (= e!4175965 e!4175966)))

(declare-fun res!2831765 () Bool)

(assert (=> b!6941806 (= res!2831765 (not ((_ is EmptyLang!16967) lt!2475878)))))

(assert (=> b!6941806 (=> (not res!2831765) (not e!4175966))))

(declare-fun b!6941807 () Bool)

(declare-fun c!1288053 () Bool)

(assert (=> b!6941807 (= c!1288053 ((_ is ElementMatch!16967) lt!2475878))))

(assert (=> b!6941807 (= e!4175966 e!4175969)))

(declare-fun b!6941808 () Bool)

(assert (=> b!6941808 (= e!4175963 e!4175967)))

(declare-fun res!2831764 () Bool)

(assert (=> b!6941808 (= res!2831764 (matchRSpec!4024 (regOne!34447 lt!2475878) s!14361))))

(assert (=> b!6941808 (=> res!2831764 e!4175967)))

(declare-fun b!6941809 () Bool)

(assert (=> b!6941809 (= e!4175965 call!630643)))

(assert (= (and d!2167931 c!1288055) b!6941809))

(assert (= (and d!2167931 (not c!1288055)) b!6941806))

(assert (= (and b!6941806 res!2831765) b!6941807))

(assert (= (and b!6941807 c!1288053) b!6941803))

(assert (= (and b!6941807 (not c!1288053)) b!6941805))

(assert (= (and b!6941805 c!1288054) b!6941808))

(assert (= (and b!6941805 (not c!1288054)) b!6941801))

(assert (= (and b!6941808 (not res!2831764)) b!6941800))

(assert (= (and b!6941801 c!1288052) b!6941802))

(assert (= (and b!6941801 (not c!1288052)) b!6941804))

(assert (= (and b!6941802 (not res!2831763)) b!6941799))

(assert (= (or b!6941799 b!6941804) bm!630638))

(assert (= (or b!6941809 b!6941802) bm!630639))

(declare-fun m!7646792 () Bool)

(assert (=> bm!630638 m!7646792))

(declare-fun m!7646794 () Bool)

(assert (=> b!6941800 m!7646794))

(assert (=> bm!630639 m!7646776))

(declare-fun m!7646796 () Bool)

(assert (=> b!6941808 m!7646796))

(assert (=> b!6941067 d!2167931))

(declare-fun d!2167933 () Bool)

(assert (=> d!2167933 (= (matchR!9106 lt!2475878 s!14361) (matchRSpec!4024 lt!2475878 s!14361))))

(declare-fun lt!2476013 () Unit!160658)

(assert (=> d!2167933 (= lt!2476013 (choose!51716 lt!2475878 s!14361))))

(assert (=> d!2167933 (validRegex!8673 lt!2475878)))

(assert (=> d!2167933 (= (mainMatchTheorem!4024 lt!2475878 s!14361) lt!2476013)))

(declare-fun bs!1855392 () Bool)

(assert (= bs!1855392 d!2167933))

(assert (=> bs!1855392 m!7646132))

(assert (=> bs!1855392 m!7646138))

(declare-fun m!7646798 () Bool)

(assert (=> bs!1855392 m!7646798))

(assert (=> bs!1855392 m!7646778))

(assert (=> b!6941067 d!2167933))

(declare-fun b!6941818 () Bool)

(declare-fun e!4175977 () Bool)

(assert (=> b!6941818 (= e!4175977 (not (= (head!13912 s!14361) (c!1287895 lt!2475869))))))

(declare-fun b!6941819 () Bool)

(declare-fun e!4175976 () Bool)

(assert (=> b!6941819 (= e!4175976 (= (head!13912 s!14361) (c!1287895 lt!2475869)))))

(declare-fun b!6941820 () Bool)

(declare-fun res!2831773 () Bool)

(assert (=> b!6941820 (=> res!2831773 e!4175977)))

(assert (=> b!6941820 (= res!2831773 (not (isEmpty!38869 (tail!12964 s!14361))))))

(declare-fun b!6941821 () Bool)

(declare-fun res!2831772 () Bool)

(declare-fun e!4175978 () Bool)

(assert (=> b!6941821 (=> res!2831772 e!4175978)))

(assert (=> b!6941821 (= res!2831772 (not ((_ is ElementMatch!16967) lt!2475869)))))

(declare-fun e!4175975 () Bool)

(assert (=> b!6941821 (= e!4175975 e!4175978)))

(declare-fun b!6941822 () Bool)

(declare-fun e!4175972 () Bool)

(assert (=> b!6941822 (= e!4175972 e!4175975)))

(declare-fun c!1288056 () Bool)

(assert (=> b!6941822 (= c!1288056 ((_ is EmptyLang!16967) lt!2475869))))

(declare-fun b!6941823 () Bool)

(declare-fun res!2831766 () Bool)

(assert (=> b!6941823 (=> (not res!2831766) (not e!4175976))))

(assert (=> b!6941823 (= res!2831766 (isEmpty!38869 (tail!12964 s!14361)))))

(declare-fun b!6941824 () Bool)

(declare-fun e!4175974 () Bool)

(assert (=> b!6941824 (= e!4175974 (nullable!6784 lt!2475869))))

(declare-fun b!6941826 () Bool)

(assert (=> b!6941826 (= e!4175974 (matchR!9106 (derivativeStep!5459 lt!2475869 (head!13912 s!14361)) (tail!12964 s!14361)))))

(declare-fun b!6941827 () Bool)

(declare-fun lt!2476014 () Bool)

(declare-fun call!630645 () Bool)

(assert (=> b!6941827 (= e!4175972 (= lt!2476014 call!630645))))

(declare-fun b!6941828 () Bool)

(declare-fun e!4175973 () Bool)

(assert (=> b!6941828 (= e!4175973 e!4175977)))

(declare-fun res!2831768 () Bool)

(assert (=> b!6941828 (=> res!2831768 e!4175977)))

(assert (=> b!6941828 (= res!2831768 call!630645)))

(declare-fun b!6941829 () Bool)

(declare-fun res!2831770 () Bool)

(assert (=> b!6941829 (=> res!2831770 e!4175978)))

(assert (=> b!6941829 (= res!2831770 e!4175976)))

(declare-fun res!2831771 () Bool)

(assert (=> b!6941829 (=> (not res!2831771) (not e!4175976))))

(assert (=> b!6941829 (= res!2831771 lt!2476014)))

(declare-fun b!6941830 () Bool)

(assert (=> b!6941830 (= e!4175975 (not lt!2476014))))

(declare-fun bm!630640 () Bool)

(assert (=> bm!630640 (= call!630645 (isEmpty!38869 s!14361))))

(declare-fun b!6941831 () Bool)

(assert (=> b!6941831 (= e!4175978 e!4175973)))

(declare-fun res!2831767 () Bool)

(assert (=> b!6941831 (=> (not res!2831767) (not e!4175973))))

(assert (=> b!6941831 (= res!2831767 (not lt!2476014))))

(declare-fun b!6941825 () Bool)

(declare-fun res!2831769 () Bool)

(assert (=> b!6941825 (=> (not res!2831769) (not e!4175976))))

(assert (=> b!6941825 (= res!2831769 (not call!630645))))

(declare-fun d!2167935 () Bool)

(assert (=> d!2167935 e!4175972))

(declare-fun c!1288058 () Bool)

(assert (=> d!2167935 (= c!1288058 ((_ is EmptyExpr!16967) lt!2475869))))

(assert (=> d!2167935 (= lt!2476014 e!4175974)))

(declare-fun c!1288057 () Bool)

(assert (=> d!2167935 (= c!1288057 (isEmpty!38869 s!14361))))

(assert (=> d!2167935 (validRegex!8673 lt!2475869)))

(assert (=> d!2167935 (= (matchR!9106 lt!2475869 s!14361) lt!2476014)))

(assert (= (and d!2167935 c!1288057) b!6941824))

(assert (= (and d!2167935 (not c!1288057)) b!6941826))

(assert (= (and d!2167935 c!1288058) b!6941827))

(assert (= (and d!2167935 (not c!1288058)) b!6941822))

(assert (= (and b!6941822 c!1288056) b!6941830))

(assert (= (and b!6941822 (not c!1288056)) b!6941821))

(assert (= (and b!6941821 (not res!2831772)) b!6941829))

(assert (= (and b!6941829 res!2831771) b!6941825))

(assert (= (and b!6941825 res!2831769) b!6941823))

(assert (= (and b!6941823 res!2831766) b!6941819))

(assert (= (and b!6941829 (not res!2831770)) b!6941831))

(assert (= (and b!6941831 res!2831767) b!6941828))

(assert (= (and b!6941828 (not res!2831768)) b!6941820))

(assert (= (and b!6941820 (not res!2831773)) b!6941818))

(assert (= (or b!6941827 b!6941828 b!6941825) bm!630640))

(assert (=> d!2167935 m!7646776))

(declare-fun m!7646800 () Bool)

(assert (=> d!2167935 m!7646800))

(assert (=> b!6941818 m!7646780))

(assert (=> b!6941823 m!7646782))

(assert (=> b!6941823 m!7646782))

(assert (=> b!6941823 m!7646784))

(declare-fun m!7646802 () Bool)

(assert (=> b!6941824 m!7646802))

(assert (=> b!6941819 m!7646780))

(assert (=> bm!630640 m!7646776))

(assert (=> b!6941820 m!7646782))

(assert (=> b!6941820 m!7646782))

(assert (=> b!6941820 m!7646784))

(assert (=> b!6941826 m!7646780))

(assert (=> b!6941826 m!7646780))

(declare-fun m!7646804 () Bool)

(assert (=> b!6941826 m!7646804))

(assert (=> b!6941826 m!7646782))

(assert (=> b!6941826 m!7646804))

(assert (=> b!6941826 m!7646782))

(declare-fun m!7646806 () Bool)

(assert (=> b!6941826 m!7646806))

(assert (=> b!6941067 d!2167935))

(declare-fun bs!1855393 () Bool)

(declare-fun b!6941832 () Bool)

(assert (= bs!1855393 (and b!6941832 d!2167913)))

(declare-fun lambda!395546 () Int)

(assert (=> bs!1855393 (not (= lambda!395546 lambda!395543))))

(declare-fun bs!1855394 () Bool)

(assert (= bs!1855394 (and b!6941832 b!6941799)))

(assert (=> bs!1855394 (= (and (= (reg!17296 lt!2475869) (reg!17296 lt!2475878)) (= lt!2475869 lt!2475878)) (= lambda!395546 lambda!395544))))

(declare-fun bs!1855395 () Bool)

(assert (= bs!1855395 (and b!6941832 b!6941078)))

(assert (=> bs!1855395 (not (= lambda!395546 lambda!395479))))

(declare-fun bs!1855396 () Bool)

(assert (= bs!1855396 (and b!6941832 b!6941252)))

(assert (=> bs!1855396 (= (and (= s!14361 (_1!37127 lt!2475891)) (= (reg!17296 lt!2475869) (reg!17296 r2!6280)) (= lt!2475869 r2!6280)) (= lambda!395546 lambda!395498))))

(declare-fun bs!1855397 () Bool)

(assert (= bs!1855397 (and b!6941832 d!2167911)))

(assert (=> bs!1855397 (not (= lambda!395546 lambda!395540))))

(declare-fun bs!1855398 () Bool)

(assert (= bs!1855398 (and b!6941832 b!6941061)))

(assert (=> bs!1855398 (not (= lambda!395546 lambda!395475))))

(assert (=> bs!1855398 (not (= lambda!395546 lambda!395476))))

(declare-fun bs!1855399 () Bool)

(assert (= bs!1855399 (and b!6941832 d!2167831)))

(assert (=> bs!1855399 (not (= lambda!395546 lambda!395528))))

(declare-fun bs!1855400 () Bool)

(assert (= bs!1855400 (and b!6941832 b!6941062)))

(assert (=> bs!1855400 (not (= lambda!395546 lambda!395473))))

(assert (=> bs!1855395 (not (= lambda!395546 lambda!395480))))

(assert (=> bs!1855400 (not (= lambda!395546 lambda!395474))))

(declare-fun bs!1855401 () Bool)

(assert (= bs!1855401 (and b!6941832 b!6941070)))

(assert (=> bs!1855401 (not (= lambda!395546 lambda!395477))))

(declare-fun bs!1855402 () Bool)

(assert (= bs!1855402 (and b!6941832 b!6941804)))

(assert (=> bs!1855402 (not (= lambda!395546 lambda!395545))))

(declare-fun bs!1855403 () Bool)

(assert (= bs!1855403 (and b!6941832 b!6941648)))

(assert (=> bs!1855403 (= (and (= s!14361 (_2!37127 lt!2475899)) (= (reg!17296 lt!2475869) (reg!17296 lt!2475872)) (= lt!2475869 lt!2475872)) (= lambda!395546 lambda!395536))))

(declare-fun bs!1855404 () Bool)

(assert (= bs!1855404 (and b!6941832 b!6941177)))

(assert (=> bs!1855404 (= (and (= s!14361 (_2!37127 lt!2475891)) (= (reg!17296 lt!2475869) (reg!17296 r3!135)) (= lt!2475869 r3!135)) (= lambda!395546 lambda!395485))))

(declare-fun bs!1855405 () Bool)

(assert (= bs!1855405 (and b!6941832 b!6941383)))

(assert (=> bs!1855405 (= (and (= s!14361 lt!2475880) (= (reg!17296 lt!2475869) (reg!17296 lt!2475892)) (= lt!2475869 lt!2475892)) (= lambda!395546 lambda!395505))))

(declare-fun bs!1855406 () Bool)

(assert (= bs!1855406 (and b!6941832 b!6941653)))

(assert (=> bs!1855406 (not (= lambda!395546 lambda!395537))))

(assert (=> bs!1855401 (not (= lambda!395546 lambda!395478))))

(declare-fun bs!1855407 () Bool)

(assert (= bs!1855407 (and b!6941832 b!6941257)))

(assert (=> bs!1855407 (not (= lambda!395546 lambda!395501))))

(declare-fun bs!1855408 () Bool)

(assert (= bs!1855408 (and b!6941832 b!6941182)))

(assert (=> bs!1855408 (not (= lambda!395546 lambda!395486))))

(declare-fun bs!1855409 () Bool)

(assert (= bs!1855409 (and b!6941832 d!2167859)))

(assert (=> bs!1855409 (not (= lambda!395546 lambda!395531))))

(declare-fun bs!1855410 () Bool)

(assert (= bs!1855410 (and b!6941832 d!2167795)))

(assert (=> bs!1855410 (not (= lambda!395546 lambda!395514))))

(declare-fun bs!1855411 () Bool)

(assert (= bs!1855411 (and b!6941832 d!2167869)))

(assert (=> bs!1855411 (not (= lambda!395546 lambda!395535))))

(declare-fun bs!1855412 () Bool)

(assert (= bs!1855412 (and b!6941832 b!6941388)))

(assert (=> bs!1855412 (not (= lambda!395546 lambda!395507))))

(assert (=> bs!1855393 (not (= lambda!395546 lambda!395542))))

(assert (=> bs!1855399 (not (= lambda!395546 lambda!395526))))

(assert (=> bs!1855411 (not (= lambda!395546 lambda!395533))))

(assert (=> b!6941832 true))

(assert (=> b!6941832 true))

(declare-fun bs!1855413 () Bool)

(declare-fun b!6941837 () Bool)

(assert (= bs!1855413 (and b!6941837 d!2167913)))

(declare-fun lambda!395547 () Int)

(assert (=> bs!1855413 (= (and (= (regOne!34446 lt!2475869) lt!2475892) (= (regTwo!34446 lt!2475869) r3!135)) (= lambda!395547 lambda!395543))))

(declare-fun bs!1855414 () Bool)

(assert (= bs!1855414 (and b!6941837 b!6941799)))

(assert (=> bs!1855414 (not (= lambda!395547 lambda!395544))))

(declare-fun bs!1855415 () Bool)

(assert (= bs!1855415 (and b!6941837 b!6941078)))

(assert (=> bs!1855415 (not (= lambda!395547 lambda!395479))))

(declare-fun bs!1855416 () Bool)

(assert (= bs!1855416 (and b!6941837 b!6941252)))

(assert (=> bs!1855416 (not (= lambda!395547 lambda!395498))))

(declare-fun bs!1855417 () Bool)

(assert (= bs!1855417 (and b!6941837 d!2167911)))

(assert (=> bs!1855417 (not (= lambda!395547 lambda!395540))))

(declare-fun bs!1855418 () Bool)

(assert (= bs!1855418 (and b!6941837 b!6941061)))

(assert (=> bs!1855418 (not (= lambda!395547 lambda!395475))))

(assert (=> bs!1855418 (= (and (= s!14361 (_2!37127 lt!2475899)) (= (regOne!34446 lt!2475869) r2!6280) (= (regTwo!34446 lt!2475869) r3!135)) (= lambda!395547 lambda!395476))))

(declare-fun bs!1855419 () Bool)

(assert (= bs!1855419 (and b!6941837 d!2167831)))

(assert (=> bs!1855419 (= (and (= s!14361 lt!2475880) (= (regOne!34446 lt!2475869) r1!6342) (= (regTwo!34446 lt!2475869) r2!6280)) (= lambda!395547 lambda!395528))))

(declare-fun bs!1855420 () Bool)

(assert (= bs!1855420 (and b!6941837 b!6941062)))

(assert (=> bs!1855420 (not (= lambda!395547 lambda!395473))))

(assert (=> bs!1855415 (= (and (= (regOne!34446 lt!2475869) lt!2475892) (= (regTwo!34446 lt!2475869) r3!135)) (= lambda!395547 lambda!395480))))

(declare-fun bs!1855421 () Bool)

(assert (= bs!1855421 (and b!6941837 b!6941832)))

(assert (=> bs!1855421 (not (= lambda!395547 lambda!395546))))

(assert (=> bs!1855420 (= (and (= (regOne!34446 lt!2475869) r1!6342) (= (regTwo!34446 lt!2475869) lt!2475872)) (= lambda!395547 lambda!395474))))

(declare-fun bs!1855422 () Bool)

(assert (= bs!1855422 (and b!6941837 b!6941070)))

(assert (=> bs!1855422 (not (= lambda!395547 lambda!395477))))

(declare-fun bs!1855423 () Bool)

(assert (= bs!1855423 (and b!6941837 b!6941804)))

(assert (=> bs!1855423 (= (and (= (regOne!34446 lt!2475869) (regOne!34446 lt!2475878)) (= (regTwo!34446 lt!2475869) (regTwo!34446 lt!2475878))) (= lambda!395547 lambda!395545))))

(declare-fun bs!1855424 () Bool)

(assert (= bs!1855424 (and b!6941837 b!6941648)))

(assert (=> bs!1855424 (not (= lambda!395547 lambda!395536))))

(declare-fun bs!1855425 () Bool)

(assert (= bs!1855425 (and b!6941837 b!6941177)))

(assert (=> bs!1855425 (not (= lambda!395547 lambda!395485))))

(declare-fun bs!1855426 () Bool)

(assert (= bs!1855426 (and b!6941837 b!6941383)))

(assert (=> bs!1855426 (not (= lambda!395547 lambda!395505))))

(declare-fun bs!1855427 () Bool)

(assert (= bs!1855427 (and b!6941837 b!6941653)))

(assert (=> bs!1855427 (= (and (= s!14361 (_2!37127 lt!2475899)) (= (regOne!34446 lt!2475869) (regOne!34446 lt!2475872)) (= (regTwo!34446 lt!2475869) (regTwo!34446 lt!2475872))) (= lambda!395547 lambda!395537))))

(assert (=> bs!1855422 (= (and (= s!14361 lt!2475880) (= (regOne!34446 lt!2475869) r1!6342) (= (regTwo!34446 lt!2475869) r2!6280)) (= lambda!395547 lambda!395478))))

(declare-fun bs!1855428 () Bool)

(assert (= bs!1855428 (and b!6941837 b!6941257)))

(assert (=> bs!1855428 (= (and (= s!14361 (_1!37127 lt!2475891)) (= (regOne!34446 lt!2475869) (regOne!34446 r2!6280)) (= (regTwo!34446 lt!2475869) (regTwo!34446 r2!6280))) (= lambda!395547 lambda!395501))))

(declare-fun bs!1855429 () Bool)

(assert (= bs!1855429 (and b!6941837 b!6941182)))

(assert (=> bs!1855429 (= (and (= s!14361 (_2!37127 lt!2475891)) (= (regOne!34446 lt!2475869) (regOne!34446 r3!135)) (= (regTwo!34446 lt!2475869) (regTwo!34446 r3!135))) (= lambda!395547 lambda!395486))))

(declare-fun bs!1855430 () Bool)

(assert (= bs!1855430 (and b!6941837 d!2167859)))

(assert (=> bs!1855430 (not (= lambda!395547 lambda!395531))))

(declare-fun bs!1855431 () Bool)

(assert (= bs!1855431 (and b!6941837 d!2167795)))

(assert (=> bs!1855431 (not (= lambda!395547 lambda!395514))))

(declare-fun bs!1855432 () Bool)

(assert (= bs!1855432 (and b!6941837 d!2167869)))

(assert (=> bs!1855432 (= (and (= s!14361 (_2!37127 lt!2475899)) (= (regOne!34446 lt!2475869) r2!6280) (= (regTwo!34446 lt!2475869) r3!135)) (= lambda!395547 lambda!395535))))

(declare-fun bs!1855433 () Bool)

(assert (= bs!1855433 (and b!6941837 b!6941388)))

(assert (=> bs!1855433 (= (and (= s!14361 lt!2475880) (= (regOne!34446 lt!2475869) (regOne!34446 lt!2475892)) (= (regTwo!34446 lt!2475869) (regTwo!34446 lt!2475892))) (= lambda!395547 lambda!395507))))

(assert (=> bs!1855413 (not (= lambda!395547 lambda!395542))))

(assert (=> bs!1855419 (not (= lambda!395547 lambda!395526))))

(assert (=> bs!1855432 (not (= lambda!395547 lambda!395533))))

(assert (=> b!6941837 true))

(assert (=> b!6941837 true))

(declare-fun d!2167937 () Bool)

(declare-fun c!1288062 () Bool)

(assert (=> d!2167937 (= c!1288062 ((_ is EmptyExpr!16967) lt!2475869))))

(declare-fun e!4175981 () Bool)

(assert (=> d!2167937 (= (matchRSpec!4024 lt!2475869 s!14361) e!4175981)))

(declare-fun e!4175980 () Bool)

(declare-fun call!630647 () Bool)

(assert (=> b!6941832 (= e!4175980 call!630647)))

(declare-fun c!1288059 () Bool)

(declare-fun bm!630641 () Bool)

(assert (=> bm!630641 (= call!630647 (Exists!3967 (ite c!1288059 lambda!395546 lambda!395547)))))

(declare-fun b!6941833 () Bool)

(declare-fun e!4175983 () Bool)

(assert (=> b!6941833 (= e!4175983 (matchRSpec!4024 (regTwo!34447 lt!2475869) s!14361))))

(declare-fun b!6941834 () Bool)

(declare-fun e!4175979 () Bool)

(declare-fun e!4175984 () Bool)

(assert (=> b!6941834 (= e!4175979 e!4175984)))

(assert (=> b!6941834 (= c!1288059 ((_ is Star!16967) lt!2475869))))

(declare-fun b!6941835 () Bool)

(declare-fun res!2831774 () Bool)

(assert (=> b!6941835 (=> res!2831774 e!4175980)))

(declare-fun call!630646 () Bool)

(assert (=> b!6941835 (= res!2831774 call!630646)))

(assert (=> b!6941835 (= e!4175984 e!4175980)))

(declare-fun b!6941836 () Bool)

(declare-fun e!4175985 () Bool)

(assert (=> b!6941836 (= e!4175985 (= s!14361 (Cons!66596 (c!1287895 lt!2475869) Nil!66596)))))

(declare-fun bm!630642 () Bool)

(assert (=> bm!630642 (= call!630646 (isEmpty!38869 s!14361))))

(assert (=> b!6941837 (= e!4175984 call!630647)))

(declare-fun b!6941838 () Bool)

(declare-fun c!1288061 () Bool)

(assert (=> b!6941838 (= c!1288061 ((_ is Union!16967) lt!2475869))))

(assert (=> b!6941838 (= e!4175985 e!4175979)))

(declare-fun b!6941839 () Bool)

(declare-fun e!4175982 () Bool)

(assert (=> b!6941839 (= e!4175981 e!4175982)))

(declare-fun res!2831776 () Bool)

(assert (=> b!6941839 (= res!2831776 (not ((_ is EmptyLang!16967) lt!2475869)))))

(assert (=> b!6941839 (=> (not res!2831776) (not e!4175982))))

(declare-fun b!6941840 () Bool)

(declare-fun c!1288060 () Bool)

(assert (=> b!6941840 (= c!1288060 ((_ is ElementMatch!16967) lt!2475869))))

(assert (=> b!6941840 (= e!4175982 e!4175985)))

(declare-fun b!6941841 () Bool)

(assert (=> b!6941841 (= e!4175979 e!4175983)))

(declare-fun res!2831775 () Bool)

(assert (=> b!6941841 (= res!2831775 (matchRSpec!4024 (regOne!34447 lt!2475869) s!14361))))

(assert (=> b!6941841 (=> res!2831775 e!4175983)))

(declare-fun b!6941842 () Bool)

(assert (=> b!6941842 (= e!4175981 call!630646)))

(assert (= (and d!2167937 c!1288062) b!6941842))

(assert (= (and d!2167937 (not c!1288062)) b!6941839))

(assert (= (and b!6941839 res!2831776) b!6941840))

(assert (= (and b!6941840 c!1288060) b!6941836))

(assert (= (and b!6941840 (not c!1288060)) b!6941838))

(assert (= (and b!6941838 c!1288061) b!6941841))

(assert (= (and b!6941838 (not c!1288061)) b!6941834))

(assert (= (and b!6941841 (not res!2831775)) b!6941833))

(assert (= (and b!6941834 c!1288059) b!6941835))

(assert (= (and b!6941834 (not c!1288059)) b!6941837))

(assert (= (and b!6941835 (not res!2831774)) b!6941832))

(assert (= (or b!6941832 b!6941837) bm!630641))

(assert (= (or b!6941842 b!6941835) bm!630642))

(declare-fun m!7646808 () Bool)

(assert (=> bm!630641 m!7646808))

(declare-fun m!7646810 () Bool)

(assert (=> b!6941833 m!7646810))

(assert (=> bm!630642 m!7646776))

(declare-fun m!7646812 () Bool)

(assert (=> b!6941841 m!7646812))

(assert (=> b!6941067 d!2167937))

(declare-fun d!2167939 () Bool)

(assert (=> d!2167939 (= (matchR!9106 lt!2475869 s!14361) (matchRSpec!4024 lt!2475869 s!14361))))

(declare-fun lt!2476015 () Unit!160658)

(assert (=> d!2167939 (= lt!2476015 (choose!51716 lt!2475869 s!14361))))

(assert (=> d!2167939 (validRegex!8673 lt!2475869)))

(assert (=> d!2167939 (= (mainMatchTheorem!4024 lt!2475869 s!14361) lt!2476015)))

(declare-fun bs!1855434 () Bool)

(assert (= bs!1855434 d!2167939))

(assert (=> bs!1855434 m!7646136))

(assert (=> bs!1855434 m!7646128))

(declare-fun m!7646814 () Bool)

(assert (=> bs!1855434 m!7646814))

(assert (=> bs!1855434 m!7646800))

(assert (=> b!6941067 d!2167939))

(declare-fun b!6941843 () Bool)

(declare-fun e!4175991 () Bool)

(assert (=> b!6941843 (= e!4175991 (not (= (head!13912 (_2!37127 lt!2475891)) (c!1287895 r3!135))))))

(declare-fun b!6941844 () Bool)

(declare-fun e!4175990 () Bool)

(assert (=> b!6941844 (= e!4175990 (= (head!13912 (_2!37127 lt!2475891)) (c!1287895 r3!135)))))

(declare-fun b!6941845 () Bool)

(declare-fun res!2831784 () Bool)

(assert (=> b!6941845 (=> res!2831784 e!4175991)))

(assert (=> b!6941845 (= res!2831784 (not (isEmpty!38869 (tail!12964 (_2!37127 lt!2475891)))))))

(declare-fun b!6941846 () Bool)

(declare-fun res!2831783 () Bool)

(declare-fun e!4175992 () Bool)

(assert (=> b!6941846 (=> res!2831783 e!4175992)))

(assert (=> b!6941846 (= res!2831783 (not ((_ is ElementMatch!16967) r3!135)))))

(declare-fun e!4175989 () Bool)

(assert (=> b!6941846 (= e!4175989 e!4175992)))

(declare-fun b!6941847 () Bool)

(declare-fun e!4175986 () Bool)

(assert (=> b!6941847 (= e!4175986 e!4175989)))

(declare-fun c!1288063 () Bool)

(assert (=> b!6941847 (= c!1288063 ((_ is EmptyLang!16967) r3!135))))

(declare-fun b!6941848 () Bool)

(declare-fun res!2831777 () Bool)

(assert (=> b!6941848 (=> (not res!2831777) (not e!4175990))))

(assert (=> b!6941848 (= res!2831777 (isEmpty!38869 (tail!12964 (_2!37127 lt!2475891))))))

(declare-fun b!6941849 () Bool)

(declare-fun e!4175988 () Bool)

(assert (=> b!6941849 (= e!4175988 (nullable!6784 r3!135))))

(declare-fun b!6941851 () Bool)

(assert (=> b!6941851 (= e!4175988 (matchR!9106 (derivativeStep!5459 r3!135 (head!13912 (_2!37127 lt!2475891))) (tail!12964 (_2!37127 lt!2475891))))))

(declare-fun b!6941852 () Bool)

(declare-fun lt!2476016 () Bool)

(declare-fun call!630648 () Bool)

(assert (=> b!6941852 (= e!4175986 (= lt!2476016 call!630648))))

(declare-fun b!6941853 () Bool)

(declare-fun e!4175987 () Bool)

(assert (=> b!6941853 (= e!4175987 e!4175991)))

(declare-fun res!2831779 () Bool)

(assert (=> b!6941853 (=> res!2831779 e!4175991)))

(assert (=> b!6941853 (= res!2831779 call!630648)))

(declare-fun b!6941854 () Bool)

(declare-fun res!2831781 () Bool)

(assert (=> b!6941854 (=> res!2831781 e!4175992)))

(assert (=> b!6941854 (= res!2831781 e!4175990)))

(declare-fun res!2831782 () Bool)

(assert (=> b!6941854 (=> (not res!2831782) (not e!4175990))))

(assert (=> b!6941854 (= res!2831782 lt!2476016)))

(declare-fun b!6941855 () Bool)

(assert (=> b!6941855 (= e!4175989 (not lt!2476016))))

(declare-fun bm!630643 () Bool)

(assert (=> bm!630643 (= call!630648 (isEmpty!38869 (_2!37127 lt!2475891)))))

(declare-fun b!6941856 () Bool)

(assert (=> b!6941856 (= e!4175992 e!4175987)))

(declare-fun res!2831778 () Bool)

(assert (=> b!6941856 (=> (not res!2831778) (not e!4175987))))

(assert (=> b!6941856 (= res!2831778 (not lt!2476016))))

(declare-fun b!6941850 () Bool)

(declare-fun res!2831780 () Bool)

(assert (=> b!6941850 (=> (not res!2831780) (not e!4175990))))

(assert (=> b!6941850 (= res!2831780 (not call!630648))))

(declare-fun d!2167941 () Bool)

(assert (=> d!2167941 e!4175986))

(declare-fun c!1288065 () Bool)

(assert (=> d!2167941 (= c!1288065 ((_ is EmptyExpr!16967) r3!135))))

(assert (=> d!2167941 (= lt!2476016 e!4175988)))

(declare-fun c!1288064 () Bool)

(assert (=> d!2167941 (= c!1288064 (isEmpty!38869 (_2!37127 lt!2475891)))))

(assert (=> d!2167941 (validRegex!8673 r3!135)))

(assert (=> d!2167941 (= (matchR!9106 r3!135 (_2!37127 lt!2475891)) lt!2476016)))

(assert (= (and d!2167941 c!1288064) b!6941849))

(assert (= (and d!2167941 (not c!1288064)) b!6941851))

(assert (= (and d!2167941 c!1288065) b!6941852))

(assert (= (and d!2167941 (not c!1288065)) b!6941847))

(assert (= (and b!6941847 c!1288063) b!6941855))

(assert (= (and b!6941847 (not c!1288063)) b!6941846))

(assert (= (and b!6941846 (not res!2831783)) b!6941854))

(assert (= (and b!6941854 res!2831782) b!6941850))

(assert (= (and b!6941850 res!2831780) b!6941848))

(assert (= (and b!6941848 res!2831777) b!6941844))

(assert (= (and b!6941854 (not res!2831781)) b!6941856))

(assert (= (and b!6941856 res!2831778) b!6941853))

(assert (= (and b!6941853 (not res!2831779)) b!6941845))

(assert (= (and b!6941845 (not res!2831784)) b!6941843))

(assert (= (or b!6941852 b!6941853 b!6941850) bm!630643))

(assert (=> d!2167941 m!7646166))

(assert (=> d!2167941 m!7646076))

(declare-fun m!7646816 () Bool)

(assert (=> b!6941843 m!7646816))

(declare-fun m!7646818 () Bool)

(assert (=> b!6941848 m!7646818))

(assert (=> b!6941848 m!7646818))

(declare-fun m!7646820 () Bool)

(assert (=> b!6941848 m!7646820))

(declare-fun m!7646822 () Bool)

(assert (=> b!6941849 m!7646822))

(assert (=> b!6941844 m!7646816))

(assert (=> bm!630643 m!7646166))

(assert (=> b!6941845 m!7646818))

(assert (=> b!6941845 m!7646818))

(assert (=> b!6941845 m!7646820))

(assert (=> b!6941851 m!7646816))

(assert (=> b!6941851 m!7646816))

(declare-fun m!7646824 () Bool)

(assert (=> b!6941851 m!7646824))

(assert (=> b!6941851 m!7646818))

(assert (=> b!6941851 m!7646824))

(assert (=> b!6941851 m!7646818))

(declare-fun m!7646826 () Bool)

(assert (=> b!6941851 m!7646826))

(assert (=> b!6941066 d!2167941))

(declare-fun bs!1855435 () Bool)

(declare-fun d!2167943 () Bool)

(assert (= bs!1855435 (and d!2167943 d!2167913)))

(declare-fun lambda!395548 () Int)

(assert (=> bs!1855435 (not (= lambda!395548 lambda!395543))))

(declare-fun bs!1855436 () Bool)

(assert (= bs!1855436 (and d!2167943 b!6941078)))

(assert (=> bs!1855436 (= (and (= r1!6342 lt!2475892) (= lt!2475872 r3!135)) (= lambda!395548 lambda!395479))))

(declare-fun bs!1855437 () Bool)

(assert (= bs!1855437 (and d!2167943 b!6941252)))

(assert (=> bs!1855437 (not (= lambda!395548 lambda!395498))))

(declare-fun bs!1855438 () Bool)

(assert (= bs!1855438 (and d!2167943 d!2167911)))

(assert (=> bs!1855438 (= (and (= r1!6342 lt!2475892) (= lt!2475872 r3!135)) (= lambda!395548 lambda!395540))))

(declare-fun bs!1855439 () Bool)

(assert (= bs!1855439 (and d!2167943 b!6941061)))

(assert (=> bs!1855439 (= (and (= s!14361 (_2!37127 lt!2475899)) (= r1!6342 r2!6280) (= lt!2475872 r3!135)) (= lambda!395548 lambda!395475))))

(assert (=> bs!1855439 (not (= lambda!395548 lambda!395476))))

(declare-fun bs!1855440 () Bool)

(assert (= bs!1855440 (and d!2167943 d!2167831)))

(assert (=> bs!1855440 (not (= lambda!395548 lambda!395528))))

(declare-fun bs!1855441 () Bool)

(assert (= bs!1855441 (and d!2167943 b!6941062)))

(assert (=> bs!1855441 (= lambda!395548 lambda!395473)))

(assert (=> bs!1855436 (not (= lambda!395548 lambda!395480))))

(declare-fun bs!1855442 () Bool)

(assert (= bs!1855442 (and d!2167943 b!6941832)))

(assert (=> bs!1855442 (not (= lambda!395548 lambda!395546))))

(assert (=> bs!1855441 (not (= lambda!395548 lambda!395474))))

(declare-fun bs!1855443 () Bool)

(assert (= bs!1855443 (and d!2167943 b!6941070)))

(assert (=> bs!1855443 (= (and (= s!14361 lt!2475880) (= lt!2475872 r2!6280)) (= lambda!395548 lambda!395477))))

(declare-fun bs!1855444 () Bool)

(assert (= bs!1855444 (and d!2167943 b!6941804)))

(assert (=> bs!1855444 (not (= lambda!395548 lambda!395545))))

(declare-fun bs!1855445 () Bool)

(assert (= bs!1855445 (and d!2167943 b!6941799)))

(assert (=> bs!1855445 (not (= lambda!395548 lambda!395544))))

(declare-fun bs!1855446 () Bool)

(assert (= bs!1855446 (and d!2167943 b!6941837)))

(assert (=> bs!1855446 (not (= lambda!395548 lambda!395547))))

(declare-fun bs!1855447 () Bool)

(assert (= bs!1855447 (and d!2167943 b!6941648)))

(assert (=> bs!1855447 (not (= lambda!395548 lambda!395536))))

(declare-fun bs!1855448 () Bool)

(assert (= bs!1855448 (and d!2167943 b!6941177)))

(assert (=> bs!1855448 (not (= lambda!395548 lambda!395485))))

(declare-fun bs!1855449 () Bool)

(assert (= bs!1855449 (and d!2167943 b!6941383)))

(assert (=> bs!1855449 (not (= lambda!395548 lambda!395505))))

(declare-fun bs!1855450 () Bool)

(assert (= bs!1855450 (and d!2167943 b!6941653)))

(assert (=> bs!1855450 (not (= lambda!395548 lambda!395537))))

(assert (=> bs!1855443 (not (= lambda!395548 lambda!395478))))

(declare-fun bs!1855451 () Bool)

(assert (= bs!1855451 (and d!2167943 b!6941257)))

(assert (=> bs!1855451 (not (= lambda!395548 lambda!395501))))

(declare-fun bs!1855452 () Bool)

(assert (= bs!1855452 (and d!2167943 b!6941182)))

(assert (=> bs!1855452 (not (= lambda!395548 lambda!395486))))

(declare-fun bs!1855453 () Bool)

(assert (= bs!1855453 (and d!2167943 d!2167859)))

(assert (=> bs!1855453 (= (and (= s!14361 (_2!37127 lt!2475899)) (= r1!6342 r2!6280) (= lt!2475872 r3!135)) (= lambda!395548 lambda!395531))))

(declare-fun bs!1855454 () Bool)

(assert (= bs!1855454 (and d!2167943 d!2167795)))

(assert (=> bs!1855454 (= (and (= s!14361 lt!2475880) (= lt!2475872 r2!6280)) (= lambda!395548 lambda!395514))))

(declare-fun bs!1855455 () Bool)

(assert (= bs!1855455 (and d!2167943 d!2167869)))

(assert (=> bs!1855455 (not (= lambda!395548 lambda!395535))))

(declare-fun bs!1855456 () Bool)

(assert (= bs!1855456 (and d!2167943 b!6941388)))

(assert (=> bs!1855456 (not (= lambda!395548 lambda!395507))))

(assert (=> bs!1855435 (= (and (= r1!6342 lt!2475892) (= lt!2475872 r3!135)) (= lambda!395548 lambda!395542))))

(assert (=> bs!1855440 (= (and (= s!14361 lt!2475880) (= lt!2475872 r2!6280)) (= lambda!395548 lambda!395526))))

(assert (=> bs!1855455 (= (and (= s!14361 (_2!37127 lt!2475899)) (= r1!6342 r2!6280) (= lt!2475872 r3!135)) (= lambda!395548 lambda!395533))))

(assert (=> d!2167943 true))

(assert (=> d!2167943 true))

(assert (=> d!2167943 true))

(assert (=> d!2167943 (= (isDefined!13437 (findConcatSeparation!3150 r1!6342 lt!2475872 Nil!66596 s!14361 s!14361)) (Exists!3967 lambda!395548))))

(declare-fun lt!2476017 () Unit!160658)

(assert (=> d!2167943 (= lt!2476017 (choose!51718 r1!6342 lt!2475872 s!14361))))

(assert (=> d!2167943 (validRegex!8673 r1!6342)))

(assert (=> d!2167943 (= (lemmaFindConcatSeparationEquivalentToExists!2908 r1!6342 lt!2475872 s!14361) lt!2476017)))

(declare-fun bs!1855457 () Bool)

(assert (= bs!1855457 d!2167943))

(assert (=> bs!1855457 m!7646074))

(assert (=> bs!1855457 m!7646044))

(declare-fun m!7646828 () Bool)

(assert (=> bs!1855457 m!7646828))

(assert (=> bs!1855457 m!7646044))

(declare-fun m!7646830 () Bool)

(assert (=> bs!1855457 m!7646830))

(declare-fun m!7646832 () Bool)

(assert (=> bs!1855457 m!7646832))

(assert (=> b!6941062 d!2167943))

(declare-fun b!6941857 () Bool)

(declare-fun e!4175998 () Bool)

(assert (=> b!6941857 (= e!4175998 (not (= (head!13912 (_1!37127 lt!2475899)) (c!1287895 r1!6342))))))

(declare-fun b!6941858 () Bool)

(declare-fun e!4175997 () Bool)

(assert (=> b!6941858 (= e!4175997 (= (head!13912 (_1!37127 lt!2475899)) (c!1287895 r1!6342)))))

(declare-fun b!6941859 () Bool)

(declare-fun res!2831792 () Bool)

(assert (=> b!6941859 (=> res!2831792 e!4175998)))

(assert (=> b!6941859 (= res!2831792 (not (isEmpty!38869 (tail!12964 (_1!37127 lt!2475899)))))))

(declare-fun b!6941860 () Bool)

(declare-fun res!2831791 () Bool)

(declare-fun e!4175999 () Bool)

(assert (=> b!6941860 (=> res!2831791 e!4175999)))

(assert (=> b!6941860 (= res!2831791 (not ((_ is ElementMatch!16967) r1!6342)))))

(declare-fun e!4175996 () Bool)

(assert (=> b!6941860 (= e!4175996 e!4175999)))

(declare-fun b!6941861 () Bool)

(declare-fun e!4175993 () Bool)

(assert (=> b!6941861 (= e!4175993 e!4175996)))

(declare-fun c!1288066 () Bool)

(assert (=> b!6941861 (= c!1288066 ((_ is EmptyLang!16967) r1!6342))))

(declare-fun b!6941862 () Bool)

(declare-fun res!2831785 () Bool)

(assert (=> b!6941862 (=> (not res!2831785) (not e!4175997))))

(assert (=> b!6941862 (= res!2831785 (isEmpty!38869 (tail!12964 (_1!37127 lt!2475899))))))

(declare-fun b!6941863 () Bool)

(declare-fun e!4175995 () Bool)

(assert (=> b!6941863 (= e!4175995 (nullable!6784 r1!6342))))

(declare-fun b!6941865 () Bool)

(assert (=> b!6941865 (= e!4175995 (matchR!9106 (derivativeStep!5459 r1!6342 (head!13912 (_1!37127 lt!2475899))) (tail!12964 (_1!37127 lt!2475899))))))

(declare-fun b!6941866 () Bool)

(declare-fun lt!2476018 () Bool)

(declare-fun call!630649 () Bool)

(assert (=> b!6941866 (= e!4175993 (= lt!2476018 call!630649))))

(declare-fun b!6941867 () Bool)

(declare-fun e!4175994 () Bool)

(assert (=> b!6941867 (= e!4175994 e!4175998)))

(declare-fun res!2831787 () Bool)

(assert (=> b!6941867 (=> res!2831787 e!4175998)))

(assert (=> b!6941867 (= res!2831787 call!630649)))

(declare-fun b!6941868 () Bool)

(declare-fun res!2831789 () Bool)

(assert (=> b!6941868 (=> res!2831789 e!4175999)))

(assert (=> b!6941868 (= res!2831789 e!4175997)))

(declare-fun res!2831790 () Bool)

(assert (=> b!6941868 (=> (not res!2831790) (not e!4175997))))

(assert (=> b!6941868 (= res!2831790 lt!2476018)))

(declare-fun b!6941869 () Bool)

(assert (=> b!6941869 (= e!4175996 (not lt!2476018))))

(declare-fun bm!630644 () Bool)

(assert (=> bm!630644 (= call!630649 (isEmpty!38869 (_1!37127 lt!2475899)))))

(declare-fun b!6941870 () Bool)

(assert (=> b!6941870 (= e!4175999 e!4175994)))

(declare-fun res!2831786 () Bool)

(assert (=> b!6941870 (=> (not res!2831786) (not e!4175994))))

(assert (=> b!6941870 (= res!2831786 (not lt!2476018))))

(declare-fun b!6941864 () Bool)

(declare-fun res!2831788 () Bool)

(assert (=> b!6941864 (=> (not res!2831788) (not e!4175997))))

(assert (=> b!6941864 (= res!2831788 (not call!630649))))

(declare-fun d!2167945 () Bool)

(assert (=> d!2167945 e!4175993))

(declare-fun c!1288068 () Bool)

(assert (=> d!2167945 (= c!1288068 ((_ is EmptyExpr!16967) r1!6342))))

(assert (=> d!2167945 (= lt!2476018 e!4175995)))

(declare-fun c!1288067 () Bool)

(assert (=> d!2167945 (= c!1288067 (isEmpty!38869 (_1!37127 lt!2475899)))))

(assert (=> d!2167945 (validRegex!8673 r1!6342)))

(assert (=> d!2167945 (= (matchR!9106 r1!6342 (_1!37127 lt!2475899)) lt!2476018)))

(assert (= (and d!2167945 c!1288067) b!6941863))

(assert (= (and d!2167945 (not c!1288067)) b!6941865))

(assert (= (and d!2167945 c!1288068) b!6941866))

(assert (= (and d!2167945 (not c!1288068)) b!6941861))

(assert (= (and b!6941861 c!1288066) b!6941869))

(assert (= (and b!6941861 (not c!1288066)) b!6941860))

(assert (= (and b!6941860 (not res!2831791)) b!6941868))

(assert (= (and b!6941868 res!2831790) b!6941864))

(assert (= (and b!6941864 res!2831788) b!6941862))

(assert (= (and b!6941862 res!2831785) b!6941858))

(assert (= (and b!6941868 (not res!2831789)) b!6941870))

(assert (= (and b!6941870 res!2831786) b!6941867))

(assert (= (and b!6941867 (not res!2831787)) b!6941859))

(assert (= (and b!6941859 (not res!2831792)) b!6941857))

(assert (= (or b!6941866 b!6941867 b!6941864) bm!630644))

(declare-fun m!7646834 () Bool)

(assert (=> d!2167945 m!7646834))

(assert (=> d!2167945 m!7646074))

(declare-fun m!7646836 () Bool)

(assert (=> b!6941857 m!7646836))

(declare-fun m!7646838 () Bool)

(assert (=> b!6941862 m!7646838))

(assert (=> b!6941862 m!7646838))

(declare-fun m!7646840 () Bool)

(assert (=> b!6941862 m!7646840))

(declare-fun m!7646842 () Bool)

(assert (=> b!6941863 m!7646842))

(assert (=> b!6941858 m!7646836))

(assert (=> bm!630644 m!7646834))

(assert (=> b!6941859 m!7646838))

(assert (=> b!6941859 m!7646838))

(assert (=> b!6941859 m!7646840))

(assert (=> b!6941865 m!7646836))

(assert (=> b!6941865 m!7646836))

(declare-fun m!7646844 () Bool)

(assert (=> b!6941865 m!7646844))

(assert (=> b!6941865 m!7646838))

(assert (=> b!6941865 m!7646844))

(assert (=> b!6941865 m!7646838))

(declare-fun m!7646846 () Bool)

(assert (=> b!6941865 m!7646846))

(assert (=> b!6941062 d!2167945))

(declare-fun bs!1855458 () Bool)

(declare-fun d!2167947 () Bool)

(assert (= bs!1855458 (and d!2167947 d!2167913)))

(declare-fun lambda!395549 () Int)

(assert (=> bs!1855458 (not (= lambda!395549 lambda!395543))))

(declare-fun bs!1855459 () Bool)

(assert (= bs!1855459 (and d!2167947 b!6941078)))

(assert (=> bs!1855459 (= (and (= r1!6342 lt!2475892) (= lt!2475872 r3!135)) (= lambda!395549 lambda!395479))))

(declare-fun bs!1855460 () Bool)

(assert (= bs!1855460 (and d!2167947 b!6941252)))

(assert (=> bs!1855460 (not (= lambda!395549 lambda!395498))))

(declare-fun bs!1855461 () Bool)

(assert (= bs!1855461 (and d!2167947 d!2167911)))

(assert (=> bs!1855461 (= (and (= r1!6342 lt!2475892) (= lt!2475872 r3!135)) (= lambda!395549 lambda!395540))))

(declare-fun bs!1855462 () Bool)

(assert (= bs!1855462 (and d!2167947 b!6941061)))

(assert (=> bs!1855462 (not (= lambda!395549 lambda!395476))))

(declare-fun bs!1855463 () Bool)

(assert (= bs!1855463 (and d!2167947 d!2167831)))

(assert (=> bs!1855463 (not (= lambda!395549 lambda!395528))))

(declare-fun bs!1855464 () Bool)

(assert (= bs!1855464 (and d!2167947 b!6941062)))

(assert (=> bs!1855464 (= lambda!395549 lambda!395473)))

(assert (=> bs!1855459 (not (= lambda!395549 lambda!395480))))

(declare-fun bs!1855465 () Bool)

(assert (= bs!1855465 (and d!2167947 b!6941832)))

(assert (=> bs!1855465 (not (= lambda!395549 lambda!395546))))

(assert (=> bs!1855464 (not (= lambda!395549 lambda!395474))))

(declare-fun bs!1855466 () Bool)

(assert (= bs!1855466 (and d!2167947 b!6941070)))

(assert (=> bs!1855466 (= (and (= s!14361 lt!2475880) (= lt!2475872 r2!6280)) (= lambda!395549 lambda!395477))))

(declare-fun bs!1855467 () Bool)

(assert (= bs!1855467 (and d!2167947 b!6941804)))

(assert (=> bs!1855467 (not (= lambda!395549 lambda!395545))))

(declare-fun bs!1855468 () Bool)

(assert (= bs!1855468 (and d!2167947 b!6941799)))

(assert (=> bs!1855468 (not (= lambda!395549 lambda!395544))))

(declare-fun bs!1855469 () Bool)

(assert (= bs!1855469 (and d!2167947 b!6941837)))

(assert (=> bs!1855469 (not (= lambda!395549 lambda!395547))))

(declare-fun bs!1855470 () Bool)

(assert (= bs!1855470 (and d!2167947 b!6941648)))

(assert (=> bs!1855470 (not (= lambda!395549 lambda!395536))))

(declare-fun bs!1855471 () Bool)

(assert (= bs!1855471 (and d!2167947 b!6941177)))

(assert (=> bs!1855471 (not (= lambda!395549 lambda!395485))))

(declare-fun bs!1855472 () Bool)

(assert (= bs!1855472 (and d!2167947 d!2167943)))

(assert (=> bs!1855472 (= lambda!395549 lambda!395548)))

(assert (=> bs!1855462 (= (and (= s!14361 (_2!37127 lt!2475899)) (= r1!6342 r2!6280) (= lt!2475872 r3!135)) (= lambda!395549 lambda!395475))))

(declare-fun bs!1855473 () Bool)

(assert (= bs!1855473 (and d!2167947 b!6941383)))

(assert (=> bs!1855473 (not (= lambda!395549 lambda!395505))))

(declare-fun bs!1855474 () Bool)

(assert (= bs!1855474 (and d!2167947 b!6941653)))

(assert (=> bs!1855474 (not (= lambda!395549 lambda!395537))))

(assert (=> bs!1855466 (not (= lambda!395549 lambda!395478))))

(declare-fun bs!1855475 () Bool)

(assert (= bs!1855475 (and d!2167947 b!6941257)))

(assert (=> bs!1855475 (not (= lambda!395549 lambda!395501))))

(declare-fun bs!1855476 () Bool)

(assert (= bs!1855476 (and d!2167947 b!6941182)))

(assert (=> bs!1855476 (not (= lambda!395549 lambda!395486))))

(declare-fun bs!1855477 () Bool)

(assert (= bs!1855477 (and d!2167947 d!2167859)))

(assert (=> bs!1855477 (= (and (= s!14361 (_2!37127 lt!2475899)) (= r1!6342 r2!6280) (= lt!2475872 r3!135)) (= lambda!395549 lambda!395531))))

(declare-fun bs!1855478 () Bool)

(assert (= bs!1855478 (and d!2167947 d!2167795)))

(assert (=> bs!1855478 (= (and (= s!14361 lt!2475880) (= lt!2475872 r2!6280)) (= lambda!395549 lambda!395514))))

(declare-fun bs!1855479 () Bool)

(assert (= bs!1855479 (and d!2167947 d!2167869)))

(assert (=> bs!1855479 (not (= lambda!395549 lambda!395535))))

(declare-fun bs!1855480 () Bool)

(assert (= bs!1855480 (and d!2167947 b!6941388)))

(assert (=> bs!1855480 (not (= lambda!395549 lambda!395507))))

(assert (=> bs!1855458 (= (and (= r1!6342 lt!2475892) (= lt!2475872 r3!135)) (= lambda!395549 lambda!395542))))

(assert (=> bs!1855463 (= (and (= s!14361 lt!2475880) (= lt!2475872 r2!6280)) (= lambda!395549 lambda!395526))))

(assert (=> bs!1855479 (= (and (= s!14361 (_2!37127 lt!2475899)) (= r1!6342 r2!6280) (= lt!2475872 r3!135)) (= lambda!395549 lambda!395533))))

(assert (=> d!2167947 true))

(assert (=> d!2167947 true))

(assert (=> d!2167947 true))

(declare-fun lambda!395550 () Int)

(assert (=> bs!1855458 (= (and (= r1!6342 lt!2475892) (= lt!2475872 r3!135)) (= lambda!395550 lambda!395543))))

(assert (=> bs!1855459 (not (= lambda!395550 lambda!395479))))

(assert (=> bs!1855460 (not (= lambda!395550 lambda!395498))))

(assert (=> bs!1855461 (not (= lambda!395550 lambda!395540))))

(assert (=> bs!1855462 (= (and (= s!14361 (_2!37127 lt!2475899)) (= r1!6342 r2!6280) (= lt!2475872 r3!135)) (= lambda!395550 lambda!395476))))

(assert (=> bs!1855463 (= (and (= s!14361 lt!2475880) (= lt!2475872 r2!6280)) (= lambda!395550 lambda!395528))))

(assert (=> bs!1855464 (not (= lambda!395550 lambda!395473))))

(declare-fun bs!1855481 () Bool)

(assert (= bs!1855481 d!2167947))

(assert (=> bs!1855481 (not (= lambda!395550 lambda!395549))))

(assert (=> bs!1855459 (= (and (= r1!6342 lt!2475892) (= lt!2475872 r3!135)) (= lambda!395550 lambda!395480))))

(assert (=> bs!1855465 (not (= lambda!395550 lambda!395546))))

(assert (=> bs!1855464 (= lambda!395550 lambda!395474)))

(assert (=> bs!1855466 (not (= lambda!395550 lambda!395477))))

(assert (=> bs!1855467 (= (and (= r1!6342 (regOne!34446 lt!2475878)) (= lt!2475872 (regTwo!34446 lt!2475878))) (= lambda!395550 lambda!395545))))

(assert (=> bs!1855468 (not (= lambda!395550 lambda!395544))))

(assert (=> bs!1855469 (= (and (= r1!6342 (regOne!34446 lt!2475869)) (= lt!2475872 (regTwo!34446 lt!2475869))) (= lambda!395550 lambda!395547))))

(assert (=> bs!1855470 (not (= lambda!395550 lambda!395536))))

(assert (=> bs!1855471 (not (= lambda!395550 lambda!395485))))

(assert (=> bs!1855472 (not (= lambda!395550 lambda!395548))))

(assert (=> bs!1855462 (not (= lambda!395550 lambda!395475))))

(assert (=> bs!1855473 (not (= lambda!395550 lambda!395505))))

(assert (=> bs!1855474 (= (and (= s!14361 (_2!37127 lt!2475899)) (= r1!6342 (regOne!34446 lt!2475872)) (= lt!2475872 (regTwo!34446 lt!2475872))) (= lambda!395550 lambda!395537))))

(assert (=> bs!1855466 (= (and (= s!14361 lt!2475880) (= lt!2475872 r2!6280)) (= lambda!395550 lambda!395478))))

(assert (=> bs!1855475 (= (and (= s!14361 (_1!37127 lt!2475891)) (= r1!6342 (regOne!34446 r2!6280)) (= lt!2475872 (regTwo!34446 r2!6280))) (= lambda!395550 lambda!395501))))

(assert (=> bs!1855476 (= (and (= s!14361 (_2!37127 lt!2475891)) (= r1!6342 (regOne!34446 r3!135)) (= lt!2475872 (regTwo!34446 r3!135))) (= lambda!395550 lambda!395486))))

(assert (=> bs!1855477 (not (= lambda!395550 lambda!395531))))

(assert (=> bs!1855478 (not (= lambda!395550 lambda!395514))))

(assert (=> bs!1855479 (= (and (= s!14361 (_2!37127 lt!2475899)) (= r1!6342 r2!6280) (= lt!2475872 r3!135)) (= lambda!395550 lambda!395535))))

(assert (=> bs!1855480 (= (and (= s!14361 lt!2475880) (= r1!6342 (regOne!34446 lt!2475892)) (= lt!2475872 (regTwo!34446 lt!2475892))) (= lambda!395550 lambda!395507))))

(assert (=> bs!1855458 (not (= lambda!395550 lambda!395542))))

(assert (=> bs!1855463 (not (= lambda!395550 lambda!395526))))

(assert (=> bs!1855479 (not (= lambda!395550 lambda!395533))))

(assert (=> d!2167947 true))

(assert (=> d!2167947 true))

(assert (=> d!2167947 true))

(assert (=> d!2167947 (= (Exists!3967 lambda!395549) (Exists!3967 lambda!395550))))

(declare-fun lt!2476019 () Unit!160658)

(assert (=> d!2167947 (= lt!2476019 (choose!51722 r1!6342 lt!2475872 s!14361))))

(assert (=> d!2167947 (validRegex!8673 r1!6342)))

(assert (=> d!2167947 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2428 r1!6342 lt!2475872 s!14361) lt!2476019)))

(declare-fun m!7646848 () Bool)

(assert (=> bs!1855481 m!7646848))

(declare-fun m!7646850 () Bool)

(assert (=> bs!1855481 m!7646850))

(declare-fun m!7646852 () Bool)

(assert (=> bs!1855481 m!7646852))

(assert (=> bs!1855481 m!7646074))

(assert (=> b!6941062 d!2167947))

(declare-fun d!2167949 () Bool)

(assert (=> d!2167949 (= (Exists!3967 lambda!395473) (choose!51720 lambda!395473))))

(declare-fun bs!1855482 () Bool)

(assert (= bs!1855482 d!2167949))

(declare-fun m!7646854 () Bool)

(assert (=> bs!1855482 m!7646854))

(assert (=> b!6941062 d!2167949))

(declare-fun bs!1855483 () Bool)

(declare-fun b!6941871 () Bool)

(assert (= bs!1855483 (and b!6941871 d!2167913)))

(declare-fun lambda!395551 () Int)

(assert (=> bs!1855483 (not (= lambda!395551 lambda!395543))))

(declare-fun bs!1855484 () Bool)

(assert (= bs!1855484 (and b!6941871 b!6941078)))

(assert (=> bs!1855484 (not (= lambda!395551 lambda!395479))))

(declare-fun bs!1855485 () Bool)

(assert (= bs!1855485 (and b!6941871 b!6941252)))

(assert (=> bs!1855485 (= (and (= (_1!37127 lt!2475899) (_1!37127 lt!2475891)) (= (reg!17296 r1!6342) (reg!17296 r2!6280)) (= r1!6342 r2!6280)) (= lambda!395551 lambda!395498))))

(declare-fun bs!1855486 () Bool)

(assert (= bs!1855486 (and b!6941871 d!2167911)))

(assert (=> bs!1855486 (not (= lambda!395551 lambda!395540))))

(declare-fun bs!1855487 () Bool)

(assert (= bs!1855487 (and b!6941871 d!2167831)))

(assert (=> bs!1855487 (not (= lambda!395551 lambda!395528))))

(declare-fun bs!1855488 () Bool)

(assert (= bs!1855488 (and b!6941871 b!6941062)))

(assert (=> bs!1855488 (not (= lambda!395551 lambda!395473))))

(declare-fun bs!1855489 () Bool)

(assert (= bs!1855489 (and b!6941871 d!2167947)))

(assert (=> bs!1855489 (not (= lambda!395551 lambda!395549))))

(assert (=> bs!1855484 (not (= lambda!395551 lambda!395480))))

(declare-fun bs!1855490 () Bool)

(assert (= bs!1855490 (and b!6941871 b!6941832)))

(assert (=> bs!1855490 (= (and (= (_1!37127 lt!2475899) s!14361) (= (reg!17296 r1!6342) (reg!17296 lt!2475869)) (= r1!6342 lt!2475869)) (= lambda!395551 lambda!395546))))

(assert (=> bs!1855488 (not (= lambda!395551 lambda!395474))))

(declare-fun bs!1855491 () Bool)

(assert (= bs!1855491 (and b!6941871 b!6941070)))

(assert (=> bs!1855491 (not (= lambda!395551 lambda!395477))))

(declare-fun bs!1855492 () Bool)

(assert (= bs!1855492 (and b!6941871 b!6941804)))

(assert (=> bs!1855492 (not (= lambda!395551 lambda!395545))))

(declare-fun bs!1855493 () Bool)

(assert (= bs!1855493 (and b!6941871 b!6941799)))

(assert (=> bs!1855493 (= (and (= (_1!37127 lt!2475899) s!14361) (= (reg!17296 r1!6342) (reg!17296 lt!2475878)) (= r1!6342 lt!2475878)) (= lambda!395551 lambda!395544))))

(declare-fun bs!1855494 () Bool)

(assert (= bs!1855494 (and b!6941871 b!6941837)))

(assert (=> bs!1855494 (not (= lambda!395551 lambda!395547))))

(declare-fun bs!1855495 () Bool)

(assert (= bs!1855495 (and b!6941871 b!6941648)))

(assert (=> bs!1855495 (= (and (= (_1!37127 lt!2475899) (_2!37127 lt!2475899)) (= (reg!17296 r1!6342) (reg!17296 lt!2475872)) (= r1!6342 lt!2475872)) (= lambda!395551 lambda!395536))))

(declare-fun bs!1855496 () Bool)

(assert (= bs!1855496 (and b!6941871 b!6941177)))

(assert (=> bs!1855496 (= (and (= (_1!37127 lt!2475899) (_2!37127 lt!2475891)) (= (reg!17296 r1!6342) (reg!17296 r3!135)) (= r1!6342 r3!135)) (= lambda!395551 lambda!395485))))

(declare-fun bs!1855497 () Bool)

(assert (= bs!1855497 (and b!6941871 d!2167943)))

(assert (=> bs!1855497 (not (= lambda!395551 lambda!395548))))

(declare-fun bs!1855498 () Bool)

(assert (= bs!1855498 (and b!6941871 b!6941061)))

(assert (=> bs!1855498 (not (= lambda!395551 lambda!395475))))

(assert (=> bs!1855498 (not (= lambda!395551 lambda!395476))))

(assert (=> bs!1855489 (not (= lambda!395551 lambda!395550))))

(declare-fun bs!1855499 () Bool)

(assert (= bs!1855499 (and b!6941871 b!6941383)))

(assert (=> bs!1855499 (= (and (= (_1!37127 lt!2475899) lt!2475880) (= (reg!17296 r1!6342) (reg!17296 lt!2475892)) (= r1!6342 lt!2475892)) (= lambda!395551 lambda!395505))))

(declare-fun bs!1855500 () Bool)

(assert (= bs!1855500 (and b!6941871 b!6941653)))

(assert (=> bs!1855500 (not (= lambda!395551 lambda!395537))))

(assert (=> bs!1855491 (not (= lambda!395551 lambda!395478))))

(declare-fun bs!1855501 () Bool)

(assert (= bs!1855501 (and b!6941871 b!6941257)))

(assert (=> bs!1855501 (not (= lambda!395551 lambda!395501))))

(declare-fun bs!1855502 () Bool)

(assert (= bs!1855502 (and b!6941871 b!6941182)))

(assert (=> bs!1855502 (not (= lambda!395551 lambda!395486))))

(declare-fun bs!1855503 () Bool)

(assert (= bs!1855503 (and b!6941871 d!2167859)))

(assert (=> bs!1855503 (not (= lambda!395551 lambda!395531))))

(declare-fun bs!1855504 () Bool)

(assert (= bs!1855504 (and b!6941871 d!2167795)))

(assert (=> bs!1855504 (not (= lambda!395551 lambda!395514))))

(declare-fun bs!1855505 () Bool)

(assert (= bs!1855505 (and b!6941871 d!2167869)))

(assert (=> bs!1855505 (not (= lambda!395551 lambda!395535))))

(declare-fun bs!1855506 () Bool)

(assert (= bs!1855506 (and b!6941871 b!6941388)))

(assert (=> bs!1855506 (not (= lambda!395551 lambda!395507))))

(assert (=> bs!1855483 (not (= lambda!395551 lambda!395542))))

(assert (=> bs!1855487 (not (= lambda!395551 lambda!395526))))

(assert (=> bs!1855505 (not (= lambda!395551 lambda!395533))))

(assert (=> b!6941871 true))

(assert (=> b!6941871 true))

(declare-fun bs!1855507 () Bool)

(declare-fun b!6941876 () Bool)

(assert (= bs!1855507 (and b!6941876 d!2167913)))

(declare-fun lambda!395552 () Int)

(assert (=> bs!1855507 (= (and (= (_1!37127 lt!2475899) s!14361) (= (regOne!34446 r1!6342) lt!2475892) (= (regTwo!34446 r1!6342) r3!135)) (= lambda!395552 lambda!395543))))

(declare-fun bs!1855508 () Bool)

(assert (= bs!1855508 (and b!6941876 b!6941078)))

(assert (=> bs!1855508 (not (= lambda!395552 lambda!395479))))

(declare-fun bs!1855509 () Bool)

(assert (= bs!1855509 (and b!6941876 b!6941252)))

(assert (=> bs!1855509 (not (= lambda!395552 lambda!395498))))

(declare-fun bs!1855510 () Bool)

(assert (= bs!1855510 (and b!6941876 d!2167911)))

(assert (=> bs!1855510 (not (= lambda!395552 lambda!395540))))

(declare-fun bs!1855511 () Bool)

(assert (= bs!1855511 (and b!6941876 d!2167831)))

(assert (=> bs!1855511 (= (and (= (_1!37127 lt!2475899) lt!2475880) (= (regOne!34446 r1!6342) r1!6342) (= (regTwo!34446 r1!6342) r2!6280)) (= lambda!395552 lambda!395528))))

(declare-fun bs!1855512 () Bool)

(assert (= bs!1855512 (and b!6941876 b!6941062)))

(assert (=> bs!1855512 (not (= lambda!395552 lambda!395473))))

(declare-fun bs!1855513 () Bool)

(assert (= bs!1855513 (and b!6941876 d!2167947)))

(assert (=> bs!1855513 (not (= lambda!395552 lambda!395549))))

(assert (=> bs!1855508 (= (and (= (_1!37127 lt!2475899) s!14361) (= (regOne!34446 r1!6342) lt!2475892) (= (regTwo!34446 r1!6342) r3!135)) (= lambda!395552 lambda!395480))))

(declare-fun bs!1855514 () Bool)

(assert (= bs!1855514 (and b!6941876 b!6941832)))

(assert (=> bs!1855514 (not (= lambda!395552 lambda!395546))))

(assert (=> bs!1855512 (= (and (= (_1!37127 lt!2475899) s!14361) (= (regOne!34446 r1!6342) r1!6342) (= (regTwo!34446 r1!6342) lt!2475872)) (= lambda!395552 lambda!395474))))

(declare-fun bs!1855515 () Bool)

(assert (= bs!1855515 (and b!6941876 b!6941070)))

(assert (=> bs!1855515 (not (= lambda!395552 lambda!395477))))

(declare-fun bs!1855516 () Bool)

(assert (= bs!1855516 (and b!6941876 b!6941804)))

(assert (=> bs!1855516 (= (and (= (_1!37127 lt!2475899) s!14361) (= (regOne!34446 r1!6342) (regOne!34446 lt!2475878)) (= (regTwo!34446 r1!6342) (regTwo!34446 lt!2475878))) (= lambda!395552 lambda!395545))))

(declare-fun bs!1855517 () Bool)

(assert (= bs!1855517 (and b!6941876 b!6941799)))

(assert (=> bs!1855517 (not (= lambda!395552 lambda!395544))))

(declare-fun bs!1855518 () Bool)

(assert (= bs!1855518 (and b!6941876 b!6941837)))

(assert (=> bs!1855518 (= (and (= (_1!37127 lt!2475899) s!14361) (= (regOne!34446 r1!6342) (regOne!34446 lt!2475869)) (= (regTwo!34446 r1!6342) (regTwo!34446 lt!2475869))) (= lambda!395552 lambda!395547))))

(declare-fun bs!1855519 () Bool)

(assert (= bs!1855519 (and b!6941876 b!6941648)))

(assert (=> bs!1855519 (not (= lambda!395552 lambda!395536))))

(declare-fun bs!1855520 () Bool)

(assert (= bs!1855520 (and b!6941876 b!6941177)))

(assert (=> bs!1855520 (not (= lambda!395552 lambda!395485))))

(declare-fun bs!1855521 () Bool)

(assert (= bs!1855521 (and b!6941876 d!2167943)))

(assert (=> bs!1855521 (not (= lambda!395552 lambda!395548))))

(declare-fun bs!1855522 () Bool)

(assert (= bs!1855522 (and b!6941876 b!6941061)))

(assert (=> bs!1855522 (not (= lambda!395552 lambda!395475))))

(assert (=> bs!1855522 (= (and (= (_1!37127 lt!2475899) (_2!37127 lt!2475899)) (= (regOne!34446 r1!6342) r2!6280) (= (regTwo!34446 r1!6342) r3!135)) (= lambda!395552 lambda!395476))))

(assert (=> bs!1855513 (= (and (= (_1!37127 lt!2475899) s!14361) (= (regOne!34446 r1!6342) r1!6342) (= (regTwo!34446 r1!6342) lt!2475872)) (= lambda!395552 lambda!395550))))

(declare-fun bs!1855523 () Bool)

(assert (= bs!1855523 (and b!6941876 b!6941383)))

(assert (=> bs!1855523 (not (= lambda!395552 lambda!395505))))

(declare-fun bs!1855524 () Bool)

(assert (= bs!1855524 (and b!6941876 b!6941653)))

(assert (=> bs!1855524 (= (and (= (_1!37127 lt!2475899) (_2!37127 lt!2475899)) (= (regOne!34446 r1!6342) (regOne!34446 lt!2475872)) (= (regTwo!34446 r1!6342) (regTwo!34446 lt!2475872))) (= lambda!395552 lambda!395537))))

(assert (=> bs!1855515 (= (and (= (_1!37127 lt!2475899) lt!2475880) (= (regOne!34446 r1!6342) r1!6342) (= (regTwo!34446 r1!6342) r2!6280)) (= lambda!395552 lambda!395478))))

(declare-fun bs!1855525 () Bool)

(assert (= bs!1855525 (and b!6941876 b!6941257)))

(assert (=> bs!1855525 (= (and (= (_1!37127 lt!2475899) (_1!37127 lt!2475891)) (= (regOne!34446 r1!6342) (regOne!34446 r2!6280)) (= (regTwo!34446 r1!6342) (regTwo!34446 r2!6280))) (= lambda!395552 lambda!395501))))

(declare-fun bs!1855526 () Bool)

(assert (= bs!1855526 (and b!6941876 b!6941182)))

(assert (=> bs!1855526 (= (and (= (_1!37127 lt!2475899) (_2!37127 lt!2475891)) (= (regOne!34446 r1!6342) (regOne!34446 r3!135)) (= (regTwo!34446 r1!6342) (regTwo!34446 r3!135))) (= lambda!395552 lambda!395486))))

(declare-fun bs!1855527 () Bool)

(assert (= bs!1855527 (and b!6941876 b!6941871)))

(assert (=> bs!1855527 (not (= lambda!395552 lambda!395551))))

(declare-fun bs!1855528 () Bool)

(assert (= bs!1855528 (and b!6941876 d!2167859)))

(assert (=> bs!1855528 (not (= lambda!395552 lambda!395531))))

(declare-fun bs!1855529 () Bool)

(assert (= bs!1855529 (and b!6941876 d!2167795)))

(assert (=> bs!1855529 (not (= lambda!395552 lambda!395514))))

(declare-fun bs!1855530 () Bool)

(assert (= bs!1855530 (and b!6941876 d!2167869)))

(assert (=> bs!1855530 (= (and (= (_1!37127 lt!2475899) (_2!37127 lt!2475899)) (= (regOne!34446 r1!6342) r2!6280) (= (regTwo!34446 r1!6342) r3!135)) (= lambda!395552 lambda!395535))))

(declare-fun bs!1855531 () Bool)

(assert (= bs!1855531 (and b!6941876 b!6941388)))

(assert (=> bs!1855531 (= (and (= (_1!37127 lt!2475899) lt!2475880) (= (regOne!34446 r1!6342) (regOne!34446 lt!2475892)) (= (regTwo!34446 r1!6342) (regTwo!34446 lt!2475892))) (= lambda!395552 lambda!395507))))

(assert (=> bs!1855507 (not (= lambda!395552 lambda!395542))))

(assert (=> bs!1855511 (not (= lambda!395552 lambda!395526))))

(assert (=> bs!1855530 (not (= lambda!395552 lambda!395533))))

(assert (=> b!6941876 true))

(assert (=> b!6941876 true))

(declare-fun d!2167951 () Bool)

(declare-fun c!1288072 () Bool)

(assert (=> d!2167951 (= c!1288072 ((_ is EmptyExpr!16967) r1!6342))))

(declare-fun e!4176002 () Bool)

(assert (=> d!2167951 (= (matchRSpec!4024 r1!6342 (_1!37127 lt!2475899)) e!4176002)))

(declare-fun e!4176001 () Bool)

(declare-fun call!630651 () Bool)

(assert (=> b!6941871 (= e!4176001 call!630651)))

(declare-fun c!1288069 () Bool)

(declare-fun bm!630645 () Bool)

(assert (=> bm!630645 (= call!630651 (Exists!3967 (ite c!1288069 lambda!395551 lambda!395552)))))

(declare-fun b!6941872 () Bool)

(declare-fun e!4176004 () Bool)

(assert (=> b!6941872 (= e!4176004 (matchRSpec!4024 (regTwo!34447 r1!6342) (_1!37127 lt!2475899)))))

(declare-fun b!6941873 () Bool)

(declare-fun e!4176000 () Bool)

(declare-fun e!4176005 () Bool)

(assert (=> b!6941873 (= e!4176000 e!4176005)))

(assert (=> b!6941873 (= c!1288069 ((_ is Star!16967) r1!6342))))

(declare-fun b!6941874 () Bool)

(declare-fun res!2831793 () Bool)

(assert (=> b!6941874 (=> res!2831793 e!4176001)))

(declare-fun call!630650 () Bool)

(assert (=> b!6941874 (= res!2831793 call!630650)))

(assert (=> b!6941874 (= e!4176005 e!4176001)))

(declare-fun b!6941875 () Bool)

(declare-fun e!4176006 () Bool)

(assert (=> b!6941875 (= e!4176006 (= (_1!37127 lt!2475899) (Cons!66596 (c!1287895 r1!6342) Nil!66596)))))

(declare-fun bm!630646 () Bool)

(assert (=> bm!630646 (= call!630650 (isEmpty!38869 (_1!37127 lt!2475899)))))

(assert (=> b!6941876 (= e!4176005 call!630651)))

(declare-fun b!6941877 () Bool)

(declare-fun c!1288071 () Bool)

(assert (=> b!6941877 (= c!1288071 ((_ is Union!16967) r1!6342))))

(assert (=> b!6941877 (= e!4176006 e!4176000)))

(declare-fun b!6941878 () Bool)

(declare-fun e!4176003 () Bool)

(assert (=> b!6941878 (= e!4176002 e!4176003)))

(declare-fun res!2831795 () Bool)

(assert (=> b!6941878 (= res!2831795 (not ((_ is EmptyLang!16967) r1!6342)))))

(assert (=> b!6941878 (=> (not res!2831795) (not e!4176003))))

(declare-fun b!6941879 () Bool)

(declare-fun c!1288070 () Bool)

(assert (=> b!6941879 (= c!1288070 ((_ is ElementMatch!16967) r1!6342))))

(assert (=> b!6941879 (= e!4176003 e!4176006)))

(declare-fun b!6941880 () Bool)

(assert (=> b!6941880 (= e!4176000 e!4176004)))

(declare-fun res!2831794 () Bool)

(assert (=> b!6941880 (= res!2831794 (matchRSpec!4024 (regOne!34447 r1!6342) (_1!37127 lt!2475899)))))

(assert (=> b!6941880 (=> res!2831794 e!4176004)))

(declare-fun b!6941881 () Bool)

(assert (=> b!6941881 (= e!4176002 call!630650)))

(assert (= (and d!2167951 c!1288072) b!6941881))

(assert (= (and d!2167951 (not c!1288072)) b!6941878))

(assert (= (and b!6941878 res!2831795) b!6941879))

(assert (= (and b!6941879 c!1288070) b!6941875))

(assert (= (and b!6941879 (not c!1288070)) b!6941877))

(assert (= (and b!6941877 c!1288071) b!6941880))

(assert (= (and b!6941877 (not c!1288071)) b!6941873))

(assert (= (and b!6941880 (not res!2831794)) b!6941872))

(assert (= (and b!6941873 c!1288069) b!6941874))

(assert (= (and b!6941873 (not c!1288069)) b!6941876))

(assert (= (and b!6941874 (not res!2831793)) b!6941871))

(assert (= (or b!6941871 b!6941876) bm!630645))

(assert (= (or b!6941881 b!6941874) bm!630646))

(declare-fun m!7646856 () Bool)

(assert (=> bm!630645 m!7646856))

(declare-fun m!7646858 () Bool)

(assert (=> b!6941872 m!7646858))

(assert (=> bm!630646 m!7646834))

(declare-fun m!7646860 () Bool)

(assert (=> b!6941880 m!7646860))

(assert (=> b!6941062 d!2167951))

(declare-fun d!2167953 () Bool)

(assert (=> d!2167953 (= (Exists!3967 lambda!395474) (choose!51720 lambda!395474))))

(declare-fun bs!1855532 () Bool)

(assert (= bs!1855532 d!2167953))

(declare-fun m!7646862 () Bool)

(assert (=> bs!1855532 m!7646862))

(assert (=> b!6941062 d!2167953))

(declare-fun d!2167955 () Bool)

(assert (=> d!2167955 (= (matchR!9106 r1!6342 (_1!37127 lt!2475899)) (matchRSpec!4024 r1!6342 (_1!37127 lt!2475899)))))

(declare-fun lt!2476020 () Unit!160658)

(assert (=> d!2167955 (= lt!2476020 (choose!51716 r1!6342 (_1!37127 lt!2475899)))))

(assert (=> d!2167955 (validRegex!8673 r1!6342)))

(assert (=> d!2167955 (= (mainMatchTheorem!4024 r1!6342 (_1!37127 lt!2475899)) lt!2476020)))

(declare-fun bs!1855533 () Bool)

(assert (= bs!1855533 d!2167955))

(assert (=> bs!1855533 m!7646112))

(assert (=> bs!1855533 m!7646106))

(declare-fun m!7646864 () Bool)

(assert (=> bs!1855533 m!7646864))

(assert (=> bs!1855533 m!7646074))

(assert (=> b!6941062 d!2167955))

(declare-fun d!2167957 () Bool)

(assert (=> d!2167957 (= (get!23387 lt!2475897) (v!53007 lt!2475897))))

(assert (=> b!6941062 d!2167957))

(declare-fun b!6941882 () Bool)

(declare-fun e!4176012 () Bool)

(assert (=> b!6941882 (= e!4176012 (not (= (head!13912 (_2!37127 lt!2475899)) (c!1287895 lt!2475872))))))

(declare-fun b!6941883 () Bool)

(declare-fun e!4176011 () Bool)

(assert (=> b!6941883 (= e!4176011 (= (head!13912 (_2!37127 lt!2475899)) (c!1287895 lt!2475872)))))

(declare-fun b!6941884 () Bool)

(declare-fun res!2831803 () Bool)

(assert (=> b!6941884 (=> res!2831803 e!4176012)))

(assert (=> b!6941884 (= res!2831803 (not (isEmpty!38869 (tail!12964 (_2!37127 lt!2475899)))))))

(declare-fun b!6941885 () Bool)

(declare-fun res!2831802 () Bool)

(declare-fun e!4176013 () Bool)

(assert (=> b!6941885 (=> res!2831802 e!4176013)))

(assert (=> b!6941885 (= res!2831802 (not ((_ is ElementMatch!16967) lt!2475872)))))

(declare-fun e!4176010 () Bool)

(assert (=> b!6941885 (= e!4176010 e!4176013)))

(declare-fun b!6941886 () Bool)

(declare-fun e!4176007 () Bool)

(assert (=> b!6941886 (= e!4176007 e!4176010)))

(declare-fun c!1288073 () Bool)

(assert (=> b!6941886 (= c!1288073 ((_ is EmptyLang!16967) lt!2475872))))

(declare-fun b!6941887 () Bool)

(declare-fun res!2831796 () Bool)

(assert (=> b!6941887 (=> (not res!2831796) (not e!4176011))))

(assert (=> b!6941887 (= res!2831796 (isEmpty!38869 (tail!12964 (_2!37127 lt!2475899))))))

(declare-fun b!6941888 () Bool)

(declare-fun e!4176009 () Bool)

(assert (=> b!6941888 (= e!4176009 (nullable!6784 lt!2475872))))

(declare-fun b!6941890 () Bool)

(assert (=> b!6941890 (= e!4176009 (matchR!9106 (derivativeStep!5459 lt!2475872 (head!13912 (_2!37127 lt!2475899))) (tail!12964 (_2!37127 lt!2475899))))))

(declare-fun b!6941891 () Bool)

(declare-fun lt!2476021 () Bool)

(declare-fun call!630652 () Bool)

(assert (=> b!6941891 (= e!4176007 (= lt!2476021 call!630652))))

(declare-fun b!6941892 () Bool)

(declare-fun e!4176008 () Bool)

(assert (=> b!6941892 (= e!4176008 e!4176012)))

(declare-fun res!2831798 () Bool)

(assert (=> b!6941892 (=> res!2831798 e!4176012)))

(assert (=> b!6941892 (= res!2831798 call!630652)))

(declare-fun b!6941893 () Bool)

(declare-fun res!2831800 () Bool)

(assert (=> b!6941893 (=> res!2831800 e!4176013)))

(assert (=> b!6941893 (= res!2831800 e!4176011)))

(declare-fun res!2831801 () Bool)

(assert (=> b!6941893 (=> (not res!2831801) (not e!4176011))))

(assert (=> b!6941893 (= res!2831801 lt!2476021)))

(declare-fun b!6941894 () Bool)

(assert (=> b!6941894 (= e!4176010 (not lt!2476021))))

(declare-fun bm!630647 () Bool)

(assert (=> bm!630647 (= call!630652 (isEmpty!38869 (_2!37127 lt!2475899)))))

(declare-fun b!6941895 () Bool)

(assert (=> b!6941895 (= e!4176013 e!4176008)))

(declare-fun res!2831797 () Bool)

(assert (=> b!6941895 (=> (not res!2831797) (not e!4176008))))

(assert (=> b!6941895 (= res!2831797 (not lt!2476021))))

(declare-fun b!6941889 () Bool)

(declare-fun res!2831799 () Bool)

(assert (=> b!6941889 (=> (not res!2831799) (not e!4176011))))

(assert (=> b!6941889 (= res!2831799 (not call!630652))))

(declare-fun d!2167959 () Bool)

(assert (=> d!2167959 e!4176007))

(declare-fun c!1288075 () Bool)

(assert (=> d!2167959 (= c!1288075 ((_ is EmptyExpr!16967) lt!2475872))))

(assert (=> d!2167959 (= lt!2476021 e!4176009)))

(declare-fun c!1288074 () Bool)

(assert (=> d!2167959 (= c!1288074 (isEmpty!38869 (_2!37127 lt!2475899)))))

(assert (=> d!2167959 (validRegex!8673 lt!2475872)))

(assert (=> d!2167959 (= (matchR!9106 lt!2475872 (_2!37127 lt!2475899)) lt!2476021)))

(assert (= (and d!2167959 c!1288074) b!6941888))

(assert (= (and d!2167959 (not c!1288074)) b!6941890))

(assert (= (and d!2167959 c!1288075) b!6941891))

(assert (= (and d!2167959 (not c!1288075)) b!6941886))

(assert (= (and b!6941886 c!1288073) b!6941894))

(assert (= (and b!6941886 (not c!1288073)) b!6941885))

(assert (= (and b!6941885 (not res!2831802)) b!6941893))

(assert (= (and b!6941893 res!2831801) b!6941889))

(assert (= (and b!6941889 res!2831799) b!6941887))

(assert (= (and b!6941887 res!2831796) b!6941883))

(assert (= (and b!6941893 (not res!2831800)) b!6941895))

(assert (= (and b!6941895 res!2831797) b!6941892))

(assert (= (and b!6941892 (not res!2831798)) b!6941884))

(assert (= (and b!6941884 (not res!2831803)) b!6941882))

(assert (= (or b!6941891 b!6941892 b!6941889) bm!630647))

(assert (=> d!2167959 m!7646684))

(assert (=> d!2167959 m!7646584))

(declare-fun m!7646866 () Bool)

(assert (=> b!6941882 m!7646866))

(declare-fun m!7646868 () Bool)

(assert (=> b!6941887 m!7646868))

(assert (=> b!6941887 m!7646868))

(declare-fun m!7646870 () Bool)

(assert (=> b!6941887 m!7646870))

(declare-fun m!7646872 () Bool)

(assert (=> b!6941888 m!7646872))

(assert (=> b!6941883 m!7646866))

(assert (=> bm!630647 m!7646684))

(assert (=> b!6941884 m!7646868))

(assert (=> b!6941884 m!7646868))

(assert (=> b!6941884 m!7646870))

(assert (=> b!6941890 m!7646866))

(assert (=> b!6941890 m!7646866))

(declare-fun m!7646874 () Bool)

(assert (=> b!6941890 m!7646874))

(assert (=> b!6941890 m!7646868))

(assert (=> b!6941890 m!7646874))

(assert (=> b!6941890 m!7646868))

(declare-fun m!7646876 () Bool)

(assert (=> b!6941890 m!7646876))

(assert (=> b!6941073 d!2167959))

(declare-fun b!6941896 () Bool)

(declare-fun res!2831805 () Bool)

(declare-fun e!4176014 () Bool)

(assert (=> b!6941896 (=> (not res!2831805) (not e!4176014))))

(declare-fun call!630653 () Bool)

(assert (=> b!6941896 (= res!2831805 call!630653)))

(declare-fun e!4176017 () Bool)

(assert (=> b!6941896 (= e!4176017 e!4176014)))

(declare-fun b!6941897 () Bool)

(declare-fun e!4176016 () Bool)

(declare-fun e!4176015 () Bool)

(assert (=> b!6941897 (= e!4176016 e!4176015)))

(declare-fun res!2831807 () Bool)

(assert (=> b!6941897 (= res!2831807 (not (nullable!6784 (reg!17296 r3!135))))))

(assert (=> b!6941897 (=> (not res!2831807) (not e!4176015))))

(declare-fun b!6941898 () Bool)

(declare-fun e!4176019 () Bool)

(assert (=> b!6941898 (= e!4176019 e!4176016)))

(declare-fun c!1288076 () Bool)

(assert (=> b!6941898 (= c!1288076 ((_ is Star!16967) r3!135))))

(declare-fun b!6941899 () Bool)

(declare-fun e!4176018 () Bool)

(declare-fun e!4176020 () Bool)

(assert (=> b!6941899 (= e!4176018 e!4176020)))

(declare-fun res!2831808 () Bool)

(assert (=> b!6941899 (=> (not res!2831808) (not e!4176020))))

(declare-fun call!630654 () Bool)

(assert (=> b!6941899 (= res!2831808 call!630654)))

(declare-fun b!6941900 () Bool)

(assert (=> b!6941900 (= e!4176020 call!630653)))

(declare-fun b!6941901 () Bool)

(declare-fun call!630655 () Bool)

(assert (=> b!6941901 (= e!4176015 call!630655)))

(declare-fun b!6941902 () Bool)

(declare-fun res!2831806 () Bool)

(assert (=> b!6941902 (=> res!2831806 e!4176018)))

(assert (=> b!6941902 (= res!2831806 (not ((_ is Concat!25812) r3!135)))))

(assert (=> b!6941902 (= e!4176017 e!4176018)))

(declare-fun bm!630649 () Bool)

(assert (=> bm!630649 (= call!630654 call!630655)))

(declare-fun b!6941903 () Bool)

(assert (=> b!6941903 (= e!4176016 e!4176017)))

(declare-fun c!1288077 () Bool)

(assert (=> b!6941903 (= c!1288077 ((_ is Union!16967) r3!135))))

(declare-fun b!6941904 () Bool)

(assert (=> b!6941904 (= e!4176014 call!630654)))

(declare-fun bm!630650 () Bool)

(assert (=> bm!630650 (= call!630653 (validRegex!8673 (ite c!1288077 (regOne!34447 r3!135) (regTwo!34446 r3!135))))))

(declare-fun d!2167961 () Bool)

(declare-fun res!2831804 () Bool)

(assert (=> d!2167961 (=> res!2831804 e!4176019)))

(assert (=> d!2167961 (= res!2831804 ((_ is ElementMatch!16967) r3!135))))

(assert (=> d!2167961 (= (validRegex!8673 r3!135) e!4176019)))

(declare-fun bm!630648 () Bool)

(assert (=> bm!630648 (= call!630655 (validRegex!8673 (ite c!1288076 (reg!17296 r3!135) (ite c!1288077 (regTwo!34447 r3!135) (regOne!34446 r3!135)))))))

(assert (= (and d!2167961 (not res!2831804)) b!6941898))

(assert (= (and b!6941898 c!1288076) b!6941897))

(assert (= (and b!6941898 (not c!1288076)) b!6941903))

(assert (= (and b!6941897 res!2831807) b!6941901))

(assert (= (and b!6941903 c!1288077) b!6941896))

(assert (= (and b!6941903 (not c!1288077)) b!6941902))

(assert (= (and b!6941896 res!2831805) b!6941904))

(assert (= (and b!6941902 (not res!2831806)) b!6941899))

(assert (= (and b!6941899 res!2831808) b!6941900))

(assert (= (or b!6941896 b!6941900) bm!630650))

(assert (= (or b!6941904 b!6941899) bm!630649))

(assert (= (or b!6941901 bm!630649) bm!630648))

(declare-fun m!7646878 () Bool)

(assert (=> b!6941897 m!7646878))

(declare-fun m!7646880 () Bool)

(assert (=> bm!630650 m!7646880))

(declare-fun m!7646882 () Bool)

(assert (=> bm!630648 m!7646882))

(assert (=> b!6941064 d!2167961))

(declare-fun b!6941918 () Bool)

(declare-fun e!4176023 () Bool)

(declare-fun tp!1913384 () Bool)

(declare-fun tp!1913382 () Bool)

(assert (=> b!6941918 (= e!4176023 (and tp!1913384 tp!1913382))))

(declare-fun b!6941916 () Bool)

(declare-fun tp!1913386 () Bool)

(declare-fun tp!1913383 () Bool)

(assert (=> b!6941916 (= e!4176023 (and tp!1913386 tp!1913383))))

(declare-fun b!6941915 () Bool)

(assert (=> b!6941915 (= e!4176023 tp_is_empty!43159)))

(declare-fun b!6941917 () Bool)

(declare-fun tp!1913385 () Bool)

(assert (=> b!6941917 (= e!4176023 tp!1913385)))

(assert (=> b!6941060 (= tp!1913273 e!4176023)))

(assert (= (and b!6941060 ((_ is ElementMatch!16967) (regOne!34446 r3!135))) b!6941915))

(assert (= (and b!6941060 ((_ is Concat!25812) (regOne!34446 r3!135))) b!6941916))

(assert (= (and b!6941060 ((_ is Star!16967) (regOne!34446 r3!135))) b!6941917))

(assert (= (and b!6941060 ((_ is Union!16967) (regOne!34446 r3!135))) b!6941918))

(declare-fun b!6941922 () Bool)

(declare-fun e!4176024 () Bool)

(declare-fun tp!1913389 () Bool)

(declare-fun tp!1913387 () Bool)

(assert (=> b!6941922 (= e!4176024 (and tp!1913389 tp!1913387))))

(declare-fun b!6941920 () Bool)

(declare-fun tp!1913391 () Bool)

(declare-fun tp!1913388 () Bool)

(assert (=> b!6941920 (= e!4176024 (and tp!1913391 tp!1913388))))

(declare-fun b!6941919 () Bool)

(assert (=> b!6941919 (= e!4176024 tp_is_empty!43159)))

(declare-fun b!6941921 () Bool)

(declare-fun tp!1913390 () Bool)

(assert (=> b!6941921 (= e!4176024 tp!1913390)))

(assert (=> b!6941060 (= tp!1913276 e!4176024)))

(assert (= (and b!6941060 ((_ is ElementMatch!16967) (regTwo!34446 r3!135))) b!6941919))

(assert (= (and b!6941060 ((_ is Concat!25812) (regTwo!34446 r3!135))) b!6941920))

(assert (= (and b!6941060 ((_ is Star!16967) (regTwo!34446 r3!135))) b!6941921))

(assert (= (and b!6941060 ((_ is Union!16967) (regTwo!34446 r3!135))) b!6941922))

(declare-fun b!6941926 () Bool)

(declare-fun e!4176025 () Bool)

(declare-fun tp!1913394 () Bool)

(declare-fun tp!1913392 () Bool)

(assert (=> b!6941926 (= e!4176025 (and tp!1913394 tp!1913392))))

(declare-fun b!6941924 () Bool)

(declare-fun tp!1913396 () Bool)

(declare-fun tp!1913393 () Bool)

(assert (=> b!6941924 (= e!4176025 (and tp!1913396 tp!1913393))))

(declare-fun b!6941923 () Bool)

(assert (=> b!6941923 (= e!4176025 tp_is_empty!43159)))

(declare-fun b!6941925 () Bool)

(declare-fun tp!1913395 () Bool)

(assert (=> b!6941925 (= e!4176025 tp!1913395)))

(assert (=> b!6941081 (= tp!1913268 e!4176025)))

(assert (= (and b!6941081 ((_ is ElementMatch!16967) (regOne!34447 r3!135))) b!6941923))

(assert (= (and b!6941081 ((_ is Concat!25812) (regOne!34447 r3!135))) b!6941924))

(assert (= (and b!6941081 ((_ is Star!16967) (regOne!34447 r3!135))) b!6941925))

(assert (= (and b!6941081 ((_ is Union!16967) (regOne!34447 r3!135))) b!6941926))

(declare-fun b!6941930 () Bool)

(declare-fun e!4176026 () Bool)

(declare-fun tp!1913399 () Bool)

(declare-fun tp!1913397 () Bool)

(assert (=> b!6941930 (= e!4176026 (and tp!1913399 tp!1913397))))

(declare-fun b!6941928 () Bool)

(declare-fun tp!1913401 () Bool)

(declare-fun tp!1913398 () Bool)

(assert (=> b!6941928 (= e!4176026 (and tp!1913401 tp!1913398))))

(declare-fun b!6941927 () Bool)

(assert (=> b!6941927 (= e!4176026 tp_is_empty!43159)))

(declare-fun b!6941929 () Bool)

(declare-fun tp!1913400 () Bool)

(assert (=> b!6941929 (= e!4176026 tp!1913400)))

(assert (=> b!6941081 (= tp!1913282 e!4176026)))

(assert (= (and b!6941081 ((_ is ElementMatch!16967) (regTwo!34447 r3!135))) b!6941927))

(assert (= (and b!6941081 ((_ is Concat!25812) (regTwo!34447 r3!135))) b!6941928))

(assert (= (and b!6941081 ((_ is Star!16967) (regTwo!34447 r3!135))) b!6941929))

(assert (= (and b!6941081 ((_ is Union!16967) (regTwo!34447 r3!135))) b!6941930))

(declare-fun b!6941934 () Bool)

(declare-fun e!4176027 () Bool)

(declare-fun tp!1913404 () Bool)

(declare-fun tp!1913402 () Bool)

(assert (=> b!6941934 (= e!4176027 (and tp!1913404 tp!1913402))))

(declare-fun b!6941932 () Bool)

(declare-fun tp!1913406 () Bool)

(declare-fun tp!1913403 () Bool)

(assert (=> b!6941932 (= e!4176027 (and tp!1913406 tp!1913403))))

(declare-fun b!6941931 () Bool)

(assert (=> b!6941931 (= e!4176027 tp_is_empty!43159)))

(declare-fun b!6941933 () Bool)

(declare-fun tp!1913405 () Bool)

(assert (=> b!6941933 (= e!4176027 tp!1913405)))

(assert (=> b!6941065 (= tp!1913277 e!4176027)))

(assert (= (and b!6941065 ((_ is ElementMatch!16967) (reg!17296 r1!6342))) b!6941931))

(assert (= (and b!6941065 ((_ is Concat!25812) (reg!17296 r1!6342))) b!6941932))

(assert (= (and b!6941065 ((_ is Star!16967) (reg!17296 r1!6342))) b!6941933))

(assert (= (and b!6941065 ((_ is Union!16967) (reg!17296 r1!6342))) b!6941934))

(declare-fun b!6941938 () Bool)

(declare-fun e!4176028 () Bool)

(declare-fun tp!1913409 () Bool)

(declare-fun tp!1913407 () Bool)

(assert (=> b!6941938 (= e!4176028 (and tp!1913409 tp!1913407))))

(declare-fun b!6941936 () Bool)

(declare-fun tp!1913411 () Bool)

(declare-fun tp!1913408 () Bool)

(assert (=> b!6941936 (= e!4176028 (and tp!1913411 tp!1913408))))

(declare-fun b!6941935 () Bool)

(assert (=> b!6941935 (= e!4176028 tp_is_empty!43159)))

(declare-fun b!6941937 () Bool)

(declare-fun tp!1913410 () Bool)

(assert (=> b!6941937 (= e!4176028 tp!1913410)))

(assert (=> b!6941072 (= tp!1913283 e!4176028)))

(assert (= (and b!6941072 ((_ is ElementMatch!16967) (regOne!34447 r2!6280))) b!6941935))

(assert (= (and b!6941072 ((_ is Concat!25812) (regOne!34447 r2!6280))) b!6941936))

(assert (= (and b!6941072 ((_ is Star!16967) (regOne!34447 r2!6280))) b!6941937))

(assert (= (and b!6941072 ((_ is Union!16967) (regOne!34447 r2!6280))) b!6941938))

(declare-fun b!6941942 () Bool)

(declare-fun e!4176029 () Bool)

(declare-fun tp!1913414 () Bool)

(declare-fun tp!1913412 () Bool)

(assert (=> b!6941942 (= e!4176029 (and tp!1913414 tp!1913412))))

(declare-fun b!6941940 () Bool)

(declare-fun tp!1913416 () Bool)

(declare-fun tp!1913413 () Bool)

(assert (=> b!6941940 (= e!4176029 (and tp!1913416 tp!1913413))))

(declare-fun b!6941939 () Bool)

(assert (=> b!6941939 (= e!4176029 tp_is_empty!43159)))

(declare-fun b!6941941 () Bool)

(declare-fun tp!1913415 () Bool)

(assert (=> b!6941941 (= e!4176029 tp!1913415)))

(assert (=> b!6941072 (= tp!1913271 e!4176029)))

(assert (= (and b!6941072 ((_ is ElementMatch!16967) (regTwo!34447 r2!6280))) b!6941939))

(assert (= (and b!6941072 ((_ is Concat!25812) (regTwo!34447 r2!6280))) b!6941940))

(assert (= (and b!6941072 ((_ is Star!16967) (regTwo!34447 r2!6280))) b!6941941))

(assert (= (and b!6941072 ((_ is Union!16967) (regTwo!34447 r2!6280))) b!6941942))

(declare-fun b!6941946 () Bool)

(declare-fun e!4176030 () Bool)

(declare-fun tp!1913419 () Bool)

(declare-fun tp!1913417 () Bool)

(assert (=> b!6941946 (= e!4176030 (and tp!1913419 tp!1913417))))

(declare-fun b!6941944 () Bool)

(declare-fun tp!1913421 () Bool)

(declare-fun tp!1913418 () Bool)

(assert (=> b!6941944 (= e!4176030 (and tp!1913421 tp!1913418))))

(declare-fun b!6941943 () Bool)

(assert (=> b!6941943 (= e!4176030 tp_is_empty!43159)))

(declare-fun b!6941945 () Bool)

(declare-fun tp!1913420 () Bool)

(assert (=> b!6941945 (= e!4176030 tp!1913420)))

(assert (=> b!6941077 (= tp!1913281 e!4176030)))

(assert (= (and b!6941077 ((_ is ElementMatch!16967) (regOne!34446 r2!6280))) b!6941943))

(assert (= (and b!6941077 ((_ is Concat!25812) (regOne!34446 r2!6280))) b!6941944))

(assert (= (and b!6941077 ((_ is Star!16967) (regOne!34446 r2!6280))) b!6941945))

(assert (= (and b!6941077 ((_ is Union!16967) (regOne!34446 r2!6280))) b!6941946))

(declare-fun b!6941950 () Bool)

(declare-fun e!4176031 () Bool)

(declare-fun tp!1913424 () Bool)

(declare-fun tp!1913422 () Bool)

(assert (=> b!6941950 (= e!4176031 (and tp!1913424 tp!1913422))))

(declare-fun b!6941948 () Bool)

(declare-fun tp!1913426 () Bool)

(declare-fun tp!1913423 () Bool)

(assert (=> b!6941948 (= e!4176031 (and tp!1913426 tp!1913423))))

(declare-fun b!6941947 () Bool)

(assert (=> b!6941947 (= e!4176031 tp_is_empty!43159)))

(declare-fun b!6941949 () Bool)

(declare-fun tp!1913425 () Bool)

(assert (=> b!6941949 (= e!4176031 tp!1913425)))

(assert (=> b!6941077 (= tp!1913278 e!4176031)))

(assert (= (and b!6941077 ((_ is ElementMatch!16967) (regTwo!34446 r2!6280))) b!6941947))

(assert (= (and b!6941077 ((_ is Concat!25812) (regTwo!34446 r2!6280))) b!6941948))

(assert (= (and b!6941077 ((_ is Star!16967) (regTwo!34446 r2!6280))) b!6941949))

(assert (= (and b!6941077 ((_ is Union!16967) (regTwo!34446 r2!6280))) b!6941950))

(declare-fun b!6941954 () Bool)

(declare-fun e!4176032 () Bool)

(declare-fun tp!1913429 () Bool)

(declare-fun tp!1913427 () Bool)

(assert (=> b!6941954 (= e!4176032 (and tp!1913429 tp!1913427))))

(declare-fun b!6941952 () Bool)

(declare-fun tp!1913431 () Bool)

(declare-fun tp!1913428 () Bool)

(assert (=> b!6941952 (= e!4176032 (and tp!1913431 tp!1913428))))

(declare-fun b!6941951 () Bool)

(assert (=> b!6941951 (= e!4176032 tp_is_empty!43159)))

(declare-fun b!6941953 () Bool)

(declare-fun tp!1913430 () Bool)

(assert (=> b!6941953 (= e!4176032 tp!1913430)))

(assert (=> b!6941063 (= tp!1913275 e!4176032)))

(assert (= (and b!6941063 ((_ is ElementMatch!16967) (regOne!34447 r1!6342))) b!6941951))

(assert (= (and b!6941063 ((_ is Concat!25812) (regOne!34447 r1!6342))) b!6941952))

(assert (= (and b!6941063 ((_ is Star!16967) (regOne!34447 r1!6342))) b!6941953))

(assert (= (and b!6941063 ((_ is Union!16967) (regOne!34447 r1!6342))) b!6941954))

(declare-fun b!6941958 () Bool)

(declare-fun e!4176033 () Bool)

(declare-fun tp!1913434 () Bool)

(declare-fun tp!1913432 () Bool)

(assert (=> b!6941958 (= e!4176033 (and tp!1913434 tp!1913432))))

(declare-fun b!6941956 () Bool)

(declare-fun tp!1913436 () Bool)

(declare-fun tp!1913433 () Bool)

(assert (=> b!6941956 (= e!4176033 (and tp!1913436 tp!1913433))))

(declare-fun b!6941955 () Bool)

(assert (=> b!6941955 (= e!4176033 tp_is_empty!43159)))

(declare-fun b!6941957 () Bool)

(declare-fun tp!1913435 () Bool)

(assert (=> b!6941957 (= e!4176033 tp!1913435)))

(assert (=> b!6941063 (= tp!1913280 e!4176033)))

(assert (= (and b!6941063 ((_ is ElementMatch!16967) (regTwo!34447 r1!6342))) b!6941955))

(assert (= (and b!6941063 ((_ is Concat!25812) (regTwo!34447 r1!6342))) b!6941956))

(assert (= (and b!6941063 ((_ is Star!16967) (regTwo!34447 r1!6342))) b!6941957))

(assert (= (and b!6941063 ((_ is Union!16967) (regTwo!34447 r1!6342))) b!6941958))

(declare-fun b!6941963 () Bool)

(declare-fun e!4176036 () Bool)

(declare-fun tp!1913439 () Bool)

(assert (=> b!6941963 (= e!4176036 (and tp_is_empty!43159 tp!1913439))))

(assert (=> b!6941080 (= tp!1913269 e!4176036)))

(assert (= (and b!6941080 ((_ is Cons!66596) (t!380463 s!14361))) b!6941963))

(declare-fun b!6941967 () Bool)

(declare-fun e!4176037 () Bool)

(declare-fun tp!1913442 () Bool)

(declare-fun tp!1913440 () Bool)

(assert (=> b!6941967 (= e!4176037 (and tp!1913442 tp!1913440))))

(declare-fun b!6941965 () Bool)

(declare-fun tp!1913444 () Bool)

(declare-fun tp!1913441 () Bool)

(assert (=> b!6941965 (= e!4176037 (and tp!1913444 tp!1913441))))

(declare-fun b!6941964 () Bool)

(assert (=> b!6941964 (= e!4176037 tp_is_empty!43159)))

(declare-fun b!6941966 () Bool)

(declare-fun tp!1913443 () Bool)

(assert (=> b!6941966 (= e!4176037 tp!1913443)))

(assert (=> b!6941075 (= tp!1913274 e!4176037)))

(assert (= (and b!6941075 ((_ is ElementMatch!16967) (reg!17296 r2!6280))) b!6941964))

(assert (= (and b!6941075 ((_ is Concat!25812) (reg!17296 r2!6280))) b!6941965))

(assert (= (and b!6941075 ((_ is Star!16967) (reg!17296 r2!6280))) b!6941966))

(assert (= (and b!6941075 ((_ is Union!16967) (reg!17296 r2!6280))) b!6941967))

(declare-fun b!6941971 () Bool)

(declare-fun e!4176038 () Bool)

(declare-fun tp!1913447 () Bool)

(declare-fun tp!1913445 () Bool)

(assert (=> b!6941971 (= e!4176038 (and tp!1913447 tp!1913445))))

(declare-fun b!6941969 () Bool)

(declare-fun tp!1913449 () Bool)

(declare-fun tp!1913446 () Bool)

(assert (=> b!6941969 (= e!4176038 (and tp!1913449 tp!1913446))))

(declare-fun b!6941968 () Bool)

(assert (=> b!6941968 (= e!4176038 tp_is_empty!43159)))

(declare-fun b!6941970 () Bool)

(declare-fun tp!1913448 () Bool)

(assert (=> b!6941970 (= e!4176038 tp!1913448)))

(assert (=> b!6941074 (= tp!1913270 e!4176038)))

(assert (= (and b!6941074 ((_ is ElementMatch!16967) (regOne!34446 r1!6342))) b!6941968))

(assert (= (and b!6941074 ((_ is Concat!25812) (regOne!34446 r1!6342))) b!6941969))

(assert (= (and b!6941074 ((_ is Star!16967) (regOne!34446 r1!6342))) b!6941970))

(assert (= (and b!6941074 ((_ is Union!16967) (regOne!34446 r1!6342))) b!6941971))

(declare-fun b!6941975 () Bool)

(declare-fun e!4176039 () Bool)

(declare-fun tp!1913452 () Bool)

(declare-fun tp!1913450 () Bool)

(assert (=> b!6941975 (= e!4176039 (and tp!1913452 tp!1913450))))

(declare-fun b!6941973 () Bool)

(declare-fun tp!1913454 () Bool)

(declare-fun tp!1913451 () Bool)

(assert (=> b!6941973 (= e!4176039 (and tp!1913454 tp!1913451))))

(declare-fun b!6941972 () Bool)

(assert (=> b!6941972 (= e!4176039 tp_is_empty!43159)))

(declare-fun b!6941974 () Bool)

(declare-fun tp!1913453 () Bool)

(assert (=> b!6941974 (= e!4176039 tp!1913453)))

(assert (=> b!6941074 (= tp!1913272 e!4176039)))

(assert (= (and b!6941074 ((_ is ElementMatch!16967) (regTwo!34446 r1!6342))) b!6941972))

(assert (= (and b!6941074 ((_ is Concat!25812) (regTwo!34446 r1!6342))) b!6941973))

(assert (= (and b!6941074 ((_ is Star!16967) (regTwo!34446 r1!6342))) b!6941974))

(assert (= (and b!6941074 ((_ is Union!16967) (regTwo!34446 r1!6342))) b!6941975))

(declare-fun b!6941979 () Bool)

(declare-fun e!4176040 () Bool)

(declare-fun tp!1913457 () Bool)

(declare-fun tp!1913455 () Bool)

(assert (=> b!6941979 (= e!4176040 (and tp!1913457 tp!1913455))))

(declare-fun b!6941977 () Bool)

(declare-fun tp!1913459 () Bool)

(declare-fun tp!1913456 () Bool)

(assert (=> b!6941977 (= e!4176040 (and tp!1913459 tp!1913456))))

(declare-fun b!6941976 () Bool)

(assert (=> b!6941976 (= e!4176040 tp_is_empty!43159)))

(declare-fun b!6941978 () Bool)

(declare-fun tp!1913458 () Bool)

(assert (=> b!6941978 (= e!4176040 tp!1913458)))

(assert (=> b!6941069 (= tp!1913279 e!4176040)))

(assert (= (and b!6941069 ((_ is ElementMatch!16967) (reg!17296 r3!135))) b!6941976))

(assert (= (and b!6941069 ((_ is Concat!25812) (reg!17296 r3!135))) b!6941977))

(assert (= (and b!6941069 ((_ is Star!16967) (reg!17296 r3!135))) b!6941978))

(assert (= (and b!6941069 ((_ is Union!16967) (reg!17296 r3!135))) b!6941979))

(check-sat (not d!2167883) (not b!6941826) (not d!2167763) (not b!6941186) (not d!2167873) (not b!6941691) (not b!6941621) (not b!6941967) (not d!2167841) (not b!6941979) (not b!6941720) (not d!2167767) (not b!6941178) (not b!6941974) (not b!6941384) (not b!6941841) (not d!2167927) (not bm!630601) (not b!6941365) (not bm!630648) (not b!6941858) (not b!6941609) (not d!2167929) (not b!6941808) (not d!2167827) (not d!2167865) (not b!6941724) (not b!6941520) (not d!2167795) (not bm!630586) (not b!6941220) (not b!6941897) (not b!6941727) (not b!6941970) (not d!2167769) (not b!6941975) (not b!6941613) (not b!6941940) (not b!6941371) (not bm!630640) (not b!6941953) (not d!2167959) (not b!6941624) (not bm!630650) (not b!6941494) (not b!6941929) (not b!6941688) (not d!2167753) (not b!6941933) (not b!6941286) (not b!6941865) (not b!6941944) (not bm!630624) (not bm!630632) (not b!6941228) (not bm!630582) (not b!6941819) (not d!2167759) (not b!6941611) (not b!6941612) (not d!2167955) (not b!6941678) (not b!6941622) (not b!6941936) (not d!2167945) (not b!6941883) (not b!6941369) (not d!2167913) (not b!6941500) (not b!6941818) (not d!2167949) (not b!6941950) (not bm!630631) (not b!6941367) (not b!6941938) (not d!2167859) (not b!6941495) (not b!6941971) (not b!6941978) (not b!6941925) (not bm!630644) (not b!6941608) (not bm!630633) (not b!6941946) (not b!6941820) (not b!6941285) (not bm!630642) (not b!6941977) (not d!2167943) (not b!6941957) (not b!6941958) (not b!6941922) (not b!6941862) (not b!6941930) (not b!6941956) (not b!6941502) (not b!6941618) (not b!6941657) (not b!6941857) (not bm!630626) (not d!2167825) (not b!6941973) (not bm!630643) (not b!6941880) (not b!6941845) (not d!2167923) (not b!6941823) (not b!6941918) (not b!6941917) (not b!6941948) (not bm!630629) (not d!2167829) (not b!6941692) (not d!2167939) (not b!6941969) (not b!6941928) (not b!6941690) (not d!2167925) (not b!6941800) (not bm!630647) (not b!6941364) (not b!6941227) (not d!2167911) (not d!2167947) (not b!6941843) (not b!6941833) (not b!6941888) (not d!2167855) (not bm!630635) (not b!6941261) (not b!6941890) (not bm!630637) (not b!6941368) (not b!6941496) (not b!6941859) tp_is_empty!43159 (not b!6941952) (not b!6941767) (not b!6941584) (not b!6941884) (not d!2167869) (not b!6941932) (not b!6941937) (not b!6941945) (not b!6941963) (not d!2167909) (not b!6941844) (not b!6941965) (not b!6941721) (not b!6941725) (not d!2167747) (not b!6941521) (not d!2167831) (not d!2167751) (not b!6941687) (not bm!630639) (not bm!630583) (not b!6941392) (not b!6941762) (not b!6941921) (not b!6941920) (not b!6941649) (not b!6941949) (not b!6941942) (not d!2167953) (not b!6941941) (not b!6941253) (not d!2167933) (not bm!630638) (not b!6941872) (not b!6941848) (not d!2167941) (not b!6941499) (not b!6941851) (not b!6941863) (not b!6941761) (not b!6941769) (not b!6941849) (not d!2167867) (not b!6941219) (not b!6941617) (not d!2167905) (not d!2167885) (not d!2167903) (not b!6941887) (not bm!630602) (not b!6941926) (not d!2167871) (not d!2167765) (not d!2167935) (not d!2167921) (not b!6941616) (not b!6941615) (not b!6941954) (not bm!630641) (not bm!630646) (not bm!630645) (not bm!630612) (not b!6941882) (not b!6941763) (not bm!630585) (not b!6941824) (not b!6941966) (not b!6941723) (not b!6941934) (not b!6941924) (not b!6941916) (not d!2167809) (not b!6941694) (not b!6941766))
(check-sat)
