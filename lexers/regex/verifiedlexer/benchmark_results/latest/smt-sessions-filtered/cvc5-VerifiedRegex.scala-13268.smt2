; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!721824 () Bool)

(assert start!721824)

(declare-fun b!7409438 () Bool)

(assert (=> b!7409438 true))

(declare-fun b!7409439 () Bool)

(assert (=> b!7409439 true))

(declare-fun lambda!459832 () Int)

(declare-fun lambda!459831 () Int)

(assert (=> b!7409439 (not (= lambda!459832 lambda!459831))))

(assert (=> b!7409439 true))

(assert (=> b!7409439 true))

(declare-fun b!7409430 () Bool)

(declare-fun res!2982865 () Bool)

(declare-fun e!4431500 () Bool)

(assert (=> b!7409430 (=> (not res!2982865) (not e!4431500))))

(declare-datatypes ((C!39094 0))(
  ( (C!39095 (val!29921 Int)) )
))
(declare-datatypes ((Regex!19410 0))(
  ( (ElementMatch!19410 (c!1375307 C!39094)) (Concat!28255 (regOne!39332 Regex!19410) (regTwo!39332 Regex!19410)) (EmptyExpr!19410) (Star!19410 (reg!19739 Regex!19410)) (EmptyLang!19410) (Union!19410 (regOne!39333 Regex!19410) (regTwo!39333 Regex!19410)) )
))
(declare-datatypes ((List!72016 0))(
  ( (Nil!71892) (Cons!71892 (h!78340 Regex!19410) (t!386575 List!72016)) )
))
(declare-datatypes ((Context!16700 0))(
  ( (Context!16701 (exprs!8850 List!72016)) )
))
(declare-fun c!10532 () Context!16700)

(declare-fun isEmpty!41054 (List!72016) Bool)

(assert (=> b!7409430 (= res!2982865 (not (isEmpty!41054 (exprs!8850 c!10532))))))

(declare-fun tp!2119948 () Bool)

(declare-fun setRes!56268 () Bool)

(declare-fun setElem!56268 () Context!16700)

(declare-fun e!4431497 () Bool)

(declare-fun setNonEmpty!56268 () Bool)

(declare-fun inv!91887 (Context!16700) Bool)

(assert (=> setNonEmpty!56268 (= setRes!56268 (and tp!2119948 (inv!91887 setElem!56268) e!4431497))))

(declare-fun z!3451 () (Set Context!16700))

(declare-fun setRest!56268 () (Set Context!16700))

(assert (=> setNonEmpty!56268 (= z!3451 (set.union (set.insert setElem!56268 (as set.empty (Set Context!16700))) setRest!56268))))

(declare-fun res!2982863 () Bool)

(assert (=> start!721824 (=> (not res!2982863) (not e!4431500))))

(assert (=> start!721824 (= res!2982863 (= z!3451 (set.insert c!10532 (as set.empty (Set Context!16700)))))))

(assert (=> start!721824 e!4431500))

(declare-fun condSetEmpty!56268 () Bool)

(assert (=> start!721824 (= condSetEmpty!56268 (= z!3451 (as set.empty (Set Context!16700))))))

(assert (=> start!721824 setRes!56268))

(declare-fun e!4431496 () Bool)

(assert (=> start!721824 (and (inv!91887 c!10532) e!4431496)))

(declare-fun tp_is_empty!49083 () Bool)

(assert (=> start!721824 tp_is_empty!49083))

(declare-fun e!4431492 () Bool)

(assert (=> start!721824 e!4431492))

(declare-fun b!7409431 () Bool)

(declare-fun res!2982869 () Bool)

(assert (=> b!7409431 (=> (not res!2982869) (not e!4431500))))

(declare-fun a!2228 () C!39094)

(declare-fun head!15210 (List!72016) Regex!19410)

(assert (=> b!7409431 (= res!2982869 (= (head!15210 (exprs!8850 c!10532)) (ElementMatch!19410 a!2228)))))

(declare-fun b!7409432 () Bool)

(declare-datatypes ((Unit!165712 0))(
  ( (Unit!165713) )
))
(declare-fun e!4431498 () Unit!165712)

(declare-fun Unit!165714 () Unit!165712)

(assert (=> b!7409432 (= e!4431498 Unit!165714)))

(declare-fun b!7409433 () Bool)

(declare-fun res!2982862 () Bool)

(assert (=> b!7409433 (=> (not res!2982862) (not e!4431500))))

(declare-fun tail!14819 (List!72016) List!72016)

(assert (=> b!7409433 (= res!2982862 (isEmpty!41054 (tail!14819 (exprs!8850 c!10532))))))

(declare-fun b!7409434 () Bool)

(declare-fun res!2982867 () Bool)

(assert (=> b!7409434 (=> (not res!2982867) (not e!4431500))))

(declare-datatypes ((List!72017 0))(
  ( (Nil!71893) (Cons!71893 (h!78341 C!39094) (t!386576 List!72017)) )
))
(declare-fun s!7927 () List!72017)

