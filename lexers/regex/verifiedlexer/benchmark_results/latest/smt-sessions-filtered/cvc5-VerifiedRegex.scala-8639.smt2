; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!461154 () Bool)

(assert start!461154)

(declare-fun tp!1341117 () Bool)

(declare-fun tp_is_empty!28809 () Bool)

(declare-fun e!2876110 () Bool)

(declare-fun b!4610691 () Bool)

(declare-fun tp_is_empty!28811 () Bool)

(assert (=> b!4610691 (= e!2876110 (and tp_is_empty!28809 tp_is_empty!28811 tp!1341117))))

(declare-fun res!1930400 () Bool)

(declare-fun e!2876111 () Bool)

(assert (=> start!461154 (=> (not res!1930400) (not e!2876111))))

(declare-datatypes ((K!12598 0))(
  ( (K!12599 (val!18349 Int)) )
))
(declare-datatypes ((V!12844 0))(
  ( (V!12845 (val!18350 Int)) )
))
(declare-datatypes ((tuple2!51962 0))(
  ( (tuple2!51963 (_1!29275 K!12598) (_2!29275 V!12844)) )
))
(declare-datatypes ((List!51351 0))(
  ( (Nil!51227) (Cons!51227 (h!57221 tuple2!51962) (t!358345 List!51351)) )
))
(declare-fun oldBucket!40 () List!51351)

(declare-fun noDuplicateKeys!1379 (List!51351) Bool)

(assert (=> start!461154 (= res!1930400 (noDuplicateKeys!1379 oldBucket!40))))

(assert (=> start!461154 e!2876111))

(assert (=> start!461154 true))

(assert (=> start!461154 e!2876110))

(assert (=> start!461154 tp_is_empty!28809))

(declare-fun e!2876109 () Bool)

(assert (=> start!461154 e!2876109))

(declare-fun b!4610692 () Bool)

(declare-fun res!1930399 () Bool)

(assert (=> b!4610692 (=> (not res!1930399) (not e!2876111))))

(declare-fun newBucket!224 () List!51351)

(assert (=> b!4610692 (= res!1930399 (noDuplicateKeys!1379 newBucket!224))))

(declare-fun tp!1341116 () Bool)

(declare-fun b!4610693 () Bool)

(assert (=> b!4610693 (= e!2876109 (and tp_is_empty!28809 tp_is_empty!28811 tp!1341116))))

(declare-fun b!4610694 () Bool)

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lambda!188475 () Int)

(declare-datatypes ((tuple2!51964 0))(
  ( (tuple2!51965 (_1!29276 (_ BitVec 64)) (_2!29276 List!51351)) )
))
(declare-datatypes ((List!51352 0))(
  ( (Nil!51228) (Cons!51228 (h!57222 tuple2!51964) (t!358346 List!51352)) )
))
(declare-fun forall!10701 (List!51352 Int) Bool)

(assert (=> b!4610694 (= e!2876111 (not (forall!10701 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228) lambda!188475)))))

(declare-fun b!4610695 () Bool)

(declare-fun res!1930397 () Bool)

(assert (=> b!4610695 (=> (not res!1930397) (not e!2876111))))

(declare-fun key!4968 () K!12598)

(declare-fun removePairForKey!1002 (List!51351 K!12598) List!51351)

