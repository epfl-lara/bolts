; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719906 () Bool)

(assert start!719906)

(declare-fun b!7378584 () Bool)

(declare-fun e!4416871 () Bool)

(declare-fun tp!2098371 () Bool)

(assert (=> b!7378584 (= e!4416871 tp!2098371)))

(declare-fun res!2976346 () Bool)

(declare-fun e!4416867 () Bool)

(assert (=> start!719906 (=> (not res!2976346) (not e!4416867))))

(declare-datatypes ((C!38902 0))(
  ( (C!38903 (val!29811 Int)) )
))
(declare-datatypes ((Regex!19314 0))(
  ( (ElementMatch!19314 (c!1371472 C!38902)) (Concat!28159 (regOne!39140 Regex!19314) (regTwo!39140 Regex!19314)) (EmptyExpr!19314) (Star!19314 (reg!19643 Regex!19314)) (EmptyLang!19314) (Union!19314 (regOne!39141 Regex!19314) (regTwo!39141 Regex!19314)) )
))
(declare-fun r1!2370 () Regex!19314)

(declare-fun validRegex!9910 (Regex!19314) Bool)

(assert (=> start!719906 (= res!2976346 (validRegex!9910 r1!2370))))

(assert (=> start!719906 e!4416867))

(declare-fun tp_is_empty!48873 () Bool)

(assert (=> start!719906 tp_is_empty!48873))

(declare-datatypes ((List!71810 0))(
  ( (Nil!71686) (Cons!71686 (h!78134 Regex!19314) (t!386295 List!71810)) )
))
(declare-datatypes ((Context!16508 0))(
  ( (Context!16509 (exprs!8754 List!71810)) )
))
(declare-fun cWitness!61 () Context!16508)

(declare-fun e!4416866 () Bool)

(declare-fun inv!91626 (Context!16508) Bool)

(assert (=> start!719906 (and (inv!91626 cWitness!61) e!4416866)))

(declare-fun ct1!282 () Context!16508)

(assert (=> start!719906 (and (inv!91626 ct1!282) e!4416871)))

(declare-fun e!4416865 () Bool)

(assert (=> start!719906 e!4416865))

(declare-fun ct2!378 () Context!16508)

(declare-fun e!4416870 () Bool)

(assert (=> start!719906 (and (inv!91626 ct2!378) e!4416870)))

(declare-fun b!7378585 () Bool)

(assert (=> b!7378585 (= e!4416865 tp_is_empty!48873)))

(declare-fun b!7378586 () Bool)

(declare-fun tp!2098373 () Bool)

(declare-fun tp!2098369 () Bool)

(assert (=> b!7378586 (= e!4416865 (and tp!2098373 tp!2098369))))

(declare-fun b!7378587 () Bool)

(declare-fun e!4416869 () Bool)

(assert (=> b!7378587 (= e!4416869 (not (validRegex!9910 (Star!19314 (reg!19643 r1!2370)))))))

(declare-fun b!7378588 () Bool)

(declare-fun tp!2098375 () Bool)

(assert (=> b!7378588 (= e!4416870 tp!2098375)))

(declare-fun b!7378589 () Bool)

(assert (=> b!7378589 (= e!4416867 e!4416869)))

(declare-fun res!2976345 () Bool)

(assert (=> b!7378589 (=> (not res!2976345) (not e!4416869))))

(declare-fun c!10362 () C!38902)

(assert (=> b!7378589 (= res!2976345 (and (or (not (is-ElementMatch!19314 r1!2370)) (not (= c!10362 (c!1371472 r1!2370)))) (not (is-Union!19314 r1!2370))))))

(declare-fun lt!2616720 () (Set Context!16508))

(declare-fun derivationStepZipperDown!3140 (Regex!19314 Context!16508 C!38902) (Set Context!16508))

(declare-fun ++!17130 (List!71810 List!71810) List!71810)

(assert (=> b!7378589 (= lt!2616720 (derivationStepZipperDown!3140 r1!2370 (Context!16509 (++!17130 (exprs!8754 ct1!282) (exprs!8754 ct2!378))) c!10362))))

(declare-fun lambda!458474 () Int)

(declare-datatypes ((Unit!165577 0))(
  ( (Unit!165578) )
))
(declare-fun lt!2616721 () Unit!165577)

(declare-fun lemmaConcatPreservesForall!1987 (List!71810 List!71810 Int) Unit!165577)

