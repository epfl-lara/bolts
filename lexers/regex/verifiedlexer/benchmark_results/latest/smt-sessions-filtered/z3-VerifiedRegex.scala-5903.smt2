; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!289072 () Bool)

(assert start!289072)

(declare-fun b!2994556 () Bool)

(assert (=> b!2994556 true))

(assert (=> b!2994556 true))

(assert (=> b!2994556 true))

(declare-fun lambda!112006 () Int)

(declare-fun lambda!112005 () Int)

(assert (=> b!2994556 (not (= lambda!112006 lambda!112005))))

(assert (=> b!2994556 true))

(assert (=> b!2994556 true))

(assert (=> b!2994556 true))

(declare-fun b!2994557 () Bool)

(declare-fun e!1881921 () Bool)

(declare-fun e!1881926 () Bool)

(assert (=> b!2994557 (= e!1881921 (not e!1881926))))

(declare-fun res!1235033 () Bool)

(assert (=> b!2994557 (=> res!1235033 e!1881926)))

(declare-fun lt!1041169 () Bool)

(declare-datatypes ((C!18900 0))(
  ( (C!18901 (val!11486 Int)) )
))
(declare-datatypes ((Regex!9357 0))(
  ( (ElementMatch!9357 (c!492367 C!18900)) (Concat!14678 (regOne!19226 Regex!9357) (regTwo!19226 Regex!9357)) (EmptyExpr!9357) (Star!9357 (reg!9686 Regex!9357)) (EmptyLang!9357) (Union!9357 (regOne!19227 Regex!9357) (regTwo!19227 Regex!9357)) )
))
(declare-fun r!17423 () Regex!9357)

(get-info :version)

(assert (=> b!2994557 (= res!1235033 (or (not lt!1041169) ((_ is Concat!14678) r!17423) ((_ is Union!9357) r!17423) (not ((_ is Star!9357) r!17423))))))

(declare-datatypes ((List!35222 0))(
  ( (Nil!35098) (Cons!35098 (h!40518 C!18900) (t!234287 List!35222)) )
))
(declare-fun s!11993 () List!35222)

(declare-fun matchRSpec!1494 (Regex!9357 List!35222) Bool)

(assert (=> b!2994557 (= lt!1041169 (matchRSpec!1494 r!17423 s!11993))))

(declare-fun matchR!4239 (Regex!9357 List!35222) Bool)

(assert (=> b!2994557 (= lt!1041169 (matchR!4239 r!17423 s!11993))))

(declare-datatypes ((Unit!49127 0))(
  ( (Unit!49128) )
))
(declare-fun lt!1041162 () Unit!49127)

(declare-fun mainMatchTheorem!1494 (Regex!9357 List!35222) Unit!49127)

(assert (=> b!2994557 (= lt!1041162 (mainMatchTheorem!1494 r!17423 s!11993))))

(declare-fun b!2994558 () Bool)

(declare-fun e!1881920 () Bool)

(declare-fun e!1881927 () Bool)

(assert (=> b!2994558 (= e!1881920 e!1881927)))

(declare-fun res!1235035 () Bool)

(assert (=> b!2994558 (=> res!1235035 e!1881927)))

(declare-fun lt!1041158 () Regex!9357)

(declare-fun lt!1041167 () Regex!9357)

(assert (=> b!2994558 (= res!1235035 (not (= lt!1041158 lt!1041167)))))

(declare-fun lt!1041170 () Regex!9357)

(assert (=> b!2994558 (= lt!1041167 (Star!9357 lt!1041170))))

(declare-datatypes ((tuple2!34032 0))(
  ( (tuple2!34033 (_1!20148 List!35222) (_2!20148 List!35222)) )
))
(declare-fun lt!1041165 () tuple2!34032)

(assert (=> b!2994558 (matchR!4239 lt!1041158 (_2!20148 lt!1041165))))

(declare-fun lt!1041166 () Regex!9357)

(declare-fun simplify!348 (Regex!9357) Regex!9357)

(assert (=> b!2994558 (= lt!1041158 (simplify!348 lt!1041166))))

(declare-fun lt!1041172 () Unit!49127)

(declare-fun lemmaSimplifySound!206 (Regex!9357 List!35222) Unit!49127)

(assert (=> b!2994558 (= lt!1041172 (lemmaSimplifySound!206 lt!1041166 (_2!20148 lt!1041165)))))

(declare-fun lt!1041168 () Unit!49127)

(declare-fun e!1881922 () Unit!49127)

(assert (=> b!2994558 (= lt!1041168 e!1881922)))

(declare-fun c!492366 () Bool)

(declare-fun size!26507 (List!35222) Int)

(assert (=> b!2994558 (= c!492366 (= (size!26507 (_2!20148 lt!1041165)) (size!26507 s!11993)))))

