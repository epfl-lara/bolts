; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!237674 () Bool)

(assert start!237674)

(declare-fun b!2426699 () Bool)

(declare-fun e!1543481 () Bool)

(declare-fun call!148510 () Bool)

(assert (=> b!2426699 (= e!1543481 call!148510)))

(declare-fun b!2426700 () Bool)

(declare-fun e!1543479 () Bool)

(assert (=> b!2426700 e!1543479))

(declare-fun res!1030676 () Bool)

(assert (=> b!2426700 (=> (not res!1030676) (not e!1543479))))

(declare-fun call!148508 () Bool)

(assert (=> b!2426700 (= res!1030676 call!148508)))

(declare-datatypes ((C!14418 0))(
  ( (C!14419 (val!8451 Int)) )
))
(declare-datatypes ((List!28498 0))(
  ( (Nil!28400) (Cons!28400 (h!33801 C!14418) (t!208475 List!28498)) )
))
(declare-fun s!9460 () List!28498)

(declare-datatypes ((tuple2!28040 0))(
  ( (tuple2!28041 (_1!16561 List!28498) (_2!16561 List!28498)) )
))
(declare-fun lt!876452 () tuple2!28040)

(declare-datatypes ((Regex!7130 0))(
  ( (ElementMatch!7130 (c!387085 C!14418)) (Concat!11766 (regOne!14772 Regex!7130) (regTwo!14772 Regex!7130)) (EmptyExpr!7130) (Star!7130 (reg!7459 Regex!7130)) (EmptyLang!7130) (Union!7130 (regOne!14773 Regex!7130) (regTwo!14773 Regex!7130)) )
))
(declare-fun lt!876460 () Regex!7130)

(declare-datatypes ((Unit!41639 0))(
  ( (Unit!41640) )
))
(declare-fun lt!876454 () Unit!41639)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!79 (Regex!7130 Regex!7130 List!28498 List!28498 List!28498) Unit!41639)

(assert (=> b!2426700 (= lt!876454 (lemmaFindSeparationIsDefinedThenConcatMatches!79 lt!876460 EmptyExpr!7130 (_1!16561 lt!876452) (_2!16561 lt!876452) s!9460))))

(declare-datatypes ((Option!5631 0))(
  ( (None!5630) (Some!5630 (v!31038 tuple2!28040)) )
))
(declare-fun lt!876457 () Option!5631)

(declare-fun get!8748 (Option!5631) tuple2!28040)

(assert (=> b!2426700 (= lt!876452 (get!8748 lt!876457))))

(declare-fun e!1543478 () Unit!41639)

(declare-fun Unit!41641 () Unit!41639)

(assert (=> b!2426700 (= e!1543478 Unit!41641)))

(declare-datatypes ((List!28499 0))(
  ( (Nil!28401) (Cons!28401 (h!33802 Regex!7130) (t!208476 List!28499)) )
))
(declare-fun l!9164 () List!28499)

(declare-fun lt!876463 () Bool)

(declare-fun e!1543471 () Bool)

(declare-fun b!2426701 () Bool)

(declare-fun isDefined!4457 (Option!5631) Bool)

(declare-fun findConcatSeparation!739 (Regex!7130 Regex!7130 List!28498 List!28498 List!28498) Option!5631)

(declare-fun generalisedConcat!231 (List!28499) Regex!7130)

(assert (=> b!2426701 (= e!1543471 (not (= lt!876463 (isDefined!4457 (findConcatSeparation!739 (h!33802 l!9164) (generalisedConcat!231 (t!208476 l!9164)) Nil!28400 s!9460 s!9460)))))))

(declare-fun b!2426702 () Bool)

(declare-fun e!1543469 () Bool)

(declare-fun call!148506 () Bool)

(assert (=> b!2426702 (= e!1543469 (not call!148506))))

(declare-fun b!2426703 () Bool)

(assert (=> b!2426703 (= e!1543479 false)))

(declare-fun b!2426704 () Bool)

(declare-fun e!1543473 () Bool)

(declare-fun tp!770484 () Bool)

(declare-fun tp!770487 () Bool)

(assert (=> b!2426704 (= e!1543473 (and tp!770484 tp!770487))))

(declare-fun b!2426706 () Bool)

(declare-fun e!1543476 () Bool)

(declare-fun tp!770483 () Bool)

(declare-fun tp!770481 () Bool)

(assert (=> b!2426706 (= e!1543476 (and tp!770483 tp!770481))))

(declare-fun b!2426707 () Bool)

(declare-fun e!1543483 () Bool)

(declare-fun e!1543477 () Bool)

(assert (=> b!2426707 (= e!1543483 (not e!1543477))))

(declare-fun res!1030672 () Bool)

(assert (=> b!2426707 (=> res!1030672 e!1543477)))

(declare-fun r!13927 () Regex!7130)

(assert (=> b!2426707 (= res!1030672 (or (is-Concat!11766 r!13927) (is-EmptyExpr!7130 r!13927)))))

(declare-fun matchRSpec!979 (Regex!7130 List!28498) Bool)

(assert (=> b!2426707 (= lt!876463 (matchRSpec!979 r!13927 s!9460))))

(declare-fun matchR!3247 (Regex!7130 List!28498) Bool)

(assert (=> b!2426707 (= lt!876463 (matchR!3247 r!13927 s!9460))))

(declare-fun lt!876451 () Unit!41639)

(declare-fun mainMatchTheorem!979 (Regex!7130 List!28498) Unit!41639)

(assert (=> b!2426707 (= lt!876451 (mainMatchTheorem!979 r!13927 s!9460))))

(declare-fun b!2426708 () Bool)

(declare-fun e!1543475 () Bool)

(assert (=> b!2426708 (= e!1543477 e!1543475)))

(declare-fun res!1030674 () Bool)

(assert (=> b!2426708 (=> res!1030674 e!1543475)))

(declare-fun lt!876456 () List!28499)

(declare-fun isEmpty!16436 (List!28499) Bool)

(assert (=> b!2426708 (= res!1030674 (not (isEmpty!16436 lt!876456)))))

(declare-fun tail!3744 (List!28499) List!28499)

(assert (=> b!2426708 (= lt!876456 (tail!3744 l!9164))))

(declare-fun call!148505 () Option!5631)

(declare-fun lt!876461 () Regex!7130)

(declare-fun bm!148500 () Bool)

(assert (=> bm!148500 (= call!148505 (findConcatSeparation!739 lt!876460 lt!876461 Nil!28400 s!9460 s!9460))))

(declare-fun b!2426709 () Bool)

(declare-fun e!1543470 () Bool)

(assert (=> b!2426709 (= e!1543475 e!1543470)))

(declare-fun res!1030671 () Bool)

(assert (=> b!2426709 (=> res!1030671 e!1543470)))

(assert (=> b!2426709 (= res!1030671 (not (= lt!876461 EmptyExpr!7130)))))

(assert (=> b!2426709 (= lt!876461 (generalisedConcat!231 lt!876456))))

(declare-fun bm!148501 () Bool)

(declare-fun call!148507 () List!28498)

(declare-fun c!387084 () Bool)

(declare-fun ++!7051 (List!28498 List!28498) List!28498)

(assert (=> bm!148501 (= call!148507 (++!7051 (ite c!387084 s!9460 (_1!16561 lt!876452)) (ite c!387084 Nil!28400 (_2!16561 lt!876452))))))

(declare-fun b!2426710 () Bool)

(declare-fun isEmpty!16437 (List!28498) Bool)

(assert (=> b!2426710 (= e!1543471 (not (= lt!876463 (isEmpty!16437 s!9460))))))

(declare-fun b!2426711 () Bool)

(declare-fun res!1030673 () Bool)

(declare-fun e!1543482 () Bool)

(assert (=> b!2426711 (=> res!1030673 e!1543482)))

(assert (=> b!2426711 (= res!1030673 (is-Cons!28401 l!9164))))

(declare-fun b!2426712 () Bool)

(declare-fun validRegex!2850 (Regex!7130) Bool)

(assert (=> b!2426712 (= e!1543482 (validRegex!2850 r!13927))))

(declare-fun b!2426713 () Bool)

(declare-fun tp!770482 () Bool)

(declare-fun tp!770480 () Bool)

(assert (=> b!2426713 (= e!1543476 (and tp!770482 tp!770480))))

(declare-fun b!2426714 () Bool)

(declare-fun e!1543474 () Bool)

(assert (=> b!2426714 (= e!1543474 call!148508)))

(declare-fun b!2426715 () Bool)

(declare-fun res!1030679 () Bool)

(assert (=> b!2426715 (=> res!1030679 e!1543477)))

(assert (=> b!2426715 (= res!1030679 (isEmpty!16436 l!9164))))

(declare-fun b!2426705 () Bool)

(declare-fun tp!770485 () Bool)

(assert (=> b!2426705 (= e!1543476 tp!770485)))

(declare-fun res!1030670 () Bool)

(assert (=> start!237674 (=> (not res!1030670) (not e!1543483))))

(declare-fun lambda!91394 () Int)

(declare-fun forall!5764 (List!28499 Int) Bool)

(assert (=> start!237674 (= res!1030670 (forall!5764 l!9164 lambda!91394))))

(assert (=> start!237674 e!1543483))

(assert (=> start!237674 e!1543473))

(assert (=> start!237674 e!1543476))

(declare-fun e!1543480 () Bool)

(assert (=> start!237674 e!1543480))

(declare-fun b!2426716 () Bool)

(declare-fun e!1543472 () Unit!41639)

(declare-fun Unit!41642 () Unit!41639)

(assert (=> b!2426716 (= e!1543472 Unit!41642)))

(declare-fun call!148509 () Option!5631)

(assert (=> b!2426716 (= lt!876457 call!148509)))

(declare-fun lt!876464 () Bool)

(assert (=> b!2426716 (= lt!876464 call!148510)))

(declare-fun c!387082 () Bool)

(assert (=> b!2426716 (= c!387082 lt!876464)))

(declare-fun lt!876458 () Unit!41639)

(assert (=> b!2426716 (= lt!876458 e!1543478)))

(declare-fun res!1030678 () Bool)

(assert (=> b!2426716 (= res!1030678 (not lt!876464))))

(assert (=> b!2426716 (=> (not res!1030678) (not e!1543469))))

(assert (=> b!2426716 e!1543469))

(declare-fun bm!148502 () Bool)

(assert (=> bm!148502 (= call!148510 (isDefined!4457 (ite c!387084 call!148505 lt!876457)))))

(declare-fun bm!148503 () Bool)

(assert (=> bm!148503 (= call!148509 (findConcatSeparation!739 lt!876460 EmptyExpr!7130 Nil!28400 s!9460 s!9460))))

(declare-fun b!2426717 () Bool)

(declare-fun Unit!41643 () Unit!41639)

(assert (=> b!2426717 (= e!1543478 Unit!41643)))

(declare-fun b!2426718 () Bool)

(declare-fun Unit!41644 () Unit!41639)

(assert (=> b!2426718 (= e!1543472 Unit!41644)))

(declare-fun lt!876459 () Unit!41639)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!105 (Regex!7130 Regex!7130 List!28498 List!28498) Unit!41639)

(assert (=> b!2426718 (= lt!876459 (lemmaTwoRegexMatchThenConcatMatchesConcatString!105 lt!876460 EmptyExpr!7130 s!9460 Nil!28400))))

(declare-fun lt!876453 () Regex!7130)

(assert (=> b!2426718 (= lt!876453 (Concat!11766 lt!876460 EmptyExpr!7130))))

(declare-fun res!1030677 () Bool)

(assert (=> b!2426718 (= res!1030677 (matchR!3247 lt!876453 call!148507))))

(assert (=> b!2426718 (=> (not res!1030677) (not e!1543474))))

(assert (=> b!2426718 e!1543474))

(declare-fun lt!876455 () Unit!41639)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!79 (Regex!7130 Regex!7130 List!28498) Unit!41639)

(assert (=> b!2426718 (= lt!876455 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!79 lt!876460 EmptyExpr!7130 s!9460))))

(declare-fun res!1030680 () Bool)

(assert (=> b!2426718 (= res!1030680 call!148506)))

(assert (=> b!2426718 (=> (not res!1030680) (not e!1543481))))

(assert (=> b!2426718 e!1543481))

(declare-fun bm!148504 () Bool)

(assert (=> bm!148504 (= call!148508 (matchR!3247 (ite c!387084 lt!876453 (Concat!11766 lt!876460 EmptyExpr!7130)) (ite c!387084 s!9460 call!148507)))))

(declare-fun bm!148505 () Bool)

(assert (=> bm!148505 (= call!148506 (isDefined!4457 (ite c!387084 call!148509 call!148505)))))

(declare-fun b!2426719 () Bool)

(declare-fun tp_is_empty!11673 () Bool)

(assert (=> b!2426719 (= e!1543476 tp_is_empty!11673)))

(declare-fun b!2426720 () Bool)

(declare-fun res!1030669 () Bool)

(assert (=> b!2426720 (=> (not res!1030669) (not e!1543483))))

(assert (=> b!2426720 (= res!1030669 (= r!13927 (generalisedConcat!231 l!9164)))))

(declare-fun b!2426721 () Bool)

(declare-fun tp!770486 () Bool)

(assert (=> b!2426721 (= e!1543480 (and tp_is_empty!11673 tp!770486))))

(declare-fun b!2426722 () Bool)

(assert (=> b!2426722 (= e!1543470 e!1543482)))

(declare-fun res!1030675 () Bool)

(assert (=> b!2426722 (=> res!1030675 e!1543482)))

(assert (=> b!2426722 (= res!1030675 e!1543471)))

(declare-fun c!387083 () Bool)

(assert (=> b!2426722 (= c!387083 (is-Cons!28401 l!9164))))

(declare-fun lt!876462 () Unit!41639)

(assert (=> b!2426722 (= lt!876462 e!1543472)))

(assert (=> b!2426722 (= c!387084 (matchR!3247 lt!876460 s!9460))))

(declare-fun head!5472 (List!28499) Regex!7130)

(assert (=> b!2426722 (= lt!876460 (head!5472 l!9164))))

(assert (= (and start!237674 res!1030670) b!2426720))

(assert (= (and b!2426720 res!1030669) b!2426707))

(assert (= (and b!2426707 (not res!1030672)) b!2426715))

(assert (= (and b!2426715 (not res!1030679)) b!2426708))

