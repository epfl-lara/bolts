; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!730992 () Bool)

(assert start!730992)

(declare-fun b!7568422 () Bool)

(declare-fun e!4506133 () Bool)

(declare-fun tp!2204394 () Bool)

(assert (=> b!7568422 (= e!4506133 tp!2204394)))

(declare-fun b!7568423 () Bool)

(declare-fun e!4506131 () Bool)

(declare-fun tp!2204386 () Bool)

(assert (=> b!7568423 (= e!4506131 tp!2204386)))

(declare-fun b!7568424 () Bool)

(declare-fun e!4506132 () Bool)

(declare-fun tp_is_empty!50329 () Bool)

(declare-fun tp!2204389 () Bool)

(assert (=> b!7568424 (= e!4506132 (and tp_is_empty!50329 tp!2204389))))

(declare-fun b!7568425 () Bool)

(declare-fun e!4506129 () Bool)

(assert (=> b!7568425 (= e!4506129 false)))

(declare-fun lt!2650866 () Bool)

(declare-datatypes ((C!40300 0))(
  ( (C!40301 (val!30590 Int)) )
))
(declare-datatypes ((List!72870 0))(
  ( (Nil!72746) (Cons!72746 (h!79194 C!40300) (t!387605 List!72870)) )
))
(declare-fun testedP!418 () List!72870)

(declare-fun input!7855 () List!72870)

(declare-fun isPrefix!6193 (List!72870 List!72870) Bool)

(assert (=> b!7568425 (= lt!2650866 (isPrefix!6193 testedP!418 input!7855))))

(declare-fun b!7568426 () Bool)

(assert (=> b!7568426 (= e!4506131 tp_is_empty!50329)))

(declare-fun b!7568427 () Bool)

(declare-fun e!4506130 () Bool)

(declare-fun tp!2204387 () Bool)

(assert (=> b!7568427 (= e!4506130 (and tp_is_empty!50329 tp!2204387))))

(declare-fun res!3031992 () Bool)

(assert (=> start!730992 (=> (not res!3031992) (not e!4506129))))

(declare-datatypes ((Regex!19987 0))(
  ( (ElementMatch!19987 (c!1396622 C!40300)) (Concat!28832 (regOne!40486 Regex!19987) (regTwo!40486 Regex!19987)) (EmptyExpr!19987) (Star!19987 (reg!20316 Regex!19987)) (EmptyLang!19987) (Union!19987 (regOne!40487 Regex!19987) (regTwo!40487 Regex!19987)) )
))
(declare-fun baseR!100 () Regex!19987)

(declare-fun validRegex!10415 (Regex!19987) Bool)

(assert (=> start!730992 (= res!3031992 (validRegex!10415 baseR!100))))

(assert (=> start!730992 e!4506129))

(assert (=> start!730992 e!4506131))

(assert (=> start!730992 e!4506133))

(assert (=> start!730992 e!4506132))

(assert (=> start!730992 e!4506130))

(declare-fun b!7568428 () Bool)

(declare-fun res!3031991 () Bool)

(assert (=> b!7568428 (=> (not res!3031991) (not e!4506129))))

(declare-fun r!24129 () Regex!19987)

(assert (=> b!7568428 (= res!3031991 (validRegex!10415 r!24129))))

(declare-fun b!7568429 () Bool)

(declare-fun tp!2204388 () Bool)

(declare-fun tp!2204396 () Bool)

(assert (=> b!7568429 (= e!4506133 (and tp!2204388 tp!2204396))))

(declare-fun b!7568430 () Bool)

(declare-fun tp!2204390 () Bool)

(declare-fun tp!2204393 () Bool)

(assert (=> b!7568430 (= e!4506131 (and tp!2204390 tp!2204393))))

(declare-fun b!7568431 () Bool)

(declare-fun tp!2204397 () Bool)

(declare-fun tp!2204392 () Bool)

(assert (=> b!7568431 (= e!4506131 (and tp!2204397 tp!2204392))))

(declare-fun b!7568432 () Bool)

(assert (=> b!7568432 (= e!4506133 tp_is_empty!50329)))

(declare-fun b!7568433 () Bool)

(declare-fun tp!2204395 () Bool)

(declare-fun tp!2204391 () Bool)

(assert (=> b!7568433 (= e!4506133 (and tp!2204395 tp!2204391))))

(assert (= (and start!730992 res!3031992) b!7568428))

(assert (= (and b!7568428 res!3031991) b!7568425))

(get-info :version)

(assert (= (and start!730992 ((_ is ElementMatch!19987) baseR!100)) b!7568426))

(assert (= (and start!730992 ((_ is Concat!28832) baseR!100)) b!7568430))

(assert (= (and start!730992 ((_ is Star!19987) baseR!100)) b!7568423))

(assert (= (and start!730992 ((_ is Union!19987) baseR!100)) b!7568431))

(assert (= (and start!730992 ((_ is ElementMatch!19987) r!24129)) b!7568432))

(assert (= (and start!730992 ((_ is Concat!28832) r!24129)) b!7568433))

(assert (= (and start!730992 ((_ is Star!19987) r!24129)) b!7568422))

(assert (= (and start!730992 ((_ is Union!19987) r!24129)) b!7568429))

(assert (= (and start!730992 ((_ is Cons!72746) testedP!418)) b!7568424))

(assert (= (and start!730992 ((_ is Cons!72746) input!7855)) b!7568427))

(declare-fun m!8130900 () Bool)

(assert (=> b!7568425 m!8130900))

(declare-fun m!8130902 () Bool)

(assert (=> start!730992 m!8130902))

(declare-fun m!8130904 () Bool)

(assert (=> b!7568428 m!8130904))

(check-sat (not start!730992) (not b!7568433) (not b!7568427) tp_is_empty!50329 (not b!7568425) (not b!7568424) (not b!7568431) (not b!7568428) (not b!7568430) (not b!7568429) (not b!7568423) (not b!7568422))
(check-sat)
