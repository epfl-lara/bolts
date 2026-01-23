; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!689802 () Bool)

(assert start!689802)

(declare-fun b!7086925 () Bool)

(declare-fun e!4260523 () Bool)

(assert (=> b!7086925 (= e!4260523 false)))

(declare-fun b!7086926 () Bool)

(declare-fun e!4260521 () Bool)

(declare-fun tp!1946159 () Bool)

(assert (=> b!7086926 (= e!4260521 tp!1946159)))

(declare-fun b!7086927 () Bool)

(declare-fun tp!1946164 () Bool)

(declare-fun tp!1946165 () Bool)

(assert (=> b!7086927 (= e!4260521 (and tp!1946164 tp!1946165))))

(declare-fun b!7086928 () Bool)

(declare-fun e!4260522 () Bool)

(assert (=> b!7086928 (= e!4260522 e!4260523)))

(declare-fun res!2894920 () Bool)

(assert (=> b!7086928 (=> (not res!2894920) (not e!4260523))))

(declare-datatypes ((C!35782 0))(
  ( (C!35783 (val!27597 Int)) )
))
(declare-datatypes ((Regex!17756 0))(
  ( (ElementMatch!17756 (c!1322563 C!35782)) (Concat!26601 (regOne!36024 Regex!17756) (regTwo!36024 Regex!17756)) (EmptyExpr!17756) (Star!17756 (reg!18085 Regex!17756)) (EmptyLang!17756) (Union!17756 (regOne!36025 Regex!17756) (regTwo!36025 Regex!17756)) )
))
(declare-datatypes ((List!68719 0))(
  ( (Nil!68595) (Cons!68595 (h!75043 Regex!17756) (t!382504 List!68719)) )
))
(declare-datatypes ((Context!13504 0))(
  ( (Context!13505 (exprs!7252 List!68719)) )
))
(declare-fun lt!2554717 () Context!13504)

(declare-fun a!1901 () C!35782)

(declare-fun r!11554 () Regex!17756)

(declare-fun derivationStepZipperDown!2335 (Regex!17756 Context!13504 C!35782) (Set Context!13504))

(assert (=> b!7086928 (= res!2894920 (= (derivationStepZipperDown!2335 r!11554 lt!2554717 a!1901) (set.union (derivationStepZipperDown!2335 (regOne!36025 r!11554) lt!2554717 a!1901) (derivationStepZipperDown!2335 (regTwo!36025 r!11554) lt!2554717 a!1901))))))

(declare-fun c!9994 () Context!13504)

(declare-fun auxCtx!45 () Context!13504)

(declare-fun ++!15929 (List!68719 List!68719) List!68719)

(assert (=> b!7086928 (= lt!2554717 (Context!13505 (++!15929 (exprs!7252 c!9994) (exprs!7252 auxCtx!45))))))

(declare-fun lambda!429166 () Int)

(declare-datatypes ((Unit!162211 0))(
  ( (Unit!162212) )
))
(declare-fun lt!2554718 () Unit!162211)

(declare-fun lemmaConcatPreservesForall!1059 (List!68719 List!68719 Int) Unit!162211)

(assert (=> b!7086928 (= lt!2554718 (lemmaConcatPreservesForall!1059 (exprs!7252 c!9994) (exprs!7252 auxCtx!45) lambda!429166))))

(declare-fun lt!2554720 () Unit!162211)

(assert (=> b!7086928 (= lt!2554720 (lemmaConcatPreservesForall!1059 (exprs!7252 c!9994) (exprs!7252 auxCtx!45) lambda!429166))))

(declare-fun lt!2554719 () Unit!162211)

(assert (=> b!7086928 (= lt!2554719 (lemmaConcatPreservesForall!1059 (exprs!7252 c!9994) (exprs!7252 auxCtx!45) lambda!429166))))

(declare-fun b!7086929 () Bool)

(declare-fun e!4260519 () Bool)

(declare-fun tp!1946163 () Bool)

(assert (=> b!7086929 (= e!4260519 tp!1946163)))

(declare-fun b!7086930 () Bool)

(declare-fun tp_is_empty!44745 () Bool)

(assert (=> b!7086930 (= e!4260521 tp_is_empty!44745)))

(declare-fun res!2894921 () Bool)

(assert (=> start!689802 (=> (not res!2894921) (not e!4260522))))

(declare-fun validRegex!9031 (Regex!17756) Bool)

(assert (=> start!689802 (= res!2894921 (validRegex!9031 r!11554))))

(assert (=> start!689802 e!4260522))

(assert (=> start!689802 e!4260521))

(assert (=> start!689802 tp_is_empty!44745))

(declare-fun e!4260520 () Bool)

(declare-fun inv!87256 (Context!13504) Bool)

(assert (=> start!689802 (and (inv!87256 c!9994) e!4260520)))

(assert (=> start!689802 (and (inv!87256 auxCtx!45) e!4260519)))

(declare-fun b!7086931 () Bool)

(declare-fun tp!1946162 () Bool)

(declare-fun tp!1946160 () Bool)

(assert (=> b!7086931 (= e!4260521 (and tp!1946162 tp!1946160))))

(declare-fun b!7086932 () Bool)

(declare-fun tp!1946161 () Bool)

(assert (=> b!7086932 (= e!4260520 tp!1946161)))

(declare-fun b!7086933 () Bool)

(declare-fun res!2894919 () Bool)

(assert (=> b!7086933 (=> (not res!2894919) (not e!4260522))))

(assert (=> b!7086933 (= res!2894919 (and (or (not (is-ElementMatch!17756 r!11554)) (not (= (c!1322563 r!11554) a!1901))) (is-Union!17756 r!11554)))))

(assert (= (and start!689802 res!2894921) b!7086933))

(assert (= (and b!7086933 res!2894919) b!7086928))

(assert (= (and b!7086928 res!2894920) b!7086925))

(assert (= (and start!689802 (is-ElementMatch!17756 r!11554)) b!7086930))

(assert (= (and start!689802 (is-Concat!26601 r!11554)) b!7086931))

(assert (= (and start!689802 (is-Star!17756 r!11554)) b!7086926))

(assert (= (and start!689802 (is-Union!17756 r!11554)) b!7086927))

(assert (= start!689802 b!7086932))

(assert (= start!689802 b!7086929))

(declare-fun m!7817316 () Bool)

(assert (=> b!7086928 m!7817316))

(assert (=> b!7086928 m!7817316))

(declare-fun m!7817318 () Bool)

(assert (=> b!7086928 m!7817318))

(declare-fun m!7817320 () Bool)

(assert (=> b!7086928 m!7817320))

(declare-fun m!7817322 () Bool)

(assert (=> b!7086928 m!7817322))

(declare-fun m!7817324 () Bool)

(assert (=> b!7086928 m!7817324))

(assert (=> b!7086928 m!7817316))

(declare-fun m!7817326 () Bool)

(assert (=> start!689802 m!7817326))

(declare-fun m!7817328 () Bool)

(assert (=> start!689802 m!7817328))

(declare-fun m!7817330 () Bool)

(assert (=> start!689802 m!7817330))

(push 1)

(assert (not b!7086929))

(assert tp_is_empty!44745)

(assert (not b!7086926))

(assert (not b!7086927))

(assert (not b!7086928))

(assert (not b!7086932))

(assert (not b!7086931))

(assert (not start!689802))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