(assert (= (and b!2426708 (not res!1030674)) b!2426709))

(assert (= (and b!2426709 (not res!1030671)) b!2426722))

(assert (= (and b!2426722 c!387084) b!2426718))

(assert (= (and b!2426722 (not c!387084)) b!2426716))

(assert (= (and b!2426718 res!1030677) b!2426714))

(assert (= (and b!2426718 res!1030680) b!2426699))

(assert (= (and b!2426716 c!387082) b!2426700))

(assert (= (and b!2426716 (not c!387082)) b!2426717))

(assert (= (and b!2426700 res!1030676) b!2426703))

(assert (= (and b!2426716 res!1030678) b!2426702))

(assert (= (or b!2426718 b!2426716) bm!148503))

(assert (= (or b!2426718 b!2426700) bm!148501))

(assert (= (or b!2426699 b!2426702) bm!148500))

(assert (= (or b!2426714 b!2426700) bm!148504))

(assert (= (or b!2426699 b!2426716) bm!148502))

(assert (= (or b!2426718 b!2426702) bm!148505))

(assert (= (and b!2426722 c!387083) b!2426701))

(assert (= (and b!2426722 (not c!387083)) b!2426710))

(assert (= (and b!2426722 (not res!1030675)) b!2426711))

(assert (= (and b!2426711 (not res!1030673)) b!2426712))

(assert (= (and start!237674 (is-Cons!28401 l!9164)) b!2426704))

(assert (= (and start!237674 (is-ElementMatch!7130 r!13927)) b!2426719))

(assert (= (and start!237674 (is-Concat!11766 r!13927)) b!2426713))

(assert (= (and start!237674 (is-Star!7130 r!13927)) b!2426705))

(assert (= (and start!237674 (is-Union!7130 r!13927)) b!2426706))

(assert (= (and start!237674 (is-Cons!28400 s!9460)) b!2426721))

(declare-fun m!2811607 () Bool)

(assert (=> b!2426709 m!2811607))

(declare-fun m!2811609 () Bool)

(assert (=> bm!148505 m!2811609))

(declare-fun m!2811611 () Bool)

(assert (=> bm!148504 m!2811611))

(declare-fun m!2811613 () Bool)

(assert (=> b!2426708 m!2811613))

(declare-fun m!2811615 () Bool)

(assert (=> b!2426708 m!2811615))

(declare-fun m!2811617 () Bool)

(assert (=> start!237674 m!2811617))

(declare-fun m!2811619 () Bool)

(assert (=> bm!148502 m!2811619))

(declare-fun m!2811621 () Bool)

(assert (=> bm!148500 m!2811621))

(declare-fun m!2811623 () Bool)

(assert (=> bm!148501 m!2811623))

(declare-fun m!2811625 () Bool)

(assert (=> bm!148503 m!2811625))

(declare-fun m!2811627 () Bool)

(assert (=> b!2426715 m!2811627))

(declare-fun m!2811629 () Bool)

(assert (=> b!2426710 m!2811629))

(declare-fun m!2811631 () Bool)

(assert (=> b!2426701 m!2811631))

(assert (=> b!2426701 m!2811631))

(declare-fun m!2811633 () Bool)

(assert (=> b!2426701 m!2811633))

(assert (=> b!2426701 m!2811633))

(declare-fun m!2811635 () Bool)

(assert (=> b!2426701 m!2811635))

(declare-fun m!2811637 () Bool)

(assert (=> b!2426722 m!2811637))

(declare-fun m!2811639 () Bool)

(assert (=> b!2426722 m!2811639))

(declare-fun m!2811641 () Bool)

(assert (=> b!2426700 m!2811641))

(declare-fun m!2811643 () Bool)

(assert (=> b!2426700 m!2811643))

(declare-fun m!2811645 () Bool)

(assert (=> b!2426718 m!2811645))

(declare-fun m!2811647 () Bool)

(assert (=> b!2426718 m!2811647))

(declare-fun m!2811649 () Bool)

(assert (=> b!2426718 m!2811649))

(declare-fun m!2811651 () Bool)

(assert (=> b!2426720 m!2811651))

(declare-fun m!2811653 () Bool)

(assert (=> b!2426707 m!2811653))

(declare-fun m!2811655 () Bool)

(assert (=> b!2426707 m!2811655))

(declare-fun m!2811657 () Bool)

(assert (=> b!2426707 m!2811657))

(declare-fun m!2811659 () Bool)

(assert (=> b!2426712 m!2811659))

(push 1)

(assert (not start!237674))

(assert (not b!2426709))

(assert (not bm!148500))

(assert (not b!2426718))

(assert (not bm!148504))

(assert (not bm!148505))

(assert (not bm!148501))

(assert (not b!2426708))

(assert (not b!2426701))

(assert (not b!2426705))

(assert (not b!2426712))

(assert (not b!2426722))

(assert (not b!2426706))

(assert tp_is_empty!11673)

(assert (not b!2426700))

(assert (not b!2426721))

(assert (not bm!148502))

(assert (not b!2426713))

(assert (not bm!148503))

(assert (not b!2426707))

(assert (not b!2426710))

(assert (not b!2426704))

(assert (not b!2426720))

(assert (not b!2426715))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!702674 () Bool)

(assert (=> d!702674 (= (isEmpty!16436 lt!876456) (is-Nil!28401 lt!876456))))

(assert (=> b!2426708 d!702674))

(declare-fun d!702676 () Bool)

(assert (=> d!702676 (= (tail!3744 l!9164) (t!208476 l!9164))))

(assert (=> b!2426708 d!702676))

(declare-fun d!702678 () Bool)

(declare-fun isEmpty!16440 (Option!5631) Bool)

(assert (=> d!702678 (= (isDefined!4457 (ite c!387084 call!148505 lt!876457)) (not (isEmpty!16440 (ite c!387084 call!148505 lt!876457))))))

(declare-fun bs!463943 () Bool)

(assert (= bs!463943 d!702678))

(declare-fun m!2811715 () Bool)

(assert (=> bs!463943 m!2811715))

(assert (=> bm!148502 d!702678))

(declare-fun b!2426823 () Bool)

(declare-fun e!1543546 () Bool)

(declare-fun derivativeStep!1822 (Regex!7130 C!14418) Regex!7130)

(declare-fun head!5474 (List!28498) C!14418)

(declare-fun tail!3746 (List!28498) List!28498)

(assert (=> b!2426823 (= e!1543546 (matchR!3247 (derivativeStep!1822 lt!876460 (head!5474 s!9460)) (tail!3746 s!9460)))))

(declare-fun b!2426824 () Bool)

(declare-fun e!1543548 () Bool)

(declare-fun lt!876509 () Bool)

(declare-fun call!148531 () Bool)

(assert (=> b!2426824 (= e!1543548 (= lt!876509 call!148531))))

(declare-fun d!702680 () Bool)

(assert (=> d!702680 e!1543548))

(declare-fun c!387104 () Bool)

(assert (=> d!702680 (= c!387104 (is-EmptyExpr!7130 lt!876460))))

(assert (=> d!702680 (= lt!876509 e!1543546)))

(declare-fun c!387102 () Bool)

(assert (=> d!702680 (= c!387102 (isEmpty!16437 s!9460))))

(assert (=> d!702680 (validRegex!2850 lt!876460)))

(assert (=> d!702680 (= (matchR!3247 lt!876460 s!9460) lt!876509)))

(declare-fun b!2426825 () Bool)

(declare-fun res!1030738 () Bool)

(declare-fun e!1543547 () Bool)

(assert (=> b!2426825 (=> (not res!1030738) (not e!1543547))))

(assert (=> b!2426825 (= res!1030738 (isEmpty!16437 (tail!3746 s!9460)))))

(declare-fun b!2426826 () Bool)

(declare-fun res!1030735 () Bool)

(declare-fun e!1543543 () Bool)

(assert (=> b!2426826 (=> res!1030735 e!1543543)))

(assert (=> b!2426826 (= res!1030735 (not (is-ElementMatch!7130 lt!876460)))))

(declare-fun e!1543545 () Bool)

(assert (=> b!2426826 (= e!1543545 e!1543543)))

(declare-fun b!2426827 () Bool)

(assert (=> b!2426827 (= e!1543548 e!1543545)))

(declare-fun c!387103 () Bool)

(assert (=> b!2426827 (= c!387103 (is-EmptyLang!7130 lt!876460))))

(declare-fun b!2426828 () Bool)

(assert (=> b!2426828 (= e!1543547 (= (head!5474 s!9460) (c!387085 lt!876460)))))

(declare-fun b!2426829 () Bool)

(declare-fun e!1543544 () Bool)

(assert (=> b!2426829 (= e!1543544 (not (= (head!5474 s!9460) (c!387085 lt!876460))))))

(declare-fun bm!148526 () Bool)

(assert (=> bm!148526 (= call!148531 (isEmpty!16437 s!9460))))

(declare-fun b!2426830 () Bool)

(declare-fun res!1030736 () Bool)

(assert (=> b!2426830 (=> res!1030736 e!1543543)))

(assert (=> b!2426830 (= res!1030736 e!1543547)))

(declare-fun res!1030740 () Bool)

(assert (=> b!2426830 (=> (not res!1030740) (not e!1543547))))

(assert (=> b!2426830 (= res!1030740 lt!876509)))

(declare-fun b!2426831 () Bool)

(declare-fun e!1543549 () Bool)

(assert (=> b!2426831 (= e!1543549 e!1543544)))

(declare-fun res!1030739 () Bool)

(assert (=> b!2426831 (=> res!1030739 e!1543544)))

(assert (=> b!2426831 (= res!1030739 call!148531)))

(declare-fun b!2426832 () Bool)

(declare-fun res!1030734 () Bool)

(assert (=> b!2426832 (=> (not res!1030734) (not e!1543547))))

(assert (=> b!2426832 (= res!1030734 (not call!148531))))

(declare-fun b!2426833 () Bool)

(declare-fun res!1030733 () Bool)

(assert (=> b!2426833 (=> res!1030733 e!1543544)))

(assert (=> b!2426833 (= res!1030733 (not (isEmpty!16437 (tail!3746 s!9460))))))

(declare-fun b!2426834 () Bool)

(assert (=> b!2426834 (= e!1543543 e!1543549)))

(declare-fun res!1030737 () Bool)

(assert (=> b!2426834 (=> (not res!1030737) (not e!1543549))))

(assert (=> b!2426834 (= res!1030737 (not lt!876509))))

(declare-fun b!2426835 () Bool)

(assert (=> b!2426835 (= e!1543545 (not lt!876509))))

(declare-fun b!2426836 () Bool)

(declare-fun nullable!2165 (Regex!7130) Bool)

(assert (=> b!2426836 (= e!1543546 (nullable!2165 lt!876460))))

(assert (= (and d!702680 c!387102) b!2426836))

(assert (= (and d!702680 (not c!387102)) b!2426823))

(assert (= (and d!702680 c!387104) b!2426824))

(assert (= (and d!702680 (not c!387104)) b!2426827))

(assert (= (and b!2426827 c!387103) b!2426835))

(assert (= (and b!2426827 (not c!387103)) b!2426826))

(assert (= (and b!2426826 (not res!1030735)) b!2426830))

(assert (= (and b!2426830 res!1030740) b!2426832))

(assert (= (and b!2426832 res!1030734) b!2426825))

(assert (= (and b!2426825 res!1030738) b!2426828))

(assert (= (and b!2426830 (not res!1030736)) b!2426834))

(assert (= (and b!2426834 res!1030737) b!2426831))

(assert (= (and b!2426831 (not res!1030739)) b!2426833))

(assert (= (and b!2426833 (not res!1030733)) b!2426829))

(assert (= (or b!2426824 b!2426831 b!2426832) bm!148526))

(declare-fun m!2811717 () Bool)

(assert (=> b!2426828 m!2811717))

(assert (=> b!2426829 m!2811717))

(declare-fun m!2811719 () Bool)

(assert (=> b!2426833 m!2811719))

(assert (=> b!2426833 m!2811719))

(declare-fun m!2811721 () Bool)

(assert (=> b!2426833 m!2811721))

(assert (=> b!2426825 m!2811719))

(assert (=> b!2426825 m!2811719))

(assert (=> b!2426825 m!2811721))

(assert (=> bm!148526 m!2811629))

(declare-fun m!2811723 () Bool)

(assert (=> b!2426836 m!2811723))

(assert (=> d!702680 m!2811629))

(declare-fun m!2811725 () Bool)

(assert (=> d!702680 m!2811725))

(assert (=> b!2426823 m!2811717))

(assert (=> b!2426823 m!2811717))

(declare-fun m!2811727 () Bool)

(assert (=> b!2426823 m!2811727))

(assert (=> b!2426823 m!2811719))

(assert (=> b!2426823 m!2811727))

(assert (=> b!2426823 m!2811719))

(declare-fun m!2811729 () Bool)

(assert (=> b!2426823 m!2811729))

(assert (=> b!2426722 d!702680))

(declare-fun d!702684 () Bool)

(assert (=> d!702684 (= (head!5472 l!9164) (h!33802 l!9164))))

(assert (=> b!2426722 d!702684))

(declare-fun d!702686 () Bool)

(assert (=> d!702686 (= (isEmpty!16436 l!9164) (is-Nil!28401 l!9164))))

(assert (=> b!2426715 d!702686))

(declare-fun b!2426900 () Bool)

(assert (=> b!2426900 true))

(assert (=> b!2426900 true))

(declare-fun bs!463944 () Bool)

(declare-fun b!2426898 () Bool)

(assert (= bs!463944 (and b!2426898 b!2426900)))

(declare-fun lambda!91403 () Int)

(declare-fun lambda!91402 () Int)

(assert (=> bs!463944 (not (= lambda!91403 lambda!91402))))

(assert (=> b!2426898 true))

(assert (=> b!2426898 true))

(declare-fun b!2426896 () Bool)

(declare-fun e!1543590 () Bool)

(declare-fun call!148546 () Bool)

(assert (=> b!2426896 (= e!1543590 call!148546)))

(declare-fun b!2426897 () Bool)

(declare-fun e!1543595 () Bool)

(declare-fun e!1543591 () Bool)

(assert (=> b!2426897 (= e!1543595 e!1543591)))

(declare-fun res!1030773 () Bool)

(assert (=> b!2426897 (= res!1030773 (matchRSpec!979 (regOne!14773 r!13927) s!9460))))

