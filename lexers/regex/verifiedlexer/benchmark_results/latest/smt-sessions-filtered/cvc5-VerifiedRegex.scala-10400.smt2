; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!538434 () Bool)

(assert start!538434)

(declare-fun b!5106358 () Bool)

(declare-fun res!2173561 () Bool)

(declare-fun e!3184823 () Bool)

(assert (=> b!5106358 (=> (not res!2173561) (not e!3184823))))

(declare-datatypes ((C!28446 0))(
  ( (C!28447 (val!23875 Int)) )
))
(declare-datatypes ((List!59050 0))(
  ( (Nil!58926) (Cons!58926 (h!65374 C!28446) (t!372051 List!59050)) )
))
(declare-fun input!5723 () List!59050)

(declare-fun isPrefix!5495 (List!59050 List!59050) Bool)

(assert (=> b!5106358 (= res!2173561 (isPrefix!5495 Nil!58926 input!5723))))

(declare-fun b!5106359 () Bool)

(declare-fun e!3184828 () Bool)

(declare-fun tp_is_empty!37453 () Bool)

(declare-fun tp!1424459 () Bool)

(assert (=> b!5106359 (= e!3184828 (and tp_is_empty!37453 tp!1424459))))

(declare-fun res!2173562 () Bool)

(declare-fun e!3184827 () Bool)

(assert (=> start!538434 (=> (not res!2173562) (not e!3184827))))

(declare-fun returnP!41 () List!59050)

(assert (=> start!538434 (= res!2173562 (isPrefix!5495 returnP!41 input!5723))))

(assert (=> start!538434 e!3184827))

(assert (=> start!538434 e!3184828))

(declare-fun e!3184826 () Bool)

(assert (=> start!538434 e!3184826))

(declare-fun e!3184825 () Bool)

(assert (=> start!538434 e!3184825))

(declare-fun condSetEmpty!29389 () Bool)

(declare-datatypes ((Regex!14090 0))(
  ( (ElementMatch!14090 (c!877140 C!28446)) (Concat!22935 (regOne!28692 Regex!14090) (regTwo!28692 Regex!14090)) (EmptyExpr!14090) (Star!14090 (reg!14419 Regex!14090)) (EmptyLang!14090) (Union!14090 (regOne!28693 Regex!14090) (regTwo!28693 Regex!14090)) )
))
(declare-datatypes ((List!59051 0))(
  ( (Nil!58927) (Cons!58927 (h!65375 Regex!14090) (t!372052 List!59051)) )
))
(declare-datatypes ((Context!6948 0))(
  ( (Context!6949 (exprs!3974 List!59051)) )
))
(declare-fun baseZ!39 () (Set Context!6948))

(assert (=> start!538434 (= condSetEmpty!29389 (= baseZ!39 (as set.empty (Set Context!6948))))))

(declare-fun setRes!29389 () Bool)

(assert (=> start!538434 setRes!29389))

(declare-fun b!5106360 () Bool)

(declare-fun res!2173566 () Bool)

(assert (=> b!5106360 (=> (not res!2173566) (not e!3184827))))

(declare-fun bigger!41 () List!59050)

(assert (=> b!5106360 (= res!2173566 (isPrefix!5495 bigger!41 input!5723))))

(declare-fun b!5106361 () Bool)

(declare-fun e!3184824 () Bool)

(assert (=> b!5106361 (= e!3184824 e!3184823)))

(declare-fun res!2173565 () Bool)

(assert (=> b!5106361 (=> (not res!2173565) (not e!3184823))))

(declare-fun lt!2101906 () Int)

(declare-datatypes ((tuple2!63566 0))(
  ( (tuple2!63567 (_1!35086 List!59050) (_2!35086 List!59050)) )
))
(declare-fun findLongestMatchInnerZipper!164 ((Set Context!6948) List!59050 Int List!59050 List!59050 Int) tuple2!63566)

(declare-fun size!39396 (List!59050) Int)

(assert (=> b!5106361 (= res!2173565 (= (_1!35086 (findLongestMatchInnerZipper!164 baseZ!39 Nil!58926 lt!2101906 input!5723 input!5723 (size!39396 input!5723))) returnP!41))))

(assert (=> b!5106361 (= lt!2101906 (size!39396 Nil!58926))))

(declare-fun b!5106362 () Bool)

(declare-fun res!2173564 () Bool)

(assert (=> b!5106362 (=> (not res!2173564) (not e!3184823))))

(declare-fun lt!2101907 () Int)

(declare-fun lt!2101905 () Int)

(assert (=> b!5106362 (= res!2173564 (not (= lt!2101907 lt!2101905)))))

(declare-fun setIsEmpty!29389 () Bool)

(assert (=> setIsEmpty!29389 setRes!29389))

(declare-fun b!5106363 () Bool)

(declare-fun e!3184822 () Bool)

(declare-fun tp!1424460 () Bool)

(assert (=> b!5106363 (= e!3184822 tp!1424460)))

(declare-fun b!5106364 () Bool)

(assert (=> b!5106364 (= e!3184823 (< lt!2101907 lt!2101906))))

(declare-fun tp!1424456 () Bool)

(declare-fun setElem!29389 () Context!6948)

(declare-fun setNonEmpty!29389 () Bool)

(declare-fun inv!78407 (Context!6948) Bool)

(assert (=> setNonEmpty!29389 (= setRes!29389 (and tp!1424456 (inv!78407 setElem!29389) e!3184822))))

(declare-fun setRest!29389 () (Set Context!6948))

(assert (=> setNonEmpty!29389 (= baseZ!39 (set.union (set.insert setElem!29389 (as set.empty (Set Context!6948))) setRest!29389))))

