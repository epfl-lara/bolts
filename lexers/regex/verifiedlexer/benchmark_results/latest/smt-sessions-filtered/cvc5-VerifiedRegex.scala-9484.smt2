; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!501170 () Bool)

(assert start!501170)

(declare-fun b!4827952 () Bool)

(declare-fun res!2055869 () Bool)

(declare-fun e!3016774 () Bool)

(assert (=> b!4827952 (=> (not res!2055869) (not e!3016774))))

(declare-datatypes ((V!16953 0))(
  ( (V!16954 (val!21671 Int)) )
))
(declare-datatypes ((K!16707 0))(
  ( (K!16708 (val!21672 Int)) )
))
(declare-datatypes ((tuple2!58278 0))(
  ( (tuple2!58279 (_1!32433 K!16707) (_2!32433 V!16953)) )
))
(declare-datatypes ((List!55144 0))(
  ( (Nil!55020) (Cons!55020 (h!61454 tuple2!58278) (t!362640 List!55144)) )
))
(declare-datatypes ((tuple2!58280 0))(
  ( (tuple2!58281 (_1!32434 (_ BitVec 64)) (_2!32434 List!55144)) )
))
(declare-datatypes ((List!55145 0))(
  ( (Nil!55021) (Cons!55021 (h!61455 tuple2!58280) (t!362641 List!55145)) )
))
(declare-datatypes ((ListLongMap!6037 0))(
  ( (ListLongMap!6038 (toList!7517 List!55145)) )
))
(declare-fun lm!2325 () ListLongMap!6037)

(declare-datatypes ((Hashable!7287 0))(
  ( (HashableExt!7286 (__x!33562 Int)) )
))
(declare-fun hashF!1543 () Hashable!7287)

(declare-fun allKeysSameHashInMap!2603 (ListLongMap!6037 Hashable!7287) Bool)

(assert (=> b!4827952 (= res!2055869 (allKeysSameHashInMap!2603 lm!2325 hashF!1543))))

(declare-fun b!4827954 () Bool)

(declare-fun size!36629 (List!55145) Int)

(assert (=> b!4827954 (= e!3016774 (< (size!36629 (toList!7517 lm!2325)) 0))))

(declare-fun b!4827955 () Bool)

(declare-fun e!3016775 () Bool)

(declare-fun tp!1362727 () Bool)

(assert (=> b!4827955 (= e!3016775 tp!1362727)))

(declare-fun b!4827953 () Bool)

(declare-fun res!2055870 () Bool)

(assert (=> b!4827953 (=> (not res!2055870) (not e!3016774))))

(declare-fun key!5594 () K!16707)

(declare-fun contains!18826 (ListLongMap!6037 (_ BitVec 64)) Bool)

(declare-fun hash!5436 (Hashable!7287 K!16707) (_ BitVec 64))

(assert (=> b!4827953 (= res!2055870 (not (contains!18826 lm!2325 (hash!5436 hashF!1543 key!5594))))))

(declare-fun res!2055868 () Bool)

(assert (=> start!501170 (=> (not res!2055868) (not e!3016774))))

(declare-fun lambda!237257 () Int)

(declare-fun forall!12641 (List!55145 Int) Bool)

(assert (=> start!501170 (= res!2055868 (forall!12641 (toList!7517 lm!2325) lambda!237257))))

(assert (=> start!501170 e!3016774))

(declare-fun inv!70608 (ListLongMap!6037) Bool)

(assert (=> start!501170 (and (inv!70608 lm!2325) e!3016775)))

(assert (=> start!501170 true))

(declare-fun tp_is_empty!34513 () Bool)

(assert (=> start!501170 tp_is_empty!34513))

(assert (= (and start!501170 res!2055868) b!4827952))

(assert (= (and b!4827952 res!2055869) b!4827953))

(assert (= (and b!4827953 res!2055870) b!4827954))

(assert (= start!501170 b!4827955))

(declare-fun m!5819538 () Bool)

(assert (=> b!4827952 m!5819538))

(declare-fun m!5819540 () Bool)

(assert (=> b!4827954 m!5819540))

(declare-fun m!5819542 () Bool)

(assert (=> b!4827953 m!5819542))

(assert (=> b!4827953 m!5819542))

(declare-fun m!5819544 () Bool)

(assert (=> b!4827953 m!5819544))

(declare-fun m!5819546 () Bool)

(assert (=> start!501170 m!5819546))

(declare-fun m!5819548 () Bool)

(assert (=> start!501170 m!5819548))

(push 1)

(assert (not b!4827955))

(assert (not b!4827954))

(assert (not b!4827952))

(assert tp_is_empty!34513)

(assert (not start!501170))

(assert (not b!4827953))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1164942 () Bool)

(declare-fun d!1547185 () Bool)

