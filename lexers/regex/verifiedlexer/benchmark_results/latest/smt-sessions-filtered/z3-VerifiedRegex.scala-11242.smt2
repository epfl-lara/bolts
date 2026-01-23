; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!589772 () Bool)

(assert start!589772)

(declare-fun b!5730138 () Bool)

(assert (=> b!5730138 true))

(assert (=> b!5730138 true))

(declare-fun lambda!310010 () Int)

(declare-fun lambda!310009 () Int)

(assert (=> b!5730138 (not (= lambda!310010 lambda!310009))))

(assert (=> b!5730138 true))

(assert (=> b!5730138 true))

(declare-fun b!5730120 () Bool)

(assert (=> b!5730120 true))

(declare-fun b!5730103 () Bool)

(assert (=> b!5730103 true))

(declare-fun b!5730096 () Bool)

(declare-fun e!3523054 () Bool)

(declare-fun tp!1586097 () Bool)

(assert (=> b!5730096 (= e!3523054 tp!1586097)))

(declare-fun b!5730097 () Bool)

(declare-fun res!2419156 () Bool)

(declare-fun e!3523071 () Bool)

(assert (=> b!5730097 (=> res!2419156 e!3523071)))

(declare-datatypes ((C!31732 0))(
  ( (C!31733 (val!25568 Int)) )
))
(declare-datatypes ((Regex!15731 0))(
  ( (ElementMatch!15731 (c!1011085 C!31732)) (Concat!24576 (regOne!31974 Regex!15731) (regTwo!31974 Regex!15731)) (EmptyExpr!15731) (Star!15731 (reg!16060 Regex!15731)) (EmptyLang!15731) (Union!15731 (regOne!31975 Regex!15731) (regTwo!31975 Regex!15731)) )
))
(declare-fun r!7292 () Regex!15731)

(get-info :version)

(assert (=> b!5730097 (= res!2419156 (or ((_ is Concat!24576) (regOne!31974 r!7292)) (not ((_ is Star!15731) (regOne!31974 r!7292)))))))

(declare-fun res!2419162 () Bool)

(declare-fun e!3523064 () Bool)

(assert (=> start!589772 (=> (not res!2419162) (not e!3523064))))

(declare-fun validRegex!7467 (Regex!15731) Bool)

(assert (=> start!589772 (= res!2419162 (validRegex!7467 r!7292))))

(assert (=> start!589772 e!3523064))

(declare-fun e!3523060 () Bool)

(assert (=> start!589772 e!3523060))

(declare-fun condSetEmpty!38437 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63492 0))(
  ( (Nil!63368) (Cons!63368 (h!69816 Regex!15731) (t!376820 List!63492)) )
))
(declare-datatypes ((Context!10230 0))(
  ( (Context!10231 (exprs!5615 List!63492)) )
))
(declare-fun z!1189 () (InoxSet Context!10230))

(assert (=> start!589772 (= condSetEmpty!38437 (= z!1189 ((as const (Array Context!10230 Bool)) false)))))

(declare-fun setRes!38437 () Bool)

(assert (=> start!589772 setRes!38437))

(declare-fun e!3523065 () Bool)

(assert (=> start!589772 e!3523065))

(declare-fun e!3523051 () Bool)

(assert (=> start!589772 e!3523051))

(declare-fun b!5730098 () Bool)

(declare-fun e!3523067 () Bool)

(declare-fun tp!1586102 () Bool)

(assert (=> b!5730098 (= e!3523067 tp!1586102)))

(declare-fun b!5730099 () Bool)

(declare-fun res!2419146 () Bool)

(declare-fun e!3523059 () Bool)

(assert (=> b!5730099 (=> res!2419146 e!3523059)))

(declare-fun lt!2280588 () (InoxSet Context!10230))

(declare-datatypes ((List!63493 0))(
  ( (Nil!63369) (Cons!63369 (h!69817 C!31732) (t!376821 List!63493)) )
))
(declare-datatypes ((tuple2!65656 0))(
  ( (tuple2!65657 (_1!36131 List!63493) (_2!36131 List!63493)) )
))
(declare-fun lt!2280580 () tuple2!65656)

(declare-fun matchZipper!1869 ((InoxSet Context!10230) List!63493) Bool)

(assert (=> b!5730099 (= res!2419146 (not (matchZipper!1869 lt!2280588 (_2!36131 lt!2280580))))))

(declare-fun b!5730100 () Bool)

(declare-fun e!3523072 () Bool)

(assert (=> b!5730100 (= e!3523072 e!3523059)))

(declare-fun res!2419148 () Bool)

(assert (=> b!5730100 (=> res!2419148 e!3523059)))

(declare-fun s!2326 () List!63493)

(declare-fun lt!2280586 () List!63493)

(assert (=> b!5730100 (= res!2419148 (not (= s!2326 lt!2280586)))))

(declare-fun ++!13934 (List!63493 List!63493) List!63493)

(assert (=> b!5730100 (= lt!2280586 (++!13934 (_1!36131 lt!2280580) (_2!36131 lt!2280580)))))

(declare-datatypes ((Option!15740 0))(
  ( (None!15739) (Some!15739 (v!51794 tuple2!65656)) )
))
(declare-fun lt!2280587 () Option!15740)

(declare-fun get!21852 (Option!15740) tuple2!65656)

(assert (=> b!5730100 (= lt!2280580 (get!21852 lt!2280587))))

(declare-fun isDefined!12443 (Option!15740) Bool)

(assert (=> b!5730100 (isDefined!12443 lt!2280587)))

(declare-fun lt!2280599 () (InoxSet Context!10230))

