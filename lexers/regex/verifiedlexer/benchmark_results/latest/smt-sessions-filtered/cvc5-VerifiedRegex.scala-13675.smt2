; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732878 () Bool)

(assert start!732878)

(declare-fun b!7600724 () Bool)

(assert (=> b!7600724 true))

(assert (=> b!7600724 true))

(assert (=> b!7600724 true))

(declare-fun b!7600716 () Bool)

(declare-fun e!4522031 () Bool)

(declare-fun tp_is_empty!50643 () Bool)

(assert (=> b!7600716 (= e!4522031 tp_is_empty!50643)))

(declare-fun b!7600717 () Bool)

(declare-fun e!4522028 () Bool)

(declare-fun tp!2215949 () Bool)

(assert (=> b!7600717 (= e!4522028 (and tp_is_empty!50643 tp!2215949))))

(declare-fun b!7600718 () Bool)

(declare-fun tp!2215946 () Bool)

(assert (=> b!7600718 (= e!4522031 tp!2215946)))

(declare-fun b!7600719 () Bool)

(declare-fun e!4522027 () Bool)

(declare-fun tp!2215954 () Bool)

(assert (=> b!7600719 (= e!4522027 (and tp_is_empty!50643 tp!2215954))))

(declare-fun b!7600721 () Bool)

(declare-fun e!4522030 () Bool)

(assert (=> b!7600721 (= e!4522030 false)))

(declare-datatypes ((C!40614 0))(
  ( (C!40615 (val!30747 Int)) )
))
(declare-datatypes ((List!73027 0))(
  ( (Nil!72903) (Cons!72903 (h!79351 C!40614) (t!387762 List!73027)) )
))
(declare-fun lt!2654327 () List!73027)

(declare-datatypes ((tuple2!69006 0))(
  ( (tuple2!69007 (_1!37806 List!73027) (_2!37806 List!73027)) )
))
(declare-fun cut!35 () tuple2!69006)

(declare-fun ++!17550 (List!73027 List!73027) List!73027)

(assert (=> b!7600721 (= lt!2654327 (++!17550 (_1!37806 cut!35) (_2!37806 cut!35)))))

(declare-fun b!7600722 () Bool)

(declare-fun e!4522026 () Bool)

(declare-fun tp!2215948 () Bool)

(assert (=> b!7600722 (= e!4522026 tp!2215948)))

(declare-fun b!7600723 () Bool)

(declare-fun tp!2215952 () Bool)

(declare-fun tp!2215951 () Bool)

(assert (=> b!7600723 (= e!4522031 (and tp!2215952 tp!2215951))))

(declare-fun res!3043318 () Bool)

(assert (=> b!7600724 (=> (not res!3043318) (not e!4522030))))

(declare-fun lambda!467588 () Int)

(declare-fun Exists!4372 (Int) Bool)

(assert (=> b!7600724 (= res!3043318 (not (Exists!4372 lambda!467588)))))

(declare-fun b!7600725 () Bool)

(declare-fun tp!2215955 () Bool)

(declare-fun tp!2215958 () Bool)

(assert (=> b!7600725 (= e!4522026 (and tp!2215955 tp!2215958))))

(declare-fun b!7600726 () Bool)

(declare-fun res!3043317 () Bool)

(assert (=> b!7600726 (=> (not res!3043317) (not e!4522030))))

(assert (=> b!7600726 (= res!3043317 (not (Exists!4372 lambda!467588)))))

(declare-fun b!7600727 () Bool)

(declare-fun tp!2215953 () Bool)

(declare-fun tp!2215947 () Bool)

(assert (=> b!7600727 (= e!4522026 (and tp!2215953 tp!2215947))))

(declare-fun b!7600728 () Bool)

(assert (=> b!7600728 (= e!4522026 tp_is_empty!50643)))

(declare-fun b!7600729 () Bool)

(declare-fun tp!2215956 () Bool)

(declare-fun tp!2215950 () Bool)

