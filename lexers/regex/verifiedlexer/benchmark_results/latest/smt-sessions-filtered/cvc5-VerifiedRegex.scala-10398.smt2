; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!538406 () Bool)

(assert start!538406)

(declare-fun b!5106042 () Bool)

(declare-fun res!2173438 () Bool)

(declare-fun e!3184631 () Bool)

(assert (=> b!5106042 (=> (not res!2173438) (not e!3184631))))

(declare-fun lt!2101695 () Int)

(declare-fun lt!2101696 () Int)

(assert (=> b!5106042 (= res!2173438 (not (= lt!2101695 lt!2101696)))))

(declare-fun b!5106043 () Bool)

(declare-fun res!2173436 () Bool)

(declare-fun e!3184633 () Bool)

(assert (=> b!5106043 (=> (not res!2173436) (not e!3184633))))

(declare-datatypes ((C!28438 0))(
  ( (C!28439 (val!23871 Int)) )
))
(declare-datatypes ((List!59042 0))(
  ( (Nil!58918) (Cons!58918 (h!65366 C!28438) (t!372043 List!59042)) )
))
(declare-fun bigger!41 () List!59042)

(declare-fun input!5723 () List!59042)

(declare-fun isPrefix!5491 (List!59042 List!59042) Bool)

(assert (=> b!5106043 (= res!2173436 (isPrefix!5491 bigger!41 input!5723))))

(declare-fun b!5106045 () Bool)

(assert (=> b!5106045 (= e!3184631 (not (isPrefix!5491 Nil!58918 input!5723)))))

(declare-fun b!5106046 () Bool)

(assert (=> b!5106046 (= e!3184633 e!3184631)))

(declare-fun res!2173439 () Bool)

(assert (=> b!5106046 (=> (not res!2173439) (not e!3184631))))

(assert (=> b!5106046 (= res!2173439 (>= lt!2101695 lt!2101696))))

(declare-fun returnP!41 () List!59042)

(declare-fun size!39392 (List!59042) Int)

(assert (=> b!5106046 (= lt!2101696 (size!39392 returnP!41))))

(assert (=> b!5106046 (= lt!2101695 (size!39392 bigger!41))))

(declare-fun b!5106047 () Bool)

(declare-fun res!2173440 () Bool)

(assert (=> b!5106047 (=> (not res!2173440) (not e!3184631))))

(declare-datatypes ((Regex!14086 0))(
  ( (ElementMatch!14086 (c!877082 C!28438)) (Concat!22931 (regOne!28684 Regex!14086) (regTwo!28684 Regex!14086)) (EmptyExpr!14086) (Star!14086 (reg!14415 Regex!14086)) (EmptyLang!14086) (Union!14086 (regOne!28685 Regex!14086) (regTwo!28685 Regex!14086)) )
))
(declare-datatypes ((List!59043 0))(
  ( (Nil!58919) (Cons!58919 (h!65367 Regex!14086) (t!372044 List!59043)) )
))
(declare-datatypes ((Context!6940 0))(
  ( (Context!6941 (exprs!3970 List!59043)) )
))
(declare-fun baseZ!39 () (Set Context!6940))

(declare-fun matchZipper!754 ((Set Context!6940) List!59042) Bool)

(assert (=> b!5106047 (= res!2173440 (matchZipper!754 baseZ!39 bigger!41))))

(declare-fun setIsEmpty!29371 () Bool)

(declare-fun setRes!29371 () Bool)

(assert (=> setIsEmpty!29371 setRes!29371))

(declare-fun b!5106048 () Bool)

(declare-fun e!3184634 () Bool)

(declare-fun tp!1424362 () Bool)

(assert (=> b!5106048 (= e!3184634 tp!1424362)))

(declare-fun setElem!29371 () Context!6940)

(declare-fun setNonEmpty!29371 () Bool)

(declare-fun tp!1424363 () Bool)

(declare-fun inv!78397 (Context!6940) Bool)

(assert (=> setNonEmpty!29371 (= setRes!29371 (and tp!1424363 (inv!78397 setElem!29371) e!3184634))))

(declare-fun setRest!29371 () (Set Context!6940))

(assert (=> setNonEmpty!29371 (= baseZ!39 (set.union (set.insert setElem!29371 (as set.empty (Set Context!6940))) setRest!29371))))

(declare-fun b!5106049 () Bool)

(declare-fun e!3184630 () Bool)

(declare-fun tp_is_empty!37445 () Bool)

(declare-fun tp!1424366 () Bool)

(assert (=> b!5106049 (= e!3184630 (and tp_is_empty!37445 tp!1424366))))

(declare-fun res!2173435 () Bool)

(assert (=> start!538406 (=> (not res!2173435) (not e!3184633))))

(assert (=> start!538406 (= res!2173435 (isPrefix!5491 returnP!41 input!5723))))

(assert (=> start!538406 e!3184633))

(assert (=> start!538406 e!3184630))

(declare-fun e!3184635 () Bool)

(assert (=> start!538406 e!3184635))

(declare-fun e!3184632 () Bool)

(assert (=> start!538406 e!3184632))

(declare-fun condSetEmpty!29371 () Bool)

(assert (=> start!538406 (= condSetEmpty!29371 (= baseZ!39 (as set.empty (Set Context!6940))))))

(assert (=> start!538406 setRes!29371))

(declare-fun b!5106044 () Bool)

(declare-fun tp!1424365 () Bool)

(assert (=> b!5106044 (= e!3184635 (and tp_is_empty!37445 tp!1424365))))

(declare-fun b!5106050 () Bool)

