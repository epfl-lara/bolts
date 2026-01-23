; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!704486 () Bool)

(assert start!704486)

(declare-fun b!7245430 () Bool)

(assert (=> b!7245430 true))

(declare-fun b!7245432 () Bool)

(assert (=> b!7245432 true))

(declare-fun e!4344174 () Bool)

(declare-fun e!4344168 () Bool)

(assert (=> b!7245430 (= e!4344174 (not e!4344168))))

(declare-fun res!2938987 () Bool)

(assert (=> b!7245430 (=> res!2938987 e!4344168)))

(declare-datatypes ((C!37458 0))(
  ( (C!37459 (val!28677 Int)) )
))
(declare-datatypes ((Regex!18592 0))(
  ( (ElementMatch!18592 (c!1345968 C!37458)) (Concat!27437 (regOne!37696 Regex!18592) (regTwo!37696 Regex!18592)) (EmptyExpr!18592) (Star!18592 (reg!18921 Regex!18592)) (EmptyLang!18592) (Union!18592 (regOne!37697 Regex!18592) (regTwo!37697 Regex!18592)) )
))
(declare-datatypes ((List!70373 0))(
  ( (Nil!70249) (Cons!70249 (h!76697 Regex!18592) (t!384425 List!70373)) )
))
(declare-datatypes ((Context!15064 0))(
  ( (Context!15065 (exprs!8032 List!70373)) )
))
(declare-fun lt!2582415 () (Set Context!15064))

(declare-fun lambda!442981 () Int)

(declare-fun exists!4303 ((Set Context!15064) Int) Bool)

(assert (=> b!7245430 (= res!2938987 (not (exists!4303 lt!2582415 lambda!442981)))))

(declare-datatypes ((List!70374 0))(
  ( (Nil!70250) (Cons!70250 (h!76698 Context!15064) (t!384426 List!70374)) )
))
(declare-fun lt!2582426 () List!70374)

(declare-fun exists!4304 (List!70374 Int) Bool)

(assert (=> b!7245430 (exists!4304 lt!2582426 lambda!442981)))

(declare-datatypes ((Unit!163771 0))(
  ( (Unit!163772) )
))
(declare-fun lt!2582414 () Unit!163771)

(declare-datatypes ((List!70375 0))(
  ( (Nil!70251) (Cons!70251 (h!76699 C!37458) (t!384427 List!70375)) )
))
(declare-fun s1!1971 () List!70375)

(declare-fun lemmaZipperMatchesExistsMatchingContext!719 (List!70374 List!70375) Unit!163771)

(assert (=> b!7245430 (= lt!2582414 (lemmaZipperMatchesExistsMatchingContext!719 lt!2582426 (t!384427 s1!1971)))))

(declare-fun toList!11438 ((Set Context!15064)) List!70374)

(assert (=> b!7245430 (= lt!2582426 (toList!11438 lt!2582415))))

(declare-fun b!7245431 () Bool)

(declare-fun e!4344176 () Bool)

(declare-fun tp!2036152 () Bool)

(assert (=> b!7245431 (= e!4344176 tp!2036152)))

(declare-fun e!4344167 () Bool)

(declare-fun e!4344169 () Bool)

(assert (=> b!7245432 (= e!4344167 e!4344169)))

(declare-fun res!2938990 () Bool)

(assert (=> b!7245432 (=> res!2938990 e!4344169)))

(declare-fun ct1!232 () Context!15064)

(declare-fun nullable!7885 (Regex!18592) Bool)

(assert (=> b!7245432 (= res!2938990 (nullable!7885 (h!76697 (exprs!8032 ct1!232))))))

(declare-fun lt!2582423 () Context!15064)

(declare-fun lt!2582418 () (Set Context!15064))

(declare-fun lambda!442982 () Int)

(declare-fun flatMap!2780 ((Set Context!15064) Int) (Set Context!15064))

(declare-fun derivationStepZipperUp!2446 (Context!15064 C!37458) (Set Context!15064))

(assert (=> b!7245432 (= (flatMap!2780 lt!2582418 lambda!442982) (derivationStepZipperUp!2446 lt!2582423 (h!76699 s1!1971)))))

(declare-fun lt!2582410 () Unit!163771)

(declare-fun lemmaFlatMapOnSingletonSet!2203 ((Set Context!15064) Context!15064 Int) Unit!163771)

(assert (=> b!7245432 (= lt!2582410 (lemmaFlatMapOnSingletonSet!2203 lt!2582418 lt!2582423 lambda!442982))))

(declare-fun lambda!442980 () Int)

(declare-fun lt!2582413 () Unit!163771)

(declare-fun ct2!328 () Context!15064)

(declare-fun lemmaConcatPreservesForall!1401 (List!70373 List!70373 Int) Unit!163771)

(assert (=> b!7245432 (= lt!2582413 (lemmaConcatPreservesForall!1401 (exprs!8032 ct1!232) (exprs!8032 ct2!328) lambda!442980))))

(declare-fun lt!2582406 () (Set Context!15064))

(assert (=> b!7245432 (= (flatMap!2780 lt!2582406 lambda!442982) (derivationStepZipperUp!2446 ct1!232 (h!76699 s1!1971)))))

(declare-fun lt!2582417 () Unit!163771)

(assert (=> b!7245432 (= lt!2582417 (lemmaFlatMapOnSingletonSet!2203 lt!2582406 ct1!232 lambda!442982))))

(declare-fun lt!2582421 () List!70373)

(declare-fun lt!2582416 () (Set Context!15064))

(declare-fun derivationStepZipperDown!2616 (Regex!18592 Context!15064 C!37458) (Set Context!15064))

(declare-fun tail!14263 (List!70373) List!70373)

(assert (=> b!7245432 (= lt!2582416 (derivationStepZipperDown!2616 (h!76697 (exprs!8032 ct1!232)) (Context!15065 (tail!14263 lt!2582421)) (h!76699 s1!1971)))))

(declare-fun b!7245433 () Bool)

(declare-fun e!4344170 () Bool)

(declare-fun e!4344172 () Bool)

(assert (=> b!7245433 (= e!4344170 e!4344172)))

(declare-fun res!2938986 () Bool)

(assert (=> b!7245433 (=> (not res!2938986) (not e!4344172))))

(assert (=> b!7245433 (= res!2938986 (and (not (is-Nil!70249 (exprs!8032 ct1!232))) (is-Cons!70251 s1!1971)))))

(assert (=> b!7245433 (= lt!2582418 (set.insert lt!2582423 (as set.empty (Set Context!15064))))))

(assert (=> b!7245433 (= lt!2582423 (Context!15065 lt!2582421))))

(declare-fun ++!16468 (List!70373 List!70373) List!70373)

(assert (=> b!7245433 (= lt!2582421 (++!16468 (exprs!8032 ct1!232) (exprs!8032 ct2!328)))))

(declare-fun lt!2582425 () Unit!163771)

(assert (=> b!7245433 (= lt!2582425 (lemmaConcatPreservesForall!1401 (exprs!8032 ct1!232) (exprs!8032 ct2!328) lambda!442980))))

(declare-fun b!7245434 () Bool)

(declare-fun e!4344177 () Bool)

(assert (=> b!7245434 (= e!4344177 e!4344167)))

(declare-fun res!2938988 () Bool)

(assert (=> b!7245434 (=> res!2938988 e!4344167)))

(declare-fun isEmpty!40470 (List!70373) Bool)

(assert (=> b!7245434 (= res!2938988 (isEmpty!40470 lt!2582421))))

(declare-fun lt!2582411 () Unit!163771)

(assert (=> b!7245434 (= lt!2582411 (lemmaConcatPreservesForall!1401 (exprs!8032 ct1!232) (exprs!8032 ct2!328) lambda!442980))))

(declare-fun lt!2582412 () (Set Context!15064))

(assert (=> b!7245434 (= lt!2582412 (derivationStepZipperUp!2446 lt!2582423 (h!76699 s1!1971)))))

(declare-fun lt!2582419 () Unit!163771)

(assert (=> b!7245434 (= lt!2582419 (lemmaConcatPreservesForall!1401 (exprs!8032 ct1!232) (exprs!8032 ct2!328) lambda!442980))))

(declare-fun lt!2582408 () (Set Context!15064))

(assert (=> b!7245434 (= lt!2582408 (derivationStepZipperDown!2616 (h!76697 (exprs!8032 ct1!232)) (Context!15065 (tail!14263 (exprs!8032 ct1!232))) (h!76699 s1!1971)))))

(declare-fun b!7245435 () Bool)

(declare-fun res!2938984 () Bool)

(assert (=> b!7245435 (=> (not res!2938984) (not e!4344170))))

(declare-fun s2!1849 () List!70375)

(declare-fun matchZipper!3502 ((Set Context!15064) List!70375) Bool)

(assert (=> b!7245435 (= res!2938984 (matchZipper!3502 (set.insert ct2!328 (as set.empty (Set Context!15064))) s2!1849))))

(declare-fun b!7245436 () Bool)

(assert (=> b!7245436 (= e!4344172 e!4344174)))

(declare-fun res!2938991 () Bool)

(assert (=> b!7245436 (=> (not res!2938991) (not e!4344174))))

(assert (=> b!7245436 (= res!2938991 (matchZipper!3502 lt!2582415 (t!384427 s1!1971)))))

(declare-fun derivationStepZipper!3380 ((Set Context!15064) C!37458) (Set Context!15064))

(assert (=> b!7245436 (= lt!2582415 (derivationStepZipper!3380 lt!2582406 (h!76699 s1!1971)))))

(declare-fun b!7245437 () Bool)

(assert (=> b!7245437 (= e!4344168 e!4344177)))

(declare-fun res!2938989 () Bool)

(assert (=> b!7245437 (=> res!2938989 e!4344177)))

(assert (=> b!7245437 (= res!2938989 (isEmpty!40470 (exprs!8032 ct1!232)))))

