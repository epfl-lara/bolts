; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701922 () Bool)

(assert start!701922)

(declare-fun b!7232917 () Bool)

(assert (=> b!7232917 true))

(declare-fun b!7232914 () Bool)

(declare-fun e!4336087 () Bool)

(declare-fun tp_is_empty!46469 () Bool)

(declare-fun tp!2034113 () Bool)

(assert (=> b!7232914 (= e!4336087 (and tp_is_empty!46469 tp!2034113))))

(declare-fun b!7232915 () Bool)

(declare-fun res!2934469 () Bool)

(declare-fun e!4336091 () Bool)

(assert (=> b!7232915 (=> (not res!2934469) (not e!4336091))))

(declare-datatypes ((C!37278 0))(
  ( (C!37279 (val!28587 Int)) )
))
(declare-datatypes ((Regex!18502 0))(
  ( (ElementMatch!18502 (c!1342078 C!37278)) (Concat!27347 (regOne!37516 Regex!18502) (regTwo!37516 Regex!18502)) (EmptyExpr!18502) (Star!18502 (reg!18831 Regex!18502)) (EmptyLang!18502) (Union!18502 (regOne!37517 Regex!18502) (regTwo!37517 Regex!18502)) )
))
(declare-datatypes ((List!70114 0))(
  ( (Nil!69990) (Cons!69990 (h!76438 Regex!18502) (t!384163 List!70114)) )
))
(declare-datatypes ((Context!14884 0))(
  ( (Context!14885 (exprs!7942 List!70114)) )
))
(declare-fun ct2!328 () Context!14884)

(declare-datatypes ((List!70115 0))(
  ( (Nil!69991) (Cons!69991 (h!76439 C!37278) (t!384164 List!70115)) )
))
(declare-fun s2!1849 () List!70115)

(declare-fun matchZipper!3412 ((Set Context!14884) List!70115) Bool)

(assert (=> b!7232915 (= res!2934469 (matchZipper!3412 (set.insert ct2!328 (as set.empty (Set Context!14884))) s2!1849))))

(declare-fun b!7232916 () Bool)

(declare-fun e!4336096 () Bool)

(declare-fun tp!2034116 () Bool)

(assert (=> b!7232916 (= e!4336096 tp!2034116)))

(declare-fun e!4336095 () Bool)

(declare-fun e!4336094 () Bool)

(assert (=> b!7232917 (= e!4336095 (not e!4336094))))

(declare-fun res!2934467 () Bool)

(assert (=> b!7232917 (=> res!2934467 e!4336094)))

(declare-fun lt!2574019 () (Set Context!14884))

(declare-fun lambda!439639 () Int)

(declare-fun exists!4147 ((Set Context!14884) Int) Bool)

(assert (=> b!7232917 (= res!2934467 (not (exists!4147 lt!2574019 lambda!439639)))))

(declare-datatypes ((List!70116 0))(
  ( (Nil!69992) (Cons!69992 (h!76440 Context!14884) (t!384165 List!70116)) )
))
(declare-fun lt!2574030 () List!70116)

(declare-fun exists!4148 (List!70116 Int) Bool)

(assert (=> b!7232917 (exists!4148 lt!2574030 lambda!439639)))

(declare-datatypes ((Unit!163541 0))(
  ( (Unit!163542) )
))
(declare-fun lt!2574031 () Unit!163541)

(declare-fun s1!1971 () List!70115)

(declare-fun lemmaZipperMatchesExistsMatchingContext!645 (List!70116 List!70115) Unit!163541)

(assert (=> b!7232917 (= lt!2574031 (lemmaZipperMatchesExistsMatchingContext!645 lt!2574030 (t!384164 s1!1971)))))

(declare-fun toList!11359 ((Set Context!14884)) List!70116)

(assert (=> b!7232917 (= lt!2574030 (toList!11359 lt!2574019))))

(declare-fun res!2934472 () Bool)

(assert (=> start!701922 (=> (not res!2934472) (not e!4336091))))

(declare-fun lt!2574021 () (Set Context!14884))

(assert (=> start!701922 (= res!2934472 (matchZipper!3412 lt!2574021 s1!1971))))

(declare-fun ct1!232 () Context!14884)

(assert (=> start!701922 (= lt!2574021 (set.insert ct1!232 (as set.empty (Set Context!14884))))))

(assert (=> start!701922 e!4336091))

(declare-fun inv!89266 (Context!14884) Bool)

(assert (=> start!701922 (and (inv!89266 ct1!232) e!4336096)))

(assert (=> start!701922 e!4336087))

(declare-fun e!4336093 () Bool)

(assert (=> start!701922 e!4336093))

(declare-fun e!4336092 () Bool)

(assert (=> start!701922 (and (inv!89266 ct2!328) e!4336092)))

(declare-fun b!7232918 () Bool)

(declare-fun tp!2034115 () Bool)

(assert (=> b!7232918 (= e!4336092 tp!2034115)))

(declare-fun b!7232919 () Bool)

(declare-fun tp!2034114 () Bool)

(assert (=> b!7232919 (= e!4336093 (and tp_is_empty!46469 tp!2034114))))

(declare-fun b!7232920 () Bool)

(declare-fun e!4336088 () Bool)

(declare-fun e!4336090 () Bool)

(assert (=> b!7232920 (= e!4336088 e!4336090)))

(declare-fun res!2934468 () Bool)

(assert (=> b!7232920 (=> res!2934468 e!4336090)))

(declare-fun lt!2574026 () List!70114)

(declare-fun isEmpty!40339 (List!70114) Bool)

(assert (=> b!7232920 (= res!2934468 (isEmpty!40339 lt!2574026))))

(declare-fun lt!2574025 () Unit!163541)

(declare-fun lambda!439638 () Int)

(declare-fun lemmaConcatPreservesForall!1311 (List!70114 List!70114 Int) Unit!163541)

(assert (=> b!7232920 (= lt!2574025 (lemmaConcatPreservesForall!1311 (exprs!7942 ct1!232) (exprs!7942 ct2!328) lambda!439638))))

(declare-fun lt!2574023 () (Set Context!14884))

(declare-fun derivationStepZipperUp!2376 (Context!14884 C!37278) (Set Context!14884))

(assert (=> b!7232920 (= lt!2574023 (derivationStepZipperUp!2376 (Context!14885 lt!2574026) (h!76439 s1!1971)))))

(declare-fun lt!2574018 () Unit!163541)

(assert (=> b!7232920 (= lt!2574018 (lemmaConcatPreservesForall!1311 (exprs!7942 ct1!232) (exprs!7942 ct2!328) lambda!439638))))

(declare-fun lt!2574024 () (Set Context!14884))

(declare-fun derivationStepZipperDown!2546 (Regex!18502 Context!14884 C!37278) (Set Context!14884))

(declare-fun tail!14125 (List!70114) List!70114)

(assert (=> b!7232920 (= lt!2574024 (derivationStepZipperDown!2546 (h!76438 (exprs!7942 ct1!232)) (Context!14885 (tail!14125 (exprs!7942 ct1!232))) (h!76439 s1!1971)))))

(declare-fun b!7232921 () Bool)

(declare-fun e!4336089 () Bool)

(assert (=> b!7232921 (= e!4336091 e!4336089)))

(declare-fun res!2934471 () Bool)

(assert (=> b!7232921 (=> (not res!2934471) (not e!4336089))))

(assert (=> b!7232921 (= res!2934471 (and (not (is-Nil!69990 (exprs!7942 ct1!232))) (is-Cons!69991 s1!1971)))))

(declare-fun ++!16304 (List!70114 List!70114) List!70114)

(assert (=> b!7232921 (= lt!2574026 (++!16304 (exprs!7942 ct1!232) (exprs!7942 ct2!328)))))

(declare-fun lt!2574020 () Unit!163541)

(assert (=> b!7232921 (= lt!2574020 (lemmaConcatPreservesForall!1311 (exprs!7942 ct1!232) (exprs!7942 ct2!328) lambda!439638))))

