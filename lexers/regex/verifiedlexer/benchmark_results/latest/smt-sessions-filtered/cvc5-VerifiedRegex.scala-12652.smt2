; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700750 () Bool)

(assert start!700750)

(declare-fun b!7226613 () Bool)

(assert (=> b!7226613 true))

(declare-fun tp!2032364 () Bool)

(declare-fun e!4331968 () Bool)

(declare-datatypes ((C!37098 0))(
  ( (C!37099 (val!28497 Int)) )
))
(declare-datatypes ((Regex!18412 0))(
  ( (ElementMatch!18412 (c!1340598 C!37098)) (Concat!27257 (regOne!37336 Regex!18412) (regTwo!37336 Regex!18412)) (EmptyExpr!18412) (Star!18412 (reg!18741 Regex!18412)) (EmptyLang!18412) (Union!18412 (regOne!37337 Regex!18412) (regTwo!37337 Regex!18412)) )
))
(declare-datatypes ((List!69944 0))(
  ( (Nil!69820) (Cons!69820 (h!76268 Regex!18412) (t!383975 List!69944)) )
))
(declare-datatypes ((Context!14728 0))(
  ( (Context!14729 (exprs!7864 List!69944)) )
))
(declare-datatypes ((List!69945 0))(
  ( (Nil!69821) (Cons!69821 (h!76269 Context!14728) (t!383976 List!69945)) )
))
(declare-fun zl!166 () List!69945)

(declare-fun e!4331969 () Bool)

(declare-fun b!7226614 () Bool)

(declare-fun inv!89053 (Context!14728) Bool)

(assert (=> b!7226614 (= e!4331969 (and (inv!89053 (h!76269 zl!166)) e!4331968 tp!2032364))))

(declare-fun b!7226612 () Bool)

(declare-fun e!4331970 () Bool)

(declare-fun e!4331971 () Bool)

(assert (=> b!7226612 (= e!4331970 e!4331971)))

(declare-fun res!2932279 () Bool)

(assert (=> b!7226612 (=> (not res!2932279) (not e!4331971))))

(declare-fun lt!2572040 () Int)

(declare-fun lt!2572039 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> b!7226612 (= res!2932279 (>= (maxBigInt!0 lt!2572040 lt!2572039) lt!2572039))))

(declare-fun zipperDepth!433 (List!69945) Int)

(assert (=> b!7226612 (= lt!2572039 (zipperDepth!433 (t!383976 zl!166)))))

(declare-fun contextDepth!324 (Context!14728) Int)

(assert (=> b!7226612 (= lt!2572040 (contextDepth!324 (h!76269 zl!166)))))

(declare-fun lambda!438504 () Int)

(declare-fun forall!17235 (List!69945 Int) Bool)

(assert (=> b!7226613 (= e!4331971 (not (forall!17235 (t!383976 zl!166) lambda!438504)))))

(declare-fun b!7226615 () Bool)

(declare-fun tp!2032363 () Bool)

(assert (=> b!7226615 (= e!4331968 tp!2032363)))

(declare-fun res!2932280 () Bool)

(assert (=> start!700750 (=> (not res!2932280) (not e!4331970))))

(assert (=> start!700750 (= res!2932280 (is-Cons!69821 zl!166))))

(assert (=> start!700750 e!4331970))

(assert (=> start!700750 e!4331969))

(assert (= (and start!700750 res!2932280) b!7226612))

(assert (= (and b!7226612 res!2932279) b!7226613))

(assert (= b!7226614 b!7226615))

(assert (= (and start!700750 (is-Cons!69821 zl!166)) b!7226614))

(declare-fun m!7895950 () Bool)

(assert (=> b!7226614 m!7895950))

(declare-fun m!7895952 () Bool)

(assert (=> b!7226612 m!7895952))

(declare-fun m!7895954 () Bool)

(assert (=> b!7226612 m!7895954))

(declare-fun m!7895956 () Bool)

(assert (=> b!7226612 m!7895956))

(declare-fun m!7895958 () Bool)

(assert (=> b!7226613 m!7895958))

(push 1)

(assert (not b!7226614))

(assert (not b!7226612))

(assert (not b!7226613))

(assert (not b!7226615))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2244567 () Bool)

(declare-fun lambda!438510 () Int)

(declare-fun forall!17237 (List!69944 Int) Bool)

