; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545018 () Bool)

(assert start!545018)

(declare-fun b!5150303 () Bool)

(declare-fun res!2191694 () Bool)

(declare-fun e!3210805 () Bool)

(assert (=> b!5150303 (=> (not res!2191694) (not e!3210805))))

(declare-datatypes ((C!29264 0))(
  ( (C!29265 (val!24284 Int)) )
))
(declare-datatypes ((Regex!14499 0))(
  ( (ElementMatch!14499 (c!886526 C!29264)) (Concat!23344 (regOne!29510 Regex!14499) (regTwo!29510 Regex!14499)) (EmptyExpr!14499) (Star!14499 (reg!14828 Regex!14499)) (EmptyLang!14499) (Union!14499 (regOne!29511 Regex!14499) (regTwo!29511 Regex!14499)) )
))
(declare-fun expr!117 () Regex!14499)

(declare-fun nullable!4855 (Regex!14499) Bool)

(assert (=> b!5150303 (= res!2191694 (nullable!4855 (regOne!29510 expr!117)))))

(declare-fun b!5150304 () Bool)

(declare-fun e!3210803 () Bool)

(declare-fun tp!1440174 () Bool)

(declare-fun tp!1440176 () Bool)

(assert (=> b!5150304 (= e!3210803 (and tp!1440174 tp!1440176))))

(declare-fun b!5150305 () Bool)

(declare-fun res!2191696 () Bool)

(assert (=> b!5150305 (=> (not res!2191696) (not e!3210805))))

(declare-fun a!1296 () C!29264)

(get-info :version)

(assert (=> b!5150305 (= res!2191696 (and (or (not ((_ is ElementMatch!14499) expr!117)) (not (= (c!886526 expr!117) a!1296))) (not ((_ is Union!14499) expr!117)) ((_ is Concat!23344) expr!117)))))

(declare-fun b!5150306 () Bool)

(declare-fun tp_is_empty!38147 () Bool)

(assert (=> b!5150306 (= e!3210803 tp_is_empty!38147)))

(declare-fun b!5150308 () Bool)

(declare-fun e!3210802 () Bool)

(declare-fun e!3210806 () Bool)

(assert (=> b!5150308 (= e!3210802 e!3210806)))

(declare-fun res!2191692 () Bool)

(assert (=> b!5150308 (=> res!2191692 e!3210806)))

(declare-fun e!3210807 () Bool)

(assert (=> b!5150308 (= res!2191692 e!3210807)))

(declare-fun res!2191693 () Bool)

(assert (=> b!5150308 (=> (not res!2191693) (not e!3210807))))

(declare-fun lostCause!1550 (Regex!14499) Bool)

(assert (=> b!5150308 (= res!2191693 (not (lostCause!1550 (regTwo!29510 expr!117))))))

(declare-datatypes ((List!59911 0))(
  ( (Nil!59787) (Cons!59787 (h!66235 Regex!14499) (t!372956 List!59911)) )
))
(declare-datatypes ((Context!7766 0))(
  ( (Context!7767 (exprs!4383 List!59911)) )
))
(declare-fun lt!2121323 () Context!7766)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1285 ((InoxSet Context!7766)) Bool)

(declare-fun derivationStepZipperDown!166 (Regex!14499 Context!7766 C!29264) (InoxSet Context!7766))

(assert (=> b!5150308 (lostCauseZipper!1285 (derivationStepZipperDown!166 (regOne!29510 expr!117) lt!2121323 a!1296))))

(declare-datatypes ((Unit!151205 0))(
  ( (Unit!151206) )
))
(declare-fun lt!2121325 () Unit!151205)

(declare-fun lemmaLostCauseFixPointDerivDown!56 (Regex!14499 Context!7766 C!29264) Unit!151205)

(assert (=> b!5150308 (= lt!2121325 (lemmaLostCauseFixPointDerivDown!56 (regOne!29510 expr!117) lt!2121323 a!1296))))

(declare-fun ctx!100 () Context!7766)

(declare-fun $colon$colon!1221 (List!59911 Regex!14499) List!59911)

(assert (=> b!5150308 (= lt!2121323 (Context!7767 ($colon$colon!1221 (exprs!4383 ctx!100) (regTwo!29510 expr!117))))))

(declare-fun b!5150309 () Bool)

(declare-fun regexDepth!141 (Regex!14499) Int)

(assert (=> b!5150309 (= e!3210806 (< (regexDepth!141 (regTwo!29510 expr!117)) (regexDepth!141 expr!117)))))

(declare-fun b!5150310 () Bool)

(assert (=> b!5150310 (= e!3210805 (not e!3210802))))

(declare-fun res!2191697 () Bool)

(assert (=> b!5150310 (=> res!2191697 e!3210802)))

(declare-fun validRegex!6354 (Regex!14499) Bool)

(assert (=> b!5150310 (= res!2191697 (not (validRegex!6354 (regTwo!29510 expr!117))))))

(assert (=> b!5150310 (not (lostCause!1550 (regOne!29510 expr!117)))))

(declare-fun lt!2121324 () Unit!151205)

(declare-fun lemmaNullableThenNotLostCause!88 (Regex!14499) Unit!151205)

(assert (=> b!5150310 (= lt!2121324 (lemmaNullableThenNotLostCause!88 (regOne!29510 expr!117)))))

(declare-fun b!5150311 () Bool)

(declare-fun tp!1440173 () Bool)

(assert (=> b!5150311 (= e!3210803 tp!1440173)))

(declare-fun b!5150312 () Bool)

(declare-fun res!2191695 () Bool)

(assert (=> b!5150312 (=> (not res!2191695) (not e!3210805))))

(declare-fun e!3210804 () Bool)

(assert (=> b!5150312 (= res!2191695 e!3210804)))

(declare-fun res!2191698 () Bool)

(assert (=> b!5150312 (=> res!2191698 e!3210804)))

(assert (=> b!5150312 (= res!2191698 (lostCause!1550 expr!117))))

(declare-fun b!5150313 () Bool)

(declare-fun tp!1440175 () Bool)

(declare-fun tp!1440172 () Bool)

(assert (=> b!5150313 (= e!3210803 (and tp!1440175 tp!1440172))))

(declare-fun b!5150314 () Bool)

(declare-fun lostCause!1551 (Context!7766) Bool)

(assert (=> b!5150314 (= e!3210807 (not (lostCause!1551 ctx!100)))))

(declare-fun b!5150315 () Bool)

(declare-fun e!3210808 () Bool)

(declare-fun tp!1440177 () Bool)

(assert (=> b!5150315 (= e!3210808 tp!1440177)))

(declare-fun res!2191691 () Bool)

(assert (=> start!545018 (=> (not res!2191691) (not e!3210805))))

(assert (=> start!545018 (= res!2191691 (validRegex!6354 expr!117))))

(assert (=> start!545018 e!3210805))

(assert (=> start!545018 e!3210803))

(declare-fun inv!79428 (Context!7766) Bool)

(assert (=> start!545018 (and (inv!79428 ctx!100) e!3210808)))

(assert (=> start!545018 tp_is_empty!38147))

(declare-fun b!5150307 () Bool)

(assert (=> b!5150307 (= e!3210804 (lostCause!1551 ctx!100))))

(assert (= (and start!545018 res!2191691) b!5150312))

(assert (= (and b!5150312 (not res!2191698)) b!5150307))

(assert (= (and b!5150312 res!2191695) b!5150305))

(assert (= (and b!5150305 res!2191696) b!5150303))

(assert (= (and b!5150303 res!2191694) b!5150310))

(assert (= (and b!5150310 (not res!2191697)) b!5150308))

(assert (= (and b!5150308 res!2191693) b!5150314))

(assert (= (and b!5150308 (not res!2191692)) b!5150309))

