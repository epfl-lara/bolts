; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691262 () Bool)

(assert start!691262)

(declare-fun b!7100925 () Bool)

(assert (=> b!7100925 true))

(declare-fun e!4268127 () Bool)

(declare-fun e!4268128 () Bool)

(assert (=> b!7100925 (= e!4268127 e!4268128)))

(declare-fun res!2899409 () Bool)

(assert (=> b!7100925 (=> (not res!2899409) (not e!4268128))))

(declare-datatypes ((C!36026 0))(
  ( (C!36027 (val!27719 Int)) )
))
(declare-datatypes ((Regex!17878 0))(
  ( (ElementMatch!17878 (c!1324955 C!36026)) (Concat!26723 (regOne!36268 Regex!17878) (regTwo!36268 Regex!17878)) (EmptyExpr!17878) (Star!17878 (reg!18207 Regex!17878)) (EmptyLang!17878) (Union!17878 (regOne!36269 Regex!17878) (regTwo!36269 Regex!17878)) )
))
(declare-fun r!11554 () Regex!17878)

(declare-fun a!1901 () C!36026)

(assert (=> b!7100925 (= res!2899409 (and (or (not (is-ElementMatch!17878 r!11554)) (not (= (c!1324955 r!11554) a!1901))) (not (is-Union!17878 r!11554))))))

(declare-fun b!7100926 () Bool)

(declare-fun e!4268133 () Bool)

(declare-fun tp!1952122 () Bool)

(declare-fun tp!1952120 () Bool)

(assert (=> b!7100926 (= e!4268133 (and tp!1952122 tp!1952120))))

(declare-fun b!7100927 () Bool)

(declare-fun res!2899412 () Bool)

(assert (=> b!7100927 (=> (not res!2899412) (not e!4268128))))

(assert (=> b!7100927 (= res!2899412 (and (not (is-Concat!26723 r!11554)) (not (is-Star!17878 r!11554))))))

(declare-fun res!2899410 () Bool)

(assert (=> start!691262 (=> (not res!2899410) (not e!4268127))))

(declare-fun validRegex!9151 (Regex!17878) Bool)

(assert (=> start!691262 (= res!2899410 (validRegex!9151 r!11554))))

(assert (=> start!691262 e!4268127))

(assert (=> start!691262 e!4268133))

(declare-datatypes ((List!68839 0))(
  ( (Nil!68715) (Cons!68715 (h!75163 Regex!17878) (t!382650 List!68839)) )
))
(declare-datatypes ((Context!13744 0))(
  ( (Context!13745 (exprs!7372 List!68839)) )
))
(declare-fun c!9994 () Context!13744)

(declare-fun e!4268130 () Bool)

(declare-fun inv!87559 (Context!13744) Bool)

(assert (=> start!691262 (and (inv!87559 c!9994) e!4268130)))

(declare-fun tp_is_empty!44989 () Bool)

(assert (=> start!691262 tp_is_empty!44989))

(declare-fun auxCtx!45 () Context!13744)

(declare-fun e!4268132 () Bool)

(assert (=> start!691262 (and (inv!87559 auxCtx!45) e!4268132)))

(declare-fun b!7100928 () Bool)

(declare-fun e!4268131 () Bool)

(assert (=> b!7100928 (= e!4268131 true)))

(declare-fun lambda!431031 () Int)

(declare-datatypes ((Unit!162427 0))(
  ( (Unit!162428) )
))
(declare-fun lt!2558113 () Unit!162427)

(declare-fun lemmaConcatPreservesForall!1163 (List!68839 List!68839 Int) Unit!162427)

(assert (=> b!7100928 (= lt!2558113 (lemmaConcatPreservesForall!1163 (exprs!7372 c!9994) (exprs!7372 auxCtx!45) lambda!431031))))

(declare-fun b!7100929 () Bool)

(declare-fun tp!1952119 () Bool)

(assert (=> b!7100929 (= e!4268132 tp!1952119)))

(declare-fun b!7100930 () Bool)

(declare-fun tp!1952124 () Bool)

(declare-fun tp!1952125 () Bool)

(assert (=> b!7100930 (= e!4268133 (and tp!1952124 tp!1952125))))

(declare-fun b!7100931 () Bool)

(declare-fun tp!1952123 () Bool)

(assert (=> b!7100931 (= e!4268130 tp!1952123)))

(declare-fun b!7100932 () Bool)

(declare-fun tp!1952121 () Bool)

(assert (=> b!7100932 (= e!4268133 tp!1952121)))

(declare-fun b!7100933 () Bool)

(assert (=> b!7100933 (= e!4268133 tp_is_empty!44989)))

(declare-fun b!7100934 () Bool)

