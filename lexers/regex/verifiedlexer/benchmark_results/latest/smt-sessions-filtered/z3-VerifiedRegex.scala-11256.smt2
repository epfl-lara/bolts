; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!591096 () Bool)

(assert start!591096)

(declare-fun b!5750704 () Bool)

(assert (=> b!5750704 true))

(assert (=> b!5750704 true))

(declare-fun lambda!312002 () Int)

(declare-fun lambda!312001 () Int)

(assert (=> b!5750704 (not (= lambda!312002 lambda!312001))))

(assert (=> b!5750704 true))

(assert (=> b!5750704 true))

(declare-fun b!5750690 () Bool)

(assert (=> b!5750690 true))

(declare-fun setIsEmpty!38601 () Bool)

(declare-fun setRes!38601 () Bool)

(assert (=> setIsEmpty!38601 setRes!38601))

(declare-fun b!5750670 () Bool)

(declare-fun e!3534314 () Bool)

(declare-fun tp_is_empty!40771 () Bool)

(declare-fun tp!1589686 () Bool)

(assert (=> b!5750670 (= e!3534314 (and tp_is_empty!40771 tp!1589686))))

(declare-fun b!5750671 () Bool)

(declare-fun res!2427911 () Bool)

(declare-fun e!3534302 () Bool)

(assert (=> b!5750671 (=> res!2427911 e!3534302)))

(declare-datatypes ((C!31788 0))(
  ( (C!31789 (val!25596 Int)) )
))
(declare-datatypes ((Regex!15759 0))(
  ( (ElementMatch!15759 (c!1015787 C!31788)) (Concat!24604 (regOne!32030 Regex!15759) (regTwo!32030 Regex!15759)) (EmptyExpr!15759) (Star!15759 (reg!16088 Regex!15759)) (EmptyLang!15759) (Union!15759 (regOne!32031 Regex!15759) (regTwo!32031 Regex!15759)) )
))
(declare-fun lt!2287056 () Regex!15759)

(declare-fun r!7292 () Regex!15759)

(assert (=> b!5750671 (= res!2427911 (not (= lt!2287056 r!7292)))))

(declare-fun b!5750672 () Bool)

(declare-fun e!3534301 () Bool)

(declare-fun e!3534318 () Bool)

(assert (=> b!5750672 (= e!3534301 e!3534318)))

(declare-fun res!2427910 () Bool)

(assert (=> b!5750672 (=> res!2427910 e!3534318)))

(declare-fun lt!2287036 () Bool)

(assert (=> b!5750672 (= res!2427910 lt!2287036)))

(declare-fun lt!2287030 () Regex!15759)

(declare-datatypes ((List!63576 0))(
  ( (Nil!63452) (Cons!63452 (h!69900 C!31788) (t!376906 List!63576)) )
))
(declare-fun s!2326 () List!63576)

(declare-fun matchR!7944 (Regex!15759 List!63576) Bool)

(declare-fun matchRSpec!2862 (Regex!15759 List!63576) Bool)

(assert (=> b!5750672 (= (matchR!7944 lt!2287030 s!2326) (matchRSpec!2862 lt!2287030 s!2326))))

(declare-datatypes ((Unit!156568 0))(
  ( (Unit!156569) )
))
(declare-fun lt!2287040 () Unit!156568)

(declare-fun mainMatchTheorem!2862 (Regex!15759 List!63576) Unit!156568)

(assert (=> b!5750672 (= lt!2287040 (mainMatchTheorem!2862 lt!2287030 s!2326))))

(declare-fun b!5750673 () Bool)

(declare-fun e!3534303 () Bool)

(assert (=> b!5750673 (= e!3534303 e!3534302)))

(declare-fun res!2427934 () Bool)

(assert (=> b!5750673 (=> res!2427934 e!3534302)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63577 0))(
  ( (Nil!63453) (Cons!63453 (h!69901 Regex!15759) (t!376907 List!63577)) )
))
(declare-datatypes ((Context!10286 0))(
  ( (Context!10287 (exprs!5643 List!63577)) )
))
(declare-fun lt!2287059 () (InoxSet Context!10286))

(declare-fun lt!2287057 () (InoxSet Context!10286))

(assert (=> b!5750673 (= res!2427934 (not (= lt!2287059 lt!2287057)))))

(declare-fun lambda!312003 () Int)

(declare-fun lt!2287053 () (InoxSet Context!10286))

(declare-fun lt!2287026 () Context!10286)

(declare-fun flatMap!1372 ((InoxSet Context!10286) Int) (InoxSet Context!10286))

(declare-fun derivationStepZipperUp!1027 (Context!10286 C!31788) (InoxSet Context!10286))

(assert (=> b!5750673 (= (flatMap!1372 lt!2287053 lambda!312003) (derivationStepZipperUp!1027 lt!2287026 (h!69900 s!2326)))))

(declare-fun lt!2287038 () Unit!156568)

(declare-fun lemmaFlatMapOnSingletonSet!904 ((InoxSet Context!10286) Context!10286 Int) Unit!156568)

(assert (=> b!5750673 (= lt!2287038 (lemmaFlatMapOnSingletonSet!904 lt!2287053 lt!2287026 lambda!312003))))

