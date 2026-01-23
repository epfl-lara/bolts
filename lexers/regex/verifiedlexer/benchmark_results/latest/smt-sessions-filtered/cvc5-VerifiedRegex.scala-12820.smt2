; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708140 () Bool)

(assert start!708140)

(declare-fun b!7263522 () Bool)

(assert (=> b!7263522 true))

(declare-fun b!7263518 () Bool)

(declare-fun res!2944891 () Bool)

(declare-fun e!4355763 () Bool)

(assert (=> b!7263518 (=> (not res!2944891) (not e!4355763))))

(declare-datatypes ((C!37770 0))(
  ( (C!37771 (val!28833 Int)) )
))
(declare-datatypes ((Regex!18748 0))(
  ( (ElementMatch!18748 (c!1351316 C!37770)) (Concat!27593 (regOne!38008 Regex!18748) (regTwo!38008 Regex!18748)) (EmptyExpr!18748) (Star!18748 (reg!19077 Regex!18748)) (EmptyLang!18748) (Union!18748 (regOne!38009 Regex!18748) (regTwo!38009 Regex!18748)) )
))
(declare-datatypes ((List!70811 0))(
  ( (Nil!70687) (Cons!70687 (h!77135 Regex!18748) (t!384877 List!70811)) )
))
(declare-datatypes ((Context!15376 0))(
  ( (Context!15377 (exprs!8188 List!70811)) )
))
(declare-fun ct1!250 () Context!15376)

(declare-fun nullableContext!238 (Context!15376) Bool)

(assert (=> b!7263518 (= res!2944891 (nullableContext!238 ct1!250))))

(declare-fun res!2944889 () Bool)

(assert (=> start!708140 (=> (not res!2944889) (not e!4355763))))

(declare-fun ct2!346 () Context!15376)

(declare-datatypes ((List!70812 0))(
  ( (Nil!70688) (Cons!70688 (h!77136 C!37770) (t!384878 List!70812)) )
))
(declare-fun s!7854 () List!70812)

(declare-fun matchZipper!3652 ((Set Context!15376) List!70812) Bool)

(assert (=> start!708140 (= res!2944889 (matchZipper!3652 (set.insert ct2!346 (as set.empty (Set Context!15376))) s!7854))))

(assert (=> start!708140 e!4355763))

(declare-fun e!4355760 () Bool)

(declare-fun inv!89881 (Context!15376) Bool)

(assert (=> start!708140 (and (inv!89881 ct2!346) e!4355760)))

(declare-fun e!4355762 () Bool)

(assert (=> start!708140 e!4355762))

(declare-fun e!4355764 () Bool)

(assert (=> start!708140 (and (inv!89881 ct1!250) e!4355764)))

(declare-fun b!7263519 () Bool)

(declare-fun tp!2039974 () Bool)

(assert (=> b!7263519 (= e!4355760 tp!2039974)))

(declare-fun b!7263520 () Bool)

(declare-fun tp!2039973 () Bool)

(assert (=> b!7263520 (= e!4355764 tp!2039973)))

(declare-fun b!7263521 () Bool)

(declare-fun res!2944888 () Bool)

(assert (=> b!7263521 (=> (not res!2944888) (not e!4355763))))

(assert (=> b!7263521 (= res!2944888 (is-Cons!70688 s!7854))))

(declare-fun e!4355761 () Bool)

(assert (=> b!7263522 (= e!4355763 (not e!4355761))))

(declare-fun res!2944890 () Bool)

(assert (=> b!7263522 (=> res!2944890 e!4355761)))

(declare-fun lambda!447016 () Int)

(declare-fun forall!17585 (List!70811 Int) Bool)

(assert (=> b!7263522 (= res!2944890 (not (forall!17585 (exprs!8188 ct1!250) lambda!447016)))))

(declare-datatypes ((Unit!164114 0))(
  ( (Unit!164115) )
))
(declare-fun lt!2591580 () Unit!164114)

(declare-fun lemmaConcatPreservesForall!1505 (List!70811 List!70811 Int) Unit!164114)

(assert (=> b!7263522 (= lt!2591580 (lemmaConcatPreservesForall!1505 (exprs!8188 ct1!250) (exprs!8188 ct2!346) lambda!447016))))

