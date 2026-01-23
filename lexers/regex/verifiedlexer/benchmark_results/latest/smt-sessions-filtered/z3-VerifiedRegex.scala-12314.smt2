; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691168 () Bool)

(assert start!691168)

(declare-fun b!7100162 () Bool)

(assert (=> b!7100162 true))

(declare-fun b!7100156 () Bool)

(declare-fun e!4267708 () Bool)

(declare-fun tp!1951803 () Bool)

(assert (=> b!7100156 (= e!4267708 tp!1951803)))

(declare-fun b!7100157 () Bool)

(declare-fun tp!1951805 () Bool)

(declare-fun tp!1951800 () Bool)

(assert (=> b!7100157 (= e!4267708 (and tp!1951805 tp!1951800))))

(declare-fun res!2899150 () Bool)

(declare-fun e!4267710 () Bool)

(assert (=> start!691168 (=> (not res!2899150) (not e!4267710))))

(declare-datatypes ((C!36012 0))(
  ( (C!36013 (val!27712 Int)) )
))
(declare-datatypes ((Regex!17871 0))(
  ( (ElementMatch!17871 (c!1324828 C!36012)) (Concat!26716 (regOne!36254 Regex!17871) (regTwo!36254 Regex!17871)) (EmptyExpr!17871) (Star!17871 (reg!18200 Regex!17871)) (EmptyLang!17871) (Union!17871 (regOne!36255 Regex!17871) (regTwo!36255 Regex!17871)) )
))
(declare-fun r!11554 () Regex!17871)

(declare-fun validRegex!9144 (Regex!17871) Bool)

(assert (=> start!691168 (= res!2899150 (validRegex!9144 r!11554))))

(assert (=> start!691168 e!4267710))

(assert (=> start!691168 e!4267708))

(declare-datatypes ((List!68832 0))(
  ( (Nil!68708) (Cons!68708 (h!75156 Regex!17871) (t!382643 List!68832)) )
))
(declare-datatypes ((Context!13730 0))(
  ( (Context!13731 (exprs!7365 List!68832)) )
))
(declare-fun c!9994 () Context!13730)

(declare-fun e!4267705 () Bool)

(declare-fun inv!87540 (Context!13730) Bool)

(assert (=> start!691168 (and (inv!87540 c!9994) e!4267705)))

(declare-fun tp_is_empty!44975 () Bool)

(assert (=> start!691168 tp_is_empty!44975))

(declare-fun auxCtx!45 () Context!13730)

(declare-fun e!4267709 () Bool)

(assert (=> start!691168 (and (inv!87540 auxCtx!45) e!4267709)))

(declare-fun b!7100158 () Bool)

(declare-fun res!2899152 () Bool)

(declare-fun e!4267707 () Bool)

(assert (=> b!7100158 (=> (not res!2899152) (not e!4267707))))

(get-info :version)

(assert (=> b!7100158 (= res!2899152 (and (not ((_ is Concat!26716) r!11554)) (not ((_ is Star!17871) r!11554))))))

(declare-fun b!7100159 () Bool)

(declare-fun e!4267706 () Bool)

(declare-fun nullable!7509 (Regex!17871) Bool)

(assert (=> b!7100159 (= e!4267706 (not (nullable!7509 (regOne!36254 r!11554))))))

(declare-fun b!7100160 () Bool)

(declare-fun tp!1951806 () Bool)

(assert (=> b!7100160 (= e!4267709 tp!1951806)))

(declare-fun b!7100161 () Bool)

(assert (=> b!7100161 (= e!4267708 tp_is_empty!44975)))

(assert (=> b!7100162 (= e!4267710 e!4267707)))

(declare-fun res!2899151 () Bool)

(assert (=> b!7100162 (=> (not res!2899151) (not e!4267707))))

(declare-fun a!1901 () C!36012)

(assert (=> b!7100162 (= res!2899151 (and (or (not ((_ is ElementMatch!17871) r!11554)) (not (= (c!1324828 r!11554) a!1901))) (not ((_ is Union!17871) r!11554))))))

(declare-fun b!7100163 () Bool)

