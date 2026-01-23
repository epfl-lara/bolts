; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!640650 () Bool)

(assert start!640650)

(declare-fun b!6534005 () Bool)

(assert (=> b!6534005 true))

(assert (=> b!6534005 true))

(declare-fun lambda!362470 () Int)

(declare-fun lambda!362469 () Int)

(assert (=> b!6534005 (not (= lambda!362470 lambda!362469))))

(assert (=> b!6534005 true))

(assert (=> b!6534005 true))

(declare-fun b!6534013 () Bool)

(assert (=> b!6534013 true))

(declare-fun b!6534015 () Bool)

(assert (=> b!6534015 true))

(declare-fun b!6533989 () Bool)

(declare-fun e!3956891 () Bool)

(declare-fun e!3956904 () Bool)

(assert (=> b!6533989 (= e!3956891 e!3956904)))

(declare-fun res!2680767 () Bool)

(assert (=> b!6533989 (=> res!2680767 e!3956904)))

(declare-datatypes ((C!33080 0))(
  ( (C!33081 (val!26242 Int)) )
))
(declare-datatypes ((List!65514 0))(
  ( (Nil!65390) (Cons!65390 (h!71838 C!33080) (t!379154 List!65514)) )
))
(declare-fun s!2326 () List!65514)

(declare-fun lt!2397550 () List!65514)

(assert (=> b!6533989 (= res!2680767 (not (= s!2326 lt!2397550)))))

(declare-datatypes ((tuple2!66768 0))(
  ( (tuple2!66769 (_1!36687 List!65514) (_2!36687 List!65514)) )
))
(declare-fun lt!2397552 () tuple2!66768)

(declare-fun ++!14512 (List!65514 List!65514) List!65514)

(assert (=> b!6533989 (= lt!2397550 (++!14512 (_1!36687 lt!2397552) (_2!36687 lt!2397552)))))

(declare-datatypes ((Option!16296 0))(
  ( (None!16295) (Some!16295 (v!52478 tuple2!66768)) )
))
(declare-fun lt!2397561 () Option!16296)

(declare-fun get!22689 (Option!16296) tuple2!66768)

(assert (=> b!6533989 (= lt!2397552 (get!22689 lt!2397561))))

(declare-fun isDefined!12999 (Option!16296) Bool)

(assert (=> b!6533989 (isDefined!12999 lt!2397561)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!16405 0))(
  ( (ElementMatch!16405 (c!1199392 C!33080)) (Concat!25250 (regOne!33322 Regex!16405) (regTwo!33322 Regex!16405)) (EmptyExpr!16405) (Star!16405 (reg!16734 Regex!16405)) (EmptyLang!16405) (Union!16405 (regOne!33323 Regex!16405) (regTwo!33323 Regex!16405)) )
))
(declare-datatypes ((List!65515 0))(
  ( (Nil!65391) (Cons!65391 (h!71839 Regex!16405) (t!379155 List!65515)) )
))
(declare-datatypes ((Context!11578 0))(
  ( (Context!11579 (exprs!6289 List!65515)) )
))
(declare-fun lt!2397577 () (InoxSet Context!11578))

(declare-fun lt!2397567 () (InoxSet Context!11578))

(declare-fun findConcatSeparationZippers!170 ((InoxSet Context!11578) (InoxSet Context!11578) List!65514 List!65514 List!65514) Option!16296)

(assert (=> b!6533989 (= lt!2397561 (findConcatSeparationZippers!170 lt!2397567 lt!2397577 Nil!65390 s!2326 s!2326))))

(declare-fun lt!2397566 () Context!11578)

(declare-datatypes ((Unit!158955 0))(
  ( (Unit!158956) )
))
(declare-fun lt!2397575 () Unit!158955)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!170 ((InoxSet Context!11578) Context!11578 List!65514) Unit!158955)

(assert (=> b!6533989 (= lt!2397575 (lemmaConcatZipperMatchesStringThenFindConcatDefined!170 lt!2397567 lt!2397566 s!2326))))

(declare-fun b!6533990 () Bool)

(declare-fun res!2680772 () Bool)

(declare-fun e!3956888 () Bool)

(assert (=> b!6533990 (=> res!2680772 e!3956888)))

(declare-fun r!7292 () Regex!16405)

(declare-datatypes ((List!65516 0))(
  ( (Nil!65392) (Cons!65392 (h!71840 Context!11578) (t!379156 List!65516)) )
))
(declare-fun zl!343 () List!65516)

(declare-fun generalisedConcat!2002 (List!65515) Regex!16405)

(assert (=> b!6533990 (= res!2680772 (not (= r!7292 (generalisedConcat!2002 (exprs!6289 (h!71840 zl!343))))))))

(declare-fun b!6533991 () Bool)

(declare-fun e!3956882 () Bool)

(declare-fun tp!1808158 () Bool)

(assert (=> b!6533991 (= e!3956882 tp!1808158)))

(declare-fun b!6533992 () Bool)

(declare-fun res!2680780 () Bool)

(assert (=> b!6533992 (=> res!2680780 e!3956904)))

(declare-fun matchZipper!2417 ((InoxSet Context!11578) List!65514) Bool)

(assert (=> b!6533992 (= res!2680780 (not (matchZipper!2417 lt!2397577 (_2!36687 lt!2397552))))))

(declare-fun b!6533994 () Bool)

(declare-fun e!3956900 () Bool)

(declare-fun tp!1808166 () Bool)

(declare-fun tp!1808164 () Bool)

(assert (=> b!6533994 (= e!3956900 (and tp!1808166 tp!1808164))))

