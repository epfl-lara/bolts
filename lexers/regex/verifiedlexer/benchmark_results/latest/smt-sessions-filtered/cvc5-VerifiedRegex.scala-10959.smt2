; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!567160 () Bool)

(assert start!567160)

(declare-fun b!5399483 () Bool)

(assert (=> b!5399483 true))

(assert (=> b!5399483 true))

(declare-fun lambda!281069 () Int)

(declare-fun lambda!281068 () Int)

(assert (=> b!5399483 (not (= lambda!281069 lambda!281068))))

(assert (=> b!5399483 true))

(assert (=> b!5399483 true))

(declare-fun b!5399488 () Bool)

(assert (=> b!5399488 true))

(declare-fun b!5399478 () Bool)

(assert (=> b!5399478 true))

(declare-fun b!5399464 () Bool)

(declare-fun res!2295289 () Bool)

(declare-fun e!3347945 () Bool)

(assert (=> b!5399464 (=> res!2295289 e!3347945)))

(declare-datatypes ((C!30598 0))(
  ( (C!30599 (val!25001 Int)) )
))
(declare-datatypes ((Regex!15164 0))(
  ( (ElementMatch!15164 (c!941036 C!30598)) (Concat!24009 (regOne!30840 Regex!15164) (regTwo!30840 Regex!15164)) (EmptyExpr!15164) (Star!15164 (reg!15493 Regex!15164)) (EmptyLang!15164) (Union!15164 (regOne!30841 Regex!15164) (regTwo!30841 Regex!15164)) )
))
(declare-fun lt!2200927 () Regex!15164)

(declare-fun r!7292 () Regex!15164)

(assert (=> b!5399464 (= res!2295289 (not (= lt!2200927 r!7292)))))

(declare-fun b!5399465 () Bool)

(declare-fun e!3347949 () Bool)

(declare-datatypes ((List!61791 0))(
  ( (Nil!61667) (Cons!61667 (h!68115 Regex!15164) (t!375014 List!61791)) )
))
(declare-datatypes ((Context!9096 0))(
  ( (Context!9097 (exprs!5048 List!61791)) )
))
(declare-fun lt!2200926 () (Set Context!9096))

(declare-datatypes ((List!61792 0))(
  ( (Nil!61668) (Cons!61668 (h!68116 C!30598) (t!375015 List!61792)) )
))
(declare-fun s!2326 () List!61792)

(declare-fun matchZipper!1408 ((Set Context!9096) List!61792) Bool)

(assert (=> b!5399465 (= e!3347949 (matchZipper!1408 lt!2200926 (t!375015 s!2326)))))

(declare-fun b!5399466 () Bool)

(declare-fun e!3347935 () Bool)

(assert (=> b!5399466 (= e!3347935 (not (matchZipper!1408 lt!2200926 (t!375015 s!2326))))))

(declare-fun b!5399467 () Bool)

(declare-fun e!3347943 () Bool)

(declare-fun e!3347925 () Bool)

(assert (=> b!5399467 (= e!3347943 e!3347925)))

(declare-fun res!2295294 () Bool)

(assert (=> b!5399467 (=> res!2295294 e!3347925)))

(declare-fun lt!2200920 () (Set Context!9096))

(declare-fun lt!2200897 () (Set Context!9096))

(assert (=> b!5399467 (= res!2295294 (not (= lt!2200920 lt!2200897)))))

(declare-fun lt!2200900 () Context!9096)

(declare-fun derivationStepZipperDown!612 (Regex!15164 Context!9096 C!30598) (Set Context!9096))

(assert (=> b!5399467 (= lt!2200897 (derivationStepZipperDown!612 (reg!15493 (regOne!30840 r!7292)) lt!2200900 (h!68116 s!2326)))))

(declare-fun lt!2200896 () List!61791)

(assert (=> b!5399467 (= lt!2200900 (Context!9097 lt!2200896))))

(declare-fun lt!2200910 () Regex!15164)

(declare-datatypes ((List!61793 0))(
  ( (Nil!61669) (Cons!61669 (h!68117 Context!9096) (t!375016 List!61793)) )
))
(declare-fun zl!343 () List!61793)

(assert (=> b!5399467 (= lt!2200896 (Cons!61667 lt!2200910 (t!375014 (exprs!5048 (h!68117 zl!343)))))))

(assert (=> b!5399467 (= lt!2200910 (Star!15164 (reg!15493 (regOne!30840 r!7292))))))

(declare-fun b!5399468 () Bool)

(declare-fun e!3347948 () Bool)

(declare-fun tp!1494160 () Bool)

(declare-fun tp!1494159 () Bool)

(assert (=> b!5399468 (= e!3347948 (and tp!1494160 tp!1494159))))

(declare-fun b!5399469 () Bool)

(declare-fun tp!1494164 () Bool)

(assert (=> b!5399469 (= e!3347948 tp!1494164)))

(declare-fun b!5399470 () Bool)

(declare-fun res!2295298 () Bool)

(declare-fun e!3347929 () Bool)

(assert (=> b!5399470 (=> res!2295298 e!3347929)))

(declare-fun generalisedConcat!833 (List!61791) Regex!15164)

(assert (=> b!5399470 (= res!2295298 (not (= r!7292 (generalisedConcat!833 (exprs!5048 (h!68117 zl!343))))))))

(declare-fun b!5399471 () Bool)

(declare-fun e!3347941 () Bool)

(declare-fun nullable!5333 (Regex!15164) Bool)

(assert (=> b!5399471 (= e!3347941 (nullable!5333 (regOne!30840 (regOne!30840 r!7292))))))

(declare-fun b!5399472 () Bool)

(declare-fun e!3347938 () Bool)

(declare-fun e!3347946 () Bool)

(assert (=> b!5399472 (= e!3347938 e!3347946)))

(declare-fun res!2295312 () Bool)

(assert (=> b!5399472 (=> (not res!2295312) (not e!3347946))))

(assert (=> b!5399472 (= res!2295312 (= r!7292 lt!2200927))))

(declare-fun unfocusZipper!906 (List!61793) Regex!15164)

(assert (=> b!5399472 (= lt!2200927 (unfocusZipper!906 zl!343))))

(declare-fun b!5399473 () Bool)

(declare-fun e!3347934 () Bool)

(declare-fun e!3347932 () Bool)

(assert (=> b!5399473 (= e!3347934 e!3347932)))

(declare-fun res!2295302 () Bool)

(assert (=> b!5399473 (=> res!2295302 e!3347932)))

(declare-fun lt!2200887 () List!61792)

(assert (=> b!5399473 (= res!2295302 (not (= s!2326 lt!2200887)))))

(declare-datatypes ((tuple2!64726 0))(
  ( (tuple2!64727 (_1!35666 List!61792) (_2!35666 List!61792)) )
))
(declare-fun lt!2200883 () tuple2!64726)

(declare-fun ++!13501 (List!61792 List!61792) List!61792)

(assert (=> b!5399473 (= lt!2200887 (++!13501 (_1!35666 lt!2200883) (_2!35666 lt!2200883)))))

(declare-datatypes ((Option!15275 0))(
  ( (None!15274) (Some!15274 (v!51303 tuple2!64726)) )
))
(declare-fun lt!2200908 () Option!15275)

(declare-fun get!21249 (Option!15275) tuple2!64726)

(assert (=> b!5399473 (= lt!2200883 (get!21249 lt!2200908))))

(declare-fun isDefined!11978 (Option!15275) Bool)

(assert (=> b!5399473 (isDefined!11978 lt!2200908)))

(declare-fun lt!2200894 () (Set Context!9096))

(declare-fun lt!2200929 () (Set Context!9096))

(declare-fun findConcatSeparationZippers!21 ((Set Context!9096) (Set Context!9096) List!61792 List!61792 List!61792) Option!15275)

(assert (=> b!5399473 (= lt!2200908 (findConcatSeparationZippers!21 lt!2200929 lt!2200894 Nil!61668 s!2326 s!2326))))

(declare-datatypes ((Unit!154178 0))(
  ( (Unit!154179) )
))
(declare-fun lt!2200915 () Unit!154178)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!21 ((Set Context!9096) Context!9096 List!61792) Unit!154178)

(assert (=> b!5399473 (= lt!2200915 (lemmaConcatZipperMatchesStringThenFindConcatDefined!21 lt!2200929 lt!2200900 s!2326))))

(declare-fun b!5399474 () Bool)

(declare-fun e!3347927 () Bool)

(assert (=> b!5399474 (= e!3347945 e!3347927)))

(declare-fun res!2295309 () Bool)

(assert (=> b!5399474 (=> res!2295309 e!3347927)))

(declare-fun lt!2200917 () Regex!15164)

(assert (=> b!5399474 (= res!2295309 (not (= r!7292 lt!2200917)))))

(assert (=> b!5399474 (= lt!2200917 (Concat!24009 lt!2200910 (regTwo!30840 r!7292)))))

(declare-fun setIsEmpty!35132 () Bool)

(declare-fun setRes!35132 () Bool)

(assert (=> setIsEmpty!35132 setRes!35132))

(declare-fun b!5399475 () Bool)

(declare-fun res!2295305 () Bool)

(assert (=> b!5399475 (=> res!2295305 e!3347932)))

(assert (=> b!5399475 (= res!2295305 (not (matchZipper!1408 lt!2200894 (_2!35666 lt!2200883))))))

(declare-fun b!5399476 () Bool)

(declare-fun res!2295314 () Bool)

(assert (=> b!5399476 (=> res!2295314 e!3347932)))

(assert (=> b!5399476 (= res!2295314 (not (matchZipper!1408 lt!2200929 (_1!35666 lt!2200883))))))

(declare-fun b!5399477 () Bool)

(declare-fun e!3347937 () Bool)

(declare-fun tp!1494163 () Bool)

(assert (=> b!5399477 (= e!3347937 tp!1494163)))

(declare-fun e!3347939 () Bool)

(assert (=> b!5399478 (= e!3347939 e!3347934)))

(declare-fun res!2295299 () Bool)

(assert (=> b!5399478 (=> res!2295299 e!3347934)))

(declare-fun lt!2200884 () (Set Context!9096))

(declare-fun appendTo!23 ((Set Context!9096) Context!9096) (Set Context!9096))

(assert (=> b!5399478 (= res!2295299 (not (= (appendTo!23 lt!2200929 lt!2200900) lt!2200884)))))

(declare-fun lt!2200909 () List!61791)

(declare-fun lambda!281071 () Int)

(declare-fun map!14131 ((Set Context!9096) Int) (Set Context!9096))

(declare-fun ++!13502 (List!61791 List!61791) List!61791)

(assert (=> b!5399478 (= (map!14131 lt!2200929 lambda!281071) (set.insert (Context!9097 (++!13502 lt!2200909 lt!2200896)) (as set.empty (Set Context!9096))))))

(declare-fun lt!2200911 () Unit!154178)

(declare-fun lambda!281072 () Int)

(declare-fun lemmaConcatPreservesForall!189 (List!61791 List!61791 Int) Unit!154178)

(assert (=> b!5399478 (= lt!2200911 (lemmaConcatPreservesForall!189 lt!2200909 lt!2200896 lambda!281072))))

(declare-fun lt!2200907 () Unit!154178)

(declare-fun lt!2200882 () Context!9096)

(declare-fun lemmaMapOnSingletonSet!23 ((Set Context!9096) Context!9096 Int) Unit!154178)

(assert (=> b!5399478 (= lt!2200907 (lemmaMapOnSingletonSet!23 lt!2200929 lt!2200882 lambda!281071))))

(declare-fun b!5399479 () Bool)

(declare-fun e!3347950 () Unit!154178)

(declare-fun Unit!154180 () Unit!154178)

(assert (=> b!5399479 (= e!3347950 Unit!154180)))

(declare-fun lt!2200904 () Unit!154178)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!401 ((Set Context!9096) (Set Context!9096) List!61792) Unit!154178)

(assert (=> b!5399479 (= lt!2200904 (lemmaZipperConcatMatchesSameAsBothZippers!401 lt!2200920 lt!2200926 (t!375015 s!2326)))))

(declare-fun res!2295295 () Bool)

(assert (=> b!5399479 (= res!2295295 (matchZipper!1408 lt!2200920 (t!375015 s!2326)))))

(assert (=> b!5399479 (=> res!2295295 e!3347949)))

(assert (=> b!5399479 (= (matchZipper!1408 (set.union lt!2200920 lt!2200926) (t!375015 s!2326)) e!3347949)))

(declare-fun b!5399480 () Bool)

(declare-fun tp_is_empty!39581 () Bool)

(assert (=> b!5399480 (= e!3347948 tp_is_empty!39581)))

(declare-fun b!5399481 () Bool)

(declare-fun res!2295308 () Bool)

(assert (=> b!5399481 (=> res!2295308 e!3347929)))

(declare-fun isEmpty!33659 (List!61793) Bool)

(assert (=> b!5399481 (= res!2295308 (not (isEmpty!33659 (t!375016 zl!343))))))

(declare-fun b!5399482 () Bool)

(declare-fun Unit!154181 () Unit!154178)

(assert (=> b!5399482 (= e!3347950 Unit!154181)))

(declare-fun e!3347926 () Bool)

(assert (=> b!5399483 (= e!3347929 e!3347926)))

(declare-fun res!2295315 () Bool)

(assert (=> b!5399483 (=> res!2295315 e!3347926)))

(declare-fun lt!2200893 () Bool)

(declare-fun lt!2200918 () Bool)

(assert (=> b!5399483 (= res!2295315 (or (not (= lt!2200893 lt!2200918)) (is-Nil!61668 s!2326)))))

(declare-fun Exists!2345 (Int) Bool)

(assert (=> b!5399483 (= (Exists!2345 lambda!281068) (Exists!2345 lambda!281069))))

(declare-fun lt!2200879 () Unit!154178)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!999 (Regex!15164 Regex!15164 List!61792) Unit!154178)

(assert (=> b!5399483 (= lt!2200879 (lemmaExistCutMatchRandMatchRSpecEquivalent!999 (regOne!30840 r!7292) (regTwo!30840 r!7292) s!2326))))

(assert (=> b!5399483 (= lt!2200918 (Exists!2345 lambda!281068))))

(declare-fun findConcatSeparation!1689 (Regex!15164 Regex!15164 List!61792 List!61792 List!61792) Option!15275)

(assert (=> b!5399483 (= lt!2200918 (isDefined!11978 (findConcatSeparation!1689 (regOne!30840 r!7292) (regTwo!30840 r!7292) Nil!61668 s!2326 s!2326)))))

(declare-fun lt!2200914 () Unit!154178)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1453 (Regex!15164 Regex!15164 List!61792) Unit!154178)

(assert (=> b!5399483 (= lt!2200914 (lemmaFindConcatSeparationEquivalentToExists!1453 (regOne!30840 r!7292) (regTwo!30840 r!7292) s!2326))))

(declare-fun b!5399484 () Bool)

(declare-fun res!2295307 () Bool)

(declare-fun e!3347942 () Bool)

(assert (=> b!5399484 (=> res!2295307 e!3347942)))

(declare-fun lt!2200913 () Bool)

(assert (=> b!5399484 (= res!2295307 (not lt!2200913))))

(declare-fun b!5399485 () Bool)

(declare-fun res!2295301 () Bool)

(assert (=> b!5399485 (=> res!2295301 e!3347943)))

(assert (=> b!5399485 (= res!2295301 e!3347941)))

(declare-fun res!2295304 () Bool)

(assert (=> b!5399485 (=> (not res!2295304) (not e!3347941))))

(assert (=> b!5399485 (= res!2295304 (is-Concat!24009 (regOne!30840 r!7292)))))

(declare-fun b!5399486 () Bool)

(declare-fun lt!2200922 () Regex!15164)

(declare-fun validRegex!6900 (Regex!15164) Bool)

(assert (=> b!5399486 (= e!3347932 (validRegex!6900 lt!2200922))))

(declare-fun matchR!7349 (Regex!15164 List!61792) Bool)

(assert (=> b!5399486 (matchR!7349 lt!2200922 s!2326)))

(assert (=> b!5399486 (= lt!2200922 (Concat!24009 (Concat!24009 (reg!15493 (regOne!30840 r!7292)) lt!2200910) (regTwo!30840 r!7292)))))

(declare-fun lt!2200885 () Unit!154178)

(declare-fun lemmaConcatAssociative!17 (Regex!15164 Regex!15164 Regex!15164 List!61792) Unit!154178)

(assert (=> b!5399486 (= lt!2200885 (lemmaConcatAssociative!17 (reg!15493 (regOne!30840 r!7292)) lt!2200910 (regTwo!30840 r!7292) s!2326))))

(declare-fun e!3347931 () Bool)

(assert (=> b!5399486 e!3347931))

(declare-fun res!2295313 () Bool)

(assert (=> b!5399486 (=> (not res!2295313) (not e!3347931))))

(declare-fun lt!2200892 () Regex!15164)

(assert (=> b!5399486 (= res!2295313 (matchR!7349 lt!2200892 lt!2200887))))

(declare-fun lt!2200901 () Unit!154178)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!187 (Regex!15164 Regex!15164 List!61792 List!61792) Unit!154178)

(assert (=> b!5399486 (= lt!2200901 (lemmaTwoRegexMatchThenConcatMatchesConcatString!187 (reg!15493 (regOne!30840 r!7292)) lt!2200917 (_1!35666 lt!2200883) (_2!35666 lt!2200883)))))

(assert (=> b!5399486 (matchR!7349 lt!2200917 (_2!35666 lt!2200883))))

(declare-fun lt!2200912 () List!61793)

(declare-fun lt!2200923 () Unit!154178)

(declare-fun theoremZipperRegexEquiv!478 ((Set Context!9096) List!61793 Regex!15164 List!61792) Unit!154178)

(assert (=> b!5399486 (= lt!2200923 (theoremZipperRegexEquiv!478 lt!2200894 lt!2200912 lt!2200917 (_2!35666 lt!2200883)))))

(assert (=> b!5399486 (matchR!7349 (reg!15493 (regOne!30840 r!7292)) (_1!35666 lt!2200883))))

(declare-fun lt!2200881 () Unit!154178)

(declare-fun lt!2200906 () List!61793)

(assert (=> b!5399486 (= lt!2200881 (theoremZipperRegexEquiv!478 lt!2200929 lt!2200906 (reg!15493 (regOne!30840 r!7292)) (_1!35666 lt!2200883)))))

(assert (=> b!5399486 (matchZipper!1408 (set.insert (Context!9097 (++!13502 lt!2200909 lt!2200896)) (as set.empty (Set Context!9096))) lt!2200887)))

(declare-fun lt!2200902 () Unit!154178)

(assert (=> b!5399486 (= lt!2200902 (lemmaConcatPreservesForall!189 lt!2200909 lt!2200896 lambda!281072))))

(declare-fun lt!2200903 () Unit!154178)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!37 (Context!9096 Context!9096 List!61792 List!61792) Unit!154178)

(assert (=> b!5399486 (= lt!2200903 (lemmaConcatenateContextMatchesConcatOfStrings!37 lt!2200882 lt!2200900 (_1!35666 lt!2200883) (_2!35666 lt!2200883)))))

(declare-fun b!5399487 () Bool)

(declare-fun res!2295320 () Bool)

(assert (=> b!5399487 (=> res!2295320 e!3347939)))

(declare-fun lt!2200890 () Bool)

(declare-fun lt!2200930 () Bool)

(assert (=> b!5399487 (= res!2295320 (or (not lt!2200890) (not lt!2200930)))))

(assert (=> b!5399488 (= e!3347926 e!3347943)))

(declare-fun res!2295303 () Bool)

(assert (=> b!5399488 (=> res!2295303 e!3347943)))

(assert (=> b!5399488 (= res!2295303 (or (and (is-ElementMatch!15164 (regOne!30840 r!7292)) (= (c!941036 (regOne!30840 r!7292)) (h!68116 s!2326))) (is-Union!15164 (regOne!30840 r!7292))))))

(declare-fun lt!2200888 () Unit!154178)

(assert (=> b!5399488 (= lt!2200888 e!3347950)))

(declare-fun c!941035 () Bool)

(assert (=> b!5399488 (= c!941035 lt!2200913)))

(assert (=> b!5399488 (= lt!2200913 (nullable!5333 (h!68115 (exprs!5048 (h!68117 zl!343)))))))

(declare-fun z!1189 () (Set Context!9096))

(declare-fun lambda!281070 () Int)

(declare-fun flatMap!891 ((Set Context!9096) Int) (Set Context!9096))

(declare-fun derivationStepZipperUp!536 (Context!9096 C!30598) (Set Context!9096))

(assert (=> b!5399488 (= (flatMap!891 z!1189 lambda!281070) (derivationStepZipperUp!536 (h!68117 zl!343) (h!68116 s!2326)))))

(declare-fun lt!2200886 () Unit!154178)

(declare-fun lemmaFlatMapOnSingletonSet!423 ((Set Context!9096) Context!9096 Int) Unit!154178)

(assert (=> b!5399488 (= lt!2200886 (lemmaFlatMapOnSingletonSet!423 z!1189 (h!68117 zl!343) lambda!281070))))

(declare-fun lt!2200919 () Context!9096)

(assert (=> b!5399488 (= lt!2200926 (derivationStepZipperUp!536 lt!2200919 (h!68116 s!2326)))))

(assert (=> b!5399488 (= lt!2200920 (derivationStepZipperDown!612 (h!68115 (exprs!5048 (h!68117 zl!343))) lt!2200919 (h!68116 s!2326)))))

(assert (=> b!5399488 (= lt!2200919 (Context!9097 (t!375014 (exprs!5048 (h!68117 zl!343)))))))

(declare-fun lt!2200916 () (Set Context!9096))

(assert (=> b!5399488 (= lt!2200916 (derivationStepZipperUp!536 (Context!9097 (Cons!61667 (h!68115 (exprs!5048 (h!68117 zl!343))) (t!375014 (exprs!5048 (h!68117 zl!343))))) (h!68116 s!2326)))))

(declare-fun b!5399489 () Bool)

(declare-fun e!3347944 () Bool)

(declare-fun e!3347947 () Bool)

(declare-fun tp!1494162 () Bool)

(declare-fun inv!81158 (Context!9096) Bool)

(assert (=> b!5399489 (= e!3347947 (and (inv!81158 (h!68117 zl!343)) e!3347944 tp!1494162))))

(declare-fun b!5399490 () Bool)

(declare-fun e!3347930 () Bool)

(declare-fun e!3347940 () Bool)

(assert (=> b!5399490 (= e!3347930 e!3347940)))

(declare-fun res!2295321 () Bool)

(assert (=> b!5399490 (=> res!2295321 e!3347940)))

(assert (=> b!5399490 (= res!2295321 (not (= (unfocusZipper!906 lt!2200912) lt!2200917)))))

(assert (=> b!5399490 (= lt!2200912 (Cons!61669 lt!2200900 Nil!61669))))

(declare-fun res!2295310 () Bool)

(assert (=> start!567160 (=> (not res!2295310) (not e!3347938))))

(assert (=> start!567160 (= res!2295310 (validRegex!6900 r!7292))))

(assert (=> start!567160 e!3347938))

(assert (=> start!567160 e!3347948))

(declare-fun condSetEmpty!35132 () Bool)

(assert (=> start!567160 (= condSetEmpty!35132 (= z!1189 (as set.empty (Set Context!9096))))))

(assert (=> start!567160 setRes!35132))

(assert (=> start!567160 e!3347947))

(declare-fun e!3347936 () Bool)

(assert (=> start!567160 e!3347936))

(declare-fun b!5399491 () Bool)

(declare-fun res!2295311 () Bool)

(assert (=> b!5399491 (=> res!2295311 e!3347942)))

(assert (=> b!5399491 (= res!2295311 (not (matchZipper!1408 z!1189 s!2326)))))

(declare-fun b!5399492 () Bool)

(assert (=> b!5399492 (= e!3347942 e!3347939)))

(declare-fun res!2295291 () Bool)

(assert (=> b!5399492 (=> res!2295291 e!3347939)))

(assert (=> b!5399492 (= res!2295291 e!3347935)))

(declare-fun res!2295306 () Bool)

(assert (=> b!5399492 (=> (not res!2295306) (not e!3347935))))

(assert (=> b!5399492 (= res!2295306 (not lt!2200890))))

(assert (=> b!5399492 (= lt!2200890 (matchZipper!1408 lt!2200920 (t!375015 s!2326)))))

(declare-fun b!5399493 () Bool)

(declare-fun res!2295292 () Bool)

(assert (=> b!5399493 (=> (not res!2295292) (not e!3347938))))

(declare-fun toList!8948 ((Set Context!9096)) List!61793)

(assert (=> b!5399493 (= res!2295292 (= (toList!8948 z!1189) zl!343))))

(declare-fun b!5399494 () Bool)

(declare-fun res!2295319 () Bool)

(assert (=> b!5399494 (=> res!2295319 e!3347929)))

(assert (=> b!5399494 (= res!2295319 (or (is-EmptyExpr!15164 r!7292) (is-EmptyLang!15164 r!7292) (is-ElementMatch!15164 r!7292) (is-Union!15164 r!7292) (not (is-Concat!24009 r!7292))))))

(declare-fun b!5399495 () Bool)

(declare-fun e!3347933 () Bool)

(assert (=> b!5399495 (= e!3347925 e!3347933)))

(declare-fun res!2295293 () Bool)

(assert (=> b!5399495 (=> res!2295293 e!3347933)))

(declare-fun lt!2200921 () (Set Context!9096))

(assert (=> b!5399495 (= res!2295293 (not (= lt!2200921 lt!2200897)))))

(declare-fun lt!2200924 () Context!9096)

(assert (=> b!5399495 (= (flatMap!891 lt!2200884 lambda!281070) (derivationStepZipperUp!536 lt!2200924 (h!68116 s!2326)))))

(declare-fun lt!2200928 () Unit!154178)

(assert (=> b!5399495 (= lt!2200928 (lemmaFlatMapOnSingletonSet!423 lt!2200884 lt!2200924 lambda!281070))))

(declare-fun lt!2200880 () (Set Context!9096))

(assert (=> b!5399495 (= lt!2200880 (derivationStepZipperUp!536 lt!2200924 (h!68116 s!2326)))))

(declare-fun derivationStepZipper!1403 ((Set Context!9096) C!30598) (Set Context!9096))

(assert (=> b!5399495 (= lt!2200921 (derivationStepZipper!1403 lt!2200884 (h!68116 s!2326)))))

(assert (=> b!5399495 (= lt!2200884 (set.insert lt!2200924 (as set.empty (Set Context!9096))))))

(assert (=> b!5399495 (= lt!2200924 (Context!9097 (Cons!61667 (reg!15493 (regOne!30840 r!7292)) lt!2200896)))))

(declare-fun b!5399496 () Bool)

(declare-fun res!2295317 () Bool)

(assert (=> b!5399496 (=> res!2295317 e!3347929)))

(declare-fun generalisedUnion!1093 (List!61791) Regex!15164)

(declare-fun unfocusZipperList!606 (List!61793) List!61791)

(assert (=> b!5399496 (= res!2295317 (not (= r!7292 (generalisedUnion!1093 (unfocusZipperList!606 zl!343)))))))

(declare-fun b!5399497 () Bool)

(declare-fun res!2295288 () Bool)

(assert (=> b!5399497 (=> res!2295288 e!3347929)))

(assert (=> b!5399497 (= res!2295288 (not (is-Cons!61667 (exprs!5048 (h!68117 zl!343)))))))

(declare-fun b!5399498 () Bool)

(assert (=> b!5399498 (= e!3347946 (not e!3347929))))

(declare-fun res!2295318 () Bool)

(assert (=> b!5399498 (=> res!2295318 e!3347929)))

(assert (=> b!5399498 (= res!2295318 (not (is-Cons!61669 zl!343)))))

(declare-fun matchRSpec!2267 (Regex!15164 List!61792) Bool)

(assert (=> b!5399498 (= lt!2200893 (matchRSpec!2267 r!7292 s!2326))))

(assert (=> b!5399498 (= lt!2200893 (matchR!7349 r!7292 s!2326))))

(declare-fun lt!2200898 () Unit!154178)

(declare-fun mainMatchTheorem!2267 (Regex!15164 List!61792) Unit!154178)

(assert (=> b!5399498 (= lt!2200898 (mainMatchTheorem!2267 r!7292 s!2326))))

(declare-fun b!5399499 () Bool)

(declare-fun lt!2200905 () Bool)

(assert (=> b!5399499 (= e!3347931 lt!2200905)))

(declare-fun setElem!35132 () Context!9096)

(declare-fun tp!1494166 () Bool)

(declare-fun setNonEmpty!35132 () Bool)

(assert (=> setNonEmpty!35132 (= setRes!35132 (and tp!1494166 (inv!81158 setElem!35132) e!3347937))))

(declare-fun setRest!35132 () (Set Context!9096))

(assert (=> setNonEmpty!35132 (= z!1189 (set.union (set.insert setElem!35132 (as set.empty (Set Context!9096))) setRest!35132))))

(declare-fun b!5399500 () Bool)

(assert (=> b!5399500 (= e!3347940 e!3347942)))

(declare-fun res!2295300 () Bool)

(assert (=> b!5399500 (=> res!2295300 e!3347942)))

(assert (=> b!5399500 (= res!2295300 lt!2200893)))

(assert (=> b!5399500 (= lt!2200905 (matchRSpec!2267 lt!2200892 s!2326))))

(assert (=> b!5399500 (= lt!2200905 (matchR!7349 lt!2200892 s!2326))))

(declare-fun lt!2200925 () Unit!154178)

(assert (=> b!5399500 (= lt!2200925 (mainMatchTheorem!2267 lt!2200892 s!2326))))

(declare-fun b!5399501 () Bool)

(declare-fun tp!1494158 () Bool)

(assert (=> b!5399501 (= e!3347944 tp!1494158)))

(declare-fun b!5399502 () Bool)

(declare-fun e!3347928 () Bool)

(assert (=> b!5399502 (= e!3347928 e!3347930)))

(declare-fun res!2295297 () Bool)

(assert (=> b!5399502 (=> res!2295297 e!3347930)))

(assert (=> b!5399502 (= res!2295297 (not (= (unfocusZipper!906 lt!2200906) (reg!15493 (regOne!30840 r!7292)))))))

(assert (=> b!5399502 (= lt!2200906 (Cons!61669 lt!2200882 Nil!61669))))

(assert (=> b!5399502 (= (flatMap!891 lt!2200894 lambda!281070) (derivationStepZipperUp!536 lt!2200900 (h!68116 s!2326)))))

(declare-fun lt!2200899 () Unit!154178)

(assert (=> b!5399502 (= lt!2200899 (lemmaFlatMapOnSingletonSet!423 lt!2200894 lt!2200900 lambda!281070))))

(assert (=> b!5399502 (= (flatMap!891 lt!2200929 lambda!281070) (derivationStepZipperUp!536 lt!2200882 (h!68116 s!2326)))))

