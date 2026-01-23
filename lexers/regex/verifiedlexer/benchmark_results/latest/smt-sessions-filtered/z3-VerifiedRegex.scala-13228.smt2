; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!720296 () Bool)

(assert start!720296)

(declare-fun b_free!134317 () Bool)

(declare-fun b_next!135107 () Bool)

(assert (=> start!720296 (= b_free!134317 (not b_next!135107))))

(declare-fun tp!2100722 () Bool)

(declare-fun b_and!351893 () Bool)

(assert (=> start!720296 (= tp!2100722 b_and!351893)))

(declare-fun b!7384301 () Bool)

(declare-fun e!4420024 () Bool)

(declare-datatypes ((B!3861 0))(
  ( (B!3862 (val!29842 Int)) )
))
(declare-datatypes ((List!71841 0))(
  ( (Nil!71717) (Cons!71717 (h!78165 B!3861) (t!386352 List!71841)) )
))
(declare-fun l1!1475 () List!71841)

(declare-fun ListPrimitiveSize!436 (List!71841) Int)

(assert (=> b!7384301 (= e!4420024 (< (ListPrimitiveSize!436 l1!1475) 0))))

(declare-fun b!7384300 () Bool)

(declare-fun res!2977989 () Bool)

(assert (=> b!7384300 (=> (not res!2977989) (not e!4420024))))

(declare-fun l2!1444 () List!71841)

(declare-fun p!2045 () Int)

(declare-fun forall!18127 (List!71841 Int) Bool)

(assert (=> b!7384300 (= res!2977989 (forall!18127 l2!1444 p!2045))))

(declare-fun b!7384302 () Bool)

(declare-fun e!4420026 () Bool)

(declare-fun tp_is_empty!48935 () Bool)

(declare-fun tp!2100721 () Bool)

(assert (=> b!7384302 (= e!4420026 (and tp_is_empty!48935 tp!2100721))))

(declare-fun res!2977990 () Bool)

(assert (=> start!720296 (=> (not res!2977990) (not e!4420024))))

(assert (=> start!720296 (= res!2977990 (forall!18127 l1!1475 p!2045))))

(assert (=> start!720296 e!4420024))

(assert (=> start!720296 e!4420026))

(assert (=> start!720296 tp!2100722))

(declare-fun e!4420025 () Bool)

(assert (=> start!720296 e!4420025))

(declare-fun b!7384303 () Bool)

(declare-fun tp!2100723 () Bool)

(assert (=> b!7384303 (= e!4420025 (and tp_is_empty!48935 tp!2100723))))

(assert (= (and start!720296 res!2977990) b!7384300))

(assert (= (and b!7384300 res!2977989) b!7384301))

(get-info :version)

(assert (= (and start!720296 ((_ is Cons!71717) l1!1475)) b!7384302))

(assert (= (and start!720296 ((_ is Cons!71717) l2!1444)) b!7384303))

(declare-fun m!8033228 () Bool)

(assert (=> b!7384301 m!8033228))

(declare-fun m!8033230 () Bool)

(assert (=> b!7384300 m!8033230))

(declare-fun m!8033232 () Bool)

(assert (=> start!720296 m!8033232))

(check-sat (not start!720296) (not b_next!135107) (not b!7384300) (not b!7384302) (not b!7384303) tp_is_empty!48935 (not b!7384301) b_and!351893)
(check-sat b_and!351893 (not b_next!135107))
(get-model)

(declare-fun d!2286261 () Bool)

(declare-fun res!2978001 () Bool)

(declare-fun e!4420037 () Bool)

(assert (=> d!2286261 (=> res!2978001 e!4420037)))

(assert (=> d!2286261 (= res!2978001 ((_ is Nil!71717) l2!1444))))

(assert (=> d!2286261 (= (forall!18127 l2!1444 p!2045) e!4420037)))

(declare-fun b!7384314 () Bool)

(declare-fun e!4420038 () Bool)

(assert (=> b!7384314 (= e!4420037 e!4420038)))

(declare-fun res!2978002 () Bool)

(assert (=> b!7384314 (=> (not res!2978002) (not e!4420038))))

(declare-fun dynLambda!29541 (Int B!3861) Bool)

(assert (=> b!7384314 (= res!2978002 (dynLambda!29541 p!2045 (h!78165 l2!1444)))))

(declare-fun b!7384315 () Bool)

(assert (=> b!7384315 (= e!4420038 (forall!18127 (t!386352 l2!1444) p!2045))))

(assert (= (and d!2286261 (not res!2978001)) b!7384314))

(assert (= (and b!7384314 res!2978002) b!7384315))

(declare-fun b_lambda!284845 () Bool)

(assert (=> (not b_lambda!284845) (not b!7384314)))

(declare-fun t!386356 () Bool)

(declare-fun tb!262409 () Bool)

(assert (=> (and start!720296 (= p!2045 p!2045) t!386356) tb!262409))

(declare-fun result!354716 () Bool)

