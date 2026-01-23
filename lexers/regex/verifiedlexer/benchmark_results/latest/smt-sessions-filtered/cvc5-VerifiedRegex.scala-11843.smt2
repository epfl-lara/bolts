; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!665892 () Bool)

(assert start!665892)

(declare-fun b!6926928 () Bool)

(assert (=> b!6926928 true))

(assert (=> b!6926928 true))

(assert (=> b!6926928 true))

(declare-fun lambda!394094 () Int)

(declare-fun lambda!394093 () Int)

(assert (=> b!6926928 (not (= lambda!394094 lambda!394093))))

(assert (=> b!6926928 true))

(assert (=> b!6926928 true))

(assert (=> b!6926928 true))

(declare-fun bs!1849094 () Bool)

(declare-fun b!6926923 () Bool)

(assert (= bs!1849094 (and b!6926923 b!6926928)))

(declare-datatypes ((C!34134 0))(
  ( (C!34135 (val!26769 Int)) )
))
(declare-datatypes ((Regex!16932 0))(
  ( (ElementMatch!16932 (c!1285766 C!34134)) (Concat!25777 (regOne!34376 Regex!16932) (regTwo!34376 Regex!16932)) (EmptyExpr!16932) (Star!16932 (reg!17261 Regex!16932)) (EmptyLang!16932) (Union!16932 (regOne!34377 Regex!16932) (regTwo!34377 Regex!16932)) )
))
(declare-fun r1!6342 () Regex!16932)

(declare-fun lt!2472224 () Regex!16932)

(declare-datatypes ((List!66685 0))(
  ( (Nil!66561) (Cons!66561 (h!73009 C!34134) (t!380428 List!66685)) )
))
(declare-datatypes ((tuple2!67578 0))(
  ( (tuple2!67579 (_1!37092 List!66685) (_2!37092 List!66685)) )
))
(declare-fun lt!2472208 () tuple2!67578)

(declare-fun r3!135 () Regex!16932)

(declare-fun r2!6280 () Regex!16932)

(declare-fun lambda!394095 () Int)

(declare-fun s!14361 () List!66685)

(assert (=> bs!1849094 (= (and (= (_1!37092 lt!2472208) s!14361) (= r1!6342 lt!2472224) (= r2!6280 r3!135)) (= lambda!394095 lambda!394093))))

(assert (=> bs!1849094 (not (= lambda!394095 lambda!394094))))

(assert (=> b!6926923 true))

(assert (=> b!6926923 true))

(assert (=> b!6926923 true))

(declare-fun lambda!394096 () Int)

(assert (=> bs!1849094 (not (= lambda!394096 lambda!394093))))

(assert (=> bs!1849094 (= (and (= (_1!37092 lt!2472208) s!14361) (= r1!6342 lt!2472224) (= r2!6280 r3!135)) (= lambda!394096 lambda!394094))))

(assert (=> b!6926923 (not (= lambda!394096 lambda!394095))))

(assert (=> b!6926923 true))

(assert (=> b!6926923 true))

(assert (=> b!6926923 true))

(declare-fun bs!1849095 () Bool)

(declare-fun b!6926937 () Bool)

(assert (= bs!1849095 (and b!6926937 b!6926928)))

(declare-fun lt!2472214 () List!66685)

(declare-fun lambda!394097 () Int)

(assert (=> bs!1849095 (= (and (= lt!2472214 s!14361) (= r2!6280 lt!2472224)) (= lambda!394097 lambda!394093))))

(assert (=> bs!1849095 (not (= lambda!394097 lambda!394094))))

(declare-fun bs!1849096 () Bool)

(assert (= bs!1849096 (and b!6926937 b!6926923)))

(assert (=> bs!1849096 (= (and (= lt!2472214 (_1!37092 lt!2472208)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394097 lambda!394095))))

(assert (=> bs!1849096 (not (= lambda!394097 lambda!394096))))

(assert (=> b!6926937 true))

(assert (=> b!6926937 true))

(assert (=> b!6926937 true))

(declare-fun lambda!394098 () Int)

(assert (=> b!6926937 (not (= lambda!394098 lambda!394097))))

(assert (=> bs!1849096 (not (= lambda!394098 lambda!394095))))

(assert (=> bs!1849095 (= (and (= lt!2472214 s!14361) (= r2!6280 lt!2472224)) (= lambda!394098 lambda!394094))))

(assert (=> bs!1849096 (= (and (= lt!2472214 (_1!37092 lt!2472208)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394098 lambda!394096))))

(assert (=> bs!1849095 (not (= lambda!394098 lambda!394093))))

(assert (=> b!6926937 true))

(assert (=> b!6926937 true))

(assert (=> b!6926937 true))

(declare-fun bs!1849097 () Bool)

(declare-fun b!6926914 () Bool)

(assert (= bs!1849097 (and b!6926914 b!6926937)))

(declare-fun lt!2472222 () Regex!16932)

(declare-fun lambda!394099 () Int)

(assert (=> bs!1849097 (= (and (= s!14361 lt!2472214) (= r1!6342 r2!6280) (= lt!2472222 r3!135)) (= lambda!394099 lambda!394097))))

(assert (=> bs!1849097 (not (= lambda!394099 lambda!394098))))

(declare-fun bs!1849098 () Bool)

(assert (= bs!1849098 (and b!6926914 b!6926923)))

(assert (=> bs!1849098 (= (and (= s!14361 (_1!37092 lt!2472208)) (= lt!2472222 r2!6280)) (= lambda!394099 lambda!394095))))

(declare-fun bs!1849099 () Bool)

(assert (= bs!1849099 (and b!6926914 b!6926928)))

(assert (=> bs!1849099 (not (= lambda!394099 lambda!394094))))

(assert (=> bs!1849098 (not (= lambda!394099 lambda!394096))))

(assert (=> bs!1849099 (= (and (= r1!6342 lt!2472224) (= lt!2472222 r3!135)) (= lambda!394099 lambda!394093))))

(assert (=> b!6926914 true))

(assert (=> b!6926914 true))

(assert (=> b!6926914 true))

(declare-fun e!4168476 () Bool)

(declare-fun validRegex!8638 (Regex!16932) Bool)

(assert (=> b!6926914 (= e!4168476 (validRegex!8638 lt!2472222))))

(declare-fun Exists!3934 (Int) Bool)

(assert (=> b!6926914 (Exists!3934 lambda!394099)))

(declare-datatypes ((Unit!160588 0))(
  ( (Unit!160589) )
))
(declare-fun lt!2472218 () Unit!160588)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2877 (Regex!16932 Regex!16932 List!66685) Unit!160588)

(assert (=> b!6926914 (= lt!2472218 (lemmaFindConcatSeparationEquivalentToExists!2877 r1!6342 lt!2472222 s!14361))))

(declare-datatypes ((Option!16701 0))(
  ( (None!16700) (Some!16700 (v!52972 tuple2!67578)) )
))
(declare-fun isDefined!13404 (Option!16701) Bool)

(declare-fun findConcatSeparation!3115 (Regex!16932 Regex!16932 List!66685 List!66685 List!66685) Option!16701)

(assert (=> b!6926914 (isDefined!13404 (findConcatSeparation!3115 r1!6342 lt!2472222 Nil!66561 s!14361 s!14361))))

(declare-fun lt!2472228 () Unit!160588)

(declare-fun lt!2472219 () tuple2!67578)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!93 (Regex!16932 Regex!16932 List!66685 List!66685 List!66685 List!66685 List!66685) Unit!160588)

(assert (=> b!6926914 (= lt!2472228 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!93 r1!6342 lt!2472222 (_1!37092 lt!2472219) lt!2472214 s!14361 Nil!66561 s!14361))))

(declare-fun b!6926915 () Bool)

(declare-fun e!4168481 () Bool)

(declare-fun tp!1909300 () Bool)

(assert (=> b!6926915 (= e!4168481 tp!1909300)))

(declare-fun b!6926916 () Bool)

(declare-fun e!4168473 () Bool)

(declare-fun e!4168479 () Bool)

(assert (=> b!6926916 (= e!4168473 e!4168479)))

(declare-fun res!2824962 () Bool)

(assert (=> b!6926916 (=> res!2824962 e!4168479)))

(declare-fun lt!2472220 () List!66685)

(assert (=> b!6926916 (= res!2824962 (not (= lt!2472220 s!14361)))))

(declare-fun ++!14975 (List!66685 List!66685) List!66685)

(assert (=> b!6926916 (= lt!2472220 (++!14975 (++!14975 (_1!37092 lt!2472219) (_2!37092 lt!2472219)) (_2!37092 lt!2472208)))))

(declare-fun matchRSpec!3989 (Regex!16932 List!66685) Bool)

(assert (=> b!6926916 (matchRSpec!3989 r2!6280 (_2!37092 lt!2472219))))

(declare-fun lt!2472202 () Unit!160588)

(declare-fun mainMatchTheorem!3989 (Regex!16932 List!66685) Unit!160588)

(assert (=> b!6926916 (= lt!2472202 (mainMatchTheorem!3989 r2!6280 (_2!37092 lt!2472219)))))

(assert (=> b!6926916 (matchRSpec!3989 r1!6342 (_1!37092 lt!2472219))))

(declare-fun lt!2472221 () Unit!160588)

(assert (=> b!6926916 (= lt!2472221 (mainMatchTheorem!3989 r1!6342 (_1!37092 lt!2472219)))))

(declare-fun b!6926917 () Bool)

(declare-fun e!4168474 () Bool)

(declare-fun tp_is_empty!43089 () Bool)

(assert (=> b!6926917 (= e!4168474 tp_is_empty!43089)))

(declare-fun b!6926918 () Bool)

(declare-fun res!2824965 () Bool)

(declare-fun e!4168478 () Bool)

(assert (=> b!6926918 (=> (not res!2824965) (not e!4168478))))

(assert (=> b!6926918 (= res!2824965 (validRegex!8638 r2!6280))))

(declare-fun b!6926919 () Bool)

(declare-fun tp!1909302 () Bool)

(assert (=> b!6926919 (= e!4168474 tp!1909302)))

(declare-fun b!6926920 () Bool)

(declare-fun tp!1909312 () Bool)

(declare-fun tp!1909313 () Bool)

(assert (=> b!6926920 (= e!4168481 (and tp!1909312 tp!1909313))))

(declare-fun b!6926922 () Bool)

(declare-fun res!2824961 () Bool)

(assert (=> b!6926922 (=> res!2824961 e!4168473)))

(declare-fun matchR!9071 (Regex!16932 List!66685) Bool)

(assert (=> b!6926922 (= res!2824961 (not (matchR!9071 r2!6280 (_2!37092 lt!2472219))))))

(declare-fun e!4168480 () Bool)

(assert (=> b!6926923 (= e!4168480 e!4168473)))

(declare-fun res!2824963 () Bool)

(assert (=> b!6926923 (=> res!2824963 e!4168473)))

(assert (=> b!6926923 (= res!2824963 (not (matchR!9071 r1!6342 (_1!37092 lt!2472219))))))

(declare-fun lt!2472203 () Option!16701)

(declare-fun get!23339 (Option!16701) tuple2!67578)

(assert (=> b!6926923 (= lt!2472219 (get!23339 lt!2472203))))

(assert (=> b!6926923 (= (Exists!3934 lambda!394095) (Exists!3934 lambda!394096))))

(declare-fun lt!2472216 () Unit!160588)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2401 (Regex!16932 Regex!16932 List!66685) Unit!160588)

(assert (=> b!6926923 (= lt!2472216 (lemmaExistCutMatchRandMatchRSpecEquivalent!2401 r1!6342 r2!6280 (_1!37092 lt!2472208)))))

(assert (=> b!6926923 (= (isDefined!13404 lt!2472203) (Exists!3934 lambda!394095))))

(assert (=> b!6926923 (= lt!2472203 (findConcatSeparation!3115 r1!6342 r2!6280 Nil!66561 (_1!37092 lt!2472208) (_1!37092 lt!2472208)))))

(declare-fun lt!2472206 () Unit!160588)

(assert (=> b!6926923 (= lt!2472206 (lemmaFindConcatSeparationEquivalentToExists!2877 r1!6342 r2!6280 (_1!37092 lt!2472208)))))

(declare-fun b!6926924 () Bool)

(declare-fun tp!1909314 () Bool)

(declare-fun tp!1909306 () Bool)

(assert (=> b!6926924 (= e!4168481 (and tp!1909314 tp!1909306))))

(declare-fun b!6926925 () Bool)

(assert (=> b!6926925 (= e!4168481 tp_is_empty!43089)))

(declare-fun b!6926926 () Bool)

(declare-fun res!2824966 () Bool)

(assert (=> b!6926926 (=> (not res!2824966) (not e!4168478))))

(assert (=> b!6926926 (= res!2824966 (validRegex!8638 r3!135))))

(declare-fun b!6926927 () Bool)

(declare-fun e!4168477 () Bool)

(declare-fun tp!1909309 () Bool)

(declare-fun tp!1909301 () Bool)

(assert (=> b!6926927 (= e!4168477 (and tp!1909309 tp!1909301))))

(declare-fun e!4168475 () Bool)

(assert (=> b!6926928 (= e!4168475 e!4168480)))

(declare-fun res!2824971 () Bool)

(assert (=> b!6926928 (=> res!2824971 e!4168480)))

(declare-fun lt!2472215 () Bool)

(assert (=> b!6926928 (= res!2824971 (not lt!2472215))))

(assert (=> b!6926928 (= lt!2472215 (matchRSpec!3989 lt!2472224 (_1!37092 lt!2472208)))))

(assert (=> b!6926928 (= lt!2472215 (matchR!9071 lt!2472224 (_1!37092 lt!2472208)))))

(declare-fun lt!2472227 () Unit!160588)

(assert (=> b!6926928 (= lt!2472227 (mainMatchTheorem!3989 lt!2472224 (_1!37092 lt!2472208)))))

(declare-fun lt!2472232 () Option!16701)

(assert (=> b!6926928 (= lt!2472208 (get!23339 lt!2472232))))

(assert (=> b!6926928 (= (Exists!3934 lambda!394093) (Exists!3934 lambda!394094))))

(declare-fun lt!2472211 () Unit!160588)

(assert (=> b!6926928 (= lt!2472211 (lemmaExistCutMatchRandMatchRSpecEquivalent!2401 lt!2472224 r3!135 s!14361))))

(assert (=> b!6926928 (= (isDefined!13404 lt!2472232) (Exists!3934 lambda!394093))))

(assert (=> b!6926928 (= lt!2472232 (findConcatSeparation!3115 lt!2472224 r3!135 Nil!66561 s!14361 s!14361))))

(declare-fun lt!2472231 () Unit!160588)

(assert (=> b!6926928 (= lt!2472231 (lemmaFindConcatSeparationEquivalentToExists!2877 lt!2472224 r3!135 s!14361))))

(declare-fun b!6926929 () Bool)

(declare-fun res!2824969 () Bool)

(assert (=> b!6926929 (=> res!2824969 e!4168480)))

(assert (=> b!6926929 (= res!2824969 (not (matchR!9071 r3!135 (_2!37092 lt!2472208))))))

(declare-fun b!6926930 () Bool)

(assert (=> b!6926930 (= e!4168478 (not e!4168475))))

(declare-fun res!2824968 () Bool)

(assert (=> b!6926930 (=> res!2824968 e!4168475)))

(declare-fun lt!2472204 () Bool)

(assert (=> b!6926930 (= res!2824968 (not lt!2472204))))

(declare-fun lt!2472212 () Regex!16932)

(assert (=> b!6926930 (= (matchR!9071 lt!2472212 s!14361) (matchRSpec!3989 lt!2472212 s!14361))))

(declare-fun lt!2472213 () Unit!160588)

(assert (=> b!6926930 (= lt!2472213 (mainMatchTheorem!3989 lt!2472212 s!14361))))

(declare-fun lt!2472229 () Regex!16932)

(assert (=> b!6926930 (= lt!2472204 (matchRSpec!3989 lt!2472229 s!14361))))

(assert (=> b!6926930 (= lt!2472204 (matchR!9071 lt!2472229 s!14361))))

(declare-fun lt!2472209 () Unit!160588)

(assert (=> b!6926930 (= lt!2472209 (mainMatchTheorem!3989 lt!2472229 s!14361))))

(assert (=> b!6926930 (= lt!2472212 (Concat!25777 r1!6342 lt!2472222))))

(assert (=> b!6926930 (= lt!2472222 (Concat!25777 r2!6280 r3!135))))

(assert (=> b!6926930 (= lt!2472229 (Concat!25777 lt!2472224 r3!135))))

(assert (=> b!6926930 (= lt!2472224 (Concat!25777 r1!6342 r2!6280))))

(declare-fun b!6926931 () Bool)

(declare-fun e!4168471 () Bool)

(assert (=> b!6926931 (= e!4168471 e!4168476)))

(declare-fun res!2824967 () Bool)

(assert (=> b!6926931 (=> res!2824967 e!4168476)))

(declare-fun lt!2472230 () List!66685)

(assert (=> b!6926931 (= res!2824967 (not (= lt!2472230 s!14361)))))

(assert (=> b!6926931 (= lt!2472220 lt!2472230)))

(assert (=> b!6926931 (= lt!2472230 (++!14975 (_1!37092 lt!2472219) lt!2472214))))

(declare-fun lt!2472225 () Unit!160588)

(declare-fun lemmaConcatAssociativity!3023 (List!66685 List!66685 List!66685) Unit!160588)

(assert (=> b!6926931 (= lt!2472225 (lemmaConcatAssociativity!3023 (_1!37092 lt!2472219) (_2!37092 lt!2472219) (_2!37092 lt!2472208)))))

(declare-fun b!6926932 () Bool)

(declare-fun tp!1909304 () Bool)

(declare-fun tp!1909310 () Bool)

(assert (=> b!6926932 (= e!4168477 (and tp!1909304 tp!1909310))))

(declare-fun b!6926933 () Bool)

(declare-fun tp!1909311 () Bool)

(assert (=> b!6926933 (= e!4168477 tp!1909311)))

(declare-fun b!6926921 () Bool)

(declare-fun tp!1909305 () Bool)

(declare-fun tp!1909308 () Bool)

(assert (=> b!6926921 (= e!4168474 (and tp!1909305 tp!1909308))))

(declare-fun res!2824970 () Bool)

(assert (=> start!665892 (=> (not res!2824970) (not e!4168478))))

(assert (=> start!665892 (= res!2824970 (validRegex!8638 r1!6342))))

(assert (=> start!665892 e!4168478))

(assert (=> start!665892 e!4168481))

(assert (=> start!665892 e!4168474))

(assert (=> start!665892 e!4168477))

(declare-fun e!4168472 () Bool)

(assert (=> start!665892 e!4168472))

(declare-fun b!6926934 () Bool)

(declare-fun tp!1909307 () Bool)

(assert (=> b!6926934 (= e!4168472 (and tp_is_empty!43089 tp!1909307))))

(declare-fun b!6926935 () Bool)

(declare-fun tp!1909315 () Bool)

(declare-fun tp!1909303 () Bool)

(assert (=> b!6926935 (= e!4168474 (and tp!1909315 tp!1909303))))

(declare-fun b!6926936 () Bool)

(assert (=> b!6926936 (= e!4168477 tp_is_empty!43089)))

(assert (=> b!6926937 (= e!4168479 e!4168471)))

(declare-fun res!2824964 () Bool)

(assert (=> b!6926937 (=> res!2824964 e!4168471)))

(declare-fun lt!2472223 () Bool)

(assert (=> b!6926937 (= res!2824964 (not lt!2472223))))

(declare-fun lt!2472226 () Bool)

(assert (=> b!6926937 lt!2472226))

(declare-fun lt!2472205 () Unit!160588)

(assert (=> b!6926937 (= lt!2472205 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!93 r2!6280 r3!135 (_2!37092 lt!2472219) (_2!37092 lt!2472208) lt!2472214 Nil!66561 lt!2472214))))

(assert (=> b!6926937 (= (Exists!3934 lambda!394097) (Exists!3934 lambda!394098))))

(declare-fun lt!2472207 () Unit!160588)

(assert (=> b!6926937 (= lt!2472207 (lemmaExistCutMatchRandMatchRSpecEquivalent!2401 r2!6280 r3!135 lt!2472214))))

(assert (=> b!6926937 (= lt!2472226 (Exists!3934 lambda!394097))))

(assert (=> b!6926937 (= lt!2472226 (isDefined!13404 (findConcatSeparation!3115 r2!6280 r3!135 Nil!66561 lt!2472214 lt!2472214)))))

(declare-fun lt!2472217 () Unit!160588)

(assert (=> b!6926937 (= lt!2472217 (lemmaFindConcatSeparationEquivalentToExists!2877 r2!6280 r3!135 lt!2472214))))

(assert (=> b!6926937 (= lt!2472223 (matchRSpec!3989 lt!2472222 lt!2472214))))

(assert (=> b!6926937 (= lt!2472223 (matchR!9071 lt!2472222 lt!2472214))))

(declare-fun lt!2472210 () Unit!160588)

(assert (=> b!6926937 (= lt!2472210 (mainMatchTheorem!3989 lt!2472222 lt!2472214))))

(assert (=> b!6926937 (= lt!2472214 (++!14975 (_2!37092 lt!2472219) (_2!37092 lt!2472208)))))

(assert (= (and start!665892 res!2824970) b!6926918))

(assert (= (and b!6926918 res!2824965) b!6926926))

(assert (= (and b!6926926 res!2824966) b!6926930))

(assert (= (and b!6926930 (not res!2824968)) b!6926928))

(assert (= (and b!6926928 (not res!2824971)) b!6926929))

(assert (= (and b!6926929 (not res!2824969)) b!6926923))

(assert (= (and b!6926923 (not res!2824963)) b!6926922))

(assert (= (and b!6926922 (not res!2824961)) b!6926916))

(assert (= (and b!6926916 (not res!2824962)) b!6926937))

(assert (= (and b!6926937 (not res!2824964)) b!6926931))

(assert (= (and b!6926931 (not res!2824967)) b!6926914))

(assert (= (and start!665892 (is-ElementMatch!16932 r1!6342)) b!6926925))

(assert (= (and start!665892 (is-Concat!25777 r1!6342)) b!6926920))

(assert (= (and start!665892 (is-Star!16932 r1!6342)) b!6926915))

(assert (= (and start!665892 (is-Union!16932 r1!6342)) b!6926924))

(assert (= (and start!665892 (is-ElementMatch!16932 r2!6280)) b!6926917))

(assert (= (and start!665892 (is-Concat!25777 r2!6280)) b!6926935))

(assert (= (and start!665892 (is-Star!16932 r2!6280)) b!6926919))

(assert (= (and start!665892 (is-Union!16932 r2!6280)) b!6926921))

(assert (= (and start!665892 (is-ElementMatch!16932 r3!135)) b!6926936))

(assert (= (and start!665892 (is-Concat!25777 r3!135)) b!6926932))

(assert (= (and start!665892 (is-Star!16932 r3!135)) b!6926933))

(assert (= (and start!665892 (is-Union!16932 r3!135)) b!6926927))

(assert (= (and start!665892 (is-Cons!66561 s!14361)) b!6926934))

(declare-fun m!7635544 () Bool)

(assert (=> b!6926922 m!7635544))

(declare-fun m!7635546 () Bool)

(assert (=> b!6926926 m!7635546))

(declare-fun m!7635548 () Bool)

(assert (=> b!6926931 m!7635548))

(declare-fun m!7635550 () Bool)

(assert (=> b!6926931 m!7635550))

(declare-fun m!7635552 () Bool)

(assert (=> b!6926930 m!7635552))

(declare-fun m!7635554 () Bool)

(assert (=> b!6926930 m!7635554))

(declare-fun m!7635556 () Bool)

(assert (=> b!6926930 m!7635556))

(declare-fun m!7635558 () Bool)

(assert (=> b!6926930 m!7635558))

(declare-fun m!7635560 () Bool)

(assert (=> b!6926930 m!7635560))

(declare-fun m!7635562 () Bool)

(assert (=> b!6926930 m!7635562))

(declare-fun m!7635564 () Bool)

(assert (=> start!665892 m!7635564))

(declare-fun m!7635566 () Bool)

(assert (=> b!6926937 m!7635566))

(declare-fun m!7635568 () Bool)

(assert (=> b!6926937 m!7635568))

(declare-fun m!7635570 () Bool)

(assert (=> b!6926937 m!7635570))

(declare-fun m!7635572 () Bool)

(assert (=> b!6926937 m!7635572))

(assert (=> b!6926937 m!7635570))

(declare-fun m!7635574 () Bool)

(assert (=> b!6926937 m!7635574))

(declare-fun m!7635576 () Bool)

(assert (=> b!6926937 m!7635576))

(declare-fun m!7635578 () Bool)

(assert (=> b!6926937 m!7635578))

(declare-fun m!7635580 () Bool)

(assert (=> b!6926937 m!7635580))

(declare-fun m!7635582 () Bool)

(assert (=> b!6926937 m!7635582))

(declare-fun m!7635584 () Bool)

(assert (=> b!6926937 m!7635584))

(declare-fun m!7635586 () Bool)

(assert (=> b!6926937 m!7635586))

(assert (=> b!6926937 m!7635578))

(declare-fun m!7635588 () Bool)

(assert (=> b!6926918 m!7635588))

(declare-fun m!7635590 () Bool)

(assert (=> b!6926923 m!7635590))

(declare-fun m!7635592 () Bool)

(assert (=> b!6926923 m!7635592))

(declare-fun m!7635594 () Bool)

(assert (=> b!6926923 m!7635594))

(declare-fun m!7635596 () Bool)

(assert (=> b!6926923 m!7635596))

(declare-fun m!7635598 () Bool)

(assert (=> b!6926923 m!7635598))

(declare-fun m!7635600 () Bool)

(assert (=> b!6926923 m!7635600))

(declare-fun m!7635602 () Bool)

(assert (=> b!6926923 m!7635602))

(declare-fun m!7635604 () Bool)

(assert (=> b!6926923 m!7635604))

(assert (=> b!6926923 m!7635596))

(declare-fun m!7635606 () Bool)

(assert (=> b!6926914 m!7635606))

(declare-fun m!7635608 () Bool)

(assert (=> b!6926914 m!7635608))

(declare-fun m!7635610 () Bool)

(assert (=> b!6926914 m!7635610))

(declare-fun m!7635612 () Bool)

(assert (=> b!6926914 m!7635612))

(assert (=> b!6926914 m!7635610))

(declare-fun m!7635614 () Bool)

(assert (=> b!6926914 m!7635614))

(declare-fun m!7635616 () Bool)

(assert (=> b!6926914 m!7635616))

(declare-fun m!7635618 () Bool)

(assert (=> b!6926916 m!7635618))

(declare-fun m!7635620 () Bool)

(assert (=> b!6926916 m!7635620))

(assert (=> b!6926916 m!7635618))

(declare-fun m!7635622 () Bool)

(assert (=> b!6926916 m!7635622))

(declare-fun m!7635624 () Bool)

(assert (=> b!6926916 m!7635624))

(declare-fun m!7635626 () Bool)

(assert (=> b!6926916 m!7635626))

(declare-fun m!7635628 () Bool)

(assert (=> b!6926916 m!7635628))

(declare-fun m!7635630 () Bool)

(assert (=> b!6926929 m!7635630))

(declare-fun m!7635632 () Bool)

(assert (=> b!6926928 m!7635632))

(declare-fun m!7635634 () Bool)

(assert (=> b!6926928 m!7635634))

(declare-fun m!7635636 () Bool)

(assert (=> b!6926928 m!7635636))

(declare-fun m!7635638 () Bool)

(assert (=> b!6926928 m!7635638))

(declare-fun m!7635640 () Bool)

(assert (=> b!6926928 m!7635640))

(declare-fun m!7635642 () Bool)

(assert (=> b!6926928 m!7635642))

(declare-fun m!7635644 () Bool)

(assert (=> b!6926928 m!7635644))

(declare-fun m!7635646 () Bool)

(assert (=> b!6926928 m!7635646))

(declare-fun m!7635648 () Bool)

(assert (=> b!6926928 m!7635648))

(declare-fun m!7635650 () Bool)

(assert (=> b!6926928 m!7635650))

(assert (=> b!6926928 m!7635636))

(push 1)

(assert (not b!6926927))

(assert (not b!6926916))

(assert (not b!6926937))

(assert (not b!6926933))

(assert (not b!6926924))

(assert (not b!6926932))

(assert (not b!6926928))

(assert (not b!6926923))

(assert (not b!6926914))

(assert (not b!6926922))

(assert (not b!6926921))

(assert (not b!6926935))

(assert (not b!6926934))

(assert (not b!6926919))

(assert (not b!6926926))

(assert (not b!6926931))

(assert tp_is_empty!43089)

(assert (not b!6926920))

(assert (not b!6926930))

(assert (not b!6926929))

(assert (not b!6926915))

(assert (not start!665892))

(assert (not b!6926918))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!6927081 () Bool)

(declare-fun res!2825058 () Bool)

(declare-fun e!4168548 () Bool)

(assert (=> b!6927081 (=> (not res!2825058) (not e!4168548))))

(declare-fun lt!2472332 () Option!16701)

(assert (=> b!6927081 (= res!2825058 (matchR!9071 r1!6342 (_1!37092 (get!23339 lt!2472332))))))

(declare-fun b!6927082 () Bool)

(declare-fun e!4168549 () Option!16701)

(declare-fun e!4168546 () Option!16701)

(assert (=> b!6927082 (= e!4168549 e!4168546)))

(declare-fun c!1285773 () Bool)

(assert (=> b!6927082 (= c!1285773 (is-Nil!66561 s!14361))))

(declare-fun b!6927083 () Bool)

(declare-fun lt!2472334 () Unit!160588)

(declare-fun lt!2472333 () Unit!160588)

(assert (=> b!6927083 (= lt!2472334 lt!2472333)))

