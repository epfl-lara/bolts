; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694106 () Bool)

(assert start!694106)

(declare-fun e!4281406 () Bool)

(declare-fun tp!1962219 () Bool)

(declare-datatypes ((C!36260 0))(
  ( (C!36261 (val!28056 Int)) )
))
(declare-datatypes ((Regex!17995 0))(
  ( (ElementMatch!17995 (c!1329222 C!36260)) (Concat!26840 (regOne!36502 Regex!17995) (regTwo!36502 Regex!17995)) (EmptyExpr!17995) (Star!17995 (reg!18324 Regex!17995)) (EmptyLang!17995) (Union!17995 (regOne!36503 Regex!17995) (regTwo!36503 Regex!17995)) )
))
(declare-datatypes ((List!69041 0))(
  ( (Nil!68917) (Cons!68917 (h!75365 Regex!17995) (t!383018 List!69041)) )
))
(declare-datatypes ((Context!13978 0))(
  ( (Context!13979 (exprs!7489 List!69041)) )
))
(declare-datatypes ((List!69042 0))(
  ( (Nil!68918) (Cons!68918 (h!75366 Context!13978) (t!383019 List!69042)) )
))
(declare-fun zl!1616 () List!69042)

(declare-fun e!4281405 () Bool)

(declare-fun b!7124556 () Bool)

(declare-fun inv!88015 (Context!13978) Bool)

(assert (=> b!7124556 (= e!4281406 (and (inv!88015 (h!75366 zl!1616)) e!4281405 tp!1962219))))

(declare-fun b!7124557 () Bool)

(declare-fun res!2907146 () Bool)

(declare-fun e!4281407 () Bool)

(assert (=> b!7124557 (=> (not res!2907146) (not e!4281407))))

(get-info :version)

(assert (=> b!7124557 (= res!2907146 ((_ is Cons!68918) zl!1616))))

(declare-fun b!7124558 () Bool)

(declare-fun tp!1962218 () Bool)

(assert (=> b!7124558 (= e!4281405 tp!1962218)))

(declare-fun b!7124559 () Bool)

(declare-fun e!4281404 () Bool)

(declare-fun tp!1962217 () Bool)

(assert (=> b!7124559 (= e!4281404 tp!1962217)))

(declare-fun b!7124560 () Bool)

(declare-fun res!2907145 () Bool)

(assert (=> b!7124560 (=> (not res!2907145) (not e!4281407))))

(declare-fun c!9962 () Context!13978)

(declare-fun contains!20537 (List!69042 Context!13978) Bool)

(assert (=> b!7124560 (= res!2907145 (contains!20537 (t!383019 zl!1616) c!9962))))

(declare-fun b!7124561 () Bool)

(declare-fun size!41446 (List!69042) Int)

(assert (=> b!7124561 (= e!4281407 (>= (size!41446 (t!383019 zl!1616)) (size!41446 zl!1616)))))

(declare-fun res!2907147 () Bool)

(assert (=> start!694106 (=> (not res!2907147) (not e!4281407))))

(assert (=> start!694106 (= res!2907147 (contains!20537 zl!1616 c!9962))))

(assert (=> start!694106 e!4281407))

(assert (=> start!694106 e!4281406))

(assert (=> start!694106 (and (inv!88015 c!9962) e!4281404)))

(assert (= (and start!694106 res!2907147) b!7124557))

(assert (= (and b!7124557 res!2907146) b!7124560))

(assert (= (and b!7124560 res!2907145) b!7124561))

(assert (= b!7124556 b!7124558))

(assert (= (and start!694106 ((_ is Cons!68918) zl!1616)) b!7124556))

(assert (= start!694106 b!7124559))

(declare-fun m!7842046 () Bool)

(assert (=> b!7124556 m!7842046))

(declare-fun m!7842048 () Bool)

(assert (=> b!7124560 m!7842048))

(declare-fun m!7842050 () Bool)

(assert (=> b!7124561 m!7842050))

(declare-fun m!7842052 () Bool)

(assert (=> b!7124561 m!7842052))

(declare-fun m!7842054 () Bool)

(assert (=> start!694106 m!7842054))

(declare-fun m!7842056 () Bool)

(assert (=> start!694106 m!7842056))

(check-sat (not b!7124561) (not b!7124560) (not b!7124558) (not b!7124556) (not start!694106) (not b!7124559))
(check-sat)
(get-model)

