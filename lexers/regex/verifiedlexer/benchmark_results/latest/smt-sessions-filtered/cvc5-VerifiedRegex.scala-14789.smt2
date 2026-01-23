; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!759638 () Bool)

(assert start!759638)

(declare-fun b!8060000 () Bool)

(declare-fun e!4749944 () Bool)

(declare-datatypes ((B!4539 0))(
  ( (B!4540 (val!33133 Int)) )
))
(declare-datatypes ((K!23076 0))(
  ( (K!23077 (val!33134 Int)) )
))
(declare-datatypes ((tuple2!71098 0))(
  ( (tuple2!71099 (_1!38852 K!23076) (_2!38852 B!4539)) )
))
(declare-datatypes ((List!75816 0))(
  ( (Nil!75690) (Cons!75690 (h!82138 tuple2!71098) (t!391588 List!75816)) )
))
(declare-datatypes ((ListMap!7461 0))(
  ( (ListMap!7462 (toList!12005 List!75816)) )
))
(declare-fun thiss!41813 () ListMap!7461)

(declare-fun key!1573 () K!23076)

(declare-datatypes ((List!75817 0))(
  ( (Nil!75691) (Cons!75691 (h!82139 K!23076) (t!391589 List!75817)) )
))
(declare-fun contains!21347 (List!75817 K!23076) Bool)

(declare-fun getKeysList!1280 (List!75816) List!75817)

(assert (=> b!8060000 (= e!4749944 (not (contains!21347 (getKeysList!1280 (toList!12005 thiss!41813)) key!1573)))))

(declare-fun b!8059998 () Bool)

(declare-fun res!3188705 () Bool)

(assert (=> b!8059998 (=> (not res!3188705) (not e!4749944))))

(declare-fun keys!30978 (ListMap!7461) List!75817)

(assert (=> b!8059998 (= res!3188705 (contains!21347 (keys!30978 thiss!41813) key!1573))))

(declare-fun res!3188706 () Bool)

(assert (=> start!759638 (=> (not res!3188706) (not e!4749944))))

(declare-fun containsKey!4958 (List!75816 K!23076) Bool)

(assert (=> start!759638 (= res!3188706 (not (containsKey!4958 (toList!12005 thiss!41813) key!1573)))))

(assert (=> start!759638 e!4749944))

(declare-fun e!4749943 () Bool)

(declare-fun inv!97546 (ListMap!7461) Bool)

(assert (=> start!759638 (and (inv!97546 thiss!41813) e!4749943)))

(declare-fun tp_is_empty!55299 () Bool)

(assert (=> start!759638 tp_is_empty!55299))

(declare-fun b!8060001 () Bool)

(declare-fun tp!2414487 () Bool)

(assert (=> b!8060001 (= e!4749943 tp!2414487)))

(declare-fun b!8059999 () Bool)

(declare-fun res!3188707 () Bool)

(assert (=> b!8059999 (=> (not res!3188707) (not e!4749944))))

(declare-fun invariantList!1993 (List!75816) Bool)

(assert (=> b!8059999 (= res!3188707 (invariantList!1993 (toList!12005 thiss!41813)))))

(assert (= (and start!759638 res!3188706) b!8059998))

(assert (= (and b!8059998 res!3188705) b!8059999))

(assert (= (and b!8059999 res!3188707) b!8060000))

(assert (= start!759638 b!8060001))

(declare-fun m!8413120 () Bool)

(assert (=> b!8060000 m!8413120))

(assert (=> b!8060000 m!8413120))

(declare-fun m!8413122 () Bool)

(assert (=> b!8060000 m!8413122))

(declare-fun m!8413124 () Bool)

(assert (=> b!8059998 m!8413124))

(assert (=> b!8059998 m!8413124))

(declare-fun m!8413126 () Bool)

(assert (=> b!8059998 m!8413126))

(declare-fun m!8413128 () Bool)

(assert (=> start!759638 m!8413128))

(declare-fun m!8413130 () Bool)

(assert (=> start!759638 m!8413130))

