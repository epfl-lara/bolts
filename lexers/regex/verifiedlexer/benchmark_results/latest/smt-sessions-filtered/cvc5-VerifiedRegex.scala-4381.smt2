; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!232938 () Bool)

(assert start!232938)

(declare-fun b!2373621 () Bool)

(assert (=> b!2373621 true))

(assert (=> b!2373621 true))

(declare-fun lambda!88006 () Int)

(declare-fun lambda!88005 () Int)

(assert (=> b!2373621 (not (= lambda!88006 lambda!88005))))

(assert (=> b!2373621 true))

(assert (=> b!2373621 true))

(declare-fun b!2373615 () Bool)

(declare-fun e!1514703 () Bool)

(declare-fun e!1514699 () Bool)

(assert (=> b!2373615 (= e!1514703 e!1514699)))

(declare-fun res!1007679 () Bool)

(assert (=> b!2373615 (=> res!1007679 e!1514699)))

(declare-datatypes ((C!14066 0))(
  ( (C!14067 (val!8275 Int)) )
))
(declare-datatypes ((Regex!6954 0))(
  ( (ElementMatch!6954 (c!377300 C!14066)) (Concat!11590 (regOne!14420 Regex!6954) (regTwo!14420 Regex!6954)) (EmptyExpr!6954) (Star!6954 (reg!7283 Regex!6954)) (EmptyLang!6954) (Union!6954 (regOne!14421 Regex!6954) (regTwo!14421 Regex!6954)) )
))
(declare-fun lt!866635 () Regex!6954)

(assert (=> b!2373615 (= res!1007679 (not (= lt!866635 EmptyExpr!6954)))))

(declare-datatypes ((List!28146 0))(
  ( (Nil!28048) (Cons!28048 (h!33449 Regex!6954) (t!208123 List!28146)) )
))
(declare-fun lt!866638 () List!28146)

(declare-fun generalisedConcat!55 (List!28146) Regex!6954)

(assert (=> b!2373615 (= lt!866635 (generalisedConcat!55 lt!866638))))

(declare-fun b!2373616 () Bool)

(declare-fun res!1007677 () Bool)

(declare-fun e!1514706 () Bool)

(assert (=> b!2373616 (=> res!1007677 e!1514706)))

(declare-fun l!9164 () List!28146)

(declare-fun isEmpty!15985 (List!28146) Bool)

(assert (=> b!2373616 (= res!1007677 (isEmpty!15985 l!9164))))

(declare-fun b!2373617 () Bool)

(declare-fun e!1514698 () Bool)

(declare-datatypes ((List!28147 0))(
  ( (Nil!28049) (Cons!28049 (h!33450 C!14066) (t!208124 List!28147)) )
))
(declare-fun s!9460 () List!28147)

(declare-fun ++!6914 (List!28147 List!28147) List!28147)

(assert (=> b!2373617 (= e!1514698 (= (++!6914 Nil!28049 s!9460) s!9460))))

(declare-fun b!2373618 () Bool)

(declare-fun e!1514697 () Bool)

(assert (=> b!2373618 (= e!1514699 e!1514697)))

(declare-fun res!1007674 () Bool)

(assert (=> b!2373618 (=> res!1007674 e!1514697)))

(declare-fun lt!866642 () Regex!6954)

(declare-fun matchR!3071 (Regex!6954 List!28147) Bool)

(assert (=> b!2373618 (= res!1007674 (not (matchR!3071 lt!866642 s!9460)))))

(declare-fun head!5147 (List!28146) Regex!6954)

(assert (=> b!2373618 (= lt!866642 (head!5147 l!9164))))

(declare-fun b!2373619 () Bool)

(declare-fun e!1514700 () Bool)

(declare-fun tp!758423 () Bool)

(declare-fun tp!758422 () Bool)

(assert (=> b!2373619 (= e!1514700 (and tp!758423 tp!758422))))

(declare-fun b!2373620 () Bool)

(declare-fun res!1007669 () Bool)

(assert (=> b!2373620 (=> res!1007669 e!1514698)))

(declare-fun validRegex!2681 (Regex!6954) Bool)

(assert (=> b!2373620 (= res!1007669 (not (validRegex!2681 lt!866635)))))

(declare-fun e!1514705 () Bool)

(assert (=> b!2373621 (= e!1514705 e!1514706)))

(declare-fun res!1007670 () Bool)

(assert (=> b!2373621 (=> res!1007670 e!1514706)))

(declare-fun lt!866637 () Bool)

(declare-fun lt!866641 () Bool)

(assert (=> b!2373621 (= res!1007670 (not (= lt!866637 lt!866641)))))

(declare-fun Exists!1016 (Int) Bool)

(assert (=> b!2373621 (= (Exists!1016 lambda!88005) (Exists!1016 lambda!88006))))

(declare-datatypes ((Unit!40943 0))(
  ( (Unit!40944) )
))
(declare-fun lt!866640 () Unit!40943)

(declare-fun r!13927 () Regex!6954)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!355 (Regex!6954 Regex!6954 List!28147) Unit!40943)

(assert (=> b!2373621 (= lt!866640 (lemmaExistCutMatchRandMatchRSpecEquivalent!355 (regOne!14420 r!13927) (regTwo!14420 r!13927) s!9460))))

(assert (=> b!2373621 (= lt!866641 (Exists!1016 lambda!88005))))

(declare-datatypes ((tuple2!27772 0))(
  ( (tuple2!27773 (_1!16427 List!28147) (_2!16427 List!28147)) )
))
(declare-datatypes ((Option!5497 0))(
  ( (None!5496) (Some!5496 (v!30904 tuple2!27772)) )
))
(declare-fun isDefined!4325 (Option!5497) Bool)

(declare-fun findConcatSeparation!605 (Regex!6954 Regex!6954 List!28147 List!28147 List!28147) Option!5497)

(assert (=> b!2373621 (= lt!866641 (isDefined!4325 (findConcatSeparation!605 (regOne!14420 r!13927) (regTwo!14420 r!13927) Nil!28049 s!9460 s!9460)))))

(declare-fun lt!866643 () Unit!40943)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!605 (Regex!6954 Regex!6954 List!28147) Unit!40943)

(assert (=> b!2373621 (= lt!866643 (lemmaFindConcatSeparationEquivalentToExists!605 (regOne!14420 r!13927) (regTwo!14420 r!13927) s!9460))))

(declare-fun b!2373622 () Bool)

(declare-fun e!1514701 () Bool)

(declare-fun tp_is_empty!11321 () Bool)

(declare-fun tp!758420 () Bool)

(assert (=> b!2373622 (= e!1514701 (and tp_is_empty!11321 tp!758420))))

(declare-fun b!2373623 () Bool)

(declare-fun e!1514707 () Bool)

(declare-fun tp!758419 () Bool)

(declare-fun tp!758421 () Bool)

(assert (=> b!2373623 (= e!1514707 (and tp!758419 tp!758421))))

(declare-fun b!2373624 () Bool)

(declare-fun res!1007676 () Bool)

(declare-fun e!1514704 () Bool)

(assert (=> b!2373624 (=> (not res!1007676) (not e!1514704))))

(assert (=> b!2373624 (= res!1007676 (= r!13927 (generalisedConcat!55 l!9164)))))

(declare-fun b!2373625 () Bool)

(declare-fun e!1514702 () Bool)

(declare-fun lt!866645 () Regex!6954)

(assert (=> b!2373625 (= e!1514702 (matchR!3071 lt!866645 s!9460))))

(declare-fun b!2373626 () Bool)

(assert (=> b!2373626 (= e!1514697 e!1514698)))

(declare-fun res!1007671 () Bool)

(assert (=> b!2373626 (=> res!1007671 e!1514698)))

(assert (=> b!2373626 (= res!1007671 (not (validRegex!2681 lt!866642)))))

(assert (=> b!2373626 (isDefined!4325 (findConcatSeparation!605 lt!866642 EmptyExpr!6954 Nil!28049 s!9460 s!9460))))

(declare-fun lt!866644 () Unit!40943)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!9 (Regex!6954 Regex!6954 List!28147) Unit!40943)

(assert (=> b!2373626 (= lt!866644 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!9 lt!866642 EmptyExpr!6954 s!9460))))

(assert (=> b!2373626 e!1514702))

(declare-fun res!1007675 () Bool)

(assert (=> b!2373626 (=> (not res!1007675) (not e!1514702))))

(assert (=> b!2373626 (= res!1007675 (matchR!3071 lt!866645 (++!6914 s!9460 Nil!28049)))))

(assert (=> b!2373626 (= lt!866645 (Concat!11590 lt!866642 EmptyExpr!6954))))

(declare-fun lt!866646 () Unit!40943)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!27 (Regex!6954 Regex!6954 List!28147 List!28147) Unit!40943)

(assert (=> b!2373626 (= lt!866646 (lemmaTwoRegexMatchThenConcatMatchesConcatString!27 lt!866642 EmptyExpr!6954 s!9460 Nil!28049))))

(declare-fun res!1007673 () Bool)

(assert (=> start!232938 (=> (not res!1007673) (not e!1514704))))

(declare-fun lambda!88004 () Int)

(declare-fun forall!5588 (List!28146 Int) Bool)

(assert (=> start!232938 (= res!1007673 (forall!5588 l!9164 lambda!88004))))

(assert (=> start!232938 e!1514704))

(assert (=> start!232938 e!1514707))

(assert (=> start!232938 e!1514700))

(assert (=> start!232938 e!1514701))

(declare-fun b!2373627 () Bool)

(declare-fun tp!758417 () Bool)

(assert (=> b!2373627 (= e!1514700 tp!758417)))

(declare-fun b!2373628 () Bool)

(assert (=> b!2373628 (= e!1514704 (not e!1514705))))

(declare-fun res!1007672 () Bool)

(assert (=> b!2373628 (=> res!1007672 e!1514705)))

(assert (=> b!2373628 (= res!1007672 (not (is-Concat!11590 r!13927)))))

(declare-fun lt!866636 () Bool)

(assert (=> b!2373628 (= lt!866636 lt!866637)))

(declare-fun matchRSpec!803 (Regex!6954 List!28147) Bool)

(assert (=> b!2373628 (= lt!866637 (matchRSpec!803 r!13927 s!9460))))

(assert (=> b!2373628 (= lt!866636 (matchR!3071 r!13927 s!9460))))

(declare-fun lt!866639 () Unit!40943)

(declare-fun mainMatchTheorem!803 (Regex!6954 List!28147) Unit!40943)

(assert (=> b!2373628 (= lt!866639 (mainMatchTheorem!803 r!13927 s!9460))))

(declare-fun b!2373629 () Bool)

(assert (=> b!2373629 (= e!1514706 e!1514703)))

(declare-fun res!1007678 () Bool)

(assert (=> b!2373629 (=> res!1007678 e!1514703)))

(assert (=> b!2373629 (= res!1007678 (not (isEmpty!15985 lt!866638)))))

(declare-fun tail!3417 (List!28146) List!28146)

(assert (=> b!2373629 (= lt!866638 (tail!3417 l!9164))))

(declare-fun b!2373630 () Bool)

(declare-fun tp!758418 () Bool)

(declare-fun tp!758416 () Bool)

(assert (=> b!2373630 (= e!1514700 (and tp!758418 tp!758416))))

(declare-fun b!2373631 () Bool)

(assert (=> b!2373631 (= e!1514700 tp_is_empty!11321)))

(assert (= (and start!232938 res!1007673) b!2373624))

(assert (= (and b!2373624 res!1007676) b!2373628))

(assert (= (and b!2373628 (not res!1007672)) b!2373621))

(assert (= (and b!2373621 (not res!1007670)) b!2373616))

(assert (= (and b!2373616 (not res!1007677)) b!2373629))

(assert (= (and b!2373629 (not res!1007678)) b!2373615))

(assert (= (and b!2373615 (not res!1007679)) b!2373618))

(assert (= (and b!2373618 (not res!1007674)) b!2373626))

(assert (= (and b!2373626 res!1007675) b!2373625))

(assert (= (and b!2373626 (not res!1007671)) b!2373620))

(assert (= (and b!2373620 (not res!1007669)) b!2373617))

(assert (= (and start!232938 (is-Cons!28048 l!9164)) b!2373623))

(assert (= (and start!232938 (is-ElementMatch!6954 r!13927)) b!2373631))

(assert (= (and start!232938 (is-Concat!11590 r!13927)) b!2373619))

(assert (= (and start!232938 (is-Star!6954 r!13927)) b!2373627))

(assert (= (and start!232938 (is-Union!6954 r!13927)) b!2373630))

(assert (= (and start!232938 (is-Cons!28049 s!9460)) b!2373622))

(declare-fun m!2780411 () Bool)

(assert (=> b!2373624 m!2780411))

(declare-fun m!2780413 () Bool)

(assert (=> b!2373621 m!2780413))

(declare-fun m!2780415 () Bool)

(assert (=> b!2373621 m!2780415))

(assert (=> b!2373621 m!2780413))

(declare-fun m!2780417 () Bool)

(assert (=> b!2373621 m!2780417))

(declare-fun m!2780419 () Bool)

(assert (=> b!2373621 m!2780419))

(declare-fun m!2780421 () Bool)

(assert (=> b!2373621 m!2780421))

(declare-fun m!2780423 () Bool)

(assert (=> b!2373621 m!2780423))

(assert (=> b!2373621 m!2780417))

(declare-fun m!2780425 () Bool)

(assert (=> b!2373615 m!2780425))

(declare-fun m!2780427 () Bool)

(assert (=> b!2373629 m!2780427))

(declare-fun m!2780429 () Bool)

(assert (=> b!2373629 m!2780429))

(declare-fun m!2780431 () Bool)

(assert (=> b!2373616 m!2780431))

