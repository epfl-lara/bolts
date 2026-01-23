; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!538270 () Bool)

(assert start!538270)

(declare-fun b!5104394 () Bool)

(declare-fun e!3183513 () Bool)

(declare-datatypes ((C!28390 0))(
  ( (C!28391 (val!23847 Int)) )
))
(declare-datatypes ((List!58984 0))(
  ( (Nil!58860) (Cons!58860 (h!65308 C!28390) (t!371985 List!58984)) )
))
(declare-datatypes ((tuple2!63518 0))(
  ( (tuple2!63519 (_1!35062 List!58984) (_2!35062 List!58984)) )
))
(declare-fun lt!2100326 () tuple2!63518)

(declare-fun isEmpty!31811 (List!58984) Bool)

(assert (=> b!5104394 (= e!3183513 (not (isEmpty!31811 (_1!35062 lt!2100326))))))

(declare-fun b!5104396 () Bool)

(declare-fun e!3183507 () Bool)

(declare-fun e!3183516 () Bool)

(assert (=> b!5104396 (= e!3183507 e!3183516)))

(declare-fun res!2172581 () Bool)

(assert (=> b!5104396 (=> (not res!2172581) (not e!3183516))))

(declare-fun lt!2100324 () List!58984)

(declare-fun input!5654 () List!58984)

(assert (=> b!5104396 (= res!2172581 (= lt!2100324 input!5654))))

(declare-fun lt!2100322 () tuple2!63518)

(declare-fun ++!12915 (List!58984 List!58984) List!58984)

(assert (=> b!5104396 (= lt!2100324 (++!12915 (_1!35062 lt!2100322) (_2!35062 lt!2100322)))))

(declare-datatypes ((Regex!14066 0))(
  ( (ElementMatch!14066 (c!876900 C!28390)) (Concat!22911 (regOne!28644 Regex!14066) (regTwo!28644 Regex!14066)) (EmptyExpr!14066) (Star!14066 (reg!14395 Regex!14066)) (EmptyLang!14066) (Union!14066 (regOne!28645 Regex!14066) (regTwo!28645 Regex!14066)) )
))
(declare-fun r!12920 () Regex!14066)

(declare-fun findLongestMatch!1896 (Regex!14066 List!58984) tuple2!63518)

(assert (=> b!5104396 (= lt!2100326 (findLongestMatch!1896 r!12920 input!5654))))

(declare-datatypes ((List!58985 0))(
  ( (Nil!58861) (Cons!58861 (h!65309 Regex!14066) (t!371986 List!58985)) )
))
(declare-datatypes ((Context!6900 0))(
  ( (Context!6901 (exprs!3950 List!58985)) )
))
(declare-fun z!4303 () (Set Context!6900))

(declare-fun findLongestMatchZipper!90 ((Set Context!6900) List!58984) tuple2!63518)

(assert (=> b!5104396 (= lt!2100322 (findLongestMatchZipper!90 z!4303 input!5654))))

(declare-fun b!5104397 () Bool)

(declare-fun e!3183506 () Bool)

(declare-fun e!3183511 () Bool)

(assert (=> b!5104397 (= e!3183506 (not e!3183511))))

(declare-fun res!2172579 () Bool)

(assert (=> b!5104397 (=> res!2172579 e!3183511)))

(declare-fun e!3183508 () Bool)

(assert (=> b!5104397 (= res!2172579 e!3183508)))

(declare-fun res!2172575 () Bool)

(assert (=> b!5104397 (=> (not res!2172575) (not e!3183508))))

(declare-fun lt!2100313 () Bool)

(assert (=> b!5104397 (= res!2172575 (not lt!2100313))))

(declare-fun matchZipper!738 ((Set Context!6900) List!58984) Bool)

(assert (=> b!5104397 (= lt!2100313 (matchZipper!738 z!4303 (_1!35062 lt!2100322)))))

(declare-fun e!3183510 () Bool)

(assert (=> b!5104397 e!3183510))

(declare-fun res!2172572 () Bool)

(assert (=> b!5104397 (=> res!2172572 e!3183510)))

(declare-fun lt!2100320 () tuple2!63518)

(assert (=> b!5104397 (= res!2172572 (isEmpty!31811 (_1!35062 lt!2100320)))))

(declare-fun lt!2100325 () Int)

(declare-fun lt!2100314 () Int)

(declare-fun findLongestMatchInner!2079 (Regex!14066 List!58984 Int List!58984 List!58984 Int) tuple2!63518)

(assert (=> b!5104397 (= lt!2100320 (findLongestMatchInner!2079 r!12920 Nil!58860 lt!2100325 input!5654 input!5654 lt!2100314))))

(declare-datatypes ((Unit!149916 0))(
  ( (Unit!149917) )
))
(declare-fun lt!2100311 () Unit!149916)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2078 (Regex!14066 List!58984) Unit!149916)

(assert (=> b!5104397 (= lt!2100311 (longestMatchIsAcceptedByMatchOrIsEmpty!2078 r!12920 input!5654))))

(declare-fun e!3183517 () Bool)

(assert (=> b!5104397 e!3183517))

(declare-fun res!2172576 () Bool)

(assert (=> b!5104397 (=> res!2172576 e!3183517)))

(declare-fun lt!2100327 () tuple2!63518)

(assert (=> b!5104397 (= res!2172576 (isEmpty!31811 (_1!35062 lt!2100327)))))

(declare-fun findLongestMatchInnerZipper!140 ((Set Context!6900) List!58984 Int List!58984 List!58984 Int) tuple2!63518)

(assert (=> b!5104397 (= lt!2100327 (findLongestMatchInnerZipper!140 z!4303 Nil!58860 lt!2100325 input!5654 input!5654 lt!2100314))))

(declare-fun size!39368 (List!58984) Int)

(assert (=> b!5104397 (= lt!2100314 (size!39368 input!5654))))

(assert (=> b!5104397 (= lt!2100325 (size!39368 Nil!58860))))

(declare-fun lt!2100323 () Unit!149916)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmpty!2079 ((Set Context!6900) List!58984) Unit!149916)

(assert (=> b!5104397 (= lt!2100323 (longestMatchIsAcceptedByMatchOrIsEmpty!2079 z!4303 input!5654))))

(declare-fun lt!2100312 () List!58984)

(declare-fun isPrefix!5467 (List!58984 List!58984) Bool)

(assert (=> b!5104397 (isPrefix!5467 (_1!35062 lt!2100326) lt!2100312)))

(declare-fun lt!2100321 () Unit!149916)

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3525 (List!58984 List!58984) Unit!149916)

(assert (=> b!5104397 (= lt!2100321 (lemmaConcatTwoListThenFirstIsPrefix!3525 (_1!35062 lt!2100326) (_2!35062 lt!2100326)))))

(assert (=> b!5104397 (isPrefix!5467 (_1!35062 lt!2100322) lt!2100324)))

(declare-fun lt!2100319 () Unit!149916)

(assert (=> b!5104397 (= lt!2100319 (lemmaConcatTwoListThenFirstIsPrefix!3525 (_1!35062 lt!2100322) (_2!35062 lt!2100322)))))

(declare-fun tp!1423797 () Bool)

(declare-fun setRes!29305 () Bool)

(declare-fun e!3183514 () Bool)

(declare-fun setNonEmpty!29305 () Bool)

(declare-fun setElem!29305 () Context!6900)

(declare-fun inv!78341 (Context!6900) Bool)

(assert (=> setNonEmpty!29305 (= setRes!29305 (and tp!1423797 (inv!78341 setElem!29305) e!3183514))))

(declare-fun setRest!29305 () (Set Context!6900))

(assert (=> setNonEmpty!29305 (= z!4303 (set.union (set.insert setElem!29305 (as set.empty (Set Context!6900))) setRest!29305))))

(declare-fun b!5104398 () Bool)

(declare-fun e!3183519 () Bool)

(assert (=> b!5104398 (= e!3183511 e!3183519)))

(declare-fun res!2172571 () Bool)

(assert (=> b!5104398 (=> res!2172571 e!3183519)))

(assert (=> b!5104398 (= res!2172571 e!3183513)))

(declare-fun res!2172577 () Bool)

(assert (=> b!5104398 (=> (not res!2172577) (not e!3183513))))

(declare-fun lt!2100310 () Bool)

(assert (=> b!5104398 (= res!2172577 (not lt!2100310))))

(declare-fun matchR!6851 (Regex!14066 List!58984) Bool)

(assert (=> b!5104398 (= lt!2100310 (matchR!6851 r!12920 (_1!35062 lt!2100326)))))

(declare-fun b!5104399 () Bool)

(declare-fun e!3183515 () Bool)

(declare-fun tp_is_empty!37397 () Bool)

(assert (=> b!5104399 (= e!3183515 tp_is_empty!37397)))

(declare-fun b!5104400 () Bool)

(assert (=> b!5104400 (= e!3183517 (matchZipper!738 z!4303 (_1!35062 lt!2100327)))))

(declare-fun b!5104401 () Bool)

(declare-fun e!3183509 () Bool)

(declare-fun tp!1423796 () Bool)

(assert (=> b!5104401 (= e!3183509 (and tp_is_empty!37397 tp!1423796))))

(declare-fun b!5104402 () Bool)

(assert (=> b!5104402 (= e!3183508 (not (isEmpty!31811 (_1!35062 lt!2100322))))))

(declare-fun b!5104403 () Bool)

(declare-fun e!3183518 () Bool)

(assert (=> b!5104403 (= e!3183518 false)))

(declare-fun lt!2100317 () Bool)

(assert (=> b!5104403 (or (= (_1!35062 lt!2100322) (_1!35062 lt!2100326)) (not lt!2100317))))

(declare-fun lt!2100316 () Unit!149916)

(declare-fun longestMatchNoBiggerStringMatch!24 (Regex!14066 List!58984 List!58984 List!58984) Unit!149916)

(assert (=> b!5104403 (= lt!2100316 (longestMatchNoBiggerStringMatch!24 r!12920 input!5654 (_1!35062 lt!2100326) (_1!35062 lt!2100322)))))

(declare-fun b!5104404 () Bool)

(declare-fun tp!1423802 () Bool)

(assert (=> b!5104404 (= e!3183515 tp!1423802)))

(declare-fun setIsEmpty!29305 () Bool)

(assert (=> setIsEmpty!29305 setRes!29305))

(declare-fun b!5104405 () Bool)

(declare-fun e!3183512 () Bool)

(assert (=> b!5104405 (= e!3183512 e!3183507)))

(declare-fun res!2172573 () Bool)

(assert (=> b!5104405 (=> (not res!2172573) (not e!3183507))))

(declare-datatypes ((List!58986 0))(
  ( (Nil!58862) (Cons!58862 (h!65310 Context!6900) (t!371987 List!58986)) )
))
(declare-fun lt!2100315 () List!58986)

(declare-fun unfocusZipper!408 (List!58986) Regex!14066)

(assert (=> b!5104405 (= res!2172573 (= (unfocusZipper!408 lt!2100315) r!12920))))

(declare-fun toList!8200 ((Set Context!6900)) List!58986)

(assert (=> b!5104405 (= lt!2100315 (toList!8200 z!4303))))

(declare-fun b!5104395 () Bool)

(assert (=> b!5104395 (= e!3183519 e!3183518)))

(declare-fun res!2172574 () Bool)

(assert (=> b!5104395 (=> res!2172574 e!3183518)))

(declare-fun lt!2100318 () Int)

(declare-fun lt!2100309 () Int)

(assert (=> b!5104395 (= res!2172574 (or (> lt!2100318 lt!2100309) (<= lt!2100309 lt!2100318)))))

(assert (=> b!5104395 (= lt!2100309 (size!39368 (_1!35062 lt!2100322)))))

(assert (=> b!5104395 (= lt!2100318 (size!39368 (_1!35062 lt!2100326)))))

(assert (=> b!5104395 (= lt!2100317 lt!2100313)))

(assert (=> b!5104395 (= lt!2100317 (matchR!6851 r!12920 (_1!35062 lt!2100322)))))

(declare-fun lt!2100329 () Unit!149916)

(declare-fun theoremZipperRegexEquiv!230 ((Set Context!6900) List!58986 Regex!14066 List!58984) Unit!149916)

(assert (=> b!5104395 (= lt!2100329 (theoremZipperRegexEquiv!230 z!4303 lt!2100315 r!12920 (_1!35062 lt!2100322)))))

(assert (=> b!5104395 (= lt!2100310 (matchZipper!738 z!4303 (_1!35062 lt!2100326)))))

(declare-fun lt!2100328 () Unit!149916)

(assert (=> b!5104395 (= lt!2100328 (theoremZipperRegexEquiv!230 z!4303 lt!2100315 r!12920 (_1!35062 lt!2100326)))))

(declare-fun res!2172580 () Bool)

(assert (=> start!538270 (=> (not res!2172580) (not e!3183512))))

(declare-fun validRegex!6193 (Regex!14066) Bool)

(assert (=> start!538270 (= res!2172580 (validRegex!6193 r!12920))))

(assert (=> start!538270 e!3183512))

(assert (=> start!538270 e!3183515))

(declare-fun condSetEmpty!29305 () Bool)

(assert (=> start!538270 (= condSetEmpty!29305 (= z!4303 (as set.empty (Set Context!6900))))))

(assert (=> start!538270 setRes!29305))

(assert (=> start!538270 e!3183509))

(declare-fun b!5104406 () Bool)

(declare-fun tp!1423799 () Bool)

(assert (=> b!5104406 (= e!3183514 tp!1423799)))

(declare-fun b!5104407 () Bool)

(declare-fun tp!1423798 () Bool)

(declare-fun tp!1423803 () Bool)

(assert (=> b!5104407 (= e!3183515 (and tp!1423798 tp!1423803))))

(declare-fun b!5104408 () Bool)

(assert (=> b!5104408 (= e!3183516 e!3183506)))

(declare-fun res!2172578 () Bool)

(assert (=> b!5104408 (=> (not res!2172578) (not e!3183506))))

(assert (=> b!5104408 (= res!2172578 (= lt!2100312 input!5654))))

(assert (=> b!5104408 (= lt!2100312 (++!12915 (_1!35062 lt!2100326) (_2!35062 lt!2100326)))))

(declare-fun b!5104409 () Bool)

(assert (=> b!5104409 (= e!3183510 (matchR!6851 r!12920 (_1!35062 lt!2100320)))))

(declare-fun b!5104410 () Bool)

(declare-fun tp!1423801 () Bool)

(declare-fun tp!1423800 () Bool)

(assert (=> b!5104410 (= e!3183515 (and tp!1423801 tp!1423800))))

(assert (= (and start!538270 res!2172580) b!5104405))

(assert (= (and b!5104405 res!2172573) b!5104396))

(assert (= (and b!5104396 res!2172581) b!5104408))

(assert (= (and b!5104408 res!2172578) b!5104397))

(assert (= (and b!5104397 (not res!2172576)) b!5104400))

(assert (= (and b!5104397 (not res!2172572)) b!5104409))

(assert (= (and b!5104397 res!2172575) b!5104402))

(assert (= (and b!5104397 (not res!2172579)) b!5104398))

(assert (= (and b!5104398 res!2172577) b!5104394))

(assert (= (and b!5104398 (not res!2172571)) b!5104395))

(assert (= (and b!5104395 (not res!2172574)) b!5104403))

(assert (= (and start!538270 (is-ElementMatch!14066 r!12920)) b!5104399))

(assert (= (and start!538270 (is-Concat!22911 r!12920)) b!5104407))

(assert (= (and start!538270 (is-Star!14066 r!12920)) b!5104404))

(assert (= (and start!538270 (is-Union!14066 r!12920)) b!5104410))

(assert (= (and start!538270 condSetEmpty!29305) setIsEmpty!29305))

(assert (= (and start!538270 (not condSetEmpty!29305)) setNonEmpty!29305))