(assert (=> d!2244567 (= (inv!89053 (h!76269 zl!166)) (forall!17237 (exprs!7864 (h!76269 zl!166)) lambda!438510))))

(declare-fun bs!1901976 () Bool)

(assert (= bs!1901976 d!2244567))

(declare-fun m!7895970 () Bool)

(assert (=> bs!1901976 m!7895970))

(assert (=> b!7226614 d!2244567))

(declare-fun d!2244571 () Bool)

(assert (=> d!2244571 (= (maxBigInt!0 lt!2572040 lt!2572039) (ite (>= lt!2572040 lt!2572039) lt!2572040 lt!2572039))))

(assert (=> b!7226612 d!2244571))

(declare-fun bs!1901978 () Bool)

(declare-fun b!7226640 () Bool)

(assert (= bs!1901978 (and b!7226640 b!7226613)))

(declare-fun lambda!438521 () Int)

(declare-fun lt!2572058 () Int)

(assert (=> bs!1901978 (= (= lt!2572058 lt!2572039) (= lambda!438521 lambda!438504))))

(assert (=> b!7226640 true))

(declare-fun bs!1901979 () Bool)

(declare-fun b!7226642 () Bool)

(assert (= bs!1901979 (and b!7226642 b!7226613)))

(declare-fun lt!2572057 () Int)

(declare-fun lambda!438522 () Int)

(assert (=> bs!1901979 (= (= lt!2572057 lt!2572039) (= lambda!438522 lambda!438504))))

(declare-fun bs!1901980 () Bool)

(assert (= bs!1901980 (and b!7226642 b!7226640)))

(assert (=> bs!1901980 (= (= lt!2572057 lt!2572058) (= lambda!438522 lambda!438521))))

(assert (=> b!7226642 true))

(declare-fun d!2244573 () Bool)

(declare-fun e!4331989 () Bool)

(assert (=> d!2244573 e!4331989))

(declare-fun res!2932289 () Bool)

(assert (=> d!2244573 (=> (not res!2932289) (not e!4331989))))

(assert (=> d!2244573 (= res!2932289 (>= lt!2572057 0))))

(declare-fun e!4331988 () Int)

(assert (=> d!2244573 (= lt!2572057 e!4331988)))

(declare-fun c!1340608 () Bool)

(assert (=> d!2244573 (= c!1340608 (is-Cons!69821 (t!383976 zl!166)))))

(assert (=> d!2244573 (= (zipperDepth!433 (t!383976 zl!166)) lt!2572057)))

(assert (=> b!7226640 (= e!4331988 lt!2572058)))

(assert (=> b!7226640 (= lt!2572058 (maxBigInt!0 (contextDepth!324 (h!76269 (t!383976 zl!166))) (zipperDepth!433 (t!383976 (t!383976 zl!166)))))))

(declare-fun lambda!438520 () Int)

(declare-datatypes ((Unit!163435 0))(
  ( (Unit!163436) )
))
(declare-fun lt!2572056 () Unit!163435)

(declare-fun lemmaForallContextDepthBiggerThanTransitive!301 (List!69945 Int Int Int) Unit!163435)

(assert (=> b!7226640 (= lt!2572056 (lemmaForallContextDepthBiggerThanTransitive!301 (t!383976 (t!383976 zl!166)) lt!2572058 (zipperDepth!433 (t!383976 (t!383976 zl!166))) lambda!438520))))

(assert (=> b!7226640 (forall!17235 (t!383976 (t!383976 zl!166)) lambda!438521)))

(declare-fun lt!2572055 () Unit!163435)

(assert (=> b!7226640 (= lt!2572055 lt!2572056)))

(declare-fun b!7226641 () Bool)

(assert (=> b!7226641 (= e!4331988 0)))

(assert (=> b!7226642 (= e!4331989 (forall!17235 (t!383976 zl!166) lambda!438522))))

(assert (= (and d!2244573 c!1340608) b!7226640))

(assert (= (and d!2244573 (not c!1340608)) b!7226641))

(assert (= (and d!2244573 res!2932289) b!7226642))

(declare-fun m!7895974 () Bool)

(assert (=> b!7226640 m!7895974))

(declare-fun m!7895976 () Bool)

(assert (=> b!7226640 m!7895976))

