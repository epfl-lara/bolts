; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!234582 () Bool)

(assert start!234582)

(declare-fun b!2390489 () Bool)

(assert (=> b!2390489 true))

(assert (=> b!2390489 true))

(declare-fun lambda!89522 () Int)

(declare-fun lambda!89521 () Int)

(assert (=> b!2390489 (not (= lambda!89522 lambda!89521))))

(assert (=> b!2390489 true))

(assert (=> b!2390489 true))

(declare-fun b!2390475 () Bool)

(declare-fun e!1523836 () Bool)

(declare-fun e!1523841 () Bool)

(assert (=> b!2390475 (= e!1523836 e!1523841)))

(declare-fun res!1015525 () Bool)

(assert (=> b!2390475 (=> res!1015525 e!1523841)))

(declare-datatypes ((C!14174 0))(
  ( (C!14175 (val!8329 Int)) )
))
(declare-datatypes ((Regex!7008 0))(
  ( (ElementMatch!7008 (c!380212 C!14174)) (Concat!11644 (regOne!14528 Regex!7008) (regTwo!14528 Regex!7008)) (EmptyExpr!7008) (Star!7008 (reg!7337 Regex!7008)) (EmptyLang!7008) (Union!7008 (regOne!14529 Regex!7008) (regTwo!14529 Regex!7008)) )
))
(declare-datatypes ((List!28254 0))(
  ( (Nil!28156) (Cons!28156 (h!33557 Regex!7008) (t!208231 List!28254)) )
))
(declare-fun l!9164 () List!28254)

(assert (=> b!2390475 (= res!1015525 (not (is-Cons!28156 l!9164)))))

(declare-datatypes ((Unit!41147 0))(
  ( (Unit!41148) )
))
(declare-fun lt!870321 () Unit!41147)

(declare-fun e!1523834 () Unit!41147)

(assert (=> b!2390475 (= lt!870321 e!1523834)))

(declare-fun c!380211 () Bool)

(declare-fun isEmpty!16133 (List!28254) Bool)

(assert (=> b!2390475 (= c!380211 (isEmpty!16133 l!9164))))

(declare-datatypes ((List!28255 0))(
  ( (Nil!28157) (Cons!28157 (h!33558 C!14174) (t!208232 List!28255)) )
))
(declare-fun s!9460 () List!28255)

(declare-fun bm!145466 () Bool)

(declare-fun lt!870330 () Regex!7008)

(declare-fun call!145477 () Bool)

(declare-fun call!145479 () List!28255)

(declare-fun lt!870329 () Regex!7008)

(declare-fun c!380209 () Bool)

(declare-fun matchR!3125 (Regex!7008 List!28255) Bool)

(assert (=> bm!145466 (= call!145477 (matchR!3125 (ite c!380209 lt!870329 (Concat!11644 lt!870330 EmptyExpr!7008)) (ite c!380209 s!9460 call!145479)))))

(declare-fun b!2390476 () Bool)

(declare-fun e!1523829 () Bool)

(declare-fun call!145471 () Bool)

(assert (=> b!2390476 (= e!1523829 (not call!145471))))

(declare-fun b!2390477 () Bool)

(declare-fun res!1015521 () Bool)

(declare-fun e!1523830 () Bool)

(assert (=> b!2390477 (=> (not res!1015521) (not e!1523830))))

(declare-fun r!13927 () Regex!7008)

(declare-fun generalisedConcat!109 (List!28254) Regex!7008)

(assert (=> b!2390477 (= res!1015521 (= r!13927 (generalisedConcat!109 l!9164)))))

(declare-fun b!2390478 () Bool)

(declare-fun lt!870314 () Bool)

(declare-fun call!145472 () Bool)

(assert (=> b!2390478 (= lt!870314 call!145472)))

(declare-fun e!1523828 () Unit!41147)

(declare-fun Unit!41149 () Unit!41147)

(assert (=> b!2390478 (= e!1523828 Unit!41149)))

(declare-fun b!2390479 () Bool)

(declare-fun e!1523827 () Bool)

(assert (=> b!2390479 (= e!1523827 call!145477)))

(declare-fun b!2390480 () Bool)

(declare-fun e!1523833 () Bool)

(declare-fun tp!762065 () Bool)

(assert (=> b!2390480 (= e!1523833 tp!762065)))

(declare-fun b!2390481 () Bool)

(assert (=> b!2390481 (= e!1523834 e!1523828)))

(declare-fun lt!870326 () List!28254)

(declare-fun tail!3518 (List!28254) List!28254)

(assert (=> b!2390481 (= lt!870326 (tail!3518 l!9164))))

(declare-fun c!380210 () Bool)

(assert (=> b!2390481 (= c!380210 (isEmpty!16133 lt!870326))))

(declare-fun b!2390482 () Bool)

(declare-fun tp_is_empty!11429 () Bool)

(assert (=> b!2390482 (= e!1523833 tp_is_empty!11429)))

(declare-fun bm!145467 () Bool)

(declare-fun call!145481 () Regex!7008)

(assert (=> bm!145467 (= call!145481 (generalisedConcat!109 lt!870326))))

(declare-fun b!2390483 () Bool)

(declare-fun e!1523839 () Bool)

(declare-fun tp!762066 () Bool)

(declare-fun tp!762068 () Bool)

(assert (=> b!2390483 (= e!1523839 (and tp!762066 tp!762068))))

(declare-fun b!2390484 () Bool)

(declare-fun validRegex!2733 (Regex!7008) Bool)

(assert (=> b!2390484 (= e!1523841 (validRegex!2733 (h!33557 l!9164)))))

(declare-fun lt!870318 () Regex!7008)

(assert (=> b!2390484 (= lt!870318 (generalisedConcat!109 (t!208231 l!9164)))))

(declare-fun bm!145469 () Bool)

(declare-fun call!145473 () Regex!7008)

(assert (=> bm!145469 (= call!145473 call!145481)))

(declare-fun b!2390485 () Bool)

(declare-fun e!1523838 () Unit!41147)

(declare-fun Unit!41150 () Unit!41147)

(assert (=> b!2390485 (= e!1523838 Unit!41150)))

(declare-fun lt!870316 () Unit!41147)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!45 (Regex!7008 Regex!7008 List!28255 List!28255) Unit!41147)

(assert (=> b!2390485 (= lt!870316 (lemmaTwoRegexMatchThenConcatMatchesConcatString!45 lt!870330 EmptyExpr!7008 s!9460 Nil!28157))))

(assert (=> b!2390485 (= lt!870329 (Concat!11644 lt!870330 EmptyExpr!7008))))

(declare-fun res!1015523 () Bool)

(assert (=> b!2390485 (= res!1015523 (matchR!3125 lt!870329 call!145479))))

(assert (=> b!2390485 (=> (not res!1015523) (not e!1523827))))

(assert (=> b!2390485 e!1523827))

(declare-fun lt!870323 () Unit!41147)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!27 (Regex!7008 Regex!7008 List!28255) Unit!41147)

(assert (=> b!2390485 (= lt!870323 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!27 lt!870330 EmptyExpr!7008 s!9460))))

(declare-fun res!1015522 () Bool)

(declare-fun call!145476 () Bool)

(assert (=> b!2390485 (= res!1015522 call!145476)))

(declare-fun e!1523840 () Bool)

(assert (=> b!2390485 (=> (not res!1015522) (not e!1523840))))

(assert (=> b!2390485 e!1523840))

(declare-fun b!2390486 () Bool)

(declare-fun e!1523832 () Bool)

(declare-fun tp!762067 () Bool)

(assert (=> b!2390486 (= e!1523832 (and tp_is_empty!11429 tp!762067))))

(declare-fun b!2390487 () Bool)

(declare-fun e!1523837 () Bool)

(assert (=> b!2390487 e!1523837))

(declare-fun res!1015524 () Bool)

(assert (=> b!2390487 (=> (not res!1015524) (not e!1523837))))

(assert (=> b!2390487 (= res!1015524 call!145477)))

(declare-fun lt!870324 () Unit!41147)

(declare-datatypes ((tuple2!27880 0))(
  ( (tuple2!27881 (_1!16481 List!28255) (_2!16481 List!28255)) )
))
(declare-fun lt!870313 () tuple2!27880)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!27 (Regex!7008 Regex!7008 List!28255 List!28255 List!28255) Unit!41147)

(assert (=> b!2390487 (= lt!870324 (lemmaFindSeparationIsDefinedThenConcatMatches!27 lt!870330 EmptyExpr!7008 (_1!16481 lt!870313) (_2!16481 lt!870313) s!9460))))

(declare-datatypes ((Option!5551 0))(
  ( (None!5550) (Some!5550 (v!30958 tuple2!27880)) )
))
(declare-fun lt!870315 () Option!5551)

(declare-fun get!8610 (Option!5551) tuple2!27880)

(assert (=> b!2390487 (= lt!870313 (get!8610 lt!870315))))

(declare-fun e!1523835 () Unit!41147)

(declare-fun Unit!41151 () Unit!41147)

(assert (=> b!2390487 (= e!1523835 Unit!41151)))

(declare-fun b!2390488 () Bool)

(assert (=> b!2390488 (= e!1523837 false)))

(declare-fun call!145478 () Option!5551)

(declare-fun bm!145470 () Bool)

(declare-fun findConcatSeparation!659 (Regex!7008 Regex!7008 List!28255 List!28255 List!28255) Option!5551)

(assert (=> bm!145470 (= call!145478 (findConcatSeparation!659 lt!870330 call!145473 Nil!28157 s!9460 s!9460))))

(declare-fun e!1523831 () Bool)

(assert (=> b!2390489 (= e!1523831 e!1523836)))

(declare-fun res!1015529 () Bool)

(assert (=> b!2390489 (=> res!1015529 e!1523836)))

(declare-fun lt!870328 () Bool)

(declare-fun lt!870317 () Bool)

(assert (=> b!2390489 (= res!1015529 (not (= lt!870328 lt!870317)))))

(declare-fun Exists!1070 (Int) Bool)

(assert (=> b!2390489 (= (Exists!1070 lambda!89521) (Exists!1070 lambda!89522))))

(declare-fun lt!870320 () Unit!41147)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!409 (Regex!7008 Regex!7008 List!28255) Unit!41147)

(assert (=> b!2390489 (= lt!870320 (lemmaExistCutMatchRandMatchRSpecEquivalent!409 (regOne!14528 r!13927) (regTwo!14528 r!13927) s!9460))))

(assert (=> b!2390489 (= lt!870317 (Exists!1070 lambda!89521))))

(declare-fun isDefined!4379 (Option!5551) Bool)

(assert (=> b!2390489 (= lt!870317 (isDefined!4379 (findConcatSeparation!659 (regOne!14528 r!13927) (regTwo!14528 r!13927) Nil!28157 s!9460 s!9460)))))

(declare-fun lt!870331 () Unit!41147)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!659 (Regex!7008 Regex!7008 List!28255) Unit!41147)

(assert (=> b!2390489 (= lt!870331 (lemmaFindConcatSeparationEquivalentToExists!659 (regOne!14528 r!13927) (regTwo!14528 r!13927) s!9460))))

(declare-fun b!2390490 () Bool)

(declare-fun Unit!41152 () Unit!41147)

(assert (=> b!2390490 (= e!1523835 Unit!41152)))

(declare-fun b!2390491 () Bool)

(assert (=> b!2390491 (= e!1523840 call!145471)))

(declare-fun b!2390492 () Bool)

(assert (=> b!2390492 (= e!1523830 (not e!1523831))))

(declare-fun res!1015528 () Bool)

(assert (=> b!2390492 (=> res!1015528 e!1523831)))

(assert (=> b!2390492 (= res!1015528 (not (is-Concat!11644 r!13927)))))

(assert (=> b!2390492 (= lt!870314 lt!870328)))

(declare-fun matchRSpec!857 (Regex!7008 List!28255) Bool)

(assert (=> b!2390492 (= lt!870328 (matchRSpec!857 r!13927 s!9460))))

(assert (=> b!2390492 (= lt!870314 (matchR!3125 r!13927 s!9460))))

(declare-fun lt!870325 () Unit!41147)

(declare-fun mainMatchTheorem!857 (Regex!7008 List!28255) Unit!41147)

(assert (=> b!2390492 (= lt!870325 (mainMatchTheorem!857 r!13927 s!9460))))

(declare-fun b!2390493 () Bool)

(declare-fun tp!762071 () Bool)

(declare-fun tp!762064 () Bool)

(assert (=> b!2390493 (= e!1523833 (and tp!762071 tp!762064))))

(declare-fun bm!145471 () Bool)

(declare-fun call!145475 () Option!5551)

(declare-fun call!145480 () Option!5551)

(assert (=> bm!145471 (= call!145475 call!145480)))

(declare-fun b!2390494 () Bool)

(declare-fun Unit!41153 () Unit!41147)

(assert (=> b!2390494 (= e!1523834 Unit!41153)))

(assert (=> b!2390494 false))

(declare-fun b!2390495 () Bool)

(declare-fun tp!762070 () Bool)

(declare-fun tp!762069 () Bool)

(assert (=> b!2390495 (= e!1523833 (and tp!762070 tp!762069))))

(declare-fun bm!145472 () Bool)

(assert (=> bm!145472 (= call!145472 (isDefined!4379 (ite c!380210 (ite c!380209 call!145475 lt!870315) call!145480)))))

(declare-fun bm!145473 () Bool)

(assert (=> bm!145473 (= call!145476 call!145472)))

(declare-fun bm!145474 () Bool)

(assert (=> bm!145474 (= call!145471 (isDefined!4379 call!145478))))

(declare-fun b!2390496 () Bool)

(declare-fun Unit!41154 () Unit!41147)

(assert (=> b!2390496 (= e!1523838 Unit!41154)))

(assert (=> b!2390496 (= lt!870315 call!145475)))

(declare-fun lt!870327 () Bool)

(assert (=> b!2390496 (= lt!870327 call!145476)))

(declare-fun c!380208 () Bool)

(assert (=> b!2390496 (= c!380208 lt!870327)))

(declare-fun lt!870322 () Unit!41147)

(assert (=> b!2390496 (= lt!870322 e!1523835)))

(declare-fun res!1015526 () Bool)

(assert (=> b!2390496 (= res!1015526 (not lt!870327))))

(assert (=> b!2390496 (=> (not res!1015526) (not e!1523829))))

(assert (=> b!2390496 e!1523829))

(declare-fun b!2390497 () Bool)

(assert (=> b!2390497 (= lt!870314 (isDefined!4379 (findConcatSeparation!659 lt!870330 call!145481 Nil!28157 s!9460 s!9460)))))

(declare-fun lt!870319 () Unit!41147)

(assert (=> b!2390497 (= lt!870319 e!1523838)))

(assert (=> b!2390497 (= c!380209 (matchR!3125 lt!870330 s!9460))))

(declare-fun call!145474 () Regex!7008)

(assert (=> b!2390497 (= lt!870330 call!145474)))

(declare-fun Unit!41155 () Unit!41147)

(assert (=> b!2390497 (= e!1523828 Unit!41155)))

(declare-fun bm!145475 () Bool)

(assert (=> bm!145475 (= call!145480 (findConcatSeparation!659 (ite c!380210 lt!870330 call!145474) (ite c!380210 EmptyExpr!7008 call!145481) Nil!28157 s!9460 s!9460))))

(declare-fun bm!145476 () Bool)

(declare-fun head!5248 (List!28254) Regex!7008)

(assert (=> bm!145476 (= call!145474 (head!5248 l!9164))))

(declare-fun bm!145468 () Bool)

(declare-fun ++!6962 (List!28255 List!28255) List!28255)

(assert (=> bm!145468 (= call!145479 (++!6962 (ite c!380209 s!9460 (_1!16481 lt!870313)) (ite c!380209 Nil!28157 (_2!16481 lt!870313))))))

(declare-fun res!1015527 () Bool)

(assert (=> start!234582 (=> (not res!1015527) (not e!1523830))))

(declare-fun lambda!89520 () Int)

(declare-fun forall!5642 (List!28254 Int) Bool)

(assert (=> start!234582 (= res!1015527 (forall!5642 l!9164 lambda!89520))))

(assert (=> start!234582 e!1523830))

(assert (=> start!234582 e!1523839))

(assert (=> start!234582 e!1523833))

(assert (=> start!234582 e!1523832))