(declare-fun findConcatSeparationZippers!118 ((InoxSet Context!10230) (InoxSet Context!10230) List!63493 List!63493 List!63493) Option!15740)

(assert (=> b!5730100 (= lt!2280587 (findConcatSeparationZippers!118 lt!2280599 lt!2280588 Nil!63369 s!2326 s!2326))))

(declare-fun lt!2280576 () Context!10230)

(declare-datatypes ((Unit!156456 0))(
  ( (Unit!156457) )
))
(declare-fun lt!2280584 () Unit!156456)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!118 ((InoxSet Context!10230) Context!10230 List!63493) Unit!156456)

(assert (=> b!5730100 (= lt!2280584 (lemmaConcatZipperMatchesStringThenFindConcatDefined!118 lt!2280599 lt!2280576 s!2326))))

(declare-fun b!5730101 () Bool)

(declare-fun res!2419165 () Bool)

(declare-fun e!3523062 () Bool)

(assert (=> b!5730101 (=> res!2419165 e!3523062)))

(assert (=> b!5730101 (= res!2419165 (or ((_ is EmptyExpr!15731) r!7292) ((_ is EmptyLang!15731) r!7292) ((_ is ElementMatch!15731) r!7292) ((_ is Union!15731) r!7292) (not ((_ is Concat!24576) r!7292))))))

(declare-fun b!5730102 () Bool)

(declare-fun e!3523066 () Bool)

(assert (=> b!5730102 (= e!3523064 e!3523066)))

(declare-fun res!2419171 () Bool)

(assert (=> b!5730102 (=> (not res!2419171) (not e!3523066))))

(declare-fun lt!2280582 () Regex!15731)

(assert (=> b!5730102 (= res!2419171 (= r!7292 lt!2280582))))

(declare-datatypes ((List!63494 0))(
  ( (Nil!63370) (Cons!63370 (h!69818 Context!10230) (t!376822 List!63494)) )
))
(declare-fun zl!343 () List!63494)

(declare-fun unfocusZipper!1473 (List!63494) Regex!15731)

(assert (=> b!5730102 (= lt!2280582 (unfocusZipper!1473 zl!343))))

(declare-fun e!3523073 () Bool)

(assert (=> b!5730103 (= e!3523073 e!3523072)))

(declare-fun res!2419154 () Bool)

(assert (=> b!5730103 (=> res!2419154 e!3523072)))

(declare-fun lt!2280596 () (InoxSet Context!10230))

(declare-fun appendTo!110 ((InoxSet Context!10230) Context!10230) (InoxSet Context!10230))

(assert (=> b!5730103 (= res!2419154 (not (= (appendTo!110 lt!2280599 lt!2280576) lt!2280596)))))

(declare-fun lt!2280589 () List!63492)

(declare-fun lambda!310012 () Int)

(declare-fun lt!2280593 () List!63492)

(declare-fun map!14517 ((InoxSet Context!10230) Int) (InoxSet Context!10230))

(declare-fun ++!13935 (List!63492 List!63492) List!63492)

(assert (=> b!5730103 (= (map!14517 lt!2280599 lambda!310012) (store ((as const (Array Context!10230 Bool)) false) (Context!10231 (++!13935 lt!2280593 lt!2280589)) true))))

(declare-fun lambda!310013 () Int)

(declare-fun lt!2280573 () Unit!156456)

(declare-fun lemmaConcatPreservesForall!300 (List!63492 List!63492 Int) Unit!156456)

(assert (=> b!5730103 (= lt!2280573 (lemmaConcatPreservesForall!300 lt!2280593 lt!2280589 lambda!310013))))

(declare-fun lt!2280594 () Context!10230)

(declare-fun lt!2280603 () Unit!156456)

(declare-fun lemmaMapOnSingletonSet!126 ((InoxSet Context!10230) Context!10230 Int) Unit!156456)

(assert (=> b!5730103 (= lt!2280603 (lemmaMapOnSingletonSet!126 lt!2280599 lt!2280594 lambda!310012))))

(declare-fun tp!1586099 () Bool)

(declare-fun setNonEmpty!38437 () Bool)

(declare-fun setElem!38437 () Context!10230)

(declare-fun inv!82574 (Context!10230) Bool)

(assert (=> setNonEmpty!38437 (= setRes!38437 (and tp!1586099 (inv!82574 setElem!38437) e!3523067))))

(declare-fun setRest!38437 () (InoxSet Context!10230))

(assert (=> setNonEmpty!38437 (= z!1189 ((_ map or) (store ((as const (Array Context!10230 Bool)) false) setElem!38437 true) setRest!38437))))

(declare-fun b!5730104 () Bool)

(declare-fun e!3523052 () Bool)

(declare-fun e!3523050 () Bool)

(assert (=> b!5730104 (= e!3523052 e!3523050)))

(declare-fun res!2419159 () Bool)

(assert (=> b!5730104 (=> res!2419159 e!3523050)))

(declare-fun lt!2280591 () Context!10230)

(declare-fun lt!2280585 () Regex!15731)

(assert (=> b!5730104 (= res!2419159 (not (= (unfocusZipper!1473 (Cons!63370 lt!2280591 Nil!63370)) lt!2280585)))))

(declare-fun lt!2280567 () Regex!15731)

(assert (=> b!5730104 (= lt!2280585 (Concat!24576 (reg!16060 (regOne!31974 r!7292)) lt!2280567))))

(declare-fun b!5730105 () Bool)

(declare-fun res!2419157 () Bool)

(declare-fun e!3523063 () Bool)

(assert (=> b!5730105 (=> res!2419157 e!3523063)))

(assert (=> b!5730105 (= res!2419157 (not (matchZipper!1869 z!1189 s!2326)))))

