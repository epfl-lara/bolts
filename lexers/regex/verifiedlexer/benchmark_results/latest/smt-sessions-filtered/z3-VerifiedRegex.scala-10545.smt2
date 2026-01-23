; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543120 () Bool)

(assert start!543120)

(declare-fun b!5133462 () Bool)

(declare-fun e!3201843 () Bool)

(declare-datatypes ((C!29028 0))(
  ( (C!29029 (val!24166 Int)) )
))
(declare-datatypes ((Regex!14381 0))(
  ( (ElementMatch!14381 (c!883496 C!29028)) (Concat!23226 (regOne!29274 Regex!14381) (regTwo!29274 Regex!14381)) (EmptyExpr!14381) (Star!14381 (reg!14710 Regex!14381)) (EmptyLang!14381) (Union!14381 (regOne!29275 Regex!14381) (regTwo!29275 Regex!14381)) )
))
(declare-datatypes ((List!59700 0))(
  ( (Nil!59576) (Cons!59576 (h!66024 Regex!14381) (t!372727 List!59700)) )
))
(declare-datatypes ((Context!7530 0))(
  ( (Context!7531 (exprs!4265 List!59700)) )
))
(declare-fun ctx!74 () Context!7530)

(declare-fun validRegex!6245 (Regex!14381) Bool)

(assert (=> b!5133462 (= e!3201843 (not (validRegex!6245 (h!66024 (exprs!4265 ctx!74)))))))

(declare-fun lt!2118593 () Context!7530)

(declare-fun a!1252 () C!29028)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1221 ((InoxSet Context!7530)) Bool)

(declare-fun derivationStepZipperDown!102 (Regex!14381 Context!7530 C!29028) (InoxSet Context!7530))

(assert (=> b!5133462 (lostCauseZipper!1221 (derivationStepZipperDown!102 (h!66024 (exprs!4265 ctx!74)) lt!2118593 a!1252))))

(declare-datatypes ((Unit!150909 0))(
  ( (Unit!150910) )
))
(declare-fun lt!2118594 () Unit!150909)

(declare-fun lemmaLostCauseFixPointDerivDown!2 (Regex!14381 Context!7530 C!29028) Unit!150909)

(assert (=> b!5133462 (= lt!2118594 (lemmaLostCauseFixPointDerivDown!2 (h!66024 (exprs!4265 ctx!74)) lt!2118593 a!1252))))

(declare-fun derivationStepZipperUp!79 (Context!7530 C!29028) (InoxSet Context!7530))

(assert (=> b!5133462 (lostCauseZipper!1221 (derivationStepZipperUp!79 lt!2118593 a!1252))))

(declare-fun lt!2118592 () Unit!150909)

(declare-fun lemmaLostCauseFixPointDerivUp!12 (Context!7530 C!29028) Unit!150909)

(assert (=> b!5133462 (= lt!2118592 (lemmaLostCauseFixPointDerivUp!12 lt!2118593 a!1252))))

(assert (=> b!5133462 (= lt!2118593 (Context!7531 (t!372727 (exprs!4265 ctx!74))))))

(declare-fun lostCause!1326 (Regex!14381) Bool)

(assert (=> b!5133462 (not (lostCause!1326 (h!66024 (exprs!4265 ctx!74))))))

(declare-fun lt!2118595 () Unit!150909)

(declare-fun lemmaNullableThenNotLostCause!38 (Regex!14381) Unit!150909)

(assert (=> b!5133462 (= lt!2118595 (lemmaNullableThenNotLostCause!38 (h!66024 (exprs!4265 ctx!74))))))

(declare-fun res!2186560 () Bool)

(assert (=> start!543120 (=> (not res!2186560) (not e!3201843))))

(declare-fun lostCause!1327 (Context!7530) Bool)

(assert (=> start!543120 (= res!2186560 (lostCause!1327 ctx!74))))

(assert (=> start!543120 e!3201843))

(declare-fun e!3201844 () Bool)

(declare-fun inv!79133 (Context!7530) Bool)

(assert (=> start!543120 (and (inv!79133 ctx!74) e!3201844)))

(declare-fun tp_is_empty!37927 () Bool)

(assert (=> start!543120 tp_is_empty!37927))

(declare-fun b!5133460 () Bool)

(declare-fun res!2186561 () Bool)

(assert (=> b!5133460 (=> (not res!2186561) (not e!3201843))))

(get-info :version)

(assert (=> b!5133460 (= res!2186561 ((_ is Cons!59576) (exprs!4265 ctx!74)))))

(declare-fun b!5133461 () Bool)

(declare-fun res!2186562 () Bool)

(assert (=> b!5133461 (=> (not res!2186562) (not e!3201843))))

(declare-fun nullable!4756 (Regex!14381) Bool)

(assert (=> b!5133461 (= res!2186562 (nullable!4756 (h!66024 (exprs!4265 ctx!74))))))

(declare-fun b!5133463 () Bool)

(declare-fun tp!1431981 () Bool)

(assert (=> b!5133463 (= e!3201844 tp!1431981)))

(assert (= (and start!543120 res!2186560) b!5133460))