(assert (= (and start!545018 ((_ is ElementMatch!14499) expr!117)) b!5150306))

(assert (= (and start!545018 ((_ is Concat!23344) expr!117)) b!5150313))

(assert (= (and start!545018 ((_ is Star!14499) expr!117)) b!5150311))

(assert (= (and start!545018 ((_ is Union!14499) expr!117)) b!5150304))

(assert (= start!545018 b!5150315))

(declare-fun m!6208166 () Bool)

(assert (=> b!5150309 m!6208166))

(declare-fun m!6208168 () Bool)

(assert (=> b!5150309 m!6208168))

(declare-fun m!6208170 () Bool)

(assert (=> b!5150314 m!6208170))

(declare-fun m!6208172 () Bool)

(assert (=> b!5150308 m!6208172))

(declare-fun m!6208174 () Bool)

(assert (=> b!5150308 m!6208174))

(declare-fun m!6208176 () Bool)

(assert (=> b!5150308 m!6208176))

(declare-fun m!6208178 () Bool)

(assert (=> b!5150308 m!6208178))

(assert (=> b!5150308 m!6208178))

(declare-fun m!6208180 () Bool)

(assert (=> b!5150308 m!6208180))

(declare-fun m!6208182 () Bool)

(assert (=> b!5150303 m!6208182))

(declare-fun m!6208184 () Bool)

(assert (=> b!5150312 m!6208184))

(declare-fun m!6208186 () Bool)

(assert (=> b!5150310 m!6208186))

(declare-fun m!6208188 () Bool)

(assert (=> b!5150310 m!6208188))

(declare-fun m!6208190 () Bool)

(assert (=> b!5150310 m!6208190))

(assert (=> b!5150307 m!6208170))

(declare-fun m!6208192 () Bool)

(assert (=> start!545018 m!6208192))

(declare-fun m!6208194 () Bool)

(assert (=> start!545018 m!6208194))

(check-sat (not b!5150304) (not start!545018) (not b!5150303) (not b!5150313) (not b!5150315) (not b!5150308) (not b!5150309) (not b!5150314) (not b!5150311) tp_is_empty!38147 (not b!5150310) (not b!5150312) (not b!5150307))
(check-sat)
(get-model)

(declare-fun b!5150361 () Bool)

(declare-fun e!3210848 () Bool)

(declare-fun call!360301 () Bool)

(assert (=> b!5150361 (= e!3210848 call!360301)))

(declare-fun b!5150362 () Bool)

(declare-fun res!2191727 () Bool)

(declare-fun e!3210850 () Bool)

(assert (=> b!5150362 (=> res!2191727 e!3210850)))

(assert (=> b!5150362 (= res!2191727 (not ((_ is Concat!23344) (regTwo!29510 expr!117))))))

(declare-fun e!3210847 () Bool)

(assert (=> b!5150362 (= e!3210847 e!3210850)))

(declare-fun bm!360294 () Bool)

(declare-fun c!886537 () Bool)

(declare-fun c!886538 () Bool)

(assert (=> bm!360294 (= call!360301 (validRegex!6354 (ite c!886537 (reg!14828 (regTwo!29510 expr!117)) (ite c!886538 (regOne!29511 (regTwo!29510 expr!117)) (regOne!29510 (regTwo!29510 expr!117))))))))

(declare-fun bm!360295 () Bool)

(declare-fun call!360299 () Bool)

(assert (=> bm!360295 (= call!360299 (validRegex!6354 (ite c!886538 (regTwo!29511 (regTwo!29510 expr!117)) (regTwo!29510 (regTwo!29510 expr!117)))))))

(declare-fun b!5150363 () Bool)

(declare-fun e!3210849 () Bool)

(declare-fun e!3210846 () Bool)

(assert (=> b!5150363 (= e!3210849 e!3210846)))

(assert (=> b!5150363 (= c!886537 ((_ is Star!14499) (regTwo!29510 expr!117)))))

(declare-fun b!5150364 () Bool)

(assert (=> b!5150364 (= e!3210846 e!3210848)))

(declare-fun res!2191724 () Bool)

(assert (=> b!5150364 (= res!2191724 (not (nullable!4855 (reg!14828 (regTwo!29510 expr!117)))))))

(assert (=> b!5150364 (=> (not res!2191724) (not e!3210848))))

(declare-fun b!5150365 () Bool)

(declare-fun e!3210844 () Bool)

(assert (=> b!5150365 (= e!3210850 e!3210844)))

(declare-fun res!2191726 () Bool)

(assert (=> b!5150365 (=> (not res!2191726) (not e!3210844))))

(declare-fun call!360300 () Bool)

(assert (=> b!5150365 (= res!2191726 call!360300)))

(declare-fun b!5150366 () Bool)

(declare-fun e!3210845 () Bool)

(assert (=> b!5150366 (= e!3210845 call!360299)))

(declare-fun d!1664063 () Bool)

(declare-fun res!2191728 () Bool)

(assert (=> d!1664063 (=> res!2191728 e!3210849)))

(assert (=> d!1664063 (= res!2191728 ((_ is ElementMatch!14499) (regTwo!29510 expr!117)))))

(assert (=> d!1664063 (= (validRegex!6354 (regTwo!29510 expr!117)) e!3210849)))

(declare-fun b!5150367 () Bool)

(declare-fun res!2191725 () Bool)

(assert (=> b!5150367 (=> (not res!2191725) (not e!3210845))))

(assert (=> b!5150367 (= res!2191725 call!360300)))

(assert (=> b!5150367 (= e!3210847 e!3210845)))

(declare-fun b!5150368 () Bool)

(assert (=> b!5150368 (= e!3210844 call!360299)))

(declare-fun bm!360296 () Bool)

(assert (=> bm!360296 (= call!360300 call!360301)))

(declare-fun b!5150369 () Bool)

(assert (=> b!5150369 (= e!3210846 e!3210847)))

(assert (=> b!5150369 (= c!886538 ((_ is Union!14499) (regTwo!29510 expr!117)))))

(assert (= (and d!1664063 (not res!2191728)) b!5150363))

(assert (= (and b!5150363 c!886537) b!5150364))

(assert (= (and b!5150363 (not c!886537)) b!5150369))

(assert (= (and b!5150364 res!2191724) b!5150361))

(assert (= (and b!5150369 c!886538) b!5150367))

(assert (= (and b!5150369 (not c!886538)) b!5150362))

(assert (= (and b!5150367 res!2191725) b!5150366))

(assert (= (and b!5150362 (not res!2191727)) b!5150365))

(assert (= (and b!5150365 res!2191726) b!5150368))

(assert (= (or b!5150366 b!5150368) bm!360295))

(assert (= (or b!5150367 b!5150365) bm!360296))

(assert (= (or b!5150361 bm!360296) bm!360294))

(declare-fun m!6208202 () Bool)

(assert (=> bm!360294 m!6208202))

(declare-fun m!6208204 () Bool)

(assert (=> bm!360295 m!6208204))

(declare-fun m!6208206 () Bool)

(assert (=> b!5150364 m!6208206))

(assert (=> b!5150310 d!1664063))

(declare-fun d!1664067 () Bool)

(declare-fun lostCauseFct!375 (Regex!14499) Bool)

(assert (=> d!1664067 (= (lostCause!1550 (regOne!29510 expr!117)) (lostCauseFct!375 (regOne!29510 expr!117)))))

(declare-fun bs!1201508 () Bool)

(assert (= bs!1201508 d!1664067))

(declare-fun m!6208210 () Bool)

(assert (=> bs!1201508 m!6208210))

(assert (=> b!5150310 d!1664067))

(declare-fun d!1664071 () Bool)

(assert (=> d!1664071 (not (lostCause!1550 (regOne!29510 expr!117)))))

(declare-fun lt!2121331 () Unit!151205)

(declare-fun choose!38098 (Regex!14499) Unit!151205)

