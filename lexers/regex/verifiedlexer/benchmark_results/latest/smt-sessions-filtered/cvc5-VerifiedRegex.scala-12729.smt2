; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!703780 () Bool)

(assert start!703780)

(declare-fun res!2937817 () Bool)

(declare-fun e!4341989 () Bool)

(assert (=> start!703780 (=> (not res!2937817) (not e!4341989))))

(declare-datatypes ((C!37406 0))(
  ( (C!37407 (val!28651 Int)) )
))
(declare-datatypes ((Regex!18566 0))(
  ( (ElementMatch!18566 (c!1344934 C!37406)) (Concat!27411 (regOne!37644 Regex!18566) (regTwo!37644 Regex!18566)) (EmptyExpr!18566) (Star!18566 (reg!18895 Regex!18566)) (EmptyLang!18566) (Union!18566 (regOne!37645 Regex!18566) (regTwo!37645 Regex!18566)) )
))
(declare-datatypes ((List!70301 0))(
  ( (Nil!70177) (Cons!70177 (h!76625 Regex!18566) (t!384352 List!70301)) )
))
(declare-datatypes ((Context!15012 0))(
  ( (Context!15013 (exprs!8006 List!70301)) )
))
(declare-fun lt!2580367 () (Set Context!15012))

(declare-datatypes ((List!70302 0))(
  ( (Nil!70178) (Cons!70178 (h!76626 C!37406) (t!384353 List!70302)) )
))
(declare-fun s1!1971 () List!70302)

(declare-fun matchZipper!3476 ((Set Context!15012) List!70302) Bool)

(assert (=> start!703780 (= res!2937817 (matchZipper!3476 lt!2580367 s1!1971))))

(declare-fun ct1!232 () Context!15012)

(assert (=> start!703780 (= lt!2580367 (set.insert ct1!232 (as set.empty (Set Context!15012))))))

(assert (=> start!703780 e!4341989))

(declare-fun e!4341986 () Bool)

(declare-fun inv!89426 (Context!15012) Bool)

(assert (=> start!703780 (and (inv!89426 ct1!232) e!4341986)))

(declare-fun e!4341988 () Bool)

(assert (=> start!703780 e!4341988))

(declare-fun e!4341987 () Bool)

(assert (=> start!703780 e!4341987))

(declare-fun ct2!328 () Context!15012)

(declare-fun e!4341985 () Bool)

(assert (=> start!703780 (and (inv!89426 ct2!328) e!4341985)))

(declare-fun b!7241994 () Bool)

(declare-fun tp!2035473 () Bool)

(assert (=> b!7241994 (= e!4341986 tp!2035473)))

(declare-fun b!7241995 () Bool)

(declare-fun tp_is_empty!46597 () Bool)

(declare-fun tp!2035475 () Bool)

(assert (=> b!7241995 (= e!4341988 (and tp_is_empty!46597 tp!2035475))))

(declare-fun b!7241996 () Bool)

(declare-fun e!4341984 () Bool)

(assert (=> b!7241996 (= e!4341989 e!4341984)))

(declare-fun res!2937815 () Bool)

(assert (=> b!7241996 (=> (not res!2937815) (not e!4341984))))

(assert (=> b!7241996 (= res!2937815 (is-Nil!70177 (exprs!8006 ct1!232)))))

(declare-fun lt!2580365 () List!70301)

(declare-fun ++!16422 (List!70301 List!70301) List!70301)

(assert (=> b!7241996 (= lt!2580365 (++!16422 (exprs!8006 ct1!232) (exprs!8006 ct2!328)))))

(declare-fun lambda!442151 () Int)

(declare-datatypes ((Unit!163718 0))(
  ( (Unit!163719) )
))
(declare-fun lt!2580363 () Unit!163718)

(declare-fun lemmaConcatPreservesForall!1375 (List!70301 List!70301 Int) Unit!163718)

(assert (=> b!7241996 (= lt!2580363 (lemmaConcatPreservesForall!1375 (exprs!8006 ct1!232) (exprs!8006 ct2!328) lambda!442151))))

(declare-fun b!7241997 () Bool)

(declare-fun tp!2035474 () Bool)

