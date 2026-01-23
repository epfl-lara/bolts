; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!238914 () Bool)

(assert start!238914)

(declare-fun b!2444477 () Bool)

(assert (=> b!2444477 true))

(assert (=> b!2444477 true))

(declare-fun lambda!92491 () Int)

(declare-fun lambda!92490 () Int)

(assert (=> b!2444477 (not (= lambda!92491 lambda!92490))))

(assert (=> b!2444477 true))

(assert (=> b!2444477 true))

(declare-fun b!2444468 () Bool)

(declare-fun e!1552509 () Bool)

(declare-fun e!1552518 () Bool)

(assert (=> b!2444468 (= e!1552509 e!1552518)))

(declare-fun res!1037336 () Bool)

(assert (=> b!2444468 (=> res!1037336 e!1552518)))

(declare-datatypes ((C!14520 0))(
  ( (C!14521 (val!8502 Int)) )
))
(declare-datatypes ((Regex!7181 0))(
  ( (ElementMatch!7181 (c!390063 C!14520)) (Concat!11817 (regOne!14874 Regex!7181) (regTwo!14874 Regex!7181)) (EmptyExpr!7181) (Star!7181 (reg!7510 Regex!7181)) (EmptyLang!7181) (Union!7181 (regOne!14875 Regex!7181) (regTwo!14875 Regex!7181)) )
))
(declare-fun lt!878671 () Regex!7181)

(declare-datatypes ((List!28598 0))(
  ( (Nil!28500) (Cons!28500 (h!33901 C!14520) (t!208575 List!28598)) )
))
(declare-fun s!9460 () List!28598)

(declare-fun matchR!3296 (Regex!7181 List!28598) Bool)

(assert (=> b!2444468 (= res!1037336 (matchR!3296 lt!878671 s!9460))))

(declare-datatypes ((List!28599 0))(
  ( (Nil!28501) (Cons!28501 (h!33902 Regex!7181) (t!208576 List!28599)) )
))
(declare-fun l!9164 () List!28599)

(declare-fun head!5549 (List!28599) Regex!7181)

(assert (=> b!2444468 (= lt!878671 (head!5549 l!9164))))

(declare-fun b!2444469 () Bool)

(declare-fun e!1552511 () Bool)

(declare-fun tp!776702 () Bool)

(assert (=> b!2444469 (= e!1552511 tp!776702)))

(declare-fun b!2444470 () Bool)

(declare-fun e!1552508 () Bool)

(declare-fun tp_is_empty!11775 () Bool)

(declare-fun tp!776703 () Bool)

(assert (=> b!2444470 (= e!1552508 (and tp_is_empty!11775 tp!776703))))

(declare-fun b!2444471 () Bool)

(declare-datatypes ((Unit!41751 0))(
  ( (Unit!41752) )
))
(declare-fun e!1552517 () Unit!41751)

(declare-fun Unit!41753 () Unit!41751)

(assert (=> b!2444471 (= e!1552517 Unit!41753)))

(declare-datatypes ((tuple2!28118 0))(
  ( (tuple2!28119 (_1!16600 List!28598) (_2!16600 List!28598)) )
))
(declare-fun lt!878667 () tuple2!28118)

(declare-datatypes ((Option!5670 0))(
  ( (None!5669) (Some!5669 (v!31077 tuple2!28118)) )
))
(declare-fun lt!878661 () Option!5670)

(declare-fun get!8801 (Option!5670) tuple2!28118)

(assert (=> b!2444471 (= lt!878667 (get!8801 lt!878661))))

(declare-fun lt!878662 () Unit!41751)

(declare-fun lemmaFindSeparationIsDefinedThenConcatMatches!86 (Regex!7181 Regex!7181 List!28598 List!28598 List!28598) Unit!41751)

(assert (=> b!2444471 (= lt!878662 (lemmaFindSeparationIsDefinedThenConcatMatches!86 lt!878671 EmptyExpr!7181 (_1!16600 lt!878667) (_2!16600 lt!878667) s!9460))))

