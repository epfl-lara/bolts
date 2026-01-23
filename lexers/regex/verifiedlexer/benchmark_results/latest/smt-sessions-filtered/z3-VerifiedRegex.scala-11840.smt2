; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!665830 () Bool)

(assert start!665830)

(declare-fun b!6925456 () Bool)

(assert (=> b!6925456 true))

(assert (=> b!6925456 true))

(assert (=> b!6925456 true))

(declare-fun lambda!393904 () Int)

(declare-fun lambda!393903 () Int)

(assert (=> b!6925456 (not (= lambda!393904 lambda!393903))))

(assert (=> b!6925456 true))

(assert (=> b!6925456 true))

(assert (=> b!6925456 true))

(declare-fun bs!1848603 () Bool)

(declare-fun b!6925462 () Bool)

(assert (= bs!1848603 (and b!6925462 b!6925456)))

(declare-datatypes ((C!34124 0))(
  ( (C!34125 (val!26764 Int)) )
))
(declare-datatypes ((Regex!16927 0))(
  ( (ElementMatch!16927 (c!1285583 C!34124)) (Concat!25772 (regOne!34366 Regex!16927) (regTwo!34366 Regex!16927)) (EmptyExpr!16927) (Star!16927 (reg!17256 Regex!16927)) (EmptyLang!16927) (Union!16927 (regOne!34367 Regex!16927) (regTwo!34367 Regex!16927)) )
))
(declare-fun r1!6342 () Regex!16927)

(declare-fun r3!135 () Regex!16927)

(declare-datatypes ((List!66680 0))(
  ( (Nil!66556) (Cons!66556 (h!73004 C!34124) (t!380423 List!66680)) )
))
(declare-fun s!14361 () List!66680)

(declare-fun lambda!393905 () Int)

(declare-fun lt!2471640 () Regex!16927)

(declare-fun r2!6280 () Regex!16927)

(declare-datatypes ((tuple2!67568 0))(
  ( (tuple2!67569 (_1!37087 List!66680) (_2!37087 List!66680)) )
))
(declare-fun lt!2471628 () tuple2!67568)

(assert (=> bs!1848603 (= (and (= (_1!37087 lt!2471628) s!14361) (= r1!6342 lt!2471640) (= r2!6280 r3!135)) (= lambda!393905 lambda!393903))))

(assert (=> bs!1848603 (not (= lambda!393905 lambda!393904))))

(assert (=> b!6925462 true))

(assert (=> b!6925462 true))

(assert (=> b!6925462 true))

(declare-fun lambda!393906 () Int)

(assert (=> bs!1848603 (not (= lambda!393906 lambda!393903))))

(assert (=> bs!1848603 (= (and (= (_1!37087 lt!2471628) s!14361) (= r1!6342 lt!2471640) (= r2!6280 r3!135)) (= lambda!393906 lambda!393904))))

(assert (=> b!6925462 (not (= lambda!393906 lambda!393905))))

(assert (=> b!6925462 true))

(assert (=> b!6925462 true))

(assert (=> b!6925462 true))

(declare-fun bs!1848604 () Bool)

(declare-fun b!6925454 () Bool)

(assert (= bs!1848604 (and b!6925454 b!6925456)))

(declare-fun lambda!393907 () Int)

(declare-fun lt!2471631 () List!66680)

(assert (=> bs!1848604 (= (and (= lt!2471631 s!14361) (= r2!6280 lt!2471640)) (= lambda!393907 lambda!393903))))

(assert (=> bs!1848604 (not (= lambda!393907 lambda!393904))))

(declare-fun bs!1848605 () Bool)

(assert (= bs!1848605 (and b!6925454 b!6925462)))

