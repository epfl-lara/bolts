; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!733660 () Bool)

(assert start!733660)

(declare-fun b!7615508 () Bool)

(declare-fun e!4528865 () Bool)

(assert (=> b!7615508 (= e!4528865 false)))

(declare-fun b!7615509 () Bool)

(declare-fun e!4528867 () Bool)

(declare-fun tp!2223576 () Bool)

(assert (=> b!7615509 (= e!4528867 tp!2223576)))

(declare-fun b!7615510 () Bool)

(declare-datatypes ((Unit!167312 0))(
  ( (Unit!167313) )
))
(declare-fun e!4528863 () Unit!167312)

(declare-fun Unit!167314 () Unit!167312)

(assert (=> b!7615510 (= e!4528863 Unit!167314)))

(declare-fun lt!2655200 () Unit!167312)

(declare-datatypes ((C!40832 0))(
  ( (C!40833 (val!30856 Int)) )
))
(declare-datatypes ((Regex!20253 0))(
  ( (ElementMatch!20253 (c!1403814 C!40832)) (Concat!29098 (regOne!41018 Regex!20253) (regTwo!41018 Regex!20253)) (EmptyExpr!20253) (Star!20253 (reg!20582 Regex!20253)) (EmptyLang!20253) (Union!20253 (regOne!41019 Regex!20253) (regTwo!41019 Regex!20253)) )
))
(declare-fun r!14126 () Regex!20253)

(declare-datatypes ((List!73106 0))(
  ( (Nil!72982) (Cons!72982 (h!79430 C!40832) (t!387841 List!73106)) )
))
(declare-fun s!9605 () List!73106)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!92 (Regex!20253 Regex!20253 List!73106) Unit!167312)

(assert (=> b!7615510 (= lt!2655200 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!92 (regOne!41019 r!14126) (regTwo!41019 r!14126) s!9605))))

(declare-fun res!3048646 () Bool)

(declare-fun matchR!9768 (Regex!20253 List!73106) Bool)

(assert (=> b!7615510 (= res!3048646 (matchR!9768 r!14126 s!9605))))

(assert (=> b!7615510 (=> (not res!3048646) (not e!4528865))))

(assert (=> b!7615510 e!4528865))

(declare-fun b!7615511 () Bool)

(declare-fun tp!2223578 () Bool)

(declare-fun tp!2223577 () Bool)

(assert (=> b!7615511 (= e!4528867 (and tp!2223578 tp!2223577))))

(declare-fun b!7615512 () Bool)

(declare-fun e!4528862 () Bool)

(declare-fun e!4528866 () Bool)

(assert (=> b!7615512 (= e!4528862 e!4528866)))

(declare-fun res!3048647 () Bool)

(assert (=> b!7615512 (=> (not res!3048647) (not e!4528866))))

(assert (=> b!7615512 (= res!3048647 (matchR!9768 (regTwo!41019 r!14126) s!9605))))

(declare-fun lt!2655199 () Unit!167312)

(assert (=> b!7615512 (= lt!2655199 e!4528863)))

(declare-fun c!1403813 () Bool)

(assert (=> b!7615512 (= c!1403813 (matchR!9768 (regOne!41019 r!14126) s!9605))))

(declare-fun b!7615514 () Bool)

(declare-fun e!4528864 () Bool)

(declare-fun tp_is_empty!50861 () Bool)

(declare-fun tp!2223574 () Bool)

(assert (=> b!7615514 (= e!4528864 (and tp_is_empty!50861 tp!2223574))))

(declare-fun b!7615515 () Bool)

(assert (=> b!7615515 (= e!4528866 false)))

(declare-fun b!7615516 () Bool)

(declare-fun tp!2223579 () Bool)

(declare-fun tp!2223575 () Bool)

(assert (=> b!7615516 (= e!4528867 (and tp!2223579 tp!2223575))))

(declare-fun b!7615517 () Bool)

(declare-fun res!3048648 () Bool)

(assert (=> b!7615517 (=> (not res!3048648) (not e!4528862))))

(assert (=> b!7615517 (= res!3048648 (not (matchR!9768 r!14126 s!9605)))))

(declare-fun b!7615518 () Bool)

(declare-fun Unit!167315 () Unit!167312)

(assert (=> b!7615518 (= e!4528863 Unit!167315)))

(declare-fun b!7615519 () Bool)

(declare-fun res!3048649 () Bool)

(assert (=> b!7615519 (=> (not res!3048649) (not e!4528862))))

(get-info :version)

(assert (=> b!7615519 (= res!3048649 (and (not ((_ is EmptyExpr!20253) r!14126)) (not ((_ is EmptyLang!20253) r!14126)) (not ((_ is ElementMatch!20253) r!14126)) ((_ is Union!20253) r!14126)))))

(declare-fun b!7615513 () Bool)

(assert (=> b!7615513 (= e!4528867 tp_is_empty!50861)))

(declare-fun res!3048650 () Bool)

(assert (=> start!733660 (=> (not res!3048650) (not e!4528862))))

(declare-fun validRegex!10675 (Regex!20253) Bool)

(assert (=> start!733660 (= res!3048650 (validRegex!10675 r!14126))))

(assert (=> start!733660 e!4528862))

(assert (=> start!733660 e!4528867))

(assert (=> start!733660 e!4528864))

(assert (= (and start!733660 res!3048650) b!7615519))

(assert (= (and b!7615519 res!3048649) b!7615517))

(assert (= (and b!7615517 res!3048648) b!7615512))

(assert (= (and b!7615512 c!1403813) b!7615510))

(assert (= (and b!7615512 (not c!1403813)) b!7615518))

(assert (= (and b!7615510 res!3048646) b!7615508))

(assert (= (and b!7615512 res!3048647) b!7615515))

(assert (= (and start!733660 ((_ is ElementMatch!20253) r!14126)) b!7615513))

(assert (= (and start!733660 ((_ is Concat!29098) r!14126)) b!7615511))

(assert (= (and start!733660 ((_ is Star!20253) r!14126)) b!7615509))

(assert (= (and start!733660 ((_ is Union!20253) r!14126)) b!7615516))

(assert (= (and start!733660 ((_ is Cons!72982) s!9605)) b!7615514))

(declare-fun m!8149420 () Bool)

(assert (=> b!7615510 m!8149420))

(declare-fun m!8149422 () Bool)

(assert (=> b!7615510 m!8149422))

(declare-fun m!8149424 () Bool)

(assert (=> b!7615512 m!8149424))

(declare-fun m!8149426 () Bool)

(assert (=> b!7615512 m!8149426))

(assert (=> b!7615517 m!8149422))

(declare-fun m!8149428 () Bool)

(assert (=> start!733660 m!8149428))

(check-sat (not b!7615511) (not b!7615517) tp_is_empty!50861 (not b!7615516) (not b!7615512) (not b!7615510) (not start!733660) (not b!7615514) (not b!7615509))
(check-sat)
