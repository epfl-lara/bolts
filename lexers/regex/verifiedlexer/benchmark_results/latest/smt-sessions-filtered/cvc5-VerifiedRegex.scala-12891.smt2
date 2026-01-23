; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!711804 () Bool)

(assert start!711804)

(declare-fun b!7299112 () Bool)

(declare-fun lambda!451321 () Int)

(declare-fun lambda!451320 () Int)

(assert (=> b!7299112 (not (= lambda!451321 lambda!451320))))

(declare-fun e!4371685 () Bool)

(declare-datatypes ((C!38054 0))(
  ( (C!38055 (val!28975 Int)) )
))
(declare-datatypes ((Regex!18890 0))(
  ( (ElementMatch!18890 (c!1357002 C!38054)) (Concat!27735 (regOne!38292 Regex!18890) (regTwo!38292 Regex!18890)) (EmptyExpr!18890) (Star!18890 (reg!19219 Regex!18890)) (EmptyLang!18890) (Union!18890 (regOne!38293 Regex!18890) (regTwo!38293 Regex!18890)) )
))
(declare-datatypes ((List!71097 0))(
  ( (Nil!70973) (Cons!70973 (h!77421 Regex!18890) (t!385175 List!71097)) )
))
(declare-datatypes ((Context!15660 0))(
  ( (Context!15661 (exprs!8330 List!71097)) )
))
(declare-fun ct1!250 () Context!15660)

(declare-fun ct2!346 () Context!15660)

(declare-fun inv!90236 (Context!15660) Bool)

(declare-fun ++!16780 (List!71097 List!71097) List!71097)

(assert (=> b!7299112 (= e!4371685 (not (inv!90236 (Context!15661 (++!16780 (exprs!8330 ct1!250) (exprs!8330 ct2!346))))))))

(declare-datatypes ((Unit!164378 0))(
  ( (Unit!164379) )
))
(declare-fun lt!2599967 () Unit!164378)

(declare-fun lemmaConcatPreservesForall!1637 (List!71097 List!71097 Int) Unit!164378)

(assert (=> b!7299112 (= lt!2599967 (lemmaConcatPreservesForall!1637 (exprs!8330 ct1!250) (exprs!8330 ct2!346) lambda!451321))))

(declare-fun lt!2599966 () Unit!164378)

(assert (=> b!7299112 (= lt!2599966 (lemmaConcatPreservesForall!1637 (exprs!8330 ct1!250) (exprs!8330 ct2!346) lambda!451320))))

(declare-fun b!7299113 () Bool)

(declare-fun res!2952058 () Bool)

(assert (=> b!7299113 (=> (not res!2952058) (not e!4371685))))

(declare-fun nullableContext!380 (Context!15660) Bool)

(assert (=> b!7299113 (= res!2952058 (nullableContext!380 ct1!250))))

(declare-fun b!7299114 () Bool)

(declare-fun e!4371682 () Bool)

(declare-fun tp!2062869 () Bool)

(assert (=> b!7299114 (= e!4371682 tp!2062869)))

(declare-fun b!7299115 () Bool)

(declare-fun res!2952061 () Bool)

(assert (=> b!7299115 (=> (not res!2952061) (not e!4371685))))

(declare-datatypes ((List!71098 0))(
  ( (Nil!70974) (Cons!70974 (h!77422 C!38054) (t!385176 List!71098)) )
))
(declare-fun s!7854 () List!71098)

(assert (=> b!7299115 (= res!2952061 (not (is-Cons!70974 s!7854)))))

(declare-fun b!7299116 () Bool)

(declare-fun res!2952060 () Bool)

(assert (=> b!7299116 (=> (not res!2952060) (not e!4371685))))

(assert (=> b!7299116 (= res!2952060 (nullableContext!380 ct2!346))))

(declare-fun b!7299117 () Bool)

(declare-fun e!4371683 () Bool)

(declare-fun tp_is_empty!47245 () Bool)

(declare-fun tp!2062868 () Bool)

(assert (=> b!7299117 (= e!4371683 (and tp_is_empty!47245 tp!2062868))))

(declare-fun res!2952059 () Bool)

(assert (=> start!711804 (=> (not res!2952059) (not e!4371685))))

(declare-fun matchZipper!3794 ((Set Context!15660) List!71098) Bool)

(assert (=> start!711804 (= res!2952059 (matchZipper!3794 (set.insert ct2!346 (as set.empty (Set Context!15660))) s!7854))))