(assert (=> bs!1848605 (= (and (= lt!2471631 (_1!37087 lt!2471628)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393907 lambda!393905))))

(assert (=> bs!1848605 (not (= lambda!393907 lambda!393906))))

(assert (=> b!6925454 true))

(assert (=> b!6925454 true))

(assert (=> b!6925454 true))

(declare-fun lambda!393908 () Int)

(assert (=> bs!1848605 (not (= lambda!393908 lambda!393905))))

(assert (=> bs!1848605 (= (and (= lt!2471631 (_1!37087 lt!2471628)) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!393908 lambda!393906))))

(assert (=> b!6925454 (not (= lambda!393908 lambda!393907))))

(assert (=> bs!1848604 (not (= lambda!393908 lambda!393903))))

(assert (=> bs!1848604 (= (and (= lt!2471631 s!14361) (= r2!6280 lt!2471640)) (= lambda!393908 lambda!393904))))

(assert (=> b!6925454 true))

(assert (=> b!6925454 true))

(assert (=> b!6925454 true))

(declare-fun b!6925446 () Bool)

(declare-fun e!4167752 () Bool)

(declare-fun tp_is_empty!43079 () Bool)

(assert (=> b!6925446 (= e!4167752 tp_is_empty!43079)))

(declare-fun b!6925447 () Bool)

(declare-fun tp!1908888 () Bool)

(declare-fun tp!1908887 () Bool)

(assert (=> b!6925447 (= e!4167752 (and tp!1908888 tp!1908887))))

(declare-fun b!6925448 () Bool)

(declare-fun e!4167751 () Bool)

(declare-fun tp!1908891 () Bool)

(assert (=> b!6925448 (= e!4167751 tp!1908891)))

(declare-fun b!6925449 () Bool)

(assert (=> b!6925449 (= e!4167751 tp_is_empty!43079)))

(declare-fun b!6925450 () Bool)

(declare-fun tp!1908894 () Bool)

(declare-fun tp!1908884 () Bool)

(assert (=> b!6925450 (= e!4167751 (and tp!1908894 tp!1908884))))

(declare-fun b!6925451 () Bool)

(declare-fun res!2824224 () Bool)

(declare-fun e!4167749 () Bool)

(assert (=> b!6925451 (=> (not res!2824224) (not e!4167749))))

(declare-fun validRegex!8633 (Regex!16927) Bool)

(assert (=> b!6925451 (= res!2824224 (validRegex!8633 r2!6280))))

(declare-fun b!6925452 () Bool)

(declare-fun tp!1908898 () Bool)

(declare-fun tp!1908895 () Bool)

(assert (=> b!6925452 (= e!4167751 (and tp!1908898 tp!1908895))))

(declare-fun b!6925453 () Bool)

(declare-fun e!4167754 () Bool)

(declare-fun tp!1908893 () Bool)

(assert (=> b!6925453 (= e!4167754 tp!1908893)))

(declare-fun b!6925455 () Bool)

(declare-fun e!4167748 () Bool)

(assert (=> b!6925455 (= e!4167749 (not e!4167748))))

(declare-fun res!2824227 () Bool)

(assert (=> b!6925455 (=> res!2824227 e!4167748)))

(declare-fun lt!2471651 () Bool)

(assert (=> b!6925455 (= res!2824227 (not lt!2471651))))

(declare-fun lt!2471642 () Regex!16927)

(declare-fun matchR!9066 (Regex!16927 List!66680) Bool)

(declare-fun matchRSpec!3984 (Regex!16927 List!66680) Bool)

(assert (=> b!6925455 (= (matchR!9066 lt!2471642 s!14361) (matchRSpec!3984 lt!2471642 s!14361))))

(declare-datatypes ((Unit!160578 0))(
  ( (Unit!160579) )
))
(declare-fun lt!2471649 () Unit!160578)

(declare-fun mainMatchTheorem!3984 (Regex!16927 List!66680) Unit!160578)

(assert (=> b!6925455 (= lt!2471649 (mainMatchTheorem!3984 lt!2471642 s!14361))))

(declare-fun lt!2471641 () Regex!16927)

(assert (=> b!6925455 (= lt!2471651 (matchRSpec!3984 lt!2471641 s!14361))))

(assert (=> b!6925455 (= lt!2471651 (matchR!9066 lt!2471641 s!14361))))

(declare-fun lt!2471638 () Unit!160578)

(assert (=> b!6925455 (= lt!2471638 (mainMatchTheorem!3984 lt!2471641 s!14361))))

(declare-fun lt!2471652 () Regex!16927)

(assert (=> b!6925455 (= lt!2471642 (Concat!25772 r1!6342 lt!2471652))))

(assert (=> b!6925455 (= lt!2471652 (Concat!25772 r2!6280 r3!135))))

(assert (=> b!6925455 (= lt!2471641 (Concat!25772 lt!2471640 r3!135))))

(assert (=> b!6925455 (= lt!2471640 (Concat!25772 r1!6342 r2!6280))))

(declare-fun e!4167744 () Bool)

(assert (=> b!6925456 (= e!4167748 e!4167744)))

(declare-fun res!2824233 () Bool)

(assert (=> b!6925456 (=> res!2824233 e!4167744)))

(declare-fun lt!2471657 () Bool)

(assert (=> b!6925456 (= res!2824233 (not lt!2471657))))

(assert (=> b!6925456 (= lt!2471657 (matchRSpec!3984 lt!2471640 (_1!37087 lt!2471628)))))

(assert (=> b!6925456 (= lt!2471657 (matchR!9066 lt!2471640 (_1!37087 lt!2471628)))))

(declare-fun lt!2471654 () Unit!160578)

(assert (=> b!6925456 (= lt!2471654 (mainMatchTheorem!3984 lt!2471640 (_1!37087 lt!2471628)))))

(declare-datatypes ((Option!16696 0))(
  ( (None!16695) (Some!16695 (v!52967 tuple2!67568)) )
))
(declare-fun lt!2471653 () Option!16696)

(declare-fun get!23331 (Option!16696) tuple2!67568)

(assert (=> b!6925456 (= lt!2471628 (get!23331 lt!2471653))))

(declare-fun Exists!3929 (Int) Bool)

(assert (=> b!6925456 (= (Exists!3929 lambda!393903) (Exists!3929 lambda!393904))))

(declare-fun lt!2471644 () Unit!160578)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2396 (Regex!16927 Regex!16927 List!66680) Unit!160578)