(assert (=> b!2994558 (matchR!4239 lt!1041170 (_1!20148 lt!1041165))))

(assert (=> b!2994558 (= lt!1041170 (simplify!348 (reg!9686 r!17423)))))

(declare-fun lt!1041171 () Unit!49127)

(assert (=> b!2994558 (= lt!1041171 (lemmaSimplifySound!206 (reg!9686 r!17423) (_1!20148 lt!1041165)))))

(declare-fun b!2994559 () Bool)

(declare-fun res!1235034 () Bool)

(assert (=> b!2994559 (=> res!1235034 e!1881920)))

(assert (=> b!2994559 (= res!1235034 (not (matchR!4239 lt!1041166 (_2!20148 lt!1041165))))))

(declare-fun b!2994560 () Bool)

(declare-fun Unit!49129 () Unit!49127)

(assert (=> b!2994560 (= e!1881922 Unit!49129)))

(declare-fun lt!1041163 () Unit!49127)

(assert (=> b!2994560 (= lt!1041163 (mainMatchTheorem!1494 (reg!9686 r!17423) (_1!20148 lt!1041165)))))

(assert (=> b!2994560 false))

(declare-fun b!2994561 () Bool)

(declare-fun Unit!49130 () Unit!49127)

(assert (=> b!2994561 (= e!1881922 Unit!49130)))

(declare-fun b!2994562 () Bool)

(declare-fun e!1881925 () Bool)

(declare-fun tp!951696 () Bool)

(assert (=> b!2994562 (= e!1881925 tp!951696)))

(declare-fun b!2994563 () Bool)

(declare-fun e!1881924 () Bool)

(assert (=> b!2994563 (= e!1881924 e!1881920)))

(declare-fun res!1235036 () Bool)

(assert (=> b!2994563 (=> res!1235036 e!1881920)))

(assert (=> b!2994563 (= res!1235036 (not (matchR!4239 (reg!9686 r!17423) (_1!20148 lt!1041165))))))

(declare-datatypes ((Option!6748 0))(
  ( (None!6747) (Some!6747 (v!34881 tuple2!34032)) )
))
(declare-fun lt!1041159 () Option!6748)

(declare-fun get!10894 (Option!6748) tuple2!34032)

(assert (=> b!2994563 (= lt!1041165 (get!10894 lt!1041159))))

(declare-fun b!2994564 () Bool)

(assert (=> b!2994564 (= e!1881927 (matchR!4239 lt!1041167 (_2!20148 lt!1041165)))))

(assert (=> b!2994556 (= e!1881926 e!1881924)))

(declare-fun res!1235031 () Bool)

(assert (=> b!2994556 (=> res!1235031 e!1881924)))

(declare-fun lt!1041161 () Bool)

(assert (=> b!2994556 (= res!1235031 (not lt!1041161))))

(declare-fun Exists!1630 (Int) Bool)

(assert (=> b!2994556 (= (Exists!1630 lambda!112005) (Exists!1630 lambda!112006))))

(declare-fun lt!1041160 () Unit!49127)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!306 (Regex!9357 List!35222) Unit!49127)

(assert (=> b!2994556 (= lt!1041160 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!306 (reg!9686 r!17423) s!11993))))

(assert (=> b!2994556 (= lt!1041161 (Exists!1630 lambda!112005))))

(declare-fun isDefined!5299 (Option!6748) Bool)

(assert (=> b!2994556 (= lt!1041161 (isDefined!5299 lt!1041159))))

(declare-fun findConcatSeparation!1142 (Regex!9357 Regex!9357 List!35222 List!35222 List!35222) Option!6748)

(assert (=> b!2994556 (= lt!1041159 (findConcatSeparation!1142 (reg!9686 r!17423) lt!1041166 Nil!35098 s!11993 s!11993))))

(declare-fun lt!1041164 () Unit!49127)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!920 (Regex!9357 Regex!9357 List!35222) Unit!49127)

(assert (=> b!2994556 (= lt!1041164 (lemmaFindConcatSeparationEquivalentToExists!920 (reg!9686 r!17423) lt!1041166 s!11993))))

(assert (=> b!2994556 (= lt!1041166 (Star!9357 (reg!9686 r!17423)))))

(declare-fun res!1235032 () Bool)

(assert (=> start!289072 (=> (not res!1235032) (not e!1881921))))

(declare-fun validRegex!4090 (Regex!9357) Bool)

(assert (=> start!289072 (= res!1235032 (validRegex!4090 r!17423))))

(assert (=> start!289072 e!1881921))

(assert (=> start!289072 e!1881925))

(declare-fun e!1881923 () Bool)

(assert (=> start!289072 e!1881923))

(declare-fun b!2994565 () Bool)

(declare-fun res!1235030 () Bool)