(assert (=> b!7409434 (= res!2982867 (and (is-Cons!71893 s!7927) (= (h!78341 s!7927) a!2228)))))

(declare-fun b!7409435 () Bool)

(declare-fun tp!2119951 () Bool)

(assert (=> b!7409435 (= e!4431496 tp!2119951)))

(declare-fun b!7409436 () Bool)

(declare-fun e!4431493 () Bool)

(declare-fun tp!2119947 () Bool)

(assert (=> b!7409436 (= e!4431493 tp!2119947)))

(declare-fun b!7409437 () Bool)

(declare-fun e!4431501 () Bool)

(declare-fun e!4431494 () Bool)

(assert (=> b!7409437 (= e!4431501 e!4431494)))

(declare-fun res!2982864 () Bool)

(assert (=> b!7409437 (=> res!2982864 e!4431494)))

(declare-fun isEmpty!41055 (List!72017) Bool)

(assert (=> b!7409437 (= res!2982864 (not (isEmpty!41055 (t!386576 s!7927))))))

(declare-fun lt!2618735 () Bool)

(assert (=> b!7409437 lt!2618735))

(declare-fun lt!2618736 () Unit!165712)

(assert (=> b!7409437 (= lt!2618736 e!4431498)))

(declare-fun c!1375306 () Bool)

(assert (=> b!7409437 (= c!1375306 (not lt!2618735))))

(declare-fun lt!2618741 () (Set Context!16700))

(declare-fun lt!2618737 () (Set Context!16700))

(assert (=> b!7409437 (= lt!2618735 (= lt!2618741 lt!2618737))))

(declare-fun setIsEmpty!56268 () Bool)

(assert (=> setIsEmpty!56268 setRes!56268))

(declare-fun e!4431499 () Bool)

(assert (=> b!7409438 (= e!4431499 (not e!4431501))))

(declare-fun res!2982866 () Bool)

(assert (=> b!7409438 (=> res!2982866 e!4431501)))

(declare-fun lt!2618742 () Context!16700)

(assert (=> b!7409438 (= res!2982866 (not (set.member lt!2618742 lt!2618741)))))

(declare-fun lt!2618743 () Context!16700)

(declare-fun lambda!459830 () Int)

(declare-fun flatMapPost!217 ((Set Context!16700) Int Context!16700) Context!16700)

(assert (=> b!7409438 (= (flatMapPost!217 z!3451 lambda!459830 lt!2618742) lt!2618743)))

(declare-fun empty!3587 () Context!16700)

(assert (=> b!7409438 (= lt!2618743 empty!3587)))

(assert (=> b!7409438 true))

(assert (=> b!7409438 (and (inv!91887 empty!3587) e!4431493)))

(declare-fun Unit!165715 () Unit!165712)

(assert (=> b!7409439 (= e!4431498 Unit!165715)))

(declare-fun lt!2618738 () Context!16700)

(declare-fun getWitness!2453 ((Set Context!16700) Int) Context!16700)

(assert (=> b!7409439 (= lt!2618738 (getWitness!2453 lt!2618741 lambda!459831))))

(assert (=> b!7409439 (= (flatMapPost!217 z!3451 lambda!459830 lt!2618738) lt!2618743)))

(declare-fun lt!2618739 () Context!16700)

(assert (=> b!7409439 (= lt!2618739 (getWitness!2453 z!3451 lambda!459832))))

(assert (=> b!7409439 false))

(declare-fun b!7409440 () Bool)

(declare-fun e!4431495 () Bool)

(assert (=> b!7409440 (= e!4431494 e!4431495)))

(declare-fun res!2982861 () Bool)

(assert (=> b!7409440 (=> res!2982861 e!4431495)))

(declare-fun matchZipper!3810 ((Set Context!16700) List!72017) Bool)

(assert (=> b!7409440 (= res!2982861 (not (matchZipper!3810 z!3451 s!7927)))))

(assert (=> b!7409440 (matchZipper!3810 lt!2618737 (t!386576 s!7927))))

(declare-fun lt!2618734 () Unit!165712)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!65 ((Set Context!16700) List!72017) Unit!165712)

(assert (=> b!7409440 (= lt!2618734 (lemmaZipperOfEmptyContextMatchesEmptyString!65 lt!2618737 (t!386576 s!7927)))))

(declare-fun b!7409441 () Bool)

(declare-fun tp!2119949 () Bool)

(assert (=> b!7409441 (= e!4431492 (and tp_is_empty!49083 tp!2119949))))

(declare-fun b!7409442 () Bool)

(assert (=> b!7409442 (= e!4431495 (= s!7927 (Cons!71893 a!2228 Nil!71893)))))

(declare-fun b!7409443 () Bool)

(declare-fun tp!2119950 () Bool)

(assert (=> b!7409443 (= e!4431497 tp!2119950)))

