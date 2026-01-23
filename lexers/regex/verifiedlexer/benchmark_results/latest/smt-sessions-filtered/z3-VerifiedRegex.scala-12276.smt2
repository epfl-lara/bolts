; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!690236 () Bool)

(assert start!690236)

(declare-fun b!7091112 () Bool)

(declare-fun e!4262803 () Bool)

(declare-fun tp!1948092 () Bool)

(assert (=> b!7091112 (= e!4262803 tp!1948092)))

(declare-fun b!7091113 () Bool)

(declare-fun e!4262805 () Bool)

(declare-fun e!4262804 () Bool)

(assert (=> b!7091113 (= e!4262805 e!4262804)))

(declare-fun res!2896120 () Bool)

(assert (=> b!7091113 (=> (not res!2896120) (not e!4262804))))

(declare-datatypes ((C!35860 0))(
  ( (C!35861 (val!27636 Int)) )
))
(declare-datatypes ((Regex!17795 0))(
  ( (ElementMatch!17795 (c!1323292 C!35860)) (Concat!26640 (regOne!36102 Regex!17795) (regTwo!36102 Regex!17795)) (EmptyExpr!17795) (Star!17795 (reg!18124 Regex!17795)) (EmptyLang!17795) (Union!17795 (regOne!36103 Regex!17795) (regTwo!36103 Regex!17795)) )
))
(declare-fun r!11554 () Regex!17795)

(declare-fun validRegex!9070 (Regex!17795) Bool)

(assert (=> b!7091113 (= res!2896120 (validRegex!9070 (regTwo!36102 r!11554)))))

(declare-datatypes ((List!68758 0))(
  ( (Nil!68634) (Cons!68634 (h!75082 Regex!17795) (t!382543 List!68758)) )
))
(declare-datatypes ((Context!13582 0))(
  ( (Context!13583 (exprs!7291 List!68758)) )
))
(declare-fun c!9994 () Context!13582)

(declare-datatypes ((Unit!162281 0))(
  ( (Unit!162282) )
))
(declare-fun lt!2555872 () Unit!162281)

(declare-fun lambda!429809 () Int)

(declare-fun auxCtx!45 () Context!13582)

(declare-fun lemmaConcatPreservesForall!1094 (List!68758 List!68758 Int) Unit!162281)

(assert (=> b!7091113 (= lt!2555872 (lemmaConcatPreservesForall!1094 (exprs!7291 c!9994) (exprs!7291 auxCtx!45) lambda!429809))))

(declare-fun lt!2555874 () Context!13582)

(declare-fun lt!2555878 () List!68758)

(assert (=> b!7091113 (= lt!2555874 (Context!13583 lt!2555878))))

(declare-fun ++!15964 (List!68758 List!68758) List!68758)

(assert (=> b!7091113 (= lt!2555878 (++!15964 (exprs!7291 c!9994) (exprs!7291 auxCtx!45)))))

(declare-fun lt!2555876 () Unit!162281)

(assert (=> b!7091113 (= lt!2555876 (lemmaConcatPreservesForall!1094 (exprs!7291 c!9994) (exprs!7291 auxCtx!45) lambda!429809))))

(declare-fun lt!2555873 () Unit!162281)

(assert (=> b!7091113 (= lt!2555873 (lemmaConcatPreservesForall!1094 (exprs!7291 c!9994) (exprs!7291 auxCtx!45) lambda!429809))))

(declare-fun res!2896124 () Bool)

(assert (=> start!690236 (=> (not res!2896124) (not e!4262805))))

(assert (=> start!690236 (= res!2896124 (validRegex!9070 r!11554))))

(assert (=> start!690236 e!4262805))

(assert (=> start!690236 e!4262803))

(declare-fun tp_is_empty!44823 () Bool)

(assert (=> start!690236 tp_is_empty!44823))

(declare-fun e!4262802 () Bool)

(declare-fun inv!87352 (Context!13582) Bool)

(assert (=> start!690236 (and (inv!87352 c!9994) e!4262802)))

(declare-fun e!4262806 () Bool)

(assert (=> start!690236 (and (inv!87352 auxCtx!45) e!4262806)))

(declare-fun b!7091114 () Bool)

(declare-fun res!2896123 () Bool)

(assert (=> b!7091114 (=> (not res!2896123) (not e!4262804))))

(declare-fun a!1901 () C!35860)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!2358 (Regex!17795 Context!13582 C!35860) (InoxSet Context!13582))

(declare-fun $colon$colon!2702 (List!68758 Regex!17795) List!68758)

(assert (=> b!7091114 (= res!2896123 (= (derivationStepZipperDown!2358 r!11554 lt!2555874 a!1901) ((_ map or) (derivationStepZipperDown!2358 (regOne!36102 r!11554) (Context!13583 ($colon$colon!2702 lt!2555878 (regTwo!36102 r!11554))) a!1901) (derivationStepZipperDown!2358 (regTwo!36102 r!11554) lt!2555874 a!1901))))))

(declare-fun b!7091115 () Bool)

(declare-fun tp!1948090 () Bool)

(assert (=> b!7091115 (= e!4262806 tp!1948090)))

(declare-fun b!7091116 () Bool)

(declare-fun tp!1948089 () Bool)

(assert (=> b!7091116 (= e!4262802 tp!1948089)))

(declare-fun b!7091117 () Bool)

(declare-fun res!2896122 () Bool)

(assert (=> b!7091117 (=> (not res!2896122) (not e!4262805))))