(assert (=> d!1664071 (= lt!2121331 (choose!38098 (regOne!29510 expr!117)))))

(assert (=> d!1664071 (validRegex!6354 (regOne!29510 expr!117))))

(assert (=> d!1664071 (= (lemmaNullableThenNotLostCause!88 (regOne!29510 expr!117)) lt!2121331)))

(declare-fun bs!1201510 () Bool)

(assert (= bs!1201510 d!1664071))

(assert (=> bs!1201510 m!6208188))

(declare-fun m!6208216 () Bool)

(assert (=> bs!1201510 m!6208216))

(declare-fun m!6208220 () Bool)

(assert (=> bs!1201510 m!6208220))

(assert (=> b!5150310 d!1664071))

(declare-fun d!1664075 () Bool)

(assert (=> d!1664075 (= (lostCause!1550 expr!117) (lostCauseFct!375 expr!117))))

(declare-fun bs!1201512 () Bool)

(assert (= bs!1201512 d!1664075))

(declare-fun m!6208222 () Bool)

(assert (=> bs!1201512 m!6208222))

(assert (=> b!5150312 d!1664075))

(declare-fun d!1664079 () Bool)

(declare-fun lambda!257047 () Int)

(declare-fun exists!1831 (List!59911 Int) Bool)

(assert (=> d!1664079 (= (lostCause!1551 ctx!100) (exists!1831 (exprs!4383 ctx!100) lambda!257047))))

(declare-fun bs!1201522 () Bool)

(assert (= bs!1201522 d!1664079))

(declare-fun m!6208264 () Bool)

(assert (=> bs!1201522 m!6208264))

(assert (=> b!5150307 d!1664079))

(declare-fun bm!360364 () Bool)

(declare-fun call!360372 () List!59911)

(declare-fun call!360371 () List!59911)

(assert (=> bm!360364 (= call!360372 call!360371)))

(declare-fun b!5150543 () Bool)

(declare-fun e!3210948 () (InoxSet Context!7766))

(assert (=> b!5150543 (= e!3210948 ((as const (Array Context!7766 Bool)) false))))

(declare-fun bm!360365 () Bool)

(declare-fun c!886605 () Bool)

(declare-fun call!360374 () (InoxSet Context!7766))

(declare-fun c!886606 () Bool)

(declare-fun c!886607 () Bool)

(assert (=> bm!360365 (= call!360374 (derivationStepZipperDown!166 (ite c!886607 (regOne!29511 (regOne!29510 expr!117)) (ite c!886605 (regTwo!29510 (regOne!29510 expr!117)) (ite c!886606 (regOne!29510 (regOne!29510 expr!117)) (reg!14828 (regOne!29510 expr!117))))) (ite (or c!886607 c!886605) lt!2121323 (Context!7767 call!360372)) a!1296))))

(declare-fun b!5150544 () Bool)

(declare-fun c!886608 () Bool)

(assert (=> b!5150544 (= c!886608 ((_ is Star!14499) (regOne!29510 expr!117)))))

(declare-fun e!3210950 () (InoxSet Context!7766))

(assert (=> b!5150544 (= e!3210950 e!3210948)))

(declare-fun b!5150546 () Bool)

(declare-fun e!3210946 () (InoxSet Context!7766))

(assert (=> b!5150546 (= e!3210946 e!3210950)))

(assert (=> b!5150546 (= c!886606 ((_ is Concat!23344) (regOne!29510 expr!117)))))

(declare-fun bm!360366 () Bool)

(declare-fun call!360370 () (InoxSet Context!7766))

(assert (=> bm!360366 (= call!360370 call!360374)))

(declare-fun b!5150547 () Bool)

(declare-fun call!360369 () (InoxSet Context!7766))

(assert (=> b!5150547 (= e!3210950 call!360369)))

(declare-fun bm!360367 () Bool)

(assert (=> bm!360367 (= call!360371 ($colon$colon!1221 (exprs!4383 lt!2121323) (ite (or c!886605 c!886606) (regTwo!29510 (regOne!29510 expr!117)) (regOne!29510 expr!117))))))

(declare-fun bm!360368 () Bool)

(assert (=> bm!360368 (= call!360369 call!360370)))

(declare-fun b!5150548 () Bool)

(declare-fun call!360373 () (InoxSet Context!7766))

(assert (=> b!5150548 (= e!3210946 ((_ map or) call!360373 call!360370))))

(declare-fun b!5150545 () Bool)

(declare-fun e!3210949 () (InoxSet Context!7766))

(declare-fun e!3210947 () (InoxSet Context!7766))

(assert (=> b!5150545 (= e!3210949 e!3210947)))

(assert (=> b!5150545 (= c!886607 ((_ is Union!14499) (regOne!29510 expr!117)))))

(declare-fun d!1664099 () Bool)

(declare-fun c!886609 () Bool)

(assert (=> d!1664099 (= c!886609 (and ((_ is ElementMatch!14499) (regOne!29510 expr!117)) (= (c!886526 (regOne!29510 expr!117)) a!1296)))))

(assert (=> d!1664099 (= (derivationStepZipperDown!166 (regOne!29510 expr!117) lt!2121323 a!1296) e!3210949)))

(declare-fun b!5150549 () Bool)

(assert (=> b!5150549 (= e!3210947 ((_ map or) call!360374 call!360373))))

(declare-fun b!5150550 () Bool)

(assert (=> b!5150550 (= e!3210949 (store ((as const (Array Context!7766 Bool)) false) lt!2121323 true))))

(declare-fun bm!360369 () Bool)

(assert (=> bm!360369 (= call!360373 (derivationStepZipperDown!166 (ite c!886607 (regTwo!29511 (regOne!29510 expr!117)) (regOne!29510 (regOne!29510 expr!117))) (ite c!886607 lt!2121323 (Context!7767 call!360371)) a!1296))))

(declare-fun b!5150551 () Bool)

(declare-fun e!3210945 () Bool)

(assert (=> b!5150551 (= e!3210945 (nullable!4855 (regOne!29510 (regOne!29510 expr!117))))))

(declare-fun b!5150552 () Bool)

(assert (=> b!5150552 (= c!886605 e!3210945)))

(declare-fun res!2191751 () Bool)

(assert (=> b!5150552 (=> (not res!2191751) (not e!3210945))))

(assert (=> b!5150552 (= res!2191751 ((_ is Concat!23344) (regOne!29510 expr!117)))))

(assert (=> b!5150552 (= e!3210947 e!3210946)))

(declare-fun b!5150553 () Bool)

(assert (=> b!5150553 (= e!3210948 call!360369)))

(assert (= (and d!1664099 c!886609) b!5150550))

(assert (= (and d!1664099 (not c!886609)) b!5150545))

(assert (= (and b!5150545 c!886607) b!5150549))

(assert (= (and b!5150545 (not c!886607)) b!5150552))

(assert (= (and b!5150552 res!2191751) b!5150551))

(assert (= (and b!5150552 c!886605) b!5150548))

(assert (= (and b!5150552 (not c!886605)) b!5150546))

(assert (= (and b!5150546 c!886606) b!5150547))

(assert (= (and b!5150546 (not c!886606)) b!5150544))

(assert (= (and b!5150544 c!886608) b!5150553))

(assert (= (and b!5150544 (not c!886608)) b!5150543))

(assert (= (or b!5150547 b!5150553) bm!360364))

(assert (= (or b!5150547 b!5150553) bm!360368))

(assert (= (or b!5150548 bm!360364) bm!360367))

(assert (= (or b!5150548 bm!360368) bm!360366))

(assert (= (or b!5150549 b!5150548) bm!360369))

(assert (= (or b!5150549 bm!360366) bm!360365))

(declare-fun m!6208286 () Bool)

(assert (=> bm!360369 m!6208286))

