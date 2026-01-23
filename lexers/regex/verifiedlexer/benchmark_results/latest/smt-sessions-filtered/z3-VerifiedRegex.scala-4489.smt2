; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!238690 () Bool)

(assert start!238690)

(declare-fun b!2438749 () Bool)

(assert (=> b!2438749 true))

(assert (=> b!2438749 true))

(declare-fun lambda!92255 () Int)

(declare-fun lambda!92254 () Int)

(assert (=> b!2438749 (not (= lambda!92255 lambda!92254))))

(assert (=> b!2438749 true))

(assert (=> b!2438749 true))

(declare-fun b!2438741 () Bool)

(declare-fun e!1549716 () Bool)

(declare-fun e!1549720 () Bool)

(assert (=> b!2438741 (= e!1549716 (not e!1549720))))

(declare-fun res!1035400 () Bool)

(assert (=> b!2438741 (=> res!1035400 e!1549720)))

(declare-datatypes ((C!14500 0))(
  ( (C!14501 (val!8492 Int)) )
))
(declare-datatypes ((Regex!7171 0))(
  ( (ElementMatch!7171 (c!389099 C!14500)) (Concat!11807 (regOne!14854 Regex!7171) (regTwo!14854 Regex!7171)) (EmptyExpr!7171) (Star!7171 (reg!7500 Regex!7171)) (EmptyLang!7171) (Union!7171 (regOne!14855 Regex!7171) (regTwo!14855 Regex!7171)) )
))
(declare-fun r!13927 () Regex!7171)

(get-info :version)

(assert (=> b!2438741 (= res!1035400 (not ((_ is Concat!11807) r!13927)))))

(declare-fun lt!877979 () Bool)

(declare-fun lt!877975 () Bool)

(assert (=> b!2438741 (= lt!877979 lt!877975)))

(declare-datatypes ((List!28578 0))(
  ( (Nil!28480) (Cons!28480 (h!33881 C!14500) (t!208555 List!28578)) )
))
(declare-fun s!9460 () List!28578)

(declare-fun matchRSpec!1018 (Regex!7171 List!28578) Bool)

(assert (=> b!2438741 (= lt!877975 (matchRSpec!1018 r!13927 s!9460))))

(declare-fun matchR!3286 (Regex!7171 List!28578) Bool)

(assert (=> b!2438741 (= lt!877979 (matchR!3286 r!13927 s!9460))))

(declare-datatypes ((Unit!41725 0))(
  ( (Unit!41726) )
))
(declare-fun lt!877977 () Unit!41725)

(declare-fun mainMatchTheorem!1018 (Regex!7171 List!28578) Unit!41725)

(assert (=> b!2438741 (= lt!877977 (mainMatchTheorem!1018 r!13927 s!9460))))

(declare-fun res!1035396 () Bool)

(assert (=> start!238690 (=> (not res!1035396) (not e!1549716))))

(declare-datatypes ((List!28579 0))(
  ( (Nil!28481) (Cons!28481 (h!33882 Regex!7171) (t!208556 List!28579)) )
))
(declare-fun l!9164 () List!28579)

(declare-fun lambda!92253 () Int)

(declare-fun forall!5805 (List!28579 Int) Bool)

(assert (=> start!238690 (= res!1035396 (forall!5805 l!9164 lambda!92253))))

(assert (=> start!238690 e!1549716))

(declare-fun e!1549719 () Bool)

(assert (=> start!238690 e!1549719))

(declare-fun e!1549721 () Bool)

(assert (=> start!238690 e!1549721))

(declare-fun e!1549722 () Bool)

(assert (=> start!238690 e!1549722))

(declare-fun b!2438742 () Bool)

(declare-fun tp_is_empty!11755 () Bool)

(declare-fun tp!774388 () Bool)

(assert (=> b!2438742 (= e!1549722 (and tp_is_empty!11755 tp!774388))))

(declare-fun b!2438743 () Bool)

(declare-fun tp!774385 () Bool)

(declare-fun tp!774386 () Bool)

(assert (=> b!2438743 (= e!1549719 (and tp!774385 tp!774386))))

(declare-fun b!2438744 () Bool)

(declare-fun res!1035399 () Bool)

(declare-fun e!1549717 () Bool)

(assert (=> b!2438744 (=> res!1035399 e!1549717)))

(declare-fun lt!877981 () List!28579)

(declare-fun generalisedConcat!272 (List!28579) Regex!7171)

