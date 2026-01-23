; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566842 () Bool)

(assert start!566842)

(declare-fun b!5395473 () Bool)

(assert (=> b!5395473 true))

(assert (=> b!5395473 true))

(declare-fun lambda!280554 () Int)

(declare-fun lambda!280553 () Int)

(assert (=> b!5395473 (not (= lambda!280554 lambda!280553))))

(assert (=> b!5395473 true))

(assert (=> b!5395473 true))

(declare-fun b!5395462 () Bool)

(assert (=> b!5395462 true))

(declare-fun b!5395451 () Bool)

(assert (=> b!5395451 true))

(declare-fun b!5395439 () Bool)

(declare-fun res!2293078 () Bool)

(declare-fun e!3345751 () Bool)

(assert (=> b!5395439 (=> res!2293078 e!3345751)))

(declare-fun e!3345760 () Bool)

(assert (=> b!5395439 (= res!2293078 e!3345760)))

(declare-fun res!2293103 () Bool)

(assert (=> b!5395439 (=> (not res!2293103) (not e!3345760))))

(declare-datatypes ((C!30572 0))(
  ( (C!30573 (val!24988 Int)) )
))
(declare-datatypes ((Regex!15151 0))(
  ( (ElementMatch!15151 (c!940287 C!30572)) (Concat!23996 (regOne!30814 Regex!15151) (regTwo!30814 Regex!15151)) (EmptyExpr!15151) (Star!15151 (reg!15480 Regex!15151)) (EmptyLang!15151) (Union!15151 (regOne!30815 Regex!15151) (regTwo!30815 Regex!15151)) )
))
(declare-fun r!7292 () Regex!15151)

(get-info :version)

(assert (=> b!5395439 (= res!2293103 ((_ is Concat!23996) (regOne!30814 r!7292)))))

(declare-fun b!5395440 () Bool)

(declare-fun e!3345739 () Bool)

(declare-fun e!3345753 () Bool)

(assert (=> b!5395440 (= e!3345739 e!3345753)))

(declare-fun res!2293076 () Bool)

(assert (=> b!5395440 (=> res!2293076 e!3345753)))

(declare-fun e!3345740 () Bool)

(assert (=> b!5395440 (= res!2293076 e!3345740)))

(declare-fun res!2293087 () Bool)

(assert (=> b!5395440 (=> (not res!2293087) (not e!3345740))))

(declare-fun lt!2198616 () Bool)

(assert (=> b!5395440 (= res!2293087 (not lt!2198616))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!61752 0))(
  ( (Nil!61628) (Cons!61628 (h!68076 Regex!15151) (t!374975 List!61752)) )
))
(declare-datatypes ((Context!9070 0))(
  ( (Context!9071 (exprs!5035 List!61752)) )
))
(declare-fun lt!2198609 () (InoxSet Context!9070))

(declare-datatypes ((List!61753 0))(
  ( (Nil!61629) (Cons!61629 (h!68077 C!30572) (t!374976 List!61753)) )
))
(declare-fun s!2326 () List!61753)

(declare-fun matchZipper!1395 ((InoxSet Context!9070) List!61753) Bool)

(assert (=> b!5395440 (= lt!2198616 (matchZipper!1395 lt!2198609 (t!374976 s!2326)))))

(declare-fun b!5395441 () Bool)

(declare-datatypes ((Unit!154126 0))(
  ( (Unit!154127) )
))
(declare-fun e!3345756 () Unit!154126)

(declare-fun Unit!154128 () Unit!154126)

(assert (=> b!5395441 (= e!3345756 Unit!154128)))

(declare-fun lt!2198620 () Unit!154126)

(declare-fun lt!2198608 () (InoxSet Context!9070))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!388 ((InoxSet Context!9070) (InoxSet Context!9070) List!61753) Unit!154126)

(assert (=> b!5395441 (= lt!2198620 (lemmaZipperConcatMatchesSameAsBothZippers!388 lt!2198609 lt!2198608 (t!374976 s!2326)))))

(declare-fun res!2293084 () Bool)

(assert (=> b!5395441 (= res!2293084 (matchZipper!1395 lt!2198609 (t!374976 s!2326)))))

(declare-fun e!3345757 () Bool)

(assert (=> b!5395441 (=> res!2293084 e!3345757)))

(assert (=> b!5395441 (= (matchZipper!1395 ((_ map or) lt!2198609 lt!2198608) (t!374976 s!2326)) e!3345757)))

(declare-fun b!5395442 () Bool)

(declare-fun e!3345754 () Bool)

(declare-fun e!3345737 () Bool)

(assert (=> b!5395442 (= e!3345754 e!3345737)))

(declare-fun res!2293098 () Bool)

(assert (=> b!5395442 (=> res!2293098 e!3345737)))

(declare-fun lt!2198605 () Context!9070)

(declare-datatypes ((List!61754 0))(
  ( (Nil!61630) (Cons!61630 (h!68078 Context!9070) (t!374977 List!61754)) )
))
(declare-fun unfocusZipper!893 (List!61754) Regex!15151)

(assert (=> b!5395442 (= res!2293098 (not (= (unfocusZipper!893 (Cons!61630 lt!2198605 Nil!61630)) (reg!15480 (regOne!30814 r!7292)))))))

(declare-fun lt!2198626 () Context!9070)

(declare-fun lambda!280555 () Int)

(declare-fun lt!2198630 () (InoxSet Context!9070))

(declare-fun flatMap!878 ((InoxSet Context!9070) Int) (InoxSet Context!9070))