(declare-fun lt!2287044 () (InoxSet Context!10286))

(assert (=> b!5750673 (= lt!2287044 (derivationStepZipperUp!1027 lt!2287026 (h!69900 s!2326)))))

(declare-fun derivationStepZipper!1842 ((InoxSet Context!10286) C!31788) (InoxSet Context!10286))

(assert (=> b!5750673 (= lt!2287059 (derivationStepZipper!1842 lt!2287053 (h!69900 s!2326)))))

(assert (=> b!5750673 (= lt!2287053 (store ((as const (Array Context!10286 Bool)) false) lt!2287026 true))))

(declare-fun lt!2287037 () List!63577)

(assert (=> b!5750673 (= lt!2287026 (Context!10287 (Cons!63453 (reg!16088 (regOne!32030 r!7292)) lt!2287037)))))

(declare-fun b!5750674 () Bool)

(declare-fun e!3534311 () Bool)

(assert (=> b!5750674 (= e!3534311 true)))

(declare-fun lt!2287052 () Regex!15759)

(declare-fun lt!2287041 () (InoxSet Context!10286))

(declare-fun matchZipper!1897 ((InoxSet Context!10286) List!63576) Bool)

(assert (=> b!5750674 (= (matchR!7944 lt!2287052 s!2326) (matchZipper!1897 lt!2287041 s!2326))))

(declare-fun lt!2287028 () Unit!156568)

(declare-datatypes ((List!63578 0))(
  ( (Nil!63454) (Cons!63454 (h!69902 Context!10286) (t!376908 List!63578)) )
))
(declare-fun lt!2287031 () List!63578)

(declare-fun theoremZipperRegexEquiv!671 ((InoxSet Context!10286) List!63578 Regex!15759 List!63576) Unit!156568)

(assert (=> b!5750674 (= lt!2287028 (theoremZipperRegexEquiv!671 lt!2287041 lt!2287031 lt!2287052 s!2326))))

(declare-fun b!5750675 () Bool)

(declare-fun e!3534315 () Bool)

(declare-fun tp!1589690 () Bool)

(declare-fun tp!1589684 () Bool)

(assert (=> b!5750675 (= e!3534315 (and tp!1589690 tp!1589684))))

(declare-fun b!5750677 () Bool)

(declare-fun e!3534312 () Bool)

(assert (=> b!5750677 (= e!3534312 e!3534301)))

(declare-fun res!2427942 () Bool)

(assert (=> b!5750677 (=> res!2427942 e!3534301)))

(declare-fun lt!2287055 () Context!10286)

(declare-fun unfocusZipper!1501 (List!63578) Regex!15759)

(assert (=> b!5750677 (= res!2427942 (not (= (unfocusZipper!1501 (Cons!63454 lt!2287055 Nil!63454)) (reg!16088 (regOne!32030 r!7292)))))))

(declare-fun lt!2287048 () (InoxSet Context!10286))

(declare-fun lt!2287039 () Context!10286)

(assert (=> b!5750677 (= (flatMap!1372 lt!2287048 lambda!312003) (derivationStepZipperUp!1027 lt!2287039 (h!69900 s!2326)))))

(declare-fun lt!2287060 () Unit!156568)

(assert (=> b!5750677 (= lt!2287060 (lemmaFlatMapOnSingletonSet!904 lt!2287048 lt!2287039 lambda!312003))))

(declare-fun lt!2287025 () (InoxSet Context!10286))

(assert (=> b!5750677 (= (flatMap!1372 lt!2287025 lambda!312003) (derivationStepZipperUp!1027 lt!2287055 (h!69900 s!2326)))))

(declare-fun lt!2287046 () Unit!156568)

(assert (=> b!5750677 (= lt!2287046 (lemmaFlatMapOnSingletonSet!904 lt!2287025 lt!2287055 lambda!312003))))

(declare-fun lt!2287061 () (InoxSet Context!10286))

(assert (=> b!5750677 (= lt!2287061 (derivationStepZipperUp!1027 lt!2287039 (h!69900 s!2326)))))

(declare-fun lt!2287054 () (InoxSet Context!10286))

(assert (=> b!5750677 (= lt!2287054 (derivationStepZipperUp!1027 lt!2287055 (h!69900 s!2326)))))

(assert (=> b!5750677 (= lt!2287048 (store ((as const (Array Context!10286 Bool)) false) lt!2287039 true))))

(assert (=> b!5750677 (= lt!2287025 (store ((as const (Array Context!10286 Bool)) false) lt!2287055 true))))

(assert (=> b!5750677 (= lt!2287055 (Context!10287 (Cons!63453 (reg!16088 (regOne!32030 r!7292)) Nil!63453)))))

(declare-fun b!5750678 () Bool)

(declare-fun e!3534299 () Bool)

(declare-fun tp!1589688 () Bool)

(assert (=> b!5750678 (= e!3534299 tp!1589688)))

(declare-fun b!5750679 () Bool)

(declare-fun e!3534304 () Bool)

(assert (=> b!5750679 (= e!3534302 e!3534304)))

(declare-fun res!2427926 () Bool)

(assert (=> b!5750679 (=> res!2427926 e!3534304)))