(declare-fun res!1037330 () Bool)

(declare-fun ++!7084 (List!28598 List!28598) List!28598)

(assert (=> b!2444471 (= res!1037330 (matchR!3296 (Concat!11817 lt!878671 EmptyExpr!7181) (++!7084 (_1!16600 lt!878667) (_2!16600 lt!878667))))))

(declare-fun e!1552513 () Bool)

(assert (=> b!2444471 (=> (not res!1037330) (not e!1552513))))

(assert (=> b!2444471 e!1552513))

(declare-fun b!2444472 () Bool)

(declare-fun e!1552515 () Bool)

(declare-fun tp!776704 () Bool)

(declare-fun tp!776705 () Bool)

(assert (=> b!2444472 (= e!1552515 (and tp!776704 tp!776705))))

(declare-fun lt!878668 () Regex!7181)

(declare-fun b!2444473 () Bool)

(declare-fun isDefined!4496 (Option!5670) Bool)

(declare-fun findConcatSeparation!778 (Regex!7181 Regex!7181 List!28598 List!28598 List!28598) Option!5670)

(assert (=> b!2444473 (= e!1552518 (not (isDefined!4496 (findConcatSeparation!778 lt!878671 lt!878668 Nil!28500 s!9460 s!9460))))))

(declare-fun lt!878664 () Bool)

(assert (=> b!2444473 (not lt!878664)))

(declare-fun lt!878670 () Unit!41751)

(assert (=> b!2444473 (= lt!878670 e!1552517)))

(declare-fun c!390062 () Bool)

(assert (=> b!2444473 (= c!390062 lt!878664)))

(assert (=> b!2444473 (= lt!878664 (isDefined!4496 lt!878661))))

(assert (=> b!2444473 (= lt!878661 (findConcatSeparation!778 lt!878671 EmptyExpr!7181 Nil!28500 s!9460 s!9460))))

(declare-fun b!2444474 () Bool)

(declare-fun tp!776706 () Bool)

(declare-fun tp!776700 () Bool)

(assert (=> b!2444474 (= e!1552511 (and tp!776706 tp!776700))))

(declare-fun b!2444475 () Bool)

(declare-fun res!1037334 () Bool)

(declare-fun e!1552512 () Bool)

(assert (=> b!2444475 (=> res!1037334 e!1552512)))

(declare-fun isEmpty!16539 (List!28599) Bool)

(assert (=> b!2444475 (= res!1037334 (isEmpty!16539 l!9164))))

(declare-fun b!2444476 () Bool)

(assert (=> b!2444476 (= e!1552513 false)))

(declare-fun e!1552516 () Bool)

(assert (=> b!2444477 (= e!1552516 e!1552512)))

(declare-fun res!1037329 () Bool)

(assert (=> b!2444477 (=> res!1037329 e!1552512)))

(declare-fun lt!878666 () Bool)

(declare-fun lt!878669 () Bool)

(assert (=> b!2444477 (= res!1037329 (not (= lt!878666 lt!878669)))))

(declare-fun Exists!1217 (Int) Bool)

(assert (=> b!2444477 (= (Exists!1217 lambda!92490) (Exists!1217 lambda!92491))))

(declare-fun lt!878663 () Unit!41751)

(declare-fun r!13927 () Regex!7181)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!462 (Regex!7181 Regex!7181 List!28598) Unit!41751)

(assert (=> b!2444477 (= lt!878663 (lemmaExistCutMatchRandMatchRSpecEquivalent!462 (regOne!14874 r!13927) (regTwo!14874 r!13927) s!9460))))

(assert (=> b!2444477 (= lt!878669 (Exists!1217 lambda!92490))))

(assert (=> b!2444477 (= lt!878669 (isDefined!4496 (findConcatSeparation!778 (regOne!14874 r!13927) (regTwo!14874 r!13927) Nil!28500 s!9460 s!9460)))))

(declare-fun lt!878672 () Unit!41751)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!716 (Regex!7181 Regex!7181 List!28598) Unit!41751)

