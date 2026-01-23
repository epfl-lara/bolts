; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!640500 () Bool)

(assert start!640500)

(declare-fun b!6532604 () Bool)

(assert (=> b!6532604 true))

(assert (=> b!6532604 true))

(declare-fun lambda!362305 () Int)

(declare-fun lambda!362304 () Int)

(assert (=> b!6532604 (not (= lambda!362305 lambda!362304))))

(assert (=> b!6532604 true))

(assert (=> b!6532604 true))

(declare-fun b!6532600 () Bool)

(assert (=> b!6532600 true))

(declare-fun b!6532599 () Bool)

(assert (=> b!6532599 true))

(declare-fun b!6532579 () Bool)

(declare-fun e!3956144 () Bool)

(declare-fun e!3956137 () Bool)

(assert (=> b!6532579 (= e!3956144 e!3956137)))

(declare-fun res!2680088 () Bool)

(assert (=> b!6532579 (=> res!2680088 e!3956137)))

(declare-datatypes ((C!33074 0))(
  ( (C!33075 (val!26239 Int)) )
))
(declare-datatypes ((Regex!16402 0))(
  ( (ElementMatch!16402 (c!1199083 C!33074)) (Concat!25247 (regOne!33316 Regex!16402) (regTwo!33316 Regex!16402)) (EmptyExpr!16402) (Star!16402 (reg!16731 Regex!16402)) (EmptyLang!16402) (Union!16402 (regOne!33317 Regex!16402) (regTwo!33317 Regex!16402)) )
))
(declare-datatypes ((List!65505 0))(
  ( (Nil!65381) (Cons!65381 (h!71829 Regex!16402) (t!379145 List!65505)) )
))
(declare-datatypes ((Context!11572 0))(
  ( (Context!11573 (exprs!6286 List!65505)) )
))
(declare-fun lt!2396994 () (Set Context!11572))

(declare-fun lt!2396970 () (Set Context!11572))

(assert (=> b!6532579 (= res!2680088 (not (= lt!2396994 lt!2396970)))))

(declare-datatypes ((List!65506 0))(
  ( (Nil!65382) (Cons!65382 (h!71830 C!33074) (t!379146 List!65506)) )
))
(declare-fun s!2326 () List!65506)

(declare-fun lambda!362306 () Int)

(declare-fun lt!2396977 () Context!11572)

(declare-fun lt!2396982 () (Set Context!11572))

(declare-fun flatMap!1907 ((Set Context!11572) Int) (Set Context!11572))

(declare-fun derivationStepZipperUp!1576 (Context!11572 C!33074) (Set Context!11572))

(assert (=> b!6532579 (= (flatMap!1907 lt!2396982 lambda!362306) (derivationStepZipperUp!1576 lt!2396977 (h!71830 s!2326)))))

(declare-datatypes ((Unit!158943 0))(
  ( (Unit!158944) )
))
(declare-fun lt!2396965 () Unit!158943)

(declare-fun lemmaFlatMapOnSingletonSet!1433 ((Set Context!11572) Context!11572 Int) Unit!158943)

(assert (=> b!6532579 (= lt!2396965 (lemmaFlatMapOnSingletonSet!1433 lt!2396982 lt!2396977 lambda!362306))))

(declare-fun lt!2396979 () (Set Context!11572))

(assert (=> b!6532579 (= lt!2396979 (derivationStepZipperUp!1576 lt!2396977 (h!71830 s!2326)))))

(declare-fun derivationStepZipper!2368 ((Set Context!11572) C!33074) (Set Context!11572))

(assert (=> b!6532579 (= lt!2396994 (derivationStepZipper!2368 lt!2396982 (h!71830 s!2326)))))

(assert (=> b!6532579 (= lt!2396982 (set.insert lt!2396977 (as set.empty (Set Context!11572))))))

(declare-fun r!7292 () Regex!16402)

(declare-fun lt!2396966 () List!65505)

(assert (=> b!6532579 (= lt!2396977 (Context!11573 (Cons!65381 (reg!16731 (regOne!33316 r!7292)) lt!2396966)))))

(declare-fun b!6532580 () Bool)

(declare-fun e!3956127 () Bool)

(declare-fun e!3956126 () Bool)

(assert (=> b!6532580 (= e!3956127 e!3956126)))

(declare-fun res!2680112 () Bool)

(assert (=> b!6532580 (=> res!2680112 e!3956126)))

(declare-fun lt!2396954 () Regex!16402)

(assert (=> b!6532580 (= res!2680112 (not (= r!7292 lt!2396954)))))

(declare-fun lt!2396955 () Regex!16402)

(assert (=> b!6532580 (= lt!2396954 (Concat!25247 lt!2396955 (regTwo!33316 r!7292)))))

(declare-fun b!6532581 () Bool)

(declare-fun e!3956133 () Bool)

(declare-fun e!3956128 () Bool)

(assert (=> b!6532581 (= e!3956133 e!3956128)))

(declare-fun res!2680089 () Bool)

(assert (=> b!6532581 (=> res!2680089 e!3956128)))

(declare-fun lt!2396984 () Bool)

(assert (=> b!6532581 (= res!2680089 lt!2396984)))

(declare-fun lt!2396981 () Regex!16402)

(declare-fun matchR!8585 (Regex!16402 List!65506) Bool)

(declare-fun matchRSpec!3503 (Regex!16402 List!65506) Bool)

(assert (=> b!6532581 (= (matchR!8585 lt!2396981 s!2326) (matchRSpec!3503 lt!2396981 s!2326))))

(declare-fun lt!2396990 () Unit!158943)

(declare-fun mainMatchTheorem!3503 (Regex!16402 List!65506) Unit!158943)

(assert (=> b!6532581 (= lt!2396990 (mainMatchTheorem!3503 lt!2396981 s!2326))))

(declare-fun b!6532582 () Bool)

(declare-fun res!2680113 () Bool)

(declare-fun e!3956132 () Bool)

(assert (=> b!6532582 (=> res!2680113 e!3956132)))

(declare-datatypes ((List!65507 0))(
  ( (Nil!65383) (Cons!65383 (h!71831 Context!11572) (t!379147 List!65507)) )
))
(declare-fun zl!343 () List!65507)

(assert (=> b!6532582 (= res!2680113 (not (is-Cons!65381 (exprs!6286 (h!71831 zl!343)))))))

(declare-fun b!6532583 () Bool)

(declare-fun e!3956142 () Bool)

(assert (=> b!6532583 (= e!3956142 e!3956133)))

(declare-fun res!2680086 () Bool)

(assert (=> b!6532583 (=> res!2680086 e!3956133)))

(declare-fun lt!2396985 () List!65507)

(declare-fun unfocusZipper!2144 (List!65507) Regex!16402)

(assert (=> b!6532583 (= res!2680086 (not (= (unfocusZipper!2144 lt!2396985) (reg!16731 (regOne!33316 r!7292)))))))

(declare-fun lt!2396980 () Context!11572)

(assert (=> b!6532583 (= lt!2396985 (Cons!65383 lt!2396980 Nil!65383))))

(declare-fun lt!2396983 () (Set Context!11572))

(declare-fun lt!2396953 () Context!11572)

(assert (=> b!6532583 (= (flatMap!1907 lt!2396983 lambda!362306) (derivationStepZipperUp!1576 lt!2396953 (h!71830 s!2326)))))

(declare-fun lt!2396964 () Unit!158943)

(assert (=> b!6532583 (= lt!2396964 (lemmaFlatMapOnSingletonSet!1433 lt!2396983 lt!2396953 lambda!362306))))

(declare-fun lt!2396993 () (Set Context!11572))

(assert (=> b!6532583 (= (flatMap!1907 lt!2396993 lambda!362306) (derivationStepZipperUp!1576 lt!2396980 (h!71830 s!2326)))))

(declare-fun lt!2396996 () Unit!158943)

(assert (=> b!6532583 (= lt!2396996 (lemmaFlatMapOnSingletonSet!1433 lt!2396993 lt!2396980 lambda!362306))))

(declare-fun lt!2396971 () (Set Context!11572))

(assert (=> b!6532583 (= lt!2396971 (derivationStepZipperUp!1576 lt!2396953 (h!71830 s!2326)))))

(declare-fun lt!2396960 () (Set Context!11572))

(assert (=> b!6532583 (= lt!2396960 (derivationStepZipperUp!1576 lt!2396980 (h!71830 s!2326)))))

(assert (=> b!6532583 (= lt!2396983 (set.insert lt!2396953 (as set.empty (Set Context!11572))))))

(assert (=> b!6532583 (= lt!2396993 (set.insert lt!2396980 (as set.empty (Set Context!11572))))))

(declare-fun lt!2396976 () List!65505)

(assert (=> b!6532583 (= lt!2396980 (Context!11573 lt!2396976))))

(assert (=> b!6532583 (= lt!2396976 (Cons!65381 (reg!16731 (regOne!33316 r!7292)) Nil!65381))))

(declare-fun b!6532584 () Bool)

(declare-fun res!2680108 () Bool)

(assert (=> b!6532584 (=> res!2680108 e!3956132)))

(declare-fun isEmpty!37599 (List!65507) Bool)

(assert (=> b!6532584 (= res!2680108 (not (isEmpty!37599 (t!379147 zl!343))))))

(declare-fun b!6532585 () Bool)

(declare-fun res!2680114 () Bool)

(declare-fun e!3956125 () Bool)

(assert (=> b!6532585 (=> res!2680114 e!3956125)))

(assert (=> b!6532585 (= res!2680114 (or (is-Concat!25247 (regOne!33316 r!7292)) (not (is-Star!16402 (regOne!33316 r!7292)))))))

(declare-fun b!6532586 () Bool)

(declare-fun e!3956123 () Bool)

(declare-fun lt!2396992 () (Set Context!11572))

(declare-fun matchZipper!2414 ((Set Context!11572) List!65506) Bool)

(assert (=> b!6532586 (= e!3956123 (not (matchZipper!2414 lt!2396992 (t!379146 s!2326))))))

(declare-fun b!6532587 () Bool)

(declare-fun e!3956135 () Bool)

(declare-fun tp!1807957 () Bool)

(declare-fun tp!1807958 () Bool)

(assert (=> b!6532587 (= e!3956135 (and tp!1807957 tp!1807958))))

(declare-fun b!6532588 () Bool)

(declare-fun res!2680100 () Bool)

(assert (=> b!6532588 (=> res!2680100 e!3956132)))

(declare-fun generalisedUnion!2246 (List!65505) Regex!16402)

(declare-fun unfocusZipperList!1823 (List!65507) List!65505)

(assert (=> b!6532588 (= res!2680100 (not (= r!7292 (generalisedUnion!2246 (unfocusZipperList!1823 zl!343)))))))

(declare-fun b!6532589 () Bool)

(declare-fun res!2680091 () Bool)

(assert (=> b!6532589 (=> res!2680091 e!3956128)))

(declare-fun lt!2396957 () Bool)

(assert (=> b!6532589 (= res!2680091 (not lt!2396957))))

(declare-fun b!6532590 () Bool)

(declare-fun e!3956124 () Bool)

(declare-fun inv!84253 (Context!11572) Bool)

(assert (=> b!6532590 (= e!3956124 (inv!84253 lt!2396953))))

(declare-datatypes ((tuple2!66762 0))(
  ( (tuple2!66763 (_1!36684 List!65506) (_2!36684 List!65506)) )
))
(declare-fun lt!2396988 () tuple2!66762)

(assert (=> b!6532590 (matchR!8585 (reg!16731 (regOne!33316 r!7292)) (_1!36684 lt!2396988))))

(declare-fun lt!2396972 () Unit!158943)

(declare-fun theoremZipperRegexEquiv!838 ((Set Context!11572) List!65507 Regex!16402 List!65506) Unit!158943)

(assert (=> b!6532590 (= lt!2396972 (theoremZipperRegexEquiv!838 lt!2396993 lt!2396985 (reg!16731 (regOne!33316 r!7292)) (_1!36684 lt!2396988)))))

(declare-fun lt!2396958 () List!65506)

(declare-fun ++!14506 (List!65505 List!65505) List!65505)

(assert (=> b!6532590 (matchZipper!2414 (set.insert (Context!11573 (++!14506 lt!2396976 lt!2396966)) (as set.empty (Set Context!11572))) lt!2396958)))

(declare-fun lt!2396973 () Unit!158943)

(declare-fun lambda!362308 () Int)

(declare-fun lemmaConcatPreservesForall!375 (List!65505 List!65505 Int) Unit!158943)

(assert (=> b!6532590 (= lt!2396973 (lemmaConcatPreservesForall!375 lt!2396976 lt!2396966 lambda!362308))))

(declare-fun lt!2396975 () Unit!158943)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!183 (Context!11572 Context!11572 List!65506 List!65506) Unit!158943)

(assert (=> b!6532590 (= lt!2396975 (lemmaConcatenateContextMatchesConcatOfStrings!183 lt!2396980 lt!2396953 (_1!36684 lt!2396988) (_2!36684 lt!2396988)))))

(declare-fun b!6532591 () Bool)

(declare-fun res!2680098 () Bool)

(assert (=> b!6532591 (=> res!2680098 e!3956132)))

(assert (=> b!6532591 (= res!2680098 (or (is-EmptyExpr!16402 r!7292) (is-EmptyLang!16402 r!7292) (is-ElementMatch!16402 r!7292) (is-Union!16402 r!7292) (not (is-Concat!25247 r!7292))))))

(declare-fun b!6532592 () Bool)

(assert (=> b!6532592 (= e!3956125 e!3956144)))

(declare-fun res!2680099 () Bool)

(assert (=> b!6532592 (=> res!2680099 e!3956144)))

(declare-fun lt!2396986 () (Set Context!11572))

(assert (=> b!6532592 (= res!2680099 (not (= lt!2396986 lt!2396970)))))

(declare-fun derivationStepZipperDown!1650 (Regex!16402 Context!11572 C!33074) (Set Context!11572))

(assert (=> b!6532592 (= lt!2396970 (derivationStepZipperDown!1650 (reg!16731 (regOne!33316 r!7292)) lt!2396953 (h!71830 s!2326)))))

(assert (=> b!6532592 (= lt!2396953 (Context!11573 lt!2396966))))

(assert (=> b!6532592 (= lt!2396966 (Cons!65381 lt!2396955 (t!379145 (exprs!6286 (h!71831 zl!343)))))))

(assert (=> b!6532592 (= lt!2396955 (Star!16402 (reg!16731 (regOne!33316 r!7292))))))

(declare-fun b!6532593 () Bool)

(declare-fun res!2680103 () Bool)

(declare-fun e!3956130 () Bool)

(assert (=> b!6532593 (=> res!2680103 e!3956130)))

(declare-fun lt!2396956 () Bool)

(declare-fun lt!2396997 () Bool)

(assert (=> b!6532593 (= res!2680103 (or (not lt!2396956) (not lt!2396997)))))

(declare-fun setIsEmpty!44553 () Bool)

(declare-fun setRes!44553 () Bool)

(assert (=> setIsEmpty!44553 setRes!44553))

(declare-fun b!6532594 () Bool)

(declare-fun e!3956136 () Unit!158943)

(declare-fun Unit!158945 () Unit!158943)

(assert (=> b!6532594 (= e!3956136 Unit!158945)))

(declare-fun b!6532595 () Bool)

(declare-fun res!2680110 () Bool)

(assert (=> b!6532595 (=> res!2680110 e!3956124)))

(assert (=> b!6532595 (= res!2680110 (not (matchZipper!2414 lt!2396993 (_1!36684 lt!2396988))))))

(declare-fun b!6532596 () Bool)

(declare-fun e!3956141 () Bool)

(assert (=> b!6532596 (= e!3956141 (matchZipper!2414 lt!2396992 (t!379146 s!2326)))))

(declare-fun b!6532597 () Bool)

(declare-fun res!2680118 () Bool)

(declare-fun e!3956134 () Bool)

(assert (=> b!6532597 (=> res!2680118 e!3956134)))

(declare-fun isEmpty!37600 (List!65505) Bool)

(assert (=> b!6532597 (= res!2680118 (isEmpty!37600 (t!379145 (exprs!6286 (h!71831 zl!343)))))))

(declare-fun b!6532598 () Bool)

(declare-fun e!3956139 () Bool)

(declare-fun e!3956140 () Bool)

(assert (=> b!6532598 (= e!3956139 e!3956140)))

(declare-fun res!2680106 () Bool)

(assert (=> b!6532598 (=> (not res!2680106) (not e!3956140))))

(declare-fun lt!2396991 () Regex!16402)

(assert (=> b!6532598 (= res!2680106 (= r!7292 lt!2396991))))

(assert (=> b!6532598 (= lt!2396991 (unfocusZipper!2144 zl!343))))

(declare-fun e!3956129 () Bool)

(assert (=> b!6532599 (= e!3956130 e!3956129)))

(declare-fun res!2680116 () Bool)

(assert (=> b!6532599 (=> res!2680116 e!3956129)))

(declare-fun appendTo!163 ((Set Context!11572) Context!11572) (Set Context!11572))

(assert (=> b!6532599 (= res!2680116 (not (= (appendTo!163 lt!2396993 lt!2396953) lt!2396982)))))

(declare-fun lambda!362307 () Int)

(declare-fun map!14912 ((Set Context!11572) Int) (Set Context!11572))

(assert (=> b!6532599 (= (map!14912 lt!2396993 lambda!362307) (set.insert (Context!11573 (++!14506 lt!2396976 lt!2396966)) (as set.empty (Set Context!11572))))))

(declare-fun lt!2396961 () Unit!158943)

(assert (=> b!6532599 (= lt!2396961 (lemmaConcatPreservesForall!375 lt!2396976 lt!2396966 lambda!362308))))

(declare-fun lt!2396978 () Unit!158943)

(declare-fun lemmaMapOnSingletonSet!185 ((Set Context!11572) Context!11572 Int) Unit!158943)

(assert (=> b!6532599 (= lt!2396978 (lemmaMapOnSingletonSet!185 lt!2396993 lt!2396980 lambda!362307))))

(assert (=> b!6532600 (= e!3956134 e!3956125)))

(declare-fun res!2680096 () Bool)

(assert (=> b!6532600 (=> res!2680096 e!3956125)))

(assert (=> b!6532600 (= res!2680096 (or (and (is-ElementMatch!16402 (regOne!33316 r!7292)) (= (c!1199083 (regOne!33316 r!7292)) (h!71830 s!2326))) (is-Union!16402 (regOne!33316 r!7292))))))

(declare-fun lt!2396968 () Unit!158943)

(assert (=> b!6532600 (= lt!2396968 e!3956136)))

(declare-fun c!1199082 () Bool)

(assert (=> b!6532600 (= c!1199082 lt!2396957)))

(declare-fun nullable!6395 (Regex!16402) Bool)

(assert (=> b!6532600 (= lt!2396957 (nullable!6395 (h!71829 (exprs!6286 (h!71831 zl!343)))))))

(declare-fun z!1189 () (Set Context!11572))

(assert (=> b!6532600 (= (flatMap!1907 z!1189 lambda!362306) (derivationStepZipperUp!1576 (h!71831 zl!343) (h!71830 s!2326)))))

(declare-fun lt!2396989 () Unit!158943)

(assert (=> b!6532600 (= lt!2396989 (lemmaFlatMapOnSingletonSet!1433 z!1189 (h!71831 zl!343) lambda!362306))))

(declare-fun lt!2396963 () Context!11572)

(assert (=> b!6532600 (= lt!2396992 (derivationStepZipperUp!1576 lt!2396963 (h!71830 s!2326)))))

(assert (=> b!6532600 (= lt!2396986 (derivationStepZipperDown!1650 (h!71829 (exprs!6286 (h!71831 zl!343))) lt!2396963 (h!71830 s!2326)))))

(assert (=> b!6532600 (= lt!2396963 (Context!11573 (t!379145 (exprs!6286 (h!71831 zl!343)))))))

(declare-fun lt!2396987 () (Set Context!11572))

(assert (=> b!6532600 (= lt!2396987 (derivationStepZipperUp!1576 (Context!11573 (Cons!65381 (h!71829 (exprs!6286 (h!71831 zl!343))) (t!379145 (exprs!6286 (h!71831 zl!343))))) (h!71830 s!2326)))))

(declare-fun b!6532601 () Bool)

(declare-fun e!3956121 () Bool)

(assert (=> b!6532601 (= e!3956121 (nullable!6395 (regOne!33316 (regOne!33316 r!7292))))))

(declare-fun b!6532602 () Bool)

(declare-fun Unit!158946 () Unit!158943)

(assert (=> b!6532602 (= e!3956136 Unit!158946)))

(declare-fun lt!2396967 () Unit!158943)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1233 ((Set Context!11572) (Set Context!11572) List!65506) Unit!158943)

(assert (=> b!6532602 (= lt!2396967 (lemmaZipperConcatMatchesSameAsBothZippers!1233 lt!2396986 lt!2396992 (t!379146 s!2326)))))

(declare-fun res!2680087 () Bool)

(assert (=> b!6532602 (= res!2680087 (matchZipper!2414 lt!2396986 (t!379146 s!2326)))))

(assert (=> b!6532602 (=> res!2680087 e!3956141)))

(assert (=> b!6532602 (= (matchZipper!2414 (set.union lt!2396986 lt!2396992) (t!379146 s!2326)) e!3956141)))

(declare-fun b!6532603 () Bool)

(declare-fun res!2680109 () Bool)

(assert (=> b!6532603 (=> res!2680109 e!3956132)))

(declare-fun generalisedConcat!1999 (List!65505) Regex!16402)

(assert (=> b!6532603 (= res!2680109 (not (= r!7292 (generalisedConcat!1999 (exprs!6286 (h!71831 zl!343))))))))

(assert (=> b!6532604 (= e!3956132 e!3956134)))

(declare-fun res!2680107 () Bool)

(assert (=> b!6532604 (=> res!2680107 e!3956134)))

(declare-fun lt!2396998 () Bool)

(assert (=> b!6532604 (= res!2680107 (or (not (= lt!2396984 lt!2396998)) (is-Nil!65382 s!2326)))))

(declare-fun Exists!3472 (Int) Bool)

(assert (=> b!6532604 (= (Exists!3472 lambda!362304) (Exists!3472 lambda!362305))))

(declare-fun lt!2396995 () Unit!158943)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2009 (Regex!16402 Regex!16402 List!65506) Unit!158943)

(assert (=> b!6532604 (= lt!2396995 (lemmaExistCutMatchRandMatchRSpecEquivalent!2009 (regOne!33316 r!7292) (regTwo!33316 r!7292) s!2326))))

(assert (=> b!6532604 (= lt!2396998 (Exists!3472 lambda!362304))))

(declare-datatypes ((Option!16293 0))(
  ( (None!16292) (Some!16292 (v!52475 tuple2!66762)) )
))
(declare-fun isDefined!12996 (Option!16293) Bool)

(declare-fun findConcatSeparation!2707 (Regex!16402 Regex!16402 List!65506 List!65506 List!65506) Option!16293)

(assert (=> b!6532604 (= lt!2396998 (isDefined!12996 (findConcatSeparation!2707 (regOne!33316 r!7292) (regTwo!33316 r!7292) Nil!65382 s!2326 s!2326)))))

(declare-fun lt!2396974 () Unit!158943)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2471 (Regex!16402 Regex!16402 List!65506) Unit!158943)

(assert (=> b!6532604 (= lt!2396974 (lemmaFindConcatSeparationEquivalentToExists!2471 (regOne!33316 r!7292) (regTwo!33316 r!7292) s!2326))))

(declare-fun b!6532605 () Bool)

(declare-fun e!3956143 () Bool)

(declare-fun tp_is_empty!42057 () Bool)

(declare-fun tp!1807959 () Bool)

(assert (=> b!6532605 (= e!3956143 (and tp_is_empty!42057 tp!1807959))))

(declare-fun b!6532606 () Bool)

(declare-fun e!3956131 () Bool)

(declare-fun tp!1807954 () Bool)

(assert (=> b!6532606 (= e!3956131 tp!1807954)))

(declare-fun b!6532607 () Bool)

(declare-fun res!2680093 () Bool)

(assert (=> b!6532607 (=> res!2680093 e!3956127)))

(assert (=> b!6532607 (= res!2680093 (not (= lt!2396991 r!7292)))))

(declare-fun setElem!44553 () Context!11572)

(declare-fun setNonEmpty!44553 () Bool)

(declare-fun e!3956122 () Bool)

(declare-fun tp!1807961 () Bool)

(assert (=> setNonEmpty!44553 (= setRes!44553 (and tp!1807961 (inv!84253 setElem!44553) e!3956122))))

(declare-fun setRest!44553 () (Set Context!11572))

(assert (=> setNonEmpty!44553 (= z!1189 (set.union (set.insert setElem!44553 (as set.empty (Set Context!11572))) setRest!44553))))

(declare-fun b!6532608 () Bool)

(assert (=> b!6532608 (= e!3956135 tp_is_empty!42057)))

(declare-fun res!2680095 () Bool)

(assert (=> start!640500 (=> (not res!2680095) (not e!3956139))))

(declare-fun validRegex!8138 (Regex!16402) Bool)

(assert (=> start!640500 (= res!2680095 (validRegex!8138 r!7292))))

(assert (=> start!640500 e!3956139))

(assert (=> start!640500 e!3956135))

(declare-fun condSetEmpty!44553 () Bool)

(assert (=> start!640500 (= condSetEmpty!44553 (= z!1189 (as set.empty (Set Context!11572))))))

(assert (=> start!640500 setRes!44553))

(declare-fun e!3956138 () Bool)

(assert (=> start!640500 e!3956138))

(assert (=> start!640500 e!3956143))

(declare-fun b!6532609 () Bool)

(assert (=> b!6532609 (= e!3956128 e!3956130)))

(declare-fun res!2680097 () Bool)

(assert (=> b!6532609 (=> res!2680097 e!3956130)))

(assert (=> b!6532609 (= res!2680097 e!3956123)))

(declare-fun res!2680105 () Bool)

(assert (=> b!6532609 (=> (not res!2680105) (not e!3956123))))

(assert (=> b!6532609 (= res!2680105 (not lt!2396956))))

(assert (=> b!6532609 (= lt!2396956 (matchZipper!2414 lt!2396986 (t!379146 s!2326)))))

(declare-fun b!6532610 () Bool)

(assert (=> b!6532610 (= e!3956137 e!3956127)))

(declare-fun res!2680115 () Bool)

(assert (=> b!6532610 (=> res!2680115 e!3956127)))

(assert (=> b!6532610 (= res!2680115 (not (= lt!2396997 (matchZipper!2414 lt!2396994 (t!379146 s!2326)))))))

(assert (=> b!6532610 (= lt!2396997 (matchZipper!2414 lt!2396982 s!2326))))

(declare-fun b!6532611 () Bool)

(declare-fun tp!1807955 () Bool)

(declare-fun tp!1807953 () Bool)

(assert (=> b!6532611 (= e!3956135 (and tp!1807955 tp!1807953))))

(declare-fun b!6532612 () Bool)

(assert (=> b!6532612 (= e!3956126 e!3956142)))

