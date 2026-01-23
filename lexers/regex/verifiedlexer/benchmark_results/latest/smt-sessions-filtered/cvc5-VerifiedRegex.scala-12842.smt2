; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!709348 () Bool)

(assert start!709348)

(declare-fun b!7269745 () Bool)

(assert (=> b!7269745 true))

(declare-fun b!7269740 () Bool)

(declare-fun e!4359423 () Bool)

(declare-fun tp!2040964 () Bool)

(assert (=> b!7269740 (= e!4359423 tp!2040964)))

(declare-fun b!7269742 () Bool)

(declare-fun res!2947108 () Bool)

(declare-fun e!4359424 () Bool)

(assert (=> b!7269742 (=> res!2947108 e!4359424)))

(declare-datatypes ((C!37858 0))(
  ( (C!37859 (val!28877 Int)) )
))
(declare-datatypes ((Regex!18792 0))(
  ( (ElementMatch!18792 (c!1353122 C!37858)) (Concat!27637 (regOne!38096 Regex!18792) (regTwo!38096 Regex!18792)) (EmptyExpr!18792) (Star!18792 (reg!19121 Regex!18792)) (EmptyLang!18792) (Union!18792 (regOne!38097 Regex!18792) (regTwo!38097 Regex!18792)) )
))
(declare-datatypes ((List!70899 0))(
  ( (Nil!70775) (Cons!70775 (h!77223 Regex!18792) (t!384969 List!70899)) )
))
(declare-datatypes ((Context!15464 0))(
  ( (Context!15465 (exprs!8232 List!70899)) )
))
(declare-fun ct1!250 () Context!15464)

(declare-fun isEmpty!40700 (List!70899) Bool)

(assert (=> b!7269742 (= res!2947108 (isEmpty!40700 (exprs!8232 ct1!250)))))

(declare-fun b!7269743 () Bool)

(declare-fun e!4359422 () Bool)

(declare-fun tp_is_empty!47049 () Bool)

(declare-fun tp!2040963 () Bool)

(assert (=> b!7269743 (= e!4359422 (and tp_is_empty!47049 tp!2040963))))

(declare-fun b!7269744 () Bool)

(declare-fun res!2947111 () Bool)

(declare-fun e!4359425 () Bool)

(assert (=> b!7269744 (=> res!2947111 e!4359425)))

(declare-fun lt!2594249 () Context!15464)

(declare-datatypes ((List!70900 0))(
  ( (Nil!70776) (Cons!70776 (h!77224 C!37858) (t!384970 List!70900)) )
))
(declare-fun s!7854 () List!70900)

(declare-fun lt!2594259 () (Set Context!15464))

(declare-fun derivationStepZipperDown!2726 (Regex!18792 Context!15464 C!37858) (Set Context!15464))

(declare-fun derivationStepZipperUp!2562 (Context!15464 C!37858) (Set Context!15464))

(assert (=> b!7269744 (= res!2947111 (not (= lt!2594259 (set.union (derivationStepZipperDown!2726 (h!77223 (exprs!8232 ct1!250)) lt!2594249 (h!77224 s!7854)) (derivationStepZipperUp!2562 lt!2594249 (h!77224 s!7854))))))))

(declare-fun e!4359419 () Bool)

(assert (=> b!7269745 (= e!4359419 (not e!4359424))))

(declare-fun res!2947112 () Bool)

(assert (=> b!7269745 (=> res!2947112 e!4359424)))

(declare-fun lt!2594241 () (Set Context!15464))

(declare-fun lt!2594257 () (Set Context!15464))

(declare-fun derivationStepZipper!3532 ((Set Context!15464) C!37858) (Set Context!15464))

(assert (=> b!7269745 (= res!2947112 (not (= lt!2594241 (derivationStepZipper!3532 lt!2594257 (h!77224 s!7854)))))))

(declare-fun lambda!448342 () Int)

(declare-datatypes ((Unit!164202 0))(
  ( (Unit!164203) )
))
(declare-fun lt!2594254 () Unit!164202)

(declare-fun ct2!346 () Context!15464)

(declare-fun lemmaConcatPreservesForall!1549 (List!70899 List!70899 Int) Unit!164202)

(assert (=> b!7269745 (= lt!2594254 (lemmaConcatPreservesForall!1549 (exprs!8232 ct1!250) (exprs!8232 ct2!346) lambda!448342))))

(declare-fun lambda!448343 () Int)

(declare-fun lt!2594258 () Context!15464)

(declare-fun flatMap!2905 ((Set Context!15464) Int) (Set Context!15464))

(assert (=> b!7269745 (= (flatMap!2905 lt!2594257 lambda!448343) (derivationStepZipperUp!2562 lt!2594258 (h!77224 s!7854)))))

(declare-fun lt!2594243 () Unit!164202)

(declare-fun lemmaFlatMapOnSingletonSet!2305 ((Set Context!15464) Context!15464 Int) Unit!164202)

(assert (=> b!7269745 (= lt!2594243 (lemmaFlatMapOnSingletonSet!2305 lt!2594257 lt!2594258 lambda!448343))))

(assert (=> b!7269745 (= lt!2594257 (set.insert lt!2594258 (as set.empty (Set Context!15464))))))

(declare-fun lt!2594260 () Unit!164202)

(assert (=> b!7269745 (= lt!2594260 (lemmaConcatPreservesForall!1549 (exprs!8232 ct1!250) (exprs!8232 ct2!346) lambda!448342))))

(declare-fun lt!2594240 () Unit!164202)

(assert (=> b!7269745 (= lt!2594240 (lemmaConcatPreservesForall!1549 (exprs!8232 ct1!250) (exprs!8232 ct2!346) lambda!448342))))

(declare-fun lt!2594264 () (Set Context!15464))

(assert (=> b!7269745 (= (flatMap!2905 lt!2594264 lambda!448343) (derivationStepZipperUp!2562 ct1!250 (h!77224 s!7854)))))

(declare-fun lt!2594245 () Unit!164202)

(assert (=> b!7269745 (= lt!2594245 (lemmaFlatMapOnSingletonSet!2305 lt!2594264 ct1!250 lambda!448343))))

(assert (=> b!7269745 (= lt!2594264 (set.insert ct1!250 (as set.empty (Set Context!15464))))))

(assert (=> b!7269745 (= lt!2594241 (derivationStepZipperUp!2562 lt!2594258 (h!77224 s!7854)))))

(declare-fun ++!16692 (List!70899 List!70899) List!70899)

(assert (=> b!7269745 (= lt!2594258 (Context!15465 (++!16692 (exprs!8232 ct1!250) (exprs!8232 ct2!346))))))

(declare-fun lt!2594252 () Unit!164202)

(assert (=> b!7269745 (= lt!2594252 (lemmaConcatPreservesForall!1549 (exprs!8232 ct1!250) (exprs!8232 ct2!346) lambda!448342))))

(declare-fun b!7269746 () Bool)

(declare-fun res!2947109 () Bool)

(assert (=> b!7269746 (=> (not res!2947109) (not e!4359419))))

(declare-fun nullableContext!282 (Context!15464) Bool)

(assert (=> b!7269746 (= res!2947109 (nullableContext!282 ct1!250))))

(declare-fun b!7269747 () Bool)

(assert (=> b!7269747 (= e!4359424 e!4359425)))

(declare-fun res!2947104 () Bool)

(assert (=> b!7269747 (=> res!2947104 e!4359425)))

(declare-fun nullable!7992 (Regex!18792) Bool)

(assert (=> b!7269747 (= res!2947104 (not (nullable!7992 (h!77223 (exprs!8232 ct1!250)))))))

(assert (=> b!7269747 (= lt!2594259 (derivationStepZipperUp!2562 ct1!250 (h!77224 s!7854)))))

(declare-fun lt!2594261 () List!70899)

(assert (=> b!7269747 (= lt!2594249 (Context!15465 lt!2594261))))

(declare-fun tail!14487 (List!70899) List!70899)

(assert (=> b!7269747 (= lt!2594261 (tail!14487 (exprs!8232 ct1!250)))))

(declare-fun b!7269748 () Bool)

(declare-fun e!4359421 () Bool)

(declare-fun tp!2040965 () Bool)

(assert (=> b!7269748 (= e!4359421 tp!2040965)))

(declare-fun b!7269749 () Bool)

(declare-fun e!4359426 () Bool)

(declare-fun forall!17621 (List!70899 Int) Bool)

(assert (=> b!7269749 (= e!4359426 (forall!17621 (exprs!8232 ct2!346) lambda!448342))))

(declare-fun res!2947107 () Bool)

(assert (=> start!709348 (=> (not res!2947107) (not e!4359419))))

(declare-fun matchZipper!3696 ((Set Context!15464) List!70900) Bool)

(assert (=> start!709348 (= res!2947107 (matchZipper!3696 (set.insert ct2!346 (as set.empty (Set Context!15464))) s!7854))))

(assert (=> start!709348 e!4359419))

(declare-fun inv!89991 (Context!15464) Bool)

(assert (=> start!709348 (and (inv!89991 ct2!346) e!4359423)))

(assert (=> start!709348 e!4359422))

(assert (=> start!709348 (and (inv!89991 ct1!250) e!4359421)))

(declare-fun b!7269741 () Bool)

(declare-fun res!2947114 () Bool)

(assert (=> b!7269741 (=> res!2947114 e!4359424)))

(assert (=> b!7269741 (= res!2947114 (not (is-Cons!70775 (exprs!8232 ct1!250))))))

(declare-fun b!7269750 () Bool)

(declare-fun e!4359420 () Bool)

(assert (=> b!7269750 (= e!4359420 e!4359426)))

(declare-fun res!2947106 () Bool)

(assert (=> b!7269750 (=> res!2947106 e!4359426)))

(assert (=> b!7269750 (= res!2947106 (not (forall!17621 lt!2594261 lambda!448342)))))

