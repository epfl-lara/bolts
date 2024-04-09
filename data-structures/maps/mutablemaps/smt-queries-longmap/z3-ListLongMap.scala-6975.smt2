; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88408 () Bool)

(assert start!88408)

(declare-fun b!1017283 () Bool)

(assert (=> b!1017283 true))

(assert (=> b!1017283 true))

(declare-fun bs!29585 () Bool)

(declare-fun b!1017280 () Bool)

(assert (= bs!29585 (and b!1017280 b!1017283)))

(declare-fun lambda!1114 () Int)

(declare-fun lambda!1115 () Int)

(declare-datatypes ((B!1558 0))(
  ( (B!1559 (val!11863 Int)) )
))
(declare-datatypes ((tuple2!15362 0))(
  ( (tuple2!15363 (_1!7691 (_ BitVec 64)) (_2!7691 B!1558)) )
))
(declare-datatypes ((List!21663 0))(
  ( (Nil!21660) (Cons!21659 (h!22857 tuple2!15362) (t!30672 List!21663)) )
))
(declare-fun l!1114 () List!21663)

(declare-fun newHead!31 () tuple2!15362)

(assert (=> bs!29585 (= (= (Cons!21659 newHead!31 l!1114) l!1114) (= lambda!1115 lambda!1114))))

(assert (=> b!1017280 true))

(assert (=> b!1017280 true))

(assert (=> b!1017280 true))

(declare-fun b!1017278 () Bool)

(declare-fun res!682402 () Bool)

(declare-fun e!572367 () Bool)

(assert (=> b!1017278 (=> (not res!682402) (not e!572367))))

(declare-fun head!978 (List!21663) tuple2!15362)

(assert (=> b!1017278 (= res!682402 (bvslt (_1!7691 newHead!31) (_1!7691 (head!978 l!1114))))))

(declare-fun b!1017279 () Bool)

(declare-fun res!682404 () Bool)

(assert (=> b!1017279 (=> (not res!682404) (not e!572367))))

(declare-fun isEmpty!908 (List!21663) Bool)

(assert (=> b!1017279 (= res!682404 (not (isEmpty!908 l!1114)))))

(declare-fun res!682403 () Bool)

(assert (=> start!88408 (=> (not res!682403) (not e!572367))))

(declare-fun isStrictlySorted!627 (List!21663) Bool)

(assert (=> start!88408 (= res!682403 (isStrictlySorted!627 l!1114))))

(assert (=> start!88408 e!572367))

(declare-fun e!572368 () Bool)

(assert (=> start!88408 e!572368))

(assert (=> start!88408 true))

(declare-fun tp_is_empty!23625 () Bool)

(assert (=> start!88408 tp_is_empty!23625))

(declare-datatypes ((List!21664 0))(
  ( (Nil!21661) (Cons!21660 (h!22858 (_ BitVec 64)) (t!30673 List!21664)) )
))
(declare-fun keys!40 () List!21664)

(declare-fun forall!296 (List!21664 Int) Bool)

(assert (=> b!1017280 (= e!572367 (not (forall!296 keys!40 lambda!1115)))))

(declare-fun b!1017281 () Bool)

(declare-fun res!682401 () Bool)

(assert (=> b!1017281 (=> (not res!682401) (not e!572367))))

(get-info :version)

(assert (=> b!1017281 (= res!682401 (not ((_ is Cons!21660) keys!40)))))

(declare-fun b!1017282 () Bool)

(declare-fun tp!70850 () Bool)

(assert (=> b!1017282 (= e!572368 (and tp_is_empty!23625 tp!70850))))

(declare-fun res!682400 () Bool)

(assert (=> b!1017283 (=> (not res!682400) (not e!572367))))

(assert (=> b!1017283 (= res!682400 (forall!296 keys!40 lambda!1114))))

(assert (= (and start!88408 res!682403) b!1017279))

