; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733476 () Bool)

(assert start!733476)

(declare-fun b!7612162 () Bool)

(declare-fun e!4527217 () Bool)

(declare-fun tp!2221666 () Bool)

(declare-fun tp!2221665 () Bool)

(assert (=> b!7612162 (= e!4527217 (and tp!2221666 tp!2221665))))

(declare-fun b!7612163 () Bool)

(declare-fun res!3047527 () Bool)

(declare-fun e!4527218 () Bool)

(assert (=> b!7612163 (=> (not res!3047527) (not e!4527218))))

(declare-datatypes ((C!40784 0))(
  ( (C!40785 (val!30832 Int)) )
))
(declare-datatypes ((Regex!20229 0))(
  ( (ElementMatch!20229 (c!1403464 C!40784)) (Concat!29074 (regOne!40970 Regex!20229) (regTwo!40970 Regex!20229)) (EmptyExpr!20229) (Star!20229 (reg!20558 Regex!20229)) (EmptyLang!20229) (Union!20229 (regOne!40971 Regex!20229) (regTwo!40971 Regex!20229)) )
))
(declare-fun r!19218 () Regex!20229)

(get-info :version)

(assert (=> b!7612163 (= res!3047527 (and (not ((_ is ElementMatch!20229) r!19218)) (not ((_ is Star!20229) r!19218)) (not ((_ is Union!20229) r!19218)) ((_ is Concat!29074) r!19218)))))

(declare-fun b!7612164 () Bool)

(declare-fun tp!2221669 () Bool)

(assert (=> b!7612164 (= e!4527217 tp!2221669)))

(declare-fun res!3047528 () Bool)

(assert (=> start!733476 (=> (not res!3047528) (not e!4527218))))

(declare-fun validRegex!10651 (Regex!20229) Bool)

(assert (=> start!733476 (= res!3047528 (validRegex!10651 r!19218))))

(assert (=> start!733476 e!4527218))

(assert (=> start!733476 e!4527217))

(declare-fun b!7612165 () Bool)

(declare-fun tp_is_empty!50813 () Bool)

(assert (=> b!7612165 (= e!4527217 tp_is_empty!50813)))

(declare-fun b!7612166 () Bool)

(declare-fun e!4527219 () Bool)

(declare-fun nullable!8850 (Regex!20229) Bool)

(assert (=> b!7612166 (= e!4527219 (nullable!8850 (regTwo!40970 r!19218)))))

(declare-fun b!7612167 () Bool)

(declare-fun res!3047525 () Bool)

(assert (=> b!7612167 (=> (not res!3047525) (not e!4527218))))

(assert (=> b!7612167 (= res!3047525 (nullable!8850 r!19218))))

(declare-fun b!7612168 () Bool)

(declare-fun tp!2221667 () Bool)

(declare-fun tp!2221668 () Bool)

(assert (=> b!7612168 (= e!4527217 (and tp!2221667 tp!2221668))))

(declare-fun b!7612169 () Bool)

(assert (=> b!7612169 (= e!4527218 (not e!4527219))))

(declare-fun res!3047526 () Bool)

(assert (=> b!7612169 (=> res!3047526 e!4527219)))

(assert (=> b!7612169 (= res!3047526 (not (validRegex!10651 (regTwo!40970 r!19218))))))

(declare-fun lostCause!1901 (Regex!20229) Bool)

(assert (=> b!7612169 (not (lostCause!1901 (regOne!40970 r!19218)))))

(declare-datatypes ((Unit!167278 0))(
  ( (Unit!167279) )
))
(declare-fun lt!2655028 () Unit!167278)

(declare-fun lemmaNullableThenNotLostCause!112 (Regex!20229) Unit!167278)

(assert (=> b!7612169 (= lt!2655028 (lemmaNullableThenNotLostCause!112 (regOne!40970 r!19218)))))

(assert (= (and start!733476 res!3047528) b!7612167))

(assert (= (and b!7612167 res!3047525) b!7612163))

(assert (= (and b!7612163 res!3047527) b!7612169))

(assert (= (and b!7612169 (not res!3047526)) b!7612166))

(assert (= (and start!733476 ((_ is ElementMatch!20229) r!19218)) b!7612165))

(assert (= (and start!733476 ((_ is Concat!29074) r!19218)) b!7612168))

(assert (= (and start!733476 ((_ is Star!20229) r!19218)) b!7612164))

(assert (= (and start!733476 ((_ is Union!20229) r!19218)) b!7612162))

(declare-fun m!8148470 () Bool)

(assert (=> start!733476 m!8148470))

(declare-fun m!8148472 () Bool)

(assert (=> b!7612166 m!8148472))

(declare-fun m!8148474 () Bool)

(assert (=> b!7612167 m!8148474))

(declare-fun m!8148476 () Bool)

(assert (=> b!7612169 m!8148476))

(declare-fun m!8148478 () Bool)

(assert (=> b!7612169 m!8148478))

(declare-fun m!8148480 () Bool)

(assert (=> b!7612169 m!8148480))

(check-sat (not b!7612169) (not b!7612164) (not b!7612166) (not start!733476) (not b!7612162) (not b!7612167) (not b!7612168) tp_is_empty!50813)
(check-sat)
(get-model)

(declare-fun d!2322406 () Bool)

(declare-fun res!3047549 () Bool)

(declare-fun e!4527250 () Bool)

(assert (=> d!2322406 (=> res!3047549 e!4527250)))

(assert (=> d!2322406 (= res!3047549 ((_ is ElementMatch!20229) r!19218))))

(assert (=> d!2322406 (= (validRegex!10651 r!19218) e!4527250)))

(declare-fun bm!699212 () Bool)

(declare-fun c!1403473 () Bool)

(declare-fun c!1403474 () Bool)

(declare-fun call!699219 () Bool)

(assert (=> bm!699212 (= call!699219 (validRegex!10651 (ite c!1403473 (reg!20558 r!19218) (ite c!1403474 (regTwo!40971 r!19218) (regTwo!40970 r!19218)))))))

(declare-fun bm!699213 () Bool)

(declare-fun call!699217 () Bool)

(assert (=> bm!699213 (= call!699217 (validRegex!10651 (ite c!1403474 (regOne!40971 r!19218) (regOne!40970 r!19218))))))

(declare-fun bm!699214 () Bool)

(declare-fun call!699218 () Bool)

(assert (=> bm!699214 (= call!699218 call!699219)))

(declare-fun b!7612206 () Bool)

(declare-fun e!4527252 () Bool)

(assert (=> b!7612206 (= e!4527250 e!4527252)))

(assert (=> b!7612206 (= c!1403473 ((_ is Star!20229) r!19218))))

(declare-fun b!7612207 () Bool)

(declare-fun e!4527249 () Bool)

(assert (=> b!7612207 (= e!4527252 e!4527249)))

(assert (=> b!7612207 (= c!1403474 ((_ is Union!20229) r!19218))))

(declare-fun b!7612208 () Bool)

(declare-fun e!4527248 () Bool)

(declare-fun e!4527253 () Bool)

(assert (=> b!7612208 (= e!4527248 e!4527253)))

(declare-fun res!3047550 () Bool)

(assert (=> b!7612208 (=> (not res!3047550) (not e!4527253))))

(assert (=> b!7612208 (= res!3047550 call!699217)))

(declare-fun b!7612209 () Bool)

(declare-fun e!4527254 () Bool)

(assert (=> b!7612209 (= e!4527252 e!4527254)))

(declare-fun res!3047552 () Bool)

(assert (=> b!7612209 (= res!3047552 (not (nullable!8850 (reg!20558 r!19218))))))

(assert (=> b!7612209 (=> (not res!3047552) (not e!4527254))))

(declare-fun b!7612210 () Bool)

(declare-fun res!3047551 () Bool)

(declare-fun e!4527251 () Bool)

(assert (=> b!7612210 (=> (not res!3047551) (not e!4527251))))

(assert (=> b!7612210 (= res!3047551 call!699217)))

(assert (=> b!7612210 (= e!4527249 e!4527251)))

(declare-fun b!7612211 () Bool)

(declare-fun res!3047553 () Bool)

(assert (=> b!7612211 (=> res!3047553 e!4527248)))

(assert (=> b!7612211 (= res!3047553 (not ((_ is Concat!29074) r!19218)))))

(assert (=> b!7612211 (= e!4527249 e!4527248)))

(declare-fun b!7612212 () Bool)

(assert (=> b!7612212 (= e!4527253 call!699218)))

(declare-fun b!7612213 () Bool)

(assert (=> b!7612213 (= e!4527254 call!699219)))

(declare-fun b!7612214 () Bool)

(assert (=> b!7612214 (= e!4527251 call!699218)))

(assert (= (and d!2322406 (not res!3047549)) b!7612206))

(assert (= (and b!7612206 c!1403473) b!7612209))

(assert (= (and b!7612206 (not c!1403473)) b!7612207))

(assert (= (and b!7612209 res!3047552) b!7612213))

(assert (= (and b!7612207 c!1403474) b!7612210))

(assert (= (and b!7612207 (not c!1403474)) b!7612211))

(assert (= (and b!7612210 res!3047551) b!7612214))

(assert (= (and b!7612211 (not res!3047553)) b!7612208))

(assert (= (and b!7612208 res!3047550) b!7612212))

(assert (= (or b!7612210 b!7612208) bm!699213))

(assert (= (or b!7612214 b!7612212) bm!699214))

(assert (= (or b!7612213 bm!699214) bm!699212))

(declare-fun m!8148484 () Bool)

(assert (=> bm!699212 m!8148484))

(declare-fun m!8148486 () Bool)

(assert (=> bm!699213 m!8148486))

(declare-fun m!8148488 () Bool)

(assert (=> b!7612209 m!8148488))

(assert (=> start!733476 d!2322406))

(declare-fun d!2322412 () Bool)

(declare-fun nullableFct!3533 (Regex!20229) Bool)

(assert (=> d!2322412 (= (nullable!8850 r!19218) (nullableFct!3533 r!19218))))

(declare-fun bs!1942892 () Bool)

(assert (= bs!1942892 d!2322412))

(declare-fun m!8148496 () Bool)

(assert (=> bs!1942892 m!8148496))

(assert (=> b!7612167 d!2322412))

(declare-fun d!2322416 () Bool)

(declare-fun res!3047559 () Bool)

(declare-fun e!4527264 () Bool)

(assert (=> d!2322416 (=> res!3047559 e!4527264)))

(assert (=> d!2322416 (= res!3047559 ((_ is ElementMatch!20229) (regTwo!40970 r!19218)))))

(assert (=> d!2322416 (= (validRegex!10651 (regTwo!40970 r!19218)) e!4527264)))

(declare-fun call!699225 () Bool)

(declare-fun bm!699218 () Bool)

(declare-fun c!1403478 () Bool)

(declare-fun c!1403477 () Bool)

(assert (=> bm!699218 (= call!699225 (validRegex!10651 (ite c!1403477 (reg!20558 (regTwo!40970 r!19218)) (ite c!1403478 (regTwo!40971 (regTwo!40970 r!19218)) (regTwo!40970 (regTwo!40970 r!19218))))))))

(declare-fun bm!699219 () Bool)

(declare-fun call!699223 () Bool)

(assert (=> bm!699219 (= call!699223 (validRegex!10651 (ite c!1403478 (regOne!40971 (regTwo!40970 r!19218)) (regOne!40970 (regTwo!40970 r!19218)))))))

(declare-fun bm!699220 () Bool)

(declare-fun call!699224 () Bool)

(assert (=> bm!699220 (= call!699224 call!699225)))

(declare-fun b!7612224 () Bool)

(declare-fun e!4527266 () Bool)

(assert (=> b!7612224 (= e!4527264 e!4527266)))

(assert (=> b!7612224 (= c!1403477 ((_ is Star!20229) (regTwo!40970 r!19218)))))

(declare-fun b!7612225 () Bool)

(declare-fun e!4527263 () Bool)

(assert (=> b!7612225 (= e!4527266 e!4527263)))

(assert (=> b!7612225 (= c!1403478 ((_ is Union!20229) (regTwo!40970 r!19218)))))

(declare-fun b!7612226 () Bool)

(declare-fun e!4527262 () Bool)

(declare-fun e!4527267 () Bool)

(assert (=> b!7612226 (= e!4527262 e!4527267)))

(declare-fun res!3047560 () Bool)

(assert (=> b!7612226 (=> (not res!3047560) (not e!4527267))))

(assert (=> b!7612226 (= res!3047560 call!699223)))

(declare-fun b!7612227 () Bool)

(declare-fun e!4527268 () Bool)

(assert (=> b!7612227 (= e!4527266 e!4527268)))

(declare-fun res!3047562 () Bool)

(assert (=> b!7612227 (= res!3047562 (not (nullable!8850 (reg!20558 (regTwo!40970 r!19218)))))))

(assert (=> b!7612227 (=> (not res!3047562) (not e!4527268))))

(declare-fun b!7612228 () Bool)

(declare-fun res!3047561 () Bool)

(declare-fun e!4527265 () Bool)

(assert (=> b!7612228 (=> (not res!3047561) (not e!4527265))))

