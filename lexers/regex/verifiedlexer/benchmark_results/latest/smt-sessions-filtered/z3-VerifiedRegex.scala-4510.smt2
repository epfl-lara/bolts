; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!239486 () Bool)

(assert start!239486)

(declare-fun b!2453622 () Bool)

(declare-fun e!1557056 () Bool)

(assert (=> b!2453622 (= e!1557056 true)))

(declare-fun b!2453623 () Bool)

(declare-fun e!1557052 () Bool)

(declare-fun tp!780453 () Bool)

(assert (=> b!2453623 (= e!1557052 tp!780453)))

(declare-fun b!2453624 () Bool)

(declare-fun e!1557050 () Bool)

(declare-fun e!1557055 () Bool)

(assert (=> b!2453624 (= e!1557050 (not e!1557055))))

(declare-fun res!1040408 () Bool)

(assert (=> b!2453624 (=> res!1040408 e!1557055)))

(declare-datatypes ((C!14584 0))(
  ( (C!14585 (val!8534 Int)) )
))
(declare-datatypes ((Regex!7213 0))(
  ( (ElementMatch!7213 (c!391571 C!14584)) (Concat!11849 (regOne!14938 Regex!7213) (regTwo!14938 Regex!7213)) (EmptyExpr!7213) (Star!7213 (reg!7542 Regex!7213)) (EmptyLang!7213) (Union!7213 (regOne!14939 Regex!7213) (regTwo!14939 Regex!7213)) )
))
(declare-fun r!13927 () Regex!7213)

(get-info :version)

(assert (=> b!2453624 (= res!1040408 (or ((_ is Concat!11849) r!13927) ((_ is EmptyExpr!7213) r!13927)))))

(declare-datatypes ((List!28662 0))(
  ( (Nil!28564) (Cons!28564 (h!33965 C!14584) (t!208639 List!28662)) )
))
(declare-fun s!9460 () List!28662)

(declare-fun matchR!3328 (Regex!7213 List!28662) Bool)

(declare-fun matchRSpec!1060 (Regex!7213 List!28662) Bool)

(assert (=> b!2453624 (= (matchR!3328 r!13927 s!9460) (matchRSpec!1060 r!13927 s!9460))))

(declare-datatypes ((Unit!41881 0))(
  ( (Unit!41882) )
))
(declare-fun lt!879984 () Unit!41881)

(declare-fun mainMatchTheorem!1060 (Regex!7213 List!28662) Unit!41881)

(assert (=> b!2453624 (= lt!879984 (mainMatchTheorem!1060 r!13927 s!9460))))

(declare-fun b!2453625 () Bool)

(declare-fun e!1557051 () Bool)

(declare-fun lt!879986 () Regex!7213)

(assert (=> b!2453625 (= e!1557051 (matchR!3328 lt!879986 s!9460))))

(declare-fun b!2453626 () Bool)

(declare-fun res!1040407 () Bool)

(assert (=> b!2453626 (=> (not res!1040407) (not e!1557050))))

(declare-datatypes ((List!28663 0))(
  ( (Nil!28565) (Cons!28565 (h!33966 Regex!7213) (t!208640 List!28663)) )
))
(declare-fun l!9164 () List!28663)

(declare-fun generalisedConcat!314 (List!28663) Regex!7213)

(assert (=> b!2453626 (= res!1040407 (= r!13927 (generalisedConcat!314 l!9164)))))

(declare-fun b!2453627 () Bool)

(declare-fun e!1557049 () Bool)

(assert (=> b!2453627 (= e!1557055 e!1557049)))

(declare-fun res!1040414 () Bool)

(assert (=> b!2453627 (=> res!1040414 e!1557049)))

(declare-fun lt!879985 () List!28663)

(declare-fun isEmpty!16596 (List!28663) Bool)

(assert (=> b!2453627 (= res!1040414 (not (isEmpty!16596 lt!879985)))))

(declare-fun tail!3862 (List!28663) List!28663)

(assert (=> b!2453627 (= lt!879985 (tail!3862 l!9164))))

(declare-fun b!2453628 () Bool)

(declare-fun e!1557054 () Bool)

(declare-fun tp_is_empty!11839 () Bool)

(declare-fun tp!780451 () Bool)

(assert (=> b!2453628 (= e!1557054 (and tp_is_empty!11839 tp!780451))))

(declare-fun b!2453629 () Bool)

(declare-fun res!1040411 () Bool)

(assert (=> b!2453629 (=> res!1040411 e!1557055)))

(assert (=> b!2453629 (= res!1040411 (isEmpty!16596 l!9164))))

(declare-fun res!1040412 () Bool)

(assert (=> start!239486 (=> (not res!1040412) (not e!1557050))))

(declare-fun lambda!92939 () Int)

(declare-fun forall!5847 (List!28663 Int) Bool)

(assert (=> start!239486 (= res!1040412 (forall!5847 l!9164 lambda!92939))))

(assert (=> start!239486 e!1557050))

(declare-fun e!1557053 () Bool)

(assert (=> start!239486 e!1557053))

(assert (=> start!239486 e!1557052))

(assert (=> start!239486 e!1557054))

(declare-fun b!2453630 () Bool)

(declare-fun tp!780457 () Bool)

(declare-fun tp!780456 () Bool)

(assert (=> b!2453630 (= e!1557052 (and tp!780457 tp!780456))))

(declare-fun b!2453631 () Bool)

(assert (=> b!2453631 (= e!1557052 tp_is_empty!11839)))

(declare-fun b!2453632 () Bool)

(declare-fun tp!780450 () Bool)