(declare-fun b!7232922 () Bool)

(assert (=> b!7232922 (= e!4336094 e!4336088)))

(declare-fun res!2934470 () Bool)

(assert (=> b!7232922 (=> res!2934470 e!4336088)))

(assert (=> b!7232922 (= res!2934470 (isEmpty!40339 (exprs!7942 ct1!232)))))

(declare-fun lt!2574032 () (Set Context!14884))

(assert (=> b!7232922 (= lt!2574032 (derivationStepZipperUp!2376 ct1!232 (h!76439 s1!1971)))))

(declare-fun lt!2574022 () Unit!163541)

(declare-fun lt!2574029 () Context!14884)

(assert (=> b!7232922 (= lt!2574022 (lemmaConcatPreservesForall!1311 (exprs!7942 lt!2574029) (exprs!7942 ct2!328) lambda!439638))))

(declare-fun ++!16305 (List!70115 List!70115) List!70115)

(assert (=> b!7232922 (matchZipper!3412 (set.insert (Context!14885 (++!16304 (exprs!7942 lt!2574029) (exprs!7942 ct2!328))) (as set.empty (Set Context!14884))) (++!16305 (t!384164 s1!1971) s2!1849))))

(declare-fun lt!2574027 () Unit!163541)

(assert (=> b!7232922 (= lt!2574027 (lemmaConcatPreservesForall!1311 (exprs!7942 lt!2574029) (exprs!7942 ct2!328) lambda!439638))))

(declare-fun lt!2574028 () Unit!163541)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!293 (Context!14884 Context!14884 List!70115 List!70115) Unit!163541)

(assert (=> b!7232922 (= lt!2574028 (lemmaConcatenateContextMatchesConcatOfStrings!293 lt!2574029 ct2!328 (t!384164 s1!1971) s2!1849))))

(declare-fun getWitness!2023 ((Set Context!14884) Int) Context!14884)

(assert (=> b!7232922 (= lt!2574029 (getWitness!2023 lt!2574019 lambda!439639))))

(declare-fun b!7232923 () Bool)

(assert (=> b!7232923 (= e!4336090 (not (= lt!2574026 Nil!69990)))))

(declare-fun b!7232924 () Bool)

(assert (=> b!7232924 (= e!4336089 e!4336095)))

(declare-fun res!2934473 () Bool)

(assert (=> b!7232924 (=> (not res!2934473) (not e!4336095))))

(assert (=> b!7232924 (= res!2934473 (matchZipper!3412 lt!2574019 (t!384164 s1!1971)))))

(declare-fun derivationStepZipper!3294 ((Set Context!14884) C!37278) (Set Context!14884))

(assert (=> b!7232924 (= lt!2574019 (derivationStepZipper!3294 lt!2574021 (h!76439 s1!1971)))))

(assert (= (and start!701922 res!2934472) b!7232915))

(assert (= (and b!7232915 res!2934469) b!7232921))

(assert (= (and b!7232921 res!2934471) b!7232924))

(assert (= (and b!7232924 res!2934473) b!7232917))

(assert (= (and b!7232917 (not res!2934467)) b!7232922))

(assert (= (and b!7232922 (not res!2934470)) b!7232920))

(assert (= (and b!7232920 (not res!2934468)) b!7232923))

(assert (= start!701922 b!7232916))

(assert (= (and start!701922 (is-Cons!69991 s1!1971)) b!7232914))

(assert (= (and start!701922 (is-Cons!69991 s2!1849)) b!7232919))

(assert (= start!701922 b!7232918))

(declare-fun m!7902368 () Bool)

(assert (=> b!7232924 m!7902368))

(declare-fun m!7902370 () Bool)

(assert (=> b!7232924 m!7902370))

(declare-fun m!7902372 () Bool)

(assert (=> b!7232922 m!7902372))

(declare-fun m!7902374 () Bool)

(assert (=> b!7232922 m!7902374))

(declare-fun m!7902376 () Bool)

(assert (=> b!7232922 m!7902376))

(declare-fun m!7902378 () Bool)

(assert (=> b!7232922 m!7902378))

(assert (=> b!7232922 m!7902372))

(declare-fun m!7902380 () Bool)

(assert (=> b!7232922 m!7902380))

(declare-fun m!7902382 () Bool)

(assert (=> b!7232922 m!7902382))

(declare-fun m!7902384 () Bool)

(assert (=> b!7232922 m!7902384))

(declare-fun m!7902386 () Bool)

(assert (=> b!7232922 m!7902386))

(assert (=> b!7232922 m!7902374))

(assert (=> b!7232922 m!7902386))

(declare-fun m!7902388 () Bool)

(assert (=> b!7232922 m!7902388))

(declare-fun m!7902390 () Bool)

(assert (=> start!701922 m!7902390))

(declare-fun m!7902392 () Bool)

(assert (=> start!701922 m!7902392))

(declare-fun m!7902394 () Bool)

(assert (=> start!701922 m!7902394))

(declare-fun m!7902396 () Bool)

(assert (=> start!701922 m!7902396))

(declare-fun m!7902398 () Bool)

(assert (=> b!7232920 m!7902398))

(declare-fun m!7902400 () Bool)

(assert (=> b!7232920 m!7902400))

(declare-fun m!7902402 () Bool)

(assert (=> b!7232920 m!7902402))

(assert (=> b!7232920 m!7902402))

(declare-fun m!7902404 () Bool)

(assert (=> b!7232920 m!7902404))

(declare-fun m!7902406 () Bool)

(assert (=> b!7232920 m!7902406))

(declare-fun m!7902408 () Bool)

(assert (=> b!7232921 m!7902408))

(assert (=> b!7232921 m!7902402))

(declare-fun m!7902410 () Bool)

(assert (=> b!7232917 m!7902410))

(declare-fun m!7902412 () Bool)

(assert (=> b!7232917 m!7902412))

(declare-fun m!7902414 () Bool)

(assert (=> b!7232917 m!7902414))

(declare-fun m!7902416 () Bool)

(assert (=> b!7232917 m!7902416))

(declare-fun m!7902418 () Bool)

(assert (=> b!7232915 m!7902418))

(assert (=> b!7232915 m!7902418))

(declare-fun m!7902420 () Bool)

(assert (=> b!7232915 m!7902420))

(push 1)

(assert (not start!701922))

(assert (not b!7232922))

(assert (not b!7232917))

(assert (not b!7232920))

(assert tp_is_empty!46469)

(assert (not b!7232918))

(assert (not b!7232916))

(assert (not b!7232919))

(assert (not b!7232924))

(assert (not b!7232914))

(assert (not b!7232915))

(assert (not b!7232921))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7232978 () Bool)

(declare-fun res!2934499 () Bool)

(declare-fun e!4336134 () Bool)

(assert (=> b!7232978 (=> (not res!2934499) (not e!4336134))))

(declare-fun lt!2574080 () List!70114)

(declare-fun size!41564 (List!70114) Int)

(assert (=> b!7232978 (= res!2934499 (= (size!41564 lt!2574080) (+ (size!41564 (exprs!7942 ct1!232)) (size!41564 (exprs!7942 ct2!328)))))))

(declare-fun b!7232977 () Bool)

(declare-fun e!4336135 () List!70114)

(assert (=> b!7232977 (= e!4336135 (Cons!69990 (h!76438 (exprs!7942 ct1!232)) (++!16304 (t!384163 (exprs!7942 ct1!232)) (exprs!7942 ct2!328))))))

(declare-fun d!2246450 () Bool)

(assert (=> d!2246450 e!4336134))

(declare-fun res!2934500 () Bool)

(assert (=> d!2246450 (=> (not res!2934500) (not e!4336134))))

(declare-fun content!14396 (List!70114) (Set Regex!18502))