(declare-fun m!6208288 () Bool)

(assert (=> bm!360365 m!6208288))

(declare-fun m!6208290 () Bool)

(assert (=> bm!360367 m!6208290))

(declare-fun m!6208292 () Bool)

(assert (=> b!5150550 m!6208292))

(declare-fun m!6208294 () Bool)

(assert (=> b!5150551 m!6208294))

(assert (=> b!5150308 d!1664099))

(declare-fun d!1664103 () Bool)

(assert (=> d!1664103 (lostCauseZipper!1285 (derivationStepZipperDown!166 (regOne!29510 expr!117) lt!2121323 a!1296))))

(declare-fun lt!2121365 () Unit!151205)

(declare-fun choose!38099 (Regex!14499 Context!7766 C!29264) Unit!151205)

(assert (=> d!1664103 (= lt!2121365 (choose!38099 (regOne!29510 expr!117) lt!2121323 a!1296))))

(assert (=> d!1664103 (validRegex!6354 (regOne!29510 expr!117))))

(assert (=> d!1664103 (= (lemmaLostCauseFixPointDerivDown!56 (regOne!29510 expr!117) lt!2121323 a!1296) lt!2121365)))

(declare-fun bs!1201523 () Bool)

(assert (= bs!1201523 d!1664103))

(assert (=> bs!1201523 m!6208178))

(assert (=> bs!1201523 m!6208178))

(assert (=> bs!1201523 m!6208180))

(declare-fun m!6208296 () Bool)

(assert (=> bs!1201523 m!6208296))

(assert (=> bs!1201523 m!6208220))

(assert (=> b!5150308 d!1664103))

(declare-fun d!1664105 () Bool)

(assert (=> d!1664105 (= (lostCause!1550 (regTwo!29510 expr!117)) (lostCauseFct!375 (regTwo!29510 expr!117)))))

(declare-fun bs!1201524 () Bool)

(assert (= bs!1201524 d!1664105))

(declare-fun m!6208298 () Bool)

(assert (=> bs!1201524 m!6208298))

(assert (=> b!5150308 d!1664105))

(declare-fun d!1664107 () Bool)

(assert (=> d!1664107 (= ($colon$colon!1221 (exprs!4383 ctx!100) (regTwo!29510 expr!117)) (Cons!59787 (regTwo!29510 expr!117) (exprs!4383 ctx!100)))))

(assert (=> b!5150308 d!1664107))

(declare-fun bs!1201525 () Bool)

(declare-fun b!5150558 () Bool)

(declare-fun d!1664109 () Bool)

(assert (= bs!1201525 (and b!5150558 d!1664109)))

(declare-fun lambda!257061 () Int)

(declare-fun lambda!257060 () Int)

(assert (=> bs!1201525 (not (= lambda!257061 lambda!257060))))

(declare-fun bs!1201526 () Bool)

(declare-fun b!5150559 () Bool)

(assert (= bs!1201526 (and b!5150559 d!1664109)))

(declare-fun lambda!257062 () Int)

(assert (=> bs!1201526 (not (= lambda!257062 lambda!257060))))

(declare-fun bs!1201527 () Bool)

(assert (= bs!1201527 (and b!5150559 b!5150558)))

(assert (=> bs!1201527 (= lambda!257062 lambda!257061)))

(declare-fun bm!360375 () Bool)

(declare-datatypes ((List!59914 0))(
  ( (Nil!59790) (Cons!59790 (h!66238 Context!7766) (t!372961 List!59914)) )
))
(declare-fun call!360380 () List!59914)

(declare-fun toList!8399 ((InoxSet Context!7766)) List!59914)

(assert (=> bm!360375 (= call!360380 (toList!8399 (derivationStepZipperDown!166 (regOne!29510 expr!117) lt!2121323 a!1296)))))

(declare-fun call!360379 () Bool)

(declare-fun bm!360374 () Bool)

(declare-fun c!886620 () Bool)

(declare-fun lt!2121386 () List!59914)

(declare-fun lt!2121384 () List!59914)

(declare-fun exists!1832 (List!59914 Int) Bool)

(assert (=> bm!360374 (= call!360379 (exists!1832 (ite c!886620 lt!2121384 lt!2121386) (ite c!886620 lambda!257061 lambda!257062)))))

(declare-fun e!3210957 () Unit!151205)

(declare-fun Unit!151209 () Unit!151205)

(assert (=> b!5150558 (= e!3210957 Unit!151209)))

(assert (=> b!5150558 (= lt!2121384 call!360380)))

(declare-fun lt!2121382 () Unit!151205)

(declare-fun lemmaNotForallThenExists!446 (List!59914 Int) Unit!151205)

(assert (=> b!5150558 (= lt!2121382 (lemmaNotForallThenExists!446 lt!2121384 lambda!257060))))

(assert (=> b!5150558 call!360379))

(declare-fun lt!2121387 () Unit!151205)

(assert (=> b!5150558 (= lt!2121387 lt!2121382)))

(declare-fun Unit!151210 () Unit!151205)

(assert (=> b!5150559 (= e!3210957 Unit!151210)))

(assert (=> b!5150559 (= lt!2121386 call!360380)))

(declare-fun lt!2121388 () Unit!151205)

(declare-fun lemmaForallThenNotExists!413 (List!59914 Int) Unit!151205)

(assert (=> b!5150559 (= lt!2121388 (lemmaForallThenNotExists!413 lt!2121386 lambda!257060))))

(assert (=> b!5150559 (not call!360379)))

(declare-fun lt!2121389 () Unit!151205)

(assert (=> b!5150559 (= lt!2121389 lt!2121388)))

(declare-fun lt!2121383 () Bool)

(declare-datatypes ((List!59915 0))(
  ( (Nil!59791) (Cons!59791 (h!66239 C!29264) (t!372962 List!59915)) )
))
(declare-datatypes ((Option!14803 0))(
  ( (None!14802) (Some!14802 (v!50831 List!59915)) )
))
(declare-fun isEmpty!32064 (Option!14803) Bool)

(declare-fun getLanguageWitness!964 ((InoxSet Context!7766)) Option!14803)

(assert (=> d!1664109 (= lt!2121383 (isEmpty!32064 (getLanguageWitness!964 (derivationStepZipperDown!166 (regOne!29510 expr!117) lt!2121323 a!1296))))))

(declare-fun forall!13975 ((InoxSet Context!7766) Int) Bool)

(assert (=> d!1664109 (= lt!2121383 (forall!13975 (derivationStepZipperDown!166 (regOne!29510 expr!117) lt!2121323 a!1296) lambda!257060))))

(declare-fun lt!2121385 () Unit!151205)

(assert (=> d!1664109 (= lt!2121385 e!3210957)))

(assert (=> d!1664109 (= c!886620 (not (forall!13975 (derivationStepZipperDown!166 (regOne!29510 expr!117) lt!2121323 a!1296) lambda!257060)))))

(assert (=> d!1664109 (= (lostCauseZipper!1285 (derivationStepZipperDown!166 (regOne!29510 expr!117) lt!2121323 a!1296)) lt!2121383)))

(assert (= (and d!1664109 c!886620) b!5150558))

(assert (= (and d!1664109 (not c!886620)) b!5150559))

(assert (= (or b!5150558 b!5150559) bm!360374))

(assert (= (or b!5150558 b!5150559) bm!360375))

(declare-fun m!6208300 () Bool)

(assert (=> bm!360374 m!6208300))

(assert (=> d!1664109 m!6208178))

(declare-fun m!6208302 () Bool)

(assert (=> d!1664109 m!6208302))

(assert (=> d!1664109 m!6208302))

(declare-fun m!6208304 () Bool)

(assert (=> d!1664109 m!6208304))

(assert (=> d!1664109 m!6208178))

(declare-fun m!6208306 () Bool)

