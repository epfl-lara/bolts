; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543344 () Bool)

(assert start!543344)

(declare-fun b!5134662 () Bool)

(declare-fun e!3202621 () Bool)

(declare-datatypes ((C!29060 0))(
  ( (C!29061 (val!24182 Int)) )
))
(declare-datatypes ((Regex!14397 0))(
  ( (ElementMatch!14397 (c!883734 C!29060)) (Concat!23242 (regOne!29306 Regex!14397) (regTwo!29306 Regex!14397)) (EmptyExpr!14397) (Star!14397 (reg!14726 Regex!14397)) (EmptyLang!14397) (Union!14397 (regOne!29307 Regex!14397) (regTwo!29307 Regex!14397)) )
))
(declare-datatypes ((List!59724 0))(
  ( (Nil!59600) (Cons!59600 (h!66048 Regex!14397) (t!372751 List!59724)) )
))
(declare-datatypes ((Context!7562 0))(
  ( (Context!7563 (exprs!4281 List!59724)) )
))
(declare-fun lt!2118816 () Context!7562)

(declare-fun inv!79173 (Context!7562) Bool)

(assert (=> b!5134662 (= e!3202621 (not (inv!79173 lt!2118816)))))

(declare-fun a!1252 () C!29060)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1225 ((InoxSet Context!7562)) Bool)

(declare-fun derivationStepZipperUp!83 (Context!7562 C!29060) (InoxSet Context!7562))

(assert (=> b!5134662 (lostCauseZipper!1225 (derivationStepZipperUp!83 lt!2118816 a!1252))))

(declare-datatypes ((Unit!150937 0))(
  ( (Unit!150938) )
))
(declare-fun lt!2118815 () Unit!150937)

(declare-fun lemmaLostCauseFixPointDerivUp!16 (Context!7562 C!29060) Unit!150937)

(assert (=> b!5134662 (= lt!2118815 (lemmaLostCauseFixPointDerivUp!16 lt!2118816 a!1252))))

(declare-fun ctx!74 () Context!7562)

(assert (=> b!5134662 (= lt!2118816 (Context!7563 (t!372751 (exprs!4281 ctx!74))))))

(declare-fun lostCause!1354 (Regex!14397) Bool)

(assert (=> b!5134662 (not (lostCause!1354 (h!66048 (exprs!4281 ctx!74))))))

(declare-fun lt!2118814 () Unit!150937)

(declare-fun lemmaNullableThenNotLostCause!48 (Regex!14397) Unit!150937)

(assert (=> b!5134662 (= lt!2118814 (lemmaNullableThenNotLostCause!48 (h!66048 (exprs!4281 ctx!74))))))

(declare-fun b!5134660 () Bool)

(declare-fun res!2187097 () Bool)

(assert (=> b!5134660 (=> (not res!2187097) (not e!3202621))))

(get-info :version)

(assert (=> b!5134660 (= res!2187097 ((_ is Cons!59600) (exprs!4281 ctx!74)))))

(declare-fun b!5134663 () Bool)

(declare-fun e!3202622 () Bool)

(declare-fun tp!1432267 () Bool)

(assert (=> b!5134663 (= e!3202622 tp!1432267)))

(declare-fun b!5134661 () Bool)

(declare-fun res!2187096 () Bool)

(assert (=> b!5134661 (=> (not res!2187096) (not e!3202621))))

(declare-fun nullable!4770 (Regex!14397) Bool)

(assert (=> b!5134661 (= res!2187096 (nullable!4770 (h!66048 (exprs!4281 ctx!74))))))

(declare-fun res!2187098 () Bool)

(assert (=> start!543344 (=> (not res!2187098) (not e!3202621))))

(declare-fun lostCause!1355 (Context!7562) Bool)

(assert (=> start!543344 (= res!2187098 (lostCause!1355 ctx!74))))

(assert (=> start!543344 e!3202621))

(assert (=> start!543344 (and (inv!79173 ctx!74) e!3202622)))

(declare-fun tp_is_empty!37947 () Bool)

(assert (=> start!543344 tp_is_empty!37947))

(assert (= (and start!543344 res!2187098) b!5134660))

(assert (= (and b!5134660 res!2187097) b!5134661))

(assert (= (and b!5134661 res!2187096) b!5134662))

(assert (= start!543344 b!5134663))

(declare-fun m!6200358 () Bool)

(assert (=> b!5134662 m!6200358))

(declare-fun m!6200360 () Bool)

(assert (=> b!5134662 m!6200360))

(declare-fun m!6200362 () Bool)

(assert (=> b!5134662 m!6200362))

(declare-fun m!6200364 () Bool)

(assert (=> b!5134662 m!6200364))

(declare-fun m!6200366 () Bool)

(assert (=> b!5134662 m!6200366))

(assert (=> b!5134662 m!6200364))

(declare-fun m!6200368 () Bool)

(assert (=> b!5134662 m!6200368))

(declare-fun m!6200370 () Bool)

(assert (=> b!5134661 m!6200370))

(declare-fun m!6200372 () Bool)

(assert (=> start!543344 m!6200372))

(declare-fun m!6200374 () Bool)

(assert (=> start!543344 m!6200374))

(check-sat (not b!5134663) (not start!543344) (not b!5134661) tp_is_empty!37947 (not b!5134662))
(check-sat)
(get-model)

(declare-fun d!1661422 () Bool)

(declare-fun lambda!255584 () Int)

(declare-fun exists!1722 (List!59724 Int) Bool)

(assert (=> d!1661422 (= (lostCause!1355 ctx!74) (exists!1722 (exprs!4281 ctx!74) lambda!255584))))

(declare-fun bs!1199535 () Bool)

(assert (= bs!1199535 d!1661422))

(declare-fun m!6200414 () Bool)

(assert (=> bs!1199535 m!6200414))

(assert (=> start!543344 d!1661422))

(declare-fun bs!1199536 () Bool)

(declare-fun d!1661440 () Bool)

(assert (= bs!1199536 (and d!1661440 d!1661422)))

(declare-fun lambda!255587 () Int)

(assert (=> bs!1199536 (not (= lambda!255587 lambda!255584))))

(declare-fun forall!13846 (List!59724 Int) Bool)

(assert (=> d!1661440 (= (inv!79173 ctx!74) (forall!13846 (exprs!4281 ctx!74) lambda!255587))))

(declare-fun bs!1199537 () Bool)

(assert (= bs!1199537 d!1661440))

(declare-fun m!6200416 () Bool)

(assert (=> bs!1199537 m!6200416))

(assert (=> start!543344 d!1661440))

(declare-fun d!1661442 () Bool)

(declare-fun nullableFct!1293 (Regex!14397) Bool)

(assert (=> d!1661442 (= (nullable!4770 (h!66048 (exprs!4281 ctx!74))) (nullableFct!1293 (h!66048 (exprs!4281 ctx!74))))))

(declare-fun bs!1199538 () Bool)

(assert (= bs!1199538 d!1661442))

(declare-fun m!6200418 () Bool)

(assert (=> bs!1199538 m!6200418))

(assert (=> b!5134661 d!1661442))

(declare-fun bs!1199539 () Bool)

(declare-fun b!5134694 () Bool)

(declare-fun d!1661444 () Bool)

(assert (= bs!1199539 (and b!5134694 d!1661444)))

(declare-fun lambda!255601 () Int)

(declare-fun lambda!255600 () Int)

(assert (=> bs!1199539 (not (= lambda!255601 lambda!255600))))

(declare-fun bs!1199540 () Bool)

(declare-fun b!5134695 () Bool)

(assert (= bs!1199540 (and b!5134695 d!1661444)))

(declare-fun lambda!255602 () Int)

(assert (=> bs!1199540 (not (= lambda!255602 lambda!255600))))

(declare-fun bs!1199541 () Bool)

(assert (= bs!1199541 (and b!5134695 b!5134694)))

(assert (=> bs!1199541 (= lambda!255602 lambda!255601)))

(declare-fun bm!357560 () Bool)

(declare-datatypes ((List!59727 0))(
  ( (Nil!59603) (Cons!59603 (h!66051 Context!7562) (t!372754 List!59727)) )
))
(declare-fun call!357565 () List!59727)

(declare-fun toList!8360 ((InoxSet Context!7562)) List!59727)

(assert (=> bm!357560 (= call!357565 (toList!8360 (derivationStepZipperUp!83 lt!2118816 a!1252)))))

(declare-fun lt!2118864 () Bool)