(assert (= (and start!234582 res!1015527) b!2390477))

(assert (= (and b!2390477 res!1015521) b!2390492))

(assert (= (and b!2390492 (not res!1015528)) b!2390489))

(assert (= (and b!2390489 (not res!1015529)) b!2390475))

(assert (= (and b!2390475 c!380211) b!2390494))

(assert (= (and b!2390475 (not c!380211)) b!2390481))

(assert (= (and b!2390481 c!380210) b!2390497))

(assert (= (and b!2390481 (not c!380210)) b!2390478))

(assert (= (and b!2390497 c!380209) b!2390485))

(assert (= (and b!2390497 (not c!380209)) b!2390496))

(assert (= (and b!2390485 res!1015523) b!2390479))

(assert (= (and b!2390485 res!1015522) b!2390491))

(assert (= (and b!2390496 c!380208) b!2390487))

(assert (= (and b!2390496 (not c!380208)) b!2390490))

(assert (= (and b!2390487 res!1015524) b!2390488))

(assert (= (and b!2390496 res!1015526) b!2390476))

(assert (= (or b!2390491 b!2390476) bm!145469))

(assert (= (or b!2390485 b!2390496) bm!145471))

(assert (= (or b!2390485 b!2390487) bm!145468))

(assert (= (or b!2390479 b!2390487) bm!145466))

(assert (= (or b!2390485 b!2390496) bm!145473))

(assert (= (or b!2390491 b!2390476) bm!145470))

(assert (= (or b!2390491 b!2390476) bm!145474))

(assert (= (or b!2390497 b!2390478) bm!145476))

(assert (= (or bm!145469 b!2390497 b!2390478) bm!145467))

(assert (= (or bm!145471 b!2390478) bm!145475))

(assert (= (or bm!145473 b!2390478) bm!145472))

(assert (= (and b!2390475 (not res!1015525)) b!2390484))

(assert (= (and start!234582 (is-Cons!28156 l!9164)) b!2390483))

(assert (= (and start!234582 (is-ElementMatch!7008 r!13927)) b!2390482))

(assert (= (and start!234582 (is-Concat!11644 r!13927)) b!2390493))

(assert (= (and start!234582 (is-Star!7008 r!13927)) b!2390480))

(assert (= (and start!234582 (is-Union!7008 r!13927)) b!2390495))

(assert (= (and start!234582 (is-Cons!28157 s!9460)) b!2390486))

(declare-fun m!2790655 () Bool)

(assert (=> bm!145472 m!2790655))

(declare-fun m!2790657 () Bool)

(assert (=> b!2390485 m!2790657))

(declare-fun m!2790659 () Bool)

(assert (=> b!2390485 m!2790659))

(declare-fun m!2790661 () Bool)

(assert (=> b!2390485 m!2790661))

(declare-fun m!2790663 () Bool)

(assert (=> b!2390489 m!2790663))

(declare-fun m!2790665 () Bool)

(assert (=> b!2390489 m!2790665))

(declare-fun m!2790667 () Bool)

(assert (=> b!2390489 m!2790667))

(declare-fun m!2790669 () Bool)

(assert (=> b!2390489 m!2790669))

(assert (=> b!2390489 m!2790663))

(declare-fun m!2790671 () Bool)

(assert (=> b!2390489 m!2790671))

(declare-fun m!2790673 () Bool)

(assert (=> b!2390489 m!2790673))

(assert (=> b!2390489 m!2790667))

(declare-fun m!2790675 () Bool)

(assert (=> bm!145467 m!2790675))

(declare-fun m!2790677 () Bool)

(assert (=> bm!145476 m!2790677))

(declare-fun m!2790679 () Bool)

(assert (=> b!2390484 m!2790679))

(declare-fun m!2790681 () Bool)

(assert (=> b!2390484 m!2790681))

(declare-fun m!2790683 () Bool)

(assert (=> b!2390477 m!2790683))

(declare-fun m!2790685 () Bool)

(assert (=> b!2390497 m!2790685))

(assert (=> b!2390497 m!2790685))

(declare-fun m!2790687 () Bool)

(assert (=> b!2390497 m!2790687))

(declare-fun m!2790689 () Bool)

(assert (=> b!2390497 m!2790689))

(declare-fun m!2790691 () Bool)

(assert (=> bm!145466 m!2790691))

(declare-fun m!2790693 () Bool)

(assert (=> bm!145468 m!2790693))

(declare-fun m!2790695 () Bool)

(assert (=> bm!145474 m!2790695))

(declare-fun m!2790697 () Bool)

(assert (=> b!2390492 m!2790697))

(declare-fun m!2790699 () Bool)

(assert (=> b!2390492 m!2790699))

(declare-fun m!2790701 () Bool)

(assert (=> b!2390492 m!2790701))

(declare-fun m!2790703 () Bool)

(assert (=> bm!145475 m!2790703))

(declare-fun m!2790705 () Bool)

(assert (=> b!2390487 m!2790705))

(declare-fun m!2790707 () Bool)

(assert (=> b!2390487 m!2790707))

(declare-fun m!2790709 () Bool)

(assert (=> b!2390481 m!2790709))

(declare-fun m!2790711 () Bool)

(assert (=> b!2390481 m!2790711))

(declare-fun m!2790713 () Bool)

(assert (=> b!2390475 m!2790713))

(declare-fun m!2790715 () Bool)

(assert (=> start!234582 m!2790715))

(declare-fun m!2790717 () Bool)

(assert (=> bm!145470 m!2790717))

(push 1)

(assert (not b!2390484))

(assert (not bm!145476))

(assert (not bm!145470))

(assert (not b!2390486))

(assert (not b!2390481))

(assert (not bm!145468))

(assert (not bm!145474))

(assert (not b!2390480))

(assert (not bm!145467))

(assert (not b!2390492))

(assert (not bm!145472))

(assert (not b!2390475))

(assert (not start!234582))

(assert (not b!2390477))

(assert (not b!2390493))

(assert tp_is_empty!11429)

(assert (not b!2390497))

(assert (not bm!145475))

(assert (not b!2390489))

(assert (not b!2390485))

(assert (not b!2390483))

(assert (not bm!145466))

(assert (not b!2390495))

(assert (not b!2390487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!698099 () Bool)

(assert (=> d!698099 (matchR!3125 (Concat!11644 lt!870330 EmptyExpr!7008) (++!6962 (_1!16481 lt!870313) (_2!16481 lt!870313)))))

(declare-fun lt!870394 () Unit!41147)

(declare-fun choose!14069 (Regex!7008 Regex!7008 List!28255 List!28255 List!28255) Unit!41147)

(assert (=> d!698099 (= lt!870394 (choose!14069 lt!870330 EmptyExpr!7008 (_1!16481 lt!870313) (_2!16481 lt!870313) s!9460))))

(assert (=> d!698099 (validRegex!2733 lt!870330)))

(assert (=> d!698099 (= (lemmaFindSeparationIsDefinedThenConcatMatches!27 lt!870330 EmptyExpr!7008 (_1!16481 lt!870313) (_2!16481 lt!870313) s!9460) lt!870394)))

(declare-fun bs!462513 () Bool)

(assert (= bs!462513 d!698099))

(declare-fun m!2790793 () Bool)

(assert (=> bs!462513 m!2790793))

(assert (=> bs!462513 m!2790793))

(declare-fun m!2790795 () Bool)

(assert (=> bs!462513 m!2790795))

(declare-fun m!2790797 () Bool)

(assert (=> bs!462513 m!2790797))

(declare-fun m!2790799 () Bool)

(assert (=> bs!462513 m!2790799))

(assert (=> b!2390487 d!698099))

(declare-fun d!698103 () Bool)

(assert (=> d!698103 (= (get!8610 lt!870315) (v!30958 lt!870315))))

(assert (=> b!2390487 d!698103))

(declare-fun bs!462514 () Bool)

(declare-fun d!698105 () Bool)

(assert (= bs!462514 (and d!698105 start!234582)))

(declare-fun lambda!89536 () Int)

(assert (=> bs!462514 (= lambda!89536 lambda!89520)))

(declare-fun b!2390618 () Bool)

(declare-fun e!1523917 () Bool)

(declare-fun e!1523911 () Bool)

(assert (=> b!2390618 (= e!1523917 e!1523911)))

(declare-fun c!380241 () Bool)

(assert (=> b!2390618 (= c!380241 (isEmpty!16133 (tail!3518 l!9164)))))

(declare-fun b!2390619 () Bool)

(declare-fun lt!870399 () Regex!7008)

(declare-fun isEmptyExpr!78 (Regex!7008) Bool)

(assert (=> b!2390619 (= e!1523917 (isEmptyExpr!78 lt!870399))))

(declare-fun b!2390620 () Bool)

(declare-fun e!1523913 () Bool)

(assert (=> b!2390620 (= e!1523913 (isEmpty!16133 (t!208231 l!9164)))))

(declare-fun b!2390621 () Bool)

(declare-fun e!1523915 () Regex!7008)

(declare-fun e!1523912 () Regex!7008)

(assert (=> b!2390621 (= e!1523915 e!1523912)))

(declare-fun c!380237 () Bool)

(assert (=> b!2390621 (= c!380237 (is-Cons!28156 l!9164))))

(declare-fun b!2390622 () Bool)

(declare-fun isConcat!78 (Regex!7008) Bool)

(assert (=> b!2390622 (= e!1523911 (isConcat!78 lt!870399))))

(declare-fun b!2390623 () Bool)

(assert (=> b!2390623 (= e!1523911 (= lt!870399 (head!5248 l!9164)))))

(declare-fun b!2390624 () Bool)

(assert (=> b!2390624 (= e!1523915 (h!33557 l!9164))))

(declare-fun b!2390625 () Bool)

(assert (=> b!2390625 (= e!1523912 EmptyExpr!7008)))

(declare-fun e!1523910 () Bool)

(assert (=> d!698105 e!1523910))

(declare-fun res!1015577 () Bool)

(assert (=> d!698105 (=> (not res!1015577) (not e!1523910))))

(assert (=> d!698105 (= res!1015577 (validRegex!2733 lt!870399))))

(assert (=> d!698105 (= lt!870399 e!1523915)))

(declare-fun c!380240 () Bool)

(assert (=> d!698105 (= c!380240 e!1523913)))

(declare-fun res!1015576 () Bool)

(assert (=> d!698105 (=> (not res!1015576) (not e!1523913))))

(assert (=> d!698105 (= res!1015576 (is-Cons!28156 l!9164))))

(assert (=> d!698105 (forall!5642 l!9164 lambda!89536)))

(assert (=> d!698105 (= (generalisedConcat!109 l!9164) lt!870399)))

(declare-fun b!2390626 () Bool)

(assert (=> b!2390626 (= e!1523910 e!1523917)))

(declare-fun c!380238 () Bool)

(assert (=> b!2390626 (= c!380238 (isEmpty!16133 l!9164))))

(declare-fun b!2390627 () Bool)

(assert (=> b!2390627 (= e!1523912 (Concat!11644 (h!33557 l!9164) (generalisedConcat!109 (t!208231 l!9164))))))

(assert (= (and d!698105 res!1015576) b!2390620))

(assert (= (and d!698105 c!380240) b!2390624))

(assert (= (and d!698105 (not c!380240)) b!2390621))

(assert (= (and b!2390621 c!380237) b!2390627))

(assert (= (and b!2390621 (not c!380237)) b!2390625))

(assert (= (and d!698105 res!1015577) b!2390626))

(assert (= (and b!2390626 c!380238) b!2390619))

(assert (= (and b!2390626 (not c!380238)) b!2390618))

(assert (= (and b!2390618 c!380241) b!2390623))

(assert (= (and b!2390618 (not c!380241)) b!2390622))

(declare-fun m!2790801 () Bool)

(assert (=> b!2390620 m!2790801))

(declare-fun m!2790803 () Bool)

(assert (=> b!2390619 m!2790803))

(declare-fun m!2790805 () Bool)

(assert (=> b!2390622 m!2790805))

(assert (=> b!2390618 m!2790709))

(assert (=> b!2390618 m!2790709))

(declare-fun m!2790807 () Bool)

(assert (=> b!2390618 m!2790807))

(assert (=> b!2390626 m!2790713))

(declare-fun m!2790809 () Bool)

(assert (=> d!698105 m!2790809))

(declare-fun m!2790811 () Bool)

(assert (=> d!698105 m!2790811))

(assert (=> b!2390623 m!2790677))

(assert (=> b!2390627 m!2790681))

(assert (=> b!2390477 d!698105))

(declare-fun d!698107 () Bool)

(assert (=> d!698107 (matchR!3125 (Concat!11644 lt!870330 EmptyExpr!7008) (++!6962 s!9460 Nil!28157))))

(declare-fun lt!870402 () Unit!41147)

(declare-fun choose!14070 (Regex!7008 Regex!7008 List!28255 List!28255) Unit!41147)

(assert (=> d!698107 (= lt!870402 (choose!14070 lt!870330 EmptyExpr!7008 s!9460 Nil!28157))))

(declare-fun e!1523930 () Bool)

(assert (=> d!698107 e!1523930))

(declare-fun res!1015596 () Bool)

(assert (=> d!698107 (=> (not res!1015596) (not e!1523930))))

(assert (=> d!698107 (= res!1015596 (validRegex!2733 lt!870330))))

(assert (=> d!698107 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!45 lt!870330 EmptyExpr!7008 s!9460 Nil!28157) lt!870402)))

(declare-fun b!2390650 () Bool)

(assert (=> b!2390650 (= e!1523930 (validRegex!2733 EmptyExpr!7008))))

(assert (= (and d!698107 res!1015596) b!2390650))

(declare-fun m!2790813 () Bool)

(assert (=> d!698107 m!2790813))

(assert (=> d!698107 m!2790813))

(declare-fun m!2790815 () Bool)

(assert (=> d!698107 m!2790815))

(declare-fun m!2790817 () Bool)

(assert (=> d!698107 m!2790817))

(assert (=> d!698107 m!2790799))

(declare-fun m!2790819 () Bool)

(assert (=> b!2390650 m!2790819))

(assert (=> b!2390485 d!698107))

(declare-fun b!2390693 () Bool)

(declare-fun res!1015628 () Bool)

(declare-fun e!1523956 () Bool)

(assert (=> b!2390693 (=> res!1015628 e!1523956)))

(assert (=> b!2390693 (= res!1015628 (not (is-ElementMatch!7008 lt!870329)))))

(declare-fun e!1523957 () Bool)

(assert (=> b!2390693 (= e!1523957 e!1523956)))

(declare-fun b!2390694 () Bool)

(declare-fun e!1523955 () Bool)

(declare-fun nullable!2057 (Regex!7008) Bool)

(assert (=> b!2390694 (= e!1523955 (nullable!2057 lt!870329))))

(declare-fun b!2390695 () Bool)

(declare-fun e!1523952 () Bool)

(declare-fun e!1523954 () Bool)

(assert (=> b!2390695 (= e!1523952 e!1523954)))

(declare-fun res!1015625 () Bool)

(assert (=> b!2390695 (=> res!1015625 e!1523954)))

(declare-fun call!145520 () Bool)

(assert (=> b!2390695 (= res!1015625 call!145520)))

(declare-fun b!2390696 () Bool)

(declare-fun lt!870406 () Bool)

(assert (=> b!2390696 (= e!1523957 (not lt!870406))))

(declare-fun b!2390697 () Bool)

(declare-fun head!5250 (List!28255) C!14174)

(assert (=> b!2390697 (= e!1523954 (not (= (head!5250 call!145479) (c!380212 lt!870329))))))

(declare-fun b!2390698 () Bool)

(declare-fun e!1523953 () Bool)

(assert (=> b!2390698 (= e!1523953 (= (head!5250 call!145479) (c!380212 lt!870329)))))

(declare-fun bm!145515 () Bool)

(declare-fun isEmpty!16135 (List!28255) Bool)

(assert (=> bm!145515 (= call!145520 (isEmpty!16135 call!145479))))

(declare-fun b!2390699 () Bool)

(declare-fun e!1523958 () Bool)

(assert (=> b!2390699 (= e!1523958 e!1523957)))

(declare-fun c!380253 () Bool)

(assert (=> b!2390699 (= c!380253 (is-EmptyLang!7008 lt!870329))))

(declare-fun b!2390700 () Bool)