(declare-fun b!7409444 () Bool)

(assert (=> b!7409444 (= e!4431500 e!4431499)))

(declare-fun res!2982868 () Bool)

(assert (=> b!7409444 (=> (not res!2982868) (not e!4431499))))

(declare-fun lt!2618740 () C!39094)

(declare-fun derivationStepZipperUp!2814 (Context!16700 C!39094) (Set Context!16700))

(assert (=> b!7409444 (= res!2982868 (= (derivationStepZipperUp!2814 c!10532 lt!2618740) lt!2618737))))

(assert (=> b!7409444 (= lt!2618737 (set.insert lt!2618742 (as set.empty (Set Context!16700))))))

(assert (=> b!7409444 (= lt!2618742 (Context!16701 Nil!71892))))

(declare-fun derivationStepZipper!3684 ((Set Context!16700) C!39094) (Set Context!16700))

(assert (=> b!7409444 (= lt!2618741 (derivationStepZipper!3684 z!3451 lt!2618740))))

(declare-fun head!15211 (List!72017) C!39094)

(assert (=> b!7409444 (= lt!2618740 (head!15211 s!7927))))

(assert (= (and start!721824 res!2982863) b!7409430))

(assert (= (and b!7409430 res!2982865) b!7409431))

(assert (= (and b!7409431 res!2982869) b!7409433))

(assert (= (and b!7409433 res!2982862) b!7409434))

(assert (= (and b!7409434 res!2982867) b!7409444))

(assert (= (and b!7409444 res!2982868) b!7409438))

(assert (= b!7409438 b!7409436))

(assert (= (and b!7409438 (not res!2982866)) b!7409437))

(assert (= (and b!7409437 c!1375306) b!7409439))

(assert (= (and b!7409437 (not c!1375306)) b!7409432))

(assert (= (and b!7409437 (not res!2982864)) b!7409440))

(assert (= (and b!7409440 (not res!2982861)) b!7409442))

(assert (= (and start!721824 condSetEmpty!56268) setIsEmpty!56268))

(assert (= (and start!721824 (not condSetEmpty!56268)) setNonEmpty!56268))

(assert (= setNonEmpty!56268 b!7409443))

(assert (= start!721824 b!7409435))

(assert (= (and start!721824 (is-Cons!71893 s!7927)) b!7409441))

(declare-fun m!8044788 () Bool)

(assert (=> start!721824 m!8044788))

(declare-fun m!8044790 () Bool)

(assert (=> start!721824 m!8044790))

(declare-fun m!8044792 () Bool)

(assert (=> b!7409440 m!8044792))

(declare-fun m!8044794 () Bool)

(assert (=> b!7409440 m!8044794))

(declare-fun m!8044796 () Bool)

(assert (=> b!7409440 m!8044796))

(declare-fun m!8044798 () Bool)

(assert (=> b!7409438 m!8044798))

(declare-fun m!8044800 () Bool)

(assert (=> b!7409438 m!8044800))

(declare-fun m!8044802 () Bool)

(assert (=> b!7409438 m!8044802))

(declare-fun m!8044804 () Bool)

(assert (=> b!7409430 m!8044804))

(declare-fun m!8044806 () Bool)

(assert (=> b!7409431 m!8044806))

(declare-fun m!8044808 () Bool)

(assert (=> b!7409433 m!8044808))

(assert (=> b!7409433 m!8044808))

(declare-fun m!8044810 () Bool)

(assert (=> b!7409433 m!8044810))

(declare-fun m!8044812 () Bool)

(assert (=> b!7409437 m!8044812))

(declare-fun m!8044814 () Bool)

(assert (=> b!7409439 m!8044814))

(declare-fun m!8044816 () Bool)

(assert (=> b!7409439 m!8044816))

(declare-fun m!8044818 () Bool)

(assert (=> b!7409439 m!8044818))

(declare-fun m!8044820 () Bool)

(assert (=> b!7409444 m!8044820))

(declare-fun m!8044822 () Bool)

(assert (=> b!7409444 m!8044822))

(declare-fun m!8044824 () Bool)

(assert (=> b!7409444 m!8044824))

(declare-fun m!8044826 () Bool)

(assert (=> b!7409444 m!8044826))

(declare-fun m!8044828 () Bool)

(assert (=> setNonEmpty!56268 m!8044828))

(push 1)

(assert (not b!7409439))

(assert (not b!7409444))

(assert (not b!7409431))

(assert (not b!7409438))

(assert (not b!7409437))

(assert (not start!721824))

(assert (not b!7409441))

(assert (not b!7409436))

(assert (not b!7409435))

(assert (not b!7409430))

(assert (not b!7409433))

(assert (not setNonEmpty!56268))

(assert tp_is_empty!49083)

(assert (not b!7409440))

(assert (not b!7409443))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2291513 () Bool)

(declare-fun c!1375324 () Bool)