(declare-fun derivationStepZipperUp!523 (Context!9070 C!30572) (InoxSet Context!9070))

(assert (=> b!5395442 (= (flatMap!878 lt!2198630 lambda!280555) (derivationStepZipperUp!523 lt!2198626 (h!68077 s!2326)))))

(declare-fun lt!2198642 () Unit!154126)

(declare-fun lemmaFlatMapOnSingletonSet!410 ((InoxSet Context!9070) Context!9070 Int) Unit!154126)

(assert (=> b!5395442 (= lt!2198642 (lemmaFlatMapOnSingletonSet!410 lt!2198630 lt!2198626 lambda!280555))))

(declare-fun lt!2198634 () (InoxSet Context!9070))

(assert (=> b!5395442 (= (flatMap!878 lt!2198634 lambda!280555) (derivationStepZipperUp!523 lt!2198605 (h!68077 s!2326)))))

(declare-fun lt!2198611 () Unit!154126)

(assert (=> b!5395442 (= lt!2198611 (lemmaFlatMapOnSingletonSet!410 lt!2198634 lt!2198605 lambda!280555))))

(declare-fun lt!2198606 () (InoxSet Context!9070))

(assert (=> b!5395442 (= lt!2198606 (derivationStepZipperUp!523 lt!2198626 (h!68077 s!2326)))))

(declare-fun lt!2198622 () (InoxSet Context!9070))

(assert (=> b!5395442 (= lt!2198622 (derivationStepZipperUp!523 lt!2198605 (h!68077 s!2326)))))

(assert (=> b!5395442 (= lt!2198630 (store ((as const (Array Context!9070 Bool)) false) lt!2198626 true))))

(assert (=> b!5395442 (= lt!2198634 (store ((as const (Array Context!9070 Bool)) false) lt!2198605 true))))

(declare-fun lt!2198627 () List!61752)

(assert (=> b!5395442 (= lt!2198605 (Context!9071 lt!2198627))))

(assert (=> b!5395442 (= lt!2198627 (Cons!61628 (reg!15480 (regOne!30814 r!7292)) Nil!61628))))

(declare-fun b!5395443 () Bool)

(assert (=> b!5395443 (= e!3345737 e!3345739)))

(declare-fun res!2293085 () Bool)

(assert (=> b!5395443 (=> res!2293085 e!3345739)))

(declare-fun lt!2198623 () Bool)

(assert (=> b!5395443 (= res!2293085 lt!2198623)))

(declare-fun lt!2198637 () Regex!15151)

(declare-fun matchR!7336 (Regex!15151 List!61753) Bool)

(declare-fun matchRSpec!2254 (Regex!15151 List!61753) Bool)

(assert (=> b!5395443 (= (matchR!7336 lt!2198637 s!2326) (matchRSpec!2254 lt!2198637 s!2326))))

(declare-fun lt!2198601 () Unit!154126)

(declare-fun mainMatchTheorem!2254 (Regex!15151 List!61753) Unit!154126)

(assert (=> b!5395443 (= lt!2198601 (mainMatchTheorem!2254 lt!2198637 s!2326))))

(declare-fun b!5395444 () Bool)

(assert (=> b!5395444 (= e!3345757 (matchZipper!1395 lt!2198608 (t!374976 s!2326)))))

(declare-fun b!5395445 () Bool)

(declare-fun res!2293092 () Bool)

(declare-fun e!3345758 () Bool)

(assert (=> b!5395445 (=> res!2293092 e!3345758)))

(declare-datatypes ((tuple2!64700 0))(
  ( (tuple2!64701 (_1!35653 List!61753) (_2!35653 List!61753)) )
))
(declare-fun lt!2198612 () tuple2!64700)

(assert (=> b!5395445 (= res!2293092 (not (matchZipper!1395 lt!2198630 (_2!35653 lt!2198612))))))

(declare-fun b!5395446 () Bool)

(declare-fun e!3345744 () Bool)

(declare-fun tp!1493545 () Bool)

(declare-fun tp!1493538 () Bool)

(assert (=> b!5395446 (= e!3345744 (and tp!1493545 tp!1493538))))

(declare-fun b!5395447 () Bool)

(declare-fun e!3345742 () Bool)

(declare-fun tp!1493542 () Bool)

(assert (=> b!5395447 (= e!3345742 tp!1493542)))

(declare-fun b!5395448 () Bool)

(declare-fun e!3345736 () Bool)

(declare-fun tp_is_empty!39555 () Bool)

(declare-fun tp!1493537 () Bool)

(assert (=> b!5395448 (= e!3345736 (and tp_is_empty!39555 tp!1493537))))

(declare-fun b!5395449 () Bool)

(declare-fun nullable!5320 (Regex!15151) Bool)

(assert (=> b!5395449 (= e!3345760 (nullable!5320 (regOne!30814 (regOne!30814 r!7292))))))

(declare-fun b!5395450 () Bool)

(declare-fun res!2293096 () Bool)

(declare-fun e!3345743 () Bool)

(assert (=> b!5395450 (=> res!2293096 e!3345743)))

(declare-fun zl!343 () List!61754)

(declare-fun generalisedConcat!820 (List!61752) Regex!15151)

(assert (=> b!5395450 (= res!2293096 (not (= r!7292 (generalisedConcat!820 (exprs!5035 (h!68078 zl!343))))))))

(declare-fun e!3345749 () Bool)

(assert (=> b!5395451 (= e!3345753 e!3345749)))

(declare-fun res!2293099 () Bool)

(assert (=> b!5395451 (=> res!2293099 e!3345749)))

