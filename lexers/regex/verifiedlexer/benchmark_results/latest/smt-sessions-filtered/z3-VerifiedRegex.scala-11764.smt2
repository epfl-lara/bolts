; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!663978 () Bool)

(assert start!663978)

(declare-fun b!6883536 () Bool)

(assert (=> b!6883536 true))

(assert (=> b!6883536 true))

(assert (=> b!6883536 true))

(declare-fun lambda!389696 () Int)

(declare-fun lambda!389695 () Int)

(assert (=> b!6883536 (not (= lambda!389696 lambda!389695))))

(assert (=> b!6883536 true))

(assert (=> b!6883536 true))

(assert (=> b!6883536 true))

(declare-fun bs!1838277 () Bool)

(declare-fun b!6883546 () Bool)

(assert (= bs!1838277 (and b!6883546 b!6883536)))

(declare-datatypes ((C!33820 0))(
  ( (C!33821 (val!26612 Int)) )
))
(declare-datatypes ((Regex!16775 0))(
  ( (ElementMatch!16775 (c!1280377 C!33820)) (Concat!25620 (regOne!34062 Regex!16775) (regTwo!34062 Regex!16775)) (EmptyExpr!16775) (Star!16775 (reg!17104 Regex!16775)) (EmptyLang!16775) (Union!16775 (regOne!34063 Regex!16775) (regTwo!34063 Regex!16775)) )
))
(declare-fun r1!6342 () Regex!16775)

(declare-datatypes ((List!66532 0))(
  ( (Nil!66408) (Cons!66408 (h!72856 C!33820) (t!380275 List!66532)) )
))
(declare-datatypes ((tuple2!67296 0))(
  ( (tuple2!67297 (_1!36951 List!66532) (_2!36951 List!66532)) )
))
(declare-fun lt!2460299 () tuple2!67296)

(declare-fun r3!135 () Regex!16775)

(declare-fun s!14361 () List!66532)

(declare-fun lambda!389697 () Int)

(declare-fun r2!6280 () Regex!16775)

(declare-fun lt!2460296 () Regex!16775)

(assert (=> bs!1838277 (= (and (= (_1!36951 lt!2460299) s!14361) (= r1!6342 lt!2460296) (= r2!6280 r3!135)) (= lambda!389697 lambda!389695))))

(assert (=> bs!1838277 (not (= lambda!389697 lambda!389696))))

(assert (=> b!6883546 true))

(assert (=> b!6883546 true))

(assert (=> b!6883546 true))

(declare-fun lambda!389698 () Int)

(assert (=> bs!1838277 (not (= lambda!389698 lambda!389695))))

(assert (=> bs!1838277 (= (and (= (_1!36951 lt!2460299) s!14361) (= r1!6342 lt!2460296) (= r2!6280 r3!135)) (= lambda!389698 lambda!389696))))

(assert (=> b!6883546 (not (= lambda!389698 lambda!389697))))

(assert (=> b!6883546 true))

(assert (=> b!6883546 true))

(assert (=> b!6883546 true))

(declare-fun b!6883529 () Bool)

(declare-fun e!4147795 () Bool)

(declare-fun e!4147794 () Bool)

(assert (=> b!6883529 (= e!4147795 (not e!4147794))))

(declare-fun res!2806009 () Bool)

(assert (=> b!6883529 (=> res!2806009 e!4147794)))

(declare-fun lt!2460295 () Bool)

(assert (=> b!6883529 (= res!2806009 (not lt!2460295))))

(declare-fun lt!2460287 () Regex!16775)

(declare-fun matchR!8920 (Regex!16775 List!66532) Bool)

(declare-fun matchRSpec!3838 (Regex!16775 List!66532) Bool)

(assert (=> b!6883529 (= (matchR!8920 lt!2460287 s!14361) (matchRSpec!3838 lt!2460287 s!14361))))

(declare-datatypes ((Unit!160270 0))(
  ( (Unit!160271) )
))
(declare-fun lt!2460293 () Unit!160270)

(declare-fun mainMatchTheorem!3838 (Regex!16775 List!66532) Unit!160270)

(assert (=> b!6883529 (= lt!2460293 (mainMatchTheorem!3838 lt!2460287 s!14361))))

(declare-fun lt!2460288 () Regex!16775)

