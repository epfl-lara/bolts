; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!545066 () Bool)

(assert start!545066)

(declare-fun b!5150727 () Bool)

(declare-fun e!3211040 () Bool)

(declare-fun e!3211041 () Bool)

(assert (=> b!5150727 (= e!3211040 (not e!3211041))))

(declare-fun res!2191804 () Bool)

(assert (=> b!5150727 (=> res!2191804 e!3211041)))

(declare-datatypes ((C!29268 0))(
  ( (C!29269 (val!24286 Int)) )
))
(declare-datatypes ((Regex!14501 0))(
  ( (ElementMatch!14501 (c!886652 C!29268)) (Concat!23346 (regOne!29514 Regex!14501) (regTwo!29514 Regex!14501)) (EmptyExpr!14501) (Star!14501 (reg!14830 Regex!14501)) (EmptyLang!14501) (Union!14501 (regOne!29515 Regex!14501) (regTwo!29515 Regex!14501)) )
))
(declare-fun expr!117 () Regex!14501)

(declare-fun validRegex!6356 (Regex!14501) Bool)

(assert (=> b!5150727 (= res!2191804 (not (validRegex!6356 (regTwo!29514 expr!117))))))

(declare-fun lostCause!1554 (Regex!14501) Bool)

(assert (=> b!5150727 (not (lostCause!1554 (regOne!29514 expr!117)))))

(declare-datatypes ((Unit!151213 0))(
  ( (Unit!151214) )
))
(declare-fun lt!2121414 () Unit!151213)

(declare-fun lemmaNullableThenNotLostCause!90 (Regex!14501) Unit!151213)

(assert (=> b!5150727 (= lt!2121414 (lemmaNullableThenNotLostCause!90 (regOne!29514 expr!117)))))

(declare-fun b!5150728 () Bool)

(declare-datatypes ((List!59917 0))(
  ( (Nil!59793) (Cons!59793 (h!66241 Regex!14501) (t!372964 List!59917)) )
))
(declare-datatypes ((Context!7770 0))(
  ( (Context!7771 (exprs!4385 List!59917)) )
))
(declare-fun lt!2121416 () Context!7770)

(declare-fun inv!79433 (Context!7770) Bool)

(assert (=> b!5150728 (= e!3211041 (inv!79433 lt!2121416))))

(declare-fun ctx!100 () Context!7770)

(declare-fun a!1296 () C!29268)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1287 ((InoxSet Context!7770)) Bool)

(declare-fun derivationStepZipperDown!168 (Regex!14501 Context!7770 C!29268) (InoxSet Context!7770))

(assert (=> b!5150728 (lostCauseZipper!1287 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296))))

(declare-fun lt!2121415 () Unit!151213)

(declare-fun lemmaLostCauseFixPointDerivDown!58 (Regex!14501 Context!7770 C!29268) Unit!151213)

(assert (=> b!5150728 (= lt!2121415 (lemmaLostCauseFixPointDerivDown!58 (regTwo!29514 expr!117) ctx!100 a!1296))))

(assert (=> b!5150728 (lostCauseZipper!1287 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296))))

(declare-fun lt!2121417 () Unit!151213)

(assert (=> b!5150728 (= lt!2121417 (lemmaLostCauseFixPointDerivDown!58 (regOne!29514 expr!117) lt!2121416 a!1296))))

(declare-fun $colon$colon!1223 (List!59917 Regex!14501) List!59917)

(assert (=> b!5150728 (= lt!2121416 (Context!7771 ($colon$colon!1223 (exprs!4385 ctx!100) (regTwo!29514 expr!117))))))

(declare-fun b!5150729 () Bool)

(declare-fun res!2191799 () Bool)

(assert (=> b!5150729 (=> (not res!2191799) (not e!3211040))))

(declare-fun nullable!4857 (Regex!14501) Bool)

(assert (=> b!5150729 (= res!2191799 (nullable!4857 (regOne!29514 expr!117)))))

(declare-fun res!2191802 () Bool)

(assert (=> start!545066 (=> (not res!2191802) (not e!3211040))))

(assert (=> start!545066 (= res!2191802 (validRegex!6356 expr!117))))

(assert (=> start!545066 e!3211040))

(declare-fun e!3211044 () Bool)

(assert (=> start!545066 e!3211044))

(declare-fun e!3211042 () Bool)

(assert (=> start!545066 (and (inv!79433 ctx!100) e!3211042)))

(declare-fun tp_is_empty!38151 () Bool)

(assert (=> start!545066 tp_is_empty!38151))

(declare-fun b!5150730 () Bool)

(declare-fun tp!1440292 () Bool)

(declare-fun tp!1440294 () Bool)

(assert (=> b!5150730 (= e!3211044 (and tp!1440292 tp!1440294))))

(declare-fun b!5150731 () Bool)

(declare-fun tp!1440291 () Bool)

(assert (=> b!5150731 (= e!3211042 tp!1440291)))

(declare-fun b!5150732 () Bool)

(declare-fun res!2191803 () Bool)

(assert (=> b!5150732 (=> (not res!2191803) (not e!3211040))))

(declare-fun e!3211043 () Bool)

(assert (=> b!5150732 (= res!2191803 e!3211043)))

(declare-fun res!2191801 () Bool)

(assert (=> b!5150732 (=> res!2191801 e!3211043)))

(assert (=> b!5150732 (= res!2191801 (lostCause!1554 expr!117))))

(declare-fun b!5150733 () Bool)

(assert (=> b!5150733 (= e!3211044 tp_is_empty!38151)))

(declare-fun b!5150734 () Bool)

(declare-fun tp!1440290 () Bool)

(declare-fun tp!1440293 () Bool)

(assert (=> b!5150734 (= e!3211044 (and tp!1440290 tp!1440293))))

(declare-fun b!5150735 () Bool)

(declare-fun tp!1440295 () Bool)

(assert (=> b!5150735 (= e!3211044 tp!1440295)))

(declare-fun b!5150736 () Bool)

(declare-fun res!2191800 () Bool)

(assert (=> b!5150736 (=> (not res!2191800) (not e!3211040))))

(get-info :version)

(assert (=> b!5150736 (= res!2191800 (and (or (not ((_ is ElementMatch!14501) expr!117)) (not (= (c!886652 expr!117) a!1296))) (not ((_ is Union!14501) expr!117)) ((_ is Concat!23346) expr!117)))))

(declare-fun b!5150737 () Bool)

(declare-fun lostCause!1555 (Context!7770) Bool)

(assert (=> b!5150737 (= e!3211043 (lostCause!1555 ctx!100))))

(assert (= (and start!545066 res!2191802) b!5150732))

(assert (= (and b!5150732 (not res!2191801)) b!5150737))

(assert (= (and b!5150732 res!2191803) b!5150736))

(assert (= (and b!5150736 res!2191800) b!5150729))

(assert (= (and b!5150729 res!2191799) b!5150727))

(assert (= (and b!5150727 (not res!2191804)) b!5150728))

(assert (= (and start!545066 ((_ is ElementMatch!14501) expr!117)) b!5150733))

(assert (= (and start!545066 ((_ is Concat!23346) expr!117)) b!5150730))

(assert (= (and start!545066 ((_ is Star!14501) expr!117)) b!5150735))

(assert (= (and start!545066 ((_ is Union!14501) expr!117)) b!5150734))

(assert (= start!545066 b!5150731))

(declare-fun m!6208376 () Bool)

(assert (=> b!5150732 m!6208376))

(declare-fun m!6208378 () Bool)

(assert (=> b!5150729 m!6208378))

(declare-fun m!6208380 () Bool)

(assert (=> b!5150727 m!6208380))

(declare-fun m!6208382 () Bool)

(assert (=> b!5150727 m!6208382))

(declare-fun m!6208384 () Bool)

(assert (=> b!5150727 m!6208384))

(declare-fun m!6208386 () Bool)

(assert (=> b!5150728 m!6208386))

(declare-fun m!6208388 () Bool)

(assert (=> b!5150728 m!6208388))

(declare-fun m!6208390 () Bool)

(assert (=> b!5150728 m!6208390))

(declare-fun m!6208392 () Bool)

(assert (=> b!5150728 m!6208392))

(declare-fun m!6208394 () Bool)

(assert (=> b!5150728 m!6208394))

(assert (=> b!5150728 m!6208394))

(declare-fun m!6208396 () Bool)

(assert (=> b!5150728 m!6208396))

(declare-fun m!6208398 () Bool)

(assert (=> b!5150728 m!6208398))

(declare-fun m!6208400 () Bool)

(assert (=> b!5150728 m!6208400))

(assert (=> b!5150728 m!6208398))

(declare-fun m!6208402 () Bool)

(assert (=> b!5150737 m!6208402))

(declare-fun m!6208404 () Bool)

(assert (=> start!545066 m!6208404))

(declare-fun m!6208406 () Bool)

(assert (=> start!545066 m!6208406))

(check-sat (not b!5150728) (not b!5150732) (not b!5150730) (not b!5150734) (not b!5150731) tp_is_empty!38151 (not b!5150735) (not b!5150727) (not b!5150737) (not start!545066) (not b!5150729))
(check-sat)
(get-model)

(declare-fun d!1664124 () Bool)

(declare-fun nullableFct!1335 (Regex!14501) Bool)

(assert (=> d!1664124 (= (nullable!4857 (regOne!29514 expr!117)) (nullableFct!1335 (regOne!29514 expr!117)))))

(declare-fun bs!1201533 () Bool)

(assert (= bs!1201533 d!1664124))

(declare-fun m!6208408 () Bool)

(assert (=> bs!1201533 m!6208408))

(assert (=> b!5150729 d!1664124))

(declare-fun d!1664126 () Bool)

(declare-fun res!2191818 () Bool)

(declare-fun e!3211062 () Bool)

(assert (=> d!1664126 (=> res!2191818 e!3211062)))

(assert (=> d!1664126 (= res!2191818 ((_ is ElementMatch!14501) expr!117))))

(assert (=> d!1664126 (= (validRegex!6356 expr!117) e!3211062)))

(declare-fun b!5150756 () Bool)

(declare-fun res!2191819 () Bool)

(declare-fun e!3211060 () Bool)

(assert (=> b!5150756 (=> (not res!2191819) (not e!3211060))))

(declare-fun call!360418 () Bool)

(assert (=> b!5150756 (= res!2191819 call!360418)))

(declare-fun e!3211061 () Bool)

(assert (=> b!5150756 (= e!3211061 e!3211060)))

(declare-fun b!5150757 () Bool)

(declare-fun e!3211064 () Bool)

(declare-fun call!360419 () Bool)

(assert (=> b!5150757 (= e!3211064 call!360419)))

(declare-fun b!5150758 () Bool)

(declare-fun call!360420 () Bool)

(assert (=> b!5150758 (= e!3211060 call!360420)))

(declare-fun c!886658 () Bool)

(declare-fun bm!360413 () Bool)

(declare-fun c!886657 () Bool)

(assert (=> bm!360413 (= call!360419 (validRegex!6356 (ite c!886658 (reg!14830 expr!117) (ite c!886657 (regOne!29515 expr!117) (regOne!29514 expr!117)))))))

(declare-fun b!5150759 () Bool)

(declare-fun e!3211063 () Bool)

(assert (=> b!5150759 (= e!3211063 call!360420)))

(declare-fun b!5150760 () Bool)

(declare-fun e!3211065 () Bool)

(assert (=> b!5150760 (= e!3211065 e!3211064)))

(declare-fun res!2191816 () Bool)

(assert (=> b!5150760 (= res!2191816 (not (nullable!4857 (reg!14830 expr!117))))))

(assert (=> b!5150760 (=> (not res!2191816) (not e!3211064))))

(declare-fun b!5150761 () Bool)

(assert (=> b!5150761 (= e!3211065 e!3211061)))

(assert (=> b!5150761 (= c!886657 ((_ is Union!14501) expr!117))))

(declare-fun bm!360414 () Bool)

(assert (=> bm!360414 (= call!360418 call!360419)))

(declare-fun b!5150762 () Bool)

(declare-fun e!3211059 () Bool)

(assert (=> b!5150762 (= e!3211059 e!3211063)))

(declare-fun res!2191817 () Bool)

(assert (=> b!5150762 (=> (not res!2191817) (not e!3211063))))

(assert (=> b!5150762 (= res!2191817 call!360418)))

(declare-fun bm!360415 () Bool)

(assert (=> bm!360415 (= call!360420 (validRegex!6356 (ite c!886657 (regTwo!29515 expr!117) (regTwo!29514 expr!117))))))

(declare-fun b!5150763 () Bool)

(assert (=> b!5150763 (= e!3211062 e!3211065)))

(assert (=> b!5150763 (= c!886658 ((_ is Star!14501) expr!117))))

(declare-fun b!5150764 () Bool)

(declare-fun res!2191815 () Bool)

(assert (=> b!5150764 (=> res!2191815 e!3211059)))

(assert (=> b!5150764 (= res!2191815 (not ((_ is Concat!23346) expr!117)))))

(assert (=> b!5150764 (= e!3211061 e!3211059)))

(assert (= (and d!1664126 (not res!2191818)) b!5150763))

(assert (= (and b!5150763 c!886658) b!5150760))

(assert (= (and b!5150763 (not c!886658)) b!5150761))

(assert (= (and b!5150760 res!2191816) b!5150757))

(assert (= (and b!5150761 c!886657) b!5150756))

(assert (= (and b!5150761 (not c!886657)) b!5150764))

(assert (= (and b!5150756 res!2191819) b!5150758))

(assert (= (and b!5150764 (not res!2191815)) b!5150762))

(assert (= (and b!5150762 res!2191817) b!5150759))

(assert (= (or b!5150758 b!5150759) bm!360415))

(assert (= (or b!5150756 b!5150762) bm!360414))

(assert (= (or b!5150757 bm!360414) bm!360413))

(declare-fun m!6208410 () Bool)

(assert (=> bm!360413 m!6208410))

(declare-fun m!6208412 () Bool)

(assert (=> b!5150760 m!6208412))

(declare-fun m!6208414 () Bool)

(assert (=> bm!360415 m!6208414))

(assert (=> start!545066 d!1664126))

(declare-fun d!1664128 () Bool)

(declare-fun lambda!257093 () Int)

(declare-fun forall!13979 (List!59917 Int) Bool)

(assert (=> d!1664128 (= (inv!79433 ctx!100) (forall!13979 (exprs!4385 ctx!100) lambda!257093))))

(declare-fun bs!1201561 () Bool)

(assert (= bs!1201561 d!1664128))

(declare-fun m!6208496 () Bool)

(assert (=> bs!1201561 m!6208496))

(assert (=> start!545066 d!1664128))

(declare-fun bs!1201562 () Bool)

(declare-fun d!1664160 () Bool)

(assert (= bs!1201562 (and d!1664160 d!1664128)))

(declare-fun lambda!257096 () Int)

(assert (=> bs!1201562 (not (= lambda!257096 lambda!257093))))

(declare-fun exists!1835 (List!59917 Int) Bool)

(assert (=> d!1664160 (= (lostCause!1555 ctx!100) (exists!1835 (exprs!4385 ctx!100) lambda!257096))))

(declare-fun bs!1201563 () Bool)

(assert (= bs!1201563 d!1664160))

(declare-fun m!6208498 () Bool)

(assert (=> bs!1201563 m!6208498))

(assert (=> b!5150737 d!1664160))

(declare-fun d!1664162 () Bool)

(declare-fun lostCauseFct!377 (Regex!14501) Bool)

(assert (=> d!1664162 (= (lostCause!1554 expr!117) (lostCauseFct!377 expr!117))))

(declare-fun bs!1201564 () Bool)

(assert (= bs!1201564 d!1664162))

(declare-fun m!6208500 () Bool)

(assert (=> bs!1201564 m!6208500))

(assert (=> b!5150732 d!1664162))

(declare-fun d!1664164 () Bool)

(declare-fun res!2191847 () Bool)

(declare-fun e!3211139 () Bool)

(assert (=> d!1664164 (=> res!2191847 e!3211139)))

(assert (=> d!1664164 (= res!2191847 ((_ is ElementMatch!14501) (regTwo!29514 expr!117)))))

(assert (=> d!1664164 (= (validRegex!6356 (regTwo!29514 expr!117)) e!3211139)))

(declare-fun b!5150888 () Bool)

(declare-fun res!2191848 () Bool)

(declare-fun e!3211137 () Bool)

(assert (=> b!5150888 (=> (not res!2191848) (not e!3211137))))

(declare-fun call!360465 () Bool)

(assert (=> b!5150888 (= res!2191848 call!360465)))

(declare-fun e!3211138 () Bool)

(assert (=> b!5150888 (= e!3211138 e!3211137)))

(declare-fun b!5150889 () Bool)

(declare-fun e!3211141 () Bool)

(declare-fun call!360466 () Bool)

(assert (=> b!5150889 (= e!3211141 call!360466)))

(declare-fun b!5150890 () Bool)

(declare-fun call!360467 () Bool)

(assert (=> b!5150890 (= e!3211137 call!360467)))

(declare-fun bm!360460 () Bool)

(declare-fun c!886699 () Bool)

(declare-fun c!886700 () Bool)

(assert (=> bm!360460 (= call!360466 (validRegex!6356 (ite c!886700 (reg!14830 (regTwo!29514 expr!117)) (ite c!886699 (regOne!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))))))))

(declare-fun b!5150891 () Bool)

(declare-fun e!3211140 () Bool)

(assert (=> b!5150891 (= e!3211140 call!360467)))

(declare-fun b!5150892 () Bool)

(declare-fun e!3211142 () Bool)

(assert (=> b!5150892 (= e!3211142 e!3211141)))

(declare-fun res!2191845 () Bool)

(assert (=> b!5150892 (= res!2191845 (not (nullable!4857 (reg!14830 (regTwo!29514 expr!117)))))))

(assert (=> b!5150892 (=> (not res!2191845) (not e!3211141))))

(declare-fun b!5150893 () Bool)

(assert (=> b!5150893 (= e!3211142 e!3211138)))

(assert (=> b!5150893 (= c!886699 ((_ is Union!14501) (regTwo!29514 expr!117)))))

(declare-fun bm!360461 () Bool)

(assert (=> bm!360461 (= call!360465 call!360466)))

(declare-fun b!5150894 () Bool)

(declare-fun e!3211136 () Bool)

(assert (=> b!5150894 (= e!3211136 e!3211140)))

(declare-fun res!2191846 () Bool)

(assert (=> b!5150894 (=> (not res!2191846) (not e!3211140))))

(assert (=> b!5150894 (= res!2191846 call!360465)))

(declare-fun bm!360462 () Bool)

(assert (=> bm!360462 (= call!360467 (validRegex!6356 (ite c!886699 (regTwo!29515 (regTwo!29514 expr!117)) (regTwo!29514 (regTwo!29514 expr!117)))))))

(declare-fun b!5150895 () Bool)

(assert (=> b!5150895 (= e!3211139 e!3211142)))

(assert (=> b!5150895 (= c!886700 ((_ is Star!14501) (regTwo!29514 expr!117)))))

(declare-fun b!5150896 () Bool)

(declare-fun res!2191844 () Bool)

(assert (=> b!5150896 (=> res!2191844 e!3211136)))

(assert (=> b!5150896 (= res!2191844 (not ((_ is Concat!23346) (regTwo!29514 expr!117))))))

(assert (=> b!5150896 (= e!3211138 e!3211136)))

(assert (= (and d!1664164 (not res!2191847)) b!5150895))

(assert (= (and b!5150895 c!886700) b!5150892))

(assert (= (and b!5150895 (not c!886700)) b!5150893))

(assert (= (and b!5150892 res!2191845) b!5150889))

(assert (= (and b!5150893 c!886699) b!5150888))

(assert (= (and b!5150893 (not c!886699)) b!5150896))

(assert (= (and b!5150888 res!2191848) b!5150890))

(assert (= (and b!5150896 (not res!2191844)) b!5150894))

(assert (= (and b!5150894 res!2191846) b!5150891))

(assert (= (or b!5150890 b!5150891) bm!360462))

(assert (= (or b!5150888 b!5150894) bm!360461))

(assert (= (or b!5150889 bm!360461) bm!360460))

(declare-fun m!6208502 () Bool)

(assert (=> bm!360460 m!6208502))

(declare-fun m!6208504 () Bool)

(assert (=> b!5150892 m!6208504))

(declare-fun m!6208506 () Bool)

(assert (=> bm!360462 m!6208506))

(assert (=> b!5150727 d!1664164))

(declare-fun d!1664166 () Bool)

(assert (=> d!1664166 (= (lostCause!1554 (regOne!29514 expr!117)) (lostCauseFct!377 (regOne!29514 expr!117)))))

(declare-fun bs!1201565 () Bool)

(assert (= bs!1201565 d!1664166))

(declare-fun m!6208508 () Bool)

(assert (=> bs!1201565 m!6208508))

(assert (=> b!5150727 d!1664166))

(declare-fun d!1664168 () Bool)

(assert (=> d!1664168 (not (lostCause!1554 (regOne!29514 expr!117)))))

(declare-fun lt!2121459 () Unit!151213)

(declare-fun choose!38102 (Regex!14501) Unit!151213)

(assert (=> d!1664168 (= lt!2121459 (choose!38102 (regOne!29514 expr!117)))))

(assert (=> d!1664168 (validRegex!6356 (regOne!29514 expr!117))))

(assert (=> d!1664168 (= (lemmaNullableThenNotLostCause!90 (regOne!29514 expr!117)) lt!2121459)))

(declare-fun bs!1201566 () Bool)

(assert (= bs!1201566 d!1664168))

(assert (=> bs!1201566 m!6208382))

(declare-fun m!6208510 () Bool)

(assert (=> bs!1201566 m!6208510))

(declare-fun m!6208512 () Bool)

(assert (=> bs!1201566 m!6208512))

(assert (=> b!5150727 d!1664168))

(declare-fun b!5150919 () Bool)

(declare-fun e!3211160 () (InoxSet Context!7770))

(declare-fun call!360484 () (InoxSet Context!7770))

(declare-fun call!360481 () (InoxSet Context!7770))

(assert (=> b!5150919 (= e!3211160 ((_ map or) call!360484 call!360481))))

(declare-fun c!886715 () Bool)

(declare-fun bm!360475 () Bool)

(declare-fun call!360485 () List!59917)

(assert (=> bm!360475 (= call!360481 (derivationStepZipperDown!168 (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))) (ite c!886715 ctx!100 (Context!7771 call!360485)) a!1296))))

(declare-fun call!360483 () List!59917)

(declare-fun bm!360476 () Bool)

(declare-fun c!886714 () Bool)

(declare-fun c!886711 () Bool)

(assert (=> bm!360476 (= call!360484 (derivationStepZipperDown!168 (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117))))) (ite (or c!886715 c!886714) ctx!100 (Context!7771 call!360483)) a!1296))))

(declare-fun b!5150920 () Bool)

(declare-fun e!3211155 () (InoxSet Context!7770))

(declare-fun call!360480 () (InoxSet Context!7770))

(assert (=> b!5150920 (= e!3211155 ((_ map or) call!360481 call!360480))))

(declare-fun b!5150921 () Bool)

(declare-fun e!3211156 () (InoxSet Context!7770))

(declare-fun call!360482 () (InoxSet Context!7770))

(assert (=> b!5150921 (= e!3211156 call!360482)))

(declare-fun b!5150922 () Bool)

(declare-fun e!3211157 () Bool)

(assert (=> b!5150922 (= c!886714 e!3211157)))

(declare-fun res!2191851 () Bool)

(assert (=> b!5150922 (=> (not res!2191851) (not e!3211157))))

(assert (=> b!5150922 (= res!2191851 ((_ is Concat!23346) (regTwo!29514 expr!117)))))

(assert (=> b!5150922 (= e!3211160 e!3211155)))

(declare-fun b!5150923 () Bool)

(declare-fun c!886713 () Bool)

(assert (=> b!5150923 (= c!886713 ((_ is Star!14501) (regTwo!29514 expr!117)))))

(declare-fun e!3211158 () (InoxSet Context!7770))

(assert (=> b!5150923 (= e!3211156 e!3211158)))

(declare-fun b!5150924 () Bool)

(assert (=> b!5150924 (= e!3211158 call!360482)))

(declare-fun b!5150925 () Bool)

(assert (=> b!5150925 (= e!3211155 e!3211156)))

(assert (=> b!5150925 (= c!886711 ((_ is Concat!23346) (regTwo!29514 expr!117)))))

(declare-fun b!5150926 () Bool)

(assert (=> b!5150926 (= e!3211158 ((as const (Array Context!7770 Bool)) false))))

(declare-fun bm!360477 () Bool)

(assert (=> bm!360477 (= call!360485 ($colon$colon!1223 (exprs!4385 ctx!100) (ite (or c!886714 c!886711) (regTwo!29514 (regTwo!29514 expr!117)) (regTwo!29514 expr!117))))))

(declare-fun bm!360478 () Bool)

(assert (=> bm!360478 (= call!360482 call!360480)))

(declare-fun b!5150927 () Bool)

(declare-fun e!3211159 () (InoxSet Context!7770))

(assert (=> b!5150927 (= e!3211159 e!3211160)))

(assert (=> b!5150927 (= c!886715 ((_ is Union!14501) (regTwo!29514 expr!117)))))

(declare-fun b!5150928 () Bool)

(assert (=> b!5150928 (= e!3211157 (nullable!4857 (regOne!29514 (regTwo!29514 expr!117))))))

(declare-fun bm!360479 () Bool)

