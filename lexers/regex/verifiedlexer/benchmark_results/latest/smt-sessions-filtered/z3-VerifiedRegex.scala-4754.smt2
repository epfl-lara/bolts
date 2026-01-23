; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!245336 () Bool)

(assert start!245336)

(declare-fun b!2515986 () Bool)

(declare-fun e!1593949 () Bool)

(declare-fun tp!804030 () Bool)

(declare-fun tp!804032 () Bool)

(assert (=> b!2515986 (= e!1593949 (and tp!804030 tp!804032))))

(declare-fun b!2515987 () Bool)

(declare-fun e!1593950 () Bool)

(declare-datatypes ((C!15124 0))(
  ( (C!15125 (val!9214 Int)) )
))
(declare-datatypes ((List!29548 0))(
  ( (Nil!29448) (Cons!29448 (h!34868 C!15124) (t!211247 List!29548)) )
))
(declare-fun tl!4068 () List!29548)

(declare-datatypes ((Regex!7483 0))(
  ( (ElementMatch!7483 (c!401033 C!15124)) (Concat!12179 (regOne!15478 Regex!7483) (regTwo!15478 Regex!7483)) (EmptyExpr!7483) (Star!7483 (reg!7812 Regex!7483)) (EmptyLang!7483) (Union!7483 (regOne!15479 Regex!7483) (regTwo!15479 Regex!7483)) )
))
(declare-fun matchR!3482 (Regex!7483 List!29548) Bool)

(assert (=> b!2515987 (= e!1593950 (matchR!3482 EmptyLang!7483 tl!4068))))

(declare-fun b!2515988 () Bool)

(declare-fun tp_is_empty!12821 () Bool)

(assert (=> b!2515988 (= e!1593949 tp_is_empty!12821)))

(declare-fun b!2515990 () Bool)

(declare-fun e!1593945 () Bool)

(declare-fun e!1593948 () Bool)

(assert (=> b!2515990 (= e!1593945 (not e!1593948))))

(declare-fun res!1063576 () Bool)

(assert (=> b!2515990 (=> res!1063576 e!1593948)))

(declare-fun lt!898890 () Bool)

(assert (=> b!2515990 (= res!1063576 (not lt!898890))))

(declare-fun derivative!178 (Regex!7483 List!29548) Regex!7483)

(assert (=> b!2515990 (= (derivative!178 EmptyLang!7483 tl!4068) EmptyLang!7483)))

(declare-datatypes ((Unit!43215 0))(
  ( (Unit!43216) )
))
(declare-fun lt!898891 () Unit!43215)

(declare-fun lemmaEmptyLangDerivativeIsAFixPoint!30 (Regex!7483 List!29548) Unit!43215)

(assert (=> b!2515990 (= lt!898891 (lemmaEmptyLangDerivativeIsAFixPoint!30 EmptyLang!7483 tl!4068))))

(assert (=> b!2515990 e!1593950))

(declare-fun res!1063578 () Bool)

(assert (=> b!2515990 (=> res!1063578 e!1593950)))

(assert (=> b!2515990 (= res!1063578 lt!898890)))

(declare-fun lt!898886 () Regex!7483)

(assert (=> b!2515990 (= lt!898890 (matchR!3482 lt!898886 tl!4068))))

(declare-fun lt!898888 () Unit!43215)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!170 (Regex!7483 Regex!7483 List!29548) Unit!43215)

(assert (=> b!2515990 (= lt!898888 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!170 lt!898886 EmptyLang!7483 tl!4068))))

(declare-fun lt!898887 () Regex!7483)

(assert (=> b!2515990 (= (matchR!3482 lt!898887 tl!4068) (matchR!3482 (derivative!178 lt!898887 tl!4068) Nil!29448))))

(declare-fun lt!898889 () Unit!43215)

(declare-fun lemmaMatchRIsSameAsWholeDerivativeAndNil!128 (Regex!7483 List!29548) Unit!43215)

(assert (=> b!2515990 (= lt!898889 (lemmaMatchRIsSameAsWholeDerivativeAndNil!128 lt!898887 tl!4068))))

(assert (=> b!2515990 (= lt!898887 (Union!7483 lt!898886 EmptyLang!7483))))

(declare-fun lt!898894 () Regex!7483)

(declare-fun r!27340 () Regex!7483)

(assert (=> b!2515990 (= lt!898886 (Concat!12179 lt!898894 (regTwo!15478 r!27340)))))

(declare-fun c!14016 () C!15124)

(declare-fun derivativeStep!2052 (Regex!7483 C!15124) Regex!7483)