(declare-fun b!5106365 () Bool)

(declare-fun res!2173567 () Bool)

(assert (=> b!5106365 (=> (not res!2173567) (not e!3184823))))

(declare-fun matchZipper!758 ((Set Context!6948) List!59050) Bool)

(assert (=> b!5106365 (= res!2173567 (matchZipper!758 baseZ!39 bigger!41))))

(declare-fun b!5106366 () Bool)

(assert (=> b!5106366 (= e!3184827 e!3184824)))

(declare-fun res!2173563 () Bool)

(assert (=> b!5106366 (=> (not res!2173563) (not e!3184824))))

(assert (=> b!5106366 (= res!2173563 (>= lt!2101907 lt!2101905))))

(assert (=> b!5106366 (= lt!2101905 (size!39396 returnP!41))))

(assert (=> b!5106366 (= lt!2101907 (size!39396 bigger!41))))

(declare-fun b!5106367 () Bool)

(declare-fun tp!1424457 () Bool)

(assert (=> b!5106367 (= e!3184826 (and tp_is_empty!37453 tp!1424457))))

(declare-fun b!5106368 () Bool)

(declare-fun tp!1424458 () Bool)

(assert (=> b!5106368 (= e!3184825 (and tp_is_empty!37453 tp!1424458))))

(assert (= (and start!538434 res!2173562) b!5106360))

(assert (= (and b!5106360 res!2173566) b!5106366))

(assert (= (and b!5106366 res!2173563) b!5106361))

(assert (= (and b!5106361 res!2173565) b!5106362))

(assert (= (and b!5106362 res!2173564) b!5106365))

(assert (= (and b!5106365 res!2173567) b!5106358))

(assert (= (and b!5106358 res!2173561) b!5106364))

(assert (= (and start!538434 (is-Cons!58926 returnP!41)) b!5106359))

(assert (= (and start!538434 (is-Cons!58926 input!5723)) b!5106367))

(assert (= (and start!538434 (is-Cons!58926 bigger!41)) b!5106368))

(assert (= (and start!538434 condSetEmpty!29389) setIsEmpty!29389))

(assert (= (and start!538434 (not condSetEmpty!29389)) setNonEmpty!29389))

(assert (= setNonEmpty!29389 b!5106363))

(declare-fun m!6163638 () Bool)

(assert (=> b!5106360 m!6163638))

(declare-fun m!6163640 () Bool)

(assert (=> b!5106358 m!6163640))

(declare-fun m!6163642 () Bool)

(assert (=> b!5106361 m!6163642))

(assert (=> b!5106361 m!6163642))

(declare-fun m!6163644 () Bool)

(assert (=> b!5106361 m!6163644))

(declare-fun m!6163646 () Bool)

(assert (=> b!5106361 m!6163646))

(declare-fun m!6163648 () Bool)

(assert (=> b!5106365 m!6163648))

(declare-fun m!6163650 () Bool)

(assert (=> setNonEmpty!29389 m!6163650))

(declare-fun m!6163652 () Bool)

(assert (=> b!5106366 m!6163652))

(declare-fun m!6163654 () Bool)

(assert (=> b!5106366 m!6163654))

(declare-fun m!6163656 () Bool)

(assert (=> start!538434 m!6163656))

(push 1)

(assert (not b!5106368))

(assert tp_is_empty!37453)

(assert (not b!5106359))

(assert (not b!5106366))

(assert (not b!5106358))

(assert (not b!5106365))

(assert (not b!5106361))

(assert (not start!538434))

(assert (not b!5106363))

(assert (not b!5106360))

(assert (not b!5106367))

(assert (not setNonEmpty!29389))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5106412 () Bool)

(declare-fun e!3184856 () Bool)

(declare-fun tail!10001 (List!59050) List!59050)

(assert (=> b!5106412 (= e!3184856 (isPrefix!5495 (tail!10001 bigger!41) (tail!10001 input!5723)))))

(declare-fun b!5106411 () Bool)

(declare-fun res!2173597 () Bool)

(assert (=> b!5106411 (=> (not res!2173597) (not e!3184856))))

(declare-fun head!10846 (List!59050) C!28446)

(assert (=> b!5106411 (= res!2173597 (= (head!10846 bigger!41) (head!10846 input!5723)))))

(declare-fun b!5106413 () Bool)

(declare-fun e!3184857 () Bool)

(assert (=> b!5106413 (= e!3184857 (>= (size!39396 input!5723) (size!39396 bigger!41)))))

(declare-fun b!5106410 () Bool)

(declare-fun e!3184858 () Bool)

(assert (=> b!5106410 (= e!3184858 e!3184856)))

(declare-fun res!2173599 () Bool)

(assert (=> b!5106410 (=> (not res!2173599) (not e!3184856))))

(assert (=> b!5106410 (= res!2173599 (not (is-Nil!58926 input!5723)))))

(declare-fun d!1650729 () Bool)

(assert (=> d!1650729 e!3184857))

(declare-fun res!2173600 () Bool)

(assert (=> d!1650729 (=> res!2173600 e!3184857)))

(declare-fun lt!2101919 () Bool)

(assert (=> d!1650729 (= res!2173600 (not lt!2101919))))

(assert (=> d!1650729 (= lt!2101919 e!3184858)))

(declare-fun res!2173598 () Bool)

(assert (=> d!1650729 (=> res!2173598 e!3184858)))

(assert (=> d!1650729 (= res!2173598 (is-Nil!58926 bigger!41))))

(assert (=> d!1650729 (= (isPrefix!5495 bigger!41 input!5723) lt!2101919)))