(declare-fun lt!2591578 () (Set Context!15376))

(declare-fun lambda!447017 () Int)

(declare-fun flatMap!2861 ((Set Context!15376) Int) (Set Context!15376))

(declare-fun derivationStepZipperUp!2518 (Context!15376 C!37770) (Set Context!15376))

(assert (=> b!7263522 (= (flatMap!2861 lt!2591578 lambda!447017) (derivationStepZipperUp!2518 ct1!250 (h!77136 s!7854)))))

(declare-fun lt!2591579 () Unit!164114)

(declare-fun lemmaFlatMapOnSingletonSet!2261 ((Set Context!15376) Context!15376 Int) Unit!164114)

(assert (=> b!7263522 (= lt!2591579 (lemmaFlatMapOnSingletonSet!2261 lt!2591578 ct1!250 lambda!447017))))

(assert (=> b!7263522 (= lt!2591578 (set.insert ct1!250 (as set.empty (Set Context!15376))))))

(declare-fun lt!2591577 () (Set Context!15376))

(declare-fun ++!16648 (List!70811 List!70811) List!70811)

(assert (=> b!7263522 (= lt!2591577 (derivationStepZipperUp!2518 (Context!15377 (++!16648 (exprs!8188 ct1!250) (exprs!8188 ct2!346))) (h!77136 s!7854)))))

(declare-fun lt!2591576 () Unit!164114)

(assert (=> b!7263522 (= lt!2591576 (lemmaConcatPreservesForall!1505 (exprs!8188 ct1!250) (exprs!8188 ct2!346) lambda!447016))))

(declare-fun b!7263523 () Bool)

(assert (=> b!7263523 (= e!4355761 (forall!17585 (exprs!8188 ct2!346) lambda!447016))))

(declare-fun b!7263524 () Bool)

(declare-fun tp_is_empty!46961 () Bool)

(declare-fun tp!2039975 () Bool)

(assert (=> b!7263524 (= e!4355762 (and tp_is_empty!46961 tp!2039975))))

(assert (= (and start!708140 res!2944889) b!7263518))

(assert (= (and b!7263518 res!2944891) b!7263521))

(assert (= (and b!7263521 res!2944888) b!7263522))

(assert (= (and b!7263522 (not res!2944890)) b!7263523))

(assert (= start!708140 b!7263519))

(assert (= (and start!708140 (is-Cons!70688 s!7854)) b!7263524))

(assert (= start!708140 b!7263520))

(declare-fun m!7948134 () Bool)

(assert (=> b!7263518 m!7948134))

(declare-fun m!7948136 () Bool)

(assert (=> start!708140 m!7948136))

(assert (=> start!708140 m!7948136))

(declare-fun m!7948138 () Bool)

(assert (=> start!708140 m!7948138))

(declare-fun m!7948140 () Bool)

(assert (=> start!708140 m!7948140))

(declare-fun m!7948142 () Bool)

(assert (=> start!708140 m!7948142))

(declare-fun m!7948144 () Bool)

(assert (=> b!7263522 m!7948144))

(declare-fun m!7948146 () Bool)

(assert (=> b!7263522 m!7948146))

(declare-fun m!7948148 () Bool)

(assert (=> b!7263522 m!7948148))

(declare-fun m!7948150 () Bool)

(assert (=> b!7263522 m!7948150))

(assert (=> b!7263522 m!7948148))

(declare-fun m!7948152 () Bool)

(assert (=> b!7263522 m!7948152))

(declare-fun m!7948154 () Bool)

(assert (=> b!7263522 m!7948154))

(declare-fun m!7948156 () Bool)

(assert (=> b!7263522 m!7948156))

(declare-fun m!7948158 () Bool)

(assert (=> b!7263522 m!7948158))

(declare-fun m!7948160 () Bool)

(assert (=> b!7263523 m!7948160))

(push 1)

(assert (not b!7263522))

(assert (not b!7263523))

(assert (not start!708140))

(assert (not b!7263519))

(assert (not b!7263518))

(assert (not b!7263524))

(assert tp_is_empty!46961)

