; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708476 () Bool)

(assert start!708476)

(declare-fun b!7265263 () Bool)

(assert (=> b!7265263 true))

(declare-fun b!7265254 () Bool)

(declare-fun e!4356823 () Bool)

(declare-fun e!4356822 () Bool)

(assert (=> b!7265254 (= e!4356823 e!4356822)))

(declare-fun res!2945521 () Bool)

(assert (=> b!7265254 (=> res!2945521 e!4356822)))

(declare-datatypes ((C!37798 0))(
  ( (C!37799 (val!28847 Int)) )
))
(declare-datatypes ((Regex!18762 0))(
  ( (ElementMatch!18762 (c!1351782 C!37798)) (Concat!27607 (regOne!38036 Regex!18762) (regTwo!38036 Regex!18762)) (EmptyExpr!18762) (Star!18762 (reg!19091 Regex!18762)) (EmptyLang!18762) (Union!18762 (regOne!38037 Regex!18762) (regTwo!38037 Regex!18762)) )
))
(declare-datatypes ((List!70839 0))(
  ( (Nil!70715) (Cons!70715 (h!77163 Regex!18762) (t!384907 List!70839)) )
))
(declare-fun lt!2592097 () List!70839)

(declare-fun lambda!447304 () Int)

(declare-fun forall!17595 (List!70839 Int) Bool)

(assert (=> b!7265254 (= res!2945521 (not (forall!17595 lt!2592097 lambda!447304)))))

(declare-fun b!7265255 () Bool)

(declare-fun e!4356826 () Bool)

(declare-fun tp!2040343 () Bool)

(assert (=> b!7265255 (= e!4356826 tp!2040343)))

(declare-fun b!7265256 () Bool)

(declare-fun e!4356827 () Bool)

(assert (=> b!7265256 (= e!4356827 e!4356823)))

(declare-fun res!2945516 () Bool)

(assert (=> b!7265256 (=> res!2945516 e!4356823)))

(declare-datatypes ((Context!15404 0))(
  ( (Context!15405 (exprs!8202 List!70839)) )
))
(declare-fun ct1!250 () Context!15404)

(declare-fun nullable!7962 (Regex!18762) Bool)

(assert (=> b!7265256 (= res!2945516 (not (nullable!7962 (h!77163 (exprs!8202 ct1!250)))))))

(declare-fun lt!2592093 () (Set Context!15404))

(declare-datatypes ((List!70840 0))(
  ( (Nil!70716) (Cons!70716 (h!77164 C!37798) (t!384908 List!70840)) )
))
(declare-fun s!7854 () List!70840)

(declare-fun derivationStepZipperUp!2532 (Context!15404 C!37798) (Set Context!15404))

(assert (=> b!7265256 (= lt!2592093 (derivationStepZipperUp!2532 ct1!250 (h!77164 s!7854)))))

(declare-fun lt!2592098 () Context!15404)

(assert (=> b!7265256 (= lt!2592098 (Context!15405 lt!2592097))))

(declare-fun tail!14434 (List!70839) List!70839)

(assert (=> b!7265256 (= lt!2592097 (tail!14434 (exprs!8202 ct1!250)))))

(declare-fun b!7265257 () Bool)

(declare-fun res!2945518 () Bool)

(declare-fun e!4356824 () Bool)

(assert (=> b!7265257 (=> (not res!2945518) (not e!4356824))))

(assert (=> b!7265257 (= res!2945518 (is-Cons!70716 s!7854))))

(declare-fun b!7265258 () Bool)

(declare-fun res!2945519 () Bool)

(assert (=> b!7265258 (=> res!2945519 e!4356823)))

(declare-fun derivationStepZipperDown!2696 (Regex!18762 Context!15404 C!37798) (Set Context!15404))

(assert (=> b!7265258 (= res!2945519 (not (= lt!2592093 (set.union (derivationStepZipperDown!2696 (h!77163 (exprs!8202 ct1!250)) lt!2592098 (h!77164 s!7854)) (derivationStepZipperUp!2532 lt!2592098 (h!77164 s!7854))))))))

(declare-fun b!7265259 () Bool)

(declare-fun res!2945524 () Bool)

(assert (=> b!7265259 (=> res!2945524 e!4356827)))

(assert (=> b!7265259 (= res!2945524 (not (is-Cons!70715 (exprs!8202 ct1!250))))))

(declare-fun b!7265261 () Bool)

(declare-fun e!4356825 () Bool)

(declare-fun tp_is_empty!46989 () Bool)

(declare-fun tp!2040341 () Bool)

(assert (=> b!7265261 (= e!4356825 (and tp_is_empty!46989 tp!2040341))))

(declare-fun b!7265262 () Bool)

(declare-fun e!4356828 () Bool)

(declare-fun tp!2040342 () Bool)

(assert (=> b!7265262 (= e!4356828 tp!2040342)))

(assert (=> b!7265263 (= e!4356824 (not e!4356827))))

(declare-fun res!2945517 () Bool)

(assert (=> b!7265263 (=> res!2945517 e!4356827)))

(declare-fun lt!2592095 () (Set Context!15404))

(declare-fun lt!2592092 () (Set Context!15404))

(declare-fun derivationStepZipper!3502 ((Set Context!15404) C!37798) (Set Context!15404))

(assert (=> b!7265263 (= res!2945517 (not (= lt!2592092 (derivationStepZipper!3502 lt!2592095 (h!77164 s!7854)))))))

(declare-fun ct2!346 () Context!15404)

(declare-datatypes ((Unit!164142 0))(
  ( (Unit!164143) )
))
(declare-fun lt!2592102 () Unit!164142)

(declare-fun lemmaConcatPreservesForall!1519 (List!70839 List!70839 Int) Unit!164142)

(assert (=> b!7265263 (= lt!2592102 (lemmaConcatPreservesForall!1519 (exprs!8202 ct1!250) (exprs!8202 ct2!346) lambda!447304))))

(declare-fun lambda!447305 () Int)

(declare-fun lt!2592094 () Context!15404)

(declare-fun flatMap!2875 ((Set Context!15404) Int) (Set Context!15404))

(assert (=> b!7265263 (= (flatMap!2875 lt!2592095 lambda!447305) (derivationStepZipperUp!2532 lt!2592094 (h!77164 s!7854)))))

(declare-fun lt!2592104 () Unit!164142)

(declare-fun lemmaFlatMapOnSingletonSet!2275 ((Set Context!15404) Context!15404 Int) Unit!164142)

