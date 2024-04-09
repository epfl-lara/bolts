; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88126 () Bool)

(assert start!88126)

(declare-fun b!1016250 () Bool)

(assert (=> b!1016250 true))

(assert (=> b!1016250 true))

(declare-fun b!1016246 () Bool)

(declare-fun res!681742 () Bool)

(declare-fun e!571735 () Bool)

(assert (=> b!1016246 (=> (not res!681742) (not e!571735))))

(declare-datatypes ((B!1526 0))(
  ( (B!1527 (val!11847 Int)) )
))
(declare-datatypes ((tuple2!15330 0))(
  ( (tuple2!15331 (_1!7675 (_ BitVec 64)) (_2!7675 B!1526)) )
))
(declare-datatypes ((List!21631 0))(
  ( (Nil!21628) (Cons!21627 (h!22825 tuple2!15330) (t!30640 List!21631)) )
))
(declare-fun l!1114 () List!21631)

(declare-fun isEmpty!881 (List!21631) Bool)

(assert (=> b!1016246 (= res!681742 (not (isEmpty!881 l!1114)))))

(declare-fun b!1016247 () Bool)

(declare-fun res!681743 () Bool)

(assert (=> b!1016247 (=> (not res!681743) (not e!571735))))

(declare-fun newHead!31 () tuple2!15330)

(declare-fun head!962 (List!21631) tuple2!15330)

(assert (=> b!1016247 (= res!681743 (bvslt (_1!7675 newHead!31) (_1!7675 (head!962 l!1114))))))

(declare-fun res!681745 () Bool)

(assert (=> start!88126 (=> (not res!681745) (not e!571735))))

(declare-fun isStrictlySorted!611 (List!21631) Bool)

(assert (=> start!88126 (= res!681745 (isStrictlySorted!611 l!1114))))

(assert (=> start!88126 e!571735))

(declare-fun e!571736 () Bool)

(assert (=> start!88126 e!571736))

(assert (=> start!88126 true))

(declare-fun tp_is_empty!23593 () Bool)

(assert (=> start!88126 tp_is_empty!23593))

(declare-fun b!1016248 () Bool)

(declare-datatypes ((List!21632 0))(
  ( (Nil!21629) (Cons!21628 (h!22826 (_ BitVec 64)) (t!30641 List!21632)) )
))
(declare-fun keys!40 () List!21632)

(declare-datatypes ((Option!603 0))(
  ( (Some!602 (v!14451 B!1526)) (None!601) )
))
(declare-fun isDefined!399 (Option!603) Bool)

(declare-fun getValueByKey!552 (List!21631 (_ BitVec 64)) Option!603)

(assert (=> b!1016248 (= e!571735 (not (isDefined!399 (getValueByKey!552 l!1114 (h!22826 keys!40)))))))

(declare-fun b!1016249 () Bool)

(declare-fun res!681744 () Bool)

(assert (=> b!1016249 (=> (not res!681744) (not e!571735))))

(assert (=> b!1016249 (= res!681744 (is-Cons!21628 keys!40))))

(declare-fun res!681741 () Bool)

(assert (=> b!1016250 (=> (not res!681741) (not e!571735))))

(declare-fun lambda!1010 () Int)

(declare-fun forall!280 (List!21632 Int) Bool)

(assert (=> b!1016250 (= res!681741 (forall!280 keys!40 lambda!1010))))

(declare-fun b!1016251 () Bool)

(declare-fun tp!70755 () Bool)

(assert (=> b!1016251 (= e!571736 (and tp_is_empty!23593 tp!70755))))

(assert (= (and start!88126 res!681745) b!1016246))

(assert (= (and b!1016246 res!681742) b!1016250))

(assert (= (and b!1016250 res!681741) b!1016247))

(assert (= (and b!1016247 res!681743) b!1016249))

(assert (= (and b!1016249 res!681744) b!1016248))

(assert (= (and start!88126 (is-Cons!21627 l!1114)) b!1016251))

(declare-fun m!938133 () Bool)

(assert (=> start!88126 m!938133))

(declare-fun m!938135 () Bool)