(assert (=> b!2444477 (= lt!878672 (lemmaFindConcatSeparationEquivalentToExists!716 (regOne!14874 r!13927) (regTwo!14874 r!13927) s!9460))))

(declare-fun b!2444478 () Bool)

(declare-fun e!1552510 () Bool)

(assert (=> b!2444478 (= e!1552512 e!1552510)))

(declare-fun res!1037331 () Bool)

(assert (=> b!2444478 (=> res!1037331 e!1552510)))

(declare-fun lt!878665 () List!28599)

(assert (=> b!2444478 (= res!1037331 (not (isEmpty!16539 lt!878665)))))

(declare-fun tail!3822 (List!28599) List!28599)

(assert (=> b!2444478 (= lt!878665 (tail!3822 l!9164))))

(declare-fun b!2444479 () Bool)

(declare-fun tp!776701 () Bool)

(declare-fun tp!776707 () Bool)

(assert (=> b!2444479 (= e!1552511 (and tp!776701 tp!776707))))

(declare-fun res!1037335 () Bool)

(declare-fun e!1552514 () Bool)

(assert (=> start!238914 (=> (not res!1037335) (not e!1552514))))

(declare-fun lambda!92489 () Int)

(declare-fun forall!5815 (List!28599 Int) Bool)

(assert (=> start!238914 (= res!1037335 (forall!5815 l!9164 lambda!92489))))

(assert (=> start!238914 e!1552514))

(assert (=> start!238914 e!1552515))

(assert (=> start!238914 e!1552511))

(assert (=> start!238914 e!1552508))

(declare-fun b!2444480 () Bool)

(assert (=> b!2444480 (= e!1552511 tp_is_empty!11775)))

(declare-fun b!2444481 () Bool)

(assert (=> b!2444481 (= e!1552514 (not e!1552516))))

(declare-fun res!1037333 () Bool)

(assert (=> b!2444481 (=> res!1037333 e!1552516)))

(get-info :version)

(assert (=> b!2444481 (= res!1037333 (not ((_ is Concat!11817) r!13927)))))

(declare-fun lt!878660 () Bool)

(assert (=> b!2444481 (= lt!878660 lt!878666)))

(declare-fun matchRSpec!1028 (Regex!7181 List!28598) Bool)

(assert (=> b!2444481 (= lt!878666 (matchRSpec!1028 r!13927 s!9460))))

(assert (=> b!2444481 (= lt!878660 (matchR!3296 r!13927 s!9460))))

(declare-fun lt!878659 () Unit!41751)

(declare-fun mainMatchTheorem!1028 (Regex!7181 List!28598) Unit!41751)

(assert (=> b!2444481 (= lt!878659 (mainMatchTheorem!1028 r!13927 s!9460))))

(declare-fun b!2444482 () Bool)

(assert (=> b!2444482 (= e!1552510 e!1552509)))

(declare-fun res!1037332 () Bool)

(assert (=> b!2444482 (=> res!1037332 e!1552509)))

(assert (=> b!2444482 (= res!1037332 (not (= lt!878668 EmptyExpr!7181)))))

(declare-fun generalisedConcat!282 (List!28599) Regex!7181)

(assert (=> b!2444482 (= lt!878668 (generalisedConcat!282 lt!878665))))

(declare-fun b!2444483 () Bool)

(declare-fun Unit!41754 () Unit!41751)

(assert (=> b!2444483 (= e!1552517 Unit!41754)))

(declare-fun b!2444484 () Bool)

(declare-fun res!1037328 () Bool)

(assert (=> b!2444484 (=> (not res!1037328) (not e!1552514))))

(assert (=> b!2444484 (= res!1037328 (= r!13927 (generalisedConcat!282 l!9164)))))

(assert (= (and start!238914 res!1037335) b!2444484))

(assert (= (and b!2444484 res!1037328) b!2444481))

(assert (= (and b!2444481 (not res!1037333)) b!2444477))