(assert (not b!7263520))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1909885 () Bool)

(declare-fun d!2259753 () Bool)

(assert (= bs!1909885 (and d!2259753 b!7263522)))

(declare-fun lambda!447030 () Int)

(assert (=> bs!1909885 (not (= lambda!447030 lambda!447016))))

(assert (=> d!2259753 (= (nullableContext!238 ct1!250) (forall!17585 (exprs!8188 ct1!250) lambda!447030))))

(declare-fun bs!1909886 () Bool)

(assert (= bs!1909886 d!2259753))

(declare-fun m!7948190 () Bool)

(assert (=> bs!1909886 m!7948190))

(assert (=> b!7263518 d!2259753))

(declare-fun d!2259755 () Bool)

(declare-fun res!2944908 () Bool)

(declare-fun e!4355784 () Bool)

(assert (=> d!2259755 (=> res!2944908 e!4355784)))

(assert (=> d!2259755 (= res!2944908 (is-Nil!70687 (exprs!8188 ct2!346)))))

(assert (=> d!2259755 (= (forall!17585 (exprs!8188 ct2!346) lambda!447016) e!4355784)))

(declare-fun b!7263554 () Bool)

(declare-fun e!4355785 () Bool)

(assert (=> b!7263554 (= e!4355784 e!4355785)))

(declare-fun res!2944909 () Bool)

(assert (=> b!7263554 (=> (not res!2944909) (not e!4355785))))

(declare-fun dynLambda!28857 (Int Regex!18748) Bool)

(assert (=> b!7263554 (= res!2944909 (dynLambda!28857 lambda!447016 (h!77135 (exprs!8188 ct2!346))))))

(declare-fun b!7263555 () Bool)

(assert (=> b!7263555 (= e!4355785 (forall!17585 (t!384877 (exprs!8188 ct2!346)) lambda!447016))))

(assert (= (and d!2259755 (not res!2944908)) b!7263554))

(assert (= (and b!7263554 res!2944909) b!7263555))

(declare-fun b_lambda!279461 () Bool)

(assert (=> (not b_lambda!279461) (not b!7263554)))

(declare-fun m!7948192 () Bool)

(assert (=> b!7263554 m!7948192))

(declare-fun m!7948194 () Bool)

(assert (=> b!7263555 m!7948194))

(assert (=> b!7263523 d!2259755))

(declare-fun d!2259757 () Bool)

(declare-fun c!1351323 () Bool)

(declare-fun isEmpty!40632 (List!70812) Bool)

(assert (=> d!2259757 (= c!1351323 (isEmpty!40632 s!7854))))

(declare-fun e!4355788 () Bool)

(assert (=> d!2259757 (= (matchZipper!3652 (set.insert ct2!346 (as set.empty (Set Context!15376))) s!7854) e!4355788)))

(declare-fun b!7263560 () Bool)

(declare-fun nullableZipper!2966 ((Set Context!15376)) Bool)

(assert (=> b!7263560 (= e!4355788 (nullableZipper!2966 (set.insert ct2!346 (as set.empty (Set Context!15376)))))))

(declare-fun b!7263561 () Bool)

(declare-fun derivationStepZipper!3492 ((Set Context!15376) C!37770) (Set Context!15376))

(declare-fun head!14965 (List!70812) C!37770)

(declare-fun tail!14424 (List!70812) List!70812)

(assert (=> b!7263561 (= e!4355788 (matchZipper!3652 (derivationStepZipper!3492 (set.insert ct2!346 (as set.empty (Set Context!15376))) (head!14965 s!7854)) (tail!14424 s!7854)))))

(assert (= (and d!2259757 c!1351323) b!7263560))

(assert (= (and d!2259757 (not c!1351323)) b!7263561))

(declare-fun m!7948196 () Bool)

(assert (=> d!2259757 m!7948196))

(assert (=> b!7263560 m!7948136))

(declare-fun m!7948198 () Bool)

(assert (=> b!7263560 m!7948198))

(declare-fun m!7948200 () Bool)

(assert (=> b!7263561 m!7948200))

(assert (=> b!7263561 m!7948136))

(assert (=> b!7263561 m!7948200))

(declare-fun m!7948202 () Bool)