(assert (=> b!4610695 (= res!1930397 (= (removePairForKey!1002 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4610696 () Bool)

(declare-fun res!1930398 () Bool)

(assert (=> b!4610696 (=> (not res!1930398) (not e!2876111))))

(declare-datatypes ((Hashable!5776 0))(
  ( (HashableExt!5775 (__x!31479 Int)) )
))
(declare-fun hashF!1389 () Hashable!5776)

(declare-fun allKeysSameHash!1233 (List!51351 (_ BitVec 64) Hashable!5776) Bool)

(assert (=> b!4610696 (= res!1930398 (allKeysSameHash!1233 oldBucket!40 hash!414 hashF!1389))))

(assert (= (and start!461154 res!1930400) b!4610692))

(assert (= (and b!4610692 res!1930399) b!4610695))

(assert (= (and b!4610695 res!1930397) b!4610696))

(assert (= (and b!4610696 res!1930398) b!4610694))

(assert (= (and start!461154 (is-Cons!51227 oldBucket!40)) b!4610691))

(assert (= (and start!461154 (is-Cons!51227 newBucket!224)) b!4610693))

(declare-fun m!5442335 () Bool)

(assert (=> b!4610696 m!5442335))

(declare-fun m!5442337 () Bool)

(assert (=> b!4610695 m!5442337))

(declare-fun m!5442339 () Bool)

(assert (=> b!4610694 m!5442339))

(declare-fun m!5442341 () Bool)

(assert (=> start!461154 m!5442341))

(declare-fun m!5442343 () Bool)

(assert (=> b!4610692 m!5442343))

(push 1)

(assert tp_is_empty!28809)

(assert (not b!4610695))

(assert (not b!4610693))

(assert tp_is_empty!28811)

(assert (not b!4610691))

(assert (not b!4610692))

(assert (not b!4610696))

(assert (not b!4610694))

(assert (not start!461154))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1452940 () Bool)

(declare-fun res!1930417 () Bool)

(declare-fun e!2876125 () Bool)

(assert (=> d!1452940 (=> res!1930417 e!2876125)))

(assert (=> d!1452940 (= res!1930417 (not (is-Cons!51227 newBucket!224)))))

(assert (=> d!1452940 (= (noDuplicateKeys!1379 newBucket!224) e!2876125)))

(declare-fun b!4610719 () Bool)

(declare-fun e!2876126 () Bool)

(assert (=> b!4610719 (= e!2876125 e!2876126)))

(declare-fun res!1930418 () Bool)

(assert (=> b!4610719 (=> (not res!1930418) (not e!2876126))))

(declare-fun containsKey!2271 (List!51351 K!12598) Bool)

(assert (=> b!4610719 (= res!1930418 (not (containsKey!2271 (t!358345 newBucket!224) (_1!29275 (h!57221 newBucket!224)))))))

(declare-fun b!4610720 () Bool)

(assert (=> b!4610720 (= e!2876126 (noDuplicateKeys!1379 (t!358345 newBucket!224)))))

(assert (= (and d!1452940 (not res!1930417)) b!4610719))

(assert (= (and b!4610719 res!1930418) b!4610720))

(declare-fun m!5442355 () Bool)

(assert (=> b!4610719 m!5442355))

(declare-fun m!5442357 () Bool)

(assert (=> b!4610720 m!5442357))

(assert (=> b!4610692 d!1452940))

(declare-fun d!1452942 () Bool)

(declare-fun res!1930419 () Bool)

(declare-fun e!2876127 () Bool)

(assert (=> d!1452942 (=> res!1930419 e!2876127)))

(assert (=> d!1452942 (= res!1930419 (not (is-Cons!51227 oldBucket!40)))))

(assert (=> d!1452942 (= (noDuplicateKeys!1379 oldBucket!40) e!2876127)))

(declare-fun b!4610721 () Bool)

(declare-fun e!2876128 () Bool)

(assert (=> b!4610721 (= e!2876127 e!2876128)))

(declare-fun res!1930420 () Bool)

(assert (=> b!4610721 (=> (not res!1930420) (not e!2876128))))

(assert (=> b!4610721 (= res!1930420 (not (containsKey!2271 (t!358345 oldBucket!40) (_1!29275 (h!57221 oldBucket!40)))))))

(declare-fun b!4610722 () Bool)

(assert (=> b!4610722 (= e!2876128 (noDuplicateKeys!1379 (t!358345 oldBucket!40)))))

(assert (= (and d!1452942 (not res!1930419)) b!4610721))

(assert (= (and b!4610721 res!1930420) b!4610722))

(declare-fun m!5442359 () Bool)

(assert (=> b!4610721 m!5442359))

(declare-fun m!5442361 () Bool)

(assert (=> b!4610722 m!5442361))

(assert (=> start!461154 d!1452942))

(declare-fun d!1452944 () Bool)

(assert (=> d!1452944 true))

(assert (=> d!1452944 true))

(declare-fun lambda!188481 () Int)

(declare-fun forall!10703 (List!51351 Int) Bool)

(assert (=> d!1452944 (= (allKeysSameHash!1233 oldBucket!40 hash!414 hashF!1389) (forall!10703 oldBucket!40 lambda!188481))))

(declare-fun bs!1016130 () Bool)

(assert (= bs!1016130 d!1452944))

(declare-fun m!5442363 () Bool)

(assert (=> bs!1016130 m!5442363))

(assert (=> b!4610696 d!1452944))

(declare-fun b!4610736 () Bool)

(declare-fun e!2876134 () List!51351)

(declare-fun e!2876133 () List!51351)

(assert (=> b!4610736 (= e!2876134 e!2876133)))

(declare-fun c!789744 () Bool)

(assert (=> b!4610736 (= c!789744 (is-Cons!51227 oldBucket!40))))

(declare-fun b!4610738 () Bool)

(assert (=> b!4610738 (= e!2876133 Nil!51227)))

(declare-fun b!4610737 () Bool)

(assert (=> b!4610737 (= e!2876133 (Cons!51227 (h!57221 oldBucket!40) (removePairForKey!1002 (t!358345 oldBucket!40) key!4968)))))

(declare-fun b!4610735 () Bool)

(assert (=> b!4610735 (= e!2876134 (t!358345 oldBucket!40))))

(declare-fun d!1452946 () Bool)

(declare-fun lt!1767110 () List!51351)

(assert (=> d!1452946 (not (containsKey!2271 lt!1767110 key!4968))))

(assert (=> d!1452946 (= lt!1767110 e!2876134)))

(declare-fun c!789743 () Bool)

(assert (=> d!1452946 (= c!789743 (and (is-Cons!51227 oldBucket!40) (= (_1!29275 (h!57221 oldBucket!40)) key!4968)))))

(assert (=> d!1452946 (noDuplicateKeys!1379 oldBucket!40)))

(assert (=> d!1452946 (= (removePairForKey!1002 oldBucket!40 key!4968) lt!1767110)))

(assert (= (and d!1452946 c!789743) b!4610735))

(assert (= (and d!1452946 (not c!789743)) b!4610736))

(assert (= (and b!4610736 c!789744) b!4610737))

(assert (= (and b!4610736 (not c!789744)) b!4610738))

(declare-fun m!5442365 () Bool)

(assert (=> b!4610737 m!5442365))

(declare-fun m!5442367 () Bool)

(assert (=> d!1452946 m!5442367))

(assert (=> d!1452946 m!5442341))

(assert (=> b!4610695 d!1452946))

(declare-fun d!1452950 () Bool)

(declare-fun res!1930429 () Bool)

(declare-fun e!2876143 () Bool)

(assert (=> d!1452950 (=> res!1930429 e!2876143)))

(assert (=> d!1452950 (= res!1930429 (is-Nil!51228 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228)))))

(assert (=> d!1452950 (= (forall!10701 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228) lambda!188475) e!2876143)))

(declare-fun b!4610747 () Bool)

(declare-fun e!2876144 () Bool)

(assert (=> b!4610747 (= e!2876143 e!2876144)))

(declare-fun res!1930430 () Bool)

(assert (=> b!4610747 (=> (not res!1930430) (not e!2876144))))

(declare-fun dynLambda!21442 (Int tuple2!51964) Bool)

(assert (=> b!4610747 (= res!1930430 (dynLambda!21442 lambda!188475 (h!57222 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228))))))

