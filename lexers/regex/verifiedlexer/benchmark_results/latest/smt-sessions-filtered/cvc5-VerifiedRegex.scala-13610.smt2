; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!731210 () Bool)

(assert start!731210)

(declare-fun b!7572086 () Bool)

(declare-fun e!4507785 () Bool)

(declare-fun tp!2206362 () Bool)

(declare-fun tp!2206366 () Bool)

(assert (=> b!7572086 (= e!4507785 (and tp!2206362 tp!2206366))))

(declare-fun b!7572087 () Bool)

(declare-fun e!4507784 () Bool)

(assert (=> b!7572087 (= e!4507784 false)))

(declare-fun b!7572088 () Bool)

(declare-fun tp_is_empty!50383 () Bool)

(assert (=> b!7572088 (= e!4507785 tp_is_empty!50383)))

(declare-fun b!7572089 () Bool)

(declare-fun res!3033244 () Bool)

(assert (=> b!7572089 (=> (not res!3033244) (not e!4507784))))

(declare-datatypes ((C!40354 0))(
  ( (C!40355 (val!30617 Int)) )
))
(declare-datatypes ((Regex!20014 0))(
  ( (ElementMatch!20014 (c!1397029 C!40354)) (Concat!28859 (regOne!40540 Regex!20014) (regTwo!40540 Regex!20014)) (EmptyExpr!20014) (Star!20014 (reg!20343 Regex!20014)) (EmptyLang!20014) (Union!20014 (regOne!40541 Regex!20014) (regTwo!40541 Regex!20014)) )
))
(declare-fun r!22341 () Regex!20014)

(declare-fun lostCause!1790 (Regex!20014) Bool)

(assert (=> b!7572089 (= res!3033244 (lostCause!1790 r!22341))))

(declare-fun b!7572090 () Bool)

(declare-fun e!4507786 () Bool)

(declare-fun tp!2206363 () Bool)

(assert (=> b!7572090 (= e!4507786 (and tp_is_empty!50383 tp!2206363))))

(declare-fun b!7572091 () Bool)

(declare-fun tp!2206364 () Bool)

(assert (=> b!7572091 (= e!4507785 tp!2206364)))

(declare-fun res!3033243 () Bool)

(assert (=> start!731210 (=> (not res!3033243) (not e!4507784))))

(declare-fun validRegex!10442 (Regex!20014) Bool)

(assert (=> start!731210 (= res!3033243 (validRegex!10442 r!22341))))

(assert (=> start!731210 e!4507784))

(assert (=> start!731210 e!4507785))

(assert (=> start!731210 e!4507786))

(declare-fun b!7572092 () Bool)

(declare-fun tp!2206367 () Bool)

(declare-fun tp!2206365 () Bool)

(assert (=> b!7572092 (= e!4507785 (and tp!2206367 tp!2206365))))

(assert (= (and start!731210 res!3033243) b!7572089))

(assert (= (and b!7572089 res!3033244) b!7572087))

(assert (= (and start!731210 (is-ElementMatch!20014 r!22341)) b!7572088))

(assert (= (and start!731210 (is-Concat!28859 r!22341)) b!7572086))

(assert (= (and start!731210 (is-Star!20014 r!22341)) b!7572091))

(assert (= (and start!731210 (is-Union!20014 r!22341)) b!7572092))

(declare-datatypes ((List!72897 0))(
  ( (Nil!72773) (Cons!72773 (h!79221 C!40354) (t!387632 List!72897)) )
))
(declare-fun s!13436 () List!72897)

(assert (= (and start!731210 (is-Cons!72773 s!13436)) b!7572090))

(declare-fun m!8132342 () Bool)

(assert (=> b!7572089 m!8132342))

(declare-fun m!8132344 () Bool)

(assert (=> start!731210 m!8132344))

(push 1)

(assert (not start!731210))

(assert (not b!7572090))

(assert (not b!7572086))

(assert (not b!7572091))

(assert (not b!7572092))

(assert (not b!7572089))

(assert tp_is_empty!50383)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

