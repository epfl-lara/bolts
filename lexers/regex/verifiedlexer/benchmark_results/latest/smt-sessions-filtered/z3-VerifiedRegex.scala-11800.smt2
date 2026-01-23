; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!664594 () Bool)

(assert start!664594)

(declare-fun b!6897913 () Bool)

(assert (=> b!6897913 true))

(assert (=> b!6897913 true))

(assert (=> b!6897913 true))

(declare-fun lambda!391248 () Int)

(declare-fun lambda!391247 () Int)

(assert (=> b!6897913 (not (= lambda!391248 lambda!391247))))

(assert (=> b!6897913 true))

(assert (=> b!6897913 true))

(assert (=> b!6897913 true))

(declare-fun bs!1841157 () Bool)

(declare-fun b!6897917 () Bool)

(assert (= bs!1841157 (and b!6897917 b!6897913)))

(declare-datatypes ((C!33964 0))(
  ( (C!33965 (val!26684 Int)) )
))
(declare-datatypes ((Regex!16847 0))(
  ( (ElementMatch!16847 (c!1281923 C!33964)) (Concat!25692 (regOne!34206 Regex!16847) (regTwo!34206 Regex!16847)) (EmptyExpr!16847) (Star!16847 (reg!17176 Regex!16847)) (EmptyLang!16847) (Union!16847 (regOne!34207 Regex!16847) (regTwo!34207 Regex!16847)) )
))
(declare-fun r3!135 () Regex!16847)

(declare-datatypes ((List!66604 0))(
  ( (Nil!66480) (Cons!66480 (h!72928 C!33964) (t!380347 List!66604)) )
))
(declare-datatypes ((tuple2!67428 0))(
  ( (tuple2!67429 (_1!37017 List!66604) (_2!37017 List!66604)) )
))
(declare-fun lt!2464699 () tuple2!67428)

(declare-fun s!14361 () List!66604)

(declare-fun lambda!391249 () Int)

(declare-fun lt!2464712 () Regex!16847)

(declare-fun r1!6342 () Regex!16847)

(declare-fun r2!6280 () Regex!16847)

(assert (=> bs!1841157 (= (and (= (_2!37017 lt!2464699) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464712)) (= lambda!391249 lambda!391247))))

(assert (=> bs!1841157 (not (= lambda!391249 lambda!391248))))

(assert (=> b!6897917 true))

(assert (=> b!6897917 true))

(assert (=> b!6897917 true))

(declare-fun lambda!391250 () Int)

(assert (=> bs!1841157 (not (= lambda!391250 lambda!391247))))

(assert (=> bs!1841157 (= (and (= (_2!37017 lt!2464699) s!14361) (= r2!6280 r1!6342) (= r3!135 lt!2464712)) (= lambda!391250 lambda!391248))))

(assert (=> b!6897917 (not (= lambda!391250 lambda!391249))))

(assert (=> b!6897917 true))

(assert (=> b!6897917 true))

(assert (=> b!6897917 true))

(declare-fun b!6897901 () Bool)

(declare-fun e!4154508 () Bool)

(declare-fun tp!1898987 () Bool)

(assert (=> b!6897901 (= e!4154508 tp!1898987)))

(declare-fun b!6897902 () Bool)

(declare-fun e!4154506 () Bool)

(declare-fun e!4154502 () Bool)

(assert (=> b!6897902 (= e!4154506 e!4154502)))

(declare-fun res!2812455 () Bool)

(assert (=> b!6897902 (=> res!2812455 e!4154502)))

(declare-datatypes ((Option!16626 0))(
  ( (None!16625) (Some!16625 (v!52897 tuple2!67428)) )
))
(declare-fun lt!2464709 () Option!16626)

(declare-fun isDefined!13329 (Option!16626) Bool)

(assert (=> b!6897902 (= res!2812455 (not (isDefined!13329 lt!2464709)))))

(declare-fun findConcatSeparation!3040 (Regex!16847 Regex!16847 List!66604 List!66604 List!66604) Option!16626)

(assert (=> b!6897902 (= lt!2464709 (findConcatSeparation!3040 r1!6342 lt!2464712 Nil!66480 s!14361 s!14361))))

(declare-fun b!6897903 () Bool)

(declare-fun e!4154510 () Bool)

(assert (=> b!6897903 (= e!4154510 true)))

(declare-fun lt!2464694 () Regex!16847)

(declare-fun lt!2464698 () List!66604)

(declare-fun matchR!8992 (Regex!16847 List!66604) Bool)

(declare-fun matchRSpec!3910 (Regex!16847 List!66604) Bool)