(assert (=> d!2291513 (= c!1375324 (isEmpty!41055 s!7927))))

(declare-fun e!4431536 () Bool)

(assert (=> d!2291513 (= (matchZipper!3810 z!3451 s!7927) e!4431536)))

(declare-fun b!7409510 () Bool)

(declare-fun nullableZipper!3139 ((Set Context!16700)) Bool)

(assert (=> b!7409510 (= e!4431536 (nullableZipper!3139 z!3451))))

(declare-fun b!7409511 () Bool)

(declare-fun tail!14821 (List!72017) List!72017)

(assert (=> b!7409511 (= e!4431536 (matchZipper!3810 (derivationStepZipper!3684 z!3451 (head!15211 s!7927)) (tail!14821 s!7927)))))

(assert (= (and d!2291513 c!1375324) b!7409510))

(assert (= (and d!2291513 (not c!1375324)) b!7409511))

(declare-fun m!8044874 () Bool)

(assert (=> d!2291513 m!8044874))

(declare-fun m!8044876 () Bool)

(assert (=> b!7409510 m!8044876))

(assert (=> b!7409511 m!8044826))

(assert (=> b!7409511 m!8044826))

(declare-fun m!8044878 () Bool)

(assert (=> b!7409511 m!8044878))

(declare-fun m!8044880 () Bool)

(assert (=> b!7409511 m!8044880))

(assert (=> b!7409511 m!8044878))

(assert (=> b!7409511 m!8044880))

(declare-fun m!8044882 () Bool)

(assert (=> b!7409511 m!8044882))

(assert (=> b!7409440 d!2291513))

(declare-fun d!2291515 () Bool)

(declare-fun c!1375325 () Bool)

(assert (=> d!2291515 (= c!1375325 (isEmpty!41055 (t!386576 s!7927)))))

(declare-fun e!4431537 () Bool)

(assert (=> d!2291515 (= (matchZipper!3810 lt!2618737 (t!386576 s!7927)) e!4431537)))

(declare-fun b!7409512 () Bool)

(assert (=> b!7409512 (= e!4431537 (nullableZipper!3139 lt!2618737))))

(declare-fun b!7409513 () Bool)

(assert (=> b!7409513 (= e!4431537 (matchZipper!3810 (derivationStepZipper!3684 lt!2618737 (head!15211 (t!386576 s!7927))) (tail!14821 (t!386576 s!7927))))))

(assert (= (and d!2291515 c!1375325) b!7409512))

(assert (= (and d!2291515 (not c!1375325)) b!7409513))

(assert (=> d!2291515 m!8044812))

(declare-fun m!8044884 () Bool)

(assert (=> b!7409512 m!8044884))

(declare-fun m!8044886 () Bool)

(assert (=> b!7409513 m!8044886))

(assert (=> b!7409513 m!8044886))

(declare-fun m!8044888 () Bool)

(assert (=> b!7409513 m!8044888))

(declare-fun m!8044890 () Bool)

(assert (=> b!7409513 m!8044890))

(assert (=> b!7409513 m!8044888))

(assert (=> b!7409513 m!8044890))

(declare-fun m!8044892 () Bool)

(assert (=> b!7409513 m!8044892))

(assert (=> b!7409440 d!2291515))

(declare-fun d!2291517 () Bool)

(assert (=> d!2291517 (= (matchZipper!3810 lt!2618737 (t!386576 s!7927)) (isEmpty!41055 (t!386576 s!7927)))))

(declare-fun lt!2618776 () Unit!165712)

(declare-fun choose!57462 ((Set Context!16700) List!72017) Unit!165712)

(assert (=> d!2291517 (= lt!2618776 (choose!57462 lt!2618737 (t!386576 s!7927)))))

(assert (=> d!2291517 (= lt!2618737 (set.singleton (Context!16701 Nil!71892)))))

(assert (=> d!2291517 (= (lemmaZipperOfEmptyContextMatchesEmptyString!65 lt!2618737 (t!386576 s!7927)) lt!2618776)))

(declare-fun bs!1924406 () Bool)

(assert (= bs!1924406 d!2291517))

(assert (=> bs!1924406 m!8044794))

(assert (=> bs!1924406 m!8044812))

(declare-fun m!8044914 () Bool)

(assert (=> bs!1924406 m!8044914))

(assert (=> b!7409440 d!2291517))

(declare-fun d!2291523 () Bool)

(assert (=> d!2291523 (= (head!15210 (exprs!8850 c!10532)) (h!78340 (exprs!8850 c!10532)))))

(assert (=> b!7409431 d!2291523))

(declare-fun d!2291525 () Bool)

(assert (=> d!2291525 (= (isEmpty!41054 (exprs!8850 c!10532)) (is-Nil!71892 (exprs!8850 c!10532)))))

(assert (=> b!7409430 d!2291525))

(declare-fun b!7409528 () Bool)

(declare-fun e!4431546 () Bool)

(declare-fun nullable!8454 (Regex!19410) Bool)

