; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!289356 () Bool)

(assert start!289356)

(declare-fun b!3002022 () Bool)

(declare-fun e!1885742 () Bool)

(declare-fun e!1885747 () Bool)

(assert (=> b!3002022 (= e!1885742 (not e!1885747))))

(declare-fun res!1237145 () Bool)

(assert (=> b!3002022 (=> res!1237145 e!1885747)))

(declare-fun lt!1042087 () Bool)

(declare-datatypes ((C!18928 0))(
  ( (C!18929 (val!11500 Int)) )
))
(declare-datatypes ((Regex!9371 0))(
  ( (ElementMatch!9371 (c!494055 C!18928)) (Concat!14692 (regOne!19254 Regex!9371) (regTwo!19254 Regex!9371)) (EmptyExpr!9371) (Star!9371 (reg!9700 Regex!9371)) (EmptyLang!9371) (Union!9371 (regOne!19255 Regex!9371) (regTwo!19255 Regex!9371)) )
))
(declare-fun r!17423 () Regex!9371)

(get-info :version)

(assert (=> b!3002022 (= res!1237145 (or lt!1042087 ((_ is Concat!14692) r!17423) (not ((_ is Union!9371) r!17423))))))

(declare-datatypes ((List!35236 0))(
  ( (Nil!35112) (Cons!35112 (h!40532 C!18928) (t!234301 List!35236)) )
))
(declare-fun s!11993 () List!35236)

(declare-fun matchRSpec!1508 (Regex!9371 List!35236) Bool)

(assert (=> b!3002022 (= lt!1042087 (matchRSpec!1508 r!17423 s!11993))))

(declare-fun matchR!4253 (Regex!9371 List!35236) Bool)

(assert (=> b!3002022 (= lt!1042087 (matchR!4253 r!17423 s!11993))))

(declare-datatypes ((Unit!49157 0))(
  ( (Unit!49158) )
))
(declare-fun lt!1042090 () Unit!49157)

(declare-fun mainMatchTheorem!1508 (Regex!9371 List!35236) Unit!49157)

(assert (=> b!3002022 (= lt!1042090 (mainMatchTheorem!1508 r!17423 s!11993))))

(declare-fun b!3002023 () Bool)

(declare-fun e!1885741 () Bool)

(declare-fun tp!954087 () Bool)

(declare-fun tp!954085 () Bool)

(assert (=> b!3002023 (= e!1885741 (and tp!954087 tp!954085))))

(declare-fun b!3002024 () Bool)

(declare-fun e!1885745 () Bool)

(declare-fun lt!1042089 () Regex!9371)

(assert (=> b!3002024 (= e!1885745 (matchR!4253 lt!1042089 s!11993))))

(declare-fun b!3002025 () Bool)

(declare-fun tp!954086 () Bool)

(declare-fun tp!954084 () Bool)

(assert (=> b!3002025 (= e!1885741 (and tp!954086 tp!954084))))

(declare-fun b!3002026 () Bool)

(declare-fun tp_is_empty!16305 () Bool)

(assert (=> b!3002026 (= e!1885741 tp_is_empty!16305)))

(declare-fun b!3002027 () Bool)

(declare-fun tp!954088 () Bool)

(assert (=> b!3002027 (= e!1885741 tp!954088)))

(declare-fun b!3002028 () Bool)

(declare-fun res!1237142 () Bool)

(declare-fun e!1885744 () Bool)

(assert (=> b!3002028 (=> res!1237142 e!1885744)))

(declare-fun isEmptyLang!461 (Regex!9371) Bool)

(assert (=> b!3002028 (= res!1237142 (isEmptyLang!461 lt!1042089))))

(declare-fun b!3002029 () Bool)

(declare-fun res!1237144 () Bool)

(assert (=> b!3002029 (=> res!1237144 e!1885744)))

(declare-fun lt!1042086 () Regex!9371)

(assert (=> b!3002029 (= res!1237144 (not (matchR!4253 (Union!9371 lt!1042086 lt!1042089) s!11993)))))

(declare-fun res!1237147 () Bool)

(assert (=> start!289356 (=> (not res!1237147) (not e!1885742))))

(declare-fun validRegex!4104 (Regex!9371) Bool)

(assert (=> start!289356 (= res!1237147 (validRegex!4104 r!17423))))

(assert (=> start!289356 e!1885742))

(assert (=> start!289356 e!1885741))

(declare-fun e!1885743 () Bool)

(assert (=> start!289356 e!1885743))

(declare-fun b!3002030 () Bool)

(assert (=> b!3002030 (= e!1885747 e!1885744)))

(declare-fun res!1237146 () Bool)

(assert (=> b!3002030 (=> res!1237146 e!1885744)))

(assert (=> b!3002030 (= res!1237146 (isEmptyLang!461 lt!1042086))))