(assert (=> d!1664109 m!6208306))

(assert (=> d!1664109 m!6208178))

(assert (=> d!1664109 m!6208306))

(declare-fun m!6208308 () Bool)

(assert (=> b!5150559 m!6208308))

(declare-fun m!6208310 () Bool)

(assert (=> b!5150558 m!6208310))

(assert (=> bm!360375 m!6208178))

(declare-fun m!6208312 () Bool)

(assert (=> bm!360375 m!6208312))

(assert (=> b!5150308 d!1664109))

(declare-fun d!1664111 () Bool)

(declare-fun nullableFct!1334 (Regex!14499) Bool)

(assert (=> d!1664111 (= (nullable!4855 (regOne!29510 expr!117)) (nullableFct!1334 (regOne!29510 expr!117)))))

(declare-fun bs!1201528 () Bool)

(assert (= bs!1201528 d!1664111))

(declare-fun m!6208314 () Bool)

(assert (=> bs!1201528 m!6208314))

(assert (=> b!5150303 d!1664111))

(declare-fun b!5150560 () Bool)

(declare-fun e!3210962 () Bool)

(declare-fun call!360383 () Bool)

(assert (=> b!5150560 (= e!3210962 call!360383)))

(declare-fun b!5150561 () Bool)

(declare-fun res!2191755 () Bool)

(declare-fun e!3210964 () Bool)

(assert (=> b!5150561 (=> res!2191755 e!3210964)))

(assert (=> b!5150561 (= res!2191755 (not ((_ is Concat!23344) expr!117)))))

(declare-fun e!3210961 () Bool)

(assert (=> b!5150561 (= e!3210961 e!3210964)))

(declare-fun c!886622 () Bool)

(declare-fun bm!360376 () Bool)

(declare-fun c!886621 () Bool)

(assert (=> bm!360376 (= call!360383 (validRegex!6354 (ite c!886621 (reg!14828 expr!117) (ite c!886622 (regOne!29511 expr!117) (regOne!29510 expr!117)))))))

(declare-fun bm!360377 () Bool)

(declare-fun call!360381 () Bool)

(assert (=> bm!360377 (= call!360381 (validRegex!6354 (ite c!886622 (regTwo!29511 expr!117) (regTwo!29510 expr!117))))))

(declare-fun b!5150562 () Bool)

(declare-fun e!3210963 () Bool)

(declare-fun e!3210960 () Bool)

(assert (=> b!5150562 (= e!3210963 e!3210960)))

(assert (=> b!5150562 (= c!886621 ((_ is Star!14499) expr!117))))

(declare-fun b!5150563 () Bool)

(assert (=> b!5150563 (= e!3210960 e!3210962)))

(declare-fun res!2191752 () Bool)

(assert (=> b!5150563 (= res!2191752 (not (nullable!4855 (reg!14828 expr!117))))))

(assert (=> b!5150563 (=> (not res!2191752) (not e!3210962))))

(declare-fun b!5150564 () Bool)

(declare-fun e!3210958 () Bool)

(assert (=> b!5150564 (= e!3210964 e!3210958)))

(declare-fun res!2191754 () Bool)

(assert (=> b!5150564 (=> (not res!2191754) (not e!3210958))))

(declare-fun call!360382 () Bool)

(assert (=> b!5150564 (= res!2191754 call!360382)))

(declare-fun b!5150565 () Bool)

(declare-fun e!3210959 () Bool)

(assert (=> b!5150565 (= e!3210959 call!360381)))

(declare-fun d!1664113 () Bool)

(declare-fun res!2191756 () Bool)

(assert (=> d!1664113 (=> res!2191756 e!3210963)))

(assert (=> d!1664113 (= res!2191756 ((_ is ElementMatch!14499) expr!117))))

(assert (=> d!1664113 (= (validRegex!6354 expr!117) e!3210963)))

(declare-fun b!5150566 () Bool)

(declare-fun res!2191753 () Bool)

(assert (=> b!5150566 (=> (not res!2191753) (not e!3210959))))

(assert (=> b!5150566 (= res!2191753 call!360382)))

(assert (=> b!5150566 (= e!3210961 e!3210959)))

(declare-fun b!5150567 () Bool)

(assert (=> b!5150567 (= e!3210958 call!360381)))

(declare-fun bm!360378 () Bool)

(assert (=> bm!360378 (= call!360382 call!360383)))

(declare-fun b!5150568 () Bool)

(assert (=> b!5150568 (= e!3210960 e!3210961)))

(assert (=> b!5150568 (= c!886622 ((_ is Union!14499) expr!117))))

(assert (= (and d!1664113 (not res!2191756)) b!5150562))

(assert (= (and b!5150562 c!886621) b!5150563))

(assert (= (and b!5150562 (not c!886621)) b!5150568))

(assert (= (and b!5150563 res!2191752) b!5150560))

(assert (= (and b!5150568 c!886622) b!5150566))

(assert (= (and b!5150568 (not c!886622)) b!5150561))

(assert (= (and b!5150566 res!2191753) b!5150565))

(assert (= (and b!5150561 (not res!2191755)) b!5150564))

(assert (= (and b!5150564 res!2191754) b!5150567))

(assert (= (or b!5150565 b!5150567) bm!360377))

(assert (= (or b!5150566 b!5150564) bm!360378))

(assert (= (or b!5150560 bm!360378) bm!360376))

(declare-fun m!6208316 () Bool)

(assert (=> bm!360376 m!6208316))

(declare-fun m!6208318 () Bool)

(assert (=> bm!360377 m!6208318))

(declare-fun m!6208320 () Bool)

(assert (=> b!5150563 m!6208320))

(assert (=> start!545018 d!1664113))

(declare-fun bs!1201529 () Bool)

(declare-fun d!1664115 () Bool)

(assert (= bs!1201529 (and d!1664115 d!1664079)))

(declare-fun lambda!257065 () Int)

(assert (=> bs!1201529 (not (= lambda!257065 lambda!257047))))

(declare-fun forall!13976 (List!59911 Int) Bool)

(assert (=> d!1664115 (= (inv!79428 ctx!100) (forall!13976 (exprs!4383 ctx!100) lambda!257065))))

(declare-fun bs!1201530 () Bool)

(assert (= bs!1201530 d!1664115))

(declare-fun m!6208322 () Bool)

(assert (=> bs!1201530 m!6208322))

(assert (=> start!545018 d!1664115))

(assert (=> b!5150314 d!1664079))

(declare-fun b!5150603 () Bool)

(declare-fun c!886642 () Bool)

(assert (=> b!5150603 (= c!886642 ((_ is Star!14499) (regTwo!29510 expr!117)))))

(declare-fun e!3210993 () Bool)

(declare-fun e!3210989 () Bool)

(assert (=> b!5150603 (= e!3210993 e!3210989)))

(declare-fun b!5150604 () Bool)

(declare-fun lt!2121392 () Int)

(assert (=> b!5150604 (= e!3210989 (= lt!2121392 1))))

(declare-fun b!5150605 () Bool)

(declare-fun e!3210988 () Bool)

(declare-fun call!360403 () Int)

(assert (=> b!5150605 (= e!3210988 (> lt!2121392 call!360403))))

(declare-fun b!5150606 () Bool)

(declare-fun e!3210994 () Int)

(declare-fun call!360401 () Int)

(assert (=> b!5150606 (= e!3210994 (+ 1 call!360401))))

(declare-fun b!5150607 () Bool)

(declare-fun e!3210991 () Int)

(assert (=> b!5150607 (= e!3210991 1)))

(declare-fun b!5150608 () Bool)

(declare-fun e!3210992 () Int)

(assert (=> b!5150608 (= e!3210992 1)))

(declare-fun bm!360393 () Bool)

(declare-fun call!360402 () Int)

(assert (=> bm!360393 (= call!360402 call!360403)))