(assert (=> b!7100163 (= e!4267707 (not true))))

(declare-fun lt!2558011 () List!68832)

(declare-fun ++!16025 (List!68832 List!68832) List!68832)

(assert (=> b!7100163 (= lt!2558011 (++!16025 (exprs!7365 c!9994) (exprs!7365 auxCtx!45)))))

(declare-fun lambda!430929 () Int)

(declare-datatypes ((Unit!162413 0))(
  ( (Unit!162414) )
))
(declare-fun lt!2558012 () Unit!162413)

(declare-fun lemmaConcatPreservesForall!1156 (List!68832 List!68832 Int) Unit!162413)

(assert (=> b!7100163 (= lt!2558012 (lemmaConcatPreservesForall!1156 (exprs!7365 c!9994) (exprs!7365 auxCtx!45) lambda!430929))))

(declare-fun lambda!430928 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun map!16213 ((InoxSet Context!13730) Int) (InoxSet Context!13730))

(assert (=> b!7100163 (= (map!16213 ((as const (Array Context!13730 Bool)) false) lambda!430928) ((as const (Array Context!13730 Bool)) false))))

(declare-fun lt!2558010 () Unit!162413)

(declare-fun lemmaMapOnEmptySetIsEmpty!6 ((InoxSet Context!13730) Int) Unit!162413)

(assert (=> b!7100163 (= lt!2558010 (lemmaMapOnEmptySetIsEmpty!6 ((as const (Array Context!13730 Bool)) false) lambda!430928))))

(declare-fun b!7100164 () Bool)

(declare-fun tp!1951804 () Bool)

(declare-fun tp!1951802 () Bool)

(assert (=> b!7100164 (= e!4267708 (and tp!1951804 tp!1951802))))

(declare-fun b!7100165 () Bool)

(declare-fun res!2899153 () Bool)

(assert (=> b!7100165 (=> (not res!2899153) (not e!4267707))))

(assert (=> b!7100165 (= res!2899153 e!4267706)))

(declare-fun res!2899154 () Bool)

(assert (=> b!7100165 (=> res!2899154 e!4267706)))

(assert (=> b!7100165 (= res!2899154 (not ((_ is Concat!26716) r!11554)))))

(declare-fun b!7100166 () Bool)

(declare-fun tp!1951801 () Bool)

(assert (=> b!7100166 (= e!4267705 tp!1951801)))

(assert (= (and start!691168 res!2899150) b!7100162))

(assert (= (and b!7100162 res!2899151) b!7100165))

(assert (= (and b!7100165 (not res!2899154)) b!7100159))

(assert (= (and b!7100165 res!2899153) b!7100158))

(assert (= (and b!7100158 res!2899152) b!7100163))

(assert (= (and start!691168 ((_ is ElementMatch!17871) r!11554)) b!7100161))

(assert (= (and start!691168 ((_ is Concat!26716) r!11554)) b!7100164))

(assert (= (and start!691168 ((_ is Star!17871) r!11554)) b!7100156))

(assert (= (and start!691168 ((_ is Union!17871) r!11554)) b!7100157))

(assert (= start!691168 b!7100166))

(assert (= start!691168 b!7100160))

(declare-fun m!7825996 () Bool)

(assert (=> start!691168 m!7825996))

(declare-fun m!7825998 () Bool)

(assert (=> start!691168 m!7825998))

(declare-fun m!7826000 () Bool)

(assert (=> start!691168 m!7826000))

(declare-fun m!7826002 () Bool)

(assert (=> b!7100159 m!7826002))

(declare-fun m!7826004 () Bool)

(assert (=> b!7100163 m!7826004))

(declare-fun m!7826006 () Bool)

(assert (=> b!7100163 m!7826006))

(declare-fun m!7826008 () Bool)

(assert (=> b!7100163 m!7826008))

(declare-fun m!7826010 () Bool)

(assert (=> b!7100163 m!7826010))

(check-sat tp_is_empty!44975 (not start!691168) (not b!7100156) (not b!7100166) (not b!7100157) (not b!7100164) (not b!7100163) (not b!7100160) (not b!7100159))
(check-sat)
