; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!507978 () Bool)

(assert start!507978)

(declare-fun res!2075071 () Bool)

(declare-fun e!3039090 () Bool)

(assert (=> start!507978 (=> (not res!2075071) (not e!3039090))))

(declare-datatypes ((V!17910 0))(
  ( (V!17911 (val!22469 Int)) )
))
(declare-datatypes ((K!17640 0))(
  ( (K!17641 (val!22470 Int)) )
))
(declare-datatypes ((tuple2!59638 0))(
  ( (tuple2!59639 (_1!33122 K!17640) (_2!33122 V!17910)) )
))
(declare-datatypes ((List!55940 0))(
  ( (Nil!55816) (Cons!55816 (h!62264 tuple2!59638) (t!363560 List!55940)) )
))
(declare-datatypes ((tuple2!59640 0))(
  ( (tuple2!59641 (_1!33123 (_ BitVec 64)) (_2!33123 List!55940)) )
))
(declare-datatypes ((List!55941 0))(
  ( (Nil!55817) (Cons!55817 (h!62265 tuple2!59640) (t!363561 List!55941)) )
))
(declare-fun l!10962 () List!55941)

(declare-fun lambda!243136 () Int)

(declare-fun forall!13023 (List!55941 Int) Bool)

(assert (=> start!507978 (= res!2075071 (forall!13023 l!10962 lambda!243136))))

(assert (=> start!507978 e!3039090))

(declare-fun e!3039091 () Bool)

(assert (=> start!507978 e!3039091))

(declare-fun b!4860890 () Bool)

(declare-fun res!2075070 () Bool)

(assert (=> b!4860890 (=> (not res!2075070) (not e!3039090))))

(assert (=> b!4860890 (= res!2075070 (is-Cons!55817 l!10962))))

(declare-fun b!4860891 () Bool)

(assert (=> b!4860891 (= e!3039090 (not (forall!13023 (t!363561 l!10962) lambda!243136)))))

(declare-fun b!4860892 () Bool)

(declare-fun tp!1367566 () Bool)

(declare-fun tp!1367567 () Bool)

(assert (=> b!4860892 (= e!3039091 (and tp!1367566 tp!1367567))))

(assert (= (and start!507978 res!2075071) b!4860890))

(assert (= (and b!4860890 res!2075070) b!4860891))

(assert (= (and start!507978 (is-Cons!55817 l!10962)) b!4860892))

(declare-fun m!5858762 () Bool)

(assert (=> start!507978 m!5858762))

(declare-fun m!5858764 () Bool)

(assert (=> b!4860891 m!5858764))

(push 1)

(assert (not b!4860891))

(assert (not start!507978))

(assert (not b!4860892))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1560206 () Bool)

(declare-fun res!2075082 () Bool)

(declare-fun e!3039102 () Bool)

(assert (=> d!1560206 (=> res!2075082 e!3039102)))

(assert (=> d!1560206 (= res!2075082 (is-Nil!55817 (t!363561 l!10962)))))

(assert (=> d!1560206 (= (forall!13023 (t!363561 l!10962) lambda!243136) e!3039102)))

(declare-fun b!4860906 () Bool)

(declare-fun e!3039103 () Bool)

(assert (=> b!4860906 (= e!3039102 e!3039103)))

(declare-fun res!2075083 () Bool)

(assert (=> b!4860906 (=> (not res!2075083) (not e!3039103))))

(declare-fun dynLambda!22397 (Int tuple2!59640) Bool)

(assert (=> b!4860906 (= res!2075083 (dynLambda!22397 lambda!243136 (h!62265 (t!363561 l!10962))))))

(declare-fun b!4860907 () Bool)

(assert (=> b!4860907 (= e!3039103 (forall!13023 (t!363561 (t!363561 l!10962)) lambda!243136))))

(assert (= (and d!1560206 (not res!2075082)) b!4860906))

(assert (= (and b!4860906 res!2075083) b!4860907))

(declare-fun b_lambda!193313 () Bool)

(assert (=> (not b_lambda!193313) (not b!4860906)))

(declare-fun m!5858770 () Bool)

(assert (=> b!4860906 m!5858770))

(declare-fun m!5858772 () Bool)

(assert (=> b!4860907 m!5858772))

