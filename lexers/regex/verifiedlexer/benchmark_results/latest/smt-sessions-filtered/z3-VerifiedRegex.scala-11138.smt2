; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!577422 () Bool)

(assert start!577422)

(declare-fun b!5533700 () Bool)

(assert (=> b!5533700 true))

(assert (=> b!5533700 true))

(declare-fun lambda!297118 () Int)

(declare-fun lambda!297117 () Int)

(assert (=> b!5533700 (not (= lambda!297118 lambda!297117))))

(assert (=> b!5533700 true))

(assert (=> b!5533700 true))

(declare-fun b!5533716 () Bool)

(assert (=> b!5533716 true))

(declare-fun setIsEmpty!36839 () Bool)

(declare-fun setRes!36839 () Bool)

(assert (=> setIsEmpty!36839 setRes!36839))

(declare-fun e!3420519 () Bool)

(declare-fun e!3420525 () Bool)

(assert (=> b!5533700 (= e!3420519 e!3420525)))

(declare-fun res!2355974 () Bool)

(assert (=> b!5533700 (=> res!2355974 e!3420525)))

(declare-fun lt!2249014 () Bool)

(declare-datatypes ((C!31316 0))(
  ( (C!31317 (val!25360 Int)) )
))
(declare-datatypes ((List!62868 0))(
  ( (Nil!62744) (Cons!62744 (h!69192 C!31316) (t!376129 List!62868)) )
))
(declare-fun s!2326 () List!62868)

(declare-fun lt!2249024 () Bool)

(get-info :version)

(assert (=> b!5533700 (= res!2355974 (or (not (= lt!2249014 lt!2249024)) ((_ is Nil!62744) s!2326)))))

(declare-fun Exists!2623 (Int) Bool)

(assert (=> b!5533700 (= (Exists!2623 lambda!297117) (Exists!2623 lambda!297118))))

(declare-datatypes ((Unit!155506 0))(
  ( (Unit!155507) )
))
(declare-fun lt!2249016 () Unit!155506)

(declare-datatypes ((Regex!15523 0))(
  ( (ElementMatch!15523 (c!968551 C!31316)) (Concat!24368 (regOne!31558 Regex!15523) (regTwo!31558 Regex!15523)) (EmptyExpr!15523) (Star!15523 (reg!15852 Regex!15523)) (EmptyLang!15523) (Union!15523 (regOne!31559 Regex!15523) (regTwo!31559 Regex!15523)) )
))
(declare-fun r!7292 () Regex!15523)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1252 (Regex!15523 Regex!15523 List!62868) Unit!155506)

(assert (=> b!5533700 (= lt!2249016 (lemmaExistCutMatchRandMatchRSpecEquivalent!1252 (regOne!31558 r!7292) (regTwo!31558 r!7292) s!2326))))

(assert (=> b!5533700 (= lt!2249024 (Exists!2623 lambda!297117))))

(declare-datatypes ((tuple2!65240 0))(
  ( (tuple2!65241 (_1!35923 List!62868) (_2!35923 List!62868)) )
))
(declare-datatypes ((Option!15532 0))(
  ( (None!15531) (Some!15531 (v!51568 tuple2!65240)) )
))
(declare-fun isDefined!12235 (Option!15532) Bool)

(declare-fun findConcatSeparation!1946 (Regex!15523 Regex!15523 List!62868 List!62868 List!62868) Option!15532)

(assert (=> b!5533700 (= lt!2249024 (isDefined!12235 (findConcatSeparation!1946 (regOne!31558 r!7292) (regTwo!31558 r!7292) Nil!62744 s!2326 s!2326)))))

(declare-fun lt!2249026 () Unit!155506)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1710 (Regex!15523 Regex!15523 List!62868) Unit!155506)

(assert (=> b!5533700 (= lt!2249026 (lemmaFindConcatSeparationEquivalentToExists!1710 (regOne!31558 r!7292) (regTwo!31558 r!7292) s!2326))))

(declare-fun b!5533701 () Bool)

(declare-fun res!2355982 () Bool)

(assert (=> b!5533701 (=> res!2355982 e!3420519)))

(assert (=> b!5533701 (= res!2355982 (or ((_ is EmptyExpr!15523) r!7292) ((_ is EmptyLang!15523) r!7292) ((_ is ElementMatch!15523) r!7292) ((_ is Union!15523) r!7292) (not ((_ is Concat!24368) r!7292))))))

(declare-fun b!5533702 () Bool)

(declare-fun e!3420526 () Bool)