(declare-fun nullable!7435 (Regex!17795) Bool)

(assert (=> b!7091117 (= res!2896122 (nullable!7435 (regOne!36102 r!11554)))))

(declare-fun b!7091118 () Bool)

(declare-fun res!2896121 () Bool)

(assert (=> b!7091118 (=> (not res!2896121) (not e!4262805))))

(get-info :version)

(assert (=> b!7091118 (= res!2896121 (and (or (not ((_ is ElementMatch!17795) r!11554)) (not (= (c!1323292 r!11554) a!1901))) (not ((_ is Union!17795) r!11554)) ((_ is Concat!26640) r!11554)))))

(declare-fun b!7091119 () Bool)

(declare-fun tp!1948086 () Bool)

(declare-fun tp!1948091 () Bool)

(assert (=> b!7091119 (= e!4262803 (and tp!1948086 tp!1948091))))

(declare-fun b!7091120 () Bool)

(assert (=> b!7091120 (= e!4262803 tp_is_empty!44823)))

(declare-fun b!7091121 () Bool)

(declare-fun tp!1948087 () Bool)

(declare-fun tp!1948088 () Bool)

(assert (=> b!7091121 (= e!4262803 (and tp!1948087 tp!1948088))))

(declare-fun b!7091122 () Bool)

(assert (=> b!7091122 (= e!4262804 (not true))))

(declare-fun lt!2555871 () Context!13582)

(declare-fun lt!2555877 () List!68758)

(declare-fun appendTo!866 ((InoxSet Context!13582) Context!13582) (InoxSet Context!13582))

(assert (=> b!7091122 (= (derivationStepZipperDown!2358 (regOne!36102 r!11554) (Context!13583 (++!15964 lt!2555877 (exprs!7291 auxCtx!45))) a!1901) (appendTo!866 (derivationStepZipperDown!2358 (regOne!36102 r!11554) lt!2555871 a!1901) auxCtx!45))))

(declare-fun lt!2555875 () Unit!162281)

(assert (=> b!7091122 (= lt!2555875 (lemmaConcatPreservesForall!1094 lt!2555877 (exprs!7291 auxCtx!45) lambda!429809))))

(declare-fun lt!2555870 () Unit!162281)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!174 (Context!13582 Regex!17795 C!35860 Context!13582) Unit!162281)

(assert (=> b!7091122 (= lt!2555870 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!174 lt!2555871 (regOne!36102 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7091122 (= lt!2555871 (Context!13583 lt!2555877))))

(assert (=> b!7091122 (= lt!2555877 ($colon$colon!2702 (exprs!7291 c!9994) (regTwo!36102 r!11554)))))

(assert (= (and start!690236 res!2896124) b!7091118))

(assert (= (and b!7091118 res!2896121) b!7091117))

(assert (= (and b!7091117 res!2896122) b!7091113))

(assert (= (and b!7091113 res!2896120) b!7091114))

(assert (= (and b!7091114 res!2896123) b!7091122))

(assert (= (and start!690236 ((_ is ElementMatch!17795) r!11554)) b!7091120))

(assert (= (and start!690236 ((_ is Concat!26640) r!11554)) b!7091121))

(assert (= (and start!690236 ((_ is Star!17795) r!11554)) b!7091112))

(assert (= (and start!690236 ((_ is Union!17795) r!11554)) b!7091119))

(assert (= start!690236 b!7091116))

(assert (= start!690236 b!7091115))

(declare-fun m!7819992 () Bool)

(assert (=> start!690236 m!7819992))

(declare-fun m!7819994 () Bool)

(assert (=> start!690236 m!7819994))

(declare-fun m!7819996 () Bool)

(assert (=> start!690236 m!7819996))

(declare-fun m!7819998 () Bool)

(assert (=> b!7091122 m!7819998))

(declare-fun m!7820000 () Bool)

(assert (=> b!7091122 m!7820000))

(declare-fun m!7820002 () Bool)

(assert (=> b!7091122 m!7820002))

(assert (=> b!7091122 m!7820000))

(declare-fun m!7820004 () Bool)

(assert (=> b!7091122 m!7820004))

(declare-fun m!7820006 () Bool)

(assert (=> b!7091122 m!7820006))

(declare-fun m!7820008 () Bool)

(assert (=> b!7091122 m!7820008))

(declare-fun m!7820010 () Bool)

(assert (=> b!7091122 m!7820010))

(declare-fun m!7820012 () Bool)

(assert (=> b!7091114 m!7820012))

(declare-fun m!7820014 () Bool)

(assert (=> b!7091114 m!7820014))

(declare-fun m!7820016 () Bool)

(assert (=> b!7091114 m!7820016))

(declare-fun m!7820018 () Bool)

(assert (=> b!7091114 m!7820018))

(declare-fun m!7820020 () Bool)

(assert (=> b!7091117 m!7820020))

(declare-fun m!7820022 () Bool)

(assert (=> b!7091113 m!7820022))

(assert (=> b!7091113 m!7820022))

(assert (=> b!7091113 m!7820022))

(declare-fun m!7820024 () Bool)

(assert (=> b!7091113 m!7820024))

(declare-fun m!7820026 () Bool)

(assert (=> b!7091113 m!7820026))

(check-sat (not b!7091122) (not start!690236) (not b!7091121) (not b!7091116) (not b!7091114) (not b!7091119) (not b!7091112) (not b!7091113) (not b!7091117) (not b!7091115) tp_is_empty!44823)
(check-sat)