(assert (=> b!7241997 (= e!4341987 (and tp_is_empty!46597 tp!2035474))))

(declare-fun b!7241998 () Bool)

(declare-fun tp!2035476 () Bool)

(assert (=> b!7241998 (= e!4341985 tp!2035476)))

(declare-fun b!7241999 () Bool)

(assert (=> b!7241999 (= e!4341984 (not (= (Context!15013 lt!2580365) ct2!328)))))

(declare-fun lt!2580366 () Unit!163718)

(assert (=> b!7241999 (= lt!2580366 (lemmaConcatPreservesForall!1375 (exprs!8006 ct1!232) (exprs!8006 ct2!328) lambda!442151))))

(declare-fun isEmpty!40435 (List!70302) Bool)

(assert (=> b!7241999 (isEmpty!40435 s1!1971)))

(declare-fun lt!2580364 () Unit!163718)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!49 ((Set Context!15012) List!70302) Unit!163718)

(assert (=> b!7241999 (= lt!2580364 (lemmaZipperOfEmptyContextMatchesEmptyString!49 lt!2580367 s1!1971))))

(declare-fun b!7242000 () Bool)

(declare-fun res!2937816 () Bool)

(assert (=> b!7242000 (=> (not res!2937816) (not e!4341989))))

(declare-fun s2!1849 () List!70302)

(assert (=> b!7242000 (= res!2937816 (matchZipper!3476 (set.insert ct2!328 (as set.empty (Set Context!15012))) s2!1849))))

(assert (= (and start!703780 res!2937817) b!7242000))

(assert (= (and b!7242000 res!2937816) b!7241996))

(assert (= (and b!7241996 res!2937815) b!7241999))

(assert (= start!703780 b!7241994))

(assert (= (and start!703780 (is-Cons!70178 s1!1971)) b!7241995))

(assert (= (and start!703780 (is-Cons!70178 s2!1849)) b!7241997))

(assert (= start!703780 b!7241998))

(declare-fun m!7916700 () Bool)

(assert (=> start!703780 m!7916700))

(declare-fun m!7916702 () Bool)

(assert (=> start!703780 m!7916702))

(declare-fun m!7916704 () Bool)

(assert (=> start!703780 m!7916704))

(declare-fun m!7916706 () Bool)

(assert (=> start!703780 m!7916706))

(declare-fun m!7916708 () Bool)

(assert (=> b!7241996 m!7916708))

(declare-fun m!7916710 () Bool)

(assert (=> b!7241996 m!7916710))

(assert (=> b!7241999 m!7916710))

(declare-fun m!7916712 () Bool)

(assert (=> b!7241999 m!7916712))

(declare-fun m!7916714 () Bool)

(assert (=> b!7241999 m!7916714))

(declare-fun m!7916716 () Bool)

(assert (=> b!7242000 m!7916716))

(assert (=> b!7242000 m!7916716))

(declare-fun m!7916718 () Bool)

(assert (=> b!7242000 m!7916718))

(push 1)

(assert (not b!7241999))

(assert tp_is_empty!46597)

(assert (not b!7242000))

(assert (not b!7241994))

(assert (not b!7241996))

(assert (not start!703780))

(assert (not b!7241998))

(assert (not b!7241995))

(assert (not b!7241997))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2250082 () Bool)

(declare-fun forall!17405 (List!70301 Int) Bool)

(assert (=> d!2250082 (forall!17405 (++!16422 (exprs!8006 ct1!232) (exprs!8006 ct2!328)) lambda!442151)))

(declare-fun lt!2580385 () Unit!163718)

(declare-fun choose!55797 (List!70301 List!70301 Int) Unit!163718)

(assert (=> d!2250082 (= lt!2580385 (choose!55797 (exprs!8006 ct1!232) (exprs!8006 ct2!328) lambda!442151))))

(assert (=> d!2250082 (forall!17405 (exprs!8006 ct1!232) lambda!442151)))

(assert (=> d!2250082 (= (lemmaConcatPreservesForall!1375 (exprs!8006 ct1!232) (exprs!8006 ct2!328) lambda!442151) lt!2580385)))

(declare-fun bs!1904342 () Bool)