(assert (=> start!711804 e!4371685))

(declare-fun e!4371684 () Bool)

(assert (=> start!711804 (and (inv!90236 ct2!346) e!4371684)))

(assert (=> start!711804 e!4371683))

(assert (=> start!711804 (and (inv!90236 ct1!250) e!4371682)))

(declare-fun b!7299118 () Bool)

(declare-fun tp!2062867 () Bool)

(assert (=> b!7299118 (= e!4371684 tp!2062867)))

(assert (= (and start!711804 res!2952059) b!7299113))

(assert (= (and b!7299113 res!2952058) b!7299115))

(assert (= (and b!7299115 res!2952061) b!7299116))

(assert (= (and b!7299116 res!2952060) b!7299112))

(assert (= start!711804 b!7299118))

(assert (= (and start!711804 (is-Cons!70974 s!7854)) b!7299117))

(assert (= start!711804 b!7299114))

(declare-fun m!7971894 () Bool)

(assert (=> b!7299112 m!7971894))

(declare-fun m!7971896 () Bool)

(assert (=> b!7299112 m!7971896))

(declare-fun m!7971898 () Bool)

(assert (=> b!7299112 m!7971898))

(declare-fun m!7971900 () Bool)

(assert (=> b!7299112 m!7971900))

(declare-fun m!7971902 () Bool)

(assert (=> b!7299113 m!7971902))

(declare-fun m!7971904 () Bool)

(assert (=> b!7299116 m!7971904))

(declare-fun m!7971906 () Bool)

(assert (=> start!711804 m!7971906))

(assert (=> start!711804 m!7971906))

(declare-fun m!7971908 () Bool)

(assert (=> start!711804 m!7971908))

(declare-fun m!7971910 () Bool)

(assert (=> start!711804 m!7971910))

(declare-fun m!7971912 () Bool)

(assert (=> start!711804 m!7971912))

(push 1)

(assert (not b!7299114))

(assert (not b!7299117))

(assert (not b!7299116))

(assert (not b!7299112))

(assert (not b!7299113))

(assert (not start!711804))

(assert (not b!7299118))

(assert tp_is_empty!47245)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1913665 () Bool)

(declare-fun d!2268246 () Bool)

(assert (= bs!1913665 (and d!2268246 b!7299112)))

(declare-fun lambda!451330 () Int)

(assert (=> bs!1913665 (not (= lambda!451330 lambda!451320))))

(assert (=> bs!1913665 (= lambda!451330 lambda!451321)))

(declare-fun forall!17706 (List!71097 Int) Bool)

(assert (=> d!2268246 (= (inv!90236 (Context!15661 (++!16780 (exprs!8330 ct1!250) (exprs!8330 ct2!346)))) (forall!17706 (exprs!8330 (Context!15661 (++!16780 (exprs!8330 ct1!250) (exprs!8330 ct2!346)))) lambda!451330))))

(declare-fun bs!1913666 () Bool)

(assert (= bs!1913666 d!2268246))

(declare-fun m!7971934 () Bool)

(assert (=> bs!1913666 m!7971934))

(assert (=> b!7299112 d!2268246))

(declare-fun b!7299149 () Bool)

(declare-fun e!4371703 () List!71097)

(assert (=> b!7299149 (= e!4371703 (Cons!70973 (h!77421 (exprs!8330 ct1!250)) (++!16780 (t!385175 (exprs!8330 ct1!250)) (exprs!8330 ct2!346))))))

(declare-fun b!7299151 () Bool)

(declare-fun e!4371702 () Bool)

(declare-fun lt!2599976 () List!71097)

(assert (=> b!7299151 (= e!4371702 (or (not (= (exprs!8330 ct2!346) Nil!70973)) (= lt!2599976 (exprs!8330 ct1!250))))))

(declare-fun b!7299150 () Bool)

(declare-fun res!2952078 () Bool)

(assert (=> b!7299150 (=> (not res!2952078) (not e!4371702))))

(declare-fun size!41878 (List!71097) Int)

(assert (=> b!7299150 (= res!2952078 (= (size!41878 lt!2599976) (+ (size!41878 (exprs!8330 ct1!250)) (size!41878 (exprs!8330 ct2!346)))))))

(declare-fun b!7299148 () Bool)

(assert (=> b!7299148 (= e!4371703 (exprs!8330 ct2!346))))

(declare-fun d!2268248 () Bool)

(assert (=> d!2268248 e!4371702))

(declare-fun res!2952079 () Bool)

