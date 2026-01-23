; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!700698 () Bool)

(assert start!700698)

(declare-fun res!2932232 () Bool)

(declare-fun e!4331793 () Bool)

(assert (=> start!700698 (=> (not res!2932232) (not e!4331793))))

(declare-datatypes ((C!37088 0))(
  ( (C!37089 (val!28492 Int)) )
))
(declare-datatypes ((Regex!18407 0))(
  ( (ElementMatch!18407 (c!1340517 C!37088)) (Concat!27252 (regOne!37326 Regex!18407) (regTwo!37326 Regex!18407)) (EmptyExpr!18407) (Star!18407 (reg!18736 Regex!18407)) (EmptyLang!18407) (Union!18407 (regOne!37327 Regex!18407) (regTwo!37327 Regex!18407)) )
))
(declare-datatypes ((List!69934 0))(
  ( (Nil!69810) (Cons!69810 (h!76258 Regex!18407) (t!383965 List!69934)) )
))
(declare-datatypes ((Context!14718 0))(
  ( (Context!14719 (exprs!7859 List!69934)) )
))
(declare-datatypes ((List!69935 0))(
  ( (Nil!69811) (Cons!69811 (h!76259 Context!14718) (t!383966 List!69935)) )
))
(declare-fun zl!166 () List!69935)

(get-info :version)

(assert (=> start!700698 (= res!2932232 ((_ is Cons!69811) zl!166))))

(assert (=> start!700698 e!4331793))

(declare-fun e!4331792 () Bool)

(assert (=> start!700698 e!4331792))

(declare-fun b!7226343 () Bool)

(declare-fun size!41519 (List!69935) Int)

(assert (=> b!7226343 (= e!4331793 (>= (size!41519 (t!383966 zl!166)) (size!41519 zl!166)))))

(declare-fun lt!2571874 () Int)

(declare-fun contextDepth!319 (Context!14718) Int)

(assert (=> b!7226343 (= lt!2571874 (contextDepth!319 (h!76259 zl!166)))))

(declare-fun b!7226345 () Bool)

(declare-fun e!4331791 () Bool)

(declare-fun tp!2032262 () Bool)

(assert (=> b!7226345 (= e!4331791 tp!2032262)))

(declare-fun b!7226344 () Bool)

(declare-fun tp!2032261 () Bool)

(declare-fun inv!89039 (Context!14718) Bool)

(assert (=> b!7226344 (= e!4331792 (and (inv!89039 (h!76259 zl!166)) e!4331791 tp!2032261))))

(assert (= (and start!700698 res!2932232) b!7226343))

(assert (= b!7226344 b!7226345))

(assert (= (and start!700698 ((_ is Cons!69811) zl!166)) b!7226344))

(declare-fun m!7895784 () Bool)

(assert (=> b!7226343 m!7895784))

(declare-fun m!7895786 () Bool)

(assert (=> b!7226343 m!7895786))

(declare-fun m!7895788 () Bool)

(assert (=> b!7226343 m!7895788))

(declare-fun m!7895790 () Bool)

(assert (=> b!7226344 m!7895790))

(check-sat (not b!7226343) (not b!7226344) (not b!7226345))
(check-sat)
(get-model)

(declare-fun d!2244516 () Bool)

(declare-fun lt!2571879 () Int)

(assert (=> d!2244516 (>= lt!2571879 0)))

(declare-fun e!4331798 () Int)

(assert (=> d!2244516 (= lt!2571879 e!4331798)))

(declare-fun c!1340522 () Bool)

(assert (=> d!2244516 (= c!1340522 ((_ is Nil!69811) (t!383966 zl!166)))))

(assert (=> d!2244516 (= (size!41519 (t!383966 zl!166)) lt!2571879)))

(declare-fun b!7226354 () Bool)

(assert (=> b!7226354 (= e!4331798 0)))

(declare-fun b!7226355 () Bool)