(declare-fun tp!1522182 () Bool)

(assert (=> b!5533702 (= e!3420526 tp!1522182)))

(declare-fun b!5533703 () Bool)

(declare-fun res!2355973 () Bool)

(assert (=> b!5533703 (=> res!2355973 e!3420525)))

(declare-datatypes ((List!62869 0))(
  ( (Nil!62745) (Cons!62745 (h!69193 Regex!15523) (t!376130 List!62869)) )
))
(declare-datatypes ((Context!9814 0))(
  ( (Context!9815 (exprs!5407 List!62869)) )
))
(declare-datatypes ((List!62870 0))(
  ( (Nil!62746) (Cons!62746 (h!69194 Context!9814) (t!376131 List!62870)) )
))
(declare-fun zl!343 () List!62870)

(declare-fun isEmpty!34533 (List!62869) Bool)

(assert (=> b!5533703 (= res!2355973 (not (isEmpty!34533 (t!376130 (exprs!5407 (h!69194 zl!343))))))))

(declare-fun b!5533704 () Bool)

(declare-fun e!3420520 () Bool)

(declare-fun tp_is_empty!40299 () Bool)

(declare-fun tp!1522180 () Bool)

(assert (=> b!5533704 (= e!3420520 (and tp_is_empty!40299 tp!1522180))))

(declare-fun tp!1522183 () Bool)

(declare-fun setNonEmpty!36839 () Bool)

(declare-fun setElem!36839 () Context!9814)

(declare-fun e!3420521 () Bool)

(declare-fun inv!82054 (Context!9814) Bool)

(assert (=> setNonEmpty!36839 (= setRes!36839 (and tp!1522183 (inv!82054 setElem!36839) e!3420521))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9814))

(declare-fun setRest!36839 () (InoxSet Context!9814))

(assert (=> setNonEmpty!36839 (= z!1189 ((_ map or) (store ((as const (Array Context!9814 Bool)) false) setElem!36839 true) setRest!36839))))

(declare-fun b!5533705 () Bool)

(declare-fun tp!1522181 () Bool)

(assert (=> b!5533705 (= e!3420521 tp!1522181)))

(declare-fun b!5533706 () Bool)

(declare-fun res!2355970 () Bool)

(assert (=> b!5533706 (=> res!2355970 e!3420519)))

(declare-fun isEmpty!34534 (List!62870) Bool)

(assert (=> b!5533706 (= res!2355970 (not (isEmpty!34534 (t!376131 zl!343))))))

(declare-fun b!5533707 () Bool)

(declare-fun e!3420527 () Bool)

(declare-fun tp!1522176 () Bool)

(declare-fun tp!1522178 () Bool)

(assert (=> b!5533707 (= e!3420527 (and tp!1522176 tp!1522178))))

(declare-fun b!5533708 () Bool)

(declare-fun e!3420523 () Bool)

(declare-fun tp!1522177 () Bool)

(assert (=> b!5533708 (= e!3420523 (and (inv!82054 (h!69194 zl!343)) e!3420526 tp!1522177))))

(declare-fun res!2355981 () Bool)

(declare-fun e!3420524 () Bool)

(assert (=> start!577422 (=> (not res!2355981) (not e!3420524))))

(declare-fun validRegex!7259 (Regex!15523) Bool)

(assert (=> start!577422 (= res!2355981 (validRegex!7259 r!7292))))

(assert (=> start!577422 e!3420524))

(assert (=> start!577422 e!3420527))

(declare-fun condSetEmpty!36839 () Bool)

(assert (=> start!577422 (= condSetEmpty!36839 (= z!1189 ((as const (Array Context!9814 Bool)) false)))))

(assert (=> start!577422 setRes!36839))

(assert (=> start!577422 e!3420523))

(assert (=> start!577422 e!3420520))

(declare-fun b!5533709 () Bool)

(declare-fun e!3420522 () Bool)

(assert (=> b!5533709 (= e!3420522 true)))

(declare-fun lt!2249022 () (InoxSet Context!9814))

(declare-fun lt!2249029 () Context!9814)

(declare-fun derivationStepZipperDown!865 (Regex!15523 Context!9814 C!31316) (InoxSet Context!9814))

(assert (=> b!5533709 (= lt!2249022 (derivationStepZipperDown!865 (regTwo!31558 r!7292) lt!2249029 (h!69192 s!2326)))))

(declare-fun lt!2249031 () Context!9814)

(declare-fun lt!2249021 () (InoxSet Context!9814))