(assert (= (and b!5133460 res!2186561) b!5133461))

(assert (= (and b!5133461 res!2186562) b!5133462))

(assert (= start!543120 b!5133463))

(declare-fun m!6199642 () Bool)

(assert (=> b!5133462 m!6199642))

(declare-fun m!6199644 () Bool)

(assert (=> b!5133462 m!6199644))

(declare-fun m!6199646 () Bool)

(assert (=> b!5133462 m!6199646))

(declare-fun m!6199648 () Bool)

(assert (=> b!5133462 m!6199648))

(declare-fun m!6199650 () Bool)

(assert (=> b!5133462 m!6199650))

(declare-fun m!6199652 () Bool)

(assert (=> b!5133462 m!6199652))

(declare-fun m!6199654 () Bool)

(assert (=> b!5133462 m!6199654))

(assert (=> b!5133462 m!6199652))

(declare-fun m!6199656 () Bool)

(assert (=> b!5133462 m!6199656))

(assert (=> b!5133462 m!6199644))

(declare-fun m!6199658 () Bool)

(assert (=> b!5133462 m!6199658))

(declare-fun m!6199660 () Bool)

(assert (=> start!543120 m!6199660))

(declare-fun m!6199662 () Bool)

(assert (=> start!543120 m!6199662))

(declare-fun m!6199664 () Bool)

(assert (=> b!5133461 m!6199664))

(check-sat (not b!5133462) (not b!5133461) (not start!543120) tp_is_empty!37927 (not b!5133463))
(check-sat)
(get-model)

(declare-fun d!1661116 () Bool)

(declare-fun lambda!255444 () Int)

(declare-fun exists!1709 (List!59700 Int) Bool)

(assert (=> d!1661116 (= (lostCause!1327 ctx!74) (exists!1709 (exprs!4265 ctx!74) lambda!255444))))

(declare-fun bs!1199345 () Bool)

(assert (= bs!1199345 d!1661116))

(declare-fun m!6199696 () Bool)

(assert (=> bs!1199345 m!6199696))

(assert (=> start!543120 d!1661116))

(declare-fun bs!1199346 () Bool)

(declare-fun d!1661126 () Bool)

(assert (= bs!1199346 (and d!1661126 d!1661116)))

(declare-fun lambda!255447 () Int)

(assert (=> bs!1199346 (not (= lambda!255447 lambda!255444))))

(declare-fun forall!13831 (List!59700 Int) Bool)

(assert (=> d!1661126 (= (inv!79133 ctx!74) (forall!13831 (exprs!4265 ctx!74) lambda!255447))))

(declare-fun bs!1199347 () Bool)

(assert (= bs!1199347 d!1661126))

(declare-fun m!6199698 () Bool)

(assert (=> bs!1199347 m!6199698))

(assert (=> start!543120 d!1661126))

(declare-fun d!1661128 () Bool)

(declare-fun nullableFct!1283 (Regex!14381) Bool)

(assert (=> d!1661128 (= (nullable!4756 (h!66024 (exprs!4265 ctx!74))) (nullableFct!1283 (h!66024 (exprs!4265 ctx!74))))))

(declare-fun bs!1199348 () Bool)

(assert (= bs!1199348 d!1661128))

(declare-fun m!6199700 () Bool)

(assert (=> bs!1199348 m!6199700))

(assert (=> b!5133461 d!1661128))

(declare-fun d!1661130 () Bool)

(declare-fun lostCauseFct!317 (Regex!14381) Bool)

(assert (=> d!1661130 (= (lostCause!1326 (h!66024 (exprs!4265 ctx!74))) (lostCauseFct!317 (h!66024 (exprs!4265 ctx!74))))))

(declare-fun bs!1199349 () Bool)

(assert (= bs!1199349 d!1661130))

(declare-fun m!6199702 () Bool)

(assert (=> bs!1199349 m!6199702))

(assert (=> b!5133462 d!1661130))

(declare-fun b!5133532 () Bool)

(declare-fun e!3201902 () Bool)

(declare-fun e!3201899 () Bool)

(assert (=> b!5133532 (= e!3201902 e!3201899)))

(declare-fun res!2186593 () Bool)

(assert (=> b!5133532 (=> (not res!2186593) (not e!3201899))))

(declare-fun call!357352 () Bool)

(assert (=> b!5133532 (= res!2186593 call!357352)))

(declare-fun b!5133533 () Bool)

(declare-fun res!2186592 () Bool)

(assert (=> b!5133533 (=> res!2186592 e!3201902)))

(assert (=> b!5133533 (= res!2186592 (not ((_ is Concat!23226) (h!66024 (exprs!4265 ctx!74)))))))

(declare-fun e!3201900 () Bool)

(assert (=> b!5133533 (= e!3201900 e!3201902)))

(declare-fun b!5133534 () Bool)

(declare-fun e!3201898 () Bool)

(assert (=> b!5133534 (= e!3201898 call!357352)))

(declare-fun b!5133535 () Bool)

(declare-fun e!3201903 () Bool)

(declare-fun call!357354 () Bool)

(assert (=> b!5133535 (= e!3201903 call!357354)))

