; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!286808 () Bool)

(assert start!286808)

(declare-fun b!2959470 () Bool)

(declare-fun res!1221175 () Bool)

(declare-fun e!1863057 () Bool)

(assert (=> b!2959470 (=> res!1221175 e!1863057)))

(declare-datatypes ((C!18556 0))(
  ( (C!18557 (val!11314 Int)) )
))
(declare-datatypes ((Regex!9185 0))(
  ( (ElementMatch!9185 (c!484909 C!18556)) (Concat!14506 (regOne!18882 Regex!9185) (regTwo!18882 Regex!9185)) (EmptyExpr!9185) (Star!9185 (reg!9514 Regex!9185)) (EmptyLang!9185) (Union!9185 (regOne!18883 Regex!9185) (regTwo!18883 Regex!9185)) )
))
(declare-fun lt!1033892 () Regex!9185)

(declare-fun isEmptyExpr!388 (Regex!9185) Bool)

(assert (=> b!2959470 (= res!1221175 (isEmptyExpr!388 lt!1033892))))

(declare-fun b!2959471 () Bool)

(declare-fun res!1221172 () Bool)

(assert (=> b!2959471 (=> res!1221172 e!1863057)))

(declare-fun lt!1033893 () Regex!9185)

(assert (=> b!2959471 (= res!1221172 (isEmptyExpr!388 lt!1033893))))

(declare-fun res!1221173 () Bool)

(declare-fun e!1863054 () Bool)

(assert (=> start!286808 (=> (not res!1221173) (not e!1863054))))

(declare-fun r!17423 () Regex!9185)

(declare-fun validRegex!3918 (Regex!9185) Bool)

(assert (=> start!286808 (= res!1221173 (validRegex!3918 r!17423))))

(assert (=> start!286808 e!1863054))

(declare-fun e!1863053 () Bool)

(assert (=> start!286808 e!1863053))

(declare-fun e!1863056 () Bool)

(assert (=> start!286808 e!1863056))

(declare-fun b!2959472 () Bool)

(declare-fun res!1221171 () Bool)

(assert (=> b!2959472 (=> res!1221171 e!1863057)))

(declare-fun isEmptyLang!307 (Regex!9185) Bool)

(assert (=> b!2959472 (= res!1221171 (isEmptyLang!307 lt!1033893))))

(declare-fun b!2959473 () Bool)

(declare-fun tp!944603 () Bool)

(assert (=> b!2959473 (= e!1863053 tp!944603)))

(declare-fun b!2959474 () Bool)

(declare-fun res!1221174 () Bool)

(declare-fun e!1863055 () Bool)

(assert (=> b!2959474 (=> res!1221174 e!1863055)))

(declare-datatypes ((List!35050 0))(
  ( (Nil!34926) (Cons!34926 (h!40346 C!18556) (t!234115 List!35050)) )
))
(declare-fun s!11993 () List!35050)

(declare-fun isEmpty!19210 (List!35050) Bool)

(assert (=> b!2959474 (= res!1221174 (isEmpty!19210 s!11993))))

(declare-fun b!2959475 () Bool)

(assert (=> b!2959475 (= e!1863054 (not e!1863055))))

(declare-fun res!1221176 () Bool)

(assert (=> b!2959475 (=> res!1221176 e!1863055)))

(declare-fun lt!1033895 () Bool)

(get-info :version)

(assert (=> b!2959475 (= res!1221176 (or lt!1033895 (not ((_ is Concat!14506) r!17423))))))

(declare-fun matchRSpec!1322 (Regex!9185 List!35050) Bool)

(assert (=> b!2959475 (= lt!1033895 (matchRSpec!1322 r!17423 s!11993))))

(declare-fun matchR!4067 (Regex!9185 List!35050) Bool)

(assert (=> b!2959475 (= lt!1033895 (matchR!4067 r!17423 s!11993))))

(declare-datatypes ((Unit!48749 0))(
  ( (Unit!48750) )
))
(declare-fun lt!1033891 () Unit!48749)

(declare-fun mainMatchTheorem!1322 (Regex!9185 List!35050) Unit!48749)

(assert (=> b!2959475 (= lt!1033891 (mainMatchTheorem!1322 r!17423 s!11993))))

