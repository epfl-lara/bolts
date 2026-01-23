; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!546262 () Bool)

(assert start!546262)

(declare-fun b!5163794 () Bool)

(declare-fun e!3217450 () Bool)

(declare-fun tp!1448322 () Bool)

(assert (=> b!5163794 (= e!3217450 tp!1448322)))

(declare-fun b!5163795 () Bool)

(declare-fun e!3217451 () Bool)

(declare-datatypes ((C!29362 0))(
  ( (C!29363 (val!24383 Int)) )
))
(declare-datatypes ((Regex!14546 0))(
  ( (ElementMatch!14546 (c!888397 C!29362)) (Concat!23391 (regOne!29604 Regex!14546) (regTwo!29604 Regex!14546)) (EmptyExpr!14546) (Star!14546 (reg!14875 Regex!14546)) (EmptyLang!14546) (Union!14546 (regOne!29605 Regex!14546) (regTwo!29605 Regex!14546)) )
))
(declare-datatypes ((List!60047 0))(
  ( (Nil!59923) (Cons!59923 (h!66371 Regex!14546) (t!373200 List!60047)) )
))
(declare-datatypes ((Context!7860 0))(
  ( (Context!7861 (exprs!4430 List!60047)) )
))
(declare-fun z!4413 () (Set Context!7860))

(declare-datatypes ((List!60048 0))(
  ( (Nil!59924) (Cons!59924 (h!66372 C!29362) (t!373201 List!60048)) )
))
(declare-datatypes ((tuple2!63662 0))(
  ( (tuple2!63663 (_1!35134 List!60048) (_2!35134 List!60048)) )
))
(declare-fun lt!2123343 () tuple2!63662)

(declare-fun matchZipper!946 ((Set Context!7860) List!60048) Bool)

(assert (=> b!5163795 (= e!3217451 (matchZipper!946 z!4413 (_1!35134 lt!2123343)))))

(declare-fun b!5163796 () Bool)

(declare-fun e!3217452 () Bool)

(assert (=> b!5163796 (= e!3217452 (not e!3217451))))

(declare-fun res!2195355 () Bool)

(assert (=> b!5163796 (=> res!2195355 e!3217451)))

(declare-fun isEmpty!32094 (List!60048) Bool)

(assert (=> b!5163796 (= res!2195355 (isEmpty!32094 (_1!35134 lt!2123343)))))

(declare-fun lt!2123344 () Int)

(declare-fun lt!2123339 () Int)

(declare-fun input!5707 () List!60048)

(declare-fun findLongestMatchInnerZipper!212 ((Set Context!7860) List!60048 Int List!60048 List!60048 Int) tuple2!63662)

(assert (=> b!5163796 (= lt!2123343 (findLongestMatchInnerZipper!212 z!4413 Nil!59924 lt!2123339 input!5707 input!5707 lt!2123344))))

(declare-fun e!3217449 () Bool)

(assert (=> b!5163796 e!3217449))

(declare-fun res!2195358 () Bool)

(assert (=> b!5163796 (=> res!2195358 e!3217449)))

(declare-fun lt!2123342 () tuple2!63662)

(assert (=> b!5163796 (= res!2195358 (isEmpty!32094 (_1!35134 lt!2123342)))))

(declare-fun lt!2123340 () List!60048)

(assert (=> b!5163796 (= lt!2123342 (findLongestMatchInnerZipper!212 z!4413 Nil!59924 lt!2123339 lt!2123340 input!5707 lt!2123344))))

(declare-fun size!39582 (List!60048) Int)

(assert (=> b!5163796 (= lt!2123344 (size!39582 input!5707))))

(declare-fun getSuffix!3333 (List!60048 List!60048) List!60048)

(assert (=> b!5163796 (= lt!2123340 (getSuffix!3333 input!5707 Nil!59924))))

(assert (=> b!5163796 (= lt!2123339 (size!39582 Nil!59924))))

(declare-datatypes ((Unit!151371 0))(
  ( (Unit!151372) )
))
(declare-fun lt!2123341 () Unit!151371)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!10 ((Set Context!7860) (Set Context!7860) List!60048 List!60048) Unit!151371)

(assert (=> b!5163796 (= lt!2123341 (longestMatchIsAcceptedByMatchOrIsEmptyRec!10 z!4413 z!4413 Nil!59924 input!5707))))

(declare-fun setIsEmpty!31439 () Bool)

(declare-fun setRes!31439 () Bool)

(assert (=> setIsEmpty!31439 setRes!31439))

(declare-fun res!2195356 () Bool)

(assert (=> start!546262 (=> (not res!2195356) (not e!3217452))))

(declare-fun isPrefix!5679 (List!60048 List!60048) Bool)

(assert (=> start!546262 (= res!2195356 (isPrefix!5679 Nil!59924 input!5707))))

(assert (=> start!546262 e!3217452))

(declare-fun e!3217448 () Bool)

(assert (=> start!546262 e!3217448))

(declare-fun condSetEmpty!31439 () Bool)

(assert (=> start!546262 (= condSetEmpty!31439 (= z!4413 (as set.empty (Set Context!7860))))))

(assert (=> start!546262 setRes!31439))

(declare-fun tp!1448323 () Bool)

(declare-fun setElem!31439 () Context!7860)

(declare-fun setNonEmpty!31439 () Bool)

(declare-fun inv!79613 (Context!7860) Bool)

(assert (=> setNonEmpty!31439 (= setRes!31439 (and tp!1448323 (inv!79613 setElem!31439) e!3217450))))

(declare-fun setRest!31439 () (Set Context!7860))

(assert (=> setNonEmpty!31439 (= z!4413 (set.union (set.insert setElem!31439 (as set.empty (Set Context!7860))) setRest!31439))))

(declare-fun b!5163797 () Bool)

(declare-fun res!2195357 () Bool)

(assert (=> b!5163797 (=> (not res!2195357) (not e!3217452))))

(declare-fun derivationZipper!169 ((Set Context!7860) List!60048) (Set Context!7860))

(assert (=> b!5163797 (= res!2195357 (= (derivationZipper!169 z!4413 Nil!59924) z!4413))))

(declare-fun b!5163798 () Bool)

(assert (=> b!5163798 (= e!3217449 (matchZipper!946 z!4413 (_1!35134 lt!2123342)))))

(declare-fun b!5163799 () Bool)

(declare-fun tp_is_empty!38345 () Bool)

(declare-fun tp!1448324 () Bool)

(assert (=> b!5163799 (= e!3217448 (and tp_is_empty!38345 tp!1448324))))

(assert (= (and start!546262 res!2195356) b!5163797))

(assert (= (and b!5163797 res!2195357) b!5163796))

(assert (= (and b!5163796 (not res!2195358)) b!5163798))

(assert (= (and b!5163796 (not res!2195355)) b!5163795))

(assert (= (and start!546262 (is-Cons!59924 input!5707)) b!5163799))

(assert (= (and start!546262 condSetEmpty!31439) setIsEmpty!31439))

(assert (= (and start!546262 (not condSetEmpty!31439)) setNonEmpty!31439))

(assert (= setNonEmpty!31439 b!5163794))

(declare-fun m!6214420 () Bool)

(assert (=> start!546262 m!6214420))

