; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132986 () Bool)

(assert start!132986)

(declare-fun b!1556665 () Bool)

(declare-fun e!867081 () Bool)

(declare-fun tp_is_empty!38369 () Bool)

(declare-fun tp!112453 () Bool)

(assert (=> b!1556665 (= e!867081 (and tp_is_empty!38369 tp!112453))))

(declare-fun res!1064976 () Bool)

(declare-fun e!867080 () Bool)

(assert (=> start!132986 (=> (not res!1064976) (not e!867080))))

(declare-datatypes ((B!2358 0))(
  ( (B!2359 (val!19265 Int)) )
))
(declare-datatypes ((tuple2!25046 0))(
  ( (tuple2!25047 (_1!12533 (_ BitVec 64)) (_2!12533 B!2358)) )
))
(declare-datatypes ((List!36445 0))(
  ( (Nil!36442) (Cons!36441 (h!37888 tuple2!25046) (t!51176 List!36445)) )
))
(declare-fun l!1177 () List!36445)

(declare-fun isStrictlySorted!949 (List!36445) Bool)

(assert (=> start!132986 (= res!1064976 (isStrictlySorted!949 l!1177))))

(assert (=> start!132986 e!867080))

(assert (=> start!132986 e!867081))

(assert (=> start!132986 true))

(assert (=> start!132986 tp_is_empty!38369))

(declare-fun e!867079 () Bool)

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-fun lt!670385 () List!36445)

(declare-fun b!1556664 () Bool)

(declare-datatypes ((Option!857 0))(
  ( (Some!856 (v!22040 B!2358)) (None!855) )
))
(declare-fun getValueByKey!782 (List!36445 (_ BitVec 64)) Option!857)

(assert (=> b!1556664 (= e!867079 (not (= (getValueByKey!782 lt!670385 otherKey!50) (getValueByKey!782 l!1177 otherKey!50))))))

(declare-fun b!1556663 () Bool)

(assert (=> b!1556663 (= e!867080 e!867079)))

(declare-fun res!1064974 () Bool)

(assert (=> b!1556663 (=> res!1064974 e!867079)))

(declare-fun containsKey!812 (List!36445 (_ BitVec 64)) Bool)

(assert (=> b!1556663 (= res!1064974 (not (= (containsKey!812 lt!670385 otherKey!50) (containsKey!812 l!1177 otherKey!50))))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun newValue!105 () B!2358)

(declare-fun insertStrictlySorted!554 (List!36445 (_ BitVec 64) B!2358) List!36445)

(assert (=> b!1556663 (= lt!670385 (insertStrictlySorted!554 l!1177 newKey!105 newValue!105))))

(declare-fun b!1556662 () Bool)

(declare-fun res!1064975 () Bool)

(assert (=> b!1556662 (=> (not res!1064975) (not e!867080))))

(assert (=> b!1556662 (= res!1064975 (and (not (= newKey!105 otherKey!50)) (or (not (is-Cons!36441 l!1177)) (= (_1!12533 (h!37888 l!1177)) otherKey!50))))))

(assert (= (and start!132986 res!1064976) b!1556662))

(assert (= (and b!1556662 res!1064975) b!1556663))

(assert (= (and b!1556663 (not res!1064974)) b!1556664))

(assert (= (and start!132986 (is-Cons!36441 l!1177)) b!1556665))

(declare-fun m!1434111 () Bool)

(assert (=> start!132986 m!1434111))

(declare-fun m!1434113 () Bool)

(assert (=> b!1556664 m!1434113))

(declare-fun m!1434115 () Bool)

(assert (=> b!1556664 m!1434115))

(declare-fun m!1434117 () Bool)

(assert (=> b!1556663 m!1434117))

(declare-fun m!1434119 () Bool)

(assert (=> b!1556663 m!1434119))

(declare-fun m!1434121 () Bool)

(assert (=> b!1556663 m!1434121))

(push 1)

(assert (not start!132986))

(assert (not b!1556664))

(assert (not b!1556665))

(assert (not b!1556663))

(assert tp_is_empty!38369)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162217 () Bool)

(declare-fun res!1064993 () Bool)

(declare-fun e!867098 () Bool)

(assert (=> d!162217 (=> res!1064993 e!867098)))

(assert (=> d!162217 (= res!1064993 (or (is-Nil!36442 l!1177) (is-Nil!36442 (t!51176 l!1177))))))

(assert (=> d!162217 (= (isStrictlySorted!949 l!1177) e!867098)))

(declare-fun b!1556682 () Bool)

(declare-fun e!867099 () Bool)

(assert (=> b!1556682 (= e!867098 e!867099)))

(declare-fun res!1064994 () Bool)

