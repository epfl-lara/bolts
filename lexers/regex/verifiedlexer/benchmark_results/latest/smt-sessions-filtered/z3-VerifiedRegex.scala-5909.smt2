; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!289352 () Bool)

(assert start!289352)

(declare-fun b!3001950 () Bool)

(declare-fun e!1885700 () Bool)

(declare-fun e!1885699 () Bool)

(assert (=> b!3001950 (= e!1885700 e!1885699)))

(declare-fun res!1237100 () Bool)

(assert (=> b!3001950 (=> res!1237100 e!1885699)))

(declare-fun lt!1042041 () Bool)

(assert (=> b!3001950 (= res!1237100 (not lt!1042041))))

(declare-fun e!1885705 () Bool)

(assert (=> b!3001950 e!1885705))

(declare-fun res!1237106 () Bool)

(assert (=> b!3001950 (=> res!1237106 e!1885705)))

(assert (=> b!3001950 (= res!1237106 lt!1042041)))

(declare-datatypes ((C!18924 0))(
  ( (C!18925 (val!11498 Int)) )
))
(declare-datatypes ((Regex!9369 0))(
  ( (ElementMatch!9369 (c!494053 C!18924)) (Concat!14690 (regOne!19250 Regex!9369) (regTwo!19250 Regex!9369)) (EmptyExpr!9369) (Star!9369 (reg!9698 Regex!9369)) (EmptyLang!9369) (Union!9369 (regOne!19251 Regex!9369) (regTwo!19251 Regex!9369)) )
))
(declare-fun lt!1042040 () Regex!9369)

(declare-datatypes ((List!35234 0))(
  ( (Nil!35110) (Cons!35110 (h!40530 C!18924) (t!234299 List!35234)) )
))
(declare-fun s!11993 () List!35234)

(declare-fun matchR!4251 (Regex!9369 List!35234) Bool)

(assert (=> b!3001950 (= lt!1042041 (matchR!4251 lt!1042040 s!11993))))

(declare-fun lt!1042043 () Regex!9369)

(declare-datatypes ((Unit!49153 0))(
  ( (Unit!49154) )
))
(declare-fun lt!1042042 () Unit!49153)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!294 (Regex!9369 Regex!9369 List!35234) Unit!49153)

(assert (=> b!3001950 (= lt!1042042 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!294 lt!1042040 lt!1042043 s!11993))))

(declare-fun b!3001951 () Bool)

(declare-fun e!1885702 () Bool)

(declare-fun e!1885703 () Bool)

(assert (=> b!3001951 (= e!1885702 (not e!1885703))))

(declare-fun res!1237104 () Bool)

(assert (=> b!3001951 (=> res!1237104 e!1885703)))

(declare-fun lt!1042044 () Bool)

(declare-fun r!17423 () Regex!9369)

(get-info :version)

(assert (=> b!3001951 (= res!1237104 (or lt!1042044 ((_ is Concat!14690) r!17423) (not ((_ is Union!9369) r!17423))))))

(declare-fun matchRSpec!1506 (Regex!9369 List!35234) Bool)

(assert (=> b!3001951 (= lt!1042044 (matchRSpec!1506 r!17423 s!11993))))

(assert (=> b!3001951 (= lt!1042044 (matchR!4251 r!17423 s!11993))))

(declare-fun lt!1042038 () Unit!49153)

(declare-fun mainMatchTheorem!1506 (Regex!9369 List!35234) Unit!49153)

(assert (=> b!3001951 (= lt!1042038 (mainMatchTheorem!1506 r!17423 s!11993))))

(declare-fun b!3001952 () Bool)

(declare-fun e!1885704 () Bool)

(declare-fun tp!954053 () Bool)

(assert (=> b!3001952 (= e!1885704 tp!954053)))

(declare-fun b!3001953 () Bool)

(declare-fun tp_is_empty!16301 () Bool)

(assert (=> b!3001953 (= e!1885704 tp_is_empty!16301)))

(declare-fun b!3001954 () Bool)

(assert (=> b!3001954 (= e!1885705 (matchR!4251 lt!1042043 s!11993))))

(declare-fun b!3001955 () Bool)

(declare-fun e!1885701 () Bool)

(declare-fun tp!954052 () Bool)

(assert (=> b!3001955 (= e!1885701 (and tp_is_empty!16301 tp!954052))))

(declare-fun b!3001957 () Bool)

(declare-fun tp!954051 () Bool)

(declare-fun tp!954050 () Bool)

(assert (=> b!3001957 (= e!1885704 (and tp!954051 tp!954050))))

(declare-fun b!3001958 () Bool)

(declare-fun tp!954049 () Bool)

(declare-fun tp!954048 () Bool)

(assert (=> b!3001958 (= e!1885704 (and tp!954049 tp!954048))))