(assert (=> b!2515990 (= lt!898894 (derivativeStep!2052 (regOne!15478 r!27340) c!14016))))

(declare-fun b!2515991 () Bool)

(declare-fun res!1063580 () Bool)

(assert (=> b!2515991 (=> (not res!1063580) (not e!1593945))))

(get-info :version)

(assert (=> b!2515991 (= res!1063580 (and (not ((_ is EmptyExpr!7483) r!27340)) (not ((_ is EmptyLang!7483) r!27340)) (not ((_ is ElementMatch!7483) r!27340)) (not ((_ is Union!7483) r!27340)) (not ((_ is Star!7483) r!27340))))))

(declare-fun b!2515992 () Bool)

(declare-fun res!1063581 () Bool)

(declare-fun e!1593946 () Bool)

(assert (=> b!2515992 (=> res!1063581 e!1593946)))

(declare-datatypes ((tuple2!29496 0))(
  ( (tuple2!29497 (_1!17290 List!29548) (_2!17290 List!29548)) )
))
(declare-fun lt!898893 () tuple2!29496)

(assert (=> b!2515992 (= res!1063581 (not (matchR!3482 (regOne!15478 r!27340) (Cons!29448 c!14016 (_1!17290 lt!898893)))))))

(declare-fun b!2515993 () Bool)

(declare-fun res!1063579 () Bool)

(assert (=> b!2515993 (=> res!1063579 e!1593946)))

(assert (=> b!2515993 (= res!1063579 (not (matchR!3482 lt!898894 (_1!17290 lt!898893))))))

(declare-fun b!2515994 () Bool)

(assert (=> b!2515994 (= e!1593946 true)))

(declare-fun b!2515995 () Bool)

(declare-fun e!1593947 () Bool)

(declare-fun tp!804033 () Bool)

(assert (=> b!2515995 (= e!1593947 (and tp_is_empty!12821 tp!804033))))

(declare-fun b!2515996 () Bool)

(declare-fun res!1063575 () Bool)

(assert (=> b!2515996 (=> (not res!1063575) (not e!1593945))))

(declare-fun nullable!2400 (Regex!7483) Bool)

(assert (=> b!2515996 (= res!1063575 (not (nullable!2400 (regOne!15478 r!27340))))))

(declare-fun res!1063582 () Bool)

(assert (=> start!245336 (=> (not res!1063582) (not e!1593945))))

(declare-fun validRegex!3109 (Regex!7483) Bool)

(assert (=> start!245336 (= res!1063582 (validRegex!3109 r!27340))))

(assert (=> start!245336 e!1593945))

(assert (=> start!245336 e!1593949))

(assert (=> start!245336 tp_is_empty!12821))

(assert (=> start!245336 e!1593947))

(declare-fun b!2515989 () Bool)

(declare-fun res!1063574 () Bool)

(assert (=> b!2515989 (=> res!1063574 e!1593946)))

(assert (=> b!2515989 (= res!1063574 (not (matchR!3482 (regTwo!15478 r!27340) (_2!17290 lt!898893))))))

(declare-fun b!2515997 () Bool)

(declare-fun tp!804034 () Bool)

(assert (=> b!2515997 (= e!1593949 tp!804034)))

(declare-fun b!2515998 () Bool)

(assert (=> b!2515998 (= e!1593948 e!1593946)))

(declare-fun res!1063577 () Bool)

(assert (=> b!2515998 (=> res!1063577 e!1593946)))

(declare-fun ++!7217 (List!29548 List!29548) List!29548)

(assert (=> b!2515998 (= res!1063577 (not (= (++!7217 (_1!17290 lt!898893) (_2!17290 lt!898893)) tl!4068)))))

(declare-datatypes ((Option!5868 0))(
  ( (None!5867) (Some!5867 (v!31798 tuple2!29496)) )
))
(declare-fun lt!898892 () Option!5868)

(declare-fun get!9188 (Option!5868) tuple2!29496)

(assert (=> b!2515998 (= lt!898893 (get!9188 lt!898892))))

(declare-fun isDefined!4690 (Option!5868) Bool)

(assert (=> b!2515998 (isDefined!4690 lt!898892)))

(declare-fun findConcatSeparation!890 (Regex!7483 Regex!7483 List!29548 List!29548 List!29548) Option!5868)

(assert (=> b!2515998 (= lt!898892 (findConcatSeparation!890 lt!898894 (regTwo!15478 r!27340) Nil!29448 tl!4068 tl!4068))))

(declare-fun lt!898885 () Unit!43215)

(declare-fun lemmaConcatAcceptsStringThenFindSeparationIsDefined!172 (Regex!7483 Regex!7483 List!29548) Unit!43215)