(assert (=> b!2390700 (= e!1523956 e!1523952)))

(declare-fun res!1015622 () Bool)

(assert (=> b!2390700 (=> (not res!1015622) (not e!1523952))))

(assert (=> b!2390700 (= res!1015622 (not lt!870406))))

(declare-fun b!2390701 () Bool)

(declare-fun res!1015623 () Bool)

(assert (=> b!2390701 (=> res!1015623 e!1523954)))

(declare-fun tail!3520 (List!28255) List!28255)

(assert (=> b!2390701 (= res!1015623 (not (isEmpty!16135 (tail!3520 call!145479))))))

(declare-fun d!698109 () Bool)

(assert (=> d!698109 e!1523958))

(declare-fun c!380255 () Bool)

(assert (=> d!698109 (= c!380255 (is-EmptyExpr!7008 lt!870329))))

(assert (=> d!698109 (= lt!870406 e!1523955)))

(declare-fun c!380254 () Bool)

(assert (=> d!698109 (= c!380254 (isEmpty!16135 call!145479))))

(assert (=> d!698109 (validRegex!2733 lt!870329)))

(assert (=> d!698109 (= (matchR!3125 lt!870329 call!145479) lt!870406)))

(declare-fun b!2390702 () Bool)

(declare-fun res!1015626 () Bool)

(assert (=> b!2390702 (=> (not res!1015626) (not e!1523953))))

(assert (=> b!2390702 (= res!1015626 (not call!145520))))

(declare-fun b!2390703 () Bool)

(declare-fun res!1015621 () Bool)

(assert (=> b!2390703 (=> res!1015621 e!1523956)))

(assert (=> b!2390703 (= res!1015621 e!1523953)))

(declare-fun res!1015624 () Bool)

(assert (=> b!2390703 (=> (not res!1015624) (not e!1523953))))

(assert (=> b!2390703 (= res!1015624 lt!870406)))

(declare-fun b!2390704 () Bool)

(declare-fun res!1015627 () Bool)

(assert (=> b!2390704 (=> (not res!1015627) (not e!1523953))))

(assert (=> b!2390704 (= res!1015627 (isEmpty!16135 (tail!3520 call!145479)))))

(declare-fun b!2390705 () Bool)

(assert (=> b!2390705 (= e!1523958 (= lt!870406 call!145520))))

(declare-fun b!2390706 () Bool)

(declare-fun derivativeStep!1715 (Regex!7008 C!14174) Regex!7008)

(assert (=> b!2390706 (= e!1523955 (matchR!3125 (derivativeStep!1715 lt!870329 (head!5250 call!145479)) (tail!3520 call!145479)))))

(assert (= (and d!698109 c!380254) b!2390694))

(assert (= (and d!698109 (not c!380254)) b!2390706))

(assert (= (and d!698109 c!380255) b!2390705))

(assert (= (and d!698109 (not c!380255)) b!2390699))

(assert (= (and b!2390699 c!380253) b!2390696))

(assert (= (and b!2390699 (not c!380253)) b!2390693))

(assert (= (and b!2390693 (not res!1015628)) b!2390703))

(assert (= (and b!2390703 res!1015624) b!2390702))

(assert (= (and b!2390702 res!1015626) b!2390704))

(assert (= (and b!2390704 res!1015627) b!2390698))

(assert (= (and b!2390703 (not res!1015621)) b!2390700))

(assert (= (and b!2390700 res!1015622) b!2390695))

(assert (= (and b!2390695 (not res!1015625)) b!2390701))

(assert (= (and b!2390701 (not res!1015623)) b!2390697))

(assert (= (or b!2390705 b!2390695 b!2390702) bm!145515))

(declare-fun m!2790837 () Bool)

(assert (=> d!698109 m!2790837))

(declare-fun m!2790839 () Bool)

(assert (=> d!698109 m!2790839))

(declare-fun m!2790841 () Bool)

(assert (=> b!2390701 m!2790841))

(assert (=> b!2390701 m!2790841))

(declare-fun m!2790843 () Bool)

(assert (=> b!2390701 m!2790843))

(declare-fun m!2790845 () Bool)

(assert (=> b!2390698 m!2790845))

(assert (=> bm!145515 m!2790837))

(assert (=> b!2390697 m!2790845))

(assert (=> b!2390704 m!2790841))

(assert (=> b!2390704 m!2790841))

(assert (=> b!2390704 m!2790843))

(declare-fun m!2790847 () Bool)

(assert (=> b!2390694 m!2790847))

(assert (=> b!2390706 m!2790845))

(assert (=> b!2390706 m!2790845))

(declare-fun m!2790849 () Bool)

(assert (=> b!2390706 m!2790849))

(assert (=> b!2390706 m!2790841))

(assert (=> b!2390706 m!2790849))

(assert (=> b!2390706 m!2790841))

(declare-fun m!2790851 () Bool)

(assert (=> b!2390706 m!2790851))

(assert (=> b!2390485 d!698109))

(declare-fun d!698113 () Bool)

(assert (=> d!698113 (isDefined!4379 (findConcatSeparation!659 lt!870330 EmptyExpr!7008 Nil!28157 s!9460 s!9460))))

(declare-fun lt!870409 () Unit!41147)

(declare-fun choose!14071 (Regex!7008 Regex!7008 List!28255) Unit!41147)

(assert (=> d!698113 (= lt!870409 (choose!14071 lt!870330 EmptyExpr!7008 s!9460))))

(assert (=> d!698113 (validRegex!2733 lt!870330)))

(assert (=> d!698113 (= (lemmaConcatAcceptsStringThenFindSeparationIsDefined!27 lt!870330 EmptyExpr!7008 s!9460) lt!870409)))

(declare-fun bs!462515 () Bool)

(assert (= bs!462515 d!698113))

(declare-fun m!2790853 () Bool)

(assert (=> bs!462515 m!2790853))

(assert (=> bs!462515 m!2790853))

(declare-fun m!2790855 () Bool)

(assert (=> bs!462515 m!2790855))

(declare-fun m!2790857 () Bool)

(assert (=> bs!462515 m!2790857))

(assert (=> bs!462515 m!2790799))

(assert (=> b!2390485 d!698113))

(declare-fun bs!462517 () Bool)

(declare-fun b!2390758 () Bool)

(assert (= bs!462517 (and b!2390758 b!2390489)))

(declare-fun lambda!89541 () Int)

(assert (=> bs!462517 (not (= lambda!89541 lambda!89521))))

(assert (=> bs!462517 (not (= lambda!89541 lambda!89522))))

(assert (=> b!2390758 true))

(assert (=> b!2390758 true))

(declare-fun bs!462518 () Bool)

(declare-fun b!2390765 () Bool)

(assert (= bs!462518 (and b!2390765 b!2390489)))

(declare-fun lambda!89542 () Int)

(assert (=> bs!462518 (not (= lambda!89542 lambda!89521))))

(assert (=> bs!462518 (= lambda!89542 lambda!89522)))

(declare-fun bs!462519 () Bool)

(assert (= bs!462519 (and b!2390765 b!2390758)))

(assert (=> bs!462519 (not (= lambda!89542 lambda!89541))))

(assert (=> b!2390765 true))

(assert (=> b!2390765 true))

(declare-fun b!2390757 () Bool)

(declare-fun e!1523992 () Bool)

(declare-fun call!145532 () Bool)

(assert (=> b!2390757 (= e!1523992 call!145532)))

(declare-fun e!1523996 () Bool)

(declare-fun call!145531 () Bool)

(assert (=> b!2390758 (= e!1523996 call!145531)))

(declare-fun b!2390759 () Bool)

(declare-fun c!380268 () Bool)

(assert (=> b!2390759 (= c!380268 (is-ElementMatch!7008 r!13927))))

(declare-fun e!1523991 () Bool)

(declare-fun e!1523994 () Bool)

(assert (=> b!2390759 (= e!1523991 e!1523994)))

(declare-fun b!2390760 () Bool)

(declare-fun e!1523993 () Bool)

(declare-fun e!1523995 () Bool)

(assert (=> b!2390760 (= e!1523993 e!1523995)))

(declare-fun res!1015656 () Bool)

(assert (=> b!2390760 (= res!1015656 (matchRSpec!857 (regOne!14529 r!13927) s!9460))))

(assert (=> b!2390760 (=> res!1015656 e!1523995)))

(declare-fun b!2390761 () Bool)

(assert (=> b!2390761 (= e!1523995 (matchRSpec!857 (regTwo!14529 r!13927) s!9460))))

(declare-fun d!698115 () Bool)

(declare-fun c!380271 () Bool)

(assert (=> d!698115 (= c!380271 (is-EmptyExpr!7008 r!13927))))

(assert (=> d!698115 (= (matchRSpec!857 r!13927 s!9460) e!1523992)))

(declare-fun c!380269 () Bool)

(declare-fun bm!145526 () Bool)

(assert (=> bm!145526 (= call!145531 (Exists!1070 (ite c!380269 lambda!89541 lambda!89542)))))

(declare-fun b!2390762 () Bool)

(declare-fun e!1523997 () Bool)

(assert (=> b!2390762 (= e!1523993 e!1523997)))

(assert (=> b!2390762 (= c!380269 (is-Star!7008 r!13927))))

(declare-fun b!2390763 () Bool)

(assert (=> b!2390763 (= e!1523992 e!1523991)))

(declare-fun res!1015655 () Bool)

(assert (=> b!2390763 (= res!1015655 (not (is-EmptyLang!7008 r!13927)))))

(assert (=> b!2390763 (=> (not res!1015655) (not e!1523991))))

(declare-fun b!2390764 () Bool)

(declare-fun c!380270 () Bool)

(assert (=> b!2390764 (= c!380270 (is-Union!7008 r!13927))))

(assert (=> b!2390764 (= e!1523994 e!1523993)))

(assert (=> b!2390765 (= e!1523997 call!145531)))

(declare-fun b!2390766 () Bool)

(declare-fun res!1015657 () Bool)

(assert (=> b!2390766 (=> res!1015657 e!1523996)))

(assert (=> b!2390766 (= res!1015657 call!145532)))

(assert (=> b!2390766 (= e!1523997 e!1523996)))

(declare-fun bm!145527 () Bool)

(assert (=> bm!145527 (= call!145532 (isEmpty!16135 s!9460))))

(declare-fun b!2390767 () Bool)

(assert (=> b!2390767 (= e!1523994 (= s!9460 (Cons!28157 (c!380212 r!13927) Nil!28157)))))

(assert (= (and d!698115 c!380271) b!2390757))

(assert (= (and d!698115 (not c!380271)) b!2390763))

(assert (= (and b!2390763 res!1015655) b!2390759))

(assert (= (and b!2390759 c!380268) b!2390767))

(assert (= (and b!2390759 (not c!380268)) b!2390764))

(assert (= (and b!2390764 c!380270) b!2390760))

(assert (= (and b!2390764 (not c!380270)) b!2390762))

(assert (= (and b!2390760 (not res!1015656)) b!2390761))

(assert (= (and b!2390762 c!380269) b!2390766))

(assert (= (and b!2390762 (not c!380269)) b!2390765))

(assert (= (and b!2390766 (not res!1015657)) b!2390758))

(assert (= (or b!2390758 b!2390765) bm!145526))

(assert (= (or b!2390757 b!2390766) bm!145527))

(declare-fun m!2790865 () Bool)

(assert (=> b!2390760 m!2790865))

(declare-fun m!2790867 () Bool)

(assert (=> b!2390761 m!2790867))

(declare-fun m!2790869 () Bool)

(assert (=> bm!145526 m!2790869))

(declare-fun m!2790871 () Bool)

(assert (=> bm!145527 m!2790871))

(assert (=> b!2390492 d!698115))

(declare-fun b!2390777 () Bool)

(declare-fun res!1015670 () Bool)

(declare-fun e!1524009 () Bool)

(assert (=> b!2390777 (=> res!1015670 e!1524009)))

(assert (=> b!2390777 (= res!1015670 (not (is-ElementMatch!7008 r!13927)))))

(declare-fun e!1524010 () Bool)

(assert (=> b!2390777 (= e!1524010 e!1524009)))

(declare-fun b!2390778 () Bool)

(declare-fun e!1524008 () Bool)

(assert (=> b!2390778 (= e!1524008 (nullable!2057 r!13927))))

(declare-fun b!2390779 () Bool)

(declare-fun e!1524005 () Bool)

(declare-fun e!1524007 () Bool)

(assert (=> b!2390779 (= e!1524005 e!1524007)))

(declare-fun res!1015667 () Bool)

(assert (=> b!2390779 (=> res!1015667 e!1524007)))

(declare-fun call!145536 () Bool)

(assert (=> b!2390779 (= res!1015667 call!145536)))

(declare-fun b!2390780 () Bool)

(declare-fun lt!870413 () Bool)

(assert (=> b!2390780 (= e!1524010 (not lt!870413))))

(declare-fun b!2390781 () Bool)

(assert (=> b!2390781 (= e!1524007 (not (= (head!5250 s!9460) (c!380212 r!13927))))))

(declare-fun b!2390782 () Bool)

(declare-fun e!1524006 () Bool)

(assert (=> b!2390782 (= e!1524006 (= (head!5250 s!9460) (c!380212 r!13927)))))

(declare-fun bm!145531 () Bool)

(assert (=> bm!145531 (= call!145536 (isEmpty!16135 s!9460))))

(declare-fun b!2390783 () Bool)

(declare-fun e!1524011 () Bool)

(assert (=> b!2390783 (= e!1524011 e!1524010)))

(declare-fun c!380274 () Bool)

(assert (=> b!2390783 (= c!380274 (is-EmptyLang!7008 r!13927))))

(declare-fun b!2390784 () Bool)

(assert (=> b!2390784 (= e!1524009 e!1524005)))

(declare-fun res!1015664 () Bool)

(assert (=> b!2390784 (=> (not res!1015664) (not e!1524005))))

(assert (=> b!2390784 (= res!1015664 (not lt!870413))))

(declare-fun b!2390785 () Bool)

(declare-fun res!1015665 () Bool)

(assert (=> b!2390785 (=> res!1015665 e!1524007)))

(assert (=> b!2390785 (= res!1015665 (not (isEmpty!16135 (tail!3520 s!9460))))))

(declare-fun d!698119 () Bool)

(assert (=> d!698119 e!1524011))

(declare-fun c!380276 () Bool)

(assert (=> d!698119 (= c!380276 (is-EmptyExpr!7008 r!13927))))

(assert (=> d!698119 (= lt!870413 e!1524008)))

(declare-fun c!380275 () Bool)

(assert (=> d!698119 (= c!380275 (isEmpty!16135 s!9460))))

(assert (=> d!698119 (validRegex!2733 r!13927)))

(assert (=> d!698119 (= (matchR!3125 r!13927 s!9460) lt!870413)))

(declare-fun b!2390786 () Bool)

(declare-fun res!1015668 () Bool)

(assert (=> b!2390786 (=> (not res!1015668) (not e!1524006))))

(assert (=> b!2390786 (= res!1015668 (not call!145536))))

(declare-fun b!2390787 () Bool)

(declare-fun res!1015663 () Bool)

(assert (=> b!2390787 (=> res!1015663 e!1524009)))

(assert (=> b!2390787 (= res!1015663 e!1524006)))

(declare-fun res!1015666 () Bool)

(assert (=> b!2390787 (=> (not res!1015666) (not e!1524006))))

(assert (=> b!2390787 (= res!1015666 lt!870413)))

(declare-fun b!2390788 () Bool)

(declare-fun res!1015669 () Bool)

(assert (=> b!2390788 (=> (not res!1015669) (not e!1524006))))

(assert (=> b!2390788 (= res!1015669 (isEmpty!16135 (tail!3520 s!9460)))))

(declare-fun b!2390789 () Bool)

(assert (=> b!2390789 (= e!1524011 (= lt!870413 call!145536))))

(declare-fun b!2390790 () Bool)

(assert (=> b!2390790 (= e!1524008 (matchR!3125 (derivativeStep!1715 r!13927 (head!5250 s!9460)) (tail!3520 s!9460)))))

(assert (= (and d!698119 c!380275) b!2390778))

(assert (= (and d!698119 (not c!380275)) b!2390790))

(assert (= (and d!698119 c!380276) b!2390789))

(assert (= (and d!698119 (not c!380276)) b!2390783))