(assert (=> d!2268248 (=> (not res!2952079) (not e!4371702))))

(declare-fun content!14832 (List!71097) (Set Regex!18890))

(assert (=> d!2268248 (= res!2952079 (= (content!14832 lt!2599976) (set.union (content!14832 (exprs!8330 ct1!250)) (content!14832 (exprs!8330 ct2!346)))))))

(assert (=> d!2268248 (= lt!2599976 e!4371703)))

(declare-fun c!1357006 () Bool)

(assert (=> d!2268248 (= c!1357006 (is-Nil!70973 (exprs!8330 ct1!250)))))

(assert (=> d!2268248 (= (++!16780 (exprs!8330 ct1!250) (exprs!8330 ct2!346)) lt!2599976)))

(assert (= (and d!2268248 c!1357006) b!7299148))

(assert (= (and d!2268248 (not c!1357006)) b!7299149))

(assert (= (and d!2268248 res!2952079) b!7299150))

(assert (= (and b!7299150 res!2952078) b!7299151))

(declare-fun m!7971936 () Bool)

(assert (=> b!7299149 m!7971936))

(declare-fun m!7971938 () Bool)

(assert (=> b!7299150 m!7971938))

(declare-fun m!7971940 () Bool)

(assert (=> b!7299150 m!7971940))

(declare-fun m!7971942 () Bool)

(assert (=> b!7299150 m!7971942))

(declare-fun m!7971944 () Bool)

(assert (=> d!2268248 m!7971944))

(declare-fun m!7971946 () Bool)

(assert (=> d!2268248 m!7971946))

(declare-fun m!7971948 () Bool)

(assert (=> d!2268248 m!7971948))

(assert (=> b!7299112 d!2268248))

(declare-fun d!2268250 () Bool)

(assert (=> d!2268250 (forall!17706 (++!16780 (exprs!8330 ct1!250) (exprs!8330 ct2!346)) lambda!451321)))

(declare-fun lt!2599979 () Unit!164378)

(declare-fun choose!56596 (List!71097 List!71097 Int) Unit!164378)

(assert (=> d!2268250 (= lt!2599979 (choose!56596 (exprs!8330 ct1!250) (exprs!8330 ct2!346) lambda!451321))))

(assert (=> d!2268250 (forall!17706 (exprs!8330 ct1!250) lambda!451321)))

(assert (=> d!2268250 (= (lemmaConcatPreservesForall!1637 (exprs!8330 ct1!250) (exprs!8330 ct2!346) lambda!451321) lt!2599979)))

(declare-fun bs!1913667 () Bool)

(assert (= bs!1913667 d!2268250))

(assert (=> bs!1913667 m!7971894))

(assert (=> bs!1913667 m!7971894))

(declare-fun m!7971950 () Bool)

(assert (=> bs!1913667 m!7971950))

(declare-fun m!7971952 () Bool)

(assert (=> bs!1913667 m!7971952))

(declare-fun m!7971954 () Bool)

(assert (=> bs!1913667 m!7971954))

(assert (=> b!7299112 d!2268250))

(declare-fun d!2268254 () Bool)

(assert (=> d!2268254 (forall!17706 (++!16780 (exprs!8330 ct1!250) (exprs!8330 ct2!346)) lambda!451320)))

(declare-fun lt!2599980 () Unit!164378)

(assert (=> d!2268254 (= lt!2599980 (choose!56596 (exprs!8330 ct1!250) (exprs!8330 ct2!346) lambda!451320))))

(assert (=> d!2268254 (forall!17706 (exprs!8330 ct1!250) lambda!451320)))

(assert (=> d!2268254 (= (lemmaConcatPreservesForall!1637 (exprs!8330 ct1!250) (exprs!8330 ct2!346) lambda!451320) lt!2599980)))

(declare-fun bs!1913668 () Bool)

(assert (= bs!1913668 d!2268254))

(assert (=> bs!1913668 m!7971894))

(assert (=> bs!1913668 m!7971894))

(declare-fun m!7971956 () Bool)

(assert (=> bs!1913668 m!7971956))

(declare-fun m!7971958 () Bool)

(assert (=> bs!1913668 m!7971958))

(declare-fun m!7971960 () Bool)

(assert (=> bs!1913668 m!7971960))

(assert (=> b!7299112 d!2268254))

(declare-fun bs!1913669 () Bool)

(declare-fun d!2268256 () Bool)

(assert (= bs!1913669 (and d!2268256 b!7299112)))

(declare-fun lambda!451333 () Int)

