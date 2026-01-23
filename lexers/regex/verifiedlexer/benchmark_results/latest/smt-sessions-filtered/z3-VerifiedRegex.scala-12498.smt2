; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!695116 () Bool)

(assert start!695116)

(declare-fun res!2910963 () Bool)

(declare-fun e!4287620 () Bool)

(assert (=> start!695116 (=> (not res!2910963) (not e!4287620))))

(declare-datatypes ((C!36484 0))(
  ( (C!36485 (val!28190 Int)) )
))
(declare-datatypes ((Regex!18105 0))(
  ( (ElementMatch!18105 (c!1330496 C!36484)) (Concat!26950 (regOne!36722 Regex!18105) (regTwo!36722 Regex!18105)) (EmptyExpr!18105) (Star!18105 (reg!18434 Regex!18105)) (EmptyLang!18105) (Union!18105 (regOne!36723 Regex!18105) (regTwo!36723 Regex!18105)) )
))
(declare-datatypes ((List!69288 0))(
  ( (Nil!69164) (Cons!69164 (h!75612 Regex!18105) (t!383305 List!69288)) )
))
(declare-datatypes ((Context!14198 0))(
  ( (Context!14199 (exprs!7599 List!69288)) )
))
(declare-datatypes ((List!69289 0))(
  ( (Nil!69165) (Cons!69165 (h!75613 Context!14198) (t!383306 List!69289)) )
))
(declare-fun zl!173 () List!69289)

(get-info :version)

(assert (=> start!695116 (= res!2910963 ((_ is Cons!69165) zl!173))))

(assert (=> start!695116 e!4287620))

(declare-fun e!4287618 () Bool)

(assert (=> start!695116 e!4287618))

(declare-fun b!7134147 () Bool)

(declare-fun contextDepthTotal!565 (Context!14198) Int)

(declare-fun zipperDepthTotal!594 (List!69289) Int)

(assert (=> b!7134147 (= e!4287620 (< (+ (contextDepthTotal!565 (h!75613 zl!173)) (zipperDepthTotal!594 (t!383306 zl!173))) 0))))

(declare-fun b!7134149 () Bool)

(declare-fun e!4287619 () Bool)

(declare-fun tp!1966558 () Bool)

(assert (=> b!7134149 (= e!4287619 tp!1966558)))

(declare-fun b!7134148 () Bool)

(declare-fun tp!1966559 () Bool)

(declare-fun inv!88326 (Context!14198) Bool)

(assert (=> b!7134148 (= e!4287618 (and (inv!88326 (h!75613 zl!173)) e!4287619 tp!1966559))))

(assert (= (and start!695116 res!2910963) b!7134147))

(assert (= b!7134148 b!7134149))

(assert (= (and start!695116 ((_ is Cons!69165) zl!173)) b!7134148))

(declare-fun m!7850988 () Bool)

(assert (=> b!7134147 m!7850988))

(declare-fun m!7850990 () Bool)

(assert (=> b!7134147 m!7850990))

(declare-fun m!7850992 () Bool)

(assert (=> b!7134148 m!7850992))

(check-sat (not b!7134147) (not b!7134148) (not b!7134149))
(check-sat)
(get-model)

(declare-fun d!2226117 () Bool)

(declare-fun lt!2565335 () Int)

(assert (=> d!2226117 (>= lt!2565335 0)))

(declare-fun e!4287623 () Int)

(assert (=> d!2226117 (= lt!2565335 e!4287623)))

(declare-fun c!1330500 () Bool)

(assert (=> d!2226117 (= c!1330500 ((_ is Cons!69164) (exprs!7599 (h!75613 zl!173))))))

(assert (=> d!2226117 (= (contextDepthTotal!565 (h!75613 zl!173)) lt!2565335)))

(declare-fun b!7134154 () Bool)

(declare-fun regexDepthTotal!336 (Regex!18105) Int)

