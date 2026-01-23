; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!720308 () Bool)

(assert start!720308)

(declare-fun b_free!134321 () Bool)

(declare-fun b_next!135111 () Bool)

(assert (=> start!720308 (= b_free!134321 (not b_next!135111))))

(declare-fun tp!2100749 () Bool)

(declare-fun b_and!351905 () Bool)

(assert (=> start!720308 (= tp!2100749 b_and!351905)))

(declare-fun b!7384369 () Bool)

(declare-fun e!4420072 () Bool)

(declare-fun tp_is_empty!48939 () Bool)

(declare-fun tp!2100747 () Bool)

(assert (=> b!7384369 (= e!4420072 (and tp_is_empty!48939 tp!2100747))))

(declare-fun b!7384370 () Bool)

(declare-fun res!2978023 () Bool)

(declare-fun e!4420073 () Bool)

(assert (=> b!7384370 (=> (not res!2978023) (not e!4420073))))

(declare-datatypes ((B!3865 0))(
  ( (B!3866 (val!29844 Int)) )
))
(declare-datatypes ((List!71843 0))(
  ( (Nil!71719) (Cons!71719 (h!78167 B!3865) (t!386362 List!71843)) )
))
(declare-fun l2!1444 () List!71843)

(declare-fun p!2045 () Int)

(declare-fun forall!18129 (List!71843 Int) Bool)

(assert (=> b!7384370 (= res!2978023 (forall!18129 l2!1444 p!2045))))

(declare-fun res!2978022 () Bool)

(assert (=> start!720308 (=> (not res!2978022) (not e!4420073))))

(declare-fun l1!1475 () List!71843)

(assert (=> start!720308 (= res!2978022 (forall!18129 l1!1475 p!2045))))

(assert (=> start!720308 e!4420073))

(assert (=> start!720308 e!4420072))

(assert (=> start!720308 tp!2100749))

(declare-fun e!4420074 () Bool)

(assert (=> start!720308 e!4420074))

(declare-fun b!7384371 () Bool)

(declare-fun ListPrimitiveSize!438 (List!71843) Int)

(assert (=> b!7384371 (= e!4420073 (>= (ListPrimitiveSize!438 (t!386362 l1!1475)) (ListPrimitiveSize!438 l1!1475)))))

(declare-fun b!7384372 () Bool)

(declare-fun tp!2100748 () Bool)

(assert (=> b!7384372 (= e!4420074 (and tp_is_empty!48939 tp!2100748))))

(declare-fun b!7384373 () Bool)

(declare-fun res!2978024 () Bool)

(assert (=> b!7384373 (=> (not res!2978024) (not e!4420073))))

(get-info :version)

(assert (=> b!7384373 (= res!2978024 ((_ is Cons!71719) l1!1475))))

(assert (= (and start!720308 res!2978022) b!7384370))

(assert (= (and b!7384370 res!2978023) b!7384373))

(assert (= (and b!7384373 res!2978024) b!7384371))

(assert (= (and start!720308 ((_ is Cons!71719) l1!1475)) b!7384369))

(assert (= (and start!720308 ((_ is Cons!71719) l2!1444)) b!7384372))

(declare-fun m!8033262 () Bool)

(assert (=> b!7384370 m!8033262))

(declare-fun m!8033264 () Bool)

(assert (=> start!720308 m!8033264))

(declare-fun m!8033266 () Bool)

(assert (=> b!7384371 m!8033266))

(declare-fun m!8033268 () Bool)

(assert (=> b!7384371 m!8033268))

(check-sat (not start!720308) tp_is_empty!48939 (not b!7384371) (not b!7384369) (not b!7384370) (not b!7384372) b_and!351905 (not b_next!135111))
(check-sat b_and!351905 (not b_next!135111))
(get-model)

(declare-fun d!2286274 () Bool)

(declare-fun res!2978037 () Bool)

(declare-fun e!4420087 () Bool)

(assert (=> d!2286274 (=> res!2978037 e!4420087)))

(assert (=> d!2286274 (= res!2978037 ((_ is Nil!71719) l2!1444))))

(assert (=> d!2286274 (= (forall!18129 l2!1444 p!2045) e!4420087)))

(declare-fun b!7384388 () Bool)

(declare-fun e!4420088 () Bool)

(assert (=> b!7384388 (= e!4420087 e!4420088)))

(declare-fun res!2978038 () Bool)

(assert (=> b!7384388 (=> (not res!2978038) (not e!4420088))))

(declare-fun dynLambda!29543 (Int B!3865) Bool)

(assert (=> b!7384388 (= res!2978038 (dynLambda!29543 p!2045 (h!78167 l2!1444)))))

(declare-fun b!7384389 () Bool)

(assert (=> b!7384389 (= e!4420088 (forall!18129 (t!386362 l2!1444) p!2045))))

(assert (= (and d!2286274 (not res!2978037)) b!7384388))

(assert (= (and b!7384388 res!2978038) b!7384389))

(declare-fun b_lambda!284863 () Bool)

(assert (=> (not b_lambda!284863) (not b!7384388)))

(declare-fun t!386368 () Bool)

(declare-fun tb!262419 () Bool)

(assert (=> (and start!720308 (= p!2045 p!2045) t!386368) tb!262419))

(declare-fun result!354730 () Bool)

(assert (=> tb!262419 (= result!354730 true)))

(assert (=> b!7384388 t!386368))

(declare-fun b_and!351911 () Bool)

(assert (= b_and!351905 (and (=> t!386368 result!354730) b_and!351911)))

(declare-fun m!8033278 () Bool)

(assert (=> b!7384388 m!8033278))

(declare-fun m!8033280 () Bool)

