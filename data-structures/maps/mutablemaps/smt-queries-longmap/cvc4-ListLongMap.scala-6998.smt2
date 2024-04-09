; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88856 () Bool)

(assert start!88856)

(declare-fun b!1019690 () Bool)

(declare-fun res!683635 () Bool)

(declare-fun e!573920 () Bool)

(assert (=> b!1019690 (=> (not res!683635) (not e!573920))))

(declare-datatypes ((B!1698 0))(
  ( (B!1699 (val!11933 Int)) )
))
(declare-datatypes ((tuple2!15502 0))(
  ( (tuple2!15503 (_1!7761 (_ BitVec 64)) (_2!7761 B!1698)) )
))
(declare-datatypes ((List!21735 0))(
  ( (Nil!21732) (Cons!21731 (h!22929 tuple2!15502) (t!30749 List!21735)) )
))
(declare-fun l!996 () List!21735)

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!547 (List!21735 (_ BitVec 64)) Bool)

(assert (=> b!1019690 (= res!683635 (containsKey!547 l!996 key!261))))

(declare-fun res!683636 () Bool)

(assert (=> start!88856 (=> (not res!683636) (not e!573920))))

(declare-fun isStrictlySorted!682 (List!21735) Bool)

(assert (=> start!88856 (= res!683636 (isStrictlySorted!682 l!996))))

(assert (=> start!88856 e!573920))

(declare-fun e!573921 () Bool)

(assert (=> start!88856 e!573921))

(assert (=> start!88856 true))

(declare-fun tp_is_empty!23765 () Bool)

(assert (=> start!88856 tp_is_empty!23765))

(declare-fun b!1019692 () Bool)

(declare-fun e!573922 () Bool)

(declare-fun lt!449713 () List!21735)

(declare-fun length!49 (List!21735) Int)

(assert (=> b!1019692 (= e!573922 (not (= (length!49 lt!449713) (length!49 l!996))))))

(declare-fun b!1019693 () Bool)

(declare-fun tp!71177 () Bool)

(assert (=> b!1019693 (= e!573921 (and tp_is_empty!23765 tp!71177))))

(declare-fun b!1019691 () Bool)

(assert (=> b!1019691 (= e!573920 e!573922)))

(declare-fun res!683637 () Bool)

(assert (=> b!1019691 (=> (not res!683637) (not e!573922))))

(declare-fun value!172 () B!1698)

(assert (=> b!1019691 (= res!683637 (and (bvsge (_1!7761 (h!22929 l!996)) key!261) (is-Cons!21731 l!996) (= (_1!7761 (h!22929 l!996)) key!261) (= lt!449713 (Cons!21731 (tuple2!15503 key!261 value!172) (t!30749 l!996)))))))

(declare-fun insertStrictlySorted!364 (List!21735 (_ BitVec 64) B!1698) List!21735)

(assert (=> b!1019691 (= lt!449713 (insertStrictlySorted!364 l!996 key!261 value!172))))

(assert (= (and start!88856 res!683636) b!1019690))

(assert (= (and b!1019690 res!683635) b!1019691))

(assert (= (and b!1019691 res!683637) b!1019692))

(assert (= (and start!88856 (is-Cons!21731 l!996)) b!1019693))

(declare-fun m!940083 () Bool)

(assert (=> b!1019690 m!940083))

(declare-fun m!940085 () Bool)

(assert (=> start!88856 m!940085))

(declare-fun m!940087 () Bool)

(assert (=> b!1019692 m!940087))

(declare-fun m!940089 () Bool)

(assert (=> b!1019692 m!940089))

(declare-fun m!940091 () Bool)

(assert (=> b!1019691 m!940091))

(push 1)

(assert (not b!1019691))

(assert (not b!1019693))

(assert tp_is_empty!23765)

(assert (not b!1019690))

(assert (not start!88856))

(assert (not b!1019692))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122169 () Bool)

(declare-fun res!683648 () Bool)

(declare-fun e!573947 () Bool)

(assert (=> d!122169 (=> res!683648 e!573947)))

(assert (=> d!122169 (= res!683648 (or (is-Nil!21732 l!996) (is-Nil!21732 (t!30749 l!996))))))

(assert (=> d!122169 (= (isStrictlySorted!682 l!996) e!573947)))