(declare-fun lt!2200889 () Unit!154178)

(assert (=> b!5399502 (= lt!2200889 (lemmaFlatMapOnSingletonSet!423 lt!2200929 lt!2200882 lambda!281070))))

(declare-fun lt!2200891 () (Set Context!9096))

(assert (=> b!5399502 (= lt!2200891 (derivationStepZipperUp!536 lt!2200900 (h!68116 s!2326)))))

(declare-fun lt!2200895 () (Set Context!9096))

(assert (=> b!5399502 (= lt!2200895 (derivationStepZipperUp!536 lt!2200882 (h!68116 s!2326)))))

(assert (=> b!5399502 (= lt!2200894 (set.insert lt!2200900 (as set.empty (Set Context!9096))))))

(assert (=> b!5399502 (= lt!2200929 (set.insert lt!2200882 (as set.empty (Set Context!9096))))))

(assert (=> b!5399502 (= lt!2200882 (Context!9097 lt!2200909))))

(assert (=> b!5399502 (= lt!2200909 (Cons!61667 (reg!15493 (regOne!30840 r!7292)) Nil!61667))))

(declare-fun b!5399503 () Bool)

(assert (=> b!5399503 (= e!3347927 e!3347928)))

(declare-fun res!2295316 () Bool)

(assert (=> b!5399503 (=> res!2295316 e!3347928)))

(assert (=> b!5399503 (= res!2295316 (not (= (unfocusZipper!906 (Cons!61669 lt!2200924 Nil!61669)) lt!2200892)))))

(assert (=> b!5399503 (= lt!2200892 (Concat!24009 (reg!15493 (regOne!30840 r!7292)) lt!2200917))))

(declare-fun b!5399504 () Bool)

(declare-fun res!2295322 () Bool)

(assert (=> b!5399504 (=> res!2295322 e!3347943)))

(assert (=> b!5399504 (= res!2295322 (or (is-Concat!24009 (regOne!30840 r!7292)) (not (is-Star!15164 (regOne!30840 r!7292)))))))

(declare-fun b!5399505 () Bool)

(declare-fun res!2295296 () Bool)

(assert (=> b!5399505 (=> res!2295296 e!3347926)))

(declare-fun isEmpty!33660 (List!61791) Bool)

(assert (=> b!5399505 (= res!2295296 (isEmpty!33660 (t!375014 (exprs!5048 (h!68117 zl!343)))))))

(declare-fun b!5399506 () Bool)

(declare-fun tp!1494167 () Bool)

(declare-fun tp!1494161 () Bool)

(assert (=> b!5399506 (= e!3347948 (and tp!1494167 tp!1494161))))

(declare-fun b!5399507 () Bool)

(declare-fun tp!1494165 () Bool)

(assert (=> b!5399507 (= e!3347936 (and tp_is_empty!39581 tp!1494165))))

(declare-fun b!5399508 () Bool)

(assert (=> b!5399508 (= e!3347933 e!3347945)))

(declare-fun res!2295290 () Bool)

(assert (=> b!5399508 (=> res!2295290 e!3347945)))

(assert (=> b!5399508 (= res!2295290 (not (= lt!2200930 (matchZipper!1408 lt!2200921 (t!375015 s!2326)))))))

(assert (=> b!5399508 (= lt!2200930 (matchZipper!1408 lt!2200884 s!2326))))

(assert (= (and start!567160 res!2295310) b!5399493))

(assert (= (and b!5399493 res!2295292) b!5399472))

(assert (= (and b!5399472 res!2295312) b!5399498))

(assert (= (and b!5399498 (not res!2295318)) b!5399481))

(assert (= (and b!5399481 (not res!2295308)) b!5399470))

(assert (= (and b!5399470 (not res!2295298)) b!5399497))

(assert (= (and b!5399497 (not res!2295288)) b!5399496))

(assert (= (and b!5399496 (not res!2295317)) b!5399494))

(assert (= (and b!5399494 (not res!2295319)) b!5399483))

(assert (= (and b!5399483 (not res!2295315)) b!5399505))

(assert (= (and b!5399505 (not res!2295296)) b!5399488))

(assert (= (and b!5399488 c!941035) b!5399479))

(assert (= (and b!5399488 (not c!941035)) b!5399482))

(assert (= (and b!5399479 (not res!2295295)) b!5399465))

(assert (= (and b!5399488 (not res!2295303)) b!5399485))

(assert (= (and b!5399485 res!2295304) b!5399471))

(assert (= (and b!5399485 (not res!2295301)) b!5399504))

(assert (= (and b!5399504 (not res!2295322)) b!5399467))

(assert (= (and b!5399467 (not res!2295294)) b!5399495))

(assert (= (and b!5399495 (not res!2295293)) b!5399508))

(assert (= (and b!5399508 (not res!2295290)) b!5399464))

(assert (= (and b!5399464 (not res!2295289)) b!5399474))

(assert (= (and b!5399474 (not res!2295309)) b!5399503))

(assert (= (and b!5399503 (not res!2295316)) b!5399502))

(assert (= (and b!5399502 (not res!2295297)) b!5399490))

(assert (= (and b!5399490 (not res!2295321)) b!5399500))

(assert (= (and b!5399500 (not res!2295300)) b!5399491))

(assert (= (and b!5399491 (not res!2295311)) b!5399484))

(assert (= (and b!5399484 (not res!2295307)) b!5399492))

(assert (= (and b!5399492 res!2295306) b!5399466))

(assert (= (and b!5399492 (not res!2295291)) b!5399487))

(assert (= (and b!5399487 (not res!2295320)) b!5399478))

(assert (= (and b!5399478 (not res!2295299)) b!5399473))

(assert (= (and b!5399473 (not res!2295302)) b!5399476))

(assert (= (and b!5399476 (not res!2295314)) b!5399475))

(assert (= (and b!5399475 (not res!2295305)) b!5399486))

(assert (= (and b!5399486 res!2295313) b!5399499))

(assert (= (and start!567160 (is-ElementMatch!15164 r!7292)) b!5399480))

(assert (= (and start!567160 (is-Concat!24009 r!7292)) b!5399506))

(assert (= (and start!567160 (is-Star!15164 r!7292)) b!5399469))

(assert (= (and start!567160 (is-Union!15164 r!7292)) b!5399468))

(assert (= (and start!567160 condSetEmpty!35132) setIsEmpty!35132))

(assert (= (and start!567160 (not condSetEmpty!35132)) setNonEmpty!35132))

(assert (= setNonEmpty!35132 b!5399477))

(assert (= b!5399489 b!5399501))

(assert (= (and start!567160 (is-Cons!61669 zl!343)) b!5399489))

(assert (= (and start!567160 (is-Cons!61668 s!2326)) b!5399507))

(declare-fun m!6424084 () Bool)

(assert (=> b!5399486 m!6424084))

(declare-fun m!6424086 () Bool)

(assert (=> b!5399486 m!6424086))

(declare-fun m!6424088 () Bool)

(assert (=> b!5399486 m!6424088))

(declare-fun m!6424090 () Bool)

(assert (=> b!5399486 m!6424090))

(declare-fun m!6424092 () Bool)

(assert (=> b!5399486 m!6424092))

(declare-fun m!6424094 () Bool)

(assert (=> b!5399486 m!6424094))

(declare-fun m!6424096 () Bool)

(assert (=> b!5399486 m!6424096))

(assert (=> b!5399486 m!6424094))

(declare-fun m!6424098 () Bool)

(assert (=> b!5399486 m!6424098))

(declare-fun m!6424100 () Bool)

(assert (=> b!5399486 m!6424100))

(declare-fun m!6424102 () Bool)

(assert (=> b!5399486 m!6424102))

(declare-fun m!6424104 () Bool)

(assert (=> b!5399486 m!6424104))

(declare-fun m!6424106 () Bool)

(assert (=> b!5399486 m!6424106))

(declare-fun m!6424108 () Bool)

(assert (=> b!5399486 m!6424108))

(declare-fun m!6424110 () Bool)

(assert (=> b!5399486 m!6424110))

(declare-fun m!6424112 () Bool)

(assert (=> b!5399472 m!6424112))

(declare-fun m!6424114 () Bool)

(assert (=> b!5399465 m!6424114))

(assert (=> b!5399478 m!6424086))

(declare-fun m!6424116 () Bool)

(assert (=> b!5399478 m!6424116))

(assert (=> b!5399478 m!6424100))

(declare-fun m!6424118 () Bool)

(assert (=> b!5399478 m!6424118))

(declare-fun m!6424120 () Bool)

(assert (=> b!5399478 m!6424120))

(assert (=> b!5399478 m!6424094))

(declare-fun m!6424122 () Bool)

(assert (=> b!5399488 m!6424122))

(declare-fun m!6424124 () Bool)

(assert (=> b!5399488 m!6424124))

(declare-fun m!6424126 () Bool)

(assert (=> b!5399488 m!6424126))

(declare-fun m!6424128 () Bool)

(assert (=> b!5399488 m!6424128))

(declare-fun m!6424130 () Bool)

(assert (=> b!5399488 m!6424130))

(declare-fun m!6424132 () Bool)

(assert (=> b!5399488 m!6424132))

(declare-fun m!6424134 () Bool)

(assert (=> b!5399488 m!6424134))

(declare-fun m!6424136 () Bool)

(assert (=> b!5399503 m!6424136))

(declare-fun m!6424138 () Bool)

(assert (=> b!5399496 m!6424138))

(assert (=> b!5399496 m!6424138))

(declare-fun m!6424140 () Bool)

(assert (=> b!5399496 m!6424140))

(declare-fun m!6424142 () Bool)

(assert (=> b!5399495 m!6424142))

(declare-fun m!6424144 () Bool)

(assert (=> b!5399495 m!6424144))

(declare-fun m!6424146 () Bool)

(assert (=> b!5399495 m!6424146))

(declare-fun m!6424148 () Bool)

(assert (=> b!5399495 m!6424148))

(declare-fun m!6424150 () Bool)

(assert (=> b!5399495 m!6424150))

(declare-fun m!6424152 () Bool)

(assert (=> b!5399467 m!6424152))

(declare-fun m!6424154 () Bool)

(assert (=> b!5399489 m!6424154))

(declare-fun m!6424156 () Bool)

(assert (=> b!5399490 m!6424156))

(declare-fun m!6424158 () Bool)

(assert (=> start!567160 m!6424158))

(declare-fun m!6424160 () Bool)

(assert (=> b!5399492 m!6424160))

(declare-fun m!6424162 () Bool)

(assert (=> b!5399491 m!6424162))

(declare-fun m!6424164 () Bool)

(assert (=> b!5399483 m!6424164))

(declare-fun m!6424166 () Bool)

(assert (=> b!5399483 m!6424166))

(assert (=> b!5399483 m!6424164))

(declare-fun m!6424168 () Bool)

(assert (=> b!5399483 m!6424168))

(declare-fun m!6424170 () Bool)

(assert (=> b!5399483 m!6424170))

(declare-fun m!6424172 () Bool)

(assert (=> b!5399483 m!6424172))

(assert (=> b!5399483 m!6424168))

(declare-fun m!6424174 () Bool)

(assert (=> b!5399483 m!6424174))

(declare-fun m!6424176 () Bool)

(assert (=> b!5399500 m!6424176))

(declare-fun m!6424178 () Bool)

(assert (=> b!5399500 m!6424178))

(declare-fun m!6424180 () Bool)

(assert (=> b!5399500 m!6424180))

(declare-fun m!6424182 () Bool)

(assert (=> b!5399476 m!6424182))

(declare-fun m!6424184 () Bool)

(assert (=> b!5399473 m!6424184))

(declare-fun m!6424186 () Bool)

(assert (=> b!5399473 m!6424186))

(declare-fun m!6424188 () Bool)

(assert (=> b!5399473 m!6424188))

(declare-fun m!6424190 () Bool)

(assert (=> b!5399473 m!6424190))

(declare-fun m!6424192 () Bool)

(assert (=> b!5399473 m!6424192))

(declare-fun m!6424194 () Bool)

(assert (=> b!5399470 m!6424194))

(declare-fun m!6424196 () Bool)

(assert (=> b!5399502 m!6424196))

(declare-fun m!6424198 () Bool)

(assert (=> b!5399502 m!6424198))

(declare-fun m!6424200 () Bool)

(assert (=> b!5399502 m!6424200))

(declare-fun m!6424202 () Bool)

(assert (=> b!5399502 m!6424202))

(declare-fun m!6424204 () Bool)

(assert (=> b!5399502 m!6424204))

(declare-fun m!6424206 () Bool)

(assert (=> b!5399502 m!6424206))

(declare-fun m!6424208 () Bool)

(assert (=> b!5399502 m!6424208))

(declare-fun m!6424210 () Bool)

(assert (=> b!5399502 m!6424210))

(declare-fun m!6424212 () Bool)

(assert (=> b!5399502 m!6424212))

(declare-fun m!6424214 () Bool)

(assert (=> b!5399508 m!6424214))

(declare-fun m!6424216 () Bool)

(assert (=> b!5399508 m!6424216))

(declare-fun m!6424218 () Bool)

(assert (=> b!5399481 m!6424218))

(assert (=> b!5399466 m!6424114))

(declare-fun m!6424220 () Bool)

(assert (=> setNonEmpty!35132 m!6424220))

(declare-fun m!6424222 () Bool)

(assert (=> b!5399505 m!6424222))

(declare-fun m!6424224 () Bool)

(assert (=> b!5399471 m!6424224))

(declare-fun m!6424226 () Bool)

(assert (=> b!5399479 m!6424226))

(assert (=> b!5399479 m!6424160))

(declare-fun m!6424228 () Bool)

(assert (=> b!5399479 m!6424228))

(declare-fun m!6424230 () Bool)

(assert (=> b!5399498 m!6424230))

(declare-fun m!6424232 () Bool)

(assert (=> b!5399498 m!6424232))

(declare-fun m!6424234 () Bool)

(assert (=> b!5399498 m!6424234))

(declare-fun m!6424236 () Bool)

(assert (=> b!5399475 m!6424236))

(declare-fun m!6424238 () Bool)

(assert (=> b!5399493 m!6424238))

(push 1)

(assert (not b!5399472))

(assert (not b!5399466))

(assert (not b!5399486))

(assert (not b!5399467))

(assert (not b!5399477))

(assert (not b!5399475))

(assert (not b!5399492))

(assert (not b!5399507))

(assert (not b!5399479))

(assert (not b!5399502))

(assert (not b!5399476))

(assert (not b!5399478))

(assert (not b!5399491))

(assert (not setNonEmpty!35132))

(assert (not b!5399471))

(assert (not b!5399488))

(assert (not b!5399490))

(assert (not b!5399495))

(assert (not b!5399489))

(assert (not b!5399506))

(assert (not b!5399468))

(assert (not b!5399505))

(assert (not b!5399473))

(assert (not b!5399469))

(assert (not b!5399508))

(assert tp_is_empty!39581)

(assert (not b!5399496))

(assert (not b!5399501))

(assert (not b!5399498))

(assert (not b!5399481))

(assert (not b!5399465))

(assert (not b!5399500))

(assert (not b!5399503))

(assert (not b!5399483))

(assert (not b!5399493))

(assert (not b!5399470))

(assert (not start!567160))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1724786 () Bool)

(assert (=> d!1724786 (= (isEmpty!33659 (t!375016 zl!343)) (is-Nil!61669 (t!375016 zl!343)))))

(assert (=> b!5399481 d!1724786))

(declare-fun b!5399682 () Bool)

(declare-fun e!3348042 () (Set Context!9096))

(declare-fun e!3348043 () (Set Context!9096))

(assert (=> b!5399682 (= e!3348042 e!3348043)))

(declare-fun c!941056 () Bool)

(assert (=> b!5399682 (= c!941056 (is-Cons!61667 (exprs!5048 lt!2200882)))))

(declare-fun bm!386394 () Bool)

(declare-fun call!386399 () (Set Context!9096))

(assert (=> bm!386394 (= call!386399 (derivationStepZipperDown!612 (h!68115 (exprs!5048 lt!2200882)) (Context!9097 (t!375014 (exprs!5048 lt!2200882))) (h!68116 s!2326)))))

(declare-fun b!5399683 () Bool)

(assert (=> b!5399683 (= e!3348043 call!386399)))

(declare-fun d!1724788 () Bool)

(declare-fun c!941057 () Bool)

(declare-fun e!3348041 () Bool)

(assert (=> d!1724788 (= c!941057 e!3348041)))

(declare-fun res!2295443 () Bool)

(assert (=> d!1724788 (=> (not res!2295443) (not e!3348041))))

(assert (=> d!1724788 (= res!2295443 (is-Cons!61667 (exprs!5048 lt!2200882)))))

(assert (=> d!1724788 (= (derivationStepZipperUp!536 lt!2200882 (h!68116 s!2326)) e!3348042)))

(declare-fun b!5399684 () Bool)

(assert (=> b!5399684 (= e!3348043 (as set.empty (Set Context!9096)))))

(declare-fun b!5399685 () Bool)

(assert (=> b!5399685 (= e!3348041 (nullable!5333 (h!68115 (exprs!5048 lt!2200882))))))

(declare-fun b!5399686 () Bool)

(assert (=> b!5399686 (= e!3348042 (set.union call!386399 (derivationStepZipperUp!536 (Context!9097 (t!375014 (exprs!5048 lt!2200882))) (h!68116 s!2326))))))

(assert (= (and d!1724788 res!2295443) b!5399685))

(assert (= (and d!1724788 c!941057) b!5399686))

(assert (= (and d!1724788 (not c!941057)) b!5399682))

(assert (= (and b!5399682 c!941056) b!5399683))

(assert (= (and b!5399682 (not c!941056)) b!5399684))

(assert (= (or b!5399686 b!5399683) bm!386394))

(declare-fun m!6424396 () Bool)

(assert (=> bm!386394 m!6424396))

(declare-fun m!6424398 () Bool)

(assert (=> b!5399685 m!6424398))

(declare-fun m!6424400 () Bool)

(assert (=> b!5399686 m!6424400))

(assert (=> b!5399502 d!1724788))

(declare-fun d!1724790 () Bool)

(declare-fun lt!2201091 () Regex!15164)

(assert (=> d!1724790 (validRegex!6900 lt!2201091)))

(assert (=> d!1724790 (= lt!2201091 (generalisedUnion!1093 (unfocusZipperList!606 lt!2200906)))))

(assert (=> d!1724790 (= (unfocusZipper!906 lt!2200906) lt!2201091)))

(declare-fun bs!1248117 () Bool)

(assert (= bs!1248117 d!1724790))

(declare-fun m!6424402 () Bool)

(assert (=> bs!1248117 m!6424402))

(declare-fun m!6424404 () Bool)

(assert (=> bs!1248117 m!6424404))

(assert (=> bs!1248117 m!6424404))

(declare-fun m!6424406 () Bool)

(assert (=> bs!1248117 m!6424406))

(assert (=> b!5399502 d!1724790))

(declare-fun d!1724792 () Bool)

(declare-fun choose!40664 ((Set Context!9096) Int) (Set Context!9096))

(assert (=> d!1724792 (= (flatMap!891 lt!2200894 lambda!281070) (choose!40664 lt!2200894 lambda!281070))))

(declare-fun bs!1248118 () Bool)

(assert (= bs!1248118 d!1724792))

(declare-fun m!6424408 () Bool)

(assert (=> bs!1248118 m!6424408))

(assert (=> b!5399502 d!1724792))

(declare-fun d!1724794 () Bool)

(declare-fun dynLambda!24301 (Int Context!9096) (Set Context!9096))

(assert (=> d!1724794 (= (flatMap!891 lt!2200894 lambda!281070) (dynLambda!24301 lambda!281070 lt!2200900))))

(declare-fun lt!2201094 () Unit!154178)

(declare-fun choose!40665 ((Set Context!9096) Context!9096 Int) Unit!154178)

(assert (=> d!1724794 (= lt!2201094 (choose!40665 lt!2200894 lt!2200900 lambda!281070))))

(assert (=> d!1724794 (= lt!2200894 (set.insert lt!2200900 (as set.empty (Set Context!9096))))))

(assert (=> d!1724794 (= (lemmaFlatMapOnSingletonSet!423 lt!2200894 lt!2200900 lambda!281070) lt!2201094)))

(declare-fun b_lambda!206429 () Bool)

(assert (=> (not b_lambda!206429) (not d!1724794)))

(declare-fun bs!1248119 () Bool)

(assert (= bs!1248119 d!1724794))

(assert (=> bs!1248119 m!6424204))

(declare-fun m!6424410 () Bool)

(assert (=> bs!1248119 m!6424410))

(declare-fun m!6424412 () Bool)

(assert (=> bs!1248119 m!6424412))

(assert (=> bs!1248119 m!6424206))

(assert (=> b!5399502 d!1724794))

(declare-fun b!5399687 () Bool)

(declare-fun e!3348045 () (Set Context!9096))

(declare-fun e!3348046 () (Set Context!9096))

(assert (=> b!5399687 (= e!3348045 e!3348046)))

(declare-fun c!941058 () Bool)

(assert (=> b!5399687 (= c!941058 (is-Cons!61667 (exprs!5048 lt!2200900)))))

(declare-fun bm!386395 () Bool)

(declare-fun call!386400 () (Set Context!9096))

(assert (=> bm!386395 (= call!386400 (derivationStepZipperDown!612 (h!68115 (exprs!5048 lt!2200900)) (Context!9097 (t!375014 (exprs!5048 lt!2200900))) (h!68116 s!2326)))))

(declare-fun b!5399688 () Bool)

(assert (=> b!5399688 (= e!3348046 call!386400)))

(declare-fun d!1724796 () Bool)

(declare-fun c!941059 () Bool)

(declare-fun e!3348044 () Bool)

(assert (=> d!1724796 (= c!941059 e!3348044)))

(declare-fun res!2295444 () Bool)

(assert (=> d!1724796 (=> (not res!2295444) (not e!3348044))))

(assert (=> d!1724796 (= res!2295444 (is-Cons!61667 (exprs!5048 lt!2200900)))))

(assert (=> d!1724796 (= (derivationStepZipperUp!536 lt!2200900 (h!68116 s!2326)) e!3348045)))

(declare-fun b!5399689 () Bool)

(assert (=> b!5399689 (= e!3348046 (as set.empty (Set Context!9096)))))

(declare-fun b!5399690 () Bool)

(assert (=> b!5399690 (= e!3348044 (nullable!5333 (h!68115 (exprs!5048 lt!2200900))))))

(declare-fun b!5399691 () Bool)

(assert (=> b!5399691 (= e!3348045 (set.union call!386400 (derivationStepZipperUp!536 (Context!9097 (t!375014 (exprs!5048 lt!2200900))) (h!68116 s!2326))))))

(assert (= (and d!1724796 res!2295444) b!5399690))

(assert (= (and d!1724796 c!941059) b!5399691))

(assert (= (and d!1724796 (not c!941059)) b!5399687))

(assert (= (and b!5399687 c!941058) b!5399688))

(assert (= (and b!5399687 (not c!941058)) b!5399689))

(assert (= (or b!5399691 b!5399688) bm!386395))

(declare-fun m!6424414 () Bool)

(assert (=> bm!386395 m!6424414))

(declare-fun m!6424416 () Bool)

(assert (=> b!5399690 m!6424416))

(declare-fun m!6424418 () Bool)

(assert (=> b!5399691 m!6424418))

(assert (=> b!5399502 d!1724796))

(declare-fun d!1724798 () Bool)

(assert (=> d!1724798 (= (flatMap!891 lt!2200929 lambda!281070) (choose!40664 lt!2200929 lambda!281070))))

(declare-fun bs!1248120 () Bool)

(assert (= bs!1248120 d!1724798))

(declare-fun m!6424420 () Bool)

(assert (=> bs!1248120 m!6424420))

(assert (=> b!5399502 d!1724798))

(declare-fun d!1724800 () Bool)

(assert (=> d!1724800 (= (flatMap!891 lt!2200929 lambda!281070) (dynLambda!24301 lambda!281070 lt!2200882))))

(declare-fun lt!2201095 () Unit!154178)

(assert (=> d!1724800 (= lt!2201095 (choose!40665 lt!2200929 lt!2200882 lambda!281070))))

(assert (=> d!1724800 (= lt!2200929 (set.insert lt!2200882 (as set.empty (Set Context!9096))))))

(assert (=> d!1724800 (= (lemmaFlatMapOnSingletonSet!423 lt!2200929 lt!2200882 lambda!281070) lt!2201095)))

(declare-fun b_lambda!206431 () Bool)

(assert (=> (not b_lambda!206431) (not d!1724800)))

(declare-fun bs!1248121 () Bool)

(assert (= bs!1248121 d!1724800))

(assert (=> bs!1248121 m!6424200))

(declare-fun m!6424422 () Bool)

(assert (=> bs!1248121 m!6424422))

(declare-fun m!6424424 () Bool)

(assert (=> bs!1248121 m!6424424))

(assert (=> bs!1248121 m!6424208))

(assert (=> b!5399502 d!1724800))

(declare-fun d!1724802 () Bool)

(declare-fun lt!2201096 () Regex!15164)

(assert (=> d!1724802 (validRegex!6900 lt!2201096)))

(assert (=> d!1724802 (= lt!2201096 (generalisedUnion!1093 (unfocusZipperList!606 (Cons!61669 lt!2200924 Nil!61669))))))

(assert (=> d!1724802 (= (unfocusZipper!906 (Cons!61669 lt!2200924 Nil!61669)) lt!2201096)))

(declare-fun bs!1248122 () Bool)

(assert (= bs!1248122 d!1724802))

(declare-fun m!6424426 () Bool)

(assert (=> bs!1248122 m!6424426))

(declare-fun m!6424428 () Bool)

(assert (=> bs!1248122 m!6424428))

(assert (=> bs!1248122 m!6424428))

(declare-fun m!6424430 () Bool)

(assert (=> bs!1248122 m!6424430))

(assert (=> b!5399503 d!1724802))

(declare-fun b!5399710 () Bool)

(declare-fun e!3348061 () Option!15275)

(declare-fun e!3348059 () Option!15275)

(assert (=> b!5399710 (= e!3348061 e!3348059)))

(declare-fun c!941065 () Bool)

(assert (=> b!5399710 (= c!941065 (is-Nil!61668 s!2326))))

(declare-fun b!5399711 () Bool)

(declare-fun e!3348058 () Bool)

(declare-fun lt!2201104 () Option!15275)

(assert (=> b!5399711 (= e!3348058 (not (isDefined!11978 lt!2201104)))))

(declare-fun b!5399712 () Bool)

(declare-fun res!2295458 () Bool)

(declare-fun e!3348057 () Bool)

(assert (=> b!5399712 (=> (not res!2295458) (not e!3348057))))

(assert (=> b!5399712 (= res!2295458 (matchR!7349 (regTwo!30840 r!7292) (_2!35666 (get!21249 lt!2201104))))))

(declare-fun b!5399713 () Bool)

(declare-fun res!2295455 () Bool)

(assert (=> b!5399713 (=> (not res!2295455) (not e!3348057))))

(assert (=> b!5399713 (= res!2295455 (matchR!7349 (regOne!30840 r!7292) (_1!35666 (get!21249 lt!2201104))))))

(declare-fun b!5399714 () Bool)

(assert (=> b!5399714 (= e!3348061 (Some!15274 (tuple2!64727 Nil!61668 s!2326)))))

(declare-fun b!5399715 () Bool)

(declare-fun lt!2201103 () Unit!154178)

(declare-fun lt!2201105 () Unit!154178)

(assert (=> b!5399715 (= lt!2201103 lt!2201105)))

