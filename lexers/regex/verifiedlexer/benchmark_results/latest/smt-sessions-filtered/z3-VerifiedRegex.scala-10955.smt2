; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!566998 () Bool)

(assert start!566998)

(declare-fun b!5397366 () Bool)

(assert (=> b!5397366 true))

(assert (=> b!5397366 true))

(declare-fun lambda!280798 () Int)

(declare-fun lambda!280797 () Int)

(assert (=> b!5397366 (not (= lambda!280798 lambda!280797))))

(assert (=> b!5397366 true))

(assert (=> b!5397366 true))

(declare-fun b!5397364 () Bool)

(assert (=> b!5397364 true))

(declare-fun b!5397362 () Bool)

(assert (=> b!5397362 true))

(declare-fun b!5397358 () Bool)

(declare-fun e!3346797 () Bool)

(declare-fun e!3346798 () Bool)

(assert (=> b!5397358 (= e!3346797 e!3346798)))

(declare-fun res!2294116 () Bool)

(assert (=> b!5397358 (=> res!2294116 e!3346798)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!30584 0))(
  ( (C!30585 (val!24994 Int)) )
))
(declare-datatypes ((Regex!15157 0))(
  ( (ElementMatch!15157 (c!940651 C!30584)) (Concat!24002 (regOne!30826 Regex!15157) (regTwo!30826 Regex!15157)) (EmptyExpr!15157) (Star!15157 (reg!15486 Regex!15157)) (EmptyLang!15157) (Union!15157 (regOne!30827 Regex!15157) (regTwo!30827 Regex!15157)) )
))
(declare-datatypes ((List!61770 0))(
  ( (Nil!61646) (Cons!61646 (h!68094 Regex!15157) (t!374993 List!61770)) )
))
(declare-datatypes ((Context!9082 0))(
  ( (Context!9083 (exprs!5041 List!61770)) )
))
(declare-fun lt!2199663 () (InoxSet Context!9082))

(declare-fun lt!2199687 () (InoxSet Context!9082))

(assert (=> b!5397358 (= res!2294116 (not (= lt!2199663 lt!2199687)))))

(declare-fun r!7292 () Regex!15157)

(declare-datatypes ((List!61771 0))(
  ( (Nil!61647) (Cons!61647 (h!68095 C!30584) (t!374994 List!61771)) )
))
(declare-fun s!2326 () List!61771)

(declare-fun lt!2199683 () Context!9082)

(declare-fun derivationStepZipperDown!605 (Regex!15157 Context!9082 C!30584) (InoxSet Context!9082))

(assert (=> b!5397358 (= lt!2199687 (derivationStepZipperDown!605 (reg!15486 (regOne!30826 r!7292)) lt!2199683 (h!68095 s!2326)))))

(declare-fun lt!2199691 () List!61770)

(assert (=> b!5397358 (= lt!2199683 (Context!9083 lt!2199691))))

(declare-fun lt!2199679 () Regex!15157)

(declare-datatypes ((List!61772 0))(
  ( (Nil!61648) (Cons!61648 (h!68096 Context!9082) (t!374995 List!61772)) )
))
(declare-fun zl!343 () List!61772)

(assert (=> b!5397358 (= lt!2199691 (Cons!61646 lt!2199679 (t!374993 (exprs!5041 (h!68096 zl!343)))))))

(assert (=> b!5397358 (= lt!2199679 (Star!15157 (reg!15486 (regOne!30826 r!7292))))))

(declare-fun res!2294137 () Bool)

(declare-fun e!3346790 () Bool)

(assert (=> start!566998 (=> (not res!2294137) (not e!3346790))))

(declare-fun validRegex!6893 (Regex!15157) Bool)

(assert (=> start!566998 (= res!2294137 (validRegex!6893 r!7292))))

(assert (=> start!566998 e!3346790))

(declare-fun e!3346780 () Bool)

(assert (=> start!566998 e!3346780))

(declare-fun condSetEmpty!35105 () Bool)

(declare-fun z!1189 () (InoxSet Context!9082))

(assert (=> start!566998 (= condSetEmpty!35105 (= z!1189 ((as const (Array Context!9082 Bool)) false)))))

(declare-fun setRes!35105 () Bool)

(assert (=> start!566998 setRes!35105))

(declare-fun e!3346799 () Bool)

(assert (=> start!566998 e!3346799))

(declare-fun e!3346781 () Bool)

(assert (=> start!566998 e!3346781))

(declare-fun b!5397359 () Bool)

(declare-fun e!3346792 () Bool)

(declare-fun e!3346778 () Bool)

(assert (=> b!5397359 (= e!3346792 e!3346778)))

(declare-fun res!2294124 () Bool)

(assert (=> b!5397359 (=> res!2294124 e!3346778)))

(declare-fun lt!2199662 () Context!9082)

(declare-fun lt!2199675 () Regex!15157)

(declare-fun unfocusZipper!899 (List!61772) Regex!15157)

(assert (=> b!5397359 (= res!2294124 (not (= (unfocusZipper!899 (Cons!61648 lt!2199662 Nil!61648)) lt!2199675)))))

(declare-fun lt!2199689 () Regex!15157)

(assert (=> b!5397359 (= lt!2199675 (Concat!24002 (reg!15486 (regOne!30826 r!7292)) lt!2199689))))

(declare-fun b!5397360 () Bool)

(declare-fun res!2294119 () Bool)

(declare-fun e!3346786 () Bool)

(assert (=> b!5397360 (=> res!2294119 e!3346786)))

(declare-fun lt!2199657 () (InoxSet Context!9082))