(assert (=> b!2426897 (=> res!1030773 e!1543591)))

(declare-fun e!1543589 () Bool)

(declare-fun call!148545 () Bool)

(assert (=> b!2426898 (= e!1543589 call!148545)))

(declare-fun b!2426899 () Bool)

(declare-fun c!387120 () Bool)

(assert (=> b!2426899 (= c!387120 (is-Union!7130 r!13927))))

(declare-fun e!1543592 () Bool)

(assert (=> b!2426899 (= e!1543592 e!1543595)))

(declare-fun bm!148540 () Bool)

(declare-fun c!387122 () Bool)

(declare-fun Exists!1170 (Int) Bool)

(assert (=> bm!148540 (= call!148545 (Exists!1170 (ite c!387122 lambda!91402 lambda!91403)))))

(declare-fun e!1543593 () Bool)

(assert (=> b!2426900 (= e!1543593 call!148545)))

(declare-fun b!2426901 () Bool)

(declare-fun c!387119 () Bool)

(assert (=> b!2426901 (= c!387119 (is-ElementMatch!7130 r!13927))))

(declare-fun e!1543594 () Bool)

(assert (=> b!2426901 (= e!1543594 e!1543592)))

(declare-fun d!702688 () Bool)

(declare-fun c!387121 () Bool)

(assert (=> d!702688 (= c!387121 (is-EmptyExpr!7130 r!13927))))

(assert (=> d!702688 (= (matchRSpec!979 r!13927 s!9460) e!1543590)))

(declare-fun b!2426902 () Bool)

(assert (=> b!2426902 (= e!1543595 e!1543589)))

(assert (=> b!2426902 (= c!387122 (is-Star!7130 r!13927))))

(declare-fun bm!148541 () Bool)

(assert (=> bm!148541 (= call!148546 (isEmpty!16437 s!9460))))

(declare-fun b!2426903 () Bool)

(assert (=> b!2426903 (= e!1543590 e!1543594)))

(declare-fun res!1030772 () Bool)

(assert (=> b!2426903 (= res!1030772 (not (is-EmptyLang!7130 r!13927)))))

(assert (=> b!2426903 (=> (not res!1030772) (not e!1543594))))

(declare-fun b!2426904 () Bool)

(assert (=> b!2426904 (= e!1543591 (matchRSpec!979 (regTwo!14773 r!13927) s!9460))))

(declare-fun b!2426905 () Bool)

(declare-fun res!1030774 () Bool)

(assert (=> b!2426905 (=> res!1030774 e!1543593)))

(assert (=> b!2426905 (= res!1030774 call!148546)))

(assert (=> b!2426905 (= e!1543589 e!1543593)))

(declare-fun b!2426906 () Bool)

(assert (=> b!2426906 (= e!1543592 (= s!9460 (Cons!28400 (c!387085 r!13927) Nil!28400)))))

(assert (= (and d!702688 c!387121) b!2426896))

(assert (= (and d!702688 (not c!387121)) b!2426903))

(assert (= (and b!2426903 res!1030772) b!2426901))

(assert (= (and b!2426901 c!387119) b!2426906))

(assert (= (and b!2426901 (not c!387119)) b!2426899))

(assert (= (and b!2426899 c!387120) b!2426897))

(assert (= (and b!2426899 (not c!387120)) b!2426902))

(assert (= (and b!2426897 (not res!1030773)) b!2426904))

(assert (= (and b!2426902 c!387122) b!2426905))

(assert (= (and b!2426902 (not c!387122)) b!2426898))

(assert (= (and b!2426905 (not res!1030774)) b!2426900))

(assert (= (or b!2426900 b!2426898) bm!148540))

(assert (= (or b!2426896 b!2426905) bm!148541))

(declare-fun m!2811737 () Bool)

(assert (=> b!2426897 m!2811737))

(declare-fun m!2811739 () Bool)

(assert (=> bm!148540 m!2811739))

(assert (=> bm!148541 m!2811629))

(declare-fun m!2811741 () Bool)

(assert (=> b!2426904 m!2811741))

(assert (=> b!2426707 d!702688))

(declare-fun b!2426911 () Bool)

(declare-fun e!1543599 () Bool)

(assert (=> b!2426911 (= e!1543599 (matchR!3247 (derivativeStep!1822 r!13927 (head!5474 s!9460)) (tail!3746 s!9460)))))

(declare-fun b!2426912 () Bool)

(declare-fun e!1543601 () Bool)

(declare-fun lt!876510 () Bool)

(declare-fun call!148547 () Bool)

(assert (=> b!2426912 (= e!1543601 (= lt!876510 call!148547))))

(declare-fun d!702692 () Bool)

(assert (=> d!702692 e!1543601))

(declare-fun c!387125 () Bool)

(assert (=> d!702692 (= c!387125 (is-EmptyExpr!7130 r!13927))))

(assert (=> d!702692 (= lt!876510 e!1543599)))

(declare-fun c!387123 () Bool)

(assert (=> d!702692 (= c!387123 (isEmpty!16437 s!9460))))

(assert (=> d!702692 (validRegex!2850 r!13927)))

(assert (=> d!702692 (= (matchR!3247 r!13927 s!9460) lt!876510)))

(declare-fun b!2426913 () Bool)

(declare-fun res!1030780 () Bool)

(declare-fun e!1543600 () Bool)

(assert (=> b!2426913 (=> (not res!1030780) (not e!1543600))))

(assert (=> b!2426913 (= res!1030780 (isEmpty!16437 (tail!3746 s!9460)))))

(declare-fun b!2426914 () Bool)

(declare-fun res!1030777 () Bool)

(declare-fun e!1543596 () Bool)

(assert (=> b!2426914 (=> res!1030777 e!1543596)))

(assert (=> b!2426914 (= res!1030777 (not (is-ElementMatch!7130 r!13927)))))

(declare-fun e!1543598 () Bool)

(assert (=> b!2426914 (= e!1543598 e!1543596)))

(declare-fun b!2426915 () Bool)

(assert (=> b!2426915 (= e!1543601 e!1543598)))

(declare-fun c!387124 () Bool)

(assert (=> b!2426915 (= c!387124 (is-EmptyLang!7130 r!13927))))

(declare-fun b!2426916 () Bool)

(assert (=> b!2426916 (= e!1543600 (= (head!5474 s!9460) (c!387085 r!13927)))))

(declare-fun b!2426917 () Bool)

(declare-fun e!1543597 () Bool)

(assert (=> b!2426917 (= e!1543597 (not (= (head!5474 s!9460) (c!387085 r!13927))))))

(declare-fun bm!148542 () Bool)

(assert (=> bm!148542 (= call!148547 (isEmpty!16437 s!9460))))

(declare-fun b!2426918 () Bool)

(declare-fun res!1030778 () Bool)

(assert (=> b!2426918 (=> res!1030778 e!1543596)))

(assert (=> b!2426918 (= res!1030778 e!1543600)))

(declare-fun res!1030782 () Bool)

(assert (=> b!2426918 (=> (not res!1030782) (not e!1543600))))

(assert (=> b!2426918 (= res!1030782 lt!876510)))

(declare-fun b!2426919 () Bool)

(declare-fun e!1543602 () Bool)

(assert (=> b!2426919 (= e!1543602 e!1543597)))

(declare-fun res!1030781 () Bool)

(assert (=> b!2426919 (=> res!1030781 e!1543597)))

(assert (=> b!2426919 (= res!1030781 call!148547)))

(declare-fun b!2426920 () Bool)

(declare-fun res!1030776 () Bool)

(assert (=> b!2426920 (=> (not res!1030776) (not e!1543600))))

(assert (=> b!2426920 (= res!1030776 (not call!148547))))

(declare-fun b!2426921 () Bool)

(declare-fun res!1030775 () Bool)

(assert (=> b!2426921 (=> res!1030775 e!1543597)))

(assert (=> b!2426921 (= res!1030775 (not (isEmpty!16437 (tail!3746 s!9460))))))

(declare-fun b!2426922 () Bool)

(assert (=> b!2426922 (= e!1543596 e!1543602)))

(declare-fun res!1030779 () Bool)

(assert (=> b!2426922 (=> (not res!1030779) (not e!1543602))))

(assert (=> b!2426922 (= res!1030779 (not lt!876510))))

(declare-fun b!2426923 () Bool)

(assert (=> b!2426923 (= e!1543598 (not lt!876510))))

(declare-fun b!2426924 () Bool)

(assert (=> b!2426924 (= e!1543599 (nullable!2165 r!13927))))

(assert (= (and d!702692 c!387123) b!2426924))

(assert (= (and d!702692 (not c!387123)) b!2426911))

(assert (= (and d!702692 c!387125) b!2426912))

(assert (= (and d!702692 (not c!387125)) b!2426915))

(assert (= (and b!2426915 c!387124) b!2426923))

(assert (= (and b!2426915 (not c!387124)) b!2426914))

(assert (= (and b!2426914 (not res!1030777)) b!2426918))

(assert (= (and b!2426918 res!1030782) b!2426920))

(assert (= (and b!2426920 res!1030776) b!2426913))

(assert (= (and b!2426913 res!1030780) b!2426916))

(assert (= (and b!2426918 (not res!1030778)) b!2426922))

(assert (= (and b!2426922 res!1030779) b!2426919))

(assert (= (and b!2426919 (not res!1030781)) b!2426921))

(assert (= (and b!2426921 (not res!1030775)) b!2426917))

(assert (= (or b!2426912 b!2426919 b!2426920) bm!148542))

(assert (=> b!2426916 m!2811717))

(assert (=> b!2426917 m!2811717))

(assert (=> b!2426921 m!2811719))

(assert (=> b!2426921 m!2811719))

(assert (=> b!2426921 m!2811721))

(assert (=> b!2426913 m!2811719))

(assert (=> b!2426913 m!2811719))

(assert (=> b!2426913 m!2811721))

(assert (=> bm!148542 m!2811629))

(declare-fun m!2811743 () Bool)

(assert (=> b!2426924 m!2811743))

(assert (=> d!702692 m!2811629))

(assert (=> d!702692 m!2811659))

(assert (=> b!2426911 m!2811717))

(assert (=> b!2426911 m!2811717))

(declare-fun m!2811745 () Bool)

(assert (=> b!2426911 m!2811745))

(assert (=> b!2426911 m!2811719))

(assert (=> b!2426911 m!2811745))

(assert (=> b!2426911 m!2811719))

(declare-fun m!2811747 () Bool)

(assert (=> b!2426911 m!2811747))

(assert (=> b!2426707 d!702692))

(declare-fun d!702694 () Bool)

(assert (=> d!702694 (= (matchR!3247 r!13927 s!9460) (matchRSpec!979 r!13927 s!9460))))

(declare-fun lt!876516 () Unit!41639)

(declare-fun choose!14378 (Regex!7130 List!28498) Unit!41639)

(assert (=> d!702694 (= lt!876516 (choose!14378 r!13927 s!9460))))

(assert (=> d!702694 (validRegex!2850 r!13927)))

(assert (=> d!702694 (= (mainMatchTheorem!979 r!13927 s!9460) lt!876516)))

(declare-fun bs!463946 () Bool)

(assert (= bs!463946 d!702694))

(assert (=> bs!463946 m!2811655))

(assert (=> bs!463946 m!2811653))

(declare-fun m!2811753 () Bool)

(assert (=> bs!463946 m!2811753))

(assert (=> bs!463946 m!2811659))

(assert (=> b!2426707 d!702694))

(declare-fun bs!463947 () Bool)

(declare-fun d!702696 () Bool)

(assert (= bs!463947 (and d!702696 start!237674)))

(declare-fun lambda!91406 () Int)

(assert (=> bs!463947 (= lambda!91406 lambda!91394)))

(declare-fun b!2426945 () Bool)

(declare-fun e!1543619 () Bool)

(assert (=> b!2426945 (= e!1543619 (isEmpty!16436 (t!208476 l!9164)))))

(declare-fun b!2426946 () Bool)

(declare-fun e!1543618 () Regex!7130)

(assert (=> b!2426946 (= e!1543618 (h!33802 l!9164))))

(declare-fun b!2426947 () Bool)

(declare-fun e!1543616 () Bool)

(declare-fun e!1543617 () Bool)

(assert (=> b!2426947 (= e!1543616 e!1543617)))

(declare-fun c!387135 () Bool)

(assert (=> b!2426947 (= c!387135 (isEmpty!16436 (tail!3744 l!9164)))))

(declare-fun b!2426948 () Bool)

(declare-fun e!1543615 () Regex!7130)

(assert (=> b!2426948 (= e!1543615 EmptyExpr!7130)))

(declare-fun e!1543620 () Bool)

(assert (=> d!702696 e!1543620))

(declare-fun res!1030788 () Bool)

(assert (=> d!702696 (=> (not res!1030788) (not e!1543620))))

(declare-fun lt!876519 () Regex!7130)

(assert (=> d!702696 (= res!1030788 (validRegex!2850 lt!876519))))

(assert (=> d!702696 (= lt!876519 e!1543618)))

(declare-fun c!387136 () Bool)

(assert (=> d!702696 (= c!387136 e!1543619)))

(declare-fun res!1030787 () Bool)

(assert (=> d!702696 (=> (not res!1030787) (not e!1543619))))

(assert (=> d!702696 (= res!1030787 (is-Cons!28401 l!9164))))

(assert (=> d!702696 (forall!5764 l!9164 lambda!91406)))

(assert (=> d!702696 (= (generalisedConcat!231 l!9164) lt!876519)))

(declare-fun b!2426949 () Bool)

(assert (=> b!2426949 (= e!1543615 (Concat!11766 (h!33802 l!9164) (generalisedConcat!231 (t!208476 l!9164))))))

(declare-fun b!2426950 () Bool)

(assert (=> b!2426950 (= e!1543618 e!1543615)))

(declare-fun c!387134 () Bool)

(assert (=> b!2426950 (= c!387134 (is-Cons!28401 l!9164))))

(declare-fun b!2426951 () Bool)

(declare-fun isConcat!185 (Regex!7130) Bool)

(assert (=> b!2426951 (= e!1543617 (isConcat!185 lt!876519))))

(declare-fun b!2426952 () Bool)

(assert (=> b!2426952 (= e!1543617 (= lt!876519 (head!5472 l!9164)))))

(declare-fun b!2426953 () Bool)

