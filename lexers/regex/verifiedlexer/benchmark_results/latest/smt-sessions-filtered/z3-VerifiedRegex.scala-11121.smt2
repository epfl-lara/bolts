; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!574994 () Bool)

(assert start!574994)

(declare-fun b!5506103 () Bool)

(assert (=> b!5506103 true))

(assert (=> b!5506103 true))

(declare-fun lambda!294855 () Int)

(declare-fun lambda!294854 () Int)

(assert (=> b!5506103 (not (= lambda!294855 lambda!294854))))

(assert (=> b!5506103 true))

(assert (=> b!5506103 true))

(declare-fun b!5506088 () Bool)

(declare-fun e!3405511 () Bool)

(declare-fun tp_is_empty!40231 () Bool)

(assert (=> b!5506088 (= e!3405511 tp_is_empty!40231)))

(declare-fun b!5506089 () Bool)

(declare-fun e!3405509 () Bool)

(declare-fun tp!1515043 () Bool)

(assert (=> b!5506089 (= e!3405509 tp!1515043)))

(declare-fun b!5506090 () Bool)

(declare-fun e!3405515 () Bool)

(declare-fun tp!1515034 () Bool)

(assert (=> b!5506090 (= e!3405515 tp!1515034)))

(declare-fun b!5506091 () Bool)

(declare-fun res!2346570 () Bool)

(declare-fun e!3405516 () Bool)

(assert (=> b!5506091 (=> res!2346570 e!3405516)))

(declare-datatypes ((C!31248 0))(
  ( (C!31249 (val!25326 Int)) )
))
(declare-datatypes ((Regex!15489 0))(
  ( (ElementMatch!15489 (c!961989 C!31248)) (Concat!24334 (regOne!31490 Regex!15489) (regTwo!31490 Regex!15489)) (EmptyExpr!15489) (Star!15489 (reg!15818 Regex!15489)) (EmptyLang!15489) (Union!15489 (regOne!31491 Regex!15489) (regTwo!31491 Regex!15489)) )
))
(declare-datatypes ((List!62766 0))(
  ( (Nil!62642) (Cons!62642 (h!69090 Regex!15489) (t!376007 List!62766)) )
))
(declare-datatypes ((Context!9746 0))(
  ( (Context!9747 (exprs!5373 List!62766)) )
))
(declare-datatypes ((List!62767 0))(
  ( (Nil!62643) (Cons!62643 (h!69091 Context!9746) (t!376008 List!62767)) )
))
(declare-fun zl!343 () List!62767)

(declare-fun isEmpty!34417 (List!62767) Bool)

(assert (=> b!5506091 (= res!2346570 (not (isEmpty!34417 (t!376008 zl!343))))))

(declare-fun b!5506092 () Bool)

(declare-fun res!2346572 () Bool)

(assert (=> b!5506092 (=> res!2346572 e!3405516)))

(declare-fun r!7292 () Regex!15489)

(declare-fun generalisedConcat!1104 (List!62766) Regex!15489)

(assert (=> b!5506092 (= res!2346572 (not (= r!7292 (generalisedConcat!1104 (exprs!5373 (h!69091 zl!343))))))))

(declare-fun b!5506093 () Bool)

(declare-fun tp!1515037 () Bool)

(assert (=> b!5506093 (= e!3405511 tp!1515037)))

(declare-fun b!5506094 () Bool)

(declare-fun tp!1515038 () Bool)

(declare-fun tp!1515041 () Bool)

(assert (=> b!5506094 (= e!3405511 (and tp!1515038 tp!1515041))))

(declare-fun e!3405514 () Bool)

(declare-fun b!5506095 () Bool)

(declare-fun tp!1515036 () Bool)

(declare-fun inv!81969 (Context!9746) Bool)

(assert (=> b!5506095 (= e!3405514 (and (inv!81969 (h!69091 zl!343)) e!3405515 tp!1515036))))

(declare-fun b!5506096 () Bool)

(declare-fun tp!1515035 () Bool)

(declare-fun tp!1515042 () Bool)

(assert (=> b!5506096 (= e!3405511 (and tp!1515035 tp!1515042))))

(declare-fun b!5506097 () Bool)

(declare-fun res!2346569 () Bool)

(assert (=> b!5506097 (=> res!2346569 e!3405516)))

(get-info :version)

(assert (=> b!5506097 (= res!2346569 (or ((_ is EmptyExpr!15489) r!7292) ((_ is EmptyLang!15489) r!7292) ((_ is ElementMatch!15489) r!7292) ((_ is Union!15489) r!7292) (not ((_ is Concat!24334) r!7292))))))

(declare-fun b!5506098 () Bool)

(declare-fun res!2346567 () Bool)

(declare-fun e!3405510 () Bool)

(assert (=> b!5506098 (=> (not res!2346567) (not e!3405510))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9746))

(declare-fun toList!9273 ((InoxSet Context!9746)) List!62767)

(assert (=> b!5506098 (= res!2346567 (= (toList!9273 z!1189) zl!343))))

(declare-fun setRes!36541 () Bool)

(declare-fun tp!1515039 () Bool)

(declare-fun setElem!36541 () Context!9746)

(declare-fun setNonEmpty!36541 () Bool)

(assert (=> setNonEmpty!36541 (= setRes!36541 (and tp!1515039 (inv!81969 setElem!36541) e!3405509))))

(declare-fun setRest!36541 () (InoxSet Context!9746))

(assert (=> setNonEmpty!36541 (= z!1189 ((_ map or) (store ((as const (Array Context!9746 Bool)) false) setElem!36541 true) setRest!36541))))

(declare-fun res!2346565 () Bool)

(assert (=> start!574994 (=> (not res!2346565) (not e!3405510))))

(declare-fun validRegex!7225 (Regex!15489) Bool)

(assert (=> start!574994 (= res!2346565 (validRegex!7225 r!7292))))

(assert (=> start!574994 e!3405510))

(assert (=> start!574994 e!3405511))

(declare-fun condSetEmpty!36541 () Bool)

(assert (=> start!574994 (= condSetEmpty!36541 (= z!1189 ((as const (Array Context!9746 Bool)) false)))))

(assert (=> start!574994 setRes!36541))

(assert (=> start!574994 e!3405514))

(declare-fun e!3405513 () Bool)

(assert (=> start!574994 e!3405513))

(declare-fun b!5506099 () Bool)

(declare-fun res!2346571 () Bool)

(declare-fun e!3405512 () Bool)

(assert (=> b!5506099 (=> res!2346571 e!3405512)))

(declare-fun isEmpty!34418 (List!62766) Bool)

(assert (=> b!5506099 (= res!2346571 (not (isEmpty!34418 (t!376007 (exprs!5373 (h!69091 zl!343))))))))

(declare-fun setIsEmpty!36541 () Bool)

(assert (=> setIsEmpty!36541 setRes!36541))

(declare-fun b!5506100 () Bool)

(declare-datatypes ((List!62768 0))(
  ( (Nil!62644) (Cons!62644 (h!69092 C!31248) (t!376009 List!62768)) )
))
(declare-fun s!2326 () List!62768)

(declare-fun derivationStepZipperUp!757 (Context!9746 C!31248) (InoxSet Context!9746))

(declare-fun derivationStepZipperDown!831 (Regex!15489 Context!9746 C!31248) (InoxSet Context!9746))

(assert (=> b!5506100 (= e!3405512 (= (derivationStepZipperUp!757 (Context!9747 (Cons!62642 r!7292 Nil!62642)) (h!69092 s!2326)) (derivationStepZipperDown!831 r!7292 (Context!9747 Nil!62642) (h!69092 s!2326))))))

(declare-fun b!5506101 () Bool)

(declare-fun res!2346563 () Bool)

(assert (=> b!5506101 (=> (not res!2346563) (not e!3405510))))

(declare-fun unfocusZipper!1231 (List!62767) Regex!15489)

(assert (=> b!5506101 (= res!2346563 (= r!7292 (unfocusZipper!1231 zl!343)))))

(declare-fun b!5506102 () Bool)

(declare-fun tp!1515040 () Bool)

(assert (=> b!5506102 (= e!3405513 (and tp_is_empty!40231 tp!1515040))))

(assert (=> b!5506103 (= e!3405516 e!3405512)))

(declare-fun res!2346564 () Bool)

(assert (=> b!5506103 (=> res!2346564 e!3405512)))

(declare-fun lt!2244360 () Bool)

(declare-fun lt!2244362 () Bool)

(assert (=> b!5506103 (= res!2346564 (or (not (= lt!2244360 lt!2244362)) ((_ is Nil!62644) s!2326)))))

(declare-fun Exists!2589 (Int) Bool)

(assert (=> b!5506103 (= (Exists!2589 lambda!294854) (Exists!2589 lambda!294855))))

(declare-datatypes ((Unit!155438 0))(
  ( (Unit!155439) )
))
(declare-fun lt!2244359 () Unit!155438)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1218 (Regex!15489 Regex!15489 List!62768) Unit!155438)

(assert (=> b!5506103 (= lt!2244359 (lemmaExistCutMatchRandMatchRSpecEquivalent!1218 (regOne!31490 r!7292) (regTwo!31490 r!7292) s!2326))))

(assert (=> b!5506103 (= lt!2244362 (Exists!2589 lambda!294854))))

(declare-datatypes ((tuple2!65172 0))(
  ( (tuple2!65173 (_1!35889 List!62768) (_2!35889 List!62768)) )
))
(declare-datatypes ((Option!15498 0))(
  ( (None!15497) (Some!15497 (v!51532 tuple2!65172)) )
))
(declare-fun isDefined!12201 (Option!15498) Bool)

(declare-fun findConcatSeparation!1912 (Regex!15489 Regex!15489 List!62768 List!62768 List!62768) Option!15498)

(assert (=> b!5506103 (= lt!2244362 (isDefined!12201 (findConcatSeparation!1912 (regOne!31490 r!7292) (regTwo!31490 r!7292) Nil!62644 s!2326 s!2326)))))

(declare-fun lt!2244361 () Unit!155438)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1676 (Regex!15489 Regex!15489 List!62768) Unit!155438)

(assert (=> b!5506103 (= lt!2244361 (lemmaFindConcatSeparationEquivalentToExists!1676 (regOne!31490 r!7292) (regTwo!31490 r!7292) s!2326))))

(declare-fun b!5506104 () Bool)

(assert (=> b!5506104 (= e!3405510 (not e!3405516))))

(declare-fun res!2346562 () Bool)

(assert (=> b!5506104 (=> res!2346562 e!3405516)))

(assert (=> b!5506104 (= res!2346562 (not ((_ is Cons!62643) zl!343)))))

(declare-fun matchRSpec!2592 (Regex!15489 List!62768) Bool)

(assert (=> b!5506104 (= lt!2244360 (matchRSpec!2592 r!7292 s!2326))))

(declare-fun matchR!7674 (Regex!15489 List!62768) Bool)

(assert (=> b!5506104 (= lt!2244360 (matchR!7674 r!7292 s!2326))))

(declare-fun lt!2244363 () Unit!155438)

(declare-fun mainMatchTheorem!2592 (Regex!15489 List!62768) Unit!155438)

(assert (=> b!5506104 (= lt!2244363 (mainMatchTheorem!2592 r!7292 s!2326))))

(declare-fun b!5506105 () Bool)

(declare-fun res!2346566 () Bool)

(assert (=> b!5506105 (=> res!2346566 e!3405516)))

(declare-fun generalisedUnion!1352 (List!62766) Regex!15489)

(declare-fun unfocusZipperList!917 (List!62767) List!62766)

(assert (=> b!5506105 (= res!2346566 (not (= r!7292 (generalisedUnion!1352 (unfocusZipperList!917 zl!343)))))))

(declare-fun b!5506106 () Bool)

(declare-fun res!2346568 () Bool)

(assert (=> b!5506106 (=> res!2346568 e!3405516)))

(assert (=> b!5506106 (= res!2346568 (not ((_ is Cons!62642) (exprs!5373 (h!69091 zl!343)))))))

(assert (= (and start!574994 res!2346565) b!5506098))

(assert (= (and b!5506098 res!2346567) b!5506101))

(assert (= (and b!5506101 res!2346563) b!5506104))

(assert (= (and b!5506104 (not res!2346562)) b!5506091))

(assert (= (and b!5506091 (not res!2346570)) b!5506092))

(assert (= (and b!5506092 (not res!2346572)) b!5506106))

(assert (= (and b!5506106 (not res!2346568)) b!5506105))

(assert (= (and b!5506105 (not res!2346566)) b!5506097))

(assert (= (and b!5506097 (not res!2346569)) b!5506103))

(assert (= (and b!5506103 (not res!2346564)) b!5506099))

(assert (= (and b!5506099 (not res!2346571)) b!5506100))

(assert (= (and start!574994 ((_ is ElementMatch!15489) r!7292)) b!5506088))

(assert (= (and start!574994 ((_ is Concat!24334) r!7292)) b!5506094))

(assert (= (and start!574994 ((_ is Star!15489) r!7292)) b!5506093))

(assert (= (and start!574994 ((_ is Union!15489) r!7292)) b!5506096))

(assert (= (and start!574994 condSetEmpty!36541) setIsEmpty!36541))

(assert (= (and start!574994 (not condSetEmpty!36541)) setNonEmpty!36541))

(assert (= setNonEmpty!36541 b!5506089))

(assert (= b!5506095 b!5506090))

(assert (= (and start!574994 ((_ is Cons!62643) zl!343)) b!5506095))

(assert (= (and start!574994 ((_ is Cons!62644) s!2326)) b!5506102))

(declare-fun m!6512774 () Bool)

(assert (=> b!5506101 m!6512774))

(declare-fun m!6512776 () Bool)

(assert (=> b!5506099 m!6512776))

(declare-fun m!6512778 () Bool)

(assert (=> setNonEmpty!36541 m!6512778))

(declare-fun m!6512780 () Bool)

(assert (=> b!5506104 m!6512780))

(declare-fun m!6512782 () Bool)

(assert (=> b!5506104 m!6512782))

(declare-fun m!6512784 () Bool)

(assert (=> b!5506104 m!6512784))

(declare-fun m!6512786 () Bool)

(assert (=> b!5506105 m!6512786))

(assert (=> b!5506105 m!6512786))

(declare-fun m!6512788 () Bool)

(assert (=> b!5506105 m!6512788))

(declare-fun m!6512790 () Bool)

(assert (=> b!5506095 m!6512790))

(declare-fun m!6512792 () Bool)

(assert (=> b!5506103 m!6512792))

(declare-fun m!6512794 () Bool)

(assert (=> b!5506103 m!6512794))

(declare-fun m!6512796 () Bool)

(assert (=> b!5506103 m!6512796))

(declare-fun m!6512798 () Bool)

(assert (=> b!5506103 m!6512798))

(assert (=> b!5506103 m!6512798))

(declare-fun m!6512800 () Bool)

(assert (=> b!5506103 m!6512800))

(assert (=> b!5506103 m!6512792))

(declare-fun m!6512802 () Bool)

(assert (=> b!5506103 m!6512802))

(declare-fun m!6512804 () Bool)

(assert (=> b!5506098 m!6512804))

(declare-fun m!6512806 () Bool)

(assert (=> start!574994 m!6512806))

(declare-fun m!6512808 () Bool)

(assert (=> b!5506091 m!6512808))

(declare-fun m!6512810 () Bool)

(assert (=> b!5506092 m!6512810))

(declare-fun m!6512812 () Bool)

(assert (=> b!5506100 m!6512812))

(declare-fun m!6512814 () Bool)

(assert (=> b!5506100 m!6512814))

(check-sat (not b!5506100) (not b!5506092) (not b!5506098) (not b!5506095) tp_is_empty!40231 (not b!5506091) (not b!5506094) (not b!5506089) (not b!5506102) (not b!5506105) (not b!5506096) (not b!5506093) (not start!574994) (not b!5506104) (not setNonEmpty!36541) (not b!5506101) (not b!5506103) (not b!5506090) (not b!5506099))
(check-sat)
(get-model)

(declare-fun d!1745052 () Bool)

(declare-fun lambda!294858 () Int)

(declare-fun forall!14669 (List!62766 Int) Bool)

(assert (=> d!1745052 (= (inv!81969 setElem!36541) (forall!14669 (exprs!5373 setElem!36541) lambda!294858))))

(declare-fun bs!1269803 () Bool)

(assert (= bs!1269803 d!1745052))

(declare-fun m!6512816 () Bool)

(assert (=> bs!1269803 m!6512816))

(assert (=> setNonEmpty!36541 d!1745052))

(declare-fun d!1745054 () Bool)

(declare-fun e!3405519 () Bool)

(assert (=> d!1745054 e!3405519))

(declare-fun res!2346575 () Bool)

(assert (=> d!1745054 (=> (not res!2346575) (not e!3405519))))

(declare-fun lt!2244366 () List!62767)

(declare-fun noDuplicate!1488 (List!62767) Bool)

(assert (=> d!1745054 (= res!2346575 (noDuplicate!1488 lt!2244366))))

(declare-fun choose!41833 ((InoxSet Context!9746)) List!62767)

(assert (=> d!1745054 (= lt!2244366 (choose!41833 z!1189))))

(assert (=> d!1745054 (= (toList!9273 z!1189) lt!2244366)))

(declare-fun b!5506113 () Bool)

(declare-fun content!11249 (List!62767) (InoxSet Context!9746))

(assert (=> b!5506113 (= e!3405519 (= (content!11249 lt!2244366) z!1189))))

(assert (= (and d!1745054 res!2346575) b!5506113))

(declare-fun m!6512818 () Bool)

(assert (=> d!1745054 m!6512818))

(declare-fun m!6512820 () Bool)

(assert (=> d!1745054 m!6512820))

(declare-fun m!6512822 () Bool)

(assert (=> b!5506113 m!6512822))

(assert (=> b!5506098 d!1745054))

(declare-fun b!5506133 () Bool)

(declare-fun e!3405540 () Bool)

(declare-fun call!406836 () Bool)

(assert (=> b!5506133 (= e!3405540 call!406836)))

(declare-fun b!5506134 () Bool)

(declare-fun e!3405535 () Bool)

(declare-fun e!3405534 () Bool)

(assert (=> b!5506134 (= e!3405535 e!3405534)))

(declare-fun res!2346587 () Bool)

(declare-fun nullable!5523 (Regex!15489) Bool)

(assert (=> b!5506134 (= res!2346587 (not (nullable!5523 (reg!15818 r!7292))))))

(assert (=> b!5506134 (=> (not res!2346587) (not e!3405534))))

(declare-fun b!5506135 () Bool)

(declare-fun res!2346588 () Bool)

(declare-fun e!3405538 () Bool)

(assert (=> b!5506135 (=> (not res!2346588) (not e!3405538))))

(declare-fun call!406835 () Bool)

(assert (=> b!5506135 (= res!2346588 call!406835)))

(declare-fun e!3405537 () Bool)

(assert (=> b!5506135 (= e!3405537 e!3405538)))

(declare-fun b!5506136 () Bool)

(declare-fun e!3405539 () Bool)

(assert (=> b!5506136 (= e!3405539 e!3405535)))

(declare-fun c!961995 () Bool)

(assert (=> b!5506136 (= c!961995 ((_ is Star!15489) r!7292))))

(declare-fun c!961994 () Bool)

(declare-fun call!406834 () Bool)

(declare-fun bm!406829 () Bool)

(assert (=> bm!406829 (= call!406834 (validRegex!7225 (ite c!961995 (reg!15818 r!7292) (ite c!961994 (regOne!31491 r!7292) (regOne!31490 r!7292)))))))

(declare-fun bm!406830 () Bool)

(assert (=> bm!406830 (= call!406836 (validRegex!7225 (ite c!961994 (regTwo!31491 r!7292) (regTwo!31490 r!7292))))))

(declare-fun b!5506137 () Bool)

(declare-fun res!2346589 () Bool)

(declare-fun e!3405536 () Bool)

(assert (=> b!5506137 (=> res!2346589 e!3405536)))

(assert (=> b!5506137 (= res!2346589 (not ((_ is Concat!24334) r!7292)))))

(assert (=> b!5506137 (= e!3405537 e!3405536)))

(declare-fun b!5506138 () Bool)

(assert (=> b!5506138 (= e!3405538 call!406836)))

(declare-fun b!5506139 () Bool)

(assert (=> b!5506139 (= e!3405536 e!3405540)))

(declare-fun res!2346586 () Bool)

(assert (=> b!5506139 (=> (not res!2346586) (not e!3405540))))

(assert (=> b!5506139 (= res!2346586 call!406835)))

(declare-fun b!5506132 () Bool)

(assert (=> b!5506132 (= e!3405535 e!3405537)))

(assert (=> b!5506132 (= c!961994 ((_ is Union!15489) r!7292))))

(declare-fun d!1745056 () Bool)

(declare-fun res!2346590 () Bool)

(assert (=> d!1745056 (=> res!2346590 e!3405539)))

(assert (=> d!1745056 (= res!2346590 ((_ is ElementMatch!15489) r!7292))))

(assert (=> d!1745056 (= (validRegex!7225 r!7292) e!3405539)))

(declare-fun bm!406831 () Bool)

(assert (=> bm!406831 (= call!406835 call!406834)))

(declare-fun b!5506140 () Bool)

(assert (=> b!5506140 (= e!3405534 call!406834)))

(assert (= (and d!1745056 (not res!2346590)) b!5506136))

(assert (= (and b!5506136 c!961995) b!5506134))

(assert (= (and b!5506136 (not c!961995)) b!5506132))

(assert (= (and b!5506134 res!2346587) b!5506140))

(assert (= (and b!5506132 c!961994) b!5506135))

(assert (= (and b!5506132 (not c!961994)) b!5506137))

(assert (= (and b!5506135 res!2346588) b!5506138))

(assert (= (and b!5506137 (not res!2346589)) b!5506139))

(assert (= (and b!5506139 res!2346586) b!5506133))

(assert (= (or b!5506138 b!5506133) bm!406830))

(assert (= (or b!5506135 b!5506139) bm!406831))

(assert (= (or b!5506140 bm!406831) bm!406829))

(declare-fun m!6512826 () Bool)

(assert (=> b!5506134 m!6512826))

(declare-fun m!6512828 () Bool)

(assert (=> bm!406829 m!6512828))

(declare-fun m!6512830 () Bool)

(assert (=> bm!406830 m!6512830))

(assert (=> start!574994 d!1745056))

(declare-fun bs!1269805 () Bool)

(declare-fun d!1745066 () Bool)

(assert (= bs!1269805 (and d!1745066 d!1745052)))

(declare-fun lambda!294864 () Int)

(assert (=> bs!1269805 (= lambda!294864 lambda!294858)))

(assert (=> d!1745066 (= (inv!81969 (h!69091 zl!343)) (forall!14669 (exprs!5373 (h!69091 zl!343)) lambda!294864))))

(declare-fun bs!1269806 () Bool)

(assert (= bs!1269806 d!1745066))

(declare-fun m!6512832 () Bool)

(assert (=> bs!1269806 m!6512832))

(assert (=> b!5506095 d!1745066))

(declare-fun d!1745068 () Bool)

(declare-fun choose!41834 (Int) Bool)

(assert (=> d!1745068 (= (Exists!2589 lambda!294854) (choose!41834 lambda!294854))))

(declare-fun bs!1269807 () Bool)

(assert (= bs!1269807 d!1745068))

(declare-fun m!6512834 () Bool)

(assert (=> bs!1269807 m!6512834))

(assert (=> b!5506103 d!1745068))

(declare-fun b!5506271 () Bool)

(declare-fun lt!2244385 () Unit!155438)

(declare-fun lt!2244387 () Unit!155438)

(assert (=> b!5506271 (= lt!2244385 lt!2244387)))

(declare-fun ++!13742 (List!62768 List!62768) List!62768)

(assert (=> b!5506271 (= (++!13742 (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644)) (t!376009 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1911 (List!62768 C!31248 List!62768 List!62768) Unit!155438)

(assert (=> b!5506271 (= lt!2244387 (lemmaMoveElementToOtherListKeepsConcatEq!1911 Nil!62644 (h!69092 s!2326) (t!376009 s!2326) s!2326))))

(declare-fun e!3405619 () Option!15498)

(assert (=> b!5506271 (= e!3405619 (findConcatSeparation!1912 (regOne!31490 r!7292) (regTwo!31490 r!7292) (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644)) (t!376009 s!2326) s!2326))))

(declare-fun b!5506272 () Bool)

(declare-fun res!2346637 () Bool)

(declare-fun e!3405621 () Bool)

(assert (=> b!5506272 (=> (not res!2346637) (not e!3405621))))

(declare-fun lt!2244386 () Option!15498)

(declare-fun get!21554 (Option!15498) tuple2!65172)

(assert (=> b!5506272 (= res!2346637 (matchR!7674 (regTwo!31490 r!7292) (_2!35889 (get!21554 lt!2244386))))))

(declare-fun b!5506273 () Bool)

(declare-fun e!3405622 () Option!15498)

(assert (=> b!5506273 (= e!3405622 (Some!15497 (tuple2!65173 Nil!62644 s!2326)))))

(declare-fun d!1745070 () Bool)

(declare-fun e!3405618 () Bool)

(assert (=> d!1745070 e!3405618))

(declare-fun res!2346638 () Bool)

(assert (=> d!1745070 (=> res!2346638 e!3405618)))

(assert (=> d!1745070 (= res!2346638 e!3405621)))

(declare-fun res!2346639 () Bool)

(assert (=> d!1745070 (=> (not res!2346639) (not e!3405621))))

(assert (=> d!1745070 (= res!2346639 (isDefined!12201 lt!2244386))))

(assert (=> d!1745070 (= lt!2244386 e!3405622)))

(declare-fun c!962039 () Bool)

(declare-fun e!3405620 () Bool)

(assert (=> d!1745070 (= c!962039 e!3405620)))

(declare-fun res!2346636 () Bool)

(assert (=> d!1745070 (=> (not res!2346636) (not e!3405620))))

(assert (=> d!1745070 (= res!2346636 (matchR!7674 (regOne!31490 r!7292) Nil!62644))))

(assert (=> d!1745070 (validRegex!7225 (regOne!31490 r!7292))))

(assert (=> d!1745070 (= (findConcatSeparation!1912 (regOne!31490 r!7292) (regTwo!31490 r!7292) Nil!62644 s!2326 s!2326) lt!2244386)))

(declare-fun b!5506274 () Bool)

(assert (=> b!5506274 (= e!3405622 e!3405619)))

(declare-fun c!962040 () Bool)

(assert (=> b!5506274 (= c!962040 ((_ is Nil!62644) s!2326))))

(declare-fun b!5506275 () Bool)

(declare-fun res!2346635 () Bool)

(assert (=> b!5506275 (=> (not res!2346635) (not e!3405621))))

(assert (=> b!5506275 (= res!2346635 (matchR!7674 (regOne!31490 r!7292) (_1!35889 (get!21554 lt!2244386))))))

(declare-fun b!5506276 () Bool)

(assert (=> b!5506276 (= e!3405621 (= (++!13742 (_1!35889 (get!21554 lt!2244386)) (_2!35889 (get!21554 lt!2244386))) s!2326))))

(declare-fun b!5506277 () Bool)

(assert (=> b!5506277 (= e!3405620 (matchR!7674 (regTwo!31490 r!7292) s!2326))))

(declare-fun b!5506278 () Bool)

(assert (=> b!5506278 (= e!3405618 (not (isDefined!12201 lt!2244386)))))

(declare-fun b!5506279 () Bool)

(assert (=> b!5506279 (= e!3405619 None!15497)))

(assert (= (and d!1745070 res!2346636) b!5506277))

(assert (= (and d!1745070 c!962039) b!5506273))

(assert (= (and d!1745070 (not c!962039)) b!5506274))

(assert (= (and b!5506274 c!962040) b!5506279))

(assert (= (and b!5506274 (not c!962040)) b!5506271))

(assert (= (and d!1745070 res!2346639) b!5506275))

(assert (= (and b!5506275 res!2346635) b!5506272))

(assert (= (and b!5506272 res!2346637) b!5506276))

(assert (= (and d!1745070 (not res!2346638)) b!5506278))

(declare-fun m!6512892 () Bool)

(assert (=> b!5506276 m!6512892))

(declare-fun m!6512894 () Bool)

(assert (=> b!5506276 m!6512894))

(assert (=> b!5506272 m!6512892))

(declare-fun m!6512896 () Bool)

(assert (=> b!5506272 m!6512896))

(declare-fun m!6512898 () Bool)

(assert (=> b!5506271 m!6512898))

(assert (=> b!5506271 m!6512898))

(declare-fun m!6512900 () Bool)

(assert (=> b!5506271 m!6512900))

(declare-fun m!6512902 () Bool)

(assert (=> b!5506271 m!6512902))

(assert (=> b!5506271 m!6512898))

(declare-fun m!6512904 () Bool)

(assert (=> b!5506271 m!6512904))

(declare-fun m!6512906 () Bool)

(assert (=> d!1745070 m!6512906))

(declare-fun m!6512908 () Bool)

(assert (=> d!1745070 m!6512908))

(declare-fun m!6512910 () Bool)

(assert (=> d!1745070 m!6512910))

(assert (=> b!5506278 m!6512906))

(assert (=> b!5506275 m!6512892))

(declare-fun m!6512912 () Bool)

(assert (=> b!5506275 m!6512912))

(declare-fun m!6512914 () Bool)

(assert (=> b!5506277 m!6512914))

(assert (=> b!5506103 d!1745070))

(declare-fun d!1745082 () Bool)

(assert (=> d!1745082 (= (Exists!2589 lambda!294855) (choose!41834 lambda!294855))))

(declare-fun bs!1269817 () Bool)

(assert (= bs!1269817 d!1745082))

(declare-fun m!6512916 () Bool)

(assert (=> bs!1269817 m!6512916))

(assert (=> b!5506103 d!1745082))

(declare-fun bs!1269819 () Bool)

(declare-fun d!1745084 () Bool)

(assert (= bs!1269819 (and d!1745084 b!5506103)))

(declare-fun lambda!294880 () Int)

(assert (=> bs!1269819 (= lambda!294880 lambda!294854)))

(assert (=> bs!1269819 (not (= lambda!294880 lambda!294855))))

(assert (=> d!1745084 true))

(assert (=> d!1745084 true))

(assert (=> d!1745084 true))

(assert (=> d!1745084 (= (isDefined!12201 (findConcatSeparation!1912 (regOne!31490 r!7292) (regTwo!31490 r!7292) Nil!62644 s!2326 s!2326)) (Exists!2589 lambda!294880))))

(declare-fun lt!2244396 () Unit!155438)

(declare-fun choose!41837 (Regex!15489 Regex!15489 List!62768) Unit!155438)

(assert (=> d!1745084 (= lt!2244396 (choose!41837 (regOne!31490 r!7292) (regTwo!31490 r!7292) s!2326))))

(assert (=> d!1745084 (validRegex!7225 (regOne!31490 r!7292))))

(assert (=> d!1745084 (= (lemmaFindConcatSeparationEquivalentToExists!1676 (regOne!31490 r!7292) (regTwo!31490 r!7292) s!2326) lt!2244396)))

(declare-fun bs!1269820 () Bool)

(assert (= bs!1269820 d!1745084))

(assert (=> bs!1269820 m!6512910))

(declare-fun m!6512938 () Bool)

(assert (=> bs!1269820 m!6512938))

(assert (=> bs!1269820 m!6512792))

(assert (=> bs!1269820 m!6512794))

(declare-fun m!6512940 () Bool)

(assert (=> bs!1269820 m!6512940))

(assert (=> bs!1269820 m!6512792))

(assert (=> b!5506103 d!1745084))

(declare-fun bs!1269828 () Bool)

(declare-fun d!1745092 () Bool)

(assert (= bs!1269828 (and d!1745092 b!5506103)))

(declare-fun lambda!294886 () Int)

(assert (=> bs!1269828 (= lambda!294886 lambda!294854)))

(assert (=> bs!1269828 (not (= lambda!294886 lambda!294855))))

(declare-fun bs!1269829 () Bool)

(assert (= bs!1269829 (and d!1745092 d!1745084)))

(assert (=> bs!1269829 (= lambda!294886 lambda!294880)))

(assert (=> d!1745092 true))

(assert (=> d!1745092 true))

(assert (=> d!1745092 true))

(declare-fun lambda!294889 () Int)

(assert (=> bs!1269828 (not (= lambda!294889 lambda!294854))))

(assert (=> bs!1269828 (= lambda!294889 lambda!294855)))

(assert (=> bs!1269829 (not (= lambda!294889 lambda!294880))))

(declare-fun bs!1269833 () Bool)

(assert (= bs!1269833 d!1745092))

(assert (=> bs!1269833 (not (= lambda!294889 lambda!294886))))

(assert (=> d!1745092 true))

(assert (=> d!1745092 true))

(assert (=> d!1745092 true))

(assert (=> d!1745092 (= (Exists!2589 lambda!294886) (Exists!2589 lambda!294889))))

(declare-fun lt!2244402 () Unit!155438)

(declare-fun choose!41838 (Regex!15489 Regex!15489 List!62768) Unit!155438)

(assert (=> d!1745092 (= lt!2244402 (choose!41838 (regOne!31490 r!7292) (regTwo!31490 r!7292) s!2326))))

(assert (=> d!1745092 (validRegex!7225 (regOne!31490 r!7292))))

(assert (=> d!1745092 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1218 (regOne!31490 r!7292) (regTwo!31490 r!7292) s!2326) lt!2244402)))

(declare-fun m!6512970 () Bool)

(assert (=> bs!1269833 m!6512970))

(declare-fun m!6512972 () Bool)

(assert (=> bs!1269833 m!6512972))

(declare-fun m!6512974 () Bool)

(assert (=> bs!1269833 m!6512974))

(assert (=> bs!1269833 m!6512910))

(assert (=> b!5506103 d!1745092))

(declare-fun d!1745106 () Bool)

(declare-fun isEmpty!34420 (Option!15498) Bool)

(assert (=> d!1745106 (= (isDefined!12201 (findConcatSeparation!1912 (regOne!31490 r!7292) (regTwo!31490 r!7292) Nil!62644 s!2326 s!2326)) (not (isEmpty!34420 (findConcatSeparation!1912 (regOne!31490 r!7292) (regTwo!31490 r!7292) Nil!62644 s!2326 s!2326))))))

(declare-fun bs!1269835 () Bool)

(assert (= bs!1269835 d!1745106))

(assert (=> bs!1269835 m!6512792))

(declare-fun m!6512976 () Bool)

(assert (=> bs!1269835 m!6512976))

(assert (=> b!5506103 d!1745106))

(declare-fun bs!1269837 () Bool)

(declare-fun d!1745108 () Bool)

(assert (= bs!1269837 (and d!1745108 d!1745052)))

(declare-fun lambda!294893 () Int)

(assert (=> bs!1269837 (= lambda!294893 lambda!294858)))

(declare-fun bs!1269838 () Bool)

(assert (= bs!1269838 (and d!1745108 d!1745066)))

(assert (=> bs!1269838 (= lambda!294893 lambda!294864)))

(declare-fun b!5506460 () Bool)

(declare-fun e!3405727 () Bool)

(declare-fun lt!2244417 () Regex!15489)

(declare-fun isEmptyLang!1078 (Regex!15489) Bool)

(assert (=> b!5506460 (= e!3405727 (isEmptyLang!1078 lt!2244417))))

(declare-fun b!5506461 () Bool)

(declare-fun e!3405731 () Bool)

(assert (=> b!5506461 (= e!3405727 e!3405731)))

(declare-fun c!962091 () Bool)

(declare-fun tail!10888 (List!62766) List!62766)

(assert (=> b!5506461 (= c!962091 (isEmpty!34418 (tail!10888 (unfocusZipperList!917 zl!343))))))

(declare-fun b!5506462 () Bool)

(declare-fun e!3405732 () Regex!15489)

(assert (=> b!5506462 (= e!3405732 (h!69090 (unfocusZipperList!917 zl!343)))))

(declare-fun e!3405730 () Bool)

(assert (=> d!1745108 e!3405730))

(declare-fun res!2346720 () Bool)

(assert (=> d!1745108 (=> (not res!2346720) (not e!3405730))))

(assert (=> d!1745108 (= res!2346720 (validRegex!7225 lt!2244417))))

(assert (=> d!1745108 (= lt!2244417 e!3405732)))

(declare-fun c!962092 () Bool)

(declare-fun e!3405728 () Bool)

(assert (=> d!1745108 (= c!962092 e!3405728)))

(declare-fun res!2346721 () Bool)

(assert (=> d!1745108 (=> (not res!2346721) (not e!3405728))))

(assert (=> d!1745108 (= res!2346721 ((_ is Cons!62642) (unfocusZipperList!917 zl!343)))))

(assert (=> d!1745108 (forall!14669 (unfocusZipperList!917 zl!343) lambda!294893)))

(assert (=> d!1745108 (= (generalisedUnion!1352 (unfocusZipperList!917 zl!343)) lt!2244417)))

(declare-fun b!5506463 () Bool)

(declare-fun head!11793 (List!62766) Regex!15489)

(assert (=> b!5506463 (= e!3405731 (= lt!2244417 (head!11793 (unfocusZipperList!917 zl!343))))))

(declare-fun b!5506464 () Bool)

(declare-fun e!3405729 () Regex!15489)

(assert (=> b!5506464 (= e!3405729 EmptyLang!15489)))

(declare-fun b!5506465 () Bool)

(assert (=> b!5506465 (= e!3405732 e!3405729)))

(declare-fun c!962094 () Bool)

(assert (=> b!5506465 (= c!962094 ((_ is Cons!62642) (unfocusZipperList!917 zl!343)))))

(declare-fun b!5506466 () Bool)

(assert (=> b!5506466 (= e!3405728 (isEmpty!34418 (t!376007 (unfocusZipperList!917 zl!343))))))

(declare-fun b!5506467 () Bool)

(assert (=> b!5506467 (= e!3405729 (Union!15489 (h!69090 (unfocusZipperList!917 zl!343)) (generalisedUnion!1352 (t!376007 (unfocusZipperList!917 zl!343)))))))

(declare-fun b!5506468 () Bool)

(assert (=> b!5506468 (= e!3405730 e!3405727)))

(declare-fun c!962093 () Bool)

(assert (=> b!5506468 (= c!962093 (isEmpty!34418 (unfocusZipperList!917 zl!343)))))

(declare-fun b!5506469 () Bool)

(declare-fun isUnion!508 (Regex!15489) Bool)

(assert (=> b!5506469 (= e!3405731 (isUnion!508 lt!2244417))))

(assert (= (and d!1745108 res!2346721) b!5506466))

(assert (= (and d!1745108 c!962092) b!5506462))

(assert (= (and d!1745108 (not c!962092)) b!5506465))

(assert (= (and b!5506465 c!962094) b!5506467))

(assert (= (and b!5506465 (not c!962094)) b!5506464))

(assert (= (and d!1745108 res!2346720) b!5506468))

