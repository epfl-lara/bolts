; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!573394 () Bool)

(assert start!573394)

(declare-fun b!5481930 () Bool)

(assert (=> b!5481930 true))

(assert (=> b!5481930 true))

(declare-fun lambda!292653 () Int)

(declare-fun lambda!292652 () Int)

(assert (=> b!5481930 (not (= lambda!292653 lambda!292652))))

(assert (=> b!5481930 true))

(assert (=> b!5481930 true))

(declare-fun lambda!292654 () Int)

(assert (=> b!5481930 (not (= lambda!292654 lambda!292652))))

(assert (=> b!5481930 (not (= lambda!292654 lambda!292653))))

(assert (=> b!5481930 true))

(assert (=> b!5481930 true))

(declare-fun b!5481950 () Bool)

(assert (=> b!5481950 true))

(declare-fun b!5481917 () Bool)

(assert (=> b!5481917 true))

(declare-fun e!3392645 () Bool)

(declare-fun e!3392653 () Bool)

(assert (=> b!5481917 (= e!3392645 e!3392653)))

(declare-fun res!2337077 () Bool)

(assert (=> b!5481917 (=> res!2337077 e!3392653)))

(declare-datatypes ((C!31008 0))(
  ( (C!31009 (val!25206 Int)) )
))
(declare-datatypes ((Regex!15369 0))(
  ( (ElementMatch!15369 (c!957885 C!31008)) (Concat!24214 (regOne!31250 Regex!15369) (regTwo!31250 Regex!15369)) (EmptyExpr!15369) (Star!15369 (reg!15698 Regex!15369)) (EmptyLang!15369) (Union!15369 (regOne!31251 Regex!15369) (regTwo!31251 Regex!15369)) )
))
(declare-datatypes ((List!62406 0))(
  ( (Nil!62282) (Cons!62282 (h!68730 Regex!15369) (t!375637 List!62406)) )
))
(declare-datatypes ((Context!9506 0))(
  ( (Context!9507 (exprs!5253 List!62406)) )
))
(declare-fun lt!2238786 () Context!9506)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2238780 () (InoxSet Context!9506))

(declare-fun lt!2238783 () (InoxSet Context!9506))

(declare-fun appendTo!88 ((InoxSet Context!9506) Context!9506) (InoxSet Context!9506))

(assert (=> b!5481917 (= res!2337077 (not (= (appendTo!88 lt!2238780 lt!2238786) lt!2238783)))))

(declare-fun r!7292 () Regex!15369)

(declare-fun lambda!292656 () Int)

(declare-fun lt!2238776 () List!62406)

(declare-fun map!14310 ((InoxSet Context!9506) Int) (InoxSet Context!9506))

(declare-fun ++!13711 (List!62406 List!62406) List!62406)

(assert (=> b!5481917 (= (map!14310 lt!2238780 lambda!292656) (store ((as const (Array Context!9506 Bool)) false) (Context!9507 (++!13711 (Cons!62282 (reg!15698 r!7292) Nil!62282) lt!2238776)) true))))

(declare-fun lambda!292657 () Int)

(declare-datatypes ((Unit!155188 0))(
  ( (Unit!155189) )
))
(declare-fun lt!2238795 () Unit!155188)

(declare-fun lemmaConcatPreservesForall!270 (List!62406 List!62406 Int) Unit!155188)

(assert (=> b!5481917 (= lt!2238795 (lemmaConcatPreservesForall!270 (Cons!62282 (reg!15698 r!7292) Nil!62282) lt!2238776 lambda!292657))))

(declare-fun lt!2238788 () Context!9506)

(declare-fun lt!2238770 () Unit!155188)

(declare-fun lemmaMapOnSingletonSet!100 ((InoxSet Context!9506) Context!9506 Int) Unit!155188)

(assert (=> b!5481917 (= lt!2238770 (lemmaMapOnSingletonSet!100 lt!2238780 lt!2238788 lambda!292656))))

(declare-fun b!5481918 () Bool)

(declare-fun e!3392651 () Bool)

(assert (=> b!5481918 (= e!3392651 e!3392645)))

(declare-fun res!2337087 () Bool)

(assert (=> b!5481918 (=> res!2337087 e!3392645)))

(declare-fun lt!2238801 () Bool)

(assert (=> b!5481918 (= res!2337087 lt!2238801)))

(declare-fun lt!2238784 () Regex!15369)

(declare-datatypes ((List!62407 0))(
  ( (Nil!62283) (Cons!62283 (h!68731 C!31008) (t!375638 List!62407)) )
))
(declare-fun s!2326 () List!62407)

