; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!719728 () Bool)

(assert start!719728)

(declare-fun b!7375918 () Bool)

(declare-fun res!2975580 () Bool)

(declare-fun e!4415401 () Bool)

(assert (=> b!7375918 (=> (not res!2975580) (not e!4415401))))

(declare-datatypes ((C!38876 0))(
  ( (C!38877 (val!29798 Int)) )
))
(declare-datatypes ((Regex!19301 0))(
  ( (ElementMatch!19301 (c!1370901 C!38876)) (Concat!28146 (regOne!39114 Regex!19301) (regTwo!39114 Regex!19301)) (EmptyExpr!19301) (Star!19301 (reg!19630 Regex!19301)) (EmptyLang!19301) (Union!19301 (regOne!39115 Regex!19301) (regTwo!39115 Regex!19301)) )
))
(declare-fun r1!2370 () Regex!19301)

(declare-fun validRegex!9897 (Regex!19301) Bool)

(assert (=> b!7375918 (= res!2975580 (validRegex!9897 (regTwo!39114 r1!2370)))))

(declare-fun b!7375919 () Bool)

(declare-fun e!4415396 () Bool)

(declare-fun tp!2097404 () Bool)

(declare-fun tp!2097406 () Bool)

(assert (=> b!7375919 (= e!4415396 (and tp!2097404 tp!2097406))))

(declare-fun b!7375920 () Bool)

(declare-fun tp!2097407 () Bool)

(assert (=> b!7375920 (= e!4415396 tp!2097407)))

(declare-fun b!7375921 () Bool)

(declare-fun res!2975583 () Bool)

(assert (=> b!7375921 (=> (not res!2975583) (not e!4415401))))

(declare-fun e!4415403 () Bool)

(assert (=> b!7375921 (= res!2975583 e!4415403)))

(declare-fun res!2975581 () Bool)

(assert (=> b!7375921 (=> res!2975581 e!4415403)))

(get-info :version)

(assert (=> b!7375921 (= res!2975581 (not ((_ is Concat!28146) r1!2370)))))

(declare-fun b!7375922 () Bool)

(declare-fun e!4415398 () Bool)

(declare-fun tp!2097408 () Bool)

(assert (=> b!7375922 (= e!4415398 tp!2097408)))

(declare-fun b!7375923 () Bool)

(declare-fun e!4415400 () Bool)

(declare-fun tp!2097411 () Bool)

(assert (=> b!7375923 (= e!4415400 tp!2097411)))

(declare-fun b!7375924 () Bool)

(declare-fun nullable!8377 (Regex!19301) Bool)

(assert (=> b!7375924 (= e!4415403 (not (nullable!8377 (regOne!39114 r1!2370))))))

(declare-fun b!7375925 () Bool)

(declare-fun tp_is_empty!48847 () Bool)

(assert (=> b!7375925 (= e!4415396 tp_is_empty!48847)))

(declare-fun b!7375926 () Bool)

(declare-fun e!4415404 () Bool)

(assert (=> b!7375926 (= e!4415404 e!4415401)))

(declare-fun res!2975579 () Bool)

(assert (=> b!7375926 (=> (not res!2975579) (not e!4415401))))

(declare-fun c!10362 () C!38876)