(declare-datatypes ((List!59728 0))(
  ( (Nil!59604) (Cons!59604 (h!66052 C!29060) (t!372755 List!59728)) )
))
(declare-datatypes ((Option!14757 0))(
  ( (None!14756) (Some!14756 (v!50785 List!59728)) )
))
(declare-fun isEmpty!32018 (Option!14757) Bool)

(declare-fun getLanguageWitness!894 ((InoxSet Context!7562)) Option!14757)

(assert (=> d!1661444 (= lt!2118864 (isEmpty!32018 (getLanguageWitness!894 (derivationStepZipperUp!83 lt!2118816 a!1252))))))

(declare-fun forall!13847 ((InoxSet Context!7562) Int) Bool)

(assert (=> d!1661444 (= lt!2118864 (forall!13847 (derivationStepZipperUp!83 lt!2118816 a!1252) lambda!255600))))

(declare-fun lt!2118863 () Unit!150937)

(declare-fun e!3202648 () Unit!150937)

(assert (=> d!1661444 (= lt!2118863 e!3202648)))

(declare-fun c!883762 () Bool)

(assert (=> d!1661444 (= c!883762 (not (forall!13847 (derivationStepZipperUp!83 lt!2118816 a!1252) lambda!255600)))))

(assert (=> d!1661444 (= (lostCauseZipper!1225 (derivationStepZipperUp!83 lt!2118816 a!1252)) lt!2118864)))

(declare-fun Unit!150941 () Unit!150937)

(assert (=> b!5134695 (= e!3202648 Unit!150941)))

(declare-fun lt!2118869 () List!59727)

(assert (=> b!5134695 (= lt!2118869 call!357565)))

(declare-fun lt!2118865 () Unit!150937)

(declare-fun lemmaForallThenNotExists!375 (List!59727 Int) Unit!150937)

(assert (=> b!5134695 (= lt!2118865 (lemmaForallThenNotExists!375 lt!2118869 lambda!255600))))

(declare-fun call!357566 () Bool)

(assert (=> b!5134695 (not call!357566)))

(declare-fun lt!2118867 () Unit!150937)

(assert (=> b!5134695 (= lt!2118867 lt!2118865)))

(declare-fun Unit!150942 () Unit!150937)

(assert (=> b!5134694 (= e!3202648 Unit!150942)))

(declare-fun lt!2118866 () List!59727)

(assert (=> b!5134694 (= lt!2118866 call!357565)))

(declare-fun lt!2118870 () Unit!150937)

(declare-fun lemmaNotForallThenExists!408 (List!59727 Int) Unit!150937)

(assert (=> b!5134694 (= lt!2118870 (lemmaNotForallThenExists!408 lt!2118866 lambda!255600))))

(assert (=> b!5134694 call!357566))

(declare-fun lt!2118868 () Unit!150937)

(assert (=> b!5134694 (= lt!2118868 lt!2118870)))

(declare-fun bm!357561 () Bool)

(declare-fun exists!1723 (List!59727 Int) Bool)

(assert (=> bm!357561 (= call!357566 (exists!1723 (ite c!883762 lt!2118866 lt!2118869) (ite c!883762 lambda!255601 lambda!255602)))))

(assert (= (and d!1661444 c!883762) b!5134694))

(assert (= (and d!1661444 (not c!883762)) b!5134695))

(assert (= (or b!5134694 b!5134695) bm!357560))

(assert (= (or b!5134694 b!5134695) bm!357561))

(assert (=> d!1661444 m!6200364))

(declare-fun m!6200420 () Bool)

(assert (=> d!1661444 m!6200420))

(assert (=> d!1661444 m!6200420))

(declare-fun m!6200422 () Bool)

(assert (=> d!1661444 m!6200422))

(assert (=> d!1661444 m!6200364))

(declare-fun m!6200424 () Bool)

(assert (=> d!1661444 m!6200424))

(assert (=> d!1661444 m!6200364))

(assert (=> d!1661444 m!6200424))

(declare-fun m!6200426 () Bool)

(assert (=> b!5134694 m!6200426))

(declare-fun m!6200428 () Bool)

(assert (=> b!5134695 m!6200428))

(declare-fun m!6200430 () Bool)

(assert (=> bm!357561 m!6200430))

(assert (=> bm!357560 m!6200364))

(declare-fun m!6200432 () Bool)

(assert (=> bm!357560 m!6200432))

(assert (=> b!5134662 d!1661444))

(declare-fun d!1661446 () Bool)

(declare-fun lostCauseFct!324 (Regex!14397) Bool)

(assert (=> d!1661446 (= (lostCause!1354 (h!66048 (exprs!4281 ctx!74))) (lostCauseFct!324 (h!66048 (exprs!4281 ctx!74))))))

(declare-fun bs!1199542 () Bool)

(assert (= bs!1199542 d!1661446))

(declare-fun m!6200434 () Bool)

(assert (=> bs!1199542 m!6200434))

(assert (=> b!5134662 d!1661446))

(declare-fun b!5134706 () Bool)

(declare-fun e!3202656 () Bool)

(assert (=> b!5134706 (= e!3202656 (nullable!4770 (h!66048 (exprs!4281 lt!2118816))))))

(declare-fun d!1661448 () Bool)

(declare-fun c!883767 () Bool)

(assert (=> d!1661448 (= c!883767 e!3202656)))

(declare-fun res!2187104 () Bool)

(assert (=> d!1661448 (=> (not res!2187104) (not e!3202656))))

(assert (=> d!1661448 (= res!2187104 ((_ is Cons!59600) (exprs!4281 lt!2118816)))))

(declare-fun e!3202657 () (InoxSet Context!7562))

(assert (=> d!1661448 (= (derivationStepZipperUp!83 lt!2118816 a!1252) e!3202657)))

(declare-fun b!5134707 () Bool)

(declare-fun e!3202655 () (InoxSet Context!7562))

(declare-fun call!357569 () (InoxSet Context!7562))

(assert (=> b!5134707 (= e!3202655 call!357569)))

(declare-fun b!5134708 () Bool)

(assert (=> b!5134708 (= e!3202657 e!3202655)))

(declare-fun c!883768 () Bool)

(assert (=> b!5134708 (= c!883768 ((_ is Cons!59600) (exprs!4281 lt!2118816)))))

(declare-fun b!5134709 () Bool)

(assert (=> b!5134709 (= e!3202655 ((as const (Array Context!7562 Bool)) false))))

(declare-fun bm!357564 () Bool)

(declare-fun derivationStepZipperDown!106 (Regex!14397 Context!7562 C!29060) (InoxSet Context!7562))

(assert (=> bm!357564 (= call!357569 (derivationStepZipperDown!106 (h!66048 (exprs!4281 lt!2118816)) (Context!7563 (t!372751 (exprs!4281 lt!2118816))) a!1252))))

(declare-fun b!5134710 () Bool)

(assert (=> b!5134710 (= e!3202657 ((_ map or) call!357569 (derivationStepZipperUp!83 (Context!7563 (t!372751 (exprs!4281 lt!2118816))) a!1252)))))

(assert (= (and d!1661448 res!2187104) b!5134706))

(assert (= (and d!1661448 c!883767) b!5134710))

(assert (= (and d!1661448 (not c!883767)) b!5134708))

(assert (= (and b!5134708 c!883768) b!5134707))

(assert (= (and b!5134708 (not c!883768)) b!5134709))

(assert (= (or b!5134710 b!5134707) bm!357564))

(declare-fun m!6200436 () Bool)

(assert (=> b!5134706 m!6200436))

(declare-fun m!6200438 () Bool)

(assert (=> bm!357564 m!6200438))

(declare-fun m!6200440 () Bool)

(assert (=> b!5134710 m!6200440))

(assert (=> b!5134662 d!1661448))

(declare-fun d!1661450 () Bool)

(assert (=> d!1661450 (not (lostCause!1354 (h!66048 (exprs!4281 ctx!74))))))

(declare-fun lt!2118873 () Unit!150937)

(declare-fun choose!37967 (Regex!14397) Unit!150937)

(assert (=> d!1661450 (= lt!2118873 (choose!37967 (h!66048 (exprs!4281 ctx!74))))))

(declare-fun validRegex!6256 (Regex!14397) Bool)

(assert (=> d!1661450 (validRegex!6256 (h!66048 (exprs!4281 ctx!74)))))

(assert (=> d!1661450 (= (lemmaNullableThenNotLostCause!48 (h!66048 (exprs!4281 ctx!74))) lt!2118873)))

(declare-fun bs!1199543 () Bool)

(assert (= bs!1199543 d!1661450))

(assert (=> bs!1199543 m!6200362))

(declare-fun m!6200442 () Bool)

(assert (=> bs!1199543 m!6200442))