(declare-fun m!8413132 () Bool)

(assert (=> b!8059999 m!8413132))

(push 1)

(assert (not b!8059999))

(assert (not b!8059998))

(assert tp_is_empty!55299)

(assert (not b!8060000))

(assert (not b!8060001))

(assert (not start!759638))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2399472 () Bool)

(declare-fun lt!2732979 () Bool)

(declare-fun content!16146 (List!75817) (Set K!23076))

(assert (=> d!2399472 (= lt!2732979 (set.member key!1573 (content!16146 (getKeysList!1280 (toList!12005 thiss!41813)))))))

(declare-fun e!4749955 () Bool)

(assert (=> d!2399472 (= lt!2732979 e!4749955)))

(declare-fun res!3188721 () Bool)

(assert (=> d!2399472 (=> (not res!3188721) (not e!4749955))))

(assert (=> d!2399472 (= res!3188721 (is-Cons!75691 (getKeysList!1280 (toList!12005 thiss!41813))))))

(assert (=> d!2399472 (= (contains!21347 (getKeysList!1280 (toList!12005 thiss!41813)) key!1573) lt!2732979)))

(declare-fun b!8060018 () Bool)

(declare-fun e!4749956 () Bool)

(assert (=> b!8060018 (= e!4749955 e!4749956)))

(declare-fun res!3188722 () Bool)

(assert (=> b!8060018 (=> res!3188722 e!4749956)))

(assert (=> b!8060018 (= res!3188722 (= (h!82139 (getKeysList!1280 (toList!12005 thiss!41813))) key!1573))))

(declare-fun b!8060019 () Bool)

(assert (=> b!8060019 (= e!4749956 (contains!21347 (t!391589 (getKeysList!1280 (toList!12005 thiss!41813))) key!1573))))

(assert (= (and d!2399472 res!3188721) b!8060018))

(assert (= (and b!8060018 (not res!3188722)) b!8060019))

(assert (=> d!2399472 m!8413120))

(declare-fun m!8413148 () Bool)

(assert (=> d!2399472 m!8413148))

(declare-fun m!8413150 () Bool)

(assert (=> d!2399472 m!8413150))

(declare-fun m!8413152 () Bool)

(assert (=> b!8060019 m!8413152))

(assert (=> b!8060000 d!2399472))

(declare-fun b!8060054 () Bool)

(assert (=> b!8060054 true))

(declare-fun bs!1973607 () Bool)

(declare-fun b!8060052 () Bool)

(assert (= bs!1973607 (and b!8060052 b!8060054)))

(declare-fun lambda!475370 () Int)

(declare-fun lambda!475369 () Int)

(assert (=> bs!1973607 (= (= (Cons!75690 (h!82138 (toList!12005 thiss!41813)) (t!391588 (toList!12005 thiss!41813))) (t!391588 (toList!12005 thiss!41813))) (= lambda!475370 lambda!475369))))

(assert (=> b!8060052 true))

(declare-fun bs!1973608 () Bool)

(declare-fun b!8060056 () Bool)

(assert (= bs!1973608 (and b!8060056 b!8060054)))

(declare-fun lambda!475371 () Int)

(assert (=> bs!1973608 (= (= (toList!12005 thiss!41813) (t!391588 (toList!12005 thiss!41813))) (= lambda!475371 lambda!475369))))

(declare-fun bs!1973609 () Bool)

(assert (= bs!1973609 (and b!8060056 b!8060052)))

(assert (=> bs!1973609 (= (= (toList!12005 thiss!41813) (Cons!75690 (h!82138 (toList!12005 thiss!41813)) (t!391588 (toList!12005 thiss!41813)))) (= lambda!475371 lambda!475370))))

(assert (=> b!8060056 true))

(declare-fun b!8060049 () Bool)

(declare-fun lambda!475372 () Int)

(declare-fun e!4749974 () Bool)

(declare-fun lt!2733002 () List!75817)

(declare-fun map!18855 (List!75816 Int) List!75817)