(assert (=> b!6927083 (= (++!14975 (++!14975 Nil!66561 (Cons!66561 (h!73009 s!14361) Nil!66561)) (t!380428 s!14361)) s!14361)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2836 (List!66685 C!34134 List!66685 List!66685) Unit!160588)

(assert (=> b!6927083 (= lt!2472333 (lemmaMoveElementToOtherListKeepsConcatEq!2836 Nil!66561 (h!73009 s!14361) (t!380428 s!14361) s!14361))))

(assert (=> b!6927083 (= e!4168546 (findConcatSeparation!3115 r1!6342 lt!2472222 (++!14975 Nil!66561 (Cons!66561 (h!73009 s!14361) Nil!66561)) (t!380428 s!14361) s!14361))))

(declare-fun b!6927084 () Bool)

(assert (=> b!6927084 (= e!4168549 (Some!16700 (tuple2!67579 Nil!66561 s!14361)))))

(declare-fun b!6927085 () Bool)

(assert (=> b!6927085 (= e!4168548 (= (++!14975 (_1!37092 (get!23339 lt!2472332)) (_2!37092 (get!23339 lt!2472332))) s!14361))))

(declare-fun b!6927086 () Bool)

(declare-fun e!4168545 () Bool)

(assert (=> b!6927086 (= e!4168545 (matchR!9071 lt!2472222 s!14361))))

(declare-fun b!6927087 () Bool)

(declare-fun res!2825057 () Bool)

(assert (=> b!6927087 (=> (not res!2825057) (not e!4168548))))

(assert (=> b!6927087 (= res!2825057 (matchR!9071 lt!2472222 (_2!37092 (get!23339 lt!2472332))))))

(declare-fun b!6927088 () Bool)

(assert (=> b!6927088 (= e!4168546 None!16700)))

(declare-fun b!6927080 () Bool)

(declare-fun e!4168547 () Bool)

(assert (=> b!6927080 (= e!4168547 (not (isDefined!13404 lt!2472332)))))

(declare-fun d!2165458 () Bool)

(assert (=> d!2165458 e!4168547))

(declare-fun res!2825059 () Bool)

(assert (=> d!2165458 (=> res!2825059 e!4168547)))

(assert (=> d!2165458 (= res!2825059 e!4168548)))

(declare-fun res!2825056 () Bool)

(assert (=> d!2165458 (=> (not res!2825056) (not e!4168548))))

(assert (=> d!2165458 (= res!2825056 (isDefined!13404 lt!2472332))))

(assert (=> d!2165458 (= lt!2472332 e!4168549)))

(declare-fun c!1285772 () Bool)

(assert (=> d!2165458 (= c!1285772 e!4168545)))

(declare-fun res!2825055 () Bool)

(assert (=> d!2165458 (=> (not res!2825055) (not e!4168545))))

(assert (=> d!2165458 (= res!2825055 (matchR!9071 r1!6342 Nil!66561))))

(assert (=> d!2165458 (validRegex!8638 r1!6342)))

(assert (=> d!2165458 (= (findConcatSeparation!3115 r1!6342 lt!2472222 Nil!66561 s!14361 s!14361) lt!2472332)))

(assert (= (and d!2165458 res!2825055) b!6927086))

(assert (= (and d!2165458 c!1285772) b!6927084))

(assert (= (and d!2165458 (not c!1285772)) b!6927082))

(assert (= (and b!6927082 c!1285773) b!6927088))

(assert (= (and b!6927082 (not c!1285773)) b!6927083))

(assert (= (and d!2165458 res!2825056) b!6927081))

(assert (= (and b!6927081 res!2825058) b!6927087))

(assert (= (and b!6927087 res!2825057) b!6927085))

(assert (= (and d!2165458 (not res!2825059)) b!6927080))

(declare-fun m!7635760 () Bool)

(assert (=> b!6927081 m!7635760))

(declare-fun m!7635762 () Bool)

(assert (=> b!6927081 m!7635762))

(declare-fun m!7635764 () Bool)

(assert (=> b!6927086 m!7635764))

(declare-fun m!7635766 () Bool)

(assert (=> b!6927083 m!7635766))

(assert (=> b!6927083 m!7635766))

(declare-fun m!7635768 () Bool)

(assert (=> b!6927083 m!7635768))

(declare-fun m!7635770 () Bool)

(assert (=> b!6927083 m!7635770))

(assert (=> b!6927083 m!7635766))

(declare-fun m!7635772 () Bool)

(assert (=> b!6927083 m!7635772))

(assert (=> b!6927087 m!7635760))

(declare-fun m!7635774 () Bool)

(assert (=> b!6927087 m!7635774))

(assert (=> b!6927085 m!7635760))

(declare-fun m!7635776 () Bool)

(assert (=> b!6927085 m!7635776))

(declare-fun m!7635778 () Bool)

(assert (=> d!2165458 m!7635778))

(declare-fun m!7635780 () Bool)

(assert (=> d!2165458 m!7635780))

(assert (=> d!2165458 m!7635564))

(assert (=> b!6927080 m!7635778))

(assert (=> b!6926914 d!2165458))

(declare-fun d!2165460 () Bool)

(declare-fun choose!51582 (Int) Bool)

(assert (=> d!2165460 (= (Exists!3934 lambda!394099) (choose!51582 lambda!394099))))

(declare-fun bs!1849106 () Bool)

(assert (= bs!1849106 d!2165460))

(declare-fun m!7635782 () Bool)

(assert (=> bs!1849106 m!7635782))

(assert (=> b!6926914 d!2165460))

(declare-fun bs!1849107 () Bool)

(declare-fun d!2165462 () Bool)

(assert (= bs!1849107 (and d!2165462 b!6926937)))

(declare-fun lambda!394129 () Int)

(assert (=> bs!1849107 (= (and (= s!14361 lt!2472214) (= r1!6342 r2!6280) (= lt!2472222 r3!135)) (= lambda!394129 lambda!394097))))

(declare-fun bs!1849108 () Bool)

(assert (= bs!1849108 (and d!2165462 b!6926914)))

(assert (=> bs!1849108 (= lambda!394129 lambda!394099)))

(assert (=> bs!1849107 (not (= lambda!394129 lambda!394098))))

(declare-fun bs!1849109 () Bool)

(assert (= bs!1849109 (and d!2165462 b!6926923)))

(assert (=> bs!1849109 (= (and (= s!14361 (_1!37092 lt!2472208)) (= lt!2472222 r2!6280)) (= lambda!394129 lambda!394095))))

(declare-fun bs!1849110 () Bool)

(assert (= bs!1849110 (and d!2165462 b!6926928)))

(assert (=> bs!1849110 (not (= lambda!394129 lambda!394094))))

(assert (=> bs!1849109 (not (= lambda!394129 lambda!394096))))

(assert (=> bs!1849110 (= (and (= r1!6342 lt!2472224) (= lt!2472222 r3!135)) (= lambda!394129 lambda!394093))))

(assert (=> d!2165462 true))

(assert (=> d!2165462 true))

(assert (=> d!2165462 true))

(assert (=> d!2165462 (= (isDefined!13404 (findConcatSeparation!3115 r1!6342 lt!2472222 Nil!66561 s!14361 s!14361)) (Exists!3934 lambda!394129))))

(declare-fun lt!2472337 () Unit!160588)

(declare-fun choose!51583 (Regex!16932 Regex!16932 List!66685) Unit!160588)

(assert (=> d!2165462 (= lt!2472337 (choose!51583 r1!6342 lt!2472222 s!14361))))

(assert (=> d!2165462 (validRegex!8638 r1!6342)))

(assert (=> d!2165462 (= (lemmaFindConcatSeparationEquivalentToExists!2877 r1!6342 lt!2472222 s!14361) lt!2472337)))

(declare-fun bs!1849111 () Bool)

(assert (= bs!1849111 d!2165462))

(assert (=> bs!1849111 m!7635564))

(assert (=> bs!1849111 m!7635610))

(assert (=> bs!1849111 m!7635610))

(assert (=> bs!1849111 m!7635614))

(declare-fun m!7635784 () Bool)

(assert (=> bs!1849111 m!7635784))

(declare-fun m!7635786 () Bool)

(assert (=> bs!1849111 m!7635786))

(assert (=> b!6926914 d!2165462))

(declare-fun bm!629511 () Bool)

(declare-fun call!629517 () Bool)

(declare-fun call!629518 () Bool)

(assert (=> bm!629511 (= call!629517 call!629518)))

(declare-fun c!1285778 () Bool)

(declare-fun bm!629512 () Bool)

(declare-fun c!1285779 () Bool)

(assert (=> bm!629512 (= call!629518 (validRegex!8638 (ite c!1285779 (reg!17261 lt!2472222) (ite c!1285778 (regOne!34377 lt!2472222) (regTwo!34376 lt!2472222)))))))

(declare-fun b!6927112 () Bool)

(declare-fun res!2825075 () Bool)

(declare-fun e!4168569 () Bool)

(assert (=> b!6927112 (=> res!2825075 e!4168569)))

(assert (=> b!6927112 (= res!2825075 (not (is-Concat!25777 lt!2472222)))))

(declare-fun e!4168570 () Bool)

(assert (=> b!6927112 (= e!4168570 e!4168569)))

(declare-fun b!6927113 () Bool)

(declare-fun res!2825077 () Bool)

(declare-fun e!4168566 () Bool)

(assert (=> b!6927113 (=> (not res!2825077) (not e!4168566))))

(assert (=> b!6927113 (= res!2825077 call!629517)))

(assert (=> b!6927113 (= e!4168570 e!4168566)))

(declare-fun b!6927114 () Bool)

(declare-fun e!4168567 () Bool)

(declare-fun e!4168568 () Bool)

(assert (=> b!6927114 (= e!4168567 e!4168568)))

(assert (=> b!6927114 (= c!1285779 (is-Star!16932 lt!2472222))))

(declare-fun b!6927115 () Bool)

(declare-fun e!4168572 () Bool)

(assert (=> b!6927115 (= e!4168572 call!629517)))

(declare-fun b!6927116 () Bool)

(assert (=> b!6927116 (= e!4168568 e!4168570)))

(assert (=> b!6927116 (= c!1285778 (is-Union!16932 lt!2472222))))

(declare-fun bm!629513 () Bool)

(declare-fun call!629516 () Bool)

(assert (=> bm!629513 (= call!629516 (validRegex!8638 (ite c!1285778 (regTwo!34377 lt!2472222) (regOne!34376 lt!2472222))))))

(declare-fun b!6927117 () Bool)

(assert (=> b!6927117 (= e!4168566 call!629516)))

(declare-fun d!2165466 () Bool)

(declare-fun res!2825078 () Bool)

(assert (=> d!2165466 (=> res!2825078 e!4168567)))

(assert (=> d!2165466 (= res!2825078 (is-ElementMatch!16932 lt!2472222))))

(assert (=> d!2165466 (= (validRegex!8638 lt!2472222) e!4168567)))

(declare-fun b!6927111 () Bool)

(declare-fun e!4168571 () Bool)

(assert (=> b!6927111 (= e!4168571 call!629518)))

(declare-fun b!6927118 () Bool)

(assert (=> b!6927118 (= e!4168569 e!4168572)))

(declare-fun res!2825076 () Bool)

(assert (=> b!6927118 (=> (not res!2825076) (not e!4168572))))

(assert (=> b!6927118 (= res!2825076 call!629516)))

(declare-fun b!6927119 () Bool)

(assert (=> b!6927119 (= e!4168568 e!4168571)))

(declare-fun res!2825074 () Bool)

(declare-fun nullable!6757 (Regex!16932) Bool)

(assert (=> b!6927119 (= res!2825074 (not (nullable!6757 (reg!17261 lt!2472222))))))

(assert (=> b!6927119 (=> (not res!2825074) (not e!4168571))))

(assert (= (and d!2165466 (not res!2825078)) b!6927114))

(assert (= (and b!6927114 c!1285779) b!6927119))

(assert (= (and b!6927114 (not c!1285779)) b!6927116))

(assert (= (and b!6927119 res!2825074) b!6927111))

(assert (= (and b!6927116 c!1285778) b!6927113))

(assert (= (and b!6927116 (not c!1285778)) b!6927112))

(assert (= (and b!6927113 res!2825077) b!6927117))

(assert (= (and b!6927112 (not res!2825075)) b!6927118))

(assert (= (and b!6927118 res!2825076) b!6927115))

(assert (= (or b!6927113 b!6927115) bm!629511))

(assert (= (or b!6927117 b!6927118) bm!629513))

(assert (= (or b!6927111 bm!629511) bm!629512))

(declare-fun m!7635790 () Bool)

(assert (=> bm!629512 m!7635790))

(declare-fun m!7635792 () Bool)

(assert (=> bm!629513 m!7635792))

(declare-fun m!7635794 () Bool)

(assert (=> b!6927119 m!7635794))

(assert (=> b!6926914 d!2165466))

(declare-fun d!2165470 () Bool)

(declare-fun isEmpty!38816 (Option!16701) Bool)

(assert (=> d!2165470 (= (isDefined!13404 (findConcatSeparation!3115 r1!6342 lt!2472222 Nil!66561 s!14361 s!14361)) (not (isEmpty!38816 (findConcatSeparation!3115 r1!6342 lt!2472222 Nil!66561 s!14361 s!14361))))))

(declare-fun bs!1849113 () Bool)

(assert (= bs!1849113 d!2165470))

(assert (=> bs!1849113 m!7635610))

(declare-fun m!7635796 () Bool)

(assert (=> bs!1849113 m!7635796))

(assert (=> b!6926914 d!2165470))

(declare-fun d!2165472 () Bool)

(assert (=> d!2165472 (isDefined!13404 (findConcatSeparation!3115 r1!6342 lt!2472222 Nil!66561 s!14361 s!14361))))

(declare-fun lt!2472340 () Unit!160588)

(declare-fun choose!51584 (Regex!16932 Regex!16932 List!66685 List!66685 List!66685 List!66685 List!66685) Unit!160588)

(assert (=> d!2165472 (= lt!2472340 (choose!51584 r1!6342 lt!2472222 (_1!37092 lt!2472219) lt!2472214 s!14361 Nil!66561 s!14361))))

(assert (=> d!2165472 (validRegex!8638 r1!6342)))

(assert (=> d!2165472 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!93 r1!6342 lt!2472222 (_1!37092 lt!2472219) lt!2472214 s!14361 Nil!66561 s!14361) lt!2472340)))

(declare-fun bs!1849114 () Bool)

(assert (= bs!1849114 d!2165472))

(assert (=> bs!1849114 m!7635610))

(assert (=> bs!1849114 m!7635610))

(assert (=> bs!1849114 m!7635614))

(declare-fun m!7635798 () Bool)

(assert (=> bs!1849114 m!7635798))

(assert (=> bs!1849114 m!7635564))

(assert (=> b!6926914 d!2165472))

(declare-fun lt!2472343 () List!66685)

(declare-fun e!4168577 () Bool)

(declare-fun b!6927131 () Bool)

(assert (=> b!6927131 (= e!4168577 (or (not (= (_2!37092 lt!2472208) Nil!66561)) (= lt!2472343 (++!14975 (_1!37092 lt!2472219) (_2!37092 lt!2472219)))))))

(declare-fun b!6927130 () Bool)

(declare-fun res!2825084 () Bool)

(assert (=> b!6927130 (=> (not res!2825084) (not e!4168577))))

(declare-fun size!40782 (List!66685) Int)

(assert (=> b!6927130 (= res!2825084 (= (size!40782 lt!2472343) (+ (size!40782 (++!14975 (_1!37092 lt!2472219) (_2!37092 lt!2472219))) (size!40782 (_2!37092 lt!2472208)))))))

(declare-fun b!6927129 () Bool)

(declare-fun e!4168578 () List!66685)

(assert (=> b!6927129 (= e!4168578 (Cons!66561 (h!73009 (++!14975 (_1!37092 lt!2472219) (_2!37092 lt!2472219))) (++!14975 (t!380428 (++!14975 (_1!37092 lt!2472219) (_2!37092 lt!2472219))) (_2!37092 lt!2472208))))))

(declare-fun b!6927128 () Bool)

(assert (=> b!6927128 (= e!4168578 (_2!37092 lt!2472208))))

(declare-fun d!2165474 () Bool)

(assert (=> d!2165474 e!4168577))

(declare-fun res!2825083 () Bool)

(assert (=> d!2165474 (=> (not res!2825083) (not e!4168577))))

(declare-fun content!13085 (List!66685) (Set C!34134))

(assert (=> d!2165474 (= res!2825083 (= (content!13085 lt!2472343) (set.union (content!13085 (++!14975 (_1!37092 lt!2472219) (_2!37092 lt!2472219))) (content!13085 (_2!37092 lt!2472208)))))))

(assert (=> d!2165474 (= lt!2472343 e!4168578)))

(declare-fun c!1285782 () Bool)

(assert (=> d!2165474 (= c!1285782 (is-Nil!66561 (++!14975 (_1!37092 lt!2472219) (_2!37092 lt!2472219))))))

(assert (=> d!2165474 (= (++!14975 (++!14975 (_1!37092 lt!2472219) (_2!37092 lt!2472219)) (_2!37092 lt!2472208)) lt!2472343)))

(assert (= (and d!2165474 c!1285782) b!6927128))

(assert (= (and d!2165474 (not c!1285782)) b!6927129))

(assert (= (and d!2165474 res!2825083) b!6927130))

(assert (= (and b!6927130 res!2825084) b!6927131))

(declare-fun m!7635800 () Bool)

(assert (=> b!6927130 m!7635800))

(assert (=> b!6927130 m!7635618))

(declare-fun m!7635802 () Bool)

(assert (=> b!6927130 m!7635802))

(declare-fun m!7635804 () Bool)

(assert (=> b!6927130 m!7635804))

(declare-fun m!7635806 () Bool)

(assert (=> b!6927129 m!7635806))

(declare-fun m!7635808 () Bool)

(assert (=> d!2165474 m!7635808))

(assert (=> d!2165474 m!7635618))

(declare-fun m!7635810 () Bool)

(assert (=> d!2165474 m!7635810))

(declare-fun m!7635812 () Bool)

(assert (=> d!2165474 m!7635812))

(assert (=> b!6926916 d!2165474))

(declare-fun b!6927135 () Bool)

(declare-fun e!4168579 () Bool)

(declare-fun lt!2472344 () List!66685)

(assert (=> b!6927135 (= e!4168579 (or (not (= (_2!37092 lt!2472219) Nil!66561)) (= lt!2472344 (_1!37092 lt!2472219))))))

(declare-fun b!6927134 () Bool)

(declare-fun res!2825086 () Bool)

(assert (=> b!6927134 (=> (not res!2825086) (not e!4168579))))

(assert (=> b!6927134 (= res!2825086 (= (size!40782 lt!2472344) (+ (size!40782 (_1!37092 lt!2472219)) (size!40782 (_2!37092 lt!2472219)))))))

(declare-fun b!6927133 () Bool)

(declare-fun e!4168580 () List!66685)

(assert (=> b!6927133 (= e!4168580 (Cons!66561 (h!73009 (_1!37092 lt!2472219)) (++!14975 (t!380428 (_1!37092 lt!2472219)) (_2!37092 lt!2472219))))))

(declare-fun b!6927132 () Bool)

(assert (=> b!6927132 (= e!4168580 (_2!37092 lt!2472219))))

(declare-fun d!2165476 () Bool)

(assert (=> d!2165476 e!4168579))

(declare-fun res!2825085 () Bool)

(assert (=> d!2165476 (=> (not res!2825085) (not e!4168579))))

(assert (=> d!2165476 (= res!2825085 (= (content!13085 lt!2472344) (set.union (content!13085 (_1!37092 lt!2472219)) (content!13085 (_2!37092 lt!2472219)))))))

(assert (=> d!2165476 (= lt!2472344 e!4168580)))

(declare-fun c!1285783 () Bool)

(assert (=> d!2165476 (= c!1285783 (is-Nil!66561 (_1!37092 lt!2472219)))))

(assert (=> d!2165476 (= (++!14975 (_1!37092 lt!2472219) (_2!37092 lt!2472219)) lt!2472344)))

(assert (= (and d!2165476 c!1285783) b!6927132))

(assert (= (and d!2165476 (not c!1285783)) b!6927133))

(assert (= (and d!2165476 res!2825085) b!6927134))

(assert (= (and b!6927134 res!2825086) b!6927135))

(declare-fun m!7635814 () Bool)

(assert (=> b!6927134 m!7635814))

(declare-fun m!7635816 () Bool)

(assert (=> b!6927134 m!7635816))

(declare-fun m!7635818 () Bool)

(assert (=> b!6927134 m!7635818))

(declare-fun m!7635820 () Bool)

(assert (=> b!6927133 m!7635820))

(declare-fun m!7635822 () Bool)

(assert (=> d!2165476 m!7635822))

(declare-fun m!7635824 () Bool)

(assert (=> d!2165476 m!7635824))

(declare-fun m!7635826 () Bool)

(assert (=> d!2165476 m!7635826))

(assert (=> b!6926916 d!2165476))

(declare-fun d!2165478 () Bool)

(assert (=> d!2165478 (= (matchR!9071 r1!6342 (_1!37092 lt!2472219)) (matchRSpec!3989 r1!6342 (_1!37092 lt!2472219)))))

(declare-fun lt!2472347 () Unit!160588)

(declare-fun choose!51585 (Regex!16932 List!66685) Unit!160588)

(assert (=> d!2165478 (= lt!2472347 (choose!51585 r1!6342 (_1!37092 lt!2472219)))))

(assert (=> d!2165478 (validRegex!8638 r1!6342)))

(assert (=> d!2165478 (= (mainMatchTheorem!3989 r1!6342 (_1!37092 lt!2472219)) lt!2472347)))

(declare-fun bs!1849115 () Bool)

(assert (= bs!1849115 d!2165478))

(assert (=> bs!1849115 m!7635594))

(assert (=> bs!1849115 m!7635622))

(declare-fun m!7635828 () Bool)

(assert (=> bs!1849115 m!7635828))

(assert (=> bs!1849115 m!7635564))

(assert (=> b!6926916 d!2165478))

(declare-fun d!2165480 () Bool)

(assert (=> d!2165480 (= (matchR!9071 r2!6280 (_2!37092 lt!2472219)) (matchRSpec!3989 r2!6280 (_2!37092 lt!2472219)))))

(declare-fun lt!2472348 () Unit!160588)

(assert (=> d!2165480 (= lt!2472348 (choose!51585 r2!6280 (_2!37092 lt!2472219)))))

(assert (=> d!2165480 (validRegex!8638 r2!6280)))

(assert (=> d!2165480 (= (mainMatchTheorem!3989 r2!6280 (_2!37092 lt!2472219)) lt!2472348)))

(declare-fun bs!1849116 () Bool)

(assert (= bs!1849116 d!2165480))

(assert (=> bs!1849116 m!7635544))

(assert (=> bs!1849116 m!7635626))

(declare-fun m!7635830 () Bool)

(assert (=> bs!1849116 m!7635830))

(assert (=> bs!1849116 m!7635588))

(assert (=> b!6926916 d!2165480))

(declare-fun bs!1849117 () Bool)

(declare-fun b!6927195 () Bool)

(assert (= bs!1849117 (and b!6927195 b!6926937)))

(declare-fun lambda!394134 () Int)

(assert (=> bs!1849117 (not (= lambda!394134 lambda!394097))))

(declare-fun bs!1849118 () Bool)

(assert (= bs!1849118 (and b!6927195 b!6926914)))

(assert (=> bs!1849118 (not (= lambda!394134 lambda!394099))))

(assert (=> bs!1849117 (not (= lambda!394134 lambda!394098))))

(declare-fun bs!1849119 () Bool)

(assert (= bs!1849119 (and b!6927195 b!6926923)))

(assert (=> bs!1849119 (not (= lambda!394134 lambda!394095))))

(declare-fun bs!1849120 () Bool)

(assert (= bs!1849120 (and b!6927195 b!6926928)))

(assert (=> bs!1849120 (not (= lambda!394134 lambda!394094))))

(assert (=> bs!1849119 (not (= lambda!394134 lambda!394096))))

(declare-fun bs!1849121 () Bool)

(assert (= bs!1849121 (and b!6927195 d!2165462)))

(assert (=> bs!1849121 (not (= lambda!394134 lambda!394129))))

(assert (=> bs!1849120 (not (= lambda!394134 lambda!394093))))

(assert (=> b!6927195 true))

(assert (=> b!6927195 true))

(declare-fun bs!1849122 () Bool)

(declare-fun b!6927186 () Bool)

(assert (= bs!1849122 (and b!6927186 b!6926937)))

(declare-fun lambda!394135 () Int)

(assert (=> bs!1849122 (not (= lambda!394135 lambda!394097))))

(declare-fun bs!1849123 () Bool)

(assert (= bs!1849123 (and b!6927186 b!6926914)))

(assert (=> bs!1849123 (not (= lambda!394135 lambda!394099))))

(assert (=> bs!1849122 (= (and (= (_1!37092 lt!2472219) lt!2472214) (= (regOne!34376 r1!6342) r2!6280) (= (regTwo!34376 r1!6342) r3!135)) (= lambda!394135 lambda!394098))))

(declare-fun bs!1849124 () Bool)

(assert (= bs!1849124 (and b!6927186 b!6926923)))

(assert (=> bs!1849124 (not (= lambda!394135 lambda!394095))))

(declare-fun bs!1849125 () Bool)

(assert (= bs!1849125 (and b!6927186 b!6926928)))

(assert (=> bs!1849125 (= (and (= (_1!37092 lt!2472219) s!14361) (= (regOne!34376 r1!6342) lt!2472224) (= (regTwo!34376 r1!6342) r3!135)) (= lambda!394135 lambda!394094))))

(assert (=> bs!1849124 (= (and (= (_1!37092 lt!2472219) (_1!37092 lt!2472208)) (= (regOne!34376 r1!6342) r1!6342) (= (regTwo!34376 r1!6342) r2!6280)) (= lambda!394135 lambda!394096))))

(declare-fun bs!1849126 () Bool)

(assert (= bs!1849126 (and b!6927186 b!6927195)))

(assert (=> bs!1849126 (not (= lambda!394135 lambda!394134))))

(declare-fun bs!1849127 () Bool)

(assert (= bs!1849127 (and b!6927186 d!2165462)))

(assert (=> bs!1849127 (not (= lambda!394135 lambda!394129))))

(assert (=> bs!1849125 (not (= lambda!394135 lambda!394093))))

(assert (=> b!6927186 true))

(assert (=> b!6927186 true))

(declare-fun e!4168609 () Bool)

(declare-fun call!629523 () Bool)

(assert (=> b!6927186 (= e!4168609 call!629523)))

(declare-fun b!6927187 () Bool)

(declare-fun e!4168611 () Bool)

(assert (=> b!6927187 (= e!4168611 e!4168609)))

(declare-fun c!1285798 () Bool)

(assert (=> b!6927187 (= c!1285798 (is-Star!16932 r1!6342))))

(declare-fun bm!629518 () Bool)

(declare-fun call!629524 () Bool)

(declare-fun isEmpty!38817 (List!66685) Bool)

(assert (=> bm!629518 (= call!629524 (isEmpty!38817 (_1!37092 lt!2472219)))))

(declare-fun b!6927188 () Bool)

(declare-fun e!4168612 () Bool)

(declare-fun e!4168614 () Bool)

(assert (=> b!6927188 (= e!4168612 e!4168614)))

(declare-fun res!2825114 () Bool)

(assert (=> b!6927188 (= res!2825114 (not (is-EmptyLang!16932 r1!6342)))))

(assert (=> b!6927188 (=> (not res!2825114) (not e!4168614))))

(declare-fun b!6927189 () Bool)

(declare-fun e!4168615 () Bool)

(assert (=> b!6927189 (= e!4168615 (matchRSpec!3989 (regTwo!34377 r1!6342) (_1!37092 lt!2472219)))))

(declare-fun b!6927190 () Bool)

(declare-fun e!4168613 () Bool)

(assert (=> b!6927190 (= e!4168613 (= (_1!37092 lt!2472219) (Cons!66561 (c!1285766 r1!6342) Nil!66561)))))

(declare-fun b!6927191 () Bool)

(declare-fun res!2825115 () Bool)

(declare-fun e!4168610 () Bool)

(assert (=> b!6927191 (=> res!2825115 e!4168610)))

(assert (=> b!6927191 (= res!2825115 call!629524)))

(assert (=> b!6927191 (= e!4168609 e!4168610)))

(declare-fun b!6927192 () Bool)

(declare-fun c!1285799 () Bool)

(assert (=> b!6927192 (= c!1285799 (is-Union!16932 r1!6342))))

(assert (=> b!6927192 (= e!4168613 e!4168611)))

(declare-fun b!6927193 () Bool)

(declare-fun c!1285796 () Bool)

(assert (=> b!6927193 (= c!1285796 (is-ElementMatch!16932 r1!6342))))

(assert (=> b!6927193 (= e!4168614 e!4168613)))

(declare-fun bm!629519 () Bool)

(assert (=> bm!629519 (= call!629523 (Exists!3934 (ite c!1285798 lambda!394134 lambda!394135)))))

(declare-fun b!6927194 () Bool)

(assert (=> b!6927194 (= e!4168612 call!629524)))

(assert (=> b!6927195 (= e!4168610 call!629523)))

(declare-fun b!6927196 () Bool)

(assert (=> b!6927196 (= e!4168611 e!4168615)))

(declare-fun res!2825113 () Bool)

(assert (=> b!6927196 (= res!2825113 (matchRSpec!3989 (regOne!34377 r1!6342) (_1!37092 lt!2472219)))))

(assert (=> b!6927196 (=> res!2825113 e!4168615)))

(declare-fun d!2165482 () Bool)

(declare-fun c!1285797 () Bool)

(assert (=> d!2165482 (= c!1285797 (is-EmptyExpr!16932 r1!6342))))

(assert (=> d!2165482 (= (matchRSpec!3989 r1!6342 (_1!37092 lt!2472219)) e!4168612)))

(assert (= (and d!2165482 c!1285797) b!6927194))

(assert (= (and d!2165482 (not c!1285797)) b!6927188))

(assert (= (and b!6927188 res!2825114) b!6927193))

(assert (= (and b!6927193 c!1285796) b!6927190))

(assert (= (and b!6927193 (not c!1285796)) b!6927192))

(assert (= (and b!6927192 c!1285799) b!6927196))

(assert (= (and b!6927192 (not c!1285799)) b!6927187))

(assert (= (and b!6927196 (not res!2825113)) b!6927189))

(assert (= (and b!6927187 c!1285798) b!6927191))

(assert (= (and b!6927187 (not c!1285798)) b!6927186))

(assert (= (and b!6927191 (not res!2825115)) b!6927195))

(assert (= (or b!6927195 b!6927186) bm!629519))

(assert (= (or b!6927194 b!6927191) bm!629518))

(declare-fun m!7635832 () Bool)

(assert (=> bm!629518 m!7635832))

(declare-fun m!7635834 () Bool)

(assert (=> b!6927189 m!7635834))

(declare-fun m!7635836 () Bool)

(assert (=> bm!629519 m!7635836))

(declare-fun m!7635838 () Bool)

(assert (=> b!6927196 m!7635838))

(assert (=> b!6926916 d!2165482))

(declare-fun bs!1849128 () Bool)

(declare-fun b!6927215 () Bool)

(assert (= bs!1849128 (and b!6927215 b!6926937)))

(declare-fun lambda!394136 () Int)

(assert (=> bs!1849128 (not (= lambda!394136 lambda!394097))))

(declare-fun bs!1849129 () Bool)

(assert (= bs!1849129 (and b!6927215 b!6926914)))

(assert (=> bs!1849129 (not (= lambda!394136 lambda!394099))))

(assert (=> bs!1849128 (not (= lambda!394136 lambda!394098))))

(declare-fun bs!1849130 () Bool)

(assert (= bs!1849130 (and b!6927215 b!6926928)))

(assert (=> bs!1849130 (not (= lambda!394136 lambda!394094))))

(declare-fun bs!1849131 () Bool)

(assert (= bs!1849131 (and b!6927215 b!6926923)))

(assert (=> bs!1849131 (not (= lambda!394136 lambda!394096))))

(declare-fun bs!1849132 () Bool)

(assert (= bs!1849132 (and b!6927215 b!6927195)))

(assert (=> bs!1849132 (= (and (= (_2!37092 lt!2472219) (_1!37092 lt!2472219)) (= (reg!17261 r2!6280) (reg!17261 r1!6342)) (= r2!6280 r1!6342)) (= lambda!394136 lambda!394134))))

(declare-fun bs!1849133 () Bool)

(assert (= bs!1849133 (and b!6927215 d!2165462)))

(assert (=> bs!1849133 (not (= lambda!394136 lambda!394129))))

(assert (=> bs!1849130 (not (= lambda!394136 lambda!394093))))

(declare-fun bs!1849134 () Bool)

(assert (= bs!1849134 (and b!6927215 b!6927186)))

(assert (=> bs!1849134 (not (= lambda!394136 lambda!394135))))

(assert (=> bs!1849131 (not (= lambda!394136 lambda!394095))))

(assert (=> b!6927215 true))

(assert (=> b!6927215 true))

(declare-fun bs!1849135 () Bool)

(declare-fun b!6927206 () Bool)

(assert (= bs!1849135 (and b!6927206 b!6926937)))

(declare-fun lambda!394137 () Int)

(assert (=> bs!1849135 (not (= lambda!394137 lambda!394097))))

(declare-fun bs!1849136 () Bool)

(assert (= bs!1849136 (and b!6927206 b!6927215)))

(assert (=> bs!1849136 (not (= lambda!394137 lambda!394136))))

(declare-fun bs!1849137 () Bool)

(assert (= bs!1849137 (and b!6927206 b!6926914)))

(assert (=> bs!1849137 (not (= lambda!394137 lambda!394099))))

(assert (=> bs!1849135 (= (and (= (_2!37092 lt!2472219) lt!2472214) (= (regOne!34376 r2!6280) r2!6280) (= (regTwo!34376 r2!6280) r3!135)) (= lambda!394137 lambda!394098))))

(declare-fun bs!1849138 () Bool)

(assert (= bs!1849138 (and b!6927206 b!6926928)))

(assert (=> bs!1849138 (= (and (= (_2!37092 lt!2472219) s!14361) (= (regOne!34376 r2!6280) lt!2472224) (= (regTwo!34376 r2!6280) r3!135)) (= lambda!394137 lambda!394094))))

(declare-fun bs!1849139 () Bool)

(assert (= bs!1849139 (and b!6927206 b!6926923)))

(assert (=> bs!1849139 (= (and (= (_2!37092 lt!2472219) (_1!37092 lt!2472208)) (= (regOne!34376 r2!6280) r1!6342) (= (regTwo!34376 r2!6280) r2!6280)) (= lambda!394137 lambda!394096))))

(declare-fun bs!1849140 () Bool)

(assert (= bs!1849140 (and b!6927206 b!6927195)))

(assert (=> bs!1849140 (not (= lambda!394137 lambda!394134))))

(declare-fun bs!1849141 () Bool)

(assert (= bs!1849141 (and b!6927206 d!2165462)))

(assert (=> bs!1849141 (not (= lambda!394137 lambda!394129))))

(assert (=> bs!1849138 (not (= lambda!394137 lambda!394093))))

(declare-fun bs!1849143 () Bool)

(assert (= bs!1849143 (and b!6927206 b!6927186)))

(assert (=> bs!1849143 (= (and (= (_2!37092 lt!2472219) (_1!37092 lt!2472219)) (= (regOne!34376 r2!6280) (regOne!34376 r1!6342)) (= (regTwo!34376 r2!6280) (regTwo!34376 r1!6342))) (= lambda!394137 lambda!394135))))

(assert (=> bs!1849139 (not (= lambda!394137 lambda!394095))))

(assert (=> b!6927206 true))

(assert (=> b!6927206 true))

(declare-fun e!4168621 () Bool)

(declare-fun call!629525 () Bool)

(assert (=> b!6927206 (= e!4168621 call!629525)))

(declare-fun b!6927207 () Bool)

(declare-fun e!4168623 () Bool)

(assert (=> b!6927207 (= e!4168623 e!4168621)))

(declare-fun c!1285804 () Bool)

(assert (=> b!6927207 (= c!1285804 (is-Star!16932 r2!6280))))

(declare-fun bm!629520 () Bool)

(declare-fun call!629526 () Bool)

(assert (=> bm!629520 (= call!629526 (isEmpty!38817 (_2!37092 lt!2472219)))))

(declare-fun b!6927208 () Bool)

(declare-fun e!4168624 () Bool)

(declare-fun e!4168626 () Bool)

(assert (=> b!6927208 (= e!4168624 e!4168626)))

(declare-fun res!2825122 () Bool)

(assert (=> b!6927208 (= res!2825122 (not (is-EmptyLang!16932 r2!6280)))))

(assert (=> b!6927208 (=> (not res!2825122) (not e!4168626))))

(declare-fun b!6927209 () Bool)

(declare-fun e!4168627 () Bool)

(assert (=> b!6927209 (= e!4168627 (matchRSpec!3989 (regTwo!34377 r2!6280) (_2!37092 lt!2472219)))))

(declare-fun b!6927210 () Bool)

(declare-fun e!4168625 () Bool)

(assert (=> b!6927210 (= e!4168625 (= (_2!37092 lt!2472219) (Cons!66561 (c!1285766 r2!6280) Nil!66561)))))

(declare-fun b!6927211 () Bool)

(declare-fun res!2825123 () Bool)

(declare-fun e!4168622 () Bool)

(assert (=> b!6927211 (=> res!2825123 e!4168622)))

(assert (=> b!6927211 (= res!2825123 call!629526)))

(assert (=> b!6927211 (= e!4168621 e!4168622)))

(declare-fun b!6927212 () Bool)

(declare-fun c!1285805 () Bool)

(assert (=> b!6927212 (= c!1285805 (is-Union!16932 r2!6280))))

(assert (=> b!6927212 (= e!4168625 e!4168623)))

(declare-fun b!6927213 () Bool)

(declare-fun c!1285802 () Bool)

(assert (=> b!6927213 (= c!1285802 (is-ElementMatch!16932 r2!6280))))

(assert (=> b!6927213 (= e!4168626 e!4168625)))

(declare-fun bm!629521 () Bool)

(assert (=> bm!629521 (= call!629525 (Exists!3934 (ite c!1285804 lambda!394136 lambda!394137)))))

(declare-fun b!6927214 () Bool)

(assert (=> b!6927214 (= e!4168624 call!629526)))

(assert (=> b!6927215 (= e!4168622 call!629525)))

(declare-fun b!6927216 () Bool)

(assert (=> b!6927216 (= e!4168623 e!4168627)))

(declare-fun res!2825121 () Bool)

(assert (=> b!6927216 (= res!2825121 (matchRSpec!3989 (regOne!34377 r2!6280) (_2!37092 lt!2472219)))))

(assert (=> b!6927216 (=> res!2825121 e!4168627)))

(declare-fun d!2165484 () Bool)

(declare-fun c!1285803 () Bool)

(assert (=> d!2165484 (= c!1285803 (is-EmptyExpr!16932 r2!6280))))

(assert (=> d!2165484 (= (matchRSpec!3989 r2!6280 (_2!37092 lt!2472219)) e!4168624)))

(assert (= (and d!2165484 c!1285803) b!6927214))

(assert (= (and d!2165484 (not c!1285803)) b!6927208))

(assert (= (and b!6927208 res!2825122) b!6927213))

(assert (= (and b!6927213 c!1285802) b!6927210))

(assert (= (and b!6927213 (not c!1285802)) b!6927212))

(assert (= (and b!6927212 c!1285805) b!6927216))

(assert (= (and b!6927212 (not c!1285805)) b!6927207))

(assert (= (and b!6927216 (not res!2825121)) b!6927209))

(assert (= (and b!6927207 c!1285804) b!6927211))

(assert (= (and b!6927207 (not c!1285804)) b!6927206))

(assert (= (and b!6927211 (not res!2825123)) b!6927215))

(assert (= (or b!6927215 b!6927206) bm!629521))

(assert (= (or b!6927214 b!6927211) bm!629520))

(declare-fun m!7635864 () Bool)

(assert (=> bm!629520 m!7635864))

(declare-fun m!7635866 () Bool)

(assert (=> b!6927209 m!7635866))

(declare-fun m!7635868 () Bool)

(assert (=> bm!629521 m!7635868))

(declare-fun m!7635870 () Bool)

(assert (=> b!6927216 m!7635870))

(assert (=> b!6926916 d!2165484))

(declare-fun bm!629522 () Bool)

(declare-fun call!629528 () Bool)

(declare-fun call!629529 () Bool)

(assert (=> bm!629522 (= call!629528 call!629529)))

(declare-fun c!1285807 () Bool)

(declare-fun c!1285806 () Bool)

(declare-fun bm!629523 () Bool)

(assert (=> bm!629523 (= call!629529 (validRegex!8638 (ite c!1285807 (reg!17261 r3!135) (ite c!1285806 (regOne!34377 r3!135) (regTwo!34376 r3!135)))))))

(declare-fun b!6927218 () Bool)

(declare-fun res!2825125 () Bool)

(declare-fun e!4168631 () Bool)

(assert (=> b!6927218 (=> res!2825125 e!4168631)))