(declare-fun m!6200444 () Bool)

(assert (=> bs!1199543 m!6200444))

(assert (=> b!5134662 d!1661450))

(declare-fun bs!1199544 () Bool)

(declare-fun d!1661452 () Bool)

(assert (= bs!1199544 (and d!1661452 d!1661422)))

(declare-fun lambda!255603 () Int)

(assert (=> bs!1199544 (not (= lambda!255603 lambda!255584))))

(declare-fun bs!1199545 () Bool)

(assert (= bs!1199545 (and d!1661452 d!1661440)))

(assert (=> bs!1199545 (= lambda!255603 lambda!255587)))

(assert (=> d!1661452 (= (inv!79173 lt!2118816) (forall!13846 (exprs!4281 lt!2118816) lambda!255603))))

(declare-fun bs!1199546 () Bool)

(assert (= bs!1199546 d!1661452))

(declare-fun m!6200446 () Bool)

(assert (=> bs!1199546 m!6200446))

(assert (=> b!5134662 d!1661452))

(declare-fun d!1661454 () Bool)

(assert (=> d!1661454 (lostCauseZipper!1225 (derivationStepZipperUp!83 lt!2118816 a!1252))))

(declare-fun lt!2118876 () Unit!150937)

(declare-fun choose!37968 (Context!7562 C!29060) Unit!150937)

(assert (=> d!1661454 (= lt!2118876 (choose!37968 lt!2118816 a!1252))))

(assert (=> d!1661454 (lostCause!1355 lt!2118816)))

(assert (=> d!1661454 (= (lemmaLostCauseFixPointDerivUp!16 lt!2118816 a!1252) lt!2118876)))

(declare-fun bs!1199547 () Bool)

(assert (= bs!1199547 d!1661454))

(assert (=> bs!1199547 m!6200364))

(assert (=> bs!1199547 m!6200364))

(assert (=> bs!1199547 m!6200368))

(declare-fun m!6200448 () Bool)

(assert (=> bs!1199547 m!6200448))

(declare-fun m!6200450 () Bool)

(assert (=> bs!1199547 m!6200450))

(assert (=> b!5134662 d!1661454))

(declare-fun b!5134715 () Bool)

(declare-fun e!3202660 () Bool)

(declare-fun tp!1432278 () Bool)

(declare-fun tp!1432279 () Bool)

(assert (=> b!5134715 (= e!3202660 (and tp!1432278 tp!1432279))))

(assert (=> b!5134663 (= tp!1432267 e!3202660)))

(assert (= (and b!5134663 ((_ is Cons!59600) (exprs!4281 ctx!74))) b!5134715))

(check-sat (not d!1661444) (not d!1661442) (not b!5134715) (not b!5134695) (not d!1661440) (not d!1661450) (not bm!357564) (not d!1661422) (not d!1661446) tp_is_empty!37947 (not d!1661454) (not b!5134694) (not bm!357560) (not b!5134710) (not d!1661452) (not bm!357561) (not b!5134706))
(check-sat)
(get-model)

(declare-fun d!1661474 () Bool)

(assert (=> d!1661474 (= (nullable!4770 (h!66048 (exprs!4281 lt!2118816))) (nullableFct!1293 (h!66048 (exprs!4281 lt!2118816))))))

(declare-fun bs!1199562 () Bool)

(assert (= bs!1199562 d!1661474))

(declare-fun m!6200482 () Bool)

(assert (=> bs!1199562 m!6200482))

(assert (=> b!5134706 d!1661474))

(declare-fun bs!1199568 () Bool)

(declare-fun d!1661476 () Bool)

(assert (= bs!1199568 (and d!1661476 d!1661444)))

(declare-fun lambda!255622 () Int)

(assert (=> bs!1199568 (not (= lambda!255622 lambda!255600))))

(declare-fun bs!1199569 () Bool)

(assert (= bs!1199569 (and d!1661476 b!5134694)))

(assert (=> bs!1199569 (not (= lambda!255622 lambda!255601))))

(declare-fun bs!1199570 () Bool)

(assert (= bs!1199570 (and d!1661476 b!5134695)))

(assert (=> bs!1199570 (not (= lambda!255622 lambda!255602))))

(assert (=> d!1661476 true))

(declare-fun order!26915 () Int)

(declare-fun dynLambda!23735 (Int Int) Int)

(assert (=> d!1661476 (< (dynLambda!23735 order!26915 lambda!255600) (dynLambda!23735 order!26915 lambda!255622))))

(assert (=> d!1661476 (exists!1723 lt!2118866 lambda!255622)))

(declare-fun lt!2118894 () Unit!150937)

(declare-fun choose!37971 (List!59727 Int) Unit!150937)

(assert (=> d!1661476 (= lt!2118894 (choose!37971 lt!2118866 lambda!255600))))

(declare-fun forall!13849 (List!59727 Int) Bool)

(assert (=> d!1661476 (not (forall!13849 lt!2118866 lambda!255600))))

(assert (=> d!1661476 (= (lemmaNotForallThenExists!408 lt!2118866 lambda!255600) lt!2118894)))

(declare-fun bs!1199572 () Bool)

(assert (= bs!1199572 d!1661476))

(declare-fun m!6200498 () Bool)

(assert (=> bs!1199572 m!6200498))

(declare-fun m!6200500 () Bool)

(assert (=> bs!1199572 m!6200500))

(declare-fun m!6200502 () Bool)

(assert (=> bs!1199572 m!6200502))

(assert (=> b!5134694 d!1661476))

(assert (=> d!1661454 d!1661444))

(assert (=> d!1661454 d!1661448))

(declare-fun d!1661482 () Bool)

(assert (=> d!1661482 (lostCauseZipper!1225 (derivationStepZipperUp!83 lt!2118816 a!1252))))

(assert (=> d!1661482 true))

(declare-fun _$38!410 () Unit!150937)

(assert (=> d!1661482 (= (choose!37968 lt!2118816 a!1252) _$38!410)))

(declare-fun bs!1199580 () Bool)

(assert (= bs!1199580 d!1661482))

(assert (=> bs!1199580 m!6200364))

(assert (=> bs!1199580 m!6200364))

(assert (=> bs!1199580 m!6200368))

(assert (=> d!1661454 d!1661482))

(declare-fun bs!1199581 () Bool)

(declare-fun d!1661488 () Bool)

(assert (= bs!1199581 (and d!1661488 d!1661422)))

(declare-fun lambda!255626 () Int)

(assert (=> bs!1199581 (= lambda!255626 lambda!255584)))

(declare-fun bs!1199582 () Bool)

(assert (= bs!1199582 (and d!1661488 d!1661440)))

(assert (=> bs!1199582 (not (= lambda!255626 lambda!255587))))

(declare-fun bs!1199583 () Bool)

(assert (= bs!1199583 (and d!1661488 d!1661452)))

(assert (=> bs!1199583 (not (= lambda!255626 lambda!255603))))

(assert (=> d!1661488 (= (lostCause!1355 lt!2118816) (exists!1722 (exprs!4281 lt!2118816) lambda!255626))))

(declare-fun bs!1199584 () Bool)

(assert (= bs!1199584 d!1661488))

(declare-fun m!6200512 () Bool)

(assert (=> bs!1199584 m!6200512))

(assert (=> d!1661454 d!1661488))

(declare-fun bs!1199585 () Bool)

(declare-fun d!1661490 () Bool)

(assert (= bs!1199585 (and d!1661490 d!1661422)))

(declare-fun lambda!255629 () Int)

(assert (=> bs!1199585 (not (= lambda!255629 lambda!255584))))

(declare-fun bs!1199586 () Bool)

(assert (= bs!1199586 (and d!1661490 d!1661440)))

(assert (=> bs!1199586 (not (= lambda!255629 lambda!255587))))

(declare-fun bs!1199587 () Bool)

(assert (= bs!1199587 (and d!1661490 d!1661452)))

(assert (=> bs!1199587 (not (= lambda!255629 lambda!255603))))

(declare-fun bs!1199588 () Bool)

(assert (= bs!1199588 (and d!1661490 d!1661488)))

(assert (=> bs!1199588 (not (= lambda!255629 lambda!255626))))

(assert (=> d!1661490 true))

(declare-fun order!26917 () Int)

(declare-fun dynLambda!23736 (Int Int) Int)

(assert (=> d!1661490 (< (dynLambda!23736 order!26917 lambda!255584) (dynLambda!23736 order!26917 lambda!255629))))

(assert (=> d!1661490 (= (exists!1722 (exprs!4281 ctx!74) lambda!255584) (not (forall!13846 (exprs!4281 ctx!74) lambda!255629)))))