(declare-fun b!5730106 () Bool)

(declare-fun e!3523057 () Bool)

(assert (=> b!5730106 (= e!3523071 e!3523057)))

(declare-fun res!2419147 () Bool)

(assert (=> b!5730106 (=> res!2419147 e!3523057)))

(declare-fun lt!2280590 () (InoxSet Context!10230))

(declare-fun lt!2280604 () (InoxSet Context!10230))

(assert (=> b!5730106 (= res!2419147 (not (= lt!2280590 lt!2280604)))))

(declare-fun derivationStepZipperDown!1073 (Regex!15731 Context!10230 C!31732) (InoxSet Context!10230))

(assert (=> b!5730106 (= lt!2280604 (derivationStepZipperDown!1073 (reg!16060 (regOne!31974 r!7292)) lt!2280576 (h!69817 s!2326)))))

(assert (=> b!5730106 (= lt!2280576 (Context!10231 lt!2280589))))

(declare-fun lt!2280577 () Regex!15731)

(assert (=> b!5730106 (= lt!2280589 (Cons!63368 lt!2280577 (t!376820 (exprs!5615 (h!69818 zl!343)))))))

(assert (=> b!5730106 (= lt!2280577 (Star!15731 (reg!16060 (regOne!31974 r!7292))))))

(declare-fun b!5730107 () Bool)

(declare-fun e!3523069 () Bool)

(declare-fun lt!2280561 () (InoxSet Context!10230))

(assert (=> b!5730107 (= e!3523069 (not (matchZipper!1869 lt!2280561 (t!376821 s!2326))))))

(declare-fun b!5730108 () Bool)

(declare-fun tp!1586098 () Bool)

(assert (=> b!5730108 (= e!3523060 tp!1586098)))

(declare-fun b!5730109 () Bool)

(declare-fun e!3523056 () Bool)

(declare-fun e!3523068 () Bool)

(assert (=> b!5730109 (= e!3523056 e!3523068)))

(declare-fun res!2419150 () Bool)

(assert (=> b!5730109 (=> res!2419150 e!3523068)))

(declare-fun lt!2280559 () (InoxSet Context!10230))

(declare-fun lt!2280598 () Bool)

(assert (=> b!5730109 (= res!2419150 (not (= lt!2280598 (matchZipper!1869 lt!2280559 (t!376821 s!2326)))))))

(assert (=> b!5730109 (= lt!2280598 (matchZipper!1869 lt!2280596 s!2326))))

(declare-fun b!5730110 () Bool)

(declare-fun e!3523053 () Bool)

(assert (=> b!5730110 (= e!3523050 e!3523053)))

(declare-fun res!2419151 () Bool)

(assert (=> b!5730110 (=> res!2419151 e!3523053)))

(declare-fun lt!2280595 () List!63494)

(assert (=> b!5730110 (= res!2419151 (not (= (unfocusZipper!1473 lt!2280595) (reg!16060 (regOne!31974 r!7292)))))))

(assert (=> b!5730110 (= lt!2280595 (Cons!63370 lt!2280594 Nil!63370))))

(declare-fun lambda!310011 () Int)

(declare-fun flatMap!1344 ((InoxSet Context!10230) Int) (InoxSet Context!10230))

(declare-fun derivationStepZipperUp!999 (Context!10230 C!31732) (InoxSet Context!10230))

(assert (=> b!5730110 (= (flatMap!1344 lt!2280588 lambda!310011) (derivationStepZipperUp!999 lt!2280576 (h!69817 s!2326)))))

(declare-fun lt!2280605 () Unit!156456)

(declare-fun lemmaFlatMapOnSingletonSet!876 ((InoxSet Context!10230) Context!10230 Int) Unit!156456)

(assert (=> b!5730110 (= lt!2280605 (lemmaFlatMapOnSingletonSet!876 lt!2280588 lt!2280576 lambda!310011))))

(assert (=> b!5730110 (= (flatMap!1344 lt!2280599 lambda!310011) (derivationStepZipperUp!999 lt!2280594 (h!69817 s!2326)))))

(declare-fun lt!2280574 () Unit!156456)

(assert (=> b!5730110 (= lt!2280574 (lemmaFlatMapOnSingletonSet!876 lt!2280599 lt!2280594 lambda!310011))))

(declare-fun lt!2280578 () (InoxSet Context!10230))

(assert (=> b!5730110 (= lt!2280578 (derivationStepZipperUp!999 lt!2280576 (h!69817 s!2326)))))

(declare-fun lt!2280572 () (InoxSet Context!10230))

(assert (=> b!5730110 (= lt!2280572 (derivationStepZipperUp!999 lt!2280594 (h!69817 s!2326)))))

(assert (=> b!5730110 (= lt!2280588 (store ((as const (Array Context!10230 Bool)) false) lt!2280576 true))))

(assert (=> b!5730110 (= lt!2280599 (store ((as const (Array Context!10230 Bool)) false) lt!2280594 true))))

(assert (=> b!5730110 (= lt!2280594 (Context!10231 lt!2280593))))

(assert (=> b!5730110 (= lt!2280593 (Cons!63368 (reg!16060 (regOne!31974 r!7292)) Nil!63368))))

(declare-fun b!5730111 () Bool)

(declare-fun res!2419168 () Bool)

(assert (=> b!5730111 (=> (not res!2419168) (not e!3523064))))

(declare-fun toList!9515 ((InoxSet Context!10230)) List!63494)

(assert (=> b!5730111 (= res!2419168 (= (toList!9515 z!1189) zl!343))))

(declare-fun b!5730112 () Bool)

(assert (=> b!5730112 (= e!3523063 e!3523073)))