(assert (=> b!7612228 (= res!3047561 call!699223)))

(assert (=> b!7612228 (= e!4527263 e!4527265)))

(declare-fun b!7612229 () Bool)

(declare-fun res!3047563 () Bool)

(assert (=> b!7612229 (=> res!3047563 e!4527262)))

(assert (=> b!7612229 (= res!3047563 (not ((_ is Concat!29074) (regTwo!40970 r!19218))))))

(assert (=> b!7612229 (= e!4527263 e!4527262)))

(declare-fun b!7612230 () Bool)

(assert (=> b!7612230 (= e!4527267 call!699224)))

(declare-fun b!7612231 () Bool)

(assert (=> b!7612231 (= e!4527268 call!699225)))

(declare-fun b!7612232 () Bool)

(assert (=> b!7612232 (= e!4527265 call!699224)))

(assert (= (and d!2322416 (not res!3047559)) b!7612224))

(assert (= (and b!7612224 c!1403477) b!7612227))

(assert (= (and b!7612224 (not c!1403477)) b!7612225))

(assert (= (and b!7612227 res!3047562) b!7612231))

(assert (= (and b!7612225 c!1403478) b!7612228))

(assert (= (and b!7612225 (not c!1403478)) b!7612229))

(assert (= (and b!7612228 res!3047561) b!7612232))

(assert (= (and b!7612229 (not res!3047563)) b!7612226))

(assert (= (and b!7612226 res!3047560) b!7612230))

(assert (= (or b!7612228 b!7612226) bm!699219))

(assert (= (or b!7612232 b!7612230) bm!699220))

(assert (= (or b!7612231 bm!699220) bm!699218))

(declare-fun m!8148498 () Bool)

(assert (=> bm!699218 m!8148498))

(declare-fun m!8148500 () Bool)

(assert (=> bm!699219 m!8148500))

(declare-fun m!8148502 () Bool)

(assert (=> b!7612227 m!8148502))

(assert (=> b!7612169 d!2322416))

(declare-fun d!2322418 () Bool)

(declare-fun lostCauseFct!548 (Regex!20229) Bool)

(assert (=> d!2322418 (= (lostCause!1901 (regOne!40970 r!19218)) (lostCauseFct!548 (regOne!40970 r!19218)))))

(declare-fun bs!1942894 () Bool)

(assert (= bs!1942894 d!2322418))

(declare-fun m!8148506 () Bool)

(assert (=> bs!1942894 m!8148506))

(assert (=> b!7612169 d!2322418))

(declare-fun d!2322422 () Bool)

(assert (=> d!2322422 (not (lostCause!1901 (regOne!40970 r!19218)))))

(declare-fun lt!2655034 () Unit!167278)

(declare-fun choose!58745 (Regex!20229) Unit!167278)

(assert (=> d!2322422 (= lt!2655034 (choose!58745 (regOne!40970 r!19218)))))

(assert (=> d!2322422 (validRegex!10651 (regOne!40970 r!19218))))

(assert (=> d!2322422 (= (lemmaNullableThenNotLostCause!112 (regOne!40970 r!19218)) lt!2655034)))

(declare-fun bs!1942897 () Bool)

(assert (= bs!1942897 d!2322422))

(assert (=> bs!1942897 m!8148478))

(declare-fun m!8148520 () Bool)

(assert (=> bs!1942897 m!8148520))

(declare-fun m!8148522 () Bool)

(assert (=> bs!1942897 m!8148522))

(assert (=> b!7612169 d!2322422))

(declare-fun d!2322428 () Bool)

(assert (=> d!2322428 (= (nullable!8850 (regTwo!40970 r!19218)) (nullableFct!3533 (regTwo!40970 r!19218)))))

(declare-fun bs!1942898 () Bool)

(assert (= bs!1942898 d!2322428))

(declare-fun m!8148524 () Bool)

(assert (=> bs!1942898 m!8148524))

(assert (=> b!7612166 d!2322428))

(declare-fun b!7612271 () Bool)

(declare-fun e!4527282 () Bool)

(declare-fun tp!2221701 () Bool)

(declare-fun tp!2221704 () Bool)

(assert (=> b!7612271 (= e!4527282 (and tp!2221701 tp!2221704))))

(declare-fun b!7612270 () Bool)

(assert (=> b!7612270 (= e!4527282 tp_is_empty!50813)))

(declare-fun b!7612273 () Bool)

(declare-fun tp!2221700 () Bool)

(declare-fun tp!2221702 () Bool)

(assert (=> b!7612273 (= e!4527282 (and tp!2221700 tp!2221702))))

(assert (=> b!7612168 (= tp!2221667 e!4527282)))

(declare-fun b!7612272 () Bool)

(declare-fun tp!2221703 () Bool)

(assert (=> b!7612272 (= e!4527282 tp!2221703)))

(assert (= (and b!7612168 ((_ is ElementMatch!20229) (regOne!40970 r!19218))) b!7612270))

(assert (= (and b!7612168 ((_ is Concat!29074) (regOne!40970 r!19218))) b!7612271))

(assert (= (and b!7612168 ((_ is Star!20229) (regOne!40970 r!19218))) b!7612272))

(assert (= (and b!7612168 ((_ is Union!20229) (regOne!40970 r!19218))) b!7612273))

(declare-fun b!7612283 () Bool)

(declare-fun e!4527285 () Bool)

(declare-fun tp!2221716 () Bool)

(declare-fun tp!2221719 () Bool)

(assert (=> b!7612283 (= e!4527285 (and tp!2221716 tp!2221719))))

(declare-fun b!7612282 () Bool)

(assert (=> b!7612282 (= e!4527285 tp_is_empty!50813)))

(declare-fun b!7612285 () Bool)

(declare-fun tp!2221715 () Bool)

(declare-fun tp!2221717 () Bool)

(assert (=> b!7612285 (= e!4527285 (and tp!2221715 tp!2221717))))

(assert (=> b!7612168 (= tp!2221668 e!4527285)))

(declare-fun b!7612284 () Bool)

(declare-fun tp!2221718 () Bool)

(assert (=> b!7612284 (= e!4527285 tp!2221718)))

(assert (= (and b!7612168 ((_ is ElementMatch!20229) (regTwo!40970 r!19218))) b!7612282))

(assert (= (and b!7612168 ((_ is Concat!29074) (regTwo!40970 r!19218))) b!7612283))

(assert (= (and b!7612168 ((_ is Star!20229) (regTwo!40970 r!19218))) b!7612284))

(assert (= (and b!7612168 ((_ is Union!20229) (regTwo!40970 r!19218))) b!7612285))

(declare-fun b!7612291 () Bool)

(declare-fun e!4527287 () Bool)

(declare-fun tp!2221726 () Bool)

(declare-fun tp!2221729 () Bool)

(assert (=> b!7612291 (= e!4527287 (and tp!2221726 tp!2221729))))

(declare-fun b!7612290 () Bool)

(assert (=> b!7612290 (= e!4527287 tp_is_empty!50813)))

(declare-fun b!7612293 () Bool)

(declare-fun tp!2221725 () Bool)

(declare-fun tp!2221727 () Bool)

(assert (=> b!7612293 (= e!4527287 (and tp!2221725 tp!2221727))))

(assert (=> b!7612162 (= tp!2221666 e!4527287)))

(declare-fun b!7612292 () Bool)

(declare-fun tp!2221728 () Bool)

(assert (=> b!7612292 (= e!4527287 tp!2221728)))

(assert (= (and b!7612162 ((_ is ElementMatch!20229) (regOne!40971 r!19218))) b!7612290))

(assert (= (and b!7612162 ((_ is Concat!29074) (regOne!40971 r!19218))) b!7612291))

(assert (= (and b!7612162 ((_ is Star!20229) (regOne!40971 r!19218))) b!7612292))

(assert (= (and b!7612162 ((_ is Union!20229) (regOne!40971 r!19218))) b!7612293))

(declare-fun b!7612295 () Bool)

(declare-fun e!4527288 () Bool)

(declare-fun tp!2221731 () Bool)

(declare-fun tp!2221734 () Bool)

(assert (=> b!7612295 (= e!4527288 (and tp!2221731 tp!2221734))))

(declare-fun b!7612294 () Bool)

(assert (=> b!7612294 (= e!4527288 tp_is_empty!50813)))

(declare-fun b!7612297 () Bool)

(declare-fun tp!2221730 () Bool)

(declare-fun tp!2221732 () Bool)

(assert (=> b!7612297 (= e!4527288 (and tp!2221730 tp!2221732))))

(assert (=> b!7612162 (= tp!2221665 e!4527288)))

(declare-fun b!7612296 () Bool)

(declare-fun tp!2221733 () Bool)

(assert (=> b!7612296 (= e!4527288 tp!2221733)))

(assert (= (and b!7612162 ((_ is ElementMatch!20229) (regTwo!40971 r!19218))) b!7612294))

(assert (= (and b!7612162 ((_ is Concat!29074) (regTwo!40971 r!19218))) b!7612295))

(assert (= (and b!7612162 ((_ is Star!20229) (regTwo!40971 r!19218))) b!7612296))

(assert (= (and b!7612162 ((_ is Union!20229) (regTwo!40971 r!19218))) b!7612297))

(declare-fun b!7612299 () Bool)

(declare-fun e!4527289 () Bool)

(declare-fun tp!2221736 () Bool)

(declare-fun tp!2221739 () Bool)

(assert (=> b!7612299 (= e!4527289 (and tp!2221736 tp!2221739))))

(declare-fun b!7612298 () Bool)

(assert (=> b!7612298 (= e!4527289 tp_is_empty!50813)))

(declare-fun b!7612301 () Bool)

(declare-fun tp!2221735 () Bool)

(declare-fun tp!2221737 () Bool)

(assert (=> b!7612301 (= e!4527289 (and tp!2221735 tp!2221737))))

(assert (=> b!7612164 (= tp!2221669 e!4527289)))

(declare-fun b!7612300 () Bool)

(declare-fun tp!2221738 () Bool)

(assert (=> b!7612300 (= e!4527289 tp!2221738)))

(assert (= (and b!7612164 ((_ is ElementMatch!20229) (reg!20558 r!19218))) b!7612298))

(assert (= (and b!7612164 ((_ is Concat!29074) (reg!20558 r!19218))) b!7612299))

(assert (= (and b!7612164 ((_ is Star!20229) (reg!20558 r!19218))) b!7612300))

(assert (= (and b!7612164 ((_ is Union!20229) (reg!20558 r!19218))) b!7612301))

(check-sat (not d!2322428) (not b!7612284) (not b!7612272) (not b!7612297) (not b!7612285) (not bm!699218) (not bm!699219) (not d!2322422) (not b!7612292) (not d!2322418) (not b!7612295) (not b!7612283) (not b!7612273) tp_is_empty!50813 (not bm!699212) (not b!7612271) (not b!7612291) (not b!7612296) (not b!7612293) (not d!2322412) (not b!7612299) (not b!7612209) (not b!7612227) (not bm!699213) (not b!7612300) (not b!7612301))
(check-sat)
(get-model)

(declare-fun b!7612316 () Bool)

(declare-fun e!4527303 () Bool)

(declare-fun e!4527305 () Bool)

(assert (=> b!7612316 (= e!4527303 e!4527305)))

(declare-fun res!3047581 () Bool)

(assert (=> b!7612316 (=> res!3047581 e!4527305)))

(assert (=> b!7612316 (= res!3047581 ((_ is EmptyLang!20229) (regOne!40970 r!19218)))))

(declare-fun bm!699228 () Bool)

(declare-fun call!699234 () Bool)

(declare-fun c!1403483 () Bool)

(assert (=> bm!699228 (= call!699234 (lostCause!1901 (ite c!1403483 (regOne!40971 (regOne!40970 r!19218)) (regOne!40970 (regOne!40970 r!19218)))))))

(declare-fun b!7612317 () Bool)

(declare-fun e!4527306 () Bool)

(declare-fun call!699233 () Bool)

(assert (=> b!7612317 (= e!4527306 call!699233)))

(declare-fun b!7612318 () Bool)

(declare-fun e!4527307 () Bool)

(assert (=> b!7612318 (= e!4527307 call!699233)))

(declare-fun d!2322430 () Bool)

(declare-fun lt!2655037 () Bool)

(declare-datatypes ((List!73083 0))(
  ( (Nil!72959) (Cons!72959 (h!79407 C!40784) (t!387818 List!73083)) )
))
(declare-datatypes ((Option!17331 0))(
  ( (None!17330) (Some!17330 (v!54465 List!73083)) )
))
(declare-fun isEmpty!41588 (Option!17331) Bool)

(declare-fun getLanguageWitness!1136 (Regex!20229) Option!17331)

(assert (=> d!2322430 (= lt!2655037 (isEmpty!41588 (getLanguageWitness!1136 (regOne!40970 r!19218))))))

(assert (=> d!2322430 (= lt!2655037 e!4527303)))

(declare-fun res!3047583 () Bool)

(assert (=> d!2322430 (=> (not res!3047583) (not e!4527303))))

(assert (=> d!2322430 (= res!3047583 (not ((_ is EmptyExpr!20229) (regOne!40970 r!19218))))))