(assert (= (and b!2390783 c!380274) b!2390780))

(assert (= (and b!2390783 (not c!380274)) b!2390777))

(assert (= (and b!2390777 (not res!1015670)) b!2390787))

(assert (= (and b!2390787 res!1015666) b!2390786))

(assert (= (and b!2390786 res!1015668) b!2390788))

(assert (= (and b!2390788 res!1015669) b!2390782))

(assert (= (and b!2390787 (not res!1015663)) b!2390784))

(assert (= (and b!2390784 res!1015664) b!2390779))

(assert (= (and b!2390779 (not res!1015667)) b!2390785))

(assert (= (and b!2390785 (not res!1015665)) b!2390781))

(assert (= (or b!2390789 b!2390779 b!2390786) bm!145531))

(assert (=> d!698119 m!2790871))

(declare-fun m!2790879 () Bool)

(assert (=> d!698119 m!2790879))

(declare-fun m!2790881 () Bool)

(assert (=> b!2390785 m!2790881))

(assert (=> b!2390785 m!2790881))

(declare-fun m!2790883 () Bool)

(assert (=> b!2390785 m!2790883))

(declare-fun m!2790885 () Bool)

(assert (=> b!2390782 m!2790885))

(assert (=> bm!145531 m!2790871))

(assert (=> b!2390781 m!2790885))

(assert (=> b!2390788 m!2790881))

(assert (=> b!2390788 m!2790881))

(assert (=> b!2390788 m!2790883))

(declare-fun m!2790887 () Bool)

(assert (=> b!2390778 m!2790887))

(assert (=> b!2390790 m!2790885))

(assert (=> b!2390790 m!2790885))

(declare-fun m!2790889 () Bool)

(assert (=> b!2390790 m!2790889))

(assert (=> b!2390790 m!2790881))

(assert (=> b!2390790 m!2790889))

(assert (=> b!2390790 m!2790881))

(declare-fun m!2790891 () Bool)

(assert (=> b!2390790 m!2790891))

(assert (=> b!2390492 d!698119))

(declare-fun d!698123 () Bool)

(assert (=> d!698123 (= (matchR!3125 r!13927 s!9460) (matchRSpec!857 r!13927 s!9460))))

(declare-fun lt!870416 () Unit!41147)

(declare-fun choose!14072 (Regex!7008 List!28255) Unit!41147)

(assert (=> d!698123 (= lt!870416 (choose!14072 r!13927 s!9460))))

(assert (=> d!698123 (validRegex!2733 r!13927)))

(assert (=> d!698123 (= (mainMatchTheorem!857 r!13927 s!9460) lt!870416)))

(declare-fun bs!462520 () Bool)

(assert (= bs!462520 d!698123))

(assert (=> bs!462520 m!2790699))

(assert (=> bs!462520 m!2790697))

(declare-fun m!2790893 () Bool)

(assert (=> bs!462520 m!2790893))

(assert (=> bs!462520 m!2790879))

(assert (=> b!2390492 d!698123))

(declare-fun b!2390791 () Bool)

(declare-fun res!1015678 () Bool)

(declare-fun e!1524016 () Bool)

(assert (=> b!2390791 (=> res!1015678 e!1524016)))

(assert (=> b!2390791 (= res!1015678 (not (is-ElementMatch!7008 (ite c!380209 lt!870329 (Concat!11644 lt!870330 EmptyExpr!7008)))))))

(declare-fun e!1524017 () Bool)

(assert (=> b!2390791 (= e!1524017 e!1524016)))

(declare-fun b!2390792 () Bool)

(declare-fun e!1524015 () Bool)

(assert (=> b!2390792 (= e!1524015 (nullable!2057 (ite c!380209 lt!870329 (Concat!11644 lt!870330 EmptyExpr!7008))))))

(declare-fun b!2390793 () Bool)

(declare-fun e!1524012 () Bool)

(declare-fun e!1524014 () Bool)

(assert (=> b!2390793 (= e!1524012 e!1524014)))

(declare-fun res!1015675 () Bool)

(assert (=> b!2390793 (=> res!1015675 e!1524014)))

(declare-fun call!145537 () Bool)

(assert (=> b!2390793 (= res!1015675 call!145537)))

(declare-fun b!2390794 () Bool)

(declare-fun lt!870417 () Bool)

(assert (=> b!2390794 (= e!1524017 (not lt!870417))))

(declare-fun b!2390795 () Bool)

(assert (=> b!2390795 (= e!1524014 (not (= (head!5250 (ite c!380209 s!9460 call!145479)) (c!380212 (ite c!380209 lt!870329 (Concat!11644 lt!870330 EmptyExpr!7008))))))))

(declare-fun b!2390796 () Bool)

(declare-fun e!1524013 () Bool)

(assert (=> b!2390796 (= e!1524013 (= (head!5250 (ite c!380209 s!9460 call!145479)) (c!380212 (ite c!380209 lt!870329 (Concat!11644 lt!870330 EmptyExpr!7008)))))))

(declare-fun bm!145532 () Bool)

(assert (=> bm!145532 (= call!145537 (isEmpty!16135 (ite c!380209 s!9460 call!145479)))))

(declare-fun b!2390797 () Bool)

(declare-fun e!1524018 () Bool)

(assert (=> b!2390797 (= e!1524018 e!1524017)))

(declare-fun c!380277 () Bool)

(assert (=> b!2390797 (= c!380277 (is-EmptyLang!7008 (ite c!380209 lt!870329 (Concat!11644 lt!870330 EmptyExpr!7008))))))

(declare-fun b!2390798 () Bool)

(assert (=> b!2390798 (= e!1524016 e!1524012)))

(declare-fun res!1015672 () Bool)

(assert (=> b!2390798 (=> (not res!1015672) (not e!1524012))))

(assert (=> b!2390798 (= res!1015672 (not lt!870417))))

(declare-fun b!2390799 () Bool)

(declare-fun res!1015673 () Bool)

(assert (=> b!2390799 (=> res!1015673 e!1524014)))

(assert (=> b!2390799 (= res!1015673 (not (isEmpty!16135 (tail!3520 (ite c!380209 s!9460 call!145479)))))))

(declare-fun d!698125 () Bool)

(assert (=> d!698125 e!1524018))

(declare-fun c!380279 () Bool)

(assert (=> d!698125 (= c!380279 (is-EmptyExpr!7008 (ite c!380209 lt!870329 (Concat!11644 lt!870330 EmptyExpr!7008))))))

(assert (=> d!698125 (= lt!870417 e!1524015)))

(declare-fun c!380278 () Bool)

(assert (=> d!698125 (= c!380278 (isEmpty!16135 (ite c!380209 s!9460 call!145479)))))

(assert (=> d!698125 (validRegex!2733 (ite c!380209 lt!870329 (Concat!11644 lt!870330 EmptyExpr!7008)))))

(assert (=> d!698125 (= (matchR!3125 (ite c!380209 lt!870329 (Concat!11644 lt!870330 EmptyExpr!7008)) (ite c!380209 s!9460 call!145479)) lt!870417)))

(declare-fun b!2390800 () Bool)

(declare-fun res!1015676 () Bool)

(assert (=> b!2390800 (=> (not res!1015676) (not e!1524013))))

(assert (=> b!2390800 (= res!1015676 (not call!145537))))

(declare-fun b!2390801 () Bool)

(declare-fun res!1015671 () Bool)

(assert (=> b!2390801 (=> res!1015671 e!1524016)))

(assert (=> b!2390801 (= res!1015671 e!1524013)))

(declare-fun res!1015674 () Bool)

(assert (=> b!2390801 (=> (not res!1015674) (not e!1524013))))

(assert (=> b!2390801 (= res!1015674 lt!870417)))

(declare-fun b!2390802 () Bool)

(declare-fun res!1015677 () Bool)

(assert (=> b!2390802 (=> (not res!1015677) (not e!1524013))))

(assert (=> b!2390802 (= res!1015677 (isEmpty!16135 (tail!3520 (ite c!380209 s!9460 call!145479))))))

(declare-fun b!2390803 () Bool)

(assert (=> b!2390803 (= e!1524018 (= lt!870417 call!145537))))

(declare-fun b!2390804 () Bool)

(assert (=> b!2390804 (= e!1524015 (matchR!3125 (derivativeStep!1715 (ite c!380209 lt!870329 (Concat!11644 lt!870330 EmptyExpr!7008)) (head!5250 (ite c!380209 s!9460 call!145479))) (tail!3520 (ite c!380209 s!9460 call!145479))))))

(assert (= (and d!698125 c!380278) b!2390792))

(assert (= (and d!698125 (not c!380278)) b!2390804))

(assert (= (and d!698125 c!380279) b!2390803))

(assert (= (and d!698125 (not c!380279)) b!2390797))

(assert (= (and b!2390797 c!380277) b!2390794))

(assert (= (and b!2390797 (not c!380277)) b!2390791))

(assert (= (and b!2390791 (not res!1015678)) b!2390801))

(assert (= (and b!2390801 res!1015674) b!2390800))

(assert (= (and b!2390800 res!1015676) b!2390802))

(assert (= (and b!2390802 res!1015677) b!2390796))

(assert (= (and b!2390801 (not res!1015671)) b!2390798))

(assert (= (and b!2390798 res!1015672) b!2390793))

(assert (= (and b!2390793 (not res!1015675)) b!2390799))

(assert (= (and b!2390799 (not res!1015673)) b!2390795))

(assert (= (or b!2390803 b!2390793 b!2390800) bm!145532))

(declare-fun m!2790895 () Bool)

(assert (=> d!698125 m!2790895))

(declare-fun m!2790897 () Bool)

(assert (=> d!698125 m!2790897))

(declare-fun m!2790899 () Bool)

(assert (=> b!2390799 m!2790899))

(assert (=> b!2390799 m!2790899))

(declare-fun m!2790901 () Bool)

(assert (=> b!2390799 m!2790901))

(declare-fun m!2790903 () Bool)

(assert (=> b!2390796 m!2790903))

(assert (=> bm!145532 m!2790895))

(assert (=> b!2390795 m!2790903))

(assert (=> b!2390802 m!2790899))

(assert (=> b!2390802 m!2790899))

(assert (=> b!2390802 m!2790901))

(declare-fun m!2790905 () Bool)

(assert (=> b!2390792 m!2790905))

(assert (=> b!2390804 m!2790903))

(assert (=> b!2390804 m!2790903))

(declare-fun m!2790907 () Bool)

(assert (=> b!2390804 m!2790907))

(assert (=> b!2390804 m!2790899))

(assert (=> b!2390804 m!2790907))

(assert (=> b!2390804 m!2790899))

(declare-fun m!2790909 () Bool)

(assert (=> b!2390804 m!2790909))

(assert (=> bm!145466 d!698125))

(declare-fun d!698127 () Bool)

(assert (=> d!698127 (= (head!5248 l!9164) (h!33557 l!9164))))

(assert (=> bm!145476 d!698127))

(declare-fun bm!145539 () Bool)

(declare-fun call!145546 () Bool)

(declare-fun c!380289 () Bool)

(assert (=> bm!145539 (= call!145546 (validRegex!2733 (ite c!380289 (regTwo!14529 (h!33557 l!9164)) (regOne!14528 (h!33557 l!9164)))))))

(declare-fun b!2390833 () Bool)

(declare-fun e!1524045 () Bool)

(declare-fun e!1524043 () Bool)

(assert (=> b!2390833 (= e!1524045 e!1524043)))

(declare-fun res!1015695 () Bool)

(assert (=> b!2390833 (= res!1015695 (not (nullable!2057 (reg!7337 (h!33557 l!9164)))))))

(assert (=> b!2390833 (=> (not res!1015695) (not e!1524043))))

(declare-fun b!2390834 () Bool)

(declare-fun e!1524039 () Bool)

(declare-fun e!1524040 () Bool)

(assert (=> b!2390834 (= e!1524039 e!1524040)))

(declare-fun res!1015693 () Bool)

(assert (=> b!2390834 (=> (not res!1015693) (not e!1524040))))

(assert (=> b!2390834 (= res!1015693 call!145546)))

(declare-fun d!698129 () Bool)

(declare-fun res!1015694 () Bool)

(declare-fun e!1524041 () Bool)

(assert (=> d!698129 (=> res!1015694 e!1524041)))

(assert (=> d!698129 (= res!1015694 (is-ElementMatch!7008 (h!33557 l!9164)))))

(assert (=> d!698129 (= (validRegex!2733 (h!33557 l!9164)) e!1524041)))

(declare-fun b!2390835 () Bool)

(declare-fun call!145545 () Bool)

(assert (=> b!2390835 (= e!1524043 call!145545)))

(declare-fun b!2390836 () Bool)

(declare-fun e!1524042 () Bool)

(assert (=> b!2390836 (= e!1524045 e!1524042)))

(assert (=> b!2390836 (= c!380289 (is-Union!7008 (h!33557 l!9164)))))

(declare-fun b!2390837 () Bool)

(declare-fun call!145544 () Bool)

(assert (=> b!2390837 (= e!1524040 call!145544)))

(declare-fun b!2390838 () Bool)

(assert (=> b!2390838 (= e!1524041 e!1524045)))

(declare-fun c!380288 () Bool)

(assert (=> b!2390838 (= c!380288 (is-Star!7008 (h!33557 l!9164)))))

(declare-fun b!2390839 () Bool)

(declare-fun res!1015691 () Bool)

(assert (=> b!2390839 (=> res!1015691 e!1524039)))

(assert (=> b!2390839 (= res!1015691 (not (is-Concat!11644 (h!33557 l!9164))))))

(assert (=> b!2390839 (= e!1524042 e!1524039)))

(declare-fun bm!145540 () Bool)

(assert (=> bm!145540 (= call!145545 (validRegex!2733 (ite c!380288 (reg!7337 (h!33557 l!9164)) (ite c!380289 (regOne!14529 (h!33557 l!9164)) (regTwo!14528 (h!33557 l!9164))))))))

(declare-fun bm!145541 () Bool)

(assert (=> bm!145541 (= call!145544 call!145545)))

(declare-fun b!2390840 () Bool)

(declare-fun res!1015692 () Bool)

(declare-fun e!1524044 () Bool)

(assert (=> b!2390840 (=> (not res!1015692) (not e!1524044))))

(assert (=> b!2390840 (= res!1015692 call!145544)))

(assert (=> b!2390840 (= e!1524042 e!1524044)))

(declare-fun b!2390841 () Bool)

(assert (=> b!2390841 (= e!1524044 call!145546)))

(assert (= (and d!698129 (not res!1015694)) b!2390838))

(assert (= (and b!2390838 c!380288) b!2390833))

(assert (= (and b!2390838 (not c!380288)) b!2390836))

(assert (= (and b!2390833 res!1015695) b!2390835))

(assert (= (and b!2390836 c!380289) b!2390840))

(assert (= (and b!2390836 (not c!380289)) b!2390839))

(assert (= (and b!2390840 res!1015692) b!2390841))

(assert (= (and b!2390839 (not res!1015691)) b!2390834))

(assert (= (and b!2390834 res!1015693) b!2390837))

(assert (= (or b!2390840 b!2390837) bm!145541))

(assert (= (or b!2390841 b!2390834) bm!145539))

(assert (= (or b!2390835 bm!145541) bm!145540))

(declare-fun m!2790911 () Bool)

(assert (=> bm!145539 m!2790911))

(declare-fun m!2790913 () Bool)

(assert (=> b!2390833 m!2790913))

(declare-fun m!2790915 () Bool)

(assert (=> bm!145540 m!2790915))

(assert (=> b!2390484 d!698129))

(declare-fun bs!462521 () Bool)

(declare-fun d!698131 () Bool)

(assert (= bs!462521 (and d!698131 start!234582)))

(declare-fun lambda!89545 () Int)

(assert (=> bs!462521 (= lambda!89545 lambda!89520)))

(declare-fun bs!462522 () Bool)

(assert (= bs!462522 (and d!698131 d!698105)))

(assert (=> bs!462522 (= lambda!89545 lambda!89536)))

(declare-fun b!2390852 () Bool)

(declare-fun e!1524057 () Bool)

(declare-fun e!1524053 () Bool)

(assert (=> b!2390852 (= e!1524057 e!1524053)))

(declare-fun c!380297 () Bool)

(assert (=> b!2390852 (= c!380297 (isEmpty!16133 (tail!3518 (t!208231 l!9164))))))