(declare-fun b!7269751 () Bool)

(declare-fun e!4359418 () Bool)

(assert (=> b!7269751 (= e!4359418 e!4359420)))

(declare-fun res!2947110 () Bool)

(assert (=> b!7269751 (=> res!2947110 e!4359420)))

(declare-fun lt!2594262 () (Set Context!15464))

(assert (=> b!7269751 (= res!2947110 (not (matchZipper!3696 lt!2594262 (t!384970 s!7854))))))

(declare-fun lt!2594248 () Unit!164202)

(assert (=> b!7269751 (= lt!2594248 (lemmaConcatPreservesForall!1549 lt!2594261 (exprs!8232 ct2!346) lambda!448342))))

(declare-fun lt!2594255 () Context!15464)

(declare-fun lt!2594265 () (Set Context!15464))

(assert (=> b!7269751 (= (flatMap!2905 lt!2594265 lambda!448343) (derivationStepZipperUp!2562 lt!2594255 (h!77224 s!7854)))))

(declare-fun lt!2594256 () Unit!164202)

(assert (=> b!7269751 (= lt!2594256 (lemmaFlatMapOnSingletonSet!2305 lt!2594265 lt!2594255 lambda!448343))))

(declare-fun lt!2594247 () Unit!164202)

(assert (=> b!7269751 (= lt!2594247 (lemmaConcatPreservesForall!1549 lt!2594261 (exprs!8232 ct2!346) lambda!448342))))

(declare-fun lt!2594263 () Unit!164202)

(assert (=> b!7269751 (= lt!2594263 (lemmaConcatPreservesForall!1549 lt!2594261 (exprs!8232 ct2!346) lambda!448342))))

(declare-fun lt!2594244 () Unit!164202)

(assert (=> b!7269751 (= lt!2594244 (lemmaConcatPreservesForall!1549 lt!2594261 (exprs!8232 ct2!346) lambda!448342))))

(assert (=> b!7269751 (matchZipper!3696 lt!2594265 s!7854)))

(assert (=> b!7269751 (= lt!2594265 (set.insert lt!2594255 (as set.empty (Set Context!15464))))))

(declare-fun lt!2594242 () Unit!164202)

(assert (=> b!7269751 (= lt!2594242 (lemmaConcatPreservesForall!1549 lt!2594261 (exprs!8232 ct2!346) lambda!448342))))

(declare-fun lt!2594250 () Unit!164202)

(declare-fun lemmaPrependingNullableCtxStillMatches!29 (Context!15464 Context!15464 List!70900) Unit!164202)

(assert (=> b!7269751 (= lt!2594250 (lemmaPrependingNullableCtxStillMatches!29 lt!2594249 ct2!346 s!7854))))

(declare-fun b!7269752 () Bool)

(declare-fun res!2947113 () Bool)

(assert (=> b!7269752 (=> (not res!2947113) (not e!4359419))))

(assert (=> b!7269752 (= res!2947113 (is-Cons!70776 s!7854))))

(declare-fun b!7269753 () Bool)

(assert (=> b!7269753 (= e!4359425 e!4359418)))

(declare-fun res!2947105 () Bool)

(assert (=> b!7269753 (=> res!2947105 e!4359418)))

(declare-fun lt!2594251 () (Set Context!15464))

(assert (=> b!7269753 (= res!2947105 (not (= lt!2594241 (set.union lt!2594251 lt!2594262))))))

(assert (=> b!7269753 (= lt!2594262 (derivationStepZipperUp!2562 lt!2594255 (h!77224 s!7854)))))

(assert (=> b!7269753 (= lt!2594251 (derivationStepZipperDown!2726 (h!77223 (exprs!8232 ct1!250)) lt!2594255 (h!77224 s!7854)))))

(assert (=> b!7269753 (= lt!2594255 (Context!15465 (++!16692 lt!2594261 (exprs!8232 ct2!346))))))

(declare-fun lt!2594246 () Unit!164202)

(assert (=> b!7269753 (= lt!2594246 (lemmaConcatPreservesForall!1549 lt!2594261 (exprs!8232 ct2!346) lambda!448342))))

(declare-fun lt!2594253 () Unit!164202)

(assert (=> b!7269753 (= lt!2594253 (lemmaConcatPreservesForall!1549 lt!2594261 (exprs!8232 ct2!346) lambda!448342))))

(assert (= (and start!709348 res!2947107) b!7269746))

(assert (= (and b!7269746 res!2947109) b!7269752))

(assert (= (and b!7269752 res!2947113) b!7269745))

(assert (= (and b!7269745 (not res!2947112)) b!7269741))

(assert (= (and b!7269741 (not res!2947114)) b!7269742))

(assert (= (and b!7269742 (not res!2947108)) b!7269747))

(assert (= (and b!7269747 (not res!2947104)) b!7269744))

(assert (= (and b!7269744 (not res!2947111)) b!7269753))

(assert (= (and b!7269753 (not res!2947105)) b!7269751))

(assert (= (and b!7269751 (not res!2947110)) b!7269750))

(assert (= (and b!7269750 (not res!2947106)) b!7269749))

(assert (= start!709348 b!7269740))

(assert (= (and start!709348 (is-Cons!70776 s!7854)) b!7269743))

(assert (= start!709348 b!7269748))

(declare-fun m!7955122 () Bool)

(assert (=> b!7269746 m!7955122))

(declare-fun m!7955124 () Bool)

(assert (=> b!7269753 m!7955124))

(declare-fun m!7955126 () Bool)

(assert (=> b!7269753 m!7955126))

(declare-fun m!7955128 () Bool)

(assert (=> b!7269753 m!7955128))

(assert (=> b!7269753 m!7955124))

(declare-fun m!7955130 () Bool)

(assert (=> b!7269753 m!7955130))

(declare-fun m!7955132 () Bool)

(assert (=> b!7269750 m!7955132))

(declare-fun m!7955134 () Bool)

(assert (=> b!7269751 m!7955134))

(assert (=> b!7269751 m!7955124))

(assert (=> b!7269751 m!7955124))

(assert (=> b!7269751 m!7955124))

(assert (=> b!7269751 m!7955124))

(declare-fun m!7955136 () Bool)

(assert (=> b!7269751 m!7955136))

(declare-fun m!7955138 () Bool)

(assert (=> b!7269751 m!7955138))

(declare-fun m!7955140 () Bool)

(assert (=> b!7269751 m!7955140))

(assert (=> b!7269751 m!7955124))

(declare-fun m!7955142 () Bool)

(assert (=> b!7269751 m!7955142))

(assert (=> b!7269751 m!7955130))

(declare-fun m!7955144 () Bool)

(assert (=> b!7269751 m!7955144))

(declare-fun m!7955146 () Bool)

(assert (=> b!7269747 m!7955146))

(declare-fun m!7955148 () Bool)

(assert (=> b!7269747 m!7955148))

(declare-fun m!7955150 () Bool)

(assert (=> b!7269747 m!7955150))

(declare-fun m!7955152 () Bool)

(assert (=> b!7269742 m!7955152))

(declare-fun m!7955154 () Bool)

(assert (=> b!7269745 m!7955154))

(declare-fun m!7955156 () Bool)

(assert (=> b!7269745 m!7955156))

(assert (=> b!7269745 m!7955148))

(declare-fun m!7955158 () Bool)

(assert (=> b!7269745 m!7955158))

(assert (=> b!7269745 m!7955158))

(declare-fun m!7955160 () Bool)

(assert (=> b!7269745 m!7955160))

(assert (=> b!7269745 m!7955158))

(declare-fun m!7955162 () Bool)

(assert (=> b!7269745 m!7955162))

(declare-fun m!7955164 () Bool)

(assert (=> b!7269745 m!7955164))

(declare-fun m!7955166 () Bool)

(assert (=> b!7269745 m!7955166))

(declare-fun m!7955168 () Bool)

(assert (=> b!7269745 m!7955168))

(assert (=> b!7269745 m!7955158))

(declare-fun m!7955170 () Bool)

(assert (=> b!7269745 m!7955170))

(declare-fun m!7955172 () Bool)

(assert (=> b!7269745 m!7955172))

(declare-fun m!7955174 () Bool)

(assert (=> start!709348 m!7955174))

(assert (=> start!709348 m!7955174))

(declare-fun m!7955176 () Bool)

(assert (=> start!709348 m!7955176))

(declare-fun m!7955178 () Bool)

(assert (=> start!709348 m!7955178))

(declare-fun m!7955180 () Bool)

(assert (=> start!709348 m!7955180))

(declare-fun m!7955182 () Bool)

(assert (=> b!7269749 m!7955182))

(declare-fun m!7955184 () Bool)

(assert (=> b!7269744 m!7955184))

(declare-fun m!7955186 () Bool)

(assert (=> b!7269744 m!7955186))

(push 1)

(assert (not b!7269749))

(assert tp_is_empty!47049)

(assert (not b!7269742))

(assert (not b!7269748))

(assert (not b!7269751))

(assert (not b!7269750))

(assert (not b!7269753))

(assert (not b!7269746))

(assert (not start!709348))

(assert (not b!7269744))

(assert (not b!7269740))

(assert (not b!7269743))

(assert (not b!7269745))

(assert (not b!7269747))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1910869 () Bool)

(declare-fun d!2262135 () Bool)

(assert (= bs!1910869 (and d!2262135 b!7269745)))

(declare-fun lambda!448378 () Int)

(assert (=> bs!1910869 (not (= lambda!448378 lambda!448342))))

(assert (=> d!2262135 (= (nullableContext!282 ct1!250) (forall!17621 (exprs!8232 ct1!250) lambda!448378))))

(declare-fun bs!1910870 () Bool)

(assert (= bs!1910870 d!2262135))

(declare-fun m!7955254 () Bool)

(assert (=> bs!1910870 m!7955254))

