; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!92200 () Bool)

(assert start!92200)

(declare-fun b!1084376 () Bool)

(assert (=> b!1084376 true))

(declare-fun res!482372 () Bool)

(declare-fun e!685682 () Bool)

(assert (=> start!92200 (=> (not res!482372) (not e!685682))))

(declare-datatypes ((C!6514 0))(
  ( (C!6515 (val!3505 Int)) )
))
(declare-datatypes ((Regex!2972 0))(
  ( (ElementMatch!2972 (c!183033 C!6514)) (Concat!4805 (regOne!6456 Regex!2972) (regTwo!6456 Regex!2972)) (EmptyExpr!2972) (Star!2972 (reg!3301 Regex!2972)) (EmptyLang!2972) (Union!2972 (regOne!6457 Regex!2972) (regTwo!6457 Regex!2972)) )
))
(declare-datatypes ((List!10219 0))(
  ( (Nil!10203) (Cons!10203 (h!15604 Regex!2972) (t!101265 List!10219)) )
))
(declare-datatypes ((Context!904 0))(
  ( (Context!905 (exprs!952 List!10219)) )
))
(declare-fun z!1122 () (Set Context!904))

(declare-datatypes ((List!10220 0))(
  ( (Nil!10204) (Cons!10204 (h!15605 Context!904) (t!101266 List!10220)) )
))
(declare-fun zl!316 () List!10220)

(declare-fun toList!590 ((Set Context!904)) List!10220)

(assert (=> start!92200 (= res!482372 (= (toList!590 z!1122) zl!316))))

(assert (=> start!92200 e!685682))

(declare-fun condSetEmpty!7431 () Bool)

(assert (=> start!92200 (= condSetEmpty!7431 (= z!1122 (as set.empty (Set Context!904))))))

(declare-fun setRes!7431 () Bool)

(assert (=> start!92200 setRes!7431))

(declare-fun e!685683 () Bool)

(assert (=> start!92200 e!685683))

(declare-fun e!685679 () Bool)

(assert (=> start!92200 e!685679))

(declare-fun setIsEmpty!7431 () Bool)

(assert (=> setIsEmpty!7431 setRes!7431))

(declare-fun b!1084372 () Bool)

(declare-fun res!482370 () Bool)

(assert (=> b!1084372 (=> (not res!482370) (not e!685682))))

(declare-datatypes ((List!10221 0))(
  ( (Nil!10205) (Cons!10205 (h!15606 C!6514) (t!101267 List!10221)) )
))
(declare-fun s!2287 () List!10221)

(declare-fun matchZipper!20 ((Set Context!904) List!10221) Bool)

(assert (=> b!1084372 (= res!482370 (matchZipper!20 z!1122 s!2287))))

(declare-fun b!1084373 () Bool)

(declare-fun e!685678 () Bool)

(declare-fun lambda!39412 () Int)

(declare-fun exists!89 ((Set Context!904) Int) Bool)

(assert (=> b!1084373 (= e!685678 (exists!89 z!1122 lambda!39412))))

(declare-fun b!1084374 () Bool)

(declare-fun tp_is_empty!5575 () Bool)

(declare-fun tp!324364 () Bool)

(assert (=> b!1084374 (= e!685679 (and tp_is_empty!5575 tp!324364))))

(declare-fun tp!324363 () Bool)

(declare-fun b!1084375 () Bool)

(declare-fun e!685681 () Bool)

(declare-fun inv!13144 (Context!904) Bool)

(assert (=> b!1084375 (= e!685683 (and (inv!13144 (h!15605 zl!316)) e!685681 tp!324363))))

(assert (=> b!1084376 (= e!685682 (not e!685678))))

(declare-fun res!482371 () Bool)

(assert (=> b!1084376 (=> res!482371 e!685678)))

(assert (=> b!1084376 (= res!482371 (not (exists!89 z!1122 lambda!39412)))))

(declare-fun exists!90 (List!10220 Int) Bool)

(assert (=> b!1084376 (exists!90 zl!316 lambda!39412)))

(declare-datatypes ((Unit!15615 0))(
  ( (Unit!15616) )
))
(declare-fun lt!362660 () Unit!15615)

(declare-fun lemmaZipperMatchesExistsMatchingContext!1 (List!10220 List!10221) Unit!15615)

(assert (=> b!1084376 (= lt!362660 (lemmaZipperMatchesExistsMatchingContext!1 zl!316 s!2287))))

(declare-fun b!1084377 () Bool)

(declare-fun tp!324362 () Bool)

(assert (=> b!1084377 (= e!685681 tp!324362)))

(declare-fun tp!324361 () Bool)

(declare-fun setNonEmpty!7431 () Bool)

(declare-fun e!685680 () Bool)

(declare-fun setElem!7431 () Context!904)

(assert (=> setNonEmpty!7431 (= setRes!7431 (and tp!324361 (inv!13144 setElem!7431) e!685680))))

(declare-fun setRest!7431 () (Set Context!904))

(assert (=> setNonEmpty!7431 (= z!1122 (set.union (set.insert setElem!7431 (as set.empty (Set Context!904))) setRest!7431))))

(declare-fun b!1084378 () Bool)

(declare-fun tp!324365 () Bool)

(assert (=> b!1084378 (= e!685680 tp!324365)))

(assert (= (and start!92200 res!482372) b!1084372))

(assert (= (and b!1084372 res!482370) b!1084376))

(assert (= (and b!1084376 (not res!482371)) b!1084373))

(assert (= (and start!92200 condSetEmpty!7431) setIsEmpty!7431))

(assert (= (and start!92200 (not condSetEmpty!7431)) setNonEmpty!7431))

(assert (= setNonEmpty!7431 b!1084378))

(assert (= b!1084375 b!1084377))

(assert (= (and start!92200 (is-Cons!10204 zl!316)) b!1084375))

(assert (= (and start!92200 (is-Cons!10205 s!2287)) b!1084374))

(declare-fun m!1234077 () Bool)

(assert (=> setNonEmpty!7431 m!1234077))

(declare-fun m!1234079 () Bool)

(assert (=> b!1084376 m!1234079))

(declare-fun m!1234081 () Bool)

(assert (=> b!1084376 m!1234081))

(declare-fun m!1234083 () Bool)

(assert (=> b!1084376 m!1234083))

(declare-fun m!1234085 () Bool)

(assert (=> start!92200 m!1234085))

(declare-fun m!1234087 () Bool)

(assert (=> b!1084372 m!1234087))

(assert (=> b!1084373 m!1234079))

(declare-fun m!1234089 () Bool)

(assert (=> b!1084375 m!1234089))

(push 1)

(assert (not b!1084375))

(assert (not b!1084374))

(assert (not setNonEmpty!7431))

(assert (not b!1084373))

(assert tp_is_empty!5575)

(assert (not b!1084376))

(assert (not start!92200))

(assert (not b!1084378))

(assert (not b!1084377))

(assert (not b!1084372))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