(declare-fun tp!1424364 () Bool)

(assert (=> b!5106050 (= e!3184632 (and tp_is_empty!37445 tp!1424364))))

(declare-fun b!5106051 () Bool)

(declare-fun res!2173437 () Bool)

(assert (=> b!5106051 (=> (not res!2173437) (not e!3184631))))

(declare-datatypes ((tuple2!63558 0))(
  ( (tuple2!63559 (_1!35082 List!59042) (_2!35082 List!59042)) )
))
(declare-fun findLongestMatchInnerZipper!160 ((Set Context!6940) List!59042 Int List!59042 List!59042 Int) tuple2!63558)

(assert (=> b!5106051 (= res!2173437 (= (_1!35082 (findLongestMatchInnerZipper!160 baseZ!39 Nil!58918 (size!39392 Nil!58918) input!5723 input!5723 (size!39392 input!5723))) returnP!41))))

(assert (= (and start!538406 res!2173435) b!5106043))

(assert (= (and b!5106043 res!2173436) b!5106046))

(assert (= (and b!5106046 res!2173439) b!5106051))

(assert (= (and b!5106051 res!2173437) b!5106042))

(assert (= (and b!5106042 res!2173438) b!5106047))

(assert (= (and b!5106047 res!2173440) b!5106045))

(assert (= (and start!538406 (is-Cons!58918 returnP!41)) b!5106049))

(assert (= (and start!538406 (is-Cons!58918 input!5723)) b!5106044))

(assert (= (and start!538406 (is-Cons!58918 bigger!41)) b!5106050))

(assert (= (and start!538406 condSetEmpty!29371) setIsEmpty!29371))

(assert (= (and start!538406 (not condSetEmpty!29371)) setNonEmpty!29371))

(assert (= setNonEmpty!29371 b!5106048))

(declare-fun m!6163378 () Bool)

(assert (=> b!5106045 m!6163378))

(declare-fun m!6163380 () Bool)

(assert (=> b!5106051 m!6163380))

(declare-fun m!6163382 () Bool)

(assert (=> b!5106051 m!6163382))

(assert (=> b!5106051 m!6163380))

(assert (=> b!5106051 m!6163382))

(declare-fun m!6163384 () Bool)

(assert (=> b!5106051 m!6163384))

(declare-fun m!6163386 () Bool)

(assert (=> start!538406 m!6163386))

(declare-fun m!6163388 () Bool)

(assert (=> b!5106047 m!6163388))

(declare-fun m!6163390 () Bool)

(assert (=> b!5106046 m!6163390))

(declare-fun m!6163392 () Bool)

(assert (=> b!5106046 m!6163392))

(declare-fun m!6163394 () Bool)

(assert (=> setNonEmpty!29371 m!6163394))

(declare-fun m!6163396 () Bool)

(assert (=> b!5106043 m!6163396))

(push 1)

(assert (not b!5106043))

(assert (not setNonEmpty!29371))

(assert (not b!5106044))

(assert (not b!5106051))

(assert (not start!538406))

(assert (not b!5106048))

(assert tp_is_empty!37445)

(assert (not b!5106050))

(assert (not b!5106046))

(assert (not b!5106045))

(assert (not b!5106047))

(assert (not b!5106049))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5106093 () Bool)

(declare-fun e!3184662 () Bool)

(assert (=> b!5106093 (= e!3184662 (>= (size!39392 input!5723) (size!39392 bigger!41)))))

(declare-fun d!1650689 () Bool)

(assert (=> d!1650689 e!3184662))

(declare-fun res!2173469 () Bool)

(assert (=> d!1650689 (=> res!2173469 e!3184662)))

(declare-fun lt!2101705 () Bool)

(assert (=> d!1650689 (= res!2173469 (not lt!2101705))))

(declare-fun e!3184661 () Bool)

(assert (=> d!1650689 (= lt!2101705 e!3184661)))

(declare-fun res!2173470 () Bool)

(assert (=> d!1650689 (=> res!2173470 e!3184661)))

(assert (=> d!1650689 (= res!2173470 (is-Nil!58918 bigger!41))))

(assert (=> d!1650689 (= (isPrefix!5491 bigger!41 input!5723) lt!2101705)))

(declare-fun b!5106092 () Bool)

(declare-fun e!3184660 () Bool)

(declare-fun tail!9999 (List!59042) List!59042)

(assert (=> b!5106092 (= e!3184660 (isPrefix!5491 (tail!9999 bigger!41) (tail!9999 input!5723)))))

(declare-fun b!5106090 () Bool)

(assert (=> b!5106090 (= e!3184661 e!3184660)))

(declare-fun res!2173468 () Bool)

(assert (=> b!5106090 (=> (not res!2173468) (not e!3184660))))

(assert (=> b!5106090 (= res!2173468 (not (is-Nil!58918 input!5723)))))

(declare-fun b!5106091 () Bool)

(declare-fun res!2173467 () Bool)

(assert (=> b!5106091 (=> (not res!2173467) (not e!3184660))))

(declare-fun head!10844 (List!59042) C!28438)

(assert (=> b!5106091 (= res!2173467 (= (head!10844 bigger!41) (head!10844 input!5723)))))

(assert (= (and d!1650689 (not res!2173470)) b!5106090))

(assert (= (and b!5106090 res!2173468) b!5106091))

(assert (= (and b!5106091 res!2173467) b!5106092))

(assert (= (and d!1650689 (not res!2173469)) b!5106093))

(assert (=> b!5106093 m!6163382))

(assert (=> b!5106093 m!6163392))