(assert (=> b!7265263 (= lt!2592104 (lemmaFlatMapOnSingletonSet!2275 lt!2592095 lt!2592094 lambda!447305))))

(assert (=> b!7265263 (= lt!2592095 (set.insert lt!2592094 (as set.empty (Set Context!15404))))))

(declare-fun lt!2592100 () Unit!164142)

(assert (=> b!7265263 (= lt!2592100 (lemmaConcatPreservesForall!1519 (exprs!8202 ct1!250) (exprs!8202 ct2!346) lambda!447304))))

(declare-fun lt!2592101 () Unit!164142)

(assert (=> b!7265263 (= lt!2592101 (lemmaConcatPreservesForall!1519 (exprs!8202 ct1!250) (exprs!8202 ct2!346) lambda!447304))))

(declare-fun lt!2592099 () (Set Context!15404))

(assert (=> b!7265263 (= (flatMap!2875 lt!2592099 lambda!447305) (derivationStepZipperUp!2532 ct1!250 (h!77164 s!7854)))))

(declare-fun lt!2592103 () Unit!164142)

(assert (=> b!7265263 (= lt!2592103 (lemmaFlatMapOnSingletonSet!2275 lt!2592099 ct1!250 lambda!447305))))

(assert (=> b!7265263 (= lt!2592099 (set.insert ct1!250 (as set.empty (Set Context!15404))))))

(assert (=> b!7265263 (= lt!2592092 (derivationStepZipperUp!2532 lt!2592094 (h!77164 s!7854)))))

(declare-fun ++!16662 (List!70839 List!70839) List!70839)

(assert (=> b!7265263 (= lt!2592094 (Context!15405 (++!16662 (exprs!8202 ct1!250) (exprs!8202 ct2!346))))))

(declare-fun lt!2592096 () Unit!164142)

(assert (=> b!7265263 (= lt!2592096 (lemmaConcatPreservesForall!1519 (exprs!8202 ct1!250) (exprs!8202 ct2!346) lambda!447304))))

(declare-fun b!7265264 () Bool)

(assert (=> b!7265264 (= e!4356822 (forall!17595 (exprs!8202 ct2!346) lambda!447304))))

(declare-fun b!7265265 () Bool)

(declare-fun res!2945520 () Bool)

(assert (=> b!7265265 (=> (not res!2945520) (not e!4356824))))

(declare-fun nullableContext!252 (Context!15404) Bool)

(assert (=> b!7265265 (= res!2945520 (nullableContext!252 ct1!250))))

(declare-fun res!2945523 () Bool)

(assert (=> start!708476 (=> (not res!2945523) (not e!4356824))))

(declare-fun matchZipper!3666 ((Set Context!15404) List!70840) Bool)

(assert (=> start!708476 (= res!2945523 (matchZipper!3666 (set.insert ct2!346 (as set.empty (Set Context!15404))) s!7854))))

(assert (=> start!708476 e!4356824))

(declare-fun inv!89916 (Context!15404) Bool)

(assert (=> start!708476 (and (inv!89916 ct2!346) e!4356828)))

(assert (=> start!708476 e!4356825))

(assert (=> start!708476 (and (inv!89916 ct1!250) e!4356826)))

(declare-fun b!7265260 () Bool)

(declare-fun res!2945522 () Bool)

(assert (=> b!7265260 (=> res!2945522 e!4356827)))

(declare-fun isEmpty!40646 (List!70839) Bool)

(assert (=> b!7265260 (= res!2945522 (isEmpty!40646 (exprs!8202 ct1!250)))))

(assert (= (and start!708476 res!2945523) b!7265265))

(assert (= (and b!7265265 res!2945520) b!7265257))

(assert (= (and b!7265257 res!2945518) b!7265263))

(assert (= (and b!7265263 (not res!2945517)) b!7265259))

(assert (= (and b!7265259 (not res!2945524)) b!7265260))

(assert (= (and b!7265260 (not res!2945522)) b!7265256))

(assert (= (and b!7265256 (not res!2945516)) b!7265258))

(assert (= (and b!7265258 (not res!2945519)) b!7265254))

(assert (= (and b!7265254 (not res!2945521)) b!7265264))

(assert (= start!708476 b!7265262))

(assert (= (and start!708476 (is-Cons!70716 s!7854)) b!7265261))

(assert (= start!708476 b!7265255))

(declare-fun m!7949886 () Bool)

(assert (=> b!7265254 m!7949886))

(declare-fun m!7949888 () Bool)

(assert (=> b!7265258 m!7949888))

(declare-fun m!7949890 () Bool)

(assert (=> b!7265258 m!7949890))

(declare-fun m!7949892 () Bool)

(assert (=> b!7265256 m!7949892))

(declare-fun m!7949894 () Bool)

(assert (=> b!7265256 m!7949894))

(declare-fun m!7949896 () Bool)

(assert (=> b!7265256 m!7949896))

(declare-fun m!7949898 () Bool)

(assert (=> b!7265263 m!7949898))

(assert (=> b!7265263 m!7949894))

(declare-fun m!7949900 () Bool)

(assert (=> b!7265263 m!7949900))

(assert (=> b!7265263 m!7949898))

(declare-fun m!7949902 () Bool)

(assert (=> b!7265263 m!7949902))

(declare-fun m!7949904 () Bool)

(assert (=> b!7265263 m!7949904))

(declare-fun m!7949906 () Bool)

(assert (=> b!7265263 m!7949906))

(declare-fun m!7949908 () Bool)

(assert (=> b!7265263 m!7949908))

(declare-fun m!7949910 () Bool)

(assert (=> b!7265263 m!7949910))

(declare-fun m!7949912 () Bool)

(assert (=> b!7265263 m!7949912))

(declare-fun m!7949914 () Bool)

(assert (=> b!7265263 m!7949914))

(assert (=> b!7265263 m!7949898))

(declare-fun m!7949916 () Bool)

(assert (=> b!7265263 m!7949916))

(assert (=> b!7265263 m!7949898))

(declare-fun m!7949918 () Bool)

(assert (=> b!7265260 m!7949918))

(declare-fun m!7949920 () Bool)

(assert (=> start!708476 m!7949920))

(assert (=> start!708476 m!7949920))

(declare-fun m!7949922 () Bool)

(assert (=> start!708476 m!7949922))

(declare-fun m!7949924 () Bool)

(assert (=> start!708476 m!7949924))