(declare-fun matchRSpec!2472 (Regex!15369 List!62407) Bool)

(assert (=> b!5481918 (= lt!2238801 (matchRSpec!2472 lt!2238784 s!2326))))

(declare-fun matchR!7554 (Regex!15369 List!62407) Bool)

(assert (=> b!5481918 (= lt!2238801 (matchR!7554 lt!2238784 s!2326))))

(declare-fun lt!2238793 () Unit!155188)

(declare-fun mainMatchTheorem!2472 (Regex!15369 List!62407) Unit!155188)

(assert (=> b!5481918 (= lt!2238793 (mainMatchTheorem!2472 lt!2238784 s!2326))))

(declare-fun setIsEmpty!36057 () Bool)

(declare-fun setRes!36057 () Bool)

(assert (=> setIsEmpty!36057 setRes!36057))

(declare-fun b!5481919 () Bool)

(declare-fun e!3392654 () Bool)

(declare-fun tp!1506444 () Bool)

(declare-fun tp!1506443 () Bool)

(assert (=> b!5481919 (= e!3392654 (and tp!1506444 tp!1506443))))

(declare-fun b!5481920 () Bool)

(declare-fun e!3392652 () Bool)

(declare-fun e!3392642 () Bool)

(assert (=> b!5481920 (= e!3392652 e!3392642)))

(declare-fun res!2337071 () Bool)

(assert (=> b!5481920 (=> (not res!2337071) (not e!3392642))))

(declare-fun lt!2238797 () Regex!15369)

(assert (=> b!5481920 (= res!2337071 (= r!7292 lt!2238797))))

(declare-datatypes ((List!62408 0))(
  ( (Nil!62284) (Cons!62284 (h!68732 Context!9506) (t!375639 List!62408)) )
))
(declare-fun zl!343 () List!62408)

(declare-fun unfocusZipper!1111 (List!62408) Regex!15369)

(assert (=> b!5481920 (= lt!2238797 (unfocusZipper!1111 zl!343))))

(declare-fun b!5481921 () Bool)

(declare-fun res!2337082 () Bool)

(declare-fun e!3392644 () Bool)

(assert (=> b!5481921 (=> res!2337082 e!3392644)))

(get-info :version)

(assert (=> b!5481921 (= res!2337082 (not ((_ is Cons!62282) (exprs!5253 (h!68732 zl!343)))))))

(declare-fun b!5481922 () Bool)

(declare-fun res!2337084 () Bool)

(assert (=> b!5481922 (=> res!2337084 e!3392644)))

(assert (=> b!5481922 (= res!2337084 (or ((_ is EmptyExpr!15369) r!7292) ((_ is EmptyLang!15369) r!7292) ((_ is ElementMatch!15369) r!7292) ((_ is Union!15369) r!7292) ((_ is Concat!24214) r!7292)))))

(declare-fun res!2337089 () Bool)

(assert (=> start!573394 (=> (not res!2337089) (not e!3392652))))

(declare-fun validRegex!7105 (Regex!15369) Bool)

(assert (=> start!573394 (= res!2337089 (validRegex!7105 r!7292))))

(assert (=> start!573394 e!3392652))

(assert (=> start!573394 e!3392654))

(declare-fun condSetEmpty!36057 () Bool)

(declare-fun z!1189 () (InoxSet Context!9506))

(assert (=> start!573394 (= condSetEmpty!36057 (= z!1189 ((as const (Array Context!9506 Bool)) false)))))

(assert (=> start!573394 setRes!36057))

(declare-fun e!3392647 () Bool)

(assert (=> start!573394 e!3392647))

(declare-fun e!3392658 () Bool)

(assert (=> start!573394 e!3392658))

(declare-fun b!5481923 () Bool)

(declare-fun res!2337078 () Bool)

(assert (=> b!5481923 (=> res!2337078 e!3392644)))

(declare-fun isEmpty!34234 (List!62408) Bool)

(assert (=> b!5481923 (= res!2337078 (not (isEmpty!34234 (t!375639 zl!343))))))

(declare-fun b!5481924 () Bool)

(declare-fun res!2337069 () Bool)

(declare-fun e!3392656 () Bool)

(assert (=> b!5481924 (=> res!2337069 e!3392656)))

(declare-datatypes ((tuple2!65132 0))(
  ( (tuple2!65133 (_1!35869 List!62407) (_2!35869 List!62407)) )
))
(declare-fun lt!2238782 () tuple2!65132)