(assert (=> d!2322430 (= (lostCauseFct!548 (regOne!40970 r!19218)) lt!2655037)))

(declare-fun b!7612319 () Bool)

(declare-fun e!4527304 () Bool)

(assert (=> b!7612319 (= e!4527304 e!4527306)))

(declare-fun res!3047582 () Bool)

(assert (=> b!7612319 (= res!3047582 call!699234)))

(assert (=> b!7612319 (=> res!3047582 e!4527306)))

(declare-fun b!7612320 () Bool)

(declare-fun e!4527302 () Bool)

(assert (=> b!7612320 (= e!4527305 e!4527302)))

(declare-fun res!3047579 () Bool)

(assert (=> b!7612320 (=> (not res!3047579) (not e!4527302))))

(assert (=> b!7612320 (= res!3047579 (and (not ((_ is ElementMatch!20229) (regOne!40970 r!19218))) (not ((_ is Star!20229) (regOne!40970 r!19218)))))))

(declare-fun b!7612321 () Bool)

(assert (=> b!7612321 (= e!4527304 e!4527307)))

(declare-fun res!3047580 () Bool)

(assert (=> b!7612321 (= res!3047580 call!699234)))

(assert (=> b!7612321 (=> (not res!3047580) (not e!4527307))))

(declare-fun bm!699229 () Bool)

(assert (=> bm!699229 (= call!699233 (lostCause!1901 (ite c!1403483 (regTwo!40971 (regOne!40970 r!19218)) (regTwo!40970 (regOne!40970 r!19218)))))))

(declare-fun b!7612322 () Bool)

(assert (=> b!7612322 (= e!4527302 e!4527304)))

(assert (=> b!7612322 (= c!1403483 ((_ is Union!20229) (regOne!40970 r!19218)))))

(assert (= (and d!2322430 res!3047583) b!7612316))

(assert (= (and b!7612316 (not res!3047581)) b!7612320))

(assert (= (and b!7612320 res!3047579) b!7612322))

(assert (= (and b!7612322 c!1403483) b!7612321))

(assert (= (and b!7612322 (not c!1403483)) b!7612319))

(assert (= (and b!7612321 res!3047580) b!7612318))

(assert (= (and b!7612319 (not res!3047582)) b!7612317))

(assert (= (or b!7612321 b!7612319) bm!699228))

(assert (= (or b!7612318 b!7612317) bm!699229))

(declare-fun m!8148526 () Bool)

(assert (=> bm!699228 m!8148526))

(declare-fun m!8148528 () Bool)

(assert (=> d!2322430 m!8148528))

(assert (=> d!2322430 m!8148528))

(declare-fun m!8148530 () Bool)

(assert (=> d!2322430 m!8148530))

(declare-fun m!8148532 () Bool)

(assert (=> bm!699229 m!8148532))

(assert (=> d!2322418 d!2322430))

(assert (=> d!2322422 d!2322418))

(declare-fun d!2322432 () Bool)

(assert (=> d!2322432 (not (lostCause!1901 (regOne!40970 r!19218)))))

(assert (=> d!2322432 true))

(declare-fun _$98!315 () Unit!167278)

(assert (=> d!2322432 (= (choose!58745 (regOne!40970 r!19218)) _$98!315)))

(declare-fun bs!1942899 () Bool)

(assert (= bs!1942899 d!2322432))

(assert (=> bs!1942899 m!8148478))

(assert (=> d!2322422 d!2322432))

(declare-fun d!2322434 () Bool)

(declare-fun res!3047584 () Bool)

(declare-fun e!4527310 () Bool)

(assert (=> d!2322434 (=> res!3047584 e!4527310)))

(assert (=> d!2322434 (= res!3047584 ((_ is ElementMatch!20229) (regOne!40970 r!19218)))))

(assert (=> d!2322434 (= (validRegex!10651 (regOne!40970 r!19218)) e!4527310)))

(declare-fun call!699237 () Bool)

(declare-fun bm!699230 () Bool)

(declare-fun c!1403484 () Bool)

(declare-fun c!1403485 () Bool)

(assert (=> bm!699230 (= call!699237 (validRegex!10651 (ite c!1403484 (reg!20558 (regOne!40970 r!19218)) (ite c!1403485 (regTwo!40971 (regOne!40970 r!19218)) (regTwo!40970 (regOne!40970 r!19218))))))))

(declare-fun bm!699231 () Bool)

(declare-fun call!699235 () Bool)

(assert (=> bm!699231 (= call!699235 (validRegex!10651 (ite c!1403485 (regOne!40971 (regOne!40970 r!19218)) (regOne!40970 (regOne!40970 r!19218)))))))

(declare-fun bm!699232 () Bool)

(declare-fun call!699236 () Bool)

(assert (=> bm!699232 (= call!699236 call!699237)))

(declare-fun b!7612323 () Bool)

(declare-fun e!4527312 () Bool)

(assert (=> b!7612323 (= e!4527310 e!4527312)))

(assert (=> b!7612323 (= c!1403484 ((_ is Star!20229) (regOne!40970 r!19218)))))

(declare-fun b!7612324 () Bool)

(declare-fun e!4527309 () Bool)

(assert (=> b!7612324 (= e!4527312 e!4527309)))

(assert (=> b!7612324 (= c!1403485 ((_ is Union!20229) (regOne!40970 r!19218)))))

(declare-fun b!7612325 () Bool)

(declare-fun e!4527308 () Bool)

(declare-fun e!4527313 () Bool)

(assert (=> b!7612325 (= e!4527308 e!4527313)))

(declare-fun res!3047585 () Bool)

(assert (=> b!7612325 (=> (not res!3047585) (not e!4527313))))

(assert (=> b!7612325 (= res!3047585 call!699235)))

(declare-fun b!7612326 () Bool)

(declare-fun e!4527314 () Bool)

(assert (=> b!7612326 (= e!4527312 e!4527314)))

(declare-fun res!3047587 () Bool)

(assert (=> b!7612326 (= res!3047587 (not (nullable!8850 (reg!20558 (regOne!40970 r!19218)))))))

(assert (=> b!7612326 (=> (not res!3047587) (not e!4527314))))

(declare-fun b!7612327 () Bool)

(declare-fun res!3047586 () Bool)

(declare-fun e!4527311 () Bool)

(assert (=> b!7612327 (=> (not res!3047586) (not e!4527311))))

(assert (=> b!7612327 (= res!3047586 call!699235)))

(assert (=> b!7612327 (= e!4527309 e!4527311)))

(declare-fun b!7612328 () Bool)

(declare-fun res!3047588 () Bool)

(assert (=> b!7612328 (=> res!3047588 e!4527308)))

(assert (=> b!7612328 (= res!3047588 (not ((_ is Concat!29074) (regOne!40970 r!19218))))))

(assert (=> b!7612328 (= e!4527309 e!4527308)))

(declare-fun b!7612329 () Bool)

(assert (=> b!7612329 (= e!4527313 call!699236)))

(declare-fun b!7612330 () Bool)

(assert (=> b!7612330 (= e!4527314 call!699237)))

(declare-fun b!7612331 () Bool)

(assert (=> b!7612331 (= e!4527311 call!699236)))

(assert (= (and d!2322434 (not res!3047584)) b!7612323))

(assert (= (and b!7612323 c!1403484) b!7612326))

(assert (= (and b!7612323 (not c!1403484)) b!7612324))

(assert (= (and b!7612326 res!3047587) b!7612330))

(assert (= (and b!7612324 c!1403485) b!7612327))

(assert (= (and b!7612324 (not c!1403485)) b!7612328))

(assert (= (and b!7612327 res!3047586) b!7612331))

(assert (= (and b!7612328 (not res!3047588)) b!7612325))

(assert (= (and b!7612325 res!3047585) b!7612329))

(assert (= (or b!7612327 b!7612325) bm!699231))

(assert (= (or b!7612331 b!7612329) bm!699232))

(assert (= (or b!7612330 bm!699232) bm!699230))

(declare-fun m!8148534 () Bool)

(assert (=> bm!699230 m!8148534))

(declare-fun m!8148536 () Bool)

(assert (=> bm!699231 m!8148536))

(declare-fun m!8148538 () Bool)

(assert (=> b!7612326 m!8148538))

(assert (=> d!2322422 d!2322434))

(declare-fun d!2322436 () Bool)

(declare-fun res!3047589 () Bool)

(declare-fun e!4527317 () Bool)

(assert (=> d!2322436 (=> res!3047589 e!4527317)))

(assert (=> d!2322436 (= res!3047589 ((_ is ElementMatch!20229) (ite c!1403474 (regOne!40971 r!19218) (regOne!40970 r!19218))))))

(assert (=> d!2322436 (= (validRegex!10651 (ite c!1403474 (regOne!40971 r!19218) (regOne!40970 r!19218))) e!4527317)))

(declare-fun c!1403486 () Bool)

(declare-fun bm!699233 () Bool)

(declare-fun call!699240 () Bool)

(declare-fun c!1403487 () Bool)

(assert (=> bm!699233 (= call!699240 (validRegex!10651 (ite c!1403486 (reg!20558 (ite c!1403474 (regOne!40971 r!19218) (regOne!40970 r!19218))) (ite c!1403487 (regTwo!40971 (ite c!1403474 (regOne!40971 r!19218) (regOne!40970 r!19218))) (regTwo!40970 (ite c!1403474 (regOne!40971 r!19218) (regOne!40970 r!19218)))))))))

(declare-fun bm!699234 () Bool)

(declare-fun call!699238 () Bool)

(assert (=> bm!699234 (= call!699238 (validRegex!10651 (ite c!1403487 (regOne!40971 (ite c!1403474 (regOne!40971 r!19218) (regOne!40970 r!19218))) (regOne!40970 (ite c!1403474 (regOne!40971 r!19218) (regOne!40970 r!19218))))))))

(declare-fun bm!699235 () Bool)

(declare-fun call!699239 () Bool)

(assert (=> bm!699235 (= call!699239 call!699240)))

(declare-fun b!7612332 () Bool)

(declare-fun e!4527319 () Bool)

(assert (=> b!7612332 (= e!4527317 e!4527319)))

(assert (=> b!7612332 (= c!1403486 ((_ is Star!20229) (ite c!1403474 (regOne!40971 r!19218) (regOne!40970 r!19218))))))

(declare-fun b!7612333 () Bool)

(declare-fun e!4527316 () Bool)

(assert (=> b!7612333 (= e!4527319 e!4527316)))

(assert (=> b!7612333 (= c!1403487 ((_ is Union!20229) (ite c!1403474 (regOne!40971 r!19218) (regOne!40970 r!19218))))))

(declare-fun b!7612334 () Bool)

(declare-fun e!4527315 () Bool)

(declare-fun e!4527320 () Bool)

(assert (=> b!7612334 (= e!4527315 e!4527320)))

(declare-fun res!3047590 () Bool)

(assert (=> b!7612334 (=> (not res!3047590) (not e!4527320))))

(assert (=> b!7612334 (= res!3047590 call!699238)))

(declare-fun b!7612335 () Bool)

(declare-fun e!4527321 () Bool)

(assert (=> b!7612335 (= e!4527319 e!4527321)))

(declare-fun res!3047592 () Bool)

(assert (=> b!7612335 (= res!3047592 (not (nullable!8850 (reg!20558 (ite c!1403474 (regOne!40971 r!19218) (regOne!40970 r!19218))))))))

(assert (=> b!7612335 (=> (not res!3047592) (not e!4527321))))

(declare-fun b!7612336 () Bool)

(declare-fun res!3047591 () Bool)

(declare-fun e!4527318 () Bool)

(assert (=> b!7612336 (=> (not res!3047591) (not e!4527318))))

(assert (=> b!7612336 (= res!3047591 call!699238)))

(assert (=> b!7612336 (= e!4527316 e!4527318)))

(declare-fun b!7612337 () Bool)

(declare-fun res!3047593 () Bool)

(assert (=> b!7612337 (=> res!3047593 e!4527315)))

(assert (=> b!7612337 (= res!3047593 (not ((_ is Concat!29074) (ite c!1403474 (regOne!40971 r!19218) (regOne!40970 r!19218)))))))

(assert (=> b!7612337 (= e!4527316 e!4527315)))

(declare-fun b!7612338 () Bool)

(assert (=> b!7612338 (= e!4527320 call!699239)))

(declare-fun b!7612339 () Bool)

(assert (=> b!7612339 (= e!4527321 call!699240)))

(declare-fun b!7612340 () Bool)

(assert (=> b!7612340 (= e!4527318 call!699239)))

(assert (= (and d!2322436 (not res!3047589)) b!7612332))

(assert (= (and b!7612332 c!1403486) b!7612335))

(assert (= (and b!7612332 (not c!1403486)) b!7612333))

(assert (= (and b!7612335 res!3047592) b!7612339))

(assert (= (and b!7612333 c!1403487) b!7612336))

(assert (= (and b!7612333 (not c!1403487)) b!7612337))

(assert (= (and b!7612336 res!3047591) b!7612340))

(assert (= (and b!7612337 (not res!3047593)) b!7612334))