(assert (=> b!7263561 m!7948202))

(declare-fun m!7948204 () Bool)

(assert (=> b!7263561 m!7948204))

(assert (=> b!7263561 m!7948202))

(assert (=> b!7263561 m!7948204))

(declare-fun m!7948206 () Bool)

(assert (=> b!7263561 m!7948206))

(assert (=> start!708140 d!2259757))

(declare-fun bs!1909887 () Bool)

(declare-fun d!2259761 () Bool)

(assert (= bs!1909887 (and d!2259761 b!7263522)))

(declare-fun lambda!447033 () Int)

(assert (=> bs!1909887 (= lambda!447033 lambda!447016)))

(declare-fun bs!1909888 () Bool)

(assert (= bs!1909888 (and d!2259761 d!2259753)))

(assert (=> bs!1909888 (not (= lambda!447033 lambda!447030))))

(assert (=> d!2259761 (= (inv!89881 ct2!346) (forall!17585 (exprs!8188 ct2!346) lambda!447033))))

(declare-fun bs!1909889 () Bool)

(assert (= bs!1909889 d!2259761))

(declare-fun m!7948208 () Bool)

(assert (=> bs!1909889 m!7948208))

(assert (=> start!708140 d!2259761))

(declare-fun bs!1909890 () Bool)

(declare-fun d!2259763 () Bool)

(assert (= bs!1909890 (and d!2259763 b!7263522)))

(declare-fun lambda!447034 () Int)

(assert (=> bs!1909890 (= lambda!447034 lambda!447016)))

(declare-fun bs!1909891 () Bool)

(assert (= bs!1909891 (and d!2259763 d!2259753)))

(assert (=> bs!1909891 (not (= lambda!447034 lambda!447030))))

(declare-fun bs!1909892 () Bool)

(assert (= bs!1909892 (and d!2259763 d!2259761)))

(assert (=> bs!1909892 (= lambda!447034 lambda!447033)))

(assert (=> d!2259763 (= (inv!89881 ct1!250) (forall!17585 (exprs!8188 ct1!250) lambda!447034))))

(declare-fun bs!1909893 () Bool)

(assert (= bs!1909893 d!2259763))

(declare-fun m!7948210 () Bool)

(assert (=> bs!1909893 m!7948210))

(assert (=> start!708140 d!2259763))

(declare-fun d!2259765 () Bool)

(declare-fun dynLambda!28858 (Int Context!15376) (Set Context!15376))

(assert (=> d!2259765 (= (flatMap!2861 lt!2591578 lambda!447017) (dynLambda!28858 lambda!447017 ct1!250))))

(declare-fun lt!2591598 () Unit!164114)

(declare-fun choose!56270 ((Set Context!15376) Context!15376 Int) Unit!164114)

(assert (=> d!2259765 (= lt!2591598 (choose!56270 lt!2591578 ct1!250 lambda!447017))))

(assert (=> d!2259765 (= lt!2591578 (set.insert ct1!250 (as set.empty (Set Context!15376))))))

(assert (=> d!2259765 (= (lemmaFlatMapOnSingletonSet!2261 lt!2591578 ct1!250 lambda!447017) lt!2591598)))

(declare-fun b_lambda!279463 () Bool)

(assert (=> (not b_lambda!279463) (not d!2259765)))

(declare-fun bs!1909894 () Bool)

(assert (= bs!1909894 d!2259765))

(assert (=> bs!1909894 m!7948152))

(declare-fun m!7948212 () Bool)

(assert (=> bs!1909894 m!7948212))

(declare-fun m!7948214 () Bool)

(assert (=> bs!1909894 m!7948214))

(assert (=> bs!1909894 m!7948154))

(assert (=> b!7263522 d!2259765))

(declare-fun b!7263578 () Bool)

(declare-fun e!4355803 () (Set Context!15376))

(declare-fun call!661824 () (Set Context!15376))

(assert (=> b!7263578 (= e!4355803 call!661824)))

(declare-fun b!7263579 () Bool)

(declare-fun e!4355802 () (Set Context!15376))

(assert (=> b!7263579 (= e!4355802 e!4355803)))

(declare-fun c!1351329 () Bool)