(declare-fun matchZipper!1587 ((InoxSet Context!9506) List!62407) Bool)

(assert (=> b!5481924 (= res!2337069 (not (matchZipper!1587 lt!2238780 (_1!35869 lt!2238782))))))

(declare-fun b!5481925 () Bool)

(declare-fun res!2337076 () Bool)

(assert (=> b!5481925 (=> res!2337076 e!3392644)))

(declare-fun generalisedConcat!1038 (List!62406) Regex!15369)

(assert (=> b!5481925 (= res!2337076 (not (= r!7292 (generalisedConcat!1038 (exprs!5253 (h!68732 zl!343))))))))

(declare-fun b!5481926 () Bool)

(declare-fun e!3392646 () Bool)

(declare-fun lt!2238800 () Bool)

(assert (=> b!5481926 (= e!3392646 lt!2238800)))

(declare-fun b!5481927 () Bool)

(declare-fun res!2337070 () Bool)

(assert (=> b!5481927 (=> res!2337070 e!3392644)))

(declare-fun generalisedUnion!1298 (List!62406) Regex!15369)

(declare-fun unfocusZipperList!811 (List!62408) List!62406)

(assert (=> b!5481927 (= res!2337070 (not (= r!7292 (generalisedUnion!1298 (unfocusZipperList!811 zl!343)))))))

(declare-fun b!5481928 () Bool)

(declare-fun e!3392649 () Bool)

(assert (=> b!5481928 (= e!3392649 e!3392651)))

(declare-fun res!2337067 () Bool)

(assert (=> b!5481928 (=> res!2337067 e!3392651)))

(declare-fun lt!2238785 () (InoxSet Context!9506))

(declare-fun lt!2238787 () (InoxSet Context!9506))

(declare-fun derivationStepZipper!1564 ((InoxSet Context!9506) C!31008) (InoxSet Context!9506))

(assert (=> b!5481928 (= res!2337067 (not (= lt!2238785 (derivationStepZipper!1564 lt!2238787 (h!68731 s!2326)))))))

(declare-fun lambda!292655 () Int)

(declare-fun flatMap!1072 ((InoxSet Context!9506) Int) (InoxSet Context!9506))

(declare-fun derivationStepZipperUp!721 (Context!9506 C!31008) (InoxSet Context!9506))

(assert (=> b!5481928 (= (flatMap!1072 lt!2238787 lambda!292655) (derivationStepZipperUp!721 lt!2238786 (h!68731 s!2326)))))

(declare-fun lt!2238789 () Unit!155188)

(declare-fun lemmaFlatMapOnSingletonSet!604 ((InoxSet Context!9506) Context!9506 Int) Unit!155188)

(assert (=> b!5481928 (= lt!2238789 (lemmaFlatMapOnSingletonSet!604 lt!2238787 lt!2238786 lambda!292655))))

(assert (=> b!5481928 (= (flatMap!1072 lt!2238780 lambda!292655) (derivationStepZipperUp!721 lt!2238788 (h!68731 s!2326)))))

(declare-fun lt!2238781 () Unit!155188)

(assert (=> b!5481928 (= lt!2238781 (lemmaFlatMapOnSingletonSet!604 lt!2238780 lt!2238788 lambda!292655))))

(declare-fun lt!2238779 () (InoxSet Context!9506))

(assert (=> b!5481928 (= lt!2238779 (derivationStepZipperUp!721 lt!2238786 (h!68731 s!2326)))))

(declare-fun lt!2238772 () (InoxSet Context!9506))

(assert (=> b!5481928 (= lt!2238772 (derivationStepZipperUp!721 lt!2238788 (h!68731 s!2326)))))

(assert (=> b!5481928 (= lt!2238787 (store ((as const (Array Context!9506 Bool)) false) lt!2238786 true))))

(assert (=> b!5481928 (= lt!2238780 (store ((as const (Array Context!9506 Bool)) false) lt!2238788 true))))

(assert (=> b!5481928 (= lt!2238788 (Context!9507 (Cons!62282 (reg!15698 r!7292) Nil!62282)))))

(declare-fun b!5481929 () Bool)

(declare-fun res!2337085 () Bool)

(assert (=> b!5481929 (=> res!2337085 e!3392651)))

(assert (=> b!5481929 (= res!2337085 (not (= (unfocusZipper!1111 (Cons!62284 lt!2238786 Nil!62284)) r!7292)))))

(declare-fun e!3392648 () Bool)