(declare-datatypes ((tuple2!64712 0))(
  ( (tuple2!64713 (_1!35659 List!61771) (_2!35659 List!61771)) )
))
(declare-fun lt!2199656 () tuple2!64712)

(declare-fun matchZipper!1401 ((InoxSet Context!9082) List!61771) Bool)

(assert (=> b!5397360 (= res!2294119 (not (matchZipper!1401 lt!2199657 (_2!35659 lt!2199656))))))

(declare-fun b!5397361 () Bool)

(declare-fun e!3346793 () Bool)

(declare-fun e!3346795 () Bool)

(assert (=> b!5397361 (= e!3346793 e!3346795)))

(declare-fun res!2294141 () Bool)

(assert (=> b!5397361 (=> res!2294141 e!3346795)))

(declare-fun lt!2199660 () (InoxSet Context!9082))

(declare-fun lt!2199653 () Bool)

(assert (=> b!5397361 (= res!2294141 (not (= lt!2199653 (matchZipper!1401 lt!2199660 (t!374994 s!2326)))))))

(declare-fun lt!2199661 () (InoxSet Context!9082))

(assert (=> b!5397361 (= lt!2199653 (matchZipper!1401 lt!2199661 s!2326))))

(declare-fun e!3346777 () Bool)

(declare-fun e!3346784 () Bool)

(assert (=> b!5397362 (= e!3346777 e!3346784)))

(declare-fun res!2294114 () Bool)

(assert (=> b!5397362 (=> res!2294114 e!3346784)))

(declare-fun lt!2199671 () (InoxSet Context!9082))

(declare-fun appendTo!16 ((InoxSet Context!9082) Context!9082) (InoxSet Context!9082))

(assert (=> b!5397362 (= res!2294114 (not (= (appendTo!16 lt!2199671 lt!2199683) lt!2199661)))))

(declare-fun lambda!280800 () Int)

(declare-fun lt!2199677 () List!61770)

(declare-fun map!14120 ((InoxSet Context!9082) Int) (InoxSet Context!9082))

(declare-fun ++!13487 (List!61770 List!61770) List!61770)

(assert (=> b!5397362 (= (map!14120 lt!2199671 lambda!280800) (store ((as const (Array Context!9082 Bool)) false) (Context!9083 (++!13487 lt!2199677 lt!2199691)) true))))

(declare-datatypes ((Unit!154150 0))(
  ( (Unit!154151) )
))
(declare-fun lt!2199655 () Unit!154150)

(declare-fun lambda!280801 () Int)

(declare-fun lemmaConcatPreservesForall!182 (List!61770 List!61770 Int) Unit!154150)

(assert (=> b!5397362 (= lt!2199655 (lemmaConcatPreservesForall!182 lt!2199677 lt!2199691 lambda!280801))))

(declare-fun lt!2199676 () Unit!154150)

(declare-fun lt!2199688 () Context!9082)

(declare-fun lemmaMapOnSingletonSet!16 ((InoxSet Context!9082) Context!9082 Int) Unit!154150)

(assert (=> b!5397362 (= lt!2199676 (lemmaMapOnSingletonSet!16 lt!2199671 lt!2199688 lambda!280800))))

(declare-fun b!5397363 () Bool)

(declare-fun res!2294127 () Bool)

(assert (=> b!5397363 (=> res!2294127 e!3346795)))

(declare-fun lt!2199692 () Regex!15157)

(assert (=> b!5397363 (= res!2294127 (not (= lt!2199692 r!7292)))))

(declare-fun e!3346783 () Bool)

(assert (=> b!5397364 (= e!3346783 e!3346797)))

(declare-fun res!2294128 () Bool)

(assert (=> b!5397364 (=> res!2294128 e!3346797)))

(get-info :version)

(assert (=> b!5397364 (= res!2294128 (or (and ((_ is ElementMatch!15157) (regOne!30826 r!7292)) (= (c!940651 (regOne!30826 r!7292)) (h!68095 s!2326))) ((_ is Union!15157) (regOne!30826 r!7292))))))

(declare-fun lt!2199647 () Unit!154150)

(declare-fun e!3346788 () Unit!154150)

(assert (=> b!5397364 (= lt!2199647 e!3346788)))

(declare-fun c!940650 () Bool)

(declare-fun lt!2199667 () Bool)

(assert (=> b!5397364 (= c!940650 lt!2199667)))

(declare-fun nullable!5326 (Regex!15157) Bool)

(assert (=> b!5397364 (= lt!2199667 (nullable!5326 (h!68094 (exprs!5041 (h!68096 zl!343)))))))

(declare-fun lambda!280799 () Int)

(declare-fun flatMap!884 ((InoxSet Context!9082) Int) (InoxSet Context!9082))

(declare-fun derivationStepZipperUp!529 (Context!9082 C!30584) (InoxSet Context!9082))

(assert (=> b!5397364 (= (flatMap!884 z!1189 lambda!280799) (derivationStepZipperUp!529 (h!68096 zl!343) (h!68095 s!2326)))))

(declare-fun lt!2199646 () Unit!154150)

(declare-fun lemmaFlatMapOnSingletonSet!416 ((InoxSet Context!9082) Context!9082 Int) Unit!154150)

(assert (=> b!5397364 (= lt!2199646 (lemmaFlatMapOnSingletonSet!416 z!1189 (h!68096 zl!343) lambda!280799))))

(declare-fun lt!2199659 () (InoxSet Context!9082))

(declare-fun lt!2199678 () Context!9082)

(assert (=> b!5397364 (= lt!2199659 (derivationStepZipperUp!529 lt!2199678 (h!68095 s!2326)))))

(assert (=> b!5397364 (= lt!2199663 (derivationStepZipperDown!605 (h!68094 (exprs!5041 (h!68096 zl!343))) lt!2199678 (h!68095 s!2326)))))