(declare-fun m!7949926 () Bool)

(assert (=> start!708476 m!7949926))

(declare-fun m!7949928 () Bool)

(assert (=> b!7265264 m!7949928))

(declare-fun m!7949930 () Bool)

(assert (=> b!7265265 m!7949930))

(push 1)

(assert (not b!7265261))

(assert (not b!7265258))

(assert (not b!7265255))

(assert (not b!7265254))

(assert (not b!7265264))

(assert tp_is_empty!46989)

(assert (not b!7265256))

(assert (not start!708476))

(assert (not b!7265260))

(assert (not b!7265263))

(assert (not b!7265262))

(assert (not b!7265265))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2260448 () Bool)

(declare-fun dynLambda!28876 (Int Context!15404) (Set Context!15404))

(assert (=> d!2260448 (= (flatMap!2875 lt!2592095 lambda!447305) (dynLambda!28876 lambda!447305 lt!2592094))))

(declare-fun lt!2592146 () Unit!164142)

(declare-fun choose!56299 ((Set Context!15404) Context!15404 Int) Unit!164142)

(assert (=> d!2260448 (= lt!2592146 (choose!56299 lt!2592095 lt!2592094 lambda!447305))))

(assert (=> d!2260448 (= lt!2592095 (set.insert lt!2592094 (as set.empty (Set Context!15404))))))

(assert (=> d!2260448 (= (lemmaFlatMapOnSingletonSet!2275 lt!2592095 lt!2592094 lambda!447305) lt!2592146)))

(declare-fun b_lambda!279701 () Bool)

(assert (=> (not b_lambda!279701) (not d!2260448)))

(declare-fun bs!1910141 () Bool)

(assert (= bs!1910141 d!2260448))

(assert (=> bs!1910141 m!7949906))

(declare-fun m!7949978 () Bool)

(assert (=> bs!1910141 m!7949978))

(declare-fun m!7949980 () Bool)

(assert (=> bs!1910141 m!7949980))

(assert (=> bs!1910141 m!7949908))

(assert (=> b!7265263 d!2260448))

(declare-fun d!2260450 () Bool)

(declare-fun choose!56300 ((Set Context!15404) Int) (Set Context!15404))

(assert (=> d!2260450 (= (flatMap!2875 lt!2592099 lambda!447305) (choose!56300 lt!2592099 lambda!447305))))

(declare-fun bs!1910142 () Bool)

(assert (= bs!1910142 d!2260450))

(declare-fun m!7949982 () Bool)

(assert (=> bs!1910142 m!7949982))

(assert (=> b!7265263 d!2260450))

(declare-fun b!7265316 () Bool)

(declare-fun e!4356858 () (Set Context!15404))

(assert (=> b!7265316 (= e!4356858 (as set.empty (Set Context!15404)))))

(declare-fun b!7265317 () Bool)

(declare-fun e!4356857 () Bool)

(assert (=> b!7265317 (= e!4356857 (nullable!7962 (h!77163 (exprs!8202 lt!2592094))))))

(declare-fun d!2260452 () Bool)

(declare-fun c!1351793 () Bool)

(assert (=> d!2260452 (= c!1351793 e!4356857)))

(declare-fun res!2945554 () Bool)

(assert (=> d!2260452 (=> (not res!2945554) (not e!4356857))))

(assert (=> d!2260452 (= res!2945554 (is-Cons!70715 (exprs!8202 lt!2592094)))))

(declare-fun e!4356856 () (Set Context!15404))

(assert (=> d!2260452 (= (derivationStepZipperUp!2532 lt!2592094 (h!77164 s!7854)) e!4356856)))

(declare-fun call!662092 () (Set Context!15404))

(declare-fun b!7265318 () Bool)

(assert (=> b!7265318 (= e!4356856 (set.union call!662092 (derivationStepZipperUp!2532 (Context!15405 (t!384907 (exprs!8202 lt!2592094))) (h!77164 s!7854))))))

(declare-fun bm!662087 () Bool)

(assert (=> bm!662087 (= call!662092 (derivationStepZipperDown!2696 (h!77163 (exprs!8202 lt!2592094)) (Context!15405 (t!384907 (exprs!8202 lt!2592094))) (h!77164 s!7854)))))

(declare-fun b!7265319 () Bool)

(assert (=> b!7265319 (= e!4356856 e!4356858)))

(declare-fun c!1351792 () Bool)

(assert (=> b!7265319 (= c!1351792 (is-Cons!70715 (exprs!8202 lt!2592094)))))

(declare-fun b!7265320 () Bool)

(assert (=> b!7265320 (= e!4356858 call!662092)))

(assert (= (and d!2260452 res!2945554) b!7265317))

(assert (= (and d!2260452 c!1351793) b!7265318))

(assert (= (and d!2260452 (not c!1351793)) b!7265319))

(assert (= (and b!7265319 c!1351792) b!7265320))

(assert (= (and b!7265319 (not c!1351792)) b!7265316))

(assert (= (or b!7265318 b!7265320) bm!662087))

(declare-fun m!7949984 () Bool)

(assert (=> b!7265317 m!7949984))

(declare-fun m!7949986 () Bool)

(assert (=> b!7265318 m!7949986))

(declare-fun m!7949988 () Bool)

(assert (=> bm!662087 m!7949988))

(assert (=> b!7265263 d!2260452))

(declare-fun d!2260456 () Bool)

(assert (=> d!2260456 (forall!17595 (++!16662 (exprs!8202 ct1!250) (exprs!8202 ct2!346)) lambda!447304)))

(declare-fun lt!2592151 () Unit!164142)

(declare-fun choose!56301 (List!70839 List!70839 Int) Unit!164142)

(assert (=> d!2260456 (= lt!2592151 (choose!56301 (exprs!8202 ct1!250) (exprs!8202 ct2!346) lambda!447304))))

(assert (=> d!2260456 (forall!17595 (exprs!8202 ct1!250) lambda!447304)))

(assert (=> d!2260456 (= (lemmaConcatPreservesForall!1519 (exprs!8202 ct1!250) (exprs!8202 ct2!346) lambda!447304) lt!2592151)))

(declare-fun bs!1910143 () Bool)

(assert (= bs!1910143 d!2260456))

(assert (=> bs!1910143 m!7949912))

(assert (=> bs!1910143 m!7949912))

(declare-fun m!7949990 () Bool)

(assert (=> bs!1910143 m!7949990))

(declare-fun m!7949992 () Bool)

