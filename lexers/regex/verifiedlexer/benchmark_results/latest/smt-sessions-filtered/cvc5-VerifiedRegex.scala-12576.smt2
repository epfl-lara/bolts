; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!697354 () Bool)

(assert start!697354)

(declare-fun bs!1889686 () Bool)

(declare-fun b!7154444 () Bool)

(assert (= bs!1889686 (and b!7154444 start!697354)))

(declare-fun lambda!436274 () Int)

(declare-fun lambda!436273 () Int)

(assert (=> bs!1889686 (not (= lambda!436274 lambda!436273))))

(declare-fun b!7154436 () Bool)

(declare-fun e!4298029 () Bool)

(declare-datatypes ((C!36794 0))(
  ( (C!36795 (val!28345 Int)) )
))
(declare-datatypes ((Regex!18260 0))(
  ( (ElementMatch!18260 (c!1333423 C!36794)) (Concat!27105 (regOne!37032 Regex!18260) (regTwo!37032 Regex!18260)) (EmptyExpr!18260) (Star!18260 (reg!18589 Regex!18260)) (EmptyLang!18260) (Union!18260 (regOne!37033 Regex!18260) (regTwo!37033 Regex!18260)) )
))
(declare-datatypes ((List!69564 0))(
  ( (Nil!69440) (Cons!69440 (h!75888 Regex!18260) (t!383581 List!69564)) )
))
(declare-fun l!9132 () List!69564)

(declare-fun isEmpty!40128 (List!69564) Bool)

(assert (=> b!7154436 (= e!4298029 (not (isEmpty!40128 (t!383581 l!9132))))))

(declare-fun b!7154437 () Bool)

(declare-fun e!4298030 () Bool)

(declare-fun tp!1977712 () Bool)

(declare-fun tp!1977706 () Bool)

(assert (=> b!7154437 (= e!4298030 (and tp!1977712 tp!1977706))))

(declare-fun b!7154438 () Bool)

(declare-fun res!2917466 () Bool)

(declare-fun e!4298032 () Bool)

(assert (=> b!7154438 (=> (not res!2917466) (not e!4298032))))

(declare-fun r!13749 () Regex!18260)

(declare-fun generalisedUnion!2723 (List!69564) Regex!18260)

(assert (=> b!7154438 (= res!2917466 (= r!13749 (generalisedUnion!2723 l!9132)))))

(declare-fun b!7154439 () Bool)

(declare-fun tp_is_empty!46153 () Bool)

(assert (=> b!7154439 (= e!4298030 tp_is_empty!46153)))

(declare-fun b!7154440 () Bool)

(declare-fun res!2917468 () Bool)

(assert (=> b!7154440 (=> (not res!2917468) (not e!4298032))))

(assert (=> b!7154440 (= res!2917468 (= (regTwo!37033 r!13749) (generalisedUnion!2723 (t!383581 l!9132))))))

(declare-fun res!2917463 () Bool)

(assert (=> start!697354 (=> (not res!2917463) (not e!4298032))))

(declare-fun forall!17100 (List!69564 Int) Bool)

(assert (=> start!697354 (= res!2917463 (forall!17100 l!9132 lambda!436273))))

(assert (=> start!697354 e!4298032))

(declare-fun e!4298031 () Bool)

(assert (=> start!697354 e!4298031))

(assert (=> start!697354 e!4298030))

(declare-fun b!7154441 () Bool)

(declare-fun tp!1977708 () Bool)

(assert (=> b!7154441 (= e!4298030 tp!1977708)))

(declare-fun b!7154442 () Bool)

(declare-fun res!2917464 () Bool)

(assert (=> b!7154442 (=> (not res!2917464) (not e!4298032))))

(assert (=> b!7154442 (= res!2917464 e!4298029)))

(declare-fun res!2917467 () Bool)

(assert (=> b!7154442 (=> res!2917467 e!4298029)))

(assert (=> b!7154442 (= res!2917467 (not (is-Cons!69440 l!9132)))))

(declare-fun b!7154443 () Bool)

(declare-fun tp!1977710 () Bool)

(declare-fun tp!1977711 () Bool)

(assert (=> b!7154443 (= e!4298031 (and tp!1977710 tp!1977711))))

(declare-fun nullable!7737 (Regex!18260) Bool)

(declare-fun exists!4048 (List!69564 Int) Bool)

(assert (=> b!7154444 (= e!4298032 (not (= (nullable!7737 r!13749) (exists!4048 l!9132 lambda!436274))))))

(assert (=> b!7154444 (= (nullable!7737 (regTwo!37033 r!13749)) (exists!4048 (t!383581 l!9132) lambda!436274))))

(declare-datatypes ((Unit!163295 0))(
  ( (Unit!163296) )
))
(declare-fun lt!2569151 () Unit!163295)

(declare-fun nullableGenUnionSpec!87 (Regex!18260 List!69564) Unit!163295)

(assert (=> b!7154444 (= lt!2569151 (nullableGenUnionSpec!87 (regTwo!37033 r!13749) (t!383581 l!9132)))))

(declare-fun b!7154445 () Bool)

(declare-fun res!2917465 () Bool)

(assert (=> b!7154445 (=> (not res!2917465) (not e!4298032))))

(assert (=> b!7154445 (= res!2917465 (forall!17100 (t!383581 l!9132) lambda!436273))))

(declare-fun b!7154446 () Bool)

(declare-fun tp!1977709 () Bool)

(declare-fun tp!1977707 () Bool)

(assert (=> b!7154446 (= e!4298030 (and tp!1977709 tp!1977707))))

(declare-fun b!7154447 () Bool)

(declare-fun res!2917462 () Bool)

(assert (=> b!7154447 (=> (not res!2917462) (not e!4298032))))

(assert (=> b!7154447 (= res!2917462 (and (is-Cons!69440 l!9132) (is-Union!18260 r!13749)))))

(assert (= (and start!697354 res!2917463) b!7154438))

(assert (= (and b!7154438 res!2917466) b!7154442))

(assert (= (and b!7154442 (not res!2917467)) b!7154436))

(assert (= (and b!7154442 res!2917464) b!7154447))

(assert (= (and b!7154447 res!2917462) b!7154445))

(assert (= (and b!7154445 res!2917465) b!7154440))

(assert (= (and b!7154440 res!2917468) b!7154444))

(assert (= (and start!697354 (is-Cons!69440 l!9132)) b!7154443))

(assert (= (and start!697354 (is-ElementMatch!18260 r!13749)) b!7154439))

(assert (= (and start!697354 (is-Concat!27105 r!13749)) b!7154437))

(assert (= (and start!697354 (is-Star!18260 r!13749)) b!7154441))

(assert (= (and start!697354 (is-Union!18260 r!13749)) b!7154446))

(declare-fun m!7862148 () Bool)

(assert (=> start!697354 m!7862148))

(declare-fun m!7862150 () Bool)

(assert (=> b!7154444 m!7862150))

(declare-fun m!7862152 () Bool)

(assert (=> b!7154444 m!7862152))

(declare-fun m!7862154 () Bool)

(assert (=> b!7154444 m!7862154))

(declare-fun m!7862156 () Bool)

(assert (=> b!7154444 m!7862156))

(declare-fun m!7862158 () Bool)

(assert (=> b!7154444 m!7862158))

(declare-fun m!7862160 () Bool)

(assert (=> b!7154436 m!7862160))

(declare-fun m!7862162 () Bool)

(assert (=> b!7154440 m!7862162))

(declare-fun m!7862164 () Bool)

(assert (=> b!7154438 m!7862164))

(declare-fun m!7862166 () Bool)

(assert (=> b!7154445 m!7862166))

(push 1)

(assert (not b!7154440))

(assert (not b!7154438))

(assert (not b!7154436))

(assert (not start!697354))

(assert (not b!7154443))

(assert (not b!7154445))

(assert (not b!7154446))

(assert (not b!7154437))

(assert (not b!7154444))

(assert (not b!7154441))

(assert tp_is_empty!46153)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229315 () Bool)

(assert (=> d!2229315 (= (isEmpty!40128 (t!383581 l!9132)) (is-Nil!69440 (t!383581 l!9132)))))

(assert (=> b!7154436 d!2229315))

(declare-fun d!2229317 () Bool)

(declare-fun res!2917494 () Bool)

(declare-fun e!4298049 () Bool)

(assert (=> d!2229317 (=> res!2917494 e!4298049)))

(assert (=> d!2229317 (= res!2917494 (is-Nil!69440 (t!383581 l!9132)))))

(assert (=> d!2229317 (= (forall!17100 (t!383581 l!9132) lambda!436273) e!4298049)))

(declare-fun b!7154488 () Bool)

(declare-fun e!4298050 () Bool)

(assert (=> b!7154488 (= e!4298049 e!4298050)))

(declare-fun res!2917495 () Bool)

(assert (=> b!7154488 (=> (not res!2917495) (not e!4298050))))

(declare-fun dynLambda!28295 (Int Regex!18260) Bool)

(assert (=> b!7154488 (= res!2917495 (dynLambda!28295 lambda!436273 (h!75888 (t!383581 l!9132))))))

(declare-fun b!7154489 () Bool)

(assert (=> b!7154489 (= e!4298050 (forall!17100 (t!383581 (t!383581 l!9132)) lambda!436273))))

(assert (= (and d!2229317 (not res!2917494)) b!7154488))

(assert (= (and b!7154488 res!2917495) b!7154489))

(declare-fun b_lambda!273215 () Bool)

(assert (=> (not b_lambda!273215) (not b!7154488)))

(declare-fun m!7862188 () Bool)

(assert (=> b!7154488 m!7862188))

(declare-fun m!7862190 () Bool)

(assert (=> b!7154489 m!7862190))

(assert (=> b!7154445 d!2229317))

(declare-fun bs!1889688 () Bool)

(declare-fun d!2229319 () Bool)

(assert (= bs!1889688 (and d!2229319 start!697354)))

(declare-fun lambda!436287 () Int)

(assert (=> bs!1889688 (= lambda!436287 lambda!436273)))

(declare-fun bs!1889689 () Bool)

(assert (= bs!1889689 (and d!2229319 b!7154444)))

(assert (=> bs!1889689 (not (= lambda!436287 lambda!436274))))

(declare-fun e!4298066 () Bool)

(assert (=> d!2229319 e!4298066))

(declare-fun res!2917501 () Bool)

(assert (=> d!2229319 (=> (not res!2917501) (not e!4298066))))

(declare-fun lt!2569157 () Regex!18260)

(declare-fun validRegex!9408 (Regex!18260) Bool)

(assert (=> d!2229319 (= res!2917501 (validRegex!9408 lt!2569157))))

(declare-fun e!4298068 () Regex!18260)

(assert (=> d!2229319 (= lt!2569157 e!4298068)))

(declare-fun c!1333434 () Bool)

(declare-fun e!4298063 () Bool)

(assert (=> d!2229319 (= c!1333434 e!4298063)))

(declare-fun res!2917500 () Bool)

(assert (=> d!2229319 (=> (not res!2917500) (not e!4298063))))

(assert (=> d!2229319 (= res!2917500 (is-Cons!69440 (t!383581 l!9132)))))

(assert (=> d!2229319 (forall!17100 (t!383581 l!9132) lambda!436287)))

(assert (=> d!2229319 (= (generalisedUnion!2723 (t!383581 l!9132)) lt!2569157)))

(declare-fun b!7154510 () Bool)

(declare-fun e!4298065 () Bool)

(declare-fun isUnion!1552 (Regex!18260) Bool)

(assert (=> b!7154510 (= e!4298065 (isUnion!1552 lt!2569157))))

(declare-fun b!7154511 () Bool)

(assert (=> b!7154511 (= e!4298068 (h!75888 (t!383581 l!9132)))))

(declare-fun b!7154512 () Bool)

(assert (=> b!7154512 (= e!4298063 (isEmpty!40128 (t!383581 (t!383581 l!9132))))))

(declare-fun b!7154513 () Bool)

(declare-fun head!14560 (List!69564) Regex!18260)

(assert (=> b!7154513 (= e!4298065 (= lt!2569157 (head!14560 (t!383581 l!9132))))))

(declare-fun b!7154514 () Bool)

(declare-fun e!4298064 () Bool)

(assert (=> b!7154514 (= e!4298064 e!4298065)))

(declare-fun c!1333433 () Bool)

(declare-fun tail!14029 (List!69564) List!69564)

(assert (=> b!7154514 (= c!1333433 (isEmpty!40128 (tail!14029 (t!383581 l!9132))))))

(declare-fun b!7154515 () Bool)

(declare-fun e!4298067 () Regex!18260)

(assert (=> b!7154515 (= e!4298067 EmptyLang!18260)))

(declare-fun b!7154516 () Bool)

(declare-fun isEmptyLang!2124 (Regex!18260) Bool)

(assert (=> b!7154516 (= e!4298064 (isEmptyLang!2124 lt!2569157))))

(declare-fun b!7154517 () Bool)

(assert (=> b!7154517 (= e!4298067 (Union!18260 (h!75888 (t!383581 l!9132)) (generalisedUnion!2723 (t!383581 (t!383581 l!9132)))))))

(declare-fun b!7154518 () Bool)

(assert (=> b!7154518 (= e!4298068 e!4298067)))

(declare-fun c!1333435 () Bool)

(assert (=> b!7154518 (= c!1333435 (is-Cons!69440 (t!383581 l!9132)))))

(declare-fun b!7154519 () Bool)

(assert (=> b!7154519 (= e!4298066 e!4298064)))

(declare-fun c!1333436 () Bool)

(assert (=> b!7154519 (= c!1333436 (isEmpty!40128 (t!383581 l!9132)))))

(assert (= (and d!2229319 res!2917500) b!7154512))

(assert (= (and d!2229319 c!1333434) b!7154511))

(assert (= (and d!2229319 (not c!1333434)) b!7154518))

(assert (= (and b!7154518 c!1333435) b!7154517))

(assert (= (and b!7154518 (not c!1333435)) b!7154515))

(assert (= (and d!2229319 res!2917501) b!7154519))

(assert (= (and b!7154519 c!1333436) b!7154516))

(assert (= (and b!7154519 (not c!1333436)) b!7154514))

(assert (= (and b!7154514 c!1333433) b!7154513))

(assert (= (and b!7154514 (not c!1333433)) b!7154510))

(declare-fun m!7862192 () Bool)

(assert (=> b!7154517 m!7862192))

(declare-fun m!7862194 () Bool)

(assert (=> b!7154512 m!7862194))

(declare-fun m!7862196 () Bool)

(assert (=> b!7154516 m!7862196))

(declare-fun m!7862198 () Bool)

(assert (=> b!7154514 m!7862198))

(assert (=> b!7154514 m!7862198))

(declare-fun m!7862200 () Bool)

(assert (=> b!7154514 m!7862200))

(declare-fun m!7862202 () Bool)

(assert (=> d!2229319 m!7862202))

(declare-fun m!7862204 () Bool)

(assert (=> d!2229319 m!7862204))

(declare-fun m!7862206 () Bool)

(assert (=> b!7154510 m!7862206))

(declare-fun m!7862208 () Bool)

(assert (=> b!7154513 m!7862208))

(assert (=> b!7154519 m!7862160))

(assert (=> b!7154440 d!2229319))

(declare-fun d!2229323 () Bool)

(declare-fun res!2917502 () Bool)

(declare-fun e!4298069 () Bool)

(assert (=> d!2229323 (=> res!2917502 e!4298069)))

(assert (=> d!2229323 (= res!2917502 (is-Nil!69440 l!9132))))

(assert (=> d!2229323 (= (forall!17100 l!9132 lambda!436273) e!4298069)))

(declare-fun b!7154520 () Bool)

(declare-fun e!4298070 () Bool)

(assert (=> b!7154520 (= e!4298069 e!4298070)))

(declare-fun res!2917503 () Bool)

(assert (=> b!7154520 (=> (not res!2917503) (not e!4298070))))

(assert (=> b!7154520 (= res!2917503 (dynLambda!28295 lambda!436273 (h!75888 l!9132)))))

(declare-fun b!7154521 () Bool)

(assert (=> b!7154521 (= e!4298070 (forall!17100 (t!383581 l!9132) lambda!436273))))

(assert (= (and d!2229323 (not res!2917502)) b!7154520))

(assert (= (and b!7154520 res!2917503) b!7154521))

(declare-fun b_lambda!273217 () Bool)

(assert (=> (not b_lambda!273217) (not b!7154520)))

(declare-fun m!7862210 () Bool)

(assert (=> b!7154520 m!7862210))

(assert (=> b!7154521 m!7862166))

(assert (=> start!697354 d!2229323))

(declare-fun bs!1889690 () Bool)

(declare-fun d!2229325 () Bool)

(assert (= bs!1889690 (and d!2229325 start!697354)))

(declare-fun lambda!436296 () Int)

(assert (=> bs!1889690 (= lambda!436296 lambda!436273)))

(declare-fun bs!1889691 () Bool)

(assert (= bs!1889691 (and d!2229325 b!7154444)))

(assert (=> bs!1889691 (not (= lambda!436296 lambda!436274))))

(declare-fun bs!1889692 () Bool)

(assert (= bs!1889692 (and d!2229325 d!2229319)))

(assert (=> bs!1889692 (= lambda!436296 lambda!436287)))

(declare-fun lambda!436298 () Int)

(assert (=> bs!1889690 (not (= lambda!436298 lambda!436273))))

(assert (=> bs!1889691 (= lambda!436298 lambda!436274)))

(assert (=> bs!1889692 (not (= lambda!436298 lambda!436287))))

(declare-fun bs!1889694 () Bool)

(assert (= bs!1889694 d!2229325))

(assert (=> bs!1889694 (not (= lambda!436298 lambda!436296))))

(assert (=> d!2229325 (= (nullable!7737 (regTwo!37033 r!13749)) (exists!4048 (t!383581 l!9132) lambda!436298))))

(declare-fun lt!2569162 () Unit!163295)

(declare-fun choose!55305 (Regex!18260 List!69564) Unit!163295)

(assert (=> d!2229325 (= lt!2569162 (choose!55305 (regTwo!37033 r!13749) (t!383581 l!9132)))))

(assert (=> d!2229325 (forall!17100 (t!383581 l!9132) lambda!436296)))

