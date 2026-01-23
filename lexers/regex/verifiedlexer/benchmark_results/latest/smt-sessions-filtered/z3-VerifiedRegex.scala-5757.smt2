; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!285320 () Bool)

(assert start!285320)

(declare-fun b!2935544 () Bool)

(assert (=> b!2935544 true))

(assert (=> b!2935544 true))

(assert (=> b!2935544 true))

(declare-fun lambda!109372 () Int)

(declare-fun lambda!109371 () Int)

(assert (=> b!2935544 (not (= lambda!109372 lambda!109371))))

(assert (=> b!2935544 true))

(assert (=> b!2935544 true))

(assert (=> b!2935544 true))

(declare-fun b!2935543 () Bool)

(declare-fun e!1850580 () Bool)

(declare-fun tp!940012 () Bool)

(declare-fun tp!940009 () Bool)

(assert (=> b!2935543 (= e!1850580 (and tp!940012 tp!940009))))

(declare-fun e!1850583 () Bool)

(declare-fun e!1850581 () Bool)

(assert (=> b!2935544 (= e!1850583 e!1850581)))

(declare-fun res!1211906 () Bool)

(assert (=> b!2935544 (=> res!1211906 e!1850581)))

(declare-fun lt!1029025 () Bool)

(assert (=> b!2935544 (= res!1211906 (not lt!1029025))))

(declare-fun Exists!1427 (Int) Bool)

(assert (=> b!2935544 (= (Exists!1427 lambda!109371) (Exists!1427 lambda!109372))))

(declare-datatypes ((Unit!48499 0))(
  ( (Unit!48500) )
))
(declare-fun lt!1029026 () Unit!48499)

(declare-datatypes ((C!18316 0))(
  ( (C!18317 (val!11194 Int)) )
))
(declare-datatypes ((Regex!9065 0))(
  ( (ElementMatch!9065 (c!479659 C!18316)) (Concat!14386 (regOne!18642 Regex!9065) (regTwo!18642 Regex!9065)) (EmptyExpr!9065) (Star!9065 (reg!9394 Regex!9065)) (EmptyLang!9065) (Union!9065 (regOne!18643 Regex!9065) (regTwo!18643 Regex!9065)) )
))
(declare-fun r!17423 () Regex!9065)

(declare-datatypes ((List!34930 0))(
  ( (Nil!34806) (Cons!34806 (h!40226 C!18316) (t!233995 List!34930)) )
))
(declare-fun s!11993 () List!34930)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!238 (Regex!9065 List!34930) Unit!48499)

(assert (=> b!2935544 (= lt!1029026 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!238 (reg!9394 r!17423) s!11993))))

(assert (=> b!2935544 (= lt!1029025 (Exists!1427 lambda!109371))))

(declare-datatypes ((tuple2!33780 0))(
  ( (tuple2!33781 (_1!20022 List!34930) (_2!20022 List!34930)) )
))
(declare-datatypes ((Option!6622 0))(
  ( (None!6621) (Some!6621 (v!34755 tuple2!33780)) )
))
(declare-fun lt!1029035 () Option!6622)

(declare-fun isDefined!5173 (Option!6622) Bool)

(assert (=> b!2935544 (= lt!1029025 (isDefined!5173 lt!1029035))))

(declare-fun lt!1029030 () Regex!9065)

(declare-fun findConcatSeparation!1016 (Regex!9065 Regex!9065 List!34930 List!34930 List!34930) Option!6622)

(assert (=> b!2935544 (= lt!1029035 (findConcatSeparation!1016 (reg!9394 r!17423) lt!1029030 Nil!34806 s!11993 s!11993))))

(declare-fun lt!1029034 () Unit!48499)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!798 (Regex!9065 Regex!9065 List!34930) Unit!48499)

(assert (=> b!2935544 (= lt!1029034 (lemmaFindConcatSeparationEquivalentToExists!798 (reg!9394 r!17423) lt!1029030 s!11993))))

(assert (=> b!2935544 (= lt!1029030 (Star!9065 (reg!9394 r!17423)))))

(declare-fun b!2935545 () Bool)

(declare-fun e!1850585 () Bool)

(declare-fun tp_is_empty!15693 () Bool)

(declare-fun tp!940008 () Bool)

(assert (=> b!2935545 (= e!1850585 (and tp_is_empty!15693 tp!940008))))

(declare-fun b!2935546 () Bool)

(declare-fun tp!940013 () Bool)

(assert (=> b!2935546 (= e!1850580 tp!940013)))

(declare-fun b!2935547 () Bool)

(assert (=> b!2935547 (= e!1850580 tp_is_empty!15693)))

(declare-fun b!2935548 () Bool)

(declare-fun e!1850579 () Bool)

(assert (=> b!2935548 (= e!1850579 (not e!1850583))))

(declare-fun res!1211902 () Bool)

