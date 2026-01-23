; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!486306 () Bool)

(assert start!486306)

(declare-fun b!4756184 () Bool)

(declare-fun res!2017800 () Bool)

(declare-fun e!2967145 () Bool)

(assert (=> b!4756184 (=> (not res!2017800) (not e!2967145))))

(declare-fun hash!423 () (_ BitVec 64))

(declare-datatypes ((K!14723 0))(
  ( (K!14724 (val!20049 Int)) )
))
(declare-datatypes ((V!14969 0))(
  ( (V!14970 (val!20050 Int)) )
))
(declare-datatypes ((tuple2!55030 0))(
  ( (tuple2!55031 (_1!30809 K!14723) (_2!30809 V!14969)) )
))
(declare-datatypes ((List!53299 0))(
  ( (Nil!53175) (Cons!53175 (h!59574 tuple2!55030) (t!360643 List!53299)) )
))
(declare-fun l!13802 () List!53299)

(declare-datatypes ((Hashable!6455 0))(
  ( (HashableExt!6454 (__x!32158 Int)) )
))
(declare-fun hashF!1449 () Hashable!6455)

(declare-fun allKeysSameHash!1912 (List!53299 (_ BitVec 64) Hashable!6455) Bool)

(assert (=> b!4756184 (= res!2017800 (allKeysSameHash!1912 l!13802 hash!423 hashF!1449))))

(declare-fun b!4756186 () Bool)

(declare-fun noDuplicateKeys!2223 (List!53299) Bool)

(assert (=> b!4756186 (= e!2967145 (not (noDuplicateKeys!2223 (t!360643 l!13802))))))

(declare-fun res!2017802 () Bool)

(assert (=> start!486306 (=> (not res!2017802) (not e!2967145))))

(assert (=> start!486306 (= res!2017802 (noDuplicateKeys!2223 l!13802))))

(assert (=> start!486306 e!2967145))

(declare-fun e!2967146 () Bool)

(assert (=> start!486306 e!2967146))

(assert (=> start!486306 true))

(declare-fun b!4756185 () Bool)

(declare-fun res!2017801 () Bool)

(assert (=> b!4756185 (=> (not res!2017801) (not e!2967145))))

(assert (=> b!4756185 (= res!2017801 (not (is-Nil!53175 l!13802)))))

(declare-fun tp!1350974 () Bool)

(declare-fun b!4756187 () Bool)

(declare-fun tp_is_empty!32211 () Bool)

(declare-fun tp_is_empty!32209 () Bool)

(assert (=> b!4756187 (= e!2967146 (and tp_is_empty!32209 tp_is_empty!32211 tp!1350974))))

(assert (= (and start!486306 res!2017802) b!4756184))

(assert (= (and b!4756184 res!2017800) b!4756185))

(assert (= (and b!4756185 res!2017801) b!4756186))

(assert (= (and start!486306 (is-Cons!53175 l!13802)) b!4756187))

(declare-fun m!5726307 () Bool)

(assert (=> b!4756184 m!5726307))

(declare-fun m!5726309 () Bool)

(assert (=> b!4756186 m!5726309))

(declare-fun m!5726311 () Bool)

(assert (=> start!486306 m!5726311))

(push 1)

(assert (not b!4756187))

(assert (not b!4756184))

(assert (not b!4756186))

(assert tp_is_empty!32211)

(assert (not start!486306))

(assert tp_is_empty!32209)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1520819 () Bool)

(declare-fun res!2017816 () Bool)

(declare-fun e!2967157 () Bool)

(assert (=> d!1520819 (=> res!2017816 e!2967157)))

(assert (=> d!1520819 (= res!2017816 (not (is-Cons!53175 (t!360643 l!13802))))))

(assert (=> d!1520819 (= (noDuplicateKeys!2223 (t!360643 l!13802)) e!2967157)))

(declare-fun b!4756204 () Bool)

(declare-fun e!2967158 () Bool)

(assert (=> b!4756204 (= e!2967157 e!2967158)))

(declare-fun res!2017817 () Bool)

(assert (=> b!4756204 (=> (not res!2017817) (not e!2967158))))

(declare-fun containsKey!3613 (List!53299 K!14723) Bool)

(assert (=> b!4756204 (= res!2017817 (not (containsKey!3613 (t!360643 (t!360643 l!13802)) (_1!30809 (h!59574 (t!360643 l!13802))))))))

(declare-fun b!4756205 () Bool)

(assert (=> b!4756205 (= e!2967158 (noDuplicateKeys!2223 (t!360643 (t!360643 l!13802))))))

(assert (= (and d!1520819 (not res!2017816)) b!4756204))

(assert (= (and b!4756204 res!2017817) b!4756205))

(declare-fun m!5726319 () Bool)

(assert (=> b!4756204 m!5726319))

(declare-fun m!5726321 () Bool)

(assert (=> b!4756205 m!5726321))

(assert (=> b!4756186 d!1520819))

(declare-fun d!1520821 () Bool)

(assert (=> d!1520821 true))

(assert (=> d!1520821 true))

(declare-fun lambda!223499 () Int)

(declare-fun forall!11798 (List!53299 Int) Bool)

(assert (=> d!1520821 (= (allKeysSameHash!1912 l!13802 hash!423 hashF!1449) (forall!11798 l!13802 lambda!223499))))

(declare-fun bs!1146905 () Bool)

(assert (= bs!1146905 d!1520821))

(declare-fun m!5726323 () Bool)

(assert (=> bs!1146905 m!5726323))

(assert (=> b!4756184 d!1520821))

(declare-fun d!1520825 () Bool)

(declare-fun res!2017818 () Bool)

(declare-fun e!2967159 () Bool)

(assert (=> d!1520825 (=> res!2017818 e!2967159)))

(assert (=> d!1520825 (= res!2017818 (not (is-Cons!53175 l!13802)))))

(assert (=> d!1520825 (= (noDuplicateKeys!2223 l!13802) e!2967159)))

(declare-fun b!4756210 () Bool)

(declare-fun e!2967160 () Bool)

(assert (=> b!4756210 (= e!2967159 e!2967160)))

(declare-fun res!2017819 () Bool)

(assert (=> b!4756210 (=> (not res!2017819) (not e!2967160))))

(assert (=> b!4756210 (= res!2017819 (not (containsKey!3613 (t!360643 l!13802) (_1!30809 (h!59574 l!13802)))))))

(declare-fun b!4756211 () Bool)

(assert (=> b!4756211 (= e!2967160 (noDuplicateKeys!2223 (t!360643 l!13802)))))

(assert (= (and d!1520825 (not res!2017818)) b!4756210))

(assert (= (and b!4756210 res!2017819) b!4756211))

(declare-fun m!5726325 () Bool)

(assert (=> b!4756210 m!5726325))

(assert (=> b!4756211 m!5726309))

(assert (=> start!486306 d!1520825))

(declare-fun e!2967163 () Bool)

(declare-fun b!4756216 () Bool)

(declare-fun tp!1350980 () Bool)

(assert (=> b!4756216 (= e!2967163 (and tp_is_empty!32209 tp_is_empty!32211 tp!1350980))))

(assert (=> b!4756187 (= tp!1350974 e!2967163)))

(assert (= (and b!4756187 (is-Cons!53175 (t!360643 l!13802))) b!4756216))

(push 1)

(assert (not b!4756211))

(assert (not b!4756216))

(assert (not b!4756205))

(assert tp_is_empty!32211)

(assert (not d!1520821))

(assert (not b!4756210))

(assert (not b!4756204))

(assert tp_is_empty!32209)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

