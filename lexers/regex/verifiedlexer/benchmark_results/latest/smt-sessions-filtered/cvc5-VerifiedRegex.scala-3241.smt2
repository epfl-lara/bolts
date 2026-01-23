; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!187620 () Bool)

(assert start!187620)

(declare-datatypes ((C!10274 0))(
  ( (C!10275 (val!6017 Int)) )
))
(declare-datatypes ((Regex!5062 0))(
  ( (ElementMatch!5062 (c!305294 C!10274)) (Concat!8881 (regOne!10636 Regex!5062) (regTwo!10636 Regex!5062)) (EmptyExpr!5062) (Star!5062 (reg!5391 Regex!5062)) (EmptyLang!5062) (Union!5062 (regOne!10637 Regex!5062) (regTwo!10637 Regex!5062)) )
))
(declare-datatypes ((List!20834 0))(
  ( (Nil!20752) (Cons!20752 (h!26153 Regex!5062) (t!173051 List!20834)) )
))
(declare-datatypes ((Context!1904 0))(
  ( (Context!1905 (exprs!1452 List!20834)) )
))
(declare-fun thiss!29369 () Context!1904)

(declare-fun lambda!73733 () Int)

(declare-fun forall!4412 (List!20834 Int) Bool)

(assert (=> start!187620 (not (forall!4412 (exprs!1452 thiss!29369) lambda!73733))))

(declare-fun e!1194682 () Bool)

(declare-fun inv!27560 (Context!1904) Bool)

(assert (=> start!187620 (and (inv!27560 thiss!29369) e!1194682)))

(declare-fun b!1872697 () Bool)

(declare-fun tp!532560 () Bool)

(assert (=> b!1872697 (= e!1194682 tp!532560)))

(assert (= start!187620 b!1872697))

(declare-fun m!2298449 () Bool)

(assert (=> start!187620 m!2298449))

(declare-fun m!2298451 () Bool)

(assert (=> start!187620 m!2298451))

(push 1)

(assert (not start!187620))

(assert (not b!1872697))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!572540 () Bool)

(declare-fun res!838122 () Bool)

(declare-fun e!1194690 () Bool)

(assert (=> d!572540 (=> res!838122 e!1194690)))

(assert (=> d!572540 (= res!838122 (is-Nil!20752 (exprs!1452 thiss!29369)))))

(assert (=> d!572540 (= (forall!4412 (exprs!1452 thiss!29369) lambda!73733) e!1194690)))

(declare-fun b!1872705 () Bool)

(declare-fun e!1194691 () Bool)

(assert (=> b!1872705 (= e!1194690 e!1194691)))

(declare-fun res!838123 () Bool)

(assert (=> b!1872705 (=> (not res!838123) (not e!1194691))))

(declare-fun dynLambda!10222 (Int Regex!5062) Bool)

(assert (=> b!1872705 (= res!838123 (dynLambda!10222 lambda!73733 (h!26153 (exprs!1452 thiss!29369))))))

(declare-fun b!1872706 () Bool)

(assert (=> b!1872706 (= e!1194691 (forall!4412 (t!173051 (exprs!1452 thiss!29369)) lambda!73733))))

(assert (= (and d!572540 (not res!838122)) b!1872705))

(assert (= (and b!1872705 res!838123) b!1872706))

(declare-fun b_lambda!61601 () Bool)

(assert (=> (not b_lambda!61601) (not b!1872705)))

(declare-fun m!2298457 () Bool)

(assert (=> b!1872705 m!2298457))

(declare-fun m!2298459 () Bool)

(assert (=> b!1872706 m!2298459))

(assert (=> start!187620 d!572540))

(declare-fun bs!412064 () Bool)

(declare-fun d!572542 () Bool)

(assert (= bs!412064 (and d!572542 start!187620)))

(declare-fun lambda!73739 () Int)

(assert (=> bs!412064 (= lambda!73739 lambda!73733)))

(assert (=> d!572542 (= (inv!27560 thiss!29369) (forall!4412 (exprs!1452 thiss!29369) lambda!73739))))

(declare-fun bs!412065 () Bool)

(assert (= bs!412065 d!572542))

(declare-fun m!2298461 () Bool)

(assert (=> bs!412065 m!2298461))

(assert (=> start!187620 d!572542))

(declare-fun b!1872711 () Bool)

(declare-fun e!1194694 () Bool)

(declare-fun tp!532568 () Bool)

(declare-fun tp!532569 () Bool)

(assert (=> b!1872711 (= e!1194694 (and tp!532568 tp!532569))))

(assert (=> b!1872697 (= tp!532560 e!1194694)))

(assert (= (and b!1872697 (is-Cons!20752 (exprs!1452 thiss!29369))) b!1872711))

(declare-fun b_lambda!61603 () Bool)

(assert (= b_lambda!61601 (or start!187620 b_lambda!61603)))

(declare-fun bs!412066 () Bool)

(declare-fun d!572544 () Bool)

(assert (= bs!412066 (and d!572544 start!187620)))

(declare-fun validRegex!2081 (Regex!5062) Bool)

(assert (=> bs!412066 (= (dynLambda!10222 lambda!73733 (h!26153 (exprs!1452 thiss!29369))) (validRegex!2081 (h!26153 (exprs!1452 thiss!29369))))))

(declare-fun m!2298463 () Bool)

(assert (=> bs!412066 m!2298463))

(assert (=> b!1872705 d!572544))

(push 1)

(assert (not bs!412066))

(assert (not d!572542))

(assert (not b_lambda!61603))

(assert (not b!1872711))

(assert (not b!1872706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