(assert (=> b!2438744 (= res!1035399 (not (= (generalisedConcat!272 lt!877981) EmptyExpr!7171)))))

(declare-fun b!2438745 () Bool)

(declare-fun e!1549718 () Bool)

(assert (=> b!2438745 (= e!1549717 e!1549718)))

(declare-fun res!1035395 () Bool)

(assert (=> b!2438745 (=> res!1035395 e!1549718)))

(declare-fun lt!877976 () Regex!7171)

(assert (=> b!2438745 (= res!1035395 (matchR!3286 lt!877976 s!9460))))

(declare-fun head!5535 (List!28579) Regex!7171)

(assert (=> b!2438745 (= lt!877976 (head!5535 l!9164))))

(declare-fun b!2438746 () Bool)

(assert (=> b!2438746 (= e!1549718 true)))

(declare-fun b!2438747 () Bool)

(declare-fun res!1035398 () Bool)

(assert (=> b!2438747 (=> res!1035398 e!1549718)))

(declare-datatypes ((tuple2!28098 0))(
  ( (tuple2!28099 (_1!16590 List!28578) (_2!16590 List!28578)) )
))
(declare-datatypes ((Option!5660 0))(
  ( (None!5659) (Some!5659 (v!31067 tuple2!28098)) )
))
(declare-fun isDefined!4486 (Option!5660) Bool)

(declare-fun findConcatSeparation!768 (Regex!7171 Regex!7171 List!28578 List!28578 List!28578) Option!5660)

(assert (=> b!2438747 (= res!1035398 (not (isDefined!4486 (findConcatSeparation!768 lt!877976 EmptyExpr!7171 Nil!28480 s!9460 s!9460))))))

(declare-fun b!2438748 () Bool)

(assert (=> b!2438748 (= e!1549721 tp_is_empty!11755)))

(declare-fun e!1549715 () Bool)

(assert (=> b!2438749 (= e!1549720 e!1549715)))

(declare-fun res!1035392 () Bool)

(assert (=> b!2438749 (=> res!1035392 e!1549715)))

(declare-fun lt!877980 () Bool)

(assert (=> b!2438749 (= res!1035392 (not (= lt!877975 lt!877980)))))

(declare-fun Exists!1207 (Int) Bool)

(assert (=> b!2438749 (= (Exists!1207 lambda!92254) (Exists!1207 lambda!92255))))

(declare-fun lt!877978 () Unit!41725)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!452 (Regex!7171 Regex!7171 List!28578) Unit!41725)

(assert (=> b!2438749 (= lt!877978 (lemmaExistCutMatchRandMatchRSpecEquivalent!452 (regOne!14854 r!13927) (regTwo!14854 r!13927) s!9460))))

(assert (=> b!2438749 (= lt!877980 (Exists!1207 lambda!92254))))

(assert (=> b!2438749 (= lt!877980 (isDefined!4486 (findConcatSeparation!768 (regOne!14854 r!13927) (regTwo!14854 r!13927) Nil!28480 s!9460 s!9460)))))

(declare-fun lt!877982 () Unit!41725)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!706 (Regex!7171 Regex!7171 List!28578) Unit!41725)

(assert (=> b!2438749 (= lt!877982 (lemmaFindConcatSeparationEquivalentToExists!706 (regOne!14854 r!13927) (regTwo!14854 r!13927) s!9460))))

(declare-fun b!2438750 () Bool)

(declare-fun res!1035391 () Bool)

(assert (=> b!2438750 (=> res!1035391 e!1549715)))

(declare-fun isEmpty!16521 (List!28579) Bool)

(assert (=> b!2438750 (= res!1035391 (isEmpty!16521 l!9164))))

(declare-fun b!2438751 () Bool)

(declare-fun res!1035397 () Bool)

(assert (=> b!2438751 (=> (not res!1035397) (not e!1549716))))

(assert (=> b!2438751 (= res!1035397 (= r!13927 (generalisedConcat!272 l!9164)))))

(declare-fun b!2438752 () Bool)

(declare-fun tp!774389 () Bool)

(assert (=> b!2438752 (= e!1549721 tp!774389)))

(declare-fun b!2438753 () Bool)

(declare-fun tp!774382 () Bool)

(declare-fun tp!774383 () Bool)

(assert (=> b!2438753 (= e!1549721 (and tp!774382 tp!774383))))

(declare-fun b!2438754 () Bool)

(assert (=> b!2438754 (= e!1549715 e!1549717)))

(declare-fun res!1035394 () Bool)

