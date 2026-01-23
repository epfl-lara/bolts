; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!690800 () Bool)

(assert start!690800)

(declare-fun b!7096649 () Bool)

(declare-fun e!4265852 () Bool)

(declare-fun tp!1950164 () Bool)

(assert (=> b!7096649 (= e!4265852 tp!1950164)))

(declare-fun b!7096650 () Bool)

(declare-fun e!4265849 () Bool)

(declare-fun tp!1950163 () Bool)

(declare-fun tp!1950162 () Bool)

(assert (=> b!7096650 (= e!4265849 (and tp!1950163 tp!1950162))))

(declare-fun b!7096651 () Bool)

(declare-fun tp!1950166 () Bool)

(assert (=> b!7096651 (= e!4265849 tp!1950166)))

(declare-fun res!2897921 () Bool)

(declare-fun e!4265851 () Bool)

(assert (=> start!690800 (=> (not res!2897921) (not e!4265851))))

(declare-datatypes ((C!35944 0))(
  ( (C!35945 (val!27678 Int)) )
))
(declare-datatypes ((Regex!17837 0))(
  ( (ElementMatch!17837 (c!1324344 C!35944)) (Concat!26682 (regOne!36186 Regex!17837) (regTwo!36186 Regex!17837)) (EmptyExpr!17837) (Star!17837 (reg!18166 Regex!17837)) (EmptyLang!17837) (Union!17837 (regOne!36187 Regex!17837) (regTwo!36187 Regex!17837)) )
))
(declare-fun r!11554 () Regex!17837)

(declare-fun validRegex!9112 (Regex!17837) Bool)

(assert (=> start!690800 (= res!2897921 (validRegex!9112 r!11554))))

(assert (=> start!690800 e!4265851))

(assert (=> start!690800 e!4265849))

(declare-fun tp_is_empty!44907 () Bool)

(assert (=> start!690800 tp_is_empty!44907))

(declare-datatypes ((List!68800 0))(
  ( (Nil!68676) (Cons!68676 (h!75124 Regex!17837) (t!382603 List!68800)) )
))
(declare-datatypes ((Context!13666 0))(
  ( (Context!13667 (exprs!7333 List!68800)) )
))
(declare-fun c!9994 () Context!13666)

(declare-fun inv!87457 (Context!13666) Bool)

(assert (=> start!690800 (and (inv!87457 c!9994) e!4265852)))

(declare-fun auxCtx!45 () Context!13666)

(declare-fun e!4265850 () Bool)

(assert (=> start!690800 (and (inv!87457 auxCtx!45) e!4265850)))

(declare-fun b!7096652 () Bool)

(declare-fun e!4265848 () Bool)

(declare-fun e!4265853 () Bool)

(assert (=> b!7096652 (= e!4265848 e!4265853)))

(declare-fun res!2897917 () Bool)

(assert (=> b!7096652 (=> (not res!2897917) (not e!4265853))))

(declare-fun lt!2557440 () List!68800)

(declare-fun a!1901 () C!35944)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2557435 () (InoxSet Context!13666))

(declare-fun derivationStepZipperDown!2388 (Regex!17837 Context!13666 C!35944) (InoxSet Context!13666))

(declare-fun $colon$colon!2732 (List!68800 Regex!17837) List!68800)

(assert (=> b!7096652 (= res!2897917 (= lt!2557435 (derivationStepZipperDown!2388 (regOne!36186 r!11554) (Context!13667 ($colon$colon!2732 lt!2557440 (regTwo!36186 r!11554))) a!1901)))))

(assert (=> b!7096652 (= lt!2557435 (derivationStepZipperDown!2388 r!11554 (Context!13667 lt!2557440) a!1901))))

(declare-fun b!7096653 () Bool)

(assert (=> b!7096653 (= e!4265849 tp_is_empty!44907)))

(declare-fun b!7096654 () Bool)

(declare-fun e!4265854 () Bool)

(assert (=> b!7096654 (= e!4265854 true)))

(declare-fun lambda!430545 () Int)

(declare-datatypes ((Unit!162357 0))(
  ( (Unit!162358) )
))
(declare-fun lt!2557432 () Unit!162357)