(declare-fun bs!1199589 () Bool)

(assert (= bs!1199589 d!1661490))

(declare-fun m!6200514 () Bool)

(assert (=> bs!1199589 m!6200514))

(assert (=> d!1661422 d!1661490))

(assert (=> d!1661450 d!1661446))

(declare-fun d!1661492 () Bool)

(assert (=> d!1661492 (not (lostCause!1354 (h!66048 (exprs!4281 ctx!74))))))

(assert (=> d!1661492 true))

(declare-fun _$98!240 () Unit!150937)

(assert (=> d!1661492 (= (choose!37967 (h!66048 (exprs!4281 ctx!74))) _$98!240)))

(declare-fun bs!1199590 () Bool)

(assert (= bs!1199590 d!1661492))

(assert (=> bs!1199590 m!6200362))

(assert (=> d!1661450 d!1661492))

(declare-fun b!5134823 () Bool)

(declare-fun e!3202743 () Bool)

(declare-fun e!3202746 () Bool)

(assert (=> b!5134823 (= e!3202743 e!3202746)))

(declare-fun res!2187161 () Bool)

(assert (=> b!5134823 (= res!2187161 (not (nullable!4770 (reg!14726 (h!66048 (exprs!4281 ctx!74))))))))

(assert (=> b!5134823 (=> (not res!2187161) (not e!3202746))))

(declare-fun b!5134824 () Bool)

(declare-fun res!2187158 () Bool)

(declare-fun e!3202745 () Bool)

(assert (=> b!5134824 (=> res!2187158 e!3202745)))

(assert (=> b!5134824 (= res!2187158 (not ((_ is Concat!23242) (h!66048 (exprs!4281 ctx!74)))))))

(declare-fun e!3202748 () Bool)

(assert (=> b!5134824 (= e!3202748 e!3202745)))

(declare-fun b!5134825 () Bool)

(declare-fun e!3202747 () Bool)

(declare-fun call!357594 () Bool)

(assert (=> b!5134825 (= e!3202747 call!357594)))

(declare-fun bm!357587 () Bool)

(declare-fun c!883798 () Bool)

(assert (=> bm!357587 (= call!357594 (validRegex!6256 (ite c!883798 (regOne!29307 (h!66048 (exprs!4281 ctx!74))) (regTwo!29306 (h!66048 (exprs!4281 ctx!74))))))))

(declare-fun call!357592 () Bool)

(declare-fun c!883799 () Bool)

(declare-fun bm!357588 () Bool)

(assert (=> bm!357588 (= call!357592 (validRegex!6256 (ite c!883799 (reg!14726 (h!66048 (exprs!4281 ctx!74))) (ite c!883798 (regTwo!29307 (h!66048 (exprs!4281 ctx!74))) (regOne!29306 (h!66048 (exprs!4281 ctx!74)))))))))

(declare-fun b!5134826 () Bool)

(assert (=> b!5134826 (= e!3202745 e!3202747)))

(declare-fun res!2187162 () Bool)

(assert (=> b!5134826 (=> (not res!2187162) (not e!3202747))))

(declare-fun call!357593 () Bool)

(assert (=> b!5134826 (= res!2187162 call!357593)))

(declare-fun b!5134827 () Bool)

(declare-fun res!2187160 () Bool)

(declare-fun e!3202749 () Bool)

(assert (=> b!5134827 (=> (not res!2187160) (not e!3202749))))

(assert (=> b!5134827 (= res!2187160 call!357594)))

(assert (=> b!5134827 (= e!3202748 e!3202749)))

(declare-fun b!5134828 () Bool)

(assert (=> b!5134828 (= e!3202746 call!357592)))

(declare-fun d!1661494 () Bool)

(declare-fun res!2187159 () Bool)

(declare-fun e!3202744 () Bool)

(assert (=> d!1661494 (=> res!2187159 e!3202744)))

(assert (=> d!1661494 (= res!2187159 ((_ is ElementMatch!14397) (h!66048 (exprs!4281 ctx!74))))))

(assert (=> d!1661494 (= (validRegex!6256 (h!66048 (exprs!4281 ctx!74))) e!3202744)))

(declare-fun b!5134829 () Bool)

(assert (=> b!5134829 (= e!3202749 call!357593)))

(declare-fun bm!357589 () Bool)

(assert (=> bm!357589 (= call!357593 call!357592)))

(declare-fun b!5134830 () Bool)

(assert (=> b!5134830 (= e!3202743 e!3202748)))

(assert (=> b!5134830 (= c!883798 ((_ is Union!14397) (h!66048 (exprs!4281 ctx!74))))))

(declare-fun b!5134831 () Bool)

(assert (=> b!5134831 (= e!3202744 e!3202743)))

(assert (=> b!5134831 (= c!883799 ((_ is Star!14397) (h!66048 (exprs!4281 ctx!74))))))

(assert (= (and d!1661494 (not res!2187159)) b!5134831))

(assert (= (and b!5134831 c!883799) b!5134823))

(assert (= (and b!5134831 (not c!883799)) b!5134830))

(assert (= (and b!5134823 res!2187161) b!5134828))

(assert (= (and b!5134830 c!883798) b!5134827))

(assert (= (and b!5134830 (not c!883798)) b!5134824))

(assert (= (and b!5134827 res!2187160) b!5134829))

(assert (= (and b!5134824 (not res!2187158)) b!5134826))

(assert (= (and b!5134826 res!2187162) b!5134825))

(assert (= (or b!5134827 b!5134825) bm!357587))

(assert (= (or b!5134829 b!5134826) bm!357589))

(assert (= (or b!5134828 bm!357589) bm!357588))

(declare-fun m!6200520 () Bool)

(assert (=> b!5134823 m!6200520))

(declare-fun m!6200522 () Bool)

(assert (=> bm!357587 m!6200522))

(declare-fun m!6200524 () Bool)

(assert (=> bm!357588 m!6200524))

(assert (=> d!1661450 d!1661494))

(declare-fun bs!1199591 () Bool)

(declare-fun d!1661498 () Bool)

(assert (= bs!1199591 (and d!1661498 d!1661444)))

(declare-fun lambda!255632 () Int)

(assert (=> bs!1199591 (not (= lambda!255632 lambda!255600))))

(declare-fun bs!1199592 () Bool)

(assert (= bs!1199592 (and d!1661498 b!5134694)))

(assert (=> bs!1199592 (not (= lambda!255632 lambda!255601))))

(declare-fun bs!1199593 () Bool)

(assert (= bs!1199593 (and d!1661498 b!5134695)))

(assert (=> bs!1199593 (not (= lambda!255632 lambda!255602))))

(declare-fun bs!1199594 () Bool)

(assert (= bs!1199594 (and d!1661498 d!1661476)))

(assert (=> bs!1199594 (= lambda!255632 lambda!255622)))

(assert (=> d!1661498 true))

(assert (=> d!1661498 (< (dynLambda!23735 order!26915 lambda!255600) (dynLambda!23735 order!26915 lambda!255632))))

(assert (=> d!1661498 (not (exists!1723 lt!2118869 lambda!255632))))

(declare-fun lt!2118900 () Unit!150937)

(declare-fun choose!37974 (List!59727 Int) Unit!150937)

(assert (=> d!1661498 (= lt!2118900 (choose!37974 lt!2118869 lambda!255600))))

(assert (=> d!1661498 (forall!13849 lt!2118869 lambda!255600)))

(assert (=> d!1661498 (= (lemmaForallThenNotExists!375 lt!2118869 lambda!255600) lt!2118900)))

(declare-fun bs!1199595 () Bool)

(assert (= bs!1199595 d!1661498))

(declare-fun m!6200526 () Bool)

(assert (=> bs!1199595 m!6200526))

(declare-fun m!6200528 () Bool)

(assert (=> bs!1199595 m!6200528))

(declare-fun m!6200530 () Bool)

(assert (=> bs!1199595 m!6200530))

(assert (=> b!5134695 d!1661498))

(declare-fun d!1661500 () Bool)

(declare-fun e!3202760 () Bool)

(assert (=> d!1661500 e!3202760))

(declare-fun res!2187166 () Bool)

(assert (=> d!1661500 (=> (not res!2187166) (not e!3202760))))

(declare-fun lt!2118903 () List!59727)

(declare-fun noDuplicate!1104 (List!59727) Bool)

(assert (=> d!1661500 (= res!2187166 (noDuplicate!1104 lt!2118903))))

(declare-fun choose!37975 ((InoxSet Context!7562)) List!59727)

