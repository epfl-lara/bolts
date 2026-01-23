; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!680062 () Bool)

(assert start!680062)

(declare-fun b!7035075 () Bool)

(assert (=> b!7035075 true))

(declare-fun b!7035081 () Bool)

(assert (=> b!7035081 true))

(declare-fun b!7035080 () Bool)

(assert (=> b!7035080 true))

(declare-fun b!7035063 () Bool)

(declare-fun res!2871811 () Bool)

(declare-fun e!4229203 () Bool)

(assert (=> b!7035063 (=> res!2871811 e!4229203)))

(declare-datatypes ((C!35206 0))(
  ( (C!35207 (val!27305 Int)) )
))
(declare-datatypes ((Regex!17468 0))(
  ( (ElementMatch!17468 (c!1308831 C!35206)) (Concat!26313 (regOne!35448 Regex!17468) (regTwo!35448 Regex!17468)) (EmptyExpr!17468) (Star!17468 (reg!17797 Regex!17468)) (EmptyLang!17468) (Union!17468 (regOne!35449 Regex!17468) (regTwo!35449 Regex!17468)) )
))
(declare-datatypes ((List!67932 0))(
  ( (Nil!67808) (Cons!67808 (h!74256 Regex!17468) (t!381701 List!67932)) )
))
(declare-datatypes ((Context!12928 0))(
  ( (Context!12929 (exprs!6964 List!67932)) )
))
(declare-fun lt!2519916 () Context!12928)

(declare-fun lt!2519935 () (Set Context!12928))

(assert (=> b!7035063 (= res!2871811 (not (set.member lt!2519916 lt!2519935)))))

(declare-fun res!2871814 () Bool)

(declare-fun e!4229192 () Bool)

(assert (=> start!680062 (=> (not res!2871814) (not e!4229192))))

(declare-datatypes ((List!67933 0))(
  ( (Nil!67809) (Cons!67809 (h!74257 C!35206) (t!381702 List!67933)) )
))
(declare-fun s!7408 () List!67933)

(declare-fun matchZipper!3008 ((Set Context!12928) List!67933) Bool)

(assert (=> start!680062 (= res!2871814 (matchZipper!3008 lt!2519935 s!7408))))

(declare-fun z1!570 () (Set Context!12928))

(declare-fun ct2!306 () Context!12928)

(declare-fun appendTo!589 ((Set Context!12928) Context!12928) (Set Context!12928))

(assert (=> start!680062 (= lt!2519935 (appendTo!589 z1!570 ct2!306))))

(assert (=> start!680062 e!4229192))

(declare-fun condSetEmpty!49211 () Bool)

(assert (=> start!680062 (= condSetEmpty!49211 (= z1!570 (as set.empty (Set Context!12928))))))

(declare-fun setRes!49211 () Bool)

(assert (=> start!680062 setRes!49211))

(declare-fun e!4229200 () Bool)

(declare-fun inv!86530 (Context!12928) Bool)

(assert (=> start!680062 (and (inv!86530 ct2!306) e!4229200)))

(declare-fun e!4229193 () Bool)

(assert (=> start!680062 e!4229193))

(declare-fun b!7035064 () Bool)

(declare-fun e!4229205 () Bool)

(declare-fun e!4229195 () Bool)

(assert (=> b!7035064 (= e!4229205 e!4229195)))

(declare-fun res!2871807 () Bool)

(assert (=> b!7035064 (=> res!2871807 e!4229195)))

(declare-fun lt!2519917 () Context!12928)

(declare-fun nullable!7179 (Regex!17468) Bool)

(assert (=> b!7035064 (= res!2871807 (not (nullable!7179 (h!74256 (exprs!6964 lt!2519917)))))))

(declare-fun lt!2519942 () Context!12928)

(declare-fun lt!2519960 () List!67932)

(assert (=> b!7035064 (= lt!2519942 (Context!12929 lt!2519960))))

(declare-fun tail!13558 (List!67932) List!67932)

(assert (=> b!7035064 (= lt!2519960 (tail!13558 (exprs!6964 lt!2519917)))))

(declare-fun b!7035065 () Bool)

(declare-fun res!2871820 () Bool)

(assert (=> b!7035065 (=> (not res!2871820) (not e!4229192))))

(assert (=> b!7035065 (= res!2871820 (is-Cons!67809 s!7408))))

(declare-fun b!7035066 () Bool)

(declare-fun e!4229209 () Bool)

(declare-fun e!4229194 () Bool)

(assert (=> b!7035066 (= e!4229209 e!4229194)))

(declare-fun res!2871819 () Bool)

(assert (=> b!7035066 (=> res!2871819 e!4229194)))

(declare-fun lt!2519952 () (Set Context!12928))

(declare-fun lt!2519937 () (Set Context!12928))

(assert (=> b!7035066 (= res!2871819 (not (= lt!2519952 lt!2519937)))))

(declare-fun lt!2519953 () Context!12928)

(assert (=> b!7035066 (= lt!2519952 (set.insert lt!2519953 (as set.empty (Set Context!12928))))))

(declare-fun lambda!415200 () Int)

(declare-datatypes ((Unit!161614 0))(
  ( (Unit!161615) )
))
(declare-fun lt!2519962 () Unit!161614)

(declare-fun lemmaConcatPreservesForall!789 (List!67932 List!67932 Int) Unit!161614)

(assert (=> b!7035066 (= lt!2519962 (lemmaConcatPreservesForall!789 (exprs!6964 lt!2519917) (exprs!6964 ct2!306) lambda!415200))))

(declare-fun b!7035067 () Bool)

(declare-fun e!4229204 () Bool)

(assert (=> b!7035067 (= e!4229195 e!4229204)))

(declare-fun res!2871824 () Bool)

(assert (=> b!7035067 (=> res!2871824 e!4229204)))

(declare-fun lt!2519963 () (Set Context!12928))

(declare-fun lt!2519959 () (Set Context!12928))

(assert (=> b!7035067 (= res!2871824 (not (= lt!2519963 lt!2519959)))))

(declare-fun lt!2519930 () (Set Context!12928))

(declare-fun lt!2519939 () (Set Context!12928))

(assert (=> b!7035067 (= lt!2519959 (set.union lt!2519930 lt!2519939))))

(declare-fun lt!2519944 () Context!12928)

(declare-fun derivationStepZipperUp!2078 (Context!12928 C!35206) (Set Context!12928))

(assert (=> b!7035067 (= lt!2519939 (derivationStepZipperUp!2078 lt!2519944 (h!74257 s!7408)))))

(declare-fun derivationStepZipperDown!2132 (Regex!17468 Context!12928 C!35206) (Set Context!12928))

(assert (=> b!7035067 (= lt!2519930 (derivationStepZipperDown!2132 (h!74256 (exprs!6964 lt!2519917)) lt!2519944 (h!74257 s!7408)))))

(declare-fun ++!15516 (List!67932 List!67932) List!67932)

(assert (=> b!7035067 (= lt!2519944 (Context!12929 (++!15516 lt!2519960 (exprs!6964 ct2!306))))))

(declare-fun lt!2519950 () Unit!161614)

