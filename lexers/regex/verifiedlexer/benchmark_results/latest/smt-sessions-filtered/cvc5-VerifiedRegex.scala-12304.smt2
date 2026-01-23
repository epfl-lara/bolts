; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690918 () Bool)

(assert start!690918)

(declare-fun res!2898366 () Bool)

(declare-fun e!4266464 () Bool)

(assert (=> start!690918 (=> (not res!2898366) (not e!4266464))))

(declare-datatypes ((C!35970 0))(
  ( (C!35971 (val!27691 Int)) )
))
(declare-datatypes ((Regex!17850 0))(
  ( (ElementMatch!17850 (c!1324427 C!35970)) (Concat!26695 (regOne!36212 Regex!17850) (regTwo!36212 Regex!17850)) (EmptyExpr!17850) (Star!17850 (reg!18179 Regex!17850)) (EmptyLang!17850) (Union!17850 (regOne!36213 Regex!17850) (regTwo!36213 Regex!17850)) )
))
(declare-fun r!11554 () Regex!17850)

(declare-fun validRegex!9125 (Regex!17850) Bool)

(assert (=> start!690918 (= res!2898366 (validRegex!9125 r!11554))))

(assert (=> start!690918 e!4266464))

(declare-fun e!4266463 () Bool)

(assert (=> start!690918 e!4266463))

(declare-fun tp_is_empty!44933 () Bool)

(assert (=> start!690918 tp_is_empty!44933))

(declare-datatypes ((List!68813 0))(
  ( (Nil!68689) (Cons!68689 (h!75137 Regex!17850) (t!382616 List!68813)) )
))
(declare-datatypes ((Context!13692 0))(
  ( (Context!13693 (exprs!7346 List!68813)) )
))
(declare-fun c!9994 () Context!13692)

(declare-fun e!4266461 () Bool)

(declare-fun inv!87491 (Context!13692) Bool)

(assert (=> start!690918 (and (inv!87491 c!9994) e!4266461)))

(declare-fun auxCtx!45 () Context!13692)

(declare-fun e!4266459 () Bool)

(assert (=> start!690918 (and (inv!87491 auxCtx!45) e!4266459)))

(declare-fun b!7097823 () Bool)

(declare-fun tp!1950856 () Bool)

(declare-fun tp!1950855 () Bool)

(assert (=> b!7097823 (= e!4266463 (and tp!1950856 tp!1950855))))

(declare-fun b!7097824 () Bool)

(declare-fun e!4266460 () Bool)

(assert (=> b!7097824 (= e!4266460 false)))

(declare-fun b!7097825 () Bool)

(declare-fun res!2898365 () Bool)

(assert (=> b!7097825 (=> (not res!2898365) (not e!4266464))))

(assert (=> b!7097825 (= res!2898365 (and (not (is-Concat!26695 r!11554)) (is-Star!17850 r!11554)))))

(declare-fun b!7097826 () Bool)

(declare-fun e!4266462 () Bool)

(declare-fun nullable!7490 (Regex!17850) Bool)

(assert (=> b!7097826 (= e!4266462 (not (nullable!7490 (regOne!36212 r!11554))))))

(declare-fun b!7097827 () Bool)

(declare-fun tp!1950861 () Bool)

(assert (=> b!7097827 (= e!4266463 tp!1950861)))

(declare-fun b!7097828 () Bool)

(declare-fun res!2898370 () Bool)

(assert (=> b!7097828 (=> (not res!2898370) (not e!4266460))))

(declare-fun lt!2557521 () List!68813)

(declare-fun a!1901 () C!35970)

(declare-fun derivationStepZipperDown!2389 (Regex!17850 Context!13692 C!35970) (Set Context!13692))

(declare-fun $colon$colon!2733 (List!68813 Regex!17850) List!68813)

(assert (=> b!7097828 (= res!2898370 (= (derivationStepZipperDown!2389 r!11554 (Context!13693 lt!2557521) a!1901) (derivationStepZipperDown!2389 (reg!18179 r!11554) (Context!13693 ($colon$colon!2733 lt!2557521 r!11554)) a!1901)))))

(declare-fun b!7097829 () Bool)

(declare-fun tp!1950860 () Bool)

(declare-fun tp!1950857 () Bool)

(assert (=> b!7097829 (= e!4266463 (and tp!1950860 tp!1950857))))

(declare-fun b!7097830 () Bool)

(declare-fun tp!1950859 () Bool)

(assert (=> b!7097830 (= e!4266461 tp!1950859)))

(declare-fun b!7097831 () Bool)