(assert (=> b!2438754 (=> res!1035394 e!1549717)))

(assert (=> b!2438754 (= res!1035394 (not (isEmpty!16521 lt!877981)))))

(declare-fun tail!3808 (List!28579) List!28579)

(assert (=> b!2438754 (= lt!877981 (tail!3808 l!9164))))

(declare-fun b!2438755 () Bool)

(declare-fun tp!774384 () Bool)

(declare-fun tp!774387 () Bool)

(assert (=> b!2438755 (= e!1549721 (and tp!774384 tp!774387))))

(declare-fun b!2438756 () Bool)

(declare-fun res!1035393 () Bool)

(assert (=> b!2438756 (=> res!1035393 e!1549718)))

(declare-fun validRegex!2883 (Regex!7171) Bool)

(assert (=> b!2438756 (= res!1035393 (not (validRegex!2883 lt!877976)))))

(assert (= (and start!238690 res!1035396) b!2438751))

(assert (= (and b!2438751 res!1035397) b!2438741))

(assert (= (and b!2438741 (not res!1035400)) b!2438749))

(assert (= (and b!2438749 (not res!1035392)) b!2438750))

(assert (= (and b!2438750 (not res!1035391)) b!2438754))

(assert (= (and b!2438754 (not res!1035394)) b!2438744))

(assert (= (and b!2438744 (not res!1035399)) b!2438745))

(assert (= (and b!2438745 (not res!1035395)) b!2438747))

(assert (= (and b!2438747 (not res!1035398)) b!2438756))

(assert (= (and b!2438756 (not res!1035393)) b!2438746))

(assert (= (and start!238690 ((_ is Cons!28481) l!9164)) b!2438743))

(assert (= (and start!238690 ((_ is ElementMatch!7171) r!13927)) b!2438748))

(assert (= (and start!238690 ((_ is Concat!11807) r!13927)) b!2438753))

(assert (= (and start!238690 ((_ is Star!7171) r!13927)) b!2438752))

(assert (= (and start!238690 ((_ is Union!7171) r!13927)) b!2438755))

(assert (= (and start!238690 ((_ is Cons!28480) s!9460)) b!2438742))

(declare-fun m!2817505 () Bool)

(assert (=> b!2438751 m!2817505))

(declare-fun m!2817507 () Bool)

(assert (=> b!2438745 m!2817507))

(declare-fun m!2817509 () Bool)

(assert (=> b!2438745 m!2817509))

(declare-fun m!2817511 () Bool)

(assert (=> b!2438750 m!2817511))

(declare-fun m!2817513 () Bool)

(assert (=> b!2438749 m!2817513))

(declare-fun m!2817515 () Bool)

(assert (=> b!2438749 m!2817515))

(declare-fun m!2817517 () Bool)

(assert (=> b!2438749 m!2817517))

(assert (=> b!2438749 m!2817513))

(declare-fun m!2817519 () Bool)

(assert (=> b!2438749 m!2817519))

(declare-fun m!2817521 () Bool)

(assert (=> b!2438749 m!2817521))

(assert (=> b!2438749 m!2817519))

(declare-fun m!2817523 () Bool)

(assert (=> b!2438749 m!2817523))

(declare-fun m!2817525 () Bool)

(assert (=> b!2438744 m!2817525))

(declare-fun m!2817527 () Bool)

(assert (=> start!238690 m!2817527))

(declare-fun m!2817529 () Bool)

(assert (=> b!2438741 m!2817529))

(declare-fun m!2817531 () Bool)

(assert (=> b!2438741 m!2817531))

(declare-fun m!2817533 () Bool)

(assert (=> b!2438741 m!2817533))

(declare-fun m!2817535 () Bool)

(assert (=> b!2438747 m!2817535))

(assert (=> b!2438747 m!2817535))

(declare-fun m!2817537 () Bool)

(assert (=> b!2438747 m!2817537))

(declare-fun m!2817539 () Bool)

(assert (=> b!2438756 m!2817539))

(declare-fun m!2817541 () Bool)

(assert (=> b!2438754 m!2817541))

(declare-fun m!2817543 () Bool)

(assert (=> b!2438754 m!2817543))

(check-sat (not b!2438755) (not b!2438749) (not b!2438754) (not b!2438745) (not b!2438742) (not start!238690) (not b!2438750) (not b!2438743) (not b!2438744) (not b!2438751) (not b!2438756) (not b!2438753) (not b!2438752) tp_is_empty!11755 (not b!2438741) (not b!2438747))
(check-sat)