(declare-fun m!6163418 () Bool)

(assert (=> b!5106092 m!6163418))

(declare-fun m!6163420 () Bool)

(assert (=> b!5106092 m!6163420))

(assert (=> b!5106092 m!6163418))

(assert (=> b!5106092 m!6163420))

(declare-fun m!6163422 () Bool)

(assert (=> b!5106092 m!6163422))

(declare-fun m!6163424 () Bool)

(assert (=> b!5106091 m!6163424))

(declare-fun m!6163426 () Bool)

(assert (=> b!5106091 m!6163426))

(assert (=> b!5106043 d!1650689))

(declare-fun b!5106097 () Bool)

(declare-fun e!3184665 () Bool)

(assert (=> b!5106097 (= e!3184665 (>= (size!39392 input!5723) (size!39392 Nil!58918)))))

(declare-fun d!1650691 () Bool)

(assert (=> d!1650691 e!3184665))

(declare-fun res!2173473 () Bool)

(assert (=> d!1650691 (=> res!2173473 e!3184665)))

(declare-fun lt!2101706 () Bool)

(assert (=> d!1650691 (= res!2173473 (not lt!2101706))))

(declare-fun e!3184664 () Bool)

(assert (=> d!1650691 (= lt!2101706 e!3184664)))

(declare-fun res!2173474 () Bool)

(assert (=> d!1650691 (=> res!2173474 e!3184664)))

(assert (=> d!1650691 (= res!2173474 (is-Nil!58918 Nil!58918))))

(assert (=> d!1650691 (= (isPrefix!5491 Nil!58918 input!5723) lt!2101706)))

(declare-fun b!5106096 () Bool)

(declare-fun e!3184663 () Bool)

(assert (=> b!5106096 (= e!3184663 (isPrefix!5491 (tail!9999 Nil!58918) (tail!9999 input!5723)))))

(declare-fun b!5106094 () Bool)

(assert (=> b!5106094 (= e!3184664 e!3184663)))

(declare-fun res!2173472 () Bool)

(assert (=> b!5106094 (=> (not res!2173472) (not e!3184663))))

(assert (=> b!5106094 (= res!2173472 (not (is-Nil!58918 input!5723)))))

(declare-fun b!5106095 () Bool)

(declare-fun res!2173471 () Bool)

(assert (=> b!5106095 (=> (not res!2173471) (not e!3184663))))

(assert (=> b!5106095 (= res!2173471 (= (head!10844 Nil!58918) (head!10844 input!5723)))))

(assert (= (and d!1650691 (not res!2173474)) b!5106094))

(assert (= (and b!5106094 res!2173472) b!5106095))

(assert (= (and b!5106095 res!2173471) b!5106096))

(assert (= (and d!1650691 (not res!2173473)) b!5106097))

(assert (=> b!5106097 m!6163382))

(assert (=> b!5106097 m!6163380))

(declare-fun m!6163428 () Bool)

(assert (=> b!5106096 m!6163428))

(assert (=> b!5106096 m!6163420))

(assert (=> b!5106096 m!6163428))

(assert (=> b!5106096 m!6163420))

(declare-fun m!6163430 () Bool)

(assert (=> b!5106096 m!6163430))

(declare-fun m!6163432 () Bool)

(assert (=> b!5106095 m!6163432))

(assert (=> b!5106095 m!6163426))

(assert (=> b!5106045 d!1650691))

(declare-fun d!1650693 () Bool)

(declare-fun lambda!249987 () Int)

(declare-fun forall!13496 (List!59043 Int) Bool)

(assert (=> d!1650693 (= (inv!78397 setElem!29371) (forall!13496 (exprs!3970 setElem!29371) lambda!249987))))

(declare-fun bs!1191644 () Bool)

(assert (= bs!1191644 d!1650693))

(declare-fun m!6163508 () Bool)

(assert (=> bs!1191644 m!6163508))

(assert (=> setNonEmpty!29371 d!1650693))

(declare-fun d!1650705 () Bool)

(declare-fun lt!2101794 () Int)

(assert (=> d!1650705 (>= lt!2101794 0)))

(declare-fun e!3184708 () Int)

(assert (=> d!1650705 (= lt!2101794 e!3184708)))

(declare-fun c!877111 () Bool)

(assert (=> d!1650705 (= c!877111 (is-Nil!58918 returnP!41))))

(assert (=> d!1650705 (= (size!39392 returnP!41) lt!2101794)))

(declare-fun b!5106170 () Bool)

(assert (=> b!5106170 (= e!3184708 0)))

(declare-fun b!5106171 () Bool)

(assert (=> b!5106171 (= e!3184708 (+ 1 (size!39392 (t!372043 returnP!41))))))

(assert (= (and d!1650705 c!877111) b!5106170))

(assert (= (and d!1650705 (not c!877111)) b!5106171))

(declare-fun m!6163510 () Bool)

(assert (=> b!5106171 m!6163510))

(assert (=> b!5106046 d!1650705))

(declare-fun d!1650707 () Bool)

(declare-fun lt!2101795 () Int)

(assert (=> d!1650707 (>= lt!2101795 0)))

(declare-fun e!3184709 () Int)

(assert (=> d!1650707 (= lt!2101795 e!3184709)))

(declare-fun c!877112 () Bool)

(assert (=> d!1650707 (= c!877112 (is-Nil!58918 bigger!41))))

(assert (=> d!1650707 (= (size!39392 bigger!41) lt!2101795)))

(declare-fun b!5106172 () Bool)

(assert (=> b!5106172 (= e!3184709 0)))