(assert (= bs!1904342 d!2250082))

(assert (=> bs!1904342 m!7916708))

(assert (=> bs!1904342 m!7916708))

(declare-fun m!7916740 () Bool)

(assert (=> bs!1904342 m!7916740))

(declare-fun m!7916742 () Bool)

(assert (=> bs!1904342 m!7916742))

(declare-fun m!7916744 () Bool)

(assert (=> bs!1904342 m!7916744))

(assert (=> b!7241999 d!2250082))

(declare-fun d!2250084 () Bool)

(assert (=> d!2250084 (= (isEmpty!40435 s1!1971) (is-Nil!70178 s1!1971))))

(assert (=> b!7241999 d!2250084))

(declare-fun d!2250086 () Bool)

(assert (=> d!2250086 (= (matchZipper!3476 lt!2580367 s1!1971) (isEmpty!40435 s1!1971))))

(declare-fun lt!2580391 () Unit!163718)

(declare-fun choose!55798 ((Set Context!15012) List!70302) Unit!163718)

(assert (=> d!2250086 (= lt!2580391 (choose!55798 lt!2580367 s1!1971))))

(assert (=> d!2250086 (= lt!2580367 (set.singleton (Context!15013 Nil!70177)))))

(assert (=> d!2250086 (= (lemmaZipperOfEmptyContextMatchesEmptyString!49 lt!2580367 s1!1971) lt!2580391)))

(declare-fun bs!1904344 () Bool)

(assert (= bs!1904344 d!2250086))

(assert (=> bs!1904344 m!7916700))

(assert (=> bs!1904344 m!7916712))

(declare-fun m!7916752 () Bool)

(assert (=> bs!1904344 m!7916752))

(assert (=> b!7241999 d!2250086))

(declare-fun d!2250092 () Bool)

(declare-fun c!1344938 () Bool)

(assert (=> d!2250092 (= c!1344938 (isEmpty!40435 s2!1849))))

(declare-fun e!4342010 () Bool)

(assert (=> d!2250092 (= (matchZipper!3476 (set.insert ct2!328 (as set.empty (Set Context!15012))) s2!1849) e!4342010)))

(declare-fun b!7242026 () Bool)

(declare-fun nullableZipper!2858 ((Set Context!15012)) Bool)

(assert (=> b!7242026 (= e!4342010 (nullableZipper!2858 (set.insert ct2!328 (as set.empty (Set Context!15012)))))))

(declare-fun b!7242027 () Bool)

(declare-fun derivationStepZipper!3354 ((Set Context!15012) C!37406) (Set Context!15012))

(declare-fun head!14845 (List!70302) C!37406)

(declare-fun tail!14228 (List!70302) List!70302)

(assert (=> b!7242027 (= e!4342010 (matchZipper!3476 (derivationStepZipper!3354 (set.insert ct2!328 (as set.empty (Set Context!15012))) (head!14845 s2!1849)) (tail!14228 s2!1849)))))

(assert (= (and d!2250092 c!1344938) b!7242026))

(assert (= (and d!2250092 (not c!1344938)) b!7242027))

(declare-fun m!7916754 () Bool)

(assert (=> d!2250092 m!7916754))

(assert (=> b!7242026 m!7916716))

(declare-fun m!7916756 () Bool)

(assert (=> b!7242026 m!7916756))

(declare-fun m!7916758 () Bool)

(assert (=> b!7242027 m!7916758))

(assert (=> b!7242027 m!7916716))

(assert (=> b!7242027 m!7916758))

(declare-fun m!7916760 () Bool)

(assert (=> b!7242027 m!7916760))

(declare-fun m!7916762 () Bool)

(assert (=> b!7242027 m!7916762))

(assert (=> b!7242027 m!7916760))

(assert (=> b!7242027 m!7916762))

(declare-fun m!7916764 () Bool)

(assert (=> b!7242027 m!7916764))

(assert (=> b!7242000 d!2250092))

(declare-fun b!7242037 () Bool)

(declare-fun e!4342015 () List!70301)

(assert (=> b!7242037 (= e!4342015 (Cons!70177 (h!76625 (exprs!8006 ct1!232)) (++!16422 (t!384352 (exprs!8006 ct1!232)) (exprs!8006 ct2!328))))))

