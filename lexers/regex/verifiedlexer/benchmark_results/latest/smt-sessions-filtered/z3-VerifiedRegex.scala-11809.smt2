; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664682 () Bool)

(assert start!664682)

(declare-fun b!6900823 () Bool)

(assert (=> b!6900823 true))

(assert (=> b!6900823 true))

(assert (=> b!6900823 true))

(declare-fun lambda!391777 () Int)

(declare-fun lambda!391776 () Int)

(assert (=> b!6900823 (not (= lambda!391777 lambda!391776))))

(assert (=> b!6900823 true))

(assert (=> b!6900823 true))

(assert (=> b!6900823 true))

(declare-datatypes ((C!34000 0))(
  ( (C!34001 (val!26702 Int)) )
))
(declare-datatypes ((List!66622 0))(
  ( (Nil!66498) (Cons!66498 (h!72946 C!34000) (t!380365 List!66622)) )
))
(declare-datatypes ((tuple2!67464 0))(
  ( (tuple2!67465 (_1!37035 List!66622) (_2!37035 List!66622)) )
))
(declare-fun lt!2466430 () tuple2!67464)

(declare-datatypes ((Regex!16865 0))(
  ( (ElementMatch!16865 (c!1282141 C!34000)) (Concat!25710 (regOne!34242 Regex!16865) (regTwo!34242 Regex!16865)) (EmptyExpr!16865) (Star!16865 (reg!17194 Regex!16865)) (EmptyLang!16865) (Union!16865 (regOne!34243 Regex!16865) (regTwo!34243 Regex!16865)) )
))
(declare-fun r1!6342 () Regex!16865)

(declare-fun r3!135 () Regex!16865)

(declare-fun r2!6280 () Regex!16865)

(declare-fun lambda!391778 () Int)

(declare-fun lt!2466416 () Regex!16865)

(declare-fun s!14361 () List!66622)

(assert (=> b!6900823 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466416)) (= lambda!391778 lambda!391776))))

(assert (=> b!6900823 (not (= lambda!391778 lambda!391777))))

(assert (=> b!6900823 true))

(assert (=> b!6900823 true))

(assert (=> b!6900823 true))

(declare-fun lambda!391779 () Int)

(assert (=> b!6900823 (not (= lambda!391779 lambda!391776))))

(assert (=> b!6900823 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466416)) (= lambda!391779 lambda!391777))))

(assert (=> b!6900823 (not (= lambda!391779 lambda!391778))))

(assert (=> b!6900823 true))

(assert (=> b!6900823 true))

(assert (=> b!6900823 true))

(declare-fun lambda!391780 () Int)

(declare-fun lt!2466407 () List!66622)

(assert (=> b!6900823 (= (and (= lt!2466407 s!14361) (= r2!6280 lt!2466416)) (= lambda!391780 lambda!391776))))

(assert (=> b!6900823 (not (= lambda!391780 lambda!391777))))

(assert (=> b!6900823 (= (and (= lt!2466407 (_2!37035 lt!2466430)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391780 lambda!391778))))

(assert (=> b!6900823 (not (= lambda!391780 lambda!391779))))

(assert (=> b!6900823 true))

(assert (=> b!6900823 true))

(assert (=> b!6900823 true))

(declare-fun lambda!391781 () Int)

(assert (=> b!6900823 (= (and (= lt!2466407 s!14361) (= r2!6280 lt!2466416)) (= lambda!391781 lambda!391777))))

(assert (=> b!6900823 (not (= lambda!391781 lambda!391776))))

(assert (=> b!6900823 (not (= lambda!391781 lambda!391780))))

(assert (=> b!6900823 (= (and (= lt!2466407 (_2!37035 lt!2466430)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391781 lambda!391779))))

(assert (=> b!6900823 (not (= lambda!391781 lambda!391778))))

(assert (=> b!6900823 true))

(assert (=> b!6900823 true))

(assert (=> b!6900823 true))

(declare-fun lambda!391782 () Int)

(assert (=> b!6900823 (not (= lambda!391782 lambda!391777))))

(declare-fun lt!2466409 () Regex!16865)

(assert (=> b!6900823 (= (and (= lt!2466409 r1!6342) (= r3!135 lt!2466416)) (= lambda!391782 lambda!391776))))

(assert (=> b!6900823 (= (and (= s!14361 lt!2466407) (= lt!2466409 r1!6342) (= r3!135 r2!6280)) (= lambda!391782 lambda!391780))))

(assert (=> b!6900823 (not (= lambda!391782 lambda!391779))))

(assert (=> b!6900823 (= (and (= s!14361 (_2!37035 lt!2466430)) (= lt!2466409 r2!6280)) (= lambda!391782 lambda!391778))))

(assert (=> b!6900823 (not (= lambda!391782 lambda!391781))))

(assert (=> b!6900823 true))

(assert (=> b!6900823 true))

(assert (=> b!6900823 true))

(declare-fun bs!1841771 () Bool)

(declare-fun b!6900820 () Bool)

(assert (= bs!1841771 (and b!6900820 b!6900823)))

(declare-fun lambda!391783 () Int)

(assert (=> bs!1841771 (not (= lambda!391783 lambda!391777))))

(assert (=> bs!1841771 (= lambda!391783 lambda!391776)))

(assert (=> bs!1841771 (= (and (= s!14361 lt!2466407) (= lt!2466416 r2!6280)) (= lambda!391783 lambda!391780))))

(assert (=> bs!1841771 (not (= lambda!391783 lambda!391779))))

(assert (=> bs!1841771 (= (and (= s!14361 (_2!37035 lt!2466430)) (= r1!6342 r2!6280) (= lt!2466416 r3!135)) (= lambda!391783 lambda!391778))))

(assert (=> bs!1841771 (= (and (= r1!6342 lt!2466409) (= lt!2466416 r3!135)) (= lambda!391783 lambda!391782))))

(assert (=> bs!1841771 (not (= lambda!391783 lambda!391781))))

(assert (=> b!6900820 true))

(assert (=> b!6900820 true))

(assert (=> b!6900820 true))

(declare-fun bs!1841772 () Bool)

(declare-fun b!6900813 () Bool)

(assert (= bs!1841772 (and b!6900813 b!6900823)))

(declare-fun lambda!391784 () Int)

(assert (=> bs!1841772 (= lambda!391784 lambda!391777)))

(assert (=> bs!1841772 (not (= lambda!391784 lambda!391776))))

(assert (=> bs!1841772 (not (= lambda!391784 lambda!391780))))

(assert (=> bs!1841772 (= (and (= s!14361 (_2!37035 lt!2466430)) (= r1!6342 r2!6280) (= lt!2466416 r3!135)) (= lambda!391784 lambda!391779))))

(assert (=> bs!1841772 (not (= lambda!391784 lambda!391782))))

(assert (=> bs!1841772 (= (and (= s!14361 lt!2466407) (= lt!2466416 r2!6280)) (= lambda!391784 lambda!391781))))

(declare-fun bs!1841773 () Bool)

(assert (= bs!1841773 (and b!6900813 b!6900820)))

(assert (=> bs!1841773 (not (= lambda!391784 lambda!391783))))

(assert (=> bs!1841772 (not (= lambda!391784 lambda!391778))))

(assert (=> b!6900813 true))

(assert (=> b!6900813 true))

(assert (=> b!6900813 true))

(declare-fun b!6900810 () Bool)

(declare-datatypes ((Unit!160460 0))(
  ( (Unit!160461) )
))
(declare-fun e!4155839 () Unit!160460)

(declare-fun Unit!160462 () Unit!160460)

(assert (=> b!6900810 (= e!4155839 Unit!160462)))

(declare-fun b!6900811 () Bool)

(declare-fun e!4155844 () Bool)

(declare-fun tp!1900027 () Bool)

(declare-fun tp!1900028 () Bool)

(assert (=> b!6900811 (= e!4155844 (and tp!1900027 tp!1900028))))

(declare-fun b!6900812 () Bool)

(declare-fun e!4155842 () Bool)

(declare-fun tp_is_empty!42955 () Bool)

(assert (=> b!6900812 (= e!4155842 tp_is_empty!42955)))

(declare-fun e!4155840 () Bool)

(declare-fun lt!2466428 () Regex!16865)

(declare-fun validRegex!8573 (Regex!16865) Bool)

(assert (=> b!6900813 (= e!4155840 (validRegex!8573 lt!2466428))))

(declare-fun Exists!3873 (Int) Bool)

(assert (=> b!6900813 (= (Exists!3873 lambda!391783) (Exists!3873 lambda!391784))))

(declare-fun lt!2466411 () Unit!160460)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2346 (Regex!16865 Regex!16865 List!66622) Unit!160460)

(assert (=> b!6900813 (= lt!2466411 (lemmaExistCutMatchRandMatchRSpecEquivalent!2346 r1!6342 lt!2466416 s!14361))))

(declare-fun b!6900815 () Bool)

(declare-fun tp!1900032 () Bool)

(assert (=> b!6900815 (= e!4155844 tp!1900032)))

(declare-fun b!6900816 () Bool)

(declare-fun tp!1900038 () Bool)

(declare-fun tp!1900025 () Bool)

(assert (=> b!6900816 (= e!4155842 (and tp!1900038 tp!1900025))))

(declare-fun b!6900817 () Bool)

(declare-fun res!2814008 () Bool)

(declare-fun e!4155837 () Bool)

(assert (=> b!6900817 (=> (not res!2814008) (not e!4155837))))

(assert (=> b!6900817 (= res!2814008 (validRegex!8573 r3!135))))

(declare-fun b!6900818 () Bool)

(assert (=> b!6900818 (= e!4155844 tp_is_empty!42955)))

(declare-fun b!6900819 () Bool)

(declare-fun e!4155838 () Bool)

(assert (=> b!6900819 (= e!4155838 tp_is_empty!42955)))

(declare-fun e!4155841 () Bool)

(assert (=> b!6900820 (= e!4155841 e!4155840)))

(declare-fun res!2814010 () Bool)

(assert (=> b!6900820 (=> res!2814010 e!4155840)))

(assert (=> b!6900820 (= res!2814010 (not (validRegex!8573 lt!2466416)))))

(declare-fun lt!2466420 () Bool)

(assert (=> b!6900820 (= lt!2466420 (Exists!3873 lambda!391783))))

(declare-fun lt!2466423 () Unit!160460)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2820 (Regex!16865 Regex!16865 List!66622) Unit!160460)

(assert (=> b!6900820 (= lt!2466423 (lemmaFindConcatSeparationEquivalentToExists!2820 r1!6342 lt!2466416 s!14361))))

(declare-fun lt!2466424 () Unit!160460)

(assert (=> b!6900820 (= lt!2466424 e!4155839)))

(declare-fun c!1282140 () Bool)

(assert (=> b!6900820 (= c!1282140 lt!2466420)))

(declare-datatypes ((Option!16644 0))(
  ( (None!16643) (Some!16643 (v!52915 tuple2!67464)) )
))
(declare-fun lt!2466434 () Option!16644)

(declare-fun isDefined!13347 (Option!16644) Bool)

(assert (=> b!6900820 (= lt!2466420 (isDefined!13347 lt!2466434))))

(declare-fun findConcatSeparation!3058 (Regex!16865 Regex!16865 List!66622 List!66622 List!66622) Option!16644)

(assert (=> b!6900820 (= lt!2466434 (findConcatSeparation!3058 r1!6342 lt!2466416 Nil!66498 s!14361 s!14361))))

(declare-fun b!6900821 () Bool)

(declare-fun tp!1900026 () Bool)

(assert (=> b!6900821 (= e!4155842 tp!1900026)))

(declare-fun b!6900822 () Bool)

(declare-fun tp!1900030 () Bool)

(declare-fun tp!1900036 () Bool)

(assert (=> b!6900822 (= e!4155844 (and tp!1900030 tp!1900036))))

(declare-fun Unit!160463 () Unit!160460)

(assert (=> b!6900823 (= e!4155839 Unit!160463)))

(declare-fun lt!2466414 () Unit!160460)

(assert (=> b!6900823 (= lt!2466414 (lemmaFindConcatSeparationEquivalentToExists!2820 r1!6342 lt!2466416 s!14361))))

(assert (=> b!6900823 (Exists!3873 lambda!391776)))

(declare-fun lt!2466410 () Unit!160460)

(assert (=> b!6900823 (= lt!2466410 (lemmaExistCutMatchRandMatchRSpecEquivalent!2346 r1!6342 lt!2466416 s!14361))))

(assert (=> b!6900823 (= (Exists!3873 lambda!391776) (Exists!3873 lambda!391777))))

(declare-fun get!23248 (Option!16644) tuple2!67464)

(assert (=> b!6900823 (= lt!2466430 (get!23248 lt!2466434))))

(declare-fun lt!2466431 () Unit!160460)

(declare-fun mainMatchTheorem!3928 (Regex!16865 List!66622) Unit!160460)

(assert (=> b!6900823 (= lt!2466431 (mainMatchTheorem!3928 r1!6342 (_1!37035 lt!2466430)))))

(declare-fun matchR!9010 (Regex!16865 List!66622) Bool)

(declare-fun matchRSpec!3928 (Regex!16865 List!66622) Bool)

(assert (=> b!6900823 (= (matchR!9010 r1!6342 (_1!37035 lt!2466430)) (matchRSpec!3928 r1!6342 (_1!37035 lt!2466430)))))

(declare-fun lt!2466419 () Unit!160460)

(assert (=> b!6900823 (= lt!2466419 (mainMatchTheorem!3928 lt!2466416 (_2!37035 lt!2466430)))))

(assert (=> b!6900823 (= (matchR!9010 lt!2466416 (_2!37035 lt!2466430)) (matchRSpec!3928 lt!2466416 (_2!37035 lt!2466430)))))

(declare-fun lt!2466436 () Unit!160460)

(assert (=> b!6900823 (= lt!2466436 (lemmaFindConcatSeparationEquivalentToExists!2820 r2!6280 r3!135 (_2!37035 lt!2466430)))))

(declare-fun lt!2466405 () Option!16644)

(assert (=> b!6900823 (= lt!2466405 (findConcatSeparation!3058 r2!6280 r3!135 Nil!66498 (_2!37035 lt!2466430) (_2!37035 lt!2466430)))))

(assert (=> b!6900823 (= (isDefined!13347 lt!2466405) (Exists!3873 lambda!391778))))

(declare-fun lt!2466429 () Unit!160460)

(assert (=> b!6900823 (= lt!2466429 (lemmaExistCutMatchRandMatchRSpecEquivalent!2346 r2!6280 r3!135 (_2!37035 lt!2466430)))))

(assert (=> b!6900823 (= (Exists!3873 lambda!391778) (Exists!3873 lambda!391779))))

(declare-fun lt!2466417 () tuple2!67464)

(assert (=> b!6900823 (= lt!2466417 (get!23248 lt!2466405))))

(declare-fun lt!2466412 () Unit!160460)

(assert (=> b!6900823 (= lt!2466412 (mainMatchTheorem!3928 r2!6280 (_1!37035 lt!2466417)))))

(assert (=> b!6900823 (= (matchR!9010 r2!6280 (_1!37035 lt!2466417)) (matchRSpec!3928 r2!6280 (_1!37035 lt!2466417)))))

(declare-fun lt!2466406 () Unit!160460)

(assert (=> b!6900823 (= lt!2466406 (mainMatchTheorem!3928 r3!135 (_2!37035 lt!2466417)))))

(assert (=> b!6900823 (= (matchR!9010 r3!135 (_2!37035 lt!2466417)) (matchRSpec!3928 r3!135 (_2!37035 lt!2466417)))))

(declare-fun lt!2466427 () Unit!160460)

(declare-fun lemmaConcatAssociativity!2998 (List!66622 List!66622 List!66622) Unit!160460)

(assert (=> b!6900823 (= lt!2466427 (lemmaConcatAssociativity!2998 (_1!37035 lt!2466430) (_1!37035 lt!2466417) (_2!37035 lt!2466417)))))

(declare-fun ++!14918 (List!66622 List!66622) List!66622)

(assert (=> b!6900823 (= lt!2466407 (++!14918 (_1!37035 lt!2466430) (_1!37035 lt!2466417)))))

(assert (=> b!6900823 (= (++!14918 lt!2466407 (_2!37035 lt!2466417)) (++!14918 (_1!37035 lt!2466430) (++!14918 (_1!37035 lt!2466417) (_2!37035 lt!2466417))))))

(declare-fun lt!2466435 () Unit!160460)

(assert (=> b!6900823 (= lt!2466435 (mainMatchTheorem!3928 lt!2466409 lt!2466407))))

(assert (=> b!6900823 (= (matchR!9010 lt!2466409 lt!2466407) (matchRSpec!3928 lt!2466409 lt!2466407))))

(declare-fun lt!2466425 () Unit!160460)

(assert (=> b!6900823 (= lt!2466425 (lemmaFindConcatSeparationEquivalentToExists!2820 r1!6342 r2!6280 lt!2466407))))

(declare-fun lt!2466413 () Bool)

(assert (=> b!6900823 (= lt!2466413 (isDefined!13347 (findConcatSeparation!3058 r1!6342 r2!6280 Nil!66498 lt!2466407 lt!2466407)))))

(assert (=> b!6900823 (= lt!2466413 (Exists!3873 lambda!391780))))

(declare-fun lt!2466433 () Unit!160460)

(assert (=> b!6900823 (= lt!2466433 (lemmaExistCutMatchRandMatchRSpecEquivalent!2346 r1!6342 r2!6280 lt!2466407))))

(assert (=> b!6900823 (= (Exists!3873 lambda!391780) (Exists!3873 lambda!391781))))

(declare-fun lt!2466426 () Unit!160460)

(declare-fun lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!66 (Regex!16865 Regex!16865 List!66622 List!66622 List!66622 List!66622 List!66622) Unit!160460)

(assert (=> b!6900823 (= lt!2466426 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!66 r1!6342 r2!6280 (_1!37035 lt!2466430) (_1!37035 lt!2466417) lt!2466407 Nil!66498 lt!2466407))))

(assert (=> b!6900823 lt!2466413))

(declare-fun lt!2466408 () Unit!160460)

(assert (=> b!6900823 (= lt!2466408 (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!66 lt!2466409 r3!135 lt!2466407 (_2!37035 lt!2466417) s!14361 Nil!66498 s!14361))))

(assert (=> b!6900823 (isDefined!13347 (findConcatSeparation!3058 lt!2466409 r3!135 Nil!66498 s!14361 s!14361))))

(declare-fun lt!2466421 () Unit!160460)

(assert (=> b!6900823 (= lt!2466421 (lemmaFindConcatSeparationEquivalentToExists!2820 lt!2466409 r3!135 s!14361))))

(assert (=> b!6900823 (Exists!3873 lambda!391782)))

(declare-fun lt!2466422 () Unit!160460)

(assert (=> b!6900823 (= lt!2466422 (lemmaExistCutMatchRandMatchRSpecEquivalent!2346 lt!2466409 r3!135 s!14361))))

(assert (=> b!6900823 false))

(declare-fun b!6900824 () Bool)

(declare-fun e!4155843 () Bool)

(declare-fun tp!1900035 () Bool)

(assert (=> b!6900824 (= e!4155843 (and tp_is_empty!42955 tp!1900035))))

(declare-fun b!6900825 () Bool)

(declare-fun res!2814009 () Bool)

(assert (=> b!6900825 (=> (not res!2814009) (not e!4155837))))

(assert (=> b!6900825 (= res!2814009 (validRegex!8573 r2!6280))))

(declare-fun b!6900814 () Bool)

(declare-fun tp!1900039 () Bool)

(declare-fun tp!1900034 () Bool)

(assert (=> b!6900814 (= e!4155838 (and tp!1900039 tp!1900034))))

(declare-fun res!2814006 () Bool)

(assert (=> start!664682 (=> (not res!2814006) (not e!4155837))))

(assert (=> start!664682 (= res!2814006 (validRegex!8573 r1!6342))))

(assert (=> start!664682 e!4155837))

(assert (=> start!664682 e!4155844))

(assert (=> start!664682 e!4155838))

(assert (=> start!664682 e!4155842))

(assert (=> start!664682 e!4155843))

(declare-fun b!6900826 () Bool)

(declare-fun tp!1900024 () Bool)

(assert (=> b!6900826 (= e!4155838 tp!1900024)))

(declare-fun b!6900827 () Bool)

(declare-fun tp!1900033 () Bool)

(declare-fun tp!1900029 () Bool)

(assert (=> b!6900827 (= e!4155838 (and tp!1900033 tp!1900029))))

(declare-fun b!6900828 () Bool)

(declare-fun tp!1900031 () Bool)

(declare-fun tp!1900037 () Bool)

(assert (=> b!6900828 (= e!4155842 (and tp!1900031 tp!1900037))))

(declare-fun b!6900829 () Bool)

(assert (=> b!6900829 (= e!4155837 (not e!4155841))))

(declare-fun res!2814007 () Bool)

(assert (=> b!6900829 (=> res!2814007 e!4155841)))

(declare-fun lt!2466432 () Bool)

(assert (=> b!6900829 (= res!2814007 lt!2466432)))

(declare-fun lt!2466437 () Regex!16865)

(assert (=> b!6900829 (= (matchR!9010 lt!2466437 s!14361) (matchRSpec!3928 lt!2466437 s!14361))))

(declare-fun lt!2466418 () Unit!160460)

(assert (=> b!6900829 (= lt!2466418 (mainMatchTheorem!3928 lt!2466437 s!14361))))

(assert (=> b!6900829 (= lt!2466432 (matchRSpec!3928 lt!2466428 s!14361))))

(assert (=> b!6900829 (= lt!2466432 (matchR!9010 lt!2466428 s!14361))))

(declare-fun lt!2466415 () Unit!160460)

(assert (=> b!6900829 (= lt!2466415 (mainMatchTheorem!3928 lt!2466428 s!14361))))

(assert (=> b!6900829 (= lt!2466437 (Concat!25710 r1!6342 lt!2466416))))

(assert (=> b!6900829 (= lt!2466416 (Concat!25710 r2!6280 r3!135))))

(assert (=> b!6900829 (= lt!2466428 (Concat!25710 lt!2466409 r3!135))))

(assert (=> b!6900829 (= lt!2466409 (Concat!25710 r1!6342 r2!6280))))

(assert (= (and start!664682 res!2814006) b!6900825))

(assert (= (and b!6900825 res!2814009) b!6900817))

(assert (= (and b!6900817 res!2814008) b!6900829))

(assert (= (and b!6900829 (not res!2814007)) b!6900820))

(assert (= (and b!6900820 c!1282140) b!6900823))

(assert (= (and b!6900820 (not c!1282140)) b!6900810))

(assert (= (and b!6900820 (not res!2814010)) b!6900813))

(get-info :version)

(assert (= (and start!664682 ((_ is ElementMatch!16865) r1!6342)) b!6900818))

(assert (= (and start!664682 ((_ is Concat!25710) r1!6342)) b!6900822))

(assert (= (and start!664682 ((_ is Star!16865) r1!6342)) b!6900815))

(assert (= (and start!664682 ((_ is Union!16865) r1!6342)) b!6900811))

(assert (= (and start!664682 ((_ is ElementMatch!16865) r2!6280)) b!6900819))

(assert (= (and start!664682 ((_ is Concat!25710) r2!6280)) b!6900827))

(assert (= (and start!664682 ((_ is Star!16865) r2!6280)) b!6900826))

(assert (= (and start!664682 ((_ is Union!16865) r2!6280)) b!6900814))

(assert (= (and start!664682 ((_ is ElementMatch!16865) r3!135)) b!6900812))

(assert (= (and start!664682 ((_ is Concat!25710) r3!135)) b!6900816))

(assert (= (and start!664682 ((_ is Star!16865) r3!135)) b!6900821))

(assert (= (and start!664682 ((_ is Union!16865) r3!135)) b!6900828))

(assert (= (and start!664682 ((_ is Cons!66498) s!14361)) b!6900824))

(declare-fun m!7618956 () Bool)

(assert (=> start!664682 m!7618956))

(declare-fun m!7618958 () Bool)

(assert (=> b!6900823 m!7618958))

(declare-fun m!7618960 () Bool)

(assert (=> b!6900823 m!7618960))

(declare-fun m!7618962 () Bool)

(assert (=> b!6900823 m!7618962))

(declare-fun m!7618964 () Bool)

(assert (=> b!6900823 m!7618964))

(declare-fun m!7618966 () Bool)

(assert (=> b!6900823 m!7618966))

(declare-fun m!7618968 () Bool)

(assert (=> b!6900823 m!7618968))

(declare-fun m!7618970 () Bool)

(assert (=> b!6900823 m!7618970))

(declare-fun m!7618972 () Bool)

(assert (=> b!6900823 m!7618972))

(declare-fun m!7618974 () Bool)

(assert (=> b!6900823 m!7618974))

(declare-fun m!7618976 () Bool)

(assert (=> b!6900823 m!7618976))

(declare-fun m!7618978 () Bool)

(assert (=> b!6900823 m!7618978))

(declare-fun m!7618980 () Bool)

(assert (=> b!6900823 m!7618980))

(assert (=> b!6900823 m!7618962))

(declare-fun m!7618982 () Bool)

(assert (=> b!6900823 m!7618982))

(declare-fun m!7618984 () Bool)

(assert (=> b!6900823 m!7618984))

(declare-fun m!7618986 () Bool)

(assert (=> b!6900823 m!7618986))

(declare-fun m!7618988 () Bool)

(assert (=> b!6900823 m!7618988))

(declare-fun m!7618990 () Bool)

(assert (=> b!6900823 m!7618990))

(declare-fun m!7618992 () Bool)

(assert (=> b!6900823 m!7618992))

(declare-fun m!7618994 () Bool)

(assert (=> b!6900823 m!7618994))

(declare-fun m!7618996 () Bool)

(assert (=> b!6900823 m!7618996))

(declare-fun m!7618998 () Bool)

(assert (=> b!6900823 m!7618998))

(declare-fun m!7619000 () Bool)

(assert (=> b!6900823 m!7619000))

(declare-fun m!7619002 () Bool)

(assert (=> b!6900823 m!7619002))

(declare-fun m!7619004 () Bool)

(assert (=> b!6900823 m!7619004))

(declare-fun m!7619006 () Bool)

(assert (=> b!6900823 m!7619006))

(declare-fun m!7619008 () Bool)

(assert (=> b!6900823 m!7619008))

(declare-fun m!7619010 () Bool)

(assert (=> b!6900823 m!7619010))

(declare-fun m!7619012 () Bool)

(assert (=> b!6900823 m!7619012))

(declare-fun m!7619014 () Bool)

(assert (=> b!6900823 m!7619014))

(declare-fun m!7619016 () Bool)

(assert (=> b!6900823 m!7619016))

(assert (=> b!6900823 m!7618958))

(declare-fun m!7619018 () Bool)

(assert (=> b!6900823 m!7619018))

(assert (=> b!6900823 m!7618980))

(assert (=> b!6900823 m!7618986))

(declare-fun m!7619020 () Bool)

(assert (=> b!6900823 m!7619020))

(declare-fun m!7619022 () Bool)

(assert (=> b!6900823 m!7619022))

(declare-fun m!7619024 () Bool)

(assert (=> b!6900823 m!7619024))

(declare-fun m!7619026 () Bool)

(assert (=> b!6900823 m!7619026))

(assert (=> b!6900823 m!7619016))

(declare-fun m!7619028 () Bool)

(assert (=> b!6900823 m!7619028))

(declare-fun m!7619030 () Bool)

(assert (=> b!6900823 m!7619030))

(declare-fun m!7619032 () Bool)

(assert (=> b!6900823 m!7619032))

(declare-fun m!7619034 () Bool)

(assert (=> b!6900823 m!7619034))

(declare-fun m!7619036 () Bool)

(assert (=> b!6900823 m!7619036))

(declare-fun m!7619038 () Bool)

(assert (=> b!6900823 m!7619038))

(assert (=> b!6900823 m!7619008))

(declare-fun m!7619040 () Bool)

(assert (=> b!6900823 m!7619040))

(declare-fun m!7619042 () Bool)

(assert (=> b!6900823 m!7619042))

(declare-fun m!7619044 () Bool)

(assert (=> b!6900823 m!7619044))

(declare-fun m!7619046 () Bool)

(assert (=> b!6900823 m!7619046))

(declare-fun m!7619048 () Bool)

(assert (=> b!6900825 m!7619048))

(declare-fun m!7619050 () Bool)

(assert (=> b!6900813 m!7619050))

(declare-fun m!7619052 () Bool)

(assert (=> b!6900813 m!7619052))

(declare-fun m!7619054 () Bool)

(assert (=> b!6900813 m!7619054))

(assert (=> b!6900813 m!7619042))

(declare-fun m!7619056 () Bool)

(assert (=> b!6900829 m!7619056))

(declare-fun m!7619058 () Bool)

(assert (=> b!6900829 m!7619058))

(declare-fun m!7619060 () Bool)

(assert (=> b!6900829 m!7619060))

(declare-fun m!7619062 () Bool)

(assert (=> b!6900829 m!7619062))

(declare-fun m!7619064 () Bool)

(assert (=> b!6900829 m!7619064))

(declare-fun m!7619066 () Bool)

(assert (=> b!6900829 m!7619066))

(declare-fun m!7619068 () Bool)

(assert (=> b!6900820 m!7619068))

(assert (=> b!6900820 m!7619052))

(assert (=> b!6900820 m!7618970))

(declare-fun m!7619070 () Bool)

(assert (=> b!6900820 m!7619070))

(declare-fun m!7619072 () Bool)

(assert (=> b!6900820 m!7619072))

(declare-fun m!7619074 () Bool)

(assert (=> b!6900817 m!7619074))

(check-sat (not b!6900813) (not b!6900821) (not b!6900820) (not b!6900817) (not b!6900827) (not b!6900816) (not b!6900815) (not b!6900814) tp_is_empty!42955 (not b!6900826) (not b!6900828) (not start!664682) (not b!6900824) (not b!6900825) (not b!6900829) (not b!6900811) (not b!6900823) (not b!6900822))
(check-sat)
(get-model)

(declare-fun b!6900845 () Bool)

(declare-fun e!4155850 () List!66622)

(assert (=> b!6900845 (= e!4155850 (Cons!66498 (h!72946 lt!2466407) (++!14918 (t!380365 lt!2466407) (_2!37035 lt!2466417))))))

(declare-fun b!6900846 () Bool)

(declare-fun res!2814016 () Bool)

(declare-fun e!4155849 () Bool)

(assert (=> b!6900846 (=> (not res!2814016) (not e!4155849))))

(declare-fun lt!2466440 () List!66622)

(declare-fun size!40756 (List!66622) Int)

(assert (=> b!6900846 (= res!2814016 (= (size!40756 lt!2466440) (+ (size!40756 lt!2466407) (size!40756 (_2!37035 lt!2466417)))))))

(declare-fun d!2161860 () Bool)

(assert (=> d!2161860 e!4155849))

(declare-fun res!2814015 () Bool)

(assert (=> d!2161860 (=> (not res!2814015) (not e!4155849))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13059 (List!66622) (InoxSet C!34000))

(assert (=> d!2161860 (= res!2814015 (= (content!13059 lt!2466440) ((_ map or) (content!13059 lt!2466407) (content!13059 (_2!37035 lt!2466417)))))))

(assert (=> d!2161860 (= lt!2466440 e!4155850)))

(declare-fun c!1282144 () Bool)

(assert (=> d!2161860 (= c!1282144 ((_ is Nil!66498) lt!2466407))))

(assert (=> d!2161860 (= (++!14918 lt!2466407 (_2!37035 lt!2466417)) lt!2466440)))

(declare-fun b!6900847 () Bool)

(assert (=> b!6900847 (= e!4155849 (or (not (= (_2!37035 lt!2466417) Nil!66498)) (= lt!2466440 lt!2466407)))))

(declare-fun b!6900844 () Bool)

(assert (=> b!6900844 (= e!4155850 (_2!37035 lt!2466417))))

(assert (= (and d!2161860 c!1282144) b!6900844))

(assert (= (and d!2161860 (not c!1282144)) b!6900845))

(assert (= (and d!2161860 res!2814015) b!6900846))

(assert (= (and b!6900846 res!2814016) b!6900847))

(declare-fun m!7619076 () Bool)

(assert (=> b!6900845 m!7619076))

(declare-fun m!7619078 () Bool)

(assert (=> b!6900846 m!7619078))

(declare-fun m!7619080 () Bool)

(assert (=> b!6900846 m!7619080))

(declare-fun m!7619082 () Bool)

(assert (=> b!6900846 m!7619082))

(declare-fun m!7619084 () Bool)

(assert (=> d!2161860 m!7619084))

(declare-fun m!7619086 () Bool)

(assert (=> d!2161860 m!7619086))

(declare-fun m!7619088 () Bool)

(assert (=> d!2161860 m!7619088))

(assert (=> b!6900823 d!2161860))

(declare-fun d!2161862 () Bool)

(declare-fun choose!51372 (Int) Bool)

(assert (=> d!2161862 (= (Exists!3873 lambda!391778) (choose!51372 lambda!391778))))

(declare-fun bs!1841774 () Bool)

(assert (= bs!1841774 d!2161862))

(declare-fun m!7619090 () Bool)

(assert (=> bs!1841774 m!7619090))

(assert (=> b!6900823 d!2161862))

(declare-fun bs!1841775 () Bool)

(declare-fun d!2161864 () Bool)

(assert (= bs!1841775 (and d!2161864 b!6900823)))

(declare-fun lambda!391787 () Int)

(assert (=> bs!1841775 (not (= lambda!391787 lambda!391777))))

(declare-fun bs!1841776 () Bool)

(assert (= bs!1841776 (and d!2161864 b!6900813)))

(assert (=> bs!1841776 (not (= lambda!391787 lambda!391784))))

(assert (=> bs!1841775 (= (and (= lt!2466407 s!14361) (= r2!6280 lt!2466416)) (= lambda!391787 lambda!391776))))

(assert (=> bs!1841775 (= lambda!391787 lambda!391780)))

(assert (=> bs!1841775 (not (= lambda!391787 lambda!391779))))

(assert (=> bs!1841775 (= (and (= lt!2466407 s!14361) (= r1!6342 lt!2466409) (= r2!6280 r3!135)) (= lambda!391787 lambda!391782))))

(assert (=> bs!1841775 (not (= lambda!391787 lambda!391781))))

(declare-fun bs!1841777 () Bool)

(assert (= bs!1841777 (and d!2161864 b!6900820)))

(assert (=> bs!1841777 (= (and (= lt!2466407 s!14361) (= r2!6280 lt!2466416)) (= lambda!391787 lambda!391783))))

(assert (=> bs!1841775 (= (and (= lt!2466407 (_2!37035 lt!2466430)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391787 lambda!391778))))

(assert (=> d!2161864 true))

(assert (=> d!2161864 true))

(assert (=> d!2161864 true))

(assert (=> d!2161864 (= (isDefined!13347 (findConcatSeparation!3058 r1!6342 r2!6280 Nil!66498 lt!2466407 lt!2466407)) (Exists!3873 lambda!391787))))

(declare-fun lt!2466445 () Unit!160460)

(declare-fun choose!51373 (Regex!16865 Regex!16865 List!66622) Unit!160460)

(assert (=> d!2161864 (= lt!2466445 (choose!51373 r1!6342 r2!6280 lt!2466407))))

(assert (=> d!2161864 (validRegex!8573 r1!6342)))

(assert (=> d!2161864 (= (lemmaFindConcatSeparationEquivalentToExists!2820 r1!6342 r2!6280 lt!2466407) lt!2466445)))

(declare-fun bs!1841778 () Bool)

(assert (= bs!1841778 d!2161864))

(assert (=> bs!1841778 m!7618956))

(declare-fun m!7619092 () Bool)

(assert (=> bs!1841778 m!7619092))

(assert (=> bs!1841778 m!7619008))

(assert (=> bs!1841778 m!7619008))

(assert (=> bs!1841778 m!7619040))

(declare-fun m!7619094 () Bool)

(assert (=> bs!1841778 m!7619094))

(assert (=> b!6900823 d!2161864))

(declare-fun d!2161868 () Bool)

(assert (=> d!2161868 (= (get!23248 lt!2466434) (v!52915 lt!2466434))))

(assert (=> b!6900823 d!2161868))

(declare-fun d!2161870 () Bool)

(assert (=> d!2161870 (= (Exists!3873 lambda!391777) (choose!51372 lambda!391777))))

(declare-fun bs!1841779 () Bool)

(assert (= bs!1841779 d!2161870))

(declare-fun m!7619096 () Bool)

(assert (=> bs!1841779 m!7619096))

(assert (=> b!6900823 d!2161870))

(declare-fun bs!1841793 () Bool)

(declare-fun b!6900995 () Bool)

(assert (= bs!1841793 (and b!6900995 b!6900823)))

(declare-fun lambda!391799 () Int)

(assert (=> bs!1841793 (not (= lambda!391799 lambda!391777))))

(declare-fun bs!1841795 () Bool)

(assert (= bs!1841795 (and b!6900995 b!6900813)))

(assert (=> bs!1841795 (not (= lambda!391799 lambda!391784))))

(assert (=> bs!1841793 (not (= lambda!391799 lambda!391776))))

(assert (=> bs!1841793 (not (= lambda!391799 lambda!391780))))

(assert (=> bs!1841793 (not (= lambda!391799 lambda!391779))))

(declare-fun bs!1841798 () Bool)

(assert (= bs!1841798 (and b!6900995 d!2161864)))

(assert (=> bs!1841798 (not (= lambda!391799 lambda!391787))))

(assert (=> bs!1841793 (not (= lambda!391799 lambda!391782))))

(assert (=> bs!1841793 (not (= lambda!391799 lambda!391781))))

(declare-fun bs!1841801 () Bool)

(assert (= bs!1841801 (and b!6900995 b!6900820)))

(assert (=> bs!1841801 (not (= lambda!391799 lambda!391783))))

(assert (=> bs!1841793 (not (= lambda!391799 lambda!391778))))

(assert (=> b!6900995 true))

(assert (=> b!6900995 true))

(declare-fun bs!1841804 () Bool)

(declare-fun b!6901003 () Bool)

(assert (= bs!1841804 (and b!6901003 b!6900823)))

(declare-fun lambda!391801 () Int)

(assert (=> bs!1841804 (= (and (= (_2!37035 lt!2466417) s!14361) (= (regOne!34242 r3!135) r1!6342) (= (regTwo!34242 r3!135) lt!2466416)) (= lambda!391801 lambda!391777))))

(declare-fun bs!1841805 () Bool)

(assert (= bs!1841805 (and b!6901003 b!6900813)))

(assert (=> bs!1841805 (= (and (= (_2!37035 lt!2466417) s!14361) (= (regOne!34242 r3!135) r1!6342) (= (regTwo!34242 r3!135) lt!2466416)) (= lambda!391801 lambda!391784))))

(declare-fun bs!1841806 () Bool)

(assert (= bs!1841806 (and b!6901003 b!6900995)))

(assert (=> bs!1841806 (not (= lambda!391801 lambda!391799))))

(assert (=> bs!1841804 (not (= lambda!391801 lambda!391776))))

(assert (=> bs!1841804 (not (= lambda!391801 lambda!391780))))

(assert (=> bs!1841804 (= (and (= (_2!37035 lt!2466417) (_2!37035 lt!2466430)) (= (regOne!34242 r3!135) r2!6280) (= (regTwo!34242 r3!135) r3!135)) (= lambda!391801 lambda!391779))))

(declare-fun bs!1841807 () Bool)

(assert (= bs!1841807 (and b!6901003 d!2161864)))

(assert (=> bs!1841807 (not (= lambda!391801 lambda!391787))))

(assert (=> bs!1841804 (not (= lambda!391801 lambda!391782))))

(assert (=> bs!1841804 (= (and (= (_2!37035 lt!2466417) lt!2466407) (= (regOne!34242 r3!135) r1!6342) (= (regTwo!34242 r3!135) r2!6280)) (= lambda!391801 lambda!391781))))

(declare-fun bs!1841808 () Bool)

(assert (= bs!1841808 (and b!6901003 b!6900820)))

(assert (=> bs!1841808 (not (= lambda!391801 lambda!391783))))

(assert (=> bs!1841804 (not (= lambda!391801 lambda!391778))))

(assert (=> b!6901003 true))

(assert (=> b!6901003 true))

(declare-fun b!6900994 () Bool)

(declare-fun c!1282183 () Bool)

(assert (=> b!6900994 (= c!1282183 ((_ is ElementMatch!16865) r3!135))))

(declare-fun e!4155937 () Bool)

(declare-fun e!4155934 () Bool)

(assert (=> b!6900994 (= e!4155937 e!4155934)))

(declare-fun e!4155933 () Bool)

(declare-fun call!627546 () Bool)

(assert (=> b!6900995 (= e!4155933 call!627546)))

(declare-fun b!6900996 () Bool)

(declare-fun e!4155932 () Bool)

(declare-fun e!4155931 () Bool)

(assert (=> b!6900996 (= e!4155932 e!4155931)))

(declare-fun c!1282181 () Bool)

(assert (=> b!6900996 (= c!1282181 ((_ is Star!16865) r3!135))))

(declare-fun b!6900997 () Bool)

(declare-fun res!2814091 () Bool)

(assert (=> b!6900997 (=> res!2814091 e!4155933)))

(declare-fun call!627547 () Bool)

(assert (=> b!6900997 (= res!2814091 call!627547)))

(assert (=> b!6900997 (= e!4155931 e!4155933)))

(declare-fun b!6900998 () Bool)

(declare-fun e!4155936 () Bool)

(assert (=> b!6900998 (= e!4155932 e!4155936)))

(declare-fun res!2814093 () Bool)

(assert (=> b!6900998 (= res!2814093 (matchRSpec!3928 (regOne!34243 r3!135) (_2!37035 lt!2466417)))))

(assert (=> b!6900998 (=> res!2814093 e!4155936)))

(declare-fun b!6901000 () Bool)

(assert (=> b!6901000 (= e!4155934 (= (_2!37035 lt!2466417) (Cons!66498 (c!1282141 r3!135) Nil!66498)))))

(declare-fun bm!627541 () Bool)

(assert (=> bm!627541 (= call!627546 (Exists!3873 (ite c!1282181 lambda!391799 lambda!391801)))))

(declare-fun b!6901001 () Bool)

(declare-fun e!4155935 () Bool)

(assert (=> b!6901001 (= e!4155935 call!627547)))

(declare-fun bm!627542 () Bool)

(declare-fun isEmpty!38725 (List!66622) Bool)

(assert (=> bm!627542 (= call!627547 (isEmpty!38725 (_2!37035 lt!2466417)))))

(declare-fun b!6901002 () Bool)

(assert (=> b!6901002 (= e!4155935 e!4155937)))

(declare-fun res!2814092 () Bool)

(assert (=> b!6901002 (= res!2814092 (not ((_ is EmptyLang!16865) r3!135)))))

(assert (=> b!6901002 (=> (not res!2814092) (not e!4155937))))

(assert (=> b!6901003 (= e!4155931 call!627546)))

(declare-fun b!6901004 () Bool)

(assert (=> b!6901004 (= e!4155936 (matchRSpec!3928 (regTwo!34243 r3!135) (_2!37035 lt!2466417)))))

(declare-fun d!2161872 () Bool)

(declare-fun c!1282182 () Bool)

(assert (=> d!2161872 (= c!1282182 ((_ is EmptyExpr!16865) r3!135))))

(assert (=> d!2161872 (= (matchRSpec!3928 r3!135 (_2!37035 lt!2466417)) e!4155935)))

(declare-fun b!6900999 () Bool)

(declare-fun c!1282184 () Bool)

(assert (=> b!6900999 (= c!1282184 ((_ is Union!16865) r3!135))))

(assert (=> b!6900999 (= e!4155934 e!4155932)))

(assert (= (and d!2161872 c!1282182) b!6901001))

(assert (= (and d!2161872 (not c!1282182)) b!6901002))

(assert (= (and b!6901002 res!2814092) b!6900994))

(assert (= (and b!6900994 c!1282183) b!6901000))

(assert (= (and b!6900994 (not c!1282183)) b!6900999))

(assert (= (and b!6900999 c!1282184) b!6900998))

(assert (= (and b!6900999 (not c!1282184)) b!6900996))

(assert (= (and b!6900998 (not res!2814093)) b!6901004))

(assert (= (and b!6900996 c!1282181) b!6900997))

(assert (= (and b!6900996 (not c!1282181)) b!6901003))

(assert (= (and b!6900997 (not res!2814091)) b!6900995))

(assert (= (or b!6900995 b!6901003) bm!627541))

(assert (= (or b!6901001 b!6900997) bm!627542))

(declare-fun m!7619136 () Bool)

(assert (=> b!6900998 m!7619136))

(declare-fun m!7619138 () Bool)

(assert (=> bm!627541 m!7619138))

(declare-fun m!7619140 () Bool)

(assert (=> bm!627542 m!7619140))

(declare-fun m!7619142 () Bool)

(assert (=> b!6901004 m!7619142))

(assert (=> b!6900823 d!2161872))

(declare-fun d!2161886 () Bool)

(assert (=> d!2161886 (= (Exists!3873 lambda!391779) (choose!51372 lambda!391779))))

(declare-fun bs!1841809 () Bool)

(assert (= bs!1841809 d!2161886))

(declare-fun m!7619144 () Bool)

(assert (=> bs!1841809 m!7619144))

(assert (=> b!6900823 d!2161886))

(declare-fun bs!1841810 () Bool)

(declare-fun d!2161888 () Bool)

(assert (= bs!1841810 (and d!2161888 b!6900823)))

(declare-fun lambda!391802 () Int)

(assert (=> bs!1841810 (not (= lambda!391802 lambda!391777))))

(declare-fun bs!1841811 () Bool)

(assert (= bs!1841811 (and d!2161888 b!6901003)))

(assert (=> bs!1841811 (not (= lambda!391802 lambda!391801))))

(declare-fun bs!1841812 () Bool)

(assert (= bs!1841812 (and d!2161888 b!6900813)))

(assert (=> bs!1841812 (not (= lambda!391802 lambda!391784))))

(declare-fun bs!1841813 () Bool)

(assert (= bs!1841813 (and d!2161888 b!6900995)))

(assert (=> bs!1841813 (not (= lambda!391802 lambda!391799))))

(assert (=> bs!1841810 (= (and (= lt!2466409 r1!6342) (= r3!135 lt!2466416)) (= lambda!391802 lambda!391776))))

(assert (=> bs!1841810 (= (and (= s!14361 lt!2466407) (= lt!2466409 r1!6342) (= r3!135 r2!6280)) (= lambda!391802 lambda!391780))))

(assert (=> bs!1841810 (not (= lambda!391802 lambda!391779))))

(declare-fun bs!1841814 () Bool)

(assert (= bs!1841814 (and d!2161888 d!2161864)))

(assert (=> bs!1841814 (= (and (= s!14361 lt!2466407) (= lt!2466409 r1!6342) (= r3!135 r2!6280)) (= lambda!391802 lambda!391787))))

(assert (=> bs!1841810 (= lambda!391802 lambda!391782)))

(assert (=> bs!1841810 (not (= lambda!391802 lambda!391781))))

(declare-fun bs!1841815 () Bool)

(assert (= bs!1841815 (and d!2161888 b!6900820)))

(assert (=> bs!1841815 (= (and (= lt!2466409 r1!6342) (= r3!135 lt!2466416)) (= lambda!391802 lambda!391783))))

(assert (=> bs!1841810 (= (and (= s!14361 (_2!37035 lt!2466430)) (= lt!2466409 r2!6280)) (= lambda!391802 lambda!391778))))

(assert (=> d!2161888 true))

(assert (=> d!2161888 true))

(assert (=> d!2161888 true))

(assert (=> d!2161888 (= (isDefined!13347 (findConcatSeparation!3058 lt!2466409 r3!135 Nil!66498 s!14361 s!14361)) (Exists!3873 lambda!391802))))

(declare-fun lt!2466452 () Unit!160460)

(assert (=> d!2161888 (= lt!2466452 (choose!51373 lt!2466409 r3!135 s!14361))))

(assert (=> d!2161888 (validRegex!8573 lt!2466409)))

(assert (=> d!2161888 (= (lemmaFindConcatSeparationEquivalentToExists!2820 lt!2466409 r3!135 s!14361) lt!2466452)))

(declare-fun bs!1841818 () Bool)

(assert (= bs!1841818 d!2161888))

(declare-fun m!7619156 () Bool)

(assert (=> bs!1841818 m!7619156))

(declare-fun m!7619158 () Bool)

(assert (=> bs!1841818 m!7619158))

(assert (=> bs!1841818 m!7618986))

(assert (=> bs!1841818 m!7618986))

(assert (=> bs!1841818 m!7618988))

(declare-fun m!7619160 () Bool)

(assert (=> bs!1841818 m!7619160))

(assert (=> b!6900823 d!2161888))

(declare-fun bs!1841819 () Bool)

(declare-fun b!6901033 () Bool)

(assert (= bs!1841819 (and b!6901033 b!6900823)))

(declare-fun lambda!391803 () Int)

(assert (=> bs!1841819 (not (= lambda!391803 lambda!391777))))

(declare-fun bs!1841820 () Bool)

(assert (= bs!1841820 (and b!6901033 b!6901003)))

(assert (=> bs!1841820 (not (= lambda!391803 lambda!391801))))

(declare-fun bs!1841821 () Bool)

(assert (= bs!1841821 (and b!6901033 b!6900813)))

(assert (=> bs!1841821 (not (= lambda!391803 lambda!391784))))

(declare-fun bs!1841822 () Bool)

(assert (= bs!1841822 (and b!6901033 b!6900995)))

(assert (=> bs!1841822 (= (and (= (_2!37035 lt!2466430) (_2!37035 lt!2466417)) (= (reg!17194 lt!2466416) (reg!17194 r3!135)) (= lt!2466416 r3!135)) (= lambda!391803 lambda!391799))))

(assert (=> bs!1841819 (not (= lambda!391803 lambda!391776))))

(assert (=> bs!1841819 (not (= lambda!391803 lambda!391780))))

(declare-fun bs!1841823 () Bool)

(assert (= bs!1841823 (and b!6901033 d!2161888)))

(assert (=> bs!1841823 (not (= lambda!391803 lambda!391802))))

(assert (=> bs!1841819 (not (= lambda!391803 lambda!391779))))

(declare-fun bs!1841824 () Bool)

(assert (= bs!1841824 (and b!6901033 d!2161864)))

(assert (=> bs!1841824 (not (= lambda!391803 lambda!391787))))

(assert (=> bs!1841819 (not (= lambda!391803 lambda!391782))))

(assert (=> bs!1841819 (not (= lambda!391803 lambda!391781))))

(declare-fun bs!1841825 () Bool)

(assert (= bs!1841825 (and b!6901033 b!6900820)))

(assert (=> bs!1841825 (not (= lambda!391803 lambda!391783))))

(assert (=> bs!1841819 (not (= lambda!391803 lambda!391778))))

(assert (=> b!6901033 true))

(assert (=> b!6901033 true))

(declare-fun bs!1841826 () Bool)

(declare-fun b!6901041 () Bool)

(assert (= bs!1841826 (and b!6901041 b!6900823)))

(declare-fun lambda!391804 () Int)

(assert (=> bs!1841826 (= (and (= (_2!37035 lt!2466430) s!14361) (= (regOne!34242 lt!2466416) r1!6342) (= (regTwo!34242 lt!2466416) lt!2466416)) (= lambda!391804 lambda!391777))))

(declare-fun bs!1841827 () Bool)

(assert (= bs!1841827 (and b!6901041 b!6900813)))

(assert (=> bs!1841827 (= (and (= (_2!37035 lt!2466430) s!14361) (= (regOne!34242 lt!2466416) r1!6342) (= (regTwo!34242 lt!2466416) lt!2466416)) (= lambda!391804 lambda!391784))))

(declare-fun bs!1841828 () Bool)

(assert (= bs!1841828 (and b!6901041 b!6900995)))

(assert (=> bs!1841828 (not (= lambda!391804 lambda!391799))))

(assert (=> bs!1841826 (not (= lambda!391804 lambda!391776))))

(assert (=> bs!1841826 (not (= lambda!391804 lambda!391780))))

(declare-fun bs!1841829 () Bool)

(assert (= bs!1841829 (and b!6901041 d!2161888)))

(assert (=> bs!1841829 (not (= lambda!391804 lambda!391802))))

(assert (=> bs!1841826 (= (and (= (regOne!34242 lt!2466416) r2!6280) (= (regTwo!34242 lt!2466416) r3!135)) (= lambda!391804 lambda!391779))))

(declare-fun bs!1841830 () Bool)

(assert (= bs!1841830 (and b!6901041 d!2161864)))

(assert (=> bs!1841830 (not (= lambda!391804 lambda!391787))))

(assert (=> bs!1841826 (not (= lambda!391804 lambda!391782))))

(assert (=> bs!1841826 (= (and (= (_2!37035 lt!2466430) lt!2466407) (= (regOne!34242 lt!2466416) r1!6342) (= (regTwo!34242 lt!2466416) r2!6280)) (= lambda!391804 lambda!391781))))

(declare-fun bs!1841831 () Bool)

(assert (= bs!1841831 (and b!6901041 b!6901003)))

(assert (=> bs!1841831 (= (and (= (_2!37035 lt!2466430) (_2!37035 lt!2466417)) (= (regOne!34242 lt!2466416) (regOne!34242 r3!135)) (= (regTwo!34242 lt!2466416) (regTwo!34242 r3!135))) (= lambda!391804 lambda!391801))))

(declare-fun bs!1841832 () Bool)

(assert (= bs!1841832 (and b!6901041 b!6901033)))

(assert (=> bs!1841832 (not (= lambda!391804 lambda!391803))))

(declare-fun bs!1841833 () Bool)

(assert (= bs!1841833 (and b!6901041 b!6900820)))

(assert (=> bs!1841833 (not (= lambda!391804 lambda!391783))))

(assert (=> bs!1841826 (not (= lambda!391804 lambda!391778))))

(assert (=> b!6901041 true))

(assert (=> b!6901041 true))

(declare-fun b!6901032 () Bool)

(declare-fun c!1282193 () Bool)

(assert (=> b!6901032 (= c!1282193 ((_ is ElementMatch!16865) lt!2466416))))

(declare-fun e!4155965 () Bool)

(declare-fun e!4155962 () Bool)

(assert (=> b!6901032 (= e!4155965 e!4155962)))

(declare-fun e!4155961 () Bool)

(declare-fun call!627557 () Bool)

(assert (=> b!6901033 (= e!4155961 call!627557)))

(declare-fun b!6901034 () Bool)

(declare-fun e!4155960 () Bool)

(declare-fun e!4155959 () Bool)

(assert (=> b!6901034 (= e!4155960 e!4155959)))

(declare-fun c!1282191 () Bool)

(assert (=> b!6901034 (= c!1282191 ((_ is Star!16865) lt!2466416))))

(declare-fun b!6901035 () Bool)

(declare-fun res!2814109 () Bool)

(assert (=> b!6901035 (=> res!2814109 e!4155961)))

(declare-fun call!627558 () Bool)

(assert (=> b!6901035 (= res!2814109 call!627558)))

(assert (=> b!6901035 (= e!4155959 e!4155961)))

(declare-fun b!6901036 () Bool)

(declare-fun e!4155964 () Bool)

(assert (=> b!6901036 (= e!4155960 e!4155964)))

(declare-fun res!2814111 () Bool)

(assert (=> b!6901036 (= res!2814111 (matchRSpec!3928 (regOne!34243 lt!2466416) (_2!37035 lt!2466430)))))

(assert (=> b!6901036 (=> res!2814111 e!4155964)))

(declare-fun b!6901038 () Bool)

(assert (=> b!6901038 (= e!4155962 (= (_2!37035 lt!2466430) (Cons!66498 (c!1282141 lt!2466416) Nil!66498)))))

(declare-fun bm!627552 () Bool)

(assert (=> bm!627552 (= call!627557 (Exists!3873 (ite c!1282191 lambda!391803 lambda!391804)))))

(declare-fun b!6901039 () Bool)

(declare-fun e!4155963 () Bool)

(assert (=> b!6901039 (= e!4155963 call!627558)))

(declare-fun bm!627553 () Bool)

(assert (=> bm!627553 (= call!627558 (isEmpty!38725 (_2!37035 lt!2466430)))))

(declare-fun b!6901040 () Bool)

(assert (=> b!6901040 (= e!4155963 e!4155965)))

(declare-fun res!2814110 () Bool)

(assert (=> b!6901040 (= res!2814110 (not ((_ is EmptyLang!16865) lt!2466416)))))

(assert (=> b!6901040 (=> (not res!2814110) (not e!4155965))))

(assert (=> b!6901041 (= e!4155959 call!627557)))

(declare-fun b!6901042 () Bool)

(assert (=> b!6901042 (= e!4155964 (matchRSpec!3928 (regTwo!34243 lt!2466416) (_2!37035 lt!2466430)))))

(declare-fun d!2161896 () Bool)

(declare-fun c!1282192 () Bool)

(assert (=> d!2161896 (= c!1282192 ((_ is EmptyExpr!16865) lt!2466416))))

(assert (=> d!2161896 (= (matchRSpec!3928 lt!2466416 (_2!37035 lt!2466430)) e!4155963)))

(declare-fun b!6901037 () Bool)

(declare-fun c!1282194 () Bool)

(assert (=> b!6901037 (= c!1282194 ((_ is Union!16865) lt!2466416))))

(assert (=> b!6901037 (= e!4155962 e!4155960)))

(assert (= (and d!2161896 c!1282192) b!6901039))

(assert (= (and d!2161896 (not c!1282192)) b!6901040))

(assert (= (and b!6901040 res!2814110) b!6901032))

(assert (= (and b!6901032 c!1282193) b!6901038))

(assert (= (and b!6901032 (not c!1282193)) b!6901037))

(assert (= (and b!6901037 c!1282194) b!6901036))

(assert (= (and b!6901037 (not c!1282194)) b!6901034))

(assert (= (and b!6901036 (not res!2814111)) b!6901042))

(assert (= (and b!6901034 c!1282191) b!6901035))

(assert (= (and b!6901034 (not c!1282191)) b!6901041))

(assert (= (and b!6901035 (not res!2814109)) b!6901033))

(assert (= (or b!6901033 b!6901041) bm!627552))

(assert (= (or b!6901039 b!6901035) bm!627553))

(declare-fun m!7619162 () Bool)

(assert (=> b!6901036 m!7619162))

(declare-fun m!7619164 () Bool)

(assert (=> bm!627552 m!7619164))

(declare-fun m!7619166 () Bool)

(assert (=> bm!627553 m!7619166))

(declare-fun m!7619168 () Bool)

(assert (=> b!6901042 m!7619168))

(assert (=> b!6900823 d!2161896))

(declare-fun b!6901073 () Bool)

(declare-fun res!2814135 () Bool)

(declare-fun e!4155984 () Bool)

(assert (=> b!6901073 (=> (not res!2814135) (not e!4155984))))

(declare-fun lt!2466465 () Option!16644)

(assert (=> b!6901073 (= res!2814135 (matchR!9010 r3!135 (_2!37035 (get!23248 lt!2466465))))))

(declare-fun d!2161898 () Bool)

(declare-fun e!4155983 () Bool)

(assert (=> d!2161898 e!4155983))

(declare-fun res!2814138 () Bool)

(assert (=> d!2161898 (=> res!2814138 e!4155983)))

(assert (=> d!2161898 (= res!2814138 e!4155984)))

(declare-fun res!2814137 () Bool)

(assert (=> d!2161898 (=> (not res!2814137) (not e!4155984))))

(assert (=> d!2161898 (= res!2814137 (isDefined!13347 lt!2466465))))

(declare-fun e!4155986 () Option!16644)

(assert (=> d!2161898 (= lt!2466465 e!4155986)))

(declare-fun c!1282199 () Bool)

(declare-fun e!4155982 () Bool)

(assert (=> d!2161898 (= c!1282199 e!4155982)))

(declare-fun res!2814134 () Bool)

(assert (=> d!2161898 (=> (not res!2814134) (not e!4155982))))

(assert (=> d!2161898 (= res!2814134 (matchR!9010 r2!6280 Nil!66498))))

(assert (=> d!2161898 (validRegex!8573 r2!6280)))

(assert (=> d!2161898 (= (findConcatSeparation!3058 r2!6280 r3!135 Nil!66498 (_2!37035 lt!2466430) (_2!37035 lt!2466430)) lt!2466465)))

(declare-fun b!6901074 () Bool)

(declare-fun e!4155985 () Option!16644)

(assert (=> b!6901074 (= e!4155985 None!16643)))

(declare-fun b!6901075 () Bool)

(assert (=> b!6901075 (= e!4155984 (= (++!14918 (_1!37035 (get!23248 lt!2466465)) (_2!37035 (get!23248 lt!2466465))) (_2!37035 lt!2466430)))))

(declare-fun b!6901076 () Bool)

(assert (=> b!6901076 (= e!4155983 (not (isDefined!13347 lt!2466465)))))

(declare-fun b!6901077 () Bool)

(declare-fun res!2814136 () Bool)

(assert (=> b!6901077 (=> (not res!2814136) (not e!4155984))))

(assert (=> b!6901077 (= res!2814136 (matchR!9010 r2!6280 (_1!37035 (get!23248 lt!2466465))))))

(declare-fun b!6901078 () Bool)

(declare-fun lt!2466467 () Unit!160460)

(declare-fun lt!2466466 () Unit!160460)

(assert (=> b!6901078 (= lt!2466467 lt!2466466)))

(assert (=> b!6901078 (= (++!14918 (++!14918 Nil!66498 (Cons!66498 (h!72946 (_2!37035 lt!2466430)) Nil!66498)) (t!380365 (_2!37035 lt!2466430))) (_2!37035 lt!2466430))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2792 (List!66622 C!34000 List!66622 List!66622) Unit!160460)

(assert (=> b!6901078 (= lt!2466466 (lemmaMoveElementToOtherListKeepsConcatEq!2792 Nil!66498 (h!72946 (_2!37035 lt!2466430)) (t!380365 (_2!37035 lt!2466430)) (_2!37035 lt!2466430)))))

(assert (=> b!6901078 (= e!4155985 (findConcatSeparation!3058 r2!6280 r3!135 (++!14918 Nil!66498 (Cons!66498 (h!72946 (_2!37035 lt!2466430)) Nil!66498)) (t!380365 (_2!37035 lt!2466430)) (_2!37035 lt!2466430)))))

(declare-fun b!6901079 () Bool)

(assert (=> b!6901079 (= e!4155986 e!4155985)))

(declare-fun c!1282200 () Bool)

(assert (=> b!6901079 (= c!1282200 ((_ is Nil!66498) (_2!37035 lt!2466430)))))

(declare-fun b!6901080 () Bool)

(assert (=> b!6901080 (= e!4155982 (matchR!9010 r3!135 (_2!37035 lt!2466430)))))

(declare-fun b!6901081 () Bool)

(assert (=> b!6901081 (= e!4155986 (Some!16643 (tuple2!67465 Nil!66498 (_2!37035 lt!2466430))))))

(assert (= (and d!2161898 res!2814134) b!6901080))

(assert (= (and d!2161898 c!1282199) b!6901081))

(assert (= (and d!2161898 (not c!1282199)) b!6901079))

(assert (= (and b!6901079 c!1282200) b!6901074))

(assert (= (and b!6901079 (not c!1282200)) b!6901078))

(assert (= (and d!2161898 res!2814137) b!6901077))

(assert (= (and b!6901077 res!2814136) b!6901073))

(assert (= (and b!6901073 res!2814135) b!6901075))

(assert (= (and d!2161898 (not res!2814138)) b!6901076))

(declare-fun m!7619184 () Bool)

(assert (=> b!6901076 m!7619184))

(assert (=> d!2161898 m!7619184))

(declare-fun m!7619186 () Bool)

(assert (=> d!2161898 m!7619186))

(assert (=> d!2161898 m!7619048))

(declare-fun m!7619188 () Bool)

(assert (=> b!6901077 m!7619188))

(declare-fun m!7619190 () Bool)

(assert (=> b!6901077 m!7619190))

(assert (=> b!6901075 m!7619188))

(declare-fun m!7619192 () Bool)

(assert (=> b!6901075 m!7619192))

(assert (=> b!6901073 m!7619188))

(declare-fun m!7619194 () Bool)

(assert (=> b!6901073 m!7619194))

(declare-fun m!7619196 () Bool)

(assert (=> b!6901078 m!7619196))

(assert (=> b!6901078 m!7619196))

(declare-fun m!7619198 () Bool)

(assert (=> b!6901078 m!7619198))

(declare-fun m!7619200 () Bool)

(assert (=> b!6901078 m!7619200))

(assert (=> b!6901078 m!7619196))

(declare-fun m!7619202 () Bool)

(assert (=> b!6901078 m!7619202))

(declare-fun m!7619204 () Bool)

(assert (=> b!6901080 m!7619204))

(assert (=> b!6900823 d!2161898))

(declare-fun d!2161906 () Bool)

(assert (=> d!2161906 (= (Exists!3873 lambda!391781) (choose!51372 lambda!391781))))

(declare-fun bs!1841852 () Bool)

(assert (= bs!1841852 d!2161906))

(declare-fun m!7619206 () Bool)

(assert (=> bs!1841852 m!7619206))

(assert (=> b!6900823 d!2161906))

(declare-fun d!2161908 () Bool)

(assert (=> d!2161908 (= (matchR!9010 r2!6280 (_1!37035 lt!2466417)) (matchRSpec!3928 r2!6280 (_1!37035 lt!2466417)))))

(declare-fun lt!2466470 () Unit!160460)

(declare-fun choose!51376 (Regex!16865 List!66622) Unit!160460)

(assert (=> d!2161908 (= lt!2466470 (choose!51376 r2!6280 (_1!37035 lt!2466417)))))

(assert (=> d!2161908 (validRegex!8573 r2!6280)))

(assert (=> d!2161908 (= (mainMatchTheorem!3928 r2!6280 (_1!37035 lt!2466417)) lt!2466470)))

(declare-fun bs!1841853 () Bool)

(assert (= bs!1841853 d!2161908))

(assert (=> bs!1841853 m!7618964))

(assert (=> bs!1841853 m!7618996))

(declare-fun m!7619208 () Bool)

(assert (=> bs!1841853 m!7619208))

(assert (=> bs!1841853 m!7619048))

(assert (=> b!6900823 d!2161908))

(declare-fun d!2161910 () Bool)

(assert (=> d!2161910 (= (Exists!3873 lambda!391780) (choose!51372 lambda!391780))))

(declare-fun bs!1841854 () Bool)

(assert (= bs!1841854 d!2161910))

(declare-fun m!7619210 () Bool)

(assert (=> bs!1841854 m!7619210))

(assert (=> b!6900823 d!2161910))

(declare-fun d!2161912 () Bool)

(assert (=> d!2161912 (= (matchR!9010 r3!135 (_2!37035 lt!2466417)) (matchRSpec!3928 r3!135 (_2!37035 lt!2466417)))))

(declare-fun lt!2466471 () Unit!160460)

(assert (=> d!2161912 (= lt!2466471 (choose!51376 r3!135 (_2!37035 lt!2466417)))))

(assert (=> d!2161912 (validRegex!8573 r3!135)))

(assert (=> d!2161912 (= (mainMatchTheorem!3928 r3!135 (_2!37035 lt!2466417)) lt!2466471)))

(declare-fun bs!1841855 () Bool)

(assert (= bs!1841855 d!2161912))

(assert (=> bs!1841855 m!7619044))

(assert (=> bs!1841855 m!7619000))

(declare-fun m!7619212 () Bool)

(assert (=> bs!1841855 m!7619212))

(assert (=> bs!1841855 m!7619074))

(assert (=> b!6900823 d!2161912))

(declare-fun d!2161914 () Bool)

(assert (=> d!2161914 (= (Exists!3873 lambda!391782) (choose!51372 lambda!391782))))

(declare-fun bs!1841856 () Bool)

(assert (= bs!1841856 d!2161914))

(declare-fun m!7619214 () Bool)

(assert (=> bs!1841856 m!7619214))

(assert (=> b!6900823 d!2161914))

(declare-fun bs!1841857 () Bool)

(declare-fun d!2161916 () Bool)

(assert (= bs!1841857 (and d!2161916 b!6900823)))

(declare-fun lambda!391818 () Int)

(assert (=> bs!1841857 (not (= lambda!391818 lambda!391777))))

(declare-fun bs!1841858 () Bool)

(assert (= bs!1841858 (and d!2161916 b!6900813)))

(assert (=> bs!1841858 (not (= lambda!391818 lambda!391784))))

(declare-fun bs!1841859 () Bool)

(assert (= bs!1841859 (and d!2161916 b!6900995)))

(assert (=> bs!1841859 (not (= lambda!391818 lambda!391799))))

(declare-fun bs!1841860 () Bool)

(assert (= bs!1841860 (and d!2161916 b!6901041)))

(assert (=> bs!1841860 (not (= lambda!391818 lambda!391804))))

(assert (=> bs!1841857 (= (and (= lt!2466409 r1!6342) (= r3!135 lt!2466416)) (= lambda!391818 lambda!391776))))

(assert (=> bs!1841857 (= (and (= s!14361 lt!2466407) (= lt!2466409 r1!6342) (= r3!135 r2!6280)) (= lambda!391818 lambda!391780))))

(declare-fun bs!1841861 () Bool)

(assert (= bs!1841861 (and d!2161916 d!2161888)))

(assert (=> bs!1841861 (= lambda!391818 lambda!391802)))

(assert (=> bs!1841857 (not (= lambda!391818 lambda!391779))))

(declare-fun bs!1841862 () Bool)

(assert (= bs!1841862 (and d!2161916 d!2161864)))

(assert (=> bs!1841862 (= (and (= s!14361 lt!2466407) (= lt!2466409 r1!6342) (= r3!135 r2!6280)) (= lambda!391818 lambda!391787))))

(assert (=> bs!1841857 (= lambda!391818 lambda!391782)))

(assert (=> bs!1841857 (not (= lambda!391818 lambda!391781))))

(declare-fun bs!1841863 () Bool)

(assert (= bs!1841863 (and d!2161916 b!6901003)))

(assert (=> bs!1841863 (not (= lambda!391818 lambda!391801))))

(declare-fun bs!1841864 () Bool)

(assert (= bs!1841864 (and d!2161916 b!6901033)))

(assert (=> bs!1841864 (not (= lambda!391818 lambda!391803))))

(declare-fun bs!1841865 () Bool)

(assert (= bs!1841865 (and d!2161916 b!6900820)))

(assert (=> bs!1841865 (= (and (= lt!2466409 r1!6342) (= r3!135 lt!2466416)) (= lambda!391818 lambda!391783))))

(assert (=> bs!1841857 (= (and (= s!14361 (_2!37035 lt!2466430)) (= lt!2466409 r2!6280)) (= lambda!391818 lambda!391778))))

(assert (=> d!2161916 true))

(assert (=> d!2161916 true))

(assert (=> d!2161916 true))

(declare-fun lambda!391819 () Int)

(assert (=> bs!1841857 (= (and (= lt!2466409 r1!6342) (= r3!135 lt!2466416)) (= lambda!391819 lambda!391777))))

(assert (=> bs!1841858 (= (and (= lt!2466409 r1!6342) (= r3!135 lt!2466416)) (= lambda!391819 lambda!391784))))

(assert (=> bs!1841859 (not (= lambda!391819 lambda!391799))))

(assert (=> bs!1841860 (= (and (= s!14361 (_2!37035 lt!2466430)) (= lt!2466409 (regOne!34242 lt!2466416)) (= r3!135 (regTwo!34242 lt!2466416))) (= lambda!391819 lambda!391804))))

(assert (=> bs!1841857 (not (= lambda!391819 lambda!391776))))

(assert (=> bs!1841857 (not (= lambda!391819 lambda!391780))))

(assert (=> bs!1841861 (not (= lambda!391819 lambda!391802))))

(assert (=> bs!1841857 (= (and (= s!14361 (_2!37035 lt!2466430)) (= lt!2466409 r2!6280)) (= lambda!391819 lambda!391779))))

(assert (=> bs!1841862 (not (= lambda!391819 lambda!391787))))

(assert (=> bs!1841857 (not (= lambda!391819 lambda!391782))))

(declare-fun bs!1841866 () Bool)

(assert (= bs!1841866 d!2161916))

(assert (=> bs!1841866 (not (= lambda!391819 lambda!391818))))

(assert (=> bs!1841857 (= (and (= s!14361 lt!2466407) (= lt!2466409 r1!6342) (= r3!135 r2!6280)) (= lambda!391819 lambda!391781))))

(assert (=> bs!1841863 (= (and (= s!14361 (_2!37035 lt!2466417)) (= lt!2466409 (regOne!34242 r3!135)) (= r3!135 (regTwo!34242 r3!135))) (= lambda!391819 lambda!391801))))

(assert (=> bs!1841864 (not (= lambda!391819 lambda!391803))))

(assert (=> bs!1841865 (not (= lambda!391819 lambda!391783))))

(assert (=> bs!1841857 (not (= lambda!391819 lambda!391778))))

(assert (=> d!2161916 true))

(assert (=> d!2161916 true))

(assert (=> d!2161916 true))

(assert (=> d!2161916 (= (Exists!3873 lambda!391818) (Exists!3873 lambda!391819))))

(declare-fun lt!2466483 () Unit!160460)

(declare-fun choose!51379 (Regex!16865 Regex!16865 List!66622) Unit!160460)

(assert (=> d!2161916 (= lt!2466483 (choose!51379 lt!2466409 r3!135 s!14361))))

(assert (=> d!2161916 (validRegex!8573 lt!2466409)))

(assert (=> d!2161916 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2346 lt!2466409 r3!135 s!14361) lt!2466483)))

(declare-fun m!7619282 () Bool)

(assert (=> bs!1841866 m!7619282))

(declare-fun m!7619284 () Bool)

(assert (=> bs!1841866 m!7619284))

(declare-fun m!7619286 () Bool)

(assert (=> bs!1841866 m!7619286))

(assert (=> bs!1841866 m!7619156))

(assert (=> b!6900823 d!2161916))

(declare-fun b!6901201 () Bool)

(declare-fun e!4156063 () Bool)

(declare-fun e!4156065 () Bool)

(assert (=> b!6901201 (= e!4156063 e!4156065)))

(declare-fun res!2814212 () Bool)

(assert (=> b!6901201 (=> res!2814212 e!4156065)))

(declare-fun call!627575 () Bool)

(assert (=> b!6901201 (= res!2814212 call!627575)))

(declare-fun b!6901202 () Bool)

(declare-fun e!4156064 () Bool)

(declare-fun e!4156066 () Bool)

(assert (=> b!6901202 (= e!4156064 e!4156066)))

(declare-fun c!1282229 () Bool)

(assert (=> b!6901202 (= c!1282229 ((_ is EmptyLang!16865) r1!6342))))

(declare-fun b!6901203 () Bool)

(declare-fun e!4156062 () Bool)

(declare-fun nullable!6706 (Regex!16865) Bool)

(assert (=> b!6901203 (= e!4156062 (nullable!6706 r1!6342))))

(declare-fun b!6901204 () Bool)

(declare-fun derivativeStep!5385 (Regex!16865 C!34000) Regex!16865)

(declare-fun head!13838 (List!66622) C!34000)

(declare-fun tail!12890 (List!66622) List!66622)

(assert (=> b!6901204 (= e!4156062 (matchR!9010 (derivativeStep!5385 r1!6342 (head!13838 (_1!37035 lt!2466430))) (tail!12890 (_1!37035 lt!2466430))))))

(declare-fun b!6901205 () Bool)

(declare-fun res!2814211 () Bool)

(declare-fun e!4156061 () Bool)

(assert (=> b!6901205 (=> res!2814211 e!4156061)))

(declare-fun e!4156060 () Bool)

(assert (=> b!6901205 (= res!2814211 e!4156060)))

(declare-fun res!2814206 () Bool)

(assert (=> b!6901205 (=> (not res!2814206) (not e!4156060))))

(declare-fun lt!2466494 () Bool)

(assert (=> b!6901205 (= res!2814206 lt!2466494)))

(declare-fun bm!627570 () Bool)

(assert (=> bm!627570 (= call!627575 (isEmpty!38725 (_1!37035 lt!2466430)))))

(declare-fun b!6901206 () Bool)

(declare-fun res!2814210 () Bool)

(assert (=> b!6901206 (=> res!2814210 e!4156065)))

(assert (=> b!6901206 (= res!2814210 (not (isEmpty!38725 (tail!12890 (_1!37035 lt!2466430)))))))

(declare-fun b!6901207 () Bool)

(assert (=> b!6901207 (= e!4156065 (not (= (head!13838 (_1!37035 lt!2466430)) (c!1282141 r1!6342))))))

(declare-fun d!2161930 () Bool)

(assert (=> d!2161930 e!4156064))

(declare-fun c!1282227 () Bool)

(assert (=> d!2161930 (= c!1282227 ((_ is EmptyExpr!16865) r1!6342))))

(assert (=> d!2161930 (= lt!2466494 e!4156062)))

(declare-fun c!1282228 () Bool)

(assert (=> d!2161930 (= c!1282228 (isEmpty!38725 (_1!37035 lt!2466430)))))

(assert (=> d!2161930 (validRegex!8573 r1!6342)))

(assert (=> d!2161930 (= (matchR!9010 r1!6342 (_1!37035 lt!2466430)) lt!2466494)))

(declare-fun b!6901208 () Bool)

(declare-fun res!2814208 () Bool)

(assert (=> b!6901208 (=> (not res!2814208) (not e!4156060))))

(assert (=> b!6901208 (= res!2814208 (isEmpty!38725 (tail!12890 (_1!37035 lt!2466430))))))

(declare-fun b!6901209 () Bool)

(declare-fun res!2814209 () Bool)

(assert (=> b!6901209 (=> (not res!2814209) (not e!4156060))))

(assert (=> b!6901209 (= res!2814209 (not call!627575))))

(declare-fun b!6901210 () Bool)

(assert (=> b!6901210 (= e!4156060 (= (head!13838 (_1!37035 lt!2466430)) (c!1282141 r1!6342)))))

(declare-fun b!6901211 () Bool)

(assert (=> b!6901211 (= e!4156066 (not lt!2466494))))

(declare-fun b!6901212 () Bool)

(assert (=> b!6901212 (= e!4156061 e!4156063)))

(declare-fun res!2814213 () Bool)

(assert (=> b!6901212 (=> (not res!2814213) (not e!4156063))))

(assert (=> b!6901212 (= res!2814213 (not lt!2466494))))

(declare-fun b!6901213 () Bool)

(declare-fun res!2814207 () Bool)

(assert (=> b!6901213 (=> res!2814207 e!4156061)))

(assert (=> b!6901213 (= res!2814207 (not ((_ is ElementMatch!16865) r1!6342)))))

(assert (=> b!6901213 (= e!4156066 e!4156061)))

(declare-fun b!6901214 () Bool)

(assert (=> b!6901214 (= e!4156064 (= lt!2466494 call!627575))))

(assert (= (and d!2161930 c!1282228) b!6901203))

(assert (= (and d!2161930 (not c!1282228)) b!6901204))

(assert (= (and d!2161930 c!1282227) b!6901214))

(assert (= (and d!2161930 (not c!1282227)) b!6901202))

(assert (= (and b!6901202 c!1282229) b!6901211))

(assert (= (and b!6901202 (not c!1282229)) b!6901213))

(assert (= (and b!6901213 (not res!2814207)) b!6901205))

(assert (= (and b!6901205 res!2814206) b!6901209))

(assert (= (and b!6901209 res!2814209) b!6901208))

(assert (= (and b!6901208 res!2814208) b!6901210))

(assert (= (and b!6901205 (not res!2814211)) b!6901212))

(assert (= (and b!6901212 res!2814213) b!6901201))

(assert (= (and b!6901201 (not res!2814212)) b!6901206))

(assert (= (and b!6901206 (not res!2814210)) b!6901207))

(assert (= (or b!6901214 b!6901201 b!6901209) bm!627570))

(declare-fun m!7619302 () Bool)

(assert (=> b!6901204 m!7619302))

(assert (=> b!6901204 m!7619302))

(declare-fun m!7619304 () Bool)

(assert (=> b!6901204 m!7619304))

(declare-fun m!7619306 () Bool)

(assert (=> b!6901204 m!7619306))

(assert (=> b!6901204 m!7619304))

(assert (=> b!6901204 m!7619306))

(declare-fun m!7619308 () Bool)

(assert (=> b!6901204 m!7619308))

(declare-fun m!7619310 () Bool)

(assert (=> d!2161930 m!7619310))

(assert (=> d!2161930 m!7618956))

(declare-fun m!7619312 () Bool)

(assert (=> b!6901203 m!7619312))

(assert (=> b!6901208 m!7619306))

(assert (=> b!6901208 m!7619306))

(declare-fun m!7619314 () Bool)

(assert (=> b!6901208 m!7619314))

(assert (=> b!6901206 m!7619306))

(assert (=> b!6901206 m!7619306))

(assert (=> b!6901206 m!7619314))

(assert (=> bm!627570 m!7619310))

(assert (=> b!6901210 m!7619302))

(assert (=> b!6901207 m!7619302))

(assert (=> b!6900823 d!2161930))

(declare-fun bs!1841894 () Bool)

(declare-fun d!2161942 () Bool)

(assert (= bs!1841894 (and d!2161942 b!6900823)))

(declare-fun lambda!391823 () Int)

(assert (=> bs!1841894 (not (= lambda!391823 lambda!391777))))

(declare-fun bs!1841896 () Bool)

(assert (= bs!1841896 (and d!2161942 b!6900813)))

(assert (=> bs!1841896 (not (= lambda!391823 lambda!391784))))

(declare-fun bs!1841898 () Bool)

(assert (= bs!1841898 (and d!2161942 b!6901041)))

(assert (=> bs!1841898 (not (= lambda!391823 lambda!391804))))

(assert (=> bs!1841894 (= lambda!391823 lambda!391776)))

(assert (=> bs!1841894 (= (and (= s!14361 lt!2466407) (= lt!2466416 r2!6280)) (= lambda!391823 lambda!391780))))

(declare-fun bs!1841900 () Bool)

(assert (= bs!1841900 (and d!2161942 d!2161888)))

(assert (=> bs!1841900 (= (and (= r1!6342 lt!2466409) (= lt!2466416 r3!135)) (= lambda!391823 lambda!391802))))

(assert (=> bs!1841894 (not (= lambda!391823 lambda!391779))))

(declare-fun bs!1841903 () Bool)

(assert (= bs!1841903 (and d!2161942 d!2161864)))

(assert (=> bs!1841903 (= (and (= s!14361 lt!2466407) (= lt!2466416 r2!6280)) (= lambda!391823 lambda!391787))))

(assert (=> bs!1841894 (= (and (= r1!6342 lt!2466409) (= lt!2466416 r3!135)) (= lambda!391823 lambda!391782))))

(declare-fun bs!1841904 () Bool)

(assert (= bs!1841904 (and d!2161942 d!2161916)))

(assert (=> bs!1841904 (= (and (= r1!6342 lt!2466409) (= lt!2466416 r3!135)) (= lambda!391823 lambda!391818))))

(assert (=> bs!1841894 (not (= lambda!391823 lambda!391781))))

(declare-fun bs!1841906 () Bool)

(assert (= bs!1841906 (and d!2161942 b!6901003)))

(assert (=> bs!1841906 (not (= lambda!391823 lambda!391801))))

(declare-fun bs!1841907 () Bool)

(assert (= bs!1841907 (and d!2161942 b!6901033)))

(assert (=> bs!1841907 (not (= lambda!391823 lambda!391803))))

(assert (=> bs!1841904 (not (= lambda!391823 lambda!391819))))

(declare-fun bs!1841908 () Bool)

(assert (= bs!1841908 (and d!2161942 b!6900995)))

(assert (=> bs!1841908 (not (= lambda!391823 lambda!391799))))

(declare-fun bs!1841909 () Bool)

(assert (= bs!1841909 (and d!2161942 b!6900820)))

(assert (=> bs!1841909 (= lambda!391823 lambda!391783)))

(assert (=> bs!1841894 (= (and (= s!14361 (_2!37035 lt!2466430)) (= r1!6342 r2!6280) (= lt!2466416 r3!135)) (= lambda!391823 lambda!391778))))

(assert (=> d!2161942 true))

(assert (=> d!2161942 true))

(assert (=> d!2161942 true))

(declare-fun lambda!391825 () Int)

(assert (=> bs!1841894 (= lambda!391825 lambda!391777)))

(declare-fun bs!1841915 () Bool)

(assert (= bs!1841915 d!2161942))

(assert (=> bs!1841915 (not (= lambda!391825 lambda!391823))))

(assert (=> bs!1841896 (= lambda!391825 lambda!391784)))

(assert (=> bs!1841898 (= (and (= s!14361 (_2!37035 lt!2466430)) (= r1!6342 (regOne!34242 lt!2466416)) (= lt!2466416 (regTwo!34242 lt!2466416))) (= lambda!391825 lambda!391804))))

(assert (=> bs!1841894 (not (= lambda!391825 lambda!391776))))

(assert (=> bs!1841894 (not (= lambda!391825 lambda!391780))))

(assert (=> bs!1841900 (not (= lambda!391825 lambda!391802))))

(assert (=> bs!1841894 (= (and (= s!14361 (_2!37035 lt!2466430)) (= r1!6342 r2!6280) (= lt!2466416 r3!135)) (= lambda!391825 lambda!391779))))

(assert (=> bs!1841903 (not (= lambda!391825 lambda!391787))))

(assert (=> bs!1841894 (not (= lambda!391825 lambda!391782))))

(assert (=> bs!1841904 (not (= lambda!391825 lambda!391818))))

(assert (=> bs!1841894 (= (and (= s!14361 lt!2466407) (= lt!2466416 r2!6280)) (= lambda!391825 lambda!391781))))

(assert (=> bs!1841906 (= (and (= s!14361 (_2!37035 lt!2466417)) (= r1!6342 (regOne!34242 r3!135)) (= lt!2466416 (regTwo!34242 r3!135))) (= lambda!391825 lambda!391801))))

(assert (=> bs!1841907 (not (= lambda!391825 lambda!391803))))

(assert (=> bs!1841904 (= (and (= r1!6342 lt!2466409) (= lt!2466416 r3!135)) (= lambda!391825 lambda!391819))))

(assert (=> bs!1841908 (not (= lambda!391825 lambda!391799))))

(assert (=> bs!1841909 (not (= lambda!391825 lambda!391783))))

(assert (=> bs!1841894 (not (= lambda!391825 lambda!391778))))

(assert (=> d!2161942 true))

(assert (=> d!2161942 true))

(assert (=> d!2161942 true))

(assert (=> d!2161942 (= (Exists!3873 lambda!391823) (Exists!3873 lambda!391825))))

(declare-fun lt!2466495 () Unit!160460)

(assert (=> d!2161942 (= lt!2466495 (choose!51379 r1!6342 lt!2466416 s!14361))))

(assert (=> d!2161942 (validRegex!8573 r1!6342)))

(assert (=> d!2161942 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2346 r1!6342 lt!2466416 s!14361) lt!2466495)))

(declare-fun m!7619316 () Bool)

(assert (=> bs!1841915 m!7619316))

(declare-fun m!7619318 () Bool)

(assert (=> bs!1841915 m!7619318))

(declare-fun m!7619322 () Bool)

(assert (=> bs!1841915 m!7619322))

(assert (=> bs!1841915 m!7618956))

(assert (=> b!6900823 d!2161942))

(declare-fun b!6901226 () Bool)

(declare-fun e!4156077 () Bool)

(declare-fun e!4156079 () Bool)

(assert (=> b!6901226 (= e!4156077 e!4156079)))

(declare-fun res!2814223 () Bool)

(assert (=> b!6901226 (=> res!2814223 e!4156079)))

(declare-fun call!627578 () Bool)

(assert (=> b!6901226 (= res!2814223 call!627578)))

(declare-fun b!6901227 () Bool)

(declare-fun e!4156078 () Bool)

(declare-fun e!4156080 () Bool)

(assert (=> b!6901227 (= e!4156078 e!4156080)))

(declare-fun c!1282236 () Bool)

(assert (=> b!6901227 (= c!1282236 ((_ is EmptyLang!16865) lt!2466416))))

(declare-fun b!6901228 () Bool)

(declare-fun e!4156076 () Bool)

(assert (=> b!6901228 (= e!4156076 (nullable!6706 lt!2466416))))

(declare-fun b!6901229 () Bool)

(assert (=> b!6901229 (= e!4156076 (matchR!9010 (derivativeStep!5385 lt!2466416 (head!13838 (_2!37035 lt!2466430))) (tail!12890 (_2!37035 lt!2466430))))))

(declare-fun b!6901230 () Bool)

(declare-fun res!2814222 () Bool)

(declare-fun e!4156075 () Bool)

(assert (=> b!6901230 (=> res!2814222 e!4156075)))

(declare-fun e!4156074 () Bool)

(assert (=> b!6901230 (= res!2814222 e!4156074)))

(declare-fun res!2814217 () Bool)

(assert (=> b!6901230 (=> (not res!2814217) (not e!4156074))))

(declare-fun lt!2466496 () Bool)

(assert (=> b!6901230 (= res!2814217 lt!2466496)))

(declare-fun bm!627573 () Bool)

(assert (=> bm!627573 (= call!627578 (isEmpty!38725 (_2!37035 lt!2466430)))))

(declare-fun b!6901231 () Bool)

(declare-fun res!2814221 () Bool)

(assert (=> b!6901231 (=> res!2814221 e!4156079)))

(assert (=> b!6901231 (= res!2814221 (not (isEmpty!38725 (tail!12890 (_2!37035 lt!2466430)))))))

(declare-fun b!6901232 () Bool)

(assert (=> b!6901232 (= e!4156079 (not (= (head!13838 (_2!37035 lt!2466430)) (c!1282141 lt!2466416))))))

(declare-fun d!2161944 () Bool)

(assert (=> d!2161944 e!4156078))

(declare-fun c!1282234 () Bool)

(assert (=> d!2161944 (= c!1282234 ((_ is EmptyExpr!16865) lt!2466416))))

(assert (=> d!2161944 (= lt!2466496 e!4156076)))

(declare-fun c!1282235 () Bool)

(assert (=> d!2161944 (= c!1282235 (isEmpty!38725 (_2!37035 lt!2466430)))))

(assert (=> d!2161944 (validRegex!8573 lt!2466416)))

(assert (=> d!2161944 (= (matchR!9010 lt!2466416 (_2!37035 lt!2466430)) lt!2466496)))

(declare-fun b!6901233 () Bool)

(declare-fun res!2814219 () Bool)

(assert (=> b!6901233 (=> (not res!2814219) (not e!4156074))))

(assert (=> b!6901233 (= res!2814219 (isEmpty!38725 (tail!12890 (_2!37035 lt!2466430))))))

(declare-fun b!6901234 () Bool)

(declare-fun res!2814220 () Bool)

(assert (=> b!6901234 (=> (not res!2814220) (not e!4156074))))

(assert (=> b!6901234 (= res!2814220 (not call!627578))))

(declare-fun b!6901235 () Bool)

(assert (=> b!6901235 (= e!4156074 (= (head!13838 (_2!37035 lt!2466430)) (c!1282141 lt!2466416)))))

(declare-fun b!6901236 () Bool)

(assert (=> b!6901236 (= e!4156080 (not lt!2466496))))

(declare-fun b!6901237 () Bool)

(assert (=> b!6901237 (= e!4156075 e!4156077)))

(declare-fun res!2814224 () Bool)

(assert (=> b!6901237 (=> (not res!2814224) (not e!4156077))))

(assert (=> b!6901237 (= res!2814224 (not lt!2466496))))

(declare-fun b!6901238 () Bool)

(declare-fun res!2814218 () Bool)

(assert (=> b!6901238 (=> res!2814218 e!4156075)))

(assert (=> b!6901238 (= res!2814218 (not ((_ is ElementMatch!16865) lt!2466416)))))

(assert (=> b!6901238 (= e!4156080 e!4156075)))

(declare-fun b!6901239 () Bool)

(assert (=> b!6901239 (= e!4156078 (= lt!2466496 call!627578))))

(assert (= (and d!2161944 c!1282235) b!6901228))

(assert (= (and d!2161944 (not c!1282235)) b!6901229))

(assert (= (and d!2161944 c!1282234) b!6901239))

(assert (= (and d!2161944 (not c!1282234)) b!6901227))

(assert (= (and b!6901227 c!1282236) b!6901236))

(assert (= (and b!6901227 (not c!1282236)) b!6901238))

(assert (= (and b!6901238 (not res!2814218)) b!6901230))

(assert (= (and b!6901230 res!2814217) b!6901234))

(assert (= (and b!6901234 res!2814220) b!6901233))

(assert (= (and b!6901233 res!2814219) b!6901235))

(assert (= (and b!6901230 (not res!2814222)) b!6901237))

(assert (= (and b!6901237 res!2814224) b!6901226))

(assert (= (and b!6901226 (not res!2814223)) b!6901231))

(assert (= (and b!6901231 (not res!2814221)) b!6901232))

(assert (= (or b!6901239 b!6901226 b!6901234) bm!627573))

(declare-fun m!7619330 () Bool)

(assert (=> b!6901229 m!7619330))

(assert (=> b!6901229 m!7619330))

(declare-fun m!7619332 () Bool)

(assert (=> b!6901229 m!7619332))

(declare-fun m!7619334 () Bool)

(assert (=> b!6901229 m!7619334))

(assert (=> b!6901229 m!7619332))

(assert (=> b!6901229 m!7619334))

(declare-fun m!7619336 () Bool)

(assert (=> b!6901229 m!7619336))

(assert (=> d!2161944 m!7619166))

(assert (=> d!2161944 m!7619068))

(declare-fun m!7619338 () Bool)

(assert (=> b!6901228 m!7619338))

(assert (=> b!6901233 m!7619334))

(assert (=> b!6901233 m!7619334))

(declare-fun m!7619340 () Bool)

(assert (=> b!6901233 m!7619340))

(assert (=> b!6901231 m!7619334))

(assert (=> b!6901231 m!7619334))

(assert (=> b!6901231 m!7619340))

(assert (=> bm!627573 m!7619166))

(assert (=> b!6901235 m!7619330))

(assert (=> b!6901232 m!7619330))

(assert (=> b!6900823 d!2161944))

(declare-fun d!2161948 () Bool)

(declare-fun isEmpty!38727 (Option!16644) Bool)

(assert (=> d!2161948 (= (isDefined!13347 (findConcatSeparation!3058 lt!2466409 r3!135 Nil!66498 s!14361 s!14361)) (not (isEmpty!38727 (findConcatSeparation!3058 lt!2466409 r3!135 Nil!66498 s!14361 s!14361))))))

(declare-fun bs!1841923 () Bool)

(assert (= bs!1841923 d!2161948))

(assert (=> bs!1841923 m!7618986))

(declare-fun m!7619364 () Bool)

(assert (=> bs!1841923 m!7619364))

(assert (=> b!6900823 d!2161948))

(declare-fun b!6901250 () Bool)

(declare-fun e!4156087 () List!66622)

(assert (=> b!6901250 (= e!4156087 (Cons!66498 (h!72946 (_1!37035 lt!2466430)) (++!14918 (t!380365 (_1!37035 lt!2466430)) (++!14918 (_1!37035 lt!2466417) (_2!37035 lt!2466417)))))))

(declare-fun b!6901251 () Bool)

(declare-fun res!2814231 () Bool)

(declare-fun e!4156086 () Bool)

(assert (=> b!6901251 (=> (not res!2814231) (not e!4156086))))

(declare-fun lt!2466501 () List!66622)

(assert (=> b!6901251 (= res!2814231 (= (size!40756 lt!2466501) (+ (size!40756 (_1!37035 lt!2466430)) (size!40756 (++!14918 (_1!37035 lt!2466417) (_2!37035 lt!2466417))))))))

(declare-fun d!2161952 () Bool)

(assert (=> d!2161952 e!4156086))

(declare-fun res!2814230 () Bool)

(assert (=> d!2161952 (=> (not res!2814230) (not e!4156086))))

(assert (=> d!2161952 (= res!2814230 (= (content!13059 lt!2466501) ((_ map or) (content!13059 (_1!37035 lt!2466430)) (content!13059 (++!14918 (_1!37035 lt!2466417) (_2!37035 lt!2466417))))))))

(assert (=> d!2161952 (= lt!2466501 e!4156087)))

(declare-fun c!1282239 () Bool)

(assert (=> d!2161952 (= c!1282239 ((_ is Nil!66498) (_1!37035 lt!2466430)))))

(assert (=> d!2161952 (= (++!14918 (_1!37035 lt!2466430) (++!14918 (_1!37035 lt!2466417) (_2!37035 lt!2466417))) lt!2466501)))

(declare-fun b!6901252 () Bool)

(assert (=> b!6901252 (= e!4156086 (or (not (= (++!14918 (_1!37035 lt!2466417) (_2!37035 lt!2466417)) Nil!66498)) (= lt!2466501 (_1!37035 lt!2466430))))))

(declare-fun b!6901249 () Bool)

(assert (=> b!6901249 (= e!4156087 (++!14918 (_1!37035 lt!2466417) (_2!37035 lt!2466417)))))

(assert (= (and d!2161952 c!1282239) b!6901249))

(assert (= (and d!2161952 (not c!1282239)) b!6901250))

(assert (= (and d!2161952 res!2814230) b!6901251))

(assert (= (and b!6901251 res!2814231) b!6901252))

(assert (=> b!6901250 m!7618958))

(declare-fun m!7619366 () Bool)

(assert (=> b!6901250 m!7619366))

(declare-fun m!7619368 () Bool)

(assert (=> b!6901251 m!7619368))

(declare-fun m!7619370 () Bool)

(assert (=> b!6901251 m!7619370))

(assert (=> b!6901251 m!7618958))

(declare-fun m!7619372 () Bool)

(assert (=> b!6901251 m!7619372))

(declare-fun m!7619374 () Bool)

(assert (=> d!2161952 m!7619374))

(declare-fun m!7619376 () Bool)

(assert (=> d!2161952 m!7619376))

(assert (=> d!2161952 m!7618958))

(declare-fun m!7619378 () Bool)

(assert (=> d!2161952 m!7619378))

(assert (=> b!6900823 d!2161952))

(declare-fun d!2161954 () Bool)

(assert (=> d!2161954 (= (++!14918 (++!14918 (_1!37035 lt!2466430) (_1!37035 lt!2466417)) (_2!37035 lt!2466417)) (++!14918 (_1!37035 lt!2466430) (++!14918 (_1!37035 lt!2466417) (_2!37035 lt!2466417))))))

(declare-fun lt!2466504 () Unit!160460)

(declare-fun choose!51380 (List!66622 List!66622 List!66622) Unit!160460)

(assert (=> d!2161954 (= lt!2466504 (choose!51380 (_1!37035 lt!2466430) (_1!37035 lt!2466417) (_2!37035 lt!2466417)))))

(assert (=> d!2161954 (= (lemmaConcatAssociativity!2998 (_1!37035 lt!2466430) (_1!37035 lt!2466417) (_2!37035 lt!2466417)) lt!2466504)))

(declare-fun bs!1841937 () Bool)

(assert (= bs!1841937 d!2161954))

(assert (=> bs!1841937 m!7618984))

(declare-fun m!7619380 () Bool)

(assert (=> bs!1841937 m!7619380))

(assert (=> bs!1841937 m!7618958))

(declare-fun m!7619382 () Bool)

(assert (=> bs!1841937 m!7619382))

(assert (=> bs!1841937 m!7618984))

(assert (=> bs!1841937 m!7618958))

(assert (=> bs!1841937 m!7619018))

(assert (=> b!6900823 d!2161954))

(declare-fun bs!1841938 () Bool)

(declare-fun d!2161956 () Bool)

(assert (= bs!1841938 (and d!2161956 b!6900823)))

(declare-fun lambda!391828 () Int)

(assert (=> bs!1841938 (not (= lambda!391828 lambda!391777))))

(declare-fun bs!1841939 () Bool)

(assert (= bs!1841939 (and d!2161956 d!2161942)))

(assert (=> bs!1841939 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466416)) (= lambda!391828 lambda!391823))))

(declare-fun bs!1841940 () Bool)

(assert (= bs!1841940 (and d!2161956 b!6900813)))

(assert (=> bs!1841940 (not (= lambda!391828 lambda!391784))))

(declare-fun bs!1841941 () Bool)

(assert (= bs!1841941 (and d!2161956 b!6901041)))

(assert (=> bs!1841941 (not (= lambda!391828 lambda!391804))))

(assert (=> bs!1841938 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466416)) (= lambda!391828 lambda!391776))))

(assert (=> bs!1841938 (= (and (= (_2!37035 lt!2466430) lt!2466407) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!391828 lambda!391780))))

(declare-fun bs!1841942 () Bool)

(assert (= bs!1841942 (and d!2161956 d!2161888)))

(assert (=> bs!1841942 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 lt!2466409)) (= lambda!391828 lambda!391802))))

(assert (=> bs!1841938 (not (= lambda!391828 lambda!391779))))

(declare-fun bs!1841943 () Bool)

(assert (= bs!1841943 (and d!2161956 d!2161864)))

(assert (=> bs!1841943 (= (and (= (_2!37035 lt!2466430) lt!2466407) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!391828 lambda!391787))))

(assert (=> bs!1841938 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 lt!2466409)) (= lambda!391828 lambda!391782))))

(declare-fun bs!1841944 () Bool)

(assert (= bs!1841944 (and d!2161956 d!2161916)))

(assert (=> bs!1841944 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 lt!2466409)) (= lambda!391828 lambda!391818))))

(assert (=> bs!1841938 (not (= lambda!391828 lambda!391781))))

(assert (=> bs!1841939 (not (= lambda!391828 lambda!391825))))

(declare-fun bs!1841946 () Bool)

(assert (= bs!1841946 (and d!2161956 b!6901003)))

(assert (=> bs!1841946 (not (= lambda!391828 lambda!391801))))

(declare-fun bs!1841947 () Bool)

(assert (= bs!1841947 (and d!2161956 b!6901033)))

(assert (=> bs!1841947 (not (= lambda!391828 lambda!391803))))

(assert (=> bs!1841944 (not (= lambda!391828 lambda!391819))))

(declare-fun bs!1841948 () Bool)

(assert (= bs!1841948 (and d!2161956 b!6900995)))

(assert (=> bs!1841948 (not (= lambda!391828 lambda!391799))))

(declare-fun bs!1841949 () Bool)

(assert (= bs!1841949 (and d!2161956 b!6900820)))

(assert (=> bs!1841949 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466416)) (= lambda!391828 lambda!391783))))

(assert (=> bs!1841938 (= lambda!391828 lambda!391778)))

(assert (=> d!2161956 true))

(assert (=> d!2161956 true))

(assert (=> d!2161956 true))

(assert (=> d!2161956 (= (isDefined!13347 (findConcatSeparation!3058 r2!6280 r3!135 Nil!66498 (_2!37035 lt!2466430) (_2!37035 lt!2466430))) (Exists!3873 lambda!391828))))

(declare-fun lt!2466505 () Unit!160460)

(assert (=> d!2161956 (= lt!2466505 (choose!51373 r2!6280 r3!135 (_2!37035 lt!2466430)))))

(assert (=> d!2161956 (validRegex!8573 r2!6280)))

(assert (=> d!2161956 (= (lemmaFindConcatSeparationEquivalentToExists!2820 r2!6280 r3!135 (_2!37035 lt!2466430)) lt!2466505)))

(declare-fun bs!1841951 () Bool)

(assert (= bs!1841951 d!2161956))

(assert (=> bs!1841951 m!7619048))

(declare-fun m!7619392 () Bool)

(assert (=> bs!1841951 m!7619392))

(assert (=> bs!1841951 m!7618992))

(assert (=> bs!1841951 m!7618992))

(declare-fun m!7619394 () Bool)

(assert (=> bs!1841951 m!7619394))

(declare-fun m!7619396 () Bool)

(assert (=> bs!1841951 m!7619396))

(assert (=> b!6900823 d!2161956))

(declare-fun b!6901253 () Bool)

(declare-fun res!2814233 () Bool)

(declare-fun e!4156090 () Bool)

(assert (=> b!6901253 (=> (not res!2814233) (not e!4156090))))

(declare-fun lt!2466508 () Option!16644)

(assert (=> b!6901253 (= res!2814233 (matchR!9010 r3!135 (_2!37035 (get!23248 lt!2466508))))))

(declare-fun d!2161962 () Bool)

(declare-fun e!4156089 () Bool)

(assert (=> d!2161962 e!4156089))

(declare-fun res!2814236 () Bool)

(assert (=> d!2161962 (=> res!2814236 e!4156089)))

(assert (=> d!2161962 (= res!2814236 e!4156090)))

(declare-fun res!2814235 () Bool)

(assert (=> d!2161962 (=> (not res!2814235) (not e!4156090))))

(assert (=> d!2161962 (= res!2814235 (isDefined!13347 lt!2466508))))

(declare-fun e!4156092 () Option!16644)

(assert (=> d!2161962 (= lt!2466508 e!4156092)))

(declare-fun c!1282240 () Bool)

(declare-fun e!4156088 () Bool)

(assert (=> d!2161962 (= c!1282240 e!4156088)))

(declare-fun res!2814232 () Bool)

(assert (=> d!2161962 (=> (not res!2814232) (not e!4156088))))

(assert (=> d!2161962 (= res!2814232 (matchR!9010 lt!2466409 Nil!66498))))

(assert (=> d!2161962 (validRegex!8573 lt!2466409)))

(assert (=> d!2161962 (= (findConcatSeparation!3058 lt!2466409 r3!135 Nil!66498 s!14361 s!14361) lt!2466508)))

(declare-fun b!6901254 () Bool)

(declare-fun e!4156091 () Option!16644)

(assert (=> b!6901254 (= e!4156091 None!16643)))

(declare-fun b!6901255 () Bool)

(assert (=> b!6901255 (= e!4156090 (= (++!14918 (_1!37035 (get!23248 lt!2466508)) (_2!37035 (get!23248 lt!2466508))) s!14361))))

(declare-fun b!6901256 () Bool)

(assert (=> b!6901256 (= e!4156089 (not (isDefined!13347 lt!2466508)))))

(declare-fun b!6901257 () Bool)

(declare-fun res!2814234 () Bool)

(assert (=> b!6901257 (=> (not res!2814234) (not e!4156090))))

(assert (=> b!6901257 (= res!2814234 (matchR!9010 lt!2466409 (_1!37035 (get!23248 lt!2466508))))))

(declare-fun b!6901258 () Bool)

(declare-fun lt!2466510 () Unit!160460)

(declare-fun lt!2466509 () Unit!160460)

(assert (=> b!6901258 (= lt!2466510 lt!2466509)))

(assert (=> b!6901258 (= (++!14918 (++!14918 Nil!66498 (Cons!66498 (h!72946 s!14361) Nil!66498)) (t!380365 s!14361)) s!14361)))

(assert (=> b!6901258 (= lt!2466509 (lemmaMoveElementToOtherListKeepsConcatEq!2792 Nil!66498 (h!72946 s!14361) (t!380365 s!14361) s!14361))))

(assert (=> b!6901258 (= e!4156091 (findConcatSeparation!3058 lt!2466409 r3!135 (++!14918 Nil!66498 (Cons!66498 (h!72946 s!14361) Nil!66498)) (t!380365 s!14361) s!14361))))

(declare-fun b!6901259 () Bool)

(assert (=> b!6901259 (= e!4156092 e!4156091)))

(declare-fun c!1282241 () Bool)

(assert (=> b!6901259 (= c!1282241 ((_ is Nil!66498) s!14361))))

(declare-fun b!6901260 () Bool)

(assert (=> b!6901260 (= e!4156088 (matchR!9010 r3!135 s!14361))))

(declare-fun b!6901261 () Bool)

(assert (=> b!6901261 (= e!4156092 (Some!16643 (tuple2!67465 Nil!66498 s!14361)))))

(assert (= (and d!2161962 res!2814232) b!6901260))

(assert (= (and d!2161962 c!1282240) b!6901261))

(assert (= (and d!2161962 (not c!1282240)) b!6901259))

(assert (= (and b!6901259 c!1282241) b!6901254))

(assert (= (and b!6901259 (not c!1282241)) b!6901258))

(assert (= (and d!2161962 res!2814235) b!6901257))

(assert (= (and b!6901257 res!2814234) b!6901253))

(assert (= (and b!6901253 res!2814233) b!6901255))

(assert (= (and d!2161962 (not res!2814236)) b!6901256))

(declare-fun m!7619404 () Bool)

(assert (=> b!6901256 m!7619404))

(assert (=> d!2161962 m!7619404))

(declare-fun m!7619410 () Bool)

(assert (=> d!2161962 m!7619410))

(assert (=> d!2161962 m!7619156))

(declare-fun m!7619414 () Bool)

(assert (=> b!6901257 m!7619414))

(declare-fun m!7619418 () Bool)

(assert (=> b!6901257 m!7619418))

(assert (=> b!6901255 m!7619414))

(declare-fun m!7619422 () Bool)

(assert (=> b!6901255 m!7619422))

(assert (=> b!6901253 m!7619414))

(declare-fun m!7619426 () Bool)

(assert (=> b!6901253 m!7619426))

(declare-fun m!7619428 () Bool)

(assert (=> b!6901258 m!7619428))

(assert (=> b!6901258 m!7619428))

(declare-fun m!7619432 () Bool)

(assert (=> b!6901258 m!7619432))

(declare-fun m!7619434 () Bool)

(assert (=> b!6901258 m!7619434))

(assert (=> b!6901258 m!7619428))

(declare-fun m!7619436 () Bool)

(assert (=> b!6901258 m!7619436))

(declare-fun m!7619440 () Bool)

(assert (=> b!6901260 m!7619440))

(assert (=> b!6900823 d!2161962))

(declare-fun d!2161970 () Bool)

(assert (=> d!2161970 (= (isDefined!13347 lt!2466405) (not (isEmpty!38727 lt!2466405)))))

(declare-fun bs!1841955 () Bool)

(assert (= bs!1841955 d!2161970))

(declare-fun m!7619442 () Bool)

(assert (=> bs!1841955 m!7619442))

(assert (=> b!6900823 d!2161970))

(declare-fun d!2161974 () Bool)

(assert (=> d!2161974 (= (matchR!9010 r1!6342 (_1!37035 lt!2466430)) (matchRSpec!3928 r1!6342 (_1!37035 lt!2466430)))))

(declare-fun lt!2466512 () Unit!160460)

(assert (=> d!2161974 (= lt!2466512 (choose!51376 r1!6342 (_1!37035 lt!2466430)))))

(assert (=> d!2161974 (validRegex!8573 r1!6342)))

(assert (=> d!2161974 (= (mainMatchTheorem!3928 r1!6342 (_1!37035 lt!2466430)) lt!2466512)))

(declare-fun bs!1841956 () Bool)

(assert (= bs!1841956 d!2161974))

(assert (=> bs!1841956 m!7619002))

(assert (=> bs!1841956 m!7619006))

(declare-fun m!7619444 () Bool)

(assert (=> bs!1841956 m!7619444))

(assert (=> bs!1841956 m!7618956))

(assert (=> b!6900823 d!2161974))

(declare-fun b!6901287 () Bool)

(declare-fun e!4156110 () Bool)

(declare-fun e!4156112 () Bool)

(assert (=> b!6901287 (= e!4156110 e!4156112)))

(declare-fun res!2814254 () Bool)

(assert (=> b!6901287 (=> res!2814254 e!4156112)))

(declare-fun call!627582 () Bool)

(assert (=> b!6901287 (= res!2814254 call!627582)))

(declare-fun b!6901288 () Bool)

(declare-fun e!4156111 () Bool)

(declare-fun e!4156113 () Bool)

(assert (=> b!6901288 (= e!4156111 e!4156113)))

(declare-fun c!1282251 () Bool)

(assert (=> b!6901288 (= c!1282251 ((_ is EmptyLang!16865) r3!135))))

(declare-fun b!6901289 () Bool)

(declare-fun e!4156109 () Bool)

(assert (=> b!6901289 (= e!4156109 (nullable!6706 r3!135))))

(declare-fun b!6901290 () Bool)

(assert (=> b!6901290 (= e!4156109 (matchR!9010 (derivativeStep!5385 r3!135 (head!13838 (_2!37035 lt!2466417))) (tail!12890 (_2!37035 lt!2466417))))))

(declare-fun b!6901291 () Bool)

(declare-fun res!2814253 () Bool)

(declare-fun e!4156108 () Bool)

(assert (=> b!6901291 (=> res!2814253 e!4156108)))

(declare-fun e!4156107 () Bool)

(assert (=> b!6901291 (= res!2814253 e!4156107)))

(declare-fun res!2814248 () Bool)

(assert (=> b!6901291 (=> (not res!2814248) (not e!4156107))))

(declare-fun lt!2466513 () Bool)

(assert (=> b!6901291 (= res!2814248 lt!2466513)))

(declare-fun bm!627577 () Bool)

(assert (=> bm!627577 (= call!627582 (isEmpty!38725 (_2!37035 lt!2466417)))))

(declare-fun b!6901292 () Bool)

(declare-fun res!2814252 () Bool)

(assert (=> b!6901292 (=> res!2814252 e!4156112)))

(assert (=> b!6901292 (= res!2814252 (not (isEmpty!38725 (tail!12890 (_2!37035 lt!2466417)))))))

(declare-fun b!6901293 () Bool)

(assert (=> b!6901293 (= e!4156112 (not (= (head!13838 (_2!37035 lt!2466417)) (c!1282141 r3!135))))))

(declare-fun d!2161976 () Bool)

(assert (=> d!2161976 e!4156111))

(declare-fun c!1282249 () Bool)

(assert (=> d!2161976 (= c!1282249 ((_ is EmptyExpr!16865) r3!135))))

(assert (=> d!2161976 (= lt!2466513 e!4156109)))

(declare-fun c!1282250 () Bool)

(assert (=> d!2161976 (= c!1282250 (isEmpty!38725 (_2!37035 lt!2466417)))))

(assert (=> d!2161976 (validRegex!8573 r3!135)))

(assert (=> d!2161976 (= (matchR!9010 r3!135 (_2!37035 lt!2466417)) lt!2466513)))

(declare-fun b!6901294 () Bool)

(declare-fun res!2814250 () Bool)

(assert (=> b!6901294 (=> (not res!2814250) (not e!4156107))))

(assert (=> b!6901294 (= res!2814250 (isEmpty!38725 (tail!12890 (_2!37035 lt!2466417))))))

(declare-fun b!6901295 () Bool)

(declare-fun res!2814251 () Bool)

(assert (=> b!6901295 (=> (not res!2814251) (not e!4156107))))

(assert (=> b!6901295 (= res!2814251 (not call!627582))))

(declare-fun b!6901296 () Bool)

(assert (=> b!6901296 (= e!4156107 (= (head!13838 (_2!37035 lt!2466417)) (c!1282141 r3!135)))))

(declare-fun b!6901297 () Bool)

(assert (=> b!6901297 (= e!4156113 (not lt!2466513))))

(declare-fun b!6901298 () Bool)

(assert (=> b!6901298 (= e!4156108 e!4156110)))

(declare-fun res!2814255 () Bool)

(assert (=> b!6901298 (=> (not res!2814255) (not e!4156110))))

(assert (=> b!6901298 (= res!2814255 (not lt!2466513))))

(declare-fun b!6901299 () Bool)

(declare-fun res!2814249 () Bool)

(assert (=> b!6901299 (=> res!2814249 e!4156108)))

(assert (=> b!6901299 (= res!2814249 (not ((_ is ElementMatch!16865) r3!135)))))

(assert (=> b!6901299 (= e!4156113 e!4156108)))

(declare-fun b!6901300 () Bool)

(assert (=> b!6901300 (= e!4156111 (= lt!2466513 call!627582))))

(assert (= (and d!2161976 c!1282250) b!6901289))

(assert (= (and d!2161976 (not c!1282250)) b!6901290))

(assert (= (and d!2161976 c!1282249) b!6901300))

(assert (= (and d!2161976 (not c!1282249)) b!6901288))

(assert (= (and b!6901288 c!1282251) b!6901297))

(assert (= (and b!6901288 (not c!1282251)) b!6901299))

(assert (= (and b!6901299 (not res!2814249)) b!6901291))

(assert (= (and b!6901291 res!2814248) b!6901295))

(assert (= (and b!6901295 res!2814251) b!6901294))

(assert (= (and b!6901294 res!2814250) b!6901296))

(assert (= (and b!6901291 (not res!2814253)) b!6901298))

(assert (= (and b!6901298 res!2814255) b!6901287))

(assert (= (and b!6901287 (not res!2814254)) b!6901292))

(assert (= (and b!6901292 (not res!2814252)) b!6901293))

(assert (= (or b!6901300 b!6901287 b!6901295) bm!627577))

(declare-fun m!7619446 () Bool)

(assert (=> b!6901290 m!7619446))

(assert (=> b!6901290 m!7619446))

(declare-fun m!7619448 () Bool)

(assert (=> b!6901290 m!7619448))

(declare-fun m!7619450 () Bool)

(assert (=> b!6901290 m!7619450))

(assert (=> b!6901290 m!7619448))

(assert (=> b!6901290 m!7619450))

(declare-fun m!7619452 () Bool)

(assert (=> b!6901290 m!7619452))

(assert (=> d!2161976 m!7619140))

(assert (=> d!2161976 m!7619074))

(declare-fun m!7619454 () Bool)

(assert (=> b!6901289 m!7619454))

(assert (=> b!6901294 m!7619450))

(assert (=> b!6901294 m!7619450))

(declare-fun m!7619456 () Bool)

(assert (=> b!6901294 m!7619456))

(assert (=> b!6901292 m!7619450))

(assert (=> b!6901292 m!7619450))

(assert (=> b!6901292 m!7619456))

(assert (=> bm!627577 m!7619140))

(assert (=> b!6901296 m!7619446))

(assert (=> b!6901293 m!7619446))

(assert (=> b!6900823 d!2161976))

(declare-fun d!2161978 () Bool)

(assert (=> d!2161978 (= (get!23248 lt!2466405) (v!52915 lt!2466405))))

(assert (=> b!6900823 d!2161978))

(declare-fun b!6901301 () Bool)

(declare-fun e!4156117 () Bool)

(declare-fun e!4156119 () Bool)

(assert (=> b!6901301 (= e!4156117 e!4156119)))

(declare-fun res!2814262 () Bool)

(assert (=> b!6901301 (=> res!2814262 e!4156119)))

(declare-fun call!627583 () Bool)

(assert (=> b!6901301 (= res!2814262 call!627583)))

(declare-fun b!6901302 () Bool)

(declare-fun e!4156118 () Bool)

(declare-fun e!4156120 () Bool)

(assert (=> b!6901302 (= e!4156118 e!4156120)))

(declare-fun c!1282254 () Bool)

(assert (=> b!6901302 (= c!1282254 ((_ is EmptyLang!16865) lt!2466409))))

(declare-fun b!6901303 () Bool)

(declare-fun e!4156116 () Bool)

(assert (=> b!6901303 (= e!4156116 (nullable!6706 lt!2466409))))

(declare-fun b!6901304 () Bool)

(assert (=> b!6901304 (= e!4156116 (matchR!9010 (derivativeStep!5385 lt!2466409 (head!13838 lt!2466407)) (tail!12890 lt!2466407)))))

(declare-fun b!6901305 () Bool)

(declare-fun res!2814261 () Bool)

(declare-fun e!4156115 () Bool)

(assert (=> b!6901305 (=> res!2814261 e!4156115)))

(declare-fun e!4156114 () Bool)

(assert (=> b!6901305 (= res!2814261 e!4156114)))

(declare-fun res!2814256 () Bool)

(assert (=> b!6901305 (=> (not res!2814256) (not e!4156114))))

(declare-fun lt!2466514 () Bool)

(assert (=> b!6901305 (= res!2814256 lt!2466514)))

(declare-fun bm!627578 () Bool)

(assert (=> bm!627578 (= call!627583 (isEmpty!38725 lt!2466407))))

(declare-fun b!6901306 () Bool)

(declare-fun res!2814260 () Bool)

(assert (=> b!6901306 (=> res!2814260 e!4156119)))

(assert (=> b!6901306 (= res!2814260 (not (isEmpty!38725 (tail!12890 lt!2466407))))))

(declare-fun b!6901307 () Bool)

(assert (=> b!6901307 (= e!4156119 (not (= (head!13838 lt!2466407) (c!1282141 lt!2466409))))))

(declare-fun d!2161980 () Bool)

(assert (=> d!2161980 e!4156118))

(declare-fun c!1282252 () Bool)

(assert (=> d!2161980 (= c!1282252 ((_ is EmptyExpr!16865) lt!2466409))))

(assert (=> d!2161980 (= lt!2466514 e!4156116)))

(declare-fun c!1282253 () Bool)

(assert (=> d!2161980 (= c!1282253 (isEmpty!38725 lt!2466407))))

(assert (=> d!2161980 (validRegex!8573 lt!2466409)))

(assert (=> d!2161980 (= (matchR!9010 lt!2466409 lt!2466407) lt!2466514)))

(declare-fun b!6901308 () Bool)

(declare-fun res!2814258 () Bool)

(assert (=> b!6901308 (=> (not res!2814258) (not e!4156114))))

(assert (=> b!6901308 (= res!2814258 (isEmpty!38725 (tail!12890 lt!2466407)))))

(declare-fun b!6901309 () Bool)

(declare-fun res!2814259 () Bool)

(assert (=> b!6901309 (=> (not res!2814259) (not e!4156114))))

(assert (=> b!6901309 (= res!2814259 (not call!627583))))

(declare-fun b!6901310 () Bool)

(assert (=> b!6901310 (= e!4156114 (= (head!13838 lt!2466407) (c!1282141 lt!2466409)))))

(declare-fun b!6901311 () Bool)

(assert (=> b!6901311 (= e!4156120 (not lt!2466514))))

(declare-fun b!6901312 () Bool)

(assert (=> b!6901312 (= e!4156115 e!4156117)))

(declare-fun res!2814263 () Bool)

(assert (=> b!6901312 (=> (not res!2814263) (not e!4156117))))

(assert (=> b!6901312 (= res!2814263 (not lt!2466514))))

(declare-fun b!6901313 () Bool)

(declare-fun res!2814257 () Bool)

(assert (=> b!6901313 (=> res!2814257 e!4156115)))

(assert (=> b!6901313 (= res!2814257 (not ((_ is ElementMatch!16865) lt!2466409)))))

(assert (=> b!6901313 (= e!4156120 e!4156115)))

(declare-fun b!6901314 () Bool)

(assert (=> b!6901314 (= e!4156118 (= lt!2466514 call!627583))))

(assert (= (and d!2161980 c!1282253) b!6901303))

(assert (= (and d!2161980 (not c!1282253)) b!6901304))

(assert (= (and d!2161980 c!1282252) b!6901314))

(assert (= (and d!2161980 (not c!1282252)) b!6901302))

(assert (= (and b!6901302 c!1282254) b!6901311))

(assert (= (and b!6901302 (not c!1282254)) b!6901313))

(assert (= (and b!6901313 (not res!2814257)) b!6901305))

(assert (= (and b!6901305 res!2814256) b!6901309))

(assert (= (and b!6901309 res!2814259) b!6901308))

(assert (= (and b!6901308 res!2814258) b!6901310))

(assert (= (and b!6901305 (not res!2814261)) b!6901312))

(assert (= (and b!6901312 res!2814263) b!6901301))

(assert (= (and b!6901301 (not res!2814262)) b!6901306))

(assert (= (and b!6901306 (not res!2814260)) b!6901307))

(assert (= (or b!6901314 b!6901301 b!6901309) bm!627578))

(declare-fun m!7619458 () Bool)

(assert (=> b!6901304 m!7619458))

(assert (=> b!6901304 m!7619458))

(declare-fun m!7619460 () Bool)

(assert (=> b!6901304 m!7619460))

(declare-fun m!7619462 () Bool)

(assert (=> b!6901304 m!7619462))

(assert (=> b!6901304 m!7619460))

(assert (=> b!6901304 m!7619462))

(declare-fun m!7619464 () Bool)

(assert (=> b!6901304 m!7619464))

(declare-fun m!7619466 () Bool)

(assert (=> d!2161980 m!7619466))

(assert (=> d!2161980 m!7619156))

(declare-fun m!7619468 () Bool)

(assert (=> b!6901303 m!7619468))

(assert (=> b!6901308 m!7619462))

(assert (=> b!6901308 m!7619462))

(declare-fun m!7619470 () Bool)

(assert (=> b!6901308 m!7619470))

(assert (=> b!6901306 m!7619462))

(assert (=> b!6901306 m!7619462))

(assert (=> b!6901306 m!7619470))

(assert (=> bm!627578 m!7619466))

(assert (=> b!6901310 m!7619458))

(assert (=> b!6901307 m!7619458))

(assert (=> b!6900823 d!2161980))

(declare-fun bs!1841971 () Bool)

(declare-fun b!6901316 () Bool)

(assert (= bs!1841971 (and b!6901316 b!6900823)))

(declare-fun lambda!391830 () Int)

(assert (=> bs!1841971 (not (= lambda!391830 lambda!391777))))

(declare-fun bs!1841972 () Bool)

(assert (= bs!1841972 (and b!6901316 d!2161942)))

(assert (=> bs!1841972 (not (= lambda!391830 lambda!391823))))

(declare-fun bs!1841973 () Bool)

(assert (= bs!1841973 (and b!6901316 b!6900813)))

(assert (=> bs!1841973 (not (= lambda!391830 lambda!391784))))

(declare-fun bs!1841974 () Bool)

(assert (= bs!1841974 (and b!6901316 b!6901041)))

(assert (=> bs!1841974 (not (= lambda!391830 lambda!391804))))

(assert (=> bs!1841971 (not (= lambda!391830 lambda!391776))))

(declare-fun bs!1841976 () Bool)

(assert (= bs!1841976 (and b!6901316 d!2161888)))

(assert (=> bs!1841976 (not (= lambda!391830 lambda!391802))))

(assert (=> bs!1841971 (not (= lambda!391830 lambda!391779))))

(declare-fun bs!1841979 () Bool)

(assert (= bs!1841979 (and b!6901316 d!2161864)))

(assert (=> bs!1841979 (not (= lambda!391830 lambda!391787))))

(assert (=> bs!1841971 (not (= lambda!391830 lambda!391782))))

(declare-fun bs!1841982 () Bool)

(assert (= bs!1841982 (and b!6901316 d!2161916)))

(assert (=> bs!1841982 (not (= lambda!391830 lambda!391818))))

(assert (=> bs!1841971 (not (= lambda!391830 lambda!391781))))

(assert (=> bs!1841972 (not (= lambda!391830 lambda!391825))))

(declare-fun bs!1841985 () Bool)

(assert (= bs!1841985 (and b!6901316 b!6901003)))

(assert (=> bs!1841985 (not (= lambda!391830 lambda!391801))))

(declare-fun bs!1841987 () Bool)

(assert (= bs!1841987 (and b!6901316 b!6901033)))

(assert (=> bs!1841987 (= (and (= lt!2466407 (_2!37035 lt!2466430)) (= (reg!17194 lt!2466409) (reg!17194 lt!2466416)) (= lt!2466409 lt!2466416)) (= lambda!391830 lambda!391803))))

(assert (=> bs!1841982 (not (= lambda!391830 lambda!391819))))

(declare-fun bs!1841990 () Bool)

(assert (= bs!1841990 (and b!6901316 b!6900995)))

(assert (=> bs!1841990 (= (and (= lt!2466407 (_2!37035 lt!2466417)) (= (reg!17194 lt!2466409) (reg!17194 r3!135)) (= lt!2466409 r3!135)) (= lambda!391830 lambda!391799))))

(assert (=> bs!1841971 (not (= lambda!391830 lambda!391780))))

(declare-fun bs!1841992 () Bool)

(assert (= bs!1841992 (and b!6901316 d!2161956)))

(assert (=> bs!1841992 (not (= lambda!391830 lambda!391828))))

(declare-fun bs!1841994 () Bool)

(assert (= bs!1841994 (and b!6901316 b!6900820)))

(assert (=> bs!1841994 (not (= lambda!391830 lambda!391783))))

(assert (=> bs!1841971 (not (= lambda!391830 lambda!391778))))

(assert (=> b!6901316 true))

(assert (=> b!6901316 true))

(declare-fun bs!1841998 () Bool)

(declare-fun b!6901324 () Bool)

(assert (= bs!1841998 (and b!6901324 b!6900823)))

(declare-fun lambda!391832 () Int)

(assert (=> bs!1841998 (= (and (= lt!2466407 s!14361) (= (regOne!34242 lt!2466409) r1!6342) (= (regTwo!34242 lt!2466409) lt!2466416)) (= lambda!391832 lambda!391777))))

(declare-fun bs!1841999 () Bool)

(assert (= bs!1841999 (and b!6901324 d!2161942)))

(assert (=> bs!1841999 (not (= lambda!391832 lambda!391823))))

(declare-fun bs!1842000 () Bool)

(assert (= bs!1842000 (and b!6901324 b!6900813)))

(assert (=> bs!1842000 (= (and (= lt!2466407 s!14361) (= (regOne!34242 lt!2466409) r1!6342) (= (regTwo!34242 lt!2466409) lt!2466416)) (= lambda!391832 lambda!391784))))

(declare-fun bs!1842001 () Bool)

(assert (= bs!1842001 (and b!6901324 b!6901316)))

(assert (=> bs!1842001 (not (= lambda!391832 lambda!391830))))

(declare-fun bs!1842002 () Bool)

(assert (= bs!1842002 (and b!6901324 b!6901041)))

(assert (=> bs!1842002 (= (and (= lt!2466407 (_2!37035 lt!2466430)) (= (regOne!34242 lt!2466409) (regOne!34242 lt!2466416)) (= (regTwo!34242 lt!2466409) (regTwo!34242 lt!2466416))) (= lambda!391832 lambda!391804))))

(assert (=> bs!1841998 (not (= lambda!391832 lambda!391776))))

(declare-fun bs!1842003 () Bool)

(assert (= bs!1842003 (and b!6901324 d!2161888)))

(assert (=> bs!1842003 (not (= lambda!391832 lambda!391802))))

(assert (=> bs!1841998 (= (and (= lt!2466407 (_2!37035 lt!2466430)) (= (regOne!34242 lt!2466409) r2!6280) (= (regTwo!34242 lt!2466409) r3!135)) (= lambda!391832 lambda!391779))))

(declare-fun bs!1842004 () Bool)

(assert (= bs!1842004 (and b!6901324 d!2161864)))

(assert (=> bs!1842004 (not (= lambda!391832 lambda!391787))))

(assert (=> bs!1841998 (not (= lambda!391832 lambda!391782))))

(declare-fun bs!1842005 () Bool)

(assert (= bs!1842005 (and b!6901324 d!2161916)))

(assert (=> bs!1842005 (not (= lambda!391832 lambda!391818))))

(assert (=> bs!1841998 (= (and (= (regOne!34242 lt!2466409) r1!6342) (= (regTwo!34242 lt!2466409) r2!6280)) (= lambda!391832 lambda!391781))))

(assert (=> bs!1841999 (= (and (= lt!2466407 s!14361) (= (regOne!34242 lt!2466409) r1!6342) (= (regTwo!34242 lt!2466409) lt!2466416)) (= lambda!391832 lambda!391825))))

(declare-fun bs!1842006 () Bool)

(assert (= bs!1842006 (and b!6901324 b!6901003)))

(assert (=> bs!1842006 (= (and (= lt!2466407 (_2!37035 lt!2466417)) (= (regOne!34242 lt!2466409) (regOne!34242 r3!135)) (= (regTwo!34242 lt!2466409) (regTwo!34242 r3!135))) (= lambda!391832 lambda!391801))))

(declare-fun bs!1842007 () Bool)

(assert (= bs!1842007 (and b!6901324 b!6901033)))

(assert (=> bs!1842007 (not (= lambda!391832 lambda!391803))))

(assert (=> bs!1842005 (= (and (= lt!2466407 s!14361) (= (regOne!34242 lt!2466409) lt!2466409) (= (regTwo!34242 lt!2466409) r3!135)) (= lambda!391832 lambda!391819))))

(declare-fun bs!1842010 () Bool)

(assert (= bs!1842010 (and b!6901324 b!6900995)))

(assert (=> bs!1842010 (not (= lambda!391832 lambda!391799))))

(assert (=> bs!1841998 (not (= lambda!391832 lambda!391780))))

(declare-fun bs!1842012 () Bool)

(assert (= bs!1842012 (and b!6901324 d!2161956)))

(assert (=> bs!1842012 (not (= lambda!391832 lambda!391828))))

(declare-fun bs!1842014 () Bool)

(assert (= bs!1842014 (and b!6901324 b!6900820)))

(assert (=> bs!1842014 (not (= lambda!391832 lambda!391783))))

(assert (=> bs!1841998 (not (= lambda!391832 lambda!391778))))

(assert (=> b!6901324 true))

(assert (=> b!6901324 true))

(declare-fun b!6901315 () Bool)

(declare-fun c!1282257 () Bool)

(assert (=> b!6901315 (= c!1282257 ((_ is ElementMatch!16865) lt!2466409))))

(declare-fun e!4156127 () Bool)

(declare-fun e!4156124 () Bool)

(assert (=> b!6901315 (= e!4156127 e!4156124)))

(declare-fun e!4156123 () Bool)

(declare-fun call!627584 () Bool)

(assert (=> b!6901316 (= e!4156123 call!627584)))

(declare-fun b!6901317 () Bool)

(declare-fun e!4156122 () Bool)

(declare-fun e!4156121 () Bool)

(assert (=> b!6901317 (= e!4156122 e!4156121)))

(declare-fun c!1282255 () Bool)

(assert (=> b!6901317 (= c!1282255 ((_ is Star!16865) lt!2466409))))

(declare-fun b!6901318 () Bool)

(declare-fun res!2814264 () Bool)

(assert (=> b!6901318 (=> res!2814264 e!4156123)))

(declare-fun call!627585 () Bool)

(assert (=> b!6901318 (= res!2814264 call!627585)))

(assert (=> b!6901318 (= e!4156121 e!4156123)))

(declare-fun b!6901319 () Bool)

(declare-fun e!4156126 () Bool)

(assert (=> b!6901319 (= e!4156122 e!4156126)))

(declare-fun res!2814266 () Bool)

(assert (=> b!6901319 (= res!2814266 (matchRSpec!3928 (regOne!34243 lt!2466409) lt!2466407))))

(assert (=> b!6901319 (=> res!2814266 e!4156126)))

(declare-fun b!6901321 () Bool)

(assert (=> b!6901321 (= e!4156124 (= lt!2466407 (Cons!66498 (c!1282141 lt!2466409) Nil!66498)))))

(declare-fun bm!627579 () Bool)

(assert (=> bm!627579 (= call!627584 (Exists!3873 (ite c!1282255 lambda!391830 lambda!391832)))))

(declare-fun b!6901322 () Bool)

(declare-fun e!4156125 () Bool)

(assert (=> b!6901322 (= e!4156125 call!627585)))

(declare-fun bm!627580 () Bool)

(assert (=> bm!627580 (= call!627585 (isEmpty!38725 lt!2466407))))

(declare-fun b!6901323 () Bool)

(assert (=> b!6901323 (= e!4156125 e!4156127)))

(declare-fun res!2814265 () Bool)

(assert (=> b!6901323 (= res!2814265 (not ((_ is EmptyLang!16865) lt!2466409)))))

(assert (=> b!6901323 (=> (not res!2814265) (not e!4156127))))

(assert (=> b!6901324 (= e!4156121 call!627584)))

(declare-fun b!6901325 () Bool)

(assert (=> b!6901325 (= e!4156126 (matchRSpec!3928 (regTwo!34243 lt!2466409) lt!2466407))))

(declare-fun d!2161982 () Bool)

(declare-fun c!1282256 () Bool)

(assert (=> d!2161982 (= c!1282256 ((_ is EmptyExpr!16865) lt!2466409))))

(assert (=> d!2161982 (= (matchRSpec!3928 lt!2466409 lt!2466407) e!4156125)))

(declare-fun b!6901320 () Bool)

(declare-fun c!1282258 () Bool)

(assert (=> b!6901320 (= c!1282258 ((_ is Union!16865) lt!2466409))))

(assert (=> b!6901320 (= e!4156124 e!4156122)))

(assert (= (and d!2161982 c!1282256) b!6901322))

(assert (= (and d!2161982 (not c!1282256)) b!6901323))

(assert (= (and b!6901323 res!2814265) b!6901315))

(assert (= (and b!6901315 c!1282257) b!6901321))

(assert (= (and b!6901315 (not c!1282257)) b!6901320))

(assert (= (and b!6901320 c!1282258) b!6901319))

(assert (= (and b!6901320 (not c!1282258)) b!6901317))

(assert (= (and b!6901319 (not res!2814266)) b!6901325))

(assert (= (and b!6901317 c!1282255) b!6901318))

(assert (= (and b!6901317 (not c!1282255)) b!6901324))

(assert (= (and b!6901318 (not res!2814264)) b!6901316))

(assert (= (or b!6901316 b!6901324) bm!627579))

(assert (= (or b!6901322 b!6901318) bm!627580))

(declare-fun m!7619480 () Bool)

(assert (=> b!6901319 m!7619480))

(declare-fun m!7619482 () Bool)

(assert (=> bm!627579 m!7619482))

(assert (=> bm!627580 m!7619466))

(declare-fun m!7619484 () Bool)

(assert (=> b!6901325 m!7619484))

(assert (=> b!6900823 d!2161982))

(declare-fun d!2161986 () Bool)

(assert (=> d!2161986 (isDefined!13347 (findConcatSeparation!3058 lt!2466409 r3!135 Nil!66498 s!14361 s!14361))))

(declare-fun lt!2466517 () Unit!160460)

(declare-fun choose!51382 (Regex!16865 Regex!16865 List!66622 List!66622 List!66622 List!66622 List!66622) Unit!160460)

(assert (=> d!2161986 (= lt!2466517 (choose!51382 lt!2466409 r3!135 lt!2466407 (_2!37035 lt!2466417) s!14361 Nil!66498 s!14361))))

(assert (=> d!2161986 (validRegex!8573 lt!2466409)))

(assert (=> d!2161986 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!66 lt!2466409 r3!135 lt!2466407 (_2!37035 lt!2466417) s!14361 Nil!66498 s!14361) lt!2466517)))

(declare-fun bs!1842043 () Bool)

(assert (= bs!1842043 d!2161986))

(assert (=> bs!1842043 m!7618986))

(assert (=> bs!1842043 m!7618986))

(assert (=> bs!1842043 m!7618988))

(declare-fun m!7619486 () Bool)

(assert (=> bs!1842043 m!7619486))

(assert (=> bs!1842043 m!7619156))

(assert (=> b!6900823 d!2161986))

(declare-fun d!2161988 () Bool)

(assert (=> d!2161988 (= (Exists!3873 lambda!391776) (choose!51372 lambda!391776))))

(declare-fun bs!1842045 () Bool)

(assert (= bs!1842045 d!2161988))

(declare-fun m!7619488 () Bool)

(assert (=> bs!1842045 m!7619488))

(assert (=> b!6900823 d!2161988))

(declare-fun bs!1842046 () Bool)

(declare-fun d!2161990 () Bool)

(assert (= bs!1842046 (and d!2161990 b!6900823)))

(declare-fun lambda!391835 () Int)

(assert (=> bs!1842046 (not (= lambda!391835 lambda!391777))))

(declare-fun bs!1842047 () Bool)

(assert (= bs!1842047 (and d!2161990 d!2161942)))

(assert (=> bs!1842047 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466416)) (= lambda!391835 lambda!391823))))

(declare-fun bs!1842048 () Bool)

(assert (= bs!1842048 (and d!2161990 b!6900813)))

(assert (=> bs!1842048 (not (= lambda!391835 lambda!391784))))

(declare-fun bs!1842049 () Bool)

(assert (= bs!1842049 (and d!2161990 b!6901316)))

(assert (=> bs!1842049 (not (= lambda!391835 lambda!391830))))

(declare-fun bs!1842050 () Bool)

(assert (= bs!1842050 (and d!2161990 b!6901041)))

(assert (=> bs!1842050 (not (= lambda!391835 lambda!391804))))

(assert (=> bs!1842046 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466416)) (= lambda!391835 lambda!391776))))

(declare-fun bs!1842051 () Bool)

(assert (= bs!1842051 (and d!2161990 d!2161888)))

(assert (=> bs!1842051 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 lt!2466409)) (= lambda!391835 lambda!391802))))

(assert (=> bs!1842046 (not (= lambda!391835 lambda!391779))))

(declare-fun bs!1842052 () Bool)

(assert (= bs!1842052 (and d!2161990 d!2161864)))

(assert (=> bs!1842052 (= (and (= (_2!37035 lt!2466430) lt!2466407) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!391835 lambda!391787))))

(assert (=> bs!1842046 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 lt!2466409)) (= lambda!391835 lambda!391782))))

(declare-fun bs!1842053 () Bool)

(assert (= bs!1842053 (and d!2161990 d!2161916)))

(assert (=> bs!1842053 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 lt!2466409)) (= lambda!391835 lambda!391818))))

(declare-fun bs!1842054 () Bool)

(assert (= bs!1842054 (and d!2161990 b!6901324)))

(assert (=> bs!1842054 (not (= lambda!391835 lambda!391832))))

(assert (=> bs!1842046 (not (= lambda!391835 lambda!391781))))

(assert (=> bs!1842047 (not (= lambda!391835 lambda!391825))))

(declare-fun bs!1842055 () Bool)

(assert (= bs!1842055 (and d!2161990 b!6901003)))

(assert (=> bs!1842055 (not (= lambda!391835 lambda!391801))))

(declare-fun bs!1842056 () Bool)

(assert (= bs!1842056 (and d!2161990 b!6901033)))

(assert (=> bs!1842056 (not (= lambda!391835 lambda!391803))))

(assert (=> bs!1842053 (not (= lambda!391835 lambda!391819))))

(declare-fun bs!1842057 () Bool)

(assert (= bs!1842057 (and d!2161990 b!6900995)))

(assert (=> bs!1842057 (not (= lambda!391835 lambda!391799))))

(assert (=> bs!1842046 (= (and (= (_2!37035 lt!2466430) lt!2466407) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!391835 lambda!391780))))

(declare-fun bs!1842058 () Bool)

(assert (= bs!1842058 (and d!2161990 d!2161956)))

(assert (=> bs!1842058 (= lambda!391835 lambda!391828)))

(declare-fun bs!1842059 () Bool)

(assert (= bs!1842059 (and d!2161990 b!6900820)))

(assert (=> bs!1842059 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466416)) (= lambda!391835 lambda!391783))))

(assert (=> bs!1842046 (= lambda!391835 lambda!391778)))

(assert (=> d!2161990 true))

(assert (=> d!2161990 true))

(assert (=> d!2161990 true))

(declare-fun lambda!391837 () Int)

(assert (=> bs!1842046 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466416)) (= lambda!391837 lambda!391777))))

(assert (=> bs!1842047 (not (= lambda!391837 lambda!391823))))

(assert (=> bs!1842048 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466416)) (= lambda!391837 lambda!391784))))

(assert (=> bs!1842049 (not (= lambda!391837 lambda!391830))))

(assert (=> bs!1842050 (= (and (= r2!6280 (regOne!34242 lt!2466416)) (= r3!135 (regTwo!34242 lt!2466416))) (= lambda!391837 lambda!391804))))

(assert (=> bs!1842046 (not (= lambda!391837 lambda!391776))))

(assert (=> bs!1842051 (not (= lambda!391837 lambda!391802))))

(assert (=> bs!1842046 (= lambda!391837 lambda!391779)))

(assert (=> bs!1842052 (not (= lambda!391837 lambda!391787))))

(assert (=> bs!1842046 (not (= lambda!391837 lambda!391782))))

(assert (=> bs!1842053 (not (= lambda!391837 lambda!391818))))

(assert (=> bs!1842054 (= (and (= (_2!37035 lt!2466430) lt!2466407) (= r2!6280 (regOne!34242 lt!2466409)) (= r3!135 (regTwo!34242 lt!2466409))) (= lambda!391837 lambda!391832))))

(assert (=> bs!1842046 (= (and (= (_2!37035 lt!2466430) lt!2466407) (= r2!6280 r1!6342) (= r3!135 r2!6280)) (= lambda!391837 lambda!391781))))

(declare-fun bs!1842074 () Bool)

(assert (= bs!1842074 d!2161990))

(assert (=> bs!1842074 (not (= lambda!391837 lambda!391835))))

(assert (=> bs!1842047 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2466416)) (= lambda!391837 lambda!391825))))

(assert (=> bs!1842055 (= (and (= (_2!37035 lt!2466430) (_2!37035 lt!2466417)) (= r2!6280 (regOne!34242 r3!135)) (= r3!135 (regTwo!34242 r3!135))) (= lambda!391837 lambda!391801))))

(assert (=> bs!1842056 (not (= lambda!391837 lambda!391803))))

(assert (=> bs!1842053 (= (and (= (_2!37035 lt!2466430) s!14361) (= r2!6280 lt!2466409)) (= lambda!391837 lambda!391819))))

(assert (=> bs!1842057 (not (= lambda!391837 lambda!391799))))

(assert (=> bs!1842046 (not (= lambda!391837 lambda!391780))))

(assert (=> bs!1842058 (not (= lambda!391837 lambda!391828))))

(assert (=> bs!1842059 (not (= lambda!391837 lambda!391783))))

(assert (=> bs!1842046 (not (= lambda!391837 lambda!391778))))

(assert (=> d!2161990 true))

(assert (=> d!2161990 true))

(assert (=> d!2161990 true))

(assert (=> d!2161990 (= (Exists!3873 lambda!391835) (Exists!3873 lambda!391837))))

(declare-fun lt!2466518 () Unit!160460)

(assert (=> d!2161990 (= lt!2466518 (choose!51379 r2!6280 r3!135 (_2!37035 lt!2466430)))))

(assert (=> d!2161990 (validRegex!8573 r2!6280)))

(assert (=> d!2161990 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2346 r2!6280 r3!135 (_2!37035 lt!2466430)) lt!2466518)))

(declare-fun m!7619514 () Bool)

(assert (=> bs!1842074 m!7619514))

(declare-fun m!7619516 () Bool)

(assert (=> bs!1842074 m!7619516))

(declare-fun m!7619518 () Bool)

(assert (=> bs!1842074 m!7619518))

(assert (=> bs!1842074 m!7619048))

(assert (=> b!6900823 d!2161990))

(declare-fun bs!1842080 () Bool)

(declare-fun d!2161996 () Bool)

(assert (= bs!1842080 (and d!2161996 b!6900823)))

(declare-fun lambda!391839 () Int)

(assert (=> bs!1842080 (not (= lambda!391839 lambda!391777))))

(declare-fun bs!1842081 () Bool)

(assert (= bs!1842081 (and d!2161996 d!2161942)))

(assert (=> bs!1842081 (= (and (= lt!2466407 s!14361) (= r2!6280 lt!2466416)) (= lambda!391839 lambda!391823))))

(declare-fun bs!1842082 () Bool)

(assert (= bs!1842082 (and d!2161996 b!6900813)))

(assert (=> bs!1842082 (not (= lambda!391839 lambda!391784))))

(declare-fun bs!1842083 () Bool)

(assert (= bs!1842083 (and d!2161996 b!6901316)))

(assert (=> bs!1842083 (not (= lambda!391839 lambda!391830))))

(declare-fun bs!1842084 () Bool)

(assert (= bs!1842084 (and d!2161996 b!6901041)))

(assert (=> bs!1842084 (not (= lambda!391839 lambda!391804))))

(declare-fun bs!1842085 () Bool)

(assert (= bs!1842085 (and d!2161996 d!2161888)))

(assert (=> bs!1842085 (= (and (= lt!2466407 s!14361) (= r1!6342 lt!2466409) (= r2!6280 r3!135)) (= lambda!391839 lambda!391802))))

(assert (=> bs!1842080 (not (= lambda!391839 lambda!391779))))

(declare-fun bs!1842086 () Bool)

(assert (= bs!1842086 (and d!2161996 d!2161864)))

(assert (=> bs!1842086 (= lambda!391839 lambda!391787)))

(assert (=> bs!1842080 (= (and (= lt!2466407 s!14361) (= r1!6342 lt!2466409) (= r2!6280 r3!135)) (= lambda!391839 lambda!391782))))

(declare-fun bs!1842087 () Bool)

(assert (= bs!1842087 (and d!2161996 d!2161916)))

(assert (=> bs!1842087 (= (and (= lt!2466407 s!14361) (= r1!6342 lt!2466409) (= r2!6280 r3!135)) (= lambda!391839 lambda!391818))))

(declare-fun bs!1842088 () Bool)

(assert (= bs!1842088 (and d!2161996 b!6901324)))

(assert (=> bs!1842088 (not (= lambda!391839 lambda!391832))))

(assert (=> bs!1842080 (not (= lambda!391839 lambda!391781))))

(declare-fun bs!1842089 () Bool)

(assert (= bs!1842089 (and d!2161996 d!2161990)))

(assert (=> bs!1842089 (= (and (= lt!2466407 (_2!37035 lt!2466430)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391839 lambda!391835))))

(assert (=> bs!1842081 (not (= lambda!391839 lambda!391825))))

(declare-fun bs!1842090 () Bool)

(assert (= bs!1842090 (and d!2161996 b!6901003)))

(assert (=> bs!1842090 (not (= lambda!391839 lambda!391801))))

(declare-fun bs!1842091 () Bool)

(assert (= bs!1842091 (and d!2161996 b!6901033)))

(assert (=> bs!1842091 (not (= lambda!391839 lambda!391803))))

(assert (=> bs!1842087 (not (= lambda!391839 lambda!391819))))

(declare-fun bs!1842092 () Bool)

(assert (= bs!1842092 (and d!2161996 b!6900995)))

(assert (=> bs!1842092 (not (= lambda!391839 lambda!391799))))

(assert (=> bs!1842089 (not (= lambda!391839 lambda!391837))))

(assert (=> bs!1842080 (= (and (= lt!2466407 s!14361) (= r2!6280 lt!2466416)) (= lambda!391839 lambda!391776))))

(assert (=> bs!1842080 (= lambda!391839 lambda!391780)))

(declare-fun bs!1842093 () Bool)

(assert (= bs!1842093 (and d!2161996 d!2161956)))

(assert (=> bs!1842093 (= (and (= lt!2466407 (_2!37035 lt!2466430)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391839 lambda!391828))))

(declare-fun bs!1842094 () Bool)

(assert (= bs!1842094 (and d!2161996 b!6900820)))

(assert (=> bs!1842094 (= (and (= lt!2466407 s!14361) (= r2!6280 lt!2466416)) (= lambda!391839 lambda!391783))))

(assert (=> bs!1842080 (= (and (= lt!2466407 (_2!37035 lt!2466430)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391839 lambda!391778))))

(assert (=> d!2161996 true))

(assert (=> d!2161996 true))

(assert (=> d!2161996 true))

(declare-fun lambda!391840 () Int)

(assert (=> bs!1842080 (= (and (= lt!2466407 s!14361) (= r2!6280 lt!2466416)) (= lambda!391840 lambda!391777))))

(assert (=> bs!1842081 (not (= lambda!391840 lambda!391823))))

(assert (=> bs!1842082 (= (and (= lt!2466407 s!14361) (= r2!6280 lt!2466416)) (= lambda!391840 lambda!391784))))

(assert (=> bs!1842083 (not (= lambda!391840 lambda!391830))))

(assert (=> bs!1842084 (= (and (= lt!2466407 (_2!37035 lt!2466430)) (= r1!6342 (regOne!34242 lt!2466416)) (= r2!6280 (regTwo!34242 lt!2466416))) (= lambda!391840 lambda!391804))))

(assert (=> bs!1842085 (not (= lambda!391840 lambda!391802))))

(assert (=> bs!1842080 (= (and (= lt!2466407 (_2!37035 lt!2466430)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391840 lambda!391779))))

(assert (=> bs!1842086 (not (= lambda!391840 lambda!391787))))

(assert (=> bs!1842080 (not (= lambda!391840 lambda!391782))))

(assert (=> bs!1842087 (not (= lambda!391840 lambda!391818))))

(assert (=> bs!1842088 (= (and (= r1!6342 (regOne!34242 lt!2466409)) (= r2!6280 (regTwo!34242 lt!2466409))) (= lambda!391840 lambda!391832))))

(assert (=> bs!1842080 (= lambda!391840 lambda!391781)))

(assert (=> bs!1842089 (not (= lambda!391840 lambda!391835))))

(assert (=> bs!1842081 (= (and (= lt!2466407 s!14361) (= r2!6280 lt!2466416)) (= lambda!391840 lambda!391825))))

(assert (=> bs!1842090 (= (and (= lt!2466407 (_2!37035 lt!2466417)) (= r1!6342 (regOne!34242 r3!135)) (= r2!6280 (regTwo!34242 r3!135))) (= lambda!391840 lambda!391801))))

(assert (=> bs!1842091 (not (= lambda!391840 lambda!391803))))

(assert (=> bs!1842087 (= (and (= lt!2466407 s!14361) (= r1!6342 lt!2466409) (= r2!6280 r3!135)) (= lambda!391840 lambda!391819))))

(assert (=> bs!1842092 (not (= lambda!391840 lambda!391799))))

(assert (=> bs!1842089 (= (and (= lt!2466407 (_2!37035 lt!2466430)) (= r1!6342 r2!6280) (= r2!6280 r3!135)) (= lambda!391840 lambda!391837))))

(assert (=> bs!1842080 (not (= lambda!391840 lambda!391776))))

(assert (=> bs!1842080 (not (= lambda!391840 lambda!391780))))

(assert (=> bs!1842093 (not (= lambda!391840 lambda!391828))))

(assert (=> bs!1842094 (not (= lambda!391840 lambda!391783))))

(assert (=> bs!1842080 (not (= lambda!391840 lambda!391778))))

(declare-fun bs!1842110 () Bool)

(assert (= bs!1842110 d!2161996))

(assert (=> bs!1842110 (not (= lambda!391840 lambda!391839))))

(assert (=> d!2161996 true))

(assert (=> d!2161996 true))

(assert (=> d!2161996 true))

(assert (=> d!2161996 (= (Exists!3873 lambda!391839) (Exists!3873 lambda!391840))))

(declare-fun lt!2466523 () Unit!160460)

(assert (=> d!2161996 (= lt!2466523 (choose!51379 r1!6342 r2!6280 lt!2466407))))

(assert (=> d!2161996 (validRegex!8573 r1!6342)))

(assert (=> d!2161996 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2346 r1!6342 r2!6280 lt!2466407) lt!2466523)))

(declare-fun m!7619526 () Bool)

(assert (=> bs!1842110 m!7619526))

(declare-fun m!7619528 () Bool)

(assert (=> bs!1842110 m!7619528))

(declare-fun m!7619530 () Bool)

(assert (=> bs!1842110 m!7619530))

(assert (=> bs!1842110 m!7618956))

(assert (=> b!6900823 d!2161996))

(declare-fun bs!1842115 () Bool)

(declare-fun b!6901358 () Bool)

(assert (= bs!1842115 (and b!6901358 b!6900823)))

(declare-fun lambda!391842 () Int)

(assert (=> bs!1842115 (not (= lambda!391842 lambda!391777))))

(declare-fun bs!1842116 () Bool)

(assert (= bs!1842116 (and b!6901358 d!2161942)))

(assert (=> bs!1842116 (not (= lambda!391842 lambda!391823))))

(declare-fun bs!1842117 () Bool)

(assert (= bs!1842117 (and b!6901358 b!6900813)))

(assert (=> bs!1842117 (not (= lambda!391842 lambda!391784))))

(declare-fun bs!1842119 () Bool)

(assert (= bs!1842119 (and b!6901358 b!6901316)))

(assert (=> bs!1842119 (= (and (= (_1!37035 lt!2466417) lt!2466407) (= (reg!17194 r2!6280) (reg!17194 lt!2466409)) (= r2!6280 lt!2466409)) (= lambda!391842 lambda!391830))))

(declare-fun bs!1842121 () Bool)

(assert (= bs!1842121 (and b!6901358 b!6901041)))

(assert (=> bs!1842121 (not (= lambda!391842 lambda!391804))))

(declare-fun bs!1842123 () Bool)

(assert (= bs!1842123 (and b!6901358 d!2161996)))

(assert (=> bs!1842123 (not (= lambda!391842 lambda!391840))))

(declare-fun bs!1842125 () Bool)

(assert (= bs!1842125 (and b!6901358 d!2161888)))

(assert (=> bs!1842125 (not (= lambda!391842 lambda!391802))))

(assert (=> bs!1842115 (not (= lambda!391842 lambda!391779))))

(declare-fun bs!1842128 () Bool)

(assert (= bs!1842128 (and b!6901358 d!2161864)))

(assert (=> bs!1842128 (not (= lambda!391842 lambda!391787))))

(assert (=> bs!1842115 (not (= lambda!391842 lambda!391782))))

(declare-fun bs!1842130 () Bool)

(assert (= bs!1842130 (and b!6901358 d!2161916)))

(assert (=> bs!1842130 (not (= lambda!391842 lambda!391818))))

(declare-fun bs!1842132 () Bool)

(assert (= bs!1842132 (and b!6901358 b!6901324)))

(assert (=> bs!1842132 (not (= lambda!391842 lambda!391832))))

(assert (=> bs!1842115 (not (= lambda!391842 lambda!391781))))

(declare-fun bs!1842135 () Bool)

(assert (= bs!1842135 (and b!6901358 d!2161990)))

(assert (=> bs!1842135 (not (= lambda!391842 lambda!391835))))

(assert (=> bs!1842116 (not (= lambda!391842 lambda!391825))))

(declare-fun bs!1842137 () Bool)

(assert (= bs!1842137 (and b!6901358 b!6901003)))

(assert (=> bs!1842137 (not (= lambda!391842 lambda!391801))))

(declare-fun bs!1842139 () Bool)

(assert (= bs!1842139 (and b!6901358 b!6901033)))

(assert (=> bs!1842139 (= (and (= (_1!37035 lt!2466417) (_2!37035 lt!2466430)) (= (reg!17194 r2!6280) (reg!17194 lt!2466416)) (= r2!6280 lt!2466416)) (= lambda!391842 lambda!391803))))

(assert (=> bs!1842130 (not (= lambda!391842 lambda!391819))))

(declare-fun bs!1842141 () Bool)

(assert (= bs!1842141 (and b!6901358 b!6900995)))

(assert (=> bs!1842141 (= (and (= (_1!37035 lt!2466417) (_2!37035 lt!2466417)) (= (reg!17194 r2!6280) (reg!17194 r3!135)) (= r2!6280 r3!135)) (= lambda!391842 lambda!391799))))

(assert (=> bs!1842135 (not (= lambda!391842 lambda!391837))))

(assert (=> bs!1842115 (not (= lambda!391842 lambda!391776))))

(assert (=> bs!1842115 (not (= lambda!391842 lambda!391780))))

(declare-fun bs!1842143 () Bool)

(assert (= bs!1842143 (and b!6901358 d!2161956)))

(assert (=> bs!1842143 (not (= lambda!391842 lambda!391828))))

(declare-fun bs!1842145 () Bool)

(assert (= bs!1842145 (and b!6901358 b!6900820)))

(assert (=> bs!1842145 (not (= lambda!391842 lambda!391783))))

(assert (=> bs!1842115 (not (= lambda!391842 lambda!391778))))

(assert (=> bs!1842123 (not (= lambda!391842 lambda!391839))))

(assert (=> b!6901358 true))

(assert (=> b!6901358 true))

(declare-fun bs!1842151 () Bool)

(declare-fun b!6901366 () Bool)

(assert (= bs!1842151 (and b!6901366 b!6900823)))

(declare-fun lambda!391844 () Int)

(assert (=> bs!1842151 (= (and (= (_1!37035 lt!2466417) s!14361) (= (regOne!34242 r2!6280) r1!6342) (= (regTwo!34242 r2!6280) lt!2466416)) (= lambda!391844 lambda!391777))))

(declare-fun bs!1842152 () Bool)

(assert (= bs!1842152 (and b!6901366 d!2161942)))

(assert (=> bs!1842152 (not (= lambda!391844 lambda!391823))))

(declare-fun bs!1842153 () Bool)

(assert (= bs!1842153 (and b!6901366 b!6900813)))

(assert (=> bs!1842153 (= (and (= (_1!37035 lt!2466417) s!14361) (= (regOne!34242 r2!6280) r1!6342) (= (regTwo!34242 r2!6280) lt!2466416)) (= lambda!391844 lambda!391784))))

(declare-fun bs!1842154 () Bool)

(assert (= bs!1842154 (and b!6901366 b!6901316)))

(assert (=> bs!1842154 (not (= lambda!391844 lambda!391830))))

(declare-fun bs!1842155 () Bool)

(assert (= bs!1842155 (and b!6901366 b!6901041)))

(assert (=> bs!1842155 (= (and (= (_1!37035 lt!2466417) (_2!37035 lt!2466430)) (= (regOne!34242 r2!6280) (regOne!34242 lt!2466416)) (= (regTwo!34242 r2!6280) (regTwo!34242 lt!2466416))) (= lambda!391844 lambda!391804))))

(declare-fun bs!1842156 () Bool)

(assert (= bs!1842156 (and b!6901366 d!2161996)))

(assert (=> bs!1842156 (= (and (= (_1!37035 lt!2466417) lt!2466407) (= (regOne!34242 r2!6280) r1!6342) (= (regTwo!34242 r2!6280) r2!6280)) (= lambda!391844 lambda!391840))))

(declare-fun bs!1842157 () Bool)

(assert (= bs!1842157 (and b!6901366 d!2161888)))

(assert (=> bs!1842157 (not (= lambda!391844 lambda!391802))))

(declare-fun bs!1842159 () Bool)

(assert (= bs!1842159 (and b!6901366 d!2161864)))

(assert (=> bs!1842159 (not (= lambda!391844 lambda!391787))))

(assert (=> bs!1842151 (not (= lambda!391844 lambda!391782))))

(declare-fun bs!1842160 () Bool)

(assert (= bs!1842160 (and b!6901366 d!2161916)))

(assert (=> bs!1842160 (not (= lambda!391844 lambda!391818))))

(declare-fun bs!1842161 () Bool)

(assert (= bs!1842161 (and b!6901366 b!6901324)))

(assert (=> bs!1842161 (= (and (= (_1!37035 lt!2466417) lt!2466407) (= (regOne!34242 r2!6280) (regOne!34242 lt!2466409)) (= (regTwo!34242 r2!6280) (regTwo!34242 lt!2466409))) (= lambda!391844 lambda!391832))))

(assert (=> bs!1842151 (= (and (= (_1!37035 lt!2466417) lt!2466407) (= (regOne!34242 r2!6280) r1!6342) (= (regTwo!34242 r2!6280) r2!6280)) (= lambda!391844 lambda!391781))))

(declare-fun bs!1842163 () Bool)

(assert (= bs!1842163 (and b!6901366 d!2161990)))

(assert (=> bs!1842163 (not (= lambda!391844 lambda!391835))))

(assert (=> bs!1842152 (= (and (= (_1!37035 lt!2466417) s!14361) (= (regOne!34242 r2!6280) r1!6342) (= (regTwo!34242 r2!6280) lt!2466416)) (= lambda!391844 lambda!391825))))

(declare-fun bs!1842166 () Bool)

(assert (= bs!1842166 (and b!6901366 b!6901003)))

(assert (=> bs!1842166 (= (and (= (_1!37035 lt!2466417) (_2!37035 lt!2466417)) (= (regOne!34242 r2!6280) (regOne!34242 r3!135)) (= (regTwo!34242 r2!6280) (regTwo!34242 r3!135))) (= lambda!391844 lambda!391801))))

(declare-fun bs!1842168 () Bool)

(assert (= bs!1842168 (and b!6901366 b!6901033)))

(assert (=> bs!1842168 (not (= lambda!391844 lambda!391803))))

(assert (=> bs!1842160 (= (and (= (_1!37035 lt!2466417) s!14361) (= (regOne!34242 r2!6280) lt!2466409) (= (regTwo!34242 r2!6280) r3!135)) (= lambda!391844 lambda!391819))))

(declare-fun bs!1842171 () Bool)

(assert (= bs!1842171 (and b!6901366 b!6900995)))

(assert (=> bs!1842171 (not (= lambda!391844 lambda!391799))))

(assert (=> bs!1842163 (= (and (= (_1!37035 lt!2466417) (_2!37035 lt!2466430)) (= (regOne!34242 r2!6280) r2!6280) (= (regTwo!34242 r2!6280) r3!135)) (= lambda!391844 lambda!391837))))

(assert (=> bs!1842151 (not (= lambda!391844 lambda!391776))))

(assert (=> bs!1842151 (not (= lambda!391844 lambda!391780))))

(declare-fun bs!1842175 () Bool)

(assert (= bs!1842175 (and b!6901366 d!2161956)))

(assert (=> bs!1842175 (not (= lambda!391844 lambda!391828))))

(declare-fun bs!1842177 () Bool)

(assert (= bs!1842177 (and b!6901366 b!6901358)))

(assert (=> bs!1842177 (not (= lambda!391844 lambda!391842))))

(assert (=> bs!1842151 (= (and (= (_1!37035 lt!2466417) (_2!37035 lt!2466430)) (= (regOne!34242 r2!6280) r2!6280) (= (regTwo!34242 r2!6280) r3!135)) (= lambda!391844 lambda!391779))))

(declare-fun bs!1842180 () Bool)

(assert (= bs!1842180 (and b!6901366 b!6900820)))

(assert (=> bs!1842180 (not (= lambda!391844 lambda!391783))))

(assert (=> bs!1842151 (not (= lambda!391844 lambda!391778))))

(assert (=> bs!1842156 (not (= lambda!391844 lambda!391839))))

(assert (=> b!6901366 true))

(assert (=> b!6901366 true))

(declare-fun b!6901357 () Bool)

(declare-fun c!1282271 () Bool)

(assert (=> b!6901357 (= c!1282271 ((_ is ElementMatch!16865) r2!6280))))

(declare-fun e!4156153 () Bool)

(declare-fun e!4156150 () Bool)

(assert (=> b!6901357 (= e!4156153 e!4156150)))

(declare-fun e!4156149 () Bool)

(declare-fun call!627590 () Bool)

(assert (=> b!6901358 (= e!4156149 call!627590)))

(declare-fun b!6901359 () Bool)

(declare-fun e!4156148 () Bool)

(declare-fun e!4156147 () Bool)

(assert (=> b!6901359 (= e!4156148 e!4156147)))

(declare-fun c!1282269 () Bool)

(assert (=> b!6901359 (= c!1282269 ((_ is Star!16865) r2!6280))))

(declare-fun b!6901360 () Bool)

(declare-fun res!2814278 () Bool)

(assert (=> b!6901360 (=> res!2814278 e!4156149)))

(declare-fun call!627591 () Bool)

(assert (=> b!6901360 (= res!2814278 call!627591)))

(assert (=> b!6901360 (= e!4156147 e!4156149)))

(declare-fun b!6901361 () Bool)

(declare-fun e!4156152 () Bool)

(assert (=> b!6901361 (= e!4156148 e!4156152)))

(declare-fun res!2814280 () Bool)

(assert (=> b!6901361 (= res!2814280 (matchRSpec!3928 (regOne!34243 r2!6280) (_1!37035 lt!2466417)))))

(assert (=> b!6901361 (=> res!2814280 e!4156152)))

(declare-fun b!6901363 () Bool)

(assert (=> b!6901363 (= e!4156150 (= (_1!37035 lt!2466417) (Cons!66498 (c!1282141 r2!6280) Nil!66498)))))

(declare-fun bm!627585 () Bool)

(assert (=> bm!627585 (= call!627590 (Exists!3873 (ite c!1282269 lambda!391842 lambda!391844)))))

(declare-fun b!6901364 () Bool)

(declare-fun e!4156151 () Bool)

(assert (=> b!6901364 (= e!4156151 call!627591)))

(declare-fun bm!627586 () Bool)

(assert (=> bm!627586 (= call!627591 (isEmpty!38725 (_1!37035 lt!2466417)))))

(declare-fun b!6901365 () Bool)

(assert (=> b!6901365 (= e!4156151 e!4156153)))

(declare-fun res!2814279 () Bool)

(assert (=> b!6901365 (= res!2814279 (not ((_ is EmptyLang!16865) r2!6280)))))

(assert (=> b!6901365 (=> (not res!2814279) (not e!4156153))))

(assert (=> b!6901366 (= e!4156147 call!627590)))

(declare-fun b!6901367 () Bool)

(assert (=> b!6901367 (= e!4156152 (matchRSpec!3928 (regTwo!34243 r2!6280) (_1!37035 lt!2466417)))))

(declare-fun d!2162000 () Bool)

(declare-fun c!1282270 () Bool)

(assert (=> d!2162000 (= c!1282270 ((_ is EmptyExpr!16865) r2!6280))))

(assert (=> d!2162000 (= (matchRSpec!3928 r2!6280 (_1!37035 lt!2466417)) e!4156151)))

(declare-fun b!6901362 () Bool)

(declare-fun c!1282272 () Bool)

(assert (=> b!6901362 (= c!1282272 ((_ is Union!16865) r2!6280))))

(assert (=> b!6901362 (= e!4156150 e!4156148)))

(assert (= (and d!2162000 c!1282270) b!6901364))

(assert (= (and d!2162000 (not c!1282270)) b!6901365))

(assert (= (and b!6901365 res!2814279) b!6901357))

(assert (= (and b!6901357 c!1282271) b!6901363))

(assert (= (and b!6901357 (not c!1282271)) b!6901362))

(assert (= (and b!6901362 c!1282272) b!6901361))

(assert (= (and b!6901362 (not c!1282272)) b!6901359))

(assert (= (and b!6901361 (not res!2814280)) b!6901367))

(assert (= (and b!6901359 c!1282269) b!6901360))

(assert (= (and b!6901359 (not c!1282269)) b!6901366))

(assert (= (and b!6901360 (not res!2814278)) b!6901358))

(assert (= (or b!6901358 b!6901366) bm!627585))

(assert (= (or b!6901364 b!6901360) bm!627586))

(declare-fun m!7619540 () Bool)

(assert (=> b!6901361 m!7619540))

(declare-fun m!7619542 () Bool)

(assert (=> bm!627585 m!7619542))

(declare-fun m!7619544 () Bool)

(assert (=> bm!627586 m!7619544))

(declare-fun m!7619546 () Bool)

(assert (=> b!6901367 m!7619546))

(assert (=> b!6900823 d!2162000))

(declare-fun b!6901369 () Bool)

(declare-fun e!4156155 () List!66622)

(assert (=> b!6901369 (= e!4156155 (Cons!66498 (h!72946 (_1!37035 lt!2466417)) (++!14918 (t!380365 (_1!37035 lt!2466417)) (_2!37035 lt!2466417))))))

(declare-fun b!6901370 () Bool)

(declare-fun res!2814282 () Bool)

(declare-fun e!4156154 () Bool)

(assert (=> b!6901370 (=> (not res!2814282) (not e!4156154))))

(declare-fun lt!2466525 () List!66622)

(assert (=> b!6901370 (= res!2814282 (= (size!40756 lt!2466525) (+ (size!40756 (_1!37035 lt!2466417)) (size!40756 (_2!37035 lt!2466417)))))))

(declare-fun d!2162006 () Bool)

(assert (=> d!2162006 e!4156154))

(declare-fun res!2814281 () Bool)

(assert (=> d!2162006 (=> (not res!2814281) (not e!4156154))))

(assert (=> d!2162006 (= res!2814281 (= (content!13059 lt!2466525) ((_ map or) (content!13059 (_1!37035 lt!2466417)) (content!13059 (_2!37035 lt!2466417)))))))

(assert (=> d!2162006 (= lt!2466525 e!4156155)))

(declare-fun c!1282273 () Bool)

(assert (=> d!2162006 (= c!1282273 ((_ is Nil!66498) (_1!37035 lt!2466417)))))

(assert (=> d!2162006 (= (++!14918 (_1!37035 lt!2466417) (_2!37035 lt!2466417)) lt!2466525)))

(declare-fun b!6901371 () Bool)

(assert (=> b!6901371 (= e!4156154 (or (not (= (_2!37035 lt!2466417) Nil!66498)) (= lt!2466525 (_1!37035 lt!2466417))))))

(declare-fun b!6901368 () Bool)

(assert (=> b!6901368 (= e!4156155 (_2!37035 lt!2466417))))

(assert (= (and d!2162006 c!1282273) b!6901368))

(assert (= (and d!2162006 (not c!1282273)) b!6901369))

(assert (= (and d!2162006 res!2814281) b!6901370))

(assert (= (and b!6901370 res!2814282) b!6901371))

(declare-fun m!7619548 () Bool)

(assert (=> b!6901369 m!7619548))

(declare-fun m!7619550 () Bool)

(assert (=> b!6901370 m!7619550))

(declare-fun m!7619552 () Bool)

(assert (=> b!6901370 m!7619552))

(assert (=> b!6901370 m!7619082))

(declare-fun m!7619554 () Bool)

(assert (=> d!2162006 m!7619554))

(declare-fun m!7619556 () Bool)

(assert (=> d!2162006 m!7619556))

(assert (=> d!2162006 m!7619088))

(assert (=> b!6900823 d!2162006))

(declare-fun b!6901373 () Bool)

(declare-fun e!4156157 () List!66622)

(assert (=> b!6901373 (= e!4156157 (Cons!66498 (h!72946 (_1!37035 lt!2466430)) (++!14918 (t!380365 (_1!37035 lt!2466430)) (_1!37035 lt!2466417))))))

(declare-fun b!6901374 () Bool)

(declare-fun res!2814284 () Bool)

(declare-fun e!4156156 () Bool)

(assert (=> b!6901374 (=> (not res!2814284) (not e!4156156))))

(declare-fun lt!2466526 () List!66622)

(assert (=> b!6901374 (= res!2814284 (= (size!40756 lt!2466526) (+ (size!40756 (_1!37035 lt!2466430)) (size!40756 (_1!37035 lt!2466417)))))))

(declare-fun d!2162008 () Bool)

(assert (=> d!2162008 e!4156156))

(declare-fun res!2814283 () Bool)

(assert (=> d!2162008 (=> (not res!2814283) (not e!4156156))))

(assert (=> d!2162008 (= res!2814283 (= (content!13059 lt!2466526) ((_ map or) (content!13059 (_1!37035 lt!2466430)) (content!13059 (_1!37035 lt!2466417)))))))

(assert (=> d!2162008 (= lt!2466526 e!4156157)))

(declare-fun c!1282274 () Bool)

(assert (=> d!2162008 (= c!1282274 ((_ is Nil!66498) (_1!37035 lt!2466430)))))

(assert (=> d!2162008 (= (++!14918 (_1!37035 lt!2466430) (_1!37035 lt!2466417)) lt!2466526)))

(declare-fun b!6901375 () Bool)

(assert (=> b!6901375 (= e!4156156 (or (not (= (_1!37035 lt!2466417) Nil!66498)) (= lt!2466526 (_1!37035 lt!2466430))))))

(declare-fun b!6901372 () Bool)

(assert (=> b!6901372 (= e!4156157 (_1!37035 lt!2466417))))

(assert (= (and d!2162008 c!1282274) b!6901372))

(assert (= (and d!2162008 (not c!1282274)) b!6901373))

(assert (= (and d!2162008 res!2814283) b!6901374))

(assert (= (and b!6901374 res!2814284) b!6901375))

(declare-fun m!7619558 () Bool)

(assert (=> b!6901373 m!7619558))

(declare-fun m!7619560 () Bool)

(assert (=> b!6901374 m!7619560))

(assert (=> b!6901374 m!7619370))

(assert (=> b!6901374 m!7619552))

(declare-fun m!7619562 () Bool)

(assert (=> d!2162008 m!7619562))

(assert (=> d!2162008 m!7619376))

(assert (=> d!2162008 m!7619556))

(assert (=> b!6900823 d!2162008))

(declare-fun d!2162010 () Bool)

(assert (=> d!2162010 (= (matchR!9010 lt!2466409 lt!2466407) (matchRSpec!3928 lt!2466409 lt!2466407))))

(declare-fun lt!2466527 () Unit!160460)

(assert (=> d!2162010 (= lt!2466527 (choose!51376 lt!2466409 lt!2466407))))

(assert (=> d!2162010 (validRegex!8573 lt!2466409)))

(assert (=> d!2162010 (= (mainMatchTheorem!3928 lt!2466409 lt!2466407) lt!2466527)))

(declare-fun bs!1842190 () Bool)

(assert (= bs!1842190 d!2162010))

(assert (=> bs!1842190 m!7619010))

(assert (=> bs!1842190 m!7619028))

(declare-fun m!7619564 () Bool)

(assert (=> bs!1842190 m!7619564))

(assert (=> bs!1842190 m!7619156))

(assert (=> b!6900823 d!2162010))

(declare-fun d!2162012 () Bool)

(assert (=> d!2162012 (= (isDefined!13347 (findConcatSeparation!3058 r1!6342 r2!6280 Nil!66498 lt!2466407 lt!2466407)) (not (isEmpty!38727 (findConcatSeparation!3058 r1!6342 r2!6280 Nil!66498 lt!2466407 lt!2466407))))))

(declare-fun bs!1842191 () Bool)

(assert (= bs!1842191 d!2162012))

(assert (=> bs!1842191 m!7619008))

(declare-fun m!7619566 () Bool)

(assert (=> bs!1842191 m!7619566))

(assert (=> b!6900823 d!2162012))

(declare-fun d!2162014 () Bool)

(assert (=> d!2162014 (= (matchR!9010 lt!2466416 (_2!37035 lt!2466430)) (matchRSpec!3928 lt!2466416 (_2!37035 lt!2466430)))))

(declare-fun lt!2466528 () Unit!160460)

(assert (=> d!2162014 (= lt!2466528 (choose!51376 lt!2466416 (_2!37035 lt!2466430)))))

(assert (=> d!2162014 (validRegex!8573 lt!2466416)))

(assert (=> d!2162014 (= (mainMatchTheorem!3928 lt!2466416 (_2!37035 lt!2466430)) lt!2466528)))

(declare-fun bs!1842192 () Bool)

(assert (= bs!1842192 d!2162014))

(assert (=> bs!1842192 m!7618982))

(assert (=> bs!1842192 m!7619026))

(declare-fun m!7619568 () Bool)

(assert (=> bs!1842192 m!7619568))

(assert (=> bs!1842192 m!7619068))

(assert (=> b!6900823 d!2162014))

(declare-fun bs!1842193 () Bool)

(declare-fun b!6901377 () Bool)

(assert (= bs!1842193 (and b!6901377 b!6900823)))

(declare-fun lambda!391847 () Int)

(assert (=> bs!1842193 (not (= lambda!391847 lambda!391777))))

(declare-fun bs!1842195 () Bool)

(assert (= bs!1842195 (and b!6901377 d!2161942)))

(assert (=> bs!1842195 (not (= lambda!391847 lambda!391823))))

(declare-fun bs!1842196 () Bool)

(assert (= bs!1842196 (and b!6901377 b!6900813)))

(assert (=> bs!1842196 (not (= lambda!391847 lambda!391784))))

(declare-fun bs!1842197 () Bool)

(assert (= bs!1842197 (and b!6901377 b!6901366)))

(assert (=> bs!1842197 (not (= lambda!391847 lambda!391844))))

(declare-fun bs!1842198 () Bool)

(assert (= bs!1842198 (and b!6901377 b!6901316)))

(assert (=> bs!1842198 (= (and (= (_1!37035 lt!2466430) lt!2466407) (= (reg!17194 r1!6342) (reg!17194 lt!2466409)) (= r1!6342 lt!2466409)) (= lambda!391847 lambda!391830))))

(declare-fun bs!1842199 () Bool)

(assert (= bs!1842199 (and b!6901377 b!6901041)))

(assert (=> bs!1842199 (not (= lambda!391847 lambda!391804))))

(declare-fun bs!1842200 () Bool)

(assert (= bs!1842200 (and b!6901377 d!2161996)))

(assert (=> bs!1842200 (not (= lambda!391847 lambda!391840))))

(declare-fun bs!1842201 () Bool)

(assert (= bs!1842201 (and b!6901377 d!2161888)))

(assert (=> bs!1842201 (not (= lambda!391847 lambda!391802))))

(declare-fun bs!1842202 () Bool)

(assert (= bs!1842202 (and b!6901377 d!2161864)))

(assert (=> bs!1842202 (not (= lambda!391847 lambda!391787))))

(assert (=> bs!1842193 (not (= lambda!391847 lambda!391782))))

(declare-fun bs!1842203 () Bool)

(assert (= bs!1842203 (and b!6901377 d!2161916)))

(assert (=> bs!1842203 (not (= lambda!391847 lambda!391818))))

(declare-fun bs!1842204 () Bool)

(assert (= bs!1842204 (and b!6901377 b!6901324)))

(assert (=> bs!1842204 (not (= lambda!391847 lambda!391832))))

(assert (=> bs!1842193 (not (= lambda!391847 lambda!391781))))

(declare-fun bs!1842205 () Bool)

(assert (= bs!1842205 (and b!6901377 d!2161990)))

(assert (=> bs!1842205 (not (= lambda!391847 lambda!391835))))

(assert (=> bs!1842195 (not (= lambda!391847 lambda!391825))))

(declare-fun bs!1842206 () Bool)

(assert (= bs!1842206 (and b!6901377 b!6901003)))

(assert (=> bs!1842206 (not (= lambda!391847 lambda!391801))))

(declare-fun bs!1842207 () Bool)

(assert (= bs!1842207 (and b!6901377 b!6901033)))

(assert (=> bs!1842207 (= (and (= (_1!37035 lt!2466430) (_2!37035 lt!2466430)) (= (reg!17194 r1!6342) (reg!17194 lt!2466416)) (= r1!6342 lt!2466416)) (= lambda!391847 lambda!391803))))

(assert (=> bs!1842203 (not (= lambda!391847 lambda!391819))))

(declare-fun bs!1842208 () Bool)

(assert (= bs!1842208 (and b!6901377 b!6900995)))

(assert (=> bs!1842208 (= (and (= (_1!37035 lt!2466430) (_2!37035 lt!2466417)) (= (reg!17194 r1!6342) (reg!17194 r3!135)) (= r1!6342 r3!135)) (= lambda!391847 lambda!391799))))

(assert (=> bs!1842205 (not (= lambda!391847 lambda!391837))))

(assert (=> bs!1842193 (not (= lambda!391847 lambda!391776))))

(assert (=> bs!1842193 (not (= lambda!391847 lambda!391780))))

(declare-fun bs!1842209 () Bool)

(assert (= bs!1842209 (and b!6901377 d!2161956)))

(assert (=> bs!1842209 (not (= lambda!391847 lambda!391828))))

(declare-fun bs!1842210 () Bool)

(assert (= bs!1842210 (and b!6901377 b!6901358)))

(assert (=> bs!1842210 (= (and (= (_1!37035 lt!2466430) (_1!37035 lt!2466417)) (= (reg!17194 r1!6342) (reg!17194 r2!6280)) (= r1!6342 r2!6280)) (= lambda!391847 lambda!391842))))

(assert (=> bs!1842193 (not (= lambda!391847 lambda!391779))))

(declare-fun bs!1842211 () Bool)

(assert (= bs!1842211 (and b!6901377 b!6900820)))

(assert (=> bs!1842211 (not (= lambda!391847 lambda!391783))))

(assert (=> bs!1842193 (not (= lambda!391847 lambda!391778))))

(assert (=> bs!1842200 (not (= lambda!391847 lambda!391839))))

(assert (=> b!6901377 true))

(assert (=> b!6901377 true))

(declare-fun bs!1842212 () Bool)

(declare-fun b!6901385 () Bool)

(assert (= bs!1842212 (and b!6901385 b!6900823)))

(declare-fun lambda!391848 () Int)

(assert (=> bs!1842212 (= (and (= (_1!37035 lt!2466430) s!14361) (= (regOne!34242 r1!6342) r1!6342) (= (regTwo!34242 r1!6342) lt!2466416)) (= lambda!391848 lambda!391777))))

(declare-fun bs!1842213 () Bool)

(assert (= bs!1842213 (and b!6901385 d!2161942)))

(assert (=> bs!1842213 (not (= lambda!391848 lambda!391823))))

(declare-fun bs!1842214 () Bool)

(assert (= bs!1842214 (and b!6901385 b!6900813)))

(assert (=> bs!1842214 (= (and (= (_1!37035 lt!2466430) s!14361) (= (regOne!34242 r1!6342) r1!6342) (= (regTwo!34242 r1!6342) lt!2466416)) (= lambda!391848 lambda!391784))))

(declare-fun bs!1842215 () Bool)

(assert (= bs!1842215 (and b!6901385 b!6901316)))

(assert (=> bs!1842215 (not (= lambda!391848 lambda!391830))))

(declare-fun bs!1842216 () Bool)

(assert (= bs!1842216 (and b!6901385 b!6901041)))

(assert (=> bs!1842216 (= (and (= (_1!37035 lt!2466430) (_2!37035 lt!2466430)) (= (regOne!34242 r1!6342) (regOne!34242 lt!2466416)) (= (regTwo!34242 r1!6342) (regTwo!34242 lt!2466416))) (= lambda!391848 lambda!391804))))

(declare-fun bs!1842217 () Bool)

(assert (= bs!1842217 (and b!6901385 d!2161996)))

(assert (=> bs!1842217 (= (and (= (_1!37035 lt!2466430) lt!2466407) (= (regOne!34242 r1!6342) r1!6342) (= (regTwo!34242 r1!6342) r2!6280)) (= lambda!391848 lambda!391840))))

(declare-fun bs!1842218 () Bool)

(assert (= bs!1842218 (and b!6901385 d!2161888)))

(assert (=> bs!1842218 (not (= lambda!391848 lambda!391802))))

(declare-fun bs!1842219 () Bool)

(assert (= bs!1842219 (and b!6901385 d!2161864)))

(assert (=> bs!1842219 (not (= lambda!391848 lambda!391787))))

(assert (=> bs!1842212 (not (= lambda!391848 lambda!391782))))

(declare-fun bs!1842221 () Bool)

(assert (= bs!1842221 (and b!6901385 d!2161916)))

(assert (=> bs!1842221 (not (= lambda!391848 lambda!391818))))

(declare-fun bs!1842222 () Bool)

(assert (= bs!1842222 (and b!6901385 b!6901324)))

(assert (=> bs!1842222 (= (and (= (_1!37035 lt!2466430) lt!2466407) (= (regOne!34242 r1!6342) (regOne!34242 lt!2466409)) (= (regTwo!34242 r1!6342) (regTwo!34242 lt!2466409))) (= lambda!391848 lambda!391832))))

(assert (=> bs!1842212 (= (and (= (_1!37035 lt!2466430) lt!2466407) (= (regOne!34242 r1!6342) r1!6342) (= (regTwo!34242 r1!6342) r2!6280)) (= lambda!391848 lambda!391781))))

(declare-fun bs!1842223 () Bool)

(assert (= bs!1842223 (and b!6901385 d!2161990)))

(assert (=> bs!1842223 (not (= lambda!391848 lambda!391835))))

(assert (=> bs!1842213 (= (and (= (_1!37035 lt!2466430) s!14361) (= (regOne!34242 r1!6342) r1!6342) (= (regTwo!34242 r1!6342) lt!2466416)) (= lambda!391848 lambda!391825))))

(declare-fun bs!1842224 () Bool)

(assert (= bs!1842224 (and b!6901385 b!6901003)))

(assert (=> bs!1842224 (= (and (= (_1!37035 lt!2466430) (_2!37035 lt!2466417)) (= (regOne!34242 r1!6342) (regOne!34242 r3!135)) (= (regTwo!34242 r1!6342) (regTwo!34242 r3!135))) (= lambda!391848 lambda!391801))))

(declare-fun bs!1842225 () Bool)

(assert (= bs!1842225 (and b!6901385 b!6901033)))

(assert (=> bs!1842225 (not (= lambda!391848 lambda!391803))))

(declare-fun bs!1842227 () Bool)

(assert (= bs!1842227 (and b!6901385 b!6901366)))

(assert (=> bs!1842227 (= (and (= (_1!37035 lt!2466430) (_1!37035 lt!2466417)) (= (regOne!34242 r1!6342) (regOne!34242 r2!6280)) (= (regTwo!34242 r1!6342) (regTwo!34242 r2!6280))) (= lambda!391848 lambda!391844))))

(declare-fun bs!1842229 () Bool)

(assert (= bs!1842229 (and b!6901385 b!6901377)))

(assert (=> bs!1842229 (not (= lambda!391848 lambda!391847))))

(assert (=> bs!1842221 (= (and (= (_1!37035 lt!2466430) s!14361) (= (regOne!34242 r1!6342) lt!2466409) (= (regTwo!34242 r1!6342) r3!135)) (= lambda!391848 lambda!391819))))

(declare-fun bs!1842232 () Bool)

(assert (= bs!1842232 (and b!6901385 b!6900995)))

(assert (=> bs!1842232 (not (= lambda!391848 lambda!391799))))

(assert (=> bs!1842223 (= (and (= (_1!37035 lt!2466430) (_2!37035 lt!2466430)) (= (regOne!34242 r1!6342) r2!6280) (= (regTwo!34242 r1!6342) r3!135)) (= lambda!391848 lambda!391837))))

(assert (=> bs!1842212 (not (= lambda!391848 lambda!391776))))

(assert (=> bs!1842212 (not (= lambda!391848 lambda!391780))))

(declare-fun bs!1842237 () Bool)

(assert (= bs!1842237 (and b!6901385 d!2161956)))

(assert (=> bs!1842237 (not (= lambda!391848 lambda!391828))))

(declare-fun bs!1842239 () Bool)

(assert (= bs!1842239 (and b!6901385 b!6901358)))

(assert (=> bs!1842239 (not (= lambda!391848 lambda!391842))))

(assert (=> bs!1842212 (= (and (= (_1!37035 lt!2466430) (_2!37035 lt!2466430)) (= (regOne!34242 r1!6342) r2!6280) (= (regTwo!34242 r1!6342) r3!135)) (= lambda!391848 lambda!391779))))

(declare-fun bs!1842242 () Bool)

(assert (= bs!1842242 (and b!6901385 b!6900820)))

(assert (=> bs!1842242 (not (= lambda!391848 lambda!391783))))

(assert (=> bs!1842212 (not (= lambda!391848 lambda!391778))))

(assert (=> bs!1842217 (not (= lambda!391848 lambda!391839))))

(assert (=> b!6901385 true))

(assert (=> b!6901385 true))

(declare-fun b!6901376 () Bool)

(declare-fun c!1282277 () Bool)

(assert (=> b!6901376 (= c!1282277 ((_ is ElementMatch!16865) r1!6342))))

(declare-fun e!4156164 () Bool)

(declare-fun e!4156161 () Bool)

(assert (=> b!6901376 (= e!4156164 e!4156161)))

(declare-fun e!4156160 () Bool)

(declare-fun call!627592 () Bool)

(assert (=> b!6901377 (= e!4156160 call!627592)))

(declare-fun b!6901378 () Bool)

(declare-fun e!4156159 () Bool)

(declare-fun e!4156158 () Bool)

(assert (=> b!6901378 (= e!4156159 e!4156158)))

(declare-fun c!1282275 () Bool)

(assert (=> b!6901378 (= c!1282275 ((_ is Star!16865) r1!6342))))

(declare-fun b!6901379 () Bool)

(declare-fun res!2814285 () Bool)

(assert (=> b!6901379 (=> res!2814285 e!4156160)))

(declare-fun call!627593 () Bool)

(assert (=> b!6901379 (= res!2814285 call!627593)))

(assert (=> b!6901379 (= e!4156158 e!4156160)))

(declare-fun b!6901380 () Bool)

(declare-fun e!4156163 () Bool)

(assert (=> b!6901380 (= e!4156159 e!4156163)))

(declare-fun res!2814287 () Bool)

(assert (=> b!6901380 (= res!2814287 (matchRSpec!3928 (regOne!34243 r1!6342) (_1!37035 lt!2466430)))))

(assert (=> b!6901380 (=> res!2814287 e!4156163)))

(declare-fun b!6901382 () Bool)

(assert (=> b!6901382 (= e!4156161 (= (_1!37035 lt!2466430) (Cons!66498 (c!1282141 r1!6342) Nil!66498)))))

(declare-fun bm!627587 () Bool)

(assert (=> bm!627587 (= call!627592 (Exists!3873 (ite c!1282275 lambda!391847 lambda!391848)))))

(declare-fun b!6901383 () Bool)

(declare-fun e!4156162 () Bool)

(assert (=> b!6901383 (= e!4156162 call!627593)))

(declare-fun bm!627588 () Bool)

(assert (=> bm!627588 (= call!627593 (isEmpty!38725 (_1!37035 lt!2466430)))))

(declare-fun b!6901384 () Bool)

(assert (=> b!6901384 (= e!4156162 e!4156164)))

(declare-fun res!2814286 () Bool)

(assert (=> b!6901384 (= res!2814286 (not ((_ is EmptyLang!16865) r1!6342)))))

(assert (=> b!6901384 (=> (not res!2814286) (not e!4156164))))

(assert (=> b!6901385 (= e!4156158 call!627592)))

(declare-fun b!6901386 () Bool)

(assert (=> b!6901386 (= e!4156163 (matchRSpec!3928 (regTwo!34243 r1!6342) (_1!37035 lt!2466430)))))

(declare-fun d!2162016 () Bool)

(declare-fun c!1282276 () Bool)

(assert (=> d!2162016 (= c!1282276 ((_ is EmptyExpr!16865) r1!6342))))

(assert (=> d!2162016 (= (matchRSpec!3928 r1!6342 (_1!37035 lt!2466430)) e!4156162)))

(declare-fun b!6901381 () Bool)

(declare-fun c!1282278 () Bool)

(assert (=> b!6901381 (= c!1282278 ((_ is Union!16865) r1!6342))))

(assert (=> b!6901381 (= e!4156161 e!4156159)))

(assert (= (and d!2162016 c!1282276) b!6901383))

(assert (= (and d!2162016 (not c!1282276)) b!6901384))

(assert (= (and b!6901384 res!2814286) b!6901376))

(assert (= (and b!6901376 c!1282277) b!6901382))

(assert (= (and b!6901376 (not c!1282277)) b!6901381))

(assert (= (and b!6901381 c!1282278) b!6901380))

(assert (= (and b!6901381 (not c!1282278)) b!6901378))

(assert (= (and b!6901380 (not res!2814287)) b!6901386))

(assert (= (and b!6901378 c!1282275) b!6901379))

(assert (= (and b!6901378 (not c!1282275)) b!6901385))

(assert (= (and b!6901379 (not res!2814285)) b!6901377))

(assert (= (or b!6901377 b!6901385) bm!627587))

(assert (= (or b!6901383 b!6901379) bm!627588))

(declare-fun m!7619580 () Bool)

(assert (=> b!6901380 m!7619580))

(declare-fun m!7619582 () Bool)

(assert (=> bm!627587 m!7619582))

(assert (=> bm!627588 m!7619310))

(declare-fun m!7619584 () Bool)

(assert (=> b!6901386 m!7619584))

(assert (=> b!6900823 d!2162016))

(declare-fun b!6901387 () Bool)

(declare-fun res!2814289 () Bool)

(declare-fun e!4156167 () Bool)

(assert (=> b!6901387 (=> (not res!2814289) (not e!4156167))))

(declare-fun lt!2466533 () Option!16644)

(assert (=> b!6901387 (= res!2814289 (matchR!9010 r2!6280 (_2!37035 (get!23248 lt!2466533))))))

(declare-fun d!2162022 () Bool)

(declare-fun e!4156166 () Bool)

(assert (=> d!2162022 e!4156166))

(declare-fun res!2814292 () Bool)

(assert (=> d!2162022 (=> res!2814292 e!4156166)))

(assert (=> d!2162022 (= res!2814292 e!4156167)))

(declare-fun res!2814291 () Bool)

(assert (=> d!2162022 (=> (not res!2814291) (not e!4156167))))

(assert (=> d!2162022 (= res!2814291 (isDefined!13347 lt!2466533))))

(declare-fun e!4156169 () Option!16644)

(assert (=> d!2162022 (= lt!2466533 e!4156169)))

(declare-fun c!1282279 () Bool)

(declare-fun e!4156165 () Bool)

(assert (=> d!2162022 (= c!1282279 e!4156165)))

(declare-fun res!2814288 () Bool)

(assert (=> d!2162022 (=> (not res!2814288) (not e!4156165))))

(assert (=> d!2162022 (= res!2814288 (matchR!9010 r1!6342 Nil!66498))))

(assert (=> d!2162022 (validRegex!8573 r1!6342)))

(assert (=> d!2162022 (= (findConcatSeparation!3058 r1!6342 r2!6280 Nil!66498 lt!2466407 lt!2466407) lt!2466533)))

(declare-fun b!6901388 () Bool)

(declare-fun e!4156168 () Option!16644)

(assert (=> b!6901388 (= e!4156168 None!16643)))

(declare-fun b!6901389 () Bool)

(assert (=> b!6901389 (= e!4156167 (= (++!14918 (_1!37035 (get!23248 lt!2466533)) (_2!37035 (get!23248 lt!2466533))) lt!2466407))))

(declare-fun b!6901390 () Bool)

(assert (=> b!6901390 (= e!4156166 (not (isDefined!13347 lt!2466533)))))

(declare-fun b!6901391 () Bool)

(declare-fun res!2814290 () Bool)

(assert (=> b!6901391 (=> (not res!2814290) (not e!4156167))))

(assert (=> b!6901391 (= res!2814290 (matchR!9010 r1!6342 (_1!37035 (get!23248 lt!2466533))))))

(declare-fun b!6901392 () Bool)

(declare-fun lt!2466535 () Unit!160460)

(declare-fun lt!2466534 () Unit!160460)

(assert (=> b!6901392 (= lt!2466535 lt!2466534)))

(assert (=> b!6901392 (= (++!14918 (++!14918 Nil!66498 (Cons!66498 (h!72946 lt!2466407) Nil!66498)) (t!380365 lt!2466407)) lt!2466407)))

(assert (=> b!6901392 (= lt!2466534 (lemmaMoveElementToOtherListKeepsConcatEq!2792 Nil!66498 (h!72946 lt!2466407) (t!380365 lt!2466407) lt!2466407))))

(assert (=> b!6901392 (= e!4156168 (findConcatSeparation!3058 r1!6342 r2!6280 (++!14918 Nil!66498 (Cons!66498 (h!72946 lt!2466407) Nil!66498)) (t!380365 lt!2466407) lt!2466407))))

(declare-fun b!6901393 () Bool)

(assert (=> b!6901393 (= e!4156169 e!4156168)))

(declare-fun c!1282280 () Bool)

(assert (=> b!6901393 (= c!1282280 ((_ is Nil!66498) lt!2466407))))

(declare-fun b!6901394 () Bool)

(assert (=> b!6901394 (= e!4156165 (matchR!9010 r2!6280 lt!2466407))))

(declare-fun b!6901395 () Bool)

(assert (=> b!6901395 (= e!4156169 (Some!16643 (tuple2!67465 Nil!66498 lt!2466407)))))

(assert (= (and d!2162022 res!2814288) b!6901394))

(assert (= (and d!2162022 c!1282279) b!6901395))

(assert (= (and d!2162022 (not c!1282279)) b!6901393))

(assert (= (and b!6901393 c!1282280) b!6901388))

(assert (= (and b!6901393 (not c!1282280)) b!6901392))

(assert (= (and d!2162022 res!2814291) b!6901391))

(assert (= (and b!6901391 res!2814290) b!6901387))

(assert (= (and b!6901387 res!2814289) b!6901389))

(assert (= (and d!2162022 (not res!2814292)) b!6901390))

(declare-fun m!7619586 () Bool)

(assert (=> b!6901390 m!7619586))

(assert (=> d!2162022 m!7619586))

(declare-fun m!7619588 () Bool)

(assert (=> d!2162022 m!7619588))

(assert (=> d!2162022 m!7618956))

(declare-fun m!7619590 () Bool)

(assert (=> b!6901391 m!7619590))

(declare-fun m!7619592 () Bool)

(assert (=> b!6901391 m!7619592))

(assert (=> b!6901389 m!7619590))

(declare-fun m!7619594 () Bool)

(assert (=> b!6901389 m!7619594))

(assert (=> b!6901387 m!7619590))

(declare-fun m!7619596 () Bool)

(assert (=> b!6901387 m!7619596))

(declare-fun m!7619598 () Bool)

(assert (=> b!6901392 m!7619598))

(assert (=> b!6901392 m!7619598))

(declare-fun m!7619602 () Bool)

(assert (=> b!6901392 m!7619602))

(declare-fun m!7619604 () Bool)

(assert (=> b!6901392 m!7619604))

(assert (=> b!6901392 m!7619598))

(declare-fun m!7619608 () Bool)

(assert (=> b!6901392 m!7619608))

(declare-fun m!7619610 () Bool)

(assert (=> b!6901394 m!7619610))

(assert (=> b!6900823 d!2162022))

(declare-fun d!2162024 () Bool)

(assert (=> d!2162024 (isDefined!13347 (findConcatSeparation!3058 r1!6342 r2!6280 Nil!66498 lt!2466407 lt!2466407))))

(declare-fun lt!2466537 () Unit!160460)

(assert (=> d!2162024 (= lt!2466537 (choose!51382 r1!6342 r2!6280 (_1!37035 lt!2466430) (_1!37035 lt!2466417) lt!2466407 Nil!66498 lt!2466407))))

(assert (=> d!2162024 (validRegex!8573 r1!6342)))

(assert (=> d!2162024 (= (lemmaR1MatchesS1AndR2MatchesS2ThenFindSeparationFindsAtLeastThem!66 r1!6342 r2!6280 (_1!37035 lt!2466430) (_1!37035 lt!2466417) lt!2466407 Nil!66498 lt!2466407) lt!2466537)))

(declare-fun bs!1842255 () Bool)

(assert (= bs!1842255 d!2162024))

(assert (=> bs!1842255 m!7619008))

(assert (=> bs!1842255 m!7619008))

(assert (=> bs!1842255 m!7619040))

(declare-fun m!7619612 () Bool)

(assert (=> bs!1842255 m!7619612))

(assert (=> bs!1842255 m!7618956))

(assert (=> b!6900823 d!2162024))

(declare-fun bs!1842256 () Bool)

(declare-fun d!2162028 () Bool)

(assert (= bs!1842256 (and d!2162028 b!6900823)))

(declare-fun lambda!391850 () Int)

(assert (=> bs!1842256 (not (= lambda!391850 lambda!391777))))

(declare-fun bs!1842257 () Bool)

(assert (= bs!1842257 (and d!2162028 d!2161942)))

(assert (=> bs!1842257 (= lambda!391850 lambda!391823)))

(declare-fun bs!1842258 () Bool)

(assert (= bs!1842258 (and d!2162028 b!6900813)))

(assert (=> bs!1842258 (not (= lambda!391850 lambda!391784))))

(declare-fun bs!1842260 () Bool)

(assert (= bs!1842260 (and d!2162028 b!6901316)))

(assert (=> bs!1842260 (not (= lambda!391850 lambda!391830))))

(declare-fun bs!1842262 () Bool)

(assert (= bs!1842262 (and d!2162028 b!6901041)))

(assert (=> bs!1842262 (not (= lambda!391850 lambda!391804))))

(declare-fun bs!1842264 () Bool)

(assert (= bs!1842264 (and d!2162028 b!6901385)))

(assert (=> bs!1842264 (not (= lambda!391850 lambda!391848))))

(declare-fun bs!1842265 () Bool)

(assert (= bs!1842265 (and d!2162028 d!2161996)))

(assert (=> bs!1842265 (not (= lambda!391850 lambda!391840))))

(declare-fun bs!1842266 () Bool)

(assert (= bs!1842266 (and d!2162028 d!2161888)))

(assert (=> bs!1842266 (= (and (= r1!6342 lt!2466409) (= lt!2466416 r3!135)) (= lambda!391850 lambda!391802))))

(declare-fun bs!1842267 () Bool)

(assert (= bs!1842267 (and d!2162028 d!2161864)))

(assert (=> bs!1842267 (= (and (= s!14361 lt!2466407) (= lt!2466416 r2!6280)) (= lambda!391850 lambda!391787))))

(assert (=> bs!1842256 (= (and (= r1!6342 lt!2466409) (= lt!2466416 r3!135)) (= lambda!391850 lambda!391782))))

(declare-fun bs!1842268 () Bool)

(assert (= bs!1842268 (and d!2162028 d!2161916)))

(assert (=> bs!1842268 (= (and (= r1!6342 lt!2466409) (= lt!2466416 r3!135)) (= lambda!391850 lambda!391818))))

(declare-fun bs!1842269 () Bool)

(assert (= bs!1842269 (and d!2162028 b!6901324)))

(assert (=> bs!1842269 (not (= lambda!391850 lambda!391832))))

(assert (=> bs!1842256 (not (= lambda!391850 lambda!391781))))

(declare-fun bs!1842270 () Bool)

(assert (= bs!1842270 (and d!2162028 d!2161990)))

(assert (=> bs!1842270 (= (and (= s!14361 (_2!37035 lt!2466430)) (= r1!6342 r2!6280) (= lt!2466416 r3!135)) (= lambda!391850 lambda!391835))))

(assert (=> bs!1842257 (not (= lambda!391850 lambda!391825))))

(declare-fun bs!1842271 () Bool)

(assert (= bs!1842271 (and d!2162028 b!6901003)))

(assert (=> bs!1842271 (not (= lambda!391850 lambda!391801))))

(declare-fun bs!1842272 () Bool)

(assert (= bs!1842272 (and d!2162028 b!6901033)))

(assert (=> bs!1842272 (not (= lambda!391850 lambda!391803))))

(declare-fun bs!1842273 () Bool)

(assert (= bs!1842273 (and d!2162028 b!6901366)))

(assert (=> bs!1842273 (not (= lambda!391850 lambda!391844))))

(declare-fun bs!1842274 () Bool)

(assert (= bs!1842274 (and d!2162028 b!6901377)))

(assert (=> bs!1842274 (not (= lambda!391850 lambda!391847))))

(assert (=> bs!1842268 (not (= lambda!391850 lambda!391819))))

(declare-fun bs!1842275 () Bool)

(assert (= bs!1842275 (and d!2162028 b!6900995)))

(assert (=> bs!1842275 (not (= lambda!391850 lambda!391799))))

(assert (=> bs!1842270 (not (= lambda!391850 lambda!391837))))

(assert (=> bs!1842256 (= lambda!391850 lambda!391776)))

(assert (=> bs!1842256 (= (and (= s!14361 lt!2466407) (= lt!2466416 r2!6280)) (= lambda!391850 lambda!391780))))

(declare-fun bs!1842276 () Bool)

(assert (= bs!1842276 (and d!2162028 d!2161956)))

(assert (=> bs!1842276 (= (and (= s!14361 (_2!37035 lt!2466430)) (= r1!6342 r2!6280) (= lt!2466416 r3!135)) (= lambda!391850 lambda!391828))))

(declare-fun bs!1842277 () Bool)

(assert (= bs!1842277 (and d!2162028 b!6901358)))

(assert (=> bs!1842277 (not (= lambda!391850 lambda!391842))))

(assert (=> bs!1842256 (not (= lambda!391850 lambda!391779))))

(declare-fun bs!1842278 () Bool)

(assert (= bs!1842278 (and d!2162028 b!6900820)))

(assert (=> bs!1842278 (= lambda!391850 lambda!391783)))

(assert (=> bs!1842256 (= (and (= s!14361 (_2!37035 lt!2466430)) (= r1!6342 r2!6280) (= lt!2466416 r3!135)) (= lambda!391850 lambda!391778))))

(assert (=> bs!1842265 (= (and (= s!14361 lt!2466407) (= lt!2466416 r2!6280)) (= lambda!391850 lambda!391839))))

(assert (=> d!2162028 true))

(assert (=> d!2162028 true))

(assert (=> d!2162028 true))

(assert (=> d!2162028 (= (isDefined!13347 (findConcatSeparation!3058 r1!6342 lt!2466416 Nil!66498 s!14361 s!14361)) (Exists!3873 lambda!391850))))

(declare-fun lt!2466538 () Unit!160460)

(assert (=> d!2162028 (= lt!2466538 (choose!51373 r1!6342 lt!2466416 s!14361))))

(assert (=> d!2162028 (validRegex!8573 r1!6342)))

(assert (=> d!2162028 (= (lemmaFindConcatSeparationEquivalentToExists!2820 r1!6342 lt!2466416 s!14361) lt!2466538)))

(declare-fun bs!1842279 () Bool)

(assert (= bs!1842279 d!2162028))

(assert (=> bs!1842279 m!7618956))

(declare-fun m!7619632 () Bool)

(assert (=> bs!1842279 m!7619632))

(assert (=> bs!1842279 m!7619072))

(assert (=> bs!1842279 m!7619072))

(declare-fun m!7619634 () Bool)

(assert (=> bs!1842279 m!7619634))

(declare-fun m!7619636 () Bool)

(assert (=> bs!1842279 m!7619636))

(assert (=> b!6900823 d!2162028))

(declare-fun b!6901418 () Bool)

(declare-fun e!4156184 () Bool)

(declare-fun e!4156186 () Bool)

(assert (=> b!6901418 (= e!4156184 e!4156186)))

(declare-fun res!2814311 () Bool)

(assert (=> b!6901418 (=> res!2814311 e!4156186)))

(declare-fun call!627595 () Bool)

(assert (=> b!6901418 (= res!2814311 call!627595)))

(declare-fun b!6901419 () Bool)

(declare-fun e!4156185 () Bool)

(declare-fun e!4156187 () Bool)

(assert (=> b!6901419 (= e!4156185 e!4156187)))

(declare-fun c!1282288 () Bool)

(assert (=> b!6901419 (= c!1282288 ((_ is EmptyLang!16865) r2!6280))))

(declare-fun b!6901420 () Bool)

(declare-fun e!4156183 () Bool)

(assert (=> b!6901420 (= e!4156183 (nullable!6706 r2!6280))))

(declare-fun b!6901421 () Bool)

(assert (=> b!6901421 (= e!4156183 (matchR!9010 (derivativeStep!5385 r2!6280 (head!13838 (_1!37035 lt!2466417))) (tail!12890 (_1!37035 lt!2466417))))))

(declare-fun b!6901422 () Bool)

(declare-fun res!2814310 () Bool)

(declare-fun e!4156182 () Bool)

(assert (=> b!6901422 (=> res!2814310 e!4156182)))

(declare-fun e!4156181 () Bool)

(assert (=> b!6901422 (= res!2814310 e!4156181)))

(declare-fun res!2814305 () Bool)

(assert (=> b!6901422 (=> (not res!2814305) (not e!4156181))))

(declare-fun lt!2466541 () Bool)

(assert (=> b!6901422 (= res!2814305 lt!2466541)))

(declare-fun bm!627590 () Bool)

(assert (=> bm!627590 (= call!627595 (isEmpty!38725 (_1!37035 lt!2466417)))))

(declare-fun b!6901423 () Bool)

(declare-fun res!2814309 () Bool)

(assert (=> b!6901423 (=> res!2814309 e!4156186)))

(assert (=> b!6901423 (= res!2814309 (not (isEmpty!38725 (tail!12890 (_1!37035 lt!2466417)))))))

(declare-fun b!6901424 () Bool)

(assert (=> b!6901424 (= e!4156186 (not (= (head!13838 (_1!37035 lt!2466417)) (c!1282141 r2!6280))))))

(declare-fun d!2162038 () Bool)

(assert (=> d!2162038 e!4156185))

(declare-fun c!1282286 () Bool)

(assert (=> d!2162038 (= c!1282286 ((_ is EmptyExpr!16865) r2!6280))))

(assert (=> d!2162038 (= lt!2466541 e!4156183)))

(declare-fun c!1282287 () Bool)

(assert (=> d!2162038 (= c!1282287 (isEmpty!38725 (_1!37035 lt!2466417)))))

(assert (=> d!2162038 (validRegex!8573 r2!6280)))

(assert (=> d!2162038 (= (matchR!9010 r2!6280 (_1!37035 lt!2466417)) lt!2466541)))

(declare-fun b!6901425 () Bool)

(declare-fun res!2814307 () Bool)

(assert (=> b!6901425 (=> (not res!2814307) (not e!4156181))))

(assert (=> b!6901425 (= res!2814307 (isEmpty!38725 (tail!12890 (_1!37035 lt!2466417))))))

(declare-fun b!6901426 () Bool)

(declare-fun res!2814308 () Bool)

(assert (=> b!6901426 (=> (not res!2814308) (not e!4156181))))

(assert (=> b!6901426 (= res!2814308 (not call!627595))))

(declare-fun b!6901427 () Bool)

(assert (=> b!6901427 (= e!4156181 (= (head!13838 (_1!37035 lt!2466417)) (c!1282141 r2!6280)))))

(declare-fun b!6901428 () Bool)

(assert (=> b!6901428 (= e!4156187 (not lt!2466541))))

(declare-fun b!6901429 () Bool)

(assert (=> b!6901429 (= e!4156182 e!4156184)))

(declare-fun res!2814312 () Bool)

(assert (=> b!6901429 (=> (not res!2814312) (not e!4156184))))

(assert (=> b!6901429 (= res!2814312 (not lt!2466541))))

(declare-fun b!6901430 () Bool)

(declare-fun res!2814306 () Bool)

(assert (=> b!6901430 (=> res!2814306 e!4156182)))

(assert (=> b!6901430 (= res!2814306 (not ((_ is ElementMatch!16865) r2!6280)))))

(assert (=> b!6901430 (= e!4156187 e!4156182)))

(declare-fun b!6901431 () Bool)

(assert (=> b!6901431 (= e!4156185 (= lt!2466541 call!627595))))

(assert (= (and d!2162038 c!1282287) b!6901420))

(assert (= (and d!2162038 (not c!1282287)) b!6901421))

(assert (= (and d!2162038 c!1282286) b!6901431))

(assert (= (and d!2162038 (not c!1282286)) b!6901419))

(assert (= (and b!6901419 c!1282288) b!6901428))

(assert (= (and b!6901419 (not c!1282288)) b!6901430))

(assert (= (and b!6901430 (not res!2814306)) b!6901422))

(assert (= (and b!6901422 res!2814305) b!6901426))

(assert (= (and b!6901426 res!2814308) b!6901425))

(assert (= (and b!6901425 res!2814307) b!6901427))

(assert (= (and b!6901422 (not res!2814310)) b!6901429))

(assert (= (and b!6901429 res!2814312) b!6901418))

(assert (= (and b!6901418 (not res!2814311)) b!6901423))

(assert (= (and b!6901423 (not res!2814309)) b!6901424))

(assert (= (or b!6901431 b!6901418 b!6901426) bm!627590))

(declare-fun m!7619638 () Bool)

(assert (=> b!6901421 m!7619638))

(assert (=> b!6901421 m!7619638))

(declare-fun m!7619640 () Bool)

(assert (=> b!6901421 m!7619640))

(declare-fun m!7619642 () Bool)

(assert (=> b!6901421 m!7619642))

(assert (=> b!6901421 m!7619640))

(assert (=> b!6901421 m!7619642))

(declare-fun m!7619644 () Bool)

(assert (=> b!6901421 m!7619644))

(assert (=> d!2162038 m!7619544))

(assert (=> d!2162038 m!7619048))

(declare-fun m!7619646 () Bool)

(assert (=> b!6901420 m!7619646))

(assert (=> b!6901425 m!7619642))

(assert (=> b!6901425 m!7619642))

(declare-fun m!7619648 () Bool)

(assert (=> b!6901425 m!7619648))

(assert (=> b!6901423 m!7619642))

(assert (=> b!6901423 m!7619642))

(assert (=> b!6901423 m!7619648))

(assert (=> bm!627590 m!7619544))

(assert (=> b!6901427 m!7619638))

(assert (=> b!6901424 m!7619638))

(assert (=> b!6900823 d!2162038))

(declare-fun d!2162040 () Bool)

(declare-fun res!2814337 () Bool)

(declare-fun e!4156212 () Bool)

(assert (=> d!2162040 (=> res!2814337 e!4156212)))

(assert (=> d!2162040 (= res!2814337 ((_ is ElementMatch!16865) r3!135))))

(assert (=> d!2162040 (= (validRegex!8573 r3!135) e!4156212)))

(declare-fun b!6901468 () Bool)

(declare-fun e!4156214 () Bool)

(declare-fun e!4156216 () Bool)

(assert (=> b!6901468 (= e!4156214 e!4156216)))

(declare-fun c!1282298 () Bool)

(assert (=> b!6901468 (= c!1282298 ((_ is Union!16865) r3!135))))

(declare-fun b!6901469 () Bool)

(declare-fun e!4156217 () Bool)

(declare-fun call!627605 () Bool)

(assert (=> b!6901469 (= e!4156217 call!627605)))

(declare-fun b!6901470 () Bool)

(declare-fun e!4156215 () Bool)

(declare-fun call!627603 () Bool)

(assert (=> b!6901470 (= e!4156215 call!627603)))

(declare-fun b!6901471 () Bool)

(declare-fun res!2814333 () Bool)

(assert (=> b!6901471 (=> (not res!2814333) (not e!4156217))))

(assert (=> b!6901471 (= res!2814333 call!627603)))

(assert (=> b!6901471 (= e!4156216 e!4156217)))

(declare-fun b!6901472 () Bool)

(declare-fun e!4156213 () Bool)

(declare-fun call!627604 () Bool)

(assert (=> b!6901472 (= e!4156213 call!627604)))

(declare-fun b!6901473 () Bool)

(assert (=> b!6901473 (= e!4156214 e!4156213)))

(declare-fun res!2814334 () Bool)

(assert (=> b!6901473 (= res!2814334 (not (nullable!6706 (reg!17194 r3!135))))))

(assert (=> b!6901473 (=> (not res!2814334) (not e!4156213))))

(declare-fun b!6901474 () Bool)

(declare-fun e!4156211 () Bool)

(assert (=> b!6901474 (= e!4156211 e!4156215)))

(declare-fun res!2814335 () Bool)

(assert (=> b!6901474 (=> (not res!2814335) (not e!4156215))))

(assert (=> b!6901474 (= res!2814335 call!627605)))

(declare-fun bm!627598 () Bool)

(assert (=> bm!627598 (= call!627605 (validRegex!8573 (ite c!1282298 (regTwo!34243 r3!135) (regOne!34242 r3!135))))))

(declare-fun c!1282297 () Bool)

(declare-fun bm!627599 () Bool)

(assert (=> bm!627599 (= call!627604 (validRegex!8573 (ite c!1282297 (reg!17194 r3!135) (ite c!1282298 (regOne!34243 r3!135) (regTwo!34242 r3!135)))))))

(declare-fun b!6901475 () Bool)

(declare-fun res!2814336 () Bool)

(assert (=> b!6901475 (=> res!2814336 e!4156211)))

(assert (=> b!6901475 (= res!2814336 (not ((_ is Concat!25710) r3!135)))))

(assert (=> b!6901475 (= e!4156216 e!4156211)))

(declare-fun b!6901476 () Bool)

(assert (=> b!6901476 (= e!4156212 e!4156214)))

(assert (=> b!6901476 (= c!1282297 ((_ is Star!16865) r3!135))))

(declare-fun bm!627600 () Bool)

(assert (=> bm!627600 (= call!627603 call!627604)))

(assert (= (and d!2162040 (not res!2814337)) b!6901476))

(assert (= (and b!6901476 c!1282297) b!6901473))

(assert (= (and b!6901476 (not c!1282297)) b!6901468))

(assert (= (and b!6901473 res!2814334) b!6901472))

(assert (= (and b!6901468 c!1282298) b!6901471))

(assert (= (and b!6901468 (not c!1282298)) b!6901475))

(assert (= (and b!6901471 res!2814333) b!6901469))

(assert (= (and b!6901475 (not res!2814336)) b!6901474))

(assert (= (and b!6901474 res!2814335) b!6901470))

(assert (= (or b!6901471 b!6901470) bm!627600))

(assert (= (or b!6901469 b!6901474) bm!627598))

(assert (= (or b!6901472 bm!627600) bm!627599))

(declare-fun m!7619680 () Bool)

(assert (=> b!6901473 m!7619680))

(declare-fun m!7619682 () Bool)

(assert (=> bm!627598 m!7619682))

(declare-fun m!7619684 () Bool)

(assert (=> bm!627599 m!7619684))

(assert (=> b!6900817 d!2162040))

(declare-fun d!2162050 () Bool)

(assert (=> d!2162050 (= (Exists!3873 lambda!391783) (choose!51372 lambda!391783))))

(declare-fun bs!1842306 () Bool)

(assert (= bs!1842306 d!2162050))

(declare-fun m!7619690 () Bool)

(assert (=> bs!1842306 m!7619690))

(assert (=> b!6900820 d!2162050))

(declare-fun d!2162052 () Bool)

(assert (=> d!2162052 (= (isDefined!13347 lt!2466434) (not (isEmpty!38727 lt!2466434)))))

(declare-fun bs!1842307 () Bool)

(assert (= bs!1842307 d!2162052))

(declare-fun m!7619692 () Bool)

(assert (=> bs!1842307 m!7619692))

(assert (=> b!6900820 d!2162052))

(assert (=> b!6900820 d!2162028))

(declare-fun b!6901481 () Bool)

(declare-fun res!2814341 () Bool)

(declare-fun e!4156222 () Bool)

(assert (=> b!6901481 (=> (not res!2814341) (not e!4156222))))

(declare-fun lt!2466547 () Option!16644)

(assert (=> b!6901481 (= res!2814341 (matchR!9010 lt!2466416 (_2!37035 (get!23248 lt!2466547))))))

(declare-fun d!2162056 () Bool)

(declare-fun e!4156221 () Bool)

(assert (=> d!2162056 e!4156221))

(declare-fun res!2814344 () Bool)

(assert (=> d!2162056 (=> res!2814344 e!4156221)))

(assert (=> d!2162056 (= res!2814344 e!4156222)))

(declare-fun res!2814343 () Bool)

(assert (=> d!2162056 (=> (not res!2814343) (not e!4156222))))

(assert (=> d!2162056 (= res!2814343 (isDefined!13347 lt!2466547))))

(declare-fun e!4156224 () Option!16644)

(assert (=> d!2162056 (= lt!2466547 e!4156224)))

(declare-fun c!1282300 () Bool)

(declare-fun e!4156220 () Bool)

(assert (=> d!2162056 (= c!1282300 e!4156220)))

(declare-fun res!2814340 () Bool)

(assert (=> d!2162056 (=> (not res!2814340) (not e!4156220))))

(assert (=> d!2162056 (= res!2814340 (matchR!9010 r1!6342 Nil!66498))))

(assert (=> d!2162056 (validRegex!8573 r1!6342)))

(assert (=> d!2162056 (= (findConcatSeparation!3058 r1!6342 lt!2466416 Nil!66498 s!14361 s!14361) lt!2466547)))

(declare-fun b!6901482 () Bool)

(declare-fun e!4156223 () Option!16644)

(assert (=> b!6901482 (= e!4156223 None!16643)))

(declare-fun b!6901483 () Bool)

(assert (=> b!6901483 (= e!4156222 (= (++!14918 (_1!37035 (get!23248 lt!2466547)) (_2!37035 (get!23248 lt!2466547))) s!14361))))

(declare-fun b!6901484 () Bool)

(assert (=> b!6901484 (= e!4156221 (not (isDefined!13347 lt!2466547)))))

(declare-fun b!6901485 () Bool)

(declare-fun res!2814342 () Bool)

(assert (=> b!6901485 (=> (not res!2814342) (not e!4156222))))

(assert (=> b!6901485 (= res!2814342 (matchR!9010 r1!6342 (_1!37035 (get!23248 lt!2466547))))))

(declare-fun b!6901486 () Bool)

(declare-fun lt!2466549 () Unit!160460)

(declare-fun lt!2466548 () Unit!160460)

(assert (=> b!6901486 (= lt!2466549 lt!2466548)))

(assert (=> b!6901486 (= (++!14918 (++!14918 Nil!66498 (Cons!66498 (h!72946 s!14361) Nil!66498)) (t!380365 s!14361)) s!14361)))

(assert (=> b!6901486 (= lt!2466548 (lemmaMoveElementToOtherListKeepsConcatEq!2792 Nil!66498 (h!72946 s!14361) (t!380365 s!14361) s!14361))))

(assert (=> b!6901486 (= e!4156223 (findConcatSeparation!3058 r1!6342 lt!2466416 (++!14918 Nil!66498 (Cons!66498 (h!72946 s!14361) Nil!66498)) (t!380365 s!14361) s!14361))))

(declare-fun b!6901487 () Bool)

(assert (=> b!6901487 (= e!4156224 e!4156223)))

(declare-fun c!1282301 () Bool)

(assert (=> b!6901487 (= c!1282301 ((_ is Nil!66498) s!14361))))

(declare-fun b!6901488 () Bool)

(assert (=> b!6901488 (= e!4156220 (matchR!9010 lt!2466416 s!14361))))

(declare-fun b!6901489 () Bool)

(assert (=> b!6901489 (= e!4156224 (Some!16643 (tuple2!67465 Nil!66498 s!14361)))))

(assert (= (and d!2162056 res!2814340) b!6901488))

(assert (= (and d!2162056 c!1282300) b!6901489))

(assert (= (and d!2162056 (not c!1282300)) b!6901487))

(assert (= (and b!6901487 c!1282301) b!6901482))

(assert (= (and b!6901487 (not c!1282301)) b!6901486))

(assert (= (and d!2162056 res!2814343) b!6901485))

(assert (= (and b!6901485 res!2814342) b!6901481))

(assert (= (and b!6901481 res!2814341) b!6901483))

(assert (= (and d!2162056 (not res!2814344)) b!6901484))

(declare-fun m!7619704 () Bool)

(assert (=> b!6901484 m!7619704))

(assert (=> d!2162056 m!7619704))

(assert (=> d!2162056 m!7619588))

(assert (=> d!2162056 m!7618956))

(declare-fun m!7619706 () Bool)

(assert (=> b!6901485 m!7619706))

(declare-fun m!7619708 () Bool)

(assert (=> b!6901485 m!7619708))

(assert (=> b!6901483 m!7619706))

(declare-fun m!7619712 () Bool)

(assert (=> b!6901483 m!7619712))

(assert (=> b!6901481 m!7619706))

(declare-fun m!7619718 () Bool)

(assert (=> b!6901481 m!7619718))

(assert (=> b!6901486 m!7619428))

(assert (=> b!6901486 m!7619428))

(assert (=> b!6901486 m!7619432))

(assert (=> b!6901486 m!7619434))

(assert (=> b!6901486 m!7619428))

(declare-fun m!7619726 () Bool)

(assert (=> b!6901486 m!7619726))

(declare-fun m!7619728 () Bool)

(assert (=> b!6901488 m!7619728))

(assert (=> b!6900820 d!2162056))

(declare-fun d!2162062 () Bool)

(declare-fun res!2814359 () Bool)

(declare-fun e!4156235 () Bool)

(assert (=> d!2162062 (=> res!2814359 e!4156235)))

(assert (=> d!2162062 (= res!2814359 ((_ is ElementMatch!16865) lt!2466416))))

(assert (=> d!2162062 (= (validRegex!8573 lt!2466416) e!4156235)))

(declare-fun b!6901508 () Bool)

(declare-fun e!4156237 () Bool)

(declare-fun e!4156239 () Bool)

(assert (=> b!6901508 (= e!4156237 e!4156239)))

(declare-fun c!1282307 () Bool)

(assert (=> b!6901508 (= c!1282307 ((_ is Union!16865) lt!2466416))))

(declare-fun b!6901509 () Bool)

(declare-fun e!4156240 () Bool)

(declare-fun call!627609 () Bool)

(assert (=> b!6901509 (= e!4156240 call!627609)))

(declare-fun b!6901510 () Bool)

(declare-fun e!4156238 () Bool)

(declare-fun call!627607 () Bool)

(assert (=> b!6901510 (= e!4156238 call!627607)))

(declare-fun b!6901511 () Bool)

(declare-fun res!2814353 () Bool)

(assert (=> b!6901511 (=> (not res!2814353) (not e!4156240))))

(assert (=> b!6901511 (= res!2814353 call!627607)))

(assert (=> b!6901511 (= e!4156239 e!4156240)))

(declare-fun b!6901512 () Bool)

(declare-fun e!4156236 () Bool)

(declare-fun call!627608 () Bool)

(assert (=> b!6901512 (= e!4156236 call!627608)))

(declare-fun b!6901513 () Bool)

(assert (=> b!6901513 (= e!4156237 e!4156236)))

(declare-fun res!2814356 () Bool)

(assert (=> b!6901513 (= res!2814356 (not (nullable!6706 (reg!17194 lt!2466416))))))

(assert (=> b!6901513 (=> (not res!2814356) (not e!4156236))))

(declare-fun b!6901514 () Bool)

(declare-fun e!4156234 () Bool)

(assert (=> b!6901514 (= e!4156234 e!4156238)))

(declare-fun res!2814357 () Bool)

(assert (=> b!6901514 (=> (not res!2814357) (not e!4156238))))

(assert (=> b!6901514 (= res!2814357 call!627609)))

(declare-fun bm!627602 () Bool)

(assert (=> bm!627602 (= call!627609 (validRegex!8573 (ite c!1282307 (regTwo!34243 lt!2466416) (regOne!34242 lt!2466416))))))

(declare-fun bm!627603 () Bool)

(declare-fun c!1282306 () Bool)

(assert (=> bm!627603 (= call!627608 (validRegex!8573 (ite c!1282306 (reg!17194 lt!2466416) (ite c!1282307 (regOne!34243 lt!2466416) (regTwo!34242 lt!2466416)))))))

(declare-fun b!6901515 () Bool)

(declare-fun res!2814358 () Bool)

(assert (=> b!6901515 (=> res!2814358 e!4156234)))

(assert (=> b!6901515 (= res!2814358 (not ((_ is Concat!25710) lt!2466416)))))

(assert (=> b!6901515 (= e!4156239 e!4156234)))

(declare-fun b!6901516 () Bool)

(assert (=> b!6901516 (= e!4156235 e!4156237)))

(assert (=> b!6901516 (= c!1282306 ((_ is Star!16865) lt!2466416))))

(declare-fun bm!627604 () Bool)

(assert (=> bm!627604 (= call!627607 call!627608)))

(assert (= (and d!2162062 (not res!2814359)) b!6901516))

(assert (= (and b!6901516 c!1282306) b!6901513))

(assert (= (and b!6901516 (not c!1282306)) b!6901508))

(assert (= (and b!6901513 res!2814356) b!6901512))

(assert (= (and b!6901508 c!1282307) b!6901511))

(assert (= (and b!6901508 (not c!1282307)) b!6901515))

(assert (= (and b!6901511 res!2814353) b!6901509))

(assert (= (and b!6901515 (not res!2814358)) b!6901514))

(assert (= (and b!6901514 res!2814357) b!6901510))

(assert (= (or b!6901511 b!6901510) bm!627604))

(assert (= (or b!6901509 b!6901514) bm!627602))

(assert (= (or b!6901512 bm!627604) bm!627603))

(declare-fun m!7619740 () Bool)

(assert (=> b!6901513 m!7619740))

(declare-fun m!7619742 () Bool)

(assert (=> bm!627602 m!7619742))

(declare-fun m!7619744 () Bool)

(assert (=> bm!627603 m!7619744))

(assert (=> b!6900820 d!2162062))

(declare-fun d!2162066 () Bool)

(declare-fun res!2814364 () Bool)

(declare-fun e!4156242 () Bool)

(assert (=> d!2162066 (=> res!2814364 e!4156242)))

(assert (=> d!2162066 (= res!2814364 ((_ is ElementMatch!16865) r2!6280))))

(assert (=> d!2162066 (= (validRegex!8573 r2!6280) e!4156242)))

(declare-fun b!6901517 () Bool)

(declare-fun e!4156244 () Bool)

(declare-fun e!4156246 () Bool)

(assert (=> b!6901517 (= e!4156244 e!4156246)))

(declare-fun c!1282309 () Bool)

(assert (=> b!6901517 (= c!1282309 ((_ is Union!16865) r2!6280))))

(declare-fun b!6901518 () Bool)

(declare-fun e!4156247 () Bool)

(declare-fun call!627612 () Bool)

(assert (=> b!6901518 (= e!4156247 call!627612)))

(declare-fun b!6901519 () Bool)

(declare-fun e!4156245 () Bool)

(declare-fun call!627610 () Bool)

(assert (=> b!6901519 (= e!4156245 call!627610)))

(declare-fun b!6901520 () Bool)

(declare-fun res!2814360 () Bool)

(assert (=> b!6901520 (=> (not res!2814360) (not e!4156247))))

(assert (=> b!6901520 (= res!2814360 call!627610)))

(assert (=> b!6901520 (= e!4156246 e!4156247)))

(declare-fun b!6901521 () Bool)

(declare-fun e!4156243 () Bool)

(declare-fun call!627611 () Bool)

(assert (=> b!6901521 (= e!4156243 call!627611)))

(declare-fun b!6901522 () Bool)

(assert (=> b!6901522 (= e!4156244 e!4156243)))

(declare-fun res!2814361 () Bool)

(assert (=> b!6901522 (= res!2814361 (not (nullable!6706 (reg!17194 r2!6280))))))

(assert (=> b!6901522 (=> (not res!2814361) (not e!4156243))))

(declare-fun b!6901523 () Bool)

(declare-fun e!4156241 () Bool)

(assert (=> b!6901523 (= e!4156241 e!4156245)))

(declare-fun res!2814362 () Bool)

(assert (=> b!6901523 (=> (not res!2814362) (not e!4156245))))

(assert (=> b!6901523 (= res!2814362 call!627612)))

(declare-fun bm!627605 () Bool)

(assert (=> bm!627605 (= call!627612 (validRegex!8573 (ite c!1282309 (regTwo!34243 r2!6280) (regOne!34242 r2!6280))))))

(declare-fun c!1282308 () Bool)

(declare-fun bm!627606 () Bool)

(assert (=> bm!627606 (= call!627611 (validRegex!8573 (ite c!1282308 (reg!17194 r2!6280) (ite c!1282309 (regOne!34243 r2!6280) (regTwo!34242 r2!6280)))))))

(declare-fun b!6901524 () Bool)

(declare-fun res!2814363 () Bool)

(assert (=> b!6901524 (=> res!2814363 e!4156241)))

(assert (=> b!6901524 (= res!2814363 (not ((_ is Concat!25710) r2!6280)))))

(assert (=> b!6901524 (= e!4156246 e!4156241)))

(declare-fun b!6901525 () Bool)

(assert (=> b!6901525 (= e!4156242 e!4156244)))

(assert (=> b!6901525 (= c!1282308 ((_ is Star!16865) r2!6280))))

(declare-fun bm!627607 () Bool)

(assert (=> bm!627607 (= call!627610 call!627611)))

(assert (= (and d!2162066 (not res!2814364)) b!6901525))

(assert (= (and b!6901525 c!1282308) b!6901522))

(assert (= (and b!6901525 (not c!1282308)) b!6901517))

(assert (= (and b!6901522 res!2814361) b!6901521))

(assert (= (and b!6901517 c!1282309) b!6901520))

(assert (= (and b!6901517 (not c!1282309)) b!6901524))

(assert (= (and b!6901520 res!2814360) b!6901518))

(assert (= (and b!6901524 (not res!2814363)) b!6901523))

(assert (= (and b!6901523 res!2814362) b!6901519))

(assert (= (or b!6901520 b!6901519) bm!627607))

(assert (= (or b!6901518 b!6901523) bm!627605))

(assert (= (or b!6901521 bm!627607) bm!627606))

(declare-fun m!7619748 () Bool)

(assert (=> b!6901522 m!7619748))

(declare-fun m!7619750 () Bool)

(assert (=> bm!627605 m!7619750))

(declare-fun m!7619752 () Bool)

(assert (=> bm!627606 m!7619752))

(assert (=> b!6900825 d!2162066))

(declare-fun d!2162070 () Bool)

(declare-fun res!2814369 () Bool)

(declare-fun e!4156249 () Bool)

(assert (=> d!2162070 (=> res!2814369 e!4156249)))

(assert (=> d!2162070 (= res!2814369 ((_ is ElementMatch!16865) r1!6342))))

(assert (=> d!2162070 (= (validRegex!8573 r1!6342) e!4156249)))

(declare-fun b!6901526 () Bool)

(declare-fun e!4156251 () Bool)

(declare-fun e!4156253 () Bool)

(assert (=> b!6901526 (= e!4156251 e!4156253)))

(declare-fun c!1282311 () Bool)

(assert (=> b!6901526 (= c!1282311 ((_ is Union!16865) r1!6342))))

(declare-fun b!6901527 () Bool)

(declare-fun e!4156254 () Bool)

(declare-fun call!627615 () Bool)

(assert (=> b!6901527 (= e!4156254 call!627615)))

(declare-fun b!6901528 () Bool)

(declare-fun e!4156252 () Bool)

(declare-fun call!627613 () Bool)

(assert (=> b!6901528 (= e!4156252 call!627613)))

(declare-fun b!6901529 () Bool)

(declare-fun res!2814365 () Bool)

(assert (=> b!6901529 (=> (not res!2814365) (not e!4156254))))

(assert (=> b!6901529 (= res!2814365 call!627613)))

(assert (=> b!6901529 (= e!4156253 e!4156254)))

(declare-fun b!6901530 () Bool)

(declare-fun e!4156250 () Bool)

(declare-fun call!627614 () Bool)

(assert (=> b!6901530 (= e!4156250 call!627614)))

(declare-fun b!6901531 () Bool)

(assert (=> b!6901531 (= e!4156251 e!4156250)))

(declare-fun res!2814366 () Bool)

(assert (=> b!6901531 (= res!2814366 (not (nullable!6706 (reg!17194 r1!6342))))))

(assert (=> b!6901531 (=> (not res!2814366) (not e!4156250))))

(declare-fun b!6901532 () Bool)

(declare-fun e!4156248 () Bool)

(assert (=> b!6901532 (= e!4156248 e!4156252)))

(declare-fun res!2814367 () Bool)

(assert (=> b!6901532 (=> (not res!2814367) (not e!4156252))))

(assert (=> b!6901532 (= res!2814367 call!627615)))

(declare-fun bm!627608 () Bool)

(assert (=> bm!627608 (= call!627615 (validRegex!8573 (ite c!1282311 (regTwo!34243 r1!6342) (regOne!34242 r1!6342))))))

(declare-fun c!1282310 () Bool)

(declare-fun bm!627609 () Bool)

(assert (=> bm!627609 (= call!627614 (validRegex!8573 (ite c!1282310 (reg!17194 r1!6342) (ite c!1282311 (regOne!34243 r1!6342) (regTwo!34242 r1!6342)))))))

(declare-fun b!6901533 () Bool)

(declare-fun res!2814368 () Bool)

(assert (=> b!6901533 (=> res!2814368 e!4156248)))

(assert (=> b!6901533 (= res!2814368 (not ((_ is Concat!25710) r1!6342)))))

(assert (=> b!6901533 (= e!4156253 e!4156248)))

(declare-fun b!6901534 () Bool)

(assert (=> b!6901534 (= e!4156249 e!4156251)))

(assert (=> b!6901534 (= c!1282310 ((_ is Star!16865) r1!6342))))

(declare-fun bm!627610 () Bool)

(assert (=> bm!627610 (= call!627613 call!627614)))

(assert (= (and d!2162070 (not res!2814369)) b!6901534))

(assert (= (and b!6901534 c!1282310) b!6901531))

(assert (= (and b!6901534 (not c!1282310)) b!6901526))

(assert (= (and b!6901531 res!2814366) b!6901530))

(assert (= (and b!6901526 c!1282311) b!6901529))

(assert (= (and b!6901526 (not c!1282311)) b!6901533))

(assert (= (and b!6901529 res!2814365) b!6901527))

(assert (= (and b!6901533 (not res!2814368)) b!6901532))

(assert (= (and b!6901532 res!2814367) b!6901528))

(assert (= (or b!6901529 b!6901528) bm!627610))

(assert (= (or b!6901527 b!6901532) bm!627608))

(assert (= (or b!6901530 bm!627610) bm!627609))

(declare-fun m!7619754 () Bool)

(assert (=> b!6901531 m!7619754))

(declare-fun m!7619756 () Bool)

(assert (=> bm!627608 m!7619756))

(declare-fun m!7619758 () Bool)

(assert (=> bm!627609 m!7619758))

(assert (=> start!664682 d!2162070))

(declare-fun bs!1842322 () Bool)

(declare-fun b!6901536 () Bool)

(assert (= bs!1842322 (and b!6901536 b!6900823)))

(declare-fun lambda!391853 () Int)

(assert (=> bs!1842322 (not (= lambda!391853 lambda!391777))))

(declare-fun bs!1842324 () Bool)

(assert (= bs!1842324 (and b!6901536 d!2161942)))

(assert (=> bs!1842324 (not (= lambda!391853 lambda!391823))))

(declare-fun bs!1842326 () Bool)

(assert (= bs!1842326 (and b!6901536 b!6900813)))

(assert (=> bs!1842326 (not (= lambda!391853 lambda!391784))))

(declare-fun bs!1842327 () Bool)

(assert (= bs!1842327 (and b!6901536 b!6901316)))

(assert (=> bs!1842327 (= (and (= s!14361 lt!2466407) (= (reg!17194 lt!2466428) (reg!17194 lt!2466409)) (= lt!2466428 lt!2466409)) (= lambda!391853 lambda!391830))))

(declare-fun bs!1842330 () Bool)

(assert (= bs!1842330 (and b!6901536 b!6901041)))

(assert (=> bs!1842330 (not (= lambda!391853 lambda!391804))))

(declare-fun bs!1842331 () Bool)

(assert (= bs!1842331 (and b!6901536 b!6901385)))

(assert (=> bs!1842331 (not (= lambda!391853 lambda!391848))))

(declare-fun bs!1842333 () Bool)

(assert (= bs!1842333 (and b!6901536 d!2161996)))

(assert (=> bs!1842333 (not (= lambda!391853 lambda!391840))))

(declare-fun bs!1842334 () Bool)

(assert (= bs!1842334 (and b!6901536 d!2161888)))

(assert (=> bs!1842334 (not (= lambda!391853 lambda!391802))))

(declare-fun bs!1842335 () Bool)

(assert (= bs!1842335 (and b!6901536 d!2161864)))

(assert (=> bs!1842335 (not (= lambda!391853 lambda!391787))))

(assert (=> bs!1842322 (not (= lambda!391853 lambda!391782))))

(declare-fun bs!1842337 () Bool)

(assert (= bs!1842337 (and b!6901536 d!2161916)))

(assert (=> bs!1842337 (not (= lambda!391853 lambda!391818))))

(declare-fun bs!1842338 () Bool)

(assert (= bs!1842338 (and b!6901536 b!6901324)))

(assert (=> bs!1842338 (not (= lambda!391853 lambda!391832))))

(assert (=> bs!1842322 (not (= lambda!391853 lambda!391781))))

(assert (=> bs!1842324 (not (= lambda!391853 lambda!391825))))

(declare-fun bs!1842340 () Bool)

(assert (= bs!1842340 (and b!6901536 b!6901003)))

(assert (=> bs!1842340 (not (= lambda!391853 lambda!391801))))

(declare-fun bs!1842342 () Bool)

(assert (= bs!1842342 (and b!6901536 b!6901033)))

(assert (=> bs!1842342 (= (and (= s!14361 (_2!37035 lt!2466430)) (= (reg!17194 lt!2466428) (reg!17194 lt!2466416)) (= lt!2466428 lt!2466416)) (= lambda!391853 lambda!391803))))

(declare-fun bs!1842344 () Bool)

(assert (= bs!1842344 (and b!6901536 d!2161990)))

(assert (=> bs!1842344 (not (= lambda!391853 lambda!391835))))

(declare-fun bs!1842346 () Bool)

(assert (= bs!1842346 (and b!6901536 d!2162028)))

(assert (=> bs!1842346 (not (= lambda!391853 lambda!391850))))

(declare-fun bs!1842348 () Bool)

(assert (= bs!1842348 (and b!6901536 b!6901366)))

(assert (=> bs!1842348 (not (= lambda!391853 lambda!391844))))

(declare-fun bs!1842349 () Bool)

(assert (= bs!1842349 (and b!6901536 b!6901377)))

(assert (=> bs!1842349 (= (and (= s!14361 (_1!37035 lt!2466430)) (= (reg!17194 lt!2466428) (reg!17194 r1!6342)) (= lt!2466428 r1!6342)) (= lambda!391853 lambda!391847))))

(assert (=> bs!1842337 (not (= lambda!391853 lambda!391819))))

(declare-fun bs!1842350 () Bool)

(assert (= bs!1842350 (and b!6901536 b!6900995)))

(assert (=> bs!1842350 (= (and (= s!14361 (_2!37035 lt!2466417)) (= (reg!17194 lt!2466428) (reg!17194 r3!135)) (= lt!2466428 r3!135)) (= lambda!391853 lambda!391799))))

(assert (=> bs!1842344 (not (= lambda!391853 lambda!391837))))

(assert (=> bs!1842322 (not (= lambda!391853 lambda!391776))))

(assert (=> bs!1842322 (not (= lambda!391853 lambda!391780))))

(declare-fun bs!1842352 () Bool)

(assert (= bs!1842352 (and b!6901536 d!2161956)))

(assert (=> bs!1842352 (not (= lambda!391853 lambda!391828))))

(declare-fun bs!1842354 () Bool)

(assert (= bs!1842354 (and b!6901536 b!6901358)))

(assert (=> bs!1842354 (= (and (= s!14361 (_1!37035 lt!2466417)) (= (reg!17194 lt!2466428) (reg!17194 r2!6280)) (= lt!2466428 r2!6280)) (= lambda!391853 lambda!391842))))

(assert (=> bs!1842322 (not (= lambda!391853 lambda!391779))))

(declare-fun bs!1842355 () Bool)

(assert (= bs!1842355 (and b!6901536 b!6900820)))

(assert (=> bs!1842355 (not (= lambda!391853 lambda!391783))))

(assert (=> bs!1842322 (not (= lambda!391853 lambda!391778))))

(assert (=> bs!1842333 (not (= lambda!391853 lambda!391839))))

(assert (=> b!6901536 true))

(assert (=> b!6901536 true))

(declare-fun bs!1842357 () Bool)

(declare-fun b!6901544 () Bool)

(assert (= bs!1842357 (and b!6901544 b!6900823)))

(declare-fun lambda!391854 () Int)

(assert (=> bs!1842357 (= (and (= (regOne!34242 lt!2466428) r1!6342) (= (regTwo!34242 lt!2466428) lt!2466416)) (= lambda!391854 lambda!391777))))

(declare-fun bs!1842358 () Bool)

(assert (= bs!1842358 (and b!6901544 d!2161942)))

(assert (=> bs!1842358 (not (= lambda!391854 lambda!391823))))

(declare-fun bs!1842359 () Bool)

(assert (= bs!1842359 (and b!6901544 b!6900813)))

(assert (=> bs!1842359 (= (and (= (regOne!34242 lt!2466428) r1!6342) (= (regTwo!34242 lt!2466428) lt!2466416)) (= lambda!391854 lambda!391784))))

(declare-fun bs!1842360 () Bool)

(assert (= bs!1842360 (and b!6901544 b!6901316)))

(assert (=> bs!1842360 (not (= lambda!391854 lambda!391830))))

(declare-fun bs!1842361 () Bool)

(assert (= bs!1842361 (and b!6901544 b!6901041)))

(assert (=> bs!1842361 (= (and (= s!14361 (_2!37035 lt!2466430)) (= (regOne!34242 lt!2466428) (regOne!34242 lt!2466416)) (= (regTwo!34242 lt!2466428) (regTwo!34242 lt!2466416))) (= lambda!391854 lambda!391804))))

(declare-fun bs!1842362 () Bool)

(assert (= bs!1842362 (and b!6901544 b!6901385)))

(assert (=> bs!1842362 (= (and (= s!14361 (_1!37035 lt!2466430)) (= (regOne!34242 lt!2466428) (regOne!34242 r1!6342)) (= (regTwo!34242 lt!2466428) (regTwo!34242 r1!6342))) (= lambda!391854 lambda!391848))))

(declare-fun bs!1842364 () Bool)

(assert (= bs!1842364 (and b!6901544 d!2161996)))

(assert (=> bs!1842364 (= (and (= s!14361 lt!2466407) (= (regOne!34242 lt!2466428) r1!6342) (= (regTwo!34242 lt!2466428) r2!6280)) (= lambda!391854 lambda!391840))))

(declare-fun bs!1842365 () Bool)

(assert (= bs!1842365 (and b!6901544 d!2161888)))

(assert (=> bs!1842365 (not (= lambda!391854 lambda!391802))))

(declare-fun bs!1842366 () Bool)

(assert (= bs!1842366 (and b!6901544 b!6901536)))

(assert (=> bs!1842366 (not (= lambda!391854 lambda!391853))))

(declare-fun bs!1842367 () Bool)

(assert (= bs!1842367 (and b!6901544 d!2161864)))

(assert (=> bs!1842367 (not (= lambda!391854 lambda!391787))))

(assert (=> bs!1842357 (not (= lambda!391854 lambda!391782))))

(declare-fun bs!1842368 () Bool)

(assert (= bs!1842368 (and b!6901544 d!2161916)))

(assert (=> bs!1842368 (not (= lambda!391854 lambda!391818))))

(declare-fun bs!1842369 () Bool)

(assert (= bs!1842369 (and b!6901544 b!6901324)))

(assert (=> bs!1842369 (= (and (= s!14361 lt!2466407) (= (regOne!34242 lt!2466428) (regOne!34242 lt!2466409)) (= (regTwo!34242 lt!2466428) (regTwo!34242 lt!2466409))) (= lambda!391854 lambda!391832))))

(assert (=> bs!1842357 (= (and (= s!14361 lt!2466407) (= (regOne!34242 lt!2466428) r1!6342) (= (regTwo!34242 lt!2466428) r2!6280)) (= lambda!391854 lambda!391781))))

(assert (=> bs!1842358 (= (and (= (regOne!34242 lt!2466428) r1!6342) (= (regTwo!34242 lt!2466428) lt!2466416)) (= lambda!391854 lambda!391825))))

(declare-fun bs!1842370 () Bool)

(assert (= bs!1842370 (and b!6901544 b!6901003)))

(assert (=> bs!1842370 (= (and (= s!14361 (_2!37035 lt!2466417)) (= (regOne!34242 lt!2466428) (regOne!34242 r3!135)) (= (regTwo!34242 lt!2466428) (regTwo!34242 r3!135))) (= lambda!391854 lambda!391801))))

(declare-fun bs!1842371 () Bool)

(assert (= bs!1842371 (and b!6901544 b!6901033)))

(assert (=> bs!1842371 (not (= lambda!391854 lambda!391803))))

(declare-fun bs!1842372 () Bool)

(assert (= bs!1842372 (and b!6901544 d!2161990)))

(assert (=> bs!1842372 (not (= lambda!391854 lambda!391835))))

(declare-fun bs!1842373 () Bool)

(assert (= bs!1842373 (and b!6901544 d!2162028)))

(assert (=> bs!1842373 (not (= lambda!391854 lambda!391850))))

(declare-fun bs!1842374 () Bool)

(assert (= bs!1842374 (and b!6901544 b!6901366)))

(assert (=> bs!1842374 (= (and (= s!14361 (_1!37035 lt!2466417)) (= (regOne!34242 lt!2466428) (regOne!34242 r2!6280)) (= (regTwo!34242 lt!2466428) (regTwo!34242 r2!6280))) (= lambda!391854 lambda!391844))))

(declare-fun bs!1842375 () Bool)

(assert (= bs!1842375 (and b!6901544 b!6901377)))

(assert (=> bs!1842375 (not (= lambda!391854 lambda!391847))))

(assert (=> bs!1842368 (= (and (= (regOne!34242 lt!2466428) lt!2466409) (= (regTwo!34242 lt!2466428) r3!135)) (= lambda!391854 lambda!391819))))

(declare-fun bs!1842376 () Bool)

(assert (= bs!1842376 (and b!6901544 b!6900995)))

(assert (=> bs!1842376 (not (= lambda!391854 lambda!391799))))

(assert (=> bs!1842372 (= (and (= s!14361 (_2!37035 lt!2466430)) (= (regOne!34242 lt!2466428) r2!6280) (= (regTwo!34242 lt!2466428) r3!135)) (= lambda!391854 lambda!391837))))

(assert (=> bs!1842357 (not (= lambda!391854 lambda!391776))))

(assert (=> bs!1842357 (not (= lambda!391854 lambda!391780))))

(declare-fun bs!1842377 () Bool)

(assert (= bs!1842377 (and b!6901544 d!2161956)))

(assert (=> bs!1842377 (not (= lambda!391854 lambda!391828))))

(declare-fun bs!1842378 () Bool)

(assert (= bs!1842378 (and b!6901544 b!6901358)))

(assert (=> bs!1842378 (not (= lambda!391854 lambda!391842))))

(assert (=> bs!1842357 (= (and (= s!14361 (_2!37035 lt!2466430)) (= (regOne!34242 lt!2466428) r2!6280) (= (regTwo!34242 lt!2466428) r3!135)) (= lambda!391854 lambda!391779))))

(declare-fun bs!1842379 () Bool)

(assert (= bs!1842379 (and b!6901544 b!6900820)))

(assert (=> bs!1842379 (not (= lambda!391854 lambda!391783))))

(assert (=> bs!1842357 (not (= lambda!391854 lambda!391778))))

(assert (=> bs!1842364 (not (= lambda!391854 lambda!391839))))

(assert (=> b!6901544 true))

(assert (=> b!6901544 true))

(declare-fun b!6901535 () Bool)

(declare-fun c!1282314 () Bool)

(assert (=> b!6901535 (= c!1282314 ((_ is ElementMatch!16865) lt!2466428))))

(declare-fun e!4156261 () Bool)

(declare-fun e!4156258 () Bool)

(assert (=> b!6901535 (= e!4156261 e!4156258)))

(declare-fun e!4156257 () Bool)

(declare-fun call!627616 () Bool)

(assert (=> b!6901536 (= e!4156257 call!627616)))

(declare-fun b!6901537 () Bool)

(declare-fun e!4156256 () Bool)

(declare-fun e!4156255 () Bool)

(assert (=> b!6901537 (= e!4156256 e!4156255)))

(declare-fun c!1282312 () Bool)

(assert (=> b!6901537 (= c!1282312 ((_ is Star!16865) lt!2466428))))

(declare-fun b!6901538 () Bool)

(declare-fun res!2814370 () Bool)

(assert (=> b!6901538 (=> res!2814370 e!4156257)))

(declare-fun call!627617 () Bool)

(assert (=> b!6901538 (= res!2814370 call!627617)))

(assert (=> b!6901538 (= e!4156255 e!4156257)))

(declare-fun b!6901539 () Bool)

(declare-fun e!4156260 () Bool)

(assert (=> b!6901539 (= e!4156256 e!4156260)))

(declare-fun res!2814372 () Bool)

(assert (=> b!6901539 (= res!2814372 (matchRSpec!3928 (regOne!34243 lt!2466428) s!14361))))

(assert (=> b!6901539 (=> res!2814372 e!4156260)))

(declare-fun b!6901541 () Bool)

(assert (=> b!6901541 (= e!4156258 (= s!14361 (Cons!66498 (c!1282141 lt!2466428) Nil!66498)))))

(declare-fun bm!627611 () Bool)

(assert (=> bm!627611 (= call!627616 (Exists!3873 (ite c!1282312 lambda!391853 lambda!391854)))))

(declare-fun b!6901542 () Bool)

(declare-fun e!4156259 () Bool)

(assert (=> b!6901542 (= e!4156259 call!627617)))

(declare-fun bm!627612 () Bool)

(assert (=> bm!627612 (= call!627617 (isEmpty!38725 s!14361))))

(declare-fun b!6901543 () Bool)

(assert (=> b!6901543 (= e!4156259 e!4156261)))

(declare-fun res!2814371 () Bool)

(assert (=> b!6901543 (= res!2814371 (not ((_ is EmptyLang!16865) lt!2466428)))))

(assert (=> b!6901543 (=> (not res!2814371) (not e!4156261))))

(assert (=> b!6901544 (= e!4156255 call!627616)))

(declare-fun b!6901545 () Bool)

(assert (=> b!6901545 (= e!4156260 (matchRSpec!3928 (regTwo!34243 lt!2466428) s!14361))))

(declare-fun d!2162072 () Bool)

(declare-fun c!1282313 () Bool)

(assert (=> d!2162072 (= c!1282313 ((_ is EmptyExpr!16865) lt!2466428))))

(assert (=> d!2162072 (= (matchRSpec!3928 lt!2466428 s!14361) e!4156259)))

(declare-fun b!6901540 () Bool)

(declare-fun c!1282315 () Bool)

(assert (=> b!6901540 (= c!1282315 ((_ is Union!16865) lt!2466428))))

(assert (=> b!6901540 (= e!4156258 e!4156256)))

(assert (= (and d!2162072 c!1282313) b!6901542))

(assert (= (and d!2162072 (not c!1282313)) b!6901543))

(assert (= (and b!6901543 res!2814371) b!6901535))

(assert (= (and b!6901535 c!1282314) b!6901541))

(assert (= (and b!6901535 (not c!1282314)) b!6901540))

(assert (= (and b!6901540 c!1282315) b!6901539))

(assert (= (and b!6901540 (not c!1282315)) b!6901537))

(assert (= (and b!6901539 (not res!2814372)) b!6901545))

(assert (= (and b!6901537 c!1282312) b!6901538))

(assert (= (and b!6901537 (not c!1282312)) b!6901544))

(assert (= (and b!6901538 (not res!2814370)) b!6901536))

(assert (= (or b!6901536 b!6901544) bm!627611))

(assert (= (or b!6901542 b!6901538) bm!627612))

(declare-fun m!7619794 () Bool)

(assert (=> b!6901539 m!7619794))

(declare-fun m!7619796 () Bool)

(assert (=> bm!627611 m!7619796))

(declare-fun m!7619798 () Bool)

(assert (=> bm!627612 m!7619798))

(declare-fun m!7619800 () Bool)

(assert (=> b!6901545 m!7619800))

(assert (=> b!6900829 d!2162072))

(declare-fun b!6901630 () Bool)

(declare-fun e!4156290 () Bool)

(declare-fun e!4156292 () Bool)

(assert (=> b!6901630 (= e!4156290 e!4156292)))

(declare-fun res!2814389 () Bool)

(assert (=> b!6901630 (=> res!2814389 e!4156292)))

(declare-fun call!627619 () Bool)

(assert (=> b!6901630 (= res!2814389 call!627619)))

(declare-fun b!6901631 () Bool)

(declare-fun e!4156291 () Bool)

(declare-fun e!4156293 () Bool)

(assert (=> b!6901631 (= e!4156291 e!4156293)))

(declare-fun c!1282322 () Bool)

(assert (=> b!6901631 (= c!1282322 ((_ is EmptyLang!16865) lt!2466428))))

(declare-fun b!6901632 () Bool)

(declare-fun e!4156289 () Bool)

(assert (=> b!6901632 (= e!4156289 (nullable!6706 lt!2466428))))

(declare-fun b!6901633 () Bool)

(assert (=> b!6901633 (= e!4156289 (matchR!9010 (derivativeStep!5385 lt!2466428 (head!13838 s!14361)) (tail!12890 s!14361)))))

(declare-fun b!6901634 () Bool)

(declare-fun res!2814388 () Bool)

(declare-fun e!4156288 () Bool)

(assert (=> b!6901634 (=> res!2814388 e!4156288)))

(declare-fun e!4156287 () Bool)

(assert (=> b!6901634 (= res!2814388 e!4156287)))

(declare-fun res!2814383 () Bool)

(assert (=> b!6901634 (=> (not res!2814383) (not e!4156287))))

(declare-fun lt!2466556 () Bool)

(assert (=> b!6901634 (= res!2814383 lt!2466556)))

(declare-fun bm!627614 () Bool)

(assert (=> bm!627614 (= call!627619 (isEmpty!38725 s!14361))))

(declare-fun b!6901635 () Bool)

(declare-fun res!2814387 () Bool)

(assert (=> b!6901635 (=> res!2814387 e!4156292)))

(assert (=> b!6901635 (= res!2814387 (not (isEmpty!38725 (tail!12890 s!14361))))))

(declare-fun b!6901636 () Bool)

(assert (=> b!6901636 (= e!4156292 (not (= (head!13838 s!14361) (c!1282141 lt!2466428))))))

(declare-fun d!2162086 () Bool)

(assert (=> d!2162086 e!4156291))

(declare-fun c!1282320 () Bool)

(assert (=> d!2162086 (= c!1282320 ((_ is EmptyExpr!16865) lt!2466428))))

(assert (=> d!2162086 (= lt!2466556 e!4156289)))

(declare-fun c!1282321 () Bool)

(assert (=> d!2162086 (= c!1282321 (isEmpty!38725 s!14361))))

(assert (=> d!2162086 (validRegex!8573 lt!2466428)))

(assert (=> d!2162086 (= (matchR!9010 lt!2466428 s!14361) lt!2466556)))

(declare-fun b!6901637 () Bool)

(declare-fun res!2814385 () Bool)

(assert (=> b!6901637 (=> (not res!2814385) (not e!4156287))))

(assert (=> b!6901637 (= res!2814385 (isEmpty!38725 (tail!12890 s!14361)))))

(declare-fun b!6901638 () Bool)

(declare-fun res!2814386 () Bool)

(assert (=> b!6901638 (=> (not res!2814386) (not e!4156287))))

(assert (=> b!6901638 (= res!2814386 (not call!627619))))

(declare-fun b!6901639 () Bool)

(assert (=> b!6901639 (= e!4156287 (= (head!13838 s!14361) (c!1282141 lt!2466428)))))

(declare-fun b!6901640 () Bool)

(assert (=> b!6901640 (= e!4156293 (not lt!2466556))))

(declare-fun b!6901641 () Bool)

(assert (=> b!6901641 (= e!4156288 e!4156290)))

(declare-fun res!2814390 () Bool)

(assert (=> b!6901641 (=> (not res!2814390) (not e!4156290))))

(assert (=> b!6901641 (= res!2814390 (not lt!2466556))))

(declare-fun b!6901642 () Bool)

(declare-fun res!2814384 () Bool)

(assert (=> b!6901642 (=> res!2814384 e!4156288)))

(assert (=> b!6901642 (= res!2814384 (not ((_ is ElementMatch!16865) lt!2466428)))))

(assert (=> b!6901642 (= e!4156293 e!4156288)))

(declare-fun b!6901643 () Bool)

(assert (=> b!6901643 (= e!4156291 (= lt!2466556 call!627619))))

(assert (= (and d!2162086 c!1282321) b!6901632))

(assert (= (and d!2162086 (not c!1282321)) b!6901633))

(assert (= (and d!2162086 c!1282320) b!6901643))

(assert (= (and d!2162086 (not c!1282320)) b!6901631))

(assert (= (and b!6901631 c!1282322) b!6901640))

(assert (= (and b!6901631 (not c!1282322)) b!6901642))

(assert (= (and b!6901642 (not res!2814384)) b!6901634))

(assert (= (and b!6901634 res!2814383) b!6901638))

(assert (= (and b!6901638 res!2814386) b!6901637))

(assert (= (and b!6901637 res!2814385) b!6901639))

(assert (= (and b!6901634 (not res!2814388)) b!6901641))

(assert (= (and b!6901641 res!2814390) b!6901630))

(assert (= (and b!6901630 (not res!2814389)) b!6901635))

(assert (= (and b!6901635 (not res!2814387)) b!6901636))

(assert (= (or b!6901643 b!6901630 b!6901638) bm!627614))

(declare-fun m!7619802 () Bool)

(assert (=> b!6901633 m!7619802))

(assert (=> b!6901633 m!7619802))

(declare-fun m!7619804 () Bool)

(assert (=> b!6901633 m!7619804))

(declare-fun m!7619806 () Bool)

(assert (=> b!6901633 m!7619806))

(assert (=> b!6901633 m!7619804))

(assert (=> b!6901633 m!7619806))

(declare-fun m!7619808 () Bool)

(assert (=> b!6901633 m!7619808))

(assert (=> d!2162086 m!7619798))

(assert (=> d!2162086 m!7619050))

(declare-fun m!7619810 () Bool)

(assert (=> b!6901632 m!7619810))

(assert (=> b!6901637 m!7619806))

(assert (=> b!6901637 m!7619806))

(declare-fun m!7619812 () Bool)

(assert (=> b!6901637 m!7619812))

(assert (=> b!6901635 m!7619806))

(assert (=> b!6901635 m!7619806))

(assert (=> b!6901635 m!7619812))

(assert (=> bm!627614 m!7619798))

(assert (=> b!6901639 m!7619802))

(assert (=> b!6901636 m!7619802))

(assert (=> b!6900829 d!2162086))

(declare-fun b!6901653 () Bool)

(declare-fun e!4156301 () Bool)

(declare-fun e!4156303 () Bool)

(assert (=> b!6901653 (= e!4156301 e!4156303)))

(declare-fun res!2814397 () Bool)

(assert (=> b!6901653 (=> res!2814397 e!4156303)))

(declare-fun call!627620 () Bool)

(assert (=> b!6901653 (= res!2814397 call!627620)))

(declare-fun b!6901654 () Bool)

(declare-fun e!4156302 () Bool)

(declare-fun e!4156304 () Bool)

(assert (=> b!6901654 (= e!4156302 e!4156304)))

(declare-fun c!1282325 () Bool)

(assert (=> b!6901654 (= c!1282325 ((_ is EmptyLang!16865) lt!2466437))))

(declare-fun b!6901655 () Bool)

(declare-fun e!4156300 () Bool)

(assert (=> b!6901655 (= e!4156300 (nullable!6706 lt!2466437))))

(declare-fun b!6901656 () Bool)

(assert (=> b!6901656 (= e!4156300 (matchR!9010 (derivativeStep!5385 lt!2466437 (head!13838 s!14361)) (tail!12890 s!14361)))))

(declare-fun b!6901657 () Bool)

(declare-fun res!2814396 () Bool)

(declare-fun e!4156299 () Bool)

(assert (=> b!6901657 (=> res!2814396 e!4156299)))

(declare-fun e!4156298 () Bool)

(assert (=> b!6901657 (= res!2814396 e!4156298)))

(declare-fun res!2814391 () Bool)

(assert (=> b!6901657 (=> (not res!2814391) (not e!4156298))))

(declare-fun lt!2466557 () Bool)

(assert (=> b!6901657 (= res!2814391 lt!2466557)))

(declare-fun bm!627615 () Bool)

(assert (=> bm!627615 (= call!627620 (isEmpty!38725 s!14361))))

(declare-fun b!6901658 () Bool)

(declare-fun res!2814395 () Bool)

(assert (=> b!6901658 (=> res!2814395 e!4156303)))

(assert (=> b!6901658 (= res!2814395 (not (isEmpty!38725 (tail!12890 s!14361))))))

(declare-fun b!6901659 () Bool)

(assert (=> b!6901659 (= e!4156303 (not (= (head!13838 s!14361) (c!1282141 lt!2466437))))))

(declare-fun d!2162088 () Bool)

(assert (=> d!2162088 e!4156302))

(declare-fun c!1282323 () Bool)

(assert (=> d!2162088 (= c!1282323 ((_ is EmptyExpr!16865) lt!2466437))))

(assert (=> d!2162088 (= lt!2466557 e!4156300)))

(declare-fun c!1282324 () Bool)

(assert (=> d!2162088 (= c!1282324 (isEmpty!38725 s!14361))))

(assert (=> d!2162088 (validRegex!8573 lt!2466437)))

(assert (=> d!2162088 (= (matchR!9010 lt!2466437 s!14361) lt!2466557)))

(declare-fun b!6901660 () Bool)

(declare-fun res!2814393 () Bool)

(assert (=> b!6901660 (=> (not res!2814393) (not e!4156298))))

(assert (=> b!6901660 (= res!2814393 (isEmpty!38725 (tail!12890 s!14361)))))

(declare-fun b!6901661 () Bool)

(declare-fun res!2814394 () Bool)

(assert (=> b!6901661 (=> (not res!2814394) (not e!4156298))))

(assert (=> b!6901661 (= res!2814394 (not call!627620))))

(declare-fun b!6901662 () Bool)

(assert (=> b!6901662 (= e!4156298 (= (head!13838 s!14361) (c!1282141 lt!2466437)))))

(declare-fun b!6901663 () Bool)

(assert (=> b!6901663 (= e!4156304 (not lt!2466557))))

(declare-fun b!6901664 () Bool)

(assert (=> b!6901664 (= e!4156299 e!4156301)))

(declare-fun res!2814398 () Bool)

(assert (=> b!6901664 (=> (not res!2814398) (not e!4156301))))

(assert (=> b!6901664 (= res!2814398 (not lt!2466557))))

(declare-fun b!6901665 () Bool)

(declare-fun res!2814392 () Bool)

(assert (=> b!6901665 (=> res!2814392 e!4156299)))

(assert (=> b!6901665 (= res!2814392 (not ((_ is ElementMatch!16865) lt!2466437)))))

(assert (=> b!6901665 (= e!4156304 e!4156299)))

(declare-fun b!6901666 () Bool)

(assert (=> b!6901666 (= e!4156302 (= lt!2466557 call!627620))))

(assert (= (and d!2162088 c!1282324) b!6901655))

(assert (= (and d!2162088 (not c!1282324)) b!6901656))

(assert (= (and d!2162088 c!1282323) b!6901666))

(assert (= (and d!2162088 (not c!1282323)) b!6901654))

(assert (= (and b!6901654 c!1282325) b!6901663))

(assert (= (and b!6901654 (not c!1282325)) b!6901665))

(assert (= (and b!6901665 (not res!2814392)) b!6901657))

(assert (= (and b!6901657 res!2814391) b!6901661))

(assert (= (and b!6901661 res!2814394) b!6901660))

(assert (= (and b!6901660 res!2814393) b!6901662))

(assert (= (and b!6901657 (not res!2814396)) b!6901664))

(assert (= (and b!6901664 res!2814398) b!6901653))

(assert (= (and b!6901653 (not res!2814397)) b!6901658))

(assert (= (and b!6901658 (not res!2814395)) b!6901659))

(assert (= (or b!6901666 b!6901653 b!6901661) bm!627615))

(assert (=> b!6901656 m!7619802))

(assert (=> b!6901656 m!7619802))

(declare-fun m!7619814 () Bool)

(assert (=> b!6901656 m!7619814))

(assert (=> b!6901656 m!7619806))

(assert (=> b!6901656 m!7619814))

(assert (=> b!6901656 m!7619806))

(declare-fun m!7619816 () Bool)

(assert (=> b!6901656 m!7619816))

(assert (=> d!2162088 m!7619798))

(declare-fun m!7619818 () Bool)

(assert (=> d!2162088 m!7619818))

(declare-fun m!7619820 () Bool)

(assert (=> b!6901655 m!7619820))

(assert (=> b!6901660 m!7619806))

(assert (=> b!6901660 m!7619806))

(assert (=> b!6901660 m!7619812))

(assert (=> b!6901658 m!7619806))

(assert (=> b!6901658 m!7619806))

(assert (=> b!6901658 m!7619812))

(assert (=> bm!627615 m!7619798))

(assert (=> b!6901662 m!7619802))

(assert (=> b!6901659 m!7619802))

(assert (=> b!6900829 d!2162088))

(declare-fun d!2162090 () Bool)

(assert (=> d!2162090 (= (matchR!9010 lt!2466428 s!14361) (matchRSpec!3928 lt!2466428 s!14361))))

(declare-fun lt!2466558 () Unit!160460)

(assert (=> d!2162090 (= lt!2466558 (choose!51376 lt!2466428 s!14361))))

(assert (=> d!2162090 (validRegex!8573 lt!2466428)))

(assert (=> d!2162090 (= (mainMatchTheorem!3928 lt!2466428 s!14361) lt!2466558)))

(declare-fun bs!1842380 () Bool)

(assert (= bs!1842380 d!2162090))

(assert (=> bs!1842380 m!7619062))

(assert (=> bs!1842380 m!7619060))

(declare-fun m!7619822 () Bool)

(assert (=> bs!1842380 m!7619822))

(assert (=> bs!1842380 m!7619050))

(assert (=> b!6900829 d!2162090))

(declare-fun bs!1842381 () Bool)

(declare-fun b!6901668 () Bool)

(assert (= bs!1842381 (and b!6901668 b!6900823)))

(declare-fun lambda!391855 () Int)

(assert (=> bs!1842381 (not (= lambda!391855 lambda!391777))))

(declare-fun bs!1842382 () Bool)

(assert (= bs!1842382 (and b!6901668 d!2161942)))

(assert (=> bs!1842382 (not (= lambda!391855 lambda!391823))))

(declare-fun bs!1842383 () Bool)

(assert (= bs!1842383 (and b!6901668 b!6900813)))

(assert (=> bs!1842383 (not (= lambda!391855 lambda!391784))))

(declare-fun bs!1842384 () Bool)

(assert (= bs!1842384 (and b!6901668 b!6901316)))

(assert (=> bs!1842384 (= (and (= s!14361 lt!2466407) (= (reg!17194 lt!2466437) (reg!17194 lt!2466409)) (= lt!2466437 lt!2466409)) (= lambda!391855 lambda!391830))))

(declare-fun bs!1842385 () Bool)

(assert (= bs!1842385 (and b!6901668 b!6901041)))

(assert (=> bs!1842385 (not (= lambda!391855 lambda!391804))))

(declare-fun bs!1842386 () Bool)

(assert (= bs!1842386 (and b!6901668 b!6901385)))

(assert (=> bs!1842386 (not (= lambda!391855 lambda!391848))))

(declare-fun bs!1842387 () Bool)

(assert (= bs!1842387 (and b!6901668 d!2161996)))

(assert (=> bs!1842387 (not (= lambda!391855 lambda!391840))))

(declare-fun bs!1842388 () Bool)

(assert (= bs!1842388 (and b!6901668 d!2161888)))

(assert (=> bs!1842388 (not (= lambda!391855 lambda!391802))))

(declare-fun bs!1842389 () Bool)

(assert (= bs!1842389 (and b!6901668 b!6901536)))

(assert (=> bs!1842389 (= (and (= (reg!17194 lt!2466437) (reg!17194 lt!2466428)) (= lt!2466437 lt!2466428)) (= lambda!391855 lambda!391853))))

(assert (=> bs!1842381 (not (= lambda!391855 lambda!391782))))

(declare-fun bs!1842390 () Bool)

(assert (= bs!1842390 (and b!6901668 d!2161916)))

(assert (=> bs!1842390 (not (= lambda!391855 lambda!391818))))

(declare-fun bs!1842391 () Bool)

(assert (= bs!1842391 (and b!6901668 b!6901324)))

(assert (=> bs!1842391 (not (= lambda!391855 lambda!391832))))

(assert (=> bs!1842381 (not (= lambda!391855 lambda!391781))))

(assert (=> bs!1842382 (not (= lambda!391855 lambda!391825))))

(declare-fun bs!1842392 () Bool)

(assert (= bs!1842392 (and b!6901668 b!6901003)))

(assert (=> bs!1842392 (not (= lambda!391855 lambda!391801))))

(declare-fun bs!1842393 () Bool)

(assert (= bs!1842393 (and b!6901668 b!6901033)))

(assert (=> bs!1842393 (= (and (= s!14361 (_2!37035 lt!2466430)) (= (reg!17194 lt!2466437) (reg!17194 lt!2466416)) (= lt!2466437 lt!2466416)) (= lambda!391855 lambda!391803))))

(declare-fun bs!1842394 () Bool)

(assert (= bs!1842394 (and b!6901668 d!2161990)))

(assert (=> bs!1842394 (not (= lambda!391855 lambda!391835))))

(declare-fun bs!1842395 () Bool)

(assert (= bs!1842395 (and b!6901668 d!2162028)))

(assert (=> bs!1842395 (not (= lambda!391855 lambda!391850))))

(declare-fun bs!1842396 () Bool)

(assert (= bs!1842396 (and b!6901668 b!6901366)))

(assert (=> bs!1842396 (not (= lambda!391855 lambda!391844))))

(declare-fun bs!1842397 () Bool)

(assert (= bs!1842397 (and b!6901668 b!6901377)))

(assert (=> bs!1842397 (= (and (= s!14361 (_1!37035 lt!2466430)) (= (reg!17194 lt!2466437) (reg!17194 r1!6342)) (= lt!2466437 r1!6342)) (= lambda!391855 lambda!391847))))

(assert (=> bs!1842390 (not (= lambda!391855 lambda!391819))))

(declare-fun bs!1842398 () Bool)

(assert (= bs!1842398 (and b!6901668 b!6900995)))

(assert (=> bs!1842398 (= (and (= s!14361 (_2!37035 lt!2466417)) (= (reg!17194 lt!2466437) (reg!17194 r3!135)) (= lt!2466437 r3!135)) (= lambda!391855 lambda!391799))))

(assert (=> bs!1842394 (not (= lambda!391855 lambda!391837))))

(assert (=> bs!1842381 (not (= lambda!391855 lambda!391776))))

(assert (=> bs!1842381 (not (= lambda!391855 lambda!391780))))

(declare-fun bs!1842399 () Bool)

(assert (= bs!1842399 (and b!6901668 d!2161956)))

(assert (=> bs!1842399 (not (= lambda!391855 lambda!391828))))

(declare-fun bs!1842400 () Bool)

(assert (= bs!1842400 (and b!6901668 b!6901358)))

(assert (=> bs!1842400 (= (and (= s!14361 (_1!37035 lt!2466417)) (= (reg!17194 lt!2466437) (reg!17194 r2!6280)) (= lt!2466437 r2!6280)) (= lambda!391855 lambda!391842))))

(assert (=> bs!1842381 (not (= lambda!391855 lambda!391779))))

(declare-fun bs!1842401 () Bool)

(assert (= bs!1842401 (and b!6901668 d!2161864)))

(assert (=> bs!1842401 (not (= lambda!391855 lambda!391787))))

(declare-fun bs!1842402 () Bool)

(assert (= bs!1842402 (and b!6901668 b!6901544)))

(assert (=> bs!1842402 (not (= lambda!391855 lambda!391854))))

(declare-fun bs!1842403 () Bool)

(assert (= bs!1842403 (and b!6901668 b!6900820)))

(assert (=> bs!1842403 (not (= lambda!391855 lambda!391783))))

(assert (=> bs!1842381 (not (= lambda!391855 lambda!391778))))

(assert (=> bs!1842387 (not (= lambda!391855 lambda!391839))))

(assert (=> b!6901668 true))

(assert (=> b!6901668 true))

(declare-fun bs!1842404 () Bool)

(declare-fun b!6901676 () Bool)

(assert (= bs!1842404 (and b!6901676 b!6900823)))

(declare-fun lambda!391856 () Int)

(assert (=> bs!1842404 (= (and (= (regOne!34242 lt!2466437) r1!6342) (= (regTwo!34242 lt!2466437) lt!2466416)) (= lambda!391856 lambda!391777))))

(declare-fun bs!1842405 () Bool)

(assert (= bs!1842405 (and b!6901676 d!2161942)))

(assert (=> bs!1842405 (not (= lambda!391856 lambda!391823))))

(declare-fun bs!1842406 () Bool)

(assert (= bs!1842406 (and b!6901676 b!6900813)))

(assert (=> bs!1842406 (= (and (= (regOne!34242 lt!2466437) r1!6342) (= (regTwo!34242 lt!2466437) lt!2466416)) (= lambda!391856 lambda!391784))))

(declare-fun bs!1842407 () Bool)

(assert (= bs!1842407 (and b!6901676 b!6901316)))

(assert (=> bs!1842407 (not (= lambda!391856 lambda!391830))))

(declare-fun bs!1842408 () Bool)

(assert (= bs!1842408 (and b!6901676 b!6901041)))

(assert (=> bs!1842408 (= (and (= s!14361 (_2!37035 lt!2466430)) (= (regOne!34242 lt!2466437) (regOne!34242 lt!2466416)) (= (regTwo!34242 lt!2466437) (regTwo!34242 lt!2466416))) (= lambda!391856 lambda!391804))))

(declare-fun bs!1842409 () Bool)

(assert (= bs!1842409 (and b!6901676 b!6901385)))

(assert (=> bs!1842409 (= (and (= s!14361 (_1!37035 lt!2466430)) (= (regOne!34242 lt!2466437) (regOne!34242 r1!6342)) (= (regTwo!34242 lt!2466437) (regTwo!34242 r1!6342))) (= lambda!391856 lambda!391848))))

(declare-fun bs!1842410 () Bool)

(assert (= bs!1842410 (and b!6901676 d!2161996)))

(assert (=> bs!1842410 (= (and (= s!14361 lt!2466407) (= (regOne!34242 lt!2466437) r1!6342) (= (regTwo!34242 lt!2466437) r2!6280)) (= lambda!391856 lambda!391840))))

(declare-fun bs!1842411 () Bool)

(assert (= bs!1842411 (and b!6901676 d!2161888)))

(assert (=> bs!1842411 (not (= lambda!391856 lambda!391802))))

(declare-fun bs!1842412 () Bool)

(assert (= bs!1842412 (and b!6901676 b!6901536)))

(assert (=> bs!1842412 (not (= lambda!391856 lambda!391853))))

(assert (=> bs!1842404 (not (= lambda!391856 lambda!391782))))

(declare-fun bs!1842413 () Bool)

(assert (= bs!1842413 (and b!6901676 d!2161916)))

(assert (=> bs!1842413 (not (= lambda!391856 lambda!391818))))

(declare-fun bs!1842414 () Bool)

(assert (= bs!1842414 (and b!6901676 b!6901324)))

(assert (=> bs!1842414 (= (and (= s!14361 lt!2466407) (= (regOne!34242 lt!2466437) (regOne!34242 lt!2466409)) (= (regTwo!34242 lt!2466437) (regTwo!34242 lt!2466409))) (= lambda!391856 lambda!391832))))

(assert (=> bs!1842404 (= (and (= s!14361 lt!2466407) (= (regOne!34242 lt!2466437) r1!6342) (= (regTwo!34242 lt!2466437) r2!6280)) (= lambda!391856 lambda!391781))))

(assert (=> bs!1842405 (= (and (= (regOne!34242 lt!2466437) r1!6342) (= (regTwo!34242 lt!2466437) lt!2466416)) (= lambda!391856 lambda!391825))))

(declare-fun bs!1842415 () Bool)

(assert (= bs!1842415 (and b!6901676 b!6901003)))

(assert (=> bs!1842415 (= (and (= s!14361 (_2!37035 lt!2466417)) (= (regOne!34242 lt!2466437) (regOne!34242 r3!135)) (= (regTwo!34242 lt!2466437) (regTwo!34242 r3!135))) (= lambda!391856 lambda!391801))))

(declare-fun bs!1842416 () Bool)

(assert (= bs!1842416 (and b!6901676 b!6901033)))

(assert (=> bs!1842416 (not (= lambda!391856 lambda!391803))))

(declare-fun bs!1842417 () Bool)

(assert (= bs!1842417 (and b!6901676 d!2161990)))

(assert (=> bs!1842417 (not (= lambda!391856 lambda!391835))))

(declare-fun bs!1842418 () Bool)

(assert (= bs!1842418 (and b!6901676 d!2162028)))

(assert (=> bs!1842418 (not (= lambda!391856 lambda!391850))))

(declare-fun bs!1842419 () Bool)

(assert (= bs!1842419 (and b!6901676 b!6901366)))

(assert (=> bs!1842419 (= (and (= s!14361 (_1!37035 lt!2466417)) (= (regOne!34242 lt!2466437) (regOne!34242 r2!6280)) (= (regTwo!34242 lt!2466437) (regTwo!34242 r2!6280))) (= lambda!391856 lambda!391844))))

(declare-fun bs!1842420 () Bool)

(assert (= bs!1842420 (and b!6901676 b!6901377)))

(assert (=> bs!1842420 (not (= lambda!391856 lambda!391847))))

(assert (=> bs!1842413 (= (and (= (regOne!34242 lt!2466437) lt!2466409) (= (regTwo!34242 lt!2466437) r3!135)) (= lambda!391856 lambda!391819))))

(declare-fun bs!1842421 () Bool)

(assert (= bs!1842421 (and b!6901676 b!6901668)))

(assert (=> bs!1842421 (not (= lambda!391856 lambda!391855))))

(declare-fun bs!1842422 () Bool)

(assert (= bs!1842422 (and b!6901676 b!6900995)))

(assert (=> bs!1842422 (not (= lambda!391856 lambda!391799))))

(assert (=> bs!1842417 (= (and (= s!14361 (_2!37035 lt!2466430)) (= (regOne!34242 lt!2466437) r2!6280) (= (regTwo!34242 lt!2466437) r3!135)) (= lambda!391856 lambda!391837))))

(assert (=> bs!1842404 (not (= lambda!391856 lambda!391776))))

(assert (=> bs!1842404 (not (= lambda!391856 lambda!391780))))

(declare-fun bs!1842423 () Bool)

(assert (= bs!1842423 (and b!6901676 d!2161956)))

(assert (=> bs!1842423 (not (= lambda!391856 lambda!391828))))

(declare-fun bs!1842424 () Bool)

(assert (= bs!1842424 (and b!6901676 b!6901358)))

(assert (=> bs!1842424 (not (= lambda!391856 lambda!391842))))

(assert (=> bs!1842404 (= (and (= s!14361 (_2!37035 lt!2466430)) (= (regOne!34242 lt!2466437) r2!6280) (= (regTwo!34242 lt!2466437) r3!135)) (= lambda!391856 lambda!391779))))

(declare-fun bs!1842425 () Bool)

(assert (= bs!1842425 (and b!6901676 d!2161864)))

(assert (=> bs!1842425 (not (= lambda!391856 lambda!391787))))

(declare-fun bs!1842426 () Bool)

(assert (= bs!1842426 (and b!6901676 b!6901544)))

(assert (=> bs!1842426 (= (and (= (regOne!34242 lt!2466437) (regOne!34242 lt!2466428)) (= (regTwo!34242 lt!2466437) (regTwo!34242 lt!2466428))) (= lambda!391856 lambda!391854))))

(declare-fun bs!1842427 () Bool)

(assert (= bs!1842427 (and b!6901676 b!6900820)))

(assert (=> bs!1842427 (not (= lambda!391856 lambda!391783))))

(assert (=> bs!1842404 (not (= lambda!391856 lambda!391778))))

(assert (=> bs!1842410 (not (= lambda!391856 lambda!391839))))

(assert (=> b!6901676 true))

(assert (=> b!6901676 true))

(declare-fun b!6901667 () Bool)

(declare-fun c!1282328 () Bool)

(assert (=> b!6901667 (= c!1282328 ((_ is ElementMatch!16865) lt!2466437))))

(declare-fun e!4156311 () Bool)

(declare-fun e!4156308 () Bool)

(assert (=> b!6901667 (= e!4156311 e!4156308)))

(declare-fun e!4156307 () Bool)

(declare-fun call!627621 () Bool)

(assert (=> b!6901668 (= e!4156307 call!627621)))

(declare-fun b!6901669 () Bool)

(declare-fun e!4156306 () Bool)

(declare-fun e!4156305 () Bool)

(assert (=> b!6901669 (= e!4156306 e!4156305)))

(declare-fun c!1282326 () Bool)

(assert (=> b!6901669 (= c!1282326 ((_ is Star!16865) lt!2466437))))

(declare-fun b!6901670 () Bool)

(declare-fun res!2814399 () Bool)

(assert (=> b!6901670 (=> res!2814399 e!4156307)))

(declare-fun call!627622 () Bool)

(assert (=> b!6901670 (= res!2814399 call!627622)))

(assert (=> b!6901670 (= e!4156305 e!4156307)))

(declare-fun b!6901671 () Bool)

(declare-fun e!4156310 () Bool)

(assert (=> b!6901671 (= e!4156306 e!4156310)))

(declare-fun res!2814401 () Bool)

(assert (=> b!6901671 (= res!2814401 (matchRSpec!3928 (regOne!34243 lt!2466437) s!14361))))

(assert (=> b!6901671 (=> res!2814401 e!4156310)))

(declare-fun b!6901673 () Bool)

(assert (=> b!6901673 (= e!4156308 (= s!14361 (Cons!66498 (c!1282141 lt!2466437) Nil!66498)))))

(declare-fun bm!627616 () Bool)

(assert (=> bm!627616 (= call!627621 (Exists!3873 (ite c!1282326 lambda!391855 lambda!391856)))))

(declare-fun b!6901674 () Bool)

(declare-fun e!4156309 () Bool)

(assert (=> b!6901674 (= e!4156309 call!627622)))

(declare-fun bm!627617 () Bool)

(assert (=> bm!627617 (= call!627622 (isEmpty!38725 s!14361))))

(declare-fun b!6901675 () Bool)

(assert (=> b!6901675 (= e!4156309 e!4156311)))

(declare-fun res!2814400 () Bool)

(assert (=> b!6901675 (= res!2814400 (not ((_ is EmptyLang!16865) lt!2466437)))))

(assert (=> b!6901675 (=> (not res!2814400) (not e!4156311))))

(assert (=> b!6901676 (= e!4156305 call!627621)))

(declare-fun b!6901677 () Bool)

(assert (=> b!6901677 (= e!4156310 (matchRSpec!3928 (regTwo!34243 lt!2466437) s!14361))))

(declare-fun d!2162092 () Bool)

(declare-fun c!1282327 () Bool)

(assert (=> d!2162092 (= c!1282327 ((_ is EmptyExpr!16865) lt!2466437))))

(assert (=> d!2162092 (= (matchRSpec!3928 lt!2466437 s!14361) e!4156309)))

(declare-fun b!6901672 () Bool)

(declare-fun c!1282329 () Bool)

(assert (=> b!6901672 (= c!1282329 ((_ is Union!16865) lt!2466437))))

(assert (=> b!6901672 (= e!4156308 e!4156306)))

(assert (= (and d!2162092 c!1282327) b!6901674))

(assert (= (and d!2162092 (not c!1282327)) b!6901675))

(assert (= (and b!6901675 res!2814400) b!6901667))

(assert (= (and b!6901667 c!1282328) b!6901673))

(assert (= (and b!6901667 (not c!1282328)) b!6901672))

(assert (= (and b!6901672 c!1282329) b!6901671))

(assert (= (and b!6901672 (not c!1282329)) b!6901669))

(assert (= (and b!6901671 (not res!2814401)) b!6901677))

(assert (= (and b!6901669 c!1282326) b!6901670))

(assert (= (and b!6901669 (not c!1282326)) b!6901676))

(assert (= (and b!6901670 (not res!2814399)) b!6901668))

(assert (= (or b!6901668 b!6901676) bm!627616))

(assert (= (or b!6901674 b!6901670) bm!627617))

(declare-fun m!7619824 () Bool)

(assert (=> b!6901671 m!7619824))

(declare-fun m!7619826 () Bool)

(assert (=> bm!627616 m!7619826))

(assert (=> bm!627617 m!7619798))

(declare-fun m!7619828 () Bool)

(assert (=> b!6901677 m!7619828))

(assert (=> b!6900829 d!2162092))

(declare-fun d!2162094 () Bool)

(assert (=> d!2162094 (= (matchR!9010 lt!2466437 s!14361) (matchRSpec!3928 lt!2466437 s!14361))))

(declare-fun lt!2466559 () Unit!160460)

(assert (=> d!2162094 (= lt!2466559 (choose!51376 lt!2466437 s!14361))))

(assert (=> d!2162094 (validRegex!8573 lt!2466437)))

(assert (=> d!2162094 (= (mainMatchTheorem!3928 lt!2466437 s!14361) lt!2466559)))

(declare-fun bs!1842428 () Bool)

(assert (= bs!1842428 d!2162094))

(assert (=> bs!1842428 m!7619064))

(assert (=> bs!1842428 m!7619056))

(declare-fun m!7619830 () Bool)

(assert (=> bs!1842428 m!7619830))

(assert (=> bs!1842428 m!7619818))

(assert (=> b!6900829 d!2162094))

(declare-fun d!2162096 () Bool)

(declare-fun res!2814406 () Bool)

(declare-fun e!4156313 () Bool)

(assert (=> d!2162096 (=> res!2814406 e!4156313)))

(assert (=> d!2162096 (= res!2814406 ((_ is ElementMatch!16865) lt!2466428))))

(assert (=> d!2162096 (= (validRegex!8573 lt!2466428) e!4156313)))

(declare-fun b!6901678 () Bool)

(declare-fun e!4156315 () Bool)

(declare-fun e!4156317 () Bool)

(assert (=> b!6901678 (= e!4156315 e!4156317)))

(declare-fun c!1282331 () Bool)

(assert (=> b!6901678 (= c!1282331 ((_ is Union!16865) lt!2466428))))

(declare-fun b!6901679 () Bool)

(declare-fun e!4156318 () Bool)

(declare-fun call!627625 () Bool)

(assert (=> b!6901679 (= e!4156318 call!627625)))

(declare-fun b!6901680 () Bool)

(declare-fun e!4156316 () Bool)

(declare-fun call!627623 () Bool)

(assert (=> b!6901680 (= e!4156316 call!627623)))

(declare-fun b!6901681 () Bool)

(declare-fun res!2814402 () Bool)

(assert (=> b!6901681 (=> (not res!2814402) (not e!4156318))))

(assert (=> b!6901681 (= res!2814402 call!627623)))

(assert (=> b!6901681 (= e!4156317 e!4156318)))

(declare-fun b!6901682 () Bool)

(declare-fun e!4156314 () Bool)

(declare-fun call!627624 () Bool)

(assert (=> b!6901682 (= e!4156314 call!627624)))

(declare-fun b!6901683 () Bool)

(assert (=> b!6901683 (= e!4156315 e!4156314)))

(declare-fun res!2814403 () Bool)

(assert (=> b!6901683 (= res!2814403 (not (nullable!6706 (reg!17194 lt!2466428))))))

(assert (=> b!6901683 (=> (not res!2814403) (not e!4156314))))

(declare-fun b!6901684 () Bool)

(declare-fun e!4156312 () Bool)

(assert (=> b!6901684 (= e!4156312 e!4156316)))

(declare-fun res!2814404 () Bool)

(assert (=> b!6901684 (=> (not res!2814404) (not e!4156316))))

(assert (=> b!6901684 (= res!2814404 call!627625)))

(declare-fun bm!627618 () Bool)

(assert (=> bm!627618 (= call!627625 (validRegex!8573 (ite c!1282331 (regTwo!34243 lt!2466428) (regOne!34242 lt!2466428))))))

(declare-fun bm!627619 () Bool)

(declare-fun c!1282330 () Bool)

(assert (=> bm!627619 (= call!627624 (validRegex!8573 (ite c!1282330 (reg!17194 lt!2466428) (ite c!1282331 (regOne!34243 lt!2466428) (regTwo!34242 lt!2466428)))))))

(declare-fun b!6901685 () Bool)

(declare-fun res!2814405 () Bool)

(assert (=> b!6901685 (=> res!2814405 e!4156312)))

(assert (=> b!6901685 (= res!2814405 (not ((_ is Concat!25710) lt!2466428)))))

(assert (=> b!6901685 (= e!4156317 e!4156312)))

(declare-fun b!6901686 () Bool)

(assert (=> b!6901686 (= e!4156313 e!4156315)))

(assert (=> b!6901686 (= c!1282330 ((_ is Star!16865) lt!2466428))))

(declare-fun bm!627620 () Bool)

(assert (=> bm!627620 (= call!627623 call!627624)))

(assert (= (and d!2162096 (not res!2814406)) b!6901686))

(assert (= (and b!6901686 c!1282330) b!6901683))

(assert (= (and b!6901686 (not c!1282330)) b!6901678))

(assert (= (and b!6901683 res!2814403) b!6901682))

(assert (= (and b!6901678 c!1282331) b!6901681))

(assert (= (and b!6901678 (not c!1282331)) b!6901685))

(assert (= (and b!6901681 res!2814402) b!6901679))

(assert (= (and b!6901685 (not res!2814405)) b!6901684))

(assert (= (and b!6901684 res!2814404) b!6901680))

(assert (= (or b!6901681 b!6901680) bm!627620))

(assert (= (or b!6901679 b!6901684) bm!627618))

(assert (= (or b!6901682 bm!627620) bm!627619))

(declare-fun m!7619832 () Bool)

(assert (=> b!6901683 m!7619832))

(declare-fun m!7619834 () Bool)

(assert (=> bm!627618 m!7619834))

(declare-fun m!7619836 () Bool)

(assert (=> bm!627619 m!7619836))

(assert (=> b!6900813 d!2162096))

(assert (=> b!6900813 d!2162050))

(declare-fun d!2162098 () Bool)

(assert (=> d!2162098 (= (Exists!3873 lambda!391784) (choose!51372 lambda!391784))))

(declare-fun bs!1842429 () Bool)

(assert (= bs!1842429 d!2162098))

(declare-fun m!7619838 () Bool)

(assert (=> bs!1842429 m!7619838))

(assert (=> b!6900813 d!2162098))

(assert (=> b!6900813 d!2161942))

(declare-fun b!6901698 () Bool)

(declare-fun e!4156321 () Bool)

(declare-fun tp!1900138 () Bool)

(declare-fun tp!1900140 () Bool)

(assert (=> b!6901698 (= e!4156321 (and tp!1900138 tp!1900140))))

(assert (=> b!6900828 (= tp!1900031 e!4156321)))

(declare-fun b!6901700 () Bool)

(declare-fun tp!1900139 () Bool)

(declare-fun tp!1900142 () Bool)

(assert (=> b!6901700 (= e!4156321 (and tp!1900139 tp!1900142))))

(declare-fun b!6901697 () Bool)

(assert (=> b!6901697 (= e!4156321 tp_is_empty!42955)))

(declare-fun b!6901699 () Bool)

(declare-fun tp!1900141 () Bool)

(assert (=> b!6901699 (= e!4156321 tp!1900141)))

(assert (= (and b!6900828 ((_ is ElementMatch!16865) (regOne!34243 r3!135))) b!6901697))

(assert (= (and b!6900828 ((_ is Concat!25710) (regOne!34243 r3!135))) b!6901698))

(assert (= (and b!6900828 ((_ is Star!16865) (regOne!34243 r3!135))) b!6901699))

(assert (= (and b!6900828 ((_ is Union!16865) (regOne!34243 r3!135))) b!6901700))

(declare-fun b!6901702 () Bool)

(declare-fun e!4156322 () Bool)

(declare-fun tp!1900143 () Bool)

(declare-fun tp!1900145 () Bool)

(assert (=> b!6901702 (= e!4156322 (and tp!1900143 tp!1900145))))

(assert (=> b!6900828 (= tp!1900037 e!4156322)))

(declare-fun b!6901704 () Bool)

(declare-fun tp!1900144 () Bool)

(declare-fun tp!1900147 () Bool)

(assert (=> b!6901704 (= e!4156322 (and tp!1900144 tp!1900147))))

(declare-fun b!6901701 () Bool)

(assert (=> b!6901701 (= e!4156322 tp_is_empty!42955)))

(declare-fun b!6901703 () Bool)

(declare-fun tp!1900146 () Bool)

(assert (=> b!6901703 (= e!4156322 tp!1900146)))

(assert (= (and b!6900828 ((_ is ElementMatch!16865) (regTwo!34243 r3!135))) b!6901701))

(assert (= (and b!6900828 ((_ is Concat!25710) (regTwo!34243 r3!135))) b!6901702))

(assert (= (and b!6900828 ((_ is Star!16865) (regTwo!34243 r3!135))) b!6901703))

(assert (= (and b!6900828 ((_ is Union!16865) (regTwo!34243 r3!135))) b!6901704))

(declare-fun b!6901706 () Bool)

(declare-fun e!4156323 () Bool)

(declare-fun tp!1900148 () Bool)

(declare-fun tp!1900150 () Bool)

(assert (=> b!6901706 (= e!4156323 (and tp!1900148 tp!1900150))))

(assert (=> b!6900822 (= tp!1900030 e!4156323)))

(declare-fun b!6901708 () Bool)

(declare-fun tp!1900149 () Bool)

(declare-fun tp!1900152 () Bool)

(assert (=> b!6901708 (= e!4156323 (and tp!1900149 tp!1900152))))

(declare-fun b!6901705 () Bool)

(assert (=> b!6901705 (= e!4156323 tp_is_empty!42955)))

(declare-fun b!6901707 () Bool)

(declare-fun tp!1900151 () Bool)

(assert (=> b!6901707 (= e!4156323 tp!1900151)))

(assert (= (and b!6900822 ((_ is ElementMatch!16865) (regOne!34242 r1!6342))) b!6901705))

(assert (= (and b!6900822 ((_ is Concat!25710) (regOne!34242 r1!6342))) b!6901706))

(assert (= (and b!6900822 ((_ is Star!16865) (regOne!34242 r1!6342))) b!6901707))

(assert (= (and b!6900822 ((_ is Union!16865) (regOne!34242 r1!6342))) b!6901708))

(declare-fun b!6901710 () Bool)

(declare-fun e!4156324 () Bool)

(declare-fun tp!1900153 () Bool)

(declare-fun tp!1900155 () Bool)

(assert (=> b!6901710 (= e!4156324 (and tp!1900153 tp!1900155))))

(assert (=> b!6900822 (= tp!1900036 e!4156324)))

(declare-fun b!6901712 () Bool)

(declare-fun tp!1900154 () Bool)

(declare-fun tp!1900157 () Bool)

(assert (=> b!6901712 (= e!4156324 (and tp!1900154 tp!1900157))))

(declare-fun b!6901709 () Bool)

(assert (=> b!6901709 (= e!4156324 tp_is_empty!42955)))

(declare-fun b!6901711 () Bool)

(declare-fun tp!1900156 () Bool)

(assert (=> b!6901711 (= e!4156324 tp!1900156)))

(assert (= (and b!6900822 ((_ is ElementMatch!16865) (regTwo!34242 r1!6342))) b!6901709))

(assert (= (and b!6900822 ((_ is Concat!25710) (regTwo!34242 r1!6342))) b!6901710))

(assert (= (and b!6900822 ((_ is Star!16865) (regTwo!34242 r1!6342))) b!6901711))

(assert (= (and b!6900822 ((_ is Union!16865) (regTwo!34242 r1!6342))) b!6901712))

(declare-fun b!6901714 () Bool)

(declare-fun e!4156325 () Bool)

(declare-fun tp!1900158 () Bool)

(declare-fun tp!1900160 () Bool)

(assert (=> b!6901714 (= e!4156325 (and tp!1900158 tp!1900160))))

(assert (=> b!6900827 (= tp!1900033 e!4156325)))

(declare-fun b!6901716 () Bool)

(declare-fun tp!1900159 () Bool)

(declare-fun tp!1900162 () Bool)

(assert (=> b!6901716 (= e!4156325 (and tp!1900159 tp!1900162))))

(declare-fun b!6901713 () Bool)

(assert (=> b!6901713 (= e!4156325 tp_is_empty!42955)))

(declare-fun b!6901715 () Bool)

(declare-fun tp!1900161 () Bool)

(assert (=> b!6901715 (= e!4156325 tp!1900161)))

(assert (= (and b!6900827 ((_ is ElementMatch!16865) (regOne!34242 r2!6280))) b!6901713))

(assert (= (and b!6900827 ((_ is Concat!25710) (regOne!34242 r2!6280))) b!6901714))

(assert (= (and b!6900827 ((_ is Star!16865) (regOne!34242 r2!6280))) b!6901715))

(assert (= (and b!6900827 ((_ is Union!16865) (regOne!34242 r2!6280))) b!6901716))

(declare-fun b!6901718 () Bool)

(declare-fun e!4156326 () Bool)

(declare-fun tp!1900163 () Bool)

(declare-fun tp!1900165 () Bool)

(assert (=> b!6901718 (= e!4156326 (and tp!1900163 tp!1900165))))

(assert (=> b!6900827 (= tp!1900029 e!4156326)))

(declare-fun b!6901720 () Bool)

(declare-fun tp!1900164 () Bool)

(declare-fun tp!1900167 () Bool)

(assert (=> b!6901720 (= e!4156326 (and tp!1900164 tp!1900167))))

(declare-fun b!6901717 () Bool)

(assert (=> b!6901717 (= e!4156326 tp_is_empty!42955)))

(declare-fun b!6901719 () Bool)

(declare-fun tp!1900166 () Bool)

(assert (=> b!6901719 (= e!4156326 tp!1900166)))

(assert (= (and b!6900827 ((_ is ElementMatch!16865) (regTwo!34242 r2!6280))) b!6901717))

(assert (= (and b!6900827 ((_ is Concat!25710) (regTwo!34242 r2!6280))) b!6901718))

(assert (= (and b!6900827 ((_ is Star!16865) (regTwo!34242 r2!6280))) b!6901719))

(assert (= (and b!6900827 ((_ is Union!16865) (regTwo!34242 r2!6280))) b!6901720))

(declare-fun b!6901722 () Bool)

(declare-fun e!4156327 () Bool)

(declare-fun tp!1900168 () Bool)

(declare-fun tp!1900170 () Bool)

(assert (=> b!6901722 (= e!4156327 (and tp!1900168 tp!1900170))))

(assert (=> b!6900811 (= tp!1900027 e!4156327)))

(declare-fun b!6901724 () Bool)

(declare-fun tp!1900169 () Bool)

(declare-fun tp!1900172 () Bool)

(assert (=> b!6901724 (= e!4156327 (and tp!1900169 tp!1900172))))

(declare-fun b!6901721 () Bool)

(assert (=> b!6901721 (= e!4156327 tp_is_empty!42955)))

(declare-fun b!6901723 () Bool)

(declare-fun tp!1900171 () Bool)

(assert (=> b!6901723 (= e!4156327 tp!1900171)))

(assert (= (and b!6900811 ((_ is ElementMatch!16865) (regOne!34243 r1!6342))) b!6901721))

(assert (= (and b!6900811 ((_ is Concat!25710) (regOne!34243 r1!6342))) b!6901722))

(assert (= (and b!6900811 ((_ is Star!16865) (regOne!34243 r1!6342))) b!6901723))

(assert (= (and b!6900811 ((_ is Union!16865) (regOne!34243 r1!6342))) b!6901724))

(declare-fun b!6901726 () Bool)

(declare-fun e!4156328 () Bool)

(declare-fun tp!1900173 () Bool)

(declare-fun tp!1900175 () Bool)

(assert (=> b!6901726 (= e!4156328 (and tp!1900173 tp!1900175))))

(assert (=> b!6900811 (= tp!1900028 e!4156328)))

(declare-fun b!6901728 () Bool)

(declare-fun tp!1900174 () Bool)

(declare-fun tp!1900177 () Bool)

(assert (=> b!6901728 (= e!4156328 (and tp!1900174 tp!1900177))))

(declare-fun b!6901725 () Bool)

(assert (=> b!6901725 (= e!4156328 tp_is_empty!42955)))

(declare-fun b!6901727 () Bool)

(declare-fun tp!1900176 () Bool)

(assert (=> b!6901727 (= e!4156328 tp!1900176)))

(assert (= (and b!6900811 ((_ is ElementMatch!16865) (regTwo!34243 r1!6342))) b!6901725))

(assert (= (and b!6900811 ((_ is Concat!25710) (regTwo!34243 r1!6342))) b!6901726))

(assert (= (and b!6900811 ((_ is Star!16865) (regTwo!34243 r1!6342))) b!6901727))

(assert (= (and b!6900811 ((_ is Union!16865) (regTwo!34243 r1!6342))) b!6901728))

(declare-fun b!6901730 () Bool)

(declare-fun e!4156329 () Bool)

(declare-fun tp!1900178 () Bool)

(declare-fun tp!1900180 () Bool)

(assert (=> b!6901730 (= e!4156329 (and tp!1900178 tp!1900180))))

(assert (=> b!6900816 (= tp!1900038 e!4156329)))

(declare-fun b!6901732 () Bool)

(declare-fun tp!1900179 () Bool)

(declare-fun tp!1900182 () Bool)

(assert (=> b!6901732 (= e!4156329 (and tp!1900179 tp!1900182))))

(declare-fun b!6901729 () Bool)

(assert (=> b!6901729 (= e!4156329 tp_is_empty!42955)))

(declare-fun b!6901731 () Bool)

(declare-fun tp!1900181 () Bool)

(assert (=> b!6901731 (= e!4156329 tp!1900181)))

(assert (= (and b!6900816 ((_ is ElementMatch!16865) (regOne!34242 r3!135))) b!6901729))

(assert (= (and b!6900816 ((_ is Concat!25710) (regOne!34242 r3!135))) b!6901730))

(assert (= (and b!6900816 ((_ is Star!16865) (regOne!34242 r3!135))) b!6901731))

(assert (= (and b!6900816 ((_ is Union!16865) (regOne!34242 r3!135))) b!6901732))

(declare-fun b!6901734 () Bool)

(declare-fun e!4156330 () Bool)

(declare-fun tp!1900183 () Bool)

(declare-fun tp!1900185 () Bool)

(assert (=> b!6901734 (= e!4156330 (and tp!1900183 tp!1900185))))

(assert (=> b!6900816 (= tp!1900025 e!4156330)))

(declare-fun b!6901736 () Bool)

(declare-fun tp!1900184 () Bool)

(declare-fun tp!1900187 () Bool)

(assert (=> b!6901736 (= e!4156330 (and tp!1900184 tp!1900187))))

(declare-fun b!6901733 () Bool)

(assert (=> b!6901733 (= e!4156330 tp_is_empty!42955)))

(declare-fun b!6901735 () Bool)

(declare-fun tp!1900186 () Bool)

(assert (=> b!6901735 (= e!4156330 tp!1900186)))

(assert (= (and b!6900816 ((_ is ElementMatch!16865) (regTwo!34242 r3!135))) b!6901733))

(assert (= (and b!6900816 ((_ is Concat!25710) (regTwo!34242 r3!135))) b!6901734))

(assert (= (and b!6900816 ((_ is Star!16865) (regTwo!34242 r3!135))) b!6901735))

(assert (= (and b!6900816 ((_ is Union!16865) (regTwo!34242 r3!135))) b!6901736))

(declare-fun b!6901738 () Bool)

(declare-fun e!4156331 () Bool)

(declare-fun tp!1900188 () Bool)

(declare-fun tp!1900190 () Bool)

(assert (=> b!6901738 (= e!4156331 (and tp!1900188 tp!1900190))))

(assert (=> b!6900821 (= tp!1900026 e!4156331)))

(declare-fun b!6901740 () Bool)

(declare-fun tp!1900189 () Bool)

(declare-fun tp!1900192 () Bool)

(assert (=> b!6901740 (= e!4156331 (and tp!1900189 tp!1900192))))

(declare-fun b!6901737 () Bool)

(assert (=> b!6901737 (= e!4156331 tp_is_empty!42955)))

(declare-fun b!6901739 () Bool)

(declare-fun tp!1900191 () Bool)

(assert (=> b!6901739 (= e!4156331 tp!1900191)))

(assert (= (and b!6900821 ((_ is ElementMatch!16865) (reg!17194 r3!135))) b!6901737))

(assert (= (and b!6900821 ((_ is Concat!25710) (reg!17194 r3!135))) b!6901738))

(assert (= (and b!6900821 ((_ is Star!16865) (reg!17194 r3!135))) b!6901739))

(assert (= (and b!6900821 ((_ is Union!16865) (reg!17194 r3!135))) b!6901740))

(declare-fun b!6901742 () Bool)

(declare-fun e!4156332 () Bool)

(declare-fun tp!1900193 () Bool)

(declare-fun tp!1900195 () Bool)

(assert (=> b!6901742 (= e!4156332 (and tp!1900193 tp!1900195))))

(assert (=> b!6900826 (= tp!1900024 e!4156332)))

(declare-fun b!6901744 () Bool)

(declare-fun tp!1900194 () Bool)

(declare-fun tp!1900197 () Bool)

(assert (=> b!6901744 (= e!4156332 (and tp!1900194 tp!1900197))))

(declare-fun b!6901741 () Bool)

(assert (=> b!6901741 (= e!4156332 tp_is_empty!42955)))

(declare-fun b!6901743 () Bool)

(declare-fun tp!1900196 () Bool)

(assert (=> b!6901743 (= e!4156332 tp!1900196)))

(assert (= (and b!6900826 ((_ is ElementMatch!16865) (reg!17194 r2!6280))) b!6901741))

(assert (= (and b!6900826 ((_ is Concat!25710) (reg!17194 r2!6280))) b!6901742))

(assert (= (and b!6900826 ((_ is Star!16865) (reg!17194 r2!6280))) b!6901743))

(assert (= (and b!6900826 ((_ is Union!16865) (reg!17194 r2!6280))) b!6901744))

(declare-fun b!6901746 () Bool)

(declare-fun e!4156333 () Bool)

(declare-fun tp!1900198 () Bool)

(declare-fun tp!1900200 () Bool)

(assert (=> b!6901746 (= e!4156333 (and tp!1900198 tp!1900200))))

(assert (=> b!6900815 (= tp!1900032 e!4156333)))

(declare-fun b!6901748 () Bool)

(declare-fun tp!1900199 () Bool)

(declare-fun tp!1900202 () Bool)

(assert (=> b!6901748 (= e!4156333 (and tp!1900199 tp!1900202))))

(declare-fun b!6901745 () Bool)

(assert (=> b!6901745 (= e!4156333 tp_is_empty!42955)))

(declare-fun b!6901747 () Bool)

(declare-fun tp!1900201 () Bool)

(assert (=> b!6901747 (= e!4156333 tp!1900201)))

(assert (= (and b!6900815 ((_ is ElementMatch!16865) (reg!17194 r1!6342))) b!6901745))

(assert (= (and b!6900815 ((_ is Concat!25710) (reg!17194 r1!6342))) b!6901746))

(assert (= (and b!6900815 ((_ is Star!16865) (reg!17194 r1!6342))) b!6901747))

(assert (= (and b!6900815 ((_ is Union!16865) (reg!17194 r1!6342))) b!6901748))

(declare-fun b!6901750 () Bool)

(declare-fun e!4156334 () Bool)

(declare-fun tp!1900203 () Bool)

(declare-fun tp!1900205 () Bool)

(assert (=> b!6901750 (= e!4156334 (and tp!1900203 tp!1900205))))

(assert (=> b!6900814 (= tp!1900039 e!4156334)))

(declare-fun b!6901752 () Bool)

(declare-fun tp!1900204 () Bool)

(declare-fun tp!1900207 () Bool)

(assert (=> b!6901752 (= e!4156334 (and tp!1900204 tp!1900207))))

(declare-fun b!6901749 () Bool)

(assert (=> b!6901749 (= e!4156334 tp_is_empty!42955)))

(declare-fun b!6901751 () Bool)

(declare-fun tp!1900206 () Bool)

(assert (=> b!6901751 (= e!4156334 tp!1900206)))

(assert (= (and b!6900814 ((_ is ElementMatch!16865) (regOne!34243 r2!6280))) b!6901749))

(assert (= (and b!6900814 ((_ is Concat!25710) (regOne!34243 r2!6280))) b!6901750))

(assert (= (and b!6900814 ((_ is Star!16865) (regOne!34243 r2!6280))) b!6901751))

(assert (= (and b!6900814 ((_ is Union!16865) (regOne!34243 r2!6280))) b!6901752))

(declare-fun b!6901754 () Bool)

(declare-fun e!4156335 () Bool)

(declare-fun tp!1900208 () Bool)

(declare-fun tp!1900210 () Bool)

(assert (=> b!6901754 (= e!4156335 (and tp!1900208 tp!1900210))))

(assert (=> b!6900814 (= tp!1900034 e!4156335)))

(declare-fun b!6901756 () Bool)

(declare-fun tp!1900209 () Bool)

(declare-fun tp!1900212 () Bool)

(assert (=> b!6901756 (= e!4156335 (and tp!1900209 tp!1900212))))

(declare-fun b!6901753 () Bool)

(assert (=> b!6901753 (= e!4156335 tp_is_empty!42955)))

(declare-fun b!6901755 () Bool)

(declare-fun tp!1900211 () Bool)

(assert (=> b!6901755 (= e!4156335 tp!1900211)))

(assert (= (and b!6900814 ((_ is ElementMatch!16865) (regTwo!34243 r2!6280))) b!6901753))

(assert (= (and b!6900814 ((_ is Concat!25710) (regTwo!34243 r2!6280))) b!6901754))

(assert (= (and b!6900814 ((_ is Star!16865) (regTwo!34243 r2!6280))) b!6901755))

(assert (= (and b!6900814 ((_ is Union!16865) (regTwo!34243 r2!6280))) b!6901756))

(declare-fun b!6901761 () Bool)

(declare-fun e!4156338 () Bool)

(declare-fun tp!1900215 () Bool)

(assert (=> b!6901761 (= e!4156338 (and tp_is_empty!42955 tp!1900215))))

(assert (=> b!6900824 (= tp!1900035 e!4156338)))

(assert (= (and b!6900824 ((_ is Cons!66498) (t!380365 s!14361))) b!6901761))

(check-sat (not b!6901706) (not bm!627587) (not d!2161930) (not b!6901748) (not b!6901730) (not d!2161952) (not b!6901656) (not b!6900845) (not d!2161990) (not b!6901075) (not d!2161910) (not bm!627599) (not b!6901367) (not b!6901481) (not b!6901292) (not d!2161908) (not b!6901699) (not b!6901698) (not b!6901738) (not b!6900998) (not b!6901486) (not b!6901078) (not d!2162056) (not b!6901716) (not b!6901750) (not b!6901374) (not b!6901290) (not b!6901545) (not b!6901077) (not b!6901304) (not d!2161948) (not bm!627577) (not d!2161996) (not b!6901210) (not b!6901722) (not b!6901715) (not d!2161888) (not b!6901746) (not b!6901203) (not b!6901294) (not b!6901662) (not d!2162006) (not bm!627570) (not d!2161962) (not d!2162012) (not bm!627603) (not b!6901387) (not b!6901671) (not b!6901720) (not bm!627609) (not b!6901204) (not b!6901752) (not b!6901740) (not bm!627586) (not bm!627619) (not b!6901677) (not b!6901073) (not b!6901718) (not b!6901310) (not b!6901728) (not b!6901703) (not b!6901427) (not d!2162052) (not b!6901389) (not b!6901293) (not d!2161976) (not b!6901251) (not b!6901080) (not b!6901522) (not b!6901488) (not bm!627552) (not d!2161954) (not b!6901660) (not b!6901531) (not b!6901724) (not bm!627553) (not d!2161906) (not b!6901711) (not bm!627606) (not b!6901513) (not b!6901751) (not d!2161970) (not d!2162090) (not b!6901229) (not b!6901710) (not b!6900846) (not bm!627611) (not b!6901755) (not d!2161986) (not b!6901747) (not b!6901731) (not d!2161862) (not b!6901421) (not d!2162024) (not b!6901392) (not b!6901076) (not b!6901539) (not b!6901658) (not b!6901485) (not b!6901756) (not bm!627598) (not b!6901714) (not bm!627579) (not b!6901235) (not b!6901257) (not b!6901639) (not d!2161988) (not d!2161912) (not b!6901296) (not b!6901761) (not b!6901707) (not b!6901233) (not b!6901260) (not b!6901232) (not bm!627615) (not b!6901307) (not d!2162010) (not d!2161956) (not bm!627612) (not d!2162094) (not b!6901231) (not b!6901727) (not b!6901742) (not b!6901325) (not b!6901255) (not d!2161898) (not b!6901228) (not d!2161974) (not b!6901207) (not b!6901483) (not d!2161870) (not d!2162022) (not b!6901732) (not b!6901702) (not bm!627580) (not b!6901253) (not bm!627614) (not b!6901208) (not d!2162008) (not b!6901659) (not b!6901420) (not b!6901425) (not d!2161860) (not bm!627585) (not bm!627588) (not bm!627578) (not b!6901303) (not d!2161914) (not b!6901683) (not d!2162098) (not bm!627542) (not b!6901306) (not b!6901484) (not b!6901206) (not b!6901319) (not bm!627605) (not b!6901743) (not b!6901256) (not b!6901386) (not d!2161980) (not b!6901036) (not bm!627573) (not d!2161886) (not b!6901004) (not d!2161916) (not b!6901734) tp_is_empty!42955 (not b!6901635) (not b!6901258) (not bm!627617) (not b!6901250) (not b!6901370) (not b!6901744) (not d!2162038) (not b!6901655) (not b!6901632) (not b!6901700) (not b!6901719) (not b!6901380) (not b!6901423) (not d!2161864) (not d!2162014) (not b!6901394) (not b!6901633) (not bm!627608) (not b!6901361) (not d!2162086) (not b!6901373) (not b!6901726) (not bm!627541) (not bm!627590) (not bm!627618) (not b!6901424) (not b!6901735) (not b!6901042) (not b!6901712) (not d!2162050) (not d!2161944) (not b!6901704) (not b!6901473) (not b!6901736) (not b!6901391) (not bm!627616) (not b!6901636) (not d!2161942) (not bm!627602) (not b!6901369) (not b!6901754) (not b!6901739) (not b!6901390) (not b!6901289) (not d!2162028) (not b!6901637) (not b!6901723) (not d!2162088) (not b!6901708) (not b!6901308))
(check-sat)