(assert (=> d!2246450 (= res!2934500 (= (content!14396 lt!2574080) (set.union (content!14396 (exprs!7942 ct1!232)) (content!14396 (exprs!7942 ct2!328)))))))

(assert (=> d!2246450 (= lt!2574080 e!4336135)))

(declare-fun c!1342091 () Bool)

(assert (=> d!2246450 (= c!1342091 (is-Nil!69990 (exprs!7942 ct1!232)))))

(assert (=> d!2246450 (= (++!16304 (exprs!7942 ct1!232) (exprs!7942 ct2!328)) lt!2574080)))

(declare-fun b!7232976 () Bool)

(assert (=> b!7232976 (= e!4336135 (exprs!7942 ct2!328))))

(declare-fun b!7232979 () Bool)

(assert (=> b!7232979 (= e!4336134 (or (not (= (exprs!7942 ct2!328) Nil!69990)) (= lt!2574080 (exprs!7942 ct1!232))))))

(assert (= (and d!2246450 c!1342091) b!7232976))

(assert (= (and d!2246450 (not c!1342091)) b!7232977))

(assert (= (and d!2246450 res!2934500) b!7232978))

(assert (= (and b!7232978 res!2934499) b!7232979))

(declare-fun m!7902488 () Bool)

(assert (=> b!7232978 m!7902488))

(declare-fun m!7902490 () Bool)

(assert (=> b!7232978 m!7902490))

(declare-fun m!7902492 () Bool)

(assert (=> b!7232978 m!7902492))

(declare-fun m!7902494 () Bool)

(assert (=> b!7232977 m!7902494))

(declare-fun m!7902496 () Bool)

(assert (=> d!2246450 m!7902496))

(declare-fun m!7902498 () Bool)

(assert (=> d!2246450 m!7902498))

(declare-fun m!7902500 () Bool)

(assert (=> d!2246450 m!7902500))

(assert (=> b!7232921 d!2246450))

(declare-fun d!2246454 () Bool)

(declare-fun forall!17331 (List!70114 Int) Bool)

(assert (=> d!2246454 (forall!17331 (++!16304 (exprs!7942 ct1!232) (exprs!7942 ct2!328)) lambda!439638)))

(declare-fun lt!2574083 () Unit!163541)

(declare-fun choose!55548 (List!70114 List!70114 Int) Unit!163541)

(assert (=> d!2246454 (= lt!2574083 (choose!55548 (exprs!7942 ct1!232) (exprs!7942 ct2!328) lambda!439638))))

(assert (=> d!2246454 (forall!17331 (exprs!7942 ct1!232) lambda!439638)))

(assert (=> d!2246454 (= (lemmaConcatPreservesForall!1311 (exprs!7942 ct1!232) (exprs!7942 ct2!328) lambda!439638) lt!2574083)))

(declare-fun bs!1902871 () Bool)

(assert (= bs!1902871 d!2246454))

(assert (=> bs!1902871 m!7902408))

(assert (=> bs!1902871 m!7902408))

(declare-fun m!7902502 () Bool)

(assert (=> bs!1902871 m!7902502))

(declare-fun m!7902504 () Bool)

(assert (=> bs!1902871 m!7902504))

(declare-fun m!7902506 () Bool)

(assert (=> bs!1902871 m!7902506))

(assert (=> b!7232921 d!2246454))

(declare-fun d!2246456 () Bool)

(declare-fun c!1342094 () Bool)

(declare-fun isEmpty!40341 (List!70115) Bool)

(assert (=> d!2246456 (= c!1342094 (isEmpty!40341 s1!1971))))

(declare-fun e!4336138 () Bool)

(assert (=> d!2246456 (= (matchZipper!3412 lt!2574021 s1!1971) e!4336138)))

(declare-fun b!7232984 () Bool)

(declare-fun nullableZipper!2816 ((Set Context!14884)) Bool)

(assert (=> b!7232984 (= e!4336138 (nullableZipper!2816 lt!2574021))))

(declare-fun b!7232985 () Bool)

(declare-fun head!14804 (List!70115) C!37278)

(declare-fun tail!14127 (List!70115) List!70115)

(assert (=> b!7232985 (= e!4336138 (matchZipper!3412 (derivationStepZipper!3294 lt!2574021 (head!14804 s1!1971)) (tail!14127 s1!1971)))))

(assert (= (and d!2246456 c!1342094) b!7232984))

(assert (= (and d!2246456 (not c!1342094)) b!7232985))

(declare-fun m!7902512 () Bool)

(assert (=> d!2246456 m!7902512))

(declare-fun m!7902514 () Bool)

(assert (=> b!7232984 m!7902514))

(declare-fun m!7902516 () Bool)

(assert (=> b!7232985 m!7902516))

(assert (=> b!7232985 m!7902516))

(declare-fun m!7902518 () Bool)

(assert (=> b!7232985 m!7902518))

(declare-fun m!7902520 () Bool)

(assert (=> b!7232985 m!7902520))

(assert (=> b!7232985 m!7902518))

(assert (=> b!7232985 m!7902520))

(declare-fun m!7902522 () Bool)

(assert (=> b!7232985 m!7902522))

(assert (=> start!701922 d!2246456))

(declare-fun bs!1902878 () Bool)

(declare-fun d!2246462 () Bool)

(assert (= bs!1902878 (and d!2246462 b!7232921)))

(declare-fun lambda!439664 () Int)

(assert (=> bs!1902878 (= lambda!439664 lambda!439638)))

(assert (=> d!2246462 (= (inv!89266 ct1!232) (forall!17331 (exprs!7942 ct1!232) lambda!439664))))

(declare-fun bs!1902879 () Bool)

(assert (= bs!1902879 d!2246462))

(declare-fun m!7902528 () Bool)

(assert (=> bs!1902879 m!7902528))

(assert (=> start!701922 d!2246462))

(declare-fun bs!1902880 () Bool)

(declare-fun d!2246466 () Bool)

(assert (= bs!1902880 (and d!2246466 b!7232921)))

(declare-fun lambda!439665 () Int)

(assert (=> bs!1902880 (= lambda!439665 lambda!439638)))

(declare-fun bs!1902881 () Bool)

(assert (= bs!1902881 (and d!2246466 d!2246462)))

(assert (=> bs!1902881 (= lambda!439665 lambda!439664)))

(assert (=> d!2246466 (= (inv!89266 ct2!328) (forall!17331 (exprs!7942 ct2!328) lambda!439665))))

(declare-fun bs!1902882 () Bool)

(assert (= bs!1902882 d!2246466))

(declare-fun m!7902530 () Bool)

(assert (=> bs!1902882 m!7902530))

(assert (=> start!701922 d!2246466))

(declare-fun d!2246468 () Bool)

(declare-fun lt!2574089 () Bool)

(assert (=> d!2246468 (= lt!2574089 (exists!4148 (toList!11359 lt!2574019) lambda!439639))))

(declare-fun choose!55549 ((Set Context!14884) Int) Bool)

(assert (=> d!2246468 (= lt!2574089 (choose!55549 lt!2574019 lambda!439639))))

(assert (=> d!2246468 (= (exists!4147 lt!2574019 lambda!439639) lt!2574089)))

(declare-fun bs!1902883 () Bool)

(assert (= bs!1902883 d!2246468))

(assert (=> bs!1902883 m!7902416))

(assert (=> bs!1902883 m!7902416))

(declare-fun m!7902532 () Bool)

(assert (=> bs!1902883 m!7902532))

(declare-fun m!7902534 () Bool)

(assert (=> bs!1902883 m!7902534))

(assert (=> b!7232917 d!2246468))

(declare-fun bs!1902886 () Bool)

(declare-fun d!2246470 () Bool)

(assert (= bs!1902886 (and d!2246470 b!7232917)))

(declare-fun lambda!439671 () Int)

(assert (=> bs!1902886 (not (= lambda!439671 lambda!439639))))

(assert (=> d!2246470 true))

(declare-fun order!28833 () Int)