(declare-fun b!5133536 () Bool)

(declare-fun res!2186595 () Bool)

(assert (=> b!5133536 (=> (not res!2186595) (not e!3201898))))

(declare-fun call!357353 () Bool)

(assert (=> b!5133536 (= res!2186595 call!357353)))

(assert (=> b!5133536 (= e!3201900 e!3201898)))

(declare-fun d!1661132 () Bool)

(declare-fun res!2186594 () Bool)

(declare-fun e!3201901 () Bool)

(assert (=> d!1661132 (=> res!2186594 e!3201901)))

(assert (=> d!1661132 (= res!2186594 ((_ is ElementMatch!14381) (h!66024 (exprs!4265 ctx!74))))))

(assert (=> d!1661132 (= (validRegex!6245 (h!66024 (exprs!4265 ctx!74))) e!3201901)))

(declare-fun bm!357347 () Bool)

(declare-fun c!883526 () Bool)

(assert (=> bm!357347 (= call!357352 (validRegex!6245 (ite c!883526 (regTwo!29275 (h!66024 (exprs!4265 ctx!74))) (regOne!29274 (h!66024 (exprs!4265 ctx!74))))))))

(declare-fun b!5133537 () Bool)

(declare-fun e!3201897 () Bool)

(assert (=> b!5133537 (= e!3201897 e!3201903)))

(declare-fun res!2186591 () Bool)

(assert (=> b!5133537 (= res!2186591 (not (nullable!4756 (reg!14710 (h!66024 (exprs!4265 ctx!74))))))))

(assert (=> b!5133537 (=> (not res!2186591) (not e!3201903))))

(declare-fun b!5133538 () Bool)

(assert (=> b!5133538 (= e!3201897 e!3201900)))

(assert (=> b!5133538 (= c!883526 ((_ is Union!14381) (h!66024 (exprs!4265 ctx!74))))))

(declare-fun c!883525 () Bool)

(declare-fun bm!357348 () Bool)

(assert (=> bm!357348 (= call!357354 (validRegex!6245 (ite c!883525 (reg!14710 (h!66024 (exprs!4265 ctx!74))) (ite c!883526 (regOne!29275 (h!66024 (exprs!4265 ctx!74))) (regTwo!29274 (h!66024 (exprs!4265 ctx!74)))))))))

(declare-fun bm!357349 () Bool)

(assert (=> bm!357349 (= call!357353 call!357354)))

(declare-fun b!5133539 () Bool)

(assert (=> b!5133539 (= e!3201901 e!3201897)))

(assert (=> b!5133539 (= c!883525 ((_ is Star!14381) (h!66024 (exprs!4265 ctx!74))))))

(declare-fun b!5133540 () Bool)

(assert (=> b!5133540 (= e!3201899 call!357353)))

(assert (= (and d!1661132 (not res!2186594)) b!5133539))

(assert (= (and b!5133539 c!883525) b!5133537))

(assert (= (and b!5133539 (not c!883525)) b!5133538))

(assert (= (and b!5133537 res!2186591) b!5133535))

(assert (= (and b!5133538 c!883526) b!5133536))

(assert (= (and b!5133538 (not c!883526)) b!5133533))

(assert (= (and b!5133536 res!2186595) b!5133534))

(assert (= (and b!5133533 (not res!2186592)) b!5133532))

(assert (= (and b!5133532 res!2186593) b!5133540))

(assert (= (or b!5133536 b!5133540) bm!357349))

(assert (= (or b!5133534 b!5133532) bm!357347))

(assert (= (or b!5133535 bm!357349) bm!357348))

(declare-fun m!6199724 () Bool)

(assert (=> bm!357347 m!6199724))

(declare-fun m!6199726 () Bool)

(assert (=> b!5133537 m!6199726))

(declare-fun m!6199728 () Bool)

(assert (=> bm!357348 m!6199728))

(assert (=> b!5133462 d!1661132))

(declare-fun b!5133596 () Bool)

(declare-fun e!3201938 () (InoxSet Context!7530))

(declare-fun call!357385 () (InoxSet Context!7530))

(assert (=> b!5133596 (= e!3201938 call!357385)))

(declare-fun b!5133597 () Bool)

(declare-fun e!3201935 () (InoxSet Context!7530))

(assert (=> b!5133597 (= e!3201935 call!357385)))

(declare-fun b!5133598 () Bool)

(declare-fun c!883554 () Bool)

(declare-fun e!3201936 () Bool)

(assert (=> b!5133598 (= c!883554 e!3201936)))

(declare-fun res!2186601 () Bool)

(assert (=> b!5133598 (=> (not res!2186601) (not e!3201936))))

(assert (=> b!5133598 (= res!2186601 ((_ is Concat!23226) (h!66024 (exprs!4265 ctx!74))))))

(declare-fun e!3201934 () (InoxSet Context!7530))

(declare-fun e!3201937 () (InoxSet Context!7530))

(assert (=> b!5133598 (= e!3201934 e!3201937)))

(declare-fun bm!357380 () Bool)

(declare-fun call!357389 () List!59700)

(declare-fun c!883555 () Bool)