(declare-fun lt!2287043 () Regex!15759)

(assert (=> b!5750679 (= res!2427926 (not (= r!7292 lt!2287043)))))

(declare-fun lt!2287032 () Regex!15759)

(assert (=> b!5750679 (= lt!2287043 (Concat!24604 lt!2287032 (regTwo!32030 r!7292)))))

(declare-fun b!5750680 () Bool)

(declare-fun e!3534310 () Bool)

(assert (=> b!5750680 (= e!3534318 e!3534310)))

(declare-fun res!2427923 () Bool)

(assert (=> b!5750680 (=> res!2427923 e!3534310)))

(declare-fun e!3534300 () Bool)

(assert (=> b!5750680 (= res!2427923 e!3534300)))

(declare-fun res!2427939 () Bool)

(assert (=> b!5750680 (=> (not res!2427939) (not e!3534300))))

(declare-fun lt!2287034 () Bool)

(assert (=> b!5750680 (= res!2427939 (not lt!2287034))))

(declare-fun lt!2287051 () (InoxSet Context!10286))

(assert (=> b!5750680 (= lt!2287034 (matchZipper!1897 lt!2287051 (t!376906 s!2326)))))

(declare-fun b!5750681 () Bool)

(assert (=> b!5750681 (= e!3534315 tp_is_empty!40771)))

(declare-fun b!5750682 () Bool)

(declare-fun res!2427927 () Bool)

(declare-fun e!3534297 () Bool)

(assert (=> b!5750682 (=> res!2427927 e!3534297)))

(declare-fun zl!343 () List!63578)

(declare-fun isEmpty!35337 (List!63577) Bool)

(assert (=> b!5750682 (= res!2427927 (isEmpty!35337 (t!376907 (exprs!5643 (h!69902 zl!343)))))))

(declare-fun b!5750683 () Bool)

(declare-fun res!2427931 () Bool)

(assert (=> b!5750683 (=> res!2427931 e!3534301)))

(assert (=> b!5750683 (= res!2427931 (not (= (unfocusZipper!1501 (Cons!63454 lt!2287039 Nil!63454)) lt!2287043)))))

(declare-fun b!5750684 () Bool)

(declare-fun e!3534313 () Bool)

(assert (=> b!5750684 (= e!3534313 e!3534303)))

(declare-fun res!2427935 () Bool)

(assert (=> b!5750684 (=> res!2427935 e!3534303)))

(assert (=> b!5750684 (= res!2427935 (not (= lt!2287051 lt!2287057)))))

(declare-fun derivationStepZipperDown!1101 (Regex!15759 Context!10286 C!31788) (InoxSet Context!10286))

(assert (=> b!5750684 (= lt!2287057 (derivationStepZipperDown!1101 (reg!16088 (regOne!32030 r!7292)) lt!2287039 (h!69900 s!2326)))))

(assert (=> b!5750684 (= lt!2287039 (Context!10287 lt!2287037))))

(assert (=> b!5750684 (= lt!2287037 (Cons!63453 lt!2287032 (t!376907 (exprs!5643 (h!69902 zl!343)))))))

(assert (=> b!5750684 (= lt!2287032 (Star!15759 (reg!16088 (regOne!32030 r!7292))))))

(declare-fun b!5750685 () Bool)

(declare-fun e!3534306 () Unit!156568)

(declare-fun Unit!156570 () Unit!156568)

(assert (=> b!5750685 (= e!3534306 Unit!156570)))

(declare-fun b!5750686 () Bool)

(declare-fun res!2427937 () Bool)

(declare-fun e!3534305 () Bool)

(assert (=> b!5750686 (=> (not res!2427937) (not e!3534305))))

(declare-fun z!1189 () (InoxSet Context!10286))

(declare-fun toList!9543 ((InoxSet Context!10286)) List!63578)

(assert (=> b!5750686 (= res!2427937 (= (toList!9543 z!1189) zl!343))))

(declare-fun b!5750687 () Bool)

(declare-fun res!2427916 () Bool)

(assert (=> b!5750687 (=> res!2427916 e!3534302)))

(assert (=> b!5750687 (= res!2427916 (not (= (matchZipper!1897 lt!2287053 s!2326) (matchZipper!1897 lt!2287059 (t!376906 s!2326)))))))

(declare-fun b!5750688 () Bool)

(declare-fun e!3534308 () Bool)

(assert (=> b!5750688 (= e!3534308 e!3534311)))

(declare-fun res!2427922 () Bool)

(assert (=> b!5750688 (=> res!2427922 e!3534311)))

(declare-fun zipperDepth!234 (List!63578) Int)

(assert (=> b!5750688 (= res!2427922 (< (zipperDepth!234 zl!343) (zipperDepth!234 lt!2287031)))))

(declare-fun lt!2287029 () Context!10286)

(assert (=> b!5750688 (= lt!2287031 (Cons!63454 lt!2287029 Nil!63454))))

(declare-fun b!5750689 () Bool)

(declare-fun res!2427936 () Bool)

(declare-fun e!3534309 () Bool)

(assert (=> b!5750689 (=> res!2427936 e!3534309)))