(assert (=> b!7409528 (= e!4431546 (nullable!8454 (h!78340 (exprs!8850 c!10532))))))

(declare-fun b!7409529 () Bool)

(declare-fun e!4431548 () (Set Context!16700))

(assert (=> b!7409529 (= e!4431548 (as set.empty (Set Context!16700)))))

(declare-fun d!2291527 () Bool)

(declare-fun c!1375333 () Bool)

(assert (=> d!2291527 (= c!1375333 e!4431546)))

(declare-fun res!2982899 () Bool)

(assert (=> d!2291527 (=> (not res!2982899) (not e!4431546))))

(assert (=> d!2291527 (= res!2982899 (is-Cons!71892 (exprs!8850 c!10532)))))

(declare-fun e!4431547 () (Set Context!16700))

(assert (=> d!2291527 (= (derivationStepZipperUp!2814 c!10532 lt!2618740) e!4431547)))

(declare-fun bm!682188 () Bool)

(declare-fun call!682193 () (Set Context!16700))

(declare-fun derivationStepZipperDown!3206 (Regex!19410 Context!16700 C!39094) (Set Context!16700))

(assert (=> bm!682188 (= call!682193 (derivationStepZipperDown!3206 (h!78340 (exprs!8850 c!10532)) (Context!16701 (t!386575 (exprs!8850 c!10532))) lt!2618740))))

(declare-fun b!7409530 () Bool)

(assert (=> b!7409530 (= e!4431547 (set.union call!682193 (derivationStepZipperUp!2814 (Context!16701 (t!386575 (exprs!8850 c!10532))) lt!2618740)))))

(declare-fun b!7409531 () Bool)

(assert (=> b!7409531 (= e!4431547 e!4431548)))

(declare-fun c!1375332 () Bool)

(assert (=> b!7409531 (= c!1375332 (is-Cons!71892 (exprs!8850 c!10532)))))

(declare-fun b!7409532 () Bool)

(assert (=> b!7409532 (= e!4431548 call!682193)))

(assert (= (and d!2291527 res!2982899) b!7409528))

(assert (= (and d!2291527 c!1375333) b!7409530))

(assert (= (and d!2291527 (not c!1375333)) b!7409531))

(assert (= (and b!7409531 c!1375332) b!7409532))

(assert (= (and b!7409531 (not c!1375332)) b!7409529))

(assert (= (or b!7409530 b!7409532) bm!682188))

(declare-fun m!8044916 () Bool)

(assert (=> b!7409528 m!8044916))

(declare-fun m!8044918 () Bool)

(assert (=> bm!682188 m!8044918))

(declare-fun m!8044920 () Bool)

(assert (=> b!7409530 m!8044920))

(assert (=> b!7409444 d!2291527))

(declare-fun bs!1924408 () Bool)

(declare-fun d!2291529 () Bool)

(assert (= bs!1924408 (and d!2291529 b!7409438)))

(declare-fun lambda!459849 () Int)

(assert (=> bs!1924408 (= (= lt!2618740 a!2228) (= lambda!459849 lambda!459830))))

(assert (=> d!2291529 true))

(declare-fun flatMap!3210 ((Set Context!16700) Int) (Set Context!16700))

(assert (=> d!2291529 (= (derivationStepZipper!3684 z!3451 lt!2618740) (flatMap!3210 z!3451 lambda!459849))))

(declare-fun bs!1924409 () Bool)

(assert (= bs!1924409 d!2291529))

(declare-fun m!8044924 () Bool)

(assert (=> bs!1924409 m!8044924))

(assert (=> b!7409444 d!2291529))

(declare-fun d!2291533 () Bool)

(assert (=> d!2291533 (= (head!15211 s!7927) (h!78341 s!7927))))

(assert (=> b!7409444 d!2291533))

(declare-fun d!2291535 () Bool)

(declare-fun e!4431551 () Bool)

(assert (=> d!2291535 e!4431551))

(declare-fun res!2982902 () Bool)

(assert (=> d!2291535 (=> (not res!2982902) (not e!4431551))))

(declare-fun lt!2618782 () Context!16700)

(declare-fun dynLambda!29664 (Int Context!16700) Bool)

(assert (=> d!2291535 (= res!2982902 (dynLambda!29664 lambda!459831 lt!2618782))))

(declare-datatypes ((List!72020 0))(
  ( (Nil!71896) (Cons!71896 (h!78344 Context!16700) (t!386579 List!72020)) )
))
(declare-fun getWitness!2455 (List!72020 Int) Context!16700)

(declare-fun toList!11761 ((Set Context!16700)) List!72020)

(assert (=> d!2291535 (= lt!2618782 (getWitness!2455 (toList!11761 lt!2618741) lambda!459831))))

(declare-fun exists!4778 ((Set Context!16700) Int) Bool)

(assert (=> d!2291535 (exists!4778 lt!2618741 lambda!459831)))

