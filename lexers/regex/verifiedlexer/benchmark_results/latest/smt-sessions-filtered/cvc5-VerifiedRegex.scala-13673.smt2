; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732870 () Bool)

(assert start!732870)

(declare-fun b!7600509 () Bool)

(assert (=> b!7600509 true))

(assert (=> b!7600509 true))

(assert (=> b!7600509 true))

(declare-fun b!7600504 () Bool)

(declare-fun e!4521944 () Bool)

(declare-fun tp!2215801 () Bool)

(declare-fun tp!2215797 () Bool)

(assert (=> b!7600504 (= e!4521944 (and tp!2215801 tp!2215797))))

(declare-fun b!7600505 () Bool)

(declare-fun e!4521948 () Bool)

(declare-fun tp!2215793 () Bool)

(assert (=> b!7600505 (= e!4521948 tp!2215793)))

(declare-fun b!7600506 () Bool)

(declare-fun tp!2215796 () Bool)

(declare-fun tp!2215799 () Bool)

(assert (=> b!7600506 (= e!4521948 (and tp!2215796 tp!2215799))))

(declare-fun b!7600507 () Bool)

(declare-fun tp!2215800 () Bool)

(assert (=> b!7600507 (= e!4521944 tp!2215800)))

(declare-fun b!7600508 () Bool)

(declare-fun e!4521947 () Bool)

(declare-fun tp_is_empty!50635 () Bool)

(declare-fun tp!2215802 () Bool)

(assert (=> b!7600508 (= e!4521947 (and tp_is_empty!50635 tp!2215802))))

(declare-fun res!3043254 () Bool)

(declare-fun e!4521945 () Bool)

(assert (=> b!7600509 (=> (not res!3043254) (not e!4521945))))

(declare-fun lambda!467574 () Int)

(declare-fun Exists!4368 (Int) Bool)

(assert (=> b!7600509 (= res!3043254 (not (Exists!4368 lambda!467574)))))

(declare-fun b!7600510 () Bool)

(assert (=> b!7600510 (= e!4521945 false)))

(declare-datatypes ((C!40606 0))(
  ( (C!40607 (val!30743 Int)) )
))
(declare-datatypes ((List!73023 0))(
  ( (Nil!72899) (Cons!72899 (h!79347 C!40606) (t!387758 List!73023)) )
))
(declare-fun lt!2654315 () List!73023)

(declare-datatypes ((tuple2!68998 0))(
  ( (tuple2!68999 (_1!37802 List!73023) (_2!37802 List!73023)) )
))
(declare-fun cut!34 () tuple2!68998)

(declare-fun ++!17546 (List!73023 List!73023) List!73023)

(assert (=> b!7600510 (= lt!2654315 (++!17546 (_1!37802 cut!34) (_2!37802 cut!34)))))

(declare-fun res!3043253 () Bool)

(assert (=> start!732870 (=> (not res!3043253) (not e!4521945))))

(declare-datatypes ((Regex!20140 0))(
  ( (ElementMatch!20140 (c!1402229 C!40606)) (Concat!28985 (regOne!40792 Regex!20140) (regTwo!40792 Regex!20140)) (EmptyExpr!20140) (Star!20140 (reg!20469 Regex!20140)) (EmptyLang!20140) (Union!20140 (regOne!40793 Regex!20140) (regTwo!40793 Regex!20140)) )
))
(declare-fun r1!3349 () Regex!20140)

(declare-fun validRegex!10568 (Regex!20140) Bool)

(assert (=> start!732870 (= res!3043253 (validRegex!10568 r1!3349))))

(assert (=> start!732870 e!4521945))

(assert (=> start!732870 e!4521948))

(assert (=> start!732870 e!4521944))

(assert (=> start!732870 e!4521947))

(declare-fun e!4521949 () Bool)

(declare-fun e!4521946 () Bool)

(assert (=> start!732870 (and e!4521949 e!4521946)))

(declare-fun b!7600511 () Bool)

(declare-fun tp!2215798 () Bool)

(assert (=> b!7600511 (= e!4521949 (and tp_is_empty!50635 tp!2215798))))

(declare-fun b!7600512 () Bool)

(declare-fun tp!2215794 () Bool)

(declare-fun tp!2215792 () Bool)

(assert (=> b!7600512 (= e!4521944 (and tp!2215794 tp!2215792))))

(declare-fun b!7600513 () Bool)

(declare-fun res!3043255 () Bool)

(assert (=> b!7600513 (=> (not res!3043255) (not e!4521945))))

(declare-fun r2!3249 () Regex!20140)

(assert (=> b!7600513 (= res!3043255 (validRegex!10568 r2!3249))))

(declare-fun b!7600514 () Bool)

(declare-fun tp!2215791 () Bool)

(declare-fun tp!2215790 () Bool)

(assert (=> b!7600514 (= e!4521948 (and tp!2215791 tp!2215790))))

(declare-fun b!7600515 () Bool)

(assert (=> b!7600515 (= e!4521944 tp_is_empty!50635)))

(declare-fun b!7600516 () Bool)

(declare-fun tp!2215795 () Bool)

(assert (=> b!7600516 (= e!4521946 (and tp_is_empty!50635 tp!2215795))))

(declare-fun b!7600517 () Bool)

(assert (=> b!7600517 (= e!4521948 tp_is_empty!50635)))

(assert (= (and start!732870 res!3043253) b!7600513))

(assert (= (and b!7600513 res!3043255) b!7600509))

(assert (= (and b!7600509 res!3043254) b!7600510))

(assert (= (and start!732870 (is-ElementMatch!20140 r1!3349)) b!7600517))

(assert (= (and start!732870 (is-Concat!28985 r1!3349)) b!7600506))

(assert (= (and start!732870 (is-Star!20140 r1!3349)) b!7600505))

(assert (= (and start!732870 (is-Union!20140 r1!3349)) b!7600514))

(assert (= (and start!732870 (is-ElementMatch!20140 r2!3249)) b!7600515))

(assert (= (and start!732870 (is-Concat!28985 r2!3249)) b!7600504))

(assert (= (and start!732870 (is-Star!20140 r2!3249)) b!7600507))

(assert (= (and start!732870 (is-Union!20140 r2!3249)) b!7600512))

(declare-fun s!10235 () List!73023)

(assert (= (and start!732870 (is-Cons!72899 s!10235)) b!7600508))

(assert (= (and start!732870 (is-Cons!72899 (_1!37802 cut!34))) b!7600511))

(assert (= (and start!732870 (is-Cons!72899 (_2!37802 cut!34))) b!7600516))

(declare-fun m!8145006 () Bool)

(assert (=> b!7600509 m!8145006))

(declare-fun m!8145008 () Bool)

(assert (=> b!7600510 m!8145008))

(declare-fun m!8145010 () Bool)

(assert (=> start!732870 m!8145010))

(declare-fun m!8145012 () Bool)

(assert (=> b!7600513 m!8145012))

(push 1)

(assert (not b!7600505))

(assert (not b!7600516))

(assert (not b!7600512))

(assert (not b!7600506))

(assert (not b!7600507))

(assert tp_is_empty!50635)

(assert (not b!7600511))

(assert (not b!7600508))

(assert (not b!7600504))

(assert (not b!7600514))

(assert (not b!7600513))

(assert (not b!7600509))

(assert (not b!7600510))

(assert (not start!732870))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

