; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!416876 () Bool)

(assert start!416876)

(declare-fun res!1773667 () Bool)

(declare-fun e!2693283 () Bool)

(assert (=> start!416876 (=> (not res!1773667) (not e!2693283))))

(declare-datatypes ((K!9738 0))(
  ( (K!9739 (val!16061 Int)) )
))
(declare-datatypes ((V!9984 0))(
  ( (V!9985 (val!16062 Int)) )
))
(declare-datatypes ((tuple2!47526 0))(
  ( (tuple2!47527 (_1!27057 K!9738) (_2!27057 V!9984)) )
))
(declare-datatypes ((List!48591 0))(
  ( (Nil!48467) (Cons!48467 (h!53936 tuple2!47526) (t!355503 List!48591)) )
))
(declare-fun l!13867 () List!48591)

(declare-fun noDuplicateKeys!280 (List!48591) Bool)

(assert (=> start!416876 (= res!1773667 (noDuplicateKeys!280 l!13867))))

(assert (=> start!416876 e!2693283))

(declare-fun e!2693282 () Bool)

(assert (=> start!416876 e!2693282))

(declare-fun tp_is_empty!24309 () Bool)

(assert (=> start!416876 tp_is_empty!24309))

(declare-fun b!4328311 () Bool)

(declare-fun res!1773666 () Bool)

(assert (=> b!4328311 (=> (not res!1773666) (not e!2693283))))

(declare-fun key!5269 () K!9738)

(assert (=> b!4328311 (= res!1773666 (and (or (not (is-Cons!48467 l!13867)) (not (= (_1!27057 (h!53936 l!13867)) key!5269))) (is-Cons!48467 l!13867)))))

(declare-fun b!4328312 () Bool)

(assert (=> b!4328312 (= e!2693283 (not (noDuplicateKeys!280 (t!355503 l!13867))))))

(declare-fun lt!1545164 () List!48591)

(declare-fun containsKey!430 (List!48591 K!9738) Bool)

(assert (=> b!4328312 (not (containsKey!430 lt!1545164 (_1!27057 (h!53936 l!13867))))))

(declare-datatypes ((Unit!68105 0))(
  ( (Unit!68106) )
))
(declare-fun lt!1545166 () Unit!68105)

(declare-fun lemmaRemovePairForKeyPreservesNotContainsKey!1 (List!48591 K!9738 K!9738) Unit!68105)

(assert (=> b!4328312 (= lt!1545166 (lemmaRemovePairForKeyPreservesNotContainsKey!1 (t!355503 l!13867) key!5269 (_1!27057 (h!53936 l!13867))))))

(assert (=> b!4328312 (noDuplicateKeys!280 lt!1545164)))

(declare-fun removePairForKey!294 (List!48591 K!9738) List!48591)

(assert (=> b!4328312 (= lt!1545164 (removePairForKey!294 (t!355503 l!13867) key!5269))))

(declare-fun lt!1545165 () Unit!68105)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!204 (List!48591 K!9738) Unit!68105)

(assert (=> b!4328312 (= lt!1545165 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!204 (t!355503 l!13867) key!5269))))

(declare-fun b!4328313 () Bool)

(declare-fun tp_is_empty!24311 () Bool)

(declare-fun tp!1327983 () Bool)

(assert (=> b!4328313 (= e!2693282 (and tp_is_empty!24309 tp_is_empty!24311 tp!1327983))))

(assert (= (and start!416876 res!1773667) b!4328311))

(assert (= (and b!4328311 res!1773666) b!4328312))

(assert (= (and start!416876 (is-Cons!48467 l!13867)) b!4328313))

(declare-fun m!4923141 () Bool)

(assert (=> start!416876 m!4923141))

(declare-fun m!4923143 () Bool)

(assert (=> b!4328312 m!4923143))

(declare-fun m!4923145 () Bool)

(assert (=> b!4328312 m!4923145))

