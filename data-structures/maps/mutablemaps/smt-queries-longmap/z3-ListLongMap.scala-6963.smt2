; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!87954 () Bool)

(assert start!87954)

(declare-fun b!1015512 () Bool)

(assert (=> b!1015512 true))

(assert (=> b!1015512 true))

(declare-fun b!1015511 () Bool)

(declare-fun res!681255 () Bool)

(declare-fun e!571331 () Bool)

(assert (=> b!1015511 (=> (not res!681255) (not e!571331))))

(declare-datatypes ((B!1486 0))(
  ( (B!1487 (val!11827 Int)) )
))
(declare-datatypes ((tuple2!15290 0))(
  ( (tuple2!15291 (_1!7655 (_ BitVec 64)) (_2!7655 B!1486)) )
))
(declare-datatypes ((List!21594 0))(
  ( (Nil!21591) (Cons!21590 (h!22788 tuple2!15290) (t!30603 List!21594)) )
))
(declare-fun l!1114 () List!21594)

(declare-fun isEmpty!862 (List!21594) Bool)

(assert (=> b!1015511 (= res!681255 (not (isEmpty!862 l!1114)))))

(declare-fun res!681254 () Bool)

(assert (=> start!87954 (=> (not res!681254) (not e!571331))))

(declare-fun isStrictlySorted!594 (List!21594) Bool)

(assert (=> start!87954 (= res!681254 (isStrictlySorted!594 l!1114))))

(assert (=> start!87954 e!571331))

(declare-fun e!571330 () Bool)

(assert (=> start!87954 e!571330))

(assert (=> start!87954 true))

(declare-fun tp_is_empty!23553 () Bool)

(assert (=> start!87954 tp_is_empty!23553))

(declare-fun b!1015513 () Bool)

(assert (=> b!1015513 (= e!571331 (= l!1114 Nil!21591))))

(declare-fun b!1015514 () Bool)

(declare-fun tp!70659 () Bool)

(assert (=> b!1015514 (= e!571330 (and tp_is_empty!23553 tp!70659))))

(declare-fun res!681256 () Bool)

(assert (=> b!1015512 (=> (not res!681256) (not e!571331))))

(declare-datatypes ((List!21595 0))(
  ( (Nil!21592) (Cons!21591 (h!22789 (_ BitVec 64)) (t!30604 List!21595)) )
))
(declare-fun keys!40 () List!21595)

(declare-fun lambda!914 () Int)

(declare-fun forall!263 (List!21595 Int) Bool)

(assert (=> b!1015512 (= res!681256 (forall!263 keys!40 lambda!914))))

(assert (= (and start!87954 res!681254) b!1015511))

(assert (= (and b!1015511 res!681255) b!1015512))

(assert (= (and b!1015512 res!681256) b!1015513))

(get-info :version)

(assert (= (and start!87954 ((_ is Cons!21590) l!1114)) b!1015514))

(declare-fun m!937683 () Bool)

(assert (=> b!1015511 m!937683))

(declare-fun m!937685 () Bool)

(assert (=> start!87954 m!937685))

(declare-fun m!937687 () Bool)

(assert (=> b!1015512 m!937687))

(check-sat (not b!1015512) (not b!1015511) (not start!87954) (not b!1015514) tp_is_empty!23553)
(check-sat)
(get-model)

(declare-fun d!120961 () Bool)

(assert (=> d!120961 (= (isEmpty!862 l!1114) ((_ is Nil!21591) l!1114))))

(assert (=> b!1015511 d!120961))

(declare-fun d!120963 () Bool)

(declare-fun res!681280 () Bool)

(declare-fun e!571352 () Bool)

(assert (=> d!120963 (=> res!681280 e!571352)))

(assert (=> d!120963 (= res!681280 (or ((_ is Nil!21591) l!1114) ((_ is Nil!21591) (t!30603 l!1114))))))