(declare-fun b!6533995 () Bool)

(declare-fun e!3956903 () Bool)

(declare-fun tp!1808161 () Bool)

(assert (=> b!6533995 (= e!3956903 tp!1808161)))

(declare-fun b!6533996 () Bool)

(declare-fun res!2680770 () Bool)

(declare-fun e!3956894 () Bool)

(assert (=> b!6533996 (=> res!2680770 e!3956894)))

(declare-fun isEmpty!37609 (List!65515) Bool)

(assert (=> b!6533996 (= res!2680770 (isEmpty!37609 (t!379155 (exprs!6289 (h!71840 zl!343)))))))

(declare-fun b!6533997 () Bool)

(declare-fun res!2680756 () Bool)

(assert (=> b!6533997 (=> res!2680756 e!3956888)))

(get-info :version)

(assert (=> b!6533997 (= res!2680756 (not ((_ is Cons!65391) (exprs!6289 (h!71840 zl!343)))))))

(declare-fun b!6533998 () Bool)

(declare-fun e!3956890 () Bool)

(declare-fun e!3956884 () Bool)

(assert (=> b!6533998 (= e!3956890 e!3956884)))

(declare-fun res!2680753 () Bool)

(assert (=> b!6533998 (=> res!2680753 e!3956884)))

(declare-fun lt!2397572 () List!65516)

(declare-fun unfocusZipper!2147 (List!65516) Regex!16405)

(assert (=> b!6533998 (= res!2680753 (not (= (unfocusZipper!2147 lt!2397572) (reg!16734 (regOne!33322 r!7292)))))))

(declare-fun lt!2397576 () Context!11578)

(assert (=> b!6533998 (= lt!2397572 (Cons!65392 lt!2397576 Nil!65392))))

(declare-fun lambda!362471 () Int)

(declare-fun flatMap!1910 ((InoxSet Context!11578) Int) (InoxSet Context!11578))

(declare-fun derivationStepZipperUp!1579 (Context!11578 C!33080) (InoxSet Context!11578))

(assert (=> b!6533998 (= (flatMap!1910 lt!2397577 lambda!362471) (derivationStepZipperUp!1579 lt!2397566 (h!71838 s!2326)))))

(declare-fun lt!2397556 () Unit!158955)

(declare-fun lemmaFlatMapOnSingletonSet!1436 ((InoxSet Context!11578) Context!11578 Int) Unit!158955)

(assert (=> b!6533998 (= lt!2397556 (lemmaFlatMapOnSingletonSet!1436 lt!2397577 lt!2397566 lambda!362471))))

(assert (=> b!6533998 (= (flatMap!1910 lt!2397567 lambda!362471) (derivationStepZipperUp!1579 lt!2397576 (h!71838 s!2326)))))

(declare-fun lt!2397554 () Unit!158955)

(assert (=> b!6533998 (= lt!2397554 (lemmaFlatMapOnSingletonSet!1436 lt!2397567 lt!2397576 lambda!362471))))

(declare-fun lt!2397589 () (InoxSet Context!11578))

(assert (=> b!6533998 (= lt!2397589 (derivationStepZipperUp!1579 lt!2397566 (h!71838 s!2326)))))

(declare-fun lt!2397579 () (InoxSet Context!11578))

(assert (=> b!6533998 (= lt!2397579 (derivationStepZipperUp!1579 lt!2397576 (h!71838 s!2326)))))

(assert (=> b!6533998 (= lt!2397577 (store ((as const (Array Context!11578 Bool)) false) lt!2397566 true))))

(assert (=> b!6533998 (= lt!2397567 (store ((as const (Array Context!11578 Bool)) false) lt!2397576 true))))

(declare-fun lt!2397583 () List!65515)

(assert (=> b!6533998 (= lt!2397576 (Context!11579 lt!2397583))))

(assert (=> b!6533998 (= lt!2397583 (Cons!65391 (reg!16734 (regOne!33322 r!7292)) Nil!65391))))

(declare-fun b!6533999 () Bool)

(declare-fun e!3956881 () Bool)

(declare-fun e!3956897 () Bool)

(assert (=> b!6533999 (= e!3956881 e!3956897)))

(declare-fun res!2680758 () Bool)

(assert (=> b!6533999 (=> res!2680758 e!3956897)))

(declare-fun lt!2397592 () (InoxSet Context!11578))

(declare-fun lt!2397591 () (InoxSet Context!11578))

(assert (=> b!6533999 (= res!2680758 (not (= lt!2397592 lt!2397591)))))

(declare-fun derivationStepZipperDown!1653 (Regex!16405 Context!11578 C!33080) (InoxSet Context!11578))

(assert (=> b!6533999 (= lt!2397591 (derivationStepZipperDown!1653 (reg!16734 (regOne!33322 r!7292)) lt!2397566 (h!71838 s!2326)))))

(declare-fun lt!2397573 () List!65515)

(assert (=> b!6533999 (= lt!2397566 (Context!11579 lt!2397573))))

(declare-fun lt!2397580 () Regex!16405)

(assert (=> b!6533999 (= lt!2397573 (Cons!65391 lt!2397580 (t!379155 (exprs!6289 (h!71840 zl!343)))))))

(assert (=> b!6533999 (= lt!2397580 (Star!16405 (reg!16734 (regOne!33322 r!7292))))))

(declare-fun b!6534000 () Bool)

(declare-fun e!3956901 () Bool)

(assert (=> b!6534000 (= e!3956884 e!3956901)))

(declare-fun res!2680784 () Bool)