(assert (=> tb!262409 (= result!354716 true)))

(assert (=> b!7384314 t!386356))

(declare-fun b_and!351897 () Bool)

(assert (= b_and!351893 (and (=> t!386356 result!354716) b_and!351897)))

(declare-fun m!8033238 () Bool)

(assert (=> b!7384314 m!8033238))

(declare-fun m!8033240 () Bool)

(assert (=> b!7384315 m!8033240))

(assert (=> b!7384300 d!2286261))

(declare-fun d!2286265 () Bool)

(declare-fun lt!2617493 () Int)

(assert (=> d!2286265 (>= lt!2617493 0)))

(declare-fun e!4420046 () Int)

(assert (=> d!2286265 (= lt!2617493 e!4420046)))

(declare-fun c!1372579 () Bool)

(assert (=> d!2286265 (= c!1372579 ((_ is Nil!71717) l1!1475))))

(assert (=> d!2286265 (= (ListPrimitiveSize!436 l1!1475) lt!2617493)))

(declare-fun b!7384328 () Bool)

(assert (=> b!7384328 (= e!4420046 0)))

(declare-fun b!7384329 () Bool)

(assert (=> b!7384329 (= e!4420046 (+ 1 (ListPrimitiveSize!436 (t!386352 l1!1475))))))

(assert (= (and d!2286265 c!1372579) b!7384328))

(assert (= (and d!2286265 (not c!1372579)) b!7384329))

(declare-fun m!8033244 () Bool)

(assert (=> b!7384329 m!8033244))

(assert (=> b!7384301 d!2286265))

(declare-fun d!2286269 () Bool)

(declare-fun res!2978005 () Bool)

(declare-fun e!4420047 () Bool)

(assert (=> d!2286269 (=> res!2978005 e!4420047)))

(assert (=> d!2286269 (= res!2978005 ((_ is Nil!71717) l1!1475))))

(assert (=> d!2286269 (= (forall!18127 l1!1475 p!2045) e!4420047)))

(declare-fun b!7384330 () Bool)

(declare-fun e!4420048 () Bool)

(assert (=> b!7384330 (= e!4420047 e!4420048)))

(declare-fun res!2978006 () Bool)

(assert (=> b!7384330 (=> (not res!2978006) (not e!4420048))))

(assert (=> b!7384330 (= res!2978006 (dynLambda!29541 p!2045 (h!78165 l1!1475)))))

(declare-fun b!7384331 () Bool)

(assert (=> b!7384331 (= e!4420048 (forall!18127 (t!386352 l1!1475) p!2045))))

(assert (= (and d!2286269 (not res!2978005)) b!7384330))

(assert (= (and b!7384330 res!2978006) b!7384331))

(declare-fun b_lambda!284849 () Bool)

(assert (=> (not b_lambda!284849) (not b!7384330)))

(declare-fun t!386360 () Bool)

(declare-fun tb!262413 () Bool)

(assert (=> (and start!720296 (= p!2045 p!2045) t!386360) tb!262413))

(declare-fun result!354722 () Bool)

(assert (=> tb!262413 (= result!354722 true)))

(assert (=> b!7384330 t!386360))

(declare-fun b_and!351901 () Bool)

(assert (= b_and!351897 (and (=> t!386360 result!354722) b_and!351901)))

(declare-fun m!8033250 () Bool)

(assert (=> b!7384330 m!8033250))

(declare-fun m!8033252 () Bool)

(assert (=> b!7384331 m!8033252))

(assert (=> start!720296 d!2286269))

(declare-fun b!7384342 () Bool)

(declare-fun e!4420055 () Bool)

(declare-fun tp!2100730 () Bool)

(assert (=> b!7384342 (= e!4420055 (and tp_is_empty!48935 tp!2100730))))

(assert (=> b!7384303 (= tp!2100723 e!4420055)))

(assert (= (and b!7384303 ((_ is Cons!71717) (t!386352 l2!1444))) b!7384342))

(declare-fun b!7384343 () Bool)

(declare-fun e!4420056 () Bool)

(declare-fun tp!2100731 () Bool)

(assert (=> b!7384343 (= e!4420056 (and tp_is_empty!48935 tp!2100731))))

(assert (=> b!7384302 (= tp!2100721 e!4420056)))

(assert (= (and b!7384302 ((_ is Cons!71717) (t!386352 l1!1475))) b!7384343))

(declare-fun b_lambda!284855 () Bool)

(assert (= b_lambda!284845 (or (and start!720296 b_free!134317) b_lambda!284855)))

(declare-fun b_lambda!284857 () Bool)

(assert (= b_lambda!284849 (or (and start!720296 b_free!134317) b_lambda!284857)))

(check-sat (not b!7384315) b_and!351901 (not b!7384331) (not b_lambda!284855) (not b_lambda!284857) (not b_next!135107) (not b!7384342) (not b!7384329) tp_is_empty!48935 (not b!7384343))
(check-sat b_and!351901 (not b_next!135107))