(declare-fun b!5150609 () Bool)

(assert (=> b!5150609 (= e!3210991 e!3210994)))

(declare-fun c!886637 () Bool)

(assert (=> b!5150609 (= c!886637 ((_ is Star!14499) (regTwo!29510 expr!117)))))

(declare-fun b!5150610 () Bool)

(declare-fun e!3210987 () Bool)

(declare-fun call!360404 () Int)

(assert (=> b!5150610 (= e!3210987 (> lt!2121392 call!360404))))

(declare-fun c!886638 () Bool)

(declare-fun bm!360394 () Bool)

(assert (=> bm!360394 (= call!360401 (regexDepth!141 (ite c!886637 (reg!14828 (regTwo!29510 expr!117)) (ite c!886638 (regOne!29511 (regTwo!29510 expr!117)) (regTwo!29510 (regTwo!29510 expr!117))))))))

(declare-fun b!5150611 () Bool)

(declare-fun e!3210986 () Int)

(declare-fun call!360399 () Int)

(assert (=> b!5150611 (= e!3210986 (+ 1 call!360399))))

(declare-fun b!5150612 () Bool)

(assert (=> b!5150612 (= e!3210992 (+ 1 call!360399))))

(declare-fun bm!360396 () Bool)

(declare-fun call!360400 () Int)

(declare-fun call!360398 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!360396 (= call!360399 (maxBigInt!0 (ite c!886638 call!360400 call!360398) (ite c!886638 call!360398 call!360400)))))

(declare-fun b!5150613 () Bool)

(assert (=> b!5150613 (= e!3210989 (> lt!2121392 call!360402))))

(declare-fun bm!360397 () Bool)

(declare-fun c!886640 () Bool)

(declare-fun c!886643 () Bool)

(assert (=> bm!360397 (= call!360403 (regexDepth!141 (ite c!886640 (regTwo!29511 (regTwo!29510 expr!117)) (ite c!886643 (regOne!29510 (regTwo!29510 expr!117)) (reg!14828 (regTwo!29510 expr!117))))))))

(declare-fun b!5150614 () Bool)

(declare-fun e!3210990 () Bool)

(assert (=> b!5150614 (= e!3210990 e!3210988)))

(declare-fun res!2191765 () Bool)

(assert (=> b!5150614 (= res!2191765 (> lt!2121392 call!360404))))

(assert (=> b!5150614 (=> (not res!2191765) (not e!3210988))))

(declare-fun b!5150615 () Bool)

(declare-fun e!3210985 () Bool)

(assert (=> b!5150615 (= e!3210985 e!3210990)))

(assert (=> b!5150615 (= c!886640 ((_ is Union!14499) (regTwo!29510 expr!117)))))

(declare-fun b!5150616 () Bool)

(declare-fun res!2191764 () Bool)

(assert (=> b!5150616 (=> (not res!2191764) (not e!3210987))))

(assert (=> b!5150616 (= res!2191764 (> lt!2121392 call!360402))))

(assert (=> b!5150616 (= e!3210993 e!3210987)))

(declare-fun bm!360398 () Bool)

(assert (=> bm!360398 (= call!360398 (regexDepth!141 (ite c!886638 (regTwo!29511 (regTwo!29510 expr!117)) (regOne!29510 (regTwo!29510 expr!117)))))))

(declare-fun bm!360399 () Bool)

(assert (=> bm!360399 (= call!360400 call!360401)))

(declare-fun b!5150617 () Bool)

(assert (=> b!5150617 (= c!886638 ((_ is Union!14499) (regTwo!29510 expr!117)))))

(assert (=> b!5150617 (= e!3210994 e!3210986)))

(declare-fun b!5150618 () Bool)

(assert (=> b!5150618 (= e!3210990 e!3210993)))

(assert (=> b!5150618 (= c!886643 ((_ is Concat!23344) (regTwo!29510 expr!117)))))

(declare-fun b!5150619 () Bool)

(assert (=> b!5150619 (= e!3210986 e!3210992)))

(declare-fun c!886639 () Bool)

(assert (=> b!5150619 (= c!886639 ((_ is Concat!23344) (regTwo!29510 expr!117)))))

(declare-fun bm!360395 () Bool)

(assert (=> bm!360395 (= call!360404 (regexDepth!141 (ite c!886640 (regOne!29511 (regTwo!29510 expr!117)) (regTwo!29510 (regTwo!29510 expr!117)))))))

(declare-fun d!1664117 () Bool)

(assert (=> d!1664117 e!3210985))

(declare-fun res!2191763 () Bool)

(assert (=> d!1664117 (=> (not res!2191763) (not e!3210985))))

(assert (=> d!1664117 (= res!2191763 (> lt!2121392 0))))

(assert (=> d!1664117 (= lt!2121392 e!3210991)))

(declare-fun c!886641 () Bool)

(assert (=> d!1664117 (= c!886641 ((_ is ElementMatch!14499) (regTwo!29510 expr!117)))))

(assert (=> d!1664117 (= (regexDepth!141 (regTwo!29510 expr!117)) lt!2121392)))

(assert (= (and d!1664117 c!886641) b!5150607))

(assert (= (and d!1664117 (not c!886641)) b!5150609))

(assert (= (and b!5150609 c!886637) b!5150606))

(assert (= (and b!5150609 (not c!886637)) b!5150617))

(assert (= (and b!5150617 c!886638) b!5150611))

(assert (= (and b!5150617 (not c!886638)) b!5150619))

(assert (= (and b!5150619 c!886639) b!5150612))

(assert (= (and b!5150619 (not c!886639)) b!5150608))

(assert (= (or b!5150611 b!5150612) bm!360398))

(assert (= (or b!5150611 b!5150612) bm!360399))

(assert (= (or b!5150611 b!5150612) bm!360396))

(assert (= (or b!5150606 bm!360399) bm!360394))

(assert (= (and d!1664117 res!2191763) b!5150615))

(assert (= (and b!5150615 c!886640) b!5150614))

(assert (= (and b!5150615 (not c!886640)) b!5150618))

(assert (= (and b!5150614 res!2191765) b!5150605))

(assert (= (and b!5150618 c!886643) b!5150616))

(assert (= (and b!5150618 (not c!886643)) b!5150603))

(assert (= (and b!5150616 res!2191764) b!5150610))

(assert (= (and b!5150603 c!886642) b!5150613))

(assert (= (and b!5150603 (not c!886642)) b!5150604))

(assert (= (or b!5150616 b!5150613) bm!360393))

(assert (= (or b!5150605 bm!360393) bm!360397))

(assert (= (or b!5150614 b!5150610) bm!360395))

(declare-fun m!6208324 () Bool)

(assert (=> bm!360396 m!6208324))

(declare-fun m!6208326 () Bool)

(assert (=> bm!360394 m!6208326))

(declare-fun m!6208328 () Bool)

(assert (=> bm!360395 m!6208328))

(declare-fun m!6208330 () Bool)

(assert (=> bm!360398 m!6208330))

(declare-fun m!6208332 () Bool)

(assert (=> bm!360397 m!6208332))

(assert (=> b!5150309 d!1664117))

(declare-fun b!5150620 () Bool)

(declare-fun c!886649 () Bool)

(assert (=> b!5150620 (= c!886649 ((_ is Star!14499) expr!117))))

(declare-fun e!3211003 () Bool)

(declare-fun e!3210999 () Bool)

(assert (=> b!5150620 (= e!3211003 e!3210999)))

(declare-fun b!5150621 () Bool)

(declare-fun lt!2121393 () Int)

(assert (=> b!5150621 (= e!3210999 (= lt!2121393 1))))

(declare-fun b!5150622 () Bool)

(declare-fun e!3210998 () Bool)

(declare-fun call!360410 () Int)