(assert (=> b!6534000 (=> res!2680784 e!3956901)))

(declare-fun lt!2397548 () Bool)

(assert (=> b!6534000 (= res!2680784 lt!2397548)))

(declare-fun lt!2397555 () Regex!16405)

(declare-fun matchR!8588 (Regex!16405 List!65514) Bool)

(declare-fun matchRSpec!3506 (Regex!16405 List!65514) Bool)

(assert (=> b!6534000 (= (matchR!8588 lt!2397555 s!2326) (matchRSpec!3506 lt!2397555 s!2326))))

(declare-fun lt!2397587 () Unit!158955)

(declare-fun mainMatchTheorem!3506 (Regex!16405 List!65514) Unit!158955)

(assert (=> b!6534000 (= lt!2397587 (mainMatchTheorem!3506 lt!2397555 s!2326))))

(declare-fun b!6534001 () Bool)

(declare-fun res!2680774 () Bool)

(assert (=> b!6534001 (=> res!2680774 e!3956901)))

(declare-fun lt!2397582 () Bool)

(assert (=> b!6534001 (= res!2680774 (not lt!2397582))))

(declare-fun tp!1808165 () Bool)

(declare-fun setNonEmpty!44568 () Bool)

(declare-fun setRes!44568 () Bool)

(declare-fun setElem!44568 () Context!11578)

(declare-fun inv!84259 (Context!11578) Bool)

(assert (=> setNonEmpty!44568 (= setRes!44568 (and tp!1808165 (inv!84259 setElem!44568) e!3956903))))

(declare-fun z!1189 () (InoxSet Context!11578))

(declare-fun setRest!44568 () (InoxSet Context!11578))

(assert (=> setNonEmpty!44568 (= z!1189 ((_ map or) (store ((as const (Array Context!11578 Bool)) false) setElem!44568 true) setRest!44568))))

(declare-fun b!6534002 () Bool)

(declare-fun res!2680765 () Bool)

(assert (=> b!6534002 (=> res!2680765 e!3956904)))

(assert (=> b!6534002 (= res!2680765 (not (matchZipper!2417 lt!2397567 (_1!36687 lt!2397552))))))

(declare-fun b!6534003 () Bool)

(declare-fun e!3956902 () Bool)

(declare-fun e!3956898 () Bool)

(assert (=> b!6534003 (= e!3956902 e!3956898)))

(declare-fun res!2680752 () Bool)

(assert (=> b!6534003 (=> res!2680752 e!3956898)))

(declare-fun lt!2397581 () Regex!16405)

(assert (=> b!6534003 (= res!2680752 (not (= r!7292 lt!2397581)))))

(assert (=> b!6534003 (= lt!2397581 (Concat!25250 lt!2397580 (regTwo!33322 r!7292)))))

(declare-fun b!6534004 () Bool)

(declare-fun res!2680776 () Bool)

(declare-fun e!3956886 () Bool)

(assert (=> b!6534004 (=> (not res!2680776) (not e!3956886))))

(declare-fun toList!10189 ((InoxSet Context!11578)) List!65516)

(assert (=> b!6534004 (= res!2680776 (= (toList!10189 z!1189) zl!343))))

(assert (=> b!6534005 (= e!3956888 e!3956894)))

(declare-fun res!2680773 () Bool)

(assert (=> b!6534005 (=> res!2680773 e!3956894)))

(declare-fun lt!2397562 () Bool)

(assert (=> b!6534005 (= res!2680773 (or (not (= lt!2397548 lt!2397562)) ((_ is Nil!65390) s!2326)))))

(declare-fun Exists!3475 (Int) Bool)

(assert (=> b!6534005 (= (Exists!3475 lambda!362469) (Exists!3475 lambda!362470))))

(declare-fun lt!2397547 () Unit!158955)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2012 (Regex!16405 Regex!16405 List!65514) Unit!158955)

(assert (=> b!6534005 (= lt!2397547 (lemmaExistCutMatchRandMatchRSpecEquivalent!2012 (regOne!33322 r!7292) (regTwo!33322 r!7292) s!2326))))

(assert (=> b!6534005 (= lt!2397562 (Exists!3475 lambda!362469))))

(declare-fun findConcatSeparation!2710 (Regex!16405 Regex!16405 List!65514 List!65514 List!65514) Option!16296)

(assert (=> b!6534005 (= lt!2397562 (isDefined!12999 (findConcatSeparation!2710 (regOne!33322 r!7292) (regTwo!33322 r!7292) Nil!65390 s!2326 s!2326)))))

(declare-fun lt!2397571 () Unit!158955)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2474 (Regex!16405 Regex!16405 List!65514) Unit!158955)

(assert (=> b!6534005 (= lt!2397571 (lemmaFindConcatSeparationEquivalentToExists!2474 (regOne!33322 r!7292) (regTwo!33322 r!7292) s!2326))))

(declare-fun b!6534006 () Bool)

(declare-fun res!2680751 () Bool)

(assert (=> b!6534006 (=> res!2680751 e!3956881)))

(assert (=> b!6534006 (= res!2680751 (or ((_ is Concat!25250) (regOne!33322 r!7292)) (not ((_ is Star!16405) (regOne!33322 r!7292)))))))

(declare-fun b!6533993 () Bool)

(declare-fun tp!1808167 () Bool)

(declare-fun tp!1808163 () Bool)

(assert (=> b!6533993 (= e!3956900 (and tp!1808167 tp!1808163))))

(declare-fun res!2680775 () Bool)

(assert (=> start!640650 (=> (not res!2680775) (not e!3956886))))