(declare-fun $colon$colon!1158 (List!59700 Regex!14381) List!59700)

(assert (=> bm!357380 (= call!357389 ($colon$colon!1158 (exprs!4265 lt!2118593) (ite (or c!883554 c!883555) (regTwo!29274 (h!66024 (exprs!4265 ctx!74))) (h!66024 (exprs!4265 ctx!74)))))))

(declare-fun bm!357381 () Bool)

(declare-fun call!357390 () List!59700)

(assert (=> bm!357381 (= call!357390 call!357389)))

(declare-fun call!357388 () (InoxSet Context!7530))

(declare-fun c!883552 () Bool)

(declare-fun bm!357382 () Bool)

(assert (=> bm!357382 (= call!357388 (derivationStepZipperDown!102 (ite c!883552 (regOne!29275 (h!66024 (exprs!4265 ctx!74))) (ite c!883554 (regTwo!29274 (h!66024 (exprs!4265 ctx!74))) (ite c!883555 (regOne!29274 (h!66024 (exprs!4265 ctx!74))) (reg!14710 (h!66024 (exprs!4265 ctx!74)))))) (ite (or c!883552 c!883554) lt!2118593 (Context!7531 call!357390)) a!1252))))

(declare-fun b!5133599 () Bool)

(declare-fun c!883556 () Bool)

(assert (=> b!5133599 (= c!883556 ((_ is Star!14381) (h!66024 (exprs!4265 ctx!74))))))

(assert (=> b!5133599 (= e!3201938 e!3201935)))

(declare-fun b!5133600 () Bool)

(declare-fun call!357387 () (InoxSet Context!7530))

(assert (=> b!5133600 (= e!3201934 ((_ map or) call!357388 call!357387))))

(declare-fun bm!357383 () Bool)

(declare-fun call!357386 () (InoxSet Context!7530))

(assert (=> bm!357383 (= call!357386 call!357388)))

(declare-fun b!5133601 () Bool)

(assert (=> b!5133601 (= e!3201937 ((_ map or) call!357387 call!357386))))

(declare-fun b!5133602 () Bool)

(assert (=> b!5133602 (= e!3201935 ((as const (Array Context!7530 Bool)) false))))

(declare-fun b!5133603 () Bool)

(declare-fun e!3201939 () (InoxSet Context!7530))

(assert (=> b!5133603 (= e!3201939 e!3201934)))

(assert (=> b!5133603 (= c!883552 ((_ is Union!14381) (h!66024 (exprs!4265 ctx!74))))))

(declare-fun bm!357384 () Bool)

(assert (=> bm!357384 (= call!357385 call!357386)))

(declare-fun b!5133604 () Bool)

(assert (=> b!5133604 (= e!3201937 e!3201938)))

(assert (=> b!5133604 (= c!883555 ((_ is Concat!23226) (h!66024 (exprs!4265 ctx!74))))))

(declare-fun b!5133605 () Bool)

(assert (=> b!5133605 (= e!3201939 (store ((as const (Array Context!7530 Bool)) false) lt!2118593 true))))

(declare-fun bm!357385 () Bool)

(assert (=> bm!357385 (= call!357387 (derivationStepZipperDown!102 (ite c!883552 (regTwo!29275 (h!66024 (exprs!4265 ctx!74))) (regOne!29274 (h!66024 (exprs!4265 ctx!74)))) (ite c!883552 lt!2118593 (Context!7531 call!357389)) a!1252))))

(declare-fun d!1661140 () Bool)

(declare-fun c!883553 () Bool)

(assert (=> d!1661140 (= c!883553 (and ((_ is ElementMatch!14381) (h!66024 (exprs!4265 ctx!74))) (= (c!883496 (h!66024 (exprs!4265 ctx!74))) a!1252)))))

(assert (=> d!1661140 (= (derivationStepZipperDown!102 (h!66024 (exprs!4265 ctx!74)) lt!2118593 a!1252) e!3201939)))

(declare-fun b!5133606 () Bool)

(assert (=> b!5133606 (= e!3201936 (nullable!4756 (regOne!29274 (h!66024 (exprs!4265 ctx!74)))))))

(assert (= (and d!1661140 c!883553) b!5133605))

(assert (= (and d!1661140 (not c!883553)) b!5133603))

(assert (= (and b!5133603 c!883552) b!5133600))

(assert (= (and b!5133603 (not c!883552)) b!5133598))

(assert (= (and b!5133598 res!2186601) b!5133606))

(assert (= (and b!5133598 c!883554) b!5133601))

(assert (= (and b!5133598 (not c!883554)) b!5133604))

(assert (= (and b!5133604 c!883555) b!5133596))

(assert (= (and b!5133604 (not c!883555)) b!5133599))

(assert (= (and b!5133599 c!883556) b!5133597))

(assert (= (and b!5133599 (not c!883556)) b!5133602))

(assert (= (or b!5133596 b!5133597) bm!357381))

(assert (= (or b!5133596 b!5133597) bm!357384))

(assert (= (or b!5133601 bm!357381) bm!357380))

(assert (= (or b!5133601 bm!357384) bm!357383))

(assert (= (or b!5133600 bm!357383) bm!357382))

