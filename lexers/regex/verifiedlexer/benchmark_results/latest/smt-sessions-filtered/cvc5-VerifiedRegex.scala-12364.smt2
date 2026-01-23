; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692706 () Bool)

(assert start!692706)

(declare-fun b!7117117 () Bool)

(declare-fun res!2903734 () Bool)

(declare-fun e!4276648 () Bool)

(assert (=> b!7117117 (=> (not res!2903734) (not e!4276648))))

(declare-datatypes ((C!36210 0))(
  ( (C!36211 (val!27811 Int)) )
))
(declare-datatypes ((Regex!17970 0))(
  ( (ElementMatch!17970 (c!1328159 C!36210)) (Concat!26815 (regOne!36452 Regex!17970) (regTwo!36452 Regex!17970)) (EmptyExpr!17970) (Star!17970 (reg!18299 Regex!17970)) (EmptyLang!17970) (Union!17970 (regOne!36453 Regex!17970) (regTwo!36453 Regex!17970)) )
))
(declare-fun r!11554 () Regex!17970)

(assert (=> b!7117117 (= res!2903734 (and (not (is-Concat!26815 r!11554)) (is-Star!17970 r!11554)))))

(declare-fun b!7117118 () Bool)

(declare-fun e!4276650 () Bool)

(declare-fun tp_is_empty!45173 () Bool)

(assert (=> b!7117118 (= e!4276650 tp_is_empty!45173)))

(declare-fun b!7117120 () Bool)

(declare-fun e!4276647 () Bool)

(assert (=> b!7117120 (= e!4276648 e!4276647)))

(declare-fun res!2903731 () Bool)

(assert (=> b!7117120 (=> (not res!2903731) (not e!4276647))))

(declare-fun validRegex!9243 (Regex!17970) Bool)

(assert (=> b!7117120 (= res!2903731 (validRegex!9243 r!11554))))

(declare-datatypes ((List!68931 0))(
  ( (Nil!68807) (Cons!68807 (h!75255 Regex!17970) (t!382782 List!68931)) )
))
(declare-fun lt!2560805 () List!68931)

(declare-datatypes ((Context!13928 0))(
  ( (Context!13929 (exprs!7464 List!68931)) )
))
(declare-fun c!9994 () Context!13928)

(declare-fun auxCtx!45 () Context!13928)

(declare-fun ++!16122 (List!68931 List!68931) List!68931)

(assert (=> b!7117120 (= lt!2560805 (++!16122 (exprs!7464 c!9994) (exprs!7464 auxCtx!45)))))

(declare-datatypes ((Unit!162611 0))(
  ( (Unit!162612) )
))
(declare-fun lt!2560806 () Unit!162611)

(declare-fun lambda!432448 () Int)

(declare-fun lemmaConcatPreservesForall!1255 (List!68931 List!68931 Int) Unit!162611)

(assert (=> b!7117120 (= lt!2560806 (lemmaConcatPreservesForall!1255 (exprs!7464 c!9994) (exprs!7464 auxCtx!45) lambda!432448))))

(declare-fun lt!2560807 () Unit!162611)

(assert (=> b!7117120 (= lt!2560807 (lemmaConcatPreservesForall!1255 (exprs!7464 c!9994) (exprs!7464 auxCtx!45) lambda!432448))))

(declare-fun b!7117121 () Bool)

(declare-fun res!2903733 () Bool)

(assert (=> b!7117121 (=> (not res!2903733) (not e!4276648))))

(declare-fun e!4276649 () Bool)

(assert (=> b!7117121 (= res!2903733 e!4276649)))

(declare-fun res!2903730 () Bool)

(assert (=> b!7117121 (=> res!2903730 e!4276649)))

(assert (=> b!7117121 (= res!2903730 (not (is-Concat!26815 r!11554)))))

(declare-fun b!7117122 () Bool)

(declare-fun nullable!7607 (Regex!17970) Bool)

(assert (=> b!7117122 (= e!4276649 (not (nullable!7607 (regOne!36452 r!11554))))))

(declare-fun b!7117123 () Bool)

(declare-fun e!4276646 () Bool)

(declare-fun tp!1958970 () Bool)

(assert (=> b!7117123 (= e!4276646 tp!1958970)))

(declare-fun b!7117124 () Bool)

(declare-fun res!2903729 () Bool)

(assert (=> b!7117124 (=> (not res!2903729) (not e!4276648))))

(declare-fun a!1901 () C!36210)