(assert (= (and b!5506468 c!962093) b!5506460))

(assert (= (and b!5506468 (not c!962093)) b!5506461))

(assert (= (and b!5506461 c!962091) b!5506463))

(assert (= (and b!5506461 (not c!962091)) b!5506469))

(declare-fun m!6513002 () Bool)

(assert (=> b!5506460 m!6513002))

(declare-fun m!6513004 () Bool)

(assert (=> b!5506469 m!6513004))

(assert (=> b!5506461 m!6512786))

(declare-fun m!6513006 () Bool)

(assert (=> b!5506461 m!6513006))

(assert (=> b!5506461 m!6513006))

(declare-fun m!6513008 () Bool)

(assert (=> b!5506461 m!6513008))

(declare-fun m!6513010 () Bool)

(assert (=> b!5506466 m!6513010))

(assert (=> b!5506463 m!6512786))

(declare-fun m!6513012 () Bool)

(assert (=> b!5506463 m!6513012))

(assert (=> b!5506468 m!6512786))

(declare-fun m!6513014 () Bool)

(assert (=> b!5506468 m!6513014))

(declare-fun m!6513016 () Bool)

(assert (=> d!1745108 m!6513016))

(assert (=> d!1745108 m!6512786))

(declare-fun m!6513018 () Bool)

(assert (=> d!1745108 m!6513018))

(declare-fun m!6513020 () Bool)

(assert (=> b!5506467 m!6513020))

(assert (=> b!5506105 d!1745108))

(declare-fun bs!1269844 () Bool)

(declare-fun d!1745114 () Bool)

(assert (= bs!1269844 (and d!1745114 d!1745052)))

(declare-fun lambda!294902 () Int)

(assert (=> bs!1269844 (= lambda!294902 lambda!294858)))

(declare-fun bs!1269845 () Bool)

(assert (= bs!1269845 (and d!1745114 d!1745066)))

(assert (=> bs!1269845 (= lambda!294902 lambda!294864)))

(declare-fun bs!1269846 () Bool)

(assert (= bs!1269846 (and d!1745114 d!1745108)))

(assert (=> bs!1269846 (= lambda!294902 lambda!294893)))

(declare-fun lt!2244423 () List!62766)

(assert (=> d!1745114 (forall!14669 lt!2244423 lambda!294902)))

(declare-fun e!3405739 () List!62766)

(assert (=> d!1745114 (= lt!2244423 e!3405739)))

(declare-fun c!962097 () Bool)

(assert (=> d!1745114 (= c!962097 ((_ is Cons!62643) zl!343))))

(assert (=> d!1745114 (= (unfocusZipperList!917 zl!343) lt!2244423)))

(declare-fun b!5506482 () Bool)

(assert (=> b!5506482 (= e!3405739 (Cons!62642 (generalisedConcat!1104 (exprs!5373 (h!69091 zl!343))) (unfocusZipperList!917 (t!376008 zl!343))))))

(declare-fun b!5506483 () Bool)

(assert (=> b!5506483 (= e!3405739 Nil!62642)))

(assert (= (and d!1745114 c!962097) b!5506482))

(assert (= (and d!1745114 (not c!962097)) b!5506483))

(declare-fun m!6513028 () Bool)

(assert (=> d!1745114 m!6513028))

(assert (=> b!5506482 m!6512810))

(declare-fun m!6513030 () Bool)

(assert (=> b!5506482 m!6513030))

(assert (=> b!5506105 d!1745114))

(declare-fun bs!1269848 () Bool)

(declare-fun b!5506579 () Bool)

(assert (= bs!1269848 (and b!5506579 d!1745084)))

(declare-fun lambda!294907 () Int)

(assert (=> bs!1269848 (not (= lambda!294907 lambda!294880))))

(declare-fun bs!1269849 () Bool)

(assert (= bs!1269849 (and b!5506579 d!1745092)))

(assert (=> bs!1269849 (not (= lambda!294907 lambda!294886))))

(assert (=> bs!1269849 (not (= lambda!294907 lambda!294889))))

(declare-fun bs!1269850 () Bool)

(assert (= bs!1269850 (and b!5506579 b!5506103)))

(assert (=> bs!1269850 (not (= lambda!294907 lambda!294854))))

(assert (=> bs!1269850 (not (= lambda!294907 lambda!294855))))

(assert (=> b!5506579 true))

(assert (=> b!5506579 true))

(declare-fun bs!1269851 () Bool)

(declare-fun b!5506577 () Bool)

(assert (= bs!1269851 (and b!5506577 d!1745084)))

(declare-fun lambda!294908 () Int)

(assert (=> bs!1269851 (not (= lambda!294908 lambda!294880))))

(declare-fun bs!1269852 () Bool)

(assert (= bs!1269852 (and b!5506577 b!5506579)))

(assert (=> bs!1269852 (not (= lambda!294908 lambda!294907))))

(declare-fun bs!1269853 () Bool)

(assert (= bs!1269853 (and b!5506577 d!1745092)))

(assert (=> bs!1269853 (not (= lambda!294908 lambda!294886))))

(assert (=> bs!1269853 (= lambda!294908 lambda!294889)))

(declare-fun bs!1269854 () Bool)

(assert (= bs!1269854 (and b!5506577 b!5506103)))

(assert (=> bs!1269854 (not (= lambda!294908 lambda!294854))))

(assert (=> bs!1269854 (= lambda!294908 lambda!294855)))

(assert (=> b!5506577 true))

(assert (=> b!5506577 true))

(declare-fun b!5506570 () Bool)

(declare-fun c!962109 () Bool)

(assert (=> b!5506570 (= c!962109 ((_ is ElementMatch!15489) r!7292))))

(declare-fun e!3405784 () Bool)

(declare-fun e!3405783 () Bool)

(assert (=> b!5506570 (= e!3405784 e!3405783)))

(declare-fun b!5506572 () Bool)

(declare-fun e!3405787 () Bool)

(declare-fun e!3405785 () Bool)

(assert (=> b!5506572 (= e!3405787 e!3405785)))

(declare-fun res!2346748 () Bool)

(assert (=> b!5506572 (= res!2346748 (matchRSpec!2592 (regOne!31491 r!7292) s!2326))))

(assert (=> b!5506572 (=> res!2346748 e!3405785)))

(declare-fun b!5506573 () Bool)

(declare-fun c!962106 () Bool)

(assert (=> b!5506573 (= c!962106 ((_ is Union!15489) r!7292))))

(assert (=> b!5506573 (= e!3405783 e!3405787)))

(declare-fun b!5506574 () Bool)

(declare-fun e!3405782 () Bool)

(declare-fun call!406880 () Bool)

(assert (=> b!5506574 (= e!3405782 call!406880)))

(declare-fun bm!406875 () Bool)

(declare-fun isEmpty!34422 (List!62768) Bool)

(assert (=> bm!406875 (= call!406880 (isEmpty!34422 s!2326))))

(declare-fun b!5506575 () Bool)

(declare-fun e!3405786 () Bool)

(assert (=> b!5506575 (= e!3405787 e!3405786)))

(declare-fun c!962108 () Bool)

(assert (=> b!5506575 (= c!962108 ((_ is Star!15489) r!7292))))

(declare-fun b!5506576 () Bool)

(assert (=> b!5506576 (= e!3405782 e!3405784)))

(declare-fun res!2346746 () Bool)

(assert (=> b!5506576 (= res!2346746 (not ((_ is EmptyLang!15489) r!7292)))))

(assert (=> b!5506576 (=> (not res!2346746) (not e!3405784))))

(declare-fun call!406881 () Bool)

(assert (=> b!5506577 (= e!3405786 call!406881)))

(declare-fun d!1745118 () Bool)

(declare-fun c!962107 () Bool)

(assert (=> d!1745118 (= c!962107 ((_ is EmptyExpr!15489) r!7292))))

(assert (=> d!1745118 (= (matchRSpec!2592 r!7292 s!2326) e!3405782)))

(declare-fun b!5506571 () Bool)

(declare-fun res!2346747 () Bool)

(declare-fun e!3405781 () Bool)

(assert (=> b!5506571 (=> res!2346747 e!3405781)))

(assert (=> b!5506571 (= res!2346747 call!406880)))

(assert (=> b!5506571 (= e!3405786 e!3405781)))

(declare-fun b!5506578 () Bool)

(assert (=> b!5506578 (= e!3405783 (= s!2326 (Cons!62644 (c!961989 r!7292) Nil!62644)))))

(assert (=> b!5506579 (= e!3405781 call!406881)))

(declare-fun bm!406876 () Bool)

(assert (=> bm!406876 (= call!406881 (Exists!2589 (ite c!962108 lambda!294907 lambda!294908)))))

(declare-fun b!5506580 () Bool)

(assert (=> b!5506580 (= e!3405785 (matchRSpec!2592 (regTwo!31491 r!7292) s!2326))))

(assert (= (and d!1745118 c!962107) b!5506574))

(assert (= (and d!1745118 (not c!962107)) b!5506576))

(assert (= (and b!5506576 res!2346746) b!5506570))

(assert (= (and b!5506570 c!962109) b!5506578))

(assert (= (and b!5506570 (not c!962109)) b!5506573))

(assert (= (and b!5506573 c!962106) b!5506572))

(assert (= (and b!5506573 (not c!962106)) b!5506575))

(assert (= (and b!5506572 (not res!2346748)) b!5506580))

(assert (= (and b!5506575 c!962108) b!5506571))

(assert (= (and b!5506575 (not c!962108)) b!5506577))

(assert (= (and b!5506571 (not res!2346747)) b!5506579))

(assert (= (or b!5506579 b!5506577) bm!406876))

(assert (= (or b!5506574 b!5506571) bm!406875))

(declare-fun m!6513038 () Bool)

(assert (=> b!5506572 m!6513038))

(declare-fun m!6513040 () Bool)

(assert (=> bm!406875 m!6513040))

(declare-fun m!6513042 () Bool)

(assert (=> bm!406876 m!6513042))

(declare-fun m!6513044 () Bool)

(assert (=> b!5506580 m!6513044))

(assert (=> b!5506104 d!1745118))

(declare-fun b!5506609 () Bool)

(declare-fun e!3405808 () Bool)

(declare-fun head!11794 (List!62768) C!31248)

(assert (=> b!5506609 (= e!3405808 (= (head!11794 s!2326) (c!961989 r!7292)))))

(declare-fun b!5506610 () Bool)

(declare-fun e!3405805 () Bool)

(declare-fun lt!2244426 () Bool)

(declare-fun call!406884 () Bool)

(assert (=> b!5506610 (= e!3405805 (= lt!2244426 call!406884))))

(declare-fun b!5506611 () Bool)

(declare-fun e!3405807 () Bool)

(assert (=> b!5506611 (= e!3405805 e!3405807)))

(declare-fun c!962117 () Bool)

(assert (=> b!5506611 (= c!962117 ((_ is EmptyLang!15489) r!7292))))

(declare-fun d!1745120 () Bool)

(assert (=> d!1745120 e!3405805))

(declare-fun c!962118 () Bool)

(assert (=> d!1745120 (= c!962118 ((_ is EmptyExpr!15489) r!7292))))

(declare-fun e!3405806 () Bool)

(assert (=> d!1745120 (= lt!2244426 e!3405806)))

(declare-fun c!962116 () Bool)

(assert (=> d!1745120 (= c!962116 (isEmpty!34422 s!2326))))

(assert (=> d!1745120 (validRegex!7225 r!7292)))

(assert (=> d!1745120 (= (matchR!7674 r!7292 s!2326) lt!2244426)))

(declare-fun b!5506612 () Bool)

(assert (=> b!5506612 (= e!3405807 (not lt!2244426))))

(declare-fun b!5506613 () Bool)

(assert (=> b!5506613 (= e!3405806 (nullable!5523 r!7292))))

(declare-fun b!5506614 () Bool)

(declare-fun res!2346766 () Bool)

(assert (=> b!5506614 (=> (not res!2346766) (not e!3405808))))

(declare-fun tail!10889 (List!62768) List!62768)

(assert (=> b!5506614 (= res!2346766 (isEmpty!34422 (tail!10889 s!2326)))))

(declare-fun b!5506615 () Bool)

(declare-fun derivativeStep!4360 (Regex!15489 C!31248) Regex!15489)

(assert (=> b!5506615 (= e!3405806 (matchR!7674 (derivativeStep!4360 r!7292 (head!11794 s!2326)) (tail!10889 s!2326)))))

(declare-fun b!5506616 () Bool)

(declare-fun res!2346771 () Bool)

(declare-fun e!3405804 () Bool)

(assert (=> b!5506616 (=> res!2346771 e!3405804)))

(assert (=> b!5506616 (= res!2346771 e!3405808)))

(declare-fun res!2346769 () Bool)

(assert (=> b!5506616 (=> (not res!2346769) (not e!3405808))))

(assert (=> b!5506616 (= res!2346769 lt!2244426)))

(declare-fun b!5506617 () Bool)

(declare-fun res!2346768 () Bool)

(declare-fun e!3405802 () Bool)

(assert (=> b!5506617 (=> res!2346768 e!3405802)))

(assert (=> b!5506617 (= res!2346768 (not (isEmpty!34422 (tail!10889 s!2326))))))

(declare-fun b!5506618 () Bool)

(declare-fun res!2346772 () Bool)

(assert (=> b!5506618 (=> (not res!2346772) (not e!3405808))))

(assert (=> b!5506618 (= res!2346772 (not call!406884))))

(declare-fun b!5506619 () Bool)

(declare-fun res!2346767 () Bool)

(assert (=> b!5506619 (=> res!2346767 e!3405804)))

(assert (=> b!5506619 (= res!2346767 (not ((_ is ElementMatch!15489) r!7292)))))

(assert (=> b!5506619 (= e!3405807 e!3405804)))

(declare-fun bm!406879 () Bool)

(assert (=> bm!406879 (= call!406884 (isEmpty!34422 s!2326))))

(declare-fun b!5506620 () Bool)

(declare-fun e!3405803 () Bool)

(assert (=> b!5506620 (= e!3405803 e!3405802)))

(declare-fun res!2346765 () Bool)

(assert (=> b!5506620 (=> res!2346765 e!3405802)))

(assert (=> b!5506620 (= res!2346765 call!406884)))

(declare-fun b!5506621 () Bool)

(assert (=> b!5506621 (= e!3405802 (not (= (head!11794 s!2326) (c!961989 r!7292))))))

(declare-fun b!5506622 () Bool)

(assert (=> b!5506622 (= e!3405804 e!3405803)))

(declare-fun res!2346770 () Bool)

(assert (=> b!5506622 (=> (not res!2346770) (not e!3405803))))

(assert (=> b!5506622 (= res!2346770 (not lt!2244426))))

(assert (= (and d!1745120 c!962116) b!5506613))

(assert (= (and d!1745120 (not c!962116)) b!5506615))

(assert (= (and d!1745120 c!962118) b!5506610))

(assert (= (and d!1745120 (not c!962118)) b!5506611))

(assert (= (and b!5506611 c!962117) b!5506612))

(assert (= (and b!5506611 (not c!962117)) b!5506619))

(assert (= (and b!5506619 (not res!2346767)) b!5506616))

(assert (= (and b!5506616 res!2346769) b!5506618))

(assert (= (and b!5506618 res!2346772) b!5506614))

(assert (= (and b!5506614 res!2346766) b!5506609))

(assert (= (and b!5506616 (not res!2346771)) b!5506622))

(assert (= (and b!5506622 res!2346770) b!5506620))

(assert (= (and b!5506620 (not res!2346765)) b!5506617))

(assert (= (and b!5506617 (not res!2346768)) b!5506621))

(assert (= (or b!5506610 b!5506620 b!5506618) bm!406879))

(declare-fun m!6513046 () Bool)

(assert (=> b!5506614 m!6513046))

(assert (=> b!5506614 m!6513046))

(declare-fun m!6513048 () Bool)

(assert (=> b!5506614 m!6513048))

(declare-fun m!6513050 () Bool)

(assert (=> b!5506609 m!6513050))

(assert (=> b!5506615 m!6513050))

(assert (=> b!5506615 m!6513050))

(declare-fun m!6513052 () Bool)

(assert (=> b!5506615 m!6513052))

(assert (=> b!5506615 m!6513046))

(assert (=> b!5506615 m!6513052))

(assert (=> b!5506615 m!6513046))

(declare-fun m!6513054 () Bool)

(assert (=> b!5506615 m!6513054))

(assert (=> b!5506621 m!6513050))

(assert (=> b!5506617 m!6513046))

(assert (=> b!5506617 m!6513046))

(assert (=> b!5506617 m!6513048))

(assert (=> bm!406879 m!6513040))

(assert (=> d!1745120 m!6513040))

(assert (=> d!1745120 m!6512806))

(declare-fun m!6513056 () Bool)

(assert (=> b!5506613 m!6513056))

(assert (=> b!5506104 d!1745120))

(declare-fun d!1745122 () Bool)

(assert (=> d!1745122 (= (matchR!7674 r!7292 s!2326) (matchRSpec!2592 r!7292 s!2326))))

(declare-fun lt!2244429 () Unit!155438)

(declare-fun choose!41840 (Regex!15489 List!62768) Unit!155438)

(assert (=> d!1745122 (= lt!2244429 (choose!41840 r!7292 s!2326))))

(assert (=> d!1745122 (validRegex!7225 r!7292)))

(assert (=> d!1745122 (= (mainMatchTheorem!2592 r!7292 s!2326) lt!2244429)))

(declare-fun bs!1269855 () Bool)

(assert (= bs!1269855 d!1745122))

(assert (=> bs!1269855 m!6512782))

(assert (=> bs!1269855 m!6512780))

(declare-fun m!6513058 () Bool)

(assert (=> bs!1269855 m!6513058))

(assert (=> bs!1269855 m!6512806))

(assert (=> b!5506104 d!1745122))

(declare-fun bs!1269856 () Bool)

(declare-fun d!1745124 () Bool)

(assert (= bs!1269856 (and d!1745124 d!1745052)))

(declare-fun lambda!294911 () Int)

(assert (=> bs!1269856 (= lambda!294911 lambda!294858)))

(declare-fun bs!1269857 () Bool)

(assert (= bs!1269857 (and d!1745124 d!1745066)))

(assert (=> bs!1269857 (= lambda!294911 lambda!294864)))

(declare-fun bs!1269858 () Bool)

(assert (= bs!1269858 (and d!1745124 d!1745108)))

(assert (=> bs!1269858 (= lambda!294911 lambda!294893)))

(declare-fun bs!1269859 () Bool)

(assert (= bs!1269859 (and d!1745124 d!1745114)))

(assert (=> bs!1269859 (= lambda!294911 lambda!294902)))

(declare-fun b!5506643 () Bool)

(declare-fun e!3405826 () Bool)

(declare-fun e!3405824 () Bool)

(assert (=> b!5506643 (= e!3405826 e!3405824)))

(declare-fun c!962127 () Bool)

(assert (=> b!5506643 (= c!962127 (isEmpty!34418 (exprs!5373 (h!69091 zl!343))))))

(declare-fun b!5506644 () Bool)

(declare-fun e!3405821 () Bool)

(assert (=> b!5506644 (= e!3405824 e!3405821)))

(declare-fun c!962130 () Bool)

(assert (=> b!5506644 (= c!962130 (isEmpty!34418 (tail!10888 (exprs!5373 (h!69091 zl!343)))))))

(declare-fun b!5506645 () Bool)

(declare-fun e!3405825 () Bool)

(assert (=> b!5506645 (= e!3405825 (isEmpty!34418 (t!376007 (exprs!5373 (h!69091 zl!343)))))))

(declare-fun b!5506646 () Bool)

(declare-fun e!3405823 () Regex!15489)

(assert (=> b!5506646 (= e!3405823 EmptyExpr!15489)))

(declare-fun b!5506647 () Bool)

(assert (=> b!5506647 (= e!3405823 (Concat!24334 (h!69090 (exprs!5373 (h!69091 zl!343))) (generalisedConcat!1104 (t!376007 (exprs!5373 (h!69091 zl!343))))))))

(declare-fun b!5506648 () Bool)

(declare-fun lt!2244432 () Regex!15489)

(declare-fun isEmptyExpr!1067 (Regex!15489) Bool)

(assert (=> b!5506648 (= e!3405824 (isEmptyExpr!1067 lt!2244432))))

(declare-fun b!5506649 () Bool)

(declare-fun e!3405822 () Regex!15489)

(assert (=> b!5506649 (= e!3405822 (h!69090 (exprs!5373 (h!69091 zl!343))))))

(declare-fun b!5506650 () Bool)

(assert (=> b!5506650 (= e!3405821 (= lt!2244432 (head!11793 (exprs!5373 (h!69091 zl!343)))))))

(declare-fun b!5506651 () Bool)

(assert (=> b!5506651 (= e!3405822 e!3405823)))

(declare-fun c!962128 () Bool)

(assert (=> b!5506651 (= c!962128 ((_ is Cons!62642) (exprs!5373 (h!69091 zl!343))))))

(assert (=> d!1745124 e!3405826))

(declare-fun res!2346777 () Bool)

(assert (=> d!1745124 (=> (not res!2346777) (not e!3405826))))

(assert (=> d!1745124 (= res!2346777 (validRegex!7225 lt!2244432))))

(assert (=> d!1745124 (= lt!2244432 e!3405822)))

(declare-fun c!962129 () Bool)

(assert (=> d!1745124 (= c!962129 e!3405825)))

(declare-fun res!2346778 () Bool)

(assert (=> d!1745124 (=> (not res!2346778) (not e!3405825))))

(assert (=> d!1745124 (= res!2346778 ((_ is Cons!62642) (exprs!5373 (h!69091 zl!343))))))

(assert (=> d!1745124 (forall!14669 (exprs!5373 (h!69091 zl!343)) lambda!294911)))

(assert (=> d!1745124 (= (generalisedConcat!1104 (exprs!5373 (h!69091 zl!343))) lt!2244432)))

(declare-fun b!5506652 () Bool)

(declare-fun isConcat!590 (Regex!15489) Bool)

(assert (=> b!5506652 (= e!3405821 (isConcat!590 lt!2244432))))

(assert (= (and d!1745124 res!2346778) b!5506645))

(assert (= (and d!1745124 c!962129) b!5506649))

(assert (= (and d!1745124 (not c!962129)) b!5506651))

(assert (= (and b!5506651 c!962128) b!5506647))

(assert (= (and b!5506651 (not c!962128)) b!5506646))

(assert (= (and d!1745124 res!2346777) b!5506643))

(assert (= (and b!5506643 c!962127) b!5506648))

(assert (= (and b!5506643 (not c!962127)) b!5506644))

(assert (= (and b!5506644 c!962130) b!5506650))

(assert (= (and b!5506644 (not c!962130)) b!5506652))

(declare-fun m!6513060 () Bool)

(assert (=> b!5506650 m!6513060))

(declare-fun m!6513062 () Bool)

(assert (=> d!1745124 m!6513062))

(declare-fun m!6513064 () Bool)

(assert (=> d!1745124 m!6513064))

(declare-fun m!6513066 () Bool)

(assert (=> b!5506652 m!6513066))

(declare-fun m!6513068 () Bool)

(assert (=> b!5506644 m!6513068))

(assert (=> b!5506644 m!6513068))

(declare-fun m!6513070 () Bool)

(assert (=> b!5506644 m!6513070))

(assert (=> b!5506645 m!6512776))

(declare-fun m!6513072 () Bool)

(assert (=> b!5506643 m!6513072))

(declare-fun m!6513074 () Bool)

(assert (=> b!5506648 m!6513074))

(declare-fun m!6513076 () Bool)

(assert (=> b!5506647 m!6513076))

(assert (=> b!5506092 d!1745124))

(declare-fun d!1745126 () Bool)

(declare-fun lt!2244435 () Regex!15489)

(assert (=> d!1745126 (validRegex!7225 lt!2244435)))

(assert (=> d!1745126 (= lt!2244435 (generalisedUnion!1352 (unfocusZipperList!917 zl!343)))))

(assert (=> d!1745126 (= (unfocusZipper!1231 zl!343) lt!2244435)))

(declare-fun bs!1269860 () Bool)

(assert (= bs!1269860 d!1745126))

(declare-fun m!6513078 () Bool)

(assert (=> bs!1269860 m!6513078))

(assert (=> bs!1269860 m!6512786))

(assert (=> bs!1269860 m!6512786))

(assert (=> bs!1269860 m!6512788))

(assert (=> b!5506101 d!1745126))

(declare-fun b!5506663 () Bool)

(declare-fun call!406887 () (InoxSet Context!9746))

(declare-fun e!3405834 () (InoxSet Context!9746))

(assert (=> b!5506663 (= e!3405834 ((_ map or) call!406887 (derivationStepZipperUp!757 (Context!9747 (t!376007 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))) (h!69092 s!2326))))))

(declare-fun b!5506664 () Bool)

(declare-fun e!3405833 () (InoxSet Context!9746))

(assert (=> b!5506664 (= e!3405833 call!406887)))

(declare-fun d!1745128 () Bool)

(declare-fun c!962136 () Bool)

(declare-fun e!3405835 () Bool)

(assert (=> d!1745128 (= c!962136 e!3405835)))

(declare-fun res!2346781 () Bool)

(assert (=> d!1745128 (=> (not res!2346781) (not e!3405835))))

(assert (=> d!1745128 (= res!2346781 ((_ is Cons!62642) (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642)))))))

(assert (=> d!1745128 (= (derivationStepZipperUp!757 (Context!9747 (Cons!62642 r!7292 Nil!62642)) (h!69092 s!2326)) e!3405834)))

(declare-fun bm!406882 () Bool)

(assert (=> bm!406882 (= call!406887 (derivationStepZipperDown!831 (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642)))) (Context!9747 (t!376007 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))) (h!69092 s!2326)))))

(declare-fun b!5506665 () Bool)

(assert (=> b!5506665 (= e!3405835 (nullable!5523 (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))))))

(declare-fun b!5506666 () Bool)

(assert (=> b!5506666 (= e!3405834 e!3405833)))

(declare-fun c!962135 () Bool)

(assert (=> b!5506666 (= c!962135 ((_ is Cons!62642) (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642)))))))

(declare-fun b!5506667 () Bool)

(assert (=> b!5506667 (= e!3405833 ((as const (Array Context!9746 Bool)) false))))

(assert (= (and d!1745128 res!2346781) b!5506665))

(assert (= (and d!1745128 c!962136) b!5506663))

(assert (= (and d!1745128 (not c!962136)) b!5506666))

(assert (= (and b!5506666 c!962135) b!5506664))

(assert (= (and b!5506666 (not c!962135)) b!5506667))

(assert (= (or b!5506663 b!5506664) bm!406882))

(declare-fun m!6513080 () Bool)

(assert (=> b!5506663 m!6513080))

(declare-fun m!6513082 () Bool)

(assert (=> bm!406882 m!6513082))

(declare-fun m!6513084 () Bool)

(assert (=> b!5506665 m!6513084))

(assert (=> b!5506100 d!1745128))

(declare-fun b!5506690 () Bool)

(declare-fun c!962149 () Bool)

(declare-fun e!3405849 () Bool)

(assert (=> b!5506690 (= c!962149 e!3405849)))

(declare-fun res!2346784 () Bool)

(assert (=> b!5506690 (=> (not res!2346784) (not e!3405849))))

(assert (=> b!5506690 (= res!2346784 ((_ is Concat!24334) r!7292))))

(declare-fun e!3405852 () (InoxSet Context!9746))

(declare-fun e!3405853 () (InoxSet Context!9746))

(assert (=> b!5506690 (= e!3405852 e!3405853)))

(declare-fun b!5506692 () Bool)

(declare-fun call!406902 () (InoxSet Context!9746))

(declare-fun call!406900 () (InoxSet Context!9746))

(assert (=> b!5506692 (= e!3405853 ((_ map or) call!406902 call!406900))))

(declare-fun bm!406895 () Bool)

(declare-fun c!962147 () Bool)

(declare-fun call!406905 () List!62766)

(declare-fun $colon$colon!1574 (List!62766 Regex!15489) List!62766)

(assert (=> bm!406895 (= call!406905 ($colon$colon!1574 (exprs!5373 (Context!9747 Nil!62642)) (ite (or c!962149 c!962147) (regTwo!31490 r!7292) r!7292)))))

(declare-fun b!5506693 () Bool)

(assert (=> b!5506693 (= e!3405849 (nullable!5523 (regOne!31490 r!7292)))))

(declare-fun bm!406896 () Bool)

(declare-fun call!406901 () (InoxSet Context!9746))

(assert (=> bm!406896 (= call!406901 call!406900)))

(declare-fun b!5506694 () Bool)

(declare-fun e!3405851 () (InoxSet Context!9746))

(assert (=> b!5506694 (= e!3405851 (store ((as const (Array Context!9746 Bool)) false) (Context!9747 Nil!62642) true))))

(declare-fun b!5506695 () Bool)

(declare-fun c!962150 () Bool)

(assert (=> b!5506695 (= c!962150 ((_ is Star!15489) r!7292))))

(declare-fun e!3405850 () (InoxSet Context!9746))

(declare-fun e!3405848 () (InoxSet Context!9746))

(assert (=> b!5506695 (= e!3405850 e!3405848)))

(declare-fun b!5506696 () Bool)

(assert (=> b!5506696 (= e!3405850 call!406901)))

(declare-fun b!5506697 () Bool)

(assert (=> b!5506697 (= e!3405848 call!406901)))

(declare-fun bm!406897 () Bool)

(declare-fun call!406904 () (InoxSet Context!9746))

(assert (=> bm!406897 (= call!406900 call!406904)))

(declare-fun b!5506698 () Bool)

(assert (=> b!5506698 (= e!3405851 e!3405852)))

(declare-fun c!962151 () Bool)

(assert (=> b!5506698 (= c!962151 ((_ is Union!15489) r!7292))))

(declare-fun bm!406898 () Bool)

(declare-fun call!406903 () List!62766)

(assert (=> bm!406898 (= call!406904 (derivationStepZipperDown!831 (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292)))) (ite (or c!962151 c!962149) (Context!9747 Nil!62642) (Context!9747 call!406903)) (h!69092 s!2326)))))

(declare-fun b!5506691 () Bool)

(assert (=> b!5506691 (= e!3405852 ((_ map or) call!406902 call!406904))))

(declare-fun d!1745130 () Bool)

(declare-fun c!962148 () Bool)

(assert (=> d!1745130 (= c!962148 (and ((_ is ElementMatch!15489) r!7292) (= (c!961989 r!7292) (h!69092 s!2326))))))

(assert (=> d!1745130 (= (derivationStepZipperDown!831 r!7292 (Context!9747 Nil!62642) (h!69092 s!2326)) e!3405851)))

(declare-fun bm!406899 () Bool)

(assert (=> bm!406899 (= call!406903 call!406905)))

(declare-fun b!5506699 () Bool)

(assert (=> b!5506699 (= e!3405853 e!3405850)))

(assert (=> b!5506699 (= c!962147 ((_ is Concat!24334) r!7292))))

(declare-fun bm!406900 () Bool)

(assert (=> bm!406900 (= call!406902 (derivationStepZipperDown!831 (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292)) (ite c!962151 (Context!9747 Nil!62642) (Context!9747 call!406905)) (h!69092 s!2326)))))

(declare-fun b!5506700 () Bool)

(assert (=> b!5506700 (= e!3405848 ((as const (Array Context!9746 Bool)) false))))

(assert (= (and d!1745130 c!962148) b!5506694))

(assert (= (and d!1745130 (not c!962148)) b!5506698))

(assert (= (and b!5506698 c!962151) b!5506691))

(assert (= (and b!5506698 (not c!962151)) b!5506690))

(assert (= (and b!5506690 res!2346784) b!5506693))

(assert (= (and b!5506690 c!962149) b!5506692))

(assert (= (and b!5506690 (not c!962149)) b!5506699))

(assert (= (and b!5506699 c!962147) b!5506696))

(assert (= (and b!5506699 (not c!962147)) b!5506695))

(assert (= (and b!5506695 c!962150) b!5506697))

(assert (= (and b!5506695 (not c!962150)) b!5506700))

(assert (= (or b!5506696 b!5506697) bm!406899))

(assert (= (or b!5506696 b!5506697) bm!406896))

(assert (= (or b!5506692 bm!406899) bm!406895))

(assert (= (or b!5506692 bm!406896) bm!406897))

(assert (= (or b!5506691 bm!406897) bm!406898))

(assert (= (or b!5506691 b!5506692) bm!406900))

(declare-fun m!6513086 () Bool)

(assert (=> bm!406898 m!6513086))

(declare-fun m!6513088 () Bool)

(assert (=> b!5506694 m!6513088))

(declare-fun m!6513090 () Bool)

(assert (=> bm!406900 m!6513090))

(declare-fun m!6513092 () Bool)

(assert (=> bm!406895 m!6513092))

(declare-fun m!6513094 () Bool)

(assert (=> b!5506693 m!6513094))

(assert (=> b!5506100 d!1745130))

(declare-fun d!1745132 () Bool)

(assert (=> d!1745132 (= (isEmpty!34418 (t!376007 (exprs!5373 (h!69091 zl!343)))) ((_ is Nil!62642) (t!376007 (exprs!5373 (h!69091 zl!343)))))))

(assert (=> b!5506099 d!1745132))

(declare-fun d!1745134 () Bool)

(assert (=> d!1745134 (= (isEmpty!34417 (t!376008 zl!343)) ((_ is Nil!62643) (t!376008 zl!343)))))

(assert (=> b!5506091 d!1745134))

(declare-fun b!5506705 () Bool)

(declare-fun e!3405856 () Bool)

(declare-fun tp!1515104 () Bool)

(assert (=> b!5506705 (= e!3405856 (and tp_is_empty!40231 tp!1515104))))

(assert (=> b!5506102 (= tp!1515040 e!3405856)))

(assert (= (and b!5506102 ((_ is Cons!62644) (t!376009 s!2326))) b!5506705))

(declare-fun condSetEmpty!36547 () Bool)

(assert (=> setNonEmpty!36541 (= condSetEmpty!36547 (= setRest!36541 ((as const (Array Context!9746 Bool)) false)))))

(declare-fun setRes!36547 () Bool)

(assert (=> setNonEmpty!36541 (= tp!1515039 setRes!36547)))

(declare-fun setIsEmpty!36547 () Bool)

(assert (=> setIsEmpty!36547 setRes!36547))

(declare-fun setNonEmpty!36547 () Bool)

(declare-fun e!3405859 () Bool)

(declare-fun tp!1515109 () Bool)

(declare-fun setElem!36547 () Context!9746)

(assert (=> setNonEmpty!36547 (= setRes!36547 (and tp!1515109 (inv!81969 setElem!36547) e!3405859))))

(declare-fun setRest!36547 () (InoxSet Context!9746))

(assert (=> setNonEmpty!36547 (= setRest!36541 ((_ map or) (store ((as const (Array Context!9746 Bool)) false) setElem!36547 true) setRest!36547))))

(declare-fun b!5506710 () Bool)

(declare-fun tp!1515110 () Bool)

(assert (=> b!5506710 (= e!3405859 tp!1515110)))

(assert (= (and setNonEmpty!36541 condSetEmpty!36547) setIsEmpty!36547))

(assert (= (and setNonEmpty!36541 (not condSetEmpty!36547)) setNonEmpty!36547))

(assert (= setNonEmpty!36547 b!5506710))

(declare-fun m!6513096 () Bool)

(assert (=> setNonEmpty!36547 m!6513096))

(declare-fun e!3405862 () Bool)

(assert (=> b!5506093 (= tp!1515037 e!3405862)))

(declare-fun b!5506721 () Bool)

(assert (=> b!5506721 (= e!3405862 tp_is_empty!40231)))

(declare-fun b!5506722 () Bool)

(declare-fun tp!1515122 () Bool)

(declare-fun tp!1515125 () Bool)

(assert (=> b!5506722 (= e!3405862 (and tp!1515122 tp!1515125))))

(declare-fun b!5506724 () Bool)

(declare-fun tp!1515123 () Bool)

(declare-fun tp!1515124 () Bool)

(assert (=> b!5506724 (= e!3405862 (and tp!1515123 tp!1515124))))

(declare-fun b!5506723 () Bool)

(declare-fun tp!1515121 () Bool)

(assert (=> b!5506723 (= e!3405862 tp!1515121)))

(assert (= (and b!5506093 ((_ is ElementMatch!15489) (reg!15818 r!7292))) b!5506721))

(assert (= (and b!5506093 ((_ is Concat!24334) (reg!15818 r!7292))) b!5506722))

(assert (= (and b!5506093 ((_ is Star!15489) (reg!15818 r!7292))) b!5506723))

(assert (= (and b!5506093 ((_ is Union!15489) (reg!15818 r!7292))) b!5506724))

(declare-fun b!5506732 () Bool)

(declare-fun e!3405868 () Bool)

(declare-fun tp!1515130 () Bool)

(assert (=> b!5506732 (= e!3405868 tp!1515130)))

(declare-fun tp!1515131 () Bool)

(declare-fun b!5506731 () Bool)

(declare-fun e!3405867 () Bool)

(assert (=> b!5506731 (= e!3405867 (and (inv!81969 (h!69091 (t!376008 zl!343))) e!3405868 tp!1515131))))

(assert (=> b!5506095 (= tp!1515036 e!3405867)))

(assert (= b!5506731 b!5506732))

(assert (= (and b!5506095 ((_ is Cons!62643) (t!376008 zl!343))) b!5506731))

(declare-fun m!6513098 () Bool)

(assert (=> b!5506731 m!6513098))

(declare-fun e!3405869 () Bool)

(assert (=> b!5506094 (= tp!1515038 e!3405869)))

(declare-fun b!5506733 () Bool)

(assert (=> b!5506733 (= e!3405869 tp_is_empty!40231)))

(declare-fun b!5506734 () Bool)

(declare-fun tp!1515133 () Bool)

(declare-fun tp!1515136 () Bool)

(assert (=> b!5506734 (= e!3405869 (and tp!1515133 tp!1515136))))

(declare-fun b!5506736 () Bool)

(declare-fun tp!1515134 () Bool)

(declare-fun tp!1515135 () Bool)

(assert (=> b!5506736 (= e!3405869 (and tp!1515134 tp!1515135))))

(declare-fun b!5506735 () Bool)

(declare-fun tp!1515132 () Bool)

(assert (=> b!5506735 (= e!3405869 tp!1515132)))

(assert (= (and b!5506094 ((_ is ElementMatch!15489) (regOne!31490 r!7292))) b!5506733))

(assert (= (and b!5506094 ((_ is Concat!24334) (regOne!31490 r!7292))) b!5506734))

(assert (= (and b!5506094 ((_ is Star!15489) (regOne!31490 r!7292))) b!5506735))

(assert (= (and b!5506094 ((_ is Union!15489) (regOne!31490 r!7292))) b!5506736))

(declare-fun e!3405870 () Bool)

