; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281978 () Bool)

(assert start!281978)

(declare-fun b!2892274 () Bool)

(declare-fun e!1827814 () Bool)

(declare-fun e!1827815 () Bool)

(assert (=> b!2892274 (= e!1827814 (not e!1827815))))

(declare-fun res!1196713 () Bool)

(assert (=> b!2892274 (=> res!1196713 e!1827815)))

(declare-datatypes ((C!17844 0))(
  ( (C!17845 (val!10956 Int)) )
))
(declare-datatypes ((Regex!8831 0))(
  ( (ElementMatch!8831 (c!470320 C!17844)) (Concat!14152 (regOne!18174 Regex!8831) (regTwo!18174 Regex!8831)) (EmptyExpr!8831) (Star!8831 (reg!9160 Regex!8831)) (EmptyLang!8831) (Union!8831 (regOne!18175 Regex!8831) (regTwo!18175 Regex!8831)) )
))
(declare-fun lt!1021139 () Regex!8831)

(declare-datatypes ((List!34632 0))(
  ( (Nil!34508) (Cons!34508 (h!39928 C!17844) (t!233675 List!34632)) )
))
(declare-fun lt!1021140 () List!34632)

(declare-fun matchR!3801 (Regex!8831 List!34632) Bool)

(assert (=> b!2892274 (= res!1196713 (not (matchR!3801 lt!1021139 lt!1021140)))))

(declare-datatypes ((Option!6504 0))(
  ( (None!6503) (Some!6503 (v!34629 List!34632)) )
))
(declare-fun lt!1021137 () Option!6504)

(declare-fun get!10449 (Option!6504) List!34632)

(assert (=> b!2892274 (= lt!1021140 (get!10449 lt!1021137))))

(declare-fun lt!1021142 () Option!6504)

(assert (=> b!2892274 (matchR!3801 lt!1021139 (v!34629 lt!1021142))))

(declare-fun r!23079 () Regex!8831)

(assert (=> b!2892274 (= lt!1021139 (Union!8831 (regOne!18175 r!23079) (regTwo!18175 r!23079)))))

(declare-datatypes ((Unit!48091 0))(
  ( (Unit!48092) )
))
(declare-fun lt!1021138 () Unit!48091)

(declare-fun lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!44 (Regex!8831 Regex!8831 List!34632) Unit!48091)

(assert (=> b!2892274 (= lt!1021138 (lemmaRegexAcceptsStringThenUnionWithAnotherAcceptsToo!44 (regOne!18175 r!23079) (regTwo!18175 r!23079) (v!34629 lt!1021142)))))

(assert (=> b!2892274 (matchR!3801 (regOne!18175 r!23079) (get!10449 lt!1021142))))

(declare-fun lt!1021141 () Unit!48091)

(declare-fun lemmaGetWitnessMatches!100 (Regex!8831) Unit!48091)

(assert (=> b!2892274 (= lt!1021141 (lemmaGetWitnessMatches!100 (regOne!18175 r!23079)))))

(declare-fun res!1196714 () Bool)

(declare-fun e!1827813 () Bool)

(assert (=> start!281978 (=> (not res!1196714) (not e!1827813))))

(declare-fun validRegex!3604 (Regex!8831) Bool)

(assert (=> start!281978 (= res!1196714 (validRegex!3604 r!23079))))

(assert (=> start!281978 e!1827813))

(declare-fun e!1827816 () Bool)

(assert (=> start!281978 e!1827816))

(declare-fun b!2892275 () Bool)

(declare-fun tp!928649 () Bool)

(assert (=> b!2892275 (= e!1827816 tp!928649)))

(declare-fun b!2892276 () Bool)

(declare-fun tp!928647 () Bool)

(declare-fun tp!928646 () Bool)

(assert (=> b!2892276 (= e!1827816 (and tp!928647 tp!928646))))

(declare-fun b!2892277 () Bool)

(declare-fun tp_is_empty!15249 () Bool)

(assert (=> b!2892277 (= e!1827816 tp_is_empty!15249)))

(declare-fun b!2892278 () Bool)