(declare-fun res!2680092 () Bool)

(assert (=> b!6532612 (=> res!2680092 e!3956142)))

(assert (=> b!6532612 (= res!2680092 (not (= (unfocusZipper!2144 (Cons!65383 lt!2396977 Nil!65383)) lt!2396981)))))

(assert (=> b!6532612 (= lt!2396981 (Concat!25247 (reg!16731 (regOne!33316 r!7292)) lt!2396954))))

(declare-fun b!6532613 () Bool)

(declare-fun res!2680102 () Bool)

(assert (=> b!6532613 (=> res!2680102 e!3956133)))

(assert (=> b!6532613 (= res!2680102 (not (= (unfocusZipper!2144 (Cons!65383 lt!2396953 Nil!65383)) lt!2396954)))))

(declare-fun b!6532614 () Bool)

(declare-fun res!2680101 () Bool)

(assert (=> b!6532614 (=> res!2680101 e!3956124)))

(assert (=> b!6532614 (= res!2680101 (not (matchZipper!2414 lt!2396983 (_2!36684 lt!2396988))))))

(declare-fun b!6532615 () Bool)

(declare-fun tp!1807956 () Bool)

(assert (=> b!6532615 (= e!3956122 tp!1807956)))

(declare-fun b!6532616 () Bool)

(assert (=> b!6532616 (= e!3956140 (not e!3956132))))

(declare-fun res!2680085 () Bool)

(assert (=> b!6532616 (=> res!2680085 e!3956132)))

(assert (=> b!6532616 (= res!2680085 (not (is-Cons!65383 zl!343)))))

(assert (=> b!6532616 (= lt!2396984 (matchRSpec!3503 r!7292 s!2326))))

(assert (=> b!6532616 (= lt!2396984 (matchR!8585 r!7292 s!2326))))

(declare-fun lt!2396962 () Unit!158943)

(assert (=> b!6532616 (= lt!2396962 (mainMatchTheorem!3503 r!7292 s!2326))))

(declare-fun b!6532617 () Bool)

(declare-fun res!2680111 () Bool)

(assert (=> b!6532617 (=> (not res!2680111) (not e!3956139))))

(declare-fun toList!10186 ((Set Context!11572)) List!65507)

(assert (=> b!6532617 (= res!2680111 (= (toList!10186 z!1189) zl!343))))

(declare-fun b!6532618 () Bool)

(declare-fun tp!1807960 () Bool)

(assert (=> b!6532618 (= e!3956135 tp!1807960)))

(declare-fun tp!1807952 () Bool)

(declare-fun b!6532619 () Bool)

(assert (=> b!6532619 (= e!3956138 (and (inv!84253 (h!71831 zl!343)) e!3956131 tp!1807952))))

(declare-fun b!6532620 () Bool)

(declare-fun res!2680117 () Bool)

(assert (=> b!6532620 (=> res!2680117 e!3956125)))

(assert (=> b!6532620 (= res!2680117 e!3956121)))

(declare-fun res!2680094 () Bool)

(assert (=> b!6532620 (=> (not res!2680094) (not e!3956121))))

(assert (=> b!6532620 (= res!2680094 (is-Concat!25247 (regOne!33316 r!7292)))))

(declare-fun b!6532621 () Bool)

(declare-fun res!2680090 () Bool)

(assert (=> b!6532621 (=> res!2680090 e!3956128)))

(assert (=> b!6532621 (= res!2680090 (not (matchZipper!2414 z!1189 s!2326)))))

(declare-fun b!6532622 () Bool)

(assert (=> b!6532622 (= e!3956129 e!3956124)))

(declare-fun res!2680104 () Bool)

(assert (=> b!6532622 (=> res!2680104 e!3956124)))

(assert (=> b!6532622 (= res!2680104 (not (= s!2326 lt!2396958)))))

(declare-fun ++!14507 (List!65506 List!65506) List!65506)

(assert (=> b!6532622 (= lt!2396958 (++!14507 (_1!36684 lt!2396988) (_2!36684 lt!2396988)))))

(declare-fun lt!2396959 () Option!16293)

(declare-fun get!22685 (Option!16293) tuple2!66762)

(assert (=> b!6532622 (= lt!2396988 (get!22685 lt!2396959))))

(assert (=> b!6532622 (isDefined!12996 lt!2396959)))

(declare-fun findConcatSeparationZippers!167 ((Set Context!11572) (Set Context!11572) List!65506 List!65506 List!65506) Option!16293)

(assert (=> b!6532622 (= lt!2396959 (findConcatSeparationZippers!167 lt!2396993 lt!2396983 Nil!65382 s!2326 s!2326))))

(declare-fun lt!2396969 () Unit!158943)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!167 ((Set Context!11572) Context!11572 List!65506) Unit!158943)

(assert (=> b!6532622 (= lt!2396969 (lemmaConcatZipperMatchesStringThenFindConcatDefined!167 lt!2396993 lt!2396953 s!2326))))

(assert (= (and start!640500 res!2680095) b!6532617))

(assert (= (and b!6532617 res!2680111) b!6532598))

(assert (= (and b!6532598 res!2680106) b!6532616))

(assert (= (and b!6532616 (not res!2680085)) b!6532584))

(assert (= (and b!6532584 (not res!2680108)) b!6532603))

(assert (= (and b!6532603 (not res!2680109)) b!6532582))

(assert (= (and b!6532582 (not res!2680113)) b!6532588))

(assert (= (and b!6532588 (not res!2680100)) b!6532591))

(assert (= (and b!6532591 (not res!2680098)) b!6532604))

(assert (= (and b!6532604 (not res!2680107)) b!6532597))

(assert (= (and b!6532597 (not res!2680118)) b!6532600))

(assert (= (and b!6532600 c!1199082) b!6532602))

(assert (= (and b!6532600 (not c!1199082)) b!6532594))

(assert (= (and b!6532602 (not res!2680087)) b!6532596))

(assert (= (and b!6532600 (not res!2680096)) b!6532620))

(assert (= (and b!6532620 res!2680094) b!6532601))

(assert (= (and b!6532620 (not res!2680117)) b!6532585))

(assert (= (and b!6532585 (not res!2680114)) b!6532592))

(assert (= (and b!6532592 (not res!2680099)) b!6532579))

(assert (= (and b!6532579 (not res!2680088)) b!6532610))

(assert (= (and b!6532610 (not res!2680115)) b!6532607))

(assert (= (and b!6532607 (not res!2680093)) b!6532580))

(assert (= (and b!6532580 (not res!2680112)) b!6532612))

(assert (= (and b!6532612 (not res!2680092)) b!6532583))

(assert (= (and b!6532583 (not res!2680086)) b!6532613))

(assert (= (and b!6532613 (not res!2680102)) b!6532581))

(assert (= (and b!6532581 (not res!2680089)) b!6532621))

(assert (= (and b!6532621 (not res!2680090)) b!6532589))

(assert (= (and b!6532589 (not res!2680091)) b!6532609))

(assert (= (and b!6532609 res!2680105) b!6532586))

(assert (= (and b!6532609 (not res!2680097)) b!6532593))

(assert (= (and b!6532593 (not res!2680103)) b!6532599))

(assert (= (and b!6532599 (not res!2680116)) b!6532622))

(assert (= (and b!6532622 (not res!2680104)) b!6532595))

(assert (= (and b!6532595 (not res!2680110)) b!6532614))

(assert (= (and b!6532614 (not res!2680101)) b!6532590))

(assert (= (and start!640500 (is-ElementMatch!16402 r!7292)) b!6532608))

(assert (= (and start!640500 (is-Concat!25247 r!7292)) b!6532611))

(assert (= (and start!640500 (is-Star!16402 r!7292)) b!6532618))

(assert (= (and start!640500 (is-Union!16402 r!7292)) b!6532587))

(assert (= (and start!640500 condSetEmpty!44553) setIsEmpty!44553))

(assert (= (and start!640500 (not condSetEmpty!44553)) setNonEmpty!44553))

(assert (= setNonEmpty!44553 b!6532615))

(assert (= b!6532619 b!6532606))

(assert (= (and start!640500 (is-Cons!65383 zl!343)) b!6532619))

(assert (= (and start!640500 (is-Cons!65382 s!2326)) b!6532605))

(declare-fun m!7316140 () Bool)

(assert (=> b!6532613 m!7316140))

(declare-fun m!7316142 () Bool)

(assert (=> b!6532614 m!7316142))

(declare-fun m!7316144 () Bool)

(assert (=> b!6532595 m!7316144))

(declare-fun m!7316146 () Bool)

(assert (=> b!6532598 m!7316146))

(declare-fun m!7316148 () Bool)

(assert (=> b!6532600 m!7316148))

(declare-fun m!7316150 () Bool)

(assert (=> b!6532600 m!7316150))

(declare-fun m!7316152 () Bool)

(assert (=> b!6532600 m!7316152))

(declare-fun m!7316154 () Bool)

(assert (=> b!6532600 m!7316154))

(declare-fun m!7316156 () Bool)

(assert (=> b!6532600 m!7316156))

(declare-fun m!7316158 () Bool)

(assert (=> b!6532600 m!7316158))

(declare-fun m!7316160 () Bool)

(assert (=> b!6532600 m!7316160))

(declare-fun m!7316162 () Bool)

(assert (=> start!640500 m!7316162))

(declare-fun m!7316164 () Bool)

(assert (=> b!6532584 m!7316164))

(declare-fun m!7316166 () Bool)

(assert (=> b!6532583 m!7316166))

(declare-fun m!7316168 () Bool)

(assert (=> b!6532583 m!7316168))

(declare-fun m!7316170 () Bool)

(assert (=> b!6532583 m!7316170))

(declare-fun m!7316172 () Bool)

(assert (=> b!6532583 m!7316172))

(declare-fun m!7316174 () Bool)

(assert (=> b!6532583 m!7316174))

(declare-fun m!7316176 () Bool)

(assert (=> b!6532583 m!7316176))

(declare-fun m!7316178 () Bool)

(assert (=> b!6532583 m!7316178))

(declare-fun m!7316180 () Bool)

(assert (=> b!6532583 m!7316180))

(declare-fun m!7316182 () Bool)

(assert (=> b!6532583 m!7316182))

(declare-fun m!7316184 () Bool)

(assert (=> b!6532603 m!7316184))

(declare-fun m!7316186 () Bool)

(assert (=> b!6532622 m!7316186))

(declare-fun m!7316188 () Bool)

(assert (=> b!6532622 m!7316188))

(declare-fun m!7316190 () Bool)

(assert (=> b!6532622 m!7316190))

(declare-fun m!7316192 () Bool)

(assert (=> b!6532622 m!7316192))

(declare-fun m!7316194 () Bool)

(assert (=> b!6532622 m!7316194))

(declare-fun m!7316196 () Bool)

(assert (=> b!6532601 m!7316196))

(declare-fun m!7316198 () Bool)

(assert (=> b!6532590 m!7316198))

(declare-fun m!7316200 () Bool)

(assert (=> b!6532590 m!7316200))

(declare-fun m!7316202 () Bool)

(assert (=> b!6532590 m!7316202))

(declare-fun m!7316204 () Bool)

(assert (=> b!6532590 m!7316204))

(declare-fun m!7316206 () Bool)

(assert (=> b!6532590 m!7316206))

(declare-fun m!7316208 () Bool)

(assert (=> b!6532590 m!7316208))

(declare-fun m!7316210 () Bool)

(assert (=> b!6532590 m!7316210))

(declare-fun m!7316212 () Bool)

(assert (=> b!6532590 m!7316212))

(assert (=> b!6532590 m!7316198))

(declare-fun m!7316214 () Bool)

(assert (=> b!6532617 m!7316214))

(declare-fun m!7316216 () Bool)

(assert (=> b!6532588 m!7316216))

(assert (=> b!6532588 m!7316216))

(declare-fun m!7316218 () Bool)

(assert (=> b!6532588 m!7316218))

(declare-fun m!7316220 () Bool)

(assert (=> b!6532604 m!7316220))

(declare-fun m!7316222 () Bool)

(assert (=> b!6532604 m!7316222))

(declare-fun m!7316224 () Bool)

(assert (=> b!6532604 m!7316224))

(declare-fun m!7316226 () Bool)

(assert (=> b!6532604 m!7316226))

(declare-fun m!7316228 () Bool)

(assert (=> b!6532604 m!7316228))

(assert (=> b!6532604 m!7316226))

(assert (=> b!6532604 m!7316222))

(declare-fun m!7316230 () Bool)

(assert (=> b!6532604 m!7316230))

(declare-fun m!7316232 () Bool)

(assert (=> b!6532581 m!7316232))

(declare-fun m!7316234 () Bool)

(assert (=> b!6532581 m!7316234))

(declare-fun m!7316236 () Bool)

(assert (=> b!6532581 m!7316236))

(declare-fun m!7316238 () Bool)

(assert (=> b!6532616 m!7316238))

(declare-fun m!7316240 () Bool)

(assert (=> b!6532616 m!7316240))

(declare-fun m!7316242 () Bool)

(assert (=> b!6532616 m!7316242))

(declare-fun m!7316244 () Bool)

(assert (=> b!6532602 m!7316244))

(declare-fun m!7316246 () Bool)

(assert (=> b!6532602 m!7316246))

(declare-fun m!7316248 () Bool)

(assert (=> b!6532602 m!7316248))

(assert (=> b!6532609 m!7316246))

(declare-fun m!7316250 () Bool)

(assert (=> b!6532612 m!7316250))

(declare-fun m!7316252 () Bool)

(assert (=> b!6532579 m!7316252))

(declare-fun m!7316254 () Bool)

(assert (=> b!6532579 m!7316254))

(declare-fun m!7316256 () Bool)

(assert (=> b!6532579 m!7316256))

(declare-fun m!7316258 () Bool)

(assert (=> b!6532579 m!7316258))

(declare-fun m!7316260 () Bool)

(assert (=> b!6532579 m!7316260))

(declare-fun m!7316262 () Bool)

(assert (=> b!6532592 m!7316262))

(declare-fun m!7316264 () Bool)

(assert (=> b!6532619 m!7316264))

(declare-fun m!7316266 () Bool)

(assert (=> b!6532621 m!7316266))

(declare-fun m!7316268 () Bool)

(assert (=> b!6532586 m!7316268))

(assert (=> b!6532599 m!7316202))

(assert (=> b!6532599 m!7316198))

(assert (=> b!6532599 m!7316210))

(declare-fun m!7316270 () Bool)

(assert (=> b!6532599 m!7316270))

(declare-fun m!7316272 () Bool)

(assert (=> b!6532599 m!7316272))

(declare-fun m!7316274 () Bool)

(assert (=> b!6532599 m!7316274))

(declare-fun m!7316276 () Bool)

(assert (=> setNonEmpty!44553 m!7316276))

(declare-fun m!7316278 () Bool)

(assert (=> b!6532610 m!7316278))

(declare-fun m!7316280 () Bool)

(assert (=> b!6532610 m!7316280))

(declare-fun m!7316282 () Bool)

(assert (=> b!6532597 m!7316282))

(assert (=> b!6532596 m!7316268))

(push 1)

(assert (not b!6532600))

(assert (not b!6532596))

(assert (not b!6532612))

(assert (not b!6532613))

(assert tp_is_empty!42057)

(assert (not b!6532609))

(assert (not b!6532621))

(assert (not b!6532599))

(assert (not b!6532581))

(assert (not b!6532598))

(assert (not b!6532590))

(assert (not b!6532586))

(assert (not b!6532615))

(assert (not b!6532579))

(assert (not b!6532604))

(assert (not b!6532618))

(assert (not b!6532619))

(assert (not b!6532617))

(assert (not start!640500))

(assert (not b!6532588))

(assert (not b!6532622))

(assert (not b!6532592))

(assert (not b!6532601))

(assert (not b!6532583))

(assert (not b!6532603))

(assert (not b!6532595))

(assert (not b!6532597))

(assert (not b!6532602))

(assert (not b!6532616))

(assert (not b!6532614))

(assert (not b!6532587))

(assert (not b!6532610))

(assert (not b!6532606))

(assert (not b!6532584))

(assert (not b!6532611))

(assert (not setNonEmpty!44553))

(assert (not b!6532605))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2050545 () Bool)

(declare-fun c!1199101 () Bool)

(declare-fun isEmpty!37603 (List!65506) Bool)

(assert (=> d!2050545 (= c!1199101 (isEmpty!37603 (t!379146 s!2326)))))

(declare-fun e!3956225 () Bool)

(assert (=> d!2050545 (= (matchZipper!2414 lt!2396986 (t!379146 s!2326)) e!3956225)))

(declare-fun b!6532787 () Bool)

(declare-fun nullableZipper!2153 ((Set Context!11572)) Bool)

(assert (=> b!6532787 (= e!3956225 (nullableZipper!2153 lt!2396986))))

(declare-fun b!6532788 () Bool)

(declare-fun head!13267 (List!65506) C!33074)

(declare-fun tail!12352 (List!65506) List!65506)

(assert (=> b!6532788 (= e!3956225 (matchZipper!2414 (derivationStepZipper!2368 lt!2396986 (head!13267 (t!379146 s!2326))) (tail!12352 (t!379146 s!2326))))))

(assert (= (and d!2050545 c!1199101) b!6532787))

(assert (= (and d!2050545 (not c!1199101)) b!6532788))

(declare-fun m!7316428 () Bool)

(assert (=> d!2050545 m!7316428))

(declare-fun m!7316430 () Bool)

(assert (=> b!6532787 m!7316430))

(declare-fun m!7316432 () Bool)

(assert (=> b!6532788 m!7316432))

(assert (=> b!6532788 m!7316432))

(declare-fun m!7316434 () Bool)

(assert (=> b!6532788 m!7316434))

(declare-fun m!7316436 () Bool)

(assert (=> b!6532788 m!7316436))

(assert (=> b!6532788 m!7316434))

(assert (=> b!6532788 m!7316436))

(declare-fun m!7316438 () Bool)

(assert (=> b!6532788 m!7316438))

(assert (=> b!6532609 d!2050545))

(declare-fun d!2050547 () Bool)

(declare-fun c!1199102 () Bool)

(assert (=> d!2050547 (= c!1199102 (isEmpty!37603 (t!379146 s!2326)))))

(declare-fun e!3956226 () Bool)

(assert (=> d!2050547 (= (matchZipper!2414 lt!2396994 (t!379146 s!2326)) e!3956226)))

(declare-fun b!6532789 () Bool)

(assert (=> b!6532789 (= e!3956226 (nullableZipper!2153 lt!2396994))))

(declare-fun b!6532790 () Bool)

(assert (=> b!6532790 (= e!3956226 (matchZipper!2414 (derivationStepZipper!2368 lt!2396994 (head!13267 (t!379146 s!2326))) (tail!12352 (t!379146 s!2326))))))

(assert (= (and d!2050547 c!1199102) b!6532789))

(assert (= (and d!2050547 (not c!1199102)) b!6532790))

(assert (=> d!2050547 m!7316428))

(declare-fun m!7316440 () Bool)

(assert (=> b!6532789 m!7316440))

(assert (=> b!6532790 m!7316432))

(assert (=> b!6532790 m!7316432))

(declare-fun m!7316442 () Bool)

(assert (=> b!6532790 m!7316442))

(assert (=> b!6532790 m!7316436))

(assert (=> b!6532790 m!7316442))

(assert (=> b!6532790 m!7316436))

(declare-fun m!7316444 () Bool)

(assert (=> b!6532790 m!7316444))

(assert (=> b!6532610 d!2050547))

(declare-fun d!2050549 () Bool)

(declare-fun c!1199103 () Bool)

(assert (=> d!2050549 (= c!1199103 (isEmpty!37603 s!2326))))

(declare-fun e!3956227 () Bool)

(assert (=> d!2050549 (= (matchZipper!2414 lt!2396982 s!2326) e!3956227)))

(declare-fun b!6532791 () Bool)

(assert (=> b!6532791 (= e!3956227 (nullableZipper!2153 lt!2396982))))

(declare-fun b!6532792 () Bool)

(assert (=> b!6532792 (= e!3956227 (matchZipper!2414 (derivationStepZipper!2368 lt!2396982 (head!13267 s!2326)) (tail!12352 s!2326)))))

(assert (= (and d!2050549 c!1199103) b!6532791))

(assert (= (and d!2050549 (not c!1199103)) b!6532792))

(declare-fun m!7316446 () Bool)

(assert (=> d!2050549 m!7316446))

(declare-fun m!7316448 () Bool)

(assert (=> b!6532791 m!7316448))

(declare-fun m!7316450 () Bool)

(assert (=> b!6532792 m!7316450))

(assert (=> b!6532792 m!7316450))

(declare-fun m!7316452 () Bool)

(assert (=> b!6532792 m!7316452))

(declare-fun m!7316454 () Bool)

(assert (=> b!6532792 m!7316454))

(assert (=> b!6532792 m!7316452))

(assert (=> b!6532792 m!7316454))

(declare-fun m!7316456 () Bool)

(assert (=> b!6532792 m!7316456))

(assert (=> b!6532610 d!2050549))

(declare-fun b!6532821 () Bool)

(declare-fun res!2680257 () Bool)

(declare-fun e!3956246 () Bool)

(assert (=> b!6532821 (=> res!2680257 e!3956246)))

(assert (=> b!6532821 (= res!2680257 (not (is-ElementMatch!16402 (reg!16731 (regOne!33316 r!7292)))))))

(declare-fun e!3956247 () Bool)

(assert (=> b!6532821 (= e!3956247 e!3956246)))

(declare-fun bm!567661 () Bool)

(declare-fun call!567666 () Bool)

(assert (=> bm!567661 (= call!567666 (isEmpty!37603 (_1!36684 lt!2396988)))))

(declare-fun b!6532822 () Bool)

(declare-fun e!3956248 () Bool)

(assert (=> b!6532822 (= e!3956248 (not (= (head!13267 (_1!36684 lt!2396988)) (c!1199083 (reg!16731 (regOne!33316 r!7292))))))))

(declare-fun b!6532823 () Bool)

(declare-fun e!3956245 () Bool)

(declare-fun lt!2397141 () Bool)

(assert (=> b!6532823 (= e!3956245 (= lt!2397141 call!567666))))

(declare-fun b!6532824 () Bool)

(assert (=> b!6532824 (= e!3956247 (not lt!2397141))))

(declare-fun b!6532825 () Bool)

(declare-fun res!2680250 () Bool)

(assert (=> b!6532825 (=> res!2680250 e!3956246)))

(declare-fun e!3956243 () Bool)

(assert (=> b!6532825 (= res!2680250 e!3956243)))

(declare-fun res!2680256 () Bool)

(assert (=> b!6532825 (=> (not res!2680256) (not e!3956243))))

(assert (=> b!6532825 (= res!2680256 lt!2397141)))

(declare-fun b!6532826 () Bool)

(declare-fun e!3956242 () Bool)

(assert (=> b!6532826 (= e!3956242 (nullable!6395 (reg!16731 (regOne!33316 r!7292))))))

(declare-fun d!2050551 () Bool)

(assert (=> d!2050551 e!3956245))

(declare-fun c!1199112 () Bool)

(assert (=> d!2050551 (= c!1199112 (is-EmptyExpr!16402 (reg!16731 (regOne!33316 r!7292))))))

(assert (=> d!2050551 (= lt!2397141 e!3956242)))

(declare-fun c!1199110 () Bool)

(assert (=> d!2050551 (= c!1199110 (isEmpty!37603 (_1!36684 lt!2396988)))))

(assert (=> d!2050551 (validRegex!8138 (reg!16731 (regOne!33316 r!7292)))))

(assert (=> d!2050551 (= (matchR!8585 (reg!16731 (regOne!33316 r!7292)) (_1!36684 lt!2396988)) lt!2397141)))

(declare-fun b!6532827 () Bool)

(declare-fun res!2680251 () Bool)

(assert (=> b!6532827 (=> (not res!2680251) (not e!3956243))))

(assert (=> b!6532827 (= res!2680251 (isEmpty!37603 (tail!12352 (_1!36684 lt!2396988))))))

(declare-fun b!6532828 () Bool)

(declare-fun e!3956244 () Bool)

(assert (=> b!6532828 (= e!3956246 e!3956244)))

(declare-fun res!2680252 () Bool)

(assert (=> b!6532828 (=> (not res!2680252) (not e!3956244))))

(assert (=> b!6532828 (= res!2680252 (not lt!2397141))))

(declare-fun b!6532829 () Bool)

(declare-fun res!2680253 () Bool)

(assert (=> b!6532829 (=> (not res!2680253) (not e!3956243))))

(assert (=> b!6532829 (= res!2680253 (not call!567666))))

(declare-fun b!6532830 () Bool)

(assert (=> b!6532830 (= e!3956243 (= (head!13267 (_1!36684 lt!2396988)) (c!1199083 (reg!16731 (regOne!33316 r!7292)))))))

(declare-fun b!6532831 () Bool)

(declare-fun derivativeStep!5092 (Regex!16402 C!33074) Regex!16402)

(assert (=> b!6532831 (= e!3956242 (matchR!8585 (derivativeStep!5092 (reg!16731 (regOne!33316 r!7292)) (head!13267 (_1!36684 lt!2396988))) (tail!12352 (_1!36684 lt!2396988))))))

(declare-fun b!6532832 () Bool)

(assert (=> b!6532832 (= e!3956245 e!3956247)))

(declare-fun c!1199111 () Bool)

(assert (=> b!6532832 (= c!1199111 (is-EmptyLang!16402 (reg!16731 (regOne!33316 r!7292))))))

(declare-fun b!6532833 () Bool)

(assert (=> b!6532833 (= e!3956244 e!3956248)))

(declare-fun res!2680255 () Bool)

(assert (=> b!6532833 (=> res!2680255 e!3956248)))

(assert (=> b!6532833 (= res!2680255 call!567666)))

(declare-fun b!6532834 () Bool)

(declare-fun res!2680254 () Bool)

(assert (=> b!6532834 (=> res!2680254 e!3956248)))

(assert (=> b!6532834 (= res!2680254 (not (isEmpty!37603 (tail!12352 (_1!36684 lt!2396988)))))))

(assert (= (and d!2050551 c!1199110) b!6532826))

(assert (= (and d!2050551 (not c!1199110)) b!6532831))

(assert (= (and d!2050551 c!1199112) b!6532823))

(assert (= (and d!2050551 (not c!1199112)) b!6532832))

(assert (= (and b!6532832 c!1199111) b!6532824))

(assert (= (and b!6532832 (not c!1199111)) b!6532821))

(assert (= (and b!6532821 (not res!2680257)) b!6532825))

(assert (= (and b!6532825 res!2680256) b!6532829))

(assert (= (and b!6532829 res!2680253) b!6532827))

(assert (= (and b!6532827 res!2680251) b!6532830))

(assert (= (and b!6532825 (not res!2680250)) b!6532828))

(assert (= (and b!6532828 res!2680252) b!6532833))

(assert (= (and b!6532833 (not res!2680255)) b!6532834))

(assert (= (and b!6532834 (not res!2680254)) b!6532822))