(assert (=> b!7378589 (= lt!2616721 (lemmaConcatPreservesForall!1987 (exprs!8754 ct1!282) (exprs!8754 ct2!378) lambda!458474))))

(declare-fun b!7378590 () Bool)

(declare-fun tp!2098374 () Bool)

(assert (=> b!7378590 (= e!4416866 tp!2098374)))

(declare-fun b!7378591 () Bool)

(declare-fun tp!2098368 () Bool)

(declare-fun tp!2098370 () Bool)

(assert (=> b!7378591 (= e!4416865 (and tp!2098368 tp!2098370))))

(declare-fun b!7378592 () Bool)

(declare-fun tp!2098372 () Bool)

(assert (=> b!7378592 (= e!4416865 tp!2098372)))

(declare-fun b!7378593 () Bool)

(declare-fun res!2976344 () Bool)

(assert (=> b!7378593 (=> (not res!2976344) (not e!4416869))))

(declare-fun e!4416868 () Bool)

(assert (=> b!7378593 (= res!2976344 e!4416868)))

(declare-fun res!2976347 () Bool)

(assert (=> b!7378593 (=> res!2976347 e!4416868)))

(assert (=> b!7378593 (= res!2976347 (not (is-Concat!28159 r1!2370)))))

(declare-fun b!7378594 () Bool)

(declare-fun nullable!8388 (Regex!19314) Bool)

(assert (=> b!7378594 (= e!4416868 (not (nullable!8388 (regOne!39140 r1!2370))))))

(declare-fun b!7378595 () Bool)

(declare-fun res!2976343 () Bool)

(assert (=> b!7378595 (=> (not res!2976343) (not e!4416869))))

(assert (=> b!7378595 (= res!2976343 (and (not (is-Concat!28159 r1!2370)) (is-Star!19314 r1!2370)))))

(declare-fun b!7378596 () Bool)

(declare-fun res!2976348 () Bool)

(assert (=> b!7378596 (=> (not res!2976348) (not e!4416867))))

(assert (=> b!7378596 (= res!2976348 (set.member cWitness!61 (derivationStepZipperDown!3140 r1!2370 ct1!282 c!10362)))))

(assert (= (and start!719906 res!2976346) b!7378596))

(assert (= (and b!7378596 res!2976348) b!7378589))

(assert (= (and b!7378589 res!2976345) b!7378593))

(assert (= (and b!7378593 (not res!2976347)) b!7378594))

(assert (= (and b!7378593 res!2976344) b!7378595))

(assert (= (and b!7378595 res!2976343) b!7378587))

(assert (= start!719906 b!7378590))

(assert (= start!719906 b!7378584))

(assert (= (and start!719906 (is-ElementMatch!19314 r1!2370)) b!7378585))

(assert (= (and start!719906 (is-Concat!28159 r1!2370)) b!7378591))

(assert (= (and start!719906 (is-Star!19314 r1!2370)) b!7378592))

(assert (= (and start!719906 (is-Union!19314 r1!2370)) b!7378586))

(assert (= start!719906 b!7378588))

(declare-fun m!8029690 () Bool)

(assert (=> b!7378587 m!8029690))

(declare-fun m!8029692 () Bool)

(assert (=> b!7378596 m!8029692))

(declare-fun m!8029694 () Bool)

(assert (=> b!7378596 m!8029694))

(declare-fun m!8029696 () Bool)

(assert (=> start!719906 m!8029696))

(declare-fun m!8029698 () Bool)

(assert (=> start!719906 m!8029698))

(declare-fun m!8029700 () Bool)

(assert (=> start!719906 m!8029700))

(declare-fun m!8029702 () Bool)

(assert (=> start!719906 m!8029702))

(declare-fun m!8029704 () Bool)

(assert (=> b!7378589 m!8029704))

(declare-fun m!8029706 () Bool)

(assert (=> b!7378589 m!8029706))

(declare-fun m!8029708 () Bool)

(assert (=> b!7378589 m!8029708))

(declare-fun m!8029710 () Bool)

(assert (=> b!7378594 m!8029710))

(push 1)

(assert (not b!7378591))

(assert (not b!7378590))

(assert (not b!7378594))

(assert (not b!7378587))

(assert (not b!7378588))

(assert (not b!7378596))

(assert (not start!719906))

(assert (not b!7378584))

(assert tp_is_empty!48873)

(assert (not b!7378589))

(assert (not b!7378592))

(assert (not b!7378586))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