(declare-fun res!2419141 () Bool)

(assert (=> b!5730112 (=> res!2419141 e!3523073)))

(assert (=> b!5730112 (= res!2419141 e!3523069)))

(declare-fun res!2419139 () Bool)

(assert (=> b!5730112 (=> (not res!2419139) (not e!3523069))))

(declare-fun lt!2280592 () Bool)

(assert (=> b!5730112 (= res!2419139 (not lt!2280592))))

(assert (=> b!5730112 (= lt!2280592 (matchZipper!1869 lt!2280590 (t!376821 s!2326)))))

(declare-fun b!5730113 () Bool)

(declare-fun e!3523055 () Bool)

(declare-fun nullable!5763 (Regex!15731) Bool)

(assert (=> b!5730113 (= e!3523055 (nullable!5763 (regOne!31974 (regOne!31974 r!7292))))))

(declare-fun setIsEmpty!38437 () Bool)

(assert (=> setIsEmpty!38437 setRes!38437))

(declare-fun b!5730114 () Bool)

(assert (=> b!5730114 (= e!3523066 (not e!3523062))))

(declare-fun res!2419161 () Bool)

(assert (=> b!5730114 (=> res!2419161 e!3523062)))

(assert (=> b!5730114 (= res!2419161 (not ((_ is Cons!63370) zl!343)))))

(declare-fun lt!2280606 () Bool)

(declare-fun matchRSpec!2834 (Regex!15731 List!63493) Bool)

(assert (=> b!5730114 (= lt!2280606 (matchRSpec!2834 r!7292 s!2326))))

(declare-fun matchR!7916 (Regex!15731 List!63493) Bool)

(assert (=> b!5730114 (= lt!2280606 (matchR!7916 r!7292 s!2326))))

(declare-fun lt!2280579 () Unit!156456)

(declare-fun mainMatchTheorem!2834 (Regex!15731 List!63493) Unit!156456)

(assert (=> b!5730114 (= lt!2280579 (mainMatchTheorem!2834 r!7292 s!2326))))

(declare-fun b!5730115 () Bool)

(declare-fun res!2419143 () Bool)

(assert (=> b!5730115 (=> res!2419143 e!3523059)))

(assert (=> b!5730115 (= res!2419143 (not (matchZipper!1869 lt!2280599 (_1!36131 lt!2280580))))))

(declare-fun b!5730116 () Bool)

(declare-fun e!3523070 () Unit!156456)

(declare-fun Unit!156458 () Unit!156456)

(assert (=> b!5730116 (= e!3523070 Unit!156458)))

(declare-fun b!5730117 () Bool)

(assert (=> b!5730117 (= e!3523068 e!3523052)))

(declare-fun res!2419170 () Bool)

(assert (=> b!5730117 (=> res!2419170 e!3523052)))

(assert (=> b!5730117 (= res!2419170 (not (= r!7292 lt!2280567)))))

(assert (=> b!5730117 (= lt!2280567 (Concat!24576 lt!2280577 (regTwo!31974 r!7292)))))

(declare-fun b!5730118 () Bool)

(declare-fun tp!1586101 () Bool)

(declare-fun tp!1586100 () Bool)

(assert (=> b!5730118 (= e!3523060 (and tp!1586101 tp!1586100))))

(declare-fun b!5730119 () Bool)

(declare-fun res!2419145 () Bool)

(assert (=> b!5730119 (=> res!2419145 e!3523062)))

(declare-fun isEmpty!35249 (List!63494) Bool)

(assert (=> b!5730119 (= res!2419145 (not (isEmpty!35249 (t!376822 zl!343))))))

(declare-fun e!3523058 () Bool)

(assert (=> b!5730120 (= e!3523058 e!3523071)))

(declare-fun res!2419169 () Bool)

(assert (=> b!5730120 (=> res!2419169 e!3523071)))

(assert (=> b!5730120 (= res!2419169 (or (and ((_ is ElementMatch!15731) (regOne!31974 r!7292)) (= (c!1011085 (regOne!31974 r!7292)) (h!69817 s!2326))) ((_ is Union!15731) (regOne!31974 r!7292))))))

(declare-fun lt!2280602 () Unit!156456)

(assert (=> b!5730120 (= lt!2280602 e!3523070)))

(declare-fun c!1011084 () Bool)

(declare-fun lt!2280566 () Bool)

(assert (=> b!5730120 (= c!1011084 lt!2280566)))

(assert (=> b!5730120 (= lt!2280566 (nullable!5763 (h!69816 (exprs!5615 (h!69818 zl!343)))))))

(assert (=> b!5730120 (= (flatMap!1344 z!1189 lambda!310011) (derivationStepZipperUp!999 (h!69818 zl!343) (h!69817 s!2326)))))

(declare-fun lt!2280568 () Unit!156456)

(assert (=> b!5730120 (= lt!2280568 (lemmaFlatMapOnSingletonSet!876 z!1189 (h!69818 zl!343) lambda!310011))))

(declare-fun lt!2280560 () Context!10230)

(assert (=> b!5730120 (= lt!2280561 (derivationStepZipperUp!999 lt!2280560 (h!69817 s!2326)))))

(assert (=> b!5730120 (= lt!2280590 (derivationStepZipperDown!1073 (h!69816 (exprs!5615 (h!69818 zl!343))) lt!2280560 (h!69817 s!2326)))))

(assert (=> b!5730120 (= lt!2280560 (Context!10231 (t!376820 (exprs!5615 (h!69818 zl!343)))))))

(declare-fun lt!2280569 () (InoxSet Context!10230))