(assert (=> b!1556682 (=> (not res!1064994) (not e!867099))))

(assert (=> b!1556682 (= res!1064994 (bvslt (_1!12533 (h!37888 l!1177)) (_1!12533 (h!37888 (t!51176 l!1177)))))))

(declare-fun b!1556683 () Bool)

(assert (=> b!1556683 (= e!867099 (isStrictlySorted!949 (t!51176 l!1177)))))

(assert (= (and d!162217 (not res!1064993)) b!1556682))

(assert (= (and b!1556682 res!1064994) b!1556683))

(declare-fun m!1434127 () Bool)

(assert (=> b!1556683 m!1434127))

(assert (=> start!132986 d!162217))

(declare-fun d!162225 () Bool)

(declare-fun c!143789 () Bool)

(assert (=> d!162225 (= c!143789 (and (is-Cons!36441 lt!670385) (= (_1!12533 (h!37888 lt!670385)) otherKey!50)))))

(declare-fun e!867110 () Option!857)

(assert (=> d!162225 (= (getValueByKey!782 lt!670385 otherKey!50) e!867110)))

(declare-fun b!1556702 () Bool)

(assert (=> b!1556702 (= e!867110 (Some!856 (_2!12533 (h!37888 lt!670385))))))

(declare-fun b!1556704 () Bool)

(declare-fun e!867111 () Option!857)

(assert (=> b!1556704 (= e!867111 (getValueByKey!782 (t!51176 lt!670385) otherKey!50))))

(declare-fun b!1556703 () Bool)

(assert (=> b!1556703 (= e!867110 e!867111)))

(declare-fun c!143790 () Bool)

(assert (=> b!1556703 (= c!143790 (and (is-Cons!36441 lt!670385) (not (= (_1!12533 (h!37888 lt!670385)) otherKey!50))))))

(declare-fun b!1556705 () Bool)

(assert (=> b!1556705 (= e!867111 None!855)))

(assert (= (and d!162225 c!143789) b!1556702))

(assert (= (and d!162225 (not c!143789)) b!1556703))

(assert (= (and b!1556703 c!143790) b!1556704))

(assert (= (and b!1556703 (not c!143790)) b!1556705))

(declare-fun m!1434131 () Bool)

(assert (=> b!1556704 m!1434131))

(assert (=> b!1556664 d!162225))

(declare-fun d!162229 () Bool)

(declare-fun c!143791 () Bool)

(assert (=> d!162229 (= c!143791 (and (is-Cons!36441 l!1177) (= (_1!12533 (h!37888 l!1177)) otherKey!50)))))

(declare-fun e!867112 () Option!857)

(assert (=> d!162229 (= (getValueByKey!782 l!1177 otherKey!50) e!867112)))

(declare-fun b!1556706 () Bool)

(assert (=> b!1556706 (= e!867112 (Some!856 (_2!12533 (h!37888 l!1177))))))

(declare-fun b!1556708 () Bool)

(declare-fun e!867113 () Option!857)

(assert (=> b!1556708 (= e!867113 (getValueByKey!782 (t!51176 l!1177) otherKey!50))))

(declare-fun b!1556707 () Bool)

(assert (=> b!1556707 (= e!867112 e!867113)))

(declare-fun c!143792 () Bool)

(assert (=> b!1556707 (= c!143792 (and (is-Cons!36441 l!1177) (not (= (_1!12533 (h!37888 l!1177)) otherKey!50))))))

(declare-fun b!1556709 () Bool)

(assert (=> b!1556709 (= e!867113 None!855)))

(assert (= (and d!162229 c!143791) b!1556706))

(assert (= (and d!162229 (not c!143791)) b!1556707))

(assert (= (and b!1556707 c!143792) b!1556708))

(assert (= (and b!1556707 (not c!143792)) b!1556709))

(declare-fun m!1434133 () Bool)

(assert (=> b!1556708 m!1434133))

(assert (=> b!1556664 d!162229))

(declare-fun d!162231 () Bool)

(declare-fun res!1065005 () Bool)

(declare-fun e!867132 () Bool)

(assert (=> d!162231 (=> res!1065005 e!867132)))

(assert (=> d!162231 (= res!1065005 (and (is-Cons!36441 lt!670385) (= (_1!12533 (h!37888 lt!670385)) otherKey!50)))))

(assert (=> d!162231 (= (containsKey!812 lt!670385 otherKey!50) e!867132)))

(declare-fun b!1556738 () Bool)

(declare-fun e!867133 () Bool)

(assert (=> b!1556738 (= e!867132 e!867133)))

(declare-fun res!1065006 () Bool)

(assert (=> b!1556738 (=> (not res!1065006) (not e!867133))))

