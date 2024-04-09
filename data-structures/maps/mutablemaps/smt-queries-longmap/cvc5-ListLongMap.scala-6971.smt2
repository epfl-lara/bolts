; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88172 () Bool)

(assert start!88172)

(declare-fun b!1016422 () Bool)

(assert (=> b!1016422 true))

(assert (=> b!1016422 true))

(declare-fun b!1016419 () Bool)

(declare-fun e!571833 () Bool)

(declare-fun e!571834 () Bool)

(assert (=> b!1016419 (= e!571833 (not e!571834))))

(declare-fun res!681833 () Bool)

(assert (=> b!1016419 (=> (not res!681833) (not e!571834))))

(declare-datatypes ((B!1532 0))(
  ( (B!1533 (val!11850 Int)) )
))
(declare-datatypes ((tuple2!15336 0))(
  ( (tuple2!15337 (_1!7678 (_ BitVec 64)) (_2!7678 B!1532)) )
))
(declare-datatypes ((List!21637 0))(
  ( (Nil!21634) (Cons!21633 (h!22831 tuple2!15336) (t!30646 List!21637)) )
))
(declare-fun lt!449244 () List!21637)

(declare-fun isStrictlySorted!614 (List!21637) Bool)

(assert (=> b!1016419 (= res!681833 (isStrictlySorted!614 lt!449244))))

(declare-fun newHead!31 () tuple2!15336)

(declare-fun l!1114 () List!21637)

(assert (=> b!1016419 (= lt!449244 (Cons!21633 newHead!31 l!1114))))

(declare-datatypes ((List!21638 0))(
  ( (Nil!21635) (Cons!21634 (h!22832 (_ BitVec 64)) (t!30647 List!21638)) )
))
(declare-fun keys!40 () List!21638)

(declare-fun containsKey!491 (List!21637 (_ BitVec 64)) Bool)

(assert (=> b!1016419 (containsKey!491 l!1114 (h!22832 keys!40))))

(declare-datatypes ((Unit!33210 0))(
  ( (Unit!33211) )
))
(declare-fun lt!449243 () Unit!33210)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!10 (List!21637 (_ BitVec 64)) Unit!33210)

(assert (=> b!1016419 (= lt!449243 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!10 l!1114 (h!22832 keys!40)))))

(declare-fun b!1016420 () Bool)

(declare-fun res!681837 () Bool)

(assert (=> b!1016420 (=> (not res!681837) (not e!571833))))

(assert (=> b!1016420 (= res!681837 (is-Cons!21634 keys!40))))

(declare-fun b!1016421 () Bool)

(assert (=> b!1016421 (= e!571834 (containsKey!491 lt!449244 (h!22832 keys!40)))))

(declare-fun res!681836 () Bool)

(assert (=> b!1016422 (=> (not res!681836) (not e!571833))))

(declare-fun lambda!1019 () Int)

(declare-fun forall!283 (List!21638 Int) Bool)

(assert (=> b!1016422 (= res!681836 (forall!283 keys!40 lambda!1019))))

(declare-fun res!681834 () Bool)

(assert (=> start!88172 (=> (not res!681834) (not e!571833))))

(assert (=> start!88172 (= res!681834 (isStrictlySorted!614 l!1114))))

(assert (=> start!88172 e!571833))

(declare-fun e!571832 () Bool)

(assert (=> start!88172 e!571832))

(assert (=> start!88172 true))

(declare-fun tp_is_empty!23599 () Bool)

(assert (=> start!88172 tp_is_empty!23599))

(declare-fun b!1016423 () Bool)

(declare-fun res!681835 () Bool)

(assert (=> b!1016423 (=> (not res!681835) (not e!571833))))

(declare-fun head!965 (List!21637) tuple2!15336)

(assert (=> b!1016423 (= res!681835 (bvslt (_1!7678 newHead!31) (_1!7678 (head!965 l!1114))))))

(declare-fun b!1016424 () Bool)

(declare-fun tp!70775 () Bool)

(assert (=> b!1016424 (= e!571832 (and tp_is_empty!23599 tp!70775))))

(declare-fun b!1016425 () Bool)

