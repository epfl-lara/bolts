; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740426 () Bool)

(assert start!740426)

(declare-fun b!7779047 () Bool)

(declare-fun e!4608260 () Bool)

(declare-fun tp!2286252 () Bool)

(assert (=> b!7779047 (= e!4608260 tp!2286252)))

(declare-fun b!7779048 () Bool)

(declare-fun e!4608255 () Bool)

(declare-fun e!4608257 () Bool)

(assert (=> b!7779048 (= e!4608255 e!4608257)))

(declare-fun res!3100761 () Bool)

(assert (=> b!7779048 (=> (not res!3100761) (not e!4608257))))

(declare-datatypes ((C!41948 0))(
  ( (C!41949 (val!31414 Int)) )
))
(declare-datatypes ((Regex!20811 0))(
  ( (ElementMatch!20811 (c!1433456 C!41948)) (Concat!29656 (regOne!42134 Regex!20811) (regTwo!42134 Regex!20811)) (EmptyExpr!20811) (Star!20811 (reg!21140 Regex!20811)) (EmptyLang!20811) (Union!20811 (regOne!42135 Regex!20811) (regTwo!42135 Regex!20811)) )
))
(declare-fun lt!2672593 () Regex!20811)

(declare-datatypes ((List!73650 0))(
  ( (Nil!73526) (Cons!73526 (h!79974 C!41948) (t!388385 List!73650)) )
))
(declare-fun s!14292 () List!73650)

(declare-fun matchR!10271 (Regex!20811 List!73650) Bool)

(assert (=> b!7779048 (= res!3100761 (matchR!10271 lt!2672593 s!14292))))

(declare-fun r1!6279 () Regex!20811)

(declare-fun r2!6217 () Regex!20811)

(assert (=> b!7779048 (= lt!2672593 (Concat!29656 r1!6279 r2!6217))))

(declare-fun b!7779049 () Bool)

(declare-fun res!3100764 () Bool)

(assert (=> b!7779049 (=> (not res!3100764) (not e!4608257))))

(get-info :version)

(assert (=> b!7779049 (= res!3100764 ((_ is Cons!73526) s!14292))))

(declare-fun b!7779051 () Bool)

(declare-fun tp_is_empty!51977 () Bool)

(assert (=> b!7779051 (= e!4608260 tp_is_empty!51977)))

(declare-fun b!7779052 () Bool)

(declare-fun tp!2286247 () Bool)

(declare-fun tp!2286255 () Bool)

(assert (=> b!7779052 (= e!4608260 (and tp!2286247 tp!2286255))))

(declare-fun b!7779053 () Bool)

(declare-fun e!4608256 () Bool)

(declare-fun tp!2286253 () Bool)

(declare-fun tp!2286254 () Bool)

(assert (=> b!7779053 (= e!4608256 (and tp!2286253 tp!2286254))))

(declare-fun b!7779054 () Bool)

(declare-fun e!4608254 () Bool)

(declare-fun e!4608258 () Bool)

(assert (=> b!7779054 (= e!4608254 e!4608258)))

(declare-fun res!3100762 () Bool)

(assert (=> b!7779054 (=> (not res!3100762) (not e!4608258))))

(declare-fun lt!2672595 () Regex!20811)

(declare-fun lt!2672596 () Regex!20811)

(assert (=> b!7779054 (= res!3100762 (= lt!2672595 (Union!20811 lt!2672596 EmptyLang!20811)))))

(declare-fun derivativeStep!6154 (Regex!20811 C!41948) Regex!20811)

(assert (=> b!7779054 (= lt!2672596 (Concat!29656 (derivativeStep!6154 r1!6279 (h!79974 s!14292)) r2!6217))))

(declare-fun b!7779055 () Bool)

(declare-fun e!4608259 () Bool)

(assert (=> b!7779055 (= e!4608259 (matchR!10271 EmptyLang!20811 (t!388385 s!14292)))))

(declare-fun b!7779056 () Bool)

(assert (=> b!7779056 (= e!4608257 e!4608254)))

(declare-fun res!3100765 () Bool)

(assert (=> b!7779056 (=> (not res!3100765) (not e!4608254))))

(assert (=> b!7779056 (= res!3100765 (matchR!10271 lt!2672595 (t!388385 s!14292)))))

(assert (=> b!7779056 (= lt!2672595 (derivativeStep!6154 lt!2672593 (h!79974 s!14292)))))

(declare-fun b!7779057 () Bool)

(declare-fun e!4608261 () Bool)

(declare-fun tp!2286248 () Bool)

(assert (=> b!7779057 (= e!4608261 (and tp_is_empty!51977 tp!2286248))))

(declare-fun b!7779058 () Bool)

(declare-fun res!3100763 () Bool)

(assert (=> b!7779058 (=> (not res!3100763) (not e!4608254))))

(declare-fun nullable!9199 (Regex!20811) Bool)

(assert (=> b!7779058 (= res!3100763 (not (nullable!9199 r1!6279)))))

(declare-fun b!7779059 () Bool)