(assert (=> d!2229325 (= (nullableGenUnionSpec!87 (regTwo!37033 r!13749) (t!383581 l!9132)) lt!2569162)))

(assert (=> bs!1889694 m!7862154))

(declare-fun m!7862212 () Bool)

(assert (=> bs!1889694 m!7862212))

(declare-fun m!7862214 () Bool)

(assert (=> bs!1889694 m!7862214))

(declare-fun m!7862216 () Bool)

(assert (=> bs!1889694 m!7862216))

(assert (=> b!7154444 d!2229325))

(declare-fun d!2229327 () Bool)

(declare-fun nullableFct!3015 (Regex!18260) Bool)

(assert (=> d!2229327 (= (nullable!7737 (regTwo!37033 r!13749)) (nullableFct!3015 (regTwo!37033 r!13749)))))

(declare-fun bs!1889697 () Bool)

(assert (= bs!1889697 d!2229327))

(declare-fun m!7862218 () Bool)

(assert (=> bs!1889697 m!7862218))

(assert (=> b!7154444 d!2229327))

(declare-fun bs!1889699 () Bool)

(declare-fun d!2229329 () Bool)

(assert (= bs!1889699 (and d!2229329 b!7154444)))

(declare-fun lambda!436302 () Int)

(assert (=> bs!1889699 (not (= lambda!436302 lambda!436274))))

(declare-fun bs!1889700 () Bool)

(assert (= bs!1889700 (and d!2229329 d!2229325)))

(assert (=> bs!1889700 (not (= lambda!436302 lambda!436298))))

(declare-fun bs!1889701 () Bool)

(assert (= bs!1889701 (and d!2229329 start!697354)))

(assert (=> bs!1889701 (not (= lambda!436302 lambda!436273))))

(assert (=> bs!1889700 (not (= lambda!436302 lambda!436296))))

(declare-fun bs!1889702 () Bool)

(assert (= bs!1889702 (and d!2229329 d!2229319)))

(assert (=> bs!1889702 (not (= lambda!436302 lambda!436287))))

(assert (=> d!2229329 true))

(declare-fun order!28627 () Int)

(declare-fun dynLambda!28296 (Int Int) Int)

(assert (=> d!2229329 (< (dynLambda!28296 order!28627 lambda!436274) (dynLambda!28296 order!28627 lambda!436302))))

(assert (=> d!2229329 (= (exists!4048 l!9132 lambda!436274) (not (forall!17100 l!9132 lambda!436302)))))

(declare-fun bs!1889703 () Bool)

(assert (= bs!1889703 d!2229329))

(declare-fun m!7862228 () Bool)

(assert (=> bs!1889703 m!7862228))

(assert (=> b!7154444 d!2229329))

(declare-fun bs!1889704 () Bool)

(declare-fun d!2229335 () Bool)

(assert (= bs!1889704 (and d!2229335 b!7154444)))

(declare-fun lambda!436303 () Int)

(assert (=> bs!1889704 (not (= lambda!436303 lambda!436274))))

(declare-fun bs!1889705 () Bool)

(assert (= bs!1889705 (and d!2229335 d!2229325)))

(assert (=> bs!1889705 (not (= lambda!436303 lambda!436298))))

(declare-fun bs!1889706 () Bool)

(assert (= bs!1889706 (and d!2229335 start!697354)))

(assert (=> bs!1889706 (not (= lambda!436303 lambda!436273))))

(assert (=> bs!1889705 (not (= lambda!436303 lambda!436296))))

(declare-fun bs!1889707 () Bool)

(assert (= bs!1889707 (and d!2229335 d!2229319)))

(assert (=> bs!1889707 (not (= lambda!436303 lambda!436287))))

(declare-fun bs!1889708 () Bool)

(assert (= bs!1889708 (and d!2229335 d!2229329)))

(assert (=> bs!1889708 (= lambda!436303 lambda!436302)))

(assert (=> d!2229335 true))

(assert (=> d!2229335 (< (dynLambda!28296 order!28627 lambda!436274) (dynLambda!28296 order!28627 lambda!436303))))

(assert (=> d!2229335 (= (exists!4048 (t!383581 l!9132) lambda!436274) (not (forall!17100 (t!383581 l!9132) lambda!436303)))))

(declare-fun bs!1889709 () Bool)

(assert (= bs!1889709 d!2229335))

(declare-fun m!7862230 () Bool)

(assert (=> bs!1889709 m!7862230))

(assert (=> b!7154444 d!2229335))

(declare-fun d!2229337 () Bool)

(assert (=> d!2229337 (= (nullable!7737 r!13749) (nullableFct!3015 r!13749))))

(declare-fun bs!1889710 () Bool)

(assert (= bs!1889710 d!2229337))

(declare-fun m!7862232 () Bool)

(assert (=> bs!1889710 m!7862232))

(assert (=> b!7154444 d!2229337))

(declare-fun bs!1889711 () Bool)

(declare-fun d!2229339 () Bool)

(assert (= bs!1889711 (and d!2229339 b!7154444)))

(declare-fun lambda!436306 () Int)

(assert (=> bs!1889711 (not (= lambda!436306 lambda!436274))))

(declare-fun bs!1889712 () Bool)

(assert (= bs!1889712 (and d!2229339 d!2229325)))

(assert (=> bs!1889712 (not (= lambda!436306 lambda!436298))))

(declare-fun bs!1889713 () Bool)

(assert (= bs!1889713 (and d!2229339 start!697354)))

(assert (=> bs!1889713 (= lambda!436306 lambda!436273)))

(assert (=> bs!1889712 (= lambda!436306 lambda!436296)))

(declare-fun bs!1889714 () Bool)

(assert (= bs!1889714 (and d!2229339 d!2229319)))

(assert (=> bs!1889714 (= lambda!436306 lambda!436287)))

(declare-fun bs!1889715 () Bool)

(assert (= bs!1889715 (and d!2229339 d!2229335)))

(assert (=> bs!1889715 (not (= lambda!436306 lambda!436303))))

(declare-fun bs!1889716 () Bool)

(assert (= bs!1889716 (and d!2229339 d!2229329)))

(assert (=> bs!1889716 (not (= lambda!436306 lambda!436302))))

(declare-fun e!4298074 () Bool)

(assert (=> d!2229339 e!4298074))

(declare-fun res!2917505 () Bool)

(assert (=> d!2229339 (=> (not res!2917505) (not e!4298074))))

(declare-fun lt!2569164 () Regex!18260)

(assert (=> d!2229339 (= res!2917505 (validRegex!9408 lt!2569164))))

(declare-fun e!4298076 () Regex!18260)

(assert (=> d!2229339 (= lt!2569164 e!4298076)))

(declare-fun c!1333438 () Bool)

(declare-fun e!4298071 () Bool)

(assert (=> d!2229339 (= c!1333438 e!4298071)))

(declare-fun res!2917504 () Bool)

(assert (=> d!2229339 (=> (not res!2917504) (not e!4298071))))

(assert (=> d!2229339 (= res!2917504 (is-Cons!69440 l!9132))))

(assert (=> d!2229339 (forall!17100 l!9132 lambda!436306)))

(assert (=> d!2229339 (= (generalisedUnion!2723 l!9132) lt!2569164)))

(declare-fun b!7154524 () Bool)

(declare-fun e!4298073 () Bool)

(assert (=> b!7154524 (= e!4298073 (isUnion!1552 lt!2569164))))

(declare-fun b!7154525 () Bool)

(assert (=> b!7154525 (= e!4298076 (h!75888 l!9132))))

(declare-fun b!7154526 () Bool)

(assert (=> b!7154526 (= e!4298071 (isEmpty!40128 (t!383581 l!9132)))))

(declare-fun b!7154527 () Bool)

(assert (=> b!7154527 (= e!4298073 (= lt!2569164 (head!14560 l!9132)))))

(declare-fun b!7154528 () Bool)

(declare-fun e!4298072 () Bool)

(assert (=> b!7154528 (= e!4298072 e!4298073)))

(declare-fun c!1333437 () Bool)

(assert (=> b!7154528 (= c!1333437 (isEmpty!40128 (tail!14029 l!9132)))))

(declare-fun b!7154529 () Bool)

(declare-fun e!4298075 () Regex!18260)

(assert (=> b!7154529 (= e!4298075 EmptyLang!18260)))

(declare-fun b!7154530 () Bool)

(assert (=> b!7154530 (= e!4298072 (isEmptyLang!2124 lt!2569164))))

(declare-fun b!7154531 () Bool)

(assert (=> b!7154531 (= e!4298075 (Union!18260 (h!75888 l!9132) (generalisedUnion!2723 (t!383581 l!9132))))))

(declare-fun b!7154532 () Bool)

(assert (=> b!7154532 (= e!4298076 e!4298075)))

(declare-fun c!1333439 () Bool)

(assert (=> b!7154532 (= c!1333439 (is-Cons!69440 l!9132))))

(declare-fun b!7154533 () Bool)

(assert (=> b!7154533 (= e!4298074 e!4298072)))

(declare-fun c!1333440 () Bool)

(assert (=> b!7154533 (= c!1333440 (isEmpty!40128 l!9132))))

(assert (= (and d!2229339 res!2917504) b!7154526))

(assert (= (and d!2229339 c!1333438) b!7154525))

(assert (= (and d!2229339 (not c!1333438)) b!7154532))

(assert (= (and b!7154532 c!1333439) b!7154531))

(assert (= (and b!7154532 (not c!1333439)) b!7154529))

(assert (= (and d!2229339 res!2917505) b!7154533))

(assert (= (and b!7154533 c!1333440) b!7154530))

(assert (= (and b!7154533 (not c!1333440)) b!7154528))

(assert (= (and b!7154528 c!1333437) b!7154527))

(assert (= (and b!7154528 (not c!1333437)) b!7154524))

(assert (=> b!7154531 m!7862162))

(assert (=> b!7154526 m!7862160))

(declare-fun m!7862234 () Bool)

(assert (=> b!7154530 m!7862234))

(declare-fun m!7862236 () Bool)

(assert (=> b!7154528 m!7862236))

(assert (=> b!7154528 m!7862236))

(declare-fun m!7862238 () Bool)

(assert (=> b!7154528 m!7862238))

(declare-fun m!7862240 () Bool)

(assert (=> d!2229339 m!7862240))

(declare-fun m!7862242 () Bool)

(assert (=> d!2229339 m!7862242))

(declare-fun m!7862244 () Bool)

(assert (=> b!7154524 m!7862244))

(declare-fun m!7862246 () Bool)

(assert (=> b!7154527 m!7862246))

(declare-fun m!7862248 () Bool)

(assert (=> b!7154533 m!7862248))

(assert (=> b!7154438 d!2229339))

(declare-fun b!7154547 () Bool)

(declare-fun e!4298079 () Bool)

(declare-fun tp!1977745 () Bool)

(declare-fun tp!1977746 () Bool)

(assert (=> b!7154547 (= e!4298079 (and tp!1977745 tp!1977746))))

(declare-fun b!7154549 () Bool)

(declare-fun tp!1977748 () Bool)

(declare-fun tp!1977744 () Bool)

(assert (=> b!7154549 (= e!4298079 (and tp!1977748 tp!1977744))))

(declare-fun b!7154548 () Bool)

(declare-fun tp!1977747 () Bool)

(assert (=> b!7154548 (= e!4298079 tp!1977747)))

(declare-fun b!7154546 () Bool)

(assert (=> b!7154546 (= e!4298079 tp_is_empty!46153)))

(assert (=> b!7154441 (= tp!1977708 e!4298079)))

(assert (= (and b!7154441 (is-ElementMatch!18260 (reg!18589 r!13749))) b!7154546))

(assert (= (and b!7154441 (is-Concat!27105 (reg!18589 r!13749))) b!7154547))

(assert (= (and b!7154441 (is-Star!18260 (reg!18589 r!13749))) b!7154548))

(assert (= (and b!7154441 (is-Union!18260 (reg!18589 r!13749))) b!7154549))

(declare-fun b!7154551 () Bool)

(declare-fun e!4298080 () Bool)

(declare-fun tp!1977750 () Bool)

(declare-fun tp!1977751 () Bool)

(assert (=> b!7154551 (= e!4298080 (and tp!1977750 tp!1977751))))

(declare-fun b!7154553 () Bool)

(declare-fun tp!1977753 () Bool)

(declare-fun tp!1977749 () Bool)

(assert (=> b!7154553 (= e!4298080 (and tp!1977753 tp!1977749))))

(declare-fun b!7154552 () Bool)

(declare-fun tp!1977752 () Bool)

(assert (=> b!7154552 (= e!4298080 tp!1977752)))

(declare-fun b!7154550 () Bool)

(assert (=> b!7154550 (= e!4298080 tp_is_empty!46153)))

(assert (=> b!7154446 (= tp!1977709 e!4298080)))

(assert (= (and b!7154446 (is-ElementMatch!18260 (regOne!37033 r!13749))) b!7154550))

(assert (= (and b!7154446 (is-Concat!27105 (regOne!37033 r!13749))) b!7154551))

(assert (= (and b!7154446 (is-Star!18260 (regOne!37033 r!13749))) b!7154552))

(assert (= (and b!7154446 (is-Union!18260 (regOne!37033 r!13749))) b!7154553))

(declare-fun b!7154555 () Bool)

(declare-fun e!4298081 () Bool)

(declare-fun tp!1977755 () Bool)

(declare-fun tp!1977756 () Bool)

(assert (=> b!7154555 (= e!4298081 (and tp!1977755 tp!1977756))))

(declare-fun b!7154557 () Bool)

(declare-fun tp!1977758 () Bool)

(declare-fun tp!1977754 () Bool)

(assert (=> b!7154557 (= e!4298081 (and tp!1977758 tp!1977754))))

(declare-fun b!7154556 () Bool)

(declare-fun tp!1977757 () Bool)

(assert (=> b!7154556 (= e!4298081 tp!1977757)))

(declare-fun b!7154554 () Bool)

(assert (=> b!7154554 (= e!4298081 tp_is_empty!46153)))

(assert (=> b!7154446 (= tp!1977707 e!4298081)))

(assert (= (and b!7154446 (is-ElementMatch!18260 (regTwo!37033 r!13749))) b!7154554))

(assert (= (and b!7154446 (is-Concat!27105 (regTwo!37033 r!13749))) b!7154555))

(assert (= (and b!7154446 (is-Star!18260 (regTwo!37033 r!13749))) b!7154556))

(assert (= (and b!7154446 (is-Union!18260 (regTwo!37033 r!13749))) b!7154557))

(declare-fun b!7154559 () Bool)

(declare-fun e!4298082 () Bool)

(declare-fun tp!1977760 () Bool)

(declare-fun tp!1977761 () Bool)

(assert (=> b!7154559 (= e!4298082 (and tp!1977760 tp!1977761))))

(declare-fun b!7154561 () Bool)

(declare-fun tp!1977763 () Bool)

(declare-fun tp!1977759 () Bool)

(assert (=> b!7154561 (= e!4298082 (and tp!1977763 tp!1977759))))

(declare-fun b!7154560 () Bool)

(declare-fun tp!1977762 () Bool)

(assert (=> b!7154560 (= e!4298082 tp!1977762)))

(declare-fun b!7154558 () Bool)

(assert (=> b!7154558 (= e!4298082 tp_is_empty!46153)))

(assert (=> b!7154437 (= tp!1977712 e!4298082)))

(assert (= (and b!7154437 (is-ElementMatch!18260 (regOne!37032 r!13749))) b!7154558))

(assert (= (and b!7154437 (is-Concat!27105 (regOne!37032 r!13749))) b!7154559))

(assert (= (and b!7154437 (is-Star!18260 (regOne!37032 r!13749))) b!7154560))

(assert (= (and b!7154437 (is-Union!18260 (regOne!37032 r!13749))) b!7154561))

(declare-fun b!7154563 () Bool)

(declare-fun e!4298083 () Bool)

(declare-fun tp!1977765 () Bool)

(declare-fun tp!1977766 () Bool)

(assert (=> b!7154563 (= e!4298083 (and tp!1977765 tp!1977766))))

(declare-fun b!7154565 () Bool)

(declare-fun tp!1977768 () Bool)

(declare-fun tp!1977764 () Bool)

(assert (=> b!7154565 (= e!4298083 (and tp!1977768 tp!1977764))))

(declare-fun b!7154564 () Bool)

(declare-fun tp!1977767 () Bool)

(assert (=> b!7154564 (= e!4298083 tp!1977767)))

(declare-fun b!7154562 () Bool)

(assert (=> b!7154562 (= e!4298083 tp_is_empty!46153)))

(assert (=> b!7154437 (= tp!1977706 e!4298083)))

(assert (= (and b!7154437 (is-ElementMatch!18260 (regTwo!37032 r!13749))) b!7154562))

(assert (= (and b!7154437 (is-Concat!27105 (regTwo!37032 r!13749))) b!7154563))

(assert (= (and b!7154437 (is-Star!18260 (regTwo!37032 r!13749))) b!7154564))

(assert (= (and b!7154437 (is-Union!18260 (regTwo!37032 r!13749))) b!7154565))

(declare-fun b!7154567 () Bool)

(declare-fun e!4298084 () Bool)

(declare-fun tp!1977770 () Bool)

(declare-fun tp!1977771 () Bool)

(assert (=> b!7154567 (= e!4298084 (and tp!1977770 tp!1977771))))

(declare-fun b!7154569 () Bool)

(declare-fun tp!1977773 () Bool)

(declare-fun tp!1977769 () Bool)

(assert (=> b!7154569 (= e!4298084 (and tp!1977773 tp!1977769))))

(declare-fun b!7154568 () Bool)

(declare-fun tp!1977772 () Bool)

(assert (=> b!7154568 (= e!4298084 tp!1977772)))

(declare-fun b!7154566 () Bool)

(assert (=> b!7154566 (= e!4298084 tp_is_empty!46153)))

(assert (=> b!7154443 (= tp!1977710 e!4298084)))

(assert (= (and b!7154443 (is-ElementMatch!18260 (h!75888 l!9132))) b!7154566))

(assert (= (and b!7154443 (is-Concat!27105 (h!75888 l!9132))) b!7154567))

(assert (= (and b!7154443 (is-Star!18260 (h!75888 l!9132))) b!7154568))

(assert (= (and b!7154443 (is-Union!18260 (h!75888 l!9132))) b!7154569))