(declare-fun m!2780433 () Bool)

(assert (=> start!232938 m!2780433))

(declare-fun m!2780435 () Bool)

(assert (=> b!2373625 m!2780435))

(declare-fun m!2780437 () Bool)

(assert (=> b!2373620 m!2780437))

(declare-fun m!2780439 () Bool)

(assert (=> b!2373617 m!2780439))

(declare-fun m!2780441 () Bool)

(assert (=> b!2373618 m!2780441))

(declare-fun m!2780443 () Bool)

(assert (=> b!2373618 m!2780443))

(declare-fun m!2780445 () Bool)

(assert (=> b!2373626 m!2780445))

(declare-fun m!2780447 () Bool)

(assert (=> b!2373626 m!2780447))

(assert (=> b!2373626 m!2780445))

(declare-fun m!2780449 () Bool)

(assert (=> b!2373626 m!2780449))

(declare-fun m!2780451 () Bool)

(assert (=> b!2373626 m!2780451))

(declare-fun m!2780453 () Bool)

(assert (=> b!2373626 m!2780453))

(declare-fun m!2780455 () Bool)

(assert (=> b!2373626 m!2780455))

(declare-fun m!2780457 () Bool)

(assert (=> b!2373626 m!2780457))

(assert (=> b!2373626 m!2780453))

(declare-fun m!2780459 () Bool)

(assert (=> b!2373628 m!2780459))

(declare-fun m!2780461 () Bool)

(assert (=> b!2373628 m!2780461))

(declare-fun m!2780463 () Bool)

(assert (=> b!2373628 m!2780463))

(push 1)

(assert (not b!2373628))

(assert (not start!232938))

(assert (not b!2373625))

(assert (not b!2373624))

(assert (not b!2373621))

(assert tp_is_empty!11321)

(assert (not b!2373622))

(assert (not b!2373623))

(assert (not b!2373627))

(assert (not b!2373617))

(assert (not b!2373616))

(assert (not b!2373619))

(assert (not b!2373615))

(assert (not b!2373618))

(assert (not b!2373626))

(assert (not b!2373620))

(assert (not b!2373630))

(assert (not b!2373629))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!695726 () Bool)

(assert (=> d!695726 (= (isEmpty!15985 l!9164) (is-Nil!28048 l!9164))))

(assert (=> b!2373616 d!695726))

(declare-fun b!2373721 () Bool)

(declare-fun e!1514760 () Option!5497)

(declare-fun e!1514759 () Option!5497)

(assert (=> b!2373721 (= e!1514760 e!1514759)))

(declare-fun c!377307 () Bool)

(assert (=> b!2373721 (= c!377307 (is-Nil!28049 s!9460))))

(declare-fun b!2373722 () Bool)

(declare-fun e!1514758 () Bool)

(assert (=> b!2373722 (= e!1514758 (matchR!3071 EmptyExpr!6954 s!9460))))

(declare-fun b!2373723 () Bool)

(declare-fun res!1007736 () Bool)

(declare-fun e!1514761 () Bool)

(assert (=> b!2373723 (=> (not res!1007736) (not e!1514761))))

(declare-fun lt!866689 () Option!5497)

(declare-fun get!8535 (Option!5497) tuple2!27772)

(assert (=> b!2373723 (= res!1007736 (matchR!3071 lt!866642 (_1!16427 (get!8535 lt!866689))))))

(declare-fun b!2373724 () Bool)

(declare-fun res!1007737 () Bool)

(assert (=> b!2373724 (=> (not res!1007737) (not e!1514761))))

(assert (=> b!2373724 (= res!1007737 (matchR!3071 EmptyExpr!6954 (_2!16427 (get!8535 lt!866689))))))

(declare-fun b!2373725 () Bool)

(declare-fun e!1514757 () Bool)

(assert (=> b!2373725 (= e!1514757 (not (isDefined!4325 lt!866689)))))

(declare-fun b!2373726 () Bool)

(assert (=> b!2373726 (= e!1514759 None!5496)))

(declare-fun d!695728 () Bool)

(assert (=> d!695728 e!1514757))

(declare-fun res!1007739 () Bool)

(assert (=> d!695728 (=> res!1007739 e!1514757)))

(assert (=> d!695728 (= res!1007739 e!1514761)))

(declare-fun res!1007735 () Bool)

(assert (=> d!695728 (=> (not res!1007735) (not e!1514761))))

(assert (=> d!695728 (= res!1007735 (isDefined!4325 lt!866689))))

(assert (=> d!695728 (= lt!866689 e!1514760)))

(declare-fun c!377306 () Bool)

(assert (=> d!695728 (= c!377306 e!1514758)))

(declare-fun res!1007738 () Bool)

(assert (=> d!695728 (=> (not res!1007738) (not e!1514758))))

(assert (=> d!695728 (= res!1007738 (matchR!3071 lt!866642 Nil!28049))))

(assert (=> d!695728 (validRegex!2681 lt!866642)))

(assert (=> d!695728 (= (findConcatSeparation!605 lt!866642 EmptyExpr!6954 Nil!28049 s!9460 s!9460) lt!866689)))

(declare-fun b!2373727 () Bool)

(assert (=> b!2373727 (= e!1514761 (= (++!6914 (_1!16427 (get!8535 lt!866689)) (_2!16427 (get!8535 lt!866689))) s!9460))))

(declare-fun b!2373728 () Bool)

(declare-fun lt!866691 () Unit!40943)

(declare-fun lt!866690 () Unit!40943)

(assert (=> b!2373728 (= lt!866691 lt!866690)))

(assert (=> b!2373728 (= (++!6914 (++!6914 Nil!28049 (Cons!28049 (h!33450 s!9460) Nil!28049)) (t!208124 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!558 (List!28147 C!14066 List!28147 List!28147) Unit!40943)

(assert (=> b!2373728 (= lt!866690 (lemmaMoveElementToOtherListKeepsConcatEq!558 Nil!28049 (h!33450 s!9460) (t!208124 s!9460) s!9460))))

(assert (=> b!2373728 (= e!1514759 (findConcatSeparation!605 lt!866642 EmptyExpr!6954 (++!6914 Nil!28049 (Cons!28049 (h!33450 s!9460) Nil!28049)) (t!208124 s!9460) s!9460))))

(declare-fun b!2373729 () Bool)

(assert (=> b!2373729 (= e!1514760 (Some!5496 (tuple2!27773 Nil!28049 s!9460)))))

(assert (= (and d!695728 res!1007738) b!2373722))

(assert (= (and d!695728 c!377306) b!2373729))

(assert (= (and d!695728 (not c!377306)) b!2373721))

(assert (= (and b!2373721 c!377307) b!2373726))

(assert (= (and b!2373721 (not c!377307)) b!2373728))

(assert (= (and d!695728 res!1007735) b!2373723))

(assert (= (and b!2373723 res!1007736) b!2373724))

(assert (= (and b!2373724 res!1007737) b!2373727))

(assert (= (and d!695728 (not res!1007739)) b!2373725))

(declare-fun m!2780519 () Bool)

(assert (=> d!695728 m!2780519))

(declare-fun m!2780521 () Bool)

(assert (=> d!695728 m!2780521))

(assert (=> d!695728 m!2780449))

(declare-fun m!2780523 () Bool)

(assert (=> b!2373728 m!2780523))

(assert (=> b!2373728 m!2780523))

(declare-fun m!2780525 () Bool)

(assert (=> b!2373728 m!2780525))

(declare-fun m!2780527 () Bool)

(assert (=> b!2373728 m!2780527))

(assert (=> b!2373728 m!2780523))

(declare-fun m!2780529 () Bool)

(assert (=> b!2373728 m!2780529))

(declare-fun m!2780531 () Bool)

(assert (=> b!2373722 m!2780531))

(declare-fun m!2780533 () Bool)

(assert (=> b!2373723 m!2780533))

(declare-fun m!2780535 () Bool)

(assert (=> b!2373723 m!2780535))

(assert (=> b!2373725 m!2780519))

(assert (=> b!2373727 m!2780533))

(declare-fun m!2780537 () Bool)

(assert (=> b!2373727 m!2780537))

(assert (=> b!2373724 m!2780533))

(declare-fun m!2780539 () Bool)

(assert (=> b!2373724 m!2780539))

(assert (=> b!2373626 d!695728))

(declare-fun d!695730 () Bool)

(assert (=> d!695730 (matchR!3071 (Concat!11590 lt!866642 EmptyExpr!6954) (++!6914 s!9460 Nil!28049))))

(declare-fun lt!866694 () Unit!40943)

(declare-fun choose!13833 (Regex!6954 Regex!6954 List!28147 List!28147) Unit!40943)

(assert (=> d!695730 (= lt!866694 (choose!13833 lt!866642 EmptyExpr!6954 s!9460 Nil!28049))))

(declare-fun e!1514764 () Bool)

(assert (=> d!695730 e!1514764))

(declare-fun res!1007742 () Bool)

(assert (=> d!695730 (=> (not res!1007742) (not e!1514764))))

(assert (=> d!695730 (= res!1007742 (validRegex!2681 lt!866642))))

(assert (=> d!695730 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!27 lt!866642 EmptyExpr!6954 s!9460 Nil!28049) lt!866694)))

(declare-fun b!2373732 () Bool)

(assert (=> b!2373732 (= e!1514764 (validRegex!2681 EmptyExpr!6954))))

(assert (= (and d!695730 res!1007742) b!2373732))

(assert (=> d!695730 m!2780453))

(assert (=> d!695730 m!2780453))

(declare-fun m!2780541 () Bool)

(assert (=> d!695730 m!2780541))

(declare-fun m!2780543 () Bool)

(assert (=> d!695730 m!2780543))

(assert (=> d!695730 m!2780449))

(declare-fun m!2780545 () Bool)

(assert (=> b!2373732 m!2780545))

(assert (=> b!2373626 d!695730))

(declare-fun b!2373742 () Bool)

(declare-fun e!1514770 () List!28147)

(assert (=> b!2373742 (= e!1514770 (Cons!28049 (h!33450 s!9460) (++!6914 (t!208124 s!9460) Nil!28049)))))

(declare-fun b!2373743 () Bool)

(declare-fun res!1007748 () Bool)

(declare-fun e!1514769 () Bool)

(assert (=> b!2373743 (=> (not res!1007748) (not e!1514769))))

(declare-fun lt!866697 () List!28147)

(declare-fun size!22154 (List!28147) Int)

(assert (=> b!2373743 (= res!1007748 (= (size!22154 lt!866697) (+ (size!22154 s!9460) (size!22154 Nil!28049))))))

(declare-fun b!2373744 () Bool)

(assert (=> b!2373744 (= e!1514769 (or (not (= Nil!28049 Nil!28049)) (= lt!866697 s!9460)))))

(declare-fun d!695732 () Bool)

(assert (=> d!695732 e!1514769))

(declare-fun res!1007747 () Bool)

(assert (=> d!695732 (=> (not res!1007747) (not e!1514769))))

(declare-fun content!3816 (List!28147) (Set C!14066))

(assert (=> d!695732 (= res!1007747 (= (content!3816 lt!866697) (set.union (content!3816 s!9460) (content!3816 Nil!28049))))))

(assert (=> d!695732 (= lt!866697 e!1514770)))

(declare-fun c!377310 () Bool)

(assert (=> d!695732 (= c!377310 (is-Nil!28049 s!9460))))

(assert (=> d!695732 (= (++!6914 s!9460 Nil!28049) lt!866697)))

(declare-fun b!2373741 () Bool)

(assert (=> b!2373741 (= e!1514770 Nil!28049)))

(assert (= (and d!695732 c!377310) b!2373741))

(assert (= (and d!695732 (not c!377310)) b!2373742))

(assert (= (and d!695732 res!1007747) b!2373743))

(assert (= (and b!2373743 res!1007748) b!2373744))

(declare-fun m!2780547 () Bool)

(assert (=> b!2373742 m!2780547))

(declare-fun m!2780549 () Bool)

(assert (=> b!2373743 m!2780549))

(declare-fun m!2780551 () Bool)

(assert (=> b!2373743 m!2780551))

(declare-fun m!2780553 () Bool)

(assert (=> b!2373743 m!2780553))

(declare-fun m!2780555 () Bool)

(assert (=> d!695732 m!2780555))

(declare-fun m!2780557 () Bool)

(assert (=> d!695732 m!2780557))

(declare-fun m!2780559 () Bool)

(assert (=> d!695732 m!2780559))

(assert (=> b!2373626 d!695732))

(declare-fun b!2373773 () Bool)

(declare-fun e!1514786 () Bool)

(declare-fun e!1514791 () Bool)

(assert (=> b!2373773 (= e!1514786 e!1514791)))

(declare-fun res!1007770 () Bool)

(assert (=> b!2373773 (=> res!1007770 e!1514791)))

(declare-fun call!144277 () Bool)

(assert (=> b!2373773 (= res!1007770 call!144277)))

(declare-fun b!2373774 () Bool)

(declare-fun res!1007769 () Bool)

(declare-fun e!1514789 () Bool)

(assert (=> b!2373774 (=> (not res!1007769) (not e!1514789))))

(assert (=> b!2373774 (= res!1007769 (not call!144277))))

(declare-fun b!2373775 () Bool)

(declare-fun res!1007772 () Bool)

(declare-fun e!1514788 () Bool)

(assert (=> b!2373775 (=> res!1007772 e!1514788)))

(assert (=> b!2373775 (= res!1007772 e!1514789)))

(declare-fun res!1007771 () Bool)

(assert (=> b!2373775 (=> (not res!1007771) (not e!1514789))))

(declare-fun lt!866700 () Bool)

(assert (=> b!2373775 (= res!1007771 lt!866700)))

(declare-fun bm!144272 () Bool)

(declare-fun isEmpty!15987 (List!28147) Bool)

(assert (=> bm!144272 (= call!144277 (isEmpty!15987 (++!6914 s!9460 Nil!28049)))))

(declare-fun d!695734 () Bool)

(declare-fun e!1514790 () Bool)

(assert (=> d!695734 e!1514790))

(declare-fun c!377319 () Bool)

(assert (=> d!695734 (= c!377319 (is-EmptyExpr!6954 lt!866645))))

(declare-fun e!1514785 () Bool)

(assert (=> d!695734 (= lt!866700 e!1514785)))

(declare-fun c!377317 () Bool)

(assert (=> d!695734 (= c!377317 (isEmpty!15987 (++!6914 s!9460 Nil!28049)))))

(assert (=> d!695734 (validRegex!2681 lt!866645)))

(assert (=> d!695734 (= (matchR!3071 lt!866645 (++!6914 s!9460 Nil!28049)) lt!866700)))

(declare-fun b!2373776 () Bool)

(declare-fun derivativeStep!1668 (Regex!6954 C!14066) Regex!6954)

(declare-fun head!5149 (List!28147) C!14066)

(declare-fun tail!3419 (List!28147) List!28147)

(assert (=> b!2373776 (= e!1514785 (matchR!3071 (derivativeStep!1668 lt!866645 (head!5149 (++!6914 s!9460 Nil!28049))) (tail!3419 (++!6914 s!9460 Nil!28049))))))

(declare-fun b!2373777 () Bool)

(declare-fun nullable!2010 (Regex!6954) Bool)

(assert (=> b!2373777 (= e!1514785 (nullable!2010 lt!866645))))

(declare-fun b!2373778 () Bool)

(declare-fun e!1514787 () Bool)

(assert (=> b!2373778 (= e!1514790 e!1514787)))

(declare-fun c!377318 () Bool)

(assert (=> b!2373778 (= c!377318 (is-EmptyLang!6954 lt!866645))))

(declare-fun b!2373779 () Bool)

(declare-fun res!1007767 () Bool)

(assert (=> b!2373779 (=> res!1007767 e!1514791)))

(assert (=> b!2373779 (= res!1007767 (not (isEmpty!15987 (tail!3419 (++!6914 s!9460 Nil!28049)))))))

(declare-fun b!2373780 () Bool)

(declare-fun res!1007768 () Bool)

(assert (=> b!2373780 (=> (not res!1007768) (not e!1514789))))

(assert (=> b!2373780 (= res!1007768 (isEmpty!15987 (tail!3419 (++!6914 s!9460 Nil!28049))))))

(declare-fun b!2373781 () Bool)

(assert (=> b!2373781 (= e!1514789 (= (head!5149 (++!6914 s!9460 Nil!28049)) (c!377300 lt!866645)))))

(declare-fun b!2373782 () Bool)

(assert (=> b!2373782 (= e!1514790 (= lt!866700 call!144277))))

(declare-fun b!2373783 () Bool)

(assert (=> b!2373783 (= e!1514788 e!1514786)))

(declare-fun res!1007766 () Bool)

(assert (=> b!2373783 (=> (not res!1007766) (not e!1514786))))

(assert (=> b!2373783 (= res!1007766 (not lt!866700))))

(declare-fun b!2373784 () Bool)

(assert (=> b!2373784 (= e!1514791 (not (= (head!5149 (++!6914 s!9460 Nil!28049)) (c!377300 lt!866645))))))

(declare-fun b!2373785 () Bool)

(declare-fun res!1007765 () Bool)

(assert (=> b!2373785 (=> res!1007765 e!1514788)))

(assert (=> b!2373785 (= res!1007765 (not (is-ElementMatch!6954 lt!866645)))))

(assert (=> b!2373785 (= e!1514787 e!1514788)))

(declare-fun b!2373786 () Bool)

(assert (=> b!2373786 (= e!1514787 (not lt!866700))))

(assert (= (and d!695734 c!377317) b!2373777))

(assert (= (and d!695734 (not c!377317)) b!2373776))

(assert (= (and d!695734 c!377319) b!2373782))

(assert (= (and d!695734 (not c!377319)) b!2373778))

(assert (= (and b!2373778 c!377318) b!2373786))

(assert (= (and b!2373778 (not c!377318)) b!2373785))

(assert (= (and b!2373785 (not res!1007765)) b!2373775))

(assert (= (and b!2373775 res!1007771) b!2373774))

(assert (= (and b!2373774 res!1007769) b!2373780))

(assert (= (and b!2373780 res!1007768) b!2373781))

(assert (= (and b!2373775 (not res!1007772)) b!2373783))

(assert (= (and b!2373783 res!1007766) b!2373773))

(assert (= (and b!2373773 (not res!1007770)) b!2373779))

(assert (= (and b!2373779 (not res!1007767)) b!2373784))

(assert (= (or b!2373782 b!2373773 b!2373774) bm!144272))

(declare-fun m!2780561 () Bool)

(assert (=> b!2373777 m!2780561))

(assert (=> b!2373779 m!2780453))

(declare-fun m!2780563 () Bool)

(assert (=> b!2373779 m!2780563))

(assert (=> b!2373779 m!2780563))

(declare-fun m!2780565 () Bool)

(assert (=> b!2373779 m!2780565))

(assert (=> bm!144272 m!2780453))

(declare-fun m!2780567 () Bool)

(assert (=> bm!144272 m!2780567))

(assert (=> b!2373784 m!2780453))

(declare-fun m!2780569 () Bool)

(assert (=> b!2373784 m!2780569))

(assert (=> b!2373781 m!2780453))

(assert (=> b!2373781 m!2780569))

(assert (=> b!2373780 m!2780453))

(assert (=> b!2373780 m!2780563))

(assert (=> b!2373780 m!2780563))

(assert (=> b!2373780 m!2780565))

(assert (=> d!695734 m!2780453))

(assert (=> d!695734 m!2780567))

(declare-fun m!2780571 () Bool)

(assert (=> d!695734 m!2780571))

(assert (=> b!2373776 m!2780453))

(assert (=> b!2373776 m!2780569))

(assert (=> b!2373776 m!2780569))

(declare-fun m!2780573 () Bool)

(assert (=> b!2373776 m!2780573))

(assert (=> b!2373776 m!2780453))

(assert (=> b!2373776 m!2780563))

(assert (=> b!2373776 m!2780573))

(assert (=> b!2373776 m!2780563))

(declare-fun m!2780575 () Bool)

(assert (=> b!2373776 m!2780575))

(assert (=> b!2373626 d!695734))

(declare-fun d!695738 () Bool)

(assert (=> d!695738 (isDefined!4325 (findConcatSeparation!605 lt!866642 EmptyExpr!6954 Nil!28049 s!9460 s!9460))))

(declare-fun lt!866705 () Unit!40943)

(declare-fun choose!13834 (Regex!6954 Regex!6954 List!28147) Unit!40943)

(assert (=> d!695738 (= lt!866705 (choose!13834 lt!866642 EmptyExpr!6954 s!9460))))

(assert (=> d!695738 (validRegex!2681 lt!866642)))

(assert (=> d!695738 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!9 lt!866642 EmptyExpr!6954 s!9460) lt!866705)))