(assert (=> b!7269746 d!2262135))

(declare-fun d!2262137 () Bool)

(declare-fun c!1353133 () Bool)

(declare-fun isEmpty!40702 (List!70900) Bool)

(assert (=> d!2262137 (= c!1353133 (isEmpty!40702 s!7854))))

(declare-fun e!4359456 () Bool)

(assert (=> d!2262137 (= (matchZipper!3696 (set.insert ct2!346 (as set.empty (Set Context!15464))) s!7854) e!4359456)))

(declare-fun b!7269804 () Bool)

(declare-fun nullableZipper!2998 ((Set Context!15464)) Bool)

(assert (=> b!7269804 (= e!4359456 (nullableZipper!2998 (set.insert ct2!346 (as set.empty (Set Context!15464)))))))

(declare-fun b!7269805 () Bool)

(declare-fun head!14996 (List!70900) C!37858)

(declare-fun tail!14489 (List!70900) List!70900)

(assert (=> b!7269805 (= e!4359456 (matchZipper!3696 (derivationStepZipper!3532 (set.insert ct2!346 (as set.empty (Set Context!15464))) (head!14996 s!7854)) (tail!14489 s!7854)))))

(assert (= (and d!2262137 c!1353133) b!7269804))

(assert (= (and d!2262137 (not c!1353133)) b!7269805))

(declare-fun m!7955256 () Bool)

(assert (=> d!2262137 m!7955256))

(assert (=> b!7269804 m!7955174))

(declare-fun m!7955258 () Bool)

(assert (=> b!7269804 m!7955258))

(declare-fun m!7955260 () Bool)

(assert (=> b!7269805 m!7955260))

(assert (=> b!7269805 m!7955174))

(assert (=> b!7269805 m!7955260))

(declare-fun m!7955262 () Bool)

(assert (=> b!7269805 m!7955262))

(declare-fun m!7955264 () Bool)

(assert (=> b!7269805 m!7955264))

(assert (=> b!7269805 m!7955262))

(assert (=> b!7269805 m!7955264))

(declare-fun m!7955266 () Bool)

(assert (=> b!7269805 m!7955266))

(assert (=> start!709348 d!2262137))

(declare-fun bs!1910871 () Bool)

(declare-fun d!2262139 () Bool)

(assert (= bs!1910871 (and d!2262139 b!7269745)))

(declare-fun lambda!448381 () Int)

(assert (=> bs!1910871 (= lambda!448381 lambda!448342)))

(declare-fun bs!1910872 () Bool)

(assert (= bs!1910872 (and d!2262139 d!2262135)))

(assert (=> bs!1910872 (not (= lambda!448381 lambda!448378))))

(assert (=> d!2262139 (= (inv!89991 ct2!346) (forall!17621 (exprs!8232 ct2!346) lambda!448381))))

(declare-fun bs!1910873 () Bool)

(assert (= bs!1910873 d!2262139))

(declare-fun m!7955268 () Bool)

(assert (=> bs!1910873 m!7955268))

(assert (=> start!709348 d!2262139))

(declare-fun bs!1910874 () Bool)

(declare-fun d!2262141 () Bool)

(assert (= bs!1910874 (and d!2262141 b!7269745)))

(declare-fun lambda!448382 () Int)

(assert (=> bs!1910874 (= lambda!448382 lambda!448342)))

(declare-fun bs!1910875 () Bool)

(assert (= bs!1910875 (and d!2262141 d!2262135)))

(assert (=> bs!1910875 (not (= lambda!448382 lambda!448378))))

(declare-fun bs!1910876 () Bool)

(assert (= bs!1910876 (and d!2262141 d!2262139)))

(assert (=> bs!1910876 (= lambda!448382 lambda!448381)))

(assert (=> d!2262141 (= (inv!89991 ct1!250) (forall!17621 (exprs!8232 ct1!250) lambda!448382))))

(declare-fun bs!1910877 () Bool)

(assert (= bs!1910877 d!2262141))

(declare-fun m!7955270 () Bool)

(assert (=> bs!1910877 m!7955270))

(assert (=> start!709348 d!2262141))

(declare-fun d!2262143 () Bool)

(declare-fun nullableFct!3151 (Regex!18792) Bool)

(assert (=> d!2262143 (= (nullable!7992 (h!77223 (exprs!8232 ct1!250))) (nullableFct!3151 (h!77223 (exprs!8232 ct1!250))))))

(declare-fun bs!1910878 () Bool)

(assert (= bs!1910878 d!2262143))

(declare-fun m!7955272 () Bool)

(assert (=> bs!1910878 m!7955272))

(assert (=> b!7269747 d!2262143))

(declare-fun b!7269816 () Bool)

(declare-fun e!4359464 () Bool)

(assert (=> b!7269816 (= e!4359464 (nullable!7992 (h!77223 (exprs!8232 ct1!250))))))

(declare-fun b!7269817 () Bool)

(declare-fun e!4359465 () (Set Context!15464))

(assert (=> b!7269817 (= e!4359465 (as set.empty (Set Context!15464)))))

(declare-fun call!662924 () (Set Context!15464))

(declare-fun e!4359463 () (Set Context!15464))

(declare-fun b!7269818 () Bool)

(assert (=> b!7269818 (= e!4359463 (set.union call!662924 (derivationStepZipperUp!2562 (Context!15465 (t!384969 (exprs!8232 ct1!250))) (h!77224 s!7854))))))

(declare-fun b!7269819 () Bool)

(assert (=> b!7269819 (= e!4359465 call!662924)))

(declare-fun bm!662919 () Bool)

(assert (=> bm!662919 (= call!662924 (derivationStepZipperDown!2726 (h!77223 (exprs!8232 ct1!250)) (Context!15465 (t!384969 (exprs!8232 ct1!250))) (h!77224 s!7854)))))

(declare-fun b!7269820 () Bool)

(assert (=> b!7269820 (= e!4359463 e!4359465)))

(declare-fun c!1353139 () Bool)

(assert (=> b!7269820 (= c!1353139 (is-Cons!70775 (exprs!8232 ct1!250)))))

(declare-fun d!2262145 () Bool)

(declare-fun c!1353138 () Bool)

(assert (=> d!2262145 (= c!1353138 e!4359464)))

(declare-fun res!2947150 () Bool)

(assert (=> d!2262145 (=> (not res!2947150) (not e!4359464))))

(assert (=> d!2262145 (= res!2947150 (is-Cons!70775 (exprs!8232 ct1!250)))))

(assert (=> d!2262145 (= (derivationStepZipperUp!2562 ct1!250 (h!77224 s!7854)) e!4359463)))

(assert (= (and d!2262145 res!2947150) b!7269816))

(assert (= (and d!2262145 c!1353138) b!7269818))

(assert (= (and d!2262145 (not c!1353138)) b!7269820))

(assert (= (and b!7269820 c!1353139) b!7269819))

(assert (= (and b!7269820 (not c!1353139)) b!7269817))

(assert (= (or b!7269818 b!7269819) bm!662919))

(assert (=> b!7269816 m!7955146))

(declare-fun m!7955274 () Bool)

(assert (=> b!7269818 m!7955274))

(declare-fun m!7955276 () Bool)

(assert (=> bm!662919 m!7955276))

(assert (=> b!7269747 d!2262145))

(declare-fun d!2262147 () Bool)

(assert (=> d!2262147 (= (tail!14487 (exprs!8232 ct1!250)) (t!384969 (exprs!8232 ct1!250)))))

(assert (=> b!7269747 d!2262147))

(declare-fun d!2262149 () Bool)

(declare-fun res!2947155 () Bool)

(declare-fun e!4359470 () Bool)

(assert (=> d!2262149 (=> res!2947155 e!4359470)))

(assert (=> d!2262149 (= res!2947155 (is-Nil!70775 lt!2594261))))

(assert (=> d!2262149 (= (forall!17621 lt!2594261 lambda!448342) e!4359470)))

(declare-fun b!7269825 () Bool)

(declare-fun e!4359471 () Bool)

(assert (=> b!7269825 (= e!4359470 e!4359471)))

(declare-fun res!2947156 () Bool)

(assert (=> b!7269825 (=> (not res!2947156) (not e!4359471))))

(declare-fun dynLambda!28923 (Int Regex!18792) Bool)

(assert (=> b!7269825 (= res!2947156 (dynLambda!28923 lambda!448342 (h!77223 lt!2594261)))))

(declare-fun b!7269826 () Bool)

(assert (=> b!7269826 (= e!4359471 (forall!17621 (t!384969 lt!2594261) lambda!448342))))

(assert (= (and d!2262149 (not res!2947155)) b!7269825))

(assert (= (and b!7269825 res!2947156) b!7269826))

(declare-fun b_lambda!280149 () Bool)

(assert (=> (not b_lambda!280149) (not b!7269825)))

(declare-fun m!7955278 () Bool)

(assert (=> b!7269825 m!7955278))

(declare-fun m!7955280 () Bool)

(assert (=> b!7269826 m!7955280))

(assert (=> b!7269750 d!2262149))

(declare-fun bs!1910879 () Bool)

(declare-fun d!2262151 () Bool)

(assert (= bs!1910879 (and d!2262151 b!7269745)))

(declare-fun lambda!448385 () Int)

(assert (=> bs!1910879 (= lambda!448385 lambda!448343)))

(assert (=> d!2262151 true))

(assert (=> d!2262151 (= (derivationStepZipper!3532 lt!2594257 (h!77224 s!7854)) (flatMap!2905 lt!2594257 lambda!448385))))

(declare-fun bs!1910880 () Bool)

(assert (= bs!1910880 d!2262151))

(declare-fun m!7955282 () Bool)

(assert (=> bs!1910880 m!7955282))

(assert (=> b!7269745 d!2262151))

(assert (=> b!7269745 d!2262145))

(declare-fun d!2262153 () Bool)