(assert (=> b!8060049 (= e!4749974 (= (content!16146 lt!2733002) (content!16146 (map!18855 (toList!12005 thiss!41813) lambda!475372))))))

(declare-fun b!8060050 () Bool)

(declare-datatypes ((Unit!172804 0))(
  ( (Unit!172805) )
))
(declare-fun e!4749975 () Unit!172804)

(declare-fun Unit!172806 () Unit!172804)

(assert (=> b!8060050 (= e!4749975 Unit!172806)))

(declare-fun b!8060051 () Bool)

(declare-fun e!4749973 () Unit!172804)

(declare-fun Unit!172807 () Unit!172804)

(assert (=> b!8060051 (= e!4749973 Unit!172807)))

(declare-fun e!4749976 () List!75817)

(assert (=> b!8060052 (= e!4749976 (Cons!75691 (_1!38852 (h!82138 (toList!12005 thiss!41813))) (getKeysList!1280 (t!391588 (toList!12005 thiss!41813)))))))

(declare-fun c!1477030 () Bool)

(assert (=> b!8060052 (= c!1477030 (containsKey!4958 (t!391588 (toList!12005 thiss!41813)) (_1!38852 (h!82138 (toList!12005 thiss!41813)))))))

(declare-fun lt!2733000 () Unit!172804)

(assert (=> b!8060052 (= lt!2733000 e!4749973)))

(declare-fun c!1477031 () Bool)

(assert (=> b!8060052 (= c!1477031 (contains!21347 (getKeysList!1280 (t!391588 (toList!12005 thiss!41813))) (_1!38852 (h!82138 (toList!12005 thiss!41813)))))))

(declare-fun lt!2733003 () Unit!172804)

(assert (=> b!8060052 (= lt!2733003 e!4749975)))

(declare-fun lt!2733005 () List!75817)

(assert (=> b!8060052 (= lt!2733005 (getKeysList!1280 (t!391588 (toList!12005 thiss!41813))))))

(declare-fun lt!2733001 () Unit!172804)

(declare-fun lemmaForallContainsAddHeadPreserves!399 (List!75816 List!75817 tuple2!71098) Unit!172804)

(assert (=> b!8060052 (= lt!2733001 (lemmaForallContainsAddHeadPreserves!399 (t!391588 (toList!12005 thiss!41813)) lt!2733005 (h!82138 (toList!12005 thiss!41813))))))

(declare-fun forall!18558 (List!75817 Int) Bool)

(assert (=> b!8060052 (forall!18558 lt!2733005 lambda!475370)))

(declare-fun lt!2733004 () Unit!172804)

(assert (=> b!8060052 (= lt!2733004 lt!2733001)))

(declare-fun b!8060053 () Bool)

(assert (=> b!8060053 (= e!4749976 Nil!75691)))

(assert (=> b!8060054 false))

(declare-fun lt!2732999 () Unit!172804)

(declare-fun forallContained!4702 (List!75817 Int K!23076) Unit!172804)

(assert (=> b!8060054 (= lt!2732999 (forallContained!4702 (getKeysList!1280 (t!391588 (toList!12005 thiss!41813))) lambda!475369 (_1!38852 (h!82138 (toList!12005 thiss!41813)))))))

(declare-fun Unit!172808 () Unit!172804)

(assert (=> b!8060054 (= e!4749975 Unit!172808)))

(declare-fun b!8060055 () Bool)

(assert (=> b!8060055 false))

(declare-fun Unit!172809 () Unit!172804)

(assert (=> b!8060055 (= e!4749973 Unit!172809)))

(declare-fun res!3188741 () Bool)

(assert (=> b!8060056 (=> (not res!3188741) (not e!4749974))))

(assert (=> b!8060056 (= res!3188741 (forall!18558 lt!2733002 lambda!475371))))

(declare-fun b!8060048 () Bool)

(declare-fun res!3188742 () Bool)

(assert (=> b!8060048 (=> (not res!3188742) (not e!4749974))))

(declare-fun length!832 (List!75817) Int)

