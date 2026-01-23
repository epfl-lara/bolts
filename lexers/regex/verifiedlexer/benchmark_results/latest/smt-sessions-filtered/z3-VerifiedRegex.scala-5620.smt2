; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281522 () Bool)

(assert start!281522)

(declare-fun b!2883862 () Bool)

(declare-fun res!1194835 () Bool)

(declare-fun e!1824009 () Bool)

(assert (=> b!2883862 (=> (not res!1194835) (not e!1824009))))

(declare-datatypes ((C!17772 0))(
  ( (C!17773 (val!10920 Int)) )
))
(declare-datatypes ((Regex!8795 0))(
  ( (ElementMatch!8795 (c!468522 C!17772)) (Concat!14116 (regOne!18102 Regex!8795) (regTwo!18102 Regex!8795)) (EmptyExpr!8795) (Star!8795 (reg!9124 Regex!8795)) (EmptyLang!8795) (Union!8795 (regOne!18103 Regex!8795) (regTwo!18103 Regex!8795)) )
))
(declare-fun r!23079 () Regex!8795)

(declare-datatypes ((List!34596 0))(
  ( (Nil!34472) (Cons!34472 (h!39892 C!17772) (t!233639 List!34596)) )
))
(declare-datatypes ((Option!6468 0))(
  ( (None!6467) (Some!6467 (v!34593 List!34596)) )
))
(declare-fun isDefined!5032 (Option!6468) Bool)

(declare-fun getLanguageWitness!502 (Regex!8795) Option!6468)

(assert (=> b!2883862 (= res!1194835 (isDefined!5032 (getLanguageWitness!502 r!23079)))))

(declare-fun b!2883864 () Bool)

(declare-fun e!1824013 () Bool)

(assert (=> b!2883864 (= e!1824013 true)))

(declare-fun b!2883865 () Bool)

(declare-fun e!1824010 () Bool)

(declare-fun tp_is_empty!15177 () Bool)

(assert (=> b!2883865 (= e!1824010 tp_is_empty!15177)))

(declare-fun b!2883866 () Bool)

(declare-fun res!1194837 () Bool)

(assert (=> b!2883866 (=> (not res!1194837) (not e!1824009))))

(get-info :version)

(assert (=> b!2883866 (= res!1194837 (and (not ((_ is EmptyExpr!8795) r!23079)) (not ((_ is EmptyLang!8795) r!23079)) (not ((_ is ElementMatch!8795) r!23079)) (not ((_ is Star!8795) r!23079)) (not ((_ is Union!8795) r!23079))))))

(declare-fun b!2883867 () Bool)

(declare-fun tp!924947 () Bool)

(assert (=> b!2883867 (= e!1824010 tp!924947)))

(declare-fun b!2883868 () Bool)

(declare-fun tp!924946 () Bool)

(declare-fun tp!924948 () Bool)

(assert (=> b!2883868 (= e!1824010 (and tp!924946 tp!924948))))

(declare-fun b!2883869 () Bool)

(declare-fun tp!924945 () Bool)

(declare-fun tp!924949 () Bool)

(assert (=> b!2883869 (= e!1824010 (and tp!924945 tp!924949))))

(declare-fun b!2883870 () Bool)

(declare-fun res!1194841 () Bool)

(assert (=> b!2883870 (=> res!1194841 e!1824013)))

(declare-fun lt!1020324 () Option!6468)

(declare-fun matchR!3777 (Regex!8795 List!34596) Bool)

(assert (=> b!2883870 (= res!1194841 (not (matchR!3777 (regTwo!18102 r!23079) (v!34593 lt!1020324))))))

(declare-fun b!2883871 () Bool)

(declare-fun e!1824012 () Bool)

(assert (=> b!2883871 (= e!1824009 e!1824012)))

(declare-fun res!1194838 () Bool)

(assert (=> b!2883871 (=> (not res!1194838) (not e!1824012))))

(declare-fun lt!1020326 () Option!6468)

(assert (=> b!2883871 (= res!1194838 ((_ is Some!6467) lt!1020326))))

(assert (=> b!2883871 (= lt!1020326 (getLanguageWitness!502 (regOne!18102 r!23079)))))

(declare-fun b!2883872 () Bool)

(declare-fun e!1824011 () Bool)

(assert (=> b!2883872 (= e!1824011 (not e!1824013))))

(declare-fun res!1194839 () Bool)