(assert (=> b!5399715 (= (++!13501 (++!13501 Nil!61668 (Cons!61668 (h!68116 s!2326) Nil!61668)) (t!375015 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1826 (List!61792 C!30598 List!61792 List!61792) Unit!154178)

(assert (=> b!5399715 (= lt!2201105 (lemmaMoveElementToOtherListKeepsConcatEq!1826 Nil!61668 (h!68116 s!2326) (t!375015 s!2326) s!2326))))

(assert (=> b!5399715 (= e!3348059 (findConcatSeparation!1689 (regOne!30840 r!7292) (regTwo!30840 r!7292) (++!13501 Nil!61668 (Cons!61668 (h!68116 s!2326) Nil!61668)) (t!375015 s!2326) s!2326))))

(declare-fun b!5399716 () Bool)

(assert (=> b!5399716 (= e!3348059 None!15274)))

(declare-fun b!5399717 () Bool)

(declare-fun e!3348060 () Bool)

(assert (=> b!5399717 (= e!3348060 (matchR!7349 (regTwo!30840 r!7292) s!2326))))

(declare-fun b!5399718 () Bool)

(assert (=> b!5399718 (= e!3348057 (= (++!13501 (_1!35666 (get!21249 lt!2201104)) (_2!35666 (get!21249 lt!2201104))) s!2326))))

(declare-fun d!1724804 () Bool)

(assert (=> d!1724804 e!3348058))

(declare-fun res!2295459 () Bool)

(assert (=> d!1724804 (=> res!2295459 e!3348058)))

(assert (=> d!1724804 (= res!2295459 e!3348057)))

(declare-fun res!2295457 () Bool)

(assert (=> d!1724804 (=> (not res!2295457) (not e!3348057))))

(assert (=> d!1724804 (= res!2295457 (isDefined!11978 lt!2201104))))

(assert (=> d!1724804 (= lt!2201104 e!3348061)))

(declare-fun c!941064 () Bool)

(assert (=> d!1724804 (= c!941064 e!3348060)))

(declare-fun res!2295456 () Bool)

(assert (=> d!1724804 (=> (not res!2295456) (not e!3348060))))

(assert (=> d!1724804 (= res!2295456 (matchR!7349 (regOne!30840 r!7292) Nil!61668))))

(assert (=> d!1724804 (validRegex!6900 (regOne!30840 r!7292))))

(assert (=> d!1724804 (= (findConcatSeparation!1689 (regOne!30840 r!7292) (regTwo!30840 r!7292) Nil!61668 s!2326 s!2326) lt!2201104)))

(assert (= (and d!1724804 res!2295456) b!5399717))

(assert (= (and d!1724804 c!941064) b!5399714))

(assert (= (and d!1724804 (not c!941064)) b!5399710))

(assert (= (and b!5399710 c!941065) b!5399716))

(assert (= (and b!5399710 (not c!941065)) b!5399715))

(assert (= (and d!1724804 res!2295457) b!5399713))

(assert (= (and b!5399713 res!2295455) b!5399712))

(assert (= (and b!5399712 res!2295458) b!5399718))

(assert (= (and d!1724804 (not res!2295459)) b!5399711))

(declare-fun m!6424432 () Bool)

(assert (=> d!1724804 m!6424432))

(declare-fun m!6424434 () Bool)

(assert (=> d!1724804 m!6424434))

(declare-fun m!6424436 () Bool)

(assert (=> d!1724804 m!6424436))

(declare-fun m!6424438 () Bool)

(assert (=> b!5399717 m!6424438))

(declare-fun m!6424440 () Bool)

(assert (=> b!5399713 m!6424440))

(declare-fun m!6424442 () Bool)

(assert (=> b!5399713 m!6424442))

(assert (=> b!5399711 m!6424432))

(declare-fun m!6424444 () Bool)

(assert (=> b!5399715 m!6424444))

(assert (=> b!5399715 m!6424444))

(declare-fun m!6424446 () Bool)

(assert (=> b!5399715 m!6424446))

(declare-fun m!6424448 () Bool)

(assert (=> b!5399715 m!6424448))

(assert (=> b!5399715 m!6424444))

(declare-fun m!6424450 () Bool)

(assert (=> b!5399715 m!6424450))

(assert (=> b!5399712 m!6424440))

(declare-fun m!6424452 () Bool)

(assert (=> b!5399712 m!6424452))

(assert (=> b!5399718 m!6424440))

(declare-fun m!6424454 () Bool)

(assert (=> b!5399718 m!6424454))

(assert (=> b!5399483 d!1724804))

(declare-fun d!1724806 () Bool)

(declare-fun choose!40666 (Int) Bool)

(assert (=> d!1724806 (= (Exists!2345 lambda!281068) (choose!40666 lambda!281068))))

(declare-fun bs!1248123 () Bool)

(assert (= bs!1248123 d!1724806))

(declare-fun m!6424456 () Bool)

(assert (=> bs!1248123 m!6424456))

(assert (=> b!5399483 d!1724806))

(declare-fun d!1724808 () Bool)

(assert (=> d!1724808 (= (Exists!2345 lambda!281069) (choose!40666 lambda!281069))))

(declare-fun bs!1248124 () Bool)

(assert (= bs!1248124 d!1724808))

(declare-fun m!6424458 () Bool)

(assert (=> bs!1248124 m!6424458))

(assert (=> b!5399483 d!1724808))

(declare-fun bs!1248125 () Bool)

(declare-fun d!1724810 () Bool)

(assert (= bs!1248125 (and d!1724810 b!5399483)))

(declare-fun lambda!281102 () Int)

(assert (=> bs!1248125 (= lambda!281102 lambda!281068)))

(assert (=> bs!1248125 (not (= lambda!281102 lambda!281069))))

(assert (=> d!1724810 true))

(assert (=> d!1724810 true))

(assert (=> d!1724810 true))

(assert (=> d!1724810 (= (isDefined!11978 (findConcatSeparation!1689 (regOne!30840 r!7292) (regTwo!30840 r!7292) Nil!61668 s!2326 s!2326)) (Exists!2345 lambda!281102))))

(declare-fun lt!2201108 () Unit!154178)

(declare-fun choose!40667 (Regex!15164 Regex!15164 List!61792) Unit!154178)

(assert (=> d!1724810 (= lt!2201108 (choose!40667 (regOne!30840 r!7292) (regTwo!30840 r!7292) s!2326))))

(assert (=> d!1724810 (validRegex!6900 (regOne!30840 r!7292))))

(assert (=> d!1724810 (= (lemmaFindConcatSeparationEquivalentToExists!1453 (regOne!30840 r!7292) (regTwo!30840 r!7292) s!2326) lt!2201108)))

(declare-fun bs!1248126 () Bool)

(assert (= bs!1248126 d!1724810))

(assert (=> bs!1248126 m!6424436))

(assert (=> bs!1248126 m!6424168))

(assert (=> bs!1248126 m!6424168))

(assert (=> bs!1248126 m!6424170))

(declare-fun m!6424460 () Bool)

(assert (=> bs!1248126 m!6424460))

(declare-fun m!6424462 () Bool)

(assert (=> bs!1248126 m!6424462))

(assert (=> b!5399483 d!1724810))

(declare-fun bs!1248127 () Bool)

(declare-fun d!1724812 () Bool)

(assert (= bs!1248127 (and d!1724812 b!5399483)))

(declare-fun lambda!281107 () Int)

(assert (=> bs!1248127 (= lambda!281107 lambda!281068)))

(assert (=> bs!1248127 (not (= lambda!281107 lambda!281069))))

(declare-fun bs!1248128 () Bool)

(assert (= bs!1248128 (and d!1724812 d!1724810)))

(assert (=> bs!1248128 (= lambda!281107 lambda!281102)))

(assert (=> d!1724812 true))

(assert (=> d!1724812 true))

(assert (=> d!1724812 true))

(declare-fun lambda!281108 () Int)

(assert (=> bs!1248127 (not (= lambda!281108 lambda!281068))))

(assert (=> bs!1248127 (= lambda!281108 lambda!281069)))

(assert (=> bs!1248128 (not (= lambda!281108 lambda!281102))))

(declare-fun bs!1248129 () Bool)

(assert (= bs!1248129 d!1724812))

(assert (=> bs!1248129 (not (= lambda!281108 lambda!281107))))

(assert (=> d!1724812 true))

(assert (=> d!1724812 true))

(assert (=> d!1724812 true))

(assert (=> d!1724812 (= (Exists!2345 lambda!281107) (Exists!2345 lambda!281108))))

(declare-fun lt!2201111 () Unit!154178)

(declare-fun choose!40668 (Regex!15164 Regex!15164 List!61792) Unit!154178)

(assert (=> d!1724812 (= lt!2201111 (choose!40668 (regOne!30840 r!7292) (regTwo!30840 r!7292) s!2326))))

(assert (=> d!1724812 (validRegex!6900 (regOne!30840 r!7292))))

(assert (=> d!1724812 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!999 (regOne!30840 r!7292) (regTwo!30840 r!7292) s!2326) lt!2201111)))

(declare-fun m!6424464 () Bool)

(assert (=> bs!1248129 m!6424464))

(declare-fun m!6424466 () Bool)

(assert (=> bs!1248129 m!6424466))

(declare-fun m!6424468 () Bool)

(assert (=> bs!1248129 m!6424468))

(assert (=> bs!1248129 m!6424436))

(assert (=> b!5399483 d!1724812))

(declare-fun d!1724814 () Bool)

(declare-fun isEmpty!33663 (Option!15275) Bool)

(assert (=> d!1724814 (= (isDefined!11978 (findConcatSeparation!1689 (regOne!30840 r!7292) (regTwo!30840 r!7292) Nil!61668 s!2326 s!2326)) (not (isEmpty!33663 (findConcatSeparation!1689 (regOne!30840 r!7292) (regTwo!30840 r!7292) Nil!61668 s!2326 s!2326))))))

(declare-fun bs!1248130 () Bool)

(assert (= bs!1248130 d!1724814))

(assert (=> bs!1248130 m!6424168))

(declare-fun m!6424470 () Bool)

(assert (=> bs!1248130 m!6424470))

(assert (=> b!5399483 d!1724814))

(declare-fun d!1724816 () Bool)

(assert (=> d!1724816 (= (isEmpty!33660 (t!375014 (exprs!5048 (h!68117 zl!343)))) (is-Nil!61667 (t!375014 (exprs!5048 (h!68117 zl!343)))))))

(assert (=> b!5399505 d!1724816))

(declare-fun d!1724818 () Bool)

(declare-fun c!941068 () Bool)

(declare-fun isEmpty!33664 (List!61792) Bool)

(assert (=> d!1724818 (= c!941068 (isEmpty!33664 (t!375015 s!2326)))))

(declare-fun e!3348070 () Bool)

(assert (=> d!1724818 (= (matchZipper!1408 lt!2200926 (t!375015 s!2326)) e!3348070)))

(declare-fun b!5399735 () Bool)

(declare-fun nullableZipper!1431 ((Set Context!9096)) Bool)

(assert (=> b!5399735 (= e!3348070 (nullableZipper!1431 lt!2200926))))

(declare-fun b!5399736 () Bool)

(declare-fun head!11580 (List!61792) C!30598)

(declare-fun tail!10677 (List!61792) List!61792)

(assert (=> b!5399736 (= e!3348070 (matchZipper!1408 (derivationStepZipper!1403 lt!2200926 (head!11580 (t!375015 s!2326))) (tail!10677 (t!375015 s!2326))))))

(assert (= (and d!1724818 c!941068) b!5399735))

(assert (= (and d!1724818 (not c!941068)) b!5399736))

(declare-fun m!6424472 () Bool)

(assert (=> d!1724818 m!6424472))

(declare-fun m!6424474 () Bool)

(assert (=> b!5399735 m!6424474))

(declare-fun m!6424476 () Bool)

(assert (=> b!5399736 m!6424476))

(assert (=> b!5399736 m!6424476))

(declare-fun m!6424478 () Bool)

(assert (=> b!5399736 m!6424478))

(declare-fun m!6424480 () Bool)

(assert (=> b!5399736 m!6424480))

(assert (=> b!5399736 m!6424478))

(assert (=> b!5399736 m!6424480))

(declare-fun m!6424482 () Bool)

(assert (=> b!5399736 m!6424482))

(assert (=> b!5399465 d!1724818))

(declare-fun b!5399755 () Bool)

(declare-fun e!3348089 () Bool)

(declare-fun e!3348088 () Bool)

(assert (=> b!5399755 (= e!3348089 e!3348088)))

(declare-fun res!2295484 () Bool)

(assert (=> b!5399755 (= res!2295484 (not (nullable!5333 (reg!15493 lt!2200922))))))

(assert (=> b!5399755 (=> (not res!2295484) (not e!3348088))))

(declare-fun bm!386402 () Bool)

(declare-fun call!386408 () Bool)

(declare-fun call!386407 () Bool)

(assert (=> bm!386402 (= call!386408 call!386407)))

(declare-fun b!5399756 () Bool)

(declare-fun e!3348087 () Bool)

(declare-fun call!386409 () Bool)

(assert (=> b!5399756 (= e!3348087 call!386409)))

(declare-fun b!5399758 () Bool)

(declare-fun res!2295483 () Bool)

(declare-fun e!3348086 () Bool)

(assert (=> b!5399758 (=> res!2295483 e!3348086)))

(assert (=> b!5399758 (= res!2295483 (not (is-Concat!24009 lt!2200922)))))

(declare-fun e!3348091 () Bool)

(assert (=> b!5399758 (= e!3348091 e!3348086)))

(declare-fun b!5399759 () Bool)

(declare-fun e!3348085 () Bool)

(assert (=> b!5399759 (= e!3348085 call!386409)))

(declare-fun b!5399760 () Bool)

(assert (=> b!5399760 (= e!3348089 e!3348091)))

(declare-fun c!941074 () Bool)

(assert (=> b!5399760 (= c!941074 (is-Union!15164 lt!2200922))))

(declare-fun b!5399761 () Bool)

(assert (=> b!5399761 (= e!3348086 e!3348085)))

(declare-fun res!2295486 () Bool)

(assert (=> b!5399761 (=> (not res!2295486) (not e!3348085))))

(assert (=> b!5399761 (= res!2295486 call!386408)))

(declare-fun bm!386403 () Bool)

(declare-fun c!941073 () Bool)

(assert (=> bm!386403 (= call!386407 (validRegex!6900 (ite c!941073 (reg!15493 lt!2200922) (ite c!941074 (regOne!30841 lt!2200922) (regOne!30840 lt!2200922)))))))

(declare-fun bm!386404 () Bool)

(assert (=> bm!386404 (= call!386409 (validRegex!6900 (ite c!941074 (regTwo!30841 lt!2200922) (regTwo!30840 lt!2200922))))))

(declare-fun b!5399762 () Bool)

(declare-fun e!3348090 () Bool)

(assert (=> b!5399762 (= e!3348090 e!3348089)))

(assert (=> b!5399762 (= c!941073 (is-Star!15164 lt!2200922))))

(declare-fun b!5399763 () Bool)

(declare-fun res!2295485 () Bool)

(assert (=> b!5399763 (=> (not res!2295485) (not e!3348087))))

(assert (=> b!5399763 (= res!2295485 call!386408)))

(assert (=> b!5399763 (= e!3348091 e!3348087)))

(declare-fun d!1724820 () Bool)

(declare-fun res!2295482 () Bool)

(assert (=> d!1724820 (=> res!2295482 e!3348090)))

(assert (=> d!1724820 (= res!2295482 (is-ElementMatch!15164 lt!2200922))))

(assert (=> d!1724820 (= (validRegex!6900 lt!2200922) e!3348090)))

(declare-fun b!5399757 () Bool)

(assert (=> b!5399757 (= e!3348088 call!386407)))

(assert (= (and d!1724820 (not res!2295482)) b!5399762))

(assert (= (and b!5399762 c!941073) b!5399755))

(assert (= (and b!5399762 (not c!941073)) b!5399760))

(assert (= (and b!5399755 res!2295484) b!5399757))

(assert (= (and b!5399760 c!941074) b!5399763))

(assert (= (and b!5399760 (not c!941074)) b!5399758))

(assert (= (and b!5399763 res!2295485) b!5399756))

(assert (= (and b!5399758 (not res!2295483)) b!5399761))

(assert (= (and b!5399761 res!2295486) b!5399759))

(assert (= (or b!5399756 b!5399759) bm!386404))

(assert (= (or b!5399763 b!5399761) bm!386402))

(assert (= (or b!5399757 bm!386402) bm!386403))

(declare-fun m!6424484 () Bool)

(assert (=> b!5399755 m!6424484))

(declare-fun m!6424486 () Bool)

(assert (=> bm!386403 m!6424486))

(declare-fun m!6424488 () Bool)

(assert (=> bm!386404 m!6424488))

(assert (=> b!5399486 d!1724820))

(declare-fun d!1724822 () Bool)

(declare-fun forall!14524 (List!61791 Int) Bool)

(assert (=> d!1724822 (forall!14524 (++!13502 lt!2200909 lt!2200896) lambda!281072)))

(declare-fun lt!2201114 () Unit!154178)

(declare-fun choose!40669 (List!61791 List!61791 Int) Unit!154178)

(assert (=> d!1724822 (= lt!2201114 (choose!40669 lt!2200909 lt!2200896 lambda!281072))))

(assert (=> d!1724822 (forall!14524 lt!2200909 lambda!281072)))

(assert (=> d!1724822 (= (lemmaConcatPreservesForall!189 lt!2200909 lt!2200896 lambda!281072) lt!2201114)))

(declare-fun bs!1248131 () Bool)

(assert (= bs!1248131 d!1724822))

(assert (=> bs!1248131 m!6424100))

(assert (=> bs!1248131 m!6424100))

(declare-fun m!6424490 () Bool)

(assert (=> bs!1248131 m!6424490))

(declare-fun m!6424492 () Bool)

(assert (=> bs!1248131 m!6424492))

(declare-fun m!6424494 () Bool)

(assert (=> bs!1248131 m!6424494))

(assert (=> b!5399486 d!1724822))

(declare-fun d!1724824 () Bool)

(assert (=> d!1724824 (= (matchR!7349 (Concat!24009 (Concat!24009 (reg!15493 (regOne!30840 r!7292)) lt!2200910) (regTwo!30840 r!7292)) s!2326) (matchR!7349 (Concat!24009 (reg!15493 (regOne!30840 r!7292)) (Concat!24009 lt!2200910 (regTwo!30840 r!7292))) s!2326))))

(declare-fun lt!2201117 () Unit!154178)

(declare-fun choose!40670 (Regex!15164 Regex!15164 Regex!15164 List!61792) Unit!154178)

(assert (=> d!1724824 (= lt!2201117 (choose!40670 (reg!15493 (regOne!30840 r!7292)) lt!2200910 (regTwo!30840 r!7292) s!2326))))

(declare-fun e!3348094 () Bool)

(assert (=> d!1724824 e!3348094))

(declare-fun res!2295491 () Bool)

(assert (=> d!1724824 (=> (not res!2295491) (not e!3348094))))

(assert (=> d!1724824 (= res!2295491 (validRegex!6900 (reg!15493 (regOne!30840 r!7292))))))

(assert (=> d!1724824 (= (lemmaConcatAssociative!17 (reg!15493 (regOne!30840 r!7292)) lt!2200910 (regTwo!30840 r!7292) s!2326) lt!2201117)))

(declare-fun b!5399768 () Bool)

(declare-fun res!2295492 () Bool)

(assert (=> b!5399768 (=> (not res!2295492) (not e!3348094))))

(assert (=> b!5399768 (= res!2295492 (validRegex!6900 lt!2200910))))

(declare-fun b!5399769 () Bool)

(assert (=> b!5399769 (= e!3348094 (validRegex!6900 (regTwo!30840 r!7292)))))

(assert (= (and d!1724824 res!2295491) b!5399768))

(assert (= (and b!5399768 res!2295492) b!5399769))

(declare-fun m!6424496 () Bool)

(assert (=> d!1724824 m!6424496))

(declare-fun m!6424498 () Bool)

(assert (=> d!1724824 m!6424498))

(declare-fun m!6424500 () Bool)

(assert (=> d!1724824 m!6424500))

(declare-fun m!6424502 () Bool)

(assert (=> d!1724824 m!6424502))

(declare-fun m!6424504 () Bool)

(assert (=> b!5399768 m!6424504))

(declare-fun m!6424506 () Bool)

(assert (=> b!5399769 m!6424506))

(assert (=> b!5399486 d!1724824))

(declare-fun d!1724826 () Bool)

(assert (=> d!1724826 (= (matchR!7349 (reg!15493 (regOne!30840 r!7292)) (_1!35666 lt!2200883)) (matchZipper!1408 lt!2200929 (_1!35666 lt!2200883)))))

(declare-fun lt!2201120 () Unit!154178)

(declare-fun choose!40671 ((Set Context!9096) List!61793 Regex!15164 List!61792) Unit!154178)

(assert (=> d!1724826 (= lt!2201120 (choose!40671 lt!2200929 lt!2200906 (reg!15493 (regOne!30840 r!7292)) (_1!35666 lt!2200883)))))

(assert (=> d!1724826 (validRegex!6900 (reg!15493 (regOne!30840 r!7292)))))

(assert (=> d!1724826 (= (theoremZipperRegexEquiv!478 lt!2200929 lt!2200906 (reg!15493 (regOne!30840 r!7292)) (_1!35666 lt!2200883)) lt!2201120)))

(declare-fun bs!1248132 () Bool)

(assert (= bs!1248132 d!1724826))

(assert (=> bs!1248132 m!6424110))

(assert (=> bs!1248132 m!6424182))

(declare-fun m!6424508 () Bool)

(assert (=> bs!1248132 m!6424508))

(assert (=> bs!1248132 m!6424502))

(assert (=> b!5399486 d!1724826))

(declare-fun d!1724828 () Bool)

(assert (=> d!1724828 (= (matchR!7349 lt!2200917 (_2!35666 lt!2200883)) (matchZipper!1408 lt!2200894 (_2!35666 lt!2200883)))))

(declare-fun lt!2201121 () Unit!154178)

(assert (=> d!1724828 (= lt!2201121 (choose!40671 lt!2200894 lt!2200912 lt!2200917 (_2!35666 lt!2200883)))))

(assert (=> d!1724828 (validRegex!6900 lt!2200917)))

(assert (=> d!1724828 (= (theoremZipperRegexEquiv!478 lt!2200894 lt!2200912 lt!2200917 (_2!35666 lt!2200883)) lt!2201121)))

(declare-fun bs!1248133 () Bool)

(assert (= bs!1248133 d!1724828))

(assert (=> bs!1248133 m!6424106))

(assert (=> bs!1248133 m!6424236))

(declare-fun m!6424510 () Bool)

(assert (=> bs!1248133 m!6424510))

(declare-fun m!6424512 () Bool)

(assert (=> bs!1248133 m!6424512))

(assert (=> b!5399486 d!1724828))

(declare-fun d!1724830 () Bool)

(assert (=> d!1724830 (matchR!7349 (Concat!24009 (reg!15493 (regOne!30840 r!7292)) lt!2200917) (++!13501 (_1!35666 lt!2200883) (_2!35666 lt!2200883)))))

(declare-fun lt!2201124 () Unit!154178)

(declare-fun choose!40672 (Regex!15164 Regex!15164 List!61792 List!61792) Unit!154178)

(assert (=> d!1724830 (= lt!2201124 (choose!40672 (reg!15493 (regOne!30840 r!7292)) lt!2200917 (_1!35666 lt!2200883) (_2!35666 lt!2200883)))))

(declare-fun e!3348097 () Bool)

(assert (=> d!1724830 e!3348097))

(declare-fun res!2295495 () Bool)

(assert (=> d!1724830 (=> (not res!2295495) (not e!3348097))))

(assert (=> d!1724830 (= res!2295495 (validRegex!6900 (reg!15493 (regOne!30840 r!7292))))))

(assert (=> d!1724830 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!187 (reg!15493 (regOne!30840 r!7292)) lt!2200917 (_1!35666 lt!2200883) (_2!35666 lt!2200883)) lt!2201124)))

(declare-fun b!5399772 () Bool)

(assert (=> b!5399772 (= e!3348097 (validRegex!6900 lt!2200917))))

(assert (= (and d!1724830 res!2295495) b!5399772))

(assert (=> d!1724830 m!6424184))

(assert (=> d!1724830 m!6424184))

(declare-fun m!6424514 () Bool)

(assert (=> d!1724830 m!6424514))

(declare-fun m!6424516 () Bool)

(assert (=> d!1724830 m!6424516))

(assert (=> d!1724830 m!6424502))

(assert (=> b!5399772 m!6424512))

(assert (=> b!5399486 d!1724830))

(declare-fun b!5399801 () Bool)

(declare-fun res!2295518 () Bool)

(declare-fun e!3348117 () Bool)

(assert (=> b!5399801 (=> (not res!2295518) (not e!3348117))))

(declare-fun call!386412 () Bool)

(assert (=> b!5399801 (= res!2295518 (not call!386412))))

(declare-fun b!5399802 () Bool)

(declare-fun res!2295517 () Bool)

(declare-fun e!3348113 () Bool)

(assert (=> b!5399802 (=> res!2295517 e!3348113)))

(assert (=> b!5399802 (= res!2295517 (not (isEmpty!33664 (tail!10677 lt!2200887))))))

(declare-fun b!5399803 () Bool)

(assert (=> b!5399803 (= e!3348117 (= (head!11580 lt!2200887) (c!941036 lt!2200892)))))

(declare-fun b!5399804 () Bool)

(declare-fun e!3348115 () Bool)

(assert (=> b!5399804 (= e!3348115 e!3348113)))

(declare-fun res!2295516 () Bool)

(assert (=> b!5399804 (=> res!2295516 e!3348113)))

(assert (=> b!5399804 (= res!2295516 call!386412)))

(declare-fun b!5399806 () Bool)

(declare-fun e!3348118 () Bool)

(declare-fun derivativeStep!4252 (Regex!15164 C!30598) Regex!15164)

(assert (=> b!5399806 (= e!3348118 (matchR!7349 (derivativeStep!4252 lt!2200892 (head!11580 lt!2200887)) (tail!10677 lt!2200887)))))

(declare-fun b!5399807 () Bool)

(assert (=> b!5399807 (= e!3348118 (nullable!5333 lt!2200892))))

(declare-fun b!5399808 () Bool)

(declare-fun e!3348116 () Bool)

(declare-fun lt!2201127 () Bool)

(assert (=> b!5399808 (= e!3348116 (= lt!2201127 call!386412))))

(declare-fun b!5399809 () Bool)

(declare-fun res!2295512 () Bool)

(declare-fun e!3348112 () Bool)

(assert (=> b!5399809 (=> res!2295512 e!3348112)))

(assert (=> b!5399809 (= res!2295512 e!3348117)))

(declare-fun res!2295519 () Bool)

(assert (=> b!5399809 (=> (not res!2295519) (not e!3348117))))

(assert (=> b!5399809 (= res!2295519 lt!2201127)))

(declare-fun b!5399810 () Bool)

(assert (=> b!5399810 (= e!3348112 e!3348115)))

(declare-fun res!2295513 () Bool)

(assert (=> b!5399810 (=> (not res!2295513) (not e!3348115))))

(assert (=> b!5399810 (= res!2295513 (not lt!2201127))))

(declare-fun b!5399811 () Bool)

(declare-fun e!3348114 () Bool)

(assert (=> b!5399811 (= e!3348116 e!3348114)))

(declare-fun c!941083 () Bool)

(assert (=> b!5399811 (= c!941083 (is-EmptyLang!15164 lt!2200892))))

(declare-fun b!5399812 () Bool)

(assert (=> b!5399812 (= e!3348113 (not (= (head!11580 lt!2200887) (c!941036 lt!2200892))))))

(declare-fun bm!386407 () Bool)

(assert (=> bm!386407 (= call!386412 (isEmpty!33664 lt!2200887))))

(declare-fun b!5399805 () Bool)

(declare-fun res!2295514 () Bool)

(assert (=> b!5399805 (=> (not res!2295514) (not e!3348117))))

(assert (=> b!5399805 (= res!2295514 (isEmpty!33664 (tail!10677 lt!2200887)))))

(declare-fun d!1724832 () Bool)

(assert (=> d!1724832 e!3348116))

(declare-fun c!941081 () Bool)

(assert (=> d!1724832 (= c!941081 (is-EmptyExpr!15164 lt!2200892))))

(assert (=> d!1724832 (= lt!2201127 e!3348118)))

(declare-fun c!941082 () Bool)

(assert (=> d!1724832 (= c!941082 (isEmpty!33664 lt!2200887))))

(assert (=> d!1724832 (validRegex!6900 lt!2200892)))

(assert (=> d!1724832 (= (matchR!7349 lt!2200892 lt!2200887) lt!2201127)))

(declare-fun b!5399813 () Bool)

(declare-fun res!2295515 () Bool)

(assert (=> b!5399813 (=> res!2295515 e!3348112)))

(assert (=> b!5399813 (= res!2295515 (not (is-ElementMatch!15164 lt!2200892)))))

(assert (=> b!5399813 (= e!3348114 e!3348112)))

(declare-fun b!5399814 () Bool)

(assert (=> b!5399814 (= e!3348114 (not lt!2201127))))

(assert (= (and d!1724832 c!941082) b!5399807))

(assert (= (and d!1724832 (not c!941082)) b!5399806))

(assert (= (and d!1724832 c!941081) b!5399808))

(assert (= (and d!1724832 (not c!941081)) b!5399811))

(assert (= (and b!5399811 c!941083) b!5399814))

(assert (= (and b!5399811 (not c!941083)) b!5399813))

(assert (= (and b!5399813 (not res!2295515)) b!5399809))

(assert (= (and b!5399809 res!2295519) b!5399801))

(assert (= (and b!5399801 res!2295518) b!5399805))

(assert (= (and b!5399805 res!2295514) b!5399803))

(assert (= (and b!5399809 (not res!2295512)) b!5399810))

(assert (= (and b!5399810 res!2295513) b!5399804))

(assert (= (and b!5399804 (not res!2295516)) b!5399802))

(assert (= (and b!5399802 (not res!2295517)) b!5399812))

(assert (= (or b!5399808 b!5399801 b!5399804) bm!386407))

(declare-fun m!6424518 () Bool)

(assert (=> b!5399805 m!6424518))

(assert (=> b!5399805 m!6424518))

(declare-fun m!6424520 () Bool)

(assert (=> b!5399805 m!6424520))

(declare-fun m!6424522 () Bool)

(assert (=> b!5399807 m!6424522))

(declare-fun m!6424524 () Bool)

(assert (=> d!1724832 m!6424524))

(declare-fun m!6424526 () Bool)

(assert (=> d!1724832 m!6424526))

(declare-fun m!6424528 () Bool)

(assert (=> b!5399806 m!6424528))

(assert (=> b!5399806 m!6424528))

(declare-fun m!6424530 () Bool)

(assert (=> b!5399806 m!6424530))

(assert (=> b!5399806 m!6424518))

(assert (=> b!5399806 m!6424530))

(assert (=> b!5399806 m!6424518))

(declare-fun m!6424532 () Bool)

(assert (=> b!5399806 m!6424532))

(assert (=> b!5399802 m!6424518))

(assert (=> b!5399802 m!6424518))

(assert (=> b!5399802 m!6424520))

(assert (=> b!5399812 m!6424528))

(assert (=> b!5399803 m!6424528))

(assert (=> bm!386407 m!6424524))

(assert (=> b!5399486 d!1724832))

(declare-fun d!1724834 () Bool)

(declare-fun c!941084 () Bool)

(assert (=> d!1724834 (= c!941084 (isEmpty!33664 lt!2200887))))

(declare-fun e!3348119 () Bool)

(assert (=> d!1724834 (= (matchZipper!1408 (set.insert (Context!9097 (++!13502 lt!2200909 lt!2200896)) (as set.empty (Set Context!9096))) lt!2200887) e!3348119)))

(declare-fun b!5399815 () Bool)

(assert (=> b!5399815 (= e!3348119 (nullableZipper!1431 (set.insert (Context!9097 (++!13502 lt!2200909 lt!2200896)) (as set.empty (Set Context!9096)))))))

(declare-fun b!5399816 () Bool)

(assert (=> b!5399816 (= e!3348119 (matchZipper!1408 (derivationStepZipper!1403 (set.insert (Context!9097 (++!13502 lt!2200909 lt!2200896)) (as set.empty (Set Context!9096))) (head!11580 lt!2200887)) (tail!10677 lt!2200887)))))

(assert (= (and d!1724834 c!941084) b!5399815))

(assert (= (and d!1724834 (not c!941084)) b!5399816))

(assert (=> d!1724834 m!6424524))

(assert (=> b!5399815 m!6424094))

(declare-fun m!6424534 () Bool)

(assert (=> b!5399815 m!6424534))

(assert (=> b!5399816 m!6424528))

(assert (=> b!5399816 m!6424094))

(assert (=> b!5399816 m!6424528))

(declare-fun m!6424536 () Bool)

(assert (=> b!5399816 m!6424536))

(assert (=> b!5399816 m!6424518))

(assert (=> b!5399816 m!6424536))

(assert (=> b!5399816 m!6424518))

(declare-fun m!6424538 () Bool)

(assert (=> b!5399816 m!6424538))

(assert (=> b!5399486 d!1724834))

(declare-fun bs!1248134 () Bool)

(declare-fun d!1724836 () Bool)

(assert (= bs!1248134 (and d!1724836 b!5399478)))

(declare-fun lambda!281111 () Int)

(assert (=> bs!1248134 (= lambda!281111 lambda!281072)))

(assert (=> d!1724836 (matchZipper!1408 (set.insert (Context!9097 (++!13502 (exprs!5048 lt!2200882) (exprs!5048 lt!2200900))) (as set.empty (Set Context!9096))) (++!13501 (_1!35666 lt!2200883) (_2!35666 lt!2200883)))))

(declare-fun lt!2201133 () Unit!154178)

(assert (=> d!1724836 (= lt!2201133 (lemmaConcatPreservesForall!189 (exprs!5048 lt!2200882) (exprs!5048 lt!2200900) lambda!281111))))

