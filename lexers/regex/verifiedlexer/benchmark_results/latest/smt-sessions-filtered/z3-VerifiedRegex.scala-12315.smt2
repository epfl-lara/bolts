; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691172 () Bool)

(assert start!691172)

(declare-fun b!7100236 () Bool)

(assert (=> b!7100236 true))

(declare-fun b!7100226 () Bool)

(declare-fun e!4267742 () Bool)

(declare-fun tp!1951843 () Bool)

(declare-fun tp!1951847 () Bool)

(assert (=> b!7100226 (= e!4267742 (and tp!1951843 tp!1951847))))

(declare-fun b!7100227 () Bool)

(declare-fun e!4267744 () Bool)

(declare-fun tp!1951845 () Bool)

(assert (=> b!7100227 (= e!4267744 tp!1951845)))

(declare-fun b!7100229 () Bool)

(declare-fun tp!1951842 () Bool)

(declare-fun tp!1951844 () Bool)

(assert (=> b!7100229 (= e!4267742 (and tp!1951842 tp!1951844))))

(declare-fun b!7100230 () Bool)

(declare-fun res!2899181 () Bool)

(declare-fun e!4267745 () Bool)

(assert (=> b!7100230 (=> (not res!2899181) (not e!4267745))))

(declare-fun e!4267746 () Bool)

(assert (=> b!7100230 (= res!2899181 e!4267746)))

(declare-fun res!2899183 () Bool)

(assert (=> b!7100230 (=> res!2899183 e!4267746)))

(declare-datatypes ((C!36016 0))(
  ( (C!36017 (val!27714 Int)) )
))
(declare-datatypes ((Regex!17873 0))(
  ( (ElementMatch!17873 (c!1324830 C!36016)) (Concat!26718 (regOne!36258 Regex!17873) (regTwo!36258 Regex!17873)) (EmptyExpr!17873) (Star!17873 (reg!18202 Regex!17873)) (EmptyLang!17873) (Union!17873 (regOne!36259 Regex!17873) (regTwo!36259 Regex!17873)) )
))
(declare-fun r!11554 () Regex!17873)

(get-info :version)

(assert (=> b!7100230 (= res!2899183 (not ((_ is Concat!26718) r!11554)))))

(declare-fun b!7100231 () Bool)

(assert (=> b!7100231 (= e!4267745 (not true))))

(declare-fun lambda!430945 () Int)

(declare-datatypes ((List!68834 0))(
  ( (Nil!68710) (Cons!68710 (h!75158 Regex!17873) (t!382645 List!68834)) )
))
(declare-datatypes ((Context!13734 0))(
  ( (Context!13735 (exprs!7367 List!68834)) )
))
(declare-fun c!9994 () Context!13734)

(declare-datatypes ((Unit!162417 0))(
  ( (Unit!162418) )
))
(declare-fun lt!2558028 () Unit!162417)

(declare-fun auxCtx!45 () Context!13734)

(declare-fun lemmaConcatPreservesForall!1158 (List!68834 List!68834 Int) Unit!162417)

(assert (=> b!7100231 (= lt!2558028 (lemmaConcatPreservesForall!1158 (exprs!7367 c!9994) (exprs!7367 auxCtx!45) lambda!430945))))

(declare-fun lambda!430944 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun map!16216 ((InoxSet Context!13734) Int) (InoxSet Context!13734))

(assert (=> b!7100231 (= (map!16216 ((as const (Array Context!13734 Bool)) false) lambda!430944) ((as const (Array Context!13734 Bool)) false))))

(declare-fun lt!2558027 () Unit!162417)

(declare-fun lemmaMapOnEmptySetIsEmpty!8 ((InoxSet Context!13734) Int) Unit!162417)

(assert (=> b!7100231 (= lt!2558027 (lemmaMapOnEmptySetIsEmpty!8 ((as const (Array Context!13734 Bool)) false) lambda!430944))))

(declare-fun b!7100232 () Bool)