(declare-fun dynLambda!28533 (Int Int) Int)

(assert (=> d!2246470 (< (dynLambda!28533 order!28833 lambda!439639) (dynLambda!28533 order!28833 lambda!439671))))

(declare-fun forall!17332 (List!70116 Int) Bool)

(assert (=> d!2246470 (= (exists!4148 lt!2574030 lambda!439639) (not (forall!17332 lt!2574030 lambda!439671)))))

(declare-fun bs!1902887 () Bool)

(assert (= bs!1902887 d!2246470))

(declare-fun m!7902538 () Bool)

(assert (=> bs!1902887 m!7902538))

(assert (=> b!7232917 d!2246470))

(declare-fun bs!1902888 () Bool)

(declare-fun d!2246474 () Bool)

(assert (= bs!1902888 (and d!2246474 b!7232917)))

(declare-fun lambda!439674 () Int)

(assert (=> bs!1902888 (= lambda!439674 lambda!439639)))

(declare-fun bs!1902889 () Bool)

(assert (= bs!1902889 (and d!2246474 d!2246470)))

(assert (=> bs!1902889 (not (= lambda!439674 lambda!439671))))

(assert (=> d!2246474 true))

(assert (=> d!2246474 (exists!4148 lt!2574030 lambda!439674)))

(declare-fun lt!2574092 () Unit!163541)

(declare-fun choose!55550 (List!70116 List!70115) Unit!163541)

(assert (=> d!2246474 (= lt!2574092 (choose!55550 lt!2574030 (t!384164 s1!1971)))))

(declare-fun content!14397 (List!70116) (Set Context!14884))

(assert (=> d!2246474 (matchZipper!3412 (content!14397 lt!2574030) (t!384164 s1!1971))))

(assert (=> d!2246474 (= (lemmaZipperMatchesExistsMatchingContext!645 lt!2574030 (t!384164 s1!1971)) lt!2574092)))

(declare-fun bs!1902890 () Bool)

(assert (= bs!1902890 d!2246474))

(declare-fun m!7902540 () Bool)

(assert (=> bs!1902890 m!7902540))

(declare-fun m!7902542 () Bool)

(assert (=> bs!1902890 m!7902542))

(declare-fun m!7902544 () Bool)

(assert (=> bs!1902890 m!7902544))

(assert (=> bs!1902890 m!7902544))

(declare-fun m!7902546 () Bool)

(assert (=> bs!1902890 m!7902546))

(assert (=> b!7232917 d!2246474))

(declare-fun d!2246476 () Bool)

(declare-fun e!4336141 () Bool)

(assert (=> d!2246476 e!4336141))

(declare-fun res!2934503 () Bool)

(assert (=> d!2246476 (=> (not res!2934503) (not e!4336141))))

(declare-fun lt!2574097 () List!70116)

(declare-fun noDuplicate!2926 (List!70116) Bool)

(assert (=> d!2246476 (= res!2934503 (noDuplicate!2926 lt!2574097))))

(declare-fun choose!55551 ((Set Context!14884)) List!70116)

(assert (=> d!2246476 (= lt!2574097 (choose!55551 lt!2574019))))

(assert (=> d!2246476 (= (toList!11359 lt!2574019) lt!2574097)))

(declare-fun b!7232992 () Bool)

(assert (=> b!7232992 (= e!4336141 (= (content!14397 lt!2574097) lt!2574019))))

(assert (= (and d!2246476 res!2934503) b!7232992))

(declare-fun m!7902548 () Bool)

(assert (=> d!2246476 m!7902548))

(declare-fun m!7902550 () Bool)

(assert (=> d!2246476 m!7902550))

(declare-fun m!7902552 () Bool)

(assert (=> b!7232992 m!7902552))

(assert (=> b!7232917 d!2246476))

(declare-fun d!2246478 () Bool)

(declare-fun c!1342099 () Bool)

(assert (=> d!2246478 (= c!1342099 (isEmpty!40341 (++!16305 (t!384164 s1!1971) s2!1849)))))

(declare-fun e!4336142 () Bool)

(assert (=> d!2246478 (= (matchZipper!3412 (set.insert (Context!14885 (++!16304 (exprs!7942 lt!2574029) (exprs!7942 ct2!328))) (as set.empty (Set Context!14884))) (++!16305 (t!384164 s1!1971) s2!1849)) e!4336142)))

(declare-fun b!7232993 () Bool)

(assert (=> b!7232993 (= e!4336142 (nullableZipper!2816 (set.insert (Context!14885 (++!16304 (exprs!7942 lt!2574029) (exprs!7942 ct2!328))) (as set.empty (Set Context!14884)))))))

(declare-fun b!7232994 () Bool)

(assert (=> b!7232994 (= e!4336142 (matchZipper!3412 (derivationStepZipper!3294 (set.insert (Context!14885 (++!16304 (exprs!7942 lt!2574029) (exprs!7942 ct2!328))) (as set.empty (Set Context!14884))) (head!14804 (++!16305 (t!384164 s1!1971) s2!1849))) (tail!14127 (++!16305 (t!384164 s1!1971) s2!1849))))))

(assert (= (and d!2246478 c!1342099) b!7232993))

(assert (= (and d!2246478 (not c!1342099)) b!7232994))

(assert (=> d!2246478 m!7902386))

(declare-fun m!7902554 () Bool)

(assert (=> d!2246478 m!7902554))

(assert (=> b!7232993 m!7902374))

(declare-fun m!7902556 () Bool)

(assert (=> b!7232993 m!7902556))

(assert (=> b!7232994 m!7902386))

(declare-fun m!7902558 () Bool)

(assert (=> b!7232994 m!7902558))

(assert (=> b!7232994 m!7902374))

(assert (=> b!7232994 m!7902558))

(declare-fun m!7902560 () Bool)

(assert (=> b!7232994 m!7902560))

(assert (=> b!7232994 m!7902386))

(declare-fun m!7902562 () Bool)

(assert (=> b!7232994 m!7902562))

(assert (=> b!7232994 m!7902560))

(assert (=> b!7232994 m!7902562))

(declare-fun m!7902564 () Bool)

(assert (=> b!7232994 m!7902564))

(assert (=> b!7232922 d!2246478))

(declare-fun b!7233007 () Bool)

(declare-fun res!2934511 () Bool)

(declare-fun e!4336149 () Bool)

(assert (=> b!7233007 (=> (not res!2934511) (not e!4336149))))

(declare-fun lt!2574103 () List!70115)

(declare-fun size!41565 (List!70115) Int)

(assert (=> b!7233007 (= res!2934511 (= (size!41565 lt!2574103) (+ (size!41565 (t!384164 s1!1971)) (size!41565 s2!1849))))))

(declare-fun b!7233006 () Bool)

(declare-fun e!4336150 () List!70115)

(assert (=> b!7233006 (= e!4336150 (Cons!69991 (h!76439 (t!384164 s1!1971)) (++!16305 (t!384164 (t!384164 s1!1971)) s2!1849)))))

(declare-fun b!7233005 () Bool)

(assert (=> b!7233005 (= e!4336150 s2!1849)))

(declare-fun b!7233008 () Bool)

(assert (=> b!7233008 (= e!4336149 (or (not (= s2!1849 Nil!69991)) (= lt!2574103 (t!384164 s1!1971))))))

(declare-fun d!2246480 () Bool)

(assert (=> d!2246480 e!4336149))

(declare-fun res!2934510 () Bool)

(assert (=> d!2246480 (=> (not res!2934510) (not e!4336149))))

(declare-fun content!14398 (List!70115) (Set C!37278))

(assert (=> d!2246480 (= res!2934510 (= (content!14398 lt!2574103) (set.union (content!14398 (t!384164 s1!1971)) (content!14398 s2!1849))))))

(assert (=> d!2246480 (= lt!2574103 e!4336150)))

(declare-fun c!1342102 () Bool)