(assert (= setNonEmpty!29305 b!5104406))

(assert (= (and start!538270 (is-Cons!58860 input!5654)) b!5104401))

(declare-fun m!6161682 () Bool)

(assert (=> b!5104402 m!6161682))

(declare-fun m!6161684 () Bool)

(assert (=> b!5104408 m!6161684))

(declare-fun m!6161686 () Bool)

(assert (=> b!5104398 m!6161686))

(declare-fun m!6161688 () Bool)

(assert (=> b!5104394 m!6161688))

(declare-fun m!6161690 () Bool)

(assert (=> setNonEmpty!29305 m!6161690))

(declare-fun m!6161692 () Bool)

(assert (=> b!5104400 m!6161692))

(declare-fun m!6161694 () Bool)

(assert (=> b!5104397 m!6161694))

(declare-fun m!6161696 () Bool)

(assert (=> b!5104397 m!6161696))

(declare-fun m!6161698 () Bool)

(assert (=> b!5104397 m!6161698))

(declare-fun m!6161700 () Bool)

(assert (=> b!5104397 m!6161700))

(declare-fun m!6161702 () Bool)

(assert (=> b!5104397 m!6161702))

(declare-fun m!6161704 () Bool)

(assert (=> b!5104397 m!6161704))

(declare-fun m!6161706 () Bool)

(assert (=> b!5104397 m!6161706))

(declare-fun m!6161708 () Bool)

(assert (=> b!5104397 m!6161708))

(declare-fun m!6161710 () Bool)

(assert (=> b!5104397 m!6161710))

(declare-fun m!6161712 () Bool)

(assert (=> b!5104397 m!6161712))

(declare-fun m!6161714 () Bool)

(assert (=> b!5104397 m!6161714))

(declare-fun m!6161716 () Bool)

(assert (=> b!5104397 m!6161716))

(declare-fun m!6161718 () Bool)

(assert (=> b!5104397 m!6161718))

(declare-fun m!6161720 () Bool)

(assert (=> b!5104405 m!6161720))

(declare-fun m!6161722 () Bool)

(assert (=> b!5104405 m!6161722))

(declare-fun m!6161724 () Bool)

(assert (=> b!5104395 m!6161724))

(declare-fun m!6161726 () Bool)

(assert (=> b!5104395 m!6161726))

(declare-fun m!6161728 () Bool)

(assert (=> b!5104395 m!6161728))

(declare-fun m!6161730 () Bool)

(assert (=> b!5104395 m!6161730))

(declare-fun m!6161732 () Bool)

(assert (=> b!5104395 m!6161732))

(declare-fun m!6161734 () Bool)

(assert (=> b!5104395 m!6161734))

(declare-fun m!6161736 () Bool)

(assert (=> b!5104396 m!6161736))

(declare-fun m!6161738 () Bool)

(assert (=> b!5104396 m!6161738))

(declare-fun m!6161740 () Bool)

(assert (=> b!5104396 m!6161740))

(declare-fun m!6161742 () Bool)

(assert (=> start!538270 m!6161742))

(declare-fun m!6161744 () Bool)

(assert (=> b!5104409 m!6161744))

(declare-fun m!6161746 () Bool)

(assert (=> b!5104403 m!6161746))

(push 1)

(assert (not b!5104401))

(assert (not start!538270))

(assert (not b!5104409))

(assert (not b!5104407))

(assert (not b!5104410))

(assert (not b!5104400))

(assert (not b!5104397))

(assert (not b!5104406))

(assert (not b!5104405))

(assert (not b!5104402))

(assert (not b!5104408))

(assert (not b!5104398))

(assert (not b!5104394))

(assert (not setNonEmpty!29305))

(assert (not b!5104404))

(assert (not b!5104403))

(assert tp_is_empty!37397)

(assert (not b!5104396))

(assert (not b!5104395))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1650515 () Bool)

(declare-fun e!3183564 () Bool)

(assert (=> d!1650515 e!3183564))

(declare-fun res!2172617 () Bool)

(assert (=> d!1650515 (=> res!2172617 e!3183564)))

(assert (=> d!1650515 (= res!2172617 (= (_1!35062 lt!2100322) (_1!35062 lt!2100326)))))

(declare-fun lt!2100395 () Unit!149916)

(declare-fun choose!37403 (Regex!14066 List!58984 List!58984 List!58984) Unit!149916)

(assert (=> d!1650515 (= lt!2100395 (choose!37403 r!12920 input!5654 (_1!35062 lt!2100326) (_1!35062 lt!2100322)))))

(assert (=> d!1650515 (validRegex!6193 r!12920)))

(assert (=> d!1650515 (= (longestMatchNoBiggerStringMatch!24 r!12920 input!5654 (_1!35062 lt!2100326) (_1!35062 lt!2100322)) lt!2100395)))

(declare-fun b!5104464 () Bool)

(assert (=> b!5104464 (= e!3183564 (not (matchR!6851 r!12920 (_1!35062 lt!2100322))))))

(assert (= (and d!1650515 (not res!2172617)) b!5104464))

(declare-fun m!6161814 () Bool)

(assert (=> d!1650515 m!6161814))

(assert (=> d!1650515 m!6161742))

(assert (=> b!5104464 m!6161734))

(assert (=> b!5104403 d!1650515))

(declare-fun bm!355735 () Bool)

(declare-fun call!355742 () Bool)

(declare-fun c!876907 () Bool)

(assert (=> bm!355735 (= call!355742 (validRegex!6193 (ite c!876907 (regOne!28645 r!12920) (regTwo!28644 r!12920))))))

(declare-fun b!5104483 () Bool)

(declare-fun res!2172630 () Bool)

(declare-fun e!3183585 () Bool)

(assert (=> b!5104483 (=> (not res!2172630) (not e!3183585))))

(assert (=> b!5104483 (= res!2172630 call!355742)))

(declare-fun e!3183580 () Bool)

(assert (=> b!5104483 (= e!3183580 e!3183585)))

(declare-fun b!5104484 () Bool)

(declare-fun res!2172629 () Bool)

(declare-fun e!3183579 () Bool)

(assert (=> b!5104484 (=> res!2172629 e!3183579)))

(assert (=> b!5104484 (= res!2172629 (not (is-Concat!22911 r!12920)))))

(assert (=> b!5104484 (= e!3183580 e!3183579)))

(declare-fun b!5104485 () Bool)

(declare-fun call!355740 () Bool)

(assert (=> b!5104485 (= e!3183585 call!355740)))

(declare-fun b!5104486 () Bool)

(declare-fun e!3183584 () Bool)

(assert (=> b!5104486 (= e!3183584 call!355742)))

(declare-fun b!5104487 () Bool)

(declare-fun e!3183581 () Bool)

(assert (=> b!5104487 (= e!3183581 e!3183580)))

(assert (=> b!5104487 (= c!876907 (is-Union!14066 r!12920))))

(declare-fun b!5104488 () Bool)

(declare-fun e!3183582 () Bool)

(assert (=> b!5104488 (= e!3183581 e!3183582)))

(declare-fun res!2172628 () Bool)

(declare-fun nullable!4724 (Regex!14066) Bool)

(assert (=> b!5104488 (= res!2172628 (not (nullable!4724 (reg!14395 r!12920))))))

(assert (=> b!5104488 (=> (not res!2172628) (not e!3183582))))

(declare-fun call!355741 () Bool)

(declare-fun bm!355736 () Bool)

(declare-fun c!876906 () Bool)

(assert (=> bm!355736 (= call!355741 (validRegex!6193 (ite c!876906 (reg!14395 r!12920) (ite c!876907 (regTwo!28645 r!12920) (regOne!28644 r!12920)))))))

(declare-fun b!5104489 () Bool)

(assert (=> b!5104489 (= e!3183579 e!3183584)))

(declare-fun res!2172631 () Bool)

(assert (=> b!5104489 (=> (not res!2172631) (not e!3183584))))

(assert (=> b!5104489 (= res!2172631 call!355740)))

(declare-fun d!1650517 () Bool)

(declare-fun res!2172632 () Bool)

(declare-fun e!3183583 () Bool)

(assert (=> d!1650517 (=> res!2172632 e!3183583)))

(assert (=> d!1650517 (= res!2172632 (is-ElementMatch!14066 r!12920))))

(assert (=> d!1650517 (= (validRegex!6193 r!12920) e!3183583)))

(declare-fun b!5104490 () Bool)

(assert (=> b!5104490 (= e!3183582 call!355741)))

(declare-fun bm!355737 () Bool)

(assert (=> bm!355737 (= call!355740 call!355741)))

(declare-fun b!5104491 () Bool)

(assert (=> b!5104491 (= e!3183583 e!3183581)))

(assert (=> b!5104491 (= c!876906 (is-Star!14066 r!12920))))

(assert (= (and d!1650517 (not res!2172632)) b!5104491))

(assert (= (and b!5104491 c!876906) b!5104488))

(assert (= (and b!5104491 (not c!876906)) b!5104487))

(assert (= (and b!5104488 res!2172628) b!5104490))

(assert (= (and b!5104487 c!876907) b!5104483))

(assert (= (and b!5104487 (not c!876907)) b!5104484))

(assert (= (and b!5104483 res!2172630) b!5104485))

(assert (= (and b!5104484 (not res!2172629)) b!5104489))

(assert (= (and b!5104489 res!2172631) b!5104486))

(assert (= (or b!5104485 b!5104489) bm!355737))

(assert (= (or b!5104483 b!5104486) bm!355735))

(assert (= (or b!5104490 bm!355737) bm!355736))

(declare-fun m!6161816 () Bool)

(assert (=> bm!355735 m!6161816))

(declare-fun m!6161818 () Bool)

(assert (=> b!5104488 m!6161818))

(declare-fun m!6161820 () Bool)

(assert (=> bm!355736 m!6161820))

(assert (=> start!538270 d!1650517))

(declare-fun d!1650519 () Bool)

(assert (=> d!1650519 (= (isEmpty!31811 (_1!35062 lt!2100322)) (is-Nil!58860 (_1!35062 lt!2100322)))))

(assert (=> b!5104402 d!1650519))

(declare-fun d!1650521 () Bool)

(declare-fun e!3183591 () Bool)

(assert (=> d!1650521 e!3183591))

(declare-fun res!2172637 () Bool)

(assert (=> d!1650521 (=> (not res!2172637) (not e!3183591))))

(declare-fun lt!2100398 () List!58984)

(declare-fun content!10475 (List!58984) (Set C!28390))

(assert (=> d!1650521 (= res!2172637 (= (content!10475 lt!2100398) (set.union (content!10475 (_1!35062 lt!2100322)) (content!10475 (_2!35062 lt!2100322)))))))

(declare-fun e!3183590 () List!58984)

(assert (=> d!1650521 (= lt!2100398 e!3183590)))

(declare-fun c!876910 () Bool)

(assert (=> d!1650521 (= c!876910 (is-Nil!58860 (_1!35062 lt!2100322)))))

(assert (=> d!1650521 (= (++!12915 (_1!35062 lt!2100322) (_2!35062 lt!2100322)) lt!2100398)))

(declare-fun b!5104501 () Bool)

(assert (=> b!5104501 (= e!3183590 (Cons!58860 (h!65308 (_1!35062 lt!2100322)) (++!12915 (t!371985 (_1!35062 lt!2100322)) (_2!35062 lt!2100322))))))

(declare-fun b!5104502 () Bool)

(declare-fun res!2172638 () Bool)

(assert (=> b!5104502 (=> (not res!2172638) (not e!3183591))))

(assert (=> b!5104502 (= res!2172638 (= (size!39368 lt!2100398) (+ (size!39368 (_1!35062 lt!2100322)) (size!39368 (_2!35062 lt!2100322)))))))

(declare-fun b!5104503 () Bool)

(assert (=> b!5104503 (= e!3183591 (or (not (= (_2!35062 lt!2100322) Nil!58860)) (= lt!2100398 (_1!35062 lt!2100322))))))

(declare-fun b!5104500 () Bool)

(assert (=> b!5104500 (= e!3183590 (_2!35062 lt!2100322))))

(assert (= (and d!1650521 c!876910) b!5104500))

(assert (= (and d!1650521 (not c!876910)) b!5104501))

(assert (= (and d!1650521 res!2172637) b!5104502))

(assert (= (and b!5104502 res!2172638) b!5104503))

(declare-fun m!6161822 () Bool)

(assert (=> d!1650521 m!6161822))

(declare-fun m!6161824 () Bool)

(assert (=> d!1650521 m!6161824))

(declare-fun m!6161826 () Bool)

(assert (=> d!1650521 m!6161826))

(declare-fun m!6161828 () Bool)

(assert (=> b!5104501 m!6161828))

(declare-fun m!6161830 () Bool)

(assert (=> b!5104502 m!6161830))

(assert (=> b!5104502 m!6161724))

(declare-fun m!6161832 () Bool)

(assert (=> b!5104502 m!6161832))

(assert (=> b!5104396 d!1650521))

(declare-fun d!1650525 () Bool)

(declare-fun lt!2100419 () tuple2!63518)

(assert (=> d!1650525 (= (++!12915 (_1!35062 lt!2100419) (_2!35062 lt!2100419)) input!5654)))

(declare-fun sizeTr!434 (List!58984 Int) Int)

(assert (=> d!1650525 (= lt!2100419 (findLongestMatchInner!2079 r!12920 Nil!58860 0 input!5654 input!5654 (sizeTr!434 input!5654 0)))))

(declare-fun lt!2100424 () Unit!149916)

(declare-fun lt!2100423 () Unit!149916)

(assert (=> d!1650525 (= lt!2100424 lt!2100423)))

(declare-fun lt!2100425 () List!58984)

(declare-fun lt!2100420 () Int)

(assert (=> d!1650525 (= (sizeTr!434 lt!2100425 lt!2100420) (+ (size!39368 lt!2100425) lt!2100420))))

(declare-fun lemmaSizeTrEqualsSize!433 (List!58984 Int) Unit!149916)

(assert (=> d!1650525 (= lt!2100423 (lemmaSizeTrEqualsSize!433 lt!2100425 lt!2100420))))

(assert (=> d!1650525 (= lt!2100420 0)))

(assert (=> d!1650525 (= lt!2100425 Nil!58860)))

(declare-fun lt!2100421 () Unit!149916)

(declare-fun lt!2100417 () Unit!149916)

(assert (=> d!1650525 (= lt!2100421 lt!2100417)))

(declare-fun lt!2100422 () Int)

(assert (=> d!1650525 (= (sizeTr!434 input!5654 lt!2100422) (+ (size!39368 input!5654) lt!2100422))))

(assert (=> d!1650525 (= lt!2100417 (lemmaSizeTrEqualsSize!433 input!5654 lt!2100422))))

(assert (=> d!1650525 (= lt!2100422 0)))

(assert (=> d!1650525 (validRegex!6193 r!12920)))

(assert (=> d!1650525 (= (findLongestMatch!1896 r!12920 input!5654) lt!2100419)))

(declare-fun bs!1191604 () Bool)

(assert (= bs!1191604 d!1650525))

(declare-fun m!6161834 () Bool)

(assert (=> bs!1191604 m!6161834))

(assert (=> bs!1191604 m!6161714))

(declare-fun m!6161836 () Bool)

(assert (=> bs!1191604 m!6161836))

(declare-fun m!6161838 () Bool)

(assert (=> bs!1191604 m!6161838))

(declare-fun m!6161840 () Bool)

(assert (=> bs!1191604 m!6161840))

(declare-fun m!6161842 () Bool)

(assert (=> bs!1191604 m!6161842))

(declare-fun m!6161844 () Bool)

(assert (=> bs!1191604 m!6161844))

(declare-fun m!6161846 () Bool)

(assert (=> bs!1191604 m!6161846))

(assert (=> bs!1191604 m!6161742))