(declare-fun tp_is_empty!44979 () Bool)

(assert (=> b!7100232 (= e!4267742 tp_is_empty!44979)))

(declare-fun b!7100233 () Bool)

(declare-fun tp!1951846 () Bool)

(assert (=> b!7100233 (= e!4267742 tp!1951846)))

(declare-fun b!7100234 () Bool)

(declare-fun nullable!7511 (Regex!17873) Bool)

(assert (=> b!7100234 (= e!4267746 (not (nullable!7511 (regOne!36258 r!11554))))))

(declare-fun b!7100235 () Bool)

(declare-fun e!4267741 () Bool)

(declare-fun tp!1951848 () Bool)

(assert (=> b!7100235 (= e!4267741 tp!1951848)))

(declare-fun e!4267743 () Bool)

(assert (=> b!7100236 (= e!4267743 e!4267745)))

(declare-fun res!2899180 () Bool)

(assert (=> b!7100236 (=> (not res!2899180) (not e!4267745))))

(declare-fun a!1901 () C!36016)

(assert (=> b!7100236 (= res!2899180 (and (or (not ((_ is ElementMatch!17873) r!11554)) (not (= (c!1324830 r!11554) a!1901))) (not ((_ is Union!17873) r!11554))))))

(declare-fun res!2899182 () Bool)

(assert (=> start!691172 (=> (not res!2899182) (not e!4267743))))

(declare-fun validRegex!9146 (Regex!17873) Bool)

(assert (=> start!691172 (= res!2899182 (validRegex!9146 r!11554))))

(assert (=> start!691172 e!4267743))

(assert (=> start!691172 e!4267742))

(declare-fun inv!87545 (Context!13734) Bool)

(assert (=> start!691172 (and (inv!87545 c!9994) e!4267741)))

(assert (=> start!691172 tp_is_empty!44979))

(assert (=> start!691172 (and (inv!87545 auxCtx!45) e!4267744)))

(declare-fun b!7100228 () Bool)

(declare-fun res!2899184 () Bool)

(assert (=> b!7100228 (=> (not res!2899184) (not e!4267745))))

(assert (=> b!7100228 (= res!2899184 (and (not ((_ is Concat!26718) r!11554)) (not ((_ is Star!17873) r!11554))))))

(assert (= (and start!691172 res!2899182) b!7100236))

(assert (= (and b!7100236 res!2899180) b!7100230))

(assert (= (and b!7100230 (not res!2899183)) b!7100234))

(assert (= (and b!7100230 res!2899181) b!7100228))

(assert (= (and b!7100228 res!2899184) b!7100231))

(assert (= (and start!691172 ((_ is ElementMatch!17873) r!11554)) b!7100232))

(assert (= (and start!691172 ((_ is Concat!26718) r!11554)) b!7100226))

(assert (= (and start!691172 ((_ is Star!17873) r!11554)) b!7100233))

(assert (= (and start!691172 ((_ is Union!17873) r!11554)) b!7100229))

(assert (= start!691172 b!7100235))

(assert (= start!691172 b!7100227))

(declare-fun m!7826026 () Bool)

(assert (=> b!7100231 m!7826026))

(declare-fun m!7826028 () Bool)

(assert (=> b!7100231 m!7826028))

(declare-fun m!7826030 () Bool)

(assert (=> b!7100231 m!7826030))

(declare-fun m!7826032 () Bool)

(assert (=> b!7100234 m!7826032))

(declare-fun m!7826034 () Bool)

(assert (=> start!691172 m!7826034))

(declare-fun m!7826036 () Bool)

(assert (=> start!691172 m!7826036))

(declare-fun m!7826038 () Bool)

(assert (=> start!691172 m!7826038))

(check-sat (not b!7100229) (not b!7100233) (not b!7100227) (not b!7100226) (not b!7100235) (not b!7100234) (not start!691172) tp_is_empty!44979 (not b!7100231))
(check-sat)