(assert (=> b!5533709 (= lt!2249021 (derivationStepZipperDown!865 (regOne!31558 r!7292) lt!2249031 (h!69192 s!2326)))))

(declare-fun lt!2249027 () (InoxSet Context!9814))

(declare-fun lambda!297119 () Int)

(declare-fun flatMap!1136 ((InoxSet Context!9814) Int) (InoxSet Context!9814))

(declare-fun derivationStepZipperUp!791 (Context!9814 C!31316) (InoxSet Context!9814))

(assert (=> b!5533709 (= (flatMap!1136 lt!2249027 lambda!297119) (derivationStepZipperUp!791 lt!2249031 (h!69192 s!2326)))))

(declare-fun lt!2249020 () Unit!155506)

(declare-fun lemmaFlatMapOnSingletonSet!668 ((InoxSet Context!9814) Context!9814 Int) Unit!155506)

(assert (=> b!5533709 (= lt!2249020 (lemmaFlatMapOnSingletonSet!668 lt!2249027 lt!2249031 lambda!297119))))

(declare-fun lt!2249023 () (InoxSet Context!9814))

(declare-fun lt!2249019 () Context!9814)

(assert (=> b!5533709 (= (flatMap!1136 lt!2249023 lambda!297119) (derivationStepZipperUp!791 lt!2249019 (h!69192 s!2326)))))

(declare-fun lt!2249028 () Unit!155506)

(assert (=> b!5533709 (= lt!2249028 (lemmaFlatMapOnSingletonSet!668 lt!2249023 lt!2249019 lambda!297119))))

(declare-fun lt!2249017 () (InoxSet Context!9814))

(assert (=> b!5533709 (= lt!2249017 (derivationStepZipperUp!791 lt!2249031 (h!69192 s!2326)))))

(declare-fun lt!2249032 () (InoxSet Context!9814))

(assert (=> b!5533709 (= lt!2249032 (derivationStepZipperUp!791 lt!2249019 (h!69192 s!2326)))))

(assert (=> b!5533709 (= lt!2249027 (store ((as const (Array Context!9814 Bool)) false) lt!2249031 true))))

(declare-fun lt!2249018 () List!62869)

(assert (=> b!5533709 (= lt!2249031 (Context!9815 lt!2249018))))

(assert (=> b!5533709 (= lt!2249023 (store ((as const (Array Context!9814 Bool)) false) lt!2249019 true))))

(assert (=> b!5533709 (= lt!2249019 (Context!9815 (Cons!62745 (regOne!31558 r!7292) lt!2249018)))))

(assert (=> b!5533709 (= lt!2249018 (Cons!62745 (regTwo!31558 r!7292) Nil!62745))))

(declare-fun b!5533710 () Bool)

(declare-fun res!2355972 () Bool)

(assert (=> b!5533710 (=> (not res!2355972) (not e!3420524))))

(declare-fun unfocusZipper!1265 (List!62870) Regex!15523)

(assert (=> b!5533710 (= res!2355972 (= r!7292 (unfocusZipper!1265 zl!343)))))

(declare-fun b!5533711 () Bool)

(assert (=> b!5533711 (= e!3420524 (not e!3420519))))

(declare-fun res!2355971 () Bool)

(assert (=> b!5533711 (=> res!2355971 e!3420519)))

(assert (=> b!5533711 (= res!2355971 (not ((_ is Cons!62746) zl!343)))))

(declare-fun matchRSpec!2626 (Regex!15523 List!62868) Bool)

(assert (=> b!5533711 (= lt!2249014 (matchRSpec!2626 r!7292 s!2326))))

(declare-fun matchR!7708 (Regex!15523 List!62868) Bool)

(assert (=> b!5533711 (= lt!2249014 (matchR!7708 r!7292 s!2326))))

(declare-fun lt!2249015 () Unit!155506)

(declare-fun mainMatchTheorem!2626 (Regex!15523 List!62868) Unit!155506)

(assert (=> b!5533711 (= lt!2249015 (mainMatchTheorem!2626 r!7292 s!2326))))

(declare-fun b!5533712 () Bool)

(declare-fun e!3420528 () Bool)

(assert (=> b!5533712 (= e!3420525 e!3420528)))

(declare-fun res!2355979 () Bool)

(assert (=> b!5533712 (=> res!2355979 e!3420528)))

(declare-fun lt!2249030 () (InoxSet Context!9814))

(declare-fun lt!2249033 () (InoxSet Context!9814))

(assert (=> b!5533712 (= res!2355979 (not (= lt!2249030 lt!2249033)))))