(declare-fun b!2390853 () Bool)

(declare-fun lt!870420 () Regex!7008)

(assert (=> b!2390853 (= e!1524057 (isEmptyExpr!78 lt!870420))))

(declare-fun b!2390854 () Bool)

(declare-fun e!1524055 () Bool)

(assert (=> b!2390854 (= e!1524055 (isEmpty!16133 (t!208231 (t!208231 l!9164))))))

(declare-fun b!2390855 () Bool)

(declare-fun e!1524056 () Regex!7008)

(declare-fun e!1524054 () Regex!7008)

(assert (=> b!2390855 (= e!1524056 e!1524054)))

(declare-fun c!380294 () Bool)

(assert (=> b!2390855 (= c!380294 (is-Cons!28156 (t!208231 l!9164)))))

(declare-fun b!2390856 () Bool)

(assert (=> b!2390856 (= e!1524053 (isConcat!78 lt!870420))))

(declare-fun b!2390857 () Bool)

(assert (=> b!2390857 (= e!1524053 (= lt!870420 (head!5248 (t!208231 l!9164))))))

(declare-fun b!2390858 () Bool)

(assert (=> b!2390858 (= e!1524056 (h!33557 (t!208231 l!9164)))))

(declare-fun b!2390859 () Bool)

(assert (=> b!2390859 (= e!1524054 EmptyExpr!7008)))

(declare-fun e!1524052 () Bool)

(assert (=> d!698131 e!1524052))

(declare-fun res!1015699 () Bool)

(assert (=> d!698131 (=> (not res!1015699) (not e!1524052))))

(assert (=> d!698131 (= res!1015699 (validRegex!2733 lt!870420))))

(assert (=> d!698131 (= lt!870420 e!1524056)))

(declare-fun c!380296 () Bool)

(assert (=> d!698131 (= c!380296 e!1524055)))

(declare-fun res!1015698 () Bool)

(assert (=> d!698131 (=> (not res!1015698) (not e!1524055))))

(assert (=> d!698131 (= res!1015698 (is-Cons!28156 (t!208231 l!9164)))))

(assert (=> d!698131 (forall!5642 (t!208231 l!9164) lambda!89545)))

(assert (=> d!698131 (= (generalisedConcat!109 (t!208231 l!9164)) lt!870420)))

(declare-fun b!2390860 () Bool)

(assert (=> b!2390860 (= e!1524052 e!1524057)))

(declare-fun c!380295 () Bool)

(assert (=> b!2390860 (= c!380295 (isEmpty!16133 (t!208231 l!9164)))))

(declare-fun b!2390861 () Bool)

(assert (=> b!2390861 (= e!1524054 (Concat!11644 (h!33557 (t!208231 l!9164)) (generalisedConcat!109 (t!208231 (t!208231 l!9164)))))))

(assert (= (and d!698131 res!1015698) b!2390854))

(assert (= (and d!698131 c!380296) b!2390858))

(assert (= (and d!698131 (not c!380296)) b!2390855))

(assert (= (and b!2390855 c!380294) b!2390861))

(assert (= (and b!2390855 (not c!380294)) b!2390859))

(assert (= (and d!698131 res!1015699) b!2390860))

(assert (= (and b!2390860 c!380295) b!2390853))

(assert (= (and b!2390860 (not c!380295)) b!2390852))

(assert (= (and b!2390852 c!380297) b!2390857))

(assert (= (and b!2390852 (not c!380297)) b!2390856))

(declare-fun m!2790917 () Bool)

(assert (=> b!2390854 m!2790917))

(declare-fun m!2790919 () Bool)

(assert (=> b!2390853 m!2790919))

(declare-fun m!2790921 () Bool)

(assert (=> b!2390856 m!2790921))

(declare-fun m!2790923 () Bool)

(assert (=> b!2390852 m!2790923))

(assert (=> b!2390852 m!2790923))

(declare-fun m!2790925 () Bool)

(assert (=> b!2390852 m!2790925))

(assert (=> b!2390860 m!2790801))

(declare-fun m!2790927 () Bool)

(assert (=> d!698131 m!2790927))

(declare-fun m!2790929 () Bool)

(assert (=> d!698131 m!2790929))

(declare-fun m!2790931 () Bool)

(assert (=> b!2390857 m!2790931))

(declare-fun m!2790933 () Bool)

(assert (=> b!2390861 m!2790933))

(assert (=> b!2390484 d!698131))

(declare-fun d!698133 () Bool)

(declare-fun isEmpty!16136 (Option!5551) Bool)

(assert (=> d!698133 (= (isDefined!4379 (findConcatSeparation!659 lt!870330 call!145481 Nil!28157 s!9460 s!9460)) (not (isEmpty!16136 (findConcatSeparation!659 lt!870330 call!145481 Nil!28157 s!9460 s!9460))))))

(declare-fun bs!462523 () Bool)

(assert (= bs!462523 d!698133))

(assert (=> bs!462523 m!2790685))

(declare-fun m!2790935 () Bool)

(assert (=> bs!462523 m!2790935))

(assert (=> b!2390497 d!698133))

(declare-fun b!2390890 () Bool)

(declare-fun e!1524075 () Bool)

(assert (=> b!2390890 (= e!1524075 (matchR!3125 call!145481 s!9460))))

(declare-fun b!2390891 () Bool)

(declare-fun lt!870429 () Unit!41147)

(declare-fun lt!870428 () Unit!41147)

(assert (=> b!2390891 (= lt!870429 lt!870428)))