(assert (=> d!2246480 (= c!1342102 (is-Nil!69991 (t!384164 s1!1971)))))

(assert (=> d!2246480 (= (++!16305 (t!384164 s1!1971) s2!1849) lt!2574103)))

(assert (= (and d!2246480 c!1342102) b!7233005))

(assert (= (and d!2246480 (not c!1342102)) b!7233006))

(assert (= (and d!2246480 res!2934510) b!7233007))

(assert (= (and b!7233007 res!2934511) b!7233008))

(declare-fun m!7902574 () Bool)

(assert (=> b!7233007 m!7902574))

(declare-fun m!7902576 () Bool)

(assert (=> b!7233007 m!7902576))

(declare-fun m!7902578 () Bool)

(assert (=> b!7233007 m!7902578))

(declare-fun m!7902580 () Bool)

(assert (=> b!7233006 m!7902580))

(declare-fun m!7902582 () Bool)

(assert (=> d!2246480 m!7902582))

(declare-fun m!7902584 () Bool)

(assert (=> d!2246480 m!7902584))

(declare-fun m!7902586 () Bool)

(assert (=> d!2246480 m!7902586))

(assert (=> b!7232922 d!2246480))

(declare-fun b!7233020 () Bool)

(declare-fun e!4336159 () Bool)

(declare-fun nullable!7819 (Regex!18502) Bool)

(assert (=> b!7233020 (= e!4336159 (nullable!7819 (h!76438 (exprs!7942 ct1!232))))))

(declare-fun b!7233021 () Bool)

(declare-fun e!4336160 () (Set Context!14884))

(declare-fun call!658367 () (Set Context!14884))

(assert (=> b!7233021 (= e!4336160 call!658367)))

(declare-fun e!4336158 () (Set Context!14884))

(declare-fun b!7233022 () Bool)

(assert (=> b!7233022 (= e!4336158 (set.union call!658367 (derivationStepZipperUp!2376 (Context!14885 (t!384163 (exprs!7942 ct1!232))) (h!76439 s1!1971))))))

(declare-fun b!7233023 () Bool)

(assert (=> b!7233023 (= e!4336160 (as set.empty (Set Context!14884)))))

(declare-fun b!7233024 () Bool)

(assert (=> b!7233024 (= e!4336158 e!4336160)))

(declare-fun c!1342108 () Bool)

(assert (=> b!7233024 (= c!1342108 (is-Cons!69990 (exprs!7942 ct1!232)))))

(declare-fun bm!658362 () Bool)

(assert (=> bm!658362 (= call!658367 (derivationStepZipperDown!2546 (h!76438 (exprs!7942 ct1!232)) (Context!14885 (t!384163 (exprs!7942 ct1!232))) (h!76439 s1!1971)))))

(declare-fun d!2246484 () Bool)

(declare-fun c!1342107 () Bool)

(assert (=> d!2246484 (= c!1342107 e!4336159)))

(declare-fun res!2934515 () Bool)

(assert (=> d!2246484 (=> (not res!2934515) (not e!4336159))))

(assert (=> d!2246484 (= res!2934515 (is-Cons!69990 (exprs!7942 ct1!232)))))

(assert (=> d!2246484 (= (derivationStepZipperUp!2376 ct1!232 (h!76439 s1!1971)) e!4336158)))

(assert (= (and d!2246484 res!2934515) b!7233020))

(assert (= (and d!2246484 c!1342107) b!7233022))

(assert (= (and d!2246484 (not c!1342107)) b!7233024))

(assert (= (and b!7233024 c!1342108) b!7233021))

(assert (= (and b!7233024 (not c!1342108)) b!7233023))

(assert (= (or b!7233022 b!7233021) bm!658362))

(declare-fun m!7902594 () Bool)

(assert (=> b!7233020 m!7902594))

(declare-fun m!7902596 () Bool)

(assert (=> b!7233022 m!7902596))

(declare-fun m!7902598 () Bool)

(assert (=> bm!658362 m!7902598))

(assert (=> b!7232922 d!2246484))

(declare-fun d!2246490 () Bool)

(assert (=> d!2246490 (forall!17331 (++!16304 (exprs!7942 lt!2574029) (exprs!7942 ct2!328)) lambda!439638)))

(declare-fun lt!2574105 () Unit!163541)

(assert (=> d!2246490 (= lt!2574105 (choose!55548 (exprs!7942 lt!2574029) (exprs!7942 ct2!328) lambda!439638))))

(assert (=> d!2246490 (forall!17331 (exprs!7942 lt!2574029) lambda!439638)))

(assert (=> d!2246490 (= (lemmaConcatPreservesForall!1311 (exprs!7942 lt!2574029) (exprs!7942 ct2!328) lambda!439638) lt!2574105)))

(declare-fun bs!1902894 () Bool)

(assert (= bs!1902894 d!2246490))

(assert (=> bs!1902894 m!7902378))

(assert (=> bs!1902894 m!7902378))

(declare-fun m!7902600 () Bool)

(assert (=> bs!1902894 m!7902600))

(declare-fun m!7902602 () Bool)

(assert (=> bs!1902894 m!7902602))

(declare-fun m!7902604 () Bool)

(assert (=> bs!1902894 m!7902604))

(assert (=> b!7232922 d!2246490))

(declare-fun bs!1902895 () Bool)

(declare-fun d!2246492 () Bool)

(assert (= bs!1902895 (and d!2246492 b!7232921)))

(declare-fun lambda!439680 () Int)

(assert (=> bs!1902895 (= lambda!439680 lambda!439638)))

(declare-fun bs!1902896 () Bool)

(assert (= bs!1902896 (and d!2246492 d!2246462)))

(assert (=> bs!1902896 (= lambda!439680 lambda!439664)))

(declare-fun bs!1902897 () Bool)

(assert (= bs!1902897 (and d!2246492 d!2246466)))

(assert (=> bs!1902897 (= lambda!439680 lambda!439665)))

(assert (=> d!2246492 (matchZipper!3412 (set.insert (Context!14885 (++!16304 (exprs!7942 lt!2574029) (exprs!7942 ct2!328))) (as set.empty (Set Context!14884))) (++!16305 (t!384164 s1!1971) s2!1849))))

(declare-fun lt!2574114 () Unit!163541)

(assert (=> d!2246492 (= lt!2574114 (lemmaConcatPreservesForall!1311 (exprs!7942 lt!2574029) (exprs!7942 ct2!328) lambda!439680))))

(declare-fun lt!2574113 () Unit!163541)

(declare-fun choose!55552 (Context!14884 Context!14884 List!70115 List!70115) Unit!163541)

(assert (=> d!2246492 (= lt!2574113 (choose!55552 lt!2574029 ct2!328 (t!384164 s1!1971) s2!1849))))

(assert (=> d!2246492 (matchZipper!3412 (set.insert lt!2574029 (as set.empty (Set Context!14884))) (t!384164 s1!1971))))

(assert (=> d!2246492 (= (lemmaConcatenateContextMatchesConcatOfStrings!293 lt!2574029 ct2!328 (t!384164 s1!1971) s2!1849) lt!2574113)))

(declare-fun bs!1902898 () Bool)

(assert (= bs!1902898 d!2246492))

(declare-fun m!7902620 () Bool)

(assert (=> bs!1902898 m!7902620))

(declare-fun m!7902622 () Bool)

(assert (=> bs!1902898 m!7902622))

(assert (=> bs!1902898 m!7902374))

(assert (=> bs!1902898 m!7902386))

(assert (=> bs!1902898 m!7902388))

(assert (=> bs!1902898 m!7902378))

(assert (=> bs!1902898 m!7902386))

(declare-fun m!7902624 () Bool)

(assert (=> bs!1902898 m!7902624))

(assert (=> bs!1902898 m!7902374))

(assert (=> bs!1902898 m!7902624))

(declare-fun m!7902626 () Bool)

(assert (=> bs!1902898 m!7902626))

