; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!295692 () Bool)

(assert start!295692)

(declare-fun b!3135464 () Bool)

(assert (=> b!3135464 true))

(assert (=> b!3135464 true))

(assert (=> b!3135464 true))

(declare-fun lambda!115664 () Int)

(declare-fun lambda!115663 () Int)

(assert (=> b!3135464 (not (= lambda!115664 lambda!115663))))

(assert (=> b!3135464 true))

(assert (=> b!3135464 true))

(assert (=> b!3135464 true))

(declare-fun e!1956443 () Bool)

(declare-fun e!1956439 () Bool)

(assert (=> b!3135464 (= e!1956443 e!1956439)))

(declare-fun res!1281313 () Bool)

(assert (=> b!3135464 (=> res!1281313 e!1956439)))

(declare-fun lt!1060599 () Bool)

(assert (=> b!3135464 (= res!1281313 (not lt!1060599))))

(declare-fun Exists!1893 (Int) Bool)

(assert (=> b!3135464 (= (Exists!1893 lambda!115663) (Exists!1893 lambda!115664))))

(declare-datatypes ((Unit!49727 0))(
  ( (Unit!49728) )
))
(declare-fun lt!1060593 () Unit!49727)

(declare-datatypes ((C!19464 0))(
  ( (C!19465 (val!11768 Int)) )
))
(declare-datatypes ((Regex!9639 0))(
  ( (ElementMatch!9639 (c!526821 C!19464)) (Concat!14960 (regOne!19790 Regex!9639) (regTwo!19790 Regex!9639)) (EmptyExpr!9639) (Star!9639 (reg!9968 Regex!9639)) (EmptyLang!9639) (Union!9639 (regOne!19791 Regex!9639) (regTwo!19791 Regex!9639)) )
))
(declare-fun lt!1060592 () Regex!9639)

(declare-datatypes ((List!35504 0))(
  ( (Nil!35380) (Cons!35380 (h!40800 C!19464) (t!234569 List!35504)) )
))
(declare-fun s!11993 () List!35504)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!354 (Regex!9639 List!35504) Unit!49727)

(assert (=> b!3135464 (= lt!1060593 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!354 lt!1060592 s!11993))))

(assert (=> b!3135464 (= lt!1060599 (Exists!1893 lambda!115663))))

(declare-datatypes ((tuple2!34256 0))(
  ( (tuple2!34257 (_1!20260 List!35504) (_2!20260 List!35504)) )
))
(declare-datatypes ((Option!6860 0))(
  ( (None!6859) (Some!6859 (v!34993 tuple2!34256)) )
))
(declare-fun lt!1060595 () Option!6860)

(declare-fun isDefined!5411 (Option!6860) Bool)

(assert (=> b!3135464 (= lt!1060599 (isDefined!5411 lt!1060595))))

(declare-fun lt!1060597 () Regex!9639)

(declare-fun findConcatSeparation!1254 (Regex!9639 Regex!9639 List!35504 List!35504 List!35504) Option!6860)

(assert (=> b!3135464 (= lt!1060595 (findConcatSeparation!1254 lt!1060592 lt!1060597 Nil!35380 s!11993 s!11993))))

(declare-fun lt!1060596 () Unit!49727)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1024 (Regex!9639 Regex!9639 List!35504) Unit!49727)

(assert (=> b!3135464 (= lt!1060596 (lemmaFindConcatSeparationEquivalentToExists!1024 lt!1060592 lt!1060597 s!11993))))

(declare-fun b!3135465 () Bool)

(declare-fun e!1956444 () Bool)

(declare-fun tp!981729 () Bool)

(declare-fun tp!981724 () Bool)

(assert (=> b!3135465 (= e!1956444 (and tp!981729 tp!981724))))

(declare-fun b!3135466 () Bool)

(declare-fun e!1956448 () Bool)

(declare-fun e!1956440 () Bool)

(assert (=> b!3135466 (= e!1956448 (not e!1956440))))

(declare-fun res!1281315 () Bool)

(assert (=> b!3135466 (=> res!1281315 e!1956440)))