(declare-fun b!5106173 () Bool)

(assert (=> b!5106173 (= e!3184709 (+ 1 (size!39392 (t!372043 bigger!41))))))

(assert (= (and d!1650707 c!877112) b!5106172))

(assert (= (and d!1650707 (not c!877112)) b!5106173))

(declare-fun m!6163512 () Bool)

(assert (=> b!5106173 m!6163512))

(assert (=> b!5106046 d!1650707))

(declare-fun bm!355893 () Bool)

(declare-datatypes ((Unit!149962 0))(
  ( (Unit!149963) )
))
(declare-fun call!355898 () Unit!149962)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1318 (List!59042 List!59042 List!59042) Unit!149962)

(assert (=> bm!355893 (= call!355898 (lemmaIsPrefixSameLengthThenSameList!1318 input!5723 Nil!58918 input!5723))))

(declare-fun b!5106202 () Bool)

(declare-fun e!3184732 () tuple2!63558)

(assert (=> b!5106202 (= e!3184732 (tuple2!63559 Nil!58918 input!5723))))

(declare-fun b!5106203 () Bool)

(declare-fun lt!2101864 () tuple2!63558)

(assert (=> b!5106203 (= e!3184732 lt!2101864)))

(declare-fun b!5106204 () Bool)

(declare-fun e!3184733 () tuple2!63558)

(declare-fun e!3184731 () tuple2!63558)

(assert (=> b!5106204 (= e!3184733 e!3184731)))

(declare-fun c!877125 () Bool)

(assert (=> b!5106204 (= c!877125 (= (size!39392 Nil!58918) (size!39392 input!5723)))))

(declare-fun d!1650709 () Bool)

(declare-fun e!3184726 () Bool)

(assert (=> d!1650709 e!3184726))

(declare-fun res!2173498 () Bool)

(assert (=> d!1650709 (=> (not res!2173498) (not e!3184726))))

(declare-fun lt!2101872 () tuple2!63558)

(declare-fun ++!12933 (List!59042 List!59042) List!59042)

(assert (=> d!1650709 (= res!2173498 (= (++!12933 (_1!35082 lt!2101872) (_2!35082 lt!2101872)) input!5723))))

(assert (=> d!1650709 (= lt!2101872 e!3184733)))

(declare-fun c!877127 () Bool)

(declare-fun lostCauseZipper!982 ((Set Context!6940)) Bool)

(assert (=> d!1650709 (= c!877127 (lostCauseZipper!982 baseZ!39))))

(declare-fun lt!2101871 () Unit!149962)

(declare-fun Unit!149964 () Unit!149962)

(assert (=> d!1650709 (= lt!2101871 Unit!149964)))

(declare-fun getSuffix!3173 (List!59042 List!59042) List!59042)

(assert (=> d!1650709 (= (getSuffix!3173 input!5723 Nil!58918) input!5723)))

(declare-fun lt!2101867 () Unit!149962)

(declare-fun lt!2101854 () Unit!149962)

(assert (=> d!1650709 (= lt!2101867 lt!2101854)))

(declare-fun lt!2101858 () List!59042)

(assert (=> d!1650709 (= input!5723 lt!2101858)))

(declare-fun lemmaSamePrefixThenSameSuffix!2589 (List!59042 List!59042 List!59042 List!59042 List!59042) Unit!149962)

(assert (=> d!1650709 (= lt!2101854 (lemmaSamePrefixThenSameSuffix!2589 Nil!58918 input!5723 Nil!58918 lt!2101858 input!5723))))

(assert (=> d!1650709 (= lt!2101858 (getSuffix!3173 input!5723 Nil!58918))))

(declare-fun lt!2101851 () Unit!149962)

(declare-fun lt!2101868 () Unit!149962)

(assert (=> d!1650709 (= lt!2101851 lt!2101868)))