(assert (=> b!5730120 (= lt!2280569 (derivationStepZipperUp!999 (Context!10231 (Cons!63368 (h!69816 (exprs!5615 (h!69818 zl!343))) (t!376820 (exprs!5615 (h!69818 zl!343))))) (h!69817 s!2326)))))

(declare-fun b!5730121 () Bool)

(declare-fun e!3523074 () Bool)

(assert (=> b!5730121 (= e!3523074 (matchZipper!1869 lt!2280561 (t!376821 s!2326)))))

(declare-fun b!5730122 () Bool)

(declare-fun tp_is_empty!40715 () Bool)

(declare-fun tp!1586105 () Bool)

(assert (=> b!5730122 (= e!3523051 (and tp_is_empty!40715 tp!1586105))))

(declare-fun b!5730123 () Bool)

(declare-fun e!3523061 () Bool)

(assert (=> b!5730123 (= e!3523061 e!3523063)))

(declare-fun res!2419166 () Bool)

(assert (=> b!5730123 (=> res!2419166 e!3523063)))

(assert (=> b!5730123 (= res!2419166 lt!2280606)))

(assert (=> b!5730123 (= (matchR!7916 lt!2280585 s!2326) (matchRSpec!2834 lt!2280585 s!2326))))

(declare-fun lt!2280571 () Unit!156456)

(assert (=> b!5730123 (= lt!2280571 (mainMatchTheorem!2834 lt!2280585 s!2326))))

(declare-fun b!5730124 () Bool)

(declare-fun res!2419160 () Bool)

(assert (=> b!5730124 (=> res!2419160 e!3523063)))

(assert (=> b!5730124 (= res!2419160 (not lt!2280566))))

(declare-fun b!5730125 () Bool)

(declare-fun tp!1586106 () Bool)

(assert (=> b!5730125 (= e!3523065 (and (inv!82574 (h!69818 zl!343)) e!3523054 tp!1586106))))

(declare-fun b!5730126 () Bool)

(declare-fun res!2419149 () Bool)

(assert (=> b!5730126 (=> res!2419149 e!3523062)))

(assert (=> b!5730126 (= res!2419149 (not ((_ is Cons!63368) (exprs!5615 (h!69818 zl!343)))))))

(declare-fun b!5730127 () Bool)

(declare-fun res!2419144 () Bool)

(assert (=> b!5730127 (=> res!2419144 e!3523071)))

(assert (=> b!5730127 (= res!2419144 e!3523055)))

(declare-fun res!2419167 () Bool)

(assert (=> b!5730127 (=> (not res!2419167) (not e!3523055))))

(assert (=> b!5730127 (= res!2419167 ((_ is Concat!24576) (regOne!31974 r!7292)))))

(declare-fun b!5730128 () Bool)

(assert (=> b!5730128 (= e!3523060 tp_is_empty!40715)))

(declare-fun b!5730129 () Bool)

(declare-fun res!2419164 () Bool)

(assert (=> b!5730129 (=> res!2419164 e!3523068)))

(assert (=> b!5730129 (= res!2419164 (not (= lt!2280582 r!7292)))))

(declare-fun b!5730130 () Bool)

(declare-fun res!2419158 () Bool)

(assert (=> b!5730130 (=> res!2419158 e!3523058)))

(declare-fun isEmpty!35250 (List!63492) Bool)

(assert (=> b!5730130 (= res!2419158 (isEmpty!35250 (t!376820 (exprs!5615 (h!69818 zl!343)))))))

(declare-fun b!5730131 () Bool)

(declare-fun res!2419152 () Bool)

(assert (=> b!5730131 (=> res!2419152 e!3523062)))

(declare-fun generalisedUnion!1594 (List!63492) Regex!15731)

(declare-fun unfocusZipperList!1159 (List!63494) List!63492)

(assert (=> b!5730131 (= res!2419152 (not (= r!7292 (generalisedUnion!1594 (unfocusZipperList!1159 zl!343)))))))

(declare-fun b!5730132 () Bool)

(declare-fun res!2419142 () Bool)

(assert (=> b!5730132 (=> res!2419142 e!3523062)))

(declare-fun generalisedConcat!1346 (List!63492) Regex!15731)

(assert (=> b!5730132 (= res!2419142 (not (= r!7292 (generalisedConcat!1346 (exprs!5615 (h!69818 zl!343))))))))

(declare-fun b!5730133 () Bool)

(assert (=> b!5730133 (= e!3523053 e!3523061)))

(declare-fun res!2419153 () Bool)

(assert (=> b!5730133 (=> res!2419153 e!3523061)))

(declare-fun lt!2280581 () List!63494)

(assert (=> b!5730133 (= res!2419153 (not (= (unfocusZipper!1473 lt!2280581) lt!2280567)))))

(assert (=> b!5730133 (= lt!2280581 (Cons!63370 lt!2280576 Nil!63370))))

(declare-fun b!5730134 () Bool)

(declare-fun tp!1586103 () Bool)

(declare-fun tp!1586104 () Bool)

(assert (=> b!5730134 (= e!3523060 (and tp!1586103 tp!1586104))))

(declare-fun b!5730135 () Bool)

(declare-fun res!2419140 () Bool)

(assert (=> b!5730135 (=> res!2419140 e!3523073)))

(assert (=> b!5730135 (= res!2419140 (or (not lt!2280592) (not lt!2280598)))))

(declare-fun b!5730136 () Bool)

(assert (=> b!5730136 (= e!3523059 true)))

(assert (=> b!5730136 (matchR!7916 lt!2280567 (_2!36131 lt!2280580))))

(declare-fun lt!2280564 () Unit!156456)

(declare-fun theoremZipperRegexEquiv!651 ((InoxSet Context!10230) List!63494 Regex!15731 List!63493) Unit!156456)

