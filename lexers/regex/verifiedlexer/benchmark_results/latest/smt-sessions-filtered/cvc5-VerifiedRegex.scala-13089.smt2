; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716342 () Bool)

(assert start!716342)

(declare-fun b!7334078 () Bool)

(declare-fun res!2963678 () Bool)

(declare-fun e!4391704 () Bool)

(assert (=> b!7334078 (=> (not res!2963678) (not e!4391704))))

(declare-datatypes ((C!38406 0))(
  ( (C!38407 (val!29563 Int)) )
))
(declare-datatypes ((Regex!19066 0))(
  ( (ElementMatch!19066 (c!1362028 C!38406)) (Concat!27911 (regOne!38644 Regex!19066) (regTwo!38644 Regex!19066)) (EmptyExpr!19066) (Star!19066 (reg!19395 Regex!19066)) (EmptyLang!19066) (Union!19066 (regOne!38645 Regex!19066) (regTwo!38645 Regex!19066)) )
))
(declare-datatypes ((List!71562 0))(
  ( (Nil!71438) (Cons!71438 (h!77886 Regex!19066) (t!385955 List!71562)) )
))
(declare-datatypes ((Context!16012 0))(
  ( (Context!16013 (exprs!8506 List!71562)) )
))
(declare-fun lt!2608732 () (Set Context!16012))

(declare-fun cWitness!35 () Context!16012)

(declare-fun lt!2608731 () (Set Context!16012))

(assert (=> b!7334078 (= res!2963678 (and (= lt!2608731 lt!2608732) (set.member cWitness!35 lt!2608732)))))

(declare-fun b!7334080 () Bool)

(declare-fun res!2963676 () Bool)

(declare-fun e!4391703 () Bool)

(assert (=> b!7334080 (=> (not res!2963676) (not e!4391703))))

(declare-fun ct1!256 () Context!16012)

(declare-fun isEmpty!40978 (List!71562) Bool)

(assert (=> b!7334080 (= res!2963676 (not (isEmpty!40978 (exprs!8506 ct1!256))))))

(declare-fun b!7334081 () Bool)

(assert (=> b!7334081 (= e!4391703 e!4391704)))

(declare-fun res!2963679 () Bool)

(assert (=> b!7334081 (=> (not res!2963679) (not e!4391704))))

(declare-fun nullable!8167 (Regex!19066) Bool)

(assert (=> b!7334081 (= res!2963679 (not (nullable!8167 (h!77886 (exprs!8506 ct1!256)))))))

(declare-fun c!10305 () C!38406)

(declare-fun derivationStepZipperDown!2893 (Regex!19066 Context!16012 C!38406) (Set Context!16012))

(declare-fun tail!14747 (List!71562) List!71562)

(assert (=> b!7334081 (= lt!2608732 (derivationStepZipperDown!2893 (h!77886 (exprs!8506 ct1!256)) (Context!16013 (tail!14747 (exprs!8506 ct1!256))) c!10305))))

(declare-fun b!7334082 () Bool)

(declare-fun e!4391702 () Bool)

(declare-fun tp!2082032 () Bool)

(assert (=> b!7334082 (= e!4391702 tp!2082032)))

(declare-fun b!7334083 () Bool)

(declare-fun validRegex!9665 (Regex!19066) Bool)

(assert (=> b!7334083 (= e!4391704 (not (validRegex!9665 (h!77886 (exprs!8506 ct1!256)))))))

(declare-fun lt!2608730 () (Set Context!16012))

(declare-fun lt!2608733 () List!71562)

(assert (=> b!7334083 (= lt!2608730 (derivationStepZipperDown!2893 (h!77886 (exprs!8506 ct1!256)) (Context!16013 (tail!14747 lt!2608733)) c!10305))))

(declare-fun b!7334084 () Bool)

(declare-fun e!4391701 () Bool)

(declare-fun tp!2082034 () Bool)

(assert (=> b!7334084 (= e!4391701 tp!2082034)))

(declare-fun b!7334085 () Bool)

(declare-fun e!4391699 () Bool)

(assert (=> b!7334085 (= e!4391699 e!4391703)))

(declare-fun res!2963675 () Bool)

(assert (=> b!7334085 (=> (not res!2963675) (not e!4391703))))

(assert (=> b!7334085 (= res!2963675 (is-Cons!71438 (exprs!8506 ct1!256)))))

(declare-fun ct2!352 () Context!16012)

(declare-fun ++!16888 (List!71562 List!71562) List!71562)

(assert (=> b!7334085 (= lt!2608733 (++!16888 (exprs!8506 ct1!256) (exprs!8506 ct2!352)))))

(declare-datatypes ((Unit!165093 0))(
  ( (Unit!165094) )
))
(declare-fun lt!2608734 () Unit!165093)

(declare-fun lambda!454990 () Int)

(declare-fun lemmaConcatPreservesForall!1745 (List!71562 List!71562 Int) Unit!165093)

(assert (=> b!7334085 (= lt!2608734 (lemmaConcatPreservesForall!1745 (exprs!8506 ct1!256) (exprs!8506 ct2!352) lambda!454990))))

(declare-fun b!7334086 () Bool)

(declare-fun res!2963680 () Bool)

(assert (=> b!7334086 (=> (not res!2963680) (not e!4391704))))

(assert (=> b!7334086 (= res!2963680 (not (isEmpty!40978 lt!2608733)))))

(declare-fun res!2963677 () Bool)

(assert (=> start!716342 (=> (not res!2963677) (not e!4391699))))

(assert (=> start!716342 (= res!2963677 (set.member cWitness!35 lt!2608731))))

(declare-fun derivationStepZipperUp!2746 (Context!16012 C!38406) (Set Context!16012))

(assert (=> start!716342 (= lt!2608731 (derivationStepZipperUp!2746 ct1!256 c!10305))))

(assert (=> start!716342 e!4391699))

(declare-fun tp_is_empty!48377 () Bool)

(assert (=> start!716342 tp_is_empty!48377))

(declare-fun inv!91006 (Context!16012) Bool)

(assert (=> start!716342 (and (inv!91006 cWitness!35) e!4391701)))

(assert (=> start!716342 (and (inv!91006 ct1!256) e!4391702)))

(declare-fun e!4391700 () Bool)

(assert (=> start!716342 (and (inv!91006 ct2!352) e!4391700)))

(declare-fun b!7334079 () Bool)

(declare-fun tp!2082033 () Bool)

(assert (=> b!7334079 (= e!4391700 tp!2082033)))

(assert (= (and start!716342 res!2963677) b!7334085))

(assert (= (and b!7334085 res!2963675) b!7334080))

(assert (= (and b!7334080 res!2963676) b!7334081))

(assert (= (and b!7334081 res!2963679) b!7334078))

(assert (= (and b!7334078 res!2963678) b!7334086))

(assert (= (and b!7334086 res!2963680) b!7334083))

(assert (= start!716342 b!7334084))

(assert (= start!716342 b!7334082))

(assert (= start!716342 b!7334079))

(declare-fun m!8000078 () Bool)

(assert (=> b!7334083 m!8000078))

(declare-fun m!8000080 () Bool)

(assert (=> b!7334083 m!8000080))

(declare-fun m!8000082 () Bool)

(assert (=> b!7334083 m!8000082))

(declare-fun m!8000084 () Bool)

(assert (=> b!7334080 m!8000084))

(declare-fun m!8000086 () Bool)

(assert (=> b!7334081 m!8000086))

(declare-fun m!8000088 () Bool)

(assert (=> b!7334081 m!8000088))

(declare-fun m!8000090 () Bool)

(assert (=> b!7334081 m!8000090))

(declare-fun m!8000092 () Bool)

(assert (=> b!7334085 m!8000092))

(declare-fun m!8000094 () Bool)

(assert (=> b!7334085 m!8000094))

(declare-fun m!8000096 () Bool)

(assert (=> start!716342 m!8000096))

(declare-fun m!8000098 () Bool)

(assert (=> start!716342 m!8000098))

(declare-fun m!8000100 () Bool)

(assert (=> start!716342 m!8000100))

(declare-fun m!8000102 () Bool)

(assert (=> start!716342 m!8000102))

(declare-fun m!8000104 () Bool)

(assert (=> start!716342 m!8000104))

(declare-fun m!8000106 () Bool)

(assert (=> b!7334078 m!8000106))

(declare-fun m!8000108 () Bool)

(assert (=> b!7334086 m!8000108))

(push 1)

(assert tp_is_empty!48377)

(assert (not start!716342))

(assert (not b!7334081))

(assert (not b!7334086))

(assert (not b!7334080))

(assert (not b!7334085))

(assert (not b!7334083))

(assert (not b!7334082))

(assert (not b!7334079))

(assert (not b!7334084))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2277520 () Bool)

(declare-fun e!4391728 () Bool)

(assert (=> d!2277520 e!4391728))

(declare-fun res!2963704 () Bool)

(assert (=> d!2277520 (=> (not res!2963704) (not e!4391728))))

(declare-fun lt!2608752 () List!71562)

(declare-fun content!14993 (List!71562) (Set Regex!19066))

(assert (=> d!2277520 (= res!2963704 (= (content!14993 lt!2608752) (set.union (content!14993 (exprs!8506 ct1!256)) (content!14993 (exprs!8506 ct2!352)))))))

(declare-fun e!4391727 () List!71562)

(assert (=> d!2277520 (= lt!2608752 e!4391727)))

(declare-fun c!1362032 () Bool)

(assert (=> d!2277520 (= c!1362032 (is-Nil!71438 (exprs!8506 ct1!256)))))

(assert (=> d!2277520 (= (++!16888 (exprs!8506 ct1!256) (exprs!8506 ct2!352)) lt!2608752)))

(declare-fun b!7334125 () Bool)

(assert (=> b!7334125 (= e!4391728 (or (not (= (exprs!8506 ct2!352) Nil!71438)) (= lt!2608752 (exprs!8506 ct1!256))))))

(declare-fun b!7334124 () Bool)

(declare-fun res!2963703 () Bool)

(assert (=> b!7334124 (=> (not res!2963703) (not e!4391728))))

(declare-fun size!41972 (List!71562) Int)

(assert (=> b!7334124 (= res!2963703 (= (size!41972 lt!2608752) (+ (size!41972 (exprs!8506 ct1!256)) (size!41972 (exprs!8506 ct2!352)))))))

(declare-fun b!7334123 () Bool)

(assert (=> b!7334123 (= e!4391727 (Cons!71438 (h!77886 (exprs!8506 ct1!256)) (++!16888 (t!385955 (exprs!8506 ct1!256)) (exprs!8506 ct2!352))))))

(declare-fun b!7334122 () Bool)

(assert (=> b!7334122 (= e!4391727 (exprs!8506 ct2!352))))

(assert (= (and d!2277520 c!1362032) b!7334122))

(assert (= (and d!2277520 (not c!1362032)) b!7334123))

(assert (= (and d!2277520 res!2963704) b!7334124))

(assert (= (and b!7334124 res!2963703) b!7334125))

(declare-fun m!8000142 () Bool)

(assert (=> d!2277520 m!8000142))

(declare-fun m!8000144 () Bool)

(assert (=> d!2277520 m!8000144))

(declare-fun m!8000146 () Bool)

(assert (=> d!2277520 m!8000146))

(declare-fun m!8000148 () Bool)

(assert (=> b!7334124 m!8000148))

(declare-fun m!8000150 () Bool)

(assert (=> b!7334124 m!8000150))

(declare-fun m!8000152 () Bool)

(assert (=> b!7334124 m!8000152))

(declare-fun m!8000154 () Bool)

(assert (=> b!7334123 m!8000154))

(assert (=> b!7334085 d!2277520))

(declare-fun d!2277524 () Bool)

(declare-fun forall!17902 (List!71562 Int) Bool)

(assert (=> d!2277524 (forall!17902 (++!16888 (exprs!8506 ct1!256) (exprs!8506 ct2!352)) lambda!454990)))

(declare-fun lt!2608755 () Unit!165093)

(declare-fun choose!57048 (List!71562 List!71562 Int) Unit!165093)

(assert (=> d!2277524 (= lt!2608755 (choose!57048 (exprs!8506 ct1!256) (exprs!8506 ct2!352) lambda!454990))))

(assert (=> d!2277524 (forall!17902 (exprs!8506 ct1!256) lambda!454990)))

(assert (=> d!2277524 (= (lemmaConcatPreservesForall!1745 (exprs!8506 ct1!256) (exprs!8506 ct2!352) lambda!454990) lt!2608755)))

(declare-fun bs!1917776 () Bool)

(assert (= bs!1917776 d!2277524))

(assert (=> bs!1917776 m!8000092))

(assert (=> bs!1917776 m!8000092))

(declare-fun m!8000156 () Bool)

(assert (=> bs!1917776 m!8000156))

(declare-fun m!8000158 () Bool)

(assert (=> bs!1917776 m!8000158))

(declare-fun m!8000160 () Bool)

(assert (=> bs!1917776 m!8000160))

(assert (=> b!7334085 d!2277524))

(declare-fun b!7334154 () Bool)

(declare-fun e!4391749 () Bool)