(declare-fun validRegex!8141 (Regex!16405) Bool)

(assert (=> start!640650 (= res!2680775 (validRegex!8141 r!7292))))

(assert (=> start!640650 e!3956886))

(assert (=> start!640650 e!3956900))

(declare-fun condSetEmpty!44568 () Bool)

(assert (=> start!640650 (= condSetEmpty!44568 (= z!1189 ((as const (Array Context!11578 Bool)) false)))))

(assert (=> start!640650 setRes!44568))

(declare-fun e!3956893 () Bool)

(assert (=> start!640650 e!3956893))

(declare-fun e!3956899 () Bool)

(assert (=> start!640650 e!3956899))

(declare-fun b!6534007 () Bool)

(declare-fun e!3956892 () Bool)

(declare-fun lt!2397558 () (InoxSet Context!11578))

(assert (=> b!6534007 (= e!3956892 (matchZipper!2417 lt!2397558 (t!379154 s!2326)))))

(declare-fun b!6534008 () Bool)

(declare-fun tp_is_empty!42063 () Bool)

(assert (=> b!6534008 (= e!3956900 tp_is_empty!42063)))

(declare-fun b!6534009 () Bool)

(declare-fun e!3956895 () Bool)

(assert (=> b!6534009 (= e!3956901 e!3956895)))

(declare-fun res!2680778 () Bool)

(assert (=> b!6534009 (=> res!2680778 e!3956895)))

(declare-fun e!3956896 () Bool)

(assert (=> b!6534009 (= res!2680778 e!3956896)))

(declare-fun res!2680763 () Bool)

(assert (=> b!6534009 (=> (not res!2680763) (not e!3956896))))

(declare-fun lt!2397560 () Bool)

(assert (=> b!6534009 (= res!2680763 (not lt!2397560))))

(assert (=> b!6534009 (= lt!2397560 (matchZipper!2417 lt!2397592 (t!379154 s!2326)))))

(declare-fun b!6534010 () Bool)

(declare-fun res!2680783 () Bool)

(assert (=> b!6534010 (=> res!2680783 e!3956888)))

(declare-fun generalisedUnion!2249 (List!65515) Regex!16405)

(declare-fun unfocusZipperList!1826 (List!65516) List!65515)

(assert (=> b!6534010 (= res!2680783 (not (= r!7292 (generalisedUnion!2249 (unfocusZipperList!1826 zl!343)))))))

(declare-fun b!6534011 () Bool)

(declare-fun tp!1808162 () Bool)

(assert (=> b!6534011 (= e!3956899 (and tp_is_empty!42063 tp!1808162))))

(declare-fun b!6534012 () Bool)

(declare-fun res!2680782 () Bool)

(assert (=> b!6534012 (=> res!2680782 e!3956901)))

(assert (=> b!6534012 (= res!2680782 (not (matchZipper!2417 z!1189 s!2326)))))

(assert (=> b!6534013 (= e!3956894 e!3956881)))

(declare-fun res!2680760 () Bool)

(assert (=> b!6534013 (=> res!2680760 e!3956881)))

(assert (=> b!6534013 (= res!2680760 (or (and ((_ is ElementMatch!16405) (regOne!33322 r!7292)) (= (c!1199392 (regOne!33322 r!7292)) (h!71838 s!2326))) ((_ is Union!16405) (regOne!33322 r!7292))))))

(declare-fun lt!2397564 () Unit!158955)

(declare-fun e!3956885 () Unit!158955)

(assert (=> b!6534013 (= lt!2397564 e!3956885)))

(declare-fun c!1199391 () Bool)

(assert (=> b!6534013 (= c!1199391 lt!2397582)))

(declare-fun nullable!6398 (Regex!16405) Bool)

(assert (=> b!6534013 (= lt!2397582 (nullable!6398 (h!71839 (exprs!6289 (h!71840 zl!343)))))))

(assert (=> b!6534013 (= (flatMap!1910 z!1189 lambda!362471) (derivationStepZipperUp!1579 (h!71840 zl!343) (h!71838 s!2326)))))

(declare-fun lt!2397578 () Unit!158955)

(assert (=> b!6534013 (= lt!2397578 (lemmaFlatMapOnSingletonSet!1436 z!1189 (h!71840 zl!343) lambda!362471))))

(declare-fun lt!2397565 () Context!11578)

(assert (=> b!6534013 (= lt!2397558 (derivationStepZipperUp!1579 lt!2397565 (h!71838 s!2326)))))

(assert (=> b!6534013 (= lt!2397592 (derivationStepZipperDown!1653 (h!71839 (exprs!6289 (h!71840 zl!343))) lt!2397565 (h!71838 s!2326)))))

(assert (=> b!6534013 (= lt!2397565 (Context!11579 (t!379155 (exprs!6289 (h!71840 zl!343)))))))

(declare-fun lt!2397557 () (InoxSet Context!11578))

(assert (=> b!6534013 (= lt!2397557 (derivationStepZipperUp!1579 (Context!11579 (Cons!65391 (h!71839 (exprs!6289 (h!71840 zl!343))) (t!379155 (exprs!6289 (h!71840 zl!343))))) (h!71838 s!2326)))))

(declare-fun b!6534014 () Bool)

(declare-fun Unit!158957 () Unit!158955)

(assert (=> b!6534014 (= e!3956885 Unit!158957)))

(declare-fun lt!2397570 () Unit!158955)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1236 ((InoxSet Context!11578) (InoxSet Context!11578) List!65514) Unit!158955)

(assert (=> b!6534014 (= lt!2397570 (lemmaZipperConcatMatchesSameAsBothZippers!1236 lt!2397592 lt!2397558 (t!379154 s!2326)))))