(declare-fun choose!56385 ((Set Context!15464) Int) (Set Context!15464))

(assert (=> d!2262153 (= (flatMap!2905 lt!2594264 lambda!448343) (choose!56385 lt!2594264 lambda!448343))))

(declare-fun bs!1910881 () Bool)

(assert (= bs!1910881 d!2262153))

(declare-fun m!7955284 () Bool)

(assert (=> bs!1910881 m!7955284))

(assert (=> b!7269745 d!2262153))

(declare-fun b!7269829 () Bool)

(declare-fun e!4359473 () Bool)

(assert (=> b!7269829 (= e!4359473 (nullable!7992 (h!77223 (exprs!8232 lt!2594258))))))

(declare-fun b!7269830 () Bool)

(declare-fun e!4359474 () (Set Context!15464))

(assert (=> b!7269830 (= e!4359474 (as set.empty (Set Context!15464)))))

(declare-fun e!4359472 () (Set Context!15464))

(declare-fun b!7269831 () Bool)

(declare-fun call!662925 () (Set Context!15464))

(assert (=> b!7269831 (= e!4359472 (set.union call!662925 (derivationStepZipperUp!2562 (Context!15465 (t!384969 (exprs!8232 lt!2594258))) (h!77224 s!7854))))))

(declare-fun b!7269832 () Bool)

(assert (=> b!7269832 (= e!4359474 call!662925)))

(declare-fun bm!662920 () Bool)

(assert (=> bm!662920 (= call!662925 (derivationStepZipperDown!2726 (h!77223 (exprs!8232 lt!2594258)) (Context!15465 (t!384969 (exprs!8232 lt!2594258))) (h!77224 s!7854)))))

(declare-fun b!7269833 () Bool)

(assert (=> b!7269833 (= e!4359472 e!4359474)))

(declare-fun c!1353143 () Bool)

(assert (=> b!7269833 (= c!1353143 (is-Cons!70775 (exprs!8232 lt!2594258)))))

(declare-fun d!2262155 () Bool)

(declare-fun c!1353142 () Bool)

(assert (=> d!2262155 (= c!1353142 e!4359473)))

(declare-fun res!2947157 () Bool)

(assert (=> d!2262155 (=> (not res!2947157) (not e!4359473))))

(assert (=> d!2262155 (= res!2947157 (is-Cons!70775 (exprs!8232 lt!2594258)))))

(assert (=> d!2262155 (= (derivationStepZipperUp!2562 lt!2594258 (h!77224 s!7854)) e!4359472)))

(assert (= (and d!2262155 res!2947157) b!7269829))

(assert (= (and d!2262155 c!1353142) b!7269831))

(assert (= (and d!2262155 (not c!1353142)) b!7269833))

(assert (= (and b!7269833 c!1353143) b!7269832))

(assert (= (and b!7269833 (not c!1353143)) b!7269830))

(assert (= (or b!7269831 b!7269832) bm!662920))

(declare-fun m!7955286 () Bool)

(assert (=> b!7269829 m!7955286))

(declare-fun m!7955288 () Bool)

(assert (=> b!7269831 m!7955288))

(declare-fun m!7955290 () Bool)

(assert (=> bm!662920 m!7955290))

(assert (=> b!7269745 d!2262155))

(declare-fun d!2262157 () Bool)

(declare-fun dynLambda!28924 (Int Context!15464) (Set Context!15464))

(assert (=> d!2262157 (= (flatMap!2905 lt!2594257 lambda!448343) (dynLambda!28924 lambda!448343 lt!2594258))))

(declare-fun lt!2594346 () Unit!164202)

(declare-fun choose!56386 ((Set Context!15464) Context!15464 Int) Unit!164202)

(assert (=> d!2262157 (= lt!2594346 (choose!56386 lt!2594257 lt!2594258 lambda!448343))))

(assert (=> d!2262157 (= lt!2594257 (set.insert lt!2594258 (as set.empty (Set Context!15464))))))

(assert (=> d!2262157 (= (lemmaFlatMapOnSingletonSet!2305 lt!2594257 lt!2594258 lambda!448343) lt!2594346)))

(declare-fun b_lambda!280151 () Bool)

(assert (=> (not b_lambda!280151) (not d!2262157)))

(declare-fun bs!1910882 () Bool)

(assert (= bs!1910882 d!2262157))

(assert (=> bs!1910882 m!7955170))

(declare-fun m!7955292 () Bool)

(assert (=> bs!1910882 m!7955292))

(declare-fun m!7955294 () Bool)

(assert (=> bs!1910882 m!7955294))

(assert (=> bs!1910882 m!7955154))

(assert (=> b!7269745 d!2262157))

(declare-fun d!2262159 () Bool)

(assert (=> d!2262159 (= (flatMap!2905 lt!2594264 lambda!448343) (dynLambda!28924 lambda!448343 ct1!250))))

(declare-fun lt!2594347 () Unit!164202)

(assert (=> d!2262159 (= lt!2594347 (choose!56386 lt!2594264 ct1!250 lambda!448343))))

(assert (=> d!2262159 (= lt!2594264 (set.insert ct1!250 (as set.empty (Set Context!15464))))))

(assert (=> d!2262159 (= (lemmaFlatMapOnSingletonSet!2305 lt!2594264 ct1!250 lambda!448343) lt!2594347)))

(declare-fun b_lambda!280153 () Bool)

(assert (=> (not b_lambda!280153) (not d!2262159)))

(declare-fun bs!1910883 () Bool)

(assert (= bs!1910883 d!2262159))

(assert (=> bs!1910883 m!7955160))

(declare-fun m!7955296 () Bool)

(assert (=> bs!1910883 m!7955296))

(declare-fun m!7955298 () Bool)

(assert (=> bs!1910883 m!7955298))

(assert (=> bs!1910883 m!7955162))

(assert (=> b!7269745 d!2262159))

(declare-fun d!2262161 () Bool)

(assert (=> d!2262161 (= (flatMap!2905 lt!2594257 lambda!448343) (choose!56385 lt!2594257 lambda!448343))))

(declare-fun bs!1910884 () Bool)

(assert (= bs!1910884 d!2262161))

(declare-fun m!7955300 () Bool)

(assert (=> bs!1910884 m!7955300))

(assert (=> b!7269745 d!2262161))

(declare-fun d!2262163 () Bool)

(assert (=> d!2262163 (forall!17621 (++!16692 (exprs!8232 ct1!250) (exprs!8232 ct2!346)) lambda!448342)))

(declare-fun lt!2594350 () Unit!164202)

(declare-fun choose!56387 (List!70899 List!70899 Int) Unit!164202)

(assert (=> d!2262163 (= lt!2594350 (choose!56387 (exprs!8232 ct1!250) (exprs!8232 ct2!346) lambda!448342))))

(assert (=> d!2262163 (forall!17621 (exprs!8232 ct1!250) lambda!448342)))

(assert (=> d!2262163 (= (lemmaConcatPreservesForall!1549 (exprs!8232 ct1!250) (exprs!8232 ct2!346) lambda!448342) lt!2594350)))

(declare-fun bs!1910885 () Bool)

(assert (= bs!1910885 d!2262163))

(assert (=> bs!1910885 m!7955164))

(assert (=> bs!1910885 m!7955164))

(declare-fun m!7955302 () Bool)

(assert (=> bs!1910885 m!7955302))

(declare-fun m!7955304 () Bool)

(assert (=> bs!1910885 m!7955304))

(declare-fun m!7955306 () Bool)

(assert (=> bs!1910885 m!7955306))

(assert (=> b!7269745 d!2262163))

(declare-fun b!7269842 () Bool)

(declare-fun e!4359479 () List!70899)

(assert (=> b!7269842 (= e!4359479 (exprs!8232 ct2!346))))

(declare-fun d!2262165 () Bool)

(declare-fun e!4359480 () Bool)

(assert (=> d!2262165 e!4359480))

(declare-fun res!2947162 () Bool)

(assert (=> d!2262165 (=> (not res!2947162) (not e!4359480))))

(declare-fun lt!2594353 () List!70899)

(declare-fun content!14770 (List!70899) (Set Regex!18792))

(assert (=> d!2262165 (= res!2947162 (= (content!14770 lt!2594353) (set.union (content!14770 (exprs!8232 ct1!250)) (content!14770 (exprs!8232 ct2!346)))))))

(assert (=> d!2262165 (= lt!2594353 e!4359479)))

(declare-fun c!1353146 () Bool)

(assert (=> d!2262165 (= c!1353146 (is-Nil!70775 (exprs!8232 ct1!250)))))

(assert (=> d!2262165 (= (++!16692 (exprs!8232 ct1!250) (exprs!8232 ct2!346)) lt!2594353)))

(declare-fun b!7269845 () Bool)

(assert (=> b!7269845 (= e!4359480 (or (not (= (exprs!8232 ct2!346) Nil!70775)) (= lt!2594353 (exprs!8232 ct1!250))))))

(declare-fun b!7269843 () Bool)

(assert (=> b!7269843 (= e!4359479 (Cons!70775 (h!77223 (exprs!8232 ct1!250)) (++!16692 (t!384969 (exprs!8232 ct1!250)) (exprs!8232 ct2!346))))))

(declare-fun b!7269844 () Bool)

(declare-fun res!2947163 () Bool)

(assert (=> b!7269844 (=> (not res!2947163) (not e!4359480))))

(declare-fun size!41818 (List!70899) Int)

(assert (=> b!7269844 (= res!2947163 (= (size!41818 lt!2594353) (+ (size!41818 (exprs!8232 ct1!250)) (size!41818 (exprs!8232 ct2!346)))))))

(assert (= (and d!2262165 c!1353146) b!7269842))

(assert (= (and d!2262165 (not c!1353146)) b!7269843))

(assert (= (and d!2262165 res!2947162) b!7269844))