(assert (=> b!6897903 (= (matchR!8992 lt!2464694 lt!2464698) (matchRSpec!3910 lt!2464694 lt!2464698))))

(declare-datatypes ((Unit!160414 0))(
  ( (Unit!160415) )
))
(declare-fun lt!2464690 () Unit!160414)

(declare-fun mainMatchTheorem!3910 (Regex!16847 List!66604) Unit!160414)

(assert (=> b!6897903 (= lt!2464690 (mainMatchTheorem!3910 lt!2464694 lt!2464698))))

(declare-fun lt!2464691 () tuple2!67428)

(declare-fun lt!2464708 () List!66604)

(declare-fun ++!14900 (List!66604 List!66604) List!66604)

(assert (=> b!6897903 (= (++!14900 lt!2464698 (_2!37017 lt!2464691)) lt!2464708)))

(assert (=> b!6897903 (= lt!2464698 (++!14900 (_1!37017 lt!2464699) (_1!37017 lt!2464691)))))

(declare-fun lt!2464703 () Unit!160414)

(declare-fun lemmaConcatAssociativity!2980 (List!66604 List!66604 List!66604) Unit!160414)

(assert (=> b!6897903 (= lt!2464703 (lemmaConcatAssociativity!2980 (_1!37017 lt!2464699) (_1!37017 lt!2464691) (_2!37017 lt!2464691)))))

(declare-fun b!6897904 () Bool)

(declare-fun e!4154505 () Bool)

(assert (=> b!6897904 (= e!4154505 (not e!4154506))))

(declare-fun res!2812459 () Bool)

(assert (=> b!6897904 (=> res!2812459 e!4154506)))

(declare-fun lt!2464713 () Bool)

(assert (=> b!6897904 (= res!2812459 lt!2464713)))

(declare-fun lt!2464695 () Regex!16847)

(assert (=> b!6897904 (= (matchR!8992 lt!2464695 s!14361) (matchRSpec!3910 lt!2464695 s!14361))))

(declare-fun lt!2464707 () Unit!160414)

(assert (=> b!6897904 (= lt!2464707 (mainMatchTheorem!3910 lt!2464695 s!14361))))

(declare-fun lt!2464704 () Regex!16847)

(assert (=> b!6897904 (= lt!2464713 (matchRSpec!3910 lt!2464704 s!14361))))

(assert (=> b!6897904 (= lt!2464713 (matchR!8992 lt!2464704 s!14361))))

(declare-fun lt!2464711 () Unit!160414)

(assert (=> b!6897904 (= lt!2464711 (mainMatchTheorem!3910 lt!2464704 s!14361))))

(assert (=> b!6897904 (= lt!2464695 (Concat!25692 r1!6342 lt!2464712))))

(assert (=> b!6897904 (= lt!2464712 (Concat!25692 r2!6280 r3!135))))

(assert (=> b!6897904 (= lt!2464704 (Concat!25692 lt!2464694 r3!135))))

(assert (=> b!6897904 (= lt!2464694 (Concat!25692 r1!6342 r2!6280))))

(declare-fun res!2812458 () Bool)

(assert (=> start!664594 (=> (not res!2812458) (not e!4154505))))

(declare-fun validRegex!8555 (Regex!16847) Bool)

(assert (=> start!664594 (= res!2812458 (validRegex!8555 r1!6342))))

(assert (=> start!664594 e!4154505))

(declare-fun e!4154501 () Bool)

(assert (=> start!664594 e!4154501))

(assert (=> start!664594 e!4154508))

(declare-fun e!4154509 () Bool)

(assert (=> start!664594 e!4154509))

(declare-fun e!4154504 () Bool)

(assert (=> start!664594 e!4154504))

(declare-fun b!6897905 () Bool)

(declare-fun tp_is_empty!42919 () Bool)

(assert (=> b!6897905 (= e!4154501 tp_is_empty!42919)))

(declare-fun b!6897906 () Bool)

(declare-fun tp!1898985 () Bool)

(declare-fun tp!1898999 () Bool)

(assert (=> b!6897906 (= e!4154509 (and tp!1898985 tp!1898999))))

(declare-fun b!6897907 () Bool)

(declare-fun res!2812462 () Bool)

(assert (=> b!6897907 (=> (not res!2812462) (not e!4154505))))

(assert (=> b!6897907 (= res!2812462 (validRegex!8555 r3!135))))

(declare-fun b!6897908 () Bool)

(assert (=> b!6897908 (= e!4154509 tp_is_empty!42919)))

(declare-fun b!6897909 () Bool)

(declare-fun res!2812456 () Bool)

(assert (=> b!6897909 (=> (not res!2812456) (not e!4154505))))