(assert (=> b!1556738 (= res!1065006 (and (or (not (is-Cons!36441 lt!670385)) (bvsle (_1!12533 (h!37888 lt!670385)) otherKey!50)) (is-Cons!36441 lt!670385) (bvslt (_1!12533 (h!37888 lt!670385)) otherKey!50)))))

(declare-fun b!1556739 () Bool)

(assert (=> b!1556739 (= e!867133 (containsKey!812 (t!51176 lt!670385) otherKey!50))))

(assert (= (and d!162231 (not res!1065005)) b!1556738))

(assert (= (and b!1556738 res!1065006) b!1556739))

(declare-fun m!1434139 () Bool)

(assert (=> b!1556739 m!1434139))

(assert (=> b!1556663 d!162231))

(declare-fun d!162237 () Bool)

(declare-fun res!1065007 () Bool)

(declare-fun e!867134 () Bool)

(assert (=> d!162237 (=> res!1065007 e!867134)))

(assert (=> d!162237 (= res!1065007 (and (is-Cons!36441 l!1177) (= (_1!12533 (h!37888 l!1177)) otherKey!50)))))

(assert (=> d!162237 (= (containsKey!812 l!1177 otherKey!50) e!867134)))

(declare-fun b!1556740 () Bool)

(declare-fun e!867135 () Bool)

(assert (=> b!1556740 (= e!867134 e!867135)))

(declare-fun res!1065008 () Bool)

(assert (=> b!1556740 (=> (not res!1065008) (not e!867135))))

(assert (=> b!1556740 (= res!1065008 (and (or (not (is-Cons!36441 l!1177)) (bvsle (_1!12533 (h!37888 l!1177)) otherKey!50)) (is-Cons!36441 l!1177) (bvslt (_1!12533 (h!37888 l!1177)) otherKey!50)))))

(declare-fun b!1556741 () Bool)

(assert (=> b!1556741 (= e!867135 (containsKey!812 (t!51176 l!1177) otherKey!50))))

(assert (= (and d!162237 (not res!1065007)) b!1556740))

(assert (= (and b!1556740 res!1065008) b!1556741))

(declare-fun m!1434141 () Bool)

(assert (=> b!1556741 m!1434141))

(assert (=> b!1556663 d!162237))

(declare-fun b!1556831 () Bool)

(declare-fun e!867190 () List!36445)

(declare-fun e!867188 () List!36445)

(assert (=> b!1556831 (= e!867190 e!867188)))

(declare-fun c!143835 () Bool)

(assert (=> b!1556831 (= c!143835 (and (is-Cons!36441 l!1177) (= (_1!12533 (h!37888 l!1177)) newKey!105)))))

(declare-fun b!1556832 () Bool)

(declare-fun call!71646 () List!36445)

(assert (=> b!1556832 (= e!867190 call!71646)))

(declare-fun b!1556833 () Bool)

(declare-fun e!867187 () List!36445)

(declare-fun call!71645 () List!36445)

(assert (=> b!1556833 (= e!867187 call!71645)))

(declare-fun b!1556835 () Bool)

(declare-fun call!71644 () List!36445)

(assert (=> b!1556835 (= e!867188 call!71644)))

(declare-fun bm!71641 () Bool)

(assert (=> bm!71641 (= call!71645 call!71644)))

(declare-fun b!1556836 () Bool)

(declare-fun e!867189 () List!36445)

(assert (=> b!1556836 (= e!867189 (insertStrictlySorted!554 (t!51176 l!1177) newKey!105 newValue!105))))

(declare-fun b!1556837 () Bool)

(declare-fun res!1065034 () Bool)

(declare-fun e!867186 () Bool)

(assert (=> b!1556837 (=> (not res!1065034) (not e!867186))))

(declare-fun lt!670393 () List!36445)

(assert (=> b!1556837 (= res!1065034 (containsKey!812 lt!670393 newKey!105))))

(declare-fun bm!71642 () Bool)

(declare-fun c!143833 () Bool)

(declare-fun $colon$colon!973 (List!36445 tuple2!25046) List!36445)

(assert (=> bm!71642 (= call!71646 ($colon$colon!973 e!867189 (ite c!143833 (h!37888 l!1177) (tuple2!25047 newKey!105 newValue!105))))))

(declare-fun c!143836 () Bool)

(assert (=> bm!71642 (= c!143836 c!143833)))

(declare-fun b!1556838 () Bool)

(declare-fun contains!10194 (List!36445 tuple2!25046) Bool)

(assert (=> b!1556838 (= e!867186 (contains!10194 lt!670393 (tuple2!25047 newKey!105 newValue!105)))))

(declare-fun b!1556839 () Bool)

