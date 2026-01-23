; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544672 () Bool)

(assert start!544672)

(declare-fun b!5145424 () Bool)

(declare-fun e!3208441 () Bool)

(declare-fun e!3208442 () Bool)

(assert (=> b!5145424 (= e!3208441 (not e!3208442))))

(declare-fun res!2190398 () Bool)

(assert (=> b!5145424 (=> res!2190398 e!3208442)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!29228 0))(
  ( (C!29229 (val!24266 Int)) )
))
(declare-datatypes ((Regex!14481 0))(
  ( (ElementMatch!14481 (c!885934 C!29228)) (Concat!23326 (regOne!29474 Regex!14481) (regTwo!29474 Regex!14481)) (EmptyExpr!14481) (Star!14481 (reg!14810 Regex!14481)) (EmptyLang!14481) (Union!14481 (regOne!29475 Regex!14481) (regTwo!29475 Regex!14481)) )
))
(declare-datatypes ((List!59881 0))(
  ( (Nil!59757) (Cons!59757 (h!66205 Regex!14481) (t!372918 List!59881)) )
))
(declare-datatypes ((Context!7730 0))(
  ( (Context!7731 (exprs!4365 List!59881)) )
))
(declare-fun lt!2120961 () (InoxSet Context!7730))

(declare-fun lambda!256806 () Int)

(declare-fun forall!13953 ((InoxSet Context!7730) Int) Bool)

(assert (=> b!5145424 (= res!2190398 (not (forall!13953 lt!2120961 lambda!256806)))))

(declare-fun lt!2120965 () (InoxSet Context!7730))

(declare-fun lostCauseZipper!1279 ((InoxSet Context!7730)) Bool)

(assert (=> b!5145424 (lostCauseZipper!1279 lt!2120965)))

(declare-fun ctx!100 () Context!7730)

(declare-fun expr!117 () Regex!14481)

(declare-fun a!1296 () C!29228)

(declare-fun derivationStepZipperDown!160 (Regex!14481 Context!7730 C!29228) (InoxSet Context!7730))

(assert (=> b!5145424 (= lt!2120965 (derivationStepZipperDown!160 (regTwo!29475 expr!117) ctx!100 a!1296))))

(declare-datatypes ((Unit!151157 0))(
  ( (Unit!151158) )
))
(declare-fun lt!2120962 () Unit!151157)

(declare-fun lemmaLostCauseFixPointDerivDown!50 (Regex!14481 Context!7730 C!29228) Unit!151157)

(assert (=> b!5145424 (= lt!2120962 (lemmaLostCauseFixPointDerivDown!50 (regTwo!29475 expr!117) ctx!100 a!1296))))

(assert (=> b!5145424 (lostCauseZipper!1279 lt!2120961)))