(assert (= (or b!6532823 b!6532829 b!6532833) bm!567661))

(declare-fun m!7316458 () Bool)

(assert (=> b!6532834 m!7316458))

(assert (=> b!6532834 m!7316458))

(declare-fun m!7316460 () Bool)

(assert (=> b!6532834 m!7316460))

(declare-fun m!7316462 () Bool)

(assert (=> b!6532822 m!7316462))

(declare-fun m!7316464 () Bool)

(assert (=> d!2050551 m!7316464))

(declare-fun m!7316466 () Bool)

(assert (=> d!2050551 m!7316466))

(assert (=> bm!567661 m!7316464))

(assert (=> b!6532831 m!7316462))

(assert (=> b!6532831 m!7316462))

(declare-fun m!7316468 () Bool)

(assert (=> b!6532831 m!7316468))

(assert (=> b!6532831 m!7316458))

(assert (=> b!6532831 m!7316468))

(assert (=> b!6532831 m!7316458))

(declare-fun m!7316470 () Bool)

(assert (=> b!6532831 m!7316470))

(declare-fun m!7316472 () Bool)

(assert (=> b!6532826 m!7316472))

(assert (=> b!6532827 m!7316458))

(assert (=> b!6532827 m!7316458))

(assert (=> b!6532827 m!7316460))

(assert (=> b!6532830 m!7316462))

(assert (=> b!6532590 d!2050551))

(declare-fun d!2050553 () Bool)

(assert (=> d!2050553 (= (matchR!8585 (reg!16731 (regOne!33316 r!7292)) (_1!36684 lt!2396988)) (matchZipper!2414 lt!2396993 (_1!36684 lt!2396988)))))

(declare-fun lt!2397144 () Unit!158943)

(declare-fun choose!48495 ((Set Context!11572) List!65507 Regex!16402 List!65506) Unit!158943)

(assert (=> d!2050553 (= lt!2397144 (choose!48495 lt!2396993 lt!2396985 (reg!16731 (regOne!33316 r!7292)) (_1!36684 lt!2396988)))))

(assert (=> d!2050553 (validRegex!8138 (reg!16731 (regOne!33316 r!7292)))))

(assert (=> d!2050553 (= (theoremZipperRegexEquiv!838 lt!2396993 lt!2396985 (reg!16731 (regOne!33316 r!7292)) (_1!36684 lt!2396988)) lt!2397144)))

(declare-fun bs!1666714 () Bool)

(assert (= bs!1666714 d!2050553))

(assert (=> bs!1666714 m!7316204))

(assert (=> bs!1666714 m!7316144))

(declare-fun m!7316474 () Bool)

(assert (=> bs!1666714 m!7316474))

(assert (=> bs!1666714 m!7316466))

(assert (=> b!6532590 d!2050553))

(declare-fun d!2050555 () Bool)

(declare-fun forall!15580 (List!65505 Int) Bool)

(assert (=> d!2050555 (forall!15580 (++!14506 lt!2396976 lt!2396966) lambda!362308)))

(declare-fun lt!2397147 () Unit!158943)

(declare-fun choose!48496 (List!65505 List!65505 Int) Unit!158943)

(assert (=> d!2050555 (= lt!2397147 (choose!48496 lt!2396976 lt!2396966 lambda!362308))))

(assert (=> d!2050555 (forall!15580 lt!2396976 lambda!362308)))

(assert (=> d!2050555 (= (lemmaConcatPreservesForall!375 lt!2396976 lt!2396966 lambda!362308) lt!2397147)))

(declare-fun bs!1666715 () Bool)

(assert (= bs!1666715 d!2050555))

(assert (=> bs!1666715 m!7316202))

(assert (=> bs!1666715 m!7316202))

(declare-fun m!7316476 () Bool)

(assert (=> bs!1666715 m!7316476))

(declare-fun m!7316478 () Bool)

(assert (=> bs!1666715 m!7316478))

(declare-fun m!7316480 () Bool)

(assert (=> bs!1666715 m!7316480))

(assert (=> b!6532590 d!2050555))

(declare-fun bs!1666716 () Bool)

(declare-fun d!2050557 () Bool)

(assert (= bs!1666716 (and d!2050557 b!6532599)))

(declare-fun lambda!362338 () Int)

(assert (=> bs!1666716 (= lambda!362338 lambda!362308)))

(assert (=> d!2050557 (matchZipper!2414 (set.insert (Context!11573 (++!14506 (exprs!6286 lt!2396980) (exprs!6286 lt!2396953))) (as set.empty (Set Context!11572))) (++!14507 (_1!36684 lt!2396988) (_2!36684 lt!2396988)))))

(declare-fun lt!2397153 () Unit!158943)

(assert (=> d!2050557 (= lt!2397153 (lemmaConcatPreservesForall!375 (exprs!6286 lt!2396980) (exprs!6286 lt!2396953) lambda!362338))))

(declare-fun lt!2397152 () Unit!158943)

(declare-fun choose!48497 (Context!11572 Context!11572 List!65506 List!65506) Unit!158943)

(assert (=> d!2050557 (= lt!2397152 (choose!48497 lt!2396980 lt!2396953 (_1!36684 lt!2396988) (_2!36684 lt!2396988)))))

(assert (=> d!2050557 (matchZipper!2414 (set.insert lt!2396980 (as set.empty (Set Context!11572))) (_1!36684 lt!2396988))))

(assert (=> d!2050557 (= (lemmaConcatenateContextMatchesConcatOfStrings!183 lt!2396980 lt!2396953 (_1!36684 lt!2396988) (_2!36684 lt!2396988)) lt!2397152)))

(declare-fun bs!1666717 () Bool)

(assert (= bs!1666717 d!2050557))

(declare-fun m!7316482 () Bool)

(assert (=> bs!1666717 m!7316482))

(declare-fun m!7316484 () Bool)

(assert (=> bs!1666717 m!7316484))

(declare-fun m!7316486 () Bool)

(assert (=> bs!1666717 m!7316486))

(assert (=> bs!1666717 m!7316484))

(assert (=> bs!1666717 m!7316186))

(declare-fun m!7316488 () Bool)

(assert (=> bs!1666717 m!7316488))

(assert (=> bs!1666717 m!7316186))

(assert (=> bs!1666717 m!7316182))

(assert (=> bs!1666717 m!7316182))

(declare-fun m!7316490 () Bool)

(assert (=> bs!1666717 m!7316490))

(declare-fun m!7316492 () Bool)

(assert (=> bs!1666717 m!7316492))

(assert (=> b!6532590 d!2050557))

(declare-fun d!2050559 () Bool)

(declare-fun e!3956254 () Bool)

(assert (=> d!2050559 e!3956254))

(declare-fun res!2680263 () Bool)

(assert (=> d!2050559 (=> (not res!2680263) (not e!3956254))))

(declare-fun lt!2397156 () List!65505)

(declare-fun content!12509 (List!65505) (Set Regex!16402))

(assert (=> d!2050559 (= res!2680263 (= (content!12509 lt!2397156) (set.union (content!12509 lt!2396976) (content!12509 lt!2396966))))))

(declare-fun e!3956253 () List!65505)

(assert (=> d!2050559 (= lt!2397156 e!3956253)))

(declare-fun c!1199115 () Bool)

(assert (=> d!2050559 (= c!1199115 (is-Nil!65381 lt!2396976))))

(assert (=> d!2050559 (= (++!14506 lt!2396976 lt!2396966) lt!2397156)))

(declare-fun b!6532843 () Bool)

(assert (=> b!6532843 (= e!3956253 lt!2396966)))

(declare-fun b!6532844 () Bool)

(assert (=> b!6532844 (= e!3956253 (Cons!65381 (h!71829 lt!2396976) (++!14506 (t!379145 lt!2396976) lt!2396966)))))

(declare-fun b!6532845 () Bool)

(declare-fun res!2680262 () Bool)

(assert (=> b!6532845 (=> (not res!2680262) (not e!3956254))))

(declare-fun size!40467 (List!65505) Int)

(assert (=> b!6532845 (= res!2680262 (= (size!40467 lt!2397156) (+ (size!40467 lt!2396976) (size!40467 lt!2396966))))))

(declare-fun b!6532846 () Bool)

(assert (=> b!6532846 (= e!3956254 (or (not (= lt!2396966 Nil!65381)) (= lt!2397156 lt!2396976)))))

(assert (= (and d!2050559 c!1199115) b!6532843))

(assert (= (and d!2050559 (not c!1199115)) b!6532844))

(assert (= (and d!2050559 res!2680263) b!6532845))

(assert (= (and b!6532845 res!2680262) b!6532846))

(declare-fun m!7316494 () Bool)

(assert (=> d!2050559 m!7316494))

(declare-fun m!7316496 () Bool)

(assert (=> d!2050559 m!7316496))

(declare-fun m!7316498 () Bool)

(assert (=> d!2050559 m!7316498))

(declare-fun m!7316500 () Bool)

(assert (=> b!6532844 m!7316500))

(declare-fun m!7316502 () Bool)

(assert (=> b!6532845 m!7316502))

(declare-fun m!7316504 () Bool)

(assert (=> b!6532845 m!7316504))

(declare-fun m!7316506 () Bool)

(assert (=> b!6532845 m!7316506))

(assert (=> b!6532590 d!2050559))

(declare-fun bs!1666718 () Bool)

(declare-fun d!2050561 () Bool)

(assert (= bs!1666718 (and d!2050561 b!6532599)))

(declare-fun lambda!362341 () Int)

(assert (=> bs!1666718 (= lambda!362341 lambda!362308)))

(declare-fun bs!1666719 () Bool)

(assert (= bs!1666719 (and d!2050561 d!2050557)))

(assert (=> bs!1666719 (= lambda!362341 lambda!362338)))

(assert (=> d!2050561 (= (inv!84253 lt!2396953) (forall!15580 (exprs!6286 lt!2396953) lambda!362341))))

(declare-fun bs!1666720 () Bool)

(assert (= bs!1666720 d!2050561))

(declare-fun m!7316508 () Bool)

(assert (=> bs!1666720 m!7316508))

(assert (=> b!6532590 d!2050561))

(declare-fun d!2050563 () Bool)

(declare-fun c!1199116 () Bool)

(assert (=> d!2050563 (= c!1199116 (isEmpty!37603 lt!2396958))))

(declare-fun e!3956255 () Bool)

(assert (=> d!2050563 (= (matchZipper!2414 (set.insert (Context!11573 (++!14506 lt!2396976 lt!2396966)) (as set.empty (Set Context!11572))) lt!2396958) e!3956255)))

(declare-fun b!6532847 () Bool)

(assert (=> b!6532847 (= e!3956255 (nullableZipper!2153 (set.insert (Context!11573 (++!14506 lt!2396976 lt!2396966)) (as set.empty (Set Context!11572)))))))

(declare-fun b!6532848 () Bool)

(assert (=> b!6532848 (= e!3956255 (matchZipper!2414 (derivationStepZipper!2368 (set.insert (Context!11573 (++!14506 lt!2396976 lt!2396966)) (as set.empty (Set Context!11572))) (head!13267 lt!2396958)) (tail!12352 lt!2396958)))))

(assert (= (and d!2050563 c!1199116) b!6532847))

(assert (= (and d!2050563 (not c!1199116)) b!6532848))

(declare-fun m!7316510 () Bool)

(assert (=> d!2050563 m!7316510))

(assert (=> b!6532847 m!7316198))

(declare-fun m!7316512 () Bool)

(assert (=> b!6532847 m!7316512))

(declare-fun m!7316514 () Bool)

(assert (=> b!6532848 m!7316514))

(assert (=> b!6532848 m!7316198))

(assert (=> b!6532848 m!7316514))

(declare-fun m!7316516 () Bool)

(assert (=> b!6532848 m!7316516))

(declare-fun m!7316518 () Bool)

(assert (=> b!6532848 m!7316518))

(assert (=> b!6532848 m!7316516))

(assert (=> b!6532848 m!7316518))

(declare-fun m!7316520 () Bool)

(assert (=> b!6532848 m!7316520))

(assert (=> b!6532590 d!2050563))

(declare-fun b!6532871 () Bool)

(declare-fun e!3956271 () (Set Context!11572))

(assert (=> b!6532871 (= e!3956271 (as set.empty (Set Context!11572)))))

(declare-fun b!6532872 () Bool)

(declare-fun e!3956268 () (Set Context!11572))

(declare-fun call!567680 () (Set Context!11572))

(assert (=> b!6532872 (= e!3956268 call!567680)))

(declare-fun b!6532873 () Bool)

(declare-fun e!3956273 () (Set Context!11572))

(assert (=> b!6532873 (= e!3956273 (set.insert lt!2396953 (as set.empty (Set Context!11572))))))

(declare-fun d!2050565 () Bool)

(declare-fun c!1199127 () Bool)

(assert (=> d!2050565 (= c!1199127 (and (is-ElementMatch!16402 (reg!16731 (regOne!33316 r!7292))) (= (c!1199083 (reg!16731 (regOne!33316 r!7292))) (h!71830 s!2326))))))

(assert (=> d!2050565 (= (derivationStepZipperDown!1650 (reg!16731 (regOne!33316 r!7292)) lt!2396953 (h!71830 s!2326)) e!3956273)))

(declare-fun b!6532874 () Bool)

(declare-fun c!1199129 () Bool)

(declare-fun e!3956269 () Bool)

(assert (=> b!6532874 (= c!1199129 e!3956269)))

(declare-fun res!2680266 () Bool)

(assert (=> b!6532874 (=> (not res!2680266) (not e!3956269))))

(assert (=> b!6532874 (= res!2680266 (is-Concat!25247 (reg!16731 (regOne!33316 r!7292))))))

(declare-fun e!3956270 () (Set Context!11572))

(declare-fun e!3956272 () (Set Context!11572))

(assert (=> b!6532874 (= e!3956270 e!3956272)))

(declare-fun call!567684 () List!65505)

(declare-fun c!1199128 () Bool)

(declare-fun bm!567674 () Bool)

(declare-fun $colon$colon!2249 (List!65505 Regex!16402) List!65505)

(assert (=> bm!567674 (= call!567684 ($colon$colon!2249 (exprs!6286 lt!2396953) (ite (or c!1199129 c!1199128) (regTwo!33316 (reg!16731 (regOne!33316 r!7292))) (reg!16731 (regOne!33316 r!7292)))))))

(declare-fun b!6532875 () Bool)

(assert (=> b!6532875 (= e!3956272 e!3956268)))

(assert (=> b!6532875 (= c!1199128 (is-Concat!25247 (reg!16731 (regOne!33316 r!7292))))))

(declare-fun c!1199130 () Bool)

(declare-fun call!567681 () (Set Context!11572))

(declare-fun bm!567675 () Bool)

(assert (=> bm!567675 (= call!567681 (derivationStepZipperDown!1650 (ite c!1199130 (regOne!33317 (reg!16731 (regOne!33316 r!7292))) (regOne!33316 (reg!16731 (regOne!33316 r!7292)))) (ite c!1199130 lt!2396953 (Context!11573 call!567684)) (h!71830 s!2326)))))

(declare-fun b!6532876 () Bool)

(assert (=> b!6532876 (= e!3956271 call!567680)))

(declare-fun b!6532877 () Bool)

(assert (=> b!6532877 (= e!3956273 e!3956270)))

(assert (=> b!6532877 (= c!1199130 (is-Union!16402 (reg!16731 (regOne!33316 r!7292))))))

(declare-fun b!6532878 () Bool)

(declare-fun c!1199131 () Bool)

(assert (=> b!6532878 (= c!1199131 (is-Star!16402 (reg!16731 (regOne!33316 r!7292))))))

(assert (=> b!6532878 (= e!3956268 e!3956271)))

(declare-fun bm!567676 () Bool)

(declare-fun call!567679 () List!65505)

(assert (=> bm!567676 (= call!567679 call!567684)))

(declare-fun bm!567677 () Bool)

(declare-fun call!567683 () (Set Context!11572))

(assert (=> bm!567677 (= call!567683 (derivationStepZipperDown!1650 (ite c!1199130 (regTwo!33317 (reg!16731 (regOne!33316 r!7292))) (ite c!1199129 (regTwo!33316 (reg!16731 (regOne!33316 r!7292))) (ite c!1199128 (regOne!33316 (reg!16731 (regOne!33316 r!7292))) (reg!16731 (reg!16731 (regOne!33316 r!7292)))))) (ite (or c!1199130 c!1199129) lt!2396953 (Context!11573 call!567679)) (h!71830 s!2326)))))

(declare-fun b!6532879 () Bool)

(assert (=> b!6532879 (= e!3956270 (set.union call!567681 call!567683))))

(declare-fun b!6532880 () Bool)

(declare-fun call!567682 () (Set Context!11572))

(assert (=> b!6532880 (= e!3956272 (set.union call!567681 call!567682))))

(declare-fun bm!567678 () Bool)

(assert (=> bm!567678 (= call!567682 call!567683)))

(declare-fun b!6532881 () Bool)

(assert (=> b!6532881 (= e!3956269 (nullable!6395 (regOne!33316 (reg!16731 (regOne!33316 r!7292)))))))

(declare-fun bm!567679 () Bool)

(assert (=> bm!567679 (= call!567680 call!567682)))

(assert (= (and d!2050565 c!1199127) b!6532873))

(assert (= (and d!2050565 (not c!1199127)) b!6532877))

(assert (= (and b!6532877 c!1199130) b!6532879))

(assert (= (and b!6532877 (not c!1199130)) b!6532874))

(assert (= (and b!6532874 res!2680266) b!6532881))

(assert (= (and b!6532874 c!1199129) b!6532880))

(assert (= (and b!6532874 (not c!1199129)) b!6532875))

(assert (= (and b!6532875 c!1199128) b!6532872))

(assert (= (and b!6532875 (not c!1199128)) b!6532878))

(assert (= (and b!6532878 c!1199131) b!6532876))

(assert (= (and b!6532878 (not c!1199131)) b!6532871))

(assert (= (or b!6532872 b!6532876) bm!567676))

(assert (= (or b!6532872 b!6532876) bm!567679))

(assert (= (or b!6532880 bm!567676) bm!567674))

(assert (= (or b!6532880 bm!567679) bm!567678))

(assert (= (or b!6532879 bm!567678) bm!567677))

(assert (= (or b!6532879 b!6532880) bm!567675))

(declare-fun m!7316522 () Bool)

(assert (=> bm!567677 m!7316522))

(assert (=> b!6532873 m!7316172))

(declare-fun m!7316524 () Bool)

(assert (=> b!6532881 m!7316524))

(declare-fun m!7316526 () Bool)

(assert (=> bm!567675 m!7316526))

(declare-fun m!7316528 () Bool)

(assert (=> bm!567674 m!7316528))

(assert (=> b!6532592 d!2050565))

(declare-fun d!2050567 () Bool)

(declare-fun lt!2397159 () Regex!16402)

(assert (=> d!2050567 (validRegex!8138 lt!2397159)))

(assert (=> d!2050567 (= lt!2397159 (generalisedUnion!2246 (unfocusZipperList!1823 (Cons!65383 lt!2396953 Nil!65383))))))

(assert (=> d!2050567 (= (unfocusZipper!2144 (Cons!65383 lt!2396953 Nil!65383)) lt!2397159)))

(declare-fun bs!1666721 () Bool)

(assert (= bs!1666721 d!2050567))

(declare-fun m!7316530 () Bool)

(assert (=> bs!1666721 m!7316530))

(declare-fun m!7316532 () Bool)

(assert (=> bs!1666721 m!7316532))

(assert (=> bs!1666721 m!7316532))

(declare-fun m!7316534 () Bool)

(assert (=> bs!1666721 m!7316534))

(assert (=> b!6532613 d!2050567))

(declare-fun d!2050569 () Bool)

(declare-fun lt!2397160 () Regex!16402)

(assert (=> d!2050569 (validRegex!8138 lt!2397160)))

(assert (=> d!2050569 (= lt!2397160 (generalisedUnion!2246 (unfocusZipperList!1823 (Cons!65383 lt!2396977 Nil!65383))))))

(assert (=> d!2050569 (= (unfocusZipper!2144 (Cons!65383 lt!2396977 Nil!65383)) lt!2397160)))

(declare-fun bs!1666722 () Bool)

(assert (= bs!1666722 d!2050569))

(declare-fun m!7316536 () Bool)

(assert (=> bs!1666722 m!7316536))

(declare-fun m!7316538 () Bool)

(assert (=> bs!1666722 m!7316538))

(assert (=> bs!1666722 m!7316538))

(declare-fun m!7316540 () Bool)

(assert (=> bs!1666722 m!7316540))

(assert (=> b!6532612 d!2050569))

(declare-fun b!6532900 () Bool)

(declare-fun e!3956290 () Bool)

(declare-fun e!3956292 () Bool)

(assert (=> b!6532900 (= e!3956290 e!3956292)))

(declare-fun res!2680281 () Bool)

(assert (=> b!6532900 (= res!2680281 (not (nullable!6395 (reg!16731 r!7292))))))

(assert (=> b!6532900 (=> (not res!2680281) (not e!3956292))))

(declare-fun d!2050571 () Bool)

(declare-fun res!2680279 () Bool)

(declare-fun e!3956294 () Bool)

(assert (=> d!2050571 (=> res!2680279 e!3956294)))

(assert (=> d!2050571 (= res!2680279 (is-ElementMatch!16402 r!7292))))

(assert (=> d!2050571 (= (validRegex!8138 r!7292) e!3956294)))

(declare-fun b!6532901 () Bool)

(declare-fun e!3956291 () Bool)

(declare-fun e!3956289 () Bool)

(assert (=> b!6532901 (= e!3956291 e!3956289)))

(declare-fun res!2680277 () Bool)

(assert (=> b!6532901 (=> (not res!2680277) (not e!3956289))))

(declare-fun call!567693 () Bool)

(assert (=> b!6532901 (= res!2680277 call!567693)))

(declare-fun b!6532902 () Bool)

(declare-fun res!2680280 () Bool)

(declare-fun e!3956293 () Bool)

(assert (=> b!6532902 (=> (not res!2680280) (not e!3956293))))

(assert (=> b!6532902 (= res!2680280 call!567693)))

(declare-fun e!3956288 () Bool)

(assert (=> b!6532902 (= e!3956288 e!3956293)))

(declare-fun bm!567686 () Bool)

(declare-fun c!1199136 () Bool)

(assert (=> bm!567686 (= call!567693 (validRegex!8138 (ite c!1199136 (regOne!33317 r!7292) (regOne!33316 r!7292))))))

(declare-fun b!6532903 () Bool)

(assert (=> b!6532903 (= e!3956294 e!3956290)))

(declare-fun c!1199137 () Bool)

(assert (=> b!6532903 (= c!1199137 (is-Star!16402 r!7292))))

(declare-fun b!6532904 () Bool)

(declare-fun res!2680278 () Bool)

(assert (=> b!6532904 (=> res!2680278 e!3956291)))

(assert (=> b!6532904 (= res!2680278 (not (is-Concat!25247 r!7292)))))

(assert (=> b!6532904 (= e!3956288 e!3956291)))

(declare-fun b!6532905 () Bool)

(assert (=> b!6532905 (= e!3956290 e!3956288)))

(assert (=> b!6532905 (= c!1199136 (is-Union!16402 r!7292))))

(declare-fun bm!567687 () Bool)

(declare-fun call!567691 () Bool)

(declare-fun call!567692 () Bool)

(assert (=> bm!567687 (= call!567691 call!567692)))

(declare-fun bm!567688 () Bool)

(assert (=> bm!567688 (= call!567692 (validRegex!8138 (ite c!1199137 (reg!16731 r!7292) (ite c!1199136 (regTwo!33317 r!7292) (regTwo!33316 r!7292)))))))

(declare-fun b!6532906 () Bool)

(assert (=> b!6532906 (= e!3956292 call!567692)))

(declare-fun b!6532907 () Bool)

(assert (=> b!6532907 (= e!3956293 call!567691)))

(declare-fun b!6532908 () Bool)

(assert (=> b!6532908 (= e!3956289 call!567691)))

(assert (= (and d!2050571 (not res!2680279)) b!6532903))

(assert (= (and b!6532903 c!1199137) b!6532900))

(assert (= (and b!6532903 (not c!1199137)) b!6532905))

(assert (= (and b!6532900 res!2680281) b!6532906))

(assert (= (and b!6532905 c!1199136) b!6532902))

(assert (= (and b!6532905 (not c!1199136)) b!6532904))

(assert (= (and b!6532902 res!2680280) b!6532907))

(assert (= (and b!6532904 (not res!2680278)) b!6532901))

(assert (= (and b!6532901 res!2680277) b!6532908))

(assert (= (or b!6532907 b!6532908) bm!567687))

(assert (= (or b!6532902 b!6532901) bm!567686))

(assert (= (or b!6532906 bm!567687) bm!567688))

(declare-fun m!7316542 () Bool)

(assert (=> b!6532900 m!7316542))

(declare-fun m!7316544 () Bool)

(assert (=> bm!567686 m!7316544))

(declare-fun m!7316546 () Bool)

(assert (=> bm!567688 m!7316546))

(assert (=> start!640500 d!2050571))

(declare-fun d!2050573 () Bool)

(declare-fun c!1199138 () Bool)

(assert (=> d!2050573 (= c!1199138 (isEmpty!37603 (_2!36684 lt!2396988)))))

(declare-fun e!3956295 () Bool)

(assert (=> d!2050573 (= (matchZipper!2414 lt!2396983 (_2!36684 lt!2396988)) e!3956295)))

(declare-fun b!6532909 () Bool)

(assert (=> b!6532909 (= e!3956295 (nullableZipper!2153 lt!2396983))))

(declare-fun b!6532910 () Bool)

(assert (=> b!6532910 (= e!3956295 (matchZipper!2414 (derivationStepZipper!2368 lt!2396983 (head!13267 (_2!36684 lt!2396988))) (tail!12352 (_2!36684 lt!2396988))))))

(assert (= (and d!2050573 c!1199138) b!6532909))

(assert (= (and d!2050573 (not c!1199138)) b!6532910))

(declare-fun m!7316548 () Bool)

(assert (=> d!2050573 m!7316548))

(declare-fun m!7316550 () Bool)

(assert (=> b!6532909 m!7316550))

(declare-fun m!7316552 () Bool)

(assert (=> b!6532910 m!7316552))

(assert (=> b!6532910 m!7316552))

(declare-fun m!7316554 () Bool)

(assert (=> b!6532910 m!7316554))

(declare-fun m!7316556 () Bool)

(assert (=> b!6532910 m!7316556))

(assert (=> b!6532910 m!7316554))

(assert (=> b!6532910 m!7316556))

(declare-fun m!7316558 () Bool)

(assert (=> b!6532910 m!7316558))

(assert (=> b!6532614 d!2050573))

(declare-fun d!2050575 () Bool)

(declare-fun c!1199139 () Bool)

(assert (=> d!2050575 (= c!1199139 (isEmpty!37603 (_1!36684 lt!2396988)))))

(declare-fun e!3956296 () Bool)

