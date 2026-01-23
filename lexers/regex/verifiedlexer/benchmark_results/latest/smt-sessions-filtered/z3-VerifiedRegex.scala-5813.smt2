; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286792 () Bool)

(assert start!286792)

(declare-fun b!2959048 () Bool)

(assert (=> b!2959048 true))

(assert (=> b!2959048 true))

(assert (=> b!2959048 true))

(declare-fun lambda!110290 () Int)

(declare-fun lambda!110289 () Int)

(assert (=> b!2959048 (not (= lambda!110290 lambda!110289))))

(assert (=> b!2959048 true))

(assert (=> b!2959048 true))

(assert (=> b!2959048 true))

(declare-fun b!2959045 () Bool)

(declare-fun e!1862861 () Bool)

(declare-fun tp_is_empty!15917 () Bool)

(declare-fun tp!944458 () Bool)

(assert (=> b!2959045 (= e!1862861 (and tp_is_empty!15917 tp!944458))))

(declare-fun res!1220899 () Bool)

(declare-fun e!1862865 () Bool)

(assert (=> start!286792 (=> (not res!1220899) (not e!1862865))))

(declare-datatypes ((C!18540 0))(
  ( (C!18541 (val!11306 Int)) )
))
(declare-datatypes ((Regex!9177 0))(
  ( (ElementMatch!9177 (c!484901 C!18540)) (Concat!14498 (regOne!18866 Regex!9177) (regTwo!18866 Regex!9177)) (EmptyExpr!9177) (Star!9177 (reg!9506 Regex!9177)) (EmptyLang!9177) (Union!9177 (regOne!18867 Regex!9177) (regTwo!18867 Regex!9177)) )
))
(declare-fun r!17423 () Regex!9177)

(declare-fun validRegex!3910 (Regex!9177) Bool)

(assert (=> start!286792 (= res!1220899 (validRegex!3910 r!17423))))

(assert (=> start!286792 e!1862865))

(declare-fun e!1862864 () Bool)

(assert (=> start!286792 e!1862864))

(assert (=> start!286792 e!1862861))

(declare-fun b!2959046 () Bool)

(declare-fun e!1862860 () Bool)

(declare-fun e!1862863 () Bool)

(assert (=> b!2959046 (= e!1862860 e!1862863)))

(declare-fun res!1220894 () Bool)

(assert (=> b!2959046 (=> res!1220894 e!1862863)))

(declare-fun lt!1033627 () Regex!9177)

(declare-fun isEmptyLang!299 (Regex!9177) Bool)

(assert (=> b!2959046 (= res!1220894 (isEmptyLang!299 lt!1033627))))

(declare-fun lt!1033625 () Regex!9177)

(declare-fun simplify!182 (Regex!9177) Regex!9177)

(assert (=> b!2959046 (= lt!1033625 (simplify!182 (regTwo!18866 r!17423)))))

(assert (=> b!2959046 (= lt!1033627 (simplify!182 (regOne!18866 r!17423)))))

(declare-fun b!2959047 () Bool)

(declare-fun tp!944456 () Bool)

(declare-fun tp!944457 () Bool)

(assert (=> b!2959047 (= e!1862864 (and tp!944456 tp!944457))))

(declare-fun e!1862862 () Bool)

(assert (=> b!2959048 (= e!1862862 true)))

(declare-fun Exists!1509 (Int) Bool)

(assert (=> b!2959048 (= (Exists!1509 lambda!110289) (Exists!1509 lambda!110290))))

(declare-datatypes ((List!35042 0))(
  ( (Nil!34918) (Cons!34918 (h!40338 C!18540) (t!234107 List!35042)) )
))
(declare-fun s!11993 () List!35042)

(declare-datatypes ((Unit!48733 0))(
  ( (Unit!48734) )
))
(declare-fun lt!1033626 () Unit!48733)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!530 (Regex!9177 Regex!9177 List!35042) Unit!48733)

(assert (=> b!2959048 (= lt!1033626 (lemmaExistCutMatchRandMatchRSpecEquivalent!530 lt!1033627 lt!1033625 s!11993))))