(declare-fun m!6214422 () Bool)

(assert (=> b!5163795 m!6214422))

(declare-fun m!6214424 () Bool)

(assert (=> b!5163798 m!6214424))

(declare-fun m!6214426 () Bool)

(assert (=> b!5163796 m!6214426))

(declare-fun m!6214428 () Bool)

(assert (=> b!5163796 m!6214428))

(declare-fun m!6214430 () Bool)

(assert (=> b!5163796 m!6214430))

(declare-fun m!6214432 () Bool)

(assert (=> b!5163796 m!6214432))

(declare-fun m!6214434 () Bool)

(assert (=> b!5163796 m!6214434))

(declare-fun m!6214436 () Bool)

(assert (=> b!5163796 m!6214436))

(declare-fun m!6214438 () Bool)

(assert (=> b!5163796 m!6214438))

(declare-fun m!6214440 () Bool)

(assert (=> b!5163796 m!6214440))

(declare-fun m!6214442 () Bool)

(assert (=> setNonEmpty!31439 m!6214442))

(declare-fun m!6214444 () Bool)

(assert (=> b!5163797 m!6214444))

(push 1)

(assert (not b!5163797))

(assert (not b!5163795))

(assert (not b!5163796))

(assert (not b!5163798))

(assert (not start!546262))

(assert (not b!5163799))

(assert (not b!5163794))

(assert (not setNonEmpty!31439))

(assert tp_is_empty!38345)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1666235 () Bool)

(declare-fun lambda!257722 () Int)

(declare-fun forall!14095 (List!60047 Int) Bool)

(assert (=> d!1666235 (= (inv!79613 setElem!31439) (forall!14095 (exprs!4430 setElem!31439) lambda!257722))))

(declare-fun bs!1202736 () Bool)

(assert (= bs!1202736 d!1666235))

(declare-fun m!6214482 () Bool)

(assert (=> bs!1202736 m!6214482))

(assert (=> setNonEmpty!31439 d!1666235))

(declare-fun d!1666239 () Bool)

(assert (=> d!1666239 (= (isEmpty!32094 (_1!35134 lt!2123342)) (is-Nil!59924 (_1!35134 lt!2123342)))))

(assert (=> b!5163796 d!1666239))

(declare-fun d!1666241 () Bool)

(declare-fun lt!2123368 () Int)

(assert (=> d!1666241 (>= lt!2123368 0)))

(declare-fun e!3217479 () Int)

(assert (=> d!1666241 (= lt!2123368 e!3217479)))

(declare-fun c!888401 () Bool)

(assert (=> d!1666241 (= c!888401 (is-Nil!59924 input!5707))))

(assert (=> d!1666241 (= (size!39582 input!5707) lt!2123368)))

(declare-fun b!5163834 () Bool)

(assert (=> b!5163834 (= e!3217479 0)))

(declare-fun b!5163835 () Bool)

(assert (=> b!5163835 (= e!3217479 (+ 1 (size!39582 (t!373201 input!5707))))))

(assert (= (and d!1666241 c!888401) b!5163834))

(assert (= (and d!1666241 (not c!888401)) b!5163835))

(declare-fun m!6214484 () Bool)

(assert (=> b!5163835 m!6214484))

(assert (=> b!5163796 d!1666241))

(declare-fun d!1666243 () Bool)

(assert (=> d!1666243 (= (isEmpty!32094 (_1!35134 lt!2123343)) (is-Nil!59924 (_1!35134 lt!2123343)))))

(assert (=> b!5163796 d!1666243))

(declare-fun d!1666245 () Bool)

(declare-fun lt!2123371 () List!60048)

(declare-fun ++!13093 (List!60048 List!60048) List!60048)

(assert (=> d!1666245 (= (++!13093 Nil!59924 lt!2123371) input!5707)))

(declare-fun e!3217482 () List!60048)

(assert (=> d!1666245 (= lt!2123371 e!3217482)))

(declare-fun c!888404 () Bool)

(assert (=> d!1666245 (= c!888404 (is-Cons!59924 Nil!59924))))

(assert (=> d!1666245 (>= (size!39582 input!5707) (size!39582 Nil!59924))))

(assert (=> d!1666245 (= (getSuffix!3333 input!5707 Nil!59924) lt!2123371)))

(declare-fun b!5163840 () Bool)

(declare-fun tail!10111 (List!60048) List!60048)

(assert (=> b!5163840 (= e!3217482 (getSuffix!3333 (tail!10111 input!5707) (t!373201 Nil!59924)))))

(declare-fun b!5163841 () Bool)

(assert (=> b!5163841 (= e!3217482 input!5707)))

(assert (= (and d!1666245 c!888404) b!5163840))

(assert (= (and d!1666245 (not c!888404)) b!5163841))

(declare-fun m!6214486 () Bool)

(assert (=> d!1666245 m!6214486))

(assert (=> d!1666245 m!6214440))

(assert (=> d!1666245 m!6214428))

(declare-fun m!6214488 () Bool)

(assert (=> b!5163840 m!6214488))

(assert (=> b!5163840 m!6214488))

(declare-fun m!6214490 () Bool)

(assert (=> b!5163840 m!6214490))

(assert (=> b!5163796 d!1666245))

(declare-fun d!1666247 () Bool)

(declare-fun e!3217485 () Bool)

(assert (=> d!1666247 e!3217485))

(declare-fun res!2195385 () Bool)

(assert (=> d!1666247 (=> res!2195385 e!3217485)))

(assert (=> d!1666247 (= res!2195385 (isEmpty!32094 (_1!35134 (findLongestMatchInnerZipper!212 z!4413 Nil!59924 (size!39582 Nil!59924) (getSuffix!3333 input!5707 Nil!59924) input!5707 (size!39582 input!5707)))))))

(declare-fun lt!2123374 () Unit!151371)

(declare-fun choose!38199 ((Set Context!7860) (Set Context!7860) List!60048 List!60048) Unit!151371)

(assert (=> d!1666247 (= lt!2123374 (choose!38199 z!4413 z!4413 Nil!59924 input!5707))))

(assert (=> d!1666247 (isPrefix!5679 Nil!59924 input!5707)))

(assert (=> d!1666247 (= (longestMatchIsAcceptedByMatchOrIsEmptyRec!10 z!4413 z!4413 Nil!59924 input!5707) lt!2123374)))

(declare-fun b!5163844 () Bool)

(assert (=> b!5163844 (= e!3217485 (matchZipper!946 z!4413 (_1!35134 (findLongestMatchInnerZipper!212 z!4413 Nil!59924 (size!39582 Nil!59924) (getSuffix!3333 input!5707 Nil!59924) input!5707 (size!39582 input!5707)))))))

(assert (= (and d!1666247 (not res!2195385)) b!5163844))

(assert (=> d!1666247 m!6214440))

(declare-fun m!6214492 () Bool)

(assert (=> d!1666247 m!6214492))

(assert (=> d!1666247 m!6214420))

(declare-fun m!6214494 () Bool)

(assert (=> d!1666247 m!6214494))

(assert (=> d!1666247 m!6214428))

(assert (=> d!1666247 m!6214426))

(assert (=> d!1666247 m!6214428))

(assert (=> d!1666247 m!6214426))

(assert (=> d!1666247 m!6214440))