(declare-fun e!4268129 () Bool)

(declare-fun nullable!7516 (Regex!17878) Bool)

(assert (=> b!7100934 (= e!4268129 (not (nullable!7516 (regOne!36268 r!11554))))))

(declare-fun b!7100935 () Bool)

(assert (=> b!7100935 (= e!4268128 (not e!4268131))))

(declare-fun res!2899407 () Bool)

(assert (=> b!7100935 (=> res!2899407 e!4268131)))

(declare-fun derivationStepZipperDown!2407 (Regex!17878 Context!13744 C!36026) (Set Context!13744))

(declare-fun ++!16030 (List!68839 List!68839) List!68839)

(declare-fun appendTo!911 ((Set Context!13744) Context!13744) (Set Context!13744))

(assert (=> b!7100935 (= res!2899407 (not (= (derivationStepZipperDown!2407 r!11554 (Context!13745 (++!16030 (exprs!7372 c!9994) (exprs!7372 auxCtx!45))) a!1901) (appendTo!911 (derivationStepZipperDown!2407 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lt!2558114 () Unit!162427)

(assert (=> b!7100935 (= lt!2558114 (lemmaConcatPreservesForall!1163 (exprs!7372 c!9994) (exprs!7372 auxCtx!45) lambda!431031))))

(declare-fun lambda!431030 () Int)

(declare-fun map!16224 ((Set Context!13744) Int) (Set Context!13744))

(assert (=> b!7100935 (= (map!16224 (as set.empty (Set Context!13744)) lambda!431030) (as set.empty (Set Context!13744)))))

(declare-fun lt!2558115 () Unit!162427)

(declare-fun lemmaMapOnEmptySetIsEmpty!13 ((Set Context!13744) Int) Unit!162427)

(assert (=> b!7100935 (= lt!2558115 (lemmaMapOnEmptySetIsEmpty!13 (as set.empty (Set Context!13744)) lambda!431030))))

(declare-fun b!7100936 () Bool)

(declare-fun res!2899411 () Bool)

(assert (=> b!7100936 (=> (not res!2899411) (not e!4268128))))

(assert (=> b!7100936 (= res!2899411 e!4268129)))

(declare-fun res!2899408 () Bool)

(assert (=> b!7100936 (=> res!2899408 e!4268129)))

(assert (=> b!7100936 (= res!2899408 (not (is-Concat!26723 r!11554)))))

(assert (= (and start!691262 res!2899410) b!7100925))

(assert (= (and b!7100925 res!2899409) b!7100936))

(assert (= (and b!7100936 (not res!2899408)) b!7100934))

(assert (= (and b!7100936 res!2899411) b!7100927))

(assert (= (and b!7100927 res!2899412) b!7100935))

(assert (= (and b!7100935 (not res!2899407)) b!7100928))

(assert (= (and start!691262 (is-ElementMatch!17878 r!11554)) b!7100933))

(assert (= (and start!691262 (is-Concat!26723 r!11554)) b!7100926))

(assert (= (and start!691262 (is-Star!17878 r!11554)) b!7100932))

(assert (= (and start!691262 (is-Union!17878 r!11554)) b!7100930))

(assert (= start!691262 b!7100931))

(assert (= start!691262 b!7100929))

(declare-fun m!7826384 () Bool)

(assert (=> start!691262 m!7826384))

(declare-fun m!7826386 () Bool)

(assert (=> start!691262 m!7826386))

(declare-fun m!7826388 () Bool)

(assert (=> start!691262 m!7826388))

(declare-fun m!7826390 () Bool)

(assert (=> b!7100928 m!7826390))

(declare-fun m!7826392 () Bool)

(assert (=> b!7100934 m!7826392))

(declare-fun m!7826394 () Bool)

(assert (=> b!7100935 m!7826394))

(declare-fun m!7826396 () Bool)

(assert (=> b!7100935 m!7826396))

(declare-fun m!7826398 () Bool)

(assert (=> b!7100935 m!7826398))

(assert (=> b!7100935 m!7826390))

(assert (=> b!7100935 m!7826394))

(declare-fun m!7826400 () Bool)

(assert (=> b!7100935 m!7826400))

(declare-fun m!7826402 () Bool)

(assert (=> b!7100935 m!7826402))

(declare-fun m!7826404 () Bool)

(assert (=> b!7100935 m!7826404))

(push 1)

(assert (not start!691262))

(assert tp_is_empty!44989)

(assert (not b!7100928))

(assert (not b!7100931))

(assert (not b!7100934))

(assert (not b!7100932))

(assert (not b!7100926))

(assert (not b!7100935))

(assert (not b!7100930))

(assert (not b!7100929))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