(assert (=> b!5150622 (= e!3210998 (> lt!2121393 call!360410))))

(declare-fun b!5150623 () Bool)

(declare-fun e!3211004 () Int)

(declare-fun call!360408 () Int)

(assert (=> b!5150623 (= e!3211004 (+ 1 call!360408))))

(declare-fun b!5150624 () Bool)

(declare-fun e!3211001 () Int)

(assert (=> b!5150624 (= e!3211001 1)))

(declare-fun b!5150625 () Bool)

(declare-fun e!3211002 () Int)

(assert (=> b!5150625 (= e!3211002 1)))

(declare-fun bm!360400 () Bool)

(declare-fun call!360409 () Int)

(assert (=> bm!360400 (= call!360409 call!360410)))

(declare-fun b!5150626 () Bool)

(assert (=> b!5150626 (= e!3211001 e!3211004)))

(declare-fun c!886644 () Bool)

(assert (=> b!5150626 (= c!886644 ((_ is Star!14499) expr!117))))

(declare-fun b!5150627 () Bool)

(declare-fun e!3210997 () Bool)

(declare-fun call!360411 () Int)

(assert (=> b!5150627 (= e!3210997 (> lt!2121393 call!360411))))

(declare-fun bm!360401 () Bool)

(declare-fun c!886645 () Bool)

(assert (=> bm!360401 (= call!360408 (regexDepth!141 (ite c!886644 (reg!14828 expr!117) (ite c!886645 (regOne!29511 expr!117) (regTwo!29510 expr!117)))))))

(declare-fun b!5150628 () Bool)

(declare-fun e!3210996 () Int)

(declare-fun call!360406 () Int)

(assert (=> b!5150628 (= e!3210996 (+ 1 call!360406))))

(declare-fun b!5150629 () Bool)

(assert (=> b!5150629 (= e!3211002 (+ 1 call!360406))))

(declare-fun bm!360403 () Bool)

(declare-fun call!360405 () Int)

(declare-fun call!360407 () Int)

(assert (=> bm!360403 (= call!360406 (maxBigInt!0 (ite c!886645 call!360407 call!360405) (ite c!886645 call!360405 call!360407)))))

(declare-fun b!5150630 () Bool)

(assert (=> b!5150630 (= e!3210999 (> lt!2121393 call!360409))))

(declare-fun c!886647 () Bool)

(declare-fun c!886650 () Bool)

(declare-fun bm!360404 () Bool)

(assert (=> bm!360404 (= call!360410 (regexDepth!141 (ite c!886647 (regTwo!29511 expr!117) (ite c!886650 (regOne!29510 expr!117) (reg!14828 expr!117)))))))

(declare-fun b!5150631 () Bool)

(declare-fun e!3211000 () Bool)

(assert (=> b!5150631 (= e!3211000 e!3210998)))

(declare-fun res!2191768 () Bool)

(assert (=> b!5150631 (= res!2191768 (> lt!2121393 call!360411))))

(assert (=> b!5150631 (=> (not res!2191768) (not e!3210998))))

(declare-fun b!5150632 () Bool)

(declare-fun e!3210995 () Bool)

(assert (=> b!5150632 (= e!3210995 e!3211000)))

(assert (=> b!5150632 (= c!886647 ((_ is Union!14499) expr!117))))

(declare-fun b!5150633 () Bool)

(declare-fun res!2191767 () Bool)

(assert (=> b!5150633 (=> (not res!2191767) (not e!3210997))))

(assert (=> b!5150633 (= res!2191767 (> lt!2121393 call!360409))))

(assert (=> b!5150633 (= e!3211003 e!3210997)))

(declare-fun bm!360405 () Bool)

(assert (=> bm!360405 (= call!360405 (regexDepth!141 (ite c!886645 (regTwo!29511 expr!117) (regOne!29510 expr!117))))))

(declare-fun bm!360406 () Bool)

(assert (=> bm!360406 (= call!360407 call!360408)))

(declare-fun b!5150634 () Bool)

(assert (=> b!5150634 (= c!886645 ((_ is Union!14499) expr!117))))

(assert (=> b!5150634 (= e!3211004 e!3210996)))

(declare-fun b!5150635 () Bool)

(assert (=> b!5150635 (= e!3211000 e!3211003)))

(assert (=> b!5150635 (= c!886650 ((_ is Concat!23344) expr!117))))

(declare-fun b!5150636 () Bool)

(assert (=> b!5150636 (= e!3210996 e!3211002)))

(declare-fun c!886646 () Bool)

(assert (=> b!5150636 (= c!886646 ((_ is Concat!23344) expr!117))))

(declare-fun bm!360402 () Bool)

(assert (=> bm!360402 (= call!360411 (regexDepth!141 (ite c!886647 (regOne!29511 expr!117) (regTwo!29510 expr!117))))))

(declare-fun d!1664119 () Bool)

(assert (=> d!1664119 e!3210995))

(declare-fun res!2191766 () Bool)

(assert (=> d!1664119 (=> (not res!2191766) (not e!3210995))))

(assert (=> d!1664119 (= res!2191766 (> lt!2121393 0))))

(assert (=> d!1664119 (= lt!2121393 e!3211001)))

(declare-fun c!886648 () Bool)

(assert (=> d!1664119 (= c!886648 ((_ is ElementMatch!14499) expr!117))))

(assert (=> d!1664119 (= (regexDepth!141 expr!117) lt!2121393)))

(assert (= (and d!1664119 c!886648) b!5150624))

(assert (= (and d!1664119 (not c!886648)) b!5150626))

(assert (= (and b!5150626 c!886644) b!5150623))

(assert (= (and b!5150626 (not c!886644)) b!5150634))

(assert (= (and b!5150634 c!886645) b!5150628))

(assert (= (and b!5150634 (not c!886645)) b!5150636))

(assert (= (and b!5150636 c!886646) b!5150629))

(assert (= (and b!5150636 (not c!886646)) b!5150625))

(assert (= (or b!5150628 b!5150629) bm!360405))

(assert (= (or b!5150628 b!5150629) bm!360406))

(assert (= (or b!5150628 b!5150629) bm!360403))

(assert (= (or b!5150623 bm!360406) bm!360401))

(assert (= (and d!1664119 res!2191766) b!5150632))

(assert (= (and b!5150632 c!886647) b!5150631))

(assert (= (and b!5150632 (not c!886647)) b!5150635))

(assert (= (and b!5150631 res!2191768) b!5150622))

(assert (= (and b!5150635 c!886650) b!5150633))

(assert (= (and b!5150635 (not c!886650)) b!5150620))

(assert (= (and b!5150633 res!2191767) b!5150627))

(assert (= (and b!5150620 c!886649) b!5150630))

(assert (= (and b!5150620 (not c!886649)) b!5150621))

(assert (= (or b!5150633 b!5150630) bm!360400))

(assert (= (or b!5150622 bm!360400) bm!360404))

(assert (= (or b!5150631 b!5150627) bm!360402))

(declare-fun m!6208334 () Bool)

(assert (=> bm!360403 m!6208334))

(declare-fun m!6208336 () Bool)

(assert (=> bm!360401 m!6208336))

(declare-fun m!6208338 () Bool)

(assert (=> bm!360402 m!6208338))

(declare-fun m!6208340 () Bool)

(assert (=> bm!360405 m!6208340))

(declare-fun m!6208342 () Bool)

(assert (=> bm!360404 m!6208342))

(assert (=> b!5150309 d!1664119))

(declare-fun b!5150649 () Bool)

(declare-fun e!3211007 () Bool)

(declare-fun tp!1440230 () Bool)

(assert (=> b!5150649 (= e!3211007 tp!1440230)))

(declare-fun b!5150650 () Bool)

(declare-fun tp!1440229 () Bool)

(declare-fun tp!1440232 () Bool)