(assert (=> b!5397364 (= lt!2199678 (Context!9083 (t!374993 (exprs!5041 (h!68096 zl!343)))))))

(declare-fun lt!2199651 () (InoxSet Context!9082))

(assert (=> b!5397364 (= lt!2199651 (derivationStepZipperUp!529 (Context!9083 (Cons!61646 (h!68094 (exprs!5041 (h!68096 zl!343))) (t!374993 (exprs!5041 (h!68096 zl!343))))) (h!68095 s!2326)))))

(declare-fun b!5397365 () Bool)

(declare-fun res!2294125 () Bool)

(declare-fun e!3346800 () Bool)

(assert (=> b!5397365 (=> res!2294125 e!3346800)))

(assert (=> b!5397365 (= res!2294125 (not ((_ is Cons!61646) (exprs!5041 (h!68096 zl!343)))))))

(assert (=> b!5397366 (= e!3346800 e!3346783)))

(declare-fun res!2294113 () Bool)

(assert (=> b!5397366 (=> res!2294113 e!3346783)))

(declare-fun lt!2199645 () Bool)

(declare-fun lt!2199669 () Bool)

(assert (=> b!5397366 (= res!2294113 (or (not (= lt!2199645 lt!2199669)) ((_ is Nil!61647) s!2326)))))

(declare-fun Exists!2338 (Int) Bool)

(assert (=> b!5397366 (= (Exists!2338 lambda!280797) (Exists!2338 lambda!280798))))

(declare-fun lt!2199686 () Unit!154150)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!992 (Regex!15157 Regex!15157 List!61771) Unit!154150)

(assert (=> b!5397366 (= lt!2199686 (lemmaExistCutMatchRandMatchRSpecEquivalent!992 (regOne!30826 r!7292) (regTwo!30826 r!7292) s!2326))))

(assert (=> b!5397366 (= lt!2199669 (Exists!2338 lambda!280797))))

(declare-datatypes ((Option!15268 0))(
  ( (None!15267) (Some!15267 (v!51296 tuple2!64712)) )
))
(declare-fun isDefined!11971 (Option!15268) Bool)

(declare-fun findConcatSeparation!1682 (Regex!15157 Regex!15157 List!61771 List!61771 List!61771) Option!15268)

(assert (=> b!5397366 (= lt!2199669 (isDefined!11971 (findConcatSeparation!1682 (regOne!30826 r!7292) (regTwo!30826 r!7292) Nil!61647 s!2326 s!2326)))))

(declare-fun lt!2199682 () Unit!154150)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1446 (Regex!15157 Regex!15157 List!61771) Unit!154150)

(assert (=> b!5397366 (= lt!2199682 (lemmaFindConcatSeparationEquivalentToExists!1446 (regOne!30826 r!7292) (regTwo!30826 r!7292) s!2326))))

(declare-fun b!5397367 () Bool)

(declare-fun res!2294133 () Bool)

(assert (=> b!5397367 (=> res!2294133 e!3346797)))

(assert (=> b!5397367 (= res!2294133 (or ((_ is Concat!24002) (regOne!30826 r!7292)) (not ((_ is Star!15157) (regOne!30826 r!7292)))))))

(declare-fun b!5397368 () Bool)

(declare-fun Unit!154152 () Unit!154150)

(assert (=> b!5397368 (= e!3346788 Unit!154152)))

(declare-fun b!5397369 () Bool)

(declare-fun res!2294140 () Bool)

(assert (=> b!5397369 (=> res!2294140 e!3346797)))

(declare-fun e!3346787 () Bool)

(assert (=> b!5397369 (= res!2294140 e!3346787)))

(declare-fun res!2294111 () Bool)

(assert (=> b!5397369 (=> (not res!2294111) (not e!3346787))))

(assert (=> b!5397369 (= res!2294111 ((_ is Concat!24002) (regOne!30826 r!7292)))))

(declare-fun b!5397370 () Bool)

(declare-fun Unit!154153 () Unit!154150)

(assert (=> b!5397370 (= e!3346788 Unit!154153)))

(declare-fun lt!2199658 () Unit!154150)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!394 ((InoxSet Context!9082) (InoxSet Context!9082) List!61771) Unit!154150)

(assert (=> b!5397370 (= lt!2199658 (lemmaZipperConcatMatchesSameAsBothZippers!394 lt!2199663 lt!2199659 (t!374994 s!2326)))))

(declare-fun res!2294136 () Bool)

(assert (=> b!5397370 (= res!2294136 (matchZipper!1401 lt!2199663 (t!374994 s!2326)))))

(declare-fun e!3346782 () Bool)

(assert (=> b!5397370 (=> res!2294136 e!3346782)))

(assert (=> b!5397370 (= (matchZipper!1401 ((_ map or) lt!2199663 lt!2199659) (t!374994 s!2326)) e!3346782)))

(declare-fun b!5397371 () Bool)

(declare-fun tp_is_empty!39567 () Bool)

(assert (=> b!5397371 (= e!3346780 tp_is_empty!39567)))

(declare-fun b!5397372 () Bool)

(declare-fun tp!1493839 () Bool)

(declare-fun tp!1493840 () Bool)

(assert (=> b!5397372 (= e!3346780 (and tp!1493839 tp!1493840))))

(declare-fun b!5397373 () Bool)

(declare-fun res!2294143 () Bool)

(assert (=> b!5397373 (=> (not res!2294143) (not e!3346790))))

(declare-fun toList!8941 ((InoxSet Context!9082)) List!61772)

(assert (=> b!5397373 (= res!2294143 (= (toList!8941 z!1189) zl!343))))