(assert (= (and b!7612334 res!3047590) b!7612338))

(assert (= (or b!7612336 b!7612334) bm!699234))

(assert (= (or b!7612340 b!7612338) bm!699235))

(assert (= (or b!7612339 bm!699235) bm!699233))

(declare-fun m!8148540 () Bool)

(assert (=> bm!699233 m!8148540))

(declare-fun m!8148542 () Bool)

(assert (=> bm!699234 m!8148542))

(declare-fun m!8148544 () Bool)

(assert (=> b!7612335 m!8148544))

(assert (=> bm!699213 d!2322436))

(declare-fun d!2322438 () Bool)

(assert (=> d!2322438 (= (nullable!8850 (reg!20558 r!19218)) (nullableFct!3533 (reg!20558 r!19218)))))

(declare-fun bs!1942900 () Bool)

(assert (= bs!1942900 d!2322438))

(declare-fun m!8148546 () Bool)

(assert (=> bs!1942900 m!8148546))

(assert (=> b!7612209 d!2322438))

(declare-fun b!7612355 () Bool)

(declare-fun e!4527337 () Bool)

(declare-fun e!4527339 () Bool)

(assert (=> b!7612355 (= e!4527337 e!4527339)))

(declare-fun res!3047605 () Bool)

(assert (=> b!7612355 (=> (not res!3047605) (not e!4527339))))

(assert (=> b!7612355 (= res!3047605 (and (not ((_ is EmptyLang!20229) r!19218)) (not ((_ is ElementMatch!20229) r!19218))))))

(declare-fun b!7612356 () Bool)

(declare-fun e!4527335 () Bool)

(declare-fun e!4527338 () Bool)

(assert (=> b!7612356 (= e!4527335 e!4527338)))

(declare-fun c!1403490 () Bool)

(assert (=> b!7612356 (= c!1403490 ((_ is Union!20229) r!19218))))

(declare-fun b!7612357 () Bool)

(declare-fun e!4527336 () Bool)

(declare-fun call!699245 () Bool)

(assert (=> b!7612357 (= e!4527336 call!699245)))

(declare-fun b!7612358 () Bool)

(assert (=> b!7612358 (= e!4527338 e!4527336)))

(declare-fun res!3047606 () Bool)

(declare-fun call!699246 () Bool)

(assert (=> b!7612358 (= res!3047606 call!699246)))

(assert (=> b!7612358 (=> (not res!3047606) (not e!4527336))))

(declare-fun bm!699240 () Bool)

(assert (=> bm!699240 (= call!699245 (nullable!8850 (ite c!1403490 (regOne!40971 r!19218) (regTwo!40970 r!19218))))))

(declare-fun bm!699241 () Bool)

(assert (=> bm!699241 (= call!699246 (nullable!8850 (ite c!1403490 (regTwo!40971 r!19218) (regOne!40970 r!19218))))))

(declare-fun b!7612359 () Bool)

(declare-fun e!4527334 () Bool)

(assert (=> b!7612359 (= e!4527334 call!699246)))

(declare-fun b!7612361 () Bool)

(assert (=> b!7612361 (= e!4527339 e!4527335)))

(declare-fun res!3047608 () Bool)

(assert (=> b!7612361 (=> res!3047608 e!4527335)))

(assert (=> b!7612361 (= res!3047608 ((_ is Star!20229) r!19218))))

(declare-fun b!7612360 () Bool)

(assert (=> b!7612360 (= e!4527338 e!4527334)))

(declare-fun res!3047607 () Bool)

(assert (=> b!7612360 (= res!3047607 call!699245)))

(assert (=> b!7612360 (=> res!3047607 e!4527334)))

(declare-fun d!2322440 () Bool)

(declare-fun res!3047604 () Bool)

(assert (=> d!2322440 (=> res!3047604 e!4527337)))

(assert (=> d!2322440 (= res!3047604 ((_ is EmptyExpr!20229) r!19218))))

(assert (=> d!2322440 (= (nullableFct!3533 r!19218) e!4527337)))

(assert (= (and d!2322440 (not res!3047604)) b!7612355))

(assert (= (and b!7612355 res!3047605) b!7612361))

(assert (= (and b!7612361 (not res!3047608)) b!7612356))

(assert (= (and b!7612356 c!1403490) b!7612360))

(assert (= (and b!7612356 (not c!1403490)) b!7612358))

(assert (= (and b!7612360 (not res!3047607)) b!7612359))

(assert (= (and b!7612358 res!3047606) b!7612357))

(assert (= (or b!7612359 b!7612358) bm!699241))

(assert (= (or b!7612360 b!7612357) bm!699240))

(declare-fun m!8148548 () Bool)

(assert (=> bm!699240 m!8148548))

(declare-fun m!8148550 () Bool)

(assert (=> bm!699241 m!8148550))

(assert (=> d!2322412 d!2322440))

(declare-fun d!2322442 () Bool)

(declare-fun res!3047609 () Bool)

(declare-fun e!4527342 () Bool)

(assert (=> d!2322442 (=> res!3047609 e!4527342)))

(assert (=> d!2322442 (= res!3047609 ((_ is ElementMatch!20229) (ite c!1403473 (reg!20558 r!19218) (ite c!1403474 (regTwo!40971 r!19218) (regTwo!40970 r!19218)))))))

(assert (=> d!2322442 (= (validRegex!10651 (ite c!1403473 (reg!20558 r!19218) (ite c!1403474 (regTwo!40971 r!19218) (regTwo!40970 r!19218)))) e!4527342)))

(declare-fun call!699249 () Bool)

(declare-fun bm!699242 () Bool)

(declare-fun c!1403492 () Bool)

(declare-fun c!1403491 () Bool)

(assert (=> bm!699242 (= call!699249 (validRegex!10651 (ite c!1403491 (reg!20558 (ite c!1403473 (reg!20558 r!19218) (ite c!1403474 (regTwo!40971 r!19218) (regTwo!40970 r!19218)))) (ite c!1403492 (regTwo!40971 (ite c!1403473 (reg!20558 r!19218) (ite c!1403474 (regTwo!40971 r!19218) (regTwo!40970 r!19218)))) (regTwo!40970 (ite c!1403473 (reg!20558 r!19218) (ite c!1403474 (regTwo!40971 r!19218) (regTwo!40970 r!19218))))))))))

(declare-fun bm!699243 () Bool)

(declare-fun call!699247 () Bool)

(assert (=> bm!699243 (= call!699247 (validRegex!10651 (ite c!1403492 (regOne!40971 (ite c!1403473 (reg!20558 r!19218) (ite c!1403474 (regTwo!40971 r!19218) (regTwo!40970 r!19218)))) (regOne!40970 (ite c!1403473 (reg!20558 r!19218) (ite c!1403474 (regTwo!40971 r!19218) (regTwo!40970 r!19218)))))))))

(declare-fun bm!699244 () Bool)

(declare-fun call!699248 () Bool)

(assert (=> bm!699244 (= call!699248 call!699249)))

(declare-fun b!7612362 () Bool)

(declare-fun e!4527344 () Bool)

(assert (=> b!7612362 (= e!4527342 e!4527344)))

(assert (=> b!7612362 (= c!1403491 ((_ is Star!20229) (ite c!1403473 (reg!20558 r!19218) (ite c!1403474 (regTwo!40971 r!19218) (regTwo!40970 r!19218)))))))

(declare-fun b!7612363 () Bool)

(declare-fun e!4527341 () Bool)

(assert (=> b!7612363 (= e!4527344 e!4527341)))

(assert (=> b!7612363 (= c!1403492 ((_ is Union!20229) (ite c!1403473 (reg!20558 r!19218) (ite c!1403474 (regTwo!40971 r!19218) (regTwo!40970 r!19218)))))))

(declare-fun b!7612364 () Bool)

(declare-fun e!4527340 () Bool)

(declare-fun e!4527345 () Bool)

(assert (=> b!7612364 (= e!4527340 e!4527345)))

(declare-fun res!3047610 () Bool)

(assert (=> b!7612364 (=> (not res!3047610) (not e!4527345))))

(assert (=> b!7612364 (= res!3047610 call!699247)))

(declare-fun b!7612365 () Bool)

(declare-fun e!4527346 () Bool)

(assert (=> b!7612365 (= e!4527344 e!4527346)))

(declare-fun res!3047612 () Bool)

(assert (=> b!7612365 (= res!3047612 (not (nullable!8850 (reg!20558 (ite c!1403473 (reg!20558 r!19218) (ite c!1403474 (regTwo!40971 r!19218) (regTwo!40970 r!19218)))))))))

(assert (=> b!7612365 (=> (not res!3047612) (not e!4527346))))

(declare-fun b!7612366 () Bool)

(declare-fun res!3047611 () Bool)

(declare-fun e!4527343 () Bool)

(assert (=> b!7612366 (=> (not res!3047611) (not e!4527343))))

(assert (=> b!7612366 (= res!3047611 call!699247)))

(assert (=> b!7612366 (= e!4527341 e!4527343)))

(declare-fun b!7612367 () Bool)

(declare-fun res!3047613 () Bool)

(assert (=> b!7612367 (=> res!3047613 e!4527340)))

(assert (=> b!7612367 (= res!3047613 (not ((_ is Concat!29074) (ite c!1403473 (reg!20558 r!19218) (ite c!1403474 (regTwo!40971 r!19218) (regTwo!40970 r!19218))))))))

(assert (=> b!7612367 (= e!4527341 e!4527340)))

(declare-fun b!7612368 () Bool)

(assert (=> b!7612368 (= e!4527345 call!699248)))

(declare-fun b!7612369 () Bool)

(assert (=> b!7612369 (= e!4527346 call!699249)))

(declare-fun b!7612370 () Bool)

(assert (=> b!7612370 (= e!4527343 call!699248)))

(assert (= (and d!2322442 (not res!3047609)) b!7612362))

(assert (= (and b!7612362 c!1403491) b!7612365))

(assert (= (and b!7612362 (not c!1403491)) b!7612363))

(assert (= (and b!7612365 res!3047612) b!7612369))

(assert (= (and b!7612363 c!1403492) b!7612366))

(assert (= (and b!7612363 (not c!1403492)) b!7612367))

(assert (= (and b!7612366 res!3047611) b!7612370))

(assert (= (and b!7612367 (not res!3047613)) b!7612364))

(assert (= (and b!7612364 res!3047610) b!7612368))

(assert (= (or b!7612366 b!7612364) bm!699243))

(assert (= (or b!7612370 b!7612368) bm!699244))

(assert (= (or b!7612369 bm!699244) bm!699242))

(declare-fun m!8148552 () Bool)

(assert (=> bm!699242 m!8148552))

(declare-fun m!8148554 () Bool)

(assert (=> bm!699243 m!8148554))

(declare-fun m!8148556 () Bool)

(assert (=> b!7612365 m!8148556))

(assert (=> bm!699212 d!2322442))

(declare-fun d!2322444 () Bool)

(declare-fun res!3047614 () Bool)

(declare-fun e!4527349 () Bool)

(assert (=> d!2322444 (=> res!3047614 e!4527349)))

(assert (=> d!2322444 (= res!3047614 ((_ is ElementMatch!20229) (ite c!1403477 (reg!20558 (regTwo!40970 r!19218)) (ite c!1403478 (regTwo!40971 (regTwo!40970 r!19218)) (regTwo!40970 (regTwo!40970 r!19218))))))))

(assert (=> d!2322444 (= (validRegex!10651 (ite c!1403477 (reg!20558 (regTwo!40970 r!19218)) (ite c!1403478 (regTwo!40971 (regTwo!40970 r!19218)) (regTwo!40970 (regTwo!40970 r!19218))))) e!4527349)))

(declare-fun bm!699245 () Bool)

(declare-fun c!1403494 () Bool)

(declare-fun c!1403493 () Bool)

(declare-fun call!699252 () Bool)

(assert (=> bm!699245 (= call!699252 (validRegex!10651 (ite c!1403493 (reg!20558 (ite c!1403477 (reg!20558 (regTwo!40970 r!19218)) (ite c!1403478 (regTwo!40971 (regTwo!40970 r!19218)) (regTwo!40970 (regTwo!40970 r!19218))))) (ite c!1403494 (regTwo!40971 (ite c!1403477 (reg!20558 (regTwo!40970 r!19218)) (ite c!1403478 (regTwo!40971 (regTwo!40970 r!19218)) (regTwo!40970 (regTwo!40970 r!19218))))) (regTwo!40970 (ite c!1403477 (reg!20558 (regTwo!40970 r!19218)) (ite c!1403478 (regTwo!40971 (regTwo!40970 r!19218)) (regTwo!40970 (regTwo!40970 r!19218)))))))))))

(declare-fun bm!699246 () Bool)

(declare-fun call!699250 () Bool)

(assert (=> bm!699246 (= call!699250 (validRegex!10651 (ite c!1403494 (regOne!40971 (ite c!1403477 (reg!20558 (regTwo!40970 r!19218)) (ite c!1403478 (regTwo!40971 (regTwo!40970 r!19218)) (regTwo!40970 (regTwo!40970 r!19218))))) (regOne!40970 (ite c!1403477 (reg!20558 (regTwo!40970 r!19218)) (ite c!1403478 (regTwo!40971 (regTwo!40970 r!19218)) (regTwo!40970 (regTwo!40970 r!19218))))))))))

