; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!281530 () Bool)

(assert start!281530)

(declare-fun b!2883994 () Bool)

(declare-fun e!1824072 () Bool)

(declare-fun tp!925008 () Bool)

(declare-fun tp!925006 () Bool)

(assert (=> b!2883994 (= e!1824072 (and tp!925008 tp!925006))))

(declare-fun b!2883995 () Bool)

(declare-fun e!1824071 () Bool)

(declare-fun e!1824073 () Bool)

(assert (=> b!2883995 (= e!1824071 e!1824073)))

(declare-fun res!1194925 () Bool)

(assert (=> b!2883995 (=> (not res!1194925) (not e!1824073))))

(declare-datatypes ((C!17780 0))(
  ( (C!17781 (val!10924 Int)) )
))
(declare-datatypes ((List!34600 0))(
  ( (Nil!34476) (Cons!34476 (h!39896 C!17780) (t!233643 List!34600)) )
))
(declare-datatypes ((Option!6472 0))(
  ( (None!6471) (Some!6471 (v!34597 List!34600)) )
))
(declare-fun lt!1020384 () Option!6472)

(get-info :version)

(assert (=> b!2883995 (= res!1194925 ((_ is Some!6471) lt!1020384))))

(declare-datatypes ((Regex!8799 0))(
  ( (ElementMatch!8799 (c!468526 C!17780)) (Concat!14120 (regOne!18110 Regex!8799) (regTwo!18110 Regex!8799)) (EmptyExpr!8799) (Star!8799 (reg!9128 Regex!8799)) (EmptyLang!8799) (Union!8799 (regOne!18111 Regex!8799) (regTwo!18111 Regex!8799)) )
))
(declare-fun r!23079 () Regex!8799)

(declare-fun getLanguageWitness!506 (Regex!8799) Option!6472)

(assert (=> b!2883995 (= lt!1020384 (getLanguageWitness!506 (regOne!18110 r!23079)))))

(declare-fun b!2883996 () Bool)

(declare-fun e!1824070 () Bool)

(assert (=> b!2883996 (= e!1824073 e!1824070)))

(declare-fun res!1194921 () Bool)

(assert (=> b!2883996 (=> (not res!1194921) (not e!1824070))))

(declare-fun lt!1020385 () Option!6472)

(assert (=> b!2883996 (= res!1194921 ((_ is Some!6471) lt!1020385))))

(assert (=> b!2883996 (= lt!1020385 (getLanguageWitness!506 (regTwo!18110 r!23079)))))

(declare-fun res!1194920 () Bool)

(assert (=> start!281530 (=> (not res!1194920) (not e!1824071))))

(declare-fun validRegex!3572 (Regex!8799) Bool)

(assert (=> start!281530 (= res!1194920 (validRegex!3572 r!23079))))

(assert (=> start!281530 e!1824071))

(assert (=> start!281530 e!1824072))

(declare-fun b!2883997 () Bool)

(declare-fun tp!925009 () Bool)

(declare-fun tp!925005 () Bool)

(assert (=> b!2883997 (= e!1824072 (and tp!925009 tp!925005))))

(declare-fun b!2883998 () Bool)

(declare-fun res!1194919 () Bool)

(assert (=> b!2883998 (=> (not res!1194919) (not e!1824071))))

(declare-fun isDefined!5036 (Option!6472) Bool)

(assert (=> b!2883998 (= res!1194919 (isDefined!5036 (getLanguageWitness!506 r!23079)))))

(declare-fun b!2883999 () Bool)

(declare-fun tp_is_empty!15185 () Bool)

(assert (=> b!2883999 (= e!1824072 tp_is_empty!15185)))

(declare-fun b!2884000 () Bool)

(declare-fun res!1194922 () Bool)

(declare-fun e!1824069 () Bool)

(assert (=> b!2884000 (=> res!1194922 e!1824069)))

(declare-fun matchR!3781 (Regex!8799 List!34600) Bool)

(assert (=> b!2884000 (= res!1194922 (not (matchR!3781 (regTwo!18110 r!23079) (v!34597 lt!1020385))))))

(declare-fun b!2884001 () Bool)

(assert (=> b!2884001 (= e!1824070 (not e!1824069))))

(declare-fun res!1194924 () Bool)

(assert (=> b!2884001 (=> res!1194924 e!1824069)))

(assert (=> b!2884001 (= res!1194924 (not (matchR!3781 (regOne!18110 r!23079) (v!34597 lt!1020384))))))

(declare-fun get!10413 (Option!6472) List!34600)

(assert (=> b!2884001 (matchR!3781 (regTwo!18110 r!23079) (get!10413 lt!1020385))))

(declare-datatypes ((Unit!48067 0))(
  ( (Unit!48068) )
))
(declare-fun lt!1020382 () Unit!48067)