(assert (=> b!7334154 (= e!4391749 (nullable!8167 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun bm!668495 () Bool)

(declare-fun call!668500 () (Set Context!16012))

(assert (=> bm!668495 (= call!668500 (derivationStepZipperDown!2893 (h!77886 (exprs!8506 ct1!256)) (Context!16013 (t!385955 (exprs!8506 ct1!256))) c!10305))))

(declare-fun b!7334155 () Bool)

(declare-fun e!4391751 () (Set Context!16012))

(declare-fun e!4391750 () (Set Context!16012))

(assert (=> b!7334155 (= e!4391751 e!4391750)))

(declare-fun c!1362042 () Bool)

(assert (=> b!7334155 (= c!1362042 (is-Cons!71438 (exprs!8506 ct1!256)))))

(declare-fun b!7334156 () Bool)

(assert (=> b!7334156 (= e!4391751 (set.union call!668500 (derivationStepZipperUp!2746 (Context!16013 (t!385955 (exprs!8506 ct1!256))) c!10305)))))

(declare-fun b!7334157 () Bool)

(assert (=> b!7334157 (= e!4391750 (as set.empty (Set Context!16012)))))

(declare-fun b!7334158 () Bool)

(assert (=> b!7334158 (= e!4391750 call!668500)))

(declare-fun d!2277526 () Bool)

(declare-fun c!1362041 () Bool)

(assert (=> d!2277526 (= c!1362041 e!4391749)))

(declare-fun res!2963717 () Bool)

(assert (=> d!2277526 (=> (not res!2963717) (not e!4391749))))

(assert (=> d!2277526 (= res!2963717 (is-Cons!71438 (exprs!8506 ct1!256)))))

(assert (=> d!2277526 (= (derivationStepZipperUp!2746 ct1!256 c!10305) e!4391751)))

(assert (= (and d!2277526 res!2963717) b!7334154))

(assert (= (and d!2277526 c!1362041) b!7334156))

(assert (= (and d!2277526 (not c!1362041)) b!7334155))

(assert (= (and b!7334155 c!1362042) b!7334158))

(assert (= (and b!7334155 (not c!1362042)) b!7334157))

(assert (= (or b!7334156 b!7334158) bm!668495))

(assert (=> b!7334154 m!8000086))

(declare-fun m!8000162 () Bool)

(assert (=> bm!668495 m!8000162))

(declare-fun m!8000164 () Bool)

(assert (=> b!7334156 m!8000164))

(assert (=> start!716342 d!2277526))

(declare-fun bs!1917777 () Bool)

(declare-fun d!2277528 () Bool)

(assert (= bs!1917777 (and d!2277528 b!7334085)))

(declare-fun lambda!454996 () Int)

(assert (=> bs!1917777 (= lambda!454996 lambda!454990)))

(assert (=> d!2277528 (= (inv!91006 cWitness!35) (forall!17902 (exprs!8506 cWitness!35) lambda!454996))))

(declare-fun bs!1917778 () Bool)

(assert (= bs!1917778 d!2277528))

(declare-fun m!8000166 () Bool)

(assert (=> bs!1917778 m!8000166))

(assert (=> start!716342 d!2277528))

(declare-fun bs!1917779 () Bool)

(declare-fun d!2277530 () Bool)

(assert (= bs!1917779 (and d!2277530 b!7334085)))

(declare-fun lambda!454997 () Int)

(assert (=> bs!1917779 (= lambda!454997 lambda!454990)))

(declare-fun bs!1917780 () Bool)

(assert (= bs!1917780 (and d!2277530 d!2277528)))

(assert (=> bs!1917780 (= lambda!454997 lambda!454996)))

(assert (=> d!2277530 (= (inv!91006 ct1!256) (forall!17902 (exprs!8506 ct1!256) lambda!454997))))

(declare-fun bs!1917781 () Bool)

(assert (= bs!1917781 d!2277530))

(declare-fun m!8000168 () Bool)

(assert (=> bs!1917781 m!8000168))

(assert (=> start!716342 d!2277530))

(declare-fun bs!1917782 () Bool)

(declare-fun d!2277532 () Bool)

(assert (= bs!1917782 (and d!2277532 b!7334085)))

(declare-fun lambda!454998 () Int)

(assert (=> bs!1917782 (= lambda!454998 lambda!454990)))

(declare-fun bs!1917783 () Bool)

(assert (= bs!1917783 (and d!2277532 d!2277528)))

(assert (=> bs!1917783 (= lambda!454998 lambda!454996)))

(declare-fun bs!1917784 () Bool)

(assert (= bs!1917784 (and d!2277532 d!2277530)))

(assert (=> bs!1917784 (= lambda!454998 lambda!454997)))

(assert (=> d!2277532 (= (inv!91006 ct2!352) (forall!17902 (exprs!8506 ct2!352) lambda!454998))))

(declare-fun bs!1917785 () Bool)

(assert (= bs!1917785 d!2277532))

(declare-fun m!8000170 () Bool)

(assert (=> bs!1917785 m!8000170))

(assert (=> start!716342 d!2277532))

(declare-fun d!2277534 () Bool)

(assert (=> d!2277534 (= (isEmpty!40978 (exprs!8506 ct1!256)) (is-Nil!71438 (exprs!8506 ct1!256)))))

(assert (=> b!7334080 d!2277534))

(declare-fun d!2277536 () Bool)

(assert (=> d!2277536 (= (isEmpty!40978 lt!2608733) (is-Nil!71438 lt!2608733))))

(assert (=> b!7334086 d!2277536))

(declare-fun b!7334186 () Bool)

(declare-fun e!4391778 () Bool)

(declare-fun call!668512 () Bool)

(assert (=> b!7334186 (= e!4391778 call!668512)))

(declare-fun bm!668505 () Bool)

(declare-fun c!1362050 () Bool)

(assert (=> bm!668505 (= call!668512 (validRegex!9665 (ite c!1362050 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))))))

(declare-fun d!2277538 () Bool)

(declare-fun res!2963734 () Bool)

(declare-fun e!4391777 () Bool)

(assert (=> d!2277538 (=> res!2963734 e!4391777)))

(assert (=> d!2277538 (= res!2963734 (is-ElementMatch!19066 (h!77886 (exprs!8506 ct1!256))))))

(assert (=> d!2277538 (= (validRegex!9665 (h!77886 (exprs!8506 ct1!256))) e!4391777)))

(declare-fun b!7334187 () Bool)

(declare-fun e!4391773 () Bool)

(declare-fun call!668511 () Bool)

(assert (=> b!7334187 (= e!4391773 call!668511)))

(declare-fun b!7334188 () Bool)

(declare-fun res!2963733 () Bool)

(assert (=> b!7334188 (=> (not res!2963733) (not e!4391778))))

(declare-fun call!668510 () Bool)

(assert (=> b!7334188 (= res!2963733 call!668510)))

(declare-fun e!4391776 () Bool)

(assert (=> b!7334188 (= e!4391776 e!4391778)))

(declare-fun b!7334189 () Bool)

(declare-fun res!2963736 () Bool)

(declare-fun e!4391775 () Bool)

(assert (=> b!7334189 (=> res!2963736 e!4391775)))

(assert (=> b!7334189 (= res!2963736 (not (is-Concat!27911 (h!77886 (exprs!8506 ct1!256)))))))

(assert (=> b!7334189 (= e!4391776 e!4391775)))

(declare-fun b!7334190 () Bool)

(declare-fun e!4391774 () Bool)

(assert (=> b!7334190 (= e!4391774 e!4391773)))

(declare-fun res!2963735 () Bool)

(assert (=> b!7334190 (= res!2963735 (not (nullable!8167 (reg!19395 (h!77886 (exprs!8506 ct1!256))))))))

(assert (=> b!7334190 (=> (not res!2963735) (not e!4391773))))

(declare-fun bm!668506 () Bool)

(declare-fun c!1362049 () Bool)

(assert (=> bm!668506 (= call!668511 (validRegex!9665 (ite c!1362049 (reg!19395 (h!77886 (exprs!8506 ct1!256))) (ite c!1362050 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (regTwo!38644 (h!77886 (exprs!8506 ct1!256)))))))))

(declare-fun b!7334191 () Bool)

(declare-fun e!4391779 () Bool)

(assert (=> b!7334191 (= e!4391779 call!668510)))

(declare-fun bm!668507 () Bool)

(assert (=> bm!668507 (= call!668510 call!668511)))

(declare-fun b!7334192 () Bool)

(assert (=> b!7334192 (= e!4391774 e!4391776)))

(assert (=> b!7334192 (= c!1362050 (is-Union!19066 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun b!7334193 () Bool)

(assert (=> b!7334193 (= e!4391777 e!4391774)))

(assert (=> b!7334193 (= c!1362049 (is-Star!19066 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun b!7334194 () Bool)

(assert (=> b!7334194 (= e!4391775 e!4391779)))

(declare-fun res!2963737 () Bool)

(assert (=> b!7334194 (=> (not res!2963737) (not e!4391779))))

(assert (=> b!7334194 (= res!2963737 call!668512)))

(assert (= (and d!2277538 (not res!2963734)) b!7334193))

(assert (= (and b!7334193 c!1362049) b!7334190))

(assert (= (and b!7334193 (not c!1362049)) b!7334192))

(assert (= (and b!7334190 res!2963735) b!7334187))

(assert (= (and b!7334192 c!1362050) b!7334188))

(assert (= (and b!7334192 (not c!1362050)) b!7334189))

(assert (= (and b!7334188 res!2963733) b!7334186))

(assert (= (and b!7334189 (not res!2963736)) b!7334194))

(assert (= (and b!7334194 res!2963737) b!7334191))

(assert (= (or b!7334186 b!7334194) bm!668505))

(assert (= (or b!7334188 b!7334191) bm!668507))

(assert (= (or b!7334187 bm!668507) bm!668506))

(declare-fun m!8000178 () Bool)

(assert (=> bm!668505 m!8000178))

(declare-fun m!8000180 () Bool)

(assert (=> b!7334190 m!8000180))

(declare-fun m!8000182 () Bool)

(assert (=> bm!668506 m!8000182))

(assert (=> b!7334083 d!2277538))

(declare-fun b!7334239 () Bool)

(declare-fun e!4391806 () (Set Context!16012))

(declare-fun e!4391805 () (Set Context!16012))

(assert (=> b!7334239 (= e!4391806 e!4391805)))

(declare-fun c!1362073 () Bool)

(assert (=> b!7334239 (= c!1362073 (is-Union!19066 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun call!668534 () List!71562)

(declare-fun bm!668524 () Bool)

(declare-fun call!668533 () (Set Context!16012))

(assert (=> bm!668524 (= call!668533 (derivationStepZipperDown!2893 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256)))) (ite c!1362073 (Context!16013 (tail!14747 lt!2608733)) (Context!16013 call!668534)) c!10305))))

(declare-fun d!2277542 () Bool)

(declare-fun c!1362071 () Bool)

(assert (=> d!2277542 (= c!1362071 (and (is-ElementMatch!19066 (h!77886 (exprs!8506 ct1!256))) (= (c!1362028 (h!77886 (exprs!8506 ct1!256))) c!10305)))))

(assert (=> d!2277542 (= (derivationStepZipperDown!2893 (h!77886 (exprs!8506 ct1!256)) (Context!16013 (tail!14747 lt!2608733)) c!10305) e!4391806)))

(declare-fun bm!668525 () Bool)

(declare-fun call!668530 () (Set Context!16012))

(declare-fun call!668531 () (Set Context!16012))

(assert (=> bm!668525 (= call!668530 call!668531)))

(declare-fun b!7334240 () Bool)

(declare-fun c!1362072 () Bool)

(declare-fun e!4391809 () Bool)

(assert (=> b!7334240 (= c!1362072 e!4391809)))

(declare-fun res!2963742 () Bool)

(assert (=> b!7334240 (=> (not res!2963742) (not e!4391809))))

(assert (=> b!7334240 (= res!2963742 (is-Concat!27911 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun e!4391807 () (Set Context!16012))

(assert (=> b!7334240 (= e!4391805 e!4391807)))

(declare-fun b!7334241 () Bool)

(declare-fun e!4391804 () (Set Context!16012))

(assert (=> b!7334241 (= e!4391804 (as set.empty (Set Context!16012)))))

(declare-fun c!1362075 () Bool)

(declare-fun bm!668526 () Bool)

(declare-fun $colon$colon!3075 (List!71562 Regex!19066) List!71562)

(assert (=> bm!668526 (= call!668534 ($colon$colon!3075 (exprs!8506 (Context!16013 (tail!14747 lt!2608733))) (ite (or c!1362072 c!1362075) (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (h!77886 (exprs!8506 ct1!256)))))))

(declare-fun b!7334242 () Bool)

(assert (=> b!7334242 (= e!4391809 (nullable!8167 (regOne!38644 (h!77886 (exprs!8506 ct1!256)))))))

(declare-fun b!7334243 () Bool)

(assert (=> b!7334243 (= e!4391806 (set.insert (Context!16013 (tail!14747 lt!2608733)) (as set.empty (Set Context!16012))))))

(declare-fun b!7334244 () Bool)

(declare-fun c!1362074 () Bool)

(assert (=> b!7334244 (= c!1362074 (is-Star!19066 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun e!4391808 () (Set Context!16012))

(assert (=> b!7334244 (= e!4391808 e!4391804)))

(declare-fun b!7334245 () Bool)

(assert (=> b!7334245 (= e!4391808 call!668530)))

(declare-fun b!7334246 () Bool)

(assert (=> b!7334246 (= e!4391804 call!668530)))

(declare-fun call!668532 () (Set Context!16012))

(declare-fun bm!668527 () Bool)

(declare-fun call!668529 () List!71562)

(assert (=> bm!668527 (= call!668532 (derivationStepZipperDown!2893 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256)))))) (ite (or c!1362073 c!1362072) (Context!16013 (tail!14747 lt!2608733)) (Context!16013 call!668529)) c!10305))))

(declare-fun b!7334247 () Bool)

(assert (=> b!7334247 (= e!4391807 (set.union call!668533 call!668531))))

(declare-fun b!7334248 () Bool)

(assert (=> b!7334248 (= e!4391807 e!4391808)))

(assert (=> b!7334248 (= c!1362075 (is-Concat!27911 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun bm!668528 () Bool)

(assert (=> bm!668528 (= call!668529 call!668534)))

(declare-fun b!7334249 () Bool)

(assert (=> b!7334249 (= e!4391805 (set.union call!668532 call!668533))))

(declare-fun bm!668529 () Bool)

(assert (=> bm!668529 (= call!668531 call!668532)))

(assert (= (and d!2277542 c!1362071) b!7334243))

(assert (= (and d!2277542 (not c!1362071)) b!7334239))

(assert (= (and b!7334239 c!1362073) b!7334249))

(assert (= (and b!7334239 (not c!1362073)) b!7334240))

(assert (= (and b!7334240 res!2963742) b!7334242))

(assert (= (and b!7334240 c!1362072) b!7334247))

(assert (= (and b!7334240 (not c!1362072)) b!7334248))

(assert (= (and b!7334248 c!1362075) b!7334245))

(assert (= (and b!7334248 (not c!1362075)) b!7334244))

(assert (= (and b!7334244 c!1362074) b!7334246))

(assert (= (and b!7334244 (not c!1362074)) b!7334241))

(assert (= (or b!7334245 b!7334246) bm!668528))

(assert (= (or b!7334245 b!7334246) bm!668525))

(assert (= (or b!7334247 bm!668525) bm!668529))

(assert (= (or b!7334247 bm!668528) bm!668526))

(assert (= (or b!7334249 b!7334247) bm!668524))

(assert (= (or b!7334249 bm!668529) bm!668527))

(declare-fun m!8000184 () Bool)

(assert (=> bm!668526 m!8000184))

(declare-fun m!8000186 () Bool)

(assert (=> bm!668524 m!8000186))

(declare-fun m!8000188 () Bool)

(assert (=> bm!668527 m!8000188))

(declare-fun m!8000190 () Bool)

(assert (=> b!7334242 m!8000190))

(declare-fun m!8000192 () Bool)

(assert (=> b!7334243 m!8000192))

(assert (=> b!7334083 d!2277542))

(declare-fun d!2277544 () Bool)

(assert (=> d!2277544 (= (tail!14747 lt!2608733) (t!385955 lt!2608733))))

(assert (=> b!7334083 d!2277544))

(declare-fun d!2277546 () Bool)

(declare-fun nullableFct!3257 (Regex!19066) Bool)

(assert (=> d!2277546 (= (nullable!8167 (h!77886 (exprs!8506 ct1!256))) (nullableFct!3257 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun bs!1917786 () Bool)

(assert (= bs!1917786 d!2277546))

(declare-fun m!8000194 () Bool)

(assert (=> bs!1917786 m!8000194))

(assert (=> b!7334081 d!2277546))

(declare-fun b!7334250 () Bool)

(declare-fun e!4391812 () (Set Context!16012))

(declare-fun e!4391811 () (Set Context!16012))

(assert (=> b!7334250 (= e!4391812 e!4391811)))

(declare-fun c!1362078 () Bool)

(assert (=> b!7334250 (= c!1362078 (is-Union!19066 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun call!668543 () (Set Context!16012))

(declare-fun bm!668534 () Bool)

(declare-fun call!668544 () List!71562)

(assert (=> bm!668534 (= call!668543 (derivationStepZipperDown!2893 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256)))) (ite c!1362078 (Context!16013 (tail!14747 (exprs!8506 ct1!256))) (Context!16013 call!668544)) c!10305))))

(declare-fun d!2277548 () Bool)

(declare-fun c!1362076 () Bool)

(assert (=> d!2277548 (= c!1362076 (and (is-ElementMatch!19066 (h!77886 (exprs!8506 ct1!256))) (= (c!1362028 (h!77886 (exprs!8506 ct1!256))) c!10305)))))

(assert (=> d!2277548 (= (derivationStepZipperDown!2893 (h!77886 (exprs!8506 ct1!256)) (Context!16013 (tail!14747 (exprs!8506 ct1!256))) c!10305) e!4391812)))

(declare-fun bm!668535 () Bool)

(declare-fun call!668540 () (Set Context!16012))

(declare-fun call!668541 () (Set Context!16012))

(assert (=> bm!668535 (= call!668540 call!668541)))

(declare-fun b!7334251 () Bool)

(declare-fun c!1362077 () Bool)

(declare-fun e!4391815 () Bool)

(assert (=> b!7334251 (= c!1362077 e!4391815)))

(declare-fun res!2963743 () Bool)

(assert (=> b!7334251 (=> (not res!2963743) (not e!4391815))))

(assert (=> b!7334251 (= res!2963743 (is-Concat!27911 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun e!4391813 () (Set Context!16012))

(assert (=> b!7334251 (= e!4391811 e!4391813)))

(declare-fun b!7334252 () Bool)

(declare-fun e!4391810 () (Set Context!16012))

(assert (=> b!7334252 (= e!4391810 (as set.empty (Set Context!16012)))))

(declare-fun bm!668536 () Bool)

(declare-fun c!1362080 () Bool)

(assert (=> bm!668536 (= call!668544 ($colon$colon!3075 (exprs!8506 (Context!16013 (tail!14747 (exprs!8506 ct1!256)))) (ite (or c!1362077 c!1362080) (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (h!77886 (exprs!8506 ct1!256)))))))

(declare-fun b!7334253 () Bool)

(assert (=> b!7334253 (= e!4391815 (nullable!8167 (regOne!38644 (h!77886 (exprs!8506 ct1!256)))))))

(declare-fun b!7334254 () Bool)

(assert (=> b!7334254 (= e!4391812 (set.insert (Context!16013 (tail!14747 (exprs!8506 ct1!256))) (as set.empty (Set Context!16012))))))

(declare-fun b!7334255 () Bool)

(declare-fun c!1362079 () Bool)

(assert (=> b!7334255 (= c!1362079 (is-Star!19066 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun e!4391814 () (Set Context!16012))

(assert (=> b!7334255 (= e!4391814 e!4391810)))

(declare-fun b!7334256 () Bool)

(assert (=> b!7334256 (= e!4391814 call!668540)))

(declare-fun b!7334257 () Bool)

(assert (=> b!7334257 (= e!4391810 call!668540)))

(declare-fun bm!668537 () Bool)

(declare-fun call!668539 () List!71562)

(declare-fun call!668542 () (Set Context!16012))

(assert (=> bm!668537 (= call!668542 (derivationStepZipperDown!2893 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256)))))) (ite (or c!1362078 c!1362077) (Context!16013 (tail!14747 (exprs!8506 ct1!256))) (Context!16013 call!668539)) c!10305))))

(declare-fun b!7334258 () Bool)

(assert (=> b!7334258 (= e!4391813 (set.union call!668543 call!668541))))

(declare-fun b!7334259 () Bool)

(assert (=> b!7334259 (= e!4391813 e!4391814)))

(assert (=> b!7334259 (= c!1362080 (is-Concat!27911 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun bm!668538 () Bool)

(assert (=> bm!668538 (= call!668539 call!668544)))

(declare-fun b!7334260 () Bool)

(assert (=> b!7334260 (= e!4391811 (set.union call!668542 call!668543))))

(declare-fun bm!668539 () Bool)

(assert (=> bm!668539 (= call!668541 call!668542)))

(assert (= (and d!2277548 c!1362076) b!7334254))

(assert (= (and d!2277548 (not c!1362076)) b!7334250))

(assert (= (and b!7334250 c!1362078) b!7334260))

(assert (= (and b!7334250 (not c!1362078)) b!7334251))

(assert (= (and b!7334251 res!2963743) b!7334253))

(assert (= (and b!7334251 c!1362077) b!7334258))

(assert (= (and b!7334251 (not c!1362077)) b!7334259))

(assert (= (and b!7334259 c!1362080) b!7334256))

(assert (= (and b!7334259 (not c!1362080)) b!7334255))

(assert (= (and b!7334255 c!1362079) b!7334257))

(assert (= (and b!7334255 (not c!1362079)) b!7334252))

(assert (= (or b!7334256 b!7334257) bm!668538))

(assert (= (or b!7334256 b!7334257) bm!668535))

(assert (= (or b!7334258 bm!668535) bm!668539))

(assert (= (or b!7334258 bm!668538) bm!668536))

(assert (= (or b!7334260 b!7334258) bm!668534))

(assert (= (or b!7334260 bm!668539) bm!668537))

(declare-fun m!8000196 () Bool)

(assert (=> bm!668536 m!8000196))

(declare-fun m!8000198 () Bool)

(assert (=> bm!668534 m!8000198))

(declare-fun m!8000200 () Bool)

(assert (=> bm!668537 m!8000200))

(assert (=> b!7334253 m!8000190))

(declare-fun m!8000202 () Bool)

(assert (=> b!7334254 m!8000202))

(assert (=> b!7334081 d!2277548))

(declare-fun d!2277550 () Bool)

(assert (=> d!2277550 (= (tail!14747 (exprs!8506 ct1!256)) (t!385955 (exprs!8506 ct1!256)))))

(assert (=> b!7334081 d!2277550))

(declare-fun b!7334265 () Bool)

(declare-fun e!4391818 () Bool)

(declare-fun tp!2082048 () Bool)

(declare-fun tp!2082049 () Bool)

(assert (=> b!7334265 (= e!4391818 (and tp!2082048 tp!2082049))))

(assert (=> b!7334084 (= tp!2082034 e!4391818)))

(assert (= (and b!7334084 (is-Cons!71438 (exprs!8506 cWitness!35))) b!7334265))

(declare-fun b!7334266 () Bool)

(declare-fun e!4391819 () Bool)

(declare-fun tp!2082050 () Bool)

(declare-fun tp!2082051 () Bool)

(assert (=> b!7334266 (= e!4391819 (and tp!2082050 tp!2082051))))

(assert (=> b!7334079 (= tp!2082033 e!4391819)))

(assert (= (and b!7334079 (is-Cons!71438 (exprs!8506 ct2!352))) b!7334266))

(declare-fun b!7334267 () Bool)

(declare-fun e!4391820 () Bool)

(declare-fun tp!2082052 () Bool)

(declare-fun tp!2082053 () Bool)

(assert (=> b!7334267 (= e!4391820 (and tp!2082052 tp!2082053))))

(assert (=> b!7334082 (= tp!2082032 e!4391820)))

(assert (= (and b!7334082 (is-Cons!71438 (exprs!8506 ct1!256))) b!7334267))

(push 1)

(assert (not b!7334253))

(assert (not d!2277546))

(assert tp_is_empty!48377)

(assert (not b!7334124))

(assert (not b!7334242))

(assert (not bm!668526))

(assert (not bm!668495))

(assert (not b!7334123))

(assert (not bm!668524))

(assert (not bm!668527))

(assert (not b!7334190))

(assert (not d!2277532))

(assert (not b!7334267))

(assert (not bm!668506))

(assert (not b!7334266))

(assert (not d!2277528))

(assert (not b!7334154))

(assert (not bm!668536))

(assert (not b!7334156))

(assert (not bm!668505))

(assert (not bm!668537))

(assert (not bm!668534))

(assert (not d!2277530))

(assert (not d!2277520))

(assert (not d!2277524))

(assert (not b!7334265))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2277576 () Bool)

(declare-fun c!1362102 () Bool)

(assert (=> d!2277576 (= c!1362102 (is-Nil!71438 lt!2608752))))

(declare-fun e!4391855 () (Set Regex!19066))

(assert (=> d!2277576 (= (content!14993 lt!2608752) e!4391855)))

(declare-fun b!7334328 () Bool)

(assert (=> b!7334328 (= e!4391855 (as set.empty (Set Regex!19066)))))

(declare-fun b!7334329 () Bool)

(assert (=> b!7334329 (= e!4391855 (set.union (set.insert (h!77886 lt!2608752) (as set.empty (Set Regex!19066))) (content!14993 (t!385955 lt!2608752))))))

(assert (= (and d!2277576 c!1362102) b!7334328))

(assert (= (and d!2277576 (not c!1362102)) b!7334329))

(declare-fun m!8000254 () Bool)

(assert (=> b!7334329 m!8000254))

(declare-fun m!8000256 () Bool)

(assert (=> b!7334329 m!8000256))

(assert (=> d!2277520 d!2277576))

(declare-fun d!2277578 () Bool)

(declare-fun c!1362103 () Bool)

(assert (=> d!2277578 (= c!1362103 (is-Nil!71438 (exprs!8506 ct1!256)))))

(declare-fun e!4391856 () (Set Regex!19066))

(assert (=> d!2277578 (= (content!14993 (exprs!8506 ct1!256)) e!4391856)))

(declare-fun b!7334330 () Bool)

(assert (=> b!7334330 (= e!4391856 (as set.empty (Set Regex!19066)))))

(declare-fun b!7334331 () Bool)

(assert (=> b!7334331 (= e!4391856 (set.union (set.insert (h!77886 (exprs!8506 ct1!256)) (as set.empty (Set Regex!19066))) (content!14993 (t!385955 (exprs!8506 ct1!256)))))))

(assert (= (and d!2277578 c!1362103) b!7334330))

(assert (= (and d!2277578 (not c!1362103)) b!7334331))

(declare-fun m!8000258 () Bool)

(assert (=> b!7334331 m!8000258))

(declare-fun m!8000260 () Bool)

(assert (=> b!7334331 m!8000260))

(assert (=> d!2277520 d!2277578))

(declare-fun d!2277580 () Bool)

(declare-fun c!1362104 () Bool)

(assert (=> d!2277580 (= c!1362104 (is-Nil!71438 (exprs!8506 ct2!352)))))

(declare-fun e!4391857 () (Set Regex!19066))

(assert (=> d!2277580 (= (content!14993 (exprs!8506 ct2!352)) e!4391857)))

(declare-fun b!7334332 () Bool)

(assert (=> b!7334332 (= e!4391857 (as set.empty (Set Regex!19066)))))

(declare-fun b!7334333 () Bool)

(assert (=> b!7334333 (= e!4391857 (set.union (set.insert (h!77886 (exprs!8506 ct2!352)) (as set.empty (Set Regex!19066))) (content!14993 (t!385955 (exprs!8506 ct2!352)))))))

(assert (= (and d!2277580 c!1362104) b!7334332))

(assert (= (and d!2277580 (not c!1362104)) b!7334333))

(declare-fun m!8000262 () Bool)

(assert (=> b!7334333 m!8000262))

(declare-fun m!8000264 () Bool)

(assert (=> b!7334333 m!8000264))

(assert (=> d!2277520 d!2277580))

(declare-fun b!7334334 () Bool)

(declare-fun e!4391860 () (Set Context!16012))

(declare-fun e!4391859 () (Set Context!16012))

(assert (=> b!7334334 (= e!4391860 e!4391859)))

(declare-fun c!1362107 () Bool)

(assert (=> b!7334334 (= c!1362107 (is-Union!19066 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))))))

(declare-fun call!668568 () (Set Context!16012))

(declare-fun call!668569 () List!71562)

(declare-fun bm!668559 () Bool)

(assert (=> bm!668559 (= call!668568 (derivationStepZipperDown!2893 (ite c!1362107 (regTwo!38645 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) (regOne!38644 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256)))))) (ite c!1362107 (ite c!1362073 (Context!16013 (tail!14747 lt!2608733)) (Context!16013 call!668534)) (Context!16013 call!668569)) c!10305))))

(declare-fun c!1362105 () Bool)

(declare-fun d!2277582 () Bool)

(assert (=> d!2277582 (= c!1362105 (and (is-ElementMatch!19066 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) (= (c!1362028 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) c!10305)))))

(assert (=> d!2277582 (= (derivationStepZipperDown!2893 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256)))) (ite c!1362073 (Context!16013 (tail!14747 lt!2608733)) (Context!16013 call!668534)) c!10305) e!4391860)))

(declare-fun bm!668560 () Bool)

(declare-fun call!668565 () (Set Context!16012))

(declare-fun call!668566 () (Set Context!16012))

(assert (=> bm!668560 (= call!668565 call!668566)))

(declare-fun b!7334335 () Bool)

(declare-fun c!1362106 () Bool)

(declare-fun e!4391863 () Bool)

(assert (=> b!7334335 (= c!1362106 e!4391863)))

(declare-fun res!2963755 () Bool)

(assert (=> b!7334335 (=> (not res!2963755) (not e!4391863))))

(assert (=> b!7334335 (= res!2963755 (is-Concat!27911 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))))))

(declare-fun e!4391861 () (Set Context!16012))

(assert (=> b!7334335 (= e!4391859 e!4391861)))

(declare-fun b!7334336 () Bool)

(declare-fun e!4391858 () (Set Context!16012))

(assert (=> b!7334336 (= e!4391858 (as set.empty (Set Context!16012)))))

(declare-fun bm!668561 () Bool)

(declare-fun c!1362109 () Bool)

(assert (=> bm!668561 (= call!668569 ($colon$colon!3075 (exprs!8506 (ite c!1362073 (Context!16013 (tail!14747 lt!2608733)) (Context!16013 call!668534))) (ite (or c!1362106 c!1362109) (regTwo!38644 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256)))))))))

(declare-fun b!7334337 () Bool)

(assert (=> b!7334337 (= e!4391863 (nullable!8167 (regOne!38644 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256)))))))))