(declare-fun res!2680771 () Bool)

(assert (=> b!6534014 (= res!2680771 (matchZipper!2417 lt!2397592 (t!379154 s!2326)))))

(assert (=> b!6534014 (=> res!2680771 e!3956892)))

(assert (=> b!6534014 (= (matchZipper!2417 ((_ map or) lt!2397592 lt!2397558) (t!379154 s!2326)) e!3956892)))

(assert (=> b!6534015 (= e!3956895 e!3956891)))

(declare-fun res!2680781 () Bool)

(assert (=> b!6534015 (=> res!2680781 e!3956891)))

(declare-fun lt!2397569 () (InoxSet Context!11578))

(declare-fun appendTo!166 ((InoxSet Context!11578) Context!11578) (InoxSet Context!11578))

(assert (=> b!6534015 (= res!2680781 (not (= (appendTo!166 lt!2397567 lt!2397566) lt!2397569)))))

(declare-fun lambda!362472 () Int)

(declare-fun map!14916 ((InoxSet Context!11578) Int) (InoxSet Context!11578))

(declare-fun ++!14513 (List!65515 List!65515) List!65515)

(assert (=> b!6534015 (= (map!14916 lt!2397567 lambda!362472) (store ((as const (Array Context!11578 Bool)) false) (Context!11579 (++!14513 lt!2397583 lt!2397573)) true))))

(declare-fun lt!2397584 () Unit!158955)

(declare-fun lambda!362473 () Int)

(declare-fun lemmaConcatPreservesForall!378 (List!65515 List!65515 Int) Unit!158955)

(assert (=> b!6534015 (= lt!2397584 (lemmaConcatPreservesForall!378 lt!2397583 lt!2397573 lambda!362473))))

(declare-fun lt!2397585 () Unit!158955)

(declare-fun lemmaMapOnSingletonSet!188 ((InoxSet Context!11578) Context!11578 Int) Unit!158955)

(assert (=> b!6534015 (= lt!2397585 (lemmaMapOnSingletonSet!188 lt!2397567 lt!2397576 lambda!362472))))

(declare-fun b!6534016 () Bool)

(declare-fun res!2680755 () Bool)

(assert (=> b!6534016 (=> res!2680755 e!3956881)))

(declare-fun e!3956883 () Bool)

(assert (=> b!6534016 (= res!2680755 e!3956883)))

(declare-fun res!2680759 () Bool)

(assert (=> b!6534016 (=> (not res!2680759) (not e!3956883))))

(assert (=> b!6534016 (= res!2680759 ((_ is Concat!25250) (regOne!33322 r!7292)))))

(declare-fun b!6534017 () Bool)

(assert (=> b!6534017 (= e!3956904 (validRegex!8141 lt!2397581))))

(assert (=> b!6534017 (matchR!8588 (reg!16734 (regOne!33322 r!7292)) (_1!36687 lt!2397552))))

(declare-fun lt!2397563 () Unit!158955)

(declare-fun theoremZipperRegexEquiv!841 ((InoxSet Context!11578) List!65516 Regex!16405 List!65514) Unit!158955)

(assert (=> b!6534017 (= lt!2397563 (theoremZipperRegexEquiv!841 lt!2397567 lt!2397572 (reg!16734 (regOne!33322 r!7292)) (_1!36687 lt!2397552)))))

(assert (=> b!6534017 (matchZipper!2417 (store ((as const (Array Context!11578 Bool)) false) (Context!11579 (++!14513 lt!2397583 lt!2397573)) true) lt!2397550)))

(declare-fun lt!2397553 () Unit!158955)

(assert (=> b!6534017 (= lt!2397553 (lemmaConcatPreservesForall!378 lt!2397583 lt!2397573 lambda!362473))))

(declare-fun lt!2397559 () Unit!158955)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!186 (Context!11578 Context!11578 List!65514 List!65514) Unit!158955)

(assert (=> b!6534017 (= lt!2397559 (lemmaConcatenateContextMatchesConcatOfStrings!186 lt!2397576 lt!2397566 (_1!36687 lt!2397552) (_2!36687 lt!2397552)))))

(declare-fun b!6534018 () Bool)

(declare-fun e!3956889 () Bool)

(assert (=> b!6534018 (= e!3956889 (not e!3956888))))

(declare-fun res!2680754 () Bool)

(assert (=> b!6534018 (=> res!2680754 e!3956888)))

(assert (=> b!6534018 (= res!2680754 (not ((_ is Cons!65392) zl!343)))))

(assert (=> b!6534018 (= lt!2397548 (matchRSpec!3506 r!7292 s!2326))))

(assert (=> b!6534018 (= lt!2397548 (matchR!8588 r!7292 s!2326))))

(declare-fun lt!2397551 () Unit!158955)

(assert (=> b!6534018 (= lt!2397551 (mainMatchTheorem!3506 r!7292 s!2326))))

(declare-fun setIsEmpty!44568 () Bool)

(assert (=> setIsEmpty!44568 setRes!44568))

(declare-fun b!6534019 () Bool)

(declare-fun res!2680766 () Bool)

(assert (=> b!6534019 (=> res!2680766 e!3956895)))

(declare-fun lt!2397586 () Bool)

(assert (=> b!6534019 (= res!2680766 (or (not lt!2397560) (not lt!2397586)))))

(declare-fun b!6534020 () Bool)

(declare-fun res!2680764 () Bool)

(assert (=> b!6534020 (=> res!2680764 e!3956888)))