(declare-fun b!1019732 () Bool)

(declare-fun e!573948 () Bool)

(assert (=> b!1019732 (= e!573947 e!573948)))

(declare-fun res!683649 () Bool)

(assert (=> b!1019732 (=> (not res!683649) (not e!573948))))

(assert (=> b!1019732 (= res!683649 (bvslt (_1!7761 (h!22929 l!996)) (_1!7761 (h!22929 (t!30749 l!996)))))))

(declare-fun b!1019733 () Bool)

(assert (=> b!1019733 (= e!573948 (isStrictlySorted!682 (t!30749 l!996)))))

(assert (= (and d!122169 (not res!683648)) b!1019732))

(assert (= (and b!1019732 res!683649) b!1019733))

(declare-fun m!940099 () Bool)

(assert (=> b!1019733 m!940099))

(assert (=> start!88856 d!122169))

(declare-fun d!122171 () Bool)

(declare-fun size!31150 (List!21735) Int)

(assert (=> d!122171 (= (length!49 lt!449713) (size!31150 lt!449713))))

(declare-fun bs!29705 () Bool)

(assert (= bs!29705 d!122171))

(declare-fun m!940101 () Bool)

(assert (=> bs!29705 m!940101))

(assert (=> b!1019692 d!122171))

(declare-fun d!122173 () Bool)

(assert (=> d!122173 (= (length!49 l!996) (size!31150 l!996))))

(declare-fun bs!29706 () Bool)

(assert (= bs!29706 d!122173))

(declare-fun m!940103 () Bool)

(assert (=> bs!29706 m!940103))

(assert (=> b!1019692 d!122173))

(declare-fun b!1019814 () Bool)

(declare-fun e!574002 () List!21735)

(assert (=> b!1019814 (= e!574002 (insertStrictlySorted!364 (t!30749 l!996) key!261 value!172))))

(declare-fun lt!449722 () List!21735)

(declare-fun e!573999 () Bool)

(declare-fun b!1019816 () Bool)

(declare-fun contains!5926 (List!21735 tuple2!15502) Bool)

(assert (=> b!1019816 (= e!573999 (contains!5926 lt!449722 (tuple2!15503 key!261 value!172)))))

(declare-fun b!1019817 () Bool)

(declare-fun e!574000 () List!21735)

(declare-fun e!574003 () List!21735)

(assert (=> b!1019817 (= e!574000 e!574003)))

(declare-fun c!103376 () Bool)

(assert (=> b!1019817 (= c!103376 (and (is-Cons!21731 l!996) (= (_1!7761 (h!22929 l!996)) key!261)))))

(declare-fun b!1019818 () Bool)

(declare-fun e!574001 () List!21735)

(declare-fun call!43146 () List!21735)

(assert (=> b!1019818 (= e!574001 call!43146)))

(declare-fun b!1019819 () Bool)

(declare-fun c!103375 () Bool)

(assert (=> b!1019819 (= c!103375 (and (is-Cons!21731 l!996) (bvsgt (_1!7761 (h!22929 l!996)) key!261)))))

(assert (=> b!1019819 (= e!574003 e!574001)))

(declare-fun b!1019820 () Bool)

(assert (=> b!1019820 (= e!574002 (ite c!103376 (t!30749 l!996) (ite c!103375 (Cons!21731 (h!22929 l!996) (t!30749 l!996)) Nil!21732)))))

(declare-fun b!1019821 () Bool)

(assert (=> b!1019821 (= e!574001 call!43146)))

(declare-fun c!103374 () Bool)

(declare-fun call!43147 () List!21735)

(declare-fun bm!43142 () Bool)

(declare-fun $colon$colon!597 (List!21735 tuple2!15502) List!21735)

(assert (=> bm!43142 (= call!43147 ($colon$colon!597 e!574002 (ite c!103374 (h!22929 l!996) (tuple2!15503 key!261 value!172))))))

(declare-fun c!103377 () Bool)

(assert (=> bm!43142 (= c!103377 c!103374)))

(declare-fun bm!43143 () Bool)

(declare-fun call!43145 () List!21735)

(assert (=> bm!43143 (= call!43145 call!43147)))

(declare-fun b!1019822 () Bool)

(declare-fun res!683685 () Bool)