(assert (=> d!2291535 (= (getWitness!2453 lt!2618741 lambda!459831) lt!2618782)))

(declare-fun b!7409535 () Bool)

(assert (=> b!7409535 (= e!4431551 (set.member lt!2618782 lt!2618741))))

(assert (= (and d!2291535 res!2982902) b!7409535))

(declare-fun b_lambda!286495 () Bool)

(assert (=> (not b_lambda!286495) (not d!2291535)))

(declare-fun m!8044926 () Bool)

(assert (=> d!2291535 m!8044926))

(declare-fun m!8044928 () Bool)

(assert (=> d!2291535 m!8044928))

(assert (=> d!2291535 m!8044928))

(declare-fun m!8044930 () Bool)

(assert (=> d!2291535 m!8044930))

(declare-fun m!8044932 () Bool)

(assert (=> d!2291535 m!8044932))

(declare-fun m!8044934 () Bool)

(assert (=> b!7409535 m!8044934))

(assert (=> b!7409439 d!2291535))

(declare-fun bs!1924410 () Bool)

(declare-fun d!2291537 () Bool)

(assert (= bs!1924410 (and d!2291537 b!7409439)))

(declare-fun lambda!459852 () Int)

(assert (=> bs!1924410 (not (= lambda!459852 lambda!459831))))

(assert (=> bs!1924410 (not (= lambda!459852 lambda!459832))))

(assert (=> d!2291537 true))

(assert (=> d!2291537 true))

(declare-fun order!29529 () Int)

(declare-fun order!29531 () Int)

(declare-fun dynLambda!29665 (Int Int) Int)

(declare-fun dynLambda!29666 (Int Int) Int)

(assert (=> d!2291537 (< (dynLambda!29665 order!29529 lambda!459830) (dynLambda!29666 order!29531 lambda!459852))))

(assert (=> d!2291537 (= (set.member lt!2618738 (flatMap!3210 z!3451 lambda!459830)) (exists!4778 z!3451 lambda!459852))))

(declare-fun lt!2618788 () Context!16700)

(declare-fun choose!57463 ((Set Context!16700) Int Context!16700) Context!16700)

(assert (=> d!2291537 (= lt!2618788 (choose!57463 z!3451 lambda!459830 lt!2618738))))

(assert (=> d!2291537 (= (flatMapPost!217 z!3451 lambda!459830 lt!2618738) lt!2618788)))

(declare-fun bs!1924411 () Bool)

(assert (= bs!1924411 d!2291537))

(declare-fun m!8044946 () Bool)

(assert (=> bs!1924411 m!8044946))

(declare-fun m!8044948 () Bool)

(assert (=> bs!1924411 m!8044948))

(declare-fun m!8044950 () Bool)

(assert (=> bs!1924411 m!8044950))

(declare-fun m!8044952 () Bool)

(assert (=> bs!1924411 m!8044952))

(assert (=> b!7409439 d!2291537))

(declare-fun d!2291541 () Bool)

(declare-fun e!4431555 () Bool)

(assert (=> d!2291541 e!4431555))

(declare-fun res!2982906 () Bool)

(assert (=> d!2291541 (=> (not res!2982906) (not e!4431555))))

(declare-fun lt!2618789 () Context!16700)

(assert (=> d!2291541 (= res!2982906 (dynLambda!29664 lambda!459832 lt!2618789))))

(assert (=> d!2291541 (= lt!2618789 (getWitness!2455 (toList!11761 z!3451) lambda!459832))))

(assert (=> d!2291541 (exists!4778 z!3451 lambda!459832)))

(assert (=> d!2291541 (= (getWitness!2453 z!3451 lambda!459832) lt!2618789)))

(declare-fun b!7409542 () Bool)

(assert (=> b!7409542 (= e!4431555 (set.member lt!2618789 z!3451))))

(assert (= (and d!2291541 res!2982906) b!7409542))

(declare-fun b_lambda!286499 () Bool)

(assert (=> (not b_lambda!286499) (not d!2291541)))

(declare-fun m!8044954 () Bool)

(assert (=> d!2291541 m!8044954))

(declare-fun m!8044956 () Bool)

(assert (=> d!2291541 m!8044956))

(assert (=> d!2291541 m!8044956))

(declare-fun m!8044958 () Bool)

(assert (=> d!2291541 m!8044958))

(declare-fun m!8044960 () Bool)

(assert (=> d!2291541 m!8044960))

(declare-fun m!8044962 () Bool)

(assert (=> b!7409542 m!8044962))

(assert (=> b!7409439 d!2291541))

(declare-fun d!2291543 () Bool)

(declare-fun lambda!459855 () Int)

(declare-fun forall!18194 (List!72016 Int) Bool)

(assert (=> d!2291543 (= (inv!91887 c!10532) (forall!18194 (exprs!8850 c!10532) lambda!459855))))

(declare-fun bs!1924412 () Bool)