(assert (=> b!6897909 (= res!2812456 (validRegex!8555 r2!6280))))

(declare-fun b!6897910 () Bool)

(declare-fun tp!1898997 () Bool)

(assert (=> b!6897910 (= e!4154504 (and tp_is_empty!42919 tp!1898997))))

(declare-fun b!6897911 () Bool)

(declare-fun tp!1898988 () Bool)

(declare-fun tp!1898989 () Bool)

(assert (=> b!6897911 (= e!4154509 (and tp!1898988 tp!1898989))))

(declare-fun b!6897912 () Bool)

(assert (=> b!6897912 (= e!4154508 tp_is_empty!42919)))

(declare-fun e!4154503 () Bool)

(assert (=> b!6897913 (= e!4154502 e!4154503)))

(declare-fun res!2812463 () Bool)

(assert (=> b!6897913 (=> res!2812463 e!4154503)))

(declare-fun lt!2464692 () Bool)

(assert (=> b!6897913 (= res!2812463 (not lt!2464692))))

(assert (=> b!6897913 (= lt!2464692 (matchRSpec!3910 r1!6342 (_1!37017 lt!2464699)))))

(assert (=> b!6897913 (= lt!2464692 (matchR!8992 r1!6342 (_1!37017 lt!2464699)))))

(declare-fun lt!2464702 () Unit!160414)

(assert (=> b!6897913 (= lt!2464702 (mainMatchTheorem!3910 r1!6342 (_1!37017 lt!2464699)))))

(declare-fun get!23221 (Option!16626) tuple2!67428)

(assert (=> b!6897913 (= lt!2464699 (get!23221 lt!2464709))))

(declare-fun Exists!3855 (Int) Bool)

(assert (=> b!6897913 (= (Exists!3855 lambda!391247) (Exists!3855 lambda!391248))))

(declare-fun lt!2464700 () Unit!160414)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2328 (Regex!16847 Regex!16847 List!66604) Unit!160414)

(assert (=> b!6897913 (= lt!2464700 (lemmaExistCutMatchRandMatchRSpecEquivalent!2328 r1!6342 lt!2464712 s!14361))))

(assert (=> b!6897913 (Exists!3855 lambda!391247)))

(declare-fun lt!2464705 () Unit!160414)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2802 (Regex!16847 Regex!16847 List!66604) Unit!160414)

(assert (=> b!6897913 (= lt!2464705 (lemmaFindConcatSeparationEquivalentToExists!2802 r1!6342 lt!2464712 s!14361))))

(declare-fun b!6897914 () Bool)

(declare-fun tp!1898990 () Bool)

(declare-fun tp!1898986 () Bool)

(assert (=> b!6897914 (= e!4154508 (and tp!1898990 tp!1898986))))

(declare-fun b!6897915 () Bool)

(declare-fun tp!1898991 () Bool)

(assert (=> b!6897915 (= e!4154509 tp!1898991)))

(declare-fun b!6897916 () Bool)

(declare-fun res!2812464 () Bool)

(assert (=> b!6897916 (=> res!2812464 e!4154503)))

(assert (=> b!6897916 (= res!2812464 (not (matchR!8992 lt!2464712 (_2!37017 lt!2464699))))))

(declare-fun e!4154507 () Bool)

(assert (=> b!6897917 (= e!4154503 e!4154507)))

(declare-fun res!2812460 () Bool)

(assert (=> b!6897917 (=> res!2812460 e!4154507)))

(assert (=> b!6897917 (= res!2812460 (not (matchR!8992 r2!6280 (_1!37017 lt!2464691))))))

(declare-fun lt!2464710 () Option!16626)

(assert (=> b!6897917 (= lt!2464691 (get!23221 lt!2464710))))

(assert (=> b!6897917 (= (Exists!3855 lambda!391249) (Exists!3855 lambda!391250))))

(declare-fun lt!2464701 () Unit!160414)

(assert (=> b!6897917 (= lt!2464701 (lemmaExistCutMatchRandMatchRSpecEquivalent!2328 r2!6280 r3!135 (_2!37017 lt!2464699)))))

(assert (=> b!6897917 (= (isDefined!13329 lt!2464710) (Exists!3855 lambda!391249))))

(assert (=> b!6897917 (= lt!2464710 (findConcatSeparation!3040 r2!6280 r3!135 Nil!66480 (_2!37017 lt!2464699) (_2!37017 lt!2464699)))))

(declare-fun lt!2464697 () Unit!160414)

(assert (=> b!6897917 (= lt!2464697 (lemmaFindConcatSeparationEquivalentToExists!2802 r2!6280 r3!135 (_2!37017 lt!2464699)))))