(assert (=> bs!1910143 m!7949992))

(declare-fun m!7949994 () Bool)

(assert (=> bs!1910143 m!7949994))

(assert (=> b!7265263 d!2260456))

(declare-fun d!2260458 () Bool)

(assert (=> d!2260458 (= (flatMap!2875 lt!2592095 lambda!447305) (choose!56300 lt!2592095 lambda!447305))))

(declare-fun bs!1910144 () Bool)

(assert (= bs!1910144 d!2260458))

(declare-fun m!7949996 () Bool)

(assert (=> bs!1910144 m!7949996))

(assert (=> b!7265263 d!2260458))

(declare-fun bs!1910146 () Bool)

(declare-fun d!2260460 () Bool)

(assert (= bs!1910146 (and d!2260460 b!7265263)))

(declare-fun lambda!447324 () Int)

(assert (=> bs!1910146 (= lambda!447324 lambda!447305)))

(assert (=> d!2260460 true))

(assert (=> d!2260460 (= (derivationStepZipper!3502 lt!2592095 (h!77164 s!7854)) (flatMap!2875 lt!2592095 lambda!447324))))

(declare-fun bs!1910147 () Bool)

(assert (= bs!1910147 d!2260460))

(declare-fun m!7950002 () Bool)

(assert (=> bs!1910147 m!7950002))

(assert (=> b!7265263 d!2260460))

(declare-fun b!7265323 () Bool)

(declare-fun e!4356861 () (Set Context!15404))

(assert (=> b!7265323 (= e!4356861 (as set.empty (Set Context!15404)))))

(declare-fun b!7265324 () Bool)

(declare-fun e!4356860 () Bool)

(assert (=> b!7265324 (= e!4356860 (nullable!7962 (h!77163 (exprs!8202 ct1!250))))))

(declare-fun d!2260464 () Bool)

(declare-fun c!1351797 () Bool)

(assert (=> d!2260464 (= c!1351797 e!4356860)))

(declare-fun res!2945555 () Bool)

(assert (=> d!2260464 (=> (not res!2945555) (not e!4356860))))

(assert (=> d!2260464 (= res!2945555 (is-Cons!70715 (exprs!8202 ct1!250)))))

(declare-fun e!4356859 () (Set Context!15404))

(assert (=> d!2260464 (= (derivationStepZipperUp!2532 ct1!250 (h!77164 s!7854)) e!4356859)))

(declare-fun b!7265325 () Bool)

(declare-fun call!662093 () (Set Context!15404))

(assert (=> b!7265325 (= e!4356859 (set.union call!662093 (derivationStepZipperUp!2532 (Context!15405 (t!384907 (exprs!8202 ct1!250))) (h!77164 s!7854))))))

(declare-fun bm!662088 () Bool)

(assert (=> bm!662088 (= call!662093 (derivationStepZipperDown!2696 (h!77163 (exprs!8202 ct1!250)) (Context!15405 (t!384907 (exprs!8202 ct1!250))) (h!77164 s!7854)))))

(declare-fun b!7265326 () Bool)

(assert (=> b!7265326 (= e!4356859 e!4356861)))

(declare-fun c!1351796 () Bool)

(assert (=> b!7265326 (= c!1351796 (is-Cons!70715 (exprs!8202 ct1!250)))))

(declare-fun b!7265327 () Bool)

(assert (=> b!7265327 (= e!4356861 call!662093)))

(assert (= (and d!2260464 res!2945555) b!7265324))

(assert (= (and d!2260464 c!1351797) b!7265325))

(assert (= (and d!2260464 (not c!1351797)) b!7265326))

(assert (= (and b!7265326 c!1351796) b!7265327))

(assert (= (and b!7265326 (not c!1351796)) b!7265323))

(assert (= (or b!7265325 b!7265327) bm!662088))

(assert (=> b!7265324 m!7949892))

(declare-fun m!7950004 () Bool)

(assert (=> b!7265325 m!7950004))

(declare-fun m!7950006 () Bool)

(assert (=> bm!662088 m!7950006))

(assert (=> b!7265263 d!2260464))

(declare-fun b!7265342 () Bool)

(declare-fun res!2945561 () Bool)

(declare-fun e!4356868 () Bool)

(assert (=> b!7265342 (=> (not res!2945561) (not e!4356868))))

(declare-fun lt!2592155 () List!70839)

(declare-fun size!41794 (List!70839) Int)

(assert (=> b!7265342 (= res!2945561 (= (size!41794 lt!2592155) (+ (size!41794 (exprs!8202 ct1!250)) (size!41794 (exprs!8202 ct2!346)))))))

(declare-fun b!7265343 () Bool)

(assert (=> b!7265343 (= e!4356868 (or (not (= (exprs!8202 ct2!346) Nil!70715)) (= lt!2592155 (exprs!8202 ct1!250))))))

(declare-fun d!2260466 () Bool)

(assert (=> d!2260466 e!4356868))

(declare-fun res!2945560 () Bool)

(assert (=> d!2260466 (=> (not res!2945560) (not e!4356868))))

(declare-fun content!14746 (List!70839) (Set Regex!18762))

(assert (=> d!2260466 (= res!2945560 (= (content!14746 lt!2592155) (set.union (content!14746 (exprs!8202 ct1!250)) (content!14746 (exprs!8202 ct2!346)))))))

(declare-fun e!4356869 () List!70839)

(assert (=> d!2260466 (= lt!2592155 e!4356869)))

(declare-fun c!1351802 () Bool)

(assert (=> d!2260466 (= c!1351802 (is-Nil!70715 (exprs!8202 ct1!250)))))

(assert (=> d!2260466 (= (++!16662 (exprs!8202 ct1!250) (exprs!8202 ct2!346)) lt!2592155)))

(declare-fun b!7265341 () Bool)

(assert (=> b!7265341 (= e!4356869 (Cons!70715 (h!77163 (exprs!8202 ct1!250)) (++!16662 (t!384907 (exprs!8202 ct1!250)) (exprs!8202 ct2!346))))))

(declare-fun b!7265340 () Bool)

(assert (=> b!7265340 (= e!4356869 (exprs!8202 ct2!346))))

(assert (= (and d!2260466 c!1351802) b!7265340))

(assert (= (and d!2260466 (not c!1351802)) b!7265341))

(assert (= (and d!2260466 res!2945560) b!7265342))

(assert (= (and b!7265342 res!2945561) b!7265343))