(declare-fun b!5397374 () Bool)

(declare-fun e!3346779 () Bool)

(declare-fun tp!1493836 () Bool)

(assert (=> b!5397374 (= e!3346779 tp!1493836)))

(declare-fun b!5397375 () Bool)

(declare-fun e!3346796 () Bool)

(assert (=> b!5397375 (= e!3346790 e!3346796)))

(declare-fun res!2294115 () Bool)

(assert (=> b!5397375 (=> (not res!2294115) (not e!3346796))))

(assert (=> b!5397375 (= res!2294115 (= r!7292 lt!2199692))))

(assert (=> b!5397375 (= lt!2199692 (unfocusZipper!899 zl!343))))

(declare-fun b!5397376 () Bool)

(declare-fun res!2294121 () Bool)

(assert (=> b!5397376 (=> res!2294121 e!3346777)))

(declare-fun lt!2199652 () Bool)

(assert (=> b!5397376 (= res!2294121 (or (not lt!2199652) (not lt!2199653)))))

(declare-fun b!5397377 () Bool)

(declare-fun e!3346785 () Bool)

(declare-fun tp!1493838 () Bool)

(assert (=> b!5397377 (= e!3346785 tp!1493838)))

(declare-fun b!5397378 () Bool)

(declare-fun e!3346776 () Bool)

(declare-fun e!3346794 () Bool)

(assert (=> b!5397378 (= e!3346776 e!3346794)))

(declare-fun res!2294130 () Bool)

(assert (=> b!5397378 (=> res!2294130 e!3346794)))

(declare-fun lt!2199650 () List!61772)

(assert (=> b!5397378 (= res!2294130 (not (= (unfocusZipper!899 lt!2199650) lt!2199689)))))

(assert (=> b!5397378 (= lt!2199650 (Cons!61648 lt!2199683 Nil!61648))))

(declare-fun b!5397379 () Bool)

(assert (=> b!5397379 (= e!3346787 (nullable!5326 (regOne!30826 (regOne!30826 r!7292))))))

(declare-fun b!5397380 () Bool)

(declare-fun e!3346791 () Bool)

(assert (=> b!5397380 (= e!3346791 (not (matchZipper!1401 lt!2199659 (t!374994 s!2326))))))

(declare-fun b!5397381 () Bool)

(declare-fun res!2294129 () Bool)

(declare-fun e!3346789 () Bool)

(assert (=> b!5397381 (=> res!2294129 e!3346789)))

(assert (=> b!5397381 (= res!2294129 (not (matchZipper!1401 z!1189 s!2326)))))

(declare-fun setElem!35105 () Context!9082)

(declare-fun setNonEmpty!35105 () Bool)

(declare-fun tp!1493841 () Bool)

(declare-fun inv!81139 (Context!9082) Bool)

(assert (=> setNonEmpty!35105 (= setRes!35105 (and tp!1493841 (inv!81139 setElem!35105) e!3346785))))

(declare-fun setRest!35105 () (InoxSet Context!9082))

(assert (=> setNonEmpty!35105 (= z!1189 ((_ map or) (store ((as const (Array Context!9082 Bool)) false) setElem!35105 true) setRest!35105))))

(declare-fun b!5397382 () Bool)

(assert (=> b!5397382 (= e!3346795 e!3346792)))

(declare-fun res!2294123 () Bool)

(assert (=> b!5397382 (=> res!2294123 e!3346792)))

(assert (=> b!5397382 (= res!2294123 (not (= r!7292 lt!2199689)))))

(assert (=> b!5397382 (= lt!2199689 (Concat!24002 lt!2199679 (regTwo!30826 r!7292)))))

(declare-fun b!5397383 () Bool)

(declare-fun res!2294135 () Bool)

(assert (=> b!5397383 (=> res!2294135 e!3346786)))

(assert (=> b!5397383 (= res!2294135 (not (matchZipper!1401 lt!2199671 (_1!35659 lt!2199656))))))

(declare-fun b!5397384 () Bool)

(assert (=> b!5397384 (= e!3346784 e!3346786)))

(declare-fun res!2294142 () Bool)

(assert (=> b!5397384 (=> res!2294142 e!3346786)))

(declare-fun lt!2199681 () List!61771)

(assert (=> b!5397384 (= res!2294142 (not (= s!2326 lt!2199681)))))

(declare-fun ++!13488 (List!61771 List!61771) List!61771)

(assert (=> b!5397384 (= lt!2199681 (++!13488 (_1!35659 lt!2199656) (_2!35659 lt!2199656)))))

(declare-fun lt!2199680 () Option!15268)

(declare-fun get!21238 (Option!15268) tuple2!64712)

(assert (=> b!5397384 (= lt!2199656 (get!21238 lt!2199680))))

(assert (=> b!5397384 (isDefined!11971 lt!2199680)))

(declare-fun findConcatSeparationZippers!14 ((InoxSet Context!9082) (InoxSet Context!9082) List!61771 List!61771 List!61771) Option!15268)

(assert (=> b!5397384 (= lt!2199680 (findConcatSeparationZippers!14 lt!2199671 lt!2199657 Nil!61647 s!2326 s!2326))))

(declare-fun lt!2199672 () Unit!154150)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!14 ((InoxSet Context!9082) Context!9082 List!61771) Unit!154150)

(assert (=> b!5397384 (= lt!2199672 (lemmaConcatZipperMatchesStringThenFindConcatDefined!14 lt!2199671 lt!2199683 s!2326))))

(declare-fun b!5397385 () Bool)

(declare-fun res!2294139 () Bool)

(assert (=> b!5397385 (=> res!2294139 e!3346800)))