(assert (= bs!1924412 d!2291543))

(declare-fun m!8044964 () Bool)

(assert (=> bs!1924412 m!8044964))

(assert (=> start!721824 d!2291543))

(declare-fun bs!1924413 () Bool)

(declare-fun d!2291545 () Bool)

(assert (= bs!1924413 (and d!2291545 d!2291543)))

(declare-fun lambda!459856 () Int)

(assert (=> bs!1924413 (= lambda!459856 lambda!459855)))

(assert (=> d!2291545 (= (inv!91887 setElem!56268) (forall!18194 (exprs!8850 setElem!56268) lambda!459856))))

(declare-fun bs!1924414 () Bool)

(assert (= bs!1924414 d!2291545))

(declare-fun m!8044966 () Bool)

(assert (=> bs!1924414 m!8044966))

(assert (=> setNonEmpty!56268 d!2291545))

(declare-fun d!2291547 () Bool)

(assert (=> d!2291547 (= (isEmpty!41054 (tail!14819 (exprs!8850 c!10532))) (is-Nil!71892 (tail!14819 (exprs!8850 c!10532))))))

(assert (=> b!7409433 d!2291547))

(declare-fun d!2291549 () Bool)

(assert (=> d!2291549 (= (tail!14819 (exprs!8850 c!10532)) (t!386575 (exprs!8850 c!10532)))))

(assert (=> b!7409433 d!2291549))

(declare-fun bs!1924415 () Bool)

(declare-fun d!2291551 () Bool)

(assert (= bs!1924415 (and d!2291551 b!7409439)))

(declare-fun lambda!459857 () Int)

(assert (=> bs!1924415 (not (= lambda!459857 lambda!459831))))

(assert (=> bs!1924415 (not (= lambda!459857 lambda!459832))))

(declare-fun bs!1924416 () Bool)

(assert (= bs!1924416 (and d!2291551 d!2291537)))

(assert (=> bs!1924416 (= (= lt!2618742 lt!2618738) (= lambda!459857 lambda!459852))))

(assert (=> d!2291551 true))

(assert (=> d!2291551 true))

(assert (=> d!2291551 (< (dynLambda!29665 order!29529 lambda!459830) (dynLambda!29666 order!29531 lambda!459857))))

(assert (=> d!2291551 (= (set.member lt!2618742 (flatMap!3210 z!3451 lambda!459830)) (exists!4778 z!3451 lambda!459857))))

(declare-fun lt!2618790 () Context!16700)

(assert (=> d!2291551 (= lt!2618790 (choose!57463 z!3451 lambda!459830 lt!2618742))))

(assert (=> d!2291551 (= (flatMapPost!217 z!3451 lambda!459830 lt!2618742) lt!2618790)))

(declare-fun bs!1924417 () Bool)

(assert (= bs!1924417 d!2291551))

(assert (=> bs!1924417 m!8044946))

(declare-fun m!8044968 () Bool)

(assert (=> bs!1924417 m!8044968))

(declare-fun m!8044970 () Bool)

(assert (=> bs!1924417 m!8044970))

(declare-fun m!8044972 () Bool)

(assert (=> bs!1924417 m!8044972))

(assert (=> b!7409438 d!2291551))

(declare-fun bs!1924418 () Bool)

(declare-fun d!2291553 () Bool)

(assert (= bs!1924418 (and d!2291553 d!2291543)))

(declare-fun lambda!459858 () Int)

(assert (=> bs!1924418 (= lambda!459858 lambda!459855)))

(declare-fun bs!1924419 () Bool)

(assert (= bs!1924419 (and d!2291553 d!2291545)))

(assert (=> bs!1924419 (= lambda!459858 lambda!459856)))

(assert (=> d!2291553 (= (inv!91887 empty!3587) (forall!18194 (exprs!8850 empty!3587) lambda!459858))))

(declare-fun bs!1924420 () Bool)

(assert (= bs!1924420 d!2291553))

(declare-fun m!8044974 () Bool)

(assert (=> bs!1924420 m!8044974))

(assert (=> b!7409438 d!2291553))

(declare-fun d!2291555 () Bool)

(assert (=> d!2291555 (= (isEmpty!41055 (t!386576 s!7927)) (is-Nil!71893 (t!386576 s!7927)))))

(assert (=> b!7409437 d!2291555))

(declare-fun b!7409548 () Bool)

(declare-fun e!4431558 () Bool)

(declare-fun tp!2119971 () Bool)

(declare-fun tp!2119972 () Bool)

(assert (=> b!7409548 (= e!4431558 (and tp!2119971 tp!2119972))))

(assert (=> b!7409436 (= tp!2119947 e!4431558)))

(assert (= (and b!7409436 (is-Cons!71892 (exprs!8850 empty!3587))) b!7409548))

(declare-fun b!7409553 () Bool)

(declare-fun e!4431561 () Bool)

(declare-fun tp!2119975 () Bool)