(declare-fun m!7950008 () Bool)

(assert (=> b!7265342 m!7950008))

(declare-fun m!7950010 () Bool)

(assert (=> b!7265342 m!7950010))

(declare-fun m!7950012 () Bool)

(assert (=> b!7265342 m!7950012))

(declare-fun m!7950014 () Bool)

(assert (=> d!2260466 m!7950014))

(declare-fun m!7950016 () Bool)

(assert (=> d!2260466 m!7950016))

(declare-fun m!7950018 () Bool)

(assert (=> d!2260466 m!7950018))

(declare-fun m!7950020 () Bool)

(assert (=> b!7265341 m!7950020))

(assert (=> b!7265263 d!2260466))

(declare-fun d!2260468 () Bool)

(assert (=> d!2260468 (= (flatMap!2875 lt!2592099 lambda!447305) (dynLambda!28876 lambda!447305 ct1!250))))

(declare-fun lt!2592156 () Unit!164142)

(assert (=> d!2260468 (= lt!2592156 (choose!56299 lt!2592099 ct1!250 lambda!447305))))

(assert (=> d!2260468 (= lt!2592099 (set.insert ct1!250 (as set.empty (Set Context!15404))))))

(assert (=> d!2260468 (= (lemmaFlatMapOnSingletonSet!2275 lt!2592099 ct1!250 lambda!447305) lt!2592156)))

(declare-fun b_lambda!279705 () Bool)

(assert (=> (not b_lambda!279705) (not d!2260468)))

(declare-fun bs!1910148 () Bool)

(assert (= bs!1910148 d!2260468))

(assert (=> bs!1910148 m!7949916))

(declare-fun m!7950022 () Bool)

(assert (=> bs!1910148 m!7950022))

(declare-fun m!7950024 () Bool)

(assert (=> bs!1910148 m!7950024))

(assert (=> bs!1910148 m!7949910))

(assert (=> b!7265263 d!2260468))

(declare-fun bm!662104 () Bool)

(declare-fun call!662110 () (Set Context!15404))

(declare-fun call!662109 () (Set Context!15404))

(assert (=> bm!662104 (= call!662110 call!662109)))

(declare-fun b!7265377 () Bool)

(declare-fun e!4356892 () (Set Context!15404))

(declare-fun e!4356891 () (Set Context!15404))

(assert (=> b!7265377 (= e!4356892 e!4356891)))

(declare-fun c!1351819 () Bool)

(assert (=> b!7265377 (= c!1351819 (is-Concat!27607 (h!77163 (exprs!8202 ct1!250))))))

(declare-fun c!1351820 () Bool)

(declare-fun c!1351818 () Bool)

(declare-fun call!662114 () List!70839)

(declare-fun bm!662105 () Bool)

(assert (=> bm!662105 (= call!662109 (derivationStepZipperDown!2696 (ite c!1351820 (regTwo!38037 (h!77163 (exprs!8202 ct1!250))) (ite c!1351818 (regTwo!38036 (h!77163 (exprs!8202 ct1!250))) (ite c!1351819 (regOne!38036 (h!77163 (exprs!8202 ct1!250))) (reg!19091 (h!77163 (exprs!8202 ct1!250)))))) (ite (or c!1351820 c!1351818) lt!2592098 (Context!15405 call!662114)) (h!77164 s!7854)))))

(declare-fun b!7265378 () Bool)

(declare-fun call!662113 () (Set Context!15404))

(assert (=> b!7265378 (= e!4356892 (set.union call!662113 call!662110))))

(declare-fun bm!662106 () Bool)

(declare-fun call!662112 () List!70839)

(assert (=> bm!662106 (= call!662114 call!662112)))

(declare-fun b!7265379 () Bool)

(declare-fun e!4356889 () (Set Context!15404))

(assert (=> b!7265379 (= e!4356889 (set.insert lt!2592098 (as set.empty (Set Context!15404))))))

(declare-fun b!7265380 () Bool)

(declare-fun e!4356893 () Bool)

(assert (=> b!7265380 (= e!4356893 (nullable!7962 (regOne!38036 (h!77163 (exprs!8202 ct1!250)))))))

(declare-fun b!7265381 () Bool)

(declare-fun e!4356894 () (Set Context!15404))

(assert (=> b!7265381 (= e!4356894 (as set.empty (Set Context!15404)))))

(declare-fun b!7265382 () Bool)

(assert (=> b!7265382 (= c!1351818 e!4356893)))

(declare-fun res!2945567 () Bool)

(assert (=> b!7265382 (=> (not res!2945567) (not e!4356893))))

(assert (=> b!7265382 (= res!2945567 (is-Concat!27607 (h!77163 (exprs!8202 ct1!250))))))

(declare-fun e!4356890 () (Set Context!15404))

(assert (=> b!7265382 (= e!4356890 e!4356892)))

(declare-fun b!7265383 () Bool)

(assert (=> b!7265383 (= e!4356889 e!4356890)))

(assert (=> b!7265383 (= c!1351820 (is-Union!18762 (h!77163 (exprs!8202 ct1!250))))))

(declare-fun b!7265384 () Bool)

(declare-fun call!662111 () (Set Context!15404))

(assert (=> b!7265384 (= e!4356891 call!662111)))

(declare-fun bm!662108 () Bool)

(assert (=> bm!662108 (= call!662113 (derivationStepZipperDown!2696 (ite c!1351820 (regOne!38037 (h!77163 (exprs!8202 ct1!250))) (regOne!38036 (h!77163 (exprs!8202 ct1!250)))) (ite c!1351820 lt!2592098 (Context!15405 call!662112)) (h!77164 s!7854)))))

(declare-fun bm!662109 () Bool)

(assert (=> bm!662109 (= call!662111 call!662110)))

(declare-fun b!7265385 () Bool)

(assert (=> b!7265385 (= e!4356894 call!662111)))

(declare-fun bm!662107 () Bool)

(declare-fun $colon$colon!2944 (List!70839 Regex!18762) List!70839)

(assert (=> bm!662107 (= call!662112 ($colon$colon!2944 (exprs!8202 lt!2592098) (ite (or c!1351818 c!1351819) (regTwo!38036 (h!77163 (exprs!8202 ct1!250))) (h!77163 (exprs!8202 ct1!250)))))))

(declare-fun d!2260470 () Bool)

(declare-fun c!1351817 () Bool)