(assert (=> b!7384389 m!8033280))

(assert (=> b!7384370 d!2286274))

(declare-fun d!2286280 () Bool)

(declare-fun lt!2617500 () Int)

(assert (=> d!2286280 (>= lt!2617500 0)))

(declare-fun e!4420099 () Int)

(assert (=> d!2286280 (= lt!2617500 e!4420099)))

(declare-fun c!1372586 () Bool)

(assert (=> d!2286280 (= c!1372586 ((_ is Nil!71719) (t!386362 l1!1475)))))

(assert (=> d!2286280 (= (ListPrimitiveSize!438 (t!386362 l1!1475)) lt!2617500)))

(declare-fun b!7384406 () Bool)

(assert (=> b!7384406 (= e!4420099 0)))

(declare-fun b!7384407 () Bool)

(assert (=> b!7384407 (= e!4420099 (+ 1 (ListPrimitiveSize!438 (t!386362 (t!386362 l1!1475)))))))

(assert (= (and d!2286280 c!1372586) b!7384406))

(assert (= (and d!2286280 (not c!1372586)) b!7384407))

(declare-fun m!8033284 () Bool)

(assert (=> b!7384407 m!8033284))

(assert (=> b!7384371 d!2286280))

(declare-fun d!2286284 () Bool)

(declare-fun lt!2617501 () Int)

(assert (=> d!2286284 (>= lt!2617501 0)))

(declare-fun e!4420100 () Int)

(assert (=> d!2286284 (= lt!2617501 e!4420100)))

(declare-fun c!1372587 () Bool)

(assert (=> d!2286284 (= c!1372587 ((_ is Nil!71719) l1!1475))))

(assert (=> d!2286284 (= (ListPrimitiveSize!438 l1!1475) lt!2617501)))

(declare-fun b!7384408 () Bool)

(assert (=> b!7384408 (= e!4420100 0)))

(declare-fun b!7384409 () Bool)

(assert (=> b!7384409 (= e!4420100 (+ 1 (ListPrimitiveSize!438 (t!386362 l1!1475))))))

(assert (= (and d!2286284 c!1372587) b!7384408))

(assert (= (and d!2286284 (not c!1372587)) b!7384409))

(assert (=> b!7384409 m!8033266))

(assert (=> b!7384371 d!2286284))

(declare-fun d!2286286 () Bool)

(declare-fun res!2978039 () Bool)

(declare-fun e!4420101 () Bool)

(assert (=> d!2286286 (=> res!2978039 e!4420101)))

(assert (=> d!2286286 (= res!2978039 ((_ is Nil!71719) l1!1475))))

(assert (=> d!2286286 (= (forall!18129 l1!1475 p!2045) e!4420101)))

(declare-fun b!7384410 () Bool)

(declare-fun e!4420102 () Bool)

(assert (=> b!7384410 (= e!4420101 e!4420102)))

(declare-fun res!2978040 () Bool)

(assert (=> b!7384410 (=> (not res!2978040) (not e!4420102))))

(assert (=> b!7384410 (= res!2978040 (dynLambda!29543 p!2045 (h!78167 l1!1475)))))

(declare-fun b!7384411 () Bool)

(assert (=> b!7384411 (= e!4420102 (forall!18129 (t!386362 l1!1475) p!2045))))

(assert (= (and d!2286286 (not res!2978039)) b!7384410))

(assert (= (and b!7384410 res!2978040) b!7384411))

(declare-fun b_lambda!284869 () Bool)

(assert (=> (not b_lambda!284869) (not b!7384410)))

(declare-fun t!386370 () Bool)

(declare-fun tb!262421 () Bool)

(assert (=> (and start!720308 (= p!2045 p!2045) t!386370) tb!262421))

(declare-fun result!354734 () Bool)

(assert (=> tb!262421 (= result!354734 true)))

(assert (=> b!7384410 t!386370))

(declare-fun b_and!351913 () Bool)

(assert (= b_and!351911 (and (=> t!386370 result!354734) b_and!351913)))

(declare-fun m!8033286 () Bool)

(assert (=> b!7384410 m!8033286))

(declare-fun m!8033288 () Bool)

(assert (=> b!7384411 m!8033288))

(assert (=> start!720308 d!2286286))

(declare-fun b!7384416 () Bool)

(declare-fun e!4420105 () Bool)

(declare-fun tp!2100756 () Bool)

(assert (=> b!7384416 (= e!4420105 (and tp_is_empty!48939 tp!2100756))))

(assert (=> b!7384369 (= tp!2100747 e!4420105)))

(assert (= (and b!7384369 ((_ is Cons!71719) (t!386362 l1!1475))) b!7384416))

(declare-fun b!7384417 () Bool)

(declare-fun e!4420106 () Bool)

(declare-fun tp!2100757 () Bool)

(assert (=> b!7384417 (= e!4420106 (and tp_is_empty!48939 tp!2100757))))

(assert (=> b!7384372 (= tp!2100748 e!4420106)))

(assert (= (and b!7384372 ((_ is Cons!71719) (t!386362 l2!1444))) b!7384417))

(declare-fun b_lambda!284871 () Bool)

(assert (= b_lambda!284869 (or (and start!720308 b_free!134321) b_lambda!284871)))

(declare-fun b_lambda!284873 () Bool)

(assert (= b_lambda!284863 (or (and start!720308 b_free!134321) b_lambda!284873)))

(check-sat (not b!7384407) (not b!7384416) (not b_lambda!284873) (not b!7384409) (not b_next!135111) tp_is_empty!48939 (not b!7384417) (not b_lambda!284871) (not b!7384389) b_and!351913 (not b!7384411))
(check-sat b_and!351913 (not b_next!135111))