(declare-fun lt!2201132 () Unit!154178)

(declare-fun choose!40673 (Context!9096 Context!9096 List!61792 List!61792) Unit!154178)

(assert (=> d!1724836 (= lt!2201132 (choose!40673 lt!2200882 lt!2200900 (_1!35666 lt!2200883) (_2!35666 lt!2200883)))))

(assert (=> d!1724836 (matchZipper!1408 (set.insert lt!2200882 (as set.empty (Set Context!9096))) (_1!35666 lt!2200883))))

(assert (=> d!1724836 (= (lemmaConcatenateContextMatchesConcatOfStrings!37 lt!2200882 lt!2200900 (_1!35666 lt!2200883) (_2!35666 lt!2200883)) lt!2201132)))

(declare-fun bs!1248135 () Bool)

(assert (= bs!1248135 d!1724836))

(declare-fun m!6424540 () Bool)

(assert (=> bs!1248135 m!6424540))

(declare-fun m!6424542 () Bool)

(assert (=> bs!1248135 m!6424542))

(assert (=> bs!1248135 m!6424542))

(assert (=> bs!1248135 m!6424184))

(declare-fun m!6424544 () Bool)

(assert (=> bs!1248135 m!6424544))

(declare-fun m!6424546 () Bool)

(assert (=> bs!1248135 m!6424546))

(assert (=> bs!1248135 m!6424184))

(assert (=> bs!1248135 m!6424208))

(declare-fun m!6424548 () Bool)

(assert (=> bs!1248135 m!6424548))

(assert (=> bs!1248135 m!6424208))

(declare-fun m!6424550 () Bool)

(assert (=> bs!1248135 m!6424550))

(assert (=> b!5399486 d!1724836))

(declare-fun b!5399827 () Bool)

(declare-fun res!2295526 () Bool)

(declare-fun e!3348125 () Bool)

(assert (=> b!5399827 (=> (not res!2295526) (not e!3348125))))

(declare-fun lt!2201136 () List!61791)

(declare-fun size!39830 (List!61791) Int)

(assert (=> b!5399827 (= res!2295526 (= (size!39830 lt!2201136) (+ (size!39830 lt!2200909) (size!39830 lt!2200896))))))

(declare-fun b!5399826 () Bool)

(declare-fun e!3348124 () List!61791)

(assert (=> b!5399826 (= e!3348124 (Cons!61667 (h!68115 lt!2200909) (++!13502 (t!375014 lt!2200909) lt!2200896)))))

(declare-fun b!5399825 () Bool)

(assert (=> b!5399825 (= e!3348124 lt!2200896)))

(declare-fun b!5399828 () Bool)

(assert (=> b!5399828 (= e!3348125 (or (not (= lt!2200896 Nil!61667)) (= lt!2201136 lt!2200909)))))

(declare-fun d!1724838 () Bool)

(assert (=> d!1724838 e!3348125))

(declare-fun res!2295525 () Bool)

(assert (=> d!1724838 (=> (not res!2295525) (not e!3348125))))

(declare-fun content!11043 (List!61791) (Set Regex!15164))

(assert (=> d!1724838 (= res!2295525 (= (content!11043 lt!2201136) (set.union (content!11043 lt!2200909) (content!11043 lt!2200896))))))

(assert (=> d!1724838 (= lt!2201136 e!3348124)))

(declare-fun c!941087 () Bool)

(assert (=> d!1724838 (= c!941087 (is-Nil!61667 lt!2200909))))

(assert (=> d!1724838 (= (++!13502 lt!2200909 lt!2200896) lt!2201136)))

(assert (= (and d!1724838 c!941087) b!5399825))

(assert (= (and d!1724838 (not c!941087)) b!5399826))

(assert (= (and d!1724838 res!2295525) b!5399827))

(assert (= (and b!5399827 res!2295526) b!5399828))

(declare-fun m!6424552 () Bool)

(assert (=> b!5399827 m!6424552))

(declare-fun m!6424554 () Bool)

(assert (=> b!5399827 m!6424554))

(declare-fun m!6424556 () Bool)

(assert (=> b!5399827 m!6424556))

(declare-fun m!6424558 () Bool)

(assert (=> b!5399826 m!6424558))

(declare-fun m!6424560 () Bool)

(assert (=> d!1724838 m!6424560))

(declare-fun m!6424562 () Bool)

(assert (=> d!1724838 m!6424562))

(declare-fun m!6424564 () Bool)

(assert (=> d!1724838 m!6424564))

(assert (=> b!5399486 d!1724838))

(declare-fun b!5399829 () Bool)

(declare-fun res!2295533 () Bool)

(declare-fun e!3348131 () Bool)

(assert (=> b!5399829 (=> (not res!2295533) (not e!3348131))))

(declare-fun call!386413 () Bool)

(assert (=> b!5399829 (= res!2295533 (not call!386413))))

(declare-fun b!5399830 () Bool)

(declare-fun res!2295532 () Bool)

(declare-fun e!3348127 () Bool)

(assert (=> b!5399830 (=> res!2295532 e!3348127)))

(assert (=> b!5399830 (= res!2295532 (not (isEmpty!33664 (tail!10677 (_2!35666 lt!2200883)))))))

(declare-fun b!5399831 () Bool)

(assert (=> b!5399831 (= e!3348131 (= (head!11580 (_2!35666 lt!2200883)) (c!941036 lt!2200917)))))

(declare-fun b!5399832 () Bool)

(declare-fun e!3348129 () Bool)

(assert (=> b!5399832 (= e!3348129 e!3348127)))

(declare-fun res!2295531 () Bool)

(assert (=> b!5399832 (=> res!2295531 e!3348127)))

(assert (=> b!5399832 (= res!2295531 call!386413)))

(declare-fun b!5399834 () Bool)

(declare-fun e!3348132 () Bool)

(assert (=> b!5399834 (= e!3348132 (matchR!7349 (derivativeStep!4252 lt!2200917 (head!11580 (_2!35666 lt!2200883))) (tail!10677 (_2!35666 lt!2200883))))))

(declare-fun b!5399835 () Bool)

(assert (=> b!5399835 (= e!3348132 (nullable!5333 lt!2200917))))

(declare-fun b!5399836 () Bool)

(declare-fun e!3348130 () Bool)

(declare-fun lt!2201137 () Bool)

(assert (=> b!5399836 (= e!3348130 (= lt!2201137 call!386413))))

(declare-fun b!5399837 () Bool)

(declare-fun res!2295527 () Bool)

(declare-fun e!3348126 () Bool)

(assert (=> b!5399837 (=> res!2295527 e!3348126)))

(assert (=> b!5399837 (= res!2295527 e!3348131)))

(declare-fun res!2295534 () Bool)

(assert (=> b!5399837 (=> (not res!2295534) (not e!3348131))))

(assert (=> b!5399837 (= res!2295534 lt!2201137)))

(declare-fun b!5399838 () Bool)

(assert (=> b!5399838 (= e!3348126 e!3348129)))

(declare-fun res!2295528 () Bool)

(assert (=> b!5399838 (=> (not res!2295528) (not e!3348129))))

(assert (=> b!5399838 (= res!2295528 (not lt!2201137))))

(declare-fun b!5399839 () Bool)

(declare-fun e!3348128 () Bool)

(assert (=> b!5399839 (= e!3348130 e!3348128)))

(declare-fun c!941090 () Bool)

(assert (=> b!5399839 (= c!941090 (is-EmptyLang!15164 lt!2200917))))

(declare-fun b!5399840 () Bool)

(assert (=> b!5399840 (= e!3348127 (not (= (head!11580 (_2!35666 lt!2200883)) (c!941036 lt!2200917))))))

(declare-fun bm!386408 () Bool)

(assert (=> bm!386408 (= call!386413 (isEmpty!33664 (_2!35666 lt!2200883)))))

(declare-fun b!5399833 () Bool)

(declare-fun res!2295529 () Bool)

(assert (=> b!5399833 (=> (not res!2295529) (not e!3348131))))

(assert (=> b!5399833 (= res!2295529 (isEmpty!33664 (tail!10677 (_2!35666 lt!2200883))))))

(declare-fun d!1724840 () Bool)

(assert (=> d!1724840 e!3348130))

(declare-fun c!941088 () Bool)

(assert (=> d!1724840 (= c!941088 (is-EmptyExpr!15164 lt!2200917))))

(assert (=> d!1724840 (= lt!2201137 e!3348132)))

(declare-fun c!941089 () Bool)

(assert (=> d!1724840 (= c!941089 (isEmpty!33664 (_2!35666 lt!2200883)))))

(assert (=> d!1724840 (validRegex!6900 lt!2200917)))

(assert (=> d!1724840 (= (matchR!7349 lt!2200917 (_2!35666 lt!2200883)) lt!2201137)))

(declare-fun b!5399841 () Bool)

(declare-fun res!2295530 () Bool)

(assert (=> b!5399841 (=> res!2295530 e!3348126)))

(assert (=> b!5399841 (= res!2295530 (not (is-ElementMatch!15164 lt!2200917)))))

(assert (=> b!5399841 (= e!3348128 e!3348126)))

(declare-fun b!5399842 () Bool)

(assert (=> b!5399842 (= e!3348128 (not lt!2201137))))

(assert (= (and d!1724840 c!941089) b!5399835))

(assert (= (and d!1724840 (not c!941089)) b!5399834))

(assert (= (and d!1724840 c!941088) b!5399836))

(assert (= (and d!1724840 (not c!941088)) b!5399839))

(assert (= (and b!5399839 c!941090) b!5399842))

(assert (= (and b!5399839 (not c!941090)) b!5399841))

(assert (= (and b!5399841 (not res!2295530)) b!5399837))

(assert (= (and b!5399837 res!2295534) b!5399829))

(assert (= (and b!5399829 res!2295533) b!5399833))

(assert (= (and b!5399833 res!2295529) b!5399831))

(assert (= (and b!5399837 (not res!2295527)) b!5399838))

(assert (= (and b!5399838 res!2295528) b!5399832))

(assert (= (and b!5399832 (not res!2295531)) b!5399830))

(assert (= (and b!5399830 (not res!2295532)) b!5399840))

(assert (= (or b!5399836 b!5399829 b!5399832) bm!386408))

(declare-fun m!6424566 () Bool)

(assert (=> b!5399833 m!6424566))

(assert (=> b!5399833 m!6424566))

(declare-fun m!6424568 () Bool)

(assert (=> b!5399833 m!6424568))

(declare-fun m!6424570 () Bool)

(assert (=> b!5399835 m!6424570))

(declare-fun m!6424572 () Bool)

(assert (=> d!1724840 m!6424572))

(assert (=> d!1724840 m!6424512))

(declare-fun m!6424574 () Bool)

(assert (=> b!5399834 m!6424574))

(assert (=> b!5399834 m!6424574))

(declare-fun m!6424576 () Bool)

(assert (=> b!5399834 m!6424576))

(assert (=> b!5399834 m!6424566))

(assert (=> b!5399834 m!6424576))

(assert (=> b!5399834 m!6424566))

(declare-fun m!6424578 () Bool)

(assert (=> b!5399834 m!6424578))

(assert (=> b!5399830 m!6424566))

(assert (=> b!5399830 m!6424566))

(assert (=> b!5399830 m!6424568))

(assert (=> b!5399840 m!6424574))

(assert (=> b!5399831 m!6424574))

(assert (=> bm!386408 m!6424572))

(assert (=> b!5399486 d!1724840))

(declare-fun b!5399843 () Bool)

(declare-fun res!2295541 () Bool)

(declare-fun e!3348138 () Bool)

(assert (=> b!5399843 (=> (not res!2295541) (not e!3348138))))

(declare-fun call!386414 () Bool)

(assert (=> b!5399843 (= res!2295541 (not call!386414))))

(declare-fun b!5399844 () Bool)

(declare-fun res!2295540 () Bool)

(declare-fun e!3348134 () Bool)

(assert (=> b!5399844 (=> res!2295540 e!3348134)))

(assert (=> b!5399844 (= res!2295540 (not (isEmpty!33664 (tail!10677 s!2326))))))

(declare-fun b!5399845 () Bool)

(assert (=> b!5399845 (= e!3348138 (= (head!11580 s!2326) (c!941036 lt!2200922)))))

(declare-fun b!5399846 () Bool)

(declare-fun e!3348136 () Bool)

(assert (=> b!5399846 (= e!3348136 e!3348134)))

(declare-fun res!2295539 () Bool)

(assert (=> b!5399846 (=> res!2295539 e!3348134)))

(assert (=> b!5399846 (= res!2295539 call!386414)))

(declare-fun b!5399848 () Bool)

(declare-fun e!3348139 () Bool)

(assert (=> b!5399848 (= e!3348139 (matchR!7349 (derivativeStep!4252 lt!2200922 (head!11580 s!2326)) (tail!10677 s!2326)))))

(declare-fun b!5399849 () Bool)

(assert (=> b!5399849 (= e!3348139 (nullable!5333 lt!2200922))))

(declare-fun b!5399850 () Bool)

(declare-fun e!3348137 () Bool)

(declare-fun lt!2201138 () Bool)

(assert (=> b!5399850 (= e!3348137 (= lt!2201138 call!386414))))

(declare-fun b!5399851 () Bool)

(declare-fun res!2295535 () Bool)

(declare-fun e!3348133 () Bool)

(assert (=> b!5399851 (=> res!2295535 e!3348133)))

(assert (=> b!5399851 (= res!2295535 e!3348138)))

(declare-fun res!2295542 () Bool)

(assert (=> b!5399851 (=> (not res!2295542) (not e!3348138))))

(assert (=> b!5399851 (= res!2295542 lt!2201138)))

(declare-fun b!5399852 () Bool)

(assert (=> b!5399852 (= e!3348133 e!3348136)))

(declare-fun res!2295536 () Bool)

(assert (=> b!5399852 (=> (not res!2295536) (not e!3348136))))

(assert (=> b!5399852 (= res!2295536 (not lt!2201138))))

(declare-fun b!5399853 () Bool)

(declare-fun e!3348135 () Bool)

(assert (=> b!5399853 (= e!3348137 e!3348135)))

(declare-fun c!941093 () Bool)

(assert (=> b!5399853 (= c!941093 (is-EmptyLang!15164 lt!2200922))))

(declare-fun b!5399854 () Bool)

(assert (=> b!5399854 (= e!3348134 (not (= (head!11580 s!2326) (c!941036 lt!2200922))))))

(declare-fun bm!386409 () Bool)

(assert (=> bm!386409 (= call!386414 (isEmpty!33664 s!2326))))

(declare-fun b!5399847 () Bool)

(declare-fun res!2295537 () Bool)

(assert (=> b!5399847 (=> (not res!2295537) (not e!3348138))))

(assert (=> b!5399847 (= res!2295537 (isEmpty!33664 (tail!10677 s!2326)))))

(declare-fun d!1724842 () Bool)

(assert (=> d!1724842 e!3348137))

(declare-fun c!941091 () Bool)

(assert (=> d!1724842 (= c!941091 (is-EmptyExpr!15164 lt!2200922))))

(assert (=> d!1724842 (= lt!2201138 e!3348139)))

(declare-fun c!941092 () Bool)

(assert (=> d!1724842 (= c!941092 (isEmpty!33664 s!2326))))

(assert (=> d!1724842 (validRegex!6900 lt!2200922)))

(assert (=> d!1724842 (= (matchR!7349 lt!2200922 s!2326) lt!2201138)))

(declare-fun b!5399855 () Bool)

(declare-fun res!2295538 () Bool)

(assert (=> b!5399855 (=> res!2295538 e!3348133)))

(assert (=> b!5399855 (= res!2295538 (not (is-ElementMatch!15164 lt!2200922)))))

(assert (=> b!5399855 (= e!3348135 e!3348133)))

(declare-fun b!5399856 () Bool)

(assert (=> b!5399856 (= e!3348135 (not lt!2201138))))

(assert (= (and d!1724842 c!941092) b!5399849))

(assert (= (and d!1724842 (not c!941092)) b!5399848))

(assert (= (and d!1724842 c!941091) b!5399850))

(assert (= (and d!1724842 (not c!941091)) b!5399853))

(assert (= (and b!5399853 c!941093) b!5399856))

(assert (= (and b!5399853 (not c!941093)) b!5399855))

(assert (= (and b!5399855 (not res!2295538)) b!5399851))

(assert (= (and b!5399851 res!2295542) b!5399843))

(assert (= (and b!5399843 res!2295541) b!5399847))

(assert (= (and b!5399847 res!2295537) b!5399845))

(assert (= (and b!5399851 (not res!2295535)) b!5399852))

(assert (= (and b!5399852 res!2295536) b!5399846))

(assert (= (and b!5399846 (not res!2295539)) b!5399844))

(assert (= (and b!5399844 (not res!2295540)) b!5399854))

(assert (= (or b!5399850 b!5399843 b!5399846) bm!386409))

(declare-fun m!6424580 () Bool)

(assert (=> b!5399847 m!6424580))

(assert (=> b!5399847 m!6424580))

(declare-fun m!6424582 () Bool)

(assert (=> b!5399847 m!6424582))

(declare-fun m!6424584 () Bool)

(assert (=> b!5399849 m!6424584))

(declare-fun m!6424586 () Bool)

(assert (=> d!1724842 m!6424586))

(assert (=> d!1724842 m!6424108))

(declare-fun m!6424588 () Bool)

(assert (=> b!5399848 m!6424588))

(assert (=> b!5399848 m!6424588))

(declare-fun m!6424590 () Bool)

(assert (=> b!5399848 m!6424590))

(assert (=> b!5399848 m!6424580))

(assert (=> b!5399848 m!6424590))

(assert (=> b!5399848 m!6424580))

(declare-fun m!6424592 () Bool)

(assert (=> b!5399848 m!6424592))

(assert (=> b!5399844 m!6424580))

(assert (=> b!5399844 m!6424580))

(assert (=> b!5399844 m!6424582))

(assert (=> b!5399854 m!6424588))

(assert (=> b!5399845 m!6424588))

(assert (=> bm!386409 m!6424586))

(assert (=> b!5399486 d!1724842))

(declare-fun b!5399857 () Bool)

(declare-fun res!2295549 () Bool)

(declare-fun e!3348145 () Bool)

(assert (=> b!5399857 (=> (not res!2295549) (not e!3348145))))

(declare-fun call!386415 () Bool)

(assert (=> b!5399857 (= res!2295549 (not call!386415))))

(declare-fun b!5399858 () Bool)

(declare-fun res!2295548 () Bool)

(declare-fun e!3348141 () Bool)

(assert (=> b!5399858 (=> res!2295548 e!3348141)))

(assert (=> b!5399858 (= res!2295548 (not (isEmpty!33664 (tail!10677 (_1!35666 lt!2200883)))))))

(declare-fun b!5399859 () Bool)

(assert (=> b!5399859 (= e!3348145 (= (head!11580 (_1!35666 lt!2200883)) (c!941036 (reg!15493 (regOne!30840 r!7292)))))))

(declare-fun b!5399860 () Bool)

(declare-fun e!3348143 () Bool)

(assert (=> b!5399860 (= e!3348143 e!3348141)))

(declare-fun res!2295547 () Bool)

(assert (=> b!5399860 (=> res!2295547 e!3348141)))

(assert (=> b!5399860 (= res!2295547 call!386415)))

(declare-fun b!5399862 () Bool)

(declare-fun e!3348146 () Bool)

(assert (=> b!5399862 (= e!3348146 (matchR!7349 (derivativeStep!4252 (reg!15493 (regOne!30840 r!7292)) (head!11580 (_1!35666 lt!2200883))) (tail!10677 (_1!35666 lt!2200883))))))

(declare-fun b!5399863 () Bool)

(assert (=> b!5399863 (= e!3348146 (nullable!5333 (reg!15493 (regOne!30840 r!7292))))))

(declare-fun b!5399864 () Bool)

(declare-fun e!3348144 () Bool)

(declare-fun lt!2201139 () Bool)

(assert (=> b!5399864 (= e!3348144 (= lt!2201139 call!386415))))

(declare-fun b!5399865 () Bool)

(declare-fun res!2295543 () Bool)

(declare-fun e!3348140 () Bool)

(assert (=> b!5399865 (=> res!2295543 e!3348140)))

(assert (=> b!5399865 (= res!2295543 e!3348145)))

(declare-fun res!2295550 () Bool)

(assert (=> b!5399865 (=> (not res!2295550) (not e!3348145))))

(assert (=> b!5399865 (= res!2295550 lt!2201139)))

(declare-fun b!5399866 () Bool)

(assert (=> b!5399866 (= e!3348140 e!3348143)))

(declare-fun res!2295544 () Bool)

(assert (=> b!5399866 (=> (not res!2295544) (not e!3348143))))

(assert (=> b!5399866 (= res!2295544 (not lt!2201139))))

(declare-fun b!5399867 () Bool)

(declare-fun e!3348142 () Bool)

(assert (=> b!5399867 (= e!3348144 e!3348142)))

(declare-fun c!941096 () Bool)

(assert (=> b!5399867 (= c!941096 (is-EmptyLang!15164 (reg!15493 (regOne!30840 r!7292))))))

(declare-fun b!5399868 () Bool)

(assert (=> b!5399868 (= e!3348141 (not (= (head!11580 (_1!35666 lt!2200883)) (c!941036 (reg!15493 (regOne!30840 r!7292))))))))

(declare-fun bm!386410 () Bool)

(assert (=> bm!386410 (= call!386415 (isEmpty!33664 (_1!35666 lt!2200883)))))

(declare-fun b!5399861 () Bool)

(declare-fun res!2295545 () Bool)

(assert (=> b!5399861 (=> (not res!2295545) (not e!3348145))))

(assert (=> b!5399861 (= res!2295545 (isEmpty!33664 (tail!10677 (_1!35666 lt!2200883))))))

(declare-fun d!1724844 () Bool)

(assert (=> d!1724844 e!3348144))

(declare-fun c!941094 () Bool)

(assert (=> d!1724844 (= c!941094 (is-EmptyExpr!15164 (reg!15493 (regOne!30840 r!7292))))))

(assert (=> d!1724844 (= lt!2201139 e!3348146)))

(declare-fun c!941095 () Bool)

(assert (=> d!1724844 (= c!941095 (isEmpty!33664 (_1!35666 lt!2200883)))))

(assert (=> d!1724844 (validRegex!6900 (reg!15493 (regOne!30840 r!7292)))))

(assert (=> d!1724844 (= (matchR!7349 (reg!15493 (regOne!30840 r!7292)) (_1!35666 lt!2200883)) lt!2201139)))

(declare-fun b!5399869 () Bool)

(declare-fun res!2295546 () Bool)

(assert (=> b!5399869 (=> res!2295546 e!3348140)))

(assert (=> b!5399869 (= res!2295546 (not (is-ElementMatch!15164 (reg!15493 (regOne!30840 r!7292)))))))

(assert (=> b!5399869 (= e!3348142 e!3348140)))

(declare-fun b!5399870 () Bool)

(assert (=> b!5399870 (= e!3348142 (not lt!2201139))))

(assert (= (and d!1724844 c!941095) b!5399863))

(assert (= (and d!1724844 (not c!941095)) b!5399862))

(assert (= (and d!1724844 c!941094) b!5399864))

(assert (= (and d!1724844 (not c!941094)) b!5399867))

(assert (= (and b!5399867 c!941096) b!5399870))

(assert (= (and b!5399867 (not c!941096)) b!5399869))

(assert (= (and b!5399869 (not res!2295546)) b!5399865))

(assert (= (and b!5399865 res!2295550) b!5399857))

(assert (= (and b!5399857 res!2295549) b!5399861))

(assert (= (and b!5399861 res!2295545) b!5399859))

(assert (= (and b!5399865 (not res!2295543)) b!5399866))

(assert (= (and b!5399866 res!2295544) b!5399860))

(assert (= (and b!5399860 (not res!2295547)) b!5399858))

(assert (= (and b!5399858 (not res!2295548)) b!5399868))

(assert (= (or b!5399864 b!5399857 b!5399860) bm!386410))

(declare-fun m!6424594 () Bool)

(assert (=> b!5399861 m!6424594))

(assert (=> b!5399861 m!6424594))

(declare-fun m!6424596 () Bool)

(assert (=> b!5399861 m!6424596))

(declare-fun m!6424598 () Bool)

(assert (=> b!5399863 m!6424598))

(declare-fun m!6424600 () Bool)

(assert (=> d!1724844 m!6424600))

(assert (=> d!1724844 m!6424502))

(declare-fun m!6424602 () Bool)

(assert (=> b!5399862 m!6424602))

(assert (=> b!5399862 m!6424602))

(declare-fun m!6424604 () Bool)

(assert (=> b!5399862 m!6424604))

(assert (=> b!5399862 m!6424594))

(assert (=> b!5399862 m!6424604))

(assert (=> b!5399862 m!6424594))

(declare-fun m!6424606 () Bool)

(assert (=> b!5399862 m!6424606))

(assert (=> b!5399858 m!6424594))

(assert (=> b!5399858 m!6424594))

(assert (=> b!5399858 m!6424596))

(assert (=> b!5399868 m!6424602))

(assert (=> b!5399859 m!6424602))

(assert (=> bm!386410 m!6424600))

(assert (=> b!5399486 d!1724844))

(assert (=> b!5399466 d!1724818))

(declare-fun b!5399893 () Bool)

(declare-fun c!941110 () Bool)

(declare-fun e!3348163 () Bool)

(assert (=> b!5399893 (= c!941110 e!3348163)))

(declare-fun res!2295553 () Bool)

(assert (=> b!5399893 (=> (not res!2295553) (not e!3348163))))

(assert (=> b!5399893 (= res!2295553 (is-Concat!24009 (reg!15493 (regOne!30840 r!7292))))))

(declare-fun e!3348161 () (Set Context!9096))

(declare-fun e!3348160 () (Set Context!9096))

(assert (=> b!5399893 (= e!3348161 e!3348160)))

(declare-fun b!5399894 () Bool)

(declare-fun e!3348162 () (Set Context!9096))

(assert (=> b!5399894 (= e!3348162 (set.insert lt!2200900 (as set.empty (Set Context!9096))))))

(declare-fun b!5399895 () Bool)

(declare-fun e!3348159 () (Set Context!9096))

(declare-fun call!386432 () (Set Context!9096))

(assert (=> b!5399895 (= e!3348159 call!386432)))

(declare-fun b!5399896 () Bool)

(assert (=> b!5399896 (= e!3348162 e!3348161)))

(declare-fun c!941108 () Bool)

(assert (=> b!5399896 (= c!941108 (is-Union!15164 (reg!15493 (regOne!30840 r!7292))))))

(declare-fun bm!386423 () Bool)

(declare-fun call!386430 () (Set Context!9096))

(declare-fun call!386433 () (Set Context!9096))

(assert (=> bm!386423 (= call!386430 call!386433)))

(declare-fun call!386428 () List!61791)

(declare-fun c!941111 () Bool)

(declare-fun bm!386424 () Bool)

(declare-fun $colon$colon!1481 (List!61791 Regex!15164) List!61791)

(assert (=> bm!386424 (= call!386428 ($colon$colon!1481 (exprs!5048 lt!2200900) (ite (or c!941110 c!941111) (regTwo!30840 (reg!15493 (regOne!30840 r!7292))) (reg!15493 (regOne!30840 r!7292)))))))

(declare-fun call!386429 () List!61791)

(declare-fun bm!386425 () Bool)

(assert (=> bm!386425 (= call!386433 (derivationStepZipperDown!612 (ite c!941108 (regTwo!30841 (reg!15493 (regOne!30840 r!7292))) (ite c!941110 (regTwo!30840 (reg!15493 (regOne!30840 r!7292))) (ite c!941111 (regOne!30840 (reg!15493 (regOne!30840 r!7292))) (reg!15493 (reg!15493 (regOne!30840 r!7292)))))) (ite (or c!941108 c!941110) lt!2200900 (Context!9097 call!386429)) (h!68116 s!2326)))))

(declare-fun b!5399897 () Bool)

(declare-fun call!386431 () (Set Context!9096))

(assert (=> b!5399897 (= e!3348161 (set.union call!386431 call!386433))))

(declare-fun d!1724846 () Bool)

(declare-fun c!941109 () Bool)

(assert (=> d!1724846 (= c!941109 (and (is-ElementMatch!15164 (reg!15493 (regOne!30840 r!7292))) (= (c!941036 (reg!15493 (regOne!30840 r!7292))) (h!68116 s!2326))))))

(assert (=> d!1724846 (= (derivationStepZipperDown!612 (reg!15493 (regOne!30840 r!7292)) lt!2200900 (h!68116 s!2326)) e!3348162)))

(declare-fun b!5399898 () Bool)

(assert (=> b!5399898 (= e!3348159 (as set.empty (Set Context!9096)))))

(declare-fun bm!386426 () Bool)

(assert (=> bm!386426 (= call!386432 call!386430)))

(declare-fun b!5399899 () Bool)

(declare-fun e!3348164 () (Set Context!9096))

(assert (=> b!5399899 (= e!3348164 call!386432)))

(declare-fun bm!386427 () Bool)

(assert (=> bm!386427 (= call!386431 (derivationStepZipperDown!612 (ite c!941108 (regOne!30841 (reg!15493 (regOne!30840 r!7292))) (regOne!30840 (reg!15493 (regOne!30840 r!7292)))) (ite c!941108 lt!2200900 (Context!9097 call!386428)) (h!68116 s!2326)))))

(declare-fun b!5399900 () Bool)

(assert (=> b!5399900 (= e!3348160 (set.union call!386431 call!386430))))

(declare-fun b!5399901 () Bool)

(assert (=> b!5399901 (= e!3348163 (nullable!5333 (regOne!30840 (reg!15493 (regOne!30840 r!7292)))))))

(declare-fun b!5399902 () Bool)

(assert (=> b!5399902 (= e!3348160 e!3348164)))

(assert (=> b!5399902 (= c!941111 (is-Concat!24009 (reg!15493 (regOne!30840 r!7292))))))

(declare-fun bm!386428 () Bool)

(assert (=> bm!386428 (= call!386429 call!386428)))

(declare-fun b!5399903 () Bool)

(declare-fun c!941107 () Bool)

(assert (=> b!5399903 (= c!941107 (is-Star!15164 (reg!15493 (regOne!30840 r!7292))))))

(assert (=> b!5399903 (= e!3348164 e!3348159)))

(assert (= (and d!1724846 c!941109) b!5399894))

(assert (= (and d!1724846 (not c!941109)) b!5399896))

(assert (= (and b!5399896 c!941108) b!5399897))

(assert (= (and b!5399896 (not c!941108)) b!5399893))

(assert (= (and b!5399893 res!2295553) b!5399901))

(assert (= (and b!5399893 c!941110) b!5399900))

(assert (= (and b!5399893 (not c!941110)) b!5399902))