(declare-fun b!7154574 () Bool)

(declare-fun e!4298087 () Bool)

(declare-fun tp!1977778 () Bool)

(declare-fun tp!1977779 () Bool)

(assert (=> b!7154574 (= e!4298087 (and tp!1977778 tp!1977779))))

(assert (=> b!7154443 (= tp!1977711 e!4298087)))

(assert (= (and b!7154443 (is-Cons!69440 (t!383581 l!9132))) b!7154574))

(declare-fun b_lambda!273219 () Bool)

(assert (= b_lambda!273217 (or start!697354 b_lambda!273219)))

(declare-fun bs!1889727 () Bool)

(declare-fun d!2229347 () Bool)

(assert (= bs!1889727 (and d!2229347 start!697354)))

(assert (=> bs!1889727 (= (dynLambda!28295 lambda!436273 (h!75888 l!9132)) (validRegex!9408 (h!75888 l!9132)))))

(declare-fun m!7862256 () Bool)

(assert (=> bs!1889727 m!7862256))

(assert (=> b!7154520 d!2229347))

(declare-fun b_lambda!273221 () Bool)

(assert (= b_lambda!273215 (or start!697354 b_lambda!273221)))

(declare-fun bs!1889728 () Bool)

(declare-fun d!2229349 () Bool)

(assert (= bs!1889728 (and d!2229349 start!697354)))

(assert (=> bs!1889728 (= (dynLambda!28295 lambda!436273 (h!75888 (t!383581 l!9132))) (validRegex!9408 (h!75888 (t!383581 l!9132))))))

(declare-fun m!7862258 () Bool)

(assert (=> bs!1889728 m!7862258))

(assert (=> b!7154488 d!2229349))

(push 1)

(assert (not b!7154564))

(assert (not d!2229327))

(assert (not b!7154512))

(assert (not b!7154489))

(assert (not b!7154574))

(assert (not b!7154557))

(assert (not b_lambda!273219))

(assert (not b!7154516))

(assert (not d!2229339))

(assert (not b!7154556))

(assert (not bs!1889727))

(assert (not b!7154569))

(assert (not b!7154517))

(assert (not b!7154548))

(assert (not d!2229337))

(assert (not b!7154533))

(assert (not b!7154513))

(assert (not b!7154555))

(assert (not b!7154547))

(assert (not b!7154561))

(assert (not b!7154552))

(assert (not b!7154565))

(assert (not b!7154568))

(assert (not b!7154528))

(assert (not b!7154563))

(assert (not b!7154559))

(assert (not b!7154560))

(assert (not b_lambda!273221))

(assert (not b!7154514))

(assert (not b!7154527))

(assert (not d!2229319))

(assert (not bs!1889728))

(assert (not d!2229325))

(assert (not b!7154549))

(assert (not d!2229329))

(assert (not b!7154510))

(assert (not b!7154519))

(assert (not b!7154531))

(assert (not d!2229335))

(assert (not b!7154521))

(assert tp_is_empty!46153)

(assert (not b!7154530))

(assert (not b!7154567))

(assert (not b!7154553))

(assert (not b!7154526))

(assert (not b!7154524))

(assert (not b!7154551))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2229363 () Bool)

(assert (=> d!2229363 (= (isEmpty!40128 l!9132) (is-Nil!69440 l!9132))))

(assert (=> b!7154533 d!2229363))

(declare-fun b!7154680 () Bool)

(declare-fun e!4298147 () Bool)

(declare-fun e!4298145 () Bool)

(assert (=> b!7154680 (= e!4298147 e!4298145)))

(declare-fun c!1333462 () Bool)

(assert (=> b!7154680 (= c!1333462 (is-Union!18260 lt!2569157))))

(declare-fun b!7154681 () Bool)

(declare-fun res!2917534 () Bool)

(declare-fun e!4298146 () Bool)

(assert (=> b!7154681 (=> res!2917534 e!4298146)))

(assert (=> b!7154681 (= res!2917534 (not (is-Concat!27105 lt!2569157)))))

(assert (=> b!7154681 (= e!4298145 e!4298146)))

(declare-fun bm!651646 () Bool)

(declare-fun call!651652 () Bool)

(declare-fun call!651653 () Bool)

(assert (=> bm!651646 (= call!651652 call!651653)))

(declare-fun b!7154682 () Bool)

(declare-fun res!2917535 () Bool)

(declare-fun e!4298149 () Bool)

(assert (=> b!7154682 (=> (not res!2917535) (not e!4298149))))

(assert (=> b!7154682 (= res!2917535 call!651652)))

(assert (=> b!7154682 (= e!4298145 e!4298149)))

(declare-fun bm!651647 () Bool)

(declare-fun call!651651 () Bool)

(assert (=> bm!651647 (= call!651651 (validRegex!9408 (ite c!1333462 (regTwo!37033 lt!2569157) (regTwo!37032 lt!2569157))))))

(declare-fun b!7154683 () Bool)

(declare-fun e!4298148 () Bool)

(assert (=> b!7154683 (= e!4298147 e!4298148)))

(declare-fun res!2917532 () Bool)

(assert (=> b!7154683 (= res!2917532 (not (nullable!7737 (reg!18589 lt!2569157))))))

(assert (=> b!7154683 (=> (not res!2917532) (not e!4298148))))

(declare-fun b!7154684 () Bool)

(declare-fun e!4298151 () Bool)

(assert (=> b!7154684 (= e!4298151 e!4298147)))

(declare-fun c!1333461 () Bool)

(assert (=> b!7154684 (= c!1333461 (is-Star!18260 lt!2569157))))

(declare-fun b!7154685 () Bool)

(assert (=> b!7154685 (= e!4298149 call!651651)))

(declare-fun b!7154687 () Bool)

(declare-fun e!4298150 () Bool)

(assert (=> b!7154687 (= e!4298146 e!4298150)))

(declare-fun res!2917533 () Bool)

(assert (=> b!7154687 (=> (not res!2917533) (not e!4298150))))

(assert (=> b!7154687 (= res!2917533 call!651652)))

(declare-fun b!7154686 () Bool)

(assert (=> b!7154686 (= e!4298148 call!651653)))

(declare-fun d!2229365 () Bool)

(declare-fun res!2917536 () Bool)

(assert (=> d!2229365 (=> res!2917536 e!4298151)))

(assert (=> d!2229365 (= res!2917536 (is-ElementMatch!18260 lt!2569157))))

(assert (=> d!2229365 (= (validRegex!9408 lt!2569157) e!4298151)))

(declare-fun b!7154688 () Bool)

(assert (=> b!7154688 (= e!4298150 call!651651)))

(declare-fun bm!651648 () Bool)

(assert (=> bm!651648 (= call!651653 (validRegex!9408 (ite c!1333461 (reg!18589 lt!2569157) (ite c!1333462 (regOne!37033 lt!2569157) (regOne!37032 lt!2569157)))))))

(assert (= (and d!2229365 (not res!2917536)) b!7154684))

(assert (= (and b!7154684 c!1333461) b!7154683))

(assert (= (and b!7154684 (not c!1333461)) b!7154680))

(assert (= (and b!7154683 res!2917532) b!7154686))

(assert (= (and b!7154680 c!1333462) b!7154682))

(assert (= (and b!7154680 (not c!1333462)) b!7154681))

(assert (= (and b!7154682 res!2917535) b!7154685))

(assert (= (and b!7154681 (not res!2917534)) b!7154687))

(assert (= (and b!7154687 res!2917533) b!7154688))

(assert (= (or b!7154682 b!7154687) bm!651646))

(assert (= (or b!7154685 b!7154688) bm!651647))

(assert (= (or b!7154686 bm!651646) bm!651648))

(declare-fun m!7862304 () Bool)

(assert (=> bm!651647 m!7862304))

(declare-fun m!7862306 () Bool)

(assert (=> b!7154683 m!7862306))

(declare-fun m!7862308 () Bool)

(assert (=> bm!651648 m!7862308))

(assert (=> d!2229319 d!2229365))

(declare-fun d!2229367 () Bool)

(declare-fun res!2917537 () Bool)

(declare-fun e!4298152 () Bool)

(assert (=> d!2229367 (=> res!2917537 e!4298152)))

(assert (=> d!2229367 (= res!2917537 (is-Nil!69440 (t!383581 l!9132)))))

(assert (=> d!2229367 (= (forall!17100 (t!383581 l!9132) lambda!436287) e!4298152)))

(declare-fun b!7154689 () Bool)

(declare-fun e!4298153 () Bool)

(assert (=> b!7154689 (= e!4298152 e!4298153)))

(declare-fun res!2917538 () Bool)

(assert (=> b!7154689 (=> (not res!2917538) (not e!4298153))))

(assert (=> b!7154689 (= res!2917538 (dynLambda!28295 lambda!436287 (h!75888 (t!383581 l!9132))))))

(declare-fun b!7154690 () Bool)

(assert (=> b!7154690 (= e!4298153 (forall!17100 (t!383581 (t!383581 l!9132)) lambda!436287))))

(assert (= (and d!2229367 (not res!2917537)) b!7154689))

(assert (= (and b!7154689 res!2917538) b!7154690))

(declare-fun b_lambda!273231 () Bool)

(assert (=> (not b_lambda!273231) (not b!7154689)))

(declare-fun m!7862310 () Bool)

(assert (=> b!7154689 m!7862310))

(declare-fun m!7862312 () Bool)

(assert (=> b!7154690 m!7862312))

(assert (=> d!2229319 d!2229367))

(declare-fun bm!651653 () Bool)

(declare-fun call!651658 () Bool)

(declare-fun c!1333465 () Bool)

(assert (=> bm!651653 (= call!651658 (nullable!7737 (ite c!1333465 (regTwo!37033 (regTwo!37033 r!13749)) (regOne!37032 (regTwo!37033 r!13749)))))))

(declare-fun b!7154705 () Bool)

(declare-fun e!4298167 () Bool)

(declare-fun e!4298169 () Bool)

(assert (=> b!7154705 (= e!4298167 e!4298169)))

(declare-fun res!2917551 () Bool)

(assert (=> b!7154705 (=> res!2917551 e!4298169)))

(assert (=> b!7154705 (= res!2917551 (is-Star!18260 (regTwo!37033 r!13749)))))

(declare-fun b!7154706 () Bool)

(declare-fun e!4298171 () Bool)

(assert (=> b!7154706 (= e!4298171 e!4298167)))

(declare-fun res!2917552 () Bool)

(assert (=> b!7154706 (=> (not res!2917552) (not e!4298167))))

(assert (=> b!7154706 (= res!2917552 (and (not (is-EmptyLang!18260 (regTwo!37033 r!13749))) (not (is-ElementMatch!18260 (regTwo!37033 r!13749)))))))

(declare-fun d!2229369 () Bool)

(declare-fun res!2917550 () Bool)

(assert (=> d!2229369 (=> res!2917550 e!4298171)))

(assert (=> d!2229369 (= res!2917550 (is-EmptyExpr!18260 (regTwo!37033 r!13749)))))

(assert (=> d!2229369 (= (nullableFct!3015 (regTwo!37033 r!13749)) e!4298171)))

(declare-fun b!7154707 () Bool)

(declare-fun e!4298166 () Bool)

(assert (=> b!7154707 (= e!4298169 e!4298166)))

(assert (=> b!7154707 (= c!1333465 (is-Union!18260 (regTwo!37033 r!13749)))))

(declare-fun b!7154708 () Bool)

(declare-fun e!4298168 () Bool)

(assert (=> b!7154708 (= e!4298166 e!4298168)))

(declare-fun res!2917553 () Bool)

(declare-fun call!651659 () Bool)

(assert (=> b!7154708 (= res!2917553 call!651659)))

(assert (=> b!7154708 (=> res!2917553 e!4298168)))

(declare-fun bm!651654 () Bool)

(assert (=> bm!651654 (= call!651659 (nullable!7737 (ite c!1333465 (regOne!37033 (regTwo!37033 r!13749)) (regTwo!37032 (regTwo!37033 r!13749)))))))

(declare-fun b!7154709 () Bool)

(declare-fun e!4298170 () Bool)

(assert (=> b!7154709 (= e!4298166 e!4298170)))

(declare-fun res!2917549 () Bool)

(assert (=> b!7154709 (= res!2917549 call!651658)))

(assert (=> b!7154709 (=> (not res!2917549) (not e!4298170))))

(declare-fun b!7154710 () Bool)

(assert (=> b!7154710 (= e!4298170 call!651659)))

(declare-fun b!7154711 () Bool)

(assert (=> b!7154711 (= e!4298168 call!651658)))

(assert (= (and d!2229369 (not res!2917550)) b!7154706))

(assert (= (and b!7154706 res!2917552) b!7154705))

(assert (= (and b!7154705 (not res!2917551)) b!7154707))

(assert (= (and b!7154707 c!1333465) b!7154708))

(assert (= (and b!7154707 (not c!1333465)) b!7154709))

(assert (= (and b!7154708 (not res!2917553)) b!7154711))

(assert (= (and b!7154709 res!2917549) b!7154710))

(assert (= (or b!7154711 b!7154709) bm!651653))

(assert (= (or b!7154708 b!7154710) bm!651654))

(declare-fun m!7862314 () Bool)

(assert (=> bm!651653 m!7862314))

(declare-fun m!7862316 () Bool)

(assert (=> bm!651654 m!7862316))

(assert (=> d!2229327 d!2229369))

(declare-fun d!2229371 () Bool)

(assert (=> d!2229371 (= (isEmptyLang!2124 lt!2569157) (is-EmptyLang!18260 lt!2569157))))

(assert (=> b!7154516 d!2229371))

(declare-fun b!7154712 () Bool)

(declare-fun e!4298174 () Bool)

(declare-fun e!4298172 () Bool)

(assert (=> b!7154712 (= e!4298174 e!4298172)))

(declare-fun c!1333467 () Bool)

(assert (=> b!7154712 (= c!1333467 (is-Union!18260 (h!75888 l!9132)))))

(declare-fun b!7154713 () Bool)

(declare-fun res!2917556 () Bool)

(declare-fun e!4298173 () Bool)

(assert (=> b!7154713 (=> res!2917556 e!4298173)))

(assert (=> b!7154713 (= res!2917556 (not (is-Concat!27105 (h!75888 l!9132))))))

(assert (=> b!7154713 (= e!4298172 e!4298173)))

(declare-fun bm!651655 () Bool)

(declare-fun call!651661 () Bool)

(declare-fun call!651662 () Bool)

(assert (=> bm!651655 (= call!651661 call!651662)))

(declare-fun b!7154714 () Bool)

(declare-fun res!2917557 () Bool)

(declare-fun e!4298176 () Bool)

(assert (=> b!7154714 (=> (not res!2917557) (not e!4298176))))

(assert (=> b!7154714 (= res!2917557 call!651661)))

(assert (=> b!7154714 (= e!4298172 e!4298176)))

(declare-fun bm!651656 () Bool)

(declare-fun call!651660 () Bool)

(assert (=> bm!651656 (= call!651660 (validRegex!9408 (ite c!1333467 (regTwo!37033 (h!75888 l!9132)) (regTwo!37032 (h!75888 l!9132)))))))

(declare-fun b!7154715 () Bool)

(declare-fun e!4298175 () Bool)

(assert (=> b!7154715 (= e!4298174 e!4298175)))

(declare-fun res!2917554 () Bool)

(assert (=> b!7154715 (= res!2917554 (not (nullable!7737 (reg!18589 (h!75888 l!9132)))))))

(assert (=> b!7154715 (=> (not res!2917554) (not e!4298175))))

(declare-fun b!7154716 () Bool)

(declare-fun e!4298178 () Bool)

(assert (=> b!7154716 (= e!4298178 e!4298174)))

(declare-fun c!1333466 () Bool)

(assert (=> b!7154716 (= c!1333466 (is-Star!18260 (h!75888 l!9132)))))

(declare-fun b!7154717 () Bool)

(assert (=> b!7154717 (= e!4298176 call!651660)))

(declare-fun b!7154719 () Bool)

(declare-fun e!4298177 () Bool)

(assert (=> b!7154719 (= e!4298173 e!4298177)))

(declare-fun res!2917555 () Bool)

(assert (=> b!7154719 (=> (not res!2917555) (not e!4298177))))

(assert (=> b!7154719 (= res!2917555 call!651661)))

(declare-fun b!7154718 () Bool)

(assert (=> b!7154718 (= e!4298175 call!651662)))

(declare-fun d!2229373 () Bool)

(declare-fun res!2917558 () Bool)

(assert (=> d!2229373 (=> res!2917558 e!4298178)))

(assert (=> d!2229373 (= res!2917558 (is-ElementMatch!18260 (h!75888 l!9132)))))

(assert (=> d!2229373 (= (validRegex!9408 (h!75888 l!9132)) e!4298178)))

(declare-fun b!7154720 () Bool)

(assert (=> b!7154720 (= e!4298177 call!651660)))

(declare-fun bm!651657 () Bool)

(assert (=> bm!651657 (= call!651662 (validRegex!9408 (ite c!1333466 (reg!18589 (h!75888 l!9132)) (ite c!1333467 (regOne!37033 (h!75888 l!9132)) (regOne!37032 (h!75888 l!9132))))))))

(assert (= (and d!2229373 (not res!2917558)) b!7154716))

(assert (= (and b!7154716 c!1333466) b!7154715))

(assert (= (and b!7154716 (not c!1333466)) b!7154712))

(assert (= (and b!7154715 res!2917554) b!7154718))

(assert (= (and b!7154712 c!1333467) b!7154714))

(assert (= (and b!7154712 (not c!1333467)) b!7154713))

(assert (= (and b!7154714 res!2917557) b!7154717))

(assert (= (and b!7154713 (not res!2917556)) b!7154719))

(assert (= (and b!7154719 res!2917555) b!7154720))

(assert (= (or b!7154714 b!7154719) bm!651655))

(assert (= (or b!7154717 b!7154720) bm!651656))

(assert (= (or b!7154718 bm!651655) bm!651657))

(declare-fun m!7862318 () Bool)

(assert (=> bm!651656 m!7862318))

(declare-fun m!7862320 () Bool)

(assert (=> b!7154715 m!7862320))

(declare-fun m!7862322 () Bool)

(assert (=> bm!651657 m!7862322))