(assert (=> b!1019822 (=> (not res!683685) (not e!573999))))

(assert (=> b!1019822 (= res!683685 (containsKey!547 lt!449722 key!261))))

(declare-fun bm!43144 () Bool)

(assert (=> bm!43144 (= call!43146 call!43145)))

(declare-fun b!1019823 () Bool)

(assert (=> b!1019823 (= e!574003 call!43145)))

(declare-fun d!122175 () Bool)

(assert (=> d!122175 e!573999))

(declare-fun res!683684 () Bool)

(assert (=> d!122175 (=> (not res!683684) (not e!573999))))

(assert (=> d!122175 (= res!683684 (isStrictlySorted!682 lt!449722))))

(assert (=> d!122175 (= lt!449722 e!574000)))

(assert (=> d!122175 (= c!103374 (and (is-Cons!21731 l!996) (bvslt (_1!7761 (h!22929 l!996)) key!261)))))

(assert (=> d!122175 (isStrictlySorted!682 l!996)))

(assert (=> d!122175 (= (insertStrictlySorted!364 l!996 key!261 value!172) lt!449722)))

(declare-fun b!1019815 () Bool)

(assert (=> b!1019815 (= e!574000 call!43147)))

(assert (= (and d!122175 c!103374) b!1019815))

(assert (= (and d!122175 (not c!103374)) b!1019817))

(assert (= (and b!1019817 c!103376) b!1019823))

(assert (= (and b!1019817 (not c!103376)) b!1019819))

(assert (= (and b!1019819 c!103375) b!1019821))

(assert (= (and b!1019819 (not c!103375)) b!1019818))

(assert (= (or b!1019821 b!1019818) bm!43144))

(assert (= (or b!1019823 bm!43144) bm!43143))

(assert (= (or b!1019815 bm!43143) bm!43142))

(assert (= (and bm!43142 c!103377) b!1019814))

(assert (= (and bm!43142 (not c!103377)) b!1019820))

(assert (= (and d!122175 res!683684) b!1019822))

(assert (= (and b!1019822 res!683685) b!1019816))

(declare-fun m!940135 () Bool)

(assert (=> b!1019816 m!940135))

(declare-fun m!940137 () Bool)

(assert (=> d!122175 m!940137))

(assert (=> d!122175 m!940085))

(declare-fun m!940139 () Bool)

(assert (=> b!1019822 m!940139))

(declare-fun m!940141 () Bool)

(assert (=> b!1019814 m!940141))

(declare-fun m!940143 () Bool)

(assert (=> bm!43142 m!940143))

(assert (=> b!1019691 d!122175))

(declare-fun d!122187 () Bool)

(declare-fun res!683690 () Bool)

(declare-fun e!574008 () Bool)

(assert (=> d!122187 (=> res!683690 e!574008)))

(assert (=> d!122187 (= res!683690 (and (is-Cons!21731 l!996) (= (_1!7761 (h!22929 l!996)) key!261)))))

(assert (=> d!122187 (= (containsKey!547 l!996 key!261) e!574008)))

(declare-fun b!1019828 () Bool)

(declare-fun e!574009 () Bool)

(assert (=> b!1019828 (= e!574008 e!574009)))

(declare-fun res!683691 () Bool)

(assert (=> b!1019828 (=> (not res!683691) (not e!574009))))

(assert (=> b!1019828 (= res!683691 (and (or (not (is-Cons!21731 l!996)) (bvsle (_1!7761 (h!22929 l!996)) key!261)) (is-Cons!21731 l!996) (bvslt (_1!7761 (h!22929 l!996)) key!261)))))

(declare-fun b!1019829 () Bool)

(assert (=> b!1019829 (= e!574009 (containsKey!547 (t!30749 l!996) key!261))))

(assert (= (and d!122187 (not res!683690)) b!1019828))

(assert (= (and b!1019828 res!683691) b!1019829))

(declare-fun m!940145 () Bool)

(assert (=> b!1019829 m!940145))

(assert (=> b!1019690 d!122187))

(declare-fun b!1019834 () Bool)

(declare-fun e!574012 () Bool)

(declare-fun tp!71186 () Bool)

(assert (=> b!1019834 (= e!574012 (and tp_is_empty!23765 tp!71186))))