(assert (= (and b!5399902 c!941111) b!5399899))

(assert (= (and b!5399902 (not c!941111)) b!5399903))

(assert (= (and b!5399903 c!941107) b!5399895))

(assert (= (and b!5399903 (not c!941107)) b!5399898))

(assert (= (or b!5399899 b!5399895) bm!386428))

(assert (= (or b!5399899 b!5399895) bm!386426))

(assert (= (or b!5399900 bm!386428) bm!386424))

(assert (= (or b!5399900 bm!386426) bm!386423))

(assert (= (or b!5399897 bm!386423) bm!386425))

(assert (= (or b!5399897 b!5399900) bm!386427))

(assert (=> b!5399894 m!6424206))

(declare-fun m!6424608 () Bool)

(assert (=> bm!386425 m!6424608))

(declare-fun m!6424610 () Bool)

(assert (=> bm!386424 m!6424610))

(declare-fun m!6424612 () Bool)

(assert (=> bm!386427 m!6424612))

(declare-fun m!6424614 () Bool)

(assert (=> b!5399901 m!6424614))

(assert (=> b!5399467 d!1724846))

(declare-fun d!1724848 () Bool)

(declare-fun c!941112 () Bool)

(assert (=> d!1724848 (= c!941112 (isEmpty!33664 (t!375015 s!2326)))))

(declare-fun e!3348165 () Bool)

(assert (=> d!1724848 (= (matchZipper!1408 lt!2200921 (t!375015 s!2326)) e!3348165)))

(declare-fun b!5399904 () Bool)

(assert (=> b!5399904 (= e!3348165 (nullableZipper!1431 lt!2200921))))

(declare-fun b!5399905 () Bool)

(assert (=> b!5399905 (= e!3348165 (matchZipper!1408 (derivationStepZipper!1403 lt!2200921 (head!11580 (t!375015 s!2326))) (tail!10677 (t!375015 s!2326))))))

(assert (= (and d!1724848 c!941112) b!5399904))

(assert (= (and d!1724848 (not c!941112)) b!5399905))

(assert (=> d!1724848 m!6424472))

(declare-fun m!6424616 () Bool)

(assert (=> b!5399904 m!6424616))

(assert (=> b!5399905 m!6424476))

(assert (=> b!5399905 m!6424476))

(declare-fun m!6424618 () Bool)

(assert (=> b!5399905 m!6424618))

(assert (=> b!5399905 m!6424480))

(assert (=> b!5399905 m!6424618))

(assert (=> b!5399905 m!6424480))

(declare-fun m!6424620 () Bool)

(assert (=> b!5399905 m!6424620))

(assert (=> b!5399508 d!1724848))

(declare-fun d!1724850 () Bool)

(declare-fun c!941113 () Bool)

(assert (=> d!1724850 (= c!941113 (isEmpty!33664 s!2326))))

(declare-fun e!3348166 () Bool)

(assert (=> d!1724850 (= (matchZipper!1408 lt!2200884 s!2326) e!3348166)))

(declare-fun b!5399906 () Bool)

(assert (=> b!5399906 (= e!3348166 (nullableZipper!1431 lt!2200884))))

(declare-fun b!5399907 () Bool)

(assert (=> b!5399907 (= e!3348166 (matchZipper!1408 (derivationStepZipper!1403 lt!2200884 (head!11580 s!2326)) (tail!10677 s!2326)))))

(assert (= (and d!1724850 c!941113) b!5399906))

(assert (= (and d!1724850 (not c!941113)) b!5399907))

(assert (=> d!1724850 m!6424586))

(declare-fun m!6424622 () Bool)

(assert (=> b!5399906 m!6424622))

(assert (=> b!5399907 m!6424588))

(assert (=> b!5399907 m!6424588))

(declare-fun m!6424624 () Bool)

(assert (=> b!5399907 m!6424624))

(assert (=> b!5399907 m!6424580))

(assert (=> b!5399907 m!6424624))

(assert (=> b!5399907 m!6424580))

(declare-fun m!6424626 () Bool)

(assert (=> b!5399907 m!6424626))

(assert (=> b!5399508 d!1724850))

(declare-fun d!1724852 () Bool)

(assert (=> d!1724852 (= (flatMap!891 z!1189 lambda!281070) (dynLambda!24301 lambda!281070 (h!68117 zl!343)))))

(declare-fun lt!2201140 () Unit!154178)

(assert (=> d!1724852 (= lt!2201140 (choose!40665 z!1189 (h!68117 zl!343) lambda!281070))))

(assert (=> d!1724852 (= z!1189 (set.insert (h!68117 zl!343) (as set.empty (Set Context!9096))))))

(assert (=> d!1724852 (= (lemmaFlatMapOnSingletonSet!423 z!1189 (h!68117 zl!343) lambda!281070) lt!2201140)))

(declare-fun b_lambda!206433 () Bool)

(assert (=> (not b_lambda!206433) (not d!1724852)))

(declare-fun bs!1248136 () Bool)

(assert (= bs!1248136 d!1724852))

(assert (=> bs!1248136 m!6424124))

(declare-fun m!6424628 () Bool)

(assert (=> bs!1248136 m!6424628))

(declare-fun m!6424630 () Bool)

(assert (=> bs!1248136 m!6424630))

(declare-fun m!6424632 () Bool)

(assert (=> bs!1248136 m!6424632))

(assert (=> b!5399488 d!1724852))

(declare-fun d!1724854 () Bool)

(assert (=> d!1724854 (= (flatMap!891 z!1189 lambda!281070) (choose!40664 z!1189 lambda!281070))))

(declare-fun bs!1248137 () Bool)

(assert (= bs!1248137 d!1724854))

(declare-fun m!6424634 () Bool)

(assert (=> bs!1248137 m!6424634))

(assert (=> b!5399488 d!1724854))

(declare-fun d!1724856 () Bool)

(declare-fun nullableFct!1583 (Regex!15164) Bool)

(assert (=> d!1724856 (= (nullable!5333 (h!68115 (exprs!5048 (h!68117 zl!343)))) (nullableFct!1583 (h!68115 (exprs!5048 (h!68117 zl!343)))))))

(declare-fun bs!1248138 () Bool)

(assert (= bs!1248138 d!1724856))

(declare-fun m!6424636 () Bool)

(assert (=> bs!1248138 m!6424636))

(assert (=> b!5399488 d!1724856))

(declare-fun b!5399908 () Bool)

(declare-fun e!3348168 () (Set Context!9096))

(declare-fun e!3348169 () (Set Context!9096))

(assert (=> b!5399908 (= e!3348168 e!3348169)))

(declare-fun c!941114 () Bool)

(assert (=> b!5399908 (= c!941114 (is-Cons!61667 (exprs!5048 (Context!9097 (Cons!61667 (h!68115 (exprs!5048 (h!68117 zl!343))) (t!375014 (exprs!5048 (h!68117 zl!343))))))))))

(declare-fun bm!386429 () Bool)

(declare-fun call!386434 () (Set Context!9096))

(assert (=> bm!386429 (= call!386434 (derivationStepZipperDown!612 (h!68115 (exprs!5048 (Context!9097 (Cons!61667 (h!68115 (exprs!5048 (h!68117 zl!343))) (t!375014 (exprs!5048 (h!68117 zl!343))))))) (Context!9097 (t!375014 (exprs!5048 (Context!9097 (Cons!61667 (h!68115 (exprs!5048 (h!68117 zl!343))) (t!375014 (exprs!5048 (h!68117 zl!343)))))))) (h!68116 s!2326)))))

(declare-fun b!5399909 () Bool)

(assert (=> b!5399909 (= e!3348169 call!386434)))

(declare-fun d!1724858 () Bool)

(declare-fun c!941115 () Bool)

(declare-fun e!3348167 () Bool)

(assert (=> d!1724858 (= c!941115 e!3348167)))

(declare-fun res!2295554 () Bool)

(assert (=> d!1724858 (=> (not res!2295554) (not e!3348167))))

(assert (=> d!1724858 (= res!2295554 (is-Cons!61667 (exprs!5048 (Context!9097 (Cons!61667 (h!68115 (exprs!5048 (h!68117 zl!343))) (t!375014 (exprs!5048 (h!68117 zl!343))))))))))

(assert (=> d!1724858 (= (derivationStepZipperUp!536 (Context!9097 (Cons!61667 (h!68115 (exprs!5048 (h!68117 zl!343))) (t!375014 (exprs!5048 (h!68117 zl!343))))) (h!68116 s!2326)) e!3348168)))

(declare-fun b!5399910 () Bool)

(assert (=> b!5399910 (= e!3348169 (as set.empty (Set Context!9096)))))

(declare-fun b!5399911 () Bool)

(assert (=> b!5399911 (= e!3348167 (nullable!5333 (h!68115 (exprs!5048 (Context!9097 (Cons!61667 (h!68115 (exprs!5048 (h!68117 zl!343))) (t!375014 (exprs!5048 (h!68117 zl!343)))))))))))

(declare-fun b!5399912 () Bool)

(assert (=> b!5399912 (= e!3348168 (set.union call!386434 (derivationStepZipperUp!536 (Context!9097 (t!375014 (exprs!5048 (Context!9097 (Cons!61667 (h!68115 (exprs!5048 (h!68117 zl!343))) (t!375014 (exprs!5048 (h!68117 zl!343)))))))) (h!68116 s!2326))))))

(assert (= (and d!1724858 res!2295554) b!5399911))

(assert (= (and d!1724858 c!941115) b!5399912))

(assert (= (and d!1724858 (not c!941115)) b!5399908))

(assert (= (and b!5399908 c!941114) b!5399909))

(assert (= (and b!5399908 (not c!941114)) b!5399910))

(assert (= (or b!5399912 b!5399909) bm!386429))

(declare-fun m!6424638 () Bool)

(assert (=> bm!386429 m!6424638))

(declare-fun m!6424640 () Bool)

(assert (=> b!5399911 m!6424640))

(declare-fun m!6424642 () Bool)

(assert (=> b!5399912 m!6424642))

(assert (=> b!5399488 d!1724858))

(declare-fun b!5399913 () Bool)

(declare-fun e!3348171 () (Set Context!9096))

(declare-fun e!3348172 () (Set Context!9096))

(assert (=> b!5399913 (= e!3348171 e!3348172)))

(declare-fun c!941116 () Bool)

(assert (=> b!5399913 (= c!941116 (is-Cons!61667 (exprs!5048 (h!68117 zl!343))))))

(declare-fun bm!386430 () Bool)

(declare-fun call!386435 () (Set Context!9096))

(assert (=> bm!386430 (= call!386435 (derivationStepZipperDown!612 (h!68115 (exprs!5048 (h!68117 zl!343))) (Context!9097 (t!375014 (exprs!5048 (h!68117 zl!343)))) (h!68116 s!2326)))))

(declare-fun b!5399914 () Bool)

(assert (=> b!5399914 (= e!3348172 call!386435)))

(declare-fun d!1724860 () Bool)

(declare-fun c!941117 () Bool)

(declare-fun e!3348170 () Bool)

(assert (=> d!1724860 (= c!941117 e!3348170)))

(declare-fun res!2295555 () Bool)

(assert (=> d!1724860 (=> (not res!2295555) (not e!3348170))))

(assert (=> d!1724860 (= res!2295555 (is-Cons!61667 (exprs!5048 (h!68117 zl!343))))))

(assert (=> d!1724860 (= (derivationStepZipperUp!536 (h!68117 zl!343) (h!68116 s!2326)) e!3348171)))

(declare-fun b!5399915 () Bool)

(assert (=> b!5399915 (= e!3348172 (as set.empty (Set Context!9096)))))

(declare-fun b!5399916 () Bool)

(assert (=> b!5399916 (= e!3348170 (nullable!5333 (h!68115 (exprs!5048 (h!68117 zl!343)))))))

(declare-fun b!5399917 () Bool)

(assert (=> b!5399917 (= e!3348171 (set.union call!386435 (derivationStepZipperUp!536 (Context!9097 (t!375014 (exprs!5048 (h!68117 zl!343)))) (h!68116 s!2326))))))

(assert (= (and d!1724860 res!2295555) b!5399916))

(assert (= (and d!1724860 c!941117) b!5399917))

(assert (= (and d!1724860 (not c!941117)) b!5399913))

(assert (= (and b!5399913 c!941116) b!5399914))

(assert (= (and b!5399913 (not c!941116)) b!5399915))

(assert (= (or b!5399917 b!5399914) bm!386430))

(declare-fun m!6424644 () Bool)

(assert (=> bm!386430 m!6424644))

(assert (=> b!5399916 m!6424132))

(declare-fun m!6424646 () Bool)

(assert (=> b!5399917 m!6424646))

(assert (=> b!5399488 d!1724860))

(declare-fun b!5399918 () Bool)

(declare-fun e!3348174 () (Set Context!9096))

(declare-fun e!3348175 () (Set Context!9096))

(assert (=> b!5399918 (= e!3348174 e!3348175)))

(declare-fun c!941118 () Bool)

(assert (=> b!5399918 (= c!941118 (is-Cons!61667 (exprs!5048 lt!2200919)))))

(declare-fun bm!386431 () Bool)

(declare-fun call!386436 () (Set Context!9096))

(assert (=> bm!386431 (= call!386436 (derivationStepZipperDown!612 (h!68115 (exprs!5048 lt!2200919)) (Context!9097 (t!375014 (exprs!5048 lt!2200919))) (h!68116 s!2326)))))

(declare-fun b!5399919 () Bool)

(assert (=> b!5399919 (= e!3348175 call!386436)))

(declare-fun d!1724862 () Bool)

(declare-fun c!941119 () Bool)

(declare-fun e!3348173 () Bool)

(assert (=> d!1724862 (= c!941119 e!3348173)))

(declare-fun res!2295556 () Bool)

(assert (=> d!1724862 (=> (not res!2295556) (not e!3348173))))

(assert (=> d!1724862 (= res!2295556 (is-Cons!61667 (exprs!5048 lt!2200919)))))

(assert (=> d!1724862 (= (derivationStepZipperUp!536 lt!2200919 (h!68116 s!2326)) e!3348174)))

(declare-fun b!5399920 () Bool)

(assert (=> b!5399920 (= e!3348175 (as set.empty (Set Context!9096)))))

(declare-fun b!5399921 () Bool)

(assert (=> b!5399921 (= e!3348173 (nullable!5333 (h!68115 (exprs!5048 lt!2200919))))))

(declare-fun b!5399922 () Bool)

(assert (=> b!5399922 (= e!3348174 (set.union call!386436 (derivationStepZipperUp!536 (Context!9097 (t!375014 (exprs!5048 lt!2200919))) (h!68116 s!2326))))))

(assert (= (and d!1724862 res!2295556) b!5399921))

(assert (= (and d!1724862 c!941119) b!5399922))

(assert (= (and d!1724862 (not c!941119)) b!5399918))

(assert (= (and b!5399918 c!941118) b!5399919))

(assert (= (and b!5399918 (not c!941118)) b!5399920))

(assert (= (or b!5399922 b!5399919) bm!386431))

(declare-fun m!6424648 () Bool)

(assert (=> bm!386431 m!6424648))

(declare-fun m!6424650 () Bool)

(assert (=> b!5399921 m!6424650))

(declare-fun m!6424652 () Bool)

(assert (=> b!5399922 m!6424652))

(assert (=> b!5399488 d!1724862))

(declare-fun b!5399923 () Bool)

(declare-fun c!941123 () Bool)

(declare-fun e!3348180 () Bool)

(assert (=> b!5399923 (= c!941123 e!3348180)))

(declare-fun res!2295557 () Bool)

(assert (=> b!5399923 (=> (not res!2295557) (not e!3348180))))

(assert (=> b!5399923 (= res!2295557 (is-Concat!24009 (h!68115 (exprs!5048 (h!68117 zl!343)))))))

(declare-fun e!3348178 () (Set Context!9096))

(declare-fun e!3348177 () (Set Context!9096))

(assert (=> b!5399923 (= e!3348178 e!3348177)))

(declare-fun b!5399924 () Bool)

(declare-fun e!3348179 () (Set Context!9096))

(assert (=> b!5399924 (= e!3348179 (set.insert lt!2200919 (as set.empty (Set Context!9096))))))

(declare-fun b!5399925 () Bool)

(declare-fun e!3348176 () (Set Context!9096))

(declare-fun call!386441 () (Set Context!9096))

(assert (=> b!5399925 (= e!3348176 call!386441)))

(declare-fun b!5399926 () Bool)

(assert (=> b!5399926 (= e!3348179 e!3348178)))

(declare-fun c!941121 () Bool)

(assert (=> b!5399926 (= c!941121 (is-Union!15164 (h!68115 (exprs!5048 (h!68117 zl!343)))))))

(declare-fun bm!386432 () Bool)

(declare-fun call!386439 () (Set Context!9096))

(declare-fun call!386442 () (Set Context!9096))

(assert (=> bm!386432 (= call!386439 call!386442)))

(declare-fun bm!386433 () Bool)

(declare-fun c!941124 () Bool)

(declare-fun call!386437 () List!61791)

(assert (=> bm!386433 (= call!386437 ($colon$colon!1481 (exprs!5048 lt!2200919) (ite (or c!941123 c!941124) (regTwo!30840 (h!68115 (exprs!5048 (h!68117 zl!343)))) (h!68115 (exprs!5048 (h!68117 zl!343))))))))

(declare-fun bm!386434 () Bool)

(declare-fun call!386438 () List!61791)

(assert (=> bm!386434 (= call!386442 (derivationStepZipperDown!612 (ite c!941121 (regTwo!30841 (h!68115 (exprs!5048 (h!68117 zl!343)))) (ite c!941123 (regTwo!30840 (h!68115 (exprs!5048 (h!68117 zl!343)))) (ite c!941124 (regOne!30840 (h!68115 (exprs!5048 (h!68117 zl!343)))) (reg!15493 (h!68115 (exprs!5048 (h!68117 zl!343))))))) (ite (or c!941121 c!941123) lt!2200919 (Context!9097 call!386438)) (h!68116 s!2326)))))

(declare-fun b!5399927 () Bool)

(declare-fun call!386440 () (Set Context!9096))

(assert (=> b!5399927 (= e!3348178 (set.union call!386440 call!386442))))

(declare-fun d!1724864 () Bool)

(declare-fun c!941122 () Bool)

(assert (=> d!1724864 (= c!941122 (and (is-ElementMatch!15164 (h!68115 (exprs!5048 (h!68117 zl!343)))) (= (c!941036 (h!68115 (exprs!5048 (h!68117 zl!343)))) (h!68116 s!2326))))))

(assert (=> d!1724864 (= (derivationStepZipperDown!612 (h!68115 (exprs!5048 (h!68117 zl!343))) lt!2200919 (h!68116 s!2326)) e!3348179)))

(declare-fun b!5399928 () Bool)

(assert (=> b!5399928 (= e!3348176 (as set.empty (Set Context!9096)))))

(declare-fun bm!386435 () Bool)

(assert (=> bm!386435 (= call!386441 call!386439)))

(declare-fun b!5399929 () Bool)

(declare-fun e!3348181 () (Set Context!9096))

(assert (=> b!5399929 (= e!3348181 call!386441)))

(declare-fun bm!386436 () Bool)

(assert (=> bm!386436 (= call!386440 (derivationStepZipperDown!612 (ite c!941121 (regOne!30841 (h!68115 (exprs!5048 (h!68117 zl!343)))) (regOne!30840 (h!68115 (exprs!5048 (h!68117 zl!343))))) (ite c!941121 lt!2200919 (Context!9097 call!386437)) (h!68116 s!2326)))))

(declare-fun b!5399930 () Bool)

(assert (=> b!5399930 (= e!3348177 (set.union call!386440 call!386439))))

(declare-fun b!5399931 () Bool)

(assert (=> b!5399931 (= e!3348180 (nullable!5333 (regOne!30840 (h!68115 (exprs!5048 (h!68117 zl!343))))))))

(declare-fun b!5399932 () Bool)

(assert (=> b!5399932 (= e!3348177 e!3348181)))

(assert (=> b!5399932 (= c!941124 (is-Concat!24009 (h!68115 (exprs!5048 (h!68117 zl!343)))))))

(declare-fun bm!386437 () Bool)

(assert (=> bm!386437 (= call!386438 call!386437)))

(declare-fun b!5399933 () Bool)

(declare-fun c!941120 () Bool)

(assert (=> b!5399933 (= c!941120 (is-Star!15164 (h!68115 (exprs!5048 (h!68117 zl!343)))))))

(assert (=> b!5399933 (= e!3348181 e!3348176)))

(assert (= (and d!1724864 c!941122) b!5399924))

(assert (= (and d!1724864 (not c!941122)) b!5399926))

(assert (= (and b!5399926 c!941121) b!5399927))

(assert (= (and b!5399926 (not c!941121)) b!5399923))

(assert (= (and b!5399923 res!2295557) b!5399931))

(assert (= (and b!5399923 c!941123) b!5399930))

(assert (= (and b!5399923 (not c!941123)) b!5399932))

(assert (= (and b!5399932 c!941124) b!5399929))

(assert (= (and b!5399932 (not c!941124)) b!5399933))

(assert (= (and b!5399933 c!941120) b!5399925))

(assert (= (and b!5399933 (not c!941120)) b!5399928))

(assert (= (or b!5399929 b!5399925) bm!386437))

(assert (= (or b!5399929 b!5399925) bm!386435))

(assert (= (or b!5399930 bm!386437) bm!386433))

(assert (= (or b!5399930 bm!386435) bm!386432))

(assert (= (or b!5399927 bm!386432) bm!386434))

(assert (= (or b!5399927 b!5399930) bm!386436))

(declare-fun m!6424654 () Bool)

(assert (=> b!5399924 m!6424654))

(declare-fun m!6424656 () Bool)

(assert (=> bm!386434 m!6424656))

(declare-fun m!6424658 () Bool)

(assert (=> bm!386433 m!6424658))

(declare-fun m!6424660 () Bool)

(assert (=> bm!386436 m!6424660))

(declare-fun m!6424662 () Bool)

(assert (=> b!5399931 m!6424662))

(assert (=> b!5399488 d!1724864))

(declare-fun bs!1248139 () Bool)

(declare-fun d!1724866 () Bool)

(assert (= bs!1248139 (and d!1724866 b!5399478)))

(declare-fun lambda!281114 () Int)

(assert (=> bs!1248139 (= lambda!281114 lambda!281072)))

(declare-fun bs!1248140 () Bool)

(assert (= bs!1248140 (and d!1724866 d!1724836)))

(assert (=> bs!1248140 (= lambda!281114 lambda!281111)))

(assert (=> d!1724866 (= (inv!81158 (h!68117 zl!343)) (forall!14524 (exprs!5048 (h!68117 zl!343)) lambda!281114))))

(declare-fun bs!1248141 () Bool)

(assert (= bs!1248141 d!1724866))

(declare-fun m!6424664 () Bool)

(assert (=> bs!1248141 m!6424664))

(assert (=> b!5399489 d!1724866))

(declare-fun d!1724868 () Bool)

(declare-fun lt!2201141 () Regex!15164)

(assert (=> d!1724868 (validRegex!6900 lt!2201141)))

(assert (=> d!1724868 (= lt!2201141 (generalisedUnion!1093 (unfocusZipperList!606 lt!2200912)))))

(assert (=> d!1724868 (= (unfocusZipper!906 lt!2200912) lt!2201141)))

(declare-fun bs!1248142 () Bool)

(assert (= bs!1248142 d!1724868))

(declare-fun m!6424666 () Bool)

(assert (=> bs!1248142 m!6424666))

(declare-fun m!6424668 () Bool)

(assert (=> bs!1248142 m!6424668))

(assert (=> bs!1248142 m!6424668))

(declare-fun m!6424670 () Bool)

(assert (=> bs!1248142 m!6424670))

(assert (=> b!5399490 d!1724868))

(declare-fun b!5399934 () Bool)

(declare-fun e!3348186 () Bool)

(declare-fun e!3348185 () Bool)

(assert (=> b!5399934 (= e!3348186 e!3348185)))

(declare-fun res!2295560 () Bool)

(assert (=> b!5399934 (= res!2295560 (not (nullable!5333 (reg!15493 r!7292))))))

(assert (=> b!5399934 (=> (not res!2295560) (not e!3348185))))

(declare-fun bm!386438 () Bool)

(declare-fun call!386444 () Bool)

(declare-fun call!386443 () Bool)

(assert (=> bm!386438 (= call!386444 call!386443)))

(declare-fun b!5399935 () Bool)

(declare-fun e!3348184 () Bool)

(declare-fun call!386445 () Bool)

(assert (=> b!5399935 (= e!3348184 call!386445)))

(declare-fun b!5399937 () Bool)

(declare-fun res!2295559 () Bool)

(declare-fun e!3348183 () Bool)

(assert (=> b!5399937 (=> res!2295559 e!3348183)))

(assert (=> b!5399937 (= res!2295559 (not (is-Concat!24009 r!7292)))))

(declare-fun e!3348188 () Bool)

(assert (=> b!5399937 (= e!3348188 e!3348183)))

(declare-fun b!5399938 () Bool)

(declare-fun e!3348182 () Bool)

(assert (=> b!5399938 (= e!3348182 call!386445)))

(declare-fun b!5399939 () Bool)

(assert (=> b!5399939 (= e!3348186 e!3348188)))

(declare-fun c!941126 () Bool)

(assert (=> b!5399939 (= c!941126 (is-Union!15164 r!7292))))

(declare-fun b!5399940 () Bool)

(assert (=> b!5399940 (= e!3348183 e!3348182)))

(declare-fun res!2295562 () Bool)

(assert (=> b!5399940 (=> (not res!2295562) (not e!3348182))))

(assert (=> b!5399940 (= res!2295562 call!386444)))

(declare-fun bm!386439 () Bool)

(declare-fun c!941125 () Bool)

(assert (=> bm!386439 (= call!386443 (validRegex!6900 (ite c!941125 (reg!15493 r!7292) (ite c!941126 (regOne!30841 r!7292) (regOne!30840 r!7292)))))))

(declare-fun bm!386440 () Bool)

(assert (=> bm!386440 (= call!386445 (validRegex!6900 (ite c!941126 (regTwo!30841 r!7292) (regTwo!30840 r!7292))))))

(declare-fun b!5399941 () Bool)

(declare-fun e!3348187 () Bool)

(assert (=> b!5399941 (= e!3348187 e!3348186)))

(assert (=> b!5399941 (= c!941125 (is-Star!15164 r!7292))))

(declare-fun b!5399942 () Bool)

(declare-fun res!2295561 () Bool)

(assert (=> b!5399942 (=> (not res!2295561) (not e!3348184))))

(assert (=> b!5399942 (= res!2295561 call!386444)))

(assert (=> b!5399942 (= e!3348188 e!3348184)))

(declare-fun d!1724870 () Bool)

(declare-fun res!2295558 () Bool)

(assert (=> d!1724870 (=> res!2295558 e!3348187)))

(assert (=> d!1724870 (= res!2295558 (is-ElementMatch!15164 r!7292))))

(assert (=> d!1724870 (= (validRegex!6900 r!7292) e!3348187)))

(declare-fun b!5399936 () Bool)

(assert (=> b!5399936 (= e!3348185 call!386443)))

(assert (= (and d!1724870 (not res!2295558)) b!5399941))

(assert (= (and b!5399941 c!941125) b!5399934))

(assert (= (and b!5399941 (not c!941125)) b!5399939))

(assert (= (and b!5399934 res!2295560) b!5399936))

(assert (= (and b!5399939 c!941126) b!5399942))

(assert (= (and b!5399939 (not c!941126)) b!5399937))

(assert (= (and b!5399942 res!2295561) b!5399935))

(assert (= (and b!5399937 (not res!2295559)) b!5399940))

(assert (= (and b!5399940 res!2295562) b!5399938))

(assert (= (or b!5399935 b!5399938) bm!386440))

(assert (= (or b!5399942 b!5399940) bm!386438))

(assert (= (or b!5399936 bm!386438) bm!386439))

(declare-fun m!6424672 () Bool)

(assert (=> b!5399934 m!6424672))

(declare-fun m!6424674 () Bool)

(assert (=> bm!386439 m!6424674))

(declare-fun m!6424676 () Bool)

(assert (=> bm!386440 m!6424676))

(assert (=> start!567160 d!1724870))

(declare-fun bs!1248143 () Bool)

(declare-fun d!1724872 () Bool)

(assert (= bs!1248143 (and d!1724872 b!5399478)))

(declare-fun lambda!281117 () Int)

(assert (=> bs!1248143 (= lambda!281117 lambda!281072)))

(declare-fun bs!1248144 () Bool)

(assert (= bs!1248144 (and d!1724872 d!1724836)))

(assert (=> bs!1248144 (= lambda!281117 lambda!281111)))

(declare-fun bs!1248145 () Bool)

(assert (= bs!1248145 (and d!1724872 d!1724866)))

(assert (=> bs!1248145 (= lambda!281117 lambda!281114)))

(declare-fun b!5399963 () Bool)

(declare-fun e!3348201 () Regex!15164)

(declare-fun e!3348204 () Regex!15164)

(assert (=> b!5399963 (= e!3348201 e!3348204)))

(declare-fun c!941136 () Bool)

(assert (=> b!5399963 (= c!941136 (is-Cons!61667 (exprs!5048 (h!68117 zl!343))))))

(declare-fun b!5399964 () Bool)

(assert (=> b!5399964 (= e!3348204 (Concat!24009 (h!68115 (exprs!5048 (h!68117 zl!343))) (generalisedConcat!833 (t!375014 (exprs!5048 (h!68117 zl!343))))))))

(declare-fun b!5399965 () Bool)

(assert (=> b!5399965 (= e!3348201 (h!68115 (exprs!5048 (h!68117 zl!343))))))

(declare-fun b!5399966 () Bool)

(declare-fun e!3348203 () Bool)

(declare-fun lt!2201144 () Regex!15164)

(declare-fun isConcat!488 (Regex!15164) Bool)

(assert (=> b!5399966 (= e!3348203 (isConcat!488 lt!2201144))))

(declare-fun b!5399967 () Bool)

(declare-fun e!3348205 () Bool)

(assert (=> b!5399967 (= e!3348205 e!3348203)))

(declare-fun c!941135 () Bool)

(declare-fun tail!10678 (List!61791) List!61791)

(assert (=> b!5399967 (= c!941135 (isEmpty!33660 (tail!10678 (exprs!5048 (h!68117 zl!343)))))))

(declare-fun b!5399969 () Bool)

(declare-fun e!3348206 () Bool)

(assert (=> b!5399969 (= e!3348206 e!3348205)))

(declare-fun c!941137 () Bool)

(assert (=> b!5399969 (= c!941137 (isEmpty!33660 (exprs!5048 (h!68117 zl!343))))))

(declare-fun b!5399970 () Bool)

(declare-fun head!11581 (List!61791) Regex!15164)