(assert (= (or b!5133600 b!5133601) bm!357385))

(declare-fun m!6199740 () Bool)

(assert (=> bm!357385 m!6199740))

(declare-fun m!6199742 () Bool)

(assert (=> b!5133605 m!6199742))

(declare-fun m!6199744 () Bool)

(assert (=> b!5133606 m!6199744))

(declare-fun m!6199746 () Bool)

(assert (=> bm!357382 m!6199746))

(declare-fun m!6199748 () Bool)

(assert (=> bm!357380 m!6199748))

(assert (=> b!5133462 d!1661140))

(declare-fun bs!1199368 () Bool)

(declare-fun b!5133616 () Bool)

(declare-fun d!1661144 () Bool)

(assert (= bs!1199368 (and b!5133616 d!1661144)))

(declare-fun lambda!255470 () Int)

(declare-fun lambda!255469 () Int)

(assert (=> bs!1199368 (not (= lambda!255470 lambda!255469))))

(declare-fun bs!1199369 () Bool)

(declare-fun b!5133617 () Bool)

(assert (= bs!1199369 (and b!5133617 d!1661144)))

(declare-fun lambda!255471 () Int)

(assert (=> bs!1199369 (not (= lambda!255471 lambda!255469))))

(declare-fun bs!1199370 () Bool)

(assert (= bs!1199370 (and b!5133617 b!5133616)))

(assert (=> bs!1199370 (= lambda!255471 lambda!255470)))

(declare-fun e!3201949 () Unit!150909)

(declare-fun Unit!150915 () Unit!150909)

(assert (=> b!5133616 (= e!3201949 Unit!150915)))

(declare-datatypes ((List!59703 0))(
  ( (Nil!59579) (Cons!59579 (h!66027 Context!7530) (t!372730 List!59703)) )
))
(declare-fun lt!2118656 () List!59703)

(declare-fun call!357395 () List!59703)

(assert (=> b!5133616 (= lt!2118656 call!357395)))

(declare-fun lt!2118660 () Unit!150909)

(declare-fun lemmaNotForallThenExists!406 (List!59703 Int) Unit!150909)

(assert (=> b!5133616 (= lt!2118660 (lemmaNotForallThenExists!406 lt!2118656 lambda!255469))))

(declare-fun call!357396 () Bool)

(assert (=> b!5133616 call!357396))

(declare-fun lt!2118658 () Unit!150909)

(assert (=> b!5133616 (= lt!2118658 lt!2118660)))

(declare-fun Unit!150916 () Unit!150909)

(assert (=> b!5133617 (= e!3201949 Unit!150916)))

(declare-fun lt!2118654 () List!59703)

(assert (=> b!5133617 (= lt!2118654 call!357395)))

(declare-fun lt!2118655 () Unit!150909)

(declare-fun lemmaForallThenNotExists!373 (List!59703 Int) Unit!150909)

(assert (=> b!5133617 (= lt!2118655 (lemmaForallThenNotExists!373 lt!2118654 lambda!255469))))

(assert (=> b!5133617 (not call!357396)))

(declare-fun lt!2118659 () Unit!150909)

(assert (=> b!5133617 (= lt!2118659 lt!2118655)))

(declare-fun bm!357390 () Bool)

(declare-fun toList!8358 ((InoxSet Context!7530)) List!59703)

(assert (=> bm!357390 (= call!357395 (toList!8358 (derivationStepZipperDown!102 (h!66024 (exprs!4265 ctx!74)) lt!2118593 a!1252)))))

(declare-fun lt!2118657 () Bool)

(declare-datatypes ((List!59704 0))(
  ( (Nil!59580) (Cons!59580 (h!66028 C!29028) (t!372731 List!59704)) )
))
(declare-datatypes ((Option!14751 0))(
  ( (None!14750) (Some!14750 (v!50779 List!59704)) )
))
(declare-fun isEmpty!32012 (Option!14751) Bool)

(declare-fun getLanguageWitness!888 ((InoxSet Context!7530)) Option!14751)

(assert (=> d!1661144 (= lt!2118657 (isEmpty!32012 (getLanguageWitness!888 (derivationStepZipperDown!102 (h!66024 (exprs!4265 ctx!74)) lt!2118593 a!1252))))))

(declare-fun forall!13832 ((InoxSet Context!7530) Int) Bool)

(assert (=> d!1661144 (= lt!2118657 (forall!13832 (derivationStepZipperDown!102 (h!66024 (exprs!4265 ctx!74)) lt!2118593 a!1252) lambda!255469))))

(declare-fun lt!2118653 () Unit!150909)

(assert (=> d!1661144 (= lt!2118653 e!3201949)))

(declare-fun c!883567 () Bool)

(assert (=> d!1661144 (= c!883567 (not (forall!13832 (derivationStepZipperDown!102 (h!66024 (exprs!4265 ctx!74)) lt!2118593 a!1252) lambda!255469)))))

(assert (=> d!1661144 (= (lostCauseZipper!1221 (derivationStepZipperDown!102 (h!66024 (exprs!4265 ctx!74)) lt!2118593 a!1252)) lt!2118657)))

