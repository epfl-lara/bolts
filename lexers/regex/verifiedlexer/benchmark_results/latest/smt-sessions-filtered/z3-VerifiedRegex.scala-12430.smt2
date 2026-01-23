; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!694092 () Bool)

(assert start!694092)

(declare-fun b!7124479 () Bool)

(declare-fun e!4281345 () Bool)

(declare-fun tp!1962172 () Bool)

(assert (=> b!7124479 (= e!4281345 tp!1962172)))

(declare-fun res!2907117 () Bool)

(declare-fun e!4281348 () Bool)

(assert (=> start!694092 (=> (not res!2907117) (not e!4281348))))

(declare-datatypes ((C!36256 0))(
  ( (C!36257 (val!28054 Int)) )
))
(declare-datatypes ((Regex!17993 0))(
  ( (ElementMatch!17993 (c!1329217 C!36256)) (Concat!26838 (regOne!36498 Regex!17993) (regTwo!36498 Regex!17993)) (EmptyExpr!17993) (Star!17993 (reg!18322 Regex!17993)) (EmptyLang!17993) (Union!17993 (regOne!36499 Regex!17993) (regTwo!36499 Regex!17993)) )
))
(declare-datatypes ((List!69037 0))(
  ( (Nil!68913) (Cons!68913 (h!75361 Regex!17993) (t!383014 List!69037)) )
))
(declare-datatypes ((Context!13974 0))(
  ( (Context!13975 (exprs!7487 List!69037)) )
))
(declare-datatypes ((List!69038 0))(
  ( (Nil!68914) (Cons!68914 (h!75362 Context!13974) (t!383015 List!69038)) )
))
(declare-fun zl!1616 () List!69038)

(declare-fun c!9962 () Context!13974)

(declare-fun contains!20535 (List!69038 Context!13974) Bool)

(assert (=> start!694092 (= res!2907117 (contains!20535 zl!1616 c!9962))))

(assert (=> start!694092 e!4281348))

(declare-fun e!4281346 () Bool)

(assert (=> start!694092 e!4281346))

(declare-fun inv!88010 (Context!13974) Bool)

(assert (=> start!694092 (and (inv!88010 c!9962) e!4281345)))

(declare-fun b!7124478 () Bool)

(declare-fun e!4281347 () Bool)

(declare-fun tp!1962171 () Bool)

(assert (=> b!7124478 (= e!4281347 tp!1962171)))

(declare-fun b!7124476 () Bool)

(declare-fun size!41444 (List!69038) Int)

(assert (=> b!7124476 (= e!4281348 (< (size!41444 zl!1616) 0))))

(declare-fun b!7124477 () Bool)

(declare-fun tp!1962173 () Bool)

(assert (=> b!7124477 (= e!4281346 (and (inv!88010 (h!75362 zl!1616)) e!4281347 tp!1962173))))

(assert (= (and start!694092 res!2907117) b!7124476))

(assert (= b!7124477 b!7124478))

(get-info :version)

(assert (= (and start!694092 ((_ is Cons!68914) zl!1616)) b!7124477))

(assert (= start!694092 b!7124479))

(declare-fun m!7842006 () Bool)

(assert (=> start!694092 m!7842006))

(declare-fun m!7842008 () Bool)

(assert (=> start!694092 m!7842008))

(declare-fun m!7842010 () Bool)

(assert (=> b!7124476 m!7842010))

(declare-fun m!7842012 () Bool)

(assert (=> b!7124477 m!7842012))

(check-sat (not start!694092) (not b!7124478) (not b!7124479) (not b!7124477) (not b!7124476))
(check-sat)
(get-model)

(declare-fun d!2223353 () Bool)

(declare-fun lambda!432960 () Int)

(declare-fun forall!16902 (List!69037 Int) Bool)

(assert (=> d!2223353 (= (inv!88010 (h!75362 zl!1616)) (forall!16902 (exprs!7487 (h!75362 zl!1616)) lambda!432960))))

(declare-fun bs!1886267 () Bool)

(assert (= bs!1886267 d!2223353))

(declare-fun m!7842020 () Bool)

(assert (=> bs!1886267 m!7842020))

(assert (=> b!7124477 d!2223353))

(declare-fun d!2223359 () Bool)

(declare-fun lt!2562938 () Int)

(assert (=> d!2223359 (>= lt!2562938 0)))

(declare-fun e!4281357 () Int)

(assert (=> d!2223359 (= lt!2562938 e!4281357)))

(declare-fun c!1329220 () Bool)

(assert (=> d!2223359 (= c!1329220 ((_ is Nil!68914) zl!1616))))

(assert (=> d!2223359 (= (size!41444 zl!1616) lt!2562938)))

(declare-fun b!7124490 () Bool)

(assert (=> b!7124490 (= e!4281357 0)))