(assert (=> b!6534020 (= res!2680764 (or ((_ is EmptyExpr!16405) r!7292) ((_ is EmptyLang!16405) r!7292) ((_ is ElementMatch!16405) r!7292) ((_ is Union!16405) r!7292) (not ((_ is Concat!25250) r!7292))))))

(declare-fun b!6534021 () Bool)

(assert (=> b!6534021 (= e!3956886 e!3956889)))

(declare-fun res!2680761 () Bool)

(assert (=> b!6534021 (=> (not res!2680761) (not e!3956889))))

(declare-fun lt!2397590 () Regex!16405)

(assert (=> b!6534021 (= res!2680761 (= r!7292 lt!2397590))))

(assert (=> b!6534021 (= lt!2397590 (unfocusZipper!2147 zl!343))))

(declare-fun tp!1808159 () Bool)

(declare-fun b!6534022 () Bool)

(assert (=> b!6534022 (= e!3956893 (and (inv!84259 (h!71840 zl!343)) e!3956882 tp!1808159))))

(declare-fun b!6534023 () Bool)

(declare-fun tp!1808160 () Bool)

(assert (=> b!6534023 (= e!3956900 tp!1808160)))

(declare-fun b!6534024 () Bool)

(assert (=> b!6534024 (= e!3956898 e!3956890)))

(declare-fun res!2680762 () Bool)

(assert (=> b!6534024 (=> res!2680762 e!3956890)))

(declare-fun lt!2397588 () Context!11578)

(assert (=> b!6534024 (= res!2680762 (not (= (unfocusZipper!2147 (Cons!65392 lt!2397588 Nil!65392)) lt!2397555)))))

(assert (=> b!6534024 (= lt!2397555 (Concat!25250 (reg!16734 (regOne!33322 r!7292)) lt!2397581))))

(declare-fun b!6534025 () Bool)

(declare-fun Unit!158958 () Unit!158955)

(assert (=> b!6534025 (= e!3956885 Unit!158958)))

(declare-fun b!6534026 () Bool)

(declare-fun res!2680757 () Bool)

(assert (=> b!6534026 (=> res!2680757 e!3956888)))

(declare-fun isEmpty!37610 (List!65516) Bool)

(assert (=> b!6534026 (= res!2680757 (not (isEmpty!37610 (t!379156 zl!343))))))

(declare-fun b!6534027 () Bool)

(declare-fun e!3956887 () Bool)

(assert (=> b!6534027 (= e!3956887 e!3956902)))

(declare-fun res!2680768 () Bool)

(assert (=> b!6534027 (=> res!2680768 e!3956902)))

(declare-fun lt!2397549 () (InoxSet Context!11578))

(assert (=> b!6534027 (= res!2680768 (not (= lt!2397586 (matchZipper!2417 lt!2397549 (t!379154 s!2326)))))))

(assert (=> b!6534027 (= lt!2397586 (matchZipper!2417 lt!2397569 s!2326))))

(declare-fun b!6534028 () Bool)

(declare-fun res!2680769 () Bool)

(assert (=> b!6534028 (=> res!2680769 e!3956884)))

(assert (=> b!6534028 (= res!2680769 (not (= (unfocusZipper!2147 (Cons!65392 lt!2397566 Nil!65392)) lt!2397581)))))

(declare-fun b!6534029 () Bool)

(declare-fun res!2680777 () Bool)

(assert (=> b!6534029 (=> res!2680777 e!3956902)))

(assert (=> b!6534029 (= res!2680777 (not (= lt!2397590 r!7292)))))

(declare-fun b!6534030 () Bool)

(assert (=> b!6534030 (= e!3956896 (not (matchZipper!2417 lt!2397558 (t!379154 s!2326))))))

(declare-fun b!6534031 () Bool)

(assert (=> b!6534031 (= e!3956883 (nullable!6398 (regOne!33322 (regOne!33322 r!7292))))))

(declare-fun b!6534032 () Bool)

(assert (=> b!6534032 (= e!3956897 e!3956887)))

(declare-fun res!2680779 () Bool)

(assert (=> b!6534032 (=> res!2680779 e!3956887)))

(assert (=> b!6534032 (= res!2680779 (not (= lt!2397549 lt!2397591)))))

(assert (=> b!6534032 (= (flatMap!1910 lt!2397569 lambda!362471) (derivationStepZipperUp!1579 lt!2397588 (h!71838 s!2326)))))

(declare-fun lt!2397574 () Unit!158955)

(assert (=> b!6534032 (= lt!2397574 (lemmaFlatMapOnSingletonSet!1436 lt!2397569 lt!2397588 lambda!362471))))

(declare-fun lt!2397568 () (InoxSet Context!11578))

(assert (=> b!6534032 (= lt!2397568 (derivationStepZipperUp!1579 lt!2397588 (h!71838 s!2326)))))

(declare-fun derivationStepZipper!2371 ((InoxSet Context!11578) C!33080) (InoxSet Context!11578))

(assert (=> b!6534032 (= lt!2397549 (derivationStepZipper!2371 lt!2397569 (h!71838 s!2326)))))

(assert (=> b!6534032 (= lt!2397569 (store ((as const (Array Context!11578 Bool)) false) lt!2397588 true))))

(assert (=> b!6534032 (= lt!2397588 (Context!11579 (Cons!65391 (reg!16734 (regOne!33322 r!7292)) lt!2397573)))))

(assert (= (and start!640650 res!2680775) b!6534004))

(assert (= (and b!6534004 res!2680776) b!6534021))

(assert (= (and b!6534021 res!2680761) b!6534018))