(assert (=> b!6925456 (= lt!2471644 (lemmaExistCutMatchRandMatchRSpecEquivalent!2396 lt!2471640 r3!135 s!14361))))

(declare-fun isDefined!13399 (Option!16696) Bool)

(assert (=> b!6925456 (= (isDefined!13399 lt!2471653) (Exists!3929 lambda!393903))))

(declare-fun findConcatSeparation!3110 (Regex!16927 Regex!16927 List!66680 List!66680 List!66680) Option!16696)

(assert (=> b!6925456 (= lt!2471653 (findConcatSeparation!3110 lt!2471640 r3!135 Nil!66556 s!14361 s!14361))))

(declare-fun lt!2471650 () Unit!160578)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2872 (Regex!16927 Regex!16927 List!66680) Unit!160578)

(assert (=> b!6925456 (= lt!2471650 (lemmaFindConcatSeparationEquivalentToExists!2872 lt!2471640 r3!135 s!14361))))

(declare-fun b!6925457 () Bool)

(declare-fun res!2824231 () Bool)

(assert (=> b!6925457 (=> res!2824231 e!4167744)))

(assert (=> b!6925457 (= res!2824231 (not (matchR!9066 r3!135 (_2!37087 lt!2471628))))))

(declare-fun b!6925458 () Bool)

(declare-fun tp!1908892 () Bool)

(assert (=> b!6925458 (= e!4167752 tp!1908892)))

(declare-fun b!6925459 () Bool)

(declare-fun tp!1908899 () Bool)

(declare-fun tp!1908886 () Bool)

(assert (=> b!6925459 (= e!4167754 (and tp!1908899 tp!1908886))))

(declare-fun b!6925460 () Bool)

(declare-fun e!4167753 () Bool)

(declare-fun e!4167746 () Bool)