(assert (=> d!2260470 (= c!1351817 (and (is-ElementMatch!18762 (h!77163 (exprs!8202 ct1!250))) (= (c!1351782 (h!77163 (exprs!8202 ct1!250))) (h!77164 s!7854))))))

(assert (=> d!2260470 (= (derivationStepZipperDown!2696 (h!77163 (exprs!8202 ct1!250)) lt!2592098 (h!77164 s!7854)) e!4356889)))

(declare-fun b!7265386 () Bool)

(assert (=> b!7265386 (= e!4356890 (set.union call!662113 call!662109))))

(declare-fun b!7265387 () Bool)

(declare-fun c!1351821 () Bool)

(assert (=> b!7265387 (= c!1351821 (is-Star!18762 (h!77163 (exprs!8202 ct1!250))))))

(assert (=> b!7265387 (= e!4356891 e!4356894)))

(assert (= (and d!2260470 c!1351817) b!7265379))

(assert (= (and d!2260470 (not c!1351817)) b!7265383))

(assert (= (and b!7265383 c!1351820) b!7265386))

(assert (= (and b!7265383 (not c!1351820)) b!7265382))

(assert (= (and b!7265382 res!2945567) b!7265380))

(assert (= (and b!7265382 c!1351818) b!7265378))

(assert (= (and b!7265382 (not c!1351818)) b!7265377))

(assert (= (and b!7265377 c!1351819) b!7265384))

(assert (= (and b!7265377 (not c!1351819)) b!7265387))

(assert (= (and b!7265387 c!1351821) b!7265385))

(assert (= (and b!7265387 (not c!1351821)) b!7265381))

(assert (= (or b!7265384 b!7265385) bm!662106))

(assert (= (or b!7265384 b!7265385) bm!662109))

(assert (= (or b!7265378 bm!662106) bm!662107))

(assert (= (or b!7265378 bm!662109) bm!662104))

(assert (= (or b!7265386 b!7265378) bm!662108))

(assert (= (or b!7265386 bm!662104) bm!662105))

(declare-fun m!7950032 () Bool)

(assert (=> bm!662107 m!7950032))

(declare-fun m!7950034 () Bool)

(assert (=> bm!662108 m!7950034))

(declare-fun m!7950036 () Bool)

(assert (=> b!7265380 m!7950036))

(declare-fun m!7950038 () Bool)

(assert (=> b!7265379 m!7950038))

(declare-fun m!7950040 () Bool)

(assert (=> bm!662105 m!7950040))

(assert (=> b!7265258 d!2260470))

(declare-fun b!7265388 () Bool)

(declare-fun e!4356897 () (Set Context!15404))

(assert (=> b!7265388 (= e!4356897 (as set.empty (Set Context!15404)))))

(declare-fun b!7265389 () Bool)

(declare-fun e!4356896 () Bool)

(assert (=> b!7265389 (= e!4356896 (nullable!7962 (h!77163 (exprs!8202 lt!2592098))))))

(declare-fun d!2260476 () Bool)

(declare-fun c!1351823 () Bool)

(assert (=> d!2260476 (= c!1351823 e!4356896)))

(declare-fun res!2945568 () Bool)

(assert (=> d!2260476 (=> (not res!2945568) (not e!4356896))))

(assert (=> d!2260476 (= res!2945568 (is-Cons!70715 (exprs!8202 lt!2592098)))))

(declare-fun e!4356895 () (Set Context!15404))

(assert (=> d!2260476 (= (derivationStepZipperUp!2532 lt!2592098 (h!77164 s!7854)) e!4356895)))

(declare-fun b!7265390 () Bool)

(declare-fun call!662115 () (Set Context!15404))

(assert (=> b!7265390 (= e!4356895 (set.union call!662115 (derivationStepZipperUp!2532 (Context!15405 (t!384907 (exprs!8202 lt!2592098))) (h!77164 s!7854))))))

(declare-fun bm!662110 () Bool)

(assert (=> bm!662110 (= call!662115 (derivationStepZipperDown!2696 (h!77163 (exprs!8202 lt!2592098)) (Context!15405 (t!384907 (exprs!8202 lt!2592098))) (h!77164 s!7854)))))

(declare-fun b!7265391 () Bool)

(assert (=> b!7265391 (= e!4356895 e!4356897)))

(declare-fun c!1351822 () Bool)

(assert (=> b!7265391 (= c!1351822 (is-Cons!70715 (exprs!8202 lt!2592098)))))

(declare-fun b!7265392 () Bool)

(assert (=> b!7265392 (= e!4356897 call!662115)))

(assert (= (and d!2260476 res!2945568) b!7265389))

(assert (= (and d!2260476 c!1351823) b!7265390))

(assert (= (and d!2260476 (not c!1351823)) b!7265391))

(assert (= (and b!7265391 c!1351822) b!7265392))

(assert (= (and b!7265391 (not c!1351822)) b!7265388))

(assert (= (or b!7265390 b!7265392) bm!662110))

(declare-fun m!7950042 () Bool)

(assert (=> b!7265389 m!7950042))

(declare-fun m!7950044 () Bool)

(assert (=> b!7265390 m!7950044))

(declare-fun m!7950046 () Bool)

(assert (=> bm!662110 m!7950046))

(assert (=> b!7265258 d!2260476))

(declare-fun d!2260478 () Bool)

(declare-fun c!1351828 () Bool)

(declare-fun isEmpty!40648 (List!70840) Bool)

(assert (=> d!2260478 (= c!1351828 (isEmpty!40648 s!7854))))

(declare-fun e!4356904 () Bool)

(assert (=> d!2260478 (= (matchZipper!3666 (set.insert ct2!346 (as set.empty (Set Context!15404))) s!7854) e!4356904)))

(declare-fun b!7265405 () Bool)

(declare-fun nullableZipper!2974 ((Set Context!15404)) Bool)

(assert (=> b!7265405 (= e!4356904 (nullableZipper!2974 (set.insert ct2!346 (as set.empty (Set Context!15404)))))))

(declare-fun b!7265406 () Bool)

(declare-fun head!14973 (List!70840) C!37798)

(declare-fun tail!14436 (List!70840) List!70840)

(assert (=> b!7265406 (= e!4356904 (matchZipper!3666 (derivationStepZipper!3502 (set.insert ct2!346 (as set.empty (Set Context!15404))) (head!14973 s!7854)) (tail!14436 s!7854)))))

(assert (= (and d!2260478 c!1351828) b!7265405))

(assert (= (and d!2260478 (not c!1351828)) b!7265406))