(assert (=> b!1019693 (= tp!71177 e!574012)))

(assert (= (and b!1019693 (is-Cons!21731 (t!30749 l!996))) b!1019834))

(push 1)

(assert (not d!122175))

(assert (not b!1019816))

(assert (not bm!43142))

(assert (not b!1019834))

(assert tp_is_empty!23765)

(assert (not b!1019733))

(assert (not d!122173))

(assert (not d!122171))

(assert (not b!1019822))

(assert (not b!1019814))

(assert (not b!1019829))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!122225 () Bool)

(assert (=> d!122225 (= ($colon$colon!597 e!574002 (ite c!103374 (h!22929 l!996) (tuple2!15503 key!261 value!172))) (Cons!21731 (ite c!103374 (h!22929 l!996) (tuple2!15503 key!261 value!172)) e!574002))))

(assert (=> bm!43142 d!122225))

(declare-fun d!122227 () Bool)

(declare-fun lt!449741 () Bool)

(declare-fun content!495 (List!21735) (Set tuple2!15502))

(assert (=> d!122227 (= lt!449741 (member (tuple2!15503 key!261 value!172) (content!495 lt!449722)))))

(declare-fun e!574065 () Bool)

(assert (=> d!122227 (= lt!449741 e!574065)))

(declare-fun res!683729 () Bool)

(assert (=> d!122227 (=> (not res!683729) (not e!574065))))

(assert (=> d!122227 (= res!683729 (is-Cons!21731 lt!449722))))

(assert (=> d!122227 (= (contains!5926 lt!449722 (tuple2!15503 key!261 value!172)) lt!449741)))

(declare-fun b!1019905 () Bool)

(declare-fun e!574066 () Bool)

(assert (=> b!1019905 (= e!574065 e!574066)))

(declare-fun res!683728 () Bool)

(assert (=> b!1019905 (=> res!683728 e!574066)))

(assert (=> b!1019905 (= res!683728 (= (h!22929 lt!449722) (tuple2!15503 key!261 value!172)))))

(declare-fun b!1019906 () Bool)

(assert (=> b!1019906 (= e!574066 (contains!5926 (t!30749 lt!449722) (tuple2!15503 key!261 value!172)))))

(assert (= (and d!122227 res!683729) b!1019905))

(assert (= (and b!1019905 (not res!683728)) b!1019906))

(declare-fun m!940203 () Bool)

(assert (=> d!122227 m!940203))

(declare-fun m!940205 () Bool)

(assert (=> d!122227 m!940205))

(declare-fun m!940207 () Bool)

(assert (=> b!1019906 m!940207))

(assert (=> b!1019816 d!122227))

(declare-fun d!122229 () Bool)

(declare-fun res!683730 () Bool)

(declare-fun e!574067 () Bool)

(assert (=> d!122229 (=> res!683730 e!574067)))

(assert (=> d!122229 (= res!683730 (or (is-Nil!21732 lt!449722) (is-Nil!21732 (t!30749 lt!449722))))))

(assert (=> d!122229 (= (isStrictlySorted!682 lt!449722) e!574067)))

(declare-fun b!1019907 () Bool)

(declare-fun e!574068 () Bool)

(assert (=> b!1019907 (= e!574067 e!574068)))

(declare-fun res!683731 () Bool)

(assert (=> b!1019907 (=> (not res!683731) (not e!574068))))

(assert (=> b!1019907 (= res!683731 (bvslt (_1!7761 (h!22929 lt!449722)) (_1!7761 (h!22929 (t!30749 lt!449722)))))))

(declare-fun b!1019908 () Bool)

(assert (=> b!1019908 (= e!574068 (isStrictlySorted!682 (t!30749 lt!449722)))))

(assert (= (and d!122229 (not res!683730)) b!1019907))

(assert (= (and b!1019907 res!683731) b!1019908))

(declare-fun m!940209 () Bool)

(assert (=> b!1019908 m!940209))

(assert (=> d!122175 d!122229))

(assert (=> d!122175 d!122169))

(declare-fun d!122231 () Bool)

(declare-fun lt!449744 () Int)

(assert (=> d!122231 (>= lt!449744 0)))

(declare-fun e!574071 () Int)

(assert (=> d!122231 (= lt!449744 e!574071)))

(declare-fun c!103396 () Bool)

