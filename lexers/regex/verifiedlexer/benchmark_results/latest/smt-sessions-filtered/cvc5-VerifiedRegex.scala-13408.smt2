; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!725804 () Bool)

(assert start!725804)

(declare-fun b!7501800 () Bool)

(declare-fun e!4472521 () Bool)

(declare-fun tp_is_empty!49645 () Bool)

(declare-fun tp!2177623 () Bool)

(assert (=> b!7501800 (= e!4472521 (and tp_is_empty!49645 tp!2177623))))

(declare-fun b!7501801 () Bool)

(declare-fun e!4472523 () Bool)

(declare-fun tp!2177621 () Bool)

(assert (=> b!7501801 (= e!4472523 (and tp_is_empty!49645 tp!2177621))))

(declare-fun b!7501802 () Bool)

(declare-fun e!4472525 () Bool)

(declare-fun e!4472526 () Bool)

(assert (=> b!7501802 (= e!4472525 (not e!4472526))))

(declare-fun res!3009424 () Bool)

(assert (=> b!7501802 (=> res!3009424 e!4472526)))

(declare-datatypes ((C!39630 0))(
  ( (C!39631 (val!30213 Int)) )
))
(declare-datatypes ((List!72394 0))(
  ( (Nil!72270) (Cons!72270 (h!78718 C!39630) (t!386963 List!72394)) )
))
(declare-fun testedP!204 () List!72394)

(declare-fun totalInput!779 () List!72394)

(declare-fun isPrefix!5948 (List!72394 List!72394) Bool)

(assert (=> b!7501802 (= res!3009424 (not (isPrefix!5948 testedP!204 totalInput!779)))))

(declare-fun lt!2632059 () List!72394)

(assert (=> b!7501802 (isPrefix!5948 testedP!204 lt!2632059)))

(declare-datatypes ((Unit!166190 0))(
  ( (Unit!166191) )
))
(declare-fun lt!2632058 () Unit!166190)

(declare-fun testedSuffix!164 () List!72394)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3661 (List!72394 List!72394) Unit!166190)

(assert (=> b!7501802 (= lt!2632058 (lemmaConcatTwoListThenFirstIsPrefix!3661 testedP!204 testedSuffix!164))))

(declare-fun setIsEmpty!56813 () Bool)

(declare-fun setRes!56813 () Bool)

(assert (=> setIsEmpty!56813 setRes!56813))

(declare-fun res!3009421 () Bool)

(assert (=> start!725804 (=> (not res!3009421) (not e!4472525))))

(assert (=> start!725804 (= res!3009421 (= lt!2632059 totalInput!779))))

(declare-fun ++!17281 (List!72394 List!72394) List!72394)

(assert (=> start!725804 (= lt!2632059 (++!17281 testedP!204 testedSuffix!164))))

(assert (=> start!725804 e!4472525))

(assert (=> start!725804 e!4472523))

(assert (=> start!725804 true))

(declare-fun e!4472524 () Bool)

(assert (=> start!725804 e!4472524))

(assert (=> start!725804 e!4472521))

(declare-fun condSetEmpty!56813 () Bool)

(declare-datatypes ((Regex!19662 0))(
  ( (ElementMatch!19662 (c!1384893 C!39630)) (Concat!28507 (regOne!39836 Regex!19662) (regTwo!39836 Regex!19662)) (EmptyExpr!19662) (Star!19662 (reg!19991 Regex!19662)) (EmptyLang!19662) (Union!19662 (regOne!39837 Regex!19662) (regTwo!39837 Regex!19662)) )
))
(declare-datatypes ((List!72395 0))(
  ( (Nil!72271) (Cons!72271 (h!78719 Regex!19662) (t!386964 List!72395)) )
))
(declare-datatypes ((Context!16828 0))(
  ( (Context!16829 (exprs!8914 List!72395)) )
))
(declare-fun z!3716 () (Set Context!16828))

(assert (=> start!725804 (= condSetEmpty!56813 (= z!3716 (as set.empty (Set Context!16828))))))

(assert (=> start!725804 setRes!56813))

(declare-fun b!7501803 () Bool)

(declare-fun tp!2177624 () Bool)

(assert (=> b!7501803 (= e!4472524 (and tp_is_empty!49645 tp!2177624))))

(declare-fun setElem!56813 () Context!16828)

(declare-fun tp!2177620 () Bool)

(declare-fun e!4472522 () Bool)

(declare-fun setNonEmpty!56813 () Bool)

(declare-fun inv!92371 (Context!16828) Bool)