(assert (=> d!2050575 (= (matchZipper!2414 lt!2396993 (_1!36684 lt!2396988)) e!3956296)))

(declare-fun b!6532911 () Bool)

(assert (=> b!6532911 (= e!3956296 (nullableZipper!2153 lt!2396993))))

(declare-fun b!6532912 () Bool)

(assert (=> b!6532912 (= e!3956296 (matchZipper!2414 (derivationStepZipper!2368 lt!2396993 (head!13267 (_1!36684 lt!2396988))) (tail!12352 (_1!36684 lt!2396988))))))

(assert (= (and d!2050575 c!1199139) b!6532911))

(assert (= (and d!2050575 (not c!1199139)) b!6532912))

(assert (=> d!2050575 m!7316464))

(declare-fun m!7316560 () Bool)

(assert (=> b!6532911 m!7316560))

(assert (=> b!6532912 m!7316462))

(assert (=> b!6532912 m!7316462))

(declare-fun m!7316562 () Bool)

(assert (=> b!6532912 m!7316562))

(assert (=> b!6532912 m!7316458))

(assert (=> b!6532912 m!7316562))

(assert (=> b!6532912 m!7316458))

(declare-fun m!7316564 () Bool)

(assert (=> b!6532912 m!7316564))

(assert (=> b!6532595 d!2050575))

(declare-fun d!2050577 () Bool)

(declare-fun e!3956299 () Bool)

(assert (=> d!2050577 e!3956299))

(declare-fun res!2680284 () Bool)

(assert (=> d!2050577 (=> (not res!2680284) (not e!3956299))))

(declare-fun lt!2397163 () List!65507)

(declare-fun noDuplicate!2215 (List!65507) Bool)

(assert (=> d!2050577 (= res!2680284 (noDuplicate!2215 lt!2397163))))

(declare-fun choose!48498 ((Set Context!11572)) List!65507)

(assert (=> d!2050577 (= lt!2397163 (choose!48498 z!1189))))

(assert (=> d!2050577 (= (toList!10186 z!1189) lt!2397163)))

(declare-fun b!6532915 () Bool)

(declare-fun content!12510 (List!65507) (Set Context!11572))

(assert (=> b!6532915 (= e!3956299 (= (content!12510 lt!2397163) z!1189))))

(assert (= (and d!2050577 res!2680284) b!6532915))

(declare-fun m!7316566 () Bool)

(assert (=> d!2050577 m!7316566))

(declare-fun m!7316568 () Bool)

(assert (=> d!2050577 m!7316568))

(declare-fun m!7316570 () Bool)

(assert (=> b!6532915 m!7316570))

(assert (=> b!6532617 d!2050577))

(declare-fun bs!1666723 () Bool)

(declare-fun b!6532958 () Bool)

(assert (= bs!1666723 (and b!6532958 b!6532604)))

(declare-fun lambda!362346 () Int)

(assert (=> bs!1666723 (not (= lambda!362346 lambda!362304))))

(assert (=> bs!1666723 (not (= lambda!362346 lambda!362305))))

(assert (=> b!6532958 true))

(assert (=> b!6532958 true))

(declare-fun bs!1666724 () Bool)

(declare-fun b!6532949 () Bool)

(assert (= bs!1666724 (and b!6532949 b!6532604)))

(declare-fun lambda!362347 () Int)

(assert (=> bs!1666724 (not (= lambda!362347 lambda!362304))))

(assert (=> bs!1666724 (= lambda!362347 lambda!362305)))

(declare-fun bs!1666725 () Bool)

(assert (= bs!1666725 (and b!6532949 b!6532958)))

(assert (=> bs!1666725 (not (= lambda!362347 lambda!362346))))

(assert (=> b!6532949 true))

(assert (=> b!6532949 true))

(declare-fun b!6532948 () Bool)

(declare-fun res!2680303 () Bool)

(declare-fun e!3956321 () Bool)

(assert (=> b!6532948 (=> res!2680303 e!3956321)))

(declare-fun call!567699 () Bool)

(assert (=> b!6532948 (= res!2680303 call!567699)))

(declare-fun e!3956322 () Bool)

(assert (=> b!6532948 (= e!3956322 e!3956321)))

(declare-fun call!567698 () Bool)

(assert (=> b!6532949 (= e!3956322 call!567698)))

(declare-fun b!6532950 () Bool)

(declare-fun c!1199149 () Bool)

(assert (=> b!6532950 (= c!1199149 (is-ElementMatch!16402 r!7292))))

(declare-fun e!3956323 () Bool)

(declare-fun e!3956318 () Bool)

(assert (=> b!6532950 (= e!3956323 e!3956318)))

(declare-fun b!6532951 () Bool)

(assert (=> b!6532951 (= e!3956318 (= s!2326 (Cons!65382 (c!1199083 r!7292) Nil!65382)))))

(declare-fun b!6532952 () Bool)

(declare-fun e!3956319 () Bool)

(assert (=> b!6532952 (= e!3956319 e!3956322)))

(declare-fun c!1199150 () Bool)

(assert (=> b!6532952 (= c!1199150 (is-Star!16402 r!7292))))

(declare-fun b!6532953 () Bool)

(declare-fun e!3956320 () Bool)

(assert (=> b!6532953 (= e!3956320 e!3956323)))

(declare-fun res!2680304 () Bool)

(assert (=> b!6532953 (= res!2680304 (not (is-EmptyLang!16402 r!7292)))))

(assert (=> b!6532953 (=> (not res!2680304) (not e!3956323))))

(declare-fun b!6532954 () Bool)

(declare-fun e!3956324 () Bool)

(assert (=> b!6532954 (= e!3956324 (matchRSpec!3503 (regTwo!33317 r!7292) s!2326))))

(declare-fun bm!567693 () Bool)

(assert (=> bm!567693 (= call!567699 (isEmpty!37603 s!2326))))

(declare-fun b!6532955 () Bool)

(assert (=> b!6532955 (= e!3956320 call!567699)))

(declare-fun b!6532956 () Bool)

(declare-fun c!1199151 () Bool)

(assert (=> b!6532956 (= c!1199151 (is-Union!16402 r!7292))))

(assert (=> b!6532956 (= e!3956318 e!3956319)))

(declare-fun b!6532957 () Bool)

(assert (=> b!6532957 (= e!3956319 e!3956324)))

(declare-fun res!2680302 () Bool)

(assert (=> b!6532957 (= res!2680302 (matchRSpec!3503 (regOne!33317 r!7292) s!2326))))

(assert (=> b!6532957 (=> res!2680302 e!3956324)))

(declare-fun d!2050579 () Bool)

(declare-fun c!1199148 () Bool)

(assert (=> d!2050579 (= c!1199148 (is-EmptyExpr!16402 r!7292))))

(assert (=> d!2050579 (= (matchRSpec!3503 r!7292 s!2326) e!3956320)))

(declare-fun bm!567694 () Bool)

(assert (=> bm!567694 (= call!567698 (Exists!3472 (ite c!1199150 lambda!362346 lambda!362347)))))

(assert (=> b!6532958 (= e!3956321 call!567698)))

(assert (= (and d!2050579 c!1199148) b!6532955))

(assert (= (and d!2050579 (not c!1199148)) b!6532953))

(assert (= (and b!6532953 res!2680304) b!6532950))

(assert (= (and b!6532950 c!1199149) b!6532951))

(assert (= (and b!6532950 (not c!1199149)) b!6532956))

(assert (= (and b!6532956 c!1199151) b!6532957))

(assert (= (and b!6532956 (not c!1199151)) b!6532952))

(assert (= (and b!6532957 (not res!2680302)) b!6532954))

(assert (= (and b!6532952 c!1199150) b!6532948))

(assert (= (and b!6532952 (not c!1199150)) b!6532949))

(assert (= (and b!6532948 (not res!2680303)) b!6532958))

(assert (= (or b!6532958 b!6532949) bm!567694))

(assert (= (or b!6532955 b!6532948) bm!567693))

(declare-fun m!7316572 () Bool)

(assert (=> b!6532954 m!7316572))

(assert (=> bm!567693 m!7316446))

(declare-fun m!7316574 () Bool)

(assert (=> b!6532957 m!7316574))

(declare-fun m!7316576 () Bool)

(assert (=> bm!567694 m!7316576))

(assert (=> b!6532616 d!2050579))

(declare-fun b!6532959 () Bool)

(declare-fun res!2680312 () Bool)

(declare-fun e!3956329 () Bool)

(assert (=> b!6532959 (=> res!2680312 e!3956329)))

(assert (=> b!6532959 (= res!2680312 (not (is-ElementMatch!16402 r!7292)))))

(declare-fun e!3956330 () Bool)

(assert (=> b!6532959 (= e!3956330 e!3956329)))

(declare-fun bm!567695 () Bool)

(declare-fun call!567700 () Bool)

(assert (=> bm!567695 (= call!567700 (isEmpty!37603 s!2326))))

(declare-fun b!6532960 () Bool)

(declare-fun e!3956331 () Bool)

(assert (=> b!6532960 (= e!3956331 (not (= (head!13267 s!2326) (c!1199083 r!7292))))))

(declare-fun b!6532961 () Bool)

(declare-fun e!3956328 () Bool)

(declare-fun lt!2397164 () Bool)

(assert (=> b!6532961 (= e!3956328 (= lt!2397164 call!567700))))

(declare-fun b!6532962 () Bool)

(assert (=> b!6532962 (= e!3956330 (not lt!2397164))))

(declare-fun b!6532963 () Bool)

(declare-fun res!2680305 () Bool)

(assert (=> b!6532963 (=> res!2680305 e!3956329)))

(declare-fun e!3956326 () Bool)

(assert (=> b!6532963 (= res!2680305 e!3956326)))

(declare-fun res!2680311 () Bool)

(assert (=> b!6532963 (=> (not res!2680311) (not e!3956326))))

(assert (=> b!6532963 (= res!2680311 lt!2397164)))

(declare-fun b!6532964 () Bool)

(declare-fun e!3956325 () Bool)

(assert (=> b!6532964 (= e!3956325 (nullable!6395 r!7292))))

(declare-fun d!2050581 () Bool)

(assert (=> d!2050581 e!3956328))

(declare-fun c!1199154 () Bool)

(assert (=> d!2050581 (= c!1199154 (is-EmptyExpr!16402 r!7292))))

(assert (=> d!2050581 (= lt!2397164 e!3956325)))

(declare-fun c!1199152 () Bool)

(assert (=> d!2050581 (= c!1199152 (isEmpty!37603 s!2326))))

(assert (=> d!2050581 (validRegex!8138 r!7292)))

(assert (=> d!2050581 (= (matchR!8585 r!7292 s!2326) lt!2397164)))

(declare-fun b!6532965 () Bool)

(declare-fun res!2680306 () Bool)

(assert (=> b!6532965 (=> (not res!2680306) (not e!3956326))))

(assert (=> b!6532965 (= res!2680306 (isEmpty!37603 (tail!12352 s!2326)))))

(declare-fun b!6532966 () Bool)

(declare-fun e!3956327 () Bool)

(assert (=> b!6532966 (= e!3956329 e!3956327)))

(declare-fun res!2680307 () Bool)

(assert (=> b!6532966 (=> (not res!2680307) (not e!3956327))))

(assert (=> b!6532966 (= res!2680307 (not lt!2397164))))

(declare-fun b!6532967 () Bool)

(declare-fun res!2680308 () Bool)

(assert (=> b!6532967 (=> (not res!2680308) (not e!3956326))))

(assert (=> b!6532967 (= res!2680308 (not call!567700))))

(declare-fun b!6532968 () Bool)

(assert (=> b!6532968 (= e!3956326 (= (head!13267 s!2326) (c!1199083 r!7292)))))

(declare-fun b!6532969 () Bool)

(assert (=> b!6532969 (= e!3956325 (matchR!8585 (derivativeStep!5092 r!7292 (head!13267 s!2326)) (tail!12352 s!2326)))))

(declare-fun b!6532970 () Bool)

(assert (=> b!6532970 (= e!3956328 e!3956330)))

(declare-fun c!1199153 () Bool)

(assert (=> b!6532970 (= c!1199153 (is-EmptyLang!16402 r!7292))))

(declare-fun b!6532971 () Bool)

(assert (=> b!6532971 (= e!3956327 e!3956331)))

(declare-fun res!2680310 () Bool)

(assert (=> b!6532971 (=> res!2680310 e!3956331)))

(assert (=> b!6532971 (= res!2680310 call!567700)))

(declare-fun b!6532972 () Bool)

(declare-fun res!2680309 () Bool)

(assert (=> b!6532972 (=> res!2680309 e!3956331)))

(assert (=> b!6532972 (= res!2680309 (not (isEmpty!37603 (tail!12352 s!2326))))))

(assert (= (and d!2050581 c!1199152) b!6532964))

(assert (= (and d!2050581 (not c!1199152)) b!6532969))

(assert (= (and d!2050581 c!1199154) b!6532961))

(assert (= (and d!2050581 (not c!1199154)) b!6532970))

(assert (= (and b!6532970 c!1199153) b!6532962))

(assert (= (and b!6532970 (not c!1199153)) b!6532959))

(assert (= (and b!6532959 (not res!2680312)) b!6532963))

(assert (= (and b!6532963 res!2680311) b!6532967))

(assert (= (and b!6532967 res!2680308) b!6532965))

(assert (= (and b!6532965 res!2680306) b!6532968))

(assert (= (and b!6532963 (not res!2680305)) b!6532966))

(assert (= (and b!6532966 res!2680307) b!6532971))

(assert (= (and b!6532971 (not res!2680310)) b!6532972))

(assert (= (and b!6532972 (not res!2680309)) b!6532960))

(assert (= (or b!6532961 b!6532967 b!6532971) bm!567695))

(assert (=> b!6532972 m!7316454))

(assert (=> b!6532972 m!7316454))

(declare-fun m!7316578 () Bool)

(assert (=> b!6532972 m!7316578))

(assert (=> b!6532960 m!7316450))

(assert (=> d!2050581 m!7316446))

(assert (=> d!2050581 m!7316162))

(assert (=> bm!567695 m!7316446))

(assert (=> b!6532969 m!7316450))

(assert (=> b!6532969 m!7316450))

(declare-fun m!7316580 () Bool)

(assert (=> b!6532969 m!7316580))

(assert (=> b!6532969 m!7316454))

(assert (=> b!6532969 m!7316580))

(assert (=> b!6532969 m!7316454))

(declare-fun m!7316582 () Bool)

(assert (=> b!6532969 m!7316582))

(declare-fun m!7316584 () Bool)

(assert (=> b!6532964 m!7316584))

(assert (=> b!6532965 m!7316454))

(assert (=> b!6532965 m!7316454))

(assert (=> b!6532965 m!7316578))

(assert (=> b!6532968 m!7316450))

(assert (=> b!6532616 d!2050581))

(declare-fun d!2050583 () Bool)

(assert (=> d!2050583 (= (matchR!8585 r!7292 s!2326) (matchRSpec!3503 r!7292 s!2326))))

(declare-fun lt!2397167 () Unit!158943)

(declare-fun choose!48499 (Regex!16402 List!65506) Unit!158943)

(assert (=> d!2050583 (= lt!2397167 (choose!48499 r!7292 s!2326))))

(assert (=> d!2050583 (validRegex!8138 r!7292)))

(assert (=> d!2050583 (= (mainMatchTheorem!3503 r!7292 s!2326) lt!2397167)))

(declare-fun bs!1666726 () Bool)

(assert (= bs!1666726 d!2050583))

(assert (=> bs!1666726 m!7316240))

(assert (=> bs!1666726 m!7316238))

(declare-fun m!7316586 () Bool)

(assert (=> bs!1666726 m!7316586))

(assert (=> bs!1666726 m!7316162))

(assert (=> b!6532616 d!2050583))

(declare-fun d!2050585 () Bool)

(declare-fun c!1199155 () Bool)

(assert (=> d!2050585 (= c!1199155 (isEmpty!37603 (t!379146 s!2326)))))

(declare-fun e!3956332 () Bool)

(assert (=> d!2050585 (= (matchZipper!2414 lt!2396992 (t!379146 s!2326)) e!3956332)))

(declare-fun b!6532973 () Bool)

(assert (=> b!6532973 (= e!3956332 (nullableZipper!2153 lt!2396992))))

(declare-fun b!6532974 () Bool)

(assert (=> b!6532974 (= e!3956332 (matchZipper!2414 (derivationStepZipper!2368 lt!2396992 (head!13267 (t!379146 s!2326))) (tail!12352 (t!379146 s!2326))))))

(assert (= (and d!2050585 c!1199155) b!6532973))

(assert (= (and d!2050585 (not c!1199155)) b!6532974))

(assert (=> d!2050585 m!7316428))

(declare-fun m!7316588 () Bool)

(assert (=> b!6532973 m!7316588))

(assert (=> b!6532974 m!7316432))

(assert (=> b!6532974 m!7316432))

(declare-fun m!7316590 () Bool)

(assert (=> b!6532974 m!7316590))

(assert (=> b!6532974 m!7316436))

(assert (=> b!6532974 m!7316590))

(assert (=> b!6532974 m!7316436))

(declare-fun m!7316592 () Bool)

(assert (=> b!6532974 m!7316592))

(assert (=> b!6532596 d!2050585))

(declare-fun d!2050587 () Bool)

(declare-fun lt!2397168 () Regex!16402)

(assert (=> d!2050587 (validRegex!8138 lt!2397168)))

(assert (=> d!2050587 (= lt!2397168 (generalisedUnion!2246 (unfocusZipperList!1823 zl!343)))))

(assert (=> d!2050587 (= (unfocusZipper!2144 zl!343) lt!2397168)))

(declare-fun bs!1666727 () Bool)

(assert (= bs!1666727 d!2050587))

(declare-fun m!7316594 () Bool)

(assert (=> bs!1666727 m!7316594))

(assert (=> bs!1666727 m!7316216))

(assert (=> bs!1666727 m!7316216))

(assert (=> bs!1666727 m!7316218))

(assert (=> b!6532598 d!2050587))

(declare-fun d!2050589 () Bool)

(assert (=> d!2050589 (= (isEmpty!37600 (t!379145 (exprs!6286 (h!71831 zl!343)))) (is-Nil!65381 (t!379145 (exprs!6286 (h!71831 zl!343)))))))

(assert (=> b!6532597 d!2050589))

(declare-fun d!2050591 () Bool)

(declare-fun dynLambda!25987 (Int Context!11572) Context!11572)

(assert (=> d!2050591 (= (map!14912 lt!2396993 lambda!362307) (set.insert (dynLambda!25987 lambda!362307 lt!2396980) (as set.empty (Set Context!11572))))))

(declare-fun lt!2397171 () Unit!158943)

(declare-fun choose!48500 ((Set Context!11572) Context!11572 Int) Unit!158943)

(assert (=> d!2050591 (= lt!2397171 (choose!48500 lt!2396993 lt!2396980 lambda!362307))))

(assert (=> d!2050591 (= lt!2396993 (set.insert lt!2396980 (as set.empty (Set Context!11572))))))

(assert (=> d!2050591 (= (lemmaMapOnSingletonSet!185 lt!2396993 lt!2396980 lambda!362307) lt!2397171)))

(declare-fun b_lambda!247329 () Bool)

(assert (=> (not b_lambda!247329) (not d!2050591)))

(declare-fun bs!1666728 () Bool)

(assert (= bs!1666728 d!2050591))

(declare-fun m!7316596 () Bool)

(assert (=> bs!1666728 m!7316596))

(declare-fun m!7316598 () Bool)

(assert (=> bs!1666728 m!7316598))

(assert (=> bs!1666728 m!7316596))

(assert (=> bs!1666728 m!7316270))

(declare-fun m!7316600 () Bool)

(assert (=> bs!1666728 m!7316600))

(assert (=> bs!1666728 m!7316182))

(assert (=> b!6532599 d!2050591))

(declare-fun d!2050593 () Bool)

(declare-fun choose!48501 ((Set Context!11572) Int) (Set Context!11572))

(assert (=> d!2050593 (= (map!14912 lt!2396993 lambda!362307) (choose!48501 lt!2396993 lambda!362307))))

(declare-fun bs!1666729 () Bool)

(assert (= bs!1666729 d!2050593))

(declare-fun m!7316602 () Bool)

(assert (=> bs!1666729 m!7316602))

(assert (=> b!6532599 d!2050593))

(declare-fun bs!1666730 () Bool)

(declare-fun d!2050595 () Bool)

(assert (= bs!1666730 (and d!2050595 b!6532599)))

(declare-fun lambda!362352 () Int)

(assert (=> bs!1666730 (= (= (exprs!6286 lt!2396953) lt!2396966) (= lambda!362352 lambda!362307))))

(assert (=> d!2050595 true))

(assert (=> d!2050595 (= (appendTo!163 lt!2396993 lt!2396953) (map!14912 lt!2396993 lambda!362352))))

(declare-fun bs!1666731 () Bool)

(assert (= bs!1666731 d!2050595))

(declare-fun m!7316604 () Bool)

(assert (=> bs!1666731 m!7316604))

(assert (=> b!6532599 d!2050595))

(assert (=> b!6532599 d!2050555))

(assert (=> b!6532599 d!2050559))

(declare-fun d!2050597 () Bool)

(declare-fun choose!48502 ((Set Context!11572) Int) (Set Context!11572))

(assert (=> d!2050597 (= (flatMap!1907 lt!2396982 lambda!362306) (choose!48502 lt!2396982 lambda!362306))))

(declare-fun bs!1666732 () Bool)

(assert (= bs!1666732 d!2050597))

(declare-fun m!7316606 () Bool)

(assert (=> bs!1666732 m!7316606))

(assert (=> b!6532579 d!2050597))

(declare-fun b!6532987 () Bool)

(declare-fun e!3956339 () (Set Context!11572))

(declare-fun e!3956340 () (Set Context!11572))

(assert (=> b!6532987 (= e!3956339 e!3956340)))

(declare-fun c!1199162 () Bool)

(assert (=> b!6532987 (= c!1199162 (is-Cons!65381 (exprs!6286 lt!2396977)))))

(declare-fun bm!567698 () Bool)

(declare-fun call!567703 () (Set Context!11572))

(assert (=> bm!567698 (= call!567703 (derivationStepZipperDown!1650 (h!71829 (exprs!6286 lt!2396977)) (Context!11573 (t!379145 (exprs!6286 lt!2396977))) (h!71830 s!2326)))))

(declare-fun b!6532988 () Bool)

(declare-fun e!3956341 () Bool)

(assert (=> b!6532988 (= e!3956341 (nullable!6395 (h!71829 (exprs!6286 lt!2396977))))))

(declare-fun b!6532989 () Bool)

(assert (=> b!6532989 (= e!3956340 call!567703)))

(declare-fun d!2050599 () Bool)

(declare-fun c!1199161 () Bool)

(assert (=> d!2050599 (= c!1199161 e!3956341)))

(declare-fun res!2680315 () Bool)

(assert (=> d!2050599 (=> (not res!2680315) (not e!3956341))))

(assert (=> d!2050599 (= res!2680315 (is-Cons!65381 (exprs!6286 lt!2396977)))))

(assert (=> d!2050599 (= (derivationStepZipperUp!1576 lt!2396977 (h!71830 s!2326)) e!3956339)))

(declare-fun b!6532990 () Bool)

(assert (=> b!6532990 (= e!3956340 (as set.empty (Set Context!11572)))))

(declare-fun b!6532991 () Bool)

(assert (=> b!6532991 (= e!3956339 (set.union call!567703 (derivationStepZipperUp!1576 (Context!11573 (t!379145 (exprs!6286 lt!2396977))) (h!71830 s!2326))))))

(assert (= (and d!2050599 res!2680315) b!6532988))

(assert (= (and d!2050599 c!1199161) b!6532991))

(assert (= (and d!2050599 (not c!1199161)) b!6532987))

(assert (= (and b!6532987 c!1199162) b!6532989))

(assert (= (and b!6532987 (not c!1199162)) b!6532990))

(assert (= (or b!6532991 b!6532989) bm!567698))

(declare-fun m!7316608 () Bool)

(assert (=> bm!567698 m!7316608))

(declare-fun m!7316610 () Bool)

(assert (=> b!6532988 m!7316610))

(declare-fun m!7316612 () Bool)

(assert (=> b!6532991 m!7316612))

(assert (=> b!6532579 d!2050599))

(declare-fun d!2050601 () Bool)

(declare-fun dynLambda!25988 (Int Context!11572) (Set Context!11572))

(assert (=> d!2050601 (= (flatMap!1907 lt!2396982 lambda!362306) (dynLambda!25988 lambda!362306 lt!2396977))))

(declare-fun lt!2397176 () Unit!158943)

(declare-fun choose!48503 ((Set Context!11572) Context!11572 Int) Unit!158943)

(assert (=> d!2050601 (= lt!2397176 (choose!48503 lt!2396982 lt!2396977 lambda!362306))))

(assert (=> d!2050601 (= lt!2396982 (set.insert lt!2396977 (as set.empty (Set Context!11572))))))

(assert (=> d!2050601 (= (lemmaFlatMapOnSingletonSet!1433 lt!2396982 lt!2396977 lambda!362306) lt!2397176)))

(declare-fun b_lambda!247331 () Bool)

(assert (=> (not b_lambda!247331) (not d!2050601)))

(declare-fun bs!1666733 () Bool)

(assert (= bs!1666733 d!2050601))

(assert (=> bs!1666733 m!7316254))

(declare-fun m!7316614 () Bool)

(assert (=> bs!1666733 m!7316614))

(declare-fun m!7316616 () Bool)

(assert (=> bs!1666733 m!7316616))

(assert (=> bs!1666733 m!7316258))

(assert (=> b!6532579 d!2050601))

(declare-fun bs!1666734 () Bool)

(declare-fun d!2050603 () Bool)

(assert (= bs!1666734 (and d!2050603 b!6532600)))

(declare-fun lambda!362355 () Int)

(assert (=> bs!1666734 (= lambda!362355 lambda!362306)))

(assert (=> d!2050603 true))

(assert (=> d!2050603 (= (derivationStepZipper!2368 lt!2396982 (h!71830 s!2326)) (flatMap!1907 lt!2396982 lambda!362355))))

(declare-fun bs!1666735 () Bool)

(assert (= bs!1666735 d!2050603))

(declare-fun m!7316618 () Bool)

(assert (=> bs!1666735 m!7316618))

(assert (=> b!6532579 d!2050603))

(declare-fun bs!1666736 () Bool)

(declare-fun d!2050605 () Bool)

(assert (= bs!1666736 (and d!2050605 b!6532599)))

(declare-fun lambda!362356 () Int)

(assert (=> bs!1666736 (= lambda!362356 lambda!362308)))

(declare-fun bs!1666737 () Bool)

(assert (= bs!1666737 (and d!2050605 d!2050557)))

(assert (=> bs!1666737 (= lambda!362356 lambda!362338)))

(declare-fun bs!1666738 () Bool)

(assert (= bs!1666738 (and d!2050605 d!2050561)))

(assert (=> bs!1666738 (= lambda!362356 lambda!362341)))