(assert (=> b!5481930 (= e!3392644 e!3392648)))

(declare-fun res!2337080 () Bool)

(assert (=> b!5481930 (=> res!2337080 e!3392648)))

(declare-fun lt!2238799 () Bool)

(assert (=> b!5481930 (= res!2337080 (not (= lt!2238799 e!3392646)))))

(declare-fun res!2337079 () Bool)

(assert (=> b!5481930 (=> res!2337079 e!3392646)))

(declare-fun isEmpty!34235 (List!62407) Bool)

(assert (=> b!5481930 (= res!2337079 (isEmpty!34235 s!2326))))

(declare-fun Exists!2548 (Int) Bool)

(assert (=> b!5481930 (= (Exists!2548 lambda!292652) (Exists!2548 lambda!292654))))

(declare-fun lt!2238796 () Unit!155188)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1198 (Regex!15369 Regex!15369 List!62407) Unit!155188)

(assert (=> b!5481930 (= lt!2238796 (lemmaExistCutMatchRandMatchRSpecEquivalent!1198 (reg!15698 r!7292) r!7292 s!2326))))

(assert (=> b!5481930 (= (Exists!2548 lambda!292652) (Exists!2548 lambda!292653))))

(declare-fun lt!2238774 () Unit!155188)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!522 (Regex!15369 List!62407) Unit!155188)

(assert (=> b!5481930 (= lt!2238774 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!522 (reg!15698 r!7292) s!2326))))

(assert (=> b!5481930 (= lt!2238800 (Exists!2548 lambda!292652))))

(declare-datatypes ((Option!15478 0))(
  ( (None!15477) (Some!15477 (v!51506 tuple2!65132)) )
))
(declare-fun isDefined!12181 (Option!15478) Bool)

(declare-fun findConcatSeparation!1892 (Regex!15369 Regex!15369 List!62407 List!62407 List!62407) Option!15478)

(assert (=> b!5481930 (= lt!2238800 (isDefined!12181 (findConcatSeparation!1892 (reg!15698 r!7292) r!7292 Nil!62283 s!2326 s!2326)))))

(declare-fun lt!2238773 () Unit!155188)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1656 (Regex!15369 Regex!15369 List!62407) Unit!155188)

(assert (=> b!5481930 (= lt!2238773 (lemmaFindConcatSeparationEquivalentToExists!1656 (reg!15698 r!7292) r!7292 s!2326))))

(declare-fun b!5481931 () Bool)

(declare-fun res!2337073 () Bool)

(assert (=> b!5481931 (=> res!2337073 e!3392648)))

(assert (=> b!5481931 (= res!2337073 ((_ is Nil!62283) s!2326))))

(declare-fun b!5481932 () Bool)

(declare-fun res!2337065 () Bool)

(assert (=> b!5481932 (=> res!2337065 e!3392651)))

(assert (=> b!5481932 (= res!2337065 (not (= (unfocusZipper!1111 (Cons!62284 lt!2238788 Nil!62284)) (reg!15698 r!7292))))))

(declare-fun tp!1506445 () Bool)

(declare-fun setElem!36057 () Context!9506)

(declare-fun setNonEmpty!36057 () Bool)

(declare-fun e!3392650 () Bool)

(declare-fun inv!81669 (Context!9506) Bool)

(assert (=> setNonEmpty!36057 (= setRes!36057 (and tp!1506445 (inv!81669 setElem!36057) e!3392650))))

(declare-fun setRest!36057 () (InoxSet Context!9506))

(assert (=> setNonEmpty!36057 (= z!1189 ((_ map or) (store ((as const (Array Context!9506 Bool)) false) setElem!36057 true) setRest!36057))))

(declare-fun b!5481933 () Bool)

(declare-fun tp_is_empty!39991 () Bool)

(declare-fun tp!1506446 () Bool)

(assert (=> b!5481933 (= e!3392658 (and tp_is_empty!39991 tp!1506446))))

(declare-fun b!5481934 () Bool)

(assert (=> b!5481934 (= e!3392653 e!3392656)))

(declare-fun res!2337083 () Bool)

(assert (=> b!5481934 (=> res!2337083 e!3392656)))

(declare-fun ++!13712 (List!62407 List!62407) List!62407)

(assert (=> b!5481934 (= res!2337083 (not (= s!2326 (++!13712 (_1!35869 lt!2238782) (_2!35869 lt!2238782)))))))

(declare-fun lt!2238778 () Option!15478)