(declare-fun b!4610748 () Bool)

(assert (=> b!4610748 (= e!2876144 (forall!10701 (t!358346 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228)) lambda!188475))))

(assert (= (and d!1452950 (not res!1930429)) b!4610747))

(assert (= (and b!4610747 res!1930430) b!4610748))

(declare-fun b_lambda!170437 () Bool)

(assert (=> (not b_lambda!170437) (not b!4610747)))

(declare-fun m!5442369 () Bool)

(assert (=> b!4610747 m!5442369))

(declare-fun m!5442371 () Bool)

(assert (=> b!4610748 m!5442371))

(assert (=> b!4610694 d!1452950))

(declare-fun b!4610755 () Bool)

(declare-fun tp!1341126 () Bool)

(declare-fun e!2876149 () Bool)

(assert (=> b!4610755 (= e!2876149 (and tp_is_empty!28809 tp_is_empty!28811 tp!1341126))))

(assert (=> b!4610691 (= tp!1341117 e!2876149)))

(assert (= (and b!4610691 (is-Cons!51227 (t!358345 oldBucket!40))) b!4610755))

(declare-fun tp!1341127 () Bool)

(declare-fun b!4610756 () Bool)

(declare-fun e!2876150 () Bool)

(assert (=> b!4610756 (= e!2876150 (and tp_is_empty!28809 tp_is_empty!28811 tp!1341127))))

