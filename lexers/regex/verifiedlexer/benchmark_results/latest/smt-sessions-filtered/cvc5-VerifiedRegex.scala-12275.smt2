; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690230 () Bool)

(assert start!690230)

(declare-fun b!7091013 () Bool)

(declare-fun res!2896077 () Bool)

(declare-fun e!4262759 () Bool)

(assert (=> b!7091013 (=> (not res!2896077) (not e!4262759))))

(declare-datatypes ((C!35854 0))(
  ( (C!35855 (val!27633 Int)) )
))
(declare-datatypes ((Regex!17792 0))(
  ( (ElementMatch!17792 (c!1323289 C!35854)) (Concat!26637 (regOne!36096 Regex!17792) (regTwo!36096 Regex!17792)) (EmptyExpr!17792) (Star!17792 (reg!18121 Regex!17792)) (EmptyLang!17792) (Union!17792 (regOne!36097 Regex!17792) (regTwo!36097 Regex!17792)) )
))
(declare-fun r!11554 () Regex!17792)

(declare-fun nullable!7432 (Regex!17792) Bool)

(assert (=> b!7091013 (= res!2896077 (nullable!7432 (regOne!36096 r!11554)))))

(declare-fun b!7091014 () Bool)

(declare-fun res!2896076 () Bool)

(declare-fun e!4262761 () Bool)

(assert (=> b!7091014 (=> (not res!2896076) (not e!4262761))))

(declare-datatypes ((List!68755 0))(
  ( (Nil!68631) (Cons!68631 (h!75079 Regex!17792) (t!382540 List!68755)) )
))
(declare-datatypes ((Context!13576 0))(
  ( (Context!13577 (exprs!7288 List!68755)) )
))
(declare-fun lt!2555806 () Context!13576)

(declare-fun lt!2555809 () List!68755)

(declare-fun a!1901 () C!35854)

(declare-fun derivationStepZipperDown!2355 (Regex!17792 Context!13576 C!35854) (Set Context!13576))

(declare-fun $colon$colon!2699 (List!68755 Regex!17792) List!68755)

(assert (=> b!7091014 (= res!2896076 (= (derivationStepZipperDown!2355 r!11554 lt!2555806 a!1901) (set.union (derivationStepZipperDown!2355 (regOne!36096 r!11554) (Context!13577 ($colon$colon!2699 lt!2555809 (regTwo!36096 r!11554))) a!1901) (derivationStepZipperDown!2355 (regTwo!36096 r!11554) lt!2555806 a!1901))))))

(declare-fun res!2896078 () Bool)

(assert (=> start!690230 (=> (not res!2896078) (not e!4262759))))

(declare-fun validRegex!9067 (Regex!17792) Bool)

(assert (=> start!690230 (= res!2896078 (validRegex!9067 r!11554))))

(assert (=> start!690230 e!4262759))

(declare-fun e!4262760 () Bool)

(assert (=> start!690230 e!4262760))

(declare-fun tp_is_empty!44817 () Bool)

(assert (=> start!690230 tp_is_empty!44817))

(declare-fun c!9994 () Context!13576)

(declare-fun e!4262758 () Bool)

(declare-fun inv!87346 (Context!13576) Bool)

(assert (=> start!690230 (and (inv!87346 c!9994) e!4262758)))

(declare-fun auxCtx!45 () Context!13576)

(declare-fun e!4262757 () Bool)

(assert (=> start!690230 (and (inv!87346 auxCtx!45) e!4262757)))

(declare-fun b!7091015 () Bool)

(assert (=> b!7091015 (= e!4262761 false)))

(declare-fun b!7091016 () Bool)

(declare-fun res!2896079 () Bool)

(assert (=> b!7091016 (=> (not res!2896079) (not e!4262759))))

(assert (=> b!7091016 (= res!2896079 (and (or (not (is-ElementMatch!17792 r!11554)) (not (= (c!1323289 r!11554) a!1901))) (not (is-Union!17792 r!11554)) (is-Concat!26637 r!11554)))))

(declare-fun b!7091017 () Bool)

(assert (=> b!7091017 (= e!4262760 tp_is_empty!44817)))

(declare-fun b!7091018 () Bool)

(declare-fun tp!1948029 () Bool)

(assert (=> b!7091018 (= e!4262758 tp!1948029)))

(declare-fun b!7091019 () Bool)

(declare-fun tp!1948027 () Bool)

(declare-fun tp!1948028 () Bool)