(assert (=> b!5145424 (= lt!2120961 (derivationStepZipperDown!160 (regOne!29475 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120964 () Unit!151157)

(assert (=> b!5145424 (= lt!2120964 (lemmaLostCauseFixPointDerivDown!50 (regOne!29475 expr!117) ctx!100 a!1296))))

(declare-fun b!5145425 () Bool)

(assert (=> b!5145425 (= e!3208442 (lostCauseZipper!1279 (derivationStepZipperDown!160 expr!117 ctx!100 a!1296)))))

(assert (=> b!5145425 (forall!13953 ((_ map or) lt!2120961 lt!2120965) lambda!256806)))

(declare-fun lt!2120963 () Unit!151157)

(declare-fun lemmaConcatPreservesForall!138 ((InoxSet Context!7730) (InoxSet Context!7730) Int) Unit!151157)

(assert (=> b!5145425 (= lt!2120963 (lemmaConcatPreservesForall!138 lt!2120961 lt!2120965 lambda!256806))))

(declare-fun res!2190402 () Bool)

(assert (=> start!544672 (=> (not res!2190402) (not e!3208441))))

(declare-fun validRegex!6336 (Regex!14481) Bool)

(assert (=> start!544672 (= res!2190402 (validRegex!6336 expr!117))))

(assert (=> start!544672 e!3208441))

(declare-fun e!3208444 () Bool)

(assert (=> start!544672 e!3208444))

(declare-fun e!3208445 () Bool)

(declare-fun inv!79383 (Context!7730) Bool)

(assert (=> start!544672 (and (inv!79383 ctx!100) e!3208445)))

(declare-fun tp_is_empty!38111 () Bool)

(assert (=> start!544672 tp_is_empty!38111))

(declare-fun b!5145426 () Bool)

(declare-fun e!3208443 () Bool)

(declare-fun lostCause!1514 (Context!7730) Bool)

(assert (=> b!5145426 (= e!3208443 (lostCause!1514 ctx!100))))

(declare-fun b!5145427 () Bool)

(declare-fun tp!1437091 () Bool)

(assert (=> b!5145427 (= e!3208445 tp!1437091)))

(declare-fun b!5145428 () Bool)

(declare-fun tp!1437087 () Bool)

(assert (=> b!5145428 (= e!3208444 tp!1437087)))

(declare-fun b!5145429 () Bool)

(declare-fun tp!1437088 () Bool)

(declare-fun tp!1437086 () Bool)

(assert (=> b!5145429 (= e!3208444 (and tp!1437088 tp!1437086))))

(declare-fun b!5145430 () Bool)

(assert (=> b!5145430 (= e!3208444 tp_is_empty!38111)))

(declare-fun b!5145431 () Bool)

(declare-fun res!2190401 () Bool)

(assert (=> b!5145431 (=> res!2190401 e!3208442)))

(assert (=> b!5145431 (= res!2190401 (not (forall!13953 lt!2120965 lambda!256806)))))

(declare-fun b!5145432 () Bool)

(declare-fun res!2190403 () Bool)

(assert (=> b!5145432 (=> (not res!2190403) (not e!3208441))))

(get-info :version)

(assert (=> b!5145432 (= res!2190403 (and (or (not ((_ is ElementMatch!14481) expr!117)) (not (= (c!885934 expr!117) a!1296))) ((_ is Union!14481) expr!117)))))

(declare-fun b!5145433 () Bool)

(declare-fun res!2190399 () Bool)

(assert (=> b!5145433 (=> (not res!2190399) (not e!3208441))))

(assert (=> b!5145433 (= res!2190399 e!3208443)))

(declare-fun res!2190400 () Bool)

(assert (=> b!5145433 (=> res!2190400 e!3208443)))

(declare-fun lostCause!1515 (Regex!14481) Bool)

(assert (=> b!5145433 (= res!2190400 (lostCause!1515 expr!117))))

(declare-fun b!5145434 () Bool)

(declare-fun tp!1437090 () Bool)

(declare-fun tp!1437089 () Bool)

(assert (=> b!5145434 (= e!3208444 (and tp!1437090 tp!1437089))))

(assert (= (and start!544672 res!2190402) b!5145433))

(assert (= (and b!5145433 (not res!2190400)) b!5145426))

(assert (= (and b!5145433 res!2190399) b!5145432))

(assert (= (and b!5145432 res!2190403) b!5145424))

(assert (= (and b!5145424 (not res!2190398)) b!5145431))

(assert (= (and b!5145431 (not res!2190401)) b!5145425))

(assert (= (and start!544672 ((_ is ElementMatch!14481) expr!117)) b!5145430))

(assert (= (and start!544672 ((_ is Concat!23326) expr!117)) b!5145434))

(assert (= (and start!544672 ((_ is Star!14481) expr!117)) b!5145428))

(assert (= (and start!544672 ((_ is Union!14481) expr!117)) b!5145429))

(assert (= start!544672 b!5145427))

(declare-fun m!6206318 () Bool)

(assert (=> b!5145426 m!6206318))

(declare-fun m!6206320 () Bool)

(assert (=> b!5145425 m!6206320))

(assert (=> b!5145425 m!6206320))

(declare-fun m!6206322 () Bool)

(assert (=> b!5145425 m!6206322))

(declare-fun m!6206324 () Bool)

(assert (=> b!5145425 m!6206324))

(declare-fun m!6206326 () Bool)

(assert (=> b!5145425 m!6206326))

(declare-fun m!6206328 () Bool)

(assert (=> b!5145433 m!6206328))

(declare-fun m!6206330 () Bool)

(assert (=> b!5145431 m!6206330))

(declare-fun m!6206332 () Bool)

(assert (=> b!5145424 m!6206332))

(declare-fun m!6206334 () Bool)

(assert (=> b!5145424 m!6206334))

(declare-fun m!6206336 () Bool)

(assert (=> b!5145424 m!6206336))

(declare-fun m!6206338 () Bool)

(assert (=> b!5145424 m!6206338))

(declare-fun m!6206340 () Bool)

(assert (=> b!5145424 m!6206340))

(declare-fun m!6206342 () Bool)

(assert (=> b!5145424 m!6206342))

(declare-fun m!6206344 () Bool)

(assert (=> b!5145424 m!6206344))

(declare-fun m!6206346 () Bool)

(assert (=> start!544672 m!6206346))

(declare-fun m!6206348 () Bool)

(assert (=> start!544672 m!6206348))

(check-sat (not b!5145433) (not b!5145431) (not b!5145424) (not b!5145426) (not b!5145428) (not b!5145429) (not start!544672) (not b!5145425) (not b!5145427) (not b!5145434) tp_is_empty!38111)
(check-sat)
(get-model)

(declare-fun d!1663346 () Bool)

(declare-fun lostCauseFct!362 (Regex!14481) Bool)

(assert (=> d!1663346 (= (lostCause!1515 expr!117) (lostCauseFct!362 expr!117))))

(declare-fun bs!1201135 () Bool)

(assert (= bs!1201135 d!1663346))

(declare-fun m!6206350 () Bool)

(assert (=> bs!1201135 m!6206350))

(assert (=> b!5145433 d!1663346))

(declare-fun b!5145471 () Bool)

(declare-fun e!3208479 () Bool)

(declare-fun e!3208476 () Bool)

(assert (=> b!5145471 (= e!3208479 e!3208476)))

(declare-fun res!2190424 () Bool)

(assert (=> b!5145471 (=> (not res!2190424) (not e!3208476))))

(declare-fun call!359617 () Bool)

(assert (=> b!5145471 (= res!2190424 call!359617)))

(declare-fun bm!359610 () Bool)

(declare-fun call!359615 () Bool)

(declare-fun c!885943 () Bool)

(assert (=> bm!359610 (= call!359615 (validRegex!6336 (ite c!885943 (regTwo!29475 expr!117) (regTwo!29474 expr!117))))))

(declare-fun b!5145472 () Bool)

(declare-fun e!3208480 () Bool)

(declare-fun e!3208474 () Bool)

(assert (=> b!5145472 (= e!3208480 e!3208474)))

(assert (=> b!5145472 (= c!885943 ((_ is Union!14481) expr!117))))

(declare-fun b!5145473 () Bool)

(declare-fun e!3208478 () Bool)

(declare-fun call!359616 () Bool)

(assert (=> b!5145473 (= e!3208478 call!359616)))

(declare-fun c!885944 () Bool)

(declare-fun bm!359612 () Bool)

(assert (=> bm!359612 (= call!359616 (validRegex!6336 (ite c!885944 (reg!14810 expr!117) (ite c!885943 (regOne!29475 expr!117) (regOne!29474 expr!117)))))))

(declare-fun b!5145474 () Bool)

(assert (=> b!5145474 (= e!3208476 call!359615)))

(declare-fun b!5145475 () Bool)

(declare-fun e!3208475 () Bool)

(assert (=> b!5145475 (= e!3208475 e!3208480)))

(assert (=> b!5145475 (= c!885944 ((_ is Star!14481) expr!117))))

(declare-fun bm!359611 () Bool)

(assert (=> bm!359611 (= call!359617 call!359616)))

(declare-fun d!1663350 () Bool)

(declare-fun res!2190427 () Bool)

(assert (=> d!1663350 (=> res!2190427 e!3208475)))

(assert (=> d!1663350 (= res!2190427 ((_ is ElementMatch!14481) expr!117))))

(assert (=> d!1663350 (= (validRegex!6336 expr!117) e!3208475)))

(declare-fun b!5145476 () Bool)

(declare-fun res!2190426 () Bool)

(declare-fun e!3208477 () Bool)

(assert (=> b!5145476 (=> (not res!2190426) (not e!3208477))))

(assert (=> b!5145476 (= res!2190426 call!359617)))

(assert (=> b!5145476 (= e!3208474 e!3208477)))

(declare-fun b!5145477 () Bool)

(assert (=> b!5145477 (= e!3208480 e!3208478)))

(declare-fun res!2190425 () Bool)

(declare-fun nullable!4836 (Regex!14481) Bool)

(assert (=> b!5145477 (= res!2190425 (not (nullable!4836 (reg!14810 expr!117))))))

(assert (=> b!5145477 (=> (not res!2190425) (not e!3208478))))

(declare-fun b!5145478 () Bool)

(assert (=> b!5145478 (= e!3208477 call!359615)))

(declare-fun b!5145479 () Bool)

(declare-fun res!2190428 () Bool)

(assert (=> b!5145479 (=> res!2190428 e!3208479)))

(assert (=> b!5145479 (= res!2190428 (not ((_ is Concat!23326) expr!117)))))

(assert (=> b!5145479 (= e!3208474 e!3208479)))

(assert (= (and d!1663350 (not res!2190427)) b!5145475))

(assert (= (and b!5145475 c!885944) b!5145477))

(assert (= (and b!5145475 (not c!885944)) b!5145472))

(assert (= (and b!5145477 res!2190425) b!5145473))

(assert (= (and b!5145472 c!885943) b!5145476))

(assert (= (and b!5145472 (not c!885943)) b!5145479))

(assert (= (and b!5145476 res!2190426) b!5145478))

(assert (= (and b!5145479 (not res!2190428)) b!5145471))

(assert (= (and b!5145471 res!2190424) b!5145474))

(assert (= (or b!5145478 b!5145474) bm!359610))

(assert (= (or b!5145476 b!5145471) bm!359611))

(assert (= (or b!5145473 bm!359611) bm!359612))

(declare-fun m!6206358 () Bool)

(assert (=> bm!359610 m!6206358))

(declare-fun m!6206360 () Bool)

(assert (=> bm!359612 m!6206360))

(declare-fun m!6206362 () Bool)

(assert (=> b!5145477 m!6206362))

(assert (=> start!544672 d!1663350))

(declare-fun d!1663354 () Bool)

(declare-fun lambda!256809 () Int)

(declare-fun forall!13955 (List!59881 Int) Bool)

(assert (=> d!1663354 (= (inv!79383 ctx!100) (forall!13955 (exprs!4365 ctx!100) lambda!256809))))

(declare-fun bs!1201137 () Bool)

(assert (= bs!1201137 d!1663354))

(declare-fun m!6206370 () Bool)

(assert (=> bs!1201137 m!6206370))

(assert (=> start!544672 d!1663354))

(declare-fun bs!1201143 () Bool)

(declare-fun d!1663358 () Bool)

(assert (= bs!1201143 (and d!1663358 b!5145424)))

(declare-fun lambda!256828 () Int)

(assert (=> bs!1201143 (= lambda!256828 lambda!256806)))

(declare-fun bs!1201144 () Bool)

(declare-fun b!5145493 () Bool)

(assert (= bs!1201144 (and b!5145493 b!5145424)))

(declare-fun lambda!256829 () Int)

(assert (=> bs!1201144 (not (= lambda!256829 lambda!256806))))

(declare-fun bs!1201145 () Bool)

(assert (= bs!1201145 (and b!5145493 d!1663358)))

(assert (=> bs!1201145 (not (= lambda!256829 lambda!256828))))

(declare-fun bs!1201146 () Bool)

(declare-fun b!5145494 () Bool)

(assert (= bs!1201146 (and b!5145494 b!5145424)))

(declare-fun lambda!256830 () Int)

(assert (=> bs!1201146 (not (= lambda!256830 lambda!256806))))

(declare-fun bs!1201147 () Bool)

(assert (= bs!1201147 (and b!5145494 d!1663358)))

(assert (=> bs!1201147 (not (= lambda!256830 lambda!256828))))

(declare-fun bs!1201148 () Bool)

(assert (= bs!1201148 (and b!5145494 b!5145493)))

(assert (=> bs!1201148 (= lambda!256830 lambda!256829)))

(declare-fun lt!2120996 () Bool)

(declare-datatypes ((List!59883 0))(
  ( (Nil!59759) (Cons!59759 (h!66207 C!29228) (t!372920 List!59883)) )
))
(declare-datatypes ((Option!14794 0))(
  ( (None!14793) (Some!14793 (v!50822 List!59883)) )
))
(declare-fun isEmpty!32055 (Option!14794) Bool)

(declare-fun getLanguageWitness!951 ((InoxSet Context!7730)) Option!14794)

(assert (=> d!1663358 (= lt!2120996 (isEmpty!32055 (getLanguageWitness!951 (derivationStepZipperDown!160 expr!117 ctx!100 a!1296))))))

(assert (=> d!1663358 (= lt!2120996 (forall!13953 (derivationStepZipperDown!160 expr!117 ctx!100 a!1296) lambda!256828))))

(declare-fun lt!2120989 () Unit!151157)

(declare-fun e!3208494 () Unit!151157)

(assert (=> d!1663358 (= lt!2120989 e!3208494)))

(declare-fun c!885957 () Bool)

(assert (=> d!1663358 (= c!885957 (not (forall!13953 (derivationStepZipperDown!160 expr!117 ctx!100 a!1296) lambda!256828)))))

(assert (=> d!1663358 (= (lostCauseZipper!1279 (derivationStepZipperDown!160 expr!117 ctx!100 a!1296)) lt!2120996)))

(declare-fun bm!359621 () Bool)

(declare-datatypes ((List!59884 0))(
  ( (Nil!59760) (Cons!59760 (h!66208 Context!7730) (t!372921 List!59884)) )
))
(declare-fun call!359626 () List!59884)

(declare-fun toList!8395 ((InoxSet Context!7730)) List!59884)

(assert (=> bm!359621 (= call!359626 (toList!8395 (derivationStepZipperDown!160 expr!117 ctx!100 a!1296)))))

(declare-fun Unit!151159 () Unit!151157)

(assert (=> b!5145494 (= e!3208494 Unit!151159)))

(declare-fun lt!2120994 () List!59884)

(assert (=> b!5145494 (= lt!2120994 call!359626)))

(declare-fun lt!2120992 () Unit!151157)

(declare-fun lemmaForallThenNotExists!408 (List!59884 Int) Unit!151157)

(assert (=> b!5145494 (= lt!2120992 (lemmaForallThenNotExists!408 lt!2120994 lambda!256828))))

(declare-fun call!359625 () Bool)

(assert (=> b!5145494 (not call!359625)))

(declare-fun lt!2120990 () Unit!151157)

(assert (=> b!5145494 (= lt!2120990 lt!2120992)))

(declare-fun Unit!151160 () Unit!151157)

(assert (=> b!5145493 (= e!3208494 Unit!151160)))

(declare-fun lt!2120991 () List!59884)

(assert (=> b!5145493 (= lt!2120991 call!359626)))

(declare-fun lt!2120995 () Unit!151157)

(declare-fun lemmaNotForallThenExists!441 (List!59884 Int) Unit!151157)

(assert (=> b!5145493 (= lt!2120995 (lemmaNotForallThenExists!441 lt!2120991 lambda!256828))))

(assert (=> b!5145493 call!359625))

(declare-fun lt!2120993 () Unit!151157)

(assert (=> b!5145493 (= lt!2120993 lt!2120995)))

(declare-fun bm!359620 () Bool)

(declare-fun exists!1811 (List!59884 Int) Bool)

(assert (=> bm!359620 (= call!359625 (exists!1811 (ite c!885957 lt!2120991 lt!2120994) (ite c!885957 lambda!256829 lambda!256830)))))

(assert (= (and d!1663358 c!885957) b!5145493))

(assert (= (and d!1663358 (not c!885957)) b!5145494))

(assert (= (or b!5145493 b!5145494) bm!359620))

(assert (= (or b!5145493 b!5145494) bm!359621))

(declare-fun m!6206388 () Bool)

(assert (=> bm!359620 m!6206388))

(assert (=> d!1663358 m!6206320))

(declare-fun m!6206390 () Bool)

(assert (=> d!1663358 m!6206390))

(assert (=> d!1663358 m!6206390))

(declare-fun m!6206392 () Bool)

(assert (=> d!1663358 m!6206392))

(assert (=> d!1663358 m!6206320))

(declare-fun m!6206394 () Bool)

(assert (=> d!1663358 m!6206394))

(assert (=> d!1663358 m!6206320))

(assert (=> d!1663358 m!6206394))

(declare-fun m!6206396 () Bool)

(assert (=> b!5145494 m!6206396))

(assert (=> bm!359621 m!6206320))

(declare-fun m!6206398 () Bool)

(assert (=> bm!359621 m!6206398))

(declare-fun m!6206400 () Bool)

(assert (=> b!5145493 m!6206400))

(assert (=> b!5145425 d!1663358))

(declare-fun b!5145525 () Bool)

(declare-fun e!3208519 () (InoxSet Context!7730))

(declare-fun call!359650 () (InoxSet Context!7730))

(assert (=> b!5145525 (= e!3208519 call!359650)))

(declare-fun b!5145526 () Bool)

(declare-fun e!3208516 () (InoxSet Context!7730))

(declare-fun call!359649 () (InoxSet Context!7730))

(declare-fun call!359651 () (InoxSet Context!7730))

(assert (=> b!5145526 (= e!3208516 ((_ map or) call!359649 call!359651))))

(declare-fun call!359648 () List!59881)

(declare-fun bm!359642 () Bool)

(declare-fun c!885983 () Bool)

(assert (=> bm!359642 (= call!359649 (derivationStepZipperDown!160 (ite c!885983 (regOne!29475 expr!117) (regOne!29474 expr!117)) (ite c!885983 ctx!100 (Context!7731 call!359648)) a!1296))))

(declare-fun b!5145527 () Bool)

(declare-fun e!3208515 () (InoxSet Context!7730))

(assert (=> b!5145527 (= e!3208516 e!3208515)))

(declare-fun c!885982 () Bool)

(assert (=> b!5145527 (= c!885982 ((_ is Concat!23326) expr!117))))

(declare-fun d!1663368 () Bool)

(declare-fun c!885984 () Bool)

(assert (=> d!1663368 (= c!885984 (and ((_ is ElementMatch!14481) expr!117) (= (c!885934 expr!117) a!1296)))))

(declare-fun e!3208520 () (InoxSet Context!7730))

(assert (=> d!1663368 (= (derivationStepZipperDown!160 expr!117 ctx!100 a!1296) e!3208520)))

(declare-fun c!885981 () Bool)

(declare-fun bm!359643 () Bool)

(declare-fun $colon$colon!1208 (List!59881 Regex!14481) List!59881)

(assert (=> bm!359643 (= call!359648 ($colon$colon!1208 (exprs!4365 ctx!100) (ite (or c!885981 c!885982) (regTwo!29474 expr!117) expr!117)))))

(declare-fun b!5145528 () Bool)

(declare-fun e!3208518 () Bool)

(assert (=> b!5145528 (= e!3208518 (nullable!4836 (regOne!29474 expr!117)))))

(declare-fun call!359652 () List!59881)

(declare-fun bm!359644 () Bool)

(declare-fun call!359647 () (InoxSet Context!7730))

(assert (=> bm!359644 (= call!359647 (derivationStepZipperDown!160 (ite c!885983 (regTwo!29475 expr!117) (ite c!885981 (regTwo!29474 expr!117) (ite c!885982 (regOne!29474 expr!117) (reg!14810 expr!117)))) (ite (or c!885983 c!885981) ctx!100 (Context!7731 call!359652)) a!1296))))

(declare-fun b!5145529 () Bool)

(declare-fun c!885980 () Bool)

(assert (=> b!5145529 (= c!885980 ((_ is Star!14481) expr!117))))

(assert (=> b!5145529 (= e!3208515 e!3208519)))

(declare-fun b!5145530 () Bool)

(assert (=> b!5145530 (= c!885981 e!3208518)))

(declare-fun res!2190436 () Bool)

(assert (=> b!5145530 (=> (not res!2190436) (not e!3208518))))

(assert (=> b!5145530 (= res!2190436 ((_ is Concat!23326) expr!117))))

(declare-fun e!3208517 () (InoxSet Context!7730))

(assert (=> b!5145530 (= e!3208517 e!3208516)))

(declare-fun bm!359645 () Bool)

(assert (=> bm!359645 (= call!359651 call!359647)))

(declare-fun b!5145531 () Bool)

(assert (=> b!5145531 (= e!3208515 call!359650)))

(declare-fun bm!359646 () Bool)

(assert (=> bm!359646 (= call!359650 call!359651)))

(declare-fun b!5145532 () Bool)

(assert (=> b!5145532 (= e!3208517 ((_ map or) call!359649 call!359647))))

(declare-fun b!5145533 () Bool)

(assert (=> b!5145533 (= e!3208519 ((as const (Array Context!7730 Bool)) false))))

(declare-fun b!5145534 () Bool)

(assert (=> b!5145534 (= e!3208520 e!3208517)))

(assert (=> b!5145534 (= c!885983 ((_ is Union!14481) expr!117))))

(declare-fun b!5145535 () Bool)

(assert (=> b!5145535 (= e!3208520 (store ((as const (Array Context!7730 Bool)) false) ctx!100 true))))

(declare-fun bm!359647 () Bool)

(assert (=> bm!359647 (= call!359652 call!359648)))

(assert (= (and d!1663368 c!885984) b!5145535))

(assert (= (and d!1663368 (not c!885984)) b!5145534))

(assert (= (and b!5145534 c!885983) b!5145532))

(assert (= (and b!5145534 (not c!885983)) b!5145530))

(assert (= (and b!5145530 res!2190436) b!5145528))

(assert (= (and b!5145530 c!885981) b!5145526))

(assert (= (and b!5145530 (not c!885981)) b!5145527))

(assert (= (and b!5145527 c!885982) b!5145531))

(assert (= (and b!5145527 (not c!885982)) b!5145529))

(assert (= (and b!5145529 c!885980) b!5145525))

(assert (= (and b!5145529 (not c!885980)) b!5145533))

(assert (= (or b!5145531 b!5145525) bm!359647))

(assert (= (or b!5145531 b!5145525) bm!359646))

(assert (= (or b!5145526 bm!359647) bm!359643))

(assert (= (or b!5145526 bm!359646) bm!359645))

(assert (= (or b!5145532 bm!359645) bm!359644))

(assert (= (or b!5145532 b!5145526) bm!359642))

(declare-fun m!6206432 () Bool)

(assert (=> bm!359643 m!6206432))

(declare-fun m!6206434 () Bool)

(assert (=> bm!359642 m!6206434))

(declare-fun m!6206436 () Bool)

(assert (=> bm!359644 m!6206436))

(declare-fun m!6206438 () Bool)

(assert (=> b!5145528 m!6206438))

(declare-fun m!6206440 () Bool)

(assert (=> b!5145535 m!6206440))

(assert (=> b!5145425 d!1663368))

(declare-fun lt!2121032 () Bool)

(declare-fun d!1663376 () Bool)

(declare-fun forall!13957 (List!59884 Int) Bool)

(assert (=> d!1663376 (= lt!2121032 (forall!13957 (toList!8395 ((_ map or) lt!2120961 lt!2120965)) lambda!256806))))

(declare-fun choose!38073 ((InoxSet Context!7730) Int) Bool)

(assert (=> d!1663376 (= lt!2121032 (choose!38073 ((_ map or) lt!2120961 lt!2120965) lambda!256806))))

(assert (=> d!1663376 (= (forall!13953 ((_ map or) lt!2120961 lt!2120965) lambda!256806) lt!2121032)))

(declare-fun bs!1201171 () Bool)

(assert (= bs!1201171 d!1663376))

(declare-fun m!6206442 () Bool)

(assert (=> bs!1201171 m!6206442))

(assert (=> bs!1201171 m!6206442))

(declare-fun m!6206444 () Bool)

(assert (=> bs!1201171 m!6206444))

(declare-fun m!6206446 () Bool)

(assert (=> bs!1201171 m!6206446))

(assert (=> b!5145425 d!1663376))

(declare-fun d!1663378 () Bool)

(assert (=> d!1663378 (forall!13953 ((_ map or) lt!2120961 lt!2120965) lambda!256806)))

(declare-fun lt!2121035 () Unit!151157)

(declare-fun choose!38074 ((InoxSet Context!7730) (InoxSet Context!7730) Int) Unit!151157)

(assert (=> d!1663378 (= lt!2121035 (choose!38074 lt!2120961 lt!2120965 lambda!256806))))

(assert (=> d!1663378 (forall!13953 lt!2120961 lambda!256806)))

(assert (=> d!1663378 (= (lemmaConcatPreservesForall!138 lt!2120961 lt!2120965 lambda!256806) lt!2121035)))

(declare-fun bs!1201172 () Bool)

(assert (= bs!1201172 d!1663378))

(assert (=> bs!1201172 m!6206324))

(declare-fun m!6206448 () Bool)

(assert (=> bs!1201172 m!6206448))

(assert (=> bs!1201172 m!6206338))

(assert (=> b!5145425 d!1663378))

(declare-fun d!1663380 () Bool)

(declare-fun lt!2121036 () Bool)

(assert (=> d!1663380 (= lt!2121036 (forall!13957 (toList!8395 lt!2120965) lambda!256806))))

(assert (=> d!1663380 (= lt!2121036 (choose!38073 lt!2120965 lambda!256806))))

(assert (=> d!1663380 (= (forall!13953 lt!2120965 lambda!256806) lt!2121036)))

(declare-fun bs!1201173 () Bool)

(assert (= bs!1201173 d!1663380))

(declare-fun m!6206450 () Bool)

(assert (=> bs!1201173 m!6206450))

(assert (=> bs!1201173 m!6206450))

(declare-fun m!6206452 () Bool)

(assert (=> bs!1201173 m!6206452))

(declare-fun m!6206454 () Bool)

(assert (=> bs!1201173 m!6206454))

(assert (=> b!5145431 d!1663380))

(declare-fun bs!1201174 () Bool)

(declare-fun d!1663382 () Bool)

(assert (= bs!1201174 (and d!1663382 d!1663354)))

(declare-fun lambda!256851 () Int)

(assert (=> bs!1201174 (not (= lambda!256851 lambda!256809))))

(declare-fun exists!1813 (List!59881 Int) Bool)

(assert (=> d!1663382 (= (lostCause!1514 ctx!100) (exists!1813 (exprs!4365 ctx!100) lambda!256851))))

(declare-fun bs!1201175 () Bool)

(assert (= bs!1201175 d!1663382))

(declare-fun m!6206456 () Bool)

(assert (=> bs!1201175 m!6206456))

(assert (=> b!5145426 d!1663382))

(declare-fun d!1663384 () Bool)

(assert (=> d!1663384 (lostCauseZipper!1279 (derivationStepZipperDown!160 (regTwo!29475 expr!117) ctx!100 a!1296))))

(declare-fun lt!2121047 () Unit!151157)

(declare-fun choose!38075 (Regex!14481 Context!7730 C!29228) Unit!151157)

(assert (=> d!1663384 (= lt!2121047 (choose!38075 (regTwo!29475 expr!117) ctx!100 a!1296))))

(assert (=> d!1663384 (validRegex!6336 (regTwo!29475 expr!117))))

(assert (=> d!1663384 (= (lemmaLostCauseFixPointDerivDown!50 (regTwo!29475 expr!117) ctx!100 a!1296) lt!2121047)))

(declare-fun bs!1201183 () Bool)

(assert (= bs!1201183 d!1663384))

(assert (=> bs!1201183 m!6206332))

(assert (=> bs!1201183 m!6206332))

(declare-fun m!6206476 () Bool)

(assert (=> bs!1201183 m!6206476))

(declare-fun m!6206478 () Bool)

(assert (=> bs!1201183 m!6206478))

(declare-fun m!6206480 () Bool)

(assert (=> bs!1201183 m!6206480))

(assert (=> b!5145424 d!1663384))

(declare-fun bs!1201189 () Bool)

(declare-fun d!1663390 () Bool)

(assert (= bs!1201189 (and d!1663390 b!5145424)))

(declare-fun lambda!256854 () Int)

(assert (=> bs!1201189 (= lambda!256854 lambda!256806)))

(declare-fun bs!1201192 () Bool)

(assert (= bs!1201192 (and d!1663390 d!1663358)))

(assert (=> bs!1201192 (= lambda!256854 lambda!256828)))

(declare-fun bs!1201194 () Bool)

(assert (= bs!1201194 (and d!1663390 b!5145493)))

(assert (=> bs!1201194 (not (= lambda!256854 lambda!256829))))

(declare-fun bs!1201195 () Bool)

(assert (= bs!1201195 (and d!1663390 b!5145494)))

(assert (=> bs!1201195 (not (= lambda!256854 lambda!256830))))

(declare-fun bs!1201198 () Bool)

(declare-fun b!5145582 () Bool)

(assert (= bs!1201198 (and b!5145582 d!1663358)))

(declare-fun lambda!256856 () Int)

(assert (=> bs!1201198 (not (= lambda!256856 lambda!256828))))

(declare-fun bs!1201201 () Bool)

(assert (= bs!1201201 (and b!5145582 b!5145424)))

(assert (=> bs!1201201 (not (= lambda!256856 lambda!256806))))

(declare-fun bs!1201203 () Bool)

(assert (= bs!1201203 (and b!5145582 b!5145494)))

(assert (=> bs!1201203 (= lambda!256856 lambda!256830)))

(declare-fun bs!1201204 () Bool)

(assert (= bs!1201204 (and b!5145582 b!5145493)))

(assert (=> bs!1201204 (= lambda!256856 lambda!256829)))

(declare-fun bs!1201206 () Bool)

(assert (= bs!1201206 (and b!5145582 d!1663390)))

(assert (=> bs!1201206 (not (= lambda!256856 lambda!256854))))

(declare-fun bs!1201210 () Bool)

(declare-fun b!5145583 () Bool)

(assert (= bs!1201210 (and b!5145583 d!1663358)))

(declare-fun lambda!256857 () Int)

(assert (=> bs!1201210 (not (= lambda!256857 lambda!256828))))

(declare-fun bs!1201211 () Bool)

(assert (= bs!1201211 (and b!5145583 b!5145424)))

(assert (=> bs!1201211 (not (= lambda!256857 lambda!256806))))

(declare-fun bs!1201212 () Bool)

(assert (= bs!1201212 (and b!5145583 b!5145494)))

(assert (=> bs!1201212 (= lambda!256857 lambda!256830)))

(declare-fun bs!1201213 () Bool)

(assert (= bs!1201213 (and b!5145583 b!5145582)))

(assert (=> bs!1201213 (= lambda!256857 lambda!256856)))

(declare-fun bs!1201214 () Bool)

(assert (= bs!1201214 (and b!5145583 b!5145493)))

(assert (=> bs!1201214 (= lambda!256857 lambda!256829)))

(declare-fun bs!1201215 () Bool)

(assert (= bs!1201215 (and b!5145583 d!1663390)))

(assert (=> bs!1201215 (not (= lambda!256857 lambda!256854))))

(declare-fun lt!2121055 () Bool)

(assert (=> d!1663390 (= lt!2121055 (isEmpty!32055 (getLanguageWitness!951 lt!2120965)))))

(assert (=> d!1663390 (= lt!2121055 (forall!13953 lt!2120965 lambda!256854))))

(declare-fun lt!2121048 () Unit!151157)

(declare-fun e!3208546 () Unit!151157)

(assert (=> d!1663390 (= lt!2121048 e!3208546)))

(declare-fun c!886006 () Bool)

(assert (=> d!1663390 (= c!886006 (not (forall!13953 lt!2120965 lambda!256854)))))

(assert (=> d!1663390 (= (lostCauseZipper!1279 lt!2120965) lt!2121055)))

(declare-fun bm!359675 () Bool)

(declare-fun call!359680 () List!59884)

(assert (=> bm!359675 (= call!359680 (toList!8395 lt!2120965))))

(declare-fun Unit!151165 () Unit!151157)

(assert (=> b!5145583 (= e!3208546 Unit!151165)))

(declare-fun lt!2121053 () List!59884)

(assert (=> b!5145583 (= lt!2121053 call!359680)))

(declare-fun lt!2121051 () Unit!151157)

(assert (=> b!5145583 (= lt!2121051 (lemmaForallThenNotExists!408 lt!2121053 lambda!256854))))

(declare-fun call!359679 () Bool)

(assert (=> b!5145583 (not call!359679)))

(declare-fun lt!2121049 () Unit!151157)

(assert (=> b!5145583 (= lt!2121049 lt!2121051)))

(declare-fun Unit!151166 () Unit!151157)

(assert (=> b!5145582 (= e!3208546 Unit!151166)))

(declare-fun lt!2121050 () List!59884)

(assert (=> b!5145582 (= lt!2121050 call!359680)))

(declare-fun lt!2121054 () Unit!151157)

(assert (=> b!5145582 (= lt!2121054 (lemmaNotForallThenExists!441 lt!2121050 lambda!256854))))

(assert (=> b!5145582 call!359679))

(declare-fun lt!2121052 () Unit!151157)

(assert (=> b!5145582 (= lt!2121052 lt!2121054)))

(declare-fun bm!359674 () Bool)

(assert (=> bm!359674 (= call!359679 (exists!1811 (ite c!886006 lt!2121050 lt!2121053) (ite c!886006 lambda!256856 lambda!256857)))))

(assert (= (and d!1663390 c!886006) b!5145582))

(assert (= (and d!1663390 (not c!886006)) b!5145583))

(assert (= (or b!5145582 b!5145583) bm!359674))

(assert (= (or b!5145582 b!5145583) bm!359675))

(declare-fun m!6206496 () Bool)

(assert (=> bm!359674 m!6206496))

(declare-fun m!6206498 () Bool)

(assert (=> d!1663390 m!6206498))

(assert (=> d!1663390 m!6206498))

(declare-fun m!6206500 () Bool)

(assert (=> d!1663390 m!6206500))

(declare-fun m!6206502 () Bool)

(assert (=> d!1663390 m!6206502))

(assert (=> d!1663390 m!6206502))

(declare-fun m!6206504 () Bool)

(assert (=> b!5145583 m!6206504))

(assert (=> bm!359675 m!6206450))

(declare-fun m!6206506 () Bool)

(assert (=> b!5145582 m!6206506))

(assert (=> b!5145424 d!1663390))

(declare-fun d!1663394 () Bool)

(declare-fun lt!2121056 () Bool)

(assert (=> d!1663394 (= lt!2121056 (forall!13957 (toList!8395 lt!2120961) lambda!256806))))

(assert (=> d!1663394 (= lt!2121056 (choose!38073 lt!2120961 lambda!256806))))

(assert (=> d!1663394 (= (forall!13953 lt!2120961 lambda!256806) lt!2121056)))

(declare-fun bs!1201216 () Bool)

(assert (= bs!1201216 d!1663394))

(declare-fun m!6206508 () Bool)

(assert (=> bs!1201216 m!6206508))

(assert (=> bs!1201216 m!6206508))

(declare-fun m!6206510 () Bool)

(assert (=> bs!1201216 m!6206510))

(declare-fun m!6206512 () Bool)

(assert (=> bs!1201216 m!6206512))

(assert (=> b!5145424 d!1663394))

(declare-fun d!1663396 () Bool)

(assert (=> d!1663396 (lostCauseZipper!1279 (derivationStepZipperDown!160 (regOne!29475 expr!117) ctx!100 a!1296))))

(declare-fun lt!2121057 () Unit!151157)

(assert (=> d!1663396 (= lt!2121057 (choose!38075 (regOne!29475 expr!117) ctx!100 a!1296))))

(assert (=> d!1663396 (validRegex!6336 (regOne!29475 expr!117))))

(assert (=> d!1663396 (= (lemmaLostCauseFixPointDerivDown!50 (regOne!29475 expr!117) ctx!100 a!1296) lt!2121057)))

(declare-fun bs!1201217 () Bool)

(assert (= bs!1201217 d!1663396))

(assert (=> bs!1201217 m!6206336))

(assert (=> bs!1201217 m!6206336))

(declare-fun m!6206522 () Bool)

(assert (=> bs!1201217 m!6206522))

(declare-fun m!6206524 () Bool)

(assert (=> bs!1201217 m!6206524))

(declare-fun m!6206526 () Bool)

(assert (=> bs!1201217 m!6206526))

(assert (=> b!5145424 d!1663396))

(declare-fun bs!1201219 () Bool)

(declare-fun d!1663400 () Bool)

(assert (= bs!1201219 (and d!1663400 d!1663358)))

(declare-fun lambda!256858 () Int)

(assert (=> bs!1201219 (= lambda!256858 lambda!256828)))

(declare-fun bs!1201220 () Bool)

(assert (= bs!1201220 (and d!1663400 b!5145583)))

(assert (=> bs!1201220 (not (= lambda!256858 lambda!256857))))

(declare-fun bs!1201221 () Bool)

(assert (= bs!1201221 (and d!1663400 b!5145424)))

(assert (=> bs!1201221 (= lambda!256858 lambda!256806)))

(declare-fun bs!1201222 () Bool)

(assert (= bs!1201222 (and d!1663400 b!5145494)))

(assert (=> bs!1201222 (not (= lambda!256858 lambda!256830))))

(declare-fun bs!1201223 () Bool)

(assert (= bs!1201223 (and d!1663400 b!5145582)))

(assert (=> bs!1201223 (not (= lambda!256858 lambda!256856))))

(declare-fun bs!1201224 () Bool)

(assert (= bs!1201224 (and d!1663400 b!5145493)))

(assert (=> bs!1201224 (not (= lambda!256858 lambda!256829))))

(declare-fun bs!1201225 () Bool)

(assert (= bs!1201225 (and d!1663400 d!1663390)))

(assert (=> bs!1201225 (= lambda!256858 lambda!256854)))

(declare-fun bs!1201226 () Bool)

(declare-fun b!5145595 () Bool)

(assert (= bs!1201226 (and b!5145595 d!1663358)))

(declare-fun lambda!256859 () Int)

(assert (=> bs!1201226 (not (= lambda!256859 lambda!256828))))

(declare-fun bs!1201227 () Bool)

(assert (= bs!1201227 (and b!5145595 b!5145583)))

(assert (=> bs!1201227 (= lambda!256859 lambda!256857)))

(declare-fun bs!1201228 () Bool)

(assert (= bs!1201228 (and b!5145595 b!5145424)))

(assert (=> bs!1201228 (not (= lambda!256859 lambda!256806))))

(declare-fun bs!1201229 () Bool)

(assert (= bs!1201229 (and b!5145595 d!1663400)))

(assert (=> bs!1201229 (not (= lambda!256859 lambda!256858))))

(declare-fun bs!1201230 () Bool)

(assert (= bs!1201230 (and b!5145595 b!5145494)))

(assert (=> bs!1201230 (= lambda!256859 lambda!256830)))

(declare-fun bs!1201231 () Bool)

(assert (= bs!1201231 (and b!5145595 b!5145582)))

(assert (=> bs!1201231 (= lambda!256859 lambda!256856)))

(declare-fun bs!1201232 () Bool)

(assert (= bs!1201232 (and b!5145595 b!5145493)))

(assert (=> bs!1201232 (= lambda!256859 lambda!256829)))

(declare-fun bs!1201233 () Bool)

(assert (= bs!1201233 (and b!5145595 d!1663390)))

(assert (=> bs!1201233 (not (= lambda!256859 lambda!256854))))

(declare-fun bs!1201234 () Bool)

(declare-fun b!5145596 () Bool)

(assert (= bs!1201234 (and b!5145596 d!1663358)))

(declare-fun lambda!256860 () Int)

(assert (=> bs!1201234 (not (= lambda!256860 lambda!256828))))

(declare-fun bs!1201235 () Bool)

(assert (= bs!1201235 (and b!5145596 b!5145583)))

(assert (=> bs!1201235 (= lambda!256860 lambda!256857)))

(declare-fun bs!1201236 () Bool)

(assert (= bs!1201236 (and b!5145596 b!5145424)))

(assert (=> bs!1201236 (not (= lambda!256860 lambda!256806))))

(declare-fun bs!1201237 () Bool)

(assert (= bs!1201237 (and b!5145596 d!1663400)))

(assert (=> bs!1201237 (not (= lambda!256860 lambda!256858))))

(declare-fun bs!1201238 () Bool)

(assert (= bs!1201238 (and b!5145596 b!5145494)))

(assert (=> bs!1201238 (= lambda!256860 lambda!256830)))

(declare-fun bs!1201239 () Bool)

(assert (= bs!1201239 (and b!5145596 b!5145582)))

(assert (=> bs!1201239 (= lambda!256860 lambda!256856)))

(declare-fun bs!1201240 () Bool)

(assert (= bs!1201240 (and b!5145596 b!5145493)))

(assert (=> bs!1201240 (= lambda!256860 lambda!256829)))

(declare-fun bs!1201241 () Bool)

(assert (= bs!1201241 (and b!5145596 d!1663390)))

(assert (=> bs!1201241 (not (= lambda!256860 lambda!256854))))

(declare-fun bs!1201242 () Bool)

(assert (= bs!1201242 (and b!5145596 b!5145595)))

(assert (=> bs!1201242 (= lambda!256860 lambda!256859)))

(declare-fun lt!2121066 () Bool)

(assert (=> d!1663400 (= lt!2121066 (isEmpty!32055 (getLanguageWitness!951 lt!2120961)))))

(assert (=> d!1663400 (= lt!2121066 (forall!13953 lt!2120961 lambda!256858))))

(declare-fun lt!2121059 () Unit!151157)

(declare-fun e!3208553 () Unit!151157)

(assert (=> d!1663400 (= lt!2121059 e!3208553)))

(declare-fun c!886012 () Bool)

(assert (=> d!1663400 (= c!886012 (not (forall!13953 lt!2120961 lambda!256858)))))

(assert (=> d!1663400 (= (lostCauseZipper!1279 lt!2120961) lt!2121066)))

(declare-fun bm!359683 () Bool)

(declare-fun call!359688 () List!59884)

(assert (=> bm!359683 (= call!359688 (toList!8395 lt!2120961))))

(declare-fun Unit!151167 () Unit!151157)

(assert (=> b!5145596 (= e!3208553 Unit!151167)))

(declare-fun lt!2121064 () List!59884)

(assert (=> b!5145596 (= lt!2121064 call!359688)))

(declare-fun lt!2121062 () Unit!151157)

(assert (=> b!5145596 (= lt!2121062 (lemmaForallThenNotExists!408 lt!2121064 lambda!256858))))

(declare-fun call!359687 () Bool)

(assert (=> b!5145596 (not call!359687)))

(declare-fun lt!2121060 () Unit!151157)

(assert (=> b!5145596 (= lt!2121060 lt!2121062)))

(declare-fun Unit!151168 () Unit!151157)

(assert (=> b!5145595 (= e!3208553 Unit!151168)))

(declare-fun lt!2121061 () List!59884)

(assert (=> b!5145595 (= lt!2121061 call!359688)))

(declare-fun lt!2121065 () Unit!151157)

(assert (=> b!5145595 (= lt!2121065 (lemmaNotForallThenExists!441 lt!2121061 lambda!256858))))

(assert (=> b!5145595 call!359687))

(declare-fun lt!2121063 () Unit!151157)

(assert (=> b!5145595 (= lt!2121063 lt!2121065)))

(declare-fun bm!359682 () Bool)

(assert (=> bm!359682 (= call!359687 (exists!1811 (ite c!886012 lt!2121061 lt!2121064) (ite c!886012 lambda!256859 lambda!256860)))))

(assert (= (and d!1663400 c!886012) b!5145595))

(assert (= (and d!1663400 (not c!886012)) b!5145596))

(assert (= (or b!5145595 b!5145596) bm!359682))

(assert (= (or b!5145595 b!5145596) bm!359683))

(declare-fun m!6206536 () Bool)

(assert (=> bm!359682 m!6206536))

(declare-fun m!6206538 () Bool)

(assert (=> d!1663400 m!6206538))

(assert (=> d!1663400 m!6206538))

(declare-fun m!6206540 () Bool)

(assert (=> d!1663400 m!6206540))

(declare-fun m!6206542 () Bool)

(assert (=> d!1663400 m!6206542))

(assert (=> d!1663400 m!6206542))

(declare-fun m!6206544 () Bool)

(assert (=> b!5145596 m!6206544))

(assert (=> bm!359683 m!6206508))

(declare-fun m!6206546 () Bool)

(assert (=> b!5145595 m!6206546))

(assert (=> b!5145424 d!1663400))

(declare-fun b!5145597 () Bool)

(declare-fun e!3208558 () (InoxSet Context!7730))

(declare-fun call!359692 () (InoxSet Context!7730))

(assert (=> b!5145597 (= e!3208558 call!359692)))

(declare-fun b!5145598 () Bool)

(declare-fun e!3208555 () (InoxSet Context!7730))

(declare-fun call!359691 () (InoxSet Context!7730))

(declare-fun call!359693 () (InoxSet Context!7730))

(assert (=> b!5145598 (= e!3208555 ((_ map or) call!359691 call!359693))))

(declare-fun call!359690 () List!59881)

(declare-fun bm!359684 () Bool)

(declare-fun c!886016 () Bool)

(assert (=> bm!359684 (= call!359691 (derivationStepZipperDown!160 (ite c!886016 (regOne!29475 (regTwo!29475 expr!117)) (regOne!29474 (regTwo!29475 expr!117))) (ite c!886016 ctx!100 (Context!7731 call!359690)) a!1296))))

(declare-fun b!5145599 () Bool)

(declare-fun e!3208554 () (InoxSet Context!7730))

(assert (=> b!5145599 (= e!3208555 e!3208554)))

(declare-fun c!886015 () Bool)

(assert (=> b!5145599 (= c!886015 ((_ is Concat!23326) (regTwo!29475 expr!117)))))

(declare-fun d!1663406 () Bool)

(declare-fun c!886017 () Bool)

(assert (=> d!1663406 (= c!886017 (and ((_ is ElementMatch!14481) (regTwo!29475 expr!117)) (= (c!885934 (regTwo!29475 expr!117)) a!1296)))))

(declare-fun e!3208559 () (InoxSet Context!7730))

(assert (=> d!1663406 (= (derivationStepZipperDown!160 (regTwo!29475 expr!117) ctx!100 a!1296) e!3208559)))

(declare-fun bm!359685 () Bool)

(declare-fun c!886014 () Bool)

(assert (=> bm!359685 (= call!359690 ($colon$colon!1208 (exprs!4365 ctx!100) (ite (or c!886014 c!886015) (regTwo!29474 (regTwo!29475 expr!117)) (regTwo!29475 expr!117))))))

(declare-fun b!5145600 () Bool)

(declare-fun e!3208557 () Bool)

(assert (=> b!5145600 (= e!3208557 (nullable!4836 (regOne!29474 (regTwo!29475 expr!117))))))

(declare-fun call!359689 () (InoxSet Context!7730))

(declare-fun call!359694 () List!59881)

(declare-fun bm!359686 () Bool)

(assert (=> bm!359686 (= call!359689 (derivationStepZipperDown!160 (ite c!886016 (regTwo!29475 (regTwo!29475 expr!117)) (ite c!886014 (regTwo!29474 (regTwo!29475 expr!117)) (ite c!886015 (regOne!29474 (regTwo!29475 expr!117)) (reg!14810 (regTwo!29475 expr!117))))) (ite (or c!886016 c!886014) ctx!100 (Context!7731 call!359694)) a!1296))))

(declare-fun b!5145601 () Bool)

(declare-fun c!886013 () Bool)

(assert (=> b!5145601 (= c!886013 ((_ is Star!14481) (regTwo!29475 expr!117)))))

(assert (=> b!5145601 (= e!3208554 e!3208558)))

(declare-fun b!5145602 () Bool)

(assert (=> b!5145602 (= c!886014 e!3208557)))

(declare-fun res!2190442 () Bool)

(assert (=> b!5145602 (=> (not res!2190442) (not e!3208557))))

(assert (=> b!5145602 (= res!2190442 ((_ is Concat!23326) (regTwo!29475 expr!117)))))

(declare-fun e!3208556 () (InoxSet Context!7730))

(assert (=> b!5145602 (= e!3208556 e!3208555)))

(declare-fun bm!359687 () Bool)

(assert (=> bm!359687 (= call!359693 call!359689)))

(declare-fun b!5145603 () Bool)

(assert (=> b!5145603 (= e!3208554 call!359692)))

(declare-fun bm!359688 () Bool)

(assert (=> bm!359688 (= call!359692 call!359693)))

(declare-fun b!5145604 () Bool)

(assert (=> b!5145604 (= e!3208556 ((_ map or) call!359691 call!359689))))

(declare-fun b!5145605 () Bool)

(assert (=> b!5145605 (= e!3208558 ((as const (Array Context!7730 Bool)) false))))

(declare-fun b!5145606 () Bool)

(assert (=> b!5145606 (= e!3208559 e!3208556)))

(assert (=> b!5145606 (= c!886016 ((_ is Union!14481) (regTwo!29475 expr!117)))))

(declare-fun b!5145607 () Bool)

(assert (=> b!5145607 (= e!3208559 (store ((as const (Array Context!7730 Bool)) false) ctx!100 true))))

(declare-fun bm!359689 () Bool)

(assert (=> bm!359689 (= call!359694 call!359690)))

(assert (= (and d!1663406 c!886017) b!5145607))

(assert (= (and d!1663406 (not c!886017)) b!5145606))

(assert (= (and b!5145606 c!886016) b!5145604))

(assert (= (and b!5145606 (not c!886016)) b!5145602))

(assert (= (and b!5145602 res!2190442) b!5145600))

(assert (= (and b!5145602 c!886014) b!5145598))

(assert (= (and b!5145602 (not c!886014)) b!5145599))

(assert (= (and b!5145599 c!886015) b!5145603))

(assert (= (and b!5145599 (not c!886015)) b!5145601))

(assert (= (and b!5145601 c!886013) b!5145597))

(assert (= (and b!5145601 (not c!886013)) b!5145605))

(assert (= (or b!5145603 b!5145597) bm!359689))

(assert (= (or b!5145603 b!5145597) bm!359688))

(assert (= (or b!5145598 bm!359689) bm!359685))

(assert (= (or b!5145598 bm!359688) bm!359687))

(assert (= (or b!5145604 bm!359687) bm!359686))

(assert (= (or b!5145604 b!5145598) bm!359684))

(declare-fun m!6206550 () Bool)

(assert (=> bm!359685 m!6206550))

(declare-fun m!6206552 () Bool)

(assert (=> bm!359684 m!6206552))

(declare-fun m!6206554 () Bool)

(assert (=> bm!359686 m!6206554))

(declare-fun m!6206556 () Bool)

(assert (=> b!5145600 m!6206556))

(assert (=> b!5145607 m!6206440))

(assert (=> b!5145424 d!1663406))

(declare-fun b!5145612 () Bool)

(declare-fun e!3208566 () (InoxSet Context!7730))

(declare-fun call!359698 () (InoxSet Context!7730))

(assert (=> b!5145612 (= e!3208566 call!359698)))

(declare-fun b!5145613 () Bool)

(declare-fun e!3208563 () (InoxSet Context!7730))

(declare-fun call!359697 () (InoxSet Context!7730))

(declare-fun call!359699 () (InoxSet Context!7730))

(assert (=> b!5145613 (= e!3208563 ((_ map or) call!359697 call!359699))))

(declare-fun c!886021 () Bool)

(declare-fun bm!359690 () Bool)

(declare-fun call!359696 () List!59881)

(assert (=> bm!359690 (= call!359697 (derivationStepZipperDown!160 (ite c!886021 (regOne!29475 (regOne!29475 expr!117)) (regOne!29474 (regOne!29475 expr!117))) (ite c!886021 ctx!100 (Context!7731 call!359696)) a!1296))))

(declare-fun b!5145614 () Bool)

(declare-fun e!3208562 () (InoxSet Context!7730))

(assert (=> b!5145614 (= e!3208563 e!3208562)))

(declare-fun c!886020 () Bool)

(assert (=> b!5145614 (= c!886020 ((_ is Concat!23326) (regOne!29475 expr!117)))))

(declare-fun d!1663408 () Bool)

(declare-fun c!886022 () Bool)

(assert (=> d!1663408 (= c!886022 (and ((_ is ElementMatch!14481) (regOne!29475 expr!117)) (= (c!885934 (regOne!29475 expr!117)) a!1296)))))

(declare-fun e!3208567 () (InoxSet Context!7730))

(assert (=> d!1663408 (= (derivationStepZipperDown!160 (regOne!29475 expr!117) ctx!100 a!1296) e!3208567)))

(declare-fun bm!359691 () Bool)

(declare-fun c!886019 () Bool)

(assert (=> bm!359691 (= call!359696 ($colon$colon!1208 (exprs!4365 ctx!100) (ite (or c!886019 c!886020) (regTwo!29474 (regOne!29475 expr!117)) (regOne!29475 expr!117))))))

(declare-fun b!5145615 () Bool)

(declare-fun e!3208565 () Bool)

(assert (=> b!5145615 (= e!3208565 (nullable!4836 (regOne!29474 (regOne!29475 expr!117))))))

(declare-fun call!359695 () (InoxSet Context!7730))

(declare-fun bm!359692 () Bool)

(declare-fun call!359700 () List!59881)

(assert (=> bm!359692 (= call!359695 (derivationStepZipperDown!160 (ite c!886021 (regTwo!29475 (regOne!29475 expr!117)) (ite c!886019 (regTwo!29474 (regOne!29475 expr!117)) (ite c!886020 (regOne!29474 (regOne!29475 expr!117)) (reg!14810 (regOne!29475 expr!117))))) (ite (or c!886021 c!886019) ctx!100 (Context!7731 call!359700)) a!1296))))

(declare-fun b!5145616 () Bool)

(declare-fun c!886018 () Bool)

(assert (=> b!5145616 (= c!886018 ((_ is Star!14481) (regOne!29475 expr!117)))))

(assert (=> b!5145616 (= e!3208562 e!3208566)))

(declare-fun b!5145617 () Bool)

(assert (=> b!5145617 (= c!886019 e!3208565)))

(declare-fun res!2190443 () Bool)

(assert (=> b!5145617 (=> (not res!2190443) (not e!3208565))))

(assert (=> b!5145617 (= res!2190443 ((_ is Concat!23326) (regOne!29475 expr!117)))))

(declare-fun e!3208564 () (InoxSet Context!7730))

(assert (=> b!5145617 (= e!3208564 e!3208563)))

(declare-fun bm!359693 () Bool)

(assert (=> bm!359693 (= call!359699 call!359695)))

(declare-fun b!5145618 () Bool)

(assert (=> b!5145618 (= e!3208562 call!359698)))

(declare-fun bm!359694 () Bool)

(assert (=> bm!359694 (= call!359698 call!359699)))

(declare-fun b!5145619 () Bool)

(assert (=> b!5145619 (= e!3208564 ((_ map or) call!359697 call!359695))))

(declare-fun b!5145620 () Bool)

(assert (=> b!5145620 (= e!3208566 ((as const (Array Context!7730 Bool)) false))))

(declare-fun b!5145621 () Bool)

(assert (=> b!5145621 (= e!3208567 e!3208564)))

(assert (=> b!5145621 (= c!886021 ((_ is Union!14481) (regOne!29475 expr!117)))))

(declare-fun b!5145622 () Bool)

(assert (=> b!5145622 (= e!3208567 (store ((as const (Array Context!7730 Bool)) false) ctx!100 true))))

(declare-fun bm!359695 () Bool)

(assert (=> bm!359695 (= call!359700 call!359696)))

(assert (= (and d!1663408 c!886022) b!5145622))

(assert (= (and d!1663408 (not c!886022)) b!5145621))

(assert (= (and b!5145621 c!886021) b!5145619))

(assert (= (and b!5145621 (not c!886021)) b!5145617))

(assert (= (and b!5145617 res!2190443) b!5145615))

(assert (= (and b!5145617 c!886019) b!5145613))

(assert (= (and b!5145617 (not c!886019)) b!5145614))

(assert (= (and b!5145614 c!886020) b!5145618))

(assert (= (and b!5145614 (not c!886020)) b!5145616))

(assert (= (and b!5145616 c!886018) b!5145612))

(assert (= (and b!5145616 (not c!886018)) b!5145620))

(assert (= (or b!5145618 b!5145612) bm!359695))

(assert (= (or b!5145618 b!5145612) bm!359694))

(assert (= (or b!5145613 bm!359695) bm!359691))

(assert (= (or b!5145613 bm!359694) bm!359693))

(assert (= (or b!5145619 bm!359693) bm!359692))

(assert (= (or b!5145619 b!5145613) bm!359690))

(declare-fun m!6206558 () Bool)

(assert (=> bm!359691 m!6206558))

(declare-fun m!6206560 () Bool)

(assert (=> bm!359690 m!6206560))

(declare-fun m!6206562 () Bool)

(assert (=> bm!359692 m!6206562))

(declare-fun m!6206564 () Bool)

(assert (=> b!5145615 m!6206564))

(assert (=> b!5145622 m!6206440))

(assert (=> b!5145424 d!1663408))

(declare-fun b!5145666 () Bool)

(declare-fun e!3208578 () Bool)

(declare-fun tp!1437147 () Bool)

(assert (=> b!5145666 (= e!3208578 tp!1437147)))

(declare-fun b!5145665 () Bool)

(declare-fun tp!1437145 () Bool)

(declare-fun tp!1437146 () Bool)

(assert (=> b!5145665 (= e!3208578 (and tp!1437145 tp!1437146))))

(declare-fun b!5145667 () Bool)

(declare-fun tp!1437144 () Bool)

(declare-fun tp!1437143 () Bool)

(assert (=> b!5145667 (= e!3208578 (and tp!1437144 tp!1437143))))

(assert (=> b!5145428 (= tp!1437087 e!3208578)))

(declare-fun b!5145664 () Bool)

(assert (=> b!5145664 (= e!3208578 tp_is_empty!38111)))

(assert (= (and b!5145428 ((_ is ElementMatch!14481) (reg!14810 expr!117))) b!5145664))

(assert (= (and b!5145428 ((_ is Concat!23326) (reg!14810 expr!117))) b!5145665))

(assert (= (and b!5145428 ((_ is Star!14481) (reg!14810 expr!117))) b!5145666))

(assert (= (and b!5145428 ((_ is Union!14481) (reg!14810 expr!117))) b!5145667))

(declare-fun b!5145670 () Bool)

(declare-fun e!3208579 () Bool)

(declare-fun tp!1437152 () Bool)

(assert (=> b!5145670 (= e!3208579 tp!1437152)))

(declare-fun b!5145669 () Bool)

(declare-fun tp!1437150 () Bool)

(declare-fun tp!1437151 () Bool)

(assert (=> b!5145669 (= e!3208579 (and tp!1437150 tp!1437151))))

(declare-fun b!5145671 () Bool)

(declare-fun tp!1437149 () Bool)

(declare-fun tp!1437148 () Bool)

(assert (=> b!5145671 (= e!3208579 (and tp!1437149 tp!1437148))))

(assert (=> b!5145434 (= tp!1437090 e!3208579)))

(declare-fun b!5145668 () Bool)

(assert (=> b!5145668 (= e!3208579 tp_is_empty!38111)))

(assert (= (and b!5145434 ((_ is ElementMatch!14481) (regOne!29474 expr!117))) b!5145668))

(assert (= (and b!5145434 ((_ is Concat!23326) (regOne!29474 expr!117))) b!5145669))

(assert (= (and b!5145434 ((_ is Star!14481) (regOne!29474 expr!117))) b!5145670))

(assert (= (and b!5145434 ((_ is Union!14481) (regOne!29474 expr!117))) b!5145671))

(declare-fun b!5145674 () Bool)

(declare-fun e!3208580 () Bool)

(declare-fun tp!1437157 () Bool)

(assert (=> b!5145674 (= e!3208580 tp!1437157)))

(declare-fun b!5145673 () Bool)

(declare-fun tp!1437155 () Bool)

(declare-fun tp!1437156 () Bool)

(assert (=> b!5145673 (= e!3208580 (and tp!1437155 tp!1437156))))

(declare-fun b!5145675 () Bool)

(declare-fun tp!1437154 () Bool)

(declare-fun tp!1437153 () Bool)

(assert (=> b!5145675 (= e!3208580 (and tp!1437154 tp!1437153))))

(assert (=> b!5145434 (= tp!1437089 e!3208580)))

(declare-fun b!5145672 () Bool)

(assert (=> b!5145672 (= e!3208580 tp_is_empty!38111)))

(assert (= (and b!5145434 ((_ is ElementMatch!14481) (regTwo!29474 expr!117))) b!5145672))

(assert (= (and b!5145434 ((_ is Concat!23326) (regTwo!29474 expr!117))) b!5145673))

(assert (= (and b!5145434 ((_ is Star!14481) (regTwo!29474 expr!117))) b!5145674))

(assert (= (and b!5145434 ((_ is Union!14481) (regTwo!29474 expr!117))) b!5145675))

(declare-fun b!5145680 () Bool)

(declare-fun e!3208583 () Bool)

(declare-fun tp!1437162 () Bool)

(declare-fun tp!1437163 () Bool)

(assert (=> b!5145680 (= e!3208583 (and tp!1437162 tp!1437163))))

(assert (=> b!5145427 (= tp!1437091 e!3208583)))

(assert (= (and b!5145427 ((_ is Cons!59757) (exprs!4365 ctx!100))) b!5145680))

(declare-fun b!5145683 () Bool)

(declare-fun e!3208584 () Bool)

(declare-fun tp!1437168 () Bool)

(assert (=> b!5145683 (= e!3208584 tp!1437168)))

(declare-fun b!5145682 () Bool)

(declare-fun tp!1437166 () Bool)

(declare-fun tp!1437167 () Bool)

(assert (=> b!5145682 (= e!3208584 (and tp!1437166 tp!1437167))))

(declare-fun b!5145684 () Bool)

(declare-fun tp!1437165 () Bool)

(declare-fun tp!1437164 () Bool)

(assert (=> b!5145684 (= e!3208584 (and tp!1437165 tp!1437164))))

(assert (=> b!5145429 (= tp!1437088 e!3208584)))

(declare-fun b!5145681 () Bool)

(assert (=> b!5145681 (= e!3208584 tp_is_empty!38111)))

(assert (= (and b!5145429 ((_ is ElementMatch!14481) (regOne!29475 expr!117))) b!5145681))

(assert (= (and b!5145429 ((_ is Concat!23326) (regOne!29475 expr!117))) b!5145682))

(assert (= (and b!5145429 ((_ is Star!14481) (regOne!29475 expr!117))) b!5145683))

(assert (= (and b!5145429 ((_ is Union!14481) (regOne!29475 expr!117))) b!5145684))

(declare-fun b!5145687 () Bool)

(declare-fun e!3208585 () Bool)

(declare-fun tp!1437173 () Bool)

(assert (=> b!5145687 (= e!3208585 tp!1437173)))

(declare-fun b!5145686 () Bool)

(declare-fun tp!1437171 () Bool)

(declare-fun tp!1437172 () Bool)

(assert (=> b!5145686 (= e!3208585 (and tp!1437171 tp!1437172))))

(declare-fun b!5145688 () Bool)

(declare-fun tp!1437170 () Bool)

(declare-fun tp!1437169 () Bool)

(assert (=> b!5145688 (= e!3208585 (and tp!1437170 tp!1437169))))

(assert (=> b!5145429 (= tp!1437086 e!3208585)))

(declare-fun b!5145685 () Bool)

(assert (=> b!5145685 (= e!3208585 tp_is_empty!38111)))

(assert (= (and b!5145429 ((_ is ElementMatch!14481) (regTwo!29475 expr!117))) b!5145685))

(assert (= (and b!5145429 ((_ is Concat!23326) (regTwo!29475 expr!117))) b!5145686))

(assert (= (and b!5145429 ((_ is Star!14481) (regTwo!29475 expr!117))) b!5145687))

(assert (= (and b!5145429 ((_ is Union!14481) (regTwo!29475 expr!117))) b!5145688))

(check-sat (not b!5145682) (not d!1663384) (not d!1663346) (not b!5145665) (not bm!359612) (not bm!359686) (not b!5145686) (not b!5145670) (not d!1663382) (not b!5145477) (not b!5145600) (not d!1663380) (not bm!359610) (not d!1663394) (not d!1663378) (not b!5145582) (not b!5145595) (not bm!359691) (not b!5145596) (not d!1663396) (not bm!359690) (not b!5145673) (not b!5145528) (not b!5145494) (not bm!359685) (not b!5145666) (not d!1663390) (not b!5145669) (not b!5145493) (not d!1663358) (not bm!359643) (not b!5145680) (not b!5145675) (not bm!359621) (not bm!359683) (not bm!359620) (not b!5145688) (not bm!359642) (not b!5145683) (not b!5145684) (not b!5145674) tp_is_empty!38111 (not bm!359675) (not b!5145615) (not d!1663400) (not bm!359674) (not b!5145667) (not bm!359692) (not d!1663354) (not b!5145687) (not d!1663376) (not b!5145671) (not b!5145583) (not bm!359682) (not bm!359684) (not bm!359644))
(check-sat)