(assert (=> bs!1889727 d!2229373))

(assert (=> d!2229325 d!2229327))

(declare-fun bs!1889742 () Bool)

(declare-fun d!2229375 () Bool)

(assert (= bs!1889742 (and d!2229375 b!7154444)))

(declare-fun lambda!436313 () Int)

(assert (=> bs!1889742 (not (= lambda!436313 lambda!436274))))

(declare-fun bs!1889743 () Bool)

(assert (= bs!1889743 (and d!2229375 d!2229325)))

(assert (=> bs!1889743 (not (= lambda!436313 lambda!436298))))

(declare-fun bs!1889744 () Bool)

(assert (= bs!1889744 (and d!2229375 start!697354)))

(assert (=> bs!1889744 (not (= lambda!436313 lambda!436273))))

(assert (=> bs!1889743 (not (= lambda!436313 lambda!436296))))

(declare-fun bs!1889745 () Bool)

(assert (= bs!1889745 (and d!2229375 d!2229319)))

(assert (=> bs!1889745 (not (= lambda!436313 lambda!436287))))

(declare-fun bs!1889746 () Bool)

(assert (= bs!1889746 (and d!2229375 d!2229335)))

(assert (=> bs!1889746 (= (= lambda!436298 lambda!436274) (= lambda!436313 lambda!436303))))

(declare-fun bs!1889747 () Bool)

(assert (= bs!1889747 (and d!2229375 d!2229339)))

(assert (=> bs!1889747 (not (= lambda!436313 lambda!436306))))

(declare-fun bs!1889748 () Bool)

(assert (= bs!1889748 (and d!2229375 d!2229329)))

(assert (=> bs!1889748 (= (= lambda!436298 lambda!436274) (= lambda!436313 lambda!436302))))

(assert (=> d!2229375 true))

(assert (=> d!2229375 (< (dynLambda!28296 order!28627 lambda!436298) (dynLambda!28296 order!28627 lambda!436313))))

(assert (=> d!2229375 (= (exists!4048 (t!383581 l!9132) lambda!436298) (not (forall!17100 (t!383581 l!9132) lambda!436313)))))

(declare-fun bs!1889749 () Bool)

(assert (= bs!1889749 d!2229375))

(declare-fun m!7862324 () Bool)

(assert (=> bs!1889749 m!7862324))

(assert (=> d!2229325 d!2229375))

(declare-fun bs!1889750 () Bool)

(declare-fun d!2229377 () Bool)

(assert (= bs!1889750 (and d!2229377 b!7154444)))

(declare-fun lambda!436316 () Int)

(assert (=> bs!1889750 (= lambda!436316 lambda!436274)))

(declare-fun bs!1889751 () Bool)

(assert (= bs!1889751 (and d!2229377 d!2229325)))

(assert (=> bs!1889751 (= lambda!436316 lambda!436298)))

(declare-fun bs!1889752 () Bool)

(assert (= bs!1889752 (and d!2229377 start!697354)))

(assert (=> bs!1889752 (not (= lambda!436316 lambda!436273))))

(assert (=> bs!1889751 (not (= lambda!436316 lambda!436296))))

(declare-fun bs!1889753 () Bool)

(assert (= bs!1889753 (and d!2229377 d!2229375)))

(assert (=> bs!1889753 (not (= lambda!436316 lambda!436313))))

(declare-fun bs!1889754 () Bool)

(assert (= bs!1889754 (and d!2229377 d!2229319)))

(assert (=> bs!1889754 (not (= lambda!436316 lambda!436287))))

(declare-fun bs!1889755 () Bool)

(assert (= bs!1889755 (and d!2229377 d!2229335)))

(assert (=> bs!1889755 (not (= lambda!436316 lambda!436303))))

(declare-fun bs!1889756 () Bool)

(assert (= bs!1889756 (and d!2229377 d!2229339)))

(assert (=> bs!1889756 (not (= lambda!436316 lambda!436306))))

(declare-fun bs!1889757 () Bool)

(assert (= bs!1889757 (and d!2229377 d!2229329)))

(assert (=> bs!1889757 (not (= lambda!436316 lambda!436302))))

(assert (=> d!2229377 (= (nullable!7737 (regTwo!37033 r!13749)) (exists!4048 (t!383581 l!9132) lambda!436316))))

(assert (=> d!2229377 true))

(declare-fun _$84!64 () Unit!163295)

(assert (=> d!2229377 (= (choose!55305 (regTwo!37033 r!13749) (t!383581 l!9132)) _$84!64)))

(declare-fun bs!1889758 () Bool)

(assert (= bs!1889758 d!2229377))

(assert (=> bs!1889758 m!7862154))

(declare-fun m!7862326 () Bool)

(assert (=> bs!1889758 m!7862326))

(assert (=> d!2229325 d!2229377))

(declare-fun d!2229379 () Bool)

(declare-fun res!2917559 () Bool)

(declare-fun e!4298179 () Bool)

(assert (=> d!2229379 (=> res!2917559 e!4298179)))

(assert (=> d!2229379 (= res!2917559 (is-Nil!69440 (t!383581 l!9132)))))

(assert (=> d!2229379 (= (forall!17100 (t!383581 l!9132) lambda!436296) e!4298179)))

(declare-fun b!7154721 () Bool)

(declare-fun e!4298180 () Bool)

(assert (=> b!7154721 (= e!4298179 e!4298180)))

(declare-fun res!2917560 () Bool)

(assert (=> b!7154721 (=> (not res!2917560) (not e!4298180))))

(assert (=> b!7154721 (= res!2917560 (dynLambda!28295 lambda!436296 (h!75888 (t!383581 l!9132))))))

(declare-fun b!7154722 () Bool)

(assert (=> b!7154722 (= e!4298180 (forall!17100 (t!383581 (t!383581 l!9132)) lambda!436296))))

(assert (= (and d!2229379 (not res!2917559)) b!7154721))

(assert (= (and b!7154721 res!2917560) b!7154722))

(declare-fun b_lambda!273233 () Bool)

(assert (=> (not b_lambda!273233) (not b!7154721)))

(declare-fun m!7862328 () Bool)

(assert (=> b!7154721 m!7862328))

(declare-fun m!7862330 () Bool)

(assert (=> b!7154722 m!7862330))

(assert (=> d!2229325 d!2229379))

(declare-fun bs!1889759 () Bool)

(declare-fun d!2229381 () Bool)

(assert (= bs!1889759 (and d!2229381 b!7154444)))

(declare-fun lambda!436317 () Int)

(assert (=> bs!1889759 (not (= lambda!436317 lambda!436274))))

(declare-fun bs!1889760 () Bool)

(assert (= bs!1889760 (and d!2229381 d!2229325)))

(assert (=> bs!1889760 (not (= lambda!436317 lambda!436298))))

(declare-fun bs!1889761 () Bool)

(assert (= bs!1889761 (and d!2229381 start!697354)))

(assert (=> bs!1889761 (= lambda!436317 lambda!436273)))

(assert (=> bs!1889760 (= lambda!436317 lambda!436296)))

(declare-fun bs!1889762 () Bool)

(assert (= bs!1889762 (and d!2229381 d!2229375)))

(assert (=> bs!1889762 (not (= lambda!436317 lambda!436313))))

(declare-fun bs!1889763 () Bool)

(assert (= bs!1889763 (and d!2229381 d!2229319)))

(assert (=> bs!1889763 (= lambda!436317 lambda!436287)))

(declare-fun bs!1889764 () Bool)

(assert (= bs!1889764 (and d!2229381 d!2229335)))

(assert (=> bs!1889764 (not (= lambda!436317 lambda!436303))))

(declare-fun bs!1889765 () Bool)

(assert (= bs!1889765 (and d!2229381 d!2229377)))

(assert (=> bs!1889765 (not (= lambda!436317 lambda!436316))))

(declare-fun bs!1889766 () Bool)

(assert (= bs!1889766 (and d!2229381 d!2229339)))

(assert (=> bs!1889766 (= lambda!436317 lambda!436306)))

(declare-fun bs!1889767 () Bool)

(assert (= bs!1889767 (and d!2229381 d!2229329)))

(assert (=> bs!1889767 (not (= lambda!436317 lambda!436302))))

(declare-fun e!4298184 () Bool)

(assert (=> d!2229381 e!4298184))

(declare-fun res!2917562 () Bool)

(assert (=> d!2229381 (=> (not res!2917562) (not e!4298184))))

(declare-fun lt!2569169 () Regex!18260)

(assert (=> d!2229381 (= res!2917562 (validRegex!9408 lt!2569169))))

(declare-fun e!4298186 () Regex!18260)

(assert (=> d!2229381 (= lt!2569169 e!4298186)))

(declare-fun c!1333469 () Bool)

(declare-fun e!4298181 () Bool)

(assert (=> d!2229381 (= c!1333469 e!4298181)))

(declare-fun res!2917561 () Bool)

(assert (=> d!2229381 (=> (not res!2917561) (not e!4298181))))

(assert (=> d!2229381 (= res!2917561 (is-Cons!69440 (t!383581 (t!383581 l!9132))))))

(assert (=> d!2229381 (forall!17100 (t!383581 (t!383581 l!9132)) lambda!436317)))

(assert (=> d!2229381 (= (generalisedUnion!2723 (t!383581 (t!383581 l!9132))) lt!2569169)))

(declare-fun b!7154723 () Bool)

(declare-fun e!4298183 () Bool)

(assert (=> b!7154723 (= e!4298183 (isUnion!1552 lt!2569169))))

(declare-fun b!7154724 () Bool)

(assert (=> b!7154724 (= e!4298186 (h!75888 (t!383581 (t!383581 l!9132))))))

(declare-fun b!7154725 () Bool)

(assert (=> b!7154725 (= e!4298181 (isEmpty!40128 (t!383581 (t!383581 (t!383581 l!9132)))))))

(declare-fun b!7154726 () Bool)

(assert (=> b!7154726 (= e!4298183 (= lt!2569169 (head!14560 (t!383581 (t!383581 l!9132)))))))

(declare-fun b!7154727 () Bool)

(declare-fun e!4298182 () Bool)

(assert (=> b!7154727 (= e!4298182 e!4298183)))

(declare-fun c!1333468 () Bool)

(assert (=> b!7154727 (= c!1333468 (isEmpty!40128 (tail!14029 (t!383581 (t!383581 l!9132)))))))

(declare-fun b!7154728 () Bool)

(declare-fun e!4298185 () Regex!18260)

(assert (=> b!7154728 (= e!4298185 EmptyLang!18260)))

(declare-fun b!7154729 () Bool)

(assert (=> b!7154729 (= e!4298182 (isEmptyLang!2124 lt!2569169))))

(declare-fun b!7154730 () Bool)

(assert (=> b!7154730 (= e!4298185 (Union!18260 (h!75888 (t!383581 (t!383581 l!9132))) (generalisedUnion!2723 (t!383581 (t!383581 (t!383581 l!9132))))))))

(declare-fun b!7154731 () Bool)

(assert (=> b!7154731 (= e!4298186 e!4298185)))

(declare-fun c!1333470 () Bool)

(assert (=> b!7154731 (= c!1333470 (is-Cons!69440 (t!383581 (t!383581 l!9132))))))

(declare-fun b!7154732 () Bool)

(assert (=> b!7154732 (= e!4298184 e!4298182)))

(declare-fun c!1333471 () Bool)

(assert (=> b!7154732 (= c!1333471 (isEmpty!40128 (t!383581 (t!383581 l!9132))))))

(assert (= (and d!2229381 res!2917561) b!7154725))

(assert (= (and d!2229381 c!1333469) b!7154724))

(assert (= (and d!2229381 (not c!1333469)) b!7154731))

(assert (= (and b!7154731 c!1333470) b!7154730))

(assert (= (and b!7154731 (not c!1333470)) b!7154728))

(assert (= (and d!2229381 res!2917562) b!7154732))

(assert (= (and b!7154732 c!1333471) b!7154729))

(assert (= (and b!7154732 (not c!1333471)) b!7154727))

(assert (= (and b!7154727 c!1333468) b!7154726))

(assert (= (and b!7154727 (not c!1333468)) b!7154723))

(declare-fun m!7862332 () Bool)

(assert (=> b!7154730 m!7862332))

(declare-fun m!7862334 () Bool)

(assert (=> b!7154725 m!7862334))

(declare-fun m!7862336 () Bool)

(assert (=> b!7154729 m!7862336))

(declare-fun m!7862338 () Bool)

(assert (=> b!7154727 m!7862338))

(assert (=> b!7154727 m!7862338))

(declare-fun m!7862340 () Bool)

(assert (=> b!7154727 m!7862340))

(declare-fun m!7862342 () Bool)

(assert (=> d!2229381 m!7862342))

(declare-fun m!7862344 () Bool)

(assert (=> d!2229381 m!7862344))

(declare-fun m!7862346 () Bool)

(assert (=> b!7154723 m!7862346))

(declare-fun m!7862348 () Bool)

(assert (=> b!7154726 m!7862348))

(assert (=> b!7154732 m!7862194))

(assert (=> b!7154517 d!2229381))

(assert (=> b!7154519 d!2229315))

(declare-fun d!2229383 () Bool)

(assert (=> d!2229383 (= (isUnion!1552 lt!2569157) (is-Union!18260 lt!2569157))))

(assert (=> b!7154510 d!2229383))

(declare-fun d!2229385 () Bool)

(assert (=> d!2229385 (= (isEmpty!40128 (tail!14029 l!9132)) (is-Nil!69440 (tail!14029 l!9132)))))

(assert (=> b!7154528 d!2229385))

(declare-fun d!2229387 () Bool)

(assert (=> d!2229387 (= (tail!14029 l!9132) (t!383581 l!9132))))

(assert (=> b!7154528 d!2229387))

(declare-fun d!2229389 () Bool)

(assert (=> d!2229389 (= (head!14560 l!9132) (h!75888 l!9132))))

(assert (=> b!7154527 d!2229389))

(declare-fun d!2229391 () Bool)

(declare-fun res!2917563 () Bool)

(declare-fun e!4298187 () Bool)

(assert (=> d!2229391 (=> res!2917563 e!4298187)))

(assert (=> d!2229391 (= res!2917563 (is-Nil!69440 (t!383581 l!9132)))))

(assert (=> d!2229391 (= (forall!17100 (t!383581 l!9132) lambda!436303) e!4298187)))

(declare-fun b!7154733 () Bool)

(declare-fun e!4298188 () Bool)

(assert (=> b!7154733 (= e!4298187 e!4298188)))

(declare-fun res!2917564 () Bool)

(assert (=> b!7154733 (=> (not res!2917564) (not e!4298188))))

(assert (=> b!7154733 (= res!2917564 (dynLambda!28295 lambda!436303 (h!75888 (t!383581 l!9132))))))

(declare-fun b!7154734 () Bool)

(assert (=> b!7154734 (= e!4298188 (forall!17100 (t!383581 (t!383581 l!9132)) lambda!436303))))

(assert (= (and d!2229391 (not res!2917563)) b!7154733))

(assert (= (and b!7154733 res!2917564) b!7154734))

(declare-fun b_lambda!273235 () Bool)

(assert (=> (not b_lambda!273235) (not b!7154733)))

(declare-fun m!7862350 () Bool)

(assert (=> b!7154733 m!7862350))

(declare-fun m!7862352 () Bool)

(assert (=> b!7154734 m!7862352))

(assert (=> d!2229335 d!2229391))

(declare-fun d!2229393 () Bool)

(assert (=> d!2229393 (= (isEmpty!40128 (t!383581 (t!383581 l!9132))) (is-Nil!69440 (t!383581 (t!383581 l!9132))))))

(assert (=> b!7154512 d!2229393))

(declare-fun d!2229395 () Bool)

(assert (=> d!2229395 (= (isEmptyLang!2124 lt!2569164) (is-EmptyLang!18260 lt!2569164))))

(assert (=> b!7154530 d!2229395))

(declare-fun d!2229397 () Bool)

(assert (=> d!2229397 (= (isEmpty!40128 (tail!14029 (t!383581 l!9132))) (is-Nil!69440 (tail!14029 (t!383581 l!9132))))))

(assert (=> b!7154514 d!2229397))

(declare-fun d!2229399 () Bool)

(assert (=> d!2229399 (= (tail!14029 (t!383581 l!9132)) (t!383581 (t!383581 l!9132)))))

(assert (=> b!7154514 d!2229399))

(declare-fun b!7154735 () Bool)

(declare-fun e!4298191 () Bool)

(declare-fun e!4298189 () Bool)

(assert (=> b!7154735 (= e!4298191 e!4298189)))

(declare-fun c!1333473 () Bool)

(assert (=> b!7154735 (= c!1333473 (is-Union!18260 lt!2569164))))

(declare-fun b!7154736 () Bool)

(declare-fun res!2917567 () Bool)

(declare-fun e!4298190 () Bool)

(assert (=> b!7154736 (=> res!2917567 e!4298190)))

(assert (=> b!7154736 (= res!2917567 (not (is-Concat!27105 lt!2569164)))))

(assert (=> b!7154736 (= e!4298189 e!4298190)))

(declare-fun bm!651658 () Bool)

(declare-fun call!651664 () Bool)

(declare-fun call!651665 () Bool)

(assert (=> bm!651658 (= call!651664 call!651665)))

(declare-fun b!7154737 () Bool)

(declare-fun res!2917568 () Bool)

(declare-fun e!4298193 () Bool)

(assert (=> b!7154737 (=> (not res!2917568) (not e!4298193))))

(assert (=> b!7154737 (= res!2917568 call!651664)))

(assert (=> b!7154737 (= e!4298189 e!4298193)))

(declare-fun bm!651659 () Bool)

(declare-fun call!651663 () Bool)

(assert (=> bm!651659 (= call!651663 (validRegex!9408 (ite c!1333473 (regTwo!37033 lt!2569164) (regTwo!37032 lt!2569164))))))

(declare-fun b!7154738 () Bool)

(declare-fun e!4298192 () Bool)

(assert (=> b!7154738 (= e!4298191 e!4298192)))

(declare-fun res!2917565 () Bool)

(assert (=> b!7154738 (= res!2917565 (not (nullable!7737 (reg!18589 lt!2569164))))))

(assert (=> b!7154738 (=> (not res!2917565) (not e!4298192))))

(declare-fun b!7154739 () Bool)