(declare-fun bs!461409 () Bool)

(assert (= bs!461409 d!695738))

(assert (=> bs!461409 m!2780445))

(assert (=> bs!461409 m!2780445))

(assert (=> bs!461409 m!2780447))

(declare-fun m!2780577 () Bool)

(assert (=> bs!461409 m!2780577))

(assert (=> bs!461409 m!2780449))

(assert (=> b!2373626 d!695738))

(declare-fun b!2373825 () Bool)

(declare-fun e!1514820 () Bool)

(declare-fun e!1514819 () Bool)

(assert (=> b!2373825 (= e!1514820 e!1514819)))

(declare-fun res!1007789 () Bool)

(assert (=> b!2373825 (=> (not res!1007789) (not e!1514819))))

(declare-fun call!144286 () Bool)

(assert (=> b!2373825 (= res!1007789 call!144286)))

(declare-fun b!2373826 () Bool)

(declare-fun e!1514821 () Bool)

(declare-fun e!1514823 () Bool)

(assert (=> b!2373826 (= e!1514821 e!1514823)))

(declare-fun c!377332 () Bool)

(assert (=> b!2373826 (= c!377332 (is-Star!6954 lt!866642))))

(declare-fun bm!144279 () Bool)

(declare-fun c!377333 () Bool)

(declare-fun call!144284 () Bool)

(assert (=> bm!144279 (= call!144284 (validRegex!2681 (ite c!377332 (reg!7283 lt!866642) (ite c!377333 (regOne!14421 lt!866642) (regTwo!14420 lt!866642)))))))

(declare-fun bm!144280 () Bool)

(declare-fun call!144285 () Bool)

(assert (=> bm!144280 (= call!144285 call!144284)))

(declare-fun b!2373827 () Bool)

(declare-fun e!1514822 () Bool)

(assert (=> b!2373827 (= e!1514822 call!144286)))

(declare-fun b!2373828 () Bool)

(declare-fun res!1007790 () Bool)

(assert (=> b!2373828 (=> (not res!1007790) (not e!1514822))))

(assert (=> b!2373828 (= res!1007790 call!144285)))

(declare-fun e!1514818 () Bool)

(assert (=> b!2373828 (= e!1514818 e!1514822)))

(declare-fun b!2373829 () Bool)

(declare-fun e!1514824 () Bool)

(assert (=> b!2373829 (= e!1514824 call!144284)))

(declare-fun bm!144281 () Bool)

(assert (=> bm!144281 (= call!144286 (validRegex!2681 (ite c!377333 (regTwo!14421 lt!866642) (regOne!14420 lt!866642))))))

(declare-fun b!2373830 () Bool)

(assert (=> b!2373830 (= e!1514819 call!144285)))

(declare-fun b!2373832 () Bool)

(assert (=> b!2373832 (= e!1514823 e!1514818)))

(assert (=> b!2373832 (= c!377333 (is-Union!6954 lt!866642))))

(declare-fun b!2373833 () Bool)

(declare-fun res!1007787 () Bool)

(assert (=> b!2373833 (=> res!1007787 e!1514820)))

(assert (=> b!2373833 (= res!1007787 (not (is-Concat!11590 lt!866642)))))

(assert (=> b!2373833 (= e!1514818 e!1514820)))

(declare-fun b!2373831 () Bool)

(assert (=> b!2373831 (= e!1514823 e!1514824)))

(declare-fun res!1007788 () Bool)

(assert (=> b!2373831 (= res!1007788 (not (nullable!2010 (reg!7283 lt!866642))))))

(assert (=> b!2373831 (=> (not res!1007788) (not e!1514824))))

(declare-fun d!695740 () Bool)

(declare-fun res!1007791 () Bool)

(assert (=> d!695740 (=> res!1007791 e!1514821)))

(assert (=> d!695740 (= res!1007791 (is-ElementMatch!6954 lt!866642))))

(assert (=> d!695740 (= (validRegex!2681 lt!866642) e!1514821)))

(assert (= (and d!695740 (not res!1007791)) b!2373826))

(assert (= (and b!2373826 c!377332) b!2373831))

(assert (= (and b!2373826 (not c!377332)) b!2373832))

(assert (= (and b!2373831 res!1007788) b!2373829))

(assert (= (and b!2373832 c!377333) b!2373828))

(assert (= (and b!2373832 (not c!377333)) b!2373833))

(assert (= (and b!2373828 res!1007790) b!2373827))

(assert (= (and b!2373833 (not res!1007787)) b!2373825))

(assert (= (and b!2373825 res!1007789) b!2373830))

(assert (= (or b!2373828 b!2373830) bm!144280))

(assert (= (or b!2373827 b!2373825) bm!144281))

(assert (= (or b!2373829 bm!144280) bm!144279))

(declare-fun m!2780579 () Bool)

(assert (=> bm!144279 m!2780579))

(declare-fun m!2780581 () Bool)

(assert (=> bm!144281 m!2780581))

(declare-fun m!2780583 () Bool)

(assert (=> b!2373831 m!2780583))

(assert (=> b!2373626 d!695740))

(declare-fun d!695742 () Bool)

(declare-fun isEmpty!15988 (Option!5497) Bool)

(assert (=> d!695742 (= (isDefined!4325 (findConcatSeparation!605 lt!866642 EmptyExpr!6954 Nil!28049 s!9460 s!9460)) (not (isEmpty!15988 (findConcatSeparation!605 lt!866642 EmptyExpr!6954 Nil!28049 s!9460 s!9460))))))

(declare-fun bs!461410 () Bool)

(assert (= bs!461410 d!695742))

(assert (=> bs!461410 m!2780445))

(declare-fun m!2780585 () Bool)

(assert (=> bs!461410 m!2780585))

(assert (=> b!2373626 d!695742))

(declare-fun bs!461412 () Bool)

(declare-fun b!2373886 () Bool)

(assert (= bs!461412 (and b!2373886 b!2373621)))

(declare-fun lambda!88025 () Int)

(assert (=> bs!461412 (not (= lambda!88025 lambda!88005))))

(assert (=> bs!461412 (not (= lambda!88025 lambda!88006))))

(assert (=> b!2373886 true))

(assert (=> b!2373886 true))

(declare-fun bs!461413 () Bool)

(declare-fun b!2373881 () Bool)

(assert (= bs!461413 (and b!2373881 b!2373621)))

(declare-fun lambda!88026 () Int)

(assert (=> bs!461413 (not (= lambda!88026 lambda!88005))))

(assert (=> bs!461413 (= lambda!88026 lambda!88006)))

(declare-fun bs!461414 () Bool)

(assert (= bs!461414 (and b!2373881 b!2373886)))