(declare-fun bm!357391 () Bool)

(declare-fun exists!1710 (List!59703 Int) Bool)

(assert (=> bm!357391 (= call!357396 (exists!1710 (ite c!883567 lt!2118656 lt!2118654) (ite c!883567 lambda!255470 lambda!255471)))))

(assert (= (and d!1661144 c!883567) b!5133616))

(assert (= (and d!1661144 (not c!883567)) b!5133617))

(assert (= (or b!5133616 b!5133617) bm!357390))

(assert (= (or b!5133616 b!5133617) bm!357391))

(declare-fun m!6199756 () Bool)

(assert (=> b!5133617 m!6199756))

(declare-fun m!6199758 () Bool)

(assert (=> b!5133616 m!6199758))

(assert (=> bm!357390 m!6199644))

(declare-fun m!6199760 () Bool)

(assert (=> bm!357390 m!6199760))

(assert (=> d!1661144 m!6199644))

(declare-fun m!6199762 () Bool)

(assert (=> d!1661144 m!6199762))

(assert (=> d!1661144 m!6199762))

(declare-fun m!6199764 () Bool)

(assert (=> d!1661144 m!6199764))

(assert (=> d!1661144 m!6199644))

(declare-fun m!6199766 () Bool)

(assert (=> d!1661144 m!6199766))

(assert (=> d!1661144 m!6199644))

(assert (=> d!1661144 m!6199766))

(declare-fun m!6199768 () Bool)

(assert (=> bm!357391 m!6199768))

(assert (=> b!5133462 d!1661144))

(declare-fun d!1661150 () Bool)

(assert (=> d!1661150 (lostCauseZipper!1221 (derivationStepZipperUp!79 lt!2118593 a!1252))))

(declare-fun lt!2118663 () Unit!150909)

(declare-fun choose!37957 (Context!7530 C!29028) Unit!150909)

(assert (=> d!1661150 (= lt!2118663 (choose!37957 lt!2118593 a!1252))))

(assert (=> d!1661150 (lostCause!1327 lt!2118593)))

(assert (=> d!1661150 (= (lemmaLostCauseFixPointDerivUp!12 lt!2118593 a!1252) lt!2118663)))

(declare-fun bs!1199371 () Bool)

(assert (= bs!1199371 d!1661150))

(assert (=> bs!1199371 m!6199652))

(assert (=> bs!1199371 m!6199652))

(assert (=> bs!1199371 m!6199654))

(declare-fun m!6199770 () Bool)

(assert (=> bs!1199371 m!6199770))

(declare-fun m!6199772 () Bool)

(assert (=> bs!1199371 m!6199772))

(assert (=> b!5133462 d!1661150))

(declare-fun b!5133628 () Bool)

(declare-fun e!3201958 () Bool)

(assert (=> b!5133628 (= e!3201958 (nullable!4756 (h!66024 (exprs!4265 lt!2118593))))))

(declare-fun b!5133629 () Bool)

(declare-fun e!3201957 () (InoxSet Context!7530))

(declare-fun call!357399 () (InoxSet Context!7530))

(assert (=> b!5133629 (= e!3201957 call!357399)))

(declare-fun d!1661152 () Bool)

(declare-fun c!883572 () Bool)

(assert (=> d!1661152 (= c!883572 e!3201958)))

(declare-fun res!2186604 () Bool)

(assert (=> d!1661152 (=> (not res!2186604) (not e!3201958))))

(assert (=> d!1661152 (= res!2186604 ((_ is Cons!59576) (exprs!4265 lt!2118593)))))

(declare-fun e!3201956 () (InoxSet Context!7530))

(assert (=> d!1661152 (= (derivationStepZipperUp!79 lt!2118593 a!1252) e!3201956)))

(declare-fun b!5133630 () Bool)

(assert (=> b!5133630 (= e!3201956 e!3201957)))

(declare-fun c!883573 () Bool)

(assert (=> b!5133630 (= c!883573 ((_ is Cons!59576) (exprs!4265 lt!2118593)))))

(declare-fun b!5133631 () Bool)

(assert (=> b!5133631 (= e!3201956 ((_ map or) call!357399 (derivationStepZipperUp!79 (Context!7531 (t!372727 (exprs!4265 lt!2118593))) a!1252)))))

(declare-fun bm!357394 () Bool)

(assert (=> bm!357394 (= call!357399 (derivationStepZipperDown!102 (h!66024 (exprs!4265 lt!2118593)) (Context!7531 (t!372727 (exprs!4265 lt!2118593))) a!1252))))

(declare-fun b!5133632 () Bool)

(assert (=> b!5133632 (= e!3201957 ((as const (Array Context!7530 Bool)) false))))

(assert (= (and d!1661152 res!2186604) b!5133628))

(assert (= (and d!1661152 c!883572) b!5133631))

(assert (= (and d!1661152 (not c!883572)) b!5133630))

(assert (= (and b!5133630 c!883573) b!5133629))

(assert (= (and b!5133630 (not c!883573)) b!5133632))

(assert (= (or b!5133631 b!5133629) bm!357394))

(declare-fun m!6199774 () Bool)