(declare-fun m!7895978 () Bool)

(assert (=> b!7226640 m!7895978))

(assert (=> b!7226640 m!7895978))

(declare-fun m!7895980 () Bool)

(assert (=> b!7226640 m!7895980))

(assert (=> b!7226640 m!7895976))

(assert (=> b!7226640 m!7895978))

(declare-fun m!7895982 () Bool)

(assert (=> b!7226640 m!7895982))

(declare-fun m!7895984 () Bool)

(assert (=> b!7226642 m!7895984))

(assert (=> b!7226612 d!2244573))

(declare-fun bs!1901981 () Bool)

(declare-fun b!7226653 () Bool)

(assert (= bs!1901981 (and b!7226653 d!2244567)))

(declare-fun lambda!438529 () Int)

(assert (=> bs!1901981 (not (= lambda!438529 lambda!438510))))

(assert (=> b!7226653 true))

(declare-fun bs!1901982 () Bool)

(declare-fun b!7226655 () Bool)

(assert (= bs!1901982 (and b!7226655 d!2244567)))

(declare-fun lambda!438531 () Int)

(assert (=> bs!1901982 (not (= lambda!438531 lambda!438510))))

(declare-fun bs!1901983 () Bool)

(assert (= bs!1901983 (and b!7226655 b!7226653)))

(declare-fun lt!2572078 () Int)

(declare-fun lt!2572077 () Int)

(assert (=> bs!1901983 (= (= lt!2572078 lt!2572077) (= lambda!438531 lambda!438529))))

(assert (=> b!7226655 true))

(declare-fun d!2244579 () Bool)

(declare-fun e!4331996 () Bool)

(assert (=> d!2244579 e!4331996))

(declare-fun res!2932292 () Bool)

(assert (=> d!2244579 (=> (not res!2932292) (not e!4331996))))

(assert (=> d!2244579 (= res!2932292 (>= lt!2572078 0))))

(declare-fun e!4331997 () Int)

(assert (=> d!2244579 (= lt!2572078 e!4331997)))

(declare-fun c!1340618 () Bool)

(assert (=> d!2244579 (= c!1340618 (is-Cons!69820 (exprs!7864 (h!76269 zl!166))))))

(assert (=> d!2244579 (= (contextDepth!324 (h!76269 zl!166)) lt!2572078)))

(assert (=> b!7226653 (= e!4331997 lt!2572077)))

(declare-fun regexDepth!405 (Regex!18412) Int)

(assert (=> b!7226653 (= lt!2572077 (maxBigInt!0 (regexDepth!405 (h!76268 (exprs!7864 (h!76269 zl!166)))) (contextDepth!324 (Context!14729 (t!383975 (exprs!7864 (h!76269 zl!166)))))))))

(declare-fun lt!2572076 () Unit!163435)

(declare-fun lemmaForallRegexDepthBiggerThanTransitive!147 (List!69944 Int Int) Unit!163435)

(assert (=> b!7226653 (= lt!2572076 (lemmaForallRegexDepthBiggerThanTransitive!147 (t!383975 (exprs!7864 (h!76269 zl!166))) lt!2572077 (contextDepth!324 (Context!14729 (t!383975 (exprs!7864 (h!76269 zl!166)))))))))

(assert (=> b!7226653 (forall!17237 (t!383975 (exprs!7864 (h!76269 zl!166))) lambda!438529)))

(declare-fun lt!2572075 () Unit!163435)

(assert (=> b!7226653 (= lt!2572075 lt!2572076)))

(declare-fun b!7226654 () Bool)

(assert (=> b!7226654 (= e!4331997 0)))

(assert (=> b!7226655 (= e!4331996 (forall!17237 (exprs!7864 (h!76269 zl!166)) lambda!438531))))

(assert (= (and d!2244579 c!1340618) b!7226653))

(assert (= (and d!2244579 (not c!1340618)) b!7226654))

(assert (= (and d!2244579 res!2932292) b!7226655))

(declare-fun m!7895986 () Bool)

(assert (=> b!7226653 m!7895986))

(declare-fun m!7895988 () Bool)

(assert (=> b!7226653 m!7895988))

(declare-fun m!7895990 () Bool)

(assert (=> b!7226653 m!7895990))

(assert (=> b!7226653 m!7895988))

(declare-fun m!7895992 () Bool)