(assert (=> bm!360479 (= call!360480 call!360484)))

(declare-fun d!1664170 () Bool)

(declare-fun c!886712 () Bool)

(assert (=> d!1664170 (= c!886712 (and ((_ is ElementMatch!14501) (regTwo!29514 expr!117)) (= (c!886652 (regTwo!29514 expr!117)) a!1296)))))

(assert (=> d!1664170 (= (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296) e!3211159)))

(declare-fun b!5150929 () Bool)

(assert (=> b!5150929 (= e!3211159 (store ((as const (Array Context!7770 Bool)) false) ctx!100 true))))

(declare-fun bm!360480 () Bool)

(assert (=> bm!360480 (= call!360483 call!360485)))

(assert (= (and d!1664170 c!886712) b!5150929))

(assert (= (and d!1664170 (not c!886712)) b!5150927))

(assert (= (and b!5150927 c!886715) b!5150919))

(assert (= (and b!5150927 (not c!886715)) b!5150922))

(assert (= (and b!5150922 res!2191851) b!5150928))

(assert (= (and b!5150922 c!886714) b!5150920))

(assert (= (and b!5150922 (not c!886714)) b!5150925))

(assert (= (and b!5150925 c!886711) b!5150921))

(assert (= (and b!5150925 (not c!886711)) b!5150923))

(assert (= (and b!5150923 c!886713) b!5150924))

(assert (= (and b!5150923 (not c!886713)) b!5150926))

(assert (= (or b!5150921 b!5150924) bm!360480))

(assert (= (or b!5150921 b!5150924) bm!360478))

(assert (= (or b!5150920 bm!360480) bm!360477))

(assert (= (or b!5150920 bm!360478) bm!360479))

(assert (= (or b!5150919 b!5150920) bm!360475))

(assert (= (or b!5150919 bm!360479) bm!360476))

(declare-fun m!6208514 () Bool)

(assert (=> b!5150929 m!6208514))

(declare-fun m!6208516 () Bool)

(assert (=> b!5150928 m!6208516))

(declare-fun m!6208518 () Bool)

(assert (=> bm!360477 m!6208518))

(declare-fun m!6208520 () Bool)

(assert (=> bm!360476 m!6208520))

(declare-fun m!6208522 () Bool)

(assert (=> bm!360475 m!6208522))

(assert (=> b!5150728 d!1664170))

(declare-fun bs!1201567 () Bool)

(declare-fun b!5150934 () Bool)

(declare-fun d!1664172 () Bool)

(assert (= bs!1201567 (and b!5150934 d!1664172)))

(declare-fun lambda!257110 () Int)

(declare-fun lambda!257109 () Int)

(assert (=> bs!1201567 (not (= lambda!257110 lambda!257109))))

(declare-fun bs!1201568 () Bool)

(declare-fun b!5150935 () Bool)

(assert (= bs!1201568 (and b!5150935 d!1664172)))

(declare-fun lambda!257111 () Int)

(assert (=> bs!1201568 (not (= lambda!257111 lambda!257109))))

(declare-fun bs!1201569 () Bool)

(assert (= bs!1201569 (and b!5150935 b!5150934)))

(assert (=> bs!1201569 (= lambda!257111 lambda!257110)))

(declare-fun e!3211167 () Unit!151213)

(declare-fun Unit!151219 () Unit!151213)

(assert (=> b!5150934 (= e!3211167 Unit!151219)))

(declare-datatypes ((List!59920 0))(
  ( (Nil!59796) (Cons!59796 (h!66244 Context!7770) (t!372969 List!59920)) )
))
(declare-fun lt!2121477 () List!59920)

(declare-fun call!360490 () List!59920)

(assert (=> b!5150934 (= lt!2121477 call!360490)))

(declare-fun lt!2121479 () Unit!151213)

(declare-fun lemmaNotForallThenExists!448 (List!59920 Int) Unit!151213)

(assert (=> b!5150934 (= lt!2121479 (lemmaNotForallThenExists!448 lt!2121477 lambda!257109))))

(declare-fun call!360491 () Bool)

(assert (=> b!5150934 call!360491))

(declare-fun lt!2121482 () Unit!151213)

(assert (=> b!5150934 (= lt!2121482 lt!2121479)))

(declare-fun lt!2121480 () Bool)

(declare-datatypes ((List!59921 0))(
  ( (Nil!59797) (Cons!59797 (h!66245 C!29268) (t!372970 List!59921)) )
))
(declare-datatypes ((Option!14805 0))(
  ( (None!14804) (Some!14804 (v!50833 List!59921)) )
))
(declare-fun isEmpty!32066 (Option!14805) Bool)

(declare-fun getLanguageWitness!966 ((InoxSet Context!7770)) Option!14805)

(assert (=> d!1664172 (= lt!2121480 (isEmpty!32066 (getLanguageWitness!966 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296))))))

(declare-fun forall!13980 ((InoxSet Context!7770) Int) Bool)

(assert (=> d!1664172 (= lt!2121480 (forall!13980 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296) lambda!257109))))

(declare-fun lt!2121478 () Unit!151213)

(assert (=> d!1664172 (= lt!2121478 e!3211167)))

(declare-fun c!886726 () Bool)

(assert (=> d!1664172 (= c!886726 (not (forall!13980 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296) lambda!257109)))))

(assert (=> d!1664172 (= (lostCauseZipper!1287 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296)) lt!2121480)))

(declare-fun bm!360485 () Bool)

(declare-fun lt!2121476 () List!59920)

(declare-fun exists!1836 (List!59920 Int) Bool)

(assert (=> bm!360485 (= call!360491 (exists!1836 (ite c!886726 lt!2121477 lt!2121476) (ite c!886726 lambda!257110 lambda!257111)))))

(declare-fun bm!360486 () Bool)

(declare-fun toList!8401 ((InoxSet Context!7770)) List!59920)

(assert (=> bm!360486 (= call!360490 (toList!8401 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296)))))

(declare-fun Unit!151220 () Unit!151213)

(assert (=> b!5150935 (= e!3211167 Unit!151220)))

(assert (=> b!5150935 (= lt!2121476 call!360490)))

(declare-fun lt!2121481 () Unit!151213)

(declare-fun lemmaForallThenNotExists!415 (List!59920 Int) Unit!151213)

(assert (=> b!5150935 (= lt!2121481 (lemmaForallThenNotExists!415 lt!2121476 lambda!257109))))

(assert (=> b!5150935 (not call!360491)))

(declare-fun lt!2121483 () Unit!151213)

(assert (=> b!5150935 (= lt!2121483 lt!2121481)))

(assert (= (and d!1664172 c!886726) b!5150934))

(assert (= (and d!1664172 (not c!886726)) b!5150935))

(assert (= (or b!5150934 b!5150935) bm!360485))

(assert (= (or b!5150934 b!5150935) bm!360486))

(assert (=> d!1664172 m!6208394))

(declare-fun m!6208524 () Bool)

(assert (=> d!1664172 m!6208524))

(assert (=> d!1664172 m!6208524))

(declare-fun m!6208526 () Bool)

(assert (=> d!1664172 m!6208526))

(assert (=> d!1664172 m!6208394))

(declare-fun m!6208528 () Bool)

(assert (=> d!1664172 m!6208528))

(assert (=> d!1664172 m!6208394))

(assert (=> d!1664172 m!6208528))

(assert (=> bm!360486 m!6208394))

(declare-fun m!6208530 () Bool)

(assert (=> bm!360486 m!6208530))

(declare-fun m!6208532 () Bool)

(assert (=> b!5150934 m!6208532))

(declare-fun m!6208534 () Bool)

(assert (=> b!5150935 m!6208534))

(declare-fun m!6208536 () Bool)

(assert (=> bm!360485 m!6208536))

(assert (=> b!5150728 d!1664172))

(declare-fun bs!1201570 () Bool)

(declare-fun d!1664174 () Bool)

(assert (= bs!1201570 (and d!1664174 d!1664172)))

(declare-fun lambda!257112 () Int)

(assert (=> bs!1201570 (= lambda!257112 lambda!257109)))

(declare-fun bs!1201571 () Bool)

(assert (= bs!1201571 (and d!1664174 b!5150934)))

(assert (=> bs!1201571 (not (= lambda!257112 lambda!257110))))

(declare-fun bs!1201572 () Bool)

(assert (= bs!1201572 (and d!1664174 b!5150935)))

(assert (=> bs!1201572 (not (= lambda!257112 lambda!257111))))

(declare-fun bs!1201573 () Bool)

(declare-fun b!5150936 () Bool)

(assert (= bs!1201573 (and b!5150936 d!1664172)))

(declare-fun lambda!257113 () Int)

(assert (=> bs!1201573 (not (= lambda!257113 lambda!257109))))

(declare-fun bs!1201574 () Bool)

(assert (= bs!1201574 (and b!5150936 b!5150934)))

(assert (=> bs!1201574 (= lambda!257113 lambda!257110)))

(declare-fun bs!1201575 () Bool)

(assert (= bs!1201575 (and b!5150936 b!5150935)))

(assert (=> bs!1201575 (= lambda!257113 lambda!257111)))

(declare-fun bs!1201576 () Bool)

(assert (= bs!1201576 (and b!5150936 d!1664174)))

(assert (=> bs!1201576 (not (= lambda!257113 lambda!257112))))

(declare-fun bs!1201577 () Bool)

(declare-fun b!5150937 () Bool)

(assert (= bs!1201577 (and b!5150937 b!5150934)))

(declare-fun lambda!257114 () Int)

(assert (=> bs!1201577 (= lambda!257114 lambda!257110)))

(declare-fun bs!1201578 () Bool)

(assert (= bs!1201578 (and b!5150937 d!1664172)))

(assert (=> bs!1201578 (not (= lambda!257114 lambda!257109))))

(declare-fun bs!1201579 () Bool)

(assert (= bs!1201579 (and b!5150937 b!5150935)))

(assert (=> bs!1201579 (= lambda!257114 lambda!257111)))

(declare-fun bs!1201580 () Bool)

(assert (= bs!1201580 (and b!5150937 d!1664174)))

(assert (=> bs!1201580 (not (= lambda!257114 lambda!257112))))

(declare-fun bs!1201581 () Bool)

(assert (= bs!1201581 (and b!5150937 b!5150936)))

(assert (=> bs!1201581 (= lambda!257114 lambda!257113)))

(declare-fun e!3211168 () Unit!151213)

(declare-fun Unit!151221 () Unit!151213)

(assert (=> b!5150936 (= e!3211168 Unit!151221)))

(declare-fun lt!2121485 () List!59920)

(declare-fun call!360492 () List!59920)

(assert (=> b!5150936 (= lt!2121485 call!360492)))

(declare-fun lt!2121487 () Unit!151213)

(assert (=> b!5150936 (= lt!2121487 (lemmaNotForallThenExists!448 lt!2121485 lambda!257112))))

(declare-fun call!360493 () Bool)

(assert (=> b!5150936 call!360493))

(declare-fun lt!2121490 () Unit!151213)

(assert (=> b!5150936 (= lt!2121490 lt!2121487)))

(declare-fun lt!2121488 () Bool)

(assert (=> d!1664174 (= lt!2121488 (isEmpty!32066 (getLanguageWitness!966 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296))))))

(assert (=> d!1664174 (= lt!2121488 (forall!13980 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296) lambda!257112))))

(declare-fun lt!2121486 () Unit!151213)

(assert (=> d!1664174 (= lt!2121486 e!3211168)))

(declare-fun c!886727 () Bool)

(assert (=> d!1664174 (= c!886727 (not (forall!13980 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296) lambda!257112)))))

(assert (=> d!1664174 (= (lostCauseZipper!1287 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296)) lt!2121488)))

(declare-fun bm!360487 () Bool)

(declare-fun lt!2121484 () List!59920)

(assert (=> bm!360487 (= call!360493 (exists!1836 (ite c!886727 lt!2121485 lt!2121484) (ite c!886727 lambda!257113 lambda!257114)))))

(declare-fun bm!360488 () Bool)

(assert (=> bm!360488 (= call!360492 (toList!8401 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296)))))

(declare-fun Unit!151222 () Unit!151213)

(assert (=> b!5150937 (= e!3211168 Unit!151222)))

(assert (=> b!5150937 (= lt!2121484 call!360492)))

(declare-fun lt!2121489 () Unit!151213)

(assert (=> b!5150937 (= lt!2121489 (lemmaForallThenNotExists!415 lt!2121484 lambda!257112))))

(assert (=> b!5150937 (not call!360493)))

(declare-fun lt!2121491 () Unit!151213)

(assert (=> b!5150937 (= lt!2121491 lt!2121489)))

(assert (= (and d!1664174 c!886727) b!5150936))

(assert (= (and d!1664174 (not c!886727)) b!5150937))

(assert (= (or b!5150936 b!5150937) bm!360487))

(assert (= (or b!5150936 b!5150937) bm!360488))

(assert (=> d!1664174 m!6208398))

(declare-fun m!6208538 () Bool)

(assert (=> d!1664174 m!6208538))

(assert (=> d!1664174 m!6208538))

(declare-fun m!6208540 () Bool)

(assert (=> d!1664174 m!6208540))

(assert (=> d!1664174 m!6208398))

(declare-fun m!6208542 () Bool)

(assert (=> d!1664174 m!6208542))

(assert (=> d!1664174 m!6208398))

(assert (=> d!1664174 m!6208542))

(assert (=> bm!360488 m!6208398))

(declare-fun m!6208544 () Bool)

(assert (=> bm!360488 m!6208544))

(declare-fun m!6208546 () Bool)

(assert (=> b!5150936 m!6208546))

(declare-fun m!6208548 () Bool)

(assert (=> b!5150937 m!6208548))

(declare-fun m!6208550 () Bool)

(assert (=> bm!360487 m!6208550))

(assert (=> b!5150728 d!1664174))

(declare-fun b!5150938 () Bool)

(declare-fun e!3211174 () (InoxSet Context!7770))

(declare-fun call!360498 () (InoxSet Context!7770))

(declare-fun call!360495 () (InoxSet Context!7770))

(assert (=> b!5150938 (= e!3211174 ((_ map or) call!360498 call!360495))))

(declare-fun bm!360489 () Bool)

(declare-fun call!360499 () List!59917)

(declare-fun c!886732 () Bool)

(assert (=> bm!360489 (= call!360495 (derivationStepZipperDown!168 (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117))) (ite c!886732 lt!2121416 (Context!7771 call!360499)) a!1296))))

(declare-fun bm!360490 () Bool)

(declare-fun c!886728 () Bool)

(declare-fun call!360497 () List!59917)

(declare-fun c!886731 () Bool)

(assert (=> bm!360490 (= call!360498 (derivationStepZipperDown!168 (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117))))) (ite (or c!886732 c!886731) lt!2121416 (Context!7771 call!360497)) a!1296))))

(declare-fun b!5150939 () Bool)

(declare-fun e!3211169 () (InoxSet Context!7770))

(declare-fun call!360494 () (InoxSet Context!7770))

(assert (=> b!5150939 (= e!3211169 ((_ map or) call!360495 call!360494))))

(declare-fun b!5150940 () Bool)

(declare-fun e!3211170 () (InoxSet Context!7770))

(declare-fun call!360496 () (InoxSet Context!7770))

(assert (=> b!5150940 (= e!3211170 call!360496)))

(declare-fun b!5150941 () Bool)

(declare-fun e!3211171 () Bool)

(assert (=> b!5150941 (= c!886731 e!3211171)))

(declare-fun res!2191852 () Bool)

(assert (=> b!5150941 (=> (not res!2191852) (not e!3211171))))

(assert (=> b!5150941 (= res!2191852 ((_ is Concat!23346) (regOne!29514 expr!117)))))

(assert (=> b!5150941 (= e!3211174 e!3211169)))

(declare-fun b!5150942 () Bool)

(declare-fun c!886730 () Bool)

(assert (=> b!5150942 (= c!886730 ((_ is Star!14501) (regOne!29514 expr!117)))))

(declare-fun e!3211172 () (InoxSet Context!7770))

(assert (=> b!5150942 (= e!3211170 e!3211172)))

(declare-fun b!5150943 () Bool)

(assert (=> b!5150943 (= e!3211172 call!360496)))

(declare-fun b!5150944 () Bool)

(assert (=> b!5150944 (= e!3211169 e!3211170)))

(assert (=> b!5150944 (= c!886728 ((_ is Concat!23346) (regOne!29514 expr!117)))))

(declare-fun b!5150945 () Bool)

(assert (=> b!5150945 (= e!3211172 ((as const (Array Context!7770 Bool)) false))))

(declare-fun bm!360491 () Bool)

(assert (=> bm!360491 (= call!360499 ($colon$colon!1223 (exprs!4385 lt!2121416) (ite (or c!886731 c!886728) (regTwo!29514 (regOne!29514 expr!117)) (regOne!29514 expr!117))))))

(declare-fun bm!360492 () Bool)

(assert (=> bm!360492 (= call!360496 call!360494)))

(declare-fun b!5150946 () Bool)

(declare-fun e!3211173 () (InoxSet Context!7770))

(assert (=> b!5150946 (= e!3211173 e!3211174)))

(assert (=> b!5150946 (= c!886732 ((_ is Union!14501) (regOne!29514 expr!117)))))

(declare-fun b!5150947 () Bool)

(assert (=> b!5150947 (= e!3211171 (nullable!4857 (regOne!29514 (regOne!29514 expr!117))))))

(declare-fun bm!360493 () Bool)

(assert (=> bm!360493 (= call!360494 call!360498)))

(declare-fun d!1664176 () Bool)

(declare-fun c!886729 () Bool)

(assert (=> d!1664176 (= c!886729 (and ((_ is ElementMatch!14501) (regOne!29514 expr!117)) (= (c!886652 (regOne!29514 expr!117)) a!1296)))))

(assert (=> d!1664176 (= (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296) e!3211173)))

(declare-fun b!5150948 () Bool)

(assert (=> b!5150948 (= e!3211173 (store ((as const (Array Context!7770 Bool)) false) lt!2121416 true))))

(declare-fun bm!360494 () Bool)

(assert (=> bm!360494 (= call!360497 call!360499)))

(assert (= (and d!1664176 c!886729) b!5150948))

(assert (= (and d!1664176 (not c!886729)) b!5150946))

(assert (= (and b!5150946 c!886732) b!5150938))

(assert (= (and b!5150946 (not c!886732)) b!5150941))

(assert (= (and b!5150941 res!2191852) b!5150947))

(assert (= (and b!5150941 c!886731) b!5150939))

(assert (= (and b!5150941 (not c!886731)) b!5150944))

(assert (= (and b!5150944 c!886728) b!5150940))

(assert (= (and b!5150944 (not c!886728)) b!5150942))

(assert (= (and b!5150942 c!886730) b!5150943))

(assert (= (and b!5150942 (not c!886730)) b!5150945))

(assert (= (or b!5150940 b!5150943) bm!360494))

(assert (= (or b!5150940 b!5150943) bm!360492))

(assert (= (or b!5150939 bm!360494) bm!360491))

(assert (= (or b!5150939 bm!360492) bm!360493))

(assert (= (or b!5150938 b!5150939) bm!360489))

(assert (= (or b!5150938 bm!360493) bm!360490))

(declare-fun m!6208552 () Bool)

(assert (=> b!5150948 m!6208552))

(declare-fun m!6208554 () Bool)

(assert (=> b!5150947 m!6208554))

(declare-fun m!6208556 () Bool)

(assert (=> bm!360491 m!6208556))

(declare-fun m!6208558 () Bool)

(assert (=> bm!360490 m!6208558))

(declare-fun m!6208560 () Bool)

(assert (=> bm!360489 m!6208560))

(assert (=> b!5150728 d!1664176))

(declare-fun d!1664178 () Bool)

(assert (=> d!1664178 (lostCauseZipper!1287 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296))))

(declare-fun lt!2121494 () Unit!151213)

(declare-fun choose!38103 (Regex!14501 Context!7770 C!29268) Unit!151213)

(assert (=> d!1664178 (= lt!2121494 (choose!38103 (regOne!29514 expr!117) lt!2121416 a!1296))))

(assert (=> d!1664178 (validRegex!6356 (regOne!29514 expr!117))))

(assert (=> d!1664178 (= (lemmaLostCauseFixPointDerivDown!58 (regOne!29514 expr!117) lt!2121416 a!1296) lt!2121494)))

(declare-fun bs!1201582 () Bool)

(assert (= bs!1201582 d!1664178))

(assert (=> bs!1201582 m!6208398))

(assert (=> bs!1201582 m!6208398))

(assert (=> bs!1201582 m!6208400))

(declare-fun m!6208562 () Bool)

(assert (=> bs!1201582 m!6208562))

(assert (=> bs!1201582 m!6208512))

(assert (=> b!5150728 d!1664178))

(declare-fun bs!1201583 () Bool)

(declare-fun d!1664180 () Bool)

(assert (= bs!1201583 (and d!1664180 d!1664128)))

(declare-fun lambda!257115 () Int)

(assert (=> bs!1201583 (= lambda!257115 lambda!257093)))

(declare-fun bs!1201584 () Bool)

(assert (= bs!1201584 (and d!1664180 d!1664160)))

(assert (=> bs!1201584 (not (= lambda!257115 lambda!257096))))

(assert (=> d!1664180 (= (inv!79433 lt!2121416) (forall!13979 (exprs!4385 lt!2121416) lambda!257115))))

(declare-fun bs!1201585 () Bool)

(assert (= bs!1201585 d!1664180))

(declare-fun m!6208564 () Bool)

(assert (=> bs!1201585 m!6208564))

(assert (=> b!5150728 d!1664180))

(declare-fun d!1664182 () Bool)

(assert (=> d!1664182 (lostCauseZipper!1287 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296))))

(declare-fun lt!2121495 () Unit!151213)

(assert (=> d!1664182 (= lt!2121495 (choose!38103 (regTwo!29514 expr!117) ctx!100 a!1296))))

(assert (=> d!1664182 (validRegex!6356 (regTwo!29514 expr!117))))

(assert (=> d!1664182 (= (lemmaLostCauseFixPointDerivDown!58 (regTwo!29514 expr!117) ctx!100 a!1296) lt!2121495)))

(declare-fun bs!1201586 () Bool)

(assert (= bs!1201586 d!1664182))

(assert (=> bs!1201586 m!6208394))

(assert (=> bs!1201586 m!6208394))

(assert (=> bs!1201586 m!6208396))

(declare-fun m!6208566 () Bool)

(assert (=> bs!1201586 m!6208566))

(assert (=> bs!1201586 m!6208380))

(assert (=> b!5150728 d!1664182))

(declare-fun d!1664184 () Bool)

(assert (=> d!1664184 (= ($colon$colon!1223 (exprs!4385 ctx!100) (regTwo!29514 expr!117)) (Cons!59793 (regTwo!29514 expr!117) (exprs!4385 ctx!100)))))

(assert (=> b!5150728 d!1664184))

(declare-fun e!3211177 () Bool)

(assert (=> b!5150734 (= tp!1440290 e!3211177)))

(declare-fun b!5150960 () Bool)

(declare-fun tp!1440347 () Bool)

(declare-fun tp!1440348 () Bool)

(assert (=> b!5150960 (= e!3211177 (and tp!1440347 tp!1440348))))

(declare-fun b!5150959 () Bool)

(assert (=> b!5150959 (= e!3211177 tp_is_empty!38151)))

(declare-fun b!5150962 () Bool)

(declare-fun tp!1440349 () Bool)

(declare-fun tp!1440351 () Bool)

(assert (=> b!5150962 (= e!3211177 (and tp!1440349 tp!1440351))))

(declare-fun b!5150961 () Bool)

(declare-fun tp!1440350 () Bool)

(assert (=> b!5150961 (= e!3211177 tp!1440350)))

(assert (= (and b!5150734 ((_ is ElementMatch!14501) (regOne!29515 expr!117))) b!5150959))

(assert (= (and b!5150734 ((_ is Concat!23346) (regOne!29515 expr!117))) b!5150960))

(assert (= (and b!5150734 ((_ is Star!14501) (regOne!29515 expr!117))) b!5150961))

(assert (= (and b!5150734 ((_ is Union!14501) (regOne!29515 expr!117))) b!5150962))

(declare-fun e!3211178 () Bool)

(assert (=> b!5150734 (= tp!1440293 e!3211178)))

(declare-fun b!5150964 () Bool)

(declare-fun tp!1440352 () Bool)

(declare-fun tp!1440353 () Bool)

(assert (=> b!5150964 (= e!3211178 (and tp!1440352 tp!1440353))))

(declare-fun b!5150963 () Bool)

(assert (=> b!5150963 (= e!3211178 tp_is_empty!38151)))

(declare-fun b!5150966 () Bool)

(declare-fun tp!1440354 () Bool)

(declare-fun tp!1440356 () Bool)

(assert (=> b!5150966 (= e!3211178 (and tp!1440354 tp!1440356))))

(declare-fun b!5150965 () Bool)

(declare-fun tp!1440355 () Bool)

(assert (=> b!5150965 (= e!3211178 tp!1440355)))

(assert (= (and b!5150734 ((_ is ElementMatch!14501) (regTwo!29515 expr!117))) b!5150963))

(assert (= (and b!5150734 ((_ is Concat!23346) (regTwo!29515 expr!117))) b!5150964))

(assert (= (and b!5150734 ((_ is Star!14501) (regTwo!29515 expr!117))) b!5150965))

(assert (= (and b!5150734 ((_ is Union!14501) (regTwo!29515 expr!117))) b!5150966))