(declare-fun c!143834 () Bool)

(assert (=> b!1556839 (= c!143834 (and (is-Cons!36441 l!1177) (bvsgt (_1!12533 (h!37888 l!1177)) newKey!105)))))

(assert (=> b!1556839 (= e!867188 e!867187)))

(declare-fun d!162239 () Bool)

(assert (=> d!162239 e!867186))

(declare-fun res!1065033 () Bool)

(assert (=> d!162239 (=> (not res!1065033) (not e!867186))))

(assert (=> d!162239 (= res!1065033 (isStrictlySorted!949 lt!670393))))

(assert (=> d!162239 (= lt!670393 e!867190)))

(assert (=> d!162239 (= c!143833 (and (is-Cons!36441 l!1177) (bvslt (_1!12533 (h!37888 l!1177)) newKey!105)))))

(assert (=> d!162239 (isStrictlySorted!949 l!1177)))

(assert (=> d!162239 (= (insertStrictlySorted!554 l!1177 newKey!105 newValue!105) lt!670393)))

(declare-fun b!1556834 () Bool)

(assert (=> b!1556834 (= e!867189 (ite c!143835 (t!51176 l!1177) (ite c!143834 (Cons!36441 (h!37888 l!1177) (t!51176 l!1177)) Nil!36442)))))

(declare-fun b!1556840 () Bool)

(assert (=> b!1556840 (= e!867187 call!71645)))

(declare-fun bm!71643 () Bool)

(assert (=> bm!71643 (= call!71644 call!71646)))

(assert (= (and d!162239 c!143833) b!1556832))

(assert (= (and d!162239 (not c!143833)) b!1556831))

(assert (= (and b!1556831 c!143835) b!1556835))

(assert (= (and b!1556831 (not c!143835)) b!1556839))

(assert (= (and b!1556839 c!143834) b!1556833))

(assert (= (and b!1556839 (not c!143834)) b!1556840))

(assert (= (or b!1556833 b!1556840) bm!71641))

(assert (= (or b!1556835 bm!71641) bm!71643))

(assert (= (or b!1556832 bm!71643) bm!71642))

(assert (= (and bm!71642 c!143836) b!1556836))

(assert (= (and bm!71642 (not c!143836)) b!1556834))

(assert (= (and d!162239 res!1065033) b!1556837))

(assert (= (and b!1556837 res!1065034) b!1556838))

(declare-fun m!1434163 () Bool)

(assert (=> b!1556838 m!1434163))

(declare-fun m!1434165 () Bool)

(assert (=> b!1556836 m!1434165))

(declare-fun m!1434167 () Bool)

(assert (=> bm!71642 m!1434167))

(declare-fun m!1434169 () Bool)

(assert (=> d!162239 m!1434169))

(assert (=> d!162239 m!1434111))

(declare-fun m!1434171 () Bool)

(assert (=> b!1556837 m!1434171))

(assert (=> b!1556663 d!162239))

(declare-fun b!1556855 () Bool)

(declare-fun e!867198 () Bool)

(declare-fun tp!112459 () Bool)

(assert (=> b!1556855 (= e!867198 (and tp_is_empty!38369 tp!112459))))

(assert (=> b!1556665 (= tp!112453 e!867198)))

(assert (= (and b!1556665 (is-Cons!36441 (t!51176 l!1177))) b!1556855))

(push 1)

(assert (not b!1556837))

(assert (not b!1556855))

(assert (not b!1556741))

(assert (not b!1556836))

(assert tp_is_empty!38369)

(assert (not b!1556739))

(assert (not b!1556838))

(assert (not bm!71642))

(assert (not b!1556683))

(assert (not b!1556708))

(assert (not d!162239))

(assert (not b!1556704))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162291 () Bool)

(declare-fun lt!670405 () Bool)

(declare-fun content!804 (List!36445) (Set tuple2!25046))

(assert (=> d!162291 (= lt!670405 (member (tuple2!25047 newKey!105 newValue!105) (content!804 lt!670393)))))

(declare-fun e!867258 () Bool)

(assert (=> d!162291 (= lt!670405 e!867258)))

(declare-fun res!1065078 () Bool)

(assert (=> d!162291 (=> (not res!1065078) (not e!867258))))

(assert (=> d!162291 (= res!1065078 (is-Cons!36441 lt!670393))))

(assert (=> d!162291 (= (contains!10194 lt!670393 (tuple2!25047 newKey!105 newValue!105)) lt!670405)))

(declare-fun b!1556935 () Bool)

(declare-fun e!867259 () Bool)

(assert (=> b!1556935 (= e!867258 e!867259)))

(declare-fun res!1065077 () Bool)