(assert (=> d!1661500 (= lt!2118903 (choose!37975 (derivationStepZipperUp!83 lt!2118816 a!1252)))))

(assert (=> d!1661500 (= (toList!8360 (derivationStepZipperUp!83 lt!2118816 a!1252)) lt!2118903)))

(declare-fun b!5134845 () Bool)

(declare-fun content!10581 (List!59727) (InoxSet Context!7562))

(assert (=> b!5134845 (= e!3202760 (= (content!10581 lt!2118903) (derivationStepZipperUp!83 lt!2118816 a!1252)))))

(assert (= (and d!1661500 res!2187166) b!5134845))

(declare-fun m!6200532 () Bool)

(assert (=> d!1661500 m!6200532))

(assert (=> d!1661500 m!6200364))

(declare-fun m!6200534 () Bool)

(assert (=> d!1661500 m!6200534))

(declare-fun m!6200536 () Bool)

(assert (=> b!5134845 m!6200536))

(assert (=> bm!357560 d!1661500))

(declare-fun b!5134891 () Bool)

(declare-fun e!3202791 () (InoxSet Context!7562))

(declare-fun call!357629 () (InoxSet Context!7562))

(declare-fun call!357628 () (InoxSet Context!7562))

(assert (=> b!5134891 (= e!3202791 ((_ map or) call!357629 call!357628))))

(declare-fun d!1661502 () Bool)

(declare-fun c!883821 () Bool)

(assert (=> d!1661502 (= c!883821 (and ((_ is ElementMatch!14397) (h!66048 (exprs!4281 lt!2118816))) (= (c!883734 (h!66048 (exprs!4281 lt!2118816))) a!1252)))))

(declare-fun e!3202795 () (InoxSet Context!7562))

(assert (=> d!1661502 (= (derivationStepZipperDown!106 (h!66048 (exprs!4281 lt!2118816)) (Context!7563 (t!372751 (exprs!4281 lt!2118816))) a!1252) e!3202795)))

(declare-fun b!5134892 () Bool)

(declare-fun c!883823 () Bool)

(declare-fun e!3202790 () Bool)

(assert (=> b!5134892 (= c!883823 e!3202790)))

(declare-fun res!2187180 () Bool)

(assert (=> b!5134892 (=> (not res!2187180) (not e!3202790))))

(assert (=> b!5134892 (= res!2187180 ((_ is Concat!23242) (h!66048 (exprs!4281 lt!2118816))))))

(declare-fun e!3202793 () (InoxSet Context!7562))

(assert (=> b!5134892 (= e!3202793 e!3202791)))

(declare-fun c!883824 () Bool)

(declare-fun c!883822 () Bool)

(declare-fun call!357630 () (InoxSet Context!7562))

(declare-fun call!357631 () List!59724)

(declare-fun bm!357623 () Bool)

(assert (=> bm!357623 (= call!357630 (derivationStepZipperDown!106 (ite c!883824 (regTwo!29307 (h!66048 (exprs!4281 lt!2118816))) (ite c!883823 (regTwo!29306 (h!66048 (exprs!4281 lt!2118816))) (ite c!883822 (regOne!29306 (h!66048 (exprs!4281 lt!2118816))) (reg!14726 (h!66048 (exprs!4281 lt!2118816)))))) (ite (or c!883824 c!883823) (Context!7563 (t!372751 (exprs!4281 lt!2118816))) (Context!7563 call!357631)) a!1252))))

(declare-fun b!5134893 () Bool)

(assert (=> b!5134893 (= e!3202790 (nullable!4770 (regOne!29306 (h!66048 (exprs!4281 lt!2118816)))))))

(declare-fun b!5134894 () Bool)

(declare-fun e!3202794 () (InoxSet Context!7562))

(declare-fun call!357632 () (InoxSet Context!7562))

(assert (=> b!5134894 (= e!3202794 call!357632)))

(declare-fun call!357633 () List!59724)

(declare-fun bm!357624 () Bool)

(declare-fun $colon$colon!1161 (List!59724 Regex!14397) List!59724)

(assert (=> bm!357624 (= call!357633 ($colon$colon!1161 (exprs!4281 (Context!7563 (t!372751 (exprs!4281 lt!2118816)))) (ite (or c!883823 c!883822) (regTwo!29306 (h!66048 (exprs!4281 lt!2118816))) (h!66048 (exprs!4281 lt!2118816)))))))

(declare-fun bm!357625 () Bool)

(assert (=> bm!357625 (= call!357631 call!357633)))

(declare-fun bm!357626 () Bool)

(assert (=> bm!357626 (= call!357632 call!357628)))

(declare-fun b!5134895 () Bool)

(declare-fun c!883825 () Bool)

(assert (=> b!5134895 (= c!883825 ((_ is Star!14397) (h!66048 (exprs!4281 lt!2118816))))))

(declare-fun e!3202792 () (InoxSet Context!7562))

(assert (=> b!5134895 (= e!3202794 e!3202792)))

(declare-fun b!5134896 () Bool)

(assert (=> b!5134896 (= e!3202795 e!3202793)))

(assert (=> b!5134896 (= c!883824 ((_ is Union!14397) (h!66048 (exprs!4281 lt!2118816))))))

(declare-fun b!5134897 () Bool)

(assert (=> b!5134897 (= e!3202792 ((as const (Array Context!7562 Bool)) false))))

(declare-fun b!5134898 () Bool)

(assert (=> b!5134898 (= e!3202791 e!3202794)))

(assert (=> b!5134898 (= c!883822 ((_ is Concat!23242) (h!66048 (exprs!4281 lt!2118816))))))

(declare-fun bm!357627 () Bool)

(assert (=> bm!357627 (= call!357628 call!357630)))

(declare-fun b!5134899 () Bool)

(assert (=> b!5134899 (= e!3202795 (store ((as const (Array Context!7562 Bool)) false) (Context!7563 (t!372751 (exprs!4281 lt!2118816))) true))))

(declare-fun bm!357628 () Bool)

(assert (=> bm!357628 (= call!357629 (derivationStepZipperDown!106 (ite c!883824 (regOne!29307 (h!66048 (exprs!4281 lt!2118816))) (regOne!29306 (h!66048 (exprs!4281 lt!2118816)))) (ite c!883824 (Context!7563 (t!372751 (exprs!4281 lt!2118816))) (Context!7563 call!357633)) a!1252))))

(declare-fun b!5134900 () Bool)

(assert (=> b!5134900 (= e!3202792 call!357632)))

(declare-fun b!5134901 () Bool)

(assert (=> b!5134901 (= e!3202793 ((_ map or) call!357629 call!357630))))

(assert (= (and d!1661502 c!883821) b!5134899))

(assert (= (and d!1661502 (not c!883821)) b!5134896))

(assert (= (and b!5134896 c!883824) b!5134901))

(assert (= (and b!5134896 (not c!883824)) b!5134892))

(assert (= (and b!5134892 res!2187180) b!5134893))

(assert (= (and b!5134892 c!883823) b!5134891))

(assert (= (and b!5134892 (not c!883823)) b!5134898))

(assert (= (and b!5134898 c!883822) b!5134894))

(assert (= (and b!5134898 (not c!883822)) b!5134895))

(assert (= (and b!5134895 c!883825) b!5134900))

(assert (= (and b!5134895 (not c!883825)) b!5134897))

(assert (= (or b!5134894 b!5134900) bm!357625))

(assert (= (or b!5134894 b!5134900) bm!357626))

(assert (= (or b!5134891 bm!357625) bm!357624))

(assert (= (or b!5134891 bm!357626) bm!357627))

(assert (= (or b!5134901 b!5134891) bm!357628))

(assert (= (or b!5134901 bm!357627) bm!357623))

(declare-fun m!6200556 () Bool)

(assert (=> bm!357623 m!6200556))

(declare-fun m!6200558 () Bool)

(assert (=> b!5134899 m!6200558))

(declare-fun m!6200560 () Bool)

(assert (=> bm!357628 m!6200560))

(declare-fun m!6200562 () Bool)

(assert (=> bm!357624 m!6200562))

(declare-fun m!6200564 () Bool)

(assert (=> b!5134893 m!6200564))

(assert (=> bm!357564 d!1661502))

(declare-fun bs!1199603 () Bool)

(declare-fun d!1661514 () Bool)

(assert (= bs!1199603 (and d!1661514 d!1661476)))

(declare-fun lambda!255636 () Int)

(assert (=> bs!1199603 (= (= (ite c!883762 lambda!255601 lambda!255602) lambda!255600) (= lambda!255636 lambda!255622))))

(declare-fun bs!1199604 () Bool)