(declare-fun lt!1060587 () Bool)

(declare-fun r!17423 () Regex!9639)

(get-info :version)

(assert (=> b!3135466 (= res!1281315 (or lt!1060587 ((_ is Concat!14960) r!17423) ((_ is Union!9639) r!17423) (not ((_ is Star!9639) r!17423))))))

(declare-fun matchRSpec!1776 (Regex!9639 List!35504) Bool)

(assert (=> b!3135466 (= lt!1060587 (matchRSpec!1776 r!17423 s!11993))))

(declare-fun matchR!4521 (Regex!9639 List!35504) Bool)

(assert (=> b!3135466 (= lt!1060587 (matchR!4521 r!17423 s!11993))))

(declare-fun lt!1060586 () Unit!49727)

(declare-fun mainMatchTheorem!1776 (Regex!9639 List!35504) Unit!49727)

(assert (=> b!3135466 (= lt!1060586 (mainMatchTheorem!1776 r!17423 s!11993))))

(declare-fun b!3135467 () Bool)

(declare-fun res!1281312 () Bool)

(declare-fun e!1956447 () Bool)

(assert (=> b!3135467 (=> res!1281312 e!1956447)))

(declare-fun lt!1060589 () tuple2!34256)

(assert (=> b!3135467 (= res!1281312 (not (matchR!4521 lt!1060597 (_2!20260 lt!1060589))))))

(declare-fun res!1281310 () Bool)

(assert (=> start!295692 (=> (not res!1281310) (not e!1956448))))

(declare-fun validRegex!4372 (Regex!9639) Bool)

(assert (=> start!295692 (= res!1281310 (validRegex!4372 r!17423))))

(assert (=> start!295692 e!1956448))

(assert (=> start!295692 e!1956444))

(declare-fun e!1956442 () Bool)

(assert (=> start!295692 e!1956442))

(declare-fun b!3135468 () Bool)

(declare-fun e!1956441 () Bool)

(assert (=> b!3135468 (= e!1956440 e!1956441)))

(declare-fun res!1281318 () Bool)

(assert (=> b!3135468 (=> res!1281318 e!1956441)))

(declare-fun isEmptyLang!690 (Regex!9639) Bool)

(assert (=> b!3135468 (= res!1281318 (isEmptyLang!690 lt!1060592))))

(declare-fun simplify!594 (Regex!9639) Regex!9639)

(assert (=> b!3135468 (= lt!1060592 (simplify!594 (reg!9968 r!17423)))))

(declare-fun b!3135469 () Bool)

(declare-fun tp_is_empty!16841 () Bool)

(declare-fun tp!981727 () Bool)

(assert (=> b!3135469 (= e!1956442 (and tp_is_empty!16841 tp!981727))))

(declare-fun b!3135470 () Bool)

(declare-fun e!1956445 () Bool)

(assert (=> b!3135470 (= e!1956441 e!1956445)))

(declare-fun res!1281317 () Bool)

(assert (=> b!3135470 (=> res!1281317 e!1956445)))

(assert (=> b!3135470 (= res!1281317 (not (matchR!4521 lt!1060597 s!11993)))))

(assert (=> b!3135470 (= lt!1060597 (Star!9639 lt!1060592))))

(declare-fun b!3135471 () Bool)

(assert (=> b!3135471 (= e!1956445 e!1956443)))

(declare-fun res!1281316 () Bool)

(assert (=> b!3135471 (=> res!1281316 e!1956443)))

(declare-fun isEmpty!19735 (List!35504) Bool)

(assert (=> b!3135471 (= res!1281316 (isEmpty!19735 s!11993))))

(assert (=> b!3135471 (matchRSpec!1776 lt!1060597 s!11993)))

(declare-fun lt!1060598 () Unit!49727)

(assert (=> b!3135471 (= lt!1060598 (mainMatchTheorem!1776 lt!1060597 s!11993))))

(declare-fun b!3135472 () Bool)

(assert (=> b!3135472 (= e!1956444 tp_is_empty!16841)))