(assert (=> b!2390891 (= (++!6962 (++!6962 Nil!28157 (Cons!28157 (h!33558 s!9460) Nil!28157)) (t!208232 s!9460)) s!9460)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!604 (List!28255 C!14174 List!28255 List!28255) Unit!41147)

(assert (=> b!2390891 (= lt!870428 (lemmaMoveElementToOtherListKeepsConcatEq!604 Nil!28157 (h!33558 s!9460) (t!208232 s!9460) s!9460))))

(declare-fun e!1524077 () Option!5551)

(assert (=> b!2390891 (= e!1524077 (findConcatSeparation!659 lt!870330 call!145481 (++!6962 Nil!28157 (Cons!28157 (h!33558 s!9460) Nil!28157)) (t!208232 s!9460) s!9460))))

(declare-fun b!2390892 () Bool)

(declare-fun res!1015714 () Bool)

(declare-fun e!1524074 () Bool)

(assert (=> b!2390892 (=> (not res!1015714) (not e!1524074))))

(declare-fun lt!870430 () Option!5551)

(assert (=> b!2390892 (= res!1015714 (matchR!3125 call!145481 (_2!16481 (get!8610 lt!870430))))))

(declare-fun b!2390893 () Bool)

(declare-fun res!1015712 () Bool)

(assert (=> b!2390893 (=> (not res!1015712) (not e!1524074))))

(assert (=> b!2390893 (= res!1015712 (matchR!3125 lt!870330 (_1!16481 (get!8610 lt!870430))))))

(declare-fun b!2390894 () Bool)

(assert (=> b!2390894 (= e!1524077 None!5550)))

(declare-fun b!2390895 () Bool)

(declare-fun e!1524076 () Option!5551)

(assert (=> b!2390895 (= e!1524076 e!1524077)))

(declare-fun c!380307 () Bool)

(assert (=> b!2390895 (= c!380307 (is-Nil!28157 s!9460))))

(declare-fun b!2390896 () Bool)

(assert (=> b!2390896 (= e!1524074 (= (++!6962 (_1!16481 (get!8610 lt!870430)) (_2!16481 (get!8610 lt!870430))) s!9460))))

(declare-fun d!698135 () Bool)

(declare-fun e!1524078 () Bool)

(assert (=> d!698135 e!1524078))

(declare-fun res!1015715 () Bool)

(assert (=> d!698135 (=> res!1015715 e!1524078)))

(assert (=> d!698135 (= res!1015715 e!1524074)))

(declare-fun res!1015716 () Bool)

(assert (=> d!698135 (=> (not res!1015716) (not e!1524074))))

(assert (=> d!698135 (= res!1015716 (isDefined!4379 lt!870430))))

(assert (=> d!698135 (= lt!870430 e!1524076)))

(declare-fun c!380306 () Bool)

(assert (=> d!698135 (= c!380306 e!1524075)))

(declare-fun res!1015713 () Bool)

(assert (=> d!698135 (=> (not res!1015713) (not e!1524075))))

(assert (=> d!698135 (= res!1015713 (matchR!3125 lt!870330 Nil!28157))))

(assert (=> d!698135 (validRegex!2733 lt!870330)))

(assert (=> d!698135 (= (findConcatSeparation!659 lt!870330 call!145481 Nil!28157 s!9460 s!9460) lt!870430)))

(declare-fun b!2390897 () Bool)

(assert (=> b!2390897 (= e!1524078 (not (isDefined!4379 lt!870430)))))

(declare-fun b!2390898 () Bool)

(assert (=> b!2390898 (= e!1524076 (Some!5550 (tuple2!27881 Nil!28157 s!9460)))))

(assert (= (and d!698135 res!1015713) b!2390890))

(assert (= (and d!698135 c!380306) b!2390898))

(assert (= (and d!698135 (not c!380306)) b!2390895))

(assert (= (and b!2390895 c!380307) b!2390894))

(assert (= (and b!2390895 (not c!380307)) b!2390891))

(assert (= (and d!698135 res!1015716) b!2390893))

(assert (= (and b!2390893 res!1015712) b!2390892))

(assert (= (and b!2390892 res!1015714) b!2390896))

(assert (= (and d!698135 (not res!1015715)) b!2390897))

(declare-fun m!2790957 () Bool)

(assert (=> b!2390896 m!2790957))

(declare-fun m!2790959 () Bool)

(assert (=> b!2390896 m!2790959))

(declare-fun m!2790961 () Bool)

(assert (=> b!2390891 m!2790961))

(assert (=> b!2390891 m!2790961))

(declare-fun m!2790963 () Bool)

(assert (=> b!2390891 m!2790963))

(declare-fun m!2790965 () Bool)

(assert (=> b!2390891 m!2790965))

(assert (=> b!2390891 m!2790961))

(declare-fun m!2790967 () Bool)

(assert (=> b!2390891 m!2790967))

(declare-fun m!2790969 () Bool)

(assert (=> b!2390890 m!2790969))

(declare-fun m!2790971 () Bool)

(assert (=> b!2390897 m!2790971))

(assert (=> b!2390893 m!2790957))

(declare-fun m!2790973 () Bool)

(assert (=> b!2390893 m!2790973))

(assert (=> b!2390892 m!2790957))

(declare-fun m!2790975 () Bool)

(assert (=> b!2390892 m!2790975))

(assert (=> d!698135 m!2790971))

(declare-fun m!2790977 () Bool)

(assert (=> d!698135 m!2790977))

(assert (=> d!698135 m!2790799))

(assert (=> b!2390497 d!698135))

(declare-fun b!2390899 () Bool)

(declare-fun res!1015724 () Bool)

(declare-fun e!1524083 () Bool)

(assert (=> b!2390899 (=> res!1015724 e!1524083)))

(assert (=> b!2390899 (= res!1015724 (not (is-ElementMatch!7008 lt!870330)))))

(declare-fun e!1524084 () Bool)

(assert (=> b!2390899 (= e!1524084 e!1524083)))

(declare-fun b!2390900 () Bool)

(declare-fun e!1524082 () Bool)

(assert (=> b!2390900 (= e!1524082 (nullable!2057 lt!870330))))

(declare-fun b!2390901 () Bool)

(declare-fun e!1524079 () Bool)

(declare-fun e!1524081 () Bool)

(assert (=> b!2390901 (= e!1524079 e!1524081)))

(declare-fun res!1015721 () Bool)

(assert (=> b!2390901 (=> res!1015721 e!1524081)))

(declare-fun call!145547 () Bool)

(assert (=> b!2390901 (= res!1015721 call!145547)))

(declare-fun b!2390902 () Bool)

(declare-fun lt!870431 () Bool)

(assert (=> b!2390902 (= e!1524084 (not lt!870431))))

(declare-fun b!2390903 () Bool)

(assert (=> b!2390903 (= e!1524081 (not (= (head!5250 s!9460) (c!380212 lt!870330))))))

(declare-fun b!2390904 () Bool)

(declare-fun e!1524080 () Bool)

(assert (=> b!2390904 (= e!1524080 (= (head!5250 s!9460) (c!380212 lt!870330)))))

(declare-fun bm!145542 () Bool)

(assert (=> bm!145542 (= call!145547 (isEmpty!16135 s!9460))))

(declare-fun b!2390905 () Bool)

(declare-fun e!1524085 () Bool)

(assert (=> b!2390905 (= e!1524085 e!1524084)))

(declare-fun c!380308 () Bool)

(assert (=> b!2390905 (= c!380308 (is-EmptyLang!7008 lt!870330))))

(declare-fun b!2390906 () Bool)

(assert (=> b!2390906 (= e!1524083 e!1524079)))

(declare-fun res!1015718 () Bool)

(assert (=> b!2390906 (=> (not res!1015718) (not e!1524079))))

(assert (=> b!2390906 (= res!1015718 (not lt!870431))))

(declare-fun b!2390907 () Bool)

(declare-fun res!1015719 () Bool)

(assert (=> b!2390907 (=> res!1015719 e!1524081)))

(assert (=> b!2390907 (= res!1015719 (not (isEmpty!16135 (tail!3520 s!9460))))))

(declare-fun d!698141 () Bool)

(assert (=> d!698141 e!1524085))

(declare-fun c!380310 () Bool)

(assert (=> d!698141 (= c!380310 (is-EmptyExpr!7008 lt!870330))))

(assert (=> d!698141 (= lt!870431 e!1524082)))

(declare-fun c!380309 () Bool)

(assert (=> d!698141 (= c!380309 (isEmpty!16135 s!9460))))

(assert (=> d!698141 (validRegex!2733 lt!870330)))

(assert (=> d!698141 (= (matchR!3125 lt!870330 s!9460) lt!870431)))

(declare-fun b!2390908 () Bool)

(declare-fun res!1015722 () Bool)

(assert (=> b!2390908 (=> (not res!1015722) (not e!1524080))))

(assert (=> b!2390908 (= res!1015722 (not call!145547))))

(declare-fun b!2390909 () Bool)

(declare-fun res!1015717 () Bool)

(assert (=> b!2390909 (=> res!1015717 e!1524083)))

(assert (=> b!2390909 (= res!1015717 e!1524080)))

(declare-fun res!1015720 () Bool)

(assert (=> b!2390909 (=> (not res!1015720) (not e!1524080))))

(assert (=> b!2390909 (= res!1015720 lt!870431)))

(declare-fun b!2390910 () Bool)

(declare-fun res!1015723 () Bool)

(assert (=> b!2390910 (=> (not res!1015723) (not e!1524080))))

(assert (=> b!2390910 (= res!1015723 (isEmpty!16135 (tail!3520 s!9460)))))

(declare-fun b!2390911 () Bool)

(assert (=> b!2390911 (= e!1524085 (= lt!870431 call!145547))))

(declare-fun b!2390912 () Bool)

(assert (=> b!2390912 (= e!1524082 (matchR!3125 (derivativeStep!1715 lt!870330 (head!5250 s!9460)) (tail!3520 s!9460)))))

(assert (= (and d!698141 c!380309) b!2390900))

(assert (= (and d!698141 (not c!380309)) b!2390912))

(assert (= (and d!698141 c!380310) b!2390911))

(assert (= (and d!698141 (not c!380310)) b!2390905))

(assert (= (and b!2390905 c!380308) b!2390902))

(assert (= (and b!2390905 (not c!380308)) b!2390899))

(assert (= (and b!2390899 (not res!1015724)) b!2390909))

(assert (= (and b!2390909 res!1015720) b!2390908))

(assert (= (and b!2390908 res!1015722) b!2390910))

(assert (= (and b!2390910 res!1015723) b!2390904))

(assert (= (and b!2390909 (not res!1015717)) b!2390906))

(assert (= (and b!2390906 res!1015718) b!2390901))

(assert (= (and b!2390901 (not res!1015721)) b!2390907))

(assert (= (and b!2390907 (not res!1015719)) b!2390903))

(assert (= (or b!2390911 b!2390901 b!2390908) bm!145542))

(assert (=> d!698141 m!2790871))

(assert (=> d!698141 m!2790799))

(assert (=> b!2390907 m!2790881))

(assert (=> b!2390907 m!2790881))

(assert (=> b!2390907 m!2790883))

(assert (=> b!2390904 m!2790885))

(assert (=> bm!145542 m!2790871))

(assert (=> b!2390903 m!2790885))

(assert (=> b!2390910 m!2790881))

(assert (=> b!2390910 m!2790881))

(assert (=> b!2390910 m!2790883))

(declare-fun m!2790979 () Bool)

(assert (=> b!2390900 m!2790979))

(assert (=> b!2390912 m!2790885))

(assert (=> b!2390912 m!2790885))

(declare-fun m!2790981 () Bool)

(assert (=> b!2390912 m!2790981))

(assert (=> b!2390912 m!2790881))

(assert (=> b!2390912 m!2790981))

(assert (=> b!2390912 m!2790881))

(declare-fun m!2790983 () Bool)

(assert (=> b!2390912 m!2790983))

(assert (=> b!2390497 d!698141))

(declare-fun e!1524104 () List!28255)

(declare-fun b!2390944 () Bool)

(assert (=> b!2390944 (= e!1524104 (Cons!28157 (h!33558 (ite c!380209 s!9460 (_1!16481 lt!870313))) (++!6962 (t!208232 (ite c!380209 s!9460 (_1!16481 lt!870313))) (ite c!380209 Nil!28157 (_2!16481 lt!870313)))))))

(declare-fun b!2390943 () Bool)

(assert (=> b!2390943 (= e!1524104 (ite c!380209 Nil!28157 (_2!16481 lt!870313)))))

(declare-fun e!1524105 () Bool)

(declare-fun lt!870434 () List!28255)

(declare-fun b!2390946 () Bool)

(assert (=> b!2390946 (= e!1524105 (or (not (= (ite c!380209 Nil!28157 (_2!16481 lt!870313)) Nil!28157)) (= lt!870434 (ite c!380209 s!9460 (_1!16481 lt!870313)))))))

(declare-fun d!698143 () Bool)

(assert (=> d!698143 e!1524105))

(declare-fun res!1015736 () Bool)

(assert (=> d!698143 (=> (not res!1015736) (not e!1524105))))

(declare-fun content!3845 (List!28255) (Set C!14174))

(assert (=> d!698143 (= res!1015736 (= (content!3845 lt!870434) (set.union (content!3845 (ite c!380209 s!9460 (_1!16481 lt!870313))) (content!3845 (ite c!380209 Nil!28157 (_2!16481 lt!870313))))))))

(assert (=> d!698143 (= lt!870434 e!1524104)))

(declare-fun c!380321 () Bool)

(assert (=> d!698143 (= c!380321 (is-Nil!28157 (ite c!380209 s!9460 (_1!16481 lt!870313))))))

(assert (=> d!698143 (= (++!6962 (ite c!380209 s!9460 (_1!16481 lt!870313)) (ite c!380209 Nil!28157 (_2!16481 lt!870313))) lt!870434)))

(declare-fun b!2390945 () Bool)

(declare-fun res!1015735 () Bool)

(assert (=> b!2390945 (=> (not res!1015735) (not e!1524105))))

(declare-fun size!22183 (List!28255) Int)

(assert (=> b!2390945 (= res!1015735 (= (size!22183 lt!870434) (+ (size!22183 (ite c!380209 s!9460 (_1!16481 lt!870313))) (size!22183 (ite c!380209 Nil!28157 (_2!16481 lt!870313))))))))

(assert (= (and d!698143 c!380321) b!2390943))

(assert (= (and d!698143 (not c!380321)) b!2390944))

(assert (= (and d!698143 res!1015736) b!2390945))

(assert (= (and b!2390945 res!1015735) b!2390946))

(declare-fun m!2790985 () Bool)

(assert (=> b!2390944 m!2790985))

(declare-fun m!2790987 () Bool)

(assert (=> d!698143 m!2790987))

(declare-fun m!2790989 () Bool)

(assert (=> d!698143 m!2790989))

(declare-fun m!2790991 () Bool)

(assert (=> d!698143 m!2790991))

(declare-fun m!2790993 () Bool)

(assert (=> b!2390945 m!2790993))

(declare-fun m!2790995 () Bool)

(assert (=> b!2390945 m!2790995))

(declare-fun m!2790997 () Bool)

(assert (=> b!2390945 m!2790997))

(assert (=> bm!145468 d!698143))

(declare-fun d!698145 () Bool)

(assert (=> d!698145 (= (isEmpty!16133 l!9164) (is-Nil!28156 l!9164))))

(assert (=> b!2390475 d!698145))

(declare-fun b!2390947 () Bool)

(declare-fun e!1524107 () Bool)

(assert (=> b!2390947 (= e!1524107 (matchR!3125 (ite c!380210 EmptyExpr!7008 call!145481) s!9460))))

(declare-fun b!2390948 () Bool)

(declare-fun lt!870436 () Unit!41147)

(declare-fun lt!870435 () Unit!41147)

(assert (=> b!2390948 (= lt!870436 lt!870435)))

(assert (=> b!2390948 (= (++!6962 (++!6962 Nil!28157 (Cons!28157 (h!33558 s!9460) Nil!28157)) (t!208232 s!9460)) s!9460)))

(assert (=> b!2390948 (= lt!870435 (lemmaMoveElementToOtherListKeepsConcatEq!604 Nil!28157 (h!33558 s!9460) (t!208232 s!9460) s!9460))))

(declare-fun e!1524109 () Option!5551)

(assert (=> b!2390948 (= e!1524109 (findConcatSeparation!659 (ite c!380210 lt!870330 call!145474) (ite c!380210 EmptyExpr!7008 call!145481) (++!6962 Nil!28157 (Cons!28157 (h!33558 s!9460) Nil!28157)) (t!208232 s!9460) s!9460))))

(declare-fun b!2390949 () Bool)

(declare-fun res!1015739 () Bool)

(declare-fun e!1524106 () Bool)

(assert (=> b!2390949 (=> (not res!1015739) (not e!1524106))))

(declare-fun lt!870437 () Option!5551)

(assert (=> b!2390949 (= res!1015739 (matchR!3125 (ite c!380210 EmptyExpr!7008 call!145481) (_2!16481 (get!8610 lt!870437))))))

(declare-fun b!2390950 () Bool)

(declare-fun res!1015737 () Bool)

(assert (=> b!2390950 (=> (not res!1015737) (not e!1524106))))

(assert (=> b!2390950 (= res!1015737 (matchR!3125 (ite c!380210 lt!870330 call!145474) (_1!16481 (get!8610 lt!870437))))))

(declare-fun b!2390951 () Bool)

(assert (=> b!2390951 (= e!1524109 None!5550)))

(declare-fun b!2390952 () Bool)

(declare-fun e!1524108 () Option!5551)

(assert (=> b!2390952 (= e!1524108 e!1524109)))

(declare-fun c!380323 () Bool)

(assert (=> b!2390952 (= c!380323 (is-Nil!28157 s!9460))))

(declare-fun b!2390953 () Bool)

(assert (=> b!2390953 (= e!1524106 (= (++!6962 (_1!16481 (get!8610 lt!870437)) (_2!16481 (get!8610 lt!870437))) s!9460))))

(declare-fun d!698147 () Bool)

(declare-fun e!1524110 () Bool)

(assert (=> d!698147 e!1524110))

(declare-fun res!1015740 () Bool)

(assert (=> d!698147 (=> res!1015740 e!1524110)))

(assert (=> d!698147 (= res!1015740 e!1524106)))

(declare-fun res!1015741 () Bool)

(assert (=> d!698147 (=> (not res!1015741) (not e!1524106))))

(assert (=> d!698147 (= res!1015741 (isDefined!4379 lt!870437))))

(assert (=> d!698147 (= lt!870437 e!1524108)))

(declare-fun c!380322 () Bool)

(assert (=> d!698147 (= c!380322 e!1524107)))

(declare-fun res!1015738 () Bool)

(assert (=> d!698147 (=> (not res!1015738) (not e!1524107))))

(assert (=> d!698147 (= res!1015738 (matchR!3125 (ite c!380210 lt!870330 call!145474) Nil!28157))))

(assert (=> d!698147 (validRegex!2733 (ite c!380210 lt!870330 call!145474))))

(assert (=> d!698147 (= (findConcatSeparation!659 (ite c!380210 lt!870330 call!145474) (ite c!380210 EmptyExpr!7008 call!145481) Nil!28157 s!9460 s!9460) lt!870437)))

(declare-fun b!2390954 () Bool)

(assert (=> b!2390954 (= e!1524110 (not (isDefined!4379 lt!870437)))))

(declare-fun b!2390955 () Bool)

(assert (=> b!2390955 (= e!1524108 (Some!5550 (tuple2!27881 Nil!28157 s!9460)))))

(assert (= (and d!698147 res!1015738) b!2390947))

(assert (= (and d!698147 c!380322) b!2390955))

(assert (= (and d!698147 (not c!380322)) b!2390952))

(assert (= (and b!2390952 c!380323) b!2390951))

(assert (= (and b!2390952 (not c!380323)) b!2390948))

(assert (= (and d!698147 res!1015741) b!2390950))

(assert (= (and b!2390950 res!1015737) b!2390949))

(assert (= (and b!2390949 res!1015739) b!2390953))

(assert (= (and d!698147 (not res!1015740)) b!2390954))

(declare-fun m!2790999 () Bool)

(assert (=> b!2390953 m!2790999))

(declare-fun m!2791001 () Bool)

(assert (=> b!2390953 m!2791001))

(assert (=> b!2390948 m!2790961))

(assert (=> b!2390948 m!2790961))

(assert (=> b!2390948 m!2790963))

(assert (=> b!2390948 m!2790965))

(assert (=> b!2390948 m!2790961))

(declare-fun m!2791003 () Bool)

(assert (=> b!2390948 m!2791003))

(declare-fun m!2791005 () Bool)

(assert (=> b!2390947 m!2791005))

(declare-fun m!2791007 () Bool)

(assert (=> b!2390954 m!2791007))

(assert (=> b!2390950 m!2790999))

(declare-fun m!2791009 () Bool)

(assert (=> b!2390950 m!2791009))

(assert (=> b!2390949 m!2790999))

(declare-fun m!2791011 () Bool)

(assert (=> b!2390949 m!2791011))

(assert (=> d!698147 m!2791007))

(declare-fun m!2791013 () Bool)

(assert (=> d!698147 m!2791013))

(declare-fun m!2791015 () Bool)

(assert (=> d!698147 m!2791015))

(assert (=> bm!145475 d!698147))

(declare-fun d!698149 () Bool)

(assert (=> d!698149 (= (isDefined!4379 (findConcatSeparation!659 (regOne!14528 r!13927) (regTwo!14528 r!13927) Nil!28157 s!9460 s!9460)) (not (isEmpty!16136 (findConcatSeparation!659 (regOne!14528 r!13927) (regTwo!14528 r!13927) Nil!28157 s!9460 s!9460))))))

(declare-fun bs!462525 () Bool)

(assert (= bs!462525 d!698149))

(assert (=> bs!462525 m!2790663))

(declare-fun m!2791017 () Bool)

(assert (=> bs!462525 m!2791017))

(assert (=> b!2390489 d!698149))

(declare-fun d!698151 () Bool)

(declare-fun choose!14074 (Int) Bool)

(assert (=> d!698151 (= (Exists!1070 lambda!89521) (choose!14074 lambda!89521))))

(declare-fun bs!462526 () Bool)

(assert (= bs!462526 d!698151))

(declare-fun m!2791019 () Bool)

(assert (=> bs!462526 m!2791019))

(assert (=> b!2390489 d!698151))

(declare-fun bs!462527 () Bool)

(declare-fun d!698153 () Bool)

(assert (= bs!462527 (and d!698153 b!2390489)))

(declare-fun lambda!89553 () Int)

(assert (=> bs!462527 (= lambda!89553 lambda!89521)))

(assert (=> bs!462527 (not (= lambda!89553 lambda!89522))))

(declare-fun bs!462528 () Bool)

(assert (= bs!462528 (and d!698153 b!2390758)))

(assert (=> bs!462528 (not (= lambda!89553 lambda!89541))))

(declare-fun bs!462529 () Bool)

(assert (= bs!462529 (and d!698153 b!2390765)))

(assert (=> bs!462529 (not (= lambda!89553 lambda!89542))))

(assert (=> d!698153 true))

(assert (=> d!698153 true))

(assert (=> d!698153 true))

(assert (=> d!698153 (= (isDefined!4379 (findConcatSeparation!659 (regOne!14528 r!13927) (regTwo!14528 r!13927) Nil!28157 s!9460 s!9460)) (Exists!1070 lambda!89553))))

(declare-fun lt!870440 () Unit!41147)

(declare-fun choose!14076 (Regex!7008 Regex!7008 List!28255) Unit!41147)

(assert (=> d!698153 (= lt!870440 (choose!14076 (regOne!14528 r!13927) (regTwo!14528 r!13927) s!9460))))

(assert (=> d!698153 (validRegex!2733 (regOne!14528 r!13927))))

(assert (=> d!698153 (= (lemmaFindConcatSeparationEquivalentToExists!659 (regOne!14528 r!13927) (regTwo!14528 r!13927) s!9460) lt!870440)))

(declare-fun bs!462530 () Bool)

(assert (= bs!462530 d!698153))

(declare-fun m!2791021 () Bool)

(assert (=> bs!462530 m!2791021))

(declare-fun m!2791023 () Bool)

(assert (=> bs!462530 m!2791023))

(declare-fun m!2791025 () Bool)

(assert (=> bs!462530 m!2791025))

(assert (=> bs!462530 m!2790663))

(assert (=> bs!462530 m!2790663))

(assert (=> bs!462530 m!2790665))

(assert (=> b!2390489 d!698153))

(declare-fun bs!462532 () Bool)

(declare-fun d!698155 () Bool)

(assert (= bs!462532 (and d!698155 d!698153)))

(declare-fun lambda!89559 () Int)

(assert (=> bs!462532 (= lambda!89559 lambda!89553)))

(declare-fun bs!462533 () Bool)

(assert (= bs!462533 (and d!698155 b!2390765)))

(assert (=> bs!462533 (not (= lambda!89559 lambda!89542))))

(declare-fun bs!462534 () Bool)

(assert (= bs!462534 (and d!698155 b!2390489)))

(assert (=> bs!462534 (not (= lambda!89559 lambda!89522))))

(declare-fun bs!462535 () Bool)

(assert (= bs!462535 (and d!698155 b!2390758)))

(assert (=> bs!462535 (not (= lambda!89559 lambda!89541))))

(assert (=> bs!462534 (= lambda!89559 lambda!89521)))

(assert (=> d!698155 true))

(assert (=> d!698155 true))

(assert (=> d!698155 true))

(declare-fun lambda!89561 () Int)

(assert (=> bs!462532 (not (= lambda!89561 lambda!89553))))

(assert (=> bs!462533 (= lambda!89561 lambda!89542)))

(assert (=> bs!462534 (= lambda!89561 lambda!89522)))

(declare-fun bs!462538 () Bool)

(assert (= bs!462538 d!698155))

(assert (=> bs!462538 (not (= lambda!89561 lambda!89559))))

(assert (=> bs!462535 (not (= lambda!89561 lambda!89541))))

(assert (=> bs!462534 (not (= lambda!89561 lambda!89521))))

(assert (=> d!698155 true))

(assert (=> d!698155 true))

(assert (=> d!698155 true))

(assert (=> d!698155 (= (Exists!1070 lambda!89559) (Exists!1070 lambda!89561))))

(declare-fun lt!870443 () Unit!41147)

(declare-fun choose!14077 (Regex!7008 Regex!7008 List!28255) Unit!41147)

(assert (=> d!698155 (= lt!870443 (choose!14077 (regOne!14528 r!13927) (regTwo!14528 r!13927) s!9460))))

(assert (=> d!698155 (validRegex!2733 (regOne!14528 r!13927))))

(assert (=> d!698155 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!409 (regOne!14528 r!13927) (regTwo!14528 r!13927) s!9460) lt!870443)))

(declare-fun m!2791027 () Bool)

(assert (=> bs!462538 m!2791027))

(declare-fun m!2791029 () Bool)

(assert (=> bs!462538 m!2791029))

