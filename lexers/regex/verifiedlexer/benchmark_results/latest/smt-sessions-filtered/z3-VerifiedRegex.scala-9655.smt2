; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!506910 () Bool)

(assert start!506910)

(declare-fun b!4853862 () Bool)

(declare-fun e!3034418 () Bool)

(declare-datatypes ((K!17564 0))(
  ( (K!17565 (val!22357 Int)) )
))
(declare-datatypes ((V!17810 0))(
  ( (V!17811 (val!22358 Int)) )
))
(declare-datatypes ((tuple2!59528 0))(
  ( (tuple2!59529 (_1!33058 K!17564) (_2!33058 V!17810)) )
))
(declare-datatypes ((List!55821 0))(
  ( (Nil!55697) (Cons!55697 (h!62145 tuple2!59528) (t!363317 List!55821)) )
))
(declare-fun l!11080 () List!55821)

(declare-fun key!2508 () K!17564)

(declare-fun containsKey!4772 (List!55821 K!17564) Bool)

(assert (=> b!4853862 (= e!3034418 (containsKey!4772 l!11080 key!2508))))

(declare-fun res!2072350 () Bool)

(declare-fun e!3034421 () Bool)

(assert (=> start!506910 (=> (not res!2072350) (not e!3034421))))

(declare-fun noDuplicateKeys!2646 (List!55821) Bool)

(assert (=> start!506910 (= res!2072350 (noDuplicateKeys!2646 l!11080))))

(assert (=> start!506910 e!3034421))

(declare-fun e!3034420 () Bool)

(assert (=> start!506910 e!3034420))

(declare-fun tp_is_empty!35449 () Bool)

(assert (=> start!506910 tp_is_empty!35449))

(declare-fun b!4853863 () Bool)

(declare-fun tp!1365272 () Bool)

(declare-fun tp_is_empty!35451 () Bool)

(assert (=> b!4853863 (= e!3034420 (and tp_is_empty!35449 tp_is_empty!35451 tp!1365272))))

(declare-fun b!4853864 () Bool)

(declare-fun res!2072348 () Bool)

(assert (=> b!4853864 (=> (not res!2072348) (not e!3034421))))

(assert (=> b!4853864 (= res!2072348 e!3034418)))

(declare-fun res!2072352 () Bool)

(assert (=> b!4853864 (=> res!2072352 e!3034418)))

(assert (=> b!4853864 (= res!2072352 false)))

(declare-fun b!4853865 () Bool)

(declare-fun e!3034419 () Bool)

(declare-fun e!3034417 () Bool)

(assert (=> b!4853865 (= e!3034419 e!3034417)))

(declare-fun res!2072349 () Bool)

(assert (=> b!4853865 (=> res!2072349 e!3034417)))

(declare-fun lt!1990804 () tuple2!59528)

(assert (=> b!4853865 (= res!2072349 (not (= (_1!33058 lt!1990804) key!2508)))))

(declare-datatypes ((Option!13756 0))(
  ( (None!13755) (Some!13755 (v!49569 tuple2!59528)) )
))
(declare-fun get!19143 (Option!13756) tuple2!59528)

(assert (=> b!4853865 (= lt!1990804 (get!19143 None!13755))))

(declare-fun b!4853866 () Bool)

(declare-fun res!2072351 () Bool)

(assert (=> b!4853866 (=> (not res!2072351) (not e!3034421))))

(get-info :version)

(assert (=> b!4853866 (= res!2072351 (and (or (not ((_ is Cons!55697) l!11080)) (not (= (_1!33058 (h!62145 l!11080)) key!2508))) (not ((_ is Cons!55697) l!11080))))))

(declare-fun b!4853867 () Bool)

(assert (=> b!4853867 (= e!3034421 e!3034419)))

(declare-fun res!2072347 () Bool)

(assert (=> b!4853867 (=> res!2072347 e!3034419)))

(assert (=> b!4853867 (= res!2072347 true)))

(declare-fun b!4853868 () Bool)

(declare-fun contains!19343 (List!55821 tuple2!59528) Bool)

(assert (=> b!4853868 (= e!3034417 (not (contains!19343 l!11080 lt!1990804)))))

(assert (= (and start!506910 res!2072350) b!4853866))

(assert (= (and b!4853866 res!2072351) b!4853864))

(assert (= (and b!4853864 (not res!2072352)) b!4853862))

(assert (= (and b!4853864 res!2072348) b!4853867))

(assert (= (and b!4853867 (not res!2072347)) b!4853865))

(assert (= (and b!4853865 (not res!2072349)) b!4853868))

(assert (= (and start!506910 ((_ is Cons!55697) l!11080)) b!4853863))

(declare-fun m!5851956 () Bool)

(assert (=> b!4853862 m!5851956))

(declare-fun m!5851958 () Bool)

(assert (=> start!506910 m!5851958))

(declare-fun m!5851960 () Bool)

(assert (=> b!4853865 m!5851960))

(declare-fun m!5851962 () Bool)

(assert (=> b!4853868 m!5851962))

(check-sat (not b!4853863) (not b!4853868) tp_is_empty!35451 (not start!506910) tp_is_empty!35449 (not b!4853865) (not b!4853862))
(check-sat)
(get-model)