(declare-fun bm!699247 () Bool)

(declare-fun call!699251 () Bool)

(assert (=> bm!699247 (= call!699251 call!699252)))

(declare-fun b!7612371 () Bool)

(declare-fun e!4527351 () Bool)

(assert (=> b!7612371 (= e!4527349 e!4527351)))

(assert (=> b!7612371 (= c!1403493 ((_ is Star!20229) (ite c!1403477 (reg!20558 (regTwo!40970 r!19218)) (ite c!1403478 (regTwo!40971 (regTwo!40970 r!19218)) (regTwo!40970 (regTwo!40970 r!19218))))))))

(declare-fun b!7612372 () Bool)

(declare-fun e!4527348 () Bool)

(assert (=> b!7612372 (= e!4527351 e!4527348)))

(assert (=> b!7612372 (= c!1403494 ((_ is Union!20229) (ite c!1403477 (reg!20558 (regTwo!40970 r!19218)) (ite c!1403478 (regTwo!40971 (regTwo!40970 r!19218)) (regTwo!40970 (regTwo!40970 r!19218))))))))

(declare-fun b!7612373 () Bool)

(declare-fun e!4527347 () Bool)

(declare-fun e!4527352 () Bool)

(assert (=> b!7612373 (= e!4527347 e!4527352)))

(declare-fun res!3047615 () Bool)

(assert (=> b!7612373 (=> (not res!3047615) (not e!4527352))))

(assert (=> b!7612373 (= res!3047615 call!699250)))

(declare-fun b!7612374 () Bool)

(declare-fun e!4527353 () Bool)

(assert (=> b!7612374 (= e!4527351 e!4527353)))

(declare-fun res!3047617 () Bool)

(assert (=> b!7612374 (= res!3047617 (not (nullable!8850 (reg!20558 (ite c!1403477 (reg!20558 (regTwo!40970 r!19218)) (ite c!1403478 (regTwo!40971 (regTwo!40970 r!19218)) (regTwo!40970 (regTwo!40970 r!19218))))))))))

(assert (=> b!7612374 (=> (not res!3047617) (not e!4527353))))

(declare-fun b!7612375 () Bool)

(declare-fun res!3047616 () Bool)

(declare-fun e!4527350 () Bool)

(assert (=> b!7612375 (=> (not res!3047616) (not e!4527350))))

(assert (=> b!7612375 (= res!3047616 call!699250)))

(assert (=> b!7612375 (= e!4527348 e!4527350)))

(declare-fun b!7612376 () Bool)

(declare-fun res!3047618 () Bool)

(assert (=> b!7612376 (=> res!3047618 e!4527347)))

(assert (=> b!7612376 (= res!3047618 (not ((_ is Concat!29074) (ite c!1403477 (reg!20558 (regTwo!40970 r!19218)) (ite c!1403478 (regTwo!40971 (regTwo!40970 r!19218)) (regTwo!40970 (regTwo!40970 r!19218)))))))))

(assert (=> b!7612376 (= e!4527348 e!4527347)))

(declare-fun b!7612377 () Bool)

(assert (=> b!7612377 (= e!4527352 call!699251)))

(declare-fun b!7612378 () Bool)

(assert (=> b!7612378 (= e!4527353 call!699252)))

(declare-fun b!7612379 () Bool)

(assert (=> b!7612379 (= e!4527350 call!699251)))

(assert (= (and d!2322444 (not res!3047614)) b!7612371))

(assert (= (and b!7612371 c!1403493) b!7612374))

(assert (= (and b!7612371 (not c!1403493)) b!7612372))

(assert (= (and b!7612374 res!3047617) b!7612378))

(assert (= (and b!7612372 c!1403494) b!7612375))

(assert (= (and b!7612372 (not c!1403494)) b!7612376))

(assert (= (and b!7612375 res!3047616) b!7612379))

(assert (= (and b!7612376 (not res!3047618)) b!7612373))

(assert (= (and b!7612373 res!3047615) b!7612377))

(assert (= (or b!7612375 b!7612373) bm!699246))

(assert (= (or b!7612379 b!7612377) bm!699247))

(assert (= (or b!7612378 bm!699247) bm!699245))

(declare-fun m!8148558 () Bool)

(assert (=> bm!699245 m!8148558))

(declare-fun m!8148560 () Bool)

(assert (=> bm!699246 m!8148560))

(declare-fun m!8148562 () Bool)

(assert (=> b!7612374 m!8148562))

(assert (=> bm!699218 d!2322444))

(declare-fun b!7612380 () Bool)

(declare-fun e!4527357 () Bool)

(declare-fun e!4527359 () Bool)

(assert (=> b!7612380 (= e!4527357 e!4527359)))

(declare-fun res!3047620 () Bool)

(assert (=> b!7612380 (=> (not res!3047620) (not e!4527359))))

(assert (=> b!7612380 (= res!3047620 (and (not ((_ is EmptyLang!20229) (regTwo!40970 r!19218))) (not ((_ is ElementMatch!20229) (regTwo!40970 r!19218)))))))

(declare-fun b!7612381 () Bool)

(declare-fun e!4527355 () Bool)

(declare-fun e!4527358 () Bool)

(assert (=> b!7612381 (= e!4527355 e!4527358)))

(declare-fun c!1403495 () Bool)

(assert (=> b!7612381 (= c!1403495 ((_ is Union!20229) (regTwo!40970 r!19218)))))

(declare-fun b!7612382 () Bool)

(declare-fun e!4527356 () Bool)

(declare-fun call!699253 () Bool)

(assert (=> b!7612382 (= e!4527356 call!699253)))

(declare-fun b!7612383 () Bool)

(assert (=> b!7612383 (= e!4527358 e!4527356)))

(declare-fun res!3047621 () Bool)

(declare-fun call!699254 () Bool)

(assert (=> b!7612383 (= res!3047621 call!699254)))

(assert (=> b!7612383 (=> (not res!3047621) (not e!4527356))))

(declare-fun bm!699248 () Bool)

(assert (=> bm!699248 (= call!699253 (nullable!8850 (ite c!1403495 (regOne!40971 (regTwo!40970 r!19218)) (regTwo!40970 (regTwo!40970 r!19218)))))))

(declare-fun bm!699249 () Bool)

(assert (=> bm!699249 (= call!699254 (nullable!8850 (ite c!1403495 (regTwo!40971 (regTwo!40970 r!19218)) (regOne!40970 (regTwo!40970 r!19218)))))))

(declare-fun b!7612384 () Bool)

(declare-fun e!4527354 () Bool)

(assert (=> b!7612384 (= e!4527354 call!699254)))

(declare-fun b!7612386 () Bool)

(assert (=> b!7612386 (= e!4527359 e!4527355)))

(declare-fun res!3047623 () Bool)

(assert (=> b!7612386 (=> res!3047623 e!4527355)))

(assert (=> b!7612386 (= res!3047623 ((_ is Star!20229) (regTwo!40970 r!19218)))))

(declare-fun b!7612385 () Bool)

(assert (=> b!7612385 (= e!4527358 e!4527354)))

(declare-fun res!3047622 () Bool)

(assert (=> b!7612385 (= res!3047622 call!699253)))

(assert (=> b!7612385 (=> res!3047622 e!4527354)))

(declare-fun d!2322446 () Bool)

(declare-fun res!3047619 () Bool)

(assert (=> d!2322446 (=> res!3047619 e!4527357)))

(assert (=> d!2322446 (= res!3047619 ((_ is EmptyExpr!20229) (regTwo!40970 r!19218)))))

(assert (=> d!2322446 (= (nullableFct!3533 (regTwo!40970 r!19218)) e!4527357)))

(assert (= (and d!2322446 (not res!3047619)) b!7612380))

(assert (= (and b!7612380 res!3047620) b!7612386))

(assert (= (and b!7612386 (not res!3047623)) b!7612381))

(assert (= (and b!7612381 c!1403495) b!7612385))

(assert (= (and b!7612381 (not c!1403495)) b!7612383))

(assert (= (and b!7612385 (not res!3047622)) b!7612384))

(assert (= (and b!7612383 res!3047621) b!7612382))

(assert (= (or b!7612384 b!7612383) bm!699249))

(assert (= (or b!7612385 b!7612382) bm!699248))

(declare-fun m!8148564 () Bool)

(assert (=> bm!699248 m!8148564))

(declare-fun m!8148566 () Bool)

(assert (=> bm!699249 m!8148566))

(assert (=> d!2322428 d!2322446))

(declare-fun d!2322448 () Bool)

(declare-fun res!3047624 () Bool)

(declare-fun e!4527362 () Bool)

(assert (=> d!2322448 (=> res!3047624 e!4527362)))

(assert (=> d!2322448 (= res!3047624 ((_ is ElementMatch!20229) (ite c!1403478 (regOne!40971 (regTwo!40970 r!19218)) (regOne!40970 (regTwo!40970 r!19218)))))))

(assert (=> d!2322448 (= (validRegex!10651 (ite c!1403478 (regOne!40971 (regTwo!40970 r!19218)) (regOne!40970 (regTwo!40970 r!19218)))) e!4527362)))

(declare-fun c!1403496 () Bool)

(declare-fun c!1403497 () Bool)

(declare-fun bm!699250 () Bool)

(declare-fun call!699257 () Bool)

(assert (=> bm!699250 (= call!699257 (validRegex!10651 (ite c!1403496 (reg!20558 (ite c!1403478 (regOne!40971 (regTwo!40970 r!19218)) (regOne!40970 (regTwo!40970 r!19218)))) (ite c!1403497 (regTwo!40971 (ite c!1403478 (regOne!40971 (regTwo!40970 r!19218)) (regOne!40970 (regTwo!40970 r!19218)))) (regTwo!40970 (ite c!1403478 (regOne!40971 (regTwo!40970 r!19218)) (regOne!40970 (regTwo!40970 r!19218))))))))))

(declare-fun bm!699251 () Bool)

(declare-fun call!699255 () Bool)

(assert (=> bm!699251 (= call!699255 (validRegex!10651 (ite c!1403497 (regOne!40971 (ite c!1403478 (regOne!40971 (regTwo!40970 r!19218)) (regOne!40970 (regTwo!40970 r!19218)))) (regOne!40970 (ite c!1403478 (regOne!40971 (regTwo!40970 r!19218)) (regOne!40970 (regTwo!40970 r!19218)))))))))

(declare-fun bm!699252 () Bool)

(declare-fun call!699256 () Bool)

(assert (=> bm!699252 (= call!699256 call!699257)))

(declare-fun b!7612387 () Bool)

(declare-fun e!4527364 () Bool)

(assert (=> b!7612387 (= e!4527362 e!4527364)))

(assert (=> b!7612387 (= c!1403496 ((_ is Star!20229) (ite c!1403478 (regOne!40971 (regTwo!40970 r!19218)) (regOne!40970 (regTwo!40970 r!19218)))))))

(declare-fun b!7612388 () Bool)

(declare-fun e!4527361 () Bool)

(assert (=> b!7612388 (= e!4527364 e!4527361)))

(assert (=> b!7612388 (= c!1403497 ((_ is Union!20229) (ite c!1403478 (regOne!40971 (regTwo!40970 r!19218)) (regOne!40970 (regTwo!40970 r!19218)))))))

(declare-fun b!7612389 () Bool)

(declare-fun e!4527360 () Bool)

(declare-fun e!4527365 () Bool)

(assert (=> b!7612389 (= e!4527360 e!4527365)))

(declare-fun res!3047625 () Bool)

(assert (=> b!7612389 (=> (not res!3047625) (not e!4527365))))

(assert (=> b!7612389 (= res!3047625 call!699255)))

(declare-fun b!7612390 () Bool)

(declare-fun e!4527366 () Bool)

(assert (=> b!7612390 (= e!4527364 e!4527366)))

(declare-fun res!3047627 () Bool)

(assert (=> b!7612390 (= res!3047627 (not (nullable!8850 (reg!20558 (ite c!1403478 (regOne!40971 (regTwo!40970 r!19218)) (regOne!40970 (regTwo!40970 r!19218)))))))))

(assert (=> b!7612390 (=> (not res!3047627) (not e!4527366))))

(declare-fun b!7612391 () Bool)

(declare-fun res!3047626 () Bool)

(declare-fun e!4527363 () Bool)

(assert (=> b!7612391 (=> (not res!3047626) (not e!4527363))))

(assert (=> b!7612391 (= res!3047626 call!699255)))

(assert (=> b!7612391 (= e!4527361 e!4527363)))

(declare-fun b!7612392 () Bool)

(declare-fun res!3047628 () Bool)

(assert (=> b!7612392 (=> res!3047628 e!4527360)))

(assert (=> b!7612392 (= res!3047628 (not ((_ is Concat!29074) (ite c!1403478 (regOne!40971 (regTwo!40970 r!19218)) (regOne!40970 (regTwo!40970 r!19218))))))))

