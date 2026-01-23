; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!508014 () Bool)

(assert start!508014)

(declare-fun res!2075153 () Bool)

(declare-fun e!3039227 () Bool)

(assert (=> start!508014 (=> (not res!2075153) (not e!3039227))))

(declare-datatypes ((V!17925 0))(
  ( (V!17926 (val!22481 Int)) )
))
(declare-datatypes ((K!17655 0))(
  ( (K!17656 (val!22482 Int)) )
))
(declare-datatypes ((tuple2!59662 0))(
  ( (tuple2!59663 (_1!33134 K!17655) (_2!33134 V!17925)) )
))
(declare-datatypes ((List!55952 0))(
  ( (Nil!55828) (Cons!55828 (h!62276 tuple2!59662) (t!363572 List!55952)) )
))
(declare-datatypes ((tuple2!59664 0))(
  ( (tuple2!59665 (_1!33135 (_ BitVec 64)) (_2!33135 List!55952)) )
))
(declare-datatypes ((List!55953 0))(
  ( (Nil!55829) (Cons!55829 (h!62277 tuple2!59664) (t!363573 List!55953)) )
))
(declare-fun l!10962 () List!55953)

(declare-fun lambda!243162 () Int)

(declare-fun forall!13029 (List!55953 Int) Bool)

(assert (=> start!508014 (= res!2075153 (forall!13029 l!10962 lambda!243162))))

(assert (=> start!508014 e!3039227))

(declare-fun e!3039226 () Bool)

(assert (=> start!508014 e!3039226))

(declare-fun b!4861074 () Bool)

(declare-fun res!2075152 () Bool)

(assert (=> b!4861074 (=> (not res!2075152) (not e!3039227))))

(assert (=> b!4861074 (= res!2075152 (is-Cons!55829 l!10962))))

(declare-fun b!4861075 () Bool)

(declare-fun ListPrimitiveSize!374 (List!55953) Int)

(assert (=> b!4861075 (= e!3039227 (>= (ListPrimitiveSize!374 (t!363573 l!10962)) (ListPrimitiveSize!374 l!10962)))))

(declare-fun b!4861076 () Bool)

(declare-fun tp!1367657 () Bool)

(declare-fun tp!1367656 () Bool)

(assert (=> b!4861076 (= e!3039226 (and tp!1367657 tp!1367656))))

(assert (= (and start!508014 res!2075153) b!4861074))

(assert (= (and b!4861074 res!2075152) b!4861075))

(assert (= (and start!508014 (is-Cons!55829 l!10962)) b!4861076))

(declare-fun m!5858854 () Bool)

(assert (=> start!508014 m!5858854))

(declare-fun m!5858856 () Bool)

(assert (=> b!4861075 m!5858856))

(declare-fun m!5858858 () Bool)

(assert (=> b!4861075 m!5858858))

(push 1)

(assert (not b!4861075))

(assert (not start!508014))

(assert (not b!4861076))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1560247 () Bool)

(declare-fun lt!1992363 () Int)

(assert (=> d!1560247 (>= lt!1992363 0)))

(declare-fun e!3039236 () Int)

(assert (=> d!1560247 (= lt!1992363 e!3039236)))

(declare-fun c!826833 () Bool)

(assert (=> d!1560247 (= c!826833 (is-Nil!55829 (t!363573 l!10962)))))

(assert (=> d!1560247 (= (ListPrimitiveSize!374 (t!363573 l!10962)) lt!1992363)))

(declare-fun b!4861090 () Bool)

(assert (=> b!4861090 (= e!3039236 0)))

(declare-fun b!4861091 () Bool)

(assert (=> b!4861091 (= e!3039236 (+ 1 (ListPrimitiveSize!374 (t!363573 (t!363573 l!10962)))))))

(assert (= (and d!1560247 c!826833) b!4861090))

(assert (= (and d!1560247 (not c!826833)) b!4861091))

(declare-fun m!5858866 () Bool)

(assert (=> b!4861091 m!5858866))

(assert (=> b!4861075 d!1560247))

(declare-fun d!1560249 () Bool)

(declare-fun lt!1992364 () Int)

(assert (=> d!1560249 (>= lt!1992364 0)))

(declare-fun e!3039237 () Int)

(assert (=> d!1560249 (= lt!1992364 e!3039237)))

(declare-fun c!826834 () Bool)