(assert (=> d!120963 (= (isStrictlySorted!594 l!1114) e!571352)))

(declare-fun b!1015549 () Bool)

(declare-fun e!571353 () Bool)

(assert (=> b!1015549 (= e!571352 e!571353)))

(declare-fun res!681281 () Bool)

(assert (=> b!1015549 (=> (not res!681281) (not e!571353))))

(assert (=> b!1015549 (= res!681281 (bvslt (_1!7655 (h!22788 l!1114)) (_1!7655 (h!22788 (t!30603 l!1114)))))))

(declare-fun b!1015550 () Bool)

(assert (=> b!1015550 (= e!571353 (isStrictlySorted!594 (t!30603 l!1114)))))

(assert (= (and d!120963 (not res!681280)) b!1015549))

(assert (= (and b!1015549 res!681281) b!1015550))

(declare-fun m!937699 () Bool)

(assert (=> b!1015550 m!937699))

(assert (=> start!87954 d!120963))

(declare-fun d!120971 () Bool)

(declare-fun res!681298 () Bool)

(declare-fun e!571372 () Bool)

(assert (=> d!120971 (=> res!681298 e!571372)))

(assert (=> d!120971 (= res!681298 ((_ is Nil!21592) keys!40))))

(assert (=> d!120971 (= (forall!263 keys!40 lambda!914) e!571372)))

(declare-fun b!1015571 () Bool)

(declare-fun e!571373 () Bool)

(assert (=> b!1015571 (= e!571372 e!571373)))

(declare-fun res!681299 () Bool)

(assert (=> b!1015571 (=> (not res!681299) (not e!571373))))

(declare-fun dynLambda!1907 (Int (_ BitVec 64)) Bool)

(assert (=> b!1015571 (= res!681299 (dynLambda!1907 lambda!914 (h!22789 keys!40)))))

(declare-fun b!1015572 () Bool)

(assert (=> b!1015572 (= e!571373 (forall!263 (t!30604 keys!40) lambda!914))))

(assert (= (and d!120971 (not res!681298)) b!1015571))

(assert (= (and b!1015571 res!681299) b!1015572))

(declare-fun b_lambda!15459 () Bool)

(assert (=> (not b_lambda!15459) (not b!1015571)))

(declare-fun m!937705 () Bool)

(assert (=> b!1015571 m!937705))

(declare-fun m!937707 () Bool)

(assert (=> b!1015572 m!937707))

(assert (=> b!1015512 d!120971))

(declare-fun b!1015580 () Bool)

(declare-fun e!571379 () Bool)

(declare-fun tp!70668 () Bool)

(assert (=> b!1015580 (= e!571379 (and tp_is_empty!23553 tp!70668))))

(assert (=> b!1015514 (= tp!70659 e!571379)))

(assert (= (and b!1015514 ((_ is Cons!21590) (t!30603 l!1114))) b!1015580))

(declare-fun b_lambda!15465 () Bool)

(assert (= b_lambda!15459 (or b!1015512 b_lambda!15465)))

(declare-fun bs!29448 () Bool)

(declare-fun d!120979 () Bool)

(assert (= bs!29448 (and d!120979 b!1015512)))

(declare-fun value!178 () B!1486)

(declare-datatypes ((Option!591 0))(
  ( (Some!590 (v!14439 B!1486)) (None!589) )
))
(declare-fun getValueByKey!540 (List!21594 (_ BitVec 64)) Option!591)

(assert (=> bs!29448 (= (dynLambda!1907 lambda!914 (h!22789 keys!40)) (= (getValueByKey!540 l!1114 (h!22789 keys!40)) (Some!590 value!178)))))

(declare-fun m!937715 () Bool)

(assert (=> bs!29448 m!937715))

(assert (=> b!1015571 d!120979))

(check-sat (not b!1015572) (not b!1015550) (not bs!29448) tp_is_empty!23553 (not b_lambda!15465) (not b!1015580))
(check-sat)
