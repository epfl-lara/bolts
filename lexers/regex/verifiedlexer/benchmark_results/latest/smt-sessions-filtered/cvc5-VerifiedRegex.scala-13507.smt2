; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!728310 () Bool)

(assert start!728310)

(declare-fun b!7525640 () Bool)

(declare-fun e!4485743 () Bool)

(declare-fun tp!2187004 () Bool)

(assert (=> b!7525640 (= e!4485743 tp!2187004)))

(declare-fun b!7525641 () Bool)

(declare-fun tp!2187002 () Bool)

(declare-fun tp!2187009 () Bool)

(assert (=> b!7525641 (= e!4485743 (and tp!2187002 tp!2187009))))

(declare-fun b!7525642 () Bool)

(declare-fun e!4485740 () Bool)

(declare-fun tp_is_empty!49971 () Bool)

(declare-fun tp!2187005 () Bool)

(assert (=> b!7525642 (= e!4485740 (and tp_is_empty!49971 tp!2187005))))

(declare-fun b!7525643 () Bool)

(declare-fun res!3016152 () Bool)

(declare-fun e!4485744 () Bool)

(assert (=> b!7525643 (=> (not res!3016152) (not e!4485744))))

(declare-datatypes ((C!39942 0))(
  ( (C!39943 (val!30411 Int)) )
))
(declare-datatypes ((List!72691 0))(
  ( (Nil!72567) (Cons!72567 (h!79015 C!39942) (t!387398 List!72691)) )
))
(declare-fun bigger!57 () List!72691)

(declare-fun returnP!57 () List!72691)

(declare-fun size!42304 (List!72691) Int)

(assert (=> b!7525643 (= res!3016152 (>= (size!42304 bigger!57) (size!42304 returnP!57)))))

(declare-fun b!7525644 () Bool)

(declare-fun res!3016149 () Bool)

(assert (=> b!7525644 (=> (not res!3016149) (not e!4485744))))

(declare-fun input!6727 () List!72691)

(declare-fun isPrefix!6014 (List!72691 List!72691) Bool)

(assert (=> b!7525644 (= res!3016149 (isPrefix!6014 bigger!57 input!6727))))

(declare-fun b!7525645 () Bool)

(assert (=> b!7525645 (= e!4485743 tp_is_empty!49971)))

(declare-fun b!7525646 () Bool)

(declare-fun tp!2187007 () Bool)

(declare-fun tp!2187003 () Bool)

(assert (=> b!7525646 (= e!4485743 (and tp!2187007 tp!2187003))))

(declare-fun b!7525647 () Bool)

(assert (=> b!7525647 (= e!4485744 false)))

(declare-fun lt!2638653 () Int)

(assert (=> b!7525647 (= lt!2638653 (size!42304 input!6727))))

(declare-fun lt!2638654 () Int)

(assert (=> b!7525647 (= lt!2638654 (size!42304 Nil!72567))))

(declare-fun b!7525648 () Bool)

(declare-fun e!4485741 () Bool)

(declare-fun tp!2187008 () Bool)

(assert (=> b!7525648 (= e!4485741 (and tp_is_empty!49971 tp!2187008))))

(declare-fun b!7525649 () Bool)

(declare-fun res!3016150 () Bool)

(assert (=> b!7525649 (=> (not res!3016150) (not e!4485744))))

(assert (=> b!7525649 (= res!3016150 (isPrefix!6014 returnP!57 input!6727))))

(declare-fun res!3016151 () Bool)

(assert (=> start!728310 (=> (not res!3016151) (not e!4485744))))

(declare-datatypes ((Regex!19808 0))(
  ( (ElementMatch!19808 (c!1390227 C!39942)) (Concat!28653 (regOne!40128 Regex!19808) (regTwo!40128 Regex!19808)) (EmptyExpr!19808) (Star!19808 (reg!20137 Regex!19808)) (EmptyLang!19808) (Union!19808 (regOne!40129 Regex!19808) (regTwo!40129 Regex!19808)) )
))
(declare-fun baseR!93 () Regex!19808)

(declare-fun validRegex!10236 (Regex!19808) Bool)

(assert (=> start!728310 (= res!3016151 (validRegex!10236 baseR!93))))

(assert (=> start!728310 e!4485744))

(assert (=> start!728310 e!4485743))

(assert (=> start!728310 e!4485740))

(assert (=> start!728310 e!4485741))

(declare-fun e!4485742 () Bool)

(assert (=> start!728310 e!4485742))

(declare-fun b!7525650 () Bool)

(declare-fun tp!2187006 () Bool)

(assert (=> b!7525650 (= e!4485742 (and tp_is_empty!49971 tp!2187006))))

(assert (= (and start!728310 res!3016151) b!7525649))

(assert (= (and b!7525649 res!3016150) b!7525644))

(assert (= (and b!7525644 res!3016149) b!7525643))

(assert (= (and b!7525643 res!3016152) b!7525647))

(assert (= (and start!728310 (is-ElementMatch!19808 baseR!93)) b!7525645))

(assert (= (and start!728310 (is-Concat!28653 baseR!93)) b!7525641))

(assert (= (and start!728310 (is-Star!19808 baseR!93)) b!7525640))

(assert (= (and start!728310 (is-Union!19808 baseR!93)) b!7525646))

(assert (= (and start!728310 (is-Cons!72567 returnP!57)) b!7525642))

(assert (= (and start!728310 (is-Cons!72567 input!6727)) b!7525648))

(assert (= (and start!728310 (is-Cons!72567 bigger!57)) b!7525650))

(declare-fun m!8101366 () Bool)

(assert (=> b!7525643 m!8101366))

(declare-fun m!8101368 () Bool)

(assert (=> b!7525643 m!8101368))

(declare-fun m!8101370 () Bool)

(assert (=> b!7525644 m!8101370))

(declare-fun m!8101372 () Bool)

(assert (=> b!7525647 m!8101372))

(declare-fun m!8101374 () Bool)

(assert (=> b!7525647 m!8101374))

(declare-fun m!8101376 () Bool)

(assert (=> b!7525649 m!8101376))

(declare-fun m!8101378 () Bool)

(assert (=> start!728310 m!8101378))

(push 1)

(assert (not b!7525640))

(assert (not b!7525650))

(assert (not b!7525646))

(assert (not b!7525642))

(assert (not b!7525641))

(assert (not b!7525643))

(assert (not b!7525649))

(assert tp_is_empty!49971)

(assert (not b!7525647))

(assert (not start!728310))

(assert (not b!7525648))

(assert (not b!7525644))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