(assert (= bs!1199604 (and d!1661514 b!5134694)))

(assert (=> bs!1199604 (not (= lambda!255636 lambda!255601))))

(declare-fun bs!1199605 () Bool)

(assert (= bs!1199605 (and d!1661514 d!1661498)))

(assert (=> bs!1199605 (= (= (ite c!883762 lambda!255601 lambda!255602) lambda!255600) (= lambda!255636 lambda!255632))))

(declare-fun bs!1199606 () Bool)

(assert (= bs!1199606 (and d!1661514 d!1661444)))

(assert (=> bs!1199606 (not (= lambda!255636 lambda!255600))))

(declare-fun bs!1199607 () Bool)

(assert (= bs!1199607 (and d!1661514 b!5134695)))

(assert (=> bs!1199607 (not (= lambda!255636 lambda!255602))))

(assert (=> d!1661514 true))

(assert (=> d!1661514 (< (dynLambda!23735 order!26915 (ite c!883762 lambda!255601 lambda!255602)) (dynLambda!23735 order!26915 lambda!255636))))

(assert (=> d!1661514 (= (exists!1723 (ite c!883762 lt!2118866 lt!2118869) (ite c!883762 lambda!255601 lambda!255602)) (not (forall!13849 (ite c!883762 lt!2118866 lt!2118869) lambda!255636)))))

(declare-fun bs!1199608 () Bool)

(assert (= bs!1199608 d!1661514))

(declare-fun m!6200572 () Bool)

(assert (=> bs!1199608 m!6200572))

(assert (=> bm!357561 d!1661514))

(declare-fun d!1661516 () Bool)

(declare-fun res!2187190 () Bool)

(declare-fun e!3202811 () Bool)

(assert (=> d!1661516 (=> res!2187190 e!3202811)))

(assert (=> d!1661516 (= res!2187190 ((_ is Nil!59600) (exprs!4281 lt!2118816)))))

(assert (=> d!1661516 (= (forall!13846 (exprs!4281 lt!2118816) lambda!255603) e!3202811)))

(declare-fun b!5134930 () Bool)

(declare-fun e!3202812 () Bool)

(assert (=> b!5134930 (= e!3202811 e!3202812)))

(declare-fun res!2187191 () Bool)

(assert (=> b!5134930 (=> (not res!2187191) (not e!3202812))))

(declare-fun dynLambda!23737 (Int Regex!14397) Bool)

(assert (=> b!5134930 (= res!2187191 (dynLambda!23737 lambda!255603 (h!66048 (exprs!4281 lt!2118816))))))

(declare-fun b!5134931 () Bool)

(assert (=> b!5134931 (= e!3202812 (forall!13846 (t!372751 (exprs!4281 lt!2118816)) lambda!255603))))

(assert (= (and d!1661516 (not res!2187190)) b!5134930))

(assert (= (and b!5134930 res!2187191) b!5134931))

(declare-fun b_lambda!200065 () Bool)

(assert (=> (not b_lambda!200065) (not b!5134930)))

(declare-fun m!6200576 () Bool)

(assert (=> b!5134930 m!6200576))

(declare-fun m!6200578 () Bool)

(assert (=> b!5134931 m!6200578))

(assert (=> d!1661452 d!1661516))

(declare-fun d!1661522 () Bool)

(declare-fun res!2187192 () Bool)

(declare-fun e!3202813 () Bool)

(assert (=> d!1661522 (=> res!2187192 e!3202813)))

(assert (=> d!1661522 (= res!2187192 ((_ is Nil!59600) (exprs!4281 ctx!74)))))

(assert (=> d!1661522 (= (forall!13846 (exprs!4281 ctx!74) lambda!255587) e!3202813)))

(declare-fun b!5134932 () Bool)

(declare-fun e!3202814 () Bool)

(assert (=> b!5134932 (= e!3202813 e!3202814)))

(declare-fun res!2187193 () Bool)

(assert (=> b!5134932 (=> (not res!2187193) (not e!3202814))))

(assert (=> b!5134932 (= res!2187193 (dynLambda!23737 lambda!255587 (h!66048 (exprs!4281 ctx!74))))))

(declare-fun b!5134933 () Bool)

(assert (=> b!5134933 (= e!3202814 (forall!13846 (t!372751 (exprs!4281 ctx!74)) lambda!255587))))

(assert (= (and d!1661522 (not res!2187192)) b!5134932))

(assert (= (and b!5134932 res!2187193) b!5134933))

(declare-fun b_lambda!200067 () Bool)

(assert (=> (not b_lambda!200067) (not b!5134932)))

(declare-fun m!6200580 () Bool)

(assert (=> b!5134932 m!6200580))

(declare-fun m!6200582 () Bool)

(assert (=> b!5134933 m!6200582))

(assert (=> d!1661440 d!1661522))

(declare-fun b!5134934 () Bool)

(declare-fun e!3202816 () Bool)

(assert (=> b!5134934 (= e!3202816 (nullable!4770 (h!66048 (exprs!4281 (Context!7563 (t!372751 (exprs!4281 lt!2118816)))))))))

(declare-fun d!1661524 () Bool)

(declare-fun c!883828 () Bool)

(assert (=> d!1661524 (= c!883828 e!3202816)))

(declare-fun res!2187194 () Bool)

(assert (=> d!1661524 (=> (not res!2187194) (not e!3202816))))

(assert (=> d!1661524 (= res!2187194 ((_ is Cons!59600) (exprs!4281 (Context!7563 (t!372751 (exprs!4281 lt!2118816))))))))

(declare-fun e!3202817 () (InoxSet Context!7562))

(assert (=> d!1661524 (= (derivationStepZipperUp!83 (Context!7563 (t!372751 (exprs!4281 lt!2118816))) a!1252) e!3202817)))

(declare-fun b!5134935 () Bool)

(declare-fun e!3202815 () (InoxSet Context!7562))

(declare-fun call!357637 () (InoxSet Context!7562))

(assert (=> b!5134935 (= e!3202815 call!357637)))

(declare-fun b!5134936 () Bool)

(assert (=> b!5134936 (= e!3202817 e!3202815)))

(declare-fun c!883829 () Bool)

(assert (=> b!5134936 (= c!883829 ((_ is Cons!59600) (exprs!4281 (Context!7563 (t!372751 (exprs!4281 lt!2118816))))))))

(declare-fun b!5134937 () Bool)

(assert (=> b!5134937 (= e!3202815 ((as const (Array Context!7562 Bool)) false))))

(declare-fun bm!357632 () Bool)

(assert (=> bm!357632 (= call!357637 (derivationStepZipperDown!106 (h!66048 (exprs!4281 (Context!7563 (t!372751 (exprs!4281 lt!2118816))))) (Context!7563 (t!372751 (exprs!4281 (Context!7563 (t!372751 (exprs!4281 lt!2118816)))))) a!1252))))

(declare-fun b!5134938 () Bool)

(assert (=> b!5134938 (= e!3202817 ((_ map or) call!357637 (derivationStepZipperUp!83 (Context!7563 (t!372751 (exprs!4281 (Context!7563 (t!372751 (exprs!4281 lt!2118816)))))) a!1252)))))

(assert (= (and d!1661524 res!2187194) b!5134934))

(assert (= (and d!1661524 c!883828) b!5134938))

(assert (= (and d!1661524 (not c!883828)) b!5134936))

(assert (= (and b!5134936 c!883829) b!5134935))

(assert (= (and b!5134936 (not c!883829)) b!5134937))

(assert (= (or b!5134938 b!5134935) bm!357632))

(declare-fun m!6200584 () Bool)

(assert (=> b!5134934 m!6200584))

(declare-fun m!6200586 () Bool)

(assert (=> bm!357632 m!6200586))

(declare-fun m!6200588 () Bool)

(assert (=> b!5134938 m!6200588))

(assert (=> b!5134710 d!1661524))

(declare-fun b!5134953 () Bool)

(declare-fun e!3202831 () Bool)

(declare-fun e!3202833 () Bool)

(assert (=> b!5134953 (= e!3202831 e!3202833)))

(declare-fun res!2187205 () Bool)

(declare-fun call!357643 () Bool)

(assert (=> b!5134953 (= res!2187205 call!357643)))

(assert (=> b!5134953 (=> (not res!2187205) (not e!3202833))))

(declare-fun b!5134954 () Bool)

(declare-fun e!3202830 () Bool)

(declare-fun e!3202832 () Bool)

(assert (=> b!5134954 (= e!3202830 e!3202832)))

(declare-fun res!2187208 () Bool)

(assert (=> b!5134954 (=> (not res!2187208) (not e!3202832))))