(declare-fun res!2898368 () Bool)

(assert (=> b!7097831 (=> (not res!2898368) (not e!4266464))))

(assert (=> b!7097831 (= res!2898368 (and (or (not (is-ElementMatch!17850 r!11554)) (not (= (c!1324427 r!11554) a!1901))) (not (is-Union!17850 r!11554))))))

(declare-fun b!7097832 () Bool)

(assert (=> b!7097832 (= e!4266464 e!4266460)))

(declare-fun res!2898371 () Bool)

(assert (=> b!7097832 (=> (not res!2898371) (not e!4266460))))

(assert (=> b!7097832 (= res!2898371 (validRegex!9125 r!11554))))

(declare-fun ++!16010 (List!68813 List!68813) List!68813)

(assert (=> b!7097832 (= lt!2557521 (++!16010 (exprs!7346 c!9994) (exprs!7346 auxCtx!45)))))

(declare-fun lambda!430640 () Int)

(declare-datatypes ((Unit!162375 0))(
  ( (Unit!162376) )
))
(declare-fun lt!2557519 () Unit!162375)

(declare-fun lemmaConcatPreservesForall!1141 (List!68813 List!68813 Int) Unit!162375)

(assert (=> b!7097832 (= lt!2557519 (lemmaConcatPreservesForall!1141 (exprs!7346 c!9994) (exprs!7346 auxCtx!45) lambda!430640))))

(declare-fun lt!2557520 () Unit!162375)

(assert (=> b!7097832 (= lt!2557520 (lemmaConcatPreservesForall!1141 (exprs!7346 c!9994) (exprs!7346 auxCtx!45) lambda!430640))))

(declare-fun b!7097833 () Bool)

(assert (=> b!7097833 (= e!4266463 tp_is_empty!44933)))

(declare-fun b!7097834 () Bool)

(declare-fun res!2898369 () Bool)

(assert (=> b!7097834 (=> (not res!2898369) (not e!4266464))))

(assert (=> b!7097834 (= res!2898369 e!4266462)))

(declare-fun res!2898367 () Bool)

(assert (=> b!7097834 (=> res!2898367 e!4266462)))

(assert (=> b!7097834 (= res!2898367 (not (is-Concat!26695 r!11554)))))

(declare-fun b!7097835 () Bool)

(declare-fun tp!1950858 () Bool)

(assert (=> b!7097835 (= e!4266459 tp!1950858)))

(assert (= (and start!690918 res!2898366) b!7097831))

(assert (= (and b!7097831 res!2898368) b!7097834))

(assert (= (and b!7097834 (not res!2898367)) b!7097826))

(assert (= (and b!7097834 res!2898369) b!7097825))

(assert (= (and b!7097825 res!2898365) b!7097832))

(assert (= (and b!7097832 res!2898371) b!7097828))

(assert (= (and b!7097828 res!2898370) b!7097824))

(assert (= (and start!690918 (is-ElementMatch!17850 r!11554)) b!7097833))

(assert (= (and start!690918 (is-Concat!26695 r!11554)) b!7097829))

(assert (= (and start!690918 (is-Star!17850 r!11554)) b!7097827))

(assert (= (and start!690918 (is-Union!17850 r!11554)) b!7097823))

(assert (= start!690918 b!7097830))

(assert (= start!690918 b!7097835))

(declare-fun m!7824504 () Bool)

(assert (=> start!690918 m!7824504))

(declare-fun m!7824506 () Bool)

(assert (=> start!690918 m!7824506))

(declare-fun m!7824508 () Bool)

(assert (=> start!690918 m!7824508))

(declare-fun m!7824510 () Bool)

(assert (=> b!7097826 m!7824510))

(declare-fun m!7824512 () Bool)

(assert (=> b!7097828 m!7824512))

(declare-fun m!7824514 () Bool)

(assert (=> b!7097828 m!7824514))

(declare-fun m!7824516 () Bool)

(assert (=> b!7097828 m!7824516))

(assert (=> b!7097832 m!7824504))

(declare-fun m!7824518 () Bool)

(assert (=> b!7097832 m!7824518))

(declare-fun m!7824520 () Bool)

(assert (=> b!7097832 m!7824520))

(assert (=> b!7097832 m!7824520))

(push 1)

(assert (not b!7097826))

(assert (not b!7097828))

(assert (not b!7097832))

(assert (not b!7097823))

(assert (not b!7097829))

(assert (not b!7097830))

(assert tp_is_empty!44933)

(assert (not b!7097835))

(assert (not b!7097827))

(assert (not start!690918))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