(declare-fun m!4923147 () Bool)

(assert (=> b!4328312 m!4923147))

(declare-fun m!4923149 () Bool)

(assert (=> b!4328312 m!4923149))

(declare-fun m!4923151 () Bool)

(assert (=> b!4328312 m!4923151))

(declare-fun m!4923153 () Bool)

(assert (=> b!4328312 m!4923153))

(push 1)

(assert tp_is_empty!24309)

(assert (not b!4328312))

(assert (not b!4328313))

(assert (not start!416876))

(assert tp_is_empty!24311)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1272158 () Bool)

(declare-fun res!1773678 () Bool)

(declare-fun e!2693294 () Bool)

(assert (=> d!1272158 (=> res!1773678 e!2693294)))

(assert (=> d!1272158 (= res!1773678 (not (is-Cons!48467 l!13867)))))

(assert (=> d!1272158 (= (noDuplicateKeys!280 l!13867) e!2693294)))

(declare-fun b!4328327 () Bool)

(declare-fun e!2693295 () Bool)

(assert (=> b!4328327 (= e!2693294 e!2693295)))

(declare-fun res!1773679 () Bool)

(assert (=> b!4328327 (=> (not res!1773679) (not e!2693295))))

(assert (=> b!4328327 (= res!1773679 (not (containsKey!430 (t!355503 l!13867) (_1!27057 (h!53936 l!13867)))))))

(declare-fun b!4328328 () Bool)

(assert (=> b!4328328 (= e!2693295 (noDuplicateKeys!280 (t!355503 l!13867)))))

(assert (= (and d!1272158 (not res!1773678)) b!4328327))

(assert (= (and b!4328327 res!1773679) b!4328328))

(declare-fun m!4923169 () Bool)

(assert (=> b!4328327 m!4923169))

(assert (=> b!4328328 m!4923151))

(assert (=> start!416876 d!1272158))

(declare-fun d!1272160 () Bool)

(assert (=> d!1272160 (not (containsKey!430 (removePairForKey!294 (t!355503 l!13867) key!5269) (_1!27057 (h!53936 l!13867))))))

(declare-fun lt!1545178 () Unit!68105)

(declare-fun choose!26468 (List!48591 K!9738 K!9738) Unit!68105)

(assert (=> d!1272160 (= lt!1545178 (choose!26468 (t!355503 l!13867) key!5269 (_1!27057 (h!53936 l!13867))))))

(assert (=> d!1272160 (noDuplicateKeys!280 (t!355503 l!13867))))

(assert (=> d!1272160 (= (lemmaRemovePairForKeyPreservesNotContainsKey!1 (t!355503 l!13867) key!5269 (_1!27057 (h!53936 l!13867))) lt!1545178)))

(declare-fun bs!607574 () Bool)

(assert (= bs!607574 d!1272160))

(assert (=> bs!607574 m!4923143))

(assert (=> bs!607574 m!4923143))

(declare-fun m!4923171 () Bool)

(assert (=> bs!607574 m!4923171))

(declare-fun m!4923173 () Bool)

(assert (=> bs!607574 m!4923173))

(assert (=> bs!607574 m!4923151))

(assert (=> b!4328312 d!1272160))

(declare-fun d!1272164 () Bool)

(declare-fun res!1773680 () Bool)

(declare-fun e!2693296 () Bool)

(assert (=> d!1272164 (=> res!1773680 e!2693296)))

(assert (=> d!1272164 (= res!1773680 (not (is-Cons!48467 lt!1545164)))))

(assert (=> d!1272164 (= (noDuplicateKeys!280 lt!1545164) e!2693296)))

(declare-fun b!4328329 () Bool)

(declare-fun e!2693297 () Bool)

(assert (=> b!4328329 (= e!2693296 e!2693297)))

(declare-fun res!1773681 () Bool)

(assert (=> b!4328329 (=> (not res!1773681) (not e!2693297))))