(assert (=> b!5399970 (= e!3348203 (= lt!2201144 (head!11581 (exprs!5048 (h!68117 zl!343)))))))

(declare-fun b!5399971 () Bool)

(declare-fun isEmptyExpr!965 (Regex!15164) Bool)

(assert (=> b!5399971 (= e!3348205 (isEmptyExpr!965 lt!2201144))))

(declare-fun b!5399972 () Bool)

(assert (=> b!5399972 (= e!3348204 EmptyExpr!15164)))

(assert (=> d!1724872 e!3348206))

(declare-fun res!2295567 () Bool)

(assert (=> d!1724872 (=> (not res!2295567) (not e!3348206))))

(assert (=> d!1724872 (= res!2295567 (validRegex!6900 lt!2201144))))

(assert (=> d!1724872 (= lt!2201144 e!3348201)))

(declare-fun c!941138 () Bool)

(declare-fun e!3348202 () Bool)

(assert (=> d!1724872 (= c!941138 e!3348202)))

(declare-fun res!2295568 () Bool)

(assert (=> d!1724872 (=> (not res!2295568) (not e!3348202))))

(assert (=> d!1724872 (= res!2295568 (is-Cons!61667 (exprs!5048 (h!68117 zl!343))))))

(assert (=> d!1724872 (forall!14524 (exprs!5048 (h!68117 zl!343)) lambda!281117)))

(assert (=> d!1724872 (= (generalisedConcat!833 (exprs!5048 (h!68117 zl!343))) lt!2201144)))

(declare-fun b!5399968 () Bool)

(assert (=> b!5399968 (= e!3348202 (isEmpty!33660 (t!375014 (exprs!5048 (h!68117 zl!343)))))))

(assert (= (and d!1724872 res!2295568) b!5399968))

(assert (= (and d!1724872 c!941138) b!5399965))

(assert (= (and d!1724872 (not c!941138)) b!5399963))

(assert (= (and b!5399963 c!941136) b!5399964))

(assert (= (and b!5399963 (not c!941136)) b!5399972))

(assert (= (and d!1724872 res!2295567) b!5399969))

(assert (= (and b!5399969 c!941137) b!5399971))

(assert (= (and b!5399969 (not c!941137)) b!5399967))

(assert (= (and b!5399967 c!941135) b!5399970))

(assert (= (and b!5399967 (not c!941135)) b!5399966))

(declare-fun m!6424678 () Bool)

(assert (=> b!5399970 m!6424678))

(declare-fun m!6424680 () Bool)

(assert (=> b!5399971 m!6424680))

(declare-fun m!6424682 () Bool)

(assert (=> b!5399969 m!6424682))

(assert (=> b!5399968 m!6424222))

(declare-fun m!6424684 () Bool)

(assert (=> b!5399967 m!6424684))

(assert (=> b!5399967 m!6424684))

(declare-fun m!6424686 () Bool)

(assert (=> b!5399967 m!6424686))

(declare-fun m!6424688 () Bool)

(assert (=> b!5399966 m!6424688))

(declare-fun m!6424690 () Bool)

(assert (=> b!5399964 m!6424690))

(declare-fun m!6424692 () Bool)

(assert (=> d!1724872 m!6424692))

(declare-fun m!6424694 () Bool)

(assert (=> d!1724872 m!6424694))

(assert (=> b!5399470 d!1724872))

(declare-fun d!1724874 () Bool)

(declare-fun c!941139 () Bool)

(assert (=> d!1724874 (= c!941139 (isEmpty!33664 s!2326))))

(declare-fun e!3348207 () Bool)

(assert (=> d!1724874 (= (matchZipper!1408 z!1189 s!2326) e!3348207)))

(declare-fun b!5399973 () Bool)

(assert (=> b!5399973 (= e!3348207 (nullableZipper!1431 z!1189))))

(declare-fun b!5399974 () Bool)

(assert (=> b!5399974 (= e!3348207 (matchZipper!1408 (derivationStepZipper!1403 z!1189 (head!11580 s!2326)) (tail!10677 s!2326)))))

(assert (= (and d!1724874 c!941139) b!5399973))

(assert (= (and d!1724874 (not c!941139)) b!5399974))

(assert (=> d!1724874 m!6424586))

(declare-fun m!6424696 () Bool)

(assert (=> b!5399973 m!6424696))

(assert (=> b!5399974 m!6424588))

(assert (=> b!5399974 m!6424588))

(declare-fun m!6424698 () Bool)

(assert (=> b!5399974 m!6424698))

(assert (=> b!5399974 m!6424580))

(assert (=> b!5399974 m!6424698))

(assert (=> b!5399974 m!6424580))

(declare-fun m!6424700 () Bool)

(assert (=> b!5399974 m!6424700))

(assert (=> b!5399491 d!1724874))

(declare-fun d!1724876 () Bool)

(assert (=> d!1724876 (= (nullable!5333 (regOne!30840 (regOne!30840 r!7292))) (nullableFct!1583 (regOne!30840 (regOne!30840 r!7292))))))

(declare-fun bs!1248146 () Bool)

(assert (= bs!1248146 d!1724876))

(declare-fun m!6424702 () Bool)

(assert (=> bs!1248146 m!6424702))

(assert (=> b!5399471 d!1724876))

(declare-fun d!1724878 () Bool)

(declare-fun c!941140 () Bool)

(assert (=> d!1724878 (= c!941140 (isEmpty!33664 (t!375015 s!2326)))))

(declare-fun e!3348208 () Bool)

(assert (=> d!1724878 (= (matchZipper!1408 lt!2200920 (t!375015 s!2326)) e!3348208)))

(declare-fun b!5399975 () Bool)

(assert (=> b!5399975 (= e!3348208 (nullableZipper!1431 lt!2200920))))

(declare-fun b!5399976 () Bool)

(assert (=> b!5399976 (= e!3348208 (matchZipper!1408 (derivationStepZipper!1403 lt!2200920 (head!11580 (t!375015 s!2326))) (tail!10677 (t!375015 s!2326))))))

(assert (= (and d!1724878 c!941140) b!5399975))

(assert (= (and d!1724878 (not c!941140)) b!5399976))

(assert (=> d!1724878 m!6424472))

(declare-fun m!6424704 () Bool)

(assert (=> b!5399975 m!6424704))

(assert (=> b!5399976 m!6424476))

(assert (=> b!5399976 m!6424476))

(declare-fun m!6424706 () Bool)

(assert (=> b!5399976 m!6424706))

(assert (=> b!5399976 m!6424480))

(assert (=> b!5399976 m!6424706))

(assert (=> b!5399976 m!6424480))

(declare-fun m!6424708 () Bool)

(assert (=> b!5399976 m!6424708))

(assert (=> b!5399492 d!1724878))

(declare-fun d!1724880 () Bool)

(declare-fun lt!2201145 () Regex!15164)

(assert (=> d!1724880 (validRegex!6900 lt!2201145)))

(assert (=> d!1724880 (= lt!2201145 (generalisedUnion!1093 (unfocusZipperList!606 zl!343)))))

(assert (=> d!1724880 (= (unfocusZipper!906 zl!343) lt!2201145)))

(declare-fun bs!1248147 () Bool)

(assert (= bs!1248147 d!1724880))

(declare-fun m!6424710 () Bool)

(assert (=> bs!1248147 m!6424710))

(assert (=> bs!1248147 m!6424138))

(assert (=> bs!1248147 m!6424138))

(assert (=> bs!1248147 m!6424140))

(assert (=> b!5399472 d!1724880))

(declare-fun d!1724882 () Bool)

(declare-fun e!3348211 () Bool)

(assert (=> d!1724882 e!3348211))

(declare-fun res!2295571 () Bool)

(assert (=> d!1724882 (=> (not res!2295571) (not e!3348211))))

(declare-fun lt!2201148 () List!61793)

(declare-fun noDuplicate!1383 (List!61793) Bool)

(assert (=> d!1724882 (= res!2295571 (noDuplicate!1383 lt!2201148))))

(declare-fun choose!40674 ((Set Context!9096)) List!61793)

(assert (=> d!1724882 (= lt!2201148 (choose!40674 z!1189))))

(assert (=> d!1724882 (= (toList!8948 z!1189) lt!2201148)))

(declare-fun b!5399979 () Bool)

(declare-fun content!11044 (List!61793) (Set Context!9096))

(assert (=> b!5399979 (= e!3348211 (= (content!11044 lt!2201148) z!1189))))

(assert (= (and d!1724882 res!2295571) b!5399979))

(declare-fun m!6424712 () Bool)

(assert (=> d!1724882 m!6424712))

(declare-fun m!6424714 () Bool)

(assert (=> d!1724882 m!6424714))

(declare-fun m!6424716 () Bool)

(assert (=> b!5399979 m!6424716))

(assert (=> b!5399493 d!1724882))

(declare-fun d!1724884 () Bool)

(assert (=> d!1724884 (= (get!21249 lt!2200908) (v!51303 lt!2200908))))

(assert (=> b!5399473 d!1724884))

(declare-fun d!1724886 () Bool)

(assert (=> d!1724886 (isDefined!11978 (findConcatSeparationZippers!21 lt!2200929 (set.insert lt!2200900 (as set.empty (Set Context!9096))) Nil!61668 s!2326 s!2326))))

(declare-fun lt!2201151 () Unit!154178)

(declare-fun choose!40675 ((Set Context!9096) Context!9096 List!61792) Unit!154178)

(assert (=> d!1724886 (= lt!2201151 (choose!40675 lt!2200929 lt!2200900 s!2326))))

(assert (=> d!1724886 (matchZipper!1408 (appendTo!23 lt!2200929 lt!2200900) s!2326)))

(assert (=> d!1724886 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!21 lt!2200929 lt!2200900 s!2326) lt!2201151)))

(declare-fun bs!1248148 () Bool)

(assert (= bs!1248148 d!1724886))

(declare-fun m!6424718 () Bool)

(assert (=> bs!1248148 m!6424718))

(declare-fun m!6424720 () Bool)

(assert (=> bs!1248148 m!6424720))

(assert (=> bs!1248148 m!6424120))

(assert (=> bs!1248148 m!6424120))

(declare-fun m!6424722 () Bool)

(assert (=> bs!1248148 m!6424722))

(assert (=> bs!1248148 m!6424206))

(assert (=> bs!1248148 m!6424718))

(declare-fun m!6424724 () Bool)

(assert (=> bs!1248148 m!6424724))

(assert (=> bs!1248148 m!6424206))

(assert (=> b!5399473 d!1724886))

(declare-fun d!1724888 () Bool)

(assert (=> d!1724888 (= (isDefined!11978 lt!2200908) (not (isEmpty!33663 lt!2200908)))))

(declare-fun bs!1248149 () Bool)

(assert (= bs!1248149 d!1724888))

(declare-fun m!6424726 () Bool)

(assert (=> bs!1248149 m!6424726))

(assert (=> b!5399473 d!1724888))

(declare-fun b!5399991 () Bool)

(declare-fun e!3348216 () Bool)

(declare-fun lt!2201154 () List!61792)

(assert (=> b!5399991 (= e!3348216 (or (not (= (_2!35666 lt!2200883) Nil!61668)) (= lt!2201154 (_1!35666 lt!2200883))))))

(declare-fun b!5399990 () Bool)

(declare-fun res!2295576 () Bool)

(assert (=> b!5399990 (=> (not res!2295576) (not e!3348216))))

(declare-fun size!39831 (List!61792) Int)

(assert (=> b!5399990 (= res!2295576 (= (size!39831 lt!2201154) (+ (size!39831 (_1!35666 lt!2200883)) (size!39831 (_2!35666 lt!2200883)))))))

(declare-fun b!5399989 () Bool)

(declare-fun e!3348217 () List!61792)

(assert (=> b!5399989 (= e!3348217 (Cons!61668 (h!68116 (_1!35666 lt!2200883)) (++!13501 (t!375015 (_1!35666 lt!2200883)) (_2!35666 lt!2200883))))))

(declare-fun d!1724890 () Bool)

(assert (=> d!1724890 e!3348216))

(declare-fun res!2295577 () Bool)

(assert (=> d!1724890 (=> (not res!2295577) (not e!3348216))))

(declare-fun content!11045 (List!61792) (Set C!30598))

(assert (=> d!1724890 (= res!2295577 (= (content!11045 lt!2201154) (set.union (content!11045 (_1!35666 lt!2200883)) (content!11045 (_2!35666 lt!2200883)))))))

(assert (=> d!1724890 (= lt!2201154 e!3348217)))

(declare-fun c!941143 () Bool)

(assert (=> d!1724890 (= c!941143 (is-Nil!61668 (_1!35666 lt!2200883)))))

(assert (=> d!1724890 (= (++!13501 (_1!35666 lt!2200883) (_2!35666 lt!2200883)) lt!2201154)))

(declare-fun b!5399988 () Bool)

(assert (=> b!5399988 (= e!3348217 (_2!35666 lt!2200883))))

(assert (= (and d!1724890 c!941143) b!5399988))

(assert (= (and d!1724890 (not c!941143)) b!5399989))

(assert (= (and d!1724890 res!2295577) b!5399990))

(assert (= (and b!5399990 res!2295576) b!5399991))

(declare-fun m!6424728 () Bool)

(assert (=> b!5399990 m!6424728))

(declare-fun m!6424730 () Bool)

(assert (=> b!5399990 m!6424730))

(declare-fun m!6424732 () Bool)

(assert (=> b!5399990 m!6424732))

(declare-fun m!6424734 () Bool)

(assert (=> b!5399989 m!6424734))

(declare-fun m!6424736 () Bool)

(assert (=> d!1724890 m!6424736))

(declare-fun m!6424738 () Bool)

(assert (=> d!1724890 m!6424738))

(declare-fun m!6424740 () Bool)

(assert (=> d!1724890 m!6424740))

(assert (=> b!5399473 d!1724890))

(declare-fun b!5400010 () Bool)

(declare-fun e!3348230 () Bool)

(declare-fun lt!2201161 () Option!15275)

(assert (=> b!5400010 (= e!3348230 (= (++!13501 (_1!35666 (get!21249 lt!2201161)) (_2!35666 (get!21249 lt!2201161))) s!2326))))

(declare-fun d!1724892 () Bool)

(declare-fun e!3348232 () Bool)

(assert (=> d!1724892 e!3348232))

(declare-fun res!2295590 () Bool)

(assert (=> d!1724892 (=> res!2295590 e!3348232)))

(assert (=> d!1724892 (= res!2295590 e!3348230)))

(declare-fun res!2295589 () Bool)

(assert (=> d!1724892 (=> (not res!2295589) (not e!3348230))))

(assert (=> d!1724892 (= res!2295589 (isDefined!11978 lt!2201161))))

(declare-fun e!3348228 () Option!15275)

(assert (=> d!1724892 (= lt!2201161 e!3348228)))

(declare-fun c!941148 () Bool)

(declare-fun e!3348231 () Bool)

(assert (=> d!1724892 (= c!941148 e!3348231)))

(declare-fun res!2295592 () Bool)

(assert (=> d!1724892 (=> (not res!2295592) (not e!3348231))))

(assert (=> d!1724892 (= res!2295592 (matchZipper!1408 lt!2200929 Nil!61668))))

(assert (=> d!1724892 (= (++!13501 Nil!61668 s!2326) s!2326)))

(assert (=> d!1724892 (= (findConcatSeparationZippers!21 lt!2200929 lt!2200894 Nil!61668 s!2326 s!2326) lt!2201161)))

(declare-fun b!5400011 () Bool)

(declare-fun e!3348229 () Option!15275)

(assert (=> b!5400011 (= e!3348229 None!15274)))

(declare-fun b!5400012 () Bool)

(assert (=> b!5400012 (= e!3348228 e!3348229)))

(declare-fun c!941149 () Bool)

(assert (=> b!5400012 (= c!941149 (is-Nil!61668 s!2326))))

(declare-fun b!5400013 () Bool)

(assert (=> b!5400013 (= e!3348228 (Some!15274 (tuple2!64727 Nil!61668 s!2326)))))

(declare-fun b!5400014 () Bool)

(assert (=> b!5400014 (= e!3348231 (matchZipper!1408 lt!2200894 s!2326))))

(declare-fun b!5400015 () Bool)

(declare-fun res!2295591 () Bool)

(assert (=> b!5400015 (=> (not res!2295591) (not e!3348230))))

(assert (=> b!5400015 (= res!2295591 (matchZipper!1408 lt!2200929 (_1!35666 (get!21249 lt!2201161))))))

(declare-fun b!5400016 () Bool)

(assert (=> b!5400016 (= e!3348232 (not (isDefined!11978 lt!2201161)))))

(declare-fun b!5400017 () Bool)

(declare-fun lt!2201162 () Unit!154178)

(declare-fun lt!2201163 () Unit!154178)

(assert (=> b!5400017 (= lt!2201162 lt!2201163)))

(assert (=> b!5400017 (= (++!13501 (++!13501 Nil!61668 (Cons!61668 (h!68116 s!2326) Nil!61668)) (t!375015 s!2326)) s!2326)))

(assert (=> b!5400017 (= lt!2201163 (lemmaMoveElementToOtherListKeepsConcatEq!1826 Nil!61668 (h!68116 s!2326) (t!375015 s!2326) s!2326))))

(assert (=> b!5400017 (= e!3348229 (findConcatSeparationZippers!21 lt!2200929 lt!2200894 (++!13501 Nil!61668 (Cons!61668 (h!68116 s!2326) Nil!61668)) (t!375015 s!2326) s!2326))))

(declare-fun b!5400018 () Bool)

(declare-fun res!2295588 () Bool)

(assert (=> b!5400018 (=> (not res!2295588) (not e!3348230))))

(assert (=> b!5400018 (= res!2295588 (matchZipper!1408 lt!2200894 (_2!35666 (get!21249 lt!2201161))))))

(assert (= (and d!1724892 res!2295592) b!5400014))

(assert (= (and d!1724892 c!941148) b!5400013))

(assert (= (and d!1724892 (not c!941148)) b!5400012))

(assert (= (and b!5400012 c!941149) b!5400011))

(assert (= (and b!5400012 (not c!941149)) b!5400017))

(assert (= (and d!1724892 res!2295589) b!5400015))

(assert (= (and b!5400015 res!2295591) b!5400018))

(assert (= (and b!5400018 res!2295588) b!5400010))

(assert (= (and d!1724892 (not res!2295590)) b!5400016))

(declare-fun m!6424742 () Bool)

(assert (=> b!5400018 m!6424742))

(declare-fun m!6424744 () Bool)

(assert (=> b!5400018 m!6424744))

(assert (=> b!5400015 m!6424742))

(declare-fun m!6424746 () Bool)

(assert (=> b!5400015 m!6424746))

(assert (=> b!5400010 m!6424742))

(declare-fun m!6424748 () Bool)

(assert (=> b!5400010 m!6424748))

(assert (=> b!5400017 m!6424444))

(assert (=> b!5400017 m!6424444))

(assert (=> b!5400017 m!6424446))

(assert (=> b!5400017 m!6424448))

(assert (=> b!5400017 m!6424444))

(declare-fun m!6424750 () Bool)

(assert (=> b!5400017 m!6424750))

(declare-fun m!6424752 () Bool)

(assert (=> b!5400016 m!6424752))

(assert (=> d!1724892 m!6424752))

(declare-fun m!6424754 () Bool)

(assert (=> d!1724892 m!6424754))

(declare-fun m!6424756 () Bool)

(assert (=> d!1724892 m!6424756))

(declare-fun m!6424758 () Bool)

(assert (=> b!5400014 m!6424758))

(assert (=> b!5399473 d!1724892))

(declare-fun d!1724894 () Bool)

(assert (=> d!1724894 (= (flatMap!891 lt!2200884 lambda!281070) (choose!40664 lt!2200884 lambda!281070))))

(declare-fun bs!1248150 () Bool)

(assert (= bs!1248150 d!1724894))

(declare-fun m!6424760 () Bool)

(assert (=> bs!1248150 m!6424760))

(assert (=> b!5399495 d!1724894))

(declare-fun b!5400019 () Bool)

(declare-fun e!3348234 () (Set Context!9096))

(declare-fun e!3348235 () (Set Context!9096))

(assert (=> b!5400019 (= e!3348234 e!3348235)))

(declare-fun c!941150 () Bool)

(assert (=> b!5400019 (= c!941150 (is-Cons!61667 (exprs!5048 lt!2200924)))))

(declare-fun bm!386441 () Bool)

(declare-fun call!386446 () (Set Context!9096))

(assert (=> bm!386441 (= call!386446 (derivationStepZipperDown!612 (h!68115 (exprs!5048 lt!2200924)) (Context!9097 (t!375014 (exprs!5048 lt!2200924))) (h!68116 s!2326)))))

(declare-fun b!5400020 () Bool)

(assert (=> b!5400020 (= e!3348235 call!386446)))

(declare-fun d!1724896 () Bool)

(declare-fun c!941151 () Bool)

(declare-fun e!3348233 () Bool)

(assert (=> d!1724896 (= c!941151 e!3348233)))

(declare-fun res!2295593 () Bool)

(assert (=> d!1724896 (=> (not res!2295593) (not e!3348233))))

(assert (=> d!1724896 (= res!2295593 (is-Cons!61667 (exprs!5048 lt!2200924)))))

(assert (=> d!1724896 (= (derivationStepZipperUp!536 lt!2200924 (h!68116 s!2326)) e!3348234)))

(declare-fun b!5400021 () Bool)

(assert (=> b!5400021 (= e!3348235 (as set.empty (Set Context!9096)))))

(declare-fun b!5400022 () Bool)

(assert (=> b!5400022 (= e!3348233 (nullable!5333 (h!68115 (exprs!5048 lt!2200924))))))

(declare-fun b!5400023 () Bool)

(assert (=> b!5400023 (= e!3348234 (set.union call!386446 (derivationStepZipperUp!536 (Context!9097 (t!375014 (exprs!5048 lt!2200924))) (h!68116 s!2326))))))

(assert (= (and d!1724896 res!2295593) b!5400022))

(assert (= (and d!1724896 c!941151) b!5400023))

(assert (= (and d!1724896 (not c!941151)) b!5400019))

(assert (= (and b!5400019 c!941150) b!5400020))

(assert (= (and b!5400019 (not c!941150)) b!5400021))

(assert (= (or b!5400023 b!5400020) bm!386441))

(declare-fun m!6424762 () Bool)

(assert (=> bm!386441 m!6424762))

(declare-fun m!6424764 () Bool)

(assert (=> b!5400022 m!6424764))

(declare-fun m!6424766 () Bool)

(assert (=> b!5400023 m!6424766))

(assert (=> b!5399495 d!1724896))

(declare-fun d!1724898 () Bool)

(assert (=> d!1724898 (= (flatMap!891 lt!2200884 lambda!281070) (dynLambda!24301 lambda!281070 lt!2200924))))

(declare-fun lt!2201164 () Unit!154178)

(assert (=> d!1724898 (= lt!2201164 (choose!40665 lt!2200884 lt!2200924 lambda!281070))))

(assert (=> d!1724898 (= lt!2200884 (set.insert lt!2200924 (as set.empty (Set Context!9096))))))

(assert (=> d!1724898 (= (lemmaFlatMapOnSingletonSet!423 lt!2200884 lt!2200924 lambda!281070) lt!2201164)))

(declare-fun b_lambda!206435 () Bool)

(assert (=> (not b_lambda!206435) (not d!1724898)))

(declare-fun bs!1248151 () Bool)

(assert (= bs!1248151 d!1724898))

(assert (=> bs!1248151 m!6424150))

(declare-fun m!6424768 () Bool)

(assert (=> bs!1248151 m!6424768))

(declare-fun m!6424770 () Bool)

(assert (=> bs!1248151 m!6424770))

(assert (=> bs!1248151 m!6424144))

(assert (=> b!5399495 d!1724898))

(declare-fun bs!1248152 () Bool)

(declare-fun d!1724900 () Bool)

(assert (= bs!1248152 (and d!1724900 b!5399488)))

(declare-fun lambda!281120 () Int)

(assert (=> bs!1248152 (= lambda!281120 lambda!281070)))

(assert (=> d!1724900 true))

(assert (=> d!1724900 (= (derivationStepZipper!1403 lt!2200884 (h!68116 s!2326)) (flatMap!891 lt!2200884 lambda!281120))))

(declare-fun bs!1248153 () Bool)

(assert (= bs!1248153 d!1724900))

(declare-fun m!6424772 () Bool)

(assert (=> bs!1248153 m!6424772))

(assert (=> b!5399495 d!1724900))

(declare-fun bs!1248154 () Bool)

(declare-fun d!1724902 () Bool)

(assert (= bs!1248154 (and d!1724902 b!5399478)))

(declare-fun lambda!281123 () Int)

(assert (=> bs!1248154 (= lambda!281123 lambda!281072)))

(declare-fun bs!1248155 () Bool)

(assert (= bs!1248155 (and d!1724902 d!1724836)))

(assert (=> bs!1248155 (= lambda!281123 lambda!281111)))

(declare-fun bs!1248156 () Bool)

(assert (= bs!1248156 (and d!1724902 d!1724866)))

(assert (=> bs!1248156 (= lambda!281123 lambda!281114)))

(declare-fun bs!1248157 () Bool)

(assert (= bs!1248157 (and d!1724902 d!1724872)))

(assert (=> bs!1248157 (= lambda!281123 lambda!281117)))

(declare-fun b!5400046 () Bool)

(declare-fun e!3348251 () Regex!15164)

(assert (=> b!5400046 (= e!3348251 EmptyLang!15164)))

(declare-fun b!5400047 () Bool)

(declare-fun e!3348249 () Regex!15164)

(assert (=> b!5400047 (= e!3348249 (h!68115 (unfocusZipperList!606 zl!343)))))

(declare-fun b!5400048 () Bool)

(declare-fun e!3348248 () Bool)

(declare-fun e!3348253 () Bool)

(assert (=> b!5400048 (= e!3348248 e!3348253)))

(declare-fun c!941163 () Bool)

(assert (=> b!5400048 (= c!941163 (isEmpty!33660 (unfocusZipperList!606 zl!343)))))

(declare-fun b!5400049 () Bool)

(declare-fun e!3348250 () Bool)

(assert (=> b!5400049 (= e!3348250 (isEmpty!33660 (t!375014 (unfocusZipperList!606 zl!343))))))

(assert (=> d!1724902 e!3348248))

(declare-fun res!2295598 () Bool)

(assert (=> d!1724902 (=> (not res!2295598) (not e!3348248))))

(declare-fun lt!2201167 () Regex!15164)

(assert (=> d!1724902 (= res!2295598 (validRegex!6900 lt!2201167))))

(assert (=> d!1724902 (= lt!2201167 e!3348249)))

(declare-fun c!941164 () Bool)

(assert (=> d!1724902 (= c!941164 e!3348250)))

(declare-fun res!2295599 () Bool)

(assert (=> d!1724902 (=> (not res!2295599) (not e!3348250))))

(assert (=> d!1724902 (= res!2295599 (is-Cons!61667 (unfocusZipperList!606 zl!343)))))

(assert (=> d!1724902 (forall!14524 (unfocusZipperList!606 zl!343) lambda!281123)))

(assert (=> d!1724902 (= (generalisedUnion!1093 (unfocusZipperList!606 zl!343)) lt!2201167)))

(declare-fun b!5400050 () Bool)

(assert (=> b!5400050 (= e!3348249 e!3348251)))

(declare-fun c!941162 () Bool)

(assert (=> b!5400050 (= c!941162 (is-Cons!61667 (unfocusZipperList!606 zl!343)))))

(declare-fun b!5400051 () Bool)

(assert (=> b!5400051 (= e!3348251 (Union!15164 (h!68115 (unfocusZipperList!606 zl!343)) (generalisedUnion!1093 (t!375014 (unfocusZipperList!606 zl!343)))))))

(declare-fun b!5400052 () Bool)

(declare-fun e!3348252 () Bool)

(assert (=> b!5400052 (= e!3348252 (= lt!2201167 (head!11581 (unfocusZipperList!606 zl!343))))))

(declare-fun b!5400053 () Bool)

(assert (=> b!5400053 (= e!3348253 e!3348252)))

(declare-fun c!941165 () Bool)

(assert (=> b!5400053 (= c!941165 (isEmpty!33660 (tail!10678 (unfocusZipperList!606 zl!343))))))

(declare-fun b!5400054 () Bool)

(declare-fun isEmptyLang!974 (Regex!15164) Bool)

(assert (=> b!5400054 (= e!3348253 (isEmptyLang!974 lt!2201167))))

(declare-fun b!5400055 () Bool)

(declare-fun isUnion!406 (Regex!15164) Bool)

(assert (=> b!5400055 (= e!3348252 (isUnion!406 lt!2201167))))

(assert (= (and d!1724902 res!2295599) b!5400049))

(assert (= (and d!1724902 c!941164) b!5400047))

(assert (= (and d!1724902 (not c!941164)) b!5400050))

(assert (= (and b!5400050 c!941162) b!5400051))

(assert (= (and b!5400050 (not c!941162)) b!5400046))

(assert (= (and d!1724902 res!2295598) b!5400048))

(assert (= (and b!5400048 c!941163) b!5400054))

(assert (= (and b!5400048 (not c!941163)) b!5400053))

(assert (= (and b!5400053 c!941165) b!5400052))

(assert (= (and b!5400053 (not c!941165)) b!5400055))

(assert (=> b!5400048 m!6424138))

(declare-fun m!6424774 () Bool)

(assert (=> b!5400048 m!6424774))

(assert (=> b!5400052 m!6424138))

(declare-fun m!6424776 () Bool)

(assert (=> b!5400052 m!6424776))

(declare-fun m!6424778 () Bool)

(assert (=> b!5400051 m!6424778))

(declare-fun m!6424780 () Bool)

(assert (=> b!5400054 m!6424780))

(declare-fun m!6424782 () Bool)

(assert (=> b!5400049 m!6424782))

(declare-fun m!6424784 () Bool)

(assert (=> d!1724902 m!6424784))

(assert (=> d!1724902 m!6424138))

(declare-fun m!6424786 () Bool)

(assert (=> d!1724902 m!6424786))

(assert (=> b!5400053 m!6424138))

(declare-fun m!6424788 () Bool)

(assert (=> b!5400053 m!6424788))

(assert (=> b!5400053 m!6424788))

(declare-fun m!6424790 () Bool)

(assert (=> b!5400053 m!6424790))

(declare-fun m!6424792 () Bool)

(assert (=> b!5400055 m!6424792))

(assert (=> b!5399496 d!1724902))

(declare-fun bs!1248158 () Bool)

(declare-fun d!1724904 () Bool)

(assert (= bs!1248158 (and d!1724904 d!1724836)))

(declare-fun lambda!281126 () Int)

(assert (=> bs!1248158 (= lambda!281126 lambda!281111)))

(declare-fun bs!1248159 () Bool)