(declare-fun lt!2582407 () (Set Context!15064))

(assert (=> b!7245437 (= lt!2582407 (derivationStepZipperUp!2446 ct1!232 (h!76699 s1!1971)))))

(declare-fun lt!2582409 () Context!15064)

(declare-fun lt!2582424 () Unit!163771)

(assert (=> b!7245437 (= lt!2582424 (lemmaConcatPreservesForall!1401 (exprs!8032 lt!2582409) (exprs!8032 ct2!328) lambda!442980))))

(declare-fun ++!16469 (List!70375 List!70375) List!70375)

(assert (=> b!7245437 (matchZipper!3502 (set.insert (Context!15065 (++!16468 (exprs!8032 lt!2582409) (exprs!8032 ct2!328))) (as set.empty (Set Context!15064))) (++!16469 (t!384427 s1!1971) s2!1849))))

(declare-fun lt!2582420 () Unit!163771)

(assert (=> b!7245437 (= lt!2582420 (lemmaConcatPreservesForall!1401 (exprs!8032 lt!2582409) (exprs!8032 ct2!328) lambda!442980))))

(declare-fun lt!2582422 () Unit!163771)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!365 (Context!15064 Context!15064 List!70375 List!70375) Unit!163771)

(assert (=> b!7245437 (= lt!2582422 (lemmaConcatenateContextMatchesConcatOfStrings!365 lt!2582409 ct2!328 (t!384427 s1!1971) s2!1849))))

(declare-fun getWitness!2147 ((Set Context!15064) Int) Context!15064)

(assert (=> b!7245437 (= lt!2582409 (getWitness!2147 lt!2582415 lambda!442981))))

(declare-fun b!7245438 () Bool)

(declare-fun e!4344171 () Bool)

(declare-fun tp_is_empty!46649 () Bool)

(declare-fun tp!2036151 () Bool)

(assert (=> b!7245438 (= e!4344171 (and tp_is_empty!46649 tp!2036151))))

(declare-fun b!7245439 () Bool)

(declare-fun e!4344175 () Bool)

(declare-fun tp!2036149 () Bool)

(assert (=> b!7245439 (= e!4344175 tp!2036149)))

(declare-fun b!7245440 () Bool)

(declare-fun e!4344173 () Bool)

(declare-fun tp!2036150 () Bool)

(assert (=> b!7245440 (= e!4344173 (and tp_is_empty!46649 tp!2036150))))

(declare-fun b!7245441 () Bool)

(assert (=> b!7245441 (= e!4344169 (or (not (= lt!2582407 lt!2582408)) (= lt!2582415 lt!2582408)))))

(declare-fun res!2938985 () Bool)

(assert (=> start!704486 (=> (not res!2938985) (not e!4344170))))

(assert (=> start!704486 (= res!2938985 (matchZipper!3502 lt!2582406 s1!1971))))

(assert (=> start!704486 (= lt!2582406 (set.insert ct1!232 (as set.empty (Set Context!15064))))))

(assert (=> start!704486 e!4344170))

(declare-fun inv!89491 (Context!15064) Bool)

(assert (=> start!704486 (and (inv!89491 ct1!232) e!4344175)))

(assert (=> start!704486 e!4344173))

(assert (=> start!704486 e!4344171))

(assert (=> start!704486 (and (inv!89491 ct2!328) e!4344176)))

(assert (= (and start!704486 res!2938985) b!7245435))

(assert (= (and b!7245435 res!2938984) b!7245433))

(assert (= (and b!7245433 res!2938986) b!7245436))

(assert (= (and b!7245436 res!2938991) b!7245430))

(assert (= (and b!7245430 (not res!2938987)) b!7245437))

(assert (= (and b!7245437 (not res!2938989)) b!7245434))

(assert (= (and b!7245434 (not res!2938988)) b!7245432))

(assert (= (and b!7245432 (not res!2938990)) b!7245441))

(assert (= start!704486 b!7245439))

(assert (= (and start!704486 (is-Cons!70251 s1!1971)) b!7245440))

(assert (= (and start!704486 (is-Cons!70251 s2!1849)) b!7245438))

(assert (= start!704486 b!7245431))

(declare-fun m!7921842 () Bool)

(assert (=> b!7245430 m!7921842))

(declare-fun m!7921844 () Bool)

(assert (=> b!7245430 m!7921844))

(declare-fun m!7921846 () Bool)

(assert (=> b!7245430 m!7921846))

(declare-fun m!7921848 () Bool)

(assert (=> b!7245430 m!7921848))

(declare-fun m!7921850 () Bool)

(assert (=> b!7245433 m!7921850))

(declare-fun m!7921852 () Bool)

(assert (=> b!7245433 m!7921852))

(declare-fun m!7921854 () Bool)

(assert (=> b!7245433 m!7921854))

(declare-fun m!7921856 () Bool)

(assert (=> b!7245437 m!7921856))

(declare-fun m!7921858 () Bool)

(assert (=> b!7245437 m!7921858))

(declare-fun m!7921860 () Bool)

(assert (=> b!7245437 m!7921860))

(assert (=> b!7245437 m!7921858))

(declare-fun m!7921862 () Bool)

(assert (=> b!7245437 m!7921862))

(declare-fun m!7921864 () Bool)

(assert (=> b!7245437 m!7921864))

(declare-fun m!7921866 () Bool)

(assert (=> b!7245437 m!7921866))

(assert (=> b!7245437 m!7921862))

(declare-fun m!7921868 () Bool)

(assert (=> b!7245437 m!7921868))

(declare-fun m!7921870 () Bool)

(assert (=> b!7245437 m!7921870))

(declare-fun m!7921872 () Bool)

(assert (=> b!7245437 m!7921872))

(assert (=> b!7245437 m!7921868))

(assert (=> b!7245434 m!7921854))

(declare-fun m!7921874 () Bool)

(assert (=> b!7245434 m!7921874))

(declare-fun m!7921876 () Bool)

(assert (=> b!7245434 m!7921876))

(declare-fun m!7921878 () Bool)

(assert (=> b!7245434 m!7921878))

(assert (=> b!7245434 m!7921854))

(declare-fun m!7921880 () Bool)

(assert (=> b!7245434 m!7921880))

(declare-fun m!7921882 () Bool)

(assert (=> b!7245432 m!7921882))

(declare-fun m!7921884 () Bool)

(assert (=> b!7245432 m!7921884))

(declare-fun m!7921886 () Bool)

(assert (=> b!7245432 m!7921886))

(declare-fun m!7921888 () Bool)

(assert (=> b!7245432 m!7921888))

(assert (=> b!7245432 m!7921866))

(declare-fun m!7921890 () Bool)

(assert (=> b!7245432 m!7921890))

(assert (=> b!7245432 m!7921854))

(declare-fun m!7921892 () Bool)

(assert (=> b!7245432 m!7921892))

(declare-fun m!7921894 () Bool)

(assert (=> b!7245432 m!7921894))

(assert (=> b!7245432 m!7921880))

(declare-fun m!7921896 () Bool)

(assert (=> b!7245436 m!7921896))

(declare-fun m!7921898 () Bool)

(assert (=> b!7245436 m!7921898))

(declare-fun m!7921900 () Bool)

(assert (=> b!7245435 m!7921900))

(assert (=> b!7245435 m!7921900))

(declare-fun m!7921902 () Bool)

(assert (=> b!7245435 m!7921902))

(declare-fun m!7921904 () Bool)

(assert (=> start!704486 m!7921904))

(declare-fun m!7921906 () Bool)

(assert (=> start!704486 m!7921906))

(declare-fun m!7921908 () Bool)

(assert (=> start!704486 m!7921908))

(declare-fun m!7921910 () Bool)

(assert (=> start!704486 m!7921910))

(push 1)

(assert (not b!7245440))

(assert (not b!7245433))

(assert (not b!7245432))

(assert (not b!7245437))

(assert (not b!7245431))

(assert (not b!7245439))

(assert (not b!7245430))

(assert tp_is_empty!46649)

(assert (not b!7245436))

(assert (not start!704486))

(assert (not b!7245435))

(assert (not b!7245438))

(assert (not b!7245434))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2251523 () Bool)

(declare-fun c!1345982 () Bool)

(declare-fun isEmpty!40472 (List!70375) Bool)

(assert (=> d!2251523 (= c!1345982 (isEmpty!40472 s2!1849))))

(declare-fun e!4344213 () Bool)

(assert (=> d!2251523 (= (matchZipper!3502 (set.insert ct2!328 (as set.empty (Set Context!15064))) s2!1849) e!4344213)))

(declare-fun b!7245490 () Bool)

(declare-fun nullableZipper!2877 ((Set Context!15064)) Bool)

(assert (=> b!7245490 (= e!4344213 (nullableZipper!2877 (set.insert ct2!328 (as set.empty (Set Context!15064)))))))

(declare-fun b!7245491 () Bool)

(declare-fun head!14865 (List!70375) C!37458)

(declare-fun tail!14265 (List!70375) List!70375)

(assert (=> b!7245491 (= e!4344213 (matchZipper!3502 (derivationStepZipper!3380 (set.insert ct2!328 (as set.empty (Set Context!15064))) (head!14865 s2!1849)) (tail!14265 s2!1849)))))

(assert (= (and d!2251523 c!1345982) b!7245490))

(assert (= (and d!2251523 (not c!1345982)) b!7245491))

(declare-fun m!7921982 () Bool)

(assert (=> d!2251523 m!7921982))

(assert (=> b!7245490 m!7921900))

(declare-fun m!7921984 () Bool)

(assert (=> b!7245490 m!7921984))

(declare-fun m!7921986 () Bool)

(assert (=> b!7245491 m!7921986))

(assert (=> b!7245491 m!7921900))

(assert (=> b!7245491 m!7921986))

(declare-fun m!7921988 () Bool)

(assert (=> b!7245491 m!7921988))

(declare-fun m!7921990 () Bool)