(assert (=> b!2883872 (=> res!1194839 e!1824013)))

(assert (=> b!2883872 (= res!1194839 (not (matchR!3777 (regOne!18102 r!23079) (v!34593 lt!1020326))))))

(declare-fun get!10407 (Option!6468) List!34596)

(assert (=> b!2883872 (matchR!3777 (regTwo!18102 r!23079) (get!10407 lt!1020324))))

(declare-datatypes ((Unit!48059 0))(
  ( (Unit!48060) )
))
(declare-fun lt!1020323 () Unit!48059)

(declare-fun lemmaGetWitnessMatches!84 (Regex!8795) Unit!48059)

(assert (=> b!2883872 (= lt!1020323 (lemmaGetWitnessMatches!84 (regTwo!18102 r!23079)))))

(assert (=> b!2883872 (matchR!3777 (regOne!18102 r!23079) (get!10407 lt!1020326))))

(declare-fun lt!1020325 () Unit!48059)

(assert (=> b!2883872 (= lt!1020325 (lemmaGetWitnessMatches!84 (regOne!18102 r!23079)))))

(declare-fun b!2883863 () Bool)

(assert (=> b!2883863 (= e!1824012 e!1824011)))

(declare-fun res!1194840 () Bool)

(assert (=> b!2883863 (=> (not res!1194840) (not e!1824011))))

(assert (=> b!2883863 (= res!1194840 ((_ is Some!6467) lt!1020324))))

(assert (=> b!2883863 (= lt!1020324 (getLanguageWitness!502 (regTwo!18102 r!23079)))))

(declare-fun res!1194836 () Bool)

(assert (=> start!281522 (=> (not res!1194836) (not e!1824009))))

(declare-fun validRegex!3568 (Regex!8795) Bool)

(assert (=> start!281522 (= res!1194836 (validRegex!3568 r!23079))))

(assert (=> start!281522 e!1824009))

(assert (=> start!281522 e!1824010))

(assert (= (and start!281522 res!1194836) b!2883862))

(assert (= (and b!2883862 res!1194835) b!2883866))

(assert (= (and b!2883866 res!1194837) b!2883871))

(assert (= (and b!2883871 res!1194838) b!2883863))

(assert (= (and b!2883863 res!1194840) b!2883872))

(assert (= (and b!2883872 (not res!1194839)) b!2883870))

(assert (= (and b!2883870 (not res!1194841)) b!2883864))

(assert (= (and start!281522 ((_ is ElementMatch!8795) r!23079)) b!2883865))

(assert (= (and start!281522 ((_ is Concat!14116) r!23079)) b!2883868))

(assert (= (and start!281522 ((_ is Star!8795) r!23079)) b!2883867))

(assert (= (and start!281522 ((_ is Union!8795) r!23079)) b!2883869))

(declare-fun m!3300213 () Bool)

(assert (=> start!281522 m!3300213))

(declare-fun m!3300215 () Bool)

(assert (=> b!2883862 m!3300215))

(assert (=> b!2883862 m!3300215))

(declare-fun m!3300217 () Bool)

(assert (=> b!2883862 m!3300217))

(declare-fun m!3300219 () Bool)

(assert (=> b!2883870 m!3300219))

(declare-fun m!3300221 () Bool)

(assert (=> b!2883871 m!3300221))

(declare-fun m!3300223 () Bool)

(assert (=> b!2883872 m!3300223))

(declare-fun m!3300225 () Bool)

(assert (=> b!2883872 m!3300225))

(declare-fun m!3300227 () Bool)

(assert (=> b!2883872 m!3300227))

(declare-fun m!3300229 () Bool)

(assert (=> b!2883872 m!3300229))

(declare-fun m!3300231 () Bool)

(assert (=> b!2883872 m!3300231))

(declare-fun m!3300233 () Bool)

(assert (=> b!2883872 m!3300233))

(assert (=> b!2883872 m!3300227))

(assert (=> b!2883872 m!3300223))

(declare-fun m!3300235 () Bool)

(assert (=> b!2883872 m!3300235))

(declare-fun m!3300237 () Bool)

(assert (=> b!2883863 m!3300237))

(check-sat (not b!2883872) (not b!2883867) (not b!2883871) (not b!2883868) (not b!2883862) (not start!281522) (not b!2883863) (not b!2883870) tp_is_empty!15177 (not b!2883869))
(check-sat)