(declare-fun lt!2198638 () (InoxSet Context!9070))

(declare-fun appendTo!10 ((InoxSet Context!9070) Context!9070) (InoxSet Context!9070))

(assert (=> b!5395451 (= res!2293099 (not (= (appendTo!10 lt!2198634 lt!2198626) lt!2198638)))))

(declare-fun lambda!280556 () Int)

(declare-fun lt!2198613 () List!61752)

(declare-fun map!14111 ((InoxSet Context!9070) Int) (InoxSet Context!9070))

(declare-fun ++!13475 (List!61752 List!61752) List!61752)

(assert (=> b!5395451 (= (map!14111 lt!2198634 lambda!280556) (store ((as const (Array Context!9070 Bool)) false) (Context!9071 (++!13475 lt!2198627 lt!2198613)) true))))

(declare-fun lambda!280557 () Int)

(declare-fun lt!2198602 () Unit!154126)

(declare-fun lemmaConcatPreservesForall!176 (List!61752 List!61752 Int) Unit!154126)

(assert (=> b!5395451 (= lt!2198602 (lemmaConcatPreservesForall!176 lt!2198627 lt!2198613 lambda!280557))))

(declare-fun lt!2198625 () Unit!154126)

(declare-fun lemmaMapOnSingletonSet!10 ((InoxSet Context!9070) Context!9070 Int) Unit!154126)

(assert (=> b!5395451 (= lt!2198625 (lemmaMapOnSingletonSet!10 lt!2198634 lt!2198605 lambda!280556))))

(declare-fun b!5395452 () Bool)

(declare-fun res!2293091 () Bool)

(assert (=> b!5395452 (=> res!2293091 e!3345739)))

(declare-fun lt!2198610 () Bool)

(assert (=> b!5395452 (= res!2293091 (not lt!2198610))))

(declare-fun b!5395453 () Bool)

(declare-fun e!3345759 () Bool)

(assert (=> b!5395453 (= e!3345759 (not e!3345743))))

(declare-fun res!2293082 () Bool)

(assert (=> b!5395453 (=> res!2293082 e!3345743)))

(assert (=> b!5395453 (= res!2293082 (not ((_ is Cons!61630) zl!343)))))

(assert (=> b!5395453 (= lt!2198623 (matchRSpec!2254 r!7292 s!2326))))

(assert (=> b!5395453 (= lt!2198623 (matchR!7336 r!7292 s!2326))))

(declare-fun lt!2198629 () Unit!154126)

(assert (=> b!5395453 (= lt!2198629 (mainMatchTheorem!2254 r!7292 s!2326))))

(declare-fun b!5395454 () Bool)

(declare-fun res!2293090 () Bool)

(assert (=> b!5395454 (=> res!2293090 e!3345743)))

(assert (=> b!5395454 (= res!2293090 (not ((_ is Cons!61628) (exprs!5035 (h!68078 zl!343)))))))

(declare-fun b!5395455 () Bool)

(declare-fun e!3345747 () Bool)

(declare-fun e!3345746 () Bool)

(assert (=> b!5395455 (= e!3345747 e!3345746)))

(declare-fun res!2293097 () Bool)

(assert (=> b!5395455 (=> res!2293097 e!3345746)))

(declare-fun lt!2198624 () (InoxSet Context!9070))

(declare-fun lt!2198618 () (InoxSet Context!9070))

(assert (=> b!5395455 (= res!2293097 (not (= lt!2198624 lt!2198618)))))

(declare-fun lt!2198619 () Context!9070)

(assert (=> b!5395455 (= (flatMap!878 lt!2198638 lambda!280555) (derivationStepZipperUp!523 lt!2198619 (h!68077 s!2326)))))

(declare-fun lt!2198632 () Unit!154126)

(assert (=> b!5395455 (= lt!2198632 (lemmaFlatMapOnSingletonSet!410 lt!2198638 lt!2198619 lambda!280555))))

(declare-fun lt!2198644 () (InoxSet Context!9070))

(assert (=> b!5395455 (= lt!2198644 (derivationStepZipperUp!523 lt!2198619 (h!68077 s!2326)))))

(declare-fun derivationStepZipper!1390 ((InoxSet Context!9070) C!30572) (InoxSet Context!9070))

(assert (=> b!5395455 (= lt!2198624 (derivationStepZipper!1390 lt!2198638 (h!68077 s!2326)))))

(assert (=> b!5395455 (= lt!2198638 (store ((as const (Array Context!9070 Bool)) false) lt!2198619 true))))

(assert (=> b!5395455 (= lt!2198619 (Context!9071 (Cons!61628 (reg!15480 (regOne!30814 r!7292)) lt!2198613)))))

(declare-fun b!5395456 () Bool)

(declare-fun e!3345750 () Bool)

(assert (=> b!5395456 (= e!3345750 e!3345754)))

(declare-fun res!2293101 () Bool)

(assert (=> b!5395456 (=> res!2293101 e!3345754)))

(assert (=> b!5395456 (= res!2293101 (not (= (unfocusZipper!893 (Cons!61630 lt!2198619 Nil!61630)) lt!2198637)))))

(declare-fun lt!2198628 () Regex!15151)

(assert (=> b!5395456 (= lt!2198637 (Concat!23996 (reg!15480 (regOne!30814 r!7292)) lt!2198628))))

(declare-fun b!5395457 () Bool)

(declare-fun e!3345752 () Bool)

(assert (=> b!5395457 (= e!3345752 e!3345759)))