(assert (=> b!6927218 (= res!2825125 (not (is-Concat!25777 r3!135)))))

(declare-fun e!4168632 () Bool)

(assert (=> b!6927218 (= e!4168632 e!4168631)))

(declare-fun b!6927219 () Bool)

(declare-fun res!2825127 () Bool)

(declare-fun e!4168628 () Bool)

(assert (=> b!6927219 (=> (not res!2825127) (not e!4168628))))

(assert (=> b!6927219 (= res!2825127 call!629528)))

(assert (=> b!6927219 (= e!4168632 e!4168628)))

(declare-fun b!6927220 () Bool)

(declare-fun e!4168629 () Bool)

(declare-fun e!4168630 () Bool)

(assert (=> b!6927220 (= e!4168629 e!4168630)))

(assert (=> b!6927220 (= c!1285807 (is-Star!16932 r3!135))))

(declare-fun b!6927221 () Bool)

(declare-fun e!4168634 () Bool)

(assert (=> b!6927221 (= e!4168634 call!629528)))

(declare-fun b!6927222 () Bool)

(assert (=> b!6927222 (= e!4168630 e!4168632)))

(assert (=> b!6927222 (= c!1285806 (is-Union!16932 r3!135))))

(declare-fun bm!629524 () Bool)

(declare-fun call!629527 () Bool)

(assert (=> bm!629524 (= call!629527 (validRegex!8638 (ite c!1285806 (regTwo!34377 r3!135) (regOne!34376 r3!135))))))

(declare-fun b!6927223 () Bool)

(assert (=> b!6927223 (= e!4168628 call!629527)))

(declare-fun d!2165490 () Bool)

(declare-fun res!2825128 () Bool)

(assert (=> d!2165490 (=> res!2825128 e!4168629)))

(assert (=> d!2165490 (= res!2825128 (is-ElementMatch!16932 r3!135))))

(assert (=> d!2165490 (= (validRegex!8638 r3!135) e!4168629)))

(declare-fun b!6927217 () Bool)

(declare-fun e!4168633 () Bool)

(assert (=> b!6927217 (= e!4168633 call!629529)))

(declare-fun b!6927224 () Bool)

(assert (=> b!6927224 (= e!4168631 e!4168634)))

(declare-fun res!2825126 () Bool)

(assert (=> b!6927224 (=> (not res!2825126) (not e!4168634))))

(assert (=> b!6927224 (= res!2825126 call!629527)))

(declare-fun b!6927225 () Bool)

(assert (=> b!6927225 (= e!4168630 e!4168633)))

(declare-fun res!2825124 () Bool)

(assert (=> b!6927225 (= res!2825124 (not (nullable!6757 (reg!17261 r3!135))))))

(assert (=> b!6927225 (=> (not res!2825124) (not e!4168633))))

(assert (= (and d!2165490 (not res!2825128)) b!6927220))

(assert (= (and b!6927220 c!1285807) b!6927225))

(assert (= (and b!6927220 (not c!1285807)) b!6927222))

(assert (= (and b!6927225 res!2825124) b!6927217))

(assert (= (and b!6927222 c!1285806) b!6927219))

(assert (= (and b!6927222 (not c!1285806)) b!6927218))

(assert (= (and b!6927219 res!2825127) b!6927223))

(assert (= (and b!6927218 (not res!2825125)) b!6927224))

(assert (= (and b!6927224 res!2825126) b!6927221))

(assert (= (or b!6927219 b!6927221) bm!629522))

(assert (= (or b!6927223 b!6927224) bm!629524))

(assert (= (or b!6927217 bm!629522) bm!629523))

(declare-fun m!7635872 () Bool)

(assert (=> bm!629523 m!7635872))

(declare-fun m!7635874 () Bool)

(assert (=> bm!629524 m!7635874))

(declare-fun m!7635876 () Bool)

(assert (=> b!6927225 m!7635876))

(assert (=> b!6926926 d!2165490))

(declare-fun d!2165492 () Bool)

(assert (=> d!2165492 (= (Exists!3934 lambda!394098) (choose!51582 lambda!394098))))

(declare-fun bs!1849144 () Bool)

(assert (= bs!1849144 d!2165492))

(declare-fun m!7635878 () Bool)

(assert (=> bs!1849144 m!7635878))

(assert (=> b!6926937 d!2165492))

(declare-fun bs!1849145 () Bool)

(declare-fun b!6927235 () Bool)

(assert (= bs!1849145 (and b!6927235 b!6926937)))

(declare-fun lambda!394138 () Int)

(assert (=> bs!1849145 (not (= lambda!394138 lambda!394097))))

(declare-fun bs!1849146 () Bool)

(assert (= bs!1849146 (and b!6927235 b!6927215)))

(assert (=> bs!1849146 (= (and (= lt!2472214 (_2!37092 lt!2472219)) (= (reg!17261 lt!2472222) (reg!17261 r2!6280)) (= lt!2472222 r2!6280)) (= lambda!394138 lambda!394136))))

(declare-fun bs!1849147 () Bool)

(assert (= bs!1849147 (and b!6927235 b!6926914)))

(assert (=> bs!1849147 (not (= lambda!394138 lambda!394099))))

(assert (=> bs!1849145 (not (= lambda!394138 lambda!394098))))

(declare-fun bs!1849148 () Bool)

(assert (= bs!1849148 (and b!6927235 b!6926928)))

(assert (=> bs!1849148 (not (= lambda!394138 lambda!394094))))

(declare-fun bs!1849149 () Bool)

(assert (= bs!1849149 (and b!6927235 b!6926923)))

(assert (=> bs!1849149 (not (= lambda!394138 lambda!394096))))

(declare-fun bs!1849150 () Bool)

(assert (= bs!1849150 (and b!6927235 b!6927195)))

(assert (=> bs!1849150 (= (and (= lt!2472214 (_1!37092 lt!2472219)) (= (reg!17261 lt!2472222) (reg!17261 r1!6342)) (= lt!2472222 r1!6342)) (= lambda!394138 lambda!394134))))

(assert (=> bs!1849148 (not (= lambda!394138 lambda!394093))))

(declare-fun bs!1849151 () Bool)

(assert (= bs!1849151 (and b!6927235 b!6927186)))

(assert (=> bs!1849151 (not (= lambda!394138 lambda!394135))))

(assert (=> bs!1849149 (not (= lambda!394138 lambda!394095))))

(declare-fun bs!1849152 () Bool)

(assert (= bs!1849152 (and b!6927235 d!2165462)))

(assert (=> bs!1849152 (not (= lambda!394138 lambda!394129))))

(declare-fun bs!1849153 () Bool)

(assert (= bs!1849153 (and b!6927235 b!6927206)))

(assert (=> bs!1849153 (not (= lambda!394138 lambda!394137))))

(assert (=> b!6927235 true))

(assert (=> b!6927235 true))

(declare-fun bs!1849154 () Bool)

(declare-fun b!6927226 () Bool)

(assert (= bs!1849154 (and b!6927226 b!6926937)))

(declare-fun lambda!394139 () Int)

(assert (=> bs!1849154 (not (= lambda!394139 lambda!394097))))

(declare-fun bs!1849155 () Bool)

(assert (= bs!1849155 (and b!6927226 b!6927215)))

(assert (=> bs!1849155 (not (= lambda!394139 lambda!394136))))

(declare-fun bs!1849156 () Bool)

(assert (= bs!1849156 (and b!6927226 b!6926914)))

(assert (=> bs!1849156 (not (= lambda!394139 lambda!394099))))

(assert (=> bs!1849154 (= (and (= (regOne!34376 lt!2472222) r2!6280) (= (regTwo!34376 lt!2472222) r3!135)) (= lambda!394139 lambda!394098))))

(declare-fun bs!1849157 () Bool)

(assert (= bs!1849157 (and b!6927226 b!6926928)))

(assert (=> bs!1849157 (= (and (= lt!2472214 s!14361) (= (regOne!34376 lt!2472222) lt!2472224) (= (regTwo!34376 lt!2472222) r3!135)) (= lambda!394139 lambda!394094))))

(declare-fun bs!1849158 () Bool)

(assert (= bs!1849158 (and b!6927226 b!6927235)))

(assert (=> bs!1849158 (not (= lambda!394139 lambda!394138))))

(declare-fun bs!1849159 () Bool)

(assert (= bs!1849159 (and b!6927226 b!6926923)))

(assert (=> bs!1849159 (= (and (= lt!2472214 (_1!37092 lt!2472208)) (= (regOne!34376 lt!2472222) r1!6342) (= (regTwo!34376 lt!2472222) r2!6280)) (= lambda!394139 lambda!394096))))

(declare-fun bs!1849160 () Bool)

(assert (= bs!1849160 (and b!6927226 b!6927195)))

(assert (=> bs!1849160 (not (= lambda!394139 lambda!394134))))

(assert (=> bs!1849157 (not (= lambda!394139 lambda!394093))))

(declare-fun bs!1849161 () Bool)

(assert (= bs!1849161 (and b!6927226 b!6927186)))

(assert (=> bs!1849161 (= (and (= lt!2472214 (_1!37092 lt!2472219)) (= (regOne!34376 lt!2472222) (regOne!34376 r1!6342)) (= (regTwo!34376 lt!2472222) (regTwo!34376 r1!6342))) (= lambda!394139 lambda!394135))))

(assert (=> bs!1849159 (not (= lambda!394139 lambda!394095))))

(declare-fun bs!1849162 () Bool)

(assert (= bs!1849162 (and b!6927226 d!2165462)))

(assert (=> bs!1849162 (not (= lambda!394139 lambda!394129))))

(declare-fun bs!1849163 () Bool)

(assert (= bs!1849163 (and b!6927226 b!6927206)))

(assert (=> bs!1849163 (= (and (= lt!2472214 (_2!37092 lt!2472219)) (= (regOne!34376 lt!2472222) (regOne!34376 r2!6280)) (= (regTwo!34376 lt!2472222) (regTwo!34376 r2!6280))) (= lambda!394139 lambda!394137))))

(assert (=> b!6927226 true))

(assert (=> b!6927226 true))

(declare-fun e!4168635 () Bool)

(declare-fun call!629530 () Bool)

(assert (=> b!6927226 (= e!4168635 call!629530)))

(declare-fun b!6927227 () Bool)

(declare-fun e!4168637 () Bool)

(assert (=> b!6927227 (= e!4168637 e!4168635)))

(declare-fun c!1285810 () Bool)

(assert (=> b!6927227 (= c!1285810 (is-Star!16932 lt!2472222))))

(declare-fun bm!629525 () Bool)

(declare-fun call!629531 () Bool)

(assert (=> bm!629525 (= call!629531 (isEmpty!38817 lt!2472214))))

(declare-fun b!6927228 () Bool)

(declare-fun e!4168638 () Bool)

(declare-fun e!4168640 () Bool)

(assert (=> b!6927228 (= e!4168638 e!4168640)))

(declare-fun res!2825130 () Bool)

(assert (=> b!6927228 (= res!2825130 (not (is-EmptyLang!16932 lt!2472222)))))

(assert (=> b!6927228 (=> (not res!2825130) (not e!4168640))))

(declare-fun b!6927229 () Bool)

(declare-fun e!4168641 () Bool)

(assert (=> b!6927229 (= e!4168641 (matchRSpec!3989 (regTwo!34377 lt!2472222) lt!2472214))))

(declare-fun b!6927230 () Bool)

(declare-fun e!4168639 () Bool)

(assert (=> b!6927230 (= e!4168639 (= lt!2472214 (Cons!66561 (c!1285766 lt!2472222) Nil!66561)))))

(declare-fun b!6927231 () Bool)

(declare-fun res!2825131 () Bool)

(declare-fun e!4168636 () Bool)

(assert (=> b!6927231 (=> res!2825131 e!4168636)))

(assert (=> b!6927231 (= res!2825131 call!629531)))

(assert (=> b!6927231 (= e!4168635 e!4168636)))

(declare-fun b!6927232 () Bool)

(declare-fun c!1285811 () Bool)

(assert (=> b!6927232 (= c!1285811 (is-Union!16932 lt!2472222))))

(assert (=> b!6927232 (= e!4168639 e!4168637)))

(declare-fun b!6927233 () Bool)

(declare-fun c!1285808 () Bool)

(assert (=> b!6927233 (= c!1285808 (is-ElementMatch!16932 lt!2472222))))

(assert (=> b!6927233 (= e!4168640 e!4168639)))

(declare-fun bm!629526 () Bool)

(assert (=> bm!629526 (= call!629530 (Exists!3934 (ite c!1285810 lambda!394138 lambda!394139)))))

(declare-fun b!6927234 () Bool)

(assert (=> b!6927234 (= e!4168638 call!629531)))

(assert (=> b!6927235 (= e!4168636 call!629530)))

(declare-fun b!6927236 () Bool)

(assert (=> b!6927236 (= e!4168637 e!4168641)))

(declare-fun res!2825129 () Bool)

(assert (=> b!6927236 (= res!2825129 (matchRSpec!3989 (regOne!34377 lt!2472222) lt!2472214))))

(assert (=> b!6927236 (=> res!2825129 e!4168641)))

(declare-fun d!2165494 () Bool)

(declare-fun c!1285809 () Bool)

(assert (=> d!2165494 (= c!1285809 (is-EmptyExpr!16932 lt!2472222))))

(assert (=> d!2165494 (= (matchRSpec!3989 lt!2472222 lt!2472214) e!4168638)))

(assert (= (and d!2165494 c!1285809) b!6927234))

(assert (= (and d!2165494 (not c!1285809)) b!6927228))

(assert (= (and b!6927228 res!2825130) b!6927233))

(assert (= (and b!6927233 c!1285808) b!6927230))

(assert (= (and b!6927233 (not c!1285808)) b!6927232))

(assert (= (and b!6927232 c!1285811) b!6927236))

(assert (= (and b!6927232 (not c!1285811)) b!6927227))

(assert (= (and b!6927236 (not res!2825129)) b!6927229))

(assert (= (and b!6927227 c!1285810) b!6927231))

(assert (= (and b!6927227 (not c!1285810)) b!6927226))

(assert (= (and b!6927231 (not res!2825131)) b!6927235))

(assert (= (or b!6927235 b!6927226) bm!629526))

(assert (= (or b!6927234 b!6927231) bm!629525))

(declare-fun m!7635880 () Bool)

(assert (=> bm!629525 m!7635880))

(declare-fun m!7635882 () Bool)

(assert (=> b!6927229 m!7635882))

(declare-fun m!7635884 () Bool)

(assert (=> bm!629526 m!7635884))

(declare-fun m!7635886 () Bool)

(assert (=> b!6927236 m!7635886))

(assert (=> b!6926937 d!2165494))

(declare-fun d!2165496 () Bool)

(assert (=> d!2165496 (isDefined!13404 (findConcatSeparation!3115 r2!6280 r3!135 Nil!66561 lt!2472214 lt!2472214))))

(declare-fun lt!2472358 () Unit!160588)

(assert (=> d!2165496 (= lt!2472358 (choose!51584 r2!6280 r3!135 (_2!37092 lt!2472219) (_2!37092 lt!2472208) lt!2472214 Nil!66561 lt!2472214))))

(assert (=> d!2165496 (validRegex!8638 r2!6280)))

(assert (=> d!2165496 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!93 r2!6280 r3!135 (_2!37092 lt!2472219) (_2!37092 lt!2472208) lt!2472214 Nil!66561 lt!2472214) lt!2472358)))

(declare-fun bs!1849164 () Bool)

(assert (= bs!1849164 d!2165496))

(assert (=> bs!1849164 m!7635570))

(assert (=> bs!1849164 m!7635570))

(assert (=> bs!1849164 m!7635574))

(declare-fun m!7635888 () Bool)

(assert (=> bs!1849164 m!7635888))

(assert (=> bs!1849164 m!7635588))

(assert (=> b!6926937 d!2165496))

(declare-fun d!2165498 () Bool)

(assert (=> d!2165498 (= (isDefined!13404 (findConcatSeparation!3115 r2!6280 r3!135 Nil!66561 lt!2472214 lt!2472214)) (not (isEmpty!38816 (findConcatSeparation!3115 r2!6280 r3!135 Nil!66561 lt!2472214 lt!2472214))))))

(declare-fun bs!1849165 () Bool)

(assert (= bs!1849165 d!2165498))

(assert (=> bs!1849165 m!7635570))

(declare-fun m!7635890 () Bool)

(assert (=> bs!1849165 m!7635890))

(assert (=> b!6926937 d!2165498))

(declare-fun bs!1849166 () Bool)

(declare-fun d!2165500 () Bool)

(assert (= bs!1849166 (and d!2165500 b!6926937)))

(declare-fun lambda!394146 () Int)

(assert (=> bs!1849166 (= lambda!394146 lambda!394097)))

(declare-fun bs!1849167 () Bool)

(assert (= bs!1849167 (and d!2165500 b!6927215)))

(assert (=> bs!1849167 (not (= lambda!394146 lambda!394136))))

(declare-fun bs!1849168 () Bool)

(assert (= bs!1849168 (and d!2165500 b!6926914)))

(assert (=> bs!1849168 (= (and (= lt!2472214 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2472222)) (= lambda!394146 lambda!394099))))

(assert (=> bs!1849166 (not (= lambda!394146 lambda!394098))))

(declare-fun bs!1849169 () Bool)

(assert (= bs!1849169 (and d!2165500 b!6926928)))

(assert (=> bs!1849169 (not (= lambda!394146 lambda!394094))))

(declare-fun bs!1849170 () Bool)

(assert (= bs!1849170 (and d!2165500 b!6927235)))

(assert (=> bs!1849170 (not (= lambda!394146 lambda!394138))))

(declare-fun bs!1849171 () Bool)

(assert (= bs!1849171 (and d!2165500 b!6926923)))

(assert (=> bs!1849171 (not (= lambda!394146 lambda!394096))))

(declare-fun bs!1849172 () Bool)

(assert (= bs!1849172 (and d!2165500 b!6927195)))

(assert (=> bs!1849172 (not (= lambda!394146 lambda!394134))))

(assert (=> bs!1849169 (= (and (= lt!2472214 s!14361) (= r2!6280 lt!2472224)) (= lambda!394146 lambda!394093))))

(declare-fun bs!1849173 () Bool)

(assert (= bs!1849173 (and d!2165500 b!6927186)))

(assert (=> bs!1849173 (not (= lambda!394146 lambda!394135))))

(declare-fun bs!1849174 () Bool)

(assert (= bs!1849174 (and d!2165500 b!6927226)))

(assert (=> bs!1849174 (not (= lambda!394146 lambda!394139))))

(assert (=> bs!1849171 (= (and (= lt!2472214 (_1!37092 lt!2472208)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394146 lambda!394095))))

(declare-fun bs!1849175 () Bool)

(assert (= bs!1849175 (and d!2165500 d!2165462)))

(assert (=> bs!1849175 (= (and (= lt!2472214 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2472222)) (= lambda!394146 lambda!394129))))

(declare-fun bs!1849176 () Bool)

(assert (= bs!1849176 (and d!2165500 b!6927206)))

(assert (=> bs!1849176 (not (= lambda!394146 lambda!394137))))

(assert (=> d!2165500 true))

(assert (=> d!2165500 true))

(assert (=> d!2165500 true))

(declare-fun lambda!394147 () Int)

(assert (=> bs!1849166 (not (= lambda!394147 lambda!394097))))

(assert (=> bs!1849167 (not (= lambda!394147 lambda!394136))))

(assert (=> bs!1849168 (not (= lambda!394147 lambda!394099))))

(declare-fun bs!1849177 () Bool)

(assert (= bs!1849177 d!2165500))

(assert (=> bs!1849177 (not (= lambda!394147 lambda!394146))))

(assert (=> bs!1849166 (= lambda!394147 lambda!394098)))

(assert (=> bs!1849169 (= (and (= lt!2472214 s!14361) (= r2!6280 lt!2472224)) (= lambda!394147 lambda!394094))))

(assert (=> bs!1849170 (not (= lambda!394147 lambda!394138))))

(assert (=> bs!1849171 (= (and (= lt!2472214 (_1!37092 lt!2472208)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394147 lambda!394096))))

(assert (=> bs!1849172 (not (= lambda!394147 lambda!394134))))

(assert (=> bs!1849169 (not (= lambda!394147 lambda!394093))))

(assert (=> bs!1849173 (= (and (= lt!2472214 (_1!37092 lt!2472219)) (= r2!6280 (regOne!34376 r1!6342)) (= r3!135 (regTwo!34376 r1!6342))) (= lambda!394147 lambda!394135))))

(assert (=> bs!1849174 (= (and (= r2!6280 (regOne!34376 lt!2472222)) (= r3!135 (regTwo!34376 lt!2472222))) (= lambda!394147 lambda!394139))))

(assert (=> bs!1849171 (not (= lambda!394147 lambda!394095))))

(assert (=> bs!1849175 (not (= lambda!394147 lambda!394129))))

(assert (=> bs!1849176 (= (and (= lt!2472214 (_2!37092 lt!2472219)) (= r2!6280 (regOne!34376 r2!6280)) (= r3!135 (regTwo!34376 r2!6280))) (= lambda!394147 lambda!394137))))

(assert (=> d!2165500 true))

(assert (=> d!2165500 true))

(assert (=> d!2165500 true))

(assert (=> d!2165500 (= (Exists!3934 lambda!394146) (Exists!3934 lambda!394147))))

(declare-fun lt!2472363 () Unit!160588)

(declare-fun choose!51586 (Regex!16932 Regex!16932 List!66685) Unit!160588)

(assert (=> d!2165500 (= lt!2472363 (choose!51586 r2!6280 r3!135 lt!2472214))))

(assert (=> d!2165500 (validRegex!8638 r2!6280)))

(assert (=> d!2165500 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2401 r2!6280 r3!135 lt!2472214) lt!2472363)))

(declare-fun m!7635892 () Bool)

(assert (=> bs!1849177 m!7635892))

(declare-fun m!7635894 () Bool)

(assert (=> bs!1849177 m!7635894))

(declare-fun m!7635896 () Bool)

(assert (=> bs!1849177 m!7635896))

(assert (=> bs!1849177 m!7635588))

(assert (=> b!6926937 d!2165500))

(declare-fun b!6927254 () Bool)

(declare-fun res!2825151 () Bool)

(declare-fun e!4168653 () Bool)

(assert (=> b!6927254 (=> (not res!2825151) (not e!4168653))))

(declare-fun lt!2472364 () Option!16701)

(assert (=> b!6927254 (= res!2825151 (matchR!9071 r2!6280 (_1!37092 (get!23339 lt!2472364))))))

(declare-fun b!6927255 () Bool)

(declare-fun e!4168654 () Option!16701)

(declare-fun e!4168651 () Option!16701)

(assert (=> b!6927255 (= e!4168654 e!4168651)))

(declare-fun c!1285813 () Bool)

(assert (=> b!6927255 (= c!1285813 (is-Nil!66561 lt!2472214))))

(declare-fun b!6927256 () Bool)

(declare-fun lt!2472366 () Unit!160588)

(declare-fun lt!2472365 () Unit!160588)

(assert (=> b!6927256 (= lt!2472366 lt!2472365)))

(assert (=> b!6927256 (= (++!14975 (++!14975 Nil!66561 (Cons!66561 (h!73009 lt!2472214) Nil!66561)) (t!380428 lt!2472214)) lt!2472214)))

(assert (=> b!6927256 (= lt!2472365 (lemmaMoveElementToOtherListKeepsConcatEq!2836 Nil!66561 (h!73009 lt!2472214) (t!380428 lt!2472214) lt!2472214))))

(assert (=> b!6927256 (= e!4168651 (findConcatSeparation!3115 r2!6280 r3!135 (++!14975 Nil!66561 (Cons!66561 (h!73009 lt!2472214) Nil!66561)) (t!380428 lt!2472214) lt!2472214))))

(declare-fun b!6927257 () Bool)

(assert (=> b!6927257 (= e!4168654 (Some!16700 (tuple2!67579 Nil!66561 lt!2472214)))))

(declare-fun b!6927258 () Bool)

(assert (=> b!6927258 (= e!4168653 (= (++!14975 (_1!37092 (get!23339 lt!2472364)) (_2!37092 (get!23339 lt!2472364))) lt!2472214))))

(declare-fun b!6927259 () Bool)

(declare-fun e!4168650 () Bool)

(assert (=> b!6927259 (= e!4168650 (matchR!9071 r3!135 lt!2472214))))

(declare-fun b!6927260 () Bool)

(declare-fun res!2825150 () Bool)

(assert (=> b!6927260 (=> (not res!2825150) (not e!4168653))))

(assert (=> b!6927260 (= res!2825150 (matchR!9071 r3!135 (_2!37092 (get!23339 lt!2472364))))))

(declare-fun b!6927261 () Bool)

(assert (=> b!6927261 (= e!4168651 None!16700)))

(declare-fun b!6927253 () Bool)

(declare-fun e!4168652 () Bool)

(assert (=> b!6927253 (= e!4168652 (not (isDefined!13404 lt!2472364)))))

(declare-fun d!2165502 () Bool)

(assert (=> d!2165502 e!4168652))

(declare-fun res!2825152 () Bool)

(assert (=> d!2165502 (=> res!2825152 e!4168652)))

(assert (=> d!2165502 (= res!2825152 e!4168653)))

(declare-fun res!2825149 () Bool)

(assert (=> d!2165502 (=> (not res!2825149) (not e!4168653))))

(assert (=> d!2165502 (= res!2825149 (isDefined!13404 lt!2472364))))

(assert (=> d!2165502 (= lt!2472364 e!4168654)))

(declare-fun c!1285812 () Bool)

(assert (=> d!2165502 (= c!1285812 e!4168650)))

(declare-fun res!2825148 () Bool)

(assert (=> d!2165502 (=> (not res!2825148) (not e!4168650))))

(assert (=> d!2165502 (= res!2825148 (matchR!9071 r2!6280 Nil!66561))))

(assert (=> d!2165502 (validRegex!8638 r2!6280)))

(assert (=> d!2165502 (= (findConcatSeparation!3115 r2!6280 r3!135 Nil!66561 lt!2472214 lt!2472214) lt!2472364)))

(assert (= (and d!2165502 res!2825148) b!6927259))

(assert (= (and d!2165502 c!1285812) b!6927257))

(assert (= (and d!2165502 (not c!1285812)) b!6927255))

(assert (= (and b!6927255 c!1285813) b!6927261))

(assert (= (and b!6927255 (not c!1285813)) b!6927256))

(assert (= (and d!2165502 res!2825149) b!6927254))

(assert (= (and b!6927254 res!2825151) b!6927260))

(assert (= (and b!6927260 res!2825150) b!6927258))

(assert (= (and d!2165502 (not res!2825152)) b!6927253))

(declare-fun m!7635898 () Bool)

(assert (=> b!6927254 m!7635898))

(declare-fun m!7635900 () Bool)

(assert (=> b!6927254 m!7635900))

(declare-fun m!7635902 () Bool)

(assert (=> b!6927259 m!7635902))

(declare-fun m!7635904 () Bool)

(assert (=> b!6927256 m!7635904))

(assert (=> b!6927256 m!7635904))

(declare-fun m!7635906 () Bool)

(assert (=> b!6927256 m!7635906))

(declare-fun m!7635908 () Bool)

(assert (=> b!6927256 m!7635908))

(assert (=> b!6927256 m!7635904))

(declare-fun m!7635910 () Bool)

(assert (=> b!6927256 m!7635910))

(assert (=> b!6927260 m!7635898))

(declare-fun m!7635912 () Bool)

(assert (=> b!6927260 m!7635912))

(assert (=> b!6927258 m!7635898))

(declare-fun m!7635914 () Bool)

(assert (=> b!6927258 m!7635914))

(declare-fun m!7635916 () Bool)

(assert (=> d!2165502 m!7635916))

(declare-fun m!7635918 () Bool)

(assert (=> d!2165502 m!7635918))

(assert (=> d!2165502 m!7635588))

(assert (=> b!6927253 m!7635916))

(assert (=> b!6926937 d!2165502))

(declare-fun d!2165504 () Bool)

(assert (=> d!2165504 (= (Exists!3934 lambda!394097) (choose!51582 lambda!394097))))

(declare-fun bs!1849178 () Bool)

(assert (= bs!1849178 d!2165504))

(declare-fun m!7635920 () Bool)

(assert (=> bs!1849178 m!7635920))

(assert (=> b!6926937 d!2165504))

(declare-fun bs!1849179 () Bool)

(declare-fun d!2165506 () Bool)

(assert (= bs!1849179 (and d!2165506 b!6926937)))

(declare-fun lambda!394150 () Int)

(assert (=> bs!1849179 (= lambda!394150 lambda!394097)))

(declare-fun bs!1849180 () Bool)

(assert (= bs!1849180 (and d!2165506 b!6927215)))

(assert (=> bs!1849180 (not (= lambda!394150 lambda!394136))))

(declare-fun bs!1849181 () Bool)

(assert (= bs!1849181 (and d!2165506 b!6926914)))

(assert (=> bs!1849181 (= (and (= lt!2472214 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2472222)) (= lambda!394150 lambda!394099))))

(declare-fun bs!1849182 () Bool)

(assert (= bs!1849182 (and d!2165506 d!2165500)))

(assert (=> bs!1849182 (= lambda!394150 lambda!394146)))

(assert (=> bs!1849179 (not (= lambda!394150 lambda!394098))))

(declare-fun bs!1849183 () Bool)

(assert (= bs!1849183 (and d!2165506 b!6926928)))

(assert (=> bs!1849183 (not (= lambda!394150 lambda!394094))))

(declare-fun bs!1849184 () Bool)

(assert (= bs!1849184 (and d!2165506 b!6927235)))

(assert (=> bs!1849184 (not (= lambda!394150 lambda!394138))))

(declare-fun bs!1849185 () Bool)

(assert (= bs!1849185 (and d!2165506 b!6926923)))

(assert (=> bs!1849185 (not (= lambda!394150 lambda!394096))))

(declare-fun bs!1849186 () Bool)

(assert (= bs!1849186 (and d!2165506 b!6927195)))

(assert (=> bs!1849186 (not (= lambda!394150 lambda!394134))))

(assert (=> bs!1849182 (not (= lambda!394150 lambda!394147))))

(assert (=> bs!1849183 (= (and (= lt!2472214 s!14361) (= r2!6280 lt!2472224)) (= lambda!394150 lambda!394093))))

(declare-fun bs!1849188 () Bool)

(assert (= bs!1849188 (and d!2165506 b!6927186)))

(assert (=> bs!1849188 (not (= lambda!394150 lambda!394135))))

(declare-fun bs!1849189 () Bool)

(assert (= bs!1849189 (and d!2165506 b!6927226)))

(assert (=> bs!1849189 (not (= lambda!394150 lambda!394139))))