(declare-fun d!2250094 () Bool)

(declare-fun e!4342016 () Bool)

(assert (=> d!2250094 e!4342016))

(declare-fun res!2937831 () Bool)

(assert (=> d!2250094 (=> (not res!2937831) (not e!4342016))))

(declare-fun lt!2580396 () List!70301)

(declare-fun content!14497 (List!70301) (Set Regex!18566))

(assert (=> d!2250094 (= res!2937831 (= (content!14497 lt!2580396) (set.union (content!14497 (exprs!8006 ct1!232)) (content!14497 (exprs!8006 ct2!328)))))))

(assert (=> d!2250094 (= lt!2580396 e!4342015)))

(declare-fun c!1344941 () Bool)

(assert (=> d!2250094 (= c!1344941 (is-Nil!70177 (exprs!8006 ct1!232)))))

(assert (=> d!2250094 (= (++!16422 (exprs!8006 ct1!232) (exprs!8006 ct2!328)) lt!2580396)))

(declare-fun b!7242038 () Bool)

(declare-fun res!2937832 () Bool)

(assert (=> b!7242038 (=> (not res!2937832) (not e!4342016))))

(declare-fun size!41633 (List!70301) Int)

(assert (=> b!7242038 (= res!2937832 (= (size!41633 lt!2580396) (+ (size!41633 (exprs!8006 ct1!232)) (size!41633 (exprs!8006 ct2!328)))))))

(declare-fun b!7242036 () Bool)

(assert (=> b!7242036 (= e!4342015 (exprs!8006 ct2!328))))

(declare-fun b!7242039 () Bool)

(assert (=> b!7242039 (= e!4342016 (or (not (= (exprs!8006 ct2!328) Nil!70177)) (= lt!2580396 (exprs!8006 ct1!232))))))

(assert (= (and d!2250094 c!1344941) b!7242036))

(assert (= (and d!2250094 (not c!1344941)) b!7242037))

(assert (= (and d!2250094 res!2937831) b!7242038))

(assert (= (and b!7242038 res!2937832) b!7242039))

(declare-fun m!7916766 () Bool)

(assert (=> b!7242037 m!7916766))

(declare-fun m!7916768 () Bool)

(assert (=> d!2250094 m!7916768))

(declare-fun m!7916770 () Bool)

(assert (=> d!2250094 m!7916770))

(declare-fun m!7916772 () Bool)

(assert (=> d!2250094 m!7916772))

(declare-fun m!7916774 () Bool)

(assert (=> b!7242038 m!7916774))

(declare-fun m!7916776 () Bool)

(assert (=> b!7242038 m!7916776))

(declare-fun m!7916778 () Bool)

(assert (=> b!7242038 m!7916778))

(assert (=> b!7241996 d!2250094))

(assert (=> b!7241996 d!2250082))

(declare-fun d!2250096 () Bool)

(declare-fun c!1344942 () Bool)

(assert (=> d!2250096 (= c!1344942 (isEmpty!40435 s1!1971))))

(declare-fun e!4342017 () Bool)

(assert (=> d!2250096 (= (matchZipper!3476 lt!2580367 s1!1971) e!4342017)))

(declare-fun b!7242040 () Bool)

(assert (=> b!7242040 (= e!4342017 (nullableZipper!2858 lt!2580367))))

(declare-fun b!7242041 () Bool)

(assert (=> b!7242041 (= e!4342017 (matchZipper!3476 (derivationStepZipper!3354 lt!2580367 (head!14845 s1!1971)) (tail!14228 s1!1971)))))

(assert (= (and d!2250096 c!1344942) b!7242040))

(assert (= (and d!2250096 (not c!1344942)) b!7242041))

(assert (=> d!2250096 m!7916712))

(declare-fun m!7916780 () Bool)

(assert (=> b!7242040 m!7916780))

(declare-fun m!7916782 () Bool)

(assert (=> b!7242041 m!7916782))

(assert (=> b!7242041 m!7916782))

(declare-fun m!7916784 () Bool)

(assert (=> b!7242041 m!7916784))

(declare-fun m!7916786 () Bool)