(assert (=> b!1556935 (=> res!1065077 e!867259)))

(assert (=> b!1556935 (= res!1065077 (= (h!37888 lt!670393) (tuple2!25047 newKey!105 newValue!105)))))

(declare-fun b!1556936 () Bool)

(assert (=> b!1556936 (= e!867259 (contains!10194 (t!51176 lt!670393) (tuple2!25047 newKey!105 newValue!105)))))

(assert (= (and d!162291 res!1065078) b!1556935))

(assert (= (and b!1556935 (not res!1065077)) b!1556936))

(declare-fun m!1434243 () Bool)

(assert (=> d!162291 m!1434243))

(declare-fun m!1434245 () Bool)

(assert (=> d!162291 m!1434245))

(declare-fun m!1434247 () Bool)

(assert (=> b!1556936 m!1434247))

(assert (=> b!1556838 d!162291))

(declare-fun d!162293 () Bool)

(declare-fun c!143857 () Bool)

(assert (=> d!162293 (= c!143857 (and (is-Cons!36441 (t!51176 lt!670385)) (= (_1!12533 (h!37888 (t!51176 lt!670385))) otherKey!50)))))

(declare-fun e!867260 () Option!857)

(assert (=> d!162293 (= (getValueByKey!782 (t!51176 lt!670385) otherKey!50) e!867260)))

(declare-fun b!1556937 () Bool)

(assert (=> b!1556937 (= e!867260 (Some!856 (_2!12533 (h!37888 (t!51176 lt!670385)))))))

(declare-fun b!1556939 () Bool)

(declare-fun e!867261 () Option!857)

(assert (=> b!1556939 (= e!867261 (getValueByKey!782 (t!51176 (t!51176 lt!670385)) otherKey!50))))

(declare-fun b!1556938 () Bool)

(assert (=> b!1556938 (= e!867260 e!867261)))

(declare-fun c!143858 () Bool)

(assert (=> b!1556938 (= c!143858 (and (is-Cons!36441 (t!51176 lt!670385)) (not (= (_1!12533 (h!37888 (t!51176 lt!670385))) otherKey!50))))))

(declare-fun b!1556940 () Bool)

(assert (=> b!1556940 (= e!867261 None!855)))

(assert (= (and d!162293 c!143857) b!1556937))

(assert (= (and d!162293 (not c!143857)) b!1556938))

(assert (= (and b!1556938 c!143858) b!1556939))

(assert (= (and b!1556938 (not c!143858)) b!1556940))

(declare-fun m!1434249 () Bool)

(assert (=> b!1556939 m!1434249))

(assert (=> b!1556704 d!162293))

(declare-fun d!162295 () Bool)

(declare-fun res!1065079 () Bool)

(declare-fun e!867262 () Bool)

(assert (=> d!162295 (=> res!1065079 e!867262)))

(assert (=> d!162295 (= res!1065079 (and (is-Cons!36441 (t!51176 l!1177)) (= (_1!12533 (h!37888 (t!51176 l!1177))) otherKey!50)))))

(assert (=> d!162295 (= (containsKey!812 (t!51176 l!1177) otherKey!50) e!867262)))

(declare-fun b!1556941 () Bool)

(declare-fun e!867263 () Bool)

(assert (=> b!1556941 (= e!867262 e!867263)))

(declare-fun res!1065080 () Bool)

(assert (=> b!1556941 (=> (not res!1065080) (not e!867263))))

(assert (=> b!1556941 (= res!1065080 (and (or (not (is-Cons!36441 (t!51176 l!1177))) (bvsle (_1!12533 (h!37888 (t!51176 l!1177))) otherKey!50)) (is-Cons!36441 (t!51176 l!1177)) (bvslt (_1!12533 (h!37888 (t!51176 l!1177))) otherKey!50)))))

(declare-fun b!1556942 () Bool)

(assert (=> b!1556942 (= e!867263 (containsKey!812 (t!51176 (t!51176 l!1177)) otherKey!50))))

(assert (= (and d!162295 (not res!1065079)) b!1556941))

(assert (= (and b!1556941 res!1065080) b!1556942))

(declare-fun m!1434251 () Bool)

(assert (=> b!1556942 m!1434251))

(assert (=> b!1556741 d!162295))

(declare-fun d!162297 () Bool)

(assert (=> d!162297 (= ($colon$colon!973 e!867189 (ite c!143833 (h!37888 l!1177) (tuple2!25047 newKey!105 newValue!105))) (Cons!36441 (ite c!143833 (h!37888 l!1177) (tuple2!25047 newKey!105 newValue!105)) e!867189))))

(assert (=> bm!71642 d!162297))

(declare-fun d!162299 () Bool)