(assert (=> b!7091019 (= e!4262760 (and tp!1948027 tp!1948028))))

(declare-fun b!7091020 () Bool)

(declare-fun tp!1948023 () Bool)

(declare-fun tp!1948025 () Bool)

(assert (=> b!7091020 (= e!4262760 (and tp!1948023 tp!1948025))))

(declare-fun b!7091021 () Bool)

(declare-fun tp!1948026 () Bool)

(assert (=> b!7091021 (= e!4262760 tp!1948026)))

(declare-fun b!7091022 () Bool)

(declare-fun tp!1948024 () Bool)

(assert (=> b!7091022 (= e!4262757 tp!1948024)))

(declare-fun b!7091023 () Bool)

(assert (=> b!7091023 (= e!4262759 e!4262761)))

(declare-fun res!2896075 () Bool)

(assert (=> b!7091023 (=> (not res!2896075) (not e!4262761))))

(assert (=> b!7091023 (= res!2896075 (validRegex!9067 (regTwo!36096 r!11554)))))

(declare-fun lambda!429784 () Int)

(declare-datatypes ((Unit!162275 0))(
  ( (Unit!162276) )
))
(declare-fun lt!2555808 () Unit!162275)

(declare-fun lemmaConcatPreservesForall!1091 (List!68755 List!68755 Int) Unit!162275)

(assert (=> b!7091023 (= lt!2555808 (lemmaConcatPreservesForall!1091 (exprs!7288 c!9994) (exprs!7288 auxCtx!45) lambda!429784))))

(assert (=> b!7091023 (= lt!2555806 (Context!13577 lt!2555809))))

(declare-fun ++!15961 (List!68755 List!68755) List!68755)

(assert (=> b!7091023 (= lt!2555809 (++!15961 (exprs!7288 c!9994) (exprs!7288 auxCtx!45)))))

(declare-fun lt!2555807 () Unit!162275)

(assert (=> b!7091023 (= lt!2555807 (lemmaConcatPreservesForall!1091 (exprs!7288 c!9994) (exprs!7288 auxCtx!45) lambda!429784))))

(declare-fun lt!2555805 () Unit!162275)

(assert (=> b!7091023 (= lt!2555805 (lemmaConcatPreservesForall!1091 (exprs!7288 c!9994) (exprs!7288 auxCtx!45) lambda!429784))))

(assert (= (and start!690230 res!2896078) b!7091016))

(assert (= (and b!7091016 res!2896079) b!7091013))

(assert (= (and b!7091013 res!2896077) b!7091023))

(assert (= (and b!7091023 res!2896075) b!7091014))

(assert (= (and b!7091014 res!2896076) b!7091015))

(assert (= (and start!690230 (is-ElementMatch!17792 r!11554)) b!7091017))

(assert (= (and start!690230 (is-Concat!26637 r!11554)) b!7091020))

(assert (= (and start!690230 (is-Star!17792 r!11554)) b!7091021))

(assert (= (and start!690230 (is-Union!17792 r!11554)) b!7091019))

(assert (= start!690230 b!7091018))

(assert (= start!690230 b!7091022))

(declare-fun m!7819912 () Bool)

(assert (=> b!7091013 m!7819912))

(declare-fun m!7819914 () Bool)

(assert (=> b!7091014 m!7819914))

(declare-fun m!7819916 () Bool)

(assert (=> b!7091014 m!7819916))

(declare-fun m!7819918 () Bool)

(assert (=> b!7091014 m!7819918))

(declare-fun m!7819920 () Bool)

(assert (=> b!7091014 m!7819920))

(declare-fun m!7819922 () Bool)

(assert (=> start!690230 m!7819922))

(declare-fun m!7819924 () Bool)

(assert (=> start!690230 m!7819924))

(declare-fun m!7819926 () Bool)

(assert (=> start!690230 m!7819926))

(declare-fun m!7819928 () Bool)

(assert (=> b!7091023 m!7819928))

(assert (=> b!7091023 m!7819928))

(declare-fun m!7819930 () Bool)

(assert (=> b!7091023 m!7819930))

(declare-fun m!7819932 () Bool)

(assert (=> b!7091023 m!7819932))

(assert (=> b!7091023 m!7819928))

(push 1)

(assert (not b!7091020))

(assert (not b!7091013))

(assert tp_is_empty!44817)

(assert (not b!7091021))

(assert (not b!7091018))

(assert (not b!7091014))

(assert (not start!690230))

(assert (not b!7091019))

(assert (not b!7091023))

(assert (not b!7091022))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