(assert (=> d!2050605 (= (inv!84253 (h!71831 zl!343)) (forall!15580 (exprs!6286 (h!71831 zl!343)) lambda!362356))))

(declare-fun bs!1666739 () Bool)

(assert (= bs!1666739 d!2050605))

(declare-fun m!7316620 () Bool)

(assert (=> bs!1666739 m!7316620))

(assert (=> b!6532619 d!2050605))

(declare-fun d!2050607 () Bool)

(declare-fun c!1199165 () Bool)

(assert (=> d!2050607 (= c!1199165 (isEmpty!37603 s!2326))))

(declare-fun e!3956342 () Bool)

(assert (=> d!2050607 (= (matchZipper!2414 z!1189 s!2326) e!3956342)))

(declare-fun b!6532994 () Bool)

(assert (=> b!6532994 (= e!3956342 (nullableZipper!2153 z!1189))))

(declare-fun b!6532995 () Bool)

(assert (=> b!6532995 (= e!3956342 (matchZipper!2414 (derivationStepZipper!2368 z!1189 (head!13267 s!2326)) (tail!12352 s!2326)))))

(assert (= (and d!2050607 c!1199165) b!6532994))

(assert (= (and d!2050607 (not c!1199165)) b!6532995))

(assert (=> d!2050607 m!7316446))

(declare-fun m!7316622 () Bool)

(assert (=> b!6532994 m!7316622))

(assert (=> b!6532995 m!7316450))

(assert (=> b!6532995 m!7316450))

(declare-fun m!7316624 () Bool)

(assert (=> b!6532995 m!7316624))

(assert (=> b!6532995 m!7316454))

(assert (=> b!6532995 m!7316624))

(assert (=> b!6532995 m!7316454))

(declare-fun m!7316626 () Bool)

(assert (=> b!6532995 m!7316626))

(assert (=> b!6532621 d!2050607))

(declare-fun d!2050609 () Bool)

(assert (=> d!2050609 (= (flatMap!1907 z!1189 lambda!362306) (dynLambda!25988 lambda!362306 (h!71831 zl!343)))))

(declare-fun lt!2397177 () Unit!158943)

(assert (=> d!2050609 (= lt!2397177 (choose!48503 z!1189 (h!71831 zl!343) lambda!362306))))

(assert (=> d!2050609 (= z!1189 (set.insert (h!71831 zl!343) (as set.empty (Set Context!11572))))))

(assert (=> d!2050609 (= (lemmaFlatMapOnSingletonSet!1433 z!1189 (h!71831 zl!343) lambda!362306) lt!2397177)))

(declare-fun b_lambda!247333 () Bool)

(assert (=> (not b_lambda!247333) (not d!2050609)))

(declare-fun bs!1666740 () Bool)

(assert (= bs!1666740 d!2050609))

(assert (=> bs!1666740 m!7316154))

(declare-fun m!7316628 () Bool)

(assert (=> bs!1666740 m!7316628))

(declare-fun m!7316630 () Bool)

(assert (=> bs!1666740 m!7316630))

(declare-fun m!7316632 () Bool)

(assert (=> bs!1666740 m!7316632))

(assert (=> b!6532600 d!2050609))

(declare-fun d!2050611 () Bool)

(assert (=> d!2050611 (= (flatMap!1907 z!1189 lambda!362306) (choose!48502 z!1189 lambda!362306))))

(declare-fun bs!1666741 () Bool)

(assert (= bs!1666741 d!2050611))

(declare-fun m!7316634 () Bool)

(assert (=> bs!1666741 m!7316634))

(assert (=> b!6532600 d!2050611))

(declare-fun d!2050613 () Bool)

(declare-fun nullableFct!2327 (Regex!16402) Bool)

(assert (=> d!2050613 (= (nullable!6395 (h!71829 (exprs!6286 (h!71831 zl!343)))) (nullableFct!2327 (h!71829 (exprs!6286 (h!71831 zl!343)))))))

(declare-fun bs!1666742 () Bool)

(assert (= bs!1666742 d!2050613))

(declare-fun m!7316636 () Bool)

(assert (=> bs!1666742 m!7316636))

(assert (=> b!6532600 d!2050613))

(declare-fun b!6532996 () Bool)

(declare-fun e!3956343 () (Set Context!11572))

(declare-fun e!3956344 () (Set Context!11572))

(assert (=> b!6532996 (= e!3956343 e!3956344)))

(declare-fun c!1199167 () Bool)

(assert (=> b!6532996 (= c!1199167 (is-Cons!65381 (exprs!6286 (Context!11573 (Cons!65381 (h!71829 (exprs!6286 (h!71831 zl!343))) (t!379145 (exprs!6286 (h!71831 zl!343))))))))))

(declare-fun bm!567699 () Bool)

(declare-fun call!567704 () (Set Context!11572))

(assert (=> bm!567699 (= call!567704 (derivationStepZipperDown!1650 (h!71829 (exprs!6286 (Context!11573 (Cons!65381 (h!71829 (exprs!6286 (h!71831 zl!343))) (t!379145 (exprs!6286 (h!71831 zl!343))))))) (Context!11573 (t!379145 (exprs!6286 (Context!11573 (Cons!65381 (h!71829 (exprs!6286 (h!71831 zl!343))) (t!379145 (exprs!6286 (h!71831 zl!343)))))))) (h!71830 s!2326)))))

(declare-fun b!6532997 () Bool)

(declare-fun e!3956345 () Bool)

(assert (=> b!6532997 (= e!3956345 (nullable!6395 (h!71829 (exprs!6286 (Context!11573 (Cons!65381 (h!71829 (exprs!6286 (h!71831 zl!343))) (t!379145 (exprs!6286 (h!71831 zl!343)))))))))))

(declare-fun b!6532998 () Bool)

(assert (=> b!6532998 (= e!3956344 call!567704)))

(declare-fun d!2050615 () Bool)

(declare-fun c!1199166 () Bool)

(assert (=> d!2050615 (= c!1199166 e!3956345)))

(declare-fun res!2680316 () Bool)

(assert (=> d!2050615 (=> (not res!2680316) (not e!3956345))))

(assert (=> d!2050615 (= res!2680316 (is-Cons!65381 (exprs!6286 (Context!11573 (Cons!65381 (h!71829 (exprs!6286 (h!71831 zl!343))) (t!379145 (exprs!6286 (h!71831 zl!343))))))))))

(assert (=> d!2050615 (= (derivationStepZipperUp!1576 (Context!11573 (Cons!65381 (h!71829 (exprs!6286 (h!71831 zl!343))) (t!379145 (exprs!6286 (h!71831 zl!343))))) (h!71830 s!2326)) e!3956343)))

(declare-fun b!6532999 () Bool)

(assert (=> b!6532999 (= e!3956344 (as set.empty (Set Context!11572)))))

(declare-fun b!6533000 () Bool)

(assert (=> b!6533000 (= e!3956343 (set.union call!567704 (derivationStepZipperUp!1576 (Context!11573 (t!379145 (exprs!6286 (Context!11573 (Cons!65381 (h!71829 (exprs!6286 (h!71831 zl!343))) (t!379145 (exprs!6286 (h!71831 zl!343)))))))) (h!71830 s!2326))))))

(assert (= (and d!2050615 res!2680316) b!6532997))

(assert (= (and d!2050615 c!1199166) b!6533000))

(assert (= (and d!2050615 (not c!1199166)) b!6532996))

(assert (= (and b!6532996 c!1199167) b!6532998))

(assert (= (and b!6532996 (not c!1199167)) b!6532999))

(assert (= (or b!6533000 b!6532998) bm!567699))

(declare-fun m!7316638 () Bool)

(assert (=> bm!567699 m!7316638))

(declare-fun m!7316640 () Bool)

(assert (=> b!6532997 m!7316640))

(declare-fun m!7316642 () Bool)

(assert (=> b!6533000 m!7316642))

(assert (=> b!6532600 d!2050615))

(declare-fun b!6533001 () Bool)

(declare-fun e!3956346 () (Set Context!11572))

(declare-fun e!3956347 () (Set Context!11572))

(assert (=> b!6533001 (= e!3956346 e!3956347)))

(declare-fun c!1199169 () Bool)

(assert (=> b!6533001 (= c!1199169 (is-Cons!65381 (exprs!6286 (h!71831 zl!343))))))

(declare-fun bm!567700 () Bool)

(declare-fun call!567705 () (Set Context!11572))

(assert (=> bm!567700 (= call!567705 (derivationStepZipperDown!1650 (h!71829 (exprs!6286 (h!71831 zl!343))) (Context!11573 (t!379145 (exprs!6286 (h!71831 zl!343)))) (h!71830 s!2326)))))

(declare-fun b!6533002 () Bool)

(declare-fun e!3956348 () Bool)

(assert (=> b!6533002 (= e!3956348 (nullable!6395 (h!71829 (exprs!6286 (h!71831 zl!343)))))))

(declare-fun b!6533003 () Bool)

(assert (=> b!6533003 (= e!3956347 call!567705)))

(declare-fun d!2050617 () Bool)

(declare-fun c!1199168 () Bool)

(assert (=> d!2050617 (= c!1199168 e!3956348)))

(declare-fun res!2680317 () Bool)

(assert (=> d!2050617 (=> (not res!2680317) (not e!3956348))))

(assert (=> d!2050617 (= res!2680317 (is-Cons!65381 (exprs!6286 (h!71831 zl!343))))))

(assert (=> d!2050617 (= (derivationStepZipperUp!1576 (h!71831 zl!343) (h!71830 s!2326)) e!3956346)))

(declare-fun b!6533004 () Bool)

(assert (=> b!6533004 (= e!3956347 (as set.empty (Set Context!11572)))))

(declare-fun b!6533005 () Bool)

(assert (=> b!6533005 (= e!3956346 (set.union call!567705 (derivationStepZipperUp!1576 (Context!11573 (t!379145 (exprs!6286 (h!71831 zl!343)))) (h!71830 s!2326))))))

(assert (= (and d!2050617 res!2680317) b!6533002))

(assert (= (and d!2050617 c!1199168) b!6533005))

(assert (= (and d!2050617 (not c!1199168)) b!6533001))

(assert (= (and b!6533001 c!1199169) b!6533003))

(assert (= (and b!6533001 (not c!1199169)) b!6533004))

(assert (= (or b!6533005 b!6533003) bm!567700))

(declare-fun m!7316644 () Bool)

(assert (=> bm!567700 m!7316644))

(assert (=> b!6533002 m!7316158))

(declare-fun m!7316646 () Bool)

(assert (=> b!6533005 m!7316646))

(assert (=> b!6532600 d!2050617))

(declare-fun b!6533006 () Bool)

(declare-fun e!3956349 () (Set Context!11572))

(declare-fun e!3956350 () (Set Context!11572))

(assert (=> b!6533006 (= e!3956349 e!3956350)))

(declare-fun c!1199171 () Bool)

(assert (=> b!6533006 (= c!1199171 (is-Cons!65381 (exprs!6286 lt!2396963)))))

(declare-fun bm!567701 () Bool)

(declare-fun call!567706 () (Set Context!11572))

(assert (=> bm!567701 (= call!567706 (derivationStepZipperDown!1650 (h!71829 (exprs!6286 lt!2396963)) (Context!11573 (t!379145 (exprs!6286 lt!2396963))) (h!71830 s!2326)))))

(declare-fun b!6533007 () Bool)

(declare-fun e!3956351 () Bool)

(assert (=> b!6533007 (= e!3956351 (nullable!6395 (h!71829 (exprs!6286 lt!2396963))))))

(declare-fun b!6533008 () Bool)

(assert (=> b!6533008 (= e!3956350 call!567706)))

(declare-fun d!2050619 () Bool)

(declare-fun c!1199170 () Bool)

(assert (=> d!2050619 (= c!1199170 e!3956351)))

(declare-fun res!2680318 () Bool)

(assert (=> d!2050619 (=> (not res!2680318) (not e!3956351))))

(assert (=> d!2050619 (= res!2680318 (is-Cons!65381 (exprs!6286 lt!2396963)))))

(assert (=> d!2050619 (= (derivationStepZipperUp!1576 lt!2396963 (h!71830 s!2326)) e!3956349)))

(declare-fun b!6533009 () Bool)

(assert (=> b!6533009 (= e!3956350 (as set.empty (Set Context!11572)))))

(declare-fun b!6533010 () Bool)

(assert (=> b!6533010 (= e!3956349 (set.union call!567706 (derivationStepZipperUp!1576 (Context!11573 (t!379145 (exprs!6286 lt!2396963))) (h!71830 s!2326))))))

(assert (= (and d!2050619 res!2680318) b!6533007))

(assert (= (and d!2050619 c!1199170) b!6533010))

(assert (= (and d!2050619 (not c!1199170)) b!6533006))

(assert (= (and b!6533006 c!1199171) b!6533008))

(assert (= (and b!6533006 (not c!1199171)) b!6533009))

(assert (= (or b!6533010 b!6533008) bm!567701))

(declare-fun m!7316648 () Bool)

(assert (=> bm!567701 m!7316648))

(declare-fun m!7316650 () Bool)

(assert (=> b!6533007 m!7316650))

(declare-fun m!7316652 () Bool)

(assert (=> b!6533010 m!7316652))

(assert (=> b!6532600 d!2050619))

(declare-fun b!6533011 () Bool)

(declare-fun e!3956355 () (Set Context!11572))

(assert (=> b!6533011 (= e!3956355 (as set.empty (Set Context!11572)))))

(declare-fun b!6533012 () Bool)

(declare-fun e!3956352 () (Set Context!11572))

(declare-fun call!567708 () (Set Context!11572))

(assert (=> b!6533012 (= e!3956352 call!567708)))

(declare-fun b!6533013 () Bool)

(declare-fun e!3956357 () (Set Context!11572))

(assert (=> b!6533013 (= e!3956357 (set.insert lt!2396963 (as set.empty (Set Context!11572))))))

(declare-fun d!2050621 () Bool)

(declare-fun c!1199172 () Bool)

(assert (=> d!2050621 (= c!1199172 (and (is-ElementMatch!16402 (h!71829 (exprs!6286 (h!71831 zl!343)))) (= (c!1199083 (h!71829 (exprs!6286 (h!71831 zl!343)))) (h!71830 s!2326))))))

(assert (=> d!2050621 (= (derivationStepZipperDown!1650 (h!71829 (exprs!6286 (h!71831 zl!343))) lt!2396963 (h!71830 s!2326)) e!3956357)))

(declare-fun b!6533014 () Bool)

(declare-fun c!1199174 () Bool)

(declare-fun e!3956353 () Bool)

(assert (=> b!6533014 (= c!1199174 e!3956353)))

(declare-fun res!2680319 () Bool)

(assert (=> b!6533014 (=> (not res!2680319) (not e!3956353))))

(assert (=> b!6533014 (= res!2680319 (is-Concat!25247 (h!71829 (exprs!6286 (h!71831 zl!343)))))))

(declare-fun e!3956354 () (Set Context!11572))

(declare-fun e!3956356 () (Set Context!11572))

(assert (=> b!6533014 (= e!3956354 e!3956356)))

(declare-fun bm!567702 () Bool)

(declare-fun call!567712 () List!65505)

(declare-fun c!1199173 () Bool)

(assert (=> bm!567702 (= call!567712 ($colon$colon!2249 (exprs!6286 lt!2396963) (ite (or c!1199174 c!1199173) (regTwo!33316 (h!71829 (exprs!6286 (h!71831 zl!343)))) (h!71829 (exprs!6286 (h!71831 zl!343))))))))

(declare-fun b!6533015 () Bool)

(assert (=> b!6533015 (= e!3956356 e!3956352)))

(assert (=> b!6533015 (= c!1199173 (is-Concat!25247 (h!71829 (exprs!6286 (h!71831 zl!343)))))))

(declare-fun call!567709 () (Set Context!11572))

(declare-fun c!1199175 () Bool)

(declare-fun bm!567703 () Bool)

(assert (=> bm!567703 (= call!567709 (derivationStepZipperDown!1650 (ite c!1199175 (regOne!33317 (h!71829 (exprs!6286 (h!71831 zl!343)))) (regOne!33316 (h!71829 (exprs!6286 (h!71831 zl!343))))) (ite c!1199175 lt!2396963 (Context!11573 call!567712)) (h!71830 s!2326)))))

(declare-fun b!6533016 () Bool)

(assert (=> b!6533016 (= e!3956355 call!567708)))

(declare-fun b!6533017 () Bool)

(assert (=> b!6533017 (= e!3956357 e!3956354)))

(assert (=> b!6533017 (= c!1199175 (is-Union!16402 (h!71829 (exprs!6286 (h!71831 zl!343)))))))

(declare-fun b!6533018 () Bool)

(declare-fun c!1199176 () Bool)

(assert (=> b!6533018 (= c!1199176 (is-Star!16402 (h!71829 (exprs!6286 (h!71831 zl!343)))))))

(assert (=> b!6533018 (= e!3956352 e!3956355)))

(declare-fun bm!567704 () Bool)

(declare-fun call!567707 () List!65505)

(assert (=> bm!567704 (= call!567707 call!567712)))

(declare-fun bm!567705 () Bool)

(declare-fun call!567711 () (Set Context!11572))

(assert (=> bm!567705 (= call!567711 (derivationStepZipperDown!1650 (ite c!1199175 (regTwo!33317 (h!71829 (exprs!6286 (h!71831 zl!343)))) (ite c!1199174 (regTwo!33316 (h!71829 (exprs!6286 (h!71831 zl!343)))) (ite c!1199173 (regOne!33316 (h!71829 (exprs!6286 (h!71831 zl!343)))) (reg!16731 (h!71829 (exprs!6286 (h!71831 zl!343))))))) (ite (or c!1199175 c!1199174) lt!2396963 (Context!11573 call!567707)) (h!71830 s!2326)))))

(declare-fun b!6533019 () Bool)

(assert (=> b!6533019 (= e!3956354 (set.union call!567709 call!567711))))

(declare-fun b!6533020 () Bool)

(declare-fun call!567710 () (Set Context!11572))

(assert (=> b!6533020 (= e!3956356 (set.union call!567709 call!567710))))

(declare-fun bm!567706 () Bool)

(assert (=> bm!567706 (= call!567710 call!567711)))

(declare-fun b!6533021 () Bool)

(assert (=> b!6533021 (= e!3956353 (nullable!6395 (regOne!33316 (h!71829 (exprs!6286 (h!71831 zl!343))))))))

(declare-fun bm!567707 () Bool)

(assert (=> bm!567707 (= call!567708 call!567710)))

(assert (= (and d!2050621 c!1199172) b!6533013))

(assert (= (and d!2050621 (not c!1199172)) b!6533017))

(assert (= (and b!6533017 c!1199175) b!6533019))

(assert (= (and b!6533017 (not c!1199175)) b!6533014))

(assert (= (and b!6533014 res!2680319) b!6533021))

(assert (= (and b!6533014 c!1199174) b!6533020))

(assert (= (and b!6533014 (not c!1199174)) b!6533015))

(assert (= (and b!6533015 c!1199173) b!6533012))

(assert (= (and b!6533015 (not c!1199173)) b!6533018))

(assert (= (and b!6533018 c!1199176) b!6533016))

(assert (= (and b!6533018 (not c!1199176)) b!6533011))

(assert (= (or b!6533012 b!6533016) bm!567704))

(assert (= (or b!6533012 b!6533016) bm!567707))

(assert (= (or b!6533020 bm!567704) bm!567702))

(assert (= (or b!6533020 bm!567707) bm!567706))

(assert (= (or b!6533019 bm!567706) bm!567705))

(assert (= (or b!6533019 b!6533020) bm!567703))

(declare-fun m!7316654 () Bool)

(assert (=> bm!567705 m!7316654))

(declare-fun m!7316656 () Bool)

(assert (=> b!6533013 m!7316656))

(declare-fun m!7316658 () Bool)

(assert (=> b!6533021 m!7316658))

(declare-fun m!7316660 () Bool)

(assert (=> bm!567703 m!7316660))

(declare-fun m!7316662 () Bool)

(assert (=> bm!567702 m!7316662))

(assert (=> b!6532600 d!2050621))

(declare-fun d!2050623 () Bool)

(declare-fun isEmpty!37604 (Option!16293) Bool)

(assert (=> d!2050623 (= (isDefined!12996 lt!2396959) (not (isEmpty!37604 lt!2396959)))))

(declare-fun bs!1666743 () Bool)

(assert (= bs!1666743 d!2050623))

(declare-fun m!7316664 () Bool)

(assert (=> bs!1666743 m!7316664))

(assert (=> b!6532622 d!2050623))

(declare-fun b!6533040 () Bool)

(declare-fun e!3956369 () Bool)

(assert (=> b!6533040 (= e!3956369 (matchZipper!2414 lt!2396983 s!2326))))

(declare-fun b!6533041 () Bool)

(declare-fun lt!2397184 () Unit!158943)

(declare-fun lt!2397185 () Unit!158943)

(assert (=> b!6533041 (= lt!2397184 lt!2397185)))