(assert (=> b!4328329 (= res!1773681 (not (containsKey!430 (t!355503 lt!1545164) (_1!27057 (h!53936 lt!1545164)))))))

(declare-fun b!4328330 () Bool)

(assert (=> b!4328330 (= e!2693297 (noDuplicateKeys!280 (t!355503 lt!1545164)))))

(assert (= (and d!1272164 (not res!1773680)) b!4328329))

(assert (= (and b!4328329 res!1773681) b!4328330))

(declare-fun m!4923175 () Bool)

(assert (=> b!4328329 m!4923175))

(declare-fun m!4923177 () Bool)

(assert (=> b!4328330 m!4923177))

(assert (=> b!4328312 d!1272164))

(declare-fun d!1272166 () Bool)

(declare-fun res!1773686 () Bool)

(declare-fun e!2693302 () Bool)

(assert (=> d!1272166 (=> res!1773686 e!2693302)))

(assert (=> d!1272166 (= res!1773686 (and (is-Cons!48467 lt!1545164) (= (_1!27057 (h!53936 lt!1545164)) (_1!27057 (h!53936 l!13867)))))))

(assert (=> d!1272166 (= (containsKey!430 lt!1545164 (_1!27057 (h!53936 l!13867))) e!2693302)))

(declare-fun b!4328335 () Bool)

(declare-fun e!2693303 () Bool)

(assert (=> b!4328335 (= e!2693302 e!2693303)))

(declare-fun res!1773687 () Bool)

(assert (=> b!4328335 (=> (not res!1773687) (not e!2693303))))

(assert (=> b!4328335 (= res!1773687 (is-Cons!48467 lt!1545164))))

(declare-fun b!4328336 () Bool)

(assert (=> b!4328336 (= e!2693303 (containsKey!430 (t!355503 lt!1545164) (_1!27057 (h!53936 l!13867))))))

(assert (= (and d!1272166 (not res!1773686)) b!4328335))

(assert (= (and b!4328335 res!1773687) b!4328336))

(declare-fun m!4923179 () Bool)

(assert (=> b!4328336 m!4923179))

(assert (=> b!4328312 d!1272166))

(declare-fun d!1272168 () Bool)

(declare-fun lt!1545181 () List!48591)

(assert (=> d!1272168 (not (containsKey!430 lt!1545181 key!5269))))

(declare-fun e!2693315 () List!48591)

(assert (=> d!1272168 (= lt!1545181 e!2693315)))

(declare-fun c!736527 () Bool)

(assert (=> d!1272168 (= c!736527 (and (is-Cons!48467 (t!355503 l!13867)) (= (_1!27057 (h!53936 (t!355503 l!13867))) key!5269)))))

(assert (=> d!1272168 (noDuplicateKeys!280 (t!355503 l!13867))))

(assert (=> d!1272168 (= (removePairForKey!294 (t!355503 l!13867) key!5269) lt!1545181)))

(declare-fun b!4328351 () Bool)

(assert (=> b!4328351 (= e!2693315 (t!355503 (t!355503 l!13867)))))

(declare-fun b!4328353 () Bool)

(declare-fun e!2693314 () List!48591)

(assert (=> b!4328353 (= e!2693314 (Cons!48467 (h!53936 (t!355503 l!13867)) (removePairForKey!294 (t!355503 (t!355503 l!13867)) key!5269)))))

(declare-fun b!4328354 () Bool)

(assert (=> b!4328354 (= e!2693314 Nil!48467)))

(declare-fun b!4328352 () Bool)

(assert (=> b!4328352 (= e!2693315 e!2693314)))

(declare-fun c!736526 () Bool)

(assert (=> b!4328352 (= c!736526 (is-Cons!48467 (t!355503 l!13867)))))

(assert (= (and d!1272168 c!736527) b!4328351))

(assert (= (and d!1272168 (not c!736527)) b!4328352))

(assert (= (and b!4328352 c!736526) b!4328353))