(declare-fun m!7950048 () Bool)

(assert (=> d!2260478 m!7950048))

(assert (=> b!7265405 m!7949920))

(declare-fun m!7950050 () Bool)

(assert (=> b!7265405 m!7950050))

(declare-fun m!7950052 () Bool)

(assert (=> b!7265406 m!7950052))

(assert (=> b!7265406 m!7949920))

(assert (=> b!7265406 m!7950052))

(declare-fun m!7950054 () Bool)

(assert (=> b!7265406 m!7950054))

(declare-fun m!7950056 () Bool)

(assert (=> b!7265406 m!7950056))

(assert (=> b!7265406 m!7950054))

(assert (=> b!7265406 m!7950056))

(declare-fun m!7950058 () Bool)

(assert (=> b!7265406 m!7950058))

(assert (=> start!708476 d!2260478))

(declare-fun bs!1910150 () Bool)

(declare-fun d!2260480 () Bool)

(assert (= bs!1910150 (and d!2260480 b!7265263)))

(declare-fun lambda!447327 () Int)

(assert (=> bs!1910150 (= lambda!447327 lambda!447304)))

(assert (=> d!2260480 (= (inv!89916 ct2!346) (forall!17595 (exprs!8202 ct2!346) lambda!447327))))

(declare-fun bs!1910151 () Bool)

(assert (= bs!1910151 d!2260480))

(declare-fun m!7950060 () Bool)

(assert (=> bs!1910151 m!7950060))

(assert (=> start!708476 d!2260480))

(declare-fun bs!1910152 () Bool)

(declare-fun d!2260482 () Bool)

(assert (= bs!1910152 (and d!2260482 b!7265263)))

(declare-fun lambda!447328 () Int)

(assert (=> bs!1910152 (= lambda!447328 lambda!447304)))

(declare-fun bs!1910153 () Bool)

(assert (= bs!1910153 (and d!2260482 d!2260480)))

(assert (=> bs!1910153 (= lambda!447328 lambda!447327)))

(assert (=> d!2260482 (= (inv!89916 ct1!250) (forall!17595 (exprs!8202 ct1!250) lambda!447328))))

(declare-fun bs!1910154 () Bool)

(assert (= bs!1910154 d!2260482))

(declare-fun m!7950062 () Bool)

(assert (=> bs!1910154 m!7950062))

(assert (=> start!708476 d!2260482))

(declare-fun d!2260484 () Bool)

(declare-fun res!2945580 () Bool)

(declare-fun e!4356914 () Bool)

(assert (=> d!2260484 (=> res!2945580 e!4356914)))

(assert (=> d!2260484 (= res!2945580 (is-Nil!70715 (exprs!8202 ct2!346)))))

(assert (=> d!2260484 (= (forall!17595 (exprs!8202 ct2!346) lambda!447304) e!4356914)))

(declare-fun b!7265420 () Bool)

(declare-fun e!4356915 () Bool)

(assert (=> b!7265420 (= e!4356914 e!4356915)))

(declare-fun res!2945581 () Bool)

(assert (=> b!7265420 (=> (not res!2945581) (not e!4356915))))

(declare-fun dynLambda!28877 (Int Regex!18762) Bool)

(assert (=> b!7265420 (= res!2945581 (dynLambda!28877 lambda!447304 (h!77163 (exprs!8202 ct2!346))))))

(declare-fun b!7265421 () Bool)

(assert (=> b!7265421 (= e!4356915 (forall!17595 (t!384907 (exprs!8202 ct2!346)) lambda!447304))))

(assert (= (and d!2260484 (not res!2945580)) b!7265420))

(assert (= (and b!7265420 res!2945581) b!7265421))

(declare-fun b_lambda!279707 () Bool)

(assert (=> (not b_lambda!279707) (not b!7265420)))

(declare-fun m!7950084 () Bool)

(assert (=> b!7265420 m!7950084))

(declare-fun m!7950086 () Bool)

(assert (=> b!7265421 m!7950086))

(assert (=> b!7265264 d!2260484))

(declare-fun d!2260490 () Bool)

(declare-fun res!2945582 () Bool)

(declare-fun e!4356916 () Bool)

(assert (=> d!2260490 (=> res!2945582 e!4356916)))

(assert (=> d!2260490 (= res!2945582 (is-Nil!70715 lt!2592097))))

(assert (=> d!2260490 (= (forall!17595 lt!2592097 lambda!447304) e!4356916)))

(declare-fun b!7265422 () Bool)

(declare-fun e!4356917 () Bool)

(assert (=> b!7265422 (= e!4356916 e!4356917)))

(declare-fun res!2945583 () Bool)

(assert (=> b!7265422 (=> (not res!2945583) (not e!4356917))))

(assert (=> b!7265422 (= res!2945583 (dynLambda!28877 lambda!447304 (h!77163 lt!2592097)))))

(declare-fun b!7265423 () Bool)

(assert (=> b!7265423 (= e!4356917 (forall!17595 (t!384907 lt!2592097) lambda!447304))))

(assert (= (and d!2260490 (not res!2945582)) b!7265422))

(assert (= (and b!7265422 res!2945583) b!7265423))

(declare-fun b_lambda!279709 () Bool)

(assert (=> (not b_lambda!279709) (not b!7265422)))

(declare-fun m!7950088 () Bool)

(assert (=> b!7265422 m!7950088))

(declare-fun m!7950090 () Bool)

(assert (=> b!7265423 m!7950090))

(assert (=> b!7265254 d!2260490))

(declare-fun bs!1910155 () Bool)

(declare-fun d!2260492 () Bool)

(assert (= bs!1910155 (and d!2260492 b!7265263)))

(declare-fun lambda!447331 () Int)

(assert (=> bs!1910155 (not (= lambda!447331 lambda!447304))))

(declare-fun bs!1910156 () Bool)

(assert (= bs!1910156 (and d!2260492 d!2260480)))

(assert (=> bs!1910156 (not (= lambda!447331 lambda!447327))))

(declare-fun bs!1910157 () Bool)

(assert (= bs!1910157 (and d!2260492 d!2260482)))

(assert (=> bs!1910157 (not (= lambda!447331 lambda!447328))))

(assert (=> d!2260492 (= (nullableContext!252 ct1!250) (forall!17595 (exprs!8202 ct1!250) lambda!447331))))

(declare-fun bs!1910158 () Bool)

(assert (= bs!1910158 d!2260492))