(assert (=> bs!1913669 (= lambda!451333 lambda!451320)))

(assert (=> bs!1913669 (not (= lambda!451333 lambda!451321))))

(declare-fun bs!1913670 () Bool)

(assert (= bs!1913670 (and d!2268256 d!2268246)))

(assert (=> bs!1913670 (not (= lambda!451333 lambda!451330))))

(assert (=> d!2268256 (= (nullableContext!380 ct2!346) (forall!17706 (exprs!8330 ct2!346) lambda!451333))))

(declare-fun bs!1913671 () Bool)

(assert (= bs!1913671 d!2268256))

(declare-fun m!7971962 () Bool)

(assert (=> bs!1913671 m!7971962))

(assert (=> b!7299116 d!2268256))

(declare-fun d!2268258 () Bool)

(declare-fun c!1357011 () Bool)

(declare-fun isEmpty!40830 (List!71098) Bool)

(assert (=> d!2268258 (= c!1357011 (isEmpty!40830 s!7854))))

(declare-fun e!4371706 () Bool)

(assert (=> d!2268258 (= (matchZipper!3794 (set.insert ct2!346 (as set.empty (Set Context!15660))) s!7854) e!4371706)))

(declare-fun b!7299156 () Bool)

(declare-fun nullableZipper!3074 ((Set Context!15660)) Bool)

(assert (=> b!7299156 (= e!4371706 (nullableZipper!3074 (set.insert ct2!346 (as set.empty (Set Context!15660)))))))

(declare-fun b!7299157 () Bool)

(declare-fun derivationStepZipper!3623 ((Set Context!15660) C!38054) (Set Context!15660))

(declare-fun head!15072 (List!71098) C!38054)

(declare-fun tail!14613 (List!71098) List!71098)

(assert (=> b!7299157 (= e!4371706 (matchZipper!3794 (derivationStepZipper!3623 (set.insert ct2!346 (as set.empty (Set Context!15660))) (head!15072 s!7854)) (tail!14613 s!7854)))))

(assert (= (and d!2268258 c!1357011) b!7299156))

(assert (= (and d!2268258 (not c!1357011)) b!7299157))

(declare-fun m!7971966 () Bool)

(assert (=> d!2268258 m!7971966))

(assert (=> b!7299156 m!7971906))

(declare-fun m!7971968 () Bool)

(assert (=> b!7299156 m!7971968))

(declare-fun m!7971970 () Bool)

(assert (=> b!7299157 m!7971970))

(assert (=> b!7299157 m!7971906))

(assert (=> b!7299157 m!7971970))

(declare-fun m!7971972 () Bool)

(assert (=> b!7299157 m!7971972))

(declare-fun m!7971974 () Bool)

(assert (=> b!7299157 m!7971974))

(assert (=> b!7299157 m!7971972))

(assert (=> b!7299157 m!7971974))

(declare-fun m!7971976 () Bool)

(assert (=> b!7299157 m!7971976))

(assert (=> start!711804 d!2268258))

(declare-fun bs!1913674 () Bool)

(declare-fun d!2268262 () Bool)

(assert (= bs!1913674 (and d!2268262 b!7299112)))

(declare-fun lambda!451337 () Int)

(assert (=> bs!1913674 (not (= lambda!451337 lambda!451320))))

(assert (=> bs!1913674 (= lambda!451337 lambda!451321)))

(declare-fun bs!1913675 () Bool)

(assert (= bs!1913675 (and d!2268262 d!2268246)))

(assert (=> bs!1913675 (= lambda!451337 lambda!451330)))

(declare-fun bs!1913676 () Bool)

(assert (= bs!1913676 (and d!2268262 d!2268256)))

(assert (=> bs!1913676 (not (= lambda!451337 lambda!451333))))

(assert (=> d!2268262 (= (inv!90236 ct2!346) (forall!17706 (exprs!8330 ct2!346) lambda!451337))))

(declare-fun bs!1913677 () Bool)

(assert (= bs!1913677 d!2268262))

(declare-fun m!7971978 () Bool)

(assert (=> bs!1913677 m!7971978))

(assert (=> start!711804 d!2268262))

(declare-fun bs!1913678 () Bool)

(declare-fun d!2268264 () Bool)

(assert (= bs!1913678 (and d!2268264 b!7299112)))

(declare-fun lambda!451338 () Int)

(assert (=> bs!1913678 (= lambda!451338 lambda!451321)))

(declare-fun bs!1913679 () Bool)