(declare-datatypes ((tuple2!33872 0))(
  ( (tuple2!33873 (_1!20068 List!35042) (_2!20068 List!35042)) )
))
(declare-datatypes ((Option!6668 0))(
  ( (None!6667) (Some!6667 (v!34801 tuple2!33872)) )
))
(declare-fun isDefined!5219 (Option!6668) Bool)

(declare-fun findConcatSeparation!1062 (Regex!9177 Regex!9177 List!35042 List!35042 List!35042) Option!6668)

(assert (=> b!2959048 (= (isDefined!5219 (findConcatSeparation!1062 lt!1033627 lt!1033625 Nil!34918 s!11993 s!11993)) (Exists!1509 lambda!110289))))

(declare-fun lt!1033628 () Unit!48733)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!840 (Regex!9177 Regex!9177 List!35042) Unit!48733)

(assert (=> b!2959048 (= lt!1033628 (lemmaFindConcatSeparationEquivalentToExists!840 lt!1033627 lt!1033625 s!11993))))

(declare-fun lt!1033624 () Regex!9177)

(declare-fun matchRSpec!1314 (Regex!9177 List!35042) Bool)

(assert (=> b!2959048 (matchRSpec!1314 lt!1033624 s!11993)))

(declare-fun lt!1033631 () Unit!48733)

(declare-fun mainMatchTheorem!1314 (Regex!9177 List!35042) Unit!48733)

(assert (=> b!2959048 (= lt!1033631 (mainMatchTheorem!1314 lt!1033624 s!11993))))

(declare-fun b!2959049 () Bool)

(declare-fun res!1220895 () Bool)

(assert (=> b!2959049 (=> res!1220895 e!1862860)))

(declare-fun isEmpty!19202 (List!35042) Bool)

(assert (=> b!2959049 (= res!1220895 (isEmpty!19202 s!11993))))

(declare-fun b!2959050 () Bool)

(declare-fun tp!944459 () Bool)

(assert (=> b!2959050 (= e!1862864 tp!944459)))

(declare-fun b!2959051 () Bool)

(assert (=> b!2959051 (= e!1862864 tp_is_empty!15917)))

(declare-fun b!2959052 () Bool)

(declare-fun tp!944461 () Bool)

(declare-fun tp!944460 () Bool)

(assert (=> b!2959052 (= e!1862864 (and tp!944461 tp!944460))))

(declare-fun b!2959053 () Bool)

(assert (=> b!2959053 (= e!1862863 e!1862862)))

(declare-fun res!1220898 () Bool)

(assert (=> b!2959053 (=> res!1220898 e!1862862)))

(declare-fun matchR!4059 (Regex!9177 List!35042) Bool)

(assert (=> b!2959053 (= res!1220898 (not (matchR!4059 lt!1033624 s!11993)))))

(assert (=> b!2959053 (= lt!1033624 (Concat!14498 lt!1033627 lt!1033625))))

(declare-fun b!2959054 () Bool)

(assert (=> b!2959054 (= e!1862865 (not e!1862860))))

(declare-fun res!1220893 () Bool)

(assert (=> b!2959054 (=> res!1220893 e!1862860)))

(declare-fun lt!1033629 () Bool)

(get-info :version)

(assert (=> b!2959054 (= res!1220893 (or lt!1033629 (not ((_ is Concat!14498) r!17423))))))

(assert (=> b!2959054 (= lt!1033629 (matchRSpec!1314 r!17423 s!11993))))

(assert (=> b!2959054 (= lt!1033629 (matchR!4059 r!17423 s!11993))))

(declare-fun lt!1033630 () Unit!48733)

(assert (=> b!2959054 (= lt!1033630 (mainMatchTheorem!1314 r!17423 s!11993))))

(declare-fun b!2959055 () Bool)

(declare-fun res!1220896 () Bool)

(assert (=> b!2959055 (=> res!1220896 e!1862863)))