(assert (=> b!5133628 m!6199774))

(declare-fun m!6199776 () Bool)

(assert (=> b!5133631 m!6199776))

(declare-fun m!6199778 () Bool)

(assert (=> bm!357394 m!6199778))

(assert (=> b!5133462 d!1661152))

(declare-fun d!1661154 () Bool)

(assert (=> d!1661154 (lostCauseZipper!1221 (derivationStepZipperDown!102 (h!66024 (exprs!4265 ctx!74)) lt!2118593 a!1252))))

(declare-fun lt!2118666 () Unit!150909)

(declare-fun choose!37958 (Regex!14381 Context!7530 C!29028) Unit!150909)

(assert (=> d!1661154 (= lt!2118666 (choose!37958 (h!66024 (exprs!4265 ctx!74)) lt!2118593 a!1252))))

(assert (=> d!1661154 (validRegex!6245 (h!66024 (exprs!4265 ctx!74)))))

(assert (=> d!1661154 (= (lemmaLostCauseFixPointDerivDown!2 (h!66024 (exprs!4265 ctx!74)) lt!2118593 a!1252) lt!2118666)))

(declare-fun bs!1199372 () Bool)

(assert (= bs!1199372 d!1661154))

(assert (=> bs!1199372 m!6199644))

(assert (=> bs!1199372 m!6199644))

(assert (=> bs!1199372 m!6199658))

(declare-fun m!6199780 () Bool)

(assert (=> bs!1199372 m!6199780))

(assert (=> bs!1199372 m!6199642))

(assert (=> b!5133462 d!1661154))

(declare-fun d!1661156 () Bool)

(assert (=> d!1661156 (not (lostCause!1326 (h!66024 (exprs!4265 ctx!74))))))

(declare-fun lt!2118669 () Unit!150909)

(declare-fun choose!37959 (Regex!14381) Unit!150909)

(assert (=> d!1661156 (= lt!2118669 (choose!37959 (h!66024 (exprs!4265 ctx!74))))))

(assert (=> d!1661156 (validRegex!6245 (h!66024 (exprs!4265 ctx!74)))))

(assert (=> d!1661156 (= (lemmaNullableThenNotLostCause!38 (h!66024 (exprs!4265 ctx!74))) lt!2118669)))

(declare-fun bs!1199373 () Bool)

(assert (= bs!1199373 d!1661156))

(assert (=> bs!1199373 m!6199656))

(declare-fun m!6199782 () Bool)

(assert (=> bs!1199373 m!6199782))

(assert (=> bs!1199373 m!6199642))

(assert (=> b!5133462 d!1661156))

(declare-fun bs!1199374 () Bool)

(declare-fun d!1661158 () Bool)

(assert (= bs!1199374 (and d!1661158 d!1661144)))

(declare-fun lambda!255472 () Int)

(assert (=> bs!1199374 (= lambda!255472 lambda!255469)))

(declare-fun bs!1199375 () Bool)

(assert (= bs!1199375 (and d!1661158 b!5133616)))

(assert (=> bs!1199375 (not (= lambda!255472 lambda!255470))))

(declare-fun bs!1199376 () Bool)

(assert (= bs!1199376 (and d!1661158 b!5133617)))

(assert (=> bs!1199376 (not (= lambda!255472 lambda!255471))))

(declare-fun bs!1199377 () Bool)

(declare-fun b!5133633 () Bool)

(assert (= bs!1199377 (and b!5133633 d!1661144)))

(declare-fun lambda!255473 () Int)

(assert (=> bs!1199377 (not (= lambda!255473 lambda!255469))))

(declare-fun bs!1199378 () Bool)

(assert (= bs!1199378 (and b!5133633 b!5133616)))

(assert (=> bs!1199378 (= lambda!255473 lambda!255470)))

(declare-fun bs!1199379 () Bool)

(assert (= bs!1199379 (and b!5133633 b!5133617)))

(assert (=> bs!1199379 (= lambda!255473 lambda!255471)))

(declare-fun bs!1199380 () Bool)

(assert (= bs!1199380 (and b!5133633 d!1661158)))

(assert (=> bs!1199380 (not (= lambda!255473 lambda!255472))))

(declare-fun bs!1199381 () Bool)

(declare-fun b!5133634 () Bool)

(assert (= bs!1199381 (and b!5133634 b!5133617)))

(declare-fun lambda!255474 () Int)

(assert (=> bs!1199381 (= lambda!255474 lambda!255471)))

(declare-fun bs!1199382 () Bool)

(assert (= bs!1199382 (and b!5133634 b!5133616)))

(assert (=> bs!1199382 (= lambda!255474 lambda!255470)))

(declare-fun bs!1199383 () Bool)

(assert (= bs!1199383 (and b!5133634 d!1661144)))

(assert (=> bs!1199383 (not (= lambda!255474 lambda!255469))))

(declare-fun bs!1199384 () Bool)

(assert (= bs!1199384 (and b!5133634 b!5133633)))

(assert (=> bs!1199384 (= lambda!255474 lambda!255473)))

(declare-fun bs!1199385 () Bool)

