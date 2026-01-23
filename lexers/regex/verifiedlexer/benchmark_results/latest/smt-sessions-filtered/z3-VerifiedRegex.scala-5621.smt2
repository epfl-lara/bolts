; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281526 () Bool)

(assert start!281526)

(declare-fun res!1194883 () Bool)

(declare-fun e!1824042 () Bool)

(assert (=> start!281526 (=> (not res!1194883) (not e!1824042))))

(declare-datatypes ((C!17776 0))(
  ( (C!17777 (val!10922 Int)) )
))
(declare-datatypes ((Regex!8797 0))(
  ( (ElementMatch!8797 (c!468524 C!17776)) (Concat!14118 (regOne!18106 Regex!8797) (regTwo!18106 Regex!8797)) (EmptyExpr!8797) (Star!8797 (reg!9126 Regex!8797)) (EmptyLang!8797) (Union!8797 (regOne!18107 Regex!8797) (regTwo!18107 Regex!8797)) )
))
(declare-fun r!23079 () Regex!8797)

(declare-fun validRegex!3570 (Regex!8797) Bool)

(assert (=> start!281526 (= res!1194883 (validRegex!3570 r!23079))))

(assert (=> start!281526 e!1824042))

(declare-fun e!1824039 () Bool)

(assert (=> start!281526 e!1824039))

(declare-fun b!2883928 () Bool)

(declare-fun res!1194880 () Bool)

(assert (=> b!2883928 (=> (not res!1194880) (not e!1824042))))

(get-info :version)

(assert (=> b!2883928 (= res!1194880 (and (not ((_ is EmptyExpr!8797) r!23079)) (not ((_ is EmptyLang!8797) r!23079)) (not ((_ is ElementMatch!8797) r!23079)) (not ((_ is Star!8797) r!23079)) (not ((_ is Union!8797) r!23079))))))

(declare-fun b!2883929 () Bool)

(declare-fun tp!924975 () Bool)

(assert (=> b!2883929 (= e!1824039 tp!924975)))

(declare-fun b!2883930 () Bool)

(declare-fun tp_is_empty!15181 () Bool)

(assert (=> b!2883930 (= e!1824039 tp_is_empty!15181)))

(declare-fun b!2883931 () Bool)

(declare-fun res!1194882 () Bool)

(declare-fun e!1824041 () Bool)

(assert (=> b!2883931 (=> res!1194882 e!1824041)))

(declare-datatypes ((List!34598 0))(
  ( (Nil!34474) (Cons!34474 (h!39894 C!17776) (t!233641 List!34598)) )
))
(declare-datatypes ((Option!6470 0))(
  ( (None!6469) (Some!6469 (v!34595 List!34598)) )
))
(declare-fun lt!1020354 () Option!6470)

(declare-fun matchR!3779 (Regex!8797 List!34598) Bool)

(assert (=> b!2883931 (= res!1194882 (not (matchR!3779 (regTwo!18106 r!23079) (v!34595 lt!1020354))))))

(declare-fun b!2883932 () Bool)

(assert (=> b!2883932 (= e!1824041 (validRegex!3570 r!23079))))

(declare-fun lt!1020353 () Option!6470)

(declare-fun ++!8201 (List!34598 List!34598) List!34598)

(assert (=> b!2883932 (matchR!3779 r!23079 (++!8201 (v!34595 lt!1020353) (v!34595 lt!1020354)))))

(declare-datatypes ((Unit!48063 0))(
  ( (Unit!48064) )
))
(declare-fun lt!1020352 () Unit!48063)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!142 (Regex!8797 Regex!8797 List!34598 List!34598) Unit!48063)

(assert (=> b!2883932 (= lt!1020352 (lemmaTwoRegexMatchThenConcatMatchesConcatString!142 (regOne!18106 r!23079) (regTwo!18106 r!23079) (v!34595 lt!1020353) (v!34595 lt!1020354)))))

(declare-fun b!2883933 () Bool)

(declare-fun tp!924979 () Bool)

(declare-fun tp!924978 () Bool)

(assert (=> b!2883933 (= e!1824039 (and tp!924979 tp!924978))))

(declare-fun b!2883934 () Bool)

(declare-fun res!1194877 () Bool)

(assert (=> b!2883934 (=> (not res!1194877) (not e!1824042))))

(declare-fun isDefined!5034 (Option!6470) Bool)

(declare-fun getLanguageWitness!504 (Regex!8797) Option!6470)

(assert (=> b!2883934 (= res!1194877 (isDefined!5034 (getLanguageWitness!504 r!23079)))))

(declare-fun b!2883935 () Bool)

(declare-fun e!1824040 () Bool)

(assert (=> b!2883935 (= e!1824042 e!1824040)))

(declare-fun res!1194879 () Bool)

(assert (=> b!2883935 (=> (not res!1194879) (not e!1824040))))

(assert (=> b!2883935 (= res!1194879 ((_ is Some!6469) lt!1020353))))