(assert (=> b!2426953 (= e!1543620 e!1543616)))

(declare-fun c!387137 () Bool)

(assert (=> b!2426953 (= c!387137 (isEmpty!16436 l!9164))))

(declare-fun b!2426954 () Bool)

(declare-fun isEmptyExpr!185 (Regex!7130) Bool)

(assert (=> b!2426954 (= e!1543616 (isEmptyExpr!185 lt!876519))))

(assert (= (and d!702696 res!1030787) b!2426945))

(assert (= (and d!702696 c!387136) b!2426946))

(assert (= (and d!702696 (not c!387136)) b!2426950))

(assert (= (and b!2426950 c!387134) b!2426949))

(assert (= (and b!2426950 (not c!387134)) b!2426948))

(assert (= (and d!702696 res!1030788) b!2426953))

(assert (= (and b!2426953 c!387137) b!2426954))

(assert (= (and b!2426953 (not c!387137)) b!2426947))

(assert (= (and b!2426947 c!387135) b!2426952))

(assert (= (and b!2426947 (not c!387135)) b!2426951))

(declare-fun m!2811759 () Bool)

(assert (=> d!702696 m!2811759))

(declare-fun m!2811761 () Bool)

(assert (=> d!702696 m!2811761))

(assert (=> b!2426952 m!2811639))

(declare-fun m!2811763 () Bool)

(assert (=> b!2426954 m!2811763))

(assert (=> b!2426947 m!2811615))

(assert (=> b!2426947 m!2811615))

(declare-fun m!2811765 () Bool)

(assert (=> b!2426947 m!2811765))

(declare-fun m!2811767 () Bool)

(assert (=> b!2426951 m!2811767))

(declare-fun m!2811769 () Bool)

(assert (=> b!2426945 m!2811769))

(assert (=> b!2426953 m!2811627))

(assert (=> b!2426949 m!2811631))

(assert (=> b!2426720 d!702696))

(declare-fun d!702702 () Bool)

(assert (=> d!702702 (= (isDefined!4457 (ite c!387084 call!148509 call!148505)) (not (isEmpty!16440 (ite c!387084 call!148509 call!148505))))))

(declare-fun bs!463948 () Bool)

(assert (= bs!463948 d!702702))

(declare-fun m!2811771 () Bool)

(assert (=> bs!463948 m!2811771))

(assert (=> bm!148505 d!702702))

(declare-fun bm!148549 () Bool)

(declare-fun call!148554 () Bool)

(declare-fun c!387149 () Bool)

(assert (=> bm!148549 (= call!148554 (validRegex!2850 (ite c!387149 (regTwo!14773 r!13927) (regOne!14772 r!13927))))))

(declare-fun b!2426985 () Bool)

(declare-fun e!1543648 () Bool)

(declare-fun call!148556 () Bool)

(assert (=> b!2426985 (= e!1543648 call!148556)))

(declare-fun b!2426986 () Bool)

(declare-fun e!1543647 () Bool)

(declare-fun e!1543646 () Bool)

(assert (=> b!2426986 (= e!1543647 e!1543646)))

(declare-fun c!387148 () Bool)

(assert (=> b!2426986 (= c!387148 (is-Star!7130 r!13927))))

(declare-fun b!2426987 () Bool)

(declare-fun e!1543649 () Bool)

(declare-fun e!1543642 () Bool)

(assert (=> b!2426987 (= e!1543649 e!1543642)))

(declare-fun res!1030804 () Bool)

(assert (=> b!2426987 (=> (not res!1030804) (not e!1543642))))

(assert (=> b!2426987 (= res!1030804 call!148554)))

(declare-fun bm!148550 () Bool)

(declare-fun call!148555 () Bool)

(assert (=> bm!148550 (= call!148555 call!148556)))

(declare-fun b!2426988 () Bool)

(declare-fun e!1543643 () Bool)

(assert (=> b!2426988 (= e!1543646 e!1543643)))

(assert (=> b!2426988 (= c!387149 (is-Union!7130 r!13927))))

(declare-fun b!2426989 () Bool)

(assert (=> b!2426989 (= e!1543646 e!1543648)))

(declare-fun res!1030800 () Bool)

(assert (=> b!2426989 (= res!1030800 (not (nullable!2165 (reg!7459 r!13927))))))

(assert (=> b!2426989 (=> (not res!1030800) (not e!1543648))))

(declare-fun b!2426991 () Bool)

(assert (=> b!2426991 (= e!1543642 call!148555)))

(declare-fun b!2426993 () Bool)

(declare-fun res!1030805 () Bool)

(assert (=> b!2426993 (=> res!1030805 e!1543649)))

(assert (=> b!2426993 (= res!1030805 (not (is-Concat!11766 r!13927)))))

(assert (=> b!2426993 (= e!1543643 e!1543649)))

(declare-fun bm!148551 () Bool)

(assert (=> bm!148551 (= call!148556 (validRegex!2850 (ite c!387148 (reg!7459 r!13927) (ite c!387149 (regOne!14773 r!13927) (regTwo!14772 r!13927)))))))

(declare-fun b!2426995 () Bool)

(declare-fun res!1030803 () Bool)

(declare-fun e!1543641 () Bool)

(assert (=> b!2426995 (=> (not res!1030803) (not e!1543641))))

(assert (=> b!2426995 (= res!1030803 call!148555)))

(assert (=> b!2426995 (= e!1543643 e!1543641)))

(declare-fun b!2426994 () Bool)

(assert (=> b!2426994 (= e!1543641 call!148554)))

(declare-fun d!702704 () Bool)

(declare-fun res!1030801 () Bool)

(assert (=> d!702704 (=> res!1030801 e!1543647)))

(assert (=> d!702704 (= res!1030801 (is-ElementMatch!7130 r!13927))))

(assert (=> d!702704 (= (validRegex!2850 r!13927) e!1543647)))

(assert (= (and d!702704 (not res!1030801)) b!2426986))

(assert (= (and b!2426986 c!387148) b!2426989))

(assert (= (and b!2426986 (not c!387148)) b!2426988))

(assert (= (and b!2426989 res!1030800) b!2426985))

(assert (= (and b!2426988 c!387149) b!2426995))

(assert (= (and b!2426988 (not c!387149)) b!2426993))

(assert (= (and b!2426995 res!1030803) b!2426994))

(assert (= (and b!2426993 (not res!1030805)) b!2426987))

(assert (= (and b!2426987 res!1030804) b!2426991))

(assert (= (or b!2426995 b!2426991) bm!148550))

(assert (= (or b!2426994 b!2426987) bm!148549))

(assert (= (or b!2426985 bm!148550) bm!148551))

(declare-fun m!2811773 () Bool)

(assert (=> bm!148549 m!2811773))

(declare-fun m!2811775 () Bool)

(assert (=> b!2426989 m!2811775))

(declare-fun m!2811777 () Bool)

(assert (=> bm!148551 m!2811777))

(assert (=> b!2426712 d!702704))

(declare-fun d!702706 () Bool)

(assert (=> d!702706 (= (isEmpty!16437 s!9460) (is-Nil!28400 s!9460))))

(assert (=> b!2426710 d!702706))

(declare-fun d!702708 () Bool)

(assert (=> d!702708 (= (isDefined!4457 (findConcatSeparation!739 (h!33802 l!9164) (generalisedConcat!231 (t!208476 l!9164)) Nil!28400 s!9460 s!9460)) (not (isEmpty!16440 (findConcatSeparation!739 (h!33802 l!9164) (generalisedConcat!231 (t!208476 l!9164)) Nil!28400 s!9460 s!9460))))))

(declare-fun bs!463949 () Bool)

(assert (= bs!463949 d!702708))

(assert (=> bs!463949 m!2811633))

(declare-fun m!2811779 () Bool)

(assert (=> bs!463949 m!2811779))

(assert (=> b!2426701 d!702708))

(declare-fun d!702710 () Bool)

(declare-fun e!1543676 () Bool)

(assert (=> d!702710 e!1543676))

(declare-fun res!1030840 () Bool)

(assert (=> d!702710 (=> res!1030840 e!1543676)))

(declare-fun e!1543674 () Bool)

(assert (=> d!702710 (= res!1030840 e!1543674)))

(declare-fun res!1030841 () Bool)

(assert (=> d!702710 (=> (not res!1030841) (not e!1543674))))

(declare-fun lt!876531 () Option!5631)

(assert (=> d!702710 (= res!1030841 (isDefined!4457 lt!876531))))

(declare-fun e!1543677 () Option!5631)

(assert (=> d!702710 (= lt!876531 e!1543677)))

(declare-fun c!387157 () Bool)

(declare-fun e!1543673 () Bool)

(assert (=> d!702710 (= c!387157 e!1543673)))

(declare-fun res!1030839 () Bool)

(assert (=> d!702710 (=> (not res!1030839) (not e!1543673))))

(assert (=> d!702710 (= res!1030839 (matchR!3247 (h!33802 l!9164) Nil!28400))))

(assert (=> d!702710 (validRegex!2850 (h!33802 l!9164))))

(assert (=> d!702710 (= (findConcatSeparation!739 (h!33802 l!9164) (generalisedConcat!231 (t!208476 l!9164)) Nil!28400 s!9460 s!9460) lt!876531)))

(declare-fun b!2427042 () Bool)

(assert (=> b!2427042 (= e!1543677 (Some!5630 (tuple2!28041 Nil!28400 s!9460)))))

(declare-fun b!2427043 () Bool)

(assert (=> b!2427043 (= e!1543673 (matchR!3247 (generalisedConcat!231 (t!208476 l!9164)) s!9460))))

(declare-fun b!2427044 () Bool)

(declare-fun e!1543675 () Option!5631)

(assert (=> b!2427044 (= e!1543675 None!5630)))

(declare-fun b!2427045 () Bool)

(assert (=> b!2427045 (= e!1543674 (= (++!7051 (_1!16561 (get!8748 lt!876531)) (_2!16561 (get!8748 lt!876531))) s!9460))))

(declare-fun b!2427046 () Bool)

(assert (=> b!2427046 (= e!1543676 (not (isDefined!4457 lt!876531)))))

(declare-fun b!2427047 () Bool)

(declare-fun res!1030838 () Bool)

(assert (=> b!2427047 (=> (not res!1030838) (not e!1543674))))

(assert (=> b!2427047 (= res!1030838 (matchR!3247 (h!33802 l!9164) (_1!16561 (get!8748 lt!876531))))))

(declare-fun b!2427048 () Bool)

(assert (=> b!2427048 (= e!1543677 e!1543675)))

(declare-fun c!387158 () Bool)

(assert (=> b!2427048 (= c!387158 (is-Nil!28400 s!9460))))

(declare-fun b!2427049 () Bool)

(declare-fun res!1030842 () Bool)

(assert (=> b!2427049 (=> (not res!1030842) (not e!1543674))))

(assert (=> b!2427049 (= res!1030842 (matchR!3247 (generalisedConcat!231 (t!208476 l!9164)) (_2!16561 (get!8748 lt!876531))))))

(declare-fun b!2427050 () Bool)

(declare-fun lt!876530 () Unit!41639)

(declare-fun lt!876529 () Unit!41639)

(assert (=> b!2427050 (= lt!876530 lt!876529)))