(declare-fun m!2791031 () Bool)

(assert (=> bs!462538 m!2791031))

(assert (=> bs!462538 m!2791025))

(assert (=> b!2390489 d!698155))

(declare-fun b!2390989 () Bool)

(declare-fun e!1524129 () Bool)

(assert (=> b!2390989 (= e!1524129 (matchR!3125 (regTwo!14528 r!13927) s!9460))))

(declare-fun b!2390990 () Bool)

(declare-fun lt!870445 () Unit!41147)

(declare-fun lt!870444 () Unit!41147)

(assert (=> b!2390990 (= lt!870445 lt!870444)))

(assert (=> b!2390990 (= (++!6962 (++!6962 Nil!28157 (Cons!28157 (h!33558 s!9460) Nil!28157)) (t!208232 s!9460)) s!9460)))

(assert (=> b!2390990 (= lt!870444 (lemmaMoveElementToOtherListKeepsConcatEq!604 Nil!28157 (h!33558 s!9460) (t!208232 s!9460) s!9460))))

(declare-fun e!1524131 () Option!5551)

(assert (=> b!2390990 (= e!1524131 (findConcatSeparation!659 (regOne!14528 r!13927) (regTwo!14528 r!13927) (++!6962 Nil!28157 (Cons!28157 (h!33558 s!9460) Nil!28157)) (t!208232 s!9460) s!9460))))

(declare-fun b!2390991 () Bool)

(declare-fun res!1015769 () Bool)

(declare-fun e!1524128 () Bool)

(assert (=> b!2390991 (=> (not res!1015769) (not e!1524128))))

(declare-fun lt!870446 () Option!5551)

(assert (=> b!2390991 (= res!1015769 (matchR!3125 (regTwo!14528 r!13927) (_2!16481 (get!8610 lt!870446))))))

(declare-fun b!2390992 () Bool)

(declare-fun res!1015767 () Bool)

(assert (=> b!2390992 (=> (not res!1015767) (not e!1524128))))

(assert (=> b!2390992 (= res!1015767 (matchR!3125 (regOne!14528 r!13927) (_1!16481 (get!8610 lt!870446))))))

(declare-fun b!2390993 () Bool)

(assert (=> b!2390993 (= e!1524131 None!5550)))

(declare-fun b!2390994 () Bool)

(declare-fun e!1524130 () Option!5551)

(assert (=> b!2390994 (= e!1524130 e!1524131)))

(declare-fun c!380329 () Bool)

(assert (=> b!2390994 (= c!380329 (is-Nil!28157 s!9460))))

(declare-fun b!2390995 () Bool)

(assert (=> b!2390995 (= e!1524128 (= (++!6962 (_1!16481 (get!8610 lt!870446)) (_2!16481 (get!8610 lt!870446))) s!9460))))

(declare-fun d!698157 () Bool)

(declare-fun e!1524132 () Bool)

(assert (=> d!698157 e!1524132))

(declare-fun res!1015770 () Bool)

(assert (=> d!698157 (=> res!1015770 e!1524132)))

(assert (=> d!698157 (= res!1015770 e!1524128)))

(declare-fun res!1015771 () Bool)

(assert (=> d!698157 (=> (not res!1015771) (not e!1524128))))

(assert (=> d!698157 (= res!1015771 (isDefined!4379 lt!870446))))

(assert (=> d!698157 (= lt!870446 e!1524130)))

(declare-fun c!380328 () Bool)

(assert (=> d!698157 (= c!380328 e!1524129)))

(declare-fun res!1015768 () Bool)

(assert (=> d!698157 (=> (not res!1015768) (not e!1524129))))

(assert (=> d!698157 (= res!1015768 (matchR!3125 (regOne!14528 r!13927) Nil!28157))))

(assert (=> d!698157 (validRegex!2733 (regOne!14528 r!13927))))

(assert (=> d!698157 (= (findConcatSeparation!659 (regOne!14528 r!13927) (regTwo!14528 r!13927) Nil!28157 s!9460 s!9460) lt!870446)))

(declare-fun b!2390996 () Bool)

(assert (=> b!2390996 (= e!1524132 (not (isDefined!4379 lt!870446)))))

(declare-fun b!2390997 () Bool)

(assert (=> b!2390997 (= e!1524130 (Some!5550 (tuple2!27881 Nil!28157 s!9460)))))

(assert (= (and d!698157 res!1015768) b!2390989))

(assert (= (and d!698157 c!380328) b!2390997))

(assert (= (and d!698157 (not c!380328)) b!2390994))

(assert (= (and b!2390994 c!380329) b!2390993))

(assert (= (and b!2390994 (not c!380329)) b!2390990))

(assert (= (and d!698157 res!1015771) b!2390992))

(assert (= (and b!2390992 res!1015767) b!2390991))

(assert (= (and b!2390991 res!1015769) b!2390995))

(assert (= (and d!698157 (not res!1015770)) b!2390996))

(declare-fun m!2791041 () Bool)

(assert (=> b!2390995 m!2791041))

(declare-fun m!2791043 () Bool)

(assert (=> b!2390995 m!2791043))

(assert (=> b!2390990 m!2790961))

(assert (=> b!2390990 m!2790961))

(assert (=> b!2390990 m!2790963))

(assert (=> b!2390990 m!2790965))

(assert (=> b!2390990 m!2790961))

(declare-fun m!2791045 () Bool)

(assert (=> b!2390990 m!2791045))

(declare-fun m!2791047 () Bool)

(assert (=> b!2390989 m!2791047))

(declare-fun m!2791049 () Bool)

(assert (=> b!2390996 m!2791049))

(assert (=> b!2390992 m!2791041))

(declare-fun m!2791051 () Bool)

(assert (=> b!2390992 m!2791051))

(assert (=> b!2390991 m!2791041))

(declare-fun m!2791053 () Bool)

(assert (=> b!2390991 m!2791053))

(assert (=> d!698157 m!2791049))

(declare-fun m!2791055 () Bool)

(assert (=> d!698157 m!2791055))

(assert (=> d!698157 m!2791025))

(assert (=> b!2390489 d!698157))

(declare-fun d!698161 () Bool)

(assert (=> d!698161 (= (Exists!1070 lambda!89522) (choose!14074 lambda!89522))))

(declare-fun bs!462539 () Bool)

(assert (= bs!462539 d!698161))

(declare-fun m!2791057 () Bool)

(assert (=> bs!462539 m!2791057))

(assert (=> b!2390489 d!698161))

(declare-fun bs!462540 () Bool)

(declare-fun d!698163 () Bool)

(assert (= bs!462540 (and d!698163 start!234582)))

(declare-fun lambda!89562 () Int)

(assert (=> bs!462540 (= lambda!89562 lambda!89520)))

(declare-fun bs!462541 () Bool)

(assert (= bs!462541 (and d!698163 d!698105)))

(assert (=> bs!462541 (= lambda!89562 lambda!89536)))

(declare-fun bs!462542 () Bool)

(assert (= bs!462542 (and d!698163 d!698131)))

(assert (=> bs!462542 (= lambda!89562 lambda!89545)))

(declare-fun b!2391012 () Bool)

(declare-fun e!1524145 () Bool)

(declare-fun e!1524141 () Bool)

(assert (=> b!2391012 (= e!1524145 e!1524141)))

(declare-fun c!380336 () Bool)

(assert (=> b!2391012 (= c!380336 (isEmpty!16133 (tail!3518 lt!870326)))))

(declare-fun b!2391013 () Bool)

(declare-fun lt!870448 () Regex!7008)

(assert (=> b!2391013 (= e!1524145 (isEmptyExpr!78 lt!870448))))

(declare-fun b!2391014 () Bool)

(declare-fun e!1524143 () Bool)

(assert (=> b!2391014 (= e!1524143 (isEmpty!16133 (t!208231 lt!870326)))))

(declare-fun b!2391015 () Bool)

(declare-fun e!1524144 () Regex!7008)

(declare-fun e!1524142 () Regex!7008)

(assert (=> b!2391015 (= e!1524144 e!1524142)))

(declare-fun c!380333 () Bool)

(assert (=> b!2391015 (= c!380333 (is-Cons!28156 lt!870326))))

(declare-fun b!2391016 () Bool)

(assert (=> b!2391016 (= e!1524141 (isConcat!78 lt!870448))))

(declare-fun b!2391017 () Bool)

(assert (=> b!2391017 (= e!1524141 (= lt!870448 (head!5248 lt!870326)))))

(declare-fun b!2391018 () Bool)

(assert (=> b!2391018 (= e!1524144 (h!33557 lt!870326))))

(declare-fun b!2391019 () Bool)

(assert (=> b!2391019 (= e!1524142 EmptyExpr!7008)))

(declare-fun e!1524140 () Bool)

(assert (=> d!698163 e!1524140))

(declare-fun res!1015781 () Bool)

(assert (=> d!698163 (=> (not res!1015781) (not e!1524140))))

(assert (=> d!698163 (= res!1015781 (validRegex!2733 lt!870448))))

(assert (=> d!698163 (= lt!870448 e!1524144)))

(declare-fun c!380335 () Bool)

(assert (=> d!698163 (= c!380335 e!1524143)))

(declare-fun res!1015780 () Bool)

(assert (=> d!698163 (=> (not res!1015780) (not e!1524143))))

(assert (=> d!698163 (= res!1015780 (is-Cons!28156 lt!870326))))

(assert (=> d!698163 (forall!5642 lt!870326 lambda!89562)))

(assert (=> d!698163 (= (generalisedConcat!109 lt!870326) lt!870448)))

(declare-fun b!2391020 () Bool)

(assert (=> b!2391020 (= e!1524140 e!1524145)))

(declare-fun c!380334 () Bool)

(assert (=> b!2391020 (= c!380334 (isEmpty!16133 lt!870326))))

(declare-fun b!2391021 () Bool)

(assert (=> b!2391021 (= e!1524142 (Concat!11644 (h!33557 lt!870326) (generalisedConcat!109 (t!208231 lt!870326))))))

(assert (= (and d!698163 res!1015780) b!2391014))

(assert (= (and d!698163 c!380335) b!2391018))

(assert (= (and d!698163 (not c!380335)) b!2391015))

(assert (= (and b!2391015 c!380333) b!2391021))

(assert (= (and b!2391015 (not c!380333)) b!2391019))

(assert (= (and d!698163 res!1015781) b!2391020))

(assert (= (and b!2391020 c!380334) b!2391013))

(assert (= (and b!2391020 (not c!380334)) b!2391012))

(assert (= (and b!2391012 c!380336) b!2391017))

(assert (= (and b!2391012 (not c!380336)) b!2391016))

(declare-fun m!2791073 () Bool)

(assert (=> b!2391014 m!2791073))

(declare-fun m!2791075 () Bool)

(assert (=> b!2391013 m!2791075))

(declare-fun m!2791077 () Bool)

(assert (=> b!2391016 m!2791077))

(declare-fun m!2791079 () Bool)

(assert (=> b!2391012 m!2791079))

(assert (=> b!2391012 m!2791079))

(declare-fun m!2791081 () Bool)

(assert (=> b!2391012 m!2791081))

(assert (=> b!2391020 m!2790711))

(declare-fun m!2791083 () Bool)

(assert (=> d!698163 m!2791083))

(declare-fun m!2791085 () Bool)

(assert (=> d!698163 m!2791085))

(declare-fun m!2791087 () Bool)

(assert (=> b!2391017 m!2791087))

(declare-fun m!2791089 () Bool)

(assert (=> b!2391021 m!2791089))

(assert (=> bm!145467 d!698163))

(declare-fun d!698167 () Bool)

(declare-fun res!1015786 () Bool)

(declare-fun e!1524150 () Bool)

(assert (=> d!698167 (=> res!1015786 e!1524150)))

(assert (=> d!698167 (= res!1015786 (is-Nil!28156 l!9164))))

(assert (=> d!698167 (= (forall!5642 l!9164 lambda!89520) e!1524150)))

(declare-fun b!2391026 () Bool)

(declare-fun e!1524151 () Bool)

(assert (=> b!2391026 (= e!1524150 e!1524151)))

(declare-fun res!1015787 () Bool)

(assert (=> b!2391026 (=> (not res!1015787) (not e!1524151))))

(declare-fun dynLambda!12123 (Int Regex!7008) Bool)

(assert (=> b!2391026 (= res!1015787 (dynLambda!12123 lambda!89520 (h!33557 l!9164)))))

(declare-fun b!2391027 () Bool)

(assert (=> b!2391027 (= e!1524151 (forall!5642 (t!208231 l!9164) lambda!89520))))

(assert (= (and d!698167 (not res!1015786)) b!2391026))

(assert (= (and b!2391026 res!1015787) b!2391027))

(declare-fun b_lambda!74195 () Bool)

(assert (=> (not b_lambda!74195) (not b!2391026)))

(declare-fun m!2791091 () Bool)

(assert (=> b!2391026 m!2791091))

(declare-fun m!2791093 () Bool)

(assert (=> b!2391027 m!2791093))

(assert (=> start!234582 d!698167))

(declare-fun d!698169 () Bool)

(assert (=> d!698169 (= (tail!3518 l!9164) (t!208231 l!9164))))

(assert (=> b!2390481 d!698169))

(declare-fun d!698171 () Bool)

(assert (=> d!698171 (= (isEmpty!16133 lt!870326) (is-Nil!28156 lt!870326))))

(assert (=> b!2390481 d!698171))

(declare-fun b!2391028 () Bool)

(declare-fun e!1524153 () Bool)

(assert (=> b!2391028 (= e!1524153 (matchR!3125 call!145473 s!9460))))

(declare-fun b!2391029 () Bool)

(declare-fun lt!870450 () Unit!41147)

(declare-fun lt!870449 () Unit!41147)

(assert (=> b!2391029 (= lt!870450 lt!870449)))

(assert (=> b!2391029 (= (++!6962 (++!6962 Nil!28157 (Cons!28157 (h!33558 s!9460) Nil!28157)) (t!208232 s!9460)) s!9460)))

(assert (=> b!2391029 (= lt!870449 (lemmaMoveElementToOtherListKeepsConcatEq!604 Nil!28157 (h!33558 s!9460) (t!208232 s!9460) s!9460))))

(declare-fun e!1524155 () Option!5551)

(assert (=> b!2391029 (= e!1524155 (findConcatSeparation!659 lt!870330 call!145473 (++!6962 Nil!28157 (Cons!28157 (h!33558 s!9460) Nil!28157)) (t!208232 s!9460) s!9460))))

(declare-fun b!2391030 () Bool)

(declare-fun res!1015790 () Bool)

(declare-fun e!1524152 () Bool)

(assert (=> b!2391030 (=> (not res!1015790) (not e!1524152))))

(declare-fun lt!870451 () Option!5551)

(assert (=> b!2391030 (= res!1015790 (matchR!3125 call!145473 (_2!16481 (get!8610 lt!870451))))))

(declare-fun b!2391031 () Bool)

(declare-fun res!1015788 () Bool)

(assert (=> b!2391031 (=> (not res!1015788) (not e!1524152))))

(assert (=> b!2391031 (= res!1015788 (matchR!3125 lt!870330 (_1!16481 (get!8610 lt!870451))))))

(declare-fun b!2391032 () Bool)

(assert (=> b!2391032 (= e!1524155 None!5550)))

(declare-fun b!2391033 () Bool)

(declare-fun e!1524154 () Option!5551)

(assert (=> b!2391033 (= e!1524154 e!1524155)))

(declare-fun c!380338 () Bool)

(assert (=> b!2391033 (= c!380338 (is-Nil!28157 s!9460))))

(declare-fun b!2391034 () Bool)

(assert (=> b!2391034 (= e!1524152 (= (++!6962 (_1!16481 (get!8610 lt!870451)) (_2!16481 (get!8610 lt!870451))) s!9460))))

(declare-fun d!698173 () Bool)

(declare-fun e!1524156 () Bool)

(assert (=> d!698173 e!1524156))

(declare-fun res!1015791 () Bool)

(assert (=> d!698173 (=> res!1015791 e!1524156)))

(assert (=> d!698173 (= res!1015791 e!1524152)))

(declare-fun res!1015792 () Bool)

(assert (=> d!698173 (=> (not res!1015792) (not e!1524152))))

(assert (=> d!698173 (= res!1015792 (isDefined!4379 lt!870451))))