(declare-fun e!3211179 () Bool)

(assert (=> b!5150735 (= tp!1440295 e!3211179)))

(declare-fun b!5150968 () Bool)

(declare-fun tp!1440357 () Bool)

(declare-fun tp!1440358 () Bool)

(assert (=> b!5150968 (= e!3211179 (and tp!1440357 tp!1440358))))

(declare-fun b!5150967 () Bool)

(assert (=> b!5150967 (= e!3211179 tp_is_empty!38151)))

(declare-fun b!5150970 () Bool)

(declare-fun tp!1440359 () Bool)

(declare-fun tp!1440361 () Bool)

(assert (=> b!5150970 (= e!3211179 (and tp!1440359 tp!1440361))))

(declare-fun b!5150969 () Bool)

(declare-fun tp!1440360 () Bool)

(assert (=> b!5150969 (= e!3211179 tp!1440360)))

(assert (= (and b!5150735 ((_ is ElementMatch!14501) (reg!14830 expr!117))) b!5150967))

(assert (= (and b!5150735 ((_ is Concat!23346) (reg!14830 expr!117))) b!5150968))

(assert (= (and b!5150735 ((_ is Star!14501) (reg!14830 expr!117))) b!5150969))

(assert (= (and b!5150735 ((_ is Union!14501) (reg!14830 expr!117))) b!5150970))

(declare-fun e!3211180 () Bool)

(assert (=> b!5150730 (= tp!1440292 e!3211180)))

(declare-fun b!5150972 () Bool)

(declare-fun tp!1440362 () Bool)

(declare-fun tp!1440363 () Bool)

(assert (=> b!5150972 (= e!3211180 (and tp!1440362 tp!1440363))))

(declare-fun b!5150971 () Bool)

(assert (=> b!5150971 (= e!3211180 tp_is_empty!38151)))

(declare-fun b!5150974 () Bool)

(declare-fun tp!1440364 () Bool)

(declare-fun tp!1440366 () Bool)

(assert (=> b!5150974 (= e!3211180 (and tp!1440364 tp!1440366))))

(declare-fun b!5150973 () Bool)

(declare-fun tp!1440365 () Bool)

(assert (=> b!5150973 (= e!3211180 tp!1440365)))

(assert (= (and b!5150730 ((_ is ElementMatch!14501) (regOne!29514 expr!117))) b!5150971))

(assert (= (and b!5150730 ((_ is Concat!23346) (regOne!29514 expr!117))) b!5150972))

(assert (= (and b!5150730 ((_ is Star!14501) (regOne!29514 expr!117))) b!5150973))

(assert (= (and b!5150730 ((_ is Union!14501) (regOne!29514 expr!117))) b!5150974))

(declare-fun e!3211181 () Bool)

(assert (=> b!5150730 (= tp!1440294 e!3211181)))

(declare-fun b!5150976 () Bool)

(declare-fun tp!1440367 () Bool)

(declare-fun tp!1440368 () Bool)

(assert (=> b!5150976 (= e!3211181 (and tp!1440367 tp!1440368))))

(declare-fun b!5150975 () Bool)

(assert (=> b!5150975 (= e!3211181 tp_is_empty!38151)))

(declare-fun b!5150978 () Bool)

(declare-fun tp!1440369 () Bool)

(declare-fun tp!1440371 () Bool)

(assert (=> b!5150978 (= e!3211181 (and tp!1440369 tp!1440371))))

(declare-fun b!5150977 () Bool)

(declare-fun tp!1440370 () Bool)

(assert (=> b!5150977 (= e!3211181 tp!1440370)))

(assert (= (and b!5150730 ((_ is ElementMatch!14501) (regTwo!29514 expr!117))) b!5150975))

(assert (= (and b!5150730 ((_ is Concat!23346) (regTwo!29514 expr!117))) b!5150976))

(assert (= (and b!5150730 ((_ is Star!14501) (regTwo!29514 expr!117))) b!5150977))

(assert (= (and b!5150730 ((_ is Union!14501) (regTwo!29514 expr!117))) b!5150978))

(declare-fun b!5150983 () Bool)

(declare-fun e!3211184 () Bool)

(declare-fun tp!1440376 () Bool)

(declare-fun tp!1440377 () Bool)

(assert (=> b!5150983 (= e!3211184 (and tp!1440376 tp!1440377))))

(assert (=> b!5150731 (= tp!1440291 e!3211184)))

(assert (= (and b!5150731 ((_ is Cons!59793) (exprs!4385 ctx!100))) b!5150983))

(check-sat (not b!5150983) (not bm!360413) (not bm!360476) (not bm!360415) (not b!5150961) (not d!1664174) (not b!5150966) (not b!5150947) (not d!1664178) (not bm!360485) (not d!1664160) (not bm!360460) (not b!5150892) (not bm!360475) (not bm!360487) (not b!5150964) (not b!5150962) (not b!5150973) (not b!5150934) (not b!5150972) (not d!1664168) (not b!5150935) (not b!5150976) (not b!5150968) (not b!5150960) (not b!5150974) (not d!1664172) (not b!5150977) (not b!5150965) (not b!5150936) (not d!1664166) (not b!5150969) (not bm!360488) (not b!5150937) (not b!5150928) (not d!1664182) (not d!1664162) (not bm!360486) (not bm!360462) (not bm!360490) (not bm!360489) tp_is_empty!38151 (not bm!360491) (not b!5150760) (not bm!360477) (not b!5150978) (not d!1664124) (not d!1664128) (not b!5150970) (not d!1664180))
(check-sat)
(get-model)

(declare-fun d!1664186 () Bool)

(assert (=> d!1664186 (= ($colon$colon!1223 (exprs!4385 lt!2121416) (ite (or c!886731 c!886728) (regTwo!29514 (regOne!29514 expr!117)) (regOne!29514 expr!117))) (Cons!59793 (ite (or c!886731 c!886728) (regTwo!29514 (regOne!29514 expr!117)) (regOne!29514 expr!117)) (exprs!4385 lt!2121416)))))

(assert (=> bm!360491 d!1664186))

(declare-fun d!1664188 () Bool)

(assert (=> d!1664188 (= (nullable!4857 (regOne!29514 (regTwo!29514 expr!117))) (nullableFct!1335 (regOne!29514 (regTwo!29514 expr!117))))))

(declare-fun bs!1201587 () Bool)

(assert (= bs!1201587 d!1664188))

(declare-fun m!6208568 () Bool)

(assert (=> bs!1201587 m!6208568))

(assert (=> b!5150928 d!1664188))

(declare-fun bm!360499 () Bool)

(declare-fun call!360505 () Bool)

(declare-fun c!886735 () Bool)

(assert (=> bm!360499 (= call!360505 (lostCause!1554 (ite c!886735 (regOne!29515 expr!117) (regOne!29514 expr!117))))))

(declare-fun b!5150998 () Bool)

(declare-fun e!3211198 () Bool)

(declare-fun call!360504 () Bool)

(assert (=> b!5150998 (= e!3211198 call!360504)))

(declare-fun b!5150999 () Bool)

(declare-fun e!3211200 () Bool)

(declare-fun e!3211202 () Bool)

(assert (=> b!5150999 (= e!3211200 e!3211202)))

(declare-fun res!2191867 () Bool)

(assert (=> b!5150999 (=> (not res!2191867) (not e!3211202))))

(assert (=> b!5150999 (= res!2191867 (and (not ((_ is ElementMatch!14501) expr!117)) (not ((_ is Star!14501) expr!117))))))

(declare-fun b!5151000 () Bool)

(declare-fun e!3211197 () Bool)

(assert (=> b!5151000 (= e!3211197 e!3211200)))

(declare-fun res!2191866 () Bool)

(assert (=> b!5151000 (=> res!2191866 e!3211200)))

(assert (=> b!5151000 (= res!2191866 ((_ is EmptyLang!14501) expr!117))))

(declare-fun b!5151001 () Bool)

(declare-fun e!3211201 () Bool)

(assert (=> b!5151001 (= e!3211201 e!3211198)))

(declare-fun res!2191863 () Bool)

(assert (=> b!5151001 (= res!2191863 call!360505)))

(assert (=> b!5151001 (=> (not res!2191863) (not e!3211198))))

(declare-fun b!5151002 () Bool)

(declare-fun e!3211199 () Bool)

(assert (=> b!5151002 (= e!3211201 e!3211199)))

(declare-fun res!2191865 () Bool)

(assert (=> b!5151002 (= res!2191865 call!360505)))

(assert (=> b!5151002 (=> res!2191865 e!3211199)))

(declare-fun d!1664190 () Bool)

(declare-fun lt!2121498 () Bool)

(declare-fun getLanguageWitness!967 (Regex!14501) Option!14805)

(assert (=> d!1664190 (= lt!2121498 (isEmpty!32066 (getLanguageWitness!967 expr!117)))))

(assert (=> d!1664190 (= lt!2121498 e!3211197)))

(declare-fun res!2191864 () Bool)

(assert (=> d!1664190 (=> (not res!2191864) (not e!3211197))))

(assert (=> d!1664190 (= res!2191864 (not ((_ is EmptyExpr!14501) expr!117)))))

(assert (=> d!1664190 (= (lostCauseFct!377 expr!117) lt!2121498)))

(declare-fun b!5151003 () Bool)

(assert (=> b!5151003 (= e!3211199 call!360504)))

(declare-fun bm!360500 () Bool)

(assert (=> bm!360500 (= call!360504 (lostCause!1554 (ite c!886735 (regTwo!29515 expr!117) (regTwo!29514 expr!117))))))

(declare-fun b!5151004 () Bool)

(assert (=> b!5151004 (= e!3211202 e!3211201)))

(assert (=> b!5151004 (= c!886735 ((_ is Union!14501) expr!117))))

(assert (= (and d!1664190 res!2191864) b!5151000))

(assert (= (and b!5151000 (not res!2191866)) b!5150999))

(assert (= (and b!5150999 res!2191867) b!5151004))

(assert (= (and b!5151004 c!886735) b!5151001))

(assert (= (and b!5151004 (not c!886735)) b!5151002))

(assert (= (and b!5151001 res!2191863) b!5150998))

(assert (= (and b!5151002 (not res!2191865)) b!5151003))

(assert (= (or b!5151001 b!5151002) bm!360499))

(assert (= (or b!5150998 b!5151003) bm!360500))

(declare-fun m!6208570 () Bool)

(assert (=> bm!360499 m!6208570))

(declare-fun m!6208572 () Bool)

(assert (=> d!1664190 m!6208572))

(assert (=> d!1664190 m!6208572))

(declare-fun m!6208574 () Bool)

(assert (=> d!1664190 m!6208574))

(declare-fun m!6208576 () Bool)

(assert (=> bm!360500 m!6208576))

(assert (=> d!1664162 d!1664190))

(declare-fun bs!1201588 () Bool)

(declare-fun d!1664192 () Bool)

(assert (= bs!1201588 (and d!1664192 b!5150934)))

(declare-fun lambda!257118 () Int)

(assert (=> bs!1201588 (not (= lambda!257118 lambda!257110))))

(declare-fun bs!1201589 () Bool)

(assert (= bs!1201589 (and d!1664192 d!1664172)))

(assert (=> bs!1201589 (not (= lambda!257118 lambda!257109))))

(declare-fun bs!1201590 () Bool)

(assert (= bs!1201590 (and d!1664192 b!5150935)))

(assert (=> bs!1201590 (not (= lambda!257118 lambda!257111))))

(declare-fun bs!1201591 () Bool)

(assert (= bs!1201591 (and d!1664192 b!5150937)))

(assert (=> bs!1201591 (not (= lambda!257118 lambda!257114))))

(declare-fun bs!1201592 () Bool)

(assert (= bs!1201592 (and d!1664192 d!1664174)))

(assert (=> bs!1201592 (not (= lambda!257118 lambda!257112))))

(declare-fun bs!1201593 () Bool)

(assert (= bs!1201593 (and d!1664192 b!5150936)))

(assert (=> bs!1201593 (not (= lambda!257118 lambda!257113))))

(assert (=> d!1664192 true))

(declare-fun order!26983 () Int)

(declare-fun dynLambda!23795 (Int Int) Int)

(assert (=> d!1664192 (< (dynLambda!23795 order!26983 lambda!257112) (dynLambda!23795 order!26983 lambda!257118))))

(assert (=> d!1664192 (not (exists!1836 lt!2121484 lambda!257118))))

(declare-fun lt!2121501 () Unit!151213)

(declare-fun choose!38104 (List!59920 Int) Unit!151213)

(assert (=> d!1664192 (= lt!2121501 (choose!38104 lt!2121484 lambda!257112))))

(declare-fun forall!13981 (List!59920 Int) Bool)

(assert (=> d!1664192 (forall!13981 lt!2121484 lambda!257112)))

(assert (=> d!1664192 (= (lemmaForallThenNotExists!415 lt!2121484 lambda!257112) lt!2121501)))

(declare-fun bs!1201594 () Bool)

(assert (= bs!1201594 d!1664192))

(declare-fun m!6208578 () Bool)

(assert (=> bs!1201594 m!6208578))

(declare-fun m!6208580 () Bool)

(assert (=> bs!1201594 m!6208580))

(declare-fun m!6208582 () Bool)

(assert (=> bs!1201594 m!6208582))

(assert (=> b!5150937 d!1664192))

(declare-fun bs!1201595 () Bool)

(declare-fun d!1664194 () Bool)

(assert (= bs!1201595 (and d!1664194 b!5150934)))

(declare-fun lambda!257121 () Int)

(assert (=> bs!1201595 (not (= lambda!257121 lambda!257110))))

(declare-fun bs!1201596 () Bool)

(assert (= bs!1201596 (and d!1664194 d!1664172)))

(assert (=> bs!1201596 (not (= lambda!257121 lambda!257109))))

(declare-fun bs!1201597 () Bool)

(assert (= bs!1201597 (and d!1664194 d!1664192)))

(assert (=> bs!1201597 (= lambda!257121 lambda!257118)))

(declare-fun bs!1201598 () Bool)

(assert (= bs!1201598 (and d!1664194 b!5150935)))

(assert (=> bs!1201598 (not (= lambda!257121 lambda!257111))))

(declare-fun bs!1201599 () Bool)

(assert (= bs!1201599 (and d!1664194 b!5150937)))

(assert (=> bs!1201599 (not (= lambda!257121 lambda!257114))))

(declare-fun bs!1201600 () Bool)

(assert (= bs!1201600 (and d!1664194 d!1664174)))

(assert (=> bs!1201600 (not (= lambda!257121 lambda!257112))))

(declare-fun bs!1201601 () Bool)

(assert (= bs!1201601 (and d!1664194 b!5150936)))

(assert (=> bs!1201601 (not (= lambda!257121 lambda!257113))))

(assert (=> d!1664194 true))

(assert (=> d!1664194 (< (dynLambda!23795 order!26983 lambda!257112) (dynLambda!23795 order!26983 lambda!257121))))

(assert (=> d!1664194 (exists!1836 lt!2121485 lambda!257121)))

(declare-fun lt!2121504 () Unit!151213)

(declare-fun choose!38105 (List!59920 Int) Unit!151213)

(assert (=> d!1664194 (= lt!2121504 (choose!38105 lt!2121485 lambda!257112))))

(assert (=> d!1664194 (not (forall!13981 lt!2121485 lambda!257112))))

(assert (=> d!1664194 (= (lemmaNotForallThenExists!448 lt!2121485 lambda!257112) lt!2121504)))

(declare-fun bs!1201602 () Bool)

(assert (= bs!1201602 d!1664194))

(declare-fun m!6208584 () Bool)

(assert (=> bs!1201602 m!6208584))

(declare-fun m!6208586 () Bool)

(assert (=> bs!1201602 m!6208586))

(declare-fun m!6208588 () Bool)

(assert (=> bs!1201602 m!6208588))

(assert (=> b!5150936 d!1664194))

(declare-fun d!1664196 () Bool)

(declare-fun res!2191871 () Bool)

(declare-fun e!3211210 () Bool)

(assert (=> d!1664196 (=> res!2191871 e!3211210)))

(assert (=> d!1664196 (= res!2191871 ((_ is ElementMatch!14501) (ite c!886657 (regTwo!29515 expr!117) (regTwo!29514 expr!117))))))

(assert (=> d!1664196 (= (validRegex!6356 (ite c!886657 (regTwo!29515 expr!117) (regTwo!29514 expr!117))) e!3211210)))

(declare-fun b!5151007 () Bool)

(declare-fun res!2191872 () Bool)

(declare-fun e!3211208 () Bool)

(assert (=> b!5151007 (=> (not res!2191872) (not e!3211208))))

(declare-fun call!360506 () Bool)

(assert (=> b!5151007 (= res!2191872 call!360506)))

(declare-fun e!3211209 () Bool)

(assert (=> b!5151007 (= e!3211209 e!3211208)))

(declare-fun b!5151008 () Bool)

(declare-fun e!3211212 () Bool)

(declare-fun call!360507 () Bool)

(assert (=> b!5151008 (= e!3211212 call!360507)))

(declare-fun b!5151009 () Bool)

(declare-fun call!360508 () Bool)

(assert (=> b!5151009 (= e!3211208 call!360508)))

(declare-fun c!886736 () Bool)

(declare-fun c!886737 () Bool)

(declare-fun bm!360501 () Bool)

(assert (=> bm!360501 (= call!360507 (validRegex!6356 (ite c!886737 (reg!14830 (ite c!886657 (regTwo!29515 expr!117) (regTwo!29514 expr!117))) (ite c!886736 (regOne!29515 (ite c!886657 (regTwo!29515 expr!117) (regTwo!29514 expr!117))) (regOne!29514 (ite c!886657 (regTwo!29515 expr!117) (regTwo!29514 expr!117)))))))))

(declare-fun b!5151010 () Bool)

(declare-fun e!3211211 () Bool)

(assert (=> b!5151010 (= e!3211211 call!360508)))

(declare-fun b!5151011 () Bool)

(declare-fun e!3211213 () Bool)

(assert (=> b!5151011 (= e!3211213 e!3211212)))

(declare-fun res!2191869 () Bool)

(assert (=> b!5151011 (= res!2191869 (not (nullable!4857 (reg!14830 (ite c!886657 (regTwo!29515 expr!117) (regTwo!29514 expr!117))))))))

(assert (=> b!5151011 (=> (not res!2191869) (not e!3211212))))

(declare-fun b!5151012 () Bool)

(assert (=> b!5151012 (= e!3211213 e!3211209)))

(assert (=> b!5151012 (= c!886736 ((_ is Union!14501) (ite c!886657 (regTwo!29515 expr!117) (regTwo!29514 expr!117))))))

(declare-fun bm!360502 () Bool)

(assert (=> bm!360502 (= call!360506 call!360507)))

(declare-fun b!5151013 () Bool)

(declare-fun e!3211207 () Bool)

(assert (=> b!5151013 (= e!3211207 e!3211211)))

(declare-fun res!2191870 () Bool)

(assert (=> b!5151013 (=> (not res!2191870) (not e!3211211))))

(assert (=> b!5151013 (= res!2191870 call!360506)))

(declare-fun bm!360503 () Bool)

(assert (=> bm!360503 (= call!360508 (validRegex!6356 (ite c!886736 (regTwo!29515 (ite c!886657 (regTwo!29515 expr!117) (regTwo!29514 expr!117))) (regTwo!29514 (ite c!886657 (regTwo!29515 expr!117) (regTwo!29514 expr!117))))))))

(declare-fun b!5151014 () Bool)

(assert (=> b!5151014 (= e!3211210 e!3211213)))

(assert (=> b!5151014 (= c!886737 ((_ is Star!14501) (ite c!886657 (regTwo!29515 expr!117) (regTwo!29514 expr!117))))))

(declare-fun b!5151015 () Bool)

(declare-fun res!2191868 () Bool)

(assert (=> b!5151015 (=> res!2191868 e!3211207)))

(assert (=> b!5151015 (= res!2191868 (not ((_ is Concat!23346) (ite c!886657 (regTwo!29515 expr!117) (regTwo!29514 expr!117)))))))

(assert (=> b!5151015 (= e!3211209 e!3211207)))

(assert (= (and d!1664196 (not res!2191871)) b!5151014))

(assert (= (and b!5151014 c!886737) b!5151011))

(assert (= (and b!5151014 (not c!886737)) b!5151012))

(assert (= (and b!5151011 res!2191869) b!5151008))

(assert (= (and b!5151012 c!886736) b!5151007))

(assert (= (and b!5151012 (not c!886736)) b!5151015))

(assert (= (and b!5151007 res!2191872) b!5151009))

(assert (= (and b!5151015 (not res!2191868)) b!5151013))

(assert (= (and b!5151013 res!2191870) b!5151010))

(assert (= (or b!5151009 b!5151010) bm!360503))

(assert (= (or b!5151007 b!5151013) bm!360502))

(assert (= (or b!5151008 bm!360502) bm!360501))

(declare-fun m!6208590 () Bool)

(assert (=> bm!360501 m!6208590))

(declare-fun m!6208592 () Bool)

(assert (=> b!5151011 m!6208592))

(declare-fun m!6208594 () Bool)

(assert (=> bm!360503 m!6208594))

(assert (=> bm!360415 d!1664196))

(declare-fun bm!360504 () Bool)

(declare-fun call!360510 () Bool)

(declare-fun c!886738 () Bool)

(assert (=> bm!360504 (= call!360510 (lostCause!1554 (ite c!886738 (regOne!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117)))))))

(declare-fun b!5151016 () Bool)

(declare-fun e!3211215 () Bool)

(declare-fun call!360509 () Bool)

(assert (=> b!5151016 (= e!3211215 call!360509)))

(declare-fun b!5151017 () Bool)

(declare-fun e!3211217 () Bool)

(declare-fun e!3211219 () Bool)

(assert (=> b!5151017 (= e!3211217 e!3211219)))

(declare-fun res!2191877 () Bool)

(assert (=> b!5151017 (=> (not res!2191877) (not e!3211219))))

(assert (=> b!5151017 (= res!2191877 (and (not ((_ is ElementMatch!14501) (regOne!29514 expr!117))) (not ((_ is Star!14501) (regOne!29514 expr!117)))))))

(declare-fun b!5151018 () Bool)

(declare-fun e!3211214 () Bool)

(assert (=> b!5151018 (= e!3211214 e!3211217)))

(declare-fun res!2191876 () Bool)

(assert (=> b!5151018 (=> res!2191876 e!3211217)))

(assert (=> b!5151018 (= res!2191876 ((_ is EmptyLang!14501) (regOne!29514 expr!117)))))

(declare-fun b!5151019 () Bool)

(declare-fun e!3211218 () Bool)

(assert (=> b!5151019 (= e!3211218 e!3211215)))

(declare-fun res!2191873 () Bool)

(assert (=> b!5151019 (= res!2191873 call!360510)))

(assert (=> b!5151019 (=> (not res!2191873) (not e!3211215))))

(declare-fun b!5151020 () Bool)

(declare-fun e!3211216 () Bool)

(assert (=> b!5151020 (= e!3211218 e!3211216)))

(declare-fun res!2191875 () Bool)

(assert (=> b!5151020 (= res!2191875 call!360510)))

(assert (=> b!5151020 (=> res!2191875 e!3211216)))

(declare-fun d!1664198 () Bool)

(declare-fun lt!2121505 () Bool)

(assert (=> d!1664198 (= lt!2121505 (isEmpty!32066 (getLanguageWitness!967 (regOne!29514 expr!117))))))

(assert (=> d!1664198 (= lt!2121505 e!3211214)))

(declare-fun res!2191874 () Bool)

(assert (=> d!1664198 (=> (not res!2191874) (not e!3211214))))

(assert (=> d!1664198 (= res!2191874 (not ((_ is EmptyExpr!14501) (regOne!29514 expr!117))))))

(assert (=> d!1664198 (= (lostCauseFct!377 (regOne!29514 expr!117)) lt!2121505)))

(declare-fun b!5151021 () Bool)

(assert (=> b!5151021 (= e!3211216 call!360509)))

(declare-fun bm!360505 () Bool)

(assert (=> bm!360505 (= call!360509 (lostCause!1554 (ite c!886738 (regTwo!29515 (regOne!29514 expr!117)) (regTwo!29514 (regOne!29514 expr!117)))))))

(declare-fun b!5151022 () Bool)

(assert (=> b!5151022 (= e!3211219 e!3211218)))

(assert (=> b!5151022 (= c!886738 ((_ is Union!14501) (regOne!29514 expr!117)))))

(assert (= (and d!1664198 res!2191874) b!5151018))

(assert (= (and b!5151018 (not res!2191876)) b!5151017))

(assert (= (and b!5151017 res!2191877) b!5151022))

(assert (= (and b!5151022 c!886738) b!5151019))

(assert (= (and b!5151022 (not c!886738)) b!5151020))

(assert (= (and b!5151019 res!2191873) b!5151016))

(assert (= (and b!5151020 (not res!2191875)) b!5151021))

(assert (= (or b!5151019 b!5151020) bm!360504))

(assert (= (or b!5151016 b!5151021) bm!360505))

(declare-fun m!6208596 () Bool)

(assert (=> bm!360504 m!6208596))

(declare-fun m!6208598 () Bool)

(assert (=> d!1664198 m!6208598))

(assert (=> d!1664198 m!6208598))

(declare-fun m!6208600 () Bool)

(assert (=> d!1664198 m!6208600))

(declare-fun m!6208602 () Bool)

(assert (=> bm!360505 m!6208602))

(assert (=> d!1664166 d!1664198))

