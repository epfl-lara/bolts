; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719066 () Bool)

(assert start!719066)

(declare-fun b!7366044 () Bool)

(declare-fun e!4410063 () Bool)

(declare-fun tp!2093473 () Bool)

(declare-fun tp!2093474 () Bool)

(assert (=> b!7366044 (= e!4410063 (and tp!2093473 tp!2093474))))

(declare-fun b!7366045 () Bool)

(declare-fun tp!2093479 () Bool)

(declare-fun tp!2093475 () Bool)

(assert (=> b!7366045 (= e!4410063 (and tp!2093479 tp!2093475))))

(declare-fun b!7366046 () Bool)

(declare-fun e!4410065 () Bool)

(declare-fun tp!2093472 () Bool)

(assert (=> b!7366046 (= e!4410065 tp!2093472)))

(declare-fun b!7366047 () Bool)

(declare-fun e!4410062 () Bool)

(declare-fun tp!2093476 () Bool)

(assert (=> b!7366047 (= e!4410062 tp!2093476)))

(declare-fun res!2972924 () Bool)

(declare-fun e!4410066 () Bool)

(assert (=> start!719066 (=> (not res!2972924) (not e!4410066))))

(declare-datatypes ((C!38790 0))(
  ( (C!38791 (val!29755 Int)) )
))
(declare-datatypes ((Regex!19258 0))(
  ( (ElementMatch!19258 (c!1368854 C!38790)) (Concat!28103 (regOne!39028 Regex!19258) (regTwo!39028 Regex!19258)) (EmptyExpr!19258) (Star!19258 (reg!19587 Regex!19258)) (EmptyLang!19258) (Union!19258 (regOne!39029 Regex!19258) (regTwo!39029 Regex!19258)) )
))
(declare-fun r1!2370 () Regex!19258)

(declare-fun validRegex!9854 (Regex!19258) Bool)

(assert (=> start!719066 (= res!2972924 (validRegex!9854 r1!2370))))

(assert (=> start!719066 e!4410066))

(declare-fun tp_is_empty!48761 () Bool)

(assert (=> start!719066 tp_is_empty!48761))

(declare-datatypes ((List!71754 0))(
  ( (Nil!71630) (Cons!71630 (h!78078 Regex!19258) (t!386203 List!71754)) )
))
(declare-datatypes ((Context!16396 0))(
  ( (Context!16397 (exprs!8698 List!71754)) )
))
(declare-fun cWitness!61 () Context!16396)

(declare-fun e!4410067 () Bool)

(declare-fun inv!91486 (Context!16396) Bool)

(assert (=> start!719066 (and (inv!91486 cWitness!61) e!4410067)))

(declare-fun ct1!282 () Context!16396)

(assert (=> start!719066 (and (inv!91486 ct1!282) e!4410065)))

(assert (=> start!719066 e!4410063))

(declare-fun ct2!378 () Context!16396)

(assert (=> start!719066 (and (inv!91486 ct2!378) e!4410062)))

(declare-fun b!7366048 () Bool)

(declare-fun e!4410059 () Bool)

(assert (=> b!7366048 (= e!4410066 e!4410059)))

(declare-fun res!2972919 () Bool)

(assert (=> b!7366048 (=> (not res!2972919) (not e!4410059))))

(declare-fun lt!2614936 () (Set Context!16396))

(assert (=> b!7366048 (= res!2972919 (set.member cWitness!61 lt!2614936))))

(declare-fun c!10362 () C!38790)

(declare-fun derivationStepZipperDown!3084 (Regex!19258 Context!16396 C!38790) (Set Context!16396))

(assert (=> b!7366048 (= lt!2614936 (derivationStepZipperDown!3084 r1!2370 ct1!282 c!10362))))

(declare-fun b!7366049 () Bool)

(assert (=> b!7366049 (= e!4410063 tp_is_empty!48761)))

(declare-fun b!7366050 () Bool)

(declare-fun e!4410060 () Bool)

(declare-fun e!4410061 () Bool)

(assert (=> b!7366050 (= e!4410060 (not e!4410061))))