(assert (= (and b!7269844 res!2947163) b!7269845))

(declare-fun m!7955308 () Bool)

(assert (=> d!2262165 m!7955308))

(declare-fun m!7955310 () Bool)

(assert (=> d!2262165 m!7955310))

(declare-fun m!7955312 () Bool)

(assert (=> d!2262165 m!7955312))

(declare-fun m!7955314 () Bool)

(assert (=> b!7269843 m!7955314))

(declare-fun m!7955316 () Bool)

(assert (=> b!7269844 m!7955316))

(declare-fun m!7955318 () Bool)

(assert (=> b!7269844 m!7955318))

(declare-fun m!7955320 () Bool)

(assert (=> b!7269844 m!7955320))

(assert (=> b!7269745 d!2262165))

(declare-fun d!2262169 () Bool)

(assert (=> d!2262169 (forall!17621 (++!16692 lt!2594261 (exprs!8232 ct2!346)) lambda!448342)))

(declare-fun lt!2594354 () Unit!164202)

(assert (=> d!2262169 (= lt!2594354 (choose!56387 lt!2594261 (exprs!8232 ct2!346) lambda!448342))))

(assert (=> d!2262169 (forall!17621 lt!2594261 lambda!448342)))

(assert (=> d!2262169 (= (lemmaConcatPreservesForall!1549 lt!2594261 (exprs!8232 ct2!346) lambda!448342) lt!2594354)))

(declare-fun bs!1910886 () Bool)

(assert (= bs!1910886 d!2262169))

(assert (=> bs!1910886 m!7955128))

(assert (=> bs!1910886 m!7955128))

(declare-fun m!7955322 () Bool)

(assert (=> bs!1910886 m!7955322))

(declare-fun m!7955324 () Bool)

(assert (=> bs!1910886 m!7955324))

(assert (=> bs!1910886 m!7955132))

(assert (=> b!7269751 d!2262169))

(declare-fun bs!1910887 () Bool)

(declare-fun d!2262171 () Bool)

(assert (= bs!1910887 (and d!2262171 b!7269745)))

(declare-fun lambda!448388 () Int)

(assert (=> bs!1910887 (= lambda!448388 lambda!448342)))

(declare-fun bs!1910888 () Bool)

(assert (= bs!1910888 (and d!2262171 d!2262135)))

(assert (=> bs!1910888 (not (= lambda!448388 lambda!448378))))

(declare-fun bs!1910889 () Bool)

(assert (= bs!1910889 (and d!2262171 d!2262139)))

(assert (=> bs!1910889 (= lambda!448388 lambda!448381)))

(declare-fun bs!1910890 () Bool)

(assert (= bs!1910890 (and d!2262171 d!2262141)))

(assert (=> bs!1910890 (= lambda!448388 lambda!448382)))

(assert (=> d!2262171 (matchZipper!3696 (set.insert (Context!15465 (++!16692 (exprs!8232 lt!2594249) (exprs!8232 ct2!346))) (as set.empty (Set Context!15464))) s!7854)))

(declare-fun lt!2594360 () Unit!164202)

(assert (=> d!2262171 (= lt!2594360 (lemmaConcatPreservesForall!1549 (exprs!8232 lt!2594249) (exprs!8232 ct2!346) lambda!448388))))

(declare-fun lt!2594359 () Unit!164202)

(declare-fun choose!56388 (Context!15464 Context!15464 List!70900) Unit!164202)

(assert (=> d!2262171 (= lt!2594359 (choose!56388 lt!2594249 ct2!346 s!7854))))

(assert (=> d!2262171 (matchZipper!3696 (set.insert ct2!346 (as set.empty (Set Context!15464))) s!7854)))

(assert (=> d!2262171 (= (lemmaPrependingNullableCtxStillMatches!29 lt!2594249 ct2!346 s!7854) lt!2594359)))

(declare-fun bs!1910891 () Bool)

(assert (= bs!1910891 d!2262171))

(declare-fun m!7955338 () Bool)

(assert (=> bs!1910891 m!7955338))

(declare-fun m!7955340 () Bool)

(assert (=> bs!1910891 m!7955340))

(assert (=> bs!1910891 m!7955174))

(assert (=> bs!1910891 m!7955176))

(declare-fun m!7955342 () Bool)

(assert (=> bs!1910891 m!7955342))

(declare-fun m!7955344 () Bool)

(assert (=> bs!1910891 m!7955344))

(declare-fun m!7955346 () Bool)

(assert (=> bs!1910891 m!7955346))

(assert (=> bs!1910891 m!7955338))

(assert (=> bs!1910891 m!7955174))

(assert (=> b!7269751 d!2262171))

(declare-fun d!2262175 () Bool)

(assert (=> d!2262175 (= (flatMap!2905 lt!2594265 lambda!448343) (choose!56385 lt!2594265 lambda!448343))))

(declare-fun bs!1910892 () Bool)

(assert (= bs!1910892 d!2262175))

(declare-fun m!7955348 () Bool)

(assert (=> bs!1910892 m!7955348))

(assert (=> b!7269751 d!2262175))

(declare-fun b!7269852 () Bool)

(declare-fun e!4359485 () Bool)

(assert (=> b!7269852 (= e!4359485 (nullable!7992 (h!77223 (exprs!8232 lt!2594255))))))

(declare-fun b!7269853 () Bool)

(declare-fun e!4359486 () (Set Context!15464))

(assert (=> b!7269853 (= e!4359486 (as set.empty (Set Context!15464)))))

(declare-fun e!4359484 () (Set Context!15464))

(declare-fun call!662926 () (Set Context!15464))

(declare-fun b!7269854 () Bool)

(assert (=> b!7269854 (= e!4359484 (set.union call!662926 (derivationStepZipperUp!2562 (Context!15465 (t!384969 (exprs!8232 lt!2594255))) (h!77224 s!7854))))))

(declare-fun b!7269855 () Bool)

(assert (=> b!7269855 (= e!4359486 call!662926)))

(declare-fun bm!662921 () Bool)

(assert (=> bm!662921 (= call!662926 (derivationStepZipperDown!2726 (h!77223 (exprs!8232 lt!2594255)) (Context!15465 (t!384969 (exprs!8232 lt!2594255))) (h!77224 s!7854)))))

(declare-fun b!7269856 () Bool)

(assert (=> b!7269856 (= e!4359484 e!4359486)))

(declare-fun c!1353151 () Bool)

(assert (=> b!7269856 (= c!1353151 (is-Cons!70775 (exprs!8232 lt!2594255)))))

(declare-fun d!2262177 () Bool)

(declare-fun c!1353150 () Bool)

(assert (=> d!2262177 (= c!1353150 e!4359485)))

(declare-fun res!2947164 () Bool)

(assert (=> d!2262177 (=> (not res!2947164) (not e!4359485))))

(assert (=> d!2262177 (= res!2947164 (is-Cons!70775 (exprs!8232 lt!2594255)))))

(assert (=> d!2262177 (= (derivationStepZipperUp!2562 lt!2594255 (h!77224 s!7854)) e!4359484)))

(assert (= (and d!2262177 res!2947164) b!7269852))

(assert (= (and d!2262177 c!1353150) b!7269854))

(assert (= (and d!2262177 (not c!1353150)) b!7269856))

(assert (= (and b!7269856 c!1353151) b!7269855))

(assert (= (and b!7269856 (not c!1353151)) b!7269853))

(assert (= (or b!7269854 b!7269855) bm!662921))

(declare-fun m!7955350 () Bool)

(assert (=> b!7269852 m!7955350))

(declare-fun m!7955352 () Bool)

(assert (=> b!7269854 m!7955352))

(declare-fun m!7955354 () Bool)

(assert (=> bm!662921 m!7955354))

(assert (=> b!7269751 d!2262177))

(declare-fun d!2262179 () Bool)

(declare-fun c!1353152 () Bool)

(assert (=> d!2262179 (= c!1353152 (isEmpty!40702 s!7854))))

(declare-fun e!4359487 () Bool)

(assert (=> d!2262179 (= (matchZipper!3696 lt!2594265 s!7854) e!4359487)))

(declare-fun b!7269857 () Bool)

(assert (=> b!7269857 (= e!4359487 (nullableZipper!2998 lt!2594265))))

(declare-fun b!7269858 () Bool)

(assert (=> b!7269858 (= e!4359487 (matchZipper!3696 (derivationStepZipper!3532 lt!2594265 (head!14996 s!7854)) (tail!14489 s!7854)))))

(assert (= (and d!2262179 c!1353152) b!7269857))

(assert (= (and d!2262179 (not c!1353152)) b!7269858))

(assert (=> d!2262179 m!7955256))

(declare-fun m!7955356 () Bool)

(assert (=> b!7269857 m!7955356))

(assert (=> b!7269858 m!7955260))

(assert (=> b!7269858 m!7955260))

(declare-fun m!7955358 () Bool)

(assert (=> b!7269858 m!7955358))

(assert (=> b!7269858 m!7955264))

(assert (=> b!7269858 m!7955358))

(assert (=> b!7269858 m!7955264))

(declare-fun m!7955360 () Bool)

(assert (=> b!7269858 m!7955360))

(assert (=> b!7269751 d!2262179))

(declare-fun d!2262181 () Bool)

(assert (=> d!2262181 (= (flatMap!2905 lt!2594265 lambda!448343) (dynLambda!28924 lambda!448343 lt!2594255))))

(declare-fun lt!2594361 () Unit!164202)

(assert (=> d!2262181 (= lt!2594361 (choose!56386 lt!2594265 lt!2594255 lambda!448343))))

(assert (=> d!2262181 (= lt!2594265 (set.insert lt!2594255 (as set.empty (Set Context!15464))))))

(assert (=> d!2262181 (= (lemmaFlatMapOnSingletonSet!2305 lt!2594265 lt!2594255 lambda!448343) lt!2594361)))