(assert (=> b!4610693 (= tp!1341116 e!2876150)))

(assert (= (and b!4610693 (is-Cons!51227 (t!358345 newBucket!224))) b!4610756))

(declare-fun b_lambda!170439 () Bool)

(assert (= b_lambda!170437 (or b!4610694 b_lambda!170439)))

(declare-fun bs!1016131 () Bool)

(declare-fun d!1452952 () Bool)

(assert (= bs!1016131 (and d!1452952 b!4610694)))

(assert (=> bs!1016131 (= (dynLambda!21442 lambda!188475 (h!57222 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228))) (noDuplicateKeys!1379 (_2!29276 (h!57222 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228)))))))

(declare-fun m!5442377 () Bool)

(assert (=> bs!1016131 m!5442377))

(assert (=> b!4610747 d!1452952))

(push 1)

(assert (not d!1452946))

(assert (not d!1452944))

(assert (not b!4610721))

(assert (not bs!1016131))

(assert (not b!4610720))

(assert (not b!4610719))

(assert (not b_lambda!170439))

(assert (not b!4610748))

(assert tp_is_empty!28809)

(assert (not b!4610737))

(assert (not b!4610755))

(assert tp_is_empty!28811)

(assert (not b!4610756))

(assert (not b!4610722))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1452964 () Bool)

(declare-fun res!1930441 () Bool)

(declare-fun e!2876169 () Bool)

(assert (=> d!1452964 (=> res!1930441 e!2876169)))

(assert (=> d!1452964 (= res!1930441 (not (is-Cons!51227 (_2!29276 (h!57222 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228))))))))

(assert (=> d!1452964 (= (noDuplicateKeys!1379 (_2!29276 (h!57222 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228)))) e!2876169)))

(declare-fun b!4610787 () Bool)

(declare-fun e!2876170 () Bool)

(assert (=> b!4610787 (= e!2876169 e!2876170)))

(declare-fun res!1930442 () Bool)

(assert (=> b!4610787 (=> (not res!1930442) (not e!2876170))))

(assert (=> b!4610787 (= res!1930442 (not (containsKey!2271 (t!358345 (_2!29276 (h!57222 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228)))) (_1!29275 (h!57221 (_2!29276 (h!57222 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228))))))))))

(declare-fun b!4610788 () Bool)

(assert (=> b!4610788 (= e!2876170 (noDuplicateKeys!1379 (t!358345 (_2!29276 (h!57222 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228))))))))

(assert (= (and d!1452964 (not res!1930441)) b!4610787))

(assert (= (and b!4610787 res!1930442) b!4610788))

(declare-fun m!5442395 () Bool)

(assert (=> b!4610787 m!5442395))

(declare-fun m!5442397 () Bool)

(assert (=> b!4610788 m!5442397))

(assert (=> bs!1016131 d!1452964))

(declare-fun d!1452966 () Bool)