(declare-fun tp!2286257 () Bool)

(declare-fun tp!2286251 () Bool)

(assert (=> b!7779059 (= e!4608256 (and tp!2286257 tp!2286251))))

(declare-fun res!3100767 () Bool)

(assert (=> start!740426 (=> (not res!3100767) (not e!4608255))))

(declare-fun validRegex!11225 (Regex!20811) Bool)

(assert (=> start!740426 (= res!3100767 (validRegex!11225 r1!6279))))

(assert (=> start!740426 e!4608255))

(assert (=> start!740426 e!4608256))

(assert (=> start!740426 e!4608260))

(assert (=> start!740426 e!4608261))

(declare-fun b!7779050 () Bool)

(assert (=> b!7779050 (= e!4608258 (not true))))

(assert (=> b!7779050 e!4608259))

(declare-fun res!3100768 () Bool)

(assert (=> b!7779050 (=> res!3100768 e!4608259)))

(assert (=> b!7779050 (= res!3100768 (matchR!10271 lt!2672596 (t!388385 s!14292)))))

(declare-datatypes ((Unit!168512 0))(
  ( (Unit!168513) )
))
(declare-fun lt!2672594 () Unit!168512)

(declare-fun lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!380 (Regex!20811 Regex!20811 List!73650) Unit!168512)

(assert (=> b!7779050 (= lt!2672594 (lemmaRegexUnionAcceptsThenOneOfTheTwoAccepts!380 lt!2672596 EmptyLang!20811 (t!388385 s!14292)))))

(declare-fun b!7779060 () Bool)

(assert (=> b!7779060 (= e!4608256 tp_is_empty!51977)))

(declare-fun b!7779061 () Bool)

(declare-fun res!3100766 () Bool)

(assert (=> b!7779061 (=> (not res!3100766) (not e!4608255))))

(assert (=> b!7779061 (= res!3100766 (validRegex!11225 r2!6217))))

(declare-fun b!7779062 () Bool)

(declare-fun tp!2286256 () Bool)

(assert (=> b!7779062 (= e!4608256 tp!2286256)))

(declare-fun b!7779063 () Bool)

(declare-fun tp!2286249 () Bool)

(declare-fun tp!2286250 () Bool)

(assert (=> b!7779063 (= e!4608260 (and tp!2286249 tp!2286250))))

(assert (= (and start!740426 res!3100767) b!7779061))

(assert (= (and b!7779061 res!3100766) b!7779048))

(assert (= (and b!7779048 res!3100761) b!7779049))

(assert (= (and b!7779049 res!3100764) b!7779056))

(assert (= (and b!7779056 res!3100765) b!7779058))

(assert (= (and b!7779058 res!3100763) b!7779054))

(assert (= (and b!7779054 res!3100762) b!7779050))

(assert (= (and b!7779050 (not res!3100768)) b!7779055))

(assert (= (and start!740426 ((_ is ElementMatch!20811) r1!6279)) b!7779060))

(assert (= (and start!740426 ((_ is Concat!29656) r1!6279)) b!7779053))

(assert (= (and start!740426 ((_ is Star!20811) r1!6279)) b!7779062))

(assert (= (and start!740426 ((_ is Union!20811) r1!6279)) b!7779059))

(assert (= (and start!740426 ((_ is ElementMatch!20811) r2!6217)) b!7779051))

(assert (= (and start!740426 ((_ is Concat!29656) r2!6217)) b!7779052))

(assert (= (and start!740426 ((_ is Star!20811) r2!6217)) b!7779047))

(assert (= (and start!740426 ((_ is Union!20811) r2!6217)) b!7779063))

(assert (= (and start!740426 ((_ is Cons!73526) s!14292)) b!7779057))

(declare-fun m!8228178 () Bool)

(assert (=> b!7779061 m!8228178))

(declare-fun m!8228180 () Bool)

(assert (=> b!7779055 m!8228180))

(declare-fun m!8228182 () Bool)

(assert (=> start!740426 m!8228182))

(declare-fun m!8228184 () Bool)

(assert (=> b!7779050 m!8228184))

(declare-fun m!8228186 () Bool)

(assert (=> b!7779050 m!8228186))

(declare-fun m!8228188 () Bool)

(assert (=> b!7779058 m!8228188))

(declare-fun m!8228190 () Bool)

(assert (=> b!7779056 m!8228190))

(declare-fun m!8228192 () Bool)

(assert (=> b!7779056 m!8228192))

(declare-fun m!8228194 () Bool)

(assert (=> b!7779054 m!8228194))

(declare-fun m!8228196 () Bool)

(assert (=> b!7779048 m!8228196))

(check-sat (not b!7779058) (not b!7779053) (not b!7779061) (not b!7779054) (not b!7779048) (not b!7779056) tp_is_empty!51977 (not b!7779062) (not b!7779057) (not b!7779050) (not b!7779052) (not b!7779063) (not b!7779055) (not start!740426) (not b!7779047) (not b!7779059))
(check-sat)