(assert (=> b!5730136 (= lt!2280564 (theoremZipperRegexEquiv!651 lt!2280588 lt!2280581 lt!2280567 (_2!36131 lt!2280580)))))

(assert (=> b!5730136 (matchR!7916 (reg!16060 (regOne!31974 r!7292)) (_1!36131 lt!2280580))))

(declare-fun lt!2280570 () Unit!156456)

(assert (=> b!5730136 (= lt!2280570 (theoremZipperRegexEquiv!651 lt!2280599 lt!2280595 (reg!16060 (regOne!31974 r!7292)) (_1!36131 lt!2280580)))))

(assert (=> b!5730136 (matchZipper!1869 (store ((as const (Array Context!10230 Bool)) false) (Context!10231 (++!13935 lt!2280593 lt!2280589)) true) lt!2280586)))

(declare-fun lt!2280565 () Unit!156456)

(assert (=> b!5730136 (= lt!2280565 (lemmaConcatPreservesForall!300 lt!2280593 lt!2280589 lambda!310013))))

(declare-fun lt!2280562 () Unit!156456)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!130 (Context!10230 Context!10230 List!63493 List!63493) Unit!156456)

(assert (=> b!5730136 (= lt!2280562 (lemmaConcatenateContextMatchesConcatOfStrings!130 lt!2280594 lt!2280576 (_1!36131 lt!2280580) (_2!36131 lt!2280580)))))

(declare-fun b!5730137 () Bool)

(assert (=> b!5730137 (= e!3523057 e!3523056)))

(declare-fun res!2419163 () Bool)

(assert (=> b!5730137 (=> res!2419163 e!3523056)))

(assert (=> b!5730137 (= res!2419163 (not (= lt!2280559 lt!2280604)))))

(assert (=> b!5730137 (= (flatMap!1344 lt!2280596 lambda!310011) (derivationStepZipperUp!999 lt!2280591 (h!69817 s!2326)))))

(declare-fun lt!2280600 () Unit!156456)

(assert (=> b!5730137 (= lt!2280600 (lemmaFlatMapOnSingletonSet!876 lt!2280596 lt!2280591 lambda!310011))))

(declare-fun lt!2280597 () (InoxSet Context!10230))

(assert (=> b!5730137 (= lt!2280597 (derivationStepZipperUp!999 lt!2280591 (h!69817 s!2326)))))

(declare-fun derivationStepZipper!1814 ((InoxSet Context!10230) C!31732) (InoxSet Context!10230))

(assert (=> b!5730137 (= lt!2280559 (derivationStepZipper!1814 lt!2280596 (h!69817 s!2326)))))

(assert (=> b!5730137 (= lt!2280596 (store ((as const (Array Context!10230 Bool)) false) lt!2280591 true))))

(assert (=> b!5730137 (= lt!2280591 (Context!10231 (Cons!63368 (reg!16060 (regOne!31974 r!7292)) lt!2280589)))))

(assert (=> b!5730138 (= e!3523062 e!3523058)))

(declare-fun res!2419155 () Bool)

(assert (=> b!5730138 (=> res!2419155 e!3523058)))

(declare-fun lt!2280601 () Bool)

(assert (=> b!5730138 (= res!2419155 (or (not (= lt!2280606 lt!2280601)) ((_ is Nil!63369) s!2326)))))

(declare-fun Exists!2831 (Int) Bool)

(assert (=> b!5730138 (= (Exists!2831 lambda!310009) (Exists!2831 lambda!310010))))

(declare-fun lt!2280575 () Unit!156456)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1460 (Regex!15731 Regex!15731 List!63493) Unit!156456)

(assert (=> b!5730138 (= lt!2280575 (lemmaExistCutMatchRandMatchRSpecEquivalent!1460 (regOne!31974 r!7292) (regTwo!31974 r!7292) s!2326))))

(assert (=> b!5730138 (= lt!2280601 (Exists!2831 lambda!310009))))

(declare-fun findConcatSeparation!2154 (Regex!15731 Regex!15731 List!63493 List!63493 List!63493) Option!15740)

(assert (=> b!5730138 (= lt!2280601 (isDefined!12443 (findConcatSeparation!2154 (regOne!31974 r!7292) (regTwo!31974 r!7292) Nil!63369 s!2326 s!2326)))))

(declare-fun lt!2280563 () Unit!156456)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1918 (Regex!15731 Regex!15731 List!63493) Unit!156456)

(assert (=> b!5730138 (= lt!2280563 (lemmaFindConcatSeparationEquivalentToExists!1918 (regOne!31974 r!7292) (regTwo!31974 r!7292) s!2326))))

(declare-fun b!5730139 () Bool)

(declare-fun Unit!156459 () Unit!156456)

(assert (=> b!5730139 (= e!3523070 Unit!156459)))

(declare-fun lt!2280583 () Unit!156456)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!756 ((InoxSet Context!10230) (InoxSet Context!10230) List!63493) Unit!156456)

(assert (=> b!5730139 (= lt!2280583 (lemmaZipperConcatMatchesSameAsBothZippers!756 lt!2280590 lt!2280561 (t!376821 s!2326)))))

(declare-fun res!2419138 () Bool)

(assert (=> b!5730139 (= res!2419138 (matchZipper!1869 lt!2280590 (t!376821 s!2326)))))

(assert (=> b!5730139 (=> res!2419138 e!3523074)))

(assert (=> b!5730139 (= (matchZipper!1869 ((_ map or) lt!2280590 lt!2280561) (t!376821 s!2326)) e!3523074)))

(assert (= (and start!589772 res!2419162) b!5730111))