(assert (=> b!5506094 (= tp!1515041 e!3405870)))

(declare-fun b!5506737 () Bool)

(assert (=> b!5506737 (= e!3405870 tp_is_empty!40231)))

(declare-fun b!5506738 () Bool)

(declare-fun tp!1515138 () Bool)

(declare-fun tp!1515141 () Bool)

(assert (=> b!5506738 (= e!3405870 (and tp!1515138 tp!1515141))))

(declare-fun b!5506740 () Bool)

(declare-fun tp!1515139 () Bool)

(declare-fun tp!1515140 () Bool)

(assert (=> b!5506740 (= e!3405870 (and tp!1515139 tp!1515140))))

(declare-fun b!5506739 () Bool)

(declare-fun tp!1515137 () Bool)

(assert (=> b!5506739 (= e!3405870 tp!1515137)))

(assert (= (and b!5506094 ((_ is ElementMatch!15489) (regTwo!31490 r!7292))) b!5506737))

(assert (= (and b!5506094 ((_ is Concat!24334) (regTwo!31490 r!7292))) b!5506738))

(assert (= (and b!5506094 ((_ is Star!15489) (regTwo!31490 r!7292))) b!5506739))

(assert (= (and b!5506094 ((_ is Union!15489) (regTwo!31490 r!7292))) b!5506740))

(declare-fun b!5506745 () Bool)

(declare-fun e!3405873 () Bool)

(declare-fun tp!1515146 () Bool)

(declare-fun tp!1515147 () Bool)

(assert (=> b!5506745 (= e!3405873 (and tp!1515146 tp!1515147))))

(assert (=> b!5506089 (= tp!1515043 e!3405873)))

(assert (= (and b!5506089 ((_ is Cons!62642) (exprs!5373 setElem!36541))) b!5506745))

(declare-fun e!3405874 () Bool)

(assert (=> b!5506096 (= tp!1515035 e!3405874)))

(declare-fun b!5506746 () Bool)

(assert (=> b!5506746 (= e!3405874 tp_is_empty!40231)))

(declare-fun b!5506747 () Bool)

(declare-fun tp!1515149 () Bool)

(declare-fun tp!1515152 () Bool)

(assert (=> b!5506747 (= e!3405874 (and tp!1515149 tp!1515152))))

(declare-fun b!5506749 () Bool)

(declare-fun tp!1515150 () Bool)

(declare-fun tp!1515151 () Bool)

(assert (=> b!5506749 (= e!3405874 (and tp!1515150 tp!1515151))))

(declare-fun b!5506748 () Bool)

(declare-fun tp!1515148 () Bool)

(assert (=> b!5506748 (= e!3405874 tp!1515148)))

(assert (= (and b!5506096 ((_ is ElementMatch!15489) (regOne!31491 r!7292))) b!5506746))

(assert (= (and b!5506096 ((_ is Concat!24334) (regOne!31491 r!7292))) b!5506747))

(assert (= (and b!5506096 ((_ is Star!15489) (regOne!31491 r!7292))) b!5506748))

(assert (= (and b!5506096 ((_ is Union!15489) (regOne!31491 r!7292))) b!5506749))

(declare-fun e!3405875 () Bool)

(assert (=> b!5506096 (= tp!1515042 e!3405875)))

(declare-fun b!5506750 () Bool)

(assert (=> b!5506750 (= e!3405875 tp_is_empty!40231)))

(declare-fun b!5506751 () Bool)

(declare-fun tp!1515154 () Bool)

(declare-fun tp!1515157 () Bool)

(assert (=> b!5506751 (= e!3405875 (and tp!1515154 tp!1515157))))

(declare-fun b!5506753 () Bool)

(declare-fun tp!1515155 () Bool)

(declare-fun tp!1515156 () Bool)

(assert (=> b!5506753 (= e!3405875 (and tp!1515155 tp!1515156))))

(declare-fun b!5506752 () Bool)

(declare-fun tp!1515153 () Bool)

(assert (=> b!5506752 (= e!3405875 tp!1515153)))

(assert (= (and b!5506096 ((_ is ElementMatch!15489) (regTwo!31491 r!7292))) b!5506750))

(assert (= (and b!5506096 ((_ is Concat!24334) (regTwo!31491 r!7292))) b!5506751))

(assert (= (and b!5506096 ((_ is Star!15489) (regTwo!31491 r!7292))) b!5506752))

(assert (= (and b!5506096 ((_ is Union!15489) (regTwo!31491 r!7292))) b!5506753))

(declare-fun b!5506754 () Bool)

(declare-fun e!3405876 () Bool)

(declare-fun tp!1515158 () Bool)

(declare-fun tp!1515159 () Bool)

(assert (=> b!5506754 (= e!3405876 (and tp!1515158 tp!1515159))))

(assert (=> b!5506090 (= tp!1515034 e!3405876)))

(assert (= (and b!5506090 ((_ is Cons!62642) (exprs!5373 (h!69091 zl!343)))) b!5506754))

(check-sat (not b!5506739) (not bm!406829) (not bm!406900) (not b!5506736) (not d!1745068) (not b!5506277) (not b!5506647) (not d!1745114) (not bm!406898) (not b!5506663) (not b!5506754) (not d!1745126) (not b!5506740) (not b!5506482) (not b!5506615) (not b!5506648) (not b!5506748) (not b!5506751) (not b!5506705) (not bm!406882) (not d!1745092) (not b!5506617) (not b!5506580) (not bm!406875) (not bm!406879) (not b!5506461) (not b!5506749) (not d!1745084) (not d!1745120) (not b!5506652) (not b!5506735) (not d!1745124) (not b!5506732) (not b!5506271) (not b!5506466) (not b!5506469) (not b!5506722) (not b!5506468) (not d!1745122) tp_is_empty!40231 (not b!5506609) (not b!5506745) (not b!5506724) (not d!1745066) (not d!1745106) (not b!5506467) (not b!5506643) (not b!5506738) (not b!5506734) (not d!1745052) (not b!5506572) (not d!1745070) (not b!5506272) (not b!5506644) (not b!5506460) (not b!5506134) (not d!1745082) (not b!5506747) (not b!5506650) (not b!5506113) (not b!5506278) (not b!5506275) (not b!5506710) (not b!5506276) (not b!5506753) (not b!5506723) (not b!5506645) (not b!5506614) (not b!5506693) (not b!5506621) (not b!5506463) (not d!1745108) (not b!5506731) (not bm!406876) (not b!5506752) (not bm!406895) (not bm!406830) (not b!5506613) (not b!5506665) (not d!1745054) (not setNonEmpty!36547))
(check-sat)
(get-model)

(declare-fun d!1745136 () Bool)

(assert (=> d!1745136 (= (isEmpty!34422 (tail!10889 s!2326)) ((_ is Nil!62644) (tail!10889 s!2326)))))

(assert (=> b!5506617 d!1745136))

(declare-fun d!1745138 () Bool)

(assert (=> d!1745138 (= (tail!10889 s!2326) (t!376009 s!2326))))

(assert (=> b!5506617 d!1745138))

(declare-fun bs!1269861 () Bool)

(declare-fun b!5506764 () Bool)

(assert (= bs!1269861 (and b!5506764 d!1745084)))

(declare-fun lambda!294912 () Int)

(assert (=> bs!1269861 (not (= lambda!294912 lambda!294880))))

(declare-fun bs!1269862 () Bool)

(assert (= bs!1269862 (and b!5506764 b!5506579)))

(assert (=> bs!1269862 (= (and (= (reg!15818 (regTwo!31491 r!7292)) (reg!15818 r!7292)) (= (regTwo!31491 r!7292) r!7292)) (= lambda!294912 lambda!294907))))

(declare-fun bs!1269863 () Bool)

(assert (= bs!1269863 (and b!5506764 d!1745092)))

(assert (=> bs!1269863 (not (= lambda!294912 lambda!294889))))

(declare-fun bs!1269864 () Bool)

(assert (= bs!1269864 (and b!5506764 b!5506103)))

(assert (=> bs!1269864 (not (= lambda!294912 lambda!294854))))

(assert (=> bs!1269864 (not (= lambda!294912 lambda!294855))))

(declare-fun bs!1269865 () Bool)

(assert (= bs!1269865 (and b!5506764 b!5506577)))

(assert (=> bs!1269865 (not (= lambda!294912 lambda!294908))))

(assert (=> bs!1269863 (not (= lambda!294912 lambda!294886))))

(assert (=> b!5506764 true))

(assert (=> b!5506764 true))

(declare-fun bs!1269866 () Bool)

(declare-fun b!5506762 () Bool)

(assert (= bs!1269866 (and b!5506762 d!1745084)))

(declare-fun lambda!294913 () Int)

(assert (=> bs!1269866 (not (= lambda!294913 lambda!294880))))

(declare-fun bs!1269867 () Bool)

(assert (= bs!1269867 (and b!5506762 b!5506764)))

(assert (=> bs!1269867 (not (= lambda!294913 lambda!294912))))

(declare-fun bs!1269868 () Bool)

(assert (= bs!1269868 (and b!5506762 b!5506579)))

(assert (=> bs!1269868 (not (= lambda!294913 lambda!294907))))

(declare-fun bs!1269869 () Bool)

(assert (= bs!1269869 (and b!5506762 d!1745092)))

(assert (=> bs!1269869 (= (and (= (regOne!31490 (regTwo!31491 r!7292)) (regOne!31490 r!7292)) (= (regTwo!31490 (regTwo!31491 r!7292)) (regTwo!31490 r!7292))) (= lambda!294913 lambda!294889))))

(declare-fun bs!1269870 () Bool)

(assert (= bs!1269870 (and b!5506762 b!5506103)))

(assert (=> bs!1269870 (not (= lambda!294913 lambda!294854))))

(assert (=> bs!1269870 (= (and (= (regOne!31490 (regTwo!31491 r!7292)) (regOne!31490 r!7292)) (= (regTwo!31490 (regTwo!31491 r!7292)) (regTwo!31490 r!7292))) (= lambda!294913 lambda!294855))))

(declare-fun bs!1269871 () Bool)

(assert (= bs!1269871 (and b!5506762 b!5506577)))

(assert (=> bs!1269871 (= (and (= (regOne!31490 (regTwo!31491 r!7292)) (regOne!31490 r!7292)) (= (regTwo!31490 (regTwo!31491 r!7292)) (regTwo!31490 r!7292))) (= lambda!294913 lambda!294908))))

(assert (=> bs!1269869 (not (= lambda!294913 lambda!294886))))

(assert (=> b!5506762 true))

(assert (=> b!5506762 true))

(declare-fun b!5506755 () Bool)

(declare-fun c!962155 () Bool)

(assert (=> b!5506755 (= c!962155 ((_ is ElementMatch!15489) (regTwo!31491 r!7292)))))

(declare-fun e!3405880 () Bool)

(declare-fun e!3405879 () Bool)

(assert (=> b!5506755 (= e!3405880 e!3405879)))

(declare-fun b!5506757 () Bool)

(declare-fun e!3405883 () Bool)

(declare-fun e!3405881 () Bool)

(assert (=> b!5506757 (= e!3405883 e!3405881)))

(declare-fun res!2346787 () Bool)

(assert (=> b!5506757 (= res!2346787 (matchRSpec!2592 (regOne!31491 (regTwo!31491 r!7292)) s!2326))))

(assert (=> b!5506757 (=> res!2346787 e!3405881)))

(declare-fun b!5506758 () Bool)

(declare-fun c!962152 () Bool)

(assert (=> b!5506758 (= c!962152 ((_ is Union!15489) (regTwo!31491 r!7292)))))

(assert (=> b!5506758 (= e!3405879 e!3405883)))

(declare-fun b!5506759 () Bool)

(declare-fun e!3405878 () Bool)

(declare-fun call!406906 () Bool)

(assert (=> b!5506759 (= e!3405878 call!406906)))

(declare-fun bm!406901 () Bool)

(assert (=> bm!406901 (= call!406906 (isEmpty!34422 s!2326))))

(declare-fun b!5506760 () Bool)

(declare-fun e!3405882 () Bool)

(assert (=> b!5506760 (= e!3405883 e!3405882)))

(declare-fun c!962154 () Bool)

(assert (=> b!5506760 (= c!962154 ((_ is Star!15489) (regTwo!31491 r!7292)))))

(declare-fun b!5506761 () Bool)

(assert (=> b!5506761 (= e!3405878 e!3405880)))

(declare-fun res!2346785 () Bool)

(assert (=> b!5506761 (= res!2346785 (not ((_ is EmptyLang!15489) (regTwo!31491 r!7292))))))

(assert (=> b!5506761 (=> (not res!2346785) (not e!3405880))))

(declare-fun call!406907 () Bool)

(assert (=> b!5506762 (= e!3405882 call!406907)))

(declare-fun d!1745140 () Bool)

(declare-fun c!962153 () Bool)

(assert (=> d!1745140 (= c!962153 ((_ is EmptyExpr!15489) (regTwo!31491 r!7292)))))

(assert (=> d!1745140 (= (matchRSpec!2592 (regTwo!31491 r!7292) s!2326) e!3405878)))

(declare-fun b!5506756 () Bool)

(declare-fun res!2346786 () Bool)

(declare-fun e!3405877 () Bool)

(assert (=> b!5506756 (=> res!2346786 e!3405877)))

(assert (=> b!5506756 (= res!2346786 call!406906)))

(assert (=> b!5506756 (= e!3405882 e!3405877)))

(declare-fun b!5506763 () Bool)

(assert (=> b!5506763 (= e!3405879 (= s!2326 (Cons!62644 (c!961989 (regTwo!31491 r!7292)) Nil!62644)))))

(assert (=> b!5506764 (= e!3405877 call!406907)))

(declare-fun bm!406902 () Bool)

(assert (=> bm!406902 (= call!406907 (Exists!2589 (ite c!962154 lambda!294912 lambda!294913)))))

(declare-fun b!5506765 () Bool)

(assert (=> b!5506765 (= e!3405881 (matchRSpec!2592 (regTwo!31491 (regTwo!31491 r!7292)) s!2326))))

(assert (= (and d!1745140 c!962153) b!5506759))

(assert (= (and d!1745140 (not c!962153)) b!5506761))

(assert (= (and b!5506761 res!2346785) b!5506755))

(assert (= (and b!5506755 c!962155) b!5506763))

(assert (= (and b!5506755 (not c!962155)) b!5506758))

(assert (= (and b!5506758 c!962152) b!5506757))

(assert (= (and b!5506758 (not c!962152)) b!5506760))

(assert (= (and b!5506757 (not res!2346787)) b!5506765))

(assert (= (and b!5506760 c!962154) b!5506756))

(assert (= (and b!5506760 (not c!962154)) b!5506762))

(assert (= (and b!5506756 (not res!2346786)) b!5506764))

(assert (= (or b!5506764 b!5506762) bm!406902))

(assert (= (or b!5506759 b!5506756) bm!406901))

(declare-fun m!6513100 () Bool)

(assert (=> b!5506757 m!6513100))

(assert (=> bm!406901 m!6513040))

(declare-fun m!6513102 () Bool)

(assert (=> bm!406902 m!6513102))

(declare-fun m!6513104 () Bool)

(assert (=> b!5506765 m!6513104))

(assert (=> b!5506580 d!1745140))

(declare-fun bs!1269872 () Bool)

(declare-fun d!1745142 () Bool)

(assert (= bs!1269872 (and d!1745142 d!1745066)))

(declare-fun lambda!294914 () Int)

(assert (=> bs!1269872 (= lambda!294914 lambda!294864)))

(declare-fun bs!1269873 () Bool)

(assert (= bs!1269873 (and d!1745142 d!1745124)))

(assert (=> bs!1269873 (= lambda!294914 lambda!294911)))

(declare-fun bs!1269874 () Bool)

(assert (= bs!1269874 (and d!1745142 d!1745114)))

(assert (=> bs!1269874 (= lambda!294914 lambda!294902)))

(declare-fun bs!1269875 () Bool)

(assert (= bs!1269875 (and d!1745142 d!1745108)))

(assert (=> bs!1269875 (= lambda!294914 lambda!294893)))

(declare-fun bs!1269876 () Bool)

(assert (= bs!1269876 (and d!1745142 d!1745052)))

(assert (=> bs!1269876 (= lambda!294914 lambda!294858)))

(assert (=> d!1745142 (= (inv!81969 setElem!36547) (forall!14669 (exprs!5373 setElem!36547) lambda!294914))))

(declare-fun bs!1269877 () Bool)

(assert (= bs!1269877 d!1745142))

(declare-fun m!6513106 () Bool)

(assert (=> bs!1269877 m!6513106))

(assert (=> setNonEmpty!36547 d!1745142))

(declare-fun bs!1269878 () Bool)

(declare-fun d!1745144 () Bool)

(assert (= bs!1269878 (and d!1745144 d!1745066)))

(declare-fun lambda!294915 () Int)

(assert (=> bs!1269878 (= lambda!294915 lambda!294864)))

(declare-fun bs!1269879 () Bool)

(assert (= bs!1269879 (and d!1745144 d!1745124)))

(assert (=> bs!1269879 (= lambda!294915 lambda!294911)))

(declare-fun bs!1269880 () Bool)

(assert (= bs!1269880 (and d!1745144 d!1745108)))

(assert (=> bs!1269880 (= lambda!294915 lambda!294893)))

(declare-fun bs!1269881 () Bool)

(assert (= bs!1269881 (and d!1745144 d!1745052)))

(assert (=> bs!1269881 (= lambda!294915 lambda!294858)))

(declare-fun bs!1269882 () Bool)

(assert (= bs!1269882 (and d!1745144 d!1745142)))

(assert (=> bs!1269882 (= lambda!294915 lambda!294914)))

(declare-fun bs!1269883 () Bool)

(assert (= bs!1269883 (and d!1745144 d!1745114)))

(assert (=> bs!1269883 (= lambda!294915 lambda!294902)))

(declare-fun b!5506766 () Bool)

(declare-fun e!3405889 () Bool)

(declare-fun e!3405887 () Bool)

(assert (=> b!5506766 (= e!3405889 e!3405887)))

(declare-fun c!962156 () Bool)

(assert (=> b!5506766 (= c!962156 (isEmpty!34418 (t!376007 (exprs!5373 (h!69091 zl!343)))))))

(declare-fun b!5506767 () Bool)

(declare-fun e!3405884 () Bool)

(assert (=> b!5506767 (= e!3405887 e!3405884)))

(declare-fun c!962159 () Bool)

(assert (=> b!5506767 (= c!962159 (isEmpty!34418 (tail!10888 (t!376007 (exprs!5373 (h!69091 zl!343))))))))

(declare-fun b!5506768 () Bool)

(declare-fun e!3405888 () Bool)

(assert (=> b!5506768 (= e!3405888 (isEmpty!34418 (t!376007 (t!376007 (exprs!5373 (h!69091 zl!343))))))))

(declare-fun b!5506769 () Bool)

(declare-fun e!3405886 () Regex!15489)

(assert (=> b!5506769 (= e!3405886 EmptyExpr!15489)))

(declare-fun b!5506770 () Bool)

(assert (=> b!5506770 (= e!3405886 (Concat!24334 (h!69090 (t!376007 (exprs!5373 (h!69091 zl!343)))) (generalisedConcat!1104 (t!376007 (t!376007 (exprs!5373 (h!69091 zl!343)))))))))

(declare-fun b!5506771 () Bool)

(declare-fun lt!2244436 () Regex!15489)

(assert (=> b!5506771 (= e!3405887 (isEmptyExpr!1067 lt!2244436))))

(declare-fun b!5506772 () Bool)

(declare-fun e!3405885 () Regex!15489)

(assert (=> b!5506772 (= e!3405885 (h!69090 (t!376007 (exprs!5373 (h!69091 zl!343)))))))

(declare-fun b!5506773 () Bool)

(assert (=> b!5506773 (= e!3405884 (= lt!2244436 (head!11793 (t!376007 (exprs!5373 (h!69091 zl!343))))))))

(declare-fun b!5506774 () Bool)

(assert (=> b!5506774 (= e!3405885 e!3405886)))

(declare-fun c!962157 () Bool)

(assert (=> b!5506774 (= c!962157 ((_ is Cons!62642) (t!376007 (exprs!5373 (h!69091 zl!343)))))))

(assert (=> d!1745144 e!3405889))

(declare-fun res!2346788 () Bool)

(assert (=> d!1745144 (=> (not res!2346788) (not e!3405889))))

(assert (=> d!1745144 (= res!2346788 (validRegex!7225 lt!2244436))))

(assert (=> d!1745144 (= lt!2244436 e!3405885)))

(declare-fun c!962158 () Bool)

(assert (=> d!1745144 (= c!962158 e!3405888)))

(declare-fun res!2346789 () Bool)

(assert (=> d!1745144 (=> (not res!2346789) (not e!3405888))))

(assert (=> d!1745144 (= res!2346789 ((_ is Cons!62642) (t!376007 (exprs!5373 (h!69091 zl!343)))))))

(assert (=> d!1745144 (forall!14669 (t!376007 (exprs!5373 (h!69091 zl!343))) lambda!294915)))

(assert (=> d!1745144 (= (generalisedConcat!1104 (t!376007 (exprs!5373 (h!69091 zl!343)))) lt!2244436)))

(declare-fun b!5506775 () Bool)

(assert (=> b!5506775 (= e!3405884 (isConcat!590 lt!2244436))))

(assert (= (and d!1745144 res!2346789) b!5506768))

(assert (= (and d!1745144 c!962158) b!5506772))

(assert (= (and d!1745144 (not c!962158)) b!5506774))

(assert (= (and b!5506774 c!962157) b!5506770))

(assert (= (and b!5506774 (not c!962157)) b!5506769))

(assert (= (and d!1745144 res!2346788) b!5506766))

(assert (= (and b!5506766 c!962156) b!5506771))

(assert (= (and b!5506766 (not c!962156)) b!5506767))

(assert (= (and b!5506767 c!962159) b!5506773))

(assert (= (and b!5506767 (not c!962159)) b!5506775))

(declare-fun m!6513108 () Bool)

(assert (=> b!5506773 m!6513108))

(declare-fun m!6513110 () Bool)

(assert (=> d!1745144 m!6513110))

(declare-fun m!6513112 () Bool)

(assert (=> d!1745144 m!6513112))

(declare-fun m!6513114 () Bool)

(assert (=> b!5506775 m!6513114))

(declare-fun m!6513116 () Bool)

(assert (=> b!5506767 m!6513116))

(assert (=> b!5506767 m!6513116))

(declare-fun m!6513118 () Bool)

(assert (=> b!5506767 m!6513118))

(declare-fun m!6513120 () Bool)

(assert (=> b!5506768 m!6513120))

(assert (=> b!5506766 m!6512776))

(declare-fun m!6513122 () Bool)

(assert (=> b!5506771 m!6513122))

(declare-fun m!6513124 () Bool)

(assert (=> b!5506770 m!6513124))

(assert (=> b!5506647 d!1745144))

(declare-fun d!1745146 () Bool)

(assert (=> d!1745146 (= ($colon$colon!1574 (exprs!5373 (Context!9747 Nil!62642)) (ite (or c!962149 c!962147) (regTwo!31490 r!7292) r!7292)) (Cons!62642 (ite (or c!962149 c!962147) (regTwo!31490 r!7292) r!7292) (exprs!5373 (Context!9747 Nil!62642))))))

(assert (=> bm!406895 d!1745146))

(declare-fun d!1745148 () Bool)

(assert (=> d!1745148 (= (isEmpty!34418 (exprs!5373 (h!69091 zl!343))) ((_ is Nil!62642) (exprs!5373 (h!69091 zl!343))))))

(assert (=> b!5506643 d!1745148))

(declare-fun d!1745150 () Bool)

(declare-fun nullableFct!1654 (Regex!15489) Bool)

(assert (=> d!1745150 (= (nullable!5523 (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))) (nullableFct!1654 (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))))))

(declare-fun bs!1269884 () Bool)

(assert (= bs!1269884 d!1745150))

(declare-fun m!6513126 () Bool)

(assert (=> bs!1269884 m!6513126))

(assert (=> b!5506665 d!1745150))

(declare-fun b!5506776 () Bool)

(declare-fun e!3405896 () Bool)

(assert (=> b!5506776 (= e!3405896 (= (head!11794 (tail!10889 s!2326)) (c!961989 (derivativeStep!4360 r!7292 (head!11794 s!2326)))))))

(declare-fun b!5506777 () Bool)

(declare-fun e!3405893 () Bool)

(declare-fun lt!2244437 () Bool)

(declare-fun call!406908 () Bool)

(assert (=> b!5506777 (= e!3405893 (= lt!2244437 call!406908))))

(declare-fun b!5506778 () Bool)

(declare-fun e!3405895 () Bool)

(assert (=> b!5506778 (= e!3405893 e!3405895)))

(declare-fun c!962161 () Bool)

(assert (=> b!5506778 (= c!962161 ((_ is EmptyLang!15489) (derivativeStep!4360 r!7292 (head!11794 s!2326))))))

(declare-fun d!1745152 () Bool)

(assert (=> d!1745152 e!3405893))

(declare-fun c!962162 () Bool)

(assert (=> d!1745152 (= c!962162 ((_ is EmptyExpr!15489) (derivativeStep!4360 r!7292 (head!11794 s!2326))))))

(declare-fun e!3405894 () Bool)

(assert (=> d!1745152 (= lt!2244437 e!3405894)))

(declare-fun c!962160 () Bool)

(assert (=> d!1745152 (= c!962160 (isEmpty!34422 (tail!10889 s!2326)))))

(assert (=> d!1745152 (validRegex!7225 (derivativeStep!4360 r!7292 (head!11794 s!2326)))))

(assert (=> d!1745152 (= (matchR!7674 (derivativeStep!4360 r!7292 (head!11794 s!2326)) (tail!10889 s!2326)) lt!2244437)))

(declare-fun b!5506779 () Bool)

(assert (=> b!5506779 (= e!3405895 (not lt!2244437))))

(declare-fun b!5506780 () Bool)

(assert (=> b!5506780 (= e!3405894 (nullable!5523 (derivativeStep!4360 r!7292 (head!11794 s!2326))))))

(declare-fun b!5506781 () Bool)

(declare-fun res!2346791 () Bool)

(assert (=> b!5506781 (=> (not res!2346791) (not e!3405896))))

(assert (=> b!5506781 (= res!2346791 (isEmpty!34422 (tail!10889 (tail!10889 s!2326))))))

(declare-fun b!5506782 () Bool)

(assert (=> b!5506782 (= e!3405894 (matchR!7674 (derivativeStep!4360 (derivativeStep!4360 r!7292 (head!11794 s!2326)) (head!11794 (tail!10889 s!2326))) (tail!10889 (tail!10889 s!2326))))))

(declare-fun b!5506783 () Bool)

(declare-fun res!2346796 () Bool)

(declare-fun e!3405892 () Bool)

(assert (=> b!5506783 (=> res!2346796 e!3405892)))

(assert (=> b!5506783 (= res!2346796 e!3405896)))

(declare-fun res!2346794 () Bool)

(assert (=> b!5506783 (=> (not res!2346794) (not e!3405896))))

(assert (=> b!5506783 (= res!2346794 lt!2244437)))

(declare-fun b!5506784 () Bool)

(declare-fun res!2346793 () Bool)

(declare-fun e!3405890 () Bool)

(assert (=> b!5506784 (=> res!2346793 e!3405890)))

(assert (=> b!5506784 (= res!2346793 (not (isEmpty!34422 (tail!10889 (tail!10889 s!2326)))))))

(declare-fun b!5506785 () Bool)

(declare-fun res!2346797 () Bool)

(assert (=> b!5506785 (=> (not res!2346797) (not e!3405896))))

(assert (=> b!5506785 (= res!2346797 (not call!406908))))

(declare-fun b!5506786 () Bool)

(declare-fun res!2346792 () Bool)

(assert (=> b!5506786 (=> res!2346792 e!3405892)))

(assert (=> b!5506786 (= res!2346792 (not ((_ is ElementMatch!15489) (derivativeStep!4360 r!7292 (head!11794 s!2326)))))))

(assert (=> b!5506786 (= e!3405895 e!3405892)))

(declare-fun bm!406903 () Bool)

(assert (=> bm!406903 (= call!406908 (isEmpty!34422 (tail!10889 s!2326)))))

(declare-fun b!5506787 () Bool)

(declare-fun e!3405891 () Bool)

(assert (=> b!5506787 (= e!3405891 e!3405890)))

(declare-fun res!2346790 () Bool)

(assert (=> b!5506787 (=> res!2346790 e!3405890)))

(assert (=> b!5506787 (= res!2346790 call!406908)))

(declare-fun b!5506788 () Bool)

(assert (=> b!5506788 (= e!3405890 (not (= (head!11794 (tail!10889 s!2326)) (c!961989 (derivativeStep!4360 r!7292 (head!11794 s!2326))))))))

(declare-fun b!5506789 () Bool)

(assert (=> b!5506789 (= e!3405892 e!3405891)))

(declare-fun res!2346795 () Bool)

(assert (=> b!5506789 (=> (not res!2346795) (not e!3405891))))

(assert (=> b!5506789 (= res!2346795 (not lt!2244437))))

(assert (= (and d!1745152 c!962160) b!5506780))

(assert (= (and d!1745152 (not c!962160)) b!5506782))

(assert (= (and d!1745152 c!962162) b!5506777))

(assert (= (and d!1745152 (not c!962162)) b!5506778))

(assert (= (and b!5506778 c!962161) b!5506779))

(assert (= (and b!5506778 (not c!962161)) b!5506786))

(assert (= (and b!5506786 (not res!2346792)) b!5506783))

(assert (= (and b!5506783 res!2346794) b!5506785))

(assert (= (and b!5506785 res!2346797) b!5506781))

(assert (= (and b!5506781 res!2346791) b!5506776))

(assert (= (and b!5506783 (not res!2346796)) b!5506789))

(assert (= (and b!5506789 res!2346795) b!5506787))

(assert (= (and b!5506787 (not res!2346790)) b!5506784))

(assert (= (and b!5506784 (not res!2346793)) b!5506788))

(assert (= (or b!5506777 b!5506787 b!5506785) bm!406903))

(assert (=> b!5506781 m!6513046))

(declare-fun m!6513128 () Bool)

(assert (=> b!5506781 m!6513128))

(assert (=> b!5506781 m!6513128))

(declare-fun m!6513130 () Bool)

(assert (=> b!5506781 m!6513130))

(assert (=> b!5506776 m!6513046))

(declare-fun m!6513132 () Bool)

(assert (=> b!5506776 m!6513132))

(assert (=> b!5506782 m!6513046))

(assert (=> b!5506782 m!6513132))

(assert (=> b!5506782 m!6513052))

(assert (=> b!5506782 m!6513132))

(declare-fun m!6513134 () Bool)

(assert (=> b!5506782 m!6513134))

(assert (=> b!5506782 m!6513046))

(assert (=> b!5506782 m!6513128))

(assert (=> b!5506782 m!6513134))

(assert (=> b!5506782 m!6513128))

(declare-fun m!6513136 () Bool)

(assert (=> b!5506782 m!6513136))

(assert (=> b!5506788 m!6513046))

(assert (=> b!5506788 m!6513132))

(assert (=> b!5506784 m!6513046))

(assert (=> b!5506784 m!6513128))

(assert (=> b!5506784 m!6513128))

(assert (=> b!5506784 m!6513130))

(assert (=> bm!406903 m!6513046))

(assert (=> bm!406903 m!6513048))

(assert (=> d!1745152 m!6513046))

(assert (=> d!1745152 m!6513048))

(assert (=> d!1745152 m!6513052))

(declare-fun m!6513138 () Bool)

(assert (=> d!1745152 m!6513138))

(assert (=> b!5506780 m!6513052))

(declare-fun m!6513140 () Bool)

(assert (=> b!5506780 m!6513140))

(assert (=> b!5506615 d!1745152))

(declare-fun b!5506810 () Bool)

(declare-fun e!3405910 () Regex!15489)

(declare-fun e!3405908 () Regex!15489)

(assert (=> b!5506810 (= e!3405910 e!3405908)))

(declare-fun c!962176 () Bool)

(assert (=> b!5506810 (= c!962176 ((_ is ElementMatch!15489) r!7292))))

(declare-fun b!5506811 () Bool)

(assert (=> b!5506811 (= e!3405910 EmptyLang!15489)))

(declare-fun b!5506812 () Bool)

(declare-fun c!962174 () Bool)

(assert (=> b!5506812 (= c!962174 ((_ is Union!15489) r!7292))))

(declare-fun e!3405907 () Regex!15489)

(assert (=> b!5506812 (= e!3405908 e!3405907)))

(declare-fun b!5506813 () Bool)

(assert (=> b!5506813 (= e!3405908 (ite (= (head!11794 s!2326) (c!961989 r!7292)) EmptyExpr!15489 EmptyLang!15489))))

(declare-fun bm!406912 () Bool)

(declare-fun call!406920 () Regex!15489)

(declare-fun call!406918 () Regex!15489)

(assert (=> bm!406912 (= call!406920 call!406918)))

(declare-fun b!5506814 () Bool)

(declare-fun e!3405911 () Regex!15489)

(assert (=> b!5506814 (= e!3405911 (Union!15489 (Concat!24334 call!406920 (regTwo!31490 r!7292)) EmptyLang!15489))))

(declare-fun c!962175 () Bool)

(declare-fun bm!406913 () Bool)

(assert (=> bm!406913 (= call!406918 (derivativeStep!4360 (ite c!962174 (regOne!31491 r!7292) (ite c!962175 (regTwo!31490 r!7292) (regOne!31490 r!7292))) (head!11794 s!2326)))))

(declare-fun d!1745154 () Bool)

(declare-fun lt!2244440 () Regex!15489)

(assert (=> d!1745154 (validRegex!7225 lt!2244440)))

(assert (=> d!1745154 (= lt!2244440 e!3405910)))

(declare-fun c!962177 () Bool)

(assert (=> d!1745154 (= c!962177 (or ((_ is EmptyExpr!15489) r!7292) ((_ is EmptyLang!15489) r!7292)))))

(assert (=> d!1745154 (validRegex!7225 r!7292)))

(assert (=> d!1745154 (= (derivativeStep!4360 r!7292 (head!11794 s!2326)) lt!2244440)))

(declare-fun b!5506815 () Bool)

(assert (=> b!5506815 (= c!962175 (nullable!5523 (regOne!31490 r!7292)))))

(declare-fun e!3405909 () Regex!15489)

(assert (=> b!5506815 (= e!3405909 e!3405911)))

(declare-fun call!406917 () Regex!15489)

(declare-fun c!962173 () Bool)

(declare-fun bm!406914 () Bool)

(assert (=> bm!406914 (= call!406917 (derivativeStep!4360 (ite c!962174 (regTwo!31491 r!7292) (ite c!962173 (reg!15818 r!7292) (regOne!31490 r!7292))) (head!11794 s!2326)))))

(declare-fun b!5506816 () Bool)

(assert (=> b!5506816 (= e!3405907 (Union!15489 call!406918 call!406917))))

(declare-fun call!406919 () Regex!15489)

(declare-fun b!5506817 () Bool)

(assert (=> b!5506817 (= e!3405911 (Union!15489 (Concat!24334 call!406919 (regTwo!31490 r!7292)) call!406920))))

(declare-fun b!5506818 () Bool)

(assert (=> b!5506818 (= e!3405907 e!3405909)))

(assert (=> b!5506818 (= c!962173 ((_ is Star!15489) r!7292))))

(declare-fun b!5506819 () Bool)

(assert (=> b!5506819 (= e!3405909 (Concat!24334 call!406919 r!7292))))

(declare-fun bm!406915 () Bool)

(assert (=> bm!406915 (= call!406919 call!406917)))

(assert (= (and d!1745154 c!962177) b!5506811))

(assert (= (and d!1745154 (not c!962177)) b!5506810))

(assert (= (and b!5506810 c!962176) b!5506813))

(assert (= (and b!5506810 (not c!962176)) b!5506812))

(assert (= (and b!5506812 c!962174) b!5506816))

(assert (= (and b!5506812 (not c!962174)) b!5506818))

(assert (= (and b!5506818 c!962173) b!5506819))

(assert (= (and b!5506818 (not c!962173)) b!5506815))

(assert (= (and b!5506815 c!962175) b!5506817))

(assert (= (and b!5506815 (not c!962175)) b!5506814))

(assert (= (or b!5506817 b!5506814) bm!406912))

(assert (= (or b!5506819 b!5506817) bm!406915))

(assert (= (or b!5506816 bm!406915) bm!406914))

(assert (= (or b!5506816 bm!406912) bm!406913))

(assert (=> bm!406913 m!6513050))

(declare-fun m!6513142 () Bool)

(assert (=> bm!406913 m!6513142))

(declare-fun m!6513144 () Bool)

(assert (=> d!1745154 m!6513144))

(assert (=> d!1745154 m!6512806))

(assert (=> b!5506815 m!6513094))

(assert (=> bm!406914 m!6513050))

(declare-fun m!6513146 () Bool)

(assert (=> bm!406914 m!6513146))

(assert (=> b!5506615 d!1745154))

(declare-fun d!1745156 () Bool)

(assert (=> d!1745156 (= (head!11794 s!2326) (h!69092 s!2326))))

(assert (=> b!5506615 d!1745156))

(assert (=> b!5506615 d!1745138))

(assert (=> b!5506645 d!1745132))

(declare-fun d!1745158 () Bool)

(assert (=> d!1745158 (= (isEmpty!34418 (unfocusZipperList!917 zl!343)) ((_ is Nil!62642) (unfocusZipperList!917 zl!343)))))

(assert (=> b!5506468 d!1745158))

(declare-fun b!5506820 () Bool)

(declare-fun e!3405918 () Bool)

(assert (=> b!5506820 (= e!3405918 (= (head!11794 s!2326) (c!961989 (regTwo!31490 r!7292))))))

(declare-fun b!5506821 () Bool)

(declare-fun e!3405915 () Bool)

(declare-fun lt!2244441 () Bool)

(declare-fun call!406921 () Bool)

(assert (=> b!5506821 (= e!3405915 (= lt!2244441 call!406921))))

(declare-fun b!5506822 () Bool)

(declare-fun e!3405917 () Bool)

(assert (=> b!5506822 (= e!3405915 e!3405917)))

(declare-fun c!962179 () Bool)

(assert (=> b!5506822 (= c!962179 ((_ is EmptyLang!15489) (regTwo!31490 r!7292)))))

(declare-fun d!1745160 () Bool)

(assert (=> d!1745160 e!3405915))

(declare-fun c!962180 () Bool)

(assert (=> d!1745160 (= c!962180 ((_ is EmptyExpr!15489) (regTwo!31490 r!7292)))))

(declare-fun e!3405916 () Bool)

(assert (=> d!1745160 (= lt!2244441 e!3405916)))

(declare-fun c!962178 () Bool)

(assert (=> d!1745160 (= c!962178 (isEmpty!34422 s!2326))))