(declare-fun m!6214496 () Bool)

(assert (=> d!1666247 m!6214496))

(assert (=> b!5163844 m!6214440))

(declare-fun m!6214498 () Bool)

(assert (=> b!5163844 m!6214498))

(assert (=> b!5163844 m!6214428))

(assert (=> b!5163844 m!6214426))

(assert (=> b!5163844 m!6214428))

(assert (=> b!5163844 m!6214426))

(assert (=> b!5163844 m!6214440))

(assert (=> b!5163844 m!6214496))

(assert (=> b!5163796 d!1666247))

(declare-fun d!1666249 () Bool)

(declare-fun e!3217505 () Bool)

(assert (=> d!1666249 e!3217505))

(declare-fun res!2195390 () Bool)

(assert (=> d!1666249 (=> (not res!2195390) (not e!3217505))))

(declare-fun lt!2123433 () tuple2!63662)

(assert (=> d!1666249 (= res!2195390 (= (++!13093 (_1!35134 lt!2123433) (_2!35134 lt!2123433)) input!5707))))

(declare-fun e!3217506 () tuple2!63662)

(assert (=> d!1666249 (= lt!2123433 e!3217506)))

(declare-fun c!888419 () Bool)

(declare-fun lostCauseZipper!1304 ((Set Context!7860)) Bool)

(assert (=> d!1666249 (= c!888419 (lostCauseZipper!1304 z!4413))))

(declare-fun lt!2123429 () Unit!151371)

(declare-fun Unit!151375 () Unit!151371)

(assert (=> d!1666249 (= lt!2123429 Unit!151375)))

(assert (=> d!1666249 (= (getSuffix!3333 input!5707 Nil!59924) input!5707)))

(declare-fun lt!2123439 () Unit!151371)

(declare-fun lt!2123449 () Unit!151371)

(assert (=> d!1666249 (= lt!2123439 lt!2123449)))

(declare-fun lt!2123451 () List!60048)

(assert (=> d!1666249 (= input!5707 lt!2123451)))

(declare-fun lemmaSamePrefixThenSameSuffix!2671 (List!60048 List!60048 List!60048 List!60048 List!60048) Unit!151371)

(assert (=> d!1666249 (= lt!2123449 (lemmaSamePrefixThenSameSuffix!2671 Nil!59924 input!5707 Nil!59924 lt!2123451 input!5707))))

(assert (=> d!1666249 (= lt!2123451 (getSuffix!3333 input!5707 Nil!59924))))

(declare-fun lt!2123430 () Unit!151371)

(declare-fun lt!2123436 () Unit!151371)

(assert (=> d!1666249 (= lt!2123430 lt!2123436)))

(assert (=> d!1666249 (isPrefix!5679 Nil!59924 (++!13093 Nil!59924 input!5707))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3565 (List!60048 List!60048) Unit!151371)

(assert (=> d!1666249 (= lt!2123436 (lemmaConcatTwoListThenFirstIsPrefix!3565 Nil!59924 input!5707))))

(assert (=> d!1666249 (= (++!13093 Nil!59924 input!5707) input!5707)))

(assert (=> d!1666249 (= (findLongestMatchInnerZipper!212 z!4413 Nil!59924 lt!2123339 input!5707 input!5707 lt!2123344) lt!2123433)))

(declare-fun b!5163873 () Bool)

(declare-fun e!3217503 () tuple2!63662)

(assert (=> b!5163873 (= e!3217506 e!3217503)))

(declare-fun c!888421 () Bool)

(assert (=> b!5163873 (= c!888421 (= lt!2123339 lt!2123344))))

(declare-fun b!5163874 () Bool)

(declare-fun e!3217504 () Bool)

(assert (=> b!5163874 (= e!3217505 e!3217504)))

(declare-fun res!2195391 () Bool)

(assert (=> b!5163874 (=> res!2195391 e!3217504)))

(assert (=> b!5163874 (= res!2195391 (isEmpty!32094 (_1!35134 lt!2123433)))))

(declare-fun b!5163875 () Bool)

(declare-fun e!3217508 () tuple2!63662)

(assert (=> b!5163875 (= e!3217508 (tuple2!63663 Nil!59924 input!5707))))

(declare-fun b!5163876 () Bool)

(declare-fun e!3217502 () tuple2!63662)

(declare-fun lt!2123446 () tuple2!63662)

(assert (=> b!5163876 (= e!3217502 lt!2123446)))

(declare-fun b!5163877 () Bool)

(declare-fun e!3217509 () tuple2!63662)

(declare-fun call!362147 () tuple2!63662)

(assert (=> b!5163877 (= e!3217509 call!362147)))

(declare-fun bm!362135 () Bool)

(declare-fun call!362143 () Unit!151371)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1357 (List!60048 List!60048 List!60048) Unit!151371)

(assert (=> bm!362135 (= call!362143 (lemmaIsPrefixSameLengthThenSameList!1357 input!5707 Nil!59924 input!5707))))

(declare-fun b!5163878 () Bool)

(declare-fun e!3217507 () Unit!151371)

(declare-fun Unit!151376 () Unit!151371)

(assert (=> b!5163878 (= e!3217507 Unit!151376)))

(declare-fun bm!362136 () Bool)

(declare-fun call!362142 () Unit!151371)

(declare-fun lemmaIsPrefixRefl!3713 (List!60048 List!60048) Unit!151371)

(assert (=> bm!362136 (= call!362142 (lemmaIsPrefixRefl!3713 input!5707 input!5707))))

(declare-fun bm!362137 () Bool)

(declare-fun lt!2123431 () List!60048)

(declare-fun call!362145 () List!60048)

(declare-fun call!362141 () (Set Context!7860))

(assert (=> bm!362137 (= call!362147 (findLongestMatchInnerZipper!212 call!362141 lt!2123431 (+ lt!2123339 1) call!362145 input!5707 lt!2123344))))

(declare-fun b!5163879 () Bool)

(assert (=> b!5163879 (= e!3217506 (tuple2!63663 Nil!59924 input!5707))))

(declare-fun bm!362138 () Bool)

(declare-fun call!362146 () C!29362)

(declare-fun head!11000 (List!60048) C!29362)

(assert (=> bm!362138 (= call!362146 (head!11000 input!5707))))

(declare-fun b!5163880 () Bool)

(assert (=> b!5163880 (= e!3217509 e!3217502)))

(assert (=> b!5163880 (= lt!2123446 call!362147)))

(declare-fun c!888422 () Bool)

(assert (=> b!5163880 (= c!888422 (isEmpty!32094 (_1!35134 lt!2123446)))))

(declare-fun b!5163881 () Bool)

(assert (=> b!5163881 (= e!3217504 (>= (size!39582 (_1!35134 lt!2123433)) (size!39582 Nil!59924)))))

(declare-fun b!5163882 () Bool)

(declare-fun c!888417 () Bool)

(declare-fun call!362140 () Bool)

(assert (=> b!5163882 (= c!888417 call!362140)))

(declare-fun lt!2123428 () Unit!151371)

(declare-fun lt!2123444 () Unit!151371)

(assert (=> b!5163882 (= lt!2123428 lt!2123444)))

(declare-fun lt!2123437 () C!29362)