(declare-fun res!1065081 () Bool)

(declare-fun e!867264 () Bool)

(assert (=> d!162299 (=> res!1065081 e!867264)))

(assert (=> d!162299 (= res!1065081 (and (is-Cons!36441 lt!670393) (= (_1!12533 (h!37888 lt!670393)) newKey!105)))))

(assert (=> d!162299 (= (containsKey!812 lt!670393 newKey!105) e!867264)))

(declare-fun b!1556943 () Bool)

(declare-fun e!867265 () Bool)

(assert (=> b!1556943 (= e!867264 e!867265)))

(declare-fun res!1065082 () Bool)

(assert (=> b!1556943 (=> (not res!1065082) (not e!867265))))

(assert (=> b!1556943 (= res!1065082 (and (or (not (is-Cons!36441 lt!670393)) (bvsle (_1!12533 (h!37888 lt!670393)) newKey!105)) (is-Cons!36441 lt!670393) (bvslt (_1!12533 (h!37888 lt!670393)) newKey!105)))))

(declare-fun b!1556944 () Bool)

(assert (=> b!1556944 (= e!867265 (containsKey!812 (t!51176 lt!670393) newKey!105))))

(assert (= (and d!162299 (not res!1065081)) b!1556943))

(assert (= (and b!1556943 res!1065082) b!1556944))

(declare-fun m!1434253 () Bool)

(assert (=> b!1556944 m!1434253))

(assert (=> b!1556837 d!162299))

(declare-fun d!162301 () Bool)

(declare-fun res!1065083 () Bool)

(declare-fun e!867266 () Bool)

(assert (=> d!162301 (=> res!1065083 e!867266)))

(assert (=> d!162301 (= res!1065083 (or (is-Nil!36442 (t!51176 l!1177)) (is-Nil!36442 (t!51176 (t!51176 l!1177)))))))

(assert (=> d!162301 (= (isStrictlySorted!949 (t!51176 l!1177)) e!867266)))

(declare-fun b!1556945 () Bool)

(declare-fun e!867267 () Bool)

(assert (=> b!1556945 (= e!867266 e!867267)))

(declare-fun res!1065084 () Bool)

(assert (=> b!1556945 (=> (not res!1065084) (not e!867267))))

(assert (=> b!1556945 (= res!1065084 (bvslt (_1!12533 (h!37888 (t!51176 l!1177))) (_1!12533 (h!37888 (t!51176 (t!51176 l!1177))))))))

(declare-fun b!1556946 () Bool)

(assert (=> b!1556946 (= e!867267 (isStrictlySorted!949 (t!51176 (t!51176 l!1177))))))

(assert (= (and d!162301 (not res!1065083)) b!1556945))

(assert (= (and b!1556945 res!1065084) b!1556946))

(declare-fun m!1434255 () Bool)

(assert (=> b!1556946 m!1434255))

(assert (=> b!1556683 d!162301))

(declare-fun b!1556947 () Bool)

(declare-fun e!867272 () List!36445)

(declare-fun e!867270 () List!36445)

(assert (=> b!1556947 (= e!867272 e!867270)))

(declare-fun c!143861 () Bool)

(assert (=> b!1556947 (= c!143861 (and (is-Cons!36441 (t!51176 l!1177)) (= (_1!12533 (h!37888 (t!51176 l!1177))) newKey!105)))))

(declare-fun b!1556948 () Bool)

(declare-fun call!71658 () List!36445)

(assert (=> b!1556948 (= e!867272 call!71658)))

(declare-fun b!1556949 () Bool)

(declare-fun e!867269 () List!36445)

(declare-fun call!71657 () List!36445)

(assert (=> b!1556949 (= e!867269 call!71657)))

(declare-fun b!1556951 () Bool)

(declare-fun call!71656 () List!36445)

(assert (=> b!1556951 (= e!867270 call!71656)))

(declare-fun bm!71653 () Bool)

(assert (=> bm!71653 (= call!71657 call!71656)))

(declare-fun b!1556952 () Bool)

(declare-fun e!867271 () List!36445)

(assert (=> b!1556952 (= e!867271 (insertStrictlySorted!554 (t!51176 (t!51176 l!1177)) newKey!105 newValue!105))))

(declare-fun b!1556953 () Bool)

(declare-fun res!1065086 () Bool)

(declare-fun e!867268 () Bool)

(assert (=> b!1556953 (=> (not res!1065086) (not e!867268))))

(declare-fun lt!670406 () List!36445)

(assert (=> b!1556953 (= res!1065086 (containsKey!812 lt!670406 newKey!105))))

(declare-fun c!143859 () Bool)

(declare-fun bm!71654 () Bool)