(assert (=> b!7226355 (= e!4331798 (+ 1 (size!41519 (t!383966 (t!383966 zl!166)))))))

(assert (= (and d!2244516 c!1340522) b!7226354))

(assert (= (and d!2244516 (not c!1340522)) b!7226355))

(declare-fun m!7895792 () Bool)

(assert (=> b!7226355 m!7895792))

(assert (=> b!7226343 d!2244516))

(declare-fun d!2244518 () Bool)

(declare-fun lt!2571880 () Int)

(assert (=> d!2244518 (>= lt!2571880 0)))

(declare-fun e!4331799 () Int)

(assert (=> d!2244518 (= lt!2571880 e!4331799)))

(declare-fun c!1340523 () Bool)

(assert (=> d!2244518 (= c!1340523 ((_ is Nil!69811) zl!166))))

(assert (=> d!2244518 (= (size!41519 zl!166) lt!2571880)))

(declare-fun b!7226356 () Bool)

(assert (=> b!7226356 (= e!4331799 0)))

(declare-fun b!7226357 () Bool)

(assert (=> b!7226357 (= e!4331799 (+ 1 (size!41519 (t!383966 zl!166))))))

(assert (= (and d!2244518 c!1340523) b!7226356))

(assert (= (and d!2244518 (not c!1340523)) b!7226357))

(assert (=> b!7226357 m!7895784))

(assert (=> b!7226343 d!2244518))

(declare-fun b!7226372 () Bool)

(assert (=> b!7226372 true))

(declare-fun bs!1901945 () Bool)

(declare-fun b!7226374 () Bool)

(assert (= bs!1901945 (and b!7226374 b!7226372)))

(declare-fun lt!2571901 () Int)

(declare-fun lambda!438420 () Int)

(declare-fun lt!2571900 () Int)

(declare-fun lambda!438419 () Int)

(assert (=> bs!1901945 (= (= lt!2571900 lt!2571901) (= lambda!438420 lambda!438419))))

(assert (=> b!7226374 true))

(declare-fun d!2244520 () Bool)

(declare-fun e!4331809 () Bool)

(assert (=> d!2244520 e!4331809))

(declare-fun res!2932235 () Bool)

(assert (=> d!2244520 (=> (not res!2932235) (not e!4331809))))

(assert (=> d!2244520 (= res!2932235 (>= lt!2571900 0))))

(declare-fun e!4331808 () Int)

(assert (=> d!2244520 (= lt!2571900 e!4331808)))

(declare-fun c!1340532 () Bool)

(assert (=> d!2244520 (= c!1340532 ((_ is Cons!69810) (exprs!7859 (h!76259 zl!166))))))

(assert (=> d!2244520 (= (contextDepth!319 (h!76259 zl!166)) lt!2571900)))

(assert (=> b!7226372 (= e!4331808 lt!2571901)))

(declare-fun maxBigInt!0 (Int Int) Int)

(declare-fun regexDepth!401 (Regex!18407) Int)

(assert (=> b!7226372 (= lt!2571901 (maxBigInt!0 (regexDepth!401 (h!76258 (exprs!7859 (h!76259 zl!166)))) (contextDepth!319 (Context!14719 (t!383965 (exprs!7859 (h!76259 zl!166)))))))))

(declare-datatypes ((Unit!163427 0))(
  ( (Unit!163428) )
))
(declare-fun lt!2571902 () Unit!163427)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!143 (List!69934 Int Int) Unit!163427)

(assert (=> b!7226372 (= lt!2571902 (lemmaForallRegexDepthBiggerThanTransitive!143 (t!383965 (exprs!7859 (h!76259 zl!166))) lt!2571901 (contextDepth!319 (Context!14719 (t!383965 (exprs!7859 (h!76259 zl!166)))))))))

(declare-fun forall!17228 (List!69934 Int) Bool)