(assert (=> b!2427050 (= (++!7051 (++!7051 Nil!28400 (Cons!28400 (h!33801 s!9460) Nil!28400)) (t!208475 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!677 (List!28498 C!14418 List!28498 List!28498) Unit!41639)

(assert (=> b!2427050 (= lt!876529 (lemmaMoveElementToOtherListKeepsConcatEq!677 Nil!28400 (h!33801 s!9460) (t!208475 s!9460) s!9460))))

(assert (=> b!2427050 (= e!1543675 (findConcatSeparation!739 (h!33802 l!9164) (generalisedConcat!231 (t!208476 l!9164)) (++!7051 Nil!28400 (Cons!28400 (h!33801 s!9460) Nil!28400)) (t!208475 s!9460) s!9460))))

(assert (= (and d!702710 res!1030839) b!2427043))

(assert (= (and d!702710 c!387157) b!2427042))

(assert (= (and d!702710 (not c!387157)) b!2427048))

(assert (= (and b!2427048 c!387158) b!2427044))

(assert (= (and b!2427048 (not c!387158)) b!2427050))

(assert (= (and d!702710 res!1030841) b!2427047))

(assert (= (and b!2427047 res!1030838) b!2427049))

(assert (= (and b!2427049 res!1030842) b!2427045))

(assert (= (and d!702710 (not res!1030840)) b!2427046))

(declare-fun m!2811797 () Bool)

(assert (=> b!2427050 m!2811797))

(assert (=> b!2427050 m!2811797))

(declare-fun m!2811799 () Bool)

(assert (=> b!2427050 m!2811799))

(declare-fun m!2811801 () Bool)

(assert (=> b!2427050 m!2811801))

(assert (=> b!2427050 m!2811631))

(assert (=> b!2427050 m!2811797))

(declare-fun m!2811803 () Bool)

(assert (=> b!2427050 m!2811803))

(declare-fun m!2811805 () Bool)

(assert (=> b!2427047 m!2811805))

(declare-fun m!2811807 () Bool)

(assert (=> b!2427047 m!2811807))

(assert (=> b!2427045 m!2811805))

(declare-fun m!2811809 () Bool)

(assert (=> b!2427045 m!2811809))

(assert (=> b!2427043 m!2811631))

(declare-fun m!2811811 () Bool)

(assert (=> b!2427043 m!2811811))

(declare-fun m!2811813 () Bool)

(assert (=> d!702710 m!2811813))

(declare-fun m!2811815 () Bool)

(assert (=> d!702710 m!2811815))

(declare-fun m!2811817 () Bool)

(assert (=> d!702710 m!2811817))

(assert (=> b!2427046 m!2811813))

(assert (=> b!2427049 m!2811805))

(assert (=> b!2427049 m!2811631))

(declare-fun m!2811819 () Bool)

(assert (=> b!2427049 m!2811819))

(assert (=> b!2426701 d!702710))

(declare-fun bs!463950 () Bool)

(declare-fun d!702714 () Bool)

(assert (= bs!463950 (and d!702714 start!237674)))

(declare-fun lambda!91407 () Int)

(assert (=> bs!463950 (= lambda!91407 lambda!91394)))

(declare-fun bs!463951 () Bool)

(assert (= bs!463951 (and d!702714 d!702696)))

(assert (=> bs!463951 (= lambda!91407 lambda!91406)))

(declare-fun b!2427051 () Bool)

(declare-fun e!1543682 () Bool)

(assert (=> b!2427051 (= e!1543682 (isEmpty!16436 (t!208476 (t!208476 l!9164))))))

(declare-fun b!2427052 () Bool)

(declare-fun e!1543681 () Regex!7130)

(assert (=> b!2427052 (= e!1543681 (h!33802 (t!208476 l!9164)))))

(declare-fun b!2427053 () Bool)

(declare-fun e!1543679 () Bool)

(declare-fun e!1543680 () Bool)

(assert (=> b!2427053 (= e!1543679 e!1543680)))

(declare-fun c!387160 () Bool)

(assert (=> b!2427053 (= c!387160 (isEmpty!16436 (tail!3744 (t!208476 l!9164))))))

(declare-fun b!2427054 () Bool)

(declare-fun e!1543678 () Regex!7130)

(assert (=> b!2427054 (= e!1543678 EmptyExpr!7130)))

(declare-fun e!1543683 () Bool)

(assert (=> d!702714 e!1543683))

(declare-fun res!1030844 () Bool)

(assert (=> d!702714 (=> (not res!1030844) (not e!1543683))))

(declare-fun lt!876532 () Regex!7130)

(assert (=> d!702714 (= res!1030844 (validRegex!2850 lt!876532))))

(assert (=> d!702714 (= lt!876532 e!1543681)))

(declare-fun c!387161 () Bool)

(assert (=> d!702714 (= c!387161 e!1543682)))

(declare-fun res!1030843 () Bool)

(assert (=> d!702714 (=> (not res!1030843) (not e!1543682))))

(assert (=> d!702714 (= res!1030843 (is-Cons!28401 (t!208476 l!9164)))))

(assert (=> d!702714 (forall!5764 (t!208476 l!9164) lambda!91407)))

(assert (=> d!702714 (= (generalisedConcat!231 (t!208476 l!9164)) lt!876532)))

(declare-fun b!2427055 () Bool)

(assert (=> b!2427055 (= e!1543678 (Concat!11766 (h!33802 (t!208476 l!9164)) (generalisedConcat!231 (t!208476 (t!208476 l!9164)))))))

(declare-fun b!2427056 () Bool)

(assert (=> b!2427056 (= e!1543681 e!1543678)))

(declare-fun c!387159 () Bool)

(assert (=> b!2427056 (= c!387159 (is-Cons!28401 (t!208476 l!9164)))))

(declare-fun b!2427057 () Bool)

(assert (=> b!2427057 (= e!1543680 (isConcat!185 lt!876532))))

(declare-fun b!2427058 () Bool)

(assert (=> b!2427058 (= e!1543680 (= lt!876532 (head!5472 (t!208476 l!9164))))))

(declare-fun b!2427059 () Bool)

(assert (=> b!2427059 (= e!1543683 e!1543679)))

(declare-fun c!387162 () Bool)

(assert (=> b!2427059 (= c!387162 (isEmpty!16436 (t!208476 l!9164)))))

(declare-fun b!2427060 () Bool)

(assert (=> b!2427060 (= e!1543679 (isEmptyExpr!185 lt!876532))))

(assert (= (and d!702714 res!1030843) b!2427051))

(assert (= (and d!702714 c!387161) b!2427052))

(assert (= (and d!702714 (not c!387161)) b!2427056))

(assert (= (and b!2427056 c!387159) b!2427055))

(assert (= (and b!2427056 (not c!387159)) b!2427054))

(assert (= (and d!702714 res!1030844) b!2427059))

(assert (= (and b!2427059 c!387162) b!2427060))

(assert (= (and b!2427059 (not c!387162)) b!2427053))

(assert (= (and b!2427053 c!387160) b!2427058))

(assert (= (and b!2427053 (not c!387160)) b!2427057))

(declare-fun m!2811821 () Bool)

(assert (=> d!702714 m!2811821))

(declare-fun m!2811823 () Bool)

(assert (=> d!702714 m!2811823))

(declare-fun m!2811825 () Bool)

(assert (=> b!2427058 m!2811825))

(declare-fun m!2811827 () Bool)

(assert (=> b!2427060 m!2811827))

(declare-fun m!2811829 () Bool)

(assert (=> b!2427053 m!2811829))

(assert (=> b!2427053 m!2811829))

(declare-fun m!2811831 () Bool)

(assert (=> b!2427053 m!2811831))

(declare-fun m!2811833 () Bool)

(assert (=> b!2427057 m!2811833))

(declare-fun m!2811835 () Bool)

(assert (=> b!2427051 m!2811835))

(assert (=> b!2427059 m!2811769))

(declare-fun m!2811837 () Bool)

(assert (=> b!2427055 m!2811837))

(assert (=> b!2426701 d!702714))

(declare-fun b!2427061 () Bool)

(declare-fun e!1543687 () Bool)

(assert (=> b!2427061 (= e!1543687 (matchR!3247 (derivativeStep!1822 (ite c!387084 lt!876453 (Concat!11766 lt!876460 EmptyExpr!7130)) (head!5474 (ite c!387084 s!9460 call!148507))) (tail!3746 (ite c!387084 s!9460 call!148507))))))

(declare-fun b!2427062 () Bool)

(declare-fun e!1543689 () Bool)

(declare-fun lt!876533 () Bool)

(declare-fun call!148560 () Bool)

(assert (=> b!2427062 (= e!1543689 (= lt!876533 call!148560))))

(declare-fun d!702716 () Bool)

(assert (=> d!702716 e!1543689))

(declare-fun c!387165 () Bool)

(assert (=> d!702716 (= c!387165 (is-EmptyExpr!7130 (ite c!387084 lt!876453 (Concat!11766 lt!876460 EmptyExpr!7130))))))

(assert (=> d!702716 (= lt!876533 e!1543687)))

(declare-fun c!387163 () Bool)

(assert (=> d!702716 (= c!387163 (isEmpty!16437 (ite c!387084 s!9460 call!148507)))))

(assert (=> d!702716 (validRegex!2850 (ite c!387084 lt!876453 (Concat!11766 lt!876460 EmptyExpr!7130)))))

(assert (=> d!702716 (= (matchR!3247 (ite c!387084 lt!876453 (Concat!11766 lt!876460 EmptyExpr!7130)) (ite c!387084 s!9460 call!148507)) lt!876533)))

(declare-fun b!2427063 () Bool)

(declare-fun res!1030850 () Bool)

(declare-fun e!1543688 () Bool)

(assert (=> b!2427063 (=> (not res!1030850) (not e!1543688))))

(assert (=> b!2427063 (= res!1030850 (isEmpty!16437 (tail!3746 (ite c!387084 s!9460 call!148507))))))

(declare-fun b!2427064 () Bool)

(declare-fun res!1030847 () Bool)

(declare-fun e!1543684 () Bool)

(assert (=> b!2427064 (=> res!1030847 e!1543684)))

(assert (=> b!2427064 (= res!1030847 (not (is-ElementMatch!7130 (ite c!387084 lt!876453 (Concat!11766 lt!876460 EmptyExpr!7130)))))))

(declare-fun e!1543686 () Bool)

(assert (=> b!2427064 (= e!1543686 e!1543684)))

(declare-fun b!2427065 () Bool)

(assert (=> b!2427065 (= e!1543689 e!1543686)))

(declare-fun c!387164 () Bool)

(assert (=> b!2427065 (= c!387164 (is-EmptyLang!7130 (ite c!387084 lt!876453 (Concat!11766 lt!876460 EmptyExpr!7130))))))

(declare-fun b!2427066 () Bool)

(assert (=> b!2427066 (= e!1543688 (= (head!5474 (ite c!387084 s!9460 call!148507)) (c!387085 (ite c!387084 lt!876453 (Concat!11766 lt!876460 EmptyExpr!7130)))))))

(declare-fun e!1543685 () Bool)

(declare-fun b!2427067 () Bool)

(assert (=> b!2427067 (= e!1543685 (not (= (head!5474 (ite c!387084 s!9460 call!148507)) (c!387085 (ite c!387084 lt!876453 (Concat!11766 lt!876460 EmptyExpr!7130))))))))

(declare-fun bm!148555 () Bool)

(assert (=> bm!148555 (= call!148560 (isEmpty!16437 (ite c!387084 s!9460 call!148507)))))

(declare-fun b!2427068 () Bool)

(declare-fun res!1030848 () Bool)

(assert (=> b!2427068 (=> res!1030848 e!1543684)))

(assert (=> b!2427068 (= res!1030848 e!1543688)))

(declare-fun res!1030852 () Bool)

(assert (=> b!2427068 (=> (not res!1030852) (not e!1543688))))

(assert (=> b!2427068 (= res!1030852 lt!876533)))

(declare-fun b!2427069 () Bool)

(declare-fun e!1543690 () Bool)

(assert (=> b!2427069 (= e!1543690 e!1543685)))

(declare-fun res!1030851 () Bool)

(assert (=> b!2427069 (=> res!1030851 e!1543685)))

(assert (=> b!2427069 (= res!1030851 call!148560)))

(declare-fun b!2427070 () Bool)

(declare-fun res!1030846 () Bool)

(assert (=> b!2427070 (=> (not res!1030846) (not e!1543688))))

(assert (=> b!2427070 (= res!1030846 (not call!148560))))

(declare-fun b!2427071 () Bool)

(declare-fun res!1030845 () Bool)

(assert (=> b!2427071 (=> res!1030845 e!1543685)))

(assert (=> b!2427071 (= res!1030845 (not (isEmpty!16437 (tail!3746 (ite c!387084 s!9460 call!148507)))))))

(declare-fun b!2427072 () Bool)

(assert (=> b!2427072 (= e!1543684 e!1543690)))

(declare-fun res!1030849 () Bool)

(assert (=> b!2427072 (=> (not res!1030849) (not e!1543690))))

(assert (=> b!2427072 (= res!1030849 (not lt!876533))))

(declare-fun b!2427073 () Bool)

(assert (=> b!2427073 (= e!1543686 (not lt!876533))))

(declare-fun b!2427074 () Bool)

(assert (=> b!2427074 (= e!1543687 (nullable!2165 (ite c!387084 lt!876453 (Concat!11766 lt!876460 EmptyExpr!7130))))))

(assert (= (and d!702716 c!387163) b!2427074))

(assert (= (and d!702716 (not c!387163)) b!2427061))

(assert (= (and d!702716 c!387165) b!2427062))

(assert (= (and d!702716 (not c!387165)) b!2427065))

(assert (= (and b!2427065 c!387164) b!2427073))

(assert (= (and b!2427065 (not c!387164)) b!2427064))

(assert (= (and b!2427064 (not res!1030847)) b!2427068))

(assert (= (and b!2427068 res!1030852) b!2427070))

(assert (= (and b!2427070 res!1030846) b!2427063))

(assert (= (and b!2427063 res!1030850) b!2427066))

(assert (= (and b!2427068 (not res!1030848)) b!2427072))

(assert (= (and b!2427072 res!1030849) b!2427069))

(assert (= (and b!2427069 (not res!1030851)) b!2427071))

(assert (= (and b!2427071 (not res!1030845)) b!2427067))

(assert (= (or b!2427062 b!2427069 b!2427070) bm!148555))

(declare-fun m!2811839 () Bool)

(assert (=> b!2427066 m!2811839))

(assert (=> b!2427067 m!2811839))

(declare-fun m!2811841 () Bool)

(assert (=> b!2427071 m!2811841))

(assert (=> b!2427071 m!2811841))

(declare-fun m!2811843 () Bool)

(assert (=> b!2427071 m!2811843))

(assert (=> b!2427063 m!2811841))

(assert (=> b!2427063 m!2811841))

(assert (=> b!2427063 m!2811843))

(declare-fun m!2811845 () Bool)

(assert (=> bm!148555 m!2811845))

(declare-fun m!2811847 () Bool)

(assert (=> b!2427074 m!2811847))

(assert (=> d!702716 m!2811845))

(declare-fun m!2811849 () Bool)

(assert (=> d!702716 m!2811849))

(assert (=> b!2427061 m!2811839))

(assert (=> b!2427061 m!2811839))

(declare-fun m!2811851 () Bool)

(assert (=> b!2427061 m!2811851))

(assert (=> b!2427061 m!2811841))

(assert (=> b!2427061 m!2811851))

(assert (=> b!2427061 m!2811841))

(declare-fun m!2811853 () Bool)

(assert (=> b!2427061 m!2811853))

(assert (=> bm!148504 d!702716))

(declare-fun d!702718 () Bool)

(assert (=> d!702718 (matchR!3247 (Concat!11766 lt!876460 EmptyExpr!7130) (++!7051 s!9460 Nil!28400))))

(declare-fun lt!876538 () Unit!41639)

(declare-fun choose!14379 (Regex!7130 Regex!7130 List!28498 List!28498) Unit!41639)

(assert (=> d!702718 (= lt!876538 (choose!14379 lt!876460 EmptyExpr!7130 s!9460 Nil!28400))))

(declare-fun e!1543695 () Bool)

(assert (=> d!702718 e!1543695))

(declare-fun res!1030857 () Bool)

(assert (=> d!702718 (=> (not res!1030857) (not e!1543695))))

(assert (=> d!702718 (= res!1030857 (validRegex!2850 lt!876460))))

(assert (=> d!702718 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!105 lt!876460 EmptyExpr!7130 s!9460 Nil!28400) lt!876538)))

(declare-fun b!2427079 () Bool)

(assert (=> b!2427079 (= e!1543695 (validRegex!2850 EmptyExpr!7130))))

(assert (= (and d!702718 res!1030857) b!2427079))

(declare-fun m!2811855 () Bool)

(assert (=> d!702718 m!2811855))

(assert (=> d!702718 m!2811855))

(declare-fun m!2811857 () Bool)

(assert (=> d!702718 m!2811857))

(declare-fun m!2811859 () Bool)

(assert (=> d!702718 m!2811859))

(assert (=> d!702718 m!2811725))

(declare-fun m!2811861 () Bool)

(assert (=> b!2427079 m!2811861))

(assert (=> b!2426718 d!702718))

(declare-fun b!2427081 () Bool)

(declare-fun e!1543700 () Bool)

(assert (=> b!2427081 (= e!1543700 (matchR!3247 (derivativeStep!1822 lt!876453 (head!5474 call!148507)) (tail!3746 call!148507)))))

(declare-fun b!2427082 () Bool)

(declare-fun e!1543702 () Bool)

(declare-fun lt!876540 () Bool)

(declare-fun call!148561 () Bool)

(assert (=> b!2427082 (= e!1543702 (= lt!876540 call!148561))))

(declare-fun d!702720 () Bool)

(assert (=> d!702720 e!1543702))

(declare-fun c!387168 () Bool)

(assert (=> d!702720 (= c!387168 (is-EmptyExpr!7130 lt!876453))))

(assert (=> d!702720 (= lt!876540 e!1543700)))

(declare-fun c!387166 () Bool)

(assert (=> d!702720 (= c!387166 (isEmpty!16437 call!148507))))

(assert (=> d!702720 (validRegex!2850 lt!876453)))

(assert (=> d!702720 (= (matchR!3247 lt!876453 call!148507) lt!876540)))

(declare-fun b!2427083 () Bool)

(declare-fun res!1030864 () Bool)

(declare-fun e!1543701 () Bool)

(assert (=> b!2427083 (=> (not res!1030864) (not e!1543701))))

(assert (=> b!2427083 (= res!1030864 (isEmpty!16437 (tail!3746 call!148507)))))

(declare-fun b!2427084 () Bool)

(declare-fun res!1030861 () Bool)

(declare-fun e!1543697 () Bool)

(assert (=> b!2427084 (=> res!1030861 e!1543697)))

(assert (=> b!2427084 (= res!1030861 (not (is-ElementMatch!7130 lt!876453)))))

(declare-fun e!1543699 () Bool)

(assert (=> b!2427084 (= e!1543699 e!1543697)))

(declare-fun b!2427085 () Bool)

(assert (=> b!2427085 (= e!1543702 e!1543699)))

(declare-fun c!387167 () Bool)

(assert (=> b!2427085 (= c!387167 (is-EmptyLang!7130 lt!876453))))

(declare-fun b!2427086 () Bool)

(assert (=> b!2427086 (= e!1543701 (= (head!5474 call!148507) (c!387085 lt!876453)))))

(declare-fun b!2427087 () Bool)

(declare-fun e!1543698 () Bool)

(assert (=> b!2427087 (= e!1543698 (not (= (head!5474 call!148507) (c!387085 lt!876453))))))

(declare-fun bm!148556 () Bool)

(assert (=> bm!148556 (= call!148561 (isEmpty!16437 call!148507))))

(declare-fun b!2427088 () Bool)

(declare-fun res!1030862 () Bool)

(assert (=> b!2427088 (=> res!1030862 e!1543697)))

(assert (=> b!2427088 (= res!1030862 e!1543701)))

(declare-fun res!1030866 () Bool)

(assert (=> b!2427088 (=> (not res!1030866) (not e!1543701))))

(assert (=> b!2427088 (= res!1030866 lt!876540)))

(declare-fun b!2427089 () Bool)

(declare-fun e!1543703 () Bool)

(assert (=> b!2427089 (= e!1543703 e!1543698)))

(declare-fun res!1030865 () Bool)

(assert (=> b!2427089 (=> res!1030865 e!1543698)))

(assert (=> b!2427089 (= res!1030865 call!148561)))

(declare-fun b!2427090 () Bool)

(declare-fun res!1030860 () Bool)

(assert (=> b!2427090 (=> (not res!1030860) (not e!1543701))))

(assert (=> b!2427090 (= res!1030860 (not call!148561))))

(declare-fun b!2427091 () Bool)

(declare-fun res!1030859 () Bool)

(assert (=> b!2427091 (=> res!1030859 e!1543698)))

(assert (=> b!2427091 (= res!1030859 (not (isEmpty!16437 (tail!3746 call!148507))))))

(declare-fun b!2427092 () Bool)

(assert (=> b!2427092 (= e!1543697 e!1543703)))

(declare-fun res!1030863 () Bool)

(assert (=> b!2427092 (=> (not res!1030863) (not e!1543703))))

(assert (=> b!2427092 (= res!1030863 (not lt!876540))))

(declare-fun b!2427093 () Bool)

(assert (=> b!2427093 (= e!1543699 (not lt!876540))))

(declare-fun b!2427094 () Bool)

(assert (=> b!2427094 (= e!1543700 (nullable!2165 lt!876453))))

(assert (= (and d!702720 c!387166) b!2427094))

(assert (= (and d!702720 (not c!387166)) b!2427081))

(assert (= (and d!702720 c!387168) b!2427082))

(assert (= (and d!702720 (not c!387168)) b!2427085))

(assert (= (and b!2427085 c!387167) b!2427093))

(assert (= (and b!2427085 (not c!387167)) b!2427084))

(assert (= (and b!2427084 (not res!1030861)) b!2427088))

(assert (= (and b!2427088 res!1030866) b!2427090))

(assert (= (and b!2427090 res!1030860) b!2427083))

(assert (= (and b!2427083 res!1030864) b!2427086))

(assert (= (and b!2427088 (not res!1030862)) b!2427092))

(assert (= (and b!2427092 res!1030863) b!2427089))

(assert (= (and b!2427089 (not res!1030865)) b!2427091))

(assert (= (and b!2427091 (not res!1030859)) b!2427087))

(assert (= (or b!2427082 b!2427089 b!2427090) bm!148556))

(declare-fun m!2811871 () Bool)

(assert (=> b!2427086 m!2811871))

(assert (=> b!2427087 m!2811871))

(declare-fun m!2811873 () Bool)

(assert (=> b!2427091 m!2811873))

(assert (=> b!2427091 m!2811873))

(declare-fun m!2811875 () Bool)

(assert (=> b!2427091 m!2811875))

(assert (=> b!2427083 m!2811873))

(assert (=> b!2427083 m!2811873))

(assert (=> b!2427083 m!2811875))

(declare-fun m!2811877 () Bool)

(assert (=> bm!148556 m!2811877))

(declare-fun m!2811879 () Bool)

(assert (=> b!2427094 m!2811879))

(assert (=> d!702720 m!2811877))

(declare-fun m!2811881 () Bool)

(assert (=> d!702720 m!2811881))

(assert (=> b!2427081 m!2811871))

(assert (=> b!2427081 m!2811871))

(declare-fun m!2811883 () Bool)

(assert (=> b!2427081 m!2811883))

(assert (=> b!2427081 m!2811873))

(assert (=> b!2427081 m!2811883))

(assert (=> b!2427081 m!2811873))

(declare-fun m!2811885 () Bool)

(assert (=> b!2427081 m!2811885))

(assert (=> b!2426718 d!702720))

(declare-fun d!702724 () Bool)

(assert (=> d!702724 (isDefined!4457 (findConcatSeparation!739 lt!876460 EmptyExpr!7130 Nil!28400 s!9460 s!9460))))

(declare-fun lt!876544 () Unit!41639)

(declare-fun choose!14380 (Regex!7130 Regex!7130 List!28498) Unit!41639)

(assert (=> d!702724 (= lt!876544 (choose!14380 lt!876460 EmptyExpr!7130 s!9460))))

(assert (=> d!702724 (validRegex!2850 lt!876460)))

(assert (=> d!702724 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!79 lt!876460 EmptyExpr!7130 s!9460) lt!876544)))

