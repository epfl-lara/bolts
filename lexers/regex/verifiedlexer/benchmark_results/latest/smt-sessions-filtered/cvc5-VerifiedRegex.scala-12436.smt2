; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694206 () Bool)

(assert start!694206)

(declare-fun res!2907302 () Bool)

(declare-fun e!4281838 () Bool)

(assert (=> start!694206 (=> (not res!2907302) (not e!4281838))))

(declare-datatypes ((C!36278 0))(
  ( (C!36279 (val!28065 Int)) )
))
(declare-datatypes ((Regex!18004 0))(
  ( (ElementMatch!18004 (c!1329346 C!36278)) (Concat!26849 (regOne!36520 Regex!18004) (regTwo!36520 Regex!18004)) (EmptyExpr!18004) (Star!18004 (reg!18333 Regex!18004)) (EmptyLang!18004) (Union!18004 (regOne!36521 Regex!18004) (regTwo!36521 Regex!18004)) )
))
(declare-datatypes ((List!69059 0))(
  ( (Nil!68935) (Cons!68935 (h!75383 Regex!18004) (t!383036 List!69059)) )
))
(declare-datatypes ((Context!13996 0))(
  ( (Context!13997 (exprs!7498 List!69059)) )
))
(declare-fun z1!552 () (Set Context!13996))

(declare-datatypes ((List!69060 0))(
  ( (Nil!68936) (Cons!68936 (h!75384 C!36278) (t!383037 List!69060)) )
))
(declare-fun s1!1688 () List!69060)

(declare-fun matchZipper!3260 ((Set Context!13996) List!69060) Bool)

(assert (=> start!694206 (= res!2907302 (matchZipper!3260 z1!552 s1!1688))))

(assert (=> start!694206 e!4281838))

(declare-fun e!4281837 () Bool)

(assert (=> start!694206 e!4281837))

(declare-fun condSetEmpty!51588 () Bool)

(assert (=> start!694206 (= condSetEmpty!51588 (= z1!552 (as set.empty (Set Context!13996))))))

(declare-fun setRes!51589 () Bool)

(assert (=> start!694206 setRes!51589))

(declare-fun e!4281836 () Bool)

(assert (=> start!694206 e!4281836))

(declare-fun condSetEmpty!51589 () Bool)

(declare-fun z2!471 () (Set Context!13996))

(assert (=> start!694206 (= condSetEmpty!51589 (= z2!471 (as set.empty (Set Context!13996))))))

(declare-fun setRes!51588 () Bool)

(assert (=> start!694206 setRes!51588))

(declare-fun e!4281843 () Bool)

(assert (=> start!694206 e!4281843))

(declare-fun e!4281840 () Bool)

(assert (=> start!694206 e!4281840))

(declare-fun e!4281839 () Bool)

(assert (=> start!694206 e!4281839))

(declare-fun setNonEmpty!51588 () Bool)

(declare-fun tp!1962534 () Bool)

(declare-fun e!4281841 () Bool)

(declare-fun setElem!51588 () Context!13996)

(declare-fun inv!88039 (Context!13996) Bool)

(assert (=> setNonEmpty!51588 (= setRes!51588 (and tp!1962534 (inv!88039 setElem!51588) e!4281841))))

(declare-fun setRest!51589 () (Set Context!13996))

(assert (=> setNonEmpty!51588 (= z2!471 (set.union (set.insert setElem!51588 (as set.empty (Set Context!13996))) setRest!51589))))

(declare-fun b!7125220 () Bool)

(declare-fun res!2907303 () Bool)

(assert (=> b!7125220 (=> (not res!2907303) (not e!4281838))))

(declare-fun s1Rec!140 () List!69060)

(declare-fun isPrefix!5873 (List!69060 List!69060) Bool)

(assert (=> b!7125220 (= res!2907303 (isPrefix!5873 s1Rec!140 s1!1688))))

(declare-fun tp!1962537 () Bool)

(declare-fun setNonEmpty!51589 () Bool)

(declare-fun setElem!51589 () Context!13996)

(declare-fun e!4281842 () Bool)

(assert (=> setNonEmpty!51589 (= setRes!51589 (and tp!1962537 (inv!88039 setElem!51589) e!4281842))))

(declare-fun setRest!51588 () (Set Context!13996))

(assert (=> setNonEmpty!51589 (= z1!552 (set.union (set.insert setElem!51589 (as set.empty (Set Context!13996))) setRest!51588))))

(declare-fun b!7125221 () Bool)

(declare-fun tp_is_empty!45609 () Bool)

(declare-fun tp!1962540 () Bool)

(assert (=> b!7125221 (= e!4281840 (and tp_is_empty!45609 tp!1962540))))

(declare-fun b!7125222 () Bool)

(declare-fun tp!1962535 () Bool)

(assert (=> b!7125222 (= e!4281836 (and tp_is_empty!45609 tp!1962535))))

(declare-fun b!7125223 () Bool)

(declare-fun res!2907305 () Bool)

(assert (=> b!7125223 (=> (not res!2907305) (not e!4281838))))

(declare-fun s2!1620 () List!69060)

(assert (=> b!7125223 (= res!2907305 (matchZipper!3260 z2!471 s2!1620))))