(assert (=> bs!1849185 (= (and (= lt!2472214 (_1!37092 lt!2472208)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!394150 lambda!394095))))

(declare-fun bs!1849190 () Bool)

(assert (= bs!1849190 (and d!2165506 d!2165462)))

(assert (=> bs!1849190 (= (and (= lt!2472214 s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2472222)) (= lambda!394150 lambda!394129))))

(declare-fun bs!1849192 () Bool)

(assert (= bs!1849192 (and d!2165506 b!6927206)))

(assert (=> bs!1849192 (not (= lambda!394150 lambda!394137))))

(assert (=> d!2165506 true))

(assert (=> d!2165506 true))

(assert (=> d!2165506 true))

(assert (=> d!2165506 (= (isDefined!13404 (findConcatSeparation!3115 r2!6280 r3!135 Nil!66561 lt!2472214 lt!2472214)) (Exists!3934 lambda!394150))))

(declare-fun lt!2472367 () Unit!160588)

(assert (=> d!2165506 (= lt!2472367 (choose!51583 r2!6280 r3!135 lt!2472214))))

(assert (=> d!2165506 (validRegex!8638 r2!6280)))

(assert (=> d!2165506 (= (lemmaFindConcatSeparationEquivalentToExists!2877 r2!6280 r3!135 lt!2472214) lt!2472367)))

(declare-fun bs!1849193 () Bool)

(assert (= bs!1849193 d!2165506))

(assert (=> bs!1849193 m!7635588))

(assert (=> bs!1849193 m!7635570))

(assert (=> bs!1849193 m!7635570))

(assert (=> bs!1849193 m!7635574))

(declare-fun m!7635922 () Bool)

(assert (=> bs!1849193 m!7635922))

(declare-fun m!7635924 () Bool)

(assert (=> bs!1849193 m!7635924))

(assert (=> b!6926937 d!2165506))

(declare-fun lt!2472369 () List!66685)

(declare-fun e!4168655 () Bool)

(declare-fun b!6927265 () Bool)

(assert (=> b!6927265 (= e!4168655 (or (not (= (_2!37092 lt!2472208) Nil!66561)) (= lt!2472369 (_2!37092 lt!2472219))))))

(declare-fun b!6927264 () Bool)

(declare-fun res!2825154 () Bool)

(assert (=> b!6927264 (=> (not res!2825154) (not e!4168655))))

(assert (=> b!6927264 (= res!2825154 (= (size!40782 lt!2472369) (+ (size!40782 (_2!37092 lt!2472219)) (size!40782 (_2!37092 lt!2472208)))))))

(declare-fun b!6927263 () Bool)

(declare-fun e!4168656 () List!66685)

(assert (=> b!6927263 (= e!4168656 (Cons!66561 (h!73009 (_2!37092 lt!2472219)) (++!14975 (t!380428 (_2!37092 lt!2472219)) (_2!37092 lt!2472208))))))

(declare-fun b!6927262 () Bool)

(assert (=> b!6927262 (= e!4168656 (_2!37092 lt!2472208))))

(declare-fun d!2165508 () Bool)

(assert (=> d!2165508 e!4168655))

(declare-fun res!2825153 () Bool)

(assert (=> d!2165508 (=> (not res!2825153) (not e!4168655))))

(assert (=> d!2165508 (= res!2825153 (= (content!13085 lt!2472369) (set.union (content!13085 (_2!37092 lt!2472219)) (content!13085 (_2!37092 lt!2472208)))))))

(assert (=> d!2165508 (= lt!2472369 e!4168656)))

(declare-fun c!1285814 () Bool)

(assert (=> d!2165508 (= c!1285814 (is-Nil!66561 (_2!37092 lt!2472219)))))

(assert (=> d!2165508 (= (++!14975 (_2!37092 lt!2472219) (_2!37092 lt!2472208)) lt!2472369)))

(assert (= (and d!2165508 c!1285814) b!6927262))

(assert (= (and d!2165508 (not c!1285814)) b!6927263))

(assert (= (and d!2165508 res!2825153) b!6927264))

(assert (= (and b!6927264 res!2825154) b!6927265))

(declare-fun m!7635926 () Bool)

(assert (=> b!6927264 m!7635926))

(assert (=> b!6927264 m!7635818))

(assert (=> b!6927264 m!7635804))

(declare-fun m!7635928 () Bool)

(assert (=> b!6927263 m!7635928))

(declare-fun m!7635930 () Bool)

(assert (=> d!2165508 m!7635930))

(assert (=> d!2165508 m!7635826))

(assert (=> d!2165508 m!7635812))

(assert (=> b!6926937 d!2165508))

(declare-fun d!2165510 () Bool)

(assert (=> d!2165510 (= (matchR!9071 lt!2472222 lt!2472214) (matchRSpec!3989 lt!2472222 lt!2472214))))

(declare-fun lt!2472370 () Unit!160588)

(assert (=> d!2165510 (= lt!2472370 (choose!51585 lt!2472222 lt!2472214))))

(assert (=> d!2165510 (validRegex!8638 lt!2472222)))

(assert (=> d!2165510 (= (mainMatchTheorem!3989 lt!2472222 lt!2472214) lt!2472370)))

(declare-fun bs!1849195 () Bool)

(assert (= bs!1849195 d!2165510))

(assert (=> bs!1849195 m!7635566))

(assert (=> bs!1849195 m!7635568))

(declare-fun m!7635932 () Bool)

(assert (=> bs!1849195 m!7635932))

(assert (=> bs!1849195 m!7635608))

(assert (=> b!6926937 d!2165510))

(declare-fun b!6927294 () Bool)

(declare-fun e!4168671 () Bool)

(declare-fun lt!2472373 () Bool)

(assert (=> b!6927294 (= e!4168671 (not lt!2472373))))

(declare-fun b!6927295 () Bool)

(declare-fun e!4168673 () Bool)

(assert (=> b!6927295 (= e!4168673 (nullable!6757 lt!2472222))))

(declare-fun b!6927296 () Bool)

(declare-fun e!4168672 () Bool)

(declare-fun head!13885 (List!66685) C!34134)

(assert (=> b!6927296 (= e!4168672 (= (head!13885 lt!2472214) (c!1285766 lt!2472222)))))

(declare-fun b!6927297 () Bool)

(declare-fun res!2825174 () Bool)

(declare-fun e!4168676 () Bool)

(assert (=> b!6927297 (=> res!2825174 e!4168676)))

(declare-fun tail!12937 (List!66685) List!66685)

(assert (=> b!6927297 (= res!2825174 (not (isEmpty!38817 (tail!12937 lt!2472214))))))

(declare-fun b!6927298 () Bool)

(declare-fun res!2825177 () Bool)

(declare-fun e!4168677 () Bool)

(assert (=> b!6927298 (=> res!2825177 e!4168677)))

(assert (=> b!6927298 (= res!2825177 e!4168672)))

(declare-fun res!2825171 () Bool)

(assert (=> b!6927298 (=> (not res!2825171) (not e!4168672))))

(assert (=> b!6927298 (= res!2825171 lt!2472373)))

(declare-fun b!6927299 () Bool)

(declare-fun derivativeStep!5432 (Regex!16932 C!34134) Regex!16932)

(assert (=> b!6927299 (= e!4168673 (matchR!9071 (derivativeStep!5432 lt!2472222 (head!13885 lt!2472214)) (tail!12937 lt!2472214)))))

(declare-fun b!6927300 () Bool)

(declare-fun res!2825173 () Bool)

(assert (=> b!6927300 (=> (not res!2825173) (not e!4168672))))

(assert (=> b!6927300 (= res!2825173 (isEmpty!38817 (tail!12937 lt!2472214)))))

(declare-fun b!6927301 () Bool)

(declare-fun e!4168675 () Bool)

(assert (=> b!6927301 (= e!4168675 e!4168676)))

(declare-fun res!2825172 () Bool)

(assert (=> b!6927301 (=> res!2825172 e!4168676)))

(declare-fun call!629534 () Bool)

(assert (=> b!6927301 (= res!2825172 call!629534)))

(declare-fun b!6927302 () Bool)

(declare-fun res!2825178 () Bool)

(assert (=> b!6927302 (=> res!2825178 e!4168677)))

(assert (=> b!6927302 (= res!2825178 (not (is-ElementMatch!16932 lt!2472222)))))

(assert (=> b!6927302 (= e!4168671 e!4168677)))

(declare-fun d!2165512 () Bool)

(declare-fun e!4168674 () Bool)

(assert (=> d!2165512 e!4168674))

(declare-fun c!1285821 () Bool)

(assert (=> d!2165512 (= c!1285821 (is-EmptyExpr!16932 lt!2472222))))

(assert (=> d!2165512 (= lt!2472373 e!4168673)))

(declare-fun c!1285822 () Bool)

(assert (=> d!2165512 (= c!1285822 (isEmpty!38817 lt!2472214))))

(assert (=> d!2165512 (validRegex!8638 lt!2472222)))

(assert (=> d!2165512 (= (matchR!9071 lt!2472222 lt!2472214) lt!2472373)))

(declare-fun b!6927303 () Bool)

(assert (=> b!6927303 (= e!4168677 e!4168675)))

(declare-fun res!2825175 () Bool)

(assert (=> b!6927303 (=> (not res!2825175) (not e!4168675))))

(assert (=> b!6927303 (= res!2825175 (not lt!2472373))))

(declare-fun b!6927304 () Bool)

(declare-fun res!2825176 () Bool)

(assert (=> b!6927304 (=> (not res!2825176) (not e!4168672))))

(assert (=> b!6927304 (= res!2825176 (not call!629534))))

(declare-fun bm!629529 () Bool)

(assert (=> bm!629529 (= call!629534 (isEmpty!38817 lt!2472214))))

(declare-fun b!6927305 () Bool)

(assert (=> b!6927305 (= e!4168674 (= lt!2472373 call!629534))))

(declare-fun b!6927306 () Bool)

(assert (=> b!6927306 (= e!4168676 (not (= (head!13885 lt!2472214) (c!1285766 lt!2472222))))))

(declare-fun b!6927307 () Bool)

(assert (=> b!6927307 (= e!4168674 e!4168671)))

(declare-fun c!1285823 () Bool)

(assert (=> b!6927307 (= c!1285823 (is-EmptyLang!16932 lt!2472222))))

(assert (= (and d!2165512 c!1285822) b!6927295))

(assert (= (and d!2165512 (not c!1285822)) b!6927299))

(assert (= (and d!2165512 c!1285821) b!6927305))

(assert (= (and d!2165512 (not c!1285821)) b!6927307))

(assert (= (and b!6927307 c!1285823) b!6927294))

(assert (= (and b!6927307 (not c!1285823)) b!6927302))

(assert (= (and b!6927302 (not res!2825178)) b!6927298))

(assert (= (and b!6927298 res!2825171) b!6927304))

(assert (= (and b!6927304 res!2825176) b!6927300))

(assert (= (and b!6927300 res!2825173) b!6927296))

(assert (= (and b!6927298 (not res!2825177)) b!6927303))

(assert (= (and b!6927303 res!2825175) b!6927301))

(assert (= (and b!6927301 (not res!2825172)) b!6927297))

(assert (= (and b!6927297 (not res!2825174)) b!6927306))

(assert (= (or b!6927305 b!6927301 b!6927304) bm!629529))

(declare-fun m!7635942 () Bool)

(assert (=> b!6927297 m!7635942))

(assert (=> b!6927297 m!7635942))

(declare-fun m!7635944 () Bool)

(assert (=> b!6927297 m!7635944))

(declare-fun m!7635946 () Bool)

(assert (=> b!6927306 m!7635946))

(assert (=> b!6927299 m!7635946))

(assert (=> b!6927299 m!7635946))

(declare-fun m!7635948 () Bool)

(assert (=> b!6927299 m!7635948))

(assert (=> b!6927299 m!7635942))

(assert (=> b!6927299 m!7635948))

(assert (=> b!6927299 m!7635942))

(declare-fun m!7635950 () Bool)

(assert (=> b!6927299 m!7635950))

(assert (=> b!6927300 m!7635942))

(assert (=> b!6927300 m!7635942))

(assert (=> b!6927300 m!7635944))

(assert (=> b!6927296 m!7635946))

(assert (=> d!2165512 m!7635880))

(assert (=> d!2165512 m!7635608))

(assert (=> bm!629529 m!7635880))

(declare-fun m!7635952 () Bool)

(assert (=> b!6927295 m!7635952))

(assert (=> b!6926937 d!2165512))

(declare-fun b!6927308 () Bool)

(declare-fun e!4168678 () Bool)

(declare-fun lt!2472374 () Bool)

(assert (=> b!6927308 (= e!4168678 (not lt!2472374))))

(declare-fun b!6927309 () Bool)

(declare-fun e!4168680 () Bool)

(assert (=> b!6927309 (= e!4168680 (nullable!6757 r1!6342))))

(declare-fun b!6927310 () Bool)

(declare-fun e!4168679 () Bool)

(assert (=> b!6927310 (= e!4168679 (= (head!13885 (_1!37092 lt!2472219)) (c!1285766 r1!6342)))))

(declare-fun b!6927311 () Bool)

(declare-fun res!2825182 () Bool)

(declare-fun e!4168683 () Bool)

(assert (=> b!6927311 (=> res!2825182 e!4168683)))

(assert (=> b!6927311 (= res!2825182 (not (isEmpty!38817 (tail!12937 (_1!37092 lt!2472219)))))))

(declare-fun b!6927312 () Bool)

(declare-fun res!2825185 () Bool)

(declare-fun e!4168684 () Bool)

(assert (=> b!6927312 (=> res!2825185 e!4168684)))

(assert (=> b!6927312 (= res!2825185 e!4168679)))

(declare-fun res!2825179 () Bool)

(assert (=> b!6927312 (=> (not res!2825179) (not e!4168679))))

(assert (=> b!6927312 (= res!2825179 lt!2472374)))

(declare-fun b!6927313 () Bool)

(assert (=> b!6927313 (= e!4168680 (matchR!9071 (derivativeStep!5432 r1!6342 (head!13885 (_1!37092 lt!2472219))) (tail!12937 (_1!37092 lt!2472219))))))

(declare-fun b!6927314 () Bool)

(declare-fun res!2825181 () Bool)

(assert (=> b!6927314 (=> (not res!2825181) (not e!4168679))))

(assert (=> b!6927314 (= res!2825181 (isEmpty!38817 (tail!12937 (_1!37092 lt!2472219))))))

(declare-fun b!6927315 () Bool)

(declare-fun e!4168682 () Bool)

(assert (=> b!6927315 (= e!4168682 e!4168683)))

(declare-fun res!2825180 () Bool)

(assert (=> b!6927315 (=> res!2825180 e!4168683)))

(declare-fun call!629535 () Bool)

(assert (=> b!6927315 (= res!2825180 call!629535)))

(declare-fun b!6927316 () Bool)

(declare-fun res!2825186 () Bool)

(assert (=> b!6927316 (=> res!2825186 e!4168684)))

(assert (=> b!6927316 (= res!2825186 (not (is-ElementMatch!16932 r1!6342)))))

(assert (=> b!6927316 (= e!4168678 e!4168684)))

(declare-fun d!2165520 () Bool)

(declare-fun e!4168681 () Bool)

(assert (=> d!2165520 e!4168681))

(declare-fun c!1285824 () Bool)

(assert (=> d!2165520 (= c!1285824 (is-EmptyExpr!16932 r1!6342))))

(assert (=> d!2165520 (= lt!2472374 e!4168680)))

(declare-fun c!1285825 () Bool)

(assert (=> d!2165520 (= c!1285825 (isEmpty!38817 (_1!37092 lt!2472219)))))

(assert (=> d!2165520 (validRegex!8638 r1!6342)))

(assert (=> d!2165520 (= (matchR!9071 r1!6342 (_1!37092 lt!2472219)) lt!2472374)))

(declare-fun b!6927317 () Bool)

(assert (=> b!6927317 (= e!4168684 e!4168682)))

(declare-fun res!2825183 () Bool)

(assert (=> b!6927317 (=> (not res!2825183) (not e!4168682))))

(assert (=> b!6927317 (= res!2825183 (not lt!2472374))))

(declare-fun b!6927318 () Bool)

(declare-fun res!2825184 () Bool)

(assert (=> b!6927318 (=> (not res!2825184) (not e!4168679))))

(assert (=> b!6927318 (= res!2825184 (not call!629535))))

(declare-fun bm!629530 () Bool)

(assert (=> bm!629530 (= call!629535 (isEmpty!38817 (_1!37092 lt!2472219)))))

(declare-fun b!6927319 () Bool)

(assert (=> b!6927319 (= e!4168681 (= lt!2472374 call!629535))))

(declare-fun b!6927320 () Bool)

(assert (=> b!6927320 (= e!4168683 (not (= (head!13885 (_1!37092 lt!2472219)) (c!1285766 r1!6342))))))

(declare-fun b!6927321 () Bool)

(assert (=> b!6927321 (= e!4168681 e!4168678)))

(declare-fun c!1285826 () Bool)

(assert (=> b!6927321 (= c!1285826 (is-EmptyLang!16932 r1!6342))))

(assert (= (and d!2165520 c!1285825) b!6927309))

(assert (= (and d!2165520 (not c!1285825)) b!6927313))

(assert (= (and d!2165520 c!1285824) b!6927319))

(assert (= (and d!2165520 (not c!1285824)) b!6927321))

(assert (= (and b!6927321 c!1285826) b!6927308))

(assert (= (and b!6927321 (not c!1285826)) b!6927316))

(assert (= (and b!6927316 (not res!2825186)) b!6927312))

(assert (= (and b!6927312 res!2825179) b!6927318))

(assert (= (and b!6927318 res!2825184) b!6927314))

(assert (= (and b!6927314 res!2825181) b!6927310))

(assert (= (and b!6927312 (not res!2825185)) b!6927317))

(assert (= (and b!6927317 res!2825183) b!6927315))

(assert (= (and b!6927315 (not res!2825180)) b!6927311))

(assert (= (and b!6927311 (not res!2825182)) b!6927320))

(assert (= (or b!6927319 b!6927315 b!6927318) bm!629530))

(declare-fun m!7635954 () Bool)

(assert (=> b!6927311 m!7635954))

(assert (=> b!6927311 m!7635954))

(declare-fun m!7635956 () Bool)

(assert (=> b!6927311 m!7635956))

(declare-fun m!7635958 () Bool)

(assert (=> b!6927320 m!7635958))

(assert (=> b!6927313 m!7635958))

(assert (=> b!6927313 m!7635958))

(declare-fun m!7635960 () Bool)

(assert (=> b!6927313 m!7635960))

(assert (=> b!6927313 m!7635954))

(assert (=> b!6927313 m!7635960))

(assert (=> b!6927313 m!7635954))

(declare-fun m!7635962 () Bool)

(assert (=> b!6927313 m!7635962))

(assert (=> b!6927314 m!7635954))

(assert (=> b!6927314 m!7635954))

(assert (=> b!6927314 m!7635956))

(assert (=> b!6927310 m!7635958))

(assert (=> d!2165520 m!7635832))

(assert (=> d!2165520 m!7635564))

(assert (=> bm!629530 m!7635832))

(declare-fun m!7635964 () Bool)

(assert (=> b!6927309 m!7635964))

(assert (=> b!6926923 d!2165520))

(declare-fun d!2165522 () Bool)

(assert (=> d!2165522 (= (Exists!3934 lambda!394095) (choose!51582 lambda!394095))))

(declare-fun bs!1849199 () Bool)

(assert (= bs!1849199 d!2165522))

(declare-fun m!7635966 () Bool)

(assert (=> bs!1849199 m!7635966))

(assert (=> b!6926923 d!2165522))

(declare-fun bs!1849200 () Bool)

(declare-fun d!2165524 () Bool)

(assert (= bs!1849200 (and d!2165524 b!6926937)))

(declare-fun lambda!394153 () Int)

(assert (=> bs!1849200 (= (and (= (_1!37092 lt!2472208) lt!2472214) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394153 lambda!394097))))

(declare-fun bs!1849201 () Bool)

(assert (= bs!1849201 (and d!2165524 b!6927215)))

(assert (=> bs!1849201 (not (= lambda!394153 lambda!394136))))

(declare-fun bs!1849202 () Bool)

(assert (= bs!1849202 (and d!2165524 d!2165500)))

(assert (=> bs!1849202 (= (and (= (_1!37092 lt!2472208) lt!2472214) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394153 lambda!394146))))

(assert (=> bs!1849200 (not (= lambda!394153 lambda!394098))))

(declare-fun bs!1849203 () Bool)

(assert (= bs!1849203 (and d!2165524 b!6926928)))

(assert (=> bs!1849203 (not (= lambda!394153 lambda!394094))))

(declare-fun bs!1849204 () Bool)

(assert (= bs!1849204 (and d!2165524 b!6927235)))

(assert (=> bs!1849204 (not (= lambda!394153 lambda!394138))))

(declare-fun bs!1849205 () Bool)

(assert (= bs!1849205 (and d!2165524 b!6926923)))

(assert (=> bs!1849205 (not (= lambda!394153 lambda!394096))))

(declare-fun bs!1849206 () Bool)

(assert (= bs!1849206 (and d!2165524 b!6927195)))

(assert (=> bs!1849206 (not (= lambda!394153 lambda!394134))))

(assert (=> bs!1849202 (not (= lambda!394153 lambda!394147))))

(assert (=> bs!1849203 (= (and (= (_1!37092 lt!2472208) s!14361) (= r1!6342 lt!2472224) (= r2!6280 r3!135)) (= lambda!394153 lambda!394093))))

(declare-fun bs!1849207 () Bool)

(assert (= bs!1849207 (and d!2165524 b!6926914)))

(assert (=> bs!1849207 (= (and (= (_1!37092 lt!2472208) s!14361) (= r2!6280 lt!2472222)) (= lambda!394153 lambda!394099))))

(declare-fun bs!1849208 () Bool)

(assert (= bs!1849208 (and d!2165524 d!2165506)))

(assert (=> bs!1849208 (= (and (= (_1!37092 lt!2472208) lt!2472214) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394153 lambda!394150))))

(declare-fun bs!1849209 () Bool)

(assert (= bs!1849209 (and d!2165524 b!6927186)))

(assert (=> bs!1849209 (not (= lambda!394153 lambda!394135))))

(declare-fun bs!1849210 () Bool)

(assert (= bs!1849210 (and d!2165524 b!6927226)))

(assert (=> bs!1849210 (not (= lambda!394153 lambda!394139))))

(assert (=> bs!1849205 (= lambda!394153 lambda!394095)))

(declare-fun bs!1849211 () Bool)

(assert (= bs!1849211 (and d!2165524 d!2165462)))

(assert (=> bs!1849211 (= (and (= (_1!37092 lt!2472208) s!14361) (= r2!6280 lt!2472222)) (= lambda!394153 lambda!394129))))

(declare-fun bs!1849212 () Bool)

(assert (= bs!1849212 (and d!2165524 b!6927206)))

(assert (=> bs!1849212 (not (= lambda!394153 lambda!394137))))

(assert (=> d!2165524 true))

(assert (=> d!2165524 true))

(assert (=> d!2165524 true))

(assert (=> d!2165524 (= (isDefined!13404 (findConcatSeparation!3115 r1!6342 r2!6280 Nil!66561 (_1!37092 lt!2472208) (_1!37092 lt!2472208))) (Exists!3934 lambda!394153))))

(declare-fun lt!2472375 () Unit!160588)

(assert (=> d!2165524 (= lt!2472375 (choose!51583 r1!6342 r2!6280 (_1!37092 lt!2472208)))))

(assert (=> d!2165524 (validRegex!8638 r1!6342)))

(assert (=> d!2165524 (= (lemmaFindConcatSeparationEquivalentToExists!2877 r1!6342 r2!6280 (_1!37092 lt!2472208)) lt!2472375)))

(declare-fun bs!1849213 () Bool)

(assert (= bs!1849213 d!2165524))

(assert (=> bs!1849213 m!7635564))

(assert (=> bs!1849213 m!7635600))

(assert (=> bs!1849213 m!7635600))

(declare-fun m!7635968 () Bool)

(assert (=> bs!1849213 m!7635968))

(declare-fun m!7635970 () Bool)

(assert (=> bs!1849213 m!7635970))

(declare-fun m!7635972 () Bool)

(assert (=> bs!1849213 m!7635972))

(assert (=> b!6926923 d!2165524))

(declare-fun d!2165526 () Bool)

(assert (=> d!2165526 (= (get!23339 lt!2472203) (v!52972 lt!2472203))))

(assert (=> b!6926923 d!2165526))

(declare-fun d!2165528 () Bool)

(assert (=> d!2165528 (= (isDefined!13404 lt!2472203) (not (isEmpty!38816 lt!2472203)))))

(declare-fun bs!1849214 () Bool)

(assert (= bs!1849214 d!2165528))

(declare-fun m!7635974 () Bool)

(assert (=> bs!1849214 m!7635974))

(assert (=> b!6926923 d!2165528))

(declare-fun d!2165530 () Bool)

(assert (=> d!2165530 (= (Exists!3934 lambda!394096) (choose!51582 lambda!394096))))

(declare-fun bs!1849215 () Bool)

(assert (= bs!1849215 d!2165530))

(declare-fun m!7635976 () Bool)

(assert (=> bs!1849215 m!7635976))

(assert (=> b!6926923 d!2165530))

(declare-fun bs!1849216 () Bool)

(declare-fun d!2165532 () Bool)

(assert (= bs!1849216 (and d!2165532 b!6926937)))

(declare-fun lambda!394154 () Int)

(assert (=> bs!1849216 (= (and (= (_1!37092 lt!2472208) lt!2472214) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394154 lambda!394097))))

(declare-fun bs!1849217 () Bool)

(assert (= bs!1849217 (and d!2165532 b!6927215)))

(assert (=> bs!1849217 (not (= lambda!394154 lambda!394136))))

(declare-fun bs!1849218 () Bool)

(assert (= bs!1849218 (and d!2165532 d!2165500)))

(assert (=> bs!1849218 (= (and (= (_1!37092 lt!2472208) lt!2472214) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394154 lambda!394146))))

(declare-fun bs!1849219 () Bool)

(assert (= bs!1849219 (and d!2165532 b!6926928)))

(assert (=> bs!1849219 (not (= lambda!394154 lambda!394094))))

(declare-fun bs!1849220 () Bool)

(assert (= bs!1849220 (and d!2165532 b!6927235)))

(assert (=> bs!1849220 (not (= lambda!394154 lambda!394138))))

(declare-fun bs!1849221 () Bool)

(assert (= bs!1849221 (and d!2165532 b!6926923)))

(assert (=> bs!1849221 (not (= lambda!394154 lambda!394096))))

(declare-fun bs!1849222 () Bool)

(assert (= bs!1849222 (and d!2165532 b!6927195)))

(assert (=> bs!1849222 (not (= lambda!394154 lambda!394134))))

(assert (=> bs!1849218 (not (= lambda!394154 lambda!394147))))

(assert (=> bs!1849219 (= (and (= (_1!37092 lt!2472208) s!14361) (= r1!6342 lt!2472224) (= r2!6280 r3!135)) (= lambda!394154 lambda!394093))))

(declare-fun bs!1849223 () Bool)

(assert (= bs!1849223 (and d!2165532 b!6926914)))

(assert (=> bs!1849223 (= (and (= (_1!37092 lt!2472208) s!14361) (= r2!6280 lt!2472222)) (= lambda!394154 lambda!394099))))

(declare-fun bs!1849224 () Bool)

(assert (= bs!1849224 (and d!2165532 d!2165506)))

(assert (=> bs!1849224 (= (and (= (_1!37092 lt!2472208) lt!2472214) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394154 lambda!394150))))

(declare-fun bs!1849225 () Bool)

(assert (= bs!1849225 (and d!2165532 d!2165524)))

(assert (=> bs!1849225 (= lambda!394154 lambda!394153)))

(assert (=> bs!1849216 (not (= lambda!394154 lambda!394098))))

(declare-fun bs!1849226 () Bool)

(assert (= bs!1849226 (and d!2165532 b!6927186)))

(assert (=> bs!1849226 (not (= lambda!394154 lambda!394135))))

(declare-fun bs!1849227 () Bool)

(assert (= bs!1849227 (and d!2165532 b!6927226)))

(assert (=> bs!1849227 (not (= lambda!394154 lambda!394139))))

(assert (=> bs!1849221 (= lambda!394154 lambda!394095)))

(declare-fun bs!1849228 () Bool)

(assert (= bs!1849228 (and d!2165532 d!2165462)))

(assert (=> bs!1849228 (= (and (= (_1!37092 lt!2472208) s!14361) (= r2!6280 lt!2472222)) (= lambda!394154 lambda!394129))))

(declare-fun bs!1849229 () Bool)

(assert (= bs!1849229 (and d!2165532 b!6927206)))

(assert (=> bs!1849229 (not (= lambda!394154 lambda!394137))))

(assert (=> d!2165532 true))

(assert (=> d!2165532 true))

(assert (=> d!2165532 true))

(declare-fun lambda!394155 () Int)

(assert (=> bs!1849216 (not (= lambda!394155 lambda!394097))))

(assert (=> bs!1849217 (not (= lambda!394155 lambda!394136))))

(assert (=> bs!1849218 (not (= lambda!394155 lambda!394146))))

(declare-fun bs!1849230 () Bool)

(assert (= bs!1849230 d!2165532))

(assert (=> bs!1849230 (not (= lambda!394155 lambda!394154))))

(assert (=> bs!1849219 (= (and (= (_1!37092 lt!2472208) s!14361) (= r1!6342 lt!2472224) (= r2!6280 r3!135)) (= lambda!394155 lambda!394094))))

(assert (=> bs!1849220 (not (= lambda!394155 lambda!394138))))

(assert (=> bs!1849221 (= lambda!394155 lambda!394096)))

(assert (=> bs!1849222 (not (= lambda!394155 lambda!394134))))

(assert (=> bs!1849218 (= (and (= (_1!37092 lt!2472208) lt!2472214) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394155 lambda!394147))))

(assert (=> bs!1849219 (not (= lambda!394155 lambda!394093))))

(assert (=> bs!1849223 (not (= lambda!394155 lambda!394099))))

(assert (=> bs!1849224 (not (= lambda!394155 lambda!394150))))

(assert (=> bs!1849225 (not (= lambda!394155 lambda!394153))))

(assert (=> bs!1849216 (= (and (= (_1!37092 lt!2472208) lt!2472214) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!394155 lambda!394098))))

(assert (=> bs!1849226 (= (and (= (_1!37092 lt!2472208) (_1!37092 lt!2472219)) (= r1!6342 (regOne!34376 r1!6342)) (= r2!6280 (regTwo!34376 r1!6342))) (= lambda!394155 lambda!394135))))

(assert (=> bs!1849227 (= (and (= (_1!37092 lt!2472208) lt!2472214) (= r1!6342 (regOne!34376 lt!2472222)) (= r2!6280 (regTwo!34376 lt!2472222))) (= lambda!394155 lambda!394139))))

(assert (=> bs!1849221 (not (= lambda!394155 lambda!394095))))

(assert (=> bs!1849228 (not (= lambda!394155 lambda!394129))))

(assert (=> bs!1849229 (= (and (= (_1!37092 lt!2472208) (_2!37092 lt!2472219)) (= r1!6342 (regOne!34376 r2!6280)) (= r2!6280 (regTwo!34376 r2!6280))) (= lambda!394155 lambda!394137))))

(assert (=> d!2165532 true))

(assert (=> d!2165532 true))

(assert (=> d!2165532 true))

(assert (=> d!2165532 (= (Exists!3934 lambda!394154) (Exists!3934 lambda!394155))))

(declare-fun lt!2472376 () Unit!160588)

(assert (=> d!2165532 (= lt!2472376 (choose!51586 r1!6342 r2!6280 (_1!37092 lt!2472208)))))

(assert (=> d!2165532 (validRegex!8638 r1!6342)))

(assert (=> d!2165532 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2401 r1!6342 r2!6280 (_1!37092 lt!2472208)) lt!2472376)))

(declare-fun m!7635978 () Bool)

(assert (=> bs!1849230 m!7635978))

(declare-fun m!7635980 () Bool)

(assert (=> bs!1849230 m!7635980))

(declare-fun m!7635982 () Bool)

(assert (=> bs!1849230 m!7635982))

(assert (=> bs!1849230 m!7635564))

(assert (=> b!6926923 d!2165532))

(declare-fun b!6927351 () Bool)

(declare-fun res!2825206 () Bool)

(declare-fun e!4168702 () Bool)

(assert (=> b!6927351 (=> (not res!2825206) (not e!4168702))))

(declare-fun lt!2472379 () Option!16701)

(assert (=> b!6927351 (= res!2825206 (matchR!9071 r1!6342 (_1!37092 (get!23339 lt!2472379))))))

(declare-fun b!6927352 () Bool)

(declare-fun e!4168703 () Option!16701)

(declare-fun e!4168700 () Option!16701)

(assert (=> b!6927352 (= e!4168703 e!4168700)))

(declare-fun c!1285834 () Bool)

(assert (=> b!6927352 (= c!1285834 (is-Nil!66561 (_1!37092 lt!2472208)))))

(declare-fun b!6927353 () Bool)

(declare-fun lt!2472381 () Unit!160588)

(declare-fun lt!2472380 () Unit!160588)

(assert (=> b!6927353 (= lt!2472381 lt!2472380)))

(assert (=> b!6927353 (= (++!14975 (++!14975 Nil!66561 (Cons!66561 (h!73009 (_1!37092 lt!2472208)) Nil!66561)) (t!380428 (_1!37092 lt!2472208))) (_1!37092 lt!2472208))))

(assert (=> b!6927353 (= lt!2472380 (lemmaMoveElementToOtherListKeepsConcatEq!2836 Nil!66561 (h!73009 (_1!37092 lt!2472208)) (t!380428 (_1!37092 lt!2472208)) (_1!37092 lt!2472208)))))

(assert (=> b!6927353 (= e!4168700 (findConcatSeparation!3115 r1!6342 r2!6280 (++!14975 Nil!66561 (Cons!66561 (h!73009 (_1!37092 lt!2472208)) Nil!66561)) (t!380428 (_1!37092 lt!2472208)) (_1!37092 lt!2472208)))))

(declare-fun b!6927354 () Bool)

(assert (=> b!6927354 (= e!4168703 (Some!16700 (tuple2!67579 Nil!66561 (_1!37092 lt!2472208))))))

(declare-fun b!6927355 () Bool)

(assert (=> b!6927355 (= e!4168702 (= (++!14975 (_1!37092 (get!23339 lt!2472379)) (_2!37092 (get!23339 lt!2472379))) (_1!37092 lt!2472208)))))

(declare-fun b!6927356 () Bool)

(declare-fun e!4168699 () Bool)

(assert (=> b!6927356 (= e!4168699 (matchR!9071 r2!6280 (_1!37092 lt!2472208)))))

(declare-fun b!6927357 () Bool)

(declare-fun res!2825205 () Bool)

(assert (=> b!6927357 (=> (not res!2825205) (not e!4168702))))

(assert (=> b!6927357 (= res!2825205 (matchR!9071 r2!6280 (_2!37092 (get!23339 lt!2472379))))))

(declare-fun b!6927358 () Bool)

(assert (=> b!6927358 (= e!4168700 None!16700)))

(declare-fun b!6927350 () Bool)

(declare-fun e!4168701 () Bool)

(assert (=> b!6927350 (= e!4168701 (not (isDefined!13404 lt!2472379)))))

(declare-fun d!2165534 () Bool)

(assert (=> d!2165534 e!4168701))

(declare-fun res!2825207 () Bool)

(assert (=> d!2165534 (=> res!2825207 e!4168701)))

(assert (=> d!2165534 (= res!2825207 e!4168702)))

(declare-fun res!2825204 () Bool)

(assert (=> d!2165534 (=> (not res!2825204) (not e!4168702))))

(assert (=> d!2165534 (= res!2825204 (isDefined!13404 lt!2472379))))

(assert (=> d!2165534 (= lt!2472379 e!4168703)))

(declare-fun c!1285833 () Bool)

(assert (=> d!2165534 (= c!1285833 e!4168699)))

(declare-fun res!2825203 () Bool)

(assert (=> d!2165534 (=> (not res!2825203) (not e!4168699))))

(assert (=> d!2165534 (= res!2825203 (matchR!9071 r1!6342 Nil!66561))))

(assert (=> d!2165534 (validRegex!8638 r1!6342)))

(assert (=> d!2165534 (= (findConcatSeparation!3115 r1!6342 r2!6280 Nil!66561 (_1!37092 lt!2472208) (_1!37092 lt!2472208)) lt!2472379)))

(assert (= (and d!2165534 res!2825203) b!6927356))

(assert (= (and d!2165534 c!1285833) b!6927354))

(assert (= (and d!2165534 (not c!1285833)) b!6927352))

(assert (= (and b!6927352 c!1285834) b!6927358))

(assert (= (and b!6927352 (not c!1285834)) b!6927353))

(assert (= (and d!2165534 res!2825204) b!6927351))

(assert (= (and b!6927351 res!2825206) b!6927357))

(assert (= (and b!6927357 res!2825205) b!6927355))

(assert (= (and d!2165534 (not res!2825207)) b!6927350))

(declare-fun m!7635984 () Bool)

(assert (=> b!6927351 m!7635984))

(declare-fun m!7635986 () Bool)

(assert (=> b!6927351 m!7635986))

(declare-fun m!7635988 () Bool)

(assert (=> b!6927356 m!7635988))

(declare-fun m!7635990 () Bool)

(assert (=> b!6927353 m!7635990))

(assert (=> b!6927353 m!7635990))

(declare-fun m!7635992 () Bool)

(assert (=> b!6927353 m!7635992))

(declare-fun m!7635994 () Bool)

(assert (=> b!6927353 m!7635994))

(assert (=> b!6927353 m!7635990))

(declare-fun m!7635996 () Bool)

(assert (=> b!6927353 m!7635996))

(assert (=> b!6927357 m!7635984))

(declare-fun m!7635998 () Bool)

(assert (=> b!6927357 m!7635998))

(assert (=> b!6927355 m!7635984))

(declare-fun m!7636000 () Bool)

(assert (=> b!6927355 m!7636000))

(declare-fun m!7636002 () Bool)

(assert (=> d!2165534 m!7636002))

(assert (=> d!2165534 m!7635780))

(assert (=> d!2165534 m!7635564))

(assert (=> b!6927350 m!7636002))

(assert (=> b!6926923 d!2165534))

(declare-fun b!6927359 () Bool)

(declare-fun e!4168704 () Bool)

(declare-fun lt!2472382 () Bool)

(assert (=> b!6927359 (= e!4168704 (not lt!2472382))))

(declare-fun b!6927360 () Bool)

(declare-fun e!4168706 () Bool)

(assert (=> b!6927360 (= e!4168706 (nullable!6757 r2!6280))))

(declare-fun b!6927361 () Bool)

(declare-fun e!4168705 () Bool)

(assert (=> b!6927361 (= e!4168705 (= (head!13885 (_2!37092 lt!2472219)) (c!1285766 r2!6280)))))

(declare-fun b!6927362 () Bool)

(declare-fun res!2825211 () Bool)

(declare-fun e!4168709 () Bool)

(assert (=> b!6927362 (=> res!2825211 e!4168709)))

(assert (=> b!6927362 (= res!2825211 (not (isEmpty!38817 (tail!12937 (_2!37092 lt!2472219)))))))

(declare-fun b!6927363 () Bool)

(declare-fun res!2825214 () Bool)

(declare-fun e!4168710 () Bool)

(assert (=> b!6927363 (=> res!2825214 e!4168710)))

(assert (=> b!6927363 (= res!2825214 e!4168705)))

(declare-fun res!2825208 () Bool)

(assert (=> b!6927363 (=> (not res!2825208) (not e!4168705))))

(assert (=> b!6927363 (= res!2825208 lt!2472382)))

(declare-fun b!6927364 () Bool)

(assert (=> b!6927364 (= e!4168706 (matchR!9071 (derivativeStep!5432 r2!6280 (head!13885 (_2!37092 lt!2472219))) (tail!12937 (_2!37092 lt!2472219))))))

(declare-fun b!6927365 () Bool)

(declare-fun res!2825210 () Bool)

(assert (=> b!6927365 (=> (not res!2825210) (not e!4168705))))

(assert (=> b!6927365 (= res!2825210 (isEmpty!38817 (tail!12937 (_2!37092 lt!2472219))))))