(assert (=> b!7612392 (= e!4527361 e!4527360)))

(declare-fun b!7612393 () Bool)

(assert (=> b!7612393 (= e!4527365 call!699256)))

(declare-fun b!7612394 () Bool)

(assert (=> b!7612394 (= e!4527366 call!699257)))

(declare-fun b!7612395 () Bool)

(assert (=> b!7612395 (= e!4527363 call!699256)))

(assert (= (and d!2322448 (not res!3047624)) b!7612387))

(assert (= (and b!7612387 c!1403496) b!7612390))

(assert (= (and b!7612387 (not c!1403496)) b!7612388))

(assert (= (and b!7612390 res!3047627) b!7612394))

(assert (= (and b!7612388 c!1403497) b!7612391))

(assert (= (and b!7612388 (not c!1403497)) b!7612392))

(assert (= (and b!7612391 res!3047626) b!7612395))

(assert (= (and b!7612392 (not res!3047628)) b!7612389))

(assert (= (and b!7612389 res!3047625) b!7612393))

(assert (= (or b!7612391 b!7612389) bm!699251))

(assert (= (or b!7612395 b!7612393) bm!699252))

(assert (= (or b!7612394 bm!699252) bm!699250))

(declare-fun m!8148568 () Bool)

(assert (=> bm!699250 m!8148568))

(declare-fun m!8148570 () Bool)

(assert (=> bm!699251 m!8148570))

(declare-fun m!8148572 () Bool)

(assert (=> b!7612390 m!8148572))

(assert (=> bm!699219 d!2322448))

(declare-fun d!2322450 () Bool)

(assert (=> d!2322450 (= (nullable!8850 (reg!20558 (regTwo!40970 r!19218))) (nullableFct!3533 (reg!20558 (regTwo!40970 r!19218))))))

(declare-fun bs!1942901 () Bool)

(assert (= bs!1942901 d!2322450))

(declare-fun m!8148574 () Bool)

(assert (=> bs!1942901 m!8148574))

(assert (=> b!7612227 d!2322450))

(declare-fun b!7612397 () Bool)

(declare-fun e!4527367 () Bool)

(declare-fun tp!2221741 () Bool)

(declare-fun tp!2221744 () Bool)

(assert (=> b!7612397 (= e!4527367 (and tp!2221741 tp!2221744))))

(declare-fun b!7612396 () Bool)

(assert (=> b!7612396 (= e!4527367 tp_is_empty!50813)))

(declare-fun b!7612399 () Bool)

(declare-fun tp!2221740 () Bool)

(declare-fun tp!2221742 () Bool)

(assert (=> b!7612399 (= e!4527367 (and tp!2221740 tp!2221742))))

(assert (=> b!7612285 (= tp!2221715 e!4527367)))

(declare-fun b!7612398 () Bool)

(declare-fun tp!2221743 () Bool)

(assert (=> b!7612398 (= e!4527367 tp!2221743)))

(assert (= (and b!7612285 ((_ is ElementMatch!20229) (regOne!40971 (regTwo!40970 r!19218)))) b!7612396))

(assert (= (and b!7612285 ((_ is Concat!29074) (regOne!40971 (regTwo!40970 r!19218)))) b!7612397))

(assert (= (and b!7612285 ((_ is Star!20229) (regOne!40971 (regTwo!40970 r!19218)))) b!7612398))

(assert (= (and b!7612285 ((_ is Union!20229) (regOne!40971 (regTwo!40970 r!19218)))) b!7612399))

(declare-fun b!7612401 () Bool)

(declare-fun e!4527368 () Bool)

(declare-fun tp!2221746 () Bool)

(declare-fun tp!2221749 () Bool)

(assert (=> b!7612401 (= e!4527368 (and tp!2221746 tp!2221749))))

(declare-fun b!7612400 () Bool)

(assert (=> b!7612400 (= e!4527368 tp_is_empty!50813)))

(declare-fun b!7612403 () Bool)

(declare-fun tp!2221745 () Bool)

(declare-fun tp!2221747 () Bool)

(assert (=> b!7612403 (= e!4527368 (and tp!2221745 tp!2221747))))

(assert (=> b!7612285 (= tp!2221717 e!4527368)))

(declare-fun b!7612402 () Bool)

(declare-fun tp!2221748 () Bool)

(assert (=> b!7612402 (= e!4527368 tp!2221748)))

(assert (= (and b!7612285 ((_ is ElementMatch!20229) (regTwo!40971 (regTwo!40970 r!19218)))) b!7612400))

(assert (= (and b!7612285 ((_ is Concat!29074) (regTwo!40971 (regTwo!40970 r!19218)))) b!7612401))

(assert (= (and b!7612285 ((_ is Star!20229) (regTwo!40971 (regTwo!40970 r!19218)))) b!7612402))

(assert (= (and b!7612285 ((_ is Union!20229) (regTwo!40971 (regTwo!40970 r!19218)))) b!7612403))

(declare-fun b!7612405 () Bool)

(declare-fun e!4527369 () Bool)

(declare-fun tp!2221751 () Bool)

(declare-fun tp!2221754 () Bool)

(assert (=> b!7612405 (= e!4527369 (and tp!2221751 tp!2221754))))

(declare-fun b!7612404 () Bool)

(assert (=> b!7612404 (= e!4527369 tp_is_empty!50813)))

(declare-fun b!7612407 () Bool)

(declare-fun tp!2221750 () Bool)

(declare-fun tp!2221752 () Bool)

(assert (=> b!7612407 (= e!4527369 (and tp!2221750 tp!2221752))))

(assert (=> b!7612271 (= tp!2221701 e!4527369)))

(declare-fun b!7612406 () Bool)

(declare-fun tp!2221753 () Bool)

(assert (=> b!7612406 (= e!4527369 tp!2221753)))

(assert (= (and b!7612271 ((_ is ElementMatch!20229) (regOne!40970 (regOne!40970 r!19218)))) b!7612404))

(assert (= (and b!7612271 ((_ is Concat!29074) (regOne!40970 (regOne!40970 r!19218)))) b!7612405))

(assert (= (and b!7612271 ((_ is Star!20229) (regOne!40970 (regOne!40970 r!19218)))) b!7612406))

(assert (= (and b!7612271 ((_ is Union!20229) (regOne!40970 (regOne!40970 r!19218)))) b!7612407))

(declare-fun b!7612409 () Bool)

(declare-fun e!4527370 () Bool)

(declare-fun tp!2221756 () Bool)

(declare-fun tp!2221759 () Bool)

(assert (=> b!7612409 (= e!4527370 (and tp!2221756 tp!2221759))))

(declare-fun b!7612408 () Bool)

(assert (=> b!7612408 (= e!4527370 tp_is_empty!50813)))

(declare-fun b!7612411 () Bool)

(declare-fun tp!2221755 () Bool)

(declare-fun tp!2221757 () Bool)

(assert (=> b!7612411 (= e!4527370 (and tp!2221755 tp!2221757))))

(assert (=> b!7612271 (= tp!2221704 e!4527370)))

(declare-fun b!7612410 () Bool)

(declare-fun tp!2221758 () Bool)

(assert (=> b!7612410 (= e!4527370 tp!2221758)))

(assert (= (and b!7612271 ((_ is ElementMatch!20229) (regTwo!40970 (regOne!40970 r!19218)))) b!7612408))

(assert (= (and b!7612271 ((_ is Concat!29074) (regTwo!40970 (regOne!40970 r!19218)))) b!7612409))

(assert (= (and b!7612271 ((_ is Star!20229) (regTwo!40970 (regOne!40970 r!19218)))) b!7612410))

(assert (= (and b!7612271 ((_ is Union!20229) (regTwo!40970 (regOne!40970 r!19218)))) b!7612411))

(declare-fun b!7612413 () Bool)

(declare-fun e!4527371 () Bool)

(declare-fun tp!2221761 () Bool)

(declare-fun tp!2221764 () Bool)

(assert (=> b!7612413 (= e!4527371 (and tp!2221761 tp!2221764))))

(declare-fun b!7612412 () Bool)

(assert (=> b!7612412 (= e!4527371 tp_is_empty!50813)))

(declare-fun b!7612415 () Bool)

(declare-fun tp!2221760 () Bool)

(declare-fun tp!2221762 () Bool)

(assert (=> b!7612415 (= e!4527371 (and tp!2221760 tp!2221762))))

(assert (=> b!7612272 (= tp!2221703 e!4527371)))

(declare-fun b!7612414 () Bool)

(declare-fun tp!2221763 () Bool)

(assert (=> b!7612414 (= e!4527371 tp!2221763)))

(assert (= (and b!7612272 ((_ is ElementMatch!20229) (reg!20558 (regOne!40970 r!19218)))) b!7612412))

(assert (= (and b!7612272 ((_ is Concat!29074) (reg!20558 (regOne!40970 r!19218)))) b!7612413))

(assert (= (and b!7612272 ((_ is Star!20229) (reg!20558 (regOne!40970 r!19218)))) b!7612414))

(assert (= (and b!7612272 ((_ is Union!20229) (reg!20558 (regOne!40970 r!19218)))) b!7612415))

(declare-fun b!7612417 () Bool)

(declare-fun e!4527372 () Bool)

(declare-fun tp!2221766 () Bool)

(declare-fun tp!2221769 () Bool)

(assert (=> b!7612417 (= e!4527372 (and tp!2221766 tp!2221769))))

(declare-fun b!7612416 () Bool)

(assert (=> b!7612416 (= e!4527372 tp_is_empty!50813)))

(declare-fun b!7612419 () Bool)

(declare-fun tp!2221765 () Bool)

(declare-fun tp!2221767 () Bool)

(assert (=> b!7612419 (= e!4527372 (and tp!2221765 tp!2221767))))

(assert (=> b!7612273 (= tp!2221700 e!4527372)))

(declare-fun b!7612418 () Bool)

(declare-fun tp!2221768 () Bool)

(assert (=> b!7612418 (= e!4527372 tp!2221768)))

(assert (= (and b!7612273 ((_ is ElementMatch!20229) (regOne!40971 (regOne!40970 r!19218)))) b!7612416))

(assert (= (and b!7612273 ((_ is Concat!29074) (regOne!40971 (regOne!40970 r!19218)))) b!7612417))

(assert (= (and b!7612273 ((_ is Star!20229) (regOne!40971 (regOne!40970 r!19218)))) b!7612418))

(assert (= (and b!7612273 ((_ is Union!20229) (regOne!40971 (regOne!40970 r!19218)))) b!7612419))

(declare-fun b!7612421 () Bool)

(declare-fun e!4527373 () Bool)

(declare-fun tp!2221771 () Bool)

(declare-fun tp!2221774 () Bool)

(assert (=> b!7612421 (= e!4527373 (and tp!2221771 tp!2221774))))

(declare-fun b!7612420 () Bool)

(assert (=> b!7612420 (= e!4527373 tp_is_empty!50813)))

(declare-fun b!7612423 () Bool)

(declare-fun tp!2221770 () Bool)

(declare-fun tp!2221772 () Bool)

(assert (=> b!7612423 (= e!4527373 (and tp!2221770 tp!2221772))))

(assert (=> b!7612273 (= tp!2221702 e!4527373)))

(declare-fun b!7612422 () Bool)

(declare-fun tp!2221773 () Bool)

(assert (=> b!7612422 (= e!4527373 tp!2221773)))

(assert (= (and b!7612273 ((_ is ElementMatch!20229) (regTwo!40971 (regOne!40970 r!19218)))) b!7612420))

(assert (= (and b!7612273 ((_ is Concat!29074) (regTwo!40971 (regOne!40970 r!19218)))) b!7612421))

(assert (= (and b!7612273 ((_ is Star!20229) (regTwo!40971 (regOne!40970 r!19218)))) b!7612422))

(assert (= (and b!7612273 ((_ is Union!20229) (regTwo!40971 (regOne!40970 r!19218)))) b!7612423))

(declare-fun b!7612425 () Bool)

(declare-fun e!4527374 () Bool)

(declare-fun tp!2221776 () Bool)

(declare-fun tp!2221779 () Bool)

(assert (=> b!7612425 (= e!4527374 (and tp!2221776 tp!2221779))))

(declare-fun b!7612424 () Bool)

(assert (=> b!7612424 (= e!4527374 tp_is_empty!50813)))

(declare-fun b!7612427 () Bool)

(declare-fun tp!2221775 () Bool)

(declare-fun tp!2221777 () Bool)

(assert (=> b!7612427 (= e!4527374 (and tp!2221775 tp!2221777))))

(assert (=> b!7612295 (= tp!2221731 e!4527374)))

(declare-fun b!7612426 () Bool)

(declare-fun tp!2221778 () Bool)

(assert (=> b!7612426 (= e!4527374 tp!2221778)))

(assert (= (and b!7612295 ((_ is ElementMatch!20229) (regOne!40970 (regTwo!40971 r!19218)))) b!7612424))

(assert (= (and b!7612295 ((_ is Concat!29074) (regOne!40970 (regTwo!40971 r!19218)))) b!7612425))

(assert (= (and b!7612295 ((_ is Star!20229) (regOne!40970 (regTwo!40971 r!19218)))) b!7612426))