(assert (=> bm!71654 (= call!71658 ($colon$colon!973 e!867271 (ite c!143859 (h!37888 (t!51176 l!1177)) (tuple2!25047 newKey!105 newValue!105))))))

(declare-fun c!143862 () Bool)

(assert (=> bm!71654 (= c!143862 c!143859)))

(declare-fun b!1556954 () Bool)

(assert (=> b!1556954 (= e!867268 (contains!10194 lt!670406 (tuple2!25047 newKey!105 newValue!105)))))

(declare-fun b!1556955 () Bool)

(declare-fun c!143860 () Bool)

(assert (=> b!1556955 (= c!143860 (and (is-Cons!36441 (t!51176 l!1177)) (bvsgt (_1!12533 (h!37888 (t!51176 l!1177))) newKey!105)))))

(assert (=> b!1556955 (= e!867270 e!867269)))

(declare-fun d!162303 () Bool)

(assert (=> d!162303 e!867268))

(declare-fun res!1065085 () Bool)

(assert (=> d!162303 (=> (not res!1065085) (not e!867268))))

(assert (=> d!162303 (= res!1065085 (isStrictlySorted!949 lt!670406))))

(assert (=> d!162303 (= lt!670406 e!867272)))

(assert (=> d!162303 (= c!143859 (and (is-Cons!36441 (t!51176 l!1177)) (bvslt (_1!12533 (h!37888 (t!51176 l!1177))) newKey!105)))))

(assert (=> d!162303 (isStrictlySorted!949 (t!51176 l!1177))))

(assert (=> d!162303 (= (insertStrictlySorted!554 (t!51176 l!1177) newKey!105 newValue!105) lt!670406)))

(declare-fun b!1556950 () Bool)

(assert (=> b!1556950 (= e!867271 (ite c!143861 (t!51176 (t!51176 l!1177)) (ite c!143860 (Cons!36441 (h!37888 (t!51176 l!1177)) (t!51176 (t!51176 l!1177))) Nil!36442)))))

(declare-fun b!1556956 () Bool)

(assert (=> b!1556956 (= e!867269 call!71657)))

(declare-fun bm!71655 () Bool)

(assert (=> bm!71655 (= call!71656 call!71658)))

(assert (= (and d!162303 c!143859) b!1556948))

(assert (= (and d!162303 (not c!143859)) b!1556947))

(assert (= (and b!1556947 c!143861) b!1556951))

(assert (= (and b!1556947 (not c!143861)) b!1556955))

(assert (= (and b!1556955 c!143860) b!1556949))

(assert (= (and b!1556955 (not c!143860)) b!1556956))

(assert (= (or b!1556949 b!1556956) bm!71653))

(assert (= (or b!1556951 bm!71653) bm!71655))

(assert (= (or b!1556948 bm!71655) bm!71654))

(assert (= (and bm!71654 c!143862) b!1556952))

(assert (= (and bm!71654 (not c!143862)) b!1556950))

(assert (= (and d!162303 res!1065085) b!1556953))

(assert (= (and b!1556953 res!1065086) b!1556954))

(declare-fun m!1434257 () Bool)

(assert (=> b!1556954 m!1434257))

(declare-fun m!1434259 () Bool)

(assert (=> b!1556952 m!1434259))

(declare-fun m!1434261 () Bool)

(assert (=> bm!71654 m!1434261))

(declare-fun m!1434263 () Bool)

(assert (=> d!162303 m!1434263))

(assert (=> d!162303 m!1434127))

(declare-fun m!1434265 () Bool)

(assert (=> b!1556953 m!1434265))

(assert (=> b!1556836 d!162303))

(declare-fun d!162305 () Bool)

(declare-fun c!143863 () Bool)

(assert (=> d!162305 (= c!143863 (and (is-Cons!36441 (t!51176 l!1177)) (= (_1!12533 (h!37888 (t!51176 l!1177))) otherKey!50)))))

(declare-fun e!867273 () Option!857)

(assert (=> d!162305 (= (getValueByKey!782 (t!51176 l!1177) otherKey!50) e!867273)))

(declare-fun b!1556957 () Bool)

(assert (=> b!1556957 (= e!867273 (Some!856 (_2!12533 (h!37888 (t!51176 l!1177)))))))

(declare-fun b!1556959 () Bool)

(declare-fun e!867274 () Option!857)

(assert (=> b!1556959 (= e!867274 (getValueByKey!782 (t!51176 (t!51176 l!1177)) otherKey!50))))

(declare-fun b!1556958 () Bool)

(assert (=> b!1556958 (= e!867273 e!867274)))

(declare-fun c!143864 () Bool)