(declare-fun b!6927366 () Bool)

(declare-fun e!4168708 () Bool)

(assert (=> b!6927366 (= e!4168708 e!4168709)))

(declare-fun res!2825209 () Bool)

(assert (=> b!6927366 (=> res!2825209 e!4168709)))

(declare-fun call!629538 () Bool)

(assert (=> b!6927366 (= res!2825209 call!629538)))

(declare-fun b!6927367 () Bool)

(declare-fun res!2825215 () Bool)

(assert (=> b!6927367 (=> res!2825215 e!4168710)))

(assert (=> b!6927367 (= res!2825215 (not (is-ElementMatch!16932 r2!6280)))))

(assert (=> b!6927367 (= e!4168704 e!4168710)))

(declare-fun d!2165536 () Bool)

(declare-fun e!4168707 () Bool)

(assert (=> d!2165536 e!4168707))

(declare-fun c!1285835 () Bool)

(assert (=> d!2165536 (= c!1285835 (is-EmptyExpr!16932 r2!6280))))

(assert (=> d!2165536 (= lt!2472382 e!4168706)))

(declare-fun c!1285836 () Bool)

(assert (=> d!2165536 (= c!1285836 (isEmpty!38817 (_2!37092 lt!2472219)))))

(assert (=> d!2165536 (validRegex!8638 r2!6280)))

(assert (=> d!2165536 (= (matchR!9071 r2!6280 (_2!37092 lt!2472219)) lt!2472382)))

(declare-fun b!6927368 () Bool)

(assert (=> b!6927368 (= e!4168710 e!4168708)))

(declare-fun res!2825212 () Bool)

(assert (=> b!6927368 (=> (not res!2825212) (not e!4168708))))

(assert (=> b!6927368 (= res!2825212 (not lt!2472382))))

(declare-fun b!6927369 () Bool)

(declare-fun res!2825213 () Bool)

(assert (=> b!6927369 (=> (not res!2825213) (not e!4168705))))

(assert (=> b!6927369 (= res!2825213 (not call!629538))))

(declare-fun bm!629533 () Bool)

(assert (=> bm!629533 (= call!629538 (isEmpty!38817 (_2!37092 lt!2472219)))))

(declare-fun b!6927370 () Bool)

(assert (=> b!6927370 (= e!4168707 (= lt!2472382 call!629538))))

(declare-fun b!6927371 () Bool)

(assert (=> b!6927371 (= e!4168709 (not (= (head!13885 (_2!37092 lt!2472219)) (c!1285766 r2!6280))))))

(declare-fun b!6927372 () Bool)

(assert (=> b!6927372 (= e!4168707 e!4168704)))

(declare-fun c!1285837 () Bool)

(assert (=> b!6927372 (= c!1285837 (is-EmptyLang!16932 r2!6280))))

(assert (= (and d!2165536 c!1285836) b!6927360))

(assert (= (and d!2165536 (not c!1285836)) b!6927364))

(assert (= (and d!2165536 c!1285835) b!6927370))

(assert (= (and d!2165536 (not c!1285835)) b!6927372))

(assert (= (and b!6927372 c!1285837) b!6927359))

(assert (= (and b!6927372 (not c!1285837)) b!6927367))

(assert (= (and b!6927367 (not res!2825215)) b!6927363))

(assert (= (and b!6927363 res!2825208) b!6927369))

(assert (= (and b!6927369 res!2825213) b!6927365))

(assert (= (and b!6927365 res!2825210) b!6927361))

(assert (= (and b!6927363 (not res!2825214)) b!6927368))

(assert (= (and b!6927368 res!2825212) b!6927366))

(assert (= (and b!6927366 (not res!2825209)) b!6927362))

(assert (= (and b!6927362 (not res!2825211)) b!6927371))

(assert (= (or b!6927370 b!6927366 b!6927369) bm!629533))

(declare-fun m!7636004 () Bool)

(assert (=> b!6927362 m!7636004))

(assert (=> b!6927362 m!7636004))

(declare-fun m!7636006 () Bool)

(assert (=> b!6927362 m!7636006))

(declare-fun m!7636008 () Bool)

(assert (=> b!6927371 m!7636008))

(assert (=> b!6927364 m!7636008))

(assert (=> b!6927364 m!7636008))

(declare-fun m!7636010 () Bool)

(assert (=> b!6927364 m!7636010))

(assert (=> b!6927364 m!7636004))

(assert (=> b!6927364 m!7636010))

(assert (=> b!6927364 m!7636004))

(declare-fun m!7636012 () Bool)

(assert (=> b!6927364 m!7636012))

(assert (=> b!6927365 m!7636004))

(assert (=> b!6927365 m!7636004))

(assert (=> b!6927365 m!7636006))

(assert (=> b!6927361 m!7636008))

(assert (=> d!2165536 m!7635864))

(assert (=> d!2165536 m!7635588))

(assert (=> bm!629533 m!7635864))

(declare-fun m!7636014 () Bool)

(assert (=> b!6927360 m!7636014))

(assert (=> b!6926922 d!2165536))

(declare-fun lt!2472383 () List!66685)

(declare-fun e!4168711 () Bool)

(declare-fun b!6927376 () Bool)

(assert (=> b!6927376 (= e!4168711 (or (not (= lt!2472214 Nil!66561)) (= lt!2472383 (_1!37092 lt!2472219))))))

(declare-fun b!6927375 () Bool)

(declare-fun res!2825217 () Bool)

(assert (=> b!6927375 (=> (not res!2825217) (not e!4168711))))

(assert (=> b!6927375 (= res!2825217 (= (size!40782 lt!2472383) (+ (size!40782 (_1!37092 lt!2472219)) (size!40782 lt!2472214))))))

(declare-fun b!6927374 () Bool)

(declare-fun e!4168712 () List!66685)

(assert (=> b!6927374 (= e!4168712 (Cons!66561 (h!73009 (_1!37092 lt!2472219)) (++!14975 (t!380428 (_1!37092 lt!2472219)) lt!2472214)))))

(declare-fun b!6927373 () Bool)

(assert (=> b!6927373 (= e!4168712 lt!2472214)))

(declare-fun d!2165538 () Bool)

(assert (=> d!2165538 e!4168711))

(declare-fun res!2825216 () Bool)

(assert (=> d!2165538 (=> (not res!2825216) (not e!4168711))))

(assert (=> d!2165538 (= res!2825216 (= (content!13085 lt!2472383) (set.union (content!13085 (_1!37092 lt!2472219)) (content!13085 lt!2472214))))))

(assert (=> d!2165538 (= lt!2472383 e!4168712)))

(declare-fun c!1285838 () Bool)

(assert (=> d!2165538 (= c!1285838 (is-Nil!66561 (_1!37092 lt!2472219)))))

(assert (=> d!2165538 (= (++!14975 (_1!37092 lt!2472219) lt!2472214) lt!2472383)))

(assert (= (and d!2165538 c!1285838) b!6927373))

(assert (= (and d!2165538 (not c!1285838)) b!6927374))

(assert (= (and d!2165538 res!2825216) b!6927375))

(assert (= (and b!6927375 res!2825217) b!6927376))

(declare-fun m!7636016 () Bool)

(assert (=> b!6927375 m!7636016))

(assert (=> b!6927375 m!7635816))

(declare-fun m!7636018 () Bool)

(assert (=> b!6927375 m!7636018))

(declare-fun m!7636020 () Bool)

(assert (=> b!6927374 m!7636020))

(declare-fun m!7636022 () Bool)

(assert (=> d!2165538 m!7636022))

(assert (=> d!2165538 m!7635824))

(declare-fun m!7636024 () Bool)

(assert (=> d!2165538 m!7636024))

(assert (=> b!6926931 d!2165538))

(declare-fun d!2165540 () Bool)

(assert (=> d!2165540 (= (++!14975 (++!14975 (_1!37092 lt!2472219) (_2!37092 lt!2472219)) (_2!37092 lt!2472208)) (++!14975 (_1!37092 lt!2472219) (++!14975 (_2!37092 lt!2472219) (_2!37092 lt!2472208))))))

(declare-fun lt!2472386 () Unit!160588)

(declare-fun choose!51592 (List!66685 List!66685 List!66685) Unit!160588)

(assert (=> d!2165540 (= lt!2472386 (choose!51592 (_1!37092 lt!2472219) (_2!37092 lt!2472219) (_2!37092 lt!2472208)))))

(assert (=> d!2165540 (= (lemmaConcatAssociativity!3023 (_1!37092 lt!2472219) (_2!37092 lt!2472219) (_2!37092 lt!2472208)) lt!2472386)))

(declare-fun bs!1849231 () Bool)

(assert (= bs!1849231 d!2165540))

(assert (=> bs!1849231 m!7635580))

(declare-fun m!7636026 () Bool)

(assert (=> bs!1849231 m!7636026))

(assert (=> bs!1849231 m!7635580))

(declare-fun m!7636028 () Bool)

(assert (=> bs!1849231 m!7636028))

(assert (=> bs!1849231 m!7635618))

(assert (=> bs!1849231 m!7635620))

(assert (=> bs!1849231 m!7635618))

(assert (=> b!6926931 d!2165540))

(declare-fun bs!1849232 () Bool)

(declare-fun b!6927386 () Bool)

(assert (= bs!1849232 (and b!6927386 b!6926937)))

(declare-fun lambda!394156 () Int)

(assert (=> bs!1849232 (not (= lambda!394156 lambda!394097))))

(declare-fun bs!1849233 () Bool)

(assert (= bs!1849233 (and b!6927386 b!6927215)))

(assert (=> bs!1849233 (= (and (= s!14361 (_2!37092 lt!2472219)) (= (reg!17261 lt!2472229) (reg!17261 r2!6280)) (= lt!2472229 r2!6280)) (= lambda!394156 lambda!394136))))

(declare-fun bs!1849234 () Bool)

(assert (= bs!1849234 (and b!6927386 d!2165500)))

(assert (=> bs!1849234 (not (= lambda!394156 lambda!394146))))

(declare-fun bs!1849235 () Bool)

(assert (= bs!1849235 (and b!6927386 d!2165532)))

(assert (=> bs!1849235 (not (= lambda!394156 lambda!394154))))

(declare-fun bs!1849236 () Bool)

(assert (= bs!1849236 (and b!6927386 b!6926928)))

(assert (=> bs!1849236 (not (= lambda!394156 lambda!394094))))

(declare-fun bs!1849237 () Bool)

(assert (= bs!1849237 (and b!6927386 b!6927235)))

(assert (=> bs!1849237 (= (and (= s!14361 lt!2472214) (= (reg!17261 lt!2472229) (reg!17261 lt!2472222)) (= lt!2472229 lt!2472222)) (= lambda!394156 lambda!394138))))

(declare-fun bs!1849238 () Bool)

(assert (= bs!1849238 (and b!6927386 b!6926923)))

(assert (=> bs!1849238 (not (= lambda!394156 lambda!394096))))

(declare-fun bs!1849239 () Bool)

(assert (= bs!1849239 (and b!6927386 b!6927195)))

(assert (=> bs!1849239 (= (and (= s!14361 (_1!37092 lt!2472219)) (= (reg!17261 lt!2472229) (reg!17261 r1!6342)) (= lt!2472229 r1!6342)) (= lambda!394156 lambda!394134))))

(assert (=> bs!1849235 (not (= lambda!394156 lambda!394155))))

(assert (=> bs!1849234 (not (= lambda!394156 lambda!394147))))

(assert (=> bs!1849236 (not (= lambda!394156 lambda!394093))))

(declare-fun bs!1849240 () Bool)

(assert (= bs!1849240 (and b!6927386 b!6926914)))

(assert (=> bs!1849240 (not (= lambda!394156 lambda!394099))))

(declare-fun bs!1849241 () Bool)

(assert (= bs!1849241 (and b!6927386 d!2165506)))

(assert (=> bs!1849241 (not (= lambda!394156 lambda!394150))))

(declare-fun bs!1849242 () Bool)

(assert (= bs!1849242 (and b!6927386 d!2165524)))

(assert (=> bs!1849242 (not (= lambda!394156 lambda!394153))))

(assert (=> bs!1849232 (not (= lambda!394156 lambda!394098))))

(declare-fun bs!1849243 () Bool)

(assert (= bs!1849243 (and b!6927386 b!6927186)))

(assert (=> bs!1849243 (not (= lambda!394156 lambda!394135))))

(declare-fun bs!1849244 () Bool)

(assert (= bs!1849244 (and b!6927386 b!6927226)))

(assert (=> bs!1849244 (not (= lambda!394156 lambda!394139))))

(assert (=> bs!1849238 (not (= lambda!394156 lambda!394095))))

(declare-fun bs!1849245 () Bool)

(assert (= bs!1849245 (and b!6927386 d!2165462)))

(assert (=> bs!1849245 (not (= lambda!394156 lambda!394129))))

(declare-fun bs!1849246 () Bool)

(assert (= bs!1849246 (and b!6927386 b!6927206)))

(assert (=> bs!1849246 (not (= lambda!394156 lambda!394137))))

(assert (=> b!6927386 true))

(assert (=> b!6927386 true))

(declare-fun bs!1849247 () Bool)

(declare-fun b!6927377 () Bool)

(assert (= bs!1849247 (and b!6927377 b!6926937)))

(declare-fun lambda!394157 () Int)

(assert (=> bs!1849247 (not (= lambda!394157 lambda!394097))))

(declare-fun bs!1849248 () Bool)

(assert (= bs!1849248 (and b!6927377 b!6927215)))

(assert (=> bs!1849248 (not (= lambda!394157 lambda!394136))))

(declare-fun bs!1849249 () Bool)

(assert (= bs!1849249 (and b!6927377 d!2165500)))

(assert (=> bs!1849249 (not (= lambda!394157 lambda!394146))))

(declare-fun bs!1849250 () Bool)

(assert (= bs!1849250 (and b!6927377 d!2165532)))

(assert (=> bs!1849250 (not (= lambda!394157 lambda!394154))))

(declare-fun bs!1849251 () Bool)

(assert (= bs!1849251 (and b!6927377 b!6926928)))

(assert (=> bs!1849251 (= (and (= (regOne!34376 lt!2472229) lt!2472224) (= (regTwo!34376 lt!2472229) r3!135)) (= lambda!394157 lambda!394094))))

(declare-fun bs!1849252 () Bool)

(assert (= bs!1849252 (and b!6927377 b!6927235)))

(assert (=> bs!1849252 (not (= lambda!394157 lambda!394138))))

(declare-fun bs!1849253 () Bool)

(assert (= bs!1849253 (and b!6927377 b!6926923)))

(assert (=> bs!1849253 (= (and (= s!14361 (_1!37092 lt!2472208)) (= (regOne!34376 lt!2472229) r1!6342) (= (regTwo!34376 lt!2472229) r2!6280)) (= lambda!394157 lambda!394096))))

(declare-fun bs!1849254 () Bool)

(assert (= bs!1849254 (and b!6927377 b!6927195)))

(assert (=> bs!1849254 (not (= lambda!394157 lambda!394134))))

(assert (=> bs!1849250 (= (and (= s!14361 (_1!37092 lt!2472208)) (= (regOne!34376 lt!2472229) r1!6342) (= (regTwo!34376 lt!2472229) r2!6280)) (= lambda!394157 lambda!394155))))

(assert (=> bs!1849249 (= (and (= s!14361 lt!2472214) (= (regOne!34376 lt!2472229) r2!6280) (= (regTwo!34376 lt!2472229) r3!135)) (= lambda!394157 lambda!394147))))

(declare-fun bs!1849255 () Bool)

(assert (= bs!1849255 (and b!6927377 b!6927386)))

(assert (=> bs!1849255 (not (= lambda!394157 lambda!394156))))

(assert (=> bs!1849251 (not (= lambda!394157 lambda!394093))))

(declare-fun bs!1849256 () Bool)

(assert (= bs!1849256 (and b!6927377 b!6926914)))

(assert (=> bs!1849256 (not (= lambda!394157 lambda!394099))))

(declare-fun bs!1849257 () Bool)

(assert (= bs!1849257 (and b!6927377 d!2165506)))

(assert (=> bs!1849257 (not (= lambda!394157 lambda!394150))))

(declare-fun bs!1849258 () Bool)

(assert (= bs!1849258 (and b!6927377 d!2165524)))

(assert (=> bs!1849258 (not (= lambda!394157 lambda!394153))))

(assert (=> bs!1849247 (= (and (= s!14361 lt!2472214) (= (regOne!34376 lt!2472229) r2!6280) (= (regTwo!34376 lt!2472229) r3!135)) (= lambda!394157 lambda!394098))))

(declare-fun bs!1849259 () Bool)

(assert (= bs!1849259 (and b!6927377 b!6927186)))

(assert (=> bs!1849259 (= (and (= s!14361 (_1!37092 lt!2472219)) (= (regOne!34376 lt!2472229) (regOne!34376 r1!6342)) (= (regTwo!34376 lt!2472229) (regTwo!34376 r1!6342))) (= lambda!394157 lambda!394135))))

(declare-fun bs!1849260 () Bool)

(assert (= bs!1849260 (and b!6927377 b!6927226)))

(assert (=> bs!1849260 (= (and (= s!14361 lt!2472214) (= (regOne!34376 lt!2472229) (regOne!34376 lt!2472222)) (= (regTwo!34376 lt!2472229) (regTwo!34376 lt!2472222))) (= lambda!394157 lambda!394139))))

(assert (=> bs!1849253 (not (= lambda!394157 lambda!394095))))

(declare-fun bs!1849261 () Bool)

(assert (= bs!1849261 (and b!6927377 d!2165462)))

(assert (=> bs!1849261 (not (= lambda!394157 lambda!394129))))

(declare-fun bs!1849262 () Bool)

(assert (= bs!1849262 (and b!6927377 b!6927206)))

(assert (=> bs!1849262 (= (and (= s!14361 (_2!37092 lt!2472219)) (= (regOne!34376 lt!2472229) (regOne!34376 r2!6280)) (= (regTwo!34376 lt!2472229) (regTwo!34376 r2!6280))) (= lambda!394157 lambda!394137))))

(assert (=> b!6927377 true))

(assert (=> b!6927377 true))

(declare-fun e!4168713 () Bool)

(declare-fun call!629539 () Bool)

(assert (=> b!6927377 (= e!4168713 call!629539)))

(declare-fun b!6927378 () Bool)

(declare-fun e!4168715 () Bool)

(assert (=> b!6927378 (= e!4168715 e!4168713)))

(declare-fun c!1285841 () Bool)

(assert (=> b!6927378 (= c!1285841 (is-Star!16932 lt!2472229))))

(declare-fun bm!629534 () Bool)

(declare-fun call!629540 () Bool)

(assert (=> bm!629534 (= call!629540 (isEmpty!38817 s!14361))))

(declare-fun b!6927379 () Bool)

(declare-fun e!4168716 () Bool)

(declare-fun e!4168718 () Bool)

(assert (=> b!6927379 (= e!4168716 e!4168718)))

(declare-fun res!2825219 () Bool)

(assert (=> b!6927379 (= res!2825219 (not (is-EmptyLang!16932 lt!2472229)))))

(assert (=> b!6927379 (=> (not res!2825219) (not e!4168718))))

(declare-fun b!6927380 () Bool)

(declare-fun e!4168719 () Bool)

(assert (=> b!6927380 (= e!4168719 (matchRSpec!3989 (regTwo!34377 lt!2472229) s!14361))))

(declare-fun b!6927381 () Bool)

(declare-fun e!4168717 () Bool)

(assert (=> b!6927381 (= e!4168717 (= s!14361 (Cons!66561 (c!1285766 lt!2472229) Nil!66561)))))

(declare-fun b!6927382 () Bool)

(declare-fun res!2825220 () Bool)

(declare-fun e!4168714 () Bool)

(assert (=> b!6927382 (=> res!2825220 e!4168714)))

(assert (=> b!6927382 (= res!2825220 call!629540)))

(assert (=> b!6927382 (= e!4168713 e!4168714)))

(declare-fun b!6927383 () Bool)

(declare-fun c!1285842 () Bool)

(assert (=> b!6927383 (= c!1285842 (is-Union!16932 lt!2472229))))

(assert (=> b!6927383 (= e!4168717 e!4168715)))

(declare-fun b!6927384 () Bool)

(declare-fun c!1285839 () Bool)

(assert (=> b!6927384 (= c!1285839 (is-ElementMatch!16932 lt!2472229))))

(assert (=> b!6927384 (= e!4168718 e!4168717)))

(declare-fun bm!629535 () Bool)

(assert (=> bm!629535 (= call!629539 (Exists!3934 (ite c!1285841 lambda!394156 lambda!394157)))))

(declare-fun b!6927385 () Bool)

(assert (=> b!6927385 (= e!4168716 call!629540)))

(assert (=> b!6927386 (= e!4168714 call!629539)))

(declare-fun b!6927387 () Bool)

(assert (=> b!6927387 (= e!4168715 e!4168719)))

(declare-fun res!2825218 () Bool)

(assert (=> b!6927387 (= res!2825218 (matchRSpec!3989 (regOne!34377 lt!2472229) s!14361))))

(assert (=> b!6927387 (=> res!2825218 e!4168719)))

(declare-fun d!2165542 () Bool)

(declare-fun c!1285840 () Bool)

(assert (=> d!2165542 (= c!1285840 (is-EmptyExpr!16932 lt!2472229))))

(assert (=> d!2165542 (= (matchRSpec!3989 lt!2472229 s!14361) e!4168716)))

(assert (= (and d!2165542 c!1285840) b!6927385))

(assert (= (and d!2165542 (not c!1285840)) b!6927379))

(assert (= (and b!6927379 res!2825219) b!6927384))

(assert (= (and b!6927384 c!1285839) b!6927381))

(assert (= (and b!6927384 (not c!1285839)) b!6927383))

(assert (= (and b!6927383 c!1285842) b!6927387))

(assert (= (and b!6927383 (not c!1285842)) b!6927378))

(assert (= (and b!6927387 (not res!2825218)) b!6927380))

(assert (= (and b!6927378 c!1285841) b!6927382))

(assert (= (and b!6927378 (not c!1285841)) b!6927377))

(assert (= (and b!6927382 (not res!2825220)) b!6927386))

(assert (= (or b!6927386 b!6927377) bm!629535))

(assert (= (or b!6927385 b!6927382) bm!629534))

(declare-fun m!7636044 () Bool)

(assert (=> bm!629534 m!7636044))

(declare-fun m!7636046 () Bool)

(assert (=> b!6927380 m!7636046))

(declare-fun m!7636048 () Bool)

(assert (=> bm!629535 m!7636048))

(declare-fun m!7636050 () Bool)

(assert (=> b!6927387 m!7636050))

(assert (=> b!6926930 d!2165542))

(declare-fun bs!1849263 () Bool)

(declare-fun b!6927411 () Bool)

(assert (= bs!1849263 (and b!6927411 b!6926937)))

(declare-fun lambda!394158 () Int)

(assert (=> bs!1849263 (not (= lambda!394158 lambda!394097))))

(declare-fun bs!1849264 () Bool)

(assert (= bs!1849264 (and b!6927411 b!6927215)))

(assert (=> bs!1849264 (= (and (= s!14361 (_2!37092 lt!2472219)) (= (reg!17261 lt!2472212) (reg!17261 r2!6280)) (= lt!2472212 r2!6280)) (= lambda!394158 lambda!394136))))

(declare-fun bs!1849265 () Bool)

(assert (= bs!1849265 (and b!6927411 d!2165500)))

(assert (=> bs!1849265 (not (= lambda!394158 lambda!394146))))

(declare-fun bs!1849266 () Bool)

(assert (= bs!1849266 (and b!6927411 d!2165532)))

(assert (=> bs!1849266 (not (= lambda!394158 lambda!394154))))

(declare-fun bs!1849267 () Bool)

(assert (= bs!1849267 (and b!6927411 b!6926928)))

(assert (=> bs!1849267 (not (= lambda!394158 lambda!394094))))

(declare-fun bs!1849268 () Bool)

(assert (= bs!1849268 (and b!6927411 b!6927235)))

(assert (=> bs!1849268 (= (and (= s!14361 lt!2472214) (= (reg!17261 lt!2472212) (reg!17261 lt!2472222)) (= lt!2472212 lt!2472222)) (= lambda!394158 lambda!394138))))

(declare-fun bs!1849269 () Bool)

(assert (= bs!1849269 (and b!6927411 b!6926923)))

(assert (=> bs!1849269 (not (= lambda!394158 lambda!394096))))

(assert (=> bs!1849266 (not (= lambda!394158 lambda!394155))))

(assert (=> bs!1849265 (not (= lambda!394158 lambda!394147))))

(declare-fun bs!1849270 () Bool)

(assert (= bs!1849270 (and b!6927411 b!6927386)))

(assert (=> bs!1849270 (= (and (= (reg!17261 lt!2472212) (reg!17261 lt!2472229)) (= lt!2472212 lt!2472229)) (= lambda!394158 lambda!394156))))

(assert (=> bs!1849267 (not (= lambda!394158 lambda!394093))))

(declare-fun bs!1849271 () Bool)

(assert (= bs!1849271 (and b!6927411 b!6926914)))

(assert (=> bs!1849271 (not (= lambda!394158 lambda!394099))))

(declare-fun bs!1849272 () Bool)

(assert (= bs!1849272 (and b!6927411 d!2165506)))

(assert (=> bs!1849272 (not (= lambda!394158 lambda!394150))))

(declare-fun bs!1849273 () Bool)

(assert (= bs!1849273 (and b!6927411 d!2165524)))

(assert (=> bs!1849273 (not (= lambda!394158 lambda!394153))))

(assert (=> bs!1849263 (not (= lambda!394158 lambda!394098))))

(declare-fun bs!1849274 () Bool)

(assert (= bs!1849274 (and b!6927411 b!6927186)))

(assert (=> bs!1849274 (not (= lambda!394158 lambda!394135))))

(declare-fun bs!1849275 () Bool)

(assert (= bs!1849275 (and b!6927411 b!6927226)))

(assert (=> bs!1849275 (not (= lambda!394158 lambda!394139))))

(assert (=> bs!1849269 (not (= lambda!394158 lambda!394095))))

(declare-fun bs!1849276 () Bool)

(assert (= bs!1849276 (and b!6927411 b!6927377)))

(assert (=> bs!1849276 (not (= lambda!394158 lambda!394157))))

(declare-fun bs!1849277 () Bool)

(assert (= bs!1849277 (and b!6927411 b!6927195)))

(assert (=> bs!1849277 (= (and (= s!14361 (_1!37092 lt!2472219)) (= (reg!17261 lt!2472212) (reg!17261 r1!6342)) (= lt!2472212 r1!6342)) (= lambda!394158 lambda!394134))))

(declare-fun bs!1849278 () Bool)

(assert (= bs!1849278 (and b!6927411 d!2165462)))

(assert (=> bs!1849278 (not (= lambda!394158 lambda!394129))))

(declare-fun bs!1849279 () Bool)

(assert (= bs!1849279 (and b!6927411 b!6927206)))

(assert (=> bs!1849279 (not (= lambda!394158 lambda!394137))))

(assert (=> b!6927411 true))

(assert (=> b!6927411 true))

(declare-fun bs!1849280 () Bool)

(declare-fun b!6927402 () Bool)

(assert (= bs!1849280 (and b!6927402 b!6926937)))

(declare-fun lambda!394159 () Int)

(assert (=> bs!1849280 (not (= lambda!394159 lambda!394097))))

(declare-fun bs!1849281 () Bool)

(assert (= bs!1849281 (and b!6927402 b!6927215)))

(assert (=> bs!1849281 (not (= lambda!394159 lambda!394136))))

(declare-fun bs!1849282 () Bool)

(assert (= bs!1849282 (and b!6927402 d!2165500)))

(assert (=> bs!1849282 (not (= lambda!394159 lambda!394146))))

(declare-fun bs!1849283 () Bool)

(assert (= bs!1849283 (and b!6927402 d!2165532)))

(assert (=> bs!1849283 (not (= lambda!394159 lambda!394154))))

(declare-fun bs!1849284 () Bool)

(assert (= bs!1849284 (and b!6927402 b!6926928)))

(assert (=> bs!1849284 (= (and (= (regOne!34376 lt!2472212) lt!2472224) (= (regTwo!34376 lt!2472212) r3!135)) (= lambda!394159 lambda!394094))))

(declare-fun bs!1849285 () Bool)

(assert (= bs!1849285 (and b!6927402 b!6927411)))

(assert (=> bs!1849285 (not (= lambda!394159 lambda!394158))))

(declare-fun bs!1849286 () Bool)

(assert (= bs!1849286 (and b!6927402 b!6927235)))

(assert (=> bs!1849286 (not (= lambda!394159 lambda!394138))))

(declare-fun bs!1849287 () Bool)

(assert (= bs!1849287 (and b!6927402 b!6926923)))

(assert (=> bs!1849287 (= (and (= s!14361 (_1!37092 lt!2472208)) (= (regOne!34376 lt!2472212) r1!6342) (= (regTwo!34376 lt!2472212) r2!6280)) (= lambda!394159 lambda!394096))))

(assert (=> bs!1849283 (= (and (= s!14361 (_1!37092 lt!2472208)) (= (regOne!34376 lt!2472212) r1!6342) (= (regTwo!34376 lt!2472212) r2!6280)) (= lambda!394159 lambda!394155))))

(assert (=> bs!1849282 (= (and (= s!14361 lt!2472214) (= (regOne!34376 lt!2472212) r2!6280) (= (regTwo!34376 lt!2472212) r3!135)) (= lambda!394159 lambda!394147))))

(declare-fun bs!1849288 () Bool)

(assert (= bs!1849288 (and b!6927402 b!6927386)))

(assert (=> bs!1849288 (not (= lambda!394159 lambda!394156))))

(assert (=> bs!1849284 (not (= lambda!394159 lambda!394093))))

(declare-fun bs!1849289 () Bool)

(assert (= bs!1849289 (and b!6927402 b!6926914)))

(assert (=> bs!1849289 (not (= lambda!394159 lambda!394099))))

(declare-fun bs!1849290 () Bool)

(assert (= bs!1849290 (and b!6927402 d!2165506)))

(assert (=> bs!1849290 (not (= lambda!394159 lambda!394150))))

(declare-fun bs!1849291 () Bool)

(assert (= bs!1849291 (and b!6927402 d!2165524)))

(assert (=> bs!1849291 (not (= lambda!394159 lambda!394153))))

(assert (=> bs!1849280 (= (and (= s!14361 lt!2472214) (= (regOne!34376 lt!2472212) r2!6280) (= (regTwo!34376 lt!2472212) r3!135)) (= lambda!394159 lambda!394098))))

(declare-fun bs!1849292 () Bool)

(assert (= bs!1849292 (and b!6927402 b!6927186)))

(assert (=> bs!1849292 (= (and (= s!14361 (_1!37092 lt!2472219)) (= (regOne!34376 lt!2472212) (regOne!34376 r1!6342)) (= (regTwo!34376 lt!2472212) (regTwo!34376 r1!6342))) (= lambda!394159 lambda!394135))))

(declare-fun bs!1849293 () Bool)

(assert (= bs!1849293 (and b!6927402 b!6927226)))

(assert (=> bs!1849293 (= (and (= s!14361 lt!2472214) (= (regOne!34376 lt!2472212) (regOne!34376 lt!2472222)) (= (regTwo!34376 lt!2472212) (regTwo!34376 lt!2472222))) (= lambda!394159 lambda!394139))))

(assert (=> bs!1849287 (not (= lambda!394159 lambda!394095))))

(declare-fun bs!1849294 () Bool)

(assert (= bs!1849294 (and b!6927402 b!6927377)))

(assert (=> bs!1849294 (= (and (= (regOne!34376 lt!2472212) (regOne!34376 lt!2472229)) (= (regTwo!34376 lt!2472212) (regTwo!34376 lt!2472229))) (= lambda!394159 lambda!394157))))

(declare-fun bs!1849295 () Bool)

(assert (= bs!1849295 (and b!6927402 b!6927195)))

(assert (=> bs!1849295 (not (= lambda!394159 lambda!394134))))

(declare-fun bs!1849296 () Bool)

(assert (= bs!1849296 (and b!6927402 d!2165462)))

(assert (=> bs!1849296 (not (= lambda!394159 lambda!394129))))

(declare-fun bs!1849297 () Bool)

(assert (= bs!1849297 (and b!6927402 b!6927206)))

(assert (=> bs!1849297 (= (and (= s!14361 (_2!37092 lt!2472219)) (= (regOne!34376 lt!2472212) (regOne!34376 r2!6280)) (= (regTwo!34376 lt!2472212) (regTwo!34376 r2!6280))) (= lambda!394159 lambda!394137))))

(assert (=> b!6927402 true))

(assert (=> b!6927402 true))

(declare-fun e!4168727 () Bool)

(declare-fun call!629542 () Bool)

(assert (=> b!6927402 (= e!4168727 call!629542)))

(declare-fun b!6927403 () Bool)

(declare-fun e!4168729 () Bool)

(assert (=> b!6927403 (= e!4168729 e!4168727)))

(declare-fun c!1285848 () Bool)

(assert (=> b!6927403 (= c!1285848 (is-Star!16932 lt!2472212))))

(declare-fun bm!629537 () Bool)

(declare-fun call!629543 () Bool)

(assert (=> bm!629537 (= call!629543 (isEmpty!38817 s!14361))))

(declare-fun b!6927404 () Bool)

(declare-fun e!4168730 () Bool)

(declare-fun e!4168732 () Bool)

(assert (=> b!6927404 (= e!4168730 e!4168732)))

(declare-fun res!2825230 () Bool)

(assert (=> b!6927404 (= res!2825230 (not (is-EmptyLang!16932 lt!2472212)))))

(assert (=> b!6927404 (=> (not res!2825230) (not e!4168732))))

(declare-fun b!6927405 () Bool)

(declare-fun e!4168733 () Bool)

(assert (=> b!6927405 (= e!4168733 (matchRSpec!3989 (regTwo!34377 lt!2472212) s!14361))))

(declare-fun b!6927406 () Bool)

(declare-fun e!4168731 () Bool)

(assert (=> b!6927406 (= e!4168731 (= s!14361 (Cons!66561 (c!1285766 lt!2472212) Nil!66561)))))

(declare-fun b!6927407 () Bool)

(declare-fun res!2825231 () Bool)

(declare-fun e!4168728 () Bool)

(assert (=> b!6927407 (=> res!2825231 e!4168728)))

(assert (=> b!6927407 (= res!2825231 call!629543)))

(assert (=> b!6927407 (= e!4168727 e!4168728)))

(declare-fun b!6927408 () Bool)

(declare-fun c!1285849 () Bool)

(assert (=> b!6927408 (= c!1285849 (is-Union!16932 lt!2472212))))

(assert (=> b!6927408 (= e!4168731 e!4168729)))

(declare-fun b!6927409 () Bool)

(declare-fun c!1285846 () Bool)

(assert (=> b!6927409 (= c!1285846 (is-ElementMatch!16932 lt!2472212))))

(assert (=> b!6927409 (= e!4168732 e!4168731)))

(declare-fun bm!629538 () Bool)

(assert (=> bm!629538 (= call!629542 (Exists!3934 (ite c!1285848 lambda!394158 lambda!394159)))))

(declare-fun b!6927410 () Bool)

(assert (=> b!6927410 (= e!4168730 call!629543)))

(assert (=> b!6927411 (= e!4168728 call!629542)))

(declare-fun b!6927412 () Bool)

(assert (=> b!6927412 (= e!4168729 e!4168733)))