(assert (=> d!698173 (= lt!870451 e!1524154)))

(declare-fun c!380337 () Bool)

(assert (=> d!698173 (= c!380337 e!1524153)))

(declare-fun res!1015789 () Bool)

(assert (=> d!698173 (=> (not res!1015789) (not e!1524153))))

(assert (=> d!698173 (= res!1015789 (matchR!3125 lt!870330 Nil!28157))))

(assert (=> d!698173 (validRegex!2733 lt!870330)))

(assert (=> d!698173 (= (findConcatSeparation!659 lt!870330 call!145473 Nil!28157 s!9460 s!9460) lt!870451)))

(declare-fun b!2391035 () Bool)

(assert (=> b!2391035 (= e!1524156 (not (isDefined!4379 lt!870451)))))

(declare-fun b!2391036 () Bool)

(assert (=> b!2391036 (= e!1524154 (Some!5550 (tuple2!27881 Nil!28157 s!9460)))))

(assert (= (and d!698173 res!1015789) b!2391028))

(assert (= (and d!698173 c!380337) b!2391036))

(assert (= (and d!698173 (not c!380337)) b!2391033))

(assert (= (and b!2391033 c!380338) b!2391032))

(assert (= (and b!2391033 (not c!380338)) b!2391029))

(assert (= (and d!698173 res!1015792) b!2391031))

(assert (= (and b!2391031 res!1015788) b!2391030))

(assert (= (and b!2391030 res!1015790) b!2391034))

(assert (= (and d!698173 (not res!1015791)) b!2391035))

(declare-fun m!2791095 () Bool)

(assert (=> b!2391034 m!2791095))

(declare-fun m!2791097 () Bool)

(assert (=> b!2391034 m!2791097))

(assert (=> b!2391029 m!2790961))

(assert (=> b!2391029 m!2790961))

(assert (=> b!2391029 m!2790963))

(assert (=> b!2391029 m!2790965))

(assert (=> b!2391029 m!2790961))

(declare-fun m!2791099 () Bool)

(assert (=> b!2391029 m!2791099))

(declare-fun m!2791101 () Bool)

(assert (=> b!2391028 m!2791101))

(declare-fun m!2791103 () Bool)

(assert (=> b!2391035 m!2791103))

(assert (=> b!2391031 m!2791095))

(declare-fun m!2791105 () Bool)

(assert (=> b!2391031 m!2791105))

(assert (=> b!2391030 m!2791095))

(declare-fun m!2791107 () Bool)

(assert (=> b!2391030 m!2791107))

(assert (=> d!698173 m!2791103))

(assert (=> d!698173 m!2790977))

(assert (=> d!698173 m!2790799))

(assert (=> bm!145470 d!698173))

(declare-fun d!698175 () Bool)

(assert (=> d!698175 (= (isDefined!4379 call!145478) (not (isEmpty!16136 call!145478)))))

(declare-fun bs!462543 () Bool)

(assert (= bs!462543 d!698175))

(declare-fun m!2791109 () Bool)

(assert (=> bs!462543 m!2791109))

(assert (=> bm!145474 d!698175))

(declare-fun d!698177 () Bool)

(assert (=> d!698177 (= (isDefined!4379 (ite c!380210 (ite c!380209 call!145475 lt!870315) call!145480)) (not (isEmpty!16136 (ite c!380210 (ite c!380209 call!145475 lt!870315) call!145480))))))

(declare-fun bs!462544 () Bool)

(assert (= bs!462544 d!698177))

(declare-fun m!2791111 () Bool)

(assert (=> bs!462544 m!2791111))

(assert (=> bm!145472 d!698177))

(declare-fun b!2391041 () Bool)

(declare-fun e!1524159 () Bool)

(declare-fun tp!762098 () Bool)

(assert (=> b!2391041 (= e!1524159 (and tp_is_empty!11429 tp!762098))))

(assert (=> b!2390486 (= tp!762067 e!1524159)))

(assert (= (and b!2390486 (is-Cons!28157 (t!208232 s!9460))) b!2391041))

(declare-fun e!1524168 () Bool)

(assert (=> b!2390495 (= tp!762070 e!1524168)))

(declare-fun b!2391062 () Bool)

(assert (=> b!2391062 (= e!1524168 tp_is_empty!11429)))

(declare-fun b!2391065 () Bool)

(declare-fun tp!762113 () Bool)

(declare-fun tp!762112 () Bool)

(assert (=> b!2391065 (= e!1524168 (and tp!762113 tp!762112))))

(declare-fun b!2391064 () Bool)

(declare-fun tp!762110 () Bool)

(assert (=> b!2391064 (= e!1524168 tp!762110)))

(declare-fun b!2391063 () Bool)

(declare-fun tp!762111 () Bool)

(declare-fun tp!762109 () Bool)

(assert (=> b!2391063 (= e!1524168 (and tp!762111 tp!762109))))

(assert (= (and b!2390495 (is-ElementMatch!7008 (regOne!14529 r!13927))) b!2391062))

(assert (= (and b!2390495 (is-Concat!11644 (regOne!14529 r!13927))) b!2391063))

(assert (= (and b!2390495 (is-Star!7008 (regOne!14529 r!13927))) b!2391064))

(assert (= (and b!2390495 (is-Union!7008 (regOne!14529 r!13927))) b!2391065))

(declare-fun e!1524169 () Bool)

(assert (=> b!2390495 (= tp!762069 e!1524169)))

(declare-fun b!2391066 () Bool)

(assert (=> b!2391066 (= e!1524169 tp_is_empty!11429)))

(declare-fun b!2391069 () Bool)

(declare-fun tp!762118 () Bool)

(declare-fun tp!762117 () Bool)

(assert (=> b!2391069 (= e!1524169 (and tp!762118 tp!762117))))

(declare-fun b!2391068 () Bool)

(declare-fun tp!762115 () Bool)

(assert (=> b!2391068 (= e!1524169 tp!762115)))

(declare-fun b!2391067 () Bool)

(declare-fun tp!762116 () Bool)

(declare-fun tp!762114 () Bool)

(assert (=> b!2391067 (= e!1524169 (and tp!762116 tp!762114))))

(assert (= (and b!2390495 (is-ElementMatch!7008 (regTwo!14529 r!13927))) b!2391066))

(assert (= (and b!2390495 (is-Concat!11644 (regTwo!14529 r!13927))) b!2391067))

(assert (= (and b!2390495 (is-Star!7008 (regTwo!14529 r!13927))) b!2391068))

(assert (= (and b!2390495 (is-Union!7008 (regTwo!14529 r!13927))) b!2391069))

(declare-fun e!1524170 () Bool)

(assert (=> b!2390493 (= tp!762071 e!1524170)))

(declare-fun b!2391070 () Bool)

(assert (=> b!2391070 (= e!1524170 tp_is_empty!11429)))

(declare-fun b!2391073 () Bool)

(declare-fun tp!762123 () Bool)

(declare-fun tp!762122 () Bool)

(assert (=> b!2391073 (= e!1524170 (and tp!762123 tp!762122))))

(declare-fun b!2391072 () Bool)

(declare-fun tp!762120 () Bool)

(assert (=> b!2391072 (= e!1524170 tp!762120)))

(declare-fun b!2391071 () Bool)

(declare-fun tp!762121 () Bool)

(declare-fun tp!762119 () Bool)

(assert (=> b!2391071 (= e!1524170 (and tp!762121 tp!762119))))

(assert (= (and b!2390493 (is-ElementMatch!7008 (regOne!14528 r!13927))) b!2391070))

(assert (= (and b!2390493 (is-Concat!11644 (regOne!14528 r!13927))) b!2391071))

(assert (= (and b!2390493 (is-Star!7008 (regOne!14528 r!13927))) b!2391072))

(assert (= (and b!2390493 (is-Union!7008 (regOne!14528 r!13927))) b!2391073))

(declare-fun e!1524171 () Bool)

(assert (=> b!2390493 (= tp!762064 e!1524171)))

(declare-fun b!2391074 () Bool)

(assert (=> b!2391074 (= e!1524171 tp_is_empty!11429)))

(declare-fun b!2391077 () Bool)

(declare-fun tp!762128 () Bool)

(declare-fun tp!762127 () Bool)

(assert (=> b!2391077 (= e!1524171 (and tp!762128 tp!762127))))

(declare-fun b!2391076 () Bool)

(declare-fun tp!762125 () Bool)

(assert (=> b!2391076 (= e!1524171 tp!762125)))

(declare-fun b!2391075 () Bool)

(declare-fun tp!762126 () Bool)

(declare-fun tp!762124 () Bool)

(assert (=> b!2391075 (= e!1524171 (and tp!762126 tp!762124))))

(assert (= (and b!2390493 (is-ElementMatch!7008 (regTwo!14528 r!13927))) b!2391074))

(assert (= (and b!2390493 (is-Concat!11644 (regTwo!14528 r!13927))) b!2391075))

(assert (= (and b!2390493 (is-Star!7008 (regTwo!14528 r!13927))) b!2391076))

(assert (= (and b!2390493 (is-Union!7008 (regTwo!14528 r!13927))) b!2391077))

(declare-fun e!1524172 () Bool)

(assert (=> b!2390483 (= tp!762066 e!1524172)))

(declare-fun b!2391078 () Bool)

(assert (=> b!2391078 (= e!1524172 tp_is_empty!11429)))

(declare-fun b!2391081 () Bool)

(declare-fun tp!762133 () Bool)

(declare-fun tp!762132 () Bool)

(assert (=> b!2391081 (= e!1524172 (and tp!762133 tp!762132))))

(declare-fun b!2391080 () Bool)

(declare-fun tp!762130 () Bool)

(assert (=> b!2391080 (= e!1524172 tp!762130)))

(declare-fun b!2391079 () Bool)

(declare-fun tp!762131 () Bool)

(declare-fun tp!762129 () Bool)

(assert (=> b!2391079 (= e!1524172 (and tp!762131 tp!762129))))

(assert (= (and b!2390483 (is-ElementMatch!7008 (h!33557 l!9164))) b!2391078))

(assert (= (and b!2390483 (is-Concat!11644 (h!33557 l!9164))) b!2391079))

(assert (= (and b!2390483 (is-Star!7008 (h!33557 l!9164))) b!2391080))

(assert (= (and b!2390483 (is-Union!7008 (h!33557 l!9164))) b!2391081))

(declare-fun b!2391086 () Bool)

(declare-fun e!1524175 () Bool)

(declare-fun tp!762138 () Bool)

(declare-fun tp!762139 () Bool)

(assert (=> b!2391086 (= e!1524175 (and tp!762138 tp!762139))))

(assert (=> b!2390483 (= tp!762068 e!1524175)))

(assert (= (and b!2390483 (is-Cons!28156 (t!208231 l!9164))) b!2391086))

(declare-fun e!1524176 () Bool)

(assert (=> b!2390480 (= tp!762065 e!1524176)))

(declare-fun b!2391087 () Bool)

(assert (=> b!2391087 (= e!1524176 tp_is_empty!11429)))

(declare-fun b!2391090 () Bool)

(declare-fun tp!762144 () Bool)

(declare-fun tp!762143 () Bool)

(assert (=> b!2391090 (= e!1524176 (and tp!762144 tp!762143))))

(declare-fun b!2391089 () Bool)

(declare-fun tp!762141 () Bool)

(assert (=> b!2391089 (= e!1524176 tp!762141)))

(declare-fun b!2391088 () Bool)

(declare-fun tp!762142 () Bool)

(declare-fun tp!762140 () Bool)

(assert (=> b!2391088 (= e!1524176 (and tp!762142 tp!762140))))

(assert (= (and b!2390480 (is-ElementMatch!7008 (reg!7337 r!13927))) b!2391087))

(assert (= (and b!2390480 (is-Concat!11644 (reg!7337 r!13927))) b!2391088))

(assert (= (and b!2390480 (is-Star!7008 (reg!7337 r!13927))) b!2391089))

(assert (= (and b!2390480 (is-Union!7008 (reg!7337 r!13927))) b!2391090))

(declare-fun b_lambda!74197 () Bool)

(assert (= b_lambda!74195 (or start!234582 b_lambda!74197)))

(declare-fun bs!462548 () Bool)

(declare-fun d!698183 () Bool)

(assert (= bs!462548 (and d!698183 start!234582)))

(assert (=> bs!462548 (= (dynLambda!12123 lambda!89520 (h!33557 l!9164)) (validRegex!2733 (h!33557 l!9164)))))

(assert (=> bs!462548 m!2790679))

(assert (=> b!2391026 d!698183))

(push 1)

(assert (not b!2391064))

(assert (not b!2390945))

(assert (not d!698119))

(assert (not bm!145542))

(assert (not b!2391068))

(assert (not b!2391034))

(assert (not b!2391035))

(assert (not b_lambda!74197))

(assert (not b!2391077))

(assert (not d!698125))

(assert (not b!2391071))

(assert (not b!2391021))

(assert (not b!2391076))

(assert (not b!2390995))

(assert (not d!698155))

(assert (not b!2391065))

(assert (not b!2390948))

(assert (not b!2390854))

(assert (not b!2390792))

(assert (not b!2390947))

(assert (not b!2390852))

(assert (not b!2390788))

(assert (not d!698141))

(assert (not d!698173))

(assert (not b!2391073))

(assert (not b!2391017))

(assert (not b!2390890))

(assert (not b!2390900))

(assert (not b!2391028))

(assert (not b!2390891))

(assert tp_is_empty!11429)

(assert (not d!698147))

(assert (not d!698157))

(assert (not b!2390790))

(assert (not d!698149))

(assert (not b!2391069))

(assert (not b!2390856))

(assert (not b!2390857))

(assert (not b!2390989))

(assert (not b!2390778))

(assert (not b!2390795))

(assert (not b!2391030))

(assert (not bm!145532))

(assert (not b!2390996))

(assert (not d!698123))

(assert (not b!2390618))

(assert (not b!2390804))

(assert (not b!2390950))

(assert (not b!2390701))

(assert (not b!2390623))

(assert (not b!2390990))

(assert (not d!698109))

(assert (not b!2391081))

(assert (not b!2390760))

(assert (not b!2391013))

(assert (not b!2390944))

(assert (not d!698105))

(assert (not b!2390698))

(assert (not b!2390650))

(assert (not d!698175))

(assert (not bm!145526))

(assert (not b!2390903))

(assert (not b!2390694))

(assert (not b!2391063))

(assert (not b!2390704))

(assert (not b!2390892))

(assert (not d!698143))

(assert (not b!2390782))

(assert (not b!2390860))

(assert (not b!2391089))

(assert (not b!2391027))

(assert (not b!2391041))

(assert (not b!2391080))

(assert (not bm!145540))

(assert (not b!2391031))

(assert (not b!2390697))

(assert (not b!2390619))

(assert (not b!2390992))

(assert (not d!698163))

(assert (not bm!145539))

(assert (not b!2390799))

(assert (not b!2390620))

(assert (not b!2390949))

(assert (not b!2390910))

(assert (not b!2390896))

(assert (not d!698161))

(assert (not b!2390706))

(assert (not b!2391088))

(assert (not b!2391067))

(assert (not d!698107))

(assert (not b!2391075))

(assert (not b!2390781))

(assert (not b!2390833))

(assert (not d!698177))

(assert (not d!698131))

(assert (not b!2391020))

(assert (not b!2391090))

(assert (not b!2391079))

(assert (not b!2390796))

(assert (not b!2390953))

(assert (not b!2390802))

(assert (not b!2390904))

(assert (not b!2390907))

(assert (not b!2390912))

(assert (not d!698099))

(assert (not bm!145531))

(assert (not d!698153))

(assert (not d!698135))

(assert (not d!698133))

(assert (not b!2390861))

(assert (not b!2391016))

(assert (not b!2390954))

(assert (not d!698113))

(assert (not b!2390897))

(assert (not b!2390991))

(assert (not bs!462548))

(assert (not b!2390622))

(assert (not b!2390893))

(assert (not b!2391014))

(assert (not b!2391086))

(assert (not b!2390761))

(assert (not d!698151))

(assert (not b!2391012))

(assert (not b!2391029))

(assert (not b!2390627))

(assert (not bm!145527))

(assert (not bm!145515))

(assert (not b!2390626))

(assert (not b!2390853))

(assert (not b!2390785))

(assert (not b!2391072))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