(assert (=> bs!1191604 m!6161842))

(declare-fun m!6161848 () Bool)

(assert (=> bs!1191604 m!6161848))

(assert (=> b!5104396 d!1650525))

(declare-fun d!1650527 () Bool)

(declare-fun lt!2100434 () tuple2!63518)

(assert (=> d!1650527 (= (++!12915 (_1!35062 lt!2100434) (_2!35062 lt!2100434)) input!5654)))

(assert (=> d!1650527 (= lt!2100434 (findLongestMatchInnerZipper!140 z!4303 Nil!58860 0 input!5654 input!5654 (sizeTr!434 input!5654 0)))))

(declare-fun lt!2100435 () Unit!149916)

(declare-fun lt!2100437 () Unit!149916)

(assert (=> d!1650527 (= lt!2100435 lt!2100437)))

(declare-fun lt!2100436 () Int)

(assert (=> d!1650527 (= (sizeTr!434 input!5654 lt!2100436) (+ (size!39368 input!5654) lt!2100436))))

(assert (=> d!1650527 (= lt!2100437 (lemmaSizeTrEqualsSize!433 input!5654 lt!2100436))))

(assert (=> d!1650527 (= lt!2100436 0)))

(assert (=> d!1650527 (= (findLongestMatchZipper!90 z!4303 input!5654) lt!2100434)))

(declare-fun bs!1191605 () Bool)

(assert (= bs!1191605 d!1650527))

(declare-fun m!6161862 () Bool)

(assert (=> bs!1191605 m!6161862))

(assert (=> bs!1191605 m!6161842))

(declare-fun m!6161864 () Bool)

(assert (=> bs!1191605 m!6161864))

(assert (=> bs!1191605 m!6161714))

(declare-fun m!6161866 () Bool)

(assert (=> bs!1191605 m!6161866))

(assert (=> bs!1191605 m!6161842))

(declare-fun m!6161868 () Bool)

(assert (=> bs!1191605 m!6161868))

(assert (=> b!5104396 d!1650527))

(declare-fun d!1650531 () Bool)

(declare-fun lt!2100440 () Regex!14066)

(assert (=> d!1650531 (validRegex!6193 lt!2100440)))

(declare-fun generalisedUnion!609 (List!58985) Regex!14066)

(declare-fun unfocusZipperList!122 (List!58986) List!58985)

(assert (=> d!1650531 (= lt!2100440 (generalisedUnion!609 (unfocusZipperList!122 lt!2100315)))))

(assert (=> d!1650531 (= (unfocusZipper!408 lt!2100315) lt!2100440)))

(declare-fun bs!1191606 () Bool)

(assert (= bs!1191606 d!1650531))

(declare-fun m!6161870 () Bool)

(assert (=> bs!1191606 m!6161870))

(declare-fun m!6161872 () Bool)

(assert (=> bs!1191606 m!6161872))

(assert (=> bs!1191606 m!6161872))

(declare-fun m!6161874 () Bool)

(assert (=> bs!1191606 m!6161874))

(assert (=> b!5104405 d!1650531))

(declare-fun d!1650533 () Bool)

(declare-fun e!3183600 () Bool)

(assert (=> d!1650533 e!3183600))

(declare-fun res!2172647 () Bool)

(assert (=> d!1650533 (=> (not res!2172647) (not e!3183600))))

(declare-fun lt!2100443 () List!58986)

(declare-fun noDuplicate!1068 (List!58986) Bool)

(assert (=> d!1650533 (= res!2172647 (noDuplicate!1068 lt!2100443))))

(declare-fun choose!37404 ((Set Context!6900)) List!58986)

(assert (=> d!1650533 (= lt!2100443 (choose!37404 z!4303))))

(assert (=> d!1650533 (= (toList!8200 z!4303) lt!2100443)))

(declare-fun b!5104518 () Bool)

(declare-fun content!10476 (List!58986) (Set Context!6900))

(assert (=> b!5104518 (= e!3183600 (= (content!10476 lt!2100443) z!4303))))

(assert (= (and d!1650533 res!2172647) b!5104518))

(declare-fun m!6161876 () Bool)

(assert (=> d!1650533 m!6161876))

(declare-fun m!6161878 () Bool)

(assert (=> d!1650533 m!6161878))

(declare-fun m!6161880 () Bool)

(assert (=> b!5104518 m!6161880))

(assert (=> b!5104405 d!1650533))

(declare-fun d!1650535 () Bool)

(assert (=> d!1650535 (= (isEmpty!31811 (_1!35062 lt!2100326)) (is-Nil!58860 (_1!35062 lt!2100326)))))

(assert (=> b!5104394 d!1650535))

(declare-fun d!1650537 () Bool)

(assert (=> d!1650537 (= (matchR!6851 r!12920 (_1!35062 lt!2100322)) (matchZipper!738 z!4303 (_1!35062 lt!2100322)))))

(declare-fun lt!2100446 () Unit!149916)

(declare-fun choose!37405 ((Set Context!6900) List!58986 Regex!14066 List!58984) Unit!149916)

(assert (=> d!1650537 (= lt!2100446 (choose!37405 z!4303 lt!2100315 r!12920 (_1!35062 lt!2100322)))))

(assert (=> d!1650537 (validRegex!6193 r!12920)))

(assert (=> d!1650537 (= (theoremZipperRegexEquiv!230 z!4303 lt!2100315 r!12920 (_1!35062 lt!2100322)) lt!2100446)))

(declare-fun bs!1191607 () Bool)

(assert (= bs!1191607 d!1650537))

(assert (=> bs!1191607 m!6161734))

(assert (=> bs!1191607 m!6161696))

(declare-fun m!6161882 () Bool)

(assert (=> bs!1191607 m!6161882))

(assert (=> bs!1191607 m!6161742))

(assert (=> b!5104395 d!1650537))

(declare-fun d!1650539 () Bool)

(declare-fun lt!2100463 () Int)

(assert (=> d!1650539 (>= lt!2100463 0)))

(declare-fun e!3183603 () Int)

(assert (=> d!1650539 (= lt!2100463 e!3183603)))

(declare-fun c!876916 () Bool)

(assert (=> d!1650539 (= c!876916 (is-Nil!58860 (_1!35062 lt!2100326)))))

(assert (=> d!1650539 (= (size!39368 (_1!35062 lt!2100326)) lt!2100463)))

(declare-fun b!5104523 () Bool)

(assert (=> b!5104523 (= e!3183603 0)))

(declare-fun b!5104524 () Bool)

(assert (=> b!5104524 (= e!3183603 (+ 1 (size!39368 (t!371985 (_1!35062 lt!2100326)))))))

(assert (= (and d!1650539 c!876916) b!5104523))

(assert (= (and d!1650539 (not c!876916)) b!5104524))

(declare-fun m!6161884 () Bool)

(assert (=> b!5104524 m!6161884))

(assert (=> b!5104395 d!1650539))

(declare-fun d!1650541 () Bool)

(declare-fun c!876919 () Bool)

(assert (=> d!1650541 (= c!876919 (isEmpty!31811 (_1!35062 lt!2100326)))))

(declare-fun e!3183606 () Bool)

(assert (=> d!1650541 (= (matchZipper!738 z!4303 (_1!35062 lt!2100326)) e!3183606)))

(declare-fun b!5104529 () Bool)

(declare-fun nullableZipper!965 ((Set Context!6900)) Bool)

(assert (=> b!5104529 (= e!3183606 (nullableZipper!965 z!4303))))

(declare-fun b!5104530 () Bool)

(declare-fun derivationStepZipper!753 ((Set Context!6900) C!28390) (Set Context!6900))

(declare-fun head!10840 (List!58984) C!28390)

(declare-fun tail!9995 (List!58984) List!58984)

(assert (=> b!5104530 (= e!3183606 (matchZipper!738 (derivationStepZipper!753 z!4303 (head!10840 (_1!35062 lt!2100326))) (tail!9995 (_1!35062 lt!2100326))))))

(assert (= (and d!1650541 c!876919) b!5104529))

(assert (= (and d!1650541 (not c!876919)) b!5104530))

(assert (=> d!1650541 m!6161688))

(declare-fun m!6161886 () Bool)

(assert (=> b!5104529 m!6161886))

(declare-fun m!6161888 () Bool)

(assert (=> b!5104530 m!6161888))

(assert (=> b!5104530 m!6161888))

(declare-fun m!6161890 () Bool)

(assert (=> b!5104530 m!6161890))

(declare-fun m!6161892 () Bool)

(assert (=> b!5104530 m!6161892))

(assert (=> b!5104530 m!6161890))

(assert (=> b!5104530 m!6161892))

(declare-fun m!6161894 () Bool)

(assert (=> b!5104530 m!6161894))

(assert (=> b!5104395 d!1650541))

(declare-fun d!1650543 () Bool)

(assert (=> d!1650543 (= (matchR!6851 r!12920 (_1!35062 lt!2100326)) (matchZipper!738 z!4303 (_1!35062 lt!2100326)))))

(declare-fun lt!2100474 () Unit!149916)

(assert (=> d!1650543 (= lt!2100474 (choose!37405 z!4303 lt!2100315 r!12920 (_1!35062 lt!2100326)))))

(assert (=> d!1650543 (validRegex!6193 r!12920)))

(assert (=> d!1650543 (= (theoremZipperRegexEquiv!230 z!4303 lt!2100315 r!12920 (_1!35062 lt!2100326)) lt!2100474)))

(declare-fun bs!1191608 () Bool)

(assert (= bs!1191608 d!1650543))

(assert (=> bs!1191608 m!6161686))

(assert (=> bs!1191608 m!6161730))

(declare-fun m!6161896 () Bool)

(assert (=> bs!1191608 m!6161896))

(assert (=> bs!1191608 m!6161742))

(assert (=> b!5104395 d!1650543))

(declare-fun b!5104559 () Bool)

(declare-fun e!3183623 () Bool)

(declare-fun lt!2100477 () Bool)

(declare-fun call!355745 () Bool)

(assert (=> b!5104559 (= e!3183623 (= lt!2100477 call!355745))))

(declare-fun b!5104560 () Bool)

(declare-fun res!2172670 () Bool)

(declare-fun e!3183627 () Bool)

(assert (=> b!5104560 (=> (not res!2172670) (not e!3183627))))

(assert (=> b!5104560 (= res!2172670 (isEmpty!31811 (tail!9995 (_1!35062 lt!2100322))))))

(declare-fun b!5104561 () Bool)

(declare-fun e!3183626 () Bool)

(assert (=> b!5104561 (= e!3183626 (not (= (head!10840 (_1!35062 lt!2100322)) (c!876900 r!12920))))))

(declare-fun b!5104562 () Bool)

(declare-fun e!3183625 () Bool)

(assert (=> b!5104562 (= e!3183625 (not lt!2100477))))

(declare-fun b!5104563 () Bool)

(declare-fun e!3183624 () Bool)

(declare-fun e!3183621 () Bool)

(assert (=> b!5104563 (= e!3183624 e!3183621)))

(declare-fun res!2172665 () Bool)

(assert (=> b!5104563 (=> (not res!2172665) (not e!3183621))))

(assert (=> b!5104563 (= res!2172665 (not lt!2100477))))

(declare-fun b!5104564 () Bool)

(declare-fun res!2172668 () Bool)

(assert (=> b!5104564 (=> (not res!2172668) (not e!3183627))))

(assert (=> b!5104564 (= res!2172668 (not call!355745))))

(declare-fun bm!355740 () Bool)

(assert (=> bm!355740 (= call!355745 (isEmpty!31811 (_1!35062 lt!2100322)))))

(declare-fun b!5104565 () Bool)

(assert (=> b!5104565 (= e!3183623 e!3183625)))

(declare-fun c!876926 () Bool)

(assert (=> b!5104565 (= c!876926 (is-EmptyLang!14066 r!12920))))

(declare-fun b!5104566 () Bool)

(declare-fun e!3183622 () Bool)

(declare-fun derivativeStep!4004 (Regex!14066 C!28390) Regex!14066)

(assert (=> b!5104566 (= e!3183622 (matchR!6851 (derivativeStep!4004 r!12920 (head!10840 (_1!35062 lt!2100322))) (tail!9995 (_1!35062 lt!2100322))))))

(declare-fun b!5104567 () Bool)

(declare-fun res!2172671 () Bool)

(assert (=> b!5104567 (=> res!2172671 e!3183624)))

(assert (=> b!5104567 (= res!2172671 (not (is-ElementMatch!14066 r!12920)))))

(assert (=> b!5104567 (= e!3183625 e!3183624)))

(declare-fun b!5104568 () Bool)

(assert (=> b!5104568 (= e!3183622 (nullable!4724 r!12920))))

(declare-fun b!5104569 () Bool)

(declare-fun res!2172669 () Bool)

(assert (=> b!5104569 (=> res!2172669 e!3183626)))

(assert (=> b!5104569 (= res!2172669 (not (isEmpty!31811 (tail!9995 (_1!35062 lt!2100322)))))))

(declare-fun b!5104571 () Bool)

(declare-fun res!2172667 () Bool)

(assert (=> b!5104571 (=> res!2172667 e!3183624)))

(assert (=> b!5104571 (= res!2172667 e!3183627)))

(declare-fun res!2172666 () Bool)

(assert (=> b!5104571 (=> (not res!2172666) (not e!3183627))))

(assert (=> b!5104571 (= res!2172666 lt!2100477)))

(declare-fun b!5104572 () Bool)

(assert (=> b!5104572 (= e!3183621 e!3183626)))

(declare-fun res!2172664 () Bool)

(assert (=> b!5104572 (=> res!2172664 e!3183626)))

(assert (=> b!5104572 (= res!2172664 call!355745)))

(declare-fun b!5104570 () Bool)

(assert (=> b!5104570 (= e!3183627 (= (head!10840 (_1!35062 lt!2100322)) (c!876900 r!12920)))))

(declare-fun d!1650545 () Bool)

(assert (=> d!1650545 e!3183623))

(declare-fun c!876927 () Bool)

(assert (=> d!1650545 (= c!876927 (is-EmptyExpr!14066 r!12920))))

(assert (=> d!1650545 (= lt!2100477 e!3183622)))

(declare-fun c!876928 () Bool)

(assert (=> d!1650545 (= c!876928 (isEmpty!31811 (_1!35062 lt!2100322)))))

(assert (=> d!1650545 (validRegex!6193 r!12920)))

(assert (=> d!1650545 (= (matchR!6851 r!12920 (_1!35062 lt!2100322)) lt!2100477)))

(assert (= (and d!1650545 c!876928) b!5104568))

(assert (= (and d!1650545 (not c!876928)) b!5104566))

(assert (= (and d!1650545 c!876927) b!5104559))

(assert (= (and d!1650545 (not c!876927)) b!5104565))

(assert (= (and b!5104565 c!876926) b!5104562))

(assert (= (and b!5104565 (not c!876926)) b!5104567))

(assert (= (and b!5104567 (not res!2172671)) b!5104571))

(assert (= (and b!5104571 res!2172666) b!5104564))

(assert (= (and b!5104564 res!2172668) b!5104560))

(assert (= (and b!5104560 res!2172670) b!5104570))

(assert (= (and b!5104571 (not res!2172667)) b!5104563))

(assert (= (and b!5104563 res!2172665) b!5104572))

(assert (= (and b!5104572 (not res!2172664)) b!5104569))

(assert (= (and b!5104569 (not res!2172669)) b!5104561))

(assert (= (or b!5104559 b!5104564 b!5104572) bm!355740))

(declare-fun m!6161914 () Bool)

(assert (=> b!5104569 m!6161914))

(assert (=> b!5104569 m!6161914))

(declare-fun m!6161916 () Bool)

(assert (=> b!5104569 m!6161916))

(assert (=> b!5104560 m!6161914))

(assert (=> b!5104560 m!6161914))