(declare-fun m!7950092 () Bool)

(assert (=> bs!1910158 m!7950092))

(assert (=> b!7265265 d!2260492))

(declare-fun d!2260494 () Bool)

(assert (=> d!2260494 (= (isEmpty!40646 (exprs!8202 ct1!250)) (is-Nil!70715 (exprs!8202 ct1!250)))))

(assert (=> b!7265260 d!2260494))

(declare-fun d!2260496 () Bool)

(declare-fun nullableFct!3129 (Regex!18762) Bool)

(assert (=> d!2260496 (= (nullable!7962 (h!77163 (exprs!8202 ct1!250))) (nullableFct!3129 (h!77163 (exprs!8202 ct1!250))))))

(declare-fun bs!1910159 () Bool)

(assert (= bs!1910159 d!2260496))

(declare-fun m!7950094 () Bool)

(assert (=> bs!1910159 m!7950094))

(assert (=> b!7265256 d!2260496))

(assert (=> b!7265256 d!2260464))

(declare-fun d!2260498 () Bool)

(assert (=> d!2260498 (= (tail!14434 (exprs!8202 ct1!250)) (t!384907 (exprs!8202 ct1!250)))))

(assert (=> b!7265256 d!2260498))

(declare-fun b!7265430 () Bool)

(declare-fun e!4356920 () Bool)

(declare-fun tp!2040357 () Bool)

(declare-fun tp!2040358 () Bool)

(assert (=> b!7265430 (= e!4356920 (and tp!2040357 tp!2040358))))

(assert (=> b!7265262 (= tp!2040342 e!4356920)))

(assert (= (and b!7265262 (is-Cons!70715 (exprs!8202 ct2!346))) b!7265430))

(declare-fun b!7265431 () Bool)

(declare-fun e!4356921 () Bool)

(declare-fun tp!2040359 () Bool)

(declare-fun tp!2040360 () Bool)

(assert (=> b!7265431 (= e!4356921 (and tp!2040359 tp!2040360))))

(assert (=> b!7265255 (= tp!2040343 e!4356921)))

(assert (= (and b!7265255 (is-Cons!70715 (exprs!8202 ct1!250))) b!7265431))

(declare-fun b!7265436 () Bool)

(declare-fun e!4356924 () Bool)

(declare-fun tp!2040363 () Bool)

(assert (=> b!7265436 (= e!4356924 (and tp_is_empty!46989 tp!2040363))))

(assert (=> b!7265261 (= tp!2040341 e!4356924)))

(assert (= (and b!7265261 (is-Cons!70716 (t!384908 s!7854))) b!7265436))

(declare-fun b_lambda!279711 () Bool)

(assert (= b_lambda!279705 (or b!7265263 b_lambda!279711)))

(declare-fun bs!1910162 () Bool)

(declare-fun d!2260502 () Bool)

(assert (= bs!1910162 (and d!2260502 b!7265263)))

(assert (=> bs!1910162 (= (dynLambda!28876 lambda!447305 ct1!250) (derivationStepZipperUp!2532 ct1!250 (h!77164 s!7854)))))

(assert (=> bs!1910162 m!7949894))

(assert (=> d!2260468 d!2260502))

(declare-fun b_lambda!279713 () Bool)

(assert (= b_lambda!279701 (or b!7265263 b_lambda!279713)))

(declare-fun bs!1910164 () Bool)

(declare-fun d!2260504 () Bool)

(assert (= bs!1910164 (and d!2260504 b!7265263)))

(assert (=> bs!1910164 (= (dynLambda!28876 lambda!447305 lt!2592094) (derivationStepZipperUp!2532 lt!2592094 (h!77164 s!7854)))))

(assert (=> bs!1910164 m!7949904))

(assert (=> d!2260448 d!2260504))

(declare-fun b_lambda!279715 () Bool)

(assert (= b_lambda!279707 (or b!7265263 b_lambda!279715)))

(declare-fun bs!1910165 () Bool)

(declare-fun d!2260506 () Bool)

(assert (= bs!1910165 (and d!2260506 b!7265263)))

(declare-fun validRegex!9567 (Regex!18762) Bool)

(assert (=> bs!1910165 (= (dynLambda!28877 lambda!447304 (h!77163 (exprs!8202 ct2!346))) (validRegex!9567 (h!77163 (exprs!8202 ct2!346))))))

(declare-fun m!7950102 () Bool)

(assert (=> bs!1910165 m!7950102))

(assert (=> b!7265420 d!2260506))

(declare-fun b_lambda!279717 () Bool)

(assert (= b_lambda!279709 (or b!7265263 b_lambda!279717)))

(declare-fun bs!1910166 () Bool)

(declare-fun d!2260508 () Bool)

(assert (= bs!1910166 (and d!2260508 b!7265263)))

(assert (=> bs!1910166 (= (dynLambda!28877 lambda!447304 (h!77163 lt!2592097)) (validRegex!9567 (h!77163 lt!2592097)))))

(declare-fun m!7950104 () Bool)

(assert (=> bs!1910166 m!7950104))

(assert (=> b!7265422 d!2260508))

(push 1)

(assert (not b!7265318))

(assert (not d!2260456))

(assert (not bm!662105))

(assert (not bs!1910162))

(assert (not d!2260458))

(assert (not b_lambda!279711))

(assert (not d!2260448))

(assert (not b!7265324))

(assert (not bs!1910166))

(assert (not d!2260460))

(assert (not bs!1910165))

(assert (not b!7265341))

(assert (not b!7265406))

(assert (not d!2260480))

(assert (not b_lambda!279715))

(assert (not d!2260492))

(assert (not b!7265325))

(assert (not b!7265430))

(assert (not b!7265342))

(assert (not bm!662108))

(assert (not d!2260468))

(assert tp_is_empty!46989)

(assert (not b!7265380))

(assert (not bm!662110))

(assert (not bm!662107))

(assert (not bs!1910164))

(assert (not b!7265389))

(assert (not bm!662087))

(assert (not b!7265431))

(assert (not b!7265405))

(assert (not b!7265317))

(assert (not d!2260496))

(assert (not d!2260450))

(assert (not d!2260482))

(assert (not b!7265421))

(assert (not d!2260478))

(assert (not b_lambda!279717))

(assert (not d!2260466))

(assert (not bm!662088))

(assert (not b!7265390))

(assert (not b_lambda!279713))

(assert (not b!7265423))

(assert (not b!7265436))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