(assert (=> b!2515998 (= lt!898885 (lemmaConcatAcceptsStringThenFindSeparationIsDefined!172 lt!898894 (regTwo!15478 r!27340) tl!4068))))

(declare-fun b!2515999 () Bool)

(declare-fun tp!804031 () Bool)

(declare-fun tp!804029 () Bool)

(assert (=> b!2515999 (= e!1593949 (and tp!804031 tp!804029))))

(declare-fun b!2516000 () Bool)

(declare-fun res!1063573 () Bool)

(assert (=> b!2516000 (=> (not res!1063573) (not e!1593945))))

(assert (=> b!2516000 (= res!1063573 (nullable!2400 (derivative!178 (derivativeStep!2052 r!27340 c!14016) tl!4068)))))

(assert (= (and start!245336 res!1063582) b!2516000))

(assert (= (and b!2516000 res!1063573) b!2515991))

(assert (= (and b!2515991 res!1063580) b!2515996))

(assert (= (and b!2515996 res!1063575) b!2515990))

(assert (= (and b!2515990 (not res!1063578)) b!2515987))

(assert (= (and b!2515990 (not res!1063576)) b!2515998))

(assert (= (and b!2515998 (not res!1063577)) b!2515993))

(assert (= (and b!2515993 (not res!1063579)) b!2515989))

(assert (= (and b!2515989 (not res!1063574)) b!2515992))

(assert (= (and b!2515992 (not res!1063581)) b!2515994))

(assert (= (and start!245336 ((_ is ElementMatch!7483) r!27340)) b!2515988))

(assert (= (and start!245336 ((_ is Concat!12179) r!27340)) b!2515986))

(assert (= (and start!245336 ((_ is Star!7483) r!27340)) b!2515997))

(assert (= (and start!245336 ((_ is Union!7483) r!27340)) b!2515999))

(assert (= (and start!245336 ((_ is Cons!29448) tl!4068)) b!2515995))

(declare-fun m!2873051 () Bool)

(assert (=> b!2515992 m!2873051))

(declare-fun m!2873053 () Bool)

(assert (=> b!2516000 m!2873053))

(assert (=> b!2516000 m!2873053))

(declare-fun m!2873055 () Bool)

(assert (=> b!2516000 m!2873055))

(assert (=> b!2516000 m!2873055))

(declare-fun m!2873057 () Bool)

(assert (=> b!2516000 m!2873057))

(declare-fun m!2873059 () Bool)

(assert (=> b!2515993 m!2873059))

(declare-fun m!2873061 () Bool)

(assert (=> b!2515990 m!2873061))

(declare-fun m!2873063 () Bool)

(assert (=> b!2515990 m!2873063))

(declare-fun m!2873065 () Bool)

(assert (=> b!2515990 m!2873065))

(declare-fun m!2873067 () Bool)

(assert (=> b!2515990 m!2873067))

(declare-fun m!2873069 () Bool)

(assert (=> b!2515990 m!2873069))

(declare-fun m!2873071 () Bool)

(assert (=> b!2515990 m!2873071))

(assert (=> b!2515990 m!2873065))

(declare-fun m!2873073 () Bool)

(assert (=> b!2515990 m!2873073))

(declare-fun m!2873075 () Bool)

(assert (=> b!2515990 m!2873075))

(declare-fun m!2873077 () Bool)

(assert (=> b!2515990 m!2873077))

(declare-fun m!2873079 () Bool)

(assert (=> b!2515989 m!2873079))

(declare-fun m!2873081 () Bool)

(assert (=> b!2515998 m!2873081))

(declare-fun m!2873083 () Bool)

(assert (=> b!2515998 m!2873083))

(declare-fun m!2873085 () Bool)

(assert (=> b!2515998 m!2873085))

(declare-fun m!2873087 () Bool)

(assert (=> b!2515998 m!2873087))

(declare-fun m!2873089 () Bool)

(assert (=> b!2515998 m!2873089))

(declare-fun m!2873091 () Bool)

(assert (=> b!2515996 m!2873091))

(declare-fun m!2873093 () Bool)

(assert (=> b!2515987 m!2873093))

(declare-fun m!2873095 () Bool)

(assert (=> start!245336 m!2873095))

(check-sat (not b!2515990) tp_is_empty!12821 (not b!2515986) (not b!2515995) (not b!2515999) (not b!2515987) (not b!2515993) (not b!2516000) (not b!2515996) (not b!2515992) (not b!2515989) (not b!2515998) (not b!2515997) (not start!245336))
(check-sat)
