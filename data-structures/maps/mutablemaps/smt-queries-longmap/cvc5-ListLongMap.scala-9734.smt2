; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!115346 () Bool)

(assert start!115346)

(declare-fun res!908187 () Bool)

(declare-fun e!773857 () Bool)

(assert (=> start!115346 (=> (not res!908187) (not e!773857))))

(declare-datatypes ((List!32006 0))(
  ( (Nil!32003) (Cons!32002 (h!33211 (_ BitVec 64)) (t!46707 List!32006)) )
))
(declare-datatypes ((tuple2!24534 0))(
  ( (tuple2!24535 (_1!12277 (_ BitVec 64)) (_2!12277 List!32006)) )
))
(declare-datatypes ((Option!793 0))(
  ( (Some!792 (v!21589 tuple2!24534)) (None!791) )
))
(declare-fun lt!601051 () Option!793)

(declare-fun isEmpty!1118 (Option!793) Bool)

(assert (=> start!115346 (= res!908187 (not (isEmpty!1118 lt!601051)))))

(declare-fun l!3677 () List!32006)

(declare-fun unapply!58 (List!32006) Option!793)

(assert (=> start!115346 (= lt!601051 (unapply!58 l!3677))))

(assert (=> start!115346 e!773857))

(assert (=> start!115346 true))

(declare-fun b!1364492 () Bool)

(declare-fun subseq!941 (List!32006 List!32006) Bool)

(assert (=> b!1364492 (= e!773857 (not (subseq!941 l!3677 l!3677)))))

(declare-fun lt!601052 () tuple2!24534)

(assert (=> b!1364492 (subseq!941 (_2!12277 lt!601052) (_2!12277 lt!601052))))

(declare-datatypes ((Unit!44975 0))(
  ( (Unit!44976) )
))
(declare-fun lt!601050 () Unit!44975)

(declare-fun lemmaListSubSeqRefl!0 (List!32006) Unit!44975)

(assert (=> b!1364492 (= lt!601050 (lemmaListSubSeqRefl!0 (_2!12277 lt!601052)))))

(declare-fun get!22748 (Option!793) tuple2!24534)

(assert (=> b!1364492 (= lt!601052 (get!22748 lt!601051))))

(assert (= (and start!115346 res!908187) b!1364492))

(declare-fun m!1249315 () Bool)

(assert (=> start!115346 m!1249315))

(declare-fun m!1249317 () Bool)

(assert (=> start!115346 m!1249317))

(declare-fun m!1249319 () Bool)

(assert (=> b!1364492 m!1249319))

(declare-fun m!1249321 () Bool)

(assert (=> b!1364492 m!1249321))

(declare-fun m!1249323 () Bool)

(assert (=> b!1364492 m!1249323))

(declare-fun m!1249325 () Bool)

(assert (=> b!1364492 m!1249325))

(push 1)

(assert (not start!115346))