(declare-fun res!681832 () Bool)

(assert (=> b!1016425 (=> (not res!681832) (not e!571833))))

(declare-fun isEmpty!887 (List!21637) Bool)

(assert (=> b!1016425 (= res!681832 (not (isEmpty!887 l!1114)))))

(assert (= (and start!88172 res!681834) b!1016425))

(assert (= (and b!1016425 res!681832) b!1016422))

(assert (= (and b!1016422 res!681836) b!1016423))

(assert (= (and b!1016423 res!681835) b!1016420))

(assert (= (and b!1016420 res!681837) b!1016419))

(assert (= (and b!1016419 res!681833) b!1016421))

(assert (= (and start!88172 (is-Cons!21633 l!1114)) b!1016424))

(declare-fun m!938219 () Bool)

(assert (=> b!1016419 m!938219))

(declare-fun m!938221 () Bool)

(assert (=> b!1016419 m!938221))

(declare-fun m!938223 () Bool)

(assert (=> b!1016419 m!938223))

(declare-fun m!938225 () Bool)

(assert (=> b!1016421 m!938225))

(declare-fun m!938227 () Bool)

(assert (=> b!1016423 m!938227))

(declare-fun m!938229 () Bool)

(assert (=> b!1016425 m!938229))

(declare-fun m!938231 () Bool)

(assert (=> b!1016422 m!938231))

(declare-fun m!938233 () Bool)

(assert (=> start!88172 m!938233))

(push 1)

(assert (not b!1016425))

(assert (not b!1016424))

(assert (not b!1016422))

(assert (not start!88172))

(assert tp_is_empty!23599)

(assert (not b!1016419))

(assert (not b!1016421))

(assert (not b!1016423))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121235 () Bool)

(declare-fun res!681890 () Bool)

(declare-fun e!571869 () Bool)

(assert (=> d!121235 (=> res!681890 e!571869)))

(assert (=> d!121235 (= res!681890 (or (is-Nil!21634 lt!449244) (is-Nil!21634 (t!30646 lt!449244))))))

(assert (=> d!121235 (= (isStrictlySorted!614 lt!449244) e!571869)))

(declare-fun b!1016496 () Bool)

(declare-fun e!571870 () Bool)

(assert (=> b!1016496 (= e!571869 e!571870)))

(declare-fun res!681891 () Bool)

(assert (=> b!1016496 (=> (not res!681891) (not e!571870))))

(assert (=> b!1016496 (= res!681891 (bvslt (_1!7678 (h!22831 lt!449244)) (_1!7678 (h!22831 (t!30646 lt!449244)))))))

(declare-fun b!1016497 () Bool)

(assert (=> b!1016497 (= e!571870 (isStrictlySorted!614 (t!30646 lt!449244)))))

(assert (= (and d!121235 (not res!681890)) b!1016496))

(assert (= (and b!1016496 res!681891) b!1016497))

(declare-fun m!938271 () Bool)

(assert (=> b!1016497 m!938271))

(assert (=> b!1016419 d!121235))

(declare-fun d!121239 () Bool)

(declare-fun res!681911 () Bool)

(declare-fun e!571890 () Bool)

(assert (=> d!121239 (=> res!681911 e!571890)))

(assert (=> d!121239 (= res!681911 (and (is-Cons!21633 l!1114) (= (_1!7678 (h!22831 l!1114)) (h!22832 keys!40))))))

(assert (=> d!121239 (= (containsKey!491 l!1114 (h!22832 keys!40)) e!571890)))

(declare-fun b!1016517 () Bool)

(declare-fun e!571891 () Bool)

(assert (=> b!1016517 (= e!571890 e!571891)))

(declare-fun res!681912 () Bool)

(assert (=> b!1016517 (=> (not res!681912) (not e!571891))))

(assert (=> b!1016517 (= res!681912 (and (or (not (is-Cons!21633 l!1114)) (bvsle (_1!7678 (h!22831 l!1114)) (h!22832 keys!40))) (is-Cons!21633 l!1114) (bvslt (_1!7678 (h!22831 l!1114)) (h!22832 keys!40))))))

(declare-fun b!1016518 () Bool)