(assert (=> b!6883529 (= lt!2460295 (matchRSpec!3838 lt!2460288 s!14361))))

(assert (=> b!6883529 (= lt!2460295 (matchR!8920 lt!2460288 s!14361))))

(declare-fun lt!2460298 () Unit!160270)

(assert (=> b!6883529 (= lt!2460298 (mainMatchTheorem!3838 lt!2460288 s!14361))))

(assert (=> b!6883529 (= lt!2460287 (Concat!25620 r1!6342 (Concat!25620 r2!6280 r3!135)))))

(assert (=> b!6883529 (= lt!2460288 (Concat!25620 lt!2460296 r3!135))))

(assert (=> b!6883529 (= lt!2460296 (Concat!25620 r1!6342 r2!6280))))

(declare-fun b!6883530 () Bool)

(declare-fun e!4147793 () Bool)

(declare-fun tp_is_empty!42775 () Bool)

(assert (=> b!6883530 (= e!4147793 tp_is_empty!42775)))

(declare-fun b!6883531 () Bool)

(declare-fun e!4147796 () Bool)

(declare-fun tp!1893425 () Bool)

(assert (=> b!6883531 (= e!4147796 tp!1893425)))

(declare-fun b!6883532 () Bool)

(declare-fun e!4147798 () Bool)

(declare-fun tp!1893418 () Bool)

(assert (=> b!6883532 (= e!4147798 tp!1893418)))

(declare-fun b!6883533 () Bool)

(declare-fun tp!1893424 () Bool)

(declare-fun tp!1893416 () Bool)

(assert (=> b!6883533 (= e!4147798 (and tp!1893424 tp!1893416))))

(declare-fun b!6883534 () Bool)

(declare-fun tp!1893417 () Bool)

(declare-fun tp!1893430 () Bool)

(assert (=> b!6883534 (= e!4147793 (and tp!1893417 tp!1893430))))

(declare-fun res!2806011 () Bool)

(assert (=> start!663978 (=> (not res!2806011) (not e!4147795))))

(declare-fun validRegex!8483 (Regex!16775) Bool)

(assert (=> start!663978 (= res!2806011 (validRegex!8483 r1!6342))))

(assert (=> start!663978 e!4147795))

(assert (=> start!663978 e!4147793))

(assert (=> start!663978 e!4147796))

(assert (=> start!663978 e!4147798))

(declare-fun e!4147792 () Bool)

(assert (=> start!663978 e!4147792))

(declare-fun b!6883535 () Bool)

(declare-fun res!2806007 () Bool)

(declare-fun e!4147797 () Bool)

(assert (=> b!6883535 (=> res!2806007 e!4147797)))

(assert (=> b!6883535 (= res!2806007 (not (matchR!8920 r3!135 (_2!36951 lt!2460299))))))

(assert (=> b!6883536 (= e!4147794 e!4147797)))

(declare-fun res!2806008 () Bool)

(assert (=> b!6883536 (=> res!2806008 e!4147797)))

(declare-fun lt!2460294 () Bool)

(assert (=> b!6883536 (= res!2806008 (not lt!2460294))))

(assert (=> b!6883536 (= lt!2460294 (matchRSpec!3838 lt!2460296 (_1!36951 lt!2460299)))))

(assert (=> b!6883536 (= lt!2460294 (matchR!8920 lt!2460296 (_1!36951 lt!2460299)))))

(declare-fun lt!2460297 () Unit!160270)

(assert (=> b!6883536 (= lt!2460297 (mainMatchTheorem!3838 lt!2460296 (_1!36951 lt!2460299)))))

(declare-datatypes ((Option!16560 0))(
  ( (None!16559) (Some!16559 (v!52831 tuple2!67296)) )
))
(declare-fun lt!2460290 () Option!16560)

(declare-fun get!23125 (Option!16560) tuple2!67296)

(assert (=> b!6883536 (= lt!2460299 (get!23125 lt!2460290))))

(declare-fun Exists!3787 (Int) Bool)

(assert (=> b!6883536 (= (Exists!3787 lambda!389695) (Exists!3787 lambda!389696))))

(declare-fun lt!2460292 () Unit!160270)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2266 (Regex!16775 Regex!16775 List!66532) Unit!160270)