(declare-fun res!2972923 () Bool)

(assert (=> b!7366050 (=> res!2972923 e!4410061)))

(declare-fun lt!2614939 () Context!16396)

(declare-fun lt!2614934 () (Set Context!16396))

(assert (=> b!7366050 (= res!2972923 (not (set.member lt!2614939 lt!2614934)))))

(declare-datatypes ((Unit!165465 0))(
  ( (Unit!165466) )
))
(declare-fun lt!2614938 () Unit!165465)

(declare-fun lambda!457774 () Int)

(declare-fun lemmaConcatPreservesForall!1931 (List!71754 List!71754 Int) Unit!165465)

(assert (=> b!7366050 (= lt!2614938 (lemmaConcatPreservesForall!1931 (exprs!8698 cWitness!61) (exprs!8698 ct2!378) lambda!457774))))

(declare-fun lt!2614928 () Context!16396)

(assert (=> b!7366050 (set.member lt!2614939 (derivationStepZipperDown!3084 (regTwo!39029 r1!2370) lt!2614928 c!10362))))

(declare-fun ++!17074 (List!71754 List!71754) List!71754)

(assert (=> b!7366050 (= lt!2614939 (Context!16397 (++!17074 (exprs!8698 cWitness!61) (exprs!8698 ct2!378))))))

(declare-fun lt!2614933 () Unit!165465)

(assert (=> b!7366050 (= lt!2614933 (lemmaConcatPreservesForall!1931 (exprs!8698 ct1!282) (exprs!8698 ct2!378) lambda!457774))))

(declare-fun lt!2614935 () Unit!165465)

(assert (=> b!7366050 (= lt!2614935 (lemmaConcatPreservesForall!1931 (exprs!8698 cWitness!61) (exprs!8698 ct2!378) lambda!457774))))

(declare-fun lt!2614937 () Unit!165465)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!127 (Regex!19258 Context!16396 Context!16396 Context!16396 C!38790) Unit!165465)

