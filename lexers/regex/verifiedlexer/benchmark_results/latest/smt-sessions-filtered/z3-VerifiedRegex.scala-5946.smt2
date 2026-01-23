; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!291140 () Bool)

(assert start!291140)

(declare-fun b!3038035 () Bool)

(declare-fun res!1249522 () Bool)

(declare-fun e!1904813 () Bool)

(assert (=> b!3038035 (=> res!1249522 e!1904813)))

(declare-datatypes ((C!19072 0))(
  ( (C!19073 (val!11572 Int)) )
))
(declare-datatypes ((Regex!9443 0))(
  ( (ElementMatch!9443 (c!502501 C!19072)) (Concat!14764 (regOne!19398 Regex!9443) (regTwo!19398 Regex!9443)) (EmptyExpr!9443) (Star!9443 (reg!9772 Regex!9443)) (EmptyLang!9443) (Union!9443 (regOne!19399 Regex!9443) (regTwo!19399 Regex!9443)) )
))
(declare-fun r!17423 () Regex!9443)

(declare-fun validRegex!4176 (Regex!9443) Bool)

(assert (=> b!3038035 (= res!1249522 (not (validRegex!4176 (reg!9772 r!17423))))))

(declare-fun b!3038036 () Bool)

(declare-fun e!1904812 () Bool)

(declare-fun tp_is_empty!16449 () Bool)

(declare-fun tp!962004 () Bool)

(assert (=> b!3038036 (= e!1904812 (and tp_is_empty!16449 tp!962004))))

(declare-fun b!3038037 () Bool)

(declare-fun e!1904815 () Bool)

(assert (=> b!3038037 (= e!1904815 (not e!1904813))))

(declare-fun res!1249520 () Bool)

(assert (=> b!3038037 (=> res!1249520 e!1904813)))

(declare-fun lt!1046934 () Bool)

(get-info :version)

(assert (=> b!3038037 (= res!1249520 (or (not lt!1046934) ((_ is Concat!14764) r!17423) ((_ is Union!9443) r!17423) (not ((_ is Star!9443) r!17423))))))

(declare-datatypes ((List!35308 0))(
  ( (Nil!35184) (Cons!35184 (h!40604 C!19072) (t!234373 List!35308)) )
))
(declare-fun s!11993 () List!35308)

(declare-fun matchRSpec!1580 (Regex!9443 List!35308) Bool)

(assert (=> b!3038037 (= lt!1046934 (matchRSpec!1580 r!17423 s!11993))))

(declare-fun matchR!4325 (Regex!9443 List!35308) Bool)

(assert (=> b!3038037 (= lt!1046934 (matchR!4325 r!17423 s!11993))))

(declare-datatypes ((Unit!49309 0))(
  ( (Unit!49310) )
))
(declare-fun lt!1046933 () Unit!49309)

(declare-fun mainMatchTheorem!1580 (Regex!9443 List!35308) Unit!49309)

(assert (=> b!3038037 (= lt!1046933 (mainMatchTheorem!1580 r!17423 s!11993))))

(declare-fun b!3038038 () Bool)

(declare-fun e!1904814 () Bool)

(declare-fun tp!962007 () Bool)

(declare-fun tp!962008 () Bool)

(assert (=> b!3038038 (= e!1904814 (and tp!962007 tp!962008))))

(declare-fun b!3038039 () Bool)

(assert (=> b!3038039 (= e!1904814 tp_is_empty!16449)))

(declare-fun b!3038040 () Bool)

(declare-fun res!1249519 () Bool)

(assert (=> b!3038040 (=> res!1249519 e!1904813)))

(declare-fun isEmpty!19484 (List!35308) Bool)

(assert (=> b!3038040 (= res!1249519 (isEmpty!19484 s!11993))))

(declare-fun b!3038041 () Bool)

(declare-fun tp!962005 () Bool)

(declare-fun tp!962006 () Bool)

(assert (=> b!3038041 (= e!1904814 (and tp!962005 tp!962006))))

(declare-fun res!1249521 () Bool)

(assert (=> start!291140 (=> (not res!1249521) (not e!1904815))))

(assert (=> start!291140 (= res!1249521 (validRegex!4176 r!17423))))

(assert (=> start!291140 e!1904815))

(assert (=> start!291140 e!1904814))

(assert (=> start!291140 e!1904812))

(declare-fun b!3038042 () Bool)

(assert (=> b!3038042 (= e!1904813 (validRegex!4176 (Star!9443 (reg!9772 r!17423))))))

(declare-fun b!3038043 () Bool)

(declare-fun tp!962009 () Bool)

(assert (=> b!3038043 (= e!1904814 tp!962009)))

(assert (= (and start!291140 res!1249521) b!3038037))

(assert (= (and b!3038037 (not res!1249520)) b!3038040))

(assert (= (and b!3038040 (not res!1249519)) b!3038035))

(assert (= (and b!3038035 (not res!1249522)) b!3038042))

(assert (= (and start!291140 ((_ is ElementMatch!9443) r!17423)) b!3038039))

(assert (= (and start!291140 ((_ is Concat!14764) r!17423)) b!3038041))

(assert (= (and start!291140 ((_ is Star!9443) r!17423)) b!3038043))

(assert (= (and start!291140 ((_ is Union!9443) r!17423)) b!3038038))

(assert (= (and start!291140 ((_ is Cons!35184) s!11993)) b!3038036))

(declare-fun m!3370843 () Bool)

(assert (=> b!3038037 m!3370843))

(declare-fun m!3370845 () Bool)

(assert (=> b!3038037 m!3370845))

(declare-fun m!3370847 () Bool)

(assert (=> b!3038037 m!3370847))

(declare-fun m!3370849 () Bool)

(assert (=> start!291140 m!3370849))

(declare-fun m!3370851 () Bool)

(assert (=> b!3038040 m!3370851))

(declare-fun m!3370853 () Bool)

(assert (=> b!3038042 m!3370853))

(declare-fun m!3370855 () Bool)

(assert (=> b!3038035 m!3370855))

(check-sat (not b!3038040) (not b!3038041) (not b!3038037) (not b!3038043) (not b!3038042) (not b!3038036) (not b!3038038) tp_is_empty!16449 (not b!3038035) (not start!291140))
(check-sat)