(declare-fun b!7124491 () Bool)

(assert (=> b!7124491 (= e!4281357 (+ 1 (size!41444 (t!383015 zl!1616))))))

(assert (= (and d!2223359 c!1329220) b!7124490))

(assert (= (and d!2223359 (not c!1329220)) b!7124491))

(declare-fun m!7842022 () Bool)

(assert (=> b!7124491 m!7842022))

(assert (=> b!7124476 d!2223359))

(declare-fun d!2223361 () Bool)

(declare-fun lt!2562941 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!14102 (List!69038) (InoxSet Context!13974))

(assert (=> d!2223361 (= lt!2562941 (select (content!14102 zl!1616) c!9962))))

(declare-fun e!4281362 () Bool)

(assert (=> d!2223361 (= lt!2562941 e!4281362)))

(declare-fun res!2907129 () Bool)

(assert (=> d!2223361 (=> (not res!2907129) (not e!4281362))))

(assert (=> d!2223361 (= res!2907129 ((_ is Cons!68914) zl!1616))))

(assert (=> d!2223361 (= (contains!20535 zl!1616 c!9962) lt!2562941)))

(declare-fun b!7124496 () Bool)

(declare-fun e!4281363 () Bool)

(assert (=> b!7124496 (= e!4281362 e!4281363)))

(declare-fun res!2907128 () Bool)

(assert (=> b!7124496 (=> res!2907128 e!4281363)))

(assert (=> b!7124496 (= res!2907128 (= (h!75362 zl!1616) c!9962))))

(declare-fun b!7124497 () Bool)

(assert (=> b!7124497 (= e!4281363 (contains!20535 (t!383015 zl!1616) c!9962))))

(assert (= (and d!2223361 res!2907129) b!7124496))

(assert (= (and b!7124496 (not res!2907128)) b!7124497))

(declare-fun m!7842024 () Bool)

(assert (=> d!2223361 m!7842024))

(declare-fun m!7842026 () Bool)

(assert (=> d!2223361 m!7842026))

(declare-fun m!7842028 () Bool)

(assert (=> b!7124497 m!7842028))

(assert (=> start!694092 d!2223361))

(declare-fun bs!1886268 () Bool)

(declare-fun d!2223363 () Bool)

(assert (= bs!1886268 (and d!2223363 d!2223353)))

(declare-fun lambda!432961 () Int)

(assert (=> bs!1886268 (= lambda!432961 lambda!432960)))

(assert (=> d!2223363 (= (inv!88010 c!9962) (forall!16902 (exprs!7487 c!9962) lambda!432961))))

(declare-fun bs!1886269 () Bool)

(assert (= bs!1886269 d!2223363))

(declare-fun m!7842030 () Bool)

(assert (=> bs!1886269 m!7842030))

(assert (=> start!694092 d!2223363))

(declare-fun b!7124505 () Bool)

(declare-fun e!4281369 () Bool)

(declare-fun tp!1962178 () Bool)

(assert (=> b!7124505 (= e!4281369 tp!1962178)))

(declare-fun tp!1962179 () Bool)

(declare-fun e!4281368 () Bool)

(declare-fun b!7124504 () Bool)

(assert (=> b!7124504 (= e!4281368 (and (inv!88010 (h!75362 (t!383015 zl!1616))) e!4281369 tp!1962179))))

(assert (=> b!7124477 (= tp!1962173 e!4281368)))

(assert (= b!7124504 b!7124505))

(assert (= (and b!7124477 ((_ is Cons!68914) (t!383015 zl!1616))) b!7124504))

(declare-fun m!7842032 () Bool)

(assert (=> b!7124504 m!7842032))

(declare-fun b!7124510 () Bool)

(declare-fun e!4281372 () Bool)

(declare-fun tp!1962184 () Bool)

(declare-fun tp!1962185 () Bool)

(assert (=> b!7124510 (= e!4281372 (and tp!1962184 tp!1962185))))

(assert (=> b!7124478 (= tp!1962171 e!4281372)))

(assert (= (and b!7124478 ((_ is Cons!68913) (exprs!7487 (h!75362 zl!1616)))) b!7124510))

(declare-fun b!7124511 () Bool)

(declare-fun e!4281373 () Bool)

(declare-fun tp!1962186 () Bool)

(declare-fun tp!1962187 () Bool)

(assert (=> b!7124511 (= e!4281373 (and tp!1962186 tp!1962187))))

(assert (=> b!7124479 (= tp!1962172 e!4281373)))

(assert (= (and b!7124479 ((_ is Cons!68913) (exprs!7487 c!9962))) b!7124511))

(check-sat (not d!2223363) (not b!7124505) (not b!7124497) (not b!7124511) (not b!7124491) (not d!2223361) (not b!7124510) (not d!2223353) (not b!7124504))
(check-sat)