(declare-fun res!1930443 () Bool)

(declare-fun e!2876171 () Bool)

(assert (=> d!1452966 (=> res!1930443 e!2876171)))

(assert (=> d!1452966 (= res!1930443 (is-Nil!51228 (t!358346 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228))))))

(assert (=> d!1452966 (= (forall!10701 (t!358346 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228)) lambda!188475) e!2876171)))

(declare-fun b!4610789 () Bool)

(declare-fun e!2876172 () Bool)

(assert (=> b!4610789 (= e!2876171 e!2876172)))

(declare-fun res!1930444 () Bool)

(assert (=> b!4610789 (=> (not res!1930444) (not e!2876172))))

(assert (=> b!4610789 (= res!1930444 (dynLambda!21442 lambda!188475 (h!57222 (t!358346 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228)))))))

(declare-fun b!4610790 () Bool)

(assert (=> b!4610790 (= e!2876172 (forall!10701 (t!358346 (t!358346 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228))) lambda!188475))))

(assert (= (and d!1452966 (not res!1930443)) b!4610789))

(assert (= (and b!4610789 res!1930444) b!4610790))

(declare-fun b_lambda!170445 () Bool)

(assert (=> (not b_lambda!170445) (not b!4610789)))

(declare-fun m!5442399 () Bool)

(assert (=> b!4610789 m!5442399))

(declare-fun m!5442401 () Bool)

(assert (=> b!4610790 m!5442401))

(assert (=> b!4610748 d!1452966))

(declare-fun d!1452968 () Bool)

(declare-fun res!1930445 () Bool)

(declare-fun e!2876173 () Bool)

(assert (=> d!1452968 (=> res!1930445 e!2876173)))

(assert (=> d!1452968 (= res!1930445 (not (is-Cons!51227 (t!358345 oldBucket!40))))))

(assert (=> d!1452968 (= (noDuplicateKeys!1379 (t!358345 oldBucket!40)) e!2876173)))

(declare-fun b!4610791 () Bool)

(declare-fun e!2876174 () Bool)

(assert (=> b!4610791 (= e!2876173 e!2876174)))

(declare-fun res!1930446 () Bool)

(assert (=> b!4610791 (=> (not res!1930446) (not e!2876174))))

(assert (=> b!4610791 (= res!1930446 (not (containsKey!2271 (t!358345 (t!358345 oldBucket!40)) (_1!29275 (h!57221 (t!358345 oldBucket!40))))))))

(declare-fun b!4610792 () Bool)

(assert (=> b!4610792 (= e!2876174 (noDuplicateKeys!1379 (t!358345 (t!358345 oldBucket!40))))))

(assert (= (and d!1452968 (not res!1930445)) b!4610791))

(assert (= (and b!4610791 res!1930446) b!4610792))

(declare-fun m!5442403 () Bool)

(assert (=> b!4610791 m!5442403))

(declare-fun m!5442405 () Bool)

(assert (=> b!4610792 m!5442405))

(assert (=> b!4610722 d!1452968))

(declare-fun d!1452970 () Bool)

(declare-fun res!1930451 () Bool)

(declare-fun e!2876179 () Bool)

(assert (=> d!1452970 (=> res!1930451 e!2876179)))

(assert (=> d!1452970 (= res!1930451 (is-Nil!51227 oldBucket!40))))

(assert (=> d!1452970 (= (forall!10703 oldBucket!40 lambda!188481) e!2876179)))

(declare-fun b!4610797 () Bool)

(declare-fun e!2876180 () Bool)

(assert (=> b!4610797 (= e!2876179 e!2876180)))

(declare-fun res!1930452 () Bool)

(assert (=> b!4610797 (=> (not res!1930452) (not e!2876180))))

(declare-fun dynLambda!21444 (Int tuple2!51962) Bool)

(assert (=> b!4610797 (= res!1930452 (dynLambda!21444 lambda!188481 (h!57221 oldBucket!40)))))

(declare-fun b!4610798 () Bool)