(assert (=> b!6533041 (= (++!14507 (++!14507 Nil!65382 (Cons!65382 (h!71830 s!2326) Nil!65382)) (t!379146 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2551 (List!65506 C!33074 List!65506 List!65506) Unit!158943)

(assert (=> b!6533041 (= lt!2397185 (lemmaMoveElementToOtherListKeepsConcatEq!2551 Nil!65382 (h!71830 s!2326) (t!379146 s!2326) s!2326))))

(declare-fun e!3956372 () Option!16293)

(assert (=> b!6533041 (= e!3956372 (findConcatSeparationZippers!167 lt!2396993 lt!2396983 (++!14507 Nil!65382 (Cons!65382 (h!71830 s!2326) Nil!65382)) (t!379146 s!2326) s!2326))))

(declare-fun b!6533042 () Bool)

(assert (=> b!6533042 (= e!3956372 None!16292)))

(declare-fun b!6533043 () Bool)

(declare-fun res!2680330 () Bool)

(declare-fun e!3956368 () Bool)

(assert (=> b!6533043 (=> (not res!2680330) (not e!3956368))))

(declare-fun lt!2397186 () Option!16293)

(assert (=> b!6533043 (= res!2680330 (matchZipper!2414 lt!2396983 (_2!36684 (get!22685 lt!2397186))))))

(declare-fun b!6533044 () Bool)

(declare-fun res!2680332 () Bool)

(assert (=> b!6533044 (=> (not res!2680332) (not e!3956368))))

(assert (=> b!6533044 (= res!2680332 (matchZipper!2414 lt!2396993 (_1!36684 (get!22685 lt!2397186))))))

(declare-fun b!6533045 () Bool)

(declare-fun e!3956370 () Option!16293)

(assert (=> b!6533045 (= e!3956370 (Some!16292 (tuple2!66763 Nil!65382 s!2326)))))

(declare-fun b!6533046 () Bool)

(assert (=> b!6533046 (= e!3956368 (= (++!14507 (_1!36684 (get!22685 lt!2397186)) (_2!36684 (get!22685 lt!2397186))) s!2326))))

(declare-fun d!2050625 () Bool)

(declare-fun e!3956371 () Bool)

(assert (=> d!2050625 e!3956371))

(declare-fun res!2680331 () Bool)

(assert (=> d!2050625 (=> res!2680331 e!3956371)))

(assert (=> d!2050625 (= res!2680331 e!3956368)))

(declare-fun res!2680334 () Bool)

(assert (=> d!2050625 (=> (not res!2680334) (not e!3956368))))

(assert (=> d!2050625 (= res!2680334 (isDefined!12996 lt!2397186))))

(assert (=> d!2050625 (= lt!2397186 e!3956370)))

(declare-fun c!1199181 () Bool)

(assert (=> d!2050625 (= c!1199181 e!3956369)))

(declare-fun res!2680333 () Bool)

(assert (=> d!2050625 (=> (not res!2680333) (not e!3956369))))

(assert (=> d!2050625 (= res!2680333 (matchZipper!2414 lt!2396993 Nil!65382))))

(assert (=> d!2050625 (= (++!14507 Nil!65382 s!2326) s!2326)))

(assert (=> d!2050625 (= (findConcatSeparationZippers!167 lt!2396993 lt!2396983 Nil!65382 s!2326 s!2326) lt!2397186)))

(declare-fun b!6533047 () Bool)

(assert (=> b!6533047 (= e!3956371 (not (isDefined!12996 lt!2397186)))))

(declare-fun b!6533048 () Bool)

(assert (=> b!6533048 (= e!3956370 e!3956372)))

(declare-fun c!1199182 () Bool)

(assert (=> b!6533048 (= c!1199182 (is-Nil!65382 s!2326))))

(assert (= (and d!2050625 res!2680333) b!6533040))

(assert (= (and d!2050625 c!1199181) b!6533045))

(assert (= (and d!2050625 (not c!1199181)) b!6533048))

(assert (= (and b!6533048 c!1199182) b!6533042))

(assert (= (and b!6533048 (not c!1199182)) b!6533041))

(assert (= (and d!2050625 res!2680334) b!6533044))

(assert (= (and b!6533044 res!2680332) b!6533043))

(assert (= (and b!6533043 res!2680330) b!6533046))

(assert (= (and d!2050625 (not res!2680331)) b!6533047))

(declare-fun m!7316666 () Bool)

(assert (=> b!6533041 m!7316666))

(assert (=> b!6533041 m!7316666))

(declare-fun m!7316668 () Bool)

(assert (=> b!6533041 m!7316668))

(declare-fun m!7316670 () Bool)

(assert (=> b!6533041 m!7316670))

(assert (=> b!6533041 m!7316666))

(declare-fun m!7316672 () Bool)

(assert (=> b!6533041 m!7316672))

(declare-fun m!7316674 () Bool)

(assert (=> b!6533044 m!7316674))

(declare-fun m!7316676 () Bool)

(assert (=> b!6533044 m!7316676))

(declare-fun m!7316678 () Bool)

(assert (=> d!2050625 m!7316678))

(declare-fun m!7316680 () Bool)

(assert (=> d!2050625 m!7316680))

(declare-fun m!7316682 () Bool)

(assert (=> d!2050625 m!7316682))

(assert (=> b!6533043 m!7316674))

(declare-fun m!7316684 () Bool)

(assert (=> b!6533043 m!7316684))

(assert (=> b!6533047 m!7316678))

(declare-fun m!7316686 () Bool)

(assert (=> b!6533040 m!7316686))

(assert (=> b!6533046 m!7316674))

(declare-fun m!7316688 () Bool)

(assert (=> b!6533046 m!7316688))

(assert (=> b!6532622 d!2050625))

(declare-fun b!6533058 () Bool)

(declare-fun e!3956378 () List!65506)

(assert (=> b!6533058 (= e!3956378 (Cons!65382 (h!71830 (_1!36684 lt!2396988)) (++!14507 (t!379146 (_1!36684 lt!2396988)) (_2!36684 lt!2396988))))))

(declare-fun b!6533060 () Bool)

(declare-fun e!3956377 () Bool)

(declare-fun lt!2397189 () List!65506)

(assert (=> b!6533060 (= e!3956377 (or (not (= (_2!36684 lt!2396988) Nil!65382)) (= lt!2397189 (_1!36684 lt!2396988))))))

(declare-fun b!6533057 () Bool)

(assert (=> b!6533057 (= e!3956378 (_2!36684 lt!2396988))))

(declare-fun d!2050627 () Bool)

(assert (=> d!2050627 e!3956377))

(declare-fun res!2680340 () Bool)

(assert (=> d!2050627 (=> (not res!2680340) (not e!3956377))))

(declare-fun content!12511 (List!65506) (Set C!33074))

(assert (=> d!2050627 (= res!2680340 (= (content!12511 lt!2397189) (set.union (content!12511 (_1!36684 lt!2396988)) (content!12511 (_2!36684 lt!2396988)))))))

(assert (=> d!2050627 (= lt!2397189 e!3956378)))

(declare-fun c!1199185 () Bool)

(assert (=> d!2050627 (= c!1199185 (is-Nil!65382 (_1!36684 lt!2396988)))))

(assert (=> d!2050627 (= (++!14507 (_1!36684 lt!2396988) (_2!36684 lt!2396988)) lt!2397189)))

(declare-fun b!6533059 () Bool)

(declare-fun res!2680339 () Bool)

(assert (=> b!6533059 (=> (not res!2680339) (not e!3956377))))

(declare-fun size!40468 (List!65506) Int)

(assert (=> b!6533059 (= res!2680339 (= (size!40468 lt!2397189) (+ (size!40468 (_1!36684 lt!2396988)) (size!40468 (_2!36684 lt!2396988)))))))

(assert (= (and d!2050627 c!1199185) b!6533057))

(assert (= (and d!2050627 (not c!1199185)) b!6533058))

(assert (= (and d!2050627 res!2680340) b!6533059))

(assert (= (and b!6533059 res!2680339) b!6533060))

(declare-fun m!7316690 () Bool)

(assert (=> b!6533058 m!7316690))

(declare-fun m!7316692 () Bool)

(assert (=> d!2050627 m!7316692))

(declare-fun m!7316694 () Bool)

(assert (=> d!2050627 m!7316694))

(declare-fun m!7316696 () Bool)

(assert (=> d!2050627 m!7316696))

(declare-fun m!7316698 () Bool)

(assert (=> b!6533059 m!7316698))

(declare-fun m!7316700 () Bool)

(assert (=> b!6533059 m!7316700))

(declare-fun m!7316702 () Bool)

(assert (=> b!6533059 m!7316702))

(assert (=> b!6532622 d!2050627))

(declare-fun d!2050629 () Bool)

(assert (=> d!2050629 (isDefined!12996 (findConcatSeparationZippers!167 lt!2396993 (set.insert lt!2396953 (as set.empty (Set Context!11572))) Nil!65382 s!2326 s!2326))))

(declare-fun lt!2397192 () Unit!158943)

(declare-fun choose!48504 ((Set Context!11572) Context!11572 List!65506) Unit!158943)

(assert (=> d!2050629 (= lt!2397192 (choose!48504 lt!2396993 lt!2396953 s!2326))))

(assert (=> d!2050629 (matchZipper!2414 (appendTo!163 lt!2396993 lt!2396953) s!2326)))

(assert (=> d!2050629 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!167 lt!2396993 lt!2396953 s!2326) lt!2397192)))

(declare-fun bs!1666744 () Bool)

(assert (= bs!1666744 d!2050629))

(declare-fun m!7316704 () Bool)

(assert (=> bs!1666744 m!7316704))

(declare-fun m!7316706 () Bool)

(assert (=> bs!1666744 m!7316706))

(assert (=> bs!1666744 m!7316172))

(assert (=> bs!1666744 m!7316272))

(declare-fun m!7316708 () Bool)

(assert (=> bs!1666744 m!7316708))

(assert (=> bs!1666744 m!7316272))

(declare-fun m!7316710 () Bool)

(assert (=> bs!1666744 m!7316710))

(assert (=> bs!1666744 m!7316172))

(assert (=> bs!1666744 m!7316704))

(assert (=> b!6532622 d!2050629))

(declare-fun d!2050633 () Bool)

(assert (=> d!2050633 (= (get!22685 lt!2396959) (v!52475 lt!2396959))))

(assert (=> b!6532622 d!2050633))

(declare-fun e!3956381 () Bool)

(declare-fun d!2050635 () Bool)

(assert (=> d!2050635 (= (matchZipper!2414 (set.union lt!2396986 lt!2396992) (t!379146 s!2326)) e!3956381)))

(declare-fun res!2680343 () Bool)

(assert (=> d!2050635 (=> res!2680343 e!3956381)))

(assert (=> d!2050635 (= res!2680343 (matchZipper!2414 lt!2396986 (t!379146 s!2326)))))

(declare-fun lt!2397195 () Unit!158943)

(declare-fun choose!48505 ((Set Context!11572) (Set Context!11572) List!65506) Unit!158943)

(assert (=> d!2050635 (= lt!2397195 (choose!48505 lt!2396986 lt!2396992 (t!379146 s!2326)))))

(assert (=> d!2050635 (= (lemmaZipperConcatMatchesSameAsBothZippers!1233 lt!2396986 lt!2396992 (t!379146 s!2326)) lt!2397195)))

(declare-fun b!6533063 () Bool)

(assert (=> b!6533063 (= e!3956381 (matchZipper!2414 lt!2396992 (t!379146 s!2326)))))

(assert (= (and d!2050635 (not res!2680343)) b!6533063))

(assert (=> d!2050635 m!7316248))

(assert (=> d!2050635 m!7316246))

(declare-fun m!7316714 () Bool)

(assert (=> d!2050635 m!7316714))

(assert (=> b!6533063 m!7316268))

(assert (=> b!6532602 d!2050635))

(assert (=> b!6532602 d!2050545))

(declare-fun d!2050639 () Bool)

(declare-fun c!1199186 () Bool)

(assert (=> d!2050639 (= c!1199186 (isEmpty!37603 (t!379146 s!2326)))))

(declare-fun e!3956382 () Bool)

(assert (=> d!2050639 (= (matchZipper!2414 (set.union lt!2396986 lt!2396992) (t!379146 s!2326)) e!3956382)))

(declare-fun b!6533064 () Bool)

(assert (=> b!6533064 (= e!3956382 (nullableZipper!2153 (set.union lt!2396986 lt!2396992)))))

(declare-fun b!6533065 () Bool)

(assert (=> b!6533065 (= e!3956382 (matchZipper!2414 (derivationStepZipper!2368 (set.union lt!2396986 lt!2396992) (head!13267 (t!379146 s!2326))) (tail!12352 (t!379146 s!2326))))))

(assert (= (and d!2050639 c!1199186) b!6533064))

(assert (= (and d!2050639 (not c!1199186)) b!6533065))

(assert (=> d!2050639 m!7316428))

(declare-fun m!7316716 () Bool)

(assert (=> b!6533064 m!7316716))

(assert (=> b!6533065 m!7316432))

(assert (=> b!6533065 m!7316432))

(declare-fun m!7316718 () Bool)

(assert (=> b!6533065 m!7316718))

(assert (=> b!6533065 m!7316436))

(assert (=> b!6533065 m!7316718))

(assert (=> b!6533065 m!7316436))

(declare-fun m!7316720 () Bool)

(assert (=> b!6533065 m!7316720))

(assert (=> b!6532602 d!2050639))

(declare-fun d!2050641 () Bool)

(assert (=> d!2050641 (= (nullable!6395 (regOne!33316 (regOne!33316 r!7292))) (nullableFct!2327 (regOne!33316 (regOne!33316 r!7292))))))

(declare-fun bs!1666746 () Bool)

(assert (= bs!1666746 d!2050641))

(declare-fun m!7316722 () Bool)

(assert (=> bs!1666746 m!7316722))

(assert (=> b!6532601 d!2050641))

(declare-fun b!6533066 () Bool)

(declare-fun res!2680351 () Bool)

(declare-fun e!3956387 () Bool)

(assert (=> b!6533066 (=> res!2680351 e!3956387)))

(assert (=> b!6533066 (= res!2680351 (not (is-ElementMatch!16402 lt!2396981)))))

(declare-fun e!3956388 () Bool)

(assert (=> b!6533066 (= e!3956388 e!3956387)))

(declare-fun bm!567708 () Bool)

(declare-fun call!567713 () Bool)

(assert (=> bm!567708 (= call!567713 (isEmpty!37603 s!2326))))

(declare-fun b!6533067 () Bool)

(declare-fun e!3956389 () Bool)

(assert (=> b!6533067 (= e!3956389 (not (= (head!13267 s!2326) (c!1199083 lt!2396981))))))

(declare-fun b!6533068 () Bool)

(declare-fun e!3956386 () Bool)

(declare-fun lt!2397196 () Bool)

(assert (=> b!6533068 (= e!3956386 (= lt!2397196 call!567713))))

(declare-fun b!6533069 () Bool)

(assert (=> b!6533069 (= e!3956388 (not lt!2397196))))

(declare-fun b!6533070 () Bool)

(declare-fun res!2680344 () Bool)

(assert (=> b!6533070 (=> res!2680344 e!3956387)))

(declare-fun e!3956384 () Bool)

(assert (=> b!6533070 (= res!2680344 e!3956384)))

(declare-fun res!2680350 () Bool)

(assert (=> b!6533070 (=> (not res!2680350) (not e!3956384))))

(assert (=> b!6533070 (= res!2680350 lt!2397196)))

(declare-fun b!6533071 () Bool)

(declare-fun e!3956383 () Bool)

(assert (=> b!6533071 (= e!3956383 (nullable!6395 lt!2396981))))

(declare-fun d!2050643 () Bool)

(assert (=> d!2050643 e!3956386))

(declare-fun c!1199189 () Bool)

(assert (=> d!2050643 (= c!1199189 (is-EmptyExpr!16402 lt!2396981))))

(assert (=> d!2050643 (= lt!2397196 e!3956383)))

(declare-fun c!1199187 () Bool)

(assert (=> d!2050643 (= c!1199187 (isEmpty!37603 s!2326))))

(assert (=> d!2050643 (validRegex!8138 lt!2396981)))

(assert (=> d!2050643 (= (matchR!8585 lt!2396981 s!2326) lt!2397196)))

(declare-fun b!6533072 () Bool)

(declare-fun res!2680345 () Bool)

(assert (=> b!6533072 (=> (not res!2680345) (not e!3956384))))

(assert (=> b!6533072 (= res!2680345 (isEmpty!37603 (tail!12352 s!2326)))))

(declare-fun b!6533073 () Bool)

(declare-fun e!3956385 () Bool)

(assert (=> b!6533073 (= e!3956387 e!3956385)))

(declare-fun res!2680346 () Bool)

(assert (=> b!6533073 (=> (not res!2680346) (not e!3956385))))

(assert (=> b!6533073 (= res!2680346 (not lt!2397196))))

(declare-fun b!6533074 () Bool)

(declare-fun res!2680347 () Bool)

(assert (=> b!6533074 (=> (not res!2680347) (not e!3956384))))

(assert (=> b!6533074 (= res!2680347 (not call!567713))))

(declare-fun b!6533075 () Bool)

(assert (=> b!6533075 (= e!3956384 (= (head!13267 s!2326) (c!1199083 lt!2396981)))))

(declare-fun b!6533076 () Bool)

(assert (=> b!6533076 (= e!3956383 (matchR!8585 (derivativeStep!5092 lt!2396981 (head!13267 s!2326)) (tail!12352 s!2326)))))

(declare-fun b!6533077 () Bool)

(assert (=> b!6533077 (= e!3956386 e!3956388)))

(declare-fun c!1199188 () Bool)

(assert (=> b!6533077 (= c!1199188 (is-EmptyLang!16402 lt!2396981))))

(declare-fun b!6533078 () Bool)

(assert (=> b!6533078 (= e!3956385 e!3956389)))

(declare-fun res!2680349 () Bool)

(assert (=> b!6533078 (=> res!2680349 e!3956389)))

(assert (=> b!6533078 (= res!2680349 call!567713)))

(declare-fun b!6533079 () Bool)

(declare-fun res!2680348 () Bool)

(assert (=> b!6533079 (=> res!2680348 e!3956389)))

(assert (=> b!6533079 (= res!2680348 (not (isEmpty!37603 (tail!12352 s!2326))))))

(assert (= (and d!2050643 c!1199187) b!6533071))

(assert (= (and d!2050643 (not c!1199187)) b!6533076))

(assert (= (and d!2050643 c!1199189) b!6533068))

(assert (= (and d!2050643 (not c!1199189)) b!6533077))

(assert (= (and b!6533077 c!1199188) b!6533069))

(assert (= (and b!6533077 (not c!1199188)) b!6533066))

(assert (= (and b!6533066 (not res!2680351)) b!6533070))

(assert (= (and b!6533070 res!2680350) b!6533074))

(assert (= (and b!6533074 res!2680347) b!6533072))

(assert (= (and b!6533072 res!2680345) b!6533075))

(assert (= (and b!6533070 (not res!2680344)) b!6533073))

(assert (= (and b!6533073 res!2680346) b!6533078))

(assert (= (and b!6533078 (not res!2680349)) b!6533079))

(assert (= (and b!6533079 (not res!2680348)) b!6533067))

(assert (= (or b!6533068 b!6533074 b!6533078) bm!567708))

(assert (=> b!6533079 m!7316454))

(assert (=> b!6533079 m!7316454))

(assert (=> b!6533079 m!7316578))

(assert (=> b!6533067 m!7316450))

(assert (=> d!2050643 m!7316446))

(declare-fun m!7316724 () Bool)

(assert (=> d!2050643 m!7316724))

(assert (=> bm!567708 m!7316446))

(assert (=> b!6533076 m!7316450))

(assert (=> b!6533076 m!7316450))

(declare-fun m!7316726 () Bool)

(assert (=> b!6533076 m!7316726))

(assert (=> b!6533076 m!7316454))

(assert (=> b!6533076 m!7316726))

(assert (=> b!6533076 m!7316454))

(declare-fun m!7316728 () Bool)

(assert (=> b!6533076 m!7316728))

(declare-fun m!7316730 () Bool)

(assert (=> b!6533071 m!7316730))

(assert (=> b!6533072 m!7316454))

(assert (=> b!6533072 m!7316454))

(assert (=> b!6533072 m!7316578))

(assert (=> b!6533075 m!7316450))

(assert (=> b!6532581 d!2050643))

(declare-fun bs!1666747 () Bool)

(declare-fun b!6533090 () Bool)

(assert (= bs!1666747 (and b!6533090 b!6532604)))

(declare-fun lambda!362357 () Int)

(assert (=> bs!1666747 (not (= lambda!362357 lambda!362304))))

(assert (=> bs!1666747 (not (= lambda!362357 lambda!362305))))

(declare-fun bs!1666748 () Bool)

(assert (= bs!1666748 (and b!6533090 b!6532958)))

(assert (=> bs!1666748 (= (and (= (reg!16731 lt!2396981) (reg!16731 r!7292)) (= lt!2396981 r!7292)) (= lambda!362357 lambda!362346))))

(declare-fun bs!1666749 () Bool)

(assert (= bs!1666749 (and b!6533090 b!6532949)))

(assert (=> bs!1666749 (not (= lambda!362357 lambda!362347))))

(assert (=> b!6533090 true))

(assert (=> b!6533090 true))

(declare-fun bs!1666750 () Bool)

(declare-fun b!6533081 () Bool)

(assert (= bs!1666750 (and b!6533081 b!6532604)))

(declare-fun lambda!362358 () Int)

(assert (=> bs!1666750 (not (= lambda!362358 lambda!362304))))

(declare-fun bs!1666751 () Bool)

(assert (= bs!1666751 (and b!6533081 b!6532958)))

(assert (=> bs!1666751 (not (= lambda!362358 lambda!362346))))

(declare-fun bs!1666752 () Bool)

(assert (= bs!1666752 (and b!6533081 b!6532949)))

(assert (=> bs!1666752 (= (and (= (regOne!33316 lt!2396981) (regOne!33316 r!7292)) (= (regTwo!33316 lt!2396981) (regTwo!33316 r!7292))) (= lambda!362358 lambda!362347))))

(declare-fun bs!1666753 () Bool)

(assert (= bs!1666753 (and b!6533081 b!6533090)))

(assert (=> bs!1666753 (not (= lambda!362358 lambda!362357))))

(assert (=> bs!1666750 (= (and (= (regOne!33316 lt!2396981) (regOne!33316 r!7292)) (= (regTwo!33316 lt!2396981) (regTwo!33316 r!7292))) (= lambda!362358 lambda!362305))))

(assert (=> b!6533081 true))

(assert (=> b!6533081 true))

(declare-fun b!6533080 () Bool)

(declare-fun res!2680353 () Bool)

(declare-fun e!3956393 () Bool)

(assert (=> b!6533080 (=> res!2680353 e!3956393)))

(declare-fun call!567715 () Bool)

(assert (=> b!6533080 (= res!2680353 call!567715)))

(declare-fun e!3956394 () Bool)

(assert (=> b!6533080 (= e!3956394 e!3956393)))

(declare-fun call!567714 () Bool)

(assert (=> b!6533081 (= e!3956394 call!567714)))

(declare-fun b!6533082 () Bool)

(declare-fun c!1199191 () Bool)

(assert (=> b!6533082 (= c!1199191 (is-ElementMatch!16402 lt!2396981))))

(declare-fun e!3956395 () Bool)

(declare-fun e!3956390 () Bool)

(assert (=> b!6533082 (= e!3956395 e!3956390)))

(declare-fun b!6533083 () Bool)

(assert (=> b!6533083 (= e!3956390 (= s!2326 (Cons!65382 (c!1199083 lt!2396981) Nil!65382)))))

(declare-fun b!6533084 () Bool)

(declare-fun e!3956391 () Bool)

(assert (=> b!6533084 (= e!3956391 e!3956394)))

(declare-fun c!1199192 () Bool)

(assert (=> b!6533084 (= c!1199192 (is-Star!16402 lt!2396981))))

(declare-fun b!6533085 () Bool)

(declare-fun e!3956392 () Bool)

(assert (=> b!6533085 (= e!3956392 e!3956395)))

(declare-fun res!2680354 () Bool)

(assert (=> b!6533085 (= res!2680354 (not (is-EmptyLang!16402 lt!2396981)))))

(assert (=> b!6533085 (=> (not res!2680354) (not e!3956395))))

(declare-fun b!6533086 () Bool)

(declare-fun e!3956396 () Bool)

(assert (=> b!6533086 (= e!3956396 (matchRSpec!3503 (regTwo!33317 lt!2396981) s!2326))))

(declare-fun bm!567709 () Bool)

(assert (=> bm!567709 (= call!567715 (isEmpty!37603 s!2326))))

(declare-fun b!6533087 () Bool)

(assert (=> b!6533087 (= e!3956392 call!567715)))

(declare-fun b!6533088 () Bool)

(declare-fun c!1199193 () Bool)

(assert (=> b!6533088 (= c!1199193 (is-Union!16402 lt!2396981))))

(assert (=> b!6533088 (= e!3956390 e!3956391)))

(declare-fun b!6533089 () Bool)

(assert (=> b!6533089 (= e!3956391 e!3956396)))

(declare-fun res!2680352 () Bool)

(assert (=> b!6533089 (= res!2680352 (matchRSpec!3503 (regOne!33317 lt!2396981) s!2326))))

(assert (=> b!6533089 (=> res!2680352 e!3956396)))

(declare-fun d!2050645 () Bool)

(declare-fun c!1199190 () Bool)

(assert (=> d!2050645 (= c!1199190 (is-EmptyExpr!16402 lt!2396981))))

(assert (=> d!2050645 (= (matchRSpec!3503 lt!2396981 s!2326) e!3956392)))

(declare-fun bm!567710 () Bool)

(assert (=> bm!567710 (= call!567714 (Exists!3472 (ite c!1199192 lambda!362357 lambda!362358)))))

(assert (=> b!6533090 (= e!3956393 call!567714)))

(assert (= (and d!2050645 c!1199190) b!6533087))

(assert (= (and d!2050645 (not c!1199190)) b!6533085))

(assert (= (and b!6533085 res!2680354) b!6533082))

(assert (= (and b!6533082 c!1199191) b!6533083))

(assert (= (and b!6533082 (not c!1199191)) b!6533088))

(assert (= (and b!6533088 c!1199193) b!6533089))

(assert (= (and b!6533088 (not c!1199193)) b!6533084))

(assert (= (and b!6533089 (not res!2680352)) b!6533086))

(assert (= (and b!6533084 c!1199192) b!6533080))

(assert (= (and b!6533084 (not c!1199192)) b!6533081))

(assert (= (and b!6533080 (not res!2680353)) b!6533090))

(assert (= (or b!6533090 b!6533081) bm!567710))

(assert (= (or b!6533087 b!6533080) bm!567709))

(declare-fun m!7316732 () Bool)

(assert (=> b!6533086 m!7316732))

(assert (=> bm!567709 m!7316446))

(declare-fun m!7316734 () Bool)

(assert (=> b!6533089 m!7316734))

(declare-fun m!7316736 () Bool)

(assert (=> bm!567710 m!7316736))

(assert (=> b!6532581 d!2050645))

(declare-fun d!2050647 () Bool)

(assert (=> d!2050647 (= (matchR!8585 lt!2396981 s!2326) (matchRSpec!3503 lt!2396981 s!2326))))

(declare-fun lt!2397197 () Unit!158943)

(assert (=> d!2050647 (= lt!2397197 (choose!48499 lt!2396981 s!2326))))

(assert (=> d!2050647 (validRegex!8138 lt!2396981)))

(assert (=> d!2050647 (= (mainMatchTheorem!3503 lt!2396981 s!2326) lt!2397197)))

(declare-fun bs!1666754 () Bool)

(assert (= bs!1666754 d!2050647))

(assert (=> bs!1666754 m!7316232))

(assert (=> bs!1666754 m!7316234))

(declare-fun m!7316738 () Bool)

(assert (=> bs!1666754 m!7316738))

(assert (=> bs!1666754 m!7316724))

(assert (=> b!6532581 d!2050647))

(declare-fun bs!1666756 () Bool)

(declare-fun d!2050649 () Bool)

(assert (= bs!1666756 (and d!2050649 b!6532599)))

(declare-fun lambda!362361 () Int)

(assert (=> bs!1666756 (= lambda!362361 lambda!362308)))

(declare-fun bs!1666757 () Bool)

(assert (= bs!1666757 (and d!2050649 d!2050557)))

(assert (=> bs!1666757 (= lambda!362361 lambda!362338)))

(declare-fun bs!1666758 () Bool)

(assert (= bs!1666758 (and d!2050649 d!2050561)))

(assert (=> bs!1666758 (= lambda!362361 lambda!362341)))

(declare-fun bs!1666759 () Bool)

(assert (= bs!1666759 (and d!2050649 d!2050605)))

(assert (=> bs!1666759 (= lambda!362361 lambda!362356)))

(declare-fun b!6533117 () Bool)

(declare-fun e!3956414 () Bool)

(declare-fun lt!2397200 () Regex!16402)

(declare-fun isConcat!1310 (Regex!16402) Bool)

(assert (=> b!6533117 (= e!3956414 (isConcat!1310 lt!2397200))))

(declare-fun b!6533118 () Bool)

(declare-fun e!3956417 () Bool)

(assert (=> b!6533118 (= e!3956417 (isEmpty!37600 (t!379145 (exprs!6286 (h!71831 zl!343)))))))

(declare-fun b!6533119 () Bool)

(declare-fun e!3956413 () Regex!16402)

(declare-fun e!3956416 () Regex!16402)

(assert (=> b!6533119 (= e!3956413 e!3956416)))

(declare-fun c!1199206 () Bool)

(assert (=> b!6533119 (= c!1199206 (is-Cons!65381 (exprs!6286 (h!71831 zl!343))))))

(declare-fun b!6533120 () Bool)

(declare-fun e!3956415 () Bool)

(declare-fun e!3956412 () Bool)

(assert (=> b!6533120 (= e!3956415 e!3956412)))

(declare-fun c!1199205 () Bool)

(assert (=> b!6533120 (= c!1199205 (isEmpty!37600 (exprs!6286 (h!71831 zl!343))))))

(declare-fun b!6533121 () Bool)

(assert (=> b!6533121 (= e!3956416 (Concat!25247 (h!71829 (exprs!6286 (h!71831 zl!343))) (generalisedConcat!1999 (t!379145 (exprs!6286 (h!71831 zl!343))))))))

(assert (=> d!2050649 e!3956415))

(declare-fun res!2680359 () Bool)

(assert (=> d!2050649 (=> (not res!2680359) (not e!3956415))))

(assert (=> d!2050649 (= res!2680359 (validRegex!8138 lt!2397200))))

(assert (=> d!2050649 (= lt!2397200 e!3956413)))

(declare-fun c!1199208 () Bool)

(assert (=> d!2050649 (= c!1199208 e!3956417)))

(declare-fun res!2680360 () Bool)

(assert (=> d!2050649 (=> (not res!2680360) (not e!3956417))))

(assert (=> d!2050649 (= res!2680360 (is-Cons!65381 (exprs!6286 (h!71831 zl!343))))))

(assert (=> d!2050649 (forall!15580 (exprs!6286 (h!71831 zl!343)) lambda!362361)))

(assert (=> d!2050649 (= (generalisedConcat!1999 (exprs!6286 (h!71831 zl!343))) lt!2397200)))

(declare-fun b!6533122 () Bool)

(assert (=> b!6533122 (= e!3956413 (h!71829 (exprs!6286 (h!71831 zl!343))))))

(declare-fun b!6533123 () Bool)

(declare-fun isEmptyExpr!1787 (Regex!16402) Bool)

(assert (=> b!6533123 (= e!3956412 (isEmptyExpr!1787 lt!2397200))))

(declare-fun b!6533124 () Bool)

(assert (=> b!6533124 (= e!3956412 e!3956414)))

(declare-fun c!1199207 () Bool)

(declare-fun tail!12353 (List!65505) List!65505)

(assert (=> b!6533124 (= c!1199207 (isEmpty!37600 (tail!12353 (exprs!6286 (h!71831 zl!343)))))))

(declare-fun b!6533125 () Bool)

(declare-fun head!13268 (List!65505) Regex!16402)

(assert (=> b!6533125 (= e!3956414 (= lt!2397200 (head!13268 (exprs!6286 (h!71831 zl!343)))))))

(declare-fun b!6533126 () Bool)

(assert (=> b!6533126 (= e!3956416 EmptyExpr!16402)))

(assert (= (and d!2050649 res!2680360) b!6533118))

(assert (= (and d!2050649 c!1199208) b!6533122))

(assert (= (and d!2050649 (not c!1199208)) b!6533119))

(assert (= (and b!6533119 c!1199206) b!6533121))

(assert (= (and b!6533119 (not c!1199206)) b!6533126))

(assert (= (and d!2050649 res!2680359) b!6533120))

(assert (= (and b!6533120 c!1199205) b!6533123))

(assert (= (and b!6533120 (not c!1199205)) b!6533124))

(assert (= (and b!6533124 c!1199207) b!6533125))

(assert (= (and b!6533124 (not c!1199207)) b!6533117))

(declare-fun m!7316754 () Bool)

(assert (=> b!6533121 m!7316754))

(declare-fun m!7316756 () Bool)

(assert (=> b!6533120 m!7316756))

(declare-fun m!7316758 () Bool)

(assert (=> b!6533123 m!7316758))

(declare-fun m!7316760 () Bool)

(assert (=> b!6533117 m!7316760))

(declare-fun m!7316762 () Bool)

(assert (=> d!2050649 m!7316762))

(declare-fun m!7316764 () Bool)

(assert (=> d!2050649 m!7316764))

(declare-fun m!7316766 () Bool)

(assert (=> b!6533125 m!7316766))

(assert (=> b!6533118 m!7316282))

(declare-fun m!7316768 () Bool)

(assert (=> b!6533124 m!7316768))

(assert (=> b!6533124 m!7316768))

(declare-fun m!7316770 () Bool)

(assert (=> b!6533124 m!7316770))

(assert (=> b!6532603 d!2050649))

(declare-fun d!2050655 () Bool)

(assert (=> d!2050655 (= (flatMap!1907 lt!2396983 lambda!362306) (choose!48502 lt!2396983 lambda!362306))))

(declare-fun bs!1666760 () Bool)

(assert (= bs!1666760 d!2050655))

(declare-fun m!7316772 () Bool)

(assert (=> bs!1666760 m!7316772))

(assert (=> b!6532583 d!2050655))

(declare-fun b!6533137 () Bool)

(declare-fun e!3956424 () (Set Context!11572))

(declare-fun e!3956425 () (Set Context!11572))

(assert (=> b!6533137 (= e!3956424 e!3956425)))

(declare-fun c!1199214 () Bool)

(assert (=> b!6533137 (= c!1199214 (is-Cons!65381 (exprs!6286 lt!2396980)))))

(declare-fun bm!567711 () Bool)

(declare-fun call!567716 () (Set Context!11572))

(assert (=> bm!567711 (= call!567716 (derivationStepZipperDown!1650 (h!71829 (exprs!6286 lt!2396980)) (Context!11573 (t!379145 (exprs!6286 lt!2396980))) (h!71830 s!2326)))))

(declare-fun b!6533138 () Bool)

(declare-fun e!3956426 () Bool)

(assert (=> b!6533138 (= e!3956426 (nullable!6395 (h!71829 (exprs!6286 lt!2396980))))))

(declare-fun b!6533139 () Bool)

(assert (=> b!6533139 (= e!3956425 call!567716)))

(declare-fun d!2050657 () Bool)

(declare-fun c!1199213 () Bool)

(assert (=> d!2050657 (= c!1199213 e!3956426)))

(declare-fun res!2680363 () Bool)

(assert (=> d!2050657 (=> (not res!2680363) (not e!3956426))))

(assert (=> d!2050657 (= res!2680363 (is-Cons!65381 (exprs!6286 lt!2396980)))))

(assert (=> d!2050657 (= (derivationStepZipperUp!1576 lt!2396980 (h!71830 s!2326)) e!3956424)))

(declare-fun b!6533140 () Bool)

(assert (=> b!6533140 (= e!3956425 (as set.empty (Set Context!11572)))))

(declare-fun b!6533141 () Bool)

(assert (=> b!6533141 (= e!3956424 (set.union call!567716 (derivationStepZipperUp!1576 (Context!11573 (t!379145 (exprs!6286 lt!2396980))) (h!71830 s!2326))))))

(assert (= (and d!2050657 res!2680363) b!6533138))

(assert (= (and d!2050657 c!1199213) b!6533141))

(assert (= (and d!2050657 (not c!1199213)) b!6533137))

(assert (= (and b!6533137 c!1199214) b!6533139))

(assert (= (and b!6533137 (not c!1199214)) b!6533140))

(assert (= (or b!6533141 b!6533139) bm!567711))

(declare-fun m!7316774 () Bool)

(assert (=> bm!567711 m!7316774))

(declare-fun m!7316776 () Bool)

(assert (=> b!6533138 m!7316776))

(declare-fun m!7316778 () Bool)

(assert (=> b!6533141 m!7316778))

(assert (=> b!6532583 d!2050657))

(declare-fun d!2050659 () Bool)

(declare-fun lt!2397201 () Regex!16402)

(assert (=> d!2050659 (validRegex!8138 lt!2397201)))

(assert (=> d!2050659 (= lt!2397201 (generalisedUnion!2246 (unfocusZipperList!1823 lt!2396985)))))

(assert (=> d!2050659 (= (unfocusZipper!2144 lt!2396985) lt!2397201)))

(declare-fun bs!1666761 () Bool)

(assert (= bs!1666761 d!2050659))

(declare-fun m!7316780 () Bool)

(assert (=> bs!1666761 m!7316780))

(declare-fun m!7316782 () Bool)

(assert (=> bs!1666761 m!7316782))

(assert (=> bs!1666761 m!7316782))

(declare-fun m!7316784 () Bool)

(assert (=> bs!1666761 m!7316784))

(assert (=> b!6532583 d!2050659))

(declare-fun d!2050661 () Bool)

(assert (=> d!2050661 (= (flatMap!1907 lt!2396993 lambda!362306) (dynLambda!25988 lambda!362306 lt!2396980))))

(declare-fun lt!2397202 () Unit!158943)

(assert (=> d!2050661 (= lt!2397202 (choose!48503 lt!2396993 lt!2396980 lambda!362306))))

(assert (=> d!2050661 (= lt!2396993 (set.insert lt!2396980 (as set.empty (Set Context!11572))))))

(assert (=> d!2050661 (= (lemmaFlatMapOnSingletonSet!1433 lt!2396993 lt!2396980 lambda!362306) lt!2397202)))

(declare-fun b_lambda!247335 () Bool)

(assert (=> (not b_lambda!247335) (not d!2050661)))

(declare-fun bs!1666762 () Bool)

(assert (= bs!1666762 d!2050661))

(assert (=> bs!1666762 m!7316176))

(declare-fun m!7316786 () Bool)

(assert (=> bs!1666762 m!7316786))

(declare-fun m!7316788 () Bool)

(assert (=> bs!1666762 m!7316788))

(assert (=> bs!1666762 m!7316182))

(assert (=> b!6532583 d!2050661))

(declare-fun d!2050663 () Bool)

(assert (=> d!2050663 (= (flatMap!1907 lt!2396983 lambda!362306) (dynLambda!25988 lambda!362306 lt!2396953))))

(declare-fun lt!2397203 () Unit!158943)

(assert (=> d!2050663 (= lt!2397203 (choose!48503 lt!2396983 lt!2396953 lambda!362306))))

(assert (=> d!2050663 (= lt!2396983 (set.insert lt!2396953 (as set.empty (Set Context!11572))))))

(assert (=> d!2050663 (= (lemmaFlatMapOnSingletonSet!1433 lt!2396983 lt!2396953 lambda!362306) lt!2397203)))

(declare-fun b_lambda!247337 () Bool)

(assert (=> (not b_lambda!247337) (not d!2050663)))

(declare-fun bs!1666763 () Bool)

(assert (= bs!1666763 d!2050663))

(assert (=> bs!1666763 m!7316174))

(declare-fun m!7316790 () Bool)

(assert (=> bs!1666763 m!7316790))

(declare-fun m!7316792 () Bool)

(assert (=> bs!1666763 m!7316792))

(assert (=> bs!1666763 m!7316172))

(assert (=> b!6532583 d!2050663))

(declare-fun d!2050665 () Bool)

(assert (=> d!2050665 (= (flatMap!1907 lt!2396993 lambda!362306) (choose!48502 lt!2396993 lambda!362306))))

(declare-fun bs!1666764 () Bool)

(assert (= bs!1666764 d!2050665))

(declare-fun m!7316794 () Bool)

(assert (=> bs!1666764 m!7316794))

(assert (=> b!6532583 d!2050665))

(declare-fun b!6533142 () Bool)

(declare-fun e!3956427 () (Set Context!11572))

(declare-fun e!3956428 () (Set Context!11572))

(assert (=> b!6533142 (= e!3956427 e!3956428)))

(declare-fun c!1199216 () Bool)

(assert (=> b!6533142 (= c!1199216 (is-Cons!65381 (exprs!6286 lt!2396953)))))

(declare-fun bm!567714 () Bool)

(declare-fun call!567719 () (Set Context!11572))

(assert (=> bm!567714 (= call!567719 (derivationStepZipperDown!1650 (h!71829 (exprs!6286 lt!2396953)) (Context!11573 (t!379145 (exprs!6286 lt!2396953))) (h!71830 s!2326)))))

(declare-fun b!6533143 () Bool)

(declare-fun e!3956429 () Bool)

(assert (=> b!6533143 (= e!3956429 (nullable!6395 (h!71829 (exprs!6286 lt!2396953))))))

(declare-fun b!6533144 () Bool)

(assert (=> b!6533144 (= e!3956428 call!567719)))

(declare-fun d!2050667 () Bool)

(declare-fun c!1199215 () Bool)

(assert (=> d!2050667 (= c!1199215 e!3956429)))

(declare-fun res!2680364 () Bool)

(assert (=> d!2050667 (=> (not res!2680364) (not e!3956429))))

(assert (=> d!2050667 (= res!2680364 (is-Cons!65381 (exprs!6286 lt!2396953)))))

(assert (=> d!2050667 (= (derivationStepZipperUp!1576 lt!2396953 (h!71830 s!2326)) e!3956427)))

(declare-fun b!6533145 () Bool)

(assert (=> b!6533145 (= e!3956428 (as set.empty (Set Context!11572)))))

(declare-fun b!6533146 () Bool)

(assert (=> b!6533146 (= e!3956427 (set.union call!567719 (derivationStepZipperUp!1576 (Context!11573 (t!379145 (exprs!6286 lt!2396953))) (h!71830 s!2326))))))

(assert (= (and d!2050667 res!2680364) b!6533143))

(assert (= (and d!2050667 c!1199215) b!6533146))

(assert (= (and d!2050667 (not c!1199215)) b!6533142))

(assert (= (and b!6533142 c!1199216) b!6533144))

(assert (= (and b!6533142 (not c!1199216)) b!6533145))

(assert (= (or b!6533146 b!6533144) bm!567714))

(declare-fun m!7316796 () Bool)

(assert (=> bm!567714 m!7316796))

(declare-fun m!7316798 () Bool)

(assert (=> b!6533143 m!7316798))

(declare-fun m!7316800 () Bool)

(assert (=> b!6533146 m!7316800))

(assert (=> b!6532583 d!2050667))

(declare-fun d!2050669 () Bool)

(assert (=> d!2050669 (= (isEmpty!37599 (t!379147 zl!343)) (is-Nil!65383 (t!379147 zl!343)))))

(assert (=> b!6532584 d!2050669))

(declare-fun b!6533170 () Bool)

(declare-fun e!3956447 () Bool)

(declare-fun lt!2397214 () Option!16293)

(assert (=> b!6533170 (= e!3956447 (not (isDefined!12996 lt!2397214)))))

(declare-fun b!6533171 () Bool)

(declare-fun res!2680378 () Bool)

(declare-fun e!3956443 () Bool)

(assert (=> b!6533171 (=> (not res!2680378) (not e!3956443))))

(assert (=> b!6533171 (= res!2680378 (matchR!8585 (regOne!33316 r!7292) (_1!36684 (get!22685 lt!2397214))))))

(declare-fun b!6533172 () Bool)

(declare-fun e!3956445 () Bool)

(assert (=> b!6533172 (= e!3956445 (matchR!8585 (regTwo!33316 r!7292) s!2326))))

(declare-fun b!6533173 () Bool)

(declare-fun res!2680380 () Bool)

(assert (=> b!6533173 (=> (not res!2680380) (not e!3956443))))

(assert (=> b!6533173 (= res!2680380 (matchR!8585 (regTwo!33316 r!7292) (_2!36684 (get!22685 lt!2397214))))))

(declare-fun b!6533174 () Bool)

(declare-fun e!3956444 () Option!16293)

(declare-fun e!3956446 () Option!16293)

(assert (=> b!6533174 (= e!3956444 e!3956446)))

(declare-fun c!1199225 () Bool)

(assert (=> b!6533174 (= c!1199225 (is-Nil!65382 s!2326))))

(declare-fun b!6533175 () Bool)

(assert (=> b!6533175 (= e!3956444 (Some!16292 (tuple2!66763 Nil!65382 s!2326)))))

(declare-fun b!6533176 () Bool)

(assert (=> b!6533176 (= e!3956443 (= (++!14507 (_1!36684 (get!22685 lt!2397214)) (_2!36684 (get!22685 lt!2397214))) s!2326))))

(declare-fun b!6533177 () Bool)

(assert (=> b!6533177 (= e!3956446 None!16292)))

(declare-fun d!2050671 () Bool)

(assert (=> d!2050671 e!3956447))

(declare-fun res!2680377 () Bool)

(assert (=> d!2050671 (=> res!2680377 e!3956447)))

(assert (=> d!2050671 (= res!2680377 e!3956443)))

(declare-fun res!2680376 () Bool)

(assert (=> d!2050671 (=> (not res!2680376) (not e!3956443))))

(assert (=> d!2050671 (= res!2680376 (isDefined!12996 lt!2397214))))

(assert (=> d!2050671 (= lt!2397214 e!3956444)))

(declare-fun c!1199226 () Bool)

(assert (=> d!2050671 (= c!1199226 e!3956445)))

(declare-fun res!2680379 () Bool)

(assert (=> d!2050671 (=> (not res!2680379) (not e!3956445))))

(assert (=> d!2050671 (= res!2680379 (matchR!8585 (regOne!33316 r!7292) Nil!65382))))

(assert (=> d!2050671 (validRegex!8138 (regOne!33316 r!7292))))

(assert (=> d!2050671 (= (findConcatSeparation!2707 (regOne!33316 r!7292) (regTwo!33316 r!7292) Nil!65382 s!2326 s!2326) lt!2397214)))

(declare-fun b!6533178 () Bool)

(declare-fun lt!2397213 () Unit!158943)

(declare-fun lt!2397215 () Unit!158943)

(assert (=> b!6533178 (= lt!2397213 lt!2397215)))

(assert (=> b!6533178 (= (++!14507 (++!14507 Nil!65382 (Cons!65382 (h!71830 s!2326) Nil!65382)) (t!379146 s!2326)) s!2326)))

(assert (=> b!6533178 (= lt!2397215 (lemmaMoveElementToOtherListKeepsConcatEq!2551 Nil!65382 (h!71830 s!2326) (t!379146 s!2326) s!2326))))

(assert (=> b!6533178 (= e!3956446 (findConcatSeparation!2707 (regOne!33316 r!7292) (regTwo!33316 r!7292) (++!14507 Nil!65382 (Cons!65382 (h!71830 s!2326) Nil!65382)) (t!379146 s!2326) s!2326))))

(assert (= (and d!2050671 res!2680379) b!6533172))

(assert (= (and d!2050671 c!1199226) b!6533175))

(assert (= (and d!2050671 (not c!1199226)) b!6533174))

(assert (= (and b!6533174 c!1199225) b!6533177))

(assert (= (and b!6533174 (not c!1199225)) b!6533178))

(assert (= (and d!2050671 res!2680376) b!6533171))

(assert (= (and b!6533171 res!2680378) b!6533173))

(assert (= (and b!6533173 res!2680380) b!6533176))

(assert (= (and d!2050671 (not res!2680377)) b!6533170))

(declare-fun m!7316812 () Bool)

(assert (=> d!2050671 m!7316812))

(declare-fun m!7316814 () Bool)

(assert (=> d!2050671 m!7316814))

(declare-fun m!7316816 () Bool)

(assert (=> d!2050671 m!7316816))

(assert (=> b!6533178 m!7316666))

(assert (=> b!6533178 m!7316666))

(assert (=> b!6533178 m!7316668))

(assert (=> b!6533178 m!7316670))

(assert (=> b!6533178 m!7316666))

(declare-fun m!7316818 () Bool)

(assert (=> b!6533178 m!7316818))

(declare-fun m!7316820 () Bool)

(assert (=> b!6533172 m!7316820))

(declare-fun m!7316822 () Bool)

(assert (=> b!6533173 m!7316822))

(declare-fun m!7316824 () Bool)

(assert (=> b!6533173 m!7316824))

(assert (=> b!6533176 m!7316822))

(declare-fun m!7316826 () Bool)

(assert (=> b!6533176 m!7316826))

(assert (=> b!6533170 m!7316812))

(assert (=> b!6533171 m!7316822))

(declare-fun m!7316828 () Bool)

(assert (=> b!6533171 m!7316828))

(assert (=> b!6532604 d!2050671))

(declare-fun d!2050677 () Bool)

(declare-fun choose!48506 (Int) Bool)

(assert (=> d!2050677 (= (Exists!3472 lambda!362305) (choose!48506 lambda!362305))))

(declare-fun bs!1666768 () Bool)

(assert (= bs!1666768 d!2050677))

(declare-fun m!7316832 () Bool)

(assert (=> bs!1666768 m!7316832))

(assert (=> b!6532604 d!2050677))

(declare-fun d!2050681 () Bool)

(assert (=> d!2050681 (= (Exists!3472 lambda!362304) (choose!48506 lambda!362304))))

(declare-fun bs!1666769 () Bool)

(assert (= bs!1666769 d!2050681))

(declare-fun m!7316834 () Bool)

(assert (=> bs!1666769 m!7316834))

(assert (=> b!6532604 d!2050681))

(declare-fun bs!1666772 () Bool)

(declare-fun d!2050683 () Bool)

(assert (= bs!1666772 (and d!2050683 b!6532604)))

(declare-fun lambda!362370 () Int)

(assert (=> bs!1666772 (= lambda!362370 lambda!362304)))

(declare-fun bs!1666773 () Bool)

(assert (= bs!1666773 (and d!2050683 b!6532958)))

(assert (=> bs!1666773 (not (= lambda!362370 lambda!362346))))

(declare-fun bs!1666774 () Bool)

(assert (= bs!1666774 (and d!2050683 b!6532949)))

(assert (=> bs!1666774 (not (= lambda!362370 lambda!362347))))

(declare-fun bs!1666775 () Bool)

(assert (= bs!1666775 (and d!2050683 b!6533081)))

(assert (=> bs!1666775 (not (= lambda!362370 lambda!362358))))

(declare-fun bs!1666776 () Bool)

(assert (= bs!1666776 (and d!2050683 b!6533090)))

(assert (=> bs!1666776 (not (= lambda!362370 lambda!362357))))

(assert (=> bs!1666772 (not (= lambda!362370 lambda!362305))))

(assert (=> d!2050683 true))

(assert (=> d!2050683 true))

(assert (=> d!2050683 true))

(assert (=> d!2050683 (= (isDefined!12996 (findConcatSeparation!2707 (regOne!33316 r!7292) (regTwo!33316 r!7292) Nil!65382 s!2326 s!2326)) (Exists!3472 lambda!362370))))

(declare-fun lt!2397218 () Unit!158943)

(declare-fun choose!48507 (Regex!16402 Regex!16402 List!65506) Unit!158943)

(assert (=> d!2050683 (= lt!2397218 (choose!48507 (regOne!33316 r!7292) (regTwo!33316 r!7292) s!2326))))

(assert (=> d!2050683 (validRegex!8138 (regOne!33316 r!7292))))

(assert (=> d!2050683 (= (lemmaFindConcatSeparationEquivalentToExists!2471 (regOne!33316 r!7292) (regTwo!33316 r!7292) s!2326) lt!2397218)))

(declare-fun bs!1666777 () Bool)

(assert (= bs!1666777 d!2050683))

(assert (=> bs!1666777 m!7316222))

(assert (=> bs!1666777 m!7316222))

(assert (=> bs!1666777 m!7316224))

(declare-fun m!7316838 () Bool)

(assert (=> bs!1666777 m!7316838))

(declare-fun m!7316840 () Bool)

(assert (=> bs!1666777 m!7316840))

(assert (=> bs!1666777 m!7316816))

(assert (=> b!6532604 d!2050683))

(declare-fun bs!1666779 () Bool)

(declare-fun d!2050687 () Bool)

(assert (= bs!1666779 (and d!2050687 d!2050683)))

(declare-fun lambda!362375 () Int)

(assert (=> bs!1666779 (= lambda!362375 lambda!362370)))

(declare-fun bs!1666780 () Bool)

(assert (= bs!1666780 (and d!2050687 b!6532604)))

(assert (=> bs!1666780 (= lambda!362375 lambda!362304)))

(declare-fun bs!1666781 () Bool)

(assert (= bs!1666781 (and d!2050687 b!6532958)))

(assert (=> bs!1666781 (not (= lambda!362375 lambda!362346))))

(declare-fun bs!1666782 () Bool)

(assert (= bs!1666782 (and d!2050687 b!6532949)))

(assert (=> bs!1666782 (not (= lambda!362375 lambda!362347))))

(declare-fun bs!1666783 () Bool)

(assert (= bs!1666783 (and d!2050687 b!6533081)))

(assert (=> bs!1666783 (not (= lambda!362375 lambda!362358))))

(declare-fun bs!1666784 () Bool)

(assert (= bs!1666784 (and d!2050687 b!6533090)))

(assert (=> bs!1666784 (not (= lambda!362375 lambda!362357))))

(assert (=> bs!1666780 (not (= lambda!362375 lambda!362305))))

(assert (=> d!2050687 true))

(assert (=> d!2050687 true))

(assert (=> d!2050687 true))

(declare-fun lambda!362376 () Int)

(assert (=> bs!1666779 (not (= lambda!362376 lambda!362370))))

(assert (=> bs!1666780 (not (= lambda!362376 lambda!362304))))

(assert (=> bs!1666781 (not (= lambda!362376 lambda!362346))))

(assert (=> bs!1666782 (= lambda!362376 lambda!362347)))

(assert (=> bs!1666783 (= (and (= (regOne!33316 r!7292) (regOne!33316 lt!2396981)) (= (regTwo!33316 r!7292) (regTwo!33316 lt!2396981))) (= lambda!362376 lambda!362358))))

(assert (=> bs!1666784 (not (= lambda!362376 lambda!362357))))

(assert (=> bs!1666780 (= lambda!362376 lambda!362305)))

(declare-fun bs!1666785 () Bool)

(assert (= bs!1666785 d!2050687))

(assert (=> bs!1666785 (not (= lambda!362376 lambda!362375))))

(assert (=> d!2050687 true))

(assert (=> d!2050687 true))

(assert (=> d!2050687 true))

(assert (=> d!2050687 (= (Exists!3472 lambda!362375) (Exists!3472 lambda!362376))))

(declare-fun lt!2397224 () Unit!158943)

(declare-fun choose!48508 (Regex!16402 Regex!16402 List!65506) Unit!158943)

(assert (=> d!2050687 (= lt!2397224 (choose!48508 (regOne!33316 r!7292) (regTwo!33316 r!7292) s!2326))))

(assert (=> d!2050687 (validRegex!8138 (regOne!33316 r!7292))))

(assert (=> d!2050687 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2009 (regOne!33316 r!7292) (regTwo!33316 r!7292) s!2326) lt!2397224)))