(assert (= bs!1199385 (and b!5133634 d!1661158)))

(assert (=> bs!1199385 (not (= lambda!255474 lambda!255472))))

(declare-fun e!3201959 () Unit!150909)

(declare-fun Unit!150917 () Unit!150909)

(assert (=> b!5133633 (= e!3201959 Unit!150917)))

(declare-fun lt!2118673 () List!59703)

(declare-fun call!357400 () List!59703)

(assert (=> b!5133633 (= lt!2118673 call!357400)))

(declare-fun lt!2118677 () Unit!150909)

(assert (=> b!5133633 (= lt!2118677 (lemmaNotForallThenExists!406 lt!2118673 lambda!255472))))

(declare-fun call!357401 () Bool)

(assert (=> b!5133633 call!357401))

(declare-fun lt!2118675 () Unit!150909)

(assert (=> b!5133633 (= lt!2118675 lt!2118677)))

(declare-fun Unit!150918 () Unit!150909)

(assert (=> b!5133634 (= e!3201959 Unit!150918)))

(declare-fun lt!2118671 () List!59703)

(assert (=> b!5133634 (= lt!2118671 call!357400)))

(declare-fun lt!2118672 () Unit!150909)

(assert (=> b!5133634 (= lt!2118672 (lemmaForallThenNotExists!373 lt!2118671 lambda!255472))))

(assert (=> b!5133634 (not call!357401)))

(declare-fun lt!2118676 () Unit!150909)

(assert (=> b!5133634 (= lt!2118676 lt!2118672)))

(declare-fun bm!357395 () Bool)

(assert (=> bm!357395 (= call!357400 (toList!8358 (derivationStepZipperUp!79 lt!2118593 a!1252)))))

(declare-fun lt!2118674 () Bool)

(assert (=> d!1661158 (= lt!2118674 (isEmpty!32012 (getLanguageWitness!888 (derivationStepZipperUp!79 lt!2118593 a!1252))))))

(assert (=> d!1661158 (= lt!2118674 (forall!13832 (derivationStepZipperUp!79 lt!2118593 a!1252) lambda!255472))))

(declare-fun lt!2118670 () Unit!150909)

(assert (=> d!1661158 (= lt!2118670 e!3201959)))

(declare-fun c!883574 () Bool)

(assert (=> d!1661158 (= c!883574 (not (forall!13832 (derivationStepZipperUp!79 lt!2118593 a!1252) lambda!255472)))))

(assert (=> d!1661158 (= (lostCauseZipper!1221 (derivationStepZipperUp!79 lt!2118593 a!1252)) lt!2118674)))

(declare-fun bm!357396 () Bool)

(assert (=> bm!357396 (= call!357401 (exists!1710 (ite c!883574 lt!2118673 lt!2118671) (ite c!883574 lambda!255473 lambda!255474)))))

(assert (= (and d!1661158 c!883574) b!5133633))

(assert (= (and d!1661158 (not c!883574)) b!5133634))

(assert (= (or b!5133633 b!5133634) bm!357395))

(assert (= (or b!5133633 b!5133634) bm!357396))

(declare-fun m!6199784 () Bool)

(assert (=> b!5133634 m!6199784))

(declare-fun m!6199786 () Bool)

(assert (=> b!5133633 m!6199786))

(assert (=> bm!357395 m!6199652))

(declare-fun m!6199788 () Bool)

(assert (=> bm!357395 m!6199788))

(assert (=> d!1661158 m!6199652))

(declare-fun m!6199790 () Bool)

(assert (=> d!1661158 m!6199790))

(assert (=> d!1661158 m!6199790))

(declare-fun m!6199792 () Bool)

(assert (=> d!1661158 m!6199792))

(assert (=> d!1661158 m!6199652))

(declare-fun m!6199794 () Bool)

(assert (=> d!1661158 m!6199794))

(assert (=> d!1661158 m!6199652))

(assert (=> d!1661158 m!6199794))

(declare-fun m!6199796 () Bool)

(assert (=> bm!357396 m!6199796))

(assert (=> b!5133462 d!1661158))

(declare-fun b!5133639 () Bool)

(declare-fun e!3201962 () Bool)

(declare-fun tp!1431992 () Bool)

(declare-fun tp!1431993 () Bool)

(assert (=> b!5133639 (= e!3201962 (and tp!1431992 tp!1431993))))

(assert (=> b!5133463 (= tp!1431981 e!3201962)))

(assert (= (and b!5133463 ((_ is Cons!59576) (exprs!4265 ctx!74))) b!5133639))

(check-sat (not d!1661126) (not b!5133628) (not bm!357382) (not d!1661156) (not d!1661144) (not bm!357396) (not bm!357385) (not bm!357394) (not bm!357347) (not bm!357380) (not b!5133631) (not bm!357348) (not bm!357390) (not d!1661130) (not b!5133639) (not b!5133537) (not d!1661158) (not bm!357391) (not bm!357395) tp_is_empty!37927 (not d!1661154) (not b!5133633) (not d!1661128) (not b!5133606) (not b!5133617) (not b!5133616) (not d!1661150) (not b!5133634) (not d!1661116))
(check-sat)
