; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!538586 () Bool)

(assert start!538586)

(declare-fun setIsEmpty!29499 () Bool)

(declare-fun setRes!29500 () Bool)

(assert (=> setIsEmpty!29499 setRes!29500))

(declare-fun setNonEmpty!29499 () Bool)

(declare-fun setRes!29499 () Bool)

(declare-fun e!3185808 () Bool)

(declare-fun tp!1424963 () Bool)

(declare-datatypes ((C!28490 0))(
  ( (C!28491 (val!23897 Int)) )
))
(declare-datatypes ((Regex!14112 0))(
  ( (ElementMatch!14112 (c!877420 C!28490)) (Concat!22957 (regOne!28736 Regex!14112) (regTwo!28736 Regex!14112)) (EmptyExpr!14112) (Star!14112 (reg!14441 Regex!14112)) (EmptyLang!14112) (Union!14112 (regOne!28737 Regex!14112) (regTwo!28737 Regex!14112)) )
))
(declare-datatypes ((List!59094 0))(
  ( (Nil!58970) (Cons!58970 (h!65418 Regex!14112) (t!372095 List!59094)) )
))
(declare-datatypes ((Context!6992 0))(
  ( (Context!6993 (exprs!3996 List!59094)) )
))
(declare-fun setElem!29500 () Context!6992)

(declare-fun inv!78462 (Context!6992) Bool)

(assert (=> setNonEmpty!29499 (= setRes!29499 (and tp!1424963 (inv!78462 setElem!29500) e!3185808))))

(declare-fun z!4463 () (Set Context!6992))

(declare-fun setRest!29499 () (Set Context!6992))

(assert (=> setNonEmpty!29499 (= z!4463 (set.union (set.insert setElem!29500 (as set.empty (Set Context!6992))) setRest!29499))))

(declare-fun b!5107932 () Bool)

(declare-fun e!3185812 () Bool)

(assert (=> b!5107932 (= e!3185812 true)))

(declare-fun lt!2102942 () Bool)

(declare-fun lostCauseZipper!998 ((Set Context!6992)) Bool)

(assert (=> b!5107932 (= lt!2102942 (lostCauseZipper!998 z!4463))))

(declare-fun b!5107933 () Bool)

(declare-fun e!3185810 () Bool)

(declare-fun tp_is_empty!37497 () Bool)

(declare-fun tp!1424965 () Bool)

(assert (=> b!5107933 (= e!3185810 (and tp_is_empty!37497 tp!1424965))))

(declare-fun b!5107934 () Bool)

(declare-fun e!3185811 () Bool)

(declare-fun tp!1424967 () Bool)

(assert (=> b!5107934 (= e!3185811 tp!1424967)))

(declare-fun res!2174201 () Bool)

(declare-fun e!3185814 () Bool)

(assert (=> start!538586 (=> (not res!2174201) (not e!3185814))))

(declare-datatypes ((List!59095 0))(
  ( (Nil!58971) (Cons!58971 (h!65419 C!28490) (t!372096 List!59095)) )
))
(declare-fun testedP!265 () List!59095)

(declare-fun input!5745 () List!59095)

(declare-fun isPrefix!5517 (List!59095 List!59095) Bool)

(assert (=> start!538586 (= res!2174201 (isPrefix!5517 testedP!265 input!5745))))

(assert (=> start!538586 e!3185814))

(assert (=> start!538586 e!3185810))

(declare-fun condSetEmpty!29499 () Bool)

(assert (=> start!538586 (= condSetEmpty!29499 (= z!4463 (as set.empty (Set Context!6992))))))

(assert (=> start!538586 setRes!29499))

(declare-fun e!3185813 () Bool)

(assert (=> start!538586 e!3185813))

(declare-fun condSetEmpty!29500 () Bool)

(declare-fun baseZ!46 () (Set Context!6992))

(assert (=> start!538586 (= condSetEmpty!29500 (= baseZ!46 (as set.empty (Set Context!6992))))))

(assert (=> start!538586 setRes!29500))

(declare-fun e!3185809 () Bool)

(assert (=> start!538586 e!3185809))

(declare-fun b!5107935 () Bool)

(assert (=> b!5107935 (= e!3185814 (not e!3185812))))

(declare-fun res!2174199 () Bool)

(assert (=> b!5107935 (=> res!2174199 e!3185812)))

(declare-fun knownP!20 () List!59095)

(declare-fun matchZipper!780 ((Set Context!6992) List!59095) Bool)

(declare-fun getSuffix!3191 (List!59095 List!59095) List!59095)

(assert (=> b!5107935 (= res!2174199 (not (matchZipper!780 z!4463 (getSuffix!3191 knownP!20 testedP!265))))))

(assert (=> b!5107935 (isPrefix!5517 testedP!265 knownP!20)))

(declare-datatypes ((Unit!150037 0))(
  ( (Unit!150038) )
))
(declare-fun lt!2102941 () Unit!150037)

(declare-fun lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!654 (List!59095 List!59095 List!59095) Unit!150037)

(assert (=> b!5107935 (= lt!2102941 (lemmaPrefixFromSameListAndStrictlySmallerThenPrefixFromEachOther!654 knownP!20 testedP!265 input!5745))))

(declare-fun setIsEmpty!29500 () Bool)

(assert (=> setIsEmpty!29500 setRes!29499))