(assert (=> d!122231 (= c!103396 (is-Nil!21732 lt!449713))))

(assert (=> d!122231 (= (size!31150 lt!449713) lt!449744)))

(declare-fun b!1019913 () Bool)

(assert (=> b!1019913 (= e!574071 0)))

(declare-fun b!1019914 () Bool)

(assert (=> b!1019914 (= e!574071 (+ 1 (size!31150 (t!30749 lt!449713))))))

(assert (= (and d!122231 c!103396) b!1019913))

(assert (= (and d!122231 (not c!103396)) b!1019914))

(declare-fun m!940211 () Bool)

(assert (=> b!1019914 m!940211))

(assert (=> d!122171 d!122231))

(declare-fun d!122233 () Bool)

(declare-fun res!683732 () Bool)

(declare-fun e!574072 () Bool)

(assert (=> d!122233 (=> res!683732 e!574072)))

(assert (=> d!122233 (= res!683732 (and (is-Cons!21731 (t!30749 l!996)) (= (_1!7761 (h!22929 (t!30749 l!996))) key!261)))))

(assert (=> d!122233 (= (containsKey!547 (t!30749 l!996) key!261) e!574072)))

(declare-fun b!1019915 () Bool)

(declare-fun e!574073 () Bool)

(assert (=> b!1019915 (= e!574072 e!574073)))

(declare-fun res!683733 () Bool)

(assert (=> b!1019915 (=> (not res!683733) (not e!574073))))

(assert (=> b!1019915 (= res!683733 (and (or (not (is-Cons!21731 (t!30749 l!996))) (bvsle (_1!7761 (h!22929 (t!30749 l!996))) key!261)) (is-Cons!21731 (t!30749 l!996)) (bvslt (_1!7761 (h!22929 (t!30749 l!996))) key!261)))))

(declare-fun b!1019916 () Bool)

(assert (=> b!1019916 (= e!574073 (containsKey!547 (t!30749 (t!30749 l!996)) key!261))))

(assert (= (and d!122233 (not res!683732)) b!1019915))

(assert (= (and b!1019915 res!683733) b!1019916))

(declare-fun m!940213 () Bool)

(assert (=> b!1019916 m!940213))

(assert (=> b!1019829 d!122233))

(declare-fun e!574077 () List!21735)

(declare-fun b!1019917 () Bool)

(assert (=> b!1019917 (= e!574077 (insertStrictlySorted!364 (t!30749 (t!30749 l!996)) key!261 value!172))))

(declare-fun b!1019919 () Bool)

(declare-fun e!574074 () Bool)

(declare-fun lt!449745 () List!21735)

(assert (=> b!1019919 (= e!574074 (contains!5926 lt!449745 (tuple2!15503 key!261 value!172)))))

(declare-fun b!1019920 () Bool)

(declare-fun e!574075 () List!21735)

(declare-fun e!574078 () List!21735)

(assert (=> b!1019920 (= e!574075 e!574078)))

(declare-fun c!103399 () Bool)

(assert (=> b!1019920 (= c!103399 (and (is-Cons!21731 (t!30749 l!996)) (= (_1!7761 (h!22929 (t!30749 l!996))) key!261)))))

(declare-fun b!1019921 () Bool)

(declare-fun e!574076 () List!21735)

(declare-fun call!43155 () List!21735)

(assert (=> b!1019921 (= e!574076 call!43155)))

(declare-fun b!1019922 () Bool)

(declare-fun c!103398 () Bool)

(assert (=> b!1019922 (= c!103398 (and (is-Cons!21731 (t!30749 l!996)) (bvsgt (_1!7761 (h!22929 (t!30749 l!996))) key!261)))))

(assert (=> b!1019922 (= e!574078 e!574076)))

(declare-fun b!1019923 () Bool)

(assert (=> b!1019923 (= e!574077 (ite c!103399 (t!30749 (t!30749 l!996)) (ite c!103398 (Cons!21731 (h!22929 (t!30749 l!996)) (t!30749 (t!30749 l!996))) Nil!21732)))))

(declare-fun b!1019924 () Bool)

(assert (=> b!1019924 (= e!574076 call!43155)))

(declare-fun call!43156 () List!21735)

(declare-fun c!103397 () Bool)