(assert (=> bs!461414 (not (= lambda!88026 lambda!88025))))

(assert (=> b!2373881 true))

(assert (=> b!2373881 true))

(declare-fun b!2373876 () Bool)

(declare-fun res!1007810 () Bool)

(declare-fun e!1514854 () Bool)

(assert (=> b!2373876 (=> res!1007810 e!1514854)))

(declare-fun call!144291 () Bool)

(assert (=> b!2373876 (= res!1007810 call!144291)))

(declare-fun e!1514855 () Bool)

(assert (=> b!2373876 (= e!1514855 e!1514854)))

(declare-fun call!144292 () Bool)

(declare-fun bm!144286 () Bool)

(declare-fun c!377347 () Bool)

(assert (=> bm!144286 (= call!144292 (Exists!1016 (ite c!377347 lambda!88025 lambda!88026)))))

(declare-fun b!2373877 () Bool)

(declare-fun e!1514849 () Bool)

(assert (=> b!2373877 (= e!1514849 (matchRSpec!803 (regTwo!14421 r!13927) s!9460))))

(declare-fun bm!144287 () Bool)

(assert (=> bm!144287 (= call!144291 (isEmpty!15987 s!9460))))

(declare-fun b!2373879 () Bool)

(declare-fun e!1514851 () Bool)

(assert (=> b!2373879 (= e!1514851 (= s!9460 (Cons!28049 (c!377300 r!13927) Nil!28049)))))

(declare-fun b!2373880 () Bool)

(declare-fun e!1514853 () Bool)

(assert (=> b!2373880 (= e!1514853 e!1514855)))

(assert (=> b!2373880 (= c!377347 (is-Star!6954 r!13927))))

(assert (=> b!2373881 (= e!1514855 call!144292)))

(declare-fun b!2373882 () Bool)

(declare-fun e!1514852 () Bool)

(declare-fun e!1514850 () Bool)

(assert (=> b!2373882 (= e!1514852 e!1514850)))

(declare-fun res!1007812 () Bool)

(assert (=> b!2373882 (= res!1007812 (not (is-EmptyLang!6954 r!13927)))))

(assert (=> b!2373882 (=> (not res!1007812) (not e!1514850))))

(declare-fun b!2373883 () Bool)

(assert (=> b!2373883 (= e!1514852 call!144291)))

(declare-fun b!2373884 () Bool)

(declare-fun c!377348 () Bool)

(assert (=> b!2373884 (= c!377348 (is-ElementMatch!6954 r!13927))))

(assert (=> b!2373884 (= e!1514850 e!1514851)))

(declare-fun b!2373885 () Bool)

(assert (=> b!2373885 (= e!1514853 e!1514849)))

(declare-fun res!1007811 () Bool)

(assert (=> b!2373885 (= res!1007811 (matchRSpec!803 (regOne!14421 r!13927) s!9460))))

(assert (=> b!2373885 (=> res!1007811 e!1514849)))

(assert (=> b!2373886 (= e!1514854 call!144292)))

(declare-fun d!695744 () Bool)

(declare-fun c!377346 () Bool)

(assert (=> d!695744 (= c!377346 (is-EmptyExpr!6954 r!13927))))

(assert (=> d!695744 (= (matchRSpec!803 r!13927 s!9460) e!1514852)))

(declare-fun b!2373878 () Bool)

(declare-fun c!377349 () Bool)

(assert (=> b!2373878 (= c!377349 (is-Union!6954 r!13927))))

(assert (=> b!2373878 (= e!1514851 e!1514853)))

(assert (= (and d!695744 c!377346) b!2373883))

(assert (= (and d!695744 (not c!377346)) b!2373882))

(assert (= (and b!2373882 res!1007812) b!2373884))

(assert (= (and b!2373884 c!377348) b!2373879))

(assert (= (and b!2373884 (not c!377348)) b!2373878))

(assert (= (and b!2373878 c!377349) b!2373885))

(assert (= (and b!2373878 (not c!377349)) b!2373880))

(assert (= (and b!2373885 (not res!1007811)) b!2373877))

(assert (= (and b!2373880 c!377347) b!2373876))

(assert (= (and b!2373880 (not c!377347)) b!2373881))

(assert (= (and b!2373876 (not res!1007810)) b!2373886))

(assert (= (or b!2373886 b!2373881) bm!144286))

(assert (= (or b!2373883 b!2373876) bm!144287))

(declare-fun m!2780605 () Bool)

(assert (=> bm!144286 m!2780605))

(declare-fun m!2780607 () Bool)

(assert (=> b!2373877 m!2780607))

(declare-fun m!2780609 () Bool)

(assert (=> bm!144287 m!2780609))

(declare-fun m!2780611 () Bool)

(assert (=> b!2373885 m!2780611))

(assert (=> b!2373628 d!695744))

(declare-fun b!2373889 () Bool)

(declare-fun e!1514857 () Bool)

(declare-fun e!1514862 () Bool)

(assert (=> b!2373889 (= e!1514857 e!1514862)))

(declare-fun res!1007818 () Bool)

(assert (=> b!2373889 (=> res!1007818 e!1514862)))

(declare-fun call!144293 () Bool)

(assert (=> b!2373889 (= res!1007818 call!144293)))

(declare-fun b!2373890 () Bool)

(declare-fun res!1007817 () Bool)

(declare-fun e!1514860 () Bool)

(assert (=> b!2373890 (=> (not res!1007817) (not e!1514860))))

(assert (=> b!2373890 (= res!1007817 (not call!144293))))

(declare-fun b!2373891 () Bool)

(declare-fun res!1007820 () Bool)

(declare-fun e!1514859 () Bool)

(assert (=> b!2373891 (=> res!1007820 e!1514859)))

(assert (=> b!2373891 (= res!1007820 e!1514860)))

(declare-fun res!1007819 () Bool)

(assert (=> b!2373891 (=> (not res!1007819) (not e!1514860))))

(declare-fun lt!866707 () Bool)

(assert (=> b!2373891 (= res!1007819 lt!866707)))

(declare-fun bm!144288 () Bool)

(assert (=> bm!144288 (= call!144293 (isEmpty!15987 s!9460))))

(declare-fun d!695748 () Bool)

(declare-fun e!1514861 () Bool)

(assert (=> d!695748 e!1514861))

(declare-fun c!377352 () Bool)

(assert (=> d!695748 (= c!377352 (is-EmptyExpr!6954 r!13927))))

(declare-fun e!1514856 () Bool)

(assert (=> d!695748 (= lt!866707 e!1514856)))

(declare-fun c!377350 () Bool)

(assert (=> d!695748 (= c!377350 (isEmpty!15987 s!9460))))

(assert (=> d!695748 (validRegex!2681 r!13927)))

(assert (=> d!695748 (= (matchR!3071 r!13927 s!9460) lt!866707)))

(declare-fun b!2373892 () Bool)

(assert (=> b!2373892 (= e!1514856 (matchR!3071 (derivativeStep!1668 r!13927 (head!5149 s!9460)) (tail!3419 s!9460)))))

(declare-fun b!2373893 () Bool)

(assert (=> b!2373893 (= e!1514856 (nullable!2010 r!13927))))

(declare-fun b!2373894 () Bool)

(declare-fun e!1514858 () Bool)

(assert (=> b!2373894 (= e!1514861 e!1514858)))

(declare-fun c!377351 () Bool)

(assert (=> b!2373894 (= c!377351 (is-EmptyLang!6954 r!13927))))

(declare-fun b!2373895 () Bool)

(declare-fun res!1007815 () Bool)

(assert (=> b!2373895 (=> res!1007815 e!1514862)))

(assert (=> b!2373895 (= res!1007815 (not (isEmpty!15987 (tail!3419 s!9460))))))

(declare-fun b!2373896 () Bool)

(declare-fun res!1007816 () Bool)

(assert (=> b!2373896 (=> (not res!1007816) (not e!1514860))))

(assert (=> b!2373896 (= res!1007816 (isEmpty!15987 (tail!3419 s!9460)))))

(declare-fun b!2373897 () Bool)

(assert (=> b!2373897 (= e!1514860 (= (head!5149 s!9460) (c!377300 r!13927)))))

(declare-fun b!2373898 () Bool)

(assert (=> b!2373898 (= e!1514861 (= lt!866707 call!144293))))

(declare-fun b!2373899 () Bool)

(assert (=> b!2373899 (= e!1514859 e!1514857)))

(declare-fun res!1007814 () Bool)

(assert (=> b!2373899 (=> (not res!1007814) (not e!1514857))))

(assert (=> b!2373899 (= res!1007814 (not lt!866707))))

(declare-fun b!2373900 () Bool)

(assert (=> b!2373900 (= e!1514862 (not (= (head!5149 s!9460) (c!377300 r!13927))))))

(declare-fun b!2373901 () Bool)

(declare-fun res!1007813 () Bool)

(assert (=> b!2373901 (=> res!1007813 e!1514859)))

(assert (=> b!2373901 (= res!1007813 (not (is-ElementMatch!6954 r!13927)))))

(assert (=> b!2373901 (= e!1514858 e!1514859)))

(declare-fun b!2373902 () Bool)

(assert (=> b!2373902 (= e!1514858 (not lt!866707))))

(assert (= (and d!695748 c!377350) b!2373893))

(assert (= (and d!695748 (not c!377350)) b!2373892))

(assert (= (and d!695748 c!377352) b!2373898))

(assert (= (and d!695748 (not c!377352)) b!2373894))

(assert (= (and b!2373894 c!377351) b!2373902))

(assert (= (and b!2373894 (not c!377351)) b!2373901))

(assert (= (and b!2373901 (not res!1007813)) b!2373891))

(assert (= (and b!2373891 res!1007819) b!2373890))

(assert (= (and b!2373890 res!1007817) b!2373896))

(assert (= (and b!2373896 res!1007816) b!2373897))

(assert (= (and b!2373891 (not res!1007820)) b!2373899))

(assert (= (and b!2373899 res!1007814) b!2373889))

(assert (= (and b!2373889 (not res!1007818)) b!2373895))

(assert (= (and b!2373895 (not res!1007815)) b!2373900))

(assert (= (or b!2373898 b!2373889 b!2373890) bm!144288))

(declare-fun m!2780613 () Bool)

(assert (=> b!2373893 m!2780613))

(declare-fun m!2780615 () Bool)

(assert (=> b!2373895 m!2780615))

(assert (=> b!2373895 m!2780615))

(declare-fun m!2780617 () Bool)

(assert (=> b!2373895 m!2780617))

(assert (=> bm!144288 m!2780609))

(declare-fun m!2780619 () Bool)

(assert (=> b!2373900 m!2780619))

(assert (=> b!2373897 m!2780619))

(assert (=> b!2373896 m!2780615))

(assert (=> b!2373896 m!2780615))

(assert (=> b!2373896 m!2780617))

(assert (=> d!695748 m!2780609))

(declare-fun m!2780621 () Bool)

(assert (=> d!695748 m!2780621))

(assert (=> b!2373892 m!2780619))

(assert (=> b!2373892 m!2780619))

(declare-fun m!2780623 () Bool)

(assert (=> b!2373892 m!2780623))

(assert (=> b!2373892 m!2780615))

(assert (=> b!2373892 m!2780623))

(assert (=> b!2373892 m!2780615))

(declare-fun m!2780625 () Bool)

(assert (=> b!2373892 m!2780625))

(assert (=> b!2373628 d!695748))

(declare-fun d!695750 () Bool)

(assert (=> d!695750 (= (matchR!3071 r!13927 s!9460) (matchRSpec!803 r!13927 s!9460))))

(declare-fun lt!866710 () Unit!40943)

(declare-fun choose!13835 (Regex!6954 List!28147) Unit!40943)

(assert (=> d!695750 (= lt!866710 (choose!13835 r!13927 s!9460))))

(assert (=> d!695750 (validRegex!2681 r!13927)))

(assert (=> d!695750 (= (mainMatchTheorem!803 r!13927 s!9460) lt!866710)))

(declare-fun bs!461415 () Bool)

(assert (= bs!461415 d!695750))

(assert (=> bs!461415 m!2780461))

(assert (=> bs!461415 m!2780459))

(declare-fun m!2780627 () Bool)

(assert (=> bs!461415 m!2780627))

(assert (=> bs!461415 m!2780621))

(assert (=> b!2373628 d!695750))

(declare-fun b!2373924 () Bool)

(declare-fun e!1514878 () List!28147)

(assert (=> b!2373924 (= e!1514878 (Cons!28049 (h!33450 Nil!28049) (++!6914 (t!208124 Nil!28049) s!9460)))))

(declare-fun b!2373925 () Bool)

(declare-fun res!1007828 () Bool)

(declare-fun e!1514877 () Bool)

(assert (=> b!2373925 (=> (not res!1007828) (not e!1514877))))

(declare-fun lt!866711 () List!28147)

(assert (=> b!2373925 (= res!1007828 (= (size!22154 lt!866711) (+ (size!22154 Nil!28049) (size!22154 s!9460))))))

(declare-fun b!2373926 () Bool)

(assert (=> b!2373926 (= e!1514877 (or (not (= s!9460 Nil!28049)) (= lt!866711 Nil!28049)))))

(declare-fun d!695752 () Bool)

(assert (=> d!695752 e!1514877))

(declare-fun res!1007827 () Bool)

(assert (=> d!695752 (=> (not res!1007827) (not e!1514877))))

(assert (=> d!695752 (= res!1007827 (= (content!3816 lt!866711) (set.union (content!3816 Nil!28049) (content!3816 s!9460))))))

(assert (=> d!695752 (= lt!866711 e!1514878)))

(declare-fun c!377361 () Bool)

(assert (=> d!695752 (= c!377361 (is-Nil!28049 Nil!28049))))