(assert (=> b!6925460 (= e!4167753 e!4167746)))

(declare-fun res!2824226 () Bool)

(assert (=> b!6925460 (=> res!2824226 e!4167746)))

(declare-fun lt!2471648 () List!66680)

(assert (=> b!6925460 (= res!2824226 (not (= lt!2471648 s!14361)))))

(declare-fun lt!2471646 () tuple2!67568)

(declare-fun ++!14970 (List!66680 List!66680) List!66680)

(assert (=> b!6925460 (= lt!2471648 (++!14970 (++!14970 (_1!37087 lt!2471646) (_2!37087 lt!2471646)) (_2!37087 lt!2471628)))))

(assert (=> b!6925460 (matchRSpec!3984 r2!6280 (_2!37087 lt!2471646))))

(declare-fun lt!2471645 () Unit!160578)

(assert (=> b!6925460 (= lt!2471645 (mainMatchTheorem!3984 r2!6280 (_2!37087 lt!2471646)))))

(assert (=> b!6925460 (matchRSpec!3984 r1!6342 (_1!37087 lt!2471646))))

(declare-fun lt!2471637 () Unit!160578)

(assert (=> b!6925460 (= lt!2471637 (mainMatchTheorem!3984 r1!6342 (_1!37087 lt!2471646)))))

(declare-fun b!6925461 () Bool)

(declare-fun e!4167745 () Bool)

(declare-fun e!4167750 () Bool)

(assert (=> b!6925461 (= e!4167745 e!4167750)))

(declare-fun res!2824234 () Bool)

(assert (=> b!6925461 (=> res!2824234 e!4167750)))

(declare-fun lt!2471636 () List!66680)

(assert (=> b!6925461 (= res!2824234 (not (= lt!2471636 s!14361)))))

(assert (=> b!6925461 (= lt!2471648 lt!2471636)))

(assert (=> b!6925461 (= lt!2471636 (++!14970 (_1!37087 lt!2471646) lt!2471631))))

(declare-fun lt!2471630 () Unit!160578)

(declare-fun lemmaConcatAssociativity!3018 (List!66680 List!66680 List!66680) Unit!160578)

(assert (=> b!6925461 (= lt!2471630 (lemmaConcatAssociativity!3018 (_1!37087 lt!2471646) (_2!37087 lt!2471646) (_2!37087 lt!2471628)))))

(assert (=> b!6925462 (= e!4167744 e!4167753)))

(declare-fun res!2824229 () Bool)

(assert (=> b!6925462 (=> res!2824229 e!4167753)))

(assert (=> b!6925462 (= res!2824229 (not (matchR!9066 r1!6342 (_1!37087 lt!2471646))))))

(declare-fun lt!2471629 () Option!16696)

(assert (=> b!6925462 (= lt!2471646 (get!23331 lt!2471629))))

(assert (=> b!6925462 (= (Exists!3929 lambda!393905) (Exists!3929 lambda!393906))))

(declare-fun lt!2471647 () Unit!160578)

(assert (=> b!6925462 (= lt!2471647 (lemmaExistCutMatchRandMatchRSpecEquivalent!2396 r1!6342 r2!6280 (_1!37087 lt!2471628)))))

(assert (=> b!6925462 (= (isDefined!13399 lt!2471629) (Exists!3929 lambda!393905))))

(assert (=> b!6925462 (= lt!2471629 (findConcatSeparation!3110 r1!6342 r2!6280 Nil!66556 (_1!37087 lt!2471628) (_1!37087 lt!2471628)))))

(declare-fun lt!2471635 () Unit!160578)

(assert (=> b!6925462 (= lt!2471635 (lemmaFindConcatSeparationEquivalentToExists!2872 r1!6342 r2!6280 (_1!37087 lt!2471628)))))

(declare-fun b!6925463 () Bool)

(declare-fun tp!1908889 () Bool)

(declare-fun tp!1908885 () Bool)

(assert (=> b!6925463 (= e!4167752 (and tp!1908889 tp!1908885))))