(declare-fun b!7334338 () Bool)

(assert (=> b!7334338 (= e!4391860 (set.insert (ite c!1362073 (Context!16013 (tail!14747 lt!2608733)) (Context!16013 call!668534)) (as set.empty (Set Context!16012))))))

(declare-fun b!7334339 () Bool)

(declare-fun c!1362108 () Bool)

(assert (=> b!7334339 (= c!1362108 (is-Star!19066 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))))))

(declare-fun e!4391862 () (Set Context!16012))

(assert (=> b!7334339 (= e!4391862 e!4391858)))

(declare-fun b!7334340 () Bool)

(assert (=> b!7334340 (= e!4391862 call!668565)))

(declare-fun b!7334341 () Bool)

(assert (=> b!7334341 (= e!4391858 call!668565)))

(declare-fun call!668564 () List!71562)

(declare-fun call!668567 () (Set Context!16012))

(declare-fun bm!668562 () Bool)

(assert (=> bm!668562 (= call!668567 (derivationStepZipperDown!2893 (ite c!1362107 (regOne!38645 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) (ite c!1362106 (regTwo!38644 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) (ite c!1362109 (regOne!38644 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) (reg!19395 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256)))))))) (ite (or c!1362107 c!1362106) (ite c!1362073 (Context!16013 (tail!14747 lt!2608733)) (Context!16013 call!668534)) (Context!16013 call!668564)) c!10305))))