(assert (= (and b!5730111 res!2419168) b!5730102))

(assert (= (and b!5730102 res!2419171) b!5730114))

(assert (= (and b!5730114 (not res!2419161)) b!5730119))

(assert (= (and b!5730119 (not res!2419145)) b!5730132))

(assert (= (and b!5730132 (not res!2419142)) b!5730126))

(assert (= (and b!5730126 (not res!2419149)) b!5730131))

(assert (= (and b!5730131 (not res!2419152)) b!5730101))

(assert (= (and b!5730101 (not res!2419165)) b!5730138))

(assert (= (and b!5730138 (not res!2419155)) b!5730130))

(assert (= (and b!5730130 (not res!2419158)) b!5730120))

(assert (= (and b!5730120 c!1011084) b!5730139))

(assert (= (and b!5730120 (not c!1011084)) b!5730116))

(assert (= (and b!5730139 (not res!2419138)) b!5730121))

(assert (= (and b!5730120 (not res!2419169)) b!5730127))

(assert (= (and b!5730127 res!2419167) b!5730113))

(assert (= (and b!5730127 (not res!2419144)) b!5730097))

(assert (= (and b!5730097 (not res!2419156)) b!5730106))

(assert (= (and b!5730106 (not res!2419147)) b!5730137))

(assert (= (and b!5730137 (not res!2419163)) b!5730109))

(assert (= (and b!5730109 (not res!2419150)) b!5730129))

(assert (= (and b!5730129 (not res!2419164)) b!5730117))

(assert (= (and b!5730117 (not res!2419170)) b!5730104))

(assert (= (and b!5730104 (not res!2419159)) b!5730110))

(assert (= (and b!5730110 (not res!2419151)) b!5730133))

(assert (= (and b!5730133 (not res!2419153)) b!5730123))

(assert (= (and b!5730123 (not res!2419166)) b!5730105))

(assert (= (and b!5730105 (not res!2419157)) b!5730124))

(assert (= (and b!5730124 (not res!2419160)) b!5730112))

(assert (= (and b!5730112 res!2419139) b!5730107))

(assert (= (and b!5730112 (not res!2419141)) b!5730135))

(assert (= (and b!5730135 (not res!2419140)) b!5730103))

(assert (= (and b!5730103 (not res!2419154)) b!5730100))

(assert (= (and b!5730100 (not res!2419148)) b!5730115))

(assert (= (and b!5730115 (not res!2419143)) b!5730099))

(assert (= (and b!5730099 (not res!2419146)) b!5730136))

(assert (= (and start!589772 ((_ is ElementMatch!15731) r!7292)) b!5730128))

(assert (= (and start!589772 ((_ is Concat!24576) r!7292)) b!5730118))

(assert (= (and start!589772 ((_ is Star!15731) r!7292)) b!5730108))

(assert (= (and start!589772 ((_ is Union!15731) r!7292)) b!5730134))

(assert (= (and start!589772 condSetEmpty!38437) setIsEmpty!38437))

(assert (= (and start!589772 (not condSetEmpty!38437)) setNonEmpty!38437))

(assert (= setNonEmpty!38437 b!5730098))

(assert (= b!5730125 b!5730096))

(assert (= (and start!589772 ((_ is Cons!63370) zl!343)) b!5730125))

(assert (= (and start!589772 ((_ is Cons!63369) s!2326)) b!5730122))

(declare-fun m!6682044 () Bool)

(assert (=> setNonEmpty!38437 m!6682044))

(declare-fun m!6682046 () Bool)

(assert (=> b!5730139 m!6682046))

(declare-fun m!6682048 () Bool)

(assert (=> b!5730139 m!6682048))

(declare-fun m!6682050 () Bool)

(assert (=> b!5730139 m!6682050))

(assert (=> b!5730112 m!6682048))

(declare-fun m!6682052 () Bool)

(assert (=> b!5730136 m!6682052))

(declare-fun m!6682054 () Bool)

(assert (=> b!5730136 m!6682054))

(declare-fun m!6682056 () Bool)

(assert (=> b!5730136 m!6682056))

(declare-fun m!6682058 () Bool)

(assert (=> b!5730136 m!6682058))

(declare-fun m!6682060 () Bool)

(assert (=> b!5730136 m!6682060))

(assert (=> b!5730136 m!6682056))

(declare-fun m!6682062 () Bool)

(assert (=> b!5730136 m!6682062))

(declare-fun m!6682064 () Bool)

(assert (=> b!5730136 m!6682064))

(declare-fun m!6682066 () Bool)

(assert (=> b!5730136 m!6682066))

(declare-fun m!6682068 () Bool)

(assert (=> b!5730136 m!6682068))

(declare-fun m!6682070 () Bool)

(assert (=> b!5730114 m!6682070))

(declare-fun m!6682072 () Bool)

(assert (=> b!5730114 m!6682072))

(declare-fun m!6682074 () Bool)

(assert (=> b!5730114 m!6682074))

(declare-fun m!6682076 () Bool)

(assert (=> b!5730137 m!6682076))

(declare-fun m!6682078 () Bool)

(assert (=> b!5730137 m!6682078))

(declare-fun m!6682080 () Bool)

(assert (=> b!5730137 m!6682080))

(declare-fun m!6682082 () Bool)

(assert (=> b!5730137 m!6682082))

(declare-fun m!6682084 () Bool)

(assert (=> b!5730137 m!6682084))

(declare-fun m!6682086 () Bool)

(assert (=> b!5730130 m!6682086))

(declare-fun m!6682088 () Bool)

(assert (=> b!5730131 m!6682088))

(assert (=> b!5730131 m!6682088))

(declare-fun m!6682090 () Bool)