(declare-fun isEmpty!35338 (List!63578) Bool)

(assert (=> b!5750689 (= res!2427936 (not (isEmpty!35338 (t!376908 zl!343))))))

(assert (=> b!5750690 (= e!3534297 e!3534313)))

(declare-fun res!2427925 () Bool)

(assert (=> b!5750690 (=> res!2427925 e!3534313)))

(get-info :version)

(assert (=> b!5750690 (= res!2427925 (or (and ((_ is ElementMatch!15759) (regOne!32030 r!7292)) (= (c!1015787 (regOne!32030 r!7292)) (h!69900 s!2326))) ((_ is Union!15759) (regOne!32030 r!7292))))))

(declare-fun lt!2287045 () Unit!156568)

(assert (=> b!5750690 (= lt!2287045 e!3534306)))

(declare-fun c!1015786 () Bool)

(declare-fun lt!2287058 () Bool)

(assert (=> b!5750690 (= c!1015786 lt!2287058)))

(declare-fun nullable!5791 (Regex!15759) Bool)

(assert (=> b!5750690 (= lt!2287058 (nullable!5791 (h!69901 (exprs!5643 (h!69902 zl!343)))))))

(assert (=> b!5750690 (= (flatMap!1372 z!1189 lambda!312003) (derivationStepZipperUp!1027 (h!69902 zl!343) (h!69900 s!2326)))))

(declare-fun lt!2287049 () Unit!156568)

(assert (=> b!5750690 (= lt!2287049 (lemmaFlatMapOnSingletonSet!904 z!1189 (h!69902 zl!343) lambda!312003))))

(declare-fun lt!2287050 () (InoxSet Context!10286))

(assert (=> b!5750690 (= lt!2287050 (derivationStepZipperUp!1027 lt!2287029 (h!69900 s!2326)))))

(assert (=> b!5750690 (= lt!2287051 (derivationStepZipperDown!1101 (h!69901 (exprs!5643 (h!69902 zl!343))) lt!2287029 (h!69900 s!2326)))))

(assert (=> b!5750690 (= lt!2287029 (Context!10287 (t!376907 (exprs!5643 (h!69902 zl!343)))))))

(declare-fun lt!2287033 () (InoxSet Context!10286))

(assert (=> b!5750690 (= lt!2287033 (derivationStepZipperUp!1027 (Context!10287 (Cons!63453 (h!69901 (exprs!5643 (h!69902 zl!343))) (t!376907 (exprs!5643 (h!69902 zl!343))))) (h!69900 s!2326)))))

(declare-fun b!5750691 () Bool)

(declare-fun res!2427924 () Bool)

(assert (=> b!5750691 (=> res!2427924 e!3534310)))

(assert (=> b!5750691 (= res!2427924 (not (matchZipper!1897 lt!2287050 (t!376906 s!2326))))))

(declare-fun b!5750692 () Bool)

(declare-fun e!3534319 () Bool)

(declare-fun tp!1589689 () Bool)

(assert (=> b!5750692 (= e!3534319 tp!1589689)))

(declare-fun e!3534298 () Bool)

(declare-fun b!5750693 () Bool)

(declare-fun tp!1589683 () Bool)

(declare-fun inv!82644 (Context!10286) Bool)

(assert (=> b!5750693 (= e!3534298 (and (inv!82644 (h!69902 zl!343)) e!3534319 tp!1589683))))

(declare-fun b!5750694 () Bool)

(declare-fun res!2427940 () Bool)

(assert (=> b!5750694 (=> res!2427940 e!3534309)))

(assert (=> b!5750694 (= res!2427940 (or ((_ is EmptyExpr!15759) r!7292) ((_ is EmptyLang!15759) r!7292) ((_ is ElementMatch!15759) r!7292) ((_ is Union!15759) r!7292) (not ((_ is Concat!24604) r!7292))))))

(declare-fun b!5750695 () Bool)

(declare-fun tp!1589687 () Bool)

(assert (=> b!5750695 (= e!3534315 tp!1589687)))

(declare-fun b!5750696 () Bool)

(declare-fun e!3534320 () Bool)

(assert (=> b!5750696 (= e!3534305 e!3534320)))

(declare-fun res!2427914 () Bool)

(assert (=> b!5750696 (=> (not res!2427914) (not e!3534320))))

(assert (=> b!5750696 (= res!2427914 (= r!7292 lt!2287056))))

(assert (=> b!5750696 (= lt!2287056 (unfocusZipper!1501 zl!343))))

(declare-fun b!5750697 () Bool)

(assert (=> b!5750697 (= e!3534304 e!3534312)))

(declare-fun res!2427938 () Bool)

(assert (=> b!5750697 (=> res!2427938 e!3534312)))

(assert (=> b!5750697 (= res!2427938 (not (= (unfocusZipper!1501 (Cons!63454 lt!2287026 Nil!63454)) lt!2287030)))))

(assert (=> b!5750697 (= lt!2287030 (Concat!24604 (reg!16088 (regOne!32030 r!7292)) lt!2287043))))

(declare-fun b!5750698 () Bool)

(declare-fun res!2427915 () Bool)

(assert (=> b!5750698 (=> res!2427915 e!3534309)))