(declare-fun d!2223368 () Bool)

(declare-fun lt!2562947 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14103 (List!69042) (InoxSet Context!13978))

(assert (=> d!2223368 (= lt!2562947 (select (content!14103 (t!383019 zl!1616)) c!9962))))

(declare-fun e!4281418 () Bool)

(assert (=> d!2223368 (= lt!2562947 e!4281418)))

(declare-fun res!2907159 () Bool)

(assert (=> d!2223368 (=> (not res!2907159) (not e!4281418))))

(assert (=> d!2223368 (= res!2907159 ((_ is Cons!68918) (t!383019 zl!1616)))))

(assert (=> d!2223368 (= (contains!20537 (t!383019 zl!1616) c!9962) lt!2562947)))

(declare-fun b!7124572 () Bool)

(declare-fun e!4281419 () Bool)

(assert (=> b!7124572 (= e!4281418 e!4281419)))

(declare-fun res!2907158 () Bool)

(assert (=> b!7124572 (=> res!2907158 e!4281419)))

(assert (=> b!7124572 (= res!2907158 (= (h!75366 (t!383019 zl!1616)) c!9962))))

(declare-fun b!7124573 () Bool)

(assert (=> b!7124573 (= e!4281419 (contains!20537 (t!383019 (t!383019 zl!1616)) c!9962))))

(assert (= (and d!2223368 res!2907159) b!7124572))

(assert (= (and b!7124572 (not res!2907158)) b!7124573))

(declare-fun m!7842064 () Bool)

(assert (=> d!2223368 m!7842064))

(declare-fun m!7842066 () Bool)

(assert (=> d!2223368 m!7842066))

(declare-fun m!7842068 () Bool)

(assert (=> b!7124573 m!7842068))

(assert (=> b!7124560 d!2223368))

(declare-fun d!2223372 () Bool)

(declare-fun lt!2562948 () Bool)

(assert (=> d!2223372 (= lt!2562948 (select (content!14103 zl!1616) c!9962))))

(declare-fun e!4281420 () Bool)

(assert (=> d!2223372 (= lt!2562948 e!4281420)))

(declare-fun res!2907161 () Bool)

(assert (=> d!2223372 (=> (not res!2907161) (not e!4281420))))

(assert (=> d!2223372 (= res!2907161 ((_ is Cons!68918) zl!1616))))

(assert (=> d!2223372 (= (contains!20537 zl!1616 c!9962) lt!2562948)))

(declare-fun b!7124574 () Bool)

(declare-fun e!4281421 () Bool)

(assert (=> b!7124574 (= e!4281420 e!4281421)))

(declare-fun res!2907160 () Bool)

(assert (=> b!7124574 (=> res!2907160 e!4281421)))

(assert (=> b!7124574 (= res!2907160 (= (h!75366 zl!1616) c!9962))))

(declare-fun b!7124575 () Bool)

(assert (=> b!7124575 (= e!4281421 (contains!20537 (t!383019 zl!1616) c!9962))))

(assert (= (and d!2223372 res!2907161) b!7124574))

(assert (= (and b!7124574 (not res!2907160)) b!7124575))

(declare-fun m!7842070 () Bool)

(assert (=> d!2223372 m!7842070))

(declare-fun m!7842072 () Bool)

(assert (=> d!2223372 m!7842072))

(assert (=> b!7124575 m!7842048))

(assert (=> start!694106 d!2223372))

(declare-fun d!2223374 () Bool)

(declare-fun lambda!432967 () Int)

(declare-fun forall!16903 (List!69041 Int) Bool)

(assert (=> d!2223374 (= (inv!88015 c!9962) (forall!16903 (exprs!7489 c!9962) lambda!432967))))

(declare-fun bs!1886272 () Bool)

(assert (= bs!1886272 d!2223374))

(declare-fun m!7842074 () Bool)

(assert (=> bs!1886272 m!7842074))

(assert (=> start!694106 d!2223374))

(declare-fun d!2223376 () Bool)

(declare-fun lt!2562951 () Int)

(assert (=> d!2223376 (>= lt!2562951 0)))

(declare-fun e!4281424 () Int)

(assert (=> d!2223376 (= lt!2562951 e!4281424)))

(declare-fun c!1329225 () Bool)

(assert (=> d!2223376 (= c!1329225 ((_ is Nil!68918) (t!383019 zl!1616)))))