(assert (=> b!2994565 (=> res!1235030 e!1881926)))

(declare-fun isEmpty!19372 (List!35222) Bool)

(assert (=> b!2994565 (= res!1235030 (isEmpty!19372 s!11993))))

(declare-fun b!2994566 () Bool)

(declare-fun tp!951699 () Bool)

(declare-fun tp!951697 () Bool)

(assert (=> b!2994566 (= e!1881925 (and tp!951699 tp!951697))))

(declare-fun b!2994567 () Bool)

(declare-fun tp!951701 () Bool)

(declare-fun tp!951698 () Bool)

(assert (=> b!2994567 (= e!1881925 (and tp!951701 tp!951698))))

(declare-fun b!2994568 () Bool)

(declare-fun tp_is_empty!16277 () Bool)

(assert (=> b!2994568 (= e!1881925 tp_is_empty!16277)))

(declare-fun b!2994569 () Bool)

(declare-fun tp!951700 () Bool)

(assert (=> b!2994569 (= e!1881923 (and tp_is_empty!16277 tp!951700))))

(assert (= (and start!289072 res!1235032) b!2994557))

(assert (= (and b!2994557 (not res!1235033)) b!2994565))

(assert (= (and b!2994565 (not res!1235030)) b!2994556))

(assert (= (and b!2994556 (not res!1235031)) b!2994563))

(assert (= (and b!2994563 (not res!1235036)) b!2994559))

(assert (= (and b!2994559 (not res!1235034)) b!2994558))

(assert (= (and b!2994558 c!492366) b!2994560))

(assert (= (and b!2994558 (not c!492366)) b!2994561))

(assert (= (and b!2994558 (not res!1235035)) b!2994564))

(assert (= (and start!289072 ((_ is ElementMatch!9357) r!17423)) b!2994568))

(assert (= (and start!289072 ((_ is Concat!14678) r!17423)) b!2994567))

(assert (= (and start!289072 ((_ is Star!9357) r!17423)) b!2994562))

(assert (= (and start!289072 ((_ is Union!9357) r!17423)) b!2994566))

(assert (= (and start!289072 ((_ is Cons!35098) s!11993)) b!2994569))

(declare-fun m!3349405 () Bool)

(assert (=> b!2994563 m!3349405))

(declare-fun m!3349407 () Bool)

(assert (=> b!2994563 m!3349407))

(declare-fun m!3349409 () Bool)

(assert (=> b!2994564 m!3349409))

(declare-fun m!3349411 () Bool)

(assert (=> b!2994560 m!3349411))

(declare-fun m!3349413 () Bool)

(assert (=> start!289072 m!3349413))

(declare-fun m!3349415 () Bool)

(assert (=> b!2994558 m!3349415))

(declare-fun m!3349417 () Bool)

(assert (=> b!2994558 m!3349417))

(declare-fun m!3349419 () Bool)

(assert (=> b!2994558 m!3349419))

(declare-fun m!3349421 () Bool)

(assert (=> b!2994558 m!3349421))

(declare-fun m!3349423 () Bool)

(assert (=> b!2994558 m!3349423))

(declare-fun m!3349425 () Bool)

(assert (=> b!2994558 m!3349425))

(declare-fun m!3349427 () Bool)

(assert (=> b!2994558 m!3349427))

(declare-fun m!3349429 () Bool)

(assert (=> b!2994558 m!3349429))

(declare-fun m!3349431 () Bool)

(assert (=> b!2994565 m!3349431))

(declare-fun m!3349433 () Bool)

(assert (=> b!2994556 m!3349433))

(declare-fun m!3349435 () Bool)

(assert (=> b!2994556 m!3349435))

(assert (=> b!2994556 m!3349433))

(declare-fun m!3349437 () Bool)

(assert (=> b!2994556 m!3349437))

(declare-fun m!3349439 () Bool)

(assert (=> b!2994556 m!3349439))

(declare-fun m!3349441 () Bool)

(assert (=> b!2994556 m!3349441))

(declare-fun m!3349443 () Bool)

(assert (=> b!2994556 m!3349443))

(declare-fun m!3349445 () Bool)

(assert (=> b!2994557 m!3349445))

(declare-fun m!3349447 () Bool)

(assert (=> b!2994557 m!3349447))

(declare-fun m!3349449 () Bool)

(assert (=> b!2994557 m!3349449))

(declare-fun m!3349451 () Bool)

(assert (=> b!2994559 m!3349451))

(check-sat (not b!2994564) (not b!2994562) (not b!2994565) (not b!2994556) (not b!2994558) (not b!2994560) (not b!2994557) (not b!2994569) (not b!2994566) (not start!289072) tp_is_empty!16277 (not b!2994563) (not b!2994567) (not b!2994559))
(check-sat)