(assert (=> b!5134954 (= res!2187208 (and (not ((_ is ElementMatch!14397) (h!66048 (exprs!4281 ctx!74)))) (not ((_ is Star!14397) (h!66048 (exprs!4281 ctx!74))))))))

(declare-fun b!5134955 () Bool)

(declare-fun call!357642 () Bool)

(assert (=> b!5134955 (= e!3202833 call!357642)))

(declare-fun b!5134956 () Bool)

(declare-fun e!3202835 () Bool)

(assert (=> b!5134956 (= e!3202831 e!3202835)))

(declare-fun res!2187207 () Bool)

(assert (=> b!5134956 (= res!2187207 call!357642)))

(assert (=> b!5134956 (=> res!2187207 e!3202835)))

(declare-fun bm!357637 () Bool)

(declare-fun c!883832 () Bool)

(assert (=> bm!357637 (= call!357642 (lostCause!1354 (ite c!883832 (regTwo!29307 (h!66048 (exprs!4281 ctx!74))) (regOne!29306 (h!66048 (exprs!4281 ctx!74))))))))

(declare-fun b!5134957 () Bool)

(declare-fun e!3202834 () Bool)

(assert (=> b!5134957 (= e!3202834 e!3202830)))

(declare-fun res!2187209 () Bool)

(assert (=> b!5134957 (=> res!2187209 e!3202830)))

(assert (=> b!5134957 (= res!2187209 ((_ is EmptyLang!14397) (h!66048 (exprs!4281 ctx!74))))))

(declare-fun d!1661526 () Bool)

(declare-fun lt!2118906 () Bool)

(declare-fun getLanguageWitness!897 (Regex!14397) Option!14757)

(assert (=> d!1661526 (= lt!2118906 (isEmpty!32018 (getLanguageWitness!897 (h!66048 (exprs!4281 ctx!74)))))))

(assert (=> d!1661526 (= lt!2118906 e!3202834)))

(declare-fun res!2187206 () Bool)

(assert (=> d!1661526 (=> (not res!2187206) (not e!3202834))))

(assert (=> d!1661526 (= res!2187206 (not ((_ is EmptyExpr!14397) (h!66048 (exprs!4281 ctx!74)))))))

(assert (=> d!1661526 (= (lostCauseFct!324 (h!66048 (exprs!4281 ctx!74))) lt!2118906)))

(declare-fun bm!357638 () Bool)

(assert (=> bm!357638 (= call!357643 (lostCause!1354 (ite c!883832 (regOne!29307 (h!66048 (exprs!4281 ctx!74))) (regTwo!29306 (h!66048 (exprs!4281 ctx!74))))))))

(declare-fun b!5134958 () Bool)

(assert (=> b!5134958 (= e!3202835 call!357643)))

(declare-fun b!5134959 () Bool)

(assert (=> b!5134959 (= e!3202832 e!3202831)))

(assert (=> b!5134959 (= c!883832 ((_ is Union!14397) (h!66048 (exprs!4281 ctx!74))))))

(assert (= (and d!1661526 res!2187206) b!5134957))

(assert (= (and b!5134957 (not res!2187209)) b!5134954))

(assert (= (and b!5134954 res!2187208) b!5134959))

(assert (= (and b!5134959 c!883832) b!5134953))

(assert (= (and b!5134959 (not c!883832)) b!5134956))

(assert (= (and b!5134953 res!2187205) b!5134955))

(assert (= (and b!5134956 (not res!2187207)) b!5134958))

(assert (= (or b!5134953 b!5134958) bm!357638))

(assert (= (or b!5134955 b!5134956) bm!357637))

(declare-fun m!6200590 () Bool)

(assert (=> bm!357637 m!6200590))

(declare-fun m!6200592 () Bool)

(assert (=> d!1661526 m!6200592))

(assert (=> d!1661526 m!6200592))

(declare-fun m!6200594 () Bool)

(assert (=> d!1661526 m!6200594))

(declare-fun m!6200596 () Bool)

(assert (=> bm!357638 m!6200596))

(assert (=> d!1661446 d!1661526))

(declare-fun d!1661528 () Bool)

(assert (=> d!1661528 (= (isEmpty!32018 (getLanguageWitness!894 (derivationStepZipperUp!83 lt!2118816 a!1252))) (not ((_ is Some!14756) (getLanguageWitness!894 (derivationStepZipperUp!83 lt!2118816 a!1252)))))))

(assert (=> d!1661444 d!1661528))

(declare-fun bs!1199611 () Bool)

(declare-fun d!1661530 () Bool)

(assert (= bs!1199611 (and d!1661530 d!1661476)))

(declare-fun lambda!255643 () Int)

(assert (=> bs!1199611 (not (= lambda!255643 lambda!255622))))

(declare-fun bs!1199612 () Bool)

(assert (= bs!1199612 (and d!1661530 d!1661514)))

(assert (=> bs!1199612 (not (= lambda!255643 lambda!255636))))

(declare-fun bs!1199613 () Bool)

(assert (= bs!1199613 (and d!1661530 b!5134694)))

(assert (=> bs!1199613 (= lambda!255643 lambda!255601)))

(declare-fun bs!1199614 () Bool)

(assert (= bs!1199614 (and d!1661530 d!1661498)))

(assert (=> bs!1199614 (not (= lambda!255643 lambda!255632))))

(declare-fun bs!1199615 () Bool)

(assert (= bs!1199615 (and d!1661530 d!1661444)))

(assert (=> bs!1199615 (not (= lambda!255643 lambda!255600))))

(declare-fun bs!1199616 () Bool)

(assert (= bs!1199616 (and d!1661530 b!5134695)))

(assert (=> bs!1199616 (= lambda!255643 lambda!255602)))

(declare-fun lt!2118909 () Option!14757)

(declare-fun isDefined!11528 (Option!14757) Bool)

(declare-fun exists!1725 ((InoxSet Context!7562) Int) Bool)

(assert (=> d!1661530 (= (isDefined!11528 lt!2118909) (exists!1725 (derivationStepZipperUp!83 lt!2118816 a!1252) lambda!255643))))

(declare-fun e!3202838 () Option!14757)

(assert (=> d!1661530 (= lt!2118909 e!3202838)))

(declare-fun c!883841 () Bool)

(assert (=> d!1661530 (= c!883841 (exists!1725 (derivationStepZipperUp!83 lt!2118816 a!1252) lambda!255643))))

(assert (=> d!1661530 (= (getLanguageWitness!894 (derivationStepZipperUp!83 lt!2118816 a!1252)) lt!2118909)))

(declare-fun b!5134964 () Bool)

(declare-fun getLanguageWitness!898 (Context!7562) Option!14757)

(declare-fun getWitness!831 ((InoxSet Context!7562) Int) Context!7562)

(assert (=> b!5134964 (= e!3202838 (getLanguageWitness!898 (getWitness!831 (derivationStepZipperUp!83 lt!2118816 a!1252) lambda!255643)))))

(declare-fun b!5134965 () Bool)

(assert (=> b!5134965 (= e!3202838 None!14756)))

(assert (= (and d!1661530 c!883841) b!5134964))

(assert (= (and d!1661530 (not c!883841)) b!5134965))

(declare-fun m!6200598 () Bool)

(assert (=> d!1661530 m!6200598))

(assert (=> d!1661530 m!6200364))

(declare-fun m!6200600 () Bool)

(assert (=> d!1661530 m!6200600))

(assert (=> d!1661530 m!6200364))

(assert (=> d!1661530 m!6200600))

(assert (=> b!5134964 m!6200364))

(declare-fun m!6200602 () Bool)

(assert (=> b!5134964 m!6200602))

(assert (=> b!5134964 m!6200602))

(declare-fun m!6200604 () Bool)

(assert (=> b!5134964 m!6200604))

(assert (=> d!1661444 d!1661530))

(declare-fun lt!2118912 () Bool)

(declare-fun d!1661532 () Bool)

(assert (=> d!1661532 (= lt!2118912 (forall!13849 (toList!8360 (derivationStepZipperUp!83 lt!2118816 a!1252)) lambda!255600))))

(declare-fun choose!37976 ((InoxSet Context!7562) Int) Bool)

(assert (=> d!1661532 (= lt!2118912 (choose!37976 (derivationStepZipperUp!83 lt!2118816 a!1252) lambda!255600))))

(assert (=> d!1661532 (= (forall!13847 (derivationStepZipperUp!83 lt!2118816 a!1252) lambda!255600) lt!2118912)))

(declare-fun bs!1199617 () Bool)

(assert (= bs!1199617 d!1661532))