(declare-fun e!4298195 () Bool)

(assert (=> b!7154739 (= e!4298195 e!4298191)))

(declare-fun c!1333472 () Bool)

(assert (=> b!7154739 (= c!1333472 (is-Star!18260 lt!2569164))))

(declare-fun b!7154740 () Bool)

(assert (=> b!7154740 (= e!4298193 call!651663)))

(declare-fun b!7154742 () Bool)

(declare-fun e!4298194 () Bool)

(assert (=> b!7154742 (= e!4298190 e!4298194)))

(declare-fun res!2917566 () Bool)

(assert (=> b!7154742 (=> (not res!2917566) (not e!4298194))))

(assert (=> b!7154742 (= res!2917566 call!651664)))

(declare-fun b!7154741 () Bool)

(assert (=> b!7154741 (= e!4298192 call!651665)))

(declare-fun d!2229401 () Bool)

(declare-fun res!2917569 () Bool)

(assert (=> d!2229401 (=> res!2917569 e!4298195)))

(assert (=> d!2229401 (= res!2917569 (is-ElementMatch!18260 lt!2569164))))

(assert (=> d!2229401 (= (validRegex!9408 lt!2569164) e!4298195)))

(declare-fun b!7154743 () Bool)

(assert (=> b!7154743 (= e!4298194 call!651663)))

(declare-fun bm!651660 () Bool)

(assert (=> bm!651660 (= call!651665 (validRegex!9408 (ite c!1333472 (reg!18589 lt!2569164) (ite c!1333473 (regOne!37033 lt!2569164) (regOne!37032 lt!2569164)))))))

(assert (= (and d!2229401 (not res!2917569)) b!7154739))

(assert (= (and b!7154739 c!1333472) b!7154738))

(assert (= (and b!7154739 (not c!1333472)) b!7154735))

(assert (= (and b!7154738 res!2917565) b!7154741))

(assert (= (and b!7154735 c!1333473) b!7154737))

(assert (= (and b!7154735 (not c!1333473)) b!7154736))

(assert (= (and b!7154737 res!2917568) b!7154740))

(assert (= (and b!7154736 (not res!2917567)) b!7154742))

(assert (= (and b!7154742 res!2917566) b!7154743))

(assert (= (or b!7154737 b!7154742) bm!651658))

(assert (= (or b!7154740 b!7154743) bm!651659))

(assert (= (or b!7154741 bm!651658) bm!651660))

(declare-fun m!7862354 () Bool)

(assert (=> bm!651659 m!7862354))

(declare-fun m!7862356 () Bool)

(assert (=> b!7154738 m!7862356))

(declare-fun m!7862358 () Bool)

(assert (=> bm!651660 m!7862358))

(assert (=> d!2229339 d!2229401))

(declare-fun d!2229403 () Bool)

(declare-fun res!2917570 () Bool)

(declare-fun e!4298196 () Bool)

(assert (=> d!2229403 (=> res!2917570 e!4298196)))

(assert (=> d!2229403 (= res!2917570 (is-Nil!69440 l!9132))))

(assert (=> d!2229403 (= (forall!17100 l!9132 lambda!436306) e!4298196)))

(declare-fun b!7154744 () Bool)

(declare-fun e!4298197 () Bool)

(assert (=> b!7154744 (= e!4298196 e!4298197)))

(declare-fun res!2917571 () Bool)

(assert (=> b!7154744 (=> (not res!2917571) (not e!4298197))))

(assert (=> b!7154744 (= res!2917571 (dynLambda!28295 lambda!436306 (h!75888 l!9132)))))

(declare-fun b!7154745 () Bool)

(assert (=> b!7154745 (= e!4298197 (forall!17100 (t!383581 l!9132) lambda!436306))))

(assert (= (and d!2229403 (not res!2917570)) b!7154744))

(assert (= (and b!7154744 res!2917571) b!7154745))

(declare-fun b_lambda!273237 () Bool)

(assert (=> (not b_lambda!273237) (not b!7154744)))

(declare-fun m!7862360 () Bool)

(assert (=> b!7154744 m!7862360))

(declare-fun m!7862362 () Bool)

(assert (=> b!7154745 m!7862362))

(assert (=> d!2229339 d!2229403))

(declare-fun d!2229405 () Bool)

(assert (=> d!2229405 (= (head!14560 (t!383581 l!9132)) (h!75888 (t!383581 l!9132)))))

(assert (=> b!7154513 d!2229405))

(assert (=> b!7154531 d!2229319))

(declare-fun d!2229407 () Bool)

(declare-fun res!2917572 () Bool)

(declare-fun e!4298198 () Bool)

(assert (=> d!2229407 (=> res!2917572 e!4298198)))

(assert (=> d!2229407 (= res!2917572 (is-Nil!69440 l!9132))))

(assert (=> d!2229407 (= (forall!17100 l!9132 lambda!436302) e!4298198)))

(declare-fun b!7154746 () Bool)

(declare-fun e!4298199 () Bool)

(assert (=> b!7154746 (= e!4298198 e!4298199)))

(declare-fun res!2917573 () Bool)

(assert (=> b!7154746 (=> (not res!2917573) (not e!4298199))))

(assert (=> b!7154746 (= res!2917573 (dynLambda!28295 lambda!436302 (h!75888 l!9132)))))

(declare-fun b!7154747 () Bool)

(assert (=> b!7154747 (= e!4298199 (forall!17100 (t!383581 l!9132) lambda!436302))))

(assert (= (and d!2229407 (not res!2917572)) b!7154746))

(assert (= (and b!7154746 res!2917573) b!7154747))

(declare-fun b_lambda!273239 () Bool)

(assert (=> (not b_lambda!273239) (not b!7154746)))

(declare-fun m!7862364 () Bool)

(assert (=> b!7154746 m!7862364))

(declare-fun m!7862366 () Bool)

(assert (=> b!7154747 m!7862366))

(assert (=> d!2229329 d!2229407))

(declare-fun d!2229409 () Bool)

(assert (=> d!2229409 (= (isUnion!1552 lt!2569164) (is-Union!18260 lt!2569164))))

(assert (=> b!7154524 d!2229409))

(assert (=> b!7154521 d!2229317))

(declare-fun bm!651661 () Bool)

(declare-fun call!651666 () Bool)

(declare-fun c!1333474 () Bool)

(assert (=> bm!651661 (= call!651666 (nullable!7737 (ite c!1333474 (regTwo!37033 r!13749) (regOne!37032 r!13749))))))

(declare-fun b!7154748 () Bool)

(declare-fun e!4298201 () Bool)

(declare-fun e!4298203 () Bool)

(assert (=> b!7154748 (= e!4298201 e!4298203)))

(declare-fun res!2917576 () Bool)

(assert (=> b!7154748 (=> res!2917576 e!4298203)))

(assert (=> b!7154748 (= res!2917576 (is-Star!18260 r!13749))))

(declare-fun b!7154749 () Bool)

(declare-fun e!4298205 () Bool)

(assert (=> b!7154749 (= e!4298205 e!4298201)))

(declare-fun res!2917577 () Bool)

(assert (=> b!7154749 (=> (not res!2917577) (not e!4298201))))

(assert (=> b!7154749 (= res!2917577 (and (not (is-EmptyLang!18260 r!13749)) (not (is-ElementMatch!18260 r!13749))))))

(declare-fun d!2229411 () Bool)

(declare-fun res!2917575 () Bool)

(assert (=> d!2229411 (=> res!2917575 e!4298205)))

(assert (=> d!2229411 (= res!2917575 (is-EmptyExpr!18260 r!13749))))

(assert (=> d!2229411 (= (nullableFct!3015 r!13749) e!4298205)))

(declare-fun b!7154750 () Bool)

(declare-fun e!4298200 () Bool)

(assert (=> b!7154750 (= e!4298203 e!4298200)))

(assert (=> b!7154750 (= c!1333474 (is-Union!18260 r!13749))))

(declare-fun b!7154751 () Bool)

(declare-fun e!4298202 () Bool)

(assert (=> b!7154751 (= e!4298200 e!4298202)))

(declare-fun res!2917578 () Bool)

(declare-fun call!651667 () Bool)

(assert (=> b!7154751 (= res!2917578 call!651667)))

(assert (=> b!7154751 (=> res!2917578 e!4298202)))

(declare-fun bm!651662 () Bool)

(assert (=> bm!651662 (= call!651667 (nullable!7737 (ite c!1333474 (regOne!37033 r!13749) (regTwo!37032 r!13749))))))

(declare-fun b!7154752 () Bool)

(declare-fun e!4298204 () Bool)

(assert (=> b!7154752 (= e!4298200 e!4298204)))

(declare-fun res!2917574 () Bool)

(assert (=> b!7154752 (= res!2917574 call!651666)))

(assert (=> b!7154752 (=> (not res!2917574) (not e!4298204))))

(declare-fun b!7154753 () Bool)

(assert (=> b!7154753 (= e!4298204 call!651667)))

(declare-fun b!7154754 () Bool)

(assert (=> b!7154754 (= e!4298202 call!651666)))

(assert (= (and d!2229411 (not res!2917575)) b!7154749))

(assert (= (and b!7154749 res!2917577) b!7154748))

(assert (= (and b!7154748 (not res!2917576)) b!7154750))

(assert (= (and b!7154750 c!1333474) b!7154751))

(assert (= (and b!7154750 (not c!1333474)) b!7154752))

(assert (= (and b!7154751 (not res!2917578)) b!7154754))

(assert (= (and b!7154752 res!2917574) b!7154753))

(assert (= (or b!7154754 b!7154752) bm!651661))

(assert (= (or b!7154751 b!7154753) bm!651662))

(declare-fun m!7862368 () Bool)

(assert (=> bm!651661 m!7862368))

(declare-fun m!7862370 () Bool)

(assert (=> bm!651662 m!7862370))

(assert (=> d!2229337 d!2229411))

(declare-fun d!2229413 () Bool)

(declare-fun res!2917579 () Bool)

(declare-fun e!4298206 () Bool)

(assert (=> d!2229413 (=> res!2917579 e!4298206)))

(assert (=> d!2229413 (= res!2917579 (is-Nil!69440 (t!383581 (t!383581 l!9132))))))

(assert (=> d!2229413 (= (forall!17100 (t!383581 (t!383581 l!9132)) lambda!436273) e!4298206)))

(declare-fun b!7154755 () Bool)

(declare-fun e!4298207 () Bool)

(assert (=> b!7154755 (= e!4298206 e!4298207)))

(declare-fun res!2917580 () Bool)

(assert (=> b!7154755 (=> (not res!2917580) (not e!4298207))))

(assert (=> b!7154755 (= res!2917580 (dynLambda!28295 lambda!436273 (h!75888 (t!383581 (t!383581 l!9132)))))))

(declare-fun b!7154756 () Bool)

(assert (=> b!7154756 (= e!4298207 (forall!17100 (t!383581 (t!383581 (t!383581 l!9132))) lambda!436273))))

(assert (= (and d!2229413 (not res!2917579)) b!7154755))

(assert (= (and b!7154755 res!2917580) b!7154756))

(declare-fun b_lambda!273241 () Bool)

(assert (=> (not b_lambda!273241) (not b!7154755)))

(declare-fun m!7862372 () Bool)

(assert (=> b!7154755 m!7862372))

(declare-fun m!7862374 () Bool)

(assert (=> b!7154756 m!7862374))

(assert (=> b!7154489 d!2229413))

(assert (=> b!7154526 d!2229315))

(declare-fun b!7154757 () Bool)

(declare-fun e!4298210 () Bool)

(declare-fun e!4298208 () Bool)

(assert (=> b!7154757 (= e!4298210 e!4298208)))

(declare-fun c!1333476 () Bool)

(assert (=> b!7154757 (= c!1333476 (is-Union!18260 (h!75888 (t!383581 l!9132))))))

(declare-fun b!7154758 () Bool)

(declare-fun res!2917583 () Bool)

(declare-fun e!4298209 () Bool)

(assert (=> b!7154758 (=> res!2917583 e!4298209)))

(assert (=> b!7154758 (= res!2917583 (not (is-Concat!27105 (h!75888 (t!383581 l!9132)))))))

(assert (=> b!7154758 (= e!4298208 e!4298209)))

(declare-fun bm!651663 () Bool)

(declare-fun call!651669 () Bool)

(declare-fun call!651670 () Bool)

(assert (=> bm!651663 (= call!651669 call!651670)))

(declare-fun b!7154759 () Bool)

(declare-fun res!2917584 () Bool)

(declare-fun e!4298212 () Bool)

(assert (=> b!7154759 (=> (not res!2917584) (not e!4298212))))

(assert (=> b!7154759 (= res!2917584 call!651669)))

(assert (=> b!7154759 (= e!4298208 e!4298212)))

(declare-fun bm!651664 () Bool)

(declare-fun call!651668 () Bool)

(assert (=> bm!651664 (= call!651668 (validRegex!9408 (ite c!1333476 (regTwo!37033 (h!75888 (t!383581 l!9132))) (regTwo!37032 (h!75888 (t!383581 l!9132))))))))

(declare-fun b!7154760 () Bool)

(declare-fun e!4298211 () Bool)

(assert (=> b!7154760 (= e!4298210 e!4298211)))

(declare-fun res!2917581 () Bool)

(assert (=> b!7154760 (= res!2917581 (not (nullable!7737 (reg!18589 (h!75888 (t!383581 l!9132))))))))

(assert (=> b!7154760 (=> (not res!2917581) (not e!4298211))))

(declare-fun b!7154761 () Bool)

(declare-fun e!4298214 () Bool)

(assert (=> b!7154761 (= e!4298214 e!4298210)))

(declare-fun c!1333475 () Bool)

(assert (=> b!7154761 (= c!1333475 (is-Star!18260 (h!75888 (t!383581 l!9132))))))

(declare-fun b!7154762 () Bool)

(assert (=> b!7154762 (= e!4298212 call!651668)))

(declare-fun b!7154764 () Bool)

(declare-fun e!4298213 () Bool)

(assert (=> b!7154764 (= e!4298209 e!4298213)))

(declare-fun res!2917582 () Bool)

(assert (=> b!7154764 (=> (not res!2917582) (not e!4298213))))

(assert (=> b!7154764 (= res!2917582 call!651669)))

(declare-fun b!7154763 () Bool)

(assert (=> b!7154763 (= e!4298211 call!651670)))

(declare-fun d!2229415 () Bool)

(declare-fun res!2917585 () Bool)

(assert (=> d!2229415 (=> res!2917585 e!4298214)))

(assert (=> d!2229415 (= res!2917585 (is-ElementMatch!18260 (h!75888 (t!383581 l!9132))))))

(assert (=> d!2229415 (= (validRegex!9408 (h!75888 (t!383581 l!9132))) e!4298214)))

(declare-fun b!7154765 () Bool)

(assert (=> b!7154765 (= e!4298213 call!651668)))

(declare-fun bm!651665 () Bool)

(assert (=> bm!651665 (= call!651670 (validRegex!9408 (ite c!1333475 (reg!18589 (h!75888 (t!383581 l!9132))) (ite c!1333476 (regOne!37033 (h!75888 (t!383581 l!9132))) (regOne!37032 (h!75888 (t!383581 l!9132)))))))))

(assert (= (and d!2229415 (not res!2917585)) b!7154761))

(assert (= (and b!7154761 c!1333475) b!7154760))

(assert (= (and b!7154761 (not c!1333475)) b!7154757))

(assert (= (and b!7154760 res!2917581) b!7154763))

(assert (= (and b!7154757 c!1333476) b!7154759))

(assert (= (and b!7154757 (not c!1333476)) b!7154758))

(assert (= (and b!7154759 res!2917584) b!7154762))

(assert (= (and b!7154758 (not res!2917583)) b!7154764))

(assert (= (and b!7154764 res!2917582) b!7154765))

(assert (= (or b!7154759 b!7154764) bm!651663))

(assert (= (or b!7154762 b!7154765) bm!651664))

(assert (= (or b!7154763 bm!651663) bm!651665))

(declare-fun m!7862376 () Bool)

(assert (=> bm!651664 m!7862376))

(declare-fun m!7862378 () Bool)

(assert (=> b!7154760 m!7862378))

(declare-fun m!7862380 () Bool)

(assert (=> bm!651665 m!7862380))

(assert (=> bs!1889728 d!2229415))

(declare-fun b!7154767 () Bool)

(declare-fun e!4298215 () Bool)

(declare-fun tp!1977827 () Bool)

(declare-fun tp!1977828 () Bool)

(assert (=> b!7154767 (= e!4298215 (and tp!1977827 tp!1977828))))

(declare-fun b!7154769 () Bool)

(declare-fun tp!1977830 () Bool)

(declare-fun tp!1977826 () Bool)

(assert (=> b!7154769 (= e!4298215 (and tp!1977830 tp!1977826))))

(declare-fun b!7154768 () Bool)

(declare-fun tp!1977829 () Bool)

(assert (=> b!7154768 (= e!4298215 tp!1977829)))

(declare-fun b!7154766 () Bool)

(assert (=> b!7154766 (= e!4298215 tp_is_empty!46153)))

(assert (=> b!7154547 (= tp!1977745 e!4298215)))

(assert (= (and b!7154547 (is-ElementMatch!18260 (regOne!37032 (reg!18589 r!13749)))) b!7154766))

(assert (= (and b!7154547 (is-Concat!27105 (regOne!37032 (reg!18589 r!13749)))) b!7154767))

(assert (= (and b!7154547 (is-Star!18260 (regOne!37032 (reg!18589 r!13749)))) b!7154768))

(assert (= (and b!7154547 (is-Union!18260 (regOne!37032 (reg!18589 r!13749)))) b!7154769))

(declare-fun b!7154771 () Bool)

(declare-fun e!4298216 () Bool)

(declare-fun tp!1977832 () Bool)

(declare-fun tp!1977833 () Bool)

(assert (=> b!7154771 (= e!4298216 (and tp!1977832 tp!1977833))))

(declare-fun b!7154773 () Bool)

(declare-fun tp!1977835 () Bool)

(declare-fun tp!1977831 () Bool)

(assert (=> b!7154773 (= e!4298216 (and tp!1977835 tp!1977831))))

(declare-fun b!7154772 () Bool)

(declare-fun tp!1977834 () Bool)