(assert (=> b!2959055 (= res!1220896 (isEmptyLang!299 lt!1033625))))

(declare-fun b!2959056 () Bool)

(declare-fun res!1220897 () Bool)

(assert (=> b!2959056 (=> res!1220897 e!1862863)))

(declare-fun isEmptyExpr!380 (Regex!9177) Bool)

(assert (=> b!2959056 (= res!1220897 (isEmptyExpr!380 lt!1033625))))

(declare-fun b!2959057 () Bool)

(declare-fun res!1220900 () Bool)

(assert (=> b!2959057 (=> res!1220900 e!1862863)))

(assert (=> b!2959057 (= res!1220900 (isEmptyExpr!380 lt!1033627))))

(assert (= (and start!286792 res!1220899) b!2959054))

(assert (= (and b!2959054 (not res!1220893)) b!2959049))

(assert (= (and b!2959049 (not res!1220895)) b!2959046))

(assert (= (and b!2959046 (not res!1220894)) b!2959055))

(assert (= (and b!2959055 (not res!1220896)) b!2959057))

(assert (= (and b!2959057 (not res!1220900)) b!2959056))

(assert (= (and b!2959056 (not res!1220897)) b!2959053))

(assert (= (and b!2959053 (not res!1220898)) b!2959048))

(assert (= (and start!286792 ((_ is ElementMatch!9177) r!17423)) b!2959051))

(assert (= (and start!286792 ((_ is Concat!14498) r!17423)) b!2959047))

(assert (= (and start!286792 ((_ is Star!9177) r!17423)) b!2959050))

(assert (= (and start!286792 ((_ is Union!9177) r!17423)) b!2959052))

(assert (= (and start!286792 ((_ is Cons!34918) s!11993)) b!2959045))

(declare-fun m!3333393 () Bool)

(assert (=> b!2959055 m!3333393))

(declare-fun m!3333395 () Bool)

(assert (=> b!2959056 m!3333395))

(declare-fun m!3333397 () Bool)

(assert (=> b!2959046 m!3333397))

(declare-fun m!3333399 () Bool)

(assert (=> b!2959046 m!3333399))

(declare-fun m!3333401 () Bool)

(assert (=> b!2959046 m!3333401))

(declare-fun m!3333403 () Bool)

(assert (=> b!2959057 m!3333403))

(declare-fun m!3333405 () Bool)

(assert (=> b!2959053 m!3333405))

(declare-fun m!3333407 () Bool)

(assert (=> b!2959048 m!3333407))

(declare-fun m!3333409 () Bool)

(assert (=> b!2959048 m!3333409))

(declare-fun m!3333411 () Bool)

(assert (=> b!2959048 m!3333411))

(declare-fun m!3333413 () Bool)

(assert (=> b!2959048 m!3333413))

(declare-fun m!3333415 () Bool)

(assert (=> b!2959048 m!3333415))

(assert (=> b!2959048 m!3333413))

(declare-fun m!3333417 () Bool)

(assert (=> b!2959048 m!3333417))

(declare-fun m!3333419 () Bool)

(assert (=> b!2959048 m!3333419))

(declare-fun m!3333421 () Bool)

(assert (=> b!2959048 m!3333421))

(assert (=> b!2959048 m!3333409))

(declare-fun m!3333423 () Bool)

(assert (=> start!286792 m!3333423))

(declare-fun m!3333425 () Bool)

(assert (=> b!2959054 m!3333425))

(declare-fun m!3333427 () Bool)

(assert (=> b!2959054 m!3333427))

(declare-fun m!3333429 () Bool)

(assert (=> b!2959054 m!3333429))

(declare-fun m!3333431 () Bool)

(assert (=> b!2959049 m!3333431))

(check-sat (not b!2959054) (not b!2959048) (not b!2959057) (not b!2959052) tp_is_empty!15917 (not b!2959056) (not b!2959046) (not b!2959053) (not b!2959049) (not b!2959055) (not b!2959047) (not start!286792) (not b!2959050) (not b!2959045))
(check-sat)