(assert (= bs!1248159 (and d!1724904 b!5399478)))

(assert (=> bs!1248159 (= lambda!281126 lambda!281072)))

(declare-fun bs!1248160 () Bool)

(assert (= bs!1248160 (and d!1724904 d!1724866)))

(assert (=> bs!1248160 (= lambda!281126 lambda!281114)))

(declare-fun bs!1248161 () Bool)

(assert (= bs!1248161 (and d!1724904 d!1724872)))

(assert (=> bs!1248161 (= lambda!281126 lambda!281117)))

(declare-fun bs!1248162 () Bool)

(assert (= bs!1248162 (and d!1724904 d!1724902)))

(assert (=> bs!1248162 (= lambda!281126 lambda!281123)))

(declare-fun lt!2201170 () List!61791)

(assert (=> d!1724904 (forall!14524 lt!2201170 lambda!281126)))

(declare-fun e!3348256 () List!61791)

(assert (=> d!1724904 (= lt!2201170 e!3348256)))

(declare-fun c!941168 () Bool)

(assert (=> d!1724904 (= c!941168 (is-Cons!61669 zl!343))))

(assert (=> d!1724904 (= (unfocusZipperList!606 zl!343) lt!2201170)))

(declare-fun b!5400060 () Bool)

(assert (=> b!5400060 (= e!3348256 (Cons!61667 (generalisedConcat!833 (exprs!5048 (h!68117 zl!343))) (unfocusZipperList!606 (t!375016 zl!343))))))

(declare-fun b!5400061 () Bool)

(assert (=> b!5400061 (= e!3348256 Nil!61667)))

(assert (= (and d!1724904 c!941168) b!5400060))

(assert (= (and d!1724904 (not c!941168)) b!5400061))

(declare-fun m!6424794 () Bool)

(assert (=> d!1724904 m!6424794))

(assert (=> b!5400060 m!6424194))

(declare-fun m!6424796 () Bool)

(assert (=> b!5400060 m!6424796))

(assert (=> b!5399496 d!1724904))

(declare-fun d!1724906 () Bool)

(declare-fun c!941169 () Bool)

(assert (=> d!1724906 (= c!941169 (isEmpty!33664 (_2!35666 lt!2200883)))))

(declare-fun e!3348257 () Bool)

(assert (=> d!1724906 (= (matchZipper!1408 lt!2200894 (_2!35666 lt!2200883)) e!3348257)))

(declare-fun b!5400062 () Bool)

(assert (=> b!5400062 (= e!3348257 (nullableZipper!1431 lt!2200894))))

(declare-fun b!5400063 () Bool)

(assert (=> b!5400063 (= e!3348257 (matchZipper!1408 (derivationStepZipper!1403 lt!2200894 (head!11580 (_2!35666 lt!2200883))) (tail!10677 (_2!35666 lt!2200883))))))

(assert (= (and d!1724906 c!941169) b!5400062))

(assert (= (and d!1724906 (not c!941169)) b!5400063))

(assert (=> d!1724906 m!6424572))

(declare-fun m!6424798 () Bool)

(assert (=> b!5400062 m!6424798))

(assert (=> b!5400063 m!6424574))

(assert (=> b!5400063 m!6424574))

(declare-fun m!6424800 () Bool)

(assert (=> b!5400063 m!6424800))

(assert (=> b!5400063 m!6424566))

(assert (=> b!5400063 m!6424800))

(assert (=> b!5400063 m!6424566))

(declare-fun m!6424802 () Bool)

(assert (=> b!5400063 m!6424802))

(assert (=> b!5399475 d!1724906))

(declare-fun d!1724908 () Bool)

(declare-fun c!941170 () Bool)

(assert (=> d!1724908 (= c!941170 (isEmpty!33664 (_1!35666 lt!2200883)))))

(declare-fun e!3348258 () Bool)

(assert (=> d!1724908 (= (matchZipper!1408 lt!2200929 (_1!35666 lt!2200883)) e!3348258)))

(declare-fun b!5400064 () Bool)

(assert (=> b!5400064 (= e!3348258 (nullableZipper!1431 lt!2200929))))

(declare-fun b!5400065 () Bool)

(assert (=> b!5400065 (= e!3348258 (matchZipper!1408 (derivationStepZipper!1403 lt!2200929 (head!11580 (_1!35666 lt!2200883))) (tail!10677 (_1!35666 lt!2200883))))))

(assert (= (and d!1724908 c!941170) b!5400064))

(assert (= (and d!1724908 (not c!941170)) b!5400065))

(assert (=> d!1724908 m!6424600))

(declare-fun m!6424804 () Bool)

(assert (=> b!5400064 m!6424804))

(assert (=> b!5400065 m!6424602))

(assert (=> b!5400065 m!6424602))

(declare-fun m!6424806 () Bool)

(assert (=> b!5400065 m!6424806))

(assert (=> b!5400065 m!6424594))

(assert (=> b!5400065 m!6424806))

(assert (=> b!5400065 m!6424594))

(declare-fun m!6424808 () Bool)

(assert (=> b!5400065 m!6424808))

(assert (=> b!5399476 d!1724908))

(declare-fun bs!1248163 () Bool)

(declare-fun b!5400105 () Bool)

(assert (= bs!1248163 (and b!5400105 b!5399483)))

(declare-fun lambda!281131 () Int)

(assert (=> bs!1248163 (not (= lambda!281131 lambda!281068))))

(assert (=> bs!1248163 (not (= lambda!281131 lambda!281069))))

(declare-fun bs!1248164 () Bool)

(assert (= bs!1248164 (and b!5400105 d!1724812)))

(assert (=> bs!1248164 (not (= lambda!281131 lambda!281108))))

(declare-fun bs!1248165 () Bool)

(assert (= bs!1248165 (and b!5400105 d!1724810)))

(assert (=> bs!1248165 (not (= lambda!281131 lambda!281102))))

(assert (=> bs!1248164 (not (= lambda!281131 lambda!281107))))

(assert (=> b!5400105 true))

(assert (=> b!5400105 true))

(declare-fun bs!1248166 () Bool)

(declare-fun b!5400099 () Bool)

(assert (= bs!1248166 (and b!5400099 b!5399483)))

(declare-fun lambda!281132 () Int)

(assert (=> bs!1248166 (not (= lambda!281132 lambda!281068))))

(assert (=> bs!1248166 (= lambda!281132 lambda!281069)))

(declare-fun bs!1248167 () Bool)

(assert (= bs!1248167 (and b!5400099 d!1724812)))

(assert (=> bs!1248167 (= lambda!281132 lambda!281108)))

(declare-fun bs!1248168 () Bool)

(assert (= bs!1248168 (and b!5400099 b!5400105)))

(assert (=> bs!1248168 (not (= lambda!281132 lambda!281131))))

(declare-fun bs!1248169 () Bool)

(assert (= bs!1248169 (and b!5400099 d!1724810)))

(assert (=> bs!1248169 (not (= lambda!281132 lambda!281102))))

(assert (=> bs!1248167 (not (= lambda!281132 lambda!281107))))

(assert (=> b!5400099 true))

(assert (=> b!5400099 true))

(declare-fun b!5400098 () Bool)

(declare-fun res!2295617 () Bool)

(declare-fun e!3348279 () Bool)

(assert (=> b!5400098 (=> res!2295617 e!3348279)))

(declare-fun call!386451 () Bool)

(assert (=> b!5400098 (= res!2295617 call!386451)))

(declare-fun e!3348283 () Bool)

(assert (=> b!5400098 (= e!3348283 e!3348279)))

(declare-fun call!386452 () Bool)

(assert (=> b!5400099 (= e!3348283 call!386452)))

(declare-fun b!5400100 () Bool)

(declare-fun e!3348278 () Bool)

(declare-fun e!3348281 () Bool)

(assert (=> b!5400100 (= e!3348278 e!3348281)))

(declare-fun res!2295618 () Bool)

(assert (=> b!5400100 (= res!2295618 (matchRSpec!2267 (regOne!30841 r!7292) s!2326))))

(assert (=> b!5400100 (=> res!2295618 e!3348281)))

(declare-fun b!5400101 () Bool)

(declare-fun c!941180 () Bool)

(assert (=> b!5400101 (= c!941180 (is-ElementMatch!15164 r!7292))))

(declare-fun e!3348277 () Bool)

(declare-fun e!3348280 () Bool)

(assert (=> b!5400101 (= e!3348277 e!3348280)))

(declare-fun d!1724910 () Bool)

(declare-fun c!941181 () Bool)

(assert (=> d!1724910 (= c!941181 (is-EmptyExpr!15164 r!7292))))

(declare-fun e!3348282 () Bool)

(assert (=> d!1724910 (= (matchRSpec!2267 r!7292 s!2326) e!3348282)))

(declare-fun b!5400102 () Bool)

(assert (=> b!5400102 (= e!3348280 (= s!2326 (Cons!61668 (c!941036 r!7292) Nil!61668)))))

(declare-fun b!5400103 () Bool)

(assert (=> b!5400103 (= e!3348282 call!386451)))

(declare-fun b!5400104 () Bool)

(declare-fun c!941179 () Bool)

(assert (=> b!5400104 (= c!941179 (is-Union!15164 r!7292))))

(assert (=> b!5400104 (= e!3348280 e!3348278)))

(assert (=> b!5400105 (= e!3348279 call!386452)))

(declare-fun c!941182 () Bool)

(declare-fun bm!386446 () Bool)

(assert (=> bm!386446 (= call!386452 (Exists!2345 (ite c!941182 lambda!281131 lambda!281132)))))

(declare-fun b!5400106 () Bool)

(assert (=> b!5400106 (= e!3348281 (matchRSpec!2267 (regTwo!30841 r!7292) s!2326))))

(declare-fun b!5400107 () Bool)

(assert (=> b!5400107 (= e!3348282 e!3348277)))

(declare-fun res!2295616 () Bool)

(assert (=> b!5400107 (= res!2295616 (not (is-EmptyLang!15164 r!7292)))))

(assert (=> b!5400107 (=> (not res!2295616) (not e!3348277))))

(declare-fun b!5400108 () Bool)

(assert (=> b!5400108 (= e!3348278 e!3348283)))

(assert (=> b!5400108 (= c!941182 (is-Star!15164 r!7292))))

(declare-fun bm!386447 () Bool)

(assert (=> bm!386447 (= call!386451 (isEmpty!33664 s!2326))))

(assert (= (and d!1724910 c!941181) b!5400103))

(assert (= (and d!1724910 (not c!941181)) b!5400107))

(assert (= (and b!5400107 res!2295616) b!5400101))

(assert (= (and b!5400101 c!941180) b!5400102))

(assert (= (and b!5400101 (not c!941180)) b!5400104))

(assert (= (and b!5400104 c!941179) b!5400100))

(assert (= (and b!5400104 (not c!941179)) b!5400108))

(assert (= (and b!5400100 (not res!2295618)) b!5400106))

(assert (= (and b!5400108 c!941182) b!5400098))

(assert (= (and b!5400108 (not c!941182)) b!5400099))

(assert (= (and b!5400098 (not res!2295617)) b!5400105))

(assert (= (or b!5400105 b!5400099) bm!386446))

(assert (= (or b!5400103 b!5400098) bm!386447))

(declare-fun m!6424810 () Bool)

(assert (=> b!5400100 m!6424810))

(declare-fun m!6424812 () Bool)

(assert (=> bm!386446 m!6424812))

(declare-fun m!6424814 () Bool)

(assert (=> b!5400106 m!6424814))

(assert (=> bm!386447 m!6424586))

(assert (=> b!5399498 d!1724910))

(declare-fun b!5400109 () Bool)

(declare-fun res!2295625 () Bool)

(declare-fun e!3348289 () Bool)

(assert (=> b!5400109 (=> (not res!2295625) (not e!3348289))))

(declare-fun call!386453 () Bool)

(assert (=> b!5400109 (= res!2295625 (not call!386453))))

(declare-fun b!5400110 () Bool)

(declare-fun res!2295624 () Bool)

(declare-fun e!3348285 () Bool)

(assert (=> b!5400110 (=> res!2295624 e!3348285)))

(assert (=> b!5400110 (= res!2295624 (not (isEmpty!33664 (tail!10677 s!2326))))))

(declare-fun b!5400111 () Bool)

(assert (=> b!5400111 (= e!3348289 (= (head!11580 s!2326) (c!941036 r!7292)))))

(declare-fun b!5400112 () Bool)

(declare-fun e!3348287 () Bool)

(assert (=> b!5400112 (= e!3348287 e!3348285)))

(declare-fun res!2295623 () Bool)

(assert (=> b!5400112 (=> res!2295623 e!3348285)))

(assert (=> b!5400112 (= res!2295623 call!386453)))

(declare-fun b!5400114 () Bool)

(declare-fun e!3348290 () Bool)

(assert (=> b!5400114 (= e!3348290 (matchR!7349 (derivativeStep!4252 r!7292 (head!11580 s!2326)) (tail!10677 s!2326)))))

(declare-fun b!5400115 () Bool)

(assert (=> b!5400115 (= e!3348290 (nullable!5333 r!7292))))

(declare-fun b!5400116 () Bool)

(declare-fun e!3348288 () Bool)

(declare-fun lt!2201171 () Bool)

(assert (=> b!5400116 (= e!3348288 (= lt!2201171 call!386453))))

(declare-fun b!5400117 () Bool)

(declare-fun res!2295619 () Bool)

(declare-fun e!3348284 () Bool)

(assert (=> b!5400117 (=> res!2295619 e!3348284)))

(assert (=> b!5400117 (= res!2295619 e!3348289)))

(declare-fun res!2295626 () Bool)

(assert (=> b!5400117 (=> (not res!2295626) (not e!3348289))))

(assert (=> b!5400117 (= res!2295626 lt!2201171)))

(declare-fun b!5400118 () Bool)

(assert (=> b!5400118 (= e!3348284 e!3348287)))

(declare-fun res!2295620 () Bool)

(assert (=> b!5400118 (=> (not res!2295620) (not e!3348287))))

(assert (=> b!5400118 (= res!2295620 (not lt!2201171))))

(declare-fun b!5400119 () Bool)

(declare-fun e!3348286 () Bool)

(assert (=> b!5400119 (= e!3348288 e!3348286)))

(declare-fun c!941185 () Bool)

(assert (=> b!5400119 (= c!941185 (is-EmptyLang!15164 r!7292))))

(declare-fun b!5400120 () Bool)

(assert (=> b!5400120 (= e!3348285 (not (= (head!11580 s!2326) (c!941036 r!7292))))))

(declare-fun bm!386448 () Bool)

(assert (=> bm!386448 (= call!386453 (isEmpty!33664 s!2326))))

(declare-fun b!5400113 () Bool)

(declare-fun res!2295621 () Bool)

(assert (=> b!5400113 (=> (not res!2295621) (not e!3348289))))

(assert (=> b!5400113 (= res!2295621 (isEmpty!33664 (tail!10677 s!2326)))))

(declare-fun d!1724912 () Bool)

(assert (=> d!1724912 e!3348288))

(declare-fun c!941183 () Bool)

(assert (=> d!1724912 (= c!941183 (is-EmptyExpr!15164 r!7292))))

(assert (=> d!1724912 (= lt!2201171 e!3348290)))

(declare-fun c!941184 () Bool)

(assert (=> d!1724912 (= c!941184 (isEmpty!33664 s!2326))))

(assert (=> d!1724912 (validRegex!6900 r!7292)))

(assert (=> d!1724912 (= (matchR!7349 r!7292 s!2326) lt!2201171)))

(declare-fun b!5400121 () Bool)

(declare-fun res!2295622 () Bool)

(assert (=> b!5400121 (=> res!2295622 e!3348284)))

(assert (=> b!5400121 (= res!2295622 (not (is-ElementMatch!15164 r!7292)))))

(assert (=> b!5400121 (= e!3348286 e!3348284)))

(declare-fun b!5400122 () Bool)

(assert (=> b!5400122 (= e!3348286 (not lt!2201171))))

(assert (= (and d!1724912 c!941184) b!5400115))

(assert (= (and d!1724912 (not c!941184)) b!5400114))

(assert (= (and d!1724912 c!941183) b!5400116))

(assert (= (and d!1724912 (not c!941183)) b!5400119))

(assert (= (and b!5400119 c!941185) b!5400122))

(assert (= (and b!5400119 (not c!941185)) b!5400121))

(assert (= (and b!5400121 (not res!2295622)) b!5400117))

(assert (= (and b!5400117 res!2295626) b!5400109))

(assert (= (and b!5400109 res!2295625) b!5400113))

(assert (= (and b!5400113 res!2295621) b!5400111))

(assert (= (and b!5400117 (not res!2295619)) b!5400118))

(assert (= (and b!5400118 res!2295620) b!5400112))

(assert (= (and b!5400112 (not res!2295623)) b!5400110))

(assert (= (and b!5400110 (not res!2295624)) b!5400120))

(assert (= (or b!5400116 b!5400109 b!5400112) bm!386448))

(assert (=> b!5400113 m!6424580))

(assert (=> b!5400113 m!6424580))

(assert (=> b!5400113 m!6424582))

(declare-fun m!6424816 () Bool)

(assert (=> b!5400115 m!6424816))

(assert (=> d!1724912 m!6424586))

(assert (=> d!1724912 m!6424158))

(assert (=> b!5400114 m!6424588))

(assert (=> b!5400114 m!6424588))

(declare-fun m!6424818 () Bool)

(assert (=> b!5400114 m!6424818))

(assert (=> b!5400114 m!6424580))

(assert (=> b!5400114 m!6424818))

(assert (=> b!5400114 m!6424580))

(declare-fun m!6424820 () Bool)

(assert (=> b!5400114 m!6424820))

(assert (=> b!5400110 m!6424580))

(assert (=> b!5400110 m!6424580))

(assert (=> b!5400110 m!6424582))

(assert (=> b!5400120 m!6424588))

(assert (=> b!5400111 m!6424588))

(assert (=> bm!386448 m!6424586))

(assert (=> b!5399498 d!1724912))

(declare-fun d!1724914 () Bool)

(assert (=> d!1724914 (= (matchR!7349 r!7292 s!2326) (matchRSpec!2267 r!7292 s!2326))))

(declare-fun lt!2201174 () Unit!154178)

(declare-fun choose!40676 (Regex!15164 List!61792) Unit!154178)

(assert (=> d!1724914 (= lt!2201174 (choose!40676 r!7292 s!2326))))

(assert (=> d!1724914 (validRegex!6900 r!7292)))

(assert (=> d!1724914 (= (mainMatchTheorem!2267 r!7292 s!2326) lt!2201174)))

(declare-fun bs!1248170 () Bool)

(assert (= bs!1248170 d!1724914))

(assert (=> bs!1248170 m!6424232))

(assert (=> bs!1248170 m!6424230))

(declare-fun m!6424822 () Bool)

(assert (=> bs!1248170 m!6424822))

(assert (=> bs!1248170 m!6424158))

(assert (=> b!5399498 d!1724914))

(assert (=> b!5399478 d!1724822))

(declare-fun d!1724916 () Bool)

(declare-fun dynLambda!24302 (Int Context!9096) Context!9096)

(assert (=> d!1724916 (= (map!14131 lt!2200929 lambda!281071) (set.insert (dynLambda!24302 lambda!281071 lt!2200882) (as set.empty (Set Context!9096))))))

(declare-fun lt!2201177 () Unit!154178)

(declare-fun choose!40677 ((Set Context!9096) Context!9096 Int) Unit!154178)

(assert (=> d!1724916 (= lt!2201177 (choose!40677 lt!2200929 lt!2200882 lambda!281071))))

(assert (=> d!1724916 (= lt!2200929 (set.insert lt!2200882 (as set.empty (Set Context!9096))))))

(assert (=> d!1724916 (= (lemmaMapOnSingletonSet!23 lt!2200929 lt!2200882 lambda!281071) lt!2201177)))

(declare-fun b_lambda!206437 () Bool)

(assert (=> (not b_lambda!206437) (not d!1724916)))

(declare-fun bs!1248171 () Bool)

(assert (= bs!1248171 d!1724916))

(declare-fun m!6424824 () Bool)

(assert (=> bs!1248171 m!6424824))

(declare-fun m!6424826 () Bool)

(assert (=> bs!1248171 m!6424826))

(assert (=> bs!1248171 m!6424118))

(assert (=> bs!1248171 m!6424824))

(assert (=> bs!1248171 m!6424208))

(declare-fun m!6424828 () Bool)

(assert (=> bs!1248171 m!6424828))

(assert (=> b!5399478 d!1724916))

(declare-fun bs!1248172 () Bool)

(declare-fun d!1724918 () Bool)

(assert (= bs!1248172 (and d!1724918 b!5399478)))

(declare-fun lambda!281137 () Int)

(assert (=> bs!1248172 (= (= (exprs!5048 lt!2200900) lt!2200896) (= lambda!281137 lambda!281071))))

(assert (=> d!1724918 true))

(assert (=> d!1724918 (= (appendTo!23 lt!2200929 lt!2200900) (map!14131 lt!2200929 lambda!281137))))

(declare-fun bs!1248173 () Bool)

(assert (= bs!1248173 d!1724918))

(declare-fun m!6424830 () Bool)

(assert (=> bs!1248173 m!6424830))

(assert (=> b!5399478 d!1724918))

(assert (=> b!5399478 d!1724838))

(declare-fun d!1724920 () Bool)

(declare-fun choose!40678 ((Set Context!9096) Int) (Set Context!9096))

(assert (=> d!1724920 (= (map!14131 lt!2200929 lambda!281071) (choose!40678 lt!2200929 lambda!281071))))

(declare-fun bs!1248174 () Bool)

(assert (= bs!1248174 d!1724920))

(declare-fun m!6424832 () Bool)

(assert (=> bs!1248174 m!6424832))

(assert (=> b!5399478 d!1724920))

(declare-fun bs!1248175 () Bool)

(declare-fun d!1724922 () Bool)

(assert (= bs!1248175 (and d!1724922 d!1724836)))

(declare-fun lambda!281138 () Int)

(assert (=> bs!1248175 (= lambda!281138 lambda!281111)))

(declare-fun bs!1248176 () Bool)

(assert (= bs!1248176 (and d!1724922 d!1724904)))

(assert (=> bs!1248176 (= lambda!281138 lambda!281126)))

(declare-fun bs!1248177 () Bool)

(assert (= bs!1248177 (and d!1724922 b!5399478)))

(assert (=> bs!1248177 (= lambda!281138 lambda!281072)))

(declare-fun bs!1248178 () Bool)

(assert (= bs!1248178 (and d!1724922 d!1724866)))

(assert (=> bs!1248178 (= lambda!281138 lambda!281114)))

(declare-fun bs!1248179 () Bool)

(assert (= bs!1248179 (and d!1724922 d!1724872)))

(assert (=> bs!1248179 (= lambda!281138 lambda!281117)))

(declare-fun bs!1248180 () Bool)

(assert (= bs!1248180 (and d!1724922 d!1724902)))

(assert (=> bs!1248180 (= lambda!281138 lambda!281123)))

(assert (=> d!1724922 (= (inv!81158 setElem!35132) (forall!14524 (exprs!5048 setElem!35132) lambda!281138))))

(declare-fun bs!1248181 () Bool)

(assert (= bs!1248181 d!1724922))

(declare-fun m!6424834 () Bool)

(assert (=> bs!1248181 m!6424834))

(assert (=> setNonEmpty!35132 d!1724922))

(declare-fun e!3348293 () Bool)

(declare-fun d!1724924 () Bool)

(assert (=> d!1724924 (= (matchZipper!1408 (set.union lt!2200920 lt!2200926) (t!375015 s!2326)) e!3348293)))

(declare-fun res!2295629 () Bool)

(assert (=> d!1724924 (=> res!2295629 e!3348293)))

(assert (=> d!1724924 (= res!2295629 (matchZipper!1408 lt!2200920 (t!375015 s!2326)))))

(declare-fun lt!2201182 () Unit!154178)

(declare-fun choose!40679 ((Set Context!9096) (Set Context!9096) List!61792) Unit!154178)

(assert (=> d!1724924 (= lt!2201182 (choose!40679 lt!2200920 lt!2200926 (t!375015 s!2326)))))

(assert (=> d!1724924 (= (lemmaZipperConcatMatchesSameAsBothZippers!401 lt!2200920 lt!2200926 (t!375015 s!2326)) lt!2201182)))

(declare-fun b!5400127 () Bool)

(assert (=> b!5400127 (= e!3348293 (matchZipper!1408 lt!2200926 (t!375015 s!2326)))))

(assert (= (and d!1724924 (not res!2295629)) b!5400127))

(assert (=> d!1724924 m!6424228))

(assert (=> d!1724924 m!6424160))

(declare-fun m!6424836 () Bool)

(assert (=> d!1724924 m!6424836))

(assert (=> b!5400127 m!6424114))

(assert (=> b!5399479 d!1724924))

(assert (=> b!5399479 d!1724878))

(declare-fun d!1724928 () Bool)

(declare-fun c!941187 () Bool)

(assert (=> d!1724928 (= c!941187 (isEmpty!33664 (t!375015 s!2326)))))

(declare-fun e!3348294 () Bool)

(assert (=> d!1724928 (= (matchZipper!1408 (set.union lt!2200920 lt!2200926) (t!375015 s!2326)) e!3348294)))

(declare-fun b!5400128 () Bool)

(assert (=> b!5400128 (= e!3348294 (nullableZipper!1431 (set.union lt!2200920 lt!2200926)))))

(declare-fun b!5400129 () Bool)

(assert (=> b!5400129 (= e!3348294 (matchZipper!1408 (derivationStepZipper!1403 (set.union lt!2200920 lt!2200926) (head!11580 (t!375015 s!2326))) (tail!10677 (t!375015 s!2326))))))

(assert (= (and d!1724928 c!941187) b!5400128))

(assert (= (and d!1724928 (not c!941187)) b!5400129))

(assert (=> d!1724928 m!6424472))

(declare-fun m!6424838 () Bool)

(assert (=> b!5400128 m!6424838))

(assert (=> b!5400129 m!6424476))

(assert (=> b!5400129 m!6424476))

(declare-fun m!6424840 () Bool)

(assert (=> b!5400129 m!6424840))

(assert (=> b!5400129 m!6424480))

(assert (=> b!5400129 m!6424840))

(assert (=> b!5400129 m!6424480))

(declare-fun m!6424842 () Bool)

(assert (=> b!5400129 m!6424842))

(assert (=> b!5399479 d!1724928))

(declare-fun bs!1248182 () Bool)

(declare-fun b!5400137 () Bool)

(assert (= bs!1248182 (and b!5400137 b!5399483)))

(declare-fun lambda!281139 () Int)

(assert (=> bs!1248182 (not (= lambda!281139 lambda!281068))))

(assert (=> bs!1248182 (not (= lambda!281139 lambda!281069))))

(declare-fun bs!1248183 () Bool)

(assert (= bs!1248183 (and b!5400137 d!1724812)))

(assert (=> bs!1248183 (not (= lambda!281139 lambda!281108))))

(declare-fun bs!1248184 () Bool)

(assert (= bs!1248184 (and b!5400137 b!5400099)))

(assert (=> bs!1248184 (not (= lambda!281139 lambda!281132))))

(declare-fun bs!1248185 () Bool)

(assert (= bs!1248185 (and b!5400137 b!5400105)))

(assert (=> bs!1248185 (= (and (= (reg!15493 lt!2200892) (reg!15493 r!7292)) (= lt!2200892 r!7292)) (= lambda!281139 lambda!281131))))

(declare-fun bs!1248186 () Bool)

(assert (= bs!1248186 (and b!5400137 d!1724810)))

(assert (=> bs!1248186 (not (= lambda!281139 lambda!281102))))

(assert (=> bs!1248183 (not (= lambda!281139 lambda!281107))))

(assert (=> b!5400137 true))

(assert (=> b!5400137 true))

(declare-fun bs!1248187 () Bool)

(declare-fun b!5400131 () Bool)

(assert (= bs!1248187 (and b!5400131 b!5399483)))

(declare-fun lambda!281140 () Int)

(assert (=> bs!1248187 (not (= lambda!281140 lambda!281068))))

(assert (=> bs!1248187 (= (and (= (regOne!30840 lt!2200892) (regOne!30840 r!7292)) (= (regTwo!30840 lt!2200892) (regTwo!30840 r!7292))) (= lambda!281140 lambda!281069))))

(declare-fun bs!1248188 () Bool)

(assert (= bs!1248188 (and b!5400131 b!5400137)))

(assert (=> bs!1248188 (not (= lambda!281140 lambda!281139))))

(declare-fun bs!1248189 () Bool)

(assert (= bs!1248189 (and b!5400131 d!1724812)))

(assert (=> bs!1248189 (= (and (= (regOne!30840 lt!2200892) (regOne!30840 r!7292)) (= (regTwo!30840 lt!2200892) (regTwo!30840 r!7292))) (= lambda!281140 lambda!281108))))

(declare-fun bs!1248190 () Bool)

(assert (= bs!1248190 (and b!5400131 b!5400099)))

(assert (=> bs!1248190 (= (and (= (regOne!30840 lt!2200892) (regOne!30840 r!7292)) (= (regTwo!30840 lt!2200892) (regTwo!30840 r!7292))) (= lambda!281140 lambda!281132))))

(declare-fun bs!1248191 () Bool)

(assert (= bs!1248191 (and b!5400131 b!5400105)))

(assert (=> bs!1248191 (not (= lambda!281140 lambda!281131))))

(declare-fun bs!1248192 () Bool)

(assert (= bs!1248192 (and b!5400131 d!1724810)))

(assert (=> bs!1248192 (not (= lambda!281140 lambda!281102))))

(assert (=> bs!1248189 (not (= lambda!281140 lambda!281107))))

(assert (=> b!5400131 true))

(assert (=> b!5400131 true))

(declare-fun b!5400130 () Bool)

(declare-fun res!2295631 () Bool)

(declare-fun e!3348297 () Bool)

(assert (=> b!5400130 (=> res!2295631 e!3348297)))

(declare-fun call!386454 () Bool)

(assert (=> b!5400130 (= res!2295631 call!386454)))

(declare-fun e!3348301 () Bool)

(assert (=> b!5400130 (= e!3348301 e!3348297)))

(declare-fun call!386455 () Bool)

(assert (=> b!5400131 (= e!3348301 call!386455)))

(declare-fun b!5400132 () Bool)

(declare-fun e!3348296 () Bool)

(declare-fun e!3348299 () Bool)

(assert (=> b!5400132 (= e!3348296 e!3348299)))

(declare-fun res!2295632 () Bool)

(assert (=> b!5400132 (= res!2295632 (matchRSpec!2267 (regOne!30841 lt!2200892) s!2326))))

(assert (=> b!5400132 (=> res!2295632 e!3348299)))

(declare-fun b!5400133 () Bool)

(declare-fun c!941189 () Bool)