(declare-fun bm!43151 () Bool)

(assert (=> bm!43151 (= call!43156 ($colon$colon!597 e!574077 (ite c!103397 (h!22929 (t!30749 l!996)) (tuple2!15503 key!261 value!172))))))

(declare-fun c!103400 () Bool)

(assert (=> bm!43151 (= c!103400 c!103397)))

(declare-fun bm!43152 () Bool)

(declare-fun call!43154 () List!21735)

(assert (=> bm!43152 (= call!43154 call!43156)))

(declare-fun b!1019925 () Bool)

(declare-fun res!683735 () Bool)

(assert (=> b!1019925 (=> (not res!683735) (not e!574074))))

(assert (=> b!1019925 (= res!683735 (containsKey!547 lt!449745 key!261))))

(declare-fun bm!43153 () Bool)

(assert (=> bm!43153 (= call!43155 call!43154)))

(declare-fun b!1019926 () Bool)

(assert (=> b!1019926 (= e!574078 call!43154)))

(declare-fun d!122235 () Bool)

(assert (=> d!122235 e!574074))

(declare-fun res!683734 () Bool)

(assert (=> d!122235 (=> (not res!683734) (not e!574074))))

(assert (=> d!122235 (= res!683734 (isStrictlySorted!682 lt!449745))))

(assert (=> d!122235 (= lt!449745 e!574075)))

(assert (=> d!122235 (= c!103397 (and (is-Cons!21731 (t!30749 l!996)) (bvslt (_1!7761 (h!22929 (t!30749 l!996))) key!261)))))

(assert (=> d!122235 (isStrictlySorted!682 (t!30749 l!996))))

(assert (=> d!122235 (= (insertStrictlySorted!364 (t!30749 l!996) key!261 value!172) lt!449745)))

(declare-fun b!1019918 () Bool)

(assert (=> b!1019918 (= e!574075 call!43156)))

(assert (= (and d!122235 c!103397) b!1019918))

(assert (= (and d!122235 (not c!103397)) b!1019920))

(assert (= (and b!1019920 c!103399) b!1019926))

(assert (= (and b!1019920 (not c!103399)) b!1019922))

(assert (= (and b!1019922 c!103398) b!1019924))

(assert (= (and b!1019922 (not c!103398)) b!1019921))

(assert (= (or b!1019924 b!1019921) bm!43153))

(assert (= (or b!1019926 bm!43153) bm!43152))

(assert (= (or b!1019918 bm!43152) bm!43151))

(assert (= (and bm!43151 c!103400) b!1019917))

(assert (= (and bm!43151 (not c!103400)) b!1019923))

(assert (= (and d!122235 res!683734) b!1019925))

(assert (= (and b!1019925 res!683735) b!1019919))

(declare-fun m!940215 () Bool)

(assert (=> b!1019919 m!940215))

(declare-fun m!940217 () Bool)

(assert (=> d!122235 m!940217))

(assert (=> d!122235 m!940099))

(declare-fun m!940219 () Bool)

(assert (=> b!1019925 m!940219))

(declare-fun m!940221 () Bool)

(assert (=> b!1019917 m!940221))

(declare-fun m!940223 () Bool)

(assert (=> bm!43151 m!940223))

(assert (=> b!1019814 d!122235))

(declare-fun d!122237 () Bool)

(declare-fun lt!449746 () Int)

(assert (=> d!122237 (>= lt!449746 0)))

(declare-fun e!574079 () Int)

(assert (=> d!122237 (= lt!449746 e!574079)))

(declare-fun c!103401 () Bool)

(assert (=> d!122237 (= c!103401 (is-Nil!21732 l!996))))

(assert (=> d!122237 (= (size!31150 l!996) lt!449746)))

(declare-fun b!1019927 () Bool)

(assert (=> b!1019927 (= e!574079 0)))

(declare-fun b!1019928 () Bool)

(assert (=> b!1019928 (= e!574079 (+ 1 (size!31150 (t!30749 l!996))))))

(assert (= (and d!122237 c!103401) b!1019927))

(assert (= (and d!122237 (not c!103401)) b!1019928))

(declare-fun m!940225 () Bool)

(assert (=> b!1019928 m!940225))

(assert (=> d!122173 d!122237))

(declare-fun d!122239 () Bool)