(assert (=> b!7117124 (= res!2903729 (and (or (not (is-ElementMatch!17970 r!11554)) (not (= (c!1328159 r!11554) a!1901))) (not (is-Union!17970 r!11554))))))

(declare-fun b!7117125 () Bool)

(declare-fun e!4276645 () Bool)

(declare-fun tp!1958972 () Bool)

(assert (=> b!7117125 (= e!4276645 tp!1958972)))

(declare-fun b!7117126 () Bool)

(declare-fun tp!1958968 () Bool)

(declare-fun tp!1958967 () Bool)

(assert (=> b!7117126 (= e!4276650 (and tp!1958968 tp!1958967))))

(declare-fun b!7117127 () Bool)

(declare-fun tp!1958973 () Bool)

(assert (=> b!7117127 (= e!4276650 tp!1958973)))

(declare-fun b!7117128 () Bool)

(assert (=> b!7117128 (= e!4276647 false)))

(declare-fun lt!2560808 () (Set Context!13928))

(declare-fun derivationStepZipperDown!2467 (Regex!17970 Context!13928 C!36210) (Set Context!13928))

(declare-fun $colon$colon!2814 (List!68931 Regex!17970) List!68931)

(assert (=> b!7117128 (= lt!2560808 (derivationStepZipperDown!2467 (reg!18299 r!11554) (Context!13929 ($colon$colon!2814 lt!2560805 r!11554)) a!1901))))

(declare-fun lt!2560809 () (Set Context!13928))

(assert (=> b!7117128 (= lt!2560809 (derivationStepZipperDown!2467 r!11554 (Context!13929 lt!2560805) a!1901))))

(declare-fun res!2903732 () Bool)

(assert (=> start!692706 (=> (not res!2903732) (not e!4276648))))

(assert (=> start!692706 (= res!2903732 (validRegex!9243 r!11554))))

(assert (=> start!692706 e!4276648))

(assert (=> start!692706 e!4276650))

(assert (=> start!692706 tp_is_empty!45173))

(declare-fun inv!87789 (Context!13928) Bool)

(assert (=> start!692706 (and (inv!87789 c!9994) e!4276645)))

(assert (=> start!692706 (and (inv!87789 auxCtx!45) e!4276646)))

(declare-fun b!7117119 () Bool)

(declare-fun tp!1958971 () Bool)

(declare-fun tp!1958969 () Bool)

(assert (=> b!7117119 (= e!4276650 (and tp!1958971 tp!1958969))))

(assert (= (and start!692706 res!2903732) b!7117124))

(assert (= (and b!7117124 res!2903729) b!7117121))

(assert (= (and b!7117121 (not res!2903730)) b!7117122))

(assert (= (and b!7117121 res!2903733) b!7117117))

(assert (= (and b!7117117 res!2903734) b!7117120))

(assert (= (and b!7117120 res!2903731) b!7117128))

(assert (= (and start!692706 (is-ElementMatch!17970 r!11554)) b!7117118))

(assert (= (and start!692706 (is-Concat!26815 r!11554)) b!7117119))

(assert (= (and start!692706 (is-Star!17970 r!11554)) b!7117127))

(assert (= (and start!692706 (is-Union!17970 r!11554)) b!7117126))

(assert (= start!692706 b!7117125))

(assert (= start!692706 b!7117123))

(declare-fun m!7835580 () Bool)

(assert (=> b!7117120 m!7835580))

(declare-fun m!7835582 () Bool)

(assert (=> b!7117120 m!7835582))

(declare-fun m!7835584 () Bool)

(assert (=> b!7117120 m!7835584))

(assert (=> b!7117120 m!7835584))

(declare-fun m!7835586 () Bool)

(assert (=> b!7117122 m!7835586))

(declare-fun m!7835588 () Bool)

(assert (=> b!7117128 m!7835588))

(declare-fun m!7835590 () Bool)

(assert (=> b!7117128 m!7835590))

(declare-fun m!7835592 () Bool)

(assert (=> b!7117128 m!7835592))

(assert (=> start!692706 m!7835580))

(declare-fun m!7835594 () Bool)

(assert (=> start!692706 m!7835594))

(declare-fun m!7835596 () Bool)

(assert (=> start!692706 m!7835596))

(push 1)

(assert (not b!7117120))

(assert (not b!7117122))

(assert (not b!7117125))

(assert (not b!7117119))

(assert (not start!692706))

(assert (not b!7117127))

(assert tp_is_empty!45173)

(assert (not b!7117126))

(assert (not b!7117128))

(assert (not b!7117123))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