(assert (=> b!5104560 m!6161916))

(assert (=> bm!355740 m!6161682))

(declare-fun m!6161918 () Bool)

(assert (=> b!5104568 m!6161918))

(declare-fun m!6161920 () Bool)

(assert (=> b!5104570 m!6161920))

(assert (=> b!5104561 m!6161920))

(assert (=> d!1650545 m!6161682))

(assert (=> d!1650545 m!6161742))

(assert (=> b!5104566 m!6161920))

(assert (=> b!5104566 m!6161920))

(declare-fun m!6161922 () Bool)

(assert (=> b!5104566 m!6161922))

(assert (=> b!5104566 m!6161914))

(assert (=> b!5104566 m!6161922))

(assert (=> b!5104566 m!6161914))

(declare-fun m!6161924 () Bool)

(assert (=> b!5104566 m!6161924))

(assert (=> b!5104395 d!1650545))

(declare-fun d!1650549 () Bool)

(declare-fun lt!2100478 () Int)

(assert (=> d!1650549 (>= lt!2100478 0)))

(declare-fun e!3183628 () Int)

(assert (=> d!1650549 (= lt!2100478 e!3183628)))

(declare-fun c!876929 () Bool)

(assert (=> d!1650549 (= c!876929 (is-Nil!58860 (_1!35062 lt!2100322)))))

(assert (=> d!1650549 (= (size!39368 (_1!35062 lt!2100322)) lt!2100478)))

(declare-fun b!5104573 () Bool)

(assert (=> b!5104573 (= e!3183628 0)))

(declare-fun b!5104574 () Bool)

(assert (=> b!5104574 (= e!3183628 (+ 1 (size!39368 (t!371985 (_1!35062 lt!2100322)))))))

(assert (= (and d!1650549 c!876929) b!5104573))

(assert (= (and d!1650549 (not c!876929)) b!5104574))

(declare-fun m!6161926 () Bool)

(assert (=> b!5104574 m!6161926))

(assert (=> b!5104395 d!1650549))

(declare-fun d!1650551 () Bool)

(declare-fun lambda!249981 () Int)

(declare-fun forall!13495 (List!58985 Int) Bool)

(assert (=> d!1650551 (= (inv!78341 setElem!29305) (forall!13495 (exprs!3950 setElem!29305) lambda!249981))))

(declare-fun bs!1191615 () Bool)

(assert (= bs!1191615 d!1650551))

(declare-fun m!6162020 () Bool)

(assert (=> bs!1191615 m!6162020))

(assert (=> setNonEmpty!29305 d!1650551))

(declare-fun b!5104701 () Bool)

(declare-fun e!3183703 () Bool)

(declare-fun lt!2100570 () Bool)

(declare-fun call!355766 () Bool)

(assert (=> b!5104701 (= e!3183703 (= lt!2100570 call!355766))))

(declare-fun b!5104702 () Bool)

(declare-fun res!2172736 () Bool)

(declare-fun e!3183707 () Bool)

(assert (=> b!5104702 (=> (not res!2172736) (not e!3183707))))

(assert (=> b!5104702 (= res!2172736 (isEmpty!31811 (tail!9995 (_1!35062 lt!2100326))))))

(declare-fun b!5104703 () Bool)

(declare-fun e!3183706 () Bool)

(assert (=> b!5104703 (= e!3183706 (not (= (head!10840 (_1!35062 lt!2100326)) (c!876900 r!12920))))))

(declare-fun b!5104704 () Bool)

(declare-fun e!3183705 () Bool)

(assert (=> b!5104704 (= e!3183705 (not lt!2100570))))

(declare-fun b!5104705 () Bool)

(declare-fun e!3183704 () Bool)

(declare-fun e!3183701 () Bool)

(assert (=> b!5104705 (= e!3183704 e!3183701)))

(declare-fun res!2172731 () Bool)

(assert (=> b!5104705 (=> (not res!2172731) (not e!3183701))))

(assert (=> b!5104705 (= res!2172731 (not lt!2100570))))

(declare-fun b!5104706 () Bool)

(declare-fun res!2172734 () Bool)

(assert (=> b!5104706 (=> (not res!2172734) (not e!3183707))))

(assert (=> b!5104706 (= res!2172734 (not call!355766))))

(declare-fun bm!355761 () Bool)

(assert (=> bm!355761 (= call!355766 (isEmpty!31811 (_1!35062 lt!2100326)))))

(declare-fun b!5104707 () Bool)

(assert (=> b!5104707 (= e!3183703 e!3183705)))

(declare-fun c!876964 () Bool)

(assert (=> b!5104707 (= c!876964 (is-EmptyLang!14066 r!12920))))

(declare-fun b!5104708 () Bool)

(declare-fun e!3183702 () Bool)

(assert (=> b!5104708 (= e!3183702 (matchR!6851 (derivativeStep!4004 r!12920 (head!10840 (_1!35062 lt!2100326))) (tail!9995 (_1!35062 lt!2100326))))))

(declare-fun b!5104709 () Bool)

(declare-fun res!2172737 () Bool)

(assert (=> b!5104709 (=> res!2172737 e!3183704)))

(assert (=> b!5104709 (= res!2172737 (not (is-ElementMatch!14066 r!12920)))))

(assert (=> b!5104709 (= e!3183705 e!3183704)))

(declare-fun b!5104710 () Bool)

(assert (=> b!5104710 (= e!3183702 (nullable!4724 r!12920))))

(declare-fun b!5104711 () Bool)

(declare-fun res!2172735 () Bool)

(assert (=> b!5104711 (=> res!2172735 e!3183706)))

(assert (=> b!5104711 (= res!2172735 (not (isEmpty!31811 (tail!9995 (_1!35062 lt!2100326)))))))

(declare-fun b!5104713 () Bool)

(declare-fun res!2172733 () Bool)

(assert (=> b!5104713 (=> res!2172733 e!3183704)))

(assert (=> b!5104713 (= res!2172733 e!3183707)))

(declare-fun res!2172732 () Bool)

(assert (=> b!5104713 (=> (not res!2172732) (not e!3183707))))

(assert (=> b!5104713 (= res!2172732 lt!2100570)))

(declare-fun b!5104714 () Bool)

(assert (=> b!5104714 (= e!3183701 e!3183706)))

(declare-fun res!2172730 () Bool)

(assert (=> b!5104714 (=> res!2172730 e!3183706)))

(assert (=> b!5104714 (= res!2172730 call!355766)))

(declare-fun b!5104712 () Bool)

(assert (=> b!5104712 (= e!3183707 (= (head!10840 (_1!35062 lt!2100326)) (c!876900 r!12920)))))

(declare-fun d!1650593 () Bool)

(assert (=> d!1650593 e!3183703))

(declare-fun c!876965 () Bool)

(assert (=> d!1650593 (= c!876965 (is-EmptyExpr!14066 r!12920))))

(assert (=> d!1650593 (= lt!2100570 e!3183702)))

(declare-fun c!876966 () Bool)

(assert (=> d!1650593 (= c!876966 (isEmpty!31811 (_1!35062 lt!2100326)))))

(assert (=> d!1650593 (validRegex!6193 r!12920)))

(assert (=> d!1650593 (= (matchR!6851 r!12920 (_1!35062 lt!2100326)) lt!2100570)))

(assert (= (and d!1650593 c!876966) b!5104710))

(assert (= (and d!1650593 (not c!876966)) b!5104708))

(assert (= (and d!1650593 c!876965) b!5104701))

(assert (= (and d!1650593 (not c!876965)) b!5104707))

(assert (= (and b!5104707 c!876964) b!5104704))

(assert (= (and b!5104707 (not c!876964)) b!5104709))

(assert (= (and b!5104709 (not res!2172737)) b!5104713))

(assert (= (and b!5104713 res!2172732) b!5104706))

(assert (= (and b!5104706 res!2172734) b!5104702))

(assert (= (and b!5104702 res!2172736) b!5104712))

(assert (= (and b!5104713 (not res!2172733)) b!5104705))

(assert (= (and b!5104705 res!2172731) b!5104714))

(assert (= (and b!5104714 (not res!2172730)) b!5104711))

(assert (= (and b!5104711 (not res!2172735)) b!5104703))

(assert (= (or b!5104701 b!5104706 b!5104714) bm!355761))

(assert (=> b!5104711 m!6161892))

(assert (=> b!5104711 m!6161892))

(declare-fun m!6162022 () Bool)

(assert (=> b!5104711 m!6162022))

(assert (=> b!5104702 m!6161892))

(assert (=> b!5104702 m!6161892))

(assert (=> b!5104702 m!6162022))

(assert (=> bm!355761 m!6161688))

(assert (=> b!5104710 m!6161918))

(assert (=> b!5104712 m!6161888))

(assert (=> b!5104703 m!6161888))

(assert (=> d!1650593 m!6161688))

(assert (=> d!1650593 m!6161742))

(assert (=> b!5104708 m!6161888))

(assert (=> b!5104708 m!6161888))

(declare-fun m!6162024 () Bool)

(assert (=> b!5104708 m!6162024))

(assert (=> b!5104708 m!6161892))

(assert (=> b!5104708 m!6162024))

(assert (=> b!5104708 m!6161892))

(declare-fun m!6162026 () Bool)

(assert (=> b!5104708 m!6162026))

(assert (=> b!5104398 d!1650593))

(declare-fun d!1650595 () Bool)

(declare-fun lt!2100597 () Int)

(assert (=> d!1650595 (>= lt!2100597 0)))

(declare-fun e!3183716 () Int)

(assert (=> d!1650595 (= lt!2100597 e!3183716)))

(declare-fun c!876973 () Bool)

(assert (=> d!1650595 (= c!876973 (is-Nil!58860 input!5654))))

(assert (=> d!1650595 (= (size!39368 input!5654) lt!2100597)))

(declare-fun b!5104722 () Bool)

(assert (=> b!5104722 (= e!3183716 0)))

(declare-fun b!5104723 () Bool)

(assert (=> b!5104723 (= e!3183716 (+ 1 (size!39368 (t!371985 input!5654))))))

(assert (= (and d!1650595 c!876973) b!5104722))

(assert (= (and d!1650595 (not c!876973)) b!5104723))

(declare-fun m!6162028 () Bool)

(assert (=> b!5104723 m!6162028))

(assert (=> b!5104397 d!1650595))

(declare-fun bm!355802 () Bool)

(declare-fun call!355810 () Unit!149916)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1308 (List!58984 List!58984 List!58984) Unit!149916)

(assert (=> bm!355802 (= call!355810 (lemmaIsPrefixSameLengthThenSameList!1308 input!5654 Nil!58860 input!5654))))

(declare-fun b!5104787 () Bool)

(declare-fun c!877000 () Bool)

(declare-fun call!355807 () Bool)

(assert (=> b!5104787 (= c!877000 call!355807)))

(declare-fun lt!2100714 () Unit!149916)

(declare-fun lt!2100728 () Unit!149916)

(assert (=> b!5104787 (= lt!2100714 lt!2100728)))

(declare-fun lt!2100712 () C!28390)

(declare-fun lt!2100731 () List!58984)