(assert (= (and b!7612295 ((_ is Union!20229) (regOne!40970 (regTwo!40971 r!19218)))) b!7612427))

(declare-fun b!7612429 () Bool)

(declare-fun e!4527375 () Bool)

(declare-fun tp!2221781 () Bool)

(declare-fun tp!2221784 () Bool)

(assert (=> b!7612429 (= e!4527375 (and tp!2221781 tp!2221784))))

(declare-fun b!7612428 () Bool)

(assert (=> b!7612428 (= e!4527375 tp_is_empty!50813)))

(declare-fun b!7612431 () Bool)

(declare-fun tp!2221780 () Bool)

(declare-fun tp!2221782 () Bool)

(assert (=> b!7612431 (= e!4527375 (and tp!2221780 tp!2221782))))

(assert (=> b!7612295 (= tp!2221734 e!4527375)))

(declare-fun b!7612430 () Bool)

(declare-fun tp!2221783 () Bool)

(assert (=> b!7612430 (= e!4527375 tp!2221783)))

(assert (= (and b!7612295 ((_ is ElementMatch!20229) (regTwo!40970 (regTwo!40971 r!19218)))) b!7612428))

(assert (= (and b!7612295 ((_ is Concat!29074) (regTwo!40970 (regTwo!40971 r!19218)))) b!7612429))

(assert (= (and b!7612295 ((_ is Star!20229) (regTwo!40970 (regTwo!40971 r!19218)))) b!7612430))

(assert (= (and b!7612295 ((_ is Union!20229) (regTwo!40970 (regTwo!40971 r!19218)))) b!7612431))

(declare-fun b!7612433 () Bool)

(declare-fun e!4527376 () Bool)

(declare-fun tp!2221786 () Bool)

(declare-fun tp!2221789 () Bool)

(assert (=> b!7612433 (= e!4527376 (and tp!2221786 tp!2221789))))

(declare-fun b!7612432 () Bool)

(assert (=> b!7612432 (= e!4527376 tp_is_empty!50813)))

(declare-fun b!7612435 () Bool)

(declare-fun tp!2221785 () Bool)

(declare-fun tp!2221787 () Bool)

(assert (=> b!7612435 (= e!4527376 (and tp!2221785 tp!2221787))))

(assert (=> b!7612299 (= tp!2221736 e!4527376)))

(declare-fun b!7612434 () Bool)

(declare-fun tp!2221788 () Bool)

(assert (=> b!7612434 (= e!4527376 tp!2221788)))

(assert (= (and b!7612299 ((_ is ElementMatch!20229) (regOne!40970 (reg!20558 r!19218)))) b!7612432))

(assert (= (and b!7612299 ((_ is Concat!29074) (regOne!40970 (reg!20558 r!19218)))) b!7612433))

(assert (= (and b!7612299 ((_ is Star!20229) (regOne!40970 (reg!20558 r!19218)))) b!7612434))

(assert (= (and b!7612299 ((_ is Union!20229) (regOne!40970 (reg!20558 r!19218)))) b!7612435))

(declare-fun b!7612437 () Bool)

(declare-fun e!4527377 () Bool)

(declare-fun tp!2221791 () Bool)

(declare-fun tp!2221794 () Bool)

(assert (=> b!7612437 (= e!4527377 (and tp!2221791 tp!2221794))))

(declare-fun b!7612436 () Bool)

(assert (=> b!7612436 (= e!4527377 tp_is_empty!50813)))

(declare-fun b!7612439 () Bool)

(declare-fun tp!2221790 () Bool)

(declare-fun tp!2221792 () Bool)

(assert (=> b!7612439 (= e!4527377 (and tp!2221790 tp!2221792))))

(assert (=> b!7612299 (= tp!2221739 e!4527377)))

(declare-fun b!7612438 () Bool)

(declare-fun tp!2221793 () Bool)

(assert (=> b!7612438 (= e!4527377 tp!2221793)))

(assert (= (and b!7612299 ((_ is ElementMatch!20229) (regTwo!40970 (reg!20558 r!19218)))) b!7612436))

(assert (= (and b!7612299 ((_ is Concat!29074) (regTwo!40970 (reg!20558 r!19218)))) b!7612437))

(assert (= (and b!7612299 ((_ is Star!20229) (regTwo!40970 (reg!20558 r!19218)))) b!7612438))

(assert (= (and b!7612299 ((_ is Union!20229) (regTwo!40970 (reg!20558 r!19218)))) b!7612439))

(declare-fun b!7612441 () Bool)

(declare-fun e!4527378 () Bool)

(declare-fun tp!2221796 () Bool)

(declare-fun tp!2221799 () Bool)

(assert (=> b!7612441 (= e!4527378 (and tp!2221796 tp!2221799))))

(declare-fun b!7612440 () Bool)

(assert (=> b!7612440 (= e!4527378 tp_is_empty!50813)))

(declare-fun b!7612443 () Bool)

(declare-fun tp!2221795 () Bool)

(declare-fun tp!2221797 () Bool)

(assert (=> b!7612443 (= e!4527378 (and tp!2221795 tp!2221797))))

(assert (=> b!7612300 (= tp!2221738 e!4527378)))

(declare-fun b!7612442 () Bool)

(declare-fun tp!2221798 () Bool)

(assert (=> b!7612442 (= e!4527378 tp!2221798)))

(assert (= (and b!7612300 ((_ is ElementMatch!20229) (reg!20558 (reg!20558 r!19218)))) b!7612440))

(assert (= (and b!7612300 ((_ is Concat!29074) (reg!20558 (reg!20558 r!19218)))) b!7612441))

(assert (= (and b!7612300 ((_ is Star!20229) (reg!20558 (reg!20558 r!19218)))) b!7612442))

(assert (= (and b!7612300 ((_ is Union!20229) (reg!20558 (reg!20558 r!19218)))) b!7612443))

(declare-fun b!7612445 () Bool)

(declare-fun e!4527379 () Bool)

(declare-fun tp!2221801 () Bool)

(declare-fun tp!2221804 () Bool)

(assert (=> b!7612445 (= e!4527379 (and tp!2221801 tp!2221804))))

(declare-fun b!7612444 () Bool)

(assert (=> b!7612444 (= e!4527379 tp_is_empty!50813)))

(declare-fun b!7612447 () Bool)

(declare-fun tp!2221800 () Bool)

(declare-fun tp!2221802 () Bool)

(assert (=> b!7612447 (= e!4527379 (and tp!2221800 tp!2221802))))

(assert (=> b!7612292 (= tp!2221728 e!4527379)))

(declare-fun b!7612446 () Bool)

(declare-fun tp!2221803 () Bool)

(assert (=> b!7612446 (= e!4527379 tp!2221803)))

(assert (= (and b!7612292 ((_ is ElementMatch!20229) (reg!20558 (regOne!40971 r!19218)))) b!7612444))

(assert (= (and b!7612292 ((_ is Concat!29074) (reg!20558 (regOne!40971 r!19218)))) b!7612445))

(assert (= (and b!7612292 ((_ is Star!20229) (reg!20558 (regOne!40971 r!19218)))) b!7612446))

(assert (= (and b!7612292 ((_ is Union!20229) (reg!20558 (regOne!40971 r!19218)))) b!7612447))

(declare-fun b!7612449 () Bool)

(declare-fun e!4527380 () Bool)

(declare-fun tp!2221806 () Bool)

(declare-fun tp!2221809 () Bool)

(assert (=> b!7612449 (= e!4527380 (and tp!2221806 tp!2221809))))

(declare-fun b!7612448 () Bool)

(assert (=> b!7612448 (= e!4527380 tp_is_empty!50813)))

(declare-fun b!7612451 () Bool)

(declare-fun tp!2221805 () Bool)

(declare-fun tp!2221807 () Bool)

(assert (=> b!7612451 (= e!4527380 (and tp!2221805 tp!2221807))))

(assert (=> b!7612291 (= tp!2221726 e!4527380)))

(declare-fun b!7612450 () Bool)

(declare-fun tp!2221808 () Bool)

(assert (=> b!7612450 (= e!4527380 tp!2221808)))

(assert (= (and b!7612291 ((_ is ElementMatch!20229) (regOne!40970 (regOne!40971 r!19218)))) b!7612448))

(assert (= (and b!7612291 ((_ is Concat!29074) (regOne!40970 (regOne!40971 r!19218)))) b!7612449))

(assert (= (and b!7612291 ((_ is Star!20229) (regOne!40970 (regOne!40971 r!19218)))) b!7612450))

(assert (= (and b!7612291 ((_ is Union!20229) (regOne!40970 (regOne!40971 r!19218)))) b!7612451))

(declare-fun b!7612462 () Bool)

(declare-fun e!4527388 () Bool)

(declare-fun tp!2221811 () Bool)

(declare-fun tp!2221814 () Bool)

(assert (=> b!7612462 (= e!4527388 (and tp!2221811 tp!2221814))))

(declare-fun b!7612461 () Bool)

(assert (=> b!7612461 (= e!4527388 tp_is_empty!50813)))

(declare-fun b!7612464 () Bool)

(declare-fun tp!2221810 () Bool)

(declare-fun tp!2221812 () Bool)

(assert (=> b!7612464 (= e!4527388 (and tp!2221810 tp!2221812))))

(assert (=> b!7612291 (= tp!2221729 e!4527388)))

(declare-fun b!7612463 () Bool)

(declare-fun tp!2221813 () Bool)

(assert (=> b!7612463 (= e!4527388 tp!2221813)))

(assert (= (and b!7612291 ((_ is ElementMatch!20229) (regTwo!40970 (regOne!40971 r!19218)))) b!7612461))

(assert (= (and b!7612291 ((_ is Concat!29074) (regTwo!40970 (regOne!40971 r!19218)))) b!7612462))

(assert (= (and b!7612291 ((_ is Star!20229) (regTwo!40970 (regOne!40971 r!19218)))) b!7612463))

(assert (= (and b!7612291 ((_ is Union!20229) (regTwo!40970 (regOne!40971 r!19218)))) b!7612464))

(declare-fun b!7612466 () Bool)

(declare-fun e!4527389 () Bool)

(declare-fun tp!2221816 () Bool)

(declare-fun tp!2221819 () Bool)

(assert (=> b!7612466 (= e!4527389 (and tp!2221816 tp!2221819))))

(declare-fun b!7612465 () Bool)

(assert (=> b!7612465 (= e!4527389 tp_is_empty!50813)))

(declare-fun b!7612468 () Bool)

(declare-fun tp!2221815 () Bool)

(declare-fun tp!2221817 () Bool)

(assert (=> b!7612468 (= e!4527389 (and tp!2221815 tp!2221817))))

(assert (=> b!7612296 (= tp!2221733 e!4527389)))

(declare-fun b!7612467 () Bool)

(declare-fun tp!2221818 () Bool)

(assert (=> b!7612467 (= e!4527389 tp!2221818)))

(assert (= (and b!7612296 ((_ is ElementMatch!20229) (reg!20558 (regTwo!40971 r!19218)))) b!7612465))

(assert (= (and b!7612296 ((_ is Concat!29074) (reg!20558 (regTwo!40971 r!19218)))) b!7612466))

(assert (= (and b!7612296 ((_ is Star!20229) (reg!20558 (regTwo!40971 r!19218)))) b!7612467))

(assert (= (and b!7612296 ((_ is Union!20229) (reg!20558 (regTwo!40971 r!19218)))) b!7612468))

(declare-fun b!7612470 () Bool)

(declare-fun e!4527390 () Bool)

(declare-fun tp!2221821 () Bool)

(declare-fun tp!2221824 () Bool)

(assert (=> b!7612470 (= e!4527390 (and tp!2221821 tp!2221824))))

(declare-fun b!7612469 () Bool)

(assert (=> b!7612469 (= e!4527390 tp_is_empty!50813)))

(declare-fun b!7612472 () Bool)

(declare-fun tp!2221820 () Bool)

(declare-fun tp!2221822 () Bool)

(assert (=> b!7612472 (= e!4527390 (and tp!2221820 tp!2221822))))

(assert (=> b!7612293 (= tp!2221725 e!4527390)))

(declare-fun b!7612471 () Bool)

(declare-fun tp!2221823 () Bool)

(assert (=> b!7612471 (= e!4527390 tp!2221823)))

(assert (= (and b!7612293 ((_ is ElementMatch!20229) (regOne!40971 (regOne!40971 r!19218)))) b!7612469))

(assert (= (and b!7612293 ((_ is Concat!29074) (regOne!40971 (regOne!40971 r!19218)))) b!7612470))

(assert (= (and b!7612293 ((_ is Star!20229) (regOne!40971 (regOne!40971 r!19218)))) b!7612471))

(assert (= (and b!7612293 ((_ is Union!20229) (regOne!40971 (regOne!40971 r!19218)))) b!7612472))

(declare-fun b!7612474 () Bool)

(declare-fun e!4527391 () Bool)

(declare-fun tp!2221826 () Bool)

(declare-fun tp!2221829 () Bool)

(assert (=> b!7612474 (= e!4527391 (and tp!2221826 tp!2221829))))