(declare-fun b!7334342 () Bool)

(assert (=> b!7334342 (= e!4391861 (set.union call!668568 call!668566))))

(declare-fun b!7334343 () Bool)

(assert (=> b!7334343 (= e!4391861 e!4391862)))

(assert (=> b!7334343 (= c!1362109 (is-Concat!27911 (ite c!1362073 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))))))

(declare-fun bm!668563 () Bool)

(assert (=> bm!668563 (= call!668564 call!668569)))

(declare-fun b!7334344 () Bool)

(assert (=> b!7334344 (= e!4391859 (set.union call!668567 call!668568))))

(declare-fun bm!668564 () Bool)

(assert (=> bm!668564 (= call!668566 call!668567)))

(assert (= (and d!2277582 c!1362105) b!7334338))

(assert (= (and d!2277582 (not c!1362105)) b!7334334))

(assert (= (and b!7334334 c!1362107) b!7334344))

(assert (= (and b!7334334 (not c!1362107)) b!7334335))

(assert (= (and b!7334335 res!2963755) b!7334337))

(assert (= (and b!7334335 c!1362106) b!7334342))

(assert (= (and b!7334335 (not c!1362106)) b!7334343))

(assert (= (and b!7334343 c!1362109) b!7334340))

(assert (= (and b!7334343 (not c!1362109)) b!7334339))

(assert (= (and b!7334339 c!1362108) b!7334341))

(assert (= (and b!7334339 (not c!1362108)) b!7334336))

(assert (= (or b!7334340 b!7334341) bm!668563))

(assert (= (or b!7334340 b!7334341) bm!668560))

(assert (= (or b!7334342 bm!668560) bm!668564))

(assert (= (or b!7334342 bm!668563) bm!668561))

(assert (= (or b!7334344 b!7334342) bm!668559))

(assert (= (or b!7334344 bm!668564) bm!668562))

(declare-fun m!8000266 () Bool)

(assert (=> bm!668561 m!8000266))

(declare-fun m!8000268 () Bool)

(assert (=> bm!668559 m!8000268))

(declare-fun m!8000270 () Bool)

(assert (=> bm!668562 m!8000270))

(declare-fun m!8000272 () Bool)

(assert (=> b!7334337 m!8000272))

(declare-fun m!8000274 () Bool)

(assert (=> b!7334338 m!8000274))

(assert (=> bm!668524 d!2277582))

(declare-fun d!2277584 () Bool)

(assert (=> d!2277584 (= (nullable!8167 (regOne!38644 (h!77886 (exprs!8506 ct1!256)))) (nullableFct!3257 (regOne!38644 (h!77886 (exprs!8506 ct1!256)))))))

(declare-fun bs!1917798 () Bool)

(assert (= bs!1917798 d!2277584))

(declare-fun m!8000276 () Bool)

(assert (=> bs!1917798 m!8000276))

(assert (=> b!7334253 d!2277584))

(declare-fun d!2277586 () Bool)

(assert (=> d!2277586 (= ($colon$colon!3075 (exprs!8506 (Context!16013 (tail!14747 (exprs!8506 ct1!256)))) (ite (or c!1362077 c!1362080) (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (h!77886 (exprs!8506 ct1!256)))) (Cons!71438 (ite (or c!1362077 c!1362080) (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (h!77886 (exprs!8506 ct1!256))) (exprs!8506 (Context!16013 (tail!14747 (exprs!8506 ct1!256))))))))

(assert (=> bm!668536 d!2277586))

(declare-fun bm!668569 () Bool)

(declare-fun call!668575 () Bool)

(declare-fun c!1362112 () Bool)

(assert (=> bm!668569 (= call!668575 (nullable!8167 (ite c!1362112 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))))))

(declare-fun bm!668570 () Bool)

(declare-fun call!668574 () Bool)

(assert (=> bm!668570 (= call!668574 (nullable!8167 (ite c!1362112 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (regTwo!38644 (h!77886 (exprs!8506 ct1!256))))))))

(declare-fun b!7334359 () Bool)

(declare-fun e!4391878 () Bool)

(declare-fun e!4391877 () Bool)

(assert (=> b!7334359 (= e!4391878 e!4391877)))

(declare-fun res!2963767 () Bool)

(assert (=> b!7334359 (= res!2963767 call!668574)))

(assert (=> b!7334359 (=> res!2963767 e!4391877)))

(declare-fun b!7334360 () Bool)

(declare-fun e!4391880 () Bool)

(assert (=> b!7334360 (= e!4391880 e!4391878)))

(assert (=> b!7334360 (= c!1362112 (is-Union!19066 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun b!7334361 () Bool)

(declare-fun e!4391881 () Bool)

(assert (=> b!7334361 (= e!4391881 e!4391880)))

(declare-fun res!2963770 () Bool)

(assert (=> b!7334361 (=> res!2963770 e!4391880)))

(assert (=> b!7334361 (= res!2963770 (is-Star!19066 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun b!7334362 () Bool)

(declare-fun e!4391879 () Bool)

(assert (=> b!7334362 (= e!4391879 e!4391881)))

(declare-fun res!2963766 () Bool)

(assert (=> b!7334362 (=> (not res!2963766) (not e!4391881))))

(assert (=> b!7334362 (= res!2963766 (and (not (is-EmptyLang!19066 (h!77886 (exprs!8506 ct1!256)))) (not (is-ElementMatch!19066 (h!77886 (exprs!8506 ct1!256))))))))

(declare-fun d!2277588 () Bool)

(declare-fun res!2963768 () Bool)

(assert (=> d!2277588 (=> res!2963768 e!4391879)))

(assert (=> d!2277588 (= res!2963768 (is-EmptyExpr!19066 (h!77886 (exprs!8506 ct1!256))))))

(assert (=> d!2277588 (= (nullableFct!3257 (h!77886 (exprs!8506 ct1!256))) e!4391879)))

(declare-fun b!7334363 () Bool)

(declare-fun e!4391876 () Bool)

(assert (=> b!7334363 (= e!4391878 e!4391876)))

(declare-fun res!2963769 () Bool)

(assert (=> b!7334363 (= res!2963769 call!668575)))

(assert (=> b!7334363 (=> (not res!2963769) (not e!4391876))))

(declare-fun b!7334364 () Bool)

(assert (=> b!7334364 (= e!4391876 call!668574)))

(declare-fun b!7334365 () Bool)

(assert (=> b!7334365 (= e!4391877 call!668575)))

(assert (= (and d!2277588 (not res!2963768)) b!7334362))

(assert (= (and b!7334362 res!2963766) b!7334361))

(assert (= (and b!7334361 (not res!2963770)) b!7334360))

(assert (= (and b!7334360 c!1362112) b!7334359))

(assert (= (and b!7334360 (not c!1362112)) b!7334363))

(assert (= (and b!7334359 (not res!2963767)) b!7334365))

(assert (= (and b!7334363 res!2963769) b!7334364))

(assert (= (or b!7334359 b!7334364) bm!668570))

(assert (= (or b!7334365 b!7334363) bm!668569))

(declare-fun m!8000278 () Bool)

(assert (=> bm!668569 m!8000278))

(declare-fun m!8000280 () Bool)

(assert (=> bm!668570 m!8000280))

(assert (=> d!2277546 d!2277588))

(declare-fun d!2277590 () Bool)

(declare-fun e!4391883 () Bool)

(assert (=> d!2277590 e!4391883))

(declare-fun res!2963772 () Bool)

(assert (=> d!2277590 (=> (not res!2963772) (not e!4391883))))

(declare-fun lt!2608762 () List!71562)

(assert (=> d!2277590 (= res!2963772 (= (content!14993 lt!2608762) (set.union (content!14993 (t!385955 (exprs!8506 ct1!256))) (content!14993 (exprs!8506 ct2!352)))))))

(declare-fun e!4391882 () List!71562)

(assert (=> d!2277590 (= lt!2608762 e!4391882)))

(declare-fun c!1362113 () Bool)

(assert (=> d!2277590 (= c!1362113 (is-Nil!71438 (t!385955 (exprs!8506 ct1!256))))))

(assert (=> d!2277590 (= (++!16888 (t!385955 (exprs!8506 ct1!256)) (exprs!8506 ct2!352)) lt!2608762)))

(declare-fun b!7334369 () Bool)

(assert (=> b!7334369 (= e!4391883 (or (not (= (exprs!8506 ct2!352) Nil!71438)) (= lt!2608762 (t!385955 (exprs!8506 ct1!256)))))))

(declare-fun b!7334368 () Bool)

(declare-fun res!2963771 () Bool)

(assert (=> b!7334368 (=> (not res!2963771) (not e!4391883))))

(assert (=> b!7334368 (= res!2963771 (= (size!41972 lt!2608762) (+ (size!41972 (t!385955 (exprs!8506 ct1!256))) (size!41972 (exprs!8506 ct2!352)))))))

(declare-fun b!7334367 () Bool)

(assert (=> b!7334367 (= e!4391882 (Cons!71438 (h!77886 (t!385955 (exprs!8506 ct1!256))) (++!16888 (t!385955 (t!385955 (exprs!8506 ct1!256))) (exprs!8506 ct2!352))))))

(declare-fun b!7334366 () Bool)

(assert (=> b!7334366 (= e!4391882 (exprs!8506 ct2!352))))

(assert (= (and d!2277590 c!1362113) b!7334366))

(assert (= (and d!2277590 (not c!1362113)) b!7334367))

(assert (= (and d!2277590 res!2963772) b!7334368))

(assert (= (and b!7334368 res!2963771) b!7334369))

(declare-fun m!8000282 () Bool)

(assert (=> d!2277590 m!8000282))

(assert (=> d!2277590 m!8000260))

(assert (=> d!2277590 m!8000146))

(declare-fun m!8000284 () Bool)

(assert (=> b!7334368 m!8000284))

(declare-fun m!8000286 () Bool)

(assert (=> b!7334368 m!8000286))

(assert (=> b!7334368 m!8000152))

(declare-fun m!8000288 () Bool)

(assert (=> b!7334367 m!8000288))

(assert (=> b!7334123 d!2277590))

(declare-fun b!7334370 () Bool)

(declare-fun e!4391886 () (Set Context!16012))

(declare-fun e!4391885 () (Set Context!16012))

(assert (=> b!7334370 (= e!4391886 e!4391885)))

(declare-fun c!1362116 () Bool)

(assert (=> b!7334370 (= c!1362116 (is-Union!19066 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))))))

(declare-fun call!668580 () (Set Context!16012))

(declare-fun bm!668571 () Bool)

(declare-fun call!668581 () List!71562)

(assert (=> bm!668571 (= call!668580 (derivationStepZipperDown!2893 (ite c!1362116 (regTwo!38645 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))) (regOne!38644 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256)))))))) (ite c!1362116 (ite (or c!1362073 c!1362072) (Context!16013 (tail!14747 lt!2608733)) (Context!16013 call!668529)) (Context!16013 call!668581)) c!10305))))

(declare-fun d!2277592 () Bool)

(declare-fun c!1362114 () Bool)

(assert (=> d!2277592 (= c!1362114 (and (is-ElementMatch!19066 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))) (= (c!1362028 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))) c!10305)))))

(assert (=> d!2277592 (= (derivationStepZipperDown!2893 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256)))))) (ite (or c!1362073 c!1362072) (Context!16013 (tail!14747 lt!2608733)) (Context!16013 call!668529)) c!10305) e!4391886)))

(declare-fun bm!668572 () Bool)

(declare-fun call!668577 () (Set Context!16012))

(declare-fun call!668578 () (Set Context!16012))

(assert (=> bm!668572 (= call!668577 call!668578)))

(declare-fun b!7334371 () Bool)

(declare-fun c!1362115 () Bool)

(declare-fun e!4391889 () Bool)

(assert (=> b!7334371 (= c!1362115 e!4391889)))

(declare-fun res!2963773 () Bool)

(assert (=> b!7334371 (=> (not res!2963773) (not e!4391889))))

(assert (=> b!7334371 (= res!2963773 (is-Concat!27911 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))))))

(declare-fun e!4391887 () (Set Context!16012))

(assert (=> b!7334371 (= e!4391885 e!4391887)))

(declare-fun b!7334372 () Bool)

(declare-fun e!4391884 () (Set Context!16012))

(assert (=> b!7334372 (= e!4391884 (as set.empty (Set Context!16012)))))

(declare-fun bm!668573 () Bool)

(declare-fun c!1362118 () Bool)

(assert (=> bm!668573 (= call!668581 ($colon$colon!3075 (exprs!8506 (ite (or c!1362073 c!1362072) (Context!16013 (tail!14747 lt!2608733)) (Context!16013 call!668529))) (ite (or c!1362115 c!1362118) (regTwo!38644 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))) (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256)))))))))))

(declare-fun b!7334373 () Bool)

(assert (=> b!7334373 (= e!4391889 (nullable!8167 (regOne!38644 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256)))))))))))

(declare-fun b!7334374 () Bool)

(assert (=> b!7334374 (= e!4391886 (set.insert (ite (or c!1362073 c!1362072) (Context!16013 (tail!14747 lt!2608733)) (Context!16013 call!668529)) (as set.empty (Set Context!16012))))))

(declare-fun c!1362117 () Bool)

(declare-fun b!7334375 () Bool)

(assert (=> b!7334375 (= c!1362117 (is-Star!19066 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))))))

(declare-fun e!4391888 () (Set Context!16012))

(assert (=> b!7334375 (= e!4391888 e!4391884)))

(declare-fun b!7334376 () Bool)

(assert (=> b!7334376 (= e!4391888 call!668577)))

(declare-fun b!7334377 () Bool)

(assert (=> b!7334377 (= e!4391884 call!668577)))

(declare-fun bm!668574 () Bool)

(declare-fun call!668579 () (Set Context!16012))

(declare-fun call!668576 () List!71562)

(assert (=> bm!668574 (= call!668579 (derivationStepZipperDown!2893 (ite c!1362116 (regOne!38645 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))) (ite c!1362115 (regTwo!38644 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))) (ite c!1362118 (regOne!38644 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))) (reg!19395 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256)))))))))) (ite (or c!1362116 c!1362115) (ite (or c!1362073 c!1362072) (Context!16013 (tail!14747 lt!2608733)) (Context!16013 call!668529)) (Context!16013 call!668576)) c!10305))))

(declare-fun b!7334378 () Bool)

(assert (=> b!7334378 (= e!4391887 (set.union call!668580 call!668578))))