(assert (= (and b!6534018 (not res!2680754)) b!6534026))

(assert (= (and b!6534026 (not res!2680757)) b!6533990))

(assert (= (and b!6533990 (not res!2680772)) b!6533997))

(assert (= (and b!6533997 (not res!2680756)) b!6534010))

(assert (= (and b!6534010 (not res!2680783)) b!6534020))

(assert (= (and b!6534020 (not res!2680764)) b!6534005))

(assert (= (and b!6534005 (not res!2680773)) b!6533996))

(assert (= (and b!6533996 (not res!2680770)) b!6534013))

(assert (= (and b!6534013 c!1199391) b!6534014))

(assert (= (and b!6534013 (not c!1199391)) b!6534025))

(assert (= (and b!6534014 (not res!2680771)) b!6534007))

(assert (= (and b!6534013 (not res!2680760)) b!6534016))

(assert (= (and b!6534016 res!2680759) b!6534031))

(assert (= (and b!6534016 (not res!2680755)) b!6534006))

(assert (= (and b!6534006 (not res!2680751)) b!6533999))

(assert (= (and b!6533999 (not res!2680758)) b!6534032))

(assert (= (and b!6534032 (not res!2680779)) b!6534027))

(assert (= (and b!6534027 (not res!2680768)) b!6534029))

(assert (= (and b!6534029 (not res!2680777)) b!6534003))

(assert (= (and b!6534003 (not res!2680752)) b!6534024))

(assert (= (and b!6534024 (not res!2680762)) b!6533998))

(assert (= (and b!6533998 (not res!2680753)) b!6534028))

(assert (= (and b!6534028 (not res!2680769)) b!6534000))

(assert (= (and b!6534000 (not res!2680784)) b!6534012))

(assert (= (and b!6534012 (not res!2680782)) b!6534001))

(assert (= (and b!6534001 (not res!2680774)) b!6534009))

(assert (= (and b!6534009 res!2680763) b!6534030))

(assert (= (and b!6534009 (not res!2680778)) b!6534019))

(assert (= (and b!6534019 (not res!2680766)) b!6534015))

(assert (= (and b!6534015 (not res!2680781)) b!6533989))

(assert (= (and b!6533989 (not res!2680767)) b!6534002))

(assert (= (and b!6534002 (not res!2680765)) b!6533992))

(assert (= (and b!6533992 (not res!2680780)) b!6534017))

(assert (= (and start!640650 ((_ is ElementMatch!16405) r!7292)) b!6534008))

(assert (= (and start!640650 ((_ is Concat!25250) r!7292)) b!6533994))

(assert (= (and start!640650 ((_ is Star!16405) r!7292)) b!6534023))

(assert (= (and start!640650 ((_ is Union!16405) r!7292)) b!6533993))

(assert (= (and start!640650 condSetEmpty!44568) setIsEmpty!44568))

(assert (= (and start!640650 (not condSetEmpty!44568)) setNonEmpty!44568))

(assert (= setNonEmpty!44568 b!6533995))

(assert (= b!6534022 b!6533991))

(assert (= (and start!640650 ((_ is Cons!65392) zl!343)) b!6534022))

(assert (= (and start!640650 ((_ is Cons!65390) s!2326)) b!6534011))

(declare-fun m!7317424 () Bool)

(assert (=> start!640650 m!7317424))

(declare-fun m!7317426 () Bool)

(assert (=> b!6534014 m!7317426))

(declare-fun m!7317428 () Bool)

(assert (=> b!6534014 m!7317428))

(declare-fun m!7317430 () Bool)

(assert (=> b!6534014 m!7317430))

(declare-fun m!7317432 () Bool)

(assert (=> b!6534015 m!7317432))

(declare-fun m!7317434 () Bool)

(assert (=> b!6534015 m!7317434))

(declare-fun m!7317436 () Bool)

(assert (=> b!6534015 m!7317436))

(declare-fun m!7317438 () Bool)

(assert (=> b!6534015 m!7317438))

(declare-fun m!7317440 () Bool)

(assert (=> b!6534015 m!7317440))

(declare-fun m!7317442 () Bool)

(assert (=> b!6534015 m!7317442))

(declare-fun m!7317444 () Bool)

(assert (=> b!6533990 m!7317444))

(declare-fun m!7317446 () Bool)

(assert (=> b!6534013 m!7317446))

(declare-fun m!7317448 () Bool)

(assert (=> b!6534013 m!7317448))

(declare-fun m!7317450 () Bool)

(assert (=> b!6534013 m!7317450))

(declare-fun m!7317452 () Bool)

(assert (=> b!6534013 m!7317452))

(declare-fun m!7317454 () Bool)

(assert (=> b!6534013 m!7317454))

(declare-fun m!7317456 () Bool)

(assert (=> b!6534013 m!7317456))

(declare-fun m!7317458 () Bool)

(assert (=> b!6534013 m!7317458))

(declare-fun m!7317460 () Bool)

(assert (=> b!6533989 m!7317460))

(declare-fun m!7317462 () Bool)

(assert (=> b!6533989 m!7317462))

(declare-fun m!7317464 () Bool)

(assert (=> b!6533989 m!7317464))

(declare-fun m!7317466 () Bool)

(assert (=> b!6533989 m!7317466))

(declare-fun m!7317468 () Bool)

(assert (=> b!6533989 m!7317468))

(declare-fun m!7317470 () Bool)

(assert (=> b!6534002 m!7317470))

(declare-fun m!7317472 () Bool)

(assert (=> b!6534031 m!7317472))