(declare-fun b!3135473 () Bool)

(assert (=> b!3135473 (= e!1956439 e!1956447)))

(declare-fun res!1281314 () Bool)

(assert (=> b!3135473 (=> res!1281314 e!1956447)))

(assert (=> b!3135473 (= res!1281314 (not (matchR!4521 lt!1060592 (_1!20260 lt!1060589))))))

(declare-fun get!11145 (Option!6860) tuple2!34256)

(assert (=> b!3135473 (= lt!1060589 (get!11145 lt!1060595))))

(declare-fun b!3135474 () Bool)

(declare-fun e!1956446 () Bool)

(assert (=> b!3135474 (= e!1956447 e!1956446)))

(declare-fun res!1281311 () Bool)

(assert (=> b!3135474 (=> res!1281311 e!1956446)))

(declare-fun lt!1060601 () Bool)

(assert (=> b!3135474 (= res!1281311 (not lt!1060601))))

(declare-fun lt!1060588 () Regex!9639)

(assert (=> b!3135474 (= lt!1060601 (matchR!4521 lt!1060588 (_2!20260 lt!1060589)))))

(declare-fun lt!1060602 () Regex!9639)

(assert (=> b!3135474 (= lt!1060601 (matchR!4521 lt!1060602 (_2!20260 lt!1060589)))))

(assert (=> b!3135474 (= lt!1060588 (simplify!594 lt!1060602))))

(declare-fun lt!1060590 () Unit!49727)

(declare-fun lemmaSimplifySound!366 (Regex!9639 List!35504) Unit!49727)

(assert (=> b!3135474 (= lt!1060590 (lemmaSimplifySound!366 lt!1060602 (_2!20260 lt!1060589)))))

(assert (=> b!3135474 (= lt!1060602 (Star!9639 (reg!9968 r!17423)))))

(declare-fun lt!1060594 () Unit!49727)

(declare-fun e!1956449 () Unit!49727)

(assert (=> b!3135474 (= lt!1060594 e!1956449)))

(declare-fun c!526820 () Bool)

(declare-fun size!26595 (List!35504) Int)

(assert (=> b!3135474 (= c!526820 (= (size!26595 (_2!20260 lt!1060589)) (size!26595 s!11993)))))

(assert (=> b!3135474 (matchR!4521 (reg!9968 r!17423) (_1!20260 lt!1060589))))

(declare-fun lt!1060591 () Unit!49727)

(assert (=> b!3135474 (= lt!1060591 (lemmaSimplifySound!366 (reg!9968 r!17423) (_1!20260 lt!1060589)))))

(declare-fun b!3135475 () Bool)

(declare-fun Unit!49729 () Unit!49727)

(assert (=> b!3135475 (= e!1956449 Unit!49729)))

(declare-fun b!3135476 () Bool)

(declare-fun tp!981725 () Bool)

(declare-fun tp!981726 () Bool)

(assert (=> b!3135476 (= e!1956444 (and tp!981725 tp!981726))))

(declare-fun b!3135477 () Bool)

(assert (=> b!3135477 (= e!1956446 (validRegex!4372 lt!1060602))))

(declare-fun b!3135478 () Bool)

(declare-fun Unit!49730 () Unit!49727)

(assert (=> b!3135478 (= e!1956449 Unit!49730)))

(declare-fun lt!1060600 () Unit!49727)

(assert (=> b!3135478 (= lt!1060600 (mainMatchTheorem!1776 (reg!9968 r!17423) (_1!20260 lt!1060589)))))

(assert (=> b!3135478 false))

(declare-fun b!3135479 () Bool)

(declare-fun tp!981728 () Bool)

(assert (=> b!3135479 (= e!1956444 tp!981728)))

(assert (= (and start!295692 res!1281310) b!3135466))

(assert (= (and b!3135466 (not res!1281315)) b!3135468))

(assert (= (and b!3135468 (not res!1281318)) b!3135470))

(assert (= (and b!3135470 (not res!1281317)) b!3135471))

(assert (= (and b!3135471 (not res!1281316)) b!3135464))