(assert (=> d!1745160 (validRegex!7225 (regTwo!31490 r!7292))))

(assert (=> d!1745160 (= (matchR!7674 (regTwo!31490 r!7292) s!2326) lt!2244441)))

(declare-fun b!5506823 () Bool)

(assert (=> b!5506823 (= e!3405917 (not lt!2244441))))

(declare-fun b!5506824 () Bool)

(assert (=> b!5506824 (= e!3405916 (nullable!5523 (regTwo!31490 r!7292)))))

(declare-fun b!5506825 () Bool)

(declare-fun res!2346799 () Bool)

(assert (=> b!5506825 (=> (not res!2346799) (not e!3405918))))

(assert (=> b!5506825 (= res!2346799 (isEmpty!34422 (tail!10889 s!2326)))))

(declare-fun b!5506826 () Bool)

(assert (=> b!5506826 (= e!3405916 (matchR!7674 (derivativeStep!4360 (regTwo!31490 r!7292) (head!11794 s!2326)) (tail!10889 s!2326)))))

(declare-fun b!5506827 () Bool)

(declare-fun res!2346804 () Bool)

(declare-fun e!3405914 () Bool)

(assert (=> b!5506827 (=> res!2346804 e!3405914)))

(assert (=> b!5506827 (= res!2346804 e!3405918)))

(declare-fun res!2346802 () Bool)

(assert (=> b!5506827 (=> (not res!2346802) (not e!3405918))))

(assert (=> b!5506827 (= res!2346802 lt!2244441)))

(declare-fun b!5506828 () Bool)

(declare-fun res!2346801 () Bool)

(declare-fun e!3405912 () Bool)

(assert (=> b!5506828 (=> res!2346801 e!3405912)))

(assert (=> b!5506828 (= res!2346801 (not (isEmpty!34422 (tail!10889 s!2326))))))

(declare-fun b!5506829 () Bool)

(declare-fun res!2346805 () Bool)

(assert (=> b!5506829 (=> (not res!2346805) (not e!3405918))))

(assert (=> b!5506829 (= res!2346805 (not call!406921))))

(declare-fun b!5506830 () Bool)

(declare-fun res!2346800 () Bool)

(assert (=> b!5506830 (=> res!2346800 e!3405914)))

(assert (=> b!5506830 (= res!2346800 (not ((_ is ElementMatch!15489) (regTwo!31490 r!7292))))))

(assert (=> b!5506830 (= e!3405917 e!3405914)))

(declare-fun bm!406916 () Bool)

(assert (=> bm!406916 (= call!406921 (isEmpty!34422 s!2326))))

(declare-fun b!5506831 () Bool)

(declare-fun e!3405913 () Bool)

(assert (=> b!5506831 (= e!3405913 e!3405912)))

(declare-fun res!2346798 () Bool)

(assert (=> b!5506831 (=> res!2346798 e!3405912)))

(assert (=> b!5506831 (= res!2346798 call!406921)))

(declare-fun b!5506832 () Bool)

(assert (=> b!5506832 (= e!3405912 (not (= (head!11794 s!2326) (c!961989 (regTwo!31490 r!7292)))))))

(declare-fun b!5506833 () Bool)

(assert (=> b!5506833 (= e!3405914 e!3405913)))

(declare-fun res!2346803 () Bool)

(assert (=> b!5506833 (=> (not res!2346803) (not e!3405913))))

(assert (=> b!5506833 (= res!2346803 (not lt!2244441))))

(assert (= (and d!1745160 c!962178) b!5506824))

(assert (= (and d!1745160 (not c!962178)) b!5506826))

(assert (= (and d!1745160 c!962180) b!5506821))

(assert (= (and d!1745160 (not c!962180)) b!5506822))

(assert (= (and b!5506822 c!962179) b!5506823))

(assert (= (and b!5506822 (not c!962179)) b!5506830))

(assert (= (and b!5506830 (not res!2346800)) b!5506827))

(assert (= (and b!5506827 res!2346802) b!5506829))

(assert (= (and b!5506829 res!2346805) b!5506825))

(assert (= (and b!5506825 res!2346799) b!5506820))

(assert (= (and b!5506827 (not res!2346804)) b!5506833))

(assert (= (and b!5506833 res!2346803) b!5506831))

(assert (= (and b!5506831 (not res!2346798)) b!5506828))

(assert (= (and b!5506828 (not res!2346801)) b!5506832))

(assert (= (or b!5506821 b!5506831 b!5506829) bm!406916))

(assert (=> b!5506825 m!6513046))

(assert (=> b!5506825 m!6513046))

(assert (=> b!5506825 m!6513048))

(assert (=> b!5506820 m!6513050))

(assert (=> b!5506826 m!6513050))

(assert (=> b!5506826 m!6513050))

(declare-fun m!6513148 () Bool)

(assert (=> b!5506826 m!6513148))

(assert (=> b!5506826 m!6513046))

(assert (=> b!5506826 m!6513148))

(assert (=> b!5506826 m!6513046))

(declare-fun m!6513150 () Bool)

(assert (=> b!5506826 m!6513150))

(assert (=> b!5506832 m!6513050))

(assert (=> b!5506828 m!6513046))

(assert (=> b!5506828 m!6513046))

(assert (=> b!5506828 m!6513048))

(assert (=> bm!406916 m!6513040))

(assert (=> d!1745160 m!6513040))

(declare-fun m!6513152 () Bool)

(assert (=> d!1745160 m!6513152))

(declare-fun m!6513154 () Bool)

(assert (=> b!5506824 m!6513154))

(assert (=> b!5506277 d!1745160))

(declare-fun d!1745162 () Bool)

(assert (=> d!1745162 (= (isEmpty!34420 (findConcatSeparation!1912 (regOne!31490 r!7292) (regTwo!31490 r!7292) Nil!62644 s!2326 s!2326)) (not ((_ is Some!15497) (findConcatSeparation!1912 (regOne!31490 r!7292) (regTwo!31490 r!7292) Nil!62644 s!2326 s!2326))))))

(assert (=> d!1745106 d!1745162))

(declare-fun d!1745164 () Bool)

(assert (=> d!1745164 (= (nullable!5523 r!7292) (nullableFct!1654 r!7292))))

(declare-fun bs!1269885 () Bool)

(assert (= bs!1269885 d!1745164))

(declare-fun m!6513156 () Bool)

(assert (=> bs!1269885 m!6513156))

(assert (=> b!5506613 d!1745164))

(declare-fun d!1745166 () Bool)

(assert (=> d!1745166 true))

(assert (=> d!1745166 true))

(declare-fun res!2346808 () Bool)

(assert (=> d!1745166 (= (choose!41834 lambda!294854) res!2346808)))

(assert (=> d!1745068 d!1745166))

(declare-fun d!1745168 () Bool)

(declare-fun res!2346813 () Bool)

(declare-fun e!3405923 () Bool)

(assert (=> d!1745168 (=> res!2346813 e!3405923)))

(assert (=> d!1745168 (= res!2346813 ((_ is Nil!62642) (exprs!5373 setElem!36541)))))

(assert (=> d!1745168 (= (forall!14669 (exprs!5373 setElem!36541) lambda!294858) e!3405923)))

(declare-fun b!5506838 () Bool)

(declare-fun e!3405924 () Bool)

(assert (=> b!5506838 (= e!3405923 e!3405924)))

(declare-fun res!2346814 () Bool)

(assert (=> b!5506838 (=> (not res!2346814) (not e!3405924))))

(declare-fun dynLambda!24475 (Int Regex!15489) Bool)

(assert (=> b!5506838 (= res!2346814 (dynLambda!24475 lambda!294858 (h!69090 (exprs!5373 setElem!36541))))))

(declare-fun b!5506839 () Bool)

(assert (=> b!5506839 (= e!3405924 (forall!14669 (t!376007 (exprs!5373 setElem!36541)) lambda!294858))))

(assert (= (and d!1745168 (not res!2346813)) b!5506838))

(assert (= (and b!5506838 res!2346814) b!5506839))

(declare-fun b_lambda!208803 () Bool)

(assert (=> (not b_lambda!208803) (not b!5506838)))

(declare-fun m!6513158 () Bool)

(assert (=> b!5506838 m!6513158))

(declare-fun m!6513160 () Bool)

(assert (=> b!5506839 m!6513160))

(assert (=> d!1745052 d!1745168))

(assert (=> b!5506609 d!1745156))

(declare-fun b!5506840 () Bool)

(declare-fun e!3405931 () Bool)

(assert (=> b!5506840 (= e!3405931 (= (head!11794 (_1!35889 (get!21554 lt!2244386))) (c!961989 (regOne!31490 r!7292))))))

(declare-fun b!5506841 () Bool)

(declare-fun e!3405928 () Bool)

(declare-fun lt!2244442 () Bool)

(declare-fun call!406922 () Bool)

(assert (=> b!5506841 (= e!3405928 (= lt!2244442 call!406922))))

(declare-fun b!5506842 () Bool)

(declare-fun e!3405930 () Bool)

(assert (=> b!5506842 (= e!3405928 e!3405930)))

(declare-fun c!962182 () Bool)

(assert (=> b!5506842 (= c!962182 ((_ is EmptyLang!15489) (regOne!31490 r!7292)))))

(declare-fun d!1745170 () Bool)

(assert (=> d!1745170 e!3405928))

(declare-fun c!962183 () Bool)

(assert (=> d!1745170 (= c!962183 ((_ is EmptyExpr!15489) (regOne!31490 r!7292)))))

(declare-fun e!3405929 () Bool)

(assert (=> d!1745170 (= lt!2244442 e!3405929)))

(declare-fun c!962181 () Bool)

(assert (=> d!1745170 (= c!962181 (isEmpty!34422 (_1!35889 (get!21554 lt!2244386))))))

(assert (=> d!1745170 (validRegex!7225 (regOne!31490 r!7292))))

(assert (=> d!1745170 (= (matchR!7674 (regOne!31490 r!7292) (_1!35889 (get!21554 lt!2244386))) lt!2244442)))

(declare-fun b!5506843 () Bool)

(assert (=> b!5506843 (= e!3405930 (not lt!2244442))))

(declare-fun b!5506844 () Bool)

(assert (=> b!5506844 (= e!3405929 (nullable!5523 (regOne!31490 r!7292)))))

(declare-fun b!5506845 () Bool)

(declare-fun res!2346816 () Bool)

(assert (=> b!5506845 (=> (not res!2346816) (not e!3405931))))

(assert (=> b!5506845 (= res!2346816 (isEmpty!34422 (tail!10889 (_1!35889 (get!21554 lt!2244386)))))))

(declare-fun b!5506846 () Bool)

(assert (=> b!5506846 (= e!3405929 (matchR!7674 (derivativeStep!4360 (regOne!31490 r!7292) (head!11794 (_1!35889 (get!21554 lt!2244386)))) (tail!10889 (_1!35889 (get!21554 lt!2244386)))))))

(declare-fun b!5506847 () Bool)

(declare-fun res!2346821 () Bool)

(declare-fun e!3405927 () Bool)

(assert (=> b!5506847 (=> res!2346821 e!3405927)))

(assert (=> b!5506847 (= res!2346821 e!3405931)))

(declare-fun res!2346819 () Bool)

(assert (=> b!5506847 (=> (not res!2346819) (not e!3405931))))

(assert (=> b!5506847 (= res!2346819 lt!2244442)))

(declare-fun b!5506848 () Bool)

(declare-fun res!2346818 () Bool)

(declare-fun e!3405925 () Bool)

(assert (=> b!5506848 (=> res!2346818 e!3405925)))

(assert (=> b!5506848 (= res!2346818 (not (isEmpty!34422 (tail!10889 (_1!35889 (get!21554 lt!2244386))))))))

(declare-fun b!5506849 () Bool)

(declare-fun res!2346822 () Bool)

(assert (=> b!5506849 (=> (not res!2346822) (not e!3405931))))

(assert (=> b!5506849 (= res!2346822 (not call!406922))))

(declare-fun b!5506850 () Bool)

(declare-fun res!2346817 () Bool)

(assert (=> b!5506850 (=> res!2346817 e!3405927)))

(assert (=> b!5506850 (= res!2346817 (not ((_ is ElementMatch!15489) (regOne!31490 r!7292))))))

(assert (=> b!5506850 (= e!3405930 e!3405927)))

(declare-fun bm!406917 () Bool)

(assert (=> bm!406917 (= call!406922 (isEmpty!34422 (_1!35889 (get!21554 lt!2244386))))))

(declare-fun b!5506851 () Bool)

(declare-fun e!3405926 () Bool)

(assert (=> b!5506851 (= e!3405926 e!3405925)))

(declare-fun res!2346815 () Bool)

(assert (=> b!5506851 (=> res!2346815 e!3405925)))

(assert (=> b!5506851 (= res!2346815 call!406922)))

(declare-fun b!5506852 () Bool)

(assert (=> b!5506852 (= e!3405925 (not (= (head!11794 (_1!35889 (get!21554 lt!2244386))) (c!961989 (regOne!31490 r!7292)))))))

(declare-fun b!5506853 () Bool)

(assert (=> b!5506853 (= e!3405927 e!3405926)))

(declare-fun res!2346820 () Bool)

(assert (=> b!5506853 (=> (not res!2346820) (not e!3405926))))

(assert (=> b!5506853 (= res!2346820 (not lt!2244442))))

(assert (= (and d!1745170 c!962181) b!5506844))

(assert (= (and d!1745170 (not c!962181)) b!5506846))

(assert (= (and d!1745170 c!962183) b!5506841))

(assert (= (and d!1745170 (not c!962183)) b!5506842))

(assert (= (and b!5506842 c!962182) b!5506843))

(assert (= (and b!5506842 (not c!962182)) b!5506850))

(assert (= (and b!5506850 (not res!2346817)) b!5506847))

(assert (= (and b!5506847 res!2346819) b!5506849))

(assert (= (and b!5506849 res!2346822) b!5506845))

(assert (= (and b!5506845 res!2346816) b!5506840))

(assert (= (and b!5506847 (not res!2346821)) b!5506853))

(assert (= (and b!5506853 res!2346820) b!5506851))

(assert (= (and b!5506851 (not res!2346815)) b!5506848))

(assert (= (and b!5506848 (not res!2346818)) b!5506852))

(assert (= (or b!5506841 b!5506851 b!5506849) bm!406917))

(declare-fun m!6513162 () Bool)

(assert (=> b!5506845 m!6513162))

(assert (=> b!5506845 m!6513162))

(declare-fun m!6513164 () Bool)

(assert (=> b!5506845 m!6513164))

(declare-fun m!6513166 () Bool)

(assert (=> b!5506840 m!6513166))

(assert (=> b!5506846 m!6513166))

(assert (=> b!5506846 m!6513166))

(declare-fun m!6513168 () Bool)

(assert (=> b!5506846 m!6513168))

(assert (=> b!5506846 m!6513162))

(assert (=> b!5506846 m!6513168))

(assert (=> b!5506846 m!6513162))

(declare-fun m!6513170 () Bool)

(assert (=> b!5506846 m!6513170))

(assert (=> b!5506852 m!6513166))

(assert (=> b!5506848 m!6513162))

(assert (=> b!5506848 m!6513162))

(assert (=> b!5506848 m!6513164))

(declare-fun m!6513172 () Bool)

(assert (=> bm!406917 m!6513172))

(assert (=> d!1745170 m!6513172))

(assert (=> d!1745170 m!6512910))

(assert (=> b!5506844 m!6513094))

(assert (=> b!5506275 d!1745170))

(declare-fun d!1745172 () Bool)

(assert (=> d!1745172 (= (get!21554 lt!2244386) (v!51532 lt!2244386))))

(assert (=> b!5506275 d!1745172))

(declare-fun d!1745174 () Bool)

(assert (=> d!1745174 (= (isEmpty!34418 (t!376007 (unfocusZipperList!917 zl!343))) ((_ is Nil!62642) (t!376007 (unfocusZipperList!917 zl!343))))))

(assert (=> b!5506466 d!1745174))

(declare-fun b!5506865 () Bool)

(declare-fun e!3405937 () Bool)

(declare-fun lt!2244445 () List!62768)

(assert (=> b!5506865 (= e!3405937 (or (not (= (t!376009 s!2326) Nil!62644)) (= lt!2244445 (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644)))))))

(declare-fun d!1745176 () Bool)

(assert (=> d!1745176 e!3405937))

(declare-fun res!2346827 () Bool)

(assert (=> d!1745176 (=> (not res!2346827) (not e!3405937))))

(declare-fun content!11250 (List!62768) (InoxSet C!31248))

(assert (=> d!1745176 (= res!2346827 (= (content!11250 lt!2244445) ((_ map or) (content!11250 (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644))) (content!11250 (t!376009 s!2326)))))))

(declare-fun e!3405936 () List!62768)

(assert (=> d!1745176 (= lt!2244445 e!3405936)))

(declare-fun c!962186 () Bool)

(assert (=> d!1745176 (= c!962186 ((_ is Nil!62644) (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644))))))

(assert (=> d!1745176 (= (++!13742 (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644)) (t!376009 s!2326)) lt!2244445)))

(declare-fun b!5506862 () Bool)

(assert (=> b!5506862 (= e!3405936 (t!376009 s!2326))))

(declare-fun b!5506863 () Bool)

(assert (=> b!5506863 (= e!3405936 (Cons!62644 (h!69092 (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644))) (++!13742 (t!376009 (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644))) (t!376009 s!2326))))))

(declare-fun b!5506864 () Bool)

(declare-fun res!2346828 () Bool)

(assert (=> b!5506864 (=> (not res!2346828) (not e!3405937))))

(declare-fun size!39928 (List!62768) Int)

(assert (=> b!5506864 (= res!2346828 (= (size!39928 lt!2244445) (+ (size!39928 (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644))) (size!39928 (t!376009 s!2326)))))))

(assert (= (and d!1745176 c!962186) b!5506862))

(assert (= (and d!1745176 (not c!962186)) b!5506863))

(assert (= (and d!1745176 res!2346827) b!5506864))

(assert (= (and b!5506864 res!2346828) b!5506865))

(declare-fun m!6513174 () Bool)

(assert (=> d!1745176 m!6513174))

(assert (=> d!1745176 m!6512898))

(declare-fun m!6513176 () Bool)

(assert (=> d!1745176 m!6513176))

(declare-fun m!6513178 () Bool)

(assert (=> d!1745176 m!6513178))

(declare-fun m!6513180 () Bool)

(assert (=> b!5506863 m!6513180))

(declare-fun m!6513182 () Bool)

(assert (=> b!5506864 m!6513182))

(assert (=> b!5506864 m!6512898))

(declare-fun m!6513184 () Bool)

(assert (=> b!5506864 m!6513184))

(declare-fun m!6513186 () Bool)

(assert (=> b!5506864 m!6513186))

(assert (=> b!5506271 d!1745176))

(declare-fun b!5506869 () Bool)

(declare-fun e!3405939 () Bool)

(declare-fun lt!2244446 () List!62768)

(assert (=> b!5506869 (= e!3405939 (or (not (= (Cons!62644 (h!69092 s!2326) Nil!62644) Nil!62644)) (= lt!2244446 Nil!62644)))))

(declare-fun d!1745178 () Bool)

(assert (=> d!1745178 e!3405939))

(declare-fun res!2346829 () Bool)

(assert (=> d!1745178 (=> (not res!2346829) (not e!3405939))))

(assert (=> d!1745178 (= res!2346829 (= (content!11250 lt!2244446) ((_ map or) (content!11250 Nil!62644) (content!11250 (Cons!62644 (h!69092 s!2326) Nil!62644)))))))

(declare-fun e!3405938 () List!62768)

(assert (=> d!1745178 (= lt!2244446 e!3405938)))

(declare-fun c!962187 () Bool)

(assert (=> d!1745178 (= c!962187 ((_ is Nil!62644) Nil!62644))))

(assert (=> d!1745178 (= (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644)) lt!2244446)))

(declare-fun b!5506866 () Bool)

(assert (=> b!5506866 (= e!3405938 (Cons!62644 (h!69092 s!2326) Nil!62644))))

(declare-fun b!5506867 () Bool)

(assert (=> b!5506867 (= e!3405938 (Cons!62644 (h!69092 Nil!62644) (++!13742 (t!376009 Nil!62644) (Cons!62644 (h!69092 s!2326) Nil!62644))))))

(declare-fun b!5506868 () Bool)

(declare-fun res!2346830 () Bool)

(assert (=> b!5506868 (=> (not res!2346830) (not e!3405939))))

(assert (=> b!5506868 (= res!2346830 (= (size!39928 lt!2244446) (+ (size!39928 Nil!62644) (size!39928 (Cons!62644 (h!69092 s!2326) Nil!62644)))))))

(assert (= (and d!1745178 c!962187) b!5506866))

(assert (= (and d!1745178 (not c!962187)) b!5506867))

(assert (= (and d!1745178 res!2346829) b!5506868))

(assert (= (and b!5506868 res!2346830) b!5506869))

(declare-fun m!6513188 () Bool)

(assert (=> d!1745178 m!6513188))

(declare-fun m!6513190 () Bool)

(assert (=> d!1745178 m!6513190))

(declare-fun m!6513192 () Bool)

(assert (=> d!1745178 m!6513192))

(declare-fun m!6513194 () Bool)

(assert (=> b!5506867 m!6513194))

(declare-fun m!6513196 () Bool)

(assert (=> b!5506868 m!6513196))

(declare-fun m!6513198 () Bool)

(assert (=> b!5506868 m!6513198))

(declare-fun m!6513200 () Bool)

(assert (=> b!5506868 m!6513200))

(assert (=> b!5506271 d!1745178))

(declare-fun d!1745180 () Bool)

(assert (=> d!1745180 (= (++!13742 (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644)) (t!376009 s!2326)) s!2326)))

(declare-fun lt!2244449 () Unit!155438)

(declare-fun choose!41841 (List!62768 C!31248 List!62768 List!62768) Unit!155438)

(assert (=> d!1745180 (= lt!2244449 (choose!41841 Nil!62644 (h!69092 s!2326) (t!376009 s!2326) s!2326))))

(assert (=> d!1745180 (= (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) (t!376009 s!2326))) s!2326)))

(assert (=> d!1745180 (= (lemmaMoveElementToOtherListKeepsConcatEq!1911 Nil!62644 (h!69092 s!2326) (t!376009 s!2326) s!2326) lt!2244449)))

(declare-fun bs!1269886 () Bool)

(assert (= bs!1269886 d!1745180))

(assert (=> bs!1269886 m!6512898))

(assert (=> bs!1269886 m!6512898))

(assert (=> bs!1269886 m!6512900))

(declare-fun m!6513202 () Bool)

(assert (=> bs!1269886 m!6513202))

(declare-fun m!6513204 () Bool)

(assert (=> bs!1269886 m!6513204))

(assert (=> b!5506271 d!1745180))

(declare-fun b!5506870 () Bool)

(declare-fun lt!2244450 () Unit!155438)

(declare-fun lt!2244452 () Unit!155438)

(assert (=> b!5506870 (= lt!2244450 lt!2244452)))

(assert (=> b!5506870 (= (++!13742 (++!13742 (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644)) (Cons!62644 (h!69092 (t!376009 s!2326)) Nil!62644)) (t!376009 (t!376009 s!2326))) s!2326)))

(assert (=> b!5506870 (= lt!2244452 (lemmaMoveElementToOtherListKeepsConcatEq!1911 (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644)) (h!69092 (t!376009 s!2326)) (t!376009 (t!376009 s!2326)) s!2326))))

(declare-fun e!3405941 () Option!15498)

(assert (=> b!5506870 (= e!3405941 (findConcatSeparation!1912 (regOne!31490 r!7292) (regTwo!31490 r!7292) (++!13742 (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644)) (Cons!62644 (h!69092 (t!376009 s!2326)) Nil!62644)) (t!376009 (t!376009 s!2326)) s!2326))))

(declare-fun b!5506871 () Bool)

(declare-fun res!2346833 () Bool)

(declare-fun e!3405943 () Bool)

(assert (=> b!5506871 (=> (not res!2346833) (not e!3405943))))

(declare-fun lt!2244451 () Option!15498)

(assert (=> b!5506871 (= res!2346833 (matchR!7674 (regTwo!31490 r!7292) (_2!35889 (get!21554 lt!2244451))))))

(declare-fun b!5506872 () Bool)

(declare-fun e!3405944 () Option!15498)

(assert (=> b!5506872 (= e!3405944 (Some!15497 (tuple2!65173 (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644)) (t!376009 s!2326))))))

(declare-fun d!1745182 () Bool)

(declare-fun e!3405940 () Bool)

(assert (=> d!1745182 e!3405940))

(declare-fun res!2346834 () Bool)

(assert (=> d!1745182 (=> res!2346834 e!3405940)))

(assert (=> d!1745182 (= res!2346834 e!3405943)))

(declare-fun res!2346835 () Bool)

(assert (=> d!1745182 (=> (not res!2346835) (not e!3405943))))

(assert (=> d!1745182 (= res!2346835 (isDefined!12201 lt!2244451))))

(assert (=> d!1745182 (= lt!2244451 e!3405944)))

(declare-fun c!962188 () Bool)

(declare-fun e!3405942 () Bool)

(assert (=> d!1745182 (= c!962188 e!3405942)))

(declare-fun res!2346832 () Bool)

(assert (=> d!1745182 (=> (not res!2346832) (not e!3405942))))

(assert (=> d!1745182 (= res!2346832 (matchR!7674 (regOne!31490 r!7292) (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644))))))

(assert (=> d!1745182 (validRegex!7225 (regOne!31490 r!7292))))

(assert (=> d!1745182 (= (findConcatSeparation!1912 (regOne!31490 r!7292) (regTwo!31490 r!7292) (++!13742 Nil!62644 (Cons!62644 (h!69092 s!2326) Nil!62644)) (t!376009 s!2326) s!2326) lt!2244451)))

(declare-fun b!5506873 () Bool)

(assert (=> b!5506873 (= e!3405944 e!3405941)))

(declare-fun c!962189 () Bool)

(assert (=> b!5506873 (= c!962189 ((_ is Nil!62644) (t!376009 s!2326)))))

(declare-fun b!5506874 () Bool)

(declare-fun res!2346831 () Bool)

(assert (=> b!5506874 (=> (not res!2346831) (not e!3405943))))

(assert (=> b!5506874 (= res!2346831 (matchR!7674 (regOne!31490 r!7292) (_1!35889 (get!21554 lt!2244451))))))

(declare-fun b!5506875 () Bool)

(assert (=> b!5506875 (= e!3405943 (= (++!13742 (_1!35889 (get!21554 lt!2244451)) (_2!35889 (get!21554 lt!2244451))) s!2326))))

(declare-fun b!5506876 () Bool)

(assert (=> b!5506876 (= e!3405942 (matchR!7674 (regTwo!31490 r!7292) (t!376009 s!2326)))))

(declare-fun b!5506877 () Bool)

(assert (=> b!5506877 (= e!3405940 (not (isDefined!12201 lt!2244451)))))

(declare-fun b!5506878 () Bool)

(assert (=> b!5506878 (= e!3405941 None!15497)))

(assert (= (and d!1745182 res!2346832) b!5506876))

(assert (= (and d!1745182 c!962188) b!5506872))

(assert (= (and d!1745182 (not c!962188)) b!5506873))

(assert (= (and b!5506873 c!962189) b!5506878))

(assert (= (and b!5506873 (not c!962189)) b!5506870))

(assert (= (and d!1745182 res!2346835) b!5506874))

(assert (= (and b!5506874 res!2346831) b!5506871))

(assert (= (and b!5506871 res!2346833) b!5506875))

(assert (= (and d!1745182 (not res!2346834)) b!5506877))

(declare-fun m!6513206 () Bool)

(assert (=> b!5506875 m!6513206))

(declare-fun m!6513208 () Bool)

(assert (=> b!5506875 m!6513208))

(assert (=> b!5506871 m!6513206))

(declare-fun m!6513210 () Bool)

(assert (=> b!5506871 m!6513210))

(assert (=> b!5506870 m!6512898))

(declare-fun m!6513212 () Bool)

(assert (=> b!5506870 m!6513212))

(assert (=> b!5506870 m!6513212))

(declare-fun m!6513214 () Bool)

(assert (=> b!5506870 m!6513214))

(assert (=> b!5506870 m!6512898))

(declare-fun m!6513216 () Bool)

(assert (=> b!5506870 m!6513216))

(assert (=> b!5506870 m!6513212))

(declare-fun m!6513218 () Bool)

(assert (=> b!5506870 m!6513218))

(declare-fun m!6513220 () Bool)

(assert (=> d!1745182 m!6513220))

(assert (=> d!1745182 m!6512898))

(declare-fun m!6513222 () Bool)

(assert (=> d!1745182 m!6513222))

(assert (=> d!1745182 m!6512910))

(assert (=> b!5506877 m!6513220))

(assert (=> b!5506874 m!6513206))

(declare-fun m!6513224 () Bool)

(assert (=> b!5506874 m!6513224))

(declare-fun m!6513226 () Bool)

(assert (=> b!5506876 m!6513226))

(assert (=> b!5506271 d!1745182))

(declare-fun b!5506879 () Bool)

(declare-fun c!962192 () Bool)

(declare-fun e!3405946 () Bool)

(assert (=> b!5506879 (= c!962192 e!3405946)))

(declare-fun res!2346836 () Bool)

(assert (=> b!5506879 (=> (not res!2346836) (not e!3405946))))

(assert (=> b!5506879 (= res!2346836 ((_ is Concat!24334) (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292))))))))

(declare-fun e!3405949 () (InoxSet Context!9746))

(declare-fun e!3405950 () (InoxSet Context!9746))

(assert (=> b!5506879 (= e!3405949 e!3405950)))

(declare-fun b!5506881 () Bool)

(declare-fun call!406925 () (InoxSet Context!9746))

(declare-fun call!406923 () (InoxSet Context!9746))

(assert (=> b!5506881 (= e!3405950 ((_ map or) call!406925 call!406923))))

(declare-fun call!406928 () List!62766)

(declare-fun c!962190 () Bool)

(declare-fun bm!406918 () Bool)

(assert (=> bm!406918 (= call!406928 ($colon$colon!1574 (exprs!5373 (ite (or c!962151 c!962149) (Context!9747 Nil!62642) (Context!9747 call!406903))) (ite (or c!962192 c!962190) (regTwo!31490 (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292))))) (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292)))))))))

(declare-fun b!5506882 () Bool)

(assert (=> b!5506882 (= e!3405946 (nullable!5523 (regOne!31490 (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292)))))))))

(declare-fun bm!406919 () Bool)

(declare-fun call!406924 () (InoxSet Context!9746))

(assert (=> bm!406919 (= call!406924 call!406923)))

(declare-fun e!3405948 () (InoxSet Context!9746))

(declare-fun b!5506883 () Bool)

(assert (=> b!5506883 (= e!3405948 (store ((as const (Array Context!9746 Bool)) false) (ite (or c!962151 c!962149) (Context!9747 Nil!62642) (Context!9747 call!406903)) true))))

(declare-fun c!962193 () Bool)

(declare-fun b!5506884 () Bool)

(assert (=> b!5506884 (= c!962193 ((_ is Star!15489) (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292))))))))

(declare-fun e!3405947 () (InoxSet Context!9746))

(declare-fun e!3405945 () (InoxSet Context!9746))

(assert (=> b!5506884 (= e!3405947 e!3405945)))

(declare-fun b!5506885 () Bool)

(assert (=> b!5506885 (= e!3405947 call!406924)))

(declare-fun b!5506886 () Bool)

(assert (=> b!5506886 (= e!3405945 call!406924)))

(declare-fun bm!406920 () Bool)

(declare-fun call!406927 () (InoxSet Context!9746))

(assert (=> bm!406920 (= call!406923 call!406927)))

(declare-fun b!5506887 () Bool)

(assert (=> b!5506887 (= e!3405948 e!3405949)))

(declare-fun c!962194 () Bool)

(assert (=> b!5506887 (= c!962194 ((_ is Union!15489) (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292))))))))

(declare-fun call!406926 () List!62766)

(declare-fun bm!406921 () Bool)

(assert (=> bm!406921 (= call!406927 (derivationStepZipperDown!831 (ite c!962194 (regTwo!31491 (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292))))) (ite c!962192 (regTwo!31490 (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292))))) (ite c!962190 (regOne!31490 (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292))))) (reg!15818 (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292)))))))) (ite (or c!962194 c!962192) (ite (or c!962151 c!962149) (Context!9747 Nil!62642) (Context!9747 call!406903)) (Context!9747 call!406926)) (h!69092 s!2326)))))

(declare-fun b!5506880 () Bool)

(assert (=> b!5506880 (= e!3405949 ((_ map or) call!406925 call!406927))))

(declare-fun c!962191 () Bool)

(declare-fun d!1745184 () Bool)

(assert (=> d!1745184 (= c!962191 (and ((_ is ElementMatch!15489) (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292))))) (= (c!961989 (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292))))) (h!69092 s!2326))))))

(assert (=> d!1745184 (= (derivationStepZipperDown!831 (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292)))) (ite (or c!962151 c!962149) (Context!9747 Nil!62642) (Context!9747 call!406903)) (h!69092 s!2326)) e!3405948)))

(declare-fun bm!406922 () Bool)

(assert (=> bm!406922 (= call!406926 call!406928)))

(declare-fun b!5506888 () Bool)

(assert (=> b!5506888 (= e!3405950 e!3405947)))

(assert (=> b!5506888 (= c!962190 ((_ is Concat!24334) (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292))))))))

(declare-fun bm!406923 () Bool)

(assert (=> bm!406923 (= call!406925 (derivationStepZipperDown!831 (ite c!962194 (regOne!31491 (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292))))) (regOne!31490 (ite c!962151 (regTwo!31491 r!7292) (ite c!962149 (regTwo!31490 r!7292) (ite c!962147 (regOne!31490 r!7292) (reg!15818 r!7292)))))) (ite c!962194 (ite (or c!962151 c!962149) (Context!9747 Nil!62642) (Context!9747 call!406903)) (Context!9747 call!406928)) (h!69092 s!2326)))))

(declare-fun b!5506889 () Bool)

(assert (=> b!5506889 (= e!3405945 ((as const (Array Context!9746 Bool)) false))))

(assert (= (and d!1745184 c!962191) b!5506883))

(assert (= (and d!1745184 (not c!962191)) b!5506887))

(assert (= (and b!5506887 c!962194) b!5506880))

(assert (= (and b!5506887 (not c!962194)) b!5506879))

(assert (= (and b!5506879 res!2346836) b!5506882))

(assert (= (and b!5506879 c!962192) b!5506881))

(assert (= (and b!5506879 (not c!962192)) b!5506888))

(assert (= (and b!5506888 c!962190) b!5506885))

(assert (= (and b!5506888 (not c!962190)) b!5506884))

(assert (= (and b!5506884 c!962193) b!5506886))

(assert (= (and b!5506884 (not c!962193)) b!5506889))

(assert (= (or b!5506885 b!5506886) bm!406922))

(assert (= (or b!5506885 b!5506886) bm!406919))

(assert (= (or b!5506881 bm!406922) bm!406918))

(assert (= (or b!5506881 bm!406919) bm!406920))

(assert (= (or b!5506880 bm!406920) bm!406921))

(assert (= (or b!5506880 b!5506881) bm!406923))

(declare-fun m!6513228 () Bool)

(assert (=> bm!406921 m!6513228))

(declare-fun m!6513230 () Bool)

(assert (=> b!5506883 m!6513230))

(declare-fun m!6513232 () Bool)

(assert (=> bm!406923 m!6513232))

(declare-fun m!6513234 () Bool)

(assert (=> bm!406918 m!6513234))

(declare-fun m!6513236 () Bool)

(assert (=> b!5506882 m!6513236))

(assert (=> bm!406898 d!1745184))

(declare-fun b!5506891 () Bool)

(declare-fun e!3405957 () Bool)

(declare-fun call!406931 () Bool)

(assert (=> b!5506891 (= e!3405957 call!406931)))

(declare-fun b!5506892 () Bool)

(declare-fun e!3405952 () Bool)

(declare-fun e!3405951 () Bool)

(assert (=> b!5506892 (= e!3405952 e!3405951)))

(declare-fun res!2346838 () Bool)

(assert (=> b!5506892 (= res!2346838 (not (nullable!5523 (reg!15818 (ite c!961995 (reg!15818 r!7292) (ite c!961994 (regOne!31491 r!7292) (regOne!31490 r!7292)))))))))

(assert (=> b!5506892 (=> (not res!2346838) (not e!3405951))))

(declare-fun b!5506893 () Bool)

(declare-fun res!2346839 () Bool)

(declare-fun e!3405955 () Bool)

(assert (=> b!5506893 (=> (not res!2346839) (not e!3405955))))

(declare-fun call!406930 () Bool)

(assert (=> b!5506893 (= res!2346839 call!406930)))

(declare-fun e!3405954 () Bool)

(assert (=> b!5506893 (= e!3405954 e!3405955)))

(declare-fun b!5506894 () Bool)

(declare-fun e!3405956 () Bool)

(assert (=> b!5506894 (= e!3405956 e!3405952)))

(declare-fun c!962196 () Bool)

(assert (=> b!5506894 (= c!962196 ((_ is Star!15489) (ite c!961995 (reg!15818 r!7292) (ite c!961994 (regOne!31491 r!7292) (regOne!31490 r!7292)))))))

(declare-fun c!962195 () Bool)

(declare-fun call!406929 () Bool)

(declare-fun bm!406924 () Bool)

(assert (=> bm!406924 (= call!406929 (validRegex!7225 (ite c!962196 (reg!15818 (ite c!961995 (reg!15818 r!7292) (ite c!961994 (regOne!31491 r!7292) (regOne!31490 r!7292)))) (ite c!962195 (regOne!31491 (ite c!961995 (reg!15818 r!7292) (ite c!961994 (regOne!31491 r!7292) (regOne!31490 r!7292)))) (regOne!31490 (ite c!961995 (reg!15818 r!7292) (ite c!961994 (regOne!31491 r!7292) (regOne!31490 r!7292))))))))))

(declare-fun bm!406925 () Bool)

(assert (=> bm!406925 (= call!406931 (validRegex!7225 (ite c!962195 (regTwo!31491 (ite c!961995 (reg!15818 r!7292) (ite c!961994 (regOne!31491 r!7292) (regOne!31490 r!7292)))) (regTwo!31490 (ite c!961995 (reg!15818 r!7292) (ite c!961994 (regOne!31491 r!7292) (regOne!31490 r!7292)))))))))

(declare-fun b!5506895 () Bool)

(declare-fun res!2346840 () Bool)

(declare-fun e!3405953 () Bool)

(assert (=> b!5506895 (=> res!2346840 e!3405953)))

(assert (=> b!5506895 (= res!2346840 (not ((_ is Concat!24334) (ite c!961995 (reg!15818 r!7292) (ite c!961994 (regOne!31491 r!7292) (regOne!31490 r!7292))))))))