(assert (=> b!5104787 (= (++!12915 (++!12915 Nil!58860 (Cons!58860 lt!2100712 Nil!58860)) lt!2100731) input!5654)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1525 (List!58984 C!28390 List!58984 List!58984) Unit!149916)

(assert (=> b!5104787 (= lt!2100728 (lemmaMoveElementToOtherListKeepsConcatEq!1525 Nil!58860 lt!2100712 lt!2100731 input!5654))))

(assert (=> b!5104787 (= lt!2100731 (tail!9995 input!5654))))

(assert (=> b!5104787 (= lt!2100712 (head!10840 input!5654))))

(declare-fun lt!2100732 () Unit!149916)

(declare-fun lt!2100719 () Unit!149916)

(assert (=> b!5104787 (= lt!2100732 lt!2100719)))

(declare-fun getSuffix!3169 (List!58984 List!58984) List!58984)

(assert (=> b!5104787 (isPrefix!5467 (++!12915 Nil!58860 (Cons!58860 (head!10840 (getSuffix!3169 input!5654 Nil!58860)) Nil!58860)) input!5654)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!914 (List!58984 List!58984) Unit!149916)

(assert (=> b!5104787 (= lt!2100719 (lemmaAddHeadSuffixToPrefixStillPrefix!914 Nil!58860 input!5654))))

(declare-fun lt!2100710 () Unit!149916)

(declare-fun lt!2100724 () Unit!149916)

(assert (=> b!5104787 (= lt!2100710 lt!2100724)))

(assert (=> b!5104787 (= lt!2100724 (lemmaAddHeadSuffixToPrefixStillPrefix!914 Nil!58860 input!5654))))

(declare-fun lt!2100721 () List!58984)

(assert (=> b!5104787 (= lt!2100721 (++!12915 Nil!58860 (Cons!58860 (head!10840 input!5654) Nil!58860)))))

(declare-fun lt!2100730 () Unit!149916)

(declare-fun e!3183755 () Unit!149916)

(assert (=> b!5104787 (= lt!2100730 e!3183755)))

(declare-fun c!877001 () Bool)

(assert (=> b!5104787 (= c!877001 (= (size!39368 Nil!58860) (size!39368 input!5654)))))

(declare-fun lt!2100717 () Unit!149916)

(declare-fun lt!2100735 () Unit!149916)

(assert (=> b!5104787 (= lt!2100717 lt!2100735)))

(assert (=> b!5104787 (<= (size!39368 Nil!58860) (size!39368 input!5654))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!840 (List!58984 List!58984) Unit!149916)

(assert (=> b!5104787 (= lt!2100735 (lemmaIsPrefixThenSmallerEqSize!840 Nil!58860 input!5654))))

(declare-fun e!3183749 () tuple2!63518)

(declare-fun e!3183756 () tuple2!63518)

(assert (=> b!5104787 (= e!3183749 e!3183756)))

(declare-fun bm!355803 () Bool)

(declare-fun call!355813 () C!28390)

(assert (=> bm!355803 (= call!355813 (head!10840 input!5654))))

(declare-fun d!1650597 () Bool)

(declare-fun e!3183753 () Bool)

(assert (=> d!1650597 e!3183753))

(declare-fun res!2172748 () Bool)

(assert (=> d!1650597 (=> (not res!2172748) (not e!3183753))))

(declare-fun lt!2100711 () tuple2!63518)

(assert (=> d!1650597 (= res!2172748 (= (++!12915 (_1!35062 lt!2100711) (_2!35062 lt!2100711)) input!5654))))

(declare-fun e!3183752 () tuple2!63518)

(assert (=> d!1650597 (= lt!2100711 e!3183752)))

(declare-fun c!876998 () Bool)

(declare-fun lostCause!1213 (Regex!14066) Bool)

(assert (=> d!1650597 (= c!876998 (lostCause!1213 r!12920))))

(declare-fun lt!2100720 () Unit!149916)

(declare-fun Unit!149920 () Unit!149916)

(assert (=> d!1650597 (= lt!2100720 Unit!149920)))

(assert (=> d!1650597 (= (getSuffix!3169 input!5654 Nil!58860) input!5654)))

(declare-fun lt!2100718 () Unit!149916)

(declare-fun lt!2100726 () Unit!149916)

(assert (=> d!1650597 (= lt!2100718 lt!2100726)))

(declare-fun lt!2100716 () List!58984)

(assert (=> d!1650597 (= input!5654 lt!2100716)))

(declare-fun lemmaSamePrefixThenSameSuffix!2585 (List!58984 List!58984 List!58984 List!58984 List!58984) Unit!149916)

(assert (=> d!1650597 (= lt!2100726 (lemmaSamePrefixThenSameSuffix!2585 Nil!58860 input!5654 Nil!58860 lt!2100716 input!5654))))

(assert (=> d!1650597 (= lt!2100716 (getSuffix!3169 input!5654 Nil!58860))))

(declare-fun lt!2100734 () Unit!149916)

(declare-fun lt!2100737 () Unit!149916)

(assert (=> d!1650597 (= lt!2100734 lt!2100737)))

(assert (=> d!1650597 (isPrefix!5467 Nil!58860 (++!12915 Nil!58860 input!5654))))

(assert (=> d!1650597 (= lt!2100737 (lemmaConcatTwoListThenFirstIsPrefix!3525 Nil!58860 input!5654))))

(assert (=> d!1650597 (validRegex!6193 r!12920)))

(assert (=> d!1650597 (= (findLongestMatchInner!2079 r!12920 Nil!58860 lt!2100325 input!5654 input!5654 lt!2100314) lt!2100711)))

(declare-fun bm!355804 () Bool)

(assert (=> bm!355804 (= call!355807 (nullable!4724 r!12920))))

(declare-fun b!5104788 () Bool)

(declare-fun call!355812 () tuple2!63518)

(assert (=> b!5104788 (= e!3183756 call!355812)))

(declare-fun b!5104789 () Bool)

(declare-fun c!877002 () Bool)

(assert (=> b!5104789 (= c!877002 call!355807)))

(declare-fun lt!2100725 () Unit!149916)

(declare-fun lt!2100733 () Unit!149916)

(assert (=> b!5104789 (= lt!2100725 lt!2100733)))

(assert (=> b!5104789 (= input!5654 Nil!58860)))

(assert (=> b!5104789 (= lt!2100733 call!355810)))

(declare-fun lt!2100736 () Unit!149916)

(declare-fun lt!2100713 () Unit!149916)

(assert (=> b!5104789 (= lt!2100736 lt!2100713)))

(declare-fun call!355814 () Bool)

(assert (=> b!5104789 call!355814))

(declare-fun call!355808 () Unit!149916)

(assert (=> b!5104789 (= lt!2100713 call!355808)))

(declare-fun e!3183754 () tuple2!63518)

(assert (=> b!5104789 (= e!3183749 e!3183754)))

(declare-fun b!5104790 () Bool)

(assert (=> b!5104790 (= e!3183752 (tuple2!63519 Nil!58860 input!5654))))

(declare-fun bm!355805 () Bool)

(declare-fun call!355811 () Regex!14066)

(declare-fun call!355809 () List!58984)

(assert (=> bm!355805 (= call!355812 (findLongestMatchInner!2079 call!355811 lt!2100721 (+ lt!2100325 1) call!355809 input!5654 lt!2100314))))

(declare-fun b!5104791 () Bool)

(declare-fun e!3183751 () tuple2!63518)

(assert (=> b!5104791 (= e!3183756 e!3183751)))

(declare-fun lt!2100723 () tuple2!63518)

(assert (=> b!5104791 (= lt!2100723 call!355812)))

(declare-fun c!876999 () Bool)

(assert (=> b!5104791 (= c!876999 (isEmpty!31811 (_1!35062 lt!2100723)))))

(declare-fun b!5104792 () Bool)

(declare-fun Unit!149921 () Unit!149916)

(assert (=> b!5104792 (= e!3183755 Unit!149921)))

(declare-fun b!5104793 () Bool)

(declare-fun e!3183750 () Bool)

(assert (=> b!5104793 (= e!3183750 (>= (size!39368 (_1!35062 lt!2100711)) (size!39368 Nil!58860)))))

(declare-fun b!5104794 () Bool)

(assert (=> b!5104794 (= e!3183751 (tuple2!63519 Nil!58860 input!5654))))

(declare-fun bm!355806 () Bool)

(assert (=> bm!355806 (= call!355811 (derivativeStep!4004 r!12920 call!355813))))

(declare-fun b!5104795 () Bool)

(assert (=> b!5104795 (= e!3183754 (tuple2!63519 Nil!58860 Nil!58860))))

(declare-fun bm!355807 () Bool)

(assert (=> bm!355807 (= call!355809 (tail!9995 input!5654))))

(declare-fun bm!355808 () Bool)

(declare-fun lemmaIsPrefixRefl!3686 (List!58984 List!58984) Unit!149916)

(assert (=> bm!355808 (= call!355808 (lemmaIsPrefixRefl!3686 input!5654 input!5654))))

(declare-fun b!5104796 () Bool)

(declare-fun Unit!149922 () Unit!149916)

(assert (=> b!5104796 (= e!3183755 Unit!149922)))

(declare-fun lt!2100715 () Unit!149916)

(assert (=> b!5104796 (= lt!2100715 call!355808)))

(assert (=> b!5104796 call!355814))

(declare-fun lt!2100722 () Unit!149916)

(assert (=> b!5104796 (= lt!2100722 lt!2100715)))

(declare-fun lt!2100727 () Unit!149916)

(assert (=> b!5104796 (= lt!2100727 call!355810)))

(assert (=> b!5104796 (= input!5654 Nil!58860)))

(declare-fun lt!2100729 () Unit!149916)

(assert (=> b!5104796 (= lt!2100729 lt!2100727)))

(assert (=> b!5104796 false))

(declare-fun b!5104797 () Bool)

(assert (=> b!5104797 (= e!3183753 e!3183750)))

(declare-fun res!2172749 () Bool)

(assert (=> b!5104797 (=> res!2172749 e!3183750)))

(assert (=> b!5104797 (= res!2172749 (isEmpty!31811 (_1!35062 lt!2100711)))))

(declare-fun b!5104798 () Bool)

(assert (=> b!5104798 (= e!3183754 (tuple2!63519 Nil!58860 input!5654))))

(declare-fun b!5104799 () Bool)

(assert (=> b!5104799 (= e!3183752 e!3183749)))

(declare-fun c!877003 () Bool)

(assert (=> b!5104799 (= c!877003 (= lt!2100325 lt!2100314))))

(declare-fun bm!355809 () Bool)

(assert (=> bm!355809 (= call!355814 (isPrefix!5467 input!5654 input!5654))))

(declare-fun b!5104800 () Bool)

(assert (=> b!5104800 (= e!3183751 lt!2100723)))

(assert (= (and d!1650597 c!876998) b!5104790))

(assert (= (and d!1650597 (not c!876998)) b!5104799))

(assert (= (and b!5104799 c!877003) b!5104789))

(assert (= (and b!5104799 (not c!877003)) b!5104787))

(assert (= (and b!5104789 c!877002) b!5104795))

(assert (= (and b!5104789 (not c!877002)) b!5104798))

(assert (= (and b!5104787 c!877001) b!5104796))

(assert (= (and b!5104787 (not c!877001)) b!5104792))

(assert (= (and b!5104787 c!877000) b!5104791))

(assert (= (and b!5104787 (not c!877000)) b!5104788))

(assert (= (and b!5104791 c!876999) b!5104794))

(assert (= (and b!5104791 (not c!876999)) b!5104800))

(assert (= (or b!5104791 b!5104788) bm!355803))

(assert (= (or b!5104791 b!5104788) bm!355807))

(assert (= (or b!5104791 b!5104788) bm!355806))

(assert (= (or b!5104791 b!5104788) bm!355805))

(assert (= (or b!5104789 b!5104796) bm!355802))

(assert (= (or b!5104789 b!5104787) bm!355804))

(assert (= (or b!5104789 b!5104796) bm!355809))

(assert (= (or b!5104789 b!5104796) bm!355808))

(assert (= (and d!1650597 res!2172748) b!5104797))

(assert (= (and b!5104797 (not res!2172749)) b!5104793))

(declare-fun m!6162082 () Bool)

(assert (=> d!1650597 m!6162082))

(declare-fun m!6162084 () Bool)

(assert (=> d!1650597 m!6162084))

(declare-fun m!6162086 () Bool)

(assert (=> d!1650597 m!6162086))

(declare-fun m!6162088 () Bool)

(assert (=> d!1650597 m!6162088))

(declare-fun m!6162090 () Bool)

(assert (=> d!1650597 m!6162090))

(declare-fun m!6162092 () Bool)

(assert (=> d!1650597 m!6162092))

(assert (=> d!1650597 m!6161742))

(declare-fun m!6162094 () Bool)

(assert (=> d!1650597 m!6162094))

(assert (=> d!1650597 m!6162086))

(declare-fun m!6162096 () Bool)

(assert (=> b!5104793 m!6162096))

(assert (=> b!5104793 m!6161706))

(declare-fun m!6162098 () Bool)

(assert (=> b!5104791 m!6162098))

(assert (=> bm!355804 m!6161918))

(declare-fun m!6162100 () Bool)

(assert (=> bm!355802 m!6162100))

(declare-fun m!6162102 () Bool)

(assert (=> bm!355806 m!6162102))

(declare-fun m!6162104 () Bool)

(assert (=> bm!355808 m!6162104))

(declare-fun m!6162106 () Bool)

(assert (=> b!5104797 m!6162106))

(declare-fun m!6162108 () Bool)

(assert (=> bm!355805 m!6162108))

(declare-fun m!6162110 () Bool)

(assert (=> bm!355803 m!6162110))

(declare-fun m!6162112 () Bool)

(assert (=> bm!355807 m!6162112))

(declare-fun m!6162114 () Bool)

(assert (=> b!5104787 m!6162114))

(declare-fun m!6162116 () Bool)

(assert (=> b!5104787 m!6162116))

(assert (=> b!5104787 m!6162114))

(declare-fun m!6162118 () Bool)

(assert (=> b!5104787 m!6162118))

(declare-fun m!6162120 () Bool)

(assert (=> b!5104787 m!6162120))

(assert (=> b!5104787 m!6162120))

(declare-fun m!6162122 () Bool)

(assert (=> b!5104787 m!6162122))

(declare-fun m!6162124 () Bool)

(assert (=> b!5104787 m!6162124))

(assert (=> b!5104787 m!6161714))

(assert (=> b!5104787 m!6162090))

(assert (=> b!5104787 m!6162110))

(assert (=> b!5104787 m!6161706))

(declare-fun m!6162126 () Bool)

(assert (=> b!5104787 m!6162126))

(declare-fun m!6162128 () Bool)

(assert (=> b!5104787 m!6162128))

(assert (=> b!5104787 m!6162112))

(assert (=> b!5104787 m!6162090))

(declare-fun m!6162130 () Bool)

(assert (=> b!5104787 m!6162130))

(declare-fun m!6162132 () Bool)

(assert (=> bm!355809 m!6162132))

(assert (=> b!5104397 d!1650597))

(declare-fun b!5104851 () Bool)

(declare-fun e!3183792 () tuple2!63518)

(declare-fun call!355846 () tuple2!63518)

(assert (=> b!5104851 (= e!3183792 call!355846)))

(declare-fun b!5104852 () Bool)

(declare-fun e!3183793 () tuple2!63518)

(assert (=> b!5104852 (= e!3183793 (tuple2!63519 Nil!58860 input!5654))))

(declare-fun b!5104853 () Bool)

(declare-fun e!3183789 () Bool)

(declare-fun lt!2100832 () tuple2!63518)

(assert (=> b!5104853 (= e!3183789 (>= (size!39368 (_1!35062 lt!2100832)) (size!39368 Nil!58860)))))

(declare-fun b!5104854 () Bool)

(declare-fun c!877026 () Bool)

(declare-fun call!355845 () Bool)

(assert (=> b!5104854 (= c!877026 call!355845)))

(declare-fun lt!2100829 () Unit!149916)

(declare-fun lt!2100846 () Unit!149916)

(assert (=> b!5104854 (= lt!2100829 lt!2100846)))

(declare-fun lt!2100840 () C!28390)

(declare-fun lt!2100836 () List!58984)

(assert (=> b!5104854 (= (++!12915 (++!12915 Nil!58860 (Cons!58860 lt!2100840 Nil!58860)) lt!2100836) input!5654)))

(assert (=> b!5104854 (= lt!2100846 (lemmaMoveElementToOtherListKeepsConcatEq!1525 Nil!58860 lt!2100840 lt!2100836 input!5654))))

(assert (=> b!5104854 (= lt!2100836 (tail!9995 input!5654))))

(assert (=> b!5104854 (= lt!2100840 (head!10840 input!5654))))

(declare-fun lt!2100830 () Unit!149916)

(declare-fun lt!2100852 () Unit!149916)

(assert (=> b!5104854 (= lt!2100830 lt!2100852)))

(assert (=> b!5104854 (isPrefix!5467 (++!12915 Nil!58860 (Cons!58860 (head!10840 (getSuffix!3169 input!5654 Nil!58860)) Nil!58860)) input!5654)))

(assert (=> b!5104854 (= lt!2100852 (lemmaAddHeadSuffixToPrefixStillPrefix!914 Nil!58860 input!5654))))

(declare-fun lt!2100850 () List!58984)

(assert (=> b!5104854 (= lt!2100850 (++!12915 Nil!58860 (Cons!58860 (head!10840 input!5654) Nil!58860)))))

(declare-fun lt!2100847 () Unit!149916)

(declare-fun e!3183788 () Unit!149916)

(assert (=> b!5104854 (= lt!2100847 e!3183788)))

(declare-fun c!877027 () Bool)

(assert (=> b!5104854 (= c!877027 (= (size!39368 Nil!58860) (size!39368 input!5654)))))

(declare-fun lt!2100845 () Unit!149916)

(declare-fun lt!2100848 () Unit!149916)

(assert (=> b!5104854 (= lt!2100845 lt!2100848)))

(assert (=> b!5104854 (<= (size!39368 Nil!58860) (size!39368 input!5654))))

(assert (=> b!5104854 (= lt!2100848 (lemmaIsPrefixThenSmallerEqSize!840 Nil!58860 input!5654))))

(declare-fun e!3183794 () tuple2!63518)

(assert (=> b!5104854 (= e!3183794 e!3183792)))

(declare-fun b!5104855 () Bool)

(declare-fun lt!2100853 () tuple2!63518)

(assert (=> b!5104855 (= e!3183793 lt!2100853)))

(declare-fun bm!355835 () Bool)

(declare-fun call!355842 () List!58984)

(declare-fun call!355839 () (Set Context!6900))

(assert (=> bm!355835 (= call!355846 (findLongestMatchInnerZipper!140 call!355839 lt!2100850 (+ lt!2100325 1) call!355842 input!5654 lt!2100314))))

(declare-fun bm!355836 () Bool)

(assert (=> bm!355836 (= call!355842 (tail!9995 input!5654))))

(declare-fun b!5104856 () Bool)

(declare-fun e!3183791 () tuple2!63518)

(assert (=> b!5104856 (= e!3183791 (tuple2!63519 Nil!58860 Nil!58860))))

(declare-fun bm!355837 () Bool)

(declare-fun call!355841 () Unit!149916)

(assert (=> bm!355837 (= call!355841 (lemmaIsPrefixSameLengthThenSameList!1308 input!5654 Nil!58860 input!5654))))

(declare-fun bm!355838 () Bool)

(declare-fun call!355843 () C!28390)

(assert (=> bm!355838 (= call!355839 (derivationStepZipper!753 z!4303 call!355843))))

(declare-fun bm!355839 () Bool)

(declare-fun call!355844 () Unit!149916)

(assert (=> bm!355839 (= call!355844 (lemmaIsPrefixRefl!3686 input!5654 input!5654))))

(declare-fun b!5104857 () Bool)

(assert (=> b!5104857 (= e!3183792 e!3183793)))

(assert (=> b!5104857 (= lt!2100853 call!355846)))

(declare-fun c!877028 () Bool)

(assert (=> b!5104857 (= c!877028 (isEmpty!31811 (_1!35062 lt!2100853)))))

(declare-fun b!5104858 () Bool)

(declare-fun c!877025 () Bool)

(assert (=> b!5104858 (= c!877025 call!355845)))

(declare-fun lt!2100843 () Unit!149916)

(declare-fun lt!2100834 () Unit!149916)

(assert (=> b!5104858 (= lt!2100843 lt!2100834)))

(assert (=> b!5104858 (= input!5654 Nil!58860)))

(assert (=> b!5104858 (= lt!2100834 call!355841)))

(declare-fun lt!2100844 () Unit!149916)

(declare-fun lt!2100835 () Unit!149916)

(assert (=> b!5104858 (= lt!2100844 lt!2100835)))

(declare-fun call!355840 () Bool)

(assert (=> b!5104858 call!355840))

(assert (=> b!5104858 (= lt!2100835 call!355844)))

(assert (=> b!5104858 (= e!3183794 e!3183791)))

(declare-fun b!5104859 () Bool)

(declare-fun e!3183790 () Bool)

(assert (=> b!5104859 (= e!3183790 e!3183789)))

(declare-fun res!2172763 () Bool)

(assert (=> b!5104859 (=> res!2172763 e!3183789)))

(assert (=> b!5104859 (= res!2172763 (isEmpty!31811 (_1!35062 lt!2100832)))))

(declare-fun b!5104860 () Bool)

(declare-fun Unit!149923 () Unit!149916)

(assert (=> b!5104860 (= e!3183788 Unit!149923)))

(declare-fun lt!2100849 () Unit!149916)

(assert (=> b!5104860 (= lt!2100849 call!355844)))

(assert (=> b!5104860 call!355840))

(declare-fun lt!2100842 () Unit!149916)

(assert (=> b!5104860 (= lt!2100842 lt!2100849)))

(declare-fun lt!2100841 () Unit!149916)

(assert (=> b!5104860 (= lt!2100841 call!355841)))

(assert (=> b!5104860 (= input!5654 Nil!58860)))

(declare-fun lt!2100851 () Unit!149916)

(assert (=> b!5104860 (= lt!2100851 lt!2100841)))

(assert (=> b!5104860 false))

(declare-fun b!5104861 () Bool)

(assert (=> b!5104861 (= e!3183791 (tuple2!63519 Nil!58860 input!5654))))

(declare-fun b!5104862 () Bool)

(declare-fun Unit!149924 () Unit!149916)

(assert (=> b!5104862 (= e!3183788 Unit!149924)))

(declare-fun bm!355840 () Bool)

(assert (=> bm!355840 (= call!355845 (nullableZipper!965 z!4303))))

(declare-fun b!5104863 () Bool)

(declare-fun e!3183795 () tuple2!63518)

(assert (=> b!5104863 (= e!3183795 (tuple2!63519 Nil!58860 input!5654))))

(declare-fun d!1650601 () Bool)

(assert (=> d!1650601 e!3183790))

(declare-fun res!2172762 () Bool)

(assert (=> d!1650601 (=> (not res!2172762) (not e!3183790))))

(assert (=> d!1650601 (= res!2172762 (= (++!12915 (_1!35062 lt!2100832) (_2!35062 lt!2100832)) input!5654))))

(assert (=> d!1650601 (= lt!2100832 e!3183795)))

(declare-fun c!877024 () Bool)

(declare-fun lostCauseZipper!980 ((Set Context!6900)) Bool)

(assert (=> d!1650601 (= c!877024 (lostCauseZipper!980 z!4303))))

(declare-fun lt!2100839 () Unit!149916)

(declare-fun Unit!149925 () Unit!149916)

(assert (=> d!1650601 (= lt!2100839 Unit!149925)))

(assert (=> d!1650601 (= (getSuffix!3169 input!5654 Nil!58860) input!5654)))

(declare-fun lt!2100831 () Unit!149916)

(declare-fun lt!2100833 () Unit!149916)

(assert (=> d!1650601 (= lt!2100831 lt!2100833)))

(declare-fun lt!2100838 () List!58984)

(assert (=> d!1650601 (= input!5654 lt!2100838)))

(assert (=> d!1650601 (= lt!2100833 (lemmaSamePrefixThenSameSuffix!2585 Nil!58860 input!5654 Nil!58860 lt!2100838 input!5654))))

(assert (=> d!1650601 (= lt!2100838 (getSuffix!3169 input!5654 Nil!58860))))

(declare-fun lt!2100828 () Unit!149916)

(declare-fun lt!2100837 () Unit!149916)

(assert (=> d!1650601 (= lt!2100828 lt!2100837)))

(assert (=> d!1650601 (isPrefix!5467 Nil!58860 (++!12915 Nil!58860 input!5654))))

(assert (=> d!1650601 (= lt!2100837 (lemmaConcatTwoListThenFirstIsPrefix!3525 Nil!58860 input!5654))))

(assert (=> d!1650601 (= (++!12915 Nil!58860 input!5654) input!5654)))

(assert (=> d!1650601 (= (findLongestMatchInnerZipper!140 z!4303 Nil!58860 lt!2100325 input!5654 input!5654 lt!2100314) lt!2100832)))

(declare-fun bm!355834 () Bool)

(assert (=> bm!355834 (= call!355840 (isPrefix!5467 input!5654 input!5654))))

(declare-fun bm!355841 () Bool)

(assert (=> bm!355841 (= call!355843 (head!10840 input!5654))))

(declare-fun b!5104864 () Bool)

(assert (=> b!5104864 (= e!3183795 e!3183794)))

(declare-fun c!877023 () Bool)

(assert (=> b!5104864 (= c!877023 (= lt!2100325 lt!2100314))))

(assert (= (and d!1650601 c!877024) b!5104863))

(assert (= (and d!1650601 (not c!877024)) b!5104864))

(assert (= (and b!5104864 c!877023) b!5104858))

(assert (= (and b!5104864 (not c!877023)) b!5104854))

(assert (= (and b!5104858 c!877025) b!5104856))

(assert (= (and b!5104858 (not c!877025)) b!5104861))

(assert (= (and b!5104854 c!877027) b!5104860))

(assert (= (and b!5104854 (not c!877027)) b!5104862))

(assert (= (and b!5104854 c!877026) b!5104857))

(assert (= (and b!5104854 (not c!877026)) b!5104851))

(assert (= (and b!5104857 c!877028) b!5104852))

(assert (= (and b!5104857 (not c!877028)) b!5104855))

(assert (= (or b!5104857 b!5104851) bm!355841))

(assert (= (or b!5104857 b!5104851) bm!355836))

(assert (= (or b!5104857 b!5104851) bm!355838))

(assert (= (or b!5104857 b!5104851) bm!355835))

(assert (= (or b!5104858 b!5104860) bm!355837))

(assert (= (or b!5104858 b!5104854) bm!355840))

(assert (= (or b!5104858 b!5104860) bm!355834))

(assert (= (or b!5104858 b!5104860) bm!355839))

(assert (= (and d!1650601 res!2172762) b!5104859))

(assert (= (and b!5104859 (not res!2172763)) b!5104853))

(assert (=> bm!355840 m!6161886))

(assert (=> bm!355839 m!6162104))

(declare-fun m!6162178 () Bool)

(assert (=> d!1650601 m!6162178))

(assert (=> d!1650601 m!6162090))

(declare-fun m!6162180 () Bool)

(assert (=> d!1650601 m!6162180))

(declare-fun m!6162182 () Bool)

(assert (=> d!1650601 m!6162182))

(assert (=> d!1650601 m!6162086))

(assert (=> d!1650601 m!6162088))

(assert (=> d!1650601 m!6162086))

(assert (=> d!1650601 m!6162094))

(declare-fun m!6162184 () Bool)

(assert (=> b!5104859 m!6162184))

(assert (=> bm!355837 m!6162100))

(assert (=> bm!355841 m!6162110))

(declare-fun m!6162186 () Bool)

(assert (=> b!5104857 m!6162186))

(declare-fun m!6162188 () Bool)

(assert (=> b!5104854 m!6162188))

(assert (=> b!5104854 m!6161706))

(assert (=> b!5104854 m!6162090))

(assert (=> b!5104854 m!6162110))

(assert (=> b!5104854 m!6161714))

(assert (=> b!5104854 m!6162090))

(assert (=> b!5104854 m!6162130))

(assert (=> b!5104854 m!6162112))

(assert (=> b!5104854 m!6162120))

(assert (=> b!5104854 m!6162122))

(assert (=> b!5104854 m!6162120))

(assert (=> b!5104854 m!6162124))

(assert (=> b!5104854 m!6162126))

(assert (=> b!5104854 m!6162128))

(declare-fun m!6162190 () Bool)

(assert (=> b!5104854 m!6162190))

(declare-fun m!6162192 () Bool)

(assert (=> b!5104854 m!6162192))

(assert (=> b!5104854 m!6162190))

(declare-fun m!6162194 () Bool)

(assert (=> bm!355838 m!6162194))

(assert (=> bm!355836 m!6162112))

(declare-fun m!6162196 () Bool)

(assert (=> bm!355835 m!6162196))

(assert (=> bm!355834 m!6162132))

(declare-fun m!6162198 () Bool)

(assert (=> b!5104853 m!6162198))

(assert (=> b!5104853 m!6161706))

(assert (=> b!5104397 d!1650601))

(declare-fun d!1650615 () Bool)

(assert (=> d!1650615 (isPrefix!5467 (_1!35062 lt!2100322) (++!12915 (_1!35062 lt!2100322) (_2!35062 lt!2100322)))))

(declare-fun lt!2100856 () Unit!149916)

(declare-fun choose!37406 (List!58984 List!58984) Unit!149916)

(assert (=> d!1650615 (= lt!2100856 (choose!37406 (_1!35062 lt!2100322) (_2!35062 lt!2100322)))))

(assert (=> d!1650615 (= (lemmaConcatTwoListThenFirstIsPrefix!3525 (_1!35062 lt!2100322) (_2!35062 lt!2100322)) lt!2100856)))

(declare-fun bs!1191617 () Bool)

(assert (= bs!1191617 d!1650615))

(assert (=> bs!1191617 m!6161736))

(assert (=> bs!1191617 m!6161736))

(declare-fun m!6162200 () Bool)

(assert (=> bs!1191617 m!6162200))

(declare-fun m!6162202 () Bool)

(assert (=> bs!1191617 m!6162202))

(assert (=> b!5104397 d!1650615))

(declare-fun d!1650617 () Bool)

(assert (=> d!1650617 (= (isEmpty!31811 (_1!35062 lt!2100327)) (is-Nil!58860 (_1!35062 lt!2100327)))))

(assert (=> b!5104397 d!1650617))

(declare-fun d!1650619 () Bool)

(declare-fun c!877029 () Bool)

(assert (=> d!1650619 (= c!877029 (isEmpty!31811 (_1!35062 lt!2100322)))))

(declare-fun e!3183796 () Bool)

(assert (=> d!1650619 (= (matchZipper!738 z!4303 (_1!35062 lt!2100322)) e!3183796)))

(declare-fun b!5104865 () Bool)

(assert (=> b!5104865 (= e!3183796 (nullableZipper!965 z!4303))))

(declare-fun b!5104866 () Bool)

(assert (=> b!5104866 (= e!3183796 (matchZipper!738 (derivationStepZipper!753 z!4303 (head!10840 (_1!35062 lt!2100322))) (tail!9995 (_1!35062 lt!2100322))))))

(assert (= (and d!1650619 c!877029) b!5104865))

(assert (= (and d!1650619 (not c!877029)) b!5104866))

(assert (=> d!1650619 m!6161682))

(assert (=> b!5104865 m!6161886))

(assert (=> b!5104866 m!6161920))

(assert (=> b!5104866 m!6161920))

(declare-fun m!6162204 () Bool)

(assert (=> b!5104866 m!6162204))

(assert (=> b!5104866 m!6161914))

(assert (=> b!5104866 m!6162204))

(assert (=> b!5104866 m!6161914))

(declare-fun m!6162206 () Bool)

(assert (=> b!5104866 m!6162206))

(assert (=> b!5104397 d!1650619))

(declare-fun d!1650621 () Bool)

(assert (=> d!1650621 (isPrefix!5467 (_1!35062 lt!2100326) (++!12915 (_1!35062 lt!2100326) (_2!35062 lt!2100326)))))

(declare-fun lt!2100857 () Unit!149916)

(assert (=> d!1650621 (= lt!2100857 (choose!37406 (_1!35062 lt!2100326) (_2!35062 lt!2100326)))))

(assert (=> d!1650621 (= (lemmaConcatTwoListThenFirstIsPrefix!3525 (_1!35062 lt!2100326) (_2!35062 lt!2100326)) lt!2100857)))

(declare-fun bs!1191618 () Bool)

(assert (= bs!1191618 d!1650621))

(assert (=> bs!1191618 m!6161684))

(assert (=> bs!1191618 m!6161684))

(declare-fun m!6162208 () Bool)

(assert (=> bs!1191618 m!6162208))

(declare-fun m!6162210 () Bool)

(assert (=> bs!1191618 m!6162210))

(assert (=> b!5104397 d!1650621))

(declare-fun d!1650623 () Bool)

(declare-fun e!3183799 () Bool)

(assert (=> d!1650623 e!3183799))

(declare-fun res!2172766 () Bool)

(assert (=> d!1650623 (=> res!2172766 e!3183799)))

(assert (=> d!1650623 (= res!2172766 (isEmpty!31811 (_1!35062 (findLongestMatchInnerZipper!140 z!4303 Nil!58860 (size!39368 Nil!58860) input!5654 input!5654 (size!39368 input!5654)))))))

(declare-fun lt!2100860 () Unit!149916)

(declare-fun choose!37407 ((Set Context!6900) List!58984) Unit!149916)

(assert (=> d!1650623 (= lt!2100860 (choose!37407 z!4303 input!5654))))

(assert (=> d!1650623 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2079 z!4303 input!5654) lt!2100860)))

(declare-fun b!5104869 () Bool)

(assert (=> b!5104869 (= e!3183799 (matchZipper!738 z!4303 (_1!35062 (findLongestMatchInnerZipper!140 z!4303 Nil!58860 (size!39368 Nil!58860) input!5654 input!5654 (size!39368 input!5654)))))))

(assert (= (and d!1650623 (not res!2172766)) b!5104869))

(assert (=> d!1650623 m!6161706))

(assert (=> d!1650623 m!6161714))

(declare-fun m!6162212 () Bool)

(assert (=> d!1650623 m!6162212))

(declare-fun m!6162214 () Bool)

(assert (=> d!1650623 m!6162214))

(assert (=> d!1650623 m!6161706))

(declare-fun m!6162216 () Bool)

(assert (=> d!1650623 m!6162216))

(assert (=> d!1650623 m!6161714))

(assert (=> b!5104869 m!6161706))

(assert (=> b!5104869 m!6161714))

(assert (=> b!5104869 m!6161706))

(assert (=> b!5104869 m!6161714))

(assert (=> b!5104869 m!6162212))

(declare-fun m!6162218 () Bool)

(assert (=> b!5104869 m!6162218))

(assert (=> b!5104397 d!1650623))

(declare-fun d!1650625 () Bool)

(declare-fun e!3183806 () Bool)

(assert (=> d!1650625 e!3183806))

(declare-fun res!2172777 () Bool)

(assert (=> d!1650625 (=> res!2172777 e!3183806)))

(declare-fun lt!2100863 () Bool)

(assert (=> d!1650625 (= res!2172777 (not lt!2100863))))

(declare-fun e!3183808 () Bool)

(assert (=> d!1650625 (= lt!2100863 e!3183808)))

(declare-fun res!2172775 () Bool)

(assert (=> d!1650625 (=> res!2172775 e!3183808)))

(assert (=> d!1650625 (= res!2172775 (is-Nil!58860 (_1!35062 lt!2100326)))))

(assert (=> d!1650625 (= (isPrefix!5467 (_1!35062 lt!2100326) lt!2100312) lt!2100863)))

(declare-fun b!5104881 () Bool)

(assert (=> b!5104881 (= e!3183806 (>= (size!39368 lt!2100312) (size!39368 (_1!35062 lt!2100326))))))

(declare-fun b!5104879 () Bool)

(declare-fun res!2172778 () Bool)

(declare-fun e!3183807 () Bool)

(assert (=> b!5104879 (=> (not res!2172778) (not e!3183807))))

(assert (=> b!5104879 (= res!2172778 (= (head!10840 (_1!35062 lt!2100326)) (head!10840 lt!2100312)))))

(declare-fun b!5104878 () Bool)

(assert (=> b!5104878 (= e!3183808 e!3183807)))

(declare-fun res!2172776 () Bool)

(assert (=> b!5104878 (=> (not res!2172776) (not e!3183807))))

(assert (=> b!5104878 (= res!2172776 (not (is-Nil!58860 lt!2100312)))))

(declare-fun b!5104880 () Bool)

(assert (=> b!5104880 (= e!3183807 (isPrefix!5467 (tail!9995 (_1!35062 lt!2100326)) (tail!9995 lt!2100312)))))

(assert (= (and d!1650625 (not res!2172775)) b!5104878))

(assert (= (and b!5104878 res!2172776) b!5104879))

(assert (= (and b!5104879 res!2172778) b!5104880))

(assert (= (and d!1650625 (not res!2172777)) b!5104881))

(declare-fun m!6162220 () Bool)

(assert (=> b!5104881 m!6162220))

(assert (=> b!5104881 m!6161728))

(assert (=> b!5104879 m!6161888))

(declare-fun m!6162222 () Bool)

(assert (=> b!5104879 m!6162222))

(assert (=> b!5104880 m!6161892))

(declare-fun m!6162224 () Bool)

(assert (=> b!5104880 m!6162224))

(assert (=> b!5104880 m!6161892))

(assert (=> b!5104880 m!6162224))

(declare-fun m!6162226 () Bool)

(assert (=> b!5104880 m!6162226))

(assert (=> b!5104397 d!1650625))

(declare-fun d!1650627 () Bool)

(declare-fun e!3183809 () Bool)

(assert (=> d!1650627 e!3183809))

(declare-fun res!2172781 () Bool)

(assert (=> d!1650627 (=> res!2172781 e!3183809)))

(declare-fun lt!2100864 () Bool)

(assert (=> d!1650627 (= res!2172781 (not lt!2100864))))

(declare-fun e!3183811 () Bool)

(assert (=> d!1650627 (= lt!2100864 e!3183811)))

(declare-fun res!2172779 () Bool)

(assert (=> d!1650627 (=> res!2172779 e!3183811)))

(assert (=> d!1650627 (= res!2172779 (is-Nil!58860 (_1!35062 lt!2100322)))))

(assert (=> d!1650627 (= (isPrefix!5467 (_1!35062 lt!2100322) lt!2100324) lt!2100864)))

(declare-fun b!5104885 () Bool)

(assert (=> b!5104885 (= e!3183809 (>= (size!39368 lt!2100324) (size!39368 (_1!35062 lt!2100322))))))

(declare-fun b!5104883 () Bool)

(declare-fun res!2172782 () Bool)

(declare-fun e!3183810 () Bool)

(assert (=> b!5104883 (=> (not res!2172782) (not e!3183810))))

(assert (=> b!5104883 (= res!2172782 (= (head!10840 (_1!35062 lt!2100322)) (head!10840 lt!2100324)))))

(declare-fun b!5104882 () Bool)

(assert (=> b!5104882 (= e!3183811 e!3183810)))

(declare-fun res!2172780 () Bool)

(assert (=> b!5104882 (=> (not res!2172780) (not e!3183810))))

(assert (=> b!5104882 (= res!2172780 (not (is-Nil!58860 lt!2100324)))))

(declare-fun b!5104884 () Bool)

(assert (=> b!5104884 (= e!3183810 (isPrefix!5467 (tail!9995 (_1!35062 lt!2100322)) (tail!9995 lt!2100324)))))

(assert (= (and d!1650627 (not res!2172779)) b!5104882))

(assert (= (and b!5104882 res!2172780) b!5104883))

(assert (= (and b!5104883 res!2172782) b!5104884))

(assert (= (and d!1650627 (not res!2172781)) b!5104885))

(declare-fun m!6162228 () Bool)

(assert (=> b!5104885 m!6162228))

(assert (=> b!5104885 m!6161724))

(assert (=> b!5104883 m!6161920))

(declare-fun m!6162230 () Bool)

(assert (=> b!5104883 m!6162230))

(assert (=> b!5104884 m!6161914))

(declare-fun m!6162232 () Bool)

(assert (=> b!5104884 m!6162232))

(assert (=> b!5104884 m!6161914))

(assert (=> b!5104884 m!6162232))

(declare-fun m!6162234 () Bool)

(assert (=> b!5104884 m!6162234))

(assert (=> b!5104397 d!1650627))

(declare-fun d!1650629 () Bool)

(assert (=> d!1650629 (= (isEmpty!31811 (_1!35062 lt!2100320)) (is-Nil!58860 (_1!35062 lt!2100320)))))

(assert (=> b!5104397 d!1650629))

(declare-fun d!1650631 () Bool)

(declare-fun e!3183814 () Bool)

(assert (=> d!1650631 e!3183814))

(declare-fun res!2172785 () Bool)

(assert (=> d!1650631 (=> res!2172785 e!3183814)))

(assert (=> d!1650631 (= res!2172785 (isEmpty!31811 (_1!35062 (findLongestMatchInner!2079 r!12920 Nil!58860 (size!39368 Nil!58860) input!5654 input!5654 (size!39368 input!5654)))))))

(declare-fun lt!2100867 () Unit!149916)

(declare-fun choose!37408 (Regex!14066 List!58984) Unit!149916)

(assert (=> d!1650631 (= lt!2100867 (choose!37408 r!12920 input!5654))))

(assert (=> d!1650631 (validRegex!6193 r!12920)))

(assert (=> d!1650631 (= (longestMatchIsAcceptedByMatchOrIsEmpty!2078 r!12920 input!5654) lt!2100867)))

(declare-fun b!5104888 () Bool)

(assert (=> b!5104888 (= e!3183814 (matchR!6851 r!12920 (_1!35062 (findLongestMatchInner!2079 r!12920 Nil!58860 (size!39368 Nil!58860) input!5654 input!5654 (size!39368 input!5654)))))))

(assert (= (and d!1650631 (not res!2172785)) b!5104888))

(assert (=> d!1650631 m!6161742))

(assert (=> d!1650631 m!6161714))

(assert (=> d!1650631 m!6161706))

(assert (=> d!1650631 m!6161714))

(declare-fun m!6162236 () Bool)

(assert (=> d!1650631 m!6162236))

(declare-fun m!6162238 () Bool)

(assert (=> d!1650631 m!6162238))

(declare-fun m!6162240 () Bool)

(assert (=> d!1650631 m!6162240))

(assert (=> d!1650631 m!6161706))

(assert (=> b!5104888 m!6161706))

(assert (=> b!5104888 m!6161714))

(assert (=> b!5104888 m!6161706))

(assert (=> b!5104888 m!6161714))

(assert (=> b!5104888 m!6162236))

(declare-fun m!6162242 () Bool)

(assert (=> b!5104888 m!6162242))

(assert (=> b!5104397 d!1650631))

(declare-fun d!1650633 () Bool)

(declare-fun lt!2100868 () Int)

(assert (=> d!1650633 (>= lt!2100868 0)))

(declare-fun e!3183815 () Int)

(assert (=> d!1650633 (= lt!2100868 e!3183815)))

(declare-fun c!877030 () Bool)

(assert (=> d!1650633 (= c!877030 (is-Nil!58860 Nil!58860))))

(assert (=> d!1650633 (= (size!39368 Nil!58860) lt!2100868)))

(declare-fun b!5104889 () Bool)

(assert (=> b!5104889 (= e!3183815 0)))

(declare-fun b!5104890 () Bool)

(assert (=> b!5104890 (= e!3183815 (+ 1 (size!39368 (t!371985 Nil!58860))))))

(assert (= (and d!1650633 c!877030) b!5104889))

(assert (= (and d!1650633 (not c!877030)) b!5104890))

(declare-fun m!6162244 () Bool)

(assert (=> b!5104890 m!6162244))

(assert (=> b!5104397 d!1650633))

(declare-fun d!1650635 () Bool)

(declare-fun c!877031 () Bool)

(assert (=> d!1650635 (= c!877031 (isEmpty!31811 (_1!35062 lt!2100327)))))

(declare-fun e!3183816 () Bool)

(assert (=> d!1650635 (= (matchZipper!738 z!4303 (_1!35062 lt!2100327)) e!3183816)))

(declare-fun b!5104891 () Bool)

(assert (=> b!5104891 (= e!3183816 (nullableZipper!965 z!4303))))

(declare-fun b!5104892 () Bool)

(assert (=> b!5104892 (= e!3183816 (matchZipper!738 (derivationStepZipper!753 z!4303 (head!10840 (_1!35062 lt!2100327))) (tail!9995 (_1!35062 lt!2100327))))))

(assert (= (and d!1650635 c!877031) b!5104891))

(assert (= (and d!1650635 (not c!877031)) b!5104892))

(assert (=> d!1650635 m!6161698))

(assert (=> b!5104891 m!6161886))

(declare-fun m!6162246 () Bool)

(assert (=> b!5104892 m!6162246))

(assert (=> b!5104892 m!6162246))

(declare-fun m!6162248 () Bool)

(assert (=> b!5104892 m!6162248))

(declare-fun m!6162250 () Bool)

(assert (=> b!5104892 m!6162250))

(assert (=> b!5104892 m!6162248))

(assert (=> b!5104892 m!6162250))

(declare-fun m!6162252 () Bool)

(assert (=> b!5104892 m!6162252))

(assert (=> b!5104400 d!1650635))

(declare-fun d!1650637 () Bool)

(declare-fun e!3183818 () Bool)

(assert (=> d!1650637 e!3183818))

(declare-fun res!2172786 () Bool)

(assert (=> d!1650637 (=> (not res!2172786) (not e!3183818))))

(declare-fun lt!2100869 () List!58984)

(assert (=> d!1650637 (= res!2172786 (= (content!10475 lt!2100869) (set.union (content!10475 (_1!35062 lt!2100326)) (content!10475 (_2!35062 lt!2100326)))))))

(declare-fun e!3183817 () List!58984)

(assert (=> d!1650637 (= lt!2100869 e!3183817)))

(declare-fun c!877032 () Bool)

(assert (=> d!1650637 (= c!877032 (is-Nil!58860 (_1!35062 lt!2100326)))))

(assert (=> d!1650637 (= (++!12915 (_1!35062 lt!2100326) (_2!35062 lt!2100326)) lt!2100869)))

(declare-fun b!5104894 () Bool)

(assert (=> b!5104894 (= e!3183817 (Cons!58860 (h!65308 (_1!35062 lt!2100326)) (++!12915 (t!371985 (_1!35062 lt!2100326)) (_2!35062 lt!2100326))))))

(declare-fun b!5104895 () Bool)

(declare-fun res!2172787 () Bool)

(assert (=> b!5104895 (=> (not res!2172787) (not e!3183818))))

(assert (=> b!5104895 (= res!2172787 (= (size!39368 lt!2100869) (+ (size!39368 (_1!35062 lt!2100326)) (size!39368 (_2!35062 lt!2100326)))))))

(declare-fun b!5104896 () Bool)

(assert (=> b!5104896 (= e!3183818 (or (not (= (_2!35062 lt!2100326) Nil!58860)) (= lt!2100869 (_1!35062 lt!2100326))))))

(declare-fun b!5104893 () Bool)

(assert (=> b!5104893 (= e!3183817 (_2!35062 lt!2100326))))

(assert (= (and d!1650637 c!877032) b!5104893))

(assert (= (and d!1650637 (not c!877032)) b!5104894))

(assert (= (and d!1650637 res!2172786) b!5104895))

(assert (= (and b!5104895 res!2172787) b!5104896))

(declare-fun m!6162254 () Bool)

(assert (=> d!1650637 m!6162254))

(declare-fun m!6162256 () Bool)

(assert (=> d!1650637 m!6162256))

(declare-fun m!6162258 () Bool)

(assert (=> d!1650637 m!6162258))

(declare-fun m!6162260 () Bool)

(assert (=> b!5104894 m!6162260))

(declare-fun m!6162262 () Bool)

(assert (=> b!5104895 m!6162262))

(assert (=> b!5104895 m!6161728))

(declare-fun m!6162264 () Bool)

(assert (=> b!5104895 m!6162264))

(assert (=> b!5104408 d!1650637))

(declare-fun b!5104897 () Bool)

(declare-fun e!3183821 () Bool)

(declare-fun lt!2100870 () Bool)

(declare-fun call!355847 () Bool)

(assert (=> b!5104897 (= e!3183821 (= lt!2100870 call!355847))))

(declare-fun b!5104898 () Bool)

(declare-fun res!2172794 () Bool)

(declare-fun e!3183825 () Bool)

(assert (=> b!5104898 (=> (not res!2172794) (not e!3183825))))

(assert (=> b!5104898 (= res!2172794 (isEmpty!31811 (tail!9995 (_1!35062 lt!2100320))))))

(declare-fun b!5104899 () Bool)

(declare-fun e!3183824 () Bool)

(assert (=> b!5104899 (= e!3183824 (not (= (head!10840 (_1!35062 lt!2100320)) (c!876900 r!12920))))))

(declare-fun b!5104900 () Bool)

(declare-fun e!3183823 () Bool)

(assert (=> b!5104900 (= e!3183823 (not lt!2100870))))

(declare-fun b!5104901 () Bool)

(declare-fun e!3183822 () Bool)

(declare-fun e!3183819 () Bool)

(assert (=> b!5104901 (= e!3183822 e!3183819)))

(declare-fun res!2172789 () Bool)

(assert (=> b!5104901 (=> (not res!2172789) (not e!3183819))))

(assert (=> b!5104901 (= res!2172789 (not lt!2100870))))

(declare-fun b!5104902 () Bool)

(declare-fun res!2172792 () Bool)

(assert (=> b!5104902 (=> (not res!2172792) (not e!3183825))))

(assert (=> b!5104902 (= res!2172792 (not call!355847))))

(declare-fun bm!355842 () Bool)

(assert (=> bm!355842 (= call!355847 (isEmpty!31811 (_1!35062 lt!2100320)))))

(declare-fun b!5104903 () Bool)

(assert (=> b!5104903 (= e!3183821 e!3183823)))

(declare-fun c!877033 () Bool)

(assert (=> b!5104903 (= c!877033 (is-EmptyLang!14066 r!12920))))

(declare-fun b!5104904 () Bool)

(declare-fun e!3183820 () Bool)

(assert (=> b!5104904 (= e!3183820 (matchR!6851 (derivativeStep!4004 r!12920 (head!10840 (_1!35062 lt!2100320))) (tail!9995 (_1!35062 lt!2100320))))))

(declare-fun b!5104905 () Bool)

(declare-fun res!2172795 () Bool)

(assert (=> b!5104905 (=> res!2172795 e!3183822)))

(assert (=> b!5104905 (= res!2172795 (not (is-ElementMatch!14066 r!12920)))))

(assert (=> b!5104905 (= e!3183823 e!3183822)))

(declare-fun b!5104906 () Bool)

(assert (=> b!5104906 (= e!3183820 (nullable!4724 r!12920))))

(declare-fun b!5104907 () Bool)

(declare-fun res!2172793 () Bool)

(assert (=> b!5104907 (=> res!2172793 e!3183824)))

(assert (=> b!5104907 (= res!2172793 (not (isEmpty!31811 (tail!9995 (_1!35062 lt!2100320)))))))

(declare-fun b!5104909 () Bool)

(declare-fun res!2172791 () Bool)

(assert (=> b!5104909 (=> res!2172791 e!3183822)))

(assert (=> b!5104909 (= res!2172791 e!3183825)))

(declare-fun res!2172790 () Bool)

(assert (=> b!5104909 (=> (not res!2172790) (not e!3183825))))

(assert (=> b!5104909 (= res!2172790 lt!2100870)))

(declare-fun b!5104910 () Bool)

(assert (=> b!5104910 (= e!3183819 e!3183824)))

(declare-fun res!2172788 () Bool)

(assert (=> b!5104910 (=> res!2172788 e!3183824)))

(assert (=> b!5104910 (= res!2172788 call!355847)))

(declare-fun b!5104908 () Bool)

(assert (=> b!5104908 (= e!3183825 (= (head!10840 (_1!35062 lt!2100320)) (c!876900 r!12920)))))

(declare-fun d!1650639 () Bool)

(assert (=> d!1650639 e!3183821))

(declare-fun c!877034 () Bool)

(assert (=> d!1650639 (= c!877034 (is-EmptyExpr!14066 r!12920))))

(assert (=> d!1650639 (= lt!2100870 e!3183820)))

(declare-fun c!877035 () Bool)

(assert (=> d!1650639 (= c!877035 (isEmpty!31811 (_1!35062 lt!2100320)))))

(assert (=> d!1650639 (validRegex!6193 r!12920)))

(assert (=> d!1650639 (= (matchR!6851 r!12920 (_1!35062 lt!2100320)) lt!2100870)))

(assert (= (and d!1650639 c!877035) b!5104906))

(assert (= (and d!1650639 (not c!877035)) b!5104904))

(assert (= (and d!1650639 c!877034) b!5104897))

(assert (= (and d!1650639 (not c!877034)) b!5104903))

(assert (= (and b!5104903 c!877033) b!5104900))

(assert (= (and b!5104903 (not c!877033)) b!5104905))

(assert (= (and b!5104905 (not res!2172795)) b!5104909))

(assert (= (and b!5104909 res!2172790) b!5104902))

(assert (= (and b!5104902 res!2172792) b!5104898))

(assert (= (and b!5104898 res!2172794) b!5104908))

(assert (= (and b!5104909 (not res!2172791)) b!5104901))

(assert (= (and b!5104901 res!2172789) b!5104910))

(assert (= (and b!5104910 (not res!2172788)) b!5104907))

(assert (= (and b!5104907 (not res!2172793)) b!5104899))

(assert (= (or b!5104897 b!5104902 b!5104910) bm!355842))

(declare-fun m!6162266 () Bool)

(assert (=> b!5104907 m!6162266))

(assert (=> b!5104907 m!6162266))

(declare-fun m!6162268 () Bool)

(assert (=> b!5104907 m!6162268))

(assert (=> b!5104898 m!6162266))

(assert (=> b!5104898 m!6162266))

(assert (=> b!5104898 m!6162268))

(assert (=> bm!355842 m!6161704))

(assert (=> b!5104906 m!6161918))

(declare-fun m!6162270 () Bool)

(assert (=> b!5104908 m!6162270))

(assert (=> b!5104899 m!6162270))

(assert (=> d!1650639 m!6161704))

(assert (=> d!1650639 m!6161742))

(assert (=> b!5104904 m!6162270))

(assert (=> b!5104904 m!6162270))

(declare-fun m!6162272 () Bool)

(assert (=> b!5104904 m!6162272))

(assert (=> b!5104904 m!6162266))

(assert (=> b!5104904 m!6162272))

(assert (=> b!5104904 m!6162266))

(declare-fun m!6162274 () Bool)

(assert (=> b!5104904 m!6162274))

(assert (=> b!5104409 d!1650639))

(declare-fun condSetEmpty!29311 () Bool)

(assert (=> setNonEmpty!29305 (= condSetEmpty!29311 (= setRest!29305 (as set.empty (Set Context!6900))))))

(declare-fun setRes!29311 () Bool)

(assert (=> setNonEmpty!29305 (= tp!1423797 setRes!29311)))

(declare-fun setIsEmpty!29311 () Bool)

(assert (=> setIsEmpty!29311 setRes!29311))

(declare-fun tp!1423833 () Bool)

(declare-fun setNonEmpty!29311 () Bool)

(declare-fun setElem!29311 () Context!6900)

(declare-fun e!3183828 () Bool)

(assert (=> setNonEmpty!29311 (= setRes!29311 (and tp!1423833 (inv!78341 setElem!29311) e!3183828))))

(declare-fun setRest!29311 () (Set Context!6900))

(assert (=> setNonEmpty!29311 (= setRest!29305 (set.union (set.insert setElem!29311 (as set.empty (Set Context!6900))) setRest!29311))))

(declare-fun b!5104915 () Bool)

(declare-fun tp!1423832 () Bool)

(assert (=> b!5104915 (= e!3183828 tp!1423832)))

(assert (= (and setNonEmpty!29305 condSetEmpty!29311) setIsEmpty!29311))

(assert (= (and setNonEmpty!29305 (not condSetEmpty!29311)) setNonEmpty!29311))

(assert (= setNonEmpty!29311 b!5104915))

(declare-fun m!6162276 () Bool)

(assert (=> setNonEmpty!29311 m!6162276))

(declare-fun b!5104928 () Bool)

(declare-fun e!3183831 () Bool)

(declare-fun tp!1423846 () Bool)

(assert (=> b!5104928 (= e!3183831 tp!1423846)))

(assert (=> b!5104407 (= tp!1423798 e!3183831)))

(declare-fun b!5104927 () Bool)

(declare-fun tp!1423847 () Bool)

(declare-fun tp!1423845 () Bool)

(assert (=> b!5104927 (= e!3183831 (and tp!1423847 tp!1423845))))

(declare-fun b!5104929 () Bool)

(declare-fun tp!1423848 () Bool)

(declare-fun tp!1423844 () Bool)

(assert (=> b!5104929 (= e!3183831 (and tp!1423848 tp!1423844))))

(declare-fun b!5104926 () Bool)

(assert (=> b!5104926 (= e!3183831 tp_is_empty!37397)))

(assert (= (and b!5104407 (is-ElementMatch!14066 (regOne!28644 r!12920))) b!5104926))

(assert (= (and b!5104407 (is-Concat!22911 (regOne!28644 r!12920))) b!5104927))

(assert (= (and b!5104407 (is-Star!14066 (regOne!28644 r!12920))) b!5104928))

(assert (= (and b!5104407 (is-Union!14066 (regOne!28644 r!12920))) b!5104929))

(declare-fun b!5104932 () Bool)

(declare-fun e!3183832 () Bool)

(declare-fun tp!1423851 () Bool)

(assert (=> b!5104932 (= e!3183832 tp!1423851)))

(assert (=> b!5104407 (= tp!1423803 e!3183832)))

(declare-fun b!5104931 () Bool)

(declare-fun tp!1423852 () Bool)

(declare-fun tp!1423850 () Bool)

(assert (=> b!5104931 (= e!3183832 (and tp!1423852 tp!1423850))))

(declare-fun b!5104933 () Bool)

(declare-fun tp!1423853 () Bool)

(declare-fun tp!1423849 () Bool)

(assert (=> b!5104933 (= e!3183832 (and tp!1423853 tp!1423849))))

(declare-fun b!5104930 () Bool)

(assert (=> b!5104930 (= e!3183832 tp_is_empty!37397)))

(assert (= (and b!5104407 (is-ElementMatch!14066 (regTwo!28644 r!12920))) b!5104930))

(assert (= (and b!5104407 (is-Concat!22911 (regTwo!28644 r!12920))) b!5104931))

(assert (= (and b!5104407 (is-Star!14066 (regTwo!28644 r!12920))) b!5104932))

(assert (= (and b!5104407 (is-Union!14066 (regTwo!28644 r!12920))) b!5104933))

(declare-fun b!5104938 () Bool)

(declare-fun e!3183835 () Bool)

(declare-fun tp!1423856 () Bool)

(assert (=> b!5104938 (= e!3183835 (and tp_is_empty!37397 tp!1423856))))

(assert (=> b!5104401 (= tp!1423796 e!3183835)))

(assert (= (and b!5104401 (is-Cons!58860 (t!371985 input!5654))) b!5104938))

(declare-fun b!5104943 () Bool)

(declare-fun e!3183838 () Bool)

(declare-fun tp!1423861 () Bool)

(declare-fun tp!1423862 () Bool)

(assert (=> b!5104943 (= e!3183838 (and tp!1423861 tp!1423862))))

(assert (=> b!5104406 (= tp!1423799 e!3183838)))

(assert (= (and b!5104406 (is-Cons!58861 (exprs!3950 setElem!29305))) b!5104943))

(declare-fun b!5104946 () Bool)

(declare-fun e!3183839 () Bool)

(declare-fun tp!1423865 () Bool)

(assert (=> b!5104946 (= e!3183839 tp!1423865)))

(assert (=> b!5104410 (= tp!1423801 e!3183839)))

(declare-fun b!5104945 () Bool)

(declare-fun tp!1423866 () Bool)

(declare-fun tp!1423864 () Bool)

(assert (=> b!5104945 (= e!3183839 (and tp!1423866 tp!1423864))))

(declare-fun b!5104947 () Bool)

(declare-fun tp!1423867 () Bool)

(declare-fun tp!1423863 () Bool)

(assert (=> b!5104947 (= e!3183839 (and tp!1423867 tp!1423863))))

(declare-fun b!5104944 () Bool)

(assert (=> b!5104944 (= e!3183839 tp_is_empty!37397)))

(assert (= (and b!5104410 (is-ElementMatch!14066 (regOne!28645 r!12920))) b!5104944))

(assert (= (and b!5104410 (is-Concat!22911 (regOne!28645 r!12920))) b!5104945))

(assert (= (and b!5104410 (is-Star!14066 (regOne!28645 r!12920))) b!5104946))

(assert (= (and b!5104410 (is-Union!14066 (regOne!28645 r!12920))) b!5104947))

(declare-fun b!5104950 () Bool)

(declare-fun e!3183840 () Bool)

(declare-fun tp!1423870 () Bool)

(assert (=> b!5104950 (= e!3183840 tp!1423870)))

(assert (=> b!5104410 (= tp!1423800 e!3183840)))

(declare-fun b!5104949 () Bool)

(declare-fun tp!1423871 () Bool)

(declare-fun tp!1423869 () Bool)

(assert (=> b!5104949 (= e!3183840 (and tp!1423871 tp!1423869))))

(declare-fun b!5104951 () Bool)

(declare-fun tp!1423872 () Bool)

(declare-fun tp!1423868 () Bool)

(assert (=> b!5104951 (= e!3183840 (and tp!1423872 tp!1423868))))

(declare-fun b!5104948 () Bool)

(assert (=> b!5104948 (= e!3183840 tp_is_empty!37397)))

(assert (= (and b!5104410 (is-ElementMatch!14066 (regTwo!28645 r!12920))) b!5104948))

(assert (= (and b!5104410 (is-Concat!22911 (regTwo!28645 r!12920))) b!5104949))

(assert (= (and b!5104410 (is-Star!14066 (regTwo!28645 r!12920))) b!5104950))

(assert (= (and b!5104410 (is-Union!14066 (regTwo!28645 r!12920))) b!5104951))

(declare-fun b!5104954 () Bool)

(declare-fun e!3183841 () Bool)

(declare-fun tp!1423875 () Bool)

(assert (=> b!5104954 (= e!3183841 tp!1423875)))

(assert (=> b!5104404 (= tp!1423802 e!3183841)))

(declare-fun b!5104953 () Bool)

(declare-fun tp!1423876 () Bool)

(declare-fun tp!1423874 () Bool)

(assert (=> b!5104953 (= e!3183841 (and tp!1423876 tp!1423874))))

(declare-fun b!5104955 () Bool)

(declare-fun tp!1423877 () Bool)

(declare-fun tp!1423873 () Bool)

(assert (=> b!5104955 (= e!3183841 (and tp!1423877 tp!1423873))))

(declare-fun b!5104952 () Bool)

(assert (=> b!5104952 (= e!3183841 tp_is_empty!37397)))

(assert (= (and b!5104404 (is-ElementMatch!14066 (reg!14395 r!12920))) b!5104952))

(assert (= (and b!5104404 (is-Concat!22911 (reg!14395 r!12920))) b!5104953))

(assert (= (and b!5104404 (is-Star!14066 (reg!14395 r!12920))) b!5104954))

(assert (= (and b!5104404 (is-Union!14066 (reg!14395 r!12920))) b!5104955))

(push 1)

(assert (not bm!355842))

(assert (not d!1650621))

(assert (not b!5104891))

(assert (not b!5104501))

(assert (not b!5104561))

(assert (not d!1650597))

(assert (not b!5104899))

(assert (not b!5104488))

(assert (not b!5104879))

(assert (not b!5104712))

(assert (not bm!355809))

(assert (not d!1650623))

(assert (not bm!355804))

(assert (not d!1650525))

(assert (not b!5104787))

(assert (not b!5104859))

(assert (not b!5104949))

(assert (not b!5104854))

(assert (not bm!355803))

(assert (not b!5104929))

(assert (not d!1650619))

(assert (not b!5104570))

(assert (not bm!355735))

(assert (not b!5104518))

(assert (not b!5104892))

(assert (not b!5104884))

(assert (not b!5104938))

(assert (not bm!355834))

(assert (not b!5104708))

(assert (not d!1650537))

(assert (not d!1650515))

(assert (not b!5104569))

(assert (not bm!355808))

(assert (not b!5104529))

(assert (not bm!355736))

(assert (not b!5104931))

(assert (not b!5104915))

(assert (not bm!355839))

(assert (not b!5104945))

(assert (not b!5104885))

(assert (not b!5104793))

(assert (not b!5104723))

(assert (not bm!355740))

(assert (not b!5104907))

(assert (not b!5104894))

(assert (not b!5104866))

(assert (not b!5104797))

(assert (not b!5104857))

(assert (not b!5104869))

(assert (not b!5104906))

(assert (not bm!355837))

(assert (not b!5104950))

(assert (not b!5104791))

(assert (not d!1650527))

(assert (not b!5104880))

(assert (not bm!355841))

(assert (not bm!355806))

(assert (not bm!355836))

(assert (not d!1650531))

(assert (not d!1650635))

(assert (not b!5104954))

(assert (not d!1650639))

(assert (not d!1650593))

(assert (not b!5104883))

(assert (not b!5104908))

(assert (not b!5104888))

(assert (not d!1650521))

(assert (not b!5104711))

(assert (not b!5104530))

(assert (not bm!355835))

(assert (not bm!355838))

(assert (not b!5104953))

(assert (not b!5104928))

(assert (not d!1650543))

(assert (not b!5104502))

(assert (not d!1650637))

(assert (not bm!355805))

(assert (not bm!355840))

(assert (not b!5104568))

(assert (not b!5104464))

(assert (not d!1650615))

(assert (not b!5104895))

(assert (not d!1650631))

(assert (not bm!355807))

(assert (not b!5104881))

(assert (not d!1650601))

(assert (not d!1650541))

(assert (not b!5104955))

(assert (not b!5104927))

(assert (not setNonEmpty!29311))

(assert (not b!5104890))

(assert (not b!5104703))

(assert (not b!5104524))

(assert (not b!5104853))

(assert (not b!5104951))

(assert (not b!5104943))

(assert (not b!5104898))

(assert (not b!5104566))

(assert (not d!1650551))

(assert (not b!5104574))

(assert tp_is_empty!37397)

(assert (not d!1650545))

(assert (not b!5104947))

(assert (not bm!355761))

(assert (not bm!355802))

(assert (not b!5104904))

(assert (not d!1650533))

(assert (not b!5104710))

(assert (not b!5104702))

(assert (not b!5104932))

(assert (not b!5104560))

(assert (not b!5104933))

(assert (not b!5104946))

(assert (not b!5104865))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