(assert (= (and b!3135464 (not res!1281313)) b!3135473))

(assert (= (and b!3135473 (not res!1281314)) b!3135467))

(assert (= (and b!3135467 (not res!1281312)) b!3135474))

(assert (= (and b!3135474 c!526820) b!3135478))

(assert (= (and b!3135474 (not c!526820)) b!3135475))

(assert (= (and b!3135474 (not res!1281311)) b!3135477))

(assert (= (and start!295692 ((_ is ElementMatch!9639) r!17423)) b!3135472))

(assert (= (and start!295692 ((_ is Concat!14960) r!17423)) b!3135465))

(assert (= (and start!295692 ((_ is Star!9639) r!17423)) b!3135479))

(assert (= (and start!295692 ((_ is Union!9639) r!17423)) b!3135476))

(assert (= (and start!295692 ((_ is Cons!35380) s!11993)) b!3135469))

(declare-fun m!3416243 () Bool)

(assert (=> b!3135468 m!3416243))

(declare-fun m!3416245 () Bool)

(assert (=> b!3135468 m!3416245))

(declare-fun m!3416247 () Bool)

(assert (=> b!3135471 m!3416247))

(declare-fun m!3416249 () Bool)

(assert (=> b!3135471 m!3416249))

(declare-fun m!3416251 () Bool)

(assert (=> b!3135471 m!3416251))

(declare-fun m!3416253 () Bool)

(assert (=> b!3135470 m!3416253))

(declare-fun m!3416255 () Bool)

(assert (=> start!295692 m!3416255))

(declare-fun m!3416257 () Bool)

(assert (=> b!3135466 m!3416257))

(declare-fun m!3416259 () Bool)

(assert (=> b!3135466 m!3416259))

(declare-fun m!3416261 () Bool)

(assert (=> b!3135466 m!3416261))

(declare-fun m!3416263 () Bool)

(assert (=> b!3135467 m!3416263))

(declare-fun m!3416265 () Bool)

(assert (=> b!3135464 m!3416265))

(declare-fun m!3416267 () Bool)

(assert (=> b!3135464 m!3416267))

(declare-fun m!3416269 () Bool)

(assert (=> b!3135464 m!3416269))

(declare-fun m!3416271 () Bool)

(assert (=> b!3135464 m!3416271))

(declare-fun m!3416273 () Bool)

(assert (=> b!3135464 m!3416273))

(assert (=> b!3135464 m!3416269))

(declare-fun m!3416275 () Bool)

(assert (=> b!3135464 m!3416275))

(declare-fun m!3416277 () Bool)

(assert (=> b!3135473 m!3416277))

(declare-fun m!3416279 () Bool)

(assert (=> b!3135473 m!3416279))

(declare-fun m!3416281 () Bool)

(assert (=> b!3135477 m!3416281))

(declare-fun m!3416283 () Bool)

(assert (=> b!3135474 m!3416283))

(declare-fun m!3416285 () Bool)

(assert (=> b!3135474 m!3416285))

(declare-fun m!3416287 () Bool)

(assert (=> b!3135474 m!3416287))

(declare-fun m!3416289 () Bool)

(assert (=> b!3135474 m!3416289))

(declare-fun m!3416291 () Bool)

(assert (=> b!3135474 m!3416291))

(declare-fun m!3416293 () Bool)

(assert (=> b!3135474 m!3416293))

(declare-fun m!3416295 () Bool)

(assert (=> b!3135474 m!3416295))

(declare-fun m!3416297 () Bool)

(assert (=> b!3135474 m!3416297))

(declare-fun m!3416299 () Bool)

(assert (=> b!3135478 m!3416299))

(check-sat (not b!3135476) (not b!3135468) (not b!3135465) tp_is_empty!16841 (not b!3135473) (not b!3135479) (not b!3135469) (not b!3135477) (not b!3135478) (not b!3135474) (not b!3135467) (not b!3135470) (not start!295692) (not b!3135471) (not b!3135466) (not b!3135464))
(check-sat)