(assert (=> b!5533712 (= lt!2249033 (derivationStepZipperDown!865 r!7292 lt!2249029 (h!69192 s!2326)))))

(assert (=> b!5533712 (= lt!2249029 (Context!9815 Nil!62745))))

(assert (=> b!5533712 (= lt!2249030 (derivationStepZipperUp!791 (Context!9815 (Cons!62745 r!7292 Nil!62745)) (h!69192 s!2326)))))

(declare-fun b!5533713 () Bool)

(declare-fun res!2355975 () Bool)

(assert (=> b!5533713 (=> res!2355975 e!3420519)))

(declare-fun generalisedConcat!1138 (List!62869) Regex!15523)

(assert (=> b!5533713 (= res!2355975 (not (= r!7292 (generalisedConcat!1138 (exprs!5407 (h!69194 zl!343))))))))

(declare-fun b!5533714 () Bool)

(declare-fun res!2355977 () Bool)

(assert (=> b!5533714 (=> res!2355977 e!3420519)))

(assert (=> b!5533714 (= res!2355977 (not ((_ is Cons!62745) (exprs!5407 (h!69194 zl!343)))))))

(declare-fun b!5533715 () Bool)

(assert (=> b!5533715 (= e!3420527 tp_is_empty!40299)))

(assert (=> b!5533716 (= e!3420528 e!3420522)))

(declare-fun res!2355976 () Bool)

(assert (=> b!5533716 (=> res!2355976 e!3420522)))

(declare-fun derivationStepZipper!1628 ((InoxSet Context!9814) C!31316) (InoxSet Context!9814))

(assert (=> b!5533716 (= res!2355976 (not (= (derivationStepZipper!1628 z!1189 (h!69192 s!2326)) lt!2249033)))))

(assert (=> b!5533716 (= (flatMap!1136 z!1189 lambda!297119) (derivationStepZipperUp!791 (h!69194 zl!343) (h!69192 s!2326)))))

(declare-fun lt!2249025 () Unit!155506)

(assert (=> b!5533716 (= lt!2249025 (lemmaFlatMapOnSingletonSet!668 z!1189 (h!69194 zl!343) lambda!297119))))

(declare-fun b!5533717 () Bool)

(declare-fun res!2355978 () Bool)

(assert (=> b!5533717 (=> res!2355978 e!3420519)))

(declare-fun generalisedUnion!1386 (List!62869) Regex!15523)

(declare-fun unfocusZipperList!951 (List!62870) List!62869)

(assert (=> b!5533717 (= res!2355978 (not (= r!7292 (generalisedUnion!1386 (unfocusZipperList!951 zl!343)))))))

(declare-fun b!5533718 () Bool)

(declare-fun tp!1522174 () Bool)

(assert (=> b!5533718 (= e!3420527 tp!1522174)))

(declare-fun b!5533719 () Bool)

(declare-fun tp!1522175 () Bool)

(declare-fun tp!1522179 () Bool)

(assert (=> b!5533719 (= e!3420527 (and tp!1522175 tp!1522179))))

(declare-fun b!5533720 () Bool)

(declare-fun res!2355980 () Bool)

(assert (=> b!5533720 (=> (not res!2355980) (not e!3420524))))

(declare-fun toList!9307 ((InoxSet Context!9814)) List!62870)

(assert (=> b!5533720 (= res!2355980 (= (toList!9307 z!1189) zl!343))))

(assert (= (and start!577422 res!2355981) b!5533720))

(assert (= (and b!5533720 res!2355980) b!5533710))

(assert (= (and b!5533710 res!2355972) b!5533711))

(assert (= (and b!5533711 (not res!2355971)) b!5533706))

(assert (= (and b!5533706 (not res!2355970)) b!5533713))

(assert (= (and b!5533713 (not res!2355975)) b!5533714))

(assert (= (and b!5533714 (not res!2355977)) b!5533717))

(assert (= (and b!5533717 (not res!2355978)) b!5533701))

(assert (= (and b!5533701 (not res!2355982)) b!5533700))

(assert (= (and b!5533700 (not res!2355974)) b!5533703))

(assert (= (and b!5533703 (not res!2355973)) b!5533712))

(assert (= (and b!5533712 (not res!2355979)) b!5533716))

(assert (= (and b!5533716 (not res!2355976)) b!5533709))

(assert (= (and start!577422 ((_ is ElementMatch!15523) r!7292)) b!5533715))

(assert (= (and start!577422 ((_ is Concat!24368) r!7292)) b!5533719))