(assert (=> d!695752 (= (++!6914 Nil!28049 s!9460) lt!866711)))

(declare-fun b!2373923 () Bool)

(assert (=> b!2373923 (= e!1514878 s!9460)))

(assert (= (and d!695752 c!377361) b!2373923))

(assert (= (and d!695752 (not c!377361)) b!2373924))

(assert (= (and d!695752 res!1007827) b!2373925))

(assert (= (and b!2373925 res!1007828) b!2373926))

(declare-fun m!2780629 () Bool)

(assert (=> b!2373924 m!2780629))

(declare-fun m!2780631 () Bool)

(assert (=> b!2373925 m!2780631))

(assert (=> b!2373925 m!2780553))

(assert (=> b!2373925 m!2780551))

(declare-fun m!2780633 () Bool)

(assert (=> d!695752 m!2780633))

(assert (=> d!695752 m!2780559))

(assert (=> d!695752 m!2780557))

(assert (=> b!2373617 d!695752))

(declare-fun d!695754 () Bool)

(assert (=> d!695754 (= (isEmpty!15985 lt!866638) (is-Nil!28048 lt!866638))))

(assert (=> b!2373629 d!695754))

(declare-fun d!695756 () Bool)

(assert (=> d!695756 (= (tail!3417 l!9164) (t!208123 l!9164))))

(assert (=> b!2373629 d!695756))

(declare-fun b!2373933 () Bool)

(declare-fun e!1514882 () Bool)

(declare-fun e!1514887 () Bool)

(assert (=> b!2373933 (= e!1514882 e!1514887)))

(declare-fun res!1007840 () Bool)

(assert (=> b!2373933 (=> res!1007840 e!1514887)))

(declare-fun call!144294 () Bool)

(assert (=> b!2373933 (= res!1007840 call!144294)))

(declare-fun b!2373934 () Bool)

(declare-fun res!1007839 () Bool)

(declare-fun e!1514885 () Bool)

(assert (=> b!2373934 (=> (not res!1007839) (not e!1514885))))

(assert (=> b!2373934 (= res!1007839 (not call!144294))))

(declare-fun b!2373935 () Bool)

(declare-fun res!1007842 () Bool)

(declare-fun e!1514884 () Bool)

(assert (=> b!2373935 (=> res!1007842 e!1514884)))

(assert (=> b!2373935 (= res!1007842 e!1514885)))

(declare-fun res!1007841 () Bool)

(assert (=> b!2373935 (=> (not res!1007841) (not e!1514885))))

(declare-fun lt!866712 () Bool)

(assert (=> b!2373935 (= res!1007841 lt!866712)))

(declare-fun bm!144289 () Bool)

(assert (=> bm!144289 (= call!144294 (isEmpty!15987 s!9460))))

(declare-fun d!695758 () Bool)

(declare-fun e!1514886 () Bool)

(assert (=> d!695758 e!1514886))

(declare-fun c!377364 () Bool)

(assert (=> d!695758 (= c!377364 (is-EmptyExpr!6954 lt!866642))))

(declare-fun e!1514881 () Bool)

(assert (=> d!695758 (= lt!866712 e!1514881)))

(declare-fun c!377362 () Bool)

(assert (=> d!695758 (= c!377362 (isEmpty!15987 s!9460))))

(assert (=> d!695758 (validRegex!2681 lt!866642)))

(assert (=> d!695758 (= (matchR!3071 lt!866642 s!9460) lt!866712)))

(declare-fun b!2373936 () Bool)

(assert (=> b!2373936 (= e!1514881 (matchR!3071 (derivativeStep!1668 lt!866642 (head!5149 s!9460)) (tail!3419 s!9460)))))

(declare-fun b!2373937 () Bool)

(assert (=> b!2373937 (= e!1514881 (nullable!2010 lt!866642))))

(declare-fun b!2373938 () Bool)

(declare-fun e!1514883 () Bool)

(assert (=> b!2373938 (= e!1514886 e!1514883)))

(declare-fun c!377363 () Bool)

(assert (=> b!2373938 (= c!377363 (is-EmptyLang!6954 lt!866642))))

(declare-fun b!2373939 () Bool)

(declare-fun res!1007837 () Bool)

(assert (=> b!2373939 (=> res!1007837 e!1514887)))

(assert (=> b!2373939 (= res!1007837 (not (isEmpty!15987 (tail!3419 s!9460))))))

(declare-fun b!2373940 () Bool)

(declare-fun res!1007838 () Bool)

(assert (=> b!2373940 (=> (not res!1007838) (not e!1514885))))

(assert (=> b!2373940 (= res!1007838 (isEmpty!15987 (tail!3419 s!9460)))))

(declare-fun b!2373941 () Bool)

(assert (=> b!2373941 (= e!1514885 (= (head!5149 s!9460) (c!377300 lt!866642)))))

(declare-fun b!2373942 () Bool)

(assert (=> b!2373942 (= e!1514886 (= lt!866712 call!144294))))

(declare-fun b!2373943 () Bool)

(assert (=> b!2373943 (= e!1514884 e!1514882)))

(declare-fun res!1007836 () Bool)

(assert (=> b!2373943 (=> (not res!1007836) (not e!1514882))))

(assert (=> b!2373943 (= res!1007836 (not lt!866712))))

(declare-fun b!2373944 () Bool)

(assert (=> b!2373944 (= e!1514887 (not (= (head!5149 s!9460) (c!377300 lt!866642))))))

(declare-fun b!2373945 () Bool)

(declare-fun res!1007835 () Bool)

(assert (=> b!2373945 (=> res!1007835 e!1514884)))

(assert (=> b!2373945 (= res!1007835 (not (is-ElementMatch!6954 lt!866642)))))

(assert (=> b!2373945 (= e!1514883 e!1514884)))

(declare-fun b!2373946 () Bool)

(assert (=> b!2373946 (= e!1514883 (not lt!866712))))

(assert (= (and d!695758 c!377362) b!2373937))

(assert (= (and d!695758 (not c!377362)) b!2373936))

(assert (= (and d!695758 c!377364) b!2373942))

(assert (= (and d!695758 (not c!377364)) b!2373938))

(assert (= (and b!2373938 c!377363) b!2373946))

(assert (= (and b!2373938 (not c!377363)) b!2373945))

(assert (= (and b!2373945 (not res!1007835)) b!2373935))

(assert (= (and b!2373935 res!1007841) b!2373934))

(assert (= (and b!2373934 res!1007839) b!2373940))

(assert (= (and b!2373940 res!1007838) b!2373941))

(assert (= (and b!2373935 (not res!1007842)) b!2373943))

(assert (= (and b!2373943 res!1007836) b!2373933))

(assert (= (and b!2373933 (not res!1007840)) b!2373939))

(assert (= (and b!2373939 (not res!1007837)) b!2373944))

(assert (= (or b!2373942 b!2373933 b!2373934) bm!144289))

(declare-fun m!2780635 () Bool)

(assert (=> b!2373937 m!2780635))

(assert (=> b!2373939 m!2780615))

(assert (=> b!2373939 m!2780615))

(assert (=> b!2373939 m!2780617))

(assert (=> bm!144289 m!2780609))

(assert (=> b!2373944 m!2780619))

(assert (=> b!2373941 m!2780619))

(assert (=> b!2373940 m!2780615))

(assert (=> b!2373940 m!2780615))

(assert (=> b!2373940 m!2780617))

(assert (=> d!695758 m!2780609))

(assert (=> d!695758 m!2780449))

(assert (=> b!2373936 m!2780619))

(assert (=> b!2373936 m!2780619))

(declare-fun m!2780637 () Bool)

(assert (=> b!2373936 m!2780637))

(assert (=> b!2373936 m!2780615))

(assert (=> b!2373936 m!2780637))

(assert (=> b!2373936 m!2780615))

(declare-fun m!2780639 () Bool)

(assert (=> b!2373936 m!2780639))

(assert (=> b!2373618 d!695758))

(declare-fun d!695760 () Bool)

(assert (=> d!695760 (= (head!5147 l!9164) (h!33449 l!9164))))

(assert (=> b!2373618 d!695760))

(declare-fun b!2373947 () Bool)

(declare-fun e!1514890 () Bool)

(declare-fun e!1514889 () Bool)

(assert (=> b!2373947 (= e!1514890 e!1514889)))

(declare-fun res!1007845 () Bool)

(assert (=> b!2373947 (=> (not res!1007845) (not e!1514889))))

(declare-fun call!144297 () Bool)

(assert (=> b!2373947 (= res!1007845 call!144297)))

(declare-fun b!2373948 () Bool)

(declare-fun e!1514891 () Bool)

(declare-fun e!1514893 () Bool)

(assert (=> b!2373948 (= e!1514891 e!1514893)))

(declare-fun c!377365 () Bool)

(assert (=> b!2373948 (= c!377365 (is-Star!6954 lt!866635))))

(declare-fun c!377366 () Bool)

(declare-fun bm!144290 () Bool)

(declare-fun call!144295 () Bool)

(assert (=> bm!144290 (= call!144295 (validRegex!2681 (ite c!377365 (reg!7283 lt!866635) (ite c!377366 (regOne!14421 lt!866635) (regTwo!14420 lt!866635)))))))

(declare-fun bm!144291 () Bool)

(declare-fun call!144296 () Bool)

(assert (=> bm!144291 (= call!144296 call!144295)))

(declare-fun b!2373949 () Bool)

(declare-fun e!1514892 () Bool)

(assert (=> b!2373949 (= e!1514892 call!144297)))

(declare-fun b!2373950 () Bool)

(declare-fun res!1007846 () Bool)

(assert (=> b!2373950 (=> (not res!1007846) (not e!1514892))))

(assert (=> b!2373950 (= res!1007846 call!144296)))

(declare-fun e!1514888 () Bool)

(assert (=> b!2373950 (= e!1514888 e!1514892)))

(declare-fun b!2373951 () Bool)

(declare-fun e!1514894 () Bool)

(assert (=> b!2373951 (= e!1514894 call!144295)))

(declare-fun bm!144292 () Bool)

(assert (=> bm!144292 (= call!144297 (validRegex!2681 (ite c!377366 (regTwo!14421 lt!866635) (regOne!14420 lt!866635))))))

(declare-fun b!2373952 () Bool)

(assert (=> b!2373952 (= e!1514889 call!144296)))

(declare-fun b!2373954 () Bool)

(assert (=> b!2373954 (= e!1514893 e!1514888)))

(assert (=> b!2373954 (= c!377366 (is-Union!6954 lt!866635))))

(declare-fun b!2373955 () Bool)

(declare-fun res!1007843 () Bool)

(assert (=> b!2373955 (=> res!1007843 e!1514890)))

(assert (=> b!2373955 (= res!1007843 (not (is-Concat!11590 lt!866635)))))

(assert (=> b!2373955 (= e!1514888 e!1514890)))

(declare-fun b!2373953 () Bool)

(assert (=> b!2373953 (= e!1514893 e!1514894)))

(declare-fun res!1007844 () Bool)

(assert (=> b!2373953 (= res!1007844 (not (nullable!2010 (reg!7283 lt!866635))))))

(assert (=> b!2373953 (=> (not res!1007844) (not e!1514894))))

(declare-fun d!695762 () Bool)

(declare-fun res!1007847 () Bool)

(assert (=> d!695762 (=> res!1007847 e!1514891)))

(assert (=> d!695762 (= res!1007847 (is-ElementMatch!6954 lt!866635))))

(assert (=> d!695762 (= (validRegex!2681 lt!866635) e!1514891)))

(assert (= (and d!695762 (not res!1007847)) b!2373948))

(assert (= (and b!2373948 c!377365) b!2373953))

(assert (= (and b!2373948 (not c!377365)) b!2373954))

(assert (= (and b!2373953 res!1007844) b!2373951))

(assert (= (and b!2373954 c!377366) b!2373950))

(assert (= (and b!2373954 (not c!377366)) b!2373955))

(assert (= (and b!2373950 res!1007846) b!2373949))

(assert (= (and b!2373955 (not res!1007843)) b!2373947))

(assert (= (and b!2373947 res!1007845) b!2373952))

(assert (= (or b!2373950 b!2373952) bm!144291))

(assert (= (or b!2373949 b!2373947) bm!144292))

(assert (= (or b!2373951 bm!144291) bm!144290))

(declare-fun m!2780641 () Bool)

(assert (=> bm!144290 m!2780641))

(declare-fun m!2780643 () Bool)

(assert (=> bm!144292 m!2780643))

(declare-fun m!2780645 () Bool)

(assert (=> b!2373953 m!2780645))

(assert (=> b!2373620 d!695762))

(declare-fun d!695764 () Bool)

(assert (=> d!695764 (= (isDefined!4325 (findConcatSeparation!605 (regOne!14420 r!13927) (regTwo!14420 r!13927) Nil!28049 s!9460 s!9460)) (not (isEmpty!15988 (findConcatSeparation!605 (regOne!14420 r!13927) (regTwo!14420 r!13927) Nil!28049 s!9460 s!9460))))))

(declare-fun bs!461416 () Bool)

(assert (= bs!461416 d!695764))

(assert (=> bs!461416 m!2780413))

(declare-fun m!2780647 () Bool)

(assert (=> bs!461416 m!2780647))

(assert (=> b!2373621 d!695764))

(declare-fun bs!461417 () Bool)

(declare-fun d!695766 () Bool)

(assert (= bs!461417 (and d!695766 b!2373621)))

(declare-fun lambda!88033 () Int)

(assert (=> bs!461417 (= lambda!88033 lambda!88005)))

(assert (=> bs!461417 (not (= lambda!88033 lambda!88006))))

(declare-fun bs!461418 () Bool)