(assert (=> b!5150650 (= e!3211007 (and tp!1440229 tp!1440232))))

(declare-fun b!5150648 () Bool)

(declare-fun tp!1440233 () Bool)

(declare-fun tp!1440231 () Bool)

(assert (=> b!5150648 (= e!3211007 (and tp!1440233 tp!1440231))))

(assert (=> b!5150311 (= tp!1440173 e!3211007)))

(declare-fun b!5150647 () Bool)

(assert (=> b!5150647 (= e!3211007 tp_is_empty!38147)))

(assert (= (and b!5150311 ((_ is ElementMatch!14499) (reg!14828 expr!117))) b!5150647))

(assert (= (and b!5150311 ((_ is Concat!23344) (reg!14828 expr!117))) b!5150648))

(assert (= (and b!5150311 ((_ is Star!14499) (reg!14828 expr!117))) b!5150649))

(assert (= (and b!5150311 ((_ is Union!14499) (reg!14828 expr!117))) b!5150650))

(declare-fun b!5150653 () Bool)

(declare-fun e!3211008 () Bool)

(declare-fun tp!1440235 () Bool)

(assert (=> b!5150653 (= e!3211008 tp!1440235)))

(declare-fun b!5150654 () Bool)

(declare-fun tp!1440234 () Bool)

(declare-fun tp!1440237 () Bool)

(assert (=> b!5150654 (= e!3211008 (and tp!1440234 tp!1440237))))

(declare-fun b!5150652 () Bool)

(declare-fun tp!1440238 () Bool)

(declare-fun tp!1440236 () Bool)

(assert (=> b!5150652 (= e!3211008 (and tp!1440238 tp!1440236))))

(assert (=> b!5150313 (= tp!1440175 e!3211008)))

(declare-fun b!5150651 () Bool)

(assert (=> b!5150651 (= e!3211008 tp_is_empty!38147)))

(assert (= (and b!5150313 ((_ is ElementMatch!14499) (regOne!29510 expr!117))) b!5150651))

(assert (= (and b!5150313 ((_ is Concat!23344) (regOne!29510 expr!117))) b!5150652))

(assert (= (and b!5150313 ((_ is Star!14499) (regOne!29510 expr!117))) b!5150653))

(assert (= (and b!5150313 ((_ is Union!14499) (regOne!29510 expr!117))) b!5150654))

(declare-fun b!5150657 () Bool)

(declare-fun e!3211009 () Bool)

(declare-fun tp!1440240 () Bool)

(assert (=> b!5150657 (= e!3211009 tp!1440240)))

(declare-fun b!5150658 () Bool)

(declare-fun tp!1440239 () Bool)

(declare-fun tp!1440242 () Bool)

(assert (=> b!5150658 (= e!3211009 (and tp!1440239 tp!1440242))))

(declare-fun b!5150656 () Bool)

(declare-fun tp!1440243 () Bool)

(declare-fun tp!1440241 () Bool)

(assert (=> b!5150656 (= e!3211009 (and tp!1440243 tp!1440241))))

(assert (=> b!5150313 (= tp!1440172 e!3211009)))

(declare-fun b!5150655 () Bool)

(assert (=> b!5150655 (= e!3211009 tp_is_empty!38147)))

(assert (= (and b!5150313 ((_ is ElementMatch!14499) (regTwo!29510 expr!117))) b!5150655))

(assert (= (and b!5150313 ((_ is Concat!23344) (regTwo!29510 expr!117))) b!5150656))

(assert (= (and b!5150313 ((_ is Star!14499) (regTwo!29510 expr!117))) b!5150657))

(assert (= (and b!5150313 ((_ is Union!14499) (regTwo!29510 expr!117))) b!5150658))

(declare-fun b!5150661 () Bool)

(declare-fun e!3211010 () Bool)

(declare-fun tp!1440245 () Bool)

(assert (=> b!5150661 (= e!3211010 tp!1440245)))

(declare-fun b!5150662 () Bool)

(declare-fun tp!1440244 () Bool)

(declare-fun tp!1440247 () Bool)

(assert (=> b!5150662 (= e!3211010 (and tp!1440244 tp!1440247))))

(declare-fun b!5150660 () Bool)

(declare-fun tp!1440248 () Bool)

(declare-fun tp!1440246 () Bool)

(assert (=> b!5150660 (= e!3211010 (and tp!1440248 tp!1440246))))

(assert (=> b!5150304 (= tp!1440174 e!3211010)))

(declare-fun b!5150659 () Bool)

(assert (=> b!5150659 (= e!3211010 tp_is_empty!38147)))

(assert (= (and b!5150304 ((_ is ElementMatch!14499) (regOne!29511 expr!117))) b!5150659))

(assert (= (and b!5150304 ((_ is Concat!23344) (regOne!29511 expr!117))) b!5150660))

(assert (= (and b!5150304 ((_ is Star!14499) (regOne!29511 expr!117))) b!5150661))

(assert (= (and b!5150304 ((_ is Union!14499) (regOne!29511 expr!117))) b!5150662))

(declare-fun b!5150665 () Bool)

(declare-fun e!3211011 () Bool)

(declare-fun tp!1440250 () Bool)

(assert (=> b!5150665 (= e!3211011 tp!1440250)))

(declare-fun b!5150666 () Bool)

(declare-fun tp!1440249 () Bool)

(declare-fun tp!1440252 () Bool)

(assert (=> b!5150666 (= e!3211011 (and tp!1440249 tp!1440252))))

(declare-fun b!5150664 () Bool)

(declare-fun tp!1440253 () Bool)

(declare-fun tp!1440251 () Bool)

(assert (=> b!5150664 (= e!3211011 (and tp!1440253 tp!1440251))))

(assert (=> b!5150304 (= tp!1440176 e!3211011)))

(declare-fun b!5150663 () Bool)

(assert (=> b!5150663 (= e!3211011 tp_is_empty!38147)))

(assert (= (and b!5150304 ((_ is ElementMatch!14499) (regTwo!29511 expr!117))) b!5150663))

(assert (= (and b!5150304 ((_ is Concat!23344) (regTwo!29511 expr!117))) b!5150664))

(assert (= (and b!5150304 ((_ is Star!14499) (regTwo!29511 expr!117))) b!5150665))

(assert (= (and b!5150304 ((_ is Union!14499) (regTwo!29511 expr!117))) b!5150666))

(declare-fun b!5150671 () Bool)

(declare-fun e!3211014 () Bool)

(declare-fun tp!1440258 () Bool)

(declare-fun tp!1440259 () Bool)

(assert (=> b!5150671 (= e!3211014 (and tp!1440258 tp!1440259))))

(assert (=> b!5150315 (= tp!1440177 e!3211014)))

(assert (= (and b!5150315 ((_ is Cons!59787) (exprs!4383 ctx!100))) b!5150671))

(check-sat (not b!5150656) (not b!5150558) (not bm!360396) (not b!5150664) (not b!5150657) (not d!1664111) (not b!5150654) (not bm!360394) (not d!1664109) (not bm!360405) (not bm!360398) (not bm!360369) (not b!5150551) (not bm!360404) (not d!1664105) (not d!1664067) (not d!1664071) (not b!5150649) (not bm!360402) (not d!1664079) (not bm!360376) (not bm!360365) (not bm!360401) (not d!1664075) (not b!5150364) (not bm!360397) (not b!5150660) tp_is_empty!38147 (not bm!360295) (not b!5150665) (not bm!360377) (not d!1664103) (not d!1664115) (not bm!360395) (not b!5150563) (not bm!360375) (not b!5150650) (not bm!360374) (not bm!360403) (not b!5150648) (not bm!360367) (not b!5150559) (not b!5150671) (not b!5150662) (not b!5150658) (not b!5150661) (not b!5150666) (not b!5150652) (not bm!360294) (not b!5150653))
(check-sat)
