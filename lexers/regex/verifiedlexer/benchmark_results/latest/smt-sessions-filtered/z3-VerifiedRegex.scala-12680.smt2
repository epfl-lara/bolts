; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!701152 () Bool)

(assert start!701152)

(declare-fun b!7229475 () Bool)

(declare-fun e!4333775 () Bool)

(declare-fun tp_is_empty!46403 () Bool)

(declare-fun tp!2033341 () Bool)

(assert (=> b!7229475 (= e!4333775 (and tp_is_empty!46403 tp!2033341))))

(declare-fun b!7229476 () Bool)

(declare-fun e!4333777 () Bool)

(declare-fun e!4333774 () Bool)

(assert (=> b!7229476 (= e!4333777 e!4333774)))

(declare-fun res!2933124 () Bool)

(assert (=> b!7229476 (=> (not res!2933124) (not e!4333774))))

(declare-datatypes ((C!37212 0))(
  ( (C!37213 (val!28554 Int)) )
))
(declare-datatypes ((Regex!18469 0))(
  ( (ElementMatch!18469 (c!1341232 C!37212)) (Concat!27314 (regOne!37450 Regex!18469) (regTwo!37450 Regex!18469)) (EmptyExpr!18469) (Star!18469 (reg!18798 Regex!18469)) (EmptyLang!18469) (Union!18469 (regOne!37451 Regex!18469) (regTwo!37451 Regex!18469)) )
))
(declare-datatypes ((List!70026 0))(
  ( (Nil!69902) (Cons!69902 (h!76350 Regex!18469) (t!384075 List!70026)) )
))
(declare-datatypes ((Context!14818 0))(
  ( (Context!14819 (exprs!7909 List!70026)) )
))
(declare-fun ct1!232 () Context!14818)

(get-info :version)

(assert (=> b!7229476 (= res!2933124 ((_ is Nil!69902) (exprs!7909 ct1!232)))))

(declare-fun lt!2572571 () List!70026)

(declare-fun ct2!328 () Context!14818)

(declare-fun ++!16247 (List!70026 List!70026) List!70026)

(assert (=> b!7229476 (= lt!2572571 (++!16247 (exprs!7909 ct1!232) (exprs!7909 ct2!328)))))

(declare-datatypes ((Unit!163473 0))(
  ( (Unit!163474) )
))
(declare-fun lt!2572569 () Unit!163473)

(declare-fun lambda!438945 () Int)

(declare-fun lemmaConcatPreservesForall!1278 (List!70026 List!70026 Int) Unit!163473)

(assert (=> b!7229476 (= lt!2572569 (lemmaConcatPreservesForall!1278 (exprs!7909 ct1!232) (exprs!7909 ct2!328) lambda!438945))))

(declare-fun b!7229477 () Bool)

(declare-fun e!4333778 () Bool)

(declare-fun tp!2033344 () Bool)

(assert (=> b!7229477 (= e!4333778 (and tp_is_empty!46403 tp!2033344))))

(declare-fun b!7229479 () Bool)

(declare-fun forall!17295 (List!70026 Int) Bool)

(assert (=> b!7229479 (= e!4333774 (not (forall!17295 (exprs!7909 ct1!232) lambda!438945)))))

(declare-datatypes ((List!70027 0))(
  ( (Nil!69903) (Cons!69903 (h!76351 C!37212) (t!384076 List!70027)) )
))
(declare-fun s1!1971 () List!70027)

(declare-fun isEmpty!40303 (List!70027) Bool)

(assert (=> b!7229479 (isEmpty!40303 s1!1971)))

(declare-fun lt!2572570 () Unit!163473)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2572568 () (InoxSet Context!14818))

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!36 ((InoxSet Context!14818) List!70027) Unit!163473)

(assert (=> b!7229479 (= lt!2572570 (lemmaZipperOfEmptyContextMatchesEmptyString!36 lt!2572568 s1!1971))))

(declare-fun b!7229480 () Bool)

(declare-fun e!4333776 () Bool)

(declare-fun tp!2033342 () Bool)

(assert (=> b!7229480 (= e!4333776 tp!2033342)))

(declare-fun b!7229481 () Bool)

(declare-fun res!2933123 () Bool)

(assert (=> b!7229481 (=> (not res!2933123) (not e!4333777))))

(declare-fun s2!1849 () List!70027)

(declare-fun matchZipper!3379 ((InoxSet Context!14818) List!70027) Bool)