(declare-fun lemmaConcatPreservesForall!1132 (List!68800 List!68800 Int) Unit!162357)

(assert (=> b!7096654 (= lt!2557432 (lemmaConcatPreservesForall!1132 (exprs!7333 c!9994) (exprs!7333 auxCtx!45) lambda!430545))))

(declare-fun b!7096655 () Bool)

(declare-fun tp!1950165 () Bool)

(assert (=> b!7096655 (= e!4265850 tp!1950165)))

(declare-fun b!7096656 () Bool)

(assert (=> b!7096656 (= e!4265853 (not e!4265854))))

(declare-fun res!2897923 () Bool)

(assert (=> b!7096656 (=> res!2897923 e!4265854)))

(declare-fun appendTo!894 ((InoxSet Context!13666) Context!13666) (InoxSet Context!13666))

(assert (=> b!7096656 (= res!2897923 (not (= lt!2557435 (appendTo!894 (derivationStepZipperDown!2388 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lt!2557434 () Unit!162357)

(assert (=> b!7096656 (= lt!2557434 (lemmaConcatPreservesForall!1132 (exprs!7333 c!9994) (exprs!7333 auxCtx!45) lambda!430545))))

(declare-fun lt!2557436 () List!68800)

(declare-fun lt!2557433 () Context!13666)

(declare-fun ++!16001 (List!68800 List!68800) List!68800)

(assert (=> b!7096656 (= (derivationStepZipperDown!2388 (regOne!36186 r!11554) (Context!13667 (++!16001 lt!2557436 (exprs!7333 auxCtx!45))) a!1901) (appendTo!894 (derivationStepZipperDown!2388 (regOne!36186 r!11554) lt!2557433 a!1901) auxCtx!45))))

(declare-fun lt!2557439 () Unit!162357)

(assert (=> b!7096656 (= lt!2557439 (lemmaConcatPreservesForall!1132 lt!2557436 (exprs!7333 auxCtx!45) lambda!430545))))

(declare-fun lt!2557437 () Unit!162357)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!202 (Context!13666 Regex!17837 C!35944 Context!13666) Unit!162357)

(assert (=> b!7096656 (= lt!2557437 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!202 lt!2557433 (regOne!36186 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7096656 (= lt!2557433 (Context!13667 lt!2557436))))

(assert (=> b!7096656 (= lt!2557436 ($colon$colon!2732 (exprs!7333 c!9994) (regTwo!36186 r!11554)))))

(declare-fun b!7096657 () Bool)

(declare-fun res!2897918 () Bool)

(assert (=> b!7096657 (=> (not res!2897918) (not e!4265851))))

(get-info :version)

(assert (=> b!7096657 (= res!2897918 (and (or (not ((_ is ElementMatch!17837) r!11554)) (not (= (c!1324344 r!11554) a!1901))) (not ((_ is Union!17837) r!11554))))))

(declare-fun b!7096658 () Bool)

(declare-fun res!2897919 () Bool)

(assert (=> b!7096658 (=> (not res!2897919) (not e!4265851))))

(assert (=> b!7096658 (= res!2897919 ((_ is Concat!26682) r!11554))))

(declare-fun b!7096659 () Bool)

(declare-fun e!4265847 () Bool)

(declare-fun nullable!7477 (Regex!17837) Bool)

(assert (=> b!7096659 (= e!4265847 (not (nullable!7477 (regOne!36186 r!11554))))))

(declare-fun b!7096660 () Bool)

(declare-fun res!2897924 () Bool)

(assert (=> b!7096660 (=> (not res!2897924) (not e!4265851))))

(assert (=> b!7096660 (= res!2897924 e!4265847)))

(declare-fun res!2897920 () Bool)

(assert (=> b!7096660 (=> res!2897920 e!4265847)))

(assert (=> b!7096660 (= res!2897920 (not ((_ is Concat!26682) r!11554)))))

(declare-fun b!7096661 () Bool)

(declare-fun tp!1950168 () Bool)

(declare-fun tp!1950167 () Bool)

(assert (=> b!7096661 (= e!4265849 (and tp!1950168 tp!1950167))))

(declare-fun b!7096662 () Bool)

(assert (=> b!7096662 (= e!4265851 e!4265848)))

(declare-fun res!2897922 () Bool)

(assert (=> b!7096662 (=> (not res!2897922) (not e!4265848))))

(assert (=> b!7096662 (= res!2897922 (validRegex!9112 (regTwo!36186 r!11554)))))

(assert (=> b!7096662 (= lt!2557440 (++!16001 (exprs!7333 c!9994) (exprs!7333 auxCtx!45)))))

(declare-fun lt!2557431 () Unit!162357)

(assert (=> b!7096662 (= lt!2557431 (lemmaConcatPreservesForall!1132 (exprs!7333 c!9994) (exprs!7333 auxCtx!45) lambda!430545))))

(declare-fun lt!2557438 () Unit!162357)

(assert (=> b!7096662 (= lt!2557438 (lemmaConcatPreservesForall!1132 (exprs!7333 c!9994) (exprs!7333 auxCtx!45) lambda!430545))))

(assert (= (and start!690800 res!2897921) b!7096657))

(assert (= (and b!7096657 res!2897918) b!7096660))

(assert (= (and b!7096660 (not res!2897920)) b!7096659))

(assert (= (and b!7096660 res!2897924) b!7096658))

(assert (= (and b!7096658 res!2897919) b!7096662))

(assert (= (and b!7096662 res!2897922) b!7096652))

(assert (= (and b!7096652 res!2897917) b!7096656))

(assert (= (and b!7096656 (not res!2897923)) b!7096654))

(assert (= (and start!690800 ((_ is ElementMatch!17837) r!11554)) b!7096653))

(assert (= (and start!690800 ((_ is Concat!26682) r!11554)) b!7096650))

(assert (= (and start!690800 ((_ is Star!17837) r!11554)) b!7096651))

(assert (= (and start!690800 ((_ is Union!17837) r!11554)) b!7096661))

(assert (= start!690800 b!7096649))

(assert (= start!690800 b!7096655))

(declare-fun m!7824058 () Bool)

(assert (=> b!7096659 m!7824058))

(declare-fun m!7824060 () Bool)

(assert (=> b!7096652 m!7824060))

(declare-fun m!7824062 () Bool)

(assert (=> b!7096652 m!7824062))

(declare-fun m!7824064 () Bool)

(assert (=> b!7096652 m!7824064))

(declare-fun m!7824066 () Bool)

(assert (=> b!7096656 m!7824066))

(declare-fun m!7824068 () Bool)

(assert (=> b!7096656 m!7824068))

(declare-fun m!7824070 () Bool)

(assert (=> b!7096656 m!7824070))

(declare-fun m!7824072 () Bool)

(assert (=> b!7096656 m!7824072))

(declare-fun m!7824074 () Bool)

(assert (=> b!7096656 m!7824074))

(declare-fun m!7824076 () Bool)

(assert (=> b!7096656 m!7824076))

(declare-fun m!7824078 () Bool)

(assert (=> b!7096656 m!7824078))

(assert (=> b!7096656 m!7824066))

(declare-fun m!7824080 () Bool)

(assert (=> b!7096656 m!7824080))

(declare-fun m!7824082 () Bool)

(assert (=> b!7096656 m!7824082))

(assert (=> b!7096656 m!7824072))

(declare-fun m!7824084 () Bool)

(assert (=> b!7096656 m!7824084))

(declare-fun m!7824086 () Bool)

(assert (=> b!7096662 m!7824086))

(declare-fun m!7824088 () Bool)

(assert (=> b!7096662 m!7824088))

(assert (=> b!7096662 m!7824078))

(assert (=> b!7096662 m!7824078))

(declare-fun m!7824090 () Bool)

(assert (=> start!690800 m!7824090))

(declare-fun m!7824092 () Bool)

(assert (=> start!690800 m!7824092))

(declare-fun m!7824094 () Bool)

(assert (=> start!690800 m!7824094))

(assert (=> b!7096654 m!7824078))

(check-sat (not b!7096662) (not b!7096650) (not b!7096661) (not b!7096655) (not b!7096656) (not b!7096649) (not b!7096652) (not start!690800) (not b!7096654) (not b!7096651) (not b!7096659) tp_is_empty!44907)
(check-sat)