(assert (= (and b!4328352 (not c!736526)) b!4328354))

(declare-fun m!4923183 () Bool)

(assert (=> d!1272168 m!4923183))

(assert (=> d!1272168 m!4923151))

(declare-fun m!4923185 () Bool)

(assert (=> b!4328353 m!4923185))

(assert (=> b!4328312 d!1272168))

(declare-fun d!1272172 () Bool)

(assert (=> d!1272172 (noDuplicateKeys!280 (removePairForKey!294 (t!355503 l!13867) key!5269))))

(declare-fun lt!1545184 () Unit!68105)

(declare-fun choose!26469 (List!48591 K!9738) Unit!68105)

(assert (=> d!1272172 (= lt!1545184 (choose!26469 (t!355503 l!13867) key!5269))))

(assert (=> d!1272172 (noDuplicateKeys!280 (t!355503 l!13867))))

(assert (=> d!1272172 (= (lemmaRemovePairForKeyPreservesNoDuplicateKeys!204 (t!355503 l!13867) key!5269) lt!1545184)))

(declare-fun bs!607575 () Bool)

(assert (= bs!607575 d!1272172))

(assert (=> bs!607575 m!4923143))

(assert (=> bs!607575 m!4923143))

(declare-fun m!4923187 () Bool)

(assert (=> bs!607575 m!4923187))

(declare-fun m!4923189 () Bool)

(assert (=> bs!607575 m!4923189))

(assert (=> bs!607575 m!4923151))

(assert (=> b!4328312 d!1272172))

(declare-fun d!1272174 () Bool)

(declare-fun res!1773694 () Bool)

(declare-fun e!2693316 () Bool)

(assert (=> d!1272174 (=> res!1773694 e!2693316)))

(assert (=> d!1272174 (= res!1773694 (not (is-Cons!48467 (t!355503 l!13867))))))

(assert (=> d!1272174 (= (noDuplicateKeys!280 (t!355503 l!13867)) e!2693316)))

(declare-fun b!4328355 () Bool)

(declare-fun e!2693317 () Bool)

(assert (=> b!4328355 (= e!2693316 e!2693317)))

(declare-fun res!1773695 () Bool)

(assert (=> b!4328355 (=> (not res!1773695) (not e!2693317))))

(assert (=> b!4328355 (= res!1773695 (not (containsKey!430 (t!355503 (t!355503 l!13867)) (_1!27057 (h!53936 (t!355503 l!13867))))))))

(declare-fun b!4328356 () Bool)

(assert (=> b!4328356 (= e!2693317 (noDuplicateKeys!280 (t!355503 (t!355503 l!13867))))))

(assert (= (and d!1272174 (not res!1773694)) b!4328355))

(assert (= (and b!4328355 res!1773695) b!4328356))

(declare-fun m!4923191 () Bool)

(assert (=> b!4328355 m!4923191))

(declare-fun m!4923193 () Bool)

(assert (=> b!4328356 m!4923193))

(assert (=> b!4328312 d!1272174))

(declare-fun b!4328361 () Bool)

(declare-fun tp!1327989 () Bool)

(declare-fun e!2693320 () Bool)

(assert (=> b!4328361 (= e!2693320 (and tp_is_empty!24309 tp_is_empty!24311 tp!1327989))))

(assert (=> b!4328313 (= tp!1327983 e!2693320)))

(assert (= (and b!4328313 (is-Cons!48467 (t!355503 l!13867))) b!4328361))

(push 1)

(assert (not b!4328356))

(assert tp_is_empty!24309)

(assert (not b!4328355))

(assert (not b!4328361))

(assert (not d!1272168))

(assert (not d!1272172))

(assert (not b!4328329))

(assert (not b!4328330))

(assert tp_is_empty!24311)

(assert (not b!4328353))

(assert (not d!1272160))

(assert (not b!4328327))

(assert (not b!4328328))

(assert (not b!4328336))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