(declare-fun m!7316848 () Bool)

(assert (=> bs!1666785 m!7316848))

(declare-fun m!7316850 () Bool)

(assert (=> bs!1666785 m!7316850))

(declare-fun m!7316852 () Bool)

(assert (=> bs!1666785 m!7316852))

(assert (=> bs!1666785 m!7316816))

(assert (=> b!6532604 d!2050687))

(declare-fun d!2050691 () Bool)

(assert (=> d!2050691 (= (isDefined!12996 (findConcatSeparation!2707 (regOne!33316 r!7292) (regTwo!33316 r!7292) Nil!65382 s!2326 s!2326)) (not (isEmpty!37604 (findConcatSeparation!2707 (regOne!33316 r!7292) (regTwo!33316 r!7292) Nil!65382 s!2326 s!2326))))))

(declare-fun bs!1666786 () Bool)

(assert (= bs!1666786 d!2050691))

(assert (=> bs!1666786 m!7316222))

(declare-fun m!7316854 () Bool)

(assert (=> bs!1666786 m!7316854))

(assert (=> b!6532604 d!2050691))

(assert (=> b!6532586 d!2050585))

(declare-fun bs!1666787 () Bool)

(declare-fun d!2050693 () Bool)

(assert (= bs!1666787 (and d!2050693 d!2050561)))

(declare-fun lambda!362379 () Int)

(assert (=> bs!1666787 (= lambda!362379 lambda!362341)))

(declare-fun bs!1666788 () Bool)

(assert (= bs!1666788 (and d!2050693 d!2050649)))

(assert (=> bs!1666788 (= lambda!362379 lambda!362361)))

(declare-fun bs!1666789 () Bool)

(assert (= bs!1666789 (and d!2050693 b!6532599)))

(assert (=> bs!1666789 (= lambda!362379 lambda!362308)))

(declare-fun bs!1666790 () Bool)

(assert (= bs!1666790 (and d!2050693 d!2050605)))

(assert (=> bs!1666790 (= lambda!362379 lambda!362356)))

(declare-fun bs!1666791 () Bool)

(assert (= bs!1666791 (and d!2050693 d!2050557)))

(assert (=> bs!1666791 (= lambda!362379 lambda!362338)))

(declare-fun b!6533241 () Bool)

(declare-fun e!3956484 () Bool)

(declare-fun lt!2397229 () Regex!16402)

(declare-fun isEmptyLang!1796 (Regex!16402) Bool)

(assert (=> b!6533241 (= e!3956484 (isEmptyLang!1796 lt!2397229))))

(declare-fun b!6533242 () Bool)

(declare-fun e!3956485 () Regex!16402)

(assert (=> b!6533242 (= e!3956485 EmptyLang!16402)))

(declare-fun b!6533243 () Bool)

(declare-fun e!3956482 () Bool)

(assert (=> b!6533243 (= e!3956482 (= lt!2397229 (head!13268 (unfocusZipperList!1823 zl!343))))))

(declare-fun b!6533244 () Bool)

(declare-fun e!3956483 () Regex!16402)

(assert (=> b!6533244 (= e!3956483 (h!71829 (unfocusZipperList!1823 zl!343)))))

(declare-fun b!6533245 () Bool)

(declare-fun e!3956480 () Bool)

(assert (=> b!6533245 (= e!3956480 (isEmpty!37600 (t!379145 (unfocusZipperList!1823 zl!343))))))

(declare-fun b!6533246 () Bool)

(declare-fun isUnion!1226 (Regex!16402) Bool)

(assert (=> b!6533246 (= e!3956482 (isUnion!1226 lt!2397229))))

(declare-fun e!3956481 () Bool)

(assert (=> d!2050693 e!3956481))

(declare-fun res!2680413 () Bool)

(assert (=> d!2050693 (=> (not res!2680413) (not e!3956481))))

(assert (=> d!2050693 (= res!2680413 (validRegex!8138 lt!2397229))))