(declare-fun b!7334379 () Bool)

(assert (=> b!7334379 (= e!4391887 e!4391888)))

(assert (=> b!7334379 (= c!1362118 (is-Concat!27911 (ite c!1362073 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362072 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362075 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))))))

(declare-fun bm!668575 () Bool)

(assert (=> bm!668575 (= call!668576 call!668581)))

(declare-fun b!7334380 () Bool)

(assert (=> b!7334380 (= e!4391885 (set.union call!668579 call!668580))))

(declare-fun bm!668576 () Bool)

(assert (=> bm!668576 (= call!668578 call!668579)))

(assert (= (and d!2277592 c!1362114) b!7334374))

(assert (= (and d!2277592 (not c!1362114)) b!7334370))

(assert (= (and b!7334370 c!1362116) b!7334380))

(assert (= (and b!7334370 (not c!1362116)) b!7334371))

(assert (= (and b!7334371 res!2963773) b!7334373))

(assert (= (and b!7334371 c!1362115) b!7334378))

(assert (= (and b!7334371 (not c!1362115)) b!7334379))

(assert (= (and b!7334379 c!1362118) b!7334376))

(assert (= (and b!7334379 (not c!1362118)) b!7334375))

(assert (= (and b!7334375 c!1362117) b!7334377))

(assert (= (and b!7334375 (not c!1362117)) b!7334372))

(assert (= (or b!7334376 b!7334377) bm!668575))

(assert (= (or b!7334376 b!7334377) bm!668572))

(assert (= (or b!7334378 bm!668572) bm!668576))

(assert (= (or b!7334378 bm!668575) bm!668573))

(assert (= (or b!7334380 b!7334378) bm!668571))

(assert (= (or b!7334380 bm!668576) bm!668574))

(declare-fun m!8000290 () Bool)

(assert (=> bm!668573 m!8000290))

(declare-fun m!8000292 () Bool)

(assert (=> bm!668571 m!8000292))

(declare-fun m!8000294 () Bool)

(assert (=> bm!668574 m!8000294))

(declare-fun m!8000296 () Bool)

(assert (=> b!7334373 m!8000296))

(declare-fun m!8000298 () Bool)

(assert (=> b!7334374 m!8000298))

(assert (=> bm!668527 d!2277592))

(declare-fun d!2277594 () Bool)

(declare-fun lt!2608765 () Int)

(assert (=> d!2277594 (>= lt!2608765 0)))

(declare-fun e!4391892 () Int)

(assert (=> d!2277594 (= lt!2608765 e!4391892)))

(declare-fun c!1362121 () Bool)

(assert (=> d!2277594 (= c!1362121 (is-Nil!71438 lt!2608752))))

(assert (=> d!2277594 (= (size!41972 lt!2608752) lt!2608765)))

(declare-fun b!7334385 () Bool)

(assert (=> b!7334385 (= e!4391892 0)))

(declare-fun b!7334386 () Bool)

(assert (=> b!7334386 (= e!4391892 (+ 1 (size!41972 (t!385955 lt!2608752))))))

(assert (= (and d!2277594 c!1362121) b!7334385))

(assert (= (and d!2277594 (not c!1362121)) b!7334386))

(declare-fun m!8000300 () Bool)

(assert (=> b!7334386 m!8000300))

(assert (=> b!7334124 d!2277594))

(declare-fun d!2277596 () Bool)

(declare-fun lt!2608766 () Int)

(assert (=> d!2277596 (>= lt!2608766 0)))

(declare-fun e!4391893 () Int)

(assert (=> d!2277596 (= lt!2608766 e!4391893)))

(declare-fun c!1362122 () Bool)

(assert (=> d!2277596 (= c!1362122 (is-Nil!71438 (exprs!8506 ct1!256)))))

(assert (=> d!2277596 (= (size!41972 (exprs!8506 ct1!256)) lt!2608766)))

(declare-fun b!7334387 () Bool)

(assert (=> b!7334387 (= e!4391893 0)))

(declare-fun b!7334388 () Bool)

(assert (=> b!7334388 (= e!4391893 (+ 1 (size!41972 (t!385955 (exprs!8506 ct1!256)))))))

(assert (= (and d!2277596 c!1362122) b!7334387))

(assert (= (and d!2277596 (not c!1362122)) b!7334388))

(assert (=> b!7334388 m!8000286))

(assert (=> b!7334124 d!2277596))

(declare-fun d!2277598 () Bool)

(declare-fun lt!2608767 () Int)

(assert (=> d!2277598 (>= lt!2608767 0)))

(declare-fun e!4391894 () Int)

(assert (=> d!2277598 (= lt!2608767 e!4391894)))

(declare-fun c!1362123 () Bool)

(assert (=> d!2277598 (= c!1362123 (is-Nil!71438 (exprs!8506 ct2!352)))))

(assert (=> d!2277598 (= (size!41972 (exprs!8506 ct2!352)) lt!2608767)))

(declare-fun b!7334389 () Bool)

(assert (=> b!7334389 (= e!4391894 0)))

(declare-fun b!7334390 () Bool)

(assert (=> b!7334390 (= e!4391894 (+ 1 (size!41972 (t!385955 (exprs!8506 ct2!352)))))))

(assert (= (and d!2277598 c!1362123) b!7334389))

(assert (= (and d!2277598 (not c!1362123)) b!7334390))

(declare-fun m!8000302 () Bool)

(assert (=> b!7334390 m!8000302))

(assert (=> b!7334124 d!2277598))

(declare-fun b!7334391 () Bool)

(declare-fun e!4391900 () Bool)

(declare-fun call!668584 () Bool)

(assert (=> b!7334391 (= e!4391900 call!668584)))

(declare-fun bm!668577 () Bool)

(declare-fun c!1362125 () Bool)

(assert (=> bm!668577 (= call!668584 (validRegex!9665 (ite c!1362125 (regTwo!38645 (ite c!1362050 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) (regOne!38644 (ite c!1362050 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))))))))

(declare-fun d!2277600 () Bool)

(declare-fun res!2963775 () Bool)

(declare-fun e!4391899 () Bool)

(assert (=> d!2277600 (=> res!2963775 e!4391899)))

(assert (=> d!2277600 (= res!2963775 (is-ElementMatch!19066 (ite c!1362050 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))))))

(assert (=> d!2277600 (= (validRegex!9665 (ite c!1362050 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) e!4391899)))

(declare-fun b!7334392 () Bool)

(declare-fun e!4391895 () Bool)

(declare-fun call!668583 () Bool)

(assert (=> b!7334392 (= e!4391895 call!668583)))

(declare-fun b!7334393 () Bool)

(declare-fun res!2963774 () Bool)

(assert (=> b!7334393 (=> (not res!2963774) (not e!4391900))))

(declare-fun call!668582 () Bool)

(assert (=> b!7334393 (= res!2963774 call!668582)))

(declare-fun e!4391898 () Bool)

(assert (=> b!7334393 (= e!4391898 e!4391900)))

(declare-fun b!7334394 () Bool)

(declare-fun res!2963777 () Bool)

(declare-fun e!4391897 () Bool)

(assert (=> b!7334394 (=> res!2963777 e!4391897)))

(assert (=> b!7334394 (= res!2963777 (not (is-Concat!27911 (ite c!1362050 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256)))))))))

(assert (=> b!7334394 (= e!4391898 e!4391897)))

(declare-fun b!7334395 () Bool)

(declare-fun e!4391896 () Bool)

(assert (=> b!7334395 (= e!4391896 e!4391895)))

(declare-fun res!2963776 () Bool)

(assert (=> b!7334395 (= res!2963776 (not (nullable!8167 (reg!19395 (ite c!1362050 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))))))))

(assert (=> b!7334395 (=> (not res!2963776) (not e!4391895))))

(declare-fun bm!668578 () Bool)

(declare-fun c!1362124 () Bool)

(assert (=> bm!668578 (= call!668583 (validRegex!9665 (ite c!1362124 (reg!19395 (ite c!1362050 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) (ite c!1362125 (regOne!38645 (ite c!1362050 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) (regTwo!38644 (ite c!1362050 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256)))))))))))

(declare-fun b!7334396 () Bool)

(declare-fun e!4391901 () Bool)

(assert (=> b!7334396 (= e!4391901 call!668582)))

(declare-fun bm!668579 () Bool)

(assert (=> bm!668579 (= call!668582 call!668583)))

(declare-fun b!7334397 () Bool)

(assert (=> b!7334397 (= e!4391896 e!4391898)))

(assert (=> b!7334397 (= c!1362125 (is-Union!19066 (ite c!1362050 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))))))

(declare-fun b!7334398 () Bool)

(assert (=> b!7334398 (= e!4391899 e!4391896)))

(assert (=> b!7334398 (= c!1362124 (is-Star!19066 (ite c!1362050 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))))))

(declare-fun b!7334399 () Bool)

(assert (=> b!7334399 (= e!4391897 e!4391901)))

(declare-fun res!2963778 () Bool)

(assert (=> b!7334399 (=> (not res!2963778) (not e!4391901))))

(assert (=> b!7334399 (= res!2963778 call!668584)))

(assert (= (and d!2277600 (not res!2963775)) b!7334398))

(assert (= (and b!7334398 c!1362124) b!7334395))

(assert (= (and b!7334398 (not c!1362124)) b!7334397))

(assert (= (and b!7334395 res!2963776) b!7334392))

(assert (= (and b!7334397 c!1362125) b!7334393))

(assert (= (and b!7334397 (not c!1362125)) b!7334394))

(assert (= (and b!7334393 res!2963774) b!7334391))

(assert (= (and b!7334394 (not res!2963777)) b!7334399))

(assert (= (and b!7334399 res!2963778) b!7334396))

(assert (= (or b!7334391 b!7334399) bm!668577))

(assert (= (or b!7334393 b!7334396) bm!668579))

(assert (= (or b!7334392 bm!668579) bm!668578))

(declare-fun m!8000304 () Bool)

(assert (=> bm!668577 m!8000304))

(declare-fun m!8000306 () Bool)

(assert (=> b!7334395 m!8000306))

(declare-fun m!8000308 () Bool)

(assert (=> bm!668578 m!8000308))

(assert (=> bm!668505 d!2277600))

(declare-fun d!2277602 () Bool)

(declare-fun res!2963783 () Bool)

(declare-fun e!4391906 () Bool)

(assert (=> d!2277602 (=> res!2963783 e!4391906)))

(assert (=> d!2277602 (= res!2963783 (is-Nil!71438 (exprs!8506 ct1!256)))))

(assert (=> d!2277602 (= (forall!17902 (exprs!8506 ct1!256) lambda!454997) e!4391906)))

(declare-fun b!7334404 () Bool)

(declare-fun e!4391907 () Bool)

(assert (=> b!7334404 (= e!4391906 e!4391907)))

(declare-fun res!2963784 () Bool)

(assert (=> b!7334404 (=> (not res!2963784) (not e!4391907))))

(declare-fun dynLambda!29429 (Int Regex!19066) Bool)