(assert (=> b!1016247 m!938135))

(declare-fun m!938137 () Bool)

(assert (=> b!1016250 m!938137))

(declare-fun m!938139 () Bool)

(assert (=> b!1016246 m!938139))

(declare-fun m!938141 () Bool)

(assert (=> b!1016248 m!938141))

(assert (=> b!1016248 m!938141))

(declare-fun m!938143 () Bool)

(assert (=> b!1016248 m!938143))

(push 1)

(assert tp_is_empty!23593)

(assert (not b!1016250))

(assert (not b!1016251))

(assert (not start!88126))

(assert (not b!1016248))

(assert (not b!1016246))

(assert (not b!1016247))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121173 () Bool)

(assert (=> d!121173 (= (head!962 l!1114) (h!22825 l!1114))))

(assert (=> b!1016247 d!121173))

(declare-fun d!121175 () Bool)

(declare-fun isEmpty!884 (Option!603) Bool)

(assert (=> d!121175 (= (isDefined!399 (getValueByKey!552 l!1114 (h!22826 keys!40))) (not (isEmpty!884 (getValueByKey!552 l!1114 (h!22826 keys!40)))))))

(declare-fun bs!29508 () Bool)

(assert (= bs!29508 d!121175))

(assert (=> bs!29508 m!938141))

(declare-fun m!938175 () Bool)

(assert (=> bs!29508 m!938175))

(assert (=> b!1016248 d!121175))

(declare-fun d!121177 () Bool)

(declare-fun c!102881 () Bool)

(assert (=> d!121177 (= c!102881 (and (is-Cons!21627 l!1114) (= (_1!7675 (h!22825 l!1114)) (h!22826 keys!40))))))

(declare-fun e!571765 () Option!603)

(assert (=> d!121177 (= (getValueByKey!552 l!1114 (h!22826 keys!40)) e!571765)))

(declare-fun b!1016326 () Bool)

(assert (=> b!1016326 (= e!571765 (Some!602 (_2!7675 (h!22825 l!1114))))))

(declare-fun b!1016328 () Bool)

(declare-fun e!571766 () Option!603)

(assert (=> b!1016328 (= e!571766 (getValueByKey!552 (t!30640 l!1114) (h!22826 keys!40)))))

(declare-fun b!1016327 () Bool)

(assert (=> b!1016327 (= e!571765 e!571766)))

(declare-fun c!102882 () Bool)

(assert (=> b!1016327 (= c!102882 (and (is-Cons!21627 l!1114) (not (= (_1!7675 (h!22825 l!1114)) (h!22826 keys!40)))))))

(declare-fun b!1016329 () Bool)

(assert (=> b!1016329 (= e!571766 None!601)))

(assert (= (and d!121177 c!102881) b!1016326))

(assert (= (and d!121177 (not c!102881)) b!1016327))

(assert (= (and b!1016327 c!102882) b!1016328))

(assert (= (and b!1016327 (not c!102882)) b!1016329))

(declare-fun m!938179 () Bool)

(assert (=> b!1016328 m!938179))

(assert (=> b!1016248 d!121177))

(declare-fun d!121185 () Bool)

(declare-fun res!681790 () Bool)

(declare-fun e!571775 () Bool)

(assert (=> d!121185 (=> res!681790 e!571775)))

(assert (=> d!121185 (= res!681790 (is-Nil!21629 keys!40))))

(assert (=> d!121185 (= (forall!280 keys!40 lambda!1010) e!571775)))

(declare-fun b!1016338 () Bool)

(declare-fun e!571776 () Bool)

(assert (=> b!1016338 (= e!571775 e!571776)))

(declare-fun res!681791 () Bool)

(assert (=> b!1016338 (=> (not res!681791) (not e!571776))))

(declare-fun dynLambda!1919 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016338 (= res!681791 (dynLambda!1919 lambda!1010 (h!22826 keys!40)))))

(declare-fun b!1016339 () Bool)

(assert (=> b!1016339 (= e!571776 (forall!280 (t!30641 keys!40) lambda!1010))))

(assert (= (and d!121185 (not res!681790)) b!1016338))

