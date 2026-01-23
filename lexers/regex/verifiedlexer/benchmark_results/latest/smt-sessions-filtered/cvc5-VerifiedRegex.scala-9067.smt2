; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!486340 () Bool)

(assert start!486340)

(declare-fun res!2017919 () Bool)

(declare-fun e!2967256 () Bool)

(assert (=> start!486340 (=> (not res!2017919) (not e!2967256))))

(declare-datatypes ((K!14738 0))(
  ( (K!14739 (val!20061 Int)) )
))
(declare-datatypes ((V!14984 0))(
  ( (V!14985 (val!20062 Int)) )
))
(declare-datatypes ((tuple2!55042 0))(
  ( (tuple2!55043 (_1!30815 K!14738) (_2!30815 V!14984)) )
))
(declare-datatypes ((List!53305 0))(
  ( (Nil!53181) (Cons!53181 (h!59584 tuple2!55042) (t!360649 List!53305)) )
))
(declare-fun l!13802 () List!53305)

(declare-fun noDuplicateKeys!2229 (List!53305) Bool)

(assert (=> start!486340 (= res!2017919 (noDuplicateKeys!2229 l!13802))))

(assert (=> start!486340 e!2967256))

(declare-fun e!2967255 () Bool)

(assert (=> start!486340 e!2967255))

(assert (=> start!486340 true))

(declare-fun b!4756358 () Bool)

(declare-fun res!2017918 () Bool)

(assert (=> b!4756358 (=> (not res!2017918) (not e!2967256))))

(declare-fun hash!423 () (_ BitVec 64))

(declare-datatypes ((Hashable!6461 0))(
  ( (HashableExt!6460 (__x!32164 Int)) )
))
(declare-fun hashF!1449 () Hashable!6461)

(declare-fun allKeysSameHash!1918 (List!53305 (_ BitVec 64) Hashable!6461) Bool)

(assert (=> b!4756358 (= res!2017918 (allKeysSameHash!1918 l!13802 hash!423 hashF!1449))))

(declare-fun b!4756359 () Bool)

(declare-fun ListPrimitiveSize!344 (List!53305) Int)

(assert (=> b!4756359 (= e!2967256 (< (ListPrimitiveSize!344 l!13802) 0))))

(declare-fun tp_is_empty!32233 () Bool)

(declare-fun b!4756360 () Bool)

(declare-fun tp!1351006 () Bool)

(declare-fun tp_is_empty!32235 () Bool)

(assert (=> b!4756360 (= e!2967255 (and tp_is_empty!32233 tp_is_empty!32235 tp!1351006))))

(assert (= (and start!486340 res!2017919) b!4756358))

(assert (= (and b!4756358 res!2017918) b!4756359))

(assert (= (and start!486340 (is-Cons!53181 l!13802)) b!4756360))

(declare-fun m!5726415 () Bool)

(assert (=> start!486340 m!5726415))

(declare-fun m!5726417 () Bool)

(assert (=> b!4756358 m!5726417))

(declare-fun m!5726419 () Bool)

(assert (=> b!4756359 m!5726419))

(push 1)

(assert (not b!4756360))

(assert tp_is_empty!32233)

(assert (not start!486340))

(assert (not b!4756358))

(assert tp_is_empty!32235)

(assert (not b!4756359))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1520876 () Bool)

(declare-fun lt!1923000 () Int)

(assert (=> d!1520876 (>= lt!1923000 0)))

(declare-fun e!2967265 () Int)

(assert (=> d!1520876 (= lt!1923000 e!2967265)))

(declare-fun c!811696 () Bool)

(assert (=> d!1520876 (= c!811696 (is-Nil!53181 l!13802))))

(assert (=> d!1520876 (= (ListPrimitiveSize!344 l!13802) lt!1923000)))

(declare-fun b!4756374 () Bool)

(assert (=> b!4756374 (= e!2967265 0)))

(declare-fun b!4756375 () Bool)

(assert (=> b!4756375 (= e!2967265 (+ 1 (ListPrimitiveSize!344 (t!360649 l!13802))))))

(assert (= (and d!1520876 c!811696) b!4756374))

(assert (= (and d!1520876 (not c!811696)) b!4756375))

(declare-fun m!5726427 () Bool)

(assert (=> b!4756375 m!5726427))

(assert (=> b!4756359 d!1520876))

(declare-fun d!1520878 () Bool)

(declare-fun res!2017930 () Bool)

(declare-fun e!2967270 () Bool)

(assert (=> d!1520878 (=> res!2017930 e!2967270)))

(assert (=> d!1520878 (= res!2017930 (not (is-Cons!53181 l!13802)))))

(assert (=> d!1520878 (= (noDuplicateKeys!2229 l!13802) e!2967270)))

(declare-fun b!4756380 () Bool)

(declare-fun e!2967271 () Bool)

(assert (=> b!4756380 (= e!2967270 e!2967271)))

(declare-fun res!2017931 () Bool)

(assert (=> b!4756380 (=> (not res!2017931) (not e!2967271))))

(declare-fun containsKey!3616 (List!53305 K!14738) Bool)

(assert (=> b!4756380 (= res!2017931 (not (containsKey!3616 (t!360649 l!13802) (_1!30815 (h!59584 l!13802)))))))

(declare-fun b!4756381 () Bool)

(assert (=> b!4756381 (= e!2967271 (noDuplicateKeys!2229 (t!360649 l!13802)))))

(assert (= (and d!1520878 (not res!2017930)) b!4756380))

(assert (= (and b!4756380 res!2017931) b!4756381))

(declare-fun m!5726429 () Bool)

(assert (=> b!4756380 m!5726429))

(declare-fun m!5726431 () Bool)

(assert (=> b!4756381 m!5726431))

(assert (=> start!486340 d!1520878))

(declare-fun d!1520880 () Bool)

(assert (=> d!1520880 true))

(assert (=> d!1520880 true))

(declare-fun lambda!223513 () Int)

(declare-fun forall!11801 (List!53305 Int) Bool)

(assert (=> d!1520880 (= (allKeysSameHash!1918 l!13802 hash!423 hashF!1449) (forall!11801 l!13802 lambda!223513))))

(declare-fun bs!1146922 () Bool)

(assert (= bs!1146922 d!1520880))

(declare-fun m!5726433 () Bool)

(assert (=> bs!1146922 m!5726433))

(assert (=> b!4756358 d!1520880))

(declare-fun e!2967274 () Bool)

(declare-fun tp!1351012 () Bool)

(declare-fun b!4756390 () Bool)

(assert (=> b!4756390 (= e!2967274 (and tp_is_empty!32233 tp_is_empty!32235 tp!1351012))))

(assert (=> b!4756360 (= tp!1351006 e!2967274)))

(assert (= (and b!4756360 (is-Cons!53181 (t!360649 l!13802))) b!4756390))

(push 1)

(assert (not b!4756381))

(assert (not b!4756390))

(assert tp_is_empty!32233)

(assert (not b!4756375))

(assert (not b!4756380))

(assert (not d!1520880))

(assert tp_is_empty!32235)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