(assert (=> b!5506895 (= e!3405954 e!3405953)))

(declare-fun b!5506896 () Bool)

(assert (=> b!5506896 (= e!3405955 call!406931)))

(declare-fun b!5506897 () Bool)

(assert (=> b!5506897 (= e!3405953 e!3405957)))

(declare-fun res!2346837 () Bool)

(assert (=> b!5506897 (=> (not res!2346837) (not e!3405957))))

(assert (=> b!5506897 (= res!2346837 call!406930)))

(declare-fun b!5506890 () Bool)

(assert (=> b!5506890 (= e!3405952 e!3405954)))

(assert (=> b!5506890 (= c!962195 ((_ is Union!15489) (ite c!961995 (reg!15818 r!7292) (ite c!961994 (regOne!31491 r!7292) (regOne!31490 r!7292)))))))

(declare-fun d!1745186 () Bool)

(declare-fun res!2346841 () Bool)

(assert (=> d!1745186 (=> res!2346841 e!3405956)))

(assert (=> d!1745186 (= res!2346841 ((_ is ElementMatch!15489) (ite c!961995 (reg!15818 r!7292) (ite c!961994 (regOne!31491 r!7292) (regOne!31490 r!7292)))))))

(assert (=> d!1745186 (= (validRegex!7225 (ite c!961995 (reg!15818 r!7292) (ite c!961994 (regOne!31491 r!7292) (regOne!31490 r!7292)))) e!3405956)))

(declare-fun bm!406926 () Bool)

(assert (=> bm!406926 (= call!406930 call!406929)))

(declare-fun b!5506898 () Bool)

(assert (=> b!5506898 (= e!3405951 call!406929)))

(assert (= (and d!1745186 (not res!2346841)) b!5506894))

(assert (= (and b!5506894 c!962196) b!5506892))

(assert (= (and b!5506894 (not c!962196)) b!5506890))

(assert (= (and b!5506892 res!2346838) b!5506898))

(assert (= (and b!5506890 c!962195) b!5506893))

(assert (= (and b!5506890 (not c!962195)) b!5506895))

(assert (= (and b!5506893 res!2346839) b!5506896))

(assert (= (and b!5506895 (not res!2346840)) b!5506897))

(assert (= (and b!5506897 res!2346837) b!5506891))

(assert (= (or b!5506896 b!5506891) bm!406925))

(assert (= (or b!5506893 b!5506897) bm!406926))

(assert (= (or b!5506898 bm!406926) bm!406924))

(declare-fun m!6513238 () Bool)

(assert (=> b!5506892 m!6513238))

(declare-fun m!6513240 () Bool)

(assert (=> bm!406924 m!6513240))

(declare-fun m!6513242 () Bool)

(assert (=> bm!406925 m!6513242))

(assert (=> bm!406829 d!1745186))

(declare-fun b!5506900 () Bool)

(declare-fun e!3405964 () Bool)

(declare-fun call!406934 () Bool)

(assert (=> b!5506900 (= e!3405964 call!406934)))

(declare-fun b!5506901 () Bool)

(declare-fun e!3405959 () Bool)

(declare-fun e!3405958 () Bool)

(assert (=> b!5506901 (= e!3405959 e!3405958)))

(declare-fun res!2346843 () Bool)

(assert (=> b!5506901 (= res!2346843 (not (nullable!5523 (reg!15818 lt!2244432))))))

(assert (=> b!5506901 (=> (not res!2346843) (not e!3405958))))

(declare-fun b!5506902 () Bool)

(declare-fun res!2346844 () Bool)

(declare-fun e!3405962 () Bool)

(assert (=> b!5506902 (=> (not res!2346844) (not e!3405962))))

(declare-fun call!406933 () Bool)

(assert (=> b!5506902 (= res!2346844 call!406933)))

(declare-fun e!3405961 () Bool)

(assert (=> b!5506902 (= e!3405961 e!3405962)))

(declare-fun b!5506903 () Bool)

(declare-fun e!3405963 () Bool)

(assert (=> b!5506903 (= e!3405963 e!3405959)))

(declare-fun c!962198 () Bool)

(assert (=> b!5506903 (= c!962198 ((_ is Star!15489) lt!2244432))))

(declare-fun bm!406927 () Bool)

(declare-fun c!962197 () Bool)

(declare-fun call!406932 () Bool)

(assert (=> bm!406927 (= call!406932 (validRegex!7225 (ite c!962198 (reg!15818 lt!2244432) (ite c!962197 (regOne!31491 lt!2244432) (regOne!31490 lt!2244432)))))))

(declare-fun bm!406928 () Bool)

(assert (=> bm!406928 (= call!406934 (validRegex!7225 (ite c!962197 (regTwo!31491 lt!2244432) (regTwo!31490 lt!2244432))))))

(declare-fun b!5506904 () Bool)

(declare-fun res!2346845 () Bool)

(declare-fun e!3405960 () Bool)

(assert (=> b!5506904 (=> res!2346845 e!3405960)))

(assert (=> b!5506904 (= res!2346845 (not ((_ is Concat!24334) lt!2244432)))))

(assert (=> b!5506904 (= e!3405961 e!3405960)))

(declare-fun b!5506905 () Bool)

(assert (=> b!5506905 (= e!3405962 call!406934)))

(declare-fun b!5506906 () Bool)

(assert (=> b!5506906 (= e!3405960 e!3405964)))

(declare-fun res!2346842 () Bool)

(assert (=> b!5506906 (=> (not res!2346842) (not e!3405964))))

(assert (=> b!5506906 (= res!2346842 call!406933)))

(declare-fun b!5506899 () Bool)

(assert (=> b!5506899 (= e!3405959 e!3405961)))

(assert (=> b!5506899 (= c!962197 ((_ is Union!15489) lt!2244432))))

(declare-fun d!1745188 () Bool)

(declare-fun res!2346846 () Bool)

(assert (=> d!1745188 (=> res!2346846 e!3405963)))

(assert (=> d!1745188 (= res!2346846 ((_ is ElementMatch!15489) lt!2244432))))

(assert (=> d!1745188 (= (validRegex!7225 lt!2244432) e!3405963)))

(declare-fun bm!406929 () Bool)

(assert (=> bm!406929 (= call!406933 call!406932)))

(declare-fun b!5506907 () Bool)

(assert (=> b!5506907 (= e!3405958 call!406932)))

(assert (= (and d!1745188 (not res!2346846)) b!5506903))

(assert (= (and b!5506903 c!962198) b!5506901))

(assert (= (and b!5506903 (not c!962198)) b!5506899))

(assert (= (and b!5506901 res!2346843) b!5506907))

(assert (= (and b!5506899 c!962197) b!5506902))

(assert (= (and b!5506899 (not c!962197)) b!5506904))

(assert (= (and b!5506902 res!2346844) b!5506905))

(assert (= (and b!5506904 (not res!2346845)) b!5506906))

(assert (= (and b!5506906 res!2346842) b!5506900))

(assert (= (or b!5506905 b!5506900) bm!406928))

(assert (= (or b!5506902 b!5506906) bm!406929))

(assert (= (or b!5506907 bm!406929) bm!406927))

(declare-fun m!6513244 () Bool)

(assert (=> b!5506901 m!6513244))

(declare-fun m!6513246 () Bool)

(assert (=> bm!406927 m!6513246))

(declare-fun m!6513248 () Bool)

(assert (=> bm!406928 m!6513248))

(assert (=> d!1745124 d!1745188))

(declare-fun d!1745190 () Bool)

(declare-fun res!2346847 () Bool)

(declare-fun e!3405965 () Bool)

(assert (=> d!1745190 (=> res!2346847 e!3405965)))

(assert (=> d!1745190 (= res!2346847 ((_ is Nil!62642) (exprs!5373 (h!69091 zl!343))))))

(assert (=> d!1745190 (= (forall!14669 (exprs!5373 (h!69091 zl!343)) lambda!294911) e!3405965)))

(declare-fun b!5506908 () Bool)

(declare-fun e!3405966 () Bool)

(assert (=> b!5506908 (= e!3405965 e!3405966)))

(declare-fun res!2346848 () Bool)

(assert (=> b!5506908 (=> (not res!2346848) (not e!3405966))))

(assert (=> b!5506908 (= res!2346848 (dynLambda!24475 lambda!294911 (h!69090 (exprs!5373 (h!69091 zl!343)))))))

(declare-fun b!5506909 () Bool)

(assert (=> b!5506909 (= e!3405966 (forall!14669 (t!376007 (exprs!5373 (h!69091 zl!343))) lambda!294911))))

(assert (= (and d!1745190 (not res!2346847)) b!5506908))

(assert (= (and b!5506908 res!2346848) b!5506909))

(declare-fun b_lambda!208805 () Bool)

(assert (=> (not b_lambda!208805) (not b!5506908)))

(declare-fun m!6513250 () Bool)

(assert (=> b!5506908 m!6513250))

(declare-fun m!6513252 () Bool)

(assert (=> b!5506909 m!6513252))

(assert (=> d!1745124 d!1745190))

(declare-fun bs!1269887 () Bool)

(declare-fun b!5506919 () Bool)

(assert (= bs!1269887 (and b!5506919 d!1745084)))

(declare-fun lambda!294916 () Int)

(assert (=> bs!1269887 (not (= lambda!294916 lambda!294880))))

(declare-fun bs!1269888 () Bool)

(assert (= bs!1269888 (and b!5506919 b!5506764)))

(assert (=> bs!1269888 (= (and (= (reg!15818 (regOne!31491 r!7292)) (reg!15818 (regTwo!31491 r!7292))) (= (regOne!31491 r!7292) (regTwo!31491 r!7292))) (= lambda!294916 lambda!294912))))

(declare-fun bs!1269889 () Bool)

(assert (= bs!1269889 (and b!5506919 b!5506579)))

(assert (=> bs!1269889 (= (and (= (reg!15818 (regOne!31491 r!7292)) (reg!15818 r!7292)) (= (regOne!31491 r!7292) r!7292)) (= lambda!294916 lambda!294907))))

(declare-fun bs!1269890 () Bool)

(assert (= bs!1269890 (and b!5506919 d!1745092)))

(assert (=> bs!1269890 (not (= lambda!294916 lambda!294889))))

(declare-fun bs!1269891 () Bool)

(assert (= bs!1269891 (and b!5506919 b!5506762)))

(assert (=> bs!1269891 (not (= lambda!294916 lambda!294913))))

(declare-fun bs!1269892 () Bool)

(assert (= bs!1269892 (and b!5506919 b!5506103)))

(assert (=> bs!1269892 (not (= lambda!294916 lambda!294854))))

(assert (=> bs!1269892 (not (= lambda!294916 lambda!294855))))

(declare-fun bs!1269893 () Bool)

(assert (= bs!1269893 (and b!5506919 b!5506577)))

(assert (=> bs!1269893 (not (= lambda!294916 lambda!294908))))

(assert (=> bs!1269890 (not (= lambda!294916 lambda!294886))))

(assert (=> b!5506919 true))

(assert (=> b!5506919 true))

(declare-fun bs!1269894 () Bool)

(declare-fun b!5506917 () Bool)

(assert (= bs!1269894 (and b!5506917 d!1745084)))

(declare-fun lambda!294917 () Int)

(assert (=> bs!1269894 (not (= lambda!294917 lambda!294880))))

(declare-fun bs!1269895 () Bool)

(assert (= bs!1269895 (and b!5506917 b!5506764)))

(assert (=> bs!1269895 (not (= lambda!294917 lambda!294912))))

(declare-fun bs!1269896 () Bool)

(assert (= bs!1269896 (and b!5506917 d!1745092)))

(assert (=> bs!1269896 (= (and (= (regOne!31490 (regOne!31491 r!7292)) (regOne!31490 r!7292)) (= (regTwo!31490 (regOne!31491 r!7292)) (regTwo!31490 r!7292))) (= lambda!294917 lambda!294889))))

(declare-fun bs!1269897 () Bool)

(assert (= bs!1269897 (and b!5506917 b!5506579)))

(assert (=> bs!1269897 (not (= lambda!294917 lambda!294907))))

(declare-fun bs!1269898 () Bool)

(assert (= bs!1269898 (and b!5506917 b!5506919)))

(assert (=> bs!1269898 (not (= lambda!294917 lambda!294916))))

(declare-fun bs!1269899 () Bool)

(assert (= bs!1269899 (and b!5506917 b!5506762)))

(assert (=> bs!1269899 (= (and (= (regOne!31490 (regOne!31491 r!7292)) (regOne!31490 (regTwo!31491 r!7292))) (= (regTwo!31490 (regOne!31491 r!7292)) (regTwo!31490 (regTwo!31491 r!7292)))) (= lambda!294917 lambda!294913))))

(declare-fun bs!1269900 () Bool)

(assert (= bs!1269900 (and b!5506917 b!5506103)))

(assert (=> bs!1269900 (not (= lambda!294917 lambda!294854))))

(assert (=> bs!1269900 (= (and (= (regOne!31490 (regOne!31491 r!7292)) (regOne!31490 r!7292)) (= (regTwo!31490 (regOne!31491 r!7292)) (regTwo!31490 r!7292))) (= lambda!294917 lambda!294855))))

(declare-fun bs!1269901 () Bool)

(assert (= bs!1269901 (and b!5506917 b!5506577)))

(assert (=> bs!1269901 (= (and (= (regOne!31490 (regOne!31491 r!7292)) (regOne!31490 r!7292)) (= (regTwo!31490 (regOne!31491 r!7292)) (regTwo!31490 r!7292))) (= lambda!294917 lambda!294908))))

(assert (=> bs!1269896 (not (= lambda!294917 lambda!294886))))

(assert (=> b!5506917 true))

(assert (=> b!5506917 true))

(declare-fun b!5506910 () Bool)

(declare-fun c!962202 () Bool)

(assert (=> b!5506910 (= c!962202 ((_ is ElementMatch!15489) (regOne!31491 r!7292)))))

(declare-fun e!3405970 () Bool)

(declare-fun e!3405969 () Bool)

(assert (=> b!5506910 (= e!3405970 e!3405969)))

(declare-fun b!5506912 () Bool)

(declare-fun e!3405973 () Bool)

(declare-fun e!3405971 () Bool)

(assert (=> b!5506912 (= e!3405973 e!3405971)))

(declare-fun res!2346851 () Bool)

(assert (=> b!5506912 (= res!2346851 (matchRSpec!2592 (regOne!31491 (regOne!31491 r!7292)) s!2326))))

(assert (=> b!5506912 (=> res!2346851 e!3405971)))

(declare-fun b!5506913 () Bool)

(declare-fun c!962199 () Bool)

(assert (=> b!5506913 (= c!962199 ((_ is Union!15489) (regOne!31491 r!7292)))))

(assert (=> b!5506913 (= e!3405969 e!3405973)))

(declare-fun b!5506914 () Bool)

(declare-fun e!3405968 () Bool)

(declare-fun call!406935 () Bool)

(assert (=> b!5506914 (= e!3405968 call!406935)))

(declare-fun bm!406930 () Bool)

(assert (=> bm!406930 (= call!406935 (isEmpty!34422 s!2326))))

(declare-fun b!5506915 () Bool)

(declare-fun e!3405972 () Bool)

(assert (=> b!5506915 (= e!3405973 e!3405972)))

(declare-fun c!962201 () Bool)

(assert (=> b!5506915 (= c!962201 ((_ is Star!15489) (regOne!31491 r!7292)))))

(declare-fun b!5506916 () Bool)

(assert (=> b!5506916 (= e!3405968 e!3405970)))

(declare-fun res!2346849 () Bool)

(assert (=> b!5506916 (= res!2346849 (not ((_ is EmptyLang!15489) (regOne!31491 r!7292))))))

(assert (=> b!5506916 (=> (not res!2346849) (not e!3405970))))

(declare-fun call!406936 () Bool)

(assert (=> b!5506917 (= e!3405972 call!406936)))

(declare-fun d!1745192 () Bool)

(declare-fun c!962200 () Bool)

(assert (=> d!1745192 (= c!962200 ((_ is EmptyExpr!15489) (regOne!31491 r!7292)))))

(assert (=> d!1745192 (= (matchRSpec!2592 (regOne!31491 r!7292) s!2326) e!3405968)))

(declare-fun b!5506911 () Bool)

(declare-fun res!2346850 () Bool)

(declare-fun e!3405967 () Bool)

(assert (=> b!5506911 (=> res!2346850 e!3405967)))

(assert (=> b!5506911 (= res!2346850 call!406935)))

(assert (=> b!5506911 (= e!3405972 e!3405967)))

(declare-fun b!5506918 () Bool)

(assert (=> b!5506918 (= e!3405969 (= s!2326 (Cons!62644 (c!961989 (regOne!31491 r!7292)) Nil!62644)))))

(assert (=> b!5506919 (= e!3405967 call!406936)))

(declare-fun bm!406931 () Bool)

(assert (=> bm!406931 (= call!406936 (Exists!2589 (ite c!962201 lambda!294916 lambda!294917)))))

(declare-fun b!5506920 () Bool)

(assert (=> b!5506920 (= e!3405971 (matchRSpec!2592 (regTwo!31491 (regOne!31491 r!7292)) s!2326))))

(assert (= (and d!1745192 c!962200) b!5506914))

(assert (= (and d!1745192 (not c!962200)) b!5506916))

(assert (= (and b!5506916 res!2346849) b!5506910))

(assert (= (and b!5506910 c!962202) b!5506918))

(assert (= (and b!5506910 (not c!962202)) b!5506913))

(assert (= (and b!5506913 c!962199) b!5506912))

(assert (= (and b!5506913 (not c!962199)) b!5506915))

(assert (= (and b!5506912 (not res!2346851)) b!5506920))

(assert (= (and b!5506915 c!962201) b!5506911))

(assert (= (and b!5506915 (not c!962201)) b!5506917))

(assert (= (and b!5506911 (not res!2346850)) b!5506919))

(assert (= (or b!5506919 b!5506917) bm!406931))

(assert (= (or b!5506914 b!5506911) bm!406930))

(declare-fun m!6513254 () Bool)

(assert (=> b!5506912 m!6513254))

(assert (=> bm!406930 m!6513040))

(declare-fun m!6513256 () Bool)

(assert (=> bm!406931 m!6513256))

(declare-fun m!6513258 () Bool)

(assert (=> b!5506920 m!6513258))

(assert (=> b!5506572 d!1745192))

(declare-fun d!1745194 () Bool)

(assert (=> d!1745194 (= (isEmptyLang!1078 lt!2244417) ((_ is EmptyLang!15489) lt!2244417))))

(assert (=> b!5506460 d!1745194))

(declare-fun d!1745196 () Bool)

(declare-fun res!2346856 () Bool)

(declare-fun e!3405978 () Bool)

(assert (=> d!1745196 (=> res!2346856 e!3405978)))

(assert (=> d!1745196 (= res!2346856 ((_ is Nil!62643) lt!2244366))))

(assert (=> d!1745196 (= (noDuplicate!1488 lt!2244366) e!3405978)))

(declare-fun b!5506925 () Bool)

(declare-fun e!3405979 () Bool)

(assert (=> b!5506925 (= e!3405978 e!3405979)))

(declare-fun res!2346857 () Bool)

(assert (=> b!5506925 (=> (not res!2346857) (not e!3405979))))

(declare-fun contains!19776 (List!62767 Context!9746) Bool)

(assert (=> b!5506925 (= res!2346857 (not (contains!19776 (t!376008 lt!2244366) (h!69091 lt!2244366))))))

(declare-fun b!5506926 () Bool)

(assert (=> b!5506926 (= e!3405979 (noDuplicate!1488 (t!376008 lt!2244366)))))

(assert (= (and d!1745196 (not res!2346856)) b!5506925))

(assert (= (and b!5506925 res!2346857) b!5506926))

(declare-fun m!6513260 () Bool)

(assert (=> b!5506925 m!6513260))

(declare-fun m!6513262 () Bool)

(assert (=> b!5506926 m!6513262))

(assert (=> d!1745054 d!1745196))

(declare-fun d!1745198 () Bool)

(declare-fun e!3405986 () Bool)

(assert (=> d!1745198 e!3405986))

(declare-fun res!2346863 () Bool)

(assert (=> d!1745198 (=> (not res!2346863) (not e!3405986))))

(declare-fun res!2346862 () List!62767)

(assert (=> d!1745198 (= res!2346863 (noDuplicate!1488 res!2346862))))

(declare-fun e!3405987 () Bool)

(assert (=> d!1745198 e!3405987))

(assert (=> d!1745198 (= (choose!41833 z!1189) res!2346862)))

(declare-fun b!5506934 () Bool)

(declare-fun e!3405988 () Bool)

(declare-fun tp!1515165 () Bool)

(assert (=> b!5506934 (= e!3405988 tp!1515165)))

(declare-fun b!5506933 () Bool)

(declare-fun tp!1515164 () Bool)

(assert (=> b!5506933 (= e!3405987 (and (inv!81969 (h!69091 res!2346862)) e!3405988 tp!1515164))))

(declare-fun b!5506935 () Bool)

(assert (=> b!5506935 (= e!3405986 (= (content!11249 res!2346862) z!1189))))

(assert (= b!5506933 b!5506934))

(assert (= (and d!1745198 ((_ is Cons!62643) res!2346862)) b!5506933))

(assert (= (and d!1745198 res!2346863) b!5506935))

(declare-fun m!6513264 () Bool)

(assert (=> d!1745198 m!6513264))

(declare-fun m!6513266 () Bool)

(assert (=> b!5506933 m!6513266))

(declare-fun m!6513268 () Bool)

(assert (=> b!5506935 m!6513268))

(assert (=> d!1745054 d!1745198))

(declare-fun b!5506937 () Bool)

(declare-fun e!3405995 () Bool)

(declare-fun call!406939 () Bool)

(assert (=> b!5506937 (= e!3405995 call!406939)))

(declare-fun b!5506938 () Bool)

(declare-fun e!3405990 () Bool)

(declare-fun e!3405989 () Bool)

(assert (=> b!5506938 (= e!3405990 e!3405989)))

(declare-fun res!2346865 () Bool)

(assert (=> b!5506938 (= res!2346865 (not (nullable!5523 (reg!15818 lt!2244435))))))

(assert (=> b!5506938 (=> (not res!2346865) (not e!3405989))))

(declare-fun b!5506939 () Bool)

(declare-fun res!2346866 () Bool)

(declare-fun e!3405993 () Bool)

(assert (=> b!5506939 (=> (not res!2346866) (not e!3405993))))

(declare-fun call!406938 () Bool)

(assert (=> b!5506939 (= res!2346866 call!406938)))

(declare-fun e!3405992 () Bool)

(assert (=> b!5506939 (= e!3405992 e!3405993)))

(declare-fun b!5506940 () Bool)

(declare-fun e!3405994 () Bool)

(assert (=> b!5506940 (= e!3405994 e!3405990)))

(declare-fun c!962204 () Bool)

(assert (=> b!5506940 (= c!962204 ((_ is Star!15489) lt!2244435))))

(declare-fun c!962203 () Bool)

(declare-fun call!406937 () Bool)

(declare-fun bm!406932 () Bool)

(assert (=> bm!406932 (= call!406937 (validRegex!7225 (ite c!962204 (reg!15818 lt!2244435) (ite c!962203 (regOne!31491 lt!2244435) (regOne!31490 lt!2244435)))))))

(declare-fun bm!406933 () Bool)

(assert (=> bm!406933 (= call!406939 (validRegex!7225 (ite c!962203 (regTwo!31491 lt!2244435) (regTwo!31490 lt!2244435))))))

(declare-fun b!5506941 () Bool)

(declare-fun res!2346867 () Bool)

(declare-fun e!3405991 () Bool)

(assert (=> b!5506941 (=> res!2346867 e!3405991)))

(assert (=> b!5506941 (= res!2346867 (not ((_ is Concat!24334) lt!2244435)))))

(assert (=> b!5506941 (= e!3405992 e!3405991)))

(declare-fun b!5506942 () Bool)

(assert (=> b!5506942 (= e!3405993 call!406939)))

(declare-fun b!5506943 () Bool)

(assert (=> b!5506943 (= e!3405991 e!3405995)))

(declare-fun res!2346864 () Bool)

(assert (=> b!5506943 (=> (not res!2346864) (not e!3405995))))

(assert (=> b!5506943 (= res!2346864 call!406938)))

(declare-fun b!5506936 () Bool)

(assert (=> b!5506936 (= e!3405990 e!3405992)))

(assert (=> b!5506936 (= c!962203 ((_ is Union!15489) lt!2244435))))

(declare-fun d!1745200 () Bool)

(declare-fun res!2346868 () Bool)

(assert (=> d!1745200 (=> res!2346868 e!3405994)))

(assert (=> d!1745200 (= res!2346868 ((_ is ElementMatch!15489) lt!2244435))))

(assert (=> d!1745200 (= (validRegex!7225 lt!2244435) e!3405994)))

(declare-fun bm!406934 () Bool)

(assert (=> bm!406934 (= call!406938 call!406937)))

(declare-fun b!5506944 () Bool)

(assert (=> b!5506944 (= e!3405989 call!406937)))

(assert (= (and d!1745200 (not res!2346868)) b!5506940))

(assert (= (and b!5506940 c!962204) b!5506938))

(assert (= (and b!5506940 (not c!962204)) b!5506936))

(assert (= (and b!5506938 res!2346865) b!5506944))

(assert (= (and b!5506936 c!962203) b!5506939))

(assert (= (and b!5506936 (not c!962203)) b!5506941))

(assert (= (and b!5506939 res!2346866) b!5506942))

(assert (= (and b!5506941 (not res!2346867)) b!5506943))

(assert (= (and b!5506943 res!2346864) b!5506937))

(assert (= (or b!5506942 b!5506937) bm!406933))

(assert (= (or b!5506939 b!5506943) bm!406934))

(assert (= (or b!5506944 bm!406934) bm!406932))

(declare-fun m!6513270 () Bool)

(assert (=> b!5506938 m!6513270))

(declare-fun m!6513272 () Bool)

(assert (=> bm!406932 m!6513272))

(declare-fun m!6513274 () Bool)

(assert (=> bm!406933 m!6513274))

(assert (=> d!1745126 d!1745200))

(assert (=> d!1745126 d!1745108))

(assert (=> d!1745126 d!1745114))

(assert (=> b!5506482 d!1745124))

(declare-fun bs!1269902 () Bool)

(declare-fun d!1745202 () Bool)

(assert (= bs!1269902 (and d!1745202 d!1745066)))

(declare-fun lambda!294918 () Int)

(assert (=> bs!1269902 (= lambda!294918 lambda!294864)))

(declare-fun bs!1269903 () Bool)

(assert (= bs!1269903 (and d!1745202 d!1745108)))

(assert (=> bs!1269903 (= lambda!294918 lambda!294893)))

(declare-fun bs!1269904 () Bool)

(assert (= bs!1269904 (and d!1745202 d!1745052)))

(assert (=> bs!1269904 (= lambda!294918 lambda!294858)))

(declare-fun bs!1269905 () Bool)

(assert (= bs!1269905 (and d!1745202 d!1745144)))

(assert (=> bs!1269905 (= lambda!294918 lambda!294915)))

(declare-fun bs!1269906 () Bool)

(assert (= bs!1269906 (and d!1745202 d!1745124)))

(assert (=> bs!1269906 (= lambda!294918 lambda!294911)))

(declare-fun bs!1269907 () Bool)

(assert (= bs!1269907 (and d!1745202 d!1745142)))

(assert (=> bs!1269907 (= lambda!294918 lambda!294914)))

(declare-fun bs!1269908 () Bool)

(assert (= bs!1269908 (and d!1745202 d!1745114)))

(assert (=> bs!1269908 (= lambda!294918 lambda!294902)))

(declare-fun lt!2244453 () List!62766)

(assert (=> d!1745202 (forall!14669 lt!2244453 lambda!294918)))

(declare-fun e!3405996 () List!62766)

(assert (=> d!1745202 (= lt!2244453 e!3405996)))

(declare-fun c!962205 () Bool)

(assert (=> d!1745202 (= c!962205 ((_ is Cons!62643) (t!376008 zl!343)))))

(assert (=> d!1745202 (= (unfocusZipperList!917 (t!376008 zl!343)) lt!2244453)))

(declare-fun b!5506945 () Bool)

(assert (=> b!5506945 (= e!3405996 (Cons!62642 (generalisedConcat!1104 (exprs!5373 (h!69091 (t!376008 zl!343)))) (unfocusZipperList!917 (t!376008 (t!376008 zl!343)))))))

(declare-fun b!5506946 () Bool)

(assert (=> b!5506946 (= e!3405996 Nil!62642)))

(assert (= (and d!1745202 c!962205) b!5506945))

(assert (= (and d!1745202 (not c!962205)) b!5506946))

(declare-fun m!6513276 () Bool)

(assert (=> d!1745202 m!6513276))

(declare-fun m!6513278 () Bool)

(assert (=> b!5506945 m!6513278))

(declare-fun m!6513280 () Bool)

(assert (=> b!5506945 m!6513280))

(assert (=> b!5506482 d!1745202))

(assert (=> b!5506621 d!1745156))

(declare-fun d!1745204 () Bool)

(assert (=> d!1745204 (= (isConcat!590 lt!2244432) ((_ is Concat!24334) lt!2244432))))

(assert (=> b!5506652 d!1745204))

(declare-fun d!1745206 () Bool)

(assert (=> d!1745206 true))

(assert (=> d!1745206 true))

(declare-fun res!2346869 () Bool)

(assert (=> d!1745206 (= (choose!41834 lambda!294855) res!2346869)))

(assert (=> d!1745082 d!1745206))

(declare-fun d!1745208 () Bool)

(assert (=> d!1745208 (= (nullable!5523 (regOne!31490 r!7292)) (nullableFct!1654 (regOne!31490 r!7292)))))

(declare-fun bs!1269909 () Bool)

(assert (= bs!1269909 d!1745208))

(declare-fun m!6513282 () Bool)

(assert (=> bs!1269909 m!6513282))

(assert (=> b!5506693 d!1745208))

(declare-fun d!1745210 () Bool)

(declare-fun c!962208 () Bool)

(assert (=> d!1745210 (= c!962208 ((_ is Nil!62643) lt!2244366))))

(declare-fun e!3405999 () (InoxSet Context!9746))

(assert (=> d!1745210 (= (content!11249 lt!2244366) e!3405999)))

(declare-fun b!5506951 () Bool)

(assert (=> b!5506951 (= e!3405999 ((as const (Array Context!9746 Bool)) false))))

(declare-fun b!5506952 () Bool)

(assert (=> b!5506952 (= e!3405999 ((_ map or) (store ((as const (Array Context!9746 Bool)) false) (h!69091 lt!2244366) true) (content!11249 (t!376008 lt!2244366))))))

(assert (= (and d!1745210 c!962208) b!5506951))

(assert (= (and d!1745210 (not c!962208)) b!5506952))

(declare-fun m!6513284 () Bool)

(assert (=> b!5506952 m!6513284))

(declare-fun m!6513286 () Bool)

(assert (=> b!5506952 m!6513286))

(assert (=> b!5506113 d!1745210))

(declare-fun d!1745212 () Bool)

(assert (=> d!1745212 (= (Exists!2589 lambda!294886) (choose!41834 lambda!294886))))

(declare-fun bs!1269910 () Bool)

(assert (= bs!1269910 d!1745212))

(declare-fun m!6513288 () Bool)

(assert (=> bs!1269910 m!6513288))

(assert (=> d!1745092 d!1745212))

(declare-fun d!1745214 () Bool)

(assert (=> d!1745214 (= (Exists!2589 lambda!294889) (choose!41834 lambda!294889))))

(declare-fun bs!1269911 () Bool)

(assert (= bs!1269911 d!1745214))

(declare-fun m!6513290 () Bool)

(assert (=> bs!1269911 m!6513290))

(assert (=> d!1745092 d!1745214))

(declare-fun bs!1269912 () Bool)

(declare-fun d!1745216 () Bool)

(assert (= bs!1269912 (and d!1745216 d!1745084)))

(declare-fun lambda!294923 () Int)

(assert (=> bs!1269912 (= lambda!294923 lambda!294880)))

(declare-fun bs!1269913 () Bool)

(assert (= bs!1269913 (and d!1745216 b!5506764)))

(assert (=> bs!1269913 (not (= lambda!294923 lambda!294912))))

(declare-fun bs!1269914 () Bool)

(assert (= bs!1269914 (and d!1745216 b!5506579)))

(assert (=> bs!1269914 (not (= lambda!294923 lambda!294907))))

(declare-fun bs!1269915 () Bool)

(assert (= bs!1269915 (and d!1745216 b!5506919)))

(assert (=> bs!1269915 (not (= lambda!294923 lambda!294916))))

(declare-fun bs!1269916 () Bool)

(assert (= bs!1269916 (and d!1745216 b!5506762)))

(assert (=> bs!1269916 (not (= lambda!294923 lambda!294913))))

(declare-fun bs!1269917 () Bool)

(assert (= bs!1269917 (and d!1745216 b!5506103)))

(assert (=> bs!1269917 (= lambda!294923 lambda!294854)))

(assert (=> bs!1269917 (not (= lambda!294923 lambda!294855))))

(declare-fun bs!1269918 () Bool)

(assert (= bs!1269918 (and d!1745216 b!5506577)))

(assert (=> bs!1269918 (not (= lambda!294923 lambda!294908))))

(declare-fun bs!1269919 () Bool)

(assert (= bs!1269919 (and d!1745216 d!1745092)))

(assert (=> bs!1269919 (= lambda!294923 lambda!294886)))

(assert (=> bs!1269919 (not (= lambda!294923 lambda!294889))))

(declare-fun bs!1269920 () Bool)

(assert (= bs!1269920 (and d!1745216 b!5506917)))

(assert (=> bs!1269920 (not (= lambda!294923 lambda!294917))))

(assert (=> d!1745216 true))

(assert (=> d!1745216 true))

(assert (=> d!1745216 true))

(declare-fun lambda!294924 () Int)

(assert (=> bs!1269912 (not (= lambda!294924 lambda!294880))))

(assert (=> bs!1269913 (not (= lambda!294924 lambda!294912))))

(declare-fun bs!1269921 () Bool)

(assert (= bs!1269921 d!1745216))

(assert (=> bs!1269921 (not (= lambda!294924 lambda!294923))))

(assert (=> bs!1269914 (not (= lambda!294924 lambda!294907))))

(assert (=> bs!1269915 (not (= lambda!294924 lambda!294916))))

(assert (=> bs!1269916 (= (and (= (regOne!31490 r!7292) (regOne!31490 (regTwo!31491 r!7292))) (= (regTwo!31490 r!7292) (regTwo!31490 (regTwo!31491 r!7292)))) (= lambda!294924 lambda!294913))))

(assert (=> bs!1269917 (not (= lambda!294924 lambda!294854))))

(assert (=> bs!1269917 (= lambda!294924 lambda!294855)))

(assert (=> bs!1269918 (= lambda!294924 lambda!294908)))

(assert (=> bs!1269919 (not (= lambda!294924 lambda!294886))))

(assert (=> bs!1269919 (= lambda!294924 lambda!294889)))

(assert (=> bs!1269920 (= (and (= (regOne!31490 r!7292) (regOne!31490 (regOne!31491 r!7292))) (= (regTwo!31490 r!7292) (regTwo!31490 (regOne!31491 r!7292)))) (= lambda!294924 lambda!294917))))

(assert (=> d!1745216 true))

(assert (=> d!1745216 true))

(assert (=> d!1745216 true))

(assert (=> d!1745216 (= (Exists!2589 lambda!294923) (Exists!2589 lambda!294924))))

(assert (=> d!1745216 true))

(declare-fun _$90!1211 () Unit!155438)

(assert (=> d!1745216 (= (choose!41838 (regOne!31490 r!7292) (regTwo!31490 r!7292) s!2326) _$90!1211)))

(declare-fun m!6513292 () Bool)

(assert (=> bs!1269921 m!6513292))

(declare-fun m!6513294 () Bool)

(assert (=> bs!1269921 m!6513294))

(assert (=> d!1745092 d!1745216))

(declare-fun b!5506962 () Bool)

(declare-fun e!3406010 () Bool)

(declare-fun call!406942 () Bool)

(assert (=> b!5506962 (= e!3406010 call!406942)))

(declare-fun b!5506963 () Bool)

(declare-fun e!3406005 () Bool)

(declare-fun e!3406004 () Bool)

(assert (=> b!5506963 (= e!3406005 e!3406004)))

(declare-fun res!2346879 () Bool)

(assert (=> b!5506963 (= res!2346879 (not (nullable!5523 (reg!15818 (regOne!31490 r!7292)))))))

(assert (=> b!5506963 (=> (not res!2346879) (not e!3406004))))

(declare-fun b!5506964 () Bool)

(declare-fun res!2346880 () Bool)

(declare-fun e!3406008 () Bool)

(assert (=> b!5506964 (=> (not res!2346880) (not e!3406008))))

(declare-fun call!406941 () Bool)

(assert (=> b!5506964 (= res!2346880 call!406941)))

(declare-fun e!3406007 () Bool)

(assert (=> b!5506964 (= e!3406007 e!3406008)))

(declare-fun b!5506965 () Bool)

(declare-fun e!3406009 () Bool)

(assert (=> b!5506965 (= e!3406009 e!3406005)))

(declare-fun c!962210 () Bool)

(assert (=> b!5506965 (= c!962210 ((_ is Star!15489) (regOne!31490 r!7292)))))

(declare-fun c!962209 () Bool)

(declare-fun call!406940 () Bool)

(declare-fun bm!406935 () Bool)

(assert (=> bm!406935 (= call!406940 (validRegex!7225 (ite c!962210 (reg!15818 (regOne!31490 r!7292)) (ite c!962209 (regOne!31491 (regOne!31490 r!7292)) (regOne!31490 (regOne!31490 r!7292))))))))

(declare-fun bm!406936 () Bool)

(assert (=> bm!406936 (= call!406942 (validRegex!7225 (ite c!962209 (regTwo!31491 (regOne!31490 r!7292)) (regTwo!31490 (regOne!31490 r!7292)))))))

(declare-fun b!5506966 () Bool)

(declare-fun res!2346881 () Bool)

(declare-fun e!3406006 () Bool)

(assert (=> b!5506966 (=> res!2346881 e!3406006)))

(assert (=> b!5506966 (= res!2346881 (not ((_ is Concat!24334) (regOne!31490 r!7292))))))

(assert (=> b!5506966 (= e!3406007 e!3406006)))

(declare-fun b!5506967 () Bool)

(assert (=> b!5506967 (= e!3406008 call!406942)))

(declare-fun b!5506968 () Bool)

(assert (=> b!5506968 (= e!3406006 e!3406010)))

(declare-fun res!2346878 () Bool)

(assert (=> b!5506968 (=> (not res!2346878) (not e!3406010))))

(assert (=> b!5506968 (= res!2346878 call!406941)))

(declare-fun b!5506961 () Bool)