(assert (= bs!461418 (and d!695766 b!2373886)))

(assert (=> bs!461418 (not (= lambda!88033 lambda!88025))))

(declare-fun bs!461419 () Bool)

(assert (= bs!461419 (and d!695766 b!2373881)))

(assert (=> bs!461419 (not (= lambda!88033 lambda!88026))))

(assert (=> d!695766 true))

(assert (=> d!695766 true))

(assert (=> d!695766 true))

(assert (=> d!695766 (= (isDefined!4325 (findConcatSeparation!605 (regOne!14420 r!13927) (regTwo!14420 r!13927) Nil!28049 s!9460 s!9460)) (Exists!1016 lambda!88033))))

(declare-fun lt!866715 () Unit!40943)

(declare-fun choose!13836 (Regex!6954 Regex!6954 List!28147) Unit!40943)

(assert (=> d!695766 (= lt!866715 (choose!13836 (regOne!14420 r!13927) (regTwo!14420 r!13927) s!9460))))

(assert (=> d!695766 (validRegex!2681 (regOne!14420 r!13927))))

(assert (=> d!695766 (= (lemmaFindConcatSeparationEquivalentToExists!605 (regOne!14420 r!13927) (regTwo!14420 r!13927) s!9460) lt!866715)))

(declare-fun bs!461420 () Bool)

(assert (= bs!461420 d!695766))

(declare-fun m!2780649 () Bool)

(assert (=> bs!461420 m!2780649))

(declare-fun m!2780651 () Bool)

(assert (=> bs!461420 m!2780651))

(declare-fun m!2780653 () Bool)

(assert (=> bs!461420 m!2780653))

(assert (=> bs!461420 m!2780413))

(assert (=> bs!461420 m!2780415))

(assert (=> bs!461420 m!2780413))

(assert (=> b!2373621 d!695766))

(declare-fun d!695768 () Bool)

(declare-fun choose!13837 (Int) Bool)

(assert (=> d!695768 (= (Exists!1016 lambda!88005) (choose!13837 lambda!88005))))

(declare-fun bs!461421 () Bool)

(assert (= bs!461421 d!695768))

(declare-fun m!2780655 () Bool)

(assert (=> bs!461421 m!2780655))

(assert (=> b!2373621 d!695768))

(declare-fun bs!461423 () Bool)

(declare-fun d!695770 () Bool)

(assert (= bs!461423 (and d!695770 b!2373886)))

(declare-fun lambda!88039 () Int)

(assert (=> bs!461423 (not (= lambda!88039 lambda!88025))))

(declare-fun bs!461424 () Bool)

(assert (= bs!461424 (and d!695770 b!2373881)))

(assert (=> bs!461424 (not (= lambda!88039 lambda!88026))))

(declare-fun bs!461425 () Bool)

(assert (= bs!461425 (and d!695770 b!2373621)))

(assert (=> bs!461425 (= lambda!88039 lambda!88005)))

(declare-fun bs!461426 () Bool)

(assert (= bs!461426 (and d!695770 d!695766)))

(assert (=> bs!461426 (= lambda!88039 lambda!88033)))

(assert (=> bs!461425 (not (= lambda!88039 lambda!88006))))

(assert (=> d!695770 true))

(assert (=> d!695770 true))

(assert (=> d!695770 true))

(declare-fun lambda!88041 () Int)

(assert (=> bs!461423 (not (= lambda!88041 lambda!88025))))

(assert (=> bs!461424 (= lambda!88041 lambda!88026)))

(assert (=> bs!461425 (not (= lambda!88041 lambda!88005))))

(declare-fun bs!461428 () Bool)

(assert (= bs!461428 d!695770))

(assert (=> bs!461428 (not (= lambda!88041 lambda!88039))))

(assert (=> bs!461426 (not (= lambda!88041 lambda!88033))))

(assert (=> bs!461425 (= lambda!88041 lambda!88006)))

(assert (=> d!695770 true))

(assert (=> d!695770 true))

(assert (=> d!695770 true))

(assert (=> d!695770 (= (Exists!1016 lambda!88039) (Exists!1016 lambda!88041))))

(declare-fun lt!866718 () Unit!40943)

(declare-fun choose!13838 (Regex!6954 Regex!6954 List!28147) Unit!40943)

(assert (=> d!695770 (= lt!866718 (choose!13838 (regOne!14420 r!13927) (regTwo!14420 r!13927) s!9460))))

(assert (=> d!695770 (validRegex!2681 (regOne!14420 r!13927))))

(assert (=> d!695770 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!355 (regOne!14420 r!13927) (regTwo!14420 r!13927) s!9460) lt!866718)))

(declare-fun m!2780657 () Bool)

(assert (=> bs!461428 m!2780657))

(declare-fun m!2780659 () Bool)

(assert (=> bs!461428 m!2780659))

(declare-fun m!2780661 () Bool)

(assert (=> bs!461428 m!2780661))

(assert (=> bs!461428 m!2780651))

(assert (=> b!2373621 d!695770))

(declare-fun b!2373983 () Bool)

(declare-fun e!1514913 () Option!5497)

(declare-fun e!1514912 () Option!5497)

(assert (=> b!2373983 (= e!1514913 e!1514912)))

(declare-fun c!377372 () Bool)

(assert (=> b!2373983 (= c!377372 (is-Nil!28049 s!9460))))

(declare-fun b!2373984 () Bool)

(declare-fun e!1514911 () Bool)

(assert (=> b!2373984 (= e!1514911 (matchR!3071 (regTwo!14420 r!13927) s!9460))))

(declare-fun b!2373985 () Bool)

(declare-fun res!1007868 () Bool)

(declare-fun e!1514914 () Bool)

(assert (=> b!2373985 (=> (not res!1007868) (not e!1514914))))

(declare-fun lt!866719 () Option!5497)

(assert (=> b!2373985 (= res!1007868 (matchR!3071 (regOne!14420 r!13927) (_1!16427 (get!8535 lt!866719))))))

(declare-fun b!2373986 () Bool)

(declare-fun res!1007869 () Bool)

(assert (=> b!2373986 (=> (not res!1007869) (not e!1514914))))

(assert (=> b!2373986 (= res!1007869 (matchR!3071 (regTwo!14420 r!13927) (_2!16427 (get!8535 lt!866719))))))

(declare-fun b!2373987 () Bool)

(declare-fun e!1514910 () Bool)

(assert (=> b!2373987 (= e!1514910 (not (isDefined!4325 lt!866719)))))

(declare-fun b!2373988 () Bool)

(assert (=> b!2373988 (= e!1514912 None!5496)))

(declare-fun d!695772 () Bool)

(assert (=> d!695772 e!1514910))

(declare-fun res!1007871 () Bool)

(assert (=> d!695772 (=> res!1007871 e!1514910)))

(assert (=> d!695772 (= res!1007871 e!1514914)))

(declare-fun res!1007867 () Bool)

(assert (=> d!695772 (=> (not res!1007867) (not e!1514914))))

(assert (=> d!695772 (= res!1007867 (isDefined!4325 lt!866719))))

(assert (=> d!695772 (= lt!866719 e!1514913)))

(declare-fun c!377371 () Bool)

(assert (=> d!695772 (= c!377371 e!1514911)))

(declare-fun res!1007870 () Bool)

(assert (=> d!695772 (=> (not res!1007870) (not e!1514911))))

(assert (=> d!695772 (= res!1007870 (matchR!3071 (regOne!14420 r!13927) Nil!28049))))

(assert (=> d!695772 (validRegex!2681 (regOne!14420 r!13927))))

(assert (=> d!695772 (= (findConcatSeparation!605 (regOne!14420 r!13927) (regTwo!14420 r!13927) Nil!28049 s!9460 s!9460) lt!866719)))

(declare-fun b!2373989 () Bool)

(assert (=> b!2373989 (= e!1514914 (= (++!6914 (_1!16427 (get!8535 lt!866719)) (_2!16427 (get!8535 lt!866719))) s!9460))))

(declare-fun b!2373990 () Bool)

(declare-fun lt!866721 () Unit!40943)

(declare-fun lt!866720 () Unit!40943)

(assert (=> b!2373990 (= lt!866721 lt!866720)))

(assert (=> b!2373990 (= (++!6914 (++!6914 Nil!28049 (Cons!28049 (h!33450 s!9460) Nil!28049)) (t!208124 s!9460)) s!9460)))

(assert (=> b!2373990 (= lt!866720 (lemmaMoveElementToOtherListKeepsConcatEq!558 Nil!28049 (h!33450 s!9460) (t!208124 s!9460) s!9460))))

(assert (=> b!2373990 (= e!1514912 (findConcatSeparation!605 (regOne!14420 r!13927) (regTwo!14420 r!13927) (++!6914 Nil!28049 (Cons!28049 (h!33450 s!9460) Nil!28049)) (t!208124 s!9460) s!9460))))

(declare-fun b!2373991 () Bool)

(assert (=> b!2373991 (= e!1514913 (Some!5496 (tuple2!27773 Nil!28049 s!9460)))))

(assert (= (and d!695772 res!1007870) b!2373984))

(assert (= (and d!695772 c!377371) b!2373991))

(assert (= (and d!695772 (not c!377371)) b!2373983))

(assert (= (and b!2373983 c!377372) b!2373988))

(assert (= (and b!2373983 (not c!377372)) b!2373990))

(assert (= (and d!695772 res!1007867) b!2373985))

(assert (= (and b!2373985 res!1007868) b!2373986))

(assert (= (and b!2373986 res!1007869) b!2373989))

(assert (= (and d!695772 (not res!1007871)) b!2373987))

(declare-fun m!2780663 () Bool)

(assert (=> d!695772 m!2780663))

(declare-fun m!2780665 () Bool)

(assert (=> d!695772 m!2780665))

(assert (=> d!695772 m!2780651))

(assert (=> b!2373990 m!2780523))

(assert (=> b!2373990 m!2780523))

(assert (=> b!2373990 m!2780525))

(assert (=> b!2373990 m!2780527))

(assert (=> b!2373990 m!2780523))

(declare-fun m!2780673 () Bool)

(assert (=> b!2373990 m!2780673))

(declare-fun m!2780677 () Bool)

(assert (=> b!2373984 m!2780677))

(declare-fun m!2780679 () Bool)

(assert (=> b!2373985 m!2780679))

(declare-fun m!2780681 () Bool)

(assert (=> b!2373985 m!2780681))

(assert (=> b!2373987 m!2780663))

(assert (=> b!2373989 m!2780679))

(declare-fun m!2780683 () Bool)

(assert (=> b!2373989 m!2780683))

(assert (=> b!2373986 m!2780679))

(declare-fun m!2780685 () Bool)

(assert (=> b!2373986 m!2780685))

(assert (=> b!2373621 d!695772))

(declare-fun d!695776 () Bool)

(assert (=> d!695776 (= (Exists!1016 lambda!88006) (choose!13837 lambda!88006))))

(declare-fun bs!461430 () Bool)

(assert (= bs!461430 d!695776))

(declare-fun m!2780687 () Bool)

(assert (=> bs!461430 m!2780687))

(assert (=> b!2373621 d!695776))

(declare-fun bs!461431 () Bool)

(declare-fun d!695778 () Bool)

(assert (= bs!461431 (and d!695778 start!232938)))

(declare-fun lambda!88044 () Int)

(assert (=> bs!461431 (= lambda!88044 lambda!88004)))

(declare-fun b!2374012 () Bool)

(declare-fun e!1514929 () Bool)

(declare-fun lt!866724 () Regex!6954)

(assert (=> b!2374012 (= e!1514929 (= lt!866724 (head!5147 l!9164)))))

(declare-fun b!2374013 () Bool)

(declare-fun isConcat!32 (Regex!6954) Bool)

(assert (=> b!2374013 (= e!1514929 (isConcat!32 lt!866724))))

(declare-fun b!2374014 () Bool)

(declare-fun e!1514928 () Bool)

(assert (=> b!2374014 (= e!1514928 e!1514929)))

(declare-fun c!377382 () Bool)

(assert (=> b!2374014 (= c!377382 (isEmpty!15985 (tail!3417 l!9164)))))

(declare-fun b!2374015 () Bool)

(declare-fun e!1514930 () Bool)

(assert (=> b!2374015 (= e!1514930 e!1514928)))

(declare-fun c!377383 () Bool)

(assert (=> b!2374015 (= c!377383 (isEmpty!15985 l!9164))))

(declare-fun b!2374016 () Bool)

(declare-fun e!1514932 () Regex!6954)

(assert (=> b!2374016 (= e!1514932 (h!33449 l!9164))))

(assert (=> d!695778 e!1514930))

(declare-fun res!1007877 () Bool)

(assert (=> d!695778 (=> (not res!1007877) (not e!1514930))))

(assert (=> d!695778 (= res!1007877 (validRegex!2681 lt!866724))))

(assert (=> d!695778 (= lt!866724 e!1514932)))

(declare-fun c!377381 () Bool)

(declare-fun e!1514927 () Bool)

(assert (=> d!695778 (= c!377381 e!1514927)))

(declare-fun res!1007876 () Bool)

(assert (=> d!695778 (=> (not res!1007876) (not e!1514927))))

(assert (=> d!695778 (= res!1007876 (is-Cons!28048 l!9164))))

(assert (=> d!695778 (forall!5588 l!9164 lambda!88044)))

(assert (=> d!695778 (= (generalisedConcat!55 l!9164) lt!866724)))

(declare-fun b!2374017 () Bool)

(declare-fun e!1514931 () Regex!6954)

(assert (=> b!2374017 (= e!1514932 e!1514931)))

(declare-fun c!377384 () Bool)

(assert (=> b!2374017 (= c!377384 (is-Cons!28048 l!9164))))

(declare-fun b!2374018 () Bool)