(assert (=> b!7154772 (= e!4298216 tp!1977834)))

(declare-fun b!7154770 () Bool)

(assert (=> b!7154770 (= e!4298216 tp_is_empty!46153)))

(assert (=> b!7154547 (= tp!1977746 e!4298216)))

(assert (= (and b!7154547 (is-ElementMatch!18260 (regTwo!37032 (reg!18589 r!13749)))) b!7154770))

(assert (= (and b!7154547 (is-Concat!27105 (regTwo!37032 (reg!18589 r!13749)))) b!7154771))

(assert (= (and b!7154547 (is-Star!18260 (regTwo!37032 (reg!18589 r!13749)))) b!7154772))

(assert (= (and b!7154547 (is-Union!18260 (regTwo!37032 (reg!18589 r!13749)))) b!7154773))

(declare-fun b!7154775 () Bool)

(declare-fun e!4298217 () Bool)

(declare-fun tp!1977837 () Bool)

(declare-fun tp!1977838 () Bool)

(assert (=> b!7154775 (= e!4298217 (and tp!1977837 tp!1977838))))

(declare-fun b!7154777 () Bool)

(declare-fun tp!1977840 () Bool)

(declare-fun tp!1977836 () Bool)

(assert (=> b!7154777 (= e!4298217 (and tp!1977840 tp!1977836))))

(declare-fun b!7154776 () Bool)

(declare-fun tp!1977839 () Bool)

(assert (=> b!7154776 (= e!4298217 tp!1977839)))

(declare-fun b!7154774 () Bool)

(assert (=> b!7154774 (= e!4298217 tp_is_empty!46153)))

(assert (=> b!7154574 (= tp!1977778 e!4298217)))

(assert (= (and b!7154574 (is-ElementMatch!18260 (h!75888 (t!383581 l!9132)))) b!7154774))

(assert (= (and b!7154574 (is-Concat!27105 (h!75888 (t!383581 l!9132)))) b!7154775))

(assert (= (and b!7154574 (is-Star!18260 (h!75888 (t!383581 l!9132)))) b!7154776))

(assert (= (and b!7154574 (is-Union!18260 (h!75888 (t!383581 l!9132)))) b!7154777))

(declare-fun b!7154778 () Bool)

(declare-fun e!4298218 () Bool)

(declare-fun tp!1977841 () Bool)

(declare-fun tp!1977842 () Bool)

(assert (=> b!7154778 (= e!4298218 (and tp!1977841 tp!1977842))))

(assert (=> b!7154574 (= tp!1977779 e!4298218)))

(assert (= (and b!7154574 (is-Cons!69440 (t!383581 (t!383581 l!9132)))) b!7154778))

(declare-fun b!7154780 () Bool)

(declare-fun e!4298219 () Bool)

(declare-fun tp!1977844 () Bool)

(declare-fun tp!1977845 () Bool)

(assert (=> b!7154780 (= e!4298219 (and tp!1977844 tp!1977845))))

(declare-fun b!7154782 () Bool)

(declare-fun tp!1977847 () Bool)

(declare-fun tp!1977843 () Bool)

(assert (=> b!7154782 (= e!4298219 (and tp!1977847 tp!1977843))))

(declare-fun b!7154781 () Bool)

(declare-fun tp!1977846 () Bool)

(assert (=> b!7154781 (= e!4298219 tp!1977846)))

(declare-fun b!7154779 () Bool)

(assert (=> b!7154779 (= e!4298219 tp_is_empty!46153)))

(assert (=> b!7154548 (= tp!1977747 e!4298219)))

(assert (= (and b!7154548 (is-ElementMatch!18260 (reg!18589 (reg!18589 r!13749)))) b!7154779))

(assert (= (and b!7154548 (is-Concat!27105 (reg!18589 (reg!18589 r!13749)))) b!7154780))

(assert (= (and b!7154548 (is-Star!18260 (reg!18589 (reg!18589 r!13749)))) b!7154781))

(assert (= (and b!7154548 (is-Union!18260 (reg!18589 (reg!18589 r!13749)))) b!7154782))

(declare-fun b!7154784 () Bool)

(declare-fun e!4298220 () Bool)

(declare-fun tp!1977849 () Bool)

(declare-fun tp!1977850 () Bool)

(assert (=> b!7154784 (= e!4298220 (and tp!1977849 tp!1977850))))

(declare-fun b!7154786 () Bool)

(declare-fun tp!1977852 () Bool)

(declare-fun tp!1977848 () Bool)

(assert (=> b!7154786 (= e!4298220 (and tp!1977852 tp!1977848))))

(declare-fun b!7154785 () Bool)

(declare-fun tp!1977851 () Bool)

(assert (=> b!7154785 (= e!4298220 tp!1977851)))

(declare-fun b!7154783 () Bool)

(assert (=> b!7154783 (= e!4298220 tp_is_empty!46153)))

(assert (=> b!7154549 (= tp!1977748 e!4298220)))

(assert (= (and b!7154549 (is-ElementMatch!18260 (regOne!37033 (reg!18589 r!13749)))) b!7154783))

(assert (= (and b!7154549 (is-Concat!27105 (regOne!37033 (reg!18589 r!13749)))) b!7154784))

(assert (= (and b!7154549 (is-Star!18260 (regOne!37033 (reg!18589 r!13749)))) b!7154785))

(assert (= (and b!7154549 (is-Union!18260 (regOne!37033 (reg!18589 r!13749)))) b!7154786))

(declare-fun b!7154788 () Bool)

(declare-fun e!4298221 () Bool)

(declare-fun tp!1977854 () Bool)

(declare-fun tp!1977855 () Bool)

(assert (=> b!7154788 (= e!4298221 (and tp!1977854 tp!1977855))))

(declare-fun b!7154790 () Bool)

(declare-fun tp!1977857 () Bool)

(declare-fun tp!1977853 () Bool)

(assert (=> b!7154790 (= e!4298221 (and tp!1977857 tp!1977853))))

(declare-fun b!7154789 () Bool)

(declare-fun tp!1977856 () Bool)

(assert (=> b!7154789 (= e!4298221 tp!1977856)))

(declare-fun b!7154787 () Bool)

(assert (=> b!7154787 (= e!4298221 tp_is_empty!46153)))

(assert (=> b!7154549 (= tp!1977744 e!4298221)))

(assert (= (and b!7154549 (is-ElementMatch!18260 (regTwo!37033 (reg!18589 r!13749)))) b!7154787))

(assert (= (and b!7154549 (is-Concat!27105 (regTwo!37033 (reg!18589 r!13749)))) b!7154788))

(assert (= (and b!7154549 (is-Star!18260 (regTwo!37033 (reg!18589 r!13749)))) b!7154789))

(assert (= (and b!7154549 (is-Union!18260 (regTwo!37033 (reg!18589 r!13749)))) b!7154790))

(declare-fun b!7154792 () Bool)

(declare-fun e!4298222 () Bool)

(declare-fun tp!1977859 () Bool)

(declare-fun tp!1977860 () Bool)

(assert (=> b!7154792 (= e!4298222 (and tp!1977859 tp!1977860))))

(declare-fun b!7154794 () Bool)

(declare-fun tp!1977862 () Bool)

(declare-fun tp!1977858 () Bool)

(assert (=> b!7154794 (= e!4298222 (and tp!1977862 tp!1977858))))

(declare-fun b!7154793 () Bool)

(declare-fun tp!1977861 () Bool)

(assert (=> b!7154793 (= e!4298222 tp!1977861)))

(declare-fun b!7154791 () Bool)

(assert (=> b!7154791 (= e!4298222 tp_is_empty!46153)))

(assert (=> b!7154551 (= tp!1977750 e!4298222)))

(assert (= (and b!7154551 (is-ElementMatch!18260 (regOne!37032 (regOne!37033 r!13749)))) b!7154791))

(assert (= (and b!7154551 (is-Concat!27105 (regOne!37032 (regOne!37033 r!13749)))) b!7154792))

(assert (= (and b!7154551 (is-Star!18260 (regOne!37032 (regOne!37033 r!13749)))) b!7154793))

(assert (= (and b!7154551 (is-Union!18260 (regOne!37032 (regOne!37033 r!13749)))) b!7154794))

(declare-fun b!7154796 () Bool)

(declare-fun e!4298223 () Bool)

(declare-fun tp!1977864 () Bool)

(declare-fun tp!1977865 () Bool)

(assert (=> b!7154796 (= e!4298223 (and tp!1977864 tp!1977865))))

(declare-fun b!7154798 () Bool)

(declare-fun tp!1977867 () Bool)

(declare-fun tp!1977863 () Bool)

(assert (=> b!7154798 (= e!4298223 (and tp!1977867 tp!1977863))))

(declare-fun b!7154797 () Bool)

(declare-fun tp!1977866 () Bool)

(assert (=> b!7154797 (= e!4298223 tp!1977866)))

(declare-fun b!7154795 () Bool)

(assert (=> b!7154795 (= e!4298223 tp_is_empty!46153)))

(assert (=> b!7154551 (= tp!1977751 e!4298223)))

(assert (= (and b!7154551 (is-ElementMatch!18260 (regTwo!37032 (regOne!37033 r!13749)))) b!7154795))

(assert (= (and b!7154551 (is-Concat!27105 (regTwo!37032 (regOne!37033 r!13749)))) b!7154796))

(assert (= (and b!7154551 (is-Star!18260 (regTwo!37032 (regOne!37033 r!13749)))) b!7154797))

(assert (= (and b!7154551 (is-Union!18260 (regTwo!37032 (regOne!37033 r!13749)))) b!7154798))

(declare-fun b!7154800 () Bool)

(declare-fun e!4298224 () Bool)

(declare-fun tp!1977869 () Bool)

(declare-fun tp!1977870 () Bool)

(assert (=> b!7154800 (= e!4298224 (and tp!1977869 tp!1977870))))

(declare-fun b!7154802 () Bool)

(declare-fun tp!1977872 () Bool)

(declare-fun tp!1977868 () Bool)

(assert (=> b!7154802 (= e!4298224 (and tp!1977872 tp!1977868))))

(declare-fun b!7154801 () Bool)

(declare-fun tp!1977871 () Bool)

(assert (=> b!7154801 (= e!4298224 tp!1977871)))

(declare-fun b!7154799 () Bool)

(assert (=> b!7154799 (= e!4298224 tp_is_empty!46153)))

(assert (=> b!7154567 (= tp!1977770 e!4298224)))

(assert (= (and b!7154567 (is-ElementMatch!18260 (regOne!37032 (h!75888 l!9132)))) b!7154799))

(assert (= (and b!7154567 (is-Concat!27105 (regOne!37032 (h!75888 l!9132)))) b!7154800))

(assert (= (and b!7154567 (is-Star!18260 (regOne!37032 (h!75888 l!9132)))) b!7154801))

(assert (= (and b!7154567 (is-Union!18260 (regOne!37032 (h!75888 l!9132)))) b!7154802))

(declare-fun b!7154804 () Bool)

(declare-fun e!4298225 () Bool)

(declare-fun tp!1977874 () Bool)

(declare-fun tp!1977875 () Bool)

(assert (=> b!7154804 (= e!4298225 (and tp!1977874 tp!1977875))))

(declare-fun b!7154806 () Bool)

(declare-fun tp!1977877 () Bool)

(declare-fun tp!1977873 () Bool)

(assert (=> b!7154806 (= e!4298225 (and tp!1977877 tp!1977873))))

(declare-fun b!7154805 () Bool)

(declare-fun tp!1977876 () Bool)

(assert (=> b!7154805 (= e!4298225 tp!1977876)))

(declare-fun b!7154803 () Bool)

(assert (=> b!7154803 (= e!4298225 tp_is_empty!46153)))

(assert (=> b!7154567 (= tp!1977771 e!4298225)))

(assert (= (and b!7154567 (is-ElementMatch!18260 (regTwo!37032 (h!75888 l!9132)))) b!7154803))

(assert (= (and b!7154567 (is-Concat!27105 (regTwo!37032 (h!75888 l!9132)))) b!7154804))

(assert (= (and b!7154567 (is-Star!18260 (regTwo!37032 (h!75888 l!9132)))) b!7154805))

(assert (= (and b!7154567 (is-Union!18260 (regTwo!37032 (h!75888 l!9132)))) b!7154806))

(declare-fun b!7154808 () Bool)

(declare-fun e!4298226 () Bool)

(declare-fun tp!1977879 () Bool)

(declare-fun tp!1977880 () Bool)

(assert (=> b!7154808 (= e!4298226 (and tp!1977879 tp!1977880))))

(declare-fun b!7154810 () Bool)

(declare-fun tp!1977882 () Bool)

(declare-fun tp!1977878 () Bool)

(assert (=> b!7154810 (= e!4298226 (and tp!1977882 tp!1977878))))

(declare-fun b!7154809 () Bool)

(declare-fun tp!1977881 () Bool)

(assert (=> b!7154809 (= e!4298226 tp!1977881)))

(declare-fun b!7154807 () Bool)

(assert (=> b!7154807 (= e!4298226 tp_is_empty!46153)))

(assert (=> b!7154556 (= tp!1977757 e!4298226)))

(assert (= (and b!7154556 (is-ElementMatch!18260 (reg!18589 (regTwo!37033 r!13749)))) b!7154807))

(assert (= (and b!7154556 (is-Concat!27105 (reg!18589 (regTwo!37033 r!13749)))) b!7154808))

(assert (= (and b!7154556 (is-Star!18260 (reg!18589 (regTwo!37033 r!13749)))) b!7154809))

(assert (= (and b!7154556 (is-Union!18260 (reg!18589 (regTwo!37033 r!13749)))) b!7154810))

(declare-fun b!7154812 () Bool)

(declare-fun e!4298227 () Bool)

(declare-fun tp!1977884 () Bool)

(declare-fun tp!1977885 () Bool)

(assert (=> b!7154812 (= e!4298227 (and tp!1977884 tp!1977885))))

(declare-fun b!7154814 () Bool)

(declare-fun tp!1977887 () Bool)

(declare-fun tp!1977883 () Bool)

(assert (=> b!7154814 (= e!4298227 (and tp!1977887 tp!1977883))))

(declare-fun b!7154813 () Bool)

(declare-fun tp!1977886 () Bool)

(assert (=> b!7154813 (= e!4298227 tp!1977886)))

(declare-fun b!7154811 () Bool)

(assert (=> b!7154811 (= e!4298227 tp_is_empty!46153)))

(assert (=> b!7154552 (= tp!1977752 e!4298227)))

(assert (= (and b!7154552 (is-ElementMatch!18260 (reg!18589 (regOne!37033 r!13749)))) b!7154811))

(assert (= (and b!7154552 (is-Concat!27105 (reg!18589 (regOne!37033 r!13749)))) b!7154812))

(assert (= (and b!7154552 (is-Star!18260 (reg!18589 (regOne!37033 r!13749)))) b!7154813))

(assert (= (and b!7154552 (is-Union!18260 (reg!18589 (regOne!37033 r!13749)))) b!7154814))

(declare-fun b!7154816 () Bool)

(declare-fun e!4298228 () Bool)

(declare-fun tp!1977889 () Bool)

(declare-fun tp!1977890 () Bool)

(assert (=> b!7154816 (= e!4298228 (and tp!1977889 tp!1977890))))

(declare-fun b!7154818 () Bool)

(declare-fun tp!1977892 () Bool)

(declare-fun tp!1977888 () Bool)

(assert (=> b!7154818 (= e!4298228 (and tp!1977892 tp!1977888))))

(declare-fun b!7154817 () Bool)

(declare-fun tp!1977891 () Bool)

(assert (=> b!7154817 (= e!4298228 tp!1977891)))

(declare-fun b!7154815 () Bool)

(assert (=> b!7154815 (= e!4298228 tp_is_empty!46153)))

(assert (=> b!7154563 (= tp!1977765 e!4298228)))

(assert (= (and b!7154563 (is-ElementMatch!18260 (regOne!37032 (regTwo!37032 r!13749)))) b!7154815))

(assert (= (and b!7154563 (is-Concat!27105 (regOne!37032 (regTwo!37032 r!13749)))) b!7154816))

(assert (= (and b!7154563 (is-Star!18260 (regOne!37032 (regTwo!37032 r!13749)))) b!7154817))

(assert (= (and b!7154563 (is-Union!18260 (regOne!37032 (regTwo!37032 r!13749)))) b!7154818))

(declare-fun b!7154820 () Bool)

(declare-fun e!4298229 () Bool)

(declare-fun tp!1977894 () Bool)

(declare-fun tp!1977895 () Bool)

(assert (=> b!7154820 (= e!4298229 (and tp!1977894 tp!1977895))))

(declare-fun b!7154822 () Bool)

(declare-fun tp!1977897 () Bool)

(declare-fun tp!1977893 () Bool)

(assert (=> b!7154822 (= e!4298229 (and tp!1977897 tp!1977893))))

(declare-fun b!7154821 () Bool)

(declare-fun tp!1977896 () Bool)

(assert (=> b!7154821 (= e!4298229 tp!1977896)))

(declare-fun b!7154819 () Bool)

(assert (=> b!7154819 (= e!4298229 tp_is_empty!46153)))

(assert (=> b!7154563 (= tp!1977766 e!4298229)))

(assert (= (and b!7154563 (is-ElementMatch!18260 (regTwo!37032 (regTwo!37032 r!13749)))) b!7154819))

(assert (= (and b!7154563 (is-Concat!27105 (regTwo!37032 (regTwo!37032 r!13749)))) b!7154820))

(assert (= (and b!7154563 (is-Star!18260 (regTwo!37032 (regTwo!37032 r!13749)))) b!7154821))

(assert (= (and b!7154563 (is-Union!18260 (regTwo!37032 (regTwo!37032 r!13749)))) b!7154822))

(declare-fun b!7154824 () Bool)

(declare-fun e!4298230 () Bool)

(declare-fun tp!1977899 () Bool)

(declare-fun tp!1977900 () Bool)

(assert (=> b!7154824 (= e!4298230 (and tp!1977899 tp!1977900))))

(declare-fun b!7154826 () Bool)

(declare-fun tp!1977902 () Bool)

(declare-fun tp!1977898 () Bool)

(assert (=> b!7154826 (= e!4298230 (and tp!1977902 tp!1977898))))

(declare-fun b!7154825 () Bool)