(assert (=> b!7263579 (= c!1351329 (is-Cons!70687 (exprs!8188 ct1!250)))))

(declare-fun b!7263580 () Bool)

(assert (=> b!7263580 (= e!4355802 (set.union call!661824 (derivationStepZipperUp!2518 (Context!15377 (t!384877 (exprs!8188 ct1!250))) (h!77136 s!7854))))))

(declare-fun b!7263581 () Bool)

(declare-fun e!4355801 () Bool)

(declare-fun nullable!7952 (Regex!18748) Bool)

(assert (=> b!7263581 (= e!4355801 (nullable!7952 (h!77135 (exprs!8188 ct1!250))))))

(declare-fun b!7263582 () Bool)

(assert (=> b!7263582 (= e!4355803 (as set.empty (Set Context!15376)))))

(declare-fun d!2259767 () Bool)

(declare-fun c!1351328 () Bool)

(assert (=> d!2259767 (= c!1351328 e!4355801)))

(declare-fun res!2944918 () Bool)

(assert (=> d!2259767 (=> (not res!2944918) (not e!4355801))))

(assert (=> d!2259767 (= res!2944918 (is-Cons!70687 (exprs!8188 ct1!250)))))

(assert (=> d!2259767 (= (derivationStepZipperUp!2518 ct1!250 (h!77136 s!7854)) e!4355802)))

(declare-fun bm!661819 () Bool)

(declare-fun derivationStepZipperDown!2686 (Regex!18748 Context!15376 C!37770) (Set Context!15376))

(assert (=> bm!661819 (= call!661824 (derivationStepZipperDown!2686 (h!77135 (exprs!8188 ct1!250)) (Context!15377 (t!384877 (exprs!8188 ct1!250))) (h!77136 s!7854)))))

(assert (= (and d!2259767 res!2944918) b!7263581))

(assert (= (and d!2259767 c!1351328) b!7263580))

(assert (= (and d!2259767 (not c!1351328)) b!7263579))

(assert (= (and b!7263579 c!1351329) b!7263578))

(assert (= (and b!7263579 (not c!1351329)) b!7263582))

(assert (= (or b!7263580 b!7263578) bm!661819))

(declare-fun m!7948220 () Bool)

(assert (=> b!7263580 m!7948220))

(declare-fun m!7948222 () Bool)

(assert (=> b!7263581 m!7948222))

(declare-fun m!7948224 () Bool)

(assert (=> bm!661819 m!7948224))

(assert (=> b!7263522 d!2259767))

(declare-fun d!2259771 () Bool)

(declare-fun choose!56271 ((Set Context!15376) Int) (Set Context!15376))

(assert (=> d!2259771 (= (flatMap!2861 lt!2591578 lambda!447017) (choose!56271 lt!2591578 lambda!447017))))

(declare-fun bs!1909895 () Bool)

(assert (= bs!1909895 d!2259771))

(declare-fun m!7948226 () Bool)

(assert (=> bs!1909895 m!7948226))

(assert (=> b!7263522 d!2259771))

(declare-fun e!4355815 () Bool)

(declare-fun b!7263604 () Bool)

(declare-fun lt!2591601 () List!70811)

(assert (=> b!7263604 (= e!4355815 (or (not (= (exprs!8188 ct2!346) Nil!70687)) (= lt!2591601 (exprs!8188 ct1!250))))))

(declare-fun d!2259773 () Bool)

(assert (=> d!2259773 e!4355815))

(declare-fun res!2944925 () Bool)

(assert (=> d!2259773 (=> (not res!2944925) (not e!4355815))))

(declare-fun content!14736 (List!70811) (Set Regex!18748))

(assert (=> d!2259773 (= res!2944925 (= (content!14736 lt!2591601) (set.union (content!14736 (exprs!8188 ct1!250)) (content!14736 (exprs!8188 ct2!346)))))))

(declare-fun e!4355814 () List!70811)

(assert (=> d!2259773 (= lt!2591601 e!4355814)))

(declare-fun c!1351336 () Bool)

(assert (=> d!2259773 (= c!1351336 (is-Nil!70687 (exprs!8188 ct1!250)))))