(assert (=> b!2883935 (= lt!1020353 (getLanguageWitness!504 (regOne!18106 r!23079)))))

(declare-fun b!2883936 () Bool)

(declare-fun e!1824043 () Bool)

(assert (=> b!2883936 (= e!1824043 (not e!1824041))))

(declare-fun res!1194881 () Bool)

(assert (=> b!2883936 (=> res!1194881 e!1824041)))

(assert (=> b!2883936 (= res!1194881 (not (matchR!3779 (regOne!18106 r!23079) (v!34595 lt!1020353))))))

(declare-fun get!10410 (Option!6470) List!34598)

(assert (=> b!2883936 (matchR!3779 (regTwo!18106 r!23079) (get!10410 lt!1020354))))

(declare-fun lt!1020356 () Unit!48063)

(declare-fun lemmaGetWitnessMatches!86 (Regex!8797) Unit!48063)

(assert (=> b!2883936 (= lt!1020356 (lemmaGetWitnessMatches!86 (regTwo!18106 r!23079)))))

(assert (=> b!2883936 (matchR!3779 (regOne!18106 r!23079) (get!10410 lt!1020353))))

(declare-fun lt!1020355 () Unit!48063)

(assert (=> b!2883936 (= lt!1020355 (lemmaGetWitnessMatches!86 (regOne!18106 r!23079)))))

(declare-fun b!2883937 () Bool)

(declare-fun tp!924977 () Bool)

(declare-fun tp!924976 () Bool)

(assert (=> b!2883937 (= e!1824039 (and tp!924977 tp!924976))))

(declare-fun b!2883938 () Bool)

(assert (=> b!2883938 (= e!1824040 e!1824043)))

(declare-fun res!1194878 () Bool)

(assert (=> b!2883938 (=> (not res!1194878) (not e!1824043))))

(assert (=> b!2883938 (= res!1194878 ((_ is Some!6469) lt!1020354))))

(assert (=> b!2883938 (= lt!1020354 (getLanguageWitness!504 (regTwo!18106 r!23079)))))

(assert (= (and start!281526 res!1194883) b!2883934))

(assert (= (and b!2883934 res!1194877) b!2883928))

(assert (= (and b!2883928 res!1194880) b!2883935))

(assert (= (and b!2883935 res!1194879) b!2883938))

(assert (= (and b!2883938 res!1194878) b!2883936))

(assert (= (and b!2883936 (not res!1194881)) b!2883931))

(assert (= (and b!2883931 (not res!1194882)) b!2883932))

(assert (= (and start!281526 ((_ is ElementMatch!8797) r!23079)) b!2883930))

(assert (= (and start!281526 ((_ is Concat!14118) r!23079)) b!2883937))

(assert (= (and start!281526 ((_ is Star!8797) r!23079)) b!2883929))

(assert (= (and start!281526 ((_ is Union!8797) r!23079)) b!2883933))

(declare-fun m!3300271 () Bool)

(assert (=> b!2883932 m!3300271))

(declare-fun m!3300273 () Bool)

(assert (=> b!2883932 m!3300273))

(assert (=> b!2883932 m!3300273))

(declare-fun m!3300275 () Bool)

(assert (=> b!2883932 m!3300275))

(declare-fun m!3300277 () Bool)

(assert (=> b!2883932 m!3300277))

(declare-fun m!3300279 () Bool)

(assert (=> b!2883934 m!3300279))

(assert (=> b!2883934 m!3300279))

(declare-fun m!3300281 () Bool)

(assert (=> b!2883934 m!3300281))

(declare-fun m!3300283 () Bool)

(assert (=> b!2883935 m!3300283))

(declare-fun m!3300285 () Bool)

(assert (=> b!2883931 m!3300285))

(assert (=> start!281526 m!3300271))

(declare-fun m!3300287 () Bool)

(assert (=> b!2883936 m!3300287))

(declare-fun m!3300289 () Bool)

(assert (=> b!2883936 m!3300289))

(assert (=> b!2883936 m!3300289))

(declare-fun m!3300291 () Bool)

(assert (=> b!2883936 m!3300291))

(declare-fun m!3300293 () Bool)

(assert (=> b!2883936 m!3300293))

(declare-fun m!3300295 () Bool)

(assert (=> b!2883936 m!3300295))

(declare-fun m!3300297 () Bool)

(assert (=> b!2883936 m!3300297))

(declare-fun m!3300299 () Bool)

(assert (=> b!2883936 m!3300299))

(assert (=> b!2883936 m!3300297))

(declare-fun m!3300301 () Bool)

(assert (=> b!2883938 m!3300301))

(check-sat (not start!281526) (not b!2883936) (not b!2883934) (not b!2883935) (not b!2883931) tp_is_empty!15181 (not b!2883933) (not b!2883938) (not b!2883932) (not b!2883929) (not b!2883937))
(check-sat)