(assert (=> b!7232922 d!2246492))

(declare-fun d!2246496 () Bool)

(assert (=> d!2246496 (= (isEmpty!40339 (exprs!7942 ct1!232)) (is-Nil!69990 (exprs!7942 ct1!232)))))

(assert (=> b!7232922 d!2246496))

(declare-fun d!2246498 () Bool)

(declare-fun e!4336175 () Bool)

(assert (=> d!2246498 e!4336175))

(declare-fun res!2934526 () Bool)

(assert (=> d!2246498 (=> (not res!2934526) (not e!4336175))))

(declare-fun lt!2574117 () Context!14884)

(declare-fun dynLambda!28534 (Int Context!14884) Bool)

(assert (=> d!2246498 (= res!2934526 (dynLambda!28534 lambda!439639 lt!2574117))))

(declare-fun getWitness!2025 (List!70116 Int) Context!14884)

(assert (=> d!2246498 (= lt!2574117 (getWitness!2025 (toList!11359 lt!2574019) lambda!439639))))

(assert (=> d!2246498 (exists!4147 lt!2574019 lambda!439639)))

(assert (=> d!2246498 (= (getWitness!2023 lt!2574019 lambda!439639) lt!2574117)))

(declare-fun b!7233049 () Bool)

(assert (=> b!7233049 (= e!4336175 (set.member lt!2574117 lt!2574019))))

(assert (= (and d!2246498 res!2934526) b!7233049))

(declare-fun b_lambda!277223 () Bool)

(assert (=> (not b_lambda!277223) (not d!2246498)))

(declare-fun m!7902628 () Bool)

(assert (=> d!2246498 m!7902628))

(assert (=> d!2246498 m!7902416))

(assert (=> d!2246498 m!7902416))

(declare-fun m!7902630 () Bool)

(assert (=> d!2246498 m!7902630))

(assert (=> d!2246498 m!7902410))

(declare-fun m!7902632 () Bool)

(assert (=> b!7233049 m!7902632))

(assert (=> b!7232922 d!2246498))

(declare-fun b!7233052 () Bool)

(declare-fun res!2934527 () Bool)

(declare-fun e!4336176 () Bool)

(assert (=> b!7233052 (=> (not res!2934527) (not e!4336176))))

(declare-fun lt!2574118 () List!70114)

(assert (=> b!7233052 (= res!2934527 (= (size!41564 lt!2574118) (+ (size!41564 (exprs!7942 lt!2574029)) (size!41564 (exprs!7942 ct2!328)))))))

(declare-fun b!7233051 () Bool)

(declare-fun e!4336177 () List!70114)

(assert (=> b!7233051 (= e!4336177 (Cons!69990 (h!76438 (exprs!7942 lt!2574029)) (++!16304 (t!384163 (exprs!7942 lt!2574029)) (exprs!7942 ct2!328))))))

(declare-fun d!2246500 () Bool)

(assert (=> d!2246500 e!4336176))

(declare-fun res!2934528 () Bool)

(assert (=> d!2246500 (=> (not res!2934528) (not e!4336176))))

(assert (=> d!2246500 (= res!2934528 (= (content!14396 lt!2574118) (set.union (content!14396 (exprs!7942 lt!2574029)) (content!14396 (exprs!7942 ct2!328)))))))

(assert (=> d!2246500 (= lt!2574118 e!4336177)))

(declare-fun c!1342116 () Bool)

(assert (=> d!2246500 (= c!1342116 (is-Nil!69990 (exprs!7942 lt!2574029)))))

(assert (=> d!2246500 (= (++!16304 (exprs!7942 lt!2574029) (exprs!7942 ct2!328)) lt!2574118)))

(declare-fun b!7233050 () Bool)

(assert (=> b!7233050 (= e!4336177 (exprs!7942 ct2!328))))

(declare-fun b!7233053 () Bool)

(assert (=> b!7233053 (= e!4336176 (or (not (= (exprs!7942 ct2!328) Nil!69990)) (= lt!2574118 (exprs!7942 lt!2574029))))))

(assert (= (and d!2246500 c!1342116) b!7233050))

(assert (= (and d!2246500 (not c!1342116)) b!7233051))

(assert (= (and d!2246500 res!2934528) b!7233052))

(assert (= (and b!7233052 res!2934527) b!7233053))

(declare-fun m!7902634 () Bool)

(assert (=> b!7233052 m!7902634))

(declare-fun m!7902636 () Bool)

(assert (=> b!7233052 m!7902636))

(assert (=> b!7233052 m!7902492))

(declare-fun m!7902638 () Bool)

(assert (=> b!7233051 m!7902638))

(declare-fun m!7902640 () Bool)

(assert (=> d!2246500 m!7902640))

(declare-fun m!7902642 () Bool)

(assert (=> d!2246500 m!7902642))

(assert (=> d!2246500 m!7902500))

(assert (=> b!7232922 d!2246500))

(declare-fun d!2246502 () Bool)

(declare-fun c!1342117 () Bool)

(assert (=> d!2246502 (= c!1342117 (isEmpty!40341 (t!384164 s1!1971)))))

(declare-fun e!4336178 () Bool)

(assert (=> d!2246502 (= (matchZipper!3412 lt!2574019 (t!384164 s1!1971)) e!4336178)))

(declare-fun b!7233054 () Bool)

(assert (=> b!7233054 (= e!4336178 (nullableZipper!2816 lt!2574019))))

(declare-fun b!7233055 () Bool)

(assert (=> b!7233055 (= e!4336178 (matchZipper!3412 (derivationStepZipper!3294 lt!2574019 (head!14804 (t!384164 s1!1971))) (tail!14127 (t!384164 s1!1971))))))

(assert (= (and d!2246502 c!1342117) b!7233054))

(assert (= (and d!2246502 (not c!1342117)) b!7233055))

(declare-fun m!7902644 () Bool)

(assert (=> d!2246502 m!7902644))

(declare-fun m!7902646 () Bool)

(assert (=> b!7233054 m!7902646))

(declare-fun m!7902648 () Bool)

(assert (=> b!7233055 m!7902648))

(assert (=> b!7233055 m!7902648))

(declare-fun m!7902650 () Bool)

(assert (=> b!7233055 m!7902650))

(declare-fun m!7902652 () Bool)

(assert (=> b!7233055 m!7902652))

(assert (=> b!7233055 m!7902650))

(assert (=> b!7233055 m!7902652))

(declare-fun m!7902654 () Bool)

(assert (=> b!7233055 m!7902654))

(assert (=> b!7232924 d!2246502))

(declare-fun d!2246504 () Bool)

(assert (=> d!2246504 true))

(declare-fun lambda!439683 () Int)

(declare-fun flatMap!2708 ((Set Context!14884) Int) (Set Context!14884))

(assert (=> d!2246504 (= (derivationStepZipper!3294 lt!2574021 (h!76439 s1!1971)) (flatMap!2708 lt!2574021 lambda!439683))))

(declare-fun bs!1902899 () Bool)

(assert (= bs!1902899 d!2246504))

(declare-fun m!7902672 () Bool)

(assert (=> bs!1902899 m!7902672))

(assert (=> b!7232924 d!2246504))

(declare-fun d!2246508 () Bool)

(declare-fun c!1342123 () Bool)

(assert (=> d!2246508 (= c!1342123 (isEmpty!40341 s2!1849))))

(declare-fun e!4336183 () Bool)

(assert (=> d!2246508 (= (matchZipper!3412 (set.insert ct2!328 (as set.empty (Set Context!14884))) s2!1849) e!4336183)))

(declare-fun b!7233065 () Bool)

(assert (=> b!7233065 (= e!4336183 (nullableZipper!2816 (set.insert ct2!328 (as set.empty (Set Context!14884)))))))

(declare-fun b!7233066 () Bool)