(assert (=> b!7226653 m!7895992))

(assert (=> b!7226653 m!7895988))

(declare-fun m!7895994 () Bool)

(assert (=> b!7226653 m!7895994))

(assert (=> b!7226653 m!7895990))

(declare-fun m!7895996 () Bool)

(assert (=> b!7226655 m!7895996))

(assert (=> b!7226612 d!2244579))

(declare-fun d!2244581 () Bool)

(declare-fun res!2932299 () Bool)

(declare-fun e!4332004 () Bool)

(assert (=> d!2244581 (=> res!2932299 e!4332004)))

(assert (=> d!2244581 (= res!2932299 (is-Nil!69821 (t!383976 zl!166)))))

(assert (=> d!2244581 (= (forall!17235 (t!383976 zl!166) lambda!438504) e!4332004)))

(declare-fun b!7226664 () Bool)

(declare-fun e!4332005 () Bool)

(assert (=> b!7226664 (= e!4332004 e!4332005)))

(declare-fun res!2932300 () Bool)

(assert (=> b!7226664 (=> (not res!2932300) (not e!4332005))))

(declare-fun dynLambda!28432 (Int Context!14728) Bool)

(assert (=> b!7226664 (= res!2932300 (dynLambda!28432 lambda!438504 (h!76269 (t!383976 zl!166))))))

(declare-fun b!7226665 () Bool)

(assert (=> b!7226665 (= e!4332005 (forall!17235 (t!383976 (t!383976 zl!166)) lambda!438504))))

(assert (= (and d!2244581 (not res!2932299)) b!7226664))

(assert (= (and b!7226664 res!2932300) b!7226665))

(declare-fun b_lambda!276671 () Bool)

(assert (=> (not b_lambda!276671) (not b!7226664)))

(declare-fun m!7895998 () Bool)

(assert (=> b!7226664 m!7895998))

(declare-fun m!7896000 () Bool)

(assert (=> b!7226665 m!7896000))

(assert (=> b!7226613 d!2244581))

(declare-fun b!7226673 () Bool)

(declare-fun e!4332011 () Bool)

(declare-fun tp!2032375 () Bool)

(assert (=> b!7226673 (= e!4332011 tp!2032375)))

(declare-fun b!7226672 () Bool)

(declare-fun tp!2032376 () Bool)

(declare-fun e!4332010 () Bool)

(assert (=> b!7226672 (= e!4332010 (and (inv!89053 (h!76269 (t!383976 zl!166))) e!4332011 tp!2032376))))

(assert (=> b!7226614 (= tp!2032364 e!4332010)))

(assert (= b!7226672 b!7226673))

(assert (= (and b!7226614 (is-Cons!69821 (t!383976 zl!166))) b!7226672))

(declare-fun m!7896002 () Bool)

(assert (=> b!7226672 m!7896002))

(declare-fun b!7226678 () Bool)

(declare-fun e!4332014 () Bool)

(declare-fun tp!2032381 () Bool)

(declare-fun tp!2032382 () Bool)

(assert (=> b!7226678 (= e!4332014 (and tp!2032381 tp!2032382))))

(assert (=> b!7226615 (= tp!2032363 e!4332014)))

(assert (= (and b!7226615 (is-Cons!69820 (exprs!7864 (h!76269 zl!166)))) b!7226678))

(declare-fun b_lambda!276673 () Bool)

(assert (= b_lambda!276671 (or b!7226613 b_lambda!276673)))

(declare-fun bs!1901984 () Bool)

(declare-fun d!2244583 () Bool)

(assert (= bs!1901984 (and d!2244583 b!7226613)))

(assert (=> bs!1901984 (= (dynLambda!28432 lambda!438504 (h!76269 (t!383976 zl!166))) (>= lt!2572039 (contextDepth!324 (h!76269 (t!383976 zl!166)))))))

(assert (=> bs!1901984 m!7895976))

(assert (=> b!7226664 d!2244583))

(push 1)

(assert (not b!7226640))

(assert (not b!7226673))

(assert (not d!2244567))

(assert (not b!7226653))

(assert (not b!7226672))

(assert (not b!7226678))

(assert (not b!7226665))

(assert (not b!7226642))

(assert (not bs!1901984))

(assert (not b_lambda!276673))

(assert (not b!7226655))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