(declare-fun lemmaGetWitnessMatches!88 (Regex!8799) Unit!48067)

(assert (=> b!2884001 (= lt!1020382 (lemmaGetWitnessMatches!88 (regTwo!18110 r!23079)))))

(assert (=> b!2884001 (matchR!3781 (regOne!18110 r!23079) (get!10413 lt!1020384))))

(declare-fun lt!1020386 () Unit!48067)

(assert (=> b!2884001 (= lt!1020386 (lemmaGetWitnessMatches!88 (regOne!18110 r!23079)))))

(declare-fun b!2884002 () Bool)

(declare-fun res!1194923 () Bool)

(assert (=> b!2884002 (=> (not res!1194923) (not e!1824071))))

(assert (=> b!2884002 (= res!1194923 (and (not ((_ is EmptyExpr!8799) r!23079)) (not ((_ is EmptyLang!8799) r!23079)) (not ((_ is ElementMatch!8799) r!23079)) (not ((_ is Star!8799) r!23079)) (not ((_ is Union!8799) r!23079))))))

(declare-fun b!2884003 () Bool)

(assert (=> b!2884003 (= e!1824069 true)))

(declare-fun ++!8203 (List!34600 List!34600) List!34600)

(assert (=> b!2884003 (matchR!3781 r!23079 (++!8203 (v!34597 lt!1020384) (v!34597 lt!1020385)))))

(declare-fun lt!1020383 () Unit!48067)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!144 (Regex!8799 Regex!8799 List!34600 List!34600) Unit!48067)

(assert (=> b!2884003 (= lt!1020383 (lemmaTwoRegexMatchThenConcatMatchesConcatString!144 (regOne!18110 r!23079) (regTwo!18110 r!23079) (v!34597 lt!1020384) (v!34597 lt!1020385)))))

(declare-fun b!2884004 () Bool)

(declare-fun tp!925007 () Bool)

(assert (=> b!2884004 (= e!1824072 tp!925007)))

(assert (= (and start!281530 res!1194920) b!2883998))

(assert (= (and b!2883998 res!1194919) b!2884002))

(assert (= (and b!2884002 res!1194923) b!2883995))

(assert (= (and b!2883995 res!1194925) b!2883996))

(assert (= (and b!2883996 res!1194921) b!2884001))

(assert (= (and b!2884001 (not res!1194924)) b!2884000))

(assert (= (and b!2884000 (not res!1194922)) b!2884003))

(assert (= (and start!281530 ((_ is ElementMatch!8799) r!23079)) b!2883999))

(assert (= (and start!281530 ((_ is Concat!14120) r!23079)) b!2883997))

(assert (= (and start!281530 ((_ is Star!8799) r!23079)) b!2884004))

(assert (= (and start!281530 ((_ is Union!8799) r!23079)) b!2883994))

(declare-fun m!3300335 () Bool)

(assert (=> start!281530 m!3300335))

(declare-fun m!3300337 () Bool)

(assert (=> b!2883998 m!3300337))

(assert (=> b!2883998 m!3300337))

(declare-fun m!3300339 () Bool)

(assert (=> b!2883998 m!3300339))

(declare-fun m!3300341 () Bool)

(assert (=> b!2884001 m!3300341))

(declare-fun m!3300343 () Bool)

(assert (=> b!2884001 m!3300343))

(declare-fun m!3300345 () Bool)

(assert (=> b!2884001 m!3300345))

(declare-fun m!3300347 () Bool)

(assert (=> b!2884001 m!3300347))

(assert (=> b!2884001 m!3300343))

(declare-fun m!3300349 () Bool)

(assert (=> b!2884001 m!3300349))

(declare-fun m!3300351 () Bool)

(assert (=> b!2884001 m!3300351))

(assert (=> b!2884001 m!3300347))

(declare-fun m!3300353 () Bool)

(assert (=> b!2884001 m!3300353))

(declare-fun m!3300355 () Bool)

(assert (=> b!2884000 m!3300355))

(declare-fun m!3300357 () Bool)

(assert (=> b!2883995 m!3300357))

(declare-fun m!3300359 () Bool)

(assert (=> b!2884003 m!3300359))

(assert (=> b!2884003 m!3300359))

(declare-fun m!3300361 () Bool)

(assert (=> b!2884003 m!3300361))

(declare-fun m!3300363 () Bool)

(assert (=> b!2884003 m!3300363))

(declare-fun m!3300365 () Bool)

(assert (=> b!2883996 m!3300365))

(check-sat (not b!2884003) (not b!2884000) (not b!2883995) (not b!2883994) (not b!2883997) tp_is_empty!15185 (not b!2884001) (not b!2883996) (not b!2883998) (not start!281530) (not b!2884004))
(check-sat)