(declare-fun isEmpty!33641 (List!61772) Bool)

(assert (=> b!5397385 (= res!2294139 (not (isEmpty!33641 (t!374995 zl!343))))))

(declare-fun b!5397386 () Bool)

(declare-fun tp!1493834 () Bool)

(assert (=> b!5397386 (= e!3346780 tp!1493834)))

(declare-fun b!5397387 () Bool)

(declare-fun tp!1493837 () Bool)

(assert (=> b!5397387 (= e!3346799 (and (inv!81139 (h!68096 zl!343)) e!3346779 tp!1493837))))

(declare-fun b!5397388 () Bool)

(declare-fun res!2294112 () Bool)

(assert (=> b!5397388 (=> res!2294112 e!3346783)))

(declare-fun isEmpty!33642 (List!61770) Bool)

(assert (=> b!5397388 (= res!2294112 (isEmpty!33642 (t!374993 (exprs!5041 (h!68096 zl!343)))))))

(declare-fun b!5397389 () Bool)

(assert (=> b!5397389 (= e!3346796 (not e!3346800))))

(declare-fun res!2294138 () Bool)

(assert (=> b!5397389 (=> res!2294138 e!3346800)))

(assert (=> b!5397389 (= res!2294138 (not ((_ is Cons!61648) zl!343)))))

(declare-fun matchRSpec!2260 (Regex!15157 List!61771) Bool)

(assert (=> b!5397389 (= lt!2199645 (matchRSpec!2260 r!7292 s!2326))))

(declare-fun matchR!7342 (Regex!15157 List!61771) Bool)

(assert (=> b!5397389 (= lt!2199645 (matchR!7342 r!7292 s!2326))))

(declare-fun lt!2199690 () Unit!154150)

(declare-fun mainMatchTheorem!2260 (Regex!15157 List!61771) Unit!154150)

(assert (=> b!5397389 (= lt!2199690 (mainMatchTheorem!2260 r!7292 s!2326))))

(declare-fun b!5397390 () Bool)

(assert (=> b!5397390 (= e!3346798 e!3346793)))

(declare-fun res!2294118 () Bool)

(assert (=> b!5397390 (=> res!2294118 e!3346793)))

(assert (=> b!5397390 (= res!2294118 (not (= lt!2199660 lt!2199687)))))

(assert (=> b!5397390 (= (flatMap!884 lt!2199661 lambda!280799) (derivationStepZipperUp!529 lt!2199662 (h!68095 s!2326)))))

(declare-fun lt!2199664 () Unit!154150)

(assert (=> b!5397390 (= lt!2199664 (lemmaFlatMapOnSingletonSet!416 lt!2199661 lt!2199662 lambda!280799))))

(declare-fun lt!2199685 () (InoxSet Context!9082))

(assert (=> b!5397390 (= lt!2199685 (derivationStepZipperUp!529 lt!2199662 (h!68095 s!2326)))))

(declare-fun derivationStepZipper!1396 ((InoxSet Context!9082) C!30584) (InoxSet Context!9082))

(assert (=> b!5397390 (= lt!2199660 (derivationStepZipper!1396 lt!2199661 (h!68095 s!2326)))))

(assert (=> b!5397390 (= lt!2199661 (store ((as const (Array Context!9082 Bool)) false) lt!2199662 true))))

(assert (=> b!5397390 (= lt!2199662 (Context!9083 (Cons!61646 (reg!15486 (regOne!30826 r!7292)) lt!2199691)))))

(declare-fun setIsEmpty!35105 () Bool)

(assert (=> setIsEmpty!35105 setRes!35105))

(declare-fun b!5397391 () Bool)

(assert (=> b!5397391 (= e!3346794 e!3346789)))

(declare-fun res!2294132 () Bool)

(assert (=> b!5397391 (=> res!2294132 e!3346789)))

(assert (=> b!5397391 (= res!2294132 lt!2199645)))

(assert (=> b!5397391 (= (matchR!7342 lt!2199675 s!2326) (matchRSpec!2260 lt!2199675 s!2326))))

(declare-fun lt!2199673 () Unit!154150)

(assert (=> b!5397391 (= lt!2199673 (mainMatchTheorem!2260 lt!2199675 s!2326))))

(declare-fun b!5397392 () Bool)

(declare-fun res!2294117 () Bool)

(assert (=> b!5397392 (=> res!2294117 e!3346800)))

(declare-fun generalisedUnion!1086 (List!61770) Regex!15157)

(declare-fun unfocusZipperList!599 (List!61772) List!61770)

(assert (=> b!5397392 (= res!2294117 (not (= r!7292 (generalisedUnion!1086 (unfocusZipperList!599 zl!343)))))))

(declare-fun b!5397393 () Bool)

(declare-fun res!2294120 () Bool)

(assert (=> b!5397393 (=> res!2294120 e!3346800)))

(declare-fun generalisedConcat!826 (List!61770) Regex!15157)

(assert (=> b!5397393 (= res!2294120 (not (= r!7292 (generalisedConcat!826 (exprs!5041 (h!68096 zl!343))))))))

(declare-fun b!5397394 () Bool)

(declare-fun res!2294134 () Bool)

(assert (=> b!5397394 (=> res!2294134 e!3346800)))

(assert (=> b!5397394 (= res!2294134 (or ((_ is EmptyExpr!15157) r!7292) ((_ is EmptyLang!15157) r!7292) ((_ is ElementMatch!15157) r!7292) ((_ is Union!15157) r!7292) (not ((_ is Concat!24002) r!7292))))))

(declare-fun b!5397395 () Bool)

(declare-fun res!2294110 () Bool)