(declare-fun b!6925464 () Bool)

(assert (=> b!6925464 (= e!4167754 tp_is_empty!43079)))

(declare-fun b!6925465 () Bool)

(declare-fun res!2824225 () Bool)

(assert (=> b!6925465 (=> (not res!2824225) (not e!4167749))))

(assert (=> b!6925465 (= res!2824225 (validRegex!8633 r3!135))))

(declare-fun b!6925466 () Bool)

(assert (=> b!6925466 (= e!4167750 true)))

(assert (=> b!6925466 (isDefined!13399 (findConcatSeparation!3110 r1!6342 lt!2471652 Nil!66556 s!14361 s!14361))))

(declare-fun lt!2471634 () Unit!160578)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!88 (Regex!16927 Regex!16927 List!66680 List!66680 List!66680 List!66680 List!66680) Unit!160578)

(assert (=> b!6925466 (= lt!2471634 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!88 r1!6342 lt!2471652 (_1!37087 lt!2471646) lt!2471631 s!14361 Nil!66556 s!14361))))

(declare-fun b!6925467 () Bool)

(declare-fun res!2824232 () Bool)

(assert (=> b!6925467 (=> res!2824232 e!4167753)))

(assert (=> b!6925467 (= res!2824232 (not (matchR!9066 r2!6280 (_2!37087 lt!2471646))))))

(declare-fun res!2824228 () Bool)

(assert (=> start!665830 (=> (not res!2824228) (not e!4167749))))

(assert (=> start!665830 (= res!2824228 (validRegex!8633 r1!6342))))

(assert (=> start!665830 e!4167749))

(assert (=> start!665830 e!4167754))

(assert (=> start!665830 e!4167752))

(assert (=> start!665830 e!4167751))

(declare-fun e!4167747 () Bool)

(assert (=> start!665830 e!4167747))

(assert (=> b!6925454 (= e!4167746 e!4167745)))

(declare-fun res!2824230 () Bool)

(assert (=> b!6925454 (=> res!2824230 e!4167745)))

(declare-fun lt!2471633 () Bool)

(assert (=> b!6925454 (= res!2824230 (not lt!2471633))))

(declare-fun lt!2471655 () Bool)

(assert (=> b!6925454 lt!2471655))

(declare-fun lt!2471639 () Unit!160578)

(assert (=> b!6925454 (= lt!2471639 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!88 r2!6280 r3!135 (_2!37087 lt!2471646) (_2!37087 lt!2471628) lt!2471631 Nil!66556 lt!2471631))))

(assert (=> b!6925454 (= (Exists!3929 lambda!393907) (Exists!3929 lambda!393908))))

(declare-fun lt!2471643 () Unit!160578)

(assert (=> b!6925454 (= lt!2471643 (lemmaExistCutMatchRandMatchRSpecEquivalent!2396 r2!6280 r3!135 lt!2471631))))

(assert (=> b!6925454 (= lt!2471655 (Exists!3929 lambda!393907))))

(assert (=> b!6925454 (= lt!2471655 (isDefined!13399 (findConcatSeparation!3110 r2!6280 r3!135 Nil!66556 lt!2471631 lt!2471631)))))

(declare-fun lt!2471632 () Unit!160578)

(assert (=> b!6925454 (= lt!2471632 (lemmaFindConcatSeparationEquivalentToExists!2872 r2!6280 r3!135 lt!2471631))))

(assert (=> b!6925454 (= lt!2471633 (matchRSpec!3984 lt!2471652 lt!2471631))))

(assert (=> b!6925454 (= lt!2471633 (matchR!9066 lt!2471652 lt!2471631))))

(declare-fun lt!2471656 () Unit!160578)

(assert (=> b!6925454 (= lt!2471656 (mainMatchTheorem!3984 lt!2471652 lt!2471631))))

(assert (=> b!6925454 (= lt!2471631 (++!14970 (_2!37087 lt!2471646) (_2!37087 lt!2471628)))))

(declare-fun b!6925468 () Bool)