(declare-fun simplify!362 (Regex!9371) Regex!9371)

(assert (=> b!3002030 (= lt!1042089 (simplify!362 (regTwo!19255 r!17423)))))

(assert (=> b!3002030 (= lt!1042086 (simplify!362 (regOne!19255 r!17423)))))

(declare-fun b!3002031 () Bool)

(declare-fun e!1885746 () Bool)

(assert (=> b!3002031 (= e!1885744 e!1885746)))

(declare-fun res!1237148 () Bool)

(assert (=> b!3002031 (=> res!1237148 e!1885746)))

(declare-fun lt!1042085 () Bool)

(assert (=> b!3002031 (= res!1237148 lt!1042085)))

(assert (=> b!3002031 e!1885745))

(declare-fun res!1237143 () Bool)

(assert (=> b!3002031 (=> res!1237143 e!1885745)))

(assert (=> b!3002031 (= res!1237143 lt!1042085)))

(assert (=> b!3002031 (= lt!1042085 (matchR!4253 lt!1042086 s!11993))))

(declare-fun lt!1042088 () Unit!49157)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!296 (Regex!9371 Regex!9371 List!35236) Unit!49157)

(assert (=> b!3002031 (= lt!1042088 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!296 lt!1042086 lt!1042089 s!11993))))

(declare-fun b!3002032 () Bool)

(declare-fun tp!954089 () Bool)

(assert (=> b!3002032 (= e!1885743 (and tp_is_empty!16305 tp!954089))))

(declare-fun b!3002033 () Bool)

(declare-fun lt!1042092 () Bool)

(assert (=> b!3002033 (= e!1885746 lt!1042092)))

(assert (=> b!3002033 (= lt!1042092 (matchR!4253 lt!1042089 s!11993))))

(assert (=> b!3002033 (= lt!1042092 (matchR!4253 (regTwo!19255 r!17423) s!11993))))

(declare-fun lt!1042091 () Unit!49157)

(declare-fun lemmaSimplifySound!218 (Regex!9371 List!35236) Unit!49157)

(assert (=> b!3002033 (= lt!1042091 (lemmaSimplifySound!218 (regTwo!19255 r!17423) s!11993))))

(assert (= (and start!289356 res!1237147) b!3002022))

(assert (= (and b!3002022 (not res!1237145)) b!3002030))

(assert (= (and b!3002030 (not res!1237146)) b!3002028))

(assert (= (and b!3002028 (not res!1237142)) b!3002029))

(assert (= (and b!3002029 (not res!1237144)) b!3002031))

(assert (= (and b!3002031 (not res!1237143)) b!3002024))

(assert (= (and b!3002031 (not res!1237148)) b!3002033))

(assert (= (and start!289356 ((_ is ElementMatch!9371) r!17423)) b!3002026))

(assert (= (and start!289356 ((_ is Concat!14692) r!17423)) b!3002023))

(assert (= (and start!289356 ((_ is Star!9371) r!17423)) b!3002027))

(assert (= (and start!289356 ((_ is Union!9371) r!17423)) b!3002025))

(assert (= (and start!289356 ((_ is Cons!35112) s!11993)) b!3002032))

(declare-fun m!3352721 () Bool)

(assert (=> b!3002033 m!3352721))

(declare-fun m!3352723 () Bool)

(assert (=> b!3002033 m!3352723))

(declare-fun m!3352725 () Bool)

(assert (=> b!3002033 m!3352725))

(declare-fun m!3352727 () Bool)

(assert (=> b!3002030 m!3352727))

(declare-fun m!3352729 () Bool)

(assert (=> b!3002030 m!3352729))

(declare-fun m!3352731 () Bool)

(assert (=> b!3002030 m!3352731))

(declare-fun m!3352733 () Bool)

(assert (=> b!3002028 m!3352733))

(declare-fun m!3352735 () Bool)

(assert (=> b!3002029 m!3352735))

(assert (=> b!3002024 m!3352721))

(declare-fun m!3352737 () Bool)

(assert (=> start!289356 m!3352737))

(declare-fun m!3352739 () Bool)

(assert (=> b!3002031 m!3352739))

(declare-fun m!3352741 () Bool)

(assert (=> b!3002031 m!3352741))

(declare-fun m!3352743 () Bool)

(assert (=> b!3002022 m!3352743))

(declare-fun m!3352745 () Bool)

(assert (=> b!3002022 m!3352745))

(declare-fun m!3352747 () Bool)

(assert (=> b!3002022 m!3352747))

(check-sat (not b!3002031) (not b!3002023) (not b!3002032) (not b!3002025) (not start!289356) (not b!3002027) (not b!3002030) (not b!3002028) tp_is_empty!16305 (not b!3002029) (not b!3002033) (not b!3002024) (not b!3002022))
(check-sat)