(assert (=> b!7245491 m!7921990))

(assert (=> b!7245491 m!7921988))

(assert (=> b!7245491 m!7921990))

(declare-fun m!7921992 () Bool)

(assert (=> b!7245491 m!7921992))

(assert (=> b!7245435 d!2251523))

(declare-fun d!2251525 () Bool)

(declare-fun lt!2582492 () Bool)

(assert (=> d!2251525 (= lt!2582492 (exists!4304 (toList!11438 lt!2582415) lambda!442981))))

(declare-fun choose!55890 ((Set Context!15064) Int) Bool)

(assert (=> d!2251525 (= lt!2582492 (choose!55890 lt!2582415 lambda!442981))))

(assert (=> d!2251525 (= (exists!4303 lt!2582415 lambda!442981) lt!2582492)))

(declare-fun bs!1905126 () Bool)

(assert (= bs!1905126 d!2251525))

(assert (=> bs!1905126 m!7921848))

(assert (=> bs!1905126 m!7921848))

(declare-fun m!7921994 () Bool)

(assert (=> bs!1905126 m!7921994))

(declare-fun m!7921996 () Bool)

(assert (=> bs!1905126 m!7921996))

(assert (=> b!7245430 d!2251525))

(declare-fun bs!1905127 () Bool)

(declare-fun d!2251527 () Bool)

(assert (= bs!1905127 (and d!2251527 b!7245430)))

(declare-fun lambda!443010 () Int)

(assert (=> bs!1905127 (not (= lambda!443010 lambda!442981))))

(assert (=> d!2251527 true))

(declare-fun order!28931 () Int)

(declare-fun dynLambda!28685 (Int Int) Int)

(assert (=> d!2251527 (< (dynLambda!28685 order!28931 lambda!442981) (dynLambda!28685 order!28931 lambda!443010))))

(declare-fun forall!17436 (List!70374 Int) Bool)

(assert (=> d!2251527 (= (exists!4304 lt!2582426 lambda!442981) (not (forall!17436 lt!2582426 lambda!443010)))))

(declare-fun bs!1905128 () Bool)

(assert (= bs!1905128 d!2251527))

(declare-fun m!7921998 () Bool)

(assert (=> bs!1905128 m!7921998))

(assert (=> b!7245430 d!2251527))

(declare-fun bs!1905129 () Bool)

(declare-fun d!2251529 () Bool)

(assert (= bs!1905129 (and d!2251529 b!7245430)))

(declare-fun lambda!443013 () Int)

(assert (=> bs!1905129 (= lambda!443013 lambda!442981)))

(declare-fun bs!1905130 () Bool)

(assert (= bs!1905130 (and d!2251529 d!2251527)))

(assert (=> bs!1905130 (not (= lambda!443013 lambda!443010))))

(assert (=> d!2251529 true))

(assert (=> d!2251529 (exists!4304 lt!2582426 lambda!443013)))

(declare-fun lt!2582495 () Unit!163771)

(declare-fun choose!55891 (List!70374 List!70375) Unit!163771)

(assert (=> d!2251529 (= lt!2582495 (choose!55891 lt!2582426 (t!384427 s1!1971)))))

(declare-fun content!14539 (List!70374) (Set Context!15064))

(assert (=> d!2251529 (matchZipper!3502 (content!14539 lt!2582426) (t!384427 s1!1971))))

(assert (=> d!2251529 (= (lemmaZipperMatchesExistsMatchingContext!719 lt!2582426 (t!384427 s1!1971)) lt!2582495)))

(declare-fun bs!1905131 () Bool)

(assert (= bs!1905131 d!2251529))

(declare-fun m!7922000 () Bool)

(assert (=> bs!1905131 m!7922000))

(declare-fun m!7922002 () Bool)

(assert (=> bs!1905131 m!7922002))

(declare-fun m!7922004 () Bool)

(assert (=> bs!1905131 m!7922004))

(assert (=> bs!1905131 m!7922004))

(declare-fun m!7922006 () Bool)

(assert (=> bs!1905131 m!7922006))

(assert (=> b!7245430 d!2251529))

(declare-fun d!2251535 () Bool)

(declare-fun e!4344220 () Bool)

(assert (=> d!2251535 e!4344220))

(declare-fun res!2939020 () Bool)

(assert (=> d!2251535 (=> (not res!2939020) (not e!4344220))))

(declare-fun lt!2582498 () List!70374)

(declare-fun noDuplicate!2969 (List!70374) Bool)

(assert (=> d!2251535 (= res!2939020 (noDuplicate!2969 lt!2582498))))

(declare-fun choose!55892 ((Set Context!15064)) List!70374)

(assert (=> d!2251535 (= lt!2582498 (choose!55892 lt!2582415))))

(assert (=> d!2251535 (= (toList!11438 lt!2582415) lt!2582498)))

(declare-fun b!7245504 () Bool)

(assert (=> b!7245504 (= e!4344220 (= (content!14539 lt!2582498) lt!2582415))))

(assert (= (and d!2251535 res!2939020) b!7245504))

(declare-fun m!7922008 () Bool)

(assert (=> d!2251535 m!7922008))

(declare-fun m!7922010 () Bool)

(assert (=> d!2251535 m!7922010))

(declare-fun m!7922012 () Bool)

(assert (=> b!7245504 m!7922012))

(assert (=> b!7245430 d!2251535))

(declare-fun d!2251537 () Bool)

(declare-fun c!1345989 () Bool)

(assert (=> d!2251537 (= c!1345989 (isEmpty!40472 (t!384427 s1!1971)))))

(declare-fun e!4344223 () Bool)

(assert (=> d!2251537 (= (matchZipper!3502 lt!2582415 (t!384427 s1!1971)) e!4344223)))

(declare-fun b!7245507 () Bool)

(assert (=> b!7245507 (= e!4344223 (nullableZipper!2877 lt!2582415))))

(declare-fun b!7245508 () Bool)

(assert (=> b!7245508 (= e!4344223 (matchZipper!3502 (derivationStepZipper!3380 lt!2582415 (head!14865 (t!384427 s1!1971))) (tail!14265 (t!384427 s1!1971))))))

(assert (= (and d!2251537 c!1345989) b!7245507))

(assert (= (and d!2251537 (not c!1345989)) b!7245508))

(declare-fun m!7922014 () Bool)

(assert (=> d!2251537 m!7922014))

(declare-fun m!7922016 () Bool)

(assert (=> b!7245507 m!7922016))

(declare-fun m!7922018 () Bool)

(assert (=> b!7245508 m!7922018))

(assert (=> b!7245508 m!7922018))

(declare-fun m!7922020 () Bool)

(assert (=> b!7245508 m!7922020))

(declare-fun m!7922022 () Bool)

(assert (=> b!7245508 m!7922022))

(assert (=> b!7245508 m!7922020))

(assert (=> b!7245508 m!7922022))

(declare-fun m!7922024 () Bool)

(assert (=> b!7245508 m!7922024))

(assert (=> b!7245436 d!2251537))

(declare-fun bs!1905132 () Bool)

(declare-fun d!2251539 () Bool)

(assert (= bs!1905132 (and d!2251539 b!7245432)))

(declare-fun lambda!443016 () Int)

(assert (=> bs!1905132 (= lambda!443016 lambda!442982)))

(assert (=> d!2251539 true))

(assert (=> d!2251539 (= (derivationStepZipper!3380 lt!2582406 (h!76699 s1!1971)) (flatMap!2780 lt!2582406 lambda!443016))))

(declare-fun bs!1905133 () Bool)

(assert (= bs!1905133 d!2251539))

(declare-fun m!7922026 () Bool)

(assert (=> bs!1905133 m!7922026))

(assert (=> b!7245436 d!2251539))

(declare-fun d!2251541 () Bool)

(declare-fun c!1345992 () Bool)

(assert (=> d!2251541 (= c!1345992 (isEmpty!40472 s1!1971))))

(declare-fun e!4344224 () Bool)

(assert (=> d!2251541 (= (matchZipper!3502 lt!2582406 s1!1971) e!4344224)))

(declare-fun b!7245511 () Bool)

(assert (=> b!7245511 (= e!4344224 (nullableZipper!2877 lt!2582406))))

(declare-fun b!7245512 () Bool)

(assert (=> b!7245512 (= e!4344224 (matchZipper!3502 (derivationStepZipper!3380 lt!2582406 (head!14865 s1!1971)) (tail!14265 s1!1971)))))

(assert (= (and d!2251541 c!1345992) b!7245511))

(assert (= (and d!2251541 (not c!1345992)) b!7245512))

(declare-fun m!7922028 () Bool)

(assert (=> d!2251541 m!7922028))

(declare-fun m!7922030 () Bool)

(assert (=> b!7245511 m!7922030))

(declare-fun m!7922032 () Bool)

(assert (=> b!7245512 m!7922032))

(assert (=> b!7245512 m!7922032))

(declare-fun m!7922034 () Bool)

(assert (=> b!7245512 m!7922034))

(declare-fun m!7922036 () Bool)

(assert (=> b!7245512 m!7922036))

(assert (=> b!7245512 m!7922034))

(assert (=> b!7245512 m!7922036))

(declare-fun m!7922038 () Bool)

(assert (=> b!7245512 m!7922038))

(assert (=> start!704486 d!2251541))

(declare-fun bs!1905134 () Bool)

(declare-fun d!2251543 () Bool)

(assert (= bs!1905134 (and d!2251543 b!7245433)))

(declare-fun lambda!443019 () Int)

(assert (=> bs!1905134 (= lambda!443019 lambda!442980)))

(declare-fun forall!17437 (List!70373 Int) Bool)

(assert (=> d!2251543 (= (inv!89491 ct1!232) (forall!17437 (exprs!8032 ct1!232) lambda!443019))))

(declare-fun bs!1905135 () Bool)

(assert (= bs!1905135 d!2251543))

(declare-fun m!7922040 () Bool)