(assert (=> setNonEmpty!56813 (= setRes!56813 (and tp!2177620 (inv!92371 setElem!56813) e!4472522))))

(declare-fun setRest!56813 () (Set Context!16828))

(assert (=> setNonEmpty!56813 (= z!3716 (set.union (set.insert setElem!56813 (as set.empty (Set Context!16828))) setRest!56813))))

(declare-fun b!7501804 () Bool)

(assert (=> b!7501804 (= e!4472526 true)))

(declare-fun lt!2632057 () Bool)

(declare-fun lostCauseZipper!1350 ((Set Context!16828)) Bool)

(assert (=> b!7501804 (= lt!2632057 (lostCauseZipper!1350 z!3716))))

(declare-fun lt!2632060 () List!72394)

(assert (=> b!7501804 (and (= testedSuffix!164 lt!2632060) (= lt!2632060 testedSuffix!164))))

(declare-fun lt!2632061 () Unit!166190)

(declare-fun lemmaSamePrefixThenSameSuffix!2753 (List!72394 List!72394 List!72394 List!72394 List!72394) Unit!166190)

(assert (=> b!7501804 (= lt!2632061 (lemmaSamePrefixThenSameSuffix!2753 testedP!204 testedSuffix!164 testedP!204 lt!2632060 totalInput!779))))

(declare-fun getSuffix!3450 (List!72394 List!72394) List!72394)

(assert (=> b!7501804 (= lt!2632060 (getSuffix!3450 totalInput!779 testedP!204))))

(declare-fun b!7501805 () Bool)

(declare-fun tp!2177622 () Bool)

(assert (=> b!7501805 (= e!4472522 tp!2177622)))

(declare-fun b!7501806 () Bool)

(declare-fun res!3009422 () Bool)

(assert (=> b!7501806 (=> (not res!3009422) (not e!4472525))))

(declare-fun testedPSize!164 () Int)

(declare-fun size!42223 (List!72394) Int)

(assert (=> b!7501806 (= res!3009422 (= testedPSize!164 (size!42223 testedP!204)))))

(declare-fun b!7501807 () Bool)

(declare-fun res!3009423 () Bool)

(assert (=> b!7501807 (=> (not res!3009423) (not e!4472525))))

(declare-fun totalInputSize!226 () Int)

(assert (=> b!7501807 (= res!3009423 (= totalInputSize!226 (size!42223 totalInput!779)))))

(assert (= (and start!725804 res!3009421) b!7501806))

(assert (= (and b!7501806 res!3009422) b!7501807))

(assert (= (and b!7501807 res!3009423) b!7501802))

(assert (= (and b!7501802 (not res!3009424)) b!7501804))

(assert (= (and start!725804 (is-Cons!72270 testedSuffix!164)) b!7501801))

(assert (= (and start!725804 (is-Cons!72270 totalInput!779)) b!7501803))

(assert (= (and start!725804 (is-Cons!72270 testedP!204)) b!7501800))

(assert (= (and start!725804 condSetEmpty!56813) setIsEmpty!56813))

(assert (= (and start!725804 (not condSetEmpty!56813)) setNonEmpty!56813))

(assert (= setNonEmpty!56813 b!7501805))

(declare-fun m!8083410 () Bool)

(assert (=> start!725804 m!8083410))

(declare-fun m!8083412 () Bool)

(assert (=> b!7501806 m!8083412))

(declare-fun m!8083414 () Bool)

(assert (=> setNonEmpty!56813 m!8083414))

(declare-fun m!8083416 () Bool)

(assert (=> b!7501802 m!8083416))

(declare-fun m!8083418 () Bool)

(assert (=> b!7501802 m!8083418))

(declare-fun m!8083420 () Bool)

(assert (=> b!7501802 m!8083420))

(declare-fun m!8083422 () Bool)

(assert (=> b!7501807 m!8083422))

(declare-fun m!8083424 () Bool)

(assert (=> b!7501804 m!8083424))

(declare-fun m!8083426 () Bool)

(assert (=> b!7501804 m!8083426))

(declare-fun m!8083428 () Bool)

(assert (=> b!7501804 m!8083428))

(push 1)

(assert (not b!7501805))

(assert (not b!7501803))

(assert (not start!725804))

(assert (not b!7501806))

(assert (not b!7501807))

(assert (not b!7501800))

(assert tp_is_empty!49645)

(assert (not b!7501804))

(assert (not setNonEmpty!56813))

(assert (not b!7501802))

(assert (not b!7501801))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