(declare-fun get!21478 (Option!15478) tuple2!65132)

(assert (=> b!5481934 (= lt!2238782 (get!21478 lt!2238778))))

(assert (=> b!5481934 (isDefined!12181 lt!2238778)))

(declare-fun findConcatSeparationZippers!96 ((InoxSet Context!9506) (InoxSet Context!9506) List!62407 List!62407 List!62407) Option!15478)

(assert (=> b!5481934 (= lt!2238778 (findConcatSeparationZippers!96 lt!2238780 lt!2238787 Nil!62283 s!2326 s!2326))))

(declare-fun lt!2238771 () Unit!155188)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!96 ((InoxSet Context!9506) Context!9506 List!62407) Unit!155188)

(assert (=> b!5481934 (= lt!2238771 (lemmaConcatZipperMatchesStringThenFindConcatDefined!96 lt!2238780 lt!2238786 s!2326))))

(declare-fun b!5481935 () Bool)

(declare-fun res!2337088 () Bool)

(assert (=> b!5481935 (=> res!2337088 e!3392645)))

(assert (=> b!5481935 (= res!2337088 (not (matchZipper!1587 z!1189 s!2326)))))

(declare-fun b!5481936 () Bool)

(declare-fun res!2337090 () Bool)

(declare-fun e!3392643 () Bool)

(assert (=> b!5481936 (=> res!2337090 e!3392643)))