(assert (= (and start!577422 ((_ is Star!15523) r!7292)) b!5533718))

(assert (= (and start!577422 ((_ is Union!15523) r!7292)) b!5533707))

(assert (= (and start!577422 condSetEmpty!36839) setIsEmpty!36839))

(assert (= (and start!577422 (not condSetEmpty!36839)) setNonEmpty!36839))

(assert (= setNonEmpty!36839 b!5533705))

(assert (= b!5533708 b!5533702))

(assert (= (and start!577422 ((_ is Cons!62746) zl!343)) b!5533708))

(assert (= (and start!577422 ((_ is Cons!62744) s!2326)) b!5533704))

(declare-fun m!6535102 () Bool)

(assert (=> b!5533708 m!6535102))

(declare-fun m!6535104 () Bool)

(assert (=> start!577422 m!6535104))

(declare-fun m!6535106 () Bool)

(assert (=> b!5533706 m!6535106))

(declare-fun m!6535108 () Bool)

(assert (=> b!5533703 m!6535108))

(declare-fun m!6535110 () Bool)

(assert (=> b!5533709 m!6535110))

(declare-fun m!6535112 () Bool)

(assert (=> b!5533709 m!6535112))

(declare-fun m!6535114 () Bool)

(assert (=> b!5533709 m!6535114))

(declare-fun m!6535116 () Bool)

(assert (=> b!5533709 m!6535116))

(declare-fun m!6535118 () Bool)

(assert (=> b!5533709 m!6535118))

(declare-fun m!6535120 () Bool)

(assert (=> b!5533709 m!6535120))

(declare-fun m!6535122 () Bool)

(assert (=> b!5533709 m!6535122))

(declare-fun m!6535124 () Bool)

(assert (=> b!5533709 m!6535124))

(declare-fun m!6535126 () Bool)

(assert (=> b!5533709 m!6535126))

(declare-fun m!6535128 () Bool)

(assert (=> b!5533709 m!6535128))

(declare-fun m!6535130 () Bool)

(assert (=> b!5533710 m!6535130))

(declare-fun m!6535132 () Bool)

(assert (=> b!5533700 m!6535132))

(declare-fun m!6535134 () Bool)

(assert (=> b!5533700 m!6535134))

(declare-fun m!6535136 () Bool)

(assert (=> b!5533700 m!6535136))

(assert (=> b!5533700 m!6535136))

(declare-fun m!6535138 () Bool)

(assert (=> b!5533700 m!6535138))

(declare-fun m!6535140 () Bool)

(assert (=> b!5533700 m!6535140))

(assert (=> b!5533700 m!6535132))

(declare-fun m!6535142 () Bool)

(assert (=> b!5533700 m!6535142))

(declare-fun m!6535144 () Bool)

(assert (=> setNonEmpty!36839 m!6535144))

(declare-fun m!6535146 () Bool)

(assert (=> b!5533713 m!6535146))

(declare-fun m!6535148 () Bool)

(assert (=> b!5533711 m!6535148))

(declare-fun m!6535150 () Bool)

(assert (=> b!5533711 m!6535150))

(declare-fun m!6535152 () Bool)

(assert (=> b!5533711 m!6535152))

(declare-fun m!6535154 () Bool)

(assert (=> b!5533720 m!6535154))

(declare-fun m!6535156 () Bool)

(assert (=> b!5533712 m!6535156))

(declare-fun m!6535158 () Bool)

(assert (=> b!5533712 m!6535158))

(declare-fun m!6535160 () Bool)

(assert (=> b!5533717 m!6535160))

(assert (=> b!5533717 m!6535160))

(declare-fun m!6535162 () Bool)

(assert (=> b!5533717 m!6535162))

(declare-fun m!6535164 () Bool)

(assert (=> b!5533716 m!6535164))

(declare-fun m!6535166 () Bool)

(assert (=> b!5533716 m!6535166))

(declare-fun m!6535168 () Bool)

(assert (=> b!5533716 m!6535168))

(declare-fun m!6535170 () Bool)

(assert (=> b!5533716 m!6535170))

(check-sat (not b!5533718) (not b!5533705) (not b!5533706) (not b!5533707) (not b!5533700) (not b!5533719) (not start!577422) (not b!5533709) (not b!5533702) (not b!5533710) (not b!5533713) (not b!5533711) (not b!5533703) (not b!5533708) (not b!5533704) (not b!5533712) (not b!5533720) tp_is_empty!40299 (not b!5533717) (not setNonEmpty!36839) (not b!5533716))
(check-sat)