(assert (=> b!7226372 (forall!17228 (t!383965 (exprs!7859 (h!76259 zl!166))) lambda!438419)))

(declare-fun lt!2571899 () Unit!163427)

(assert (=> b!7226372 (= lt!2571899 lt!2571902)))

(declare-fun b!7226373 () Bool)

(assert (=> b!7226373 (= e!4331808 0)))

(assert (=> b!7226374 (= e!4331809 (forall!17228 (exprs!7859 (h!76259 zl!166)) lambda!438420))))

(assert (= (and d!2244520 c!1340532) b!7226372))

(assert (= (and d!2244520 (not c!1340532)) b!7226373))

(assert (= (and d!2244520 res!2932235) b!7226374))

(declare-fun m!7895796 () Bool)

(assert (=> b!7226372 m!7895796))

(declare-fun m!7895798 () Bool)

(assert (=> b!7226372 m!7895798))

(assert (=> b!7226372 m!7895796))

(declare-fun m!7895800 () Bool)

(assert (=> b!7226372 m!7895800))

(declare-fun m!7895802 () Bool)

(assert (=> b!7226372 m!7895802))

(assert (=> b!7226372 m!7895802))

(assert (=> b!7226372 m!7895796))

(declare-fun m!7895804 () Bool)

(assert (=> b!7226372 m!7895804))

(declare-fun m!7895806 () Bool)

(assert (=> b!7226374 m!7895806))

(assert (=> b!7226343 d!2244520))

(declare-fun bs!1901946 () Bool)

(declare-fun d!2244526 () Bool)

(assert (= bs!1901946 (and d!2244526 b!7226372)))

(declare-fun lambda!438423 () Int)

(assert (=> bs!1901946 (not (= lambda!438423 lambda!438419))))

(declare-fun bs!1901947 () Bool)

(assert (= bs!1901947 (and d!2244526 b!7226374)))

(assert (=> bs!1901947 (not (= lambda!438423 lambda!438420))))

(assert (=> d!2244526 (= (inv!89039 (h!76259 zl!166)) (forall!17228 (exprs!7859 (h!76259 zl!166)) lambda!438423))))

(declare-fun bs!1901948 () Bool)

(assert (= bs!1901948 d!2244526))

(declare-fun m!7895808 () Bool)

(assert (=> bs!1901948 m!7895808))

(assert (=> b!7226344 d!2244526))

(declare-fun b!7226384 () Bool)

(declare-fun e!4331815 () Bool)

(declare-fun tp!2032267 () Bool)

(assert (=> b!7226384 (= e!4331815 tp!2032267)))

(declare-fun tp!2032268 () Bool)

(declare-fun e!4331814 () Bool)

(declare-fun b!7226383 () Bool)

(assert (=> b!7226383 (= e!4331814 (and (inv!89039 (h!76259 (t!383966 zl!166))) e!4331815 tp!2032268))))

(assert (=> b!7226344 (= tp!2032261 e!4331814)))

(assert (= b!7226383 b!7226384))

(assert (= (and b!7226344 ((_ is Cons!69811) (t!383966 zl!166))) b!7226383))

(declare-fun m!7895810 () Bool)

(assert (=> b!7226383 m!7895810))

(declare-fun b!7226389 () Bool)

(declare-fun e!4331818 () Bool)

(declare-fun tp!2032273 () Bool)

(declare-fun tp!2032274 () Bool)

(assert (=> b!7226389 (= e!4331818 (and tp!2032273 tp!2032274))))

(assert (=> b!7226345 (= tp!2032262 e!4331818)))

(assert (= (and b!7226345 ((_ is Cons!69810) (exprs!7859 (h!76259 zl!166)))) b!7226389))

(check-sat (not b!7226384) (not b!7226355) (not d!2244526) (not b!7226372) (not b!7226389) (not b!7226374) (not b!7226357) (not b!7226383))
(check-sat)