(assert (=> b!5506961 (= e!3406005 e!3406007)))

(assert (=> b!5506961 (= c!962209 ((_ is Union!15489) (regOne!31490 r!7292)))))

(declare-fun d!1745218 () Bool)

(declare-fun res!2346882 () Bool)

(assert (=> d!1745218 (=> res!2346882 e!3406009)))

(assert (=> d!1745218 (= res!2346882 ((_ is ElementMatch!15489) (regOne!31490 r!7292)))))

(assert (=> d!1745218 (= (validRegex!7225 (regOne!31490 r!7292)) e!3406009)))

(declare-fun bm!406937 () Bool)

(assert (=> bm!406937 (= call!406941 call!406940)))

(declare-fun b!5506969 () Bool)

(assert (=> b!5506969 (= e!3406004 call!406940)))

(assert (= (and d!1745218 (not res!2346882)) b!5506965))

(assert (= (and b!5506965 c!962210) b!5506963))

(assert (= (and b!5506965 (not c!962210)) b!5506961))

(assert (= (and b!5506963 res!2346879) b!5506969))

(assert (= (and b!5506961 c!962209) b!5506964))

(assert (= (and b!5506961 (not c!962209)) b!5506966))

(assert (= (and b!5506964 res!2346880) b!5506967))

(assert (= (and b!5506966 (not res!2346881)) b!5506968))

(assert (= (and b!5506968 res!2346878) b!5506962))

(assert (= (or b!5506967 b!5506962) bm!406936))

(assert (= (or b!5506964 b!5506968) bm!406937))

(assert (= (or b!5506969 bm!406937) bm!406935))

(declare-fun m!6513296 () Bool)

(assert (=> b!5506963 m!6513296))

(declare-fun m!6513298 () Bool)

(assert (=> bm!406935 m!6513298))

(declare-fun m!6513300 () Bool)

(assert (=> bm!406936 m!6513300))

(assert (=> d!1745092 d!1745218))

(declare-fun d!1745220 () Bool)

(assert (=> d!1745220 (= (isEmpty!34422 s!2326) ((_ is Nil!62644) s!2326))))

(assert (=> bm!406879 d!1745220))

(declare-fun d!1745222 () Bool)

(assert (=> d!1745222 (= (head!11793 (exprs!5373 (h!69091 zl!343))) (h!69090 (exprs!5373 (h!69091 zl!343))))))

(assert (=> b!5506650 d!1745222))

(declare-fun d!1745224 () Bool)

(declare-fun res!2346883 () Bool)

(declare-fun e!3406011 () Bool)

(assert (=> d!1745224 (=> res!2346883 e!3406011)))

(assert (=> d!1745224 (= res!2346883 ((_ is Nil!62642) lt!2244423))))

(assert (=> d!1745224 (= (forall!14669 lt!2244423 lambda!294902) e!3406011)))

(declare-fun b!5506970 () Bool)

(declare-fun e!3406012 () Bool)

(assert (=> b!5506970 (= e!3406011 e!3406012)))

(declare-fun res!2346884 () Bool)

(assert (=> b!5506970 (=> (not res!2346884) (not e!3406012))))

(assert (=> b!5506970 (= res!2346884 (dynLambda!24475 lambda!294902 (h!69090 lt!2244423)))))

(declare-fun b!5506971 () Bool)

(assert (=> b!5506971 (= e!3406012 (forall!14669 (t!376007 lt!2244423) lambda!294902))))

(assert (= (and d!1745224 (not res!2346883)) b!5506970))

(assert (= (and b!5506970 res!2346884) b!5506971))

(declare-fun b_lambda!208807 () Bool)

(assert (=> (not b_lambda!208807) (not b!5506970)))

(declare-fun m!6513302 () Bool)

(assert (=> b!5506970 m!6513302))

(declare-fun m!6513304 () Bool)

(assert (=> b!5506971 m!6513304))

(assert (=> d!1745114 d!1745224))

(declare-fun d!1745226 () Bool)

(assert (=> d!1745226 (= (Exists!2589 (ite c!962108 lambda!294907 lambda!294908)) (choose!41834 (ite c!962108 lambda!294907 lambda!294908)))))

(declare-fun bs!1269922 () Bool)

(assert (= bs!1269922 d!1745226))

(declare-fun m!6513306 () Bool)

(assert (=> bs!1269922 m!6513306))

(assert (=> bm!406876 d!1745226))

(declare-fun d!1745228 () Bool)

(assert (=> d!1745228 (= (isEmptyExpr!1067 lt!2244432) ((_ is EmptyExpr!15489) lt!2244432))))

(assert (=> b!5506648 d!1745228))

(assert (=> b!5506614 d!1745136))

(assert (=> b!5506614 d!1745138))

(declare-fun d!1745230 () Bool)

(assert (=> d!1745230 (= (isEmpty!34418 (tail!10888 (exprs!5373 (h!69091 zl!343)))) ((_ is Nil!62642) (tail!10888 (exprs!5373 (h!69091 zl!343)))))))

(assert (=> b!5506644 d!1745230))

(declare-fun d!1745232 () Bool)

(assert (=> d!1745232 (= (tail!10888 (exprs!5373 (h!69091 zl!343))) (t!376007 (exprs!5373 (h!69091 zl!343))))))

(assert (=> b!5506644 d!1745232))

(declare-fun bs!1269923 () Bool)

(declare-fun d!1745234 () Bool)

(assert (= bs!1269923 (and d!1745234 d!1745066)))

(declare-fun lambda!294925 () Int)

(assert (=> bs!1269923 (= lambda!294925 lambda!294864)))

(declare-fun bs!1269924 () Bool)

(assert (= bs!1269924 (and d!1745234 d!1745108)))

(assert (=> bs!1269924 (= lambda!294925 lambda!294893)))

(declare-fun bs!1269925 () Bool)

(assert (= bs!1269925 (and d!1745234 d!1745052)))

(assert (=> bs!1269925 (= lambda!294925 lambda!294858)))

(declare-fun bs!1269926 () Bool)

(assert (= bs!1269926 (and d!1745234 d!1745124)))

(assert (=> bs!1269926 (= lambda!294925 lambda!294911)))

(declare-fun bs!1269927 () Bool)

(assert (= bs!1269927 (and d!1745234 d!1745144)))

(assert (=> bs!1269927 (= lambda!294925 lambda!294915)))

(declare-fun bs!1269928 () Bool)

(assert (= bs!1269928 (and d!1745234 d!1745202)))

(assert (=> bs!1269928 (= lambda!294925 lambda!294918)))

(declare-fun bs!1269929 () Bool)

(assert (= bs!1269929 (and d!1745234 d!1745142)))

(assert (=> bs!1269929 (= lambda!294925 lambda!294914)))

(declare-fun bs!1269930 () Bool)

(assert (= bs!1269930 (and d!1745234 d!1745114)))

(assert (=> bs!1269930 (= lambda!294925 lambda!294902)))

(assert (=> d!1745234 (= (inv!81969 (h!69091 (t!376008 zl!343))) (forall!14669 (exprs!5373 (h!69091 (t!376008 zl!343))) lambda!294925))))

(declare-fun bs!1269931 () Bool)

(assert (= bs!1269931 d!1745234))

(declare-fun m!6513308 () Bool)

(assert (=> bs!1269931 m!6513308))

(assert (=> b!5506731 d!1745234))

(assert (=> d!1745122 d!1745120))

(assert (=> d!1745122 d!1745118))

(declare-fun d!1745236 () Bool)

(assert (=> d!1745236 (= (matchR!7674 r!7292 s!2326) (matchRSpec!2592 r!7292 s!2326))))

(assert (=> d!1745236 true))

(declare-fun _$88!3757 () Unit!155438)

(assert (=> d!1745236 (= (choose!41840 r!7292 s!2326) _$88!3757)))

(declare-fun bs!1269932 () Bool)

(assert (= bs!1269932 d!1745236))

(assert (=> bs!1269932 m!6512782))

(assert (=> bs!1269932 m!6512780))

(assert (=> d!1745122 d!1745236))

(assert (=> d!1745122 d!1745056))

(assert (=> d!1745120 d!1745220))

(assert (=> d!1745120 d!1745056))

(declare-fun bs!1269933 () Bool)

(declare-fun d!1745238 () Bool)

(assert (= bs!1269933 (and d!1745238 d!1745234)))

(declare-fun lambda!294926 () Int)

(assert (=> bs!1269933 (= lambda!294926 lambda!294925)))

(declare-fun bs!1269934 () Bool)

(assert (= bs!1269934 (and d!1745238 d!1745066)))

(assert (=> bs!1269934 (= lambda!294926 lambda!294864)))

(declare-fun bs!1269935 () Bool)

(assert (= bs!1269935 (and d!1745238 d!1745108)))

(assert (=> bs!1269935 (= lambda!294926 lambda!294893)))

(declare-fun bs!1269936 () Bool)

(assert (= bs!1269936 (and d!1745238 d!1745052)))

(assert (=> bs!1269936 (= lambda!294926 lambda!294858)))

(declare-fun bs!1269937 () Bool)

(assert (= bs!1269937 (and d!1745238 d!1745124)))

(assert (=> bs!1269937 (= lambda!294926 lambda!294911)))

(declare-fun bs!1269938 () Bool)

(assert (= bs!1269938 (and d!1745238 d!1745144)))

(assert (=> bs!1269938 (= lambda!294926 lambda!294915)))

(declare-fun bs!1269939 () Bool)

(assert (= bs!1269939 (and d!1745238 d!1745202)))

(assert (=> bs!1269939 (= lambda!294926 lambda!294918)))

(declare-fun bs!1269940 () Bool)

(assert (= bs!1269940 (and d!1745238 d!1745142)))

(assert (=> bs!1269940 (= lambda!294926 lambda!294914)))

(declare-fun bs!1269941 () Bool)

(assert (= bs!1269941 (and d!1745238 d!1745114)))

(assert (=> bs!1269941 (= lambda!294926 lambda!294902)))

(declare-fun b!5506972 () Bool)

(declare-fun e!3406013 () Bool)

(declare-fun lt!2244454 () Regex!15489)

(assert (=> b!5506972 (= e!3406013 (isEmptyLang!1078 lt!2244454))))

(declare-fun b!5506973 () Bool)

(declare-fun e!3406017 () Bool)

(assert (=> b!5506973 (= e!3406013 e!3406017)))

(declare-fun c!962211 () Bool)

(assert (=> b!5506973 (= c!962211 (isEmpty!34418 (tail!10888 (t!376007 (unfocusZipperList!917 zl!343)))))))

(declare-fun b!5506974 () Bool)

(declare-fun e!3406018 () Regex!15489)

(assert (=> b!5506974 (= e!3406018 (h!69090 (t!376007 (unfocusZipperList!917 zl!343))))))

(declare-fun e!3406016 () Bool)

(assert (=> d!1745238 e!3406016))

(declare-fun res!2346885 () Bool)

(assert (=> d!1745238 (=> (not res!2346885) (not e!3406016))))

(assert (=> d!1745238 (= res!2346885 (validRegex!7225 lt!2244454))))

(assert (=> d!1745238 (= lt!2244454 e!3406018)))

(declare-fun c!962212 () Bool)

(declare-fun e!3406014 () Bool)

(assert (=> d!1745238 (= c!962212 e!3406014)))

(declare-fun res!2346886 () Bool)

(assert (=> d!1745238 (=> (not res!2346886) (not e!3406014))))

(assert (=> d!1745238 (= res!2346886 ((_ is Cons!62642) (t!376007 (unfocusZipperList!917 zl!343))))))

(assert (=> d!1745238 (forall!14669 (t!376007 (unfocusZipperList!917 zl!343)) lambda!294926)))

(assert (=> d!1745238 (= (generalisedUnion!1352 (t!376007 (unfocusZipperList!917 zl!343))) lt!2244454)))

(declare-fun b!5506975 () Bool)

(assert (=> b!5506975 (= e!3406017 (= lt!2244454 (head!11793 (t!376007 (unfocusZipperList!917 zl!343)))))))

(declare-fun b!5506976 () Bool)

(declare-fun e!3406015 () Regex!15489)

(assert (=> b!5506976 (= e!3406015 EmptyLang!15489)))

(declare-fun b!5506977 () Bool)

(assert (=> b!5506977 (= e!3406018 e!3406015)))

(declare-fun c!962214 () Bool)

(assert (=> b!5506977 (= c!962214 ((_ is Cons!62642) (t!376007 (unfocusZipperList!917 zl!343))))))

(declare-fun b!5506978 () Bool)

(assert (=> b!5506978 (= e!3406014 (isEmpty!34418 (t!376007 (t!376007 (unfocusZipperList!917 zl!343)))))))

(declare-fun b!5506979 () Bool)

(assert (=> b!5506979 (= e!3406015 (Union!15489 (h!69090 (t!376007 (unfocusZipperList!917 zl!343))) (generalisedUnion!1352 (t!376007 (t!376007 (unfocusZipperList!917 zl!343))))))))

(declare-fun b!5506980 () Bool)

(assert (=> b!5506980 (= e!3406016 e!3406013)))

(declare-fun c!962213 () Bool)

(assert (=> b!5506980 (= c!962213 (isEmpty!34418 (t!376007 (unfocusZipperList!917 zl!343))))))

(declare-fun b!5506981 () Bool)

(assert (=> b!5506981 (= e!3406017 (isUnion!508 lt!2244454))))

(assert (= (and d!1745238 res!2346886) b!5506978))

(assert (= (and d!1745238 c!962212) b!5506974))

(assert (= (and d!1745238 (not c!962212)) b!5506977))

(assert (= (and b!5506977 c!962214) b!5506979))

(assert (= (and b!5506977 (not c!962214)) b!5506976))

(assert (= (and d!1745238 res!2346885) b!5506980))

(assert (= (and b!5506980 c!962213) b!5506972))

(assert (= (and b!5506980 (not c!962213)) b!5506973))

(assert (= (and b!5506973 c!962211) b!5506975))

(assert (= (and b!5506973 (not c!962211)) b!5506981))

(declare-fun m!6513310 () Bool)

(assert (=> b!5506972 m!6513310))

(declare-fun m!6513312 () Bool)

(assert (=> b!5506981 m!6513312))

(declare-fun m!6513314 () Bool)

(assert (=> b!5506973 m!6513314))

(assert (=> b!5506973 m!6513314))

(declare-fun m!6513316 () Bool)

(assert (=> b!5506973 m!6513316))

(declare-fun m!6513318 () Bool)

(assert (=> b!5506978 m!6513318))

(declare-fun m!6513320 () Bool)

(assert (=> b!5506975 m!6513320))

(assert (=> b!5506980 m!6513010))

(declare-fun m!6513322 () Bool)

(assert (=> d!1745238 m!6513322))

(declare-fun m!6513324 () Bool)

(assert (=> d!1745238 m!6513324))

(declare-fun m!6513326 () Bool)

(assert (=> b!5506979 m!6513326))

(assert (=> b!5506467 d!1745238))

(declare-fun call!406943 () (InoxSet Context!9746))

(declare-fun b!5506982 () Bool)

(declare-fun e!3406020 () (InoxSet Context!9746))

(assert (=> b!5506982 (= e!3406020 ((_ map or) call!406943 (derivationStepZipperUp!757 (Context!9747 (t!376007 (exprs!5373 (Context!9747 (t!376007 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642)))))))) (h!69092 s!2326))))))

(declare-fun b!5506983 () Bool)

(declare-fun e!3406019 () (InoxSet Context!9746))

(assert (=> b!5506983 (= e!3406019 call!406943)))

(declare-fun d!1745240 () Bool)

(declare-fun c!962216 () Bool)

(declare-fun e!3406021 () Bool)

(assert (=> d!1745240 (= c!962216 e!3406021)))

(declare-fun res!2346887 () Bool)

(assert (=> d!1745240 (=> (not res!2346887) (not e!3406021))))

(assert (=> d!1745240 (= res!2346887 ((_ is Cons!62642) (exprs!5373 (Context!9747 (t!376007 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))))))))

(assert (=> d!1745240 (= (derivationStepZipperUp!757 (Context!9747 (t!376007 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))) (h!69092 s!2326)) e!3406020)))

(declare-fun bm!406938 () Bool)

(assert (=> bm!406938 (= call!406943 (derivationStepZipperDown!831 (h!69090 (exprs!5373 (Context!9747 (t!376007 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))))) (Context!9747 (t!376007 (exprs!5373 (Context!9747 (t!376007 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642)))))))) (h!69092 s!2326)))))

(declare-fun b!5506984 () Bool)

(assert (=> b!5506984 (= e!3406021 (nullable!5523 (h!69090 (exprs!5373 (Context!9747 (t!376007 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642)))))))))))

(declare-fun b!5506985 () Bool)

(assert (=> b!5506985 (= e!3406020 e!3406019)))

(declare-fun c!962215 () Bool)

(assert (=> b!5506985 (= c!962215 ((_ is Cons!62642) (exprs!5373 (Context!9747 (t!376007 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))))))))

(declare-fun b!5506986 () Bool)

(assert (=> b!5506986 (= e!3406019 ((as const (Array Context!9746 Bool)) false))))

(assert (= (and d!1745240 res!2346887) b!5506984))

(assert (= (and d!1745240 c!962216) b!5506982))

(assert (= (and d!1745240 (not c!962216)) b!5506985))

(assert (= (and b!5506985 c!962215) b!5506983))

(assert (= (and b!5506985 (not c!962215)) b!5506986))

(assert (= (or b!5506982 b!5506983) bm!406938))

(declare-fun m!6513328 () Bool)

(assert (=> b!5506982 m!6513328))

(declare-fun m!6513330 () Bool)

(assert (=> bm!406938 m!6513330))

(declare-fun m!6513332 () Bool)

(assert (=> b!5506984 m!6513332))

(assert (=> b!5506663 d!1745240))

(declare-fun b!5506990 () Bool)

(declare-fun e!3406023 () Bool)

(declare-fun lt!2244455 () List!62768)

(assert (=> b!5506990 (= e!3406023 (or (not (= (_2!35889 (get!21554 lt!2244386)) Nil!62644)) (= lt!2244455 (_1!35889 (get!21554 lt!2244386)))))))

(declare-fun d!1745242 () Bool)

(assert (=> d!1745242 e!3406023))

(declare-fun res!2346888 () Bool)

(assert (=> d!1745242 (=> (not res!2346888) (not e!3406023))))

(assert (=> d!1745242 (= res!2346888 (= (content!11250 lt!2244455) ((_ map or) (content!11250 (_1!35889 (get!21554 lt!2244386))) (content!11250 (_2!35889 (get!21554 lt!2244386))))))))

(declare-fun e!3406022 () List!62768)

(assert (=> d!1745242 (= lt!2244455 e!3406022)))

(declare-fun c!962217 () Bool)

(assert (=> d!1745242 (= c!962217 ((_ is Nil!62644) (_1!35889 (get!21554 lt!2244386))))))

(assert (=> d!1745242 (= (++!13742 (_1!35889 (get!21554 lt!2244386)) (_2!35889 (get!21554 lt!2244386))) lt!2244455)))

(declare-fun b!5506987 () Bool)

(assert (=> b!5506987 (= e!3406022 (_2!35889 (get!21554 lt!2244386)))))

(declare-fun b!5506988 () Bool)

(assert (=> b!5506988 (= e!3406022 (Cons!62644 (h!69092 (_1!35889 (get!21554 lt!2244386))) (++!13742 (t!376009 (_1!35889 (get!21554 lt!2244386))) (_2!35889 (get!21554 lt!2244386)))))))

(declare-fun b!5506989 () Bool)

(declare-fun res!2346889 () Bool)

(assert (=> b!5506989 (=> (not res!2346889) (not e!3406023))))

(assert (=> b!5506989 (= res!2346889 (= (size!39928 lt!2244455) (+ (size!39928 (_1!35889 (get!21554 lt!2244386))) (size!39928 (_2!35889 (get!21554 lt!2244386))))))))

(assert (= (and d!1745242 c!962217) b!5506987))

(assert (= (and d!1745242 (not c!962217)) b!5506988))

(assert (= (and d!1745242 res!2346888) b!5506989))

(assert (= (and b!5506989 res!2346889) b!5506990))

(declare-fun m!6513334 () Bool)

(assert (=> d!1745242 m!6513334))

(declare-fun m!6513336 () Bool)

(assert (=> d!1745242 m!6513336))

(declare-fun m!6513338 () Bool)

(assert (=> d!1745242 m!6513338))

(declare-fun m!6513340 () Bool)

(assert (=> b!5506988 m!6513340))

(declare-fun m!6513342 () Bool)

(assert (=> b!5506989 m!6513342))

(declare-fun m!6513344 () Bool)

(assert (=> b!5506989 m!6513344))

(declare-fun m!6513346 () Bool)

(assert (=> b!5506989 m!6513346))

(assert (=> b!5506276 d!1745242))

(assert (=> b!5506276 d!1745172))

(declare-fun d!1745244 () Bool)

(assert (=> d!1745244 (= (isDefined!12201 lt!2244386) (not (isEmpty!34420 lt!2244386)))))

(declare-fun bs!1269942 () Bool)

(assert (= bs!1269942 d!1745244))

(declare-fun m!6513348 () Bool)

(assert (=> bs!1269942 m!6513348))

(assert (=> b!5506278 d!1745244))

(declare-fun d!1745246 () Bool)

(assert (=> d!1745246 (= (isUnion!508 lt!2244417) ((_ is Union!15489) lt!2244417))))

(assert (=> b!5506469 d!1745246))

(declare-fun b!5506991 () Bool)

(declare-fun c!962220 () Bool)

(declare-fun e!3406025 () Bool)

(assert (=> b!5506991 (= c!962220 e!3406025)))

(declare-fun res!2346890 () Bool)

(assert (=> b!5506991 (=> (not res!2346890) (not e!3406025))))

(assert (=> b!5506991 (= res!2346890 ((_ is Concat!24334) (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))))))

(declare-fun e!3406028 () (InoxSet Context!9746))

(declare-fun e!3406029 () (InoxSet Context!9746))

(assert (=> b!5506991 (= e!3406028 e!3406029)))

(declare-fun b!5506993 () Bool)

(declare-fun call!406946 () (InoxSet Context!9746))

(declare-fun call!406944 () (InoxSet Context!9746))

(assert (=> b!5506993 (= e!3406029 ((_ map or) call!406946 call!406944))))

(declare-fun c!962218 () Bool)

(declare-fun bm!406939 () Bool)

(declare-fun call!406949 () List!62766)

(assert (=> bm!406939 (= call!406949 ($colon$colon!1574 (exprs!5373 (Context!9747 (t!376007 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642)))))) (ite (or c!962220 c!962218) (regTwo!31490 (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))) (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642)))))))))

(declare-fun b!5506994 () Bool)

(assert (=> b!5506994 (= e!3406025 (nullable!5523 (regOne!31490 (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642)))))))))

(declare-fun bm!406940 () Bool)

(declare-fun call!406945 () (InoxSet Context!9746))

(assert (=> bm!406940 (= call!406945 call!406944)))

(declare-fun b!5506995 () Bool)

(declare-fun e!3406027 () (InoxSet Context!9746))

(assert (=> b!5506995 (= e!3406027 (store ((as const (Array Context!9746 Bool)) false) (Context!9747 (t!376007 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))) true))))

(declare-fun b!5506996 () Bool)

(declare-fun c!962221 () Bool)

(assert (=> b!5506996 (= c!962221 ((_ is Star!15489) (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))))))

(declare-fun e!3406026 () (InoxSet Context!9746))

(declare-fun e!3406024 () (InoxSet Context!9746))

(assert (=> b!5506996 (= e!3406026 e!3406024)))

(declare-fun b!5506997 () Bool)

(assert (=> b!5506997 (= e!3406026 call!406945)))

(declare-fun b!5506998 () Bool)

(assert (=> b!5506998 (= e!3406024 call!406945)))

(declare-fun bm!406941 () Bool)

(declare-fun call!406948 () (InoxSet Context!9746))

(assert (=> bm!406941 (= call!406944 call!406948)))

(declare-fun b!5506999 () Bool)

(assert (=> b!5506999 (= e!3406027 e!3406028)))

(declare-fun c!962222 () Bool)

(assert (=> b!5506999 (= c!962222 ((_ is Union!15489) (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))))))

(declare-fun call!406947 () List!62766)

(declare-fun bm!406942 () Bool)

(assert (=> bm!406942 (= call!406948 (derivationStepZipperDown!831 (ite c!962222 (regTwo!31491 (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))) (ite c!962220 (regTwo!31490 (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))) (ite c!962218 (regOne!31490 (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))) (reg!15818 (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642)))))))) (ite (or c!962222 c!962220) (Context!9747 (t!376007 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))) (Context!9747 call!406947)) (h!69092 s!2326)))))

(declare-fun b!5506992 () Bool)

(assert (=> b!5506992 (= e!3406028 ((_ map or) call!406946 call!406948))))

(declare-fun d!1745248 () Bool)

(declare-fun c!962219 () Bool)

(assert (=> d!1745248 (= c!962219 (and ((_ is ElementMatch!15489) (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))) (= (c!961989 (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))) (h!69092 s!2326))))))

(assert (=> d!1745248 (= (derivationStepZipperDown!831 (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642)))) (Context!9747 (t!376007 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))) (h!69092 s!2326)) e!3406027)))

(declare-fun bm!406943 () Bool)

(assert (=> bm!406943 (= call!406947 call!406949)))

(declare-fun b!5507000 () Bool)

(assert (=> b!5507000 (= e!3406029 e!3406026)))

(assert (=> b!5507000 (= c!962218 ((_ is Concat!24334) (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))))))

(declare-fun bm!406944 () Bool)

(assert (=> bm!406944 (= call!406946 (derivationStepZipperDown!831 (ite c!962222 (regOne!31491 (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))) (regOne!31490 (h!69090 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642)))))) (ite c!962222 (Context!9747 (t!376007 (exprs!5373 (Context!9747 (Cons!62642 r!7292 Nil!62642))))) (Context!9747 call!406949)) (h!69092 s!2326)))))

(declare-fun b!5507001 () Bool)

(assert (=> b!5507001 (= e!3406024 ((as const (Array Context!9746 Bool)) false))))

(assert (= (and d!1745248 c!962219) b!5506995))

(assert (= (and d!1745248 (not c!962219)) b!5506999))

(assert (= (and b!5506999 c!962222) b!5506992))

(assert (= (and b!5506999 (not c!962222)) b!5506991))

(assert (= (and b!5506991 res!2346890) b!5506994))

(assert (= (and b!5506991 c!962220) b!5506993))

(assert (= (and b!5506991 (not c!962220)) b!5507000))

(assert (= (and b!5507000 c!962218) b!5506997))

(assert (= (and b!5507000 (not c!962218)) b!5506996))

(assert (= (and b!5506996 c!962221) b!5506998))

(assert (= (and b!5506996 (not c!962221)) b!5507001))

(assert (= (or b!5506997 b!5506998) bm!406943))

(assert (= (or b!5506997 b!5506998) bm!406940))

(assert (= (or b!5506993 bm!406943) bm!406939))

(assert (= (or b!5506993 bm!406940) bm!406941))

(assert (= (or b!5506992 bm!406941) bm!406942))

(assert (= (or b!5506992 b!5506993) bm!406944))

(declare-fun m!6513350 () Bool)

(assert (=> bm!406942 m!6513350))

(declare-fun m!6513352 () Bool)

(assert (=> b!5506995 m!6513352))

(declare-fun m!6513354 () Bool)

(assert (=> bm!406944 m!6513354))

(declare-fun m!6513356 () Bool)

(assert (=> bm!406939 m!6513356))

(declare-fun m!6513358 () Bool)

(assert (=> b!5506994 m!6513358))

(assert (=> bm!406882 d!1745248))

(declare-fun b!5507002 () Bool)

(declare-fun c!962225 () Bool)

(declare-fun e!3406031 () Bool)

(assert (=> b!5507002 (= c!962225 e!3406031)))

(declare-fun res!2346891 () Bool)

(assert (=> b!5507002 (=> (not res!2346891) (not e!3406031))))

(assert (=> b!5507002 (= res!2346891 ((_ is Concat!24334) (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292))))))

(declare-fun e!3406034 () (InoxSet Context!9746))

(declare-fun e!3406035 () (InoxSet Context!9746))

(assert (=> b!5507002 (= e!3406034 e!3406035)))

(declare-fun b!5507004 () Bool)

(declare-fun call!406952 () (InoxSet Context!9746))

(declare-fun call!406950 () (InoxSet Context!9746))

(assert (=> b!5507004 (= e!3406035 ((_ map or) call!406952 call!406950))))

(declare-fun c!962223 () Bool)

(declare-fun bm!406945 () Bool)

(declare-fun call!406955 () List!62766)

(assert (=> bm!406945 (= call!406955 ($colon$colon!1574 (exprs!5373 (ite c!962151 (Context!9747 Nil!62642) (Context!9747 call!406905))) (ite (or c!962225 c!962223) (regTwo!31490 (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292))) (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292)))))))

(declare-fun b!5507005 () Bool)

(assert (=> b!5507005 (= e!3406031 (nullable!5523 (regOne!31490 (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292)))))))

(declare-fun bm!406946 () Bool)

(declare-fun call!406951 () (InoxSet Context!9746))

(assert (=> bm!406946 (= call!406951 call!406950)))

(declare-fun b!5507006 () Bool)

(declare-fun e!3406033 () (InoxSet Context!9746))

(assert (=> b!5507006 (= e!3406033 (store ((as const (Array Context!9746 Bool)) false) (ite c!962151 (Context!9747 Nil!62642) (Context!9747 call!406905)) true))))

(declare-fun b!5507007 () Bool)

(declare-fun c!962226 () Bool)

(assert (=> b!5507007 (= c!962226 ((_ is Star!15489) (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292))))))

(declare-fun e!3406032 () (InoxSet Context!9746))

(declare-fun e!3406030 () (InoxSet Context!9746))

(assert (=> b!5507007 (= e!3406032 e!3406030)))

(declare-fun b!5507008 () Bool)

(assert (=> b!5507008 (= e!3406032 call!406951)))

(declare-fun b!5507009 () Bool)

(assert (=> b!5507009 (= e!3406030 call!406951)))

(declare-fun bm!406947 () Bool)

(declare-fun call!406954 () (InoxSet Context!9746))

(assert (=> bm!406947 (= call!406950 call!406954)))

(declare-fun b!5507010 () Bool)

(assert (=> b!5507010 (= e!3406033 e!3406034)))

(declare-fun c!962227 () Bool)

(assert (=> b!5507010 (= c!962227 ((_ is Union!15489) (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292))))))

(declare-fun bm!406948 () Bool)

(declare-fun call!406953 () List!62766)

(assert (=> bm!406948 (= call!406954 (derivationStepZipperDown!831 (ite c!962227 (regTwo!31491 (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292))) (ite c!962225 (regTwo!31490 (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292))) (ite c!962223 (regOne!31490 (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292))) (reg!15818 (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292)))))) (ite (or c!962227 c!962225) (ite c!962151 (Context!9747 Nil!62642) (Context!9747 call!406905)) (Context!9747 call!406953)) (h!69092 s!2326)))))

(declare-fun b!5507003 () Bool)

(assert (=> b!5507003 (= e!3406034 ((_ map or) call!406952 call!406954))))

(declare-fun c!962224 () Bool)

(declare-fun d!1745250 () Bool)

(assert (=> d!1745250 (= c!962224 (and ((_ is ElementMatch!15489) (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292))) (= (c!961989 (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292))) (h!69092 s!2326))))))

(assert (=> d!1745250 (= (derivationStepZipperDown!831 (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292)) (ite c!962151 (Context!9747 Nil!62642) (Context!9747 call!406905)) (h!69092 s!2326)) e!3406033)))

(declare-fun bm!406949 () Bool)

(assert (=> bm!406949 (= call!406953 call!406955)))

(declare-fun b!5507011 () Bool)

(assert (=> b!5507011 (= e!3406035 e!3406032)))

(assert (=> b!5507011 (= c!962223 ((_ is Concat!24334) (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292))))))

(declare-fun bm!406950 () Bool)

(assert (=> bm!406950 (= call!406952 (derivationStepZipperDown!831 (ite c!962227 (regOne!31491 (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292))) (regOne!31490 (ite c!962151 (regOne!31491 r!7292) (regOne!31490 r!7292)))) (ite c!962227 (ite c!962151 (Context!9747 Nil!62642) (Context!9747 call!406905)) (Context!9747 call!406955)) (h!69092 s!2326)))))

(declare-fun b!5507012 () Bool)

(assert (=> b!5507012 (= e!3406030 ((as const (Array Context!9746 Bool)) false))))

(assert (= (and d!1745250 c!962224) b!5507006))

(assert (= (and d!1745250 (not c!962224)) b!5507010))

(assert (= (and b!5507010 c!962227) b!5507003))

(assert (= (and b!5507010 (not c!962227)) b!5507002))

(assert (= (and b!5507002 res!2346891) b!5507005))

(assert (= (and b!5507002 c!962225) b!5507004))

(assert (= (and b!5507002 (not c!962225)) b!5507011))

(assert (= (and b!5507011 c!962223) b!5507008))

(assert (= (and b!5507011 (not c!962223)) b!5507007))

(assert (= (and b!5507007 c!962226) b!5507009))

(assert (= (and b!5507007 (not c!962226)) b!5507012))

(assert (= (or b!5507008 b!5507009) bm!406949))

(assert (= (or b!5507008 b!5507009) bm!406946))

(assert (= (or b!5507004 bm!406949) bm!406945))

(assert (= (or b!5507004 bm!406946) bm!406947))

(assert (= (or b!5507003 bm!406947) bm!406948))

(assert (= (or b!5507003 b!5507004) bm!406950))

(declare-fun m!6513360 () Bool)

(assert (=> bm!406948 m!6513360))

(declare-fun m!6513362 () Bool)

(assert (=> b!5507006 m!6513362))

(declare-fun m!6513364 () Bool)

(assert (=> bm!406950 m!6513364))

(declare-fun m!6513366 () Bool)

(assert (=> bm!406945 m!6513366))

(declare-fun m!6513368 () Bool)

(assert (=> b!5507005 m!6513368))

(assert (=> bm!406900 d!1745250))

(assert (=> bm!406875 d!1745220))

(declare-fun d!1745252 () Bool)

(assert (=> d!1745252 (= (head!11793 (unfocusZipperList!917 zl!343)) (h!69090 (unfocusZipperList!917 zl!343)))))

(assert (=> b!5506463 d!1745252))

(declare-fun b!5507014 () Bool)

(declare-fun e!3406042 () Bool)

(declare-fun call!406958 () Bool)

(assert (=> b!5507014 (= e!3406042 call!406958)))

(declare-fun b!5507015 () Bool)

(declare-fun e!3406037 () Bool)

(declare-fun e!3406036 () Bool)

(assert (=> b!5507015 (= e!3406037 e!3406036)))

(declare-fun res!2346893 () Bool)

(assert (=> b!5507015 (= res!2346893 (not (nullable!5523 (reg!15818 (ite c!961994 (regTwo!31491 r!7292) (regTwo!31490 r!7292))))))))

(assert (=> b!5507015 (=> (not res!2346893) (not e!3406036))))

(declare-fun b!5507016 () Bool)

(declare-fun res!2346894 () Bool)

(declare-fun e!3406040 () Bool)

(assert (=> b!5507016 (=> (not res!2346894) (not e!3406040))))

(declare-fun call!406957 () Bool)

(assert (=> b!5507016 (= res!2346894 call!406957)))

(declare-fun e!3406039 () Bool)

(assert (=> b!5507016 (= e!3406039 e!3406040)))

(declare-fun b!5507017 () Bool)

(declare-fun e!3406041 () Bool)

(assert (=> b!5507017 (= e!3406041 e!3406037)))

(declare-fun c!962229 () Bool)

(assert (=> b!5507017 (= c!962229 ((_ is Star!15489) (ite c!961994 (regTwo!31491 r!7292) (regTwo!31490 r!7292))))))

(declare-fun call!406956 () Bool)

(declare-fun bm!406951 () Bool)

(declare-fun c!962228 () Bool)

(assert (=> bm!406951 (= call!406956 (validRegex!7225 (ite c!962229 (reg!15818 (ite c!961994 (regTwo!31491 r!7292) (regTwo!31490 r!7292))) (ite c!962228 (regOne!31491 (ite c!961994 (regTwo!31491 r!7292) (regTwo!31490 r!7292))) (regOne!31490 (ite c!961994 (regTwo!31491 r!7292) (regTwo!31490 r!7292)))))))))

(declare-fun bm!406952 () Bool)

(assert (=> bm!406952 (= call!406958 (validRegex!7225 (ite c!962228 (regTwo!31491 (ite c!961994 (regTwo!31491 r!7292) (regTwo!31490 r!7292))) (regTwo!31490 (ite c!961994 (regTwo!31491 r!7292) (regTwo!31490 r!7292))))))))

(declare-fun b!5507018 () Bool)

(declare-fun res!2346895 () Bool)

(declare-fun e!3406038 () Bool)

(assert (=> b!5507018 (=> res!2346895 e!3406038)))

(assert (=> b!5507018 (= res!2346895 (not ((_ is Concat!24334) (ite c!961994 (regTwo!31491 r!7292) (regTwo!31490 r!7292)))))))

(assert (=> b!5507018 (= e!3406039 e!3406038)))

(declare-fun b!5507019 () Bool)

(assert (=> b!5507019 (= e!3406040 call!406958)))

(declare-fun b!5507020 () Bool)

(assert (=> b!5507020 (= e!3406038 e!3406042)))

(declare-fun res!2346892 () Bool)

(assert (=> b!5507020 (=> (not res!2346892) (not e!3406042))))

(assert (=> b!5507020 (= res!2346892 call!406957)))

(declare-fun b!5507013 () Bool)

(assert (=> b!5507013 (= e!3406037 e!3406039)))

(assert (=> b!5507013 (= c!962228 ((_ is Union!15489) (ite c!961994 (regTwo!31491 r!7292) (regTwo!31490 r!7292))))))

(declare-fun d!1745254 () Bool)

(declare-fun res!2346896 () Bool)

(assert (=> d!1745254 (=> res!2346896 e!3406041)))

(assert (=> d!1745254 (= res!2346896 ((_ is ElementMatch!15489) (ite c!961994 (regTwo!31491 r!7292) (regTwo!31490 r!7292))))))

(assert (=> d!1745254 (= (validRegex!7225 (ite c!961994 (regTwo!31491 r!7292) (regTwo!31490 r!7292))) e!3406041)))

(declare-fun bm!406953 () Bool)

(assert (=> bm!406953 (= call!406957 call!406956)))

(declare-fun b!5507021 () Bool)

(assert (=> b!5507021 (= e!3406036 call!406956)))

(assert (= (and d!1745254 (not res!2346896)) b!5507017))

(assert (= (and b!5507017 c!962229) b!5507015))