(assert (=> b!1016518 (= e!571891 (containsKey!491 (t!30646 l!1114) (h!22832 keys!40)))))

(assert (= (and d!121239 (not res!681911)) b!1016517))

(assert (= (and b!1016517 res!681912) b!1016518))

(declare-fun m!938283 () Bool)

(assert (=> b!1016518 m!938283))

(assert (=> b!1016419 d!121239))

(declare-fun d!121253 () Bool)

(assert (=> d!121253 (containsKey!491 l!1114 (h!22832 keys!40))))

(declare-fun lt!449262 () Unit!33210)

(declare-fun choose!1656 (List!21637 (_ BitVec 64)) Unit!33210)

(assert (=> d!121253 (= lt!449262 (choose!1656 l!1114 (h!22832 keys!40)))))

(declare-fun e!571905 () Bool)

(assert (=> d!121253 e!571905))

(declare-fun res!681923 () Bool)

(assert (=> d!121253 (=> (not res!681923) (not e!571905))))

(assert (=> d!121253 (= res!681923 (isStrictlySorted!614 l!1114))))

(assert (=> d!121253 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!10 l!1114 (h!22832 keys!40)) lt!449262)))

(declare-fun b!1016534 () Bool)

(declare-datatypes ((Option!607 0))(
  ( (Some!606 (v!14455 B!1532)) (None!605) )
))
(declare-fun isDefined!403 (Option!607) Bool)

(declare-fun getValueByKey!556 (List!21637 (_ BitVec 64)) Option!607)

(assert (=> b!1016534 (= e!571905 (isDefined!403 (getValueByKey!556 l!1114 (h!22832 keys!40))))))

(assert (= (and d!121253 res!681923) b!1016534))

(assert (=> d!121253 m!938221))

(declare-fun m!938293 () Bool)

(assert (=> d!121253 m!938293))

(assert (=> d!121253 m!938233))

(declare-fun m!938297 () Bool)

(assert (=> b!1016534 m!938297))

(assert (=> b!1016534 m!938297))

(declare-fun m!938299 () Bool)

(assert (=> b!1016534 m!938299))

(assert (=> b!1016419 d!121253))

(declare-fun d!121261 () Bool)

(declare-fun res!681926 () Bool)

(declare-fun e!571908 () Bool)

(assert (=> d!121261 (=> res!681926 e!571908)))

(assert (=> d!121261 (= res!681926 (or (is-Nil!21634 l!1114) (is-Nil!21634 (t!30646 l!1114))))))

(assert (=> d!121261 (= (isStrictlySorted!614 l!1114) e!571908)))

(declare-fun b!1016537 () Bool)

(declare-fun e!571909 () Bool)

(assert (=> b!1016537 (= e!571908 e!571909)))

(declare-fun res!681927 () Bool)

(assert (=> b!1016537 (=> (not res!681927) (not e!571909))))

(assert (=> b!1016537 (= res!681927 (bvslt (_1!7678 (h!22831 l!1114)) (_1!7678 (h!22831 (t!30646 l!1114)))))))

(declare-fun b!1016538 () Bool)

(assert (=> b!1016538 (= e!571909 (isStrictlySorted!614 (t!30646 l!1114)))))

(assert (= (and d!121261 (not res!681926)) b!1016537))

(assert (= (and b!1016537 res!681927) b!1016538))

(declare-fun m!938301 () Bool)

(assert (=> b!1016538 m!938301))

(assert (=> start!88172 d!121261))

(declare-fun d!121263 () Bool)

(assert (=> d!121263 (= (isEmpty!887 l!1114) (is-Nil!21634 l!1114))))

(assert (=> b!1016425 d!121263))

(declare-fun d!121265 () Bool)

(declare-fun res!681928 () Bool)

(declare-fun e!571910 () Bool)

(assert (=> d!121265 (=> res!681928 e!571910)))

(assert (=> d!121265 (= res!681928 (and (is-Cons!21633 lt!449244) (= (_1!7678 (h!22831 lt!449244)) (h!22832 keys!40))))))

(assert (=> d!121265 (= (containsKey!491 lt!449244 (h!22832 keys!40)) e!571910)))