(declare-fun tp!1908896 () Bool)

(assert (=> b!6925468 (= e!4167747 (and tp_is_empty!43079 tp!1908896))))

(declare-fun b!6925469 () Bool)

(declare-fun tp!1908890 () Bool)

(declare-fun tp!1908897 () Bool)

(assert (=> b!6925469 (= e!4167754 (and tp!1908890 tp!1908897))))

(assert (= (and start!665830 res!2824228) b!6925451))

(assert (= (and b!6925451 res!2824224) b!6925465))

(assert (= (and b!6925465 res!2824225) b!6925455))

(assert (= (and b!6925455 (not res!2824227)) b!6925456))

(assert (= (and b!6925456 (not res!2824233)) b!6925457))

(assert (= (and b!6925457 (not res!2824231)) b!6925462))

(assert (= (and b!6925462 (not res!2824229)) b!6925467))

(assert (= (and b!6925467 (not res!2824232)) b!6925460))

(assert (= (and b!6925460 (not res!2824226)) b!6925454))

(assert (= (and b!6925454 (not res!2824230)) b!6925461))

(assert (= (and b!6925461 (not res!2824234)) b!6925466))

(get-info :version)

(assert (= (and start!665830 ((_ is ElementMatch!16927) r1!6342)) b!6925464))

(assert (= (and start!665830 ((_ is Concat!25772) r1!6342)) b!6925459))

(assert (= (and start!665830 ((_ is Star!16927) r1!6342)) b!6925453))

(assert (= (and start!665830 ((_ is Union!16927) r1!6342)) b!6925469))

(assert (= (and start!665830 ((_ is ElementMatch!16927) r2!6280)) b!6925446))

(assert (= (and start!665830 ((_ is Concat!25772) r2!6280)) b!6925447))

(assert (= (and start!665830 ((_ is Star!16927) r2!6280)) b!6925458))

(assert (= (and start!665830 ((_ is Union!16927) r2!6280)) b!6925463))

(assert (= (and start!665830 ((_ is ElementMatch!16927) r3!135)) b!6925449))

(assert (= (and start!665830 ((_ is Concat!25772) r3!135)) b!6925452))

(assert (= (and start!665830 ((_ is Star!16927) r3!135)) b!6925448))

(assert (= (and start!665830 ((_ is Union!16927) r3!135)) b!6925450))

(assert (= (and start!665830 ((_ is Cons!66556) s!14361)) b!6925468))

(declare-fun m!7634314 () Bool)

(assert (=> b!6925462 m!7634314))

(declare-fun m!7634316 () Bool)

(assert (=> b!6925462 m!7634316))

(declare-fun m!7634318 () Bool)

(assert (=> b!6925462 m!7634318))

(declare-fun m!7634320 () Bool)

(assert (=> b!6925462 m!7634320))

(declare-fun m!7634322 () Bool)

(assert (=> b!6925462 m!7634322))

(declare-fun m!7634324 () Bool)

(assert (=> b!6925462 m!7634324))

(assert (=> b!6925462 m!7634318))

(declare-fun m!7634326 () Bool)

(assert (=> b!6925462 m!7634326))

(declare-fun m!7634328 () Bool)

(assert (=> b!6925462 m!7634328))

(declare-fun m!7634330 () Bool)

(assert (=> b!6925465 m!7634330))

(declare-fun m!7634332 () Bool)

(assert (=> b!6925461 m!7634332))

(declare-fun m!7634334 () Bool)

(assert (=> b!6925461 m!7634334))

(declare-fun m!7634336 () Bool)

(assert (=> b!6925466 m!7634336))

(assert (=> b!6925466 m!7634336))

(declare-fun m!7634338 () Bool)

(assert (=> b!6925466 m!7634338))

(declare-fun m!7634340 () Bool)

(assert (=> b!6925466 m!7634340))

(declare-fun m!7634342 () Bool)

(assert (=> b!6925457 m!7634342))

(declare-fun m!7634344 () Bool)