(assert (= (and b!1017279 res!682404) b!1017283))

(assert (= (and b!1017283 res!682400) b!1017278))

(assert (= (and b!1017278 res!682402) b!1017281))

(assert (= (and b!1017281 res!682401) b!1017280))

(assert (= (and start!88408 ((_ is Cons!21659) l!1114)) b!1017282))

(declare-fun m!938841 () Bool)

(assert (=> start!88408 m!938841))

(declare-fun m!938843 () Bool)

(assert (=> b!1017283 m!938843))

(declare-fun m!938845 () Bool)

(assert (=> b!1017279 m!938845))

(declare-fun m!938847 () Bool)

(assert (=> b!1017278 m!938847))

(declare-fun m!938849 () Bool)

(assert (=> b!1017280 m!938849))

(check-sat (not b!1017278) (not b!1017279) tp_is_empty!23625 (not b!1017283) (not b!1017280) (not b!1017282) (not start!88408))
(check-sat)
(get-model)

(declare-fun d!121549 () Bool)

(declare-fun res!682424 () Bool)

(declare-fun e!572379 () Bool)

(assert (=> d!121549 (=> res!682424 e!572379)))

(assert (=> d!121549 (= res!682424 ((_ is Nil!21661) keys!40))))

(assert (=> d!121549 (= (forall!296 keys!40 lambda!1114) e!572379)))

(declare-fun b!1017318 () Bool)

(declare-fun e!572380 () Bool)

(assert (=> b!1017318 (= e!572379 e!572380)))

(declare-fun res!682425 () Bool)

(assert (=> b!1017318 (=> (not res!682425) (not e!572380))))

(declare-fun dynLambda!1933 (Int (_ BitVec 64)) Bool)

(assert (=> b!1017318 (= res!682425 (dynLambda!1933 lambda!1114 (h!22858 keys!40)))))

(declare-fun b!1017319 () Bool)

(assert (=> b!1017319 (= e!572380 (forall!296 (t!30673 keys!40) lambda!1114))))

(assert (= (and d!121549 (not res!682424)) b!1017318))

(assert (= (and b!1017318 res!682425) b!1017319))

(declare-fun b_lambda!15657 () Bool)

(assert (=> (not b_lambda!15657) (not b!1017318)))

(declare-fun m!938861 () Bool)

(assert (=> b!1017318 m!938861))

(declare-fun m!938863 () Bool)

(assert (=> b!1017319 m!938863))

(assert (=> b!1017283 d!121549))

(declare-fun d!121551 () Bool)

(assert (=> d!121551 (= (head!978 l!1114) (h!22857 l!1114))))

(assert (=> b!1017278 d!121551))

(declare-fun d!121555 () Bool)

(declare-fun res!682444 () Bool)

(declare-fun e!572399 () Bool)

(assert (=> d!121555 (=> res!682444 e!572399)))

(assert (=> d!121555 (= res!682444 (or ((_ is Nil!21660) l!1114) ((_ is Nil!21660) (t!30672 l!1114))))))

(assert (=> d!121555 (= (isStrictlySorted!627 l!1114) e!572399)))

(declare-fun b!1017338 () Bool)

(declare-fun e!572400 () Bool)

(assert (=> b!1017338 (= e!572399 e!572400)))

(declare-fun res!682445 () Bool)

(assert (=> b!1017338 (=> (not res!682445) (not e!572400))))

(assert (=> b!1017338 (= res!682445 (bvslt (_1!7691 (h!22857 l!1114)) (_1!7691 (h!22857 (t!30672 l!1114)))))))

(declare-fun b!1017339 () Bool)

(assert (=> b!1017339 (= e!572400 (isStrictlySorted!627 (t!30672 l!1114)))))

(assert (= (and d!121555 (not res!682444)) b!1017338))

(assert (= (and b!1017338 res!682445) b!1017339))

(declare-fun m!938877 () Bool)

(assert (=> b!1017339 m!938877))