(declare-fun bs!463952 () Bool)

(assert (= bs!463952 d!702724))

(assert (=> bs!463952 m!2811625))

(assert (=> bs!463952 m!2811625))

(declare-fun m!2811903 () Bool)

(assert (=> bs!463952 m!2811903))

(declare-fun m!2811905 () Bool)

(assert (=> bs!463952 m!2811905))

(assert (=> bs!463952 m!2811725))

(assert (=> b!2426718 d!702724))

(declare-fun d!702728 () Bool)

(assert (=> d!702728 (matchR!3247 (Concat!11766 lt!876460 EmptyExpr!7130) (++!7051 (_1!16561 lt!876452) (_2!16561 lt!876452)))))

(declare-fun lt!876547 () Unit!41639)

(declare-fun choose!14381 (Regex!7130 Regex!7130 List!28498 List!28498 List!28498) Unit!41639)

(assert (=> d!702728 (= lt!876547 (choose!14381 lt!876460 EmptyExpr!7130 (_1!16561 lt!876452) (_2!16561 lt!876452) s!9460))))

(assert (=> d!702728 (validRegex!2850 lt!876460)))

(assert (=> d!702728 (= (lemmaFindSeparationIsDefinedThenConcatMatches!79 lt!876460 EmptyExpr!7130 (_1!16561 lt!876452) (_2!16561 lt!876452) s!9460) lt!876547)))

(declare-fun bs!463953 () Bool)

(assert (= bs!463953 d!702728))

(declare-fun m!2811907 () Bool)

(assert (=> bs!463953 m!2811907))

(assert (=> bs!463953 m!2811907))

(declare-fun m!2811909 () Bool)

(assert (=> bs!463953 m!2811909))

(declare-fun m!2811911 () Bool)

(assert (=> bs!463953 m!2811911))

(assert (=> bs!463953 m!2811725))

(assert (=> b!2426700 d!702728))

(declare-fun d!702730 () Bool)

(assert (=> d!702730 (= (get!8748 lt!876457) (v!31038 lt!876457))))

(assert (=> b!2426700 d!702730))

(declare-fun b!2427118 () Bool)

(declare-fun e!1543715 () List!28498)

(assert (=> b!2427118 (= e!1543715 (Cons!28400 (h!33801 (ite c!387084 s!9460 (_1!16561 lt!876452))) (++!7051 (t!208475 (ite c!387084 s!9460 (_1!16561 lt!876452))) (ite c!387084 Nil!28400 (_2!16561 lt!876452)))))))

(declare-fun d!702732 () Bool)

(declare-fun e!1543716 () Bool)

(assert (=> d!702732 e!1543716))

(declare-fun res!1030879 () Bool)

(assert (=> d!702732 (=> (not res!1030879) (not e!1543716))))

(declare-fun lt!876553 () List!28498)

(declare-fun content!3914 (List!28498) (Set C!14418))

(assert (=> d!702732 (= res!1030879 (= (content!3914 lt!876553) (set.union (content!3914 (ite c!387084 s!9460 (_1!16561 lt!876452))) (content!3914 (ite c!387084 Nil!28400 (_2!16561 lt!876452))))))))

(assert (=> d!702732 (= lt!876553 e!1543715)))

(declare-fun c!387174 () Bool)

(assert (=> d!702732 (= c!387174 (is-Nil!28400 (ite c!387084 s!9460 (_1!16561 lt!876452))))))

(assert (=> d!702732 (= (++!7051 (ite c!387084 s!9460 (_1!16561 lt!876452)) (ite c!387084 Nil!28400 (_2!16561 lt!876452))) lt!876553)))

(declare-fun b!2427119 () Bool)

(declare-fun res!1030880 () Bool)

(assert (=> b!2427119 (=> (not res!1030880) (not e!1543716))))

(declare-fun size!22252 (List!28498) Int)

(assert (=> b!2427119 (= res!1030880 (= (size!22252 lt!876553) (+ (size!22252 (ite c!387084 s!9460 (_1!16561 lt!876452))) (size!22252 (ite c!387084 Nil!28400 (_2!16561 lt!876452))))))))

(declare-fun b!2427117 () Bool)

(assert (=> b!2427117 (= e!1543715 (ite c!387084 Nil!28400 (_2!16561 lt!876452)))))

(declare-fun b!2427120 () Bool)

(assert (=> b!2427120 (= e!1543716 (or (not (= (ite c!387084 Nil!28400 (_2!16561 lt!876452)) Nil!28400)) (= lt!876553 (ite c!387084 s!9460 (_1!16561 lt!876452)))))))

(assert (= (and d!702732 c!387174) b!2427117))

(assert (= (and d!702732 (not c!387174)) b!2427118))

(assert (= (and d!702732 res!1030879) b!2427119))

(assert (= (and b!2427119 res!1030880) b!2427120))

(declare-fun m!2811919 () Bool)

(assert (=> b!2427118 m!2811919))

(declare-fun m!2811921 () Bool)

(assert (=> d!702732 m!2811921))

(declare-fun m!2811923 () Bool)

(assert (=> d!702732 m!2811923))

(declare-fun m!2811925 () Bool)

(assert (=> d!702732 m!2811925))

(declare-fun m!2811927 () Bool)

(assert (=> b!2427119 m!2811927))

(declare-fun m!2811929 () Bool)

(assert (=> b!2427119 m!2811929))

(declare-fun m!2811931 () Bool)

(assert (=> b!2427119 m!2811931))

(assert (=> bm!148501 d!702732))

(declare-fun d!702736 () Bool)

(declare-fun e!1543720 () Bool)

(assert (=> d!702736 e!1543720))

(declare-fun res!1030883 () Bool)

(assert (=> d!702736 (=> res!1030883 e!1543720)))

(declare-fun e!1543718 () Bool)

(assert (=> d!702736 (= res!1030883 e!1543718)))

(declare-fun res!1030884 () Bool)

(assert (=> d!702736 (=> (not res!1030884) (not e!1543718))))

(declare-fun lt!876556 () Option!5631)

(assert (=> d!702736 (= res!1030884 (isDefined!4457 lt!876556))))

(declare-fun e!1543721 () Option!5631)

(assert (=> d!702736 (= lt!876556 e!1543721)))

(declare-fun c!387175 () Bool)

(declare-fun e!1543717 () Bool)

(assert (=> d!702736 (= c!387175 e!1543717)))

(declare-fun res!1030882 () Bool)

(assert (=> d!702736 (=> (not res!1030882) (not e!1543717))))

(assert (=> d!702736 (= res!1030882 (matchR!3247 lt!876460 Nil!28400))))

(assert (=> d!702736 (validRegex!2850 lt!876460)))

(assert (=> d!702736 (= (findConcatSeparation!739 lt!876460 EmptyExpr!7130 Nil!28400 s!9460 s!9460) lt!876556)))

(declare-fun b!2427121 () Bool)

(assert (=> b!2427121 (= e!1543721 (Some!5630 (tuple2!28041 Nil!28400 s!9460)))))

(declare-fun b!2427122 () Bool)

(assert (=> b!2427122 (= e!1543717 (matchR!3247 EmptyExpr!7130 s!9460))))

(declare-fun b!2427123 () Bool)