(assert (=> b!7134154 (= e!4287623 (+ (regexDepthTotal!336 (h!75612 (exprs!7599 (h!75613 zl!173)))) (contextDepthTotal!565 (Context!14199 (t!383305 (exprs!7599 (h!75613 zl!173)))))))))

(declare-fun b!7134155 () Bool)

(assert (=> b!7134155 (= e!4287623 1)))

(assert (= (and d!2226117 c!1330500) b!7134154))

(assert (= (and d!2226117 (not c!1330500)) b!7134155))

(declare-fun m!7850994 () Bool)

(assert (=> b!7134154 m!7850994))

(declare-fun m!7850996 () Bool)

(assert (=> b!7134154 m!7850996))

(assert (=> b!7134147 d!2226117))

(declare-fun d!2226119 () Bool)

(declare-fun lt!2565338 () Int)

(assert (=> d!2226119 (>= lt!2565338 0)))

(declare-fun e!4287626 () Int)

(assert (=> d!2226119 (= lt!2565338 e!4287626)))

(declare-fun c!1330503 () Bool)

(assert (=> d!2226119 (= c!1330503 ((_ is Cons!69165) (t!383306 zl!173)))))

(assert (=> d!2226119 (= (zipperDepthTotal!594 (t!383306 zl!173)) lt!2565338)))

(declare-fun b!7134160 () Bool)

(assert (=> b!7134160 (= e!4287626 (+ (contextDepthTotal!565 (h!75613 (t!383306 zl!173))) (zipperDepthTotal!594 (t!383306 (t!383306 zl!173)))))))

(declare-fun b!7134161 () Bool)

(assert (=> b!7134161 (= e!4287626 0)))

(assert (= (and d!2226119 c!1330503) b!7134160))

(assert (= (and d!2226119 (not c!1330503)) b!7134161))

(declare-fun m!7850998 () Bool)

(assert (=> b!7134160 m!7850998))

(declare-fun m!7851000 () Bool)

(assert (=> b!7134160 m!7851000))

(assert (=> b!7134147 d!2226119))

(declare-fun d!2226121 () Bool)

(declare-fun lambda!433272 () Int)

(declare-fun forall!16953 (List!69288 Int) Bool)

(assert (=> d!2226121 (= (inv!88326 (h!75613 zl!173)) (forall!16953 (exprs!7599 (h!75613 zl!173)) lambda!433272))))

(declare-fun bs!1887080 () Bool)

(assert (= bs!1887080 d!2226121))

(declare-fun m!7851014 () Bool)

(assert (=> bs!1887080 m!7851014))

(assert (=> b!7134148 d!2226121))

(declare-fun b!7134191 () Bool)

(declare-fun e!4287644 () Bool)

(declare-fun tp!1966576 () Bool)

(declare-fun tp!1966577 () Bool)

(assert (=> b!7134191 (= e!4287644 (and tp!1966576 tp!1966577))))

(assert (=> b!7134149 (= tp!1966558 e!4287644)))

(assert (= (and b!7134149 ((_ is Cons!69164) (exprs!7599 (h!75613 zl!173)))) b!7134191))

(declare-fun b!7134199 () Bool)

(declare-fun e!4287650 () Bool)

(declare-fun tp!1966582 () Bool)

(assert (=> b!7134199 (= e!4287650 tp!1966582)))

(declare-fun tp!1966583 () Bool)

(declare-fun b!7134198 () Bool)

(declare-fun e!4287649 () Bool)

(assert (=> b!7134198 (= e!4287649 (and (inv!88326 (h!75613 (t!383306 zl!173))) e!4287650 tp!1966583))))

(assert (=> b!7134148 (= tp!1966559 e!4287649)))

(assert (= b!7134198 b!7134199))

(assert (= (and b!7134148 ((_ is Cons!69165) (t!383306 zl!173))) b!7134198))

(declare-fun m!7851016 () Bool)

(assert (=> b!7134198 m!7851016))

(check-sat (not b!7134154) (not b!7134160) (not b!7134191) (not b!7134199) (not d!2226121) (not b!7134198))
(check-sat)