(assert (=> b!7229481 (= res!2933123 (matchZipper!3379 (store ((as const (Array Context!14818 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7229478 () Bool)

(declare-fun e!4333779 () Bool)

(declare-fun tp!2033343 () Bool)

(assert (=> b!7229478 (= e!4333779 tp!2033343)))

(declare-fun res!2933122 () Bool)

(assert (=> start!701152 (=> (not res!2933122) (not e!4333777))))

(assert (=> start!701152 (= res!2933122 (matchZipper!3379 lt!2572568 s1!1971))))

(assert (=> start!701152 (= lt!2572568 (store ((as const (Array Context!14818 Bool)) false) ct1!232 true))))

(assert (=> start!701152 e!4333777))

(declare-fun inv!89182 (Context!14818) Bool)

(assert (=> start!701152 (and (inv!89182 ct1!232) e!4333776)))

(assert (=> start!701152 e!4333775))

(assert (=> start!701152 e!4333778))

(assert (=> start!701152 (and (inv!89182 ct2!328) e!4333779)))

(assert (= (and start!701152 res!2933122) b!7229481))

(assert (= (and b!7229481 res!2933123) b!7229476))

(assert (= (and b!7229476 res!2933124) b!7229479))

(assert (= start!701152 b!7229480))

(assert (= (and start!701152 ((_ is Cons!69903) s1!1971)) b!7229475))

(assert (= (and start!701152 ((_ is Cons!69903) s2!1849)) b!7229477))

(assert (= start!701152 b!7229478))

(declare-fun m!7897532 () Bool)

(assert (=> b!7229476 m!7897532))

(declare-fun m!7897534 () Bool)

(assert (=> b!7229476 m!7897534))

(declare-fun m!7897536 () Bool)

(assert (=> b!7229479 m!7897536))

(declare-fun m!7897538 () Bool)

(assert (=> b!7229479 m!7897538))

(declare-fun m!7897540 () Bool)

(assert (=> b!7229479 m!7897540))

(declare-fun m!7897542 () Bool)

(assert (=> b!7229481 m!7897542))

(assert (=> b!7229481 m!7897542))

(declare-fun m!7897544 () Bool)

(assert (=> b!7229481 m!7897544))

(declare-fun m!7897546 () Bool)

(assert (=> start!701152 m!7897546))

(declare-fun m!7897548 () Bool)

(assert (=> start!701152 m!7897548))

(declare-fun m!7897550 () Bool)

(assert (=> start!701152 m!7897550))

(declare-fun m!7897552 () Bool)

(assert (=> start!701152 m!7897552))

(check-sat (not b!7229475) tp_is_empty!46403 (not b!7229478) (not b!7229476) (not b!7229477) (not start!701152) (not b!7229481) (not b!7229480) (not b!7229479))
(check-sat)
(get-model)

(declare-fun d!2245137 () Bool)

(declare-fun res!2933133 () Bool)

(declare-fun e!4333788 () Bool)

(assert (=> d!2245137 (=> res!2933133 e!4333788)))

(assert (=> d!2245137 (= res!2933133 ((_ is Nil!69902) (exprs!7909 ct1!232)))))

(assert (=> d!2245137 (= (forall!17295 (exprs!7909 ct1!232) lambda!438945) e!4333788)))

(declare-fun b!7229494 () Bool)

(declare-fun e!4333789 () Bool)

(assert (=> b!7229494 (= e!4333788 e!4333789)))

(declare-fun res!2933134 () Bool)

(assert (=> b!7229494 (=> (not res!2933134) (not e!4333789))))

(declare-fun dynLambda!28490 (Int Regex!18469) Bool)

(assert (=> b!7229494 (= res!2933134 (dynLambda!28490 lambda!438945 (h!76350 (exprs!7909 ct1!232))))))

(declare-fun b!7229495 () Bool)

(assert (=> b!7229495 (= e!4333789 (forall!17295 (t!384075 (exprs!7909 ct1!232)) lambda!438945))))

(assert (= (and d!2245137 (not res!2933133)) b!7229494))

(assert (= (and b!7229494 res!2933134) b!7229495))

(declare-fun b_lambda!276947 () Bool)

(assert (=> (not b_lambda!276947) (not b!7229494)))

(declare-fun m!7897554 () Bool)

(assert (=> b!7229494 m!7897554))

(declare-fun m!7897556 () Bool)

(assert (=> b!7229495 m!7897556))

(assert (=> b!7229479 d!2245137))

(declare-fun d!2245139 () Bool)

(assert (=> d!2245139 (= (isEmpty!40303 s1!1971) ((_ is Nil!69903) s1!1971))))

(assert (=> b!7229479 d!2245139))

(declare-fun d!2245141 () Bool)

(assert (=> d!2245141 (= (matchZipper!3379 lt!2572568 s1!1971) (isEmpty!40303 s1!1971))))

(declare-fun lt!2572580 () Unit!163473)

(declare-fun choose!55471 ((InoxSet Context!14818) List!70027) Unit!163473)

(assert (=> d!2245141 (= lt!2572580 (choose!55471 lt!2572568 s1!1971))))

(assert (=> d!2245141 (= lt!2572568 (store ((as const (Array Context!14818 Bool)) false) (Context!14819 Nil!69902) true))))

(assert (=> d!2245141 (= (lemmaZipperOfEmptyContextMatchesEmptyString!36 lt!2572568 s1!1971) lt!2572580)))

(declare-fun bs!1902288 () Bool)

(assert (= bs!1902288 d!2245141))

(assert (=> bs!1902288 m!7897546))

(assert (=> bs!1902288 m!7897538))

(declare-fun m!7897576 () Bool)

(assert (=> bs!1902288 m!7897576))

(assert (=> b!7229479 d!2245141))

(declare-fun d!2245147 () Bool)

(declare-fun c!1341241 () Bool)

(assert (=> d!2245147 (= c!1341241 (isEmpty!40303 s1!1971))))

(declare-fun e!4333801 () Bool)

(assert (=> d!2245147 (= (matchZipper!3379 lt!2572568 s1!1971) e!4333801)))

(declare-fun b!7229514 () Bool)

(declare-fun nullableZipper!2794 ((InoxSet Context!14818)) Bool)

(assert (=> b!7229514 (= e!4333801 (nullableZipper!2794 lt!2572568))))

(declare-fun b!7229515 () Bool)

(declare-fun derivationStepZipper!3262 ((InoxSet Context!14818) C!37212) (InoxSet Context!14818))

(declare-fun head!14779 (List!70027) C!37212)

(declare-fun tail!14094 (List!70027) List!70027)

(assert (=> b!7229515 (= e!4333801 (matchZipper!3379 (derivationStepZipper!3262 lt!2572568 (head!14779 s1!1971)) (tail!14094 s1!1971)))))

(assert (= (and d!2245147 c!1341241) b!7229514))

(assert (= (and d!2245147 (not c!1341241)) b!7229515))

(assert (=> d!2245147 m!7897538))

(declare-fun m!7897590 () Bool)

(assert (=> b!7229514 m!7897590))

(declare-fun m!7897592 () Bool)

(assert (=> b!7229515 m!7897592))

(assert (=> b!7229515 m!7897592))

(declare-fun m!7897594 () Bool)

(assert (=> b!7229515 m!7897594))

(declare-fun m!7897596 () Bool)

(assert (=> b!7229515 m!7897596))

(assert (=> b!7229515 m!7897594))

(assert (=> b!7229515 m!7897596))

(declare-fun m!7897598 () Bool)

(assert (=> b!7229515 m!7897598))

(assert (=> start!701152 d!2245147))

(declare-fun bs!1902289 () Bool)

(declare-fun d!2245151 () Bool)

(assert (= bs!1902289 (and d!2245151 b!7229476)))

(declare-fun lambda!438948 () Int)

(assert (=> bs!1902289 (= lambda!438948 lambda!438945)))

(assert (=> d!2245151 (= (inv!89182 ct1!232) (forall!17295 (exprs!7909 ct1!232) lambda!438948))))

(declare-fun bs!1902290 () Bool)

(assert (= bs!1902290 d!2245151))

(declare-fun m!7897604 () Bool)

(assert (=> bs!1902290 m!7897604))

(assert (=> start!701152 d!2245151))

(declare-fun bs!1902291 () Bool)

(declare-fun d!2245157 () Bool)

(assert (= bs!1902291 (and d!2245157 b!7229476)))

(declare-fun lambda!438949 () Int)

(assert (=> bs!1902291 (= lambda!438949 lambda!438945)))

(declare-fun bs!1902292 () Bool)

(assert (= bs!1902292 (and d!2245157 d!2245151)))

(assert (=> bs!1902292 (= lambda!438949 lambda!438948)))

(assert (=> d!2245157 (= (inv!89182 ct2!328) (forall!17295 (exprs!7909 ct2!328) lambda!438949))))

(declare-fun bs!1902293 () Bool)

(assert (= bs!1902293 d!2245157))

(declare-fun m!7897606 () Bool)

(assert (=> bs!1902293 m!7897606))

(assert (=> start!701152 d!2245157))

(declare-fun d!2245159 () Bool)

(declare-fun c!1341242 () Bool)

(assert (=> d!2245159 (= c!1341242 (isEmpty!40303 s2!1849))))

(declare-fun e!4333804 () Bool)

(assert (=> d!2245159 (= (matchZipper!3379 (store ((as const (Array Context!14818 Bool)) false) ct2!328 true) s2!1849) e!4333804)))

(declare-fun b!7229518 () Bool)

(assert (=> b!7229518 (= e!4333804 (nullableZipper!2794 (store ((as const (Array Context!14818 Bool)) false) ct2!328 true)))))

(declare-fun b!7229519 () Bool)

(assert (=> b!7229519 (= e!4333804 (matchZipper!3379 (derivationStepZipper!3262 (store ((as const (Array Context!14818 Bool)) false) ct2!328 true) (head!14779 s2!1849)) (tail!14094 s2!1849)))))

(assert (= (and d!2245159 c!1341242) b!7229518))

(assert (= (and d!2245159 (not c!1341242)) b!7229519))

(declare-fun m!7897608 () Bool)

(assert (=> d!2245159 m!7897608))

(assert (=> b!7229518 m!7897542))

(declare-fun m!7897610 () Bool)

(assert (=> b!7229518 m!7897610))

(declare-fun m!7897612 () Bool)

(assert (=> b!7229519 m!7897612))

(assert (=> b!7229519 m!7897542))

(assert (=> b!7229519 m!7897612))

(declare-fun m!7897614 () Bool)

(assert (=> b!7229519 m!7897614))

(declare-fun m!7897616 () Bool)

(assert (=> b!7229519 m!7897616))

(assert (=> b!7229519 m!7897614))

(assert (=> b!7229519 m!7897616))

(declare-fun m!7897618 () Bool)

(assert (=> b!7229519 m!7897618))

(assert (=> b!7229481 d!2245159))

(declare-fun b!7229530 () Bool)

(declare-fun e!4333810 () List!70026)

(assert (=> b!7229530 (= e!4333810 (exprs!7909 ct2!328))))

(declare-fun b!7229532 () Bool)

(declare-fun res!2933147 () Bool)

(declare-fun e!4333811 () Bool)

(assert (=> b!7229532 (=> (not res!2933147) (not e!4333811))))

(declare-fun lt!2572586 () List!70026)

(declare-fun size!41527 (List!70026) Int)

(assert (=> b!7229532 (= res!2933147 (= (size!41527 lt!2572586) (+ (size!41527 (exprs!7909 ct1!232)) (size!41527 (exprs!7909 ct2!328)))))))

(declare-fun d!2245161 () Bool)

(assert (=> d!2245161 e!4333811))

(declare-fun res!2933148 () Bool)

(assert (=> d!2245161 (=> (not res!2933148) (not e!4333811))))

(declare-fun content!14345 (List!70026) (InoxSet Regex!18469))

(assert (=> d!2245161 (= res!2933148 (= (content!14345 lt!2572586) ((_ map or) (content!14345 (exprs!7909 ct1!232)) (content!14345 (exprs!7909 ct2!328)))))))

(assert (=> d!2245161 (= lt!2572586 e!4333810)))

(declare-fun c!1341246 () Bool)

(assert (=> d!2245161 (= c!1341246 ((_ is Nil!69902) (exprs!7909 ct1!232)))))

(assert (=> d!2245161 (= (++!16247 (exprs!7909 ct1!232) (exprs!7909 ct2!328)) lt!2572586)))

(declare-fun b!7229533 () Bool)

(assert (=> b!7229533 (= e!4333811 (or (not (= (exprs!7909 ct2!328) Nil!69902)) (= lt!2572586 (exprs!7909 ct1!232))))))

(declare-fun b!7229531 () Bool)

(assert (=> b!7229531 (= e!4333810 (Cons!69902 (h!76350 (exprs!7909 ct1!232)) (++!16247 (t!384075 (exprs!7909 ct1!232)) (exprs!7909 ct2!328))))))

(assert (= (and d!2245161 c!1341246) b!7229530))

(assert (= (and d!2245161 (not c!1341246)) b!7229531))

(assert (= (and d!2245161 res!2933148) b!7229532))

(assert (= (and b!7229532 res!2933147) b!7229533))

(declare-fun m!7897636 () Bool)

(assert (=> b!7229532 m!7897636))

(declare-fun m!7897638 () Bool)

(assert (=> b!7229532 m!7897638))

(declare-fun m!7897640 () Bool)

(assert (=> b!7229532 m!7897640))

(declare-fun m!7897642 () Bool)

(assert (=> d!2245161 m!7897642))

(declare-fun m!7897644 () Bool)

(assert (=> d!2245161 m!7897644))

(declare-fun m!7897646 () Bool)

(assert (=> d!2245161 m!7897646))

(declare-fun m!7897648 () Bool)

(assert (=> b!7229531 m!7897648))

(assert (=> b!7229476 d!2245161))

(declare-fun d!2245169 () Bool)

(assert (=> d!2245169 (forall!17295 (++!16247 (exprs!7909 ct1!232) (exprs!7909 ct2!328)) lambda!438945)))

(declare-fun lt!2572589 () Unit!163473)

(declare-fun choose!55473 (List!70026 List!70026 Int) Unit!163473)

(assert (=> d!2245169 (= lt!2572589 (choose!55473 (exprs!7909 ct1!232) (exprs!7909 ct2!328) lambda!438945))))

(assert (=> d!2245169 (forall!17295 (exprs!7909 ct1!232) lambda!438945)))

(assert (=> d!2245169 (= (lemmaConcatPreservesForall!1278 (exprs!7909 ct1!232) (exprs!7909 ct2!328) lambda!438945) lt!2572589)))

(declare-fun bs!1902301 () Bool)

(assert (= bs!1902301 d!2245169))

(assert (=> bs!1902301 m!7897532))

(assert (=> bs!1902301 m!7897532))

(declare-fun m!7897652 () Bool)

(assert (=> bs!1902301 m!7897652))

(declare-fun m!7897654 () Bool)

(assert (=> bs!1902301 m!7897654))

(assert (=> bs!1902301 m!7897536))

(assert (=> b!7229476 d!2245169))

(declare-fun b!7229550 () Bool)

(declare-fun e!4333822 () Bool)

(declare-fun tp!2033361 () Bool)

(declare-fun tp!2033362 () Bool)

(assert (=> b!7229550 (= e!4333822 (and tp!2033361 tp!2033362))))

(assert (=> b!7229480 (= tp!2033342 e!4333822)))

(assert (= (and b!7229480 ((_ is Cons!69902) (exprs!7909 ct1!232))) b!7229550))

(declare-fun b!7229555 () Bool)

(declare-fun e!4333825 () Bool)

(declare-fun tp!2033365 () Bool)

(assert (=> b!7229555 (= e!4333825 (and tp_is_empty!46403 tp!2033365))))

(assert (=> b!7229475 (= tp!2033341 e!4333825)))

(assert (= (and b!7229475 ((_ is Cons!69903) (t!384076 s1!1971))) b!7229555))

(declare-fun b!7229556 () Bool)

(declare-fun e!4333826 () Bool)

(declare-fun tp!2033366 () Bool)

(assert (=> b!7229556 (= e!4333826 (and tp_is_empty!46403 tp!2033366))))

(assert (=> b!7229477 (= tp!2033344 e!4333826)))

(assert (= (and b!7229477 ((_ is Cons!69903) (t!384076 s2!1849))) b!7229556))

(declare-fun b!7229557 () Bool)

(declare-fun e!4333827 () Bool)

(declare-fun tp!2033367 () Bool)

(declare-fun tp!2033368 () Bool)

(assert (=> b!7229557 (= e!4333827 (and tp!2033367 tp!2033368))))

(assert (=> b!7229478 (= tp!2033343 e!4333827)))

(assert (= (and b!7229478 ((_ is Cons!69902) (exprs!7909 ct2!328))) b!7229557))

(declare-fun b_lambda!276953 () Bool)

(assert (= b_lambda!276947 (or b!7229476 b_lambda!276953)))

(declare-fun bs!1902302 () Bool)

(declare-fun d!2245173 () Bool)

(assert (= bs!1902302 (and d!2245173 b!7229476)))

(declare-fun validRegex!9499 (Regex!18469) Bool)

(assert (=> bs!1902302 (= (dynLambda!28490 lambda!438945 (h!76350 (exprs!7909 ct1!232))) (validRegex!9499 (h!76350 (exprs!7909 ct1!232))))))

(declare-fun m!7897656 () Bool)

(assert (=> bs!1902302 m!7897656))

(assert (=> b!7229494 d!2245173))

(check-sat (not b!7229557) (not b!7229531) (not b!7229518) (not bs!1902302) (not b!7229550) (not b!7229514) (not d!2245161) (not b_lambda!276953) (not b!7229515) (not d!2245147) (not d!2245169) tp_is_empty!46403 (not b!7229532) (not d!2245157) (not d!2245151) (not b!7229556) (not b!7229519) (not b!7229555) (not d!2245141) (not b!7229495) (not d!2245159))
(check-sat)