(assert (=> bs!1905135 m!7922040))

(assert (=> start!704486 d!2251543))

(declare-fun bs!1905136 () Bool)

(declare-fun d!2251545 () Bool)

(assert (= bs!1905136 (and d!2251545 b!7245433)))

(declare-fun lambda!443020 () Int)

(assert (=> bs!1905136 (= lambda!443020 lambda!442980)))

(declare-fun bs!1905137 () Bool)

(assert (= bs!1905137 (and d!2251545 d!2251543)))

(assert (=> bs!1905137 (= lambda!443020 lambda!443019)))

(assert (=> d!2251545 (= (inv!89491 ct2!328) (forall!17437 (exprs!8032 ct2!328) lambda!443020))))

(declare-fun bs!1905138 () Bool)

(assert (= bs!1905138 d!2251545))

(declare-fun m!7922042 () Bool)

(assert (=> bs!1905138 m!7922042))

(assert (=> start!704486 d!2251545))

(declare-fun d!2251547 () Bool)

(assert (=> d!2251547 (forall!17437 (++!16468 (exprs!8032 lt!2582409) (exprs!8032 ct2!328)) lambda!442980)))

(declare-fun lt!2582501 () Unit!163771)

(declare-fun choose!55893 (List!70373 List!70373 Int) Unit!163771)

(assert (=> d!2251547 (= lt!2582501 (choose!55893 (exprs!8032 lt!2582409) (exprs!8032 ct2!328) lambda!442980))))

(assert (=> d!2251547 (forall!17437 (exprs!8032 lt!2582409) lambda!442980)))

(assert (=> d!2251547 (= (lemmaConcatPreservesForall!1401 (exprs!8032 lt!2582409) (exprs!8032 ct2!328) lambda!442980) lt!2582501)))

(declare-fun bs!1905139 () Bool)

(assert (= bs!1905139 d!2251547))

(assert (=> bs!1905139 m!7921870))

(assert (=> bs!1905139 m!7921870))

(declare-fun m!7922050 () Bool)

(assert (=> bs!1905139 m!7922050))

(declare-fun m!7922052 () Bool)

(assert (=> bs!1905139 m!7922052))

(declare-fun m!7922054 () Bool)

(assert (=> bs!1905139 m!7922054))

(assert (=> b!7245437 d!2251547))

(declare-fun d!2251551 () Bool)

(assert (=> d!2251551 (= (isEmpty!40470 (exprs!8032 ct1!232)) (is-Nil!70249 (exprs!8032 ct1!232)))))

(assert (=> b!7245437 d!2251551))

(declare-fun d!2251553 () Bool)

(declare-fun e!4344230 () Bool)

(assert (=> d!2251553 e!4344230))

(declare-fun res!2939024 () Bool)

(assert (=> d!2251553 (=> (not res!2939024) (not e!4344230))))

(declare-fun lt!2582506 () Context!15064)

(declare-fun dynLambda!28686 (Int Context!15064) Bool)

(assert (=> d!2251553 (= res!2939024 (dynLambda!28686 lambda!442981 lt!2582506))))

(declare-fun getWitness!2149 (List!70374 Int) Context!15064)

(assert (=> d!2251553 (= lt!2582506 (getWitness!2149 (toList!11438 lt!2582415) lambda!442981))))

(assert (=> d!2251553 (exists!4303 lt!2582415 lambda!442981)))

(assert (=> d!2251553 (= (getWitness!2147 lt!2582415 lambda!442981) lt!2582506)))

(declare-fun b!7245520 () Bool)

(assert (=> b!7245520 (= e!4344230 (set.member lt!2582506 lt!2582415))))

(assert (= (and d!2251553 res!2939024) b!7245520))

(declare-fun b_lambda!278069 () Bool)

(assert (=> (not b_lambda!278069) (not d!2251553)))

(declare-fun m!7922056 () Bool)

(assert (=> d!2251553 m!7922056))

(assert (=> d!2251553 m!7921848))

(assert (=> d!2251553 m!7921848))

(declare-fun m!7922058 () Bool)

(assert (=> d!2251553 m!7922058))

(assert (=> d!2251553 m!7921842))

(declare-fun m!7922060 () Bool)

(assert (=> b!7245520 m!7922060))

(assert (=> b!7245437 d!2251553))

(declare-fun b!7245532 () Bool)

(declare-fun e!4344235 () Bool)

(declare-fun lt!2582510 () List!70375)

(assert (=> b!7245532 (= e!4344235 (or (not (= s2!1849 Nil!70251)) (= lt!2582510 (t!384427 s1!1971))))))

(declare-fun b!7245530 () Bool)

(declare-fun e!4344236 () List!70375)

(assert (=> b!7245530 (= e!4344236 (Cons!70251 (h!76699 (t!384427 s1!1971)) (++!16469 (t!384427 (t!384427 s1!1971)) s2!1849)))))

(declare-fun b!7245529 () Bool)

(assert (=> b!7245529 (= e!4344236 s2!1849)))

(declare-fun b!7245531 () Bool)

(declare-fun res!2939029 () Bool)

(assert (=> b!7245531 (=> (not res!2939029) (not e!4344235))))

(declare-fun size!41663 (List!70375) Int)

(assert (=> b!7245531 (= res!2939029 (= (size!41663 lt!2582510) (+ (size!41663 (t!384427 s1!1971)) (size!41663 s2!1849))))))

(declare-fun d!2251555 () Bool)

(assert (=> d!2251555 e!4344235))

(declare-fun res!2939030 () Bool)

(assert (=> d!2251555 (=> (not res!2939030) (not e!4344235))))

(declare-fun content!14540 (List!70375) (Set C!37458))

(assert (=> d!2251555 (= res!2939030 (= (content!14540 lt!2582510) (set.union (content!14540 (t!384427 s1!1971)) (content!14540 s2!1849))))))

(assert (=> d!2251555 (= lt!2582510 e!4344236)))

(declare-fun c!1345997 () Bool)

(assert (=> d!2251555 (= c!1345997 (is-Nil!70251 (t!384427 s1!1971)))))

(assert (=> d!2251555 (= (++!16469 (t!384427 s1!1971) s2!1849) lt!2582510)))

(assert (= (and d!2251555 c!1345997) b!7245529))

(assert (= (and d!2251555 (not c!1345997)) b!7245530))

(assert (= (and d!2251555 res!2939030) b!7245531))

(assert (= (and b!7245531 res!2939029) b!7245532))

(declare-fun m!7922068 () Bool)

(assert (=> b!7245530 m!7922068))

(declare-fun m!7922070 () Bool)

(assert (=> b!7245531 m!7922070))

(declare-fun m!7922072 () Bool)

(assert (=> b!7245531 m!7922072))

(declare-fun m!7922074 () Bool)

(assert (=> b!7245531 m!7922074))

(declare-fun m!7922076 () Bool)

(assert (=> d!2251555 m!7922076))

(declare-fun m!7922078 () Bool)

(assert (=> d!2251555 m!7922078))

(declare-fun m!7922080 () Bool)

(assert (=> d!2251555 m!7922080))

(assert (=> b!7245437 d!2251555))

(declare-fun d!2251561 () Bool)

(declare-fun c!1345998 () Bool)

(assert (=> d!2251561 (= c!1345998 (isEmpty!40472 (++!16469 (t!384427 s1!1971) s2!1849)))))

(declare-fun e!4344237 () Bool)

(assert (=> d!2251561 (= (matchZipper!3502 (set.insert (Context!15065 (++!16468 (exprs!8032 lt!2582409) (exprs!8032 ct2!328))) (as set.empty (Set Context!15064))) (++!16469 (t!384427 s1!1971) s2!1849)) e!4344237)))

(declare-fun b!7245533 () Bool)

(assert (=> b!7245533 (= e!4344237 (nullableZipper!2877 (set.insert (Context!15065 (++!16468 (exprs!8032 lt!2582409) (exprs!8032 ct2!328))) (as set.empty (Set Context!15064)))))))

(declare-fun b!7245534 () Bool)

(assert (=> b!7245534 (= e!4344237 (matchZipper!3502 (derivationStepZipper!3380 (set.insert (Context!15065 (++!16468 (exprs!8032 lt!2582409) (exprs!8032 ct2!328))) (as set.empty (Set Context!15064))) (head!14865 (++!16469 (t!384427 s1!1971) s2!1849))) (tail!14265 (++!16469 (t!384427 s1!1971) s2!1849))))))

(assert (= (and d!2251561 c!1345998) b!7245533))

(assert (= (and d!2251561 (not c!1345998)) b!7245534))

(assert (=> d!2251561 m!7921862))

(declare-fun m!7922082 () Bool)

(assert (=> d!2251561 m!7922082))

(assert (=> b!7245533 m!7921858))

(declare-fun m!7922084 () Bool)

(assert (=> b!7245533 m!7922084))

(assert (=> b!7245534 m!7921862))

(declare-fun m!7922086 () Bool)

(assert (=> b!7245534 m!7922086))

(assert (=> b!7245534 m!7921858))

(assert (=> b!7245534 m!7922086))

(declare-fun m!7922088 () Bool)

(assert (=> b!7245534 m!7922088))

(assert (=> b!7245534 m!7921862))

(declare-fun m!7922090 () Bool)

(assert (=> b!7245534 m!7922090))

(assert (=> b!7245534 m!7922088))

(assert (=> b!7245534 m!7922090))

(declare-fun m!7922092 () Bool)

(assert (=> b!7245534 m!7922092))

(assert (=> b!7245437 d!2251561))

(declare-fun bs!1905141 () Bool)

(declare-fun d!2251563 () Bool)

(assert (= bs!1905141 (and d!2251563 b!7245433)))

(declare-fun lambda!443023 () Int)

(assert (=> bs!1905141 (= lambda!443023 lambda!442980)))

(declare-fun bs!1905142 () Bool)