(declare-fun b!7612473 () Bool)

(assert (=> b!7612473 (= e!4527391 tp_is_empty!50813)))

(declare-fun b!7612476 () Bool)

(declare-fun tp!2221825 () Bool)

(declare-fun tp!2221827 () Bool)

(assert (=> b!7612476 (= e!4527391 (and tp!2221825 tp!2221827))))

(assert (=> b!7612293 (= tp!2221727 e!4527391)))

(declare-fun b!7612475 () Bool)

(declare-fun tp!2221828 () Bool)

(assert (=> b!7612475 (= e!4527391 tp!2221828)))

(assert (= (and b!7612293 ((_ is ElementMatch!20229) (regTwo!40971 (regOne!40971 r!19218)))) b!7612473))

(assert (= (and b!7612293 ((_ is Concat!29074) (regTwo!40971 (regOne!40971 r!19218)))) b!7612474))

(assert (= (and b!7612293 ((_ is Star!20229) (regTwo!40971 (regOne!40971 r!19218)))) b!7612475))

(assert (= (and b!7612293 ((_ is Union!20229) (regTwo!40971 (regOne!40971 r!19218)))) b!7612476))

(declare-fun b!7612478 () Bool)

(declare-fun e!4527392 () Bool)

(declare-fun tp!2221831 () Bool)

(declare-fun tp!2221834 () Bool)

(assert (=> b!7612478 (= e!4527392 (and tp!2221831 tp!2221834))))

(declare-fun b!7612477 () Bool)

(assert (=> b!7612477 (= e!4527392 tp_is_empty!50813)))

(declare-fun b!7612480 () Bool)

(declare-fun tp!2221830 () Bool)

(declare-fun tp!2221832 () Bool)

(assert (=> b!7612480 (= e!4527392 (and tp!2221830 tp!2221832))))

(assert (=> b!7612284 (= tp!2221718 e!4527392)))

(declare-fun b!7612479 () Bool)

(declare-fun tp!2221833 () Bool)

(assert (=> b!7612479 (= e!4527392 tp!2221833)))

(assert (= (and b!7612284 ((_ is ElementMatch!20229) (reg!20558 (regTwo!40970 r!19218)))) b!7612477))

(assert (= (and b!7612284 ((_ is Concat!29074) (reg!20558 (regTwo!40970 r!19218)))) b!7612478))

(assert (= (and b!7612284 ((_ is Star!20229) (reg!20558 (regTwo!40970 r!19218)))) b!7612479))

(assert (= (and b!7612284 ((_ is Union!20229) (reg!20558 (regTwo!40970 r!19218)))) b!7612480))

(declare-fun b!7612491 () Bool)

(declare-fun e!4527400 () Bool)

(declare-fun tp!2221836 () Bool)

(declare-fun tp!2221839 () Bool)

(assert (=> b!7612491 (= e!4527400 (and tp!2221836 tp!2221839))))

(declare-fun b!7612490 () Bool)

(assert (=> b!7612490 (= e!4527400 tp_is_empty!50813)))

(declare-fun b!7612493 () Bool)

(declare-fun tp!2221835 () Bool)

(declare-fun tp!2221837 () Bool)

(assert (=> b!7612493 (= e!4527400 (and tp!2221835 tp!2221837))))

(assert (=> b!7612283 (= tp!2221716 e!4527400)))

(declare-fun b!7612492 () Bool)

(declare-fun tp!2221838 () Bool)

(assert (=> b!7612492 (= e!4527400 tp!2221838)))

(assert (= (and b!7612283 ((_ is ElementMatch!20229) (regOne!40970 (regTwo!40970 r!19218)))) b!7612490))

(assert (= (and b!7612283 ((_ is Concat!29074) (regOne!40970 (regTwo!40970 r!19218)))) b!7612491))

(assert (= (and b!7612283 ((_ is Star!20229) (regOne!40970 (regTwo!40970 r!19218)))) b!7612492))

(assert (= (and b!7612283 ((_ is Union!20229) (regOne!40970 (regTwo!40970 r!19218)))) b!7612493))

(declare-fun b!7612495 () Bool)

(declare-fun e!4527401 () Bool)

(declare-fun tp!2221841 () Bool)

(declare-fun tp!2221844 () Bool)

(assert (=> b!7612495 (= e!4527401 (and tp!2221841 tp!2221844))))

(declare-fun b!7612494 () Bool)

(assert (=> b!7612494 (= e!4527401 tp_is_empty!50813)))

(declare-fun b!7612497 () Bool)

(declare-fun tp!2221840 () Bool)

(declare-fun tp!2221842 () Bool)

(assert (=> b!7612497 (= e!4527401 (and tp!2221840 tp!2221842))))

(assert (=> b!7612283 (= tp!2221719 e!4527401)))

(declare-fun b!7612496 () Bool)

(declare-fun tp!2221843 () Bool)

(assert (=> b!7612496 (= e!4527401 tp!2221843)))

(assert (= (and b!7612283 ((_ is ElementMatch!20229) (regTwo!40970 (regTwo!40970 r!19218)))) b!7612494))

(assert (= (and b!7612283 ((_ is Concat!29074) (regTwo!40970 (regTwo!40970 r!19218)))) b!7612495))

(assert (= (and b!7612283 ((_ is Star!20229) (regTwo!40970 (regTwo!40970 r!19218)))) b!7612496))

(assert (= (and b!7612283 ((_ is Union!20229) (regTwo!40970 (regTwo!40970 r!19218)))) b!7612497))

(declare-fun b!7612499 () Bool)

(declare-fun e!4527402 () Bool)

(declare-fun tp!2221846 () Bool)

(declare-fun tp!2221849 () Bool)

(assert (=> b!7612499 (= e!4527402 (and tp!2221846 tp!2221849))))

(declare-fun b!7612498 () Bool)

(assert (=> b!7612498 (= e!4527402 tp_is_empty!50813)))

(declare-fun b!7612501 () Bool)

(declare-fun tp!2221845 () Bool)

(declare-fun tp!2221847 () Bool)

(assert (=> b!7612501 (= e!4527402 (and tp!2221845 tp!2221847))))

(assert (=> b!7612297 (= tp!2221730 e!4527402)))

(declare-fun b!7612500 () Bool)

(declare-fun tp!2221848 () Bool)

(assert (=> b!7612500 (= e!4527402 tp!2221848)))

(assert (= (and b!7612297 ((_ is ElementMatch!20229) (regOne!40971 (regTwo!40971 r!19218)))) b!7612498))

(assert (= (and b!7612297 ((_ is Concat!29074) (regOne!40971 (regTwo!40971 r!19218)))) b!7612499))

(assert (= (and b!7612297 ((_ is Star!20229) (regOne!40971 (regTwo!40971 r!19218)))) b!7612500))

(assert (= (and b!7612297 ((_ is Union!20229) (regOne!40971 (regTwo!40971 r!19218)))) b!7612501))

(declare-fun b!7612503 () Bool)

(declare-fun e!4527403 () Bool)

(declare-fun tp!2221851 () Bool)

(declare-fun tp!2221854 () Bool)

(assert (=> b!7612503 (= e!4527403 (and tp!2221851 tp!2221854))))

(declare-fun b!7612502 () Bool)

(assert (=> b!7612502 (= e!4527403 tp_is_empty!50813)))

(declare-fun b!7612505 () Bool)

(declare-fun tp!2221850 () Bool)

(declare-fun tp!2221852 () Bool)

(assert (=> b!7612505 (= e!4527403 (and tp!2221850 tp!2221852))))

(assert (=> b!7612297 (= tp!2221732 e!4527403)))

(declare-fun b!7612504 () Bool)

(declare-fun tp!2221853 () Bool)

(assert (=> b!7612504 (= e!4527403 tp!2221853)))

(assert (= (and b!7612297 ((_ is ElementMatch!20229) (regTwo!40971 (regTwo!40971 r!19218)))) b!7612502))

(assert (= (and b!7612297 ((_ is Concat!29074) (regTwo!40971 (regTwo!40971 r!19218)))) b!7612503))

(assert (= (and b!7612297 ((_ is Star!20229) (regTwo!40971 (regTwo!40971 r!19218)))) b!7612504))

(assert (= (and b!7612297 ((_ is Union!20229) (regTwo!40971 (regTwo!40971 r!19218)))) b!7612505))

(declare-fun b!7612507 () Bool)

(declare-fun e!4527404 () Bool)

(declare-fun tp!2221856 () Bool)

(declare-fun tp!2221859 () Bool)

(assert (=> b!7612507 (= e!4527404 (and tp!2221856 tp!2221859))))

(declare-fun b!7612506 () Bool)

(assert (=> b!7612506 (= e!4527404 tp_is_empty!50813)))

(declare-fun b!7612509 () Bool)

(declare-fun tp!2221855 () Bool)

(declare-fun tp!2221857 () Bool)

(assert (=> b!7612509 (= e!4527404 (and tp!2221855 tp!2221857))))

(assert (=> b!7612301 (= tp!2221735 e!4527404)))

(declare-fun b!7612508 () Bool)

(declare-fun tp!2221858 () Bool)

(assert (=> b!7612508 (= e!4527404 tp!2221858)))

(assert (= (and b!7612301 ((_ is ElementMatch!20229) (regOne!40971 (reg!20558 r!19218)))) b!7612506))

(assert (= (and b!7612301 ((_ is Concat!29074) (regOne!40971 (reg!20558 r!19218)))) b!7612507))

(assert (= (and b!7612301 ((_ is Star!20229) (regOne!40971 (reg!20558 r!19218)))) b!7612508))

(assert (= (and b!7612301 ((_ is Union!20229) (regOne!40971 (reg!20558 r!19218)))) b!7612509))

(declare-fun b!7612511 () Bool)

(declare-fun e!4527405 () Bool)

(declare-fun tp!2221861 () Bool)

(declare-fun tp!2221864 () Bool)

(assert (=> b!7612511 (= e!4527405 (and tp!2221861 tp!2221864))))

(declare-fun b!7612510 () Bool)

(assert (=> b!7612510 (= e!4527405 tp_is_empty!50813)))

(declare-fun b!7612513 () Bool)

(declare-fun tp!2221860 () Bool)

(declare-fun tp!2221862 () Bool)

(assert (=> b!7612513 (= e!4527405 (and tp!2221860 tp!2221862))))

(assert (=> b!7612301 (= tp!2221737 e!4527405)))

(declare-fun b!7612512 () Bool)

(declare-fun tp!2221863 () Bool)

(assert (=> b!7612512 (= e!4527405 tp!2221863)))

(assert (= (and b!7612301 ((_ is ElementMatch!20229) (regTwo!40971 (reg!20558 r!19218)))) b!7612510))

(assert (= (and b!7612301 ((_ is Concat!29074) (regTwo!40971 (reg!20558 r!19218)))) b!7612511))

(assert (= (and b!7612301 ((_ is Star!20229) (regTwo!40971 (reg!20558 r!19218)))) b!7612512))

(assert (= (and b!7612301 ((_ is Union!20229) (regTwo!40971 (reg!20558 r!19218)))) b!7612513))

(check-sat (not b!7612467) (not bm!699240) (not b!7612511) (not b!7612491) (not b!7612435) (not b!7612471) (not b!7612403) (not d!2322430) (not bm!699243) (not b!7612446) (not b!7612365) (not bm!699229) (not b!7612442) (not b!7612426) (not b!7612438) (not b!7612402) (not b!7612398) (not b!7612508) (not b!7612445) (not b!7612503) (not b!7612441) (not b!7612443) (not b!7612422) (not b!7612423) (not b!7612326) (not b!7612413) (not b!7612474) (not b!7612450) (not b!7612501) (not b!7612478) (not b!7612463) (not b!7612439) (not b!7612434) (not b!7612470) (not b!7612390) (not b!7612505) (not b!7612480) (not b!7612399) (not b!7612430) (not b!7612497) (not b!7612493) (not bm!699251) (not bm!699246) (not bm!699250) (not b!7612509) (not b!7612468) (not bm!699248) (not b!7612415) (not b!7612464) (not b!7612500) (not bm!699241) (not b!7612335) (not b!7612431) (not d!2322438) (not b!7612475) (not bm!699228) (not b!7612466) (not bm!699230) (not bm!699234) (not bm!699249) (not b!7612513) (not b!7612492) (not b!7612405) (not b!7612419) (not b!7612427) (not b!7612512) (not d!2322432) (not b!7612433) (not b!7612437) (not b!7612407) (not b!7612425) (not b!7612447) (not b!7612401) (not b!7612449) (not bm!699242) (not b!7612479) (not b!7612410) (not b!7612397) (not b!7612414) (not b!7612411) (not b!7612421) (not b!7612499) (not b!7612504) (not b!7612409) (not bm!699233) (not b!7612496) (not b!7612451) (not b!7612495) (not bm!699245) (not d!2322450) tp_is_empty!50813 (not b!7612476) (not b!7612374) (not b!7612462) (not b!7612406) (not b!7612507) (not b!7612429) (not b!7612417) (not b!7612418) (not bm!699231) (not b!7612472))
(check-sat)