(declare-fun generalisedConcat!1374 (List!63577) Regex!15759)

(assert (=> b!5750698 (= res!2427915 (not (= r!7292 (generalisedConcat!1374 (exprs!5643 (h!69902 zl!343))))))))

(declare-fun b!5750699 () Bool)

(assert (=> b!5750699 (= e!3534320 (not e!3534309))))

(declare-fun res!2427919 () Bool)

(assert (=> b!5750699 (=> res!2427919 e!3534309)))

(assert (=> b!5750699 (= res!2427919 (not ((_ is Cons!63454) zl!343)))))

(assert (=> b!5750699 (= lt!2287036 (matchRSpec!2862 r!7292 s!2326))))

(assert (=> b!5750699 (= lt!2287036 (matchR!7944 r!7292 s!2326))))

(declare-fun lt!2287042 () Unit!156568)

(assert (=> b!5750699 (= lt!2287042 (mainMatchTheorem!2862 r!7292 s!2326))))

(declare-fun b!5750700 () Bool)

(declare-fun res!2427943 () Bool)

(assert (=> b!5750700 (=> res!2427943 e!3534313)))

(declare-fun e!3534316 () Bool)

(assert (=> b!5750700 (= res!2427943 e!3534316)))

(declare-fun res!2427929 () Bool)

(assert (=> b!5750700 (=> (not res!2427929) (not e!3534316))))

(assert (=> b!5750700 (= res!2427929 ((_ is Concat!24604) (regOne!32030 r!7292)))))

(declare-fun b!5750676 () Bool)

(declare-fun res!2427932 () Bool)

(assert (=> b!5750676 (=> res!2427932 e!3534310)))

(assert (=> b!5750676 (= res!2427932 lt!2287034)))

(declare-fun res!2427933 () Bool)

(assert (=> start!591096 (=> (not res!2427933) (not e!3534305))))

(declare-fun validRegex!7495 (Regex!15759) Bool)

(assert (=> start!591096 (= res!2427933 (validRegex!7495 r!7292))))

(assert (=> start!591096 e!3534305))

(assert (=> start!591096 e!3534315))

(declare-fun condSetEmpty!38601 () Bool)

(assert (=> start!591096 (= condSetEmpty!38601 (= z!1189 ((as const (Array Context!10286 Bool)) false)))))

(assert (=> start!591096 setRes!38601))

(assert (=> start!591096 e!3534298))

(assert (=> start!591096 e!3534314))

(declare-fun b!5750701 () Bool)

(declare-fun e!3534307 () Bool)

(assert (=> b!5750701 (= e!3534310 e!3534307)))

(declare-fun res!2427918 () Bool)

(assert (=> b!5750701 (=> res!2427918 e!3534307)))

(assert (=> b!5750701 (= res!2427918 (not (= lt!2287050 (derivationStepZipper!1842 lt!2287041 (h!69900 s!2326)))))))

(assert (=> b!5750701 (= (flatMap!1372 lt!2287041 lambda!312003) (derivationStepZipperUp!1027 lt!2287029 (h!69900 s!2326)))))

(declare-fun lt!2287027 () Unit!156568)

(assert (=> b!5750701 (= lt!2287027 (lemmaFlatMapOnSingletonSet!904 lt!2287041 lt!2287029 lambda!312003))))

(assert (=> b!5750701 (= lt!2287041 (store ((as const (Array Context!10286 Bool)) false) lt!2287029 true))))

(declare-fun b!5750702 () Bool)

(declare-fun e!3534317 () Bool)

(assert (=> b!5750702 (= e!3534317 (matchZipper!1897 lt!2287050 (t!376906 s!2326)))))

(declare-fun setElem!38601 () Context!10286)

(declare-fun setNonEmpty!38601 () Bool)

(declare-fun tp!1589681 () Bool)

(assert (=> setNonEmpty!38601 (= setRes!38601 (and tp!1589681 (inv!82644 setElem!38601) e!3534299))))

(declare-fun setRest!38601 () (InoxSet Context!10286))

(assert (=> setNonEmpty!38601 (= z!1189 ((_ map or) (store ((as const (Array Context!10286 Bool)) false) setElem!38601 true) setRest!38601))))

(declare-fun b!5750703 () Bool)

(declare-fun tp!1589685 () Bool)

(declare-fun tp!1589682 () Bool)

(assert (=> b!5750703 (= e!3534315 (and tp!1589685 tp!1589682))))

(assert (=> b!5750704 (= e!3534309 e!3534297)))

(declare-fun res!2427913 () Bool)

(assert (=> b!5750704 (=> res!2427913 e!3534297)))

(declare-fun lt!2287024 () Bool)

(assert (=> b!5750704 (= res!2427913 (or (not (= lt!2287036 lt!2287024)) ((_ is Nil!63452) s!2326)))))

(declare-fun Exists!2859 (Int) Bool)

(assert (=> b!5750704 (= (Exists!2859 lambda!312001) (Exists!2859 lambda!312002))))

(declare-fun lt!2287035 () Unit!156568)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1488 (Regex!15759 Regex!15759 List!63576) Unit!156568)