(assert (= bs!1905142 (and d!2251563 d!2251543)))

(assert (=> bs!1905142 (= lambda!443023 lambda!443019)))

(declare-fun bs!1905143 () Bool)

(assert (= bs!1905143 (and d!2251563 d!2251545)))

(assert (=> bs!1905143 (= lambda!443023 lambda!443020)))

(assert (=> d!2251563 (matchZipper!3502 (set.insert (Context!15065 (++!16468 (exprs!8032 lt!2582409) (exprs!8032 ct2!328))) (as set.empty (Set Context!15064))) (++!16469 (t!384427 s1!1971) s2!1849))))

(declare-fun lt!2582516 () Unit!163771)

(assert (=> d!2251563 (= lt!2582516 (lemmaConcatPreservesForall!1401 (exprs!8032 lt!2582409) (exprs!8032 ct2!328) lambda!443023))))

(declare-fun lt!2582515 () Unit!163771)

(declare-fun choose!55894 (Context!15064 Context!15064 List!70375 List!70375) Unit!163771)

(assert (=> d!2251563 (= lt!2582515 (choose!55894 lt!2582409 ct2!328 (t!384427 s1!1971) s2!1849))))

(assert (=> d!2251563 (matchZipper!3502 (set.insert lt!2582409 (as set.empty (Set Context!15064))) (t!384427 s1!1971))))

(assert (=> d!2251563 (= (lemmaConcatenateContextMatchesConcatOfStrings!365 lt!2582409 ct2!328 (t!384427 s1!1971) s2!1849) lt!2582515)))

(declare-fun bs!1905144 () Bool)

(assert (= bs!1905144 d!2251563))

(declare-fun m!7922094 () Bool)

(assert (=> bs!1905144 m!7922094))

(declare-fun m!7922096 () Bool)

(assert (=> bs!1905144 m!7922096))

(assert (=> bs!1905144 m!7921870))

(declare-fun m!7922098 () Bool)

(assert (=> bs!1905144 m!7922098))

(assert (=> bs!1905144 m!7922098))

(declare-fun m!7922100 () Bool)

(assert (=> bs!1905144 m!7922100))

(assert (=> bs!1905144 m!7921862))

(assert (=> bs!1905144 m!7921858))

(assert (=> bs!1905144 m!7921862))

(assert (=> bs!1905144 m!7921864))

(assert (=> bs!1905144 m!7921858))

(assert (=> b!7245437 d!2251563))

(declare-fun d!2251565 () Bool)

(declare-fun c!1346014 () Bool)

(declare-fun e!4344256 () Bool)

(assert (=> d!2251565 (= c!1346014 e!4344256)))

(declare-fun res!2939035 () Bool)

(assert (=> d!2251565 (=> (not res!2939035) (not e!4344256))))

(assert (=> d!2251565 (= res!2939035 (is-Cons!70249 (exprs!8032 ct1!232)))))

(declare-fun e!4344257 () (Set Context!15064))

(assert (=> d!2251565 (= (derivationStepZipperUp!2446 ct1!232 (h!76699 s1!1971)) e!4344257)))

(declare-fun b!7245567 () Bool)

(declare-fun e!4344258 () (Set Context!15064))

(declare-fun call!659938 () (Set Context!15064))

(assert (=> b!7245567 (= e!4344258 call!659938)))

(declare-fun b!7245568 () Bool)

(assert (=> b!7245568 (= e!4344257 e!4344258)))

(declare-fun c!1346013 () Bool)

(assert (=> b!7245568 (= c!1346013 (is-Cons!70249 (exprs!8032 ct1!232)))))

(declare-fun b!7245569 () Bool)

(assert (=> b!7245569 (= e!4344257 (set.union call!659938 (derivationStepZipperUp!2446 (Context!15065 (t!384425 (exprs!8032 ct1!232))) (h!76699 s1!1971))))))

(declare-fun b!7245570 () Bool)

(assert (=> b!7245570 (= e!4344258 (as set.empty (Set Context!15064)))))

(declare-fun bm!659933 () Bool)

(assert (=> bm!659933 (= call!659938 (derivationStepZipperDown!2616 (h!76697 (exprs!8032 ct1!232)) (Context!15065 (t!384425 (exprs!8032 ct1!232))) (h!76699 s1!1971)))))

(declare-fun b!7245571 () Bool)

(assert (=> b!7245571 (= e!4344256 (nullable!7885 (h!76697 (exprs!8032 ct1!232))))))

(assert (= (and d!2251565 res!2939035) b!7245571))

(assert (= (and d!2251565 c!1346014) b!7245569))

(assert (= (and d!2251565 (not c!1346014)) b!7245568))

(assert (= (and b!7245568 c!1346013) b!7245567))

(assert (= (and b!7245568 (not c!1346013)) b!7245570))

(assert (= (or b!7245569 b!7245567) bm!659933))

(declare-fun m!7922102 () Bool)

(assert (=> b!7245569 m!7922102))

(declare-fun m!7922104 () Bool)

(assert (=> bm!659933 m!7922104))

(assert (=> b!7245571 m!7921888))

(assert (=> b!7245437 d!2251565))

(declare-fun lt!2582519 () List!70373)

(declare-fun b!7245583 () Bool)

(declare-fun e!4344263 () Bool)

(assert (=> b!7245583 (= e!4344263 (or (not (= (exprs!8032 ct2!328) Nil!70249)) (= lt!2582519 (exprs!8032 lt!2582409))))))

(declare-fun b!7245581 () Bool)

(declare-fun e!4344264 () List!70373)

(assert (=> b!7245581 (= e!4344264 (Cons!70249 (h!76697 (exprs!8032 lt!2582409)) (++!16468 (t!384425 (exprs!8032 lt!2582409)) (exprs!8032 ct2!328))))))

(declare-fun b!7245580 () Bool)

(assert (=> b!7245580 (= e!4344264 (exprs!8032 ct2!328))))

(declare-fun d!2251567 () Bool)

(assert (=> d!2251567 e!4344263))

(declare-fun res!2939040 () Bool)

(assert (=> d!2251567 (=> (not res!2939040) (not e!4344263))))

(declare-fun content!14541 (List!70373) (Set Regex!18592))

(assert (=> d!2251567 (= res!2939040 (= (content!14541 lt!2582519) (set.union (content!14541 (exprs!8032 lt!2582409)) (content!14541 (exprs!8032 ct2!328)))))))

(assert (=> d!2251567 (= lt!2582519 e!4344264)))

(declare-fun c!1346017 () Bool)

(assert (=> d!2251567 (= c!1346017 (is-Nil!70249 (exprs!8032 lt!2582409)))))

(assert (=> d!2251567 (= (++!16468 (exprs!8032 lt!2582409) (exprs!8032 ct2!328)) lt!2582519)))

(declare-fun b!7245582 () Bool)

(declare-fun res!2939041 () Bool)

(assert (=> b!7245582 (=> (not res!2939041) (not e!4344263))))

(declare-fun size!41664 (List!70373) Int)

(assert (=> b!7245582 (= res!2939041 (= (size!41664 lt!2582519) (+ (size!41664 (exprs!8032 lt!2582409)) (size!41664 (exprs!8032 ct2!328)))))))

(assert (= (and d!2251567 c!1346017) b!7245580))

(assert (= (and d!2251567 (not c!1346017)) b!7245581))

(assert (= (and d!2251567 res!2939040) b!7245582))

(assert (= (and b!7245582 res!2939041) b!7245583))

(declare-fun m!7922106 () Bool)

(assert (=> b!7245581 m!7922106))

(declare-fun m!7922108 () Bool)

(assert (=> d!2251567 m!7922108))

(declare-fun m!7922110 () Bool)

(assert (=> d!2251567 m!7922110))

(declare-fun m!7922112 () Bool)

(assert (=> d!2251567 m!7922112))

(declare-fun m!7922114 () Bool)

(assert (=> b!7245582 m!7922114))

(declare-fun m!7922116 () Bool)

(assert (=> b!7245582 m!7922116))

(declare-fun m!7922118 () Bool)

(assert (=> b!7245582 m!7922118))

(assert (=> b!7245437 d!2251567))

(declare-fun d!2251569 () Bool)

(declare-fun c!1346019 () Bool)

(declare-fun e!4344265 () Bool)

(assert (=> d!2251569 (= c!1346019 e!4344265)))

(declare-fun res!2939042 () Bool)

(assert (=> d!2251569 (=> (not res!2939042) (not e!4344265))))

(assert (=> d!2251569 (= res!2939042 (is-Cons!70249 (exprs!8032 lt!2582423)))))

(declare-fun e!4344266 () (Set Context!15064))

(assert (=> d!2251569 (= (derivationStepZipperUp!2446 lt!2582423 (h!76699 s1!1971)) e!4344266)))

(declare-fun b!7245584 () Bool)

(declare-fun e!4344267 () (Set Context!15064))

(declare-fun call!659941 () (Set Context!15064))

(assert (=> b!7245584 (= e!4344267 call!659941)))

(declare-fun b!7245585 () Bool)

(assert (=> b!7245585 (= e!4344266 e!4344267)))

(declare-fun c!1346018 () Bool)

(assert (=> b!7245585 (= c!1346018 (is-Cons!70249 (exprs!8032 lt!2582423)))))

(declare-fun b!7245586 () Bool)

(assert (=> b!7245586 (= e!4344266 (set.union call!659941 (derivationStepZipperUp!2446 (Context!15065 (t!384425 (exprs!8032 lt!2582423))) (h!76699 s1!1971))))))

(declare-fun b!7245587 () Bool)

(assert (=> b!7245587 (= e!4344267 (as set.empty (Set Context!15064)))))

(declare-fun bm!659936 () Bool)

(assert (=> bm!659936 (= call!659941 (derivationStepZipperDown!2616 (h!76697 (exprs!8032 lt!2582423)) (Context!15065 (t!384425 (exprs!8032 lt!2582423))) (h!76699 s1!1971)))))