(declare-fun d!1664200 () Bool)

(declare-fun res!2191881 () Bool)

(declare-fun e!3211223 () Bool)

(assert (=> d!1664200 (=> res!2191881 e!3211223)))

(assert (=> d!1664200 (= res!2191881 ((_ is ElementMatch!14501) (ite c!886658 (reg!14830 expr!117) (ite c!886657 (regOne!29515 expr!117) (regOne!29514 expr!117)))))))

(assert (=> d!1664200 (= (validRegex!6356 (ite c!886658 (reg!14830 expr!117) (ite c!886657 (regOne!29515 expr!117) (regOne!29514 expr!117)))) e!3211223)))

(declare-fun b!5151023 () Bool)

(declare-fun res!2191882 () Bool)

(declare-fun e!3211221 () Bool)

(assert (=> b!5151023 (=> (not res!2191882) (not e!3211221))))

(declare-fun call!360511 () Bool)

(assert (=> b!5151023 (= res!2191882 call!360511)))

(declare-fun e!3211222 () Bool)

(assert (=> b!5151023 (= e!3211222 e!3211221)))

(declare-fun b!5151024 () Bool)

(declare-fun e!3211225 () Bool)

(declare-fun call!360512 () Bool)

(assert (=> b!5151024 (= e!3211225 call!360512)))

(declare-fun b!5151025 () Bool)

(declare-fun call!360513 () Bool)

(assert (=> b!5151025 (= e!3211221 call!360513)))

(declare-fun c!886739 () Bool)

(declare-fun c!886740 () Bool)

(declare-fun bm!360506 () Bool)

(assert (=> bm!360506 (= call!360512 (validRegex!6356 (ite c!886740 (reg!14830 (ite c!886658 (reg!14830 expr!117) (ite c!886657 (regOne!29515 expr!117) (regOne!29514 expr!117)))) (ite c!886739 (regOne!29515 (ite c!886658 (reg!14830 expr!117) (ite c!886657 (regOne!29515 expr!117) (regOne!29514 expr!117)))) (regOne!29514 (ite c!886658 (reg!14830 expr!117) (ite c!886657 (regOne!29515 expr!117) (regOne!29514 expr!117))))))))))

(declare-fun b!5151026 () Bool)

(declare-fun e!3211224 () Bool)

(assert (=> b!5151026 (= e!3211224 call!360513)))

(declare-fun b!5151027 () Bool)

(declare-fun e!3211226 () Bool)

(assert (=> b!5151027 (= e!3211226 e!3211225)))

(declare-fun res!2191879 () Bool)

(assert (=> b!5151027 (= res!2191879 (not (nullable!4857 (reg!14830 (ite c!886658 (reg!14830 expr!117) (ite c!886657 (regOne!29515 expr!117) (regOne!29514 expr!117)))))))))

(assert (=> b!5151027 (=> (not res!2191879) (not e!3211225))))

(declare-fun b!5151028 () Bool)

(assert (=> b!5151028 (= e!3211226 e!3211222)))

(assert (=> b!5151028 (= c!886739 ((_ is Union!14501) (ite c!886658 (reg!14830 expr!117) (ite c!886657 (regOne!29515 expr!117) (regOne!29514 expr!117)))))))

(declare-fun bm!360507 () Bool)

(assert (=> bm!360507 (= call!360511 call!360512)))

(declare-fun b!5151029 () Bool)

(declare-fun e!3211220 () Bool)

(assert (=> b!5151029 (= e!3211220 e!3211224)))

(declare-fun res!2191880 () Bool)

(assert (=> b!5151029 (=> (not res!2191880) (not e!3211224))))

(assert (=> b!5151029 (= res!2191880 call!360511)))

(declare-fun bm!360508 () Bool)

(assert (=> bm!360508 (= call!360513 (validRegex!6356 (ite c!886739 (regTwo!29515 (ite c!886658 (reg!14830 expr!117) (ite c!886657 (regOne!29515 expr!117) (regOne!29514 expr!117)))) (regTwo!29514 (ite c!886658 (reg!14830 expr!117) (ite c!886657 (regOne!29515 expr!117) (regOne!29514 expr!117)))))))))

(declare-fun b!5151030 () Bool)

(assert (=> b!5151030 (= e!3211223 e!3211226)))

(assert (=> b!5151030 (= c!886740 ((_ is Star!14501) (ite c!886658 (reg!14830 expr!117) (ite c!886657 (regOne!29515 expr!117) (regOne!29514 expr!117)))))))

(declare-fun b!5151031 () Bool)

(declare-fun res!2191878 () Bool)

(assert (=> b!5151031 (=> res!2191878 e!3211220)))

(assert (=> b!5151031 (= res!2191878 (not ((_ is Concat!23346) (ite c!886658 (reg!14830 expr!117) (ite c!886657 (regOne!29515 expr!117) (regOne!29514 expr!117))))))))

(assert (=> b!5151031 (= e!3211222 e!3211220)))

(assert (= (and d!1664200 (not res!2191881)) b!5151030))

(assert (= (and b!5151030 c!886740) b!5151027))

(assert (= (and b!5151030 (not c!886740)) b!5151028))

(assert (= (and b!5151027 res!2191879) b!5151024))

(assert (= (and b!5151028 c!886739) b!5151023))

(assert (= (and b!5151028 (not c!886739)) b!5151031))

(assert (= (and b!5151023 res!2191882) b!5151025))

(assert (= (and b!5151031 (not res!2191878)) b!5151029))

(assert (= (and b!5151029 res!2191880) b!5151026))

(assert (= (or b!5151025 b!5151026) bm!360508))

(assert (= (or b!5151023 b!5151029) bm!360507))

(assert (= (or b!5151024 bm!360507) bm!360506))

(declare-fun m!6208604 () Bool)

(assert (=> bm!360506 m!6208604))

(declare-fun m!6208606 () Bool)

(assert (=> b!5151027 m!6208606))

(declare-fun m!6208608 () Bool)

(assert (=> bm!360508 m!6208608))

(assert (=> bm!360413 d!1664200))

(declare-fun d!1664202 () Bool)

(assert (=> d!1664202 (= (nullable!4857 (reg!14830 expr!117)) (nullableFct!1335 (reg!14830 expr!117)))))

(declare-fun bs!1201603 () Bool)

(assert (= bs!1201603 d!1664202))

(declare-fun m!6208610 () Bool)

(assert (=> bs!1201603 m!6208610))

(assert (=> b!5150760 d!1664202))

(assert (=> d!1664182 d!1664172))

(assert (=> d!1664182 d!1664170))

(declare-fun d!1664204 () Bool)

(assert (=> d!1664204 (lostCauseZipper!1287 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296))))

(assert (=> d!1664204 true))

(declare-fun _$39!544 () Unit!151213)

(assert (=> d!1664204 (= (choose!38103 (regTwo!29514 expr!117) ctx!100 a!1296) _$39!544)))

(declare-fun bs!1201604 () Bool)

(assert (= bs!1201604 d!1664204))

(assert (=> bs!1201604 m!6208394))

(assert (=> bs!1201604 m!6208394))

(assert (=> bs!1201604 m!6208396))

(assert (=> d!1664182 d!1664204))

(assert (=> d!1664182 d!1664164))

(assert (=> d!1664178 d!1664174))

(assert (=> d!1664178 d!1664176))

(declare-fun d!1664208 () Bool)

(assert (=> d!1664208 (lostCauseZipper!1287 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296))))

(assert (=> d!1664208 true))

(declare-fun _$39!545 () Unit!151213)

(assert (=> d!1664208 (= (choose!38103 (regOne!29514 expr!117) lt!2121416 a!1296) _$39!545)))

(declare-fun bs!1201605 () Bool)

(assert (= bs!1201605 d!1664208))

(assert (=> bs!1201605 m!6208398))

(assert (=> bs!1201605 m!6208398))

(assert (=> bs!1201605 m!6208400))

(assert (=> d!1664178 d!1664208))

(declare-fun d!1664210 () Bool)

(declare-fun res!2191887 () Bool)

(declare-fun e!3211236 () Bool)

(assert (=> d!1664210 (=> res!2191887 e!3211236)))

(assert (=> d!1664210 (= res!2191887 ((_ is ElementMatch!14501) (regOne!29514 expr!117)))))

(assert (=> d!1664210 (= (validRegex!6356 (regOne!29514 expr!117)) e!3211236)))

(declare-fun b!5151043 () Bool)

(declare-fun res!2191888 () Bool)

(declare-fun e!3211234 () Bool)

(assert (=> b!5151043 (=> (not res!2191888) (not e!3211234))))

(declare-fun call!360520 () Bool)

(assert (=> b!5151043 (= res!2191888 call!360520)))

(declare-fun e!3211235 () Bool)

(assert (=> b!5151043 (= e!3211235 e!3211234)))

(declare-fun b!5151044 () Bool)

(declare-fun e!3211238 () Bool)

(declare-fun call!360521 () Bool)

(assert (=> b!5151044 (= e!3211238 call!360521)))

(declare-fun b!5151045 () Bool)

(declare-fun call!360522 () Bool)

(assert (=> b!5151045 (= e!3211234 call!360522)))

(declare-fun c!886746 () Bool)

(declare-fun bm!360515 () Bool)

(declare-fun c!886747 () Bool)

(assert (=> bm!360515 (= call!360521 (validRegex!6356 (ite c!886747 (reg!14830 (regOne!29514 expr!117)) (ite c!886746 (regOne!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117))))))))

(declare-fun b!5151046 () Bool)

(declare-fun e!3211237 () Bool)

(assert (=> b!5151046 (= e!3211237 call!360522)))

(declare-fun b!5151047 () Bool)

(declare-fun e!3211239 () Bool)

(assert (=> b!5151047 (= e!3211239 e!3211238)))

(declare-fun res!2191885 () Bool)

(assert (=> b!5151047 (= res!2191885 (not (nullable!4857 (reg!14830 (regOne!29514 expr!117)))))))

(assert (=> b!5151047 (=> (not res!2191885) (not e!3211238))))

(declare-fun b!5151048 () Bool)

(assert (=> b!5151048 (= e!3211239 e!3211235)))

(assert (=> b!5151048 (= c!886746 ((_ is Union!14501) (regOne!29514 expr!117)))))

(declare-fun bm!360516 () Bool)

(assert (=> bm!360516 (= call!360520 call!360521)))

(declare-fun b!5151049 () Bool)

(declare-fun e!3211233 () Bool)

(assert (=> b!5151049 (= e!3211233 e!3211237)))

(declare-fun res!2191886 () Bool)

(assert (=> b!5151049 (=> (not res!2191886) (not e!3211237))))

(assert (=> b!5151049 (= res!2191886 call!360520)))

(declare-fun bm!360517 () Bool)

(assert (=> bm!360517 (= call!360522 (validRegex!6356 (ite c!886746 (regTwo!29515 (regOne!29514 expr!117)) (regTwo!29514 (regOne!29514 expr!117)))))))

(declare-fun b!5151050 () Bool)

(assert (=> b!5151050 (= e!3211236 e!3211239)))

(assert (=> b!5151050 (= c!886747 ((_ is Star!14501) (regOne!29514 expr!117)))))

(declare-fun b!5151051 () Bool)

(declare-fun res!2191884 () Bool)

(assert (=> b!5151051 (=> res!2191884 e!3211233)))

(assert (=> b!5151051 (= res!2191884 (not ((_ is Concat!23346) (regOne!29514 expr!117))))))

(assert (=> b!5151051 (= e!3211235 e!3211233)))

(assert (= (and d!1664210 (not res!2191887)) b!5151050))

(assert (= (and b!5151050 c!886747) b!5151047))

(assert (= (and b!5151050 (not c!886747)) b!5151048))

(assert (= (and b!5151047 res!2191885) b!5151044))

(assert (= (and b!5151048 c!886746) b!5151043))

(assert (= (and b!5151048 (not c!886746)) b!5151051))

(assert (= (and b!5151043 res!2191888) b!5151045))

(assert (= (and b!5151051 (not res!2191884)) b!5151049))

(assert (= (and b!5151049 res!2191886) b!5151046))

(assert (= (or b!5151045 b!5151046) bm!360517))

(assert (= (or b!5151043 b!5151049) bm!360516))

(assert (= (or b!5151044 bm!360516) bm!360515))

(declare-fun m!6208612 () Bool)

(assert (=> bm!360515 m!6208612))

(declare-fun m!6208614 () Bool)

(assert (=> b!5151047 m!6208614))

(declare-fun m!6208616 () Bool)

(assert (=> bm!360517 m!6208616))

(assert (=> d!1664178 d!1664210))

(declare-fun d!1664212 () Bool)

(assert (=> d!1664212 (= ($colon$colon!1223 (exprs!4385 ctx!100) (ite (or c!886714 c!886711) (regTwo!29514 (regTwo!29514 expr!117)) (regTwo!29514 expr!117))) (Cons!59793 (ite (or c!886714 c!886711) (regTwo!29514 (regTwo!29514 expr!117)) (regTwo!29514 expr!117)) (exprs!4385 ctx!100)))))

(assert (=> bm!360477 d!1664212))

(declare-fun d!1664214 () Bool)

(declare-fun res!2191898 () Bool)

(declare-fun e!3211251 () Bool)

(assert (=> d!1664214 (=> res!2191898 e!3211251)))

(assert (=> d!1664214 (= res!2191898 ((_ is Nil!59793) (exprs!4385 ctx!100)))))

(assert (=> d!1664214 (= (forall!13979 (exprs!4385 ctx!100) lambda!257093) e!3211251)))

(declare-fun b!5151065 () Bool)

(declare-fun e!3211252 () Bool)

(assert (=> b!5151065 (= e!3211251 e!3211252)))

(declare-fun res!2191899 () Bool)

(assert (=> b!5151065 (=> (not res!2191899) (not e!3211252))))

(declare-fun dynLambda!23796 (Int Regex!14501) Bool)

(assert (=> b!5151065 (= res!2191899 (dynLambda!23796 lambda!257093 (h!66241 (exprs!4385 ctx!100))))))

(declare-fun b!5151066 () Bool)

(assert (=> b!5151066 (= e!3211252 (forall!13979 (t!372964 (exprs!4385 ctx!100)) lambda!257093))))

(assert (= (and d!1664214 (not res!2191898)) b!5151065))

(assert (= (and b!5151065 res!2191899) b!5151066))

(declare-fun b_lambda!200385 () Bool)

(assert (=> (not b_lambda!200385) (not b!5151065)))

(declare-fun m!6208634 () Bool)

(assert (=> b!5151065 m!6208634))

(declare-fun m!6208636 () Bool)

(assert (=> b!5151066 m!6208636))

(assert (=> d!1664128 d!1664214))

(declare-fun b!5151102 () Bool)

(declare-fun e!3211285 () Bool)

(declare-fun e!3211288 () Bool)

(assert (=> b!5151102 (= e!3211285 e!3211288)))

(declare-fun res!2191928 () Bool)

(declare-fun call!360537 () Bool)

(assert (=> b!5151102 (= res!2191928 call!360537)))

(assert (=> b!5151102 (=> (not res!2191928) (not e!3211288))))

(declare-fun b!5151103 () Bool)

(declare-fun call!360536 () Bool)

(assert (=> b!5151103 (= e!3211288 call!360536)))

(declare-fun d!1664220 () Bool)

(declare-fun res!2191926 () Bool)

(declare-fun e!3211287 () Bool)

(assert (=> d!1664220 (=> res!2191926 e!3211287)))

(assert (=> d!1664220 (= res!2191926 ((_ is EmptyExpr!14501) (regOne!29514 expr!117)))))

(assert (=> d!1664220 (= (nullableFct!1335 (regOne!29514 expr!117)) e!3211287)))

(declare-fun bm!360531 () Bool)

(declare-fun c!886755 () Bool)

(assert (=> bm!360531 (= call!360536 (nullable!4857 (ite c!886755 (regOne!29515 (regOne!29514 expr!117)) (regTwo!29514 (regOne!29514 expr!117)))))))

(declare-fun b!5151104 () Bool)

(declare-fun e!3211286 () Bool)

(assert (=> b!5151104 (= e!3211285 e!3211286)))

(declare-fun res!2191927 () Bool)

(assert (=> b!5151104 (= res!2191927 call!360536)))

(assert (=> b!5151104 (=> res!2191927 e!3211286)))

(declare-fun b!5151105 () Bool)

(declare-fun e!3211284 () Bool)

(assert (=> b!5151105 (= e!3211284 e!3211285)))

(assert (=> b!5151105 (= c!886755 ((_ is Union!14501) (regOne!29514 expr!117)))))

(declare-fun b!5151106 () Bool)

(declare-fun e!3211283 () Bool)

(assert (=> b!5151106 (= e!3211287 e!3211283)))

(declare-fun res!2191925 () Bool)

(assert (=> b!5151106 (=> (not res!2191925) (not e!3211283))))

(assert (=> b!5151106 (= res!2191925 (and (not ((_ is EmptyLang!14501) (regOne!29514 expr!117))) (not ((_ is ElementMatch!14501) (regOne!29514 expr!117)))))))

(declare-fun b!5151107 () Bool)

(assert (=> b!5151107 (= e!3211286 call!360537)))

(declare-fun bm!360532 () Bool)

(assert (=> bm!360532 (= call!360537 (nullable!4857 (ite c!886755 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117)))))))

(declare-fun b!5151108 () Bool)

(assert (=> b!5151108 (= e!3211283 e!3211284)))

(declare-fun res!2191929 () Bool)

(assert (=> b!5151108 (=> res!2191929 e!3211284)))

(assert (=> b!5151108 (= res!2191929 ((_ is Star!14501) (regOne!29514 expr!117)))))

(assert (= (and d!1664220 (not res!2191926)) b!5151106))

(assert (= (and b!5151106 res!2191925) b!5151108))

(assert (= (and b!5151108 (not res!2191929)) b!5151105))

(assert (= (and b!5151105 c!886755) b!5151104))

(assert (= (and b!5151105 (not c!886755)) b!5151102))

(assert (= (and b!5151104 (not res!2191927)) b!5151107))

(assert (= (and b!5151102 res!2191928) b!5151103))

(assert (= (or b!5151107 b!5151102) bm!360532))

(assert (= (or b!5151104 b!5151103) bm!360531))

(declare-fun m!6208642 () Bool)

(assert (=> bm!360531 m!6208642))

(declare-fun m!6208644 () Bool)

(assert (=> bm!360532 m!6208644))

(assert (=> d!1664124 d!1664220))

(declare-fun d!1664224 () Bool)

(declare-fun res!2191930 () Bool)

(declare-fun e!3211289 () Bool)

(assert (=> d!1664224 (=> res!2191930 e!3211289)))

(assert (=> d!1664224 (= res!2191930 ((_ is Nil!59793) (exprs!4385 lt!2121416)))))

(assert (=> d!1664224 (= (forall!13979 (exprs!4385 lt!2121416) lambda!257115) e!3211289)))

(declare-fun b!5151109 () Bool)

(declare-fun e!3211290 () Bool)

(assert (=> b!5151109 (= e!3211289 e!3211290)))

(declare-fun res!2191931 () Bool)

(assert (=> b!5151109 (=> (not res!2191931) (not e!3211290))))

(assert (=> b!5151109 (= res!2191931 (dynLambda!23796 lambda!257115 (h!66241 (exprs!4385 lt!2121416))))))

(declare-fun b!5151110 () Bool)

(assert (=> b!5151110 (= e!3211290 (forall!13979 (t!372964 (exprs!4385 lt!2121416)) lambda!257115))))

(assert (= (and d!1664224 (not res!2191930)) b!5151109))

(assert (= (and b!5151109 res!2191931) b!5151110))

(declare-fun b_lambda!200387 () Bool)

(assert (=> (not b_lambda!200387) (not b!5151109)))

(declare-fun m!6208648 () Bool)

(assert (=> b!5151109 m!6208648))

(declare-fun m!6208650 () Bool)

(assert (=> b!5151110 m!6208650))

(assert (=> d!1664180 d!1664224))

(declare-fun d!1664228 () Bool)

(assert (=> d!1664228 (= (isEmpty!32066 (getLanguageWitness!966 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296))) (not ((_ is Some!14804) (getLanguageWitness!966 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296)))))))

(assert (=> d!1664174 d!1664228))

(declare-fun bs!1201624 () Bool)

(declare-fun d!1664230 () Bool)

(assert (= bs!1201624 (and d!1664230 d!1664194)))

(declare-fun lambda!257134 () Int)

(assert (=> bs!1201624 (not (= lambda!257134 lambda!257121))))

(declare-fun bs!1201625 () Bool)

(assert (= bs!1201625 (and d!1664230 b!5150934)))

(assert (=> bs!1201625 (= lambda!257134 lambda!257110)))

(declare-fun bs!1201626 () Bool)

(assert (= bs!1201626 (and d!1664230 d!1664172)))

(assert (=> bs!1201626 (not (= lambda!257134 lambda!257109))))

(declare-fun bs!1201627 () Bool)

(assert (= bs!1201627 (and d!1664230 d!1664192)))

(assert (=> bs!1201627 (not (= lambda!257134 lambda!257118))))

(declare-fun bs!1201628 () Bool)

(assert (= bs!1201628 (and d!1664230 b!5150935)))

(assert (=> bs!1201628 (= lambda!257134 lambda!257111)))

(declare-fun bs!1201629 () Bool)

(assert (= bs!1201629 (and d!1664230 b!5150937)))

(assert (=> bs!1201629 (= lambda!257134 lambda!257114)))

(declare-fun bs!1201630 () Bool)

(assert (= bs!1201630 (and d!1664230 d!1664174)))

(assert (=> bs!1201630 (not (= lambda!257134 lambda!257112))))

(declare-fun bs!1201631 () Bool)

(assert (= bs!1201631 (and d!1664230 b!5150936)))

(assert (=> bs!1201631 (= lambda!257134 lambda!257113)))

(declare-fun lt!2121511 () Option!14805)

(declare-fun isDefined!11539 (Option!14805) Bool)

(declare-fun exists!1837 ((InoxSet Context!7770) Int) Bool)

(assert (=> d!1664230 (= (isDefined!11539 lt!2121511) (exists!1837 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296) lambda!257134))))

(declare-fun e!3211295 () Option!14805)

(assert (=> d!1664230 (= lt!2121511 e!3211295)))

(declare-fun c!886764 () Bool)

(assert (=> d!1664230 (= c!886764 (exists!1837 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296) lambda!257134))))

(assert (=> d!1664230 (= (getLanguageWitness!966 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296)) lt!2121511)))

(declare-fun b!5151117 () Bool)

(declare-fun getLanguageWitness!968 (Context!7770) Option!14805)

(declare-fun getWitness!846 ((InoxSet Context!7770) Int) Context!7770)

(assert (=> b!5151117 (= e!3211295 (getLanguageWitness!968 (getWitness!846 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296) lambda!257134)))))

(declare-fun b!5151118 () Bool)

(assert (=> b!5151118 (= e!3211295 None!14804)))

(assert (= (and d!1664230 c!886764) b!5151117))

(assert (= (and d!1664230 (not c!886764)) b!5151118))

(declare-fun m!6208664 () Bool)

(assert (=> d!1664230 m!6208664))

(assert (=> d!1664230 m!6208398))

(declare-fun m!6208666 () Bool)

(assert (=> d!1664230 m!6208666))

(assert (=> d!1664230 m!6208398))

(assert (=> d!1664230 m!6208666))

(assert (=> b!5151117 m!6208398))

(declare-fun m!6208668 () Bool)

(assert (=> b!5151117 m!6208668))

(assert (=> b!5151117 m!6208668))

(declare-fun m!6208670 () Bool)

(assert (=> b!5151117 m!6208670))

(assert (=> d!1664174 d!1664230))

(declare-fun lt!2121517 () Bool)

(declare-fun d!1664240 () Bool)

(assert (=> d!1664240 (= lt!2121517 (forall!13981 (toList!8401 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296)) lambda!257112))))

(declare-fun choose!38108 ((InoxSet Context!7770) Int) Bool)

(assert (=> d!1664240 (= lt!2121517 (choose!38108 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296) lambda!257112))))

(assert (=> d!1664240 (= (forall!13980 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296) lambda!257112) lt!2121517)))

(declare-fun bs!1201641 () Bool)

(assert (= bs!1201641 d!1664240))

(assert (=> bs!1201641 m!6208398))

(assert (=> bs!1201641 m!6208544))

(assert (=> bs!1201641 m!6208544))

(declare-fun m!6208678 () Bool)

(assert (=> bs!1201641 m!6208678))

(assert (=> bs!1201641 m!6208398))

(declare-fun m!6208680 () Bool)

(assert (=> bs!1201641 m!6208680))

(assert (=> d!1664174 d!1664240))

(declare-fun d!1664248 () Bool)

(declare-fun e!3211313 () Bool)

(assert (=> d!1664248 e!3211313))

(declare-fun res!2191940 () Bool)

(assert (=> d!1664248 (=> (not res!2191940) (not e!3211313))))

(declare-fun lt!2121520 () List!59920)

(declare-fun noDuplicate!1115 (List!59920) Bool)

(assert (=> d!1664248 (= res!2191940 (noDuplicate!1115 lt!2121520))))

(declare-fun choose!38109 ((InoxSet Context!7770)) List!59920)

(assert (=> d!1664248 (= lt!2121520 (choose!38109 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296)))))

(assert (=> d!1664248 (= (toList!8401 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296)) lt!2121520)))

(declare-fun b!5151141 () Bool)

(declare-fun content!10592 (List!59920) (InoxSet Context!7770))