(declare-fun res!2825229 () Bool)

(assert (=> b!6927412 (= res!2825229 (matchRSpec!3989 (regOne!34377 lt!2472212) s!14361))))

(assert (=> b!6927412 (=> res!2825229 e!4168733)))

(declare-fun d!2165546 () Bool)

(declare-fun c!1285847 () Bool)

(assert (=> d!2165546 (= c!1285847 (is-EmptyExpr!16932 lt!2472212))))

(assert (=> d!2165546 (= (matchRSpec!3989 lt!2472212 s!14361) e!4168730)))

(assert (= (and d!2165546 c!1285847) b!6927410))

(assert (= (and d!2165546 (not c!1285847)) b!6927404))

(assert (= (and b!6927404 res!2825230) b!6927409))

(assert (= (and b!6927409 c!1285846) b!6927406))

(assert (= (and b!6927409 (not c!1285846)) b!6927408))

(assert (= (and b!6927408 c!1285849) b!6927412))

(assert (= (and b!6927408 (not c!1285849)) b!6927403))

(assert (= (and b!6927412 (not res!2825229)) b!6927405))

(assert (= (and b!6927403 c!1285848) b!6927407))

(assert (= (and b!6927403 (not c!1285848)) b!6927402))

(assert (= (and b!6927407 (not res!2825231)) b!6927411))

(assert (= (or b!6927411 b!6927402) bm!629538))

(assert (= (or b!6927410 b!6927407) bm!629537))

(assert (=> bm!629537 m!7636044))

(declare-fun m!7636052 () Bool)

(assert (=> b!6927405 m!7636052))

(declare-fun m!7636054 () Bool)

(assert (=> bm!629538 m!7636054))

(declare-fun m!7636056 () Bool)

(assert (=> b!6927412 m!7636056))

(assert (=> b!6926930 d!2165546))

(declare-fun b!6927417 () Bool)

(declare-fun e!4168736 () Bool)

(declare-fun lt!2472390 () Bool)

(assert (=> b!6927417 (= e!4168736 (not lt!2472390))))

(declare-fun b!6927418 () Bool)

(declare-fun e!4168738 () Bool)

(assert (=> b!6927418 (= e!4168738 (nullable!6757 lt!2472229))))

(declare-fun b!6927419 () Bool)

(declare-fun e!4168737 () Bool)

(assert (=> b!6927419 (= e!4168737 (= (head!13885 s!14361) (c!1285766 lt!2472229)))))

(declare-fun b!6927420 () Bool)

(declare-fun res!2825239 () Bool)

(declare-fun e!4168741 () Bool)

(assert (=> b!6927420 (=> res!2825239 e!4168741)))

(assert (=> b!6927420 (= res!2825239 (not (isEmpty!38817 (tail!12937 s!14361))))))

(declare-fun b!6927421 () Bool)

(declare-fun res!2825242 () Bool)

(declare-fun e!4168742 () Bool)

(assert (=> b!6927421 (=> res!2825242 e!4168742)))

(assert (=> b!6927421 (= res!2825242 e!4168737)))

(declare-fun res!2825236 () Bool)

(assert (=> b!6927421 (=> (not res!2825236) (not e!4168737))))

(assert (=> b!6927421 (= res!2825236 lt!2472390)))

(declare-fun b!6927422 () Bool)

(assert (=> b!6927422 (= e!4168738 (matchR!9071 (derivativeStep!5432 lt!2472229 (head!13885 s!14361)) (tail!12937 s!14361)))))

(declare-fun b!6927423 () Bool)

(declare-fun res!2825238 () Bool)

(assert (=> b!6927423 (=> (not res!2825238) (not e!4168737))))

(assert (=> b!6927423 (= res!2825238 (isEmpty!38817 (tail!12937 s!14361)))))

(declare-fun b!6927424 () Bool)

(declare-fun e!4168740 () Bool)

(assert (=> b!6927424 (= e!4168740 e!4168741)))

(declare-fun res!2825237 () Bool)

(assert (=> b!6927424 (=> res!2825237 e!4168741)))

(declare-fun call!629544 () Bool)

(assert (=> b!6927424 (= res!2825237 call!629544)))

(declare-fun b!6927425 () Bool)

(declare-fun res!2825243 () Bool)

(assert (=> b!6927425 (=> res!2825243 e!4168742)))

(assert (=> b!6927425 (= res!2825243 (not (is-ElementMatch!16932 lt!2472229)))))

(assert (=> b!6927425 (= e!4168736 e!4168742)))

(declare-fun d!2165548 () Bool)

(declare-fun e!4168739 () Bool)

(assert (=> d!2165548 e!4168739))

(declare-fun c!1285850 () Bool)

(assert (=> d!2165548 (= c!1285850 (is-EmptyExpr!16932 lt!2472229))))

(assert (=> d!2165548 (= lt!2472390 e!4168738)))

(declare-fun c!1285851 () Bool)

(assert (=> d!2165548 (= c!1285851 (isEmpty!38817 s!14361))))

(assert (=> d!2165548 (validRegex!8638 lt!2472229)))

(assert (=> d!2165548 (= (matchR!9071 lt!2472229 s!14361) lt!2472390)))

(declare-fun b!6927426 () Bool)

(assert (=> b!6927426 (= e!4168742 e!4168740)))

(declare-fun res!2825240 () Bool)

(assert (=> b!6927426 (=> (not res!2825240) (not e!4168740))))

(assert (=> b!6927426 (= res!2825240 (not lt!2472390))))

(declare-fun b!6927427 () Bool)

(declare-fun res!2825241 () Bool)

(assert (=> b!6927427 (=> (not res!2825241) (not e!4168737))))

(assert (=> b!6927427 (= res!2825241 (not call!629544))))

(declare-fun bm!629539 () Bool)

(assert (=> bm!629539 (= call!629544 (isEmpty!38817 s!14361))))

(declare-fun b!6927428 () Bool)

(assert (=> b!6927428 (= e!4168739 (= lt!2472390 call!629544))))

(declare-fun b!6927429 () Bool)

(assert (=> b!6927429 (= e!4168741 (not (= (head!13885 s!14361) (c!1285766 lt!2472229))))))

(declare-fun b!6927430 () Bool)

(assert (=> b!6927430 (= e!4168739 e!4168736)))

(declare-fun c!1285852 () Bool)

(assert (=> b!6927430 (= c!1285852 (is-EmptyLang!16932 lt!2472229))))

(assert (= (and d!2165548 c!1285851) b!6927418))

(assert (= (and d!2165548 (not c!1285851)) b!6927422))

(assert (= (and d!2165548 c!1285850) b!6927428))

(assert (= (and d!2165548 (not c!1285850)) b!6927430))

(assert (= (and b!6927430 c!1285852) b!6927417))

(assert (= (and b!6927430 (not c!1285852)) b!6927425))

(assert (= (and b!6927425 (not res!2825243)) b!6927421))

(assert (= (and b!6927421 res!2825236) b!6927427))

(assert (= (and b!6927427 res!2825241) b!6927423))

(assert (= (and b!6927423 res!2825238) b!6927419))

(assert (= (and b!6927421 (not res!2825242)) b!6927426))

(assert (= (and b!6927426 res!2825240) b!6927424))

(assert (= (and b!6927424 (not res!2825237)) b!6927420))

(assert (= (and b!6927420 (not res!2825239)) b!6927429))

(assert (= (or b!6927428 b!6927424 b!6927427) bm!629539))

(declare-fun m!7636058 () Bool)

(assert (=> b!6927420 m!7636058))

(assert (=> b!6927420 m!7636058))

(declare-fun m!7636060 () Bool)

(assert (=> b!6927420 m!7636060))

(declare-fun m!7636062 () Bool)

(assert (=> b!6927429 m!7636062))

(assert (=> b!6927422 m!7636062))

(assert (=> b!6927422 m!7636062))

(declare-fun m!7636064 () Bool)

(assert (=> b!6927422 m!7636064))

(assert (=> b!6927422 m!7636058))

(assert (=> b!6927422 m!7636064))

(assert (=> b!6927422 m!7636058))

(declare-fun m!7636066 () Bool)

(assert (=> b!6927422 m!7636066))

(assert (=> b!6927423 m!7636058))

(assert (=> b!6927423 m!7636058))

(assert (=> b!6927423 m!7636060))

(assert (=> b!6927419 m!7636062))

(assert (=> d!2165548 m!7636044))

(declare-fun m!7636068 () Bool)

(assert (=> d!2165548 m!7636068))

(assert (=> bm!629539 m!7636044))

(declare-fun m!7636070 () Bool)

(assert (=> b!6927418 m!7636070))

(assert (=> b!6926930 d!2165548))

(declare-fun d!2165550 () Bool)

(assert (=> d!2165550 (= (matchR!9071 lt!2472212 s!14361) (matchRSpec!3989 lt!2472212 s!14361))))

(declare-fun lt!2472391 () Unit!160588)

(assert (=> d!2165550 (= lt!2472391 (choose!51585 lt!2472212 s!14361))))

(assert (=> d!2165550 (validRegex!8638 lt!2472212)))

(assert (=> d!2165550 (= (mainMatchTheorem!3989 lt!2472212 s!14361) lt!2472391)))

(declare-fun bs!1849298 () Bool)

(assert (= bs!1849298 d!2165550))

(assert (=> bs!1849298 m!7635556))

(assert (=> bs!1849298 m!7635560))

(declare-fun m!7636072 () Bool)

(assert (=> bs!1849298 m!7636072))

(declare-fun m!7636074 () Bool)

(assert (=> bs!1849298 m!7636074))

(assert (=> b!6926930 d!2165550))

(declare-fun d!2165552 () Bool)

(assert (=> d!2165552 (= (matchR!9071 lt!2472229 s!14361) (matchRSpec!3989 lt!2472229 s!14361))))

(declare-fun lt!2472392 () Unit!160588)

(assert (=> d!2165552 (= lt!2472392 (choose!51585 lt!2472229 s!14361))))

(assert (=> d!2165552 (validRegex!8638 lt!2472229)))

(assert (=> d!2165552 (= (mainMatchTheorem!3989 lt!2472229 s!14361) lt!2472392)))

(declare-fun bs!1849299 () Bool)

(assert (= bs!1849299 d!2165552))

(assert (=> bs!1849299 m!7635558))

(assert (=> bs!1849299 m!7635562))

(declare-fun m!7636076 () Bool)

(assert (=> bs!1849299 m!7636076))

(assert (=> bs!1849299 m!7636068))

(assert (=> b!6926930 d!2165552))

(declare-fun b!6927431 () Bool)

(declare-fun e!4168743 () Bool)

(declare-fun lt!2472393 () Bool)

(assert (=> b!6927431 (= e!4168743 (not lt!2472393))))

(declare-fun b!6927432 () Bool)

(declare-fun e!4168745 () Bool)

(assert (=> b!6927432 (= e!4168745 (nullable!6757 lt!2472212))))

(declare-fun b!6927433 () Bool)

(declare-fun e!4168744 () Bool)

(assert (=> b!6927433 (= e!4168744 (= (head!13885 s!14361) (c!1285766 lt!2472212)))))

(declare-fun b!6927434 () Bool)

(declare-fun res!2825247 () Bool)

(declare-fun e!4168748 () Bool)

(assert (=> b!6927434 (=> res!2825247 e!4168748)))

(assert (=> b!6927434 (= res!2825247 (not (isEmpty!38817 (tail!12937 s!14361))))))

(declare-fun b!6927435 () Bool)

(declare-fun res!2825250 () Bool)

(declare-fun e!4168749 () Bool)

(assert (=> b!6927435 (=> res!2825250 e!4168749)))

(assert (=> b!6927435 (= res!2825250 e!4168744)))

(declare-fun res!2825244 () Bool)

(assert (=> b!6927435 (=> (not res!2825244) (not e!4168744))))

(assert (=> b!6927435 (= res!2825244 lt!2472393)))

(declare-fun b!6927436 () Bool)

(assert (=> b!6927436 (= e!4168745 (matchR!9071 (derivativeStep!5432 lt!2472212 (head!13885 s!14361)) (tail!12937 s!14361)))))

(declare-fun b!6927437 () Bool)

(declare-fun res!2825246 () Bool)

(assert (=> b!6927437 (=> (not res!2825246) (not e!4168744))))

(assert (=> b!6927437 (= res!2825246 (isEmpty!38817 (tail!12937 s!14361)))))

(declare-fun b!6927438 () Bool)

(declare-fun e!4168747 () Bool)

(assert (=> b!6927438 (= e!4168747 e!4168748)))

(declare-fun res!2825245 () Bool)

(assert (=> b!6927438 (=> res!2825245 e!4168748)))

(declare-fun call!629545 () Bool)

(assert (=> b!6927438 (= res!2825245 call!629545)))

(declare-fun b!6927439 () Bool)

(declare-fun res!2825251 () Bool)

(assert (=> b!6927439 (=> res!2825251 e!4168749)))

(assert (=> b!6927439 (= res!2825251 (not (is-ElementMatch!16932 lt!2472212)))))

(assert (=> b!6927439 (= e!4168743 e!4168749)))

(declare-fun d!2165554 () Bool)

(declare-fun e!4168746 () Bool)

(assert (=> d!2165554 e!4168746))

(declare-fun c!1285853 () Bool)

(assert (=> d!2165554 (= c!1285853 (is-EmptyExpr!16932 lt!2472212))))

(assert (=> d!2165554 (= lt!2472393 e!4168745)))

(declare-fun c!1285854 () Bool)

(assert (=> d!2165554 (= c!1285854 (isEmpty!38817 s!14361))))

(assert (=> d!2165554 (validRegex!8638 lt!2472212)))

(assert (=> d!2165554 (= (matchR!9071 lt!2472212 s!14361) lt!2472393)))

(declare-fun b!6927440 () Bool)

(assert (=> b!6927440 (= e!4168749 e!4168747)))

(declare-fun res!2825248 () Bool)

(assert (=> b!6927440 (=> (not res!2825248) (not e!4168747))))

(assert (=> b!6927440 (= res!2825248 (not lt!2472393))))

(declare-fun b!6927441 () Bool)

(declare-fun res!2825249 () Bool)

(assert (=> b!6927441 (=> (not res!2825249) (not e!4168744))))

(assert (=> b!6927441 (= res!2825249 (not call!629545))))

(declare-fun bm!629540 () Bool)

(assert (=> bm!629540 (= call!629545 (isEmpty!38817 s!14361))))

(declare-fun b!6927442 () Bool)

(assert (=> b!6927442 (= e!4168746 (= lt!2472393 call!629545))))

(declare-fun b!6927443 () Bool)

(assert (=> b!6927443 (= e!4168748 (not (= (head!13885 s!14361) (c!1285766 lt!2472212))))))

(declare-fun b!6927444 () Bool)

(assert (=> b!6927444 (= e!4168746 e!4168743)))

(declare-fun c!1285855 () Bool)

(assert (=> b!6927444 (= c!1285855 (is-EmptyLang!16932 lt!2472212))))

(assert (= (and d!2165554 c!1285854) b!6927432))

(assert (= (and d!2165554 (not c!1285854)) b!6927436))

(assert (= (and d!2165554 c!1285853) b!6927442))

(assert (= (and d!2165554 (not c!1285853)) b!6927444))

(assert (= (and b!6927444 c!1285855) b!6927431))

(assert (= (and b!6927444 (not c!1285855)) b!6927439))

(assert (= (and b!6927439 (not res!2825251)) b!6927435))

(assert (= (and b!6927435 res!2825244) b!6927441))

(assert (= (and b!6927441 res!2825249) b!6927437))

(assert (= (and b!6927437 res!2825246) b!6927433))

(assert (= (and b!6927435 (not res!2825250)) b!6927440))

(assert (= (and b!6927440 res!2825248) b!6927438))

(assert (= (and b!6927438 (not res!2825245)) b!6927434))

(assert (= (and b!6927434 (not res!2825247)) b!6927443))

(assert (= (or b!6927442 b!6927438 b!6927441) bm!629540))

(assert (=> b!6927434 m!7636058))

(assert (=> b!6927434 m!7636058))

(assert (=> b!6927434 m!7636060))

(assert (=> b!6927443 m!7636062))

(assert (=> b!6927436 m!7636062))

(assert (=> b!6927436 m!7636062))

(declare-fun m!7636078 () Bool)

(assert (=> b!6927436 m!7636078))

(assert (=> b!6927436 m!7636058))

(assert (=> b!6927436 m!7636078))

(assert (=> b!6927436 m!7636058))

(declare-fun m!7636080 () Bool)

(assert (=> b!6927436 m!7636080))

(assert (=> b!6927437 m!7636058))

(assert (=> b!6927437 m!7636058))

(assert (=> b!6927437 m!7636060))

(assert (=> b!6927433 m!7636062))

(assert (=> d!2165554 m!7636044))

(assert (=> d!2165554 m!7636074))

(assert (=> bm!629540 m!7636044))

(declare-fun m!7636082 () Bool)

(assert (=> b!6927432 m!7636082))

(assert (=> b!6926930 d!2165554))

(declare-fun bm!629541 () Bool)

(declare-fun call!629547 () Bool)

(declare-fun call!629548 () Bool)

(assert (=> bm!629541 (= call!629547 call!629548)))

(declare-fun c!1285856 () Bool)

(declare-fun bm!629542 () Bool)

(declare-fun c!1285857 () Bool)

(assert (=> bm!629542 (= call!629548 (validRegex!8638 (ite c!1285857 (reg!17261 r1!6342) (ite c!1285856 (regOne!34377 r1!6342) (regTwo!34376 r1!6342)))))))

(declare-fun b!6927446 () Bool)

(declare-fun res!2825253 () Bool)

(declare-fun e!4168753 () Bool)

(assert (=> b!6927446 (=> res!2825253 e!4168753)))

(assert (=> b!6927446 (= res!2825253 (not (is-Concat!25777 r1!6342)))))

(declare-fun e!4168754 () Bool)

(assert (=> b!6927446 (= e!4168754 e!4168753)))

(declare-fun b!6927447 () Bool)

(declare-fun res!2825255 () Bool)

(declare-fun e!4168750 () Bool)

(assert (=> b!6927447 (=> (not res!2825255) (not e!4168750))))

(assert (=> b!6927447 (= res!2825255 call!629547)))

(assert (=> b!6927447 (= e!4168754 e!4168750)))

(declare-fun b!6927448 () Bool)

(declare-fun e!4168751 () Bool)

(declare-fun e!4168752 () Bool)

(assert (=> b!6927448 (= e!4168751 e!4168752)))

(assert (=> b!6927448 (= c!1285857 (is-Star!16932 r1!6342))))

(declare-fun b!6927449 () Bool)

(declare-fun e!4168756 () Bool)

(assert (=> b!6927449 (= e!4168756 call!629547)))

(declare-fun b!6927450 () Bool)

(assert (=> b!6927450 (= e!4168752 e!4168754)))

(assert (=> b!6927450 (= c!1285856 (is-Union!16932 r1!6342))))

(declare-fun bm!629543 () Bool)

(declare-fun call!629546 () Bool)

(assert (=> bm!629543 (= call!629546 (validRegex!8638 (ite c!1285856 (regTwo!34377 r1!6342) (regOne!34376 r1!6342))))))

(declare-fun b!6927451 () Bool)

(assert (=> b!6927451 (= e!4168750 call!629546)))

(declare-fun d!2165556 () Bool)

(declare-fun res!2825256 () Bool)

(assert (=> d!2165556 (=> res!2825256 e!4168751)))

(assert (=> d!2165556 (= res!2825256 (is-ElementMatch!16932 r1!6342))))

(assert (=> d!2165556 (= (validRegex!8638 r1!6342) e!4168751)))

(declare-fun b!6927445 () Bool)

(declare-fun e!4168755 () Bool)

(assert (=> b!6927445 (= e!4168755 call!629548)))

(declare-fun b!6927452 () Bool)

(assert (=> b!6927452 (= e!4168753 e!4168756)))

(declare-fun res!2825254 () Bool)

(assert (=> b!6927452 (=> (not res!2825254) (not e!4168756))))

(assert (=> b!6927452 (= res!2825254 call!629546)))

(declare-fun b!6927453 () Bool)

(assert (=> b!6927453 (= e!4168752 e!4168755)))

(declare-fun res!2825252 () Bool)

(assert (=> b!6927453 (= res!2825252 (not (nullable!6757 (reg!17261 r1!6342))))))

(assert (=> b!6927453 (=> (not res!2825252) (not e!4168755))))

(assert (= (and d!2165556 (not res!2825256)) b!6927448))

(assert (= (and b!6927448 c!1285857) b!6927453))

(assert (= (and b!6927448 (not c!1285857)) b!6927450))

(assert (= (and b!6927453 res!2825252) b!6927445))

(assert (= (and b!6927450 c!1285856) b!6927447))

(assert (= (and b!6927450 (not c!1285856)) b!6927446))

(assert (= (and b!6927447 res!2825255) b!6927451))

(assert (= (and b!6927446 (not res!2825253)) b!6927452))

(assert (= (and b!6927452 res!2825254) b!6927449))

(assert (= (or b!6927447 b!6927449) bm!629541))

(assert (= (or b!6927451 b!6927452) bm!629543))

(assert (= (or b!6927445 bm!629541) bm!629542))

(declare-fun m!7636084 () Bool)

(assert (=> bm!629542 m!7636084))

(declare-fun m!7636086 () Bool)

(assert (=> bm!629543 m!7636086))

(declare-fun m!7636088 () Bool)

(assert (=> b!6927453 m!7636088))

(assert (=> start!665892 d!2165556))

(declare-fun bs!1849302 () Bool)

(declare-fun d!2165558 () Bool)

(assert (= bs!1849302 (and d!2165558 b!6926937)))

(declare-fun lambda!394163 () Int)

(assert (=> bs!1849302 (= (and (= s!14361 lt!2472214) (= lt!2472224 r2!6280)) (= lambda!394163 lambda!394097))))

(declare-fun bs!1849304 () Bool)

(assert (= bs!1849304 (and d!2165558 b!6927215)))

(assert (=> bs!1849304 (not (= lambda!394163 lambda!394136))))

(declare-fun bs!1849306 () Bool)

(assert (= bs!1849306 (and d!2165558 d!2165500)))

(assert (=> bs!1849306 (= (and (= s!14361 lt!2472214) (= lt!2472224 r2!6280)) (= lambda!394163 lambda!394146))))

(declare-fun bs!1849307 () Bool)

(assert (= bs!1849307 (and d!2165558 b!6927402)))

(assert (=> bs!1849307 (not (= lambda!394163 lambda!394159))))

(declare-fun bs!1849308 () Bool)

(assert (= bs!1849308 (and d!2165558 d!2165532)))

(assert (=> bs!1849308 (= (and (= s!14361 (_1!37092 lt!2472208)) (= lt!2472224 r1!6342) (= r3!135 r2!6280)) (= lambda!394163 lambda!394154))))

(declare-fun bs!1849309 () Bool)

(assert (= bs!1849309 (and d!2165558 b!6926928)))

(assert (=> bs!1849309 (not (= lambda!394163 lambda!394094))))

(declare-fun bs!1849310 () Bool)

(assert (= bs!1849310 (and d!2165558 b!6927411)))

(assert (=> bs!1849310 (not (= lambda!394163 lambda!394158))))

(declare-fun bs!1849312 () Bool)

(assert (= bs!1849312 (and d!2165558 b!6927235)))

(assert (=> bs!1849312 (not (= lambda!394163 lambda!394138))))

(declare-fun bs!1849313 () Bool)

(assert (= bs!1849313 (and d!2165558 b!6926923)))

(assert (=> bs!1849313 (not (= lambda!394163 lambda!394096))))

(assert (=> bs!1849308 (not (= lambda!394163 lambda!394155))))

(assert (=> bs!1849306 (not (= lambda!394163 lambda!394147))))

(declare-fun bs!1849314 () Bool)

(assert (= bs!1849314 (and d!2165558 b!6927386)))

(assert (=> bs!1849314 (not (= lambda!394163 lambda!394156))))

(assert (=> bs!1849309 (= lambda!394163 lambda!394093)))

(declare-fun bs!1849315 () Bool)

(assert (= bs!1849315 (and d!2165558 b!6926914)))

(assert (=> bs!1849315 (= (and (= lt!2472224 r1!6342) (= r3!135 lt!2472222)) (= lambda!394163 lambda!394099))))

(declare-fun bs!1849316 () Bool)

(assert (= bs!1849316 (and d!2165558 d!2165506)))

(assert (=> bs!1849316 (= (and (= s!14361 lt!2472214) (= lt!2472224 r2!6280)) (= lambda!394163 lambda!394150))))

(declare-fun bs!1849318 () Bool)

(assert (= bs!1849318 (and d!2165558 d!2165524)))

(assert (=> bs!1849318 (= (and (= s!14361 (_1!37092 lt!2472208)) (= lt!2472224 r1!6342) (= r3!135 r2!6280)) (= lambda!394163 lambda!394153))))

(assert (=> bs!1849302 (not (= lambda!394163 lambda!394098))))

(declare-fun bs!1849319 () Bool)

(assert (= bs!1849319 (and d!2165558 b!6927186)))

(assert (=> bs!1849319 (not (= lambda!394163 lambda!394135))))

(declare-fun bs!1849320 () Bool)

(assert (= bs!1849320 (and d!2165558 b!6927226)))

(assert (=> bs!1849320 (not (= lambda!394163 lambda!394139))))

(assert (=> bs!1849313 (= (and (= s!14361 (_1!37092 lt!2472208)) (= lt!2472224 r1!6342) (= r3!135 r2!6280)) (= lambda!394163 lambda!394095))))

(declare-fun bs!1849321 () Bool)

(assert (= bs!1849321 (and d!2165558 b!6927377)))

(assert (=> bs!1849321 (not (= lambda!394163 lambda!394157))))

(declare-fun bs!1849322 () Bool)

(assert (= bs!1849322 (and d!2165558 b!6927195)))

(assert (=> bs!1849322 (not (= lambda!394163 lambda!394134))))

(declare-fun bs!1849323 () Bool)

(assert (= bs!1849323 (and d!2165558 d!2165462)))

(assert (=> bs!1849323 (= (and (= lt!2472224 r1!6342) (= r3!135 lt!2472222)) (= lambda!394163 lambda!394129))))

(declare-fun bs!1849324 () Bool)

(assert (= bs!1849324 (and d!2165558 b!6927206)))

(assert (=> bs!1849324 (not (= lambda!394163 lambda!394137))))

(assert (=> d!2165558 true))

(assert (=> d!2165558 true))

(assert (=> d!2165558 true))

(declare-fun lambda!394164 () Int)

(assert (=> bs!1849302 (not (= lambda!394164 lambda!394097))))

(assert (=> bs!1849304 (not (= lambda!394164 lambda!394136))))

(assert (=> bs!1849306 (not (= lambda!394164 lambda!394146))))

(assert (=> bs!1849307 (= (and (= lt!2472224 (regOne!34376 lt!2472212)) (= r3!135 (regTwo!34376 lt!2472212))) (= lambda!394164 lambda!394159))))

(assert (=> bs!1849308 (not (= lambda!394164 lambda!394154))))

(assert (=> bs!1849309 (= lambda!394164 lambda!394094)))

(assert (=> bs!1849310 (not (= lambda!394164 lambda!394158))))

(assert (=> bs!1849312 (not (= lambda!394164 lambda!394138))))

(assert (=> bs!1849313 (= (and (= s!14361 (_1!37092 lt!2472208)) (= lt!2472224 r1!6342) (= r3!135 r2!6280)) (= lambda!394164 lambda!394096))))

(assert (=> bs!1849308 (= (and (= s!14361 (_1!37092 lt!2472208)) (= lt!2472224 r1!6342) (= r3!135 r2!6280)) (= lambda!394164 lambda!394155))))

(assert (=> bs!1849314 (not (= lambda!394164 lambda!394156))))

(assert (=> bs!1849309 (not (= lambda!394164 lambda!394093))))

(assert (=> bs!1849315 (not (= lambda!394164 lambda!394099))))

(assert (=> bs!1849316 (not (= lambda!394164 lambda!394150))))

(assert (=> bs!1849318 (not (= lambda!394164 lambda!394153))))

(assert (=> bs!1849302 (= (and (= s!14361 lt!2472214) (= lt!2472224 r2!6280)) (= lambda!394164 lambda!394098))))

(assert (=> bs!1849319 (= (and (= s!14361 (_1!37092 lt!2472219)) (= lt!2472224 (regOne!34376 r1!6342)) (= r3!135 (regTwo!34376 r1!6342))) (= lambda!394164 lambda!394135))))

(assert (=> bs!1849320 (= (and (= s!14361 lt!2472214) (= lt!2472224 (regOne!34376 lt!2472222)) (= r3!135 (regTwo!34376 lt!2472222))) (= lambda!394164 lambda!394139))))

(assert (=> bs!1849313 (not (= lambda!394164 lambda!394095))))

(assert (=> bs!1849321 (= (and (= lt!2472224 (regOne!34376 lt!2472229)) (= r3!135 (regTwo!34376 lt!2472229))) (= lambda!394164 lambda!394157))))

(assert (=> bs!1849322 (not (= lambda!394164 lambda!394134))))

(assert (=> bs!1849323 (not (= lambda!394164 lambda!394129))))

(assert (=> bs!1849324 (= (and (= s!14361 (_2!37092 lt!2472219)) (= lt!2472224 (regOne!34376 r2!6280)) (= r3!135 (regTwo!34376 r2!6280))) (= lambda!394164 lambda!394137))))

(assert (=> bs!1849306 (= (and (= s!14361 lt!2472214) (= lt!2472224 r2!6280)) (= lambda!394164 lambda!394147))))

(declare-fun bs!1849325 () Bool)

(assert (= bs!1849325 d!2165558))

(assert (=> bs!1849325 (not (= lambda!394164 lambda!394163))))

(assert (=> d!2165558 true))

(assert (=> d!2165558 true))

(assert (=> d!2165558 true))

(assert (=> d!2165558 (= (Exists!3934 lambda!394163) (Exists!3934 lambda!394164))))

(declare-fun lt!2472395 () Unit!160588)

(assert (=> d!2165558 (= lt!2472395 (choose!51586 lt!2472224 r3!135 s!14361))))

(assert (=> d!2165558 (validRegex!8638 lt!2472224)))

(assert (=> d!2165558 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2401 lt!2472224 r3!135 s!14361) lt!2472395)))

(declare-fun m!7636096 () Bool)

(assert (=> bs!1849325 m!7636096))

(declare-fun m!7636098 () Bool)

(assert (=> bs!1849325 m!7636098))

(declare-fun m!7636100 () Bool)

(assert (=> bs!1849325 m!7636100))

(declare-fun m!7636102 () Bool)

(assert (=> bs!1849325 m!7636102))

(assert (=> b!6926928 d!2165558))

(declare-fun d!2165562 () Bool)

(assert (=> d!2165562 (= (isDefined!13404 lt!2472232) (not (isEmpty!38816 lt!2472232)))))

(declare-fun bs!1849326 () Bool)

(assert (= bs!1849326 d!2165562))

(declare-fun m!7636104 () Bool)

(assert (=> bs!1849326 m!7636104))

(assert (=> b!6926928 d!2165562))

(declare-fun d!2165564 () Bool)

(assert (=> d!2165564 (= (get!23339 lt!2472232) (v!52972 lt!2472232))))

(assert (=> b!6926928 d!2165564))

(declare-fun b!6927455 () Bool)

(declare-fun res!2825260 () Bool)

(declare-fun e!4168760 () Bool)

(assert (=> b!6927455 (=> (not res!2825260) (not e!4168760))))

(declare-fun lt!2472396 () Option!16701)

(assert (=> b!6927455 (= res!2825260 (matchR!9071 lt!2472224 (_1!37092 (get!23339 lt!2472396))))))

(declare-fun b!6927456 () Bool)

(declare-fun e!4168761 () Option!16701)

(declare-fun e!4168758 () Option!16701)

(assert (=> b!6927456 (= e!4168761 e!4168758)))

(declare-fun c!1285859 () Bool)

(assert (=> b!6927456 (= c!1285859 (is-Nil!66561 s!14361))))

(declare-fun b!6927457 () Bool)

(declare-fun lt!2472398 () Unit!160588)

(declare-fun lt!2472397 () Unit!160588)

(assert (=> b!6927457 (= lt!2472398 lt!2472397)))

(assert (=> b!6927457 (= (++!14975 (++!14975 Nil!66561 (Cons!66561 (h!73009 s!14361) Nil!66561)) (t!380428 s!14361)) s!14361)))

(assert (=> b!6927457 (= lt!2472397 (lemmaMoveElementToOtherListKeepsConcatEq!2836 Nil!66561 (h!73009 s!14361) (t!380428 s!14361) s!14361))))

(assert (=> b!6927457 (= e!4168758 (findConcatSeparation!3115 lt!2472224 r3!135 (++!14975 Nil!66561 (Cons!66561 (h!73009 s!14361) Nil!66561)) (t!380428 s!14361) s!14361))))

(declare-fun b!6927458 () Bool)

(assert (=> b!6927458 (= e!4168761 (Some!16700 (tuple2!67579 Nil!66561 s!14361)))))

(declare-fun b!6927459 () Bool)

(assert (=> b!6927459 (= e!4168760 (= (++!14975 (_1!37092 (get!23339 lt!2472396)) (_2!37092 (get!23339 lt!2472396))) s!14361))))

(declare-fun b!6927460 () Bool)

(declare-fun e!4168757 () Bool)

(assert (=> b!6927460 (= e!4168757 (matchR!9071 r3!135 s!14361))))

(declare-fun b!6927461 () Bool)

(declare-fun res!2825259 () Bool)

(assert (=> b!6927461 (=> (not res!2825259) (not e!4168760))))

(assert (=> b!6927461 (= res!2825259 (matchR!9071 r3!135 (_2!37092 (get!23339 lt!2472396))))))

(declare-fun b!6927462 () Bool)

(assert (=> b!6927462 (= e!4168758 None!16700)))

(declare-fun b!6927454 () Bool)

(declare-fun e!4168759 () Bool)

(assert (=> b!6927454 (= e!4168759 (not (isDefined!13404 lt!2472396)))))

(declare-fun d!2165566 () Bool)

(assert (=> d!2165566 e!4168759))

(declare-fun res!2825261 () Bool)

(assert (=> d!2165566 (=> res!2825261 e!4168759)))

(assert (=> d!2165566 (= res!2825261 e!4168760)))

(declare-fun res!2825258 () Bool)

(assert (=> d!2165566 (=> (not res!2825258) (not e!4168760))))

(assert (=> d!2165566 (= res!2825258 (isDefined!13404 lt!2472396))))

(assert (=> d!2165566 (= lt!2472396 e!4168761)))

(declare-fun c!1285858 () Bool)

(assert (=> d!2165566 (= c!1285858 e!4168757)))

(declare-fun res!2825257 () Bool)

(assert (=> d!2165566 (=> (not res!2825257) (not e!4168757))))

(assert (=> d!2165566 (= res!2825257 (matchR!9071 lt!2472224 Nil!66561))))

(assert (=> d!2165566 (validRegex!8638 lt!2472224)))

(assert (=> d!2165566 (= (findConcatSeparation!3115 lt!2472224 r3!135 Nil!66561 s!14361 s!14361) lt!2472396)))

(assert (= (and d!2165566 res!2825257) b!6927460))

(assert (= (and d!2165566 c!1285858) b!6927458))

(assert (= (and d!2165566 (not c!1285858)) b!6927456))

(assert (= (and b!6927456 c!1285859) b!6927462))

(assert (= (and b!6927456 (not c!1285859)) b!6927457))