(declare-fun b!3001959 () Bool)

(assert (=> b!3001959 (= e!1885699 true)))

(assert (=> b!3001959 (matchR!4251 (regOne!19251 r!17423) s!11993)))

(declare-fun lt!1042039 () Unit!49153)

(declare-fun lemmaSimplifySound!216 (Regex!9369 List!35234) Unit!49153)

(assert (=> b!3001959 (= lt!1042039 (lemmaSimplifySound!216 (regOne!19251 r!17423) s!11993))))

(declare-fun b!3001956 () Bool)

(declare-fun res!1237101 () Bool)

(assert (=> b!3001956 (=> res!1237101 e!1885700)))

(assert (=> b!3001956 (= res!1237101 (not (matchR!4251 (Union!9369 lt!1042040 lt!1042043) s!11993)))))

(declare-fun res!1237105 () Bool)

(assert (=> start!289352 (=> (not res!1237105) (not e!1885702))))

(declare-fun validRegex!4102 (Regex!9369) Bool)

(assert (=> start!289352 (= res!1237105 (validRegex!4102 r!17423))))

(assert (=> start!289352 e!1885702))

(assert (=> start!289352 e!1885704))

(assert (=> start!289352 e!1885701))

(declare-fun b!3001960 () Bool)

(assert (=> b!3001960 (= e!1885703 e!1885700)))

(declare-fun res!1237103 () Bool)

(assert (=> b!3001960 (=> res!1237103 e!1885700)))

(declare-fun isEmptyLang!459 (Regex!9369) Bool)

(assert (=> b!3001960 (= res!1237103 (isEmptyLang!459 lt!1042040))))

(declare-fun simplify!360 (Regex!9369) Regex!9369)

(assert (=> b!3001960 (= lt!1042043 (simplify!360 (regTwo!19251 r!17423)))))

(assert (=> b!3001960 (= lt!1042040 (simplify!360 (regOne!19251 r!17423)))))

(declare-fun b!3001961 () Bool)

(declare-fun res!1237102 () Bool)

(assert (=> b!3001961 (=> res!1237102 e!1885700)))

(assert (=> b!3001961 (= res!1237102 (isEmptyLang!459 lt!1042043))))

(assert (= (and start!289352 res!1237105) b!3001951))

(assert (= (and b!3001951 (not res!1237104)) b!3001960))

(assert (= (and b!3001960 (not res!1237103)) b!3001961))

(assert (= (and b!3001961 (not res!1237102)) b!3001956))

(assert (= (and b!3001956 (not res!1237101)) b!3001950))

(assert (= (and b!3001950 (not res!1237106)) b!3001954))

(assert (= (and b!3001950 (not res!1237100)) b!3001959))

(assert (= (and start!289352 ((_ is ElementMatch!9369) r!17423)) b!3001953))

(assert (= (and start!289352 ((_ is Concat!14690) r!17423)) b!3001958))

(assert (= (and start!289352 ((_ is Star!9369) r!17423)) b!3001952))

(assert (= (and start!289352 ((_ is Union!9369) r!17423)) b!3001957))

(assert (= (and start!289352 ((_ is Cons!35110) s!11993)) b!3001955))

(declare-fun m!3352665 () Bool)

(assert (=> b!3001950 m!3352665))

(declare-fun m!3352667 () Bool)

(assert (=> b!3001950 m!3352667))

(declare-fun m!3352669 () Bool)

(assert (=> b!3001959 m!3352669))

(declare-fun m!3352671 () Bool)

(assert (=> b!3001959 m!3352671))

(declare-fun m!3352673 () Bool)

(assert (=> b!3001951 m!3352673))

(declare-fun m!3352675 () Bool)

(assert (=> b!3001951 m!3352675))

(declare-fun m!3352677 () Bool)

(assert (=> b!3001951 m!3352677))

(declare-fun m!3352679 () Bool)

(assert (=> b!3001956 m!3352679))

(declare-fun m!3352681 () Bool)

(assert (=> b!3001954 m!3352681))

(declare-fun m!3352683 () Bool)

(assert (=> b!3001961 m!3352683))

(declare-fun m!3352685 () Bool)

(assert (=> start!289352 m!3352685))

(declare-fun m!3352687 () Bool)

(assert (=> b!3001960 m!3352687))

(declare-fun m!3352689 () Bool)

(assert (=> b!3001960 m!3352689))

(declare-fun m!3352691 () Bool)

(assert (=> b!3001960 m!3352691))

(check-sat (not b!3001957) (not b!3001960) (not b!3001951) tp_is_empty!16301 (not b!3001952) (not b!3001954) (not b!3001955) (not b!3001956) (not start!289352) (not b!3001958) (not b!3001950) (not b!3001961) (not b!3001959))
(check-sat)