(assert (=> b!5481936 (= res!2337090 (or (not (= lt!2238797 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!5481937 () Bool)

(declare-fun tp!1506450 () Bool)

(declare-fun tp!1506447 () Bool)

(assert (=> b!5481937 (= e!3392654 (and tp!1506450 tp!1506447))))

(declare-fun b!5481938 () Bool)

(declare-fun tp!1506451 () Bool)

(assert (=> b!5481938 (= e!3392654 tp!1506451)))

(declare-fun b!5481939 () Bool)

(declare-fun tp!1506442 () Bool)

(assert (=> b!5481939 (= e!3392650 tp!1506442)))

(declare-fun b!5481940 () Bool)

(declare-fun e!3392641 () Bool)

(assert (=> b!5481940 (= e!3392641 e!3392643)))

(declare-fun res!2337068 () Bool)

(assert (=> b!5481940 (=> res!2337068 e!3392643)))

(declare-fun derivationStepZipperDown!795 (Regex!15369 Context!9506 C!31008) (InoxSet Context!9506))

(assert (=> b!5481940 (= res!2337068 (not (= lt!2238785 (derivationStepZipperDown!795 (reg!15698 r!7292) lt!2238786 (h!68731 s!2326)))))))

(assert (=> b!5481940 (= lt!2238786 (Context!9507 lt!2238776))))

(declare-fun lt!2238769 () Context!9506)

(assert (=> b!5481940 (= (flatMap!1072 lt!2238783 lambda!292655) (derivationStepZipperUp!721 lt!2238769 (h!68731 s!2326)))))

(declare-fun lt!2238777 () Unit!155188)

(assert (=> b!5481940 (= lt!2238777 (lemmaFlatMapOnSingletonSet!604 lt!2238783 lt!2238769 lambda!292655))))

(declare-fun lt!2238775 () (InoxSet Context!9506))

(assert (=> b!5481940 (= lt!2238775 (derivationStepZipperUp!721 lt!2238769 (h!68731 s!2326)))))

(assert (=> b!5481940 (= lt!2238783 (store ((as const (Array Context!9506 Bool)) false) lt!2238769 true))))

(assert (=> b!5481940 (= lt!2238769 (Context!9507 (Cons!62282 (reg!15698 r!7292) lt!2238776)))))

(assert (=> b!5481940 (= lt!2238776 (Cons!62282 r!7292 Nil!62282))))

(declare-fun b!5481941 () Bool)

(declare-fun res!2337081 () Bool)

(assert (=> b!5481941 (=> (not res!2337081) (not e!3392652))))

(declare-fun toList!9153 ((InoxSet Context!9506)) List!62408)

(assert (=> b!5481941 (= res!2337081 (= (toList!9153 z!1189) zl!343))))

(declare-fun b!5481942 () Bool)

(declare-fun e!3392657 () Bool)

(declare-fun tp!1506448 () Bool)

(assert (=> b!5481942 (= e!3392657 tp!1506448)))

(declare-fun b!5481943 () Bool)

(declare-fun e!3392655 () Bool)

(assert (=> b!5481943 (= e!3392648 e!3392655)))

(declare-fun res!2337075 () Bool)

(assert (=> b!5481943 (=> res!2337075 e!3392655)))

(declare-fun lt!2238790 () (InoxSet Context!9506))

(declare-fun lt!2238791 () (InoxSet Context!9506))

(assert (=> b!5481943 (= res!2337075 (not (= lt!2238790 lt!2238791)))))

(assert (=> b!5481943 (= lt!2238791 (derivationStepZipperDown!795 r!7292 (Context!9507 Nil!62282) (h!68731 s!2326)))))

(assert (=> b!5481943 (= lt!2238790 (derivationStepZipperUp!721 (Context!9507 (Cons!62282 r!7292 Nil!62282)) (h!68731 s!2326)))))

(assert (=> b!5481943 (= lt!2238785 (derivationStepZipper!1564 z!1189 (h!68731 s!2326)))))

(declare-fun b!5481944 () Bool)

(assert (=> b!5481944 (= e!3392656 true)))

(declare-fun lt!2238798 () Bool)

(assert (=> b!5481944 (= lt!2238798 (matchZipper!1587 lt!2238787 (_2!35869 lt!2238782)))))

(declare-fun b!5481945 () Bool)

(assert (=> b!5481945 (= e!3392643 e!3392649)))

(declare-fun res!2337086 () Bool)

(assert (=> b!5481945 (=> res!2337086 e!3392649)))

(assert (=> b!5481945 (= res!2337086 (not (= (unfocusZipper!1111 (Cons!62284 lt!2238769 Nil!62284)) lt!2238784)))))

(assert (=> b!5481945 (= lt!2238784 (Concat!24214 (reg!15698 r!7292) r!7292))))

(declare-fun b!5481946 () Bool)

(assert (=> b!5481946 (= e!3392654 tp_is_empty!39991)))

(declare-fun b!5481947 () Bool)

(assert (=> b!5481947 (= e!3392642 (not e!3392644))))

(declare-fun res!2337066 () Bool)

(assert (=> b!5481947 (=> res!2337066 e!3392644)))

(assert (=> b!5481947 (= res!2337066 (not ((_ is Cons!62284) zl!343)))))

(assert (=> b!5481947 (= lt!2238799 (matchRSpec!2472 r!7292 s!2326))))

(assert (=> b!5481947 (= lt!2238799 (matchR!7554 r!7292 s!2326))))

(declare-fun lt!2238794 () Unit!155188)

(assert (=> b!5481947 (= lt!2238794 (mainMatchTheorem!2472 r!7292 s!2326))))

(declare-fun b!5481948 () Bool)

(declare-fun res!2337072 () Bool)

(assert (=> b!5481948 (=> res!2337072 e!3392643)))

(assert (=> b!5481948 (= res!2337072 (not (= (matchZipper!1587 lt!2238783 s!2326) (matchZipper!1587 (derivationStepZipper!1564 lt!2238783 (h!68731 s!2326)) (t!375638 s!2326)))))))

(declare-fun tp!1506449 () Bool)

(declare-fun b!5481949 () Bool)

(assert (=> b!5481949 (= e!3392647 (and (inv!81669 (h!68732 zl!343)) e!3392657 tp!1506449))))

(assert (=> b!5481950 (= e!3392655 e!3392641)))

(declare-fun res!2337074 () Bool)

(assert (=> b!5481950 (=> res!2337074 e!3392641)))

(assert (=> b!5481950 (= res!2337074 (not (= lt!2238785 lt!2238791)))))

(assert (=> b!5481950 (= (flatMap!1072 z!1189 lambda!292655) (derivationStepZipperUp!721 (h!68732 zl!343) (h!68731 s!2326)))))

(declare-fun lt!2238792 () Unit!155188)

(assert (=> b!5481950 (= lt!2238792 (lemmaFlatMapOnSingletonSet!604 z!1189 (h!68732 zl!343) lambda!292655))))

(assert (= (and start!573394 res!2337089) b!5481941))

(assert (= (and b!5481941 res!2337081) b!5481920))

(assert (= (and b!5481920 res!2337071) b!5481947))

(assert (= (and b!5481947 (not res!2337066)) b!5481923))

(assert (= (and b!5481923 (not res!2337078)) b!5481925))

(assert (= (and b!5481925 (not res!2337076)) b!5481921))

(assert (= (and b!5481921 (not res!2337082)) b!5481927))

(assert (= (and b!5481927 (not res!2337070)) b!5481922))

(assert (= (and b!5481922 (not res!2337084)) b!5481930))

(assert (= (and b!5481930 (not res!2337079)) b!5481926))

(assert (= (and b!5481930 (not res!2337080)) b!5481931))

(assert (= (and b!5481931 (not res!2337073)) b!5481943))

(assert (= (and b!5481943 (not res!2337075)) b!5481950))

(assert (= (and b!5481950 (not res!2337074)) b!5481940))

(assert (= (and b!5481940 (not res!2337068)) b!5481948))

(assert (= (and b!5481948 (not res!2337072)) b!5481936))

(assert (= (and b!5481936 (not res!2337090)) b!5481945))

(assert (= (and b!5481945 (not res!2337086)) b!5481928))

(assert (= (and b!5481928 (not res!2337067)) b!5481932))

(assert (= (and b!5481932 (not res!2337065)) b!5481929))

(assert (= (and b!5481929 (not res!2337085)) b!5481918))

(assert (= (and b!5481918 (not res!2337087)) b!5481935))

(assert (= (and b!5481935 (not res!2337088)) b!5481917))

(assert (= (and b!5481917 (not res!2337077)) b!5481934))

(assert (= (and b!5481934 (not res!2337083)) b!5481924))

(assert (= (and b!5481924 (not res!2337069)) b!5481944))

(assert (= (and start!573394 ((_ is ElementMatch!15369) r!7292)) b!5481946))

(assert (= (and start!573394 ((_ is Concat!24214) r!7292)) b!5481937))

(assert (= (and start!573394 ((_ is Star!15369) r!7292)) b!5481938))

(assert (= (and start!573394 ((_ is Union!15369) r!7292)) b!5481919))

(assert (= (and start!573394 condSetEmpty!36057) setIsEmpty!36057))

(assert (= (and start!573394 (not condSetEmpty!36057)) setNonEmpty!36057))

(assert (= setNonEmpty!36057 b!5481939))

(assert (= b!5481949 b!5481942))

(assert (= (and start!573394 ((_ is Cons!62284) zl!343)) b!5481949))

(assert (= (and start!573394 ((_ is Cons!62283) s!2326)) b!5481933))

(declare-fun m!6497520 () Bool)

(assert (=> b!5481941 m!6497520))

(declare-fun m!6497522 () Bool)

(assert (=> b!5481929 m!6497522))

(declare-fun m!6497524 () Bool)

(assert (=> b!5481947 m!6497524))

(declare-fun m!6497526 () Bool)

(assert (=> b!5481947 m!6497526))

(declare-fun m!6497528 () Bool)

(assert (=> b!5481947 m!6497528))

(declare-fun m!6497530 () Bool)

(assert (=> b!5481918 m!6497530))

(declare-fun m!6497532 () Bool)

(assert (=> b!5481918 m!6497532))

(declare-fun m!6497534 () Bool)

(assert (=> b!5481918 m!6497534))

(declare-fun m!6497536 () Bool)

(assert (=> b!5481935 m!6497536))

(declare-fun m!6497538 () Bool)

(assert (=> b!5481934 m!6497538))

(declare-fun m!6497540 () Bool)

(assert (=> b!5481934 m!6497540))

(declare-fun m!6497542 () Bool)

(assert (=> b!5481934 m!6497542))

(declare-fun m!6497544 () Bool)

(assert (=> b!5481934 m!6497544))

(declare-fun m!6497546 () Bool)

(assert (=> b!5481934 m!6497546))

(declare-fun m!6497548 () Bool)

(assert (=> b!5481927 m!6497548))

(assert (=> b!5481927 m!6497548))

(declare-fun m!6497550 () Bool)

(assert (=> b!5481927 m!6497550))

(declare-fun m!6497552 () Bool)

(assert (=> b!5481943 m!6497552))

(declare-fun m!6497554 () Bool)

(assert (=> b!5481943 m!6497554))

(declare-fun m!6497556 () Bool)

(assert (=> b!5481943 m!6497556))

(declare-fun m!6497558 () Bool)

(assert (=> b!5481940 m!6497558))

(declare-fun m!6497560 () Bool)

(assert (=> b!5481940 m!6497560))

(declare-fun m!6497562 () Bool)

(assert (=> b!5481940 m!6497562))

(declare-fun m!6497564 () Bool)

(assert (=> b!5481940 m!6497564))

(declare-fun m!6497566 () Bool)

(assert (=> b!5481940 m!6497566))

(declare-fun m!6497568 () Bool)

(assert (=> b!5481948 m!6497568))

(declare-fun m!6497570 () Bool)

(assert (=> b!5481948 m!6497570))

(assert (=> b!5481948 m!6497570))

(declare-fun m!6497572 () Bool)

(assert (=> b!5481948 m!6497572))

(declare-fun m!6497574 () Bool)

(assert (=> b!5481920 m!6497574))

(declare-fun m!6497576 () Bool)

(assert (=> b!5481950 m!6497576))

(declare-fun m!6497578 () Bool)

(assert (=> b!5481950 m!6497578))

(declare-fun m!6497580 () Bool)

(assert (=> b!5481950 m!6497580))

(declare-fun m!6497582 () Bool)

(assert (=> b!5481944 m!6497582))

(declare-fun m!6497584 () Bool)

(assert (=> b!5481930 m!6497584))

(declare-fun m!6497586 () Bool)

(assert (=> b!5481930 m!6497586))

(assert (=> b!5481930 m!6497584))

(assert (=> b!5481930 m!6497584))

(declare-fun m!6497588 () Bool)

(assert (=> b!5481930 m!6497588))

(declare-fun m!6497590 () Bool)

(assert (=> b!5481930 m!6497590))

(declare-fun m!6497592 () Bool)

(assert (=> b!5481930 m!6497592))

(assert (=> b!5481930 m!6497590))

(declare-fun m!6497594 () Bool)

(assert (=> b!5481930 m!6497594))

(declare-fun m!6497596 () Bool)

(assert (=> b!5481930 m!6497596))

(declare-fun m!6497598 () Bool)

(assert (=> b!5481930 m!6497598))

(declare-fun m!6497600 () Bool)

(assert (=> b!5481930 m!6497600))

(declare-fun m!6497602 () Bool)

(assert (=> b!5481932 m!6497602))

(declare-fun m!6497604 () Bool)

(assert (=> b!5481917 m!6497604))

(declare-fun m!6497606 () Bool)

(assert (=> b!5481917 m!6497606))

(declare-fun m!6497608 () Bool)

(assert (=> b!5481917 m!6497608))

(declare-fun m!6497610 () Bool)

(assert (=> b!5481917 m!6497610))

(declare-fun m!6497612 () Bool)

(assert (=> b!5481917 m!6497612))

(declare-fun m!6497614 () Bool)

(assert (=> b!5481917 m!6497614))

(declare-fun m!6497616 () Bool)

(assert (=> b!5481924 m!6497616))

(declare-fun m!6497618 () Bool)

(assert (=> b!5481949 m!6497618))

(declare-fun m!6497620 () Bool)

(assert (=> b!5481923 m!6497620))

(declare-fun m!6497622 () Bool)

(assert (=> b!5481928 m!6497622))

(declare-fun m!6497624 () Bool)

(assert (=> b!5481928 m!6497624))

(declare-fun m!6497626 () Bool)

(assert (=> b!5481928 m!6497626))

(declare-fun m!6497628 () Bool)

(assert (=> b!5481928 m!6497628))

(declare-fun m!6497630 () Bool)

(assert (=> b!5481928 m!6497630))

(declare-fun m!6497632 () Bool)

(assert (=> b!5481928 m!6497632))

(declare-fun m!6497634 () Bool)

(assert (=> b!5481928 m!6497634))

(declare-fun m!6497636 () Bool)

(assert (=> b!5481928 m!6497636))

(declare-fun m!6497638 () Bool)

(assert (=> b!5481928 m!6497638))

(declare-fun m!6497640 () Bool)

(assert (=> start!573394 m!6497640))

(declare-fun m!6497642 () Bool)

(assert (=> b!5481925 m!6497642))

(declare-fun m!6497644 () Bool)

(assert (=> setNonEmpty!36057 m!6497644))

(declare-fun m!6497646 () Bool)

(assert (=> b!5481945 m!6497646))

(check-sat (not b!5481941) (not b!5481950) (not b!5481927) (not b!5481929) (not b!5481918) (not b!5481928) (not start!573394) (not b!5481942) (not b!5481943) (not b!5481939) (not b!5481938) tp_is_empty!39991 (not b!5481919) (not b!5481917) (not b!5481933) (not b!5481937) (not b!5481944) (not b!5481940) (not b!5481920) (not b!5481923) (not b!5481932) (not b!5481935) (not b!5481925) (not b!5481945) (not b!5481947) (not b!5481948) (not b!5481934) (not b!5481949) (not b!5481930) (not setNonEmpty!36057) (not b!5481924))
(check-sat)