(declare-fun b!7245588 () Bool)

(assert (=> b!7245588 (= e!4344265 (nullable!7885 (h!76697 (exprs!8032 lt!2582423))))))

(assert (= (and d!2251569 res!2939042) b!7245588))

(assert (= (and d!2251569 c!1346019) b!7245586))

(assert (= (and d!2251569 (not c!1346019)) b!7245585))

(assert (= (and b!7245585 c!1346018) b!7245584))

(assert (= (and b!7245585 (not c!1346018)) b!7245587))

(assert (= (or b!7245586 b!7245584) bm!659936))

(declare-fun m!7922120 () Bool)

(assert (=> b!7245586 m!7922120))

(declare-fun m!7922122 () Bool)

(assert (=> bm!659936 m!7922122))

(declare-fun m!7922124 () Bool)

(assert (=> b!7245588 m!7922124))

(assert (=> b!7245432 d!2251569))

(declare-fun d!2251571 () Bool)

(declare-fun dynLambda!28687 (Int Context!15064) (Set Context!15064))

(assert (=> d!2251571 (= (flatMap!2780 lt!2582418 lambda!442982) (dynLambda!28687 lambda!442982 lt!2582423))))

(declare-fun lt!2582522 () Unit!163771)

(declare-fun choose!55895 ((Set Context!15064) Context!15064 Int) Unit!163771)

(assert (=> d!2251571 (= lt!2582522 (choose!55895 lt!2582418 lt!2582423 lambda!442982))))

(assert (=> d!2251571 (= lt!2582418 (set.insert lt!2582423 (as set.empty (Set Context!15064))))))

(assert (=> d!2251571 (= (lemmaFlatMapOnSingletonSet!2203 lt!2582418 lt!2582423 lambda!442982) lt!2582522)))

(declare-fun b_lambda!278071 () Bool)

(assert (=> (not b_lambda!278071) (not d!2251571)))

(declare-fun bs!1905145 () Bool)

(assert (= bs!1905145 d!2251571))

(assert (=> bs!1905145 m!7921894))

(declare-fun m!7922126 () Bool)

(assert (=> bs!1905145 m!7922126))

(declare-fun m!7922128 () Bool)

(assert (=> bs!1905145 m!7922128))

(assert (=> bs!1905145 m!7921850))

(assert (=> b!7245432 d!2251571))

(declare-fun d!2251573 () Bool)

(assert (=> d!2251573 (= (flatMap!2780 lt!2582406 lambda!442982) (dynLambda!28687 lambda!442982 ct1!232))))

(declare-fun lt!2582523 () Unit!163771)

(assert (=> d!2251573 (= lt!2582523 (choose!55895 lt!2582406 ct1!232 lambda!442982))))

(assert (=> d!2251573 (= lt!2582406 (set.insert ct1!232 (as set.empty (Set Context!15064))))))

(assert (=> d!2251573 (= (lemmaFlatMapOnSingletonSet!2203 lt!2582406 ct1!232 lambda!442982) lt!2582523)))

(declare-fun b_lambda!278073 () Bool)

(assert (=> (not b_lambda!278073) (not d!2251573)))

(declare-fun bs!1905146 () Bool)

(assert (= bs!1905146 d!2251573))

(assert (=> bs!1905146 m!7921882))

(declare-fun m!7922130 () Bool)

(assert (=> bs!1905146 m!7922130))

(declare-fun m!7922132 () Bool)

(assert (=> bs!1905146 m!7922132))

(assert (=> bs!1905146 m!7921906))

(assert (=> b!7245432 d!2251573))

(declare-fun d!2251575 () Bool)

(declare-fun nullableFct!3095 (Regex!18592) Bool)

(assert (=> d!2251575 (= (nullable!7885 (h!76697 (exprs!8032 ct1!232))) (nullableFct!3095 (h!76697 (exprs!8032 ct1!232))))))

(declare-fun bs!1905147 () Bool)

(assert (= bs!1905147 d!2251575))

(declare-fun m!7922134 () Bool)

(assert (=> bs!1905147 m!7922134))

(assert (=> b!7245432 d!2251575))

(declare-fun d!2251577 () Bool)

(assert (=> d!2251577 (forall!17437 (++!16468 (exprs!8032 ct1!232) (exprs!8032 ct2!328)) lambda!442980)))

(declare-fun lt!2582524 () Unit!163771)

(assert (=> d!2251577 (= lt!2582524 (choose!55893 (exprs!8032 ct1!232) (exprs!8032 ct2!328) lambda!442980))))

(assert (=> d!2251577 (forall!17437 (exprs!8032 ct1!232) lambda!442980)))

(assert (=> d!2251577 (= (lemmaConcatPreservesForall!1401 (exprs!8032 ct1!232) (exprs!8032 ct2!328) lambda!442980) lt!2582524)))

(declare-fun bs!1905148 () Bool)

(assert (= bs!1905148 d!2251577))

(assert (=> bs!1905148 m!7921852))

(assert (=> bs!1905148 m!7921852))

(declare-fun m!7922136 () Bool)

(assert (=> bs!1905148 m!7922136))

(declare-fun m!7922138 () Bool)

(assert (=> bs!1905148 m!7922138))

(declare-fun m!7922140 () Bool)

(assert (=> bs!1905148 m!7922140))

(assert (=> b!7245432 d!2251577))

(declare-fun d!2251579 () Bool)

(assert (=> d!2251579 (= (tail!14263 lt!2582421) (t!384425 lt!2582421))))

(assert (=> b!7245432 d!2251579))

(assert (=> b!7245432 d!2251565))

(declare-fun d!2251581 () Bool)

(declare-fun choose!55896 ((Set Context!15064) Int) (Set Context!15064))

(assert (=> d!2251581 (= (flatMap!2780 lt!2582418 lambda!442982) (choose!55896 lt!2582418 lambda!442982))))

(declare-fun bs!1905149 () Bool)

(assert (= bs!1905149 d!2251581))

(declare-fun m!7922142 () Bool)

(assert (=> bs!1905149 m!7922142))

(assert (=> b!7245432 d!2251581))

(declare-fun d!2251583 () Bool)

(declare-fun c!1346039 () Bool)

(assert (=> d!2251583 (= c!1346039 (and (is-ElementMatch!18592 (h!76697 (exprs!8032 ct1!232))) (= (c!1345968 (h!76697 (exprs!8032 ct1!232))) (h!76699 s1!1971))))))

(declare-fun e!4344294 () (Set Context!15064))

(assert (=> d!2251583 (= (derivationStepZipperDown!2616 (h!76697 (exprs!8032 ct1!232)) (Context!15065 (tail!14263 lt!2582421)) (h!76699 s1!1971)) e!4344294)))

(declare-fun call!659965 () List!70373)

(declare-fun bm!659955 () Bool)

(declare-fun c!1346041 () Bool)

(declare-fun c!1346040 () Bool)

(declare-fun $colon$colon!2905 (List!70373 Regex!18592) List!70373)

(assert (=> bm!659955 (= call!659965 ($colon$colon!2905 (exprs!8032 (Context!15065 (tail!14263 lt!2582421))) (ite (or c!1346040 c!1346041) (regTwo!37696 (h!76697 (exprs!8032 ct1!232))) (h!76697 (exprs!8032 ct1!232)))))))

(declare-fun b!7245628 () Bool)

(declare-fun e!4344293 () (Set Context!15064))

(declare-fun call!659964 () (Set Context!15064))

(assert (=> b!7245628 (= e!4344293 call!659964)))

(declare-fun bm!659956 () Bool)

(declare-fun call!659961 () List!70373)

(assert (=> bm!659956 (= call!659961 call!659965)))

(declare-fun b!7245629 () Bool)

(declare-fun e!4344291 () (Set Context!15064))

(assert (=> b!7245629 (= e!4344294 e!4344291)))

(declare-fun c!1346038 () Bool)

(assert (=> b!7245629 (= c!1346038 (is-Union!18592 (h!76697 (exprs!8032 ct1!232))))))

(declare-fun call!659963 () (Set Context!15064))

(declare-fun bm!659957 () Bool)

(assert (=> bm!659957 (= call!659963 (derivationStepZipperDown!2616 (ite c!1346038 (regOne!37697 (h!76697 (exprs!8032 ct1!232))) (regOne!37696 (h!76697 (exprs!8032 ct1!232)))) (ite c!1346038 (Context!15065 (tail!14263 lt!2582421)) (Context!15065 call!659965)) (h!76699 s1!1971)))))

(declare-fun b!7245630 () Bool)

(declare-fun e!4344290 () Bool)

(assert (=> b!7245630 (= e!4344290 (nullable!7885 (regOne!37696 (h!76697 (exprs!8032 ct1!232)))))))

(declare-fun bm!659958 () Bool)

(declare-fun call!659962 () (Set Context!15064))

(assert (=> bm!659958 (= call!659964 call!659962)))

(declare-fun b!7245631 () Bool)

(declare-fun call!659960 () (Set Context!15064))

(assert (=> b!7245631 (= e!4344291 (set.union call!659963 call!659960))))

(declare-fun b!7245632 () Bool)

(declare-fun e!4344289 () (Set Context!15064))

(assert (=> b!7245632 (= e!4344289 e!4344293)))

(assert (=> b!7245632 (= c!1346041 (is-Concat!27437 (h!76697 (exprs!8032 ct1!232))))))

(declare-fun bm!659959 () Bool)

(assert (=> bm!659959 (= call!659962 call!659960)))

(declare-fun b!7245633 () Bool)

(assert (=> b!7245633 (= e!4344294 (set.insert (Context!15065 (tail!14263 lt!2582421)) (as set.empty (Set Context!15064))))))

(declare-fun b!7245634 () Bool)

(declare-fun c!1346042 () Bool)

(assert (=> b!7245634 (= c!1346042 (is-Star!18592 (h!76697 (exprs!8032 ct1!232))))))