(declare-fun isEmptyExpr!32 (Regex!6954) Bool)

(assert (=> b!2374018 (= e!1514928 (isEmptyExpr!32 lt!866724))))

(declare-fun b!2374019 () Bool)

(assert (=> b!2374019 (= e!1514931 EmptyExpr!6954)))

(declare-fun b!2374020 () Bool)

(assert (=> b!2374020 (= e!1514931 (Concat!11590 (h!33449 l!9164) (generalisedConcat!55 (t!208123 l!9164))))))

(declare-fun b!2374021 () Bool)

(assert (=> b!2374021 (= e!1514927 (isEmpty!15985 (t!208123 l!9164)))))

(assert (= (and d!695778 res!1007876) b!2374021))

(assert (= (and d!695778 c!377381) b!2374016))

(assert (= (and d!695778 (not c!377381)) b!2374017))

(assert (= (and b!2374017 c!377384) b!2374020))

(assert (= (and b!2374017 (not c!377384)) b!2374019))

(assert (= (and d!695778 res!1007877) b!2374015))

(assert (= (and b!2374015 c!377383) b!2374018))

(assert (= (and b!2374015 (not c!377383)) b!2374014))

(assert (= (and b!2374014 c!377382) b!2374012))

(assert (= (and b!2374014 (not c!377382)) b!2374013))

(declare-fun m!2780689 () Bool)

(assert (=> b!2374021 m!2780689))

(declare-fun m!2780691 () Bool)

(assert (=> b!2374013 m!2780691))

(assert (=> b!2374014 m!2780429))

(assert (=> b!2374014 m!2780429))

(declare-fun m!2780693 () Bool)

(assert (=> b!2374014 m!2780693))

(declare-fun m!2780695 () Bool)

(assert (=> b!2374020 m!2780695))

(declare-fun m!2780697 () Bool)

(assert (=> d!695778 m!2780697))

(declare-fun m!2780699 () Bool)

(assert (=> d!695778 m!2780699))

(assert (=> b!2374015 m!2780431))

(assert (=> b!2374012 m!2780443))

(declare-fun m!2780701 () Bool)

(assert (=> b!2374018 m!2780701))

(assert (=> b!2373624 d!695778))

(declare-fun d!695780 () Bool)

(declare-fun res!1007882 () Bool)

(declare-fun e!1514937 () Bool)

(assert (=> d!695780 (=> res!1007882 e!1514937)))

(assert (=> d!695780 (= res!1007882 (is-Nil!28048 l!9164))))

(assert (=> d!695780 (= (forall!5588 l!9164 lambda!88004) e!1514937)))

(declare-fun b!2374026 () Bool)

(declare-fun e!1514938 () Bool)

(assert (=> b!2374026 (= e!1514937 e!1514938)))

(declare-fun res!1007883 () Bool)

(assert (=> b!2374026 (=> (not res!1007883) (not e!1514938))))

(declare-fun dynLambda!12077 (Int Regex!6954) Bool)

(assert (=> b!2374026 (= res!1007883 (dynLambda!12077 lambda!88004 (h!33449 l!9164)))))

(declare-fun b!2374027 () Bool)

(assert (=> b!2374027 (= e!1514938 (forall!5588 (t!208123 l!9164) lambda!88004))))

(assert (= (and d!695780 (not res!1007882)) b!2374026))

(assert (= (and b!2374026 res!1007883) b!2374027))

(declare-fun b_lambda!73971 () Bool)

(assert (=> (not b_lambda!73971) (not b!2374026)))

(declare-fun m!2780703 () Bool)

(assert (=> b!2374026 m!2780703))

(declare-fun m!2780705 () Bool)

(assert (=> b!2374027 m!2780705))

(assert (=> start!232938 d!695780))

(declare-fun bs!461432 () Bool)

(declare-fun d!695782 () Bool)

(assert (= bs!461432 (and d!695782 start!232938)))

(declare-fun lambda!88045 () Int)

(assert (=> bs!461432 (= lambda!88045 lambda!88004)))

(declare-fun bs!461433 () Bool)

(assert (= bs!461433 (and d!695782 d!695778)))

(assert (=> bs!461433 (= lambda!88045 lambda!88044)))

(declare-fun b!2374028 () Bool)

(declare-fun e!1514941 () Bool)

(declare-fun lt!866725 () Regex!6954)

(assert (=> b!2374028 (= e!1514941 (= lt!866725 (head!5147 lt!866638)))))

(declare-fun b!2374029 () Bool)

(assert (=> b!2374029 (= e!1514941 (isConcat!32 lt!866725))))

(declare-fun b!2374030 () Bool)

(declare-fun e!1514940 () Bool)

(assert (=> b!2374030 (= e!1514940 e!1514941)))

(declare-fun c!377386 () Bool)

(assert (=> b!2374030 (= c!377386 (isEmpty!15985 (tail!3417 lt!866638)))))

(declare-fun b!2374031 () Bool)

(declare-fun e!1514942 () Bool)

(assert (=> b!2374031 (= e!1514942 e!1514940)))

(declare-fun c!377387 () Bool)

(assert (=> b!2374031 (= c!377387 (isEmpty!15985 lt!866638))))

(declare-fun b!2374032 () Bool)

(declare-fun e!1514944 () Regex!6954)

(assert (=> b!2374032 (= e!1514944 (h!33449 lt!866638))))

(assert (=> d!695782 e!1514942))

(declare-fun res!1007885 () Bool)

(assert (=> d!695782 (=> (not res!1007885) (not e!1514942))))

(assert (=> d!695782 (= res!1007885 (validRegex!2681 lt!866725))))

(assert (=> d!695782 (= lt!866725 e!1514944)))

(declare-fun c!377385 () Bool)

(declare-fun e!1514939 () Bool)

(assert (=> d!695782 (= c!377385 e!1514939)))

(declare-fun res!1007884 () Bool)

(assert (=> d!695782 (=> (not res!1007884) (not e!1514939))))

(assert (=> d!695782 (= res!1007884 (is-Cons!28048 lt!866638))))

(assert (=> d!695782 (forall!5588 lt!866638 lambda!88045)))

(assert (=> d!695782 (= (generalisedConcat!55 lt!866638) lt!866725)))

(declare-fun b!2374033 () Bool)

(declare-fun e!1514943 () Regex!6954)

(assert (=> b!2374033 (= e!1514944 e!1514943)))

(declare-fun c!377388 () Bool)

(assert (=> b!2374033 (= c!377388 (is-Cons!28048 lt!866638))))

(declare-fun b!2374034 () Bool)

(assert (=> b!2374034 (= e!1514940 (isEmptyExpr!32 lt!866725))))

(declare-fun b!2374035 () Bool)

(assert (=> b!2374035 (= e!1514943 EmptyExpr!6954)))

(declare-fun b!2374036 () Bool)

(assert (=> b!2374036 (= e!1514943 (Concat!11590 (h!33449 lt!866638) (generalisedConcat!55 (t!208123 lt!866638))))))

(declare-fun b!2374037 () Bool)

(assert (=> b!2374037 (= e!1514939 (isEmpty!15985 (t!208123 lt!866638)))))

(assert (= (and d!695782 res!1007884) b!2374037))

(assert (= (and d!695782 c!377385) b!2374032))

(assert (= (and d!695782 (not c!377385)) b!2374033))

(assert (= (and b!2374033 c!377388) b!2374036))

(assert (= (and b!2374033 (not c!377388)) b!2374035))

(assert (= (and d!695782 res!1007885) b!2374031))

(assert (= (and b!2374031 c!377387) b!2374034))

(assert (= (and b!2374031 (not c!377387)) b!2374030))

(assert (= (and b!2374030 c!377386) b!2374028))

(assert (= (and b!2374030 (not c!377386)) b!2374029))

(declare-fun m!2780707 () Bool)

(assert (=> b!2374037 m!2780707))

(declare-fun m!2780709 () Bool)

(assert (=> b!2374029 m!2780709))

(declare-fun m!2780711 () Bool)

(assert (=> b!2374030 m!2780711))

(assert (=> b!2374030 m!2780711))

(declare-fun m!2780713 () Bool)

(assert (=> b!2374030 m!2780713))

(declare-fun m!2780715 () Bool)

(assert (=> b!2374036 m!2780715))

(declare-fun m!2780717 () Bool)

(assert (=> d!695782 m!2780717))

(declare-fun m!2780719 () Bool)

(assert (=> d!695782 m!2780719))

(assert (=> b!2374031 m!2780427))

(declare-fun m!2780721 () Bool)

(assert (=> b!2374028 m!2780721))

(declare-fun m!2780723 () Bool)

(assert (=> b!2374034 m!2780723))

(assert (=> b!2373615 d!695782))

(declare-fun b!2374042 () Bool)

(declare-fun e!1514948 () Bool)

(declare-fun e!1514953 () Bool)

(assert (=> b!2374042 (= e!1514948 e!1514953)))

(declare-fun res!1007891 () Bool)

(assert (=> b!2374042 (=> res!1007891 e!1514953)))

(declare-fun call!144304 () Bool)

(assert (=> b!2374042 (= res!1007891 call!144304)))

(declare-fun b!2374043 () Bool)

(declare-fun res!1007890 () Bool)

(declare-fun e!1514951 () Bool)

(assert (=> b!2374043 (=> (not res!1007890) (not e!1514951))))

(assert (=> b!2374043 (= res!1007890 (not call!144304))))

(declare-fun b!2374044 () Bool)

(declare-fun res!1007893 () Bool)

(declare-fun e!1514950 () Bool)

(assert (=> b!2374044 (=> res!1007893 e!1514950)))

(assert (=> b!2374044 (= res!1007893 e!1514951)))

(declare-fun res!1007892 () Bool)

(assert (=> b!2374044 (=> (not res!1007892) (not e!1514951))))

(declare-fun lt!866728 () Bool)

(assert (=> b!2374044 (= res!1007892 lt!866728)))

(declare-fun bm!144299 () Bool)

(assert (=> bm!144299 (= call!144304 (isEmpty!15987 s!9460))))

(declare-fun d!695784 () Bool)

(declare-fun e!1514952 () Bool)

(assert (=> d!695784 e!1514952))

(declare-fun c!377393 () Bool)

(assert (=> d!695784 (= c!377393 (is-EmptyExpr!6954 lt!866645))))

(declare-fun e!1514947 () Bool)

(assert (=> d!695784 (= lt!866728 e!1514947)))

(declare-fun c!377391 () Bool)

(assert (=> d!695784 (= c!377391 (isEmpty!15987 s!9460))))

(assert (=> d!695784 (validRegex!2681 lt!866645)))

(assert (=> d!695784 (= (matchR!3071 lt!866645 s!9460) lt!866728)))

(declare-fun b!2374045 () Bool)

(assert (=> b!2374045 (= e!1514947 (matchR!3071 (derivativeStep!1668 lt!866645 (head!5149 s!9460)) (tail!3419 s!9460)))))

(declare-fun b!2374046 () Bool)

(assert (=> b!2374046 (= e!1514947 (nullable!2010 lt!866645))))

(declare-fun b!2374047 () Bool)

(declare-fun e!1514949 () Bool)

(assert (=> b!2374047 (= e!1514952 e!1514949)))

(declare-fun c!377392 () Bool)

(assert (=> b!2374047 (= c!377392 (is-EmptyLang!6954 lt!866645))))

(declare-fun b!2374048 () Bool)

(declare-fun res!1007888 () Bool)

(assert (=> b!2374048 (=> res!1007888 e!1514953)))

(assert (=> b!2374048 (= res!1007888 (not (isEmpty!15987 (tail!3419 s!9460))))))

(declare-fun b!2374049 () Bool)

(declare-fun res!1007889 () Bool)

(assert (=> b!2374049 (=> (not res!1007889) (not e!1514951))))

(assert (=> b!2374049 (= res!1007889 (isEmpty!15987 (tail!3419 s!9460)))))

(declare-fun b!2374050 () Bool)

(assert (=> b!2374050 (= e!1514951 (= (head!5149 s!9460) (c!377300 lt!866645)))))

(declare-fun b!2374051 () Bool)

(assert (=> b!2374051 (= e!1514952 (= lt!866728 call!144304))))

(declare-fun b!2374052 () Bool)

(assert (=> b!2374052 (= e!1514950 e!1514948)))

(declare-fun res!1007887 () Bool)

(assert (=> b!2374052 (=> (not res!1007887) (not e!1514948))))

(assert (=> b!2374052 (= res!1007887 (not lt!866728))))

(declare-fun b!2374053 () Bool)

(assert (=> b!2374053 (= e!1514953 (not (= (head!5149 s!9460) (c!377300 lt!866645))))))

(declare-fun b!2374054 () Bool)

(declare-fun res!1007886 () Bool)

(assert (=> b!2374054 (=> res!1007886 e!1514950)))

(assert (=> b!2374054 (= res!1007886 (not (is-ElementMatch!6954 lt!866645)))))

(assert (=> b!2374054 (= e!1514949 e!1514950)))

(declare-fun b!2374055 () Bool)

(assert (=> b!2374055 (= e!1514949 (not lt!866728))))

(assert (= (and d!695784 c!377391) b!2374046))

(assert (= (and d!695784 (not c!377391)) b!2374045))

(assert (= (and d!695784 c!377393) b!2374051))

(assert (= (and d!695784 (not c!377393)) b!2374047))

(assert (= (and b!2374047 c!377392) b!2374055))

(assert (= (and b!2374047 (not c!377392)) b!2374054))

(assert (= (and b!2374054 (not res!1007886)) b!2374044))

(assert (= (and b!2374044 res!1007892) b!2374043))

(assert (= (and b!2374043 res!1007890) b!2374049))

(assert (= (and b!2374049 res!1007889) b!2374050))

