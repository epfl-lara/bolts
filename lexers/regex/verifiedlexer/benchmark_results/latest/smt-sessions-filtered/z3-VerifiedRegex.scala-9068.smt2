; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!486356 () Bool)

(assert start!486356)

(declare-fun b!4756426 () Bool)

(declare-fun res!2017948 () Bool)

(declare-fun e!2967292 () Bool)

(assert (=> b!4756426 (=> (not res!2017948) (not e!2967292))))

(declare-fun hash!423 () (_ BitVec 64))

(declare-datatypes ((K!14745 0))(
  ( (K!14746 (val!20067 Int)) )
))
(declare-datatypes ((V!14991 0))(
  ( (V!14992 (val!20068 Int)) )
))
(declare-datatypes ((tuple2!55048 0))(
  ( (tuple2!55049 (_1!30818 K!14745) (_2!30818 V!14991)) )
))
(declare-datatypes ((List!53308 0))(
  ( (Nil!53184) (Cons!53184 (h!59589 tuple2!55048) (t!360652 List!53308)) )
))
(declare-fun l!13802 () List!53308)

(declare-datatypes ((Hashable!6464 0))(
  ( (HashableExt!6463 (__x!32167 Int)) )
))
(declare-fun hashF!1449 () Hashable!6464)

(declare-fun allKeysSameHash!1921 (List!53308 (_ BitVec 64) Hashable!6464) Bool)

(assert (=> b!4756426 (= res!2017948 (allKeysSameHash!1921 l!13802 hash!423 hashF!1449))))

(declare-fun tp_is_empty!32245 () Bool)

(declare-fun tp!1351021 () Bool)

(declare-fun b!4756429 () Bool)

(declare-fun tp_is_empty!32247 () Bool)

(declare-fun e!2967291 () Bool)

(assert (=> b!4756429 (= e!2967291 (and tp_is_empty!32245 tp_is_empty!32247 tp!1351021))))

(declare-fun res!2017947 () Bool)

(assert (=> start!486356 (=> (not res!2017947) (not e!2967292))))

(declare-fun noDuplicateKeys!2232 (List!53308) Bool)

(assert (=> start!486356 (= res!2017947 (noDuplicateKeys!2232 l!13802))))

(assert (=> start!486356 e!2967292))

(assert (=> start!486356 e!2967291))

(assert (=> start!486356 true))

(assert (=> start!486356 tp_is_empty!32245))

(declare-fun key!5233 () K!14745)

(declare-fun b!4756428 () Bool)

(declare-fun removePairForKey!1679 (List!53308 K!14745) List!53308)

(assert (=> b!4756428 (= e!2967292 (not (allKeysSameHash!1921 (removePairForKey!1679 l!13802 key!5233) hash!423 hashF!1449)))))

(declare-fun b!4756427 () Bool)

(declare-fun res!2017949 () Bool)

(assert (=> b!4756427 (=> (not res!2017949) (not e!2967292))))

(get-info :version)

(assert (=> b!4756427 (= res!2017949 ((_ is Nil!53184) l!13802))))

(assert (= (and start!486356 res!2017947) b!4756426))

(assert (= (and b!4756426 res!2017948) b!4756427))

(assert (= (and b!4756427 res!2017949) b!4756428))

(assert (= (and start!486356 ((_ is Cons!53184) l!13802)) b!4756429))

(declare-fun m!5726445 () Bool)

(assert (=> b!4756426 m!5726445))

(declare-fun m!5726447 () Bool)

(assert (=> start!486356 m!5726447))

(declare-fun m!5726449 () Bool)

(assert (=> b!4756428 m!5726449))

(assert (=> b!4756428 m!5726449))

(declare-fun m!5726451 () Bool)

(assert (=> b!4756428 m!5726451))

(check-sat tp_is_empty!32247 tp_is_empty!32245 (not b!4756426) (not b!4756428) (not b!4756429) (not start!486356))
(check-sat)
(get-model)

(declare-fun d!1520887 () Bool)

(assert (=> d!1520887 true))

(assert (=> d!1520887 true))

(declare-fun lambda!223519 () Int)

(declare-fun forall!11802 (List!53308 Int) Bool)

(assert (=> d!1520887 (= (allKeysSameHash!1921 (removePairForKey!1679 l!13802 key!5233) hash!423 hashF!1449) (forall!11802 (removePairForKey!1679 l!13802 key!5233) lambda!223519))))

(declare-fun bs!1146926 () Bool)

(assert (= bs!1146926 d!1520887))

(assert (=> bs!1146926 m!5726449))

(declare-fun m!5726453 () Bool)

(assert (=> bs!1146926 m!5726453))

(assert (=> b!4756428 d!1520887))

(declare-fun d!1520889 () Bool)

(declare-fun lt!1923006 () List!53308)