(assert (=> b!6897917 (matchRSpec!3910 lt!2464712 (_2!37017 lt!2464699))))

(declare-fun lt!2464693 () Unit!160414)

(assert (=> b!6897917 (= lt!2464693 (mainMatchTheorem!3910 lt!2464712 (_2!37017 lt!2464699)))))

(declare-fun b!6897918 () Bool)

(declare-fun tp!1898984 () Bool)

(declare-fun tp!1898998 () Bool)

(assert (=> b!6897918 (= e!4154501 (and tp!1898984 tp!1898998))))

(declare-fun b!6897919 () Bool)

(declare-fun tp!1898992 () Bool)

(declare-fun tp!1898993 () Bool)

(assert (=> b!6897919 (= e!4154501 (and tp!1898992 tp!1898993))))

(declare-fun b!6897920 () Bool)

(assert (=> b!6897920 (= e!4154507 e!4154510)))

(declare-fun res!2812457 () Bool)

(assert (=> b!6897920 (=> res!2812457 e!4154510)))

(assert (=> b!6897920 (= res!2812457 (not (= lt!2464708 s!14361)))))

(assert (=> b!6897920 (= lt!2464708 (++!14900 (_1!37017 lt!2464699) (++!14900 (_1!37017 lt!2464691) (_2!37017 lt!2464691))))))

(assert (=> b!6897920 (matchRSpec!3910 r3!135 (_2!37017 lt!2464691))))

(declare-fun lt!2464706 () Unit!160414)

(assert (=> b!6897920 (= lt!2464706 (mainMatchTheorem!3910 r3!135 (_2!37017 lt!2464691)))))

(assert (=> b!6897920 (matchRSpec!3910 r2!6280 (_1!37017 lt!2464691))))

(declare-fun lt!2464696 () Unit!160414)

(assert (=> b!6897920 (= lt!2464696 (mainMatchTheorem!3910 r2!6280 (_1!37017 lt!2464691)))))

(declare-fun b!6897921 () Bool)

(declare-fun res!2812461 () Bool)

(assert (=> b!6897921 (=> res!2812461 e!4154507)))

(assert (=> b!6897921 (= res!2812461 (not (matchR!8992 r3!135 (_2!37017 lt!2464691))))))

(declare-fun b!6897922 () Bool)

(declare-fun tp!1898995 () Bool)

(declare-fun tp!1898994 () Bool)

(assert (=> b!6897922 (= e!4154508 (and tp!1898995 tp!1898994))))

(declare-fun b!6897923 () Bool)

(declare-fun tp!1898996 () Bool)

(assert (=> b!6897923 (= e!4154501 tp!1898996)))

(assert (= (and start!664594 res!2812458) b!6897909))

(assert (= (and b!6897909 res!2812456) b!6897907))

(assert (= (and b!6897907 res!2812462) b!6897904))

(assert (= (and b!6897904 (not res!2812459)) b!6897902))

(assert (= (and b!6897902 (not res!2812455)) b!6897913))

(assert (= (and b!6897913 (not res!2812463)) b!6897916))

(assert (= (and b!6897916 (not res!2812464)) b!6897917))

(assert (= (and b!6897917 (not res!2812460)) b!6897921))

(assert (= (and b!6897921 (not res!2812461)) b!6897920))

(assert (= (and b!6897920 (not res!2812457)) b!6897903))

(get-info :version)

(assert (= (and start!664594 ((_ is ElementMatch!16847) r1!6342)) b!6897905))

(assert (= (and start!664594 ((_ is Concat!25692) r1!6342)) b!6897918))

(assert (= (and start!664594 ((_ is Star!16847) r1!6342)) b!6897923))

(assert (= (and start!664594 ((_ is Union!16847) r1!6342)) b!6897919))

(assert (= (and start!664594 ((_ is ElementMatch!16847) r2!6280)) b!6897912))

(assert (= (and start!664594 ((_ is Concat!25692) r2!6280)) b!6897914))

(assert (= (and start!664594 ((_ is Star!16847) r2!6280)) b!6897901))

(assert (= (and start!664594 ((_ is Union!16847) r2!6280)) b!6897922))

(assert (= (and start!664594 ((_ is ElementMatch!16847) r3!135)) b!6897908))

(assert (= (and start!664594 ((_ is Concat!25692) r3!135)) b!6897911))

(assert (= (and start!664594 ((_ is Star!16847) r3!135)) b!6897915))

(assert (= (and start!664594 ((_ is Union!16847) r3!135)) b!6897906))

(assert (= (and start!664594 ((_ is Cons!66480) s!14361)) b!6897910))