(declare-fun e!4344292 () (Set Context!15064))

(assert (=> b!7245634 (= e!4344293 e!4344292)))

(declare-fun b!7245635 () Bool)

(assert (=> b!7245635 (= e!4344292 (as set.empty (Set Context!15064)))))

(declare-fun b!7245636 () Bool)

(assert (=> b!7245636 (= e!4344292 call!659964)))

(declare-fun b!7245637 () Bool)

(assert (=> b!7245637 (= e!4344289 (set.union call!659963 call!659962))))

(declare-fun b!7245638 () Bool)

(assert (=> b!7245638 (= c!1346040 e!4344290)))

(declare-fun res!2939046 () Bool)

(assert (=> b!7245638 (=> (not res!2939046) (not e!4344290))))

(assert (=> b!7245638 (= res!2939046 (is-Concat!27437 (h!76697 (exprs!8032 ct1!232))))))

(assert (=> b!7245638 (= e!4344291 e!4344289)))

(declare-fun bm!659960 () Bool)

(assert (=> bm!659960 (= call!659960 (derivationStepZipperDown!2616 (ite c!1346038 (regTwo!37697 (h!76697 (exprs!8032 ct1!232))) (ite c!1346040 (regTwo!37696 (h!76697 (exprs!8032 ct1!232))) (ite c!1346041 (regOne!37696 (h!76697 (exprs!8032 ct1!232))) (reg!18921 (h!76697 (exprs!8032 ct1!232)))))) (ite (or c!1346038 c!1346040) (Context!15065 (tail!14263 lt!2582421)) (Context!15065 call!659961)) (h!76699 s1!1971)))))

(assert (= (and d!2251583 c!1346039) b!7245633))

(assert (= (and d!2251583 (not c!1346039)) b!7245629))

(assert (= (and b!7245629 c!1346038) b!7245631))

(assert (= (and b!7245629 (not c!1346038)) b!7245638))

(assert (= (and b!7245638 res!2939046) b!7245630))

(assert (= (and b!7245638 c!1346040) b!7245637))

(assert (= (and b!7245638 (not c!1346040)) b!7245632))

(assert (= (and b!7245632 c!1346041) b!7245628))

(assert (= (and b!7245632 (not c!1346041)) b!7245634))

(assert (= (and b!7245634 c!1346042) b!7245636))

(assert (= (and b!7245634 (not c!1346042)) b!7245635))

(assert (= (or b!7245628 b!7245636) bm!659956))

(assert (= (or b!7245628 b!7245636) bm!659958))

(assert (= (or b!7245637 bm!659956) bm!659955))

(assert (= (or b!7245637 bm!659958) bm!659959))

(assert (= (or b!7245631 bm!659959) bm!659960))

(assert (= (or b!7245631 b!7245637) bm!659957))

(declare-fun m!7922166 () Bool)

(assert (=> bm!659960 m!7922166))

(declare-fun m!7922168 () Bool)

(assert (=> b!7245633 m!7922168))

(declare-fun m!7922170 () Bool)

(assert (=> b!7245630 m!7922170))

(declare-fun m!7922172 () Bool)

(assert (=> bm!659955 m!7922172))

(declare-fun m!7922174 () Bool)

(assert (=> bm!659957 m!7922174))

(assert (=> b!7245432 d!2251583))

(declare-fun d!2251589 () Bool)

(assert (=> d!2251589 (= (flatMap!2780 lt!2582406 lambda!442982) (choose!55896 lt!2582406 lambda!442982))))

(declare-fun bs!1905150 () Bool)

(assert (= bs!1905150 d!2251589))

(declare-fun m!7922176 () Bool)

(assert (=> bs!1905150 m!7922176))

(assert (=> b!7245432 d!2251589))

(declare-fun e!4344295 () Bool)

(declare-fun lt!2582525 () List!70373)

(declare-fun b!7245642 () Bool)

(assert (=> b!7245642 (= e!4344295 (or (not (= (exprs!8032 ct2!328) Nil!70249)) (= lt!2582525 (exprs!8032 ct1!232))))))

(declare-fun b!7245640 () Bool)

(declare-fun e!4344296 () List!70373)

(assert (=> b!7245640 (= e!4344296 (Cons!70249 (h!76697 (exprs!8032 ct1!232)) (++!16468 (t!384425 (exprs!8032 ct1!232)) (exprs!8032 ct2!328))))))

(declare-fun b!7245639 () Bool)

(assert (=> b!7245639 (= e!4344296 (exprs!8032 ct2!328))))

(declare-fun d!2251591 () Bool)

(assert (=> d!2251591 e!4344295))

(declare-fun res!2939047 () Bool)

(assert (=> d!2251591 (=> (not res!2939047) (not e!4344295))))

(assert (=> d!2251591 (= res!2939047 (= (content!14541 lt!2582525) (set.union (content!14541 (exprs!8032 ct1!232)) (content!14541 (exprs!8032 ct2!328)))))))

(assert (=> d!2251591 (= lt!2582525 e!4344296)))

(declare-fun c!1346043 () Bool)

(assert (=> d!2251591 (= c!1346043 (is-Nil!70249 (exprs!8032 ct1!232)))))

(assert (=> d!2251591 (= (++!16468 (exprs!8032 ct1!232) (exprs!8032 ct2!328)) lt!2582525)))

(declare-fun b!7245641 () Bool)

(declare-fun res!2939048 () Bool)

(assert (=> b!7245641 (=> (not res!2939048) (not e!4344295))))

(assert (=> b!7245641 (= res!2939048 (= (size!41664 lt!2582525) (+ (size!41664 (exprs!8032 ct1!232)) (size!41664 (exprs!8032 ct2!328)))))))

(assert (= (and d!2251591 c!1346043) b!7245639))

(assert (= (and d!2251591 (not c!1346043)) b!7245640))

(assert (= (and d!2251591 res!2939047) b!7245641))

(assert (= (and b!7245641 res!2939048) b!7245642))

(declare-fun m!7922178 () Bool)

(assert (=> b!7245640 m!7922178))

(declare-fun m!7922180 () Bool)

(assert (=> d!2251591 m!7922180))

(declare-fun m!7922182 () Bool)

(assert (=> d!2251591 m!7922182))

(assert (=> d!2251591 m!7922112))

(declare-fun m!7922184 () Bool)

(assert (=> b!7245641 m!7922184))

(declare-fun m!7922186 () Bool)

(assert (=> b!7245641 m!7922186))

(assert (=> b!7245641 m!7922118))

(assert (=> b!7245433 d!2251591))

(assert (=> b!7245433 d!2251577))

(declare-fun d!2251593 () Bool)

(assert (=> d!2251593 (= (tail!14263 (exprs!8032 ct1!232)) (t!384425 (exprs!8032 ct1!232)))))

(assert (=> b!7245434 d!2251593))

(assert (=> b!7245434 d!2251569))

(assert (=> b!7245434 d!2251577))

(declare-fun d!2251595 () Bool)

(assert (=> d!2251595 (= (isEmpty!40470 lt!2582421) (is-Nil!70249 lt!2582421))))

(assert (=> b!7245434 d!2251595))

(declare-fun d!2251597 () Bool)

(declare-fun c!1346045 () Bool)

(assert (=> d!2251597 (= c!1346045 (and (is-ElementMatch!18592 (h!76697 (exprs!8032 ct1!232))) (= (c!1345968 (h!76697 (exprs!8032 ct1!232))) (h!76699 s1!1971))))))

(declare-fun e!4344302 () (Set Context!15064))

(assert (=> d!2251597 (= (derivationStepZipperDown!2616 (h!76697 (exprs!8032 ct1!232)) (Context!15065 (tail!14263 (exprs!8032 ct1!232))) (h!76699 s1!1971)) e!4344302)))

(declare-fun c!1346046 () Bool)

(declare-fun c!1346047 () Bool)

(declare-fun call!659971 () List!70373)

(declare-fun bm!659961 () Bool)

(assert (=> bm!659961 (= call!659971 ($colon$colon!2905 (exprs!8032 (Context!15065 (tail!14263 (exprs!8032 ct1!232)))) (ite (or c!1346046 c!1346047) (regTwo!37696 (h!76697 (exprs!8032 ct1!232))) (h!76697 (exprs!8032 ct1!232)))))))

(declare-fun b!7245643 () Bool)

(declare-fun e!4344301 () (Set Context!15064))

(declare-fun call!659970 () (Set Context!15064))

(assert (=> b!7245643 (= e!4344301 call!659970)))

(declare-fun bm!659962 () Bool)

(declare-fun call!659967 () List!70373)

(assert (=> bm!659962 (= call!659967 call!659971)))

(declare-fun b!7245644 () Bool)

(declare-fun e!4344299 () (Set Context!15064))

(assert (=> b!7245644 (= e!4344302 e!4344299)))

(declare-fun c!1346044 () Bool)

(assert (=> b!7245644 (= c!1346044 (is-Union!18592 (h!76697 (exprs!8032 ct1!232))))))

(declare-fun call!659969 () (Set Context!15064))

(declare-fun bm!659963 () Bool)

(assert (=> bm!659963 (= call!659969 (derivationStepZipperDown!2616 (ite c!1346044 (regOne!37697 (h!76697 (exprs!8032 ct1!232))) (regOne!37696 (h!76697 (exprs!8032 ct1!232)))) (ite c!1346044 (Context!15065 (tail!14263 (exprs!8032 ct1!232))) (Context!15065 call!659971)) (h!76699 s1!1971)))))

(declare-fun b!7245645 () Bool)

(declare-fun e!4344298 () Bool)

(assert (=> b!7245645 (= e!4344298 (nullable!7885 (regOne!37696 (h!76697 (exprs!8032 ct1!232)))))))

(declare-fun bm!659964 () Bool)

(declare-fun call!659968 () (Set Context!15064))

(assert (=> bm!659964 (= call!659970 call!659968)))