(declare-fun b_lambda!280155 () Bool)

(assert (=> (not b_lambda!280155) (not d!2262181)))

(declare-fun bs!1910893 () Bool)

(assert (= bs!1910893 d!2262181))

(assert (=> bs!1910893 m!7955140))

(declare-fun m!7955362 () Bool)

(assert (=> bs!1910893 m!7955362))

(declare-fun m!7955364 () Bool)

(assert (=> bs!1910893 m!7955364))

(assert (=> bs!1910893 m!7955142))

(assert (=> b!7269751 d!2262181))

(declare-fun d!2262183 () Bool)

(declare-fun c!1353153 () Bool)

(assert (=> d!2262183 (= c!1353153 (isEmpty!40702 (t!384970 s!7854)))))

(declare-fun e!4359488 () Bool)

(assert (=> d!2262183 (= (matchZipper!3696 lt!2594262 (t!384970 s!7854)) e!4359488)))

(declare-fun b!7269859 () Bool)

(assert (=> b!7269859 (= e!4359488 (nullableZipper!2998 lt!2594262))))

(declare-fun b!7269860 () Bool)

(assert (=> b!7269860 (= e!4359488 (matchZipper!3696 (derivationStepZipper!3532 lt!2594262 (head!14996 (t!384970 s!7854))) (tail!14489 (t!384970 s!7854))))))

(assert (= (and d!2262183 c!1353153) b!7269859))

(assert (= (and d!2262183 (not c!1353153)) b!7269860))

(declare-fun m!7955366 () Bool)

(assert (=> d!2262183 m!7955366))

(declare-fun m!7955368 () Bool)

(assert (=> b!7269859 m!7955368))

(declare-fun m!7955370 () Bool)

(assert (=> b!7269860 m!7955370))

(assert (=> b!7269860 m!7955370))

(declare-fun m!7955372 () Bool)

(assert (=> b!7269860 m!7955372))

(declare-fun m!7955374 () Bool)

(assert (=> b!7269860 m!7955374))

(assert (=> b!7269860 m!7955372))

(assert (=> b!7269860 m!7955374))

(declare-fun m!7955376 () Bool)

(assert (=> b!7269860 m!7955376))

(assert (=> b!7269751 d!2262183))

(declare-fun d!2262185 () Bool)

(declare-fun res!2947165 () Bool)

(declare-fun e!4359489 () Bool)

(assert (=> d!2262185 (=> res!2947165 e!4359489)))

(assert (=> d!2262185 (= res!2947165 (is-Nil!70775 (exprs!8232 ct2!346)))))

(assert (=> d!2262185 (= (forall!17621 (exprs!8232 ct2!346) lambda!448342) e!4359489)))

(declare-fun b!7269861 () Bool)

(declare-fun e!4359490 () Bool)

(assert (=> b!7269861 (= e!4359489 e!4359490)))

(declare-fun res!2947166 () Bool)

(assert (=> b!7269861 (=> (not res!2947166) (not e!4359490))))

(assert (=> b!7269861 (= res!2947166 (dynLambda!28923 lambda!448342 (h!77223 (exprs!8232 ct2!346))))))

(declare-fun b!7269862 () Bool)

(assert (=> b!7269862 (= e!4359490 (forall!17621 (t!384969 (exprs!8232 ct2!346)) lambda!448342))))

(assert (= (and d!2262185 (not res!2947165)) b!7269861))

(assert (= (and b!7269861 res!2947166) b!7269862))

(declare-fun b_lambda!280157 () Bool)

(assert (=> (not b_lambda!280157) (not b!7269861)))

(declare-fun m!7955378 () Bool)

(assert (=> b!7269861 m!7955378))

(declare-fun m!7955380 () Bool)

(assert (=> b!7269862 m!7955380))

(assert (=> b!7269749 d!2262185))

(declare-fun b!7269893 () Bool)

(declare-fun e!4359512 () (Set Context!15464))

(declare-fun call!662939 () (Set Context!15464))

(declare-fun call!662943 () (Set Context!15464))

(assert (=> b!7269893 (= e!4359512 (set.union call!662939 call!662943))))

(declare-fun call!662942 () List!70899)

(declare-fun c!1353169 () Bool)

(declare-fun bm!662935 () Bool)

(declare-fun c!1353171 () Bool)

(declare-fun $colon$colon!2966 (List!70899 Regex!18792) List!70899)

(assert (=> bm!662935 (= call!662942 ($colon$colon!2966 (exprs!8232 lt!2594249) (ite (or c!1353171 c!1353169) (regTwo!38096 (h!77223 (exprs!8232 ct1!250))) (h!77223 (exprs!8232 ct1!250)))))))

(declare-fun b!7269894 () Bool)

(declare-fun e!4359511 () (Set Context!15464))

(declare-fun call!662940 () (Set Context!15464))

(assert (=> b!7269894 (= e!4359511 call!662940)))

(declare-fun bm!662936 () Bool)

(declare-fun call!662944 () (Set Context!15464))

(assert (=> bm!662936 (= call!662944 call!662943)))

(declare-fun call!662941 () List!70899)

(declare-fun bm!662937 () Bool)

(declare-fun c!1353170 () Bool)

(assert (=> bm!662937 (= call!662943 (derivationStepZipperDown!2726 (ite c!1353170 (regTwo!38097 (h!77223 (exprs!8232 ct1!250))) (ite c!1353171 (regTwo!38096 (h!77223 (exprs!8232 ct1!250))) (ite c!1353169 (regOne!38096 (h!77223 (exprs!8232 ct1!250))) (reg!19121 (h!77223 (exprs!8232 ct1!250)))))) (ite (or c!1353170 c!1353171) lt!2594249 (Context!15465 call!662941)) (h!77224 s!7854)))))

(declare-fun bm!662938 () Bool)

(assert (=> bm!662938 (= call!662941 call!662942)))

(declare-fun b!7269895 () Bool)

(declare-fun e!4359507 () (Set Context!15464))

(assert (=> b!7269895 (= e!4359507 (set.insert lt!2594249 (as set.empty (Set Context!15464))))))

(declare-fun bm!662939 () Bool)

(assert (=> bm!662939 (= call!662939 (derivationStepZipperDown!2726 (ite c!1353170 (regOne!38097 (h!77223 (exprs!8232 ct1!250))) (regOne!38096 (h!77223 (exprs!8232 ct1!250)))) (ite c!1353170 lt!2594249 (Context!15465 call!662942)) (h!77224 s!7854)))))

(declare-fun b!7269896 () Bool)

(declare-fun e!4359510 () Bool)

(assert (=> b!7269896 (= e!4359510 (nullable!7992 (regOne!38096 (h!77223 (exprs!8232 ct1!250)))))))

(declare-fun b!7269897 () Bool)

(declare-fun e!4359509 () (Set Context!15464))

(assert (=> b!7269897 (= e!4359509 (as set.empty (Set Context!15464)))))

(declare-fun b!7269898 () Bool)

(declare-fun e!4359508 () (Set Context!15464))

(assert (=> b!7269898 (= e!4359508 (set.union call!662939 call!662944))))

(declare-fun b!7269899 () Bool)

(declare-fun c!1353168 () Bool)

(assert (=> b!7269899 (= c!1353168 (is-Star!18792 (h!77223 (exprs!8232 ct1!250))))))

(assert (=> b!7269899 (= e!4359511 e!4359509)))

(declare-fun d!2262187 () Bool)

(declare-fun c!1353172 () Bool)

(assert (=> d!2262187 (= c!1353172 (and (is-ElementMatch!18792 (h!77223 (exprs!8232 ct1!250))) (= (c!1353122 (h!77223 (exprs!8232 ct1!250))) (h!77224 s!7854))))))

(assert (=> d!2262187 (= (derivationStepZipperDown!2726 (h!77223 (exprs!8232 ct1!250)) lt!2594249 (h!77224 s!7854)) e!4359507)))

(declare-fun bm!662934 () Bool)

(assert (=> bm!662934 (= call!662940 call!662944)))

(declare-fun b!7269903 () Bool)

(assert (=> b!7269903 (= e!4359507 e!4359512)))

(assert (=> b!7269903 (= c!1353170 (is-Union!18792 (h!77223 (exprs!8232 ct1!250))))))

(declare-fun b!7269905 () Bool)

(assert (=> b!7269905 (= e!4359508 e!4359511)))

(assert (=> b!7269905 (= c!1353169 (is-Concat!27637 (h!77223 (exprs!8232 ct1!250))))))

(declare-fun b!7269906 () Bool)

(assert (=> b!7269906 (= e!4359509 call!662940)))

(declare-fun b!7269907 () Bool)

(assert (=> b!7269907 (= c!1353171 e!4359510)))

(declare-fun res!2947169 () Bool)

(assert (=> b!7269907 (=> (not res!2947169) (not e!4359510))))

(assert (=> b!7269907 (= res!2947169 (is-Concat!27637 (h!77223 (exprs!8232 ct1!250))))))

(assert (=> b!7269907 (= e!4359512 e!4359508)))

(assert (= (and d!2262187 c!1353172) b!7269895))

(assert (= (and d!2262187 (not c!1353172)) b!7269903))

(assert (= (and b!7269903 c!1353170) b!7269893))

(assert (= (and b!7269903 (not c!1353170)) b!7269907))

(assert (= (and b!7269907 res!2947169) b!7269896))

(assert (= (and b!7269907 c!1353171) b!7269898))

(assert (= (and b!7269907 (not c!1353171)) b!7269905))

(assert (= (and b!7269905 c!1353169) b!7269894))

(assert (= (and b!7269905 (not c!1353169)) b!7269899))

(assert (= (and b!7269899 c!1353168) b!7269906))

(assert (= (and b!7269899 (not c!1353168)) b!7269897))

(assert (= (or b!7269894 b!7269906) bm!662938))