(declare-fun e!1543719 () Option!5631)

(assert (=> b!2427123 (= e!1543719 None!5630)))

(declare-fun b!2427124 () Bool)

(assert (=> b!2427124 (= e!1543718 (= (++!7051 (_1!16561 (get!8748 lt!876556)) (_2!16561 (get!8748 lt!876556))) s!9460))))

(declare-fun b!2427125 () Bool)

(assert (=> b!2427125 (= e!1543720 (not (isDefined!4457 lt!876556)))))

(declare-fun b!2427126 () Bool)

(declare-fun res!1030881 () Bool)

(assert (=> b!2427126 (=> (not res!1030881) (not e!1543718))))

(assert (=> b!2427126 (= res!1030881 (matchR!3247 lt!876460 (_1!16561 (get!8748 lt!876556))))))

(declare-fun b!2427127 () Bool)

(assert (=> b!2427127 (= e!1543721 e!1543719)))

(declare-fun c!387176 () Bool)

(assert (=> b!2427127 (= c!387176 (is-Nil!28400 s!9460))))

(declare-fun b!2427128 () Bool)

(declare-fun res!1030885 () Bool)

(assert (=> b!2427128 (=> (not res!1030885) (not e!1543718))))

(assert (=> b!2427128 (= res!1030885 (matchR!3247 EmptyExpr!7130 (_2!16561 (get!8748 lt!876556))))))

(declare-fun b!2427129 () Bool)

(declare-fun lt!876555 () Unit!41639)

(declare-fun lt!876554 () Unit!41639)

(assert (=> b!2427129 (= lt!876555 lt!876554)))

(assert (=> b!2427129 (= (++!7051 (++!7051 Nil!28400 (Cons!28400 (h!33801 s!9460) Nil!28400)) (t!208475 s!9460)) s!9460)))

(assert (=> b!2427129 (= lt!876554 (lemmaMoveElementToOtherListKeepsConcatEq!677 Nil!28400 (h!33801 s!9460) (t!208475 s!9460) s!9460))))

(assert (=> b!2427129 (= e!1543719 (findConcatSeparation!739 lt!876460 EmptyExpr!7130 (++!7051 Nil!28400 (Cons!28400 (h!33801 s!9460) Nil!28400)) (t!208475 s!9460) s!9460))))

(assert (= (and d!702736 res!1030882) b!2427122))

(assert (= (and d!702736 c!387175) b!2427121))

(assert (= (and d!702736 (not c!387175)) b!2427127))

(assert (= (and b!2427127 c!387176) b!2427123))

(assert (= (and b!2427127 (not c!387176)) b!2427129))

(assert (= (and d!702736 res!1030884) b!2427126))

(assert (= (and b!2427126 res!1030881) b!2427128))

(assert (= (and b!2427128 res!1030885) b!2427124))

(assert (= (and d!702736 (not res!1030883)) b!2427125))

(assert (=> b!2427129 m!2811797))

(assert (=> b!2427129 m!2811797))

(assert (=> b!2427129 m!2811799))

(assert (=> b!2427129 m!2811801))

(assert (=> b!2427129 m!2811797))

(declare-fun m!2811933 () Bool)

(assert (=> b!2427129 m!2811933))

(declare-fun m!2811935 () Bool)

(assert (=> b!2427126 m!2811935))

(declare-fun m!2811937 () Bool)

(assert (=> b!2427126 m!2811937))

(assert (=> b!2427124 m!2811935))

(declare-fun m!2811939 () Bool)

(assert (=> b!2427124 m!2811939))

(declare-fun m!2811941 () Bool)

(assert (=> b!2427122 m!2811941))

(declare-fun m!2811943 () Bool)

(assert (=> d!702736 m!2811943))

(declare-fun m!2811945 () Bool)

(assert (=> d!702736 m!2811945))

(assert (=> d!702736 m!2811725))

(assert (=> b!2427125 m!2811943))

(assert (=> b!2427128 m!2811935))

(declare-fun m!2811947 () Bool)

(assert (=> b!2427128 m!2811947))

(assert (=> bm!148503 d!702736))

(declare-fun d!702738 () Bool)

(declare-fun res!1030890 () Bool)

(declare-fun e!1543726 () Bool)

(assert (=> d!702738 (=> res!1030890 e!1543726)))

(assert (=> d!702738 (= res!1030890 (is-Nil!28401 l!9164))))

(assert (=> d!702738 (= (forall!5764 l!9164 lambda!91394) e!1543726)))

(declare-fun b!2427134 () Bool)

(declare-fun e!1543727 () Bool)

(assert (=> b!2427134 (= e!1543726 e!1543727)))

(declare-fun res!1030891 () Bool)

(assert (=> b!2427134 (=> (not res!1030891) (not e!1543727))))

(declare-fun dynLambda!12224 (Int Regex!7130) Bool)

(assert (=> b!2427134 (= res!1030891 (dynLambda!12224 lambda!91394 (h!33802 l!9164)))))

(declare-fun b!2427135 () Bool)

(assert (=> b!2427135 (= e!1543727 (forall!5764 (t!208476 l!9164) lambda!91394))))

(assert (= (and d!702738 (not res!1030890)) b!2427134))

(assert (= (and b!2427134 res!1030891) b!2427135))

(declare-fun b_lambda!74707 () Bool)

(assert (=> (not b_lambda!74707) (not b!2427134)))

(declare-fun m!2811949 () Bool)

(assert (=> b!2427134 m!2811949))

(declare-fun m!2811951 () Bool)

(assert (=> b!2427135 m!2811951))

(assert (=> start!237674 d!702738))

(declare-fun d!702740 () Bool)

(declare-fun e!1543731 () Bool)

(assert (=> d!702740 e!1543731))

(declare-fun res!1030894 () Bool)

(assert (=> d!702740 (=> res!1030894 e!1543731)))

(declare-fun e!1543729 () Bool)

(assert (=> d!702740 (= res!1030894 e!1543729)))

(declare-fun res!1030895 () Bool)

(assert (=> d!702740 (=> (not res!1030895) (not e!1543729))))

(declare-fun lt!876559 () Option!5631)

(assert (=> d!702740 (= res!1030895 (isDefined!4457 lt!876559))))

(declare-fun e!1543732 () Option!5631)

(assert (=> d!702740 (= lt!876559 e!1543732)))

(declare-fun c!387177 () Bool)

(declare-fun e!1543728 () Bool)

(assert (=> d!702740 (= c!387177 e!1543728)))

(declare-fun res!1030893 () Bool)

(assert (=> d!702740 (=> (not res!1030893) (not e!1543728))))

(assert (=> d!702740 (= res!1030893 (matchR!3247 lt!876460 Nil!28400))))

(assert (=> d!702740 (validRegex!2850 lt!876460)))

(assert (=> d!702740 (= (findConcatSeparation!739 lt!876460 lt!876461 Nil!28400 s!9460 s!9460) lt!876559)))

(declare-fun b!2427136 () Bool)

(assert (=> b!2427136 (= e!1543732 (Some!5630 (tuple2!28041 Nil!28400 s!9460)))))

(declare-fun b!2427137 () Bool)

(assert (=> b!2427137 (= e!1543728 (matchR!3247 lt!876461 s!9460))))

(declare-fun b!2427138 () Bool)

(declare-fun e!1543730 () Option!5631)

(assert (=> b!2427138 (= e!1543730 None!5630)))

(declare-fun b!2427139 () Bool)

(assert (=> b!2427139 (= e!1543729 (= (++!7051 (_1!16561 (get!8748 lt!876559)) (_2!16561 (get!8748 lt!876559))) s!9460))))

(declare-fun b!2427140 () Bool)

(assert (=> b!2427140 (= e!1543731 (not (isDefined!4457 lt!876559)))))

(declare-fun b!2427141 () Bool)

(declare-fun res!1030892 () Bool)

(assert (=> b!2427141 (=> (not res!1030892) (not e!1543729))))

(assert (=> b!2427141 (= res!1030892 (matchR!3247 lt!876460 (_1!16561 (get!8748 lt!876559))))))

(declare-fun b!2427142 () Bool)

(assert (=> b!2427142 (= e!1543732 e!1543730)))

(declare-fun c!387178 () Bool)

(assert (=> b!2427142 (= c!387178 (is-Nil!28400 s!9460))))

(declare-fun b!2427143 () Bool)

(declare-fun res!1030896 () Bool)

(assert (=> b!2427143 (=> (not res!1030896) (not e!1543729))))

(assert (=> b!2427143 (= res!1030896 (matchR!3247 lt!876461 (_2!16561 (get!8748 lt!876559))))))

(declare-fun b!2427144 () Bool)

(declare-fun lt!876558 () Unit!41639)

(declare-fun lt!876557 () Unit!41639)

(assert (=> b!2427144 (= lt!876558 lt!876557)))

(assert (=> b!2427144 (= (++!7051 (++!7051 Nil!28400 (Cons!28400 (h!33801 s!9460) Nil!28400)) (t!208475 s!9460)) s!9460)))

(assert (=> b!2427144 (= lt!876557 (lemmaMoveElementToOtherListKeepsConcatEq!677 Nil!28400 (h!33801 s!9460) (t!208475 s!9460) s!9460))))

(assert (=> b!2427144 (= e!1543730 (findConcatSeparation!739 lt!876460 lt!876461 (++!7051 Nil!28400 (Cons!28400 (h!33801 s!9460) Nil!28400)) (t!208475 s!9460) s!9460))))

(assert (= (and d!702740 res!1030893) b!2427137))

(assert (= (and d!702740 c!387177) b!2427136))

(assert (= (and d!702740 (not c!387177)) b!2427142))

(assert (= (and b!2427142 c!387178) b!2427138))

(assert (= (and b!2427142 (not c!387178)) b!2427144))

(assert (= (and d!702740 res!1030895) b!2427141))

(assert (= (and b!2427141 res!1030892) b!2427143))

(assert (= (and b!2427143 res!1030896) b!2427139))

(assert (= (and d!702740 (not res!1030894)) b!2427140))

(assert (=> b!2427144 m!2811797))

(assert (=> b!2427144 m!2811797))

(assert (=> b!2427144 m!2811799))

(assert (=> b!2427144 m!2811801))

(assert (=> b!2427144 m!2811797))

(declare-fun m!2811953 () Bool)

(assert (=> b!2427144 m!2811953))

(declare-fun m!2811955 () Bool)

(assert (=> b!2427141 m!2811955))

(declare-fun m!2811957 () Bool)

(assert (=> b!2427141 m!2811957))

(assert (=> b!2427139 m!2811955))

(declare-fun m!2811959 () Bool)

(assert (=> b!2427139 m!2811959))

(declare-fun m!2811961 () Bool)

(assert (=> b!2427137 m!2811961))

(declare-fun m!2811963 () Bool)

(assert (=> d!702740 m!2811963))

(assert (=> d!702740 m!2811945))

(assert (=> d!702740 m!2811725))

(assert (=> b!2427140 m!2811963))

(assert (=> b!2427143 m!2811955))

(declare-fun m!2811965 () Bool)

(assert (=> b!2427143 m!2811965))

(assert (=> bm!148500 d!702740))

(declare-fun bs!463955 () Bool)

(declare-fun d!702742 () Bool)

(assert (= bs!463955 (and d!702742 start!237674)))

(declare-fun lambda!91408 () Int)

(assert (=> bs!463955 (= lambda!91408 lambda!91394)))

(declare-fun bs!463956 () Bool)

(assert (= bs!463956 (and d!702742 d!702696)))

(assert (=> bs!463956 (= lambda!91408 lambda!91406)))

(declare-fun bs!463957 () Bool)

(assert (= bs!463957 (and d!702742 d!702714)))

(assert (=> bs!463957 (= lambda!91408 lambda!91407)))

(declare-fun b!2427145 () Bool)

(declare-fun e!1543737 () Bool)

(assert (=> b!2427145 (= e!1543737 (isEmpty!16436 (t!208476 lt!876456)))))

(declare-fun b!2427146 () Bool)

(declare-fun e!1543736 () Regex!7130)

(assert (=> b!2427146 (= e!1543736 (h!33802 lt!876456))))

(declare-fun b!2427147 () Bool)

(declare-fun e!1543734 () Bool)

(declare-fun e!1543735 () Bool)

(assert (=> b!2427147 (= e!1543734 e!1543735)))

(declare-fun c!387180 () Bool)

(assert (=> b!2427147 (= c!387180 (isEmpty!16436 (tail!3744 lt!876456)))))

(declare-fun b!2427148 () Bool)

(declare-fun e!1543733 () Regex!7130)

(assert (=> b!2427148 (= e!1543733 EmptyExpr!7130)))

(declare-fun e!1543738 () Bool)

(assert (=> d!702742 e!1543738))

(declare-fun res!1030898 () Bool)

(assert (=> d!702742 (=> (not res!1030898) (not e!1543738))))

(declare-fun lt!876560 () Regex!7130)

(assert (=> d!702742 (= res!1030898 (validRegex!2850 lt!876560))))

(assert (=> d!702742 (= lt!876560 e!1543736)))

(declare-fun c!387181 () Bool)

(assert (=> d!702742 (= c!387181 e!1543737)))

(declare-fun res!1030897 () Bool)

(assert (=> d!702742 (=> (not res!1030897) (not e!1543737))))

(assert (=> d!702742 (= res!1030897 (is-Cons!28401 lt!876456))))

(assert (=> d!702742 (forall!5764 lt!876456 lambda!91408)))

(assert (=> d!702742 (= (generalisedConcat!231 lt!876456) lt!876560)))

(declare-fun b!2427149 () Bool)

(assert (=> b!2427149 (= e!1543733 (Concat!11766 (h!33802 lt!876456) (generalisedConcat!231 (t!208476 lt!876456))))))

(declare-fun b!2427150 () Bool)

(assert (=> b!2427150 (= e!1543736 e!1543733)))

(declare-fun c!387179 () Bool)

(assert (=> b!2427150 (= c!387179 (is-Cons!28401 lt!876456))))

(declare-fun b!2427151 () Bool)

(assert (=> b!2427151 (= e!1543735 (isConcat!185 lt!876560))))

(declare-fun b!2427152 () Bool)

(assert (=> b!2427152 (= e!1543735 (= lt!876560 (head!5472 lt!876456)))))

(declare-fun b!2427153 () Bool)

(assert (=> b!2427153 (= e!1543738 e!1543734)))