(assert (=> b!6883536 (= lt!2460292 (lemmaExistCutMatchRandMatchRSpecEquivalent!2266 lt!2460296 r3!135 s!14361))))

(declare-fun isDefined!13263 (Option!16560) Bool)

(assert (=> b!6883536 (= (isDefined!13263 lt!2460290) (Exists!3787 lambda!389695))))

(declare-fun findConcatSeparation!2974 (Regex!16775 Regex!16775 List!66532 List!66532 List!66532) Option!16560)

(assert (=> b!6883536 (= lt!2460290 (findConcatSeparation!2974 lt!2460296 r3!135 Nil!66408 s!14361 s!14361))))

(declare-fun lt!2460291 () Unit!160270)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2738 (Regex!16775 Regex!16775 List!66532) Unit!160270)

(assert (=> b!6883536 (= lt!2460291 (lemmaFindConcatSeparationEquivalentToExists!2738 lt!2460296 r3!135 s!14361))))

(declare-fun b!6883537 () Bool)

(declare-fun tp!1893420 () Bool)

(declare-fun tp!1893428 () Bool)

(assert (=> b!6883537 (= e!4147796 (and tp!1893420 tp!1893428))))

(declare-fun b!6883538 () Bool)

(declare-fun tp!1893427 () Bool)

(assert (=> b!6883538 (= e!4147792 (and tp_is_empty!42775 tp!1893427))))

(declare-fun b!6883539 () Bool)

(assert (=> b!6883539 (= e!4147796 tp_is_empty!42775)))

(declare-fun b!6883540 () Bool)

(declare-fun tp!1893426 () Bool)

(declare-fun tp!1893429 () Bool)

(assert (=> b!6883540 (= e!4147796 (and tp!1893426 tp!1893429))))

(declare-fun b!6883541 () Bool)

(declare-fun res!2806010 () Bool)

(assert (=> b!6883541 (=> (not res!2806010) (not e!4147795))))

(assert (=> b!6883541 (= res!2806010 (validRegex!8483 r2!6280))))

(declare-fun b!6883542 () Bool)

(declare-fun res!2806012 () Bool)

(assert (=> b!6883542 (=> (not res!2806012) (not e!4147795))))

(assert (=> b!6883542 (= res!2806012 (validRegex!8483 r3!135))))

(declare-fun b!6883543 () Bool)

(declare-fun tp!1893419 () Bool)

(assert (=> b!6883543 (= e!4147793 tp!1893419)))

(declare-fun b!6883544 () Bool)

(declare-fun tp!1893431 () Bool)

(declare-fun tp!1893422 () Bool)

(assert (=> b!6883544 (= e!4147793 (and tp!1893431 tp!1893422))))

(declare-fun b!6883545 () Bool)

(assert (=> b!6883545 (= e!4147798 tp_is_empty!42775)))

(assert (=> b!6883546 (= e!4147797 true)))

(assert (=> b!6883546 (= (Exists!3787 lambda!389697) (Exists!3787 lambda!389698))))

(declare-fun lt!2460289 () Unit!160270)

(assert (=> b!6883546 (= lt!2460289 (lemmaExistCutMatchRandMatchRSpecEquivalent!2266 r1!6342 r2!6280 (_1!36951 lt!2460299)))))

(assert (=> b!6883546 (= (isDefined!13263 (findConcatSeparation!2974 r1!6342 r2!6280 Nil!66408 (_1!36951 lt!2460299) (_1!36951 lt!2460299))) (Exists!3787 lambda!389697))))

(declare-fun lt!2460286 () Unit!160270)

(assert (=> b!6883546 (= lt!2460286 (lemmaFindConcatSeparationEquivalentToExists!2738 r1!6342 r2!6280 (_1!36951 lt!2460299)))))

(declare-fun b!6883547 () Bool)

(declare-fun tp!1893421 () Bool)

(declare-fun tp!1893423 () Bool)

(assert (=> b!6883547 (= e!4147798 (and tp!1893421 tp!1893423))))

(assert (= (and start!663978 res!2806011) b!6883541))

(assert (= (and b!6883541 res!2806010) b!6883542))

(assert (= (and b!6883542 res!2806012) b!6883529))

(assert (= (and b!6883529 (not res!2806009)) b!6883536))

(assert (= (and b!6883536 (not res!2806008)) b!6883535))