(declare-fun tp!1977901 () Bool)

(assert (=> b!7154825 (= e!4298230 tp!1977901)))

(declare-fun b!7154823 () Bool)

(assert (=> b!7154823 (= e!4298230 tp_is_empty!46153)))

(assert (=> b!7154559 (= tp!1977760 e!4298230)))

(assert (= (and b!7154559 (is-ElementMatch!18260 (regOne!37032 (regOne!37032 r!13749)))) b!7154823))

(assert (= (and b!7154559 (is-Concat!27105 (regOne!37032 (regOne!37032 r!13749)))) b!7154824))

(assert (= (and b!7154559 (is-Star!18260 (regOne!37032 (regOne!37032 r!13749)))) b!7154825))

(assert (= (and b!7154559 (is-Union!18260 (regOne!37032 (regOne!37032 r!13749)))) b!7154826))

(declare-fun b!7154828 () Bool)

(declare-fun e!4298231 () Bool)

(declare-fun tp!1977904 () Bool)

(declare-fun tp!1977905 () Bool)

(assert (=> b!7154828 (= e!4298231 (and tp!1977904 tp!1977905))))

(declare-fun b!7154830 () Bool)

(declare-fun tp!1977907 () Bool)

(declare-fun tp!1977903 () Bool)

(assert (=> b!7154830 (= e!4298231 (and tp!1977907 tp!1977903))))

(declare-fun b!7154829 () Bool)

(declare-fun tp!1977906 () Bool)

(assert (=> b!7154829 (= e!4298231 tp!1977906)))

(declare-fun b!7154827 () Bool)

(assert (=> b!7154827 (= e!4298231 tp_is_empty!46153)))

(assert (=> b!7154559 (= tp!1977761 e!4298231)))

(assert (= (and b!7154559 (is-ElementMatch!18260 (regTwo!37032 (regOne!37032 r!13749)))) b!7154827))

(assert (= (and b!7154559 (is-Concat!27105 (regTwo!37032 (regOne!37032 r!13749)))) b!7154828))

(assert (= (and b!7154559 (is-Star!18260 (regTwo!37032 (regOne!37032 r!13749)))) b!7154829))

(assert (= (and b!7154559 (is-Union!18260 (regTwo!37032 (regOne!37032 r!13749)))) b!7154830))

(declare-fun b!7154832 () Bool)

(declare-fun e!4298232 () Bool)

(declare-fun tp!1977909 () Bool)

(declare-fun tp!1977910 () Bool)

(assert (=> b!7154832 (= e!4298232 (and tp!1977909 tp!1977910))))

(declare-fun b!7154834 () Bool)

(declare-fun tp!1977912 () Bool)

(declare-fun tp!1977908 () Bool)

(assert (=> b!7154834 (= e!4298232 (and tp!1977912 tp!1977908))))

(declare-fun b!7154833 () Bool)

(declare-fun tp!1977911 () Bool)

(assert (=> b!7154833 (= e!4298232 tp!1977911)))

(declare-fun b!7154831 () Bool)

(assert (=> b!7154831 (= e!4298232 tp_is_empty!46153)))

(assert (=> b!7154555 (= tp!1977755 e!4298232)))

(assert (= (and b!7154555 (is-ElementMatch!18260 (regOne!37032 (regTwo!37033 r!13749)))) b!7154831))

(assert (= (and b!7154555 (is-Concat!27105 (regOne!37032 (regTwo!37033 r!13749)))) b!7154832))

(assert (= (and b!7154555 (is-Star!18260 (regOne!37032 (regTwo!37033 r!13749)))) b!7154833))

(assert (= (and b!7154555 (is-Union!18260 (regOne!37032 (regTwo!37033 r!13749)))) b!7154834))

(declare-fun b!7154836 () Bool)

(declare-fun e!4298233 () Bool)

(declare-fun tp!1977914 () Bool)

(declare-fun tp!1977915 () Bool)

(assert (=> b!7154836 (= e!4298233 (and tp!1977914 tp!1977915))))

(declare-fun b!7154838 () Bool)

(declare-fun tp!1977917 () Bool)

(declare-fun tp!1977913 () Bool)

(assert (=> b!7154838 (= e!4298233 (and tp!1977917 tp!1977913))))

(declare-fun b!7154837 () Bool)

(declare-fun tp!1977916 () Bool)

(assert (=> b!7154837 (= e!4298233 tp!1977916)))

(declare-fun b!7154835 () Bool)

(assert (=> b!7154835 (= e!4298233 tp_is_empty!46153)))

(assert (=> b!7154555 (= tp!1977756 e!4298233)))

(assert (= (and b!7154555 (is-ElementMatch!18260 (regTwo!37032 (regTwo!37033 r!13749)))) b!7154835))

(assert (= (and b!7154555 (is-Concat!27105 (regTwo!37032 (regTwo!37033 r!13749)))) b!7154836))

(assert (= (and b!7154555 (is-Star!18260 (regTwo!37032 (regTwo!37033 r!13749)))) b!7154837))

(assert (= (and b!7154555 (is-Union!18260 (regTwo!37032 (regTwo!37033 r!13749)))) b!7154838))

(declare-fun b!7154840 () Bool)

(declare-fun e!4298234 () Bool)

(declare-fun tp!1977919 () Bool)

(declare-fun tp!1977920 () Bool)

(assert (=> b!7154840 (= e!4298234 (and tp!1977919 tp!1977920))))

(declare-fun b!7154842 () Bool)

(declare-fun tp!1977922 () Bool)

(declare-fun tp!1977918 () Bool)

(assert (=> b!7154842 (= e!4298234 (and tp!1977922 tp!1977918))))

(declare-fun b!7154841 () Bool)

(declare-fun tp!1977921 () Bool)

(assert (=> b!7154841 (= e!4298234 tp!1977921)))

(declare-fun b!7154839 () Bool)

(assert (=> b!7154839 (= e!4298234 tp_is_empty!46153)))

(assert (=> b!7154561 (= tp!1977763 e!4298234)))

(assert (= (and b!7154561 (is-ElementMatch!18260 (regOne!37033 (regOne!37032 r!13749)))) b!7154839))

(assert (= (and b!7154561 (is-Concat!27105 (regOne!37033 (regOne!37032 r!13749)))) b!7154840))

(assert (= (and b!7154561 (is-Star!18260 (regOne!37033 (regOne!37032 r!13749)))) b!7154841))

(assert (= (and b!7154561 (is-Union!18260 (regOne!37033 (regOne!37032 r!13749)))) b!7154842))

(declare-fun b!7154844 () Bool)

(declare-fun e!4298235 () Bool)

(declare-fun tp!1977924 () Bool)

(declare-fun tp!1977925 () Bool)

(assert (=> b!7154844 (= e!4298235 (and tp!1977924 tp!1977925))))

(declare-fun b!7154846 () Bool)

(declare-fun tp!1977927 () Bool)

(declare-fun tp!1977923 () Bool)

(assert (=> b!7154846 (= e!4298235 (and tp!1977927 tp!1977923))))

(declare-fun b!7154845 () Bool)

(declare-fun tp!1977926 () Bool)

(assert (=> b!7154845 (= e!4298235 tp!1977926)))

(declare-fun b!7154843 () Bool)

(assert (=> b!7154843 (= e!4298235 tp_is_empty!46153)))

(assert (=> b!7154561 (= tp!1977759 e!4298235)))

(assert (= (and b!7154561 (is-ElementMatch!18260 (regTwo!37033 (regOne!37032 r!13749)))) b!7154843))

(assert (= (and b!7154561 (is-Concat!27105 (regTwo!37033 (regOne!37032 r!13749)))) b!7154844))

(assert (= (and b!7154561 (is-Star!18260 (regTwo!37033 (regOne!37032 r!13749)))) b!7154845))

(assert (= (and b!7154561 (is-Union!18260 (regTwo!37033 (regOne!37032 r!13749)))) b!7154846))

(declare-fun b!7154848 () Bool)

(declare-fun e!4298236 () Bool)

(declare-fun tp!1977929 () Bool)

(declare-fun tp!1977930 () Bool)

(assert (=> b!7154848 (= e!4298236 (and tp!1977929 tp!1977930))))

(declare-fun b!7154850 () Bool)

(declare-fun tp!1977932 () Bool)

(declare-fun tp!1977928 () Bool)

(assert (=> b!7154850 (= e!4298236 (and tp!1977932 tp!1977928))))

(declare-fun b!7154849 () Bool)

(declare-fun tp!1977931 () Bool)

(assert (=> b!7154849 (= e!4298236 tp!1977931)))

(declare-fun b!7154847 () Bool)

(assert (=> b!7154847 (= e!4298236 tp_is_empty!46153)))

(assert (=> b!7154568 (= tp!1977772 e!4298236)))

(assert (= (and b!7154568 (is-ElementMatch!18260 (reg!18589 (h!75888 l!9132)))) b!7154847))

(assert (= (and b!7154568 (is-Concat!27105 (reg!18589 (h!75888 l!9132)))) b!7154848))

(assert (= (and b!7154568 (is-Star!18260 (reg!18589 (h!75888 l!9132)))) b!7154849))

(assert (= (and b!7154568 (is-Union!18260 (reg!18589 (h!75888 l!9132)))) b!7154850))

(declare-fun b!7154852 () Bool)

(declare-fun e!4298237 () Bool)

(declare-fun tp!1977934 () Bool)

(declare-fun tp!1977935 () Bool)

(assert (=> b!7154852 (= e!4298237 (and tp!1977934 tp!1977935))))

(declare-fun b!7154854 () Bool)

(declare-fun tp!1977937 () Bool)

(declare-fun tp!1977933 () Bool)

(assert (=> b!7154854 (= e!4298237 (and tp!1977937 tp!1977933))))

(declare-fun b!7154853 () Bool)

(declare-fun tp!1977936 () Bool)

(assert (=> b!7154853 (= e!4298237 tp!1977936)))

(declare-fun b!7154851 () Bool)

(assert (=> b!7154851 (= e!4298237 tp_is_empty!46153)))

(assert (=> b!7154557 (= tp!1977758 e!4298237)))

(assert (= (and b!7154557 (is-ElementMatch!18260 (regOne!37033 (regTwo!37033 r!13749)))) b!7154851))

(assert (= (and b!7154557 (is-Concat!27105 (regOne!37033 (regTwo!37033 r!13749)))) b!7154852))

(assert (= (and b!7154557 (is-Star!18260 (regOne!37033 (regTwo!37033 r!13749)))) b!7154853))

(assert (= (and b!7154557 (is-Union!18260 (regOne!37033 (regTwo!37033 r!13749)))) b!7154854))

(declare-fun b!7154856 () Bool)

(declare-fun e!4298238 () Bool)

(declare-fun tp!1977939 () Bool)

(declare-fun tp!1977940 () Bool)

(assert (=> b!7154856 (= e!4298238 (and tp!1977939 tp!1977940))))

(declare-fun b!7154858 () Bool)

(declare-fun tp!1977942 () Bool)

(declare-fun tp!1977938 () Bool)

(assert (=> b!7154858 (= e!4298238 (and tp!1977942 tp!1977938))))

(declare-fun b!7154857 () Bool)

(declare-fun tp!1977941 () Bool)

(assert (=> b!7154857 (= e!4298238 tp!1977941)))

(declare-fun b!7154855 () Bool)

(assert (=> b!7154855 (= e!4298238 tp_is_empty!46153)))

(assert (=> b!7154557 (= tp!1977754 e!4298238)))

(assert (= (and b!7154557 (is-ElementMatch!18260 (regTwo!37033 (regTwo!37033 r!13749)))) b!7154855))

(assert (= (and b!7154557 (is-Concat!27105 (regTwo!37033 (regTwo!37033 r!13749)))) b!7154856))

(assert (= (and b!7154557 (is-Star!18260 (regTwo!37033 (regTwo!37033 r!13749)))) b!7154857))

(assert (= (and b!7154557 (is-Union!18260 (regTwo!37033 (regTwo!37033 r!13749)))) b!7154858))

(declare-fun b!7154860 () Bool)

(declare-fun e!4298239 () Bool)

(declare-fun tp!1977944 () Bool)

(declare-fun tp!1977945 () Bool)

(assert (=> b!7154860 (= e!4298239 (and tp!1977944 tp!1977945))))

(declare-fun b!7154862 () Bool)

(declare-fun tp!1977947 () Bool)

(declare-fun tp!1977943 () Bool)

(assert (=> b!7154862 (= e!4298239 (and tp!1977947 tp!1977943))))

(declare-fun b!7154861 () Bool)

(declare-fun tp!1977946 () Bool)

(assert (=> b!7154861 (= e!4298239 tp!1977946)))

(declare-fun b!7154859 () Bool)

(assert (=> b!7154859 (= e!4298239 tp_is_empty!46153)))

(assert (=> b!7154553 (= tp!1977753 e!4298239)))

(assert (= (and b!7154553 (is-ElementMatch!18260 (regOne!37033 (regOne!37033 r!13749)))) b!7154859))

(assert (= (and b!7154553 (is-Concat!27105 (regOne!37033 (regOne!37033 r!13749)))) b!7154860))

(assert (= (and b!7154553 (is-Star!18260 (regOne!37033 (regOne!37033 r!13749)))) b!7154861))

(assert (= (and b!7154553 (is-Union!18260 (regOne!37033 (regOne!37033 r!13749)))) b!7154862))

(declare-fun b!7154864 () Bool)

(declare-fun e!4298240 () Bool)

(declare-fun tp!1977949 () Bool)

(declare-fun tp!1977950 () Bool)

(assert (=> b!7154864 (= e!4298240 (and tp!1977949 tp!1977950))))

(declare-fun b!7154866 () Bool)

(declare-fun tp!1977952 () Bool)

(declare-fun tp!1977948 () Bool)

(assert (=> b!7154866 (= e!4298240 (and tp!1977952 tp!1977948))))

(declare-fun b!7154865 () Bool)

(declare-fun tp!1977951 () Bool)

(assert (=> b!7154865 (= e!4298240 tp!1977951)))

(declare-fun b!7154863 () Bool)

(assert (=> b!7154863 (= e!4298240 tp_is_empty!46153)))

(assert (=> b!7154553 (= tp!1977749 e!4298240)))

(assert (= (and b!7154553 (is-ElementMatch!18260 (regTwo!37033 (regOne!37033 r!13749)))) b!7154863))

(assert (= (and b!7154553 (is-Concat!27105 (regTwo!37033 (regOne!37033 r!13749)))) b!7154864))

(assert (= (and b!7154553 (is-Star!18260 (regTwo!37033 (regOne!37033 r!13749)))) b!7154865))

(assert (= (and b!7154553 (is-Union!18260 (regTwo!37033 (regOne!37033 r!13749)))) b!7154866))

(declare-fun b!7154868 () Bool)

(declare-fun e!4298241 () Bool)

(declare-fun tp!1977954 () Bool)

(declare-fun tp!1977955 () Bool)

(assert (=> b!7154868 (= e!4298241 (and tp!1977954 tp!1977955))))

(declare-fun b!7154870 () Bool)

(declare-fun tp!1977957 () Bool)

(declare-fun tp!1977953 () Bool)

(assert (=> b!7154870 (= e!4298241 (and tp!1977957 tp!1977953))))

(declare-fun b!7154869 () Bool)

(declare-fun tp!1977956 () Bool)

(assert (=> b!7154869 (= e!4298241 tp!1977956)))

(declare-fun b!7154867 () Bool)

(assert (=> b!7154867 (= e!4298241 tp_is_empty!46153)))

(assert (=> b!7154564 (= tp!1977767 e!4298241)))

(assert (= (and b!7154564 (is-ElementMatch!18260 (reg!18589 (regTwo!37032 r!13749)))) b!7154867))

(assert (= (and b!7154564 (is-Concat!27105 (reg!18589 (regTwo!37032 r!13749)))) b!7154868))

(assert (= (and b!7154564 (is-Star!18260 (reg!18589 (regTwo!37032 r!13749)))) b!7154869))

(assert (= (and b!7154564 (is-Union!18260 (reg!18589 (regTwo!37032 r!13749)))) b!7154870))

(declare-fun b!7154872 () Bool)

(declare-fun e!4298242 () Bool)

(declare-fun tp!1977959 () Bool)

(declare-fun tp!1977960 () Bool)

(assert (=> b!7154872 (= e!4298242 (and tp!1977959 tp!1977960))))

(declare-fun b!7154874 () Bool)

(declare-fun tp!1977962 () Bool)

(declare-fun tp!1977958 () Bool)

(assert (=> b!7154874 (= e!4298242 (and tp!1977962 tp!1977958))))

(declare-fun b!7154873 () Bool)

(declare-fun tp!1977961 () Bool)

(assert (=> b!7154873 (= e!4298242 tp!1977961)))

(declare-fun b!7154871 () Bool)

(assert (=> b!7154871 (= e!4298242 tp_is_empty!46153)))

(assert (=> b!7154560 (= tp!1977762 e!4298242)))

(assert (= (and b!7154560 (is-ElementMatch!18260 (reg!18589 (regOne!37032 r!13749)))) b!7154871))

(assert (= (and b!7154560 (is-Concat!27105 (reg!18589 (regOne!37032 r!13749)))) b!7154872))

(assert (= (and b!7154560 (is-Star!18260 (reg!18589 (regOne!37032 r!13749)))) b!7154873))

(assert (= (and b!7154560 (is-Union!18260 (reg!18589 (regOne!37032 r!13749)))) b!7154874))

(declare-fun b!7154876 () Bool)

(declare-fun e!4298243 () Bool)

(declare-fun tp!1977964 () Bool)

(declare-fun tp!1977965 () Bool)

(assert (=> b!7154876 (= e!4298243 (and tp!1977964 tp!1977965))))

(declare-fun b!7154878 () Bool)

(declare-fun tp!1977967 () Bool)

(declare-fun tp!1977963 () Bool)

(assert (=> b!7154878 (= e!4298243 (and tp!1977967 tp!1977963))))

(declare-fun b!7154877 () Bool)

(declare-fun tp!1977966 () Bool)

(assert (=> b!7154877 (= e!4298243 tp!1977966)))

(declare-fun b!7154875 () Bool)

(assert (=> b!7154875 (= e!4298243 tp_is_empty!46153)))

(assert (=> b!7154569 (= tp!1977773 e!4298243)))

