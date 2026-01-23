; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!105710 () Bool)

(assert start!105710)

(declare-fun res!537596 () Bool)

(declare-fun e!765016 () Bool)

(assert (=> start!105710 (=> (not res!537596) (not e!765016))))

(declare-datatypes ((B!1275 0))(
  ( (B!1276 (val!3823 Int)) )
))
(declare-datatypes ((List!12007 0))(
  ( (Nil!11983) (Cons!11983 (h!17384 B!1275) (t!112213 List!12007)) )
))
(declare-fun l!2965 () List!12007)

(assert (=> start!105710 (= res!537596 (is-Nil!11983 l!2965))))

(assert (=> start!105710 e!765016))

(declare-fun e!765017 () Bool)

(assert (=> start!105710 e!765017))

(assert (=> start!105710 true))

(declare-fun b!1189970 () Bool)

(declare-fun i!770 () Int)

(declare-fun subseq!342 (List!12007 List!12007) Bool)

(declare-fun drop!566 (List!12007 Int) List!12007)

(assert (=> b!1189970 (= e!765016 (not (subseq!342 (drop!566 l!2965 i!770) l!2965)))))

(declare-fun b!1189971 () Bool)

(declare-fun tp_is_empty!5865 () Bool)

(declare-fun tp!339649 () Bool)

(assert (=> b!1189971 (= e!765017 (and tp_is_empty!5865 tp!339649))))

(assert (= (and start!105710 res!537596) b!1189970))

(assert (= (and start!105710 (is-Cons!11983 l!2965)) b!1189971))

(declare-fun m!1365225 () Bool)

(assert (=> b!1189970 m!1365225))

(assert (=> b!1189970 m!1365225))

(declare-fun m!1365227 () Bool)

(assert (=> b!1189970 m!1365227))

(push 1)

(assert (not b!1189970))

(assert (not b!1189971))

(assert tp_is_empty!5865)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1189989 () Bool)

(declare-fun e!765034 () Bool)

(assert (=> b!1189989 (= e!765034 (subseq!342 (drop!566 l!2965 i!770) (t!112213 l!2965)))))

(declare-fun b!1189986 () Bool)

(declare-fun e!765035 () Bool)

(declare-fun e!765033 () Bool)

(assert (=> b!1189986 (= e!765035 e!765033)))

(declare-fun res!537609 () Bool)

(assert (=> b!1189986 (=> (not res!537609) (not e!765033))))

(assert (=> b!1189986 (= res!537609 (is-Cons!11983 l!2965))))

(declare-fun b!1189988 () Bool)

(declare-fun e!765032 () Bool)

(assert (=> b!1189988 (= e!765032 (subseq!342 (t!112213 (drop!566 l!2965 i!770)) (t!112213 l!2965)))))

(declare-fun b!1189987 () Bool)

(assert (=> b!1189987 (= e!765033 e!765034)))

(declare-fun res!537608 () Bool)

(assert (=> b!1189987 (=> res!537608 e!765034)))

(assert (=> b!1189987 (= res!537608 e!765032)))

(declare-fun res!537610 () Bool)

(assert (=> b!1189987 (=> (not res!537610) (not e!765032))))

(assert (=> b!1189987 (= res!537610 (= (h!17384 (drop!566 l!2965 i!770)) (h!17384 l!2965)))))

(declare-fun d!340127 () Bool)

(declare-fun res!537611 () Bool)

(assert (=> d!340127 (=> res!537611 e!765035)))

(assert (=> d!340127 (= res!537611 (is-Nil!11983 (drop!566 l!2965 i!770)))))

(assert (=> d!340127 (= (subseq!342 (drop!566 l!2965 i!770) l!2965) e!765035)))

(assert (= (and d!340127 (not res!537611)) b!1189986))

(assert (= (and b!1189986 res!537609) b!1189987))

(assert (= (and b!1189987 res!537610) b!1189988))

(assert (= (and b!1189987 (not res!537608)) b!1189989))

(assert (=> b!1189989 m!1365225))

(declare-fun m!1365233 () Bool)

(assert (=> b!1189989 m!1365233))

(declare-fun m!1365235 () Bool)

(assert (=> b!1189988 m!1365235))

(assert (=> b!1189970 d!340127))

(declare-fun b!1190016 () Bool)

(declare-fun e!765061 () Bool)

(declare-fun lt!409123 () List!12007)