(assert (= (and d!1650729 (not res!2173598)) b!5106410))

(assert (= (and b!5106410 res!2173599) b!5106411))

(assert (= (and b!5106411 res!2173597) b!5106412))

(assert (= (and d!1650729 (not res!2173600)) b!5106413))

(declare-fun m!6163678 () Bool)

(assert (=> b!5106412 m!6163678))

(declare-fun m!6163680 () Bool)

(assert (=> b!5106412 m!6163680))

(assert (=> b!5106412 m!6163678))

(assert (=> b!5106412 m!6163680))

(declare-fun m!6163682 () Bool)

(assert (=> b!5106412 m!6163682))

(declare-fun m!6163684 () Bool)

(assert (=> b!5106411 m!6163684))

(declare-fun m!6163686 () Bool)

(assert (=> b!5106411 m!6163686))

(assert (=> b!5106413 m!6163642))

(assert (=> b!5106413 m!6163654))

(assert (=> b!5106360 d!1650729))

(declare-fun d!1650733 () Bool)

(declare-fun lambda!249993 () Int)

(declare-fun forall!13498 (List!59051 Int) Bool)

(assert (=> d!1650733 (= (inv!78407 setElem!29389) (forall!13498 (exprs!3974 setElem!29389) lambda!249993))))

(declare-fun bs!1191650 () Bool)

(assert (= bs!1191650 d!1650733))

(declare-fun m!6163764 () Bool)

(assert (=> bs!1191650 m!6163764))

(assert (=> setNonEmpty!29389 d!1650733))

(declare-fun b!5106514 () Bool)

(declare-datatypes ((Unit!149972 0))(
  ( (Unit!149973) )
))
(declare-fun e!3184921 () Unit!149972)

(declare-fun Unit!149974 () Unit!149972)

(assert (=> b!5106514 (= e!3184921 Unit!149974)))

(declare-fun lt!2102059 () Unit!149972)

(declare-fun call!355950 () Unit!149972)

(assert (=> b!5106514 (= lt!2102059 call!355950)))

(declare-fun call!355952 () Bool)

(assert (=> b!5106514 call!355952))

(declare-fun lt!2102077 () Unit!149972)

(assert (=> b!5106514 (= lt!2102077 lt!2102059)))

(declare-fun lt!2102072 () Unit!149972)

(declare-fun call!355949 () Unit!149972)

(assert (=> b!5106514 (= lt!2102072 call!355949)))

(assert (=> b!5106514 (= input!5723 Nil!58926)))

(declare-fun lt!2102071 () Unit!149972)

(assert (=> b!5106514 (= lt!2102071 lt!2102072)))

(assert (=> b!5106514 false))

(declare-fun b!5106515 () Bool)

(declare-fun e!3184918 () tuple2!63566)

(assert (=> b!5106515 (= e!3184918 (tuple2!63567 Nil!58926 Nil!58926))))

(declare-fun b!5106516 () Bool)

(assert (=> b!5106516 (= e!3184918 (tuple2!63567 Nil!58926 input!5723))))

(declare-fun lt!2102070 () List!59050)

(declare-fun call!355947 () (Set Context!6948))

(declare-fun call!355953 () tuple2!63566)

(declare-fun call!355946 () List!59050)

(declare-fun bm!355941 () Bool)

(assert (=> bm!355941 (= call!355953 (findLongestMatchInnerZipper!164 call!355947 lt!2102070 (+ lt!2101906 1) call!355946 input!5723 (size!39396 input!5723)))))

(declare-fun b!5106517 () Bool)

(declare-fun c!877182 () Bool)

(declare-fun call!355951 () Bool)

(assert (=> b!5106517 (= c!877182 call!355951)))

(declare-fun lt!2102076 () Unit!149972)

(declare-fun lt!2102082 () Unit!149972)

(assert (=> b!5106517 (= lt!2102076 lt!2102082)))

(assert (=> b!5106517 (= input!5723 Nil!58926)))

(assert (=> b!5106517 (= lt!2102082 call!355949)))

(declare-fun lt!2102083 () Unit!149972)

(declare-fun lt!2102067 () Unit!149972)

(assert (=> b!5106517 (= lt!2102083 lt!2102067)))

(assert (=> b!5106517 call!355952))

(assert (=> b!5106517 (= lt!2102067 call!355950)))

(declare-fun e!3184923 () tuple2!63566)

(assert (=> b!5106517 (= e!3184923 e!3184918)))

(declare-fun bm!355942 () Bool)

(declare-fun call!355948 () C!28446)

(assert (=> bm!355942 (= call!355948 (head!10846 input!5723))))

(declare-fun bm!355943 () Bool)

(declare-fun derivationStepZipper!757 ((Set Context!6948) C!28446) (Set Context!6948))

(assert (=> bm!355943 (= call!355947 (derivationStepZipper!757 baseZ!39 call!355948))))

(declare-fun b!5106518 () Bool)

(declare-fun c!877180 () Bool)

(assert (=> b!5106518 (= c!877180 call!355951)))

(declare-fun lt!2102075 () Unit!149972)

(declare-fun lt!2102064 () Unit!149972)

(assert (=> b!5106518 (= lt!2102075 lt!2102064)))

(declare-fun lt!2102079 () C!28446)

(declare-fun lt!2102061 () List!59050)

(declare-fun ++!12935 (List!59050 List!59050) List!59050)