(assert (=> b!7366050 (= lt!2614937 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!127 (regTwo!39029 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7366051 () Bool)

(assert (=> b!7366051 (= e!4410061 true)))

(declare-fun lt!2614930 () Unit!165465)

(assert (=> b!7366051 (= lt!2614930 (lemmaConcatPreservesForall!1931 (exprs!8698 ct1!282) (exprs!8698 ct2!378) lambda!457774))))

(declare-fun lt!2614929 () Unit!165465)

(assert (=> b!7366051 (= lt!2614929 (lemmaConcatPreservesForall!1931 (exprs!8698 cWitness!61) (exprs!8698 ct2!378) lambda!457774))))

(declare-fun b!7366052 () Bool)

(declare-fun e!4410064 () Bool)

(assert (=> b!7366052 (= e!4410064 e!4410060)))

(declare-fun res!2972921 () Bool)

(assert (=> b!7366052 (=> (not res!2972921) (not e!4410060))))

(declare-fun lt!2614932 () (Set Context!16396))

(assert (=> b!7366052 (= res!2972921 (= lt!2614936 (set.union lt!2614932 (derivationStepZipperDown!3084 (regTwo!39029 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7366052 (= lt!2614932 (derivationStepZipperDown!3084 (regOne!39029 r1!2370) ct1!282 c!10362))))

(declare-fun b!7366053 () Bool)

(assert (=> b!7366053 (= e!4410059 e!4410064)))

(declare-fun res!2972922 () Bool)

(assert (=> b!7366053 (=> (not res!2972922) (not e!4410064))))

(assert (=> b!7366053 (= res!2972922 (and (or (not (is-ElementMatch!19258 r1!2370)) (not (= c!10362 (c!1368854 r1!2370)))) (is-Union!19258 r1!2370)))))

(assert (=> b!7366053 (= lt!2614934 (derivationStepZipperDown!3084 r1!2370 lt!2614928 c!10362))))

(assert (=> b!7366053 (= lt!2614928 (Context!16397 (++!17074 (exprs!8698 ct1!282) (exprs!8698 ct2!378))))))

(declare-fun lt!2614931 () Unit!165465)

(assert (=> b!7366053 (= lt!2614931 (lemmaConcatPreservesForall!1931 (exprs!8698 ct1!282) (exprs!8698 ct2!378) lambda!457774))))

(declare-fun b!7366054 () Bool)

(declare-fun tp!2093478 () Bool)

(assert (=> b!7366054 (= e!4410067 tp!2093478)))

(declare-fun b!7366055 () Bool)

(declare-fun res!2972920 () Bool)

(assert (=> b!7366055 (=> (not res!2972920) (not e!4410060))))

(assert (=> b!7366055 (= res!2972920 (not (set.member cWitness!61 lt!2614932)))))

(declare-fun b!7366056 () Bool)

(declare-fun tp!2093477 () Bool)

(assert (=> b!7366056 (= e!4410063 tp!2093477)))

(assert (= (and start!719066 res!2972924) b!7366048))

(assert (= (and b!7366048 res!2972919) b!7366053))

(assert (= (and b!7366053 res!2972922) b!7366052))

(assert (= (and b!7366052 res!2972921) b!7366055))

(assert (= (and b!7366055 res!2972920) b!7366050))

(assert (= (and b!7366050 (not res!2972923)) b!7366051))

(assert (= start!719066 b!7366054))

(assert (= start!719066 b!7366046))

(assert (= (and start!719066 (is-ElementMatch!19258 r1!2370)) b!7366049))

(assert (= (and start!719066 (is-Concat!28103 r1!2370)) b!7366045))

(assert (= (and start!719066 (is-Star!19258 r1!2370)) b!7366056))

(assert (= (and start!719066 (is-Union!19258 r1!2370)) b!7366044))

(assert (= start!719066 b!7366047))

(declare-fun m!8021670 () Bool)

(assert (=> b!7366051 m!8021670))

(declare-fun m!8021672 () Bool)

(assert (=> b!7366051 m!8021672))

(declare-fun m!8021674 () Bool)

(assert (=> b!7366052 m!8021674))

(declare-fun m!8021676 () Bool)

(assert (=> b!7366052 m!8021676))

(declare-fun m!8021678 () Bool)

(assert (=> b!7366053 m!8021678))

(declare-fun m!8021680 () Bool)

(assert (=> b!7366053 m!8021680))

(assert (=> b!7366053 m!8021670))

(declare-fun m!8021682 () Bool)

(assert (=> b!7366055 m!8021682))

(declare-fun m!8021684 () Bool)

(assert (=> b!7366050 m!8021684))

(assert (=> b!7366050 m!8021672))

(declare-fun m!8021686 () Bool)

(assert (=> b!7366050 m!8021686))

(assert (=> b!7366050 m!8021672))

(declare-fun m!8021688 () Bool)

(assert (=> b!7366050 m!8021688))

(declare-fun m!8021690 () Bool)

(assert (=> b!7366050 m!8021690))

(declare-fun m!8021692 () Bool)

(assert (=> b!7366050 m!8021692))

(assert (=> b!7366050 m!8021670))

(declare-fun m!8021694 () Bool)

(assert (=> b!7366048 m!8021694))

(declare-fun m!8021696 () Bool)

(assert (=> b!7366048 m!8021696))

(declare-fun m!8021698 () Bool)

(assert (=> start!719066 m!8021698))

(declare-fun m!8021700 () Bool)

(assert (=> start!719066 m!8021700))

(declare-fun m!8021702 () Bool)

(assert (=> start!719066 m!8021702))

(declare-fun m!8021704 () Bool)

(assert (=> start!719066 m!8021704))

(push 1)

(assert (not b!7366050))

(assert (not b!7366045))

(assert (not b!7366052))

(assert (not b!7366056))

(assert (not b!7366046))

(assert (not b!7366047))

(assert (not b!7366054))

(assert (not b!7366044))

(assert (not b!7366053))

(assert (not b!7366051))

(assert tp_is_empty!48761)

(assert (not b!7366048))

(assert (not start!719066))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