(assert (= (and b!1016338 res!681791) b!1016339))

(declare-fun b_lambda!15531 () Bool)

(assert (=> (not b_lambda!15531) (not b!1016338)))

(declare-fun m!938183 () Bool)

(assert (=> b!1016338 m!938183))

(declare-fun m!938185 () Bool)

(assert (=> b!1016339 m!938185))

(assert (=> b!1016250 d!121185))

(declare-fun d!121191 () Bool)

(assert (=> d!121191 (= (isEmpty!881 l!1114) (is-Nil!21628 l!1114))))

(assert (=> b!1016246 d!121191))

(declare-fun d!121193 () Bool)

(declare-fun res!681798 () Bool)

(declare-fun e!571790 () Bool)

(assert (=> d!121193 (=> res!681798 e!571790)))

(assert (=> d!121193 (= res!681798 (or (is-Nil!21628 l!1114) (is-Nil!21628 (t!30640 l!1114))))))

(assert (=> d!121193 (= (isStrictlySorted!611 l!1114) e!571790)))

(declare-fun b!1016359 () Bool)

(declare-fun e!571791 () Bool)

(assert (=> b!1016359 (= e!571790 e!571791)))

(declare-fun res!681799 () Bool)

(assert (=> b!1016359 (=> (not res!681799) (not e!571791))))

(assert (=> b!1016359 (= res!681799 (bvslt (_1!7675 (h!22825 l!1114)) (_1!7675 (h!22825 (t!30640 l!1114)))))))

(declare-fun b!1016360 () Bool)

(assert (=> b!1016360 (= e!571791 (isStrictlySorted!611 (t!30640 l!1114)))))

(assert (= (and d!121193 (not res!681798)) b!1016359))

(assert (= (and b!1016359 res!681799) b!1016360))

(declare-fun m!938189 () Bool)

(assert (=> b!1016360 m!938189))

(assert (=> start!88126 d!121193))

(declare-fun b!1016369 () Bool)

(declare-fun e!571796 () Bool)

(declare-fun tp!70767 () Bool)

(assert (=> b!1016369 (= e!571796 (and tp_is_empty!23593 tp!70767))))

(assert (=> b!1016251 (= tp!70755 e!571796)))

(assert (= (and b!1016251 (is-Cons!21627 (t!30640 l!1114))) b!1016369))

(declare-fun b_lambda!15535 () Bool)

(assert (= b_lambda!15531 (or b!1016250 b_lambda!15535)))

(declare-fun bs!29511 () Bool)

(declare-fun d!121199 () Bool)

(assert (= bs!29511 (and d!121199 b!1016250)))

(declare-fun value!178 () B!1526)

(assert (=> bs!29511 (= (dynLambda!1919 lambda!1010 (h!22826 keys!40)) (= (getValueByKey!552 l!1114 (h!22826 keys!40)) (Some!602 value!178)))))

(assert (=> bs!29511 m!938141))

(assert (=> b!1016338 d!121199))

(push 1)

(assert (not b!1016339))

(assert tp_is_empty!23593)

(assert (not b!1016328))

(assert (not b_lambda!15535))

(assert (not d!121175))

(assert (not bs!29511))

(assert (not b!1016360))

(assert (not b!1016369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> bs!29511 d!121177))

(declare-fun d!121217 () Bool)

(declare-fun c!102891 () Bool)

(assert (=> d!121217 (= c!102891 (and (is-Cons!21627 (t!30640 l!1114)) (= (_1!7675 (h!22825 (t!30640 l!1114))) (h!22826 keys!40))))))

(declare-fun e!571819 () Option!603)

(assert (=> d!121217 (= (getValueByKey!552 (t!30640 l!1114) (h!22826 keys!40)) e!571819)))

(declare-fun b!1016396 () Bool)

(assert (=> b!1016396 (= e!571819 (Some!602 (_2!7675 (h!22825 (t!30640 l!1114)))))))

(declare-fun b!1016398 () Bool)

(declare-fun e!571820 () Option!603)

(assert (=> b!1016398 (= e!571820 (getValueByKey!552 (t!30640 (t!30640 l!1114)) (h!22826 keys!40)))))

