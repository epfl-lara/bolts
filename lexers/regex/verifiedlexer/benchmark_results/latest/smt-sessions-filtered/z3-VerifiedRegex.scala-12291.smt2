; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!690616 () Bool)

(assert start!690616)

(declare-fun b!7094804 () Bool)

(declare-fun e!4264843 () Bool)

(declare-fun tp!1949572 () Bool)

(assert (=> b!7094804 (= e!4264843 tp!1949572)))

(declare-fun res!2897306 () Bool)

(declare-fun e!4264841 () Bool)

(assert (=> start!690616 (=> (not res!2897306) (not e!4264841))))

(declare-datatypes ((C!35920 0))(
  ( (C!35921 (val!27666 Int)) )
))
(declare-datatypes ((Regex!17825 0))(
  ( (ElementMatch!17825 (c!1323960 C!35920)) (Concat!26670 (regOne!36162 Regex!17825) (regTwo!36162 Regex!17825)) (EmptyExpr!17825) (Star!17825 (reg!18154 Regex!17825)) (EmptyLang!17825) (Union!17825 (regOne!36163 Regex!17825) (regTwo!36163 Regex!17825)) )
))
(declare-fun r!11554 () Regex!17825)

(declare-fun validRegex!9100 (Regex!17825) Bool)

(assert (=> start!690616 (= res!2897306 (validRegex!9100 r!11554))))

(assert (=> start!690616 e!4264841))

(declare-fun e!4264846 () Bool)

(assert (=> start!690616 e!4264846))

(declare-fun tp_is_empty!44883 () Bool)

(assert (=> start!690616 tp_is_empty!44883))

(declare-datatypes ((List!68788 0))(
  ( (Nil!68664) (Cons!68664 (h!75112 Regex!17825) (t!382583 List!68788)) )
))
(declare-datatypes ((Context!13642 0))(
  ( (Context!13643 (exprs!7321 List!68788)) )
))
(declare-fun c!9994 () Context!13642)

(declare-fun inv!87427 (Context!13642) Bool)

(assert (=> start!690616 (and (inv!87427 c!9994) e!4264843)))

(declare-fun auxCtx!45 () Context!13642)

(declare-fun e!4264842 () Bool)

(assert (=> start!690616 (and (inv!87427 auxCtx!45) e!4264842)))

(declare-fun b!7094805 () Bool)

(declare-fun e!4264845 () Bool)

(declare-fun nullable!7465 (Regex!17825) Bool)

(assert (=> b!7094805 (= e!4264845 (not (nullable!7465 (regOne!36162 r!11554))))))

(declare-fun b!7094806 () Bool)

(declare-fun tp!1949571 () Bool)

(declare-fun tp!1949569 () Bool)

(assert (=> b!7094806 (= e!4264846 (and tp!1949571 tp!1949569))))

(declare-fun b!7094807 () Bool)

(declare-fun res!2897309 () Bool)

(declare-fun e!4264844 () Bool)

(assert (=> b!7094807 (=> (not res!2897309) (not e!4264844))))

(declare-fun a!1901 () C!35920)

(declare-fun lt!2557011 () List!68788)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!2376 (Regex!17825 Context!13642 C!35920) (InoxSet Context!13642))

(declare-fun $colon$colon!2720 (List!68788 Regex!17825) List!68788)

(assert (=> b!7094807 (= res!2897309 (= (derivationStepZipperDown!2376 r!11554 (Context!13643 lt!2557011) a!1901) (derivationStepZipperDown!2376 (regOne!36162 r!11554) (Context!13643 ($colon$colon!2720 lt!2557011 (regTwo!36162 r!11554))) a!1901)))))

(declare-fun b!7094808 () Bool)

(declare-fun res!2897307 () Bool)

(assert (=> b!7094808 (=> (not res!2897307) (not e!4264841))))

(get-info :version)

(assert (=> b!7094808 (= res!2897307 (and (or (not ((_ is ElementMatch!17825) r!11554)) (not (= (c!1323960 r!11554) a!1901))) (not ((_ is Union!17825) r!11554))))))

(declare-fun b!7094809 () Bool)

(declare-fun tp!1949567 () Bool)

(assert (=> b!7094809 (= e!4264846 tp!1949567)))

(declare-fun b!7094810 () Bool)

(assert (=> b!7094810 (= e!4264841 e!4264844)))

(declare-fun res!2897305 () Bool)

(assert (=> b!7094810 (=> (not res!2897305) (not e!4264844))))

(assert (=> b!7094810 (= res!2897305 (validRegex!9100 (regTwo!36162 r!11554)))))