(assert (= (and b!2374044 (not res!1007893)) b!2374052))

(assert (= (and b!2374052 res!1007887) b!2374042))

(assert (= (and b!2374042 (not res!1007891)) b!2374048))

(assert (= (and b!2374048 (not res!1007888)) b!2374053))

(assert (= (or b!2374051 b!2374042 b!2374043) bm!144299))

(assert (=> b!2374046 m!2780561))

(assert (=> b!2374048 m!2780615))

(assert (=> b!2374048 m!2780615))

(assert (=> b!2374048 m!2780617))

(assert (=> bm!144299 m!2780609))

(assert (=> b!2374053 m!2780619))

(assert (=> b!2374050 m!2780619))

(assert (=> b!2374049 m!2780615))

(assert (=> b!2374049 m!2780615))

(assert (=> b!2374049 m!2780617))

(assert (=> d!695784 m!2780609))

(assert (=> d!695784 m!2780571))

(assert (=> b!2374045 m!2780619))

(assert (=> b!2374045 m!2780619))

(declare-fun m!2780725 () Bool)

(assert (=> b!2374045 m!2780725))

(assert (=> b!2374045 m!2780615))

(assert (=> b!2374045 m!2780725))

(assert (=> b!2374045 m!2780615))

(declare-fun m!2780727 () Bool)

(assert (=> b!2374045 m!2780727))

(assert (=> b!2373625 d!695784))

(declare-fun e!1514968 () Bool)

(assert (=> b!2373627 (= tp!758417 e!1514968)))

(declare-fun b!2374093 () Bool)

(declare-fun tp!758461 () Bool)

(declare-fun tp!758458 () Bool)

(assert (=> b!2374093 (= e!1514968 (and tp!758461 tp!758458))))

(declare-fun b!2374091 () Bool)

(declare-fun tp!758459 () Bool)

(declare-fun tp!758460 () Bool)

(assert (=> b!2374091 (= e!1514968 (and tp!758459 tp!758460))))

(declare-fun b!2374090 () Bool)

(assert (=> b!2374090 (= e!1514968 tp_is_empty!11321)))

(declare-fun b!2374092 () Bool)

(declare-fun tp!758462 () Bool)

(assert (=> b!2374092 (= e!1514968 tp!758462)))

(assert (= (and b!2373627 (is-ElementMatch!6954 (reg!7283 r!13927))) b!2374090))

(assert (= (and b!2373627 (is-Concat!11590 (reg!7283 r!13927))) b!2374091))

(assert (= (and b!2373627 (is-Star!6954 (reg!7283 r!13927))) b!2374092))

(assert (= (and b!2373627 (is-Union!6954 (reg!7283 r!13927))) b!2374093))

(declare-fun e!1514969 () Bool)

(assert (=> b!2373623 (= tp!758419 e!1514969)))

(declare-fun b!2374097 () Bool)

(declare-fun tp!758466 () Bool)

(declare-fun tp!758463 () Bool)

(assert (=> b!2374097 (= e!1514969 (and tp!758466 tp!758463))))

(declare-fun b!2374095 () Bool)

(declare-fun tp!758464 () Bool)

(declare-fun tp!758465 () Bool)

(assert (=> b!2374095 (= e!1514969 (and tp!758464 tp!758465))))

(declare-fun b!2374094 () Bool)

(assert (=> b!2374094 (= e!1514969 tp_is_empty!11321)))

(declare-fun b!2374096 () Bool)

(declare-fun tp!758467 () Bool)

(assert (=> b!2374096 (= e!1514969 tp!758467)))

(assert (= (and b!2373623 (is-ElementMatch!6954 (h!33449 l!9164))) b!2374094))

(assert (= (and b!2373623 (is-Concat!11590 (h!33449 l!9164))) b!2374095))

(assert (= (and b!2373623 (is-Star!6954 (h!33449 l!9164))) b!2374096))

(assert (= (and b!2373623 (is-Union!6954 (h!33449 l!9164))) b!2374097))

(declare-fun b!2374102 () Bool)

(declare-fun e!1514972 () Bool)

(declare-fun tp!758472 () Bool)

(declare-fun tp!758473 () Bool)

(assert (=> b!2374102 (= e!1514972 (and tp!758472 tp!758473))))

(assert (=> b!2373623 (= tp!758421 e!1514972)))

(assert (= (and b!2373623 (is-Cons!28048 (t!208123 l!9164))) b!2374102))

(declare-fun b!2374107 () Bool)

(declare-fun e!1514975 () Bool)

(declare-fun tp!758476 () Bool)

(assert (=> b!2374107 (= e!1514975 (and tp_is_empty!11321 tp!758476))))

(assert (=> b!2373622 (= tp!758420 e!1514975)))

(assert (= (and b!2373622 (is-Cons!28049 (t!208124 s!9460))) b!2374107))

(declare-fun e!1514976 () Bool)

(assert (=> b!2373619 (= tp!758423 e!1514976)))

(declare-fun b!2374111 () Bool)

(declare-fun tp!758480 () Bool)

(declare-fun tp!758477 () Bool)

(assert (=> b!2374111 (= e!1514976 (and tp!758480 tp!758477))))

(declare-fun b!2374109 () Bool)

(declare-fun tp!758478 () Bool)

(declare-fun tp!758479 () Bool)

(assert (=> b!2374109 (= e!1514976 (and tp!758478 tp!758479))))

(declare-fun b!2374108 () Bool)

(assert (=> b!2374108 (= e!1514976 tp_is_empty!11321)))

(declare-fun b!2374110 () Bool)

(declare-fun tp!758481 () Bool)

(assert (=> b!2374110 (= e!1514976 tp!758481)))

(assert (= (and b!2373619 (is-ElementMatch!6954 (regOne!14420 r!13927))) b!2374108))

(assert (= (and b!2373619 (is-Concat!11590 (regOne!14420 r!13927))) b!2374109))

(assert (= (and b!2373619 (is-Star!6954 (regOne!14420 r!13927))) b!2374110))

(assert (= (and b!2373619 (is-Union!6954 (regOne!14420 r!13927))) b!2374111))

(declare-fun e!1514977 () Bool)

(assert (=> b!2373619 (= tp!758422 e!1514977)))

(declare-fun b!2374115 () Bool)

(declare-fun tp!758485 () Bool)

(declare-fun tp!758482 () Bool)

(assert (=> b!2374115 (= e!1514977 (and tp!758485 tp!758482))))

(declare-fun b!2374113 () Bool)

(declare-fun tp!758483 () Bool)

(declare-fun tp!758484 () Bool)

(assert (=> b!2374113 (= e!1514977 (and tp!758483 tp!758484))))

(declare-fun b!2374112 () Bool)

(assert (=> b!2374112 (= e!1514977 tp_is_empty!11321)))

(declare-fun b!2374114 () Bool)

(declare-fun tp!758486 () Bool)

(assert (=> b!2374114 (= e!1514977 tp!758486)))

(assert (= (and b!2373619 (is-ElementMatch!6954 (regTwo!14420 r!13927))) b!2374112))

(assert (= (and b!2373619 (is-Concat!11590 (regTwo!14420 r!13927))) b!2374113))

(assert (= (and b!2373619 (is-Star!6954 (regTwo!14420 r!13927))) b!2374114))

(assert (= (and b!2373619 (is-Union!6954 (regTwo!14420 r!13927))) b!2374115))

(declare-fun e!1514978 () Bool)

(assert (=> b!2373630 (= tp!758418 e!1514978)))

(declare-fun b!2374119 () Bool)

(declare-fun tp!758490 () Bool)

(declare-fun tp!758487 () Bool)

(assert (=> b!2374119 (= e!1514978 (and tp!758490 tp!758487))))

(declare-fun b!2374117 () Bool)

(declare-fun tp!758488 () Bool)

(declare-fun tp!758489 () Bool)

(assert (=> b!2374117 (= e!1514978 (and tp!758488 tp!758489))))

(declare-fun b!2374116 () Bool)

(assert (=> b!2374116 (= e!1514978 tp_is_empty!11321)))

(declare-fun b!2374118 () Bool)

(declare-fun tp!758491 () Bool)

(assert (=> b!2374118 (= e!1514978 tp!758491)))

(assert (= (and b!2373630 (is-ElementMatch!6954 (regOne!14421 r!13927))) b!2374116))

(assert (= (and b!2373630 (is-Concat!11590 (regOne!14421 r!13927))) b!2374117))

(assert (= (and b!2373630 (is-Star!6954 (regOne!14421 r!13927))) b!2374118))

(assert (= (and b!2373630 (is-Union!6954 (regOne!14421 r!13927))) b!2374119))

(declare-fun e!1514979 () Bool)

(assert (=> b!2373630 (= tp!758416 e!1514979)))

(declare-fun b!2374123 () Bool)

(declare-fun tp!758495 () Bool)

(declare-fun tp!758492 () Bool)

(assert (=> b!2374123 (= e!1514979 (and tp!758495 tp!758492))))

(declare-fun b!2374121 () Bool)

(declare-fun tp!758493 () Bool)

(declare-fun tp!758494 () Bool)

(assert (=> b!2374121 (= e!1514979 (and tp!758493 tp!758494))))

(declare-fun b!2374120 () Bool)

(assert (=> b!2374120 (= e!1514979 tp_is_empty!11321)))

(declare-fun b!2374122 () Bool)

(declare-fun tp!758496 () Bool)

(assert (=> b!2374122 (= e!1514979 tp!758496)))

(assert (= (and b!2373630 (is-ElementMatch!6954 (regTwo!14421 r!13927))) b!2374120))

(assert (= (and b!2373630 (is-Concat!11590 (regTwo!14421 r!13927))) b!2374121))

(assert (= (and b!2373630 (is-Star!6954 (regTwo!14421 r!13927))) b!2374122))

(assert (= (and b!2373630 (is-Union!6954 (regTwo!14421 r!13927))) b!2374123))

(declare-fun b_lambda!73973 () Bool)

(assert (= b_lambda!73971 (or start!232938 b_lambda!73973)))

(declare-fun bs!461434 () Bool)

(declare-fun d!695786 () Bool)

(assert (= bs!461434 (and d!695786 start!232938)))

(assert (=> bs!461434 (= (dynLambda!12077 lambda!88004 (h!33449 l!9164)) (validRegex!2681 (h!33449 l!9164)))))

(declare-fun m!2780729 () Bool)

(assert (=> bs!461434 m!2780729))

(assert (=> b!2374026 d!695786))

(push 1)

(assert (not bm!144299))

(assert (not b!2374122))

(assert (not b!2374093))

(assert (not bm!144292))

(assert (not b!2373941))

(assert (not b!2374123))

(assert (not b!2373727))

(assert (not b!2373779))

(assert (not d!695752))

(assert (not b!2374113))

(assert (not b!2374095))

(assert (not b!2374117))

(assert (not b!2373831))

(assert (not d!695730))

(assert (not d!695734))

(assert (not b!2374049))

(assert (not b!2373885))

(assert (not b!2374096))

(assert (not d!695738))

(assert (not b!2374036))

(assert (not d!695772))

(assert (not b!2373900))

(assert (not b!2374092))

(assert (not b!2374018))

(assert (not b!2374097))

(assert (not b!2374110))

(assert (not b!2374021))

(assert (not b!2374102))

(assert (not bm!144279))

(assert (not b!2374046))

(assert (not b!2374118))

(assert (not b!2374014))

(assert (not b!2373940))

(assert (not b!2373895))

(assert (not b!2374030))

(assert (not b!2374013))

(assert (not b!2374107))

(assert (not b!2374109))

(assert (not b!2373784))

(assert (not b!2373742))

(assert (not b!2373989))

(assert (not b!2373937))

(assert (not b!2374031))

(assert (not b!2373953))

(assert (not b!2373985))

(assert (not b!2374028))

(assert (not b!2373990))

(assert (not d!695782))

(assert (not b!2373944))

(assert (not d!695766))

(assert (not b!2374048))

(assert (not b!2374027))

(assert (not d!695778))

(assert (not b!2374012))

(assert (not bm!144272))

(assert (not bm!144286))

(assert (not b!2373728))

(assert (not b!2374111))

(assert (not b!2373723))

(assert (not b!2373892))

(assert (not b!2374091))

(assert (not b!2373897))

(assert (not d!695776))

(assert (not b!2374114))

(assert (not b!2374034))

(assert (not b!2373776))

(assert (not d!695742))

(assert (not b!2373987))

(assert (not b!2374053))

(assert (not b!2374119))

(assert (not bm!144281))

(assert (not b!2373724))

(assert (not d!695728))

(assert (not d!695748))

(assert (not bm!144287))

(assert (not bs!461434))

(assert (not b!2374015))

(assert (not b!2373743))

(assert (not b!2373725))

(assert (not b!2373896))

(assert (not b!2373924))

(assert (not b!2374037))

(assert (not b_lambda!73973))

(assert (not b!2373877))

(assert (not b!2374121))

(assert tp_is_empty!11321)

(assert (not b!2374115))

(assert (not b!2373777))

(assert (not b!2373893))

(assert (not b!2373986))

(assert (not b!2374029))

(assert (not d!695758))

(assert (not d!695732))

(assert (not bm!144288))

(assert (not b!2374045))

(assert (not b!2373722))

(assert (not bm!144290))

(assert (not b!2374020))

(assert (not d!695784))

(assert (not d!695764))

(assert (not d!695750))

(assert (not d!695768))

(assert (not b!2373780))

(assert (not b!2373781))

(assert (not b!2374050))

(assert (not d!695770))

(assert (not b!2373939))

(assert (not b!2373732))

(assert (not b!2373936))

(assert (not b!2373984))

(assert (not b!2373925))

(assert (not bm!144289))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