(assert (=> b!4860891 d!1560206))

(declare-fun d!1560208 () Bool)

(declare-fun res!2075084 () Bool)

(declare-fun e!3039104 () Bool)

(assert (=> d!1560208 (=> res!2075084 e!3039104)))

(assert (=> d!1560208 (= res!2075084 (is-Nil!55817 l!10962))))

(assert (=> d!1560208 (= (forall!13023 l!10962 lambda!243136) e!3039104)))

(declare-fun b!4860908 () Bool)

(declare-fun e!3039105 () Bool)

(assert (=> b!4860908 (= e!3039104 e!3039105)))

(declare-fun res!2075085 () Bool)

(assert (=> b!4860908 (=> (not res!2075085) (not e!3039105))))

(assert (=> b!4860908 (= res!2075085 (dynLambda!22397 lambda!243136 (h!62265 l!10962)))))

(declare-fun b!4860909 () Bool)

(assert (=> b!4860909 (= e!3039105 (forall!13023 (t!363561 l!10962) lambda!243136))))

(assert (= (and d!1560208 (not res!2075084)) b!4860908))

(assert (= (and b!4860908 res!2075085) b!4860909))

(declare-fun b_lambda!193315 () Bool)

(assert (=> (not b_lambda!193315) (not b!4860908)))

(declare-fun m!5858774 () Bool)

(assert (=> b!4860908 m!5858774))

(assert (=> b!4860909 m!5858764))

(assert (=> start!507978 d!1560208))

(declare-fun e!3039108 () Bool)

(declare-fun tp!1367576 () Bool)

(declare-fun tp_is_empty!35591 () Bool)

(declare-fun b!4860914 () Bool)

(declare-fun tp_is_empty!35589 () Bool)

(assert (=> b!4860914 (= e!3039108 (and tp_is_empty!35589 tp_is_empty!35591 tp!1367576))))

(assert (=> b!4860892 (= tp!1367566 e!3039108)))

(assert (= (and b!4860892 (is-Cons!55816 (_2!33123 (h!62265 l!10962)))) b!4860914))

(declare-fun b!4860919 () Bool)

(declare-fun e!3039111 () Bool)

(declare-fun tp!1367581 () Bool)

(declare-fun tp!1367582 () Bool)

(assert (=> b!4860919 (= e!3039111 (and tp!1367581 tp!1367582))))

(assert (=> b!4860892 (= tp!1367567 e!3039111)))

(assert (= (and b!4860892 (is-Cons!55817 (t!363561 l!10962))) b!4860919))

(declare-fun b_lambda!193317 () Bool)

(assert (= b_lambda!193315 (or start!507978 b_lambda!193317)))

(declare-fun bs!1173896 () Bool)

(declare-fun d!1560210 () Bool)

(assert (= bs!1173896 (and d!1560210 start!507978)))

(declare-fun noDuplicateKeys!2648 (List!55940) Bool)

(assert (=> bs!1173896 (= (dynLambda!22397 lambda!243136 (h!62265 l!10962)) (noDuplicateKeys!2648 (_2!33123 (h!62265 l!10962))))))

(declare-fun m!5858776 () Bool)

(assert (=> bs!1173896 m!5858776))

(assert (=> b!4860908 d!1560210))

(declare-fun b_lambda!193319 () Bool)

(assert (= b_lambda!193313 (or start!507978 b_lambda!193319)))

(declare-fun bs!1173897 () Bool)

(declare-fun d!1560212 () Bool)

(assert (= bs!1173897 (and d!1560212 start!507978)))

(assert (=> bs!1173897 (= (dynLambda!22397 lambda!243136 (h!62265 (t!363561 l!10962))) (noDuplicateKeys!2648 (_2!33123 (h!62265 (t!363561 l!10962)))))))

(declare-fun m!5858778 () Bool)

(assert (=> bs!1173897 m!5858778))

(assert (=> b!4860906 d!1560212))

(push 1)

(assert (not b!4860909))

(assert (not b!4860919))

(assert (not bs!1173896))

(assert (not b!4860914))

(assert tp_is_empty!35591)

(assert (not b!4860907))

(assert (not b_lambda!193319))

(assert (not b_lambda!193317))

(assert tp_is_empty!35589)

(assert (not bs!1173897))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