(declare-fun d!1558146 () Bool)

(assert (not d!1558146))

(assert (=> b!4853865 d!1558146))

(declare-fun d!1558148 () Bool)

(declare-fun lt!1990809 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9923 (List!55821) (InoxSet tuple2!59528))

(assert (=> d!1558148 (= lt!1990809 (select (content!9923 l!11080) lt!1990804))))

(declare-fun e!3034436 () Bool)

(assert (=> d!1558148 (= lt!1990809 e!3034436)))

(declare-fun res!2072368 () Bool)

(assert (=> d!1558148 (=> (not res!2072368) (not e!3034436))))

(assert (=> d!1558148 (= res!2072368 ((_ is Cons!55697) l!11080))))

(assert (=> d!1558148 (= (contains!19343 l!11080 lt!1990804) lt!1990809)))

(declare-fun b!4853883 () Bool)

(declare-fun e!3034437 () Bool)

(assert (=> b!4853883 (= e!3034436 e!3034437)))

(declare-fun res!2072367 () Bool)

(assert (=> b!4853883 (=> res!2072367 e!3034437)))

(assert (=> b!4853883 (= res!2072367 (= (h!62145 l!11080) lt!1990804))))

(declare-fun b!4853884 () Bool)

(assert (=> b!4853884 (= e!3034437 (contains!19343 (t!363317 l!11080) lt!1990804))))

(assert (= (and d!1558148 res!2072368) b!4853883))

(assert (= (and b!4853883 (not res!2072367)) b!4853884))

(declare-fun m!5851966 () Bool)

(assert (=> d!1558148 m!5851966))

(declare-fun m!5851968 () Bool)

(assert (=> d!1558148 m!5851968))

(declare-fun m!5851972 () Bool)

(assert (=> b!4853884 m!5851972))

(assert (=> b!4853868 d!1558148))

(declare-fun d!1558152 () Bool)

(declare-fun res!2072379 () Bool)

(declare-fun e!3034448 () Bool)

(assert (=> d!1558152 (=> res!2072379 e!3034448)))

(assert (=> d!1558152 (= res!2072379 (not ((_ is Cons!55697) l!11080)))))

(assert (=> d!1558152 (= (noDuplicateKeys!2646 l!11080) e!3034448)))

(declare-fun b!4853895 () Bool)

(declare-fun e!3034449 () Bool)

(assert (=> b!4853895 (= e!3034448 e!3034449)))

(declare-fun res!2072380 () Bool)

(assert (=> b!4853895 (=> (not res!2072380) (not e!3034449))))

(assert (=> b!4853895 (= res!2072380 (not (containsKey!4772 (t!363317 l!11080) (_1!33058 (h!62145 l!11080)))))))

(declare-fun b!4853896 () Bool)

(assert (=> b!4853896 (= e!3034449 (noDuplicateKeys!2646 (t!363317 l!11080)))))

(assert (= (and d!1558152 (not res!2072379)) b!4853895))

(assert (= (and b!4853895 res!2072380) b!4853896))

(declare-fun m!5851978 () Bool)

(assert (=> b!4853895 m!5851978))

(declare-fun m!5851980 () Bool)

(assert (=> b!4853896 m!5851980))

(assert (=> start!506910 d!1558152))

(declare-fun d!1558158 () Bool)

(declare-fun res!2072387 () Bool)

(declare-fun e!3034459 () Bool)

(assert (=> d!1558158 (=> res!2072387 e!3034459)))

(assert (=> d!1558158 (= res!2072387 (and ((_ is Cons!55697) l!11080) (= (_1!33058 (h!62145 l!11080)) key!2508)))))

(assert (=> d!1558158 (= (containsKey!4772 l!11080 key!2508) e!3034459)))

(declare-fun b!4853908 () Bool)

(declare-fun e!3034460 () Bool)

(assert (=> b!4853908 (= e!3034459 e!3034460)))

(declare-fun res!2072388 () Bool)

(assert (=> b!4853908 (=> (not res!2072388) (not e!3034460))))

(assert (=> b!4853908 (= res!2072388 ((_ is Cons!55697) l!11080))))

(declare-fun b!4853909 () Bool)

(assert (=> b!4853909 (= e!3034460 (containsKey!4772 (t!363317 l!11080) key!2508))))

(assert (= (and d!1558158 (not res!2072387)) b!4853908))

(assert (= (and b!4853908 res!2072388) b!4853909))

(declare-fun m!5851986 () Bool)

(assert (=> b!4853909 m!5851986))

(assert (=> b!4853862 d!1558158))

(declare-fun e!3034463 () Bool)

(declare-fun tp!1365278 () Bool)

(declare-fun b!4853914 () Bool)

(assert (=> b!4853914 (= e!3034463 (and tp_is_empty!35449 tp_is_empty!35451 tp!1365278))))

(assert (=> b!4853863 (= tp!1365272 e!3034463)))

(assert (= (and b!4853863 ((_ is Cons!55697) (t!363317 l!11080))) b!4853914))

(check-sat (not b!4853914) (not b!4853896) (not b!4853895) tp_is_empty!35451 (not b!4853884) (not b!4853909) tp_is_empty!35449 (not d!1558148))
(check-sat)