(assert (=> b!7375926 (= res!2975579 (and (or (not ((_ is ElementMatch!19301) r1!2370)) (not (= c!10362 (c!1370901 r1!2370)))) (not ((_ is Union!19301) r1!2370))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!71797 0))(
  ( (Nil!71673) (Cons!71673 (h!78121 Regex!19301) (t!386274 List!71797)) )
))
(declare-datatypes ((Context!16482 0))(
  ( (Context!16483 (exprs!8741 List!71797)) )
))
(declare-fun lt!2616237 () (InoxSet Context!16482))

(declare-fun ct1!282 () Context!16482)

(declare-fun ct2!378 () Context!16482)

(declare-fun derivationStepZipperDown!3127 (Regex!19301 Context!16482 C!38876) (InoxSet Context!16482))

(declare-fun ++!17117 (List!71797 List!71797) List!71797)

(assert (=> b!7375926 (= lt!2616237 (derivationStepZipperDown!3127 r1!2370 (Context!16483 (++!17117 (exprs!8741 ct1!282) (exprs!8741 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165551 0))(
  ( (Unit!165552) )
))
(declare-fun lt!2616238 () Unit!165551)

(declare-fun lambda!458287 () Int)

(declare-fun lemmaConcatPreservesForall!1974 (List!71797 List!71797 Int) Unit!165551)

(assert (=> b!7375926 (= lt!2616238 (lemmaConcatPreservesForall!1974 (exprs!8741 ct1!282) (exprs!8741 ct2!378) lambda!458287))))

(declare-fun b!7375927 () Bool)

(declare-fun res!2975577 () Bool)

(assert (=> b!7375927 (=> (not res!2975577) (not e!4415401))))

(assert (=> b!7375927 (= res!2975577 ((_ is Concat!28146) r1!2370))))

(declare-fun res!2975584 () Bool)

(declare-fun e!4415397 () Bool)

(assert (=> start!719728 (=> (not res!2975584) (not e!4415397))))

(assert (=> start!719728 (= res!2975584 (validRegex!9897 r1!2370))))

(assert (=> start!719728 e!4415397))

(assert (=> start!719728 tp_is_empty!48847))

(declare-fun cWitness!61 () Context!16482)

(declare-fun e!4415402 () Bool)

(declare-fun inv!91592 (Context!16482) Bool)

(assert (=> start!719728 (and (inv!91592 cWitness!61) e!4415402)))

(assert (=> start!719728 (and (inv!91592 ct1!282) e!4415398)))

(assert (=> start!719728 e!4415396))

(assert (=> start!719728 (and (inv!91592 ct2!378) e!4415400)))

(declare-fun b!7375928 () Bool)

(declare-fun e!4415399 () Bool)

(assert (=> b!7375928 (= e!4415401 e!4415399)))

(declare-fun res!2975576 () Bool)

(assert (=> b!7375928 (=> (not res!2975576) (not e!4415399))))

(declare-fun lt!2616236 () (InoxSet Context!16482))

(declare-fun lt!2616239 () (InoxSet Context!16482))

(assert (=> b!7375928 (= res!2975576 (= lt!2616236 lt!2616239))))

(declare-fun $colon$colon!3283 (List!71797 Regex!19301) List!71797)

(assert (=> b!7375928 (= lt!2616239 (derivationStepZipperDown!3127 (regOne!39114 r1!2370) (Context!16483 ($colon$colon!3283 (exprs!8741 ct1!282) (regTwo!39114 r1!2370))) c!10362))))

(declare-fun b!7375929 () Bool)

(declare-fun res!2975582 () Bool)

(assert (=> b!7375929 (=> (not res!2975582) (not e!4415399))))

(assert (=> b!7375929 (= res!2975582 (validRegex!9897 (regOne!39114 r1!2370)))))

(declare-fun b!7375930 () Bool)

(declare-fun tp!2097409 () Bool)

(declare-fun tp!2097405 () Bool)

(assert (=> b!7375930 (= e!4415396 (and tp!2097409 tp!2097405))))

(declare-fun b!7375931 () Bool)

(assert (=> b!7375931 (= e!4415399 (not (select lt!2616239 cWitness!61)))))

(declare-fun b!7375932 () Bool)

(assert (=> b!7375932 (= e!4415397 e!4415404)))

(declare-fun res!2975578 () Bool)

(assert (=> b!7375932 (=> (not res!2975578) (not e!4415404))))

(assert (=> b!7375932 (= res!2975578 (select lt!2616236 cWitness!61))))

(assert (=> b!7375932 (= lt!2616236 (derivationStepZipperDown!3127 r1!2370 ct1!282 c!10362))))

(declare-fun b!7375933 () Bool)

(declare-fun tp!2097410 () Bool)

(assert (=> b!7375933 (= e!4415402 tp!2097410)))

(assert (= (and start!719728 res!2975584) b!7375932))

(assert (= (and b!7375932 res!2975578) b!7375926))

(assert (= (and b!7375926 res!2975579) b!7375921))

(assert (= (and b!7375921 (not res!2975581)) b!7375924))

(assert (= (and b!7375921 res!2975583) b!7375927))

(assert (= (and b!7375927 res!2975577) b!7375918))

(assert (= (and b!7375918 res!2975580) b!7375928))

(assert (= (and b!7375928 res!2975576) b!7375929))

(assert (= (and b!7375929 res!2975582) b!7375931))

(assert (= start!719728 b!7375933))

(assert (= start!719728 b!7375922))

(assert (= (and start!719728 ((_ is ElementMatch!19301) r1!2370)) b!7375925))

(assert (= (and start!719728 ((_ is Concat!28146) r1!2370)) b!7375930))

(assert (= (and start!719728 ((_ is Star!19301) r1!2370)) b!7375920))

(assert (= (and start!719728 ((_ is Union!19301) r1!2370)) b!7375919))

(assert (= start!719728 b!7375923))

(declare-fun m!8027776 () Bool)

(assert (=> start!719728 m!8027776))

(declare-fun m!8027778 () Bool)

(assert (=> start!719728 m!8027778))

(declare-fun m!8027780 () Bool)

(assert (=> start!719728 m!8027780))

(declare-fun m!8027782 () Bool)

(assert (=> start!719728 m!8027782))

(declare-fun m!8027784 () Bool)

(assert (=> b!7375932 m!8027784))

(declare-fun m!8027786 () Bool)

(assert (=> b!7375932 m!8027786))

(declare-fun m!8027788 () Bool)

(assert (=> b!7375929 m!8027788))

(declare-fun m!8027790 () Bool)

(assert (=> b!7375918 m!8027790))

(declare-fun m!8027792 () Bool)

(assert (=> b!7375924 m!8027792))

(declare-fun m!8027794 () Bool)

(assert (=> b!7375926 m!8027794))

(declare-fun m!8027796 () Bool)

(assert (=> b!7375926 m!8027796))

(declare-fun m!8027798 () Bool)

(assert (=> b!7375926 m!8027798))

(declare-fun m!8027800 () Bool)

(assert (=> b!7375931 m!8027800))

(declare-fun m!8027802 () Bool)

(assert (=> b!7375928 m!8027802))

(declare-fun m!8027804 () Bool)

(assert (=> b!7375928 m!8027804))

(check-sat (not start!719728) (not b!7375923) (not b!7375924) (not b!7375922) (not b!7375919) (not b!7375932) (not b!7375928) (not b!7375933) (not b!7375920) (not b!7375929) tp_is_empty!48847 (not b!7375930) (not b!7375926) (not b!7375918))
(check-sat)