(declare-fun b!1016397 () Bool)

(assert (=> b!1016397 (= e!571819 e!571820)))

(declare-fun c!102892 () Bool)

(assert (=> b!1016397 (= c!102892 (and (is-Cons!21627 (t!30640 l!1114)) (not (= (_1!7675 (h!22825 (t!30640 l!1114))) (h!22826 keys!40)))))))

(declare-fun b!1016399 () Bool)

(assert (=> b!1016399 (= e!571820 None!601)))

(assert (= (and d!121217 c!102891) b!1016396))

(assert (= (and d!121217 (not c!102891)) b!1016397))

(assert (= (and b!1016397 c!102892) b!1016398))

(assert (= (and b!1016397 (not c!102892)) b!1016399))

(declare-fun m!938209 () Bool)

(assert (=> b!1016398 m!938209))

(assert (=> b!1016328 d!121217))

(declare-fun d!121219 () Bool)

(declare-fun res!681816 () Bool)

(declare-fun e!571821 () Bool)

(assert (=> d!121219 (=> res!681816 e!571821)))

(assert (=> d!121219 (= res!681816 (is-Nil!21629 (t!30641 keys!40)))))

(assert (=> d!121219 (= (forall!280 (t!30641 keys!40) lambda!1010) e!571821)))

(declare-fun b!1016400 () Bool)

(declare-fun e!571822 () Bool)

(assert (=> b!1016400 (= e!571821 e!571822)))

(declare-fun res!681817 () Bool)

(assert (=> b!1016400 (=> (not res!681817) (not e!571822))))

(assert (=> b!1016400 (= res!681817 (dynLambda!1919 lambda!1010 (h!22826 (t!30641 keys!40))))))

(declare-fun b!1016401 () Bool)

(assert (=> b!1016401 (= e!571822 (forall!280 (t!30641 (t!30641 keys!40)) lambda!1010))))

(assert (= (and d!121219 (not res!681816)) b!1016400))

(assert (= (and b!1016400 res!681817) b!1016401))

(declare-fun b_lambda!15545 () Bool)

(assert (=> (not b_lambda!15545) (not b!1016400)))

(declare-fun m!938211 () Bool)

(assert (=> b!1016400 m!938211))

(declare-fun m!938213 () Bool)

(assert (=> b!1016401 m!938213))

(assert (=> b!1016339 d!121219))

(declare-fun d!121221 () Bool)

(declare-fun res!681818 () Bool)

(declare-fun e!571823 () Bool)

(assert (=> d!121221 (=> res!681818 e!571823)))

(assert (=> d!121221 (= res!681818 (or (is-Nil!21628 (t!30640 l!1114)) (is-Nil!21628 (t!30640 (t!30640 l!1114)))))))

(assert (=> d!121221 (= (isStrictlySorted!611 (t!30640 l!1114)) e!571823)))

(declare-fun b!1016402 () Bool)

(declare-fun e!571824 () Bool)

(assert (=> b!1016402 (= e!571823 e!571824)))

(declare-fun res!681819 () Bool)

(assert (=> b!1016402 (=> (not res!681819) (not e!571824))))

(assert (=> b!1016402 (= res!681819 (bvslt (_1!7675 (h!22825 (t!30640 l!1114))) (_1!7675 (h!22825 (t!30640 (t!30640 l!1114))))))))

(declare-fun b!1016403 () Bool)

(assert (=> b!1016403 (= e!571824 (isStrictlySorted!611 (t!30640 (t!30640 l!1114))))))

(assert (= (and d!121221 (not res!681818)) b!1016402))

(assert (= (and b!1016402 res!681819) b!1016403))

(declare-fun m!938215 () Bool)

(assert (=> b!1016403 m!938215))

(assert (=> b!1016360 d!121221))

(declare-fun d!121223 () Bool)

(assert (=> d!121223 (= (isEmpty!884 (getValueByKey!552 l!1114 (h!22826 keys!40))) (not (is-Some!602 (getValueByKey!552 l!1114 (h!22826 keys!40)))))))

(assert (=> d!121175 d!121223))