(assert (=> d!2259773 (= (++!16648 (exprs!8188 ct1!250) (exprs!8188 ct2!346)) lt!2591601)))

(declare-fun b!7263602 () Bool)

(assert (=> b!7263602 (= e!4355814 (Cons!70687 (h!77135 (exprs!8188 ct1!250)) (++!16648 (t!384877 (exprs!8188 ct1!250)) (exprs!8188 ct2!346))))))

(declare-fun b!7263601 () Bool)

(assert (=> b!7263601 (= e!4355814 (exprs!8188 ct2!346))))

(declare-fun b!7263603 () Bool)

(declare-fun res!2944926 () Bool)

(assert (=> b!7263603 (=> (not res!2944926) (not e!4355815))))

(declare-fun size!41784 (List!70811) Int)

(assert (=> b!7263603 (= res!2944926 (= (size!41784 lt!2591601) (+ (size!41784 (exprs!8188 ct1!250)) (size!41784 (exprs!8188 ct2!346)))))))

(assert (= (and d!2259773 c!1351336) b!7263601))

(assert (= (and d!2259773 (not c!1351336)) b!7263602))

(assert (= (and d!2259773 res!2944925) b!7263603))

(assert (= (and b!7263603 res!2944926) b!7263604))

(declare-fun m!7948228 () Bool)

(assert (=> d!2259773 m!7948228))

(declare-fun m!7948230 () Bool)

(assert (=> d!2259773 m!7948230))

(declare-fun m!7948232 () Bool)

(assert (=> d!2259773 m!7948232))

(declare-fun m!7948234 () Bool)

(assert (=> b!7263602 m!7948234))

(declare-fun m!7948236 () Bool)

(assert (=> b!7263603 m!7948236))

(declare-fun m!7948238 () Bool)

(assert (=> b!7263603 m!7948238))

(declare-fun m!7948240 () Bool)

(assert (=> b!7263603 m!7948240))

(assert (=> b!7263522 d!2259773))

(declare-fun d!2259775 () Bool)

(assert (=> d!2259775 (forall!17585 (++!16648 (exprs!8188 ct1!250) (exprs!8188 ct2!346)) lambda!447016)))

(declare-fun lt!2591604 () Unit!164114)

(declare-fun choose!56272 (List!70811 List!70811 Int) Unit!164114)

(assert (=> d!2259775 (= lt!2591604 (choose!56272 (exprs!8188 ct1!250) (exprs!8188 ct2!346) lambda!447016))))

(assert (=> d!2259775 (forall!17585 (exprs!8188 ct1!250) lambda!447016)))

(assert (=> d!2259775 (= (lemmaConcatPreservesForall!1505 (exprs!8188 ct1!250) (exprs!8188 ct2!346) lambda!447016) lt!2591604)))

(declare-fun bs!1909896 () Bool)

(assert (= bs!1909896 d!2259775))

(assert (=> bs!1909896 m!7948158))

(assert (=> bs!1909896 m!7948158))

(declare-fun m!7948248 () Bool)

(assert (=> bs!1909896 m!7948248))

(declare-fun m!7948250 () Bool)

(assert (=> bs!1909896 m!7948250))

(assert (=> bs!1909896 m!7948156))

(assert (=> b!7263522 d!2259775))

(declare-fun b!7263610 () Bool)

(declare-fun e!4355821 () (Set Context!15376))

(declare-fun call!661828 () (Set Context!15376))

(assert (=> b!7263610 (= e!4355821 call!661828)))

(declare-fun b!7263611 () Bool)

(declare-fun e!4355820 () (Set Context!15376))

(assert (=> b!7263611 (= e!4355820 e!4355821)))

(declare-fun c!1351340 () Bool)

(assert (=> b!7263611 (= c!1351340 (is-Cons!70687 (exprs!8188 (Context!15377 (++!16648 (exprs!8188 ct1!250) (exprs!8188 ct2!346))))))))

(declare-fun b!7263612 () Bool)

(assert (=> b!7263612 (= e!4355820 (set.union call!661828 (derivationStepZipperUp!2518 (Context!15377 (t!384877 (exprs!8188 (Context!15377 (++!16648 (exprs!8188 ct1!250) (exprs!8188 ct2!346)))))) (h!77136 s!7854))))))