(assert (=> d!1560249 (= c!826834 (is-Nil!55829 l!10962))))

(assert (=> d!1560249 (= (ListPrimitiveSize!374 l!10962) lt!1992364)))

(declare-fun b!4861092 () Bool)

(assert (=> b!4861092 (= e!3039237 0)))

(declare-fun b!4861093 () Bool)

(assert (=> b!4861093 (= e!3039237 (+ 1 (ListPrimitiveSize!374 (t!363573 l!10962))))))

(assert (= (and d!1560249 c!826834) b!4861092))

(assert (= (and d!1560249 (not c!826834)) b!4861093))

(assert (=> b!4861093 m!5858856))

(assert (=> b!4861075 d!1560249))

(declare-fun d!1560251 () Bool)

(declare-fun res!2075164 () Bool)

(declare-fun e!3039242 () Bool)

(assert (=> d!1560251 (=> res!2075164 e!3039242)))

(assert (=> d!1560251 (= res!2075164 (is-Nil!55829 l!10962))))

(assert (=> d!1560251 (= (forall!13029 l!10962 lambda!243162) e!3039242)))

(declare-fun b!4861098 () Bool)

(declare-fun e!3039243 () Bool)

(assert (=> b!4861098 (= e!3039242 e!3039243)))

(declare-fun res!2075165 () Bool)

(assert (=> b!4861098 (=> (not res!2075165) (not e!3039243))))

(declare-fun dynLambda!22401 (Int tuple2!59664) Bool)

(assert (=> b!4861098 (= res!2075165 (dynLambda!22401 lambda!243162 (h!62277 l!10962)))))

(declare-fun b!4861099 () Bool)

(assert (=> b!4861099 (= e!3039243 (forall!13029 (t!363573 l!10962) lambda!243162))))

(assert (= (and d!1560251 (not res!2075164)) b!4861098))

(assert (= (and b!4861098 res!2075165) b!4861099))

(declare-fun b_lambda!193345 () Bool)

(assert (=> (not b_lambda!193345) (not b!4861098)))

(declare-fun m!5858868 () Bool)

(assert (=> b!4861098 m!5858868))

(declare-fun m!5858870 () Bool)

(assert (=> b!4861099 m!5858870))

(assert (=> start!508014 d!1560251))

(declare-fun tp_is_empty!35615 () Bool)

(declare-fun e!3039246 () Bool)

(declare-fun b!4861104 () Bool)

(declare-fun tp_is_empty!35613 () Bool)

(declare-fun tp!1367666 () Bool)

(assert (=> b!4861104 (= e!3039246 (and tp_is_empty!35613 tp_is_empty!35615 tp!1367666))))

(assert (=> b!4861076 (= tp!1367657 e!3039246)))

(assert (= (and b!4861076 (is-Cons!55828 (_2!33135 (h!62277 l!10962)))) b!4861104))

(declare-fun b!4861109 () Bool)

(declare-fun e!3039249 () Bool)

(declare-fun tp!1367671 () Bool)

(declare-fun tp!1367672 () Bool)

(assert (=> b!4861109 (= e!3039249 (and tp!1367671 tp!1367672))))

(assert (=> b!4861076 (= tp!1367656 e!3039249)))

(assert (= (and b!4861076 (is-Cons!55829 (t!363573 l!10962))) b!4861109))

(declare-fun b_lambda!193347 () Bool)

(assert (= b_lambda!193345 (or start!508014 b_lambda!193347)))

(declare-fun bs!1173909 () Bool)

(declare-fun d!1560255 () Bool)

(assert (= bs!1173909 (and d!1560255 start!508014)))

(declare-fun noDuplicateKeys!2652 (List!55952) Bool)

(assert (=> bs!1173909 (= (dynLambda!22401 lambda!243162 (h!62277 l!10962)) (noDuplicateKeys!2652 (_2!33135 (h!62277 l!10962))))))

(declare-fun m!5858872 () Bool)

(assert (=> bs!1173909 m!5858872))

(assert (=> b!4861098 d!1560255))

(push 1)

(assert (not bs!1173909))

(assert tp_is_empty!35615)

(assert (not b!4861099))

(assert (not b!4861109))

(assert tp_is_empty!35613)

(assert (not b!4861093))

(assert (not b!4861091))

(assert (not b_lambda!193347))

(assert (not b!4861104))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