(assert (=> b!5397395 (=> res!2294110 e!3346789)))

(assert (=> b!5397395 (= res!2294110 (not lt!2199667))))

(declare-fun b!5397396 () Bool)

(declare-fun tp!1493833 () Bool)

(declare-fun tp!1493835 () Bool)

(assert (=> b!5397396 (= e!3346780 (and tp!1493833 tp!1493835))))

(declare-fun b!5397397 () Bool)

(assert (=> b!5397397 (= e!3346782 (matchZipper!1401 lt!2199659 (t!374994 s!2326)))))

(declare-fun b!5397398 () Bool)

(declare-fun tp!1493832 () Bool)

(assert (=> b!5397398 (= e!3346781 (and tp_is_empty!39567 tp!1493832))))

(declare-fun b!5397399 () Bool)

(assert (=> b!5397399 (= e!3346778 e!3346776)))

(declare-fun res!2294131 () Bool)

(assert (=> b!5397399 (=> res!2294131 e!3346776)))

(declare-fun lt!2199670 () List!61772)

(assert (=> b!5397399 (= res!2294131 (not (= (unfocusZipper!899 lt!2199670) (reg!15486 (regOne!30826 r!7292)))))))

(assert (=> b!5397399 (= lt!2199670 (Cons!61648 lt!2199688 Nil!61648))))

(assert (=> b!5397399 (= (flatMap!884 lt!2199657 lambda!280799) (derivationStepZipperUp!529 lt!2199683 (h!68095 s!2326)))))

(declare-fun lt!2199666 () Unit!154150)

(assert (=> b!5397399 (= lt!2199666 (lemmaFlatMapOnSingletonSet!416 lt!2199657 lt!2199683 lambda!280799))))

(assert (=> b!5397399 (= (flatMap!884 lt!2199671 lambda!280799) (derivationStepZipperUp!529 lt!2199688 (h!68095 s!2326)))))

(declare-fun lt!2199649 () Unit!154150)

(assert (=> b!5397399 (= lt!2199649 (lemmaFlatMapOnSingletonSet!416 lt!2199671 lt!2199688 lambda!280799))))

(declare-fun lt!2199668 () (InoxSet Context!9082))

(assert (=> b!5397399 (= lt!2199668 (derivationStepZipperUp!529 lt!2199683 (h!68095 s!2326)))))

(declare-fun lt!2199674 () (InoxSet Context!9082))

(assert (=> b!5397399 (= lt!2199674 (derivationStepZipperUp!529 lt!2199688 (h!68095 s!2326)))))

(assert (=> b!5397399 (= lt!2199657 (store ((as const (Array Context!9082 Bool)) false) lt!2199683 true))))

(assert (=> b!5397399 (= lt!2199671 (store ((as const (Array Context!9082 Bool)) false) lt!2199688 true))))

(assert (=> b!5397399 (= lt!2199688 (Context!9083 lt!2199677))))

(assert (=> b!5397399 (= lt!2199677 (Cons!61646 (reg!15486 (regOne!30826 r!7292)) Nil!61646))))

(declare-fun b!5397400 () Bool)

(assert (=> b!5397400 (= e!3346789 e!3346777)))

(declare-fun res!2294126 () Bool)

(assert (=> b!5397400 (=> res!2294126 e!3346777)))

(assert (=> b!5397400 (= res!2294126 e!3346791)))

(declare-fun res!2294122 () Bool)

(assert (=> b!5397400 (=> (not res!2294122) (not e!3346791))))

(assert (=> b!5397400 (= res!2294122 (not lt!2199652))))

(assert (=> b!5397400 (= lt!2199652 (matchZipper!1401 lt!2199663 (t!374994 s!2326)))))

(declare-fun b!5397401 () Bool)

(assert (=> b!5397401 (= e!3346786 (validRegex!6893 lt!2199689))))

(assert (=> b!5397401 (matchR!7342 lt!2199689 (_2!35659 lt!2199656))))

(declare-fun lt!2199665 () Unit!154150)

(declare-fun theoremZipperRegexEquiv!471 ((InoxSet Context!9082) List!61772 Regex!15157 List!61771) Unit!154150)

(assert (=> b!5397401 (= lt!2199665 (theoremZipperRegexEquiv!471 lt!2199657 lt!2199650 lt!2199689 (_2!35659 lt!2199656)))))

(assert (=> b!5397401 (matchR!7342 (reg!15486 (regOne!30826 r!7292)) (_1!35659 lt!2199656))))

(declare-fun lt!2199654 () Unit!154150)

(assert (=> b!5397401 (= lt!2199654 (theoremZipperRegexEquiv!471 lt!2199671 lt!2199670 (reg!15486 (regOne!30826 r!7292)) (_1!35659 lt!2199656)))))

(assert (=> b!5397401 (matchZipper!1401 (store ((as const (Array Context!9082 Bool)) false) (Context!9083 (++!13487 lt!2199677 lt!2199691)) true) lt!2199681)))

(declare-fun lt!2199648 () Unit!154150)

(assert (=> b!5397401 (= lt!2199648 (lemmaConcatPreservesForall!182 lt!2199677 lt!2199691 lambda!280801))))

(declare-fun lt!2199684 () Unit!154150)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!30 (Context!9082 Context!9082 List!61771 List!61771) Unit!154150)

(assert (=> b!5397401 (= lt!2199684 (lemmaConcatenateContextMatchesConcatOfStrings!30 lt!2199688 lt!2199683 (_1!35659 lt!2199656) (_2!35659 lt!2199656)))))

(assert (= (and start!566998 res!2294137) b!5397373))

(assert (= (and b!5397373 res!2294143) b!5397375))

(assert (= (and b!5397375 res!2294115) b!5397389))