(assert (=> b!2935548 (=> res!1211902 e!1850583)))

(declare-fun lt!1029021 () Bool)

(get-info :version)

(assert (=> b!2935548 (= res!1211902 (or (not lt!1029021) ((_ is Concat!14386) r!17423) ((_ is Union!9065) r!17423) (not ((_ is Star!9065) r!17423))))))

(declare-fun matchRSpec!1202 (Regex!9065 List!34930) Bool)

(assert (=> b!2935548 (= lt!1029021 (matchRSpec!1202 r!17423 s!11993))))

(declare-fun matchR!3947 (Regex!9065 List!34930) Bool)

(assert (=> b!2935548 (= lt!1029021 (matchR!3947 r!17423 s!11993))))

(declare-fun lt!1029027 () Unit!48499)

(declare-fun mainMatchTheorem!1202 (Regex!9065 List!34930) Unit!48499)

(assert (=> b!2935548 (= lt!1029027 (mainMatchTheorem!1202 r!17423 s!11993))))

(declare-fun res!1211904 () Bool)

(assert (=> start!285320 (=> (not res!1211904) (not e!1850579))))

(declare-fun validRegex!3798 (Regex!9065) Bool)

(assert (=> start!285320 (= res!1211904 (validRegex!3798 r!17423))))

(assert (=> start!285320 e!1850579))

(assert (=> start!285320 e!1850580))

(assert (=> start!285320 e!1850585))

(declare-fun b!2935549 () Bool)

(declare-fun res!1211907 () Bool)

(declare-fun e!1850582 () Bool)

(assert (=> b!2935549 (=> res!1211907 e!1850582)))

(declare-fun lt!1029023 () tuple2!33780)

(assert (=> b!2935549 (= res!1211907 (not (matchR!3947 lt!1029030 (_2!20022 lt!1029023))))))

(declare-fun b!2935550 () Bool)

(assert (=> b!2935550 (= e!1850581 e!1850582)))

(declare-fun res!1211903 () Bool)

(assert (=> b!2935550 (=> res!1211903 e!1850582)))

(assert (=> b!2935550 (= res!1211903 (not (matchR!3947 (reg!9394 r!17423) (_1!20022 lt!1029023))))))

(declare-fun get!10646 (Option!6622) tuple2!33780)

(assert (=> b!2935550 (= lt!1029023 (get!10646 lt!1029035))))

(declare-fun b!2935551 () Bool)

(declare-fun res!1211905 () Bool)

(declare-fun e!1850584 () Bool)

(assert (=> b!2935551 (=> res!1211905 e!1850584)))

(declare-fun lt!1029022 () Regex!9065)

(assert (=> b!2935551 (= res!1211905 (not (matchR!3947 lt!1029022 (_2!20022 lt!1029023))))))

(declare-fun b!2935552 () Bool)

(declare-fun res!1211901 () Bool)

(assert (=> b!2935552 (=> res!1211901 e!1850583)))

(declare-fun isEmpty!19067 (List!34930) Bool)

(assert (=> b!2935552 (= res!1211901 (isEmpty!19067 s!11993))))

(declare-fun b!2935553 () Bool)

(assert (=> b!2935553 (= e!1850582 e!1850584)))

(declare-fun res!1211908 () Bool)

(assert (=> b!2935553 (=> res!1211908 e!1850584)))

(declare-fun lt!1029033 () Regex!9065)

(assert (=> b!2935553 (= res!1211908 (not (= lt!1029033 lt!1029022)))))

(declare-fun lt!1029031 () Regex!9065)

(assert (=> b!2935553 (= lt!1029022 (Star!9065 lt!1029031))))

(assert (=> b!2935553 (matchR!3947 lt!1029033 (_2!20022 lt!1029023))))

(declare-fun simplify!72 (Regex!9065) Regex!9065)

(assert (=> b!2935553 (= lt!1029033 (simplify!72 lt!1029030))))

(declare-fun lt!1029028 () Unit!48499)

(declare-fun lemmaSimplifySound!68 (Regex!9065 List!34930) Unit!48499)

(assert (=> b!2935553 (= lt!1029028 (lemmaSimplifySound!68 lt!1029030 (_2!20022 lt!1029023)))))

(declare-fun lt!1029029 () Unit!48499)

(declare-fun e!1850578 () Unit!48499)

(assert (=> b!2935553 (= lt!1029029 e!1850578)))

(declare-fun c!479658 () Bool)

(declare-fun size!26461 (List!34930) Int)

(assert (=> b!2935553 (= c!479658 (= (size!26461 (_2!20022 lt!1029023)) (size!26461 s!11993)))))

(assert (=> b!2935553 (matchR!3947 lt!1029031 (_1!20022 lt!1029023))))

(assert (=> b!2935553 (= lt!1029031 (simplify!72 (reg!9394 r!17423)))))

(declare-fun lt!1029024 () Unit!48499)