(declare-fun tp!780454 () Bool)

(assert (=> b!2453632 (= e!1557053 (and tp!780450 tp!780454))))

(declare-fun b!2453633 () Bool)

(declare-fun e!1557048 () Bool)

(assert (=> b!2453633 (= e!1557049 e!1557048)))

(declare-fun res!1040406 () Bool)

(assert (=> b!2453633 (=> res!1040406 e!1557048)))

(declare-fun lt!879987 () Regex!7213)

(assert (=> b!2453633 (= res!1040406 (not (matchR!3328 lt!879987 s!9460)))))

(declare-fun head!5589 (List!28663) Regex!7213)

(assert (=> b!2453633 (= lt!879987 (head!5589 l!9164))))

(declare-fun b!2453634 () Bool)

(declare-fun tp!780452 () Bool)

(declare-fun tp!780455 () Bool)

(assert (=> b!2453634 (= e!1557052 (and tp!780452 tp!780455))))

(declare-fun b!2453635 () Bool)

(declare-fun res!1040410 () Bool)

(assert (=> b!2453635 (=> res!1040410 e!1557049)))

(assert (=> b!2453635 (= res!1040410 (not (= (generalisedConcat!314 lt!879985) EmptyExpr!7213)))))

(declare-fun b!2453636 () Bool)

(assert (=> b!2453636 (= e!1557048 e!1557056)))

(declare-fun res!1040409 () Bool)

(assert (=> b!2453636 (=> res!1040409 e!1557056)))

(declare-fun validRegex!2907 (Regex!7213) Bool)

(assert (=> b!2453636 (= res!1040409 (not (validRegex!2907 lt!879987)))))

(assert (=> b!2453636 e!1557051))

(declare-fun res!1040413 () Bool)

(assert (=> b!2453636 (=> (not res!1040413) (not e!1557051))))

(declare-fun ++!7104 (List!28662 List!28662) List!28662)

(assert (=> b!2453636 (= res!1040413 (matchR!3328 lt!879986 (++!7104 s!9460 Nil!28564)))))

(assert (=> b!2453636 (= lt!879986 (Concat!11849 lt!879987 EmptyExpr!7213))))

(declare-fun lt!879988 () Unit!41881)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!130 (Regex!7213 Regex!7213 List!28662 List!28662) Unit!41881)

(assert (=> b!2453636 (= lt!879988 (lemmaTwoRegexMatchThenConcatMatchesConcatString!130 lt!879987 EmptyExpr!7213 s!9460 Nil!28564))))

(assert (= (and start!239486 res!1040412) b!2453626))

(assert (= (and b!2453626 res!1040407) b!2453624))

(assert (= (and b!2453624 (not res!1040408)) b!2453629))

(assert (= (and b!2453629 (not res!1040411)) b!2453627))

(assert (= (and b!2453627 (not res!1040414)) b!2453635))

(assert (= (and b!2453635 (not res!1040410)) b!2453633))

(assert (= (and b!2453633 (not res!1040406)) b!2453636))

(assert (= (and b!2453636 res!1040413) b!2453625))

(assert (= (and b!2453636 (not res!1040409)) b!2453622))

(assert (= (and start!239486 ((_ is Cons!28565) l!9164)) b!2453632))

(assert (= (and start!239486 ((_ is ElementMatch!7213) r!13927)) b!2453631))

(assert (= (and start!239486 ((_ is Concat!11849) r!13927)) b!2453634))

(assert (= (and start!239486 ((_ is Star!7213) r!13927)) b!2453623))

(assert (= (and start!239486 ((_ is Union!7213) r!13927)) b!2453630))

(assert (= (and start!239486 ((_ is Cons!28564) s!9460)) b!2453628))

(declare-fun m!2825919 () Bool)

(assert (=> b!2453626 m!2825919))

(declare-fun m!2825921 () Bool)

(assert (=> b!2453636 m!2825921))

(declare-fun m!2825923 () Bool)

(assert (=> b!2453636 m!2825923))

(assert (=> b!2453636 m!2825923))

(declare-fun m!2825925 () Bool)

(assert (=> b!2453636 m!2825925))

(declare-fun m!2825927 () Bool)

(assert (=> b!2453636 m!2825927))

(declare-fun m!2825929 () Bool)

(assert (=> b!2453629 m!2825929))

(declare-fun m!2825931 () Bool)

(assert (=> start!239486 m!2825931))

(declare-fun m!2825933 () Bool)

(assert (=> b!2453635 m!2825933))

(declare-fun m!2825935 () Bool)

(assert (=> b!2453627 m!2825935))

(declare-fun m!2825937 () Bool)

(assert (=> b!2453627 m!2825937))

(declare-fun m!2825939 () Bool)

(assert (=> b!2453624 m!2825939))

(declare-fun m!2825941 () Bool)

(assert (=> b!2453624 m!2825941))

(declare-fun m!2825943 () Bool)

(assert (=> b!2453624 m!2825943))

(declare-fun m!2825945 () Bool)

(assert (=> b!2453625 m!2825945))

(declare-fun m!2825947 () Bool)

(assert (=> b!2453633 m!2825947))

(declare-fun m!2825949 () Bool)

(assert (=> b!2453633 m!2825949))

(check-sat (not b!2453635) (not b!2453629) (not b!2453632) (not start!239486) (not b!2453625) (not b!2453627) tp_is_empty!11839 (not b!2453636) (not b!2453630) (not b!2453633) (not b!2453623) (not b!2453634) (not b!2453628) (not b!2453626) (not b!2453624))
(check-sat)