(declare-fun res!2293080 () Bool)

(assert (=> b!5395457 (=> (not res!2293080) (not e!3345759))))

(declare-fun lt!2198631 () Regex!15151)

(assert (=> b!5395457 (= res!2293080 (= r!7292 lt!2198631))))

(assert (=> b!5395457 (= lt!2198631 (unfocusZipper!893 zl!343))))

(declare-fun b!5395458 () Bool)

(declare-fun e!3345741 () Bool)

(assert (=> b!5395458 (= e!3345746 e!3345741)))

(declare-fun res!2293089 () Bool)

(assert (=> b!5395458 (=> res!2293089 e!3345741)))

(declare-fun lt!2198643 () Bool)

(assert (=> b!5395458 (= res!2293089 (not (= lt!2198643 (matchZipper!1395 lt!2198624 (t!374976 s!2326)))))))

(assert (=> b!5395458 (= lt!2198643 (matchZipper!1395 lt!2198638 s!2326))))

(declare-fun b!5395459 () Bool)

(declare-fun res!2293069 () Bool)

(assert (=> b!5395459 (=> res!2293069 e!3345743)))

(declare-fun isEmpty!33625 (List!61754) Bool)

(assert (=> b!5395459 (= res!2293069 (not (isEmpty!33625 (t!374977 zl!343))))))

(declare-fun b!5395460 () Bool)

(declare-fun res!2293100 () Bool)

(assert (=> b!5395460 (=> res!2293100 e!3345737)))

(assert (=> b!5395460 (= res!2293100 (not (= (unfocusZipper!893 (Cons!61630 lt!2198626 Nil!61630)) lt!2198628)))))

(declare-fun tp!1493539 () Bool)

(declare-fun setNonEmpty!35081 () Bool)

(declare-fun setRes!35081 () Bool)

(declare-fun setElem!35081 () Context!9070)

(declare-fun inv!81124 (Context!9070) Bool)

(assert (=> setNonEmpty!35081 (= setRes!35081 (and tp!1493539 (inv!81124 setElem!35081) e!3345742))))

(declare-fun z!1189 () (InoxSet Context!9070))

(declare-fun setRest!35081 () (InoxSet Context!9070))

(assert (=> setNonEmpty!35081 (= z!1189 ((_ map or) (store ((as const (Array Context!9070 Bool)) false) setElem!35081 true) setRest!35081))))

(declare-fun b!5395461 () Bool)

(assert (=> b!5395461 (= e!3345741 e!3345750)))

(declare-fun res!2293071 () Bool)

(assert (=> b!5395461 (=> res!2293071 e!3345750)))

(assert (=> b!5395461 (= res!2293071 (not (= r!7292 lt!2198628)))))

(declare-fun lt!2198639 () Regex!15151)

(assert (=> b!5395461 (= lt!2198628 (Concat!23996 lt!2198639 (regTwo!30814 r!7292)))))

(declare-fun e!3345748 () Bool)

(assert (=> b!5395462 (= e!3345748 e!3345751)))

(declare-fun res!2293102 () Bool)

(assert (=> b!5395462 (=> res!2293102 e!3345751)))

(assert (=> b!5395462 (= res!2293102 (or (and ((_ is ElementMatch!15151) (regOne!30814 r!7292)) (= (c!940287 (regOne!30814 r!7292)) (h!68077 s!2326))) ((_ is Union!15151) (regOne!30814 r!7292))))))

(declare-fun lt!2198600 () Unit!154126)

(assert (=> b!5395462 (= lt!2198600 e!3345756)))

(declare-fun c!940286 () Bool)

(assert (=> b!5395462 (= c!940286 lt!2198610)))

(assert (=> b!5395462 (= lt!2198610 (nullable!5320 (h!68076 (exprs!5035 (h!68078 zl!343)))))))

(assert (=> b!5395462 (= (flatMap!878 z!1189 lambda!280555) (derivationStepZipperUp!523 (h!68078 zl!343) (h!68077 s!2326)))))

(declare-fun lt!2198641 () Unit!154126)

(assert (=> b!5395462 (= lt!2198641 (lemmaFlatMapOnSingletonSet!410 z!1189 (h!68078 zl!343) lambda!280555))))

(declare-fun lt!2198617 () Context!9070)

(assert (=> b!5395462 (= lt!2198608 (derivationStepZipperUp!523 lt!2198617 (h!68077 s!2326)))))

(declare-fun derivationStepZipperDown!599 (Regex!15151 Context!9070 C!30572) (InoxSet Context!9070))

(assert (=> b!5395462 (= lt!2198609 (derivationStepZipperDown!599 (h!68076 (exprs!5035 (h!68078 zl!343))) lt!2198617 (h!68077 s!2326)))))

(assert (=> b!5395462 (= lt!2198617 (Context!9071 (t!374975 (exprs!5035 (h!68078 zl!343)))))))

(declare-fun lt!2198607 () (InoxSet Context!9070))

(assert (=> b!5395462 (= lt!2198607 (derivationStepZipperUp!523 (Context!9071 (Cons!61628 (h!68076 (exprs!5035 (h!68078 zl!343))) (t!374975 (exprs!5035 (h!68078 zl!343))))) (h!68077 s!2326)))))

(declare-fun b!5395463 () Bool)

(declare-fun Unit!154129 () Unit!154126)

(assert (=> b!5395463 (= e!3345756 Unit!154129)))

(declare-fun b!5395464 () Bool)

(declare-fun e!3345755 () Bool)

(assert (=> b!5395464 (= e!3345755 true)))