(assert (= bs!1164942 (and d!1547185 start!501170)))

(declare-fun lambda!237263 () Int)

(assert (=> bs!1164942 (not (= lambda!237263 lambda!237257))))

(assert (=> d!1547185 true))

(assert (=> d!1547185 (= (allKeysSameHashInMap!2603 lm!2325 hashF!1543) (forall!12641 (toList!7517 lm!2325) lambda!237263))))

(declare-fun bs!1164943 () Bool)

(assert (= bs!1164943 d!1547185))

(declare-fun m!5819562 () Bool)

(assert (=> bs!1164943 m!5819562))

(assert (=> b!4827952 d!1547185))

(declare-fun d!1547187 () Bool)

(declare-fun res!2055884 () Bool)

(declare-fun e!3016786 () Bool)

(assert (=> d!1547187 (=> res!2055884 e!3016786)))

(assert (=> d!1547187 (= res!2055884 (is-Nil!55021 (toList!7517 lm!2325)))))

(assert (=> d!1547187 (= (forall!12641 (toList!7517 lm!2325) lambda!237257) e!3016786)))

(declare-fun b!4827974 () Bool)

(declare-fun e!3016787 () Bool)

(assert (=> b!4827974 (= e!3016786 e!3016787)))

(declare-fun res!2055885 () Bool)

(assert (=> b!4827974 (=> (not res!2055885) (not e!3016787))))

(declare-fun dynLambda!22228 (Int tuple2!58280) Bool)

(assert (=> b!4827974 (= res!2055885 (dynLambda!22228 lambda!237257 (h!61455 (toList!7517 lm!2325))))))

(declare-fun b!4827975 () Bool)

(assert (=> b!4827975 (= e!3016787 (forall!12641 (t!362641 (toList!7517 lm!2325)) lambda!237257))))

(assert (= (and d!1547187 (not res!2055884)) b!4827974))

(assert (= (and b!4827974 res!2055885) b!4827975))

(declare-fun b_lambda!190159 () Bool)

(assert (=> (not b_lambda!190159) (not b!4827974)))

(declare-fun m!5819564 () Bool)

(assert (=> b!4827974 m!5819564))

(declare-fun m!5819566 () Bool)

(assert (=> b!4827975 m!5819566))

(assert (=> start!501170 d!1547187))

(declare-fun d!1547189 () Bool)

(declare-fun isStrictlySorted!992 (List!55145) Bool)

(assert (=> d!1547189 (= (inv!70608 lm!2325) (isStrictlySorted!992 (toList!7517 lm!2325)))))

(declare-fun bs!1164944 () Bool)

(assert (= bs!1164944 d!1547189))

(declare-fun m!5819568 () Bool)

(assert (=> bs!1164944 m!5819568))

(assert (=> start!501170 d!1547189))

(declare-fun d!1547191 () Bool)

(declare-fun e!3016792 () Bool)

(assert (=> d!1547191 e!3016792))

(declare-fun res!2055888 () Bool)

(assert (=> d!1547191 (=> res!2055888 e!3016792)))

(declare-fun lt!1974702 () Bool)

(assert (=> d!1547191 (= res!2055888 (not lt!1974702))))

(declare-fun lt!1974701 () Bool)

(assert (=> d!1547191 (= lt!1974702 lt!1974701)))

(declare-datatypes ((Unit!143364 0))(
  ( (Unit!143365) )
))
(declare-fun lt!1974704 () Unit!143364)

(declare-fun e!3016793 () Unit!143364)

(assert (=> d!1547191 (= lt!1974704 e!3016793)))

(declare-fun c!822643 () Bool)

(assert (=> d!1547191 (= c!822643 lt!1974701)))

(declare-fun containsKey!4399 (List!55145 (_ BitVec 64)) Bool)

(assert (=> d!1547191 (= lt!1974701 (containsKey!4399 (toList!7517 lm!2325) (hash!5436 hashF!1543 key!5594)))))

(assert (=> d!1547191 (= (contains!18826 lm!2325 (hash!5436 hashF!1543 key!5594)) lt!1974702)))

(declare-fun b!4827982 () Bool)

(declare-fun lt!1974703 () Unit!143364)