(declare-fun length!833 (List!75816) Int)

(assert (=> b!8060048 (= res!3188742 (= (length!832 lt!2733002) (length!833 (toList!12005 thiss!41813))))))

(declare-fun d!2399474 () Bool)

(assert (=> d!2399474 e!4749974))

(declare-fun res!3188743 () Bool)

(assert (=> d!2399474 (=> (not res!3188743) (not e!4749974))))

(declare-fun noDuplicate!3170 (List!75817) Bool)

(assert (=> d!2399474 (= res!3188743 (noDuplicate!3170 lt!2733002))))

(assert (=> d!2399474 (= lt!2733002 e!4749976)))

(declare-fun c!1477032 () Bool)

(assert (=> d!2399474 (= c!1477032 (is-Cons!75690 (toList!12005 thiss!41813)))))

(assert (=> d!2399474 (invariantList!1993 (toList!12005 thiss!41813))))

(assert (=> d!2399474 (= (getKeysList!1280 (toList!12005 thiss!41813)) lt!2733002)))

(assert (= (and d!2399474 c!1477032) b!8060052))

(assert (= (and d!2399474 (not c!1477032)) b!8060053))

(assert (= (and b!8060052 c!1477030) b!8060055))

(assert (= (and b!8060052 (not c!1477030)) b!8060051))

(assert (= (and b!8060052 c!1477031) b!8060054))

(assert (= (and b!8060052 (not c!1477031)) b!8060050))

(assert (= (and d!2399474 res!3188743) b!8060048))

(assert (= (and b!8060048 res!3188742) b!8060056))

(assert (= (and b!8060056 res!3188741) b!8060049))

(declare-fun m!8413160 () Bool)

(assert (=> b!8060052 m!8413160))

(declare-fun m!8413162 () Bool)

(assert (=> b!8060052 m!8413162))

(declare-fun m!8413164 () Bool)

(assert (=> b!8060052 m!8413164))

(assert (=> b!8060052 m!8413162))

(declare-fun m!8413166 () Bool)

(assert (=> b!8060052 m!8413166))

(declare-fun m!8413168 () Bool)

(assert (=> b!8060052 m!8413168))

(assert (=> b!8060054 m!8413162))

(assert (=> b!8060054 m!8413162))

(declare-fun m!8413170 () Bool)

(assert (=> b!8060054 m!8413170))

(declare-fun m!8413172 () Bool)

(assert (=> b!8060048 m!8413172))

(declare-fun m!8413174 () Bool)

(assert (=> b!8060048 m!8413174))

(declare-fun m!8413176 () Bool)

(assert (=> d!2399474 m!8413176))

(assert (=> d!2399474 m!8413132))

(declare-fun m!8413178 () Bool)

(assert (=> b!8060056 m!8413178))

(declare-fun m!8413180 () Bool)

(assert (=> b!8060049 m!8413180))

(declare-fun m!8413182 () Bool)

(assert (=> b!8060049 m!8413182))

(assert (=> b!8060049 m!8413182))

(declare-fun m!8413184 () Bool)

(assert (=> b!8060049 m!8413184))

(assert (=> b!8060000 d!2399474))

(declare-fun d!2399480 () Bool)

(declare-fun lt!2733006 () Bool)

(assert (=> d!2399480 (= lt!2733006 (set.member key!1573 (content!16146 (keys!30978 thiss!41813))))))

(declare-fun e!4749977 () Bool)

(assert (=> d!2399480 (= lt!2733006 e!4749977)))

(declare-fun res!3188744 () Bool)

(assert (=> d!2399480 (=> (not res!3188744) (not e!4749977))))

(assert (=> d!2399480 (= res!3188744 (is-Cons!75691 (keys!30978 thiss!41813)))))

(assert (=> d!2399480 (= (contains!21347 (keys!30978 thiss!41813) key!1573) lt!2733006)))

(declare-fun b!8060059 () Bool)

(declare-fun e!4749978 () Bool)

(assert (=> b!8060059 (= e!4749977 e!4749978)))