(declare-fun c!387182 () Bool)

(assert (=> b!2427153 (= c!387182 (isEmpty!16436 lt!876456))))

(declare-fun b!2427154 () Bool)

(assert (=> b!2427154 (= e!1543734 (isEmptyExpr!185 lt!876560))))

(assert (= (and d!702742 res!1030897) b!2427145))

(assert (= (and d!702742 c!387181) b!2427146))

(assert (= (and d!702742 (not c!387181)) b!2427150))

(assert (= (and b!2427150 c!387179) b!2427149))

(assert (= (and b!2427150 (not c!387179)) b!2427148))

(assert (= (and d!702742 res!1030898) b!2427153))

(assert (= (and b!2427153 c!387182) b!2427154))

(assert (= (and b!2427153 (not c!387182)) b!2427147))

(assert (= (and b!2427147 c!387180) b!2427152))

(assert (= (and b!2427147 (not c!387180)) b!2427151))

(declare-fun m!2811967 () Bool)

(assert (=> d!702742 m!2811967))

(declare-fun m!2811969 () Bool)

(assert (=> d!702742 m!2811969))

(declare-fun m!2811971 () Bool)

(assert (=> b!2427152 m!2811971))

(declare-fun m!2811973 () Bool)

(assert (=> b!2427154 m!2811973))

(declare-fun m!2811975 () Bool)

(assert (=> b!2427147 m!2811975))

(assert (=> b!2427147 m!2811975))

(declare-fun m!2811977 () Bool)

(assert (=> b!2427147 m!2811977))

(declare-fun m!2811979 () Bool)

(assert (=> b!2427151 m!2811979))

(declare-fun m!2811981 () Bool)

(assert (=> b!2427145 m!2811981))

(assert (=> b!2427153 m!2811613))

(declare-fun m!2811983 () Bool)

(assert (=> b!2427149 m!2811983))

(assert (=> b!2426709 d!702742))

(declare-fun b!2427167 () Bool)

(declare-fun e!1543741 () Bool)

(declare-fun tp!770526 () Bool)

(assert (=> b!2427167 (= e!1543741 tp!770526)))

(assert (=> b!2426705 (= tp!770485 e!1543741)))

(declare-fun b!2427165 () Bool)

(assert (=> b!2427165 (= e!1543741 tp_is_empty!11673)))

(declare-fun b!2427166 () Bool)

(declare-fun tp!770523 () Bool)

(declare-fun tp!770522 () Bool)

(assert (=> b!2427166 (= e!1543741 (and tp!770523 tp!770522))))

(declare-fun b!2427168 () Bool)

(declare-fun tp!770524 () Bool)

(declare-fun tp!770525 () Bool)

(assert (=> b!2427168 (= e!1543741 (and tp!770524 tp!770525))))

(assert (= (and b!2426705 (is-ElementMatch!7130 (reg!7459 r!13927))) b!2427165))

(assert (= (and b!2426705 (is-Concat!11766 (reg!7459 r!13927))) b!2427166))

(assert (= (and b!2426705 (is-Star!7130 (reg!7459 r!13927))) b!2427167))

(assert (= (and b!2426705 (is-Union!7130 (reg!7459 r!13927))) b!2427168))

(declare-fun b!2427171 () Bool)

(declare-fun e!1543742 () Bool)

(declare-fun tp!770531 () Bool)

(assert (=> b!2427171 (= e!1543742 tp!770531)))

(assert (=> b!2426706 (= tp!770483 e!1543742)))

(declare-fun b!2427169 () Bool)

(assert (=> b!2427169 (= e!1543742 tp_is_empty!11673)))

(declare-fun b!2427170 () Bool)

(declare-fun tp!770528 () Bool)

(declare-fun tp!770527 () Bool)

(assert (=> b!2427170 (= e!1543742 (and tp!770528 tp!770527))))

(declare-fun b!2427172 () Bool)

(declare-fun tp!770529 () Bool)

(declare-fun tp!770530 () Bool)

(assert (=> b!2427172 (= e!1543742 (and tp!770529 tp!770530))))

(assert (= (and b!2426706 (is-ElementMatch!7130 (regOne!14773 r!13927))) b!2427169))

(assert (= (and b!2426706 (is-Concat!11766 (regOne!14773 r!13927))) b!2427170))

(assert (= (and b!2426706 (is-Star!7130 (regOne!14773 r!13927))) b!2427171))

(assert (= (and b!2426706 (is-Union!7130 (regOne!14773 r!13927))) b!2427172))

(declare-fun b!2427175 () Bool)

(declare-fun e!1543743 () Bool)

(declare-fun tp!770536 () Bool)

(assert (=> b!2427175 (= e!1543743 tp!770536)))

(assert (=> b!2426706 (= tp!770481 e!1543743)))

(declare-fun b!2427173 () Bool)

(assert (=> b!2427173 (= e!1543743 tp_is_empty!11673)))

(declare-fun b!2427174 () Bool)

(declare-fun tp!770533 () Bool)

(declare-fun tp!770532 () Bool)

(assert (=> b!2427174 (= e!1543743 (and tp!770533 tp!770532))))

(declare-fun b!2427176 () Bool)

(declare-fun tp!770534 () Bool)

(declare-fun tp!770535 () Bool)

(assert (=> b!2427176 (= e!1543743 (and tp!770534 tp!770535))))

(assert (= (and b!2426706 (is-ElementMatch!7130 (regTwo!14773 r!13927))) b!2427173))

(assert (= (and b!2426706 (is-Concat!11766 (regTwo!14773 r!13927))) b!2427174))

(assert (= (and b!2426706 (is-Star!7130 (regTwo!14773 r!13927))) b!2427175))

(assert (= (and b!2426706 (is-Union!7130 (regTwo!14773 r!13927))) b!2427176))

(declare-fun b!2427181 () Bool)

(declare-fun e!1543746 () Bool)

(declare-fun tp!770539 () Bool)

(assert (=> b!2427181 (= e!1543746 (and tp_is_empty!11673 tp!770539))))

(assert (=> b!2426721 (= tp!770486 e!1543746)))

(assert (= (and b!2426721 (is-Cons!28400 (t!208475 s!9460))) b!2427181))

(declare-fun b!2427184 () Bool)

(declare-fun e!1543747 () Bool)

(declare-fun tp!770544 () Bool)

(assert (=> b!2427184 (= e!1543747 tp!770544)))

(assert (=> b!2426704 (= tp!770484 e!1543747)))

(declare-fun b!2427182 () Bool)

(assert (=> b!2427182 (= e!1543747 tp_is_empty!11673)))

(declare-fun b!2427183 () Bool)

(declare-fun tp!770541 () Bool)

(declare-fun tp!770540 () Bool)

(assert (=> b!2427183 (= e!1543747 (and tp!770541 tp!770540))))

(declare-fun b!2427185 () Bool)

(declare-fun tp!770542 () Bool)

(declare-fun tp!770543 () Bool)

(assert (=> b!2427185 (= e!1543747 (and tp!770542 tp!770543))))

(assert (= (and b!2426704 (is-ElementMatch!7130 (h!33802 l!9164))) b!2427182))

(assert (= (and b!2426704 (is-Concat!11766 (h!33802 l!9164))) b!2427183))

(assert (= (and b!2426704 (is-Star!7130 (h!33802 l!9164))) b!2427184))

(assert (= (and b!2426704 (is-Union!7130 (h!33802 l!9164))) b!2427185))

(declare-fun b!2427190 () Bool)

(declare-fun e!1543750 () Bool)

(declare-fun tp!770549 () Bool)

(declare-fun tp!770550 () Bool)

(assert (=> b!2427190 (= e!1543750 (and tp!770549 tp!770550))))

(assert (=> b!2426704 (= tp!770487 e!1543750)))

(assert (= (and b!2426704 (is-Cons!28401 (t!208476 l!9164))) b!2427190))

(declare-fun b!2427193 () Bool)

(declare-fun e!1543751 () Bool)

(declare-fun tp!770555 () Bool)

(assert (=> b!2427193 (= e!1543751 tp!770555)))

(assert (=> b!2426713 (= tp!770482 e!1543751)))

(declare-fun b!2427191 () Bool)

(assert (=> b!2427191 (= e!1543751 tp_is_empty!11673)))

(declare-fun b!2427192 () Bool)

(declare-fun tp!770552 () Bool)

(declare-fun tp!770551 () Bool)

(assert (=> b!2427192 (= e!1543751 (and tp!770552 tp!770551))))

(declare-fun b!2427194 () Bool)

(declare-fun tp!770553 () Bool)

(declare-fun tp!770554 () Bool)

(assert (=> b!2427194 (= e!1543751 (and tp!770553 tp!770554))))

(assert (= (and b!2426713 (is-ElementMatch!7130 (regOne!14772 r!13927))) b!2427191))

(assert (= (and b!2426713 (is-Concat!11766 (regOne!14772 r!13927))) b!2427192))

(assert (= (and b!2426713 (is-Star!7130 (regOne!14772 r!13927))) b!2427193))

(assert (= (and b!2426713 (is-Union!7130 (regOne!14772 r!13927))) b!2427194))

(declare-fun b!2427197 () Bool)

(declare-fun e!1543752 () Bool)

(declare-fun tp!770560 () Bool)

(assert (=> b!2427197 (= e!1543752 tp!770560)))

(assert (=> b!2426713 (= tp!770480 e!1543752)))

(declare-fun b!2427195 () Bool)

(assert (=> b!2427195 (= e!1543752 tp_is_empty!11673)))

(declare-fun b!2427196 () Bool)

(declare-fun tp!770557 () Bool)

(declare-fun tp!770556 () Bool)

(assert (=> b!2427196 (= e!1543752 (and tp!770557 tp!770556))))

(declare-fun b!2427198 () Bool)

(declare-fun tp!770558 () Bool)

(declare-fun tp!770559 () Bool)

(assert (=> b!2427198 (= e!1543752 (and tp!770558 tp!770559))))

(assert (= (and b!2426713 (is-ElementMatch!7130 (regTwo!14772 r!13927))) b!2427195))

(assert (= (and b!2426713 (is-Concat!11766 (regTwo!14772 r!13927))) b!2427196))

(assert (= (and b!2426713 (is-Star!7130 (regTwo!14772 r!13927))) b!2427197))

(assert (= (and b!2426713 (is-Union!7130 (regTwo!14772 r!13927))) b!2427198))

(declare-fun b_lambda!74709 () Bool)

(assert (= b_lambda!74707 (or start!237674 b_lambda!74709)))

(declare-fun bs!463958 () Bool)

(declare-fun d!702744 () Bool)

(assert (= bs!463958 (and d!702744 start!237674)))

(assert (=> bs!463958 (= (dynLambda!12224 lambda!91394 (h!33802 l!9164)) (validRegex!2850 (h!33802 l!9164)))))

(assert (=> bs!463958 m!2811817))

(assert (=> b!2427134 d!702744))

(push 1)

(assert (not b!2426989))

(assert (not b!2426836))

(assert (not b!2426954))

(assert (not b!2427174))

(assert (not b!2427047))

(assert (not d!702714))

(assert (not b!2427118))

(assert (not bm!148549))

(assert (not b!2426828))

(assert (not b!2426911))

(assert (not b!2427167))

(assert (not b!2426823))

(assert (not b!2427185))

(assert (not b!2427124))

(assert (not bm!148542))

(assert (not d!702696))

(assert (not b!2427051))

(assert (not b!2427194))

(assert (not b!2427045))

(assert (not b!2426833))

(assert (not b!2427079))

(assert (not b!2427149))

(assert (not b!2427055))

(assert (not d!702736))

(assert (not b!2427135))

(assert (not b!2426951))

(assert (not b!2426913))

(assert (not b!2426921))

(assert (not b!2427060))

(assert (not d!702720))

(assert (not b!2427175))

(assert (not d!702740))

(assert (not bm!148555))

(assert (not bs!463958))

(assert (not b_lambda!74709))

(assert (not d!702732))

(assert (not b!2427184))

(assert (not b!2427168))

(assert (not b!2427139))

(assert (not d!702692))

(assert (not b!2427122))

(assert (not b!2427153))

(assert (not b!2427053))

(assert (not b!2427128))

(assert (not b!2426897))

(assert (not d!702694))

(assert (not b!2427196))

(assert (not b!2427129))

(assert (not b!2426947))

(assert (not b!2427067))

(assert (not b!2427119))

(assert (not bm!148526))

(assert (not b!2426924))

(assert (not b!2427087))

(assert (not bm!148540))

(assert (not b!2427197))

(assert (not b!2427172))

(assert (not b!2426916))

(assert (not d!702728))

(assert (not b!2427176))

(assert (not b!2427063))

(assert (not b!2427125))

(assert (not b!2426904))

(assert (not bm!148556))

(assert (not b!2427046))

(assert (not d!702718))

(assert (not b!2427192))

(assert (not bm!148541))

(assert (not b!2426829))

(assert (not b!2427061))

(assert (not b!2427152))

(assert (not b!2426917))

(assert (not b!2427058))

(assert (not b!2427137))

(assert (not b!2427081))

(assert (not b!2427143))

(assert (not b!2427050))

(assert (not b!2427181))

(assert (not b!2427183))

(assert (not b!2427066))

(assert (not b!2426953))

(assert (not d!702710))

(assert (not b!2426949))

(assert (not d!702680))

(assert (not b!2427074))

(assert (not b!2427057))

(assert (not b!2426952))

(assert (not d!702702))

(assert (not b!2427171))

(assert (not b!2427043))

(assert (not b!2427145))

(assert (not b!2427049))

(assert (not b!2426945))

(assert (not b!2427059))

(assert (not b!2427126))

(assert (not d!702724))

(assert (not b!2427141))

(assert (not b!2427071))

(assert (not b!2427154))

(assert (not b!2427144))

(assert (not bm!148551))

(assert (not b!2427190))

(assert (not b!2427170))

(assert (not b!2427086))

(assert (not b!2427193))

(assert (not b!2427151))

(assert (not d!702742))

(assert (not b!2427140))

(assert (not b!2427166))

(assert (not d!702716))

(assert (not b!2427083))

(assert (not b!2427091))

(assert (not b!2427147))

(assert (not d!702678))

(assert (not b!2427094))

(assert (not b!2426825))

(assert (not d!702708))

(assert (not b!2427198))

(assert tp_is_empty!11673)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