(assert (=> b!5750704 (= lt!2287035 (lemmaExistCutMatchRandMatchRSpecEquivalent!1488 (regOne!32030 r!7292) (regTwo!32030 r!7292) s!2326))))

(assert (=> b!5750704 (= lt!2287024 (Exists!2859 lambda!312001))))

(declare-datatypes ((tuple2!65712 0))(
  ( (tuple2!65713 (_1!36159 List!63576) (_2!36159 List!63576)) )
))
(declare-datatypes ((Option!15768 0))(
  ( (None!15767) (Some!15767 (v!51824 tuple2!65712)) )
))
(declare-fun isDefined!12471 (Option!15768) Bool)

(declare-fun findConcatSeparation!2182 (Regex!15759 Regex!15759 List!63576 List!63576 List!63576) Option!15768)

(assert (=> b!5750704 (= lt!2287024 (isDefined!12471 (findConcatSeparation!2182 (regOne!32030 r!7292) (regTwo!32030 r!7292) Nil!63452 s!2326 s!2326)))))

(declare-fun lt!2287047 () Unit!156568)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1946 (Regex!15759 Regex!15759 List!63576) Unit!156568)

(assert (=> b!5750704 (= lt!2287047 (lemmaFindConcatSeparationEquivalentToExists!1946 (regOne!32030 r!7292) (regTwo!32030 r!7292) s!2326))))

(declare-fun b!5750705 () Bool)

(declare-fun res!2427920 () Bool)

(assert (=> b!5750705 (=> res!2427920 e!3534318)))

(assert (=> b!5750705 (= res!2427920 (not lt!2287058))))

(declare-fun b!5750706 () Bool)

(declare-fun Unit!156571 () Unit!156568)

(assert (=> b!5750706 (= e!3534306 Unit!156571)))

(declare-fun lt!2287062 () Unit!156568)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!784 ((InoxSet Context!10286) (InoxSet Context!10286) List!63576) Unit!156568)

(assert (=> b!5750706 (= lt!2287062 (lemmaZipperConcatMatchesSameAsBothZippers!784 lt!2287051 lt!2287050 (t!376906 s!2326)))))

(declare-fun res!2427928 () Bool)

(assert (=> b!5750706 (= res!2427928 (matchZipper!1897 lt!2287051 (t!376906 s!2326)))))

(assert (=> b!5750706 (=> res!2427928 e!3534317)))

(assert (=> b!5750706 (= (matchZipper!1897 ((_ map or) lt!2287051 lt!2287050) (t!376906 s!2326)) e!3534317)))

(declare-fun b!5750707 () Bool)

(declare-fun res!2427930 () Bool)

(assert (=> b!5750707 (=> res!2427930 e!3534313)))

(assert (=> b!5750707 (= res!2427930 (or ((_ is Concat!24604) (regOne!32030 r!7292)) (not ((_ is Star!15759) (regOne!32030 r!7292)))))))

(declare-fun b!5750708 () Bool)

(assert (=> b!5750708 (= e!3534307 e!3534308)))

(declare-fun res!2427917 () Bool)

(assert (=> b!5750708 (=> res!2427917 e!3534308)))

(declare-fun regexDepth!236 (Regex!15759) Int)

(assert (=> b!5750708 (= res!2427917 (< (regexDepth!236 r!7292) (regexDepth!236 lt!2287052)))))

(assert (=> b!5750708 (= lt!2287052 (generalisedConcat!1374 (t!376907 (exprs!5643 (h!69902 zl!343)))))))

(declare-fun b!5750709 () Bool)

(declare-fun res!2427941 () Bool)

(assert (=> b!5750709 (=> res!2427941 e!3534309)))

(assert (=> b!5750709 (= res!2427941 (not ((_ is Cons!63453) (exprs!5643 (h!69902 zl!343)))))))

(declare-fun b!5750710 () Bool)

(assert (=> b!5750710 (= e!3534300 (not (matchZipper!1897 lt!2287050 (t!376906 s!2326))))))

(declare-fun b!5750711 () Bool)

(declare-fun res!2427912 () Bool)

(assert (=> b!5750711 (=> res!2427912 e!3534318)))

(assert (=> b!5750711 (= res!2427912 (not (matchZipper!1897 z!1189 s!2326)))))

(declare-fun b!5750712 () Bool)

(declare-fun res!2427921 () Bool)

(assert (=> b!5750712 (=> res!2427921 e!3534309)))

(declare-fun generalisedUnion!1622 (List!63577) Regex!15759)

(declare-fun unfocusZipperList!1187 (List!63578) List!63577)

(assert (=> b!5750712 (= res!2427921 (not (= r!7292 (generalisedUnion!1622 (unfocusZipperList!1187 zl!343)))))))

(declare-fun b!5750713 () Bool)

(assert (=> b!5750713 (= e!3534316 (nullable!5791 (regOne!32030 (regOne!32030 r!7292))))))

(assert (= (and start!591096 res!2427933) b!5750686))

(assert (= (and b!5750686 res!2427937) b!5750696))

(assert (= (and b!5750696 res!2427914) b!5750699))

(assert (= (and b!5750699 (not res!2427919)) b!5750689))

(assert (= (and b!5750689 (not res!2427936)) b!5750698))