(declare-fun e!1827817 () Bool)

(assert (=> b!2892278 (= e!1827813 e!1827817)))

(declare-fun res!1196712 () Bool)

(assert (=> b!2892278 (=> (not res!1196712) (not e!1827817))))

(declare-fun isDefined!5068 (Option!6504) Bool)

(assert (=> b!2892278 (= res!1196712 (isDefined!5068 lt!1021137))))

(declare-fun getLanguageWitness!538 (Regex!8831) Option!6504)

(assert (=> b!2892278 (= lt!1021137 (getLanguageWitness!538 r!23079))))

(declare-fun b!2892279 () Bool)

(declare-fun tp!928645 () Bool)

(declare-fun tp!928648 () Bool)

(assert (=> b!2892279 (= e!1827816 (and tp!928645 tp!928648))))

(declare-fun b!2892280 () Bool)

(assert (=> b!2892280 (= e!1827817 e!1827814)))

(declare-fun res!1196711 () Bool)

(assert (=> b!2892280 (=> (not res!1196711) (not e!1827814))))

(get-info :version)

(assert (=> b!2892280 (= res!1196711 ((_ is Some!6503) lt!1021142))))

(assert (=> b!2892280 (= lt!1021142 (getLanguageWitness!538 (regOne!18175 r!23079)))))

(declare-fun b!2892281 () Bool)

(assert (=> b!2892281 (= e!1827815 (matchR!3801 r!23079 lt!1021140))))

(declare-fun b!2892282 () Bool)

(declare-fun res!1196715 () Bool)

(assert (=> b!2892282 (=> (not res!1196715) (not e!1827817))))

(assert (=> b!2892282 (= res!1196715 (and (not ((_ is EmptyExpr!8831) r!23079)) (not ((_ is EmptyLang!8831) r!23079)) (not ((_ is ElementMatch!8831) r!23079)) (not ((_ is Star!8831) r!23079)) ((_ is Union!8831) r!23079)))))

(assert (= (and start!281978 res!1196714) b!2892278))

(assert (= (and b!2892278 res!1196712) b!2892282))

(assert (= (and b!2892282 res!1196715) b!2892280))

(assert (= (and b!2892280 res!1196711) b!2892274))

(assert (= (and b!2892274 (not res!1196713)) b!2892281))

(assert (= (and start!281978 ((_ is ElementMatch!8831) r!23079)) b!2892277))

(assert (= (and start!281978 ((_ is Concat!14152) r!23079)) b!2892276))

(assert (= (and start!281978 ((_ is Star!8831) r!23079)) b!2892275))

(assert (= (and start!281978 ((_ is Union!8831) r!23079)) b!2892279))

(declare-fun m!3302883 () Bool)

(assert (=> start!281978 m!3302883))

(declare-fun m!3302885 () Bool)

(assert (=> b!2892281 m!3302885))

(declare-fun m!3302887 () Bool)

(assert (=> b!2892278 m!3302887))

(declare-fun m!3302889 () Bool)

(assert (=> b!2892278 m!3302889))

(declare-fun m!3302891 () Bool)

(assert (=> b!2892274 m!3302891))

(declare-fun m!3302893 () Bool)

(assert (=> b!2892274 m!3302893))

(declare-fun m!3302895 () Bool)

(assert (=> b!2892274 m!3302895))

(assert (=> b!2892274 m!3302891))

(declare-fun m!3302897 () Bool)

(assert (=> b!2892274 m!3302897))

(declare-fun m!3302899 () Bool)

(assert (=> b!2892274 m!3302899))

(declare-fun m!3302901 () Bool)

(assert (=> b!2892274 m!3302901))

(declare-fun m!3302903 () Bool)

(assert (=> b!2892274 m!3302903))

(declare-fun m!3302905 () Bool)

(assert (=> b!2892280 m!3302905))

(check-sat (not b!2892278) (not b!2892281) (not start!281978) (not b!2892276) (not b!2892275) (not b!2892274) tp_is_empty!15249 (not b!2892280) (not b!2892279))
(check-sat)