(assert (=> b!5151141 (= e!3211313 (= (content!10592 lt!2121520) (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296)))))

(assert (= (and d!1664248 res!2191940) b!5151141))

(declare-fun m!6208696 () Bool)

(assert (=> d!1664248 m!6208696))

(assert (=> d!1664248 m!6208394))

(declare-fun m!6208700 () Bool)

(assert (=> d!1664248 m!6208700))

(declare-fun m!6208702 () Bool)

(assert (=> b!5151141 m!6208702))

(assert (=> bm!360486 d!1664248))

(declare-fun b!5151151 () Bool)

(declare-fun e!3211326 () (InoxSet Context!7770))

(declare-fun call!360554 () (InoxSet Context!7770))

(declare-fun call!360551 () (InoxSet Context!7770))

(assert (=> b!5151151 (= e!3211326 ((_ map or) call!360554 call!360551))))

(declare-fun bm!360545 () Bool)

(declare-fun call!360555 () List!59917)

(declare-fun c!886778 () Bool)

(assert (=> bm!360545 (= call!360551 (derivationStepZipperDown!168 (ite c!886778 (regTwo!29515 (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117)))))) (regOne!29514 (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117))))))) (ite c!886778 (ite (or c!886715 c!886714) ctx!100 (Context!7771 call!360483)) (Context!7771 call!360555)) a!1296))))

(declare-fun c!886774 () Bool)

(declare-fun c!886777 () Bool)

(declare-fun bm!360546 () Bool)

(declare-fun call!360553 () List!59917)

(assert (=> bm!360546 (= call!360554 (derivationStepZipperDown!168 (ite c!886778 (regOne!29515 (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117)))))) (ite c!886777 (regTwo!29514 (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117)))))) (ite c!886774 (regOne!29514 (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117)))))) (reg!14830 (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117))))))))) (ite (or c!886778 c!886777) (ite (or c!886715 c!886714) ctx!100 (Context!7771 call!360483)) (Context!7771 call!360553)) a!1296))))

(declare-fun b!5151152 () Bool)

(declare-fun e!3211321 () (InoxSet Context!7770))

(declare-fun call!360550 () (InoxSet Context!7770))

(assert (=> b!5151152 (= e!3211321 ((_ map or) call!360551 call!360550))))

(declare-fun b!5151153 () Bool)

(declare-fun e!3211322 () (InoxSet Context!7770))

(declare-fun call!360552 () (InoxSet Context!7770))

(assert (=> b!5151153 (= e!3211322 call!360552)))

(declare-fun b!5151154 () Bool)

(declare-fun e!3211323 () Bool)

(assert (=> b!5151154 (= c!886777 e!3211323)))

(declare-fun res!2191946 () Bool)

(assert (=> b!5151154 (=> (not res!2191946) (not e!3211323))))

(assert (=> b!5151154 (= res!2191946 ((_ is Concat!23346) (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117)))))))))

(assert (=> b!5151154 (= e!3211326 e!3211321)))

(declare-fun c!886776 () Bool)

(declare-fun b!5151155 () Bool)

(assert (=> b!5151155 (= c!886776 ((_ is Star!14501) (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117)))))))))

(declare-fun e!3211324 () (InoxSet Context!7770))

(assert (=> b!5151155 (= e!3211322 e!3211324)))

(declare-fun b!5151156 () Bool)

(assert (=> b!5151156 (= e!3211324 call!360552)))

(declare-fun b!5151157 () Bool)

(assert (=> b!5151157 (= e!3211321 e!3211322)))

(assert (=> b!5151157 (= c!886774 ((_ is Concat!23346) (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117)))))))))

(declare-fun b!5151158 () Bool)

(assert (=> b!5151158 (= e!3211324 ((as const (Array Context!7770 Bool)) false))))

(declare-fun bm!360547 () Bool)

(assert (=> bm!360547 (= call!360555 ($colon$colon!1223 (exprs!4385 (ite (or c!886715 c!886714) ctx!100 (Context!7771 call!360483))) (ite (or c!886777 c!886774) (regTwo!29514 (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117)))))) (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117))))))))))

(declare-fun bm!360548 () Bool)

(assert (=> bm!360548 (= call!360552 call!360550)))

(declare-fun b!5151159 () Bool)

(declare-fun e!3211325 () (InoxSet Context!7770))

(assert (=> b!5151159 (= e!3211325 e!3211326)))

(assert (=> b!5151159 (= c!886778 ((_ is Union!14501) (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117)))))))))

(declare-fun b!5151160 () Bool)

(assert (=> b!5151160 (= e!3211323 (nullable!4857 (regOne!29514 (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117))))))))))

(declare-fun bm!360549 () Bool)

(assert (=> bm!360549 (= call!360550 call!360554)))

(declare-fun c!886775 () Bool)

(declare-fun d!1664254 () Bool)

(assert (=> d!1664254 (= c!886775 (and ((_ is ElementMatch!14501) (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117)))))) (= (c!886652 (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117)))))) a!1296)))))

(assert (=> d!1664254 (= (derivationStepZipperDown!168 (ite c!886715 (regOne!29515 (regTwo!29514 expr!117)) (ite c!886714 (regTwo!29514 (regTwo!29514 expr!117)) (ite c!886711 (regOne!29514 (regTwo!29514 expr!117)) (reg!14830 (regTwo!29514 expr!117))))) (ite (or c!886715 c!886714) ctx!100 (Context!7771 call!360483)) a!1296) e!3211325)))

(declare-fun b!5151161 () Bool)

(assert (=> b!5151161 (= e!3211325 (store ((as const (Array Context!7770 Bool)) false) (ite (or c!886715 c!886714) ctx!100 (Context!7771 call!360483)) true))))

(declare-fun bm!360550 () Bool)

(assert (=> bm!360550 (= call!360553 call!360555)))

(assert (= (and d!1664254 c!886775) b!5151161))

(assert (= (and d!1664254 (not c!886775)) b!5151159))

(assert (= (and b!5151159 c!886778) b!5151151))

(assert (= (and b!5151159 (not c!886778)) b!5151154))

(assert (= (and b!5151154 res!2191946) b!5151160))

(assert (= (and b!5151154 c!886777) b!5151152))

(assert (= (and b!5151154 (not c!886777)) b!5151157))

(assert (= (and b!5151157 c!886774) b!5151153))

(assert (= (and b!5151157 (not c!886774)) b!5151155))

(assert (= (and b!5151155 c!886776) b!5151156))

(assert (= (and b!5151155 (not c!886776)) b!5151158))

(assert (= (or b!5151153 b!5151156) bm!360550))

(assert (= (or b!5151153 b!5151156) bm!360548))

(assert (= (or b!5151152 bm!360550) bm!360547))

(assert (= (or b!5151152 bm!360548) bm!360549))

(assert (= (or b!5151151 b!5151152) bm!360545))

(assert (= (or b!5151151 bm!360549) bm!360546))

(declare-fun m!6208710 () Bool)

(assert (=> b!5151161 m!6208710))

(declare-fun m!6208712 () Bool)

(assert (=> b!5151160 m!6208712))

(declare-fun m!6208714 () Bool)

(assert (=> bm!360547 m!6208714))

(declare-fun m!6208716 () Bool)

(assert (=> bm!360546 m!6208716))

(declare-fun m!6208718 () Bool)

(assert (=> bm!360545 m!6208718))

(assert (=> bm!360476 d!1664254))

(declare-fun d!1664260 () Bool)

(assert (=> d!1664260 (= (isEmpty!32066 (getLanguageWitness!966 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296))) (not ((_ is Some!14804) (getLanguageWitness!966 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296)))))))

(assert (=> d!1664172 d!1664260))

(declare-fun bs!1201642 () Bool)

(declare-fun d!1664262 () Bool)

(assert (= bs!1201642 (and d!1664262 d!1664194)))

(declare-fun lambda!257138 () Int)

(assert (=> bs!1201642 (not (= lambda!257138 lambda!257121))))

(declare-fun bs!1201643 () Bool)

(assert (= bs!1201643 (and d!1664262 b!5150934)))

(assert (=> bs!1201643 (= lambda!257138 lambda!257110)))

(declare-fun bs!1201644 () Bool)

(assert (= bs!1201644 (and d!1664262 d!1664172)))

(assert (=> bs!1201644 (not (= lambda!257138 lambda!257109))))

(declare-fun bs!1201645 () Bool)

(assert (= bs!1201645 (and d!1664262 b!5150935)))

(assert (=> bs!1201645 (= lambda!257138 lambda!257111)))

(declare-fun bs!1201646 () Bool)

(assert (= bs!1201646 (and d!1664262 b!5150937)))

(assert (=> bs!1201646 (= lambda!257138 lambda!257114)))

(declare-fun bs!1201647 () Bool)

(assert (= bs!1201647 (and d!1664262 d!1664174)))

(assert (=> bs!1201647 (not (= lambda!257138 lambda!257112))))

(declare-fun bs!1201648 () Bool)

(assert (= bs!1201648 (and d!1664262 b!5150936)))

(assert (=> bs!1201648 (= lambda!257138 lambda!257113)))

(declare-fun bs!1201649 () Bool)

(assert (= bs!1201649 (and d!1664262 d!1664230)))

(assert (=> bs!1201649 (= lambda!257138 lambda!257134)))

(declare-fun bs!1201650 () Bool)

(assert (= bs!1201650 (and d!1664262 d!1664192)))

(assert (=> bs!1201650 (not (= lambda!257138 lambda!257118))))

(declare-fun lt!2121521 () Option!14805)

(assert (=> d!1664262 (= (isDefined!11539 lt!2121521) (exists!1837 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296) lambda!257138))))

(declare-fun e!3211327 () Option!14805)

(assert (=> d!1664262 (= lt!2121521 e!3211327)))

(declare-fun c!886779 () Bool)

(assert (=> d!1664262 (= c!886779 (exists!1837 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296) lambda!257138))))

(assert (=> d!1664262 (= (getLanguageWitness!966 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296)) lt!2121521)))

(declare-fun b!5151162 () Bool)

(assert (=> b!5151162 (= e!3211327 (getLanguageWitness!968 (getWitness!846 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296) lambda!257138)))))

(declare-fun b!5151163 () Bool)

(assert (=> b!5151163 (= e!3211327 None!14804)))

(assert (= (and d!1664262 c!886779) b!5151162))

(assert (= (and d!1664262 (not c!886779)) b!5151163))

(declare-fun m!6208720 () Bool)

(assert (=> d!1664262 m!6208720))

(assert (=> d!1664262 m!6208394))

(declare-fun m!6208722 () Bool)

(assert (=> d!1664262 m!6208722))

(assert (=> d!1664262 m!6208394))

(assert (=> d!1664262 m!6208722))

(assert (=> b!5151162 m!6208394))

(declare-fun m!6208724 () Bool)

(assert (=> b!5151162 m!6208724))

(assert (=> b!5151162 m!6208724))

(declare-fun m!6208726 () Bool)

(assert (=> b!5151162 m!6208726))

(assert (=> d!1664172 d!1664262))

(declare-fun lt!2121522 () Bool)

(declare-fun d!1664264 () Bool)

(assert (=> d!1664264 (= lt!2121522 (forall!13981 (toList!8401 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296)) lambda!257109))))

(assert (=> d!1664264 (= lt!2121522 (choose!38108 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296) lambda!257109))))

(assert (=> d!1664264 (= (forall!13980 (derivationStepZipperDown!168 (regTwo!29514 expr!117) ctx!100 a!1296) lambda!257109) lt!2121522)))

(declare-fun bs!1201651 () Bool)

(assert (= bs!1201651 d!1664264))

(assert (=> bs!1201651 m!6208394))

(assert (=> bs!1201651 m!6208530))

(assert (=> bs!1201651 m!6208530))

(declare-fun m!6208728 () Bool)

(assert (=> bs!1201651 m!6208728))

(assert (=> bs!1201651 m!6208394))

(declare-fun m!6208730 () Bool)

(assert (=> bs!1201651 m!6208730))

(assert (=> d!1664172 d!1664264))

(declare-fun b!5151164 () Bool)

(declare-fun e!3211333 () (InoxSet Context!7770))

(declare-fun call!360560 () (InoxSet Context!7770))

(declare-fun call!360557 () (InoxSet Context!7770))

(assert (=> b!5151164 (= e!3211333 ((_ map or) call!360560 call!360557))))

(declare-fun c!886784 () Bool)

(declare-fun bm!360551 () Bool)

(declare-fun call!360561 () List!59917)

(assert (=> bm!360551 (= call!360557 (derivationStepZipperDown!168 (ite c!886784 (regTwo!29515 (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117)))))) (regOne!29514 (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117))))))) (ite c!886784 (ite (or c!886732 c!886731) lt!2121416 (Context!7771 call!360497)) (Context!7771 call!360561)) a!1296))))

(declare-fun call!360559 () List!59917)

(declare-fun bm!360552 () Bool)

(declare-fun c!886783 () Bool)

(declare-fun c!886780 () Bool)

(assert (=> bm!360552 (= call!360560 (derivationStepZipperDown!168 (ite c!886784 (regOne!29515 (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117)))))) (ite c!886783 (regTwo!29514 (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117)))))) (ite c!886780 (regOne!29514 (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117)))))) (reg!14830 (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117))))))))) (ite (or c!886784 c!886783) (ite (or c!886732 c!886731) lt!2121416 (Context!7771 call!360497)) (Context!7771 call!360559)) a!1296))))

(declare-fun b!5151165 () Bool)

(declare-fun e!3211328 () (InoxSet Context!7770))

(declare-fun call!360556 () (InoxSet Context!7770))

(assert (=> b!5151165 (= e!3211328 ((_ map or) call!360557 call!360556))))

(declare-fun b!5151166 () Bool)

(declare-fun e!3211329 () (InoxSet Context!7770))

(declare-fun call!360558 () (InoxSet Context!7770))

(assert (=> b!5151166 (= e!3211329 call!360558)))

(declare-fun b!5151167 () Bool)

(declare-fun e!3211330 () Bool)

(assert (=> b!5151167 (= c!886783 e!3211330)))

(declare-fun res!2191947 () Bool)

(assert (=> b!5151167 (=> (not res!2191947) (not e!3211330))))

(assert (=> b!5151167 (= res!2191947 ((_ is Concat!23346) (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117)))))))))

(assert (=> b!5151167 (= e!3211333 e!3211328)))

(declare-fun c!886782 () Bool)

(declare-fun b!5151168 () Bool)

(assert (=> b!5151168 (= c!886782 ((_ is Star!14501) (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117)))))))))

(declare-fun e!3211331 () (InoxSet Context!7770))

(assert (=> b!5151168 (= e!3211329 e!3211331)))

(declare-fun b!5151169 () Bool)

(assert (=> b!5151169 (= e!3211331 call!360558)))

(declare-fun b!5151170 () Bool)

(assert (=> b!5151170 (= e!3211328 e!3211329)))

(assert (=> b!5151170 (= c!886780 ((_ is Concat!23346) (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117)))))))))

(declare-fun b!5151171 () Bool)

(assert (=> b!5151171 (= e!3211331 ((as const (Array Context!7770 Bool)) false))))

(declare-fun bm!360553 () Bool)

(assert (=> bm!360553 (= call!360561 ($colon$colon!1223 (exprs!4385 (ite (or c!886732 c!886731) lt!2121416 (Context!7771 call!360497))) (ite (or c!886783 c!886780) (regTwo!29514 (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117)))))) (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117))))))))))

(declare-fun bm!360554 () Bool)

(assert (=> bm!360554 (= call!360558 call!360556)))

(declare-fun b!5151172 () Bool)

(declare-fun e!3211332 () (InoxSet Context!7770))

(assert (=> b!5151172 (= e!3211332 e!3211333)))

(assert (=> b!5151172 (= c!886784 ((_ is Union!14501) (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117)))))))))

(declare-fun b!5151173 () Bool)

(assert (=> b!5151173 (= e!3211330 (nullable!4857 (regOne!29514 (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117))))))))))

(declare-fun bm!360555 () Bool)

(assert (=> bm!360555 (= call!360556 call!360560)))

(declare-fun d!1664266 () Bool)

(declare-fun c!886781 () Bool)

(assert (=> d!1664266 (= c!886781 (and ((_ is ElementMatch!14501) (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117)))))) (= (c!886652 (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117)))))) a!1296)))))

(assert (=> d!1664266 (= (derivationStepZipperDown!168 (ite c!886732 (regOne!29515 (regOne!29514 expr!117)) (ite c!886731 (regTwo!29514 (regOne!29514 expr!117)) (ite c!886728 (regOne!29514 (regOne!29514 expr!117)) (reg!14830 (regOne!29514 expr!117))))) (ite (or c!886732 c!886731) lt!2121416 (Context!7771 call!360497)) a!1296) e!3211332)))

(declare-fun b!5151174 () Bool)

(assert (=> b!5151174 (= e!3211332 (store ((as const (Array Context!7770 Bool)) false) (ite (or c!886732 c!886731) lt!2121416 (Context!7771 call!360497)) true))))

(declare-fun bm!360556 () Bool)

(assert (=> bm!360556 (= call!360559 call!360561)))

(assert (= (and d!1664266 c!886781) b!5151174))

(assert (= (and d!1664266 (not c!886781)) b!5151172))

(assert (= (and b!5151172 c!886784) b!5151164))

(assert (= (and b!5151172 (not c!886784)) b!5151167))

(assert (= (and b!5151167 res!2191947) b!5151173))

(assert (= (and b!5151167 c!886783) b!5151165))

(assert (= (and b!5151167 (not c!886783)) b!5151170))

(assert (= (and b!5151170 c!886780) b!5151166))

(assert (= (and b!5151170 (not c!886780)) b!5151168))

(assert (= (and b!5151168 c!886782) b!5151169))

(assert (= (and b!5151168 (not c!886782)) b!5151171))

(assert (= (or b!5151166 b!5151169) bm!360556))

(assert (= (or b!5151166 b!5151169) bm!360554))

(assert (= (or b!5151165 bm!360556) bm!360553))

(assert (= (or b!5151165 bm!360554) bm!360555))

(assert (= (or b!5151164 b!5151165) bm!360551))

(assert (= (or b!5151164 bm!360555) bm!360552))

(declare-fun m!6208732 () Bool)

(assert (=> b!5151174 m!6208732))

(declare-fun m!6208734 () Bool)

(assert (=> b!5151173 m!6208734))

(declare-fun m!6208736 () Bool)

(assert (=> bm!360553 m!6208736))

(declare-fun m!6208738 () Bool)

(assert (=> bm!360552 m!6208738))

(declare-fun m!6208740 () Bool)

(assert (=> bm!360551 m!6208740))

(assert (=> bm!360490 d!1664266))

(declare-fun b!5151179 () Bool)

(declare-fun e!3211341 () (InoxSet Context!7770))

(declare-fun call!360566 () (InoxSet Context!7770))

(declare-fun call!360563 () (InoxSet Context!7770))

(assert (=> b!5151179 (= e!3211341 ((_ map or) call!360566 call!360563))))

(declare-fun call!360567 () List!59917)

(declare-fun bm!360557 () Bool)

(declare-fun c!886793 () Bool)

(assert (=> bm!360557 (= call!360563 (derivationStepZipperDown!168 (ite c!886793 (regTwo!29515 (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117)))) (regOne!29514 (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117))))) (ite c!886793 (ite c!886732 lt!2121416 (Context!7771 call!360499)) (Context!7771 call!360567)) a!1296))))

(declare-fun c!886789 () Bool)

(declare-fun call!360565 () List!59917)

(declare-fun c!886792 () Bool)

(declare-fun bm!360558 () Bool)

(assert (=> bm!360558 (= call!360566 (derivationStepZipperDown!168 (ite c!886793 (regOne!29515 (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117)))) (ite c!886792 (regTwo!29514 (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117)))) (ite c!886789 (regOne!29514 (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117)))) (reg!14830 (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117))))))) (ite (or c!886793 c!886792) (ite c!886732 lt!2121416 (Context!7771 call!360499)) (Context!7771 call!360565)) a!1296))))

(declare-fun b!5151180 () Bool)

(declare-fun e!3211336 () (InoxSet Context!7770))

(declare-fun call!360562 () (InoxSet Context!7770))

(assert (=> b!5151180 (= e!3211336 ((_ map or) call!360563 call!360562))))

(declare-fun b!5151181 () Bool)

(declare-fun e!3211337 () (InoxSet Context!7770))

(declare-fun call!360564 () (InoxSet Context!7770))

(assert (=> b!5151181 (= e!3211337 call!360564)))

(declare-fun b!5151182 () Bool)

(declare-fun e!3211338 () Bool)

(assert (=> b!5151182 (= c!886792 e!3211338)))

(declare-fun res!2191948 () Bool)

(assert (=> b!5151182 (=> (not res!2191948) (not e!3211338))))

(assert (=> b!5151182 (= res!2191948 ((_ is Concat!23346) (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117)))))))

(assert (=> b!5151182 (= e!3211341 e!3211336)))

(declare-fun b!5151183 () Bool)

(declare-fun c!886791 () Bool)

(assert (=> b!5151183 (= c!886791 ((_ is Star!14501) (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117)))))))

(declare-fun e!3211339 () (InoxSet Context!7770))

(assert (=> b!5151183 (= e!3211337 e!3211339)))

(declare-fun b!5151184 () Bool)

(assert (=> b!5151184 (= e!3211339 call!360564)))

(declare-fun b!5151185 () Bool)

(assert (=> b!5151185 (= e!3211336 e!3211337)))

(assert (=> b!5151185 (= c!886789 ((_ is Concat!23346) (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117)))))))

(declare-fun b!5151186 () Bool)

(assert (=> b!5151186 (= e!3211339 ((as const (Array Context!7770 Bool)) false))))

(declare-fun bm!360559 () Bool)

(assert (=> bm!360559 (= call!360567 ($colon$colon!1223 (exprs!4385 (ite c!886732 lt!2121416 (Context!7771 call!360499))) (ite (or c!886792 c!886789) (regTwo!29514 (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117)))) (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117))))))))

(declare-fun bm!360560 () Bool)

(assert (=> bm!360560 (= call!360564 call!360562)))

(declare-fun b!5151187 () Bool)

(declare-fun e!3211340 () (InoxSet Context!7770))

(assert (=> b!5151187 (= e!3211340 e!3211341)))

(assert (=> b!5151187 (= c!886793 ((_ is Union!14501) (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117)))))))

(declare-fun b!5151188 () Bool)

(assert (=> b!5151188 (= e!3211338 (nullable!4857 (regOne!29514 (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117))))))))

(declare-fun bm!360561 () Bool)

(assert (=> bm!360561 (= call!360562 call!360566)))

(declare-fun c!886790 () Bool)

(declare-fun d!1664268 () Bool)

(assert (=> d!1664268 (= c!886790 (and ((_ is ElementMatch!14501) (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117)))) (= (c!886652 (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117)))) a!1296)))))

(assert (=> d!1664268 (= (derivationStepZipperDown!168 (ite c!886732 (regTwo!29515 (regOne!29514 expr!117)) (regOne!29514 (regOne!29514 expr!117))) (ite c!886732 lt!2121416 (Context!7771 call!360499)) a!1296) e!3211340)))

(declare-fun b!5151189 () Bool)

(assert (=> b!5151189 (= e!3211340 (store ((as const (Array Context!7770 Bool)) false) (ite c!886732 lt!2121416 (Context!7771 call!360499)) true))))

(declare-fun bm!360562 () Bool)

(assert (=> bm!360562 (= call!360565 call!360567)))

(assert (= (and d!1664268 c!886790) b!5151189))

(assert (= (and d!1664268 (not c!886790)) b!5151187))

(assert (= (and b!5151187 c!886793) b!5151179))

(assert (= (and b!5151187 (not c!886793)) b!5151182))

(assert (= (and b!5151182 res!2191948) b!5151188))

(assert (= (and b!5151182 c!886792) b!5151180))

(assert (= (and b!5151182 (not c!886792)) b!5151185))

(assert (= (and b!5151185 c!886789) b!5151181))

(assert (= (and b!5151185 (not c!886789)) b!5151183))

(assert (= (and b!5151183 c!886791) b!5151184))

(assert (= (and b!5151183 (not c!886791)) b!5151186))

(assert (= (or b!5151181 b!5151184) bm!360562))

(assert (= (or b!5151181 b!5151184) bm!360560))

(assert (= (or b!5151180 bm!360562) bm!360559))

(assert (= (or b!5151180 bm!360560) bm!360561))

(assert (= (or b!5151179 b!5151180) bm!360557))

(assert (= (or b!5151179 bm!360561) bm!360558))

(declare-fun m!6208742 () Bool)

(assert (=> b!5151189 m!6208742))

(declare-fun m!6208744 () Bool)

(assert (=> b!5151188 m!6208744))

(declare-fun m!6208746 () Bool)

(assert (=> bm!360559 m!6208746))

(declare-fun m!6208748 () Bool)

(assert (=> bm!360558 m!6208748))

(declare-fun m!6208750 () Bool)

(assert (=> bm!360557 m!6208750))

(assert (=> bm!360489 d!1664268))

(declare-fun d!1664270 () Bool)

(declare-fun res!2191952 () Bool)

(declare-fun e!3211345 () Bool)

(assert (=> d!1664270 (=> res!2191952 e!3211345)))

(assert (=> d!1664270 (= res!2191952 ((_ is ElementMatch!14501) (ite c!886699 (regTwo!29515 (regTwo!29514 expr!117)) (regTwo!29514 (regTwo!29514 expr!117)))))))