(declare-fun lt!2198603 () List!61754)

(declare-fun toList!8935 ((InoxSet Context!9070)) List!61754)

(assert (=> b!5395464 (= lt!2198603 (toList!8935 lt!2198634))))

(declare-fun b!5395465 () Bool)

(declare-fun res!2293072 () Bool)

(assert (=> b!5395465 (=> res!2293072 e!3345743)))

(declare-fun generalisedUnion!1080 (List!61752) Regex!15151)

(declare-fun unfocusZipperList!593 (List!61754) List!61752)

(assert (=> b!5395465 (= res!2293072 (not (= r!7292 (generalisedUnion!1080 (unfocusZipperList!593 zl!343)))))))

(declare-fun b!5395466 () Bool)

(declare-fun res!2293079 () Bool)

(assert (=> b!5395466 (=> res!2293079 e!3345741)))

(assert (=> b!5395466 (= res!2293079 (not (= lt!2198631 r!7292)))))

(declare-fun e!3345738 () Bool)

(declare-fun e!3345745 () Bool)

(declare-fun tp!1493540 () Bool)

(declare-fun b!5395467 () Bool)

(assert (=> b!5395467 (= e!3345745 (and (inv!81124 (h!68078 zl!343)) e!3345738 tp!1493540))))

(declare-fun res!2293088 () Bool)

(assert (=> start!566842 (=> (not res!2293088) (not e!3345752))))

(declare-fun validRegex!6887 (Regex!15151) Bool)

(assert (=> start!566842 (= res!2293088 (validRegex!6887 r!7292))))

(assert (=> start!566842 e!3345752))

(assert (=> start!566842 e!3345744))

(declare-fun condSetEmpty!35081 () Bool)

(assert (=> start!566842 (= condSetEmpty!35081 (= z!1189 ((as const (Array Context!9070 Bool)) false)))))

(assert (=> start!566842 setRes!35081))

(assert (=> start!566842 e!3345745))

(assert (=> start!566842 e!3345736))

(declare-fun b!5395468 () Bool)

(declare-fun res!2293074 () Bool)

(assert (=> b!5395468 (=> (not res!2293074) (not e!3345752))))

(assert (=> b!5395468 (= res!2293074 (= (toList!8935 z!1189) zl!343))))

(declare-fun b!5395469 () Bool)

(declare-fun res!2293086 () Bool)

(assert (=> b!5395469 (=> res!2293086 e!3345758)))

(assert (=> b!5395469 (= res!2293086 (not (matchZipper!1395 lt!2198634 (_1!35653 lt!2198612))))))

(declare-fun b!5395470 () Bool)

(declare-fun tp!1493544 () Bool)

(assert (=> b!5395470 (= e!3345744 tp!1493544)))

(declare-fun setIsEmpty!35081 () Bool)

(assert (=> setIsEmpty!35081 setRes!35081))

(declare-fun b!5395471 () Bool)

(declare-fun tp!1493543 () Bool)

(assert (=> b!5395471 (= e!3345738 tp!1493543)))

(declare-fun b!5395472 () Bool)

(assert (=> b!5395472 (= e!3345751 e!3345747)))

(declare-fun res!2293095 () Bool)

(assert (=> b!5395472 (=> res!2293095 e!3345747)))

(assert (=> b!5395472 (= res!2293095 (not (= lt!2198609 lt!2198618)))))

(assert (=> b!5395472 (= lt!2198618 (derivationStepZipperDown!599 (reg!15480 (regOne!30814 r!7292)) lt!2198626 (h!68077 s!2326)))))

(assert (=> b!5395472 (= lt!2198626 (Context!9071 lt!2198613))))

(assert (=> b!5395472 (= lt!2198613 (Cons!61628 lt!2198639 (t!374975 (exprs!5035 (h!68078 zl!343)))))))

(assert (=> b!5395472 (= lt!2198639 (Star!15151 (reg!15480 (regOne!30814 r!7292))))))

(assert (=> b!5395473 (= e!3345743 e!3345748)))

(declare-fun res!2293073 () Bool)

(assert (=> b!5395473 (=> res!2293073 e!3345748)))

(declare-fun lt!2198636 () Bool)

(assert (=> b!5395473 (= res!2293073 (or (not (= lt!2198623 lt!2198636)) ((_ is Nil!61629) s!2326)))))

(declare-fun Exists!2332 (Int) Bool)

(assert (=> b!5395473 (= (Exists!2332 lambda!280553) (Exists!2332 lambda!280554))))

(declare-fun lt!2198635 () Unit!154126)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!986 (Regex!15151 Regex!15151 List!61753) Unit!154126)

(assert (=> b!5395473 (= lt!2198635 (lemmaExistCutMatchRandMatchRSpecEquivalent!986 (regOne!30814 r!7292) (regTwo!30814 r!7292) s!2326))))

(assert (=> b!5395473 (= lt!2198636 (Exists!2332 lambda!280553))))

(declare-datatypes ((Option!15262 0))(
  ( (None!15261) (Some!15261 (v!51290 tuple2!64700)) )
))
(declare-fun isDefined!11965 (Option!15262) Bool)

(declare-fun findConcatSeparation!1676 (Regex!15151 Regex!15151 List!61753 List!61753 List!61753) Option!15262)

(assert (=> b!5395473 (= lt!2198636 (isDefined!11965 (findConcatSeparation!1676 (regOne!30814 r!7292) (regTwo!30814 r!7292) Nil!61629 s!2326 s!2326)))))