(declare-fun m!7616374 () Bool)

(assert (=> b!6897902 m!7616374))

(declare-fun m!7616376 () Bool)

(assert (=> b!6897902 m!7616376))

(declare-fun m!7616378 () Bool)

(assert (=> b!6897907 m!7616378))

(declare-fun m!7616380 () Bool)

(assert (=> b!6897909 m!7616380))

(declare-fun m!7616382 () Bool)

(assert (=> b!6897921 m!7616382))

(declare-fun m!7616384 () Bool)

(assert (=> b!6897904 m!7616384))

(declare-fun m!7616386 () Bool)

(assert (=> b!6897904 m!7616386))

(declare-fun m!7616388 () Bool)

(assert (=> b!6897904 m!7616388))

(declare-fun m!7616390 () Bool)

(assert (=> b!6897904 m!7616390))

(declare-fun m!7616392 () Bool)

(assert (=> b!6897904 m!7616392))

(declare-fun m!7616394 () Bool)

(assert (=> b!6897904 m!7616394))

(declare-fun m!7616396 () Bool)

(assert (=> b!6897920 m!7616396))

(declare-fun m!7616398 () Bool)

(assert (=> b!6897920 m!7616398))

(declare-fun m!7616400 () Bool)

(assert (=> b!6897920 m!7616400))

(declare-fun m!7616402 () Bool)

(assert (=> b!6897920 m!7616402))

(declare-fun m!7616404 () Bool)

(assert (=> b!6897920 m!7616404))

(declare-fun m!7616406 () Bool)

(assert (=> b!6897920 m!7616406))

(assert (=> b!6897920 m!7616402))

(declare-fun m!7616408 () Bool)

(assert (=> start!664594 m!7616408))

(declare-fun m!7616410 () Bool)

(assert (=> b!6897903 m!7616410))

(declare-fun m!7616412 () Bool)

(assert (=> b!6897903 m!7616412))

(declare-fun m!7616414 () Bool)

(assert (=> b!6897903 m!7616414))

(declare-fun m!7616416 () Bool)

(assert (=> b!6897903 m!7616416))

(declare-fun m!7616418 () Bool)

(assert (=> b!6897903 m!7616418))

(declare-fun m!7616420 () Bool)

(assert (=> b!6897903 m!7616420))

(declare-fun m!7616422 () Bool)

(assert (=> b!6897913 m!7616422))

(declare-fun m!7616424 () Bool)

(assert (=> b!6897913 m!7616424))

(declare-fun m!7616426 () Bool)

(assert (=> b!6897913 m!7616426))

(declare-fun m!7616428 () Bool)

(assert (=> b!6897913 m!7616428))

(declare-fun m!7616430 () Bool)

(assert (=> b!6897913 m!7616430))

(declare-fun m!7616432 () Bool)

(assert (=> b!6897913 m!7616432))

(assert (=> b!6897913 m!7616424))

(declare-fun m!7616434 () Bool)

(assert (=> b!6897913 m!7616434))

(declare-fun m!7616436 () Bool)

(assert (=> b!6897913 m!7616436))

(declare-fun m!7616438 () Bool)

(assert (=> b!6897916 m!7616438))

(declare-fun m!7616440 () Bool)

(assert (=> b!6897917 m!7616440))

(declare-fun m!7616442 () Bool)

(assert (=> b!6897917 m!7616442))

(declare-fun m!7616444 () Bool)

(assert (=> b!6897917 m!7616444))

(declare-fun m!7616446 () Bool)

(assert (=> b!6897917 m!7616446))

(declare-fun m!7616448 () Bool)

(assert (=> b!6897917 m!7616448))

(declare-fun m!7616450 () Bool)

(assert (=> b!6897917 m!7616450))

(declare-fun m!7616452 () Bool)

(assert (=> b!6897917 m!7616452))

(declare-fun m!7616454 () Bool)

(assert (=> b!6897917 m!7616454))

(declare-fun m!7616456 () Bool)

(assert (=> b!6897917 m!7616456))

(declare-fun m!7616458 () Bool)

(assert (=> b!6897917 m!7616458))

(assert (=> b!6897917 m!7616446))

(check-sat (not b!6897921) (not b!6897902) (not b!6897910) (not b!6897901) (not start!664594) (not b!6897917) (not b!6897903) (not b!6897913) (not b!6897920) (not b!6897919) (not b!6897904) tp_is_empty!42919 (not b!6897911) (not b!6897922) (not b!6897907) (not b!6897916) (not b!6897909) (not b!6897906) (not b!6897915) (not b!6897923) (not b!6897918) (not b!6897914))
(check-sat)