(declare-fun lt!2123442 () List!60048)

(assert (=> b!5163882 (= (++!13093 (++!13093 Nil!59924 (Cons!59924 lt!2123437 Nil!59924)) lt!2123442) input!5707)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1552 (List!60048 C!29362 List!60048 List!60048) Unit!151371)

(assert (=> b!5163882 (= lt!2123444 (lemmaMoveElementToOtherListKeepsConcatEq!1552 Nil!59924 lt!2123437 lt!2123442 input!5707))))

(assert (=> b!5163882 (= lt!2123442 (tail!10111 input!5707))))

(assert (=> b!5163882 (= lt!2123437 (head!11000 input!5707))))

(declare-fun lt!2123427 () Unit!151371)

(declare-fun lt!2123450 () Unit!151371)

(assert (=> b!5163882 (= lt!2123427 lt!2123450)))

(assert (=> b!5163882 (isPrefix!5679 (++!13093 Nil!59924 (Cons!59924 (head!11000 (getSuffix!3333 input!5707 Nil!59924)) Nil!59924)) input!5707)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1027 (List!60048 List!60048) Unit!151371)

(assert (=> b!5163882 (= lt!2123450 (lemmaAddHeadSuffixToPrefixStillPrefix!1027 Nil!59924 input!5707))))

(assert (=> b!5163882 (= lt!2123431 (++!13093 Nil!59924 (Cons!59924 (head!11000 input!5707) Nil!59924)))))

(declare-fun lt!2123438 () Unit!151371)

(assert (=> b!5163882 (= lt!2123438 e!3217507)))

(declare-fun c!888418 () Bool)

(assert (=> b!5163882 (= c!888418 (= (size!39582 Nil!59924) (size!39582 input!5707)))))

(declare-fun lt!2123445 () Unit!151371)

(declare-fun lt!2123440 () Unit!151371)

(assert (=> b!5163882 (= lt!2123445 lt!2123440)))

(assert (=> b!5163882 (<= (size!39582 Nil!59924) (size!39582 input!5707))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!867 (List!60048 List!60048) Unit!151371)

(assert (=> b!5163882 (= lt!2123440 (lemmaIsPrefixThenSmallerEqSize!867 Nil!59924 input!5707))))

(assert (=> b!5163882 (= e!3217503 e!3217509)))

(declare-fun bm!362139 () Bool)

(declare-fun derivationStepZipper!934 ((Set Context!7860) C!29362) (Set Context!7860))

(assert (=> bm!362139 (= call!362141 (derivationStepZipper!934 z!4413 call!362146))))

(declare-fun b!5163883 () Bool)

(declare-fun c!888420 () Bool)

(assert (=> b!5163883 (= c!888420 call!362140)))

(declare-fun lt!2123435 () Unit!151371)

(declare-fun lt!2123443 () Unit!151371)

(assert (=> b!5163883 (= lt!2123435 lt!2123443)))

(assert (=> b!5163883 (= input!5707 Nil!59924)))

(assert (=> b!5163883 (= lt!2123443 call!362143)))

(declare-fun lt!2123434 () Unit!151371)

(declare-fun lt!2123452 () Unit!151371)

(assert (=> b!5163883 (= lt!2123434 lt!2123452)))

(declare-fun call!362144 () Bool)

(assert (=> b!5163883 call!362144))

(assert (=> b!5163883 (= lt!2123452 call!362142)))

(assert (=> b!5163883 (= e!3217503 e!3217508)))

(declare-fun b!5163884 () Bool)

(declare-fun Unit!151377 () Unit!151371)

(assert (=> b!5163884 (= e!3217507 Unit!151377)))

(declare-fun lt!2123432 () Unit!151371)

(assert (=> b!5163884 (= lt!2123432 call!362142)))

(assert (=> b!5163884 call!362144))

(declare-fun lt!2123447 () Unit!151371)

(assert (=> b!5163884 (= lt!2123447 lt!2123432)))

(declare-fun lt!2123441 () Unit!151371)

(assert (=> b!5163884 (= lt!2123441 call!362143)))

(assert (=> b!5163884 (= input!5707 Nil!59924)))

(declare-fun lt!2123448 () Unit!151371)

(assert (=> b!5163884 (= lt!2123448 lt!2123441)))

(assert (=> b!5163884 false))

(declare-fun bm!362140 () Bool)

(assert (=> bm!362140 (= call!362145 (tail!10111 input!5707))))

(declare-fun bm!362141 () Bool)

(assert (=> bm!362141 (= call!362144 (isPrefix!5679 input!5707 input!5707))))

(declare-fun b!5163885 () Bool)

(assert (=> b!5163885 (= e!3217502 (tuple2!63663 Nil!59924 input!5707))))

(declare-fun bm!362142 () Bool)

(declare-fun nullableZipper!1115 ((Set Context!7860)) Bool)

(assert (=> bm!362142 (= call!362140 (nullableZipper!1115 z!4413))))

(declare-fun b!5163886 () Bool)

(assert (=> b!5163886 (= e!3217508 (tuple2!63663 Nil!59924 Nil!59924))))

(assert (= (and d!1666249 c!888419) b!5163879))

(assert (= (and d!1666249 (not c!888419)) b!5163873))

(assert (= (and b!5163873 c!888421) b!5163883))

(assert (= (and b!5163873 (not c!888421)) b!5163882))

(assert (= (and b!5163883 c!888420) b!5163886))

(assert (= (and b!5163883 (not c!888420)) b!5163875))

(assert (= (and b!5163882 c!888418) b!5163884))

(assert (= (and b!5163882 (not c!888418)) b!5163878))

(assert (= (and b!5163882 c!888417) b!5163880))

(assert (= (and b!5163882 (not c!888417)) b!5163877))

(assert (= (and b!5163880 c!888422) b!5163885))

(assert (= (and b!5163880 (not c!888422)) b!5163876))

(assert (= (or b!5163880 b!5163877) bm!362138))

(assert (= (or b!5163880 b!5163877) bm!362140))

(assert (= (or b!5163880 b!5163877) bm!362139))

(assert (= (or b!5163880 b!5163877) bm!362137))

(assert (= (or b!5163883 b!5163884) bm!362141))

(assert (= (or b!5163883 b!5163884) bm!362136))

(assert (= (or b!5163883 b!5163882) bm!362142))

(assert (= (or b!5163883 b!5163884) bm!362135))

(assert (= (and d!1666249 res!2195390) b!5163874))

(assert (= (and b!5163874 (not res!2195391)) b!5163881))

(declare-fun m!6214500 () Bool)

(assert (=> bm!362138 m!6214500))

(assert (=> bm!362140 m!6214488))

(declare-fun m!6214502 () Bool)

(assert (=> b!5163881 m!6214502))

(assert (=> b!5163881 m!6214428))

(declare-fun m!6214504 () Bool)

(assert (=> bm!362141 m!6214504))

(declare-fun m!6214506 () Bool)

(assert (=> bm!362135 m!6214506))

(declare-fun m!6214508 () Bool)

(assert (=> bm!362139 m!6214508))

(declare-fun m!6214510 () Bool)

(assert (=> b!5163874 m!6214510))

(declare-fun m!6214512 () Bool)

(assert (=> b!5163882 m!6214512))

(declare-fun m!6214514 () Bool)

(assert (=> b!5163882 m!6214514))

(declare-fun m!6214516 () Bool)

(assert (=> b!5163882 m!6214516))

(assert (=> b!5163882 m!6214488))

(declare-fun m!6214518 () Bool)

(assert (=> b!5163882 m!6214518))

(assert (=> b!5163882 m!6214426))

(declare-fun m!6214520 () Bool)

(assert (=> b!5163882 m!6214520))

(assert (=> b!5163882 m!6214514))

(assert (=> b!5163882 m!6214500))

(assert (=> b!5163882 m!6214426))

(declare-fun m!6214522 () Bool)

(assert (=> b!5163882 m!6214522))

(assert (=> b!5163882 m!6214440))

(declare-fun m!6214524 () Bool)

(assert (=> b!5163882 m!6214524))

(declare-fun m!6214526 () Bool)

(assert (=> b!5163882 m!6214526))

(assert (=> b!5163882 m!6214428))

(assert (=> b!5163882 m!6214518))

(declare-fun m!6214528 () Bool)

(assert (=> b!5163882 m!6214528))

(declare-fun m!6214530 () Bool)

(assert (=> bm!362136 m!6214530))

(declare-fun m!6214532 () Bool)

(assert (=> d!1666249 m!6214532))

(declare-fun m!6214534 () Bool)

(assert (=> d!1666249 m!6214534))

(declare-fun m!6214536 () Bool)

(assert (=> d!1666249 m!6214536))

(declare-fun m!6214538 () Bool)

(assert (=> d!1666249 m!6214538))

(declare-fun m!6214540 () Bool)

(assert (=> d!1666249 m!6214540))

(assert (=> d!1666249 m!6214538))

(assert (=> d!1666249 m!6214426))

(declare-fun m!6214542 () Bool)

(assert (=> d!1666249 m!6214542))

(declare-fun m!6214544 () Bool)

(assert (=> bm!362137 m!6214544))

(declare-fun m!6214546 () Bool)

(assert (=> b!5163880 m!6214546))

(declare-fun m!6214548 () Bool)

(assert (=> bm!362142 m!6214548))

(assert (=> b!5163796 d!1666249))

(declare-fun d!1666251 () Bool)

(declare-fun e!3217513 () Bool)

(assert (=> d!1666251 e!3217513))

(declare-fun res!2195392 () Bool)

(assert (=> d!1666251 (=> (not res!2195392) (not e!3217513))))

(declare-fun lt!2123459 () tuple2!63662)

(assert (=> d!1666251 (= res!2195392 (= (++!13093 (_1!35134 lt!2123459) (_2!35134 lt!2123459)) input!5707))))

(declare-fun e!3217514 () tuple2!63662)

(assert (=> d!1666251 (= lt!2123459 e!3217514)))

(declare-fun c!888425 () Bool)

(assert (=> d!1666251 (= c!888425 (lostCauseZipper!1304 z!4413))))

(declare-fun lt!2123455 () Unit!151371)

(declare-fun Unit!151378 () Unit!151371)

(assert (=> d!1666251 (= lt!2123455 Unit!151378)))

(assert (=> d!1666251 (= (getSuffix!3333 input!5707 Nil!59924) lt!2123340)))

(declare-fun lt!2123465 () Unit!151371)

(declare-fun lt!2123475 () Unit!151371)

(assert (=> d!1666251 (= lt!2123465 lt!2123475)))

(declare-fun lt!2123477 () List!60048)

(assert (=> d!1666251 (= lt!2123340 lt!2123477)))

(assert (=> d!1666251 (= lt!2123475 (lemmaSamePrefixThenSameSuffix!2671 Nil!59924 lt!2123340 Nil!59924 lt!2123477 input!5707))))

(assert (=> d!1666251 (= lt!2123477 (getSuffix!3333 input!5707 Nil!59924))))

(declare-fun lt!2123456 () Unit!151371)

(declare-fun lt!2123462 () Unit!151371)

(assert (=> d!1666251 (= lt!2123456 lt!2123462)))

(assert (=> d!1666251 (isPrefix!5679 Nil!59924 (++!13093 Nil!59924 lt!2123340))))

(assert (=> d!1666251 (= lt!2123462 (lemmaConcatTwoListThenFirstIsPrefix!3565 Nil!59924 lt!2123340))))

(assert (=> d!1666251 (= (++!13093 Nil!59924 lt!2123340) input!5707)))

(assert (=> d!1666251 (= (findLongestMatchInnerZipper!212 z!4413 Nil!59924 lt!2123339 lt!2123340 input!5707 lt!2123344) lt!2123459)))

(declare-fun b!5163887 () Bool)

(declare-fun e!3217511 () tuple2!63662)

(assert (=> b!5163887 (= e!3217514 e!3217511)))

(declare-fun c!888427 () Bool)

(assert (=> b!5163887 (= c!888427 (= lt!2123339 lt!2123344))))

(declare-fun b!5163888 () Bool)

(declare-fun e!3217512 () Bool)

(assert (=> b!5163888 (= e!3217513 e!3217512)))

(declare-fun res!2195393 () Bool)

(assert (=> b!5163888 (=> res!2195393 e!3217512)))

(assert (=> b!5163888 (= res!2195393 (isEmpty!32094 (_1!35134 lt!2123459)))))

(declare-fun b!5163889 () Bool)

(declare-fun e!3217516 () tuple2!63662)

(assert (=> b!5163889 (= e!3217516 (tuple2!63663 Nil!59924 input!5707))))

(declare-fun b!5163890 () Bool)

(declare-fun e!3217510 () tuple2!63662)

(declare-fun lt!2123472 () tuple2!63662)

(assert (=> b!5163890 (= e!3217510 lt!2123472)))

(declare-fun b!5163891 () Bool)

(declare-fun e!3217517 () tuple2!63662)

(declare-fun call!362155 () tuple2!63662)

(assert (=> b!5163891 (= e!3217517 call!362155)))

(declare-fun bm!362143 () Bool)

(declare-fun call!362151 () Unit!151371)

(assert (=> bm!362143 (= call!362151 (lemmaIsPrefixSameLengthThenSameList!1357 input!5707 Nil!59924 input!5707))))

(declare-fun b!5163892 () Bool)

(declare-fun e!3217515 () Unit!151371)

(declare-fun Unit!151379 () Unit!151371)

(assert (=> b!5163892 (= e!3217515 Unit!151379)))

(declare-fun bm!362144 () Bool)

(declare-fun call!362150 () Unit!151371)

(assert (=> bm!362144 (= call!362150 (lemmaIsPrefixRefl!3713 input!5707 input!5707))))

(declare-fun lt!2123457 () List!60048)

(declare-fun call!362153 () List!60048)

(declare-fun bm!362145 () Bool)

(declare-fun call!362149 () (Set Context!7860))

(assert (=> bm!362145 (= call!362155 (findLongestMatchInnerZipper!212 call!362149 lt!2123457 (+ lt!2123339 1) call!362153 input!5707 lt!2123344))))

(declare-fun b!5163893 () Bool)

(assert (=> b!5163893 (= e!3217514 (tuple2!63663 Nil!59924 input!5707))))

(declare-fun bm!362146 () Bool)

(declare-fun call!362154 () C!29362)

(assert (=> bm!362146 (= call!362154 (head!11000 lt!2123340))))

(declare-fun b!5163894 () Bool)

(assert (=> b!5163894 (= e!3217517 e!3217510)))

(assert (=> b!5163894 (= lt!2123472 call!362155)))

(declare-fun c!888428 () Bool)

(assert (=> b!5163894 (= c!888428 (isEmpty!32094 (_1!35134 lt!2123472)))))

(declare-fun b!5163895 () Bool)

(assert (=> b!5163895 (= e!3217512 (>= (size!39582 (_1!35134 lt!2123459)) (size!39582 Nil!59924)))))

(declare-fun b!5163896 () Bool)

(declare-fun c!888423 () Bool)

(declare-fun call!362148 () Bool)

(assert (=> b!5163896 (= c!888423 call!362148)))

(declare-fun lt!2123454 () Unit!151371)

(declare-fun lt!2123470 () Unit!151371)

(assert (=> b!5163896 (= lt!2123454 lt!2123470)))

(declare-fun lt!2123463 () C!29362)

(declare-fun lt!2123468 () List!60048)

(assert (=> b!5163896 (= (++!13093 (++!13093 Nil!59924 (Cons!59924 lt!2123463 Nil!59924)) lt!2123468) input!5707)))

(assert (=> b!5163896 (= lt!2123470 (lemmaMoveElementToOtherListKeepsConcatEq!1552 Nil!59924 lt!2123463 lt!2123468 input!5707))))

(assert (=> b!5163896 (= lt!2123468 (tail!10111 lt!2123340))))

(assert (=> b!5163896 (= lt!2123463 (head!11000 lt!2123340))))

(declare-fun lt!2123453 () Unit!151371)

(declare-fun lt!2123476 () Unit!151371)

(assert (=> b!5163896 (= lt!2123453 lt!2123476)))

(assert (=> b!5163896 (isPrefix!5679 (++!13093 Nil!59924 (Cons!59924 (head!11000 (getSuffix!3333 input!5707 Nil!59924)) Nil!59924)) input!5707)))

(assert (=> b!5163896 (= lt!2123476 (lemmaAddHeadSuffixToPrefixStillPrefix!1027 Nil!59924 input!5707))))

(assert (=> b!5163896 (= lt!2123457 (++!13093 Nil!59924 (Cons!59924 (head!11000 lt!2123340) Nil!59924)))))

(declare-fun lt!2123464 () Unit!151371)

(assert (=> b!5163896 (= lt!2123464 e!3217515)))

(declare-fun c!888424 () Bool)

(assert (=> b!5163896 (= c!888424 (= (size!39582 Nil!59924) (size!39582 input!5707)))))

(declare-fun lt!2123471 () Unit!151371)

(declare-fun lt!2123466 () Unit!151371)

(assert (=> b!5163896 (= lt!2123471 lt!2123466)))

(assert (=> b!5163896 (<= (size!39582 Nil!59924) (size!39582 input!5707))))

(assert (=> b!5163896 (= lt!2123466 (lemmaIsPrefixThenSmallerEqSize!867 Nil!59924 input!5707))))

(assert (=> b!5163896 (= e!3217511 e!3217517)))

(declare-fun bm!362147 () Bool)

(assert (=> bm!362147 (= call!362149 (derivationStepZipper!934 z!4413 call!362154))))

(declare-fun b!5163897 () Bool)

(declare-fun c!888426 () Bool)

(assert (=> b!5163897 (= c!888426 call!362148)))

(declare-fun lt!2123461 () Unit!151371)

(declare-fun lt!2123469 () Unit!151371)

(assert (=> b!5163897 (= lt!2123461 lt!2123469)))

(assert (=> b!5163897 (= input!5707 Nil!59924)))

(assert (=> b!5163897 (= lt!2123469 call!362151)))

(declare-fun lt!2123460 () Unit!151371)

(declare-fun lt!2123478 () Unit!151371)

(assert (=> b!5163897 (= lt!2123460 lt!2123478)))

(declare-fun call!362152 () Bool)

(assert (=> b!5163897 call!362152))

(assert (=> b!5163897 (= lt!2123478 call!362150)))

(assert (=> b!5163897 (= e!3217511 e!3217516)))

(declare-fun b!5163898 () Bool)

(declare-fun Unit!151380 () Unit!151371)

(assert (=> b!5163898 (= e!3217515 Unit!151380)))

(declare-fun lt!2123458 () Unit!151371)

(assert (=> b!5163898 (= lt!2123458 call!362150)))

(assert (=> b!5163898 call!362152))

(declare-fun lt!2123473 () Unit!151371)

(assert (=> b!5163898 (= lt!2123473 lt!2123458)))

(declare-fun lt!2123467 () Unit!151371)

(assert (=> b!5163898 (= lt!2123467 call!362151)))

(assert (=> b!5163898 (= input!5707 Nil!59924)))

(declare-fun lt!2123474 () Unit!151371)

(assert (=> b!5163898 (= lt!2123474 lt!2123467)))

(assert (=> b!5163898 false))

(declare-fun bm!362148 () Bool)

(assert (=> bm!362148 (= call!362153 (tail!10111 lt!2123340))))

(declare-fun bm!362149 () Bool)

(assert (=> bm!362149 (= call!362152 (isPrefix!5679 input!5707 input!5707))))

(declare-fun b!5163899 () Bool)

(assert (=> b!5163899 (= e!3217510 (tuple2!63663 Nil!59924 lt!2123340))))

(declare-fun bm!362150 () Bool)

(assert (=> bm!362150 (= call!362148 (nullableZipper!1115 z!4413))))

(declare-fun b!5163900 () Bool)

(assert (=> b!5163900 (= e!3217516 (tuple2!63663 Nil!59924 Nil!59924))))

(assert (= (and d!1666251 c!888425) b!5163893))

(assert (= (and d!1666251 (not c!888425)) b!5163887))

(assert (= (and b!5163887 c!888427) b!5163897))

(assert (= (and b!5163887 (not c!888427)) b!5163896))

(assert (= (and b!5163897 c!888426) b!5163900))

(assert (= (and b!5163897 (not c!888426)) b!5163889))

(assert (= (and b!5163896 c!888424) b!5163898))

(assert (= (and b!5163896 (not c!888424)) b!5163892))

(assert (= (and b!5163896 c!888423) b!5163894))

(assert (= (and b!5163896 (not c!888423)) b!5163891))

(assert (= (and b!5163894 c!888428) b!5163899))

(assert (= (and b!5163894 (not c!888428)) b!5163890))

(assert (= (or b!5163894 b!5163891) bm!362146))

(assert (= (or b!5163894 b!5163891) bm!362148))

(assert (= (or b!5163894 b!5163891) bm!362147))

(assert (= (or b!5163894 b!5163891) bm!362145))

(assert (= (or b!5163897 b!5163898) bm!362149))

(assert (= (or b!5163897 b!5163898) bm!362144))

(assert (= (or b!5163897 b!5163896) bm!362150))

(assert (= (or b!5163897 b!5163898) bm!362143))

(assert (= (and d!1666251 res!2195392) b!5163888))

(assert (= (and b!5163888 (not res!2195393)) b!5163895))

(declare-fun m!6214550 () Bool)

(assert (=> bm!362146 m!6214550))

(declare-fun m!6214552 () Bool)

(assert (=> bm!362148 m!6214552))

(declare-fun m!6214554 () Bool)

(assert (=> b!5163895 m!6214554))

(assert (=> b!5163895 m!6214428))

(assert (=> bm!362149 m!6214504))

(assert (=> bm!362143 m!6214506))

(declare-fun m!6214556 () Bool)

(assert (=> bm!362147 m!6214556))

(declare-fun m!6214558 () Bool)

(assert (=> b!5163888 m!6214558))

(declare-fun m!6214560 () Bool)

(assert (=> b!5163896 m!6214560))

(assert (=> b!5163896 m!6214514))

(assert (=> b!5163896 m!6214516))

(assert (=> b!5163896 m!6214552))

(declare-fun m!6214562 () Bool)

(assert (=> b!5163896 m!6214562))

(assert (=> b!5163896 m!6214426))

(assert (=> b!5163896 m!6214520))

(assert (=> b!5163896 m!6214514))

(assert (=> b!5163896 m!6214550))

(assert (=> b!5163896 m!6214426))

(declare-fun m!6214564 () Bool)

(assert (=> b!5163896 m!6214564))

(assert (=> b!5163896 m!6214440))

(assert (=> b!5163896 m!6214524))

(assert (=> b!5163896 m!6214526))

(assert (=> b!5163896 m!6214428))

(assert (=> b!5163896 m!6214562))

(declare-fun m!6214566 () Bool)

(assert (=> b!5163896 m!6214566))

(assert (=> bm!362144 m!6214530))

(assert (=> d!1666251 m!6214532))

(declare-fun m!6214568 () Bool)

(assert (=> d!1666251 m!6214568))

(declare-fun m!6214570 () Bool)

(assert (=> d!1666251 m!6214570))

(declare-fun m!6214572 () Bool)

(assert (=> d!1666251 m!6214572))

(declare-fun m!6214574 () Bool)

(assert (=> d!1666251 m!6214574))

(assert (=> d!1666251 m!6214572))

(assert (=> d!1666251 m!6214426))

(declare-fun m!6214576 () Bool)

(assert (=> d!1666251 m!6214576))

(declare-fun m!6214578 () Bool)

(assert (=> bm!362145 m!6214578))

(declare-fun m!6214580 () Bool)

(assert (=> b!5163894 m!6214580))

(assert (=> bm!362150 m!6214548))

(assert (=> b!5163796 d!1666251))

(declare-fun d!1666253 () Bool)

(declare-fun lt!2123479 () Int)

(assert (=> d!1666253 (>= lt!2123479 0)))

(declare-fun e!3217518 () Int)

(assert (=> d!1666253 (= lt!2123479 e!3217518)))

(declare-fun c!888429 () Bool)

(assert (=> d!1666253 (= c!888429 (is-Nil!59924 Nil!59924))))

(assert (=> d!1666253 (= (size!39582 Nil!59924) lt!2123479)))

(declare-fun b!5163901 () Bool)

(assert (=> b!5163901 (= e!3217518 0)))

(declare-fun b!5163902 () Bool)

(assert (=> b!5163902 (= e!3217518 (+ 1 (size!39582 (t!373201 Nil!59924))))))

(assert (= (and d!1666253 c!888429) b!5163901))

(assert (= (and d!1666253 (not c!888429)) b!5163902))

(declare-fun m!6214582 () Bool)

(assert (=> b!5163902 m!6214582))

(assert (=> b!5163796 d!1666253))

(declare-fun d!1666255 () Bool)

(declare-fun c!888432 () Bool)

(assert (=> d!1666255 (= c!888432 (isEmpty!32094 (_1!35134 lt!2123343)))))

(declare-fun e!3217521 () Bool)

(assert (=> d!1666255 (= (matchZipper!946 z!4413 (_1!35134 lt!2123343)) e!3217521)))

(declare-fun b!5163907 () Bool)

(assert (=> b!5163907 (= e!3217521 (nullableZipper!1115 z!4413))))

(declare-fun b!5163908 () Bool)

(assert (=> b!5163908 (= e!3217521 (matchZipper!946 (derivationStepZipper!934 z!4413 (head!11000 (_1!35134 lt!2123343))) (tail!10111 (_1!35134 lt!2123343))))))

(assert (= (and d!1666255 c!888432) b!5163907))

(assert (= (and d!1666255 (not c!888432)) b!5163908))

(assert (=> d!1666255 m!6214432))

(assert (=> b!5163907 m!6214548))

(declare-fun m!6214584 () Bool)

(assert (=> b!5163908 m!6214584))

(assert (=> b!5163908 m!6214584))

(declare-fun m!6214586 () Bool)

(assert (=> b!5163908 m!6214586))

(declare-fun m!6214588 () Bool)

(assert (=> b!5163908 m!6214588))

(assert (=> b!5163908 m!6214586))

(assert (=> b!5163908 m!6214588))

(declare-fun m!6214590 () Bool)

(assert (=> b!5163908 m!6214590))

(assert (=> b!5163795 d!1666255))

(declare-fun d!1666257 () Bool)

(declare-fun c!888433 () Bool)

(assert (=> d!1666257 (= c!888433 (isEmpty!32094 (_1!35134 lt!2123342)))))

(declare-fun e!3217522 () Bool)

(assert (=> d!1666257 (= (matchZipper!946 z!4413 (_1!35134 lt!2123342)) e!3217522)))

(declare-fun b!5163909 () Bool)

(assert (=> b!5163909 (= e!3217522 (nullableZipper!1115 z!4413))))

(declare-fun b!5163910 () Bool)

(assert (=> b!5163910 (= e!3217522 (matchZipper!946 (derivationStepZipper!934 z!4413 (head!11000 (_1!35134 lt!2123342))) (tail!10111 (_1!35134 lt!2123342))))))

(assert (= (and d!1666257 c!888433) b!5163909))

(assert (= (and d!1666257 (not c!888433)) b!5163910))

(assert (=> d!1666257 m!6214438))

(assert (=> b!5163909 m!6214548))

(declare-fun m!6214592 () Bool)

(assert (=> b!5163910 m!6214592))

(assert (=> b!5163910 m!6214592))

(declare-fun m!6214594 () Bool)

(assert (=> b!5163910 m!6214594))

(declare-fun m!6214596 () Bool)

(assert (=> b!5163910 m!6214596))

(assert (=> b!5163910 m!6214594))

(assert (=> b!5163910 m!6214596))

(declare-fun m!6214598 () Bool)

(assert (=> b!5163910 m!6214598))

(assert (=> b!5163798 d!1666257))

(declare-fun d!1666259 () Bool)

(declare-fun e!3217531 () Bool)

(assert (=> d!1666259 e!3217531))

(declare-fun res!2195402 () Bool)

(assert (=> d!1666259 (=> res!2195402 e!3217531)))

(declare-fun lt!2123482 () Bool)

(assert (=> d!1666259 (= res!2195402 (not lt!2123482))))

(declare-fun e!3217529 () Bool)

(assert (=> d!1666259 (= lt!2123482 e!3217529)))

(declare-fun res!2195405 () Bool)

(assert (=> d!1666259 (=> res!2195405 e!3217529)))

(assert (=> d!1666259 (= res!2195405 (is-Nil!59924 Nil!59924))))

(assert (=> d!1666259 (= (isPrefix!5679 Nil!59924 input!5707) lt!2123482)))

(declare-fun b!5163921 () Bool)

(declare-fun e!3217530 () Bool)

(assert (=> b!5163921 (= e!3217530 (isPrefix!5679 (tail!10111 Nil!59924) (tail!10111 input!5707)))))

(declare-fun b!5163920 () Bool)

(declare-fun res!2195404 () Bool)

(assert (=> b!5163920 (=> (not res!2195404) (not e!3217530))))

(assert (=> b!5163920 (= res!2195404 (= (head!11000 Nil!59924) (head!11000 input!5707)))))

(declare-fun b!5163922 () Bool)

(assert (=> b!5163922 (= e!3217531 (>= (size!39582 input!5707) (size!39582 Nil!59924)))))

(declare-fun b!5163919 () Bool)

(assert (=> b!5163919 (= e!3217529 e!3217530)))

(declare-fun res!2195403 () Bool)

(assert (=> b!5163919 (=> (not res!2195403) (not e!3217530))))

(assert (=> b!5163919 (= res!2195403 (not (is-Nil!59924 input!5707)))))

(assert (= (and d!1666259 (not res!2195405)) b!5163919))

(assert (= (and b!5163919 res!2195403) b!5163920))

(assert (= (and b!5163920 res!2195404) b!5163921))

(assert (= (and d!1666259 (not res!2195402)) b!5163922))

(declare-fun m!6214602 () Bool)

(assert (=> b!5163921 m!6214602))

(assert (=> b!5163921 m!6214488))

(assert (=> b!5163921 m!6214602))

(assert (=> b!5163921 m!6214488))

(declare-fun m!6214604 () Bool)

(assert (=> b!5163921 m!6214604))

(declare-fun m!6214606 () Bool)

(assert (=> b!5163920 m!6214606))

(assert (=> b!5163920 m!6214500))

(assert (=> b!5163922 m!6214440))

(assert (=> b!5163922 m!6214428))

(assert (=> start!546262 d!1666259))

(declare-fun d!1666263 () Bool)

(declare-fun c!888439 () Bool)

(assert (=> d!1666263 (= c!888439 (is-Cons!59924 Nil!59924))))

(declare-fun e!3217537 () (Set Context!7860))

(assert (=> d!1666263 (= (derivationZipper!169 z!4413 Nil!59924) e!3217537)))

(declare-fun b!5163933 () Bool)

(assert (=> b!5163933 (= e!3217537 (derivationZipper!169 (derivationStepZipper!934 z!4413 (h!66372 Nil!59924)) (t!373201 Nil!59924)))))

(declare-fun b!5163934 () Bool)

(assert (=> b!5163934 (= e!3217537 z!4413)))

(assert (= (and d!1666263 c!888439) b!5163933))

(assert (= (and d!1666263 (not c!888439)) b!5163934))

(declare-fun m!6214610 () Bool)

(assert (=> b!5163933 m!6214610))

(assert (=> b!5163933 m!6214610))

(declare-fun m!6214612 () Bool)

(assert (=> b!5163933 m!6214612))

(assert (=> b!5163797 d!1666263))

(declare-fun condSetEmpty!31445 () Bool)

(assert (=> setNonEmpty!31439 (= condSetEmpty!31445 (= setRest!31439 (as set.empty (Set Context!7860))))))

(declare-fun setRes!31445 () Bool)

(assert (=> setNonEmpty!31439 (= tp!1448323 setRes!31445)))

(declare-fun setIsEmpty!31445 () Bool)

(assert (=> setIsEmpty!31445 setRes!31445))

(declare-fun tp!1448338 () Bool)

(declare-fun setElem!31445 () Context!7860)

(declare-fun e!3217540 () Bool)

(declare-fun setNonEmpty!31445 () Bool)

(assert (=> setNonEmpty!31445 (= setRes!31445 (and tp!1448338 (inv!79613 setElem!31445) e!3217540))))

(declare-fun setRest!31445 () (Set Context!7860))

(assert (=> setNonEmpty!31445 (= setRest!31439 (set.union (set.insert setElem!31445 (as set.empty (Set Context!7860))) setRest!31445))))

(declare-fun b!5163939 () Bool)

(declare-fun tp!1448339 () Bool)

(assert (=> b!5163939 (= e!3217540 tp!1448339)))

(assert (= (and setNonEmpty!31439 condSetEmpty!31445) setIsEmpty!31445))

(assert (= (and setNonEmpty!31439 (not condSetEmpty!31445)) setNonEmpty!31445))

(assert (= setNonEmpty!31445 b!5163939))

(declare-fun m!6214614 () Bool)

(assert (=> setNonEmpty!31445 m!6214614))

(declare-fun b!5163948 () Bool)

(declare-fun e!3217545 () Bool)

(declare-fun tp!1448342 () Bool)

(assert (=> b!5163948 (= e!3217545 (and tp_is_empty!38345 tp!1448342))))

(assert (=> b!5163799 (= tp!1448324 e!3217545)))

(assert (= (and b!5163799 (is-Cons!59924 (t!373201 input!5707))) b!5163948))

(declare-fun b!5163953 () Bool)

(declare-fun e!3217548 () Bool)

(declare-fun tp!1448347 () Bool)

(declare-fun tp!1448348 () Bool)

(assert (=> b!5163953 (= e!3217548 (and tp!1448347 tp!1448348))))

(assert (=> b!5163794 (= tp!1448322 e!3217548)))

(assert (= (and b!5163794 (is-Cons!59923 (exprs!4430 setElem!31439))) b!5163953))

(push 1)

(assert (not b!5163835))

(assert (not b!5163895))

(assert (not b!5163894))

(assert (not b!5163909))

(assert (not b!5163880))

(assert (not bm!362139))

(assert (not b!5163933))

(assert (not bm!362145))

(assert (not setNonEmpty!31445))

(assert (not b!5163948))

(assert (not d!1666255))

(assert (not b!5163908))

(assert (not bm!362140))

(assert (not bm!362146))

(assert (not b!5163922))

(assert (not bm!362142))

(assert (not d!1666247))

(assert (not d!1666245))

(assert (not b!5163921))

(assert (not bm!362150))

(assert (not b!5163920))

(assert (not b!5163881))

(assert (not bm!362143))

(assert (not d!1666257))

(assert (not bm!362135))

(assert (not b!5163874))

(assert (not bm!362138))

(assert (not b!5163902))

(assert (not bm!362149))

(assert (not b!5163907))

(assert (not bm!362137))

(assert (not bm!362148))

(assert (not b!5163910))

(assert (not b!5163939))

(assert (not d!1666235))

(assert (not bm!362147))

(assert (not d!1666249))

(assert (not bm!362141))

(assert (not b!5163953))

(assert (not bm!362144))

(assert (not b!5163840))

(assert (not b!5163882))

(assert (not b!5163896))

(assert (not d!1666251))

(assert tp_is_empty!38345)

(assert (not b!5163844))

(assert (not bm!362136))

(assert (not b!5163888))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