(assert (=> b!5106518 (= (++!12935 (++!12935 Nil!58926 (Cons!58926 lt!2102079 Nil!58926)) lt!2102061) input!5723)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1529 (List!59050 C!28446 List!59050 List!59050) Unit!149972)

(assert (=> b!5106518 (= lt!2102064 (lemmaMoveElementToOtherListKeepsConcatEq!1529 Nil!58926 lt!2102079 lt!2102061 input!5723))))

(assert (=> b!5106518 (= lt!2102061 (tail!10001 input!5723))))

(assert (=> b!5106518 (= lt!2102079 (head!10846 input!5723))))

(declare-fun lt!2102058 () Unit!149972)

(declare-fun lt!2102078 () Unit!149972)

(assert (=> b!5106518 (= lt!2102058 lt!2102078)))

(declare-fun getSuffix!3175 (List!59050 List!59050) List!59050)

(assert (=> b!5106518 (isPrefix!5495 (++!12935 Nil!58926 (Cons!58926 (head!10846 (getSuffix!3175 input!5723 Nil!58926)) Nil!58926)) input!5723)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!918 (List!59050 List!59050) Unit!149972)

(assert (=> b!5106518 (= lt!2102078 (lemmaAddHeadSuffixToPrefixStillPrefix!918 Nil!58926 input!5723))))

(assert (=> b!5106518 (= lt!2102070 (++!12935 Nil!58926 (Cons!58926 (head!10846 input!5723) Nil!58926)))))

(declare-fun lt!2102069 () Unit!149972)

(assert (=> b!5106518 (= lt!2102069 e!3184921)))

(declare-fun c!877179 () Bool)

(assert (=> b!5106518 (= c!877179 (= (size!39396 Nil!58926) (size!39396 input!5723)))))

(declare-fun lt!2102066 () Unit!149972)

(declare-fun lt!2102074 () Unit!149972)

(assert (=> b!5106518 (= lt!2102066 lt!2102074)))

(assert (=> b!5106518 (<= (size!39396 Nil!58926) (size!39396 input!5723))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!844 (List!59050 List!59050) Unit!149972)

(assert (=> b!5106518 (= lt!2102074 (lemmaIsPrefixThenSmallerEqSize!844 Nil!58926 input!5723))))

(declare-fun e!3184919 () tuple2!63566)

(assert (=> b!5106518 (= e!3184923 e!3184919)))

(declare-fun b!5106519 () Bool)

(declare-fun e!3184925 () tuple2!63566)

(declare-fun lt!2102080 () tuple2!63566)

(assert (=> b!5106519 (= e!3184925 lt!2102080)))

(declare-fun b!5106520 () Bool)

(assert (=> b!5106520 (= e!3184919 call!355953)))

(declare-fun b!5106521 () Bool)

(declare-fun e!3184920 () Bool)

(declare-fun lt!2102060 () tuple2!63566)

(assert (=> b!5106521 (= e!3184920 (>= (size!39396 (_1!35086 lt!2102060)) (size!39396 Nil!58926)))))

(declare-fun bm!355944 () Bool)

(declare-fun nullableZipper!969 ((Set Context!6948)) Bool)

(assert (=> bm!355944 (= call!355951 (nullableZipper!969 baseZ!39))))

(declare-fun d!1650747 () Bool)

(declare-fun e!3184922 () Bool)

(assert (=> d!1650747 e!3184922))

(declare-fun res!2173628 () Bool)

(assert (=> d!1650747 (=> (not res!2173628) (not e!3184922))))

(assert (=> d!1650747 (= res!2173628 (= (++!12935 (_1!35086 lt!2102060) (_2!35086 lt!2102060)) input!5723))))

(declare-fun e!3184924 () tuple2!63566)

(assert (=> d!1650747 (= lt!2102060 e!3184924)))

(declare-fun c!877184 () Bool)

(declare-fun lostCauseZipper!984 ((Set Context!6948)) Bool)

(assert (=> d!1650747 (= c!877184 (lostCauseZipper!984 baseZ!39))))

(declare-fun lt!2102062 () Unit!149972)

(declare-fun Unit!149975 () Unit!149972)

(assert (=> d!1650747 (= lt!2102062 Unit!149975)))

(assert (=> d!1650747 (= (getSuffix!3175 input!5723 Nil!58926) input!5723)))

(declare-fun lt!2102063 () Unit!149972)

(declare-fun lt!2102081 () Unit!149972)

(assert (=> d!1650747 (= lt!2102063 lt!2102081)))

(declare-fun lt!2102073 () List!59050)

(assert (=> d!1650747 (= input!5723 lt!2102073)))

(declare-fun lemmaSamePrefixThenSameSuffix!2591 (List!59050 List!59050 List!59050 List!59050 List!59050) Unit!149972)

(assert (=> d!1650747 (= lt!2102081 (lemmaSamePrefixThenSameSuffix!2591 Nil!58926 input!5723 Nil!58926 lt!2102073 input!5723))))

(assert (=> d!1650747 (= lt!2102073 (getSuffix!3175 input!5723 Nil!58926))))

(declare-fun lt!2102068 () Unit!149972)

(declare-fun lt!2102065 () Unit!149972)

(assert (=> d!1650747 (= lt!2102068 lt!2102065)))

(assert (=> d!1650747 (isPrefix!5495 Nil!58926 (++!12935 Nil!58926 input!5723))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3541 (List!59050 List!59050) Unit!149972)

(assert (=> d!1650747 (= lt!2102065 (lemmaConcatTwoListThenFirstIsPrefix!3541 Nil!58926 input!5723))))

(assert (=> d!1650747 (= (++!12935 Nil!58926 input!5723) input!5723)))

(assert (=> d!1650747 (= (findLongestMatchInnerZipper!164 baseZ!39 Nil!58926 lt!2101906 input!5723 input!5723 (size!39396 input!5723)) lt!2102060)))

(declare-fun bm!355945 () Bool)

(declare-fun lemmaIsPrefixRefl!3690 (List!59050 List!59050) Unit!149972)

(assert (=> bm!355945 (= call!355950 (lemmaIsPrefixRefl!3690 input!5723 input!5723))))

(declare-fun b!5106522 () Bool)

(assert (=> b!5106522 (= e!3184919 e!3184925)))

(assert (=> b!5106522 (= lt!2102080 call!355953)))

(declare-fun c!877183 () Bool)

(declare-fun isEmpty!31827 (List!59050) Bool)

(assert (=> b!5106522 (= c!877183 (isEmpty!31827 (_1!35086 lt!2102080)))))

(declare-fun bm!355946 () Bool)

(assert (=> bm!355946 (= call!355952 (isPrefix!5495 input!5723 input!5723))))

(declare-fun bm!355947 () Bool)

(assert (=> bm!355947 (= call!355946 (tail!10001 input!5723))))

(declare-fun b!5106523 () Bool)

(assert (=> b!5106523 (= e!3184924 e!3184923)))

(declare-fun c!877181 () Bool)

(assert (=> b!5106523 (= c!877181 (= lt!2101906 (size!39396 input!5723)))))

(declare-fun b!5106524 () Bool)

(assert (=> b!5106524 (= e!3184922 e!3184920)))

(declare-fun res!2173627 () Bool)

(assert (=> b!5106524 (=> res!2173627 e!3184920)))

(assert (=> b!5106524 (= res!2173627 (isEmpty!31827 (_1!35086 lt!2102060)))))

(declare-fun b!5106525 () Bool)

(assert (=> b!5106525 (= e!3184925 (tuple2!63567 Nil!58926 input!5723))))

(declare-fun b!5106526 () Bool)

(assert (=> b!5106526 (= e!3184924 (tuple2!63567 Nil!58926 input!5723))))

(declare-fun b!5106527 () Bool)

(declare-fun Unit!149976 () Unit!149972)

(assert (=> b!5106527 (= e!3184921 Unit!149976)))

(declare-fun bm!355948 () Bool)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1320 (List!59050 List!59050 List!59050) Unit!149972)

(assert (=> bm!355948 (= call!355949 (lemmaIsPrefixSameLengthThenSameList!1320 input!5723 Nil!58926 input!5723))))

(assert (= (and d!1650747 c!877184) b!5106526))

(assert (= (and d!1650747 (not c!877184)) b!5106523))

(assert (= (and b!5106523 c!877181) b!5106517))

(assert (= (and b!5106523 (not c!877181)) b!5106518))

(assert (= (and b!5106517 c!877182) b!5106515))

(assert (= (and b!5106517 (not c!877182)) b!5106516))

(assert (= (and b!5106518 c!877179) b!5106514))

(assert (= (and b!5106518 (not c!877179)) b!5106527))

(assert (= (and b!5106518 c!877180) b!5106522))

(assert (= (and b!5106518 (not c!877180)) b!5106520))

(assert (= (and b!5106522 c!877183) b!5106525))

(assert (= (and b!5106522 (not c!877183)) b!5106519))

(assert (= (or b!5106522 b!5106520) bm!355942))

(assert (= (or b!5106522 b!5106520) bm!355947))

(assert (= (or b!5106522 b!5106520) bm!355943))

(assert (= (or b!5106522 b!5106520) bm!355941))

(assert (= (or b!5106517 b!5106518) bm!355944))

(assert (= (or b!5106517 b!5106514) bm!355945))

(assert (= (or b!5106517 b!5106514) bm!355946))

(assert (= (or b!5106517 b!5106514) bm!355948))

(assert (= (and d!1650747 res!2173628) b!5106524))

(assert (= (and b!5106524 (not res!2173627)) b!5106521))

(assert (=> bm!355941 m!6163642))

(declare-fun m!6163766 () Bool)

(assert (=> bm!355941 m!6163766))

(assert (=> bm!355947 m!6163680))

(declare-fun m!6163768 () Bool)

(assert (=> bm!355948 m!6163768))

(declare-fun m!6163770 () Bool)

(assert (=> b!5106518 m!6163770))

(assert (=> b!5106518 m!6163680))

(declare-fun m!6163772 () Bool)

(assert (=> b!5106518 m!6163772))

(declare-fun m!6163774 () Bool)

(assert (=> b!5106518 m!6163774))

(declare-fun m!6163776 () Bool)

(assert (=> b!5106518 m!6163776))

(declare-fun m!6163778 () Bool)

(assert (=> b!5106518 m!6163778))

(declare-fun m!6163780 () Bool)

(assert (=> b!5106518 m!6163780))

(declare-fun m!6163782 () Bool)

(assert (=> b!5106518 m!6163782))

(declare-fun m!6163784 () Bool)

(assert (=> b!5106518 m!6163784))

(assert (=> b!5106518 m!6163642))

(assert (=> b!5106518 m!6163782))

(assert (=> b!5106518 m!6163686))

(assert (=> b!5106518 m!6163780))

(declare-fun m!6163786 () Bool)

(assert (=> b!5106518 m!6163786))

(assert (=> b!5106518 m!6163646))

(assert (=> b!5106518 m!6163772))

(declare-fun m!6163788 () Bool)

(assert (=> b!5106518 m!6163788))

(declare-fun m!6163790 () Bool)

(assert (=> b!5106522 m!6163790))

(declare-fun m!6163792 () Bool)

(assert (=> bm!355946 m!6163792))

(declare-fun m!6163794 () Bool)

(assert (=> bm!355945 m!6163794))

(assert (=> bm!355942 m!6163686))

(declare-fun m!6163796 () Bool)

(assert (=> bm!355944 m!6163796))

(declare-fun m!6163798 () Bool)

(assert (=> bm!355943 m!6163798))

(declare-fun m!6163800 () Bool)

(assert (=> b!5106521 m!6163800))

(assert (=> b!5106521 m!6163646))

(declare-fun m!6163802 () Bool)

(assert (=> d!1650747 m!6163802))

(declare-fun m!6163804 () Bool)

(assert (=> d!1650747 m!6163804))

(declare-fun m!6163806 () Bool)

(assert (=> d!1650747 m!6163806))

(declare-fun m!6163808 () Bool)

(assert (=> d!1650747 m!6163808))

(assert (=> d!1650747 m!6163772))

(assert (=> d!1650747 m!6163806))

(declare-fun m!6163810 () Bool)

(assert (=> d!1650747 m!6163810))

(declare-fun m!6163812 () Bool)

(assert (=> d!1650747 m!6163812))

(declare-fun m!6163814 () Bool)

(assert (=> b!5106524 m!6163814))

(assert (=> b!5106361 d!1650747))

(declare-fun d!1650749 () Bool)

(declare-fun lt!2102086 () Int)

(assert (=> d!1650749 (>= lt!2102086 0)))

(declare-fun e!3184928 () Int)

(assert (=> d!1650749 (= lt!2102086 e!3184928)))

(declare-fun c!877187 () Bool)

(assert (=> d!1650749 (= c!877187 (is-Nil!58926 input!5723))))

(assert (=> d!1650749 (= (size!39396 input!5723) lt!2102086)))

(declare-fun b!5106532 () Bool)

(assert (=> b!5106532 (= e!3184928 0)))

(declare-fun b!5106533 () Bool)

(assert (=> b!5106533 (= e!3184928 (+ 1 (size!39396 (t!372051 input!5723))))))

(assert (= (and d!1650749 c!877187) b!5106532))

(assert (= (and d!1650749 (not c!877187)) b!5106533))

(declare-fun m!6163816 () Bool)

(assert (=> b!5106533 m!6163816))

(assert (=> b!5106361 d!1650749))

(declare-fun d!1650751 () Bool)

(declare-fun lt!2102087 () Int)

(assert (=> d!1650751 (>= lt!2102087 0)))

(declare-fun e!3184929 () Int)

(assert (=> d!1650751 (= lt!2102087 e!3184929)))

(declare-fun c!877188 () Bool)

(assert (=> d!1650751 (= c!877188 (is-Nil!58926 Nil!58926))))

(assert (=> d!1650751 (= (size!39396 Nil!58926) lt!2102087)))

(declare-fun b!5106534 () Bool)

(assert (=> b!5106534 (= e!3184929 0)))

(declare-fun b!5106535 () Bool)

(assert (=> b!5106535 (= e!3184929 (+ 1 (size!39396 (t!372051 Nil!58926))))))

(assert (= (and d!1650751 c!877188) b!5106534))

(assert (= (and d!1650751 (not c!877188)) b!5106535))

(declare-fun m!6163818 () Bool)

(assert (=> b!5106535 m!6163818))

(assert (=> b!5106361 d!1650751))

(declare-fun d!1650753 () Bool)

(declare-fun c!877191 () Bool)

(assert (=> d!1650753 (= c!877191 (isEmpty!31827 bigger!41))))

(declare-fun e!3184932 () Bool)

(assert (=> d!1650753 (= (matchZipper!758 baseZ!39 bigger!41) e!3184932)))

(declare-fun b!5106540 () Bool)

(assert (=> b!5106540 (= e!3184932 (nullableZipper!969 baseZ!39))))

(declare-fun b!5106541 () Bool)

(assert (=> b!5106541 (= e!3184932 (matchZipper!758 (derivationStepZipper!757 baseZ!39 (head!10846 bigger!41)) (tail!10001 bigger!41)))))

(assert (= (and d!1650753 c!877191) b!5106540))

(assert (= (and d!1650753 (not c!877191)) b!5106541))

(declare-fun m!6163820 () Bool)

(assert (=> d!1650753 m!6163820))

(assert (=> b!5106540 m!6163796))

(assert (=> b!5106541 m!6163684))

(assert (=> b!5106541 m!6163684))

(declare-fun m!6163822 () Bool)

(assert (=> b!5106541 m!6163822))

(assert (=> b!5106541 m!6163678))

(assert (=> b!5106541 m!6163822))

(assert (=> b!5106541 m!6163678))

(declare-fun m!6163824 () Bool)

(assert (=> b!5106541 m!6163824))

(assert (=> b!5106365 d!1650753))

(declare-fun b!5106544 () Bool)

(declare-fun e!3184933 () Bool)

(assert (=> b!5106544 (= e!3184933 (isPrefix!5495 (tail!10001 returnP!41) (tail!10001 input!5723)))))

(declare-fun b!5106543 () Bool)

(declare-fun res!2173629 () Bool)

(assert (=> b!5106543 (=> (not res!2173629) (not e!3184933))))

(assert (=> b!5106543 (= res!2173629 (= (head!10846 returnP!41) (head!10846 input!5723)))))

(declare-fun b!5106545 () Bool)

(declare-fun e!3184934 () Bool)

(assert (=> b!5106545 (= e!3184934 (>= (size!39396 input!5723) (size!39396 returnP!41)))))

(declare-fun b!5106542 () Bool)

(declare-fun e!3184935 () Bool)

(assert (=> b!5106542 (= e!3184935 e!3184933)))

(declare-fun res!2173631 () Bool)

(assert (=> b!5106542 (=> (not res!2173631) (not e!3184933))))

(assert (=> b!5106542 (= res!2173631 (not (is-Nil!58926 input!5723)))))

(declare-fun d!1650755 () Bool)

(assert (=> d!1650755 e!3184934))

(declare-fun res!2173632 () Bool)

(assert (=> d!1650755 (=> res!2173632 e!3184934)))

(declare-fun lt!2102088 () Bool)

(assert (=> d!1650755 (= res!2173632 (not lt!2102088))))

(assert (=> d!1650755 (= lt!2102088 e!3184935)))

(declare-fun res!2173630 () Bool)

(assert (=> d!1650755 (=> res!2173630 e!3184935)))

(assert (=> d!1650755 (= res!2173630 (is-Nil!58926 returnP!41))))

(assert (=> d!1650755 (= (isPrefix!5495 returnP!41 input!5723) lt!2102088)))

(assert (= (and d!1650755 (not res!2173630)) b!5106542))

(assert (= (and b!5106542 res!2173631) b!5106543))

(assert (= (and b!5106543 res!2173629) b!5106544))

(assert (= (and d!1650755 (not res!2173632)) b!5106545))

(declare-fun m!6163826 () Bool)

(assert (=> b!5106544 m!6163826))

(assert (=> b!5106544 m!6163680))

(assert (=> b!5106544 m!6163826))

(assert (=> b!5106544 m!6163680))

(declare-fun m!6163828 () Bool)

(assert (=> b!5106544 m!6163828))

(declare-fun m!6163830 () Bool)

(assert (=> b!5106543 m!6163830))

(assert (=> b!5106543 m!6163686))

(assert (=> b!5106545 m!6163642))

(assert (=> b!5106545 m!6163652))

(assert (=> start!538434 d!1650755))

(declare-fun d!1650757 () Bool)

(declare-fun lt!2102089 () Int)

(assert (=> d!1650757 (>= lt!2102089 0)))

(declare-fun e!3184936 () Int)

(assert (=> d!1650757 (= lt!2102089 e!3184936)))

(declare-fun c!877192 () Bool)

(assert (=> d!1650757 (= c!877192 (is-Nil!58926 returnP!41))))

(assert (=> d!1650757 (= (size!39396 returnP!41) lt!2102089)))

(declare-fun b!5106546 () Bool)

(assert (=> b!5106546 (= e!3184936 0)))

(declare-fun b!5106547 () Bool)

(assert (=> b!5106547 (= e!3184936 (+ 1 (size!39396 (t!372051 returnP!41))))))

(assert (= (and d!1650757 c!877192) b!5106546))

(assert (= (and d!1650757 (not c!877192)) b!5106547))

(declare-fun m!6163832 () Bool)

(assert (=> b!5106547 m!6163832))

(assert (=> b!5106366 d!1650757))

(declare-fun d!1650759 () Bool)

(declare-fun lt!2102090 () Int)

(assert (=> d!1650759 (>= lt!2102090 0)))

(declare-fun e!3184937 () Int)

(assert (=> d!1650759 (= lt!2102090 e!3184937)))

(declare-fun c!877193 () Bool)

(assert (=> d!1650759 (= c!877193 (is-Nil!58926 bigger!41))))

(assert (=> d!1650759 (= (size!39396 bigger!41) lt!2102090)))

(declare-fun b!5106548 () Bool)

(assert (=> b!5106548 (= e!3184937 0)))

(declare-fun b!5106549 () Bool)

(assert (=> b!5106549 (= e!3184937 (+ 1 (size!39396 (t!372051 bigger!41))))))

(assert (= (and d!1650759 c!877193) b!5106548))

(assert (= (and d!1650759 (not c!877193)) b!5106549))

(declare-fun m!6163834 () Bool)

(assert (=> b!5106549 m!6163834))

(assert (=> b!5106366 d!1650759))

(declare-fun b!5106552 () Bool)

(declare-fun e!3184938 () Bool)

(assert (=> b!5106552 (= e!3184938 (isPrefix!5495 (tail!10001 Nil!58926) (tail!10001 input!5723)))))

(declare-fun b!5106551 () Bool)

(declare-fun res!2173633 () Bool)

(assert (=> b!5106551 (=> (not res!2173633) (not e!3184938))))

(assert (=> b!5106551 (= res!2173633 (= (head!10846 Nil!58926) (head!10846 input!5723)))))

(declare-fun b!5106553 () Bool)

(declare-fun e!3184939 () Bool)

(assert (=> b!5106553 (= e!3184939 (>= (size!39396 input!5723) (size!39396 Nil!58926)))))

(declare-fun b!5106550 () Bool)

(declare-fun e!3184940 () Bool)

(assert (=> b!5106550 (= e!3184940 e!3184938)))

(declare-fun res!2173635 () Bool)

(assert (=> b!5106550 (=> (not res!2173635) (not e!3184938))))

(assert (=> b!5106550 (= res!2173635 (not (is-Nil!58926 input!5723)))))

(declare-fun d!1650761 () Bool)

(assert (=> d!1650761 e!3184939))

(declare-fun res!2173636 () Bool)

(assert (=> d!1650761 (=> res!2173636 e!3184939)))

(declare-fun lt!2102091 () Bool)

(assert (=> d!1650761 (= res!2173636 (not lt!2102091))))

(assert (=> d!1650761 (= lt!2102091 e!3184940)))

(declare-fun res!2173634 () Bool)

(assert (=> d!1650761 (=> res!2173634 e!3184940)))

(assert (=> d!1650761 (= res!2173634 (is-Nil!58926 Nil!58926))))

(assert (=> d!1650761 (= (isPrefix!5495 Nil!58926 input!5723) lt!2102091)))

(assert (= (and d!1650761 (not res!2173634)) b!5106550))

(assert (= (and b!5106550 res!2173635) b!5106551))

(assert (= (and b!5106551 res!2173633) b!5106552))

(assert (= (and d!1650761 (not res!2173636)) b!5106553))

(declare-fun m!6163836 () Bool)

(assert (=> b!5106552 m!6163836))

(assert (=> b!5106552 m!6163680))

(assert (=> b!5106552 m!6163836))

(assert (=> b!5106552 m!6163680))

(declare-fun m!6163838 () Bool)

(assert (=> b!5106552 m!6163838))

(declare-fun m!6163840 () Bool)

(assert (=> b!5106551 m!6163840))

(assert (=> b!5106551 m!6163686))

(assert (=> b!5106553 m!6163642))

(assert (=> b!5106553 m!6163646))

(assert (=> b!5106358 d!1650761))

(declare-fun b!5106558 () Bool)

(declare-fun e!3184943 () Bool)

(declare-fun tp!1424480 () Bool)

(declare-fun tp!1424481 () Bool)

(assert (=> b!5106558 (= e!3184943 (and tp!1424480 tp!1424481))))

(assert (=> b!5106363 (= tp!1424460 e!3184943)))

(assert (= (and b!5106363 (is-Cons!58927 (exprs!3974 setElem!29389))) b!5106558))

(declare-fun b!5106563 () Bool)

(declare-fun e!3184946 () Bool)

(declare-fun tp!1424484 () Bool)

(assert (=> b!5106563 (= e!3184946 (and tp_is_empty!37453 tp!1424484))))

(assert (=> b!5106359 (= tp!1424459 e!3184946)))

(assert (= (and b!5106359 (is-Cons!58926 (t!372051 returnP!41))) b!5106563))

(declare-fun b!5106564 () Bool)

(declare-fun e!3184947 () Bool)

(declare-fun tp!1424485 () Bool)

(assert (=> b!5106564 (= e!3184947 (and tp_is_empty!37453 tp!1424485))))

(assert (=> b!5106368 (= tp!1424458 e!3184947)))

(assert (= (and b!5106368 (is-Cons!58926 (t!372051 bigger!41))) b!5106564))

(declare-fun condSetEmpty!29395 () Bool)

(assert (=> setNonEmpty!29389 (= condSetEmpty!29395 (= setRest!29389 (as set.empty (Set Context!6948))))))

(declare-fun setRes!29395 () Bool)

(assert (=> setNonEmpty!29389 (= tp!1424456 setRes!29395)))

(declare-fun setIsEmpty!29395 () Bool)

(assert (=> setIsEmpty!29395 setRes!29395))

(declare-fun setNonEmpty!29395 () Bool)

(declare-fun e!3184950 () Bool)

(declare-fun tp!1424491 () Bool)

(declare-fun setElem!29395 () Context!6948)

(assert (=> setNonEmpty!29395 (= setRes!29395 (and tp!1424491 (inv!78407 setElem!29395) e!3184950))))

(declare-fun setRest!29395 () (Set Context!6948))

(assert (=> setNonEmpty!29395 (= setRest!29389 (set.union (set.insert setElem!29395 (as set.empty (Set Context!6948))) setRest!29395))))

(declare-fun b!5106569 () Bool)

(declare-fun tp!1424490 () Bool)

(assert (=> b!5106569 (= e!3184950 tp!1424490)))

(assert (= (and setNonEmpty!29389 condSetEmpty!29395) setIsEmpty!29395))

(assert (= (and setNonEmpty!29389 (not condSetEmpty!29395)) setNonEmpty!29395))

(assert (= setNonEmpty!29395 b!5106569))

(declare-fun m!6163842 () Bool)

(assert (=> setNonEmpty!29395 m!6163842))

(declare-fun b!5106570 () Bool)

(declare-fun e!3184951 () Bool)

(declare-fun tp!1424492 () Bool)

(assert (=> b!5106570 (= e!3184951 (and tp_is_empty!37453 tp!1424492))))

(assert (=> b!5106367 (= tp!1424457 e!3184951)))

(assert (= (and b!5106367 (is-Cons!58926 (t!372051 input!5723))) b!5106570))

(push 1)

(assert (not bm!355943))

(assert (not bm!355946))

(assert (not b!5106558))

(assert (not d!1650733))

(assert (not b!5106540))

(assert (not d!1650753))

(assert (not b!5106535))

(assert (not d!1650747))

(assert (not b!5106521))

(assert (not b!5106533))

(assert (not b!5106522))

(assert (not bm!355944))

(assert (not bm!355947))

(assert (not b!5106552))

(assert (not bm!355948))

(assert (not b!5106544))

(assert (not b!5106412))

(assert (not bm!355942))

(assert (not b!5106411))

(assert tp_is_empty!37453)

(assert (not b!5106524))

(assert (not b!5106547))

(assert (not bm!355941))

(assert (not b!5106553))

(assert (not b!5106569))

(assert (not b!5106545))

(assert (not b!5106563))

(assert (not b!5106541))

(assert (not b!5106551))

(assert (not b!5106564))

(assert (not b!5106570))

(assert (not b!5106543))

(assert (not b!5106413))

(assert (not bm!355945))

(assert (not b!5106518))

(assert (not b!5106549))

(assert (not setNonEmpty!29395))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