(assert (=> bs!1199617 m!6200364))

(assert (=> bs!1199617 m!6200432))

(assert (=> bs!1199617 m!6200432))

(declare-fun m!6200606 () Bool)

(assert (=> bs!1199617 m!6200606))

(assert (=> bs!1199617 m!6200364))

(declare-fun m!6200608 () Bool)

(assert (=> bs!1199617 m!6200608))

(assert (=> d!1661444 d!1661532))

(declare-fun bm!357643 () Bool)

(declare-fun call!357649 () Bool)

(declare-fun c!883844 () Bool)

(assert (=> bm!357643 (= call!357649 (nullable!4770 (ite c!883844 (regOne!29307 (h!66048 (exprs!4281 ctx!74))) (regOne!29306 (h!66048 (exprs!4281 ctx!74))))))))

(declare-fun b!5134980 () Bool)

(declare-fun e!3202854 () Bool)

(declare-fun call!357648 () Bool)

(assert (=> b!5134980 (= e!3202854 call!357648)))

(declare-fun d!1661534 () Bool)

(declare-fun res!2187223 () Bool)

(declare-fun e!3202851 () Bool)

(assert (=> d!1661534 (=> res!2187223 e!3202851)))

(assert (=> d!1661534 (= res!2187223 ((_ is EmptyExpr!14397) (h!66048 (exprs!4281 ctx!74))))))

(assert (=> d!1661534 (= (nullableFct!1293 (h!66048 (exprs!4281 ctx!74))) e!3202851)))

(declare-fun b!5134981 () Bool)

(declare-fun e!3202855 () Bool)

(assert (=> b!5134981 (= e!3202851 e!3202855)))

(declare-fun res!2187224 () Bool)

(assert (=> b!5134981 (=> (not res!2187224) (not e!3202855))))

(assert (=> b!5134981 (= res!2187224 (and (not ((_ is EmptyLang!14397) (h!66048 (exprs!4281 ctx!74)))) (not ((_ is ElementMatch!14397) (h!66048 (exprs!4281 ctx!74))))))))

(declare-fun b!5134982 () Bool)

(declare-fun e!3202853 () Bool)

(assert (=> b!5134982 (= e!3202853 e!3202854)))

(declare-fun res!2187220 () Bool)

(assert (=> b!5134982 (= res!2187220 call!357649)))

(assert (=> b!5134982 (=> res!2187220 e!3202854)))

(declare-fun bm!357644 () Bool)

(assert (=> bm!357644 (= call!357648 (nullable!4770 (ite c!883844 (regTwo!29307 (h!66048 (exprs!4281 ctx!74))) (regTwo!29306 (h!66048 (exprs!4281 ctx!74))))))))

(declare-fun b!5134983 () Bool)

(declare-fun e!3202852 () Bool)

(assert (=> b!5134983 (= e!3202852 call!357648)))

(declare-fun b!5134984 () Bool)

(declare-fun e!3202856 () Bool)

(assert (=> b!5134984 (= e!3202855 e!3202856)))

(declare-fun res!2187222 () Bool)

(assert (=> b!5134984 (=> res!2187222 e!3202856)))

(assert (=> b!5134984 (= res!2187222 ((_ is Star!14397) (h!66048 (exprs!4281 ctx!74))))))

(declare-fun b!5134985 () Bool)

(assert (=> b!5134985 (= e!3202853 e!3202852)))

(declare-fun res!2187221 () Bool)

(assert (=> b!5134985 (= res!2187221 call!357649)))

(assert (=> b!5134985 (=> (not res!2187221) (not e!3202852))))

(declare-fun b!5134986 () Bool)

(assert (=> b!5134986 (= e!3202856 e!3202853)))

(assert (=> b!5134986 (= c!883844 ((_ is Union!14397) (h!66048 (exprs!4281 ctx!74))))))

(assert (= (and d!1661534 (not res!2187223)) b!5134981))

(assert (= (and b!5134981 res!2187224) b!5134984))

(assert (= (and b!5134984 (not res!2187222)) b!5134986))

(assert (= (and b!5134986 c!883844) b!5134982))

(assert (= (and b!5134986 (not c!883844)) b!5134985))

(assert (= (and b!5134982 (not res!2187220)) b!5134980))

(assert (= (and b!5134985 res!2187221) b!5134983))

(assert (= (or b!5134980 b!5134983) bm!357644))

(assert (= (or b!5134982 b!5134985) bm!357643))

(declare-fun m!6200610 () Bool)

(assert (=> bm!357643 m!6200610))

(declare-fun m!6200612 () Bool)

(assert (=> bm!357644 m!6200612))

(assert (=> d!1661442 d!1661534))

(declare-fun b!5134998 () Bool)

(declare-fun e!3202859 () Bool)

(declare-fun tp!1432309 () Bool)

(declare-fun tp!1432311 () Bool)

(assert (=> b!5134998 (= e!3202859 (and tp!1432309 tp!1432311))))

(declare-fun b!5134999 () Bool)

(declare-fun tp!1432307 () Bool)

(assert (=> b!5134999 (= e!3202859 tp!1432307)))

(declare-fun b!5134997 () Bool)

(assert (=> b!5134997 (= e!3202859 tp_is_empty!37947)))

(assert (=> b!5134715 (= tp!1432278 e!3202859)))

(declare-fun b!5135000 () Bool)

(declare-fun tp!1432308 () Bool)

(declare-fun tp!1432310 () Bool)

(assert (=> b!5135000 (= e!3202859 (and tp!1432308 tp!1432310))))

(assert (= (and b!5134715 ((_ is ElementMatch!14397) (h!66048 (exprs!4281 ctx!74)))) b!5134997))

(assert (= (and b!5134715 ((_ is Concat!23242) (h!66048 (exprs!4281 ctx!74)))) b!5134998))

(assert (= (and b!5134715 ((_ is Star!14397) (h!66048 (exprs!4281 ctx!74)))) b!5134999))

(assert (= (and b!5134715 ((_ is Union!14397) (h!66048 (exprs!4281 ctx!74)))) b!5135000))

(declare-fun b!5135001 () Bool)

(declare-fun e!3202860 () Bool)

(declare-fun tp!1432312 () Bool)

(declare-fun tp!1432313 () Bool)

(assert (=> b!5135001 (= e!3202860 (and tp!1432312 tp!1432313))))

(assert (=> b!5134715 (= tp!1432279 e!3202860)))

(assert (= (and b!5134715 ((_ is Cons!59600) (t!372751 (exprs!4281 ctx!74)))) b!5135001))

(declare-fun b_lambda!200069 () Bool)

(assert (= b_lambda!200065 (or d!1661452 b_lambda!200069)))

(declare-fun bs!1199618 () Bool)

(declare-fun d!1661536 () Bool)

(assert (= bs!1199618 (and d!1661536 d!1661452)))

(assert (=> bs!1199618 (= (dynLambda!23737 lambda!255603 (h!66048 (exprs!4281 lt!2118816))) (validRegex!6256 (h!66048 (exprs!4281 lt!2118816))))))

(declare-fun m!6200614 () Bool)

(assert (=> bs!1199618 m!6200614))

(assert (=> b!5134930 d!1661536))

(declare-fun b_lambda!200071 () Bool)

(assert (= b_lambda!200067 (or d!1661440 b_lambda!200071)))

(declare-fun bs!1199619 () Bool)

(declare-fun d!1661538 () Bool)

(assert (= bs!1199619 (and d!1661538 d!1661440)))

(assert (=> bs!1199619 (= (dynLambda!23737 lambda!255587 (h!66048 (exprs!4281 ctx!74))) (validRegex!6256 (h!66048 (exprs!4281 ctx!74))))))

(assert (=> bs!1199619 m!6200444))

(assert (=> b!5134932 d!1661538))

(check-sat (not bs!1199618) (not bm!357637) (not d!1661532) (not d!1661492) (not d!1661490) (not b!5134931) (not bm!357638) (not bm!357587) (not bm!357643) (not b!5134845) (not d!1661498) (not b!5135000) (not d!1661476) (not b!5134823) (not d!1661514) (not bm!357624) (not b!5134938) (not d!1661526) (not b!5134934) (not bm!357632) (not b!5134999) (not b_lambda!200069) (not d!1661500) (not d!1661482) (not b!5134964) (not b!5134998) (not b_lambda!200071) (not d!1661530) (not bm!357644) tp_is_empty!37947 (not bm!357588) (not b!5134893) (not d!1661488) (not bm!357623) (not d!1661474) (not b!5135001) (not bs!1199619) (not bm!357628) (not b!5134933))
(check-sat)
