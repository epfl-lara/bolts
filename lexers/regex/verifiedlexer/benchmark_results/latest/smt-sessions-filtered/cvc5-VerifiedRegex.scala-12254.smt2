; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689758 () Bool)

(assert start!689758)

(declare-fun res!2894777 () Bool)

(declare-fun e!4260265 () Bool)

(assert (=> start!689758 (=> (not res!2894777) (not e!4260265))))

(declare-datatypes ((C!35770 0))(
  ( (C!35771 (val!27591 Int)) )
))
(declare-datatypes ((Regex!17750 0))(
  ( (ElementMatch!17750 (c!1322513 C!35770)) (Concat!26595 (regOne!36012 Regex!17750) (regTwo!36012 Regex!17750)) (EmptyExpr!17750) (Star!17750 (reg!18079 Regex!17750)) (EmptyLang!17750) (Union!17750 (regOne!36013 Regex!17750) (regTwo!36013 Regex!17750)) )
))
(declare-fun r!11554 () Regex!17750)

(declare-fun validRegex!9025 (Regex!17750) Bool)

(assert (=> start!689758 (= res!2894777 (validRegex!9025 r!11554))))

(assert (=> start!689758 e!4260265))

(declare-fun e!4260267 () Bool)

(assert (=> start!689758 e!4260267))

(declare-fun tp_is_empty!44733 () Bool)

(assert (=> start!689758 tp_is_empty!44733))

(declare-datatypes ((List!68713 0))(
  ( (Nil!68589) (Cons!68589 (h!75037 Regex!17750) (t!382498 List!68713)) )
))
(declare-datatypes ((Context!13492 0))(
  ( (Context!13493 (exprs!7246 List!68713)) )
))
(declare-fun c!9994 () Context!13492)

(declare-fun e!4260266 () Bool)

(declare-fun inv!87241 (Context!13492) Bool)

(assert (=> start!689758 (and (inv!87241 c!9994) e!4260266)))

(declare-fun auxCtx!45 () Context!13492)

(declare-fun e!4260268 () Bool)

(assert (=> start!689758 (and (inv!87241 auxCtx!45) e!4260268)))

(declare-fun b!7086443 () Bool)

(declare-fun tp!1945865 () Bool)

(assert (=> b!7086443 (= e!4260268 tp!1945865)))

(declare-fun b!7086444 () Bool)

(assert (=> b!7086444 (= e!4260265 false)))

(declare-fun lt!2554621 () List!68713)

(declare-fun ++!15923 (List!68713 List!68713) List!68713)

(assert (=> b!7086444 (= lt!2554621 (++!15923 (exprs!7246 c!9994) (exprs!7246 auxCtx!45)))))

(declare-datatypes ((Unit!162199 0))(
  ( (Unit!162200) )
))
(declare-fun lt!2554622 () Unit!162199)

(declare-fun lambda!429108 () Int)

(declare-fun lemmaConcatPreservesForall!1053 (List!68713 List!68713 Int) Unit!162199)

(assert (=> b!7086444 (= lt!2554622 (lemmaConcatPreservesForall!1053 (exprs!7246 c!9994) (exprs!7246 auxCtx!45) lambda!429108))))

(declare-fun lt!2554624 () Unit!162199)

(assert (=> b!7086444 (= lt!2554624 (lemmaConcatPreservesForall!1053 (exprs!7246 c!9994) (exprs!7246 auxCtx!45) lambda!429108))))

(declare-fun lt!2554623 () Unit!162199)

(assert (=> b!7086444 (= lt!2554623 (lemmaConcatPreservesForall!1053 (exprs!7246 c!9994) (exprs!7246 auxCtx!45) lambda!429108))))

(declare-fun b!7086445 () Bool)

(declare-fun tp!1945866 () Bool)

(declare-fun tp!1945864 () Bool)

(assert (=> b!7086445 (= e!4260267 (and tp!1945866 tp!1945864))))

(declare-fun b!7086446 () Bool)

(declare-fun tp!1945861 () Bool)

(assert (=> b!7086446 (= e!4260266 tp!1945861)))

(declare-fun b!7086447 () Bool)

(declare-fun tp!1945863 () Bool)

(assert (=> b!7086447 (= e!4260267 tp!1945863)))

(declare-fun b!7086448 () Bool)

(declare-fun tp!1945862 () Bool)

(declare-fun tp!1945867 () Bool)

(assert (=> b!7086448 (= e!4260267 (and tp!1945862 tp!1945867))))

(declare-fun b!7086449 () Bool)

(assert (=> b!7086449 (= e!4260267 tp_is_empty!44733)))

(declare-fun b!7086450 () Bool)

(declare-fun res!2894778 () Bool)

(assert (=> b!7086450 (=> (not res!2894778) (not e!4260265))))

(declare-fun a!1901 () C!35770)

(assert (=> b!7086450 (= res!2894778 (and (or (not (is-ElementMatch!17750 r!11554)) (not (= (c!1322513 r!11554) a!1901))) (is-Union!17750 r!11554)))))

(assert (= (and start!689758 res!2894777) b!7086450))

(assert (= (and b!7086450 res!2894778) b!7086444))

(assert (= (and start!689758 (is-ElementMatch!17750 r!11554)) b!7086449))

(assert (= (and start!689758 (is-Concat!26595 r!11554)) b!7086448))

(assert (= (and start!689758 (is-Star!17750 r!11554)) b!7086447))

(assert (= (and start!689758 (is-Union!17750 r!11554)) b!7086445))

(assert (= start!689758 b!7086446))

(assert (= start!689758 b!7086443))

(declare-fun m!7817104 () Bool)

(assert (=> start!689758 m!7817104))

(declare-fun m!7817106 () Bool)

(assert (=> start!689758 m!7817106))

(declare-fun m!7817108 () Bool)

(assert (=> start!689758 m!7817108))

(declare-fun m!7817110 () Bool)

(assert (=> b!7086444 m!7817110))

(declare-fun m!7817112 () Bool)

(assert (=> b!7086444 m!7817112))

(assert (=> b!7086444 m!7817112))

(assert (=> b!7086444 m!7817112))

(push 1)

(assert (not b!7086446))

(assert (not b!7086443))

(assert tp_is_empty!44733)

(assert (not b!7086445))

(assert (not b!7086448))

(assert (not b!7086444))

(assert (not start!689758))

(assert (not b!7086447))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