(assert (=> b!2935553 (= lt!1029024 (lemmaSimplifySound!68 (reg!9394 r!17423) (_1!20022 lt!1029023)))))

(declare-fun b!2935554 () Bool)

(declare-fun Unit!48501 () Unit!48499)

(assert (=> b!2935554 (= e!1850578 Unit!48501)))

(declare-fun lt!1029032 () Unit!48499)

(assert (=> b!2935554 (= lt!1029032 (mainMatchTheorem!1202 (reg!9394 r!17423) (_1!20022 lt!1029023)))))

(assert (=> b!2935554 false))

(declare-fun b!2935555 () Bool)

(declare-fun Unit!48502 () Unit!48499)

(assert (=> b!2935555 (= e!1850578 Unit!48502)))

(declare-fun b!2935556 () Bool)

(declare-fun tp!940010 () Bool)

(declare-fun tp!940011 () Bool)

(assert (=> b!2935556 (= e!1850580 (and tp!940010 tp!940011))))

(declare-fun b!2935557 () Bool)

(assert (=> b!2935557 (= e!1850584 true)))

(assert (= (and start!285320 res!1211904) b!2935548))

(assert (= (and b!2935548 (not res!1211902)) b!2935552))

(assert (= (and b!2935552 (not res!1211901)) b!2935544))

(assert (= (and b!2935544 (not res!1211906)) b!2935550))

(assert (= (and b!2935550 (not res!1211903)) b!2935549))

(assert (= (and b!2935549 (not res!1211907)) b!2935553))

(assert (= (and b!2935553 c!479658) b!2935554))

(assert (= (and b!2935553 (not c!479658)) b!2935555))

(assert (= (and b!2935553 (not res!1211908)) b!2935551))

(assert (= (and b!2935551 (not res!1211905)) b!2935557))

(assert (= (and start!285320 ((_ is ElementMatch!9065) r!17423)) b!2935547))

(assert (= (and start!285320 ((_ is Concat!14386) r!17423)) b!2935543))

(assert (= (and start!285320 ((_ is Star!9065) r!17423)) b!2935546))

(assert (= (and start!285320 ((_ is Union!9065) r!17423)) b!2935556))

(assert (= (and start!285320 ((_ is Cons!34806) s!11993)) b!2935545))

(declare-fun m!3323421 () Bool)

(assert (=> b!2935553 m!3323421))

(declare-fun m!3323423 () Bool)

(assert (=> b!2935553 m!3323423))

(declare-fun m!3323425 () Bool)

(assert (=> b!2935553 m!3323425))

(declare-fun m!3323427 () Bool)

(assert (=> b!2935553 m!3323427))

(declare-fun m!3323429 () Bool)

(assert (=> b!2935553 m!3323429))

(declare-fun m!3323431 () Bool)

(assert (=> b!2935553 m!3323431))

(declare-fun m!3323433 () Bool)

(assert (=> b!2935553 m!3323433))

(declare-fun m!3323435 () Bool)

(assert (=> b!2935553 m!3323435))

(declare-fun m!3323437 () Bool)

(assert (=> b!2935554 m!3323437))

(declare-fun m!3323439 () Bool)

(assert (=> b!2935551 m!3323439))

(declare-fun m!3323441 () Bool)

(assert (=> b!2935549 m!3323441))

(declare-fun m!3323443 () Bool)

(assert (=> start!285320 m!3323443))

(declare-fun m!3323445 () Bool)

(assert (=> b!2935550 m!3323445))

(declare-fun m!3323447 () Bool)

(assert (=> b!2935550 m!3323447))

(declare-fun m!3323449 () Bool)

(assert (=> b!2935552 m!3323449))

(declare-fun m!3323451 () Bool)

(assert (=> b!2935544 m!3323451))

(declare-fun m!3323453 () Bool)

(assert (=> b!2935544 m!3323453))

(declare-fun m!3323455 () Bool)

(assert (=> b!2935544 m!3323455))

(assert (=> b!2935544 m!3323453))

(declare-fun m!3323457 () Bool)

(assert (=> b!2935544 m!3323457))

(declare-fun m!3323459 () Bool)

(assert (=> b!2935544 m!3323459))

(declare-fun m!3323461 () Bool)

(assert (=> b!2935544 m!3323461))

(declare-fun m!3323463 () Bool)

(assert (=> b!2935548 m!3323463))

(declare-fun m!3323465 () Bool)

(assert (=> b!2935548 m!3323465))

(declare-fun m!3323467 () Bool)

(assert (=> b!2935548 m!3323467))

(check-sat (not b!2935550) tp_is_empty!15693 (not b!2935554) (not b!2935549) (not b!2935548) (not b!2935546) (not b!2935544) (not b!2935556) (not b!2935543) (not b!2935553) (not b!2935552) (not b!2935545) (not b!2935551) (not start!285320))
(check-sat)