(declare-fun m!7317474 () Bool)

(assert (=> b!6534021 m!7317474))

(declare-fun m!7317476 () Bool)

(assert (=> b!6534024 m!7317476))

(declare-fun m!7317478 () Bool)

(assert (=> b!6534026 m!7317478))

(declare-fun m!7317480 () Bool)

(assert (=> b!6534007 m!7317480))

(declare-fun m!7317482 () Bool)

(assert (=> b!6533992 m!7317482))

(declare-fun m!7317484 () Bool)

(assert (=> b!6534005 m!7317484))

(assert (=> b!6534005 m!7317484))

(declare-fun m!7317486 () Bool)

(assert (=> b!6534005 m!7317486))

(declare-fun m!7317488 () Bool)

(assert (=> b!6534005 m!7317488))

(declare-fun m!7317490 () Bool)

(assert (=> b!6534005 m!7317490))

(declare-fun m!7317492 () Bool)

(assert (=> b!6534005 m!7317492))

(assert (=> b!6534005 m!7317486))

(declare-fun m!7317494 () Bool)

(assert (=> b!6534005 m!7317494))

(declare-fun m!7317496 () Bool)

(assert (=> b!6533999 m!7317496))

(assert (=> b!6534030 m!7317480))

(declare-fun m!7317498 () Bool)

(assert (=> setNonEmpty!44568 m!7317498))

(assert (=> b!6534009 m!7317428))

(declare-fun m!7317500 () Bool)

(assert (=> b!6534022 m!7317500))

(declare-fun m!7317502 () Bool)

(assert (=> b!6534010 m!7317502))

(assert (=> b!6534010 m!7317502))

(declare-fun m!7317504 () Bool)

(assert (=> b!6534010 m!7317504))

(declare-fun m!7317506 () Bool)

(assert (=> b!6534018 m!7317506))

(declare-fun m!7317508 () Bool)

(assert (=> b!6534018 m!7317508))

(declare-fun m!7317510 () Bool)

(assert (=> b!6534018 m!7317510))

(declare-fun m!7317512 () Bool)

(assert (=> b!6534028 m!7317512))

(declare-fun m!7317514 () Bool)

(assert (=> b!6534032 m!7317514))

(declare-fun m!7317516 () Bool)

(assert (=> b!6534032 m!7317516))

(declare-fun m!7317518 () Bool)

(assert (=> b!6534032 m!7317518))

(declare-fun m!7317520 () Bool)

(assert (=> b!6534032 m!7317520))

(declare-fun m!7317522 () Bool)

(assert (=> b!6534032 m!7317522))

(declare-fun m!7317524 () Bool)

(assert (=> b!6533996 m!7317524))

(declare-fun m!7317526 () Bool)

(assert (=> b!6534004 m!7317526))

(declare-fun m!7317528 () Bool)

(assert (=> b!6534027 m!7317528))

(declare-fun m!7317530 () Bool)

(assert (=> b!6534027 m!7317530))

(declare-fun m!7317532 () Bool)

(assert (=> b!6534000 m!7317532))

(declare-fun m!7317534 () Bool)

(assert (=> b!6534000 m!7317534))

(declare-fun m!7317536 () Bool)

(assert (=> b!6534000 m!7317536))

(declare-fun m!7317538 () Bool)

(assert (=> b!6534017 m!7317538))

(assert (=> b!6534017 m!7317438))

(assert (=> b!6534017 m!7317432))

(assert (=> b!6534017 m!7317442))

(declare-fun m!7317540 () Bool)

(assert (=> b!6534017 m!7317540))

(assert (=> b!6534017 m!7317438))

(declare-fun m!7317542 () Bool)

(assert (=> b!6534017 m!7317542))

(declare-fun m!7317544 () Bool)

(assert (=> b!6534017 m!7317544))

(declare-fun m!7317546 () Bool)

(assert (=> b!6534017 m!7317546))

(declare-fun m!7317548 () Bool)

(assert (=> b!6534012 m!7317548))

(declare-fun m!7317550 () Bool)

(assert (=> b!6533998 m!7317550))

(declare-fun m!7317552 () Bool)

(assert (=> b!6533998 m!7317552))

(declare-fun m!7317554 () Bool)

(assert (=> b!6533998 m!7317554))

(declare-fun m!7317556 () Bool)

(assert (=> b!6533998 m!7317556))

(declare-fun m!7317558 () Bool)

(assert (=> b!6533998 m!7317558))

(declare-fun m!7317560 () Bool)

(assert (=> b!6533998 m!7317560))

(declare-fun m!7317562 () Bool)

(assert (=> b!6533998 m!7317562))

(declare-fun m!7317564 () Bool)

(assert (=> b!6533998 m!7317564))

(declare-fun m!7317566 () Bool)

(assert (=> b!6533998 m!7317566))

(check-sat (not b!6533998) (not b!6534032) (not b!6534028) (not b!6533989) (not b!6534002) (not b!6533994) (not b!6534004) (not start!640650) (not b!6534013) (not b!6534011) tp_is_empty!42063 (not b!6534010) (not b!6534009) (not b!6534007) (not b!6534021) (not b!6534031) (not b!6534024) (not b!6534014) (not b!6533999) (not b!6533991) (not b!6533995) (not b!6534012) (not b!6534030) (not b!6534018) (not b!6534023) (not b!6534027) (not b!6534022) (not b!6534000) (not b!6534017) (not b!6534005) (not b!6534015) (not b!6533992) (not b!6533993) (not setNonEmpty!44568) (not b!6533996) (not b!6533990) (not b!6534026))
(check-sat)
