; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!114 () Bool)

(assert start!114)

(declare-fun b_free!9 () Bool)

(declare-fun b_next!9 () Bool)

(assert (=> start!114 (= b_free!9 (not b_next!9))))

(declare-fun tp!20 () Bool)

(declare-fun b_and!21 () Bool)

(assert (=> start!114 (= tp!20 b_and!21)))

(declare-fun res!4315 () Bool)

(declare-fun e!245 () Bool)

(assert (=> start!114 (=> (not res!4315) (not e!245))))

(declare-datatypes ((B!244 0))(
  ( (B!245 (val!4 Int)) )
))
(declare-datatypes ((tuple2!8 0))(
  ( (tuple2!9 (_1!4 (_ BitVec 64)) (_2!4 B!244)) )
))
(declare-datatypes ((List!13 0))(
  ( (Nil!10) (Cons!9 (h!575 tuple2!8) (t!2020 List!13)) )
))
(declare-datatypes ((ListLongMap!13 0))(
  ( (ListLongMap!14 (toList!22 List!13)) )
))
(declare-fun lm!258 () ListLongMap!13)

(declare-fun p!318 () Int)

(declare-fun forall!9 (List!13 Int) Bool)

(assert (=> start!114 (= res!4315 (forall!9 (toList!22 lm!258) p!318))))

(assert (=> start!114 e!245))

(declare-fun e!246 () Bool)

(declare-fun inv!24 (ListLongMap!13) Bool)

(assert (=> start!114 (and (inv!24 lm!258) e!246)))

(assert (=> start!114 tp!20))

(declare-fun b!1690 () Bool)

(declare-fun res!4316 () Bool)

(assert (=> b!1690 (=> (not res!4316) (not e!245))))

(declare-fun isEmpty!11 (ListLongMap!13) Bool)

(assert (=> b!1690 (= res!4316 (not (isEmpty!11 lm!258)))))

(declare-fun b!1691 () Bool)

(assert (=> b!1691 (= e!245 (= (toList!22 lm!258) Nil!10))))

(declare-fun b!1692 () Bool)

(declare-fun tp!19 () Bool)

(assert (=> b!1692 (= e!246 tp!19)))

(assert (= (and start!114 res!4315) b!1690))

(assert (= (and b!1690 res!4316) b!1691))

(assert (= start!114 b!1692))

(declare-fun m!393 () Bool)

(assert (=> start!114 m!393))

(declare-fun m!395 () Bool)

(assert (=> start!114 m!395))

(declare-fun m!397 () Bool)

(assert (=> b!1690 m!397))

(check-sat (not start!114) (not b!1692) b_and!21 (not b_next!9) (not b!1690))
(check-sat b_and!21 (not b_next!9))
(get-model)

(declare-fun d!121 () Bool)

(declare-fun res!4331 () Bool)

(declare-fun e!261 () Bool)

(assert (=> d!121 (=> res!4331 e!261)))

(get-info :version)

(assert (=> d!121 (= res!4331 ((_ is Nil!10) (toList!22 lm!258)))))

(assert (=> d!121 (= (forall!9 (toList!22 lm!258) p!318) e!261)))

(declare-fun b!1710 () Bool)

(declare-fun e!262 () Bool)

(assert (=> b!1710 (= e!261 e!262)))

(declare-fun res!4332 () Bool)

(assert (=> b!1710 (=> (not res!4332) (not e!262))))

(declare-fun dynLambda!5 (Int tuple2!8) Bool)

(assert (=> b!1710 (= res!4332 (dynLambda!5 p!318 (h!575 (toList!22 lm!258))))))

(declare-fun b!1711 () Bool)

(assert (=> b!1711 (= e!262 (forall!9 (t!2020 (toList!22 lm!258)) p!318))))

(assert (= (and d!121 (not res!4331)) b!1710))

(assert (= (and b!1710 res!4332) b!1711))

(declare-fun b_lambda!25 () Bool)

(assert (=> (not b_lambda!25) (not b!1710)))

(declare-fun t!2023 () Bool)

(declare-fun tb!7 () Bool)

(assert (=> (and start!114 (= p!318 p!318) t!2023) tb!7))

(declare-fun result!13 () Bool)

(assert (=> tb!7 (= result!13 true)))

(assert (=> b!1710 t!2023))

(declare-fun b_and!25 () Bool)

(assert (= b_and!21 (and (=> t!2023 result!13) b_and!25)))

(declare-fun m!407 () Bool)

(assert (=> b!1710 m!407))

(declare-fun m!409 () Bool)

(assert (=> b!1711 m!409))

(assert (=> start!114 d!121))

(declare-fun d!129 () Bool)

(declare-fun isStrictlySorted!3 (List!13) Bool)

(assert (=> d!129 (= (inv!24 lm!258) (isStrictlySorted!3 (toList!22 lm!258)))))

(declare-fun bs!31 () Bool)

(assert (= bs!31 d!129))

(declare-fun m!415 () Bool)

(assert (=> bs!31 m!415))

(assert (=> start!114 d!129))

(declare-fun d!133 () Bool)

(declare-fun isEmpty!15 (List!13) Bool)

(assert (=> d!133 (= (isEmpty!11 lm!258) (isEmpty!15 (toList!22 lm!258)))))