(assert (= bs!1913679 (and d!2268264 d!2268262)))

(assert (=> bs!1913679 (= lambda!451338 lambda!451337)))

(assert (=> bs!1913678 (not (= lambda!451338 lambda!451320))))

(declare-fun bs!1913680 () Bool)

(assert (= bs!1913680 (and d!2268264 d!2268246)))

(assert (=> bs!1913680 (= lambda!451338 lambda!451330)))

(declare-fun bs!1913681 () Bool)

(assert (= bs!1913681 (and d!2268264 d!2268256)))

(assert (=> bs!1913681 (not (= lambda!451338 lambda!451333))))

(assert (=> d!2268264 (= (inv!90236 ct1!250) (forall!17706 (exprs!8330 ct1!250) lambda!451338))))

(declare-fun bs!1913682 () Bool)

(assert (= bs!1913682 d!2268264))

(declare-fun m!7971980 () Bool)

(assert (=> bs!1913682 m!7971980))

(assert (=> start!711804 d!2268264))

(declare-fun bs!1913683 () Bool)

(declare-fun d!2268266 () Bool)

(assert (= bs!1913683 (and d!2268266 b!7299112)))

(declare-fun lambda!451341 () Int)

(assert (=> bs!1913683 (not (= lambda!451341 lambda!451321))))

(assert (=> bs!1913683 (= lambda!451341 lambda!451320)))

(declare-fun bs!1913684 () Bool)

(assert (= bs!1913684 (and d!2268266 d!2268246)))

(assert (=> bs!1913684 (not (= lambda!451341 lambda!451330))))

(declare-fun bs!1913685 () Bool)

(assert (= bs!1913685 (and d!2268266 d!2268256)))

(assert (=> bs!1913685 (= lambda!451341 lambda!451333)))

(declare-fun bs!1913686 () Bool)

(assert (= bs!1913686 (and d!2268266 d!2268264)))

(assert (=> bs!1913686 (not (= lambda!451341 lambda!451338))))

(declare-fun bs!1913687 () Bool)

(assert (= bs!1913687 (and d!2268266 d!2268262)))

(assert (=> bs!1913687 (not (= lambda!451341 lambda!451337))))

(assert (=> d!2268266 (= (nullableContext!380 ct1!250) (forall!17706 (exprs!8330 ct1!250) lambda!451341))))

(declare-fun bs!1913688 () Bool)

(assert (= bs!1913688 d!2268266))

(declare-fun m!7971982 () Bool)

(assert (=> bs!1913688 m!7971982))

(assert (=> b!7299113 d!2268266))

(declare-fun b!7299162 () Bool)

(declare-fun e!4371709 () Bool)

(declare-fun tp!2062881 () Bool)

(assert (=> b!7299162 (= e!4371709 (and tp_is_empty!47245 tp!2062881))))

(assert (=> b!7299117 (= tp!2062868 e!4371709)))

(assert (= (and b!7299117 (is-Cons!70974 (t!385176 s!7854))) b!7299162))

(declare-fun b!7299167 () Bool)

(declare-fun e!4371712 () Bool)

(declare-fun tp!2062886 () Bool)

(declare-fun tp!2062887 () Bool)

(assert (=> b!7299167 (= e!4371712 (and tp!2062886 tp!2062887))))

(assert (=> b!7299114 (= tp!2062869 e!4371712)))

(assert (= (and b!7299114 (is-Cons!70973 (exprs!8330 ct1!250))) b!7299167))

(declare-fun b!7299168 () Bool)

(declare-fun e!4371713 () Bool)

(declare-fun tp!2062888 () Bool)

(declare-fun tp!2062889 () Bool)

(assert (=> b!7299168 (= e!4371713 (and tp!2062888 tp!2062889))))

(assert (=> b!7299118 (= tp!2062867 e!4371713)))

(assert (= (and b!7299118 (is-Cons!70973 (exprs!8330 ct2!346))) b!7299168))

(push 1)

(assert (not d!2268264))

(assert (not b!7299162))

(assert (not d!2268248))

(assert (not d!2268246))

(assert (not d!2268258))

(assert (not d!2268254))

(assert (not b!7299167))

(assert (not b!7299149))

(assert (not d!2268266))

(assert (not b!7299157))

(assert (not b!7299156))

(assert (not b!7299150))

(assert (not b!7299168))

(assert (not d!2268262))

(assert (not d!2268256))

(assert (not d!2268250))

(assert tp_is_empty!47245)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