(declare-fun res!3188745 () Bool)

(assert (=> b!8060059 (=> res!3188745 e!4749978)))

(assert (=> b!8060059 (= res!3188745 (= (h!82139 (keys!30978 thiss!41813)) key!1573))))

(declare-fun b!8060060 () Bool)

(assert (=> b!8060060 (= e!4749978 (contains!21347 (t!391589 (keys!30978 thiss!41813)) key!1573))))

(assert (= (and d!2399480 res!3188744) b!8060059))

(assert (= (and b!8060059 (not res!3188745)) b!8060060))

(assert (=> d!2399480 m!8413124))

(declare-fun m!8413186 () Bool)

(assert (=> d!2399480 m!8413186))

(declare-fun m!8413188 () Bool)

(assert (=> d!2399480 m!8413188))

(declare-fun m!8413190 () Bool)

(assert (=> b!8060060 m!8413190))

(assert (=> b!8059998 d!2399480))

(declare-fun bs!1973610 () Bool)

(declare-fun b!8060068 () Bool)

(assert (= bs!1973610 (and b!8060068 b!8060054)))

(declare-fun lambda!475377 () Int)

(assert (=> bs!1973610 (= (= (toList!12005 thiss!41813) (t!391588 (toList!12005 thiss!41813))) (= lambda!475377 lambda!475369))))

(declare-fun bs!1973611 () Bool)

(assert (= bs!1973611 (and b!8060068 b!8060052)))

(assert (=> bs!1973611 (= (= (toList!12005 thiss!41813) (Cons!75690 (h!82138 (toList!12005 thiss!41813)) (t!391588 (toList!12005 thiss!41813)))) (= lambda!475377 lambda!475370))))

(declare-fun bs!1973612 () Bool)

(assert (= bs!1973612 (and b!8060068 b!8060056)))

(assert (=> bs!1973612 (= lambda!475377 lambda!475371)))

(assert (=> b!8060068 true))

(declare-fun bs!1973613 () Bool)

(declare-fun b!8060069 () Bool)

(assert (= bs!1973613 (and b!8060069 b!8060049)))

(declare-fun lambda!475378 () Int)

(assert (=> bs!1973613 (= lambda!475378 lambda!475372)))

(declare-fun d!2399482 () Bool)

(declare-fun e!4749981 () Bool)

(assert (=> d!2399482 e!4749981))

(declare-fun res!3188753 () Bool)

(assert (=> d!2399482 (=> (not res!3188753) (not e!4749981))))

(declare-fun lt!2733009 () List!75817)

(assert (=> d!2399482 (= res!3188753 (noDuplicate!3170 lt!2733009))))

(assert (=> d!2399482 (= lt!2733009 (getKeysList!1280 (toList!12005 thiss!41813)))))

(assert (=> d!2399482 (= (keys!30978 thiss!41813) lt!2733009)))

(declare-fun b!8060067 () Bool)

(declare-fun res!3188752 () Bool)

(assert (=> b!8060067 (=> (not res!3188752) (not e!4749981))))

(assert (=> b!8060067 (= res!3188752 (= (length!832 lt!2733009) (length!833 (toList!12005 thiss!41813))))))

(declare-fun res!3188754 () Bool)

(assert (=> b!8060068 (=> (not res!3188754) (not e!4749981))))

(assert (=> b!8060068 (= res!3188754 (forall!18558 lt!2733009 lambda!475377))))

(assert (=> b!8060069 (= e!4749981 (= (content!16146 lt!2733009) (content!16146 (map!18855 (toList!12005 thiss!41813) lambda!475378))))))

(assert (= (and d!2399482 res!3188753) b!8060067))

(assert (= (and b!8060067 res!3188752) b!8060068))

(assert (= (and b!8060068 res!3188754) b!8060069))

(declare-fun m!8413192 () Bool)

(assert (=> d!2399482 m!8413192))

(assert (=> d!2399482 m!8413120))

(declare-fun m!8413194 () Bool)

(assert (=> b!8060067 m!8413194))