(assert (=> b!7409553 (= e!4431561 (and tp_is_empty!49083 tp!2119975))))

(assert (=> b!7409441 (= tp!2119949 e!4431561)))

(assert (= (and b!7409441 (is-Cons!71893 (t!386576 s!7927))) b!7409553))

(declare-fun b!7409554 () Bool)

(declare-fun e!4431562 () Bool)

(declare-fun tp!2119976 () Bool)

(declare-fun tp!2119977 () Bool)

(assert (=> b!7409554 (= e!4431562 (and tp!2119976 tp!2119977))))

(assert (=> b!7409435 (= tp!2119951 e!4431562)))

(assert (= (and b!7409435 (is-Cons!71892 (exprs!8850 c!10532))) b!7409554))

(declare-fun condSetEmpty!56274 () Bool)

(assert (=> setNonEmpty!56268 (= condSetEmpty!56274 (= setRest!56268 (as set.empty (Set Context!16700))))))

(declare-fun setRes!56274 () Bool)

(assert (=> setNonEmpty!56268 (= tp!2119948 setRes!56274)))

(declare-fun setIsEmpty!56274 () Bool)

(assert (=> setIsEmpty!56274 setRes!56274))

(declare-fun setElem!56274 () Context!16700)

(declare-fun tp!2119982 () Bool)

(declare-fun setNonEmpty!56274 () Bool)

(declare-fun e!4431565 () Bool)

(assert (=> setNonEmpty!56274 (= setRes!56274 (and tp!2119982 (inv!91887 setElem!56274) e!4431565))))

(declare-fun setRest!56274 () (Set Context!16700))

(assert (=> setNonEmpty!56274 (= setRest!56268 (set.union (set.insert setElem!56274 (as set.empty (Set Context!16700))) setRest!56274))))

(declare-fun b!7409559 () Bool)

(declare-fun tp!2119983 () Bool)

(assert (=> b!7409559 (= e!4431565 tp!2119983)))

(assert (= (and setNonEmpty!56268 condSetEmpty!56274) setIsEmpty!56274))

(assert (= (and setNonEmpty!56268 (not condSetEmpty!56274)) setNonEmpty!56274))

(assert (= setNonEmpty!56274 b!7409559))

(declare-fun m!8044976 () Bool)

(assert (=> setNonEmpty!56274 m!8044976))

(declare-fun b!7409560 () Bool)

(declare-fun e!4431566 () Bool)

(declare-fun tp!2119984 () Bool)

(declare-fun tp!2119985 () Bool)

(assert (=> b!7409560 (= e!4431566 (and tp!2119984 tp!2119985))))

(assert (=> b!7409443 (= tp!2119950 e!4431566)))

(assert (= (and b!7409443 (is-Cons!71892 (exprs!8850 setElem!56268))) b!7409560))

(declare-fun b_lambda!286501 () Bool)

(assert (= b_lambda!286495 (or b!7409439 b_lambda!286501)))

(declare-fun bs!1924421 () Bool)

(declare-fun d!2291557 () Bool)

(assert (= bs!1924421 (and d!2291557 b!7409439)))

(assert (=> bs!1924421 (= (dynLambda!29664 lambda!459831 lt!2618782) (not (= lt!2618782 lt!2618742)))))

(assert (=> d!2291535 d!2291557))

(declare-fun b_lambda!286503 () Bool)

(assert (= b_lambda!286499 (or b!7409439 b_lambda!286503)))

(declare-fun bs!1924422 () Bool)

(declare-fun d!2291559 () Bool)

(assert (= bs!1924422 (and d!2291559 b!7409439)))

(assert (=> bs!1924422 (= (dynLambda!29664 lambda!459832 lt!2618789) (set.member lt!2618738 (derivationStepZipperUp!2814 lt!2618789 lt!2618740)))))

(declare-fun m!8044978 () Bool)

(assert (=> bs!1924422 m!8044978))

(declare-fun m!8044980 () Bool)

(assert (=> bs!1924422 m!8044980))

(assert (=> d!2291541 d!2291559))

(push 1)

(assert (not d!2291529))

(assert (not d!2291553))

(assert (not b_lambda!286503))

(assert (not d!2291551))

(assert (not b!7409530))

(assert (not b!7409553))

(assert (not d!2291545))

(assert (not bs!1924422))

(assert (not b!7409510))

(assert (not d!2291535))

(assert (not b_lambda!286501))

(assert (not b!7409559))

(assert (not d!2291543))

(assert tp_is_empty!49083)

(assert (not b!7409513))

(assert (not b!7409512))

(assert (not d!2291513))

(assert (not bm!682188))

(assert (not d!2291541))

(assert (not b!7409554))

(assert (not setNonEmpty!56274))

(assert (not d!2291537))

(assert (not b!7409548))

(assert (not b!7409528))

(assert (not b!7409511))

(assert (not d!2291517))

(assert (not d!2291515))

(assert (not b!7409560))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