(declare-fun lt!2198614 () Unit!154126)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1440 (Regex!15151 Regex!15151 List!61753) Unit!154126)

(assert (=> b!5395473 (= lt!2198614 (lemmaFindConcatSeparationEquivalentToExists!1440 (regOne!30814 r!7292) (regTwo!30814 r!7292) s!2326))))

(declare-fun b!5395474 () Bool)

(assert (=> b!5395474 (= e!3345744 tp_is_empty!39555)))

(declare-fun b!5395475 () Bool)

(assert (=> b!5395475 (= e!3345749 e!3345758)))

(declare-fun res!2293070 () Bool)

(assert (=> b!5395475 (=> res!2293070 e!3345758)))

(declare-fun lt!2198640 () List!61753)

(assert (=> b!5395475 (= res!2293070 (not (= s!2326 lt!2198640)))))

(declare-fun ++!13476 (List!61753 List!61753) List!61753)

(assert (=> b!5395475 (= lt!2198640 (++!13476 (_1!35653 lt!2198612) (_2!35653 lt!2198612)))))

(declare-fun lt!2198621 () Option!15262)

(declare-fun get!21229 (Option!15262) tuple2!64700)

(assert (=> b!5395475 (= lt!2198612 (get!21229 lt!2198621))))

(assert (=> b!5395475 (isDefined!11965 lt!2198621)))

(declare-fun findConcatSeparationZippers!8 ((InoxSet Context!9070) (InoxSet Context!9070) List!61753 List!61753 List!61753) Option!15262)

(assert (=> b!5395475 (= lt!2198621 (findConcatSeparationZippers!8 lt!2198634 lt!2198630 Nil!61629 s!2326 s!2326))))

(declare-fun lt!2198615 () Unit!154126)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!8 ((InoxSet Context!9070) Context!9070 List!61753) Unit!154126)

(assert (=> b!5395475 (= lt!2198615 (lemmaConcatZipperMatchesStringThenFindConcatDefined!8 lt!2198634 lt!2198626 s!2326))))

(declare-fun b!5395476 () Bool)

(declare-fun res!2293094 () Bool)

(assert (=> b!5395476 (=> res!2293094 e!3345748)))

(declare-fun isEmpty!33626 (List!61752) Bool)

(assert (=> b!5395476 (= res!2293094 (isEmpty!33626 (t!374975 (exprs!5035 (h!68078 zl!343)))))))

(declare-fun b!5395477 () Bool)

(declare-fun res!2293093 () Bool)

(assert (=> b!5395477 (=> res!2293093 e!3345753)))

(assert (=> b!5395477 (= res!2293093 (or (not lt!2198616) (not lt!2198643)))))

(declare-fun b!5395478 () Bool)

(declare-fun res!2293083 () Bool)

(assert (=> b!5395478 (=> res!2293083 e!3345739)))

(assert (=> b!5395478 (= res!2293083 (not (matchZipper!1395 z!1189 s!2326)))))

(declare-fun b!5395479 () Bool)

(declare-fun tp!1493536 () Bool)

(declare-fun tp!1493541 () Bool)

(assert (=> b!5395479 (= e!3345744 (and tp!1493536 tp!1493541))))

(declare-fun b!5395480 () Bool)

(declare-fun res!2293075 () Bool)

(assert (=> b!5395480 (=> res!2293075 e!3345751)))

(assert (=> b!5395480 (= res!2293075 (or ((_ is Concat!23996) (regOne!30814 r!7292)) (not ((_ is Star!15151) (regOne!30814 r!7292)))))))

(declare-fun b!5395481 () Bool)

(assert (=> b!5395481 (= e!3345758 e!3345755)))

(declare-fun res!2293081 () Bool)

(assert (=> b!5395481 (=> res!2293081 e!3345755)))

(assert (=> b!5395481 (= res!2293081 (not (validRegex!6887 (reg!15480 (regOne!30814 r!7292)))))))

(assert (=> b!5395481 (matchZipper!1395 (store ((as const (Array Context!9070 Bool)) false) (Context!9071 (++!13475 lt!2198627 lt!2198613)) true) lt!2198640)))

(declare-fun lt!2198633 () Unit!154126)

(assert (=> b!5395481 (= lt!2198633 (lemmaConcatPreservesForall!176 lt!2198627 lt!2198613 lambda!280557))))

(declare-fun lt!2198604 () Unit!154126)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!24 (Context!9070 Context!9070 List!61753 List!61753) Unit!154126)

(assert (=> b!5395481 (= lt!2198604 (lemmaConcatenateContextMatchesConcatOfStrings!24 lt!2198605 lt!2198626 (_1!35653 lt!2198612) (_2!35653 lt!2198612)))))

(declare-fun b!5395482 () Bool)

(assert (=> b!5395482 (= e!3345740 (not (matchZipper!1395 lt!2198608 (t!374976 s!2326))))))

(declare-fun b!5395483 () Bool)

(declare-fun res!2293077 () Bool)

(assert (=> b!5395483 (=> res!2293077 e!3345743)))

(assert (=> b!5395483 (= res!2293077 (or ((_ is EmptyExpr!15151) r!7292) ((_ is EmptyLang!15151) r!7292) ((_ is ElementMatch!15151) r!7292) ((_ is Union!15151) r!7292) (not ((_ is Concat!23996) r!7292))))))

(assert (= (and start!566842 res!2293088) b!5395468))

(assert (= (and b!5395468 res!2293074) b!5395457))

(assert (= (and b!5395457 res!2293080) b!5395453))

(assert (= (and b!5395453 (not res!2293082)) b!5395459))