(assert (=> b!7334404 (= res!2963784 (dynLambda!29429 lambda!454997 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun b!7334405 () Bool)

(assert (=> b!7334405 (= e!4391907 (forall!17902 (t!385955 (exprs!8506 ct1!256)) lambda!454997))))

(assert (= (and d!2277602 (not res!2963783)) b!7334404))

(assert (= (and b!7334404 res!2963784) b!7334405))

(declare-fun b_lambda!283675 () Bool)

(assert (=> (not b_lambda!283675) (not b!7334404)))

(declare-fun m!8000310 () Bool)

(assert (=> b!7334404 m!8000310))

(declare-fun m!8000312 () Bool)

(assert (=> b!7334405 m!8000312))

(assert (=> d!2277530 d!2277602))

(declare-fun b!7334406 () Bool)

(declare-fun e!4391908 () Bool)

(assert (=> b!7334406 (= e!4391908 (nullable!8167 (h!77886 (exprs!8506 (Context!16013 (t!385955 (exprs!8506 ct1!256)))))))))

(declare-fun bm!668580 () Bool)

(declare-fun call!668585 () (Set Context!16012))

(assert (=> bm!668580 (= call!668585 (derivationStepZipperDown!2893 (h!77886 (exprs!8506 (Context!16013 (t!385955 (exprs!8506 ct1!256))))) (Context!16013 (t!385955 (exprs!8506 (Context!16013 (t!385955 (exprs!8506 ct1!256)))))) c!10305))))

(declare-fun b!7334407 () Bool)

(declare-fun e!4391910 () (Set Context!16012))

(declare-fun e!4391909 () (Set Context!16012))

(assert (=> b!7334407 (= e!4391910 e!4391909)))

(declare-fun c!1362127 () Bool)

(assert (=> b!7334407 (= c!1362127 (is-Cons!71438 (exprs!8506 (Context!16013 (t!385955 (exprs!8506 ct1!256))))))))

(declare-fun b!7334408 () Bool)

(assert (=> b!7334408 (= e!4391910 (set.union call!668585 (derivationStepZipperUp!2746 (Context!16013 (t!385955 (exprs!8506 (Context!16013 (t!385955 (exprs!8506 ct1!256)))))) c!10305)))))

(declare-fun b!7334409 () Bool)

(assert (=> b!7334409 (= e!4391909 (as set.empty (Set Context!16012)))))

(declare-fun b!7334410 () Bool)

(assert (=> b!7334410 (= e!4391909 call!668585)))

(declare-fun d!2277604 () Bool)

(declare-fun c!1362126 () Bool)

(assert (=> d!2277604 (= c!1362126 e!4391908)))

(declare-fun res!2963785 () Bool)

(assert (=> d!2277604 (=> (not res!2963785) (not e!4391908))))

(assert (=> d!2277604 (= res!2963785 (is-Cons!71438 (exprs!8506 (Context!16013 (t!385955 (exprs!8506 ct1!256))))))))

(assert (=> d!2277604 (= (derivationStepZipperUp!2746 (Context!16013 (t!385955 (exprs!8506 ct1!256))) c!10305) e!4391910)))

(assert (= (and d!2277604 res!2963785) b!7334406))

(assert (= (and d!2277604 c!1362126) b!7334408))

(assert (= (and d!2277604 (not c!1362126)) b!7334407))

(assert (= (and b!7334407 c!1362127) b!7334410))

(assert (= (and b!7334407 (not c!1362127)) b!7334409))

(assert (= (or b!7334408 b!7334410) bm!668580))

(declare-fun m!8000314 () Bool)

(assert (=> b!7334406 m!8000314))

(declare-fun m!8000316 () Bool)

(assert (=> bm!668580 m!8000316))

(declare-fun m!8000318 () Bool)

(assert (=> b!7334408 m!8000318))

(assert (=> b!7334156 d!2277604))

(declare-fun b!7334411 () Bool)

(declare-fun e!4391916 () Bool)

(declare-fun call!668588 () Bool)

(assert (=> b!7334411 (= e!4391916 call!668588)))

(declare-fun c!1362129 () Bool)

(declare-fun bm!668581 () Bool)

(assert (=> bm!668581 (= call!668588 (validRegex!9665 (ite c!1362129 (regTwo!38645 (ite c!1362049 (reg!19395 (h!77886 (exprs!8506 ct1!256))) (ite c!1362050 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (regTwo!38644 (h!77886 (exprs!8506 ct1!256)))))) (regOne!38644 (ite c!1362049 (reg!19395 (h!77886 (exprs!8506 ct1!256))) (ite c!1362050 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (regTwo!38644 (h!77886 (exprs!8506 ct1!256)))))))))))

(declare-fun d!2277606 () Bool)

(declare-fun res!2963787 () Bool)

(declare-fun e!4391915 () Bool)

(assert (=> d!2277606 (=> res!2963787 e!4391915)))

(assert (=> d!2277606 (= res!2963787 (is-ElementMatch!19066 (ite c!1362049 (reg!19395 (h!77886 (exprs!8506 ct1!256))) (ite c!1362050 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (regTwo!38644 (h!77886 (exprs!8506 ct1!256)))))))))

(assert (=> d!2277606 (= (validRegex!9665 (ite c!1362049 (reg!19395 (h!77886 (exprs!8506 ct1!256))) (ite c!1362050 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (regTwo!38644 (h!77886 (exprs!8506 ct1!256)))))) e!4391915)))

(declare-fun b!7334412 () Bool)

(declare-fun e!4391911 () Bool)

(declare-fun call!668587 () Bool)

(assert (=> b!7334412 (= e!4391911 call!668587)))

(declare-fun b!7334413 () Bool)

(declare-fun res!2963786 () Bool)

(assert (=> b!7334413 (=> (not res!2963786) (not e!4391916))))

(declare-fun call!668586 () Bool)

(assert (=> b!7334413 (= res!2963786 call!668586)))

(declare-fun e!4391914 () Bool)

(assert (=> b!7334413 (= e!4391914 e!4391916)))

(declare-fun b!7334414 () Bool)

(declare-fun res!2963789 () Bool)

(declare-fun e!4391913 () Bool)

(assert (=> b!7334414 (=> res!2963789 e!4391913)))

(assert (=> b!7334414 (= res!2963789 (not (is-Concat!27911 (ite c!1362049 (reg!19395 (h!77886 (exprs!8506 ct1!256))) (ite c!1362050 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (regTwo!38644 (h!77886 (exprs!8506 ct1!256))))))))))

(assert (=> b!7334414 (= e!4391914 e!4391913)))

(declare-fun b!7334415 () Bool)

(declare-fun e!4391912 () Bool)

(assert (=> b!7334415 (= e!4391912 e!4391911)))

(declare-fun res!2963788 () Bool)

(assert (=> b!7334415 (= res!2963788 (not (nullable!8167 (reg!19395 (ite c!1362049 (reg!19395 (h!77886 (exprs!8506 ct1!256))) (ite c!1362050 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (regTwo!38644 (h!77886 (exprs!8506 ct1!256)))))))))))

(assert (=> b!7334415 (=> (not res!2963788) (not e!4391911))))

(declare-fun c!1362128 () Bool)

(declare-fun bm!668582 () Bool)

(assert (=> bm!668582 (= call!668587 (validRegex!9665 (ite c!1362128 (reg!19395 (ite c!1362049 (reg!19395 (h!77886 (exprs!8506 ct1!256))) (ite c!1362050 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (regTwo!38644 (h!77886 (exprs!8506 ct1!256)))))) (ite c!1362129 (regOne!38645 (ite c!1362049 (reg!19395 (h!77886 (exprs!8506 ct1!256))) (ite c!1362050 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (regTwo!38644 (h!77886 (exprs!8506 ct1!256)))))) (regTwo!38644 (ite c!1362049 (reg!19395 (h!77886 (exprs!8506 ct1!256))) (ite c!1362050 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (regTwo!38644 (h!77886 (exprs!8506 ct1!256))))))))))))

(declare-fun b!7334416 () Bool)

(declare-fun e!4391917 () Bool)

(assert (=> b!7334416 (= e!4391917 call!668586)))

(declare-fun bm!668583 () Bool)

(assert (=> bm!668583 (= call!668586 call!668587)))

(declare-fun b!7334417 () Bool)

(assert (=> b!7334417 (= e!4391912 e!4391914)))

(assert (=> b!7334417 (= c!1362129 (is-Union!19066 (ite c!1362049 (reg!19395 (h!77886 (exprs!8506 ct1!256))) (ite c!1362050 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (regTwo!38644 (h!77886 (exprs!8506 ct1!256)))))))))

(declare-fun b!7334418 () Bool)

(assert (=> b!7334418 (= e!4391915 e!4391912)))

(assert (=> b!7334418 (= c!1362128 (is-Star!19066 (ite c!1362049 (reg!19395 (h!77886 (exprs!8506 ct1!256))) (ite c!1362050 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (regTwo!38644 (h!77886 (exprs!8506 ct1!256)))))))))

(declare-fun b!7334419 () Bool)

(assert (=> b!7334419 (= e!4391913 e!4391917)))

(declare-fun res!2963790 () Bool)

(assert (=> b!7334419 (=> (not res!2963790) (not e!4391917))))

(assert (=> b!7334419 (= res!2963790 call!668588)))

(assert (= (and d!2277606 (not res!2963787)) b!7334418))

(assert (= (and b!7334418 c!1362128) b!7334415))

(assert (= (and b!7334418 (not c!1362128)) b!7334417))

(assert (= (and b!7334415 res!2963788) b!7334412))

(assert (= (and b!7334417 c!1362129) b!7334413))

(assert (= (and b!7334417 (not c!1362129)) b!7334414))

(assert (= (and b!7334413 res!2963786) b!7334411))

(assert (= (and b!7334414 (not res!2963789)) b!7334419))

(assert (= (and b!7334419 res!2963790) b!7334416))

(assert (= (or b!7334411 b!7334419) bm!668581))

(assert (= (or b!7334413 b!7334416) bm!668583))

(assert (= (or b!7334412 bm!668583) bm!668582))

(declare-fun m!8000320 () Bool)

(assert (=> bm!668581 m!8000320))

(declare-fun m!8000322 () Bool)

(assert (=> b!7334415 m!8000322))

(declare-fun m!8000324 () Bool)

(assert (=> bm!668582 m!8000324))

(assert (=> bm!668506 d!2277606))

(declare-fun b!7334420 () Bool)

(declare-fun e!4391920 () (Set Context!16012))

(declare-fun e!4391919 () (Set Context!16012))

(assert (=> b!7334420 (= e!4391920 e!4391919)))

(declare-fun c!1362132 () Bool)

(assert (=> b!7334420 (= c!1362132 (is-Union!19066 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun call!668593 () (Set Context!16012))

(declare-fun bm!668584 () Bool)

(declare-fun call!668594 () List!71562)

(assert (=> bm!668584 (= call!668593 (derivationStepZipperDown!2893 (ite c!1362132 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256)))) (ite c!1362132 (Context!16013 (t!385955 (exprs!8506 ct1!256))) (Context!16013 call!668594)) c!10305))))

(declare-fun d!2277608 () Bool)

(declare-fun c!1362130 () Bool)

(assert (=> d!2277608 (= c!1362130 (and (is-ElementMatch!19066 (h!77886 (exprs!8506 ct1!256))) (= (c!1362028 (h!77886 (exprs!8506 ct1!256))) c!10305)))))

(assert (=> d!2277608 (= (derivationStepZipperDown!2893 (h!77886 (exprs!8506 ct1!256)) (Context!16013 (t!385955 (exprs!8506 ct1!256))) c!10305) e!4391920)))

(declare-fun bm!668585 () Bool)

(declare-fun call!668590 () (Set Context!16012))

(declare-fun call!668591 () (Set Context!16012))

(assert (=> bm!668585 (= call!668590 call!668591)))

(declare-fun b!7334421 () Bool)

(declare-fun c!1362131 () Bool)

(declare-fun e!4391923 () Bool)

(assert (=> b!7334421 (= c!1362131 e!4391923)))

(declare-fun res!2963791 () Bool)

(assert (=> b!7334421 (=> (not res!2963791) (not e!4391923))))

(assert (=> b!7334421 (= res!2963791 (is-Concat!27911 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun e!4391921 () (Set Context!16012))

(assert (=> b!7334421 (= e!4391919 e!4391921)))

(declare-fun b!7334422 () Bool)

(declare-fun e!4391918 () (Set Context!16012))

(assert (=> b!7334422 (= e!4391918 (as set.empty (Set Context!16012)))))

(declare-fun c!1362134 () Bool)

(declare-fun bm!668586 () Bool)

(assert (=> bm!668586 (= call!668594 ($colon$colon!3075 (exprs!8506 (Context!16013 (t!385955 (exprs!8506 ct1!256)))) (ite (or c!1362131 c!1362134) (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (h!77886 (exprs!8506 ct1!256)))))))

(declare-fun b!7334423 () Bool)

(assert (=> b!7334423 (= e!4391923 (nullable!8167 (regOne!38644 (h!77886 (exprs!8506 ct1!256)))))))

(declare-fun b!7334424 () Bool)

(assert (=> b!7334424 (= e!4391920 (set.insert (Context!16013 (t!385955 (exprs!8506 ct1!256))) (as set.empty (Set Context!16012))))))

(declare-fun b!7334425 () Bool)

(declare-fun c!1362133 () Bool)

(assert (=> b!7334425 (= c!1362133 (is-Star!19066 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun e!4391922 () (Set Context!16012))

(assert (=> b!7334425 (= e!4391922 e!4391918)))

(declare-fun b!7334426 () Bool)

(assert (=> b!7334426 (= e!4391922 call!668590)))

(declare-fun b!7334427 () Bool)

(assert (=> b!7334427 (= e!4391918 call!668590)))

(declare-fun call!668592 () (Set Context!16012))

(declare-fun call!668589 () List!71562)

(declare-fun bm!668587 () Bool)

(assert (=> bm!668587 (= call!668592 (derivationStepZipperDown!2893 (ite c!1362132 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362131 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362134 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256)))))) (ite (or c!1362132 c!1362131) (Context!16013 (t!385955 (exprs!8506 ct1!256))) (Context!16013 call!668589)) c!10305))))

(declare-fun b!7334428 () Bool)

(assert (=> b!7334428 (= e!4391921 (set.union call!668593 call!668591))))

(declare-fun b!7334429 () Bool)

(assert (=> b!7334429 (= e!4391921 e!4391922)))

(assert (=> b!7334429 (= c!1362134 (is-Concat!27911 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun bm!668588 () Bool)

(assert (=> bm!668588 (= call!668589 call!668594)))

(declare-fun b!7334430 () Bool)

(assert (=> b!7334430 (= e!4391919 (set.union call!668592 call!668593))))

(declare-fun bm!668589 () Bool)

(assert (=> bm!668589 (= call!668591 call!668592)))

(assert (= (and d!2277608 c!1362130) b!7334424))

(assert (= (and d!2277608 (not c!1362130)) b!7334420))

(assert (= (and b!7334420 c!1362132) b!7334430))

(assert (= (and b!7334420 (not c!1362132)) b!7334421))

(assert (= (and b!7334421 res!2963791) b!7334423))

(assert (= (and b!7334421 c!1362131) b!7334428))

(assert (= (and b!7334421 (not c!1362131)) b!7334429))

(assert (= (and b!7334429 c!1362134) b!7334426))

(assert (= (and b!7334429 (not c!1362134)) b!7334425))

(assert (= (and b!7334425 c!1362133) b!7334427))

(assert (= (and b!7334425 (not c!1362133)) b!7334422))

(assert (= (or b!7334426 b!7334427) bm!668588))

(assert (= (or b!7334426 b!7334427) bm!668585))

(assert (= (or b!7334428 bm!668585) bm!668589))

(assert (= (or b!7334428 bm!668588) bm!668586))

(assert (= (or b!7334430 b!7334428) bm!668584))

(assert (= (or b!7334430 bm!668589) bm!668587))

(declare-fun m!8000326 () Bool)

(assert (=> bm!668586 m!8000326))

(declare-fun m!8000328 () Bool)

(assert (=> bm!668584 m!8000328))

(declare-fun m!8000330 () Bool)

(assert (=> bm!668587 m!8000330))

(assert (=> b!7334423 m!8000190))

(declare-fun m!8000332 () Bool)

(assert (=> b!7334424 m!8000332))

(assert (=> bm!668495 d!2277608))

(declare-fun b!7334431 () Bool)

(declare-fun e!4391926 () (Set Context!16012))

(declare-fun e!4391925 () (Set Context!16012))

(assert (=> b!7334431 (= e!4391926 e!4391925)))

(declare-fun c!1362137 () Bool)

(assert (=> b!7334431 (= c!1362137 (is-Union!19066 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))))))

(declare-fun call!668599 () (Set Context!16012))

(declare-fun bm!668590 () Bool)

(declare-fun call!668600 () List!71562)

(assert (=> bm!668590 (= call!668599 (derivationStepZipperDown!2893 (ite c!1362137 (regTwo!38645 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))) (regOne!38644 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256)))))))) (ite c!1362137 (ite (or c!1362078 c!1362077) (Context!16013 (tail!14747 (exprs!8506 ct1!256))) (Context!16013 call!668539)) (Context!16013 call!668600)) c!10305))))

(declare-fun c!1362135 () Bool)

(declare-fun d!2277610 () Bool)

(assert (=> d!2277610 (= c!1362135 (and (is-ElementMatch!19066 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))) (= (c!1362028 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))) c!10305)))))

(assert (=> d!2277610 (= (derivationStepZipperDown!2893 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256)))))) (ite (or c!1362078 c!1362077) (Context!16013 (tail!14747 (exprs!8506 ct1!256))) (Context!16013 call!668539)) c!10305) e!4391926)))

(declare-fun bm!668591 () Bool)

(declare-fun call!668596 () (Set Context!16012))

(declare-fun call!668597 () (Set Context!16012))

(assert (=> bm!668591 (= call!668596 call!668597)))

(declare-fun b!7334432 () Bool)

(declare-fun c!1362136 () Bool)

(declare-fun e!4391929 () Bool)

(assert (=> b!7334432 (= c!1362136 e!4391929)))

(declare-fun res!2963792 () Bool)

(assert (=> b!7334432 (=> (not res!2963792) (not e!4391929))))

(assert (=> b!7334432 (= res!2963792 (is-Concat!27911 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))))))

(declare-fun e!4391927 () (Set Context!16012))

(assert (=> b!7334432 (= e!4391925 e!4391927)))

(declare-fun b!7334433 () Bool)

(declare-fun e!4391924 () (Set Context!16012))

(assert (=> b!7334433 (= e!4391924 (as set.empty (Set Context!16012)))))

(declare-fun c!1362139 () Bool)

(declare-fun bm!668592 () Bool)

(assert (=> bm!668592 (= call!668600 ($colon$colon!3075 (exprs!8506 (ite (or c!1362078 c!1362077) (Context!16013 (tail!14747 (exprs!8506 ct1!256))) (Context!16013 call!668539))) (ite (or c!1362136 c!1362139) (regTwo!38644 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))) (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256)))))))))))