(assert (= (and d!2165566 res!2825258) b!6927455))

(assert (= (and b!6927455 res!2825260) b!6927461))

(assert (= (and b!6927461 res!2825259) b!6927459))

(assert (= (and d!2165566 (not res!2825261)) b!6927454))

(declare-fun m!7636106 () Bool)

(assert (=> b!6927455 m!7636106))

(declare-fun m!7636108 () Bool)

(assert (=> b!6927455 m!7636108))

(declare-fun m!7636110 () Bool)

(assert (=> b!6927460 m!7636110))

(assert (=> b!6927457 m!7635766))

(assert (=> b!6927457 m!7635766))

(assert (=> b!6927457 m!7635768))

(assert (=> b!6927457 m!7635770))

(assert (=> b!6927457 m!7635766))

(declare-fun m!7636112 () Bool)

(assert (=> b!6927457 m!7636112))

(assert (=> b!6927461 m!7636106))

(declare-fun m!7636114 () Bool)

(assert (=> b!6927461 m!7636114))

(assert (=> b!6927459 m!7636106))

(declare-fun m!7636116 () Bool)

(assert (=> b!6927459 m!7636116))

(declare-fun m!7636118 () Bool)

(assert (=> d!2165566 m!7636118))

(declare-fun m!7636120 () Bool)

(assert (=> d!2165566 m!7636120))

(assert (=> d!2165566 m!7636102))

(assert (=> b!6927454 m!7636118))

(assert (=> b!6926928 d!2165566))

(declare-fun d!2165568 () Bool)

(assert (=> d!2165568 (= (Exists!3934 lambda!394094) (choose!51582 lambda!394094))))

(declare-fun bs!1849327 () Bool)

(assert (= bs!1849327 d!2165568))

(declare-fun m!7636122 () Bool)

(assert (=> bs!1849327 m!7636122))

(assert (=> b!6926928 d!2165568))

(declare-fun b!6927463 () Bool)

(declare-fun e!4168762 () Bool)

(declare-fun lt!2472399 () Bool)

(assert (=> b!6927463 (= e!4168762 (not lt!2472399))))

(declare-fun b!6927464 () Bool)

(declare-fun e!4168764 () Bool)

(assert (=> b!6927464 (= e!4168764 (nullable!6757 lt!2472224))))

(declare-fun b!6927465 () Bool)

(declare-fun e!4168763 () Bool)

(assert (=> b!6927465 (= e!4168763 (= (head!13885 (_1!37092 lt!2472208)) (c!1285766 lt!2472224)))))

(declare-fun b!6927466 () Bool)

(declare-fun res!2825265 () Bool)

(declare-fun e!4168767 () Bool)

(assert (=> b!6927466 (=> res!2825265 e!4168767)))

(assert (=> b!6927466 (= res!2825265 (not (isEmpty!38817 (tail!12937 (_1!37092 lt!2472208)))))))

(declare-fun b!6927467 () Bool)

(declare-fun res!2825268 () Bool)

(declare-fun e!4168768 () Bool)

(assert (=> b!6927467 (=> res!2825268 e!4168768)))

(assert (=> b!6927467 (= res!2825268 e!4168763)))

(declare-fun res!2825262 () Bool)

(assert (=> b!6927467 (=> (not res!2825262) (not e!4168763))))

(assert (=> b!6927467 (= res!2825262 lt!2472399)))

(declare-fun b!6927468 () Bool)

(assert (=> b!6927468 (= e!4168764 (matchR!9071 (derivativeStep!5432 lt!2472224 (head!13885 (_1!37092 lt!2472208))) (tail!12937 (_1!37092 lt!2472208))))))

(declare-fun b!6927469 () Bool)

(declare-fun res!2825264 () Bool)

(assert (=> b!6927469 (=> (not res!2825264) (not e!4168763))))

(assert (=> b!6927469 (= res!2825264 (isEmpty!38817 (tail!12937 (_1!37092 lt!2472208))))))

(declare-fun b!6927470 () Bool)

(declare-fun e!4168766 () Bool)

(assert (=> b!6927470 (= e!4168766 e!4168767)))

(declare-fun res!2825263 () Bool)

(assert (=> b!6927470 (=> res!2825263 e!4168767)))

(declare-fun call!629549 () Bool)

(assert (=> b!6927470 (= res!2825263 call!629549)))

(declare-fun b!6927471 () Bool)

(declare-fun res!2825269 () Bool)

(assert (=> b!6927471 (=> res!2825269 e!4168768)))

(assert (=> b!6927471 (= res!2825269 (not (is-ElementMatch!16932 lt!2472224)))))

(assert (=> b!6927471 (= e!4168762 e!4168768)))

(declare-fun d!2165570 () Bool)

(declare-fun e!4168765 () Bool)

(assert (=> d!2165570 e!4168765))

(declare-fun c!1285860 () Bool)

(assert (=> d!2165570 (= c!1285860 (is-EmptyExpr!16932 lt!2472224))))

(assert (=> d!2165570 (= lt!2472399 e!4168764)))

(declare-fun c!1285861 () Bool)

(assert (=> d!2165570 (= c!1285861 (isEmpty!38817 (_1!37092 lt!2472208)))))

(assert (=> d!2165570 (validRegex!8638 lt!2472224)))

(assert (=> d!2165570 (= (matchR!9071 lt!2472224 (_1!37092 lt!2472208)) lt!2472399)))

(declare-fun b!6927472 () Bool)

(assert (=> b!6927472 (= e!4168768 e!4168766)))

(declare-fun res!2825266 () Bool)

(assert (=> b!6927472 (=> (not res!2825266) (not e!4168766))))

(assert (=> b!6927472 (= res!2825266 (not lt!2472399))))

(declare-fun b!6927473 () Bool)

(declare-fun res!2825267 () Bool)

(assert (=> b!6927473 (=> (not res!2825267) (not e!4168763))))

(assert (=> b!6927473 (= res!2825267 (not call!629549))))

(declare-fun bm!629544 () Bool)

(assert (=> bm!629544 (= call!629549 (isEmpty!38817 (_1!37092 lt!2472208)))))

(declare-fun b!6927474 () Bool)

(assert (=> b!6927474 (= e!4168765 (= lt!2472399 call!629549))))

(declare-fun b!6927475 () Bool)

(assert (=> b!6927475 (= e!4168767 (not (= (head!13885 (_1!37092 lt!2472208)) (c!1285766 lt!2472224))))))

(declare-fun b!6927476 () Bool)

(assert (=> b!6927476 (= e!4168765 e!4168762)))

(declare-fun c!1285862 () Bool)

(assert (=> b!6927476 (= c!1285862 (is-EmptyLang!16932 lt!2472224))))

(assert (= (and d!2165570 c!1285861) b!6927464))

(assert (= (and d!2165570 (not c!1285861)) b!6927468))

(assert (= (and d!2165570 c!1285860) b!6927474))

(assert (= (and d!2165570 (not c!1285860)) b!6927476))

(assert (= (and b!6927476 c!1285862) b!6927463))

(assert (= (and b!6927476 (not c!1285862)) b!6927471))

(assert (= (and b!6927471 (not res!2825269)) b!6927467))

(assert (= (and b!6927467 res!2825262) b!6927473))

(assert (= (and b!6927473 res!2825267) b!6927469))

(assert (= (and b!6927469 res!2825264) b!6927465))

(assert (= (and b!6927467 (not res!2825268)) b!6927472))

(assert (= (and b!6927472 res!2825266) b!6927470))

(assert (= (and b!6927470 (not res!2825263)) b!6927466))

(assert (= (and b!6927466 (not res!2825265)) b!6927475))

(assert (= (or b!6927474 b!6927470 b!6927473) bm!629544))

(declare-fun m!7636124 () Bool)

(assert (=> b!6927466 m!7636124))

(assert (=> b!6927466 m!7636124))

(declare-fun m!7636126 () Bool)

(assert (=> b!6927466 m!7636126))

(declare-fun m!7636128 () Bool)

(assert (=> b!6927475 m!7636128))

(assert (=> b!6927468 m!7636128))

(assert (=> b!6927468 m!7636128))

(declare-fun m!7636130 () Bool)

(assert (=> b!6927468 m!7636130))

(assert (=> b!6927468 m!7636124))

(assert (=> b!6927468 m!7636130))

(assert (=> b!6927468 m!7636124))

(declare-fun m!7636132 () Bool)

(assert (=> b!6927468 m!7636132))

(assert (=> b!6927469 m!7636124))

(assert (=> b!6927469 m!7636124))

(assert (=> b!6927469 m!7636126))

(assert (=> b!6927465 m!7636128))

(declare-fun m!7636134 () Bool)

(assert (=> d!2165570 m!7636134))

(assert (=> d!2165570 m!7636102))

(assert (=> bm!629544 m!7636134))

(declare-fun m!7636136 () Bool)

(assert (=> b!6927464 m!7636136))

(assert (=> b!6926928 d!2165570))

(declare-fun d!2165572 () Bool)

(assert (=> d!2165572 (= (matchR!9071 lt!2472224 (_1!37092 lt!2472208)) (matchRSpec!3989 lt!2472224 (_1!37092 lt!2472208)))))

(declare-fun lt!2472400 () Unit!160588)

(assert (=> d!2165572 (= lt!2472400 (choose!51585 lt!2472224 (_1!37092 lt!2472208)))))

(assert (=> d!2165572 (validRegex!8638 lt!2472224)))

(assert (=> d!2165572 (= (mainMatchTheorem!3989 lt!2472224 (_1!37092 lt!2472208)) lt!2472400)))

(declare-fun bs!1849328 () Bool)

(assert (= bs!1849328 d!2165572))

(assert (=> bs!1849328 m!7635642))

(assert (=> bs!1849328 m!7635638))

(declare-fun m!7636138 () Bool)

(assert (=> bs!1849328 m!7636138))

(assert (=> bs!1849328 m!7636102))

(assert (=> b!6926928 d!2165572))

(declare-fun d!2165574 () Bool)

(assert (=> d!2165574 (= (Exists!3934 lambda!394093) (choose!51582 lambda!394093))))

(declare-fun bs!1849329 () Bool)

(assert (= bs!1849329 d!2165574))

(declare-fun m!7636140 () Bool)

(assert (=> bs!1849329 m!7636140))

(assert (=> b!6926928 d!2165574))

(declare-fun bs!1849330 () Bool)

(declare-fun b!6927486 () Bool)

(assert (= bs!1849330 (and b!6927486 b!6926937)))

(declare-fun lambda!394165 () Int)

(assert (=> bs!1849330 (not (= lambda!394165 lambda!394097))))

(declare-fun bs!1849331 () Bool)

(assert (= bs!1849331 (and b!6927486 b!6927215)))

(assert (=> bs!1849331 (= (and (= (_1!37092 lt!2472208) (_2!37092 lt!2472219)) (= (reg!17261 lt!2472224) (reg!17261 r2!6280)) (= lt!2472224 r2!6280)) (= lambda!394165 lambda!394136))))

(declare-fun bs!1849332 () Bool)

(assert (= bs!1849332 (and b!6927486 d!2165500)))

(assert (=> bs!1849332 (not (= lambda!394165 lambda!394146))))

(declare-fun bs!1849333 () Bool)

(assert (= bs!1849333 (and b!6927486 b!6927402)))

(assert (=> bs!1849333 (not (= lambda!394165 lambda!394159))))

(declare-fun bs!1849334 () Bool)

(assert (= bs!1849334 (and b!6927486 d!2165532)))

(assert (=> bs!1849334 (not (= lambda!394165 lambda!394154))))

(declare-fun bs!1849335 () Bool)

(assert (= bs!1849335 (and b!6927486 b!6926928)))

(assert (=> bs!1849335 (not (= lambda!394165 lambda!394094))))

(declare-fun bs!1849336 () Bool)

(assert (= bs!1849336 (and b!6927486 b!6927411)))

(assert (=> bs!1849336 (= (and (= (_1!37092 lt!2472208) s!14361) (= (reg!17261 lt!2472224) (reg!17261 lt!2472212)) (= lt!2472224 lt!2472212)) (= lambda!394165 lambda!394158))))

(declare-fun bs!1849337 () Bool)

(assert (= bs!1849337 (and b!6927486 b!6927235)))

(assert (=> bs!1849337 (= (and (= (_1!37092 lt!2472208) lt!2472214) (= (reg!17261 lt!2472224) (reg!17261 lt!2472222)) (= lt!2472224 lt!2472222)) (= lambda!394165 lambda!394138))))

(declare-fun bs!1849338 () Bool)

(assert (= bs!1849338 (and b!6927486 b!6926923)))

(assert (=> bs!1849338 (not (= lambda!394165 lambda!394096))))

(assert (=> bs!1849334 (not (= lambda!394165 lambda!394155))))

(declare-fun bs!1849339 () Bool)

(assert (= bs!1849339 (and b!6927486 b!6927386)))

(assert (=> bs!1849339 (= (and (= (_1!37092 lt!2472208) s!14361) (= (reg!17261 lt!2472224) (reg!17261 lt!2472229)) (= lt!2472224 lt!2472229)) (= lambda!394165 lambda!394156))))

(assert (=> bs!1849335 (not (= lambda!394165 lambda!394093))))

(declare-fun bs!1849340 () Bool)

(assert (= bs!1849340 (and b!6927486 b!6926914)))

(assert (=> bs!1849340 (not (= lambda!394165 lambda!394099))))

(declare-fun bs!1849341 () Bool)

(assert (= bs!1849341 (and b!6927486 d!2165506)))

(assert (=> bs!1849341 (not (= lambda!394165 lambda!394150))))

(declare-fun bs!1849342 () Bool)

(assert (= bs!1849342 (and b!6927486 d!2165524)))

(assert (=> bs!1849342 (not (= lambda!394165 lambda!394153))))

(assert (=> bs!1849330 (not (= lambda!394165 lambda!394098))))

(declare-fun bs!1849343 () Bool)

(assert (= bs!1849343 (and b!6927486 b!6927186)))

(assert (=> bs!1849343 (not (= lambda!394165 lambda!394135))))

(declare-fun bs!1849344 () Bool)

(assert (= bs!1849344 (and b!6927486 b!6927226)))

(assert (=> bs!1849344 (not (= lambda!394165 lambda!394139))))

(assert (=> bs!1849338 (not (= lambda!394165 lambda!394095))))

(declare-fun bs!1849345 () Bool)

(assert (= bs!1849345 (and b!6927486 b!6927377)))

(assert (=> bs!1849345 (not (= lambda!394165 lambda!394157))))

(declare-fun bs!1849346 () Bool)

(assert (= bs!1849346 (and b!6927486 b!6927195)))

(assert (=> bs!1849346 (= (and (= (_1!37092 lt!2472208) (_1!37092 lt!2472219)) (= (reg!17261 lt!2472224) (reg!17261 r1!6342)) (= lt!2472224 r1!6342)) (= lambda!394165 lambda!394134))))

(declare-fun bs!1849347 () Bool)

(assert (= bs!1849347 (and b!6927486 d!2165462)))

(assert (=> bs!1849347 (not (= lambda!394165 lambda!394129))))

(declare-fun bs!1849348 () Bool)

(assert (= bs!1849348 (and b!6927486 b!6927206)))

(assert (=> bs!1849348 (not (= lambda!394165 lambda!394137))))

(declare-fun bs!1849349 () Bool)

(assert (= bs!1849349 (and b!6927486 d!2165558)))

(assert (=> bs!1849349 (not (= lambda!394165 lambda!394164))))

(assert (=> bs!1849332 (not (= lambda!394165 lambda!394147))))

(assert (=> bs!1849349 (not (= lambda!394165 lambda!394163))))

(assert (=> b!6927486 true))

(assert (=> b!6927486 true))

(declare-fun bs!1849350 () Bool)

(declare-fun b!6927477 () Bool)

(assert (= bs!1849350 (and b!6927477 b!6926937)))

(declare-fun lambda!394168 () Int)

(assert (=> bs!1849350 (not (= lambda!394168 lambda!394097))))

(declare-fun bs!1849351 () Bool)

(assert (= bs!1849351 (and b!6927477 b!6927486)))

(assert (=> bs!1849351 (not (= lambda!394168 lambda!394165))))

(declare-fun bs!1849352 () Bool)

(assert (= bs!1849352 (and b!6927477 b!6927215)))

(assert (=> bs!1849352 (not (= lambda!394168 lambda!394136))))

(declare-fun bs!1849353 () Bool)

(assert (= bs!1849353 (and b!6927477 d!2165500)))

(assert (=> bs!1849353 (not (= lambda!394168 lambda!394146))))

(declare-fun bs!1849354 () Bool)

(assert (= bs!1849354 (and b!6927477 b!6927402)))

(assert (=> bs!1849354 (= (and (= (_1!37092 lt!2472208) s!14361) (= (regOne!34376 lt!2472224) (regOne!34376 lt!2472212)) (= (regTwo!34376 lt!2472224) (regTwo!34376 lt!2472212))) (= lambda!394168 lambda!394159))))

(declare-fun bs!1849355 () Bool)

(assert (= bs!1849355 (and b!6927477 d!2165532)))

(assert (=> bs!1849355 (not (= lambda!394168 lambda!394154))))

(declare-fun bs!1849356 () Bool)

(assert (= bs!1849356 (and b!6927477 b!6926928)))

(assert (=> bs!1849356 (= (and (= (_1!37092 lt!2472208) s!14361) (= (regOne!34376 lt!2472224) lt!2472224) (= (regTwo!34376 lt!2472224) r3!135)) (= lambda!394168 lambda!394094))))

(declare-fun bs!1849357 () Bool)

(assert (= bs!1849357 (and b!6927477 b!6927411)))

(assert (=> bs!1849357 (not (= lambda!394168 lambda!394158))))

(declare-fun bs!1849358 () Bool)

(assert (= bs!1849358 (and b!6927477 b!6927235)))

(assert (=> bs!1849358 (not (= lambda!394168 lambda!394138))))

(declare-fun bs!1849359 () Bool)

(assert (= bs!1849359 (and b!6927477 b!6926923)))

(assert (=> bs!1849359 (= (and (= (regOne!34376 lt!2472224) r1!6342) (= (regTwo!34376 lt!2472224) r2!6280)) (= lambda!394168 lambda!394096))))

(assert (=> bs!1849355 (= (and (= (regOne!34376 lt!2472224) r1!6342) (= (regTwo!34376 lt!2472224) r2!6280)) (= lambda!394168 lambda!394155))))

(declare-fun bs!1849360 () Bool)

(assert (= bs!1849360 (and b!6927477 b!6927386)))

(assert (=> bs!1849360 (not (= lambda!394168 lambda!394156))))

(assert (=> bs!1849356 (not (= lambda!394168 lambda!394093))))

(declare-fun bs!1849361 () Bool)

(assert (= bs!1849361 (and b!6927477 b!6926914)))

(assert (=> bs!1849361 (not (= lambda!394168 lambda!394099))))

(declare-fun bs!1849362 () Bool)

(assert (= bs!1849362 (and b!6927477 d!2165506)))

(assert (=> bs!1849362 (not (= lambda!394168 lambda!394150))))

(declare-fun bs!1849363 () Bool)

(assert (= bs!1849363 (and b!6927477 d!2165524)))

(assert (=> bs!1849363 (not (= lambda!394168 lambda!394153))))

(assert (=> bs!1849350 (= (and (= (_1!37092 lt!2472208) lt!2472214) (= (regOne!34376 lt!2472224) r2!6280) (= (regTwo!34376 lt!2472224) r3!135)) (= lambda!394168 lambda!394098))))

(declare-fun bs!1849364 () Bool)

(assert (= bs!1849364 (and b!6927477 b!6927186)))

(assert (=> bs!1849364 (= (and (= (_1!37092 lt!2472208) (_1!37092 lt!2472219)) (= (regOne!34376 lt!2472224) (regOne!34376 r1!6342)) (= (regTwo!34376 lt!2472224) (regTwo!34376 r1!6342))) (= lambda!394168 lambda!394135))))

(declare-fun bs!1849365 () Bool)

(assert (= bs!1849365 (and b!6927477 b!6927226)))

(assert (=> bs!1849365 (= (and (= (_1!37092 lt!2472208) lt!2472214) (= (regOne!34376 lt!2472224) (regOne!34376 lt!2472222)) (= (regTwo!34376 lt!2472224) (regTwo!34376 lt!2472222))) (= lambda!394168 lambda!394139))))

(assert (=> bs!1849359 (not (= lambda!394168 lambda!394095))))

(declare-fun bs!1849366 () Bool)

(assert (= bs!1849366 (and b!6927477 b!6927377)))

(assert (=> bs!1849366 (= (and (= (_1!37092 lt!2472208) s!14361) (= (regOne!34376 lt!2472224) (regOne!34376 lt!2472229)) (= (regTwo!34376 lt!2472224) (regTwo!34376 lt!2472229))) (= lambda!394168 lambda!394157))))

(declare-fun bs!1849367 () Bool)

(assert (= bs!1849367 (and b!6927477 b!6927195)))

(assert (=> bs!1849367 (not (= lambda!394168 lambda!394134))))

(declare-fun bs!1849368 () Bool)

(assert (= bs!1849368 (and b!6927477 d!2165462)))

(assert (=> bs!1849368 (not (= lambda!394168 lambda!394129))))

(declare-fun bs!1849369 () Bool)

(assert (= bs!1849369 (and b!6927477 b!6927206)))

(assert (=> bs!1849369 (= (and (= (_1!37092 lt!2472208) (_2!37092 lt!2472219)) (= (regOne!34376 lt!2472224) (regOne!34376 r2!6280)) (= (regTwo!34376 lt!2472224) (regTwo!34376 r2!6280))) (= lambda!394168 lambda!394137))))

(declare-fun bs!1849370 () Bool)

(assert (= bs!1849370 (and b!6927477 d!2165558)))

(assert (=> bs!1849370 (= (and (= (_1!37092 lt!2472208) s!14361) (= (regOne!34376 lt!2472224) lt!2472224) (= (regTwo!34376 lt!2472224) r3!135)) (= lambda!394168 lambda!394164))))

(assert (=> bs!1849353 (= (and (= (_1!37092 lt!2472208) lt!2472214) (= (regOne!34376 lt!2472224) r2!6280) (= (regTwo!34376 lt!2472224) r3!135)) (= lambda!394168 lambda!394147))))

(assert (=> bs!1849370 (not (= lambda!394168 lambda!394163))))

(assert (=> b!6927477 true))

(assert (=> b!6927477 true))

(declare-fun e!4168769 () Bool)

(declare-fun call!629550 () Bool)

(assert (=> b!6927477 (= e!4168769 call!629550)))

(declare-fun b!6927478 () Bool)

(declare-fun e!4168771 () Bool)

(assert (=> b!6927478 (= e!4168771 e!4168769)))

(declare-fun c!1285865 () Bool)

(assert (=> b!6927478 (= c!1285865 (is-Star!16932 lt!2472224))))

(declare-fun bm!629545 () Bool)

(declare-fun call!629551 () Bool)

(assert (=> bm!629545 (= call!629551 (isEmpty!38817 (_1!37092 lt!2472208)))))

(declare-fun b!6927479 () Bool)

(declare-fun e!4168772 () Bool)

(declare-fun e!4168774 () Bool)

(assert (=> b!6927479 (= e!4168772 e!4168774)))

(declare-fun res!2825271 () Bool)

(assert (=> b!6927479 (= res!2825271 (not (is-EmptyLang!16932 lt!2472224)))))

(assert (=> b!6927479 (=> (not res!2825271) (not e!4168774))))

(declare-fun b!6927480 () Bool)

(declare-fun e!4168775 () Bool)

(assert (=> b!6927480 (= e!4168775 (matchRSpec!3989 (regTwo!34377 lt!2472224) (_1!37092 lt!2472208)))))

(declare-fun b!6927481 () Bool)

(declare-fun e!4168773 () Bool)

(assert (=> b!6927481 (= e!4168773 (= (_1!37092 lt!2472208) (Cons!66561 (c!1285766 lt!2472224) Nil!66561)))))

(declare-fun b!6927482 () Bool)

(declare-fun res!2825272 () Bool)

(declare-fun e!4168770 () Bool)

(assert (=> b!6927482 (=> res!2825272 e!4168770)))

(assert (=> b!6927482 (= res!2825272 call!629551)))

(assert (=> b!6927482 (= e!4168769 e!4168770)))

(declare-fun b!6927483 () Bool)

(declare-fun c!1285866 () Bool)

(assert (=> b!6927483 (= c!1285866 (is-Union!16932 lt!2472224))))

(assert (=> b!6927483 (= e!4168773 e!4168771)))

(declare-fun b!6927484 () Bool)

(declare-fun c!1285863 () Bool)

(assert (=> b!6927484 (= c!1285863 (is-ElementMatch!16932 lt!2472224))))

(assert (=> b!6927484 (= e!4168774 e!4168773)))

(declare-fun bm!629546 () Bool)

(assert (=> bm!629546 (= call!629550 (Exists!3934 (ite c!1285865 lambda!394165 lambda!394168)))))

(declare-fun b!6927485 () Bool)

(assert (=> b!6927485 (= e!4168772 call!629551)))

(assert (=> b!6927486 (= e!4168770 call!629550)))

(declare-fun b!6927487 () Bool)

(assert (=> b!6927487 (= e!4168771 e!4168775)))

(declare-fun res!2825270 () Bool)

(assert (=> b!6927487 (= res!2825270 (matchRSpec!3989 (regOne!34377 lt!2472224) (_1!37092 lt!2472208)))))

(assert (=> b!6927487 (=> res!2825270 e!4168775)))

(declare-fun d!2165576 () Bool)

(declare-fun c!1285864 () Bool)

(assert (=> d!2165576 (= c!1285864 (is-EmptyExpr!16932 lt!2472224))))

(assert (=> d!2165576 (= (matchRSpec!3989 lt!2472224 (_1!37092 lt!2472208)) e!4168772)))

(assert (= (and d!2165576 c!1285864) b!6927485))

(assert (= (and d!2165576 (not c!1285864)) b!6927479))

(assert (= (and b!6927479 res!2825271) b!6927484))

(assert (= (and b!6927484 c!1285863) b!6927481))

(assert (= (and b!6927484 (not c!1285863)) b!6927483))

(assert (= (and b!6927483 c!1285866) b!6927487))

(assert (= (and b!6927483 (not c!1285866)) b!6927478))

(assert (= (and b!6927487 (not res!2825270)) b!6927480))

(assert (= (and b!6927478 c!1285865) b!6927482))

(assert (= (and b!6927478 (not c!1285865)) b!6927477))

(assert (= (and b!6927482 (not res!2825272)) b!6927486))

(assert (= (or b!6927486 b!6927477) bm!629546))

(assert (= (or b!6927485 b!6927482) bm!629545))

(assert (=> bm!629545 m!7636134))

(declare-fun m!7636142 () Bool)

(assert (=> b!6927480 m!7636142))

(declare-fun m!7636144 () Bool)

(assert (=> bm!629546 m!7636144))

(declare-fun m!7636146 () Bool)

(assert (=> b!6927487 m!7636146))

(assert (=> b!6926928 d!2165576))

(declare-fun bs!1849371 () Bool)

(declare-fun d!2165578 () Bool)

(assert (= bs!1849371 (and d!2165578 b!6926937)))

(declare-fun lambda!394171 () Int)

(assert (=> bs!1849371 (= (and (= s!14361 lt!2472214) (= lt!2472224 r2!6280)) (= lambda!394171 lambda!394097))))

(declare-fun bs!1849372 () Bool)

(assert (= bs!1849372 (and d!2165578 b!6927486)))

(assert (=> bs!1849372 (not (= lambda!394171 lambda!394165))))

(declare-fun bs!1849373 () Bool)

(assert (= bs!1849373 (and d!2165578 b!6927215)))

(assert (=> bs!1849373 (not (= lambda!394171 lambda!394136))))

(declare-fun bs!1849374 () Bool)

(assert (= bs!1849374 (and d!2165578 d!2165500)))

(assert (=> bs!1849374 (= (and (= s!14361 lt!2472214) (= lt!2472224 r2!6280)) (= lambda!394171 lambda!394146))))

(declare-fun bs!1849375 () Bool)

(assert (= bs!1849375 (and d!2165578 b!6927402)))

(assert (=> bs!1849375 (not (= lambda!394171 lambda!394159))))

(declare-fun bs!1849376 () Bool)

(assert (= bs!1849376 (and d!2165578 d!2165532)))

(assert (=> bs!1849376 (= (and (= s!14361 (_1!37092 lt!2472208)) (= lt!2472224 r1!6342) (= r3!135 r2!6280)) (= lambda!394171 lambda!394154))))

(declare-fun bs!1849377 () Bool)

(assert (= bs!1849377 (and d!2165578 b!6926928)))

(assert (=> bs!1849377 (not (= lambda!394171 lambda!394094))))

(declare-fun bs!1849378 () Bool)

(assert (= bs!1849378 (and d!2165578 b!6927411)))

(assert (=> bs!1849378 (not (= lambda!394171 lambda!394158))))

(declare-fun bs!1849379 () Bool)

(assert (= bs!1849379 (and d!2165578 b!6927235)))

(assert (=> bs!1849379 (not (= lambda!394171 lambda!394138))))

(declare-fun bs!1849380 () Bool)

(assert (= bs!1849380 (and d!2165578 b!6926923)))

(assert (=> bs!1849380 (not (= lambda!394171 lambda!394096))))

(assert (=> bs!1849376 (not (= lambda!394171 lambda!394155))))

(declare-fun bs!1849381 () Bool)

(assert (= bs!1849381 (and d!2165578 b!6927386)))

(assert (=> bs!1849381 (not (= lambda!394171 lambda!394156))))

(assert (=> bs!1849377 (= lambda!394171 lambda!394093)))

(declare-fun bs!1849382 () Bool)

(assert (= bs!1849382 (and d!2165578 b!6926914)))

(assert (=> bs!1849382 (= (and (= lt!2472224 r1!6342) (= r3!135 lt!2472222)) (= lambda!394171 lambda!394099))))

(declare-fun bs!1849383 () Bool)

(assert (= bs!1849383 (and d!2165578 d!2165506)))

(assert (=> bs!1849383 (= (and (= s!14361 lt!2472214) (= lt!2472224 r2!6280)) (= lambda!394171 lambda!394150))))

(declare-fun bs!1849384 () Bool)

(assert (= bs!1849384 (and d!2165578 d!2165524)))

(assert (=> bs!1849384 (= (and (= s!14361 (_1!37092 lt!2472208)) (= lt!2472224 r1!6342) (= r3!135 r2!6280)) (= lambda!394171 lambda!394153))))

(assert (=> bs!1849371 (not (= lambda!394171 lambda!394098))))

(declare-fun bs!1849385 () Bool)

(assert (= bs!1849385 (and d!2165578 b!6927477)))

(assert (=> bs!1849385 (not (= lambda!394171 lambda!394168))))

(declare-fun bs!1849386 () Bool)

(assert (= bs!1849386 (and d!2165578 b!6927186)))

(assert (=> bs!1849386 (not (= lambda!394171 lambda!394135))))

(declare-fun bs!1849387 () Bool)

(assert (= bs!1849387 (and d!2165578 b!6927226)))

(assert (=> bs!1849387 (not (= lambda!394171 lambda!394139))))

(assert (=> bs!1849380 (= (and (= s!14361 (_1!37092 lt!2472208)) (= lt!2472224 r1!6342) (= r3!135 r2!6280)) (= lambda!394171 lambda!394095))))

(declare-fun bs!1849388 () Bool)

(assert (= bs!1849388 (and d!2165578 b!6927377)))

(assert (=> bs!1849388 (not (= lambda!394171 lambda!394157))))

(declare-fun bs!1849389 () Bool)

(assert (= bs!1849389 (and d!2165578 b!6927195)))

(assert (=> bs!1849389 (not (= lambda!394171 lambda!394134))))

(declare-fun bs!1849390 () Bool)

(assert (= bs!1849390 (and d!2165578 d!2165462)))

(assert (=> bs!1849390 (= (and (= lt!2472224 r1!6342) (= r3!135 lt!2472222)) (= lambda!394171 lambda!394129))))

(declare-fun bs!1849391 () Bool)

(assert (= bs!1849391 (and d!2165578 b!6927206)))

(assert (=> bs!1849391 (not (= lambda!394171 lambda!394137))))

(declare-fun bs!1849392 () Bool)

(assert (= bs!1849392 (and d!2165578 d!2165558)))

(assert (=> bs!1849392 (not (= lambda!394171 lambda!394164))))

(assert (=> bs!1849374 (not (= lambda!394171 lambda!394147))))

(assert (=> bs!1849392 (= lambda!394171 lambda!394163)))

(assert (=> d!2165578 true))

(assert (=> d!2165578 true))

(assert (=> d!2165578 true))

(assert (=> d!2165578 (= (isDefined!13404 (findConcatSeparation!3115 lt!2472224 r3!135 Nil!66561 s!14361 s!14361)) (Exists!3934 lambda!394171))))

(declare-fun lt!2472401 () Unit!160588)

(assert (=> d!2165578 (= lt!2472401 (choose!51583 lt!2472224 r3!135 s!14361))))

(assert (=> d!2165578 (validRegex!8638 lt!2472224)))

(assert (=> d!2165578 (= (lemmaFindConcatSeparationEquivalentToExists!2877 lt!2472224 r3!135 s!14361) lt!2472401)))

(declare-fun bs!1849393 () Bool)

(assert (= bs!1849393 d!2165578))

(assert (=> bs!1849393 m!7636102))

(assert (=> bs!1849393 m!7635650))

(assert (=> bs!1849393 m!7635650))

(declare-fun m!7636148 () Bool)

(assert (=> bs!1849393 m!7636148))

(declare-fun m!7636150 () Bool)

(assert (=> bs!1849393 m!7636150))

(declare-fun m!7636152 () Bool)

(assert (=> bs!1849393 m!7636152))

(assert (=> b!6926928 d!2165578))

(declare-fun bm!629551 () Bool)

(declare-fun call!629557 () Bool)

(declare-fun call!629558 () Bool)

(assert (=> bm!629551 (= call!629557 call!629558)))

(declare-fun bm!629552 () Bool)

(declare-fun c!1285875 () Bool)

(declare-fun c!1285876 () Bool)

(assert (=> bm!629552 (= call!629558 (validRegex!8638 (ite c!1285876 (reg!17261 r2!6280) (ite c!1285875 (regOne!34377 r2!6280) (regTwo!34376 r2!6280)))))))

(declare-fun b!6927521 () Bool)

(declare-fun res!2825290 () Bool)

(declare-fun e!4168797 () Bool)

(assert (=> b!6927521 (=> res!2825290 e!4168797)))

(assert (=> b!6927521 (= res!2825290 (not (is-Concat!25777 r2!6280)))))

(declare-fun e!4168798 () Bool)

(assert (=> b!6927521 (= e!4168798 e!4168797)))

(declare-fun b!6927522 () Bool)

(declare-fun res!2825292 () Bool)

(declare-fun e!4168794 () Bool)

(assert (=> b!6927522 (=> (not res!2825292) (not e!4168794))))

(assert (=> b!6927522 (= res!2825292 call!629557)))

(assert (=> b!6927522 (= e!4168798 e!4168794)))

(declare-fun b!6927523 () Bool)

(declare-fun e!4168795 () Bool)

(declare-fun e!4168796 () Bool)

(assert (=> b!6927523 (= e!4168795 e!4168796)))

(assert (=> b!6927523 (= c!1285876 (is-Star!16932 r2!6280))))

(declare-fun b!6927524 () Bool)