(declare-fun e!765058 () Int)

(declare-fun size!9447 (List!12007) Int)

(assert (=> b!1190016 (= e!765061 (= (size!9447 lt!409123) e!765058))))

(declare-fun c!197505 () Bool)

(assert (=> b!1190016 (= c!197505 (<= i!770 0))))

(declare-fun b!1190018 () Bool)

(declare-fun e!765062 () Int)

(declare-fun call!82665 () Int)

(assert (=> b!1190018 (= e!765062 (- call!82665 i!770))))

(declare-fun bm!82660 () Bool)

(assert (=> bm!82660 (= call!82665 (size!9447 l!2965))))

(declare-fun b!1190021 () Bool)

(declare-fun e!765054 () List!12007)

(assert (=> b!1190021 (= e!765054 l!2965)))

(declare-fun b!1190023 () Bool)

(assert (=> b!1190023 (= e!765062 0)))

(declare-fun b!1190024 () Bool)

(declare-fun e!765057 () List!12007)

(assert (=> b!1190024 (= e!765057 e!765054)))

(declare-fun c!197506 () Bool)

(assert (=> b!1190024 (= c!197506 (<= i!770 0))))

(declare-fun b!1190025 () Bool)

(assert (=> b!1190025 (= e!765054 (drop!566 (t!112213 l!2965) (- i!770 1)))))

(declare-fun d!340131 () Bool)

(assert (=> d!340131 e!765061))

(declare-fun res!537622 () Bool)

(assert (=> d!340131 (=> (not res!537622) (not e!765061))))

(declare-fun content!1654 (List!12007) (Set B!1275))

(assert (=> d!340131 (= res!537622 (set.subset (content!1654 lt!409123) (content!1654 l!2965)))))

(assert (=> d!340131 (= lt!409123 e!765057)))

(declare-fun c!197507 () Bool)

(assert (=> d!340131 (= c!197507 (is-Nil!11983 l!2965))))

(assert (=> d!340131 (= (drop!566 l!2965 i!770) lt!409123)))

(declare-fun b!1190026 () Bool)

(assert (=> b!1190026 (= e!765057 Nil!11983)))

(declare-fun b!1190027 () Bool)

(assert (=> b!1190027 (= e!765058 e!765062)))

(declare-fun c!197508 () Bool)

(assert (=> b!1190027 (= c!197508 (>= i!770 call!82665))))

(declare-fun b!1190028 () Bool)

(assert (=> b!1190028 (= e!765058 call!82665)))

(assert (= (and d!340131 c!197507) b!1190026))

(assert (= (and d!340131 (not c!197507)) b!1190024))

(assert (= (and b!1190024 c!197506) b!1190021))

(assert (= (and b!1190024 (not c!197506)) b!1190025))

(assert (= (and d!340131 res!537622) b!1190016))

(assert (= (and b!1190016 c!197505) b!1190028))

(assert (= (and b!1190016 (not c!197505)) b!1190027))

(assert (= (and b!1190027 c!197508) b!1190023))

(assert (= (and b!1190027 (not c!197508)) b!1190018))

(assert (= (or b!1190028 b!1190027 b!1190018) bm!82660))

(declare-fun m!1365237 () Bool)

(assert (=> b!1190016 m!1365237))

(declare-fun m!1365239 () Bool)

(assert (=> bm!82660 m!1365239))

(declare-fun m!1365241 () Bool)

(assert (=> b!1190025 m!1365241))

(declare-fun m!1365243 () Bool)

(assert (=> d!340131 m!1365243))

(declare-fun m!1365245 () Bool)

(assert (=> d!340131 m!1365245))

(assert (=> b!1189970 d!340131))

(declare-fun b!1190033 () Bool)

(declare-fun e!765065 () Bool)

(declare-fun tp!339655 () Bool)

(assert (=> b!1190033 (= e!765065 (and tp_is_empty!5865 tp!339655))))

(assert (=> b!1189971 (= tp!339649 e!765065)))

(assert (= (and b!1189971 (is-Cons!11983 (t!112213 l!2965))) b!1190033))

(push 1)

(assert (not bm!82660))

(assert tp_is_empty!5865)

(assert (not b!1189988))

(assert (not b!1190033))

(assert (not b!1190025))

(assert (not b!1190016))

(assert (not d!340131))

(assert (not b!1189989))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

