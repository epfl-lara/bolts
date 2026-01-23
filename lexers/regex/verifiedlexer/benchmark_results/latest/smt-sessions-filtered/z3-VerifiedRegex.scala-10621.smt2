; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545722 () Bool)

(assert start!545722)

(declare-fun b!5160054 () Bool)

(declare-datatypes ((C!29332 0))(
  ( (C!29333 (val!24318 Int)) )
))
(declare-datatypes ((Regex!14533 0))(
  ( (ElementMatch!14533 (c!887892 C!29332)) (Concat!23378 (regOne!29578 Regex!14533) (regTwo!29578 Regex!14533)) (EmptyExpr!14533) (Star!14533 (reg!14862 Regex!14533)) (EmptyLang!14533) (Union!14533 (regOne!29579 Regex!14533) (regTwo!29579 Regex!14533)) )
))
(declare-datatypes ((List!59980 0))(
  ( (Nil!59856) (Cons!59856 (h!66304 Regex!14533) (t!373051 List!59980)) )
))
(declare-datatypes ((Context!7834 0))(
  ( (Context!7835 (exprs!4417 List!59980)) )
))
(declare-fun ctx!100 () Context!7834)

(declare-fun e!3215461 () Bool)

(declare-fun expr!117 () Regex!14533)

(declare-fun a!1296 () C!29332)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1299 ((InoxSet Context!7834)) Bool)

(declare-fun derivationStepZipperDown!180 (Regex!14533 Context!7834 C!29332) (InoxSet Context!7834))

(assert (=> b!5160054 (= e!3215461 (not (lostCauseZipper!1299 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296))))))

(declare-fun b!5160055 () Bool)

(declare-fun res!2194249 () Bool)

(assert (=> b!5160055 (=> (not res!2194249) (not e!3215461))))

(declare-fun e!3215462 () Bool)

(assert (=> b!5160055 (= res!2194249 e!3215462)))

(declare-fun res!2194250 () Bool)

(assert (=> b!5160055 (=> res!2194250 e!3215462)))

(declare-fun lostCause!1618 (Regex!14533) Bool)

(assert (=> b!5160055 (= res!2194250 (lostCause!1618 expr!117))))

(declare-fun b!5160056 () Bool)

(declare-fun e!3215464 () Bool)

(declare-fun tp!1446048 () Bool)

(assert (=> b!5160056 (= e!3215464 tp!1446048)))

(declare-fun b!5160057 () Bool)

(declare-fun res!2194251 () Bool)

(assert (=> b!5160057 (=> (not res!2194251) (not e!3215461))))

(get-info :version)

(assert (=> b!5160057 (= res!2194251 (and (or (not ((_ is ElementMatch!14533) expr!117)) (not (= (c!887892 expr!117) a!1296))) (not ((_ is Union!14533) expr!117))))))

(declare-fun b!5160058 () Bool)

(declare-fun res!2194248 () Bool)

(assert (=> b!5160058 (=> (not res!2194248) (not e!3215461))))

(assert (=> b!5160058 (= res!2194248 (and (not ((_ is Concat!23378) expr!117)) (not ((_ is Star!14533) expr!117))))))

(declare-fun b!5160059 () Bool)

(declare-fun tp!1446044 () Bool)

(declare-fun tp!1446049 () Bool)

(assert (=> b!5160059 (= e!3215464 (and tp!1446044 tp!1446049))))

(declare-fun b!5160060 () Bool)

(declare-fun tp!1446046 () Bool)

(declare-fun tp!1446047 () Bool)

(assert (=> b!5160060 (= e!3215464 (and tp!1446046 tp!1446047))))

(declare-fun b!5160061 () Bool)

(declare-fun res!2194246 () Bool)

(assert (=> b!5160061 (=> (not res!2194246) (not e!3215461))))

(declare-fun e!3215463 () Bool)

(assert (=> b!5160061 (= res!2194246 e!3215463)))

(declare-fun res!2194252 () Bool)

(assert (=> b!5160061 (=> res!2194252 e!3215463)))

(assert (=> b!5160061 (= res!2194252 (not ((_ is Concat!23378) expr!117)))))

(declare-fun b!5160062 () Bool)

(declare-fun nullable!4889 (Regex!14533) Bool)

(assert (=> b!5160062 (= e!3215463 (not (nullable!4889 (regOne!29578 expr!117))))))

(declare-fun b!5160064 () Bool)

(declare-fun lostCause!1619 (Context!7834) Bool)

(assert (=> b!5160064 (= e!3215462 (lostCause!1619 ctx!100))))

(declare-fun b!5160065 () Bool)

(declare-fun tp_is_empty!38215 () Bool)

(assert (=> b!5160065 (= e!3215464 tp_is_empty!38215)))

(declare-fun res!2194247 () Bool)

(assert (=> start!545722 (=> (not res!2194247) (not e!3215461))))

(declare-fun validRegex!6388 (Regex!14533) Bool)

(assert (=> start!545722 (= res!2194247 (validRegex!6388 expr!117))))

(assert (=> start!545722 e!3215461))

(assert (=> start!545722 e!3215464))

(declare-fun e!3215460 () Bool)

(declare-fun inv!79513 (Context!7834) Bool)

(assert (=> start!545722 (and (inv!79513 ctx!100) e!3215460)))

(assert (=> start!545722 tp_is_empty!38215))

(declare-fun b!5160063 () Bool)

(declare-fun tp!1446045 () Bool)

(assert (=> b!5160063 (= e!3215460 tp!1446045)))

(assert (= (and start!545722 res!2194247) b!5160055))

(assert (= (and b!5160055 (not res!2194250)) b!5160064))

(assert (= (and b!5160055 res!2194249) b!5160057))

(assert (= (and b!5160057 res!2194251) b!5160061))

(assert (= (and b!5160061 (not res!2194252)) b!5160062))

(assert (= (and b!5160061 res!2194246) b!5160058))

(assert (= (and b!5160058 res!2194248) b!5160054))

(assert (= (and start!545722 ((_ is ElementMatch!14533) expr!117)) b!5160065))

(assert (= (and start!545722 ((_ is Concat!23378) expr!117)) b!5160059))

(assert (= (and start!545722 ((_ is Star!14533) expr!117)) b!5160056))

(assert (= (and start!545722 ((_ is Union!14533) expr!117)) b!5160060))

(assert (= start!545722 b!5160063))

(declare-fun m!6211942 () Bool)

(assert (=> b!5160062 m!6211942))

(declare-fun m!6211944 () Bool)

(assert (=> b!5160064 m!6211944))

(declare-fun m!6211946 () Bool)

(assert (=> b!5160054 m!6211946))

(assert (=> b!5160054 m!6211946))

(declare-fun m!6211948 () Bool)

(assert (=> b!5160054 m!6211948))

(declare-fun m!6211950 () Bool)

(assert (=> start!545722 m!6211950))

(declare-fun m!6211952 () Bool)

(assert (=> start!545722 m!6211952))

(declare-fun m!6211954 () Bool)

(assert (=> b!5160055 m!6211954))

(check-sat (not start!545722) (not b!5160064) (not b!5160056) (not b!5160054) tp_is_empty!38215 (not b!5160062) (not b!5160060) (not b!5160055) (not b!5160063) (not b!5160059))
(check-sat)
(get-model)

(declare-fun d!1665486 () Bool)

(declare-fun nullableFct!1364 (Regex!14533) Bool)

(assert (=> d!1665486 (= (nullable!4889 (regOne!29578 expr!117)) (nullableFct!1364 (regOne!29578 expr!117)))))

(declare-fun bs!1202427 () Bool)

(assert (= bs!1202427 d!1665486))

(declare-fun m!6211956 () Bool)

(assert (=> bs!1202427 m!6211956))

(assert (=> b!5160062 d!1665486))

(declare-fun bs!1202436 () Bool)

(declare-fun b!5160171 () Bool)

(declare-fun d!1665488 () Bool)

(assert (= bs!1202436 (and b!5160171 d!1665488)))

(declare-fun lambda!257612 () Int)

(declare-fun lambda!257611 () Int)

(assert (=> bs!1202436 (not (= lambda!257612 lambda!257611))))

(declare-fun bs!1202437 () Bool)

(declare-fun b!5160172 () Bool)

(assert (= bs!1202437 (and b!5160172 d!1665488)))

(declare-fun lambda!257613 () Int)

(assert (=> bs!1202437 (not (= lambda!257613 lambda!257611))))

(declare-fun bs!1202438 () Bool)

(assert (= bs!1202438 (and b!5160172 b!5160171)))

(assert (=> bs!1202438 (= lambda!257613 lambda!257612)))

(declare-fun bm!361824 () Bool)

(declare-fun call!361829 () Bool)

(declare-fun c!887935 () Bool)

(declare-datatypes ((List!59983 0))(
  ( (Nil!59859) (Cons!59859 (h!66307 Context!7834) (t!373054 List!59983)) )
))
(declare-fun lt!2122230 () List!59983)

(declare-fun lt!2122235 () List!59983)

(declare-fun exists!1877 (List!59983 Int) Bool)

(assert (=> bm!361824 (= call!361829 (exists!1877 (ite c!887935 lt!2122235 lt!2122230) (ite c!887935 lambda!257612 lambda!257613)))))

(declare-datatypes ((Unit!151285 0))(
  ( (Unit!151286) )
))
(declare-fun e!3215527 () Unit!151285)

(declare-fun Unit!151287 () Unit!151285)

(assert (=> b!5160171 (= e!3215527 Unit!151287)))

(declare-fun call!361830 () List!59983)

(assert (=> b!5160171 (= lt!2122235 call!361830)))

(declare-fun lt!2122229 () Unit!151285)

(declare-fun lemmaNotForallThenExists!459 (List!59983 Int) Unit!151285)

(assert (=> b!5160171 (= lt!2122229 (lemmaNotForallThenExists!459 lt!2122235 lambda!257611))))

(assert (=> b!5160171 call!361829))

(declare-fun lt!2122231 () Unit!151285)

(assert (=> b!5160171 (= lt!2122231 lt!2122229)))

(declare-fun lt!2122234 () Bool)

(declare-datatypes ((List!59984 0))(
  ( (Nil!59860) (Cons!59860 (h!66308 C!29332) (t!373055 List!59984)) )
))
(declare-datatypes ((Option!14824 0))(
  ( (None!14823) (Some!14823 (v!50852 List!59984)) )
))
(declare-fun isEmpty!32085 (Option!14824) Bool)

(declare-fun getLanguageWitness!989 ((InoxSet Context!7834)) Option!14824)

(assert (=> d!1665488 (= lt!2122234 (isEmpty!32085 (getLanguageWitness!989 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296))))))

(declare-fun forall!14028 ((InoxSet Context!7834) Int) Bool)

(assert (=> d!1665488 (= lt!2122234 (forall!14028 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257611))))

(declare-fun lt!2122228 () Unit!151285)

(assert (=> d!1665488 (= lt!2122228 e!3215527)))

(assert (=> d!1665488 (= c!887935 (not (forall!14028 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257611)))))

(assert (=> d!1665488 (= (lostCauseZipper!1299 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)) lt!2122234)))

(declare-fun bm!361825 () Bool)

(declare-fun toList!8413 ((InoxSet Context!7834)) List!59983)

(assert (=> bm!361825 (= call!361830 (toList!8413 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)))))

(declare-fun Unit!151288 () Unit!151285)

(assert (=> b!5160172 (= e!3215527 Unit!151288)))

(assert (=> b!5160172 (= lt!2122230 call!361830)))

(declare-fun lt!2122233 () Unit!151285)

(declare-fun lemmaForallThenNotExists!426 (List!59983 Int) Unit!151285)

(assert (=> b!5160172 (= lt!2122233 (lemmaForallThenNotExists!426 lt!2122230 lambda!257611))))

(assert (=> b!5160172 (not call!361829)))

(declare-fun lt!2122232 () Unit!151285)

(assert (=> b!5160172 (= lt!2122232 lt!2122233)))

(assert (= (and d!1665488 c!887935) b!5160171))

(assert (= (and d!1665488 (not c!887935)) b!5160172))

(assert (= (or b!5160171 b!5160172) bm!361824))

(assert (= (or b!5160171 b!5160172) bm!361825))

(assert (=> bm!361825 m!6211946))

(declare-fun m!6211994 () Bool)

(assert (=> bm!361825 m!6211994))

(assert (=> d!1665488 m!6211946))

(declare-fun m!6211996 () Bool)

(assert (=> d!1665488 m!6211996))

(assert (=> d!1665488 m!6211996))

(declare-fun m!6211998 () Bool)

(assert (=> d!1665488 m!6211998))

(assert (=> d!1665488 m!6211946))

(declare-fun m!6212000 () Bool)

(assert (=> d!1665488 m!6212000))

(assert (=> d!1665488 m!6211946))

(assert (=> d!1665488 m!6212000))

(declare-fun m!6212002 () Bool)

(assert (=> b!5160172 m!6212002))

(declare-fun m!6212004 () Bool)

(assert (=> bm!361824 m!6212004))

(declare-fun m!6212006 () Bool)

(assert (=> b!5160171 m!6212006))

(assert (=> b!5160054 d!1665488))

(declare-fun b!5160195 () Bool)

(declare-fun e!3215544 () (InoxSet Context!7834))

(declare-fun call!361843 () (InoxSet Context!7834))

(declare-fun call!361845 () (InoxSet Context!7834))

(assert (=> b!5160195 (= e!3215544 ((_ map or) call!361843 call!361845))))

(declare-fun bm!361838 () Bool)

(declare-fun call!361847 () (InoxSet Context!7834))

(assert (=> bm!361838 (= call!361847 call!361843)))

(declare-fun b!5160196 () Bool)

(declare-fun e!3215542 () (InoxSet Context!7834))

(declare-fun call!361846 () (InoxSet Context!7834))

(assert (=> b!5160196 (= e!3215542 call!361846)))

(declare-fun call!361844 () List!59980)

(declare-fun c!887948 () Bool)

(declare-fun bm!361839 () Bool)

(assert (=> bm!361839 (= call!361845 (derivationStepZipperDown!180 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)) (ite c!887948 ctx!100 (Context!7835 call!361844)) a!1296))))

(declare-fun c!887950 () Bool)

(declare-fun bm!361840 () Bool)

(declare-fun c!887946 () Bool)

(declare-fun $colon$colon!1247 (List!59980 Regex!14533) List!59980)

(assert (=> bm!361840 (= call!361844 ($colon$colon!1247 (exprs!4417 ctx!100) (ite (or c!887950 c!887946) (regTwo!29578 expr!117) expr!117)))))

(declare-fun bm!361842 () Bool)

(declare-fun call!361848 () List!59980)

(assert (=> bm!361842 (= call!361848 call!361844)))

(declare-fun b!5160197 () Bool)

(declare-fun e!3215543 () (InoxSet Context!7834))

(assert (=> b!5160197 (= e!3215543 e!3215544)))

(assert (=> b!5160197 (= c!887948 ((_ is Union!14533) expr!117))))

(declare-fun b!5160198 () Bool)

(declare-fun e!3215540 () Bool)

(assert (=> b!5160198 (= e!3215540 (nullable!4889 (regOne!29578 expr!117)))))

(declare-fun bm!361843 () Bool)

(assert (=> bm!361843 (= call!361846 call!361847)))

(declare-fun b!5160199 () Bool)

(declare-fun e!3215541 () (InoxSet Context!7834))

(assert (=> b!5160199 (= e!3215541 call!361846)))

(declare-fun b!5160200 () Bool)

(declare-fun e!3215545 () (InoxSet Context!7834))

(assert (=> b!5160200 (= e!3215545 e!3215541)))

(assert (=> b!5160200 (= c!887946 ((_ is Concat!23378) expr!117))))

(declare-fun b!5160201 () Bool)

(declare-fun c!887947 () Bool)

(assert (=> b!5160201 (= c!887947 ((_ is Star!14533) expr!117))))

(assert (=> b!5160201 (= e!3215541 e!3215542)))

(declare-fun b!5160202 () Bool)

(assert (=> b!5160202 (= e!3215545 ((_ map or) call!361845 call!361847))))

(declare-fun b!5160203 () Bool)

(assert (=> b!5160203 (= e!3215542 ((as const (Array Context!7834 Bool)) false))))

(declare-fun b!5160204 () Bool)

(assert (=> b!5160204 (= c!887950 e!3215540)))

(declare-fun res!2194273 () Bool)

(assert (=> b!5160204 (=> (not res!2194273) (not e!3215540))))

(assert (=> b!5160204 (= res!2194273 ((_ is Concat!23378) expr!117))))

(assert (=> b!5160204 (= e!3215544 e!3215545)))

(declare-fun b!5160205 () Bool)

(assert (=> b!5160205 (= e!3215543 (store ((as const (Array Context!7834 Bool)) false) ctx!100 true))))

(declare-fun d!1665504 () Bool)

(declare-fun c!887949 () Bool)

(assert (=> d!1665504 (= c!887949 (and ((_ is ElementMatch!14533) expr!117) (= (c!887892 expr!117) a!1296)))))

(assert (=> d!1665504 (= (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) e!3215543)))

(declare-fun bm!361841 () Bool)

(assert (=> bm!361841 (= call!361843 (derivationStepZipperDown!180 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))) (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)) a!1296))))

(assert (= (and d!1665504 c!887949) b!5160205))

(assert (= (and d!1665504 (not c!887949)) b!5160197))

(assert (= (and b!5160197 c!887948) b!5160195))

(assert (= (and b!5160197 (not c!887948)) b!5160204))

(assert (= (and b!5160204 res!2194273) b!5160198))

(assert (= (and b!5160204 c!887950) b!5160202))

(assert (= (and b!5160204 (not c!887950)) b!5160200))

(assert (= (and b!5160200 c!887946) b!5160199))

(assert (= (and b!5160200 (not c!887946)) b!5160201))

(assert (= (and b!5160201 c!887947) b!5160196))

(assert (= (and b!5160201 (not c!887947)) b!5160203))

(assert (= (or b!5160199 b!5160196) bm!361842))

(assert (= (or b!5160199 b!5160196) bm!361843))

(assert (= (or b!5160202 bm!361842) bm!361840))

(assert (= (or b!5160202 bm!361843) bm!361838))

(assert (= (or b!5160195 b!5160202) bm!361839))

(assert (= (or b!5160195 bm!361838) bm!361841))

(assert (=> b!5160198 m!6211942))

(declare-fun m!6212008 () Bool)

(assert (=> bm!361841 m!6212008))

(declare-fun m!6212010 () Bool)

(assert (=> bm!361840 m!6212010))

(declare-fun m!6212012 () Bool)

(assert (=> b!5160205 m!6212012))

(declare-fun m!6212014 () Bool)

(assert (=> bm!361839 m!6212014))

(assert (=> b!5160054 d!1665504))

(declare-fun d!1665506 () Bool)

(declare-fun lostCauseFct!406 (Regex!14533) Bool)

(assert (=> d!1665506 (= (lostCause!1618 expr!117) (lostCauseFct!406 expr!117))))

(declare-fun bs!1202439 () Bool)

(assert (= bs!1202439 d!1665506))

(declare-fun m!6212016 () Bool)

(assert (=> bs!1202439 m!6212016))

(assert (=> b!5160055 d!1665506))

(declare-fun bm!361850 () Bool)

(declare-fun call!361856 () Bool)

(declare-fun c!887955 () Bool)

(assert (=> bm!361850 (= call!361856 (validRegex!6388 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))))

(declare-fun b!5160224 () Bool)

(declare-fun e!3215562 () Bool)

(declare-fun e!3215565 () Bool)

(assert (=> b!5160224 (= e!3215562 e!3215565)))

(assert (=> b!5160224 (= c!887955 ((_ is Union!14533) expr!117))))

(declare-fun b!5160225 () Bool)

(declare-fun e!3215566 () Bool)

(assert (=> b!5160225 (= e!3215566 e!3215562)))

(declare-fun c!887956 () Bool)

(assert (=> b!5160225 (= c!887956 ((_ is Star!14533) expr!117))))

(declare-fun b!5160226 () Bool)

(declare-fun e!3215561 () Bool)

(assert (=> b!5160226 (= e!3215561 call!361856)))

(declare-fun b!5160227 () Bool)

(declare-fun e!3215560 () Bool)

(assert (=> b!5160227 (= e!3215560 e!3215561)))

(declare-fun res!2194285 () Bool)

(assert (=> b!5160227 (=> (not res!2194285) (not e!3215561))))

(declare-fun call!361857 () Bool)

(assert (=> b!5160227 (= res!2194285 call!361857)))

(declare-fun b!5160228 () Bool)

(declare-fun res!2194284 () Bool)

(assert (=> b!5160228 (=> res!2194284 e!3215560)))

(assert (=> b!5160228 (= res!2194284 (not ((_ is Concat!23378) expr!117)))))

(assert (=> b!5160228 (= e!3215565 e!3215560)))

(declare-fun b!5160229 () Bool)

(declare-fun e!3215563 () Bool)

(assert (=> b!5160229 (= e!3215562 e!3215563)))

(declare-fun res!2194287 () Bool)

(assert (=> b!5160229 (= res!2194287 (not (nullable!4889 (reg!14862 expr!117))))))

(assert (=> b!5160229 (=> (not res!2194287) (not e!3215563))))

(declare-fun b!5160230 () Bool)

(declare-fun e!3215564 () Bool)

(assert (=> b!5160230 (= e!3215564 call!361856)))

(declare-fun d!1665508 () Bool)

(declare-fun res!2194286 () Bool)

(assert (=> d!1665508 (=> res!2194286 e!3215566)))

(assert (=> d!1665508 (= res!2194286 ((_ is ElementMatch!14533) expr!117))))

(assert (=> d!1665508 (= (validRegex!6388 expr!117) e!3215566)))

(declare-fun b!5160231 () Bool)

(declare-fun call!361855 () Bool)

(assert (=> b!5160231 (= e!3215563 call!361855)))

(declare-fun bm!361851 () Bool)

(assert (=> bm!361851 (= call!361855 (validRegex!6388 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))))

(declare-fun bm!361852 () Bool)

(assert (=> bm!361852 (= call!361857 call!361855)))

(declare-fun b!5160232 () Bool)

(declare-fun res!2194288 () Bool)

(assert (=> b!5160232 (=> (not res!2194288) (not e!3215564))))

(assert (=> b!5160232 (= res!2194288 call!361857)))

(assert (=> b!5160232 (= e!3215565 e!3215564)))

(assert (= (and d!1665508 (not res!2194286)) b!5160225))

(assert (= (and b!5160225 c!887956) b!5160229))

(assert (= (and b!5160225 (not c!887956)) b!5160224))

(assert (= (and b!5160229 res!2194287) b!5160231))

(assert (= (and b!5160224 c!887955) b!5160232))

(assert (= (and b!5160224 (not c!887955)) b!5160228))

(assert (= (and b!5160232 res!2194288) b!5160230))

(assert (= (and b!5160228 (not res!2194284)) b!5160227))

(assert (= (and b!5160227 res!2194285) b!5160226))

(assert (= (or b!5160230 b!5160226) bm!361850))

(assert (= (or b!5160232 b!5160227) bm!361852))

(assert (= (or b!5160231 bm!361852) bm!361851))

(declare-fun m!6212018 () Bool)

(assert (=> bm!361850 m!6212018))

(declare-fun m!6212020 () Bool)

(assert (=> b!5160229 m!6212020))

(declare-fun m!6212022 () Bool)

(assert (=> bm!361851 m!6212022))

(assert (=> start!545722 d!1665508))

(declare-fun d!1665510 () Bool)

(declare-fun lambda!257616 () Int)

(declare-fun forall!14029 (List!59980 Int) Bool)

(assert (=> d!1665510 (= (inv!79513 ctx!100) (forall!14029 (exprs!4417 ctx!100) lambda!257616))))

(declare-fun bs!1202440 () Bool)

(assert (= bs!1202440 d!1665510))

(declare-fun m!6212024 () Bool)

(assert (=> bs!1202440 m!6212024))

(assert (=> start!545722 d!1665510))

(declare-fun bs!1202441 () Bool)

(declare-fun d!1665512 () Bool)

(assert (= bs!1202441 (and d!1665512 d!1665510)))

(declare-fun lambda!257619 () Int)

(assert (=> bs!1202441 (not (= lambda!257619 lambda!257616))))

(declare-fun exists!1878 (List!59980 Int) Bool)

(assert (=> d!1665512 (= (lostCause!1619 ctx!100) (exists!1878 (exprs!4417 ctx!100) lambda!257619))))

(declare-fun bs!1202442 () Bool)

(assert (= bs!1202442 d!1665512))

(declare-fun m!6212026 () Bool)

(assert (=> bs!1202442 m!6212026))

(assert (=> b!5160064 d!1665512))

(declare-fun b!5160237 () Bool)

(declare-fun e!3215569 () Bool)

(declare-fun tp!1446095 () Bool)

(declare-fun tp!1446096 () Bool)

(assert (=> b!5160237 (= e!3215569 (and tp!1446095 tp!1446096))))

(assert (=> b!5160063 (= tp!1446045 e!3215569)))

(assert (= (and b!5160063 ((_ is Cons!59856) (exprs!4417 ctx!100))) b!5160237))

(declare-fun b!5160250 () Bool)

(declare-fun e!3215572 () Bool)

(declare-fun tp!1446110 () Bool)

(assert (=> b!5160250 (= e!3215572 tp!1446110)))

(declare-fun b!5160251 () Bool)

(declare-fun tp!1446111 () Bool)

(declare-fun tp!1446107 () Bool)

(assert (=> b!5160251 (= e!3215572 (and tp!1446111 tp!1446107))))

(assert (=> b!5160056 (= tp!1446048 e!3215572)))

(declare-fun b!5160248 () Bool)

(assert (=> b!5160248 (= e!3215572 tp_is_empty!38215)))

(declare-fun b!5160249 () Bool)

(declare-fun tp!1446109 () Bool)

(declare-fun tp!1446108 () Bool)

(assert (=> b!5160249 (= e!3215572 (and tp!1446109 tp!1446108))))

(assert (= (and b!5160056 ((_ is ElementMatch!14533) (reg!14862 expr!117))) b!5160248))

(assert (= (and b!5160056 ((_ is Concat!23378) (reg!14862 expr!117))) b!5160249))

(assert (= (and b!5160056 ((_ is Star!14533) (reg!14862 expr!117))) b!5160250))

(assert (= (and b!5160056 ((_ is Union!14533) (reg!14862 expr!117))) b!5160251))

(declare-fun b!5160254 () Bool)

(declare-fun e!3215573 () Bool)

(declare-fun tp!1446115 () Bool)

(assert (=> b!5160254 (= e!3215573 tp!1446115)))

(declare-fun b!5160255 () Bool)

(declare-fun tp!1446116 () Bool)

(declare-fun tp!1446112 () Bool)

(assert (=> b!5160255 (= e!3215573 (and tp!1446116 tp!1446112))))

(assert (=> b!5160060 (= tp!1446046 e!3215573)))

(declare-fun b!5160252 () Bool)

(assert (=> b!5160252 (= e!3215573 tp_is_empty!38215)))

(declare-fun b!5160253 () Bool)

(declare-fun tp!1446114 () Bool)

(declare-fun tp!1446113 () Bool)

(assert (=> b!5160253 (= e!3215573 (and tp!1446114 tp!1446113))))

(assert (= (and b!5160060 ((_ is ElementMatch!14533) (regOne!29579 expr!117))) b!5160252))

(assert (= (and b!5160060 ((_ is Concat!23378) (regOne!29579 expr!117))) b!5160253))

(assert (= (and b!5160060 ((_ is Star!14533) (regOne!29579 expr!117))) b!5160254))

(assert (= (and b!5160060 ((_ is Union!14533) (regOne!29579 expr!117))) b!5160255))

(declare-fun b!5160258 () Bool)

(declare-fun e!3215574 () Bool)

(declare-fun tp!1446120 () Bool)

(assert (=> b!5160258 (= e!3215574 tp!1446120)))

(declare-fun b!5160259 () Bool)

(declare-fun tp!1446121 () Bool)

(declare-fun tp!1446117 () Bool)

(assert (=> b!5160259 (= e!3215574 (and tp!1446121 tp!1446117))))

(assert (=> b!5160060 (= tp!1446047 e!3215574)))

(declare-fun b!5160256 () Bool)

(assert (=> b!5160256 (= e!3215574 tp_is_empty!38215)))

(declare-fun b!5160257 () Bool)

(declare-fun tp!1446119 () Bool)

(declare-fun tp!1446118 () Bool)

(assert (=> b!5160257 (= e!3215574 (and tp!1446119 tp!1446118))))

(assert (= (and b!5160060 ((_ is ElementMatch!14533) (regTwo!29579 expr!117))) b!5160256))

(assert (= (and b!5160060 ((_ is Concat!23378) (regTwo!29579 expr!117))) b!5160257))

(assert (= (and b!5160060 ((_ is Star!14533) (regTwo!29579 expr!117))) b!5160258))

(assert (= (and b!5160060 ((_ is Union!14533) (regTwo!29579 expr!117))) b!5160259))

(declare-fun b!5160262 () Bool)

(declare-fun e!3215575 () Bool)

(declare-fun tp!1446125 () Bool)

(assert (=> b!5160262 (= e!3215575 tp!1446125)))

(declare-fun b!5160263 () Bool)

(declare-fun tp!1446126 () Bool)

(declare-fun tp!1446122 () Bool)

(assert (=> b!5160263 (= e!3215575 (and tp!1446126 tp!1446122))))

(assert (=> b!5160059 (= tp!1446044 e!3215575)))

(declare-fun b!5160260 () Bool)

(assert (=> b!5160260 (= e!3215575 tp_is_empty!38215)))

(declare-fun b!5160261 () Bool)

(declare-fun tp!1446124 () Bool)

(declare-fun tp!1446123 () Bool)

(assert (=> b!5160261 (= e!3215575 (and tp!1446124 tp!1446123))))

(assert (= (and b!5160059 ((_ is ElementMatch!14533) (regOne!29578 expr!117))) b!5160260))

(assert (= (and b!5160059 ((_ is Concat!23378) (regOne!29578 expr!117))) b!5160261))

(assert (= (and b!5160059 ((_ is Star!14533) (regOne!29578 expr!117))) b!5160262))

(assert (= (and b!5160059 ((_ is Union!14533) (regOne!29578 expr!117))) b!5160263))

(declare-fun b!5160266 () Bool)

(declare-fun e!3215576 () Bool)

(declare-fun tp!1446130 () Bool)

(assert (=> b!5160266 (= e!3215576 tp!1446130)))

(declare-fun b!5160267 () Bool)

(declare-fun tp!1446131 () Bool)

(declare-fun tp!1446127 () Bool)

(assert (=> b!5160267 (= e!3215576 (and tp!1446131 tp!1446127))))

(assert (=> b!5160059 (= tp!1446049 e!3215576)))

(declare-fun b!5160264 () Bool)

(assert (=> b!5160264 (= e!3215576 tp_is_empty!38215)))

(declare-fun b!5160265 () Bool)

(declare-fun tp!1446129 () Bool)

(declare-fun tp!1446128 () Bool)

(assert (=> b!5160265 (= e!3215576 (and tp!1446129 tp!1446128))))

(assert (= (and b!5160059 ((_ is ElementMatch!14533) (regTwo!29578 expr!117))) b!5160264))

(assert (= (and b!5160059 ((_ is Concat!23378) (regTwo!29578 expr!117))) b!5160265))

(assert (= (and b!5160059 ((_ is Star!14533) (regTwo!29578 expr!117))) b!5160266))

(assert (= (and b!5160059 ((_ is Union!14533) (regTwo!29578 expr!117))) b!5160267))

(check-sat (not b!5160254) (not b!5160263) (not d!1665510) (not b!5160258) (not bm!361851) tp_is_empty!38215 (not bm!361825) (not b!5160249) (not bm!361841) (not d!1665512) (not b!5160257) (not b!5160265) (not d!1665486) (not bm!361840) (not d!1665506) (not bm!361850) (not b!5160253) (not b!5160259) (not b!5160237) (not bm!361839) (not bm!361824) (not b!5160266) (not b!5160171) (not d!1665488) (not b!5160229) (not b!5160262) (not b!5160250) (not b!5160172) (not b!5160255) (not b!5160261) (not b!5160251) (not b!5160267) (not b!5160198))
(check-sat)
(get-model)

(declare-fun b!5160268 () Bool)

(declare-fun e!3215581 () (InoxSet Context!7834))

(declare-fun call!361858 () (InoxSet Context!7834))

(declare-fun call!361860 () (InoxSet Context!7834))

(assert (=> b!5160268 (= e!3215581 ((_ map or) call!361858 call!361860))))

(declare-fun bm!361853 () Bool)

(declare-fun call!361862 () (InoxSet Context!7834))

(assert (=> bm!361853 (= call!361862 call!361858)))

(declare-fun b!5160269 () Bool)

(declare-fun e!3215579 () (InoxSet Context!7834))

(declare-fun call!361861 () (InoxSet Context!7834))

(assert (=> b!5160269 (= e!3215579 call!361861)))

(declare-fun call!361859 () List!59980)

(declare-fun bm!361854 () Bool)

(declare-fun c!887959 () Bool)

(assert (=> bm!361854 (= call!361860 (derivationStepZipperDown!180 (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))) (ite c!887959 (ite c!887948 ctx!100 (Context!7835 call!361844)) (Context!7835 call!361859)) a!1296))))

(declare-fun c!887957 () Bool)

(declare-fun c!887961 () Bool)

(declare-fun bm!361855 () Bool)

(assert (=> bm!361855 (= call!361859 ($colon$colon!1247 (exprs!4417 (ite c!887948 ctx!100 (Context!7835 call!361844))) (ite (or c!887961 c!887957) (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))))))

(declare-fun bm!361857 () Bool)

(declare-fun call!361863 () List!59980)

(assert (=> bm!361857 (= call!361863 call!361859)))

(declare-fun b!5160270 () Bool)

(declare-fun e!3215580 () (InoxSet Context!7834))

(assert (=> b!5160270 (= e!3215580 e!3215581)))

(assert (=> b!5160270 (= c!887959 ((_ is Union!14533) (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))

(declare-fun b!5160271 () Bool)

(declare-fun e!3215577 () Bool)

(assert (=> b!5160271 (= e!3215577 (nullable!4889 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))))))

(declare-fun bm!361858 () Bool)

(assert (=> bm!361858 (= call!361861 call!361862)))

(declare-fun b!5160272 () Bool)

(declare-fun e!3215578 () (InoxSet Context!7834))

(assert (=> b!5160272 (= e!3215578 call!361861)))

(declare-fun b!5160273 () Bool)

(declare-fun e!3215582 () (InoxSet Context!7834))

(assert (=> b!5160273 (= e!3215582 e!3215578)))

(assert (=> b!5160273 (= c!887957 ((_ is Concat!23378) (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))

(declare-fun b!5160274 () Bool)

(declare-fun c!887958 () Bool)

(assert (=> b!5160274 (= c!887958 ((_ is Star!14533) (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))

(assert (=> b!5160274 (= e!3215578 e!3215579)))

(declare-fun b!5160275 () Bool)

(assert (=> b!5160275 (= e!3215582 ((_ map or) call!361860 call!361862))))

(declare-fun b!5160276 () Bool)

(assert (=> b!5160276 (= e!3215579 ((as const (Array Context!7834 Bool)) false))))

(declare-fun b!5160277 () Bool)

(assert (=> b!5160277 (= c!887961 e!3215577)))

(declare-fun res!2194289 () Bool)

(assert (=> b!5160277 (=> (not res!2194289) (not e!3215577))))

(assert (=> b!5160277 (= res!2194289 ((_ is Concat!23378) (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))

(assert (=> b!5160277 (= e!3215581 e!3215582)))

(declare-fun b!5160278 () Bool)

(assert (=> b!5160278 (= e!3215580 (store ((as const (Array Context!7834 Bool)) false) (ite c!887948 ctx!100 (Context!7835 call!361844)) true))))

(declare-fun c!887960 () Bool)

(declare-fun d!1665514 () Bool)

(assert (=> d!1665514 (= c!887960 (and ((_ is ElementMatch!14533) (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (= (c!887892 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) a!1296)))))

(assert (=> d!1665514 (= (derivationStepZipperDown!180 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)) (ite c!887948 ctx!100 (Context!7835 call!361844)) a!1296) e!3215580)))

(declare-fun bm!361856 () Bool)

(assert (=> bm!361856 (= call!361858 (derivationStepZipperDown!180 (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))))) (ite (or c!887959 c!887961) (ite c!887948 ctx!100 (Context!7835 call!361844)) (Context!7835 call!361863)) a!1296))))

(assert (= (and d!1665514 c!887960) b!5160278))

(assert (= (and d!1665514 (not c!887960)) b!5160270))

(assert (= (and b!5160270 c!887959) b!5160268))

(assert (= (and b!5160270 (not c!887959)) b!5160277))

(assert (= (and b!5160277 res!2194289) b!5160271))

(assert (= (and b!5160277 c!887961) b!5160275))

(assert (= (and b!5160277 (not c!887961)) b!5160273))

(assert (= (and b!5160273 c!887957) b!5160272))

(assert (= (and b!5160273 (not c!887957)) b!5160274))

(assert (= (and b!5160274 c!887958) b!5160269))

(assert (= (and b!5160274 (not c!887958)) b!5160276))

(assert (= (or b!5160272 b!5160269) bm!361857))

(assert (= (or b!5160272 b!5160269) bm!361858))

(assert (= (or b!5160275 bm!361857) bm!361855))

(assert (= (or b!5160275 bm!361858) bm!361853))

(assert (= (or b!5160268 b!5160275) bm!361854))

(assert (= (or b!5160268 bm!361853) bm!361856))

(declare-fun m!6212028 () Bool)

(assert (=> b!5160271 m!6212028))

(declare-fun m!6212030 () Bool)

(assert (=> bm!361856 m!6212030))

(declare-fun m!6212032 () Bool)

(assert (=> bm!361855 m!6212032))

(declare-fun m!6212034 () Bool)

(assert (=> b!5160278 m!6212034))

(declare-fun m!6212036 () Bool)

(assert (=> bm!361854 m!6212036))

(assert (=> bm!361839 d!1665514))

(declare-fun bs!1202443 () Bool)

(declare-fun d!1665516 () Bool)

(assert (= bs!1202443 (and d!1665516 d!1665488)))

(declare-fun lambda!257622 () Int)

(assert (=> bs!1202443 (not (= lambda!257622 lambda!257611))))

(declare-fun bs!1202444 () Bool)

(assert (= bs!1202444 (and d!1665516 b!5160171)))

(assert (=> bs!1202444 (not (= lambda!257622 lambda!257612))))

(declare-fun bs!1202445 () Bool)

(assert (= bs!1202445 (and d!1665516 b!5160172)))

(assert (=> bs!1202445 (not (= lambda!257622 lambda!257613))))

(assert (=> d!1665516 true))

(declare-fun order!27007 () Int)

(declare-fun dynLambda!23817 (Int Int) Int)

(assert (=> d!1665516 (< (dynLambda!23817 order!27007 lambda!257611) (dynLambda!23817 order!27007 lambda!257622))))

(assert (=> d!1665516 (not (exists!1877 lt!2122230 lambda!257622))))

(declare-fun lt!2122238 () Unit!151285)

(declare-fun choose!38133 (List!59983 Int) Unit!151285)

(assert (=> d!1665516 (= lt!2122238 (choose!38133 lt!2122230 lambda!257611))))

(declare-fun forall!14030 (List!59983 Int) Bool)

(assert (=> d!1665516 (forall!14030 lt!2122230 lambda!257611)))

(assert (=> d!1665516 (= (lemmaForallThenNotExists!426 lt!2122230 lambda!257611) lt!2122238)))

(declare-fun bs!1202446 () Bool)

(assert (= bs!1202446 d!1665516))

(declare-fun m!6212038 () Bool)

(assert (=> bs!1202446 m!6212038))

(declare-fun m!6212040 () Bool)

(assert (=> bs!1202446 m!6212040))

(declare-fun m!6212042 () Bool)

(assert (=> bs!1202446 m!6212042))

(assert (=> b!5160172 d!1665516))

(declare-fun d!1665518 () Bool)

(assert (=> d!1665518 (= (nullable!4889 (reg!14862 expr!117)) (nullableFct!1364 (reg!14862 expr!117)))))

(declare-fun bs!1202447 () Bool)

(assert (= bs!1202447 d!1665518))

(declare-fun m!6212044 () Bool)

(assert (=> bs!1202447 m!6212044))

(assert (=> b!5160229 d!1665518))

(declare-fun d!1665520 () Bool)

(assert (=> d!1665520 (= ($colon$colon!1247 (exprs!4417 ctx!100) (ite (or c!887950 c!887946) (regTwo!29578 expr!117) expr!117)) (Cons!59856 (ite (or c!887950 c!887946) (regTwo!29578 expr!117) expr!117) (exprs!4417 ctx!100)))))

(assert (=> bm!361840 d!1665520))

(declare-fun d!1665522 () Bool)

(assert (=> d!1665522 (= (isEmpty!32085 (getLanguageWitness!989 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296))) (not ((_ is Some!14823) (getLanguageWitness!989 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)))))))

(assert (=> d!1665488 d!1665522))

(declare-fun bs!1202448 () Bool)

(declare-fun d!1665524 () Bool)

(assert (= bs!1202448 (and d!1665524 d!1665488)))

(declare-fun lambda!257629 () Int)

(assert (=> bs!1202448 (not (= lambda!257629 lambda!257611))))

(declare-fun bs!1202449 () Bool)

(assert (= bs!1202449 (and d!1665524 b!5160171)))

(assert (=> bs!1202449 (= lambda!257629 lambda!257612)))

(declare-fun bs!1202450 () Bool)

(assert (= bs!1202450 (and d!1665524 b!5160172)))

(assert (=> bs!1202450 (= lambda!257629 lambda!257613)))

(declare-fun bs!1202451 () Bool)

(assert (= bs!1202451 (and d!1665524 d!1665516)))

(assert (=> bs!1202451 (not (= lambda!257629 lambda!257622))))

(declare-fun lt!2122241 () Option!14824)

(declare-fun isDefined!11541 (Option!14824) Bool)

(declare-fun exists!1879 ((InoxSet Context!7834) Int) Bool)

(assert (=> d!1665524 (= (isDefined!11541 lt!2122241) (exists!1879 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257629))))

(declare-fun e!3215587 () Option!14824)

(assert (=> d!1665524 (= lt!2122241 e!3215587)))

(declare-fun c!887970 () Bool)

(assert (=> d!1665524 (= c!887970 (exists!1879 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257629))))

(assert (=> d!1665524 (= (getLanguageWitness!989 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)) lt!2122241)))

(declare-fun b!5160285 () Bool)

(declare-fun getLanguageWitness!990 (Context!7834) Option!14824)

(declare-fun getWitness!848 ((InoxSet Context!7834) Int) Context!7834)

(assert (=> b!5160285 (= e!3215587 (getLanguageWitness!990 (getWitness!848 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257629)))))

(declare-fun b!5160286 () Bool)

(assert (=> b!5160286 (= e!3215587 None!14823)))

(assert (= (and d!1665524 c!887970) b!5160285))

(assert (= (and d!1665524 (not c!887970)) b!5160286))

(declare-fun m!6212046 () Bool)

(assert (=> d!1665524 m!6212046))

(assert (=> d!1665524 m!6211946))

(declare-fun m!6212048 () Bool)

(assert (=> d!1665524 m!6212048))

(assert (=> d!1665524 m!6211946))

(assert (=> d!1665524 m!6212048))

(assert (=> b!5160285 m!6211946))

(declare-fun m!6212050 () Bool)

(assert (=> b!5160285 m!6212050))

(assert (=> b!5160285 m!6212050))

(declare-fun m!6212052 () Bool)

(assert (=> b!5160285 m!6212052))

(assert (=> d!1665488 d!1665524))

(declare-fun d!1665526 () Bool)

(declare-fun lt!2122244 () Bool)

(assert (=> d!1665526 (= lt!2122244 (forall!14030 (toList!8413 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)) lambda!257611))))

(declare-fun choose!38134 ((InoxSet Context!7834) Int) Bool)

(assert (=> d!1665526 (= lt!2122244 (choose!38134 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257611))))

(assert (=> d!1665526 (= (forall!14028 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257611) lt!2122244)))

(declare-fun bs!1202452 () Bool)

(assert (= bs!1202452 d!1665526))

(assert (=> bs!1202452 m!6211946))

(assert (=> bs!1202452 m!6211994))

(assert (=> bs!1202452 m!6211994))

(declare-fun m!6212054 () Bool)

(assert (=> bs!1202452 m!6212054))

(assert (=> bs!1202452 m!6211946))

(declare-fun m!6212056 () Bool)

(assert (=> bs!1202452 m!6212056))

(assert (=> d!1665488 d!1665526))

(declare-fun bs!1202453 () Bool)

(declare-fun d!1665528 () Bool)

(assert (= bs!1202453 (and d!1665528 d!1665524)))

(declare-fun lambda!257632 () Int)

(assert (=> bs!1202453 (not (= lambda!257632 lambda!257629))))

(declare-fun bs!1202454 () Bool)

(assert (= bs!1202454 (and d!1665528 b!5160172)))

(assert (=> bs!1202454 (not (= lambda!257632 lambda!257613))))

(declare-fun bs!1202455 () Bool)

(assert (= bs!1202455 (and d!1665528 b!5160171)))

(assert (=> bs!1202455 (not (= lambda!257632 lambda!257612))))

(declare-fun bs!1202456 () Bool)

(assert (= bs!1202456 (and d!1665528 d!1665488)))

(assert (=> bs!1202456 (not (= lambda!257632 lambda!257611))))

(declare-fun bs!1202457 () Bool)

(assert (= bs!1202457 (and d!1665528 d!1665516)))

(assert (=> bs!1202457 (= lambda!257632 lambda!257622)))

(assert (=> d!1665528 true))

(assert (=> d!1665528 (< (dynLambda!23817 order!27007 lambda!257611) (dynLambda!23817 order!27007 lambda!257632))))

(assert (=> d!1665528 (exists!1877 lt!2122235 lambda!257632)))

(declare-fun lt!2122247 () Unit!151285)

(declare-fun choose!38135 (List!59983 Int) Unit!151285)

(assert (=> d!1665528 (= lt!2122247 (choose!38135 lt!2122235 lambda!257611))))

(assert (=> d!1665528 (not (forall!14030 lt!2122235 lambda!257611))))

(assert (=> d!1665528 (= (lemmaNotForallThenExists!459 lt!2122235 lambda!257611) lt!2122247)))

(declare-fun bs!1202458 () Bool)

(assert (= bs!1202458 d!1665528))

(declare-fun m!6212058 () Bool)

(assert (=> bs!1202458 m!6212058))

(declare-fun m!6212060 () Bool)

(assert (=> bs!1202458 m!6212060))

(declare-fun m!6212062 () Bool)

(assert (=> bs!1202458 m!6212062))

(assert (=> b!5160171 d!1665528))

(declare-fun bm!361859 () Bool)

(declare-fun c!887971 () Bool)

(declare-fun call!361865 () Bool)

(assert (=> bm!361859 (= call!361865 (validRegex!6388 (ite c!887971 (regTwo!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regTwo!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))))))

(declare-fun b!5160287 () Bool)

(declare-fun e!3215592 () Bool)

(declare-fun e!3215595 () Bool)

(assert (=> b!5160287 (= e!3215592 e!3215595)))

(assert (=> b!5160287 (= c!887971 ((_ is Union!14533) (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))))

(declare-fun b!5160288 () Bool)

(declare-fun e!3215596 () Bool)

(assert (=> b!5160288 (= e!3215596 e!3215592)))

(declare-fun c!887972 () Bool)

(assert (=> b!5160288 (= c!887972 ((_ is Star!14533) (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))))

(declare-fun b!5160289 () Bool)

(declare-fun e!3215591 () Bool)

(assert (=> b!5160289 (= e!3215591 call!361865)))

(declare-fun b!5160290 () Bool)

(declare-fun e!3215590 () Bool)

(assert (=> b!5160290 (= e!3215590 e!3215591)))

(declare-fun res!2194291 () Bool)

(assert (=> b!5160290 (=> (not res!2194291) (not e!3215591))))

(declare-fun call!361866 () Bool)

(assert (=> b!5160290 (= res!2194291 call!361866)))

(declare-fun b!5160291 () Bool)

(declare-fun res!2194290 () Bool)

(assert (=> b!5160291 (=> res!2194290 e!3215590)))

(assert (=> b!5160291 (= res!2194290 (not ((_ is Concat!23378) (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117))))))))

(assert (=> b!5160291 (= e!3215595 e!3215590)))

(declare-fun b!5160292 () Bool)

(declare-fun e!3215593 () Bool)

(assert (=> b!5160292 (= e!3215592 e!3215593)))

(declare-fun res!2194293 () Bool)

(assert (=> b!5160292 (= res!2194293 (not (nullable!4889 (reg!14862 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))))))

(assert (=> b!5160292 (=> (not res!2194293) (not e!3215593))))

(declare-fun b!5160293 () Bool)

(declare-fun e!3215594 () Bool)

(assert (=> b!5160293 (= e!3215594 call!361865)))

(declare-fun d!1665530 () Bool)

(declare-fun res!2194292 () Bool)

(assert (=> d!1665530 (=> res!2194292 e!3215596)))

(assert (=> d!1665530 (= res!2194292 ((_ is ElementMatch!14533) (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))))

(assert (=> d!1665530 (= (validRegex!6388 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) e!3215596)))

(declare-fun b!5160294 () Bool)

(declare-fun call!361864 () Bool)

(assert (=> b!5160294 (= e!3215593 call!361864)))

(declare-fun bm!361860 () Bool)

(assert (=> bm!361860 (= call!361864 (validRegex!6388 (ite c!887972 (reg!14862 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (ite c!887971 (regOne!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regOne!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117))))))))))

(declare-fun bm!361861 () Bool)

(assert (=> bm!361861 (= call!361866 call!361864)))

(declare-fun b!5160295 () Bool)

(declare-fun res!2194294 () Bool)

(assert (=> b!5160295 (=> (not res!2194294) (not e!3215594))))

(assert (=> b!5160295 (= res!2194294 call!361866)))

(assert (=> b!5160295 (= e!3215595 e!3215594)))

(assert (= (and d!1665530 (not res!2194292)) b!5160288))

(assert (= (and b!5160288 c!887972) b!5160292))

(assert (= (and b!5160288 (not c!887972)) b!5160287))

(assert (= (and b!5160292 res!2194293) b!5160294))

(assert (= (and b!5160287 c!887971) b!5160295))

(assert (= (and b!5160287 (not c!887971)) b!5160291))

(assert (= (and b!5160295 res!2194294) b!5160293))

(assert (= (and b!5160291 (not res!2194290)) b!5160290))

(assert (= (and b!5160290 res!2194291) b!5160289))

(assert (= (or b!5160293 b!5160289) bm!361859))

(assert (= (or b!5160295 b!5160290) bm!361861))

(assert (= (or b!5160294 bm!361861) bm!361860))

(declare-fun m!6212064 () Bool)

(assert (=> bm!361859 m!6212064))

(declare-fun m!6212066 () Bool)

(assert (=> b!5160292 m!6212066))

(declare-fun m!6212068 () Bool)

(assert (=> bm!361860 m!6212068))

(assert (=> bm!361851 d!1665530))

(declare-fun d!1665532 () Bool)

(declare-fun res!2194299 () Bool)

(declare-fun e!3215601 () Bool)

(assert (=> d!1665532 (=> res!2194299 e!3215601)))

(assert (=> d!1665532 (= res!2194299 ((_ is Nil!59856) (exprs!4417 ctx!100)))))

(assert (=> d!1665532 (= (forall!14029 (exprs!4417 ctx!100) lambda!257616) e!3215601)))

(declare-fun b!5160300 () Bool)

(declare-fun e!3215602 () Bool)

(assert (=> b!5160300 (= e!3215601 e!3215602)))

(declare-fun res!2194300 () Bool)

(assert (=> b!5160300 (=> (not res!2194300) (not e!3215602))))

(declare-fun dynLambda!23818 (Int Regex!14533) Bool)

(assert (=> b!5160300 (= res!2194300 (dynLambda!23818 lambda!257616 (h!66304 (exprs!4417 ctx!100))))))

(declare-fun b!5160301 () Bool)

(assert (=> b!5160301 (= e!3215602 (forall!14029 (t!373051 (exprs!4417 ctx!100)) lambda!257616))))

(assert (= (and d!1665532 (not res!2194299)) b!5160300))

(assert (= (and b!5160300 res!2194300) b!5160301))

(declare-fun b_lambda!200517 () Bool)

(assert (=> (not b_lambda!200517) (not b!5160300)))

(declare-fun m!6212070 () Bool)

(assert (=> b!5160300 m!6212070))

(declare-fun m!6212072 () Bool)

(assert (=> b!5160301 m!6212072))

(assert (=> d!1665510 d!1665532))

(declare-fun b!5160302 () Bool)

(declare-fun e!3215607 () (InoxSet Context!7834))

(declare-fun call!361867 () (InoxSet Context!7834))

(declare-fun call!361869 () (InoxSet Context!7834))

(assert (=> b!5160302 (= e!3215607 ((_ map or) call!361867 call!361869))))

(declare-fun bm!361862 () Bool)

(declare-fun call!361871 () (InoxSet Context!7834))

(assert (=> bm!361862 (= call!361871 call!361867)))

(declare-fun b!5160303 () Bool)

(declare-fun e!3215605 () (InoxSet Context!7834))

(declare-fun call!361870 () (InoxSet Context!7834))

(assert (=> b!5160303 (= e!3215605 call!361870)))

(declare-fun c!887975 () Bool)

(declare-fun call!361868 () List!59980)

(declare-fun bm!361863 () Bool)

(assert (=> bm!361863 (= call!361869 (derivationStepZipperDown!180 (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))) (ite c!887975 (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)) (Context!7835 call!361868)) a!1296))))

(declare-fun bm!361864 () Bool)

(declare-fun c!887977 () Bool)

(declare-fun c!887973 () Bool)

(assert (=> bm!361864 (= call!361868 ($colon$colon!1247 (exprs!4417 (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848))) (ite (or c!887977 c!887973) (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))))))

(declare-fun bm!361866 () Bool)

(declare-fun call!361872 () List!59980)

(assert (=> bm!361866 (= call!361872 call!361868)))

(declare-fun b!5160304 () Bool)

(declare-fun e!3215606 () (InoxSet Context!7834))

(assert (=> b!5160304 (= e!3215606 e!3215607)))

(assert (=> b!5160304 (= c!887975 ((_ is Union!14533) (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))

(declare-fun b!5160305 () Bool)

(declare-fun e!3215603 () Bool)

(assert (=> b!5160305 (= e!3215603 (nullable!4889 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))))))

(declare-fun bm!361867 () Bool)

(assert (=> bm!361867 (= call!361870 call!361871)))

(declare-fun b!5160306 () Bool)

(declare-fun e!3215604 () (InoxSet Context!7834))

(assert (=> b!5160306 (= e!3215604 call!361870)))

(declare-fun b!5160307 () Bool)

(declare-fun e!3215608 () (InoxSet Context!7834))

(assert (=> b!5160307 (= e!3215608 e!3215604)))

(assert (=> b!5160307 (= c!887973 ((_ is Concat!23378) (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))

(declare-fun b!5160308 () Bool)

(declare-fun c!887974 () Bool)

(assert (=> b!5160308 (= c!887974 ((_ is Star!14533) (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))

(assert (=> b!5160308 (= e!3215604 e!3215605)))

(declare-fun b!5160309 () Bool)

(assert (=> b!5160309 (= e!3215608 ((_ map or) call!361869 call!361871))))

(declare-fun b!5160310 () Bool)

(assert (=> b!5160310 (= e!3215605 ((as const (Array Context!7834 Bool)) false))))

(declare-fun b!5160311 () Bool)

(assert (=> b!5160311 (= c!887977 e!3215603)))

(declare-fun res!2194301 () Bool)

(assert (=> b!5160311 (=> (not res!2194301) (not e!3215603))))

(assert (=> b!5160311 (= res!2194301 ((_ is Concat!23378) (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))

(assert (=> b!5160311 (= e!3215607 e!3215608)))

(declare-fun b!5160312 () Bool)

(assert (=> b!5160312 (= e!3215606 (store ((as const (Array Context!7834 Bool)) false) (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)) true))))

(declare-fun c!887976 () Bool)

(declare-fun d!1665534 () Bool)

(assert (=> d!1665534 (= c!887976 (and ((_ is ElementMatch!14533) (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (= (c!887892 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) a!1296)))))

(assert (=> d!1665534 (= (derivationStepZipperDown!180 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))) (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)) a!1296) e!3215606)))

(declare-fun bm!361865 () Bool)

(assert (=> bm!361865 (= call!361867 (derivationStepZipperDown!180 (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))))) (ite (or c!887975 c!887977) (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)) (Context!7835 call!361872)) a!1296))))

(assert (= (and d!1665534 c!887976) b!5160312))

(assert (= (and d!1665534 (not c!887976)) b!5160304))

(assert (= (and b!5160304 c!887975) b!5160302))

(assert (= (and b!5160304 (not c!887975)) b!5160311))

(assert (= (and b!5160311 res!2194301) b!5160305))

(assert (= (and b!5160311 c!887977) b!5160309))

(assert (= (and b!5160311 (not c!887977)) b!5160307))

(assert (= (and b!5160307 c!887973) b!5160306))

(assert (= (and b!5160307 (not c!887973)) b!5160308))

(assert (= (and b!5160308 c!887974) b!5160303))

(assert (= (and b!5160308 (not c!887974)) b!5160310))

(assert (= (or b!5160306 b!5160303) bm!361866))

(assert (= (or b!5160306 b!5160303) bm!361867))

(assert (= (or b!5160309 bm!361866) bm!361864))

(assert (= (or b!5160309 bm!361867) bm!361862))

(assert (= (or b!5160302 b!5160309) bm!361863))

(assert (= (or b!5160302 bm!361862) bm!361865))

(declare-fun m!6212074 () Bool)

(assert (=> b!5160305 m!6212074))

(declare-fun m!6212076 () Bool)

(assert (=> bm!361865 m!6212076))

(declare-fun m!6212078 () Bool)

(assert (=> bm!361864 m!6212078))

(declare-fun m!6212080 () Bool)

(assert (=> b!5160312 m!6212080))

(declare-fun m!6212082 () Bool)

(assert (=> bm!361863 m!6212082))

(assert (=> bm!361841 d!1665534))

(declare-fun b!5160338 () Bool)

(declare-fun e!3215635 () Bool)

(declare-fun call!361880 () Bool)

(assert (=> b!5160338 (= e!3215635 call!361880)))

(declare-fun b!5160339 () Bool)

(declare-fun e!3215631 () Bool)

(assert (=> b!5160339 (= e!3215631 call!361880)))

(declare-fun d!1665538 () Bool)

(declare-fun lt!2122252 () Bool)

(declare-fun getLanguageWitness!991 (Regex!14533) Option!14824)

(assert (=> d!1665538 (= lt!2122252 (isEmpty!32085 (getLanguageWitness!991 expr!117)))))

(declare-fun e!3215632 () Bool)

(assert (=> d!1665538 (= lt!2122252 e!3215632)))

(declare-fun res!2194318 () Bool)

(assert (=> d!1665538 (=> (not res!2194318) (not e!3215632))))

(assert (=> d!1665538 (= res!2194318 (not ((_ is EmptyExpr!14533) expr!117)))))

(assert (=> d!1665538 (= (lostCauseFct!406 expr!117) lt!2122252)))

(declare-fun b!5160340 () Bool)

(declare-fun e!3215634 () Bool)

(assert (=> b!5160340 (= e!3215632 e!3215634)))

(declare-fun res!2194320 () Bool)

(assert (=> b!5160340 (=> res!2194320 e!3215634)))

(assert (=> b!5160340 (= res!2194320 ((_ is EmptyLang!14533) expr!117))))

(declare-fun b!5160341 () Bool)

(declare-fun e!3215630 () Bool)

(declare-fun e!3215633 () Bool)

(assert (=> b!5160341 (= e!3215630 e!3215633)))

(declare-fun c!887982 () Bool)

(assert (=> b!5160341 (= c!887982 ((_ is Union!14533) expr!117))))

(declare-fun bm!361875 () Bool)

(declare-fun call!361881 () Bool)

(assert (=> bm!361875 (= call!361881 (lostCause!1618 (ite c!887982 (regOne!29579 expr!117) (regOne!29578 expr!117))))))

(declare-fun b!5160342 () Bool)

(assert (=> b!5160342 (= e!3215633 e!3215631)))

(declare-fun res!2194321 () Bool)

(assert (=> b!5160342 (= res!2194321 call!361881)))

(assert (=> b!5160342 (=> (not res!2194321) (not e!3215631))))

(declare-fun b!5160343 () Bool)

(assert (=> b!5160343 (= e!3215633 e!3215635)))

(declare-fun res!2194317 () Bool)

(assert (=> b!5160343 (= res!2194317 call!361881)))

(assert (=> b!5160343 (=> res!2194317 e!3215635)))

(declare-fun bm!361876 () Bool)

(assert (=> bm!361876 (= call!361880 (lostCause!1618 (ite c!887982 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))))

(declare-fun b!5160344 () Bool)

(assert (=> b!5160344 (= e!3215634 e!3215630)))

(declare-fun res!2194319 () Bool)

(assert (=> b!5160344 (=> (not res!2194319) (not e!3215630))))

(assert (=> b!5160344 (= res!2194319 (and (not ((_ is ElementMatch!14533) expr!117)) (not ((_ is Star!14533) expr!117))))))

(assert (= (and d!1665538 res!2194318) b!5160340))

(assert (= (and b!5160340 (not res!2194320)) b!5160344))

(assert (= (and b!5160344 res!2194319) b!5160341))

(assert (= (and b!5160341 c!887982) b!5160342))

(assert (= (and b!5160341 (not c!887982)) b!5160343))

(assert (= (and b!5160342 res!2194321) b!5160339))

(assert (= (and b!5160343 (not res!2194317)) b!5160338))

(assert (= (or b!5160342 b!5160343) bm!361875))

(assert (= (or b!5160339 b!5160338) bm!361876))

(declare-fun m!6212094 () Bool)

(assert (=> d!1665538 m!6212094))

(assert (=> d!1665538 m!6212094))

(declare-fun m!6212096 () Bool)

(assert (=> d!1665538 m!6212096))

(declare-fun m!6212098 () Bool)

(assert (=> bm!361875 m!6212098))

(declare-fun m!6212100 () Bool)

(assert (=> bm!361876 m!6212100))

(assert (=> d!1665506 d!1665538))

(declare-fun bs!1202469 () Bool)

(declare-fun d!1665546 () Bool)

(assert (= bs!1202469 (and d!1665546 d!1665524)))

(declare-fun lambda!257641 () Int)

(assert (=> bs!1202469 (not (= lambda!257641 lambda!257629))))

(declare-fun bs!1202470 () Bool)

(assert (= bs!1202470 (and d!1665546 d!1665528)))

(assert (=> bs!1202470 (= (= (ite c!887935 lambda!257612 lambda!257613) lambda!257611) (= lambda!257641 lambda!257632))))

(declare-fun bs!1202471 () Bool)

(assert (= bs!1202471 (and d!1665546 b!5160172)))

(assert (=> bs!1202471 (not (= lambda!257641 lambda!257613))))

(declare-fun bs!1202472 () Bool)

(assert (= bs!1202472 (and d!1665546 b!5160171)))

(assert (=> bs!1202472 (not (= lambda!257641 lambda!257612))))

(declare-fun bs!1202473 () Bool)

(assert (= bs!1202473 (and d!1665546 d!1665488)))

(assert (=> bs!1202473 (not (= lambda!257641 lambda!257611))))

(declare-fun bs!1202474 () Bool)

(assert (= bs!1202474 (and d!1665546 d!1665516)))

(assert (=> bs!1202474 (= (= (ite c!887935 lambda!257612 lambda!257613) lambda!257611) (= lambda!257641 lambda!257622))))

(assert (=> d!1665546 true))

(assert (=> d!1665546 (< (dynLambda!23817 order!27007 (ite c!887935 lambda!257612 lambda!257613)) (dynLambda!23817 order!27007 lambda!257641))))

(assert (=> d!1665546 (= (exists!1877 (ite c!887935 lt!2122235 lt!2122230) (ite c!887935 lambda!257612 lambda!257613)) (not (forall!14030 (ite c!887935 lt!2122235 lt!2122230) lambda!257641)))))

(declare-fun bs!1202475 () Bool)

(assert (= bs!1202475 d!1665546))

(declare-fun m!6212108 () Bool)

(assert (=> bs!1202475 m!6212108))

(assert (=> bm!361824 d!1665546))

(declare-fun bm!361885 () Bool)

(declare-fun call!361891 () Bool)

(declare-fun c!887987 () Bool)

(assert (=> bm!361885 (= call!361891 (nullable!4889 (ite c!887987 (regTwo!29579 (regOne!29578 expr!117)) (regOne!29578 (regOne!29578 expr!117)))))))

(declare-fun b!5160379 () Bool)

(declare-fun e!3215666 () Bool)

(declare-fun e!3215669 () Bool)

(assert (=> b!5160379 (= e!3215666 e!3215669)))

(declare-fun res!2194349 () Bool)

(assert (=> b!5160379 (= res!2194349 call!361891)))

(assert (=> b!5160379 (=> (not res!2194349) (not e!3215669))))

(declare-fun d!1665550 () Bool)

(declare-fun res!2194351 () Bool)

(declare-fun e!3215671 () Bool)

(assert (=> d!1665550 (=> res!2194351 e!3215671)))

(assert (=> d!1665550 (= res!2194351 ((_ is EmptyExpr!14533) (regOne!29578 expr!117)))))

(assert (=> d!1665550 (= (nullableFct!1364 (regOne!29578 expr!117)) e!3215671)))

(declare-fun b!5160380 () Bool)

(declare-fun e!3215670 () Bool)

(assert (=> b!5160380 (= e!3215670 call!361891)))

(declare-fun b!5160381 () Bool)

(declare-fun e!3215668 () Bool)

(declare-fun e!3215667 () Bool)

(assert (=> b!5160381 (= e!3215668 e!3215667)))

(declare-fun res!2194352 () Bool)

(assert (=> b!5160381 (=> res!2194352 e!3215667)))

(assert (=> b!5160381 (= res!2194352 ((_ is Star!14533) (regOne!29578 expr!117)))))

(declare-fun bm!361886 () Bool)

(declare-fun call!361890 () Bool)

(assert (=> bm!361886 (= call!361890 (nullable!4889 (ite c!887987 (regOne!29579 (regOne!29578 expr!117)) (regTwo!29578 (regOne!29578 expr!117)))))))

(declare-fun b!5160382 () Bool)

(assert (=> b!5160382 (= e!3215671 e!3215668)))

(declare-fun res!2194348 () Bool)

(assert (=> b!5160382 (=> (not res!2194348) (not e!3215668))))

(assert (=> b!5160382 (= res!2194348 (and (not ((_ is EmptyLang!14533) (regOne!29578 expr!117))) (not ((_ is ElementMatch!14533) (regOne!29578 expr!117)))))))

(declare-fun b!5160383 () Bool)

(assert (=> b!5160383 (= e!3215669 call!361890)))

(declare-fun b!5160384 () Bool)

(assert (=> b!5160384 (= e!3215667 e!3215666)))

(assert (=> b!5160384 (= c!887987 ((_ is Union!14533) (regOne!29578 expr!117)))))

(declare-fun b!5160385 () Bool)

(assert (=> b!5160385 (= e!3215666 e!3215670)))

(declare-fun res!2194350 () Bool)

(assert (=> b!5160385 (= res!2194350 call!361890)))

(assert (=> b!5160385 (=> res!2194350 e!3215670)))

(assert (= (and d!1665550 (not res!2194351)) b!5160382))

(assert (= (and b!5160382 res!2194348) b!5160381))

(assert (= (and b!5160381 (not res!2194352)) b!5160384))

(assert (= (and b!5160384 c!887987) b!5160385))

(assert (= (and b!5160384 (not c!887987)) b!5160379))

(assert (= (and b!5160385 (not res!2194350)) b!5160380))

(assert (= (and b!5160379 res!2194349) b!5160383))

(assert (= (or b!5160380 b!5160379) bm!361885))

(assert (= (or b!5160385 b!5160383) bm!361886))

(declare-fun m!6212114 () Bool)

(assert (=> bm!361885 m!6212114))

(declare-fun m!6212116 () Bool)

(assert (=> bm!361886 m!6212116))

(assert (=> d!1665486 d!1665550))

(declare-fun d!1665554 () Bool)

(declare-fun e!3215680 () Bool)

(assert (=> d!1665554 e!3215680))

(declare-fun res!2194360 () Bool)

(assert (=> d!1665554 (=> (not res!2194360) (not e!3215680))))

(declare-fun lt!2122256 () List!59983)

(declare-fun noDuplicate!1117 (List!59983) Bool)

(assert (=> d!1665554 (= res!2194360 (noDuplicate!1117 lt!2122256))))

(declare-fun choose!38137 ((InoxSet Context!7834)) List!59983)

(assert (=> d!1665554 (= lt!2122256 (choose!38137 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)))))

(assert (=> d!1665554 (= (toList!8413 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)) lt!2122256)))

(declare-fun b!5160395 () Bool)

(declare-fun content!10594 (List!59983) (InoxSet Context!7834))

(assert (=> b!5160395 (= e!3215680 (= (content!10594 lt!2122256) (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)))))

(assert (= (and d!1665554 res!2194360) b!5160395))

(declare-fun m!6212122 () Bool)

(assert (=> d!1665554 m!6212122))

(assert (=> d!1665554 m!6211946))

(declare-fun m!6212124 () Bool)

(assert (=> d!1665554 m!6212124))

(declare-fun m!6212126 () Bool)

(assert (=> b!5160395 m!6212126))

(assert (=> bm!361825 d!1665554))

(assert (=> b!5160198 d!1665486))

(declare-fun bm!361889 () Bool)

(declare-fun c!887989 () Bool)

(declare-fun call!361895 () Bool)

(assert (=> bm!361889 (= call!361895 (validRegex!6388 (ite c!887989 (regTwo!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regTwo!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))))))

(declare-fun b!5160396 () Bool)

(declare-fun e!3215683 () Bool)

(declare-fun e!3215686 () Bool)

(assert (=> b!5160396 (= e!3215683 e!3215686)))

(assert (=> b!5160396 (= c!887989 ((_ is Union!14533) (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))))

(declare-fun b!5160397 () Bool)

(declare-fun e!3215687 () Bool)

(assert (=> b!5160397 (= e!3215687 e!3215683)))

(declare-fun c!887990 () Bool)

(assert (=> b!5160397 (= c!887990 ((_ is Star!14533) (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))))

(declare-fun b!5160398 () Bool)

(declare-fun e!3215682 () Bool)

(assert (=> b!5160398 (= e!3215682 call!361895)))

(declare-fun b!5160399 () Bool)

(declare-fun e!3215681 () Bool)

(assert (=> b!5160399 (= e!3215681 e!3215682)))

(declare-fun res!2194362 () Bool)

(assert (=> b!5160399 (=> (not res!2194362) (not e!3215682))))

(declare-fun call!361896 () Bool)

(assert (=> b!5160399 (= res!2194362 call!361896)))

(declare-fun b!5160400 () Bool)

(declare-fun res!2194361 () Bool)

(assert (=> b!5160400 (=> res!2194361 e!3215681)))

(assert (=> b!5160400 (= res!2194361 (not ((_ is Concat!23378) (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117)))))))

(assert (=> b!5160400 (= e!3215686 e!3215681)))

(declare-fun b!5160401 () Bool)

(declare-fun e!3215684 () Bool)

(assert (=> b!5160401 (= e!3215683 e!3215684)))

(declare-fun res!2194364 () Bool)

(assert (=> b!5160401 (= res!2194364 (not (nullable!4889 (reg!14862 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))))))

(assert (=> b!5160401 (=> (not res!2194364) (not e!3215684))))

(declare-fun b!5160402 () Bool)

(declare-fun e!3215685 () Bool)

(assert (=> b!5160402 (= e!3215685 call!361895)))

(declare-fun d!1665562 () Bool)

(declare-fun res!2194363 () Bool)

(assert (=> d!1665562 (=> res!2194363 e!3215687)))

(assert (=> d!1665562 (= res!2194363 ((_ is ElementMatch!14533) (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))))

(assert (=> d!1665562 (= (validRegex!6388 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) e!3215687)))

(declare-fun b!5160403 () Bool)

(declare-fun call!361894 () Bool)

(assert (=> b!5160403 (= e!3215684 call!361894)))

(declare-fun bm!361890 () Bool)

(assert (=> bm!361890 (= call!361894 (validRegex!6388 (ite c!887990 (reg!14862 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (ite c!887989 (regOne!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regOne!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117)))))))))

(declare-fun bm!361891 () Bool)

(assert (=> bm!361891 (= call!361896 call!361894)))

(declare-fun b!5160404 () Bool)

(declare-fun res!2194365 () Bool)

(assert (=> b!5160404 (=> (not res!2194365) (not e!3215685))))

(assert (=> b!5160404 (= res!2194365 call!361896)))

(assert (=> b!5160404 (= e!3215686 e!3215685)))

(assert (= (and d!1665562 (not res!2194363)) b!5160397))

(assert (= (and b!5160397 c!887990) b!5160401))

(assert (= (and b!5160397 (not c!887990)) b!5160396))

(assert (= (and b!5160401 res!2194364) b!5160403))

(assert (= (and b!5160396 c!887989) b!5160404))

(assert (= (and b!5160396 (not c!887989)) b!5160400))

(assert (= (and b!5160404 res!2194365) b!5160402))

(assert (= (and b!5160400 (not res!2194361)) b!5160399))

(assert (= (and b!5160399 res!2194362) b!5160398))

(assert (= (or b!5160402 b!5160398) bm!361889))

(assert (= (or b!5160404 b!5160399) bm!361891))

(assert (= (or b!5160403 bm!361891) bm!361890))

(declare-fun m!6212128 () Bool)

(assert (=> bm!361889 m!6212128))

(declare-fun m!6212130 () Bool)

(assert (=> b!5160401 m!6212130))

(declare-fun m!6212132 () Bool)

(assert (=> bm!361890 m!6212132))

(assert (=> bm!361850 d!1665562))

(declare-fun bs!1202476 () Bool)

(declare-fun d!1665564 () Bool)

(assert (= bs!1202476 (and d!1665564 d!1665510)))

(declare-fun lambda!257644 () Int)

(assert (=> bs!1202476 (not (= lambda!257644 lambda!257616))))

(declare-fun bs!1202477 () Bool)

(assert (= bs!1202477 (and d!1665564 d!1665512)))

(assert (=> bs!1202477 (not (= lambda!257644 lambda!257619))))

(assert (=> d!1665564 true))

(declare-fun order!27011 () Int)

(declare-fun dynLambda!23821 (Int Int) Int)

(assert (=> d!1665564 (< (dynLambda!23821 order!27011 lambda!257619) (dynLambda!23821 order!27011 lambda!257644))))

(assert (=> d!1665564 (= (exists!1878 (exprs!4417 ctx!100) lambda!257619) (not (forall!14029 (exprs!4417 ctx!100) lambda!257644)))))

(declare-fun bs!1202478 () Bool)

(assert (= bs!1202478 d!1665564))

(declare-fun m!6212134 () Bool)

(assert (=> bs!1202478 m!6212134))

(assert (=> d!1665512 d!1665564))

(declare-fun b!5160413 () Bool)

(declare-fun e!3215690 () Bool)

(declare-fun tp!1446135 () Bool)

(assert (=> b!5160413 (= e!3215690 tp!1446135)))

(declare-fun b!5160414 () Bool)

(declare-fun tp!1446136 () Bool)

(declare-fun tp!1446132 () Bool)

(assert (=> b!5160414 (= e!3215690 (and tp!1446136 tp!1446132))))

(assert (=> b!5160254 (= tp!1446115 e!3215690)))

(declare-fun b!5160411 () Bool)

(assert (=> b!5160411 (= e!3215690 tp_is_empty!38215)))

(declare-fun b!5160412 () Bool)

(declare-fun tp!1446134 () Bool)

(declare-fun tp!1446133 () Bool)

(assert (=> b!5160412 (= e!3215690 (and tp!1446134 tp!1446133))))

(assert (= (and b!5160254 ((_ is ElementMatch!14533) (reg!14862 (regOne!29579 expr!117)))) b!5160411))

(assert (= (and b!5160254 ((_ is Concat!23378) (reg!14862 (regOne!29579 expr!117)))) b!5160412))

(assert (= (and b!5160254 ((_ is Star!14533) (reg!14862 (regOne!29579 expr!117)))) b!5160413))

(assert (= (and b!5160254 ((_ is Union!14533) (reg!14862 (regOne!29579 expr!117)))) b!5160414))

(declare-fun b!5160417 () Bool)

(declare-fun e!3215691 () Bool)

(declare-fun tp!1446140 () Bool)

(assert (=> b!5160417 (= e!3215691 tp!1446140)))

(declare-fun b!5160418 () Bool)

(declare-fun tp!1446141 () Bool)

(declare-fun tp!1446137 () Bool)

(assert (=> b!5160418 (= e!3215691 (and tp!1446141 tp!1446137))))

(assert (=> b!5160249 (= tp!1446109 e!3215691)))

(declare-fun b!5160415 () Bool)

(assert (=> b!5160415 (= e!3215691 tp_is_empty!38215)))

(declare-fun b!5160416 () Bool)

(declare-fun tp!1446139 () Bool)

(declare-fun tp!1446138 () Bool)

(assert (=> b!5160416 (= e!3215691 (and tp!1446139 tp!1446138))))

(assert (= (and b!5160249 ((_ is ElementMatch!14533) (regOne!29578 (reg!14862 expr!117)))) b!5160415))

(assert (= (and b!5160249 ((_ is Concat!23378) (regOne!29578 (reg!14862 expr!117)))) b!5160416))

(assert (= (and b!5160249 ((_ is Star!14533) (regOne!29578 (reg!14862 expr!117)))) b!5160417))

(assert (= (and b!5160249 ((_ is Union!14533) (regOne!29578 (reg!14862 expr!117)))) b!5160418))

(declare-fun b!5160421 () Bool)

(declare-fun e!3215692 () Bool)

(declare-fun tp!1446145 () Bool)

(assert (=> b!5160421 (= e!3215692 tp!1446145)))

(declare-fun b!5160422 () Bool)

(declare-fun tp!1446146 () Bool)

(declare-fun tp!1446142 () Bool)

(assert (=> b!5160422 (= e!3215692 (and tp!1446146 tp!1446142))))

(assert (=> b!5160249 (= tp!1446108 e!3215692)))

(declare-fun b!5160419 () Bool)

(assert (=> b!5160419 (= e!3215692 tp_is_empty!38215)))

(declare-fun b!5160420 () Bool)

(declare-fun tp!1446144 () Bool)

(declare-fun tp!1446143 () Bool)

(assert (=> b!5160420 (= e!3215692 (and tp!1446144 tp!1446143))))

(assert (= (and b!5160249 ((_ is ElementMatch!14533) (regTwo!29578 (reg!14862 expr!117)))) b!5160419))

(assert (= (and b!5160249 ((_ is Concat!23378) (regTwo!29578 (reg!14862 expr!117)))) b!5160420))

(assert (= (and b!5160249 ((_ is Star!14533) (regTwo!29578 (reg!14862 expr!117)))) b!5160421))

(assert (= (and b!5160249 ((_ is Union!14533) (regTwo!29578 (reg!14862 expr!117)))) b!5160422))

(declare-fun b!5160425 () Bool)

(declare-fun e!3215693 () Bool)

(declare-fun tp!1446150 () Bool)

(assert (=> b!5160425 (= e!3215693 tp!1446150)))

(declare-fun b!5160426 () Bool)

(declare-fun tp!1446151 () Bool)

(declare-fun tp!1446147 () Bool)

(assert (=> b!5160426 (= e!3215693 (and tp!1446151 tp!1446147))))

(assert (=> b!5160263 (= tp!1446126 e!3215693)))

(declare-fun b!5160423 () Bool)

(assert (=> b!5160423 (= e!3215693 tp_is_empty!38215)))

(declare-fun b!5160424 () Bool)

(declare-fun tp!1446149 () Bool)

(declare-fun tp!1446148 () Bool)

(assert (=> b!5160424 (= e!3215693 (and tp!1446149 tp!1446148))))

(assert (= (and b!5160263 ((_ is ElementMatch!14533) (regOne!29579 (regOne!29578 expr!117)))) b!5160423))

(assert (= (and b!5160263 ((_ is Concat!23378) (regOne!29579 (regOne!29578 expr!117)))) b!5160424))

(assert (= (and b!5160263 ((_ is Star!14533) (regOne!29579 (regOne!29578 expr!117)))) b!5160425))

(assert (= (and b!5160263 ((_ is Union!14533) (regOne!29579 (regOne!29578 expr!117)))) b!5160426))

(declare-fun b!5160429 () Bool)

(declare-fun e!3215694 () Bool)

(declare-fun tp!1446155 () Bool)

(assert (=> b!5160429 (= e!3215694 tp!1446155)))

(declare-fun b!5160430 () Bool)

(declare-fun tp!1446156 () Bool)

(declare-fun tp!1446152 () Bool)

(assert (=> b!5160430 (= e!3215694 (and tp!1446156 tp!1446152))))

(assert (=> b!5160263 (= tp!1446122 e!3215694)))

(declare-fun b!5160427 () Bool)

(assert (=> b!5160427 (= e!3215694 tp_is_empty!38215)))

(declare-fun b!5160428 () Bool)

(declare-fun tp!1446154 () Bool)

(declare-fun tp!1446153 () Bool)

(assert (=> b!5160428 (= e!3215694 (and tp!1446154 tp!1446153))))

(assert (= (and b!5160263 ((_ is ElementMatch!14533) (regTwo!29579 (regOne!29578 expr!117)))) b!5160427))

(assert (= (and b!5160263 ((_ is Concat!23378) (regTwo!29579 (regOne!29578 expr!117)))) b!5160428))

(assert (= (and b!5160263 ((_ is Star!14533) (regTwo!29579 (regOne!29578 expr!117)))) b!5160429))

(assert (= (and b!5160263 ((_ is Union!14533) (regTwo!29579 (regOne!29578 expr!117)))) b!5160430))

(declare-fun b!5160433 () Bool)

(declare-fun e!3215695 () Bool)

(declare-fun tp!1446160 () Bool)

(assert (=> b!5160433 (= e!3215695 tp!1446160)))

(declare-fun b!5160434 () Bool)

(declare-fun tp!1446161 () Bool)

(declare-fun tp!1446157 () Bool)

(assert (=> b!5160434 (= e!3215695 (and tp!1446161 tp!1446157))))

(assert (=> b!5160258 (= tp!1446120 e!3215695)))

(declare-fun b!5160431 () Bool)

(assert (=> b!5160431 (= e!3215695 tp_is_empty!38215)))

(declare-fun b!5160432 () Bool)

(declare-fun tp!1446159 () Bool)

(declare-fun tp!1446158 () Bool)

(assert (=> b!5160432 (= e!3215695 (and tp!1446159 tp!1446158))))

(assert (= (and b!5160258 ((_ is ElementMatch!14533) (reg!14862 (regTwo!29579 expr!117)))) b!5160431))

(assert (= (and b!5160258 ((_ is Concat!23378) (reg!14862 (regTwo!29579 expr!117)))) b!5160432))

(assert (= (and b!5160258 ((_ is Star!14533) (reg!14862 (regTwo!29579 expr!117)))) b!5160433))

(assert (= (and b!5160258 ((_ is Union!14533) (reg!14862 (regTwo!29579 expr!117)))) b!5160434))

(declare-fun b!5160437 () Bool)

(declare-fun e!3215696 () Bool)

(declare-fun tp!1446165 () Bool)

(assert (=> b!5160437 (= e!3215696 tp!1446165)))

(declare-fun b!5160438 () Bool)

(declare-fun tp!1446166 () Bool)

(declare-fun tp!1446162 () Bool)

(assert (=> b!5160438 (= e!3215696 (and tp!1446166 tp!1446162))))

(assert (=> b!5160253 (= tp!1446114 e!3215696)))

(declare-fun b!5160435 () Bool)

(assert (=> b!5160435 (= e!3215696 tp_is_empty!38215)))

(declare-fun b!5160436 () Bool)

(declare-fun tp!1446164 () Bool)

(declare-fun tp!1446163 () Bool)

(assert (=> b!5160436 (= e!3215696 (and tp!1446164 tp!1446163))))

(assert (= (and b!5160253 ((_ is ElementMatch!14533) (regOne!29578 (regOne!29579 expr!117)))) b!5160435))

(assert (= (and b!5160253 ((_ is Concat!23378) (regOne!29578 (regOne!29579 expr!117)))) b!5160436))

(assert (= (and b!5160253 ((_ is Star!14533) (regOne!29578 (regOne!29579 expr!117)))) b!5160437))

(assert (= (and b!5160253 ((_ is Union!14533) (regOne!29578 (regOne!29579 expr!117)))) b!5160438))

(declare-fun b!5160441 () Bool)

(declare-fun e!3215697 () Bool)

(declare-fun tp!1446170 () Bool)

(assert (=> b!5160441 (= e!3215697 tp!1446170)))

(declare-fun b!5160442 () Bool)

(declare-fun tp!1446171 () Bool)

(declare-fun tp!1446167 () Bool)

(assert (=> b!5160442 (= e!3215697 (and tp!1446171 tp!1446167))))

(assert (=> b!5160253 (= tp!1446113 e!3215697)))

(declare-fun b!5160439 () Bool)

(assert (=> b!5160439 (= e!3215697 tp_is_empty!38215)))

(declare-fun b!5160440 () Bool)

(declare-fun tp!1446169 () Bool)

(declare-fun tp!1446168 () Bool)

(assert (=> b!5160440 (= e!3215697 (and tp!1446169 tp!1446168))))

(assert (= (and b!5160253 ((_ is ElementMatch!14533) (regTwo!29578 (regOne!29579 expr!117)))) b!5160439))

(assert (= (and b!5160253 ((_ is Concat!23378) (regTwo!29578 (regOne!29579 expr!117)))) b!5160440))

(assert (= (and b!5160253 ((_ is Star!14533) (regTwo!29578 (regOne!29579 expr!117)))) b!5160441))

(assert (= (and b!5160253 ((_ is Union!14533) (regTwo!29578 (regOne!29579 expr!117)))) b!5160442))

(declare-fun b!5160445 () Bool)

(declare-fun e!3215698 () Bool)

(declare-fun tp!1446175 () Bool)

(assert (=> b!5160445 (= e!3215698 tp!1446175)))

(declare-fun b!5160446 () Bool)

(declare-fun tp!1446176 () Bool)

(declare-fun tp!1446172 () Bool)

(assert (=> b!5160446 (= e!3215698 (and tp!1446176 tp!1446172))))

(assert (=> b!5160267 (= tp!1446131 e!3215698)))

(declare-fun b!5160443 () Bool)

(assert (=> b!5160443 (= e!3215698 tp_is_empty!38215)))

(declare-fun b!5160444 () Bool)

(declare-fun tp!1446174 () Bool)

(declare-fun tp!1446173 () Bool)

(assert (=> b!5160444 (= e!3215698 (and tp!1446174 tp!1446173))))

(assert (= (and b!5160267 ((_ is ElementMatch!14533) (regOne!29579 (regTwo!29578 expr!117)))) b!5160443))

(assert (= (and b!5160267 ((_ is Concat!23378) (regOne!29579 (regTwo!29578 expr!117)))) b!5160444))

(assert (= (and b!5160267 ((_ is Star!14533) (regOne!29579 (regTwo!29578 expr!117)))) b!5160445))

(assert (= (and b!5160267 ((_ is Union!14533) (regOne!29579 (regTwo!29578 expr!117)))) b!5160446))

(declare-fun b!5160449 () Bool)

(declare-fun e!3215699 () Bool)

(declare-fun tp!1446180 () Bool)

(assert (=> b!5160449 (= e!3215699 tp!1446180)))

(declare-fun b!5160450 () Bool)

(declare-fun tp!1446181 () Bool)

(declare-fun tp!1446177 () Bool)

(assert (=> b!5160450 (= e!3215699 (and tp!1446181 tp!1446177))))

(assert (=> b!5160267 (= tp!1446127 e!3215699)))

(declare-fun b!5160447 () Bool)

(assert (=> b!5160447 (= e!3215699 tp_is_empty!38215)))

(declare-fun b!5160448 () Bool)

(declare-fun tp!1446179 () Bool)

(declare-fun tp!1446178 () Bool)

(assert (=> b!5160448 (= e!3215699 (and tp!1446179 tp!1446178))))

(assert (= (and b!5160267 ((_ is ElementMatch!14533) (regTwo!29579 (regTwo!29578 expr!117)))) b!5160447))

(assert (= (and b!5160267 ((_ is Concat!23378) (regTwo!29579 (regTwo!29578 expr!117)))) b!5160448))

(assert (= (and b!5160267 ((_ is Star!14533) (regTwo!29579 (regTwo!29578 expr!117)))) b!5160449))

(assert (= (and b!5160267 ((_ is Union!14533) (regTwo!29579 (regTwo!29578 expr!117)))) b!5160450))

(declare-fun b!5160453 () Bool)

(declare-fun e!3215700 () Bool)

(declare-fun tp!1446185 () Bool)

(assert (=> b!5160453 (= e!3215700 tp!1446185)))

(declare-fun b!5160454 () Bool)

(declare-fun tp!1446186 () Bool)

(declare-fun tp!1446182 () Bool)

(assert (=> b!5160454 (= e!3215700 (and tp!1446186 tp!1446182))))

(assert (=> b!5160255 (= tp!1446116 e!3215700)))

(declare-fun b!5160451 () Bool)

(assert (=> b!5160451 (= e!3215700 tp_is_empty!38215)))

(declare-fun b!5160452 () Bool)

(declare-fun tp!1446184 () Bool)

(declare-fun tp!1446183 () Bool)

(assert (=> b!5160452 (= e!3215700 (and tp!1446184 tp!1446183))))

(assert (= (and b!5160255 ((_ is ElementMatch!14533) (regOne!29579 (regOne!29579 expr!117)))) b!5160451))

(assert (= (and b!5160255 ((_ is Concat!23378) (regOne!29579 (regOne!29579 expr!117)))) b!5160452))

(assert (= (and b!5160255 ((_ is Star!14533) (regOne!29579 (regOne!29579 expr!117)))) b!5160453))

(assert (= (and b!5160255 ((_ is Union!14533) (regOne!29579 (regOne!29579 expr!117)))) b!5160454))

(declare-fun b!5160457 () Bool)

(declare-fun e!3215701 () Bool)

(declare-fun tp!1446190 () Bool)

(assert (=> b!5160457 (= e!3215701 tp!1446190)))

(declare-fun b!5160458 () Bool)

(declare-fun tp!1446191 () Bool)

(declare-fun tp!1446187 () Bool)

(assert (=> b!5160458 (= e!3215701 (and tp!1446191 tp!1446187))))

(assert (=> b!5160255 (= tp!1446112 e!3215701)))

(declare-fun b!5160455 () Bool)

(assert (=> b!5160455 (= e!3215701 tp_is_empty!38215)))

(declare-fun b!5160456 () Bool)

(declare-fun tp!1446189 () Bool)

(declare-fun tp!1446188 () Bool)

(assert (=> b!5160456 (= e!3215701 (and tp!1446189 tp!1446188))))

(assert (= (and b!5160255 ((_ is ElementMatch!14533) (regTwo!29579 (regOne!29579 expr!117)))) b!5160455))

(assert (= (and b!5160255 ((_ is Concat!23378) (regTwo!29579 (regOne!29579 expr!117)))) b!5160456))

(assert (= (and b!5160255 ((_ is Star!14533) (regTwo!29579 (regOne!29579 expr!117)))) b!5160457))

(assert (= (and b!5160255 ((_ is Union!14533) (regTwo!29579 (regOne!29579 expr!117)))) b!5160458))

(declare-fun b!5160461 () Bool)

(declare-fun e!3215702 () Bool)

(declare-fun tp!1446195 () Bool)

(assert (=> b!5160461 (= e!3215702 tp!1446195)))

(declare-fun b!5160462 () Bool)

(declare-fun tp!1446196 () Bool)

(declare-fun tp!1446192 () Bool)

(assert (=> b!5160462 (= e!3215702 (and tp!1446196 tp!1446192))))

(assert (=> b!5160250 (= tp!1446110 e!3215702)))

(declare-fun b!5160459 () Bool)

(assert (=> b!5160459 (= e!3215702 tp_is_empty!38215)))

(declare-fun b!5160460 () Bool)

(declare-fun tp!1446194 () Bool)

(declare-fun tp!1446193 () Bool)

(assert (=> b!5160460 (= e!3215702 (and tp!1446194 tp!1446193))))

(assert (= (and b!5160250 ((_ is ElementMatch!14533) (reg!14862 (reg!14862 expr!117)))) b!5160459))

(assert (= (and b!5160250 ((_ is Concat!23378) (reg!14862 (reg!14862 expr!117)))) b!5160460))

(assert (= (and b!5160250 ((_ is Star!14533) (reg!14862 (reg!14862 expr!117)))) b!5160461))

(assert (= (and b!5160250 ((_ is Union!14533) (reg!14862 (reg!14862 expr!117)))) b!5160462))

(declare-fun b!5160465 () Bool)

(declare-fun e!3215703 () Bool)

(declare-fun tp!1446200 () Bool)

(assert (=> b!5160465 (= e!3215703 tp!1446200)))

(declare-fun b!5160466 () Bool)

(declare-fun tp!1446201 () Bool)

(declare-fun tp!1446197 () Bool)

(assert (=> b!5160466 (= e!3215703 (and tp!1446201 tp!1446197))))

(assert (=> b!5160259 (= tp!1446121 e!3215703)))

(declare-fun b!5160463 () Bool)

(assert (=> b!5160463 (= e!3215703 tp_is_empty!38215)))

(declare-fun b!5160464 () Bool)

(declare-fun tp!1446199 () Bool)

(declare-fun tp!1446198 () Bool)

(assert (=> b!5160464 (= e!3215703 (and tp!1446199 tp!1446198))))

(assert (= (and b!5160259 ((_ is ElementMatch!14533) (regOne!29579 (regTwo!29579 expr!117)))) b!5160463))

(assert (= (and b!5160259 ((_ is Concat!23378) (regOne!29579 (regTwo!29579 expr!117)))) b!5160464))

(assert (= (and b!5160259 ((_ is Star!14533) (regOne!29579 (regTwo!29579 expr!117)))) b!5160465))

(assert (= (and b!5160259 ((_ is Union!14533) (regOne!29579 (regTwo!29579 expr!117)))) b!5160466))

(declare-fun b!5160471 () Bool)

(declare-fun e!3215705 () Bool)

(declare-fun tp!1446205 () Bool)

(assert (=> b!5160471 (= e!3215705 tp!1446205)))

(declare-fun b!5160472 () Bool)

(declare-fun tp!1446206 () Bool)

(declare-fun tp!1446202 () Bool)

(assert (=> b!5160472 (= e!3215705 (and tp!1446206 tp!1446202))))

(assert (=> b!5160259 (= tp!1446117 e!3215705)))

(declare-fun b!5160469 () Bool)

(assert (=> b!5160469 (= e!3215705 tp_is_empty!38215)))

(declare-fun b!5160470 () Bool)

(declare-fun tp!1446204 () Bool)

(declare-fun tp!1446203 () Bool)

(assert (=> b!5160470 (= e!3215705 (and tp!1446204 tp!1446203))))

(assert (= (and b!5160259 ((_ is ElementMatch!14533) (regTwo!29579 (regTwo!29579 expr!117)))) b!5160469))

(assert (= (and b!5160259 ((_ is Concat!23378) (regTwo!29579 (regTwo!29579 expr!117)))) b!5160470))

(assert (= (and b!5160259 ((_ is Star!14533) (regTwo!29579 (regTwo!29579 expr!117)))) b!5160471))

(assert (= (and b!5160259 ((_ is Union!14533) (regTwo!29579 (regTwo!29579 expr!117)))) b!5160472))

(declare-fun b!5160475 () Bool)

(declare-fun e!3215706 () Bool)

(declare-fun tp!1446210 () Bool)

(assert (=> b!5160475 (= e!3215706 tp!1446210)))

(declare-fun b!5160476 () Bool)

(declare-fun tp!1446211 () Bool)

(declare-fun tp!1446207 () Bool)

(assert (=> b!5160476 (= e!3215706 (and tp!1446211 tp!1446207))))

(assert (=> b!5160251 (= tp!1446111 e!3215706)))

(declare-fun b!5160473 () Bool)

(assert (=> b!5160473 (= e!3215706 tp_is_empty!38215)))

(declare-fun b!5160474 () Bool)

(declare-fun tp!1446209 () Bool)

(declare-fun tp!1446208 () Bool)

(assert (=> b!5160474 (= e!3215706 (and tp!1446209 tp!1446208))))

(assert (= (and b!5160251 ((_ is ElementMatch!14533) (regOne!29579 (reg!14862 expr!117)))) b!5160473))

(assert (= (and b!5160251 ((_ is Concat!23378) (regOne!29579 (reg!14862 expr!117)))) b!5160474))

(assert (= (and b!5160251 ((_ is Star!14533) (regOne!29579 (reg!14862 expr!117)))) b!5160475))

(assert (= (and b!5160251 ((_ is Union!14533) (regOne!29579 (reg!14862 expr!117)))) b!5160476))

(declare-fun b!5160479 () Bool)

(declare-fun e!3215707 () Bool)

(declare-fun tp!1446215 () Bool)

(assert (=> b!5160479 (= e!3215707 tp!1446215)))

(declare-fun b!5160480 () Bool)

(declare-fun tp!1446216 () Bool)

(declare-fun tp!1446212 () Bool)

(assert (=> b!5160480 (= e!3215707 (and tp!1446216 tp!1446212))))

(assert (=> b!5160251 (= tp!1446107 e!3215707)))

(declare-fun b!5160477 () Bool)

(assert (=> b!5160477 (= e!3215707 tp_is_empty!38215)))

(declare-fun b!5160478 () Bool)

(declare-fun tp!1446214 () Bool)

(declare-fun tp!1446213 () Bool)

(assert (=> b!5160478 (= e!3215707 (and tp!1446214 tp!1446213))))

(assert (= (and b!5160251 ((_ is ElementMatch!14533) (regTwo!29579 (reg!14862 expr!117)))) b!5160477))

(assert (= (and b!5160251 ((_ is Concat!23378) (regTwo!29579 (reg!14862 expr!117)))) b!5160478))

(assert (= (and b!5160251 ((_ is Star!14533) (regTwo!29579 (reg!14862 expr!117)))) b!5160479))

(assert (= (and b!5160251 ((_ is Union!14533) (regTwo!29579 (reg!14862 expr!117)))) b!5160480))

(declare-fun b!5160483 () Bool)

(declare-fun e!3215708 () Bool)

(declare-fun tp!1446220 () Bool)

(assert (=> b!5160483 (= e!3215708 tp!1446220)))

(declare-fun b!5160484 () Bool)

(declare-fun tp!1446221 () Bool)

(declare-fun tp!1446217 () Bool)

(assert (=> b!5160484 (= e!3215708 (and tp!1446221 tp!1446217))))

(assert (=> b!5160265 (= tp!1446129 e!3215708)))

(declare-fun b!5160481 () Bool)

(assert (=> b!5160481 (= e!3215708 tp_is_empty!38215)))

(declare-fun b!5160482 () Bool)

(declare-fun tp!1446219 () Bool)

(declare-fun tp!1446218 () Bool)

(assert (=> b!5160482 (= e!3215708 (and tp!1446219 tp!1446218))))

(assert (= (and b!5160265 ((_ is ElementMatch!14533) (regOne!29578 (regTwo!29578 expr!117)))) b!5160481))

(assert (= (and b!5160265 ((_ is Concat!23378) (regOne!29578 (regTwo!29578 expr!117)))) b!5160482))

(assert (= (and b!5160265 ((_ is Star!14533) (regOne!29578 (regTwo!29578 expr!117)))) b!5160483))

(assert (= (and b!5160265 ((_ is Union!14533) (regOne!29578 (regTwo!29578 expr!117)))) b!5160484))

(declare-fun b!5160487 () Bool)

(declare-fun e!3215709 () Bool)

(declare-fun tp!1446225 () Bool)

(assert (=> b!5160487 (= e!3215709 tp!1446225)))

(declare-fun b!5160488 () Bool)

(declare-fun tp!1446226 () Bool)

(declare-fun tp!1446222 () Bool)

(assert (=> b!5160488 (= e!3215709 (and tp!1446226 tp!1446222))))

(assert (=> b!5160265 (= tp!1446128 e!3215709)))

(declare-fun b!5160485 () Bool)

(assert (=> b!5160485 (= e!3215709 tp_is_empty!38215)))

(declare-fun b!5160486 () Bool)

(declare-fun tp!1446224 () Bool)

(declare-fun tp!1446223 () Bool)

(assert (=> b!5160486 (= e!3215709 (and tp!1446224 tp!1446223))))

(assert (= (and b!5160265 ((_ is ElementMatch!14533) (regTwo!29578 (regTwo!29578 expr!117)))) b!5160485))

(assert (= (and b!5160265 ((_ is Concat!23378) (regTwo!29578 (regTwo!29578 expr!117)))) b!5160486))

(assert (= (and b!5160265 ((_ is Star!14533) (regTwo!29578 (regTwo!29578 expr!117)))) b!5160487))

(assert (= (and b!5160265 ((_ is Union!14533) (regTwo!29578 (regTwo!29578 expr!117)))) b!5160488))

(declare-fun b!5160491 () Bool)

(declare-fun e!3215710 () Bool)

(declare-fun tp!1446230 () Bool)

(assert (=> b!5160491 (= e!3215710 tp!1446230)))

(declare-fun b!5160492 () Bool)

(declare-fun tp!1446231 () Bool)

(declare-fun tp!1446227 () Bool)

(assert (=> b!5160492 (= e!3215710 (and tp!1446231 tp!1446227))))

(assert (=> b!5160262 (= tp!1446125 e!3215710)))

(declare-fun b!5160489 () Bool)

(assert (=> b!5160489 (= e!3215710 tp_is_empty!38215)))

(declare-fun b!5160490 () Bool)

(declare-fun tp!1446229 () Bool)

(declare-fun tp!1446228 () Bool)

(assert (=> b!5160490 (= e!3215710 (and tp!1446229 tp!1446228))))

(assert (= (and b!5160262 ((_ is ElementMatch!14533) (reg!14862 (regOne!29578 expr!117)))) b!5160489))

(assert (= (and b!5160262 ((_ is Concat!23378) (reg!14862 (regOne!29578 expr!117)))) b!5160490))

(assert (= (and b!5160262 ((_ is Star!14533) (reg!14862 (regOne!29578 expr!117)))) b!5160491))

(assert (= (and b!5160262 ((_ is Union!14533) (reg!14862 (regOne!29578 expr!117)))) b!5160492))

(declare-fun b!5160495 () Bool)

(declare-fun e!3215711 () Bool)

(declare-fun tp!1446235 () Bool)

(assert (=> b!5160495 (= e!3215711 tp!1446235)))

(declare-fun b!5160496 () Bool)

(declare-fun tp!1446236 () Bool)

(declare-fun tp!1446232 () Bool)

(assert (=> b!5160496 (= e!3215711 (and tp!1446236 tp!1446232))))

(assert (=> b!5160257 (= tp!1446119 e!3215711)))

(declare-fun b!5160493 () Bool)

(assert (=> b!5160493 (= e!3215711 tp_is_empty!38215)))

(declare-fun b!5160494 () Bool)

(declare-fun tp!1446234 () Bool)

(declare-fun tp!1446233 () Bool)

(assert (=> b!5160494 (= e!3215711 (and tp!1446234 tp!1446233))))

(assert (= (and b!5160257 ((_ is ElementMatch!14533) (regOne!29578 (regTwo!29579 expr!117)))) b!5160493))

(assert (= (and b!5160257 ((_ is Concat!23378) (regOne!29578 (regTwo!29579 expr!117)))) b!5160494))

(assert (= (and b!5160257 ((_ is Star!14533) (regOne!29578 (regTwo!29579 expr!117)))) b!5160495))

(assert (= (and b!5160257 ((_ is Union!14533) (regOne!29578 (regTwo!29579 expr!117)))) b!5160496))

(declare-fun b!5160499 () Bool)

(declare-fun e!3215712 () Bool)

(declare-fun tp!1446240 () Bool)

(assert (=> b!5160499 (= e!3215712 tp!1446240)))

(declare-fun b!5160500 () Bool)

(declare-fun tp!1446241 () Bool)

(declare-fun tp!1446237 () Bool)

(assert (=> b!5160500 (= e!3215712 (and tp!1446241 tp!1446237))))

(assert (=> b!5160257 (= tp!1446118 e!3215712)))

(declare-fun b!5160497 () Bool)

(assert (=> b!5160497 (= e!3215712 tp_is_empty!38215)))

(declare-fun b!5160498 () Bool)

(declare-fun tp!1446239 () Bool)

(declare-fun tp!1446238 () Bool)

(assert (=> b!5160498 (= e!3215712 (and tp!1446239 tp!1446238))))

(assert (= (and b!5160257 ((_ is ElementMatch!14533) (regTwo!29578 (regTwo!29579 expr!117)))) b!5160497))

(assert (= (and b!5160257 ((_ is Concat!23378) (regTwo!29578 (regTwo!29579 expr!117)))) b!5160498))

(assert (= (and b!5160257 ((_ is Star!14533) (regTwo!29578 (regTwo!29579 expr!117)))) b!5160499))

(assert (= (and b!5160257 ((_ is Union!14533) (regTwo!29578 (regTwo!29579 expr!117)))) b!5160500))

(declare-fun b!5160503 () Bool)

(declare-fun e!3215713 () Bool)

(declare-fun tp!1446245 () Bool)

(assert (=> b!5160503 (= e!3215713 tp!1446245)))

(declare-fun b!5160504 () Bool)

(declare-fun tp!1446246 () Bool)

(declare-fun tp!1446242 () Bool)

(assert (=> b!5160504 (= e!3215713 (and tp!1446246 tp!1446242))))

(assert (=> b!5160266 (= tp!1446130 e!3215713)))

(declare-fun b!5160501 () Bool)

(assert (=> b!5160501 (= e!3215713 tp_is_empty!38215)))

(declare-fun b!5160502 () Bool)

(declare-fun tp!1446244 () Bool)

(declare-fun tp!1446243 () Bool)

(assert (=> b!5160502 (= e!3215713 (and tp!1446244 tp!1446243))))

(assert (= (and b!5160266 ((_ is ElementMatch!14533) (reg!14862 (regTwo!29578 expr!117)))) b!5160501))

(assert (= (and b!5160266 ((_ is Concat!23378) (reg!14862 (regTwo!29578 expr!117)))) b!5160502))

(assert (= (and b!5160266 ((_ is Star!14533) (reg!14862 (regTwo!29578 expr!117)))) b!5160503))

(assert (= (and b!5160266 ((_ is Union!14533) (reg!14862 (regTwo!29578 expr!117)))) b!5160504))

(declare-fun b!5160507 () Bool)

(declare-fun e!3215714 () Bool)

(declare-fun tp!1446250 () Bool)

(assert (=> b!5160507 (= e!3215714 tp!1446250)))

(declare-fun b!5160508 () Bool)

(declare-fun tp!1446251 () Bool)

(declare-fun tp!1446247 () Bool)

(assert (=> b!5160508 (= e!3215714 (and tp!1446251 tp!1446247))))

(assert (=> b!5160237 (= tp!1446095 e!3215714)))

(declare-fun b!5160505 () Bool)

(assert (=> b!5160505 (= e!3215714 tp_is_empty!38215)))

(declare-fun b!5160506 () Bool)

(declare-fun tp!1446249 () Bool)

(declare-fun tp!1446248 () Bool)

(assert (=> b!5160506 (= e!3215714 (and tp!1446249 tp!1446248))))

(assert (= (and b!5160237 ((_ is ElementMatch!14533) (h!66304 (exprs!4417 ctx!100)))) b!5160505))

(assert (= (and b!5160237 ((_ is Concat!23378) (h!66304 (exprs!4417 ctx!100)))) b!5160506))

(assert (= (and b!5160237 ((_ is Star!14533) (h!66304 (exprs!4417 ctx!100)))) b!5160507))

(assert (= (and b!5160237 ((_ is Union!14533) (h!66304 (exprs!4417 ctx!100)))) b!5160508))

(declare-fun b!5160509 () Bool)

(declare-fun e!3215715 () Bool)

(declare-fun tp!1446252 () Bool)

(declare-fun tp!1446253 () Bool)

(assert (=> b!5160509 (= e!3215715 (and tp!1446252 tp!1446253))))

(assert (=> b!5160237 (= tp!1446096 e!3215715)))

(assert (= (and b!5160237 ((_ is Cons!59856) (t!373051 (exprs!4417 ctx!100)))) b!5160509))

(declare-fun b!5160512 () Bool)

(declare-fun e!3215716 () Bool)

(declare-fun tp!1446257 () Bool)

(assert (=> b!5160512 (= e!3215716 tp!1446257)))

(declare-fun b!5160513 () Bool)

(declare-fun tp!1446258 () Bool)

(declare-fun tp!1446254 () Bool)

(assert (=> b!5160513 (= e!3215716 (and tp!1446258 tp!1446254))))

(assert (=> b!5160261 (= tp!1446124 e!3215716)))

(declare-fun b!5160510 () Bool)

(assert (=> b!5160510 (= e!3215716 tp_is_empty!38215)))

(declare-fun b!5160511 () Bool)

(declare-fun tp!1446256 () Bool)

(declare-fun tp!1446255 () Bool)

(assert (=> b!5160511 (= e!3215716 (and tp!1446256 tp!1446255))))

(assert (= (and b!5160261 ((_ is ElementMatch!14533) (regOne!29578 (regOne!29578 expr!117)))) b!5160510))

(assert (= (and b!5160261 ((_ is Concat!23378) (regOne!29578 (regOne!29578 expr!117)))) b!5160511))

(assert (= (and b!5160261 ((_ is Star!14533) (regOne!29578 (regOne!29578 expr!117)))) b!5160512))

(assert (= (and b!5160261 ((_ is Union!14533) (regOne!29578 (regOne!29578 expr!117)))) b!5160513))

(declare-fun b!5160516 () Bool)

(declare-fun e!3215717 () Bool)

(declare-fun tp!1446262 () Bool)

(assert (=> b!5160516 (= e!3215717 tp!1446262)))

(declare-fun b!5160517 () Bool)

(declare-fun tp!1446263 () Bool)

(declare-fun tp!1446259 () Bool)

(assert (=> b!5160517 (= e!3215717 (and tp!1446263 tp!1446259))))

(assert (=> b!5160261 (= tp!1446123 e!3215717)))

(declare-fun b!5160514 () Bool)

(assert (=> b!5160514 (= e!3215717 tp_is_empty!38215)))

(declare-fun b!5160515 () Bool)

(declare-fun tp!1446261 () Bool)

(declare-fun tp!1446260 () Bool)

(assert (=> b!5160515 (= e!3215717 (and tp!1446261 tp!1446260))))

(assert (= (and b!5160261 ((_ is ElementMatch!14533) (regTwo!29578 (regOne!29578 expr!117)))) b!5160514))

(assert (= (and b!5160261 ((_ is Concat!23378) (regTwo!29578 (regOne!29578 expr!117)))) b!5160515))

(assert (= (and b!5160261 ((_ is Star!14533) (regTwo!29578 (regOne!29578 expr!117)))) b!5160516))

(assert (= (and b!5160261 ((_ is Union!14533) (regTwo!29578 (regOne!29578 expr!117)))) b!5160517))

(declare-fun b_lambda!200521 () Bool)

(assert (= b_lambda!200517 (or d!1665510 b_lambda!200521)))

(declare-fun bs!1202484 () Bool)

(declare-fun d!1665568 () Bool)

(assert (= bs!1202484 (and d!1665568 d!1665510)))

(assert (=> bs!1202484 (= (dynLambda!23818 lambda!257616 (h!66304 (exprs!4417 ctx!100))) (validRegex!6388 (h!66304 (exprs!4417 ctx!100))))))

(declare-fun m!6212144 () Bool)

(assert (=> bs!1202484 m!6212144))

(assert (=> b!5160300 d!1665568))

(check-sat (not b!5160441) (not d!1665554) (not b!5160465) (not b!5160305) (not d!1665528) (not b!5160417) (not b!5160482) (not bm!361863) (not b!5160292) (not bm!361890) (not b!5160444) (not bm!361886) (not b!5160460) (not b!5160430) (not b!5160454) (not b!5160494) (not b!5160395) (not b!5160504) (not b!5160515) (not bm!361885) (not b!5160474) (not b!5160472) (not b!5160434) (not bm!361859) (not b!5160285) (not bm!361865) (not b!5160490) (not b!5160486) (not b!5160498) (not b!5160500) (not b!5160428) (not b!5160495) (not b!5160475) (not b!5160458) (not b!5160462) (not b!5160456) (not b!5160414) (not b!5160461) (not b!5160507) (not b!5160413) (not b!5160484) (not d!1665526) (not b!5160401) (not b!5160517) (not b!5160480) (not b!5160424) (not b!5160488) (not b!5160513) (not bm!361876) (not bm!361864) (not b!5160512) (not b!5160425) (not b!5160448) (not b!5160483) (not b!5160509) (not b!5160416) (not b!5160429) (not d!1665538) (not b!5160412) (not b!5160506) (not bm!361856) (not b!5160426) (not b!5160422) (not b!5160471) (not b!5160516) (not b!5160421) (not b!5160436) (not b!5160457) (not b!5160502) tp_is_empty!38215 (not bm!361875) (not b!5160476) (not b!5160466) (not b!5160437) (not b_lambda!200521) (not b!5160491) (not b!5160440) (not b!5160446) (not d!1665546) (not b!5160496) (not b!5160433) (not b!5160464) (not d!1665516) (not b!5160511) (not b!5160487) (not b!5160450) (not b!5160452) (not b!5160418) (not bm!361854) (not bm!361889) (not b!5160438) (not b!5160492) (not b!5160479) (not b!5160478) (not b!5160508) (not b!5160271) (not b!5160301) (not b!5160499) (not b!5160503) (not b!5160445) (not bm!361855) (not d!1665564) (not d!1665518) (not b!5160453) (not b!5160449) (not d!1665524) (not b!5160442) (not b!5160432) (not b!5160470) (not b!5160420) (not bm!361860) (not bs!1202484))
(check-sat)
(get-model)

(declare-fun b!5160680 () Bool)

(declare-fun e!3215791 () (InoxSet Context!7834))

(declare-fun call!361918 () (InoxSet Context!7834))

(declare-fun call!361920 () (InoxSet Context!7834))

(assert (=> b!5160680 (= e!3215791 ((_ map or) call!361918 call!361920))))

(declare-fun bm!361913 () Bool)

(declare-fun call!361922 () (InoxSet Context!7834))

(assert (=> bm!361913 (= call!361922 call!361918)))

(declare-fun b!5160681 () Bool)

(declare-fun e!3215789 () (InoxSet Context!7834))

(declare-fun call!361921 () (InoxSet Context!7834))

(assert (=> b!5160681 (= e!3215789 call!361921)))

(declare-fun call!361919 () List!59980)

(declare-fun c!888017 () Bool)

(declare-fun bm!361914 () Bool)

(assert (=> bm!361914 (= call!361920 (derivationStepZipperDown!180 (ite c!888017 (regTwo!29579 (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))) (regOne!29578 (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))))) (ite c!888017 (ite c!887975 (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)) (Context!7835 call!361868)) (Context!7835 call!361919)) a!1296))))

(declare-fun bm!361915 () Bool)

(declare-fun c!888019 () Bool)

(declare-fun c!888015 () Bool)

(assert (=> bm!361915 (= call!361919 ($colon$colon!1247 (exprs!4417 (ite c!887975 (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)) (Context!7835 call!361868))) (ite (or c!888019 c!888015) (regTwo!29578 (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))) (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))))))))

(declare-fun bm!361917 () Bool)

(declare-fun call!361923 () List!59980)

(assert (=> bm!361917 (= call!361923 call!361919)))

(declare-fun b!5160682 () Bool)

(declare-fun e!3215790 () (InoxSet Context!7834))

(assert (=> b!5160682 (= e!3215790 e!3215791)))

(assert (=> b!5160682 (= c!888017 ((_ is Union!14533) (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))))

(declare-fun b!5160683 () Bool)

(declare-fun e!3215787 () Bool)

(assert (=> b!5160683 (= e!3215787 (nullable!4889 (regOne!29578 (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))))))))

(declare-fun bm!361918 () Bool)

(assert (=> bm!361918 (= call!361921 call!361922)))

(declare-fun b!5160684 () Bool)

(declare-fun e!3215788 () (InoxSet Context!7834))

(assert (=> b!5160684 (= e!3215788 call!361921)))

(declare-fun b!5160685 () Bool)

(declare-fun e!3215792 () (InoxSet Context!7834))

(assert (=> b!5160685 (= e!3215792 e!3215788)))

(assert (=> b!5160685 (= c!888015 ((_ is Concat!23378) (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))))

(declare-fun c!888016 () Bool)

(declare-fun b!5160686 () Bool)

(assert (=> b!5160686 (= c!888016 ((_ is Star!14533) (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))))

(assert (=> b!5160686 (= e!3215788 e!3215789)))

(declare-fun b!5160687 () Bool)

(assert (=> b!5160687 (= e!3215792 ((_ map or) call!361920 call!361922))))

(declare-fun b!5160688 () Bool)

(assert (=> b!5160688 (= e!3215789 ((as const (Array Context!7834 Bool)) false))))

(declare-fun b!5160689 () Bool)

(assert (=> b!5160689 (= c!888019 e!3215787)))

(declare-fun res!2194391 () Bool)

(assert (=> b!5160689 (=> (not res!2194391) (not e!3215787))))

(assert (=> b!5160689 (= res!2194391 ((_ is Concat!23378) (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))))

(assert (=> b!5160689 (= e!3215791 e!3215792)))

(declare-fun b!5160690 () Bool)

(assert (=> b!5160690 (= e!3215790 (store ((as const (Array Context!7834 Bool)) false) (ite c!887975 (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)) (Context!7835 call!361868)) true))))

(declare-fun d!1665586 () Bool)

(declare-fun c!888018 () Bool)

(assert (=> d!1665586 (= c!888018 (and ((_ is ElementMatch!14533) (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))) (= (c!887892 (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))) a!1296)))))

(assert (=> d!1665586 (= (derivationStepZipperDown!180 (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))) (ite c!887975 (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)) (Context!7835 call!361868)) a!1296) e!3215790)))

(declare-fun bm!361916 () Bool)

(assert (=> bm!361916 (= call!361918 (derivationStepZipperDown!180 (ite c!888017 (regOne!29579 (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))) (ite c!888019 (regTwo!29578 (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))) (ite c!888015 (regOne!29578 (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))) (reg!14862 (ite c!887975 (regTwo!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))))))) (ite (or c!888017 c!888019) (ite c!887975 (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)) (Context!7835 call!361868)) (Context!7835 call!361923)) a!1296))))

(assert (= (and d!1665586 c!888018) b!5160690))

(assert (= (and d!1665586 (not c!888018)) b!5160682))

(assert (= (and b!5160682 c!888017) b!5160680))

(assert (= (and b!5160682 (not c!888017)) b!5160689))

(assert (= (and b!5160689 res!2194391) b!5160683))

(assert (= (and b!5160689 c!888019) b!5160687))

(assert (= (and b!5160689 (not c!888019)) b!5160685))

(assert (= (and b!5160685 c!888015) b!5160684))

(assert (= (and b!5160685 (not c!888015)) b!5160686))

(assert (= (and b!5160686 c!888016) b!5160681))

(assert (= (and b!5160686 (not c!888016)) b!5160688))

(assert (= (or b!5160684 b!5160681) bm!361917))

(assert (= (or b!5160684 b!5160681) bm!361918))

(assert (= (or b!5160687 bm!361917) bm!361915))

(assert (= (or b!5160687 bm!361918) bm!361913))

(assert (= (or b!5160680 b!5160687) bm!361914))

(assert (= (or b!5160680 bm!361913) bm!361916))

(declare-fun m!6212200 () Bool)

(assert (=> b!5160683 m!6212200))

(declare-fun m!6212202 () Bool)

(assert (=> bm!361916 m!6212202))

(declare-fun m!6212204 () Bool)

(assert (=> bm!361915 m!6212204))

(declare-fun m!6212206 () Bool)

(assert (=> b!5160690 m!6212206))

(declare-fun m!6212208 () Bool)

(assert (=> bm!361914 m!6212208))

(assert (=> bm!361863 d!1665586))

(declare-fun bs!1202497 () Bool)

(declare-fun d!1665588 () Bool)

(assert (= bs!1202497 (and d!1665588 d!1665524)))

(declare-fun lambda!257658 () Int)

(assert (=> bs!1202497 (not (= lambda!257658 lambda!257629))))

(declare-fun bs!1202498 () Bool)

(assert (= bs!1202498 (and d!1665588 d!1665546)))

(assert (=> bs!1202498 (= (= lambda!257632 (ite c!887935 lambda!257612 lambda!257613)) (= lambda!257658 lambda!257641))))

(declare-fun bs!1202499 () Bool)

(assert (= bs!1202499 (and d!1665588 d!1665528)))

(assert (=> bs!1202499 (= (= lambda!257632 lambda!257611) (= lambda!257658 lambda!257632))))

(declare-fun bs!1202500 () Bool)

(assert (= bs!1202500 (and d!1665588 b!5160172)))

(assert (=> bs!1202500 (not (= lambda!257658 lambda!257613))))

(declare-fun bs!1202501 () Bool)

(assert (= bs!1202501 (and d!1665588 b!5160171)))

(assert (=> bs!1202501 (not (= lambda!257658 lambda!257612))))

(declare-fun bs!1202502 () Bool)

(assert (= bs!1202502 (and d!1665588 d!1665488)))

(assert (=> bs!1202502 (not (= lambda!257658 lambda!257611))))

(declare-fun bs!1202503 () Bool)

(assert (= bs!1202503 (and d!1665588 d!1665516)))

(assert (=> bs!1202503 (= (= lambda!257632 lambda!257611) (= lambda!257658 lambda!257622))))

(assert (=> d!1665588 true))

(assert (=> d!1665588 (< (dynLambda!23817 order!27007 lambda!257632) (dynLambda!23817 order!27007 lambda!257658))))

(assert (=> d!1665588 (= (exists!1877 lt!2122235 lambda!257632) (not (forall!14030 lt!2122235 lambda!257658)))))

(declare-fun bs!1202504 () Bool)

(assert (= bs!1202504 d!1665588))

(declare-fun m!6212210 () Bool)

(assert (=> bs!1202504 m!6212210))

(assert (=> d!1665528 d!1665588))

(declare-fun bs!1202505 () Bool)

(declare-fun d!1665590 () Bool)

(assert (= bs!1202505 (and d!1665590 d!1665524)))

(declare-fun lambda!257661 () Int)

(assert (=> bs!1202505 (not (= lambda!257661 lambda!257629))))

(declare-fun bs!1202506 () Bool)

(assert (= bs!1202506 (and d!1665590 d!1665546)))

(assert (=> bs!1202506 (= (= lambda!257611 (ite c!887935 lambda!257612 lambda!257613)) (= lambda!257661 lambda!257641))))

(declare-fun bs!1202507 () Bool)

(assert (= bs!1202507 (and d!1665590 d!1665528)))

(assert (=> bs!1202507 (= lambda!257661 lambda!257632)))

(declare-fun bs!1202508 () Bool)

(assert (= bs!1202508 (and d!1665590 b!5160172)))

(assert (=> bs!1202508 (not (= lambda!257661 lambda!257613))))

(declare-fun bs!1202509 () Bool)

(assert (= bs!1202509 (and d!1665590 b!5160171)))

(assert (=> bs!1202509 (not (= lambda!257661 lambda!257612))))

(declare-fun bs!1202510 () Bool)

(assert (= bs!1202510 (and d!1665590 d!1665588)))

(assert (=> bs!1202510 (= (= lambda!257611 lambda!257632) (= lambda!257661 lambda!257658))))

(declare-fun bs!1202511 () Bool)

(assert (= bs!1202511 (and d!1665590 d!1665488)))

(assert (=> bs!1202511 (not (= lambda!257661 lambda!257611))))

(declare-fun bs!1202512 () Bool)

(assert (= bs!1202512 (and d!1665590 d!1665516)))

(assert (=> bs!1202512 (= lambda!257661 lambda!257622)))

(assert (=> d!1665590 true))

(assert (=> d!1665590 (< (dynLambda!23817 order!27007 lambda!257611) (dynLambda!23817 order!27007 lambda!257661))))

(assert (=> d!1665590 (exists!1877 lt!2122235 lambda!257661)))

(assert (=> d!1665590 true))

(declare-fun _$97!197 () Unit!151285)

(assert (=> d!1665590 (= (choose!38135 lt!2122235 lambda!257611) _$97!197)))

(declare-fun bs!1202513 () Bool)

(assert (= bs!1202513 d!1665590))

(declare-fun m!6212212 () Bool)

(assert (=> bs!1202513 m!6212212))

(assert (=> d!1665528 d!1665590))

(declare-fun d!1665592 () Bool)

(declare-fun res!2194396 () Bool)

(declare-fun e!3215799 () Bool)

(assert (=> d!1665592 (=> res!2194396 e!3215799)))

(assert (=> d!1665592 (= res!2194396 ((_ is Nil!59859) lt!2122235))))

(assert (=> d!1665592 (= (forall!14030 lt!2122235 lambda!257611) e!3215799)))

(declare-fun b!5160695 () Bool)

(declare-fun e!3215800 () Bool)

(assert (=> b!5160695 (= e!3215799 e!3215800)))

(declare-fun res!2194397 () Bool)

(assert (=> b!5160695 (=> (not res!2194397) (not e!3215800))))

(declare-fun dynLambda!23823 (Int Context!7834) Bool)

(assert (=> b!5160695 (= res!2194397 (dynLambda!23823 lambda!257611 (h!66307 lt!2122235)))))

(declare-fun b!5160696 () Bool)

(assert (=> b!5160696 (= e!3215800 (forall!14030 (t!373054 lt!2122235) lambda!257611))))

(assert (= (and d!1665592 (not res!2194396)) b!5160695))

(assert (= (and b!5160695 res!2194397) b!5160696))

(declare-fun b_lambda!200525 () Bool)

(assert (=> (not b_lambda!200525) (not b!5160695)))

(declare-fun m!6212214 () Bool)

(assert (=> b!5160695 m!6212214))

(declare-fun m!6212216 () Bool)

(assert (=> b!5160696 m!6212216))

(assert (=> d!1665528 d!1665592))

(declare-fun b!5160697 () Bool)

(declare-fun e!3215805 () (InoxSet Context!7834))

(declare-fun call!361924 () (InoxSet Context!7834))

(declare-fun call!361926 () (InoxSet Context!7834))

(assert (=> b!5160697 (= e!3215805 ((_ map or) call!361924 call!361926))))

(declare-fun bm!361919 () Bool)

(declare-fun call!361928 () (InoxSet Context!7834))

(assert (=> bm!361919 (= call!361928 call!361924)))

(declare-fun b!5160698 () Bool)

(declare-fun e!3215803 () (InoxSet Context!7834))

(declare-fun call!361927 () (InoxSet Context!7834))

(assert (=> b!5160698 (= e!3215803 call!361927)))

(declare-fun c!888022 () Bool)

(declare-fun call!361925 () List!59980)

(declare-fun bm!361920 () Bool)

(assert (=> bm!361920 (= call!361926 (derivationStepZipperDown!180 (ite c!888022 (regTwo!29579 (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))) (regOne!29578 (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))))))) (ite c!888022 (ite (or c!887975 c!887977) (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)) (Context!7835 call!361872)) (Context!7835 call!361925)) a!1296))))

(declare-fun bm!361921 () Bool)

(declare-fun c!888024 () Bool)

(declare-fun c!888020 () Bool)

(assert (=> bm!361921 (= call!361925 ($colon$colon!1247 (exprs!4417 (ite (or c!887975 c!887977) (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)) (Context!7835 call!361872))) (ite (or c!888024 c!888020) (regTwo!29578 (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))) (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))))))))))

(declare-fun bm!361923 () Bool)

(declare-fun call!361929 () List!59980)

(assert (=> bm!361923 (= call!361929 call!361925)))

(declare-fun b!5160699 () Bool)

(declare-fun e!3215804 () (InoxSet Context!7834))

(assert (=> b!5160699 (= e!3215804 e!3215805)))

(assert (=> b!5160699 (= c!888022 ((_ is Union!14533) (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))))))

(declare-fun b!5160700 () Bool)

(declare-fun e!3215801 () Bool)

(assert (=> b!5160700 (= e!3215801 (nullable!4889 (regOne!29578 (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))))))))))

(declare-fun bm!361924 () Bool)

(assert (=> bm!361924 (= call!361927 call!361928)))

(declare-fun b!5160701 () Bool)

(declare-fun e!3215802 () (InoxSet Context!7834))

(assert (=> b!5160701 (= e!3215802 call!361927)))

(declare-fun b!5160702 () Bool)

(declare-fun e!3215806 () (InoxSet Context!7834))

(assert (=> b!5160702 (= e!3215806 e!3215802)))

(assert (=> b!5160702 (= c!888020 ((_ is Concat!23378) (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))))))

(declare-fun b!5160703 () Bool)

(declare-fun c!888021 () Bool)

(assert (=> b!5160703 (= c!888021 ((_ is Star!14533) (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))))))

(assert (=> b!5160703 (= e!3215802 e!3215803)))

(declare-fun b!5160704 () Bool)

(assert (=> b!5160704 (= e!3215806 ((_ map or) call!361926 call!361928))))

(declare-fun b!5160705 () Bool)

(assert (=> b!5160705 (= e!3215803 ((as const (Array Context!7834 Bool)) false))))

(declare-fun b!5160706 () Bool)

(assert (=> b!5160706 (= c!888024 e!3215801)))

(declare-fun res!2194398 () Bool)

(assert (=> b!5160706 (=> (not res!2194398) (not e!3215801))))

(assert (=> b!5160706 (= res!2194398 ((_ is Concat!23378) (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))))))

(assert (=> b!5160706 (= e!3215805 e!3215806)))

(declare-fun b!5160707 () Bool)

(assert (=> b!5160707 (= e!3215804 (store ((as const (Array Context!7834 Bool)) false) (ite (or c!887975 c!887977) (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)) (Context!7835 call!361872)) true))))

(declare-fun d!1665594 () Bool)

(declare-fun c!888023 () Bool)

(assert (=> d!1665594 (= c!888023 (and ((_ is ElementMatch!14533) (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))) (= (c!887892 (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))) a!1296)))))

(assert (=> d!1665594 (= (derivationStepZipperDown!180 (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))))) (ite (or c!887975 c!887977) (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)) (Context!7835 call!361872)) a!1296) e!3215804)))

(declare-fun bm!361922 () Bool)

(assert (=> bm!361922 (= call!361924 (derivationStepZipperDown!180 (ite c!888022 (regOne!29579 (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))) (ite c!888024 (regTwo!29578 (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))) (ite c!888020 (regOne!29578 (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))))))) (reg!14862 (ite c!887975 (regOne!29579 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887977 (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887973 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (reg!14862 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))))))))) (ite (or c!888022 c!888024) (ite (or c!887975 c!887977) (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)) (Context!7835 call!361872)) (Context!7835 call!361929)) a!1296))))

(assert (= (and d!1665594 c!888023) b!5160707))

(assert (= (and d!1665594 (not c!888023)) b!5160699))

(assert (= (and b!5160699 c!888022) b!5160697))

(assert (= (and b!5160699 (not c!888022)) b!5160706))

(assert (= (and b!5160706 res!2194398) b!5160700))

(assert (= (and b!5160706 c!888024) b!5160704))

(assert (= (and b!5160706 (not c!888024)) b!5160702))

(assert (= (and b!5160702 c!888020) b!5160701))

(assert (= (and b!5160702 (not c!888020)) b!5160703))

(assert (= (and b!5160703 c!888021) b!5160698))

(assert (= (and b!5160703 (not c!888021)) b!5160705))

(assert (= (or b!5160701 b!5160698) bm!361923))

(assert (= (or b!5160701 b!5160698) bm!361924))

(assert (= (or b!5160704 bm!361923) bm!361921))

(assert (= (or b!5160704 bm!361924) bm!361919))

(assert (= (or b!5160697 b!5160704) bm!361920))

(assert (= (or b!5160697 bm!361919) bm!361922))

(declare-fun m!6212218 () Bool)

(assert (=> b!5160700 m!6212218))

(declare-fun m!6212220 () Bool)

(assert (=> bm!361922 m!6212220))

(declare-fun m!6212222 () Bool)

(assert (=> bm!361921 m!6212222))

(declare-fun m!6212224 () Bool)

(assert (=> b!5160707 m!6212224))

(declare-fun m!6212226 () Bool)

(assert (=> bm!361920 m!6212226))

(assert (=> bm!361865 d!1665594))

(declare-fun call!361931 () Bool)

(declare-fun bm!361925 () Bool)

(declare-fun c!888025 () Bool)

(assert (=> bm!361925 (= call!361931 (validRegex!6388 (ite c!888025 (regTwo!29579 (ite c!887989 (regTwo!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regTwo!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))) (regTwo!29578 (ite c!887989 (regTwo!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regTwo!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))))))))

(declare-fun b!5160708 () Bool)

(declare-fun e!3215809 () Bool)

(declare-fun e!3215812 () Bool)

(assert (=> b!5160708 (= e!3215809 e!3215812)))

(assert (=> b!5160708 (= c!888025 ((_ is Union!14533) (ite c!887989 (regTwo!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regTwo!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))))))

(declare-fun b!5160709 () Bool)

(declare-fun e!3215813 () Bool)

(assert (=> b!5160709 (= e!3215813 e!3215809)))

(declare-fun c!888026 () Bool)

(assert (=> b!5160709 (= c!888026 ((_ is Star!14533) (ite c!887989 (regTwo!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regTwo!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))))))

(declare-fun b!5160710 () Bool)

(declare-fun e!3215808 () Bool)

(assert (=> b!5160710 (= e!3215808 call!361931)))

(declare-fun b!5160711 () Bool)

(declare-fun e!3215807 () Bool)

(assert (=> b!5160711 (= e!3215807 e!3215808)))

(declare-fun res!2194400 () Bool)

(assert (=> b!5160711 (=> (not res!2194400) (not e!3215808))))

(declare-fun call!361932 () Bool)

(assert (=> b!5160711 (= res!2194400 call!361932)))

(declare-fun b!5160712 () Bool)

(declare-fun res!2194399 () Bool)

(assert (=> b!5160712 (=> res!2194399 e!3215807)))

(assert (=> b!5160712 (= res!2194399 (not ((_ is Concat!23378) (ite c!887989 (regTwo!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regTwo!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117)))))))))

(assert (=> b!5160712 (= e!3215812 e!3215807)))

(declare-fun b!5160713 () Bool)

(declare-fun e!3215810 () Bool)

(assert (=> b!5160713 (= e!3215809 e!3215810)))

(declare-fun res!2194402 () Bool)

(assert (=> b!5160713 (= res!2194402 (not (nullable!4889 (reg!14862 (ite c!887989 (regTwo!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regTwo!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))))))))

(assert (=> b!5160713 (=> (not res!2194402) (not e!3215810))))

(declare-fun b!5160714 () Bool)

(declare-fun e!3215811 () Bool)

(assert (=> b!5160714 (= e!3215811 call!361931)))

(declare-fun d!1665596 () Bool)

(declare-fun res!2194401 () Bool)

(assert (=> d!1665596 (=> res!2194401 e!3215813)))

(assert (=> d!1665596 (= res!2194401 ((_ is ElementMatch!14533) (ite c!887989 (regTwo!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regTwo!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))))))

(assert (=> d!1665596 (= (validRegex!6388 (ite c!887989 (regTwo!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regTwo!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))) e!3215813)))

(declare-fun b!5160715 () Bool)

(declare-fun call!361930 () Bool)

(assert (=> b!5160715 (= e!3215810 call!361930)))

(declare-fun bm!361926 () Bool)

(assert (=> bm!361926 (= call!361930 (validRegex!6388 (ite c!888026 (reg!14862 (ite c!887989 (regTwo!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regTwo!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))) (ite c!888025 (regOne!29579 (ite c!887989 (regTwo!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regTwo!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))) (regOne!29578 (ite c!887989 (regTwo!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regTwo!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117)))))))))))

(declare-fun bm!361927 () Bool)

(assert (=> bm!361927 (= call!361932 call!361930)))

(declare-fun b!5160716 () Bool)

(declare-fun res!2194403 () Bool)

(assert (=> b!5160716 (=> (not res!2194403) (not e!3215811))))

(assert (=> b!5160716 (= res!2194403 call!361932)))

(assert (=> b!5160716 (= e!3215812 e!3215811)))

(assert (= (and d!1665596 (not res!2194401)) b!5160709))

(assert (= (and b!5160709 c!888026) b!5160713))

(assert (= (and b!5160709 (not c!888026)) b!5160708))

(assert (= (and b!5160713 res!2194402) b!5160715))

(assert (= (and b!5160708 c!888025) b!5160716))

(assert (= (and b!5160708 (not c!888025)) b!5160712))

(assert (= (and b!5160716 res!2194403) b!5160714))

(assert (= (and b!5160712 (not res!2194399)) b!5160711))

(assert (= (and b!5160711 res!2194400) b!5160710))

(assert (= (or b!5160714 b!5160710) bm!361925))

(assert (= (or b!5160716 b!5160711) bm!361927))

(assert (= (or b!5160715 bm!361927) bm!361926))

(declare-fun m!6212228 () Bool)

(assert (=> bm!361925 m!6212228))

(declare-fun m!6212230 () Bool)

(assert (=> b!5160713 m!6212230))

(declare-fun m!6212232 () Bool)

(assert (=> bm!361926 m!6212232))

(assert (=> bm!361889 d!1665596))

(declare-fun d!1665598 () Bool)

(assert (=> d!1665598 (= ($colon$colon!1247 (exprs!4417 (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848))) (ite (or c!887977 c!887973) (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))) (Cons!59856 (ite (or c!887977 c!887973) (regTwo!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117))))) (exprs!4417 (ite (or c!887948 c!887950) ctx!100 (Context!7835 call!361848)))))))

(assert (=> bm!361864 d!1665598))

(declare-fun d!1665600 () Bool)

(assert (=> d!1665600 (= (nullable!4889 (ite c!887987 (regOne!29579 (regOne!29578 expr!117)) (regTwo!29578 (regOne!29578 expr!117)))) (nullableFct!1364 (ite c!887987 (regOne!29579 (regOne!29578 expr!117)) (regTwo!29578 (regOne!29578 expr!117)))))))

(declare-fun bs!1202514 () Bool)

(assert (= bs!1202514 d!1665600))

(declare-fun m!6212234 () Bool)

(assert (=> bs!1202514 m!6212234))

(assert (=> bm!361886 d!1665600))

(declare-fun bm!361928 () Bool)

(declare-fun call!361934 () Bool)

(declare-fun c!888027 () Bool)

(assert (=> bm!361928 (= call!361934 (validRegex!6388 (ite c!888027 (regTwo!29579 (h!66304 (exprs!4417 ctx!100))) (regTwo!29578 (h!66304 (exprs!4417 ctx!100))))))))

(declare-fun b!5160717 () Bool)

(declare-fun e!3215816 () Bool)

(declare-fun e!3215819 () Bool)

(assert (=> b!5160717 (= e!3215816 e!3215819)))

(assert (=> b!5160717 (= c!888027 ((_ is Union!14533) (h!66304 (exprs!4417 ctx!100))))))

(declare-fun b!5160718 () Bool)

(declare-fun e!3215820 () Bool)

(assert (=> b!5160718 (= e!3215820 e!3215816)))

(declare-fun c!888028 () Bool)

(assert (=> b!5160718 (= c!888028 ((_ is Star!14533) (h!66304 (exprs!4417 ctx!100))))))

(declare-fun b!5160719 () Bool)

(declare-fun e!3215815 () Bool)

(assert (=> b!5160719 (= e!3215815 call!361934)))

(declare-fun b!5160720 () Bool)

(declare-fun e!3215814 () Bool)

(assert (=> b!5160720 (= e!3215814 e!3215815)))

(declare-fun res!2194405 () Bool)

(assert (=> b!5160720 (=> (not res!2194405) (not e!3215815))))

(declare-fun call!361935 () Bool)

(assert (=> b!5160720 (= res!2194405 call!361935)))

(declare-fun b!5160721 () Bool)

(declare-fun res!2194404 () Bool)

(assert (=> b!5160721 (=> res!2194404 e!3215814)))

(assert (=> b!5160721 (= res!2194404 (not ((_ is Concat!23378) (h!66304 (exprs!4417 ctx!100)))))))

(assert (=> b!5160721 (= e!3215819 e!3215814)))

(declare-fun b!5160722 () Bool)

(declare-fun e!3215817 () Bool)

(assert (=> b!5160722 (= e!3215816 e!3215817)))

(declare-fun res!2194407 () Bool)

(assert (=> b!5160722 (= res!2194407 (not (nullable!4889 (reg!14862 (h!66304 (exprs!4417 ctx!100))))))))

(assert (=> b!5160722 (=> (not res!2194407) (not e!3215817))))

(declare-fun b!5160723 () Bool)

(declare-fun e!3215818 () Bool)

(assert (=> b!5160723 (= e!3215818 call!361934)))

(declare-fun d!1665602 () Bool)

(declare-fun res!2194406 () Bool)

(assert (=> d!1665602 (=> res!2194406 e!3215820)))

(assert (=> d!1665602 (= res!2194406 ((_ is ElementMatch!14533) (h!66304 (exprs!4417 ctx!100))))))

(assert (=> d!1665602 (= (validRegex!6388 (h!66304 (exprs!4417 ctx!100))) e!3215820)))

(declare-fun b!5160724 () Bool)

(declare-fun call!361933 () Bool)

(assert (=> b!5160724 (= e!3215817 call!361933)))

(declare-fun bm!361929 () Bool)

(assert (=> bm!361929 (= call!361933 (validRegex!6388 (ite c!888028 (reg!14862 (h!66304 (exprs!4417 ctx!100))) (ite c!888027 (regOne!29579 (h!66304 (exprs!4417 ctx!100))) (regOne!29578 (h!66304 (exprs!4417 ctx!100)))))))))

(declare-fun bm!361930 () Bool)

(assert (=> bm!361930 (= call!361935 call!361933)))

(declare-fun b!5160725 () Bool)

(declare-fun res!2194408 () Bool)

(assert (=> b!5160725 (=> (not res!2194408) (not e!3215818))))

(assert (=> b!5160725 (= res!2194408 call!361935)))

(assert (=> b!5160725 (= e!3215819 e!3215818)))

(assert (= (and d!1665602 (not res!2194406)) b!5160718))

(assert (= (and b!5160718 c!888028) b!5160722))

(assert (= (and b!5160718 (not c!888028)) b!5160717))

(assert (= (and b!5160722 res!2194407) b!5160724))

(assert (= (and b!5160717 c!888027) b!5160725))

(assert (= (and b!5160717 (not c!888027)) b!5160721))

(assert (= (and b!5160725 res!2194408) b!5160723))

(assert (= (and b!5160721 (not res!2194404)) b!5160720))

(assert (= (and b!5160720 res!2194405) b!5160719))

(assert (= (or b!5160723 b!5160719) bm!361928))

(assert (= (or b!5160725 b!5160720) bm!361930))

(assert (= (or b!5160724 bm!361930) bm!361929))

(declare-fun m!6212236 () Bool)

(assert (=> bm!361928 m!6212236))

(declare-fun m!6212238 () Bool)

(assert (=> b!5160722 m!6212238))

(declare-fun m!6212240 () Bool)

(assert (=> bm!361929 m!6212240))

(assert (=> bs!1202484 d!1665602))

(declare-fun d!1665604 () Bool)

(declare-fun c!888031 () Bool)

(assert (=> d!1665604 (= c!888031 ((_ is Nil!59859) lt!2122256))))

(declare-fun e!3215823 () (InoxSet Context!7834))

(assert (=> d!1665604 (= (content!10594 lt!2122256) e!3215823)))

(declare-fun b!5160730 () Bool)

(assert (=> b!5160730 (= e!3215823 ((as const (Array Context!7834 Bool)) false))))

(declare-fun b!5160731 () Bool)

(assert (=> b!5160731 (= e!3215823 ((_ map or) (store ((as const (Array Context!7834 Bool)) false) (h!66307 lt!2122256) true) (content!10594 (t!373054 lt!2122256))))))

(assert (= (and d!1665604 c!888031) b!5160730))

(assert (= (and d!1665604 (not c!888031)) b!5160731))

(declare-fun m!6212242 () Bool)

(assert (=> b!5160731 m!6212242))

(declare-fun m!6212244 () Bool)

(assert (=> b!5160731 m!6212244))

(assert (=> b!5160395 d!1665604))

(declare-fun d!1665606 () Bool)

(declare-fun res!2194409 () Bool)

(declare-fun e!3215824 () Bool)

(assert (=> d!1665606 (=> res!2194409 e!3215824)))

(assert (=> d!1665606 (= res!2194409 ((_ is Nil!59856) (exprs!4417 ctx!100)))))

(assert (=> d!1665606 (= (forall!14029 (exprs!4417 ctx!100) lambda!257644) e!3215824)))

(declare-fun b!5160732 () Bool)

(declare-fun e!3215825 () Bool)

(assert (=> b!5160732 (= e!3215824 e!3215825)))

(declare-fun res!2194410 () Bool)

(assert (=> b!5160732 (=> (not res!2194410) (not e!3215825))))

(assert (=> b!5160732 (= res!2194410 (dynLambda!23818 lambda!257644 (h!66304 (exprs!4417 ctx!100))))))

(declare-fun b!5160733 () Bool)

(assert (=> b!5160733 (= e!3215825 (forall!14029 (t!373051 (exprs!4417 ctx!100)) lambda!257644))))

(assert (= (and d!1665606 (not res!2194409)) b!5160732))

(assert (= (and b!5160732 res!2194410) b!5160733))

(declare-fun b_lambda!200527 () Bool)

(assert (=> (not b_lambda!200527) (not b!5160732)))

(declare-fun m!6212246 () Bool)

(assert (=> b!5160732 m!6212246))

(declare-fun m!6212248 () Bool)

(assert (=> b!5160733 m!6212248))

(assert (=> d!1665564 d!1665606))

(declare-fun d!1665608 () Bool)

(assert (=> d!1665608 (= ($colon$colon!1247 (exprs!4417 (ite c!887948 ctx!100 (Context!7835 call!361844))) (ite (or c!887961 c!887957) (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))) (Cons!59856 (ite (or c!887961 c!887957) (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (exprs!4417 (ite c!887948 ctx!100 (Context!7835 call!361844)))))))

(assert (=> bm!361855 d!1665608))

(declare-fun d!1665610 () Bool)

(assert (=> d!1665610 (= (nullable!4889 (reg!14862 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117))))) (nullableFct!1364 (reg!14862 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117))))))))

(declare-fun bs!1202515 () Bool)

(assert (= bs!1202515 d!1665610))

(declare-fun m!6212250 () Bool)

(assert (=> bs!1202515 m!6212250))

(assert (=> b!5160292 d!1665610))

(declare-fun b!5160734 () Bool)

(declare-fun e!3215830 () (InoxSet Context!7834))

(declare-fun call!361936 () (InoxSet Context!7834))

(declare-fun call!361938 () (InoxSet Context!7834))

(assert (=> b!5160734 (= e!3215830 ((_ map or) call!361936 call!361938))))

(declare-fun bm!361931 () Bool)

(declare-fun call!361940 () (InoxSet Context!7834))

(assert (=> bm!361931 (= call!361940 call!361936)))

(declare-fun b!5160735 () Bool)

(declare-fun e!3215828 () (InoxSet Context!7834))

(declare-fun call!361939 () (InoxSet Context!7834))

(assert (=> b!5160735 (= e!3215828 call!361939)))

(declare-fun bm!361932 () Bool)

(declare-fun call!361937 () List!59980)

(declare-fun c!888034 () Bool)

(assert (=> bm!361932 (= call!361938 (derivationStepZipperDown!180 (ite c!888034 (regTwo!29579 (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))) (regOne!29578 (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))))) (ite c!888034 (ite c!887959 (ite c!887948 ctx!100 (Context!7835 call!361844)) (Context!7835 call!361859)) (Context!7835 call!361937)) a!1296))))

(declare-fun bm!361933 () Bool)

(declare-fun c!888036 () Bool)

(declare-fun c!888032 () Bool)

(assert (=> bm!361933 (= call!361937 ($colon$colon!1247 (exprs!4417 (ite c!887959 (ite c!887948 ctx!100 (Context!7835 call!361844)) (Context!7835 call!361859))) (ite (or c!888036 c!888032) (regTwo!29578 (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))) (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))))))))

(declare-fun bm!361935 () Bool)

(declare-fun call!361941 () List!59980)

(assert (=> bm!361935 (= call!361941 call!361937)))

(declare-fun b!5160736 () Bool)

(declare-fun e!3215829 () (InoxSet Context!7834))

(assert (=> b!5160736 (= e!3215829 e!3215830)))

(assert (=> b!5160736 (= c!888034 ((_ is Union!14533) (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))))

(declare-fun e!3215826 () Bool)

(declare-fun b!5160737 () Bool)

(assert (=> b!5160737 (= e!3215826 (nullable!4889 (regOne!29578 (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))))))))

(declare-fun bm!361936 () Bool)

(assert (=> bm!361936 (= call!361939 call!361940)))

(declare-fun b!5160738 () Bool)

(declare-fun e!3215827 () (InoxSet Context!7834))

(assert (=> b!5160738 (= e!3215827 call!361939)))

(declare-fun b!5160739 () Bool)

(declare-fun e!3215831 () (InoxSet Context!7834))

(assert (=> b!5160739 (= e!3215831 e!3215827)))

(assert (=> b!5160739 (= c!888032 ((_ is Concat!23378) (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))))

(declare-fun c!888033 () Bool)

(declare-fun b!5160740 () Bool)

(assert (=> b!5160740 (= c!888033 ((_ is Star!14533) (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))))

(assert (=> b!5160740 (= e!3215827 e!3215828)))

(declare-fun b!5160741 () Bool)

(assert (=> b!5160741 (= e!3215831 ((_ map or) call!361938 call!361940))))

(declare-fun b!5160742 () Bool)

(assert (=> b!5160742 (= e!3215828 ((as const (Array Context!7834 Bool)) false))))

(declare-fun b!5160743 () Bool)

(assert (=> b!5160743 (= c!888036 e!3215826)))

(declare-fun res!2194411 () Bool)

(assert (=> b!5160743 (=> (not res!2194411) (not e!3215826))))

(assert (=> b!5160743 (= res!2194411 ((_ is Concat!23378) (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))))

(assert (=> b!5160743 (= e!3215830 e!3215831)))

(declare-fun b!5160744 () Bool)

(assert (=> b!5160744 (= e!3215829 (store ((as const (Array Context!7834 Bool)) false) (ite c!887959 (ite c!887948 ctx!100 (Context!7835 call!361844)) (Context!7835 call!361859)) true))))

(declare-fun d!1665612 () Bool)

(declare-fun c!888035 () Bool)

(assert (=> d!1665612 (= c!888035 (and ((_ is ElementMatch!14533) (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))) (= (c!887892 (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))) a!1296)))))

(assert (=> d!1665612 (= (derivationStepZipperDown!180 (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))) (ite c!887959 (ite c!887948 ctx!100 (Context!7835 call!361844)) (Context!7835 call!361859)) a!1296) e!3215829)))

(declare-fun bm!361934 () Bool)

(assert (=> bm!361934 (= call!361936 (derivationStepZipperDown!180 (ite c!888034 (regOne!29579 (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))) (ite c!888036 (regTwo!29578 (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))) (ite c!888032 (regOne!29578 (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))) (reg!14862 (ite c!887959 (regTwo!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))))))) (ite (or c!888034 c!888036) (ite c!887959 (ite c!887948 ctx!100 (Context!7835 call!361844)) (Context!7835 call!361859)) (Context!7835 call!361941)) a!1296))))

(assert (= (and d!1665612 c!888035) b!5160744))

(assert (= (and d!1665612 (not c!888035)) b!5160736))

(assert (= (and b!5160736 c!888034) b!5160734))

(assert (= (and b!5160736 (not c!888034)) b!5160743))

(assert (= (and b!5160743 res!2194411) b!5160737))

(assert (= (and b!5160743 c!888036) b!5160741))

(assert (= (and b!5160743 (not c!888036)) b!5160739))

(assert (= (and b!5160739 c!888032) b!5160738))

(assert (= (and b!5160739 (not c!888032)) b!5160740))

(assert (= (and b!5160740 c!888033) b!5160735))

(assert (= (and b!5160740 (not c!888033)) b!5160742))

(assert (= (or b!5160738 b!5160735) bm!361935))

(assert (= (or b!5160738 b!5160735) bm!361936))

(assert (= (or b!5160741 bm!361935) bm!361933))

(assert (= (or b!5160741 bm!361936) bm!361931))

(assert (= (or b!5160734 b!5160741) bm!361932))

(assert (= (or b!5160734 bm!361931) bm!361934))

(declare-fun m!6212252 () Bool)

(assert (=> b!5160737 m!6212252))

(declare-fun m!6212254 () Bool)

(assert (=> bm!361934 m!6212254))

(declare-fun m!6212256 () Bool)

(assert (=> bm!361933 m!6212256))

(declare-fun m!6212258 () Bool)

(assert (=> b!5160744 m!6212258))

(declare-fun m!6212260 () Bool)

(assert (=> bm!361932 m!6212260))

(assert (=> bm!361854 d!1665612))

(declare-fun bm!361937 () Bool)

(declare-fun call!361943 () Bool)

(declare-fun c!888037 () Bool)

(assert (=> bm!361937 (= call!361943 (nullable!4889 (ite c!888037 (regTwo!29579 (reg!14862 expr!117)) (regOne!29578 (reg!14862 expr!117)))))))

(declare-fun b!5160745 () Bool)

(declare-fun e!3215832 () Bool)

(declare-fun e!3215835 () Bool)

(assert (=> b!5160745 (= e!3215832 e!3215835)))

(declare-fun res!2194413 () Bool)

(assert (=> b!5160745 (= res!2194413 call!361943)))

(assert (=> b!5160745 (=> (not res!2194413) (not e!3215835))))

(declare-fun d!1665614 () Bool)

(declare-fun res!2194415 () Bool)

(declare-fun e!3215837 () Bool)

(assert (=> d!1665614 (=> res!2194415 e!3215837)))

(assert (=> d!1665614 (= res!2194415 ((_ is EmptyExpr!14533) (reg!14862 expr!117)))))

(assert (=> d!1665614 (= (nullableFct!1364 (reg!14862 expr!117)) e!3215837)))

(declare-fun b!5160746 () Bool)

(declare-fun e!3215836 () Bool)

(assert (=> b!5160746 (= e!3215836 call!361943)))

(declare-fun b!5160747 () Bool)

(declare-fun e!3215834 () Bool)

(declare-fun e!3215833 () Bool)

(assert (=> b!5160747 (= e!3215834 e!3215833)))

(declare-fun res!2194416 () Bool)

(assert (=> b!5160747 (=> res!2194416 e!3215833)))

(assert (=> b!5160747 (= res!2194416 ((_ is Star!14533) (reg!14862 expr!117)))))

(declare-fun bm!361938 () Bool)

(declare-fun call!361942 () Bool)

(assert (=> bm!361938 (= call!361942 (nullable!4889 (ite c!888037 (regOne!29579 (reg!14862 expr!117)) (regTwo!29578 (reg!14862 expr!117)))))))

(declare-fun b!5160748 () Bool)

(assert (=> b!5160748 (= e!3215837 e!3215834)))

(declare-fun res!2194412 () Bool)

(assert (=> b!5160748 (=> (not res!2194412) (not e!3215834))))

(assert (=> b!5160748 (= res!2194412 (and (not ((_ is EmptyLang!14533) (reg!14862 expr!117))) (not ((_ is ElementMatch!14533) (reg!14862 expr!117)))))))

(declare-fun b!5160749 () Bool)

(assert (=> b!5160749 (= e!3215835 call!361942)))

(declare-fun b!5160750 () Bool)

(assert (=> b!5160750 (= e!3215833 e!3215832)))

(assert (=> b!5160750 (= c!888037 ((_ is Union!14533) (reg!14862 expr!117)))))

(declare-fun b!5160751 () Bool)

(assert (=> b!5160751 (= e!3215832 e!3215836)))

(declare-fun res!2194414 () Bool)

(assert (=> b!5160751 (= res!2194414 call!361942)))

(assert (=> b!5160751 (=> res!2194414 e!3215836)))

(assert (= (and d!1665614 (not res!2194415)) b!5160748))

(assert (= (and b!5160748 res!2194412) b!5160747))

(assert (= (and b!5160747 (not res!2194416)) b!5160750))

(assert (= (and b!5160750 c!888037) b!5160751))

(assert (= (and b!5160750 (not c!888037)) b!5160745))

(assert (= (and b!5160751 (not res!2194414)) b!5160746))

(assert (= (and b!5160745 res!2194413) b!5160749))

(assert (= (or b!5160746 b!5160745) bm!361937))

(assert (= (or b!5160751 b!5160749) bm!361938))

(declare-fun m!6212262 () Bool)

(assert (=> bm!361937 m!6212262))

(declare-fun m!6212264 () Bool)

(assert (=> bm!361938 m!6212264))

(assert (=> d!1665518 d!1665614))

(declare-fun call!361945 () Bool)

(declare-fun bm!361939 () Bool)

(declare-fun c!888038 () Bool)

(assert (=> bm!361939 (= call!361945 (validRegex!6388 (ite c!888038 (regTwo!29579 (ite c!887990 (reg!14862 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (ite c!887989 (regOne!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regOne!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117)))))) (regTwo!29578 (ite c!887990 (reg!14862 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (ite c!887989 (regOne!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regOne!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117)))))))))))

(declare-fun b!5160752 () Bool)

(declare-fun e!3215840 () Bool)

(declare-fun e!3215843 () Bool)

(assert (=> b!5160752 (= e!3215840 e!3215843)))

(assert (=> b!5160752 (= c!888038 ((_ is Union!14533) (ite c!887990 (reg!14862 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (ite c!887989 (regOne!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regOne!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117)))))))))

(declare-fun b!5160753 () Bool)

(declare-fun e!3215844 () Bool)

(assert (=> b!5160753 (= e!3215844 e!3215840)))

(declare-fun c!888039 () Bool)

(assert (=> b!5160753 (= c!888039 ((_ is Star!14533) (ite c!887990 (reg!14862 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (ite c!887989 (regOne!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regOne!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117)))))))))

(declare-fun b!5160754 () Bool)

(declare-fun e!3215839 () Bool)

(assert (=> b!5160754 (= e!3215839 call!361945)))

(declare-fun b!5160755 () Bool)

(declare-fun e!3215838 () Bool)

(assert (=> b!5160755 (= e!3215838 e!3215839)))

(declare-fun res!2194418 () Bool)

(assert (=> b!5160755 (=> (not res!2194418) (not e!3215839))))

(declare-fun call!361946 () Bool)

(assert (=> b!5160755 (= res!2194418 call!361946)))

(declare-fun b!5160756 () Bool)

(declare-fun res!2194417 () Bool)

(assert (=> b!5160756 (=> res!2194417 e!3215838)))

(assert (=> b!5160756 (= res!2194417 (not ((_ is Concat!23378) (ite c!887990 (reg!14862 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (ite c!887989 (regOne!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regOne!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))))))))

(assert (=> b!5160756 (= e!3215843 e!3215838)))

(declare-fun b!5160757 () Bool)

(declare-fun e!3215841 () Bool)

(assert (=> b!5160757 (= e!3215840 e!3215841)))

(declare-fun res!2194420 () Bool)

(assert (=> b!5160757 (= res!2194420 (not (nullable!4889 (reg!14862 (ite c!887990 (reg!14862 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (ite c!887989 (regOne!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regOne!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117)))))))))))

(assert (=> b!5160757 (=> (not res!2194420) (not e!3215841))))

(declare-fun b!5160758 () Bool)

(declare-fun e!3215842 () Bool)

(assert (=> b!5160758 (= e!3215842 call!361945)))

(declare-fun d!1665616 () Bool)

(declare-fun res!2194419 () Bool)

(assert (=> d!1665616 (=> res!2194419 e!3215844)))

(assert (=> d!1665616 (= res!2194419 ((_ is ElementMatch!14533) (ite c!887990 (reg!14862 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (ite c!887989 (regOne!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regOne!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117)))))))))

(assert (=> d!1665616 (= (validRegex!6388 (ite c!887990 (reg!14862 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (ite c!887989 (regOne!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regOne!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117)))))) e!3215844)))

(declare-fun b!5160759 () Bool)

(declare-fun call!361944 () Bool)

(assert (=> b!5160759 (= e!3215841 call!361944)))

(declare-fun bm!361940 () Bool)

(assert (=> bm!361940 (= call!361944 (validRegex!6388 (ite c!888039 (reg!14862 (ite c!887990 (reg!14862 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (ite c!887989 (regOne!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regOne!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117)))))) (ite c!888038 (regOne!29579 (ite c!887990 (reg!14862 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (ite c!887989 (regOne!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regOne!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117)))))) (regOne!29578 (ite c!887990 (reg!14862 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (ite c!887989 (regOne!29579 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (regOne!29578 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))))))))))

(declare-fun bm!361941 () Bool)

(assert (=> bm!361941 (= call!361946 call!361944)))

(declare-fun b!5160760 () Bool)

(declare-fun res!2194421 () Bool)

(assert (=> b!5160760 (=> (not res!2194421) (not e!3215842))))

(assert (=> b!5160760 (= res!2194421 call!361946)))

(assert (=> b!5160760 (= e!3215843 e!3215842)))

(assert (= (and d!1665616 (not res!2194419)) b!5160753))

(assert (= (and b!5160753 c!888039) b!5160757))

(assert (= (and b!5160753 (not c!888039)) b!5160752))

(assert (= (and b!5160757 res!2194420) b!5160759))

(assert (= (and b!5160752 c!888038) b!5160760))

(assert (= (and b!5160752 (not c!888038)) b!5160756))

(assert (= (and b!5160760 res!2194421) b!5160758))

(assert (= (and b!5160756 (not res!2194417)) b!5160755))

(assert (= (and b!5160755 res!2194418) b!5160754))

(assert (= (or b!5160758 b!5160754) bm!361939))

(assert (= (or b!5160760 b!5160755) bm!361941))

(assert (= (or b!5160759 bm!361941) bm!361940))

(declare-fun m!6212266 () Bool)

(assert (=> bm!361939 m!6212266))

(declare-fun m!6212268 () Bool)

(assert (=> b!5160757 m!6212268))

(declare-fun m!6212270 () Bool)

(assert (=> bm!361940 m!6212270))

(assert (=> bm!361890 d!1665616))

(declare-fun d!1665618 () Bool)

(declare-fun res!2194422 () Bool)

(declare-fun e!3215845 () Bool)

(assert (=> d!1665618 (=> res!2194422 e!3215845)))

(assert (=> d!1665618 (= res!2194422 ((_ is Nil!59856) (t!373051 (exprs!4417 ctx!100))))))

(assert (=> d!1665618 (= (forall!14029 (t!373051 (exprs!4417 ctx!100)) lambda!257616) e!3215845)))

(declare-fun b!5160761 () Bool)

(declare-fun e!3215846 () Bool)

(assert (=> b!5160761 (= e!3215845 e!3215846)))

(declare-fun res!2194423 () Bool)

(assert (=> b!5160761 (=> (not res!2194423) (not e!3215846))))

(assert (=> b!5160761 (= res!2194423 (dynLambda!23818 lambda!257616 (h!66304 (t!373051 (exprs!4417 ctx!100)))))))

(declare-fun b!5160762 () Bool)

(assert (=> b!5160762 (= e!3215846 (forall!14029 (t!373051 (t!373051 (exprs!4417 ctx!100))) lambda!257616))))

(assert (= (and d!1665618 (not res!2194422)) b!5160761))

(assert (= (and b!5160761 res!2194423) b!5160762))

(declare-fun b_lambda!200529 () Bool)

(assert (=> (not b_lambda!200529) (not b!5160761)))

(declare-fun m!6212272 () Bool)

(assert (=> b!5160761 m!6212272))

(declare-fun m!6212274 () Bool)

(assert (=> b!5160762 m!6212274))

(assert (=> b!5160301 d!1665618))

(declare-fun bs!1202516 () Bool)

(declare-fun d!1665620 () Bool)

(assert (= bs!1202516 (and d!1665620 d!1665510)))

(declare-fun lambda!257664 () Int)

(assert (=> bs!1202516 (not (= lambda!257664 lambda!257616))))

(declare-fun bs!1202517 () Bool)

(assert (= bs!1202517 (and d!1665620 d!1665512)))

(assert (=> bs!1202517 (= lambda!257664 lambda!257619)))

(declare-fun bs!1202518 () Bool)

(assert (= bs!1202518 (and d!1665620 d!1665564)))

(assert (=> bs!1202518 (not (= lambda!257664 lambda!257644))))

(declare-fun b!5160775 () Bool)

(declare-fun e!3215853 () Option!14824)

(assert (=> b!5160775 (= e!3215853 None!14823)))

(declare-fun b!5160776 () Bool)

(declare-fun e!3215854 () Option!14824)

(declare-fun e!3215855 () Option!14824)

(assert (=> b!5160776 (= e!3215854 e!3215855)))

(declare-fun lt!2122280 () Option!14824)

(assert (=> b!5160776 (= lt!2122280 (getLanguageWitness!991 (h!66304 (exprs!4417 (getWitness!848 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257629)))))))

(declare-fun c!888049 () Bool)

(assert (=> b!5160776 (= c!888049 ((_ is Some!14823) lt!2122280))))

(declare-fun b!5160777 () Bool)

(declare-fun lt!2122278 () Option!14824)

(declare-fun ++!13075 (List!59984 List!59984) List!59984)

(assert (=> b!5160777 (= e!3215853 (Some!14823 (++!13075 (v!50852 lt!2122280) (v!50852 lt!2122278))))))

(declare-fun lt!2122279 () Option!14824)

(assert (=> d!1665620 (= (isEmpty!32085 lt!2122279) (exists!1878 (exprs!4417 (getWitness!848 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257629)) lambda!257664))))

(assert (=> d!1665620 (= lt!2122279 e!3215854)))

(declare-fun c!888048 () Bool)

(assert (=> d!1665620 (= c!888048 ((_ is Cons!59856) (exprs!4417 (getWitness!848 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257629))))))

(assert (=> d!1665620 (= (getLanguageWitness!990 (getWitness!848 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257629)) lt!2122279)))

(declare-fun b!5160778 () Bool)

(assert (=> b!5160778 (= e!3215854 (Some!14823 Nil!59860))))

(declare-fun b!5160779 () Bool)

(assert (=> b!5160779 (= e!3215855 None!14823)))

(declare-fun b!5160780 () Bool)

(declare-fun c!888047 () Bool)

(assert (=> b!5160780 (= c!888047 ((_ is Some!14823) lt!2122278))))

(assert (=> b!5160780 (= lt!2122278 (getLanguageWitness!990 (Context!7835 (t!373051 (exprs!4417 (getWitness!848 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257629))))))))

(assert (=> b!5160780 (= e!3215855 e!3215853)))

(assert (= (and d!1665620 c!888048) b!5160776))

(assert (= (and d!1665620 (not c!888048)) b!5160778))

(assert (= (and b!5160776 c!888049) b!5160780))

(assert (= (and b!5160776 (not c!888049)) b!5160779))

(assert (= (and b!5160780 c!888047) b!5160777))

(assert (= (and b!5160780 (not c!888047)) b!5160775))

(declare-fun m!6212276 () Bool)

(assert (=> b!5160776 m!6212276))

(declare-fun m!6212278 () Bool)

(assert (=> b!5160777 m!6212278))

(declare-fun m!6212280 () Bool)

(assert (=> d!1665620 m!6212280))

(declare-fun m!6212282 () Bool)

(assert (=> d!1665620 m!6212282))

(declare-fun m!6212284 () Bool)

(assert (=> b!5160780 m!6212284))

(assert (=> b!5160285 d!1665620))

(declare-fun d!1665622 () Bool)

(declare-fun e!3215858 () Bool)

(assert (=> d!1665622 e!3215858))

(declare-fun res!2194426 () Bool)

(assert (=> d!1665622 (=> (not res!2194426) (not e!3215858))))

(declare-fun lt!2122283 () Context!7834)

(assert (=> d!1665622 (= res!2194426 (dynLambda!23823 lambda!257629 lt!2122283))))

(declare-fun getWitness!850 (List!59983 Int) Context!7834)

(assert (=> d!1665622 (= lt!2122283 (getWitness!850 (toList!8413 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)) lambda!257629))))

(assert (=> d!1665622 (exists!1879 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257629)))

(assert (=> d!1665622 (= (getWitness!848 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257629) lt!2122283)))

(declare-fun b!5160783 () Bool)

(assert (=> b!5160783 (= e!3215858 (select (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lt!2122283))))

(assert (= (and d!1665622 res!2194426) b!5160783))

(declare-fun b_lambda!200531 () Bool)

(assert (=> (not b_lambda!200531) (not d!1665622)))

(declare-fun m!6212286 () Bool)

(assert (=> d!1665622 m!6212286))

(assert (=> d!1665622 m!6211946))

(assert (=> d!1665622 m!6211994))

(assert (=> d!1665622 m!6211994))

(declare-fun m!6212288 () Bool)

(assert (=> d!1665622 m!6212288))

(assert (=> d!1665622 m!6211946))

(assert (=> d!1665622 m!6212048))

(declare-fun m!6212290 () Bool)

(assert (=> b!5160783 m!6212290))

(assert (=> b!5160285 d!1665622))

(declare-fun b!5160784 () Bool)

(declare-fun e!3215863 () (InoxSet Context!7834))

(declare-fun call!361947 () (InoxSet Context!7834))

(declare-fun call!361949 () (InoxSet Context!7834))

(assert (=> b!5160784 (= e!3215863 ((_ map or) call!361947 call!361949))))

(declare-fun bm!361942 () Bool)

(declare-fun call!361951 () (InoxSet Context!7834))

(assert (=> bm!361942 (= call!361951 call!361947)))

(declare-fun b!5160785 () Bool)

(declare-fun e!3215861 () (InoxSet Context!7834))

(declare-fun call!361950 () (InoxSet Context!7834))

(assert (=> b!5160785 (= e!3215861 call!361950)))

(declare-fun c!888052 () Bool)

(declare-fun bm!361943 () Bool)

(declare-fun call!361948 () List!59980)

(assert (=> bm!361943 (= call!361949 (derivationStepZipperDown!180 (ite c!888052 (regTwo!29579 (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))) (regOne!29578 (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))))))) (ite c!888052 (ite (or c!887959 c!887961) (ite c!887948 ctx!100 (Context!7835 call!361844)) (Context!7835 call!361863)) (Context!7835 call!361948)) a!1296))))

(declare-fun bm!361944 () Bool)

(declare-fun c!888054 () Bool)

(declare-fun c!888050 () Bool)

(assert (=> bm!361944 (= call!361948 ($colon$colon!1247 (exprs!4417 (ite (or c!887959 c!887961) (ite c!887948 ctx!100 (Context!7835 call!361844)) (Context!7835 call!361863))) (ite (or c!888054 c!888050) (regTwo!29578 (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))) (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))))))))))

(declare-fun bm!361946 () Bool)

(declare-fun call!361952 () List!59980)

(assert (=> bm!361946 (= call!361952 call!361948)))

(declare-fun b!5160786 () Bool)

(declare-fun e!3215862 () (InoxSet Context!7834))

(assert (=> b!5160786 (= e!3215862 e!3215863)))

(assert (=> b!5160786 (= c!888052 ((_ is Union!14533) (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))))))

(declare-fun b!5160787 () Bool)

(declare-fun e!3215859 () Bool)

(assert (=> b!5160787 (= e!3215859 (nullable!4889 (regOne!29578 (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))))))))))

(declare-fun bm!361947 () Bool)

(assert (=> bm!361947 (= call!361950 call!361951)))

(declare-fun b!5160788 () Bool)

(declare-fun e!3215860 () (InoxSet Context!7834))

(assert (=> b!5160788 (= e!3215860 call!361950)))

(declare-fun b!5160789 () Bool)

(declare-fun e!3215864 () (InoxSet Context!7834))

(assert (=> b!5160789 (= e!3215864 e!3215860)))

(assert (=> b!5160789 (= c!888050 ((_ is Concat!23378) (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))))))

(declare-fun b!5160790 () Bool)

(declare-fun c!888051 () Bool)

(assert (=> b!5160790 (= c!888051 ((_ is Star!14533) (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))))))

(assert (=> b!5160790 (= e!3215860 e!3215861)))

(declare-fun b!5160791 () Bool)

(assert (=> b!5160791 (= e!3215864 ((_ map or) call!361949 call!361951))))

(declare-fun b!5160792 () Bool)

(assert (=> b!5160792 (= e!3215861 ((as const (Array Context!7834 Bool)) false))))

(declare-fun b!5160793 () Bool)

(assert (=> b!5160793 (= c!888054 e!3215859)))

(declare-fun res!2194427 () Bool)

(assert (=> b!5160793 (=> (not res!2194427) (not e!3215859))))

(assert (=> b!5160793 (= res!2194427 ((_ is Concat!23378) (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))))))

(assert (=> b!5160793 (= e!3215863 e!3215864)))

(declare-fun b!5160794 () Bool)

(assert (=> b!5160794 (= e!3215862 (store ((as const (Array Context!7834 Bool)) false) (ite (or c!887959 c!887961) (ite c!887948 ctx!100 (Context!7835 call!361844)) (Context!7835 call!361863)) true))))

(declare-fun d!1665624 () Bool)

(declare-fun c!888053 () Bool)

(assert (=> d!1665624 (= c!888053 (and ((_ is ElementMatch!14533) (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))) (= (c!887892 (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))) a!1296)))))

(assert (=> d!1665624 (= (derivationStepZipperDown!180 (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))))) (ite (or c!887959 c!887961) (ite c!887948 ctx!100 (Context!7835 call!361844)) (Context!7835 call!361863)) a!1296) e!3215862)))

(declare-fun bm!361945 () Bool)

(assert (=> bm!361945 (= call!361947 (derivationStepZipperDown!180 (ite c!888052 (regOne!29579 (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))) (ite c!888054 (regTwo!29578 (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))) (ite c!888050 (regOne!29578 (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))) (reg!14862 (ite c!887959 (regOne!29579 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887961 (regTwo!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (ite c!887957 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117))) (reg!14862 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))))))))) (ite (or c!888052 c!888054) (ite (or c!887959 c!887961) (ite c!887948 ctx!100 (Context!7835 call!361844)) (Context!7835 call!361863)) (Context!7835 call!361952)) a!1296))))

(assert (= (and d!1665624 c!888053) b!5160794))

(assert (= (and d!1665624 (not c!888053)) b!5160786))

(assert (= (and b!5160786 c!888052) b!5160784))

(assert (= (and b!5160786 (not c!888052)) b!5160793))

(assert (= (and b!5160793 res!2194427) b!5160787))

(assert (= (and b!5160793 c!888054) b!5160791))

(assert (= (and b!5160793 (not c!888054)) b!5160789))

(assert (= (and b!5160789 c!888050) b!5160788))

(assert (= (and b!5160789 (not c!888050)) b!5160790))

(assert (= (and b!5160790 c!888051) b!5160785))

(assert (= (and b!5160790 (not c!888051)) b!5160792))

(assert (= (or b!5160788 b!5160785) bm!361946))

(assert (= (or b!5160788 b!5160785) bm!361947))

(assert (= (or b!5160791 bm!361946) bm!361944))

(assert (= (or b!5160791 bm!361947) bm!361942))

(assert (= (or b!5160784 b!5160791) bm!361943))

(assert (= (or b!5160784 bm!361942) bm!361945))

(declare-fun m!6212292 () Bool)

(assert (=> b!5160787 m!6212292))

(declare-fun m!6212294 () Bool)

(assert (=> bm!361945 m!6212294))

(declare-fun m!6212296 () Bool)

(assert (=> bm!361944 m!6212296))

(declare-fun m!6212298 () Bool)

(assert (=> b!5160794 m!6212298))

(declare-fun m!6212300 () Bool)

(assert (=> bm!361943 m!6212300))

(assert (=> bm!361856 d!1665624))

(declare-fun d!1665626 () Bool)

(assert (=> d!1665626 (= (lostCause!1618 (ite c!887982 (regOne!29579 expr!117) (regOne!29578 expr!117))) (lostCauseFct!406 (ite c!887982 (regOne!29579 expr!117) (regOne!29578 expr!117))))))

(declare-fun bs!1202519 () Bool)

(assert (= bs!1202519 d!1665626))

(declare-fun m!6212302 () Bool)

(assert (=> bs!1202519 m!6212302))

(assert (=> bm!361875 d!1665626))

(declare-fun bs!1202520 () Bool)

(declare-fun d!1665628 () Bool)

(assert (= bs!1202520 (and d!1665628 d!1665524)))

(declare-fun lambda!257665 () Int)

(assert (=> bs!1202520 (not (= lambda!257665 lambda!257629))))

(declare-fun bs!1202521 () Bool)

(assert (= bs!1202521 (and d!1665628 d!1665546)))

(assert (=> bs!1202521 (= (= lambda!257622 (ite c!887935 lambda!257612 lambda!257613)) (= lambda!257665 lambda!257641))))

(declare-fun bs!1202522 () Bool)

(assert (= bs!1202522 (and d!1665628 b!5160172)))

(assert (=> bs!1202522 (not (= lambda!257665 lambda!257613))))

(declare-fun bs!1202523 () Bool)

(assert (= bs!1202523 (and d!1665628 b!5160171)))

(assert (=> bs!1202523 (not (= lambda!257665 lambda!257612))))

(declare-fun bs!1202524 () Bool)

(assert (= bs!1202524 (and d!1665628 d!1665588)))

(assert (=> bs!1202524 (= (= lambda!257622 lambda!257632) (= lambda!257665 lambda!257658))))

(declare-fun bs!1202525 () Bool)

(assert (= bs!1202525 (and d!1665628 d!1665488)))

(assert (=> bs!1202525 (not (= lambda!257665 lambda!257611))))

(declare-fun bs!1202526 () Bool)

(assert (= bs!1202526 (and d!1665628 d!1665516)))

(assert (=> bs!1202526 (= (= lambda!257622 lambda!257611) (= lambda!257665 lambda!257622))))

(declare-fun bs!1202527 () Bool)

(assert (= bs!1202527 (and d!1665628 d!1665528)))

(assert (=> bs!1202527 (= (= lambda!257622 lambda!257611) (= lambda!257665 lambda!257632))))

(declare-fun bs!1202528 () Bool)

(assert (= bs!1202528 (and d!1665628 d!1665590)))

(assert (=> bs!1202528 (= (= lambda!257622 lambda!257611) (= lambda!257665 lambda!257661))))

(assert (=> d!1665628 true))

(assert (=> d!1665628 (< (dynLambda!23817 order!27007 lambda!257622) (dynLambda!23817 order!27007 lambda!257665))))

(assert (=> d!1665628 (= (exists!1877 lt!2122230 lambda!257622) (not (forall!14030 lt!2122230 lambda!257665)))))

(declare-fun bs!1202529 () Bool)

(assert (= bs!1202529 d!1665628))

(declare-fun m!6212304 () Bool)

(assert (=> bs!1202529 m!6212304))

(assert (=> d!1665516 d!1665628))

(declare-fun bs!1202530 () Bool)

(declare-fun d!1665630 () Bool)

(assert (= bs!1202530 (and d!1665630 d!1665524)))

(declare-fun lambda!257668 () Int)

(assert (=> bs!1202530 (not (= lambda!257668 lambda!257629))))

(declare-fun bs!1202531 () Bool)

(assert (= bs!1202531 (and d!1665630 d!1665628)))

(assert (=> bs!1202531 (= (= lambda!257611 lambda!257622) (= lambda!257668 lambda!257665))))

(declare-fun bs!1202532 () Bool)

(assert (= bs!1202532 (and d!1665630 d!1665546)))

(assert (=> bs!1202532 (= (= lambda!257611 (ite c!887935 lambda!257612 lambda!257613)) (= lambda!257668 lambda!257641))))

(declare-fun bs!1202533 () Bool)

(assert (= bs!1202533 (and d!1665630 b!5160172)))

(assert (=> bs!1202533 (not (= lambda!257668 lambda!257613))))

(declare-fun bs!1202534 () Bool)

(assert (= bs!1202534 (and d!1665630 b!5160171)))

(assert (=> bs!1202534 (not (= lambda!257668 lambda!257612))))

(declare-fun bs!1202535 () Bool)

(assert (= bs!1202535 (and d!1665630 d!1665588)))

(assert (=> bs!1202535 (= (= lambda!257611 lambda!257632) (= lambda!257668 lambda!257658))))

(declare-fun bs!1202536 () Bool)

(assert (= bs!1202536 (and d!1665630 d!1665488)))

(assert (=> bs!1202536 (not (= lambda!257668 lambda!257611))))

(declare-fun bs!1202537 () Bool)

(assert (= bs!1202537 (and d!1665630 d!1665516)))

(assert (=> bs!1202537 (= lambda!257668 lambda!257622)))

(declare-fun bs!1202538 () Bool)

(assert (= bs!1202538 (and d!1665630 d!1665528)))

(assert (=> bs!1202538 (= lambda!257668 lambda!257632)))

(declare-fun bs!1202539 () Bool)

(assert (= bs!1202539 (and d!1665630 d!1665590)))

(assert (=> bs!1202539 (= lambda!257668 lambda!257661)))

(assert (=> d!1665630 true))

(assert (=> d!1665630 (< (dynLambda!23817 order!27007 lambda!257611) (dynLambda!23817 order!27007 lambda!257668))))

(assert (=> d!1665630 (not (exists!1877 lt!2122230 lambda!257668))))

(assert (=> d!1665630 true))

(declare-fun _$98!288 () Unit!151285)

(assert (=> d!1665630 (= (choose!38133 lt!2122230 lambda!257611) _$98!288)))

(declare-fun bs!1202540 () Bool)

(assert (= bs!1202540 d!1665630))

(declare-fun m!6212306 () Bool)

(assert (=> bs!1202540 m!6212306))

(assert (=> d!1665516 d!1665630))

(declare-fun d!1665632 () Bool)

(declare-fun res!2194428 () Bool)

(declare-fun e!3215867 () Bool)

(assert (=> d!1665632 (=> res!2194428 e!3215867)))

(assert (=> d!1665632 (= res!2194428 ((_ is Nil!59859) lt!2122230))))

(assert (=> d!1665632 (= (forall!14030 lt!2122230 lambda!257611) e!3215867)))

(declare-fun b!5160795 () Bool)

(declare-fun e!3215868 () Bool)

(assert (=> b!5160795 (= e!3215867 e!3215868)))

(declare-fun res!2194429 () Bool)

(assert (=> b!5160795 (=> (not res!2194429) (not e!3215868))))

(assert (=> b!5160795 (= res!2194429 (dynLambda!23823 lambda!257611 (h!66307 lt!2122230)))))

(declare-fun b!5160796 () Bool)

(assert (=> b!5160796 (= e!3215868 (forall!14030 (t!373054 lt!2122230) lambda!257611))))

(assert (= (and d!1665632 (not res!2194428)) b!5160795))

(assert (= (and b!5160795 res!2194429) b!5160796))

(declare-fun b_lambda!200533 () Bool)

(assert (=> (not b_lambda!200533) (not b!5160795)))

(declare-fun m!6212308 () Bool)

(assert (=> b!5160795 m!6212308))

(declare-fun m!6212310 () Bool)

(assert (=> b!5160796 m!6212310))

(assert (=> d!1665516 d!1665632))

(declare-fun d!1665634 () Bool)

(assert (=> d!1665634 (= (isEmpty!32085 (getLanguageWitness!991 expr!117)) (not ((_ is Some!14823) (getLanguageWitness!991 expr!117))))))

(assert (=> d!1665538 d!1665634))

(declare-fun b!5160829 () Bool)

(declare-fun e!3215890 () Option!14824)

(assert (=> b!5160829 (= e!3215890 None!14823)))

(declare-fun b!5160830 () Bool)

(declare-fun e!3215887 () Option!14824)

(declare-fun lt!2122291 () Option!14824)

(declare-fun lt!2122292 () Option!14824)

(assert (=> b!5160830 (= e!3215887 (Some!14823 (++!13075 (v!50852 lt!2122291) (v!50852 lt!2122292))))))

(declare-fun b!5160831 () Bool)

(declare-fun e!3215891 () Option!14824)

(declare-fun lt!2122290 () Option!14824)

(assert (=> b!5160831 (= e!3215891 lt!2122290)))

(declare-fun d!1665636 () Bool)

(declare-fun c!888072 () Bool)

(assert (=> d!1665636 (= c!888072 ((_ is EmptyExpr!14533) expr!117))))

(declare-fun e!3215885 () Option!14824)

(assert (=> d!1665636 (= (getLanguageWitness!991 expr!117) e!3215885)))

(declare-fun b!5160832 () Bool)

(assert (=> b!5160832 (= e!3215885 e!3215890)))

(declare-fun c!888076 () Bool)

(assert (=> b!5160832 (= c!888076 ((_ is EmptyLang!14533) expr!117))))

(declare-fun b!5160833 () Bool)

(assert (=> b!5160833 (= e!3215887 None!14823)))

(declare-fun bm!361952 () Bool)

(declare-fun call!361957 () Option!14824)

(declare-fun c!888071 () Bool)

(assert (=> bm!361952 (= call!361957 (getLanguageWitness!991 (ite c!888071 (regTwo!29579 expr!117) (regOne!29578 expr!117))))))

(declare-fun b!5160834 () Bool)

(declare-fun e!3215888 () Option!14824)

(assert (=> b!5160834 (= e!3215888 (Some!14823 (Cons!59860 (c!887892 expr!117) Nil!59860)))))

(declare-fun b!5160835 () Bool)

(declare-fun e!3215886 () Option!14824)

(assert (=> b!5160835 (= e!3215886 None!14823)))

(declare-fun bm!361953 () Bool)

(declare-fun call!361958 () Option!14824)

(assert (=> bm!361953 (= call!361958 (getLanguageWitness!991 (ite c!888071 (regOne!29579 expr!117) (regTwo!29578 expr!117))))))

(declare-fun b!5160836 () Bool)

(assert (=> b!5160836 (= e!3215885 (Some!14823 Nil!59860))))

(declare-fun b!5160837 () Bool)

(assert (=> b!5160837 (= c!888071 ((_ is Union!14533) expr!117))))

(declare-fun e!3215892 () Option!14824)

(declare-fun e!3215889 () Option!14824)

(assert (=> b!5160837 (= e!3215892 e!3215889)))

(declare-fun b!5160838 () Bool)

(assert (=> b!5160838 (= e!3215891 call!361957)))

(declare-fun b!5160839 () Bool)

(declare-fun c!888078 () Bool)

(assert (=> b!5160839 (= c!888078 ((_ is ElementMatch!14533) expr!117))))

(assert (=> b!5160839 (= e!3215890 e!3215888)))

(declare-fun b!5160840 () Bool)

(assert (=> b!5160840 (= e!3215889 e!3215886)))

(assert (=> b!5160840 (= lt!2122291 call!361957)))

(declare-fun c!888075 () Bool)

(assert (=> b!5160840 (= c!888075 ((_ is Some!14823) lt!2122291))))

(declare-fun b!5160841 () Bool)

(assert (=> b!5160841 (= e!3215888 e!3215892)))

(declare-fun c!888074 () Bool)

(assert (=> b!5160841 (= c!888074 ((_ is Star!14533) expr!117))))

(declare-fun b!5160842 () Bool)

(assert (=> b!5160842 (= e!3215889 e!3215891)))

(assert (=> b!5160842 (= lt!2122290 call!361958)))

(declare-fun c!888073 () Bool)

(assert (=> b!5160842 (= c!888073 ((_ is Some!14823) lt!2122290))))

(declare-fun b!5160843 () Bool)

(declare-fun c!888077 () Bool)

(assert (=> b!5160843 (= c!888077 ((_ is Some!14823) lt!2122292))))

(assert (=> b!5160843 (= lt!2122292 call!361958)))

(assert (=> b!5160843 (= e!3215886 e!3215887)))

(declare-fun b!5160844 () Bool)

(assert (=> b!5160844 (= e!3215892 (Some!14823 Nil!59860))))

(assert (= (and d!1665636 c!888072) b!5160836))

(assert (= (and d!1665636 (not c!888072)) b!5160832))

(assert (= (and b!5160832 c!888076) b!5160829))

(assert (= (and b!5160832 (not c!888076)) b!5160839))

(assert (= (and b!5160839 c!888078) b!5160834))

(assert (= (and b!5160839 (not c!888078)) b!5160841))

(assert (= (and b!5160841 c!888074) b!5160844))

(assert (= (and b!5160841 (not c!888074)) b!5160837))

(assert (= (and b!5160837 c!888071) b!5160842))

(assert (= (and b!5160837 (not c!888071)) b!5160840))

(assert (= (and b!5160842 c!888073) b!5160831))

(assert (= (and b!5160842 (not c!888073)) b!5160838))

(assert (= (and b!5160840 c!888075) b!5160843))

(assert (= (and b!5160840 (not c!888075)) b!5160835))

(assert (= (and b!5160843 c!888077) b!5160830))

(assert (= (and b!5160843 (not c!888077)) b!5160833))

(assert (= (or b!5160838 b!5160840) bm!361952))

(assert (= (or b!5160842 b!5160843) bm!361953))

(declare-fun m!6212312 () Bool)

(assert (=> b!5160830 m!6212312))

(declare-fun m!6212314 () Bool)

(assert (=> bm!361952 m!6212314))

(declare-fun m!6212316 () Bool)

(assert (=> bm!361953 m!6212316))

(assert (=> d!1665538 d!1665636))

(declare-fun d!1665638 () Bool)

(assert (=> d!1665638 (= (nullable!4889 (ite c!887987 (regTwo!29579 (regOne!29578 expr!117)) (regOne!29578 (regOne!29578 expr!117)))) (nullableFct!1364 (ite c!887987 (regTwo!29579 (regOne!29578 expr!117)) (regOne!29578 (regOne!29578 expr!117)))))))

(declare-fun bs!1202541 () Bool)

(assert (= bs!1202541 d!1665638))

(declare-fun m!6212318 () Bool)

(assert (=> bs!1202541 m!6212318))

(assert (=> bm!361885 d!1665638))

(declare-fun d!1665640 () Bool)

(assert (=> d!1665640 (= (nullable!4889 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))) (nullableFct!1364 (regOne!29578 (ite c!887948 (regTwo!29579 expr!117) (regOne!29578 expr!117)))))))

(declare-fun bs!1202542 () Bool)

(assert (= bs!1202542 d!1665640))

(declare-fun m!6212320 () Bool)

(assert (=> bs!1202542 m!6212320))

(assert (=> b!5160271 d!1665640))

(declare-fun d!1665642 () Bool)

(assert (=> d!1665642 (= (lostCause!1618 (ite c!887982 (regTwo!29579 expr!117) (regTwo!29578 expr!117))) (lostCauseFct!406 (ite c!887982 (regTwo!29579 expr!117) (regTwo!29578 expr!117))))))

(declare-fun bs!1202543 () Bool)

(assert (= bs!1202543 d!1665642))

(declare-fun m!6212322 () Bool)

(assert (=> bs!1202543 m!6212322))

(assert (=> bm!361876 d!1665642))

(declare-fun bm!361954 () Bool)

(declare-fun c!888079 () Bool)

(declare-fun call!361960 () Bool)

(assert (=> bm!361954 (= call!361960 (validRegex!6388 (ite c!888079 (regTwo!29579 (ite c!887972 (reg!14862 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (ite c!887971 (regOne!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regOne!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117))))))) (regTwo!29578 (ite c!887972 (reg!14862 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (ite c!887971 (regOne!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regOne!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117))))))))))))

(declare-fun b!5160845 () Bool)

(declare-fun e!3215895 () Bool)

(declare-fun e!3215898 () Bool)

(assert (=> b!5160845 (= e!3215895 e!3215898)))

(assert (=> b!5160845 (= c!888079 ((_ is Union!14533) (ite c!887972 (reg!14862 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (ite c!887971 (regOne!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regOne!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117))))))))))

(declare-fun b!5160846 () Bool)

(declare-fun e!3215899 () Bool)

(assert (=> b!5160846 (= e!3215899 e!3215895)))

(declare-fun c!888080 () Bool)

(assert (=> b!5160846 (= c!888080 ((_ is Star!14533) (ite c!887972 (reg!14862 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (ite c!887971 (regOne!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regOne!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117))))))))))

(declare-fun b!5160847 () Bool)

(declare-fun e!3215894 () Bool)

(assert (=> b!5160847 (= e!3215894 call!361960)))

(declare-fun b!5160848 () Bool)

(declare-fun e!3215893 () Bool)

(assert (=> b!5160848 (= e!3215893 e!3215894)))

(declare-fun res!2194431 () Bool)

(assert (=> b!5160848 (=> (not res!2194431) (not e!3215894))))

(declare-fun call!361961 () Bool)

(assert (=> b!5160848 (= res!2194431 call!361961)))

(declare-fun b!5160849 () Bool)

(declare-fun res!2194430 () Bool)

(assert (=> b!5160849 (=> res!2194430 e!3215893)))

(assert (=> b!5160849 (= res!2194430 (not ((_ is Concat!23378) (ite c!887972 (reg!14862 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (ite c!887971 (regOne!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regOne!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))))))))

(assert (=> b!5160849 (= e!3215898 e!3215893)))

(declare-fun b!5160850 () Bool)

(declare-fun e!3215896 () Bool)

(assert (=> b!5160850 (= e!3215895 e!3215896)))

(declare-fun res!2194433 () Bool)

(assert (=> b!5160850 (= res!2194433 (not (nullable!4889 (reg!14862 (ite c!887972 (reg!14862 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (ite c!887971 (regOne!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regOne!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117))))))))))))

(assert (=> b!5160850 (=> (not res!2194433) (not e!3215896))))

(declare-fun b!5160851 () Bool)

(declare-fun e!3215897 () Bool)

(assert (=> b!5160851 (= e!3215897 call!361960)))

(declare-fun d!1665644 () Bool)

(declare-fun res!2194432 () Bool)

(assert (=> d!1665644 (=> res!2194432 e!3215899)))

(assert (=> d!1665644 (= res!2194432 ((_ is ElementMatch!14533) (ite c!887972 (reg!14862 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (ite c!887971 (regOne!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regOne!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117))))))))))

(assert (=> d!1665644 (= (validRegex!6388 (ite c!887972 (reg!14862 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (ite c!887971 (regOne!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regOne!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117))))))) e!3215899)))

(declare-fun b!5160852 () Bool)

(declare-fun call!361959 () Bool)

(assert (=> b!5160852 (= e!3215896 call!361959)))

(declare-fun bm!361955 () Bool)

(assert (=> bm!361955 (= call!361959 (validRegex!6388 (ite c!888080 (reg!14862 (ite c!887972 (reg!14862 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (ite c!887971 (regOne!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regOne!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117))))))) (ite c!888079 (regOne!29579 (ite c!887972 (reg!14862 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (ite c!887971 (regOne!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regOne!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117))))))) (regOne!29578 (ite c!887972 (reg!14862 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (ite c!887971 (regOne!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regOne!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))))))))))

(declare-fun bm!361956 () Bool)

(assert (=> bm!361956 (= call!361961 call!361959)))

(declare-fun b!5160853 () Bool)

(declare-fun res!2194434 () Bool)

(assert (=> b!5160853 (=> (not res!2194434) (not e!3215897))))

(assert (=> b!5160853 (= res!2194434 call!361961)))

(assert (=> b!5160853 (= e!3215898 e!3215897)))

(assert (= (and d!1665644 (not res!2194432)) b!5160846))

(assert (= (and b!5160846 c!888080) b!5160850))

(assert (= (and b!5160846 (not c!888080)) b!5160845))

(assert (= (and b!5160850 res!2194433) b!5160852))

(assert (= (and b!5160845 c!888079) b!5160853))

(assert (= (and b!5160845 (not c!888079)) b!5160849))

(assert (= (and b!5160853 res!2194434) b!5160851))

(assert (= (and b!5160849 (not res!2194430)) b!5160848))

(assert (= (and b!5160848 res!2194431) b!5160847))

(assert (= (or b!5160851 b!5160847) bm!361954))

(assert (= (or b!5160853 b!5160848) bm!361956))

(assert (= (or b!5160852 bm!361956) bm!361955))

(declare-fun m!6212324 () Bool)

(assert (=> bm!361954 m!6212324))

(declare-fun m!6212326 () Bool)

(assert (=> b!5160850 m!6212326))

(declare-fun m!6212328 () Bool)

(assert (=> bm!361955 m!6212328))

(assert (=> bm!361860 d!1665644))

(declare-fun call!361963 () Bool)

(declare-fun bm!361957 () Bool)

(declare-fun c!888081 () Bool)

(assert (=> bm!361957 (= call!361963 (validRegex!6388 (ite c!888081 (regTwo!29579 (ite c!887971 (regTwo!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regTwo!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))) (regTwo!29578 (ite c!887971 (regTwo!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regTwo!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))))))))

(declare-fun b!5160854 () Bool)

(declare-fun e!3215902 () Bool)

(declare-fun e!3215905 () Bool)

(assert (=> b!5160854 (= e!3215902 e!3215905)))

(assert (=> b!5160854 (= c!888081 ((_ is Union!14533) (ite c!887971 (regTwo!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regTwo!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))))))

(declare-fun b!5160855 () Bool)

(declare-fun e!3215906 () Bool)

(assert (=> b!5160855 (= e!3215906 e!3215902)))

(declare-fun c!888082 () Bool)

(assert (=> b!5160855 (= c!888082 ((_ is Star!14533) (ite c!887971 (regTwo!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regTwo!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))))))

(declare-fun b!5160856 () Bool)

(declare-fun e!3215901 () Bool)

(assert (=> b!5160856 (= e!3215901 call!361963)))

(declare-fun b!5160857 () Bool)

(declare-fun e!3215900 () Bool)

(assert (=> b!5160857 (= e!3215900 e!3215901)))

(declare-fun res!2194436 () Bool)

(assert (=> b!5160857 (=> (not res!2194436) (not e!3215901))))

(declare-fun call!361964 () Bool)

(assert (=> b!5160857 (= res!2194436 call!361964)))

(declare-fun b!5160858 () Bool)

(declare-fun res!2194435 () Bool)

(assert (=> b!5160858 (=> res!2194435 e!3215900)))

(assert (=> b!5160858 (= res!2194435 (not ((_ is Concat!23378) (ite c!887971 (regTwo!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regTwo!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117))))))))))

(assert (=> b!5160858 (= e!3215905 e!3215900)))

(declare-fun b!5160859 () Bool)

(declare-fun e!3215903 () Bool)

(assert (=> b!5160859 (= e!3215902 e!3215903)))

(declare-fun res!2194438 () Bool)

(assert (=> b!5160859 (= res!2194438 (not (nullable!4889 (reg!14862 (ite c!887971 (regTwo!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regTwo!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))))))))

(assert (=> b!5160859 (=> (not res!2194438) (not e!3215903))))

(declare-fun b!5160860 () Bool)

(declare-fun e!3215904 () Bool)

(assert (=> b!5160860 (= e!3215904 call!361963)))

(declare-fun d!1665646 () Bool)

(declare-fun res!2194437 () Bool)

(assert (=> d!1665646 (=> res!2194437 e!3215906)))

(assert (=> d!1665646 (= res!2194437 ((_ is ElementMatch!14533) (ite c!887971 (regTwo!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regTwo!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))))))

(assert (=> d!1665646 (= (validRegex!6388 (ite c!887971 (regTwo!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regTwo!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))) e!3215906)))

(declare-fun b!5160861 () Bool)

(declare-fun call!361962 () Bool)

(assert (=> b!5160861 (= e!3215903 call!361962)))

(declare-fun bm!361958 () Bool)

(assert (=> bm!361958 (= call!361962 (validRegex!6388 (ite c!888082 (reg!14862 (ite c!887971 (regTwo!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regTwo!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))) (ite c!888081 (regOne!29579 (ite c!887971 (regTwo!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regTwo!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))))) (regOne!29578 (ite c!887971 (regTwo!29579 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117)))) (regTwo!29578 (ite c!887956 (reg!14862 expr!117) (ite c!887955 (regOne!29579 expr!117) (regOne!29578 expr!117))))))))))))

(declare-fun bm!361959 () Bool)

(assert (=> bm!361959 (= call!361964 call!361962)))

(declare-fun b!5160862 () Bool)

(declare-fun res!2194439 () Bool)

(assert (=> b!5160862 (=> (not res!2194439) (not e!3215904))))

(assert (=> b!5160862 (= res!2194439 call!361964)))

(assert (=> b!5160862 (= e!3215905 e!3215904)))

(assert (= (and d!1665646 (not res!2194437)) b!5160855))

(assert (= (and b!5160855 c!888082) b!5160859))

(assert (= (and b!5160855 (not c!888082)) b!5160854))

(assert (= (and b!5160859 res!2194438) b!5160861))

(assert (= (and b!5160854 c!888081) b!5160862))

(assert (= (and b!5160854 (not c!888081)) b!5160858))

(assert (= (and b!5160862 res!2194439) b!5160860))

(assert (= (and b!5160858 (not res!2194435)) b!5160857))

(assert (= (and b!5160857 res!2194436) b!5160856))

(assert (= (or b!5160860 b!5160856) bm!361957))

(assert (= (or b!5160862 b!5160857) bm!361959))

(assert (= (or b!5160861 bm!361959) bm!361958))

(declare-fun m!6212330 () Bool)

(assert (=> bm!361957 m!6212330))

(declare-fun m!6212332 () Bool)

(assert (=> b!5160859 m!6212332))

(declare-fun m!6212334 () Bool)

(assert (=> bm!361958 m!6212334))

(assert (=> bm!361859 d!1665646))

(declare-fun d!1665648 () Bool)

(assert (=> d!1665648 (= (isDefined!11541 lt!2122241) (not (isEmpty!32085 lt!2122241)))))

(declare-fun bs!1202544 () Bool)

(assert (= bs!1202544 d!1665648))

(declare-fun m!6212336 () Bool)

(assert (=> bs!1202544 m!6212336))

(assert (=> d!1665524 d!1665648))

(declare-fun lt!2122295 () Bool)

(declare-fun d!1665650 () Bool)

(assert (=> d!1665650 (= lt!2122295 (exists!1877 (toList!8413 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)) lambda!257629))))

(declare-fun choose!38141 ((InoxSet Context!7834) Int) Bool)

(assert (=> d!1665650 (= lt!2122295 (choose!38141 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257629))))

(assert (=> d!1665650 (= (exists!1879 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257629) lt!2122295)))

(declare-fun bs!1202545 () Bool)

(assert (= bs!1202545 d!1665650))

(assert (=> bs!1202545 m!6211946))

(assert (=> bs!1202545 m!6211994))

(assert (=> bs!1202545 m!6211994))

(declare-fun m!6212338 () Bool)

(assert (=> bs!1202545 m!6212338))

(assert (=> bs!1202545 m!6211946))

(declare-fun m!6212340 () Bool)

(assert (=> bs!1202545 m!6212340))

(assert (=> d!1665524 d!1665650))

(declare-fun d!1665652 () Bool)

(assert (=> d!1665652 (= (nullable!4889 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))) (nullableFct!1364 (regOne!29578 (ite c!887948 (regOne!29579 expr!117) (ite c!887950 (regTwo!29578 expr!117) (ite c!887946 (regOne!29578 expr!117) (reg!14862 expr!117)))))))))

(declare-fun bs!1202546 () Bool)

(assert (= bs!1202546 d!1665652))

(declare-fun m!6212342 () Bool)

(assert (=> bs!1202546 m!6212342))

(assert (=> b!5160305 d!1665652))

(declare-fun d!1665654 () Bool)

(declare-fun res!2194440 () Bool)

(declare-fun e!3215907 () Bool)

(assert (=> d!1665654 (=> res!2194440 e!3215907)))

(assert (=> d!1665654 (= res!2194440 ((_ is Nil!59859) (toList!8413 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296))))))

(assert (=> d!1665654 (= (forall!14030 (toList!8413 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)) lambda!257611) e!3215907)))

(declare-fun b!5160863 () Bool)

(declare-fun e!3215908 () Bool)

(assert (=> b!5160863 (= e!3215907 e!3215908)))

(declare-fun res!2194441 () Bool)

(assert (=> b!5160863 (=> (not res!2194441) (not e!3215908))))

(assert (=> b!5160863 (= res!2194441 (dynLambda!23823 lambda!257611 (h!66307 (toList!8413 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)))))))

(declare-fun b!5160864 () Bool)

(assert (=> b!5160864 (= e!3215908 (forall!14030 (t!373054 (toList!8413 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296))) lambda!257611))))

(assert (= (and d!1665654 (not res!2194440)) b!5160863))

(assert (= (and b!5160863 res!2194441) b!5160864))

(declare-fun b_lambda!200535 () Bool)

(assert (=> (not b_lambda!200535) (not b!5160863)))

(declare-fun m!6212344 () Bool)

(assert (=> b!5160863 m!6212344))

(declare-fun m!6212346 () Bool)

(assert (=> b!5160864 m!6212346))

(assert (=> d!1665526 d!1665654))

(assert (=> d!1665526 d!1665554))

(declare-fun d!1665656 () Bool)

(declare-fun res!2194444 () Bool)

(assert (=> d!1665656 (= res!2194444 (forall!14030 (toList!8413 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)) lambda!257611))))

(assert (=> d!1665656 true))

(assert (=> d!1665656 (= (choose!38134 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296) lambda!257611) res!2194444)))

(declare-fun bs!1202547 () Bool)

(assert (= bs!1202547 d!1665656))

(assert (=> bs!1202547 m!6211946))

(assert (=> bs!1202547 m!6211994))

(assert (=> bs!1202547 m!6211994))

(assert (=> bs!1202547 m!6212054))

(assert (=> d!1665526 d!1665656))

(declare-fun d!1665658 () Bool)

(declare-fun res!2194449 () Bool)

(declare-fun e!3215913 () Bool)

(assert (=> d!1665658 (=> res!2194449 e!3215913)))

(assert (=> d!1665658 (= res!2194449 ((_ is Nil!59859) lt!2122256))))

(assert (=> d!1665658 (= (noDuplicate!1117 lt!2122256) e!3215913)))

(declare-fun b!5160869 () Bool)

(declare-fun e!3215914 () Bool)

(assert (=> b!5160869 (= e!3215913 e!3215914)))

(declare-fun res!2194450 () Bool)

(assert (=> b!5160869 (=> (not res!2194450) (not e!3215914))))

(declare-fun contains!19651 (List!59983 Context!7834) Bool)

(assert (=> b!5160869 (= res!2194450 (not (contains!19651 (t!373054 lt!2122256) (h!66307 lt!2122256))))))

(declare-fun b!5160870 () Bool)

(assert (=> b!5160870 (= e!3215914 (noDuplicate!1117 (t!373054 lt!2122256)))))

(assert (= (and d!1665658 (not res!2194449)) b!5160869))

(assert (= (and b!5160869 res!2194450) b!5160870))

(declare-fun m!6212348 () Bool)

(assert (=> b!5160869 m!6212348))

(declare-fun m!6212350 () Bool)

(assert (=> b!5160870 m!6212350))

(assert (=> d!1665554 d!1665658))

(declare-fun d!1665660 () Bool)

(declare-fun e!3215921 () Bool)

(assert (=> d!1665660 e!3215921))

(declare-fun res!2194456 () Bool)

(assert (=> d!1665660 (=> (not res!2194456) (not e!3215921))))

(declare-fun res!2194455 () List!59983)

(assert (=> d!1665660 (= res!2194456 (noDuplicate!1117 res!2194455))))

(declare-fun e!3215923 () Bool)

(assert (=> d!1665660 e!3215923))

(assert (=> d!1665660 (= (choose!38137 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)) res!2194455)))

(declare-fun b!5160878 () Bool)

(declare-fun e!3215922 () Bool)

(declare-fun tp!1446401 () Bool)

(assert (=> b!5160878 (= e!3215922 tp!1446401)))

(declare-fun b!5160877 () Bool)

(declare-fun tp!1446400 () Bool)

(assert (=> b!5160877 (= e!3215923 (and (inv!79513 (h!66307 res!2194455)) e!3215922 tp!1446400))))

(declare-fun b!5160879 () Bool)

(assert (=> b!5160879 (= e!3215921 (= (content!10594 res!2194455) (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)))))

(assert (= b!5160877 b!5160878))

(assert (= (and d!1665660 ((_ is Cons!59859) res!2194455)) b!5160877))

(assert (= (and d!1665660 res!2194456) b!5160879))

(declare-fun m!6212352 () Bool)

(assert (=> d!1665660 m!6212352))

(declare-fun m!6212354 () Bool)

(assert (=> b!5160877 m!6212354))

(declare-fun m!6212356 () Bool)

(assert (=> b!5160879 m!6212356))

(assert (=> d!1665554 d!1665660))

(declare-fun d!1665662 () Bool)

(assert (=> d!1665662 (= (nullable!4889 (reg!14862 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117)))) (nullableFct!1364 (reg!14862 (ite c!887955 (regTwo!29579 expr!117) (regTwo!29578 expr!117)))))))

(declare-fun bs!1202548 () Bool)

(assert (= bs!1202548 d!1665662))

(declare-fun m!6212358 () Bool)

(assert (=> bs!1202548 m!6212358))

(assert (=> b!5160401 d!1665662))

(declare-fun d!1665664 () Bool)

(declare-fun res!2194457 () Bool)

(declare-fun e!3215924 () Bool)

(assert (=> d!1665664 (=> res!2194457 e!3215924)))

(assert (=> d!1665664 (= res!2194457 ((_ is Nil!59859) (ite c!887935 lt!2122235 lt!2122230)))))

(assert (=> d!1665664 (= (forall!14030 (ite c!887935 lt!2122235 lt!2122230) lambda!257641) e!3215924)))

(declare-fun b!5160880 () Bool)

(declare-fun e!3215925 () Bool)

(assert (=> b!5160880 (= e!3215924 e!3215925)))

(declare-fun res!2194458 () Bool)

(assert (=> b!5160880 (=> (not res!2194458) (not e!3215925))))

(assert (=> b!5160880 (= res!2194458 (dynLambda!23823 lambda!257641 (h!66307 (ite c!887935 lt!2122235 lt!2122230))))))

(declare-fun b!5160881 () Bool)

(assert (=> b!5160881 (= e!3215925 (forall!14030 (t!373054 (ite c!887935 lt!2122235 lt!2122230)) lambda!257641))))

(assert (= (and d!1665664 (not res!2194457)) b!5160880))

(assert (= (and b!5160880 res!2194458) b!5160881))

(declare-fun b_lambda!200537 () Bool)

(assert (=> (not b_lambda!200537) (not b!5160880)))

(declare-fun m!6212360 () Bool)

(assert (=> b!5160880 m!6212360))

(declare-fun m!6212362 () Bool)

(assert (=> b!5160881 m!6212362))

(assert (=> d!1665546 d!1665664))

(declare-fun b!5160884 () Bool)

(declare-fun e!3215926 () Bool)

(declare-fun tp!1446405 () Bool)

(assert (=> b!5160884 (= e!3215926 tp!1446405)))

(declare-fun b!5160885 () Bool)

(declare-fun tp!1446406 () Bool)

(declare-fun tp!1446402 () Bool)

(assert (=> b!5160885 (= e!3215926 (and tp!1446406 tp!1446402))))

(assert (=> b!5160502 (= tp!1446244 e!3215926)))

(declare-fun b!5160882 () Bool)

(assert (=> b!5160882 (= e!3215926 tp_is_empty!38215)))

(declare-fun b!5160883 () Bool)

(declare-fun tp!1446404 () Bool)

(declare-fun tp!1446403 () Bool)

(assert (=> b!5160883 (= e!3215926 (and tp!1446404 tp!1446403))))

(assert (= (and b!5160502 ((_ is ElementMatch!14533) (regOne!29578 (reg!14862 (regTwo!29578 expr!117))))) b!5160882))

(assert (= (and b!5160502 ((_ is Concat!23378) (regOne!29578 (reg!14862 (regTwo!29578 expr!117))))) b!5160883))

(assert (= (and b!5160502 ((_ is Star!14533) (regOne!29578 (reg!14862 (regTwo!29578 expr!117))))) b!5160884))

(assert (= (and b!5160502 ((_ is Union!14533) (regOne!29578 (reg!14862 (regTwo!29578 expr!117))))) b!5160885))

(declare-fun b!5160888 () Bool)

(declare-fun e!3215927 () Bool)

(declare-fun tp!1446410 () Bool)

(assert (=> b!5160888 (= e!3215927 tp!1446410)))

(declare-fun b!5160889 () Bool)

(declare-fun tp!1446411 () Bool)

(declare-fun tp!1446407 () Bool)

(assert (=> b!5160889 (= e!3215927 (and tp!1446411 tp!1446407))))

(assert (=> b!5160502 (= tp!1446243 e!3215927)))

(declare-fun b!5160886 () Bool)

(assert (=> b!5160886 (= e!3215927 tp_is_empty!38215)))

(declare-fun b!5160887 () Bool)

(declare-fun tp!1446409 () Bool)

(declare-fun tp!1446408 () Bool)

(assert (=> b!5160887 (= e!3215927 (and tp!1446409 tp!1446408))))

(assert (= (and b!5160502 ((_ is ElementMatch!14533) (regTwo!29578 (reg!14862 (regTwo!29578 expr!117))))) b!5160886))

(assert (= (and b!5160502 ((_ is Concat!23378) (regTwo!29578 (reg!14862 (regTwo!29578 expr!117))))) b!5160887))

(assert (= (and b!5160502 ((_ is Star!14533) (regTwo!29578 (reg!14862 (regTwo!29578 expr!117))))) b!5160888))

(assert (= (and b!5160502 ((_ is Union!14533) (regTwo!29578 (reg!14862 (regTwo!29578 expr!117))))) b!5160889))

(declare-fun b!5160892 () Bool)

(declare-fun e!3215928 () Bool)

(declare-fun tp!1446415 () Bool)

(assert (=> b!5160892 (= e!3215928 tp!1446415)))

(declare-fun b!5160893 () Bool)

(declare-fun tp!1446416 () Bool)

(declare-fun tp!1446412 () Bool)

(assert (=> b!5160893 (= e!3215928 (and tp!1446416 tp!1446412))))

(assert (=> b!5160450 (= tp!1446181 e!3215928)))

(declare-fun b!5160890 () Bool)

(assert (=> b!5160890 (= e!3215928 tp_is_empty!38215)))

(declare-fun b!5160891 () Bool)

(declare-fun tp!1446414 () Bool)

(declare-fun tp!1446413 () Bool)

(assert (=> b!5160891 (= e!3215928 (and tp!1446414 tp!1446413))))

(assert (= (and b!5160450 ((_ is ElementMatch!14533) (regOne!29579 (regTwo!29579 (regTwo!29578 expr!117))))) b!5160890))

(assert (= (and b!5160450 ((_ is Concat!23378) (regOne!29579 (regTwo!29579 (regTwo!29578 expr!117))))) b!5160891))

(assert (= (and b!5160450 ((_ is Star!14533) (regOne!29579 (regTwo!29579 (regTwo!29578 expr!117))))) b!5160892))

(assert (= (and b!5160450 ((_ is Union!14533) (regOne!29579 (regTwo!29579 (regTwo!29578 expr!117))))) b!5160893))

(declare-fun b!5160896 () Bool)

(declare-fun e!3215929 () Bool)

(declare-fun tp!1446420 () Bool)

(assert (=> b!5160896 (= e!3215929 tp!1446420)))

(declare-fun b!5160897 () Bool)

(declare-fun tp!1446421 () Bool)

(declare-fun tp!1446417 () Bool)

(assert (=> b!5160897 (= e!3215929 (and tp!1446421 tp!1446417))))

(assert (=> b!5160450 (= tp!1446177 e!3215929)))

(declare-fun b!5160894 () Bool)

(assert (=> b!5160894 (= e!3215929 tp_is_empty!38215)))

(declare-fun b!5160895 () Bool)

(declare-fun tp!1446419 () Bool)

(declare-fun tp!1446418 () Bool)

(assert (=> b!5160895 (= e!3215929 (and tp!1446419 tp!1446418))))

(assert (= (and b!5160450 ((_ is ElementMatch!14533) (regTwo!29579 (regTwo!29579 (regTwo!29578 expr!117))))) b!5160894))

(assert (= (and b!5160450 ((_ is Concat!23378) (regTwo!29579 (regTwo!29579 (regTwo!29578 expr!117))))) b!5160895))

(assert (= (and b!5160450 ((_ is Star!14533) (regTwo!29579 (regTwo!29579 (regTwo!29578 expr!117))))) b!5160896))

(assert (= (and b!5160450 ((_ is Union!14533) (regTwo!29579 (regTwo!29579 (regTwo!29578 expr!117))))) b!5160897))

(declare-fun b!5160900 () Bool)

(declare-fun e!3215930 () Bool)

(declare-fun tp!1446425 () Bool)

(assert (=> b!5160900 (= e!3215930 tp!1446425)))

(declare-fun b!5160901 () Bool)

(declare-fun tp!1446426 () Bool)

(declare-fun tp!1446422 () Bool)

(assert (=> b!5160901 (= e!3215930 (and tp!1446426 tp!1446422))))

(assert (=> b!5160504 (= tp!1446246 e!3215930)))

(declare-fun b!5160898 () Bool)

(assert (=> b!5160898 (= e!3215930 tp_is_empty!38215)))

(declare-fun b!5160899 () Bool)

(declare-fun tp!1446424 () Bool)

(declare-fun tp!1446423 () Bool)

(assert (=> b!5160899 (= e!3215930 (and tp!1446424 tp!1446423))))

(assert (= (and b!5160504 ((_ is ElementMatch!14533) (regOne!29579 (reg!14862 (regTwo!29578 expr!117))))) b!5160898))

(assert (= (and b!5160504 ((_ is Concat!23378) (regOne!29579 (reg!14862 (regTwo!29578 expr!117))))) b!5160899))

(assert (= (and b!5160504 ((_ is Star!14533) (regOne!29579 (reg!14862 (regTwo!29578 expr!117))))) b!5160900))

(assert (= (and b!5160504 ((_ is Union!14533) (regOne!29579 (reg!14862 (regTwo!29578 expr!117))))) b!5160901))

(declare-fun b!5160904 () Bool)

(declare-fun e!3215931 () Bool)

(declare-fun tp!1446430 () Bool)

(assert (=> b!5160904 (= e!3215931 tp!1446430)))

(declare-fun b!5160905 () Bool)

(declare-fun tp!1446431 () Bool)

(declare-fun tp!1446427 () Bool)

(assert (=> b!5160905 (= e!3215931 (and tp!1446431 tp!1446427))))

(assert (=> b!5160504 (= tp!1446242 e!3215931)))

(declare-fun b!5160902 () Bool)

(assert (=> b!5160902 (= e!3215931 tp_is_empty!38215)))

(declare-fun b!5160903 () Bool)

(declare-fun tp!1446429 () Bool)

(declare-fun tp!1446428 () Bool)

(assert (=> b!5160903 (= e!3215931 (and tp!1446429 tp!1446428))))

(assert (= (and b!5160504 ((_ is ElementMatch!14533) (regTwo!29579 (reg!14862 (regTwo!29578 expr!117))))) b!5160902))

(assert (= (and b!5160504 ((_ is Concat!23378) (regTwo!29579 (reg!14862 (regTwo!29578 expr!117))))) b!5160903))

(assert (= (and b!5160504 ((_ is Star!14533) (regTwo!29579 (reg!14862 (regTwo!29578 expr!117))))) b!5160904))

(assert (= (and b!5160504 ((_ is Union!14533) (regTwo!29579 (reg!14862 (regTwo!29578 expr!117))))) b!5160905))

(declare-fun b!5160908 () Bool)

(declare-fun e!3215932 () Bool)

(declare-fun tp!1446435 () Bool)

(assert (=> b!5160908 (= e!3215932 tp!1446435)))

(declare-fun b!5160909 () Bool)

(declare-fun tp!1446436 () Bool)

(declare-fun tp!1446432 () Bool)

(assert (=> b!5160909 (= e!3215932 (and tp!1446436 tp!1446432))))

(assert (=> b!5160474 (= tp!1446209 e!3215932)))

(declare-fun b!5160906 () Bool)

(assert (=> b!5160906 (= e!3215932 tp_is_empty!38215)))

(declare-fun b!5160907 () Bool)

(declare-fun tp!1446434 () Bool)

(declare-fun tp!1446433 () Bool)

(assert (=> b!5160907 (= e!3215932 (and tp!1446434 tp!1446433))))

(assert (= (and b!5160474 ((_ is ElementMatch!14533) (regOne!29578 (regOne!29579 (reg!14862 expr!117))))) b!5160906))

(assert (= (and b!5160474 ((_ is Concat!23378) (regOne!29578 (regOne!29579 (reg!14862 expr!117))))) b!5160907))

(assert (= (and b!5160474 ((_ is Star!14533) (regOne!29578 (regOne!29579 (reg!14862 expr!117))))) b!5160908))

(assert (= (and b!5160474 ((_ is Union!14533) (regOne!29578 (regOne!29579 (reg!14862 expr!117))))) b!5160909))

(declare-fun b!5160912 () Bool)

(declare-fun e!3215933 () Bool)

(declare-fun tp!1446440 () Bool)

(assert (=> b!5160912 (= e!3215933 tp!1446440)))

(declare-fun b!5160913 () Bool)

(declare-fun tp!1446441 () Bool)

(declare-fun tp!1446437 () Bool)

(assert (=> b!5160913 (= e!3215933 (and tp!1446441 tp!1446437))))

(assert (=> b!5160474 (= tp!1446208 e!3215933)))

(declare-fun b!5160910 () Bool)

(assert (=> b!5160910 (= e!3215933 tp_is_empty!38215)))

(declare-fun b!5160911 () Bool)

(declare-fun tp!1446439 () Bool)

(declare-fun tp!1446438 () Bool)

(assert (=> b!5160911 (= e!3215933 (and tp!1446439 tp!1446438))))

(assert (= (and b!5160474 ((_ is ElementMatch!14533) (regTwo!29578 (regOne!29579 (reg!14862 expr!117))))) b!5160910))

(assert (= (and b!5160474 ((_ is Concat!23378) (regTwo!29578 (regOne!29579 (reg!14862 expr!117))))) b!5160911))

(assert (= (and b!5160474 ((_ is Star!14533) (regTwo!29578 (regOne!29579 (reg!14862 expr!117))))) b!5160912))

(assert (= (and b!5160474 ((_ is Union!14533) (regTwo!29578 (regOne!29579 (reg!14862 expr!117))))) b!5160913))

(declare-fun b!5160916 () Bool)

(declare-fun e!3215934 () Bool)

(declare-fun tp!1446445 () Bool)

(assert (=> b!5160916 (= e!3215934 tp!1446445)))

(declare-fun b!5160917 () Bool)

(declare-fun tp!1446446 () Bool)

(declare-fun tp!1446442 () Bool)

(assert (=> b!5160917 (= e!3215934 (and tp!1446446 tp!1446442))))

(assert (=> b!5160476 (= tp!1446211 e!3215934)))

(declare-fun b!5160914 () Bool)

(assert (=> b!5160914 (= e!3215934 tp_is_empty!38215)))

(declare-fun b!5160915 () Bool)

(declare-fun tp!1446444 () Bool)

(declare-fun tp!1446443 () Bool)

(assert (=> b!5160915 (= e!3215934 (and tp!1446444 tp!1446443))))

(assert (= (and b!5160476 ((_ is ElementMatch!14533) (regOne!29579 (regOne!29579 (reg!14862 expr!117))))) b!5160914))

(assert (= (and b!5160476 ((_ is Concat!23378) (regOne!29579 (regOne!29579 (reg!14862 expr!117))))) b!5160915))

(assert (= (and b!5160476 ((_ is Star!14533) (regOne!29579 (regOne!29579 (reg!14862 expr!117))))) b!5160916))

(assert (= (and b!5160476 ((_ is Union!14533) (regOne!29579 (regOne!29579 (reg!14862 expr!117))))) b!5160917))

(declare-fun b!5160920 () Bool)

(declare-fun e!3215935 () Bool)

(declare-fun tp!1446450 () Bool)

(assert (=> b!5160920 (= e!3215935 tp!1446450)))

(declare-fun b!5160921 () Bool)

(declare-fun tp!1446451 () Bool)

(declare-fun tp!1446447 () Bool)

(assert (=> b!5160921 (= e!3215935 (and tp!1446451 tp!1446447))))

(assert (=> b!5160476 (= tp!1446207 e!3215935)))

(declare-fun b!5160918 () Bool)

(assert (=> b!5160918 (= e!3215935 tp_is_empty!38215)))

(declare-fun b!5160919 () Bool)

(declare-fun tp!1446449 () Bool)

(declare-fun tp!1446448 () Bool)

(assert (=> b!5160919 (= e!3215935 (and tp!1446449 tp!1446448))))

(assert (= (and b!5160476 ((_ is ElementMatch!14533) (regTwo!29579 (regOne!29579 (reg!14862 expr!117))))) b!5160918))

(assert (= (and b!5160476 ((_ is Concat!23378) (regTwo!29579 (regOne!29579 (reg!14862 expr!117))))) b!5160919))

(assert (= (and b!5160476 ((_ is Star!14533) (regTwo!29579 (regOne!29579 (reg!14862 expr!117))))) b!5160920))

(assert (= (and b!5160476 ((_ is Union!14533) (regTwo!29579 (regOne!29579 (reg!14862 expr!117))))) b!5160921))

(declare-fun b!5160924 () Bool)

(declare-fun e!3215936 () Bool)

(declare-fun tp!1446455 () Bool)

(assert (=> b!5160924 (= e!3215936 tp!1446455)))

(declare-fun b!5160925 () Bool)

(declare-fun tp!1446456 () Bool)

(declare-fun tp!1446452 () Bool)

(assert (=> b!5160925 (= e!3215936 (and tp!1446456 tp!1446452))))

(assert (=> b!5160512 (= tp!1446257 e!3215936)))

(declare-fun b!5160922 () Bool)

(assert (=> b!5160922 (= e!3215936 tp_is_empty!38215)))

(declare-fun b!5160923 () Bool)

(declare-fun tp!1446454 () Bool)

(declare-fun tp!1446453 () Bool)

(assert (=> b!5160923 (= e!3215936 (and tp!1446454 tp!1446453))))

(assert (= (and b!5160512 ((_ is ElementMatch!14533) (reg!14862 (regOne!29578 (regOne!29578 expr!117))))) b!5160922))

(assert (= (and b!5160512 ((_ is Concat!23378) (reg!14862 (regOne!29578 (regOne!29578 expr!117))))) b!5160923))

(assert (= (and b!5160512 ((_ is Star!14533) (reg!14862 (regOne!29578 (regOne!29578 expr!117))))) b!5160924))

(assert (= (and b!5160512 ((_ is Union!14533) (reg!14862 (regOne!29578 (regOne!29578 expr!117))))) b!5160925))

(declare-fun b!5160928 () Bool)

(declare-fun e!3215937 () Bool)

(declare-fun tp!1446460 () Bool)

(assert (=> b!5160928 (= e!3215937 tp!1446460)))

(declare-fun b!5160929 () Bool)

(declare-fun tp!1446461 () Bool)

(declare-fun tp!1446457 () Bool)

(assert (=> b!5160929 (= e!3215937 (and tp!1446461 tp!1446457))))

(assert (=> b!5160490 (= tp!1446229 e!3215937)))

(declare-fun b!5160926 () Bool)

(assert (=> b!5160926 (= e!3215937 tp_is_empty!38215)))

(declare-fun b!5160927 () Bool)

(declare-fun tp!1446459 () Bool)

(declare-fun tp!1446458 () Bool)

(assert (=> b!5160927 (= e!3215937 (and tp!1446459 tp!1446458))))

(assert (= (and b!5160490 ((_ is ElementMatch!14533) (regOne!29578 (reg!14862 (regOne!29578 expr!117))))) b!5160926))

(assert (= (and b!5160490 ((_ is Concat!23378) (regOne!29578 (reg!14862 (regOne!29578 expr!117))))) b!5160927))

(assert (= (and b!5160490 ((_ is Star!14533) (regOne!29578 (reg!14862 (regOne!29578 expr!117))))) b!5160928))

(assert (= (and b!5160490 ((_ is Union!14533) (regOne!29578 (reg!14862 (regOne!29578 expr!117))))) b!5160929))

(declare-fun b!5160932 () Bool)

(declare-fun e!3215938 () Bool)

(declare-fun tp!1446465 () Bool)

(assert (=> b!5160932 (= e!3215938 tp!1446465)))

(declare-fun b!5160933 () Bool)

(declare-fun tp!1446466 () Bool)

(declare-fun tp!1446462 () Bool)

(assert (=> b!5160933 (= e!3215938 (and tp!1446466 tp!1446462))))

(assert (=> b!5160490 (= tp!1446228 e!3215938)))

(declare-fun b!5160930 () Bool)

(assert (=> b!5160930 (= e!3215938 tp_is_empty!38215)))

(declare-fun b!5160931 () Bool)

(declare-fun tp!1446464 () Bool)

(declare-fun tp!1446463 () Bool)

(assert (=> b!5160931 (= e!3215938 (and tp!1446464 tp!1446463))))

(assert (= (and b!5160490 ((_ is ElementMatch!14533) (regTwo!29578 (reg!14862 (regOne!29578 expr!117))))) b!5160930))

(assert (= (and b!5160490 ((_ is Concat!23378) (regTwo!29578 (reg!14862 (regOne!29578 expr!117))))) b!5160931))

(assert (= (and b!5160490 ((_ is Star!14533) (regTwo!29578 (reg!14862 (regOne!29578 expr!117))))) b!5160932))

(assert (= (and b!5160490 ((_ is Union!14533) (regTwo!29578 (reg!14862 (regOne!29578 expr!117))))) b!5160933))

(declare-fun b!5160936 () Bool)

(declare-fun e!3215939 () Bool)

(declare-fun tp!1446470 () Bool)

(assert (=> b!5160936 (= e!3215939 tp!1446470)))

(declare-fun b!5160937 () Bool)

(declare-fun tp!1446471 () Bool)

(declare-fun tp!1446467 () Bool)

(assert (=> b!5160937 (= e!3215939 (and tp!1446471 tp!1446467))))

(assert (=> b!5160492 (= tp!1446231 e!3215939)))

(declare-fun b!5160934 () Bool)

(assert (=> b!5160934 (= e!3215939 tp_is_empty!38215)))

(declare-fun b!5160935 () Bool)

(declare-fun tp!1446469 () Bool)

(declare-fun tp!1446468 () Bool)

(assert (=> b!5160935 (= e!3215939 (and tp!1446469 tp!1446468))))

(assert (= (and b!5160492 ((_ is ElementMatch!14533) (regOne!29579 (reg!14862 (regOne!29578 expr!117))))) b!5160934))

(assert (= (and b!5160492 ((_ is Concat!23378) (regOne!29579 (reg!14862 (regOne!29578 expr!117))))) b!5160935))

(assert (= (and b!5160492 ((_ is Star!14533) (regOne!29579 (reg!14862 (regOne!29578 expr!117))))) b!5160936))

(assert (= (and b!5160492 ((_ is Union!14533) (regOne!29579 (reg!14862 (regOne!29578 expr!117))))) b!5160937))

(declare-fun b!5160940 () Bool)

(declare-fun e!3215940 () Bool)

(declare-fun tp!1446475 () Bool)

(assert (=> b!5160940 (= e!3215940 tp!1446475)))

(declare-fun b!5160941 () Bool)

(declare-fun tp!1446476 () Bool)

(declare-fun tp!1446472 () Bool)

(assert (=> b!5160941 (= e!3215940 (and tp!1446476 tp!1446472))))

(assert (=> b!5160492 (= tp!1446227 e!3215940)))

(declare-fun b!5160938 () Bool)

(assert (=> b!5160938 (= e!3215940 tp_is_empty!38215)))

(declare-fun b!5160939 () Bool)

(declare-fun tp!1446474 () Bool)

(declare-fun tp!1446473 () Bool)

(assert (=> b!5160939 (= e!3215940 (and tp!1446474 tp!1446473))))

(assert (= (and b!5160492 ((_ is ElementMatch!14533) (regTwo!29579 (reg!14862 (regOne!29578 expr!117))))) b!5160938))

(assert (= (and b!5160492 ((_ is Concat!23378) (regTwo!29579 (reg!14862 (regOne!29578 expr!117))))) b!5160939))

(assert (= (and b!5160492 ((_ is Star!14533) (regTwo!29579 (reg!14862 (regOne!29578 expr!117))))) b!5160940))

(assert (= (and b!5160492 ((_ is Union!14533) (regTwo!29579 (reg!14862 (regOne!29578 expr!117))))) b!5160941))

(declare-fun b!5160944 () Bool)

(declare-fun e!3215941 () Bool)

(declare-fun tp!1446480 () Bool)

(assert (=> b!5160944 (= e!3215941 tp!1446480)))

(declare-fun b!5160945 () Bool)

(declare-fun tp!1446481 () Bool)

(declare-fun tp!1446477 () Bool)

(assert (=> b!5160945 (= e!3215941 (and tp!1446481 tp!1446477))))

(assert (=> b!5160483 (= tp!1446220 e!3215941)))

(declare-fun b!5160942 () Bool)

(assert (=> b!5160942 (= e!3215941 tp_is_empty!38215)))

(declare-fun b!5160943 () Bool)

(declare-fun tp!1446479 () Bool)

(declare-fun tp!1446478 () Bool)

(assert (=> b!5160943 (= e!3215941 (and tp!1446479 tp!1446478))))

(assert (= (and b!5160483 ((_ is ElementMatch!14533) (reg!14862 (regOne!29578 (regTwo!29578 expr!117))))) b!5160942))

(assert (= (and b!5160483 ((_ is Concat!23378) (reg!14862 (regOne!29578 (regTwo!29578 expr!117))))) b!5160943))

(assert (= (and b!5160483 ((_ is Star!14533) (reg!14862 (regOne!29578 (regTwo!29578 expr!117))))) b!5160944))

(assert (= (and b!5160483 ((_ is Union!14533) (reg!14862 (regOne!29578 (regTwo!29578 expr!117))))) b!5160945))

(declare-fun b!5160948 () Bool)

(declare-fun e!3215942 () Bool)

(declare-fun tp!1446485 () Bool)

(assert (=> b!5160948 (= e!3215942 tp!1446485)))

(declare-fun b!5160949 () Bool)

(declare-fun tp!1446486 () Bool)

(declare-fun tp!1446482 () Bool)

(assert (=> b!5160949 (= e!3215942 (and tp!1446486 tp!1446482))))

(assert (=> b!5160464 (= tp!1446199 e!3215942)))

(declare-fun b!5160946 () Bool)

(assert (=> b!5160946 (= e!3215942 tp_is_empty!38215)))

(declare-fun b!5160947 () Bool)

(declare-fun tp!1446484 () Bool)

(declare-fun tp!1446483 () Bool)

(assert (=> b!5160947 (= e!3215942 (and tp!1446484 tp!1446483))))

(assert (= (and b!5160464 ((_ is ElementMatch!14533) (regOne!29578 (regOne!29579 (regTwo!29579 expr!117))))) b!5160946))

(assert (= (and b!5160464 ((_ is Concat!23378) (regOne!29578 (regOne!29579 (regTwo!29579 expr!117))))) b!5160947))

(assert (= (and b!5160464 ((_ is Star!14533) (regOne!29578 (regOne!29579 (regTwo!29579 expr!117))))) b!5160948))

(assert (= (and b!5160464 ((_ is Union!14533) (regOne!29578 (regOne!29579 (regTwo!29579 expr!117))))) b!5160949))

(declare-fun b!5160952 () Bool)

(declare-fun e!3215943 () Bool)

(declare-fun tp!1446490 () Bool)

(assert (=> b!5160952 (= e!3215943 tp!1446490)))

(declare-fun b!5160953 () Bool)

(declare-fun tp!1446491 () Bool)

(declare-fun tp!1446487 () Bool)

(assert (=> b!5160953 (= e!3215943 (and tp!1446491 tp!1446487))))

(assert (=> b!5160464 (= tp!1446198 e!3215943)))

(declare-fun b!5160950 () Bool)

(assert (=> b!5160950 (= e!3215943 tp_is_empty!38215)))

(declare-fun b!5160951 () Bool)

(declare-fun tp!1446489 () Bool)

(declare-fun tp!1446488 () Bool)

(assert (=> b!5160951 (= e!3215943 (and tp!1446489 tp!1446488))))

(assert (= (and b!5160464 ((_ is ElementMatch!14533) (regTwo!29578 (regOne!29579 (regTwo!29579 expr!117))))) b!5160950))

(assert (= (and b!5160464 ((_ is Concat!23378) (regTwo!29578 (regOne!29579 (regTwo!29579 expr!117))))) b!5160951))

(assert (= (and b!5160464 ((_ is Star!14533) (regTwo!29578 (regOne!29579 (regTwo!29579 expr!117))))) b!5160952))

(assert (= (and b!5160464 ((_ is Union!14533) (regTwo!29578 (regOne!29579 (regTwo!29579 expr!117))))) b!5160953))

(declare-fun b!5160956 () Bool)

(declare-fun e!3215944 () Bool)

(declare-fun tp!1446495 () Bool)

(assert (=> b!5160956 (= e!3215944 tp!1446495)))

(declare-fun b!5160957 () Bool)

(declare-fun tp!1446496 () Bool)

(declare-fun tp!1446492 () Bool)

(assert (=> b!5160957 (= e!3215944 (and tp!1446496 tp!1446492))))

(assert (=> b!5160416 (= tp!1446139 e!3215944)))

(declare-fun b!5160954 () Bool)

(assert (=> b!5160954 (= e!3215944 tp_is_empty!38215)))

(declare-fun b!5160955 () Bool)

(declare-fun tp!1446494 () Bool)

(declare-fun tp!1446493 () Bool)

(assert (=> b!5160955 (= e!3215944 (and tp!1446494 tp!1446493))))

(assert (= (and b!5160416 ((_ is ElementMatch!14533) (regOne!29578 (regOne!29578 (reg!14862 expr!117))))) b!5160954))

(assert (= (and b!5160416 ((_ is Concat!23378) (regOne!29578 (regOne!29578 (reg!14862 expr!117))))) b!5160955))

(assert (= (and b!5160416 ((_ is Star!14533) (regOne!29578 (regOne!29578 (reg!14862 expr!117))))) b!5160956))

(assert (= (and b!5160416 ((_ is Union!14533) (regOne!29578 (regOne!29578 (reg!14862 expr!117))))) b!5160957))

(declare-fun b!5160960 () Bool)

(declare-fun e!3215945 () Bool)

(declare-fun tp!1446500 () Bool)

(assert (=> b!5160960 (= e!3215945 tp!1446500)))

(declare-fun b!5160961 () Bool)

(declare-fun tp!1446501 () Bool)

(declare-fun tp!1446497 () Bool)

(assert (=> b!5160961 (= e!3215945 (and tp!1446501 tp!1446497))))

(assert (=> b!5160416 (= tp!1446138 e!3215945)))

(declare-fun b!5160958 () Bool)

(assert (=> b!5160958 (= e!3215945 tp_is_empty!38215)))

(declare-fun b!5160959 () Bool)

(declare-fun tp!1446499 () Bool)

(declare-fun tp!1446498 () Bool)

(assert (=> b!5160959 (= e!3215945 (and tp!1446499 tp!1446498))))

(assert (= (and b!5160416 ((_ is ElementMatch!14533) (regTwo!29578 (regOne!29578 (reg!14862 expr!117))))) b!5160958))

(assert (= (and b!5160416 ((_ is Concat!23378) (regTwo!29578 (regOne!29578 (reg!14862 expr!117))))) b!5160959))

(assert (= (and b!5160416 ((_ is Star!14533) (regTwo!29578 (regOne!29578 (reg!14862 expr!117))))) b!5160960))

(assert (= (and b!5160416 ((_ is Union!14533) (regTwo!29578 (regOne!29578 (reg!14862 expr!117))))) b!5160961))

(declare-fun b!5160964 () Bool)

(declare-fun e!3215946 () Bool)

(declare-fun tp!1446505 () Bool)

(assert (=> b!5160964 (= e!3215946 tp!1446505)))

(declare-fun b!5160965 () Bool)

(declare-fun tp!1446506 () Bool)

(declare-fun tp!1446502 () Bool)

(assert (=> b!5160965 (= e!3215946 (and tp!1446506 tp!1446502))))

(assert (=> b!5160488 (= tp!1446226 e!3215946)))

(declare-fun b!5160962 () Bool)

(assert (=> b!5160962 (= e!3215946 tp_is_empty!38215)))

(declare-fun b!5160963 () Bool)

(declare-fun tp!1446504 () Bool)

(declare-fun tp!1446503 () Bool)

(assert (=> b!5160963 (= e!3215946 (and tp!1446504 tp!1446503))))

(assert (= (and b!5160488 ((_ is ElementMatch!14533) (regOne!29579 (regTwo!29578 (regTwo!29578 expr!117))))) b!5160962))

(assert (= (and b!5160488 ((_ is Concat!23378) (regOne!29579 (regTwo!29578 (regTwo!29578 expr!117))))) b!5160963))

(assert (= (and b!5160488 ((_ is Star!14533) (regOne!29579 (regTwo!29578 (regTwo!29578 expr!117))))) b!5160964))

(assert (= (and b!5160488 ((_ is Union!14533) (regOne!29579 (regTwo!29578 (regTwo!29578 expr!117))))) b!5160965))

(declare-fun b!5160968 () Bool)

(declare-fun e!3215947 () Bool)

(declare-fun tp!1446510 () Bool)

(assert (=> b!5160968 (= e!3215947 tp!1446510)))

(declare-fun b!5160969 () Bool)

(declare-fun tp!1446511 () Bool)

(declare-fun tp!1446507 () Bool)

(assert (=> b!5160969 (= e!3215947 (and tp!1446511 tp!1446507))))

(assert (=> b!5160488 (= tp!1446222 e!3215947)))

(declare-fun b!5160966 () Bool)

(assert (=> b!5160966 (= e!3215947 tp_is_empty!38215)))

(declare-fun b!5160967 () Bool)

(declare-fun tp!1446509 () Bool)

(declare-fun tp!1446508 () Bool)

(assert (=> b!5160967 (= e!3215947 (and tp!1446509 tp!1446508))))

(assert (= (and b!5160488 ((_ is ElementMatch!14533) (regTwo!29579 (regTwo!29578 (regTwo!29578 expr!117))))) b!5160966))

(assert (= (and b!5160488 ((_ is Concat!23378) (regTwo!29579 (regTwo!29578 (regTwo!29578 expr!117))))) b!5160967))

(assert (= (and b!5160488 ((_ is Star!14533) (regTwo!29579 (regTwo!29578 (regTwo!29578 expr!117))))) b!5160968))

(assert (= (and b!5160488 ((_ is Union!14533) (regTwo!29579 (regTwo!29578 (regTwo!29578 expr!117))))) b!5160969))

(declare-fun b!5160972 () Bool)

(declare-fun e!3215948 () Bool)

(declare-fun tp!1446515 () Bool)

(assert (=> b!5160972 (= e!3215948 tp!1446515)))

(declare-fun b!5160973 () Bool)

(declare-fun tp!1446516 () Bool)

(declare-fun tp!1446512 () Bool)

(assert (=> b!5160973 (= e!3215948 (and tp!1446516 tp!1446512))))

(assert (=> b!5160480 (= tp!1446216 e!3215948)))

(declare-fun b!5160970 () Bool)

(assert (=> b!5160970 (= e!3215948 tp_is_empty!38215)))

(declare-fun b!5160971 () Bool)

(declare-fun tp!1446514 () Bool)

(declare-fun tp!1446513 () Bool)

(assert (=> b!5160971 (= e!3215948 (and tp!1446514 tp!1446513))))

(assert (= (and b!5160480 ((_ is ElementMatch!14533) (regOne!29579 (regTwo!29579 (reg!14862 expr!117))))) b!5160970))

(assert (= (and b!5160480 ((_ is Concat!23378) (regOne!29579 (regTwo!29579 (reg!14862 expr!117))))) b!5160971))

(assert (= (and b!5160480 ((_ is Star!14533) (regOne!29579 (regTwo!29579 (reg!14862 expr!117))))) b!5160972))

(assert (= (and b!5160480 ((_ is Union!14533) (regOne!29579 (regTwo!29579 (reg!14862 expr!117))))) b!5160973))

(declare-fun b!5160976 () Bool)

(declare-fun e!3215949 () Bool)

(declare-fun tp!1446520 () Bool)

(assert (=> b!5160976 (= e!3215949 tp!1446520)))

(declare-fun b!5160977 () Bool)

(declare-fun tp!1446521 () Bool)

(declare-fun tp!1446517 () Bool)

(assert (=> b!5160977 (= e!3215949 (and tp!1446521 tp!1446517))))

(assert (=> b!5160480 (= tp!1446212 e!3215949)))

(declare-fun b!5160974 () Bool)

(assert (=> b!5160974 (= e!3215949 tp_is_empty!38215)))

(declare-fun b!5160975 () Bool)

(declare-fun tp!1446519 () Bool)

(declare-fun tp!1446518 () Bool)

(assert (=> b!5160975 (= e!3215949 (and tp!1446519 tp!1446518))))

(assert (= (and b!5160480 ((_ is ElementMatch!14533) (regTwo!29579 (regTwo!29579 (reg!14862 expr!117))))) b!5160974))

(assert (= (and b!5160480 ((_ is Concat!23378) (regTwo!29579 (regTwo!29579 (reg!14862 expr!117))))) b!5160975))

(assert (= (and b!5160480 ((_ is Star!14533) (regTwo!29579 (regTwo!29579 (reg!14862 expr!117))))) b!5160976))

(assert (= (and b!5160480 ((_ is Union!14533) (regTwo!29579 (regTwo!29579 (reg!14862 expr!117))))) b!5160977))

(declare-fun b!5160980 () Bool)

(declare-fun e!3215950 () Bool)

(declare-fun tp!1446525 () Bool)

(assert (=> b!5160980 (= e!3215950 tp!1446525)))

(declare-fun b!5160981 () Bool)

(declare-fun tp!1446526 () Bool)

(declare-fun tp!1446522 () Bool)

(assert (=> b!5160981 (= e!3215950 (and tp!1446526 tp!1446522))))

(assert (=> b!5160432 (= tp!1446159 e!3215950)))

(declare-fun b!5160978 () Bool)

(assert (=> b!5160978 (= e!3215950 tp_is_empty!38215)))

(declare-fun b!5160979 () Bool)

(declare-fun tp!1446524 () Bool)

(declare-fun tp!1446523 () Bool)

(assert (=> b!5160979 (= e!3215950 (and tp!1446524 tp!1446523))))

(assert (= (and b!5160432 ((_ is ElementMatch!14533) (regOne!29578 (reg!14862 (regTwo!29579 expr!117))))) b!5160978))

(assert (= (and b!5160432 ((_ is Concat!23378) (regOne!29578 (reg!14862 (regTwo!29579 expr!117))))) b!5160979))

(assert (= (and b!5160432 ((_ is Star!14533) (regOne!29578 (reg!14862 (regTwo!29579 expr!117))))) b!5160980))

(assert (= (and b!5160432 ((_ is Union!14533) (regOne!29578 (reg!14862 (regTwo!29579 expr!117))))) b!5160981))

(declare-fun b!5160984 () Bool)

(declare-fun e!3215951 () Bool)

(declare-fun tp!1446530 () Bool)

(assert (=> b!5160984 (= e!3215951 tp!1446530)))

(declare-fun b!5160985 () Bool)

(declare-fun tp!1446531 () Bool)

(declare-fun tp!1446527 () Bool)

(assert (=> b!5160985 (= e!3215951 (and tp!1446531 tp!1446527))))

(assert (=> b!5160432 (= tp!1446158 e!3215951)))

(declare-fun b!5160982 () Bool)

(assert (=> b!5160982 (= e!3215951 tp_is_empty!38215)))

(declare-fun b!5160983 () Bool)

(declare-fun tp!1446529 () Bool)

(declare-fun tp!1446528 () Bool)

(assert (=> b!5160983 (= e!3215951 (and tp!1446529 tp!1446528))))

(assert (= (and b!5160432 ((_ is ElementMatch!14533) (regTwo!29578 (reg!14862 (regTwo!29579 expr!117))))) b!5160982))

(assert (= (and b!5160432 ((_ is Concat!23378) (regTwo!29578 (reg!14862 (regTwo!29579 expr!117))))) b!5160983))

(assert (= (and b!5160432 ((_ is Star!14533) (regTwo!29578 (reg!14862 (regTwo!29579 expr!117))))) b!5160984))

(assert (= (and b!5160432 ((_ is Union!14533) (regTwo!29578 (reg!14862 (regTwo!29579 expr!117))))) b!5160985))

(declare-fun b!5160988 () Bool)

(declare-fun e!3215952 () Bool)

(declare-fun tp!1446535 () Bool)

(assert (=> b!5160988 (= e!3215952 tp!1446535)))

(declare-fun b!5160989 () Bool)

(declare-fun tp!1446536 () Bool)

(declare-fun tp!1446532 () Bool)

(assert (=> b!5160989 (= e!3215952 (and tp!1446536 tp!1446532))))

(assert (=> b!5160457 (= tp!1446190 e!3215952)))

(declare-fun b!5160986 () Bool)

(assert (=> b!5160986 (= e!3215952 tp_is_empty!38215)))

(declare-fun b!5160987 () Bool)

(declare-fun tp!1446534 () Bool)

(declare-fun tp!1446533 () Bool)

(assert (=> b!5160987 (= e!3215952 (and tp!1446534 tp!1446533))))

(assert (= (and b!5160457 ((_ is ElementMatch!14533) (reg!14862 (regTwo!29579 (regOne!29579 expr!117))))) b!5160986))

(assert (= (and b!5160457 ((_ is Concat!23378) (reg!14862 (regTwo!29579 (regOne!29579 expr!117))))) b!5160987))

(assert (= (and b!5160457 ((_ is Star!14533) (reg!14862 (regTwo!29579 (regOne!29579 expr!117))))) b!5160988))

(assert (= (and b!5160457 ((_ is Union!14533) (reg!14862 (regTwo!29579 (regOne!29579 expr!117))))) b!5160989))

(declare-fun b!5160992 () Bool)

(declare-fun e!3215953 () Bool)

(declare-fun tp!1446540 () Bool)

(assert (=> b!5160992 (= e!3215953 tp!1446540)))

(declare-fun b!5160993 () Bool)

(declare-fun tp!1446541 () Bool)

(declare-fun tp!1446537 () Bool)

(assert (=> b!5160993 (= e!3215953 (and tp!1446541 tp!1446537))))

(assert (=> b!5160495 (= tp!1446235 e!3215953)))

(declare-fun b!5160990 () Bool)

(assert (=> b!5160990 (= e!3215953 tp_is_empty!38215)))

(declare-fun b!5160991 () Bool)

(declare-fun tp!1446539 () Bool)

(declare-fun tp!1446538 () Bool)

(assert (=> b!5160991 (= e!3215953 (and tp!1446539 tp!1446538))))

(assert (= (and b!5160495 ((_ is ElementMatch!14533) (reg!14862 (regOne!29578 (regTwo!29579 expr!117))))) b!5160990))

(assert (= (and b!5160495 ((_ is Concat!23378) (reg!14862 (regOne!29578 (regTwo!29579 expr!117))))) b!5160991))

(assert (= (and b!5160495 ((_ is Star!14533) (reg!14862 (regOne!29578 (regTwo!29579 expr!117))))) b!5160992))

(assert (= (and b!5160495 ((_ is Union!14533) (reg!14862 (regOne!29578 (regTwo!29579 expr!117))))) b!5160993))

(declare-fun b!5160996 () Bool)

(declare-fun e!3215954 () Bool)

(declare-fun tp!1446545 () Bool)

(assert (=> b!5160996 (= e!3215954 tp!1446545)))

(declare-fun b!5160997 () Bool)

(declare-fun tp!1446546 () Bool)

(declare-fun tp!1446542 () Bool)

(assert (=> b!5160997 (= e!3215954 (and tp!1446546 tp!1446542))))

(assert (=> b!5160448 (= tp!1446179 e!3215954)))

(declare-fun b!5160994 () Bool)

(assert (=> b!5160994 (= e!3215954 tp_is_empty!38215)))

(declare-fun b!5160995 () Bool)

(declare-fun tp!1446544 () Bool)

(declare-fun tp!1446543 () Bool)

(assert (=> b!5160995 (= e!3215954 (and tp!1446544 tp!1446543))))

(assert (= (and b!5160448 ((_ is ElementMatch!14533) (regOne!29578 (regTwo!29579 (regTwo!29578 expr!117))))) b!5160994))

(assert (= (and b!5160448 ((_ is Concat!23378) (regOne!29578 (regTwo!29579 (regTwo!29578 expr!117))))) b!5160995))

(assert (= (and b!5160448 ((_ is Star!14533) (regOne!29578 (regTwo!29579 (regTwo!29578 expr!117))))) b!5160996))

(assert (= (and b!5160448 ((_ is Union!14533) (regOne!29578 (regTwo!29579 (regTwo!29578 expr!117))))) b!5160997))

(declare-fun b!5161000 () Bool)

(declare-fun e!3215955 () Bool)

(declare-fun tp!1446550 () Bool)

(assert (=> b!5161000 (= e!3215955 tp!1446550)))

(declare-fun b!5161001 () Bool)

(declare-fun tp!1446551 () Bool)

(declare-fun tp!1446547 () Bool)

(assert (=> b!5161001 (= e!3215955 (and tp!1446551 tp!1446547))))

(assert (=> b!5160448 (= tp!1446178 e!3215955)))

(declare-fun b!5160998 () Bool)

(assert (=> b!5160998 (= e!3215955 tp_is_empty!38215)))

(declare-fun b!5160999 () Bool)

(declare-fun tp!1446549 () Bool)

(declare-fun tp!1446548 () Bool)

(assert (=> b!5160999 (= e!3215955 (and tp!1446549 tp!1446548))))

(assert (= (and b!5160448 ((_ is ElementMatch!14533) (regTwo!29578 (regTwo!29579 (regTwo!29578 expr!117))))) b!5160998))

(assert (= (and b!5160448 ((_ is Concat!23378) (regTwo!29578 (regTwo!29579 (regTwo!29578 expr!117))))) b!5160999))

(assert (= (and b!5160448 ((_ is Star!14533) (regTwo!29578 (regTwo!29579 (regTwo!29578 expr!117))))) b!5161000))

(assert (= (and b!5160448 ((_ is Union!14533) (regTwo!29578 (regTwo!29579 (regTwo!29578 expr!117))))) b!5161001))

(declare-fun b!5161004 () Bool)

(declare-fun e!3215956 () Bool)

(declare-fun tp!1446555 () Bool)

(assert (=> b!5161004 (= e!3215956 tp!1446555)))

(declare-fun b!5161005 () Bool)

(declare-fun tp!1446556 () Bool)

(declare-fun tp!1446552 () Bool)

(assert (=> b!5161005 (= e!3215956 (and tp!1446556 tp!1446552))))

(assert (=> b!5160425 (= tp!1446150 e!3215956)))

(declare-fun b!5161002 () Bool)

(assert (=> b!5161002 (= e!3215956 tp_is_empty!38215)))

(declare-fun b!5161003 () Bool)

(declare-fun tp!1446554 () Bool)

(declare-fun tp!1446553 () Bool)

(assert (=> b!5161003 (= e!3215956 (and tp!1446554 tp!1446553))))

(assert (= (and b!5160425 ((_ is ElementMatch!14533) (reg!14862 (regOne!29579 (regOne!29578 expr!117))))) b!5161002))

(assert (= (and b!5160425 ((_ is Concat!23378) (reg!14862 (regOne!29579 (regOne!29578 expr!117))))) b!5161003))

(assert (= (and b!5160425 ((_ is Star!14533) (reg!14862 (regOne!29579 (regOne!29578 expr!117))))) b!5161004))

(assert (= (and b!5160425 ((_ is Union!14533) (reg!14862 (regOne!29579 (regOne!29578 expr!117))))) b!5161005))

(declare-fun b!5161008 () Bool)

(declare-fun e!3215957 () Bool)

(declare-fun tp!1446560 () Bool)

(assert (=> b!5161008 (= e!3215957 tp!1446560)))

(declare-fun b!5161009 () Bool)

(declare-fun tp!1446561 () Bool)

(declare-fun tp!1446557 () Bool)

(assert (=> b!5161009 (= e!3215957 (and tp!1446561 tp!1446557))))

(assert (=> b!5160466 (= tp!1446201 e!3215957)))

(declare-fun b!5161006 () Bool)

(assert (=> b!5161006 (= e!3215957 tp_is_empty!38215)))

(declare-fun b!5161007 () Bool)

(declare-fun tp!1446559 () Bool)

(declare-fun tp!1446558 () Bool)

(assert (=> b!5161007 (= e!3215957 (and tp!1446559 tp!1446558))))

(assert (= (and b!5160466 ((_ is ElementMatch!14533) (regOne!29579 (regOne!29579 (regTwo!29579 expr!117))))) b!5161006))

(assert (= (and b!5160466 ((_ is Concat!23378) (regOne!29579 (regOne!29579 (regTwo!29579 expr!117))))) b!5161007))

(assert (= (and b!5160466 ((_ is Star!14533) (regOne!29579 (regOne!29579 (regTwo!29579 expr!117))))) b!5161008))

(assert (= (and b!5160466 ((_ is Union!14533) (regOne!29579 (regOne!29579 (regTwo!29579 expr!117))))) b!5161009))

(declare-fun b!5161012 () Bool)

(declare-fun e!3215958 () Bool)

(declare-fun tp!1446565 () Bool)

(assert (=> b!5161012 (= e!3215958 tp!1446565)))

(declare-fun b!5161013 () Bool)

(declare-fun tp!1446566 () Bool)

(declare-fun tp!1446562 () Bool)

(assert (=> b!5161013 (= e!3215958 (and tp!1446566 tp!1446562))))

(assert (=> b!5160466 (= tp!1446197 e!3215958)))

(declare-fun b!5161010 () Bool)

(assert (=> b!5161010 (= e!3215958 tp_is_empty!38215)))

(declare-fun b!5161011 () Bool)

(declare-fun tp!1446564 () Bool)

(declare-fun tp!1446563 () Bool)

(assert (=> b!5161011 (= e!3215958 (and tp!1446564 tp!1446563))))

(assert (= (and b!5160466 ((_ is ElementMatch!14533) (regTwo!29579 (regOne!29579 (regTwo!29579 expr!117))))) b!5161010))

(assert (= (and b!5160466 ((_ is Concat!23378) (regTwo!29579 (regOne!29579 (regTwo!29579 expr!117))))) b!5161011))

(assert (= (and b!5160466 ((_ is Star!14533) (regTwo!29579 (regOne!29579 (regTwo!29579 expr!117))))) b!5161012))

(assert (= (and b!5160466 ((_ is Union!14533) (regTwo!29579 (regOne!29579 (regTwo!29579 expr!117))))) b!5161013))

(declare-fun b!5161016 () Bool)

(declare-fun e!3215959 () Bool)

(declare-fun tp!1446570 () Bool)

(assert (=> b!5161016 (= e!3215959 tp!1446570)))

(declare-fun b!5161017 () Bool)

(declare-fun tp!1446571 () Bool)

(declare-fun tp!1446567 () Bool)

(assert (=> b!5161017 (= e!3215959 (and tp!1446571 tp!1446567))))

(assert (=> b!5160418 (= tp!1446141 e!3215959)))

(declare-fun b!5161014 () Bool)

(assert (=> b!5161014 (= e!3215959 tp_is_empty!38215)))

(declare-fun b!5161015 () Bool)

(declare-fun tp!1446569 () Bool)

(declare-fun tp!1446568 () Bool)

(assert (=> b!5161015 (= e!3215959 (and tp!1446569 tp!1446568))))

(assert (= (and b!5160418 ((_ is ElementMatch!14533) (regOne!29579 (regOne!29578 (reg!14862 expr!117))))) b!5161014))

(assert (= (and b!5160418 ((_ is Concat!23378) (regOne!29579 (regOne!29578 (reg!14862 expr!117))))) b!5161015))

(assert (= (and b!5160418 ((_ is Star!14533) (regOne!29579 (regOne!29578 (reg!14862 expr!117))))) b!5161016))

(assert (= (and b!5160418 ((_ is Union!14533) (regOne!29579 (regOne!29578 (reg!14862 expr!117))))) b!5161017))

(declare-fun b!5161020 () Bool)

(declare-fun e!3215960 () Bool)

(declare-fun tp!1446575 () Bool)

(assert (=> b!5161020 (= e!3215960 tp!1446575)))

(declare-fun b!5161021 () Bool)

(declare-fun tp!1446576 () Bool)

(declare-fun tp!1446572 () Bool)

(assert (=> b!5161021 (= e!3215960 (and tp!1446576 tp!1446572))))

(assert (=> b!5160418 (= tp!1446137 e!3215960)))

(declare-fun b!5161018 () Bool)

(assert (=> b!5161018 (= e!3215960 tp_is_empty!38215)))

(declare-fun b!5161019 () Bool)

(declare-fun tp!1446574 () Bool)

(declare-fun tp!1446573 () Bool)

(assert (=> b!5161019 (= e!3215960 (and tp!1446574 tp!1446573))))

(assert (= (and b!5160418 ((_ is ElementMatch!14533) (regTwo!29579 (regOne!29578 (reg!14862 expr!117))))) b!5161018))

(assert (= (and b!5160418 ((_ is Concat!23378) (regTwo!29579 (regOne!29578 (reg!14862 expr!117))))) b!5161019))

(assert (= (and b!5160418 ((_ is Star!14533) (regTwo!29579 (regOne!29578 (reg!14862 expr!117))))) b!5161020))

(assert (= (and b!5160418 ((_ is Union!14533) (regTwo!29579 (regOne!29578 (reg!14862 expr!117))))) b!5161021))

(declare-fun b!5161024 () Bool)

(declare-fun e!3215961 () Bool)

(declare-fun tp!1446580 () Bool)

(assert (=> b!5161024 (= e!3215961 tp!1446580)))

(declare-fun b!5161025 () Bool)

(declare-fun tp!1446581 () Bool)

(declare-fun tp!1446577 () Bool)

(assert (=> b!5161025 (= e!3215961 (and tp!1446581 tp!1446577))))

(assert (=> b!5160441 (= tp!1446170 e!3215961)))

(declare-fun b!5161022 () Bool)

(assert (=> b!5161022 (= e!3215961 tp_is_empty!38215)))

(declare-fun b!5161023 () Bool)

(declare-fun tp!1446579 () Bool)

(declare-fun tp!1446578 () Bool)

(assert (=> b!5161023 (= e!3215961 (and tp!1446579 tp!1446578))))

(assert (= (and b!5160441 ((_ is ElementMatch!14533) (reg!14862 (regTwo!29578 (regOne!29579 expr!117))))) b!5161022))

(assert (= (and b!5160441 ((_ is Concat!23378) (reg!14862 (regTwo!29578 (regOne!29579 expr!117))))) b!5161023))

(assert (= (and b!5160441 ((_ is Star!14533) (reg!14862 (regTwo!29578 (regOne!29579 expr!117))))) b!5161024))

(assert (= (and b!5160441 ((_ is Union!14533) (reg!14862 (regTwo!29578 (regOne!29579 expr!117))))) b!5161025))

(declare-fun b!5161028 () Bool)

(declare-fun e!3215962 () Bool)

(declare-fun tp!1446585 () Bool)

(assert (=> b!5161028 (= e!3215962 tp!1446585)))

(declare-fun b!5161029 () Bool)

(declare-fun tp!1446586 () Bool)

(declare-fun tp!1446582 () Bool)

(assert (=> b!5161029 (= e!3215962 (and tp!1446586 tp!1446582))))

(assert (=> b!5160434 (= tp!1446161 e!3215962)))

(declare-fun b!5161026 () Bool)

(assert (=> b!5161026 (= e!3215962 tp_is_empty!38215)))

(declare-fun b!5161027 () Bool)

(declare-fun tp!1446584 () Bool)

(declare-fun tp!1446583 () Bool)

(assert (=> b!5161027 (= e!3215962 (and tp!1446584 tp!1446583))))

(assert (= (and b!5160434 ((_ is ElementMatch!14533) (regOne!29579 (reg!14862 (regTwo!29579 expr!117))))) b!5161026))

(assert (= (and b!5160434 ((_ is Concat!23378) (regOne!29579 (reg!14862 (regTwo!29579 expr!117))))) b!5161027))

(assert (= (and b!5160434 ((_ is Star!14533) (regOne!29579 (reg!14862 (regTwo!29579 expr!117))))) b!5161028))

(assert (= (and b!5160434 ((_ is Union!14533) (regOne!29579 (reg!14862 (regTwo!29579 expr!117))))) b!5161029))

(declare-fun b!5161032 () Bool)

(declare-fun e!3215963 () Bool)

(declare-fun tp!1446590 () Bool)

(assert (=> b!5161032 (= e!3215963 tp!1446590)))

(declare-fun b!5161033 () Bool)

(declare-fun tp!1446591 () Bool)

(declare-fun tp!1446587 () Bool)

(assert (=> b!5161033 (= e!3215963 (and tp!1446591 tp!1446587))))

(assert (=> b!5160434 (= tp!1446157 e!3215963)))

(declare-fun b!5161030 () Bool)

(assert (=> b!5161030 (= e!3215963 tp_is_empty!38215)))

(declare-fun b!5161031 () Bool)

(declare-fun tp!1446589 () Bool)

(declare-fun tp!1446588 () Bool)

(assert (=> b!5161031 (= e!3215963 (and tp!1446589 tp!1446588))))

(assert (= (and b!5160434 ((_ is ElementMatch!14533) (regTwo!29579 (reg!14862 (regTwo!29579 expr!117))))) b!5161030))

(assert (= (and b!5160434 ((_ is Concat!23378) (regTwo!29579 (reg!14862 (regTwo!29579 expr!117))))) b!5161031))

(assert (= (and b!5160434 ((_ is Star!14533) (regTwo!29579 (reg!14862 (regTwo!29579 expr!117))))) b!5161032))

(assert (= (and b!5160434 ((_ is Union!14533) (regTwo!29579 (reg!14862 (regTwo!29579 expr!117))))) b!5161033))

(declare-fun b!5161036 () Bool)

(declare-fun e!3215964 () Bool)

(declare-fun tp!1446595 () Bool)

(assert (=> b!5161036 (= e!3215964 tp!1446595)))

(declare-fun b!5161037 () Bool)

(declare-fun tp!1446596 () Bool)

(declare-fun tp!1446592 () Bool)

(assert (=> b!5161037 (= e!3215964 (and tp!1446596 tp!1446592))))

(assert (=> b!5160498 (= tp!1446239 e!3215964)))

(declare-fun b!5161034 () Bool)

(assert (=> b!5161034 (= e!3215964 tp_is_empty!38215)))

(declare-fun b!5161035 () Bool)

(declare-fun tp!1446594 () Bool)

(declare-fun tp!1446593 () Bool)

(assert (=> b!5161035 (= e!3215964 (and tp!1446594 tp!1446593))))

(assert (= (and b!5160498 ((_ is ElementMatch!14533) (regOne!29578 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161034))

(assert (= (and b!5160498 ((_ is Concat!23378) (regOne!29578 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161035))

(assert (= (and b!5160498 ((_ is Star!14533) (regOne!29578 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161036))

(assert (= (and b!5160498 ((_ is Union!14533) (regOne!29578 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161037))

(declare-fun b!5161040 () Bool)

(declare-fun e!3215965 () Bool)

(declare-fun tp!1446600 () Bool)

(assert (=> b!5161040 (= e!3215965 tp!1446600)))

(declare-fun b!5161041 () Bool)

(declare-fun tp!1446601 () Bool)

(declare-fun tp!1446597 () Bool)

(assert (=> b!5161041 (= e!3215965 (and tp!1446601 tp!1446597))))

(assert (=> b!5160498 (= tp!1446238 e!3215965)))

(declare-fun b!5161038 () Bool)

(assert (=> b!5161038 (= e!3215965 tp_is_empty!38215)))

(declare-fun b!5161039 () Bool)

(declare-fun tp!1446599 () Bool)

(declare-fun tp!1446598 () Bool)

(assert (=> b!5161039 (= e!3215965 (and tp!1446599 tp!1446598))))

(assert (= (and b!5160498 ((_ is ElementMatch!14533) (regTwo!29578 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161038))

(assert (= (and b!5160498 ((_ is Concat!23378) (regTwo!29578 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161039))

(assert (= (and b!5160498 ((_ is Star!14533) (regTwo!29578 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161040))

(assert (= (and b!5160498 ((_ is Union!14533) (regTwo!29578 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161041))

(declare-fun b!5161044 () Bool)

(declare-fun e!3215966 () Bool)

(declare-fun tp!1446605 () Bool)

(assert (=> b!5161044 (= e!3215966 tp!1446605)))

(declare-fun b!5161045 () Bool)

(declare-fun tp!1446606 () Bool)

(declare-fun tp!1446602 () Bool)

(assert (=> b!5161045 (= e!3215966 (and tp!1446606 tp!1446602))))

(assert (=> b!5160446 (= tp!1446176 e!3215966)))

(declare-fun b!5161042 () Bool)

(assert (=> b!5161042 (= e!3215966 tp_is_empty!38215)))

(declare-fun b!5161043 () Bool)

(declare-fun tp!1446604 () Bool)

(declare-fun tp!1446603 () Bool)

(assert (=> b!5161043 (= e!3215966 (and tp!1446604 tp!1446603))))

(assert (= (and b!5160446 ((_ is ElementMatch!14533) (regOne!29579 (regOne!29579 (regTwo!29578 expr!117))))) b!5161042))

(assert (= (and b!5160446 ((_ is Concat!23378) (regOne!29579 (regOne!29579 (regTwo!29578 expr!117))))) b!5161043))

(assert (= (and b!5160446 ((_ is Star!14533) (regOne!29579 (regOne!29579 (regTwo!29578 expr!117))))) b!5161044))

(assert (= (and b!5160446 ((_ is Union!14533) (regOne!29579 (regOne!29579 (regTwo!29578 expr!117))))) b!5161045))

(declare-fun b!5161048 () Bool)

(declare-fun e!3215967 () Bool)

(declare-fun tp!1446610 () Bool)

(assert (=> b!5161048 (= e!3215967 tp!1446610)))

(declare-fun b!5161049 () Bool)

(declare-fun tp!1446611 () Bool)

(declare-fun tp!1446607 () Bool)

(assert (=> b!5161049 (= e!3215967 (and tp!1446611 tp!1446607))))

(assert (=> b!5160446 (= tp!1446172 e!3215967)))

(declare-fun b!5161046 () Bool)

(assert (=> b!5161046 (= e!3215967 tp_is_empty!38215)))

(declare-fun b!5161047 () Bool)

(declare-fun tp!1446609 () Bool)

(declare-fun tp!1446608 () Bool)

(assert (=> b!5161047 (= e!3215967 (and tp!1446609 tp!1446608))))

(assert (= (and b!5160446 ((_ is ElementMatch!14533) (regTwo!29579 (regOne!29579 (regTwo!29578 expr!117))))) b!5161046))

(assert (= (and b!5160446 ((_ is Concat!23378) (regTwo!29579 (regOne!29579 (regTwo!29578 expr!117))))) b!5161047))

(assert (= (and b!5160446 ((_ is Star!14533) (regTwo!29579 (regOne!29579 (regTwo!29578 expr!117))))) b!5161048))

(assert (= (and b!5160446 ((_ is Union!14533) (regTwo!29579 (regOne!29579 (regTwo!29578 expr!117))))) b!5161049))

(declare-fun b!5161052 () Bool)

(declare-fun e!3215968 () Bool)

(declare-fun tp!1446615 () Bool)

(assert (=> b!5161052 (= e!3215968 tp!1446615)))

(declare-fun b!5161053 () Bool)

(declare-fun tp!1446616 () Bool)

(declare-fun tp!1446612 () Bool)

(assert (=> b!5161053 (= e!3215968 (and tp!1446616 tp!1446612))))

(assert (=> b!5160470 (= tp!1446204 e!3215968)))

(declare-fun b!5161050 () Bool)

(assert (=> b!5161050 (= e!3215968 tp_is_empty!38215)))

(declare-fun b!5161051 () Bool)

(declare-fun tp!1446614 () Bool)

(declare-fun tp!1446613 () Bool)

(assert (=> b!5161051 (= e!3215968 (and tp!1446614 tp!1446613))))

(assert (= (and b!5160470 ((_ is ElementMatch!14533) (regOne!29578 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161050))

(assert (= (and b!5160470 ((_ is Concat!23378) (regOne!29578 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161051))

(assert (= (and b!5160470 ((_ is Star!14533) (regOne!29578 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161052))

(assert (= (and b!5160470 ((_ is Union!14533) (regOne!29578 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161053))

(declare-fun b!5161056 () Bool)

(declare-fun e!3215969 () Bool)

(declare-fun tp!1446620 () Bool)

(assert (=> b!5161056 (= e!3215969 tp!1446620)))

(declare-fun b!5161057 () Bool)

(declare-fun tp!1446621 () Bool)

(declare-fun tp!1446617 () Bool)

(assert (=> b!5161057 (= e!3215969 (and tp!1446621 tp!1446617))))

(assert (=> b!5160470 (= tp!1446203 e!3215969)))

(declare-fun b!5161054 () Bool)

(assert (=> b!5161054 (= e!3215969 tp_is_empty!38215)))

(declare-fun b!5161055 () Bool)

(declare-fun tp!1446619 () Bool)

(declare-fun tp!1446618 () Bool)

(assert (=> b!5161055 (= e!3215969 (and tp!1446619 tp!1446618))))

(assert (= (and b!5160470 ((_ is ElementMatch!14533) (regTwo!29578 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161054))

(assert (= (and b!5160470 ((_ is Concat!23378) (regTwo!29578 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161055))

(assert (= (and b!5160470 ((_ is Star!14533) (regTwo!29578 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161056))

(assert (= (and b!5160470 ((_ is Union!14533) (regTwo!29578 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161057))

(declare-fun b!5161060 () Bool)

(declare-fun e!3215970 () Bool)

(declare-fun tp!1446625 () Bool)

(assert (=> b!5161060 (= e!3215970 tp!1446625)))

(declare-fun b!5161061 () Bool)

(declare-fun tp!1446626 () Bool)

(declare-fun tp!1446622 () Bool)

(assert (=> b!5161061 (= e!3215970 (and tp!1446626 tp!1446622))))

(assert (=> b!5160507 (= tp!1446250 e!3215970)))

(declare-fun b!5161058 () Bool)

(assert (=> b!5161058 (= e!3215970 tp_is_empty!38215)))

(declare-fun b!5161059 () Bool)

(declare-fun tp!1446624 () Bool)

(declare-fun tp!1446623 () Bool)

(assert (=> b!5161059 (= e!3215970 (and tp!1446624 tp!1446623))))

(assert (= (and b!5160507 ((_ is ElementMatch!14533) (reg!14862 (h!66304 (exprs!4417 ctx!100))))) b!5161058))

(assert (= (and b!5160507 ((_ is Concat!23378) (reg!14862 (h!66304 (exprs!4417 ctx!100))))) b!5161059))

(assert (= (and b!5160507 ((_ is Star!14533) (reg!14862 (h!66304 (exprs!4417 ctx!100))))) b!5161060))

(assert (= (and b!5160507 ((_ is Union!14533) (reg!14862 (h!66304 (exprs!4417 ctx!100))))) b!5161061))

(declare-fun b!5161064 () Bool)

(declare-fun e!3215971 () Bool)

(declare-fun tp!1446630 () Bool)

(assert (=> b!5161064 (= e!3215971 tp!1446630)))

(declare-fun b!5161065 () Bool)

(declare-fun tp!1446631 () Bool)

(declare-fun tp!1446627 () Bool)

(assert (=> b!5161065 (= e!3215971 (and tp!1446631 tp!1446627))))

(assert (=> b!5160515 (= tp!1446261 e!3215971)))

(declare-fun b!5161062 () Bool)

(assert (=> b!5161062 (= e!3215971 tp_is_empty!38215)))

(declare-fun b!5161063 () Bool)

(declare-fun tp!1446629 () Bool)

(declare-fun tp!1446628 () Bool)

(assert (=> b!5161063 (= e!3215971 (and tp!1446629 tp!1446628))))

(assert (= (and b!5160515 ((_ is ElementMatch!14533) (regOne!29578 (regTwo!29578 (regOne!29578 expr!117))))) b!5161062))

(assert (= (and b!5160515 ((_ is Concat!23378) (regOne!29578 (regTwo!29578 (regOne!29578 expr!117))))) b!5161063))

(assert (= (and b!5160515 ((_ is Star!14533) (regOne!29578 (regTwo!29578 (regOne!29578 expr!117))))) b!5161064))

(assert (= (and b!5160515 ((_ is Union!14533) (regOne!29578 (regTwo!29578 (regOne!29578 expr!117))))) b!5161065))

(declare-fun b!5161068 () Bool)

(declare-fun e!3215972 () Bool)

(declare-fun tp!1446635 () Bool)

(assert (=> b!5161068 (= e!3215972 tp!1446635)))

(declare-fun b!5161069 () Bool)

(declare-fun tp!1446636 () Bool)

(declare-fun tp!1446632 () Bool)

(assert (=> b!5161069 (= e!3215972 (and tp!1446636 tp!1446632))))

(assert (=> b!5160515 (= tp!1446260 e!3215972)))

(declare-fun b!5161066 () Bool)

(assert (=> b!5161066 (= e!3215972 tp_is_empty!38215)))

(declare-fun b!5161067 () Bool)

(declare-fun tp!1446634 () Bool)

(declare-fun tp!1446633 () Bool)

(assert (=> b!5161067 (= e!3215972 (and tp!1446634 tp!1446633))))

(assert (= (and b!5160515 ((_ is ElementMatch!14533) (regTwo!29578 (regTwo!29578 (regOne!29578 expr!117))))) b!5161066))

(assert (= (and b!5160515 ((_ is Concat!23378) (regTwo!29578 (regTwo!29578 (regOne!29578 expr!117))))) b!5161067))

(assert (= (and b!5160515 ((_ is Star!14533) (regTwo!29578 (regTwo!29578 (regOne!29578 expr!117))))) b!5161068))

(assert (= (and b!5160515 ((_ is Union!14533) (regTwo!29578 (regTwo!29578 (regOne!29578 expr!117))))) b!5161069))

(declare-fun b!5161072 () Bool)

(declare-fun e!3215973 () Bool)

(declare-fun tp!1446640 () Bool)

(assert (=> b!5161072 (= e!3215973 tp!1446640)))

(declare-fun b!5161073 () Bool)

(declare-fun tp!1446641 () Bool)

(declare-fun tp!1446637 () Bool)

(assert (=> b!5161073 (= e!3215973 (and tp!1446641 tp!1446637))))

(assert (=> b!5160472 (= tp!1446206 e!3215973)))

(declare-fun b!5161070 () Bool)

(assert (=> b!5161070 (= e!3215973 tp_is_empty!38215)))

(declare-fun b!5161071 () Bool)

(declare-fun tp!1446639 () Bool)

(declare-fun tp!1446638 () Bool)

(assert (=> b!5161071 (= e!3215973 (and tp!1446639 tp!1446638))))

(assert (= (and b!5160472 ((_ is ElementMatch!14533) (regOne!29579 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161070))

(assert (= (and b!5160472 ((_ is Concat!23378) (regOne!29579 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161071))

(assert (= (and b!5160472 ((_ is Star!14533) (regOne!29579 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161072))

(assert (= (and b!5160472 ((_ is Union!14533) (regOne!29579 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161073))

(declare-fun b!5161076 () Bool)

(declare-fun e!3215974 () Bool)

(declare-fun tp!1446645 () Bool)

(assert (=> b!5161076 (= e!3215974 tp!1446645)))

(declare-fun b!5161077 () Bool)

(declare-fun tp!1446646 () Bool)

(declare-fun tp!1446642 () Bool)

(assert (=> b!5161077 (= e!3215974 (and tp!1446646 tp!1446642))))

(assert (=> b!5160472 (= tp!1446202 e!3215974)))

(declare-fun b!5161074 () Bool)

(assert (=> b!5161074 (= e!3215974 tp_is_empty!38215)))

(declare-fun b!5161075 () Bool)

(declare-fun tp!1446644 () Bool)

(declare-fun tp!1446643 () Bool)

(assert (=> b!5161075 (= e!3215974 (and tp!1446644 tp!1446643))))

(assert (= (and b!5160472 ((_ is ElementMatch!14533) (regTwo!29579 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161074))

(assert (= (and b!5160472 ((_ is Concat!23378) (regTwo!29579 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161075))

(assert (= (and b!5160472 ((_ is Star!14533) (regTwo!29579 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161076))

(assert (= (and b!5160472 ((_ is Union!14533) (regTwo!29579 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161077))

(declare-fun b!5161080 () Bool)

(declare-fun e!3215975 () Bool)

(declare-fun tp!1446650 () Bool)

(assert (=> b!5161080 (= e!3215975 tp!1446650)))

(declare-fun b!5161081 () Bool)

(declare-fun tp!1446651 () Bool)

(declare-fun tp!1446647 () Bool)

(assert (=> b!5161081 (= e!3215975 (and tp!1446651 tp!1446647))))

(assert (=> b!5160486 (= tp!1446224 e!3215975)))

(declare-fun b!5161078 () Bool)

(assert (=> b!5161078 (= e!3215975 tp_is_empty!38215)))

(declare-fun b!5161079 () Bool)

(declare-fun tp!1446649 () Bool)

(declare-fun tp!1446648 () Bool)

(assert (=> b!5161079 (= e!3215975 (and tp!1446649 tp!1446648))))

(assert (= (and b!5160486 ((_ is ElementMatch!14533) (regOne!29578 (regTwo!29578 (regTwo!29578 expr!117))))) b!5161078))

(assert (= (and b!5160486 ((_ is Concat!23378) (regOne!29578 (regTwo!29578 (regTwo!29578 expr!117))))) b!5161079))

(assert (= (and b!5160486 ((_ is Star!14533) (regOne!29578 (regTwo!29578 (regTwo!29578 expr!117))))) b!5161080))

(assert (= (and b!5160486 ((_ is Union!14533) (regOne!29578 (regTwo!29578 (regTwo!29578 expr!117))))) b!5161081))

(declare-fun b!5161084 () Bool)

(declare-fun e!3215976 () Bool)

(declare-fun tp!1446655 () Bool)

(assert (=> b!5161084 (= e!3215976 tp!1446655)))

(declare-fun b!5161085 () Bool)

(declare-fun tp!1446656 () Bool)

(declare-fun tp!1446652 () Bool)

(assert (=> b!5161085 (= e!3215976 (and tp!1446656 tp!1446652))))

(assert (=> b!5160486 (= tp!1446223 e!3215976)))

(declare-fun b!5161082 () Bool)

(assert (=> b!5161082 (= e!3215976 tp_is_empty!38215)))

(declare-fun b!5161083 () Bool)

(declare-fun tp!1446654 () Bool)

(declare-fun tp!1446653 () Bool)

(assert (=> b!5161083 (= e!3215976 (and tp!1446654 tp!1446653))))

(assert (= (and b!5160486 ((_ is ElementMatch!14533) (regTwo!29578 (regTwo!29578 (regTwo!29578 expr!117))))) b!5161082))

(assert (= (and b!5160486 ((_ is Concat!23378) (regTwo!29578 (regTwo!29578 (regTwo!29578 expr!117))))) b!5161083))

(assert (= (and b!5160486 ((_ is Star!14533) (regTwo!29578 (regTwo!29578 (regTwo!29578 expr!117))))) b!5161084))

(assert (= (and b!5160486 ((_ is Union!14533) (regTwo!29578 (regTwo!29578 (regTwo!29578 expr!117))))) b!5161085))

(declare-fun b!5161088 () Bool)

(declare-fun e!3215977 () Bool)

(declare-fun tp!1446660 () Bool)

(assert (=> b!5161088 (= e!3215977 tp!1446660)))

(declare-fun b!5161089 () Bool)

(declare-fun tp!1446661 () Bool)

(declare-fun tp!1446657 () Bool)

(assert (=> b!5161089 (= e!3215977 (and tp!1446661 tp!1446657))))

(assert (=> b!5160478 (= tp!1446214 e!3215977)))

(declare-fun b!5161086 () Bool)

(assert (=> b!5161086 (= e!3215977 tp_is_empty!38215)))

(declare-fun b!5161087 () Bool)

(declare-fun tp!1446659 () Bool)

(declare-fun tp!1446658 () Bool)

(assert (=> b!5161087 (= e!3215977 (and tp!1446659 tp!1446658))))

(assert (= (and b!5160478 ((_ is ElementMatch!14533) (regOne!29578 (regTwo!29579 (reg!14862 expr!117))))) b!5161086))

(assert (= (and b!5160478 ((_ is Concat!23378) (regOne!29578 (regTwo!29579 (reg!14862 expr!117))))) b!5161087))

(assert (= (and b!5160478 ((_ is Star!14533) (regOne!29578 (regTwo!29579 (reg!14862 expr!117))))) b!5161088))

(assert (= (and b!5160478 ((_ is Union!14533) (regOne!29578 (regTwo!29579 (reg!14862 expr!117))))) b!5161089))

(declare-fun b!5161092 () Bool)

(declare-fun e!3215978 () Bool)

(declare-fun tp!1446665 () Bool)

(assert (=> b!5161092 (= e!3215978 tp!1446665)))

(declare-fun b!5161093 () Bool)

(declare-fun tp!1446666 () Bool)

(declare-fun tp!1446662 () Bool)

(assert (=> b!5161093 (= e!3215978 (and tp!1446666 tp!1446662))))

(assert (=> b!5160478 (= tp!1446213 e!3215978)))

(declare-fun b!5161090 () Bool)

(assert (=> b!5161090 (= e!3215978 tp_is_empty!38215)))

(declare-fun b!5161091 () Bool)

(declare-fun tp!1446664 () Bool)

(declare-fun tp!1446663 () Bool)

(assert (=> b!5161091 (= e!3215978 (and tp!1446664 tp!1446663))))

(assert (= (and b!5160478 ((_ is ElementMatch!14533) (regTwo!29578 (regTwo!29579 (reg!14862 expr!117))))) b!5161090))

(assert (= (and b!5160478 ((_ is Concat!23378) (regTwo!29578 (regTwo!29579 (reg!14862 expr!117))))) b!5161091))

(assert (= (and b!5160478 ((_ is Star!14533) (regTwo!29578 (regTwo!29579 (reg!14862 expr!117))))) b!5161092))

(assert (= (and b!5160478 ((_ is Union!14533) (regTwo!29578 (regTwo!29579 (reg!14862 expr!117))))) b!5161093))

(declare-fun b!5161096 () Bool)

(declare-fun e!3215979 () Bool)

(declare-fun tp!1446670 () Bool)

(assert (=> b!5161096 (= e!3215979 tp!1446670)))

(declare-fun b!5161097 () Bool)

(declare-fun tp!1446671 () Bool)

(declare-fun tp!1446667 () Bool)

(assert (=> b!5161097 (= e!3215979 (and tp!1446671 tp!1446667))))

(assert (=> b!5160500 (= tp!1446241 e!3215979)))

(declare-fun b!5161094 () Bool)

(assert (=> b!5161094 (= e!3215979 tp_is_empty!38215)))

(declare-fun b!5161095 () Bool)

(declare-fun tp!1446669 () Bool)

(declare-fun tp!1446668 () Bool)

(assert (=> b!5161095 (= e!3215979 (and tp!1446669 tp!1446668))))

(assert (= (and b!5160500 ((_ is ElementMatch!14533) (regOne!29579 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161094))

(assert (= (and b!5160500 ((_ is Concat!23378) (regOne!29579 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161095))

(assert (= (and b!5160500 ((_ is Star!14533) (regOne!29579 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161096))

(assert (= (and b!5160500 ((_ is Union!14533) (regOne!29579 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161097))

(declare-fun b!5161100 () Bool)

(declare-fun e!3215980 () Bool)

(declare-fun tp!1446675 () Bool)

(assert (=> b!5161100 (= e!3215980 tp!1446675)))

(declare-fun b!5161101 () Bool)

(declare-fun tp!1446676 () Bool)

(declare-fun tp!1446672 () Bool)

(assert (=> b!5161101 (= e!3215980 (and tp!1446676 tp!1446672))))

(assert (=> b!5160500 (= tp!1446237 e!3215980)))

(declare-fun b!5161098 () Bool)

(assert (=> b!5161098 (= e!3215980 tp_is_empty!38215)))

(declare-fun b!5161099 () Bool)

(declare-fun tp!1446674 () Bool)

(declare-fun tp!1446673 () Bool)

(assert (=> b!5161099 (= e!3215980 (and tp!1446674 tp!1446673))))

(assert (= (and b!5160500 ((_ is ElementMatch!14533) (regTwo!29579 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161098))

(assert (= (and b!5160500 ((_ is Concat!23378) (regTwo!29579 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161099))

(assert (= (and b!5160500 ((_ is Star!14533) (regTwo!29579 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161100))

(assert (= (and b!5160500 ((_ is Union!14533) (regTwo!29579 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161101))

(declare-fun b!5161104 () Bool)

(declare-fun e!3215981 () Bool)

(declare-fun tp!1446680 () Bool)

(assert (=> b!5161104 (= e!3215981 tp!1446680)))

(declare-fun b!5161105 () Bool)

(declare-fun tp!1446681 () Bool)

(declare-fun tp!1446677 () Bool)

(assert (=> b!5161105 (= e!3215981 (and tp!1446681 tp!1446677))))

(assert (=> b!5160517 (= tp!1446263 e!3215981)))

(declare-fun b!5161102 () Bool)

(assert (=> b!5161102 (= e!3215981 tp_is_empty!38215)))

(declare-fun b!5161103 () Bool)

(declare-fun tp!1446679 () Bool)

(declare-fun tp!1446678 () Bool)

(assert (=> b!5161103 (= e!3215981 (and tp!1446679 tp!1446678))))

(assert (= (and b!5160517 ((_ is ElementMatch!14533) (regOne!29579 (regTwo!29578 (regOne!29578 expr!117))))) b!5161102))

(assert (= (and b!5160517 ((_ is Concat!23378) (regOne!29579 (regTwo!29578 (regOne!29578 expr!117))))) b!5161103))

(assert (= (and b!5160517 ((_ is Star!14533) (regOne!29579 (regTwo!29578 (regOne!29578 expr!117))))) b!5161104))

(assert (= (and b!5160517 ((_ is Union!14533) (regOne!29579 (regTwo!29578 (regOne!29578 expr!117))))) b!5161105))

(declare-fun b!5161108 () Bool)

(declare-fun e!3215982 () Bool)

(declare-fun tp!1446685 () Bool)

(assert (=> b!5161108 (= e!3215982 tp!1446685)))

(declare-fun b!5161109 () Bool)

(declare-fun tp!1446686 () Bool)

(declare-fun tp!1446682 () Bool)

(assert (=> b!5161109 (= e!3215982 (and tp!1446686 tp!1446682))))

(assert (=> b!5160517 (= tp!1446259 e!3215982)))

(declare-fun b!5161106 () Bool)

(assert (=> b!5161106 (= e!3215982 tp_is_empty!38215)))

(declare-fun b!5161107 () Bool)

(declare-fun tp!1446684 () Bool)

(declare-fun tp!1446683 () Bool)

(assert (=> b!5161107 (= e!3215982 (and tp!1446684 tp!1446683))))

(assert (= (and b!5160517 ((_ is ElementMatch!14533) (regTwo!29579 (regTwo!29578 (regOne!29578 expr!117))))) b!5161106))

(assert (= (and b!5160517 ((_ is Concat!23378) (regTwo!29579 (regTwo!29578 (regOne!29578 expr!117))))) b!5161107))

(assert (= (and b!5160517 ((_ is Star!14533) (regTwo!29579 (regTwo!29578 (regOne!29578 expr!117))))) b!5161108))

(assert (= (and b!5160517 ((_ is Union!14533) (regTwo!29579 (regTwo!29578 (regOne!29578 expr!117))))) b!5161109))

(declare-fun b!5161112 () Bool)

(declare-fun e!3215983 () Bool)

(declare-fun tp!1446690 () Bool)

(assert (=> b!5161112 (= e!3215983 tp!1446690)))

(declare-fun b!5161113 () Bool)

(declare-fun tp!1446691 () Bool)

(declare-fun tp!1446687 () Bool)

(assert (=> b!5161113 (= e!3215983 (and tp!1446691 tp!1446687))))

(assert (=> b!5160484 (= tp!1446221 e!3215983)))

(declare-fun b!5161110 () Bool)

(assert (=> b!5161110 (= e!3215983 tp_is_empty!38215)))

(declare-fun b!5161111 () Bool)

(declare-fun tp!1446689 () Bool)

(declare-fun tp!1446688 () Bool)

(assert (=> b!5161111 (= e!3215983 (and tp!1446689 tp!1446688))))

(assert (= (and b!5160484 ((_ is ElementMatch!14533) (regOne!29579 (regOne!29578 (regTwo!29578 expr!117))))) b!5161110))

(assert (= (and b!5160484 ((_ is Concat!23378) (regOne!29579 (regOne!29578 (regTwo!29578 expr!117))))) b!5161111))

(assert (= (and b!5160484 ((_ is Star!14533) (regOne!29579 (regOne!29578 (regTwo!29578 expr!117))))) b!5161112))

(assert (= (and b!5160484 ((_ is Union!14533) (regOne!29579 (regOne!29578 (regTwo!29578 expr!117))))) b!5161113))

(declare-fun b!5161116 () Bool)

(declare-fun e!3215984 () Bool)

(declare-fun tp!1446695 () Bool)

(assert (=> b!5161116 (= e!3215984 tp!1446695)))

(declare-fun b!5161117 () Bool)

(declare-fun tp!1446696 () Bool)

(declare-fun tp!1446692 () Bool)

(assert (=> b!5161117 (= e!3215984 (and tp!1446696 tp!1446692))))

(assert (=> b!5160484 (= tp!1446217 e!3215984)))

(declare-fun b!5161114 () Bool)

(assert (=> b!5161114 (= e!3215984 tp_is_empty!38215)))

(declare-fun b!5161115 () Bool)

(declare-fun tp!1446694 () Bool)

(declare-fun tp!1446693 () Bool)

(assert (=> b!5161115 (= e!3215984 (and tp!1446694 tp!1446693))))

(assert (= (and b!5160484 ((_ is ElementMatch!14533) (regTwo!29579 (regOne!29578 (regTwo!29578 expr!117))))) b!5161114))

(assert (= (and b!5160484 ((_ is Concat!23378) (regTwo!29579 (regOne!29578 (regTwo!29578 expr!117))))) b!5161115))

(assert (= (and b!5160484 ((_ is Star!14533) (regTwo!29579 (regOne!29578 (regTwo!29578 expr!117))))) b!5161116))

(assert (= (and b!5160484 ((_ is Union!14533) (regTwo!29579 (regOne!29578 (regTwo!29578 expr!117))))) b!5161117))

(declare-fun b!5161120 () Bool)

(declare-fun e!3215985 () Bool)

(declare-fun tp!1446700 () Bool)

(assert (=> b!5161120 (= e!3215985 tp!1446700)))

(declare-fun b!5161121 () Bool)

(declare-fun tp!1446701 () Bool)

(declare-fun tp!1446697 () Bool)

(assert (=> b!5161121 (= e!3215985 (and tp!1446701 tp!1446697))))

(assert (=> b!5160460 (= tp!1446194 e!3215985)))

(declare-fun b!5161118 () Bool)

(assert (=> b!5161118 (= e!3215985 tp_is_empty!38215)))

(declare-fun b!5161119 () Bool)

(declare-fun tp!1446699 () Bool)

(declare-fun tp!1446698 () Bool)

(assert (=> b!5161119 (= e!3215985 (and tp!1446699 tp!1446698))))

(assert (= (and b!5160460 ((_ is ElementMatch!14533) (regOne!29578 (reg!14862 (reg!14862 expr!117))))) b!5161118))

(assert (= (and b!5160460 ((_ is Concat!23378) (regOne!29578 (reg!14862 (reg!14862 expr!117))))) b!5161119))

(assert (= (and b!5160460 ((_ is Star!14533) (regOne!29578 (reg!14862 (reg!14862 expr!117))))) b!5161120))

(assert (= (and b!5160460 ((_ is Union!14533) (regOne!29578 (reg!14862 (reg!14862 expr!117))))) b!5161121))

(declare-fun b!5161124 () Bool)

(declare-fun e!3215986 () Bool)

(declare-fun tp!1446705 () Bool)

(assert (=> b!5161124 (= e!3215986 tp!1446705)))

(declare-fun b!5161125 () Bool)

(declare-fun tp!1446706 () Bool)

(declare-fun tp!1446702 () Bool)

(assert (=> b!5161125 (= e!3215986 (and tp!1446706 tp!1446702))))

(assert (=> b!5160460 (= tp!1446193 e!3215986)))

(declare-fun b!5161122 () Bool)

(assert (=> b!5161122 (= e!3215986 tp_is_empty!38215)))

(declare-fun b!5161123 () Bool)

(declare-fun tp!1446704 () Bool)

(declare-fun tp!1446703 () Bool)

(assert (=> b!5161123 (= e!3215986 (and tp!1446704 tp!1446703))))

(assert (= (and b!5160460 ((_ is ElementMatch!14533) (regTwo!29578 (reg!14862 (reg!14862 expr!117))))) b!5161122))

(assert (= (and b!5160460 ((_ is Concat!23378) (regTwo!29578 (reg!14862 (reg!14862 expr!117))))) b!5161123))

(assert (= (and b!5160460 ((_ is Star!14533) (regTwo!29578 (reg!14862 (reg!14862 expr!117))))) b!5161124))

(assert (= (and b!5160460 ((_ is Union!14533) (regTwo!29578 (reg!14862 (reg!14862 expr!117))))) b!5161125))

(declare-fun b!5161128 () Bool)

(declare-fun e!3215987 () Bool)

(declare-fun tp!1446710 () Bool)

(assert (=> b!5161128 (= e!3215987 tp!1446710)))

(declare-fun b!5161129 () Bool)

(declare-fun tp!1446711 () Bool)

(declare-fun tp!1446707 () Bool)

(assert (=> b!5161129 (= e!3215987 (and tp!1446711 tp!1446707))))

(assert (=> b!5160414 (= tp!1446136 e!3215987)))

(declare-fun b!5161126 () Bool)

(assert (=> b!5161126 (= e!3215987 tp_is_empty!38215)))

(declare-fun b!5161127 () Bool)

(declare-fun tp!1446709 () Bool)

(declare-fun tp!1446708 () Bool)

(assert (=> b!5161127 (= e!3215987 (and tp!1446709 tp!1446708))))

(assert (= (and b!5160414 ((_ is ElementMatch!14533) (regOne!29579 (reg!14862 (regOne!29579 expr!117))))) b!5161126))

(assert (= (and b!5160414 ((_ is Concat!23378) (regOne!29579 (reg!14862 (regOne!29579 expr!117))))) b!5161127))

(assert (= (and b!5160414 ((_ is Star!14533) (regOne!29579 (reg!14862 (regOne!29579 expr!117))))) b!5161128))

(assert (= (and b!5160414 ((_ is Union!14533) (regOne!29579 (reg!14862 (regOne!29579 expr!117))))) b!5161129))

(declare-fun b!5161132 () Bool)

(declare-fun e!3215988 () Bool)

(declare-fun tp!1446715 () Bool)

(assert (=> b!5161132 (= e!3215988 tp!1446715)))

(declare-fun b!5161133 () Bool)

(declare-fun tp!1446716 () Bool)

(declare-fun tp!1446712 () Bool)

(assert (=> b!5161133 (= e!3215988 (and tp!1446716 tp!1446712))))

(assert (=> b!5160414 (= tp!1446132 e!3215988)))

(declare-fun b!5161130 () Bool)

(assert (=> b!5161130 (= e!3215988 tp_is_empty!38215)))

(declare-fun b!5161131 () Bool)

(declare-fun tp!1446714 () Bool)

(declare-fun tp!1446713 () Bool)

(assert (=> b!5161131 (= e!3215988 (and tp!1446714 tp!1446713))))

(assert (= (and b!5160414 ((_ is ElementMatch!14533) (regTwo!29579 (reg!14862 (regOne!29579 expr!117))))) b!5161130))

(assert (= (and b!5160414 ((_ is Concat!23378) (regTwo!29579 (reg!14862 (regOne!29579 expr!117))))) b!5161131))

(assert (= (and b!5160414 ((_ is Star!14533) (regTwo!29579 (reg!14862 (regOne!29579 expr!117))))) b!5161132))

(assert (= (and b!5160414 ((_ is Union!14533) (regTwo!29579 (reg!14862 (regOne!29579 expr!117))))) b!5161133))

(declare-fun b!5161136 () Bool)

(declare-fun e!3215989 () Bool)

(declare-fun tp!1446720 () Bool)

(assert (=> b!5161136 (= e!3215989 tp!1446720)))

(declare-fun b!5161137 () Bool)

(declare-fun tp!1446721 () Bool)

(declare-fun tp!1446717 () Bool)

(assert (=> b!5161137 (= e!3215989 (and tp!1446721 tp!1446717))))

(assert (=> b!5160421 (= tp!1446145 e!3215989)))

(declare-fun b!5161134 () Bool)

(assert (=> b!5161134 (= e!3215989 tp_is_empty!38215)))

(declare-fun b!5161135 () Bool)

(declare-fun tp!1446719 () Bool)

(declare-fun tp!1446718 () Bool)

(assert (=> b!5161135 (= e!3215989 (and tp!1446719 tp!1446718))))

(assert (= (and b!5160421 ((_ is ElementMatch!14533) (reg!14862 (regTwo!29578 (reg!14862 expr!117))))) b!5161134))

(assert (= (and b!5160421 ((_ is Concat!23378) (reg!14862 (regTwo!29578 (reg!14862 expr!117))))) b!5161135))

(assert (= (and b!5160421 ((_ is Star!14533) (reg!14862 (regTwo!29578 (reg!14862 expr!117))))) b!5161136))

(assert (= (and b!5160421 ((_ is Union!14533) (reg!14862 (regTwo!29578 (reg!14862 expr!117))))) b!5161137))

(declare-fun b!5161140 () Bool)

(declare-fun e!3215990 () Bool)

(declare-fun tp!1446725 () Bool)

(assert (=> b!5161140 (= e!3215990 tp!1446725)))

(declare-fun b!5161141 () Bool)

(declare-fun tp!1446726 () Bool)

(declare-fun tp!1446722 () Bool)

(assert (=> b!5161141 (= e!3215990 (and tp!1446726 tp!1446722))))

(assert (=> b!5160462 (= tp!1446196 e!3215990)))

(declare-fun b!5161138 () Bool)

(assert (=> b!5161138 (= e!3215990 tp_is_empty!38215)))

(declare-fun b!5161139 () Bool)

(declare-fun tp!1446724 () Bool)

(declare-fun tp!1446723 () Bool)

(assert (=> b!5161139 (= e!3215990 (and tp!1446724 tp!1446723))))

(assert (= (and b!5160462 ((_ is ElementMatch!14533) (regOne!29579 (reg!14862 (reg!14862 expr!117))))) b!5161138))

(assert (= (and b!5160462 ((_ is Concat!23378) (regOne!29579 (reg!14862 (reg!14862 expr!117))))) b!5161139))

(assert (= (and b!5160462 ((_ is Star!14533) (regOne!29579 (reg!14862 (reg!14862 expr!117))))) b!5161140))

(assert (= (and b!5160462 ((_ is Union!14533) (regOne!29579 (reg!14862 (reg!14862 expr!117))))) b!5161141))

(declare-fun b!5161144 () Bool)

(declare-fun e!3215991 () Bool)

(declare-fun tp!1446730 () Bool)

(assert (=> b!5161144 (= e!3215991 tp!1446730)))

(declare-fun b!5161145 () Bool)

(declare-fun tp!1446731 () Bool)

(declare-fun tp!1446727 () Bool)

(assert (=> b!5161145 (= e!3215991 (and tp!1446731 tp!1446727))))

(assert (=> b!5160462 (= tp!1446192 e!3215991)))

(declare-fun b!5161142 () Bool)

(assert (=> b!5161142 (= e!3215991 tp_is_empty!38215)))

(declare-fun b!5161143 () Bool)

(declare-fun tp!1446729 () Bool)

(declare-fun tp!1446728 () Bool)

(assert (=> b!5161143 (= e!3215991 (and tp!1446729 tp!1446728))))

(assert (= (and b!5160462 ((_ is ElementMatch!14533) (regTwo!29579 (reg!14862 (reg!14862 expr!117))))) b!5161142))

(assert (= (and b!5160462 ((_ is Concat!23378) (regTwo!29579 (reg!14862 (reg!14862 expr!117))))) b!5161143))

(assert (= (and b!5160462 ((_ is Star!14533) (regTwo!29579 (reg!14862 (reg!14862 expr!117))))) b!5161144))

(assert (= (and b!5160462 ((_ is Union!14533) (regTwo!29579 (reg!14862 (reg!14862 expr!117))))) b!5161145))

(declare-fun b!5161148 () Bool)

(declare-fun e!3215992 () Bool)

(declare-fun tp!1446735 () Bool)

(assert (=> b!5161148 (= e!3215992 tp!1446735)))

(declare-fun b!5161149 () Bool)

(declare-fun tp!1446736 () Bool)

(declare-fun tp!1446732 () Bool)

(assert (=> b!5161149 (= e!3215992 (and tp!1446736 tp!1446732))))

(assert (=> b!5160428 (= tp!1446154 e!3215992)))

(declare-fun b!5161146 () Bool)

(assert (=> b!5161146 (= e!3215992 tp_is_empty!38215)))

(declare-fun b!5161147 () Bool)

(declare-fun tp!1446734 () Bool)

(declare-fun tp!1446733 () Bool)

(assert (=> b!5161147 (= e!3215992 (and tp!1446734 tp!1446733))))

(assert (= (and b!5160428 ((_ is ElementMatch!14533) (regOne!29578 (regTwo!29579 (regOne!29578 expr!117))))) b!5161146))

(assert (= (and b!5160428 ((_ is Concat!23378) (regOne!29578 (regTwo!29579 (regOne!29578 expr!117))))) b!5161147))

(assert (= (and b!5160428 ((_ is Star!14533) (regOne!29578 (regTwo!29579 (regOne!29578 expr!117))))) b!5161148))

(assert (= (and b!5160428 ((_ is Union!14533) (regOne!29578 (regTwo!29579 (regOne!29578 expr!117))))) b!5161149))

(declare-fun b!5161152 () Bool)

(declare-fun e!3215993 () Bool)

(declare-fun tp!1446740 () Bool)

(assert (=> b!5161152 (= e!3215993 tp!1446740)))

(declare-fun b!5161153 () Bool)

(declare-fun tp!1446741 () Bool)

(declare-fun tp!1446737 () Bool)

(assert (=> b!5161153 (= e!3215993 (and tp!1446741 tp!1446737))))

(assert (=> b!5160428 (= tp!1446153 e!3215993)))

(declare-fun b!5161150 () Bool)

(assert (=> b!5161150 (= e!3215993 tp_is_empty!38215)))

(declare-fun b!5161151 () Bool)

(declare-fun tp!1446739 () Bool)

(declare-fun tp!1446738 () Bool)

(assert (=> b!5161151 (= e!3215993 (and tp!1446739 tp!1446738))))

(assert (= (and b!5160428 ((_ is ElementMatch!14533) (regTwo!29578 (regTwo!29579 (regOne!29578 expr!117))))) b!5161150))

(assert (= (and b!5160428 ((_ is Concat!23378) (regTwo!29578 (regTwo!29579 (regOne!29578 expr!117))))) b!5161151))

(assert (= (and b!5160428 ((_ is Star!14533) (regTwo!29578 (regTwo!29579 (regOne!29578 expr!117))))) b!5161152))

(assert (= (and b!5160428 ((_ is Union!14533) (regTwo!29578 (regTwo!29579 (regOne!29578 expr!117))))) b!5161153))

(declare-fun b!5161156 () Bool)

(declare-fun e!3215994 () Bool)

(declare-fun tp!1446745 () Bool)

(assert (=> b!5161156 (= e!3215994 tp!1446745)))

(declare-fun b!5161157 () Bool)

(declare-fun tp!1446746 () Bool)

(declare-fun tp!1446742 () Bool)

(assert (=> b!5161157 (= e!3215994 (and tp!1446746 tp!1446742))))

(assert (=> b!5160437 (= tp!1446165 e!3215994)))

(declare-fun b!5161154 () Bool)

(assert (=> b!5161154 (= e!3215994 tp_is_empty!38215)))

(declare-fun b!5161155 () Bool)

(declare-fun tp!1446744 () Bool)

(declare-fun tp!1446743 () Bool)

(assert (=> b!5161155 (= e!3215994 (and tp!1446744 tp!1446743))))

(assert (= (and b!5160437 ((_ is ElementMatch!14533) (reg!14862 (regOne!29578 (regOne!29579 expr!117))))) b!5161154))

(assert (= (and b!5160437 ((_ is Concat!23378) (reg!14862 (regOne!29578 (regOne!29579 expr!117))))) b!5161155))

(assert (= (and b!5160437 ((_ is Star!14533) (reg!14862 (regOne!29578 (regOne!29579 expr!117))))) b!5161156))

(assert (= (and b!5160437 ((_ is Union!14533) (reg!14862 (regOne!29578 (regOne!29579 expr!117))))) b!5161157))

(declare-fun b!5161160 () Bool)

(declare-fun e!3215995 () Bool)

(declare-fun tp!1446750 () Bool)

(assert (=> b!5161160 (= e!3215995 tp!1446750)))

(declare-fun b!5161161 () Bool)

(declare-fun tp!1446751 () Bool)

(declare-fun tp!1446747 () Bool)

(assert (=> b!5161161 (= e!3215995 (and tp!1446751 tp!1446747))))

(assert (=> b!5160430 (= tp!1446156 e!3215995)))

(declare-fun b!5161158 () Bool)

(assert (=> b!5161158 (= e!3215995 tp_is_empty!38215)))

(declare-fun b!5161159 () Bool)

(declare-fun tp!1446749 () Bool)

(declare-fun tp!1446748 () Bool)

(assert (=> b!5161159 (= e!3215995 (and tp!1446749 tp!1446748))))

(assert (= (and b!5160430 ((_ is ElementMatch!14533) (regOne!29579 (regTwo!29579 (regOne!29578 expr!117))))) b!5161158))

(assert (= (and b!5160430 ((_ is Concat!23378) (regOne!29579 (regTwo!29579 (regOne!29578 expr!117))))) b!5161159))

(assert (= (and b!5160430 ((_ is Star!14533) (regOne!29579 (regTwo!29579 (regOne!29578 expr!117))))) b!5161160))

(assert (= (and b!5160430 ((_ is Union!14533) (regOne!29579 (regTwo!29579 (regOne!29578 expr!117))))) b!5161161))

(declare-fun b!5161164 () Bool)

(declare-fun e!3215996 () Bool)

(declare-fun tp!1446755 () Bool)

(assert (=> b!5161164 (= e!3215996 tp!1446755)))

(declare-fun b!5161165 () Bool)

(declare-fun tp!1446756 () Bool)

(declare-fun tp!1446752 () Bool)

(assert (=> b!5161165 (= e!3215996 (and tp!1446756 tp!1446752))))

(assert (=> b!5160430 (= tp!1446152 e!3215996)))

(declare-fun b!5161162 () Bool)

(assert (=> b!5161162 (= e!3215996 tp_is_empty!38215)))

(declare-fun b!5161163 () Bool)

(declare-fun tp!1446754 () Bool)

(declare-fun tp!1446753 () Bool)

(assert (=> b!5161163 (= e!3215996 (and tp!1446754 tp!1446753))))

(assert (= (and b!5160430 ((_ is ElementMatch!14533) (regTwo!29579 (regTwo!29579 (regOne!29578 expr!117))))) b!5161162))

(assert (= (and b!5160430 ((_ is Concat!23378) (regTwo!29579 (regTwo!29579 (regOne!29578 expr!117))))) b!5161163))

(assert (= (and b!5160430 ((_ is Star!14533) (regTwo!29579 (regTwo!29579 (regOne!29578 expr!117))))) b!5161164))

(assert (= (and b!5160430 ((_ is Union!14533) (regTwo!29579 (regTwo!29579 (regOne!29578 expr!117))))) b!5161165))

(declare-fun b!5161168 () Bool)

(declare-fun e!3215997 () Bool)

(declare-fun tp!1446760 () Bool)

(assert (=> b!5161168 (= e!3215997 tp!1446760)))

(declare-fun b!5161169 () Bool)

(declare-fun tp!1446761 () Bool)

(declare-fun tp!1446757 () Bool)

(assert (=> b!5161169 (= e!3215997 (and tp!1446761 tp!1446757))))

(assert (=> b!5160453 (= tp!1446185 e!3215997)))

(declare-fun b!5161166 () Bool)

(assert (=> b!5161166 (= e!3215997 tp_is_empty!38215)))

(declare-fun b!5161167 () Bool)

(declare-fun tp!1446759 () Bool)

(declare-fun tp!1446758 () Bool)

(assert (=> b!5161167 (= e!3215997 (and tp!1446759 tp!1446758))))

(assert (= (and b!5160453 ((_ is ElementMatch!14533) (reg!14862 (regOne!29579 (regOne!29579 expr!117))))) b!5161166))

(assert (= (and b!5160453 ((_ is Concat!23378) (reg!14862 (regOne!29579 (regOne!29579 expr!117))))) b!5161167))

(assert (= (and b!5160453 ((_ is Star!14533) (reg!14862 (regOne!29579 (regOne!29579 expr!117))))) b!5161168))

(assert (= (and b!5160453 ((_ is Union!14533) (reg!14862 (regOne!29579 (regOne!29579 expr!117))))) b!5161169))

(declare-fun b!5161172 () Bool)

(declare-fun e!3215998 () Bool)

(declare-fun tp!1446765 () Bool)

(assert (=> b!5161172 (= e!3215998 tp!1446765)))

(declare-fun b!5161173 () Bool)

(declare-fun tp!1446766 () Bool)

(declare-fun tp!1446762 () Bool)

(assert (=> b!5161173 (= e!3215998 (and tp!1446766 tp!1446762))))

(assert (=> b!5160444 (= tp!1446174 e!3215998)))

(declare-fun b!5161170 () Bool)

(assert (=> b!5161170 (= e!3215998 tp_is_empty!38215)))

(declare-fun b!5161171 () Bool)

(declare-fun tp!1446764 () Bool)

(declare-fun tp!1446763 () Bool)

(assert (=> b!5161171 (= e!3215998 (and tp!1446764 tp!1446763))))

(assert (= (and b!5160444 ((_ is ElementMatch!14533) (regOne!29578 (regOne!29579 (regTwo!29578 expr!117))))) b!5161170))

(assert (= (and b!5160444 ((_ is Concat!23378) (regOne!29578 (regOne!29579 (regTwo!29578 expr!117))))) b!5161171))

(assert (= (and b!5160444 ((_ is Star!14533) (regOne!29578 (regOne!29579 (regTwo!29578 expr!117))))) b!5161172))

(assert (= (and b!5160444 ((_ is Union!14533) (regOne!29578 (regOne!29579 (regTwo!29578 expr!117))))) b!5161173))

(declare-fun b!5161176 () Bool)

(declare-fun e!3215999 () Bool)

(declare-fun tp!1446770 () Bool)

(assert (=> b!5161176 (= e!3215999 tp!1446770)))

(declare-fun b!5161177 () Bool)

(declare-fun tp!1446771 () Bool)

(declare-fun tp!1446767 () Bool)

(assert (=> b!5161177 (= e!3215999 (and tp!1446771 tp!1446767))))

(assert (=> b!5160444 (= tp!1446173 e!3215999)))

(declare-fun b!5161174 () Bool)

(assert (=> b!5161174 (= e!3215999 tp_is_empty!38215)))

(declare-fun b!5161175 () Bool)

(declare-fun tp!1446769 () Bool)

(declare-fun tp!1446768 () Bool)

(assert (=> b!5161175 (= e!3215999 (and tp!1446769 tp!1446768))))

(assert (= (and b!5160444 ((_ is ElementMatch!14533) (regTwo!29578 (regOne!29579 (regTwo!29578 expr!117))))) b!5161174))

(assert (= (and b!5160444 ((_ is Concat!23378) (regTwo!29578 (regOne!29579 (regTwo!29578 expr!117))))) b!5161175))

(assert (= (and b!5160444 ((_ is Star!14533) (regTwo!29578 (regOne!29579 (regTwo!29578 expr!117))))) b!5161176))

(assert (= (and b!5160444 ((_ is Union!14533) (regTwo!29578 (regOne!29579 (regTwo!29578 expr!117))))) b!5161177))

(declare-fun b!5161180 () Bool)

(declare-fun e!3216000 () Bool)

(declare-fun tp!1446775 () Bool)

(assert (=> b!5161180 (= e!3216000 tp!1446775)))

(declare-fun b!5161181 () Bool)

(declare-fun tp!1446776 () Bool)

(declare-fun tp!1446772 () Bool)

(assert (=> b!5161181 (= e!3216000 (and tp!1446776 tp!1446772))))

(assert (=> b!5160503 (= tp!1446245 e!3216000)))

(declare-fun b!5161178 () Bool)

(assert (=> b!5161178 (= e!3216000 tp_is_empty!38215)))

(declare-fun b!5161179 () Bool)

(declare-fun tp!1446774 () Bool)

(declare-fun tp!1446773 () Bool)

(assert (=> b!5161179 (= e!3216000 (and tp!1446774 tp!1446773))))

(assert (= (and b!5160503 ((_ is ElementMatch!14533) (reg!14862 (reg!14862 (regTwo!29578 expr!117))))) b!5161178))

(assert (= (and b!5160503 ((_ is Concat!23378) (reg!14862 (reg!14862 (regTwo!29578 expr!117))))) b!5161179))

(assert (= (and b!5160503 ((_ is Star!14533) (reg!14862 (reg!14862 (regTwo!29578 expr!117))))) b!5161180))

(assert (= (and b!5160503 ((_ is Union!14533) (reg!14862 (reg!14862 (regTwo!29578 expr!117))))) b!5161181))

(declare-fun b!5161184 () Bool)

(declare-fun e!3216001 () Bool)

(declare-fun tp!1446780 () Bool)

(assert (=> b!5161184 (= e!3216001 tp!1446780)))

(declare-fun b!5161185 () Bool)

(declare-fun tp!1446781 () Bool)

(declare-fun tp!1446777 () Bool)

(assert (=> b!5161185 (= e!3216001 (and tp!1446781 tp!1446777))))

(assert (=> b!5160475 (= tp!1446210 e!3216001)))

(declare-fun b!5161182 () Bool)

(assert (=> b!5161182 (= e!3216001 tp_is_empty!38215)))

(declare-fun b!5161183 () Bool)

(declare-fun tp!1446779 () Bool)

(declare-fun tp!1446778 () Bool)

(assert (=> b!5161183 (= e!3216001 (and tp!1446779 tp!1446778))))

(assert (= (and b!5160475 ((_ is ElementMatch!14533) (reg!14862 (regOne!29579 (reg!14862 expr!117))))) b!5161182))

(assert (= (and b!5160475 ((_ is Concat!23378) (reg!14862 (regOne!29579 (reg!14862 expr!117))))) b!5161183))

(assert (= (and b!5160475 ((_ is Star!14533) (reg!14862 (regOne!29579 (reg!14862 expr!117))))) b!5161184))

(assert (= (and b!5160475 ((_ is Union!14533) (reg!14862 (regOne!29579 (reg!14862 expr!117))))) b!5161185))

(declare-fun b!5161188 () Bool)

(declare-fun e!3216002 () Bool)

(declare-fun tp!1446785 () Bool)

(assert (=> b!5161188 (= e!3216002 tp!1446785)))

(declare-fun b!5161189 () Bool)

(declare-fun tp!1446786 () Bool)

(declare-fun tp!1446782 () Bool)

(assert (=> b!5161189 (= e!3216002 (and tp!1446786 tp!1446782))))

(assert (=> b!5160491 (= tp!1446230 e!3216002)))

(declare-fun b!5161186 () Bool)

(assert (=> b!5161186 (= e!3216002 tp_is_empty!38215)))

(declare-fun b!5161187 () Bool)

(declare-fun tp!1446784 () Bool)

(declare-fun tp!1446783 () Bool)

(assert (=> b!5161187 (= e!3216002 (and tp!1446784 tp!1446783))))

(assert (= (and b!5160491 ((_ is ElementMatch!14533) (reg!14862 (reg!14862 (regOne!29578 expr!117))))) b!5161186))

(assert (= (and b!5160491 ((_ is Concat!23378) (reg!14862 (reg!14862 (regOne!29578 expr!117))))) b!5161187))

(assert (= (and b!5160491 ((_ is Star!14533) (reg!14862 (reg!14862 (regOne!29578 expr!117))))) b!5161188))

(assert (= (and b!5160491 ((_ is Union!14533) (reg!14862 (reg!14862 (regOne!29578 expr!117))))) b!5161189))

(declare-fun b!5161192 () Bool)

(declare-fun e!3216003 () Bool)

(declare-fun tp!1446790 () Bool)

(assert (=> b!5161192 (= e!3216003 tp!1446790)))

(declare-fun b!5161193 () Bool)

(declare-fun tp!1446791 () Bool)

(declare-fun tp!1446787 () Bool)

(assert (=> b!5161193 (= e!3216003 (and tp!1446791 tp!1446787))))

(assert (=> b!5160511 (= tp!1446256 e!3216003)))

(declare-fun b!5161190 () Bool)

(assert (=> b!5161190 (= e!3216003 tp_is_empty!38215)))

(declare-fun b!5161191 () Bool)

(declare-fun tp!1446789 () Bool)

(declare-fun tp!1446788 () Bool)

(assert (=> b!5161191 (= e!3216003 (and tp!1446789 tp!1446788))))

(assert (= (and b!5160511 ((_ is ElementMatch!14533) (regOne!29578 (regOne!29578 (regOne!29578 expr!117))))) b!5161190))

(assert (= (and b!5160511 ((_ is Concat!23378) (regOne!29578 (regOne!29578 (regOne!29578 expr!117))))) b!5161191))

(assert (= (and b!5160511 ((_ is Star!14533) (regOne!29578 (regOne!29578 (regOne!29578 expr!117))))) b!5161192))

(assert (= (and b!5160511 ((_ is Union!14533) (regOne!29578 (regOne!29578 (regOne!29578 expr!117))))) b!5161193))

(declare-fun b!5161196 () Bool)

(declare-fun e!3216004 () Bool)

(declare-fun tp!1446795 () Bool)

(assert (=> b!5161196 (= e!3216004 tp!1446795)))

(declare-fun b!5161197 () Bool)

(declare-fun tp!1446796 () Bool)

(declare-fun tp!1446792 () Bool)

(assert (=> b!5161197 (= e!3216004 (and tp!1446796 tp!1446792))))

(assert (=> b!5160511 (= tp!1446255 e!3216004)))

(declare-fun b!5161194 () Bool)

(assert (=> b!5161194 (= e!3216004 tp_is_empty!38215)))

(declare-fun b!5161195 () Bool)

(declare-fun tp!1446794 () Bool)

(declare-fun tp!1446793 () Bool)

(assert (=> b!5161195 (= e!3216004 (and tp!1446794 tp!1446793))))

(assert (= (and b!5160511 ((_ is ElementMatch!14533) (regTwo!29578 (regOne!29578 (regOne!29578 expr!117))))) b!5161194))

(assert (= (and b!5160511 ((_ is Concat!23378) (regTwo!29578 (regOne!29578 (regOne!29578 expr!117))))) b!5161195))

(assert (= (and b!5160511 ((_ is Star!14533) (regTwo!29578 (regOne!29578 (regOne!29578 expr!117))))) b!5161196))

(assert (= (and b!5160511 ((_ is Union!14533) (regTwo!29578 (regOne!29578 (regOne!29578 expr!117))))) b!5161197))

(declare-fun b!5161200 () Bool)

(declare-fun e!3216005 () Bool)

(declare-fun tp!1446800 () Bool)

(assert (=> b!5161200 (= e!3216005 tp!1446800)))

(declare-fun b!5161201 () Bool)

(declare-fun tp!1446801 () Bool)

(declare-fun tp!1446797 () Bool)

(assert (=> b!5161201 (= e!3216005 (and tp!1446801 tp!1446797))))

(assert (=> b!5160513 (= tp!1446258 e!3216005)))

(declare-fun b!5161198 () Bool)

(assert (=> b!5161198 (= e!3216005 tp_is_empty!38215)))

(declare-fun b!5161199 () Bool)

(declare-fun tp!1446799 () Bool)

(declare-fun tp!1446798 () Bool)

(assert (=> b!5161199 (= e!3216005 (and tp!1446799 tp!1446798))))

(assert (= (and b!5160513 ((_ is ElementMatch!14533) (regOne!29579 (regOne!29578 (regOne!29578 expr!117))))) b!5161198))

(assert (= (and b!5160513 ((_ is Concat!23378) (regOne!29579 (regOne!29578 (regOne!29578 expr!117))))) b!5161199))

(assert (= (and b!5160513 ((_ is Star!14533) (regOne!29579 (regOne!29578 (regOne!29578 expr!117))))) b!5161200))

(assert (= (and b!5160513 ((_ is Union!14533) (regOne!29579 (regOne!29578 (regOne!29578 expr!117))))) b!5161201))

(declare-fun b!5161204 () Bool)

(declare-fun e!3216006 () Bool)

(declare-fun tp!1446805 () Bool)

(assert (=> b!5161204 (= e!3216006 tp!1446805)))

(declare-fun b!5161205 () Bool)

(declare-fun tp!1446806 () Bool)

(declare-fun tp!1446802 () Bool)

(assert (=> b!5161205 (= e!3216006 (and tp!1446806 tp!1446802))))

(assert (=> b!5160513 (= tp!1446254 e!3216006)))

(declare-fun b!5161202 () Bool)

(assert (=> b!5161202 (= e!3216006 tp_is_empty!38215)))

(declare-fun b!5161203 () Bool)

(declare-fun tp!1446804 () Bool)

(declare-fun tp!1446803 () Bool)

(assert (=> b!5161203 (= e!3216006 (and tp!1446804 tp!1446803))))

(assert (= (and b!5160513 ((_ is ElementMatch!14533) (regTwo!29579 (regOne!29578 (regOne!29578 expr!117))))) b!5161202))

(assert (= (and b!5160513 ((_ is Concat!23378) (regTwo!29579 (regOne!29578 (regOne!29578 expr!117))))) b!5161203))

(assert (= (and b!5160513 ((_ is Star!14533) (regTwo!29579 (regOne!29578 (regOne!29578 expr!117))))) b!5161204))

(assert (= (and b!5160513 ((_ is Union!14533) (regTwo!29579 (regOne!29578 (regOne!29578 expr!117))))) b!5161205))

(declare-fun b!5161208 () Bool)

(declare-fun e!3216007 () Bool)

(declare-fun tp!1446810 () Bool)

(assert (=> b!5161208 (= e!3216007 tp!1446810)))

(declare-fun b!5161209 () Bool)

(declare-fun tp!1446811 () Bool)

(declare-fun tp!1446807 () Bool)

(assert (=> b!5161209 (= e!3216007 (and tp!1446811 tp!1446807))))

(assert (=> b!5160412 (= tp!1446134 e!3216007)))

(declare-fun b!5161206 () Bool)

(assert (=> b!5161206 (= e!3216007 tp_is_empty!38215)))

(declare-fun b!5161207 () Bool)

(declare-fun tp!1446809 () Bool)

(declare-fun tp!1446808 () Bool)

(assert (=> b!5161207 (= e!3216007 (and tp!1446809 tp!1446808))))

(assert (= (and b!5160412 ((_ is ElementMatch!14533) (regOne!29578 (reg!14862 (regOne!29579 expr!117))))) b!5161206))

(assert (= (and b!5160412 ((_ is Concat!23378) (regOne!29578 (reg!14862 (regOne!29579 expr!117))))) b!5161207))

(assert (= (and b!5160412 ((_ is Star!14533) (regOne!29578 (reg!14862 (regOne!29579 expr!117))))) b!5161208))

(assert (= (and b!5160412 ((_ is Union!14533) (regOne!29578 (reg!14862 (regOne!29579 expr!117))))) b!5161209))

(declare-fun b!5161212 () Bool)

(declare-fun e!3216008 () Bool)

(declare-fun tp!1446815 () Bool)

(assert (=> b!5161212 (= e!3216008 tp!1446815)))

(declare-fun b!5161213 () Bool)

(declare-fun tp!1446816 () Bool)

(declare-fun tp!1446812 () Bool)

(assert (=> b!5161213 (= e!3216008 (and tp!1446816 tp!1446812))))

(assert (=> b!5160412 (= tp!1446133 e!3216008)))

(declare-fun b!5161210 () Bool)

(assert (=> b!5161210 (= e!3216008 tp_is_empty!38215)))

(declare-fun b!5161211 () Bool)

(declare-fun tp!1446814 () Bool)

(declare-fun tp!1446813 () Bool)

(assert (=> b!5161211 (= e!3216008 (and tp!1446814 tp!1446813))))

(assert (= (and b!5160412 ((_ is ElementMatch!14533) (regTwo!29578 (reg!14862 (regOne!29579 expr!117))))) b!5161210))

(assert (= (and b!5160412 ((_ is Concat!23378) (regTwo!29578 (reg!14862 (regOne!29579 expr!117))))) b!5161211))

(assert (= (and b!5160412 ((_ is Star!14533) (regTwo!29578 (reg!14862 (regOne!29579 expr!117))))) b!5161212))

(assert (= (and b!5160412 ((_ is Union!14533) (regTwo!29578 (reg!14862 (regOne!29579 expr!117))))) b!5161213))

(declare-fun b!5161216 () Bool)

(declare-fun e!3216009 () Bool)

(declare-fun tp!1446820 () Bool)

(assert (=> b!5161216 (= e!3216009 tp!1446820)))

(declare-fun b!5161217 () Bool)

(declare-fun tp!1446821 () Bool)

(declare-fun tp!1446817 () Bool)

(assert (=> b!5161217 (= e!3216009 (and tp!1446821 tp!1446817))))

(assert (=> b!5160482 (= tp!1446219 e!3216009)))

(declare-fun b!5161214 () Bool)

(assert (=> b!5161214 (= e!3216009 tp_is_empty!38215)))

(declare-fun b!5161215 () Bool)

(declare-fun tp!1446819 () Bool)

(declare-fun tp!1446818 () Bool)

(assert (=> b!5161215 (= e!3216009 (and tp!1446819 tp!1446818))))

(assert (= (and b!5160482 ((_ is ElementMatch!14533) (regOne!29578 (regOne!29578 (regTwo!29578 expr!117))))) b!5161214))

(assert (= (and b!5160482 ((_ is Concat!23378) (regOne!29578 (regOne!29578 (regTwo!29578 expr!117))))) b!5161215))

(assert (= (and b!5160482 ((_ is Star!14533) (regOne!29578 (regOne!29578 (regTwo!29578 expr!117))))) b!5161216))

(assert (= (and b!5160482 ((_ is Union!14533) (regOne!29578 (regOne!29578 (regTwo!29578 expr!117))))) b!5161217))

(declare-fun b!5161220 () Bool)

(declare-fun e!3216010 () Bool)

(declare-fun tp!1446825 () Bool)

(assert (=> b!5161220 (= e!3216010 tp!1446825)))

(declare-fun b!5161221 () Bool)

(declare-fun tp!1446826 () Bool)

(declare-fun tp!1446822 () Bool)

(assert (=> b!5161221 (= e!3216010 (and tp!1446826 tp!1446822))))

(assert (=> b!5160482 (= tp!1446218 e!3216010)))

(declare-fun b!5161218 () Bool)

(assert (=> b!5161218 (= e!3216010 tp_is_empty!38215)))

(declare-fun b!5161219 () Bool)

(declare-fun tp!1446824 () Bool)

(declare-fun tp!1446823 () Bool)

(assert (=> b!5161219 (= e!3216010 (and tp!1446824 tp!1446823))))

(assert (= (and b!5160482 ((_ is ElementMatch!14533) (regTwo!29578 (regOne!29578 (regTwo!29578 expr!117))))) b!5161218))

(assert (= (and b!5160482 ((_ is Concat!23378) (regTwo!29578 (regOne!29578 (regTwo!29578 expr!117))))) b!5161219))

(assert (= (and b!5160482 ((_ is Star!14533) (regTwo!29578 (regOne!29578 (regTwo!29578 expr!117))))) b!5161220))

(assert (= (and b!5160482 ((_ is Union!14533) (regTwo!29578 (regOne!29578 (regTwo!29578 expr!117))))) b!5161221))

(declare-fun b!5161224 () Bool)

(declare-fun e!3216011 () Bool)

(declare-fun tp!1446830 () Bool)

(assert (=> b!5161224 (= e!3216011 tp!1446830)))

(declare-fun b!5161225 () Bool)

(declare-fun tp!1446831 () Bool)

(declare-fun tp!1446827 () Bool)

(assert (=> b!5161225 (= e!3216011 (and tp!1446831 tp!1446827))))

(assert (=> b!5160509 (= tp!1446252 e!3216011)))

(declare-fun b!5161222 () Bool)

(assert (=> b!5161222 (= e!3216011 tp_is_empty!38215)))

(declare-fun b!5161223 () Bool)

(declare-fun tp!1446829 () Bool)

(declare-fun tp!1446828 () Bool)

(assert (=> b!5161223 (= e!3216011 (and tp!1446829 tp!1446828))))

(assert (= (and b!5160509 ((_ is ElementMatch!14533) (h!66304 (t!373051 (exprs!4417 ctx!100))))) b!5161222))

(assert (= (and b!5160509 ((_ is Concat!23378) (h!66304 (t!373051 (exprs!4417 ctx!100))))) b!5161223))

(assert (= (and b!5160509 ((_ is Star!14533) (h!66304 (t!373051 (exprs!4417 ctx!100))))) b!5161224))

(assert (= (and b!5160509 ((_ is Union!14533) (h!66304 (t!373051 (exprs!4417 ctx!100))))) b!5161225))

(declare-fun b!5161226 () Bool)

(declare-fun e!3216012 () Bool)

(declare-fun tp!1446832 () Bool)

(declare-fun tp!1446833 () Bool)

(assert (=> b!5161226 (= e!3216012 (and tp!1446832 tp!1446833))))

(assert (=> b!5160509 (= tp!1446253 e!3216012)))

(assert (= (and b!5160509 ((_ is Cons!59856) (t!373051 (t!373051 (exprs!4417 ctx!100))))) b!5161226))

(declare-fun b!5161229 () Bool)

(declare-fun e!3216013 () Bool)

(declare-fun tp!1446837 () Bool)

(assert (=> b!5161229 (= e!3216013 tp!1446837)))

(declare-fun b!5161230 () Bool)

(declare-fun tp!1446838 () Bool)

(declare-fun tp!1446834 () Bool)

(assert (=> b!5161230 (= e!3216013 (and tp!1446838 tp!1446834))))

(assert (=> b!5160465 (= tp!1446200 e!3216013)))

(declare-fun b!5161227 () Bool)

(assert (=> b!5161227 (= e!3216013 tp_is_empty!38215)))

(declare-fun b!5161228 () Bool)

(declare-fun tp!1446836 () Bool)

(declare-fun tp!1446835 () Bool)

(assert (=> b!5161228 (= e!3216013 (and tp!1446836 tp!1446835))))

(assert (= (and b!5160465 ((_ is ElementMatch!14533) (reg!14862 (regOne!29579 (regTwo!29579 expr!117))))) b!5161227))

(assert (= (and b!5160465 ((_ is Concat!23378) (reg!14862 (regOne!29579 (regTwo!29579 expr!117))))) b!5161228))

(assert (= (and b!5160465 ((_ is Star!14533) (reg!14862 (regOne!29579 (regTwo!29579 expr!117))))) b!5161229))

(assert (= (and b!5160465 ((_ is Union!14533) (reg!14862 (regOne!29579 (regTwo!29579 expr!117))))) b!5161230))

(declare-fun b!5161233 () Bool)

(declare-fun e!3216014 () Bool)

(declare-fun tp!1446842 () Bool)

(assert (=> b!5161233 (= e!3216014 tp!1446842)))

(declare-fun b!5161234 () Bool)

(declare-fun tp!1446843 () Bool)

(declare-fun tp!1446839 () Bool)

(assert (=> b!5161234 (= e!3216014 (and tp!1446843 tp!1446839))))

(assert (=> b!5160417 (= tp!1446140 e!3216014)))

(declare-fun b!5161231 () Bool)

(assert (=> b!5161231 (= e!3216014 tp_is_empty!38215)))

(declare-fun b!5161232 () Bool)

(declare-fun tp!1446841 () Bool)

(declare-fun tp!1446840 () Bool)

(assert (=> b!5161232 (= e!3216014 (and tp!1446841 tp!1446840))))

(assert (= (and b!5160417 ((_ is ElementMatch!14533) (reg!14862 (regOne!29578 (reg!14862 expr!117))))) b!5161231))

(assert (= (and b!5160417 ((_ is Concat!23378) (reg!14862 (regOne!29578 (reg!14862 expr!117))))) b!5161232))

(assert (= (and b!5160417 ((_ is Star!14533) (reg!14862 (regOne!29578 (reg!14862 expr!117))))) b!5161233))

(assert (= (and b!5160417 ((_ is Union!14533) (reg!14862 (regOne!29578 (reg!14862 expr!117))))) b!5161234))

(declare-fun b!5161237 () Bool)

(declare-fun e!3216015 () Bool)

(declare-fun tp!1446847 () Bool)

(assert (=> b!5161237 (= e!3216015 tp!1446847)))

(declare-fun b!5161238 () Bool)

(declare-fun tp!1446848 () Bool)

(declare-fun tp!1446844 () Bool)

(assert (=> b!5161238 (= e!3216015 (and tp!1446848 tp!1446844))))

(assert (=> b!5160456 (= tp!1446189 e!3216015)))

(declare-fun b!5161235 () Bool)

(assert (=> b!5161235 (= e!3216015 tp_is_empty!38215)))

(declare-fun b!5161236 () Bool)

(declare-fun tp!1446846 () Bool)

(declare-fun tp!1446845 () Bool)

(assert (=> b!5161236 (= e!3216015 (and tp!1446846 tp!1446845))))

(assert (= (and b!5160456 ((_ is ElementMatch!14533) (regOne!29578 (regTwo!29579 (regOne!29579 expr!117))))) b!5161235))

(assert (= (and b!5160456 ((_ is Concat!23378) (regOne!29578 (regTwo!29579 (regOne!29579 expr!117))))) b!5161236))

(assert (= (and b!5160456 ((_ is Star!14533) (regOne!29578 (regTwo!29579 (regOne!29579 expr!117))))) b!5161237))

(assert (= (and b!5160456 ((_ is Union!14533) (regOne!29578 (regTwo!29579 (regOne!29579 expr!117))))) b!5161238))

(declare-fun b!5161241 () Bool)

(declare-fun e!3216016 () Bool)

(declare-fun tp!1446852 () Bool)

(assert (=> b!5161241 (= e!3216016 tp!1446852)))

(declare-fun b!5161242 () Bool)

(declare-fun tp!1446853 () Bool)

(declare-fun tp!1446849 () Bool)

(assert (=> b!5161242 (= e!3216016 (and tp!1446853 tp!1446849))))

(assert (=> b!5160456 (= tp!1446188 e!3216016)))

(declare-fun b!5161239 () Bool)

(assert (=> b!5161239 (= e!3216016 tp_is_empty!38215)))

(declare-fun b!5161240 () Bool)

(declare-fun tp!1446851 () Bool)

(declare-fun tp!1446850 () Bool)

(assert (=> b!5161240 (= e!3216016 (and tp!1446851 tp!1446850))))

(assert (= (and b!5160456 ((_ is ElementMatch!14533) (regTwo!29578 (regTwo!29579 (regOne!29579 expr!117))))) b!5161239))

(assert (= (and b!5160456 ((_ is Concat!23378) (regTwo!29578 (regTwo!29579 (regOne!29579 expr!117))))) b!5161240))

(assert (= (and b!5160456 ((_ is Star!14533) (regTwo!29578 (regTwo!29579 (regOne!29579 expr!117))))) b!5161241))

(assert (= (and b!5160456 ((_ is Union!14533) (regTwo!29578 (regTwo!29579 (regOne!29579 expr!117))))) b!5161242))

(declare-fun b!5161245 () Bool)

(declare-fun e!3216017 () Bool)

(declare-fun tp!1446857 () Bool)

(assert (=> b!5161245 (= e!3216017 tp!1446857)))

(declare-fun b!5161246 () Bool)

(declare-fun tp!1446858 () Bool)

(declare-fun tp!1446854 () Bool)

(assert (=> b!5161246 (= e!3216017 (and tp!1446858 tp!1446854))))

(assert (=> b!5160424 (= tp!1446149 e!3216017)))

(declare-fun b!5161243 () Bool)

(assert (=> b!5161243 (= e!3216017 tp_is_empty!38215)))

(declare-fun b!5161244 () Bool)

(declare-fun tp!1446856 () Bool)

(declare-fun tp!1446855 () Bool)

(assert (=> b!5161244 (= e!3216017 (and tp!1446856 tp!1446855))))

(assert (= (and b!5160424 ((_ is ElementMatch!14533) (regOne!29578 (regOne!29579 (regOne!29578 expr!117))))) b!5161243))

(assert (= (and b!5160424 ((_ is Concat!23378) (regOne!29578 (regOne!29579 (regOne!29578 expr!117))))) b!5161244))

(assert (= (and b!5160424 ((_ is Star!14533) (regOne!29578 (regOne!29579 (regOne!29578 expr!117))))) b!5161245))

(assert (= (and b!5160424 ((_ is Union!14533) (regOne!29578 (regOne!29579 (regOne!29578 expr!117))))) b!5161246))

(declare-fun b!5161249 () Bool)

(declare-fun e!3216018 () Bool)

(declare-fun tp!1446862 () Bool)

(assert (=> b!5161249 (= e!3216018 tp!1446862)))

(declare-fun b!5161250 () Bool)

(declare-fun tp!1446863 () Bool)

(declare-fun tp!1446859 () Bool)

(assert (=> b!5161250 (= e!3216018 (and tp!1446863 tp!1446859))))

(assert (=> b!5160424 (= tp!1446148 e!3216018)))

(declare-fun b!5161247 () Bool)

(assert (=> b!5161247 (= e!3216018 tp_is_empty!38215)))

(declare-fun b!5161248 () Bool)

(declare-fun tp!1446861 () Bool)

(declare-fun tp!1446860 () Bool)

(assert (=> b!5161248 (= e!3216018 (and tp!1446861 tp!1446860))))

(assert (= (and b!5160424 ((_ is ElementMatch!14533) (regTwo!29578 (regOne!29579 (regOne!29578 expr!117))))) b!5161247))

(assert (= (and b!5160424 ((_ is Concat!23378) (regTwo!29578 (regOne!29579 (regOne!29578 expr!117))))) b!5161248))

(assert (= (and b!5160424 ((_ is Star!14533) (regTwo!29578 (regOne!29579 (regOne!29578 expr!117))))) b!5161249))

(assert (= (and b!5160424 ((_ is Union!14533) (regTwo!29578 (regOne!29579 (regOne!29578 expr!117))))) b!5161250))

(declare-fun b!5161253 () Bool)

(declare-fun e!3216019 () Bool)

(declare-fun tp!1446867 () Bool)

(assert (=> b!5161253 (= e!3216019 tp!1446867)))

(declare-fun b!5161254 () Bool)

(declare-fun tp!1446868 () Bool)

(declare-fun tp!1446864 () Bool)

(assert (=> b!5161254 (= e!3216019 (and tp!1446868 tp!1446864))))

(assert (=> b!5160433 (= tp!1446160 e!3216019)))

(declare-fun b!5161251 () Bool)

(assert (=> b!5161251 (= e!3216019 tp_is_empty!38215)))

(declare-fun b!5161252 () Bool)

(declare-fun tp!1446866 () Bool)

(declare-fun tp!1446865 () Bool)

(assert (=> b!5161252 (= e!3216019 (and tp!1446866 tp!1446865))))

(assert (= (and b!5160433 ((_ is ElementMatch!14533) (reg!14862 (reg!14862 (regTwo!29579 expr!117))))) b!5161251))

(assert (= (and b!5160433 ((_ is Concat!23378) (reg!14862 (reg!14862 (regTwo!29579 expr!117))))) b!5161252))

(assert (= (and b!5160433 ((_ is Star!14533) (reg!14862 (reg!14862 (regTwo!29579 expr!117))))) b!5161253))

(assert (= (and b!5160433 ((_ is Union!14533) (reg!14862 (reg!14862 (regTwo!29579 expr!117))))) b!5161254))

(declare-fun b!5161257 () Bool)

(declare-fun e!3216020 () Bool)

(declare-fun tp!1446872 () Bool)

(assert (=> b!5161257 (= e!3216020 tp!1446872)))

(declare-fun b!5161258 () Bool)

(declare-fun tp!1446873 () Bool)

(declare-fun tp!1446869 () Bool)

(assert (=> b!5161258 (= e!3216020 (and tp!1446873 tp!1446869))))

(assert (=> b!5160426 (= tp!1446151 e!3216020)))

(declare-fun b!5161255 () Bool)

(assert (=> b!5161255 (= e!3216020 tp_is_empty!38215)))

(declare-fun b!5161256 () Bool)

(declare-fun tp!1446871 () Bool)

(declare-fun tp!1446870 () Bool)

(assert (=> b!5161256 (= e!3216020 (and tp!1446871 tp!1446870))))

(assert (= (and b!5160426 ((_ is ElementMatch!14533) (regOne!29579 (regOne!29579 (regOne!29578 expr!117))))) b!5161255))

(assert (= (and b!5160426 ((_ is Concat!23378) (regOne!29579 (regOne!29579 (regOne!29578 expr!117))))) b!5161256))

(assert (= (and b!5160426 ((_ is Star!14533) (regOne!29579 (regOne!29579 (regOne!29578 expr!117))))) b!5161257))

(assert (= (and b!5160426 ((_ is Union!14533) (regOne!29579 (regOne!29579 (regOne!29578 expr!117))))) b!5161258))

(declare-fun b!5161261 () Bool)

(declare-fun e!3216021 () Bool)

(declare-fun tp!1446877 () Bool)

(assert (=> b!5161261 (= e!3216021 tp!1446877)))

(declare-fun b!5161262 () Bool)

(declare-fun tp!1446878 () Bool)

(declare-fun tp!1446874 () Bool)

(assert (=> b!5161262 (= e!3216021 (and tp!1446878 tp!1446874))))

(assert (=> b!5160426 (= tp!1446147 e!3216021)))

(declare-fun b!5161259 () Bool)

(assert (=> b!5161259 (= e!3216021 tp_is_empty!38215)))

(declare-fun b!5161260 () Bool)

(declare-fun tp!1446876 () Bool)

(declare-fun tp!1446875 () Bool)

(assert (=> b!5161260 (= e!3216021 (and tp!1446876 tp!1446875))))

(assert (= (and b!5160426 ((_ is ElementMatch!14533) (regTwo!29579 (regOne!29579 (regOne!29578 expr!117))))) b!5161259))

(assert (= (and b!5160426 ((_ is Concat!23378) (regTwo!29579 (regOne!29579 (regOne!29578 expr!117))))) b!5161260))

(assert (= (and b!5160426 ((_ is Star!14533) (regTwo!29579 (regOne!29579 (regOne!29578 expr!117))))) b!5161261))

(assert (= (and b!5160426 ((_ is Union!14533) (regTwo!29579 (regOne!29579 (regOne!29578 expr!117))))) b!5161262))

(declare-fun b!5161265 () Bool)

(declare-fun e!3216022 () Bool)

(declare-fun tp!1446882 () Bool)

(assert (=> b!5161265 (= e!3216022 tp!1446882)))

(declare-fun b!5161266 () Bool)

(declare-fun tp!1446883 () Bool)

(declare-fun tp!1446879 () Bool)

(assert (=> b!5161266 (= e!3216022 (and tp!1446883 tp!1446879))))

(assert (=> b!5160494 (= tp!1446234 e!3216022)))

(declare-fun b!5161263 () Bool)

(assert (=> b!5161263 (= e!3216022 tp_is_empty!38215)))

(declare-fun b!5161264 () Bool)

(declare-fun tp!1446881 () Bool)

(declare-fun tp!1446880 () Bool)

(assert (=> b!5161264 (= e!3216022 (and tp!1446881 tp!1446880))))

(assert (= (and b!5160494 ((_ is ElementMatch!14533) (regOne!29578 (regOne!29578 (regTwo!29579 expr!117))))) b!5161263))

(assert (= (and b!5160494 ((_ is Concat!23378) (regOne!29578 (regOne!29578 (regTwo!29579 expr!117))))) b!5161264))

(assert (= (and b!5160494 ((_ is Star!14533) (regOne!29578 (regOne!29578 (regTwo!29579 expr!117))))) b!5161265))

(assert (= (and b!5160494 ((_ is Union!14533) (regOne!29578 (regOne!29578 (regTwo!29579 expr!117))))) b!5161266))

(declare-fun b!5161269 () Bool)

(declare-fun e!3216023 () Bool)

(declare-fun tp!1446887 () Bool)

(assert (=> b!5161269 (= e!3216023 tp!1446887)))

(declare-fun b!5161270 () Bool)

(declare-fun tp!1446888 () Bool)

(declare-fun tp!1446884 () Bool)

(assert (=> b!5161270 (= e!3216023 (and tp!1446888 tp!1446884))))

(assert (=> b!5160494 (= tp!1446233 e!3216023)))

(declare-fun b!5161267 () Bool)

(assert (=> b!5161267 (= e!3216023 tp_is_empty!38215)))

(declare-fun b!5161268 () Bool)

(declare-fun tp!1446886 () Bool)

(declare-fun tp!1446885 () Bool)

(assert (=> b!5161268 (= e!3216023 (and tp!1446886 tp!1446885))))

(assert (= (and b!5160494 ((_ is ElementMatch!14533) (regTwo!29578 (regOne!29578 (regTwo!29579 expr!117))))) b!5161267))

(assert (= (and b!5160494 ((_ is Concat!23378) (regTwo!29578 (regOne!29578 (regTwo!29579 expr!117))))) b!5161268))

(assert (= (and b!5160494 ((_ is Star!14533) (regTwo!29578 (regOne!29578 (regTwo!29579 expr!117))))) b!5161269))

(assert (= (and b!5160494 ((_ is Union!14533) (regTwo!29578 (regOne!29578 (regTwo!29579 expr!117))))) b!5161270))

(declare-fun b!5161273 () Bool)

(declare-fun e!3216024 () Bool)

(declare-fun tp!1446892 () Bool)

(assert (=> b!5161273 (= e!3216024 tp!1446892)))

(declare-fun b!5161274 () Bool)

(declare-fun tp!1446893 () Bool)

(declare-fun tp!1446889 () Bool)

(assert (=> b!5161274 (= e!3216024 (and tp!1446893 tp!1446889))))

(assert (=> b!5160440 (= tp!1446169 e!3216024)))

(declare-fun b!5161271 () Bool)

(assert (=> b!5161271 (= e!3216024 tp_is_empty!38215)))

(declare-fun b!5161272 () Bool)

(declare-fun tp!1446891 () Bool)

(declare-fun tp!1446890 () Bool)

(assert (=> b!5161272 (= e!3216024 (and tp!1446891 tp!1446890))))

(assert (= (and b!5160440 ((_ is ElementMatch!14533) (regOne!29578 (regTwo!29578 (regOne!29579 expr!117))))) b!5161271))

(assert (= (and b!5160440 ((_ is Concat!23378) (regOne!29578 (regTwo!29578 (regOne!29579 expr!117))))) b!5161272))

(assert (= (and b!5160440 ((_ is Star!14533) (regOne!29578 (regTwo!29578 (regOne!29579 expr!117))))) b!5161273))

(assert (= (and b!5160440 ((_ is Union!14533) (regOne!29578 (regTwo!29578 (regOne!29579 expr!117))))) b!5161274))

(declare-fun b!5161277 () Bool)

(declare-fun e!3216025 () Bool)

(declare-fun tp!1446897 () Bool)

(assert (=> b!5161277 (= e!3216025 tp!1446897)))

(declare-fun b!5161278 () Bool)

(declare-fun tp!1446898 () Bool)

(declare-fun tp!1446894 () Bool)

(assert (=> b!5161278 (= e!3216025 (and tp!1446898 tp!1446894))))

(assert (=> b!5160440 (= tp!1446168 e!3216025)))

(declare-fun b!5161275 () Bool)

(assert (=> b!5161275 (= e!3216025 tp_is_empty!38215)))

(declare-fun b!5161276 () Bool)

(declare-fun tp!1446896 () Bool)

(declare-fun tp!1446895 () Bool)

(assert (=> b!5161276 (= e!3216025 (and tp!1446896 tp!1446895))))

(assert (= (and b!5160440 ((_ is ElementMatch!14533) (regTwo!29578 (regTwo!29578 (regOne!29579 expr!117))))) b!5161275))

(assert (= (and b!5160440 ((_ is Concat!23378) (regTwo!29578 (regTwo!29578 (regOne!29579 expr!117))))) b!5161276))

(assert (= (and b!5160440 ((_ is Star!14533) (regTwo!29578 (regTwo!29578 (regOne!29579 expr!117))))) b!5161277))

(assert (= (and b!5160440 ((_ is Union!14533) (regTwo!29578 (regTwo!29578 (regOne!29579 expr!117))))) b!5161278))

(declare-fun b!5161281 () Bool)

(declare-fun e!3216026 () Bool)

(declare-fun tp!1446902 () Bool)

(assert (=> b!5161281 (= e!3216026 tp!1446902)))

(declare-fun b!5161282 () Bool)

(declare-fun tp!1446903 () Bool)

(declare-fun tp!1446899 () Bool)

(assert (=> b!5161282 (= e!3216026 (and tp!1446903 tp!1446899))))

(assert (=> b!5160496 (= tp!1446236 e!3216026)))

(declare-fun b!5161279 () Bool)

(assert (=> b!5161279 (= e!3216026 tp_is_empty!38215)))

(declare-fun b!5161280 () Bool)

(declare-fun tp!1446901 () Bool)

(declare-fun tp!1446900 () Bool)

(assert (=> b!5161280 (= e!3216026 (and tp!1446901 tp!1446900))))

(assert (= (and b!5160496 ((_ is ElementMatch!14533) (regOne!29579 (regOne!29578 (regTwo!29579 expr!117))))) b!5161279))

(assert (= (and b!5160496 ((_ is Concat!23378) (regOne!29579 (regOne!29578 (regTwo!29579 expr!117))))) b!5161280))

(assert (= (and b!5160496 ((_ is Star!14533) (regOne!29579 (regOne!29578 (regTwo!29579 expr!117))))) b!5161281))

(assert (= (and b!5160496 ((_ is Union!14533) (regOne!29579 (regOne!29578 (regTwo!29579 expr!117))))) b!5161282))

(declare-fun b!5161285 () Bool)

(declare-fun e!3216027 () Bool)

(declare-fun tp!1446907 () Bool)

(assert (=> b!5161285 (= e!3216027 tp!1446907)))

(declare-fun b!5161286 () Bool)

(declare-fun tp!1446908 () Bool)

(declare-fun tp!1446904 () Bool)

(assert (=> b!5161286 (= e!3216027 (and tp!1446908 tp!1446904))))

(assert (=> b!5160496 (= tp!1446232 e!3216027)))

(declare-fun b!5161283 () Bool)

(assert (=> b!5161283 (= e!3216027 tp_is_empty!38215)))

(declare-fun b!5161284 () Bool)

(declare-fun tp!1446906 () Bool)

(declare-fun tp!1446905 () Bool)

(assert (=> b!5161284 (= e!3216027 (and tp!1446906 tp!1446905))))

(assert (= (and b!5160496 ((_ is ElementMatch!14533) (regTwo!29579 (regOne!29578 (regTwo!29579 expr!117))))) b!5161283))

(assert (= (and b!5160496 ((_ is Concat!23378) (regTwo!29579 (regOne!29578 (regTwo!29579 expr!117))))) b!5161284))

(assert (= (and b!5160496 ((_ is Star!14533) (regTwo!29579 (regOne!29578 (regTwo!29579 expr!117))))) b!5161285))

(assert (= (and b!5160496 ((_ is Union!14533) (regTwo!29579 (regOne!29578 (regTwo!29579 expr!117))))) b!5161286))

(declare-fun b!5161289 () Bool)

(declare-fun e!3216028 () Bool)

(declare-fun tp!1446912 () Bool)

(assert (=> b!5161289 (= e!3216028 tp!1446912)))

(declare-fun b!5161290 () Bool)

(declare-fun tp!1446913 () Bool)

(declare-fun tp!1446909 () Bool)

(assert (=> b!5161290 (= e!3216028 (and tp!1446913 tp!1446909))))

(assert (=> b!5160449 (= tp!1446180 e!3216028)))

(declare-fun b!5161287 () Bool)

(assert (=> b!5161287 (= e!3216028 tp_is_empty!38215)))

(declare-fun b!5161288 () Bool)

(declare-fun tp!1446911 () Bool)

(declare-fun tp!1446910 () Bool)

(assert (=> b!5161288 (= e!3216028 (and tp!1446911 tp!1446910))))

(assert (= (and b!5160449 ((_ is ElementMatch!14533) (reg!14862 (regTwo!29579 (regTwo!29578 expr!117))))) b!5161287))

(assert (= (and b!5160449 ((_ is Concat!23378) (reg!14862 (regTwo!29579 (regTwo!29578 expr!117))))) b!5161288))

(assert (= (and b!5160449 ((_ is Star!14533) (reg!14862 (regTwo!29579 (regTwo!29578 expr!117))))) b!5161289))

(assert (= (and b!5160449 ((_ is Union!14533) (reg!14862 (regTwo!29579 (regTwo!29578 expr!117))))) b!5161290))

(declare-fun b!5161293 () Bool)

(declare-fun e!3216029 () Bool)

(declare-fun tp!1446917 () Bool)

(assert (=> b!5161293 (= e!3216029 tp!1446917)))

(declare-fun b!5161294 () Bool)

(declare-fun tp!1446918 () Bool)

(declare-fun tp!1446914 () Bool)

(assert (=> b!5161294 (= e!3216029 (and tp!1446918 tp!1446914))))

(assert (=> b!5160442 (= tp!1446171 e!3216029)))

(declare-fun b!5161291 () Bool)

(assert (=> b!5161291 (= e!3216029 tp_is_empty!38215)))

(declare-fun b!5161292 () Bool)

(declare-fun tp!1446916 () Bool)

(declare-fun tp!1446915 () Bool)

(assert (=> b!5161292 (= e!3216029 (and tp!1446916 tp!1446915))))

(assert (= (and b!5160442 ((_ is ElementMatch!14533) (regOne!29579 (regTwo!29578 (regOne!29579 expr!117))))) b!5161291))

(assert (= (and b!5160442 ((_ is Concat!23378) (regOne!29579 (regTwo!29578 (regOne!29579 expr!117))))) b!5161292))

(assert (= (and b!5160442 ((_ is Star!14533) (regOne!29579 (regTwo!29578 (regOne!29579 expr!117))))) b!5161293))

(assert (= (and b!5160442 ((_ is Union!14533) (regOne!29579 (regTwo!29578 (regOne!29579 expr!117))))) b!5161294))

(declare-fun b!5161297 () Bool)

(declare-fun e!3216030 () Bool)

(declare-fun tp!1446922 () Bool)

(assert (=> b!5161297 (= e!3216030 tp!1446922)))

(declare-fun b!5161298 () Bool)

(declare-fun tp!1446923 () Bool)

(declare-fun tp!1446919 () Bool)

(assert (=> b!5161298 (= e!3216030 (and tp!1446923 tp!1446919))))

(assert (=> b!5160442 (= tp!1446167 e!3216030)))

(declare-fun b!5161295 () Bool)

(assert (=> b!5161295 (= e!3216030 tp_is_empty!38215)))

(declare-fun b!5161296 () Bool)

(declare-fun tp!1446921 () Bool)

(declare-fun tp!1446920 () Bool)

(assert (=> b!5161296 (= e!3216030 (and tp!1446921 tp!1446920))))

(assert (= (and b!5160442 ((_ is ElementMatch!14533) (regTwo!29579 (regTwo!29578 (regOne!29579 expr!117))))) b!5161295))

(assert (= (and b!5160442 ((_ is Concat!23378) (regTwo!29579 (regTwo!29578 (regOne!29579 expr!117))))) b!5161296))

(assert (= (and b!5160442 ((_ is Star!14533) (regTwo!29579 (regTwo!29578 (regOne!29579 expr!117))))) b!5161297))

(assert (= (and b!5160442 ((_ is Union!14533) (regTwo!29579 (regTwo!29578 (regOne!29579 expr!117))))) b!5161298))

(declare-fun b!5161301 () Bool)

(declare-fun e!3216031 () Bool)

(declare-fun tp!1446927 () Bool)

(assert (=> b!5161301 (= e!3216031 tp!1446927)))

(declare-fun b!5161302 () Bool)

(declare-fun tp!1446928 () Bool)

(declare-fun tp!1446924 () Bool)

(assert (=> b!5161302 (= e!3216031 (and tp!1446928 tp!1446924))))

(assert (=> b!5160458 (= tp!1446191 e!3216031)))

(declare-fun b!5161299 () Bool)

(assert (=> b!5161299 (= e!3216031 tp_is_empty!38215)))

(declare-fun b!5161300 () Bool)

(declare-fun tp!1446926 () Bool)

(declare-fun tp!1446925 () Bool)

(assert (=> b!5161300 (= e!3216031 (and tp!1446926 tp!1446925))))

(assert (= (and b!5160458 ((_ is ElementMatch!14533) (regOne!29579 (regTwo!29579 (regOne!29579 expr!117))))) b!5161299))

(assert (= (and b!5160458 ((_ is Concat!23378) (regOne!29579 (regTwo!29579 (regOne!29579 expr!117))))) b!5161300))

(assert (= (and b!5160458 ((_ is Star!14533) (regOne!29579 (regTwo!29579 (regOne!29579 expr!117))))) b!5161301))

(assert (= (and b!5160458 ((_ is Union!14533) (regOne!29579 (regTwo!29579 (regOne!29579 expr!117))))) b!5161302))

(declare-fun b!5161305 () Bool)

(declare-fun e!3216032 () Bool)

(declare-fun tp!1446932 () Bool)

(assert (=> b!5161305 (= e!3216032 tp!1446932)))

(declare-fun b!5161306 () Bool)

(declare-fun tp!1446933 () Bool)

(declare-fun tp!1446929 () Bool)

(assert (=> b!5161306 (= e!3216032 (and tp!1446933 tp!1446929))))

(assert (=> b!5160458 (= tp!1446187 e!3216032)))

(declare-fun b!5161303 () Bool)

(assert (=> b!5161303 (= e!3216032 tp_is_empty!38215)))

(declare-fun b!5161304 () Bool)

(declare-fun tp!1446931 () Bool)

(declare-fun tp!1446930 () Bool)

(assert (=> b!5161304 (= e!3216032 (and tp!1446931 tp!1446930))))

(assert (= (and b!5160458 ((_ is ElementMatch!14533) (regTwo!29579 (regTwo!29579 (regOne!29579 expr!117))))) b!5161303))

(assert (= (and b!5160458 ((_ is Concat!23378) (regTwo!29579 (regTwo!29579 (regOne!29579 expr!117))))) b!5161304))

(assert (= (and b!5160458 ((_ is Star!14533) (regTwo!29579 (regTwo!29579 (regOne!29579 expr!117))))) b!5161305))

(assert (= (and b!5160458 ((_ is Union!14533) (regTwo!29579 (regTwo!29579 (regOne!29579 expr!117))))) b!5161306))

(declare-fun b!5161309 () Bool)

(declare-fun e!3216033 () Bool)

(declare-fun tp!1446937 () Bool)

(assert (=> b!5161309 (= e!3216033 tp!1446937)))

(declare-fun b!5161310 () Bool)

(declare-fun tp!1446938 () Bool)

(declare-fun tp!1446934 () Bool)

(assert (=> b!5161310 (= e!3216033 (and tp!1446938 tp!1446934))))

(assert (=> b!5160471 (= tp!1446205 e!3216033)))

(declare-fun b!5161307 () Bool)

(assert (=> b!5161307 (= e!3216033 tp_is_empty!38215)))

(declare-fun b!5161308 () Bool)

(declare-fun tp!1446936 () Bool)

(declare-fun tp!1446935 () Bool)

(assert (=> b!5161308 (= e!3216033 (and tp!1446936 tp!1446935))))

(assert (= (and b!5160471 ((_ is ElementMatch!14533) (reg!14862 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161307))

(assert (= (and b!5160471 ((_ is Concat!23378) (reg!14862 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161308))

(assert (= (and b!5160471 ((_ is Star!14533) (reg!14862 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161309))

(assert (= (and b!5160471 ((_ is Union!14533) (reg!14862 (regTwo!29579 (regTwo!29579 expr!117))))) b!5161310))

(declare-fun b!5161313 () Bool)

(declare-fun e!3216034 () Bool)

(declare-fun tp!1446942 () Bool)

(assert (=> b!5161313 (= e!3216034 tp!1446942)))

(declare-fun b!5161314 () Bool)

(declare-fun tp!1446943 () Bool)

(declare-fun tp!1446939 () Bool)

(assert (=> b!5161314 (= e!3216034 (and tp!1446943 tp!1446939))))

(assert (=> b!5160445 (= tp!1446175 e!3216034)))

(declare-fun b!5161311 () Bool)

(assert (=> b!5161311 (= e!3216034 tp_is_empty!38215)))

(declare-fun b!5161312 () Bool)

(declare-fun tp!1446941 () Bool)

(declare-fun tp!1446940 () Bool)

(assert (=> b!5161312 (= e!3216034 (and tp!1446941 tp!1446940))))

(assert (= (and b!5160445 ((_ is ElementMatch!14533) (reg!14862 (regOne!29579 (regTwo!29578 expr!117))))) b!5161311))

(assert (= (and b!5160445 ((_ is Concat!23378) (reg!14862 (regOne!29579 (regTwo!29578 expr!117))))) b!5161312))

(assert (= (and b!5160445 ((_ is Star!14533) (reg!14862 (regOne!29579 (regTwo!29578 expr!117))))) b!5161313))

(assert (= (and b!5160445 ((_ is Union!14533) (reg!14862 (regOne!29579 (regTwo!29578 expr!117))))) b!5161314))

(declare-fun b!5161317 () Bool)

(declare-fun e!3216035 () Bool)

(declare-fun tp!1446947 () Bool)

(assert (=> b!5161317 (= e!3216035 tp!1446947)))

(declare-fun b!5161318 () Bool)

(declare-fun tp!1446948 () Bool)

(declare-fun tp!1446944 () Bool)

(assert (=> b!5161318 (= e!3216035 (and tp!1446948 tp!1446944))))

(assert (=> b!5160438 (= tp!1446166 e!3216035)))

(declare-fun b!5161315 () Bool)

(assert (=> b!5161315 (= e!3216035 tp_is_empty!38215)))

(declare-fun b!5161316 () Bool)

(declare-fun tp!1446946 () Bool)

(declare-fun tp!1446945 () Bool)

(assert (=> b!5161316 (= e!3216035 (and tp!1446946 tp!1446945))))

(assert (= (and b!5160438 ((_ is ElementMatch!14533) (regOne!29579 (regOne!29578 (regOne!29579 expr!117))))) b!5161315))

(assert (= (and b!5160438 ((_ is Concat!23378) (regOne!29579 (regOne!29578 (regOne!29579 expr!117))))) b!5161316))

(assert (= (and b!5160438 ((_ is Star!14533) (regOne!29579 (regOne!29578 (regOne!29579 expr!117))))) b!5161317))

(assert (= (and b!5160438 ((_ is Union!14533) (regOne!29579 (regOne!29578 (regOne!29579 expr!117))))) b!5161318))

(declare-fun b!5161321 () Bool)

(declare-fun e!3216036 () Bool)

(declare-fun tp!1446952 () Bool)

(assert (=> b!5161321 (= e!3216036 tp!1446952)))

(declare-fun b!5161322 () Bool)

(declare-fun tp!1446953 () Bool)

(declare-fun tp!1446949 () Bool)

(assert (=> b!5161322 (= e!3216036 (and tp!1446953 tp!1446949))))

(assert (=> b!5160438 (= tp!1446162 e!3216036)))

(declare-fun b!5161319 () Bool)

(assert (=> b!5161319 (= e!3216036 tp_is_empty!38215)))

(declare-fun b!5161320 () Bool)

(declare-fun tp!1446951 () Bool)

(declare-fun tp!1446950 () Bool)

(assert (=> b!5161320 (= e!3216036 (and tp!1446951 tp!1446950))))

(assert (= (and b!5160438 ((_ is ElementMatch!14533) (regTwo!29579 (regOne!29578 (regOne!29579 expr!117))))) b!5161319))

(assert (= (and b!5160438 ((_ is Concat!23378) (regTwo!29579 (regOne!29578 (regOne!29579 expr!117))))) b!5161320))

(assert (= (and b!5160438 ((_ is Star!14533) (regTwo!29579 (regOne!29578 (regOne!29579 expr!117))))) b!5161321))

(assert (= (and b!5160438 ((_ is Union!14533) (regTwo!29579 (regOne!29578 (regOne!29579 expr!117))))) b!5161322))

(declare-fun b!5161325 () Bool)

(declare-fun e!3216037 () Bool)

(declare-fun tp!1446957 () Bool)

(assert (=> b!5161325 (= e!3216037 tp!1446957)))

(declare-fun b!5161326 () Bool)

(declare-fun tp!1446958 () Bool)

(declare-fun tp!1446954 () Bool)

(assert (=> b!5161326 (= e!3216037 (and tp!1446958 tp!1446954))))

(assert (=> b!5160508 (= tp!1446251 e!3216037)))

(declare-fun b!5161323 () Bool)

(assert (=> b!5161323 (= e!3216037 tp_is_empty!38215)))

(declare-fun b!5161324 () Bool)

(declare-fun tp!1446956 () Bool)

(declare-fun tp!1446955 () Bool)

(assert (=> b!5161324 (= e!3216037 (and tp!1446956 tp!1446955))))

(assert (= (and b!5160508 ((_ is ElementMatch!14533) (regOne!29579 (h!66304 (exprs!4417 ctx!100))))) b!5161323))

(assert (= (and b!5160508 ((_ is Concat!23378) (regOne!29579 (h!66304 (exprs!4417 ctx!100))))) b!5161324))

(assert (= (and b!5160508 ((_ is Star!14533) (regOne!29579 (h!66304 (exprs!4417 ctx!100))))) b!5161325))

(assert (= (and b!5160508 ((_ is Union!14533) (regOne!29579 (h!66304 (exprs!4417 ctx!100))))) b!5161326))

(declare-fun b!5161329 () Bool)

(declare-fun e!3216038 () Bool)

(declare-fun tp!1446962 () Bool)

(assert (=> b!5161329 (= e!3216038 tp!1446962)))

(declare-fun b!5161330 () Bool)

(declare-fun tp!1446963 () Bool)

(declare-fun tp!1446959 () Bool)

(assert (=> b!5161330 (= e!3216038 (and tp!1446963 tp!1446959))))

(assert (=> b!5160508 (= tp!1446247 e!3216038)))

(declare-fun b!5161327 () Bool)

(assert (=> b!5161327 (= e!3216038 tp_is_empty!38215)))

(declare-fun b!5161328 () Bool)

(declare-fun tp!1446961 () Bool)

(declare-fun tp!1446960 () Bool)

(assert (=> b!5161328 (= e!3216038 (and tp!1446961 tp!1446960))))

(assert (= (and b!5160508 ((_ is ElementMatch!14533) (regTwo!29579 (h!66304 (exprs!4417 ctx!100))))) b!5161327))

(assert (= (and b!5160508 ((_ is Concat!23378) (regTwo!29579 (h!66304 (exprs!4417 ctx!100))))) b!5161328))

(assert (= (and b!5160508 ((_ is Star!14533) (regTwo!29579 (h!66304 (exprs!4417 ctx!100))))) b!5161329))

(assert (= (and b!5160508 ((_ is Union!14533) (regTwo!29579 (h!66304 (exprs!4417 ctx!100))))) b!5161330))

(declare-fun b!5161333 () Bool)

(declare-fun e!3216039 () Bool)

(declare-fun tp!1446967 () Bool)

(assert (=> b!5161333 (= e!3216039 tp!1446967)))

(declare-fun b!5161334 () Bool)

(declare-fun tp!1446968 () Bool)

(declare-fun tp!1446964 () Bool)

(assert (=> b!5161334 (= e!3216039 (and tp!1446968 tp!1446964))))

(assert (=> b!5160499 (= tp!1446240 e!3216039)))

(declare-fun b!5161331 () Bool)

(assert (=> b!5161331 (= e!3216039 tp_is_empty!38215)))

(declare-fun b!5161332 () Bool)

(declare-fun tp!1446966 () Bool)

(declare-fun tp!1446965 () Bool)

(assert (=> b!5161332 (= e!3216039 (and tp!1446966 tp!1446965))))

(assert (= (and b!5160499 ((_ is ElementMatch!14533) (reg!14862 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161331))

(assert (= (and b!5160499 ((_ is Concat!23378) (reg!14862 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161332))

(assert (= (and b!5160499 ((_ is Star!14533) (reg!14862 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161333))

(assert (= (and b!5160499 ((_ is Union!14533) (reg!14862 (regTwo!29578 (regTwo!29579 expr!117))))) b!5161334))

(declare-fun b!5161337 () Bool)

(declare-fun e!3216040 () Bool)

(declare-fun tp!1446972 () Bool)

(assert (=> b!5161337 (= e!3216040 tp!1446972)))

(declare-fun b!5161338 () Bool)

(declare-fun tp!1446973 () Bool)

(declare-fun tp!1446969 () Bool)

(assert (=> b!5161338 (= e!3216040 (and tp!1446973 tp!1446969))))

(assert (=> b!5160516 (= tp!1446262 e!3216040)))

(declare-fun b!5161335 () Bool)

(assert (=> b!5161335 (= e!3216040 tp_is_empty!38215)))

(declare-fun b!5161336 () Bool)

(declare-fun tp!1446971 () Bool)

(declare-fun tp!1446970 () Bool)

(assert (=> b!5161336 (= e!3216040 (and tp!1446971 tp!1446970))))

(assert (= (and b!5160516 ((_ is ElementMatch!14533) (reg!14862 (regTwo!29578 (regOne!29578 expr!117))))) b!5161335))

(assert (= (and b!5160516 ((_ is Concat!23378) (reg!14862 (regTwo!29578 (regOne!29578 expr!117))))) b!5161336))

(assert (= (and b!5160516 ((_ is Star!14533) (reg!14862 (regTwo!29578 (regOne!29578 expr!117))))) b!5161337))

(assert (= (and b!5160516 ((_ is Union!14533) (reg!14862 (regTwo!29578 (regOne!29578 expr!117))))) b!5161338))

(declare-fun b!5161341 () Bool)

(declare-fun e!3216041 () Bool)

(declare-fun tp!1446977 () Bool)

(assert (=> b!5161341 (= e!3216041 tp!1446977)))

(declare-fun b!5161342 () Bool)

(declare-fun tp!1446978 () Bool)

(declare-fun tp!1446974 () Bool)

(assert (=> b!5161342 (= e!3216041 (and tp!1446978 tp!1446974))))

(assert (=> b!5160479 (= tp!1446215 e!3216041)))

(declare-fun b!5161339 () Bool)

(assert (=> b!5161339 (= e!3216041 tp_is_empty!38215)))

(declare-fun b!5161340 () Bool)

(declare-fun tp!1446976 () Bool)

(declare-fun tp!1446975 () Bool)

(assert (=> b!5161340 (= e!3216041 (and tp!1446976 tp!1446975))))

(assert (= (and b!5160479 ((_ is ElementMatch!14533) (reg!14862 (regTwo!29579 (reg!14862 expr!117))))) b!5161339))

(assert (= (and b!5160479 ((_ is Concat!23378) (reg!14862 (regTwo!29579 (reg!14862 expr!117))))) b!5161340))

(assert (= (and b!5160479 ((_ is Star!14533) (reg!14862 (regTwo!29579 (reg!14862 expr!117))))) b!5161341))

(assert (= (and b!5160479 ((_ is Union!14533) (reg!14862 (regTwo!29579 (reg!14862 expr!117))))) b!5161342))

(declare-fun b!5161345 () Bool)

(declare-fun e!3216042 () Bool)

(declare-fun tp!1446982 () Bool)

(assert (=> b!5161345 (= e!3216042 tp!1446982)))

(declare-fun b!5161346 () Bool)

(declare-fun tp!1446983 () Bool)

(declare-fun tp!1446979 () Bool)

(assert (=> b!5161346 (= e!3216042 (and tp!1446983 tp!1446979))))

(assert (=> b!5160487 (= tp!1446225 e!3216042)))

(declare-fun b!5161343 () Bool)

(assert (=> b!5161343 (= e!3216042 tp_is_empty!38215)))

(declare-fun b!5161344 () Bool)

(declare-fun tp!1446981 () Bool)

(declare-fun tp!1446980 () Bool)

(assert (=> b!5161344 (= e!3216042 (and tp!1446981 tp!1446980))))

(assert (= (and b!5160487 ((_ is ElementMatch!14533) (reg!14862 (regTwo!29578 (regTwo!29578 expr!117))))) b!5161343))

(assert (= (and b!5160487 ((_ is Concat!23378) (reg!14862 (regTwo!29578 (regTwo!29578 expr!117))))) b!5161344))

(assert (= (and b!5160487 ((_ is Star!14533) (reg!14862 (regTwo!29578 (regTwo!29578 expr!117))))) b!5161345))

(assert (= (and b!5160487 ((_ is Union!14533) (reg!14862 (regTwo!29578 (regTwo!29578 expr!117))))) b!5161346))

(declare-fun b!5161349 () Bool)

(declare-fun e!3216043 () Bool)

(declare-fun tp!1446987 () Bool)

(assert (=> b!5161349 (= e!3216043 tp!1446987)))

(declare-fun b!5161350 () Bool)

(declare-fun tp!1446988 () Bool)

(declare-fun tp!1446984 () Bool)

(assert (=> b!5161350 (= e!3216043 (and tp!1446988 tp!1446984))))

(assert (=> b!5160413 (= tp!1446135 e!3216043)))

(declare-fun b!5161347 () Bool)

(assert (=> b!5161347 (= e!3216043 tp_is_empty!38215)))

(declare-fun b!5161348 () Bool)

(declare-fun tp!1446986 () Bool)

(declare-fun tp!1446985 () Bool)

(assert (=> b!5161348 (= e!3216043 (and tp!1446986 tp!1446985))))

(assert (= (and b!5160413 ((_ is ElementMatch!14533) (reg!14862 (reg!14862 (regOne!29579 expr!117))))) b!5161347))

(assert (= (and b!5160413 ((_ is Concat!23378) (reg!14862 (reg!14862 (regOne!29579 expr!117))))) b!5161348))

(assert (= (and b!5160413 ((_ is Star!14533) (reg!14862 (reg!14862 (regOne!29579 expr!117))))) b!5161349))

(assert (= (and b!5160413 ((_ is Union!14533) (reg!14862 (reg!14862 (regOne!29579 expr!117))))) b!5161350))

(declare-fun b!5161353 () Bool)

(declare-fun e!3216044 () Bool)

(declare-fun tp!1446992 () Bool)

(assert (=> b!5161353 (= e!3216044 tp!1446992)))

(declare-fun b!5161354 () Bool)

(declare-fun tp!1446993 () Bool)

(declare-fun tp!1446989 () Bool)

(assert (=> b!5161354 (= e!3216044 (and tp!1446993 tp!1446989))))

(assert (=> b!5160420 (= tp!1446144 e!3216044)))

(declare-fun b!5161351 () Bool)

(assert (=> b!5161351 (= e!3216044 tp_is_empty!38215)))

(declare-fun b!5161352 () Bool)

(declare-fun tp!1446991 () Bool)

(declare-fun tp!1446990 () Bool)

(assert (=> b!5161352 (= e!3216044 (and tp!1446991 tp!1446990))))

(assert (= (and b!5160420 ((_ is ElementMatch!14533) (regOne!29578 (regTwo!29578 (reg!14862 expr!117))))) b!5161351))

(assert (= (and b!5160420 ((_ is Concat!23378) (regOne!29578 (regTwo!29578 (reg!14862 expr!117))))) b!5161352))

(assert (= (and b!5160420 ((_ is Star!14533) (regOne!29578 (regTwo!29578 (reg!14862 expr!117))))) b!5161353))

(assert (= (and b!5160420 ((_ is Union!14533) (regOne!29578 (regTwo!29578 (reg!14862 expr!117))))) b!5161354))

(declare-fun b!5161357 () Bool)

(declare-fun e!3216045 () Bool)

(declare-fun tp!1446997 () Bool)

(assert (=> b!5161357 (= e!3216045 tp!1446997)))

(declare-fun b!5161358 () Bool)

(declare-fun tp!1446998 () Bool)

(declare-fun tp!1446994 () Bool)

(assert (=> b!5161358 (= e!3216045 (and tp!1446998 tp!1446994))))

(assert (=> b!5160420 (= tp!1446143 e!3216045)))

(declare-fun b!5161355 () Bool)

(assert (=> b!5161355 (= e!3216045 tp_is_empty!38215)))

(declare-fun b!5161356 () Bool)

(declare-fun tp!1446996 () Bool)

(declare-fun tp!1446995 () Bool)

(assert (=> b!5161356 (= e!3216045 (and tp!1446996 tp!1446995))))

(assert (= (and b!5160420 ((_ is ElementMatch!14533) (regTwo!29578 (regTwo!29578 (reg!14862 expr!117))))) b!5161355))

(assert (= (and b!5160420 ((_ is Concat!23378) (regTwo!29578 (regTwo!29578 (reg!14862 expr!117))))) b!5161356))

(assert (= (and b!5160420 ((_ is Star!14533) (regTwo!29578 (regTwo!29578 (reg!14862 expr!117))))) b!5161357))

(assert (= (and b!5160420 ((_ is Union!14533) (regTwo!29578 (regTwo!29578 (reg!14862 expr!117))))) b!5161358))

(declare-fun b!5161361 () Bool)

(declare-fun e!3216046 () Bool)

(declare-fun tp!1447002 () Bool)

(assert (=> b!5161361 (= e!3216046 tp!1447002)))

(declare-fun b!5161362 () Bool)

(declare-fun tp!1447003 () Bool)

(declare-fun tp!1446999 () Bool)

(assert (=> b!5161362 (= e!3216046 (and tp!1447003 tp!1446999))))

(assert (=> b!5160436 (= tp!1446164 e!3216046)))

(declare-fun b!5161359 () Bool)

(assert (=> b!5161359 (= e!3216046 tp_is_empty!38215)))

(declare-fun b!5161360 () Bool)

(declare-fun tp!1447001 () Bool)

(declare-fun tp!1447000 () Bool)

(assert (=> b!5161360 (= e!3216046 (and tp!1447001 tp!1447000))))

(assert (= (and b!5160436 ((_ is ElementMatch!14533) (regOne!29578 (regOne!29578 (regOne!29579 expr!117))))) b!5161359))

(assert (= (and b!5160436 ((_ is Concat!23378) (regOne!29578 (regOne!29578 (regOne!29579 expr!117))))) b!5161360))

(assert (= (and b!5160436 ((_ is Star!14533) (regOne!29578 (regOne!29578 (regOne!29579 expr!117))))) b!5161361))

(assert (= (and b!5160436 ((_ is Union!14533) (regOne!29578 (regOne!29578 (regOne!29579 expr!117))))) b!5161362))

(declare-fun b!5161365 () Bool)

(declare-fun e!3216047 () Bool)

(declare-fun tp!1447007 () Bool)

(assert (=> b!5161365 (= e!3216047 tp!1447007)))

(declare-fun b!5161366 () Bool)

(declare-fun tp!1447008 () Bool)

(declare-fun tp!1447004 () Bool)

(assert (=> b!5161366 (= e!3216047 (and tp!1447008 tp!1447004))))

(assert (=> b!5160436 (= tp!1446163 e!3216047)))

(declare-fun b!5161363 () Bool)

(assert (=> b!5161363 (= e!3216047 tp_is_empty!38215)))

(declare-fun b!5161364 () Bool)

(declare-fun tp!1447006 () Bool)

(declare-fun tp!1447005 () Bool)

(assert (=> b!5161364 (= e!3216047 (and tp!1447006 tp!1447005))))

(assert (= (and b!5160436 ((_ is ElementMatch!14533) (regTwo!29578 (regOne!29578 (regOne!29579 expr!117))))) b!5161363))

(assert (= (and b!5160436 ((_ is Concat!23378) (regTwo!29578 (regOne!29578 (regOne!29579 expr!117))))) b!5161364))

(assert (= (and b!5160436 ((_ is Star!14533) (regTwo!29578 (regOne!29578 (regOne!29579 expr!117))))) b!5161365))

(assert (= (and b!5160436 ((_ is Union!14533) (regTwo!29578 (regOne!29578 (regOne!29579 expr!117))))) b!5161366))

(declare-fun b!5161369 () Bool)

(declare-fun e!3216048 () Bool)

(declare-fun tp!1447012 () Bool)

(assert (=> b!5161369 (= e!3216048 tp!1447012)))

(declare-fun b!5161370 () Bool)

(declare-fun tp!1447013 () Bool)

(declare-fun tp!1447009 () Bool)

(assert (=> b!5161370 (= e!3216048 (and tp!1447013 tp!1447009))))

(assert (=> b!5160461 (= tp!1446195 e!3216048)))

(declare-fun b!5161367 () Bool)

(assert (=> b!5161367 (= e!3216048 tp_is_empty!38215)))

(declare-fun b!5161368 () Bool)

(declare-fun tp!1447011 () Bool)

(declare-fun tp!1447010 () Bool)

(assert (=> b!5161368 (= e!3216048 (and tp!1447011 tp!1447010))))

(assert (= (and b!5160461 ((_ is ElementMatch!14533) (reg!14862 (reg!14862 (reg!14862 expr!117))))) b!5161367))

(assert (= (and b!5160461 ((_ is Concat!23378) (reg!14862 (reg!14862 (reg!14862 expr!117))))) b!5161368))

(assert (= (and b!5160461 ((_ is Star!14533) (reg!14862 (reg!14862 (reg!14862 expr!117))))) b!5161369))

(assert (= (and b!5160461 ((_ is Union!14533) (reg!14862 (reg!14862 (reg!14862 expr!117))))) b!5161370))

(declare-fun b!5161373 () Bool)

(declare-fun e!3216049 () Bool)

(declare-fun tp!1447017 () Bool)

(assert (=> b!5161373 (= e!3216049 tp!1447017)))

(declare-fun b!5161374 () Bool)

(declare-fun tp!1447018 () Bool)

(declare-fun tp!1447014 () Bool)

(assert (=> b!5161374 (= e!3216049 (and tp!1447018 tp!1447014))))

(assert (=> b!5160452 (= tp!1446184 e!3216049)))

(declare-fun b!5161371 () Bool)

(assert (=> b!5161371 (= e!3216049 tp_is_empty!38215)))

(declare-fun b!5161372 () Bool)

(declare-fun tp!1447016 () Bool)

(declare-fun tp!1447015 () Bool)

(assert (=> b!5161372 (= e!3216049 (and tp!1447016 tp!1447015))))

(assert (= (and b!5160452 ((_ is ElementMatch!14533) (regOne!29578 (regOne!29579 (regOne!29579 expr!117))))) b!5161371))

(assert (= (and b!5160452 ((_ is Concat!23378) (regOne!29578 (regOne!29579 (regOne!29579 expr!117))))) b!5161372))

(assert (= (and b!5160452 ((_ is Star!14533) (regOne!29578 (regOne!29579 (regOne!29579 expr!117))))) b!5161373))

(assert (= (and b!5160452 ((_ is Union!14533) (regOne!29578 (regOne!29579 (regOne!29579 expr!117))))) b!5161374))

(declare-fun b!5161377 () Bool)

(declare-fun e!3216050 () Bool)

(declare-fun tp!1447022 () Bool)

(assert (=> b!5161377 (= e!3216050 tp!1447022)))

(declare-fun b!5161378 () Bool)

(declare-fun tp!1447023 () Bool)

(declare-fun tp!1447019 () Bool)

(assert (=> b!5161378 (= e!3216050 (and tp!1447023 tp!1447019))))

(assert (=> b!5160452 (= tp!1446183 e!3216050)))

(declare-fun b!5161375 () Bool)

(assert (=> b!5161375 (= e!3216050 tp_is_empty!38215)))

(declare-fun b!5161376 () Bool)

(declare-fun tp!1447021 () Bool)

(declare-fun tp!1447020 () Bool)

(assert (=> b!5161376 (= e!3216050 (and tp!1447021 tp!1447020))))

(assert (= (and b!5160452 ((_ is ElementMatch!14533) (regTwo!29578 (regOne!29579 (regOne!29579 expr!117))))) b!5161375))

(assert (= (and b!5160452 ((_ is Concat!23378) (regTwo!29578 (regOne!29579 (regOne!29579 expr!117))))) b!5161376))

(assert (= (and b!5160452 ((_ is Star!14533) (regTwo!29578 (regOne!29579 (regOne!29579 expr!117))))) b!5161377))

(assert (= (and b!5160452 ((_ is Union!14533) (regTwo!29578 (regOne!29579 (regOne!29579 expr!117))))) b!5161378))

(declare-fun b!5161381 () Bool)

(declare-fun e!3216051 () Bool)

(declare-fun tp!1447027 () Bool)

(assert (=> b!5161381 (= e!3216051 tp!1447027)))

(declare-fun b!5161382 () Bool)

(declare-fun tp!1447028 () Bool)

(declare-fun tp!1447024 () Bool)

(assert (=> b!5161382 (= e!3216051 (and tp!1447028 tp!1447024))))

(assert (=> b!5160506 (= tp!1446249 e!3216051)))

(declare-fun b!5161379 () Bool)

(assert (=> b!5161379 (= e!3216051 tp_is_empty!38215)))

(declare-fun b!5161380 () Bool)

(declare-fun tp!1447026 () Bool)

(declare-fun tp!1447025 () Bool)

(assert (=> b!5161380 (= e!3216051 (and tp!1447026 tp!1447025))))

(assert (= (and b!5160506 ((_ is ElementMatch!14533) (regOne!29578 (h!66304 (exprs!4417 ctx!100))))) b!5161379))

(assert (= (and b!5160506 ((_ is Concat!23378) (regOne!29578 (h!66304 (exprs!4417 ctx!100))))) b!5161380))

(assert (= (and b!5160506 ((_ is Star!14533) (regOne!29578 (h!66304 (exprs!4417 ctx!100))))) b!5161381))

(assert (= (and b!5160506 ((_ is Union!14533) (regOne!29578 (h!66304 (exprs!4417 ctx!100))))) b!5161382))

(declare-fun b!5161385 () Bool)

(declare-fun e!3216052 () Bool)

(declare-fun tp!1447032 () Bool)

(assert (=> b!5161385 (= e!3216052 tp!1447032)))

(declare-fun b!5161386 () Bool)

(declare-fun tp!1447033 () Bool)

(declare-fun tp!1447029 () Bool)

(assert (=> b!5161386 (= e!3216052 (and tp!1447033 tp!1447029))))

(assert (=> b!5160506 (= tp!1446248 e!3216052)))

(declare-fun b!5161383 () Bool)

(assert (=> b!5161383 (= e!3216052 tp_is_empty!38215)))

(declare-fun b!5161384 () Bool)

(declare-fun tp!1447031 () Bool)

(declare-fun tp!1447030 () Bool)

(assert (=> b!5161384 (= e!3216052 (and tp!1447031 tp!1447030))))

(assert (= (and b!5160506 ((_ is ElementMatch!14533) (regTwo!29578 (h!66304 (exprs!4417 ctx!100))))) b!5161383))

(assert (= (and b!5160506 ((_ is Concat!23378) (regTwo!29578 (h!66304 (exprs!4417 ctx!100))))) b!5161384))

(assert (= (and b!5160506 ((_ is Star!14533) (regTwo!29578 (h!66304 (exprs!4417 ctx!100))))) b!5161385))

(assert (= (and b!5160506 ((_ is Union!14533) (regTwo!29578 (h!66304 (exprs!4417 ctx!100))))) b!5161386))

(declare-fun b!5161389 () Bool)

(declare-fun e!3216053 () Bool)

(declare-fun tp!1447037 () Bool)

(assert (=> b!5161389 (= e!3216053 tp!1447037)))

(declare-fun b!5161390 () Bool)

(declare-fun tp!1447038 () Bool)

(declare-fun tp!1447034 () Bool)

(assert (=> b!5161390 (= e!3216053 (and tp!1447038 tp!1447034))))

(assert (=> b!5160454 (= tp!1446186 e!3216053)))

(declare-fun b!5161387 () Bool)

(assert (=> b!5161387 (= e!3216053 tp_is_empty!38215)))

(declare-fun b!5161388 () Bool)

(declare-fun tp!1447036 () Bool)

(declare-fun tp!1447035 () Bool)

(assert (=> b!5161388 (= e!3216053 (and tp!1447036 tp!1447035))))

(assert (= (and b!5160454 ((_ is ElementMatch!14533) (regOne!29579 (regOne!29579 (regOne!29579 expr!117))))) b!5161387))

(assert (= (and b!5160454 ((_ is Concat!23378) (regOne!29579 (regOne!29579 (regOne!29579 expr!117))))) b!5161388))

(assert (= (and b!5160454 ((_ is Star!14533) (regOne!29579 (regOne!29579 (regOne!29579 expr!117))))) b!5161389))

(assert (= (and b!5160454 ((_ is Union!14533) (regOne!29579 (regOne!29579 (regOne!29579 expr!117))))) b!5161390))

(declare-fun b!5161393 () Bool)

(declare-fun e!3216054 () Bool)

(declare-fun tp!1447042 () Bool)

(assert (=> b!5161393 (= e!3216054 tp!1447042)))

(declare-fun b!5161394 () Bool)

(declare-fun tp!1447043 () Bool)

(declare-fun tp!1447039 () Bool)

(assert (=> b!5161394 (= e!3216054 (and tp!1447043 tp!1447039))))

(assert (=> b!5160454 (= tp!1446182 e!3216054)))

(declare-fun b!5161391 () Bool)

(assert (=> b!5161391 (= e!3216054 tp_is_empty!38215)))

(declare-fun b!5161392 () Bool)

(declare-fun tp!1447041 () Bool)

(declare-fun tp!1447040 () Bool)

(assert (=> b!5161392 (= e!3216054 (and tp!1447041 tp!1447040))))

(assert (= (and b!5160454 ((_ is ElementMatch!14533) (regTwo!29579 (regOne!29579 (regOne!29579 expr!117))))) b!5161391))

(assert (= (and b!5160454 ((_ is Concat!23378) (regTwo!29579 (regOne!29579 (regOne!29579 expr!117))))) b!5161392))

(assert (= (and b!5160454 ((_ is Star!14533) (regTwo!29579 (regOne!29579 (regOne!29579 expr!117))))) b!5161393))

(assert (= (and b!5160454 ((_ is Union!14533) (regTwo!29579 (regOne!29579 (regOne!29579 expr!117))))) b!5161394))

(declare-fun b!5161397 () Bool)

(declare-fun e!3216055 () Bool)

(declare-fun tp!1447047 () Bool)

(assert (=> b!5161397 (= e!3216055 tp!1447047)))

(declare-fun b!5161398 () Bool)

(declare-fun tp!1447048 () Bool)

(declare-fun tp!1447044 () Bool)

(assert (=> b!5161398 (= e!3216055 (and tp!1447048 tp!1447044))))

(assert (=> b!5160429 (= tp!1446155 e!3216055)))

(declare-fun b!5161395 () Bool)

(assert (=> b!5161395 (= e!3216055 tp_is_empty!38215)))

(declare-fun b!5161396 () Bool)

(declare-fun tp!1447046 () Bool)

(declare-fun tp!1447045 () Bool)

(assert (=> b!5161396 (= e!3216055 (and tp!1447046 tp!1447045))))

(assert (= (and b!5160429 ((_ is ElementMatch!14533) (reg!14862 (regTwo!29579 (regOne!29578 expr!117))))) b!5161395))

(assert (= (and b!5160429 ((_ is Concat!23378) (reg!14862 (regTwo!29579 (regOne!29578 expr!117))))) b!5161396))

(assert (= (and b!5160429 ((_ is Star!14533) (reg!14862 (regTwo!29579 (regOne!29578 expr!117))))) b!5161397))

(assert (= (and b!5160429 ((_ is Union!14533) (reg!14862 (regTwo!29579 (regOne!29578 expr!117))))) b!5161398))

(declare-fun b!5161401 () Bool)

(declare-fun e!3216056 () Bool)

(declare-fun tp!1447052 () Bool)

(assert (=> b!5161401 (= e!3216056 tp!1447052)))

(declare-fun b!5161402 () Bool)

(declare-fun tp!1447053 () Bool)

(declare-fun tp!1447049 () Bool)

(assert (=> b!5161402 (= e!3216056 (and tp!1447053 tp!1447049))))

(assert (=> b!5160422 (= tp!1446146 e!3216056)))

(declare-fun b!5161399 () Bool)

(assert (=> b!5161399 (= e!3216056 tp_is_empty!38215)))

(declare-fun b!5161400 () Bool)

(declare-fun tp!1447051 () Bool)

(declare-fun tp!1447050 () Bool)

(assert (=> b!5161400 (= e!3216056 (and tp!1447051 tp!1447050))))

(assert (= (and b!5160422 ((_ is ElementMatch!14533) (regOne!29579 (regTwo!29578 (reg!14862 expr!117))))) b!5161399))

(assert (= (and b!5160422 ((_ is Concat!23378) (regOne!29579 (regTwo!29578 (reg!14862 expr!117))))) b!5161400))

(assert (= (and b!5160422 ((_ is Star!14533) (regOne!29579 (regTwo!29578 (reg!14862 expr!117))))) b!5161401))

(assert (= (and b!5160422 ((_ is Union!14533) (regOne!29579 (regTwo!29578 (reg!14862 expr!117))))) b!5161402))

(declare-fun b!5161405 () Bool)

(declare-fun e!3216057 () Bool)

(declare-fun tp!1447057 () Bool)

(assert (=> b!5161405 (= e!3216057 tp!1447057)))

(declare-fun b!5161406 () Bool)

(declare-fun tp!1447058 () Bool)

(declare-fun tp!1447054 () Bool)

(assert (=> b!5161406 (= e!3216057 (and tp!1447058 tp!1447054))))

(assert (=> b!5160422 (= tp!1446142 e!3216057)))

(declare-fun b!5161403 () Bool)

(assert (=> b!5161403 (= e!3216057 tp_is_empty!38215)))

(declare-fun b!5161404 () Bool)

(declare-fun tp!1447056 () Bool)

(declare-fun tp!1447055 () Bool)

(assert (=> b!5161404 (= e!3216057 (and tp!1447056 tp!1447055))))

(assert (= (and b!5160422 ((_ is ElementMatch!14533) (regTwo!29579 (regTwo!29578 (reg!14862 expr!117))))) b!5161403))

(assert (= (and b!5160422 ((_ is Concat!23378) (regTwo!29579 (regTwo!29578 (reg!14862 expr!117))))) b!5161404))

(assert (= (and b!5160422 ((_ is Star!14533) (regTwo!29579 (regTwo!29578 (reg!14862 expr!117))))) b!5161405))

(assert (= (and b!5160422 ((_ is Union!14533) (regTwo!29579 (regTwo!29578 (reg!14862 expr!117))))) b!5161406))

(declare-fun b_lambda!200539 () Bool)

(assert (= b_lambda!200527 (or d!1665564 b_lambda!200539)))

(declare-fun bs!1202549 () Bool)

(declare-fun d!1665666 () Bool)

(assert (= bs!1202549 (and d!1665666 d!1665564)))

(assert (=> bs!1202549 (= (dynLambda!23818 lambda!257644 (h!66304 (exprs!4417 ctx!100))) (not (dynLambda!23818 lambda!257619 (h!66304 (exprs!4417 ctx!100)))))))

(declare-fun b_lambda!200553 () Bool)

(assert (=> (not b_lambda!200553) (not bs!1202549)))

(declare-fun m!6212364 () Bool)

(assert (=> bs!1202549 m!6212364))

(assert (=> b!5160732 d!1665666))

(declare-fun b_lambda!200541 () Bool)

(assert (= b_lambda!200535 (or d!1665488 b_lambda!200541)))

(declare-fun bs!1202550 () Bool)

(declare-fun d!1665668 () Bool)

(assert (= bs!1202550 (and d!1665668 d!1665488)))

(assert (=> bs!1202550 (= (dynLambda!23823 lambda!257611 (h!66307 (toList!8413 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)))) (lostCause!1619 (h!66307 (toList!8413 (derivationStepZipperDown!180 expr!117 ctx!100 a!1296)))))))

(declare-fun m!6212366 () Bool)

(assert (=> bs!1202550 m!6212366))

(assert (=> b!5160863 d!1665668))

(declare-fun b_lambda!200543 () Bool)

(assert (= b_lambda!200531 (or d!1665524 b_lambda!200543)))

(declare-fun bs!1202551 () Bool)

(declare-fun d!1665670 () Bool)

(assert (= bs!1202551 (and d!1665670 d!1665524)))

(assert (=> bs!1202551 (= (dynLambda!23823 lambda!257629 lt!2122283) (not (lostCause!1619 lt!2122283)))))

(declare-fun m!6212368 () Bool)

(assert (=> bs!1202551 m!6212368))

(assert (=> d!1665622 d!1665670))

(declare-fun b_lambda!200545 () Bool)

(assert (= b_lambda!200537 (or d!1665546 b_lambda!200545)))

(declare-fun bs!1202552 () Bool)

(declare-fun d!1665672 () Bool)

(assert (= bs!1202552 (and d!1665672 d!1665546)))

(assert (=> bs!1202552 (= (dynLambda!23823 lambda!257641 (h!66307 (ite c!887935 lt!2122235 lt!2122230))) (not (dynLambda!23823 (ite c!887935 lambda!257612 lambda!257613) (h!66307 (ite c!887935 lt!2122235 lt!2122230)))))))

(declare-fun b_lambda!200555 () Bool)

(assert (=> (not b_lambda!200555) (not bs!1202552)))

(declare-fun m!6212370 () Bool)

(assert (=> bs!1202552 m!6212370))

(assert (=> b!5160880 d!1665672))

(declare-fun b_lambda!200547 () Bool)

(assert (= b_lambda!200533 (or d!1665488 b_lambda!200547)))

(declare-fun bs!1202553 () Bool)

(declare-fun d!1665674 () Bool)

(assert (= bs!1202553 (and d!1665674 d!1665488)))

(assert (=> bs!1202553 (= (dynLambda!23823 lambda!257611 (h!66307 lt!2122230)) (lostCause!1619 (h!66307 lt!2122230)))))

(declare-fun m!6212372 () Bool)

(assert (=> bs!1202553 m!6212372))

(assert (=> b!5160795 d!1665674))

(declare-fun b_lambda!200549 () Bool)

(assert (= b_lambda!200525 (or d!1665488 b_lambda!200549)))

(declare-fun bs!1202554 () Bool)

(declare-fun d!1665676 () Bool)

(assert (= bs!1202554 (and d!1665676 d!1665488)))

(assert (=> bs!1202554 (= (dynLambda!23823 lambda!257611 (h!66307 lt!2122235)) (lostCause!1619 (h!66307 lt!2122235)))))

(declare-fun m!6212374 () Bool)

(assert (=> bs!1202554 m!6212374))

(assert (=> b!5160695 d!1665676))

(declare-fun b_lambda!200551 () Bool)

(assert (= b_lambda!200529 (or d!1665510 b_lambda!200551)))

(declare-fun bs!1202555 () Bool)

(declare-fun d!1665678 () Bool)

(assert (= bs!1202555 (and d!1665678 d!1665510)))

(assert (=> bs!1202555 (= (dynLambda!23818 lambda!257616 (h!66304 (t!373051 (exprs!4417 ctx!100)))) (validRegex!6388 (h!66304 (t!373051 (exprs!4417 ctx!100)))))))

(declare-fun m!6212376 () Bool)

(assert (=> bs!1202555 m!6212376))

(assert (=> b!5160761 d!1665678))

(check-sat (not b!5161244) (not b!5160776) (not bm!361937) (not b!5160932) (not b!5161031) (not b!5161075) (not b!5161260) (not b!5161240) (not b!5160903) (not b!5161241) (not b!5161145) (not b!5161317) (not b!5161233) (not b!5161393) (not b!5161168) (not b!5160929) (not bm!361957) (not b!5161020) (not b!5160889) (not b!5161229) (not b!5161072) (not b!5160945) (not b!5161084) (not b!5161404) (not b!5161173) (not b!5161008) (not b_lambda!200553) (not b!5161157) (not b!5161164) (not b!5161352) (not b!5161333) (not b!5161381) (not b!5161382) (not b!5160870) (not b!5161230) (not b!5161044) (not b!5161184) (not b!5160957) (not b!5161321) (not bm!361955) (not b!5161125) (not d!1665590) (not b!5161069) (not b!5160956) (not b!5161217) (not b!5161177) (not b!5161250) (not b!5161057) (not b!5161061) (not b!5160931) (not bs!1202550) (not b!5160830) (not bm!361939) (not b!5161160) (not b!5161065) (not b!5161024) (not b!5161372) (not b!5161115) (not b!5161223) (not b!5161152) (not b!5161097) (not d!1665620) (not b!5161176) (not b_lambda!200551) (not b!5161167) (not b!5161185) (not b!5160997) (not b!5161330) (not b!5161296) (not b_lambda!200541) (not b!5161360) (not b!5161346) (not b!5161016) (not b!5161385) (not b!5160985) (not b!5160937) (not b!5160969) (not b!5160713) (not b!5161041) (not b!5161378) (not d!1665656) (not b!5161370) (not b!5160897) (not b!5160991) (not b!5161325) (not b!5160980) (not b!5161025) (not b!5161100) (not d!1665626) (not bm!361929) (not b!5160951) (not b!5161344) (not b!5161261) (not b!5161389) (not b!5161284) (not b!5160850) (not b!5161153) (not b!5160940) (not b!5160777) (not b!5161099) (not b!5161101) (not b!5161350) (not b!5160796) (not b!5161088) (not b!5161156) (not b!5161161) (not b!5160963) (not b!5161205) (not b!5161191) (not b!5161362) (not b!5160933) (not b!5161141) (not b!5161334) (not b!5161305) (not b!5161028) (not b!5161224) (not b!5161200) (not b!5161171) (not b!5161326) (not b!5161135) (not b!5160989) (not b!5161392) (not b!5160988) (not b!5160955) (not b!5161400) (not b!5161169) (not b!5161270) (not bs!1202555) (not b!5161183) (not b!5161199) (not b!5161073) (not b!5161004) (not b!5161293) (not b!5161019) (not b!5160964) (not bm!361925) (not bm!361938) (not b!5161175) (not b!5161096) (not b!5160928) (not b!5160987) (not b_lambda!200543) (not b!5161236) (not b!5161023) (not b!5161083) (not b!5161354) (not bm!361915) (not b!5160944) (not b!5161328) (not b!5161282) (not b!5161310) (not b!5160700) (not b!5161237) (not b!5161322) (not b!5160967) (not b!5161052) (not b!5161365) (not b!5161242) (not b!5161369) (not bm!361916) (not bm!361928) (not b!5161366) (not b!5161092) (not b!5161071) (not d!1665630) (not b!5161245) (not b!5161093) (not b!5161188) (not b!5161258) (not b!5161133) (not b!5160733) (not b!5160891) (not b!5161364) (not b!5161357) (not b_lambda!200549) (not b!5161248) (not b!5161216) (not b!5161276) (not d!1665588) (not b!5161085) (not b!5161151) (not b!5161336) (not b!5161015) (not b!5161341) (not b!5161121) (not b!5161300) (not b!5161211) (not b!5161249) (not b!5161262) (not b!5161348) (not b!5161056) (not b!5160993) (not b!5161215) (not b!5160960) (not b!5160896) (not b!5160907) (not b!5161332) (not b!5161049) (not b!5161009) (not b!5161374) (not bm!361940) (not b!5161029) (not b!5161406) (not b!5161011) (not b!5161095) (not b!5160979) (not b!5161077) (not bm!361933) (not b!5161053) (not b!5160757) (not b!5161266) (not b!5161285) (not b!5161193) (not b!5161361) (not b!5161228) (not b!5161234) (not b!5160999) (not b!5160722) (not b!5160904) (not b!5161128) (not b!5161269) (not b!5161397) (not b!5161377) (not b!5160900) (not b!5161232) (not b!5160976) (not b!5161358) (not b!5161342) (not b!5161116) (not d!1665638) (not b!5161197) (not b!5161396) (not b!5161051) (not d!1665610) (not b!5161063) (not b!5161203) (not b!5161144) (not b!5161129) (not b!5161147) (not b!5161013) (not bm!361953) (not b!5160909) (not b!5160948) (not d!1665600) (not b!5161208) (not b!5161337) (not b!5161384) (not b!5161036) (not b!5161068) (not bm!361932) (not b!5161035) (not b!5161225) (not b!5161207) (not b!5161312) (not b!5161155) (not b!5161252) (not b!5160915) (not b!5161390) (not b!5161405) (not d!1665648) (not b!5160973) (not b!5160901) (not b!5161292) (not b!5160919) (not b!5161278) (not b!5161032) tp_is_empty!38215 (not b!5161148) (not b!5161302) (not b!5161089) (not bm!361914) (not b!5161001) (not b!5161087) (not b!5161040) (not b!5160780) (not b!5160981) (not b!5161308) (not b!5160762) (not b!5160936) (not b!5160879) (not b!5160972) (not b!5161289) (not bm!361954) (not b!5160916) (not b_lambda!200521) (not b!5161294) (not b!5160943) (not b_lambda!200545) (not d!1665650) (not b!5161103) (not b!5161221) (not b!5161104) (not b!5161000) (not b!5160913) (not b!5160887) (not b!5161007) (not b!5161329) (not b!5161320) (not b!5160737) (not bm!361934) (not b!5160924) (not b!5161256) (not b!5161272) (not b!5161196) (not b!5161132) (not b!5161253) (not b!5161039) (not bm!361921) (not b!5161123) (not b!5160921) (not b!5160893) (not b!5161017) (not b!5161349) (not b!5161140) (not bm!361920) (not b!5161159) (not b!5161376) (not b!5161388) (not b!5161301) (not b!5160912) (not b!5160965) (not b!5161356) (not b!5161112) (not b_lambda!200555) (not b!5161043) (not b!5161314) (not b!5160864) (not b!5160941) (not b!5161257) (not b!5160895) (not b!5161290) (not b_lambda!200539) (not b!5161080) (not b!5161091) (not b!5160925) (not b!5161345) (not b!5161021) (not b!5161401) (not b!5160877) (not b!5161246) (not b!5160983) (not b!5161181) (not b!5161268) (not b!5160683) (not b!5160696) (not b!5161353) (not b!5161277) (not b!5161027) (not b!5161047) (not b!5161306) (not b!5160905) (not b!5160984) (not bs!1202551) (not b!5161131) (not b!5160995) (not b!5161274) (not b!5160908) (not b!5161119) (not b!5161139) (not b!5160859) (not b!5160959) (not b!5161165) (not b!5161238) (not b!5160787) (not b!5161220) (not b!5161187) (not b!5161048) (not b!5161113) (not d!1665628) (not b!5161120) (not b!5161313) (not b!5161386) (not b!5160888) (not b!5161060) (not b!5161298) (not bm!361926) (not b!5160878) (not bm!361922) (not b!5161105) (not b!5161033) (not b!5161286) (not b!5160927) (not b!5160884) (not b!5160917) (not b!5160935) (not b!5161201) (not b!5161219) (not b!5161373) (not b!5161045) (not d!1665660) (not bs!1202553) (not b!5161368) (not b!5160923) (not b!5161124) (not b!5160975) (not b!5161163) (not d!1665640) (not b!5161192) (not d!1665652) (not b!5161394) (not b!5160996) (not b!5161108) (not bs!1202554) (not b!5161212) (not b!5160949) (not b!5161076) (not b!5161213) (not b!5161254) (not b!5161136) (not b!5160869) (not b!5161012) (not b!5161003) (not b!5161398) (not b!5161149) (not b!5161402) (not b!5161280) (not bm!361943) (not b!5161111) (not b!5161209) (not b!5161172) (not b!5161055) (not b!5161067) (not bm!361952) (not b!5161059) (not b!5161109) (not bm!361958) (not b!5161309) (not bm!361945) (not b!5161137) (not b!5160953) (not b!5160952) (not b!5161288) (not b!5161264) (not b!5160947) (not b!5160892) (not b!5161281) (not b!5160961) (not bm!361944) (not b!5161143) (not b!5161189) (not b!5161127) (not b!5160883) (not b!5160971) (not b!5161340) (not b!5161316) (not d!1665662) (not b!5160939) (not b!5161079) (not b!5161297) (not b!5161338) (not b!5160885) (not b!5161226) (not d!1665622) (not b!5160899) (not b!5161037) (not b!5161179) (not b!5160920) (not b!5160968) (not b!5161064) (not b!5161318) (not b!5160731) (not b!5160911) (not d!1665642) (not b!5161180) (not b!5161195) (not b!5161304) (not b!5160977) (not b!5161204) (not b_lambda!200547) (not b!5161107) (not b!5161117) (not b!5161324) (not b!5161265) (not b!5161081) (not b!5161273) (not b!5161380) (not b!5160881) (not b!5161005) (not b!5160992))
(check-sat)