(assert (= (and b!5507017 (not c!962229)) b!5507013))

(assert (= (and b!5507015 res!2346893) b!5507021))

(assert (= (and b!5507013 c!962228) b!5507016))

(assert (= (and b!5507013 (not c!962228)) b!5507018))

(assert (= (and b!5507016 res!2346894) b!5507019))

(assert (= (and b!5507018 (not res!2346895)) b!5507020))

(assert (= (and b!5507020 res!2346892) b!5507014))

(assert (= (or b!5507019 b!5507014) bm!406952))

(assert (= (or b!5507016 b!5507020) bm!406953))

(assert (= (or b!5507021 bm!406953) bm!406951))

(declare-fun m!6513370 () Bool)

(assert (=> b!5507015 m!6513370))

(declare-fun m!6513372 () Bool)

(assert (=> bm!406951 m!6513372))

(declare-fun m!6513374 () Bool)

(assert (=> bm!406952 m!6513374))

(assert (=> bm!406830 d!1745254))

(declare-fun b!5507022 () Bool)

(declare-fun e!3406049 () Bool)

(assert (=> b!5507022 (= e!3406049 (= (head!11794 (_2!35889 (get!21554 lt!2244386))) (c!961989 (regTwo!31490 r!7292))))))

(declare-fun b!5507023 () Bool)

(declare-fun e!3406046 () Bool)

(declare-fun lt!2244456 () Bool)

(declare-fun call!406959 () Bool)

(assert (=> b!5507023 (= e!3406046 (= lt!2244456 call!406959))))

(declare-fun b!5507024 () Bool)

(declare-fun e!3406048 () Bool)

(assert (=> b!5507024 (= e!3406046 e!3406048)))

(declare-fun c!962231 () Bool)

(assert (=> b!5507024 (= c!962231 ((_ is EmptyLang!15489) (regTwo!31490 r!7292)))))

(declare-fun d!1745256 () Bool)

(assert (=> d!1745256 e!3406046))

(declare-fun c!962232 () Bool)

(assert (=> d!1745256 (= c!962232 ((_ is EmptyExpr!15489) (regTwo!31490 r!7292)))))

(declare-fun e!3406047 () Bool)

(assert (=> d!1745256 (= lt!2244456 e!3406047)))

(declare-fun c!962230 () Bool)

(assert (=> d!1745256 (= c!962230 (isEmpty!34422 (_2!35889 (get!21554 lt!2244386))))))

(assert (=> d!1745256 (validRegex!7225 (regTwo!31490 r!7292))))

(assert (=> d!1745256 (= (matchR!7674 (regTwo!31490 r!7292) (_2!35889 (get!21554 lt!2244386))) lt!2244456)))

(declare-fun b!5507025 () Bool)

(assert (=> b!5507025 (= e!3406048 (not lt!2244456))))

(declare-fun b!5507026 () Bool)

(assert (=> b!5507026 (= e!3406047 (nullable!5523 (regTwo!31490 r!7292)))))

(declare-fun b!5507027 () Bool)

(declare-fun res!2346898 () Bool)

(assert (=> b!5507027 (=> (not res!2346898) (not e!3406049))))

(assert (=> b!5507027 (= res!2346898 (isEmpty!34422 (tail!10889 (_2!35889 (get!21554 lt!2244386)))))))

(declare-fun b!5507028 () Bool)

(assert (=> b!5507028 (= e!3406047 (matchR!7674 (derivativeStep!4360 (regTwo!31490 r!7292) (head!11794 (_2!35889 (get!21554 lt!2244386)))) (tail!10889 (_2!35889 (get!21554 lt!2244386)))))))

(declare-fun b!5507029 () Bool)

(declare-fun res!2346903 () Bool)

(declare-fun e!3406045 () Bool)

(assert (=> b!5507029 (=> res!2346903 e!3406045)))

(assert (=> b!5507029 (= res!2346903 e!3406049)))

(declare-fun res!2346901 () Bool)

(assert (=> b!5507029 (=> (not res!2346901) (not e!3406049))))

(assert (=> b!5507029 (= res!2346901 lt!2244456)))

(declare-fun b!5507030 () Bool)

(declare-fun res!2346900 () Bool)

(declare-fun e!3406043 () Bool)

(assert (=> b!5507030 (=> res!2346900 e!3406043)))

(assert (=> b!5507030 (= res!2346900 (not (isEmpty!34422 (tail!10889 (_2!35889 (get!21554 lt!2244386))))))))

(declare-fun b!5507031 () Bool)

(declare-fun res!2346904 () Bool)

(assert (=> b!5507031 (=> (not res!2346904) (not e!3406049))))

(assert (=> b!5507031 (= res!2346904 (not call!406959))))

(declare-fun b!5507032 () Bool)

(declare-fun res!2346899 () Bool)

(assert (=> b!5507032 (=> res!2346899 e!3406045)))

(assert (=> b!5507032 (= res!2346899 (not ((_ is ElementMatch!15489) (regTwo!31490 r!7292))))))

(assert (=> b!5507032 (= e!3406048 e!3406045)))

(declare-fun bm!406954 () Bool)

(assert (=> bm!406954 (= call!406959 (isEmpty!34422 (_2!35889 (get!21554 lt!2244386))))))

(declare-fun b!5507033 () Bool)

(declare-fun e!3406044 () Bool)

(assert (=> b!5507033 (= e!3406044 e!3406043)))

(declare-fun res!2346897 () Bool)

(assert (=> b!5507033 (=> res!2346897 e!3406043)))

(assert (=> b!5507033 (= res!2346897 call!406959)))

(declare-fun b!5507034 () Bool)

(assert (=> b!5507034 (= e!3406043 (not (= (head!11794 (_2!35889 (get!21554 lt!2244386))) (c!961989 (regTwo!31490 r!7292)))))))

(declare-fun b!5507035 () Bool)

(assert (=> b!5507035 (= e!3406045 e!3406044)))

(declare-fun res!2346902 () Bool)

(assert (=> b!5507035 (=> (not res!2346902) (not e!3406044))))

(assert (=> b!5507035 (= res!2346902 (not lt!2244456))))

(assert (= (and d!1745256 c!962230) b!5507026))

(assert (= (and d!1745256 (not c!962230)) b!5507028))

(assert (= (and d!1745256 c!962232) b!5507023))

(assert (= (and d!1745256 (not c!962232)) b!5507024))

(assert (= (and b!5507024 c!962231) b!5507025))

(assert (= (and b!5507024 (not c!962231)) b!5507032))

(assert (= (and b!5507032 (not res!2346899)) b!5507029))

(assert (= (and b!5507029 res!2346901) b!5507031))

(assert (= (and b!5507031 res!2346904) b!5507027))

(assert (= (and b!5507027 res!2346898) b!5507022))

(assert (= (and b!5507029 (not res!2346903)) b!5507035))

(assert (= (and b!5507035 res!2346902) b!5507033))

(assert (= (and b!5507033 (not res!2346897)) b!5507030))

(assert (= (and b!5507030 (not res!2346900)) b!5507034))

(assert (= (or b!5507023 b!5507033 b!5507031) bm!406954))

(declare-fun m!6513376 () Bool)

(assert (=> b!5507027 m!6513376))

(assert (=> b!5507027 m!6513376))

(declare-fun m!6513378 () Bool)

(assert (=> b!5507027 m!6513378))

(declare-fun m!6513380 () Bool)

(assert (=> b!5507022 m!6513380))

(assert (=> b!5507028 m!6513380))

(assert (=> b!5507028 m!6513380))

(declare-fun m!6513382 () Bool)

(assert (=> b!5507028 m!6513382))

(assert (=> b!5507028 m!6513376))

(assert (=> b!5507028 m!6513382))

(assert (=> b!5507028 m!6513376))

(declare-fun m!6513384 () Bool)

(assert (=> b!5507028 m!6513384))

(assert (=> b!5507034 m!6513380))

(assert (=> b!5507030 m!6513376))

(assert (=> b!5507030 m!6513376))

(assert (=> b!5507030 m!6513378))

(declare-fun m!6513386 () Bool)

(assert (=> bm!406954 m!6513386))

(assert (=> d!1745256 m!6513386))

(assert (=> d!1745256 m!6513152))

(assert (=> b!5507026 m!6513154))

(assert (=> b!5506272 d!1745256))

(assert (=> b!5506272 d!1745172))

(declare-fun d!1745258 () Bool)

(assert (=> d!1745258 (= (nullable!5523 (reg!15818 r!7292)) (nullableFct!1654 (reg!15818 r!7292)))))

(declare-fun bs!1269943 () Bool)

(assert (= bs!1269943 d!1745258))

(declare-fun m!6513388 () Bool)

(assert (=> bs!1269943 m!6513388))

(assert (=> b!5506134 d!1745258))

(declare-fun d!1745260 () Bool)

(assert (=> d!1745260 (= (isEmpty!34418 (tail!10888 (unfocusZipperList!917 zl!343))) ((_ is Nil!62642) (tail!10888 (unfocusZipperList!917 zl!343))))))

(assert (=> b!5506461 d!1745260))

(declare-fun d!1745262 () Bool)

(assert (=> d!1745262 (= (tail!10888 (unfocusZipperList!917 zl!343)) (t!376007 (unfocusZipperList!917 zl!343)))))

(assert (=> b!5506461 d!1745262))

(assert (=> d!1745084 d!1745070))

(assert (=> d!1745084 d!1745218))

(assert (=> d!1745084 d!1745106))

(declare-fun d!1745264 () Bool)

(assert (=> d!1745264 (= (Exists!2589 lambda!294880) (choose!41834 lambda!294880))))

(declare-fun bs!1269944 () Bool)

(assert (= bs!1269944 d!1745264))

(declare-fun m!6513390 () Bool)

(assert (=> bs!1269944 m!6513390))

(assert (=> d!1745084 d!1745264))

(declare-fun bs!1269945 () Bool)

(declare-fun d!1745266 () Bool)

(assert (= bs!1269945 (and d!1745266 d!1745084)))

(declare-fun lambda!294929 () Int)

(assert (=> bs!1269945 (= lambda!294929 lambda!294880)))

(declare-fun bs!1269946 () Bool)

(assert (= bs!1269946 (and d!1745266 b!5506764)))

(assert (=> bs!1269946 (not (= lambda!294929 lambda!294912))))

(declare-fun bs!1269947 () Bool)

(assert (= bs!1269947 (and d!1745266 d!1745216)))

(assert (=> bs!1269947 (not (= lambda!294929 lambda!294924))))

(assert (=> bs!1269947 (= lambda!294929 lambda!294923)))

(declare-fun bs!1269948 () Bool)

(assert (= bs!1269948 (and d!1745266 b!5506579)))

(assert (=> bs!1269948 (not (= lambda!294929 lambda!294907))))

(declare-fun bs!1269949 () Bool)

(assert (= bs!1269949 (and d!1745266 b!5506919)))

(assert (=> bs!1269949 (not (= lambda!294929 lambda!294916))))

(declare-fun bs!1269950 () Bool)

(assert (= bs!1269950 (and d!1745266 b!5506762)))

(assert (=> bs!1269950 (not (= lambda!294929 lambda!294913))))

(declare-fun bs!1269951 () Bool)

(assert (= bs!1269951 (and d!1745266 b!5506103)))

(assert (=> bs!1269951 (= lambda!294929 lambda!294854)))

(assert (=> bs!1269951 (not (= lambda!294929 lambda!294855))))

(declare-fun bs!1269952 () Bool)

(assert (= bs!1269952 (and d!1745266 b!5506577)))

(assert (=> bs!1269952 (not (= lambda!294929 lambda!294908))))

(declare-fun bs!1269953 () Bool)

(assert (= bs!1269953 (and d!1745266 d!1745092)))

(assert (=> bs!1269953 (= lambda!294929 lambda!294886)))

(assert (=> bs!1269953 (not (= lambda!294929 lambda!294889))))

(declare-fun bs!1269954 () Bool)

(assert (= bs!1269954 (and d!1745266 b!5506917)))

(assert (=> bs!1269954 (not (= lambda!294929 lambda!294917))))

(assert (=> d!1745266 true))

(assert (=> d!1745266 true))

(assert (=> d!1745266 true))

(assert (=> d!1745266 (= (isDefined!12201 (findConcatSeparation!1912 (regOne!31490 r!7292) (regTwo!31490 r!7292) Nil!62644 s!2326 s!2326)) (Exists!2589 lambda!294929))))

(assert (=> d!1745266 true))

(declare-fun _$89!1587 () Unit!155438)

(assert (=> d!1745266 (= (choose!41837 (regOne!31490 r!7292) (regTwo!31490 r!7292) s!2326) _$89!1587)))

(declare-fun bs!1269955 () Bool)

(assert (= bs!1269955 d!1745266))

(assert (=> bs!1269955 m!6512792))

(assert (=> bs!1269955 m!6512792))

(assert (=> bs!1269955 m!6512794))

(declare-fun m!6513392 () Bool)

(assert (=> bs!1269955 m!6513392))

(assert (=> d!1745084 d!1745266))

(declare-fun d!1745268 () Bool)

(declare-fun res!2346909 () Bool)

(declare-fun e!3406052 () Bool)

(assert (=> d!1745268 (=> res!2346909 e!3406052)))

(assert (=> d!1745268 (= res!2346909 ((_ is Nil!62642) (exprs!5373 (h!69091 zl!343))))))

(assert (=> d!1745268 (= (forall!14669 (exprs!5373 (h!69091 zl!343)) lambda!294864) e!3406052)))

(declare-fun b!5507040 () Bool)

(declare-fun e!3406053 () Bool)

(assert (=> b!5507040 (= e!3406052 e!3406053)))

(declare-fun res!2346910 () Bool)

(assert (=> b!5507040 (=> (not res!2346910) (not e!3406053))))

(assert (=> b!5507040 (= res!2346910 (dynLambda!24475 lambda!294864 (h!69090 (exprs!5373 (h!69091 zl!343)))))))

(declare-fun b!5507041 () Bool)

(assert (=> b!5507041 (= e!3406053 (forall!14669 (t!376007 (exprs!5373 (h!69091 zl!343))) lambda!294864))))

(assert (= (and d!1745268 (not res!2346909)) b!5507040))

(assert (= (and b!5507040 res!2346910) b!5507041))

(declare-fun b_lambda!208809 () Bool)

(assert (=> (not b_lambda!208809) (not b!5507040)))

(declare-fun m!6513394 () Bool)

(assert (=> b!5507040 m!6513394))

(declare-fun m!6513396 () Bool)

(assert (=> b!5507041 m!6513396))

(assert (=> d!1745066 d!1745268))

(assert (=> d!1745070 d!1745244))

(declare-fun b!5507042 () Bool)

(declare-fun e!3406060 () Bool)

(assert (=> b!5507042 (= e!3406060 (= (head!11794 Nil!62644) (c!961989 (regOne!31490 r!7292))))))

(declare-fun b!5507043 () Bool)

(declare-fun e!3406057 () Bool)

(declare-fun lt!2244457 () Bool)

(declare-fun call!406960 () Bool)

(assert (=> b!5507043 (= e!3406057 (= lt!2244457 call!406960))))

(declare-fun b!5507044 () Bool)

(declare-fun e!3406059 () Bool)

(assert (=> b!5507044 (= e!3406057 e!3406059)))

(declare-fun c!962234 () Bool)

(assert (=> b!5507044 (= c!962234 ((_ is EmptyLang!15489) (regOne!31490 r!7292)))))

(declare-fun d!1745270 () Bool)

(assert (=> d!1745270 e!3406057))

(declare-fun c!962235 () Bool)

(assert (=> d!1745270 (= c!962235 ((_ is EmptyExpr!15489) (regOne!31490 r!7292)))))

(declare-fun e!3406058 () Bool)

(assert (=> d!1745270 (= lt!2244457 e!3406058)))

(declare-fun c!962233 () Bool)

(assert (=> d!1745270 (= c!962233 (isEmpty!34422 Nil!62644))))

(assert (=> d!1745270 (validRegex!7225 (regOne!31490 r!7292))))

(assert (=> d!1745270 (= (matchR!7674 (regOne!31490 r!7292) Nil!62644) lt!2244457)))

(declare-fun b!5507045 () Bool)

(assert (=> b!5507045 (= e!3406059 (not lt!2244457))))

(declare-fun b!5507046 () Bool)

(assert (=> b!5507046 (= e!3406058 (nullable!5523 (regOne!31490 r!7292)))))

(declare-fun b!5507047 () Bool)

(declare-fun res!2346912 () Bool)

(assert (=> b!5507047 (=> (not res!2346912) (not e!3406060))))

(assert (=> b!5507047 (= res!2346912 (isEmpty!34422 (tail!10889 Nil!62644)))))

(declare-fun b!5507048 () Bool)

(assert (=> b!5507048 (= e!3406058 (matchR!7674 (derivativeStep!4360 (regOne!31490 r!7292) (head!11794 Nil!62644)) (tail!10889 Nil!62644)))))

(declare-fun b!5507049 () Bool)

(declare-fun res!2346917 () Bool)

(declare-fun e!3406056 () Bool)

(assert (=> b!5507049 (=> res!2346917 e!3406056)))

(assert (=> b!5507049 (= res!2346917 e!3406060)))

(declare-fun res!2346915 () Bool)

(assert (=> b!5507049 (=> (not res!2346915) (not e!3406060))))

(assert (=> b!5507049 (= res!2346915 lt!2244457)))

(declare-fun b!5507050 () Bool)

(declare-fun res!2346914 () Bool)

(declare-fun e!3406054 () Bool)

(assert (=> b!5507050 (=> res!2346914 e!3406054)))

(assert (=> b!5507050 (= res!2346914 (not (isEmpty!34422 (tail!10889 Nil!62644))))))

(declare-fun b!5507051 () Bool)

(declare-fun res!2346918 () Bool)

(assert (=> b!5507051 (=> (not res!2346918) (not e!3406060))))

(assert (=> b!5507051 (= res!2346918 (not call!406960))))

(declare-fun b!5507052 () Bool)

(declare-fun res!2346913 () Bool)

(assert (=> b!5507052 (=> res!2346913 e!3406056)))

(assert (=> b!5507052 (= res!2346913 (not ((_ is ElementMatch!15489) (regOne!31490 r!7292))))))

(assert (=> b!5507052 (= e!3406059 e!3406056)))

(declare-fun bm!406955 () Bool)

(assert (=> bm!406955 (= call!406960 (isEmpty!34422 Nil!62644))))

(declare-fun b!5507053 () Bool)

(declare-fun e!3406055 () Bool)

(assert (=> b!5507053 (= e!3406055 e!3406054)))

(declare-fun res!2346911 () Bool)

(assert (=> b!5507053 (=> res!2346911 e!3406054)))

(assert (=> b!5507053 (= res!2346911 call!406960)))

(declare-fun b!5507054 () Bool)

(assert (=> b!5507054 (= e!3406054 (not (= (head!11794 Nil!62644) (c!961989 (regOne!31490 r!7292)))))))

(declare-fun b!5507055 () Bool)

(assert (=> b!5507055 (= e!3406056 e!3406055)))

(declare-fun res!2346916 () Bool)

(assert (=> b!5507055 (=> (not res!2346916) (not e!3406055))))

(assert (=> b!5507055 (= res!2346916 (not lt!2244457))))

(assert (= (and d!1745270 c!962233) b!5507046))

(assert (= (and d!1745270 (not c!962233)) b!5507048))

(assert (= (and d!1745270 c!962235) b!5507043))

(assert (= (and d!1745270 (not c!962235)) b!5507044))

(assert (= (and b!5507044 c!962234) b!5507045))

(assert (= (and b!5507044 (not c!962234)) b!5507052))

(assert (= (and b!5507052 (not res!2346913)) b!5507049))

(assert (= (and b!5507049 res!2346915) b!5507051))

(assert (= (and b!5507051 res!2346918) b!5507047))

(assert (= (and b!5507047 res!2346912) b!5507042))

(assert (= (and b!5507049 (not res!2346917)) b!5507055))

(assert (= (and b!5507055 res!2346916) b!5507053))

(assert (= (and b!5507053 (not res!2346911)) b!5507050))

(assert (= (and b!5507050 (not res!2346914)) b!5507054))

(assert (= (or b!5507043 b!5507053 b!5507051) bm!406955))

(declare-fun m!6513398 () Bool)

(assert (=> b!5507047 m!6513398))

(assert (=> b!5507047 m!6513398))

(declare-fun m!6513400 () Bool)

(assert (=> b!5507047 m!6513400))

(declare-fun m!6513402 () Bool)

(assert (=> b!5507042 m!6513402))

(assert (=> b!5507048 m!6513402))

(assert (=> b!5507048 m!6513402))

(declare-fun m!6513404 () Bool)

(assert (=> b!5507048 m!6513404))

(assert (=> b!5507048 m!6513398))

(assert (=> b!5507048 m!6513404))

(assert (=> b!5507048 m!6513398))

(declare-fun m!6513406 () Bool)

(assert (=> b!5507048 m!6513406))

(assert (=> b!5507054 m!6513402))

(assert (=> b!5507050 m!6513398))

(assert (=> b!5507050 m!6513398))

(assert (=> b!5507050 m!6513400))

(declare-fun m!6513408 () Bool)

(assert (=> bm!406955 m!6513408))

(assert (=> d!1745270 m!6513408))

(assert (=> d!1745270 m!6512910))

(assert (=> b!5507046 m!6513094))

(assert (=> d!1745070 d!1745270))

(assert (=> d!1745070 d!1745218))

(declare-fun b!5507057 () Bool)

(declare-fun e!3406067 () Bool)

(declare-fun call!406963 () Bool)

(assert (=> b!5507057 (= e!3406067 call!406963)))

(declare-fun b!5507058 () Bool)

(declare-fun e!3406062 () Bool)

(declare-fun e!3406061 () Bool)

(assert (=> b!5507058 (= e!3406062 e!3406061)))

(declare-fun res!2346920 () Bool)

(assert (=> b!5507058 (= res!2346920 (not (nullable!5523 (reg!15818 lt!2244417))))))

(assert (=> b!5507058 (=> (not res!2346920) (not e!3406061))))

(declare-fun b!5507059 () Bool)

(declare-fun res!2346921 () Bool)

(declare-fun e!3406065 () Bool)

(assert (=> b!5507059 (=> (not res!2346921) (not e!3406065))))

(declare-fun call!406962 () Bool)

(assert (=> b!5507059 (= res!2346921 call!406962)))

(declare-fun e!3406064 () Bool)

(assert (=> b!5507059 (= e!3406064 e!3406065)))

(declare-fun b!5507060 () Bool)

(declare-fun e!3406066 () Bool)

(assert (=> b!5507060 (= e!3406066 e!3406062)))

(declare-fun c!962237 () Bool)

(assert (=> b!5507060 (= c!962237 ((_ is Star!15489) lt!2244417))))

(declare-fun bm!406956 () Bool)

(declare-fun c!962236 () Bool)

(declare-fun call!406961 () Bool)

(assert (=> bm!406956 (= call!406961 (validRegex!7225 (ite c!962237 (reg!15818 lt!2244417) (ite c!962236 (regOne!31491 lt!2244417) (regOne!31490 lt!2244417)))))))

(declare-fun bm!406957 () Bool)

(assert (=> bm!406957 (= call!406963 (validRegex!7225 (ite c!962236 (regTwo!31491 lt!2244417) (regTwo!31490 lt!2244417))))))

(declare-fun b!5507061 () Bool)

(declare-fun res!2346922 () Bool)

(declare-fun e!3406063 () Bool)

(assert (=> b!5507061 (=> res!2346922 e!3406063)))

(assert (=> b!5507061 (= res!2346922 (not ((_ is Concat!24334) lt!2244417)))))

(assert (=> b!5507061 (= e!3406064 e!3406063)))

(declare-fun b!5507062 () Bool)

(assert (=> b!5507062 (= e!3406065 call!406963)))

(declare-fun b!5507063 () Bool)

(assert (=> b!5507063 (= e!3406063 e!3406067)))

(declare-fun res!2346919 () Bool)

(assert (=> b!5507063 (=> (not res!2346919) (not e!3406067))))

(assert (=> b!5507063 (= res!2346919 call!406962)))

(declare-fun b!5507056 () Bool)

(assert (=> b!5507056 (= e!3406062 e!3406064)))

(assert (=> b!5507056 (= c!962236 ((_ is Union!15489) lt!2244417))))

(declare-fun d!1745272 () Bool)

(declare-fun res!2346923 () Bool)

(assert (=> d!1745272 (=> res!2346923 e!3406066)))

(assert (=> d!1745272 (= res!2346923 ((_ is ElementMatch!15489) lt!2244417))))

(assert (=> d!1745272 (= (validRegex!7225 lt!2244417) e!3406066)))

(declare-fun bm!406958 () Bool)

(assert (=> bm!406958 (= call!406962 call!406961)))

(declare-fun b!5507064 () Bool)

(assert (=> b!5507064 (= e!3406061 call!406961)))

(assert (= (and d!1745272 (not res!2346923)) b!5507060))

(assert (= (and b!5507060 c!962237) b!5507058))

(assert (= (and b!5507060 (not c!962237)) b!5507056))

(assert (= (and b!5507058 res!2346920) b!5507064))

(assert (= (and b!5507056 c!962236) b!5507059))

(assert (= (and b!5507056 (not c!962236)) b!5507061))

(assert (= (and b!5507059 res!2346921) b!5507062))

(assert (= (and b!5507061 (not res!2346922)) b!5507063))

(assert (= (and b!5507063 res!2346919) b!5507057))

(assert (= (or b!5507062 b!5507057) bm!406957))

(assert (= (or b!5507059 b!5507063) bm!406958))

(assert (= (or b!5507064 bm!406958) bm!406956))

(declare-fun m!6513410 () Bool)

(assert (=> b!5507058 m!6513410))

(declare-fun m!6513412 () Bool)

(assert (=> bm!406956 m!6513412))

(declare-fun m!6513414 () Bool)

(assert (=> bm!406957 m!6513414))

(assert (=> d!1745108 d!1745272))

(declare-fun d!1745274 () Bool)

(declare-fun res!2346924 () Bool)

(declare-fun e!3406068 () Bool)

(assert (=> d!1745274 (=> res!2346924 e!3406068)))

(assert (=> d!1745274 (= res!2346924 ((_ is Nil!62642) (unfocusZipperList!917 zl!343)))))

(assert (=> d!1745274 (= (forall!14669 (unfocusZipperList!917 zl!343) lambda!294893) e!3406068)))

(declare-fun b!5507065 () Bool)

(declare-fun e!3406069 () Bool)

(assert (=> b!5507065 (= e!3406068 e!3406069)))

(declare-fun res!2346925 () Bool)

(assert (=> b!5507065 (=> (not res!2346925) (not e!3406069))))

(assert (=> b!5507065 (= res!2346925 (dynLambda!24475 lambda!294893 (h!69090 (unfocusZipperList!917 zl!343))))))

(declare-fun b!5507066 () Bool)

(assert (=> b!5507066 (= e!3406069 (forall!14669 (t!376007 (unfocusZipperList!917 zl!343)) lambda!294893))))

(assert (= (and d!1745274 (not res!2346924)) b!5507065))

(assert (= (and b!5507065 res!2346925) b!5507066))

(declare-fun b_lambda!208811 () Bool)

(assert (=> (not b_lambda!208811) (not b!5507065)))

(declare-fun m!6513416 () Bool)

(assert (=> b!5507065 m!6513416))

(declare-fun m!6513418 () Bool)

(assert (=> b!5507066 m!6513418))

(assert (=> d!1745108 d!1745274))

(declare-fun e!3406070 () Bool)

(assert (=> b!5506754 (= tp!1515158 e!3406070)))

(declare-fun b!5507067 () Bool)

(assert (=> b!5507067 (= e!3406070 tp_is_empty!40231)))

(declare-fun b!5507068 () Bool)

(declare-fun tp!1515167 () Bool)

(declare-fun tp!1515170 () Bool)

(assert (=> b!5507068 (= e!3406070 (and tp!1515167 tp!1515170))))

(declare-fun b!5507070 () Bool)

(declare-fun tp!1515168 () Bool)

(declare-fun tp!1515169 () Bool)

(assert (=> b!5507070 (= e!3406070 (and tp!1515168 tp!1515169))))

(declare-fun b!5507069 () Bool)

(declare-fun tp!1515166 () Bool)

(assert (=> b!5507069 (= e!3406070 tp!1515166)))

(assert (= (and b!5506754 ((_ is ElementMatch!15489) (h!69090 (exprs!5373 (h!69091 zl!343))))) b!5507067))

(assert (= (and b!5506754 ((_ is Concat!24334) (h!69090 (exprs!5373 (h!69091 zl!343))))) b!5507068))

(assert (= (and b!5506754 ((_ is Star!15489) (h!69090 (exprs!5373 (h!69091 zl!343))))) b!5507069))

(assert (= (and b!5506754 ((_ is Union!15489) (h!69090 (exprs!5373 (h!69091 zl!343))))) b!5507070))

(declare-fun b!5507071 () Bool)

(declare-fun e!3406071 () Bool)

(declare-fun tp!1515171 () Bool)

(declare-fun tp!1515172 () Bool)

(assert (=> b!5507071 (= e!3406071 (and tp!1515171 tp!1515172))))

(assert (=> b!5506754 (= tp!1515159 e!3406071)))

(assert (= (and b!5506754 ((_ is Cons!62642) (t!376007 (exprs!5373 (h!69091 zl!343))))) b!5507071))

(declare-fun b!5507072 () Bool)

(declare-fun e!3406072 () Bool)

(declare-fun tp!1515173 () Bool)

(declare-fun tp!1515174 () Bool)

(assert (=> b!5507072 (= e!3406072 (and tp!1515173 tp!1515174))))

(assert (=> b!5506732 (= tp!1515130 e!3406072)))

(assert (= (and b!5506732 ((_ is Cons!62642) (exprs!5373 (h!69091 (t!376008 zl!343))))) b!5507072))

(declare-fun e!3406073 () Bool)

(assert (=> b!5506740 (= tp!1515139 e!3406073)))

(declare-fun b!5507073 () Bool)

(assert (=> b!5507073 (= e!3406073 tp_is_empty!40231)))

(declare-fun b!5507074 () Bool)

(declare-fun tp!1515176 () Bool)

(declare-fun tp!1515179 () Bool)

(assert (=> b!5507074 (= e!3406073 (and tp!1515176 tp!1515179))))

(declare-fun b!5507076 () Bool)

(declare-fun tp!1515177 () Bool)

(declare-fun tp!1515178 () Bool)

(assert (=> b!5507076 (= e!3406073 (and tp!1515177 tp!1515178))))

(declare-fun b!5507075 () Bool)

(declare-fun tp!1515175 () Bool)

(assert (=> b!5507075 (= e!3406073 tp!1515175)))

(assert (= (and b!5506740 ((_ is ElementMatch!15489) (regOne!31491 (regTwo!31490 r!7292)))) b!5507073))

(assert (= (and b!5506740 ((_ is Concat!24334) (regOne!31491 (regTwo!31490 r!7292)))) b!5507074))

(assert (= (and b!5506740 ((_ is Star!15489) (regOne!31491 (regTwo!31490 r!7292)))) b!5507075))

(assert (= (and b!5506740 ((_ is Union!15489) (regOne!31491 (regTwo!31490 r!7292)))) b!5507076))

(declare-fun e!3406074 () Bool)

(assert (=> b!5506740 (= tp!1515140 e!3406074)))

(declare-fun b!5507077 () Bool)

(assert (=> b!5507077 (= e!3406074 tp_is_empty!40231)))

(declare-fun b!5507078 () Bool)

(declare-fun tp!1515181 () Bool)

(declare-fun tp!1515184 () Bool)

(assert (=> b!5507078 (= e!3406074 (and tp!1515181 tp!1515184))))

(declare-fun b!5507080 () Bool)

(declare-fun tp!1515182 () Bool)

(declare-fun tp!1515183 () Bool)

(assert (=> b!5507080 (= e!3406074 (and tp!1515182 tp!1515183))))

(declare-fun b!5507079 () Bool)

(declare-fun tp!1515180 () Bool)

(assert (=> b!5507079 (= e!3406074 tp!1515180)))

(assert (= (and b!5506740 ((_ is ElementMatch!15489) (regTwo!31491 (regTwo!31490 r!7292)))) b!5507077))

(assert (= (and b!5506740 ((_ is Concat!24334) (regTwo!31491 (regTwo!31490 r!7292)))) b!5507078))

(assert (= (and b!5506740 ((_ is Star!15489) (regTwo!31491 (regTwo!31490 r!7292)))) b!5507079))

(assert (= (and b!5506740 ((_ is Union!15489) (regTwo!31491 (regTwo!31490 r!7292)))) b!5507080))

(declare-fun condSetEmpty!36548 () Bool)

(assert (=> setNonEmpty!36547 (= condSetEmpty!36548 (= setRest!36547 ((as const (Array Context!9746 Bool)) false)))))

(declare-fun setRes!36548 () Bool)

(assert (=> setNonEmpty!36547 (= tp!1515109 setRes!36548)))

(declare-fun setIsEmpty!36548 () Bool)

(assert (=> setIsEmpty!36548 setRes!36548))

(declare-fun e!3406075 () Bool)

(declare-fun tp!1515185 () Bool)

(declare-fun setNonEmpty!36548 () Bool)

(declare-fun setElem!36548 () Context!9746)

(assert (=> setNonEmpty!36548 (= setRes!36548 (and tp!1515185 (inv!81969 setElem!36548) e!3406075))))

(declare-fun setRest!36548 () (InoxSet Context!9746))

(assert (=> setNonEmpty!36548 (= setRest!36547 ((_ map or) (store ((as const (Array Context!9746 Bool)) false) setElem!36548 true) setRest!36548))))

(declare-fun b!5507081 () Bool)

(declare-fun tp!1515186 () Bool)

(assert (=> b!5507081 (= e!3406075 tp!1515186)))

(assert (= (and setNonEmpty!36547 condSetEmpty!36548) setIsEmpty!36548))

(assert (= (and setNonEmpty!36547 (not condSetEmpty!36548)) setNonEmpty!36548))

(assert (= setNonEmpty!36548 b!5507081))

(declare-fun m!6513420 () Bool)

(assert (=> setNonEmpty!36548 m!6513420))

(declare-fun b!5507082 () Bool)

(declare-fun e!3406076 () Bool)

(declare-fun tp!1515187 () Bool)

(declare-fun tp!1515188 () Bool)

(assert (=> b!5507082 (= e!3406076 (and tp!1515187 tp!1515188))))

(assert (=> b!5506710 (= tp!1515110 e!3406076)))

(assert (= (and b!5506710 ((_ is Cons!62642) (exprs!5373 setElem!36547))) b!5507082))

(declare-fun e!3406077 () Bool)

(assert (=> b!5506745 (= tp!1515146 e!3406077)))

(declare-fun b!5507083 () Bool)

(assert (=> b!5507083 (= e!3406077 tp_is_empty!40231)))

(declare-fun b!5507084 () Bool)

(declare-fun tp!1515190 () Bool)

(declare-fun tp!1515193 () Bool)

(assert (=> b!5507084 (= e!3406077 (and tp!1515190 tp!1515193))))

(declare-fun b!5507086 () Bool)

(declare-fun tp!1515191 () Bool)

(declare-fun tp!1515192 () Bool)

(assert (=> b!5507086 (= e!3406077 (and tp!1515191 tp!1515192))))

(declare-fun b!5507085 () Bool)

(declare-fun tp!1515189 () Bool)

(assert (=> b!5507085 (= e!3406077 tp!1515189)))

(assert (= (and b!5506745 ((_ is ElementMatch!15489) (h!69090 (exprs!5373 setElem!36541)))) b!5507083))

(assert (= (and b!5506745 ((_ is Concat!24334) (h!69090 (exprs!5373 setElem!36541)))) b!5507084))

(assert (= (and b!5506745 ((_ is Star!15489) (h!69090 (exprs!5373 setElem!36541)))) b!5507085))

(assert (= (and b!5506745 ((_ is Union!15489) (h!69090 (exprs!5373 setElem!36541)))) b!5507086))

(declare-fun b!5507087 () Bool)

(declare-fun e!3406078 () Bool)

(declare-fun tp!1515194 () Bool)

(declare-fun tp!1515195 () Bool)

(assert (=> b!5507087 (= e!3406078 (and tp!1515194 tp!1515195))))

(assert (=> b!5506745 (= tp!1515147 e!3406078)))

(assert (= (and b!5506745 ((_ is Cons!62642) (t!376007 (exprs!5373 setElem!36541)))) b!5507087))

(declare-fun e!3406079 () Bool)

(assert (=> b!5506724 (= tp!1515123 e!3406079)))

(declare-fun b!5507088 () Bool)

(assert (=> b!5507088 (= e!3406079 tp_is_empty!40231)))

(declare-fun b!5507089 () Bool)

(declare-fun tp!1515197 () Bool)

(declare-fun tp!1515200 () Bool)

(assert (=> b!5507089 (= e!3406079 (and tp!1515197 tp!1515200))))

(declare-fun b!5507091 () Bool)

(declare-fun tp!1515198 () Bool)

(declare-fun tp!1515199 () Bool)

(assert (=> b!5507091 (= e!3406079 (and tp!1515198 tp!1515199))))

(declare-fun b!5507090 () Bool)

(declare-fun tp!1515196 () Bool)

(assert (=> b!5507090 (= e!3406079 tp!1515196)))

(assert (= (and b!5506724 ((_ is ElementMatch!15489) (regOne!31491 (reg!15818 r!7292)))) b!5507088))

(assert (= (and b!5506724 ((_ is Concat!24334) (regOne!31491 (reg!15818 r!7292)))) b!5507089))

(assert (= (and b!5506724 ((_ is Star!15489) (regOne!31491 (reg!15818 r!7292)))) b!5507090))

(assert (= (and b!5506724 ((_ is Union!15489) (regOne!31491 (reg!15818 r!7292)))) b!5507091))

(declare-fun e!3406080 () Bool)

(assert (=> b!5506724 (= tp!1515124 e!3406080)))

(declare-fun b!5507092 () Bool)

(assert (=> b!5507092 (= e!3406080 tp_is_empty!40231)))

(declare-fun b!5507093 () Bool)

(declare-fun tp!1515202 () Bool)

(declare-fun tp!1515205 () Bool)

(assert (=> b!5507093 (= e!3406080 (and tp!1515202 tp!1515205))))

(declare-fun b!5507095 () Bool)

(declare-fun tp!1515203 () Bool)

(declare-fun tp!1515204 () Bool)

(assert (=> b!5507095 (= e!3406080 (and tp!1515203 tp!1515204))))

(declare-fun b!5507094 () Bool)

(declare-fun tp!1515201 () Bool)

(assert (=> b!5507094 (= e!3406080 tp!1515201)))

(assert (= (and b!5506724 ((_ is ElementMatch!15489) (regTwo!31491 (reg!15818 r!7292)))) b!5507092))