(assert (= (and b!7154569 (is-ElementMatch!18260 (regOne!37033 (h!75888 l!9132)))) b!7154875))

(assert (= (and b!7154569 (is-Concat!27105 (regOne!37033 (h!75888 l!9132)))) b!7154876))

(assert (= (and b!7154569 (is-Star!18260 (regOne!37033 (h!75888 l!9132)))) b!7154877))

(assert (= (and b!7154569 (is-Union!18260 (regOne!37033 (h!75888 l!9132)))) b!7154878))

(declare-fun b!7154880 () Bool)

(declare-fun e!4298244 () Bool)

(declare-fun tp!1977969 () Bool)

(declare-fun tp!1977970 () Bool)

(assert (=> b!7154880 (= e!4298244 (and tp!1977969 tp!1977970))))

(declare-fun b!7154882 () Bool)

(declare-fun tp!1977972 () Bool)

(declare-fun tp!1977968 () Bool)

(assert (=> b!7154882 (= e!4298244 (and tp!1977972 tp!1977968))))

(declare-fun b!7154881 () Bool)

(declare-fun tp!1977971 () Bool)

(assert (=> b!7154881 (= e!4298244 tp!1977971)))

(declare-fun b!7154879 () Bool)

(assert (=> b!7154879 (= e!4298244 tp_is_empty!46153)))

(assert (=> b!7154569 (= tp!1977769 e!4298244)))

(assert (= (and b!7154569 (is-ElementMatch!18260 (regTwo!37033 (h!75888 l!9132)))) b!7154879))

(assert (= (and b!7154569 (is-Concat!27105 (regTwo!37033 (h!75888 l!9132)))) b!7154880))

(assert (= (and b!7154569 (is-Star!18260 (regTwo!37033 (h!75888 l!9132)))) b!7154881))

(assert (= (and b!7154569 (is-Union!18260 (regTwo!37033 (h!75888 l!9132)))) b!7154882))

(declare-fun b!7154884 () Bool)

(declare-fun e!4298245 () Bool)

(declare-fun tp!1977974 () Bool)

(declare-fun tp!1977975 () Bool)

(assert (=> b!7154884 (= e!4298245 (and tp!1977974 tp!1977975))))

(declare-fun b!7154886 () Bool)

(declare-fun tp!1977977 () Bool)

(declare-fun tp!1977973 () Bool)

(assert (=> b!7154886 (= e!4298245 (and tp!1977977 tp!1977973))))

(declare-fun b!7154885 () Bool)

(declare-fun tp!1977976 () Bool)

(assert (=> b!7154885 (= e!4298245 tp!1977976)))

(declare-fun b!7154883 () Bool)

(assert (=> b!7154883 (= e!4298245 tp_is_empty!46153)))

(assert (=> b!7154565 (= tp!1977768 e!4298245)))

(assert (= (and b!7154565 (is-ElementMatch!18260 (regOne!37033 (regTwo!37032 r!13749)))) b!7154883))

(assert (= (and b!7154565 (is-Concat!27105 (regOne!37033 (regTwo!37032 r!13749)))) b!7154884))

(assert (= (and b!7154565 (is-Star!18260 (regOne!37033 (regTwo!37032 r!13749)))) b!7154885))

(assert (= (and b!7154565 (is-Union!18260 (regOne!37033 (regTwo!37032 r!13749)))) b!7154886))

(declare-fun b!7154888 () Bool)

(declare-fun e!4298246 () Bool)

(declare-fun tp!1977979 () Bool)

(declare-fun tp!1977980 () Bool)

(assert (=> b!7154888 (= e!4298246 (and tp!1977979 tp!1977980))))

(declare-fun b!7154890 () Bool)

(declare-fun tp!1977982 () Bool)

(declare-fun tp!1977978 () Bool)

(assert (=> b!7154890 (= e!4298246 (and tp!1977982 tp!1977978))))

(declare-fun b!7154889 () Bool)

(declare-fun tp!1977981 () Bool)

(assert (=> b!7154889 (= e!4298246 tp!1977981)))

(declare-fun b!7154887 () Bool)

(assert (=> b!7154887 (= e!4298246 tp_is_empty!46153)))

(assert (=> b!7154565 (= tp!1977764 e!4298246)))

(assert (= (and b!7154565 (is-ElementMatch!18260 (regTwo!37033 (regTwo!37032 r!13749)))) b!7154887))

(assert (= (and b!7154565 (is-Concat!27105 (regTwo!37033 (regTwo!37032 r!13749)))) b!7154888))

(assert (= (and b!7154565 (is-Star!18260 (regTwo!37033 (regTwo!37032 r!13749)))) b!7154889))

(assert (= (and b!7154565 (is-Union!18260 (regTwo!37033 (regTwo!37032 r!13749)))) b!7154890))

(declare-fun b_lambda!273243 () Bool)

(assert (= b_lambda!273239 (or d!2229329 b_lambda!273243)))

(declare-fun bs!1889768 () Bool)

(declare-fun d!2229417 () Bool)

(assert (= bs!1889768 (and d!2229417 d!2229329)))

(assert (=> bs!1889768 (= (dynLambda!28295 lambda!436302 (h!75888 l!9132)) (not (dynLambda!28295 lambda!436274 (h!75888 l!9132))))))

(declare-fun b_lambda!273255 () Bool)

(assert (=> (not b_lambda!273255) (not bs!1889768)))

(declare-fun m!7862382 () Bool)

(assert (=> bs!1889768 m!7862382))

(assert (=> b!7154746 d!2229417))

(declare-fun b_lambda!273245 () Bool)

(assert (= b_lambda!273231 (or d!2229319 b_lambda!273245)))

(declare-fun bs!1889769 () Bool)

(declare-fun d!2229419 () Bool)

(assert (= bs!1889769 (and d!2229419 d!2229319)))

(assert (=> bs!1889769 (= (dynLambda!28295 lambda!436287 (h!75888 (t!383581 l!9132))) (validRegex!9408 (h!75888 (t!383581 l!9132))))))

(assert (=> bs!1889769 m!7862258))

(assert (=> b!7154689 d!2229419))

(declare-fun b_lambda!273247 () Bool)

(assert (= b_lambda!273241 (or start!697354 b_lambda!273247)))

(declare-fun bs!1889770 () Bool)

(declare-fun d!2229421 () Bool)

(assert (= bs!1889770 (and d!2229421 start!697354)))

(assert (=> bs!1889770 (= (dynLambda!28295 lambda!436273 (h!75888 (t!383581 (t!383581 l!9132)))) (validRegex!9408 (h!75888 (t!383581 (t!383581 l!9132)))))))

(declare-fun m!7862384 () Bool)

(assert (=> bs!1889770 m!7862384))

(assert (=> b!7154755 d!2229421))

(declare-fun b_lambda!273249 () Bool)

(assert (= b_lambda!273235 (or d!2229335 b_lambda!273249)))

(declare-fun bs!1889771 () Bool)

(declare-fun d!2229423 () Bool)

(assert (= bs!1889771 (and d!2229423 d!2229335)))

(assert (=> bs!1889771 (= (dynLambda!28295 lambda!436303 (h!75888 (t!383581 l!9132))) (not (dynLambda!28295 lambda!436274 (h!75888 (t!383581 l!9132)))))))

(declare-fun b_lambda!273257 () Bool)

(assert (=> (not b_lambda!273257) (not bs!1889771)))

(declare-fun m!7862386 () Bool)

(assert (=> bs!1889771 m!7862386))

(assert (=> b!7154733 d!2229423))

(declare-fun b_lambda!273251 () Bool)

(assert (= b_lambda!273237 (or d!2229339 b_lambda!273251)))

(declare-fun bs!1889772 () Bool)

(declare-fun d!2229425 () Bool)

(assert (= bs!1889772 (and d!2229425 d!2229339)))

(assert (=> bs!1889772 (= (dynLambda!28295 lambda!436306 (h!75888 l!9132)) (validRegex!9408 (h!75888 l!9132)))))

(assert (=> bs!1889772 m!7862256))

(assert (=> b!7154744 d!2229425))

(declare-fun b_lambda!273253 () Bool)

(assert (= b_lambda!273233 (or d!2229325 b_lambda!273253)))

(declare-fun bs!1889773 () Bool)

(declare-fun d!2229427 () Bool)

(assert (= bs!1889773 (and d!2229427 d!2229325)))

(assert (=> bs!1889773 (= (dynLambda!28295 lambda!436296 (h!75888 (t!383581 l!9132))) (validRegex!9408 (h!75888 (t!383581 l!9132))))))

(assert (=> bs!1889773 m!7862258))

(assert (=> b!7154721 d!2229427))

(push 1)

(assert (not b!7154852))

(assert (not b_lambda!273249))

(assert (not bm!651664))

(assert (not b!7154768))

(assert (not b!7154729))

(assert (not b!7154723))

(assert (not b!7154866))

(assert (not bs!1889769))

(assert (not b!7154775))

(assert (not b!7154865))

(assert (not b!7154781))

(assert (not b!7154830))

(assert (not b!7154788))

(assert (not b_lambda!273257))

(assert (not b!7154848))

(assert (not b!7154771))

(assert (not b!7154769))

(assert (not b!7154832))

(assert (not b_lambda!273251))

(assert (not b!7154818))

(assert (not b!7154802))

(assert (not b!7154814))

(assert (not b!7154780))

(assert (not b!7154837))

(assert (not b!7154856))

(assert (not d!2229381))

(assert (not bm!651659))

(assert (not bs!1889773))

(assert (not b!7154849))

(assert (not b!7154885))

(assert (not bm!651656))

(assert (not b!7154890))

(assert (not b!7154869))

(assert (not b!7154861))

(assert (not b!7154715))

(assert (not bm!651648))

(assert (not b!7154776))

(assert (not b!7154886))

(assert (not b!7154834))

(assert (not b_lambda!273247))

(assert (not b!7154794))

(assert (not bm!651665))

(assert (not b!7154874))

(assert (not bm!651657))

(assert (not bm!651654))

(assert (not b!7154833))

(assert (not b!7154760))

(assert (not b!7154786))

(assert (not b!7154884))

(assert (not b!7154816))

(assert (not b!7154792))

(assert (not b!7154796))

(assert (not b!7154864))

(assert (not b!7154800))

(assert (not bm!651653))

(assert (not b!7154844))

(assert (not bs!1889772))

(assert (not b!7154809))

(assert (not b_lambda!273255))

(assert (not b!7154820))

(assert (not b!7154824))

(assert (not b!7154810))

(assert (not b!7154858))

(assert (not b!7154782))

(assert (not b!7154889))

(assert (not b!7154804))

(assert (not b!7154767))

(assert (not b!7154777))

(assert (not b!7154822))

(assert (not b!7154853))

(assert (not b!7154732))

(assert (not b!7154862))

(assert (not b!7154797))

(assert (not b!7154881))

(assert (not b!7154840))

(assert (not b!7154798))

(assert (not b!7154813))

(assert (not b!7154873))

(assert (not b!7154845))

(assert (not bm!651647))

(assert (not b_lambda!273219))

(assert (not b!7154878))

(assert (not b!7154850))

(assert (not b!7154683))

(assert (not b!7154738))

(assert (not b!7154870))

(assert (not b!7154772))

(assert (not b!7154734))

(assert (not b!7154690))

(assert (not b_lambda!273221))

(assert (not b!7154790))

(assert (not b!7154877))

(assert (not b!7154846))

(assert (not bm!651660))

(assert (not d!2229375))

(assert (not b!7154785))

(assert (not bm!651661))

(assert (not b!7154872))

(assert (not b!7154806))

(assert (not b!7154860))

(assert (not b!7154838))

(assert (not b!7154876))

(assert (not b!7154805))

(assert (not b!7154854))

(assert (not b!7154747))

(assert (not bm!651662))

(assert (not b!7154828))

(assert (not d!2229377))

(assert (not b!7154841))

(assert (not b!7154725))

(assert (not b!7154882))

(assert (not b_lambda!273243))

(assert (not b!7154808))

(assert (not b!7154727))

(assert (not b_lambda!273245))

(assert (not b!7154793))

(assert tp_is_empty!46153)

(assert (not b!7154880))

(assert (not b!7154745))

(assert (not b!7154888))

(assert (not b_lambda!273253))

(assert (not b!7154722))

(assert (not b!7154842))

(assert (not b!7154829))

(assert (not b!7154784))

(assert (not b!7154773))

(assert (not b!7154825))

(assert (not b!7154836))

(assert (not b!7154730))

(assert (not b!7154726))

(assert (not b!7154778))

(assert (not b!7154817))

(assert (not b!7154868))

(assert (not b!7154826))

(assert (not b!7154857))

(assert (not b!7154821))

(assert (not bs!1889770))

(assert (not b!7154789))

(assert (not b!7154801))

(assert (not b!7154756))

(assert (not b!7154812))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!273287 () Bool)

(assert (= b_lambda!273257 (or b!7154444 b_lambda!273287)))

(declare-fun bs!1889806 () Bool)

(declare-fun d!2229495 () Bool)

(assert (= bs!1889806 (and d!2229495 b!7154444)))

(assert (=> bs!1889806 (= (dynLambda!28295 lambda!436274 (h!75888 (t!383581 l!9132))) (nullable!7737 (h!75888 (t!383581 l!9132))))))

(declare-fun m!7862472 () Bool)

(assert (=> bs!1889806 m!7862472))

(assert (=> bs!1889771 d!2229495))

(declare-fun b_lambda!273289 () Bool)

(assert (= b_lambda!273255 (or b!7154444 b_lambda!273289)))

(declare-fun bs!1889807 () Bool)

(declare-fun d!2229497 () Bool)

(assert (= bs!1889807 (and d!2229497 b!7154444)))

(assert (=> bs!1889807 (= (dynLambda!28295 lambda!436274 (h!75888 l!9132)) (nullable!7737 (h!75888 l!9132)))))

(declare-fun m!7862474 () Bool)

(assert (=> bs!1889807 m!7862474))

(assert (=> bs!1889768 d!2229497))

(push 1)

(assert (not b!7154852))

(assert (not b_lambda!273249))

(assert (not bm!651664))

(assert (not b!7154768))

(assert (not b!7154729))

(assert (not b!7154723))

(assert (not b!7154866))

(assert (not bs!1889769))

(assert (not b!7154775))

(assert (not b!7154865))

(assert (not b!7154781))

(assert (not b!7154830))

(assert (not b!7154788))

(assert (not b!7154848))

(assert (not b!7154771))

(assert (not b!7154769))

(assert (not b!7154832))

(assert (not b_lambda!273251))

(assert (not b!7154818))

(assert (not b!7154802))

(assert (not b!7154814))

(assert (not b!7154780))

(assert (not b!7154837))

(assert (not bs!1889807))

(assert (not b!7154856))

(assert (not d!2229381))

(assert (not bm!651659))

(assert (not bs!1889773))

(assert (not b!7154849))

(assert (not b!7154885))

(assert (not bm!651656))

(assert (not b!7154890))

(assert (not b!7154869))

(assert (not b!7154861))

(assert (not b!7154715))

(assert (not bm!651648))

(assert (not b!7154776))

(assert (not b!7154886))

(assert (not b!7154834))

(assert (not b_lambda!273247))

(assert (not b!7154794))

(assert (not bm!651665))

(assert (not b!7154874))

(assert (not bm!651657))

(assert (not bm!651654))

(assert (not b!7154833))

(assert (not b!7154760))

(assert (not b!7154786))

(assert (not b!7154884))

(assert (not b!7154816))

(assert (not b!7154792))

(assert (not b!7154796))

(assert (not b!7154864))

(assert (not b!7154800))

(assert (not bm!651653))

(assert (not b!7154844))

(assert (not bs!1889772))

(assert (not b!7154809))

(assert (not b!7154820))

(assert (not b_lambda!273289))

(assert (not b!7154824))

(assert (not b!7154810))

(assert (not b!7154858))

(assert (not b!7154782))

(assert (not b!7154889))

(assert (not b!7154804))

(assert (not b!7154767))

(assert (not b!7154777))

(assert (not b!7154822))

(assert (not b!7154853))

(assert (not b!7154732))

(assert (not b!7154862))

(assert (not b!7154797))

(assert (not b!7154881))

(assert (not b!7154840))

(assert (not b!7154798))

(assert (not b!7154813))

(assert (not b!7154873))

(assert (not b!7154845))

(assert (not bm!651647))

(assert (not bs!1889806))

(assert (not b_lambda!273219))

(assert (not b!7154878))

(assert (not b!7154850))

(assert (not b!7154683))

(assert (not b!7154738))

(assert (not b!7154870))

(assert (not b!7154772))

(assert (not b!7154734))

(assert (not b!7154690))

(assert (not b_lambda!273221))

(assert (not b!7154790))

(assert (not b!7154877))

(assert (not b!7154846))

(assert (not bm!651660))

(assert (not d!2229375))

(assert (not b!7154785))

(assert (not bm!651661))

(assert (not b!7154872))

(assert (not b_lambda!273287))

(assert (not b!7154806))

(assert (not b!7154860))

(assert (not b!7154838))

(assert (not b!7154876))

(assert (not b!7154805))

(assert (not b!7154854))

(assert (not b!7154747))

(assert (not bm!651662))

(assert (not b!7154828))

(assert (not d!2229377))

(assert (not b!7154841))

(assert (not b!7154725))

(assert (not b!7154882))

(assert (not b_lambda!273243))

(assert (not b!7154808))

(assert (not b!7154727))

(assert (not b_lambda!273245))

(assert (not b!7154793))

(assert tp_is_empty!46153)

(assert (not b!7154880))

(assert (not b!7154745))

(assert (not b!7154888))

(assert (not b_lambda!273253))

(assert (not b!7154722))

(assert (not b!7154842))

(assert (not b!7154829))

(assert (not b!7154784))

(assert (not b!7154773))

(assert (not b!7154825))

(assert (not b!7154836))

(assert (not b!7154730))

(assert (not b!7154726))

(assert (not b!7154778))

(assert (not b!7154817))

(assert (not b!7154868))

(assert (not b!7154826))

(assert (not b!7154857))

(assert (not b!7154821))

(assert (not bs!1889770))

(assert (not b!7154789))

(assert (not b!7154801))

(assert (not b!7154756))

(assert (not b!7154812))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