(assert (= (and b!5395459 (not res!2293069)) b!5395450))

(assert (= (and b!5395450 (not res!2293096)) b!5395454))

(assert (= (and b!5395454 (not res!2293090)) b!5395465))

(assert (= (and b!5395465 (not res!2293072)) b!5395483))

(assert (= (and b!5395483 (not res!2293077)) b!5395473))

(assert (= (and b!5395473 (not res!2293073)) b!5395476))

(assert (= (and b!5395476 (not res!2293094)) b!5395462))

(assert (= (and b!5395462 c!940286) b!5395441))

(assert (= (and b!5395462 (not c!940286)) b!5395463))

(assert (= (and b!5395441 (not res!2293084)) b!5395444))

(assert (= (and b!5395462 (not res!2293102)) b!5395439))

(assert (= (and b!5395439 res!2293103) b!5395449))

(assert (= (and b!5395439 (not res!2293078)) b!5395480))

(assert (= (and b!5395480 (not res!2293075)) b!5395472))

(assert (= (and b!5395472 (not res!2293095)) b!5395455))

(assert (= (and b!5395455 (not res!2293097)) b!5395458))

(assert (= (and b!5395458 (not res!2293089)) b!5395466))

(assert (= (and b!5395466 (not res!2293079)) b!5395461))

(assert (= (and b!5395461 (not res!2293071)) b!5395456))

(assert (= (and b!5395456 (not res!2293101)) b!5395442))

(assert (= (and b!5395442 (not res!2293098)) b!5395460))

(assert (= (and b!5395460 (not res!2293100)) b!5395443))

(assert (= (and b!5395443 (not res!2293085)) b!5395478))

(assert (= (and b!5395478 (not res!2293083)) b!5395452))

(assert (= (and b!5395452 (not res!2293091)) b!5395440))

(assert (= (and b!5395440 res!2293087) b!5395482))

(assert (= (and b!5395440 (not res!2293076)) b!5395477))

(assert (= (and b!5395477 (not res!2293093)) b!5395451))

(assert (= (and b!5395451 (not res!2293099)) b!5395475))

(assert (= (and b!5395475 (not res!2293070)) b!5395469))

(assert (= (and b!5395469 (not res!2293086)) b!5395445))

(assert (= (and b!5395445 (not res!2293092)) b!5395481))

(assert (= (and b!5395481 (not res!2293081)) b!5395464))

(assert (= (and start!566842 ((_ is ElementMatch!15151) r!7292)) b!5395474))

(assert (= (and start!566842 ((_ is Concat!23996) r!7292)) b!5395446))

(assert (= (and start!566842 ((_ is Star!15151) r!7292)) b!5395470))

(assert (= (and start!566842 ((_ is Union!15151) r!7292)) b!5395479))

(assert (= (and start!566842 condSetEmpty!35081) setIsEmpty!35081))

(assert (= (and start!566842 (not condSetEmpty!35081)) setNonEmpty!35081))

(assert (= setNonEmpty!35081 b!5395447))

(assert (= b!5395467 b!5395471))

(assert (= (and start!566842 ((_ is Cons!61630) zl!343)) b!5395467))

(assert (= (and start!566842 ((_ is Cons!61629) s!2326)) b!5395448))

(declare-fun m!6420382 () Bool)

(assert (=> b!5395469 m!6420382))

(declare-fun m!6420384 () Bool)

(assert (=> setNonEmpty!35081 m!6420384))

(declare-fun m!6420386 () Bool)

(assert (=> b!5395458 m!6420386))

(declare-fun m!6420388 () Bool)

(assert (=> b!5395458 m!6420388))

(declare-fun m!6420390 () Bool)

(assert (=> b!5395467 m!6420390))

(declare-fun m!6420392 () Bool)

(assert (=> b!5395449 m!6420392))

(declare-fun m!6420394 () Bool)

(assert (=> b!5395478 m!6420394))

(declare-fun m!6420396 () Bool)

(assert (=> b!5395476 m!6420396))

(declare-fun m!6420398 () Bool)

(assert (=> b!5395468 m!6420398))

(declare-fun m!6420400 () Bool)

(assert (=> b!5395464 m!6420400))

(declare-fun m!6420402 () Bool)

(assert (=> b!5395473 m!6420402))

(declare-fun m!6420404 () Bool)

(assert (=> b!5395473 m!6420404))

(declare-fun m!6420406 () Bool)

(assert (=> b!5395473 m!6420406))

(assert (=> b!5395473 m!6420402))

(declare-fun m!6420408 () Bool)

(assert (=> b!5395473 m!6420408))

(declare-fun m!6420410 () Bool)

(assert (=> b!5395473 m!6420410))

(assert (=> b!5395473 m!6420404))

(declare-fun m!6420412 () Bool)

(assert (=> b!5395473 m!6420412))

(declare-fun m!6420414 () Bool)

(assert (=> b!5395444 m!6420414))

(declare-fun m!6420416 () Bool)

(assert (=> b!5395460 m!6420416))

(declare-fun m!6420418 () Bool)

(assert (=> b!5395450 m!6420418))

(declare-fun m!6420420 () Bool)

(assert (=> b!5395440 m!6420420))

(declare-fun m!6420422 () Bool)

(assert (=> b!5395456 m!6420422))

(declare-fun m!6420424 () Bool)

(assert (=> b!5395455 m!6420424))

(declare-fun m!6420426 () Bool)

(assert (=> b!5395455 m!6420426))

(declare-fun m!6420428 () Bool)