(assert (=> d!1650709 (isPrefix!5491 Nil!58918 (++!12933 Nil!58918 input!5723))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3539 (List!59042 List!59042) Unit!149962)

(assert (=> d!1650709 (= lt!2101868 (lemmaConcatTwoListThenFirstIsPrefix!3539 Nil!58918 input!5723))))

(assert (=> d!1650709 (= (++!12933 Nil!58918 input!5723) input!5723)))

(assert (=> d!1650709 (= (findLongestMatchInnerZipper!160 baseZ!39 Nil!58918 (size!39392 Nil!58918) input!5723 input!5723 (size!39392 input!5723)) lt!2101872)))

(declare-fun b!5106205 () Bool)

(declare-fun e!3184727 () tuple2!63558)

(assert (=> b!5106205 (= e!3184727 (tuple2!63559 Nil!58918 Nil!58918))))

(declare-fun b!5106206 () Bool)

(declare-fun e!3184728 () tuple2!63558)

(assert (=> b!5106206 (= e!3184728 e!3184732)))

(declare-fun call!355905 () tuple2!63558)

(assert (=> b!5106206 (= lt!2101864 call!355905)))

(declare-fun c!877130 () Bool)

(declare-fun isEmpty!31825 (List!59042) Bool)

(assert (=> b!5106206 (= c!877130 (isEmpty!31825 (_1!35082 lt!2101864)))))

(declare-fun bm!355894 () Bool)

(declare-fun call!355904 () (Set Context!6940))

(declare-fun call!355900 () C!28438)

(declare-fun derivationStepZipper!755 ((Set Context!6940) C!28438) (Set Context!6940))

(assert (=> bm!355894 (= call!355904 (derivationStepZipper!755 baseZ!39 call!355900))))

(declare-fun bm!355895 () Bool)

(declare-fun call!355899 () List!59042)

(declare-fun lt!2101861 () List!59042)

(assert (=> bm!355895 (= call!355905 (findLongestMatchInnerZipper!160 call!355904 lt!2101861 (+ (size!39392 Nil!58918) 1) call!355899 input!5723 (size!39392 input!5723)))))

(declare-fun bm!355896 () Bool)

(declare-fun call!355901 () Bool)

(declare-fun nullableZipper!967 ((Set Context!6940)) Bool)

(assert (=> bm!355896 (= call!355901 (nullableZipper!967 baseZ!39))))

(declare-fun bm!355897 () Bool)

(assert (=> bm!355897 (= call!355900 (head!10844 input!5723))))

(declare-fun b!5106207 () Bool)

(declare-fun c!877128 () Bool)

(assert (=> b!5106207 (= c!877128 call!355901)))

(declare-fun lt!2101873 () Unit!149962)

(declare-fun lt!2101866 () Unit!149962)

(assert (=> b!5106207 (= lt!2101873 lt!2101866)))

(declare-fun lt!2101852 () C!28438)

(declare-fun lt!2101848 () List!59042)

(assert (=> b!5106207 (= (++!12933 (++!12933 Nil!58918 (Cons!58918 lt!2101852 Nil!58918)) lt!2101848) input!5723)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1527 (List!59042 C!28438 List!59042 List!59042) Unit!149962)

(assert (=> b!5106207 (= lt!2101866 (lemmaMoveElementToOtherListKeepsConcatEq!1527 Nil!58918 lt!2101852 lt!2101848 input!5723))))

(assert (=> b!5106207 (= lt!2101848 (tail!9999 input!5723))))

(assert (=> b!5106207 (= lt!2101852 (head!10844 input!5723))))

(declare-fun lt!2101860 () Unit!149962)

(declare-fun lt!2101869 () Unit!149962)

(assert (=> b!5106207 (= lt!2101860 lt!2101869)))

(assert (=> b!5106207 (isPrefix!5491 (++!12933 Nil!58918 (Cons!58918 (head!10844 (getSuffix!3173 input!5723 Nil!58918)) Nil!58918)) input!5723)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!916 (List!59042 List!59042) Unit!149962)

(assert (=> b!5106207 (= lt!2101869 (lemmaAddHeadSuffixToPrefixStillPrefix!916 Nil!58918 input!5723))))

(assert (=> b!5106207 (= lt!2101861 (++!12933 Nil!58918 (Cons!58918 (head!10844 input!5723) Nil!58918)))))

(declare-fun lt!2101850 () Unit!149962)

(declare-fun e!3184729 () Unit!149962)

(assert (=> b!5106207 (= lt!2101850 e!3184729)))

(declare-fun c!877129 () Bool)

(assert (=> b!5106207 (= c!877129 (= (size!39392 Nil!58918) (size!39392 input!5723)))))

(declare-fun lt!2101855 () Unit!149962)

(declare-fun lt!2101859 () Unit!149962)

(assert (=> b!5106207 (= lt!2101855 lt!2101859)))

(assert (=> b!5106207 (<= (size!39392 Nil!58918) (size!39392 input!5723))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!842 (List!59042 List!59042) Unit!149962)

(assert (=> b!5106207 (= lt!2101859 (lemmaIsPrefixThenSmallerEqSize!842 Nil!58918 input!5723))))

(assert (=> b!5106207 (= e!3184731 e!3184728)))

(declare-fun bm!355898 () Bool)

(declare-fun call!355903 () Bool)

(assert (=> bm!355898 (= call!355903 (isPrefix!5491 input!5723 input!5723))))

(declare-fun b!5106208 () Bool)

(declare-fun Unit!149965 () Unit!149962)

(assert (=> b!5106208 (= e!3184729 Unit!149965)))

(declare-fun b!5106209 () Bool)

(assert (=> b!5106209 (= e!3184727 (tuple2!63559 Nil!58918 input!5723))))

(declare-fun b!5106210 () Bool)

(declare-fun e!3184730 () Bool)

(assert (=> b!5106210 (= e!3184726 e!3184730)))

(declare-fun res!2173497 () Bool)

(assert (=> b!5106210 (=> res!2173497 e!3184730)))

(assert (=> b!5106210 (= res!2173497 (isEmpty!31825 (_1!35082 lt!2101872)))))

(declare-fun b!5106211 () Bool)

(assert (=> b!5106211 (= e!3184730 (>= (size!39392 (_1!35082 lt!2101872)) (size!39392 Nil!58918)))))

(declare-fun b!5106212 () Bool)

(assert (=> b!5106212 (= e!3184733 (tuple2!63559 Nil!58918 input!5723))))

(declare-fun bm!355899 () Bool)

(assert (=> bm!355899 (= call!355899 (tail!9999 input!5723))))

(declare-fun b!5106213 () Bool)

(declare-fun c!877126 () Bool)

(assert (=> b!5106213 (= c!877126 call!355901)))

(declare-fun lt!2101865 () Unit!149962)

(declare-fun lt!2101862 () Unit!149962)

(assert (=> b!5106213 (= lt!2101865 lt!2101862)))

(assert (=> b!5106213 (= input!5723 Nil!58918)))

(assert (=> b!5106213 (= lt!2101862 call!355898)))

(declare-fun lt!2101853 () Unit!149962)

(declare-fun lt!2101863 () Unit!149962)

(assert (=> b!5106213 (= lt!2101853 lt!2101863)))

(assert (=> b!5106213 call!355903))

(declare-fun call!355902 () Unit!149962)

(assert (=> b!5106213 (= lt!2101863 call!355902)))

(assert (=> b!5106213 (= e!3184731 e!3184727)))

(declare-fun bm!355900 () Bool)

(declare-fun lemmaIsPrefixRefl!3688 (List!59042 List!59042) Unit!149962)

(assert (=> bm!355900 (= call!355902 (lemmaIsPrefixRefl!3688 input!5723 input!5723))))

(declare-fun b!5106214 () Bool)

(declare-fun Unit!149966 () Unit!149962)

(assert (=> b!5106214 (= e!3184729 Unit!149966)))

(declare-fun lt!2101870 () Unit!149962)

(assert (=> b!5106214 (= lt!2101870 call!355902)))

(assert (=> b!5106214 call!355903))

(declare-fun lt!2101849 () Unit!149962)

(assert (=> b!5106214 (= lt!2101849 lt!2101870)))

(declare-fun lt!2101856 () Unit!149962)

(assert (=> b!5106214 (= lt!2101856 call!355898)))

(assert (=> b!5106214 (= input!5723 Nil!58918)))

(declare-fun lt!2101857 () Unit!149962)

(assert (=> b!5106214 (= lt!2101857 lt!2101856)))

(assert (=> b!5106214 false))

(declare-fun b!5106215 () Bool)

(assert (=> b!5106215 (= e!3184728 call!355905)))

(assert (= (and d!1650709 c!877127) b!5106212))

(assert (= (and d!1650709 (not c!877127)) b!5106204))

(assert (= (and b!5106204 c!877125) b!5106213))

(assert (= (and b!5106204 (not c!877125)) b!5106207))

(assert (= (and b!5106213 c!877126) b!5106205))

(assert (= (and b!5106213 (not c!877126)) b!5106209))

(assert (= (and b!5106207 c!877129) b!5106214))

(assert (= (and b!5106207 (not c!877129)) b!5106208))

(assert (= (and b!5106207 c!877128) b!5106206))

(assert (= (and b!5106207 (not c!877128)) b!5106215))

(assert (= (and b!5106206 c!877130) b!5106202))

(assert (= (and b!5106206 (not c!877130)) b!5106203))

(assert (= (or b!5106206 b!5106215) bm!355897))

(assert (= (or b!5106206 b!5106215) bm!355899))

(assert (= (or b!5106206 b!5106215) bm!355894))

(assert (= (or b!5106206 b!5106215) bm!355895))

(assert (= (or b!5106213 b!5106207) bm!355896))

(assert (= (or b!5106213 b!5106214) bm!355900))

(assert (= (or b!5106213 b!5106214) bm!355898))

(assert (= (or b!5106213 b!5106214) bm!355893))

(assert (= (and d!1650709 res!2173498) b!5106210))

(assert (= (and b!5106210 (not res!2173497)) b!5106211))

(declare-fun m!6163514 () Bool)

(assert (=> bm!355894 m!6163514))

(declare-fun m!6163516 () Bool)

(assert (=> bm!355900 m!6163516))

(declare-fun m!6163518 () Bool)

(assert (=> b!5106206 m!6163518))

(declare-fun m!6163520 () Bool)

(assert (=> b!5106207 m!6163520))

(declare-fun m!6163522 () Bool)

(assert (=> b!5106207 m!6163522))

(declare-fun m!6163524 () Bool)

(assert (=> b!5106207 m!6163524))

(declare-fun m!6163526 () Bool)

(assert (=> b!5106207 m!6163526))

(assert (=> b!5106207 m!6163382))

(assert (=> b!5106207 m!6163420))

(assert (=> b!5106207 m!6163524))

(declare-fun m!6163528 () Bool)

(assert (=> b!5106207 m!6163528))

(assert (=> b!5106207 m!6163380))

(declare-fun m!6163530 () Bool)

(assert (=> b!5106207 m!6163530))

(assert (=> b!5106207 m!6163520))

(assert (=> b!5106207 m!6163426))

(declare-fun m!6163532 () Bool)

(assert (=> b!5106207 m!6163532))

(declare-fun m!6163534 () Bool)

(assert (=> b!5106207 m!6163534))

(assert (=> b!5106207 m!6163532))

(declare-fun m!6163536 () Bool)

(assert (=> b!5106207 m!6163536))

(declare-fun m!6163538 () Bool)

(assert (=> b!5106207 m!6163538))

(assert (=> bm!355897 m!6163426))

(declare-fun m!6163540 () Bool)

(assert (=> bm!355893 m!6163540))

(assert (=> bm!355895 m!6163382))

(declare-fun m!6163542 () Bool)

(assert (=> bm!355895 m!6163542))

(declare-fun m!6163544 () Bool)

(assert (=> d!1650709 m!6163544))

(declare-fun m!6163546 () Bool)

(assert (=> d!1650709 m!6163546))

(declare-fun m!6163548 () Bool)

(assert (=> d!1650709 m!6163548))

(assert (=> d!1650709 m!6163546))

(declare-fun m!6163550 () Bool)

(assert (=> d!1650709 m!6163550))

(declare-fun m!6163552 () Bool)

(assert (=> d!1650709 m!6163552))

(declare-fun m!6163554 () Bool)

(assert (=> d!1650709 m!6163554))

(assert (=> d!1650709 m!6163520))

(declare-fun m!6163556 () Bool)

(assert (=> bm!355898 m!6163556))

(assert (=> bm!355899 m!6163420))

(declare-fun m!6163558 () Bool)

(assert (=> b!5106210 m!6163558))

(declare-fun m!6163560 () Bool)

(assert (=> b!5106211 m!6163560))

(assert (=> b!5106211 m!6163380))

(declare-fun m!6163562 () Bool)

(assert (=> bm!355896 m!6163562))

(assert (=> b!5106051 d!1650709))

(declare-fun d!1650711 () Bool)

(declare-fun lt!2101874 () Int)

(assert (=> d!1650711 (>= lt!2101874 0)))

(declare-fun e!3184734 () Int)

(assert (=> d!1650711 (= lt!2101874 e!3184734)))

(declare-fun c!877131 () Bool)

(assert (=> d!1650711 (= c!877131 (is-Nil!58918 Nil!58918))))

(assert (=> d!1650711 (= (size!39392 Nil!58918) lt!2101874)))

(declare-fun b!5106216 () Bool)

(assert (=> b!5106216 (= e!3184734 0)))

(declare-fun b!5106217 () Bool)

(assert (=> b!5106217 (= e!3184734 (+ 1 (size!39392 (t!372043 Nil!58918))))))

(assert (= (and d!1650711 c!877131) b!5106216))

(assert (= (and d!1650711 (not c!877131)) b!5106217))

(declare-fun m!6163564 () Bool)

(assert (=> b!5106217 m!6163564))

(assert (=> b!5106051 d!1650711))

(declare-fun d!1650713 () Bool)

(declare-fun lt!2101875 () Int)

(assert (=> d!1650713 (>= lt!2101875 0)))

(declare-fun e!3184735 () Int)

(assert (=> d!1650713 (= lt!2101875 e!3184735)))

(declare-fun c!877132 () Bool)

(assert (=> d!1650713 (= c!877132 (is-Nil!58918 input!5723))))

(assert (=> d!1650713 (= (size!39392 input!5723) lt!2101875)))

(declare-fun b!5106218 () Bool)

(assert (=> b!5106218 (= e!3184735 0)))

(declare-fun b!5106219 () Bool)

(assert (=> b!5106219 (= e!3184735 (+ 1 (size!39392 (t!372043 input!5723))))))

(assert (= (and d!1650713 c!877132) b!5106218))

(assert (= (and d!1650713 (not c!877132)) b!5106219))

(declare-fun m!6163566 () Bool)

(assert (=> b!5106219 m!6163566))

(assert (=> b!5106051 d!1650713))

(declare-fun d!1650715 () Bool)

(declare-fun c!877135 () Bool)

(assert (=> d!1650715 (= c!877135 (isEmpty!31825 bigger!41))))

(declare-fun e!3184738 () Bool)

(assert (=> d!1650715 (= (matchZipper!754 baseZ!39 bigger!41) e!3184738)))

(declare-fun b!5106224 () Bool)

(assert (=> b!5106224 (= e!3184738 (nullableZipper!967 baseZ!39))))

(declare-fun b!5106225 () Bool)

(assert (=> b!5106225 (= e!3184738 (matchZipper!754 (derivationStepZipper!755 baseZ!39 (head!10844 bigger!41)) (tail!9999 bigger!41)))))

(assert (= (and d!1650715 c!877135) b!5106224))

(assert (= (and d!1650715 (not c!877135)) b!5106225))

(declare-fun m!6163568 () Bool)

(assert (=> d!1650715 m!6163568))

(assert (=> b!5106224 m!6163562))

(assert (=> b!5106225 m!6163424))

(assert (=> b!5106225 m!6163424))

(declare-fun m!6163570 () Bool)

(assert (=> b!5106225 m!6163570))

(assert (=> b!5106225 m!6163418))

(assert (=> b!5106225 m!6163570))

(assert (=> b!5106225 m!6163418))

(declare-fun m!6163572 () Bool)

(assert (=> b!5106225 m!6163572))

(assert (=> b!5106047 d!1650715))

(declare-fun b!5106229 () Bool)

(declare-fun e!3184741 () Bool)

(assert (=> b!5106229 (= e!3184741 (>= (size!39392 input!5723) (size!39392 returnP!41)))))

(declare-fun d!1650717 () Bool)

(assert (=> d!1650717 e!3184741))

(declare-fun res!2173501 () Bool)

(assert (=> d!1650717 (=> res!2173501 e!3184741)))

(declare-fun lt!2101876 () Bool)

(assert (=> d!1650717 (= res!2173501 (not lt!2101876))))

(declare-fun e!3184740 () Bool)

(assert (=> d!1650717 (= lt!2101876 e!3184740)))

(declare-fun res!2173502 () Bool)

(assert (=> d!1650717 (=> res!2173502 e!3184740)))

(assert (=> d!1650717 (= res!2173502 (is-Nil!58918 returnP!41))))

(assert (=> d!1650717 (= (isPrefix!5491 returnP!41 input!5723) lt!2101876)))

(declare-fun b!5106228 () Bool)

(declare-fun e!3184739 () Bool)

(assert (=> b!5106228 (= e!3184739 (isPrefix!5491 (tail!9999 returnP!41) (tail!9999 input!5723)))))

(declare-fun b!5106226 () Bool)

(assert (=> b!5106226 (= e!3184740 e!3184739)))

(declare-fun res!2173500 () Bool)

(assert (=> b!5106226 (=> (not res!2173500) (not e!3184739))))

(assert (=> b!5106226 (= res!2173500 (not (is-Nil!58918 input!5723)))))

(declare-fun b!5106227 () Bool)

(declare-fun res!2173499 () Bool)

(assert (=> b!5106227 (=> (not res!2173499) (not e!3184739))))

(assert (=> b!5106227 (= res!2173499 (= (head!10844 returnP!41) (head!10844 input!5723)))))

(assert (= (and d!1650717 (not res!2173502)) b!5106226))

(assert (= (and b!5106226 res!2173500) b!5106227))

(assert (= (and b!5106227 res!2173499) b!5106228))

(assert (= (and d!1650717 (not res!2173501)) b!5106229))

(assert (=> b!5106229 m!6163382))

(assert (=> b!5106229 m!6163390))

(declare-fun m!6163574 () Bool)

(assert (=> b!5106228 m!6163574))

(assert (=> b!5106228 m!6163420))

(assert (=> b!5106228 m!6163574))

(assert (=> b!5106228 m!6163420))

(declare-fun m!6163576 () Bool)

(assert (=> b!5106228 m!6163576))

(declare-fun m!6163578 () Bool)

(assert (=> b!5106227 m!6163578))

(assert (=> b!5106227 m!6163426))

(assert (=> start!538406 d!1650717))

(declare-fun b!5106234 () Bool)

(declare-fun e!3184744 () Bool)

(declare-fun tp!1424386 () Bool)

(declare-fun tp!1424387 () Bool)

(assert (=> b!5106234 (= e!3184744 (and tp!1424386 tp!1424387))))

(assert (=> b!5106048 (= tp!1424362 e!3184744)))

(assert (= (and b!5106048 (is-Cons!58919 (exprs!3970 setElem!29371))) b!5106234))

(declare-fun b!5106239 () Bool)

(declare-fun e!3184747 () Bool)

(declare-fun tp!1424390 () Bool)

(assert (=> b!5106239 (= e!3184747 (and tp_is_empty!37445 tp!1424390))))

(assert (=> b!5106044 (= tp!1424365 e!3184747)))

(assert (= (and b!5106044 (is-Cons!58918 (t!372043 input!5723))) b!5106239))

(declare-fun condSetEmpty!29377 () Bool)

(assert (=> setNonEmpty!29371 (= condSetEmpty!29377 (= setRest!29371 (as set.empty (Set Context!6940))))))

(declare-fun setRes!29377 () Bool)

(assert (=> setNonEmpty!29371 (= tp!1424363 setRes!29377)))

(declare-fun setIsEmpty!29377 () Bool)

(assert (=> setIsEmpty!29377 setRes!29377))

(declare-fun e!3184750 () Bool)

(declare-fun tp!1424395 () Bool)

(declare-fun setElem!29377 () Context!6940)

(declare-fun setNonEmpty!29377 () Bool)

(assert (=> setNonEmpty!29377 (= setRes!29377 (and tp!1424395 (inv!78397 setElem!29377) e!3184750))))

(declare-fun setRest!29377 () (Set Context!6940))

(assert (=> setNonEmpty!29377 (= setRest!29371 (set.union (set.insert setElem!29377 (as set.empty (Set Context!6940))) setRest!29377))))

(declare-fun b!5106244 () Bool)

(declare-fun tp!1424396 () Bool)

(assert (=> b!5106244 (= e!3184750 tp!1424396)))

(assert (= (and setNonEmpty!29371 condSetEmpty!29377) setIsEmpty!29377))

(assert (= (and setNonEmpty!29371 (not condSetEmpty!29377)) setNonEmpty!29377))

(assert (= setNonEmpty!29377 b!5106244))

(declare-fun m!6163580 () Bool)

(assert (=> setNonEmpty!29377 m!6163580))

(declare-fun b!5106245 () Bool)

(declare-fun e!3184751 () Bool)

(declare-fun tp!1424397 () Bool)

(assert (=> b!5106245 (= e!3184751 (and tp_is_empty!37445 tp!1424397))))

(assert (=> b!5106050 (= tp!1424364 e!3184751)))

(assert (= (and b!5106050 (is-Cons!58918 (t!372043 bigger!41))) b!5106245))

(declare-fun b!5106246 () Bool)

(declare-fun e!3184752 () Bool)

(declare-fun tp!1424398 () Bool)

(assert (=> b!5106246 (= e!3184752 (and tp_is_empty!37445 tp!1424398))))

(assert (=> b!5106049 (= tp!1424366 e!3184752)))

(assert (= (and b!5106049 (is-Cons!58918 (t!372043 returnP!41))) b!5106246))

(push 1)

(assert (not d!1650715))

(assert (not setNonEmpty!29377))

(assert (not d!1650709))

(assert (not bm!355894))

(assert (not bm!355896))

(assert (not b!5106246))

(assert (not b!5106173))

(assert (not b!5106095))

(assert (not b!5106228))

(assert (not bm!355895))

(assert (not b!5106227))

(assert (not b!5106091))

(assert (not b!5106207))

(assert (not b!5106224))

(assert (not bm!355897))

(assert (not d!1650693))

(assert (not b!5106206))

(assert (not b!5106171))

(assert (not b!5106234))

(assert (not bm!355900))

(assert (not b!5106244))

(assert (not b!5106096))

(assert (not b!5106245))

(assert (not b!5106225))

(assert (not bm!355893))

(assert (not bm!355898))

(assert (not b!5106210))

(assert (not b!5106092))

(assert (not b!5106211))

(assert (not b!5106093))

(assert (not bm!355899))

(assert tp_is_empty!37445)

(assert (not b!5106217))

(assert (not b!5106229))

(assert (not b!5106219))

(assert (not b!5106097))

(assert (not b!5106239))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