(assert (=> b!5730131 m!6682090))

(declare-fun m!6682092 () Bool)

(assert (=> b!5730120 m!6682092))

(declare-fun m!6682094 () Bool)

(assert (=> b!5730120 m!6682094))

(declare-fun m!6682096 () Bool)

(assert (=> b!5730120 m!6682096))

(declare-fun m!6682098 () Bool)

(assert (=> b!5730120 m!6682098))

(declare-fun m!6682100 () Bool)

(assert (=> b!5730120 m!6682100))

(declare-fun m!6682102 () Bool)

(assert (=> b!5730120 m!6682102))

(declare-fun m!6682104 () Bool)

(assert (=> b!5730120 m!6682104))

(declare-fun m!6682106 () Bool)

(assert (=> start!589772 m!6682106))

(declare-fun m!6682108 () Bool)

(assert (=> b!5730102 m!6682108))

(declare-fun m!6682110 () Bool)

(assert (=> b!5730099 m!6682110))

(declare-fun m!6682112 () Bool)

(assert (=> b!5730123 m!6682112))

(declare-fun m!6682114 () Bool)

(assert (=> b!5730123 m!6682114))

(declare-fun m!6682116 () Bool)

(assert (=> b!5730123 m!6682116))

(declare-fun m!6682118 () Bool)

(assert (=> b!5730107 m!6682118))

(declare-fun m!6682120 () Bool)

(assert (=> b!5730119 m!6682120))

(declare-fun m!6682122 () Bool)

(assert (=> b!5730115 m!6682122))

(declare-fun m!6682124 () Bool)

(assert (=> b!5730132 m!6682124))

(declare-fun m!6682126 () Bool)

(assert (=> b!5730110 m!6682126))

(declare-fun m!6682128 () Bool)

(assert (=> b!5730110 m!6682128))

(declare-fun m!6682130 () Bool)

(assert (=> b!5730110 m!6682130))

(declare-fun m!6682132 () Bool)

(assert (=> b!5730110 m!6682132))

(declare-fun m!6682134 () Bool)

(assert (=> b!5730110 m!6682134))

(declare-fun m!6682136 () Bool)

(assert (=> b!5730110 m!6682136))

(declare-fun m!6682138 () Bool)

(assert (=> b!5730110 m!6682138))

(declare-fun m!6682140 () Bool)

(assert (=> b!5730110 m!6682140))

(declare-fun m!6682142 () Bool)

(assert (=> b!5730110 m!6682142))

(assert (=> b!5730103 m!6682056))

(assert (=> b!5730103 m!6682062))

(declare-fun m!6682144 () Bool)

(assert (=> b!5730103 m!6682144))

(declare-fun m!6682146 () Bool)

(assert (=> b!5730103 m!6682146))

(assert (=> b!5730103 m!6682060))

(declare-fun m!6682148 () Bool)

(assert (=> b!5730103 m!6682148))

(declare-fun m!6682150 () Bool)

(assert (=> b!5730125 m!6682150))

(declare-fun m!6682152 () Bool)

(assert (=> b!5730109 m!6682152))

(declare-fun m!6682154 () Bool)

(assert (=> b!5730109 m!6682154))

(declare-fun m!6682156 () Bool)

(assert (=> b!5730113 m!6682156))

(declare-fun m!6682158 () Bool)

(assert (=> b!5730106 m!6682158))

(declare-fun m!6682160 () Bool)

(assert (=> b!5730104 m!6682160))

(declare-fun m!6682162 () Bool)

(assert (=> b!5730138 m!6682162))

(declare-fun m!6682164 () Bool)

(assert (=> b!5730138 m!6682164))

(declare-fun m!6682166 () Bool)

(assert (=> b!5730138 m!6682166))

(declare-fun m!6682168 () Bool)

(assert (=> b!5730138 m!6682168))

(declare-fun m!6682170 () Bool)

(assert (=> b!5730138 m!6682170))

(assert (=> b!5730138 m!6682164))

(assert (=> b!5730138 m!6682166))

(declare-fun m!6682172 () Bool)

(assert (=> b!5730138 m!6682172))

(assert (=> b!5730121 m!6682118))

(declare-fun m!6682174 () Bool)

(assert (=> b!5730133 m!6682174))

(declare-fun m!6682176 () Bool)

(assert (=> b!5730105 m!6682176))

(declare-fun m!6682178 () Bool)

(assert (=> b!5730100 m!6682178))

(declare-fun m!6682180 () Bool)

(assert (=> b!5730100 m!6682180))

(declare-fun m!6682182 () Bool)

(assert (=> b!5730100 m!6682182))

(declare-fun m!6682184 () Bool)

(assert (=> b!5730100 m!6682184))

(declare-fun m!6682186 () Bool)

(assert (=> b!5730100 m!6682186))

(declare-fun m!6682188 () Bool)

(assert (=> b!5730111 m!6682188))

(check-sat (not b!5730109) (not b!5730120) (not b!5730137) (not b!5730122) (not b!5730096) (not b!5730133) (not b!5730132) (not b!5730130) (not b!5730100) (not b!5730110) (not b!5730108) (not b!5730098) (not b!5730123) (not b!5730104) (not b!5730131) (not b!5730113) (not b!5730107) (not b!5730112) (not b!5730099) (not b!5730102) (not b!5730125) (not b!5730105) (not b!5730118) (not start!589772) (not b!5730103) (not b!5730119) (not b!5730106) (not b!5730121) (not b!5730136) tp_is_empty!40715 (not b!5730139) (not b!5730114) (not b!5730134) (not setNonEmpty!38437) (not b!5730111) (not b!5730115) (not b!5730138))
(check-sat)