(assert (=> b!5395455 m!6420428))

(declare-fun m!6420430 () Bool)

(assert (=> b!5395455 m!6420430))

(declare-fun m!6420432 () Bool)

(assert (=> b!5395455 m!6420432))

(declare-fun m!6420434 () Bool)

(assert (=> b!5395457 m!6420434))

(declare-fun m!6420436 () Bool)

(assert (=> b!5395443 m!6420436))

(declare-fun m!6420438 () Bool)

(assert (=> b!5395443 m!6420438))

(declare-fun m!6420440 () Bool)

(assert (=> b!5395443 m!6420440))

(declare-fun m!6420442 () Bool)

(assert (=> b!5395441 m!6420442))

(assert (=> b!5395441 m!6420420))

(declare-fun m!6420444 () Bool)

(assert (=> b!5395441 m!6420444))

(declare-fun m!6420446 () Bool)

(assert (=> b!5395475 m!6420446))

(declare-fun m!6420448 () Bool)

(assert (=> b!5395475 m!6420448))

(declare-fun m!6420450 () Bool)

(assert (=> b!5395475 m!6420450))

(declare-fun m!6420452 () Bool)

(assert (=> b!5395475 m!6420452))

(declare-fun m!6420454 () Bool)

(assert (=> b!5395475 m!6420454))

(declare-fun m!6420456 () Bool)

(assert (=> b!5395453 m!6420456))

(declare-fun m!6420458 () Bool)

(assert (=> b!5395453 m!6420458))

(declare-fun m!6420460 () Bool)

(assert (=> b!5395453 m!6420460))

(declare-fun m!6420462 () Bool)

(assert (=> b!5395472 m!6420462))

(assert (=> b!5395482 m!6420414))

(declare-fun m!6420464 () Bool)

(assert (=> b!5395451 m!6420464))

(declare-fun m!6420466 () Bool)

(assert (=> b!5395451 m!6420466))

(declare-fun m!6420468 () Bool)

(assert (=> b!5395451 m!6420468))

(declare-fun m!6420470 () Bool)

(assert (=> b!5395451 m!6420470))

(declare-fun m!6420472 () Bool)

(assert (=> b!5395451 m!6420472))

(declare-fun m!6420474 () Bool)

(assert (=> b!5395451 m!6420474))

(declare-fun m!6420476 () Bool)

(assert (=> b!5395459 m!6420476))

(declare-fun m!6420478 () Bool)

(assert (=> b!5395445 m!6420478))

(declare-fun m!6420480 () Bool)

(assert (=> start!566842 m!6420480))

(declare-fun m!6420482 () Bool)

(assert (=> b!5395462 m!6420482))

(declare-fun m!6420484 () Bool)

(assert (=> b!5395462 m!6420484))

(declare-fun m!6420486 () Bool)

(assert (=> b!5395462 m!6420486))

(declare-fun m!6420488 () Bool)

(assert (=> b!5395462 m!6420488))

(declare-fun m!6420490 () Bool)

(assert (=> b!5395462 m!6420490))

(declare-fun m!6420492 () Bool)

(assert (=> b!5395462 m!6420492))

(declare-fun m!6420494 () Bool)

(assert (=> b!5395462 m!6420494))

(declare-fun m!6420496 () Bool)

(assert (=> b!5395481 m!6420496))

(declare-fun m!6420498 () Bool)

(assert (=> b!5395481 m!6420498))

(assert (=> b!5395481 m!6420466))

(declare-fun m!6420500 () Bool)

(assert (=> b!5395481 m!6420500))

(assert (=> b!5395481 m!6420466))

(assert (=> b!5395481 m!6420468))

(assert (=> b!5395481 m!6420474))

(declare-fun m!6420502 () Bool)

(assert (=> b!5395465 m!6420502))

(assert (=> b!5395465 m!6420502))

(declare-fun m!6420504 () Bool)

(assert (=> b!5395465 m!6420504))

(declare-fun m!6420506 () Bool)

(assert (=> b!5395442 m!6420506))

(declare-fun m!6420508 () Bool)

(assert (=> b!5395442 m!6420508))

(declare-fun m!6420510 () Bool)

(assert (=> b!5395442 m!6420510))

(declare-fun m!6420512 () Bool)

(assert (=> b!5395442 m!6420512))

(declare-fun m!6420514 () Bool)

(assert (=> b!5395442 m!6420514))

(declare-fun m!6420516 () Bool)

(assert (=> b!5395442 m!6420516))

(declare-fun m!6420518 () Bool)

(assert (=> b!5395442 m!6420518))

(declare-fun m!6420520 () Bool)

(assert (=> b!5395442 m!6420520))

(declare-fun m!6420522 () Bool)

(assert (=> b!5395442 m!6420522))

(check-sat (not b!5395481) (not b!5395441) (not b!5395473) (not b!5395467) (not b!5395456) tp_is_empty!39555 (not setNonEmpty!35081) (not b!5395478) (not b!5395443) (not b!5395440) (not b!5395464) (not b!5395471) (not b!5395448) (not b!5395462) (not b!5395470) (not b!5395450) (not b!5395479) (not b!5395472) (not b!5395476) (not b!5395458) (not b!5395451) (not b!5395482) (not b!5395457) (not b!5395444) (not b!5395459) (not b!5395465) (not b!5395455) (not b!5395449) (not b!5395442) (not b!5395446) (not b!5395468) (not b!5395453) (not b!5395460) (not b!5395445) (not b!5395447) (not b!5395469) (not start!566842) (not b!5395475))
(check-sat)