(assert (not b!1364492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!146423 () Bool)

(assert (=> d!146423 (= (isEmpty!1118 lt!601051) (not (is-Some!792 lt!601051)))))

(assert (=> start!115346 d!146423))

(declare-fun d!146429 () Bool)

(assert (=> d!146429 (= (unapply!58 l!3677) (ite (is-Nil!32003 l!3677) None!791 (Some!792 (tuple2!24535 (h!33211 l!3677) (t!46707 l!3677)))))))

(assert (=> start!115346 d!146429))

(declare-fun b!1364532 () Bool)

(declare-fun e!773898 () Bool)

(declare-fun e!773899 () Bool)

(assert (=> b!1364532 (= e!773898 e!773899)))

(declare-fun res!908226 () Bool)

(assert (=> b!1364532 (=> res!908226 e!773899)))

(declare-fun e!773896 () Bool)

(assert (=> b!1364532 (= res!908226 e!773896)))

(declare-fun res!908228 () Bool)

(assert (=> b!1364532 (=> (not res!908228) (not e!773896))))

(assert (=> b!1364532 (= res!908228 (= (h!33211 l!3677) (h!33211 l!3677)))))

(declare-fun b!1364534 () Bool)

(assert (=> b!1364534 (= e!773899 (subseq!941 l!3677 (t!46707 l!3677)))))

(declare-fun b!1364531 () Bool)

(declare-fun e!773897 () Bool)

(assert (=> b!1364531 (= e!773897 e!773898)))

(declare-fun res!908229 () Bool)

(assert (=> b!1364531 (=> (not res!908229) (not e!773898))))

(assert (=> b!1364531 (= res!908229 (is-Cons!32002 l!3677))))

(declare-fun b!1364533 () Bool)

(assert (=> b!1364533 (= e!773896 (subseq!941 (t!46707 l!3677) (t!46707 l!3677)))))

(declare-fun d!146433 () Bool)

(declare-fun res!908227 () Bool)

(assert (=> d!146433 (=> res!908227 e!773897)))

(assert (=> d!146433 (= res!908227 (is-Nil!32003 l!3677))))

(assert (=> d!146433 (= (subseq!941 l!3677 l!3677) e!773897)))

(assert (= (and d!146433 (not res!908227)) b!1364531))

(assert (= (and b!1364531 res!908229) b!1364532))

(assert (= (and b!1364532 res!908228) b!1364533))

(assert (= (and b!1364532 (not res!908226)) b!1364534))

(declare-fun m!1249359 () Bool)

(assert (=> b!1364534 m!1249359))

(declare-fun m!1249363 () Bool)

(assert (=> b!1364533 m!1249363))

(assert (=> b!1364492 d!146433))

(declare-fun b!1364540 () Bool)

(declare-fun e!773906 () Bool)

(declare-fun e!773907 () Bool)

(assert (=> b!1364540 (= e!773906 e!773907)))

(declare-fun res!908234 () Bool)

(assert (=> b!1364540 (=> res!908234 e!773907)))

(declare-fun e!773904 () Bool)

(assert (=> b!1364540 (= res!908234 e!773904)))

(declare-fun res!908236 () Bool)

(assert (=> b!1364540 (=> (not res!908236) (not e!773904))))

(assert (=> b!1364540 (= res!908236 (= (h!33211 (_2!12277 lt!601052)) (h!33211 (_2!12277 lt!601052))))))

(declare-fun b!1364542 () Bool)

(assert (=> b!1364542 (= e!773907 (subseq!941 (_2!12277 lt!601052) (t!46707 (_2!12277 lt!601052))))))

(declare-fun b!1364539 () Bool)

(declare-fun e!773905 () Bool)

(assert (=> b!1364539 (= e!773905 e!773906)))

(declare-fun res!908237 () Bool)

(assert (=> b!1364539 (=> (not res!908237) (not e!773906))))

(assert (=> b!1364539 (= res!908237 (is-Cons!32002 (_2!12277 lt!601052)))))

(declare-fun b!1364541 () Bool)

(assert (=> b!1364541 (= e!773904 (subseq!941 (t!46707 (_2!12277 lt!601052)) (t!46707 (_2!12277 lt!601052))))))

(declare-fun d!146441 () Bool)

(declare-fun res!908235 () Bool)

(assert (=> d!146441 (=> res!908235 e!773905)))

(assert (=> d!146441 (= res!908235 (is-Nil!32003 (_2!12277 lt!601052)))))

(assert (=> d!146441 (= (subseq!941 (_2!12277 lt!601052) (_2!12277 lt!601052)) e!773905)))

(assert (= (and d!146441 (not res!908235)) b!1364539))

(assert (= (and b!1364539 res!908237) b!1364540))

(assert (= (and b!1364540 res!908236) b!1364541))

(assert (= (and b!1364540 (not res!908234)) b!1364542))

(declare-fun m!1249369 () Bool)

(assert (=> b!1364542 m!1249369))

(declare-fun m!1249373 () Bool)

(assert (=> b!1364541 m!1249373))

(assert (=> b!1364492 d!146441))

(declare-fun d!146447 () Bool)

(assert (=> d!146447 (subseq!941 (_2!12277 lt!601052) (_2!12277 lt!601052))))

(declare-fun lt!601078 () Unit!44975)

(declare-fun choose!36 (List!32006) Unit!44975)

(assert (=> d!146447 (= lt!601078 (choose!36 (_2!12277 lt!601052)))))

(assert (=> d!146447 (= (lemmaListSubSeqRefl!0 (_2!12277 lt!601052)) lt!601078)))

(declare-fun bs!39144 () Bool)

(assert (= bs!39144 d!146447))

(assert (=> bs!39144 m!1249321))

(declare-fun m!1249377 () Bool)

(assert (=> bs!39144 m!1249377))

(assert (=> b!1364492 d!146447))

(declare-fun d!146455 () Bool)

(assert (=> d!146455 (= (get!22748 lt!601051) (v!21589 lt!601051))))