(assert (= (and b!2444477 (not res!1037329)) b!2444475))

(assert (= (and b!2444475 (not res!1037334)) b!2444478))

(assert (= (and b!2444478 (not res!1037331)) b!2444482))

(assert (= (and b!2444482 (not res!1037332)) b!2444468))

(assert (= (and b!2444468 (not res!1037336)) b!2444473))

(assert (= (and b!2444473 c!390062) b!2444471))

(assert (= (and b!2444473 (not c!390062)) b!2444483))

(assert (= (and b!2444471 res!1037330) b!2444476))

(assert (= (and start!238914 ((_ is Cons!28501) l!9164)) b!2444472))

(assert (= (and start!238914 ((_ is ElementMatch!7181) r!13927)) b!2444480))

(assert (= (and start!238914 ((_ is Concat!11817) r!13927)) b!2444479))

(assert (= (and start!238914 ((_ is Star!7181) r!13927)) b!2444469))

(assert (= (and start!238914 ((_ is Union!7181) r!13927)) b!2444474))

(assert (= (and start!238914 ((_ is Cons!28500) s!9460)) b!2444470))

(declare-fun m!2820987 () Bool)

(assert (=> b!2444475 m!2820987))

(declare-fun m!2820989 () Bool)

(assert (=> b!2444471 m!2820989))

(declare-fun m!2820991 () Bool)

(assert (=> b!2444471 m!2820991))

(declare-fun m!2820993 () Bool)

(assert (=> b!2444471 m!2820993))

(assert (=> b!2444471 m!2820993))

(declare-fun m!2820995 () Bool)

(assert (=> b!2444471 m!2820995))

(declare-fun m!2820997 () Bool)

(assert (=> b!2444477 m!2820997))

(declare-fun m!2820999 () Bool)

(assert (=> b!2444477 m!2820999))

(declare-fun m!2821001 () Bool)

(assert (=> b!2444477 m!2821001))

(declare-fun m!2821003 () Bool)

(assert (=> b!2444477 m!2821003))

(assert (=> b!2444477 m!2820997))

(declare-fun m!2821005 () Bool)

(assert (=> b!2444477 m!2821005))

(declare-fun m!2821007 () Bool)

(assert (=> b!2444477 m!2821007))

(assert (=> b!2444477 m!2821003))

(declare-fun m!2821009 () Bool)

(assert (=> b!2444482 m!2821009))

(declare-fun m!2821011 () Bool)

(assert (=> b!2444481 m!2821011))

(declare-fun m!2821013 () Bool)

(assert (=> b!2444481 m!2821013))

(declare-fun m!2821015 () Bool)

(assert (=> b!2444481 m!2821015))

(declare-fun m!2821017 () Bool)

(assert (=> b!2444478 m!2821017))

(declare-fun m!2821019 () Bool)

(assert (=> b!2444478 m!2821019))

(declare-fun m!2821021 () Bool)

(assert (=> start!238914 m!2821021))

(declare-fun m!2821023 () Bool)

(assert (=> b!2444473 m!2821023))

(assert (=> b!2444473 m!2821023))

(declare-fun m!2821025 () Bool)

(assert (=> b!2444473 m!2821025))

(declare-fun m!2821027 () Bool)

(assert (=> b!2444473 m!2821027))

(declare-fun m!2821029 () Bool)

(assert (=> b!2444473 m!2821029))

(declare-fun m!2821031 () Bool)

(assert (=> b!2444484 m!2821031))

(declare-fun m!2821033 () Bool)

(assert (=> b!2444468 m!2821033))

(declare-fun m!2821035 () Bool)

(assert (=> b!2444468 m!2821035))

(check-sat (not b!2444482) (not b!2444481) (not b!2444470) (not b!2444478) (not start!238914) (not b!2444473) (not b!2444468) (not b!2444479) (not b!2444477) (not b!2444475) (not b!2444474) (not b!2444484) tp_is_empty!11775 (not b!2444469) (not b!2444471) (not b!2444472))
(check-sat)