(declare-fun b!5107936 () Bool)

(declare-fun res!2174202 () Bool)

(assert (=> b!5107936 (=> res!2174202 e!3185812)))

(declare-fun derivationZipper!11 ((Set Context!6992) List!59095) (Set Context!6992))

(assert (=> b!5107936 (= res!2174202 (not (= (derivationZipper!11 baseZ!46 testedP!265) z!4463)))))

(declare-fun b!5107937 () Bool)

(declare-fun res!2174203 () Bool)

(assert (=> b!5107937 (=> (not res!2174203) (not e!3185814))))

(assert (=> b!5107937 (= res!2174203 (matchZipper!780 baseZ!46 knownP!20))))

(declare-fun b!5107938 () Bool)

(declare-fun tp!1424968 () Bool)

(assert (=> b!5107938 (= e!3185813 (and tp_is_empty!37497 tp!1424968))))

(declare-fun setElem!29499 () Context!6992)

(declare-fun tp!1424964 () Bool)

(declare-fun setNonEmpty!29500 () Bool)

(assert (=> setNonEmpty!29500 (= setRes!29500 (and tp!1424964 (inv!78462 setElem!29499) e!3185811))))

(declare-fun setRest!29500 () (Set Context!6992))

(assert (=> setNonEmpty!29500 (= baseZ!46 (set.union (set.insert setElem!29499 (as set.empty (Set Context!6992))) setRest!29500))))

(declare-fun b!5107939 () Bool)

(declare-fun res!2174204 () Bool)

(assert (=> b!5107939 (=> (not res!2174204) (not e!3185814))))

(assert (=> b!5107939 (= res!2174204 (isPrefix!5517 knownP!20 input!5745))))

(declare-fun b!5107940 () Bool)

(declare-fun res!2174200 () Bool)

(assert (=> b!5107940 (=> (not res!2174200) (not e!3185814))))

(declare-fun size!39418 (List!59095) Int)

(assert (=> b!5107940 (= res!2174200 (>= (size!39418 knownP!20) (size!39418 testedP!265)))))

(declare-fun b!5107941 () Bool)

(declare-fun tp!1424966 () Bool)

(assert (=> b!5107941 (= e!3185809 (and tp_is_empty!37497 tp!1424966))))

(declare-fun b!5107942 () Bool)

(declare-fun tp!1424962 () Bool)

(assert (=> b!5107942 (= e!3185808 tp!1424962)))

(assert (= (and start!538586 res!2174201) b!5107939))

(assert (= (and b!5107939 res!2174204) b!5107940))

(assert (= (and b!5107940 res!2174200) b!5107937))

(assert (= (and b!5107937 res!2174203) b!5107935))

(assert (= (and b!5107935 (not res!2174199)) b!5107936))

(assert (= (and b!5107936 (not res!2174202)) b!5107932))

(assert (= (and start!538586 (is-Cons!58971 input!5745)) b!5107933))

(assert (= (and start!538586 condSetEmpty!29499) setIsEmpty!29500))

(assert (= (and start!538586 (not condSetEmpty!29499)) setNonEmpty!29499))

(assert (= setNonEmpty!29499 b!5107942))

(assert (= (and start!538586 (is-Cons!58971 testedP!265)) b!5107938))

(assert (= (and start!538586 condSetEmpty!29500) setIsEmpty!29499))

(assert (= (and start!538586 (not condSetEmpty!29500)) setNonEmpty!29500))

(assert (= setNonEmpty!29500 b!5107934))

(assert (= (and start!538586 (is-Cons!58971 knownP!20)) b!5107941))

(declare-fun m!6165062 () Bool)

(assert (=> setNonEmpty!29499 m!6165062))

(declare-fun m!6165064 () Bool)

(assert (=> b!5107935 m!6165064))

(assert (=> b!5107935 m!6165064))

(declare-fun m!6165066 () Bool)

(assert (=> b!5107935 m!6165066))

(declare-fun m!6165068 () Bool)

(assert (=> b!5107935 m!6165068))

(declare-fun m!6165070 () Bool)

(assert (=> b!5107935 m!6165070))

(declare-fun m!6165072 () Bool)

(assert (=> b!5107940 m!6165072))

(declare-fun m!6165074 () Bool)

(assert (=> b!5107940 m!6165074))

(declare-fun m!6165076 () Bool)

(assert (=> setNonEmpty!29500 m!6165076))

(declare-fun m!6165078 () Bool)

(assert (=> start!538586 m!6165078))

(declare-fun m!6165080 () Bool)

(assert (=> b!5107936 m!6165080))

(declare-fun m!6165082 () Bool)

(assert (=> b!5107937 m!6165082))

(declare-fun m!6165084 () Bool)

(assert (=> b!5107932 m!6165084))

(declare-fun m!6165086 () Bool)

(assert (=> b!5107939 m!6165086))

(push 1)

(assert (not b!5107940))

(assert (not b!5107938))

(assert tp_is_empty!37497)

(assert (not b!5107936))

(assert (not b!5107941))

(assert (not setNonEmpty!29500))

(assert (not b!5107939))

(assert (not start!538586))

(assert (not b!5107934))

(assert (not b!5107933))

(assert (not b!5107935))

(assert (not b!5107942))

(assert (not b!5107932))

(assert (not b!5107937))

(assert (not setNonEmpty!29499))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