(declare-fun b!7334434 () Bool)

(assert (=> b!7334434 (= e!4391929 (nullable!8167 (regOne!38644 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256)))))))))))

(declare-fun b!7334435 () Bool)

(assert (=> b!7334435 (= e!4391926 (set.insert (ite (or c!1362078 c!1362077) (Context!16013 (tail!14747 (exprs!8506 ct1!256))) (Context!16013 call!668539)) (as set.empty (Set Context!16012))))))

(declare-fun b!7334436 () Bool)

(declare-fun c!1362138 () Bool)

(assert (=> b!7334436 (= c!1362138 (is-Star!19066 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))))))

(declare-fun e!4391928 () (Set Context!16012))

(assert (=> b!7334436 (= e!4391928 e!4391924)))

(declare-fun b!7334437 () Bool)

(assert (=> b!7334437 (= e!4391928 call!668596)))

(declare-fun b!7334438 () Bool)

(assert (=> b!7334438 (= e!4391924 call!668596)))

(declare-fun bm!668593 () Bool)

(declare-fun call!668598 () (Set Context!16012))

(declare-fun call!668595 () List!71562)

(assert (=> bm!668593 (= call!668598 (derivationStepZipperDown!2893 (ite c!1362137 (regOne!38645 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))) (ite c!1362136 (regTwo!38644 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))) (ite c!1362139 (regOne!38644 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))) (reg!19395 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256)))))))))) (ite (or c!1362137 c!1362136) (ite (or c!1362078 c!1362077) (Context!16013 (tail!14747 (exprs!8506 ct1!256))) (Context!16013 call!668539)) (Context!16013 call!668595)) c!10305))))

(declare-fun b!7334439 () Bool)

(assert (=> b!7334439 (= e!4391927 (set.union call!668599 call!668597))))

(declare-fun b!7334440 () Bool)

(assert (=> b!7334440 (= e!4391927 e!4391928)))

(assert (=> b!7334440 (= c!1362139 (is-Concat!27911 (ite c!1362078 (regOne!38645 (h!77886 (exprs!8506 ct1!256))) (ite c!1362077 (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (ite c!1362080 (regOne!38644 (h!77886 (exprs!8506 ct1!256))) (reg!19395 (h!77886 (exprs!8506 ct1!256))))))))))

(declare-fun bm!668594 () Bool)

(assert (=> bm!668594 (= call!668595 call!668600)))

(declare-fun b!7334441 () Bool)

(assert (=> b!7334441 (= e!4391925 (set.union call!668598 call!668599))))

(declare-fun bm!668595 () Bool)

(assert (=> bm!668595 (= call!668597 call!668598)))

(assert (= (and d!2277610 c!1362135) b!7334435))

(assert (= (and d!2277610 (not c!1362135)) b!7334431))

(assert (= (and b!7334431 c!1362137) b!7334441))

(assert (= (and b!7334431 (not c!1362137)) b!7334432))

(assert (= (and b!7334432 res!2963792) b!7334434))

(assert (= (and b!7334432 c!1362136) b!7334439))

(assert (= (and b!7334432 (not c!1362136)) b!7334440))

(assert (= (and b!7334440 c!1362139) b!7334437))

(assert (= (and b!7334440 (not c!1362139)) b!7334436))

(assert (= (and b!7334436 c!1362138) b!7334438))

(assert (= (and b!7334436 (not c!1362138)) b!7334433))

(assert (= (or b!7334437 b!7334438) bm!668594))

(assert (= (or b!7334437 b!7334438) bm!668591))

(assert (= (or b!7334439 bm!668591) bm!668595))

(assert (= (or b!7334439 bm!668594) bm!668592))

(assert (= (or b!7334441 b!7334439) bm!668590))

(assert (= (or b!7334441 bm!668595) bm!668593))

(declare-fun m!8000334 () Bool)

(assert (=> bm!668592 m!8000334))

(declare-fun m!8000336 () Bool)

(assert (=> bm!668590 m!8000336))

(declare-fun m!8000338 () Bool)

(assert (=> bm!668593 m!8000338))

(declare-fun m!8000340 () Bool)

(assert (=> b!7334434 m!8000340))

(declare-fun m!8000342 () Bool)

(assert (=> b!7334435 m!8000342))

(assert (=> bm!668537 d!2277610))

(declare-fun d!2277612 () Bool)

(declare-fun res!2963793 () Bool)

(declare-fun e!4391930 () Bool)

(assert (=> d!2277612 (=> res!2963793 e!4391930)))

(assert (=> d!2277612 (= res!2963793 (is-Nil!71438 (++!16888 (exprs!8506 ct1!256) (exprs!8506 ct2!352))))))

(assert (=> d!2277612 (= (forall!17902 (++!16888 (exprs!8506 ct1!256) (exprs!8506 ct2!352)) lambda!454990) e!4391930)))

(declare-fun b!7334442 () Bool)

(declare-fun e!4391931 () Bool)

(assert (=> b!7334442 (= e!4391930 e!4391931)))

(declare-fun res!2963794 () Bool)

(assert (=> b!7334442 (=> (not res!2963794) (not e!4391931))))

(assert (=> b!7334442 (= res!2963794 (dynLambda!29429 lambda!454990 (h!77886 (++!16888 (exprs!8506 ct1!256) (exprs!8506 ct2!352)))))))

(declare-fun b!7334443 () Bool)

(assert (=> b!7334443 (= e!4391931 (forall!17902 (t!385955 (++!16888 (exprs!8506 ct1!256) (exprs!8506 ct2!352))) lambda!454990))))

(assert (= (and d!2277612 (not res!2963793)) b!7334442))

(assert (= (and b!7334442 res!2963794) b!7334443))

(declare-fun b_lambda!283677 () Bool)

(assert (=> (not b_lambda!283677) (not b!7334442)))

(declare-fun m!8000344 () Bool)

(assert (=> b!7334442 m!8000344))

(declare-fun m!8000346 () Bool)

(assert (=> b!7334443 m!8000346))

(assert (=> d!2277524 d!2277612))

(assert (=> d!2277524 d!2277520))

(declare-fun d!2277614 () Bool)

(assert (=> d!2277614 (forall!17902 (++!16888 (exprs!8506 ct1!256) (exprs!8506 ct2!352)) lambda!454990)))

(assert (=> d!2277614 true))

(declare-fun _$78!918 () Unit!165093)

(assert (=> d!2277614 (= (choose!57048 (exprs!8506 ct1!256) (exprs!8506 ct2!352) lambda!454990) _$78!918)))

(declare-fun bs!1917799 () Bool)

(assert (= bs!1917799 d!2277614))

(assert (=> bs!1917799 m!8000092))

(assert (=> bs!1917799 m!8000092))

(assert (=> bs!1917799 m!8000156))

(assert (=> d!2277524 d!2277614))

(declare-fun d!2277616 () Bool)

(declare-fun res!2963795 () Bool)

(declare-fun e!4391932 () Bool)

(assert (=> d!2277616 (=> res!2963795 e!4391932)))

(assert (=> d!2277616 (= res!2963795 (is-Nil!71438 (exprs!8506 ct1!256)))))

(assert (=> d!2277616 (= (forall!17902 (exprs!8506 ct1!256) lambda!454990) e!4391932)))

(declare-fun b!7334444 () Bool)

(declare-fun e!4391933 () Bool)

(assert (=> b!7334444 (= e!4391932 e!4391933)))

(declare-fun res!2963796 () Bool)

(assert (=> b!7334444 (=> (not res!2963796) (not e!4391933))))

(assert (=> b!7334444 (= res!2963796 (dynLambda!29429 lambda!454990 (h!77886 (exprs!8506 ct1!256))))))

(declare-fun b!7334445 () Bool)

(assert (=> b!7334445 (= e!4391933 (forall!17902 (t!385955 (exprs!8506 ct1!256)) lambda!454990))))

(assert (= (and d!2277616 (not res!2963795)) b!7334444))

(assert (= (and b!7334444 res!2963796) b!7334445))

(declare-fun b_lambda!283679 () Bool)

(assert (=> (not b_lambda!283679) (not b!7334444)))

(declare-fun m!8000348 () Bool)

(assert (=> b!7334444 m!8000348))

(declare-fun m!8000350 () Bool)

(assert (=> b!7334445 m!8000350))

(assert (=> d!2277524 d!2277616))

(declare-fun d!2277618 () Bool)

(assert (=> d!2277618 (= (nullable!8167 (reg!19395 (h!77886 (exprs!8506 ct1!256)))) (nullableFct!3257 (reg!19395 (h!77886 (exprs!8506 ct1!256)))))))

(declare-fun bs!1917800 () Bool)

(assert (= bs!1917800 d!2277618))

(declare-fun m!8000352 () Bool)

(assert (=> bs!1917800 m!8000352))

(assert (=> b!7334190 d!2277618))

(assert (=> b!7334242 d!2277584))

(assert (=> b!7334154 d!2277546))

(declare-fun d!2277620 () Bool)

(declare-fun res!2963797 () Bool)

(declare-fun e!4391934 () Bool)

(assert (=> d!2277620 (=> res!2963797 e!4391934)))

(assert (=> d!2277620 (= res!2963797 (is-Nil!71438 (exprs!8506 ct2!352)))))

(assert (=> d!2277620 (= (forall!17902 (exprs!8506 ct2!352) lambda!454998) e!4391934)))

(declare-fun b!7334446 () Bool)

(declare-fun e!4391935 () Bool)

(assert (=> b!7334446 (= e!4391934 e!4391935)))

(declare-fun res!2963798 () Bool)

(assert (=> b!7334446 (=> (not res!2963798) (not e!4391935))))

(assert (=> b!7334446 (= res!2963798 (dynLambda!29429 lambda!454998 (h!77886 (exprs!8506 ct2!352))))))

(declare-fun b!7334447 () Bool)

(assert (=> b!7334447 (= e!4391935 (forall!17902 (t!385955 (exprs!8506 ct2!352)) lambda!454998))))

(assert (= (and d!2277620 (not res!2963797)) b!7334446))

(assert (= (and b!7334446 res!2963798) b!7334447))

(declare-fun b_lambda!283681 () Bool)

(assert (=> (not b_lambda!283681) (not b!7334446)))

(declare-fun m!8000354 () Bool)

(assert (=> b!7334446 m!8000354))

(declare-fun m!8000356 () Bool)

(assert (=> b!7334447 m!8000356))

(assert (=> d!2277532 d!2277620))

(declare-fun d!2277622 () Bool)

(declare-fun res!2963799 () Bool)

(declare-fun e!4391936 () Bool)

(assert (=> d!2277622 (=> res!2963799 e!4391936)))

(assert (=> d!2277622 (= res!2963799 (is-Nil!71438 (exprs!8506 cWitness!35)))))

(assert (=> d!2277622 (= (forall!17902 (exprs!8506 cWitness!35) lambda!454996) e!4391936)))

(declare-fun b!7334448 () Bool)

(declare-fun e!4391937 () Bool)

(assert (=> b!7334448 (= e!4391936 e!4391937)))

(declare-fun res!2963800 () Bool)

(assert (=> b!7334448 (=> (not res!2963800) (not e!4391937))))

(assert (=> b!7334448 (= res!2963800 (dynLambda!29429 lambda!454996 (h!77886 (exprs!8506 cWitness!35))))))

(declare-fun b!7334449 () Bool)

(assert (=> b!7334449 (= e!4391937 (forall!17902 (t!385955 (exprs!8506 cWitness!35)) lambda!454996))))

(assert (= (and d!2277622 (not res!2963799)) b!7334448))

(assert (= (and b!7334448 res!2963800) b!7334449))

(declare-fun b_lambda!283683 () Bool)

(assert (=> (not b_lambda!283683) (not b!7334448)))

(declare-fun m!8000358 () Bool)

(assert (=> b!7334448 m!8000358))

(declare-fun m!8000360 () Bool)

(assert (=> b!7334449 m!8000360))

(assert (=> d!2277528 d!2277622))

(declare-fun d!2277624 () Bool)

(assert (=> d!2277624 (= ($colon$colon!3075 (exprs!8506 (Context!16013 (tail!14747 lt!2608733))) (ite (or c!1362072 c!1362075) (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (h!77886 (exprs!8506 ct1!256)))) (Cons!71438 (ite (or c!1362072 c!1362075) (regTwo!38644 (h!77886 (exprs!8506 ct1!256))) (h!77886 (exprs!8506 ct1!256))) (exprs!8506 (Context!16013 (tail!14747 lt!2608733)))))))

(assert (=> bm!668526 d!2277624))

(declare-fun b!7334450 () Bool)

(declare-fun e!4391940 () (Set Context!16012))

(declare-fun e!4391939 () (Set Context!16012))

(assert (=> b!7334450 (= e!4391940 e!4391939)))

(declare-fun c!1362142 () Bool)

(assert (=> b!7334450 (= c!1362142 (is-Union!19066 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))))))

(declare-fun bm!668596 () Bool)

(declare-fun call!668605 () (Set Context!16012))

(declare-fun call!668606 () List!71562)

(assert (=> bm!668596 (= call!668605 (derivationStepZipperDown!2893 (ite c!1362142 (regTwo!38645 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) (regOne!38644 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256)))))) (ite c!1362142 (ite c!1362078 (Context!16013 (tail!14747 (exprs!8506 ct1!256))) (Context!16013 call!668544)) (Context!16013 call!668606)) c!10305))))

(declare-fun c!1362140 () Bool)

(declare-fun d!2277626 () Bool)

(assert (=> d!2277626 (= c!1362140 (and (is-ElementMatch!19066 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) (= (c!1362028 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) c!10305)))))

(assert (=> d!2277626 (= (derivationStepZipperDown!2893 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256)))) (ite c!1362078 (Context!16013 (tail!14747 (exprs!8506 ct1!256))) (Context!16013 call!668544)) c!10305) e!4391940)))

(declare-fun bm!668597 () Bool)

(declare-fun call!668602 () (Set Context!16012))

(declare-fun call!668603 () (Set Context!16012))

(assert (=> bm!668597 (= call!668602 call!668603)))

(declare-fun b!7334451 () Bool)

(declare-fun c!1362141 () Bool)

(declare-fun e!4391943 () Bool)

(assert (=> b!7334451 (= c!1362141 e!4391943)))

(declare-fun res!2963801 () Bool)

(assert (=> b!7334451 (=> (not res!2963801) (not e!4391943))))

(assert (=> b!7334451 (= res!2963801 (is-Concat!27911 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))))))

(declare-fun e!4391941 () (Set Context!16012))

(assert (=> b!7334451 (= e!4391939 e!4391941)))

(declare-fun b!7334452 () Bool)

(declare-fun e!4391938 () (Set Context!16012))

(assert (=> b!7334452 (= e!4391938 (as set.empty (Set Context!16012)))))

(declare-fun c!1362144 () Bool)

(declare-fun bm!668598 () Bool)

(assert (=> bm!668598 (= call!668606 ($colon$colon!3075 (exprs!8506 (ite c!1362078 (Context!16013 (tail!14747 (exprs!8506 ct1!256))) (Context!16013 call!668544))) (ite (or c!1362141 c!1362144) (regTwo!38644 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256)))))))))