(declare-fun b!7245646 () Bool)

(declare-fun call!659966 () (Set Context!15064))

(assert (=> b!7245646 (= e!4344299 (set.union call!659969 call!659966))))

(declare-fun b!7245647 () Bool)

(declare-fun e!4344297 () (Set Context!15064))

(assert (=> b!7245647 (= e!4344297 e!4344301)))

(assert (=> b!7245647 (= c!1346047 (is-Concat!27437 (h!76697 (exprs!8032 ct1!232))))))

(declare-fun bm!659965 () Bool)

(assert (=> bm!659965 (= call!659968 call!659966)))

(declare-fun b!7245648 () Bool)

(assert (=> b!7245648 (= e!4344302 (set.insert (Context!15065 (tail!14263 (exprs!8032 ct1!232))) (as set.empty (Set Context!15064))))))

(declare-fun b!7245649 () Bool)

(declare-fun c!1346048 () Bool)

(assert (=> b!7245649 (= c!1346048 (is-Star!18592 (h!76697 (exprs!8032 ct1!232))))))

(declare-fun e!4344300 () (Set Context!15064))

(assert (=> b!7245649 (= e!4344301 e!4344300)))

(declare-fun b!7245650 () Bool)

(assert (=> b!7245650 (= e!4344300 (as set.empty (Set Context!15064)))))

(declare-fun b!7245651 () Bool)

(assert (=> b!7245651 (= e!4344300 call!659970)))

(declare-fun b!7245652 () Bool)

(assert (=> b!7245652 (= e!4344297 (set.union call!659969 call!659968))))

(declare-fun b!7245653 () Bool)

(assert (=> b!7245653 (= c!1346046 e!4344298)))

(declare-fun res!2939049 () Bool)

(assert (=> b!7245653 (=> (not res!2939049) (not e!4344298))))

(assert (=> b!7245653 (= res!2939049 (is-Concat!27437 (h!76697 (exprs!8032 ct1!232))))))

(assert (=> b!7245653 (= e!4344299 e!4344297)))

(declare-fun bm!659966 () Bool)

(assert (=> bm!659966 (= call!659966 (derivationStepZipperDown!2616 (ite c!1346044 (regTwo!37697 (h!76697 (exprs!8032 ct1!232))) (ite c!1346046 (regTwo!37696 (h!76697 (exprs!8032 ct1!232))) (ite c!1346047 (regOne!37696 (h!76697 (exprs!8032 ct1!232))) (reg!18921 (h!76697 (exprs!8032 ct1!232)))))) (ite (or c!1346044 c!1346046) (Context!15065 (tail!14263 (exprs!8032 ct1!232))) (Context!15065 call!659967)) (h!76699 s1!1971)))))

(assert (= (and d!2251597 c!1346045) b!7245648))

(assert (= (and d!2251597 (not c!1346045)) b!7245644))

(assert (= (and b!7245644 c!1346044) b!7245646))

(assert (= (and b!7245644 (not c!1346044)) b!7245653))

(assert (= (and b!7245653 res!2939049) b!7245645))

(assert (= (and b!7245653 c!1346046) b!7245652))

(assert (= (and b!7245653 (not c!1346046)) b!7245647))

(assert (= (and b!7245647 c!1346047) b!7245643))

(assert (= (and b!7245647 (not c!1346047)) b!7245649))

(assert (= (and b!7245649 c!1346048) b!7245651))

(assert (= (and b!7245649 (not c!1346048)) b!7245650))

(assert (= (or b!7245643 b!7245651) bm!659962))

(assert (= (or b!7245643 b!7245651) bm!659964))

(assert (= (or b!7245652 bm!659962) bm!659961))

(assert (= (or b!7245652 bm!659964) bm!659965))

(assert (= (or b!7245646 bm!659965) bm!659966))

(assert (= (or b!7245646 b!7245652) bm!659963))

(declare-fun m!7922188 () Bool)

(assert (=> bm!659966 m!7922188))

(declare-fun m!7922190 () Bool)

(assert (=> b!7245648 m!7922190))

(assert (=> b!7245645 m!7922170))

(declare-fun m!7922192 () Bool)

(assert (=> bm!659961 m!7922192))

(declare-fun m!7922194 () Bool)

(assert (=> bm!659963 m!7922194))

(assert (=> b!7245434 d!2251597))

(declare-fun b!7245658 () Bool)

(declare-fun e!4344305 () Bool)

(declare-fun tp!2036167 () Bool)

(assert (=> b!7245658 (= e!4344305 (and tp_is_empty!46649 tp!2036167))))

(assert (=> b!7245440 (= tp!2036150 e!4344305)))

(assert (= (and b!7245440 (is-Cons!70251 (t!384427 s1!1971))) b!7245658))

(declare-fun b!7245663 () Bool)

(declare-fun e!4344308 () Bool)

(declare-fun tp!2036172 () Bool)

(declare-fun tp!2036173 () Bool)

(assert (=> b!7245663 (= e!4344308 (and tp!2036172 tp!2036173))))

(assert (=> b!7245431 (= tp!2036152 e!4344308)))

(assert (= (and b!7245431 (is-Cons!70249 (exprs!8032 ct2!328))) b!7245663))

(declare-fun b!7245664 () Bool)

(declare-fun e!4344309 () Bool)

(declare-fun tp!2036174 () Bool)

(assert (=> b!7245664 (= e!4344309 (and tp_is_empty!46649 tp!2036174))))

(assert (=> b!7245438 (= tp!2036151 e!4344309)))

(assert (= (and b!7245438 (is-Cons!70251 (t!384427 s2!1849))) b!7245664))

(declare-fun b!7245665 () Bool)

(declare-fun e!4344310 () Bool)

(declare-fun tp!2036175 () Bool)

(declare-fun tp!2036176 () Bool)

(assert (=> b!7245665 (= e!4344310 (and tp!2036175 tp!2036176))))

(assert (=> b!7245439 (= tp!2036149 e!4344310)))

(assert (= (and b!7245439 (is-Cons!70249 (exprs!8032 ct1!232))) b!7245665))

(declare-fun b_lambda!278075 () Bool)

(assert (= b_lambda!278073 (or b!7245432 b_lambda!278075)))

(declare-fun bs!1905151 () Bool)

(declare-fun d!2251599 () Bool)

(assert (= bs!1905151 (and d!2251599 b!7245432)))

(assert (=> bs!1905151 (= (dynLambda!28687 lambda!442982 ct1!232) (derivationStepZipperUp!2446 ct1!232 (h!76699 s1!1971)))))

(assert (=> bs!1905151 m!7921866))

(assert (=> d!2251573 d!2251599))

(declare-fun b_lambda!278077 () Bool)

(assert (= b_lambda!278071 (or b!7245432 b_lambda!278077)))

(declare-fun bs!1905152 () Bool)

(declare-fun d!2251601 () Bool)

(assert (= bs!1905152 (and d!2251601 b!7245432)))

(assert (=> bs!1905152 (= (dynLambda!28687 lambda!442982 lt!2582423) (derivationStepZipperUp!2446 lt!2582423 (h!76699 s1!1971)))))

(assert (=> bs!1905152 m!7921880))

(assert (=> d!2251571 d!2251601))

(declare-fun b_lambda!278079 () Bool)

(assert (= b_lambda!278069 (or b!7245430 b_lambda!278079)))

(declare-fun bs!1905153 () Bool)

(declare-fun d!2251603 () Bool)

(assert (= bs!1905153 (and d!2251603 b!7245430)))

(assert (=> bs!1905153 (= (dynLambda!28686 lambda!442981 lt!2582506) (matchZipper!3502 (set.insert lt!2582506 (as set.empty (Set Context!15064))) (t!384427 s1!1971)))))

(declare-fun m!7922196 () Bool)

(assert (=> bs!1905153 m!7922196))

(assert (=> bs!1905153 m!7922196))

(declare-fun m!7922198 () Bool)

(assert (=> bs!1905153 m!7922198))

(assert (=> d!2251553 d!2251603))

(push 1)

(assert (not bs!1905153))

(assert (not b!7245508))

(assert (not d!2251529))

(assert (not b!7245658))

(assert (not d!2251545))

(assert (not d!2251555))

(assert (not b!7245530))

(assert (not d!2251541))

(assert (not d!2251537))

(assert (not d!2251591))

(assert (not b!7245664))

(assert (not b!7245630))

(assert (not d!2251567))

(assert (not d!2251577))

(assert (not d!2251539))

(assert (not b!7245586))

(assert (not b!7245511))

(assert (not d!2251543))

(assert (not b!7245533))

(assert (not b!7245582))

(assert (not b!7245507))

(assert (not b!7245569))

(assert (not d!2251575))

(assert (not bm!659960))

(assert (not b_lambda!278079))

(assert (not b_lambda!278077))

(assert (not d!2251561))

(assert (not d!2251571))

(assert (not bm!659963))

(assert (not d!2251563))

(assert (not b!7245645))

(assert (not d!2251573))

(assert (not bm!659936))

(assert (not d!2251535))

(assert (not b!7245504))

(assert (not b!7245490))

(assert (not b!7245534))

(assert (not bm!659933))

(assert (not d!2251581))

(assert (not b!7245581))

(assert (not b!7245491))

(assert (not b!7245571))

(assert (not b!7245588))

(assert (not d!2251525))

(assert (not d!2251523))

(assert (not b!7245640))

(assert (not bm!659955))

(assert (not b!7245512))

(assert (not d!2251553))

(assert (not bm!659966))

(assert tp_is_empty!46649)

(assert (not b!7245531))

(assert (not b!7245665))

(assert (not d!2251527))

(assert (not bs!1905151))

(assert (not bm!659961))

(assert (not d!2251589))

(assert (not b!7245663))

(assert (not bm!659957))

(assert (not b!7245641))

(assert (not bs!1905152))

(assert (not b_lambda!278075))

(assert (not d!2251547))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