(assert (=> b!7233066 (= e!4336183 (matchZipper!3412 (derivationStepZipper!3294 (set.insert ct2!328 (as set.empty (Set Context!14884))) (head!14804 s2!1849)) (tail!14127 s2!1849)))))

(assert (= (and d!2246508 c!1342123) b!7233065))

(assert (= (and d!2246508 (not c!1342123)) b!7233066))

(declare-fun m!7902676 () Bool)

(assert (=> d!2246508 m!7902676))

(assert (=> b!7233065 m!7902418))

(declare-fun m!7902678 () Bool)

(assert (=> b!7233065 m!7902678))

(declare-fun m!7902680 () Bool)

(assert (=> b!7233066 m!7902680))

(assert (=> b!7233066 m!7902418))

(assert (=> b!7233066 m!7902680))

(declare-fun m!7902682 () Bool)

(assert (=> b!7233066 m!7902682))

(declare-fun m!7902684 () Bool)

(assert (=> b!7233066 m!7902684))

(assert (=> b!7233066 m!7902682))

(assert (=> b!7233066 m!7902684))

(declare-fun m!7902686 () Bool)

(assert (=> b!7233066 m!7902686))

(assert (=> b!7232915 d!2246508))

(declare-fun d!2246512 () Bool)

(assert (=> d!2246512 (= (tail!14125 (exprs!7942 ct1!232)) (t!384163 (exprs!7942 ct1!232)))))

(assert (=> b!7232920 d!2246512))

(declare-fun d!2246514 () Bool)

(assert (=> d!2246514 (= (isEmpty!40339 lt!2574026) (is-Nil!69990 lt!2574026))))

(assert (=> b!7232920 d!2246514))

(assert (=> b!7232920 d!2246454))

(declare-fun b!7233067 () Bool)

(declare-fun e!4336185 () Bool)

(assert (=> b!7233067 (= e!4336185 (nullable!7819 (h!76438 (exprs!7942 (Context!14885 lt!2574026)))))))

(declare-fun b!7233068 () Bool)

(declare-fun e!4336186 () (Set Context!14884))

(declare-fun call!658371 () (Set Context!14884))

(assert (=> b!7233068 (= e!4336186 call!658371)))

(declare-fun b!7233069 () Bool)

(declare-fun e!4336184 () (Set Context!14884))

(assert (=> b!7233069 (= e!4336184 (set.union call!658371 (derivationStepZipperUp!2376 (Context!14885 (t!384163 (exprs!7942 (Context!14885 lt!2574026)))) (h!76439 s1!1971))))))

(declare-fun b!7233070 () Bool)

(assert (=> b!7233070 (= e!4336186 (as set.empty (Set Context!14884)))))

(declare-fun b!7233071 () Bool)

(assert (=> b!7233071 (= e!4336184 e!4336186)))

(declare-fun c!1342125 () Bool)

(assert (=> b!7233071 (= c!1342125 (is-Cons!69990 (exprs!7942 (Context!14885 lt!2574026))))))

(declare-fun bm!658366 () Bool)

(assert (=> bm!658366 (= call!658371 (derivationStepZipperDown!2546 (h!76438 (exprs!7942 (Context!14885 lt!2574026))) (Context!14885 (t!384163 (exprs!7942 (Context!14885 lt!2574026)))) (h!76439 s1!1971)))))

(declare-fun d!2246516 () Bool)

(declare-fun c!1342124 () Bool)

(assert (=> d!2246516 (= c!1342124 e!4336185)))

(declare-fun res!2934530 () Bool)

(assert (=> d!2246516 (=> (not res!2934530) (not e!4336185))))

(assert (=> d!2246516 (= res!2934530 (is-Cons!69990 (exprs!7942 (Context!14885 lt!2574026))))))

(assert (=> d!2246516 (= (derivationStepZipperUp!2376 (Context!14885 lt!2574026) (h!76439 s1!1971)) e!4336184)))

(assert (= (and d!2246516 res!2934530) b!7233067))

(assert (= (and d!2246516 c!1342124) b!7233069))

(assert (= (and d!2246516 (not c!1342124)) b!7233071))

(assert (= (and b!7233071 c!1342125) b!7233068))

(assert (= (and b!7233071 (not c!1342125)) b!7233070))

(assert (= (or b!7233069 b!7233068) bm!658366))

(declare-fun m!7902688 () Bool)

(assert (=> b!7233067 m!7902688))

(declare-fun m!7902690 () Bool)

(assert (=> b!7233069 m!7902690))

(declare-fun m!7902692 () Bool)

(assert (=> bm!658366 m!7902692))

(assert (=> b!7232920 d!2246516))

(declare-fun b!7233105 () Bool)

(declare-fun e!4336208 () (Set Context!14884))

(declare-fun call!658387 () (Set Context!14884))

(declare-fun call!658389 () (Set Context!14884))

(assert (=> b!7233105 (= e!4336208 (set.union call!658387 call!658389))))

(declare-fun bm!658379 () Bool)

(declare-fun call!658385 () List!70114)

(declare-fun c!1342142 () Bool)

(declare-fun c!1342140 () Bool)

(declare-fun c!1342141 () Bool)

(assert (=> bm!658379 (= call!658389 (derivationStepZipperDown!2546 (ite c!1342140 (regTwo!37517 (h!76438 (exprs!7942 ct1!232))) (ite c!1342142 (regTwo!37516 (h!76438 (exprs!7942 ct1!232))) (ite c!1342141 (regOne!37516 (h!76438 (exprs!7942 ct1!232))) (reg!18831 (h!76438 (exprs!7942 ct1!232)))))) (ite (or c!1342140 c!1342142) (Context!14885 (tail!14125 (exprs!7942 ct1!232))) (Context!14885 call!658385)) (h!76439 s1!1971)))))

(declare-fun b!7233106 () Bool)

(declare-fun e!4336210 () (Set Context!14884))

(declare-fun call!658384 () (Set Context!14884))

(assert (=> b!7233106 (= e!4336210 call!658384)))

(declare-fun d!2246518 () Bool)

(declare-fun c!1342138 () Bool)

(assert (=> d!2246518 (= c!1342138 (and (is-ElementMatch!18502 (h!76438 (exprs!7942 ct1!232))) (= (c!1342078 (h!76438 (exprs!7942 ct1!232))) (h!76439 s1!1971))))))

(declare-fun e!4336206 () (Set Context!14884))

(assert (=> d!2246518 (= (derivationStepZipperDown!2546 (h!76438 (exprs!7942 ct1!232)) (Context!14885 (tail!14125 (exprs!7942 ct1!232))) (h!76439 s1!1971)) e!4336206)))

(declare-fun b!7233107 () Bool)

(declare-fun e!4336211 () Bool)

(assert (=> b!7233107 (= e!4336211 (nullable!7819 (regOne!37516 (h!76438 (exprs!7942 ct1!232)))))))

(declare-fun bm!658380 () Bool)

(declare-fun call!658388 () (Set Context!14884))

(assert (=> bm!658380 (= call!658384 call!658388)))

(declare-fun bm!658381 () Bool)

(declare-fun call!658386 () List!70114)

(assert (=> bm!658381 (= call!658385 call!658386)))

(declare-fun b!7233108 () Bool)

(declare-fun e!4336209 () (Set Context!14884))

(declare-fun e!4336207 () (Set Context!14884))

(assert (=> b!7233108 (= e!4336209 e!4336207)))

(assert (=> b!7233108 (= c!1342141 (is-Concat!27347 (h!76438 (exprs!7942 ct1!232))))))

(declare-fun bm!658382 () Bool)

(assert (=> bm!658382 (= call!658388 call!658389)))

(declare-fun b!7233109 () Bool)

(declare-fun c!1342139 () Bool)

(assert (=> b!7233109 (= c!1342139 (is-Star!18502 (h!76438 (exprs!7942 ct1!232))))))

(assert (=> b!7233109 (= e!4336207 e!4336210)))

(declare-fun bm!658383 () Bool)