(assert (= (or b!7269894 b!7269906) bm!662934))

(assert (= (or b!7269898 bm!662938) bm!662935))

(assert (= (or b!7269898 bm!662934) bm!662936))

(assert (= (or b!7269893 b!7269898) bm!662939))

(assert (= (or b!7269893 bm!662936) bm!662937))

(declare-fun m!7955386 () Bool)

(assert (=> b!7269896 m!7955386))

(declare-fun m!7955388 () Bool)

(assert (=> bm!662935 m!7955388))

(declare-fun m!7955390 () Bool)

(assert (=> bm!662939 m!7955390))

(declare-fun m!7955392 () Bool)

(assert (=> bm!662937 m!7955392))

(declare-fun m!7955394 () Bool)

(assert (=> b!7269895 m!7955394))

(assert (=> b!7269744 d!2262187))

(declare-fun b!7269918 () Bool)

(declare-fun e!4359522 () Bool)

(assert (=> b!7269918 (= e!4359522 (nullable!7992 (h!77223 (exprs!8232 lt!2594249))))))

(declare-fun b!7269919 () Bool)

(declare-fun e!4359523 () (Set Context!15464))

(assert (=> b!7269919 (= e!4359523 (as set.empty (Set Context!15464)))))

(declare-fun call!662945 () (Set Context!15464))

(declare-fun e!4359521 () (Set Context!15464))

(declare-fun b!7269920 () Bool)

(assert (=> b!7269920 (= e!4359521 (set.union call!662945 (derivationStepZipperUp!2562 (Context!15465 (t!384969 (exprs!8232 lt!2594249))) (h!77224 s!7854))))))

(declare-fun b!7269921 () Bool)

(assert (=> b!7269921 (= e!4359523 call!662945)))

(declare-fun bm!662940 () Bool)

(assert (=> bm!662940 (= call!662945 (derivationStepZipperDown!2726 (h!77223 (exprs!8232 lt!2594249)) (Context!15465 (t!384969 (exprs!8232 lt!2594249))) (h!77224 s!7854)))))

(declare-fun b!7269922 () Bool)

(assert (=> b!7269922 (= e!4359521 e!4359523)))

(declare-fun c!1353180 () Bool)

(assert (=> b!7269922 (= c!1353180 (is-Cons!70775 (exprs!8232 lt!2594249)))))

(declare-fun d!2262193 () Bool)

(declare-fun c!1353179 () Bool)

(assert (=> d!2262193 (= c!1353179 e!4359522)))

(declare-fun res!2947172 () Bool)

(assert (=> d!2262193 (=> (not res!2947172) (not e!4359522))))

(assert (=> d!2262193 (= res!2947172 (is-Cons!70775 (exprs!8232 lt!2594249)))))

(assert (=> d!2262193 (= (derivationStepZipperUp!2562 lt!2594249 (h!77224 s!7854)) e!4359521)))

(assert (= (and d!2262193 res!2947172) b!7269918))

(assert (= (and d!2262193 c!1353179) b!7269920))

(assert (= (and d!2262193 (not c!1353179)) b!7269922))

(assert (= (and b!7269922 c!1353180) b!7269921))

(assert (= (and b!7269922 (not c!1353180)) b!7269919))

(assert (= (or b!7269920 b!7269921) bm!662940))

(declare-fun m!7955396 () Bool)

(assert (=> b!7269918 m!7955396))

(declare-fun m!7955398 () Bool)

(assert (=> b!7269920 m!7955398))

(declare-fun m!7955400 () Bool)

(assert (=> bm!662940 m!7955400))

(assert (=> b!7269744 d!2262193))

(declare-fun d!2262195 () Bool)

(assert (=> d!2262195 (= (isEmpty!40700 (exprs!8232 ct1!250)) (is-Nil!70775 (exprs!8232 ct1!250)))))

(assert (=> b!7269742 d!2262195))

(assert (=> b!7269753 d!2262169))

(declare-fun b!7269923 () Bool)

(declare-fun e!4359529 () (Set Context!15464))

(declare-fun call!662950 () (Set Context!15464))

(declare-fun call!662954 () (Set Context!15464))

(assert (=> b!7269923 (= e!4359529 (set.union call!662950 call!662954))))

(declare-fun c!1353182 () Bool)

(declare-fun c!1353184 () Bool)

(declare-fun call!662953 () List!70899)

(declare-fun bm!662946 () Bool)

(assert (=> bm!662946 (= call!662953 ($colon$colon!2966 (exprs!8232 lt!2594255) (ite (or c!1353184 c!1353182) (regTwo!38096 (h!77223 (exprs!8232 ct1!250))) (h!77223 (exprs!8232 ct1!250)))))))

(declare-fun b!7269924 () Bool)

(declare-fun e!4359528 () (Set Context!15464))

(declare-fun call!662951 () (Set Context!15464))

(assert (=> b!7269924 (= e!4359528 call!662951)))

(declare-fun bm!662947 () Bool)

(declare-fun call!662955 () (Set Context!15464))

(assert (=> bm!662947 (= call!662955 call!662954)))

(declare-fun c!1353183 () Bool)

(declare-fun bm!662948 () Bool)

(declare-fun call!662952 () List!70899)

(assert (=> bm!662948 (= call!662954 (derivationStepZipperDown!2726 (ite c!1353183 (regTwo!38097 (h!77223 (exprs!8232 ct1!250))) (ite c!1353184 (regTwo!38096 (h!77223 (exprs!8232 ct1!250))) (ite c!1353182 (regOne!38096 (h!77223 (exprs!8232 ct1!250))) (reg!19121 (h!77223 (exprs!8232 ct1!250)))))) (ite (or c!1353183 c!1353184) lt!2594255 (Context!15465 call!662952)) (h!77224 s!7854)))))

(declare-fun bm!662949 () Bool)

(assert (=> bm!662949 (= call!662952 call!662953)))

(declare-fun b!7269925 () Bool)

(declare-fun e!4359524 () (Set Context!15464))

(assert (=> b!7269925 (= e!4359524 (set.insert lt!2594255 (as set.empty (Set Context!15464))))))

(declare-fun bm!662950 () Bool)

(assert (=> bm!662950 (= call!662950 (derivationStepZipperDown!2726 (ite c!1353183 (regOne!38097 (h!77223 (exprs!8232 ct1!250))) (regOne!38096 (h!77223 (exprs!8232 ct1!250)))) (ite c!1353183 lt!2594255 (Context!15465 call!662953)) (h!77224 s!7854)))))

(declare-fun b!7269926 () Bool)

(declare-fun e!4359527 () Bool)

(assert (=> b!7269926 (= e!4359527 (nullable!7992 (regOne!38096 (h!77223 (exprs!8232 ct1!250)))))))

(declare-fun b!7269927 () Bool)

(declare-fun e!4359526 () (Set Context!15464))

(assert (=> b!7269927 (= e!4359526 (as set.empty (Set Context!15464)))))

(declare-fun b!7269928 () Bool)

(declare-fun e!4359525 () (Set Context!15464))

(assert (=> b!7269928 (= e!4359525 (set.union call!662950 call!662955))))

(declare-fun b!7269929 () Bool)

(declare-fun c!1353181 () Bool)

(assert (=> b!7269929 (= c!1353181 (is-Star!18792 (h!77223 (exprs!8232 ct1!250))))))

(assert (=> b!7269929 (= e!4359528 e!4359526)))

(declare-fun d!2262197 () Bool)

(declare-fun c!1353185 () Bool)

(assert (=> d!2262197 (= c!1353185 (and (is-ElementMatch!18792 (h!77223 (exprs!8232 ct1!250))) (= (c!1353122 (h!77223 (exprs!8232 ct1!250))) (h!77224 s!7854))))))

(assert (=> d!2262197 (= (derivationStepZipperDown!2726 (h!77223 (exprs!8232 ct1!250)) lt!2594255 (h!77224 s!7854)) e!4359524)))

(declare-fun bm!662945 () Bool)

(assert (=> bm!662945 (= call!662951 call!662955)))

(declare-fun b!7269930 () Bool)

(assert (=> b!7269930 (= e!4359524 e!4359529)))

(assert (=> b!7269930 (= c!1353183 (is-Union!18792 (h!77223 (exprs!8232 ct1!250))))))

(declare-fun b!7269931 () Bool)

(assert (=> b!7269931 (= e!4359525 e!4359528)))

(assert (=> b!7269931 (= c!1353182 (is-Concat!27637 (h!77223 (exprs!8232 ct1!250))))))

(declare-fun b!7269932 () Bool)

(assert (=> b!7269932 (= e!4359526 call!662951)))

(declare-fun b!7269933 () Bool)

(assert (=> b!7269933 (= c!1353184 e!4359527)))

(declare-fun res!2947173 () Bool)

(assert (=> b!7269933 (=> (not res!2947173) (not e!4359527))))

(assert (=> b!7269933 (= res!2947173 (is-Concat!27637 (h!77223 (exprs!8232 ct1!250))))))

(assert (=> b!7269933 (= e!4359529 e!4359525)))

(assert (= (and d!2262197 c!1353185) b!7269925))

(assert (= (and d!2262197 (not c!1353185)) b!7269930))

(assert (= (and b!7269930 c!1353183) b!7269923))

(assert (= (and b!7269930 (not c!1353183)) b!7269933))

(assert (= (and b!7269933 res!2947173) b!7269926))

(assert (= (and b!7269933 c!1353184) b!7269928))

(assert (= (and b!7269933 (not c!1353184)) b!7269931))

(assert (= (and b!7269931 c!1353182) b!7269924))

(assert (= (and b!7269931 (not c!1353182)) b!7269929))

(assert (= (and b!7269929 c!1353181) b!7269932))

(assert (= (and b!7269929 (not c!1353181)) b!7269927))

(assert (= (or b!7269924 b!7269932) bm!662949))