(assert (=> d!2223376 (= (size!41446 (t!383019 zl!1616)) lt!2562951)))

(declare-fun b!7124580 () Bool)

(assert (=> b!7124580 (= e!4281424 0)))

(declare-fun b!7124581 () Bool)

(assert (=> b!7124581 (= e!4281424 (+ 1 (size!41446 (t!383019 (t!383019 zl!1616)))))))

(assert (= (and d!2223376 c!1329225) b!7124580))

(assert (= (and d!2223376 (not c!1329225)) b!7124581))

(declare-fun m!7842078 () Bool)

(assert (=> b!7124581 m!7842078))

(assert (=> b!7124561 d!2223376))

(declare-fun d!2223380 () Bool)

(declare-fun lt!2562952 () Int)

(assert (=> d!2223380 (>= lt!2562952 0)))

(declare-fun e!4281425 () Int)

(assert (=> d!2223380 (= lt!2562952 e!4281425)))

(declare-fun c!1329226 () Bool)

(assert (=> d!2223380 (= c!1329226 ((_ is Nil!68918) zl!1616))))

(assert (=> d!2223380 (= (size!41446 zl!1616) lt!2562952)))

(declare-fun b!7124582 () Bool)

(assert (=> b!7124582 (= e!4281425 0)))

(declare-fun b!7124583 () Bool)

(assert (=> b!7124583 (= e!4281425 (+ 1 (size!41446 (t!383019 zl!1616))))))

(assert (= (and d!2223380 c!1329226) b!7124582))

(assert (= (and d!2223380 (not c!1329226)) b!7124583))

(assert (=> b!7124583 m!7842050))

(assert (=> b!7124561 d!2223380))

(declare-fun bs!1886274 () Bool)

(declare-fun d!2223382 () Bool)

(assert (= bs!1886274 (and d!2223382 d!2223374)))

(declare-fun lambda!432971 () Int)

(assert (=> bs!1886274 (= lambda!432971 lambda!432967)))

(assert (=> d!2223382 (= (inv!88015 (h!75366 zl!1616)) (forall!16903 (exprs!7489 (h!75366 zl!1616)) lambda!432971))))

(declare-fun bs!1886275 () Bool)

(assert (= bs!1886275 d!2223382))

(declare-fun m!7842080 () Bool)

(assert (=> bs!1886275 m!7842080))

(assert (=> b!7124556 d!2223382))

(declare-fun b!7124588 () Bool)

(declare-fun e!4281428 () Bool)

(declare-fun tp!1962224 () Bool)

(declare-fun tp!1962225 () Bool)

(assert (=> b!7124588 (= e!4281428 (and tp!1962224 tp!1962225))))

(assert (=> b!7124559 (= tp!1962217 e!4281428)))

(assert (= (and b!7124559 ((_ is Cons!68917) (exprs!7489 c!9962))) b!7124588))

(declare-fun b!7124600 () Bool)

(declare-fun e!4281436 () Bool)

(declare-fun tp!1962230 () Bool)

(assert (=> b!7124600 (= e!4281436 tp!1962230)))

(declare-fun e!4281435 () Bool)

(declare-fun tp!1962231 () Bool)

(declare-fun b!7124599 () Bool)

(assert (=> b!7124599 (= e!4281435 (and (inv!88015 (h!75366 (t!383019 zl!1616))) e!4281436 tp!1962231))))

(assert (=> b!7124556 (= tp!1962219 e!4281435)))

(assert (= b!7124599 b!7124600))

(assert (= (and b!7124556 ((_ is Cons!68918) (t!383019 zl!1616))) b!7124599))

(declare-fun m!7842082 () Bool)

(assert (=> b!7124599 m!7842082))

(declare-fun b!7124601 () Bool)

(declare-fun e!4281437 () Bool)

(declare-fun tp!1962232 () Bool)

(declare-fun tp!1962233 () Bool)

(assert (=> b!7124601 (= e!4281437 (and tp!1962232 tp!1962233))))

(assert (=> b!7124558 (= tp!1962218 e!4281437)))

(assert (= (and b!7124558 ((_ is Cons!68917) (exprs!7489 (h!75366 zl!1616)))) b!7124601))

(check-sat (not b!7124575) (not b!7124600) (not b!7124583) (not d!2223368) (not d!2223374) (not b!7124573) (not b!7124599) (not b!7124581) (not d!2223372) (not d!2223382) (not b!7124588) (not b!7124601))
(check-sat)