(assert (=> b!1556958 (= c!143864 (and (is-Cons!36441 (t!51176 l!1177)) (not (= (_1!12533 (h!37888 (t!51176 l!1177))) otherKey!50))))))

(declare-fun b!1556960 () Bool)

(assert (=> b!1556960 (= e!867274 None!855)))

(assert (= (and d!162305 c!143863) b!1556957))

(assert (= (and d!162305 (not c!143863)) b!1556958))

(assert (= (and b!1556958 c!143864) b!1556959))

(assert (= (and b!1556958 (not c!143864)) b!1556960))

(declare-fun m!1434267 () Bool)

(assert (=> b!1556959 m!1434267))

(assert (=> b!1556708 d!162305))

(declare-fun d!162307 () Bool)

(declare-fun res!1065087 () Bool)

(declare-fun e!867275 () Bool)

(assert (=> d!162307 (=> res!1065087 e!867275)))

(assert (=> d!162307 (= res!1065087 (or (is-Nil!36442 lt!670393) (is-Nil!36442 (t!51176 lt!670393))))))

(assert (=> d!162307 (= (isStrictlySorted!949 lt!670393) e!867275)))

(declare-fun b!1556961 () Bool)

(declare-fun e!867276 () Bool)

(assert (=> b!1556961 (= e!867275 e!867276)))

(declare-fun res!1065088 () Bool)

(assert (=> b!1556961 (=> (not res!1065088) (not e!867276))))

(assert (=> b!1556961 (= res!1065088 (bvslt (_1!12533 (h!37888 lt!670393)) (_1!12533 (h!37888 (t!51176 lt!670393)))))))

(declare-fun b!1556962 () Bool)

(assert (=> b!1556962 (= e!867276 (isStrictlySorted!949 (t!51176 lt!670393)))))

(assert (= (and d!162307 (not res!1065087)) b!1556961))

(assert (= (and b!1556961 res!1065088) b!1556962))

(declare-fun m!1434269 () Bool)

(assert (=> b!1556962 m!1434269))

(assert (=> d!162239 d!162307))

(assert (=> d!162239 d!162217))

(declare-fun d!162309 () Bool)

(declare-fun res!1065089 () Bool)

(declare-fun e!867277 () Bool)

(assert (=> d!162309 (=> res!1065089 e!867277)))

(assert (=> d!162309 (= res!1065089 (and (is-Cons!36441 (t!51176 lt!670385)) (= (_1!12533 (h!37888 (t!51176 lt!670385))) otherKey!50)))))

(assert (=> d!162309 (= (containsKey!812 (t!51176 lt!670385) otherKey!50) e!867277)))

(declare-fun b!1556963 () Bool)

(declare-fun e!867278 () Bool)

(assert (=> b!1556963 (= e!867277 e!867278)))

(declare-fun res!1065090 () Bool)

(assert (=> b!1556963 (=> (not res!1065090) (not e!867278))))

(assert (=> b!1556963 (= res!1065090 (and (or (not (is-Cons!36441 (t!51176 lt!670385))) (bvsle (_1!12533 (h!37888 (t!51176 lt!670385))) otherKey!50)) (is-Cons!36441 (t!51176 lt!670385)) (bvslt (_1!12533 (h!37888 (t!51176 lt!670385))) otherKey!50)))))

(declare-fun b!1556964 () Bool)

(assert (=> b!1556964 (= e!867278 (containsKey!812 (t!51176 (t!51176 lt!670385)) otherKey!50))))

(assert (= (and d!162309 (not res!1065089)) b!1556963))

(assert (= (and b!1556963 res!1065090) b!1556964))

(declare-fun m!1434271 () Bool)

(assert (=> b!1556964 m!1434271))

(assert (=> b!1556739 d!162309))

(declare-fun b!1556965 () Bool)

(declare-fun e!867279 () Bool)

(declare-fun tp!112465 () Bool)

(assert (=> b!1556965 (= e!867279 (and tp_is_empty!38369 tp!112465))))

(assert (=> b!1556855 (= tp!112459 e!867279)))

(assert (= (and b!1556855 (is-Cons!36441 (t!51176 (t!51176 l!1177)))) b!1556965))

(push 1)

(assert (not b!1556936))

(assert (not b!1556954))

(assert (not d!162303))

(assert (not d!162291))

(assert (not b!1556959))

(assert (not b!1556953))

(assert (not b!1556952))

(assert (not b!1556964))

(assert tp_is_empty!38369)

(assert (not b!1556965))

(assert (not b!1556944))

(assert (not b!1556962))

(assert (not bm!71654))

(assert (not b!1556946))

(assert (not b!1556942))

(assert (not b!1556939))

(check-sat)

(pop 1)

(push 1)

(check-sat)