(assert (= (or b!7269924 b!7269932) bm!662945))

(assert (= (or b!7269928 bm!662949) bm!662946))

(assert (= (or b!7269928 bm!662945) bm!662947))

(assert (= (or b!7269923 b!7269928) bm!662950))

(assert (= (or b!7269923 bm!662947) bm!662948))

(assert (=> b!7269926 m!7955386))

(declare-fun m!7955402 () Bool)

(assert (=> bm!662946 m!7955402))

(declare-fun m!7955404 () Bool)

(assert (=> bm!662950 m!7955404))

(declare-fun m!7955406 () Bool)

(assert (=> bm!662948 m!7955406))

(assert (=> b!7269925 m!7955142))

(assert (=> b!7269753 d!2262197))

(assert (=> b!7269753 d!2262177))

(declare-fun b!7269934 () Bool)

(declare-fun e!4359530 () List!70899)

(assert (=> b!7269934 (= e!4359530 (exprs!8232 ct2!346))))

(declare-fun d!2262199 () Bool)

(declare-fun e!4359531 () Bool)

(assert (=> d!2262199 e!4359531))

(declare-fun res!2947174 () Bool)

(assert (=> d!2262199 (=> (not res!2947174) (not e!4359531))))

(declare-fun lt!2594362 () List!70899)

(assert (=> d!2262199 (= res!2947174 (= (content!14770 lt!2594362) (set.union (content!14770 lt!2594261) (content!14770 (exprs!8232 ct2!346)))))))

(assert (=> d!2262199 (= lt!2594362 e!4359530)))

(declare-fun c!1353186 () Bool)

(assert (=> d!2262199 (= c!1353186 (is-Nil!70775 lt!2594261))))

(assert (=> d!2262199 (= (++!16692 lt!2594261 (exprs!8232 ct2!346)) lt!2594362)))

(declare-fun b!7269937 () Bool)

(assert (=> b!7269937 (= e!4359531 (or (not (= (exprs!8232 ct2!346) Nil!70775)) (= lt!2594362 lt!2594261)))))

(declare-fun b!7269935 () Bool)

(assert (=> b!7269935 (= e!4359530 (Cons!70775 (h!77223 lt!2594261) (++!16692 (t!384969 lt!2594261) (exprs!8232 ct2!346))))))

(declare-fun b!7269936 () Bool)

(declare-fun res!2947175 () Bool)

(assert (=> b!7269936 (=> (not res!2947175) (not e!4359531))))

(assert (=> b!7269936 (= res!2947175 (= (size!41818 lt!2594362) (+ (size!41818 lt!2594261) (size!41818 (exprs!8232 ct2!346)))))))

(assert (= (and d!2262199 c!1353186) b!7269934))

(assert (= (and d!2262199 (not c!1353186)) b!7269935))

(assert (= (and d!2262199 res!2947174) b!7269936))

(assert (= (and b!7269936 res!2947175) b!7269937))

(declare-fun m!7955408 () Bool)

(assert (=> d!2262199 m!7955408))

(declare-fun m!7955410 () Bool)

(assert (=> d!2262199 m!7955410))

(assert (=> d!2262199 m!7955312))

(declare-fun m!7955412 () Bool)

(assert (=> b!7269935 m!7955412))

(declare-fun m!7955414 () Bool)

(assert (=> b!7269936 m!7955414))

(declare-fun m!7955416 () Bool)

(assert (=> b!7269936 m!7955416))

(assert (=> b!7269936 m!7955320))

(assert (=> b!7269753 d!2262199))

(declare-fun b!7269942 () Bool)

(declare-fun e!4359534 () Bool)

(declare-fun tp!2040979 () Bool)

(declare-fun tp!2040980 () Bool)

(assert (=> b!7269942 (= e!4359534 (and tp!2040979 tp!2040980))))

(assert (=> b!7269740 (= tp!2040964 e!4359534)))

(assert (= (and b!7269740 (is-Cons!70775 (exprs!8232 ct2!346))) b!7269942))

(declare-fun b!7269943 () Bool)

(declare-fun e!4359535 () Bool)

(declare-fun tp!2040981 () Bool)

(declare-fun tp!2040982 () Bool)

(assert (=> b!7269943 (= e!4359535 (and tp!2040981 tp!2040982))))

(assert (=> b!7269748 (= tp!2040965 e!4359535)))

(assert (= (and b!7269748 (is-Cons!70775 (exprs!8232 ct1!250))) b!7269943))

(declare-fun b!7269948 () Bool)

(declare-fun e!4359538 () Bool)

(declare-fun tp!2040985 () Bool)

(assert (=> b!7269948 (= e!4359538 (and tp_is_empty!47049 tp!2040985))))

(assert (=> b!7269743 (= tp!2040963 e!4359538)))

(assert (= (and b!7269743 (is-Cons!70776 (t!384970 s!7854))) b!7269948))

(declare-fun b_lambda!280159 () Bool)

(assert (= b_lambda!280151 (or b!7269745 b_lambda!280159)))

(declare-fun bs!1910899 () Bool)

(declare-fun d!2262201 () Bool)

(assert (= bs!1910899 (and d!2262201 b!7269745)))

(assert (=> bs!1910899 (= (dynLambda!28924 lambda!448343 lt!2594258) (derivationStepZipperUp!2562 lt!2594258 (h!77224 s!7854)))))

(assert (=> bs!1910899 m!7955172))

(assert (=> d!2262157 d!2262201))

(declare-fun b_lambda!280161 () Bool)

(assert (= b_lambda!280157 (or b!7269745 b_lambda!280161)))

(declare-fun bs!1910900 () Bool)

(declare-fun d!2262203 () Bool)

(assert (= bs!1910900 (and d!2262203 b!7269745)))

(declare-fun validRegex!9582 (Regex!18792) Bool)

(assert (=> bs!1910900 (= (dynLambda!28923 lambda!448342 (h!77223 (exprs!8232 ct2!346))) (validRegex!9582 (h!77223 (exprs!8232 ct2!346))))))

(declare-fun m!7955418 () Bool)

(assert (=> bs!1910900 m!7955418))

(assert (=> b!7269861 d!2262203))

(declare-fun b_lambda!280163 () Bool)

(assert (= b_lambda!280155 (or b!7269745 b_lambda!280163)))

(declare-fun bs!1910901 () Bool)

(declare-fun d!2262205 () Bool)

(assert (= bs!1910901 (and d!2262205 b!7269745)))

(assert (=> bs!1910901 (= (dynLambda!28924 lambda!448343 lt!2594255) (derivationStepZipperUp!2562 lt!2594255 (h!77224 s!7854)))))

(assert (=> bs!1910901 m!7955130))

(assert (=> d!2262181 d!2262205))

(declare-fun b_lambda!280165 () Bool)

(assert (= b_lambda!280149 (or b!7269745 b_lambda!280165)))

(declare-fun bs!1910902 () Bool)

(declare-fun d!2262207 () Bool)

(assert (= bs!1910902 (and d!2262207 b!7269745)))

(assert (=> bs!1910902 (= (dynLambda!28923 lambda!448342 (h!77223 lt!2594261)) (validRegex!9582 (h!77223 lt!2594261)))))

(declare-fun m!7955420 () Bool)

(assert (=> bs!1910902 m!7955420))

(assert (=> b!7269825 d!2262207))

(declare-fun b_lambda!280167 () Bool)

(assert (= b_lambda!280153 (or b!7269745 b_lambda!280167)))

(declare-fun bs!1910903 () Bool)

(declare-fun d!2262209 () Bool)

(assert (= bs!1910903 (and d!2262209 b!7269745)))

(assert (=> bs!1910903 (= (dynLambda!28924 lambda!448343 ct1!250) (derivationStepZipperUp!2562 ct1!250 (h!77224 s!7854)))))

(assert (=> bs!1910903 m!7955148))

(assert (=> d!2262159 d!2262209))

(push 1)

(assert (not d!2262163))

(assert (not d!2262175))

(assert (not b!7269860))

(assert (not b!7269852))

(assert (not bm!662935))

(assert (not b!7269935))

(assert (not b!7269936))

(assert (not b!7269920))

(assert (not b!7269826))

(assert (not d!2262141))

(assert (not b!7269943))

(assert tp_is_empty!47049)

(assert (not d!2262135))

(assert (not b_lambda!280161))

(assert (not b!7269805))

(assert (not d!2262171))

(assert (not d!2262151))

(assert (not bm!662939))

(assert (not bm!662948))

(assert (not b!7269918))

(assert (not bs!1910899))

(assert (not d!2262169))

(assert (not b!7269829))

(assert (not bm!662946))

(assert (not b!7269843))

(assert (not b!7269818))

(assert (not d!2262143))

(assert (not d!2262165))

(assert (not d!2262199))

(assert (not b!7269857))

(assert (not d!2262157))

(assert (not bs!1910901))

(assert (not bm!662940))

(assert (not b!7269816))

(assert (not bm!662937))

(assert (not b_lambda!280163))

(assert (not b!7269831))

(assert (not b!7269844))

(assert (not b!7269862))

(assert (not b!7269859))

(assert (not b!7269804))

(assert (not bs!1910902))

(assert (not d!2262159))

(assert (not bm!662920))

(assert (not b_lambda!280159))

(assert (not d!2262139))

(assert (not b_lambda!280167))

(assert (not b!7269858))

(assert (not d!2262161))

(assert (not d!2262137))

(assert (not bm!662950))

(assert (not b!7269942))

(assert (not bs!1910900))

(assert (not bs!1910903))

(assert (not b_lambda!280165))

(assert (not b!7269896))

(assert (not d!2262181))

(assert (not b!7269926))

(assert (not d!2262179))

(assert (not bm!662919))

(assert (not b!7269854))

(assert (not d!2262183))

(assert (not d!2262153))

(assert (not b!7269948))

(assert (not bm!662921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