(declare-fun $colon$colon!2863 (List!70114 Regex!18502) List!70114)

(assert (=> bm!658383 (= call!658386 ($colon$colon!2863 (exprs!7942 (Context!14885 (tail!14125 (exprs!7942 ct1!232)))) (ite (or c!1342142 c!1342141) (regTwo!37516 (h!76438 (exprs!7942 ct1!232))) (h!76438 (exprs!7942 ct1!232)))))))

(declare-fun b!7233110 () Bool)

(assert (=> b!7233110 (= c!1342142 e!4336211)))

(declare-fun res!2934540 () Bool)

(assert (=> b!7233110 (=> (not res!2934540) (not e!4336211))))

(assert (=> b!7233110 (= res!2934540 (is-Concat!27347 (h!76438 (exprs!7942 ct1!232))))))

(assert (=> b!7233110 (= e!4336208 e!4336209)))

(declare-fun b!7233111 () Bool)

(assert (=> b!7233111 (= e!4336207 call!658384)))

(declare-fun bm!658384 () Bool)

(assert (=> bm!658384 (= call!658387 (derivationStepZipperDown!2546 (ite c!1342140 (regOne!37517 (h!76438 (exprs!7942 ct1!232))) (regOne!37516 (h!76438 (exprs!7942 ct1!232)))) (ite c!1342140 (Context!14885 (tail!14125 (exprs!7942 ct1!232))) (Context!14885 call!658386)) (h!76439 s1!1971)))))

(declare-fun b!7233112 () Bool)

(assert (=> b!7233112 (= e!4336209 (set.union call!658387 call!658388))))

(declare-fun b!7233113 () Bool)

(assert (=> b!7233113 (= e!4336210 (as set.empty (Set Context!14884)))))

(declare-fun b!7233114 () Bool)

(assert (=> b!7233114 (= e!4336206 (set.insert (Context!14885 (tail!14125 (exprs!7942 ct1!232))) (as set.empty (Set Context!14884))))))

(declare-fun b!7233115 () Bool)

(assert (=> b!7233115 (= e!4336206 e!4336208)))

(assert (=> b!7233115 (= c!1342140 (is-Union!18502 (h!76438 (exprs!7942 ct1!232))))))

(assert (= (and d!2246518 c!1342138) b!7233114))

(assert (= (and d!2246518 (not c!1342138)) b!7233115))

(assert (= (and b!7233115 c!1342140) b!7233105))

(assert (= (and b!7233115 (not c!1342140)) b!7233110))

(assert (= (and b!7233110 res!2934540) b!7233107))

(assert (= (and b!7233110 c!1342142) b!7233112))

(assert (= (and b!7233110 (not c!1342142)) b!7233108))

(assert (= (and b!7233108 c!1342141) b!7233111))

(assert (= (and b!7233108 (not c!1342141)) b!7233109))

(assert (= (and b!7233109 c!1342139) b!7233106))

(assert (= (and b!7233109 (not c!1342139)) b!7233113))

(assert (= (or b!7233111 b!7233106) bm!658381))

(assert (= (or b!7233111 b!7233106) bm!658380))

(assert (= (or b!7233112 bm!658381) bm!658383))

(assert (= (or b!7233112 bm!658380) bm!658382))

(assert (= (or b!7233105 bm!658382) bm!658379))

(assert (= (or b!7233105 b!7233112) bm!658384))

(declare-fun m!7902700 () Bool)

(assert (=> bm!658384 m!7902700))

(declare-fun m!7902702 () Bool)

(assert (=> bm!658383 m!7902702))

(declare-fun m!7902704 () Bool)

(assert (=> b!7233114 m!7902704))

(declare-fun m!7902706 () Bool)

(assert (=> b!7233107 m!7902706))

(declare-fun m!7902708 () Bool)

(assert (=> bm!658379 m!7902708))

(assert (=> b!7232920 d!2246518))

(declare-fun b!7233120 () Bool)

(declare-fun e!4336214 () Bool)

(declare-fun tp!2034133 () Bool)

(declare-fun tp!2034134 () Bool)

(assert (=> b!7233120 (= e!4336214 (and tp!2034133 tp!2034134))))

(assert (=> b!7232916 (= tp!2034116 e!4336214)))

(assert (= (and b!7232916 (is-Cons!69990 (exprs!7942 ct1!232))) b!7233120))

(declare-fun b!7233121 () Bool)

(declare-fun e!4336215 () Bool)

(declare-fun tp!2034135 () Bool)

(declare-fun tp!2034136 () Bool)

(assert (=> b!7233121 (= e!4336215 (and tp!2034135 tp!2034136))))

(assert (=> b!7232918 (= tp!2034115 e!4336215)))

(assert (= (and b!7232918 (is-Cons!69990 (exprs!7942 ct2!328))) b!7233121))

(declare-fun b!7233126 () Bool)

(declare-fun e!4336218 () Bool)

(declare-fun tp!2034139 () Bool)

(assert (=> b!7233126 (= e!4336218 (and tp_is_empty!46469 tp!2034139))))

(assert (=> b!7232919 (= tp!2034114 e!4336218)))

(assert (= (and b!7232919 (is-Cons!69991 (t!384164 s2!1849))) b!7233126))

(declare-fun b!7233127 () Bool)

(declare-fun e!4336219 () Bool)

(declare-fun tp!2034140 () Bool)

(assert (=> b!7233127 (= e!4336219 (and tp_is_empty!46469 tp!2034140))))

(assert (=> b!7232914 (= tp!2034113 e!4336219)))

(assert (= (and b!7232914 (is-Cons!69991 (t!384164 s1!1971))) b!7233127))

(declare-fun b_lambda!277227 () Bool)

(assert (= b_lambda!277223 (or b!7232917 b_lambda!277227)))

(declare-fun bs!1902900 () Bool)

(declare-fun d!2246522 () Bool)

(assert (= bs!1902900 (and d!2246522 b!7232917)))

(assert (=> bs!1902900 (= (dynLambda!28534 lambda!439639 lt!2574117) (matchZipper!3412 (set.insert lt!2574117 (as set.empty (Set Context!14884))) (t!384164 s1!1971)))))

(declare-fun m!7902710 () Bool)

(assert (=> bs!1902900 m!7902710))

(assert (=> bs!1902900 m!7902710))

(declare-fun m!7902712 () Bool)

(assert (=> bs!1902900 m!7902712))

(assert (=> d!2246498 d!2246522))

(push 1)

(assert (not b!7233120))

(assert (not b!7233055))

(assert (not b!7233127))

(assert (not b!7232984))

(assert (not b!7233022))

(assert (not d!2246498))

(assert (not b!7233107))

(assert (not b!7233126))

(assert (not b!7232978))

(assert (not d!2246456))

(assert (not bm!658379))

(assert (not b!7233121))

(assert (not b!7233007))

(assert (not b!7232985))

(assert (not b!7233006))

(assert (not d!2246490))

(assert (not b!7232977))

(assert (not b!7233052))

(assert (not d!2246450))

(assert (not d!2246508))

(assert (not bm!658366))

(assert (not bs!1902900))

(assert (not d!2246480))

(assert (not d!2246466))

(assert tp_is_empty!46469)

(assert (not b!7233065))

(assert (not d!2246504))

(assert (not b!7233067))

(assert (not bm!658362))

(assert (not b!7233066))

(assert (not b!7232992))

(assert (not b!7232994))

(assert (not d!2246470))

(assert (not b_lambda!277227))

(assert (not d!2246502))

(assert (not d!2246468))

(assert (not bm!658383))

(assert (not b!7233054))

(assert (not d!2246474))

(assert (not b!7233020))

(assert (not b!7232993))

(assert (not bm!658384))

(assert (not d!2246492))

(assert (not b!7233051))

(assert (not b!7233069))

(assert (not d!2246478))

(assert (not d!2246476))

(assert (not d!2246462))

(assert (not d!2246454))

(assert (not d!2246500))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