(declare-fun ++!15989 (List!68788 List!68788) List!68788)

(assert (=> b!7094810 (= lt!2557011 (++!15989 (exprs!7321 c!9994) (exprs!7321 auxCtx!45)))))

(declare-fun lambda!430325 () Int)

(declare-datatypes ((Unit!162333 0))(
  ( (Unit!162334) )
))
(declare-fun lt!2557012 () Unit!162333)

(declare-fun lemmaConcatPreservesForall!1120 (List!68788 List!68788 Int) Unit!162333)

(assert (=> b!7094810 (= lt!2557012 (lemmaConcatPreservesForall!1120 (exprs!7321 c!9994) (exprs!7321 auxCtx!45) lambda!430325))))

(declare-fun lt!2557010 () Unit!162333)

(assert (=> b!7094810 (= lt!2557010 (lemmaConcatPreservesForall!1120 (exprs!7321 c!9994) (exprs!7321 auxCtx!45) lambda!430325))))

(declare-fun b!7094811 () Bool)

(assert (=> b!7094811 (= e!4264846 tp_is_empty!44883)))

(declare-fun b!7094812 () Bool)

(declare-fun res!2897310 () Bool)

(assert (=> b!7094812 (=> (not res!2897310) (not e!4264841))))

(assert (=> b!7094812 (= res!2897310 e!4264845)))

(declare-fun res!2897308 () Bool)

(assert (=> b!7094812 (=> res!2897308 e!4264845)))

(assert (=> b!7094812 (= res!2897308 (not ((_ is Concat!26670) r!11554)))))

(declare-fun b!7094813 () Bool)

(assert (=> b!7094813 (= e!4264844 false)))

(declare-fun b!7094814 () Bool)

(declare-fun tp!1949568 () Bool)

(assert (=> b!7094814 (= e!4264842 tp!1949568)))

(declare-fun b!7094815 () Bool)

(declare-fun res!2897304 () Bool)

(assert (=> b!7094815 (=> (not res!2897304) (not e!4264841))))

(assert (=> b!7094815 (= res!2897304 ((_ is Concat!26670) r!11554))))

(declare-fun b!7094816 () Bool)

(declare-fun tp!1949566 () Bool)

(declare-fun tp!1949570 () Bool)

(assert (=> b!7094816 (= e!4264846 (and tp!1949566 tp!1949570))))

(assert (= (and start!690616 res!2897306) b!7094808))

(assert (= (and b!7094808 res!2897307) b!7094812))

(assert (= (and b!7094812 (not res!2897308)) b!7094805))

(assert (= (and b!7094812 res!2897310) b!7094815))

(assert (= (and b!7094815 res!2897304) b!7094810))

(assert (= (and b!7094810 res!2897305) b!7094807))

(assert (= (and b!7094807 res!2897309) b!7094813))

(assert (= (and start!690616 ((_ is ElementMatch!17825) r!11554)) b!7094811))

(assert (= (and start!690616 ((_ is Concat!26670) r!11554)) b!7094816))

(assert (= (and start!690616 ((_ is Star!17825) r!11554)) b!7094809))

(assert (= (and start!690616 ((_ is Union!17825) r!11554)) b!7094806))

(assert (= start!690616 b!7094804))

(assert (= start!690616 b!7094814))

(declare-fun m!7822724 () Bool)

(assert (=> start!690616 m!7822724))

(declare-fun m!7822726 () Bool)

(assert (=> start!690616 m!7822726))

(declare-fun m!7822728 () Bool)

(assert (=> start!690616 m!7822728))

(declare-fun m!7822730 () Bool)

(assert (=> b!7094805 m!7822730))

(declare-fun m!7822732 () Bool)

(assert (=> b!7094807 m!7822732))

(declare-fun m!7822734 () Bool)

(assert (=> b!7094807 m!7822734))

(declare-fun m!7822736 () Bool)

(assert (=> b!7094807 m!7822736))

(declare-fun m!7822738 () Bool)

(assert (=> b!7094810 m!7822738))

(declare-fun m!7822740 () Bool)

(assert (=> b!7094810 m!7822740))

(declare-fun m!7822742 () Bool)

(assert (=> b!7094810 m!7822742))

(assert (=> b!7094810 m!7822742))

(check-sat tp_is_empty!44883 (not b!7094810) (not b!7094805) (not b!7094806) (not start!690616) (not b!7094807) (not b!7094816) (not b!7094814) (not b!7094809) (not b!7094804))
(check-sat)