(assert (=> b!6925460 m!7634344))

(declare-fun m!7634346 () Bool)

(assert (=> b!6925460 m!7634346))

(declare-fun m!7634348 () Bool)

(assert (=> b!6925460 m!7634348))

(declare-fun m!7634350 () Bool)

(assert (=> b!6925460 m!7634350))

(assert (=> b!6925460 m!7634346))

(declare-fun m!7634352 () Bool)

(assert (=> b!6925460 m!7634352))

(declare-fun m!7634354 () Bool)

(assert (=> b!6925460 m!7634354))

(declare-fun m!7634356 () Bool)

(assert (=> b!6925456 m!7634356))

(declare-fun m!7634358 () Bool)

(assert (=> b!6925456 m!7634358))

(declare-fun m!7634360 () Bool)

(assert (=> b!6925456 m!7634360))

(declare-fun m!7634362 () Bool)

(assert (=> b!6925456 m!7634362))

(declare-fun m!7634364 () Bool)

(assert (=> b!6925456 m!7634364))

(declare-fun m!7634366 () Bool)

(assert (=> b!6925456 m!7634366))

(declare-fun m!7634368 () Bool)

(assert (=> b!6925456 m!7634368))

(declare-fun m!7634370 () Bool)

(assert (=> b!6925456 m!7634370))

(declare-fun m!7634372 () Bool)

(assert (=> b!6925456 m!7634372))

(assert (=> b!6925456 m!7634356))

(declare-fun m!7634374 () Bool)

(assert (=> b!6925456 m!7634374))

(declare-fun m!7634376 () Bool)

(assert (=> b!6925455 m!7634376))

(declare-fun m!7634378 () Bool)

(assert (=> b!6925455 m!7634378))

(declare-fun m!7634380 () Bool)

(assert (=> b!6925455 m!7634380))

(declare-fun m!7634382 () Bool)

(assert (=> b!6925455 m!7634382))

(declare-fun m!7634384 () Bool)

(assert (=> b!6925455 m!7634384))

(declare-fun m!7634386 () Bool)

(assert (=> b!6925455 m!7634386))

(declare-fun m!7634388 () Bool)

(assert (=> start!665830 m!7634388))

(declare-fun m!7634390 () Bool)

(assert (=> b!6925454 m!7634390))

(declare-fun m!7634392 () Bool)

(assert (=> b!6925454 m!7634392))

(declare-fun m!7634394 () Bool)

(assert (=> b!6925454 m!7634394))

(declare-fun m!7634396 () Bool)

(assert (=> b!6925454 m!7634396))

(declare-fun m!7634398 () Bool)

(assert (=> b!6925454 m!7634398))

(declare-fun m!7634400 () Bool)

(assert (=> b!6925454 m!7634400))

(declare-fun m!7634402 () Bool)

(assert (=> b!6925454 m!7634402))

(assert (=> b!6925454 m!7634398))

(declare-fun m!7634404 () Bool)

(assert (=> b!6925454 m!7634404))

(declare-fun m!7634406 () Bool)

(assert (=> b!6925454 m!7634406))

(assert (=> b!6925454 m!7634396))

(declare-fun m!7634408 () Bool)

(assert (=> b!6925454 m!7634408))

(declare-fun m!7634410 () Bool)

(assert (=> b!6925454 m!7634410))

(declare-fun m!7634412 () Bool)

(assert (=> b!6925451 m!7634412))

(declare-fun m!7634414 () Bool)

(assert (=> b!6925467 m!7634414))

(check-sat (not b!6925468) (not b!6925463) (not b!6925467) (not b!6925465) tp_is_empty!43079 (not b!6925469) (not b!6925456) (not b!6925462) (not b!6925447) (not b!6925454) (not b!6925457) (not b!6925453) (not b!6925451) (not start!665830) (not b!6925452) (not b!6925459) (not b!6925460) (not b!6925450) (not b!6925448) (not b!6925458) (not b!6925466) (not b!6925461) (not b!6925455))
(check-sat)