(assert (= (and b!5750698 (not res!2427915)) b!5750709))

(assert (= (and b!5750709 (not res!2427941)) b!5750712))

(assert (= (and b!5750712 (not res!2427921)) b!5750694))

(assert (= (and b!5750694 (not res!2427940)) b!5750704))

(assert (= (and b!5750704 (not res!2427913)) b!5750682))

(assert (= (and b!5750682 (not res!2427927)) b!5750690))

(assert (= (and b!5750690 c!1015786) b!5750706))

(assert (= (and b!5750690 (not c!1015786)) b!5750685))

(assert (= (and b!5750706 (not res!2427928)) b!5750702))

(assert (= (and b!5750690 (not res!2427925)) b!5750700))

(assert (= (and b!5750700 res!2427929) b!5750713))

(assert (= (and b!5750700 (not res!2427943)) b!5750707))

(assert (= (and b!5750707 (not res!2427930)) b!5750684))

(assert (= (and b!5750684 (not res!2427935)) b!5750673))

(assert (= (and b!5750673 (not res!2427934)) b!5750687))

(assert (= (and b!5750687 (not res!2427916)) b!5750671))

(assert (= (and b!5750671 (not res!2427911)) b!5750679))

(assert (= (and b!5750679 (not res!2427926)) b!5750697))

(assert (= (and b!5750697 (not res!2427938)) b!5750677))

(assert (= (and b!5750677 (not res!2427942)) b!5750683))

(assert (= (and b!5750683 (not res!2427931)) b!5750672))

(assert (= (and b!5750672 (not res!2427910)) b!5750711))

(assert (= (and b!5750711 (not res!2427912)) b!5750705))

(assert (= (and b!5750705 (not res!2427920)) b!5750680))

(assert (= (and b!5750680 res!2427939) b!5750710))

(assert (= (and b!5750680 (not res!2427923)) b!5750676))

(assert (= (and b!5750676 (not res!2427932)) b!5750691))

(assert (= (and b!5750691 (not res!2427924)) b!5750701))

(assert (= (and b!5750701 (not res!2427918)) b!5750708))

(assert (= (and b!5750708 (not res!2427917)) b!5750688))

(assert (= (and b!5750688 (not res!2427922)) b!5750674))

(assert (= (and start!591096 ((_ is ElementMatch!15759) r!7292)) b!5750681))

(assert (= (and start!591096 ((_ is Concat!24604) r!7292)) b!5750675))

(assert (= (and start!591096 ((_ is Star!15759) r!7292)) b!5750695))

(assert (= (and start!591096 ((_ is Union!15759) r!7292)) b!5750703))

(assert (= (and start!591096 condSetEmpty!38601) setIsEmpty!38601))

(assert (= (and start!591096 (not condSetEmpty!38601)) setNonEmpty!38601))

(assert (= setNonEmpty!38601 b!5750678))

(assert (= b!5750693 b!5750692))

(assert (= (and start!591096 ((_ is Cons!63454) zl!343)) b!5750693))

(assert (= (and start!591096 ((_ is Cons!63452) s!2326)) b!5750670))

(declare-fun m!6700690 () Bool)

(assert (=> b!5750713 m!6700690))

(declare-fun m!6700692 () Bool)

(assert (=> setNonEmpty!38601 m!6700692))

(declare-fun m!6700694 () Bool)

(assert (=> b!5750696 m!6700694))

(declare-fun m!6700696 () Bool)

(assert (=> b!5750701 m!6700696))

(declare-fun m!6700698 () Bool)

(assert (=> b!5750701 m!6700698))

(declare-fun m!6700700 () Bool)

(assert (=> b!5750701 m!6700700))

(declare-fun m!6700702 () Bool)

(assert (=> b!5750701 m!6700702))

(declare-fun m!6700704 () Bool)

(assert (=> b!5750701 m!6700704))

(declare-fun m!6700706 () Bool)

(assert (=> b!5750686 m!6700706))

(declare-fun m!6700708 () Bool)

(assert (=> b!5750699 m!6700708))

(declare-fun m!6700710 () Bool)

(assert (=> b!5750699 m!6700710))

(declare-fun m!6700712 () Bool)

(assert (=> b!5750699 m!6700712))

(declare-fun m!6700714 () Bool)

(assert (=> b!5750712 m!6700714))

(assert (=> b!5750712 m!6700714))

(declare-fun m!6700716 () Bool)

(assert (=> b!5750712 m!6700716))

(declare-fun m!6700718 () Bool)

(assert (=> b!5750710 m!6700718))

(declare-fun m!6700720 () Bool)

(assert (=> b!5750682 m!6700720))

(assert (=> b!5750691 m!6700718))

(declare-fun m!6700722 () Bool)

(assert (=> b!5750706 m!6700722))

(declare-fun m!6700724 () Bool)

(assert (=> b!5750706 m!6700724))

(declare-fun m!6700726 () Bool)

(assert (=> b!5750706 m!6700726))

(declare-fun m!6700728 () Bool)

(assert (=> b!5750690 m!6700728))

(declare-fun m!6700730 () Bool)

(assert (=> b!5750690 m!6700730))

(declare-fun m!6700732 () Bool)