(declare-fun setIsEmpty!51588 () Bool)

(assert (=> setIsEmpty!51588 setRes!51588))

(declare-fun setIsEmpty!51589 () Bool)

(assert (=> setIsEmpty!51589 setRes!51589))

(declare-fun b!7125224 () Bool)

(declare-fun tp!1962539 () Bool)

(assert (=> b!7125224 (= e!4281841 tp!1962539)))

(declare-fun b!7125225 () Bool)

(declare-fun res!2907300 () Bool)

(assert (=> b!7125225 (=> (not res!2907300) (not e!4281838))))

(declare-fun s2Rec!140 () List!69060)

(declare-fun s!7390 () List!69060)

(declare-fun ++!16142 (List!69060 List!69060) List!69060)

(assert (=> b!7125225 (= res!2907300 (= (++!16142 s1Rec!140 s2Rec!140) s!7390))))

(declare-fun b!7125226 () Bool)

(declare-fun res!2907301 () Bool)

(assert (=> b!7125226 (=> (not res!2907301) (not e!4281838))))

(assert (=> b!7125226 (= res!2907301 (matchZipper!3260 z1!552 s1Rec!140))))

(declare-fun b!7125227 () Bool)

(declare-fun tp!1962541 () Bool)

(assert (=> b!7125227 (= e!4281837 (and tp_is_empty!45609 tp!1962541))))

(declare-fun b!7125228 () Bool)

(declare-fun tp!1962538 () Bool)

(assert (=> b!7125228 (= e!4281842 tp!1962538)))

(declare-fun b!7125229 () Bool)

(declare-fun res!2907304 () Bool)

(assert (=> b!7125229 (=> (not res!2907304) (not e!4281838))))

(assert (=> b!7125229 (= res!2907304 (= (++!16142 s1!1688 s2!1620) s!7390))))

(declare-fun b!7125230 () Bool)

(declare-fun tp!1962536 () Bool)

(assert (=> b!7125230 (= e!4281839 (and tp_is_empty!45609 tp!1962536))))

(declare-fun b!7125231 () Bool)

(declare-fun tp!1962542 () Bool)

(assert (=> b!7125231 (= e!4281843 (and tp_is_empty!45609 tp!1962542))))

(declare-fun b!7125232 () Bool)

(assert (=> b!7125232 (= e!4281838 false)))

(declare-fun lt!2563059 () Bool)

(assert (=> b!7125232 (= lt!2563059 (matchZipper!3260 z2!471 s2Rec!140))))

(assert (= (and start!694206 res!2907302) b!7125223))

(assert (= (and b!7125223 res!2907305) b!7125229))

(assert (= (and b!7125229 res!2907304) b!7125220))

(assert (= (and b!7125220 res!2907303) b!7125225))

(assert (= (and b!7125225 res!2907300) b!7125226))

(assert (= (and b!7125226 res!2907301) b!7125232))

(assert (= (and start!694206 (is-Cons!68936 s1Rec!140)) b!7125227))

(assert (= (and start!694206 condSetEmpty!51588) setIsEmpty!51589))

(assert (= (and start!694206 (not condSetEmpty!51588)) setNonEmpty!51589))

(assert (= setNonEmpty!51589 b!7125228))

(assert (= (and start!694206 (is-Cons!68936 s2Rec!140)) b!7125222))

(assert (= (and start!694206 condSetEmpty!51589) setIsEmpty!51588))

(assert (= (and start!694206 (not condSetEmpty!51589)) setNonEmpty!51588))

(assert (= setNonEmpty!51588 b!7125224))

(assert (= (and start!694206 (is-Cons!68936 s2!1620)) b!7125231))

(assert (= (and start!694206 (is-Cons!68936 s1!1688)) b!7125221))

(assert (= (and start!694206 (is-Cons!68936 s!7390)) b!7125230))

(declare-fun m!7842444 () Bool)

(assert (=> b!7125223 m!7842444))

(declare-fun m!7842446 () Bool)

(assert (=> b!7125220 m!7842446))

(declare-fun m!7842448 () Bool)

(assert (=> start!694206 m!7842448))

(declare-fun m!7842450 () Bool)

(assert (=> b!7125232 m!7842450))

(declare-fun m!7842452 () Bool)

(assert (=> b!7125229 m!7842452))

(declare-fun m!7842454 () Bool)

(assert (=> b!7125225 m!7842454))

(declare-fun m!7842456 () Bool)

(assert (=> setNonEmpty!51588 m!7842456))

(declare-fun m!7842458 () Bool)

(assert (=> setNonEmpty!51589 m!7842458))

(declare-fun m!7842460 () Bool)

(assert (=> b!7125226 m!7842460))

(push 1)

(assert (not b!7125220))

(assert (not b!7125228))

(assert (not b!7125224))

(assert (not b!7125221))

(assert (not b!7125227))

(assert (not b!7125229))

(assert (not setNonEmpty!51588))

(assert (not b!7125223))

(assert (not setNonEmpty!51589))

(assert (not b!7125232))

(assert (not b!7125230))

(assert (not b!7125222))

(assert (not b!7125226))

(assert (not b!7125231))

(assert (not start!694206))

(assert tp_is_empty!45609)

(assert (not b!7125225))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