(assert (=> d!1664270 (= (validRegex!6356 (ite c!886699 (regTwo!29515 (regTwo!29514 expr!117)) (regTwo!29514 (regTwo!29514 expr!117)))) e!3211345)))

(declare-fun b!5151190 () Bool)

(declare-fun res!2191953 () Bool)

(declare-fun e!3211343 () Bool)

(assert (=> b!5151190 (=> (not res!2191953) (not e!3211343))))

(declare-fun call!360568 () Bool)

(assert (=> b!5151190 (= res!2191953 call!360568)))

(declare-fun e!3211344 () Bool)

(assert (=> b!5151190 (= e!3211344 e!3211343)))

(declare-fun b!5151191 () Bool)

(declare-fun e!3211347 () Bool)

(declare-fun call!360569 () Bool)

(assert (=> b!5151191 (= e!3211347 call!360569)))

(declare-fun b!5151192 () Bool)

(declare-fun call!360570 () Bool)

(assert (=> b!5151192 (= e!3211343 call!360570)))

(declare-fun c!886798 () Bool)

(declare-fun bm!360563 () Bool)

(declare-fun c!886799 () Bool)

(assert (=> bm!360563 (= call!360569 (validRegex!6356 (ite c!886799 (reg!14830 (ite c!886699 (regTwo!29515 (regTwo!29514 expr!117)) (regTwo!29514 (regTwo!29514 expr!117)))) (ite c!886798 (regOne!29515 (ite c!886699 (regTwo!29515 (regTwo!29514 expr!117)) (regTwo!29514 (regTwo!29514 expr!117)))) (regOne!29514 (ite c!886699 (regTwo!29515 (regTwo!29514 expr!117)) (regTwo!29514 (regTwo!29514 expr!117))))))))))

(declare-fun b!5151193 () Bool)

(declare-fun e!3211346 () Bool)

(assert (=> b!5151193 (= e!3211346 call!360570)))

(declare-fun b!5151194 () Bool)

(declare-fun e!3211348 () Bool)

(assert (=> b!5151194 (= e!3211348 e!3211347)))

(declare-fun res!2191950 () Bool)

(assert (=> b!5151194 (= res!2191950 (not (nullable!4857 (reg!14830 (ite c!886699 (regTwo!29515 (regTwo!29514 expr!117)) (regTwo!29514 (regTwo!29514 expr!117)))))))))

(assert (=> b!5151194 (=> (not res!2191950) (not e!3211347))))

(declare-fun b!5151195 () Bool)

(assert (=> b!5151195 (= e!3211348 e!3211344)))

(assert (=> b!5151195 (= c!886798 ((_ is Union!14501) (ite c!886699 (regTwo!29515 (regTwo!29514 expr!117)) (regTwo!29514 (regTwo!29514 expr!117)))))))

(declare-fun bm!360564 () Bool)

(assert (=> bm!360564 (= call!360568 call!360569)))

(declare-fun b!5151196 () Bool)

(declare-fun e!3211342 () Bool)

(assert (=> b!5151196 (= e!3211342 e!3211346)))

(declare-fun res!2191951 () Bool)

(assert (=> b!5151196 (=> (not res!2191951) (not e!3211346))))

(assert (=> b!5151196 (= res!2191951 call!360568)))

(declare-fun bm!360565 () Bool)

(assert (=> bm!360565 (= call!360570 (validRegex!6356 (ite c!886798 (regTwo!29515 (ite c!886699 (regTwo!29515 (regTwo!29514 expr!117)) (regTwo!29514 (regTwo!29514 expr!117)))) (regTwo!29514 (ite c!886699 (regTwo!29515 (regTwo!29514 expr!117)) (regTwo!29514 (regTwo!29514 expr!117)))))))))

(declare-fun b!5151197 () Bool)

(assert (=> b!5151197 (= e!3211345 e!3211348)))

(assert (=> b!5151197 (= c!886799 ((_ is Star!14501) (ite c!886699 (regTwo!29515 (regTwo!29514 expr!117)) (regTwo!29514 (regTwo!29514 expr!117)))))))

(declare-fun b!5151198 () Bool)

(declare-fun res!2191949 () Bool)

(assert (=> b!5151198 (=> res!2191949 e!3211342)))

(assert (=> b!5151198 (= res!2191949 (not ((_ is Concat!23346) (ite c!886699 (regTwo!29515 (regTwo!29514 expr!117)) (regTwo!29514 (regTwo!29514 expr!117))))))))

(assert (=> b!5151198 (= e!3211344 e!3211342)))

(assert (= (and d!1664270 (not res!2191952)) b!5151197))

(assert (= (and b!5151197 c!886799) b!5151194))

(assert (= (and b!5151197 (not c!886799)) b!5151195))

(assert (= (and b!5151194 res!2191950) b!5151191))

(assert (= (and b!5151195 c!886798) b!5151190))

(assert (= (and b!5151195 (not c!886798)) b!5151198))

(assert (= (and b!5151190 res!2191953) b!5151192))

(assert (= (and b!5151198 (not res!2191949)) b!5151196))

(assert (= (and b!5151196 res!2191951) b!5151193))

(assert (= (or b!5151192 b!5151193) bm!360565))

(assert (= (or b!5151190 b!5151196) bm!360564))

(assert (= (or b!5151191 bm!360564) bm!360563))

(declare-fun m!6208752 () Bool)

(assert (=> bm!360563 m!6208752))

(declare-fun m!6208754 () Bool)

(assert (=> b!5151194 m!6208754))

(declare-fun m!6208756 () Bool)

(assert (=> bm!360565 m!6208756))

(assert (=> bm!360462 d!1664270))

(declare-fun bs!1201661 () Bool)

(declare-fun d!1664272 () Bool)

(assert (= bs!1201661 (and d!1664272 d!1664128)))

(declare-fun lambda!257148 () Int)

(assert (=> bs!1201661 (not (= lambda!257148 lambda!257093))))

(declare-fun bs!1201662 () Bool)

(assert (= bs!1201662 (and d!1664272 d!1664160)))

(assert (=> bs!1201662 (not (= lambda!257148 lambda!257096))))

(declare-fun bs!1201663 () Bool)

(assert (= bs!1201663 (and d!1664272 d!1664180)))

(assert (=> bs!1201663 (not (= lambda!257148 lambda!257115))))

(assert (=> d!1664272 true))

(declare-fun order!26987 () Int)

(declare-fun dynLambda!23799 (Int Int) Int)

(assert (=> d!1664272 (< (dynLambda!23799 order!26987 lambda!257096) (dynLambda!23799 order!26987 lambda!257148))))

(assert (=> d!1664272 (= (exists!1835 (exprs!4385 ctx!100) lambda!257096) (not (forall!13979 (exprs!4385 ctx!100) lambda!257148)))))

(declare-fun bs!1201664 () Bool)

(assert (= bs!1201664 d!1664272))

(declare-fun m!6208766 () Bool)

(assert (=> bs!1201664 m!6208766))

(assert (=> d!1664160 d!1664272))

(assert (=> d!1664168 d!1664166))

(declare-fun d!1664276 () Bool)

(assert (=> d!1664276 (not (lostCause!1554 (regOne!29514 expr!117)))))

(assert (=> d!1664276 true))

(declare-fun _$98!282 () Unit!151213)

(assert (=> d!1664276 (= (choose!38102 (regOne!29514 expr!117)) _$98!282)))

(declare-fun bs!1201665 () Bool)

(assert (= bs!1201665 d!1664276))

(assert (=> bs!1201665 m!6208382))

(assert (=> d!1664168 d!1664276))

(assert (=> d!1664168 d!1664210))

(declare-fun d!1664278 () Bool)

(declare-fun e!3211350 () Bool)

(assert (=> d!1664278 e!3211350))

(declare-fun res!2191954 () Bool)

(assert (=> d!1664278 (=> (not res!2191954) (not e!3211350))))

(declare-fun lt!2121528 () List!59920)

(assert (=> d!1664278 (= res!2191954 (noDuplicate!1115 lt!2121528))))

(assert (=> d!1664278 (= lt!2121528 (choose!38109 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296)))))

(assert (=> d!1664278 (= (toList!8401 (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296)) lt!2121528)))

(declare-fun b!5151203 () Bool)

(assert (=> b!5151203 (= e!3211350 (= (content!10592 lt!2121528) (derivationStepZipperDown!168 (regOne!29514 expr!117) lt!2121416 a!1296)))))

(assert (= (and d!1664278 res!2191954) b!5151203))

(declare-fun m!6208768 () Bool)

(assert (=> d!1664278 m!6208768))

(assert (=> d!1664278 m!6208398))

(declare-fun m!6208770 () Bool)

(assert (=> d!1664278 m!6208770))

(declare-fun m!6208772 () Bool)

(assert (=> b!5151203 m!6208772))

(assert (=> bm!360488 d!1664278))

(declare-fun d!1664280 () Bool)

(assert (=> d!1664280 (= (nullable!4857 (regOne!29514 (regOne!29514 expr!117))) (nullableFct!1335 (regOne!29514 (regOne!29514 expr!117))))))

(declare-fun bs!1201667 () Bool)

(assert (= bs!1201667 d!1664280))

(declare-fun m!6208774 () Bool)

(assert (=> bs!1201667 m!6208774))

(assert (=> b!5150947 d!1664280))

(declare-fun bs!1201668 () Bool)

(declare-fun d!1664282 () Bool)

(assert (= bs!1201668 (and d!1664282 d!1664194)))

(declare-fun lambda!257151 () Int)

(assert (=> bs!1201668 (= (= (ite c!886727 lambda!257113 lambda!257114) lambda!257112) (= lambda!257151 lambda!257121))))

(declare-fun bs!1201669 () Bool)

(assert (= bs!1201669 (and d!1664282 b!5150934)))

(assert (=> bs!1201669 (not (= lambda!257151 lambda!257110))))

(declare-fun bs!1201670 () Bool)

(assert (= bs!1201670 (and d!1664282 d!1664262)))

(assert (=> bs!1201670 (not (= lambda!257151 lambda!257138))))

(declare-fun bs!1201671 () Bool)

(assert (= bs!1201671 (and d!1664282 d!1664172)))

(assert (=> bs!1201671 (not (= lambda!257151 lambda!257109))))

(declare-fun bs!1201672 () Bool)

(assert (= bs!1201672 (and d!1664282 b!5150935)))

(assert (=> bs!1201672 (not (= lambda!257151 lambda!257111))))

(declare-fun bs!1201673 () Bool)

(assert (= bs!1201673 (and d!1664282 b!5150937)))

(assert (=> bs!1201673 (not (= lambda!257151 lambda!257114))))

(declare-fun bs!1201674 () Bool)

(assert (= bs!1201674 (and d!1664282 d!1664174)))

(assert (=> bs!1201674 (not (= lambda!257151 lambda!257112))))

(declare-fun bs!1201675 () Bool)

(assert (= bs!1201675 (and d!1664282 b!5150936)))

(assert (=> bs!1201675 (not (= lambda!257151 lambda!257113))))

(declare-fun bs!1201676 () Bool)

(assert (= bs!1201676 (and d!1664282 d!1664230)))

(assert (=> bs!1201676 (not (= lambda!257151 lambda!257134))))

(declare-fun bs!1201677 () Bool)

(assert (= bs!1201677 (and d!1664282 d!1664192)))

(assert (=> bs!1201677 (= (= (ite c!886727 lambda!257113 lambda!257114) lambda!257112) (= lambda!257151 lambda!257118))))

(assert (=> d!1664282 true))

(assert (=> d!1664282 (< (dynLambda!23795 order!26983 (ite c!886727 lambda!257113 lambda!257114)) (dynLambda!23795 order!26983 lambda!257151))))

(assert (=> d!1664282 (= (exists!1836 (ite c!886727 lt!2121485 lt!2121484) (ite c!886727 lambda!257113 lambda!257114)) (not (forall!13981 (ite c!886727 lt!2121485 lt!2121484) lambda!257151)))))

(declare-fun bs!1201678 () Bool)

(assert (= bs!1201678 d!1664282))

(declare-fun m!6208784 () Bool)

(assert (=> bs!1201678 m!6208784))

(assert (=> bm!360487 d!1664282))

(declare-fun bs!1201679 () Bool)

(declare-fun d!1664288 () Bool)

(assert (= bs!1201679 (and d!1664288 d!1664194)))

(declare-fun lambda!257152 () Int)

(assert (=> bs!1201679 (= (= (ite c!886726 lambda!257110 lambda!257111) lambda!257112) (= lambda!257152 lambda!257121))))

(declare-fun bs!1201680 () Bool)

(assert (= bs!1201680 (and d!1664288 d!1664282)))

(assert (=> bs!1201680 (= (= (ite c!886726 lambda!257110 lambda!257111) (ite c!886727 lambda!257113 lambda!257114)) (= lambda!257152 lambda!257151))))

(declare-fun bs!1201681 () Bool)

(assert (= bs!1201681 (and d!1664288 b!5150934)))

(assert (=> bs!1201681 (not (= lambda!257152 lambda!257110))))

(declare-fun bs!1201682 () Bool)

(assert (= bs!1201682 (and d!1664288 d!1664262)))

(assert (=> bs!1201682 (not (= lambda!257152 lambda!257138))))

(declare-fun bs!1201683 () Bool)

(assert (= bs!1201683 (and d!1664288 d!1664172)))

(assert (=> bs!1201683 (not (= lambda!257152 lambda!257109))))

(declare-fun bs!1201684 () Bool)

(assert (= bs!1201684 (and d!1664288 b!5150935)))

(assert (=> bs!1201684 (not (= lambda!257152 lambda!257111))))

(declare-fun bs!1201685 () Bool)

(assert (= bs!1201685 (and d!1664288 b!5150937)))

(assert (=> bs!1201685 (not (= lambda!257152 lambda!257114))))

(declare-fun bs!1201686 () Bool)

(assert (= bs!1201686 (and d!1664288 d!1664174)))

(assert (=> bs!1201686 (not (= lambda!257152 lambda!257112))))

(declare-fun bs!1201687 () Bool)

(assert (= bs!1201687 (and d!1664288 b!5150936)))

(assert (=> bs!1201687 (not (= lambda!257152 lambda!257113))))

(declare-fun bs!1201688 () Bool)

(assert (= bs!1201688 (and d!1664288 d!1664230)))

(assert (=> bs!1201688 (not (= lambda!257152 lambda!257134))))

(declare-fun bs!1201689 () Bool)

(assert (= bs!1201689 (and d!1664288 d!1664192)))

(assert (=> bs!1201689 (= (= (ite c!886726 lambda!257110 lambda!257111) lambda!257112) (= lambda!257152 lambda!257118))))

(assert (=> d!1664288 true))

(assert (=> d!1664288 (< (dynLambda!23795 order!26983 (ite c!886726 lambda!257110 lambda!257111)) (dynLambda!23795 order!26983 lambda!257152))))

(assert (=> d!1664288 (= (exists!1836 (ite c!886726 lt!2121477 lt!2121476) (ite c!886726 lambda!257110 lambda!257111)) (not (forall!13981 (ite c!886726 lt!2121477 lt!2121476) lambda!257152)))))

(declare-fun bs!1201690 () Bool)

(assert (= bs!1201690 d!1664288))

(declare-fun m!6208786 () Bool)

(assert (=> bs!1201690 m!6208786))

(assert (=> bm!360485 d!1664288))

(declare-fun b!5151211 () Bool)

(declare-fun e!3211366 () (InoxSet Context!7770))

(declare-fun call!360578 () (InoxSet Context!7770))

(declare-fun call!360573 () (InoxSet Context!7770))

(assert (=> b!5151211 (= e!3211366 ((_ map or) call!360578 call!360573))))

(declare-fun call!360579 () List!59917)

(declare-fun c!886807 () Bool)

(declare-fun bm!360566 () Bool)

(assert (=> bm!360566 (= call!360573 (derivationStepZipperDown!168 (ite c!886807 (regTwo!29515 (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117)))) (regOne!29514 (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))))) (ite c!886807 (ite c!886715 ctx!100 (Context!7771 call!360485)) (Context!7771 call!360579)) a!1296))))

(declare-fun c!886805 () Bool)

(declare-fun bm!360567 () Bool)

(declare-fun call!360575 () List!59917)

(declare-fun c!886802 () Bool)

(assert (=> bm!360567 (= call!360578 (derivationStepZipperDown!168 (ite c!886807 (regOne!29515 (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117)))) (ite c!886805 (regTwo!29514 (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117)))) (ite c!886802 (regOne!29514 (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117)))) (reg!14830 (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))))))) (ite (or c!886807 c!886805) (ite c!886715 ctx!100 (Context!7771 call!360485)) (Context!7771 call!360575)) a!1296))))

(declare-fun b!5151215 () Bool)

(declare-fun e!3211357 () (InoxSet Context!7770))

(declare-fun call!360572 () (InoxSet Context!7770))

(assert (=> b!5151215 (= e!3211357 ((_ map or) call!360573 call!360572))))

(declare-fun b!5151217 () Bool)

(declare-fun e!3211358 () (InoxSet Context!7770))

(declare-fun call!360574 () (InoxSet Context!7770))

(assert (=> b!5151217 (= e!3211358 call!360574)))

(declare-fun b!5151218 () Bool)

(declare-fun e!3211361 () Bool)

(assert (=> b!5151218 (= c!886805 e!3211361)))

(declare-fun res!2191963 () Bool)

(assert (=> b!5151218 (=> (not res!2191963) (not e!3211361))))

(assert (=> b!5151218 (= res!2191963 ((_ is Concat!23346) (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117)))))))

(assert (=> b!5151218 (= e!3211366 e!3211357)))

(declare-fun b!5151219 () Bool)

(declare-fun c!886804 () Bool)

(assert (=> b!5151219 (= c!886804 ((_ is Star!14501) (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117)))))))

(declare-fun e!3211363 () (InoxSet Context!7770))

(assert (=> b!5151219 (= e!3211358 e!3211363)))

(declare-fun b!5151221 () Bool)

(assert (=> b!5151221 (= e!3211363 call!360574)))

(declare-fun b!5151223 () Bool)

(assert (=> b!5151223 (= e!3211357 e!3211358)))

(assert (=> b!5151223 (= c!886802 ((_ is Concat!23346) (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117)))))))

(declare-fun b!5151225 () Bool)

(assert (=> b!5151225 (= e!3211363 ((as const (Array Context!7770 Bool)) false))))

(declare-fun bm!360571 () Bool)

(assert (=> bm!360571 (= call!360579 ($colon$colon!1223 (exprs!4385 (ite c!886715 ctx!100 (Context!7771 call!360485))) (ite (or c!886805 c!886802) (regTwo!29514 (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117)))) (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))))))))

(declare-fun bm!360572 () Bool)

(assert (=> bm!360572 (= call!360574 call!360572)))

(declare-fun b!5151227 () Bool)

(declare-fun e!3211364 () (InoxSet Context!7770))

(assert (=> b!5151227 (= e!3211364 e!3211366)))

(assert (=> b!5151227 (= c!886807 ((_ is Union!14501) (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117)))))))

(declare-fun b!5151228 () Bool)

(assert (=> b!5151228 (= e!3211361 (nullable!4857 (regOne!29514 (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))))))))

(declare-fun bm!360573 () Bool)

(assert (=> bm!360573 (= call!360572 call!360578)))

(declare-fun c!886803 () Bool)

(declare-fun d!1664290 () Bool)

(assert (=> d!1664290 (= c!886803 (and ((_ is ElementMatch!14501) (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117)))) (= (c!886652 (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117)))) a!1296)))))

(assert (=> d!1664290 (= (derivationStepZipperDown!168 (ite c!886715 (regTwo!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))) (ite c!886715 ctx!100 (Context!7771 call!360485)) a!1296) e!3211364)))

(declare-fun b!5151229 () Bool)

(assert (=> b!5151229 (= e!3211364 (store ((as const (Array Context!7770 Bool)) false) (ite c!886715 ctx!100 (Context!7771 call!360485)) true))))

(declare-fun bm!360574 () Bool)

(assert (=> bm!360574 (= call!360575 call!360579)))

(assert (= (and d!1664290 c!886803) b!5151229))

(assert (= (and d!1664290 (not c!886803)) b!5151227))

(assert (= (and b!5151227 c!886807) b!5151211))

(assert (= (and b!5151227 (not c!886807)) b!5151218))

(assert (= (and b!5151218 res!2191963) b!5151228))

(assert (= (and b!5151218 c!886805) b!5151215))

(assert (= (and b!5151218 (not c!886805)) b!5151223))

(assert (= (and b!5151223 c!886802) b!5151217))

(assert (= (and b!5151223 (not c!886802)) b!5151219))

(assert (= (and b!5151219 c!886804) b!5151221))

(assert (= (and b!5151219 (not c!886804)) b!5151225))

(assert (= (or b!5151217 b!5151221) bm!360574))

(assert (= (or b!5151217 b!5151221) bm!360572))

(assert (= (or b!5151215 bm!360574) bm!360571))

(assert (= (or b!5151215 bm!360572) bm!360573))

(assert (= (or b!5151211 b!5151215) bm!360566))

(assert (= (or b!5151211 bm!360573) bm!360567))

(declare-fun m!6208794 () Bool)

(assert (=> b!5151229 m!6208794))

(declare-fun m!6208796 () Bool)

(assert (=> b!5151228 m!6208796))

(declare-fun m!6208798 () Bool)

(assert (=> bm!360571 m!6208798))

(declare-fun m!6208800 () Bool)

(assert (=> bm!360567 m!6208800))

(declare-fun m!6208802 () Bool)

(assert (=> bm!360566 m!6208802))

(assert (=> bm!360475 d!1664290))

(declare-fun d!1664296 () Bool)

(assert (=> d!1664296 (= (nullable!4857 (reg!14830 (regTwo!29514 expr!117))) (nullableFct!1335 (reg!14830 (regTwo!29514 expr!117))))))

(declare-fun bs!1201696 () Bool)

(assert (= bs!1201696 d!1664296))

(declare-fun m!6208804 () Bool)

(assert (=> bs!1201696 m!6208804))

(assert (=> b!5150892 d!1664296))

(declare-fun bs!1201701 () Bool)

(declare-fun d!1664298 () Bool)

(assert (= bs!1201701 (and d!1664298 d!1664288)))

(declare-fun lambda!257154 () Int)

(assert (=> bs!1201701 (= (= lambda!257109 (ite c!886726 lambda!257110 lambda!257111)) (= lambda!257154 lambda!257152))))

(declare-fun bs!1201704 () Bool)

(assert (= bs!1201704 (and d!1664298 d!1664194)))

(assert (=> bs!1201704 (= (= lambda!257109 lambda!257112) (= lambda!257154 lambda!257121))))

(declare-fun bs!1201705 () Bool)

(assert (= bs!1201705 (and d!1664298 d!1664282)))

(assert (=> bs!1201705 (= (= lambda!257109 (ite c!886727 lambda!257113 lambda!257114)) (= lambda!257154 lambda!257151))))

(declare-fun bs!1201706 () Bool)

(assert (= bs!1201706 (and d!1664298 b!5150934)))

(assert (=> bs!1201706 (not (= lambda!257154 lambda!257110))))

(declare-fun bs!1201708 () Bool)

(assert (= bs!1201708 (and d!1664298 d!1664262)))

(assert (=> bs!1201708 (not (= lambda!257154 lambda!257138))))

(declare-fun bs!1201709 () Bool)

(assert (= bs!1201709 (and d!1664298 d!1664172)))

(assert (=> bs!1201709 (not (= lambda!257154 lambda!257109))))

(declare-fun bs!1201710 () Bool)

(assert (= bs!1201710 (and d!1664298 b!5150935)))

(assert (=> bs!1201710 (not (= lambda!257154 lambda!257111))))

(declare-fun bs!1201711 () Bool)

(assert (= bs!1201711 (and d!1664298 b!5150937)))

(assert (=> bs!1201711 (not (= lambda!257154 lambda!257114))))

(declare-fun bs!1201713 () Bool)

(assert (= bs!1201713 (and d!1664298 d!1664174)))

(assert (=> bs!1201713 (not (= lambda!257154 lambda!257112))))

(declare-fun bs!1201715 () Bool)

(assert (= bs!1201715 (and d!1664298 b!5150936)))

(assert (=> bs!1201715 (not (= lambda!257154 lambda!257113))))

(declare-fun bs!1201717 () Bool)

(assert (= bs!1201717 (and d!1664298 d!1664230)))

(assert (=> bs!1201717 (not (= lambda!257154 lambda!257134))))

(declare-fun bs!1201719 () Bool)

(assert (= bs!1201719 (and d!1664298 d!1664192)))

(assert (=> bs!1201719 (= (= lambda!257109 lambda!257112) (= lambda!257154 lambda!257118))))

(assert (=> d!1664298 true))

(assert (=> d!1664298 (< (dynLambda!23795 order!26983 lambda!257109) (dynLambda!23795 order!26983 lambda!257154))))

(assert (=> d!1664298 (not (exists!1836 lt!2121476 lambda!257154))))

(declare-fun lt!2121530 () Unit!151213)

(assert (=> d!1664298 (= lt!2121530 (choose!38104 lt!2121476 lambda!257109))))

(assert (=> d!1664298 (forall!13981 lt!2121476 lambda!257109)))

(assert (=> d!1664298 (= (lemmaForallThenNotExists!415 lt!2121476 lambda!257109) lt!2121530)))

(declare-fun bs!1201723 () Bool)

(assert (= bs!1201723 d!1664298))

(declare-fun m!6208808 () Bool)