(assert (=> b!8060067 m!8413174))

(declare-fun m!8413196 () Bool)

(assert (=> b!8060068 m!8413196))

(declare-fun m!8413198 () Bool)

(assert (=> b!8060069 m!8413198))

(declare-fun m!8413200 () Bool)

(assert (=> b!8060069 m!8413200))

(assert (=> b!8060069 m!8413200))

(declare-fun m!8413202 () Bool)

(assert (=> b!8060069 m!8413202))

(assert (=> b!8059998 d!2399482))

(declare-fun d!2399484 () Bool)

(declare-fun noDuplicatedKeys!529 (List!75816) Bool)

(assert (=> d!2399484 (= (invariantList!1993 (toList!12005 thiss!41813)) (noDuplicatedKeys!529 (toList!12005 thiss!41813)))))

(declare-fun bs!1973614 () Bool)

(assert (= bs!1973614 d!2399484))

(declare-fun m!8413204 () Bool)

(assert (=> bs!1973614 m!8413204))

(assert (=> b!8059999 d!2399484))

(declare-fun d!2399486 () Bool)

(declare-fun res!3188759 () Bool)

(declare-fun e!4749986 () Bool)

(assert (=> d!2399486 (=> res!3188759 e!4749986)))

(assert (=> d!2399486 (= res!3188759 (and (is-Cons!75690 (toList!12005 thiss!41813)) (= (_1!38852 (h!82138 (toList!12005 thiss!41813))) key!1573)))))

(assert (=> d!2399486 (= (containsKey!4958 (toList!12005 thiss!41813) key!1573) e!4749986)))

(declare-fun b!8060076 () Bool)

(declare-fun e!4749987 () Bool)

(assert (=> b!8060076 (= e!4749986 e!4749987)))

(declare-fun res!3188760 () Bool)

(assert (=> b!8060076 (=> (not res!3188760) (not e!4749987))))

(assert (=> b!8060076 (= res!3188760 (is-Cons!75690 (toList!12005 thiss!41813)))))

(declare-fun b!8060077 () Bool)

(assert (=> b!8060077 (= e!4749987 (containsKey!4958 (t!391588 (toList!12005 thiss!41813)) key!1573))))

(assert (= (and d!2399486 (not res!3188759)) b!8060076))

(assert (= (and b!8060076 res!3188760) b!8060077))

(declare-fun m!8413206 () Bool)

(assert (=> b!8060077 m!8413206))

(assert (=> start!759638 d!2399486))

(declare-fun d!2399488 () Bool)

(assert (=> d!2399488 (= (inv!97546 thiss!41813) (invariantList!1993 (toList!12005 thiss!41813)))))

(declare-fun bs!1973615 () Bool)

(assert (= bs!1973615 d!2399488))

(assert (=> bs!1973615 m!8413132))

(assert (=> start!759638 d!2399488))

(declare-fun e!4749990 () Bool)

(declare-fun tp_is_empty!55303 () Bool)

(declare-fun tp!2414493 () Bool)

(declare-fun b!8060082 () Bool)

(assert (=> b!8060082 (= e!4749990 (and tp_is_empty!55299 tp_is_empty!55303 tp!2414493))))

(assert (=> b!8060001 (= tp!2414487 e!4749990)))

(assert (= (and b!8060001 (is-Cons!75690 (toList!12005 thiss!41813))) b!8060082))

(push 1)

(assert (not b!8060060))

(assert (not b!8060077))

(assert (not b!8060054))

(assert (not b!8060056))

(assert tp_is_empty!55303)

(assert (not d!2399488))

(assert (not b!8060069))

(assert (not d!2399480))

(assert (not b!8060049))

(assert (not b!8060052))

(assert (not d!2399474))

(assert (not b!8060082))

(assert (not d!2399472))

(assert tp_is_empty!55299)

(assert (not b!8060067))

(assert (not b!8060048))

(assert (not b!8060068))

(assert (not d!2399482))

(assert (not b!8060019))

(assert (not d!2399484))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

