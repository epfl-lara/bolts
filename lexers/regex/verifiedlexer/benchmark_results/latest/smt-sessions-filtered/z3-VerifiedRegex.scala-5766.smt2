; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285476 () Bool)

(assert start!285476)

(declare-fun b!2938465 () Bool)

(declare-fun e!1852115 () Bool)

(declare-fun tp_is_empty!15729 () Bool)

(assert (=> b!2938465 (= e!1852115 tp_is_empty!15729)))

(declare-fun b!2938466 () Bool)

(declare-fun e!1852113 () Bool)

(declare-fun tp!940716 () Bool)

(assert (=> b!2938466 (= e!1852113 (and tp_is_empty!15729 tp!940716))))

(declare-fun res!1212942 () Bool)

(declare-fun e!1852116 () Bool)

(assert (=> start!285476 (=> (not res!1212942) (not e!1852116))))

(declare-datatypes ((C!18352 0))(
  ( (C!18353 (val!11212 Int)) )
))
(declare-datatypes ((Regex!9083 0))(
  ( (ElementMatch!9083 (c!480277 C!18352)) (Concat!14404 (regOne!18678 Regex!9083) (regTwo!18678 Regex!9083)) (EmptyExpr!9083) (Star!9083 (reg!9412 Regex!9083)) (EmptyLang!9083) (Union!9083 (regOne!18679 Regex!9083) (regTwo!18679 Regex!9083)) )
))
(declare-fun r!17423 () Regex!9083)

(declare-fun validRegex!3816 (Regex!9083) Bool)

(assert (=> start!285476 (= res!1212942 (validRegex!3816 r!17423))))

(assert (=> start!285476 e!1852116))

(assert (=> start!285476 e!1852115))

(assert (=> start!285476 e!1852113))

(declare-fun b!2938467 () Bool)

(declare-fun tp!940713 () Bool)

(declare-fun tp!940714 () Bool)

(assert (=> b!2938467 (= e!1852115 (and tp!940713 tp!940714))))

(declare-fun b!2938468 () Bool)

(declare-fun e!1852114 () Bool)

(assert (=> b!2938468 (= e!1852114 true)))

(declare-datatypes ((List!34948 0))(
  ( (Nil!34824) (Cons!34824 (h!40244 C!18352) (t!234013 List!34948)) )
))
(declare-fun s!11993 () List!34948)

(declare-fun lt!1029588 () Regex!9083)

(declare-fun matchR!3965 (Regex!9083 List!34948) Bool)

(assert (=> b!2938468 (= (matchR!3965 (regOne!18678 r!17423) s!11993) (matchR!3965 lt!1029588 s!11993))))

(declare-datatypes ((Unit!48545 0))(
  ( (Unit!48546) )
))
(declare-fun lt!1029589 () Unit!48545)

(declare-fun lemmaSimplifySound!76 (Regex!9083 List!34948) Unit!48545)

(assert (=> b!2938468 (= lt!1029589 (lemmaSimplifySound!76 (regOne!18678 r!17423) s!11993))))

(declare-fun b!2938469 () Bool)

(declare-fun e!1852117 () Bool)

(assert (=> b!2938469 (= e!1852117 e!1852114)))

(declare-fun res!1212943 () Bool)

(assert (=> b!2938469 (=> res!1212943 e!1852114)))

(declare-fun isEmptyLang!211 (Regex!9083) Bool)

(assert (=> b!2938469 (= res!1212943 (not (isEmptyLang!211 lt!1029588)))))

(declare-fun lt!1029590 () Regex!9083)

(declare-fun simplify!88 (Regex!9083) Regex!9083)

(assert (=> b!2938469 (= lt!1029590 (simplify!88 (regTwo!18678 r!17423)))))

(assert (=> b!2938469 (= lt!1029588 (simplify!88 (regOne!18678 r!17423)))))

(declare-fun b!2938470 () Bool)

(declare-fun tp!940715 () Bool)

(assert (=> b!2938470 (= e!1852115 tp!940715)))

(declare-fun b!2938471 () Bool)

(declare-fun tp!940717 () Bool)

(declare-fun tp!940712 () Bool)

(assert (=> b!2938471 (= e!1852115 (and tp!940717 tp!940712))))

(declare-fun b!2938472 () Bool)

(declare-fun res!1212941 () Bool)

(assert (=> b!2938472 (=> res!1212941 e!1852117)))

(declare-fun isEmpty!19085 (List!34948) Bool)

(assert (=> b!2938472 (= res!1212941 (isEmpty!19085 s!11993))))

(declare-fun b!2938473 () Bool)

(assert (=> b!2938473 (= e!1852116 (not e!1852117))))

(declare-fun res!1212944 () Bool)

(assert (=> b!2938473 (=> res!1212944 e!1852117)))

(declare-fun lt!1029591 () Bool)

(get-info :version)

(assert (=> b!2938473 (= res!1212944 (or lt!1029591 (not ((_ is Concat!14404) r!17423))))))

(declare-fun matchRSpec!1220 (Regex!9083 List!34948) Bool)

(assert (=> b!2938473 (= lt!1029591 (matchRSpec!1220 r!17423 s!11993))))

(assert (=> b!2938473 (= lt!1029591 (matchR!3965 r!17423 s!11993))))

(declare-fun lt!1029587 () Unit!48545)

(declare-fun mainMatchTheorem!1220 (Regex!9083 List!34948) Unit!48545)

(assert (=> b!2938473 (= lt!1029587 (mainMatchTheorem!1220 r!17423 s!11993))))

(assert (= (and start!285476 res!1212942) b!2938473))

(assert (= (and b!2938473 (not res!1212944)) b!2938472))

(assert (= (and b!2938472 (not res!1212941)) b!2938469))

(assert (= (and b!2938469 (not res!1212943)) b!2938468))

(assert (= (and start!285476 ((_ is ElementMatch!9083) r!17423)) b!2938465))

(assert (= (and start!285476 ((_ is Concat!14404) r!17423)) b!2938471))

(assert (= (and start!285476 ((_ is Star!9083) r!17423)) b!2938470))

(assert (= (and start!285476 ((_ is Union!9083) r!17423)) b!2938467))

(assert (= (and start!285476 ((_ is Cons!34824) s!11993)) b!2938466))

(declare-fun m!3324439 () Bool)

(assert (=> b!2938472 m!3324439))

(declare-fun m!3324441 () Bool)

(assert (=> b!2938468 m!3324441))

(declare-fun m!3324443 () Bool)

(assert (=> b!2938468 m!3324443))

(declare-fun m!3324445 () Bool)

(assert (=> b!2938468 m!3324445))

(declare-fun m!3324447 () Bool)

(assert (=> b!2938469 m!3324447))

(declare-fun m!3324449 () Bool)

(assert (=> b!2938469 m!3324449))

(declare-fun m!3324451 () Bool)

(assert (=> b!2938469 m!3324451))

(declare-fun m!3324453 () Bool)

(assert (=> b!2938473 m!3324453))

(declare-fun m!3324455 () Bool)

(assert (=> b!2938473 m!3324455))

(declare-fun m!3324457 () Bool)

(assert (=> b!2938473 m!3324457))

(declare-fun m!3324459 () Bool)

(assert (=> start!285476 m!3324459))

(check-sat (not start!285476) (not b!2938470) (not b!2938468) (not b!2938467) tp_is_empty!15729 (not b!2938472) (not b!2938471) (not b!2938466) (not b!2938473) (not b!2938469))
(check-sat)