(assert (=> b!5750690 m!6700732))

(assert (=> b!5750690 m!6700702))

(declare-fun m!6700734 () Bool)

(assert (=> b!5750690 m!6700734))

(declare-fun m!6700736 () Bool)

(assert (=> b!5750690 m!6700736))

(declare-fun m!6700738 () Bool)

(assert (=> b!5750690 m!6700738))

(declare-fun m!6700740 () Bool)

(assert (=> b!5750697 m!6700740))

(declare-fun m!6700742 () Bool)

(assert (=> b!5750693 m!6700742))

(declare-fun m!6700744 () Bool)

(assert (=> b!5750672 m!6700744))

(declare-fun m!6700746 () Bool)

(assert (=> b!5750672 m!6700746))

(declare-fun m!6700748 () Bool)

(assert (=> b!5750672 m!6700748))

(declare-fun m!6700750 () Bool)

(assert (=> b!5750689 m!6700750))

(declare-fun m!6700752 () Bool)

(assert (=> start!591096 m!6700752))

(declare-fun m!6700754 () Bool)

(assert (=> b!5750683 m!6700754))

(declare-fun m!6700756 () Bool)

(assert (=> b!5750708 m!6700756))

(declare-fun m!6700758 () Bool)

(assert (=> b!5750708 m!6700758))

(declare-fun m!6700760 () Bool)

(assert (=> b!5750708 m!6700760))

(declare-fun m!6700762 () Bool)

(assert (=> b!5750673 m!6700762))

(declare-fun m!6700764 () Bool)

(assert (=> b!5750673 m!6700764))

(declare-fun m!6700766 () Bool)

(assert (=> b!5750673 m!6700766))

(declare-fun m!6700768 () Bool)

(assert (=> b!5750673 m!6700768))

(declare-fun m!6700770 () Bool)

(assert (=> b!5750673 m!6700770))

(assert (=> b!5750702 m!6700718))

(declare-fun m!6700772 () Bool)

(assert (=> b!5750704 m!6700772))

(declare-fun m!6700774 () Bool)

(assert (=> b!5750704 m!6700774))

(declare-fun m!6700776 () Bool)

(assert (=> b!5750704 m!6700776))

(assert (=> b!5750704 m!6700776))

(declare-fun m!6700778 () Bool)

(assert (=> b!5750704 m!6700778))

(declare-fun m!6700780 () Bool)

(assert (=> b!5750704 m!6700780))

(assert (=> b!5750704 m!6700772))

(declare-fun m!6700782 () Bool)

(assert (=> b!5750704 m!6700782))

(assert (=> b!5750680 m!6700724))

(declare-fun m!6700784 () Bool)

(assert (=> b!5750674 m!6700784))

(declare-fun m!6700786 () Bool)

(assert (=> b!5750674 m!6700786))

(declare-fun m!6700788 () Bool)

(assert (=> b!5750674 m!6700788))

(declare-fun m!6700790 () Bool)

(assert (=> b!5750688 m!6700790))

(declare-fun m!6700792 () Bool)

(assert (=> b!5750688 m!6700792))

(declare-fun m!6700794 () Bool)

(assert (=> b!5750677 m!6700794))

(declare-fun m!6700796 () Bool)

(assert (=> b!5750677 m!6700796))

(declare-fun m!6700798 () Bool)

(assert (=> b!5750677 m!6700798))

(declare-fun m!6700800 () Bool)

(assert (=> b!5750677 m!6700800))

(declare-fun m!6700802 () Bool)

(assert (=> b!5750677 m!6700802))

(declare-fun m!6700804 () Bool)

(assert (=> b!5750677 m!6700804))

(declare-fun m!6700806 () Bool)

(assert (=> b!5750677 m!6700806))

(declare-fun m!6700808 () Bool)

(assert (=> b!5750677 m!6700808))

(declare-fun m!6700810 () Bool)

(assert (=> b!5750677 m!6700810))

(declare-fun m!6700812 () Bool)

(assert (=> b!5750698 m!6700812))

(declare-fun m!6700814 () Bool)

(assert (=> b!5750711 m!6700814))

(declare-fun m!6700816 () Bool)

(assert (=> b!5750684 m!6700816))

(declare-fun m!6700818 () Bool)

(assert (=> b!5750687 m!6700818))

(declare-fun m!6700820 () Bool)

(assert (=> b!5750687 m!6700820))

(check-sat (not b!5750689) (not b!5750713) (not b!5750699) (not b!5750687) (not b!5750708) (not b!5750706) (not b!5750704) (not b!5750680) (not b!5750691) (not b!5750670) (not b!5750684) (not b!5750688) (not setNonEmpty!38601) (not b!5750712) (not b!5750673) (not b!5750693) (not b!5750690) (not b!5750692) (not b!5750701) (not b!5750672) (not start!591096) (not b!5750674) (not b!5750710) (not b!5750695) (not b!5750697) (not b!5750683) (not b!5750703) (not b!5750682) tp_is_empty!40771 (not b!5750686) (not b!5750678) (not b!5750677) (not b!5750696) (not b!5750698) (not b!5750702) (not b!5750711) (not b!5750675))
(check-sat)