(assert (= (and b!5397389 (not res!2294138)) b!5397385))

(assert (= (and b!5397385 (not res!2294139)) b!5397393))

(assert (= (and b!5397393 (not res!2294120)) b!5397365))

(assert (= (and b!5397365 (not res!2294125)) b!5397392))

(assert (= (and b!5397392 (not res!2294117)) b!5397394))

(assert (= (and b!5397394 (not res!2294134)) b!5397366))

(assert (= (and b!5397366 (not res!2294113)) b!5397388))

(assert (= (and b!5397388 (not res!2294112)) b!5397364))

(assert (= (and b!5397364 c!940650) b!5397370))

(assert (= (and b!5397364 (not c!940650)) b!5397368))

(assert (= (and b!5397370 (not res!2294136)) b!5397397))

(assert (= (and b!5397364 (not res!2294128)) b!5397369))

(assert (= (and b!5397369 res!2294111) b!5397379))

(assert (= (and b!5397369 (not res!2294140)) b!5397367))

(assert (= (and b!5397367 (not res!2294133)) b!5397358))

(assert (= (and b!5397358 (not res!2294116)) b!5397390))

(assert (= (and b!5397390 (not res!2294118)) b!5397361))

(assert (= (and b!5397361 (not res!2294141)) b!5397363))

(assert (= (and b!5397363 (not res!2294127)) b!5397382))

(assert (= (and b!5397382 (not res!2294123)) b!5397359))

(assert (= (and b!5397359 (not res!2294124)) b!5397399))

(assert (= (and b!5397399 (not res!2294131)) b!5397378))

(assert (= (and b!5397378 (not res!2294130)) b!5397391))

(assert (= (and b!5397391 (not res!2294132)) b!5397381))

(assert (= (and b!5397381 (not res!2294129)) b!5397395))

(assert (= (and b!5397395 (not res!2294110)) b!5397400))

(assert (= (and b!5397400 res!2294122) b!5397380))

(assert (= (and b!5397400 (not res!2294126)) b!5397376))

(assert (= (and b!5397376 (not res!2294121)) b!5397362))

(assert (= (and b!5397362 (not res!2294114)) b!5397384))

(assert (= (and b!5397384 (not res!2294142)) b!5397383))

(assert (= (and b!5397383 (not res!2294135)) b!5397360))

(assert (= (and b!5397360 (not res!2294119)) b!5397401))

(assert (= (and start!566998 ((_ is ElementMatch!15157) r!7292)) b!5397371))

(assert (= (and start!566998 ((_ is Concat!24002) r!7292)) b!5397372))

(assert (= (and start!566998 ((_ is Star!15157) r!7292)) b!5397386))

(assert (= (and start!566998 ((_ is Union!15157) r!7292)) b!5397396))

(assert (= (and start!566998 condSetEmpty!35105) setIsEmpty!35105))

(assert (= (and start!566998 (not condSetEmpty!35105)) setNonEmpty!35105))

(assert (= setNonEmpty!35105 b!5397377))

(assert (= b!5397387 b!5397374))

(assert (= (and start!566998 ((_ is Cons!61648) zl!343)) b!5397387))

(assert (= (and start!566998 ((_ is Cons!61647) s!2326)) b!5397398))

(declare-fun m!6422140 () Bool)

(assert (=> b!5397400 m!6422140))

(declare-fun m!6422142 () Bool)

(assert (=> b!5397389 m!6422142))

(declare-fun m!6422144 () Bool)

(assert (=> b!5397389 m!6422144))

(declare-fun m!6422146 () Bool)

(assert (=> b!5397389 m!6422146))

(declare-fun m!6422148 () Bool)

(assert (=> b!5397366 m!6422148))

(declare-fun m!6422150 () Bool)

(assert (=> b!5397366 m!6422150))

(declare-fun m!6422152 () Bool)

(assert (=> b!5397366 m!6422152))

(declare-fun m!6422154 () Bool)

(assert (=> b!5397366 m!6422154))

(assert (=> b!5397366 m!6422148))

(declare-fun m!6422156 () Bool)

(assert (=> b!5397366 m!6422156))

(assert (=> b!5397366 m!6422152))

(declare-fun m!6422158 () Bool)

(assert (=> b!5397366 m!6422158))

(declare-fun m!6422160 () Bool)

(assert (=> b!5397383 m!6422160))

(declare-fun m!6422162 () Bool)

(assert (=> b!5397379 m!6422162))

(declare-fun m!6422164 () Bool)

(assert (=> b!5397397 m!6422164))

(declare-fun m!6422166 () Bool)

(assert (=> b!5397373 m!6422166))

(declare-fun m!6422168 () Bool)

(assert (=> b!5397362 m!6422168))

(declare-fun m!6422170 () Bool)

(assert (=> b!5397362 m!6422170))

(declare-fun m!6422172 () Bool)

(assert (=> b!5397362 m!6422172))

(declare-fun m!6422174 () Bool)

(assert (=> b!5397362 m!6422174))

(declare-fun m!6422176 () Bool)

(assert (=> b!5397362 m!6422176))

(declare-fun m!6422178 () Bool)

(assert (=> b!5397362 m!6422178))

(declare-fun m!6422180 () Bool)

(assert (=> b!5397381 m!6422180))

(assert (=> b!5397401 m!6422168))

(assert (=> b!5397401 m!6422168))

(declare-fun m!6422182 () Bool)

(assert (=> b!5397401 m!6422182))

(declare-fun m!6422184 () Bool)

(assert (=> b!5397401 m!6422184))

(declare-fun m!6422186 () Bool)

(assert (=> b!5397401 m!6422186))