(declare-fun b!7334453 () Bool)

(assert (=> b!7334453 (= e!4391943 (nullable!8167 (regOne!38644 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256)))))))))

(declare-fun b!7334454 () Bool)

(assert (=> b!7334454 (= e!4391940 (set.insert (ite c!1362078 (Context!16013 (tail!14747 (exprs!8506 ct1!256))) (Context!16013 call!668544)) (as set.empty (Set Context!16012))))))

(declare-fun b!7334455 () Bool)

(declare-fun c!1362143 () Bool)

(assert (=> b!7334455 (= c!1362143 (is-Star!19066 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))))))

(declare-fun e!4391942 () (Set Context!16012))

(assert (=> b!7334455 (= e!4391942 e!4391938)))

(declare-fun b!7334456 () Bool)

(assert (=> b!7334456 (= e!4391942 call!668602)))

(declare-fun b!7334457 () Bool)

(assert (=> b!7334457 (= e!4391938 call!668602)))

(declare-fun bm!668599 () Bool)

(declare-fun call!668604 () (Set Context!16012))

(declare-fun call!668601 () List!71562)

(assert (=> bm!668599 (= call!668604 (derivationStepZipperDown!2893 (ite c!1362142 (regOne!38645 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) (ite c!1362141 (regTwo!38644 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) (ite c!1362144 (regOne!38644 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))) (reg!19395 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256)))))))) (ite (or c!1362142 c!1362141) (ite c!1362078 (Context!16013 (tail!14747 (exprs!8506 ct1!256))) (Context!16013 call!668544)) (Context!16013 call!668601)) c!10305))))

(declare-fun b!7334458 () Bool)

(assert (=> b!7334458 (= e!4391941 (set.union call!668605 call!668603))))

(declare-fun b!7334459 () Bool)

(assert (=> b!7334459 (= e!4391941 e!4391942)))

(assert (=> b!7334459 (= c!1362144 (is-Concat!27911 (ite c!1362078 (regTwo!38645 (h!77886 (exprs!8506 ct1!256))) (regOne!38644 (h!77886 (exprs!8506 ct1!256))))))))

(declare-fun bm!668600 () Bool)

(assert (=> bm!668600 (= call!668601 call!668606)))

(declare-fun b!7334460 () Bool)

(assert (=> b!7334460 (= e!4391939 (set.union call!668604 call!668605))))

(declare-fun bm!668601 () Bool)

(assert (=> bm!668601 (= call!668603 call!668604)))

(assert (= (and d!2277626 c!1362140) b!7334454))

(assert (= (and d!2277626 (not c!1362140)) b!7334450))

(assert (= (and b!7334450 c!1362142) b!7334460))

(assert (= (and b!7334450 (not c!1362142)) b!7334451))

(assert (= (and b!7334451 res!2963801) b!7334453))

(assert (= (and b!7334451 c!1362141) b!7334458))

(assert (= (and b!7334451 (not c!1362141)) b!7334459))

(assert (= (and b!7334459 c!1362144) b!7334456))

(assert (= (and b!7334459 (not c!1362144)) b!7334455))

(assert (= (and b!7334455 c!1362143) b!7334457))

(assert (= (and b!7334455 (not c!1362143)) b!7334452))

(assert (= (or b!7334456 b!7334457) bm!668600))

(assert (= (or b!7334456 b!7334457) bm!668597))

(assert (= (or b!7334458 bm!668597) bm!668601))

(assert (= (or b!7334458 bm!668600) bm!668598))

(assert (= (or b!7334460 b!7334458) bm!668596))

(assert (= (or b!7334460 bm!668601) bm!668599))

(declare-fun m!8000362 () Bool)

(assert (=> bm!668598 m!8000362))

(declare-fun m!8000364 () Bool)

(assert (=> bm!668596 m!8000364))

(declare-fun m!8000366 () Bool)

(assert (=> bm!668599 m!8000366))

(declare-fun m!8000368 () Bool)

(assert (=> b!7334453 m!8000368))

(declare-fun m!8000370 () Bool)

(assert (=> b!7334454 m!8000370))

(assert (=> bm!668534 d!2277626))

(declare-fun e!4391946 () Bool)

(assert (=> b!7334266 (= tp!2082050 e!4391946)))

(declare-fun b!7334474 () Bool)

(declare-fun tp!2082074 () Bool)

(declare-fun tp!2082075 () Bool)

(assert (=> b!7334474 (= e!4391946 (and tp!2082074 tp!2082075))))

(declare-fun b!7334471 () Bool)

(assert (=> b!7334471 (= e!4391946 tp_is_empty!48377)))

(declare-fun b!7334473 () Bool)

(declare-fun tp!2082077 () Bool)

(assert (=> b!7334473 (= e!4391946 tp!2082077)))

(declare-fun b!7334472 () Bool)

(declare-fun tp!2082078 () Bool)

(declare-fun tp!2082076 () Bool)

(assert (=> b!7334472 (= e!4391946 (and tp!2082078 tp!2082076))))

(assert (= (and b!7334266 (is-ElementMatch!19066 (h!77886 (exprs!8506 ct2!352)))) b!7334471))

(assert (= (and b!7334266 (is-Concat!27911 (h!77886 (exprs!8506 ct2!352)))) b!7334472))

(assert (= (and b!7334266 (is-Star!19066 (h!77886 (exprs!8506 ct2!352)))) b!7334473))

(assert (= (and b!7334266 (is-Union!19066 (h!77886 (exprs!8506 ct2!352)))) b!7334474))

(declare-fun b!7334475 () Bool)

(declare-fun e!4391947 () Bool)

(declare-fun tp!2082079 () Bool)

(declare-fun tp!2082080 () Bool)

(assert (=> b!7334475 (= e!4391947 (and tp!2082079 tp!2082080))))

(assert (=> b!7334266 (= tp!2082051 e!4391947)))

(assert (= (and b!7334266 (is-Cons!71438 (t!385955 (exprs!8506 ct2!352)))) b!7334475))

(declare-fun e!4391948 () Bool)

(assert (=> b!7334265 (= tp!2082048 e!4391948)))

(declare-fun b!7334479 () Bool)

(declare-fun tp!2082081 () Bool)

(declare-fun tp!2082082 () Bool)

(assert (=> b!7334479 (= e!4391948 (and tp!2082081 tp!2082082))))

(declare-fun b!7334476 () Bool)

(assert (=> b!7334476 (= e!4391948 tp_is_empty!48377)))

(declare-fun b!7334478 () Bool)

(declare-fun tp!2082084 () Bool)

(assert (=> b!7334478 (= e!4391948 tp!2082084)))

(declare-fun b!7334477 () Bool)

(declare-fun tp!2082085 () Bool)

(declare-fun tp!2082083 () Bool)

(assert (=> b!7334477 (= e!4391948 (and tp!2082085 tp!2082083))))

(assert (= (and b!7334265 (is-ElementMatch!19066 (h!77886 (exprs!8506 cWitness!35)))) b!7334476))

(assert (= (and b!7334265 (is-Concat!27911 (h!77886 (exprs!8506 cWitness!35)))) b!7334477))

(assert (= (and b!7334265 (is-Star!19066 (h!77886 (exprs!8506 cWitness!35)))) b!7334478))

(assert (= (and b!7334265 (is-Union!19066 (h!77886 (exprs!8506 cWitness!35)))) b!7334479))

(declare-fun b!7334480 () Bool)

(declare-fun e!4391949 () Bool)

(declare-fun tp!2082086 () Bool)

(declare-fun tp!2082087 () Bool)

(assert (=> b!7334480 (= e!4391949 (and tp!2082086 tp!2082087))))

(assert (=> b!7334265 (= tp!2082049 e!4391949)))

(assert (= (and b!7334265 (is-Cons!71438 (t!385955 (exprs!8506 cWitness!35)))) b!7334480))

(declare-fun e!4391950 () Bool)

(assert (=> b!7334267 (= tp!2082052 e!4391950)))

(declare-fun b!7334484 () Bool)

(declare-fun tp!2082088 () Bool)

(declare-fun tp!2082089 () Bool)

(assert (=> b!7334484 (= e!4391950 (and tp!2082088 tp!2082089))))

(declare-fun b!7334481 () Bool)

(assert (=> b!7334481 (= e!4391950 tp_is_empty!48377)))

(declare-fun b!7334483 () Bool)

(declare-fun tp!2082091 () Bool)

(assert (=> b!7334483 (= e!4391950 tp!2082091)))

(declare-fun b!7334482 () Bool)

(declare-fun tp!2082092 () Bool)

(declare-fun tp!2082090 () Bool)

(assert (=> b!7334482 (= e!4391950 (and tp!2082092 tp!2082090))))

(assert (= (and b!7334267 (is-ElementMatch!19066 (h!77886 (exprs!8506 ct1!256)))) b!7334481))

(assert (= (and b!7334267 (is-Concat!27911 (h!77886 (exprs!8506 ct1!256)))) b!7334482))

(assert (= (and b!7334267 (is-Star!19066 (h!77886 (exprs!8506 ct1!256)))) b!7334483))

(assert (= (and b!7334267 (is-Union!19066 (h!77886 (exprs!8506 ct1!256)))) b!7334484))

(declare-fun b!7334485 () Bool)

(declare-fun e!4391951 () Bool)

(declare-fun tp!2082093 () Bool)

(declare-fun tp!2082094 () Bool)

(assert (=> b!7334485 (= e!4391951 (and tp!2082093 tp!2082094))))

(assert (=> b!7334267 (= tp!2082053 e!4391951)))

(assert (= (and b!7334267 (is-Cons!71438 (t!385955 (exprs!8506 ct1!256)))) b!7334485))

(declare-fun b_lambda!283685 () Bool)

(assert (= b_lambda!283681 (or d!2277532 b_lambda!283685)))

(declare-fun bs!1917801 () Bool)

(declare-fun d!2277628 () Bool)

(assert (= bs!1917801 (and d!2277628 d!2277532)))

(assert (=> bs!1917801 (= (dynLambda!29429 lambda!454998 (h!77886 (exprs!8506 ct2!352))) (validRegex!9665 (h!77886 (exprs!8506 ct2!352))))))

(declare-fun m!8000372 () Bool)

(assert (=> bs!1917801 m!8000372))

(assert (=> b!7334446 d!2277628))

(declare-fun b_lambda!283687 () Bool)

(assert (= b_lambda!283679 (or b!7334085 b_lambda!283687)))

(declare-fun bs!1917802 () Bool)

(declare-fun d!2277630 () Bool)

(assert (= bs!1917802 (and d!2277630 b!7334085)))

(assert (=> bs!1917802 (= (dynLambda!29429 lambda!454990 (h!77886 (exprs!8506 ct1!256))) (validRegex!9665 (h!77886 (exprs!8506 ct1!256))))))

(assert (=> bs!1917802 m!8000078))

(assert (=> b!7334444 d!2277630))

(declare-fun b_lambda!283689 () Bool)

(assert (= b_lambda!283677 (or b!7334085 b_lambda!283689)))

(declare-fun bs!1917803 () Bool)

(declare-fun d!2277632 () Bool)

(assert (= bs!1917803 (and d!2277632 b!7334085)))

(assert (=> bs!1917803 (= (dynLambda!29429 lambda!454990 (h!77886 (++!16888 (exprs!8506 ct1!256) (exprs!8506 ct2!352)))) (validRegex!9665 (h!77886 (++!16888 (exprs!8506 ct1!256) (exprs!8506 ct2!352)))))))

(declare-fun m!8000374 () Bool)

(assert (=> bs!1917803 m!8000374))

(assert (=> b!7334442 d!2277632))

(declare-fun b_lambda!283691 () Bool)

(assert (= b_lambda!283675 (or d!2277530 b_lambda!283691)))

(declare-fun bs!1917804 () Bool)

(declare-fun d!2277634 () Bool)

(assert (= bs!1917804 (and d!2277634 d!2277530)))

(assert (=> bs!1917804 (= (dynLambda!29429 lambda!454997 (h!77886 (exprs!8506 ct1!256))) (validRegex!9665 (h!77886 (exprs!8506 ct1!256))))))

(assert (=> bs!1917804 m!8000078))

(assert (=> b!7334404 d!2277634))

(declare-fun b_lambda!283693 () Bool)

(assert (= b_lambda!283683 (or d!2277528 b_lambda!283693)))

(declare-fun bs!1917805 () Bool)

(declare-fun d!2277636 () Bool)

(assert (= bs!1917805 (and d!2277636 d!2277528)))

(assert (=> bs!1917805 (= (dynLambda!29429 lambda!454996 (h!77886 (exprs!8506 cWitness!35))) (validRegex!9665 (h!77886 (exprs!8506 cWitness!35))))))

(declare-fun m!8000376 () Bool)

(assert (=> bs!1917805 m!8000376))

(assert (=> b!7334448 d!2277636))

(push 1)

(assert (not b_lambda!283689))

(assert (not b!7334408))

(assert (not b!7334485))

(assert (not bm!668570))

(assert (not bm!668573))

(assert (not bs!1917802))

(assert (not b!7334453))

(assert (not bm!668596))

(assert (not bm!668571))

(assert (not b!7334329))

(assert (not bm!668598))

(assert (not b!7334337))

(assert (not b!7334473))

(assert (not d!2277590))

(assert (not b!7334479))

(assert (not b!7334406))

(assert (not b!7334445))

(assert (not b_lambda!283691))

(assert (not b!7334475))

(assert (not b!7334472))

(assert (not bm!668592))

(assert (not b!7334449))

(assert tp_is_empty!48377)

(assert (not d!2277614))

(assert (not bm!668590))

(assert (not bm!668581))

(assert (not b!7334447))

(assert (not b!7334373))

(assert (not bm!668574))

(assert (not b!7334386))

(assert (not b!7334443))

(assert (not bs!1917804))

(assert (not b!7334367))

(assert (not b!7334482))

(assert (not d!2277584))

(assert (not bm!668580))

(assert (not bs!1917803))

(assert (not bs!1917801))

(assert (not b!7334388))

(assert (not b!7334474))

(assert (not b!7334483))

(assert (not b!7334423))

(assert (not b!7334484))

(assert (not b!7334333))

(assert (not bm!668569))

(assert (not b!7334331))

(assert (not b!7334415))

(assert (not b!7334477))

(assert (not bm!668584))

(assert (not bm!668582))

(assert (not b!7334480))

(assert (not bm!668561))

(assert (not b_lambda!283687))

(assert (not bs!1917805))

(assert (not bm!668587))

(assert (not bm!668586))

(assert (not bm!668578))

(assert (not bm!668577))

(assert (not bm!668599))

(assert (not bm!668559))

(assert (not bm!668593))

(assert (not b!7334405))

(assert (not b!7334434))

(assert (not b_lambda!283685))

(assert (not b!7334395))

(assert (not b_lambda!283693))

(assert (not b!7334368))

(assert (not b!7334390))

(assert (not d!2277618))

(assert (not b!7334478))

(assert (not bm!668562))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

