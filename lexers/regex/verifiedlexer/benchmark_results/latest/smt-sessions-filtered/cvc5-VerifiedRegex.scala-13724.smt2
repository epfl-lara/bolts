; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733618 () Bool)

(assert start!733618)

(declare-fun b!7614698 () Bool)

(declare-fun e!4528466 () Bool)

(assert (=> b!7614698 (= e!4528466 (not true))))

(declare-fun lt!2655122 () Bool)

(declare-datatypes ((C!40810 0))(
  ( (C!40811 (val!30845 Int)) )
))
(declare-datatypes ((Regex!20242 0))(
  ( (ElementMatch!20242 (c!1403717 C!40810)) (Concat!29087 (regOne!40996 Regex!20242) (regTwo!40996 Regex!20242)) (EmptyExpr!20242) (Star!20242 (reg!20571 Regex!20242)) (EmptyLang!20242) (Union!20242 (regOne!40997 Regex!20242) (regTwo!40997 Regex!20242)) )
))
(declare-fun r!14126 () Regex!20242)

(declare-datatypes ((List!73095 0))(
  ( (Nil!72971) (Cons!72971 (h!79419 C!40810) (t!387830 List!73095)) )
))
(declare-fun s!9605 () List!73095)

(declare-fun matchRSpec!4465 (Regex!20242 List!73095) Bool)

(assert (=> b!7614698 (= lt!2655122 (matchRSpec!4465 (regOne!40997 r!14126) s!9605))))

(declare-datatypes ((Unit!167292 0))(
  ( (Unit!167293) )
))
(declare-fun lt!2655121 () Unit!167292)

(declare-fun mainMatchTheorem!4459 (Regex!20242 List!73095) Unit!167292)

(assert (=> b!7614698 (= lt!2655121 (mainMatchTheorem!4459 (regOne!40997 r!14126) s!9605))))

(declare-fun e!4528467 () Bool)

(assert (=> b!7614698 e!4528467))

(declare-fun res!3048311 () Bool)

(assert (=> b!7614698 (=> res!3048311 e!4528467)))

(assert (=> b!7614698 (= res!3048311 lt!2655122)))

(declare-fun matchR!9757 (Regex!20242 List!73095) Bool)

(assert (=> b!7614698 (= lt!2655122 (matchR!9757 (regOne!40997 r!14126) s!9605))))

(declare-fun lt!2655123 () Unit!167292)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!341 (Regex!20242 Regex!20242 List!73095) Unit!167292)

(assert (=> b!7614698 (= lt!2655123 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!341 (regOne!40997 r!14126) (regTwo!40997 r!14126) s!9605))))

(declare-fun res!3048314 () Bool)

(assert (=> start!733618 (=> (not res!3048314) (not e!4528466))))

(declare-fun validRegex!10664 (Regex!20242) Bool)

(assert (=> start!733618 (= res!3048314 (validRegex!10664 r!14126))))

(assert (=> start!733618 e!4528466))

(declare-fun e!4528465 () Bool)

(assert (=> start!733618 e!4528465))

(declare-fun e!4528464 () Bool)

(assert (=> start!733618 e!4528464))

(declare-fun b!7614699 () Bool)

(declare-fun tp!2223229 () Bool)

(declare-fun tp!2223227 () Bool)

(assert (=> b!7614699 (= e!4528465 (and tp!2223229 tp!2223227))))

(declare-fun b!7614700 () Bool)

(declare-fun tp!2223224 () Bool)

(declare-fun tp!2223225 () Bool)

(assert (=> b!7614700 (= e!4528465 (and tp!2223224 tp!2223225))))

(declare-fun b!7614701 () Bool)

(declare-fun tp_is_empty!50839 () Bool)

(assert (=> b!7614701 (= e!4528465 tp_is_empty!50839)))

(declare-fun b!7614702 () Bool)

(declare-fun res!3048312 () Bool)

(assert (=> b!7614702 (=> (not res!3048312) (not e!4528466))))

(assert (=> b!7614702 (= res!3048312 (matchR!9757 r!14126 s!9605))))

(declare-fun b!7614703 () Bool)

(declare-fun res!3048313 () Bool)

(assert (=> b!7614703 (=> (not res!3048313) (not e!4528466))))

(assert (=> b!7614703 (= res!3048313 (and (not (is-EmptyExpr!20242 r!14126)) (not (is-EmptyLang!20242 r!14126)) (not (is-ElementMatch!20242 r!14126)) (is-Union!20242 r!14126)))))

(declare-fun b!7614704 () Bool)

(declare-fun tp!2223228 () Bool)

(assert (=> b!7614704 (= e!4528464 (and tp_is_empty!50839 tp!2223228))))

(declare-fun b!7614705 () Bool)

(declare-fun tp!2223226 () Bool)

(assert (=> b!7614705 (= e!4528465 tp!2223226)))

(declare-fun b!7614706 () Bool)

(assert (=> b!7614706 (= e!4528467 (matchR!9757 (regTwo!40997 r!14126) s!9605))))

(assert (= (and start!733618 res!3048314) b!7614703))

(assert (= (and b!7614703 res!3048313) b!7614702))

(assert (= (and b!7614702 res!3048312) b!7614698))

(assert (= (and b!7614698 (not res!3048311)) b!7614706))

(assert (= (and start!733618 (is-ElementMatch!20242 r!14126)) b!7614701))

(assert (= (and start!733618 (is-Concat!29087 r!14126)) b!7614700))

(assert (= (and start!733618 (is-Star!20242 r!14126)) b!7614705))

(assert (= (and start!733618 (is-Union!20242 r!14126)) b!7614699))

(assert (= (and start!733618 (is-Cons!72971 s!9605)) b!7614704))

(declare-fun m!8149170 () Bool)

(assert (=> b!7614698 m!8149170))

(declare-fun m!8149172 () Bool)

(assert (=> b!7614698 m!8149172))

(declare-fun m!8149174 () Bool)

(assert (=> b!7614698 m!8149174))

(declare-fun m!8149176 () Bool)

(assert (=> b!7614698 m!8149176))

(declare-fun m!8149178 () Bool)

(assert (=> start!733618 m!8149178))

(declare-fun m!8149180 () Bool)

(assert (=> b!7614702 m!8149180))

(declare-fun m!8149182 () Bool)

(assert (=> b!7614706 m!8149182))

(push 1)

(assert (not b!7614698))

(assert (not start!733618))

(assert (not b!7614702))

(assert (not b!7614706))

(assert (not b!7614705))

(assert (not b!7614700))

(assert tp_is_empty!50839)

(assert (not b!7614699))

(assert (not b!7614704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