(declare-fun b!7263613 () Bool)

(declare-fun e!4355819 () Bool)

(assert (=> b!7263613 (= e!4355819 (nullable!7952 (h!77135 (exprs!8188 (Context!15377 (++!16648 (exprs!8188 ct1!250) (exprs!8188 ct2!346)))))))))

(declare-fun b!7263614 () Bool)

(assert (=> b!7263614 (= e!4355821 (as set.empty (Set Context!15376)))))

(declare-fun d!2259779 () Bool)

(declare-fun c!1351339 () Bool)

(assert (=> d!2259779 (= c!1351339 e!4355819)))

(declare-fun res!2944928 () Bool)

(assert (=> d!2259779 (=> (not res!2944928) (not e!4355819))))

(assert (=> d!2259779 (= res!2944928 (is-Cons!70687 (exprs!8188 (Context!15377 (++!16648 (exprs!8188 ct1!250) (exprs!8188 ct2!346))))))))

(assert (=> d!2259779 (= (derivationStepZipperUp!2518 (Context!15377 (++!16648 (exprs!8188 ct1!250) (exprs!8188 ct2!346))) (h!77136 s!7854)) e!4355820)))

(declare-fun bm!661823 () Bool)

(assert (=> bm!661823 (= call!661828 (derivationStepZipperDown!2686 (h!77135 (exprs!8188 (Context!15377 (++!16648 (exprs!8188 ct1!250) (exprs!8188 ct2!346))))) (Context!15377 (t!384877 (exprs!8188 (Context!15377 (++!16648 (exprs!8188 ct1!250) (exprs!8188 ct2!346)))))) (h!77136 s!7854)))))

(assert (= (and d!2259779 res!2944928) b!7263613))

(assert (= (and d!2259779 c!1351339) b!7263612))

(assert (= (and d!2259779 (not c!1351339)) b!7263611))

(assert (= (and b!7263611 c!1351340) b!7263610))

(assert (= (and b!7263611 (not c!1351340)) b!7263614))

(assert (= (or b!7263612 b!7263610) bm!661823))

(declare-fun m!7948252 () Bool)

(assert (=> b!7263612 m!7948252))

(declare-fun m!7948254 () Bool)

(assert (=> b!7263613 m!7948254))

(declare-fun m!7948256 () Bool)

(assert (=> bm!661823 m!7948256))

(assert (=> b!7263522 d!2259779))

(declare-fun d!2259781 () Bool)

(declare-fun res!2944929 () Bool)

(declare-fun e!4355822 () Bool)

(assert (=> d!2259781 (=> res!2944929 e!4355822)))

(assert (=> d!2259781 (= res!2944929 (is-Nil!70687 (exprs!8188 ct1!250)))))

(assert (=> d!2259781 (= (forall!17585 (exprs!8188 ct1!250) lambda!447016) e!4355822)))

(declare-fun b!7263615 () Bool)

(declare-fun e!4355823 () Bool)

(assert (=> b!7263615 (= e!4355822 e!4355823)))

(declare-fun res!2944930 () Bool)

(assert (=> b!7263615 (=> (not res!2944930) (not e!4355823))))

(assert (=> b!7263615 (= res!2944930 (dynLambda!28857 lambda!447016 (h!77135 (exprs!8188 ct1!250))))))

(declare-fun b!7263616 () Bool)

(assert (=> b!7263616 (= e!4355823 (forall!17585 (t!384877 (exprs!8188 ct1!250)) lambda!447016))))

(assert (= (and d!2259781 (not res!2944929)) b!7263615))

(assert (= (and b!7263615 res!2944930) b!7263616))

(declare-fun b_lambda!279467 () Bool)

(assert (=> (not b_lambda!279467) (not b!7263615)))

(declare-fun m!7948258 () Bool)

(assert (=> b!7263615 m!7948258))

(declare-fun m!7948260 () Bool)

(assert (=> b!7263616 m!7948260))

(assert (=> b!7263522 d!2259781))

(declare-fun b!7263621 () Bool)

(declare-fun e!4355826 () Bool)

(declare-fun tp!2039987 () Bool)