(assert (=> b!7242041 m!7916786))

(assert (=> b!7242041 m!7916784))

(assert (=> b!7242041 m!7916786))

(declare-fun m!7916788 () Bool)

(assert (=> b!7242041 m!7916788))

(assert (=> start!703780 d!2250096))

(declare-fun bs!1904346 () Bool)

(declare-fun d!2250098 () Bool)

(assert (= bs!1904346 (and d!2250098 b!7241996)))

(declare-fun lambda!442159 () Int)

(assert (=> bs!1904346 (= lambda!442159 lambda!442151)))

(assert (=> d!2250098 (= (inv!89426 ct1!232) (forall!17405 (exprs!8006 ct1!232) lambda!442159))))

(declare-fun bs!1904347 () Bool)

(assert (= bs!1904347 d!2250098))

(declare-fun m!7916792 () Bool)

(assert (=> bs!1904347 m!7916792))

(assert (=> start!703780 d!2250098))

(declare-fun bs!1904348 () Bool)

(declare-fun d!2250102 () Bool)

(assert (= bs!1904348 (and d!2250102 b!7241996)))

(declare-fun lambda!442160 () Int)

(assert (=> bs!1904348 (= lambda!442160 lambda!442151)))

(declare-fun bs!1904349 () Bool)

(assert (= bs!1904349 (and d!2250102 d!2250098)))

(assert (=> bs!1904349 (= lambda!442160 lambda!442159)))

(assert (=> d!2250102 (= (inv!89426 ct2!328) (forall!17405 (exprs!8006 ct2!328) lambda!442160))))

(declare-fun bs!1904350 () Bool)

(assert (= bs!1904350 d!2250102))

(declare-fun m!7916794 () Bool)

(assert (=> bs!1904350 m!7916794))

(assert (=> start!703780 d!2250102))

(declare-fun b!7242046 () Bool)

(declare-fun e!4342020 () Bool)

(declare-fun tp!2035493 () Bool)

(declare-fun tp!2035494 () Bool)

(assert (=> b!7242046 (= e!4342020 (and tp!2035493 tp!2035494))))

(assert (=> b!7241998 (= tp!2035476 e!4342020)))

(assert (= (and b!7241998 (is-Cons!70177 (exprs!8006 ct2!328))) b!7242046))

(declare-fun b!7242047 () Bool)

(declare-fun e!4342021 () Bool)

(declare-fun tp!2035495 () Bool)

(declare-fun tp!2035496 () Bool)

(assert (=> b!7242047 (= e!4342021 (and tp!2035495 tp!2035496))))

(assert (=> b!7241994 (= tp!2035473 e!4342021)))

(assert (= (and b!7241994 (is-Cons!70177 (exprs!8006 ct1!232))) b!7242047))

(declare-fun b!7242052 () Bool)

(declare-fun e!4342024 () Bool)

(declare-fun tp!2035499 () Bool)

(assert (=> b!7242052 (= e!4342024 (and tp_is_empty!46597 tp!2035499))))

(assert (=> b!7241995 (= tp!2035475 e!4342024)))

(assert (= (and b!7241995 (is-Cons!70178 (t!384353 s1!1971))) b!7242052))

(declare-fun b!7242053 () Bool)

(declare-fun e!4342025 () Bool)

(declare-fun tp!2035500 () Bool)

(assert (=> b!7242053 (= e!4342025 (and tp_is_empty!46597 tp!2035500))))

(assert (=> b!7241997 (= tp!2035474 e!4342025)))

(assert (= (and b!7241997 (is-Cons!70178 (t!384353 s2!1849))) b!7242053))

(push 1)

(assert (not b!7242040))

(assert (not d!2250086))

(assert (not b!7242046))

(assert (not b!7242038))

(assert (not d!2250102))

(assert (not b!7242047))

(assert (not d!2250092))

(assert (not d!2250098))

(assert (not d!2250094))

(assert (not b!7242027))

(assert tp_is_empty!46597)

(assert (not b!7242037))

(assert (not d!2250082))

(assert (not b!7242026))

(assert (not b!7242053))

(assert (not b!7242052))

(assert (not d!2250096))

(assert (not b!7242041))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

