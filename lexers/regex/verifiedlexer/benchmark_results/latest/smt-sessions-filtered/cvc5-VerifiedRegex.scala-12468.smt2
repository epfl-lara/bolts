; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694782 () Bool)

(assert start!694782)

(declare-fun b!7131842 () Bool)

(declare-fun e!4285948 () Bool)

(declare-fun tp!1965406 () Bool)

(assert (=> b!7131842 (= e!4285948 tp!1965406)))

(declare-fun setRes!52072 () Bool)

(declare-datatypes ((C!36406 0))(
  ( (C!36407 (val!28129 Int)) )
))
(declare-datatypes ((Regex!18068 0))(
  ( (ElementMatch!18068 (c!1330270 C!36406)) (Concat!26913 (regOne!36648 Regex!18068) (regTwo!36648 Regex!18068)) (EmptyExpr!18068) (Star!18068 (reg!18397 Regex!18068)) (EmptyLang!18068) (Union!18068 (regOne!36649 Regex!18068) (regTwo!36649 Regex!18068)) )
))
(declare-datatypes ((List!69190 0))(
  ( (Nil!69066) (Cons!69066 (h!75514 Regex!18068) (t!383167 List!69190)) )
))
(declare-datatypes ((Context!14124 0))(
  ( (Context!14125 (exprs!7562 List!69190)) )
))
(declare-fun setElem!52072 () Context!14124)

(declare-fun tp!1965407 () Bool)

(declare-fun setNonEmpty!52072 () Bool)

(declare-fun inv!88199 (Context!14124) Bool)

(assert (=> setNonEmpty!52072 (= setRes!52072 (and tp!1965407 (inv!88199 setElem!52072) e!4285948))))

(declare-fun z1!538 () (Set Context!14124))

(declare-fun setRest!52072 () (Set Context!14124))

(assert (=> setNonEmpty!52072 (= z1!538 (set.union (set.insert setElem!52072 (as set.empty (Set Context!14124))) setRest!52072))))

(declare-fun res!2909979 () Bool)

(declare-fun e!4285946 () Bool)

(assert (=> start!694782 (=> (not res!2909979) (not e!4285946))))

(declare-datatypes ((List!69191 0))(
  ( (Nil!69067) (Cons!69067 (h!75515 C!36406) (t!383168 List!69191)) )
))
(declare-fun s2!1615 () List!69191)

(declare-fun s1!1678 () List!69191)

(declare-fun s!7358 () List!69191)

(declare-fun ++!16206 (List!69191 List!69191) List!69191)

(assert (=> start!694782 (= res!2909979 (= (++!16206 s1!1678 s2!1615) s!7358))))

(assert (=> start!694782 e!4285946))

(declare-fun condSetEmpty!52072 () Bool)

(declare-fun z2!457 () (Set Context!14124))

(assert (=> start!694782 (= condSetEmpty!52072 (= z2!457 (as set.empty (Set Context!14124))))))

(declare-fun setRes!52073 () Bool)

(assert (=> start!694782 setRes!52073))

(declare-fun e!4285950 () Bool)

(assert (=> start!694782 e!4285950))

(declare-fun condSetEmpty!52073 () Bool)

(assert (=> start!694782 (= condSetEmpty!52073 (= z1!538 (as set.empty (Set Context!14124))))))

(assert (=> start!694782 setRes!52072))

(declare-fun e!4285949 () Bool)

(assert (=> start!694782 e!4285949))

(declare-fun e!4285951 () Bool)

(assert (=> start!694782 e!4285951))

(declare-fun setElem!52073 () Context!14124)

(declare-fun e!4285947 () Bool)

(declare-fun setNonEmpty!52073 () Bool)

(declare-fun tp!1965408 () Bool)

(assert (=> setNonEmpty!52073 (= setRes!52073 (and tp!1965408 (inv!88199 setElem!52073) e!4285947))))

(declare-fun setRest!52073 () (Set Context!14124))

(assert (=> setNonEmpty!52073 (= z2!457 (set.union (set.insert setElem!52073 (as set.empty (Set Context!14124))) setRest!52073))))

(declare-fun b!7131843 () Bool)

(declare-fun tp_is_empty!45737 () Bool)

(declare-fun tp!1965411 () Bool)

(assert (=> b!7131843 (= e!4285950 (and tp_is_empty!45737 tp!1965411))))

(declare-fun b!7131844 () Bool)

(declare-fun tp!1965412 () Bool)

(assert (=> b!7131844 (= e!4285949 (and tp_is_empty!45737 tp!1965412))))

(declare-fun b!7131845 () Bool)

(declare-fun tp!1965409 () Bool)

(assert (=> b!7131845 (= e!4285947 tp!1965409)))

(declare-fun b!7131846 () Bool)

(assert (=> b!7131846 (= e!4285946 false)))

(declare-fun lt!2564903 () Bool)

(declare-fun matchZipper!3324 ((Set Context!14124) List!69191) Bool)

(assert (=> b!7131846 (= lt!2564903 (matchZipper!3324 z2!457 s2!1615))))

(declare-fun b!7131847 () Bool)

(declare-fun tp!1965410 () Bool)

(assert (=> b!7131847 (= e!4285951 (and tp_is_empty!45737 tp!1965410))))

(declare-fun setIsEmpty!52072 () Bool)

(assert (=> setIsEmpty!52072 setRes!52072))

(declare-fun setIsEmpty!52073 () Bool)

(assert (=> setIsEmpty!52073 setRes!52073))

(declare-fun b!7131848 () Bool)

(declare-fun res!2909978 () Bool)

(assert (=> b!7131848 (=> (not res!2909978) (not e!4285946))))

(assert (=> b!7131848 (= res!2909978 (matchZipper!3324 z1!538 s1!1678))))

(assert (= (and start!694782 res!2909979) b!7131848))

(assert (= (and b!7131848 res!2909978) b!7131846))

(assert (= (and start!694782 condSetEmpty!52072) setIsEmpty!52073))

(assert (= (and start!694782 (not condSetEmpty!52072)) setNonEmpty!52073))

(assert (= setNonEmpty!52073 b!7131845))

(assert (= (and start!694782 (is-Cons!69067 s2!1615)) b!7131843))

(assert (= (and start!694782 condSetEmpty!52073) setIsEmpty!52072))

(assert (= (and start!694782 (not condSetEmpty!52073)) setNonEmpty!52072))

(assert (= setNonEmpty!52072 b!7131842))

(assert (= (and start!694782 (is-Cons!69067 s1!1678)) b!7131844))

(assert (= (and start!694782 (is-Cons!69067 s!7358)) b!7131847))

(declare-fun m!7849296 () Bool)

(assert (=> setNonEmpty!52072 m!7849296))

(declare-fun m!7849298 () Bool)

(assert (=> setNonEmpty!52073 m!7849298))

(declare-fun m!7849300 () Bool)

(assert (=> b!7131846 m!7849300))

(declare-fun m!7849302 () Bool)

(assert (=> start!694782 m!7849302))

(declare-fun m!7849304 () Bool)

(assert (=> b!7131848 m!7849304))

(push 1)

(assert (not b!7131845))

(assert (not b!7131844))

(assert (not b!7131846))

(assert (not b!7131842))

(assert (not b!7131848))

(assert (not b!7131843))

(assert tp_is_empty!45737)

(assert (not setNonEmpty!52073))

(assert (not start!694782))

(assert (not setNonEmpty!52072))

(assert (not b!7131847))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