(declare-fun b!1016539 () Bool)

(declare-fun e!571911 () Bool)

(assert (=> b!1016539 (= e!571910 e!571911)))

(declare-fun res!681929 () Bool)

(assert (=> b!1016539 (=> (not res!681929) (not e!571911))))

(assert (=> b!1016539 (= res!681929 (and (or (not (is-Cons!21633 lt!449244)) (bvsle (_1!7678 (h!22831 lt!449244)) (h!22832 keys!40))) (is-Cons!21633 lt!449244) (bvslt (_1!7678 (h!22831 lt!449244)) (h!22832 keys!40))))))

(declare-fun b!1016540 () Bool)

(assert (=> b!1016540 (= e!571911 (containsKey!491 (t!30646 lt!449244) (h!22832 keys!40)))))

(assert (= (and d!121265 (not res!681928)) b!1016539))

(assert (= (and b!1016539 res!681929) b!1016540))

(declare-fun m!938303 () Bool)

(assert (=> b!1016540 m!938303))

(assert (=> b!1016421 d!121265))

(declare-fun d!121267 () Bool)

(declare-fun res!681940 () Bool)

(declare-fun e!571922 () Bool)

(assert (=> d!121267 (=> res!681940 e!571922)))

(assert (=> d!121267 (= res!681940 (is-Nil!21635 keys!40))))

(assert (=> d!121267 (= (forall!283 keys!40 lambda!1019) e!571922)))

(declare-fun b!1016551 () Bool)

(declare-fun e!571923 () Bool)

(assert (=> b!1016551 (= e!571922 e!571923)))

(declare-fun res!681941 () Bool)

(assert (=> b!1016551 (=> (not res!681941) (not e!571923))))

(declare-fun dynLambda!1923 (Int (_ BitVec 64)) Bool)

(assert (=> b!1016551 (= res!681941 (dynLambda!1923 lambda!1019 (h!22832 keys!40)))))

(declare-fun b!1016552 () Bool)

(assert (=> b!1016552 (= e!571923 (forall!283 (t!30647 keys!40) lambda!1019))))

(assert (= (and d!121267 (not res!681940)) b!1016551))

(assert (= (and b!1016551 res!681941) b!1016552))

(declare-fun b_lambda!15555 () Bool)

(assert (=> (not b_lambda!15555) (not b!1016551)))

(declare-fun m!938307 () Bool)

(assert (=> b!1016551 m!938307))

(declare-fun m!938309 () Bool)

(assert (=> b!1016552 m!938309))

(assert (=> b!1016422 d!121267))

(declare-fun d!121271 () Bool)

(assert (=> d!121271 (= (head!965 l!1114) (h!22831 l!1114))))

(assert (=> b!1016423 d!121271))

(declare-fun b!1016557 () Bool)

(declare-fun e!571926 () Bool)

(declare-fun tp!70787 () Bool)

(assert (=> b!1016557 (= e!571926 (and tp_is_empty!23599 tp!70787))))

(assert (=> b!1016424 (= tp!70775 e!571926)))

(assert (= (and b!1016424 (is-Cons!21633 (t!30646 l!1114))) b!1016557))

(declare-fun b_lambda!15557 () Bool)

(assert (= b_lambda!15555 (or b!1016422 b_lambda!15557)))

(declare-fun bs!29519 () Bool)

(declare-fun d!121273 () Bool)

(assert (= bs!29519 (and d!121273 b!1016422)))

(declare-fun value!178 () B!1532)

(assert (=> bs!29519 (= (dynLambda!1923 lambda!1019 (h!22832 keys!40)) (= (getValueByKey!556 l!1114 (h!22832 keys!40)) (Some!606 value!178)))))

(assert (=> bs!29519 m!938297))

(assert (=> b!1016551 d!121273))

(push 1)

(assert (not d!121253))

(assert (not b!1016518))

(assert (not b!1016534))

(assert (not b!1016538))

(assert (not b_lambda!15557))

(assert (not b!1016497))

(assert (not b!1016540))

(assert (not b!1016557))

(assert (not bs!29519))

(assert tp_is_empty!23599)

(assert (not b!1016552))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

