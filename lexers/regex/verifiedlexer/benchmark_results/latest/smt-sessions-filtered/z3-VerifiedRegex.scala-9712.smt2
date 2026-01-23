; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!508072 () Bool)

(assert start!508072)

(declare-datatypes ((K!17677 0))(
  ( (K!17678 (val!22499 Int)) )
))
(declare-datatypes ((B!2961 0))(
  ( (B!2962 (val!22500 Int)) )
))
(declare-datatypes ((tuple2!59696 0))(
  ( (tuple2!59697 (_1!33151 K!17677) (_2!33151 B!2961)) )
))
(declare-datatypes ((List!55969 0))(
  ( (Nil!55845) (Cons!55845 (h!62293 tuple2!59696) (t!363589 List!55969)) )
))
(declare-datatypes ((ListMap!7179 0))(
  ( (ListMap!7180 (toList!7931 List!55969)) )
))
(declare-fun inv!71716 (ListMap!7179) Bool)

(assert (=> start!508072 (not (inv!71716 (ListMap!7180 Nil!55845)))))

(declare-fun bs!1173938 () Bool)

(assert (= bs!1173938 start!508072))

(declare-fun m!5859050 () Bool)

(assert (=> bs!1173938 m!5859050))

(check-sat (not start!508072))
(check-sat)
(get-model)

(declare-fun d!1560317 () Bool)

(declare-fun invariantList!1905 (List!55969) Bool)

(assert (=> d!1560317 (= (inv!71716 (ListMap!7180 Nil!55845)) (invariantList!1905 (toList!7931 (ListMap!7180 Nil!55845))))))

(declare-fun bs!1173939 () Bool)

(assert (= bs!1173939 d!1560317))

(declare-fun m!5859052 () Bool)

(assert (=> bs!1173939 m!5859052))

(assert (=> start!508072 d!1560317))

(check-sat (not d!1560317))
(check-sat)
(get-model)

(declare-fun d!1560319 () Bool)

(declare-fun noDuplicatedKeys!510 (List!55969) Bool)

(assert (=> d!1560319 (= (invariantList!1905 (toList!7931 (ListMap!7180 Nil!55845))) (noDuplicatedKeys!510 (toList!7931 (ListMap!7180 Nil!55845))))))

(declare-fun bs!1173941 () Bool)

(assert (= bs!1173941 d!1560319))

(declare-fun m!5859056 () Bool)

(assert (=> bs!1173941 m!5859056))

(assert (=> d!1560317 d!1560319))

(check-sat (not d!1560319))
(check-sat)
(get-model)

(declare-fun d!1560323 () Bool)

(declare-fun res!2075271 () Bool)

(declare-fun e!3039408 () Bool)

(assert (=> d!1560323 (=> res!2075271 e!3039408)))

(get-info :version)

(assert (=> d!1560323 (= res!2075271 (or ((_ is Nil!55845) (toList!7931 (ListMap!7180 Nil!55845))) ((_ is Nil!55845) (t!363589 (toList!7931 (ListMap!7180 Nil!55845))))))))

(assert (=> d!1560323 (= (noDuplicatedKeys!510 (toList!7931 (ListMap!7180 Nil!55845))) e!3039408)))

(declare-fun b!4861324 () Bool)

(declare-fun e!3039409 () Bool)

(assert (=> b!4861324 (= e!3039408 e!3039409)))

(declare-fun res!2075273 () Bool)

(assert (=> b!4861324 (=> (not res!2075273) (not e!3039409))))

(declare-fun containsKey!4780 (List!55969 K!17677) Bool)

(assert (=> b!4861324 (= res!2075273 (not (containsKey!4780 (t!363589 (toList!7931 (ListMap!7180 Nil!55845))) (_1!33151 (h!62293 (toList!7931 (ListMap!7180 Nil!55845)))))))))

(declare-fun b!4861325 () Bool)

(assert (=> b!4861325 (= e!3039409 (noDuplicatedKeys!510 (t!363589 (toList!7931 (ListMap!7180 Nil!55845)))))))

(assert (= (and d!1560323 (not res!2075271)) b!4861324))

(assert (= (and b!4861324 res!2075273) b!4861325))

(declare-fun m!5859060 () Bool)

(assert (=> b!4861324 m!5859060))

(declare-fun m!5859062 () Bool)

(assert (=> b!4861325 m!5859062))

(assert (=> d!1560319 d!1560323))

(check-sat (not b!4861324) (not b!4861325))
(check-sat)