(assert (=> b!7035067 (= lt!2519950 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(declare-fun lt!2519936 () Unit!161614)

(assert (=> b!7035067 (= lt!2519936 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(declare-fun e!4229197 () Bool)

(declare-fun setNonEmpty!49211 () Bool)

(declare-fun setElem!49211 () Context!12928)

(declare-fun tp!1936734 () Bool)

(assert (=> setNonEmpty!49211 (= setRes!49211 (and tp!1936734 (inv!86530 setElem!49211) e!4229197))))

(declare-fun setRest!49211 () (Set Context!12928))

(assert (=> setNonEmpty!49211 (= z1!570 (set.union (set.insert setElem!49211 (as set.empty (Set Context!12928))) setRest!49211))))

(declare-fun setIsEmpty!49211 () Bool)

(assert (=> setIsEmpty!49211 setRes!49211))

(declare-fun b!7035068 () Bool)

(declare-fun res!2871804 () Bool)

(assert (=> b!7035068 (=> res!2871804 e!4229205)))

(declare-fun isEmpty!39552 (List!67932) Bool)

(assert (=> b!7035068 (= res!2871804 (isEmpty!39552 (exprs!6964 lt!2519917)))))

(declare-fun b!7035069 () Bool)

(declare-fun tp!1936735 () Bool)

(assert (=> b!7035069 (= e!4229200 tp!1936735)))

(declare-fun b!7035070 () Bool)

(declare-fun e!4229199 () Bool)

(assert (=> b!7035070 (= e!4229199 (matchZipper!3008 lt!2519939 (t!381702 s!7408)))))

(declare-fun b!7035071 () Bool)

(declare-fun e!4229198 () Bool)

(declare-fun e!4229206 () Bool)

(assert (=> b!7035071 (= e!4229198 e!4229206)))

(declare-fun res!2871808 () Bool)

(assert (=> b!7035071 (=> res!2871808 e!4229206)))

(assert (=> b!7035071 (= res!2871808 (not (matchZipper!3008 lt!2519939 (t!381702 s!7408))))))

(declare-fun lt!2519921 () Unit!161614)

(assert (=> b!7035071 (= lt!2519921 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(declare-fun e!4229207 () Bool)

(declare-fun lt!2519951 () (Set Context!12928))

(declare-fun b!7035072 () Bool)

(declare-fun derivationStepZipper!2924 ((Set Context!12928) C!35206) (Set Context!12928))

(assert (=> b!7035072 (= e!4229207 (= (derivationStepZipper!2924 lt!2519951 (h!74257 s!7408)) (derivationStepZipperUp!2078 lt!2519917 (h!74257 s!7408))))))

(declare-fun lambda!415201 () Int)

(declare-fun flatMap!2415 ((Set Context!12928) Int) (Set Context!12928))

(assert (=> b!7035072 (= (flatMap!2415 lt!2519951 lambda!415201) (derivationStepZipperUp!2078 lt!2519917 (h!74257 s!7408)))))

(declare-fun lt!2519919 () Unit!161614)

(declare-fun lemmaFlatMapOnSingletonSet!1929 ((Set Context!12928) Context!12928 Int) Unit!161614)

(assert (=> b!7035072 (= lt!2519919 (lemmaFlatMapOnSingletonSet!1929 lt!2519951 lt!2519917 lambda!415201))))

(assert (=> b!7035072 (= lt!2519951 (set.insert lt!2519917 (as set.empty (Set Context!12928))))))

(declare-fun b!7035073 () Bool)

(declare-fun res!2871813 () Bool)

(assert (=> b!7035073 (=> res!2871813 e!4229207)))

(declare-datatypes ((tuple2!68082 0))(
  ( (tuple2!68083 (_1!37344 List!67933) (_2!37344 List!67933)) )
))
(declare-fun lt!2519955 () tuple2!68082)

(declare-fun ++!15517 (List!67933 List!67933) List!67933)

(assert (=> b!7035073 (= res!2871813 (not (= (++!15517 (_1!37344 lt!2519955) (_2!37344 lt!2519955)) s!7408)))))

(declare-fun b!7035074 () Bool)

(declare-fun tp!1936736 () Bool)

(assert (=> b!7035074 (= e!4229197 tp!1936736)))

(assert (=> b!7035075 (= e!4229192 (not e!4229203))))

(declare-fun res!2871823 () Bool)

(assert (=> b!7035075 (=> res!2871823 e!4229203)))

(assert (=> b!7035075 (= res!2871823 (not (matchZipper!3008 lt!2519937 s!7408)))))

(assert (=> b!7035075 (= lt!2519937 (set.insert lt!2519916 (as set.empty (Set Context!12928))))))

(declare-fun lambda!415198 () Int)

(declare-fun getWitness!1477 ((Set Context!12928) Int) Context!12928)

(assert (=> b!7035075 (= lt!2519916 (getWitness!1477 lt!2519935 lambda!415198))))

(declare-datatypes ((List!67934 0))(
  ( (Nil!67810) (Cons!67810 (h!74258 Context!12928) (t!381703 List!67934)) )
))
(declare-fun lt!2519923 () List!67934)

(declare-fun exists!3398 (List!67934 Int) Bool)

(assert (=> b!7035075 (exists!3398 lt!2519923 lambda!415198)))

(declare-fun lt!2519932 () Unit!161614)

(declare-fun lemmaZipperMatchesExistsMatchingContext!407 (List!67934 List!67933) Unit!161614)

(assert (=> b!7035075 (= lt!2519932 (lemmaZipperMatchesExistsMatchingContext!407 lt!2519923 s!7408))))

(declare-fun toList!10811 ((Set Context!12928)) List!67934)

(assert (=> b!7035075 (= lt!2519923 (toList!10811 lt!2519935))))

(declare-fun b!7035076 () Bool)

(declare-fun e!4229196 () Bool)

(assert (=> b!7035076 (= e!4229206 e!4229196)))

(declare-fun res!2871821 () Bool)

(assert (=> b!7035076 (=> res!2871821 e!4229196)))

(declare-fun lt!2519934 () (Set Context!12928))

(assert (=> b!7035076 (= res!2871821 (not (= (derivationStepZipper!2924 lt!2519934 (h!74257 s!7408)) lt!2519939)))))

(declare-fun lt!2519914 () Unit!161614)

(assert (=> b!7035076 (= lt!2519914 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(declare-fun lt!2519948 () Unit!161614)

(assert (=> b!7035076 (= lt!2519948 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(assert (=> b!7035076 (= (flatMap!2415 lt!2519934 lambda!415201) (derivationStepZipperUp!2078 lt!2519944 (h!74257 s!7408)))))

(declare-fun lt!2519945 () Unit!161614)

(assert (=> b!7035076 (= lt!2519945 (lemmaFlatMapOnSingletonSet!1929 lt!2519934 lt!2519944 lambda!415201))))

(assert (=> b!7035076 (= lt!2519934 (set.insert lt!2519944 (as set.empty (Set Context!12928))))))

(declare-fun lt!2519961 () Unit!161614)

(assert (=> b!7035076 (= lt!2519961 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(declare-fun lt!2519941 () Unit!161614)

(assert (=> b!7035076 (= lt!2519941 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(declare-fun b!7035077 () Bool)

(declare-fun e!4229201 () Bool)

(assert (=> b!7035077 (= e!4229196 e!4229201)))

(declare-fun res!2871815 () Bool)

(assert (=> b!7035077 (=> res!2871815 e!4229201)))

(assert (=> b!7035077 (= res!2871815 (not (matchZipper!3008 lt!2519934 s!7408)))))

(declare-fun lt!2519947 () Unit!161614)

(assert (=> b!7035077 (= lt!2519947 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(declare-fun b!7035078 () Bool)

(declare-fun res!2871803 () Bool)

(declare-fun e!4229208 () Bool)

(assert (=> b!7035078 (=> res!2871803 e!4229208)))

(declare-fun lt!2519931 () Int)

(declare-fun zipperDepthTotal!531 (List!67934) Int)

(assert (=> b!7035078 (= res!2871803 (>= (zipperDepthTotal!531 (Cons!67810 lt!2519942 Nil!67810)) lt!2519931))))

(declare-fun b!7035079 () Bool)

(declare-fun tp_is_empty!44161 () Bool)

(declare-fun tp!1936737 () Bool)

(assert (=> b!7035079 (= e!4229193 (and tp_is_empty!44161 tp!1936737))))

(assert (=> b!7035080 (= e!4229194 e!4229205)))

(declare-fun res!2871818 () Bool)

(assert (=> b!7035080 (=> res!2871818 e!4229205)))

(assert (=> b!7035080 (= res!2871818 (not (= (derivationStepZipper!2924 lt!2519952 (h!74257 s!7408)) lt!2519963)))))

(assert (=> b!7035080 (= (flatMap!2415 lt!2519952 lambda!415201) (derivationStepZipperUp!2078 lt!2519953 (h!74257 s!7408)))))

(declare-fun lt!2519938 () Unit!161614)

(assert (=> b!7035080 (= lt!2519938 (lemmaFlatMapOnSingletonSet!1929 lt!2519952 lt!2519953 lambda!415201))))

(assert (=> b!7035080 (= lt!2519963 (derivationStepZipperUp!2078 lt!2519953 (h!74257 s!7408)))))

(declare-fun lt!2519912 () Unit!161614)

(assert (=> b!7035080 (= lt!2519912 (lemmaConcatPreservesForall!789 (exprs!6964 lt!2519917) (exprs!6964 ct2!306) lambda!415200))))

(assert (=> b!7035081 (= e!4229203 e!4229209)))

(declare-fun res!2871805 () Bool)

(assert (=> b!7035081 (=> res!2871805 e!4229209)))

(assert (=> b!7035081 (= res!2871805 (or (not (= lt!2519953 lt!2519916)) (not (set.member lt!2519917 z1!570))))))

(assert (=> b!7035081 (= lt!2519953 (Context!12929 (++!15516 (exprs!6964 lt!2519917) (exprs!6964 ct2!306))))))

(declare-fun lt!2519933 () Unit!161614)

(assert (=> b!7035081 (= lt!2519933 (lemmaConcatPreservesForall!789 (exprs!6964 lt!2519917) (exprs!6964 ct2!306) lambda!415200))))

(declare-fun lambda!415199 () Int)

(declare-fun mapPost2!309 ((Set Context!12928) Int Context!12928) Context!12928)

(assert (=> b!7035081 (= lt!2519917 (mapPost2!309 z1!570 lambda!415199 lt!2519916))))

(declare-fun b!7035082 () Bool)

(assert (=> b!7035082 (= e!4229201 e!4229208)))

(declare-fun res!2871817 () Bool)

(assert (=> b!7035082 (=> res!2871817 e!4229208)))

(declare-fun lt!2519926 () Int)

(declare-fun contextDepthTotal!503 (Context!12928) Int)

(assert (=> b!7035082 (= res!2871817 (<= lt!2519926 (contextDepthTotal!503 lt!2519942)))))

(assert (=> b!7035082 (<= lt!2519926 lt!2519931)))

(declare-fun lt!2519929 () List!67934)

(assert (=> b!7035082 (= lt!2519931 (zipperDepthTotal!531 lt!2519929))))

(assert (=> b!7035082 (= lt!2519926 (contextDepthTotal!503 lt!2519917))))

(declare-fun lt!2519915 () Unit!161614)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!71 (List!67934 Context!12928) Unit!161614)

(assert (=> b!7035082 (= lt!2519915 (lemmaTotalDepthZipperLargerThanOfAnyContext!71 lt!2519929 lt!2519917))))

(assert (=> b!7035082 (= lt!2519929 (toList!10811 z1!570))))

(declare-fun lt!2519940 () Unit!161614)

(assert (=> b!7035082 (= lt!2519940 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(declare-fun lt!2519928 () Unit!161614)

(assert (=> b!7035082 (= lt!2519928 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(declare-fun lt!2519957 () Unit!161614)

(assert (=> b!7035082 (= lt!2519957 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(declare-fun lt!2519964 () (Set Context!12928))

(assert (=> b!7035082 (= (flatMap!2415 lt!2519964 lambda!415201) (derivationStepZipperUp!2078 lt!2519942 (h!74257 s!7408)))))

(declare-fun lt!2519958 () Unit!161614)

(assert (=> b!7035082 (= lt!2519958 (lemmaFlatMapOnSingletonSet!1929 lt!2519964 lt!2519942 lambda!415201))))

(declare-fun map!15770 ((Set Context!12928) Int) (Set Context!12928))

(assert (=> b!7035082 (= (map!15770 lt!2519964 lambda!415199) (set.insert (Context!12929 (++!15516 lt!2519960 (exprs!6964 ct2!306))) (as set.empty (Set Context!12928))))))

(declare-fun lt!2519954 () Unit!161614)

(assert (=> b!7035082 (= lt!2519954 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(declare-fun lt!2519925 () Unit!161614)

(declare-fun lemmaMapOnSingletonSet!379 ((Set Context!12928) Context!12928 Int) Unit!161614)

(assert (=> b!7035082 (= lt!2519925 (lemmaMapOnSingletonSet!379 lt!2519964 lt!2519942 lambda!415199))))

(assert (=> b!7035082 (= lt!2519964 (set.insert lt!2519942 (as set.empty (Set Context!12928))))))

(declare-fun b!7035083 () Bool)

(assert (=> b!7035083 (= e!4229204 e!4229198)))

(declare-fun res!2871802 () Bool)

(assert (=> b!7035083 (=> res!2871802 e!4229198)))

(declare-fun e!4229202 () Bool)

(assert (=> b!7035083 (= res!2871802 e!4229202)))

(declare-fun res!2871801 () Bool)

(assert (=> b!7035083 (=> (not res!2871801) (not e!4229202))))

(declare-fun lt!2519920 () Bool)

(declare-fun lt!2519924 () Bool)

(assert (=> b!7035083 (= res!2871801 (not (= lt!2519920 lt!2519924)))))

(assert (=> b!7035083 (= lt!2519920 (matchZipper!3008 lt!2519963 (t!381702 s!7408)))))

(declare-fun lt!2519946 () Unit!161614)

(assert (=> b!7035083 (= lt!2519946 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(assert (=> b!7035083 (= (matchZipper!3008 lt!2519959 (t!381702 s!7408)) e!4229199)))

(declare-fun res!2871812 () Bool)

(assert (=> b!7035083 (=> res!2871812 e!4229199)))

(assert (=> b!7035083 (= res!2871812 lt!2519924)))

(assert (=> b!7035083 (= lt!2519924 (matchZipper!3008 lt!2519930 (t!381702 s!7408)))))

(declare-fun lt!2519913 () Unit!161614)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1541 ((Set Context!12928) (Set Context!12928) List!67933) Unit!161614)

(assert (=> b!7035083 (= lt!2519913 (lemmaZipperConcatMatchesSameAsBothZippers!1541 lt!2519930 lt!2519939 (t!381702 s!7408)))))

(declare-fun lt!2519922 () Unit!161614)

(assert (=> b!7035083 (= lt!2519922 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(declare-fun lt!2519927 () Unit!161614)

(assert (=> b!7035083 (= lt!2519927 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(declare-fun b!7035084 () Bool)

(declare-fun res!2871810 () Bool)

(assert (=> b!7035084 (=> res!2871810 e!4229198)))

(assert (=> b!7035084 (= res!2871810 (not lt!2519920))))

(declare-fun b!7035085 () Bool)

(assert (=> b!7035085 (= e!4229208 e!4229207)))

(declare-fun res!2871816 () Bool)

(assert (=> b!7035085 (=> res!2871816 e!4229207)))

(assert (=> b!7035085 (= res!2871816 (not (matchZipper!3008 lt!2519964 (_1!37344 lt!2519955))))))

(declare-datatypes ((Option!16873 0))(
  ( (None!16872) (Some!16872 (v!53160 tuple2!68082)) )
))
(declare-fun lt!2519949 () Option!16873)

(declare-fun get!23758 (Option!16873) tuple2!68082)

(assert (=> b!7035085 (= lt!2519955 (get!23758 lt!2519949))))

(declare-fun isDefined!13574 (Option!16873) Bool)

(assert (=> b!7035085 (isDefined!13574 lt!2519949)))

(declare-fun lt!2519943 () (Set Context!12928))

(declare-fun findConcatSeparationZippers!389 ((Set Context!12928) (Set Context!12928) List!67933 List!67933 List!67933) Option!16873)

(assert (=> b!7035085 (= lt!2519949 (findConcatSeparationZippers!389 lt!2519964 lt!2519943 Nil!67809 s!7408 s!7408))))

(assert (=> b!7035085 (= lt!2519943 (set.insert ct2!306 (as set.empty (Set Context!12928))))))

(declare-fun lt!2519956 () Unit!161614)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!377 ((Set Context!12928) Context!12928 List!67933) Unit!161614)

(assert (=> b!7035085 (= lt!2519956 (lemmaConcatZipperMatchesStringThenFindConcatDefined!377 lt!2519964 ct2!306 s!7408))))

(declare-fun b!7035086 () Bool)

(declare-fun res!2871806 () Bool)

(assert (=> b!7035086 (=> res!2871806 e!4229207)))

(assert (=> b!7035086 (= res!2871806 (not (matchZipper!3008 lt!2519943 (_2!37344 lt!2519955))))))

(declare-fun b!7035087 () Bool)

(assert (=> b!7035087 (= e!4229202 (not (matchZipper!3008 lt!2519939 (t!381702 s!7408))))))

(declare-fun lt!2519918 () Unit!161614)

(assert (=> b!7035087 (= lt!2519918 (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(declare-fun b!7035088 () Bool)

(declare-fun res!2871809 () Bool)

(assert (=> b!7035088 (=> res!2871809 e!4229207)))

(declare-fun isEmpty!39553 (List!67933) Bool)

(assert (=> b!7035088 (= res!2871809 (isEmpty!39553 (_1!37344 lt!2519955)))))

(declare-fun b!7035089 () Bool)

(declare-fun res!2871822 () Bool)

(assert (=> b!7035089 (=> res!2871822 e!4229205)))

(assert (=> b!7035089 (= res!2871822 (not (is-Cons!67808 (exprs!6964 lt!2519917))))))

(assert (= (and start!680062 res!2871814) b!7035065))

(assert (= (and b!7035065 res!2871820) b!7035075))

(assert (= (and b!7035075 (not res!2871823)) b!7035063))

(assert (= (and b!7035063 (not res!2871811)) b!7035081))

(assert (= (and b!7035081 (not res!2871805)) b!7035066))

(assert (= (and b!7035066 (not res!2871819)) b!7035080))

(assert (= (and b!7035080 (not res!2871818)) b!7035089))

(assert (= (and b!7035089 (not res!2871822)) b!7035068))

(assert (= (and b!7035068 (not res!2871804)) b!7035064))

(assert (= (and b!7035064 (not res!2871807)) b!7035067))

(assert (= (and b!7035067 (not res!2871824)) b!7035083))

(assert (= (and b!7035083 (not res!2871812)) b!7035070))

(assert (= (and b!7035083 res!2871801) b!7035087))

(assert (= (and b!7035083 (not res!2871802)) b!7035084))

(assert (= (and b!7035084 (not res!2871810)) b!7035071))

(assert (= (and b!7035071 (not res!2871808)) b!7035076))

(assert (= (and b!7035076 (not res!2871821)) b!7035077))

(assert (= (and b!7035077 (not res!2871815)) b!7035082))

(assert (= (and b!7035082 (not res!2871817)) b!7035078))

(assert (= (and b!7035078 (not res!2871803)) b!7035085))

(assert (= (and b!7035085 (not res!2871816)) b!7035086))

(assert (= (and b!7035086 (not res!2871806)) b!7035073))

(assert (= (and b!7035073 (not res!2871813)) b!7035088))

(assert (= (and b!7035088 (not res!2871809)) b!7035072))

(assert (= (and start!680062 condSetEmpty!49211) setIsEmpty!49211))

(assert (= (and start!680062 (not condSetEmpty!49211)) setNonEmpty!49211))

(assert (= setNonEmpty!49211 b!7035074))

(assert (= start!680062 b!7035069))

(assert (= (and start!680062 (is-Cons!67809 s!7408)) b!7035079))

(declare-fun m!7743262 () Bool)

(assert (=> b!7035080 m!7743262))

(declare-fun m!7743264 () Bool)

(assert (=> b!7035080 m!7743264))

(declare-fun m!7743266 () Bool)

(assert (=> b!7035080 m!7743266))

(declare-fun m!7743268 () Bool)

(assert (=> b!7035080 m!7743268))

(declare-fun m!7743270 () Bool)

(assert (=> b!7035080 m!7743270))

(declare-fun m!7743272 () Bool)

(assert (=> b!7035064 m!7743272))

(declare-fun m!7743274 () Bool)

(assert (=> b!7035064 m!7743274))

(declare-fun m!7743276 () Bool)

(assert (=> b!7035072 m!7743276))

(declare-fun m!7743278 () Bool)

(assert (=> b!7035072 m!7743278))

(declare-fun m!7743280 () Bool)

(assert (=> b!7035072 m!7743280))

(declare-fun m!7743282 () Bool)

(assert (=> b!7035072 m!7743282))

(declare-fun m!7743284 () Bool)

(assert (=> b!7035072 m!7743284))

(declare-fun m!7743286 () Bool)

(assert (=> b!7035083 m!7743286))

(declare-fun m!7743288 () Bool)

(assert (=> b!7035083 m!7743288))

(assert (=> b!7035083 m!7743288))

(declare-fun m!7743290 () Bool)

(assert (=> b!7035083 m!7743290))

(declare-fun m!7743292 () Bool)

(assert (=> b!7035083 m!7743292))

(assert (=> b!7035083 m!7743288))

(declare-fun m!7743294 () Bool)

(assert (=> b!7035083 m!7743294))

(declare-fun m!7743296 () Bool)

(assert (=> setNonEmpty!49211 m!7743296))

(declare-fun m!7743298 () Bool)

(assert (=> start!680062 m!7743298))

(declare-fun m!7743300 () Bool)

(assert (=> start!680062 m!7743300))

(declare-fun m!7743302 () Bool)

(assert (=> start!680062 m!7743302))

(assert (=> b!7035082 m!7743288))

(declare-fun m!7743304 () Bool)

(assert (=> b!7035082 m!7743304))

(declare-fun m!7743306 () Bool)

(assert (=> b!7035082 m!7743306))

(declare-fun m!7743308 () Bool)

(assert (=> b!7035082 m!7743308))

(declare-fun m!7743310 () Bool)

(assert (=> b!7035082 m!7743310))

(declare-fun m!7743312 () Bool)

(assert (=> b!7035082 m!7743312))

(declare-fun m!7743314 () Bool)

(assert (=> b!7035082 m!7743314))

(declare-fun m!7743316 () Bool)

(assert (=> b!7035082 m!7743316))

(declare-fun m!7743318 () Bool)

(assert (=> b!7035082 m!7743318))

(declare-fun m!7743320 () Bool)

(assert (=> b!7035082 m!7743320))

(assert (=> b!7035082 m!7743288))

(declare-fun m!7743322 () Bool)

(assert (=> b!7035082 m!7743322))

(assert (=> b!7035082 m!7743288))

(declare-fun m!7743324 () Bool)

(assert (=> b!7035082 m!7743324))

(assert (=> b!7035082 m!7743288))

(declare-fun m!7743326 () Bool)

(assert (=> b!7035082 m!7743326))

(declare-fun m!7743328 () Bool)

(assert (=> b!7035082 m!7743328))

(declare-fun m!7743330 () Bool)

(assert (=> b!7035086 m!7743330))

(declare-fun m!7743332 () Bool)

(assert (=> b!7035071 m!7743332))

(assert (=> b!7035071 m!7743288))

(declare-fun m!7743334 () Bool)

(assert (=> b!7035066 m!7743334))

(assert (=> b!7035066 m!7743268))

(declare-fun m!7743336 () Bool)

(assert (=> b!7035078 m!7743336))

(declare-fun m!7743338 () Bool)

(assert (=> b!7035077 m!7743338))

(assert (=> b!7035077 m!7743288))

(declare-fun m!7743340 () Bool)

(assert (=> b!7035068 m!7743340))

(declare-fun m!7743342 () Bool)

(assert (=> b!7035081 m!7743342))

(declare-fun m!7743344 () Bool)

(assert (=> b!7035081 m!7743344))

(assert (=> b!7035081 m!7743268))

(declare-fun m!7743346 () Bool)

(assert (=> b!7035081 m!7743346))

(declare-fun m!7743348 () Bool)

(assert (=> b!7035067 m!7743348))

(assert (=> b!7035067 m!7743320))

(assert (=> b!7035067 m!7743288))

(declare-fun m!7743350 () Bool)

(assert (=> b!7035067 m!7743350))

(assert (=> b!7035067 m!7743288))

(declare-fun m!7743352 () Bool)

(assert (=> b!7035075 m!7743352))

(declare-fun m!7743354 () Bool)

(assert (=> b!7035075 m!7743354))

(declare-fun m!7743356 () Bool)

(assert (=> b!7035075 m!7743356))

(declare-fun m!7743358 () Bool)

(assert (=> b!7035075 m!7743358))

(declare-fun m!7743360 () Bool)

(assert (=> b!7035075 m!7743360))

(declare-fun m!7743362 () Bool)

(assert (=> b!7035075 m!7743362))

(declare-fun m!7743364 () Bool)

(assert (=> b!7035088 m!7743364))

(assert (=> b!7035076 m!7743288))

(declare-fun m!7743366 () Bool)

(assert (=> b!7035076 m!7743366))

(assert (=> b!7035076 m!7743288))

(declare-fun m!7743368 () Bool)

(assert (=> b!7035076 m!7743368))

(assert (=> b!7035076 m!7743288))

(declare-fun m!7743370 () Bool)

(assert (=> b!7035076 m!7743370))

(declare-fun m!7743372 () Bool)

(assert (=> b!7035076 m!7743372))

(assert (=> b!7035076 m!7743348))

(assert (=> b!7035076 m!7743288))

(assert (=> b!7035070 m!7743332))

(declare-fun m!7743374 () Bool)

(assert (=> b!7035063 m!7743374))

(declare-fun m!7743376 () Bool)

(assert (=> b!7035073 m!7743376))

(assert (=> b!7035087 m!7743332))

(assert (=> b!7035087 m!7743288))

(declare-fun m!7743378 () Bool)

(assert (=> b!7035085 m!7743378))

(declare-fun m!7743380 () Bool)

(assert (=> b!7035085 m!7743380))

(declare-fun m!7743382 () Bool)

(assert (=> b!7035085 m!7743382))

(declare-fun m!7743384 () Bool)

(assert (=> b!7035085 m!7743384))

(declare-fun m!7743386 () Bool)

(assert (=> b!7035085 m!7743386))

(declare-fun m!7743388 () Bool)

(assert (=> b!7035085 m!7743388))

(push 1)

(assert tp_is_empty!44161)

(assert (not start!680062))

(assert (not b!7035074))

(assert (not b!7035088))

(assert (not b!7035080))

(assert (not b!7035087))

(assert (not b!7035066))

(assert (not b!7035071))

(assert (not b!7035076))

(assert (not b!7035067))

(assert (not b!7035068))

(assert (not b!7035083))

(assert (not setNonEmpty!49211))

(assert (not b!7035081))

(assert (not b!7035077))

(assert (not b!7035069))

(assert (not b!7035075))

(assert (not b!7035082))

(assert (not b!7035079))

(assert (not b!7035086))

(assert (not b!7035085))

(assert (not b!7035073))

(assert (not b!7035070))

(assert (not b!7035078))

(assert (not b!7035072))

(assert (not b!7035064))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2195618 () Bool)

(declare-fun c!1308851 () Bool)

(assert (=> d!2195618 (= c!1308851 (isEmpty!39553 s!7408))))

(declare-fun e!4229266 () Bool)

(assert (=> d!2195618 (= (matchZipper!3008 lt!2519937 s!7408) e!4229266)))

(declare-fun b!7035187 () Bool)

(declare-fun nullableZipper!2582 ((Set Context!12928)) Bool)

(assert (=> b!7035187 (= e!4229266 (nullableZipper!2582 lt!2519937))))

(declare-fun b!7035188 () Bool)

(declare-fun head!14269 (List!67933) C!35206)

(declare-fun tail!13560 (List!67933) List!67933)

(assert (=> b!7035188 (= e!4229266 (matchZipper!3008 (derivationStepZipper!2924 lt!2519937 (head!14269 s!7408)) (tail!13560 s!7408)))))

(assert (= (and d!2195618 c!1308851) b!7035187))

(assert (= (and d!2195618 (not c!1308851)) b!7035188))

(declare-fun m!7743518 () Bool)

(assert (=> d!2195618 m!7743518))

(declare-fun m!7743520 () Bool)

(assert (=> b!7035187 m!7743520))

(declare-fun m!7743522 () Bool)

(assert (=> b!7035188 m!7743522))

(assert (=> b!7035188 m!7743522))

(declare-fun m!7743524 () Bool)

(assert (=> b!7035188 m!7743524))

(declare-fun m!7743526 () Bool)

(assert (=> b!7035188 m!7743526))

(assert (=> b!7035188 m!7743524))

(assert (=> b!7035188 m!7743526))

(declare-fun m!7743528 () Bool)

(assert (=> b!7035188 m!7743528))

(assert (=> b!7035075 d!2195618))

(declare-fun d!2195620 () Bool)

(declare-fun e!4229269 () Bool)

(assert (=> d!2195620 e!4229269))

(declare-fun res!2871900 () Bool)

(assert (=> d!2195620 (=> (not res!2871900) (not e!4229269))))

(declare-fun lt!2520130 () List!67934)

(declare-fun noDuplicate!2630 (List!67934) Bool)

(assert (=> d!2195620 (= res!2871900 (noDuplicate!2630 lt!2520130))))

(declare-fun choose!53293 ((Set Context!12928)) List!67934)

(assert (=> d!2195620 (= lt!2520130 (choose!53293 lt!2519935))))

(assert (=> d!2195620 (= (toList!10811 lt!2519935) lt!2520130)))

(declare-fun b!7035191 () Bool)

(declare-fun content!13541 (List!67934) (Set Context!12928))

(assert (=> b!7035191 (= e!4229269 (= (content!13541 lt!2520130) lt!2519935))))

(assert (= (and d!2195620 res!2871900) b!7035191))

(declare-fun m!7743530 () Bool)

(assert (=> d!2195620 m!7743530))

(declare-fun m!7743532 () Bool)

(assert (=> d!2195620 m!7743532))

(declare-fun m!7743534 () Bool)

(assert (=> b!7035191 m!7743534))

(assert (=> b!7035075 d!2195620))

(declare-fun d!2195622 () Bool)

(declare-fun e!4229272 () Bool)

(assert (=> d!2195622 e!4229272))

(declare-fun res!2871903 () Bool)

(assert (=> d!2195622 (=> (not res!2871903) (not e!4229272))))

(declare-fun lt!2520133 () Context!12928)

(declare-fun dynLambda!27393 (Int Context!12928) Bool)

(assert (=> d!2195622 (= res!2871903 (dynLambda!27393 lambda!415198 lt!2520133))))

(declare-fun getWitness!1479 (List!67934 Int) Context!12928)

(assert (=> d!2195622 (= lt!2520133 (getWitness!1479 (toList!10811 lt!2519935) lambda!415198))))

(declare-fun exists!3400 ((Set Context!12928) Int) Bool)

(assert (=> d!2195622 (exists!3400 lt!2519935 lambda!415198)))

(assert (=> d!2195622 (= (getWitness!1477 lt!2519935 lambda!415198) lt!2520133)))

(declare-fun b!7035194 () Bool)

(assert (=> b!7035194 (= e!4229272 (set.member lt!2520133 lt!2519935))))

(assert (= (and d!2195622 res!2871903) b!7035194))

(declare-fun b_lambda!266795 () Bool)

(assert (=> (not b_lambda!266795) (not d!2195622)))

(declare-fun m!7743536 () Bool)

(assert (=> d!2195622 m!7743536))

(assert (=> d!2195622 m!7743354))

(assert (=> d!2195622 m!7743354))

(declare-fun m!7743538 () Bool)

(assert (=> d!2195622 m!7743538))

(declare-fun m!7743540 () Bool)

(assert (=> d!2195622 m!7743540))

(declare-fun m!7743542 () Bool)

(assert (=> b!7035194 m!7743542))

(assert (=> b!7035075 d!2195622))

(declare-fun bs!1871873 () Bool)

(declare-fun d!2195624 () Bool)

(assert (= bs!1871873 (and d!2195624 b!7035075)))

(declare-fun lambda!415266 () Int)

(assert (=> bs!1871873 (not (= lambda!415266 lambda!415198))))

(assert (=> d!2195624 true))

(declare-fun order!28179 () Int)

(declare-fun dynLambda!27394 (Int Int) Int)

(assert (=> d!2195624 (< (dynLambda!27394 order!28179 lambda!415198) (dynLambda!27394 order!28179 lambda!415266))))

(declare-fun forall!16383 (List!67934 Int) Bool)

(assert (=> d!2195624 (= (exists!3398 lt!2519923 lambda!415198) (not (forall!16383 lt!2519923 lambda!415266)))))

(declare-fun bs!1871874 () Bool)

(assert (= bs!1871874 d!2195624))

(declare-fun m!7743544 () Bool)

(assert (=> bs!1871874 m!7743544))

(assert (=> b!7035075 d!2195624))

(declare-fun bs!1871875 () Bool)

(declare-fun d!2195626 () Bool)

(assert (= bs!1871875 (and d!2195626 b!7035075)))

(declare-fun lambda!415269 () Int)

(assert (=> bs!1871875 (= lambda!415269 lambda!415198)))

(declare-fun bs!1871876 () Bool)

(assert (= bs!1871876 (and d!2195626 d!2195624)))

(assert (=> bs!1871876 (not (= lambda!415269 lambda!415266))))

(assert (=> d!2195626 true))

(assert (=> d!2195626 (exists!3398 lt!2519923 lambda!415269)))

(declare-fun lt!2520136 () Unit!161614)

(declare-fun choose!53294 (List!67934 List!67933) Unit!161614)

(assert (=> d!2195626 (= lt!2520136 (choose!53294 lt!2519923 s!7408))))

(assert (=> d!2195626 (matchZipper!3008 (content!13541 lt!2519923) s!7408)))

(assert (=> d!2195626 (= (lemmaZipperMatchesExistsMatchingContext!407 lt!2519923 s!7408) lt!2520136)))

(declare-fun bs!1871877 () Bool)

(assert (= bs!1871877 d!2195626))

(declare-fun m!7743546 () Bool)

(assert (=> bs!1871877 m!7743546))

(declare-fun m!7743548 () Bool)

(assert (=> bs!1871877 m!7743548))

(declare-fun m!7743550 () Bool)

(assert (=> bs!1871877 m!7743550))

(assert (=> bs!1871877 m!7743550))

(declare-fun m!7743552 () Bool)

(assert (=> bs!1871877 m!7743552))

(assert (=> b!7035075 d!2195626))

(declare-fun d!2195628 () Bool)

(declare-fun forall!16384 (List!67932 Int) Bool)

(assert (=> d!2195628 (forall!16384 (++!15516 (exprs!6964 lt!2519917) (exprs!6964 ct2!306)) lambda!415200)))

(declare-fun lt!2520139 () Unit!161614)

(declare-fun choose!53295 (List!67932 List!67932 Int) Unit!161614)

(assert (=> d!2195628 (= lt!2520139 (choose!53295 (exprs!6964 lt!2519917) (exprs!6964 ct2!306) lambda!415200))))

(assert (=> d!2195628 (forall!16384 (exprs!6964 lt!2519917) lambda!415200)))

(assert (=> d!2195628 (= (lemmaConcatPreservesForall!789 (exprs!6964 lt!2519917) (exprs!6964 ct2!306) lambda!415200) lt!2520139)))

(declare-fun bs!1871878 () Bool)

(assert (= bs!1871878 d!2195628))

(assert (=> bs!1871878 m!7743344))

(assert (=> bs!1871878 m!7743344))

(declare-fun m!7743554 () Bool)

(assert (=> bs!1871878 m!7743554))

(declare-fun m!7743556 () Bool)

(assert (=> bs!1871878 m!7743556))

(declare-fun m!7743558 () Bool)

(assert (=> bs!1871878 m!7743558))

(assert (=> b!7035066 d!2195628))

(declare-fun c!1308865 () Bool)

(declare-fun c!1308868 () Bool)

(declare-fun call!638894 () List!67932)

(declare-fun bm!638886 () Bool)

(declare-fun $colon$colon!2576 (List!67932 Regex!17468) List!67932)

(assert (=> bm!638886 (= call!638894 ($colon$colon!2576 (exprs!6964 lt!2519944) (ite (or c!1308868 c!1308865) (regTwo!35448 (h!74256 (exprs!6964 lt!2519917))) (h!74256 (exprs!6964 lt!2519917)))))))

(declare-fun bm!638887 () Bool)

(declare-fun call!638893 () List!67932)

(assert (=> bm!638887 (= call!638893 call!638894)))

(declare-fun call!638896 () (Set Context!12928))

(declare-fun bm!638888 () Bool)

(declare-fun c!1308864 () Bool)

(assert (=> bm!638888 (= call!638896 (derivationStepZipperDown!2132 (ite c!1308864 (regTwo!35449 (h!74256 (exprs!6964 lt!2519917))) (regOne!35448 (h!74256 (exprs!6964 lt!2519917)))) (ite c!1308864 lt!2519944 (Context!12929 call!638894)) (h!74257 s!7408)))))

(declare-fun call!638895 () (Set Context!12928))

(declare-fun bm!638889 () Bool)

(assert (=> bm!638889 (= call!638895 (derivationStepZipperDown!2132 (ite c!1308864 (regOne!35449 (h!74256 (exprs!6964 lt!2519917))) (ite c!1308868 (regTwo!35448 (h!74256 (exprs!6964 lt!2519917))) (ite c!1308865 (regOne!35448 (h!74256 (exprs!6964 lt!2519917))) (reg!17797 (h!74256 (exprs!6964 lt!2519917)))))) (ite (or c!1308864 c!1308868) lt!2519944 (Context!12929 call!638893)) (h!74257 s!7408)))))

(declare-fun bm!638890 () Bool)

(declare-fun call!638892 () (Set Context!12928))

(assert (=> bm!638890 (= call!638892 call!638895)))

(declare-fun b!7035220 () Bool)

(declare-fun e!4229286 () (Set Context!12928))

(assert (=> b!7035220 (= e!4229286 (set.union call!638895 call!638896))))

(declare-fun b!7035221 () Bool)

(declare-fun e!4229287 () (Set Context!12928))

(declare-fun call!638891 () (Set Context!12928))

(assert (=> b!7035221 (= e!4229287 call!638891)))

(declare-fun b!7035222 () Bool)

(declare-fun e!4229285 () (Set Context!12928))

(assert (=> b!7035222 (= e!4229285 e!4229286)))

(assert (=> b!7035222 (= c!1308864 (is-Union!17468 (h!74256 (exprs!6964 lt!2519917))))))

(declare-fun d!2195630 () Bool)

(declare-fun c!1308866 () Bool)

(assert (=> d!2195630 (= c!1308866 (and (is-ElementMatch!17468 (h!74256 (exprs!6964 lt!2519917))) (= (c!1308831 (h!74256 (exprs!6964 lt!2519917))) (h!74257 s!7408))))))

(assert (=> d!2195630 (= (derivationStepZipperDown!2132 (h!74256 (exprs!6964 lt!2519917)) lt!2519944 (h!74257 s!7408)) e!4229285)))

(declare-fun b!7035219 () Bool)

(declare-fun c!1308867 () Bool)

(assert (=> b!7035219 (= c!1308867 (is-Star!17468 (h!74256 (exprs!6964 lt!2519917))))))

(declare-fun e!4229288 () (Set Context!12928))

(assert (=> b!7035219 (= e!4229287 e!4229288)))

(declare-fun b!7035223 () Bool)

(assert (=> b!7035223 (= e!4229288 call!638891)))

(declare-fun b!7035224 () Bool)

(assert (=> b!7035224 (= e!4229288 (as set.empty (Set Context!12928)))))

(declare-fun b!7035225 () Bool)

(assert (=> b!7035225 (= e!4229285 (set.insert lt!2519944 (as set.empty (Set Context!12928))))))

(declare-fun b!7035226 () Bool)

(declare-fun e!4229290 () Bool)

(assert (=> b!7035226 (= c!1308868 e!4229290)))

(declare-fun res!2871906 () Bool)

(assert (=> b!7035226 (=> (not res!2871906) (not e!4229290))))

(assert (=> b!7035226 (= res!2871906 (is-Concat!26313 (h!74256 (exprs!6964 lt!2519917))))))

(declare-fun e!4229289 () (Set Context!12928))

(assert (=> b!7035226 (= e!4229286 e!4229289)))

(declare-fun b!7035227 () Bool)

(assert (=> b!7035227 (= e!4229289 (set.union call!638896 call!638892))))

(declare-fun b!7035228 () Bool)

(assert (=> b!7035228 (= e!4229289 e!4229287)))

(assert (=> b!7035228 (= c!1308865 (is-Concat!26313 (h!74256 (exprs!6964 lt!2519917))))))

(declare-fun b!7035229 () Bool)

(assert (=> b!7035229 (= e!4229290 (nullable!7179 (regOne!35448 (h!74256 (exprs!6964 lt!2519917)))))))

(declare-fun bm!638891 () Bool)

(assert (=> bm!638891 (= call!638891 call!638892)))

(assert (= (and d!2195630 c!1308866) b!7035225))

(assert (= (and d!2195630 (not c!1308866)) b!7035222))

(assert (= (and b!7035222 c!1308864) b!7035220))

(assert (= (and b!7035222 (not c!1308864)) b!7035226))

(assert (= (and b!7035226 res!2871906) b!7035229))

(assert (= (and b!7035226 c!1308868) b!7035227))

(assert (= (and b!7035226 (not c!1308868)) b!7035228))

(assert (= (and b!7035228 c!1308865) b!7035221))

(assert (= (and b!7035228 (not c!1308865)) b!7035219))

(assert (= (and b!7035219 c!1308867) b!7035223))

(assert (= (and b!7035219 (not c!1308867)) b!7035224))

(assert (= (or b!7035221 b!7035223) bm!638887))

(assert (= (or b!7035221 b!7035223) bm!638891))

(assert (= (or b!7035227 bm!638891) bm!638890))

(assert (= (or b!7035227 bm!638887) bm!638886))

(assert (= (or b!7035220 bm!638890) bm!638889))

(assert (= (or b!7035220 b!7035227) bm!638888))

(declare-fun m!7743560 () Bool)

(assert (=> bm!638886 m!7743560))

(declare-fun m!7743562 () Bool)

(assert (=> b!7035229 m!7743562))

(declare-fun m!7743564 () Bool)

(assert (=> bm!638888 m!7743564))

(declare-fun m!7743566 () Bool)

(assert (=> bm!638889 m!7743566))

(assert (=> b!7035225 m!7743370))

(assert (=> b!7035067 d!2195630))

(declare-fun b!7035240 () Bool)

(declare-fun res!2871912 () Bool)

(declare-fun e!4229296 () Bool)

(assert (=> b!7035240 (=> (not res!2871912) (not e!4229296))))

(declare-fun lt!2520142 () List!67932)

(declare-fun size!41068 (List!67932) Int)

(assert (=> b!7035240 (= res!2871912 (= (size!41068 lt!2520142) (+ (size!41068 lt!2519960) (size!41068 (exprs!6964 ct2!306)))))))

(declare-fun b!7035241 () Bool)

(assert (=> b!7035241 (= e!4229296 (or (not (= (exprs!6964 ct2!306) Nil!67808)) (= lt!2520142 lt!2519960)))))

(declare-fun b!7035238 () Bool)

(declare-fun e!4229295 () List!67932)

(assert (=> b!7035238 (= e!4229295 (exprs!6964 ct2!306))))

(declare-fun b!7035239 () Bool)

(assert (=> b!7035239 (= e!4229295 (Cons!67808 (h!74256 lt!2519960) (++!15516 (t!381701 lt!2519960) (exprs!6964 ct2!306))))))

(declare-fun d!2195632 () Bool)

(assert (=> d!2195632 e!4229296))

(declare-fun res!2871911 () Bool)

(assert (=> d!2195632 (=> (not res!2871911) (not e!4229296))))

(declare-fun content!13542 (List!67932) (Set Regex!17468))

(assert (=> d!2195632 (= res!2871911 (= (content!13542 lt!2520142) (set.union (content!13542 lt!2519960) (content!13542 (exprs!6964 ct2!306)))))))

(assert (=> d!2195632 (= lt!2520142 e!4229295)))

(declare-fun c!1308871 () Bool)

(assert (=> d!2195632 (= c!1308871 (is-Nil!67808 lt!2519960))))

(assert (=> d!2195632 (= (++!15516 lt!2519960 (exprs!6964 ct2!306)) lt!2520142)))

(assert (= (and d!2195632 c!1308871) b!7035238))

(assert (= (and d!2195632 (not c!1308871)) b!7035239))

(assert (= (and d!2195632 res!2871911) b!7035240))

(assert (= (and b!7035240 res!2871912) b!7035241))

(declare-fun m!7743568 () Bool)

(assert (=> b!7035240 m!7743568))

(declare-fun m!7743570 () Bool)

(assert (=> b!7035240 m!7743570))

(declare-fun m!7743572 () Bool)

(assert (=> b!7035240 m!7743572))

(declare-fun m!7743574 () Bool)

(assert (=> b!7035239 m!7743574))

(declare-fun m!7743576 () Bool)

(assert (=> d!2195632 m!7743576))

(declare-fun m!7743578 () Bool)

(assert (=> d!2195632 m!7743578))

(declare-fun m!7743580 () Bool)

(assert (=> d!2195632 m!7743580))

(assert (=> b!7035067 d!2195632))

(declare-fun d!2195634 () Bool)

(assert (=> d!2195634 (forall!16384 (++!15516 lt!2519960 (exprs!6964 ct2!306)) lambda!415200)))

(declare-fun lt!2520143 () Unit!161614)

(assert (=> d!2195634 (= lt!2520143 (choose!53295 lt!2519960 (exprs!6964 ct2!306) lambda!415200))))

(assert (=> d!2195634 (forall!16384 lt!2519960 lambda!415200)))

(assert (=> d!2195634 (= (lemmaConcatPreservesForall!789 lt!2519960 (exprs!6964 ct2!306) lambda!415200) lt!2520143)))

(declare-fun bs!1871879 () Bool)

(assert (= bs!1871879 d!2195634))

(assert (=> bs!1871879 m!7743320))

(assert (=> bs!1871879 m!7743320))

(declare-fun m!7743582 () Bool)

(assert (=> bs!1871879 m!7743582))

(declare-fun m!7743584 () Bool)

(assert (=> bs!1871879 m!7743584))

(declare-fun m!7743586 () Bool)

(assert (=> bs!1871879 m!7743586))

(assert (=> b!7035067 d!2195634))

(declare-fun d!2195636 () Bool)

(declare-fun c!1308877 () Bool)

(declare-fun e!4229305 () Bool)

(assert (=> d!2195636 (= c!1308877 e!4229305)))

(declare-fun res!2871915 () Bool)

(assert (=> d!2195636 (=> (not res!2871915) (not e!4229305))))

(assert (=> d!2195636 (= res!2871915 (is-Cons!67808 (exprs!6964 lt!2519944)))))

(declare-fun e!4229303 () (Set Context!12928))

(assert (=> d!2195636 (= (derivationStepZipperUp!2078 lt!2519944 (h!74257 s!7408)) e!4229303)))

(declare-fun b!7035252 () Bool)

(declare-fun e!4229304 () (Set Context!12928))

(assert (=> b!7035252 (= e!4229303 e!4229304)))

(declare-fun c!1308876 () Bool)

(assert (=> b!7035252 (= c!1308876 (is-Cons!67808 (exprs!6964 lt!2519944)))))

(declare-fun b!7035253 () Bool)

(assert (=> b!7035253 (= e!4229304 (as set.empty (Set Context!12928)))))

(declare-fun bm!638894 () Bool)

(declare-fun call!638899 () (Set Context!12928))

(assert (=> bm!638894 (= call!638899 (derivationStepZipperDown!2132 (h!74256 (exprs!6964 lt!2519944)) (Context!12929 (t!381701 (exprs!6964 lt!2519944))) (h!74257 s!7408)))))

(declare-fun b!7035254 () Bool)

(assert (=> b!7035254 (= e!4229305 (nullable!7179 (h!74256 (exprs!6964 lt!2519944))))))

(declare-fun b!7035255 () Bool)

(assert (=> b!7035255 (= e!4229304 call!638899)))

(declare-fun b!7035256 () Bool)

(assert (=> b!7035256 (= e!4229303 (set.union call!638899 (derivationStepZipperUp!2078 (Context!12929 (t!381701 (exprs!6964 lt!2519944))) (h!74257 s!7408))))))

(assert (= (and d!2195636 res!2871915) b!7035254))

(assert (= (and d!2195636 c!1308877) b!7035256))

(assert (= (and d!2195636 (not c!1308877)) b!7035252))

(assert (= (and b!7035252 c!1308876) b!7035255))

(assert (= (and b!7035252 (not c!1308876)) b!7035253))

(assert (= (or b!7035256 b!7035255) bm!638894))

(declare-fun m!7743588 () Bool)

(assert (=> bm!638894 m!7743588))

(declare-fun m!7743590 () Bool)

(assert (=> b!7035254 m!7743590))

(declare-fun m!7743592 () Bool)

(assert (=> b!7035256 m!7743592))

(assert (=> b!7035067 d!2195636))

(declare-fun d!2195638 () Bool)

(declare-fun c!1308878 () Bool)

(assert (=> d!2195638 (= c!1308878 (isEmpty!39553 (_2!37344 lt!2519955)))))

(declare-fun e!4229306 () Bool)

(assert (=> d!2195638 (= (matchZipper!3008 lt!2519943 (_2!37344 lt!2519955)) e!4229306)))

(declare-fun b!7035257 () Bool)

(assert (=> b!7035257 (= e!4229306 (nullableZipper!2582 lt!2519943))))

(declare-fun b!7035258 () Bool)

(assert (=> b!7035258 (= e!4229306 (matchZipper!3008 (derivationStepZipper!2924 lt!2519943 (head!14269 (_2!37344 lt!2519955))) (tail!13560 (_2!37344 lt!2519955))))))

(assert (= (and d!2195638 c!1308878) b!7035257))

(assert (= (and d!2195638 (not c!1308878)) b!7035258))

(declare-fun m!7743594 () Bool)

(assert (=> d!2195638 m!7743594))

(declare-fun m!7743596 () Bool)

(assert (=> b!7035257 m!7743596))

(declare-fun m!7743598 () Bool)

(assert (=> b!7035258 m!7743598))

(assert (=> b!7035258 m!7743598))

(declare-fun m!7743600 () Bool)

(assert (=> b!7035258 m!7743600))

(declare-fun m!7743602 () Bool)

(assert (=> b!7035258 m!7743602))

(assert (=> b!7035258 m!7743600))

(assert (=> b!7035258 m!7743602))

(declare-fun m!7743604 () Bool)

(assert (=> b!7035258 m!7743604))

(assert (=> b!7035086 d!2195638))

(declare-fun d!2195640 () Bool)

(declare-fun c!1308879 () Bool)

(assert (=> d!2195640 (= c!1308879 (isEmpty!39553 (t!381702 s!7408)))))

(declare-fun e!4229307 () Bool)

(assert (=> d!2195640 (= (matchZipper!3008 lt!2519939 (t!381702 s!7408)) e!4229307)))

(declare-fun b!7035259 () Bool)

(assert (=> b!7035259 (= e!4229307 (nullableZipper!2582 lt!2519939))))

(declare-fun b!7035260 () Bool)

(assert (=> b!7035260 (= e!4229307 (matchZipper!3008 (derivationStepZipper!2924 lt!2519939 (head!14269 (t!381702 s!7408))) (tail!13560 (t!381702 s!7408))))))

(assert (= (and d!2195640 c!1308879) b!7035259))

(assert (= (and d!2195640 (not c!1308879)) b!7035260))

(declare-fun m!7743606 () Bool)

(assert (=> d!2195640 m!7743606))

(declare-fun m!7743608 () Bool)

(assert (=> b!7035259 m!7743608))

(declare-fun m!7743610 () Bool)

(assert (=> b!7035260 m!7743610))

(assert (=> b!7035260 m!7743610))

(declare-fun m!7743612 () Bool)

(assert (=> b!7035260 m!7743612))

(declare-fun m!7743614 () Bool)

(assert (=> b!7035260 m!7743614))

(assert (=> b!7035260 m!7743612))

(assert (=> b!7035260 m!7743614))

(declare-fun m!7743616 () Bool)

(assert (=> b!7035260 m!7743616))

(assert (=> b!7035087 d!2195640))

(assert (=> b!7035087 d!2195634))

(declare-fun d!2195642 () Bool)

(declare-fun dynLambda!27395 (Int Context!12928) (Set Context!12928))

(assert (=> d!2195642 (= (flatMap!2415 lt!2519934 lambda!415201) (dynLambda!27395 lambda!415201 lt!2519944))))

(declare-fun lt!2520146 () Unit!161614)

(declare-fun choose!53296 ((Set Context!12928) Context!12928 Int) Unit!161614)

(assert (=> d!2195642 (= lt!2520146 (choose!53296 lt!2519934 lt!2519944 lambda!415201))))

(assert (=> d!2195642 (= lt!2519934 (set.insert lt!2519944 (as set.empty (Set Context!12928))))))

(assert (=> d!2195642 (= (lemmaFlatMapOnSingletonSet!1929 lt!2519934 lt!2519944 lambda!415201) lt!2520146)))

(declare-fun b_lambda!266797 () Bool)

(assert (=> (not b_lambda!266797) (not d!2195642)))

(declare-fun bs!1871880 () Bool)

(assert (= bs!1871880 d!2195642))

(assert (=> bs!1871880 m!7743372))

(declare-fun m!7743618 () Bool)

(assert (=> bs!1871880 m!7743618))

(declare-fun m!7743620 () Bool)

(assert (=> bs!1871880 m!7743620))

(assert (=> bs!1871880 m!7743370))

(assert (=> b!7035076 d!2195642))

(assert (=> b!7035076 d!2195634))

(assert (=> b!7035076 d!2195636))

(declare-fun bs!1871881 () Bool)

(declare-fun d!2195644 () Bool)

(assert (= bs!1871881 (and d!2195644 b!7035080)))

(declare-fun lambda!415272 () Int)

(assert (=> bs!1871881 (= lambda!415272 lambda!415201)))

(assert (=> d!2195644 true))

(assert (=> d!2195644 (= (derivationStepZipper!2924 lt!2519934 (h!74257 s!7408)) (flatMap!2415 lt!2519934 lambda!415272))))

(declare-fun bs!1871882 () Bool)

(assert (= bs!1871882 d!2195644))

(declare-fun m!7743622 () Bool)

(assert (=> bs!1871882 m!7743622))

(assert (=> b!7035076 d!2195644))

(declare-fun d!2195646 () Bool)

(declare-fun choose!53297 ((Set Context!12928) Int) (Set Context!12928))

(assert (=> d!2195646 (= (flatMap!2415 lt!2519934 lambda!415201) (choose!53297 lt!2519934 lambda!415201))))

(declare-fun bs!1871883 () Bool)

(assert (= bs!1871883 d!2195646))

(declare-fun m!7743624 () Bool)

(assert (=> bs!1871883 m!7743624))

(assert (=> b!7035076 d!2195646))

(declare-fun d!2195648 () Bool)

(declare-fun c!1308882 () Bool)

(assert (=> d!2195648 (= c!1308882 (isEmpty!39553 s!7408))))

(declare-fun e!4229308 () Bool)

(assert (=> d!2195648 (= (matchZipper!3008 lt!2519934 s!7408) e!4229308)))

(declare-fun b!7035263 () Bool)

(assert (=> b!7035263 (= e!4229308 (nullableZipper!2582 lt!2519934))))

(declare-fun b!7035264 () Bool)

(assert (=> b!7035264 (= e!4229308 (matchZipper!3008 (derivationStepZipper!2924 lt!2519934 (head!14269 s!7408)) (tail!13560 s!7408)))))

(assert (= (and d!2195648 c!1308882) b!7035263))

(assert (= (and d!2195648 (not c!1308882)) b!7035264))

(assert (=> d!2195648 m!7743518))

(declare-fun m!7743626 () Bool)

(assert (=> b!7035263 m!7743626))

(assert (=> b!7035264 m!7743522))

(assert (=> b!7035264 m!7743522))

(declare-fun m!7743628 () Bool)

(assert (=> b!7035264 m!7743628))

(assert (=> b!7035264 m!7743526))

(assert (=> b!7035264 m!7743628))

(assert (=> b!7035264 m!7743526))

(declare-fun m!7743630 () Bool)

(assert (=> b!7035264 m!7743630))

(assert (=> b!7035077 d!2195648))

(assert (=> b!7035077 d!2195634))

(declare-fun bs!1871884 () Bool)

(declare-fun d!2195650 () Bool)

(assert (= bs!1871884 (and d!2195650 b!7035081)))

(declare-fun lambda!415275 () Int)

(assert (=> bs!1871884 (= lambda!415275 lambda!415200)))

(assert (=> d!2195650 (= (inv!86530 setElem!49211) (forall!16384 (exprs!6964 setElem!49211) lambda!415275))))

(declare-fun bs!1871885 () Bool)

(assert (= bs!1871885 d!2195650))

(declare-fun m!7743632 () Bool)

(assert (=> bs!1871885 m!7743632))

(assert (=> setNonEmpty!49211 d!2195650))

(assert (=> b!7035083 d!2195634))

(declare-fun d!2195652 () Bool)

(declare-fun c!1308883 () Bool)

(assert (=> d!2195652 (= c!1308883 (isEmpty!39553 (t!381702 s!7408)))))

(declare-fun e!4229309 () Bool)

(assert (=> d!2195652 (= (matchZipper!3008 lt!2519930 (t!381702 s!7408)) e!4229309)))

(declare-fun b!7035265 () Bool)

(assert (=> b!7035265 (= e!4229309 (nullableZipper!2582 lt!2519930))))

(declare-fun b!7035266 () Bool)

(assert (=> b!7035266 (= e!4229309 (matchZipper!3008 (derivationStepZipper!2924 lt!2519930 (head!14269 (t!381702 s!7408))) (tail!13560 (t!381702 s!7408))))))

(assert (= (and d!2195652 c!1308883) b!7035265))

(assert (= (and d!2195652 (not c!1308883)) b!7035266))

(assert (=> d!2195652 m!7743606))

(declare-fun m!7743634 () Bool)

(assert (=> b!7035265 m!7743634))

(assert (=> b!7035266 m!7743610))

(assert (=> b!7035266 m!7743610))

(declare-fun m!7743636 () Bool)

(assert (=> b!7035266 m!7743636))

(assert (=> b!7035266 m!7743614))

(assert (=> b!7035266 m!7743636))

(assert (=> b!7035266 m!7743614))

(declare-fun m!7743638 () Bool)

(assert (=> b!7035266 m!7743638))

(assert (=> b!7035083 d!2195652))

(declare-fun d!2195654 () Bool)

(declare-fun c!1308884 () Bool)

(assert (=> d!2195654 (= c!1308884 (isEmpty!39553 (t!381702 s!7408)))))

(declare-fun e!4229310 () Bool)

(assert (=> d!2195654 (= (matchZipper!3008 lt!2519963 (t!381702 s!7408)) e!4229310)))

(declare-fun b!7035267 () Bool)

(assert (=> b!7035267 (= e!4229310 (nullableZipper!2582 lt!2519963))))

(declare-fun b!7035268 () Bool)

(assert (=> b!7035268 (= e!4229310 (matchZipper!3008 (derivationStepZipper!2924 lt!2519963 (head!14269 (t!381702 s!7408))) (tail!13560 (t!381702 s!7408))))))

(assert (= (and d!2195654 c!1308884) b!7035267))

(assert (= (and d!2195654 (not c!1308884)) b!7035268))

(assert (=> d!2195654 m!7743606))

(declare-fun m!7743640 () Bool)

(assert (=> b!7035267 m!7743640))

(assert (=> b!7035268 m!7743610))

(assert (=> b!7035268 m!7743610))

(declare-fun m!7743642 () Bool)

(assert (=> b!7035268 m!7743642))

(assert (=> b!7035268 m!7743614))

(assert (=> b!7035268 m!7743642))

(assert (=> b!7035268 m!7743614))

(declare-fun m!7743644 () Bool)

(assert (=> b!7035268 m!7743644))

(assert (=> b!7035083 d!2195654))

(declare-fun d!2195656 () Bool)

(declare-fun c!1308885 () Bool)

(assert (=> d!2195656 (= c!1308885 (isEmpty!39553 (t!381702 s!7408)))))

(declare-fun e!4229311 () Bool)

(assert (=> d!2195656 (= (matchZipper!3008 lt!2519959 (t!381702 s!7408)) e!4229311)))

(declare-fun b!7035269 () Bool)

(assert (=> b!7035269 (= e!4229311 (nullableZipper!2582 lt!2519959))))

(declare-fun b!7035270 () Bool)

(assert (=> b!7035270 (= e!4229311 (matchZipper!3008 (derivationStepZipper!2924 lt!2519959 (head!14269 (t!381702 s!7408))) (tail!13560 (t!381702 s!7408))))))

(assert (= (and d!2195656 c!1308885) b!7035269))

(assert (= (and d!2195656 (not c!1308885)) b!7035270))

(assert (=> d!2195656 m!7743606))

(declare-fun m!7743646 () Bool)

(assert (=> b!7035269 m!7743646))

(assert (=> b!7035270 m!7743610))

(assert (=> b!7035270 m!7743610))

(declare-fun m!7743648 () Bool)

(assert (=> b!7035270 m!7743648))

(assert (=> b!7035270 m!7743614))

(assert (=> b!7035270 m!7743648))

(assert (=> b!7035270 m!7743614))

(declare-fun m!7743650 () Bool)

(assert (=> b!7035270 m!7743650))

(assert (=> b!7035083 d!2195656))

(declare-fun e!4229314 () Bool)

(declare-fun d!2195658 () Bool)

(assert (=> d!2195658 (= (matchZipper!3008 (set.union lt!2519930 lt!2519939) (t!381702 s!7408)) e!4229314)))

(declare-fun res!2871918 () Bool)

(assert (=> d!2195658 (=> res!2871918 e!4229314)))

(assert (=> d!2195658 (= res!2871918 (matchZipper!3008 lt!2519930 (t!381702 s!7408)))))

(declare-fun lt!2520149 () Unit!161614)

(declare-fun choose!53298 ((Set Context!12928) (Set Context!12928) List!67933) Unit!161614)

(assert (=> d!2195658 (= lt!2520149 (choose!53298 lt!2519930 lt!2519939 (t!381702 s!7408)))))

(assert (=> d!2195658 (= (lemmaZipperConcatMatchesSameAsBothZippers!1541 lt!2519930 lt!2519939 (t!381702 s!7408)) lt!2520149)))

(declare-fun b!7035273 () Bool)

(assert (=> b!7035273 (= e!4229314 (matchZipper!3008 lt!2519939 (t!381702 s!7408)))))

(assert (= (and d!2195658 (not res!2871918)) b!7035273))

(declare-fun m!7743652 () Bool)

(assert (=> d!2195658 m!7743652))

(assert (=> d!2195658 m!7743286))

(declare-fun m!7743654 () Bool)

(assert (=> d!2195658 m!7743654))

(assert (=> b!7035273 m!7743332))

(assert (=> b!7035083 d!2195658))

(declare-fun d!2195660 () Bool)

(declare-fun c!1308886 () Bool)

(assert (=> d!2195660 (= c!1308886 (isEmpty!39553 s!7408))))

(declare-fun e!4229315 () Bool)

(assert (=> d!2195660 (= (matchZipper!3008 lt!2519935 s!7408) e!4229315)))

(declare-fun b!7035274 () Bool)

(assert (=> b!7035274 (= e!4229315 (nullableZipper!2582 lt!2519935))))

(declare-fun b!7035275 () Bool)

(assert (=> b!7035275 (= e!4229315 (matchZipper!3008 (derivationStepZipper!2924 lt!2519935 (head!14269 s!7408)) (tail!13560 s!7408)))))

(assert (= (and d!2195660 c!1308886) b!7035274))

(assert (= (and d!2195660 (not c!1308886)) b!7035275))

(assert (=> d!2195660 m!7743518))

(declare-fun m!7743656 () Bool)

(assert (=> b!7035274 m!7743656))

(assert (=> b!7035275 m!7743522))

(assert (=> b!7035275 m!7743522))

(declare-fun m!7743658 () Bool)

(assert (=> b!7035275 m!7743658))

(assert (=> b!7035275 m!7743526))

(assert (=> b!7035275 m!7743658))

(assert (=> b!7035275 m!7743526))

(declare-fun m!7743660 () Bool)

(assert (=> b!7035275 m!7743660))

(assert (=> start!680062 d!2195660))

(declare-fun bs!1871886 () Bool)

(declare-fun d!2195662 () Bool)

(assert (= bs!1871886 (and d!2195662 b!7035081)))

(declare-fun lambda!415280 () Int)

(assert (=> bs!1871886 (= lambda!415280 lambda!415199)))

(assert (=> d!2195662 true))

(assert (=> d!2195662 (= (appendTo!589 z1!570 ct2!306) (map!15770 z1!570 lambda!415280))))

(declare-fun bs!1871887 () Bool)

(assert (= bs!1871887 d!2195662))

(declare-fun m!7743662 () Bool)

(assert (=> bs!1871887 m!7743662))

(assert (=> start!680062 d!2195662))

(declare-fun bs!1871888 () Bool)

(declare-fun d!2195664 () Bool)

(assert (= bs!1871888 (and d!2195664 b!7035081)))

(declare-fun lambda!415281 () Int)

(assert (=> bs!1871888 (= lambda!415281 lambda!415200)))

(declare-fun bs!1871889 () Bool)

(assert (= bs!1871889 (and d!2195664 d!2195650)))

(assert (=> bs!1871889 (= lambda!415281 lambda!415275)))

(assert (=> d!2195664 (= (inv!86530 ct2!306) (forall!16384 (exprs!6964 ct2!306) lambda!415281))))

(declare-fun bs!1871890 () Bool)

(assert (= bs!1871890 d!2195664))

(declare-fun m!7743664 () Bool)

(assert (=> bs!1871890 m!7743664))

(assert (=> start!680062 d!2195664))

(declare-fun bs!1871891 () Bool)

(declare-fun d!2195666 () Bool)

(assert (= bs!1871891 (and d!2195666 b!7035080)))

(declare-fun lambda!415282 () Int)

(assert (=> bs!1871891 (= lambda!415282 lambda!415201)))

(declare-fun bs!1871892 () Bool)

(assert (= bs!1871892 (and d!2195666 d!2195644)))

(assert (=> bs!1871892 (= lambda!415282 lambda!415272)))

(assert (=> d!2195666 true))

(assert (=> d!2195666 (= (derivationStepZipper!2924 lt!2519951 (h!74257 s!7408)) (flatMap!2415 lt!2519951 lambda!415282))))

(declare-fun bs!1871893 () Bool)

(assert (= bs!1871893 d!2195666))

(declare-fun m!7743666 () Bool)

(assert (=> bs!1871893 m!7743666))

(assert (=> b!7035072 d!2195666))

(declare-fun d!2195668 () Bool)

(declare-fun c!1308889 () Bool)

(declare-fun e!4229318 () Bool)

(assert (=> d!2195668 (= c!1308889 e!4229318)))

(declare-fun res!2871919 () Bool)

(assert (=> d!2195668 (=> (not res!2871919) (not e!4229318))))

(assert (=> d!2195668 (= res!2871919 (is-Cons!67808 (exprs!6964 lt!2519917)))))

(declare-fun e!4229316 () (Set Context!12928))

(assert (=> d!2195668 (= (derivationStepZipperUp!2078 lt!2519917 (h!74257 s!7408)) e!4229316)))

(declare-fun b!7035276 () Bool)

(declare-fun e!4229317 () (Set Context!12928))

(assert (=> b!7035276 (= e!4229316 e!4229317)))

(declare-fun c!1308888 () Bool)

(assert (=> b!7035276 (= c!1308888 (is-Cons!67808 (exprs!6964 lt!2519917)))))

(declare-fun b!7035277 () Bool)

(assert (=> b!7035277 (= e!4229317 (as set.empty (Set Context!12928)))))

(declare-fun bm!638895 () Bool)

(declare-fun call!638900 () (Set Context!12928))

(assert (=> bm!638895 (= call!638900 (derivationStepZipperDown!2132 (h!74256 (exprs!6964 lt!2519917)) (Context!12929 (t!381701 (exprs!6964 lt!2519917))) (h!74257 s!7408)))))

(declare-fun b!7035278 () Bool)

(assert (=> b!7035278 (= e!4229318 (nullable!7179 (h!74256 (exprs!6964 lt!2519917))))))

(declare-fun b!7035279 () Bool)

(assert (=> b!7035279 (= e!4229317 call!638900)))

(declare-fun b!7035280 () Bool)

(assert (=> b!7035280 (= e!4229316 (set.union call!638900 (derivationStepZipperUp!2078 (Context!12929 (t!381701 (exprs!6964 lt!2519917))) (h!74257 s!7408))))))

(assert (= (and d!2195668 res!2871919) b!7035278))

(assert (= (and d!2195668 c!1308889) b!7035280))

(assert (= (and d!2195668 (not c!1308889)) b!7035276))

(assert (= (and b!7035276 c!1308888) b!7035279))

(assert (= (and b!7035276 (not c!1308888)) b!7035277))

(assert (= (or b!7035280 b!7035279) bm!638895))

(declare-fun m!7743668 () Bool)

(assert (=> bm!638895 m!7743668))

(assert (=> b!7035278 m!7743272))

(declare-fun m!7743670 () Bool)

(assert (=> b!7035280 m!7743670))

(assert (=> b!7035072 d!2195668))

(declare-fun d!2195670 () Bool)

(assert (=> d!2195670 (= (flatMap!2415 lt!2519951 lambda!415201) (choose!53297 lt!2519951 lambda!415201))))

(declare-fun bs!1871894 () Bool)

(assert (= bs!1871894 d!2195670))

(declare-fun m!7743672 () Bool)

(assert (=> bs!1871894 m!7743672))

(assert (=> b!7035072 d!2195670))

(declare-fun d!2195672 () Bool)

(assert (=> d!2195672 (= (flatMap!2415 lt!2519951 lambda!415201) (dynLambda!27395 lambda!415201 lt!2519917))))

(declare-fun lt!2520152 () Unit!161614)

(assert (=> d!2195672 (= lt!2520152 (choose!53296 lt!2519951 lt!2519917 lambda!415201))))

(assert (=> d!2195672 (= lt!2519951 (set.insert lt!2519917 (as set.empty (Set Context!12928))))))

(assert (=> d!2195672 (= (lemmaFlatMapOnSingletonSet!1929 lt!2519951 lt!2519917 lambda!415201) lt!2520152)))

(declare-fun b_lambda!266799 () Bool)

(assert (=> (not b_lambda!266799) (not d!2195672)))

(declare-fun bs!1871895 () Bool)

(assert (= bs!1871895 d!2195672))

(assert (=> bs!1871895 m!7743278))

(declare-fun m!7743674 () Bool)

(assert (=> bs!1871895 m!7743674))

(declare-fun m!7743676 () Bool)

(assert (=> bs!1871895 m!7743676))

(assert (=> bs!1871895 m!7743284))

(assert (=> b!7035072 d!2195672))

(declare-fun b!7035289 () Bool)

(declare-fun e!4229324 () List!67933)

(assert (=> b!7035289 (= e!4229324 (_2!37344 lt!2519955))))

(declare-fun d!2195674 () Bool)

(declare-fun e!4229323 () Bool)

(assert (=> d!2195674 e!4229323))

(declare-fun res!2871925 () Bool)

(assert (=> d!2195674 (=> (not res!2871925) (not e!4229323))))

(declare-fun lt!2520155 () List!67933)

(declare-fun content!13543 (List!67933) (Set C!35206))

(assert (=> d!2195674 (= res!2871925 (= (content!13543 lt!2520155) (set.union (content!13543 (_1!37344 lt!2519955)) (content!13543 (_2!37344 lt!2519955)))))))

(assert (=> d!2195674 (= lt!2520155 e!4229324)))

(declare-fun c!1308892 () Bool)

(assert (=> d!2195674 (= c!1308892 (is-Nil!67809 (_1!37344 lt!2519955)))))

(assert (=> d!2195674 (= (++!15517 (_1!37344 lt!2519955) (_2!37344 lt!2519955)) lt!2520155)))

(declare-fun b!7035292 () Bool)

(assert (=> b!7035292 (= e!4229323 (or (not (= (_2!37344 lt!2519955) Nil!67809)) (= lt!2520155 (_1!37344 lt!2519955))))))

(declare-fun b!7035291 () Bool)

(declare-fun res!2871924 () Bool)

(assert (=> b!7035291 (=> (not res!2871924) (not e!4229323))))

(declare-fun size!41069 (List!67933) Int)

(assert (=> b!7035291 (= res!2871924 (= (size!41069 lt!2520155) (+ (size!41069 (_1!37344 lt!2519955)) (size!41069 (_2!37344 lt!2519955)))))))

(declare-fun b!7035290 () Bool)

(assert (=> b!7035290 (= e!4229324 (Cons!67809 (h!74257 (_1!37344 lt!2519955)) (++!15517 (t!381702 (_1!37344 lt!2519955)) (_2!37344 lt!2519955))))))

(assert (= (and d!2195674 c!1308892) b!7035289))

(assert (= (and d!2195674 (not c!1308892)) b!7035290))

(assert (= (and d!2195674 res!2871925) b!7035291))

(assert (= (and b!7035291 res!2871924) b!7035292))

(declare-fun m!7743678 () Bool)

(assert (=> d!2195674 m!7743678))

(declare-fun m!7743680 () Bool)

(assert (=> d!2195674 m!7743680))

(declare-fun m!7743682 () Bool)

(assert (=> d!2195674 m!7743682))

(declare-fun m!7743684 () Bool)

(assert (=> b!7035291 m!7743684))

(declare-fun m!7743686 () Bool)

(assert (=> b!7035291 m!7743686))

(declare-fun m!7743688 () Bool)

(assert (=> b!7035291 m!7743688))

(declare-fun m!7743690 () Bool)

(assert (=> b!7035290 m!7743690))

(assert (=> b!7035073 d!2195674))

(declare-fun d!2195676 () Bool)

(declare-fun nullableFct!2730 (Regex!17468) Bool)

(assert (=> d!2195676 (= (nullable!7179 (h!74256 (exprs!6964 lt!2519917))) (nullableFct!2730 (h!74256 (exprs!6964 lt!2519917))))))

(declare-fun bs!1871896 () Bool)

(assert (= bs!1871896 d!2195676))

(declare-fun m!7743692 () Bool)

(assert (=> bs!1871896 m!7743692))

(assert (=> b!7035064 d!2195676))

(declare-fun d!2195678 () Bool)

(assert (=> d!2195678 (= (tail!13558 (exprs!6964 lt!2519917)) (t!381701 (exprs!6964 lt!2519917)))))

(assert (=> b!7035064 d!2195678))

(declare-fun d!2195680 () Bool)

(assert (=> d!2195680 (= (get!23758 lt!2519949) (v!53160 lt!2519949))))

(assert (=> b!7035085 d!2195680))

(declare-fun b!7035311 () Bool)

(declare-fun e!4229335 () Bool)

(declare-fun lt!2520163 () Option!16873)

(assert (=> b!7035311 (= e!4229335 (not (isDefined!13574 lt!2520163)))))

(declare-fun b!7035313 () Bool)

(declare-fun res!2871936 () Bool)

(declare-fun e!4229336 () Bool)

(assert (=> b!7035313 (=> (not res!2871936) (not e!4229336))))

(assert (=> b!7035313 (= res!2871936 (matchZipper!3008 lt!2519943 (_2!37344 (get!23758 lt!2520163))))))

(declare-fun b!7035314 () Bool)

(declare-fun e!4229337 () Bool)

(assert (=> b!7035314 (= e!4229337 (matchZipper!3008 lt!2519943 s!7408))))

(declare-fun b!7035315 () Bool)

(declare-fun lt!2520164 () Unit!161614)

(declare-fun lt!2520162 () Unit!161614)

(assert (=> b!7035315 (= lt!2520164 lt!2520162)))

(assert (=> b!7035315 (= (++!15517 (++!15517 Nil!67809 (Cons!67809 (h!74257 s!7408) Nil!67809)) (t!381702 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2926 (List!67933 C!35206 List!67933 List!67933) Unit!161614)

(assert (=> b!7035315 (= lt!2520162 (lemmaMoveElementToOtherListKeepsConcatEq!2926 Nil!67809 (h!74257 s!7408) (t!381702 s!7408) s!7408))))

(declare-fun e!4229339 () Option!16873)

(assert (=> b!7035315 (= e!4229339 (findConcatSeparationZippers!389 lt!2519964 lt!2519943 (++!15517 Nil!67809 (Cons!67809 (h!74257 s!7408) Nil!67809)) (t!381702 s!7408) s!7408))))

(declare-fun b!7035316 () Bool)

(declare-fun res!2871939 () Bool)

(assert (=> b!7035316 (=> (not res!2871939) (not e!4229336))))

(assert (=> b!7035316 (= res!2871939 (matchZipper!3008 lt!2519964 (_1!37344 (get!23758 lt!2520163))))))

(declare-fun b!7035317 () Bool)

(assert (=> b!7035317 (= e!4229339 None!16872)))

(declare-fun b!7035318 () Bool)

(declare-fun e!4229338 () Option!16873)

(assert (=> b!7035318 (= e!4229338 e!4229339)))

(declare-fun c!1308898 () Bool)

(assert (=> b!7035318 (= c!1308898 (is-Nil!67809 s!7408))))

(declare-fun b!7035319 () Bool)

(assert (=> b!7035319 (= e!4229336 (= (++!15517 (_1!37344 (get!23758 lt!2520163)) (_2!37344 (get!23758 lt!2520163))) s!7408))))

(declare-fun d!2195682 () Bool)

(assert (=> d!2195682 e!4229335))

(declare-fun res!2871937 () Bool)

(assert (=> d!2195682 (=> res!2871937 e!4229335)))

(assert (=> d!2195682 (= res!2871937 e!4229336)))

(declare-fun res!2871940 () Bool)

(assert (=> d!2195682 (=> (not res!2871940) (not e!4229336))))

(assert (=> d!2195682 (= res!2871940 (isDefined!13574 lt!2520163))))

(assert (=> d!2195682 (= lt!2520163 e!4229338)))

(declare-fun c!1308897 () Bool)

(assert (=> d!2195682 (= c!1308897 e!4229337)))

(declare-fun res!2871938 () Bool)

(assert (=> d!2195682 (=> (not res!2871938) (not e!4229337))))

(assert (=> d!2195682 (= res!2871938 (matchZipper!3008 lt!2519964 Nil!67809))))

(assert (=> d!2195682 (= (++!15517 Nil!67809 s!7408) s!7408)))

(assert (=> d!2195682 (= (findConcatSeparationZippers!389 lt!2519964 lt!2519943 Nil!67809 s!7408 s!7408) lt!2520163)))

(declare-fun b!7035312 () Bool)

(assert (=> b!7035312 (= e!4229338 (Some!16872 (tuple2!68083 Nil!67809 s!7408)))))

(assert (= (and d!2195682 res!2871938) b!7035314))

(assert (= (and d!2195682 c!1308897) b!7035312))

(assert (= (and d!2195682 (not c!1308897)) b!7035318))

(assert (= (and b!7035318 c!1308898) b!7035317))

(assert (= (and b!7035318 (not c!1308898)) b!7035315))

(assert (= (and d!2195682 res!2871940) b!7035316))

(assert (= (and b!7035316 res!2871939) b!7035313))

(assert (= (and b!7035313 res!2871936) b!7035319))

(assert (= (and d!2195682 (not res!2871937)) b!7035311))

(declare-fun m!7743694 () Bool)

(assert (=> b!7035314 m!7743694))

(declare-fun m!7743696 () Bool)

(assert (=> d!2195682 m!7743696))

(declare-fun m!7743698 () Bool)

(assert (=> d!2195682 m!7743698))

(declare-fun m!7743700 () Bool)

(assert (=> d!2195682 m!7743700))

(declare-fun m!7743702 () Bool)

(assert (=> b!7035319 m!7743702))

(declare-fun m!7743704 () Bool)

(assert (=> b!7035319 m!7743704))

(assert (=> b!7035311 m!7743696))

(assert (=> b!7035313 m!7743702))

(declare-fun m!7743706 () Bool)

(assert (=> b!7035313 m!7743706))

(declare-fun m!7743708 () Bool)

(assert (=> b!7035315 m!7743708))

(assert (=> b!7035315 m!7743708))

(declare-fun m!7743710 () Bool)

(assert (=> b!7035315 m!7743710))

(declare-fun m!7743712 () Bool)

(assert (=> b!7035315 m!7743712))

(assert (=> b!7035315 m!7743708))

(declare-fun m!7743714 () Bool)

(assert (=> b!7035315 m!7743714))

(assert (=> b!7035316 m!7743702))

(declare-fun m!7743716 () Bool)

(assert (=> b!7035316 m!7743716))

(assert (=> b!7035085 d!2195682))

(declare-fun d!2195684 () Bool)

(declare-fun isEmpty!39556 (Option!16873) Bool)

(assert (=> d!2195684 (= (isDefined!13574 lt!2519949) (not (isEmpty!39556 lt!2519949)))))

(declare-fun bs!1871897 () Bool)

(assert (= bs!1871897 d!2195684))

(declare-fun m!7743718 () Bool)

(assert (=> bs!1871897 m!7743718))

(assert (=> b!7035085 d!2195684))

(declare-fun d!2195686 () Bool)

(declare-fun c!1308899 () Bool)

(assert (=> d!2195686 (= c!1308899 (isEmpty!39553 (_1!37344 lt!2519955)))))

(declare-fun e!4229340 () Bool)

(assert (=> d!2195686 (= (matchZipper!3008 lt!2519964 (_1!37344 lt!2519955)) e!4229340)))

(declare-fun b!7035320 () Bool)

(assert (=> b!7035320 (= e!4229340 (nullableZipper!2582 lt!2519964))))

(declare-fun b!7035321 () Bool)

(assert (=> b!7035321 (= e!4229340 (matchZipper!3008 (derivationStepZipper!2924 lt!2519964 (head!14269 (_1!37344 lt!2519955))) (tail!13560 (_1!37344 lt!2519955))))))

(assert (= (and d!2195686 c!1308899) b!7035320))

(assert (= (and d!2195686 (not c!1308899)) b!7035321))

(assert (=> d!2195686 m!7743364))

(declare-fun m!7743720 () Bool)

(assert (=> b!7035320 m!7743720))

(declare-fun m!7743722 () Bool)

(assert (=> b!7035321 m!7743722))

(assert (=> b!7035321 m!7743722))

(declare-fun m!7743724 () Bool)

(assert (=> b!7035321 m!7743724))

(declare-fun m!7743726 () Bool)

(assert (=> b!7035321 m!7743726))

(assert (=> b!7035321 m!7743724))

(assert (=> b!7035321 m!7743726))

(declare-fun m!7743728 () Bool)

(assert (=> b!7035321 m!7743728))

(assert (=> b!7035085 d!2195686))

(declare-fun d!2195688 () Bool)

(assert (=> d!2195688 (isDefined!13574 (findConcatSeparationZippers!389 lt!2519964 (set.insert ct2!306 (as set.empty (Set Context!12928))) Nil!67809 s!7408 s!7408))))

(declare-fun lt!2520167 () Unit!161614)

(declare-fun choose!53299 ((Set Context!12928) Context!12928 List!67933) Unit!161614)

(assert (=> d!2195688 (= lt!2520167 (choose!53299 lt!2519964 ct2!306 s!7408))))

(assert (=> d!2195688 (matchZipper!3008 (appendTo!589 lt!2519964 ct2!306) s!7408)))

(assert (=> d!2195688 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!377 lt!2519964 ct2!306 s!7408) lt!2520167)))

(declare-fun bs!1871898 () Bool)

(assert (= bs!1871898 d!2195688))

(declare-fun m!7743730 () Bool)

(assert (=> bs!1871898 m!7743730))

(declare-fun m!7743732 () Bool)

(assert (=> bs!1871898 m!7743732))

(declare-fun m!7743734 () Bool)

(assert (=> bs!1871898 m!7743734))

(declare-fun m!7743736 () Bool)

(assert (=> bs!1871898 m!7743736))

(assert (=> bs!1871898 m!7743378))

(declare-fun m!7743738 () Bool)

(assert (=> bs!1871898 m!7743738))

(assert (=> bs!1871898 m!7743734))

(assert (=> bs!1871898 m!7743378))

(assert (=> bs!1871898 m!7743730))

(assert (=> b!7035085 d!2195688))

(assert (=> b!7035080 d!2195628))

(declare-fun bs!1871899 () Bool)

(declare-fun d!2195690 () Bool)

(assert (= bs!1871899 (and d!2195690 b!7035080)))

(declare-fun lambda!415283 () Int)

(assert (=> bs!1871899 (= lambda!415283 lambda!415201)))

(declare-fun bs!1871900 () Bool)

(assert (= bs!1871900 (and d!2195690 d!2195644)))

(assert (=> bs!1871900 (= lambda!415283 lambda!415272)))

(declare-fun bs!1871901 () Bool)

(assert (= bs!1871901 (and d!2195690 d!2195666)))

(assert (=> bs!1871901 (= lambda!415283 lambda!415282)))

(assert (=> d!2195690 true))

(assert (=> d!2195690 (= (derivationStepZipper!2924 lt!2519952 (h!74257 s!7408)) (flatMap!2415 lt!2519952 lambda!415283))))

(declare-fun bs!1871902 () Bool)

(assert (= bs!1871902 d!2195690))

(declare-fun m!7743740 () Bool)

(assert (=> bs!1871902 m!7743740))

(assert (=> b!7035080 d!2195690))

(declare-fun d!2195692 () Bool)

(assert (=> d!2195692 (= (flatMap!2415 lt!2519952 lambda!415201) (choose!53297 lt!2519952 lambda!415201))))

(declare-fun bs!1871903 () Bool)

(assert (= bs!1871903 d!2195692))

(declare-fun m!7743742 () Bool)

(assert (=> bs!1871903 m!7743742))

(assert (=> b!7035080 d!2195692))

(declare-fun d!2195694 () Bool)

(assert (=> d!2195694 (= (flatMap!2415 lt!2519952 lambda!415201) (dynLambda!27395 lambda!415201 lt!2519953))))

(declare-fun lt!2520168 () Unit!161614)

(assert (=> d!2195694 (= lt!2520168 (choose!53296 lt!2519952 lt!2519953 lambda!415201))))

(assert (=> d!2195694 (= lt!2519952 (set.insert lt!2519953 (as set.empty (Set Context!12928))))))

(assert (=> d!2195694 (= (lemmaFlatMapOnSingletonSet!1929 lt!2519952 lt!2519953 lambda!415201) lt!2520168)))

(declare-fun b_lambda!266801 () Bool)

(assert (=> (not b_lambda!266801) (not d!2195694)))

(declare-fun bs!1871904 () Bool)

(assert (= bs!1871904 d!2195694))

(assert (=> bs!1871904 m!7743264))

(declare-fun m!7743744 () Bool)

(assert (=> bs!1871904 m!7743744))

(declare-fun m!7743746 () Bool)

(assert (=> bs!1871904 m!7743746))

(assert (=> bs!1871904 m!7743334))

(assert (=> b!7035080 d!2195694))

(declare-fun d!2195696 () Bool)

(declare-fun c!1308901 () Bool)

(declare-fun e!4229343 () Bool)

(assert (=> d!2195696 (= c!1308901 e!4229343)))

(declare-fun res!2871941 () Bool)

(assert (=> d!2195696 (=> (not res!2871941) (not e!4229343))))

(assert (=> d!2195696 (= res!2871941 (is-Cons!67808 (exprs!6964 lt!2519953)))))

(declare-fun e!4229341 () (Set Context!12928))

(assert (=> d!2195696 (= (derivationStepZipperUp!2078 lt!2519953 (h!74257 s!7408)) e!4229341)))

(declare-fun b!7035322 () Bool)

(declare-fun e!4229342 () (Set Context!12928))

(assert (=> b!7035322 (= e!4229341 e!4229342)))

(declare-fun c!1308900 () Bool)

(assert (=> b!7035322 (= c!1308900 (is-Cons!67808 (exprs!6964 lt!2519953)))))

(declare-fun b!7035323 () Bool)

(assert (=> b!7035323 (= e!4229342 (as set.empty (Set Context!12928)))))

(declare-fun bm!638896 () Bool)

(declare-fun call!638901 () (Set Context!12928))

(assert (=> bm!638896 (= call!638901 (derivationStepZipperDown!2132 (h!74256 (exprs!6964 lt!2519953)) (Context!12929 (t!381701 (exprs!6964 lt!2519953))) (h!74257 s!7408)))))

(declare-fun b!7035324 () Bool)

(assert (=> b!7035324 (= e!4229343 (nullable!7179 (h!74256 (exprs!6964 lt!2519953))))))

(declare-fun b!7035325 () Bool)

(assert (=> b!7035325 (= e!4229342 call!638901)))

(declare-fun b!7035326 () Bool)

(assert (=> b!7035326 (= e!4229341 (set.union call!638901 (derivationStepZipperUp!2078 (Context!12929 (t!381701 (exprs!6964 lt!2519953))) (h!74257 s!7408))))))

(assert (= (and d!2195696 res!2871941) b!7035324))

(assert (= (and d!2195696 c!1308901) b!7035326))

(assert (= (and d!2195696 (not c!1308901)) b!7035322))

(assert (= (and b!7035322 c!1308900) b!7035325))

(assert (= (and b!7035322 (not c!1308900)) b!7035323))

(assert (= (or b!7035326 b!7035325) bm!638896))

(declare-fun m!7743748 () Bool)

(assert (=> bm!638896 m!7743748))

(declare-fun m!7743750 () Bool)

(assert (=> b!7035324 m!7743750))

(declare-fun m!7743752 () Bool)

(assert (=> b!7035326 m!7743752))

(assert (=> b!7035080 d!2195696))

(declare-fun b!7035329 () Bool)

(declare-fun res!2871943 () Bool)

(declare-fun e!4229345 () Bool)

(assert (=> b!7035329 (=> (not res!2871943) (not e!4229345))))

(declare-fun lt!2520169 () List!67932)

(assert (=> b!7035329 (= res!2871943 (= (size!41068 lt!2520169) (+ (size!41068 (exprs!6964 lt!2519917)) (size!41068 (exprs!6964 ct2!306)))))))

(declare-fun b!7035330 () Bool)

(assert (=> b!7035330 (= e!4229345 (or (not (= (exprs!6964 ct2!306) Nil!67808)) (= lt!2520169 (exprs!6964 lt!2519917))))))

(declare-fun b!7035327 () Bool)

(declare-fun e!4229344 () List!67932)

(assert (=> b!7035327 (= e!4229344 (exprs!6964 ct2!306))))

(declare-fun b!7035328 () Bool)

(assert (=> b!7035328 (= e!4229344 (Cons!67808 (h!74256 (exprs!6964 lt!2519917)) (++!15516 (t!381701 (exprs!6964 lt!2519917)) (exprs!6964 ct2!306))))))

(declare-fun d!2195698 () Bool)

(assert (=> d!2195698 e!4229345))

(declare-fun res!2871942 () Bool)

(assert (=> d!2195698 (=> (not res!2871942) (not e!4229345))))

(assert (=> d!2195698 (= res!2871942 (= (content!13542 lt!2520169) (set.union (content!13542 (exprs!6964 lt!2519917)) (content!13542 (exprs!6964 ct2!306)))))))

(assert (=> d!2195698 (= lt!2520169 e!4229344)))

(declare-fun c!1308902 () Bool)

(assert (=> d!2195698 (= c!1308902 (is-Nil!67808 (exprs!6964 lt!2519917)))))

(assert (=> d!2195698 (= (++!15516 (exprs!6964 lt!2519917) (exprs!6964 ct2!306)) lt!2520169)))

(assert (= (and d!2195698 c!1308902) b!7035327))

(assert (= (and d!2195698 (not c!1308902)) b!7035328))

(assert (= (and d!2195698 res!2871942) b!7035329))

(assert (= (and b!7035329 res!2871943) b!7035330))

(declare-fun m!7743754 () Bool)

(assert (=> b!7035329 m!7743754))

(declare-fun m!7743756 () Bool)

(assert (=> b!7035329 m!7743756))

(assert (=> b!7035329 m!7743572))

(declare-fun m!7743758 () Bool)

(assert (=> b!7035328 m!7743758))

(declare-fun m!7743760 () Bool)

(assert (=> d!2195698 m!7743760))

(declare-fun m!7743762 () Bool)

(assert (=> d!2195698 m!7743762))

(assert (=> d!2195698 m!7743580))

(assert (=> b!7035081 d!2195698))

(assert (=> b!7035081 d!2195628))

(declare-fun d!2195700 () Bool)

(declare-fun e!4229348 () Bool)

(assert (=> d!2195700 e!4229348))

(declare-fun res!2871946 () Bool)

(assert (=> d!2195700 (=> (not res!2871946) (not e!4229348))))

(declare-fun lt!2520172 () Context!12928)

(declare-fun dynLambda!27396 (Int Context!12928) Context!12928)

(assert (=> d!2195700 (= res!2871946 (= lt!2519916 (dynLambda!27396 lambda!415199 lt!2520172)))))

(declare-fun choose!53300 ((Set Context!12928) Int Context!12928) Context!12928)

(assert (=> d!2195700 (= lt!2520172 (choose!53300 z1!570 lambda!415199 lt!2519916))))

(assert (=> d!2195700 (set.member lt!2519916 (map!15770 z1!570 lambda!415199))))

(assert (=> d!2195700 (= (mapPost2!309 z1!570 lambda!415199 lt!2519916) lt!2520172)))

(declare-fun b!7035334 () Bool)

(assert (=> b!7035334 (= e!4229348 (set.member lt!2520172 z1!570))))

(assert (= (and d!2195700 res!2871946) b!7035334))

(declare-fun b_lambda!266803 () Bool)

(assert (=> (not b_lambda!266803) (not d!2195700)))

(declare-fun m!7743764 () Bool)

(assert (=> d!2195700 m!7743764))

(declare-fun m!7743766 () Bool)

(assert (=> d!2195700 m!7743766))

(declare-fun m!7743768 () Bool)

(assert (=> d!2195700 m!7743768))

(declare-fun m!7743770 () Bool)

(assert (=> d!2195700 m!7743770))

(declare-fun m!7743772 () Bool)

(assert (=> b!7035334 m!7743772))

(assert (=> b!7035081 d!2195700))

(assert (=> b!7035070 d!2195640))

(assert (=> b!7035071 d!2195640))

(assert (=> b!7035071 d!2195634))

(declare-fun d!2195702 () Bool)

(declare-fun lt!2520175 () Int)

(assert (=> d!2195702 (>= lt!2520175 0)))

(declare-fun e!4229351 () Int)

(assert (=> d!2195702 (= lt!2520175 e!4229351)))

(declare-fun c!1308906 () Bool)

(assert (=> d!2195702 (= c!1308906 (is-Cons!67808 (exprs!6964 lt!2519942)))))

(assert (=> d!2195702 (= (contextDepthTotal!503 lt!2519942) lt!2520175)))

(declare-fun b!7035339 () Bool)

(declare-fun regexDepthTotal!305 (Regex!17468) Int)

(assert (=> b!7035339 (= e!4229351 (+ (regexDepthTotal!305 (h!74256 (exprs!6964 lt!2519942))) (contextDepthTotal!503 (Context!12929 (t!381701 (exprs!6964 lt!2519942))))))))

(declare-fun b!7035340 () Bool)

(assert (=> b!7035340 (= e!4229351 1)))

(assert (= (and d!2195702 c!1308906) b!7035339))

(assert (= (and d!2195702 (not c!1308906)) b!7035340))

(declare-fun m!7743774 () Bool)

(assert (=> b!7035339 m!7743774))

(declare-fun m!7743776 () Bool)

(assert (=> b!7035339 m!7743776))

(assert (=> b!7035082 d!2195702))

(declare-fun d!2195704 () Bool)

(assert (=> d!2195704 (= (flatMap!2415 lt!2519964 lambda!415201) (choose!53297 lt!2519964 lambda!415201))))

(declare-fun bs!1871905 () Bool)

(assert (= bs!1871905 d!2195704))

(declare-fun m!7743778 () Bool)

(assert (=> bs!1871905 m!7743778))

(assert (=> b!7035082 d!2195704))

(declare-fun d!2195706 () Bool)

(declare-fun e!4229352 () Bool)

(assert (=> d!2195706 e!4229352))

(declare-fun res!2871948 () Bool)

(assert (=> d!2195706 (=> (not res!2871948) (not e!4229352))))

(declare-fun lt!2520176 () List!67934)

(assert (=> d!2195706 (= res!2871948 (noDuplicate!2630 lt!2520176))))

(assert (=> d!2195706 (= lt!2520176 (choose!53293 z1!570))))

(assert (=> d!2195706 (= (toList!10811 z1!570) lt!2520176)))

(declare-fun b!7035341 () Bool)

(assert (=> b!7035341 (= e!4229352 (= (content!13541 lt!2520176) z1!570))))

(assert (= (and d!2195706 res!2871948) b!7035341))

(declare-fun m!7743780 () Bool)

(assert (=> d!2195706 m!7743780))

(declare-fun m!7743782 () Bool)

(assert (=> d!2195706 m!7743782))

(declare-fun m!7743784 () Bool)

(assert (=> b!7035341 m!7743784))

(assert (=> b!7035082 d!2195706))

(declare-fun d!2195708 () Bool)

(declare-fun lt!2520177 () Int)

(assert (=> d!2195708 (>= lt!2520177 0)))

(declare-fun e!4229353 () Int)

(assert (=> d!2195708 (= lt!2520177 e!4229353)))

(declare-fun c!1308907 () Bool)

(assert (=> d!2195708 (= c!1308907 (is-Cons!67808 (exprs!6964 lt!2519917)))))

(assert (=> d!2195708 (= (contextDepthTotal!503 lt!2519917) lt!2520177)))

(declare-fun b!7035342 () Bool)

(assert (=> b!7035342 (= e!4229353 (+ (regexDepthTotal!305 (h!74256 (exprs!6964 lt!2519917))) (contextDepthTotal!503 (Context!12929 (t!381701 (exprs!6964 lt!2519917))))))))

(declare-fun b!7035343 () Bool)

(assert (=> b!7035343 (= e!4229353 1)))

(assert (= (and d!2195708 c!1308907) b!7035342))

(assert (= (and d!2195708 (not c!1308907)) b!7035343))

(declare-fun m!7743786 () Bool)

(assert (=> b!7035342 m!7743786))

(declare-fun m!7743788 () Bool)

(assert (=> b!7035342 m!7743788))

(assert (=> b!7035082 d!2195708))

(assert (=> b!7035082 d!2195634))

(declare-fun d!2195710 () Bool)

(declare-fun choose!53301 ((Set Context!12928) Int) (Set Context!12928))

(assert (=> d!2195710 (= (map!15770 lt!2519964 lambda!415199) (choose!53301 lt!2519964 lambda!415199))))

(declare-fun bs!1871906 () Bool)

(assert (= bs!1871906 d!2195710))

(declare-fun m!7743790 () Bool)

(assert (=> bs!1871906 m!7743790))

(assert (=> b!7035082 d!2195710))

(declare-fun d!2195712 () Bool)

(declare-fun c!1308909 () Bool)

(declare-fun e!4229356 () Bool)

(assert (=> d!2195712 (= c!1308909 e!4229356)))

(declare-fun res!2871949 () Bool)

(assert (=> d!2195712 (=> (not res!2871949) (not e!4229356))))

(assert (=> d!2195712 (= res!2871949 (is-Cons!67808 (exprs!6964 lt!2519942)))))

(declare-fun e!4229354 () (Set Context!12928))

(assert (=> d!2195712 (= (derivationStepZipperUp!2078 lt!2519942 (h!74257 s!7408)) e!4229354)))

(declare-fun b!7035344 () Bool)

(declare-fun e!4229355 () (Set Context!12928))

(assert (=> b!7035344 (= e!4229354 e!4229355)))

(declare-fun c!1308908 () Bool)

(assert (=> b!7035344 (= c!1308908 (is-Cons!67808 (exprs!6964 lt!2519942)))))

(declare-fun b!7035345 () Bool)

(assert (=> b!7035345 (= e!4229355 (as set.empty (Set Context!12928)))))

(declare-fun bm!638897 () Bool)

(declare-fun call!638902 () (Set Context!12928))

(assert (=> bm!638897 (= call!638902 (derivationStepZipperDown!2132 (h!74256 (exprs!6964 lt!2519942)) (Context!12929 (t!381701 (exprs!6964 lt!2519942))) (h!74257 s!7408)))))

(declare-fun b!7035346 () Bool)

(assert (=> b!7035346 (= e!4229356 (nullable!7179 (h!74256 (exprs!6964 lt!2519942))))))

(declare-fun b!7035347 () Bool)

(assert (=> b!7035347 (= e!4229355 call!638902)))

(declare-fun b!7035348 () Bool)

(assert (=> b!7035348 (= e!4229354 (set.union call!638902 (derivationStepZipperUp!2078 (Context!12929 (t!381701 (exprs!6964 lt!2519942))) (h!74257 s!7408))))))

(assert (= (and d!2195712 res!2871949) b!7035346))

(assert (= (and d!2195712 c!1308909) b!7035348))

(assert (= (and d!2195712 (not c!1308909)) b!7035344))

(assert (= (and b!7035344 c!1308908) b!7035347))

(assert (= (and b!7035344 (not c!1308908)) b!7035345))

(assert (= (or b!7035348 b!7035347) bm!638897))

(declare-fun m!7743792 () Bool)

(assert (=> bm!638897 m!7743792))

(declare-fun m!7743794 () Bool)

(assert (=> b!7035346 m!7743794))

(declare-fun m!7743796 () Bool)

(assert (=> b!7035348 m!7743796))

(assert (=> b!7035082 d!2195712))

(declare-fun d!2195714 () Bool)

(assert (=> d!2195714 (= (flatMap!2415 lt!2519964 lambda!415201) (dynLambda!27395 lambda!415201 lt!2519942))))

(declare-fun lt!2520178 () Unit!161614)

(assert (=> d!2195714 (= lt!2520178 (choose!53296 lt!2519964 lt!2519942 lambda!415201))))

(assert (=> d!2195714 (= lt!2519964 (set.insert lt!2519942 (as set.empty (Set Context!12928))))))

(assert (=> d!2195714 (= (lemmaFlatMapOnSingletonSet!1929 lt!2519964 lt!2519942 lambda!415201) lt!2520178)))

(declare-fun b_lambda!266805 () Bool)

(assert (=> (not b_lambda!266805) (not d!2195714)))

(declare-fun bs!1871907 () Bool)

(assert (= bs!1871907 d!2195714))

(assert (=> bs!1871907 m!7743308))

(declare-fun m!7743798 () Bool)

(assert (=> bs!1871907 m!7743798))

(declare-fun m!7743800 () Bool)

(assert (=> bs!1871907 m!7743800))

(assert (=> bs!1871907 m!7743326))

(assert (=> b!7035082 d!2195714))

(declare-fun d!2195716 () Bool)

(declare-fun lt!2520181 () Int)

(assert (=> d!2195716 (>= lt!2520181 0)))

(declare-fun e!4229359 () Int)

(assert (=> d!2195716 (= lt!2520181 e!4229359)))

(declare-fun c!1308912 () Bool)

(assert (=> d!2195716 (= c!1308912 (is-Cons!67810 lt!2519929))))

(assert (=> d!2195716 (= (zipperDepthTotal!531 lt!2519929) lt!2520181)))

(declare-fun b!7035353 () Bool)

(assert (=> b!7035353 (= e!4229359 (+ (contextDepthTotal!503 (h!74258 lt!2519929)) (zipperDepthTotal!531 (t!381703 lt!2519929))))))

(declare-fun b!7035354 () Bool)

(assert (=> b!7035354 (= e!4229359 0)))

(assert (= (and d!2195716 c!1308912) b!7035353))

(assert (= (and d!2195716 (not c!1308912)) b!7035354))

(declare-fun m!7743802 () Bool)

(assert (=> b!7035353 m!7743802))

(declare-fun m!7743804 () Bool)

(assert (=> b!7035353 m!7743804))

(assert (=> b!7035082 d!2195716))

(declare-fun d!2195718 () Bool)

(assert (=> d!2195718 (<= (contextDepthTotal!503 lt!2519917) (zipperDepthTotal!531 lt!2519929))))

(declare-fun lt!2520184 () Unit!161614)

(declare-fun choose!53302 (List!67934 Context!12928) Unit!161614)

(assert (=> d!2195718 (= lt!2520184 (choose!53302 lt!2519929 lt!2519917))))

(declare-fun contains!20459 (List!67934 Context!12928) Bool)

(assert (=> d!2195718 (contains!20459 lt!2519929 lt!2519917)))

(assert (=> d!2195718 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!71 lt!2519929 lt!2519917) lt!2520184)))

(declare-fun bs!1871908 () Bool)

(assert (= bs!1871908 d!2195718))

(assert (=> bs!1871908 m!7743324))

(assert (=> bs!1871908 m!7743306))

(declare-fun m!7743806 () Bool)

(assert (=> bs!1871908 m!7743806))

(declare-fun m!7743808 () Bool)

(assert (=> bs!1871908 m!7743808))

(assert (=> b!7035082 d!2195718))

(assert (=> b!7035082 d!2195632))

(declare-fun d!2195720 () Bool)

(assert (=> d!2195720 (= (map!15770 lt!2519964 lambda!415199) (set.insert (dynLambda!27396 lambda!415199 lt!2519942) (as set.empty (Set Context!12928))))))

(declare-fun lt!2520187 () Unit!161614)

(declare-fun choose!53303 ((Set Context!12928) Context!12928 Int) Unit!161614)

(assert (=> d!2195720 (= lt!2520187 (choose!53303 lt!2519964 lt!2519942 lambda!415199))))

(assert (=> d!2195720 (= lt!2519964 (set.insert lt!2519942 (as set.empty (Set Context!12928))))))

(assert (=> d!2195720 (= (lemmaMapOnSingletonSet!379 lt!2519964 lt!2519942 lambda!415199) lt!2520187)))

(declare-fun b_lambda!266807 () Bool)

(assert (=> (not b_lambda!266807) (not d!2195720)))

(declare-fun bs!1871909 () Bool)

(assert (= bs!1871909 d!2195720))

(declare-fun m!7743810 () Bool)

(assert (=> bs!1871909 m!7743810))

(assert (=> bs!1871909 m!7743304))

(declare-fun m!7743812 () Bool)

(assert (=> bs!1871909 m!7743812))

(declare-fun m!7743814 () Bool)

(assert (=> bs!1871909 m!7743814))

(assert (=> bs!1871909 m!7743812))

(assert (=> bs!1871909 m!7743326))

(assert (=> b!7035082 d!2195720))

(declare-fun d!2195722 () Bool)

(assert (=> d!2195722 (= (isEmpty!39553 (_1!37344 lt!2519955)) (is-Nil!67809 (_1!37344 lt!2519955)))))

(assert (=> b!7035088 d!2195722))

(declare-fun d!2195724 () Bool)

(declare-fun lt!2520188 () Int)

(assert (=> d!2195724 (>= lt!2520188 0)))

(declare-fun e!4229360 () Int)

(assert (=> d!2195724 (= lt!2520188 e!4229360)))

(declare-fun c!1308914 () Bool)

(assert (=> d!2195724 (= c!1308914 (is-Cons!67810 (Cons!67810 lt!2519942 Nil!67810)))))

(assert (=> d!2195724 (= (zipperDepthTotal!531 (Cons!67810 lt!2519942 Nil!67810)) lt!2520188)))

(declare-fun b!7035355 () Bool)

(assert (=> b!7035355 (= e!4229360 (+ (contextDepthTotal!503 (h!74258 (Cons!67810 lt!2519942 Nil!67810))) (zipperDepthTotal!531 (t!381703 (Cons!67810 lt!2519942 Nil!67810)))))))

(declare-fun b!7035356 () Bool)

(assert (=> b!7035356 (= e!4229360 0)))

(assert (= (and d!2195724 c!1308914) b!7035355))

(assert (= (and d!2195724 (not c!1308914)) b!7035356))

(declare-fun m!7743816 () Bool)

(assert (=> b!7035355 m!7743816))

(declare-fun m!7743818 () Bool)

(assert (=> b!7035355 m!7743818))

(assert (=> b!7035078 d!2195724))

(declare-fun d!2195726 () Bool)

(assert (=> d!2195726 (= (isEmpty!39552 (exprs!6964 lt!2519917)) (is-Nil!67808 (exprs!6964 lt!2519917)))))

(assert (=> b!7035068 d!2195726))

(declare-fun condSetEmpty!49217 () Bool)

(assert (=> setNonEmpty!49211 (= condSetEmpty!49217 (= setRest!49211 (as set.empty (Set Context!12928))))))

(declare-fun setRes!49217 () Bool)

(assert (=> setNonEmpty!49211 (= tp!1936734 setRes!49217)))

(declare-fun setIsEmpty!49217 () Bool)

(assert (=> setIsEmpty!49217 setRes!49217))

(declare-fun tp!1936755 () Bool)

(declare-fun setNonEmpty!49217 () Bool)

(declare-fun setElem!49217 () Context!12928)

(declare-fun e!4229363 () Bool)

(assert (=> setNonEmpty!49217 (= setRes!49217 (and tp!1936755 (inv!86530 setElem!49217) e!4229363))))

(declare-fun setRest!49217 () (Set Context!12928))

(assert (=> setNonEmpty!49217 (= setRest!49211 (set.union (set.insert setElem!49217 (as set.empty (Set Context!12928))) setRest!49217))))

(declare-fun b!7035361 () Bool)

(declare-fun tp!1936754 () Bool)

(assert (=> b!7035361 (= e!4229363 tp!1936754)))

(assert (= (and setNonEmpty!49211 condSetEmpty!49217) setIsEmpty!49217))

(assert (= (and setNonEmpty!49211 (not condSetEmpty!49217)) setNonEmpty!49217))

(assert (= setNonEmpty!49217 b!7035361))

(declare-fun m!7743820 () Bool)

(assert (=> setNonEmpty!49217 m!7743820))

(declare-fun b!7035366 () Bool)

(declare-fun e!4229366 () Bool)

(declare-fun tp!1936758 () Bool)

(assert (=> b!7035366 (= e!4229366 (and tp_is_empty!44161 tp!1936758))))

(assert (=> b!7035079 (= tp!1936737 e!4229366)))

(assert (= (and b!7035079 (is-Cons!67809 (t!381702 s!7408))) b!7035366))

(declare-fun b!7035371 () Bool)

(declare-fun e!4229369 () Bool)

(declare-fun tp!1936763 () Bool)

(declare-fun tp!1936764 () Bool)

(assert (=> b!7035371 (= e!4229369 (and tp!1936763 tp!1936764))))

(assert (=> b!7035069 (= tp!1936735 e!4229369)))

(assert (= (and b!7035069 (is-Cons!67808 (exprs!6964 ct2!306))) b!7035371))

(declare-fun b!7035372 () Bool)

(declare-fun e!4229370 () Bool)

(declare-fun tp!1936765 () Bool)

(declare-fun tp!1936766 () Bool)

(assert (=> b!7035372 (= e!4229370 (and tp!1936765 tp!1936766))))

(assert (=> b!7035074 (= tp!1936736 e!4229370)))

(assert (= (and b!7035074 (is-Cons!67808 (exprs!6964 setElem!49211))) b!7035372))

(declare-fun b_lambda!266809 () Bool)

(assert (= b_lambda!266807 (or b!7035081 b_lambda!266809)))

(declare-fun bs!1871910 () Bool)

(declare-fun d!2195728 () Bool)

(assert (= bs!1871910 (and d!2195728 b!7035081)))

(declare-fun lt!2520189 () Unit!161614)

(assert (=> bs!1871910 (= lt!2520189 (lemmaConcatPreservesForall!789 (exprs!6964 lt!2519942) (exprs!6964 ct2!306) lambda!415200))))

(assert (=> bs!1871910 (= (dynLambda!27396 lambda!415199 lt!2519942) (Context!12929 (++!15516 (exprs!6964 lt!2519942) (exprs!6964 ct2!306))))))

(declare-fun m!7743822 () Bool)

(assert (=> bs!1871910 m!7743822))

(declare-fun m!7743824 () Bool)

(assert (=> bs!1871910 m!7743824))

(assert (=> d!2195720 d!2195728))

(declare-fun b_lambda!266811 () Bool)

(assert (= b_lambda!266797 (or b!7035080 b_lambda!266811)))

(declare-fun bs!1871911 () Bool)

(declare-fun d!2195730 () Bool)

(assert (= bs!1871911 (and d!2195730 b!7035080)))

(assert (=> bs!1871911 (= (dynLambda!27395 lambda!415201 lt!2519944) (derivationStepZipperUp!2078 lt!2519944 (h!74257 s!7408)))))

(assert (=> bs!1871911 m!7743348))

(assert (=> d!2195642 d!2195730))

(declare-fun b_lambda!266813 () Bool)

(assert (= b_lambda!266795 (or b!7035075 b_lambda!266813)))

(declare-fun bs!1871912 () Bool)

(declare-fun d!2195732 () Bool)

(assert (= bs!1871912 (and d!2195732 b!7035075)))

(assert (=> bs!1871912 (= (dynLambda!27393 lambda!415198 lt!2520133) (matchZipper!3008 (set.insert lt!2520133 (as set.empty (Set Context!12928))) s!7408))))

(declare-fun m!7743826 () Bool)

(assert (=> bs!1871912 m!7743826))

(assert (=> bs!1871912 m!7743826))

(declare-fun m!7743828 () Bool)

(assert (=> bs!1871912 m!7743828))

(assert (=> d!2195622 d!2195732))

(declare-fun b_lambda!266815 () Bool)

(assert (= b_lambda!266801 (or b!7035080 b_lambda!266815)))

(declare-fun bs!1871913 () Bool)

(declare-fun d!2195734 () Bool)

(assert (= bs!1871913 (and d!2195734 b!7035080)))

(assert (=> bs!1871913 (= (dynLambda!27395 lambda!415201 lt!2519953) (derivationStepZipperUp!2078 lt!2519953 (h!74257 s!7408)))))

(assert (=> bs!1871913 m!7743270))

(assert (=> d!2195694 d!2195734))

(declare-fun b_lambda!266817 () Bool)

(assert (= b_lambda!266803 (or b!7035081 b_lambda!266817)))

(declare-fun bs!1871914 () Bool)

(declare-fun d!2195736 () Bool)

(assert (= bs!1871914 (and d!2195736 b!7035081)))

(declare-fun lt!2520190 () Unit!161614)

(assert (=> bs!1871914 (= lt!2520190 (lemmaConcatPreservesForall!789 (exprs!6964 lt!2520172) (exprs!6964 ct2!306) lambda!415200))))

(assert (=> bs!1871914 (= (dynLambda!27396 lambda!415199 lt!2520172) (Context!12929 (++!15516 (exprs!6964 lt!2520172) (exprs!6964 ct2!306))))))

(declare-fun m!7743830 () Bool)

(assert (=> bs!1871914 m!7743830))

(declare-fun m!7743832 () Bool)

(assert (=> bs!1871914 m!7743832))

(assert (=> d!2195700 d!2195736))

(declare-fun b_lambda!266819 () Bool)

(assert (= b_lambda!266805 (or b!7035080 b_lambda!266819)))

(declare-fun bs!1871915 () Bool)

(declare-fun d!2195738 () Bool)

(assert (= bs!1871915 (and d!2195738 b!7035080)))

(assert (=> bs!1871915 (= (dynLambda!27395 lambda!415201 lt!2519942) (derivationStepZipperUp!2078 lt!2519942 (h!74257 s!7408)))))

(assert (=> bs!1871915 m!7743314))

(assert (=> d!2195714 d!2195738))

(declare-fun b_lambda!266821 () Bool)

(assert (= b_lambda!266799 (or b!7035080 b_lambda!266821)))

(declare-fun bs!1871916 () Bool)

(declare-fun d!2195740 () Bool)

(assert (= bs!1871916 (and d!2195740 b!7035080)))

(assert (=> bs!1871916 (= (dynLambda!27395 lambda!415201 lt!2519917) (derivationStepZipperUp!2078 lt!2519917 (h!74257 s!7408)))))

(assert (=> bs!1871916 m!7743276))

(assert (=> d!2195672 d!2195740))

(push 1)

(assert (not bm!638894))

(assert (not b_lambda!266821))

(assert (not b!7035259))

(assert (not d!2195700))

(assert tp_is_empty!44161)

(assert (not b_lambda!266817))

(assert (not b!7035321))

(assert (not b!7035339))

(assert (not b!7035191))

(assert (not b!7035254))

(assert (not d!2195634))

(assert (not b!7035239))

(assert (not b!7035319))

(assert (not d!2195704))

(assert (not d!2195690))

(assert (not d!2195676))

(assert (not d!2195664))

(assert (not b!7035291))

(assert (not b!7035258))

(assert (not b!7035275))

(assert (not d!2195648))

(assert (not b!7035320))

(assert (not b!7035342))

(assert (not b!7035348))

(assert (not b!7035278))

(assert (not b!7035265))

(assert (not setNonEmpty!49217))

(assert (not bs!1871914))

(assert (not b!7035313))

(assert (not d!2195652))

(assert (not b!7035229))

(assert (not d!2195640))

(assert (not d!2195626))

(assert (not b!7035353))

(assert (not b!7035329))

(assert (not b!7035256))

(assert (not bs!1871910))

(assert (not b!7035273))

(assert (not bs!1871913))

(assert (not b!7035326))

(assert (not b!7035268))

(assert (not b!7035366))

(assert (not b!7035311))

(assert (not d!2195710))

(assert (not bm!638896))

(assert (not d!2195656))

(assert (not b!7035372))

(assert (not b_lambda!266815))

(assert (not d!2195644))

(assert (not b!7035371))

(assert (not bm!638895))

(assert (not d!2195670))

(assert (not d!2195642))

(assert (not d!2195650))

(assert (not b!7035257))

(assert (not bm!638886))

(assert (not d!2195618))

(assert (not d!2195686))

(assert (not bs!1871915))

(assert (not b!7035328))

(assert (not bs!1871916))

(assert (not d!2195638))

(assert (not bm!638889))

(assert (not b!7035274))

(assert (not d!2195624))

(assert (not b!7035280))

(assert (not b!7035240))

(assert (not b!7035267))

(assert (not b!7035355))

(assert (not d!2195662))

(assert (not b!7035341))

(assert (not b!7035316))

(assert (not d!2195646))

(assert (not b!7035266))

(assert (not b!7035269))

(assert (not b!7035260))

(assert (not b!7035264))

(assert (not d!2195660))

(assert (not d!2195692))

(assert (not d!2195718))

(assert (not b!7035346))

(assert (not b_lambda!266819))

(assert (not b_lambda!266809))

(assert (not bs!1871912))

(assert (not d!2195628))

(assert (not d!2195714))

(assert (not bm!638888))

(assert (not b!7035270))

(assert (not b!7035188))

(assert (not b!7035187))

(assert (not d!2195682))

(assert (not d!2195654))

(assert (not d!2195622))

(assert (not bs!1871911))

(assert (not b_lambda!266813))

(assert (not d!2195684))

(assert (not b!7035315))

(assert (not d!2195672))

(assert (not d!2195694))

(assert (not d!2195674))

(assert (not b!7035290))

(assert (not d!2195688))

(assert (not d!2195620))

(assert (not b!7035263))

(assert (not b_lambda!266811))

(assert (not d!2195632))

(assert (not b!7035324))

(assert (not bm!638897))

(assert (not d!2195720))

(assert (not d!2195698))

(assert (not b!7035361))

(assert (not d!2195666))

(assert (not b!7035314))

(assert (not d!2195658))

(assert (not d!2195706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