(assert (=> d!2050693 (= lt!2397229 e!3956483)))

(declare-fun c!1199241 () Bool)

(assert (=> d!2050693 (= c!1199241 e!3956480)))

(declare-fun res!2680414 () Bool)

(assert (=> d!2050693 (=> (not res!2680414) (not e!3956480))))

(assert (=> d!2050693 (= res!2680414 (is-Cons!65381 (unfocusZipperList!1823 zl!343)))))

(assert (=> d!2050693 (forall!15580 (unfocusZipperList!1823 zl!343) lambda!362379)))

(assert (=> d!2050693 (= (generalisedUnion!2246 (unfocusZipperList!1823 zl!343)) lt!2397229)))

(declare-fun b!6533247 () Bool)

(assert (=> b!6533247 (= e!3956483 e!3956485)))

(declare-fun c!1199242 () Bool)

(assert (=> b!6533247 (= c!1199242 (is-Cons!65381 (unfocusZipperList!1823 zl!343)))))

(declare-fun b!6533248 () Bool)

(assert (=> b!6533248 (= e!3956485 (Union!16402 (h!71829 (unfocusZipperList!1823 zl!343)) (generalisedUnion!2246 (t!379145 (unfocusZipperList!1823 zl!343)))))))

(declare-fun b!6533249 () Bool)

(assert (=> b!6533249 (= e!3956481 e!3956484)))

(declare-fun c!1199243 () Bool)

(assert (=> b!6533249 (= c!1199243 (isEmpty!37600 (unfocusZipperList!1823 zl!343)))))

(declare-fun b!6533250 () Bool)

(assert (=> b!6533250 (= e!3956484 e!3956482)))

(declare-fun c!1199244 () Bool)

(assert (=> b!6533250 (= c!1199244 (isEmpty!37600 (tail!12353 (unfocusZipperList!1823 zl!343))))))

(assert (= (and d!2050693 res!2680414) b!6533245))

(assert (= (and d!2050693 c!1199241) b!6533244))

(assert (= (and d!2050693 (not c!1199241)) b!6533247))

(assert (= (and b!6533247 c!1199242) b!6533248))

(assert (= (and b!6533247 (not c!1199242)) b!6533242))

(assert (= (and d!2050693 res!2680413) b!6533249))

(assert (= (and b!6533249 c!1199243) b!6533241))

(assert (= (and b!6533249 (not c!1199243)) b!6533250))

(assert (= (and b!6533250 c!1199244) b!6533243))

(assert (= (and b!6533250 (not c!1199244)) b!6533246))

(declare-fun m!7316856 () Bool)

(assert (=> d!2050693 m!7316856))

(assert (=> d!2050693 m!7316216))

(declare-fun m!7316858 () Bool)

(assert (=> d!2050693 m!7316858))

(declare-fun m!7316860 () Bool)

(assert (=> b!6533245 m!7316860))

(assert (=> b!6533250 m!7316216))

(declare-fun m!7316862 () Bool)

(assert (=> b!6533250 m!7316862))

(assert (=> b!6533250 m!7316862))

(declare-fun m!7316864 () Bool)

(assert (=> b!6533250 m!7316864))

(assert (=> b!6533243 m!7316216))

(declare-fun m!7316866 () Bool)

(assert (=> b!6533243 m!7316866))

(declare-fun m!7316868 () Bool)

(assert (=> b!6533241 m!7316868))

(declare-fun m!7316870 () Bool)

(assert (=> b!6533246 m!7316870))

(declare-fun m!7316872 () Bool)

(assert (=> b!6533248 m!7316872))

(assert (=> b!6533249 m!7316216))

(declare-fun m!7316874 () Bool)

(assert (=> b!6533249 m!7316874))

(assert (=> b!6532588 d!2050693))

(declare-fun bs!1666792 () Bool)

(declare-fun d!2050695 () Bool)

(assert (= bs!1666792 (and d!2050695 d!2050561)))

(declare-fun lambda!362382 () Int)

(assert (=> bs!1666792 (= lambda!362382 lambda!362341)))

(declare-fun bs!1666793 () Bool)

(assert (= bs!1666793 (and d!2050695 d!2050649)))

(assert (=> bs!1666793 (= lambda!362382 lambda!362361)))

(declare-fun bs!1666794 () Bool)

(assert (= bs!1666794 (and d!2050695 d!2050605)))

(assert (=> bs!1666794 (= lambda!362382 lambda!362356)))

(declare-fun bs!1666795 () Bool)

(assert (= bs!1666795 (and d!2050695 d!2050557)))

(assert (=> bs!1666795 (= lambda!362382 lambda!362338)))

(declare-fun bs!1666796 () Bool)

(assert (= bs!1666796 (and d!2050695 d!2050693)))

(assert (=> bs!1666796 (= lambda!362382 lambda!362379)))

(declare-fun bs!1666797 () Bool)

(assert (= bs!1666797 (and d!2050695 b!6532599)))

(assert (=> bs!1666797 (= lambda!362382 lambda!362308)))

(declare-fun lt!2397233 () List!65505)

(assert (=> d!2050695 (forall!15580 lt!2397233 lambda!362382)))

(declare-fun e!3956495 () List!65505)

(assert (=> d!2050695 (= lt!2397233 e!3956495)))

(declare-fun c!1199250 () Bool)

(assert (=> d!2050695 (= c!1199250 (is-Cons!65383 zl!343))))

(assert (=> d!2050695 (= (unfocusZipperList!1823 zl!343) lt!2397233)))

(declare-fun b!6533269 () Bool)

(assert (=> b!6533269 (= e!3956495 (Cons!65381 (generalisedConcat!1999 (exprs!6286 (h!71831 zl!343))) (unfocusZipperList!1823 (t!379147 zl!343))))))

(declare-fun b!6533270 () Bool)

(assert (=> b!6533270 (= e!3956495 Nil!65381)))

(assert (= (and d!2050695 c!1199250) b!6533269))

(assert (= (and d!2050695 (not c!1199250)) b!6533270))

(declare-fun m!7316886 () Bool)

(assert (=> d!2050695 m!7316886))

(assert (=> b!6533269 m!7316184))

(declare-fun m!7316888 () Bool)

(assert (=> b!6533269 m!7316888))

(assert (=> b!6532588 d!2050695))

(declare-fun bs!1666798 () Bool)

(declare-fun d!2050699 () Bool)

(assert (= bs!1666798 (and d!2050699 d!2050561)))

(declare-fun lambda!362383 () Int)

(assert (=> bs!1666798 (= lambda!362383 lambda!362341)))

(declare-fun bs!1666799 () Bool)

(assert (= bs!1666799 (and d!2050699 d!2050649)))

(assert (=> bs!1666799 (= lambda!362383 lambda!362361)))

(declare-fun bs!1666800 () Bool)

(assert (= bs!1666800 (and d!2050699 d!2050695)))

(assert (=> bs!1666800 (= lambda!362383 lambda!362382)))

(declare-fun bs!1666801 () Bool)

(assert (= bs!1666801 (and d!2050699 d!2050605)))

(assert (=> bs!1666801 (= lambda!362383 lambda!362356)))

(declare-fun bs!1666802 () Bool)

(assert (= bs!1666802 (and d!2050699 d!2050557)))

(assert (=> bs!1666802 (= lambda!362383 lambda!362338)))

(declare-fun bs!1666803 () Bool)

(assert (= bs!1666803 (and d!2050699 d!2050693)))

(assert (=> bs!1666803 (= lambda!362383 lambda!362379)))

(declare-fun bs!1666804 () Bool)

(assert (= bs!1666804 (and d!2050699 b!6532599)))

(assert (=> bs!1666804 (= lambda!362383 lambda!362308)))

(assert (=> d!2050699 (= (inv!84253 setElem!44553) (forall!15580 (exprs!6286 setElem!44553) lambda!362383))))

(declare-fun bs!1666805 () Bool)

(assert (= bs!1666805 d!2050699))

(declare-fun m!7316890 () Bool)

(assert (=> bs!1666805 m!7316890))

(assert (=> setNonEmpty!44553 d!2050699))

(declare-fun b!6533278 () Bool)

(declare-fun e!3956501 () Bool)

(declare-fun tp!1807996 () Bool)

(assert (=> b!6533278 (= e!3956501 tp!1807996)))

(declare-fun tp!1807997 () Bool)

(declare-fun e!3956500 () Bool)

(declare-fun b!6533277 () Bool)

(assert (=> b!6533277 (= e!3956500 (and (inv!84253 (h!71831 (t!379147 zl!343))) e!3956501 tp!1807997))))

(assert (=> b!6532619 (= tp!1807952 e!3956500)))

(assert (= b!6533277 b!6533278))

(assert (= (and b!6532619 (is-Cons!65383 (t!379147 zl!343))) b!6533277))

(declare-fun m!7316892 () Bool)

(assert (=> b!6533277 m!7316892))

(declare-fun b!6533283 () Bool)

(declare-fun e!3956504 () Bool)

(declare-fun tp!1808002 () Bool)

(declare-fun tp!1808003 () Bool)

(assert (=> b!6533283 (= e!3956504 (and tp!1808002 tp!1808003))))

(assert (=> b!6532606 (= tp!1807954 e!3956504)))

(assert (= (and b!6532606 (is-Cons!65381 (exprs!6286 (h!71831 zl!343)))) b!6533283))

(declare-fun b!6533288 () Bool)

(declare-fun e!3956507 () Bool)

(declare-fun tp!1808006 () Bool)

(assert (=> b!6533288 (= e!3956507 (and tp_is_empty!42057 tp!1808006))))

(assert (=> b!6532605 (= tp!1807959 e!3956507)))

(assert (= (and b!6532605 (is-Cons!65382 (t!379146 s!2326))) b!6533288))

(declare-fun b!6533289 () Bool)

(declare-fun e!3956508 () Bool)

(declare-fun tp!1808007 () Bool)

(declare-fun tp!1808008 () Bool)

(assert (=> b!6533289 (= e!3956508 (and tp!1808007 tp!1808008))))

(assert (=> b!6532615 (= tp!1807956 e!3956508)))

(assert (= (and b!6532615 (is-Cons!65381 (exprs!6286 setElem!44553))) b!6533289))

(declare-fun b!6533300 () Bool)

(declare-fun e!3956511 () Bool)

(assert (=> b!6533300 (= e!3956511 tp_is_empty!42057)))

(assert (=> b!6532587 (= tp!1807957 e!3956511)))

(declare-fun b!6533302 () Bool)

(declare-fun tp!1808021 () Bool)

(assert (=> b!6533302 (= e!3956511 tp!1808021)))

(declare-fun b!6533301 () Bool)

(declare-fun tp!1808019 () Bool)

(declare-fun tp!1808022 () Bool)

(assert (=> b!6533301 (= e!3956511 (and tp!1808019 tp!1808022))))

(declare-fun b!6533303 () Bool)

(declare-fun tp!1808020 () Bool)

(declare-fun tp!1808023 () Bool)

(assert (=> b!6533303 (= e!3956511 (and tp!1808020 tp!1808023))))

(assert (= (and b!6532587 (is-ElementMatch!16402 (regOne!33317 r!7292))) b!6533300))

(assert (= (and b!6532587 (is-Concat!25247 (regOne!33317 r!7292))) b!6533301))

(assert (= (and b!6532587 (is-Star!16402 (regOne!33317 r!7292))) b!6533302))

(assert (= (and b!6532587 (is-Union!16402 (regOne!33317 r!7292))) b!6533303))

(declare-fun b!6533304 () Bool)

(declare-fun e!3956512 () Bool)

(assert (=> b!6533304 (= e!3956512 tp_is_empty!42057)))

(assert (=> b!6532587 (= tp!1807958 e!3956512)))

(declare-fun b!6533306 () Bool)

(declare-fun tp!1808026 () Bool)

(assert (=> b!6533306 (= e!3956512 tp!1808026)))

(declare-fun b!6533305 () Bool)

(declare-fun tp!1808024 () Bool)

(declare-fun tp!1808027 () Bool)

(assert (=> b!6533305 (= e!3956512 (and tp!1808024 tp!1808027))))

(declare-fun b!6533307 () Bool)

(declare-fun tp!1808025 () Bool)

(declare-fun tp!1808028 () Bool)

(assert (=> b!6533307 (= e!3956512 (and tp!1808025 tp!1808028))))

(assert (= (and b!6532587 (is-ElementMatch!16402 (regTwo!33317 r!7292))) b!6533304))

(assert (= (and b!6532587 (is-Concat!25247 (regTwo!33317 r!7292))) b!6533305))

(assert (= (and b!6532587 (is-Star!16402 (regTwo!33317 r!7292))) b!6533306))

(assert (= (and b!6532587 (is-Union!16402 (regTwo!33317 r!7292))) b!6533307))

(declare-fun b!6533308 () Bool)

(declare-fun e!3956513 () Bool)

(assert (=> b!6533308 (= e!3956513 tp_is_empty!42057)))

(assert (=> b!6532611 (= tp!1807955 e!3956513)))

(declare-fun b!6533310 () Bool)

(declare-fun tp!1808031 () Bool)

(assert (=> b!6533310 (= e!3956513 tp!1808031)))

(declare-fun b!6533309 () Bool)

(declare-fun tp!1808029 () Bool)

(declare-fun tp!1808032 () Bool)

(assert (=> b!6533309 (= e!3956513 (and tp!1808029 tp!1808032))))

(declare-fun b!6533311 () Bool)

(declare-fun tp!1808030 () Bool)

(declare-fun tp!1808033 () Bool)

(assert (=> b!6533311 (= e!3956513 (and tp!1808030 tp!1808033))))

(assert (= (and b!6532611 (is-ElementMatch!16402 (regOne!33316 r!7292))) b!6533308))

(assert (= (and b!6532611 (is-Concat!25247 (regOne!33316 r!7292))) b!6533309))

(assert (= (and b!6532611 (is-Star!16402 (regOne!33316 r!7292))) b!6533310))

(assert (= (and b!6532611 (is-Union!16402 (regOne!33316 r!7292))) b!6533311))

(declare-fun b!6533312 () Bool)

(declare-fun e!3956514 () Bool)

(assert (=> b!6533312 (= e!3956514 tp_is_empty!42057)))

(assert (=> b!6532611 (= tp!1807953 e!3956514)))

(declare-fun b!6533314 () Bool)

(declare-fun tp!1808036 () Bool)

(assert (=> b!6533314 (= e!3956514 tp!1808036)))

(declare-fun b!6533313 () Bool)

(declare-fun tp!1808034 () Bool)

(declare-fun tp!1808037 () Bool)

(assert (=> b!6533313 (= e!3956514 (and tp!1808034 tp!1808037))))

(declare-fun b!6533315 () Bool)

(declare-fun tp!1808035 () Bool)

(declare-fun tp!1808038 () Bool)

(assert (=> b!6533315 (= e!3956514 (and tp!1808035 tp!1808038))))

(assert (= (and b!6532611 (is-ElementMatch!16402 (regTwo!33316 r!7292))) b!6533312))

(assert (= (and b!6532611 (is-Concat!25247 (regTwo!33316 r!7292))) b!6533313))

(assert (= (and b!6532611 (is-Star!16402 (regTwo!33316 r!7292))) b!6533314))

(assert (= (and b!6532611 (is-Union!16402 (regTwo!33316 r!7292))) b!6533315))

(declare-fun b!6533316 () Bool)

(declare-fun e!3956515 () Bool)

(assert (=> b!6533316 (= e!3956515 tp_is_empty!42057)))

(assert (=> b!6532618 (= tp!1807960 e!3956515)))

(declare-fun b!6533318 () Bool)

(declare-fun tp!1808041 () Bool)

(assert (=> b!6533318 (= e!3956515 tp!1808041)))

(declare-fun b!6533317 () Bool)

(declare-fun tp!1808039 () Bool)

(declare-fun tp!1808042 () Bool)

(assert (=> b!6533317 (= e!3956515 (and tp!1808039 tp!1808042))))

(declare-fun b!6533319 () Bool)

(declare-fun tp!1808040 () Bool)

(declare-fun tp!1808043 () Bool)

(assert (=> b!6533319 (= e!3956515 (and tp!1808040 tp!1808043))))

(assert (= (and b!6532618 (is-ElementMatch!16402 (reg!16731 r!7292))) b!6533316))

(assert (= (and b!6532618 (is-Concat!25247 (reg!16731 r!7292))) b!6533317))

(assert (= (and b!6532618 (is-Star!16402 (reg!16731 r!7292))) b!6533318))

(assert (= (and b!6532618 (is-Union!16402 (reg!16731 r!7292))) b!6533319))

(declare-fun condSetEmpty!44559 () Bool)

(assert (=> setNonEmpty!44553 (= condSetEmpty!44559 (= setRest!44553 (as set.empty (Set Context!11572))))))

(declare-fun setRes!44559 () Bool)

(assert (=> setNonEmpty!44553 (= tp!1807961 setRes!44559)))

(declare-fun setIsEmpty!44559 () Bool)

(assert (=> setIsEmpty!44559 setRes!44559))

(declare-fun setElem!44559 () Context!11572)

(declare-fun tp!1808049 () Bool)

(declare-fun setNonEmpty!44559 () Bool)

(declare-fun e!3956518 () Bool)

(assert (=> setNonEmpty!44559 (= setRes!44559 (and tp!1808049 (inv!84253 setElem!44559) e!3956518))))

(declare-fun setRest!44559 () (Set Context!11572))

(assert (=> setNonEmpty!44559 (= setRest!44553 (set.union (set.insert setElem!44559 (as set.empty (Set Context!11572))) setRest!44559))))

(declare-fun b!6533324 () Bool)

(declare-fun tp!1808048 () Bool)

(assert (=> b!6533324 (= e!3956518 tp!1808048)))

(assert (= (and setNonEmpty!44553 condSetEmpty!44559) setIsEmpty!44559))

(assert (= (and setNonEmpty!44553 (not condSetEmpty!44559)) setNonEmpty!44559))

(assert (= setNonEmpty!44559 b!6533324))

(declare-fun m!7316894 () Bool)

(assert (=> setNonEmpty!44559 m!7316894))

(declare-fun b_lambda!247341 () Bool)

(assert (= b_lambda!247333 (or b!6532600 b_lambda!247341)))

(declare-fun bs!1666806 () Bool)

(declare-fun d!2050701 () Bool)

(assert (= bs!1666806 (and d!2050701 b!6532600)))

(assert (=> bs!1666806 (= (dynLambda!25988 lambda!362306 (h!71831 zl!343)) (derivationStepZipperUp!1576 (h!71831 zl!343) (h!71830 s!2326)))))

(assert (=> bs!1666806 m!7316152))

(assert (=> d!2050609 d!2050701))

(declare-fun b_lambda!247343 () Bool)

(assert (= b_lambda!247329 (or b!6532599 b_lambda!247343)))

(declare-fun bs!1666807 () Bool)

(declare-fun d!2050703 () Bool)

(assert (= bs!1666807 (and d!2050703 b!6532599)))

(declare-fun lt!2397234 () Unit!158943)

(assert (=> bs!1666807 (= lt!2397234 (lemmaConcatPreservesForall!375 (exprs!6286 lt!2396980) lt!2396966 lambda!362308))))

(assert (=> bs!1666807 (= (dynLambda!25987 lambda!362307 lt!2396980) (Context!11573 (++!14506 (exprs!6286 lt!2396980) lt!2396966)))))

(declare-fun m!7316896 () Bool)

(assert (=> bs!1666807 m!7316896))

(declare-fun m!7316898 () Bool)

(assert (=> bs!1666807 m!7316898))

(assert (=> d!2050591 d!2050703))

(declare-fun b_lambda!247345 () Bool)

(assert (= b_lambda!247335 (or b!6532600 b_lambda!247345)))

(declare-fun bs!1666808 () Bool)

(declare-fun d!2050705 () Bool)

(assert (= bs!1666808 (and d!2050705 b!6532600)))

(assert (=> bs!1666808 (= (dynLambda!25988 lambda!362306 lt!2396980) (derivationStepZipperUp!1576 lt!2396980 (h!71830 s!2326)))))

(assert (=> bs!1666808 m!7316180))

(assert (=> d!2050661 d!2050705))

(declare-fun b_lambda!247347 () Bool)

(assert (= b_lambda!247337 (or b!6532600 b_lambda!247347)))

(declare-fun bs!1666809 () Bool)

(declare-fun d!2050707 () Bool)

(assert (= bs!1666809 (and d!2050707 b!6532600)))

(assert (=> bs!1666809 (= (dynLambda!25988 lambda!362306 lt!2396953) (derivationStepZipperUp!1576 lt!2396953 (h!71830 s!2326)))))

(assert (=> bs!1666809 m!7316178))

(assert (=> d!2050663 d!2050707))

(declare-fun b_lambda!247349 () Bool)

(assert (= b_lambda!247331 (or b!6532600 b_lambda!247349)))

(declare-fun bs!1666810 () Bool)

(declare-fun d!2050709 () Bool)

(assert (= bs!1666810 (and d!2050709 b!6532600)))

(assert (=> bs!1666810 (= (dynLambda!25988 lambda!362306 lt!2396977) (derivationStepZipperUp!1576 lt!2396977 (h!71830 s!2326)))))

(assert (=> bs!1666810 m!7316260))

(assert (=> d!2050601 d!2050709))

(push 1)

(assert (not b!6532994))

(assert (not b!6533314))

(assert (not bm!567705))

(assert (not b!6533117))

(assert (not d!2050605))

(assert (not d!2050699))

(assert (not d!2050691))

(assert (not d!2050563))

(assert (not b!6533059))

(assert (not d!2050665))

(assert (not b!6533072))

(assert (not b!6533173))

(assert (not b!6533241))

(assert (not b!6532910))

(assert (not b!6533076))

(assert (not d!2050559))

(assert (not bm!567703))

(assert (not b!6533040))

(assert (not b!6533246))

(assert (not b!6532788))

(assert (not b!6532792))

(assert (not d!2050549))

(assert (not b!6533000))

(assert (not b!6533089))

(assert (not b!6533071))

(assert (not b!6532847))

(assert (not b!6532973))

(assert (not d!2050609))

(assert (not b!6533249))

(assert (not bm!567714))

(assert (not d!2050635))

(assert (not b!6532787))

(assert (not bm!567688))

(assert (not d!2050561))

(assert (not d!2050625))

(assert (not bm!567710))

(assert (not b!6533143))

(assert (not b!6533075))

(assert (not b!6532789))

(assert (not b!6533079))

(assert (not d!2050583))

(assert (not bm!567702))

(assert (not b!6532915))

(assert (not d!2050647))

(assert (not b!6533315))

(assert (not d!2050585))

(assert (not b!6533123))

(assert (not d!2050677))

(assert (not b!6532911))

(assert (not b!6532831))

(assert (not d!2050671))

(assert (not d!2050551))

(assert (not d!2050641))

(assert (not d!2050567))

(assert (not d!2050623))

(assert (not b!6533172))

(assert (not b!6532972))

(assert (not b_lambda!247345))

(assert (not b!6533010))

(assert (not bm!567700))

(assert (not b!6532912))

(assert (not b!6533302))

(assert (not d!2050601))

(assert (not b!6532965))

(assert (not b!6533289))

(assert (not b!6533317))

(assert (not bm!567694))

(assert (not b!6533248))

(assert (not b!6532827))

(assert (not d!2050639))

(assert (not d!2050555))

(assert (not b!6532900))

(assert (not b!6533125))

(assert (not d!2050693))

(assert (not b!6533007))

(assert (not b_lambda!247347))

(assert (not d!2050547))

(assert (not b!6533269))

(assert (not d!2050553))

(assert (not b!6532830))

(assert (not b!6533043))

(assert (not b!6532964))

(assert (not b!6532845))

(assert (not d!2050545))

(assert (not b!6533278))

(assert (not d!2050613))

(assert (not b!6533277))

(assert (not b!6533118))

(assert (not d!2050655))

(assert (not b!6533124))

(assert (not b!6533146))

(assert (not b!6532844))

(assert (not bs!1666810))

(assert (not b!6532834))

(assert (not d!2050681))

(assert (not bm!567675))

(assert (not bm!567708))

(assert (not b!6533141))

(assert (not d!2050595))

(assert (not b_lambda!247341))

(assert (not b!6533176))

(assert (not d!2050587))

(assert (not b!6533120))

(assert (not b!6533121))

(assert (not d!2050593))

(assert (not b!6533307))

(assert (not b!6533138))

(assert (not d!2050649))

(assert (not bm!567693))

(assert (not bs!1666806))

(assert (not bm!567677))

(assert (not b!6533243))

(assert (not b!6533046))

(assert (not bm!567709))

(assert (not d!2050581))

(assert (not b!6532995))

(assert (not b!6533058))

(assert (not b!6532988))

(assert (not b!6533318))

(assert (not bm!567711))

(assert (not b!6533047))

(assert (not b!6533303))

(assert (not b!6532790))

(assert (not d!2050569))

(assert (not b!6533171))

(assert (not d!2050627))

(assert (not bm!567686))

(assert (not bs!1666807))

(assert (not b!6533002))

(assert (not b!6533005))

(assert (not b_lambda!247349))

(assert (not d!2050661))

(assert (not b!6532881))

(assert (not b!6532822))

(assert (not b!6533250))

(assert (not b!6532997))

(assert (not bm!567699))

(assert (not b!6532960))

(assert (not bs!1666808))

(assert (not d!2050659))

(assert (not b!6532848))

(assert (not b!6533310))

(assert (not d!2050683))

(assert (not b!6533324))

(assert (not d!2050575))

(assert (not b!6533283))

(assert (not b!6533306))

(assert (not b!6532954))

(assert (not b!6532991))

(assert (not d!2050663))

(assert (not b!6533021))

(assert (not d!2050687))

(assert (not d!2050577))

(assert (not d!2050611))

(assert (not b!6533067))

(assert tp_is_empty!42057)

(assert (not b_lambda!247343))

(assert (not b!6533319))

(assert (not b!6533044))

(assert (not b!6533041))

(assert (not b!6533301))

(assert (not b!6533065))

(assert (not d!2050695))

(assert (not bm!567698))

(assert (not b!6533086))

(assert (not d!2050591))

(assert (not d!2050643))

(assert (not d!2050597))

(assert (not b!6533178))

(assert (not b!6532957))

(assert (not bs!1666809))

(assert (not b!6532826))

(assert (not bm!567674))

(assert (not b!6533309))

(assert (not b!6533313))

(assert (not b!6532791))

(assert (not d!2050629))

(assert (not b!6532968))

(assert (not b!6532969))

(assert (not setNonEmpty!44559))

(assert (not b!6533305))

(assert (not d!2050603))

(assert (not b!6533311))

(assert (not b!6533170))

(assert (not d!2050557))

(assert (not b!6533245))

(assert (not b!6532909))

(assert (not b!6532974))

(assert (not b!6533288))

(assert (not b!6533063))

(assert (not bm!567661))

(assert (not d!2050607))

(assert (not d!2050573))

(assert (not bm!567695))

(assert (not b!6533064))

(assert (not bm!567701))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