(assert (=> start!88408 d!121555))

(declare-fun d!121567 () Bool)

(declare-fun res!682446 () Bool)

(declare-fun e!572401 () Bool)

(assert (=> d!121567 (=> res!682446 e!572401)))

(assert (=> d!121567 (= res!682446 ((_ is Nil!21661) keys!40))))

(assert (=> d!121567 (= (forall!296 keys!40 lambda!1115) e!572401)))

(declare-fun b!1017340 () Bool)

(declare-fun e!572402 () Bool)

(assert (=> b!1017340 (= e!572401 e!572402)))

(declare-fun res!682447 () Bool)

(assert (=> b!1017340 (=> (not res!682447) (not e!572402))))

(assert (=> b!1017340 (= res!682447 (dynLambda!1933 lambda!1115 (h!22858 keys!40)))))

(declare-fun b!1017341 () Bool)

(assert (=> b!1017341 (= e!572402 (forall!296 (t!30673 keys!40) lambda!1115))))

(assert (= (and d!121567 (not res!682446)) b!1017340))

(assert (= (and b!1017340 res!682447) b!1017341))

(declare-fun b_lambda!15665 () Bool)

(assert (=> (not b_lambda!15665) (not b!1017340)))

(declare-fun m!938879 () Bool)

(assert (=> b!1017340 m!938879))

(declare-fun m!938881 () Bool)

(assert (=> b!1017341 m!938881))

(assert (=> b!1017280 d!121567))

(declare-fun d!121571 () Bool)

(assert (=> d!121571 (= (isEmpty!908 l!1114) ((_ is Nil!21660) l!1114))))

(assert (=> b!1017279 d!121571))

(declare-fun b!1017354 () Bool)

(declare-fun e!572413 () Bool)

(declare-fun tp!70856 () Bool)

(assert (=> b!1017354 (= e!572413 (and tp_is_empty!23625 tp!70856))))

(assert (=> b!1017282 (= tp!70850 e!572413)))

(assert (= (and b!1017282 ((_ is Cons!21659) (t!30672 l!1114))) b!1017354))

(declare-fun b_lambda!15667 () Bool)

(assert (= b_lambda!15657 (or b!1017283 b_lambda!15667)))

(declare-fun bs!29587 () Bool)

(declare-fun d!121573 () Bool)

(assert (= bs!29587 (and d!121573 b!1017283)))

(declare-fun value!178 () B!1558)

(declare-datatypes ((Option!618 0))(
  ( (Some!617 (v!14466 B!1558)) (None!616) )
))
(declare-fun getValueByKey!567 (List!21663 (_ BitVec 64)) Option!618)

(assert (=> bs!29587 (= (dynLambda!1933 lambda!1114 (h!22858 keys!40)) (= (getValueByKey!567 l!1114 (h!22858 keys!40)) (Some!617 value!178)))))

(declare-fun m!938883 () Bool)

(assert (=> bs!29587 m!938883))

(assert (=> b!1017318 d!121573))

(declare-fun b_lambda!15669 () Bool)

(assert (= b_lambda!15665 (or b!1017280 b_lambda!15669)))

(declare-fun bs!29588 () Bool)

(declare-fun d!121575 () Bool)

(assert (= bs!29588 (and d!121575 b!1017280)))

(assert (=> bs!29588 (= (dynLambda!1933 lambda!1115 (h!22858 keys!40)) (= (getValueByKey!567 (Cons!21659 newHead!31 l!1114) (h!22858 keys!40)) (Some!617 value!178)))))

(declare-fun m!938887 () Bool)

(assert (=> bs!29588 m!938887))

(assert (=> b!1017340 d!121575))

(check-sat (not b!1017354) tp_is_empty!23625 (not bs!29587) (not bs!29588) (not b!1017319) (not b_lambda!15669) (not b!1017339) (not b!1017341) (not b_lambda!15667))
(check-sat)
