; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692358 () Bool)

(assert start!692358)

(declare-fun b!7112981 () Bool)

(declare-fun res!2902520 () Bool)

(declare-fun e!4274521 () Bool)

(assert (=> b!7112981 (=> (not res!2902520) (not e!4274521))))

(declare-datatypes ((C!36162 0))(
  ( (C!36163 (val!27787 Int)) )
))
(declare-datatypes ((Regex!17946 0))(
  ( (ElementMatch!17946 (c!1327427 C!36162)) (Concat!26791 (regOne!36404 Regex!17946) (regTwo!36404 Regex!17946)) (EmptyExpr!17946) (Star!17946 (reg!18275 Regex!17946)) (EmptyLang!17946) (Union!17946 (regOne!36405 Regex!17946) (regTwo!36405 Regex!17946)) )
))
(declare-fun r!11554 () Regex!17946)

(assert (=> b!7112981 (= res!2902520 (is-Concat!26791 r!11554))))

(declare-fun res!2902518 () Bool)

(assert (=> start!692358 (=> (not res!2902518) (not e!4274521))))

(declare-fun validRegex!9219 (Regex!17946) Bool)

(assert (=> start!692358 (= res!2902518 (validRegex!9219 r!11554))))

(assert (=> start!692358 e!4274521))

(declare-fun e!4274517 () Bool)

(assert (=> start!692358 e!4274517))

(declare-fun tp_is_empty!45125 () Bool)

(assert (=> start!692358 tp_is_empty!45125))

(declare-datatypes ((List!68907 0))(
  ( (Nil!68783) (Cons!68783 (h!75231 Regex!17946) (t!382744 List!68907)) )
))
(declare-datatypes ((Context!13880 0))(
  ( (Context!13881 (exprs!7440 List!68907)) )
))
(declare-fun c!9994 () Context!13880)

(declare-fun e!4274519 () Bool)

(declare-fun inv!87729 (Context!13880) Bool)

(assert (=> start!692358 (and (inv!87729 c!9994) e!4274519)))

(declare-fun auxCtx!45 () Context!13880)

(declare-fun e!4274518 () Bool)

(assert (=> start!692358 (and (inv!87729 auxCtx!45) e!4274518)))

(declare-fun b!7112982 () Bool)

(declare-fun tp!1957137 () Bool)

(assert (=> b!7112982 (= e!4274517 tp!1957137)))

(declare-fun b!7112983 () Bool)

(assert (=> b!7112983 (= e!4274517 tp_is_empty!45125)))

(declare-fun b!7112984 () Bool)

(declare-fun tp!1957139 () Bool)

(assert (=> b!7112984 (= e!4274519 tp!1957139)))

(declare-fun b!7112985 () Bool)

(declare-fun tp!1957134 () Bool)

(declare-fun tp!1957136 () Bool)

(assert (=> b!7112985 (= e!4274517 (and tp!1957134 tp!1957136))))

(declare-fun b!7112986 () Bool)

(declare-fun e!4274520 () Bool)

(declare-fun nullable!7583 (Regex!17946) Bool)

(assert (=> b!7112986 (= e!4274520 (not (nullable!7583 (regOne!36404 r!11554))))))

(declare-fun b!7112987 () Bool)

(declare-fun e!4274522 () Bool)

(assert (=> b!7112987 (= e!4274521 e!4274522)))

(declare-fun res!2902519 () Bool)

(assert (=> b!7112987 (=> (not res!2902519) (not e!4274522))))

(assert (=> b!7112987 (= res!2902519 (validRegex!9219 (regTwo!36404 r!11554)))))

(declare-fun lt!2560263 () List!68907)

(declare-fun ++!16098 (List!68907 List!68907) List!68907)

(assert (=> b!7112987 (= lt!2560263 (++!16098 (exprs!7440 c!9994) (exprs!7440 auxCtx!45)))))

(declare-datatypes ((Unit!162563 0))(
  ( (Unit!162564) )
))
(declare-fun lt!2560265 () Unit!162563)

(declare-fun lambda!432164 () Int)

(declare-fun lemmaConcatPreservesForall!1231 (List!68907 List!68907 Int) Unit!162563)

(assert (=> b!7112987 (= lt!2560265 (lemmaConcatPreservesForall!1231 (exprs!7440 c!9994) (exprs!7440 auxCtx!45) lambda!432164))))

(declare-fun lt!2560267 () Unit!162563)