(assert (= (and b!5506724 ((_ is Concat!24334) (regTwo!31491 (reg!15818 r!7292)))) b!5507093))

(assert (= (and b!5506724 ((_ is Star!15489) (regTwo!31491 (reg!15818 r!7292)))) b!5507094))

(assert (= (and b!5506724 ((_ is Union!15489) (regTwo!31491 (reg!15818 r!7292)))) b!5507095))

(declare-fun e!3406081 () Bool)

(assert (=> b!5506738 (= tp!1515138 e!3406081)))

(declare-fun b!5507096 () Bool)

(assert (=> b!5507096 (= e!3406081 tp_is_empty!40231)))

(declare-fun b!5507097 () Bool)

(declare-fun tp!1515207 () Bool)

(declare-fun tp!1515210 () Bool)

(assert (=> b!5507097 (= e!3406081 (and tp!1515207 tp!1515210))))

(declare-fun b!5507099 () Bool)

(declare-fun tp!1515208 () Bool)

(declare-fun tp!1515209 () Bool)

(assert (=> b!5507099 (= e!3406081 (and tp!1515208 tp!1515209))))

(declare-fun b!5507098 () Bool)

(declare-fun tp!1515206 () Bool)

(assert (=> b!5507098 (= e!3406081 tp!1515206)))

(assert (= (and b!5506738 ((_ is ElementMatch!15489) (regOne!31490 (regTwo!31490 r!7292)))) b!5507096))

(assert (= (and b!5506738 ((_ is Concat!24334) (regOne!31490 (regTwo!31490 r!7292)))) b!5507097))

(assert (= (and b!5506738 ((_ is Star!15489) (regOne!31490 (regTwo!31490 r!7292)))) b!5507098))

(assert (= (and b!5506738 ((_ is Union!15489) (regOne!31490 (regTwo!31490 r!7292)))) b!5507099))

(declare-fun e!3406082 () Bool)

(assert (=> b!5506738 (= tp!1515141 e!3406082)))

(declare-fun b!5507100 () Bool)

(assert (=> b!5507100 (= e!3406082 tp_is_empty!40231)))

(declare-fun b!5507101 () Bool)

(declare-fun tp!1515212 () Bool)

(declare-fun tp!1515215 () Bool)

(assert (=> b!5507101 (= e!3406082 (and tp!1515212 tp!1515215))))

(declare-fun b!5507103 () Bool)

(declare-fun tp!1515213 () Bool)

(declare-fun tp!1515214 () Bool)

(assert (=> b!5507103 (= e!3406082 (and tp!1515213 tp!1515214))))

(declare-fun b!5507102 () Bool)

(declare-fun tp!1515211 () Bool)

(assert (=> b!5507102 (= e!3406082 tp!1515211)))

(assert (= (and b!5506738 ((_ is ElementMatch!15489) (regTwo!31490 (regTwo!31490 r!7292)))) b!5507100))

(assert (= (and b!5506738 ((_ is Concat!24334) (regTwo!31490 (regTwo!31490 r!7292)))) b!5507101))

(assert (= (and b!5506738 ((_ is Star!15489) (regTwo!31490 (regTwo!31490 r!7292)))) b!5507102))

(assert (= (and b!5506738 ((_ is Union!15489) (regTwo!31490 (regTwo!31490 r!7292)))) b!5507103))

(declare-fun b!5507105 () Bool)

(declare-fun e!3406084 () Bool)

(declare-fun tp!1515216 () Bool)

(assert (=> b!5507105 (= e!3406084 tp!1515216)))

(declare-fun b!5507104 () Bool)

(declare-fun e!3406083 () Bool)

(declare-fun tp!1515217 () Bool)

(assert (=> b!5507104 (= e!3406083 (and (inv!81969 (h!69091 (t!376008 (t!376008 zl!343)))) e!3406084 tp!1515217))))

(assert (=> b!5506731 (= tp!1515131 e!3406083)))

(assert (= b!5507104 b!5507105))

(assert (= (and b!5506731 ((_ is Cons!62643) (t!376008 (t!376008 zl!343)))) b!5507104))

(declare-fun m!6513422 () Bool)

(assert (=> b!5507104 m!6513422))

(declare-fun e!3406092 () Bool)

(assert (=> b!5506739 (= tp!1515137 e!3406092)))

(declare-fun b!5507117 () Bool)

(assert (=> b!5507117 (= e!3406092 tp_is_empty!40231)))

(declare-fun b!5507118 () Bool)

(declare-fun tp!1515219 () Bool)

(declare-fun tp!1515222 () Bool)

(assert (=> b!5507118 (= e!3406092 (and tp!1515219 tp!1515222))))

(declare-fun b!5507120 () Bool)

(declare-fun tp!1515220 () Bool)

(declare-fun tp!1515221 () Bool)

(assert (=> b!5507120 (= e!3406092 (and tp!1515220 tp!1515221))))

(declare-fun b!5507119 () Bool)

(declare-fun tp!1515218 () Bool)

(assert (=> b!5507119 (= e!3406092 tp!1515218)))

(assert (= (and b!5506739 ((_ is ElementMatch!15489) (reg!15818 (regTwo!31490 r!7292)))) b!5507117))

(assert (= (and b!5506739 ((_ is Concat!24334) (reg!15818 (regTwo!31490 r!7292)))) b!5507118))

(assert (= (and b!5506739 ((_ is Star!15489) (reg!15818 (regTwo!31490 r!7292)))) b!5507119))

(assert (= (and b!5506739 ((_ is Union!15489) (reg!15818 (regTwo!31490 r!7292)))) b!5507120))

(declare-fun e!3406093 () Bool)

(assert (=> b!5506752 (= tp!1515153 e!3406093)))

(declare-fun b!5507121 () Bool)

(assert (=> b!5507121 (= e!3406093 tp_is_empty!40231)))

(declare-fun b!5507122 () Bool)

(declare-fun tp!1515224 () Bool)

(declare-fun tp!1515227 () Bool)

(assert (=> b!5507122 (= e!3406093 (and tp!1515224 tp!1515227))))

(declare-fun b!5507124 () Bool)

(declare-fun tp!1515225 () Bool)

(declare-fun tp!1515226 () Bool)

(assert (=> b!5507124 (= e!3406093 (and tp!1515225 tp!1515226))))

(declare-fun b!5507123 () Bool)

(declare-fun tp!1515223 () Bool)

(assert (=> b!5507123 (= e!3406093 tp!1515223)))

(assert (= (and b!5506752 ((_ is ElementMatch!15489) (reg!15818 (regTwo!31491 r!7292)))) b!5507121))

(assert (= (and b!5506752 ((_ is Concat!24334) (reg!15818 (regTwo!31491 r!7292)))) b!5507122))

(assert (= (and b!5506752 ((_ is Star!15489) (reg!15818 (regTwo!31491 r!7292)))) b!5507123))

(assert (= (and b!5506752 ((_ is Union!15489) (reg!15818 (regTwo!31491 r!7292)))) b!5507124))

(declare-fun e!3406094 () Bool)

(assert (=> b!5506722 (= tp!1515122 e!3406094)))

(declare-fun b!5507125 () Bool)

(assert (=> b!5507125 (= e!3406094 tp_is_empty!40231)))

(declare-fun b!5507126 () Bool)

(declare-fun tp!1515229 () Bool)

(declare-fun tp!1515232 () Bool)

(assert (=> b!5507126 (= e!3406094 (and tp!1515229 tp!1515232))))

(declare-fun b!5507128 () Bool)

(declare-fun tp!1515230 () Bool)

(declare-fun tp!1515231 () Bool)

(assert (=> b!5507128 (= e!3406094 (and tp!1515230 tp!1515231))))

(declare-fun b!5507127 () Bool)

(declare-fun tp!1515228 () Bool)

(assert (=> b!5507127 (= e!3406094 tp!1515228)))

(assert (= (and b!5506722 ((_ is ElementMatch!15489) (regOne!31490 (reg!15818 r!7292)))) b!5507125))

(assert (= (and b!5506722 ((_ is Concat!24334) (regOne!31490 (reg!15818 r!7292)))) b!5507126))

(assert (= (and b!5506722 ((_ is Star!15489) (regOne!31490 (reg!15818 r!7292)))) b!5507127))

(assert (= (and b!5506722 ((_ is Union!15489) (regOne!31490 (reg!15818 r!7292)))) b!5507128))

(declare-fun e!3406095 () Bool)

(assert (=> b!5506722 (= tp!1515125 e!3406095)))

(declare-fun b!5507129 () Bool)

(assert (=> b!5507129 (= e!3406095 tp_is_empty!40231)))

(declare-fun b!5507130 () Bool)

(declare-fun tp!1515234 () Bool)

(declare-fun tp!1515237 () Bool)

(assert (=> b!5507130 (= e!3406095 (and tp!1515234 tp!1515237))))

(declare-fun b!5507132 () Bool)

(declare-fun tp!1515235 () Bool)

(declare-fun tp!1515236 () Bool)

(assert (=> b!5507132 (= e!3406095 (and tp!1515235 tp!1515236))))

(declare-fun b!5507131 () Bool)

(declare-fun tp!1515233 () Bool)

(assert (=> b!5507131 (= e!3406095 tp!1515233)))

(assert (= (and b!5506722 ((_ is ElementMatch!15489) (regTwo!31490 (reg!15818 r!7292)))) b!5507129))

(assert (= (and b!5506722 ((_ is Concat!24334) (regTwo!31490 (reg!15818 r!7292)))) b!5507130))

(assert (= (and b!5506722 ((_ is Star!15489) (regTwo!31490 (reg!15818 r!7292)))) b!5507131))

(assert (= (and b!5506722 ((_ is Union!15489) (regTwo!31490 (reg!15818 r!7292)))) b!5507132))

(declare-fun e!3406096 () Bool)

(assert (=> b!5506753 (= tp!1515155 e!3406096)))

(declare-fun b!5507133 () Bool)

(assert (=> b!5507133 (= e!3406096 tp_is_empty!40231)))

(declare-fun b!5507134 () Bool)

(declare-fun tp!1515239 () Bool)

(declare-fun tp!1515242 () Bool)

(assert (=> b!5507134 (= e!3406096 (and tp!1515239 tp!1515242))))

(declare-fun b!5507136 () Bool)

(declare-fun tp!1515240 () Bool)

(declare-fun tp!1515241 () Bool)

(assert (=> b!5507136 (= e!3406096 (and tp!1515240 tp!1515241))))

(declare-fun b!5507135 () Bool)

(declare-fun tp!1515238 () Bool)

(assert (=> b!5507135 (= e!3406096 tp!1515238)))

(assert (= (and b!5506753 ((_ is ElementMatch!15489) (regOne!31491 (regTwo!31491 r!7292)))) b!5507133))

(assert (= (and b!5506753 ((_ is Concat!24334) (regOne!31491 (regTwo!31491 r!7292)))) b!5507134))

(assert (= (and b!5506753 ((_ is Star!15489) (regOne!31491 (regTwo!31491 r!7292)))) b!5507135))

(assert (= (and b!5506753 ((_ is Union!15489) (regOne!31491 (regTwo!31491 r!7292)))) b!5507136))

(declare-fun e!3406097 () Bool)

(assert (=> b!5506753 (= tp!1515156 e!3406097)))

(declare-fun b!5507137 () Bool)

(assert (=> b!5507137 (= e!3406097 tp_is_empty!40231)))

(declare-fun b!5507138 () Bool)

(declare-fun tp!1515244 () Bool)

(declare-fun tp!1515247 () Bool)

(assert (=> b!5507138 (= e!3406097 (and tp!1515244 tp!1515247))))

(declare-fun b!5507140 () Bool)

(declare-fun tp!1515245 () Bool)

(declare-fun tp!1515246 () Bool)

(assert (=> b!5507140 (= e!3406097 (and tp!1515245 tp!1515246))))

(declare-fun b!5507139 () Bool)

(declare-fun tp!1515243 () Bool)

(assert (=> b!5507139 (= e!3406097 tp!1515243)))

(assert (= (and b!5506753 ((_ is ElementMatch!15489) (regTwo!31491 (regTwo!31491 r!7292)))) b!5507137))

(assert (= (and b!5506753 ((_ is Concat!24334) (regTwo!31491 (regTwo!31491 r!7292)))) b!5507138))

(assert (= (and b!5506753 ((_ is Star!15489) (regTwo!31491 (regTwo!31491 r!7292)))) b!5507139))

(assert (= (and b!5506753 ((_ is Union!15489) (regTwo!31491 (regTwo!31491 r!7292)))) b!5507140))

(declare-fun e!3406098 () Bool)

(assert (=> b!5506723 (= tp!1515121 e!3406098)))

(declare-fun b!5507141 () Bool)

(assert (=> b!5507141 (= e!3406098 tp_is_empty!40231)))

(declare-fun b!5507142 () Bool)

(declare-fun tp!1515249 () Bool)

(declare-fun tp!1515252 () Bool)

(assert (=> b!5507142 (= e!3406098 (and tp!1515249 tp!1515252))))

(declare-fun b!5507144 () Bool)

(declare-fun tp!1515250 () Bool)

(declare-fun tp!1515251 () Bool)

(assert (=> b!5507144 (= e!3406098 (and tp!1515250 tp!1515251))))

(declare-fun b!5507143 () Bool)

(declare-fun tp!1515248 () Bool)

(assert (=> b!5507143 (= e!3406098 tp!1515248)))

(assert (= (and b!5506723 ((_ is ElementMatch!15489) (reg!15818 (reg!15818 r!7292)))) b!5507141))

(assert (= (and b!5506723 ((_ is Concat!24334) (reg!15818 (reg!15818 r!7292)))) b!5507142))

(assert (= (and b!5506723 ((_ is Star!15489) (reg!15818 (reg!15818 r!7292)))) b!5507143))

(assert (= (and b!5506723 ((_ is Union!15489) (reg!15818 (reg!15818 r!7292)))) b!5507144))

(declare-fun e!3406099 () Bool)

(assert (=> b!5506751 (= tp!1515154 e!3406099)))

(declare-fun b!5507145 () Bool)

(assert (=> b!5507145 (= e!3406099 tp_is_empty!40231)))

(declare-fun b!5507146 () Bool)

(declare-fun tp!1515254 () Bool)

(declare-fun tp!1515257 () Bool)

(assert (=> b!5507146 (= e!3406099 (and tp!1515254 tp!1515257))))

(declare-fun b!5507148 () Bool)

(declare-fun tp!1515255 () Bool)

(declare-fun tp!1515256 () Bool)

(assert (=> b!5507148 (= e!3406099 (and tp!1515255 tp!1515256))))

(declare-fun b!5507147 () Bool)

(declare-fun tp!1515253 () Bool)

(assert (=> b!5507147 (= e!3406099 tp!1515253)))

(assert (= (and b!5506751 ((_ is ElementMatch!15489) (regOne!31490 (regTwo!31491 r!7292)))) b!5507145))

(assert (= (and b!5506751 ((_ is Concat!24334) (regOne!31490 (regTwo!31491 r!7292)))) b!5507146))

(assert (= (and b!5506751 ((_ is Star!15489) (regOne!31490 (regTwo!31491 r!7292)))) b!5507147))

(assert (= (and b!5506751 ((_ is Union!15489) (regOne!31490 (regTwo!31491 r!7292)))) b!5507148))

(declare-fun e!3406100 () Bool)

(assert (=> b!5506751 (= tp!1515157 e!3406100)))

(declare-fun b!5507149 () Bool)

(assert (=> b!5507149 (= e!3406100 tp_is_empty!40231)))

(declare-fun b!5507150 () Bool)

(declare-fun tp!1515259 () Bool)

(declare-fun tp!1515262 () Bool)

(assert (=> b!5507150 (= e!3406100 (and tp!1515259 tp!1515262))))

(declare-fun b!5507152 () Bool)

(declare-fun tp!1515260 () Bool)

(declare-fun tp!1515261 () Bool)

(assert (=> b!5507152 (= e!3406100 (and tp!1515260 tp!1515261))))

(declare-fun b!5507151 () Bool)

(declare-fun tp!1515258 () Bool)

(assert (=> b!5507151 (= e!3406100 tp!1515258)))

(assert (= (and b!5506751 ((_ is ElementMatch!15489) (regTwo!31490 (regTwo!31491 r!7292)))) b!5507149))

(assert (= (and b!5506751 ((_ is Concat!24334) (regTwo!31490 (regTwo!31491 r!7292)))) b!5507150))

(assert (= (and b!5506751 ((_ is Star!15489) (regTwo!31490 (regTwo!31491 r!7292)))) b!5507151))

(assert (= (and b!5506751 ((_ is Union!15489) (regTwo!31490 (regTwo!31491 r!7292)))) b!5507152))

(declare-fun e!3406101 () Bool)

(assert (=> b!5506735 (= tp!1515132 e!3406101)))

(declare-fun b!5507153 () Bool)

(assert (=> b!5507153 (= e!3406101 tp_is_empty!40231)))

(declare-fun b!5507154 () Bool)

(declare-fun tp!1515264 () Bool)

(declare-fun tp!1515267 () Bool)

(assert (=> b!5507154 (= e!3406101 (and tp!1515264 tp!1515267))))

(declare-fun b!5507156 () Bool)

(declare-fun tp!1515265 () Bool)

(declare-fun tp!1515266 () Bool)

(assert (=> b!5507156 (= e!3406101 (and tp!1515265 tp!1515266))))

(declare-fun b!5507155 () Bool)

(declare-fun tp!1515263 () Bool)

(assert (=> b!5507155 (= e!3406101 tp!1515263)))

(assert (= (and b!5506735 ((_ is ElementMatch!15489) (reg!15818 (regOne!31490 r!7292)))) b!5507153))

(assert (= (and b!5506735 ((_ is Concat!24334) (reg!15818 (regOne!31490 r!7292)))) b!5507154))

(assert (= (and b!5506735 ((_ is Star!15489) (reg!15818 (regOne!31490 r!7292)))) b!5507155))

(assert (= (and b!5506735 ((_ is Union!15489) (reg!15818 (regOne!31490 r!7292)))) b!5507156))

(declare-fun e!3406102 () Bool)

(assert (=> b!5506736 (= tp!1515134 e!3406102)))

(declare-fun b!5507157 () Bool)

(assert (=> b!5507157 (= e!3406102 tp_is_empty!40231)))

(declare-fun b!5507158 () Bool)

(declare-fun tp!1515269 () Bool)

(declare-fun tp!1515272 () Bool)

(assert (=> b!5507158 (= e!3406102 (and tp!1515269 tp!1515272))))

(declare-fun b!5507160 () Bool)

(declare-fun tp!1515270 () Bool)

(declare-fun tp!1515271 () Bool)

(assert (=> b!5507160 (= e!3406102 (and tp!1515270 tp!1515271))))

(declare-fun b!5507159 () Bool)

(declare-fun tp!1515268 () Bool)

(assert (=> b!5507159 (= e!3406102 tp!1515268)))

(assert (= (and b!5506736 ((_ is ElementMatch!15489) (regOne!31491 (regOne!31490 r!7292)))) b!5507157))

(assert (= (and b!5506736 ((_ is Concat!24334) (regOne!31491 (regOne!31490 r!7292)))) b!5507158))

(assert (= (and b!5506736 ((_ is Star!15489) (regOne!31491 (regOne!31490 r!7292)))) b!5507159))

(assert (= (and b!5506736 ((_ is Union!15489) (regOne!31491 (regOne!31490 r!7292)))) b!5507160))

(declare-fun e!3406103 () Bool)

(assert (=> b!5506736 (= tp!1515135 e!3406103)))

(declare-fun b!5507161 () Bool)

(assert (=> b!5507161 (= e!3406103 tp_is_empty!40231)))

(declare-fun b!5507162 () Bool)

(declare-fun tp!1515274 () Bool)

(declare-fun tp!1515277 () Bool)

(assert (=> b!5507162 (= e!3406103 (and tp!1515274 tp!1515277))))

(declare-fun b!5507164 () Bool)

(declare-fun tp!1515275 () Bool)

(declare-fun tp!1515276 () Bool)

(assert (=> b!5507164 (= e!3406103 (and tp!1515275 tp!1515276))))

(declare-fun b!5507163 () Bool)

(declare-fun tp!1515273 () Bool)

(assert (=> b!5507163 (= e!3406103 tp!1515273)))

(assert (= (and b!5506736 ((_ is ElementMatch!15489) (regTwo!31491 (regOne!31490 r!7292)))) b!5507161))

(assert (= (and b!5506736 ((_ is Concat!24334) (regTwo!31491 (regOne!31490 r!7292)))) b!5507162))

(assert (= (and b!5506736 ((_ is Star!15489) (regTwo!31491 (regOne!31490 r!7292)))) b!5507163))

(assert (= (and b!5506736 ((_ is Union!15489) (regTwo!31491 (regOne!31490 r!7292)))) b!5507164))

(declare-fun b!5507165 () Bool)

(declare-fun e!3406104 () Bool)

(declare-fun tp!1515278 () Bool)

(assert (=> b!5507165 (= e!3406104 (and tp_is_empty!40231 tp!1515278))))

(assert (=> b!5506705 (= tp!1515104 e!3406104)))

(assert (= (and b!5506705 ((_ is Cons!62644) (t!376009 (t!376009 s!2326)))) b!5507165))

(declare-fun e!3406105 () Bool)

(assert (=> b!5506734 (= tp!1515133 e!3406105)))

(declare-fun b!5507166 () Bool)

(assert (=> b!5507166 (= e!3406105 tp_is_empty!40231)))

(declare-fun b!5507167 () Bool)

(declare-fun tp!1515280 () Bool)

(declare-fun tp!1515283 () Bool)

(assert (=> b!5507167 (= e!3406105 (and tp!1515280 tp!1515283))))

(declare-fun b!5507169 () Bool)

(declare-fun tp!1515281 () Bool)

(declare-fun tp!1515282 () Bool)

(assert (=> b!5507169 (= e!3406105 (and tp!1515281 tp!1515282))))

(declare-fun b!5507168 () Bool)

(declare-fun tp!1515279 () Bool)

(assert (=> b!5507168 (= e!3406105 tp!1515279)))

(assert (= (and b!5506734 ((_ is ElementMatch!15489) (regOne!31490 (regOne!31490 r!7292)))) b!5507166))

(assert (= (and b!5506734 ((_ is Concat!24334) (regOne!31490 (regOne!31490 r!7292)))) b!5507167))

(assert (= (and b!5506734 ((_ is Star!15489) (regOne!31490 (regOne!31490 r!7292)))) b!5507168))

(assert (= (and b!5506734 ((_ is Union!15489) (regOne!31490 (regOne!31490 r!7292)))) b!5507169))

(declare-fun e!3406106 () Bool)

(assert (=> b!5506734 (= tp!1515136 e!3406106)))

(declare-fun b!5507170 () Bool)

(assert (=> b!5507170 (= e!3406106 tp_is_empty!40231)))

(declare-fun b!5507171 () Bool)

(declare-fun tp!1515285 () Bool)

(declare-fun tp!1515288 () Bool)

(assert (=> b!5507171 (= e!3406106 (and tp!1515285 tp!1515288))))

(declare-fun b!5507173 () Bool)

(declare-fun tp!1515286 () Bool)

(declare-fun tp!1515287 () Bool)

(assert (=> b!5507173 (= e!3406106 (and tp!1515286 tp!1515287))))

(declare-fun b!5507172 () Bool)

(declare-fun tp!1515284 () Bool)

(assert (=> b!5507172 (= e!3406106 tp!1515284)))

(assert (= (and b!5506734 ((_ is ElementMatch!15489) (regTwo!31490 (regOne!31490 r!7292)))) b!5507170))

(assert (= (and b!5506734 ((_ is Concat!24334) (regTwo!31490 (regOne!31490 r!7292)))) b!5507171))

(assert (= (and b!5506734 ((_ is Star!15489) (regTwo!31490 (regOne!31490 r!7292)))) b!5507172))

(assert (= (and b!5506734 ((_ is Union!15489) (regTwo!31490 (regOne!31490 r!7292)))) b!5507173))

(declare-fun e!3406107 () Bool)

(assert (=> b!5506747 (= tp!1515149 e!3406107)))

(declare-fun b!5507174 () Bool)

(assert (=> b!5507174 (= e!3406107 tp_is_empty!40231)))

(declare-fun b!5507175 () Bool)

(declare-fun tp!1515290 () Bool)

(declare-fun tp!1515293 () Bool)

(assert (=> b!5507175 (= e!3406107 (and tp!1515290 tp!1515293))))

(declare-fun b!5507177 () Bool)

(declare-fun tp!1515291 () Bool)

(declare-fun tp!1515292 () Bool)

(assert (=> b!5507177 (= e!3406107 (and tp!1515291 tp!1515292))))

(declare-fun b!5507176 () Bool)

(declare-fun tp!1515289 () Bool)

(assert (=> b!5507176 (= e!3406107 tp!1515289)))

(assert (= (and b!5506747 ((_ is ElementMatch!15489) (regOne!31490 (regOne!31491 r!7292)))) b!5507174))

(assert (= (and b!5506747 ((_ is Concat!24334) (regOne!31490 (regOne!31491 r!7292)))) b!5507175))

(assert (= (and b!5506747 ((_ is Star!15489) (regOne!31490 (regOne!31491 r!7292)))) b!5507176))

(assert (= (and b!5506747 ((_ is Union!15489) (regOne!31490 (regOne!31491 r!7292)))) b!5507177))

(declare-fun e!3406108 () Bool)

(assert (=> b!5506747 (= tp!1515152 e!3406108)))

(declare-fun b!5507178 () Bool)

(assert (=> b!5507178 (= e!3406108 tp_is_empty!40231)))

(declare-fun b!5507179 () Bool)

(declare-fun tp!1515295 () Bool)

(declare-fun tp!1515298 () Bool)

(assert (=> b!5507179 (= e!3406108 (and tp!1515295 tp!1515298))))

(declare-fun b!5507181 () Bool)

(declare-fun tp!1515296 () Bool)

(declare-fun tp!1515297 () Bool)

(assert (=> b!5507181 (= e!3406108 (and tp!1515296 tp!1515297))))

(declare-fun b!5507180 () Bool)

(declare-fun tp!1515294 () Bool)

(assert (=> b!5507180 (= e!3406108 tp!1515294)))

(assert (= (and b!5506747 ((_ is ElementMatch!15489) (regTwo!31490 (regOne!31491 r!7292)))) b!5507178))

(assert (= (and b!5506747 ((_ is Concat!24334) (regTwo!31490 (regOne!31491 r!7292)))) b!5507179))

(assert (= (and b!5506747 ((_ is Star!15489) (regTwo!31490 (regOne!31491 r!7292)))) b!5507180))

(assert (= (and b!5506747 ((_ is Union!15489) (regTwo!31490 (regOne!31491 r!7292)))) b!5507181))

(declare-fun e!3406109 () Bool)

(assert (=> b!5506748 (= tp!1515148 e!3406109)))

(declare-fun b!5507182 () Bool)

(assert (=> b!5507182 (= e!3406109 tp_is_empty!40231)))

(declare-fun b!5507183 () Bool)

(declare-fun tp!1515300 () Bool)

(declare-fun tp!1515303 () Bool)

(assert (=> b!5507183 (= e!3406109 (and tp!1515300 tp!1515303))))

(declare-fun b!5507185 () Bool)

(declare-fun tp!1515301 () Bool)

(declare-fun tp!1515302 () Bool)

(assert (=> b!5507185 (= e!3406109 (and tp!1515301 tp!1515302))))

(declare-fun b!5507184 () Bool)

(declare-fun tp!1515299 () Bool)

(assert (=> b!5507184 (= e!3406109 tp!1515299)))

(assert (= (and b!5506748 ((_ is ElementMatch!15489) (reg!15818 (regOne!31491 r!7292)))) b!5507182))

(assert (= (and b!5506748 ((_ is Concat!24334) (reg!15818 (regOne!31491 r!7292)))) b!5507183))

(assert (= (and b!5506748 ((_ is Star!15489) (reg!15818 (regOne!31491 r!7292)))) b!5507184))

(assert (= (and b!5506748 ((_ is Union!15489) (reg!15818 (regOne!31491 r!7292)))) b!5507185))

(declare-fun e!3406110 () Bool)

(assert (=> b!5506749 (= tp!1515150 e!3406110)))

(declare-fun b!5507186 () Bool)

(assert (=> b!5507186 (= e!3406110 tp_is_empty!40231)))

(declare-fun b!5507187 () Bool)

(declare-fun tp!1515305 () Bool)

(declare-fun tp!1515308 () Bool)

(assert (=> b!5507187 (= e!3406110 (and tp!1515305 tp!1515308))))

(declare-fun b!5507189 () Bool)

(declare-fun tp!1515306 () Bool)

(declare-fun tp!1515307 () Bool)

(assert (=> b!5507189 (= e!3406110 (and tp!1515306 tp!1515307))))

(declare-fun b!5507188 () Bool)

(declare-fun tp!1515304 () Bool)

(assert (=> b!5507188 (= e!3406110 tp!1515304)))

(assert (= (and b!5506749 ((_ is ElementMatch!15489) (regOne!31491 (regOne!31491 r!7292)))) b!5507186))

(assert (= (and b!5506749 ((_ is Concat!24334) (regOne!31491 (regOne!31491 r!7292)))) b!5507187))

(assert (= (and b!5506749 ((_ is Star!15489) (regOne!31491 (regOne!31491 r!7292)))) b!5507188))

(assert (= (and b!5506749 ((_ is Union!15489) (regOne!31491 (regOne!31491 r!7292)))) b!5507189))

(declare-fun e!3406111 () Bool)

(assert (=> b!5506749 (= tp!1515151 e!3406111)))

(declare-fun b!5507190 () Bool)

(assert (=> b!5507190 (= e!3406111 tp_is_empty!40231)))

(declare-fun b!5507191 () Bool)

(declare-fun tp!1515310 () Bool)

(declare-fun tp!1515313 () Bool)

(assert (=> b!5507191 (= e!3406111 (and tp!1515310 tp!1515313))))

(declare-fun b!5507193 () Bool)

(declare-fun tp!1515311 () Bool)

(declare-fun tp!1515312 () Bool)

(assert (=> b!5507193 (= e!3406111 (and tp!1515311 tp!1515312))))

(declare-fun b!5507192 () Bool)

(declare-fun tp!1515309 () Bool)

(assert (=> b!5507192 (= e!3406111 tp!1515309)))

(assert (= (and b!5506749 ((_ is ElementMatch!15489) (regTwo!31491 (regOne!31491 r!7292)))) b!5507190))

(assert (= (and b!5506749 ((_ is Concat!24334) (regTwo!31491 (regOne!31491 r!7292)))) b!5507191))

(assert (= (and b!5506749 ((_ is Star!15489) (regTwo!31491 (regOne!31491 r!7292)))) b!5507192))

(assert (= (and b!5506749 ((_ is Union!15489) (regTwo!31491 (regOne!31491 r!7292)))) b!5507193))

(declare-fun b_lambda!208813 () Bool)

(assert (= b_lambda!208807 (or d!1745114 b_lambda!208813)))

(declare-fun bs!1269962 () Bool)

(declare-fun d!1745278 () Bool)

(assert (= bs!1269962 (and d!1745278 d!1745114)))

(assert (=> bs!1269962 (= (dynLambda!24475 lambda!294902 (h!69090 lt!2244423)) (validRegex!7225 (h!69090 lt!2244423)))))

(declare-fun m!6513424 () Bool)

(assert (=> bs!1269962 m!6513424))

(assert (=> b!5506970 d!1745278))

(declare-fun b_lambda!208815 () Bool)

(assert (= b_lambda!208803 (or d!1745052 b_lambda!208815)))

(declare-fun bs!1269964 () Bool)

(declare-fun d!1745280 () Bool)

(assert (= bs!1269964 (and d!1745280 d!1745052)))

(assert (=> bs!1269964 (= (dynLambda!24475 lambda!294858 (h!69090 (exprs!5373 setElem!36541))) (validRegex!7225 (h!69090 (exprs!5373 setElem!36541))))))

(declare-fun m!6513426 () Bool)

(assert (=> bs!1269964 m!6513426))

(assert (=> b!5506838 d!1745280))

(declare-fun b_lambda!208817 () Bool)

(assert (= b_lambda!208811 (or d!1745108 b_lambda!208817)))

(declare-fun bs!1269965 () Bool)

(declare-fun d!1745282 () Bool)

(assert (= bs!1269965 (and d!1745282 d!1745108)))

(assert (=> bs!1269965 (= (dynLambda!24475 lambda!294893 (h!69090 (unfocusZipperList!917 zl!343))) (validRegex!7225 (h!69090 (unfocusZipperList!917 zl!343))))))

(declare-fun m!6513428 () Bool)

(assert (=> bs!1269965 m!6513428))

(assert (=> b!5507065 d!1745282))

(declare-fun b_lambda!208819 () Bool)

(assert (= b_lambda!208809 (or d!1745066 b_lambda!208819)))

(declare-fun bs!1269966 () Bool)

(declare-fun d!1745284 () Bool)

(assert (= bs!1269966 (and d!1745284 d!1745066)))

(assert (=> bs!1269966 (= (dynLambda!24475 lambda!294864 (h!69090 (exprs!5373 (h!69091 zl!343)))) (validRegex!7225 (h!69090 (exprs!5373 (h!69091 zl!343)))))))

(declare-fun m!6513430 () Bool)

(assert (=> bs!1269966 m!6513430))

(assert (=> b!5507040 d!1745284))

(declare-fun b_lambda!208821 () Bool)

(assert (= b_lambda!208805 (or d!1745124 b_lambda!208821)))

(declare-fun bs!1269968 () Bool)

(declare-fun d!1745286 () Bool)

(assert (= bs!1269968 (and d!1745286 d!1745124)))

(assert (=> bs!1269968 (= (dynLambda!24475 lambda!294911 (h!69090 (exprs!5373 (h!69091 zl!343)))) (validRegex!7225 (h!69090 (exprs!5373 (h!69091 zl!343)))))))

(assert (=> bs!1269968 m!6513430))

(assert (=> b!5506908 d!1745286))

(check-sat (not b_lambda!208815) (not b!5507152) (not bs!1269962) (not bm!406938) (not b!5506770) (not b!5507181) (not b!5507091) (not b!5506775) (not b!5506971) (not d!1745152) (not b!5507104) (not b!5507131) (not b!5507146) (not b!5506909) (not b!5506826) (not b!5506844) (not b!5506972) (not b!5507191) (not d!1745256) (not b!5507047) (not b!5506934) (not b!5506963) (not bm!406957) (not b!5506776) (not b!5507124) (not b!5507130) (not b!5506925) (not b_lambda!208813) (not bm!406933) (not b!5507136) (not d!1745236) (not b!5507103) (not bm!406950) (not b!5506877) (not b!5506828) (not b!5507155) (not b!5507156) (not b!5507154) (not b!5506871) (not b!5507097) (not b!5507169) (not b!5507041) (not b!5507101) (not b!5506820) (not b!5507144) (not b!5507140) (not b!5507179) (not b!5507163) (not b!5506825) (not b!5507027) (not b!5507075) (not b!5507030) (not b!5506988) (not bs!1269968) (not d!1745180) (not b!5506933) (not b!5506832) (not b!5506979) (not b!5506852) (not d!1745198) (not b!5507151) (not b!5507162) (not d!1745208) (not bm!406913) (not b!5506892) (not b!5507082) (not b!5507177) (not b!5507123) (not b!5507099) (not bm!406942) (not d!1745214) (not d!1745270) (not b!5507187) (not d!1745182) (not b!5506839) (not b!5507078) (not d!1745244) (not b!5506926) (not d!1745258) (not b!5506938) (not d!1745242) (not b!5507026) (not b!5507074) (not b!5507048) (not b!5506863) (not setNonEmpty!36548) (not b!5507165) (not b!5507015) (not b!5507118) (not b!5507089) (not b!5507034) (not bm!406928) (not b!5506874) (not b!5507175) (not bm!406916) (not b!5506901) (not b!5506989) (not b!5507071) (not d!1745212) (not b!5507171) (not bm!406918) (not b!5506870) (not b!5507160) (not b!5507173) (not b!5507119) (not b!5507192) (not bm!406930) (not b!5506984) (not b!5507143) (not b!5507126) (not bm!406932) (not b!5507134) (not bm!406902) (not b!5506994) (not d!1745234) (not bm!406948) (not b!5507188) (not b!5507132) (not b!5507054) (not b!5506875) (not b!5507085) (not b!5507093) (not d!1745266) (not b!5506848) (not b!5507090) (not b!5506945) (not d!1745150) (not b!5507138) (not b!5506864) (not b!5506780) (not b!5506867) (not b!5507148) (not b!5507158) (not b!5507028) (not b!5506784) (not bm!406921) (not b!5507180) (not b!5506771) (not d!1745170) (not b!5507087) (not d!1745176) (not bm!406903) (not bs!1269965) (not d!1745144) (not b!5506767) (not b!5507189) (not b!5507094) (not bm!406951) tp_is_empty!40231 (not b!5506845) (not b!5507066) (not b!5507167) (not b!5506782) (not b!5507095) (not b!5507150) (not bm!406931) (not b!5507069) (not b!5507079) (not d!1745264) (not b!5507176) (not b!5507185) (not b!5507084) (not b!5506757) (not bs!1269964) (not bm!406956) (not b!5506781) (not b!5506920) (not b!5506815) (not bm!406917) (not b_lambda!208819) (not b!5507172) (not b!5507128) (not bm!406954) (not bm!406923) (not b!5507159) (not b!5507139) (not d!1745160) (not bm!406945) (not b!5506840) (not b!5506882) (not b!5506773) (not b!5506868) (not b!5507042) (not b!5506788) (not bm!406935) (not b!5507193) (not b!5507086) (not b!5506980) (not d!1745238) (not b!5507070) (not b!5507184) (not b!5507081) (not b!5507022) (not d!1745178) (not b!5506824) (not d!1745226) (not b!5507147) (not d!1745202) (not b!5506952) (not b!5507058) (not b!5507080) (not b!5507068) (not bm!406927) (not b!5507135) (not b!5506876) (not bm!406924) (not b!5506912) (not b!5507164) (not b!5507102) (not bm!406944) (not bm!406952) (not b!5506981) (not bm!406939) (not b!5507098) (not b_lambda!208817) (not b!5507005) (not b!5507183) (not b!5507046) (not b!5507122) (not b!5507105) (not bm!406901) (not b!5506765) (not bm!406925) (not b!5506766) (not d!1745154) (not d!1745216) (not b!5507142) (not b!5506982) (not b!5507120) (not bm!406936) (not b!5506973) (not b!5507076) (not b!5506978) (not b_lambda!208821) (not b!5506768) (not b!5507168) (not bm!406955) (not bs!1269966) (not d!1745164) (not b!5507050) (not b!5507072) (not b!5506975) (not b!5507127) (not bm!406914) (not b!5506935) (not b!5506846) (not d!1745142))
(check-sat)