(declare-fun e!4168800 () Bool)

(assert (=> b!6927524 (= e!4168800 call!629557)))

(declare-fun b!6927525 () Bool)

(assert (=> b!6927525 (= e!4168796 e!4168798)))

(assert (=> b!6927525 (= c!1285875 (is-Union!16932 r2!6280))))

(declare-fun bm!629553 () Bool)

(declare-fun call!629556 () Bool)

(assert (=> bm!629553 (= call!629556 (validRegex!8638 (ite c!1285875 (regTwo!34377 r2!6280) (regOne!34376 r2!6280))))))

(declare-fun b!6927526 () Bool)

(assert (=> b!6927526 (= e!4168794 call!629556)))

(declare-fun d!2165580 () Bool)

(declare-fun res!2825293 () Bool)

(assert (=> d!2165580 (=> res!2825293 e!4168795)))

(assert (=> d!2165580 (= res!2825293 (is-ElementMatch!16932 r2!6280))))

(assert (=> d!2165580 (= (validRegex!8638 r2!6280) e!4168795)))

(declare-fun b!6927520 () Bool)

(declare-fun e!4168799 () Bool)

(assert (=> b!6927520 (= e!4168799 call!629558)))

(declare-fun b!6927527 () Bool)

(assert (=> b!6927527 (= e!4168797 e!4168800)))

(declare-fun res!2825291 () Bool)

(assert (=> b!6927527 (=> (not res!2825291) (not e!4168800))))

(assert (=> b!6927527 (= res!2825291 call!629556)))

(declare-fun b!6927528 () Bool)

(assert (=> b!6927528 (= e!4168796 e!4168799)))

(declare-fun res!2825289 () Bool)

(assert (=> b!6927528 (= res!2825289 (not (nullable!6757 (reg!17261 r2!6280))))))

(assert (=> b!6927528 (=> (not res!2825289) (not e!4168799))))

(assert (= (and d!2165580 (not res!2825293)) b!6927523))

(assert (= (and b!6927523 c!1285876) b!6927528))

(assert (= (and b!6927523 (not c!1285876)) b!6927525))

(assert (= (and b!6927528 res!2825289) b!6927520))

(assert (= (and b!6927525 c!1285875) b!6927522))

(assert (= (and b!6927525 (not c!1285875)) b!6927521))

(assert (= (and b!6927522 res!2825292) b!6927526))

(assert (= (and b!6927521 (not res!2825290)) b!6927527))

(assert (= (and b!6927527 res!2825291) b!6927524))

(assert (= (or b!6927522 b!6927524) bm!629551))

(assert (= (or b!6927526 b!6927527) bm!629553))

(assert (= (or b!6927520 bm!629551) bm!629552))

(declare-fun m!7636154 () Bool)

(assert (=> bm!629552 m!7636154))

(declare-fun m!7636156 () Bool)

(assert (=> bm!629553 m!7636156))

(declare-fun m!7636158 () Bool)

(assert (=> b!6927528 m!7636158))

(assert (=> b!6926918 d!2165580))

(declare-fun b!6927529 () Bool)

(declare-fun e!4168801 () Bool)

(declare-fun lt!2472402 () Bool)

(assert (=> b!6927529 (= e!4168801 (not lt!2472402))))

(declare-fun b!6927530 () Bool)

(declare-fun e!4168803 () Bool)

(assert (=> b!6927530 (= e!4168803 (nullable!6757 r3!135))))

(declare-fun b!6927531 () Bool)

(declare-fun e!4168802 () Bool)

(assert (=> b!6927531 (= e!4168802 (= (head!13885 (_2!37092 lt!2472208)) (c!1285766 r3!135)))))

(declare-fun b!6927532 () Bool)

(declare-fun res!2825297 () Bool)

(declare-fun e!4168806 () Bool)

(assert (=> b!6927532 (=> res!2825297 e!4168806)))

(assert (=> b!6927532 (= res!2825297 (not (isEmpty!38817 (tail!12937 (_2!37092 lt!2472208)))))))

(declare-fun b!6927533 () Bool)

(declare-fun res!2825300 () Bool)

(declare-fun e!4168807 () Bool)

(assert (=> b!6927533 (=> res!2825300 e!4168807)))

(assert (=> b!6927533 (= res!2825300 e!4168802)))

(declare-fun res!2825294 () Bool)

(assert (=> b!6927533 (=> (not res!2825294) (not e!4168802))))

(assert (=> b!6927533 (= res!2825294 lt!2472402)))

(declare-fun b!6927534 () Bool)

(assert (=> b!6927534 (= e!4168803 (matchR!9071 (derivativeStep!5432 r3!135 (head!13885 (_2!37092 lt!2472208))) (tail!12937 (_2!37092 lt!2472208))))))

(declare-fun b!6927535 () Bool)

(declare-fun res!2825296 () Bool)

(assert (=> b!6927535 (=> (not res!2825296) (not e!4168802))))

(assert (=> b!6927535 (= res!2825296 (isEmpty!38817 (tail!12937 (_2!37092 lt!2472208))))))

(declare-fun b!6927536 () Bool)

(declare-fun e!4168805 () Bool)

(assert (=> b!6927536 (= e!4168805 e!4168806)))

(declare-fun res!2825295 () Bool)

(assert (=> b!6927536 (=> res!2825295 e!4168806)))

(declare-fun call!629559 () Bool)

(assert (=> b!6927536 (= res!2825295 call!629559)))

(declare-fun b!6927537 () Bool)

(declare-fun res!2825301 () Bool)

(assert (=> b!6927537 (=> res!2825301 e!4168807)))

(assert (=> b!6927537 (= res!2825301 (not (is-ElementMatch!16932 r3!135)))))

(assert (=> b!6927537 (= e!4168801 e!4168807)))

(declare-fun d!2165582 () Bool)

(declare-fun e!4168804 () Bool)

(assert (=> d!2165582 e!4168804))

(declare-fun c!1285877 () Bool)

(assert (=> d!2165582 (= c!1285877 (is-EmptyExpr!16932 r3!135))))

(assert (=> d!2165582 (= lt!2472402 e!4168803)))

(declare-fun c!1285878 () Bool)

(assert (=> d!2165582 (= c!1285878 (isEmpty!38817 (_2!37092 lt!2472208)))))

(assert (=> d!2165582 (validRegex!8638 r3!135)))

(assert (=> d!2165582 (= (matchR!9071 r3!135 (_2!37092 lt!2472208)) lt!2472402)))

(declare-fun b!6927538 () Bool)

(assert (=> b!6927538 (= e!4168807 e!4168805)))

(declare-fun res!2825298 () Bool)

(assert (=> b!6927538 (=> (not res!2825298) (not e!4168805))))

(assert (=> b!6927538 (= res!2825298 (not lt!2472402))))

(declare-fun b!6927539 () Bool)

(declare-fun res!2825299 () Bool)

(assert (=> b!6927539 (=> (not res!2825299) (not e!4168802))))

(assert (=> b!6927539 (= res!2825299 (not call!629559))))

(declare-fun bm!629554 () Bool)

(assert (=> bm!629554 (= call!629559 (isEmpty!38817 (_2!37092 lt!2472208)))))

(declare-fun b!6927540 () Bool)

(assert (=> b!6927540 (= e!4168804 (= lt!2472402 call!629559))))

(declare-fun b!6927541 () Bool)

(assert (=> b!6927541 (= e!4168806 (not (= (head!13885 (_2!37092 lt!2472208)) (c!1285766 r3!135))))))

(declare-fun b!6927542 () Bool)

(assert (=> b!6927542 (= e!4168804 e!4168801)))

(declare-fun c!1285879 () Bool)

(assert (=> b!6927542 (= c!1285879 (is-EmptyLang!16932 r3!135))))

(assert (= (and d!2165582 c!1285878) b!6927530))

(assert (= (and d!2165582 (not c!1285878)) b!6927534))

(assert (= (and d!2165582 c!1285877) b!6927540))

(assert (= (and d!2165582 (not c!1285877)) b!6927542))

(assert (= (and b!6927542 c!1285879) b!6927529))

(assert (= (and b!6927542 (not c!1285879)) b!6927537))

(assert (= (and b!6927537 (not res!2825301)) b!6927533))

(assert (= (and b!6927533 res!2825294) b!6927539))

(assert (= (and b!6927539 res!2825299) b!6927535))

(assert (= (and b!6927535 res!2825296) b!6927531))

(assert (= (and b!6927533 (not res!2825300)) b!6927538))

(assert (= (and b!6927538 res!2825298) b!6927536))

(assert (= (and b!6927536 (not res!2825295)) b!6927532))

(assert (= (and b!6927532 (not res!2825297)) b!6927541))

(assert (= (or b!6927540 b!6927536 b!6927539) bm!629554))

(declare-fun m!7636160 () Bool)

(assert (=> b!6927532 m!7636160))

(assert (=> b!6927532 m!7636160))

(declare-fun m!7636162 () Bool)

(assert (=> b!6927532 m!7636162))

(declare-fun m!7636164 () Bool)

(assert (=> b!6927541 m!7636164))

(assert (=> b!6927534 m!7636164))

(assert (=> b!6927534 m!7636164))

(declare-fun m!7636166 () Bool)

(assert (=> b!6927534 m!7636166))

(assert (=> b!6927534 m!7636160))

(assert (=> b!6927534 m!7636166))

(assert (=> b!6927534 m!7636160))

(declare-fun m!7636168 () Bool)

(assert (=> b!6927534 m!7636168))

(assert (=> b!6927535 m!7636160))

(assert (=> b!6927535 m!7636160))

(assert (=> b!6927535 m!7636162))

(assert (=> b!6927531 m!7636164))

(declare-fun m!7636170 () Bool)

(assert (=> d!2165582 m!7636170))

(assert (=> d!2165582 m!7635546))

(assert (=> bm!629554 m!7636170))

(declare-fun m!7636172 () Bool)

(assert (=> b!6927530 m!7636172))

(assert (=> b!6926929 d!2165582))

(declare-fun e!4168810 () Bool)

(assert (=> b!6926920 (= tp!1909312 e!4168810)))

(declare-fun b!6927553 () Bool)

(assert (=> b!6927553 (= e!4168810 tp_is_empty!43089)))

(declare-fun b!6927555 () Bool)

(declare-fun tp!1909378 () Bool)

(assert (=> b!6927555 (= e!4168810 tp!1909378)))

(declare-fun b!6927554 () Bool)

(declare-fun tp!1909374 () Bool)

(declare-fun tp!1909377 () Bool)

(assert (=> b!6927554 (= e!4168810 (and tp!1909374 tp!1909377))))

(declare-fun b!6927556 () Bool)

(declare-fun tp!1909376 () Bool)

(declare-fun tp!1909375 () Bool)

(assert (=> b!6927556 (= e!4168810 (and tp!1909376 tp!1909375))))

(assert (= (and b!6926920 (is-ElementMatch!16932 (regOne!34376 r1!6342))) b!6927553))

(assert (= (and b!6926920 (is-Concat!25777 (regOne!34376 r1!6342))) b!6927554))

(assert (= (and b!6926920 (is-Star!16932 (regOne!34376 r1!6342))) b!6927555))

(assert (= (and b!6926920 (is-Union!16932 (regOne!34376 r1!6342))) b!6927556))

(declare-fun e!4168811 () Bool)

(assert (=> b!6926920 (= tp!1909313 e!4168811)))

(declare-fun b!6927557 () Bool)

(assert (=> b!6927557 (= e!4168811 tp_is_empty!43089)))

(declare-fun b!6927559 () Bool)

(declare-fun tp!1909383 () Bool)

(assert (=> b!6927559 (= e!4168811 tp!1909383)))

(declare-fun b!6927558 () Bool)

(declare-fun tp!1909379 () Bool)

(declare-fun tp!1909382 () Bool)

(assert (=> b!6927558 (= e!4168811 (and tp!1909379 tp!1909382))))

(declare-fun b!6927560 () Bool)

(declare-fun tp!1909381 () Bool)

(declare-fun tp!1909380 () Bool)

(assert (=> b!6927560 (= e!4168811 (and tp!1909381 tp!1909380))))

(assert (= (and b!6926920 (is-ElementMatch!16932 (regTwo!34376 r1!6342))) b!6927557))

(assert (= (and b!6926920 (is-Concat!25777 (regTwo!34376 r1!6342))) b!6927558))

(assert (= (and b!6926920 (is-Star!16932 (regTwo!34376 r1!6342))) b!6927559))

(assert (= (and b!6926920 (is-Union!16932 (regTwo!34376 r1!6342))) b!6927560))

(declare-fun e!4168812 () Bool)

(assert (=> b!6926915 (= tp!1909300 e!4168812)))

(declare-fun b!6927561 () Bool)

(assert (=> b!6927561 (= e!4168812 tp_is_empty!43089)))

(declare-fun b!6927563 () Bool)

(declare-fun tp!1909388 () Bool)

(assert (=> b!6927563 (= e!4168812 tp!1909388)))

(declare-fun b!6927562 () Bool)

(declare-fun tp!1909384 () Bool)

(declare-fun tp!1909387 () Bool)

(assert (=> b!6927562 (= e!4168812 (and tp!1909384 tp!1909387))))

(declare-fun b!6927564 () Bool)

(declare-fun tp!1909386 () Bool)

(declare-fun tp!1909385 () Bool)

(assert (=> b!6927564 (= e!4168812 (and tp!1909386 tp!1909385))))

(assert (= (and b!6926915 (is-ElementMatch!16932 (reg!17261 r1!6342))) b!6927561))

(assert (= (and b!6926915 (is-Concat!25777 (reg!17261 r1!6342))) b!6927562))

(assert (= (and b!6926915 (is-Star!16932 (reg!17261 r1!6342))) b!6927563))

(assert (= (and b!6926915 (is-Union!16932 (reg!17261 r1!6342))) b!6927564))

(declare-fun e!4168813 () Bool)

(assert (=> b!6926932 (= tp!1909304 e!4168813)))

(declare-fun b!6927565 () Bool)

(assert (=> b!6927565 (= e!4168813 tp_is_empty!43089)))

(declare-fun b!6927567 () Bool)

(declare-fun tp!1909393 () Bool)

(assert (=> b!6927567 (= e!4168813 tp!1909393)))

(declare-fun b!6927566 () Bool)

(declare-fun tp!1909389 () Bool)

(declare-fun tp!1909392 () Bool)

(assert (=> b!6927566 (= e!4168813 (and tp!1909389 tp!1909392))))

(declare-fun b!6927568 () Bool)

(declare-fun tp!1909391 () Bool)

(declare-fun tp!1909390 () Bool)

(assert (=> b!6927568 (= e!4168813 (and tp!1909391 tp!1909390))))

(assert (= (and b!6926932 (is-ElementMatch!16932 (regOne!34376 r3!135))) b!6927565))

(assert (= (and b!6926932 (is-Concat!25777 (regOne!34376 r3!135))) b!6927566))

(assert (= (and b!6926932 (is-Star!16932 (regOne!34376 r3!135))) b!6927567))

(assert (= (and b!6926932 (is-Union!16932 (regOne!34376 r3!135))) b!6927568))

(declare-fun e!4168814 () Bool)

(assert (=> b!6926932 (= tp!1909310 e!4168814)))

(declare-fun b!6927569 () Bool)

(assert (=> b!6927569 (= e!4168814 tp_is_empty!43089)))

(declare-fun b!6927571 () Bool)

(declare-fun tp!1909398 () Bool)

(assert (=> b!6927571 (= e!4168814 tp!1909398)))

(declare-fun b!6927570 () Bool)

(declare-fun tp!1909394 () Bool)

(declare-fun tp!1909397 () Bool)

(assert (=> b!6927570 (= e!4168814 (and tp!1909394 tp!1909397))))

(declare-fun b!6927572 () Bool)

(declare-fun tp!1909396 () Bool)

(declare-fun tp!1909395 () Bool)

(assert (=> b!6927572 (= e!4168814 (and tp!1909396 tp!1909395))))

(assert (= (and b!6926932 (is-ElementMatch!16932 (regTwo!34376 r3!135))) b!6927569))

(assert (= (and b!6926932 (is-Concat!25777 (regTwo!34376 r3!135))) b!6927570))

(assert (= (and b!6926932 (is-Star!16932 (regTwo!34376 r3!135))) b!6927571))

(assert (= (and b!6926932 (is-Union!16932 (regTwo!34376 r3!135))) b!6927572))

(declare-fun e!4168817 () Bool)

(assert (=> b!6926927 (= tp!1909309 e!4168817)))

(declare-fun b!6927573 () Bool)

(assert (=> b!6927573 (= e!4168817 tp_is_empty!43089)))

(declare-fun b!6927575 () Bool)

(declare-fun tp!1909403 () Bool)

(assert (=> b!6927575 (= e!4168817 tp!1909403)))

(declare-fun b!6927574 () Bool)

(declare-fun tp!1909399 () Bool)

(declare-fun tp!1909402 () Bool)

(assert (=> b!6927574 (= e!4168817 (and tp!1909399 tp!1909402))))

(declare-fun b!6927576 () Bool)

(declare-fun tp!1909401 () Bool)

(declare-fun tp!1909400 () Bool)

(assert (=> b!6927576 (= e!4168817 (and tp!1909401 tp!1909400))))

(assert (= (and b!6926927 (is-ElementMatch!16932 (regOne!34377 r3!135))) b!6927573))

(assert (= (and b!6926927 (is-Concat!25777 (regOne!34377 r3!135))) b!6927574))

(assert (= (and b!6926927 (is-Star!16932 (regOne!34377 r3!135))) b!6927575))

(assert (= (and b!6926927 (is-Union!16932 (regOne!34377 r3!135))) b!6927576))

(declare-fun e!4168823 () Bool)

(assert (=> b!6926927 (= tp!1909301 e!4168823)))

(declare-fun b!6927588 () Bool)

(assert (=> b!6927588 (= e!4168823 tp_is_empty!43089)))

(declare-fun b!6927590 () Bool)

(declare-fun tp!1909408 () Bool)

(assert (=> b!6927590 (= e!4168823 tp!1909408)))

(declare-fun b!6927589 () Bool)

(declare-fun tp!1909404 () Bool)

(declare-fun tp!1909407 () Bool)

(assert (=> b!6927589 (= e!4168823 (and tp!1909404 tp!1909407))))

(declare-fun b!6927591 () Bool)

(declare-fun tp!1909406 () Bool)

(declare-fun tp!1909405 () Bool)

(assert (=> b!6927591 (= e!4168823 (and tp!1909406 tp!1909405))))

(assert (= (and b!6926927 (is-ElementMatch!16932 (regTwo!34377 r3!135))) b!6927588))

(assert (= (and b!6926927 (is-Concat!25777 (regTwo!34377 r3!135))) b!6927589))

(assert (= (and b!6926927 (is-Star!16932 (regTwo!34377 r3!135))) b!6927590))

(assert (= (and b!6926927 (is-Union!16932 (regTwo!34377 r3!135))) b!6927591))

(declare-fun e!4168824 () Bool)

(assert (=> b!6926921 (= tp!1909305 e!4168824)))

(declare-fun b!6927592 () Bool)

(assert (=> b!6927592 (= e!4168824 tp_is_empty!43089)))

(declare-fun b!6927594 () Bool)

(declare-fun tp!1909413 () Bool)

(assert (=> b!6927594 (= e!4168824 tp!1909413)))

(declare-fun b!6927593 () Bool)

(declare-fun tp!1909409 () Bool)

(declare-fun tp!1909412 () Bool)

(assert (=> b!6927593 (= e!4168824 (and tp!1909409 tp!1909412))))

(declare-fun b!6927595 () Bool)

(declare-fun tp!1909411 () Bool)

(declare-fun tp!1909410 () Bool)

(assert (=> b!6927595 (= e!4168824 (and tp!1909411 tp!1909410))))

(assert (= (and b!6926921 (is-ElementMatch!16932 (regOne!34377 r2!6280))) b!6927592))

(assert (= (and b!6926921 (is-Concat!25777 (regOne!34377 r2!6280))) b!6927593))

(assert (= (and b!6926921 (is-Star!16932 (regOne!34377 r2!6280))) b!6927594))

(assert (= (and b!6926921 (is-Union!16932 (regOne!34377 r2!6280))) b!6927595))

(declare-fun e!4168825 () Bool)

(assert (=> b!6926921 (= tp!1909308 e!4168825)))

(declare-fun b!6927596 () Bool)

(assert (=> b!6927596 (= e!4168825 tp_is_empty!43089)))

(declare-fun b!6927598 () Bool)

(declare-fun tp!1909418 () Bool)

(assert (=> b!6927598 (= e!4168825 tp!1909418)))

(declare-fun b!6927597 () Bool)

(declare-fun tp!1909414 () Bool)

(declare-fun tp!1909417 () Bool)

(assert (=> b!6927597 (= e!4168825 (and tp!1909414 tp!1909417))))

(declare-fun b!6927599 () Bool)

(declare-fun tp!1909416 () Bool)

(declare-fun tp!1909415 () Bool)

(assert (=> b!6927599 (= e!4168825 (and tp!1909416 tp!1909415))))

(assert (= (and b!6926921 (is-ElementMatch!16932 (regTwo!34377 r2!6280))) b!6927596))

(assert (= (and b!6926921 (is-Concat!25777 (regTwo!34377 r2!6280))) b!6927597))

(assert (= (and b!6926921 (is-Star!16932 (regTwo!34377 r2!6280))) b!6927598))

(assert (= (and b!6926921 (is-Union!16932 (regTwo!34377 r2!6280))) b!6927599))

(declare-fun e!4168826 () Bool)

(assert (=> b!6926933 (= tp!1909311 e!4168826)))

(declare-fun b!6927600 () Bool)

(assert (=> b!6927600 (= e!4168826 tp_is_empty!43089)))

(declare-fun b!6927602 () Bool)

(declare-fun tp!1909423 () Bool)

(assert (=> b!6927602 (= e!4168826 tp!1909423)))

(declare-fun b!6927601 () Bool)

(declare-fun tp!1909419 () Bool)

(declare-fun tp!1909422 () Bool)

(assert (=> b!6927601 (= e!4168826 (and tp!1909419 tp!1909422))))

(declare-fun b!6927603 () Bool)

(declare-fun tp!1909421 () Bool)

(declare-fun tp!1909420 () Bool)

(assert (=> b!6927603 (= e!4168826 (and tp!1909421 tp!1909420))))

(assert (= (and b!6926933 (is-ElementMatch!16932 (reg!17261 r3!135))) b!6927600))

(assert (= (and b!6926933 (is-Concat!25777 (reg!17261 r3!135))) b!6927601))

(assert (= (and b!6926933 (is-Star!16932 (reg!17261 r3!135))) b!6927602))

(assert (= (and b!6926933 (is-Union!16932 (reg!17261 r3!135))) b!6927603))

(declare-fun e!4168827 () Bool)

(assert (=> b!6926924 (= tp!1909314 e!4168827)))

(declare-fun b!6927604 () Bool)

(assert (=> b!6927604 (= e!4168827 tp_is_empty!43089)))

(declare-fun b!6927606 () Bool)

(declare-fun tp!1909428 () Bool)

(assert (=> b!6927606 (= e!4168827 tp!1909428)))

(declare-fun b!6927605 () Bool)

(declare-fun tp!1909424 () Bool)

(declare-fun tp!1909427 () Bool)

(assert (=> b!6927605 (= e!4168827 (and tp!1909424 tp!1909427))))

(declare-fun b!6927607 () Bool)

(declare-fun tp!1909426 () Bool)

(declare-fun tp!1909425 () Bool)

(assert (=> b!6927607 (= e!4168827 (and tp!1909426 tp!1909425))))

(assert (= (and b!6926924 (is-ElementMatch!16932 (regOne!34377 r1!6342))) b!6927604))

(assert (= (and b!6926924 (is-Concat!25777 (regOne!34377 r1!6342))) b!6927605))

(assert (= (and b!6926924 (is-Star!16932 (regOne!34377 r1!6342))) b!6927606))

(assert (= (and b!6926924 (is-Union!16932 (regOne!34377 r1!6342))) b!6927607))

(declare-fun e!4168828 () Bool)

(assert (=> b!6926924 (= tp!1909306 e!4168828)))

(declare-fun b!6927608 () Bool)

(assert (=> b!6927608 (= e!4168828 tp_is_empty!43089)))

(declare-fun b!6927610 () Bool)

(declare-fun tp!1909433 () Bool)

(assert (=> b!6927610 (= e!4168828 tp!1909433)))

(declare-fun b!6927609 () Bool)

(declare-fun tp!1909429 () Bool)

(declare-fun tp!1909432 () Bool)

(assert (=> b!6927609 (= e!4168828 (and tp!1909429 tp!1909432))))

(declare-fun b!6927611 () Bool)

(declare-fun tp!1909431 () Bool)

(declare-fun tp!1909430 () Bool)

(assert (=> b!6927611 (= e!4168828 (and tp!1909431 tp!1909430))))

(assert (= (and b!6926924 (is-ElementMatch!16932 (regTwo!34377 r1!6342))) b!6927608))

(assert (= (and b!6926924 (is-Concat!25777 (regTwo!34377 r1!6342))) b!6927609))

(assert (= (and b!6926924 (is-Star!16932 (regTwo!34377 r1!6342))) b!6927610))

(assert (= (and b!6926924 (is-Union!16932 (regTwo!34377 r1!6342))) b!6927611))

(declare-fun e!4168829 () Bool)

(assert (=> b!6926919 (= tp!1909302 e!4168829)))

(declare-fun b!6927612 () Bool)

(assert (=> b!6927612 (= e!4168829 tp_is_empty!43089)))

(declare-fun b!6927614 () Bool)

(declare-fun tp!1909438 () Bool)

(assert (=> b!6927614 (= e!4168829 tp!1909438)))

(declare-fun b!6927613 () Bool)

(declare-fun tp!1909434 () Bool)

(declare-fun tp!1909437 () Bool)

(assert (=> b!6927613 (= e!4168829 (and tp!1909434 tp!1909437))))

(declare-fun b!6927615 () Bool)

(declare-fun tp!1909436 () Bool)

(declare-fun tp!1909435 () Bool)

(assert (=> b!6927615 (= e!4168829 (and tp!1909436 tp!1909435))))

(assert (= (and b!6926919 (is-ElementMatch!16932 (reg!17261 r2!6280))) b!6927612))

(assert (= (and b!6926919 (is-Concat!25777 (reg!17261 r2!6280))) b!6927613))

(assert (= (and b!6926919 (is-Star!16932 (reg!17261 r2!6280))) b!6927614))

(assert (= (and b!6926919 (is-Union!16932 (reg!17261 r2!6280))) b!6927615))

(declare-fun e!4168830 () Bool)

(assert (=> b!6926935 (= tp!1909315 e!4168830)))

(declare-fun b!6927616 () Bool)

(assert (=> b!6927616 (= e!4168830 tp_is_empty!43089)))

(declare-fun b!6927618 () Bool)

(declare-fun tp!1909443 () Bool)

(assert (=> b!6927618 (= e!4168830 tp!1909443)))

(declare-fun b!6927617 () Bool)

(declare-fun tp!1909439 () Bool)

(declare-fun tp!1909442 () Bool)

(assert (=> b!6927617 (= e!4168830 (and tp!1909439 tp!1909442))))

(declare-fun b!6927619 () Bool)

(declare-fun tp!1909441 () Bool)

(declare-fun tp!1909440 () Bool)

(assert (=> b!6927619 (= e!4168830 (and tp!1909441 tp!1909440))))

(assert (= (and b!6926935 (is-ElementMatch!16932 (regOne!34376 r2!6280))) b!6927616))

(assert (= (and b!6926935 (is-Concat!25777 (regOne!34376 r2!6280))) b!6927617))

(assert (= (and b!6926935 (is-Star!16932 (regOne!34376 r2!6280))) b!6927618))

(assert (= (and b!6926935 (is-Union!16932 (regOne!34376 r2!6280))) b!6927619))

(declare-fun e!4168831 () Bool)

(assert (=> b!6926935 (= tp!1909303 e!4168831)))

(declare-fun b!6927620 () Bool)

(assert (=> b!6927620 (= e!4168831 tp_is_empty!43089)))

(declare-fun b!6927622 () Bool)

(declare-fun tp!1909448 () Bool)

(assert (=> b!6927622 (= e!4168831 tp!1909448)))

(declare-fun b!6927621 () Bool)

(declare-fun tp!1909444 () Bool)

(declare-fun tp!1909447 () Bool)

(assert (=> b!6927621 (= e!4168831 (and tp!1909444 tp!1909447))))

(declare-fun b!6927623 () Bool)

(declare-fun tp!1909446 () Bool)

(declare-fun tp!1909445 () Bool)

(assert (=> b!6927623 (= e!4168831 (and tp!1909446 tp!1909445))))

(assert (= (and b!6926935 (is-ElementMatch!16932 (regTwo!34376 r2!6280))) b!6927620))

(assert (= (and b!6926935 (is-Concat!25777 (regTwo!34376 r2!6280))) b!6927621))

(assert (= (and b!6926935 (is-Star!16932 (regTwo!34376 r2!6280))) b!6927622))

(assert (= (and b!6926935 (is-Union!16932 (regTwo!34376 r2!6280))) b!6927623))

(declare-fun b!6927628 () Bool)

(declare-fun e!4168834 () Bool)

(declare-fun tp!1909451 () Bool)

(assert (=> b!6927628 (= e!4168834 (and tp_is_empty!43089 tp!1909451))))

(assert (=> b!6926934 (= tp!1909307 e!4168834)))

(assert (= (and b!6926934 (is-Cons!66561 (t!380428 s!14361))) b!6927628))

(push 1)

(assert (not bm!629525))

(assert (not b!6927311))

(assert (not d!2165528))

(assert (not b!6927129))

(assert (not d!2165522))

(assert (not bm!629519))

(assert (not b!6927464))

(assert (not b!6927591))

(assert (not b!6927295))

(assert (not b!6927601))

(assert (not b!6927563))

(assert (not b!6927309))

(assert (not b!6927475))

(assert (not d!2165498))

(assert (not d!2165550))

(assert (not b!6927422))

(assert (not bm!629552))

(assert (not b!6927353))

(assert (not b!6927487))

(assert (not b!6927558))

(assert (not b!6927081))

(assert (not b!6927459))

(assert (not d!2165502))

(assert (not b!6927622))

(assert (not b!6927465))

(assert (not b!6927461))

(assert (not d!2165532))

(assert (not d!2165554))

(assert (not b!6927258))

(assert (not d!2165492))

(assert (not b!6927351))

(assert (not bm!629539))

(assert (not d!2165534))

(assert (not d!2165496))

(assert (not bm!629520))

(assert (not b!6927534))

(assert (not b!6927405))

(assert (not bm!629512))

(assert (not b!6927607))

(assert (not b!6927570))

(assert (not b!6927468))

(assert (not b!6927256))

(assert (not b!6927623))

(assert (not b!6927628))

(assert (not b!6927480))

(assert (not d!2165476))

(assert (not b!6927264))

(assert (not b!6927443))

(assert (not b!6927374))

(assert tp_is_empty!43089)

(assert (not b!6927595))

(assert (not b!6927429))

(assert (not b!6927119))

(assert (not bm!629542))

(assert (not d!2165570))

(assert (not b!6927306))

(assert (not bm!629540))

(assert (not b!6927574))

(assert (not b!6927086))

(assert (not b!6927356))

(assert (not b!6927610))

(assert (not b!6927568))

(assert (not b!6927225))

(assert (not b!6927469))

(assert (not b!6927602))

(assert (not d!2165460))

(assert (not b!6927617))

(assert (not b!6927530))

(assert (not b!6927259))

(assert (not b!6927134))

(assert (not b!6927572))

(assert (not d!2165458))

(assert (not d!2165566))

(assert (not bm!629553))

(assert (not b!6927615))

(assert (not b!6927560))

(assert (not b!6927556))

(assert (not b!6927614))

(assert (not b!6927605))

(assert (not bm!629546))

(assert (not b!6927133))

(assert (not d!2165462))

(assert (not b!6927454))

(assert (not bm!629545))

(assert (not d!2165530))

(assert (not b!6927466))

(assert (not b!6927365))

(assert (not b!6927419))

(assert (not d!2165474))

(assert (not b!6927087))

(assert (not b!6927350))

(assert (not b!6927611))

(assert (not b!6927375))

(assert (not b!6927260))

(assert (not b!6927613))

(assert (not b!6927083))

(assert (not b!6927555))

(assert (not d!2165582))

(assert (not bm!629523))

(assert (not b!6927299))

(assert (not d!2165512))

(assert (not d!2165524))

(assert (not b!6927361))

(assert (not bm!629543))

(assert (not b!6927423))

(assert (not d!2165508))

(assert (not b!6927357))

(assert (not b!6927310))

(assert (not d!2165470))

(assert (not d!2165562))

(assert (not d!2165500))

(assert (not b!6927085))

(assert (not bm!629526))

(assert (not b!6927590))

(assert (not d!2165520))

(assert (not b!6927080))

(assert (not b!6927455))

(assert (not b!6927453))

(assert (not bm!629535))

(assert (not d!2165472))

(assert (not bm!629518))

(assert (not bm!629530))

(assert (not bm!629524))

(assert (not b!6927432))

(assert (not b!6927254))

(assert (not b!6927362))

(assert (not b!6927297))

(assert (not bm!629554))

(assert (not b!6927229))

(assert (not d!2165548))

(assert (not b!6927387))

(assert (not b!6927593))

(assert (not b!6927535))

(assert (not b!6927380))

(assert (not b!6927575))

(assert (not b!6927320))

(assert (not b!6927571))

(assert (not b!6927355))

(assert (not bm!629544))

(assert (not d!2165480))

(assert (not b!6927418))

(assert (not b!6927619))

(assert (not bm!629533))

(assert (not b!6927594))

(assert (not b!6927576))

(assert (not b!6927618))

(assert (not d!2165538))

(assert (not b!6927196))

(assert (not b!6927434))

(assert (not b!6927437))

(assert (not bm!629537))

(assert (not b!6927412))

(assert (not d!2165504))

(assert (not d!2165574))

(assert (not b!6927589))

(assert (not b!6927209))

(assert (not d!2165552))

(assert (not b!6927263))

(assert (not bm!629513))

(assert (not b!6927216))

(assert (not d!2165572))

(assert (not b!6927559))

(assert (not b!6927253))

(assert (not b!6927567))

(assert (not b!6927236))

(assert (not b!6927621))

(assert (not bm!629521))

(assert (not bm!629534))

(assert (not b!6927531))

(assert (not b!6927554))

(assert (not b!6927371))

(assert (not b!6927433))

(assert (not d!2165578))

(assert (not b!6927296))

(assert (not d!2165536))

(assert (not b!6927364))

(assert (not b!6927599))

(assert (not b!6927566))

(assert (not b!6927300))

(assert (not b!6927314))

(assert (not b!6927189))

(assert (not b!6927603))

(assert (not bm!629529))

(assert (not d!2165540))

(assert (not b!6927532))

(assert (not b!6927457))

(assert (not b!6927606))

(assert (not b!6927528))

(assert (not b!6927436))

(assert (not b!6927541))

(assert (not b!6927460))

(assert (not d!2165478))

(assert (not b!6927597))

(assert (not d!2165568))

(assert (not d!2165558))

(assert (not b!6927609))

(assert (not b!6927360))

(assert (not b!6927598))

(assert (not b!6927313))

(assert (not b!6927420))

(assert (not d!2165510))

(assert (not d!2165506))

(assert (not bm!629538))

(assert (not b!6927562))

(assert (not b!6927130))

(assert (not b!6927564))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