(assert (=> bs!1201723 m!6208808))

(declare-fun m!6208810 () Bool)

(assert (=> bs!1201723 m!6208810))

(declare-fun m!6208812 () Bool)

(assert (=> bs!1201723 m!6208812))

(assert (=> b!5150935 d!1664298))

(declare-fun bs!1201728 () Bool)

(declare-fun d!1664302 () Bool)

(assert (= bs!1201728 (and d!1664302 d!1664288)))

(declare-fun lambda!257156 () Int)

(assert (=> bs!1201728 (= (= lambda!257109 (ite c!886726 lambda!257110 lambda!257111)) (= lambda!257156 lambda!257152))))

(declare-fun bs!1201729 () Bool)

(assert (= bs!1201729 (and d!1664302 d!1664194)))

(assert (=> bs!1201729 (= (= lambda!257109 lambda!257112) (= lambda!257156 lambda!257121))))

(declare-fun bs!1201731 () Bool)

(assert (= bs!1201731 (and d!1664302 d!1664282)))

(assert (=> bs!1201731 (= (= lambda!257109 (ite c!886727 lambda!257113 lambda!257114)) (= lambda!257156 lambda!257151))))

(declare-fun bs!1201732 () Bool)

(assert (= bs!1201732 (and d!1664302 d!1664298)))

(assert (=> bs!1201732 (= lambda!257156 lambda!257154)))

(declare-fun bs!1201733 () Bool)

(assert (= bs!1201733 (and d!1664302 b!5150934)))

(assert (=> bs!1201733 (not (= lambda!257156 lambda!257110))))

(declare-fun bs!1201734 () Bool)

(assert (= bs!1201734 (and d!1664302 d!1664262)))

(assert (=> bs!1201734 (not (= lambda!257156 lambda!257138))))

(declare-fun bs!1201735 () Bool)

(assert (= bs!1201735 (and d!1664302 d!1664172)))

(assert (=> bs!1201735 (not (= lambda!257156 lambda!257109))))

(declare-fun bs!1201736 () Bool)

(assert (= bs!1201736 (and d!1664302 b!5150935)))

(assert (=> bs!1201736 (not (= lambda!257156 lambda!257111))))

(declare-fun bs!1201738 () Bool)

(assert (= bs!1201738 (and d!1664302 b!5150937)))

(assert (=> bs!1201738 (not (= lambda!257156 lambda!257114))))

(declare-fun bs!1201740 () Bool)

(assert (= bs!1201740 (and d!1664302 d!1664174)))

(assert (=> bs!1201740 (not (= lambda!257156 lambda!257112))))

(declare-fun bs!1201741 () Bool)

(assert (= bs!1201741 (and d!1664302 b!5150936)))

(assert (=> bs!1201741 (not (= lambda!257156 lambda!257113))))

(declare-fun bs!1201743 () Bool)

(assert (= bs!1201743 (and d!1664302 d!1664230)))

(assert (=> bs!1201743 (not (= lambda!257156 lambda!257134))))

(declare-fun bs!1201745 () Bool)

(assert (= bs!1201745 (and d!1664302 d!1664192)))

(assert (=> bs!1201745 (= (= lambda!257109 lambda!257112) (= lambda!257156 lambda!257118))))

(assert (=> d!1664302 true))

(assert (=> d!1664302 (< (dynLambda!23795 order!26983 lambda!257109) (dynLambda!23795 order!26983 lambda!257156))))

(assert (=> d!1664302 (exists!1836 lt!2121477 lambda!257156)))

(declare-fun lt!2121532 () Unit!151213)

(assert (=> d!1664302 (= lt!2121532 (choose!38105 lt!2121477 lambda!257109))))

(assert (=> d!1664302 (not (forall!13981 lt!2121477 lambda!257109))))

(assert (=> d!1664302 (= (lemmaNotForallThenExists!448 lt!2121477 lambda!257109) lt!2121532)))

(declare-fun bs!1201750 () Bool)

(assert (= bs!1201750 d!1664302))

(declare-fun m!6208820 () Bool)

(assert (=> bs!1201750 m!6208820))

(declare-fun m!6208822 () Bool)

(assert (=> bs!1201750 m!6208822))

(declare-fun m!6208824 () Bool)

(assert (=> bs!1201750 m!6208824))

(assert (=> b!5150934 d!1664302))

(declare-fun d!1664308 () Bool)

(declare-fun res!2191970 () Bool)

(declare-fun e!3211374 () Bool)

(assert (=> d!1664308 (=> res!2191970 e!3211374)))

(assert (=> d!1664308 (= res!2191970 ((_ is ElementMatch!14501) (ite c!886700 (reg!14830 (regTwo!29514 expr!117)) (ite c!886699 (regOne!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))))))))

(assert (=> d!1664308 (= (validRegex!6356 (ite c!886700 (reg!14830 (regTwo!29514 expr!117)) (ite c!886699 (regOne!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))))) e!3211374)))

(declare-fun b!5151232 () Bool)

(declare-fun res!2191971 () Bool)

(declare-fun e!3211372 () Bool)

(assert (=> b!5151232 (=> (not res!2191971) (not e!3211372))))

(declare-fun call!360580 () Bool)

(assert (=> b!5151232 (= res!2191971 call!360580)))

(declare-fun e!3211373 () Bool)

(assert (=> b!5151232 (= e!3211373 e!3211372)))

(declare-fun b!5151233 () Bool)

(declare-fun e!3211376 () Bool)

(declare-fun call!360581 () Bool)

(assert (=> b!5151233 (= e!3211376 call!360581)))

(declare-fun b!5151234 () Bool)

(declare-fun call!360582 () Bool)

(assert (=> b!5151234 (= e!3211372 call!360582)))

(declare-fun c!886809 () Bool)

(declare-fun bm!360575 () Bool)

(declare-fun c!886810 () Bool)

(assert (=> bm!360575 (= call!360581 (validRegex!6356 (ite c!886810 (reg!14830 (ite c!886700 (reg!14830 (regTwo!29514 expr!117)) (ite c!886699 (regOne!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))))) (ite c!886809 (regOne!29515 (ite c!886700 (reg!14830 (regTwo!29514 expr!117)) (ite c!886699 (regOne!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))))) (regOne!29514 (ite c!886700 (reg!14830 (regTwo!29514 expr!117)) (ite c!886699 (regOne!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117)))))))))))

(declare-fun b!5151235 () Bool)

(declare-fun e!3211375 () Bool)

(assert (=> b!5151235 (= e!3211375 call!360582)))

(declare-fun b!5151236 () Bool)

(declare-fun e!3211377 () Bool)

(assert (=> b!5151236 (= e!3211377 e!3211376)))

(declare-fun res!2191968 () Bool)

(assert (=> b!5151236 (= res!2191968 (not (nullable!4857 (reg!14830 (ite c!886700 (reg!14830 (regTwo!29514 expr!117)) (ite c!886699 (regOne!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))))))))))

(assert (=> b!5151236 (=> (not res!2191968) (not e!3211376))))

(declare-fun b!5151237 () Bool)

(assert (=> b!5151237 (= e!3211377 e!3211373)))

(assert (=> b!5151237 (= c!886809 ((_ is Union!14501) (ite c!886700 (reg!14830 (regTwo!29514 expr!117)) (ite c!886699 (regOne!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))))))))

(declare-fun bm!360576 () Bool)

(assert (=> bm!360576 (= call!360580 call!360581)))

(declare-fun b!5151238 () Bool)

(declare-fun e!3211371 () Bool)

(assert (=> b!5151238 (= e!3211371 e!3211375)))

(declare-fun res!2191969 () Bool)

(assert (=> b!5151238 (=> (not res!2191969) (not e!3211375))))

(assert (=> b!5151238 (= res!2191969 call!360580)))

(declare-fun bm!360577 () Bool)

(assert (=> bm!360577 (= call!360582 (validRegex!6356 (ite c!886809 (regTwo!29515 (ite c!886700 (reg!14830 (regTwo!29514 expr!117)) (ite c!886699 (regOne!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))))) (regTwo!29514 (ite c!886700 (reg!14830 (regTwo!29514 expr!117)) (ite c!886699 (regOne!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))))))))))

(declare-fun b!5151239 () Bool)

(assert (=> b!5151239 (= e!3211374 e!3211377)))

(assert (=> b!5151239 (= c!886810 ((_ is Star!14501) (ite c!886700 (reg!14830 (regTwo!29514 expr!117)) (ite c!886699 (regOne!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117))))))))

(declare-fun b!5151240 () Bool)

(declare-fun res!2191967 () Bool)

(assert (=> b!5151240 (=> res!2191967 e!3211371)))

(assert (=> b!5151240 (= res!2191967 (not ((_ is Concat!23346) (ite c!886700 (reg!14830 (regTwo!29514 expr!117)) (ite c!886699 (regOne!29515 (regTwo!29514 expr!117)) (regOne!29514 (regTwo!29514 expr!117)))))))))

(assert (=> b!5151240 (= e!3211373 e!3211371)))

(assert (= (and d!1664308 (not res!2191970)) b!5151239))

(assert (= (and b!5151239 c!886810) b!5151236))

(assert (= (and b!5151239 (not c!886810)) b!5151237))

(assert (= (and b!5151236 res!2191968) b!5151233))

(assert (= (and b!5151237 c!886809) b!5151232))

(assert (= (and b!5151237 (not c!886809)) b!5151240))

(assert (= (and b!5151232 res!2191971) b!5151234))

(assert (= (and b!5151240 (not res!2191967)) b!5151238))

(assert (= (and b!5151238 res!2191969) b!5151235))

(assert (= (or b!5151234 b!5151235) bm!360577))

(assert (= (or b!5151232 b!5151238) bm!360576))

(assert (= (or b!5151233 bm!360576) bm!360575))

(declare-fun m!6208834 () Bool)

(assert (=> bm!360575 m!6208834))

(declare-fun m!6208836 () Bool)

(assert (=> b!5151236 m!6208836))

(declare-fun m!6208838 () Bool)

(assert (=> bm!360577 m!6208838))

(assert (=> bm!360460 d!1664308))

(declare-fun e!3211378 () Bool)

(assert (=> b!5150962 (= tp!1440349 e!3211378)))

(declare-fun b!5151242 () Bool)

(declare-fun tp!1440378 () Bool)

(declare-fun tp!1440379 () Bool)

(assert (=> b!5151242 (= e!3211378 (and tp!1440378 tp!1440379))))

(declare-fun b!5151241 () Bool)

(assert (=> b!5151241 (= e!3211378 tp_is_empty!38151)))

(declare-fun b!5151244 () Bool)

(declare-fun tp!1440380 () Bool)

(declare-fun tp!1440382 () Bool)

(assert (=> b!5151244 (= e!3211378 (and tp!1440380 tp!1440382))))

(declare-fun b!5151243 () Bool)

(declare-fun tp!1440381 () Bool)

(assert (=> b!5151243 (= e!3211378 tp!1440381)))

(assert (= (and b!5150962 ((_ is ElementMatch!14501) (regOne!29515 (regOne!29515 expr!117)))) b!5151241))

(assert (= (and b!5150962 ((_ is Concat!23346) (regOne!29515 (regOne!29515 expr!117)))) b!5151242))

(assert (= (and b!5150962 ((_ is Star!14501) (regOne!29515 (regOne!29515 expr!117)))) b!5151243))

(assert (= (and b!5150962 ((_ is Union!14501) (regOne!29515 (regOne!29515 expr!117)))) b!5151244))

(declare-fun e!3211379 () Bool)

(assert (=> b!5150962 (= tp!1440351 e!3211379)))

(declare-fun b!5151246 () Bool)

(declare-fun tp!1440383 () Bool)

(declare-fun tp!1440384 () Bool)

(assert (=> b!5151246 (= e!3211379 (and tp!1440383 tp!1440384))))

(declare-fun b!5151245 () Bool)

(assert (=> b!5151245 (= e!3211379 tp_is_empty!38151)))

(declare-fun b!5151248 () Bool)

(declare-fun tp!1440385 () Bool)

(declare-fun tp!1440387 () Bool)

(assert (=> b!5151248 (= e!3211379 (and tp!1440385 tp!1440387))))

(declare-fun b!5151247 () Bool)

(declare-fun tp!1440386 () Bool)

(assert (=> b!5151247 (= e!3211379 tp!1440386)))

(assert (= (and b!5150962 ((_ is ElementMatch!14501) (regTwo!29515 (regOne!29515 expr!117)))) b!5151245))

(assert (= (and b!5150962 ((_ is Concat!23346) (regTwo!29515 (regOne!29515 expr!117)))) b!5151246))

(assert (= (and b!5150962 ((_ is Star!14501) (regTwo!29515 (regOne!29515 expr!117)))) b!5151247))

(assert (= (and b!5150962 ((_ is Union!14501) (regTwo!29515 (regOne!29515 expr!117)))) b!5151248))

(declare-fun e!3211380 () Bool)

(assert (=> b!5150966 (= tp!1440354 e!3211380)))

(declare-fun b!5151250 () Bool)

(declare-fun tp!1440388 () Bool)

(declare-fun tp!1440389 () Bool)

(assert (=> b!5151250 (= e!3211380 (and tp!1440388 tp!1440389))))

(declare-fun b!5151249 () Bool)

(assert (=> b!5151249 (= e!3211380 tp_is_empty!38151)))

(declare-fun b!5151252 () Bool)

(declare-fun tp!1440390 () Bool)

(declare-fun tp!1440392 () Bool)

(assert (=> b!5151252 (= e!3211380 (and tp!1440390 tp!1440392))))

(declare-fun b!5151251 () Bool)

(declare-fun tp!1440391 () Bool)

(assert (=> b!5151251 (= e!3211380 tp!1440391)))

(assert (= (and b!5150966 ((_ is ElementMatch!14501) (regOne!29515 (regTwo!29515 expr!117)))) b!5151249))

(assert (= (and b!5150966 ((_ is Concat!23346) (regOne!29515 (regTwo!29515 expr!117)))) b!5151250))

(assert (= (and b!5150966 ((_ is Star!14501) (regOne!29515 (regTwo!29515 expr!117)))) b!5151251))

(assert (= (and b!5150966 ((_ is Union!14501) (regOne!29515 (regTwo!29515 expr!117)))) b!5151252))

(declare-fun e!3211381 () Bool)

(assert (=> b!5150966 (= tp!1440356 e!3211381)))

(declare-fun b!5151254 () Bool)

(declare-fun tp!1440393 () Bool)

(declare-fun tp!1440394 () Bool)

(assert (=> b!5151254 (= e!3211381 (and tp!1440393 tp!1440394))))

(declare-fun b!5151253 () Bool)

(assert (=> b!5151253 (= e!3211381 tp_is_empty!38151)))

(declare-fun b!5151256 () Bool)

(declare-fun tp!1440395 () Bool)

(declare-fun tp!1440397 () Bool)

(assert (=> b!5151256 (= e!3211381 (and tp!1440395 tp!1440397))))

(declare-fun b!5151255 () Bool)

(declare-fun tp!1440396 () Bool)

(assert (=> b!5151255 (= e!3211381 tp!1440396)))

(assert (= (and b!5150966 ((_ is ElementMatch!14501) (regTwo!29515 (regTwo!29515 expr!117)))) b!5151253))

(assert (= (and b!5150966 ((_ is Concat!23346) (regTwo!29515 (regTwo!29515 expr!117)))) b!5151254))

(assert (= (and b!5150966 ((_ is Star!14501) (regTwo!29515 (regTwo!29515 expr!117)))) b!5151255))

(assert (= (and b!5150966 ((_ is Union!14501) (regTwo!29515 (regTwo!29515 expr!117)))) b!5151256))

(declare-fun e!3211382 () Bool)

(assert (=> b!5150970 (= tp!1440359 e!3211382)))

(declare-fun b!5151258 () Bool)

(declare-fun tp!1440398 () Bool)

(declare-fun tp!1440399 () Bool)

(assert (=> b!5151258 (= e!3211382 (and tp!1440398 tp!1440399))))

(declare-fun b!5151257 () Bool)

(assert (=> b!5151257 (= e!3211382 tp_is_empty!38151)))

(declare-fun b!5151260 () Bool)

(declare-fun tp!1440400 () Bool)

(declare-fun tp!1440402 () Bool)

(assert (=> b!5151260 (= e!3211382 (and tp!1440400 tp!1440402))))

(declare-fun b!5151259 () Bool)

(declare-fun tp!1440401 () Bool)

(assert (=> b!5151259 (= e!3211382 tp!1440401)))

(assert (= (and b!5150970 ((_ is ElementMatch!14501) (regOne!29515 (reg!14830 expr!117)))) b!5151257))

(assert (= (and b!5150970 ((_ is Concat!23346) (regOne!29515 (reg!14830 expr!117)))) b!5151258))

(assert (= (and b!5150970 ((_ is Star!14501) (regOne!29515 (reg!14830 expr!117)))) b!5151259))

(assert (= (and b!5150970 ((_ is Union!14501) (regOne!29515 (reg!14830 expr!117)))) b!5151260))

(declare-fun e!3211383 () Bool)

(assert (=> b!5150970 (= tp!1440361 e!3211383)))

(declare-fun b!5151262 () Bool)

(declare-fun tp!1440403 () Bool)

(declare-fun tp!1440404 () Bool)

(assert (=> b!5151262 (= e!3211383 (and tp!1440403 tp!1440404))))

(declare-fun b!5151261 () Bool)

(assert (=> b!5151261 (= e!3211383 tp_is_empty!38151)))

(declare-fun b!5151264 () Bool)

(declare-fun tp!1440405 () Bool)

(declare-fun tp!1440407 () Bool)

(assert (=> b!5151264 (= e!3211383 (and tp!1440405 tp!1440407))))

(declare-fun b!5151263 () Bool)

(declare-fun tp!1440406 () Bool)

(assert (=> b!5151263 (= e!3211383 tp!1440406)))

(assert (= (and b!5150970 ((_ is ElementMatch!14501) (regTwo!29515 (reg!14830 expr!117)))) b!5151261))

(assert (= (and b!5150970 ((_ is Concat!23346) (regTwo!29515 (reg!14830 expr!117)))) b!5151262))

(assert (= (and b!5150970 ((_ is Star!14501) (regTwo!29515 (reg!14830 expr!117)))) b!5151263))

(assert (= (and b!5150970 ((_ is Union!14501) (regTwo!29515 (reg!14830 expr!117)))) b!5151264))

(declare-fun e!3211384 () Bool)

(assert (=> b!5150961 (= tp!1440350 e!3211384)))

(declare-fun b!5151266 () Bool)

(declare-fun tp!1440408 () Bool)

(declare-fun tp!1440409 () Bool)

(assert (=> b!5151266 (= e!3211384 (and tp!1440408 tp!1440409))))

(declare-fun b!5151265 () Bool)

(assert (=> b!5151265 (= e!3211384 tp_is_empty!38151)))

(declare-fun b!5151268 () Bool)

(declare-fun tp!1440410 () Bool)

(declare-fun tp!1440412 () Bool)

(assert (=> b!5151268 (= e!3211384 (and tp!1440410 tp!1440412))))

(declare-fun b!5151267 () Bool)

(declare-fun tp!1440411 () Bool)

(assert (=> b!5151267 (= e!3211384 tp!1440411)))

(assert (= (and b!5150961 ((_ is ElementMatch!14501) (reg!14830 (regOne!29515 expr!117)))) b!5151265))

(assert (= (and b!5150961 ((_ is Concat!23346) (reg!14830 (regOne!29515 expr!117)))) b!5151266))

(assert (= (and b!5150961 ((_ is Star!14501) (reg!14830 (regOne!29515 expr!117)))) b!5151267))

(assert (= (and b!5150961 ((_ is Union!14501) (reg!14830 (regOne!29515 expr!117)))) b!5151268))

(declare-fun e!3211385 () Bool)

(assert (=> b!5150974 (= tp!1440364 e!3211385)))

(declare-fun b!5151270 () Bool)

(declare-fun tp!1440413 () Bool)

(declare-fun tp!1440414 () Bool)

(assert (=> b!5151270 (= e!3211385 (and tp!1440413 tp!1440414))))

(declare-fun b!5151269 () Bool)

(assert (=> b!5151269 (= e!3211385 tp_is_empty!38151)))

(declare-fun b!5151272 () Bool)

(declare-fun tp!1440415 () Bool)

(declare-fun tp!1440417 () Bool)

(assert (=> b!5151272 (= e!3211385 (and tp!1440415 tp!1440417))))

(declare-fun b!5151271 () Bool)

(declare-fun tp!1440416 () Bool)

(assert (=> b!5151271 (= e!3211385 tp!1440416)))

(assert (= (and b!5150974 ((_ is ElementMatch!14501) (regOne!29515 (regOne!29514 expr!117)))) b!5151269))

(assert (= (and b!5150974 ((_ is Concat!23346) (regOne!29515 (regOne!29514 expr!117)))) b!5151270))

(assert (= (and b!5150974 ((_ is Star!14501) (regOne!29515 (regOne!29514 expr!117)))) b!5151271))

(assert (= (and b!5150974 ((_ is Union!14501) (regOne!29515 (regOne!29514 expr!117)))) b!5151272))

(declare-fun e!3211386 () Bool)

(assert (=> b!5150974 (= tp!1440366 e!3211386)))

(declare-fun b!5151274 () Bool)

(declare-fun tp!1440418 () Bool)

(declare-fun tp!1440419 () Bool)

(assert (=> b!5151274 (= e!3211386 (and tp!1440418 tp!1440419))))

(declare-fun b!5151273 () Bool)

(assert (=> b!5151273 (= e!3211386 tp_is_empty!38151)))

(declare-fun b!5151276 () Bool)

(declare-fun tp!1440420 () Bool)

(declare-fun tp!1440422 () Bool)

(assert (=> b!5151276 (= e!3211386 (and tp!1440420 tp!1440422))))

(declare-fun b!5151275 () Bool)

(declare-fun tp!1440421 () Bool)

(assert (=> b!5151275 (= e!3211386 tp!1440421)))

(assert (= (and b!5150974 ((_ is ElementMatch!14501) (regTwo!29515 (regOne!29514 expr!117)))) b!5151273))

(assert (= (and b!5150974 ((_ is Concat!23346) (regTwo!29515 (regOne!29514 expr!117)))) b!5151274))

(assert (= (and b!5150974 ((_ is Star!14501) (regTwo!29515 (regOne!29514 expr!117)))) b!5151275))

(assert (= (and b!5150974 ((_ is Union!14501) (regTwo!29515 (regOne!29514 expr!117)))) b!5151276))

(declare-fun e!3211387 () Bool)

(assert (=> b!5150960 (= tp!1440347 e!3211387)))

(declare-fun b!5151278 () Bool)

(declare-fun tp!1440423 () Bool)

(declare-fun tp!1440424 () Bool)

(assert (=> b!5151278 (= e!3211387 (and tp!1440423 tp!1440424))))

(declare-fun b!5151277 () Bool)

(assert (=> b!5151277 (= e!3211387 tp_is_empty!38151)))

(declare-fun b!5151280 () Bool)

(declare-fun tp!1440425 () Bool)

(declare-fun tp!1440427 () Bool)

(assert (=> b!5151280 (= e!3211387 (and tp!1440425 tp!1440427))))

(declare-fun b!5151279 () Bool)

(declare-fun tp!1440426 () Bool)

(assert (=> b!5151279 (= e!3211387 tp!1440426)))

(assert (= (and b!5150960 ((_ is ElementMatch!14501) (regOne!29514 (regOne!29515 expr!117)))) b!5151277))

(assert (= (and b!5150960 ((_ is Concat!23346) (regOne!29514 (regOne!29515 expr!117)))) b!5151278))

(assert (= (and b!5150960 ((_ is Star!14501) (regOne!29514 (regOne!29515 expr!117)))) b!5151279))

(assert (= (and b!5150960 ((_ is Union!14501) (regOne!29514 (regOne!29515 expr!117)))) b!5151280))

(declare-fun e!3211388 () Bool)

(assert (=> b!5150960 (= tp!1440348 e!3211388)))

(declare-fun b!5151282 () Bool)

(declare-fun tp!1440428 () Bool)

(declare-fun tp!1440429 () Bool)

(assert (=> b!5151282 (= e!3211388 (and tp!1440428 tp!1440429))))

(declare-fun b!5151281 () Bool)

(assert (=> b!5151281 (= e!3211388 tp_is_empty!38151)))

(declare-fun b!5151284 () Bool)

(declare-fun tp!1440430 () Bool)

(declare-fun tp!1440432 () Bool)

(assert (=> b!5151284 (= e!3211388 (and tp!1440430 tp!1440432))))

(declare-fun b!5151283 () Bool)

(declare-fun tp!1440431 () Bool)

(assert (=> b!5151283 (= e!3211388 tp!1440431)))

(assert (= (and b!5150960 ((_ is ElementMatch!14501) (regTwo!29514 (regOne!29515 expr!117)))) b!5151281))

(assert (= (and b!5150960 ((_ is Concat!23346) (regTwo!29514 (regOne!29515 expr!117)))) b!5151282))

(assert (= (and b!5150960 ((_ is Star!14501) (regTwo!29514 (regOne!29515 expr!117)))) b!5151283))

(assert (= (and b!5150960 ((_ is Union!14501) (regTwo!29514 (regOne!29515 expr!117)))) b!5151284))

(declare-fun e!3211389 () Bool)

(assert (=> b!5150965 (= tp!1440355 e!3211389)))

(declare-fun b!5151286 () Bool)