(assert (= (and b!6883535 (not res!2806007)) b!6883546))

(get-info :version)

(assert (= (and start!663978 ((_ is ElementMatch!16775) r1!6342)) b!6883530))

(assert (= (and start!663978 ((_ is Concat!25620) r1!6342)) b!6883534))

(assert (= (and start!663978 ((_ is Star!16775) r1!6342)) b!6883543))

(assert (= (and start!663978 ((_ is Union!16775) r1!6342)) b!6883544))

(assert (= (and start!663978 ((_ is ElementMatch!16775) r2!6280)) b!6883539))

(assert (= (and start!663978 ((_ is Concat!25620) r2!6280)) b!6883537))

(assert (= (and start!663978 ((_ is Star!16775) r2!6280)) b!6883531))

(assert (= (and start!663978 ((_ is Union!16775) r2!6280)) b!6883540))

(assert (= (and start!663978 ((_ is ElementMatch!16775) r3!135)) b!6883545))

(assert (= (and start!663978 ((_ is Concat!25620) r3!135)) b!6883533))

(assert (= (and start!663978 ((_ is Star!16775) r3!135)) b!6883532))

(assert (= (and start!663978 ((_ is Union!16775) r3!135)) b!6883547))

(assert (= (and start!663978 ((_ is Cons!66408) s!14361)) b!6883538))

(declare-fun m!7607452 () Bool)

(assert (=> start!663978 m!7607452))

(declare-fun m!7607454 () Bool)

(assert (=> b!6883535 m!7607454))

(declare-fun m!7607456 () Bool)

(assert (=> b!6883542 m!7607456))

(declare-fun m!7607458 () Bool)

(assert (=> b!6883536 m!7607458))

(declare-fun m!7607460 () Bool)

(assert (=> b!6883536 m!7607460))

(declare-fun m!7607462 () Bool)

(assert (=> b!6883536 m!7607462))

(declare-fun m!7607464 () Bool)

(assert (=> b!6883536 m!7607464))

(declare-fun m!7607466 () Bool)

(assert (=> b!6883536 m!7607466))

(declare-fun m!7607468 () Bool)

(assert (=> b!6883536 m!7607468))

(declare-fun m!7607470 () Bool)

(assert (=> b!6883536 m!7607470))

(declare-fun m!7607472 () Bool)

(assert (=> b!6883536 m!7607472))

(assert (=> b!6883536 m!7607466))

(declare-fun m!7607474 () Bool)

(assert (=> b!6883536 m!7607474))

(declare-fun m!7607476 () Bool)

(assert (=> b!6883536 m!7607476))

(declare-fun m!7607478 () Bool)

(assert (=> b!6883541 m!7607478))

(declare-fun m!7607480 () Bool)

(assert (=> b!6883546 m!7607480))

(declare-fun m!7607482 () Bool)

(assert (=> b!6883546 m!7607482))

(declare-fun m!7607484 () Bool)

(assert (=> b!6883546 m!7607484))

(assert (=> b!6883546 m!7607480))

(declare-fun m!7607486 () Bool)

(assert (=> b!6883546 m!7607486))

(declare-fun m!7607488 () Bool)

(assert (=> b!6883546 m!7607488))

(assert (=> b!6883546 m!7607486))

(declare-fun m!7607490 () Bool)

(assert (=> b!6883546 m!7607490))

(declare-fun m!7607492 () Bool)

(assert (=> b!6883529 m!7607492))

(declare-fun m!7607494 () Bool)

(assert (=> b!6883529 m!7607494))

(declare-fun m!7607496 () Bool)

(assert (=> b!6883529 m!7607496))

(declare-fun m!7607498 () Bool)

(assert (=> b!6883529 m!7607498))

(declare-fun m!7607500 () Bool)

(assert (=> b!6883529 m!7607500))

(declare-fun m!7607502 () Bool)

(assert (=> b!6883529 m!7607502))

(check-sat (not b!6883529) (not b!6883544) (not b!6883546) (not b!6883543) (not b!6883533) (not start!663978) (not b!6883538) (not b!6883532) (not b!6883534) (not b!6883531) (not b!6883540) (not b!6883535) (not b!6883537) (not b!6883536) (not b!6883542) (not b!6883541) (not b!6883547) tp_is_empty!42775)
(check-sat)