(declare-fun containsKey!3617 (List!53308 K!14745) Bool)

(assert (=> d!1520889 (not (containsKey!3617 lt!1923006 key!5233))))

(declare-fun e!2967298 () List!53308)

(assert (=> d!1520889 (= lt!1923006 e!2967298)))

(declare-fun c!811704 () Bool)

(assert (=> d!1520889 (= c!811704 (and ((_ is Cons!53184) l!13802) (= (_1!30818 (h!59589 l!13802)) key!5233)))))

(assert (=> d!1520889 (noDuplicateKeys!2232 l!13802)))

(assert (=> d!1520889 (= (removePairForKey!1679 l!13802 key!5233) lt!1923006)))

(declare-fun b!4756445 () Bool)

(declare-fun e!2967297 () List!53308)

(assert (=> b!4756445 (= e!2967297 Nil!53184)))

(declare-fun b!4756442 () Bool)

(assert (=> b!4756442 (= e!2967298 (t!360652 l!13802))))

(declare-fun b!4756443 () Bool)

(assert (=> b!4756443 (= e!2967298 e!2967297)))

(declare-fun c!811705 () Bool)

(assert (=> b!4756443 (= c!811705 ((_ is Cons!53184) l!13802))))

(declare-fun b!4756444 () Bool)

(assert (=> b!4756444 (= e!2967297 (Cons!53184 (h!59589 l!13802) (removePairForKey!1679 (t!360652 l!13802) key!5233)))))

(assert (= (and d!1520889 c!811704) b!4756442))

(assert (= (and d!1520889 (not c!811704)) b!4756443))

(assert (= (and b!4756443 c!811705) b!4756444))

(assert (= (and b!4756443 (not c!811705)) b!4756445))

(declare-fun m!5726455 () Bool)

(assert (=> d!1520889 m!5726455))

(assert (=> d!1520889 m!5726447))

(declare-fun m!5726457 () Bool)

(assert (=> b!4756444 m!5726457))

(assert (=> b!4756428 d!1520889))

(declare-fun d!1520891 () Bool)

(declare-fun res!2017954 () Bool)

(declare-fun e!2967303 () Bool)

(assert (=> d!1520891 (=> res!2017954 e!2967303)))

(assert (=> d!1520891 (= res!2017954 (not ((_ is Cons!53184) l!13802)))))

(assert (=> d!1520891 (= (noDuplicateKeys!2232 l!13802) e!2967303)))

(declare-fun b!4756450 () Bool)

(declare-fun e!2967304 () Bool)

(assert (=> b!4756450 (= e!2967303 e!2967304)))

(declare-fun res!2017955 () Bool)

(assert (=> b!4756450 (=> (not res!2017955) (not e!2967304))))

(assert (=> b!4756450 (= res!2017955 (not (containsKey!3617 (t!360652 l!13802) (_1!30818 (h!59589 l!13802)))))))

(declare-fun b!4756451 () Bool)

(assert (=> b!4756451 (= e!2967304 (noDuplicateKeys!2232 (t!360652 l!13802)))))

(assert (= (and d!1520891 (not res!2017954)) b!4756450))

(assert (= (and b!4756450 res!2017955) b!4756451))

(declare-fun m!5726459 () Bool)

(assert (=> b!4756450 m!5726459))

(declare-fun m!5726461 () Bool)

(assert (=> b!4756451 m!5726461))

(assert (=> start!486356 d!1520891))

(declare-fun bs!1146927 () Bool)

(declare-fun d!1520893 () Bool)

(assert (= bs!1146927 (and d!1520893 d!1520887)))

(declare-fun lambda!223520 () Int)

(assert (=> bs!1146927 (= lambda!223520 lambda!223519)))

(assert (=> d!1520893 true))

(assert (=> d!1520893 true))

(assert (=> d!1520893 (= (allKeysSameHash!1921 l!13802 hash!423 hashF!1449) (forall!11802 l!13802 lambda!223520))))

(declare-fun bs!1146928 () Bool)

(assert (= bs!1146928 d!1520893))

(declare-fun m!5726463 () Bool)

(assert (=> bs!1146928 m!5726463))

(assert (=> b!4756426 d!1520893))

(declare-fun tp!1351024 () Bool)

(declare-fun e!2967307 () Bool)

(declare-fun b!4756456 () Bool)

(assert (=> b!4756456 (= e!2967307 (and tp_is_empty!32245 tp_is_empty!32247 tp!1351024))))

(assert (=> b!4756429 (= tp!1351021 e!2967307)))

(assert (= (and b!4756429 ((_ is Cons!53184) (t!360652 l!13802))) b!4756456))

(check-sat tp_is_empty!32247 tp_is_empty!32245 (not d!1520887) (not d!1520889) (not d!1520893) (not b!4756456) (not b!4756450) (not b!4756451) (not b!4756444))
(check-sat)
