; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695104 () Bool)

(assert start!695104)

(declare-fun res!2910957 () Bool)

(declare-fun e!4287574 () Bool)

(assert (=> start!695104 (=> (not res!2910957) (not e!4287574))))

(declare-datatypes ((C!36480 0))(
  ( (C!36481 (val!28188 Int)) )
))
(declare-datatypes ((Regex!18103 0))(
  ( (ElementMatch!18103 (c!1330486 C!36480)) (Concat!26948 (regOne!36718 Regex!18103) (regTwo!36718 Regex!18103)) (EmptyExpr!18103) (Star!18103 (reg!18432 Regex!18103)) (EmptyLang!18103) (Union!18103 (regOne!36719 Regex!18103) (regTwo!36719 Regex!18103)) )
))
(declare-datatypes ((List!69284 0))(
  ( (Nil!69160) (Cons!69160 (h!75608 Regex!18103) (t!383301 List!69284)) )
))
(declare-datatypes ((Context!14194 0))(
  ( (Context!14195 (exprs!7597 List!69284)) )
))
(declare-datatypes ((List!69285 0))(
  ( (Nil!69161) (Cons!69161 (h!75609 Context!14194) (t!383302 List!69285)) )
))
(declare-fun zl!173 () List!69285)

(get-info :version)

(assert (=> start!695104 (= res!2910957 ((_ is Cons!69161) zl!173))))

(assert (=> start!695104 e!4287574))

(declare-fun e!4287576 () Bool)

(assert (=> start!695104 e!4287576))

(declare-fun b!7134087 () Bool)

(declare-fun size!41507 (List!69285) Int)

(assert (=> b!7134087 (= e!4287574 (>= (size!41507 (t!383302 zl!173)) (size!41507 zl!173)))))

(declare-fun b!7134089 () Bool)

(declare-fun e!4287575 () Bool)

(declare-fun tp!1966523 () Bool)

(assert (=> b!7134089 (= e!4287575 tp!1966523)))

(declare-fun tp!1966522 () Bool)

(declare-fun b!7134088 () Bool)

(declare-fun inv!88321 (Context!14194) Bool)

(assert (=> b!7134088 (= e!4287576 (and (inv!88321 (h!75609 zl!173)) e!4287575 tp!1966522))))

(assert (= (and start!695104 res!2910957) b!7134087))

(assert (= b!7134088 b!7134089))

(assert (= (and start!695104 ((_ is Cons!69161) zl!173)) b!7134088))

(declare-fun m!7850964 () Bool)

(assert (=> b!7134087 m!7850964))

(declare-fun m!7850966 () Bool)

(assert (=> b!7134087 m!7850966))

(declare-fun m!7850968 () Bool)

(assert (=> b!7134088 m!7850968))

(check-sat (not b!7134088) (not b!7134087) (not b!7134089))
(check-sat)
(get-model)

(declare-fun d!2226104 () Bool)

(declare-fun lambda!433266 () Int)

(declare-fun forall!16951 (List!69284 Int) Bool)

(assert (=> d!2226104 (= (inv!88321 (h!75609 zl!173)) (forall!16951 (exprs!7597 (h!75609 zl!173)) lambda!433266))))

(declare-fun bs!1887076 () Bool)

(assert (= bs!1887076 d!2226104))

(declare-fun m!7850976 () Bool)

(assert (=> bs!1887076 m!7850976))

(assert (=> b!7134088 d!2226104))

(declare-fun d!2226110 () Bool)

(declare-fun lt!2565331 () Int)

(assert (=> d!2226110 (>= lt!2565331 0)))

(declare-fun e!4287592 () Int)

(assert (=> d!2226110 (= lt!2565331 e!4287592)))

(declare-fun c!1330493 () Bool)

(assert (=> d!2226110 (= c!1330493 ((_ is Nil!69161) (t!383302 zl!173)))))

(assert (=> d!2226110 (= (size!41507 (t!383302 zl!173)) lt!2565331)))

(declare-fun b!7134115 () Bool)

(assert (=> b!7134115 (= e!4287592 0)))

(declare-fun b!7134116 () Bool)

(assert (=> b!7134116 (= e!4287592 (+ 1 (size!41507 (t!383302 (t!383302 zl!173)))))))

(assert (= (and d!2226110 c!1330493) b!7134115))

(assert (= (and d!2226110 (not c!1330493)) b!7134116))

(declare-fun m!7850978 () Bool)

(assert (=> b!7134116 m!7850978))

(assert (=> b!7134087 d!2226110))

(declare-fun d!2226112 () Bool)

(declare-fun lt!2565332 () Int)

(assert (=> d!2226112 (>= lt!2565332 0)))

(declare-fun e!4287593 () Int)

(assert (=> d!2226112 (= lt!2565332 e!4287593)))

(declare-fun c!1330494 () Bool)

(assert (=> d!2226112 (= c!1330494 ((_ is Nil!69161) zl!173))))

(assert (=> d!2226112 (= (size!41507 zl!173) lt!2565332)))

(declare-fun b!7134117 () Bool)

(assert (=> b!7134117 (= e!4287593 0)))

(declare-fun b!7134118 () Bool)

(assert (=> b!7134118 (= e!4287593 (+ 1 (size!41507 (t!383302 zl!173))))))

(assert (= (and d!2226112 c!1330494) b!7134117))

(assert (= (and d!2226112 (not c!1330494)) b!7134118))

(assert (=> b!7134118 m!7850964))

(assert (=> b!7134087 d!2226112))

(declare-fun b!7134123 () Bool)

(declare-fun e!4287596 () Bool)

(declare-fun tp!1966540 () Bool)

(declare-fun tp!1966541 () Bool)

(assert (=> b!7134123 (= e!4287596 (and tp!1966540 tp!1966541))))

(assert (=> b!7134089 (= tp!1966523 e!4287596)))

(assert (= (and b!7134089 ((_ is Cons!69160) (exprs!7597 (h!75609 zl!173)))) b!7134123))

(declare-fun b!7134131 () Bool)

(declare-fun e!4287602 () Bool)

(declare-fun tp!1966546 () Bool)

(assert (=> b!7134131 (= e!4287602 tp!1966546)))

(declare-fun tp!1966547 () Bool)

(declare-fun e!4287601 () Bool)

(declare-fun b!7134130 () Bool)

(assert (=> b!7134130 (= e!4287601 (and (inv!88321 (h!75609 (t!383302 zl!173))) e!4287602 tp!1966547))))

(assert (=> b!7134088 (= tp!1966522 e!4287601)))

(assert (= b!7134130 b!7134131))

(assert (= (and b!7134088 ((_ is Cons!69161) (t!383302 zl!173))) b!7134130))

(declare-fun m!7850980 () Bool)

(assert (=> b!7134130 m!7850980))

(check-sat (not b!7134131) (not b!7134116) (not b!7134123) (not b!7134130) (not b!7134118) (not d!2226104))
(check-sat)