(assert (=> b!7600729 (= e!4522031 (and tp!2215956 tp!2215950))))

(declare-fun b!7600730 () Bool)

(declare-fun res!3043319 () Bool)

(assert (=> b!7600730 (=> (not res!3043319) (not e!4522030))))

(declare-datatypes ((Regex!20144 0))(
  ( (ElementMatch!20144 (c!1402233 C!40614)) (Concat!28989 (regOne!40800 Regex!20144) (regTwo!40800 Regex!20144)) (EmptyExpr!20144) (Star!20144 (reg!20473 Regex!20144)) (EmptyLang!20144) (Union!20144 (regOne!40801 Regex!20144) (regTwo!40801 Regex!20144)) )
))
(declare-fun r2!3249 () Regex!20144)

(declare-fun validRegex!10572 (Regex!20144) Bool)

(assert (=> b!7600730 (= res!3043319 (validRegex!10572 r2!3249))))

(declare-fun res!3043320 () Bool)

(assert (=> start!732878 (=> (not res!3043320) (not e!4522030))))

(declare-fun r1!3349 () Regex!20144)

(assert (=> start!732878 (= res!3043320 (validRegex!10572 r1!3349))))

(assert (=> start!732878 e!4522030))

(assert (=> start!732878 e!4522026))

(assert (=> start!732878 e!4522031))

(declare-fun e!4522029 () Bool)

(assert (=> start!732878 e!4522029))

(assert (=> start!732878 (and e!4522027 e!4522028)))

(declare-fun b!7600720 () Bool)

(declare-fun tp!2215957 () Bool)

(assert (=> b!7600720 (= e!4522029 (and tp_is_empty!50643 tp!2215957))))

(assert (= (and start!732878 res!3043320) b!7600730))

(assert (= (and b!7600730 res!3043319) b!7600724))

(assert (= (and b!7600724 res!3043318) b!7600726))

(assert (= (and b!7600726 res!3043317) b!7600721))

(assert (= (and start!732878 (is-ElementMatch!20144 r1!3349)) b!7600728))

(assert (= (and start!732878 (is-Concat!28989 r1!3349)) b!7600727))

(assert (= (and start!732878 (is-Star!20144 r1!3349)) b!7600722))

(assert (= (and start!732878 (is-Union!20144 r1!3349)) b!7600725))

(assert (= (and start!732878 (is-ElementMatch!20144 r2!3249)) b!7600716))

(assert (= (and start!732878 (is-Concat!28989 r2!3249)) b!7600729))

(assert (= (and start!732878 (is-Star!20144 r2!3249)) b!7600718))

(assert (= (and start!732878 (is-Union!20144 r2!3249)) b!7600723))

(declare-fun s!10235 () List!73027)

(assert (= (and start!732878 (is-Cons!72903 s!10235)) b!7600720))

(assert (= (and start!732878 (is-Cons!72903 (_1!37806 cut!35))) b!7600719))

(assert (= (and start!732878 (is-Cons!72903 (_2!37806 cut!35))) b!7600717))

(declare-fun m!8145042 () Bool)

(assert (=> b!7600726 m!8145042))

(declare-fun m!8145044 () Bool)

(assert (=> b!7600730 m!8145044))

(declare-fun m!8145046 () Bool)

(assert (=> b!7600721 m!8145046))

(declare-fun m!8145048 () Bool)

(assert (=> start!732878 m!8145048))

(assert (=> b!7600724 m!8145042))

(push 1)

(assert (not b!7600720))

(assert (not b!7600727))

(assert (not b!7600723))

(assert (not b!7600726))

(assert (not b!7600729))

(assert (not b!7600717))

(assert (not b!7600718))

(assert (not b!7600730))

(assert tp_is_empty!50643)

(assert (not b!7600719))

(assert (not b!7600722))

(assert (not b!7600725))

(assert (not start!732878))

(assert (not b!7600721))

(assert (not b!7600724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