(assert (=> b!7112987 (= lt!2560267 (lemmaConcatPreservesForall!1231 (exprs!7440 c!9994) (exprs!7440 auxCtx!45) lambda!432164))))

(declare-fun b!7112988 () Bool)

(declare-fun tp!1957135 () Bool)

(assert (=> b!7112988 (= e!4274518 tp!1957135)))

(declare-fun b!7112989 () Bool)

(assert (=> b!7112989 (= e!4274522 false)))

(declare-fun lt!2560266 () (Set Context!13880))

(declare-fun a!1901 () C!36162)

(declare-fun derivationStepZipperDown!2453 (Regex!17946 Context!13880 C!36162) (Set Context!13880))

(declare-fun $colon$colon!2798 (List!68907 Regex!17946) List!68907)

(assert (=> b!7112989 (= lt!2560266 (derivationStepZipperDown!2453 (regOne!36404 r!11554) (Context!13881 ($colon$colon!2798 lt!2560263 (regTwo!36404 r!11554))) a!1901))))

(declare-fun lt!2560264 () (Set Context!13880))

(assert (=> b!7112989 (= lt!2560264 (derivationStepZipperDown!2453 r!11554 (Context!13881 lt!2560263) a!1901))))

(declare-fun b!7112990 () Bool)

(declare-fun res!2902517 () Bool)

(assert (=> b!7112990 (=> (not res!2902517) (not e!4274521))))

(assert (=> b!7112990 (= res!2902517 (and (or (not (is-ElementMatch!17946 r!11554)) (not (= (c!1327427 r!11554) a!1901))) (not (is-Union!17946 r!11554))))))

(declare-fun b!7112991 () Bool)

(declare-fun res!2902521 () Bool)

(assert (=> b!7112991 (=> (not res!2902521) (not e!4274521))))

(assert (=> b!7112991 (= res!2902521 e!4274520)))

(declare-fun res!2902522 () Bool)

(assert (=> b!7112991 (=> res!2902522 e!4274520)))

(assert (=> b!7112991 (= res!2902522 (not (is-Concat!26791 r!11554)))))

(declare-fun b!7112992 () Bool)

(declare-fun tp!1957133 () Bool)

(declare-fun tp!1957138 () Bool)

(assert (=> b!7112992 (= e!4274517 (and tp!1957133 tp!1957138))))

(assert (= (and start!692358 res!2902518) b!7112990))

(assert (= (and b!7112990 res!2902517) b!7112991))

(assert (= (and b!7112991 (not res!2902522)) b!7112986))

(assert (= (and b!7112991 res!2902521) b!7112981))

(assert (= (and b!7112981 res!2902520) b!7112987))

(assert (= (and b!7112987 res!2902519) b!7112989))

(assert (= (and start!692358 (is-ElementMatch!17946 r!11554)) b!7112983))

(assert (= (and start!692358 (is-Concat!26791 r!11554)) b!7112992))

(assert (= (and start!692358 (is-Star!17946 r!11554)) b!7112982))

(assert (= (and start!692358 (is-Union!17946 r!11554)) b!7112985))

(assert (= start!692358 b!7112984))

(assert (= start!692358 b!7112988))

(declare-fun m!7833384 () Bool)

(assert (=> start!692358 m!7833384))

(declare-fun m!7833386 () Bool)

(assert (=> start!692358 m!7833386))

(declare-fun m!7833388 () Bool)

(assert (=> start!692358 m!7833388))

(declare-fun m!7833390 () Bool)

(assert (=> b!7112986 m!7833390))

(declare-fun m!7833392 () Bool)

(assert (=> b!7112987 m!7833392))

(declare-fun m!7833394 () Bool)

(assert (=> b!7112987 m!7833394))

(declare-fun m!7833396 () Bool)

(assert (=> b!7112987 m!7833396))

(assert (=> b!7112987 m!7833396))

(declare-fun m!7833398 () Bool)

(assert (=> b!7112989 m!7833398))

(declare-fun m!7833400 () Bool)

(assert (=> b!7112989 m!7833400))

(declare-fun m!7833402 () Bool)

(assert (=> b!7112989 m!7833402))

(push 1)

(assert (not b!7112982))

(assert tp_is_empty!45125)

(assert (not b!7112989))

(assert (not b!7112985))

(assert (not b!7112988))

(assert (not b!7112987))

(assert (not start!692358))

(assert (not b!7112984))

(assert (not b!7112986))

(assert (not b!7112992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