(assert (=> b!4610798 (= e!2876180 (forall!10703 (t!358345 oldBucket!40) lambda!188481))))

(assert (= (and d!1452970 (not res!1930451)) b!4610797))

(assert (= (and b!4610797 res!1930452) b!4610798))

(declare-fun b_lambda!170447 () Bool)

(assert (=> (not b_lambda!170447) (not b!4610797)))

(declare-fun m!5442407 () Bool)

(assert (=> b!4610797 m!5442407))

(declare-fun m!5442409 () Bool)

(assert (=> b!4610798 m!5442409))

(assert (=> d!1452944 d!1452970))

(declare-fun d!1452972 () Bool)

(declare-fun res!1930457 () Bool)

(declare-fun e!2876185 () Bool)

(assert (=> d!1452972 (=> res!1930457 e!2876185)))

(assert (=> d!1452972 (= res!1930457 (and (is-Cons!51227 (t!358345 oldBucket!40)) (= (_1!29275 (h!57221 (t!358345 oldBucket!40))) (_1!29275 (h!57221 oldBucket!40)))))))

(assert (=> d!1452972 (= (containsKey!2271 (t!358345 oldBucket!40) (_1!29275 (h!57221 oldBucket!40))) e!2876185)))

(declare-fun b!4610803 () Bool)

(declare-fun e!2876186 () Bool)

(assert (=> b!4610803 (= e!2876185 e!2876186)))

(declare-fun res!1930458 () Bool)

(assert (=> b!4610803 (=> (not res!1930458) (not e!2876186))))

(assert (=> b!4610803 (= res!1930458 (is-Cons!51227 (t!358345 oldBucket!40)))))

(declare-fun b!4610804 () Bool)

(assert (=> b!4610804 (= e!2876186 (containsKey!2271 (t!358345 (t!358345 oldBucket!40)) (_1!29275 (h!57221 oldBucket!40))))))

(assert (= (and d!1452972 (not res!1930457)) b!4610803))

(assert (= (and b!4610803 res!1930458) b!4610804))

(declare-fun m!5442411 () Bool)

(assert (=> b!4610804 m!5442411))

(assert (=> b!4610721 d!1452972))

(declare-fun b!4610806 () Bool)

(declare-fun e!2876188 () List!51351)

(declare-fun e!2876187 () List!51351)

(assert (=> b!4610806 (= e!2876188 e!2876187)))

(declare-fun c!789752 () Bool)

(assert (=> b!4610806 (= c!789752 (is-Cons!51227 (t!358345 oldBucket!40)))))

(declare-fun b!4610808 () Bool)

(assert (=> b!4610808 (= e!2876187 Nil!51227)))

(declare-fun b!4610807 () Bool)

(assert (=> b!4610807 (= e!2876187 (Cons!51227 (h!57221 (t!358345 oldBucket!40)) (removePairForKey!1002 (t!358345 (t!358345 oldBucket!40)) key!4968)))))

(declare-fun b!4610805 () Bool)

(assert (=> b!4610805 (= e!2876188 (t!358345 (t!358345 oldBucket!40)))))

(declare-fun d!1452974 () Bool)

(declare-fun lt!1767114 () List!51351)

(assert (=> d!1452974 (not (containsKey!2271 lt!1767114 key!4968))))

(assert (=> d!1452974 (= lt!1767114 e!2876188)))

(declare-fun c!789751 () Bool)

(assert (=> d!1452974 (= c!789751 (and (is-Cons!51227 (t!358345 oldBucket!40)) (= (_1!29275 (h!57221 (t!358345 oldBucket!40))) key!4968)))))

(assert (=> d!1452974 (noDuplicateKeys!1379 (t!358345 oldBucket!40))))

(assert (=> d!1452974 (= (removePairForKey!1002 (t!358345 oldBucket!40) key!4968) lt!1767114)))

(assert (= (and d!1452974 c!789751) b!4610805))

(assert (= (and d!1452974 (not c!789751)) b!4610806))

(assert (= (and b!4610806 c!789752) b!4610807))