(declare-fun bs!33 () Bool)

(assert (= bs!33 d!133))

(declare-fun m!423 () Bool)

(assert (=> bs!33 m!423))

(assert (=> b!1690 d!133))

(declare-fun b!1732 () Bool)

(declare-fun e!278 () Bool)

(declare-fun tp_is_empty!8 () Bool)

(declare-fun tp!34 () Bool)

(assert (=> b!1732 (= e!278 (and tp_is_empty!8 tp!34))))

(assert (=> b!1692 (= tp!19 e!278)))

(assert (= (and b!1692 ((_ is Cons!9) (toList!22 lm!258))) b!1732))

(declare-fun b_lambda!34 () Bool)

(assert (= b_lambda!25 (or (and start!114 b_free!9) b_lambda!34)))

(check-sat (not d!133) b_and!25 (not b_lambda!34) (not b_next!9) (not d!129) (not b!1732) (not b!1711) tp_is_empty!8)
(check-sat b_and!25 (not b_next!9))
(get-model)

(declare-fun d!141 () Bool)

(assert (=> d!141 (= (isEmpty!15 (toList!22 lm!258)) ((_ is Nil!10) (toList!22 lm!258)))))

(assert (=> d!133 d!141))

(declare-fun d!145 () Bool)

(declare-fun res!4343 () Bool)

(declare-fun e!282 () Bool)

(assert (=> d!145 (=> res!4343 e!282)))

(assert (=> d!145 (= res!4343 ((_ is Nil!10) (t!2020 (toList!22 lm!258))))))

(assert (=> d!145 (= (forall!9 (t!2020 (toList!22 lm!258)) p!318) e!282)))

(declare-fun b!1737 () Bool)

(declare-fun e!283 () Bool)

(assert (=> b!1737 (= e!282 e!283)))

(declare-fun res!4344 () Bool)

(assert (=> b!1737 (=> (not res!4344) (not e!283))))

(assert (=> b!1737 (= res!4344 (dynLambda!5 p!318 (h!575 (t!2020 (toList!22 lm!258)))))))

(declare-fun b!1738 () Bool)

(assert (=> b!1738 (= e!283 (forall!9 (t!2020 (t!2020 (toList!22 lm!258))) p!318))))

(assert (= (and d!145 (not res!4343)) b!1737))

(assert (= (and b!1737 res!4344) b!1738))

(declare-fun b_lambda!39 () Bool)

(assert (=> (not b_lambda!39) (not b!1737)))

(declare-fun t!2031 () Bool)

(declare-fun tb!15 () Bool)

(assert (=> (and start!114 (= p!318 p!318) t!2031) tb!15))

(declare-fun result!27 () Bool)

(assert (=> tb!15 (= result!27 true)))

(assert (=> b!1737 t!2031))

(declare-fun b_and!33 () Bool)

(assert (= b_and!25 (and (=> t!2031 result!27) b_and!33)))

(declare-fun m!433 () Bool)

(assert (=> b!1737 m!433))

(declare-fun m!435 () Bool)

(assert (=> b!1738 m!435))

(assert (=> b!1711 d!145))

(declare-fun d!147 () Bool)

(declare-fun res!4353 () Bool)

(declare-fun e!292 () Bool)

(assert (=> d!147 (=> res!4353 e!292)))

(assert (=> d!147 (= res!4353 (or ((_ is Nil!10) (toList!22 lm!258)) ((_ is Nil!10) (t!2020 (toList!22 lm!258)))))))

(assert (=> d!147 (= (isStrictlySorted!3 (toList!22 lm!258)) e!292)))

(declare-fun b!1747 () Bool)

(declare-fun e!293 () Bool)

(assert (=> b!1747 (= e!292 e!293)))

(declare-fun res!4354 () Bool)

(assert (=> b!1747 (=> (not res!4354) (not e!293))))

(assert (=> b!1747 (= res!4354 (bvslt (_1!4 (h!575 (toList!22 lm!258))) (_1!4 (h!575 (t!2020 (toList!22 lm!258))))))))

(declare-fun b!1748 () Bool)

(assert (=> b!1748 (= e!293 (isStrictlySorted!3 (t!2020 (toList!22 lm!258))))))

(assert (= (and d!147 (not res!4353)) b!1747))

(assert (= (and b!1747 res!4354) b!1748))

(declare-fun m!437 () Bool)

(assert (=> b!1748 m!437))

(assert (=> d!129 d!147))

(declare-fun b!1749 () Bool)

(declare-fun e!294 () Bool)

(declare-fun tp!36 () Bool)

(assert (=> b!1749 (= e!294 (and tp_is_empty!8 tp!36))))

(assert (=> b!1732 (= tp!34 e!294)))

(assert (= (and b!1732 ((_ is Cons!9) (t!2020 (toList!22 lm!258)))) b!1749))

(declare-fun b_lambda!41 () Bool)

(assert (= b_lambda!39 (or (and start!114 b_free!9) b_lambda!41)))

(check-sat tp_is_empty!8 (not b_lambda!41) (not b!1748) b_and!33 (not b_lambda!34) (not b!1738) (not b_next!9) (not b!1749))
(check-sat b_and!33 (not b_next!9))