(declare-fun m!6422188 () Bool)

(assert (=> b!5397401 m!6422188))

(assert (=> b!5397401 m!6422170))

(declare-fun m!6422190 () Bool)

(assert (=> b!5397401 m!6422190))

(assert (=> b!5397401 m!6422178))

(declare-fun m!6422192 () Bool)

(assert (=> b!5397401 m!6422192))

(declare-fun m!6422194 () Bool)

(assert (=> b!5397401 m!6422194))

(declare-fun m!6422196 () Bool)

(assert (=> b!5397391 m!6422196))

(declare-fun m!6422198 () Bool)

(assert (=> b!5397391 m!6422198))

(declare-fun m!6422200 () Bool)

(assert (=> b!5397391 m!6422200))

(declare-fun m!6422202 () Bool)

(assert (=> b!5397364 m!6422202))

(declare-fun m!6422204 () Bool)

(assert (=> b!5397364 m!6422204))

(declare-fun m!6422206 () Bool)

(assert (=> b!5397364 m!6422206))

(declare-fun m!6422208 () Bool)

(assert (=> b!5397364 m!6422208))

(declare-fun m!6422210 () Bool)

(assert (=> b!5397364 m!6422210))

(declare-fun m!6422212 () Bool)

(assert (=> b!5397364 m!6422212))

(declare-fun m!6422214 () Bool)

(assert (=> b!5397364 m!6422214))

(declare-fun m!6422216 () Bool)

(assert (=> b!5397358 m!6422216))

(declare-fun m!6422218 () Bool)

(assert (=> b!5397361 m!6422218))

(declare-fun m!6422220 () Bool)

(assert (=> b!5397361 m!6422220))

(declare-fun m!6422222 () Bool)

(assert (=> b!5397384 m!6422222))

(declare-fun m!6422224 () Bool)

(assert (=> b!5397384 m!6422224))

(declare-fun m!6422226 () Bool)

(assert (=> b!5397384 m!6422226))

(declare-fun m!6422228 () Bool)

(assert (=> b!5397384 m!6422228))

(declare-fun m!6422230 () Bool)

(assert (=> b!5397384 m!6422230))

(declare-fun m!6422232 () Bool)

(assert (=> b!5397360 m!6422232))

(declare-fun m!6422234 () Bool)

(assert (=> b!5397370 m!6422234))

(assert (=> b!5397370 m!6422140))

(declare-fun m!6422236 () Bool)

(assert (=> b!5397370 m!6422236))

(declare-fun m!6422238 () Bool)

(assert (=> b!5397399 m!6422238))

(declare-fun m!6422240 () Bool)

(assert (=> b!5397399 m!6422240))

(declare-fun m!6422242 () Bool)

(assert (=> b!5397399 m!6422242))

(declare-fun m!6422244 () Bool)

(assert (=> b!5397399 m!6422244))

(declare-fun m!6422246 () Bool)

(assert (=> b!5397399 m!6422246))

(declare-fun m!6422248 () Bool)

(assert (=> b!5397399 m!6422248))

(declare-fun m!6422250 () Bool)

(assert (=> b!5397399 m!6422250))

(declare-fun m!6422252 () Bool)

(assert (=> b!5397399 m!6422252))

(declare-fun m!6422254 () Bool)

(assert (=> b!5397399 m!6422254))

(declare-fun m!6422256 () Bool)

(assert (=> b!5397378 m!6422256))

(declare-fun m!6422258 () Bool)

(assert (=> b!5397359 m!6422258))

(assert (=> b!5397380 m!6422164))

(declare-fun m!6422260 () Bool)

(assert (=> b!5397385 m!6422260))

(declare-fun m!6422262 () Bool)

(assert (=> b!5397393 m!6422262))

(declare-fun m!6422264 () Bool)

(assert (=> setNonEmpty!35105 m!6422264))

(declare-fun m!6422266 () Bool)

(assert (=> b!5397375 m!6422266))

(declare-fun m!6422268 () Bool)

(assert (=> b!5397390 m!6422268))

(declare-fun m!6422270 () Bool)

(assert (=> b!5397390 m!6422270))

(declare-fun m!6422272 () Bool)

(assert (=> b!5397390 m!6422272))

(declare-fun m!6422274 () Bool)

(assert (=> b!5397390 m!6422274))

(declare-fun m!6422276 () Bool)

(assert (=> b!5397390 m!6422276))

(declare-fun m!6422278 () Bool)

(assert (=> b!5397392 m!6422278))

(assert (=> b!5397392 m!6422278))

(declare-fun m!6422280 () Bool)

(assert (=> b!5397392 m!6422280))

(declare-fun m!6422282 () Bool)

(assert (=> b!5397387 m!6422282))

(declare-fun m!6422284 () Bool)

(assert (=> start!566998 m!6422284))

(declare-fun m!6422286 () Bool)

(assert (=> b!5397388 m!6422286))

(check-sat (not b!5397362) (not b!5397373) (not b!5397389) (not b!5397397) (not b!5397396) (not b!5397375) (not setNonEmpty!35105) (not b!5397372) (not b!5397358) (not b!5397391) (not b!5397377) (not b!5397399) (not b!5397387) (not b!5397400) (not b!5397384) (not b!5397386) (not b!5397379) (not b!5397359) (not b!5397380) (not b!5397401) (not b!5397393) (not b!5397366) (not b!5397390) (not b!5397361) (not b!5397388) tp_is_empty!39567 (not b!5397374) (not b!5397383) (not b!5397381) (not b!5397360) (not start!566998) (not b!5397378) (not b!5397364) (not b!5397385) (not b!5397398) (not b!5397392) (not b!5397370))
(check-sat)