(declare-fun b!2959476 () Bool)

(declare-fun tp!944602 () Bool)

(declare-fun tp!944600 () Bool)

(assert (=> b!2959476 (= e!1863053 (and tp!944602 tp!944600))))

(declare-fun b!2959477 () Bool)

(declare-fun tp!944604 () Bool)

(declare-fun tp!944601 () Bool)

(assert (=> b!2959477 (= e!1863053 (and tp!944604 tp!944601))))

(declare-fun b!2959478 () Bool)

(declare-fun tp_is_empty!15933 () Bool)

(declare-fun tp!944605 () Bool)

(assert (=> b!2959478 (= e!1863056 (and tp_is_empty!15933 tp!944605))))

(declare-fun b!2959479 () Bool)

(assert (=> b!2959479 (= e!1863055 e!1863057)))

(declare-fun res!1221170 () Bool)

(assert (=> b!2959479 (=> res!1221170 e!1863057)))

(assert (=> b!2959479 (= res!1221170 (isEmptyLang!307 lt!1033892))))

(declare-fun simplify!190 (Regex!9185) Regex!9185)

(assert (=> b!2959479 (= lt!1033893 (simplify!190 (regTwo!18882 r!17423)))))

(assert (=> b!2959479 (= lt!1033892 (simplify!190 (regOne!18882 r!17423)))))

(declare-fun b!2959480 () Bool)

(assert (=> b!2959480 (= e!1863053 tp_is_empty!15933)))

(declare-fun b!2959481 () Bool)

(assert (=> b!2959481 (= e!1863057 true)))

(declare-fun lt!1033894 () Bool)

(assert (=> b!2959481 (= lt!1033894 (matchR!4067 (Concat!14506 lt!1033892 lt!1033893) s!11993))))

(assert (= (and start!286808 res!1221173) b!2959475))

(assert (= (and b!2959475 (not res!1221176)) b!2959474))

(assert (= (and b!2959474 (not res!1221174)) b!2959479))

(assert (= (and b!2959479 (not res!1221170)) b!2959472))

(assert (= (and b!2959472 (not res!1221171)) b!2959470))

(assert (= (and b!2959470 (not res!1221175)) b!2959471))

(assert (= (and b!2959471 (not res!1221172)) b!2959481))

(assert (= (and start!286808 ((_ is ElementMatch!9185) r!17423)) b!2959480))

(assert (= (and start!286808 ((_ is Concat!14506) r!17423)) b!2959477))

(assert (= (and start!286808 ((_ is Star!9185) r!17423)) b!2959473))

(assert (= (and start!286808 ((_ is Union!9185) r!17423)) b!2959476))

(assert (= (and start!286808 ((_ is Cons!34926) s!11993)) b!2959478))

(declare-fun m!3333781 () Bool)

(assert (=> b!2959472 m!3333781))

(declare-fun m!3333783 () Bool)

(assert (=> b!2959474 m!3333783))

(declare-fun m!3333785 () Bool)

(assert (=> b!2959481 m!3333785))

(declare-fun m!3333787 () Bool)

(assert (=> b!2959475 m!3333787))

(declare-fun m!3333789 () Bool)

(assert (=> b!2959475 m!3333789))

(declare-fun m!3333791 () Bool)

(assert (=> b!2959475 m!3333791))

(declare-fun m!3333793 () Bool)

(assert (=> b!2959470 m!3333793))

(declare-fun m!3333795 () Bool)

(assert (=> b!2959479 m!3333795))

(declare-fun m!3333797 () Bool)

(assert (=> b!2959479 m!3333797))

(declare-fun m!3333799 () Bool)

(assert (=> b!2959479 m!3333799))

(declare-fun m!3333801 () Bool)

(assert (=> start!286808 m!3333801))

(declare-fun m!3333803 () Bool)

(assert (=> b!2959471 m!3333803))

(check-sat (not b!2959479) (not start!286808) (not b!2959472) (not b!2959470) (not b!2959481) (not b!2959473) tp_is_empty!15933 (not b!2959474) (not b!2959477) (not b!2959471) (not b!2959478) (not b!2959475) (not b!2959476))
(check-sat)