(assert (= (and b!4610806 (not c!789752)) b!4610808))

(declare-fun m!5442413 () Bool)

(assert (=> b!4610807 m!5442413))

(declare-fun m!5442415 () Bool)

(assert (=> d!1452974 m!5442415))

(assert (=> d!1452974 m!5442361))

(assert (=> b!4610737 d!1452974))

(declare-fun d!1452976 () Bool)

(declare-fun res!1930459 () Bool)

(declare-fun e!2876189 () Bool)

(assert (=> d!1452976 (=> res!1930459 e!2876189)))

(assert (=> d!1452976 (= res!1930459 (and (is-Cons!51227 lt!1767110) (= (_1!29275 (h!57221 lt!1767110)) key!4968)))))

(assert (=> d!1452976 (= (containsKey!2271 lt!1767110 key!4968) e!2876189)))

(declare-fun b!4610809 () Bool)

(declare-fun e!2876190 () Bool)

(assert (=> b!4610809 (= e!2876189 e!2876190)))

(declare-fun res!1930460 () Bool)

(assert (=> b!4610809 (=> (not res!1930460) (not e!2876190))))

(assert (=> b!4610809 (= res!1930460 (is-Cons!51227 lt!1767110))))

(declare-fun b!4610810 () Bool)

(assert (=> b!4610810 (= e!2876190 (containsKey!2271 (t!358345 lt!1767110) key!4968))))

(assert (= (and d!1452976 (not res!1930459)) b!4610809))

(assert (= (and b!4610809 res!1930460) b!4610810))

(declare-fun m!5442417 () Bool)

(assert (=> b!4610810 m!5442417))

(assert (=> d!1452946 d!1452976))

(assert (=> d!1452946 d!1452942))

(declare-fun d!1452978 () Bool)

(declare-fun res!1930461 () Bool)

(declare-fun e!2876191 () Bool)

(assert (=> d!1452978 (=> res!1930461 e!2876191)))

(assert (=> d!1452978 (= res!1930461 (not (is-Cons!51227 (t!358345 newBucket!224))))))

(assert (=> d!1452978 (= (noDuplicateKeys!1379 (t!358345 newBucket!224)) e!2876191)))

(declare-fun b!4610811 () Bool)

(declare-fun e!2876192 () Bool)

(assert (=> b!4610811 (= e!2876191 e!2876192)))

(declare-fun res!1930462 () Bool)

(assert (=> b!4610811 (=> (not res!1930462) (not e!2876192))))

(assert (=> b!4610811 (= res!1930462 (not (containsKey!2271 (t!358345 (t!358345 newBucket!224)) (_1!29275 (h!57221 (t!358345 newBucket!224))))))))

(declare-fun b!4610812 () Bool)

(assert (=> b!4610812 (= e!2876192 (noDuplicateKeys!1379 (t!358345 (t!358345 newBucket!224))))))

(assert (= (and d!1452978 (not res!1930461)) b!4610811))

(assert (= (and b!4610811 res!1930462) b!4610812))

(declare-fun m!5442419 () Bool)

(assert (=> b!4610811 m!5442419))

(declare-fun m!5442421 () Bool)

(assert (=> b!4610812 m!5442421))

(assert (=> b!4610720 d!1452978))

(declare-fun d!1452980 () Bool)

(declare-fun res!1930463 () Bool)

(declare-fun e!2876193 () Bool)

(assert (=> d!1452980 (=> res!1930463 e!2876193)))

(assert (=> d!1452980 (= res!1930463 (and (is-Cons!51227 (t!358345 newBucket!224)) (= (_1!29275 (h!57221 (t!358345 newBucket!224))) (_1!29275 (h!57221 newBucket!224)))))))

(assert (=> d!1452980 (= (containsKey!2271 (t!358345 newBucket!224) (_1!29275 (h!57221 newBucket!224))) e!2876193)))

(declare-fun b!4610813 () Bool)

(declare-fun e!2876194 () Bool)