(declare-fun tp!1440433 () Bool)

(declare-fun tp!1440434 () Bool)

(assert (=> b!5151286 (= e!3211389 (and tp!1440433 tp!1440434))))

(declare-fun b!5151285 () Bool)

(assert (=> b!5151285 (= e!3211389 tp_is_empty!38151)))

(declare-fun b!5151288 () Bool)

(declare-fun tp!1440435 () Bool)

(declare-fun tp!1440437 () Bool)

(assert (=> b!5151288 (= e!3211389 (and tp!1440435 tp!1440437))))

(declare-fun b!5151287 () Bool)

(declare-fun tp!1440436 () Bool)

(assert (=> b!5151287 (= e!3211389 tp!1440436)))

(assert (= (and b!5150965 ((_ is ElementMatch!14501) (reg!14830 (regTwo!29515 expr!117)))) b!5151285))

(assert (= (and b!5150965 ((_ is Concat!23346) (reg!14830 (regTwo!29515 expr!117)))) b!5151286))

(assert (= (and b!5150965 ((_ is Star!14501) (reg!14830 (regTwo!29515 expr!117)))) b!5151287))

(assert (= (and b!5150965 ((_ is Union!14501) (reg!14830 (regTwo!29515 expr!117)))) b!5151288))

(declare-fun e!3211390 () Bool)

(assert (=> b!5150983 (= tp!1440376 e!3211390)))

(declare-fun b!5151290 () Bool)

(declare-fun tp!1440438 () Bool)

(declare-fun tp!1440439 () Bool)

(assert (=> b!5151290 (= e!3211390 (and tp!1440438 tp!1440439))))

(declare-fun b!5151289 () Bool)

(assert (=> b!5151289 (= e!3211390 tp_is_empty!38151)))

(declare-fun b!5151292 () Bool)

(declare-fun tp!1440440 () Bool)

(declare-fun tp!1440442 () Bool)

(assert (=> b!5151292 (= e!3211390 (and tp!1440440 tp!1440442))))

(declare-fun b!5151291 () Bool)

(declare-fun tp!1440441 () Bool)

(assert (=> b!5151291 (= e!3211390 tp!1440441)))

(assert (= (and b!5150983 ((_ is ElementMatch!14501) (h!66241 (exprs!4385 ctx!100)))) b!5151289))

(assert (= (and b!5150983 ((_ is Concat!23346) (h!66241 (exprs!4385 ctx!100)))) b!5151290))

(assert (= (and b!5150983 ((_ is Star!14501) (h!66241 (exprs!4385 ctx!100)))) b!5151291))

(assert (= (and b!5150983 ((_ is Union!14501) (h!66241 (exprs!4385 ctx!100)))) b!5151292))

(declare-fun b!5151293 () Bool)

(declare-fun e!3211391 () Bool)

(declare-fun tp!1440443 () Bool)

(declare-fun tp!1440444 () Bool)

(assert (=> b!5151293 (= e!3211391 (and tp!1440443 tp!1440444))))

(assert (=> b!5150983 (= tp!1440377 e!3211391)))

(assert (= (and b!5150983 ((_ is Cons!59793) (t!372964 (exprs!4385 ctx!100)))) b!5151293))

(declare-fun e!3211392 () Bool)

(assert (=> b!5150978 (= tp!1440369 e!3211392)))

(declare-fun b!5151295 () Bool)

(declare-fun tp!1440445 () Bool)

(declare-fun tp!1440446 () Bool)

(assert (=> b!5151295 (= e!3211392 (and tp!1440445 tp!1440446))))

(declare-fun b!5151294 () Bool)

(assert (=> b!5151294 (= e!3211392 tp_is_empty!38151)))

(declare-fun b!5151297 () Bool)

(declare-fun tp!1440447 () Bool)

(declare-fun tp!1440449 () Bool)

(assert (=> b!5151297 (= e!3211392 (and tp!1440447 tp!1440449))))

(declare-fun b!5151296 () Bool)

(declare-fun tp!1440448 () Bool)

(assert (=> b!5151296 (= e!3211392 tp!1440448)))

(assert (= (and b!5150978 ((_ is ElementMatch!14501) (regOne!29515 (regTwo!29514 expr!117)))) b!5151294))

(assert (= (and b!5150978 ((_ is Concat!23346) (regOne!29515 (regTwo!29514 expr!117)))) b!5151295))

(assert (= (and b!5150978 ((_ is Star!14501) (regOne!29515 (regTwo!29514 expr!117)))) b!5151296))

(assert (= (and b!5150978 ((_ is Union!14501) (regOne!29515 (regTwo!29514 expr!117)))) b!5151297))

(declare-fun e!3211393 () Bool)

(assert (=> b!5150978 (= tp!1440371 e!3211393)))

(declare-fun b!5151299 () Bool)

(declare-fun tp!1440450 () Bool)

(declare-fun tp!1440451 () Bool)

(assert (=> b!5151299 (= e!3211393 (and tp!1440450 tp!1440451))))

(declare-fun b!5151298 () Bool)

(assert (=> b!5151298 (= e!3211393 tp_is_empty!38151)))

(declare-fun b!5151301 () Bool)

(declare-fun tp!1440452 () Bool)

(declare-fun tp!1440454 () Bool)

(assert (=> b!5151301 (= e!3211393 (and tp!1440452 tp!1440454))))

(declare-fun b!5151300 () Bool)

(declare-fun tp!1440453 () Bool)

(assert (=> b!5151300 (= e!3211393 tp!1440453)))

(assert (= (and b!5150978 ((_ is ElementMatch!14501) (regTwo!29515 (regTwo!29514 expr!117)))) b!5151298))

(assert (= (and b!5150978 ((_ is Concat!23346) (regTwo!29515 (regTwo!29514 expr!117)))) b!5151299))

(assert (= (and b!5150978 ((_ is Star!14501) (regTwo!29515 (regTwo!29514 expr!117)))) b!5151300))

(assert (= (and b!5150978 ((_ is Union!14501) (regTwo!29515 (regTwo!29514 expr!117)))) b!5151301))

(declare-fun e!3211394 () Bool)

(assert (=> b!5150964 (= tp!1440352 e!3211394)))

(declare-fun b!5151303 () Bool)

(declare-fun tp!1440455 () Bool)

(declare-fun tp!1440456 () Bool)

(assert (=> b!5151303 (= e!3211394 (and tp!1440455 tp!1440456))))

(declare-fun b!5151302 () Bool)

(assert (=> b!5151302 (= e!3211394 tp_is_empty!38151)))

(declare-fun b!5151305 () Bool)

(declare-fun tp!1440457 () Bool)

(declare-fun tp!1440459 () Bool)

(assert (=> b!5151305 (= e!3211394 (and tp!1440457 tp!1440459))))

(declare-fun b!5151304 () Bool)

(declare-fun tp!1440458 () Bool)

(assert (=> b!5151304 (= e!3211394 tp!1440458)))

(assert (= (and b!5150964 ((_ is ElementMatch!14501) (regOne!29514 (regTwo!29515 expr!117)))) b!5151302))

(assert (= (and b!5150964 ((_ is Concat!23346) (regOne!29514 (regTwo!29515 expr!117)))) b!5151303))

(assert (= (and b!5150964 ((_ is Star!14501) (regOne!29514 (regTwo!29515 expr!117)))) b!5151304))

(assert (= (and b!5150964 ((_ is Union!14501) (regOne!29514 (regTwo!29515 expr!117)))) b!5151305))

(declare-fun e!3211395 () Bool)

(assert (=> b!5150964 (= tp!1440353 e!3211395)))

(declare-fun b!5151307 () Bool)

(declare-fun tp!1440460 () Bool)

(declare-fun tp!1440461 () Bool)

(assert (=> b!5151307 (= e!3211395 (and tp!1440460 tp!1440461))))

(declare-fun b!5151306 () Bool)

(assert (=> b!5151306 (= e!3211395 tp_is_empty!38151)))

(declare-fun b!5151309 () Bool)

(declare-fun tp!1440462 () Bool)

(declare-fun tp!1440464 () Bool)

(assert (=> b!5151309 (= e!3211395 (and tp!1440462 tp!1440464))))

(declare-fun b!5151308 () Bool)

(declare-fun tp!1440463 () Bool)

(assert (=> b!5151308 (= e!3211395 tp!1440463)))

(assert (= (and b!5150964 ((_ is ElementMatch!14501) (regTwo!29514 (regTwo!29515 expr!117)))) b!5151306))

(assert (= (and b!5150964 ((_ is Concat!23346) (regTwo!29514 (regTwo!29515 expr!117)))) b!5151307))

(assert (= (and b!5150964 ((_ is Star!14501) (regTwo!29514 (regTwo!29515 expr!117)))) b!5151308))

(assert (= (and b!5150964 ((_ is Union!14501) (regTwo!29514 (regTwo!29515 expr!117)))) b!5151309))

(declare-fun e!3211396 () Bool)

(assert (=> b!5150969 (= tp!1440360 e!3211396)))

(declare-fun b!5151311 () Bool)

(declare-fun tp!1440465 () Bool)

(declare-fun tp!1440466 () Bool)

(assert (=> b!5151311 (= e!3211396 (and tp!1440465 tp!1440466))))

(declare-fun b!5151310 () Bool)

(assert (=> b!5151310 (= e!3211396 tp_is_empty!38151)))

(declare-fun b!5151313 () Bool)

(declare-fun tp!1440467 () Bool)

(declare-fun tp!1440469 () Bool)

(assert (=> b!5151313 (= e!3211396 (and tp!1440467 tp!1440469))))

(declare-fun b!5151312 () Bool)

(declare-fun tp!1440468 () Bool)

(assert (=> b!5151312 (= e!3211396 tp!1440468)))

(assert (= (and b!5150969 ((_ is ElementMatch!14501) (reg!14830 (reg!14830 expr!117)))) b!5151310))

(assert (= (and b!5150969 ((_ is Concat!23346) (reg!14830 (reg!14830 expr!117)))) b!5151311))

(assert (= (and b!5150969 ((_ is Star!14501) (reg!14830 (reg!14830 expr!117)))) b!5151312))

(assert (= (and b!5150969 ((_ is Union!14501) (reg!14830 (reg!14830 expr!117)))) b!5151313))

(declare-fun e!3211397 () Bool)

(assert (=> b!5150968 (= tp!1440357 e!3211397)))

(declare-fun b!5151315 () Bool)

(declare-fun tp!1440470 () Bool)

(declare-fun tp!1440471 () Bool)

(assert (=> b!5151315 (= e!3211397 (and tp!1440470 tp!1440471))))

(declare-fun b!5151314 () Bool)

(assert (=> b!5151314 (= e!3211397 tp_is_empty!38151)))

(declare-fun b!5151317 () Bool)

(declare-fun tp!1440472 () Bool)

(declare-fun tp!1440474 () Bool)

(assert (=> b!5151317 (= e!3211397 (and tp!1440472 tp!1440474))))

(declare-fun b!5151316 () Bool)

(declare-fun tp!1440473 () Bool)

(assert (=> b!5151316 (= e!3211397 tp!1440473)))

(assert (= (and b!5150968 ((_ is ElementMatch!14501) (regOne!29514 (reg!14830 expr!117)))) b!5151314))

(assert (= (and b!5150968 ((_ is Concat!23346) (regOne!29514 (reg!14830 expr!117)))) b!5151315))

(assert (= (and b!5150968 ((_ is Star!14501) (regOne!29514 (reg!14830 expr!117)))) b!5151316))

(assert (= (and b!5150968 ((_ is Union!14501) (regOne!29514 (reg!14830 expr!117)))) b!5151317))

(declare-fun e!3211398 () Bool)

(assert (=> b!5150968 (= tp!1440358 e!3211398)))

(declare-fun b!5151319 () Bool)

(declare-fun tp!1440475 () Bool)

(declare-fun tp!1440476 () Bool)

(assert (=> b!5151319 (= e!3211398 (and tp!1440475 tp!1440476))))

(declare-fun b!5151318 () Bool)

(assert (=> b!5151318 (= e!3211398 tp_is_empty!38151)))

(declare-fun b!5151321 () Bool)

(declare-fun tp!1440477 () Bool)

(declare-fun tp!1440479 () Bool)

(assert (=> b!5151321 (= e!3211398 (and tp!1440477 tp!1440479))))

(declare-fun b!5151320 () Bool)

(declare-fun tp!1440478 () Bool)

(assert (=> b!5151320 (= e!3211398 tp!1440478)))

(assert (= (and b!5150968 ((_ is ElementMatch!14501) (regTwo!29514 (reg!14830 expr!117)))) b!5151318))

(assert (= (and b!5150968 ((_ is Concat!23346) (regTwo!29514 (reg!14830 expr!117)))) b!5151319))

(assert (= (and b!5150968 ((_ is Star!14501) (regTwo!29514 (reg!14830 expr!117)))) b!5151320))

(assert (= (and b!5150968 ((_ is Union!14501) (regTwo!29514 (reg!14830 expr!117)))) b!5151321))

(declare-fun e!3211399 () Bool)

(assert (=> b!5150973 (= tp!1440365 e!3211399)))

(declare-fun b!5151323 () Bool)

(declare-fun tp!1440480 () Bool)

(declare-fun tp!1440481 () Bool)

(assert (=> b!5151323 (= e!3211399 (and tp!1440480 tp!1440481))))

(declare-fun b!5151322 () Bool)

(assert (=> b!5151322 (= e!3211399 tp_is_empty!38151)))

(declare-fun b!5151325 () Bool)

(declare-fun tp!1440482 () Bool)

(declare-fun tp!1440484 () Bool)

(assert (=> b!5151325 (= e!3211399 (and tp!1440482 tp!1440484))))

(declare-fun b!5151324 () Bool)

(declare-fun tp!1440483 () Bool)

(assert (=> b!5151324 (= e!3211399 tp!1440483)))

(assert (= (and b!5150973 ((_ is ElementMatch!14501) (reg!14830 (regOne!29514 expr!117)))) b!5151322))

(assert (= (and b!5150973 ((_ is Concat!23346) (reg!14830 (regOne!29514 expr!117)))) b!5151323))

(assert (= (and b!5150973 ((_ is Star!14501) (reg!14830 (regOne!29514 expr!117)))) b!5151324))

(assert (= (and b!5150973 ((_ is Union!14501) (reg!14830 (regOne!29514 expr!117)))) b!5151325))

(declare-fun e!3211400 () Bool)

(assert (=> b!5150972 (= tp!1440362 e!3211400)))

(declare-fun b!5151327 () Bool)

(declare-fun tp!1440485 () Bool)

(declare-fun tp!1440486 () Bool)

(assert (=> b!5151327 (= e!3211400 (and tp!1440485 tp!1440486))))

(declare-fun b!5151326 () Bool)

(assert (=> b!5151326 (= e!3211400 tp_is_empty!38151)))

(declare-fun b!5151329 () Bool)

(declare-fun tp!1440487 () Bool)

(declare-fun tp!1440489 () Bool)

(assert (=> b!5151329 (= e!3211400 (and tp!1440487 tp!1440489))))

(declare-fun b!5151328 () Bool)

(declare-fun tp!1440488 () Bool)

(assert (=> b!5151328 (= e!3211400 tp!1440488)))

(assert (= (and b!5150972 ((_ is ElementMatch!14501) (regOne!29514 (regOne!29514 expr!117)))) b!5151326))

(assert (= (and b!5150972 ((_ is Concat!23346) (regOne!29514 (regOne!29514 expr!117)))) b!5151327))

(assert (= (and b!5150972 ((_ is Star!14501) (regOne!29514 (regOne!29514 expr!117)))) b!5151328))

(assert (= (and b!5150972 ((_ is Union!14501) (regOne!29514 (regOne!29514 expr!117)))) b!5151329))

(declare-fun e!3211401 () Bool)

(assert (=> b!5150972 (= tp!1440363 e!3211401)))

(declare-fun b!5151331 () Bool)

(declare-fun tp!1440490 () Bool)

(declare-fun tp!1440491 () Bool)

(assert (=> b!5151331 (= e!3211401 (and tp!1440490 tp!1440491))))

(declare-fun b!5151330 () Bool)

(assert (=> b!5151330 (= e!3211401 tp_is_empty!38151)))

(declare-fun b!5151333 () Bool)

(declare-fun tp!1440492 () Bool)

(declare-fun tp!1440494 () Bool)

(assert (=> b!5151333 (= e!3211401 (and tp!1440492 tp!1440494))))

(declare-fun b!5151332 () Bool)

(declare-fun tp!1440493 () Bool)

(assert (=> b!5151332 (= e!3211401 tp!1440493)))

(assert (= (and b!5150972 ((_ is ElementMatch!14501) (regTwo!29514 (regOne!29514 expr!117)))) b!5151330))

(assert (= (and b!5150972 ((_ is Concat!23346) (regTwo!29514 (regOne!29514 expr!117)))) b!5151331))

(assert (= (and b!5150972 ((_ is Star!14501) (regTwo!29514 (regOne!29514 expr!117)))) b!5151332))

(assert (= (and b!5150972 ((_ is Union!14501) (regTwo!29514 (regOne!29514 expr!117)))) b!5151333))

(declare-fun e!3211402 () Bool)

(assert (=> b!5150977 (= tp!1440370 e!3211402)))

(declare-fun b!5151335 () Bool)

(declare-fun tp!1440495 () Bool)

(declare-fun tp!1440496 () Bool)

(assert (=> b!5151335 (= e!3211402 (and tp!1440495 tp!1440496))))

(declare-fun b!5151334 () Bool)

(assert (=> b!5151334 (= e!3211402 tp_is_empty!38151)))

(declare-fun b!5151337 () Bool)

(declare-fun tp!1440497 () Bool)

(declare-fun tp!1440499 () Bool)

(assert (=> b!5151337 (= e!3211402 (and tp!1440497 tp!1440499))))

(declare-fun b!5151336 () Bool)

(declare-fun tp!1440498 () Bool)

(assert (=> b!5151336 (= e!3211402 tp!1440498)))

(assert (= (and b!5150977 ((_ is ElementMatch!14501) (reg!14830 (regTwo!29514 expr!117)))) b!5151334))

(assert (= (and b!5150977 ((_ is Concat!23346) (reg!14830 (regTwo!29514 expr!117)))) b!5151335))

(assert (= (and b!5150977 ((_ is Star!14501) (reg!14830 (regTwo!29514 expr!117)))) b!5151336))

(assert (= (and b!5150977 ((_ is Union!14501) (reg!14830 (regTwo!29514 expr!117)))) b!5151337))

(declare-fun e!3211403 () Bool)

(assert (=> b!5150976 (= tp!1440367 e!3211403)))

(declare-fun b!5151339 () Bool)

(declare-fun tp!1440500 () Bool)

(declare-fun tp!1440501 () Bool)

(assert (=> b!5151339 (= e!3211403 (and tp!1440500 tp!1440501))))

(declare-fun b!5151338 () Bool)

(assert (=> b!5151338 (= e!3211403 tp_is_empty!38151)))

(declare-fun b!5151341 () Bool)

(declare-fun tp!1440502 () Bool)

(declare-fun tp!1440504 () Bool)

(assert (=> b!5151341 (= e!3211403 (and tp!1440502 tp!1440504))))

(declare-fun b!5151340 () Bool)

(declare-fun tp!1440503 () Bool)

(assert (=> b!5151340 (= e!3211403 tp!1440503)))

(assert (= (and b!5150976 ((_ is ElementMatch!14501) (regOne!29514 (regTwo!29514 expr!117)))) b!5151338))

(assert (= (and b!5150976 ((_ is Concat!23346) (regOne!29514 (regTwo!29514 expr!117)))) b!5151339))

(assert (= (and b!5150976 ((_ is Star!14501) (regOne!29514 (regTwo!29514 expr!117)))) b!5151340))

(assert (= (and b!5150976 ((_ is Union!14501) (regOne!29514 (regTwo!29514 expr!117)))) b!5151341))

(declare-fun e!3211404 () Bool)

(assert (=> b!5150976 (= tp!1440368 e!3211404)))

(declare-fun b!5151343 () Bool)

(declare-fun tp!1440505 () Bool)

(declare-fun tp!1440506 () Bool)

(assert (=> b!5151343 (= e!3211404 (and tp!1440505 tp!1440506))))

(declare-fun b!5151342 () Bool)

(assert (=> b!5151342 (= e!3211404 tp_is_empty!38151)))

(declare-fun b!5151345 () Bool)

(declare-fun tp!1440507 () Bool)

(declare-fun tp!1440509 () Bool)

(assert (=> b!5151345 (= e!3211404 (and tp!1440507 tp!1440509))))

(declare-fun b!5151344 () Bool)

(declare-fun tp!1440508 () Bool)

(assert (=> b!5151344 (= e!3211404 tp!1440508)))

(assert (= (and b!5150976 ((_ is ElementMatch!14501) (regTwo!29514 (regTwo!29514 expr!117)))) b!5151342))

(assert (= (and b!5150976 ((_ is Concat!23346) (regTwo!29514 (regTwo!29514 expr!117)))) b!5151343))

(assert (= (and b!5150976 ((_ is Star!14501) (regTwo!29514 (regTwo!29514 expr!117)))) b!5151344))

(assert (= (and b!5150976 ((_ is Union!14501) (regTwo!29514 (regTwo!29514 expr!117)))) b!5151345))

(declare-fun b_lambda!200391 () Bool)

(assert (= b_lambda!200385 (or d!1664128 b_lambda!200391)))

(declare-fun bs!1201770 () Bool)

(declare-fun d!1664316 () Bool)

(assert (= bs!1201770 (and d!1664316 d!1664128)))

(assert (=> bs!1201770 (= (dynLambda!23796 lambda!257093 (h!66241 (exprs!4385 ctx!100))) (validRegex!6356 (h!66241 (exprs!4385 ctx!100))))))

(declare-fun m!6208850 () Bool)

(assert (=> bs!1201770 m!6208850))

(assert (=> b!5151065 d!1664316))

(declare-fun b_lambda!200393 () Bool)

(assert (= b_lambda!200387 (or d!1664180 b_lambda!200393)))

(declare-fun bs!1201771 () Bool)

(declare-fun d!1664318 () Bool)

(assert (= bs!1201771 (and d!1664318 d!1664180)))

(assert (=> bs!1201771 (= (dynLambda!23796 lambda!257115 (h!66241 (exprs!4385 lt!2121416))) (validRegex!6356 (h!66241 (exprs!4385 lt!2121416))))))

(declare-fun m!6208852 () Bool)

(assert (=> bs!1201771 m!6208852))

(assert (=> b!5151109 d!1664318))

(check-sat (not b!5151332) (not b!5151254) (not b!5151194) (not d!1664280) (not d!1664192) (not b!5151011) (not b!5151291) (not b!5151343) (not b!5151331) (not d!1664198) (not bm!360506) (not b!5151267) (not bm!360558) (not d!1664230) (not b!5151228) (not bm!360551) (not b!5151339) (not b!5151278) (not b!5151290) (not b!5151323) (not d!1664272) (not b!5151303) (not bm!360552) (not b!5151327) (not bm!360575) (not b!5151251) (not b!5151295) (not b!5151320) (not bm!360504) (not d!1664296) (not b!5151305) (not b!5151345) (not bm!360553) (not bm!360571) (not b!5151242) (not b!5151315) (not bm!360532) (not b!5151340) (not b!5151337) (not b!5151117) (not b!5151203) (not b!5151027) (not bm!360547) (not bm!360545) (not bm!360503) (not b!5151110) (not bm!360563) (not b!5151325) (not d!1664288) (not b!5151297) (not b!5151307) (not b!5151271) (not b_lambda!200391) (not b!5151321) (not b!5151260) (not b!5151311) (not b!5151344) (not bs!1201771) (not b!5151252) (not bm!360577) (not b!5151319) (not bs!1201770) (not b!5151258) (not d!1664262) (not b!5151279) (not b!5151256) (not d!1664240) (not b!5151276) (not bm!360531) (not b!5151160) (not d!1664278) (not b!5151284) (not b!5151272) (not d!1664248) (not bm!360515) (not b!5151333) (not b!5151280) (not bm!360546) (not d!1664194) (not b!5151301) (not b!5151293) (not d!1664202) (not b!5151066) (not b!5151300) (not b!5151336) (not b!5151317) (not b!5151324) (not b!5151141) (not b!5151247) (not d!1664298) (not b!5151316) (not b_lambda!200393) (not b!5151250) (not b!5151341) (not bm!360500) (not b!5151263) (not b!5151286) (not b!5151173) (not b!5151266) (not b!5151188) (not b!5151268) (not d!1664208) (not b!5151308) (not b!5151274) (not b!5151296) (not bm!360517) tp_is_empty!38151 (not d!1664204) (not bm!360499) (not d!1664282) (not b!5151270) (not b!5151162) (not b!5151309) (not b!5151047) (not b!5151292) (not b!5151282) (not b!5151244) (not b!5151243) (not b!5151313) (not b!5151255) (not bm!360567) (not d!1664276) (not bm!360557) (not b!5151264) (not bm!360565) (not b!5151288) (not b!5151259) (not b!5151283) (not b!5151246) (not d!1664190) (not b!5151287) (not b!5151329) (not d!1664264) (not bm!360501) (not bm!360559) (not d!1664188) (not b!5151335) (not b!5151312) (not b!5151248) (not b!5151304) (not d!1664302) (not bm!360505) (not b!5151236) (not b!5151275) (not b!5151328) (not b!5151262) (not bm!360508) (not bm!360566) (not b!5151299))
(check-sat)