(assert (=> b!4827982 (= e!3016793 lt!1974703)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2419 (List!55145 (_ BitVec 64)) Unit!143364)

(assert (=> b!4827982 (= lt!1974703 (lemmaContainsKeyImpliesGetValueByKeyDefined!2419 (toList!7517 lm!2325) (hash!5436 hashF!1543 key!5594)))))

(declare-datatypes ((Option!13507 0))(
  ( (None!13506) (Some!13506 (v!49193 List!55144)) )
))
(declare-fun isDefined!10622 (Option!13507) Bool)

(declare-fun getValueByKey!2634 (List!55145 (_ BitVec 64)) Option!13507)

(assert (=> b!4827982 (isDefined!10622 (getValueByKey!2634 (toList!7517 lm!2325) (hash!5436 hashF!1543 key!5594)))))

(declare-fun b!4827983 () Bool)

(declare-fun Unit!143366 () Unit!143364)

(assert (=> b!4827983 (= e!3016793 Unit!143366)))

(declare-fun b!4827984 () Bool)

(assert (=> b!4827984 (= e!3016792 (isDefined!10622 (getValueByKey!2634 (toList!7517 lm!2325) (hash!5436 hashF!1543 key!5594))))))

(assert (= (and d!1547191 c!822643) b!4827982))

(assert (= (and d!1547191 (not c!822643)) b!4827983))

(assert (= (and d!1547191 (not res!2055888)) b!4827984))

(assert (=> d!1547191 m!5819542))

(declare-fun m!5819570 () Bool)

(assert (=> d!1547191 m!5819570))

(assert (=> b!4827982 m!5819542))

(declare-fun m!5819572 () Bool)

(assert (=> b!4827982 m!5819572))

(assert (=> b!4827982 m!5819542))

(declare-fun m!5819574 () Bool)

(assert (=> b!4827982 m!5819574))

(assert (=> b!4827982 m!5819574))

(declare-fun m!5819576 () Bool)

(assert (=> b!4827982 m!5819576))

(assert (=> b!4827984 m!5819542))

(assert (=> b!4827984 m!5819574))

(assert (=> b!4827984 m!5819574))

(assert (=> b!4827984 m!5819576))

(assert (=> b!4827953 d!1547191))

(declare-fun d!1547195 () Bool)

(declare-fun hash!5438 (Hashable!7287 K!16707) (_ BitVec 64))

(assert (=> d!1547195 (= (hash!5436 hashF!1543 key!5594) (hash!5438 hashF!1543 key!5594))))

(declare-fun bs!1164945 () Bool)

(assert (= bs!1164945 d!1547195))

(declare-fun m!5819578 () Bool)

(assert (=> bs!1164945 m!5819578))

(assert (=> b!4827953 d!1547195))

(declare-fun d!1547197 () Bool)

(declare-fun lt!1974707 () Int)

(assert (=> d!1547197 (>= lt!1974707 0)))

(declare-fun e!3016798 () Int)

(assert (=> d!1547197 (= lt!1974707 e!3016798)))

(declare-fun c!822646 () Bool)

(assert (=> d!1547197 (= c!822646 (is-Nil!55021 (toList!7517 lm!2325)))))

(assert (=> d!1547197 (= (size!36629 (toList!7517 lm!2325)) lt!1974707)))

(declare-fun b!4827989 () Bool)

(assert (=> b!4827989 (= e!3016798 0)))

(declare-fun b!4827990 () Bool)

(assert (=> b!4827990 (= e!3016798 (+ 1 (size!36629 (t!362641 (toList!7517 lm!2325)))))))

(assert (= (and d!1547197 c!822646) b!4827989))

(assert (= (and d!1547197 (not c!822646)) b!4827990))

(declare-fun m!5819580 () Bool)

(assert (=> b!4827990 m!5819580))

(assert (=> b!4827954 d!1547197))

(declare-fun b!4827999 () Bool)

(declare-fun e!3016803 () Bool)

(declare-fun tp!1362735 () Bool)

(declare-fun tp!1362736 () Bool)

(assert (=> b!4827999 (= e!3016803 (and tp!1362735 tp!1362736))))

(assert (=> b!4827955 (= tp!1362727 e!3016803)))

(assert (= (and b!4827955 (is-Cons!55021 (toList!7517 lm!2325))) b!4827999))

(declare-fun b_lambda!190161 () Bool)

(assert (= b_lambda!190159 (or start!501170 b_lambda!190161)))

(declare-fun bs!1164946 () Bool)

(declare-fun d!1547199 () Bool)

(assert (= bs!1164946 (and d!1547199 start!501170)))

(declare-fun noDuplicateKeys!2460 (List!55144) Bool)

(assert (=> bs!1164946 (= (dynLambda!22228 lambda!237257 (h!61455 (toList!7517 lm!2325))) (noDuplicateKeys!2460 (_2!32434 (h!61455 (toList!7517 lm!2325)))))))

(declare-fun m!5819582 () Bool)

(assert (=> bs!1164946 m!5819582))

(assert (=> b!4827974 d!1547199))

(push 1)

(assert (not b!4827975))

(assert (not d!1547185))

(assert (not b!4827984))

(assert (not d!1547189))

(assert (not b_lambda!190161))

(assert (not d!1547191))

(assert (not d!1547195))

(assert (not b!4827982))

(assert (not b!4827999))

(assert (not bs!1164946))

(assert tp_is_empty!34513)

(assert (not b!4827990))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