(assert (=> b!4610813 (= e!2876193 e!2876194)))

(declare-fun res!1930464 () Bool)

(assert (=> b!4610813 (=> (not res!1930464) (not e!2876194))))

(assert (=> b!4610813 (= res!1930464 (is-Cons!51227 (t!358345 newBucket!224)))))

(declare-fun b!4610814 () Bool)

(assert (=> b!4610814 (= e!2876194 (containsKey!2271 (t!358345 (t!358345 newBucket!224)) (_1!29275 (h!57221 newBucket!224))))))

(assert (= (and d!1452980 (not res!1930463)) b!4610813))

(assert (= (and b!4610813 res!1930464) b!4610814))

(declare-fun m!5442423 () Bool)

(assert (=> b!4610814 m!5442423))

(assert (=> b!4610719 d!1452980))

(declare-fun b!4610815 () Bool)

(declare-fun e!2876195 () Bool)

(declare-fun tp!1341132 () Bool)

(assert (=> b!4610815 (= e!2876195 (and tp_is_empty!28809 tp_is_empty!28811 tp!1341132))))

(assert (=> b!4610755 (= tp!1341126 e!2876195)))

(assert (= (and b!4610755 (is-Cons!51227 (t!358345 (t!358345 oldBucket!40)))) b!4610815))

(declare-fun tp!1341133 () Bool)

(declare-fun e!2876196 () Bool)

(declare-fun b!4610816 () Bool)

(assert (=> b!4610816 (= e!2876196 (and tp_is_empty!28809 tp_is_empty!28811 tp!1341133))))

(assert (=> b!4610756 (= tp!1341127 e!2876196)))

(assert (= (and b!4610756 (is-Cons!51227 (t!358345 (t!358345 newBucket!224)))) b!4610816))

(declare-fun b_lambda!170449 () Bool)

(assert (= b_lambda!170445 (or b!4610694 b_lambda!170449)))

(declare-fun bs!1016134 () Bool)

(declare-fun d!1452982 () Bool)

(assert (= bs!1016134 (and d!1452982 b!4610694)))

(assert (=> bs!1016134 (= (dynLambda!21442 lambda!188475 (h!57222 (t!358346 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228)))) (noDuplicateKeys!1379 (_2!29276 (h!57222 (t!358346 (Cons!51228 (tuple2!51965 hash!414 oldBucket!40) Nil!51228))))))))

(declare-fun m!5442425 () Bool)

(assert (=> bs!1016134 m!5442425))

(assert (=> b!4610789 d!1452982))

(declare-fun b_lambda!170451 () Bool)

(assert (= b_lambda!170447 (or d!1452944 b_lambda!170451)))

(declare-fun bs!1016135 () Bool)

(declare-fun d!1452984 () Bool)

(assert (= bs!1016135 (and d!1452984 d!1452944)))

(declare-fun hash!3320 (Hashable!5776 K!12598) (_ BitVec 64))

(assert (=> bs!1016135 (= (dynLambda!21444 lambda!188481 (h!57221 oldBucket!40)) (= (hash!3320 hashF!1389 (_1!29275 (h!57221 oldBucket!40))) hash!414))))

(declare-fun m!5442427 () Bool)

(assert (=> bs!1016135 m!5442427))

(assert (=> b!4610797 d!1452984))

(push 1)

(assert (not b!4610790))

(assert (not b!4610807))

(assert (not b!4610812))

(assert (not b_lambda!170451))

(assert (not b!4610816))

(assert tp_is_empty!28811)

(assert (not b!4610810))

(assert (not b!4610815))

(assert (not b_lambda!170449))

(assert (not bs!1016135))

(assert (not b!4610811))

(assert (not b_lambda!170439))

(assert (not b!4610791))

(assert (not b!4610792))

(assert (not b!4610788))

(assert tp_is_empty!28809)

(assert (not b!4610804))

(assert (not b!4610798))

(assert (not b!4610787))

(assert (not d!1452974))

(assert (not bs!1016134))

(assert (not b!4610814))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