(assert (=> b!7263621 (= e!4355826 (and tp_is_empty!46961 tp!2039987))))

(assert (=> b!7263524 (= tp!2039975 e!4355826)))

(assert (= (and b!7263524 (is-Cons!70688 (t!384878 s!7854))) b!7263621))

(declare-fun b!7263626 () Bool)

(declare-fun e!4355829 () Bool)

(declare-fun tp!2039992 () Bool)

(declare-fun tp!2039993 () Bool)

(assert (=> b!7263626 (= e!4355829 (and tp!2039992 tp!2039993))))

(assert (=> b!7263519 (= tp!2039974 e!4355829)))

(assert (= (and b!7263519 (is-Cons!70687 (exprs!8188 ct2!346))) b!7263626))

(declare-fun b!7263627 () Bool)

(declare-fun e!4355830 () Bool)

(declare-fun tp!2039994 () Bool)

(declare-fun tp!2039995 () Bool)

(assert (=> b!7263627 (= e!4355830 (and tp!2039994 tp!2039995))))

(assert (=> b!7263520 (= tp!2039973 e!4355830)))

(assert (= (and b!7263520 (is-Cons!70687 (exprs!8188 ct1!250))) b!7263627))

(declare-fun b_lambda!279469 () Bool)

(assert (= b_lambda!279461 (or b!7263522 b_lambda!279469)))

(declare-fun bs!1909897 () Bool)

(declare-fun d!2259783 () Bool)

(assert (= bs!1909897 (and d!2259783 b!7263522)))

(declare-fun validRegex!9560 (Regex!18748) Bool)

(assert (=> bs!1909897 (= (dynLambda!28857 lambda!447016 (h!77135 (exprs!8188 ct2!346))) (validRegex!9560 (h!77135 (exprs!8188 ct2!346))))))

(declare-fun m!7948262 () Bool)

(assert (=> bs!1909897 m!7948262))

(assert (=> b!7263554 d!2259783))

(declare-fun b_lambda!279471 () Bool)

(assert (= b_lambda!279467 (or b!7263522 b_lambda!279471)))

(declare-fun bs!1909898 () Bool)

(declare-fun d!2259785 () Bool)

(assert (= bs!1909898 (and d!2259785 b!7263522)))

(assert (=> bs!1909898 (= (dynLambda!28857 lambda!447016 (h!77135 (exprs!8188 ct1!250))) (validRegex!9560 (h!77135 (exprs!8188 ct1!250))))))

(declare-fun m!7948264 () Bool)

(assert (=> bs!1909898 m!7948264))

(assert (=> b!7263615 d!2259785))

(declare-fun b_lambda!279473 () Bool)

(assert (= b_lambda!279463 (or b!7263522 b_lambda!279473)))

(declare-fun bs!1909899 () Bool)

(declare-fun d!2259787 () Bool)

(assert (= bs!1909899 (and d!2259787 b!7263522)))

(assert (=> bs!1909899 (= (dynLambda!28858 lambda!447017 ct1!250) (derivationStepZipperUp!2518 ct1!250 (h!77136 s!7854)))))

(assert (=> bs!1909899 m!7948146))

(assert (=> d!2259765 d!2259787))

(push 1)

(assert (not d!2259757))

(assert (not b!7263560))

(assert (not bm!661823))

(assert (not b_lambda!279469))

(assert (not b!7263602))

(assert (not d!2259753))

(assert (not b_lambda!279473))

(assert (not d!2259763))

(assert (not d!2259761))

(assert (not bs!1909898))

(assert tp_is_empty!46961)

(assert (not b!7263561))

(assert (not d!2259771))

(assert (not bs!1909899))

(assert (not b!7263616))

(assert (not b!7263626))

(assert (not b!7263581))

(assert (not b!7263555))

(assert (not d!2259773))

(assert (not bs!1909897))

(assert (not d!2259765))

(assert (not b!7263603))

(assert (not b_lambda!279471))

(assert (not b!7263613))

(assert (not b!7263612))

(assert (not b!7263580))

(assert (not d!2259775))

(assert (not b!7263627))

(assert (not bm!661819))

(assert (not b!7263621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