(assert (=> b!5400133 (= c!941189 (is-ElementMatch!15164 lt!2200892))))

(declare-fun e!3348295 () Bool)

(declare-fun e!3348298 () Bool)

(assert (=> b!5400133 (= e!3348295 e!3348298)))

(declare-fun d!1724930 () Bool)

(declare-fun c!941190 () Bool)

(assert (=> d!1724930 (= c!941190 (is-EmptyExpr!15164 lt!2200892))))

(declare-fun e!3348300 () Bool)

(assert (=> d!1724930 (= (matchRSpec!2267 lt!2200892 s!2326) e!3348300)))

(declare-fun b!5400134 () Bool)

(assert (=> b!5400134 (= e!3348298 (= s!2326 (Cons!61668 (c!941036 lt!2200892) Nil!61668)))))

(declare-fun b!5400135 () Bool)

(assert (=> b!5400135 (= e!3348300 call!386454)))

(declare-fun b!5400136 () Bool)

(declare-fun c!941188 () Bool)

(assert (=> b!5400136 (= c!941188 (is-Union!15164 lt!2200892))))

(assert (=> b!5400136 (= e!3348298 e!3348296)))

(assert (=> b!5400137 (= e!3348297 call!386455)))

(declare-fun c!941191 () Bool)

(declare-fun bm!386449 () Bool)

(assert (=> bm!386449 (= call!386455 (Exists!2345 (ite c!941191 lambda!281139 lambda!281140)))))

(declare-fun b!5400138 () Bool)

(assert (=> b!5400138 (= e!3348299 (matchRSpec!2267 (regTwo!30841 lt!2200892) s!2326))))

(declare-fun b!5400139 () Bool)

(assert (=> b!5400139 (= e!3348300 e!3348295)))

(declare-fun res!2295630 () Bool)

(assert (=> b!5400139 (= res!2295630 (not (is-EmptyLang!15164 lt!2200892)))))

(assert (=> b!5400139 (=> (not res!2295630) (not e!3348295))))

(declare-fun b!5400140 () Bool)

(assert (=> b!5400140 (= e!3348296 e!3348301)))

(assert (=> b!5400140 (= c!941191 (is-Star!15164 lt!2200892))))

(declare-fun bm!386450 () Bool)

(assert (=> bm!386450 (= call!386454 (isEmpty!33664 s!2326))))

(assert (= (and d!1724930 c!941190) b!5400135))

(assert (= (and d!1724930 (not c!941190)) b!5400139))

(assert (= (and b!5400139 res!2295630) b!5400133))

(assert (= (and b!5400133 c!941189) b!5400134))

(assert (= (and b!5400133 (not c!941189)) b!5400136))

(assert (= (and b!5400136 c!941188) b!5400132))

(assert (= (and b!5400136 (not c!941188)) b!5400140))

(assert (= (and b!5400132 (not res!2295632)) b!5400138))

(assert (= (and b!5400140 c!941191) b!5400130))

(assert (= (and b!5400140 (not c!941191)) b!5400131))

(assert (= (and b!5400130 (not res!2295631)) b!5400137))

(assert (= (or b!5400137 b!5400131) bm!386449))

(assert (= (or b!5400135 b!5400130) bm!386450))

(declare-fun m!6424844 () Bool)

(assert (=> b!5400132 m!6424844))

(declare-fun m!6424846 () Bool)

(assert (=> bm!386449 m!6424846))

(declare-fun m!6424848 () Bool)

(assert (=> b!5400138 m!6424848))

(assert (=> bm!386450 m!6424586))

(assert (=> b!5399500 d!1724930))

(declare-fun b!5400141 () Bool)

(declare-fun res!2295639 () Bool)

(declare-fun e!3348307 () Bool)

(assert (=> b!5400141 (=> (not res!2295639) (not e!3348307))))

(declare-fun call!386456 () Bool)

(assert (=> b!5400141 (= res!2295639 (not call!386456))))

(declare-fun b!5400142 () Bool)

(declare-fun res!2295638 () Bool)

(declare-fun e!3348303 () Bool)

(assert (=> b!5400142 (=> res!2295638 e!3348303)))

(assert (=> b!5400142 (= res!2295638 (not (isEmpty!33664 (tail!10677 s!2326))))))

(declare-fun b!5400143 () Bool)

(assert (=> b!5400143 (= e!3348307 (= (head!11580 s!2326) (c!941036 lt!2200892)))))

(declare-fun b!5400144 () Bool)

(declare-fun e!3348305 () Bool)

(assert (=> b!5400144 (= e!3348305 e!3348303)))

(declare-fun res!2295637 () Bool)

(assert (=> b!5400144 (=> res!2295637 e!3348303)))

(assert (=> b!5400144 (= res!2295637 call!386456)))

(declare-fun b!5400146 () Bool)

(declare-fun e!3348308 () Bool)

(assert (=> b!5400146 (= e!3348308 (matchR!7349 (derivativeStep!4252 lt!2200892 (head!11580 s!2326)) (tail!10677 s!2326)))))

(declare-fun b!5400147 () Bool)

(assert (=> b!5400147 (= e!3348308 (nullable!5333 lt!2200892))))

(declare-fun b!5400148 () Bool)

(declare-fun e!3348306 () Bool)

(declare-fun lt!2201183 () Bool)

(assert (=> b!5400148 (= e!3348306 (= lt!2201183 call!386456))))

(declare-fun b!5400149 () Bool)

(declare-fun res!2295633 () Bool)

(declare-fun e!3348302 () Bool)

(assert (=> b!5400149 (=> res!2295633 e!3348302)))

(assert (=> b!5400149 (= res!2295633 e!3348307)))

(declare-fun res!2295640 () Bool)

(assert (=> b!5400149 (=> (not res!2295640) (not e!3348307))))

(assert (=> b!5400149 (= res!2295640 lt!2201183)))

(declare-fun b!5400150 () Bool)

(assert (=> b!5400150 (= e!3348302 e!3348305)))

(declare-fun res!2295634 () Bool)

(assert (=> b!5400150 (=> (not res!2295634) (not e!3348305))))

(assert (=> b!5400150 (= res!2295634 (not lt!2201183))))

(declare-fun b!5400151 () Bool)

(declare-fun e!3348304 () Bool)

(assert (=> b!5400151 (= e!3348306 e!3348304)))

(declare-fun c!941194 () Bool)

(assert (=> b!5400151 (= c!941194 (is-EmptyLang!15164 lt!2200892))))

(declare-fun b!5400152 () Bool)

(assert (=> b!5400152 (= e!3348303 (not (= (head!11580 s!2326) (c!941036 lt!2200892))))))

(declare-fun bm!386451 () Bool)

(assert (=> bm!386451 (= call!386456 (isEmpty!33664 s!2326))))

(declare-fun b!5400145 () Bool)

(declare-fun res!2295635 () Bool)

(assert (=> b!5400145 (=> (not res!2295635) (not e!3348307))))

(assert (=> b!5400145 (= res!2295635 (isEmpty!33664 (tail!10677 s!2326)))))

(declare-fun d!1724932 () Bool)

(assert (=> d!1724932 e!3348306))

(declare-fun c!941192 () Bool)

(assert (=> d!1724932 (= c!941192 (is-EmptyExpr!15164 lt!2200892))))

(assert (=> d!1724932 (= lt!2201183 e!3348308)))

(declare-fun c!941193 () Bool)

(assert (=> d!1724932 (= c!941193 (isEmpty!33664 s!2326))))

(assert (=> d!1724932 (validRegex!6900 lt!2200892)))

(assert (=> d!1724932 (= (matchR!7349 lt!2200892 s!2326) lt!2201183)))

(declare-fun b!5400153 () Bool)

(declare-fun res!2295636 () Bool)

(assert (=> b!5400153 (=> res!2295636 e!3348302)))

(assert (=> b!5400153 (= res!2295636 (not (is-ElementMatch!15164 lt!2200892)))))

(assert (=> b!5400153 (= e!3348304 e!3348302)))

(declare-fun b!5400154 () Bool)

(assert (=> b!5400154 (= e!3348304 (not lt!2201183))))

(assert (= (and d!1724932 c!941193) b!5400147))

(assert (= (and d!1724932 (not c!941193)) b!5400146))

(assert (= (and d!1724932 c!941192) b!5400148))

(assert (= (and d!1724932 (not c!941192)) b!5400151))

(assert (= (and b!5400151 c!941194) b!5400154))

(assert (= (and b!5400151 (not c!941194)) b!5400153))

(assert (= (and b!5400153 (not res!2295636)) b!5400149))

(assert (= (and b!5400149 res!2295640) b!5400141))

(assert (= (and b!5400141 res!2295639) b!5400145))

(assert (= (and b!5400145 res!2295635) b!5400143))

(assert (= (and b!5400149 (not res!2295633)) b!5400150))

(assert (= (and b!5400150 res!2295634) b!5400144))

(assert (= (and b!5400144 (not res!2295637)) b!5400142))

(assert (= (and b!5400142 (not res!2295638)) b!5400152))

(assert (= (or b!5400148 b!5400141 b!5400144) bm!386451))

(assert (=> b!5400145 m!6424580))

(assert (=> b!5400145 m!6424580))

(assert (=> b!5400145 m!6424582))

(assert (=> b!5400147 m!6424522))

(assert (=> d!1724932 m!6424586))

(assert (=> d!1724932 m!6424526))

(assert (=> b!5400146 m!6424588))

(assert (=> b!5400146 m!6424588))

(declare-fun m!6424850 () Bool)

(assert (=> b!5400146 m!6424850))

(assert (=> b!5400146 m!6424580))

(assert (=> b!5400146 m!6424850))

(assert (=> b!5400146 m!6424580))

(declare-fun m!6424852 () Bool)

(assert (=> b!5400146 m!6424852))

(assert (=> b!5400142 m!6424580))

(assert (=> b!5400142 m!6424580))

(assert (=> b!5400142 m!6424582))

(assert (=> b!5400152 m!6424588))

(assert (=> b!5400143 m!6424588))

(assert (=> bm!386451 m!6424586))

(assert (=> b!5399500 d!1724932))

(declare-fun d!1724934 () Bool)

(assert (=> d!1724934 (= (matchR!7349 lt!2200892 s!2326) (matchRSpec!2267 lt!2200892 s!2326))))

(declare-fun lt!2201184 () Unit!154178)

(assert (=> d!1724934 (= lt!2201184 (choose!40676 lt!2200892 s!2326))))

(assert (=> d!1724934 (validRegex!6900 lt!2200892)))

(assert (=> d!1724934 (= (mainMatchTheorem!2267 lt!2200892 s!2326) lt!2201184)))

(declare-fun bs!1248193 () Bool)

(assert (= bs!1248193 d!1724934))

(assert (=> bs!1248193 m!6424178))

(assert (=> bs!1248193 m!6424176))

(declare-fun m!6424854 () Bool)

(assert (=> bs!1248193 m!6424854))

(assert (=> bs!1248193 m!6424526))

(assert (=> b!5399500 d!1724934))

(declare-fun b!5400163 () Bool)

(declare-fun e!3348313 () Bool)

(declare-fun tp!1494200 () Bool)

(assert (=> b!5400163 (= e!3348313 (and tp_is_empty!39581 tp!1494200))))

(assert (=> b!5399507 (= tp!1494165 e!3348313)))

(assert (= (and b!5399507 (is-Cons!61668 (t!375015 s!2326))) b!5400163))

(declare-fun b!5400168 () Bool)

(declare-fun e!3348316 () Bool)

(declare-fun tp!1494205 () Bool)

(declare-fun tp!1494206 () Bool)

(assert (=> b!5400168 (= e!3348316 (and tp!1494205 tp!1494206))))

(assert (=> b!5399477 (= tp!1494163 e!3348316)))

(assert (= (and b!5399477 (is-Cons!61667 (exprs!5048 setElem!35132))) b!5400168))

(declare-fun e!3348319 () Bool)

(assert (=> b!5399468 (= tp!1494160 e!3348319)))

(declare-fun b!5400179 () Bool)

(assert (=> b!5400179 (= e!3348319 tp_is_empty!39581)))

(declare-fun b!5400180 () Bool)

(declare-fun tp!1494218 () Bool)

(declare-fun tp!1494219 () Bool)

(assert (=> b!5400180 (= e!3348319 (and tp!1494218 tp!1494219))))

(declare-fun b!5400181 () Bool)

(declare-fun tp!1494221 () Bool)

(assert (=> b!5400181 (= e!3348319 tp!1494221)))

(declare-fun b!5400182 () Bool)

(declare-fun tp!1494220 () Bool)

(declare-fun tp!1494217 () Bool)

(assert (=> b!5400182 (= e!3348319 (and tp!1494220 tp!1494217))))

(assert (= (and b!5399468 (is-ElementMatch!15164 (regOne!30841 r!7292))) b!5400179))

(assert (= (and b!5399468 (is-Concat!24009 (regOne!30841 r!7292))) b!5400180))

(assert (= (and b!5399468 (is-Star!15164 (regOne!30841 r!7292))) b!5400181))

(assert (= (and b!5399468 (is-Union!15164 (regOne!30841 r!7292))) b!5400182))

(declare-fun e!3348320 () Bool)

(assert (=> b!5399468 (= tp!1494159 e!3348320)))

(declare-fun b!5400183 () Bool)

(assert (=> b!5400183 (= e!3348320 tp_is_empty!39581)))

(declare-fun b!5400184 () Bool)

(declare-fun tp!1494223 () Bool)

(declare-fun tp!1494224 () Bool)

(assert (=> b!5400184 (= e!3348320 (and tp!1494223 tp!1494224))))

(declare-fun b!5400185 () Bool)

(declare-fun tp!1494226 () Bool)

(assert (=> b!5400185 (= e!3348320 tp!1494226)))

(declare-fun b!5400186 () Bool)

(declare-fun tp!1494225 () Bool)

(declare-fun tp!1494222 () Bool)

(assert (=> b!5400186 (= e!3348320 (and tp!1494225 tp!1494222))))

(assert (= (and b!5399468 (is-ElementMatch!15164 (regTwo!30841 r!7292))) b!5400183))

(assert (= (and b!5399468 (is-Concat!24009 (regTwo!30841 r!7292))) b!5400184))

(assert (= (and b!5399468 (is-Star!15164 (regTwo!30841 r!7292))) b!5400185))

(assert (= (and b!5399468 (is-Union!15164 (regTwo!30841 r!7292))) b!5400186))

(declare-fun b!5400196 () Bool)

(declare-fun e!3348327 () Bool)

(declare-fun tp!1494231 () Bool)

(assert (=> b!5400196 (= e!3348327 tp!1494231)))

(declare-fun tp!1494232 () Bool)

(declare-fun e!3348326 () Bool)

(declare-fun b!5400195 () Bool)

(assert (=> b!5400195 (= e!3348326 (and (inv!81158 (h!68117 (t!375016 zl!343))) e!3348327 tp!1494232))))

(assert (=> b!5399489 (= tp!1494162 e!3348326)))

(assert (= b!5400195 b!5400196))

(assert (= (and b!5399489 (is-Cons!61669 (t!375016 zl!343))) b!5400195))

(declare-fun m!6424862 () Bool)

(assert (=> b!5400195 m!6424862))

(declare-fun condSetEmpty!35138 () Bool)

(assert (=> setNonEmpty!35132 (= condSetEmpty!35138 (= setRest!35132 (as set.empty (Set Context!9096))))))

(declare-fun setRes!35138 () Bool)

(assert (=> setNonEmpty!35132 (= tp!1494166 setRes!35138)))

(declare-fun setIsEmpty!35138 () Bool)

(assert (=> setIsEmpty!35138 setRes!35138))

(declare-fun setElem!35138 () Context!9096)

(declare-fun tp!1494237 () Bool)

(declare-fun e!3348330 () Bool)

(declare-fun setNonEmpty!35138 () Bool)

(assert (=> setNonEmpty!35138 (= setRes!35138 (and tp!1494237 (inv!81158 setElem!35138) e!3348330))))

(declare-fun setRest!35138 () (Set Context!9096))

(assert (=> setNonEmpty!35138 (= setRest!35132 (set.union (set.insert setElem!35138 (as set.empty (Set Context!9096))) setRest!35138))))

(declare-fun b!5400201 () Bool)

(declare-fun tp!1494238 () Bool)

(assert (=> b!5400201 (= e!3348330 tp!1494238)))

(assert (= (and setNonEmpty!35132 condSetEmpty!35138) setIsEmpty!35138))

(assert (= (and setNonEmpty!35132 (not condSetEmpty!35138)) setNonEmpty!35138))

(assert (= setNonEmpty!35138 b!5400201))

(declare-fun m!6424870 () Bool)

(assert (=> setNonEmpty!35138 m!6424870))

(declare-fun e!3348331 () Bool)

(assert (=> b!5399469 (= tp!1494164 e!3348331)))

(declare-fun b!5400202 () Bool)

(assert (=> b!5400202 (= e!3348331 tp_is_empty!39581)))

(declare-fun b!5400203 () Bool)

(declare-fun tp!1494240 () Bool)

(declare-fun tp!1494241 () Bool)

(assert (=> b!5400203 (= e!3348331 (and tp!1494240 tp!1494241))))

(declare-fun b!5400204 () Bool)

(declare-fun tp!1494243 () Bool)

(assert (=> b!5400204 (= e!3348331 tp!1494243)))

(declare-fun b!5400205 () Bool)

(declare-fun tp!1494242 () Bool)

(declare-fun tp!1494239 () Bool)

(assert (=> b!5400205 (= e!3348331 (and tp!1494242 tp!1494239))))

(assert (= (and b!5399469 (is-ElementMatch!15164 (reg!15493 r!7292))) b!5400202))

(assert (= (and b!5399469 (is-Concat!24009 (reg!15493 r!7292))) b!5400203))

(assert (= (and b!5399469 (is-Star!15164 (reg!15493 r!7292))) b!5400204))

(assert (= (and b!5399469 (is-Union!15164 (reg!15493 r!7292))) b!5400205))

(declare-fun e!3348332 () Bool)

(assert (=> b!5399506 (= tp!1494167 e!3348332)))

(declare-fun b!5400206 () Bool)

(assert (=> b!5400206 (= e!3348332 tp_is_empty!39581)))

(declare-fun b!5400207 () Bool)

(declare-fun tp!1494245 () Bool)

(declare-fun tp!1494246 () Bool)

(assert (=> b!5400207 (= e!3348332 (and tp!1494245 tp!1494246))))

(declare-fun b!5400208 () Bool)

(declare-fun tp!1494248 () Bool)

(assert (=> b!5400208 (= e!3348332 tp!1494248)))

(declare-fun b!5400209 () Bool)

(declare-fun tp!1494247 () Bool)

(declare-fun tp!1494244 () Bool)

(assert (=> b!5400209 (= e!3348332 (and tp!1494247 tp!1494244))))

(assert (= (and b!5399506 (is-ElementMatch!15164 (regOne!30840 r!7292))) b!5400206))

(assert (= (and b!5399506 (is-Concat!24009 (regOne!30840 r!7292))) b!5400207))

(assert (= (and b!5399506 (is-Star!15164 (regOne!30840 r!7292))) b!5400208))

(assert (= (and b!5399506 (is-Union!15164 (regOne!30840 r!7292))) b!5400209))

(declare-fun e!3348333 () Bool)

(assert (=> b!5399506 (= tp!1494161 e!3348333)))

(declare-fun b!5400210 () Bool)

(assert (=> b!5400210 (= e!3348333 tp_is_empty!39581)))

(declare-fun b!5400211 () Bool)

(declare-fun tp!1494250 () Bool)

(declare-fun tp!1494251 () Bool)

(assert (=> b!5400211 (= e!3348333 (and tp!1494250 tp!1494251))))

(declare-fun b!5400212 () Bool)

(declare-fun tp!1494253 () Bool)

(assert (=> b!5400212 (= e!3348333 tp!1494253)))

(declare-fun b!5400213 () Bool)

(declare-fun tp!1494252 () Bool)

(declare-fun tp!1494249 () Bool)

(assert (=> b!5400213 (= e!3348333 (and tp!1494252 tp!1494249))))

(assert (= (and b!5399506 (is-ElementMatch!15164 (regTwo!30840 r!7292))) b!5400210))

(assert (= (and b!5399506 (is-Concat!24009 (regTwo!30840 r!7292))) b!5400211))

(assert (= (and b!5399506 (is-Star!15164 (regTwo!30840 r!7292))) b!5400212))

(assert (= (and b!5399506 (is-Union!15164 (regTwo!30840 r!7292))) b!5400213))

(declare-fun b!5400214 () Bool)

(declare-fun e!3348334 () Bool)

(declare-fun tp!1494254 () Bool)

(declare-fun tp!1494255 () Bool)

(assert (=> b!5400214 (= e!3348334 (and tp!1494254 tp!1494255))))

(assert (=> b!5399501 (= tp!1494158 e!3348334)))

(assert (= (and b!5399501 (is-Cons!61667 (exprs!5048 (h!68117 zl!343)))) b!5400214))

(declare-fun b_lambda!206439 () Bool)

(assert (= b_lambda!206437 (or b!5399478 b_lambda!206439)))

(declare-fun bs!1248194 () Bool)

(declare-fun d!1724938 () Bool)

(assert (= bs!1248194 (and d!1724938 b!5399478)))

(declare-fun lt!2201185 () Unit!154178)

(assert (=> bs!1248194 (= lt!2201185 (lemmaConcatPreservesForall!189 (exprs!5048 lt!2200882) lt!2200896 lambda!281072))))

(assert (=> bs!1248194 (= (dynLambda!24302 lambda!281071 lt!2200882) (Context!9097 (++!13502 (exprs!5048 lt!2200882) lt!2200896)))))

(declare-fun m!6424872 () Bool)

(assert (=> bs!1248194 m!6424872))

(declare-fun m!6424874 () Bool)

(assert (=> bs!1248194 m!6424874))

(assert (=> d!1724916 d!1724938))

(declare-fun b_lambda!206441 () Bool)

(assert (= b_lambda!206435 (or b!5399488 b_lambda!206441)))

(declare-fun bs!1248195 () Bool)

(declare-fun d!1724940 () Bool)

(assert (= bs!1248195 (and d!1724940 b!5399488)))

(assert (=> bs!1248195 (= (dynLambda!24301 lambda!281070 lt!2200924) (derivationStepZipperUp!536 lt!2200924 (h!68116 s!2326)))))

(assert (=> bs!1248195 m!6424148))

(assert (=> d!1724898 d!1724940))

(declare-fun b_lambda!206443 () Bool)

(assert (= b_lambda!206431 (or b!5399488 b_lambda!206443)))

(declare-fun bs!1248196 () Bool)

(declare-fun d!1724942 () Bool)

(assert (= bs!1248196 (and d!1724942 b!5399488)))

(assert (=> bs!1248196 (= (dynLambda!24301 lambda!281070 lt!2200882) (derivationStepZipperUp!536 lt!2200882 (h!68116 s!2326)))))

(assert (=> bs!1248196 m!6424202))

(assert (=> d!1724800 d!1724942))

(declare-fun b_lambda!206445 () Bool)

(assert (= b_lambda!206433 (or b!5399488 b_lambda!206445)))

(declare-fun bs!1248197 () Bool)

(declare-fun d!1724944 () Bool)

(assert (= bs!1248197 (and d!1724944 b!5399488)))

(assert (=> bs!1248197 (= (dynLambda!24301 lambda!281070 (h!68117 zl!343)) (derivationStepZipperUp!536 (h!68117 zl!343) (h!68116 s!2326)))))

(assert (=> bs!1248197 m!6424128))

(assert (=> d!1724852 d!1724944))

(declare-fun b_lambda!206447 () Bool)

(assert (= b_lambda!206429 (or b!5399488 b_lambda!206447)))

(declare-fun bs!1248198 () Bool)

(declare-fun d!1724946 () Bool)

(assert (= bs!1248198 (and d!1724946 b!5399488)))

(assert (=> bs!1248198 (= (dynLambda!24301 lambda!281070 lt!2200900) (derivationStepZipperUp!536 lt!2200900 (h!68116 s!2326)))))

(assert (=> bs!1248198 m!6424198))

(assert (=> d!1724794 d!1724946))

(push 1)

(assert (not bm!386446))

(assert (not d!1724808))

(assert (not b!5399974))

(assert (not b!5399715))

(assert (not b!5399931))

(assert (not b!5399844))

(assert (not b!5399768))

(assert (not b!5399907))

(assert (not d!1724866))

(assert (not b!5400138))

(assert (not b!5399921))

(assert (not b!5400115))

(assert (not b!5399912))

(assert (not bm!386448))

(assert (not b!5400205))

(assert (not b!5399834))

(assert (not bm!386440))

(assert (not b_lambda!206445))

(assert (not bm!386436))

(assert (not bs!1248194))

(assert (not d!1724892))

(assert (not b!5399690))

(assert (not bm!386434))

(assert (not b!5399835))

(assert (not b_lambda!206439))

(assert (not d!1724824))

(assert (not d!1724854))

(assert (not b!5400010))

(assert (not b!5400064))

(assert (not b!5399916))

(assert (not d!1724830))

(assert (not b!5400211))

(assert (not bm!386395))

(assert (not d!1724848))

(assert (not b!5400207))

(assert (not b!5400214))

(assert (not b!5399979))

(assert (not d!1724806))

(assert (not d!1724894))

(assert (not b!5400053))

(assert (not d!1724842))

(assert (not d!1724922))

(assert (not b!5399868))

(assert (not b!5400049))

(assert (not b!5400111))

(assert (not b!5399967))

(assert (not b!5400145))

(assert (not d!1724912))

(assert (not b!5399686))

(assert (not b!5400143))

(assert (not b!5399976))

(assert (not b!5399807))

(assert (not d!1724834))

(assert (not b!5400213))

(assert (not bm!386424))

(assert (not b!5399830))

(assert (not b!5399755))

(assert (not b!5400048))

(assert (not b!5399845))

(assert (not b!5400209))

(assert (not b!5399917))

(assert (not b!5400110))

(assert (not b!5399815))

(assert (not b!5399966))

(assert (not b!5400184))

(assert (not b!5399833))

(assert (not d!1724868))

(assert (not d!1724826))

(assert (not b!5399862))

(assert (not b!5399772))

(assert (not b!5399735))

(assert (not b!5399806))

(assert (not b!5400182))

(assert (not b!5399975))

(assert (not d!1724838))

(assert (not b!5400014))

(assert (not b!5400181))

(assert (not b!5400142))

(assert (not b!5400203))

(assert (not bm!386425))

(assert (not d!1724878))

(assert (not bm!386441))

(assert (not d!1724850))

(assert (not d!1724920))

(assert (not b!5399803))

(assert (not d!1724856))

(assert (not bs!1248198))

(assert (not d!1724802))

(assert (not bs!1248196))

(assert (not bm!386439))

(assert (not bm!386430))

(assert (not d!1724916))

(assert (not b!5400063))

(assert (not d!1724822))

(assert (not b!5399858))

(assert (not bm!386409))

(assert (not b!5399859))

(assert (not bm!386431))

(assert (not b!5400113))

(assert (not b!5400022))

(assert (not b!5400051))

(assert (not d!1724880))

(assert (not d!1724886))

(assert (not b!5400180))

(assert (not b!5400017))

(assert (not b!5399827))

(assert (not setNonEmpty!35138))

(assert (not b!5399968))

(assert (not b!5399712))

(assert (not b!5399849))

(assert (not b!5399718))

(assert (not b!5399769))

(assert (not b!5399831))

(assert (not b!5400065))

(assert (not d!1724794))

(assert (not b!5400146))

(assert (not b!5400015))

(assert (not bm!386451))

(assert (not b!5400212))

(assert (not b!5400208))

(assert (not d!1724918))

(assert (not d!1724792))

(assert (not b!5400204))

(assert (not b!5400114))

(assert (not b!5400186))

(assert (not bm!386433))

(assert (not b!5400052))

(assert (not d!1724914))

(assert (not bm!386449))

(assert (not b!5400120))

(assert (not d!1724900))

(assert (not bm!386450))

(assert (not bm!386394))

(assert (not bm!386427))

(assert (not b!5399805))

(assert (not b!5399969))

(assert (not b!5399990))

(assert (not b!5399711))

(assert (not b!5400129))

(assert (not b!5399736))

(assert (not b!5400055))

(assert tp_is_empty!39581)

(assert (not d!1724898))

(assert (not d!1724888))

(assert (not b!5400100))

(assert (not d!1724810))

(assert (not b!5399685))

(assert (not b!5400060))

(assert (not b!5400196))

(assert (not d!1724852))

(assert (not b!5399863))

(assert (not b!5400127))

(assert (not d!1724934))

(assert (not b!5400168))

(assert (not b_lambda!206447))

(assert (not d!1724876))

(assert (not d!1724800))

(assert (not b_lambda!206443))

(assert (not d!1724790))

(assert (not b!5400106))

(assert (not d!1724840))

(assert (not b!5399934))

(assert (not d!1724928))

(assert (not b!5400152))

(assert (not b!5399691))

(assert (not d!1724872))

(assert (not b!5399970))

(assert (not d!1724804))

(assert (not b!5399717))

(assert (not b!5400201))

(assert (not d!1724818))

(assert (not d!1724904))

(assert (not bm!386410))

(assert (not b!5399848))

(assert (not bm!386407))

(assert (not b!5400163))

(assert (not b!5399911))

(assert (not bm!386404))

(assert (not b!5399713))

(assert (not b!5399904))

(assert (not b!5400195))

(assert (not d!1724908))

(assert (not b!5399840))

(assert (not bm!386403))

(assert (not b!5399901))

(assert (not b!5399816))

(assert (not d!1724902))

(assert (not b!5399922))

(assert (not b!5400018))

(assert (not b!5399989))

(assert (not d!1724906))

(assert (not b!5399854))

(assert (not b!5399971))

(assert (not bs!1248195))

(assert (not bs!1248197))

(assert (not b!5400016))

(assert (not b_lambda!206441))

(assert (not d!1724874))

(assert (not b!5399826))

(assert (not b!5400054))

(assert (not b!5400147))

(assert (not d!1724924))

(assert (not d!1724890))

(assert (not b!5400062))

(assert (not b!5399861))

(assert (not bm!386429))

(assert (not d!1724836))

(assert (not d!1724882))

(assert (not d!1724814))

(assert (not d!1724932))

(assert (not bm!386447))

(assert (not d!1724798))

(assert (not b!5399973))

(assert (not b!5399812))

(assert (not d!1724832))

(assert (not bm!386408))

(assert (not b!5399847))

(assert (not b!5399905))

(assert (not b!5400128))

(assert (not b!5399906))

(assert (not d!1724812))

(assert (not b!5400132))

(assert (not b!5400023))

(assert (not b!5399802))

(assert (not d!1724828))

(assert (not b!5400185))

(assert (not b!5399964))

(assert (not d!1724844))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

