; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132984 () Bool)

(assert start!132984)

(declare-fun b!1556651 () Bool)

(declare-fun e!867071 () Bool)

(declare-fun e!867072 () Bool)

(assert (=> b!1556651 (= e!867071 e!867072)))

(declare-fun res!1064966 () Bool)

(assert (=> b!1556651 (=> res!1064966 e!867072)))

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-datatypes ((B!2356 0))(
  ( (B!2357 (val!19264 Int)) )
))
(declare-datatypes ((tuple2!25044 0))(
  ( (tuple2!25045 (_1!12532 (_ BitVec 64)) (_2!12532 B!2356)) )
))
(declare-datatypes ((List!36444 0))(
  ( (Nil!36441) (Cons!36440 (h!37887 tuple2!25044) (t!51175 List!36444)) )
))
(declare-fun lt!670382 () List!36444)

(declare-fun l!1177 () List!36444)

(declare-fun containsKey!811 (List!36444 (_ BitVec 64)) Bool)

(assert (=> b!1556651 (= res!1064966 (not (= (containsKey!811 lt!670382 otherKey!50) (containsKey!811 l!1177 otherKey!50))))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun newValue!105 () B!2356)

(declare-fun insertStrictlySorted!553 (List!36444 (_ BitVec 64) B!2356) List!36444)

(assert (=> b!1556651 (= lt!670382 (insertStrictlySorted!553 l!1177 newKey!105 newValue!105))))

(declare-fun res!1064967 () Bool)

(assert (=> start!132984 (=> (not res!1064967) (not e!867071))))

(declare-fun isStrictlySorted!948 (List!36444) Bool)

(assert (=> start!132984 (= res!1064967 (isStrictlySorted!948 l!1177))))

(assert (=> start!132984 e!867071))

(declare-fun e!867070 () Bool)

(assert (=> start!132984 e!867070))

(assert (=> start!132984 true))

(declare-fun tp_is_empty!38367 () Bool)

(assert (=> start!132984 tp_is_empty!38367))

(declare-fun b!1556650 () Bool)

(declare-fun res!1064965 () Bool)

(assert (=> b!1556650 (=> (not res!1064965) (not e!867071))))

(get-info :version)

(assert (=> b!1556650 (= res!1064965 (and (not (= newKey!105 otherKey!50)) (or (not ((_ is Cons!36440) l!1177)) (= (_1!12532 (h!37887 l!1177)) otherKey!50))))))

(declare-fun b!1556652 () Bool)

(declare-datatypes ((Option!856 0))(
  ( (Some!855 (v!22039 B!2356)) (None!854) )
))
(declare-fun getValueByKey!781 (List!36444 (_ BitVec 64)) Option!856)

(assert (=> b!1556652 (= e!867072 (not (= (getValueByKey!781 lt!670382 otherKey!50) (getValueByKey!781 l!1177 otherKey!50))))))

(declare-fun b!1556653 () Bool)

(declare-fun tp!112450 () Bool)

(assert (=> b!1556653 (= e!867070 (and tp_is_empty!38367 tp!112450))))

(assert (= (and start!132984 res!1064967) b!1556650))

(assert (= (and b!1556650 res!1064965) b!1556651))

(assert (= (and b!1556651 (not res!1064966)) b!1556652))

(assert (= (and start!132984 ((_ is Cons!36440) l!1177)) b!1556653))

(declare-fun m!1434099 () Bool)

(assert (=> b!1556651 m!1434099))

(declare-fun m!1434101 () Bool)

(assert (=> b!1556651 m!1434101))

(declare-fun m!1434103 () Bool)

(assert (=> b!1556651 m!1434103))

(declare-fun m!1434105 () Bool)

(assert (=> start!132984 m!1434105))

(declare-fun m!1434107 () Bool)

(assert (=> b!1556652 m!1434107))

(declare-fun m!1434109 () Bool)

(assert (=> b!1556652 m!1434109))

(check-sat (not b!1556652) (not b!1556653) tp_is_empty!38367 (not b!1556651) (not start!132984))
(check-sat)
(get-model)

(declare-fun d!162215 () Bool)

(declare-fun res!1064981 () Bool)

(declare-fun e!867086 () Bool)

(assert (=> d!162215 (=> res!1064981 e!867086)))

(assert (=> d!162215 (= res!1064981 (and ((_ is Cons!36440) lt!670382) (= (_1!12532 (h!37887 lt!670382)) otherKey!50)))))

(assert (=> d!162215 (= (containsKey!811 lt!670382 otherKey!50) e!867086)))

(declare-fun b!1556670 () Bool)

(declare-fun e!867087 () Bool)

(assert (=> b!1556670 (= e!867086 e!867087)))

(declare-fun res!1064982 () Bool)

(assert (=> b!1556670 (=> (not res!1064982) (not e!867087))))

(assert (=> b!1556670 (= res!1064982 (and (or (not ((_ is Cons!36440) lt!670382)) (bvsle (_1!12532 (h!37887 lt!670382)) otherKey!50)) ((_ is Cons!36440) lt!670382) (bvslt (_1!12532 (h!37887 lt!670382)) otherKey!50)))))

(declare-fun b!1556671 () Bool)

(assert (=> b!1556671 (= e!867087 (containsKey!811 (t!51175 lt!670382) otherKey!50))))

(assert (= (and d!162215 (not res!1064981)) b!1556670))

(assert (= (and b!1556670 res!1064982) b!1556671))

(declare-fun m!1434123 () Bool)

(assert (=> b!1556671 m!1434123))

(assert (=> b!1556651 d!162215))

(declare-fun d!162221 () Bool)

(declare-fun res!1064983 () Bool)

(declare-fun e!867088 () Bool)

(assert (=> d!162221 (=> res!1064983 e!867088)))

(assert (=> d!162221 (= res!1064983 (and ((_ is Cons!36440) l!1177) (= (_1!12532 (h!37887 l!1177)) otherKey!50)))))

(assert (=> d!162221 (= (containsKey!811 l!1177 otherKey!50) e!867088)))

(declare-fun b!1556672 () Bool)

(declare-fun e!867089 () Bool)

(assert (=> b!1556672 (= e!867088 e!867089)))

(declare-fun res!1064984 () Bool)

(assert (=> b!1556672 (=> (not res!1064984) (not e!867089))))

(assert (=> b!1556672 (= res!1064984 (and (or (not ((_ is Cons!36440) l!1177)) (bvsle (_1!12532 (h!37887 l!1177)) otherKey!50)) ((_ is Cons!36440) l!1177) (bvslt (_1!12532 (h!37887 l!1177)) otherKey!50)))))

(declare-fun b!1556673 () Bool)

(assert (=> b!1556673 (= e!867089 (containsKey!811 (t!51175 l!1177) otherKey!50))))

(assert (= (and d!162221 (not res!1064983)) b!1556672))

(assert (= (and b!1556672 res!1064984) b!1556673))

(declare-fun m!1434125 () Bool)

(assert (=> b!1556673 m!1434125))

(assert (=> b!1556651 d!162221))

(declare-fun b!1556754 () Bool)

(declare-fun e!867144 () List!36444)

(declare-fun call!71630 () List!36444)

(assert (=> b!1556754 (= e!867144 call!71630)))

(declare-fun b!1556755 () Bool)

(declare-fun c!143806 () Bool)

(assert (=> b!1556755 (= c!143806 (and ((_ is Cons!36440) l!1177) (bvsgt (_1!12532 (h!37887 l!1177)) newKey!105)))))

(declare-fun e!867147 () List!36444)

(assert (=> b!1556755 (= e!867147 e!867144)))

(declare-fun b!1556756 () Bool)

(declare-fun res!1065018 () Bool)

(declare-fun e!867145 () Bool)

(assert (=> b!1556756 (=> (not res!1065018) (not e!867145))))

(declare-fun lt!670388 () List!36444)

(assert (=> b!1556756 (= res!1065018 (containsKey!811 lt!670388 newKey!105))))

(declare-fun bm!71626 () Bool)

(declare-fun call!71629 () List!36444)

(declare-fun call!71631 () List!36444)

(assert (=> bm!71626 (= call!71629 call!71631)))

(declare-fun d!162223 () Bool)

(assert (=> d!162223 e!867145))

(declare-fun res!1065017 () Bool)

(assert (=> d!162223 (=> (not res!1065017) (not e!867145))))

(assert (=> d!162223 (= res!1065017 (isStrictlySorted!948 lt!670388))))

(declare-fun e!867148 () List!36444)

(assert (=> d!162223 (= lt!670388 e!867148)))

(declare-fun c!143807 () Bool)

(assert (=> d!162223 (= c!143807 (and ((_ is Cons!36440) l!1177) (bvslt (_1!12532 (h!37887 l!1177)) newKey!105)))))

(assert (=> d!162223 (isStrictlySorted!948 l!1177)))

(assert (=> d!162223 (= (insertStrictlySorted!553 l!1177 newKey!105 newValue!105) lt!670388)))

(declare-fun b!1556757 () Bool)

(assert (=> b!1556757 (= e!867147 call!71629)))

(declare-fun b!1556758 () Bool)

(assert (=> b!1556758 (= e!867148 e!867147)))

(declare-fun c!143805 () Bool)

(assert (=> b!1556758 (= c!143805 (and ((_ is Cons!36440) l!1177) (= (_1!12532 (h!37887 l!1177)) newKey!105)))))

(declare-fun b!1556759 () Bool)

(declare-fun e!867146 () List!36444)

(assert (=> b!1556759 (= e!867146 (ite c!143805 (t!51175 l!1177) (ite c!143806 (Cons!36440 (h!37887 l!1177) (t!51175 l!1177)) Nil!36441)))))

(declare-fun bm!71627 () Bool)

(declare-fun $colon$colon!971 (List!36444 tuple2!25044) List!36444)

(assert (=> bm!71627 (= call!71631 ($colon$colon!971 e!867146 (ite c!143807 (h!37887 l!1177) (tuple2!25045 newKey!105 newValue!105))))))

(declare-fun c!143808 () Bool)

(assert (=> bm!71627 (= c!143808 c!143807)))

(declare-fun bm!71628 () Bool)

(assert (=> bm!71628 (= call!71630 call!71629)))

(declare-fun b!1556760 () Bool)

(assert (=> b!1556760 (= e!867146 (insertStrictlySorted!553 (t!51175 l!1177) newKey!105 newValue!105))))

(declare-fun b!1556761 () Bool)

(assert (=> b!1556761 (= e!867148 call!71631)))

(declare-fun b!1556762 () Bool)

(declare-fun contains!10192 (List!36444 tuple2!25044) Bool)

(assert (=> b!1556762 (= e!867145 (contains!10192 lt!670388 (tuple2!25045 newKey!105 newValue!105)))))

(declare-fun b!1556763 () Bool)

(assert (=> b!1556763 (= e!867144 call!71630)))

(assert (= (and d!162223 c!143807) b!1556761))

(assert (= (and d!162223 (not c!143807)) b!1556758))

(assert (= (and b!1556758 c!143805) b!1556757))

(assert (= (and b!1556758 (not c!143805)) b!1556755))

(assert (= (and b!1556755 c!143806) b!1556763))

(assert (= (and b!1556755 (not c!143806)) b!1556754))

(assert (= (or b!1556763 b!1556754) bm!71628))

(assert (= (or b!1556757 bm!71628) bm!71626))

(assert (= (or b!1556761 bm!71626) bm!71627))

(assert (= (and bm!71627 c!143808) b!1556760))

(assert (= (and bm!71627 (not c!143808)) b!1556759))

(assert (= (and d!162223 res!1065017) b!1556756))

(assert (= (and b!1556756 res!1065018) b!1556762))

(declare-fun m!1434147 () Bool)

(assert (=> bm!71627 m!1434147))

(declare-fun m!1434149 () Bool)

(assert (=> b!1556756 m!1434149))

(declare-fun m!1434151 () Bool)

(assert (=> b!1556762 m!1434151))

(declare-fun m!1434153 () Bool)

(assert (=> b!1556760 m!1434153))

(declare-fun m!1434155 () Bool)

(assert (=> d!162223 m!1434155))

(assert (=> d!162223 m!1434105))

(assert (=> b!1556651 d!162223))

(declare-fun d!162245 () Bool)

(declare-fun res!1065023 () Bool)

(declare-fun e!867157 () Bool)

(assert (=> d!162245 (=> res!1065023 e!867157)))

(assert (=> d!162245 (= res!1065023 (or ((_ is Nil!36441) l!1177) ((_ is Nil!36441) (t!51175 l!1177))))))

(assert (=> d!162245 (= (isStrictlySorted!948 l!1177) e!867157)))

(declare-fun b!1556776 () Bool)

(declare-fun e!867158 () Bool)

(assert (=> b!1556776 (= e!867157 e!867158)))

(declare-fun res!1065024 () Bool)

(assert (=> b!1556776 (=> (not res!1065024) (not e!867158))))

(assert (=> b!1556776 (= res!1065024 (bvslt (_1!12532 (h!37887 l!1177)) (_1!12532 (h!37887 (t!51175 l!1177)))))))

(declare-fun b!1556777 () Bool)

(assert (=> b!1556777 (= e!867158 (isStrictlySorted!948 (t!51175 l!1177)))))

(assert (= (and d!162245 (not res!1065023)) b!1556776))

(assert (= (and b!1556776 res!1065024) b!1556777))

(declare-fun m!1434157 () Bool)

(assert (=> b!1556777 m!1434157))

(assert (=> start!132984 d!162245))

(declare-fun b!1556821 () Bool)

(declare-fun e!867180 () Option!856)

(assert (=> b!1556821 (= e!867180 None!854)))

(declare-fun d!162247 () Bool)

(declare-fun c!143829 () Bool)

(assert (=> d!162247 (= c!143829 (and ((_ is Cons!36440) lt!670382) (= (_1!12532 (h!37887 lt!670382)) otherKey!50)))))

(declare-fun e!867179 () Option!856)

(assert (=> d!162247 (= (getValueByKey!781 lt!670382 otherKey!50) e!867179)))

(declare-fun b!1556818 () Bool)

(assert (=> b!1556818 (= e!867179 (Some!855 (_2!12532 (h!37887 lt!670382))))))

(declare-fun b!1556819 () Bool)

(assert (=> b!1556819 (= e!867179 e!867180)))

(declare-fun c!143830 () Bool)

(assert (=> b!1556819 (= c!143830 (and ((_ is Cons!36440) lt!670382) (not (= (_1!12532 (h!37887 lt!670382)) otherKey!50))))))

(declare-fun b!1556820 () Bool)

(assert (=> b!1556820 (= e!867180 (getValueByKey!781 (t!51175 lt!670382) otherKey!50))))

(assert (= (and d!162247 c!143829) b!1556818))

(assert (= (and d!162247 (not c!143829)) b!1556819))

(assert (= (and b!1556819 c!143830) b!1556820))

(assert (= (and b!1556819 (not c!143830)) b!1556821))

(declare-fun m!1434159 () Bool)

(assert (=> b!1556820 m!1434159))

(assert (=> b!1556652 d!162247))

(declare-fun b!1556825 () Bool)

(declare-fun e!867182 () Option!856)

(assert (=> b!1556825 (= e!867182 None!854)))

(declare-fun d!162249 () Bool)

(declare-fun c!143831 () Bool)

(assert (=> d!162249 (= c!143831 (and ((_ is Cons!36440) l!1177) (= (_1!12532 (h!37887 l!1177)) otherKey!50)))))

(declare-fun e!867181 () Option!856)

(assert (=> d!162249 (= (getValueByKey!781 l!1177 otherKey!50) e!867181)))

(declare-fun b!1556822 () Bool)

(assert (=> b!1556822 (= e!867181 (Some!855 (_2!12532 (h!37887 l!1177))))))

(declare-fun b!1556823 () Bool)

(assert (=> b!1556823 (= e!867181 e!867182)))

(declare-fun c!143832 () Bool)

(assert (=> b!1556823 (= c!143832 (and ((_ is Cons!36440) l!1177) (not (= (_1!12532 (h!37887 l!1177)) otherKey!50))))))

(declare-fun b!1556824 () Bool)

(assert (=> b!1556824 (= e!867182 (getValueByKey!781 (t!51175 l!1177) otherKey!50))))

(assert (= (and d!162249 c!143831) b!1556822))

(assert (= (and d!162249 (not c!143831)) b!1556823))

(assert (= (and b!1556823 c!143832) b!1556824))

(assert (= (and b!1556823 (not c!143832)) b!1556825))

(declare-fun m!1434161 () Bool)

(assert (=> b!1556824 m!1434161))

(assert (=> b!1556652 d!162249))

(declare-fun b!1556830 () Bool)

(declare-fun e!867185 () Bool)

(declare-fun tp!112456 () Bool)

(assert (=> b!1556830 (= e!867185 (and tp_is_empty!38367 tp!112456))))

(assert (=> b!1556653 (= tp!112450 e!867185)))

(assert (= (and b!1556653 ((_ is Cons!36440) (t!51175 l!1177))) b!1556830))

(check-sat (not b!1556830) (not b!1556762) (not b!1556777) (not b!1556673) (not d!162223) (not bm!71627) (not b!1556756) (not b!1556760) (not b!1556820) tp_is_empty!38367 (not b!1556671) (not b!1556824))
(check-sat)
(get-model)

(declare-fun d!162251 () Bool)

(declare-fun res!1065037 () Bool)

(declare-fun e!867202 () Bool)

(assert (=> d!162251 (=> res!1065037 e!867202)))

(assert (=> d!162251 (= res!1065037 (and ((_ is Cons!36440) (t!51175 l!1177)) (= (_1!12532 (h!37887 (t!51175 l!1177))) otherKey!50)))))

(assert (=> d!162251 (= (containsKey!811 (t!51175 l!1177) otherKey!50) e!867202)))

(declare-fun b!1556861 () Bool)

(declare-fun e!867203 () Bool)

(assert (=> b!1556861 (= e!867202 e!867203)))

(declare-fun res!1065038 () Bool)

(assert (=> b!1556861 (=> (not res!1065038) (not e!867203))))

(assert (=> b!1556861 (= res!1065038 (and (or (not ((_ is Cons!36440) (t!51175 l!1177))) (bvsle (_1!12532 (h!37887 (t!51175 l!1177))) otherKey!50)) ((_ is Cons!36440) (t!51175 l!1177)) (bvslt (_1!12532 (h!37887 (t!51175 l!1177))) otherKey!50)))))

(declare-fun b!1556862 () Bool)

(assert (=> b!1556862 (= e!867203 (containsKey!811 (t!51175 (t!51175 l!1177)) otherKey!50))))

(assert (= (and d!162251 (not res!1065037)) b!1556861))

(assert (= (and b!1556861 res!1065038) b!1556862))

(declare-fun m!1434183 () Bool)

(assert (=> b!1556862 m!1434183))

(assert (=> b!1556673 d!162251))

(declare-fun d!162253 () Bool)

(declare-fun res!1065039 () Bool)

(declare-fun e!867204 () Bool)

(assert (=> d!162253 (=> res!1065039 e!867204)))

(assert (=> d!162253 (= res!1065039 (and ((_ is Cons!36440) lt!670388) (= (_1!12532 (h!37887 lt!670388)) newKey!105)))))

(assert (=> d!162253 (= (containsKey!811 lt!670388 newKey!105) e!867204)))

(declare-fun b!1556863 () Bool)

(declare-fun e!867205 () Bool)

(assert (=> b!1556863 (= e!867204 e!867205)))

(declare-fun res!1065040 () Bool)

(assert (=> b!1556863 (=> (not res!1065040) (not e!867205))))

(assert (=> b!1556863 (= res!1065040 (and (or (not ((_ is Cons!36440) lt!670388)) (bvsle (_1!12532 (h!37887 lt!670388)) newKey!105)) ((_ is Cons!36440) lt!670388) (bvslt (_1!12532 (h!37887 lt!670388)) newKey!105)))))

(declare-fun b!1556864 () Bool)

(assert (=> b!1556864 (= e!867205 (containsKey!811 (t!51175 lt!670388) newKey!105))))

(assert (= (and d!162253 (not res!1065039)) b!1556863))

(assert (= (and b!1556863 res!1065040) b!1556864))

(declare-fun m!1434185 () Bool)

(assert (=> b!1556864 m!1434185))

(assert (=> b!1556756 d!162253))

(declare-fun b!1556868 () Bool)

(declare-fun e!867207 () Option!856)

(assert (=> b!1556868 (= e!867207 None!854)))

(declare-fun d!162255 () Bool)

(declare-fun c!143841 () Bool)

(assert (=> d!162255 (= c!143841 (and ((_ is Cons!36440) (t!51175 l!1177)) (= (_1!12532 (h!37887 (t!51175 l!1177))) otherKey!50)))))

(declare-fun e!867206 () Option!856)

(assert (=> d!162255 (= (getValueByKey!781 (t!51175 l!1177) otherKey!50) e!867206)))

(declare-fun b!1556865 () Bool)

(assert (=> b!1556865 (= e!867206 (Some!855 (_2!12532 (h!37887 (t!51175 l!1177)))))))

(declare-fun b!1556866 () Bool)

(assert (=> b!1556866 (= e!867206 e!867207)))

(declare-fun c!143842 () Bool)

(assert (=> b!1556866 (= c!143842 (and ((_ is Cons!36440) (t!51175 l!1177)) (not (= (_1!12532 (h!37887 (t!51175 l!1177))) otherKey!50))))))

(declare-fun b!1556867 () Bool)

(assert (=> b!1556867 (= e!867207 (getValueByKey!781 (t!51175 (t!51175 l!1177)) otherKey!50))))

(assert (= (and d!162255 c!143841) b!1556865))

(assert (= (and d!162255 (not c!143841)) b!1556866))

(assert (= (and b!1556866 c!143842) b!1556867))

(assert (= (and b!1556866 (not c!143842)) b!1556868))

(declare-fun m!1434187 () Bool)

(assert (=> b!1556867 m!1434187))

(assert (=> b!1556824 d!162255))

(declare-fun d!162257 () Bool)

(assert (=> d!162257 (= ($colon$colon!971 e!867146 (ite c!143807 (h!37887 l!1177) (tuple2!25045 newKey!105 newValue!105))) (Cons!36440 (ite c!143807 (h!37887 l!1177) (tuple2!25045 newKey!105 newValue!105)) e!867146))))

(assert (=> bm!71627 d!162257))

(declare-fun d!162259 () Bool)

(declare-fun res!1065041 () Bool)

(declare-fun e!867208 () Bool)

(assert (=> d!162259 (=> res!1065041 e!867208)))

(assert (=> d!162259 (= res!1065041 (and ((_ is Cons!36440) (t!51175 lt!670382)) (= (_1!12532 (h!37887 (t!51175 lt!670382))) otherKey!50)))))

(assert (=> d!162259 (= (containsKey!811 (t!51175 lt!670382) otherKey!50) e!867208)))

(declare-fun b!1556869 () Bool)

(declare-fun e!867209 () Bool)

(assert (=> b!1556869 (= e!867208 e!867209)))

(declare-fun res!1065042 () Bool)

(assert (=> b!1556869 (=> (not res!1065042) (not e!867209))))

(assert (=> b!1556869 (= res!1065042 (and (or (not ((_ is Cons!36440) (t!51175 lt!670382))) (bvsle (_1!12532 (h!37887 (t!51175 lt!670382))) otherKey!50)) ((_ is Cons!36440) (t!51175 lt!670382)) (bvslt (_1!12532 (h!37887 (t!51175 lt!670382))) otherKey!50)))))

(declare-fun b!1556870 () Bool)

(assert (=> b!1556870 (= e!867209 (containsKey!811 (t!51175 (t!51175 lt!670382)) otherKey!50))))

(assert (= (and d!162259 (not res!1065041)) b!1556869))

(assert (= (and b!1556869 res!1065042) b!1556870))

(declare-fun m!1434189 () Bool)

(assert (=> b!1556870 m!1434189))

(assert (=> b!1556671 d!162259))

(declare-fun d!162261 () Bool)

(declare-fun res!1065043 () Bool)

(declare-fun e!867210 () Bool)

(assert (=> d!162261 (=> res!1065043 e!867210)))

(assert (=> d!162261 (= res!1065043 (or ((_ is Nil!36441) lt!670388) ((_ is Nil!36441) (t!51175 lt!670388))))))

(assert (=> d!162261 (= (isStrictlySorted!948 lt!670388) e!867210)))

(declare-fun b!1556871 () Bool)

(declare-fun e!867211 () Bool)

(assert (=> b!1556871 (= e!867210 e!867211)))

(declare-fun res!1065044 () Bool)

(assert (=> b!1556871 (=> (not res!1065044) (not e!867211))))

(assert (=> b!1556871 (= res!1065044 (bvslt (_1!12532 (h!37887 lt!670388)) (_1!12532 (h!37887 (t!51175 lt!670388)))))))

(declare-fun b!1556872 () Bool)

(assert (=> b!1556872 (= e!867211 (isStrictlySorted!948 (t!51175 lt!670388)))))

(assert (= (and d!162261 (not res!1065043)) b!1556871))

(assert (= (and b!1556871 res!1065044) b!1556872))

(declare-fun m!1434191 () Bool)

(assert (=> b!1556872 m!1434191))

(assert (=> d!162223 d!162261))

(assert (=> d!162223 d!162245))

(declare-fun b!1556876 () Bool)

(declare-fun e!867213 () Option!856)

(assert (=> b!1556876 (= e!867213 None!854)))

(declare-fun d!162263 () Bool)

(declare-fun c!143843 () Bool)

(assert (=> d!162263 (= c!143843 (and ((_ is Cons!36440) (t!51175 lt!670382)) (= (_1!12532 (h!37887 (t!51175 lt!670382))) otherKey!50)))))

(declare-fun e!867212 () Option!856)

(assert (=> d!162263 (= (getValueByKey!781 (t!51175 lt!670382) otherKey!50) e!867212)))

(declare-fun b!1556873 () Bool)

(assert (=> b!1556873 (= e!867212 (Some!855 (_2!12532 (h!37887 (t!51175 lt!670382)))))))

(declare-fun b!1556874 () Bool)

(assert (=> b!1556874 (= e!867212 e!867213)))

(declare-fun c!143844 () Bool)

(assert (=> b!1556874 (= c!143844 (and ((_ is Cons!36440) (t!51175 lt!670382)) (not (= (_1!12532 (h!37887 (t!51175 lt!670382))) otherKey!50))))))

(declare-fun b!1556875 () Bool)

(assert (=> b!1556875 (= e!867213 (getValueByKey!781 (t!51175 (t!51175 lt!670382)) otherKey!50))))

(assert (= (and d!162263 c!143843) b!1556873))

(assert (= (and d!162263 (not c!143843)) b!1556874))

(assert (= (and b!1556874 c!143844) b!1556875))

(assert (= (and b!1556874 (not c!143844)) b!1556876))

(declare-fun m!1434193 () Bool)

(assert (=> b!1556875 m!1434193))

(assert (=> b!1556820 d!162263))

(declare-fun lt!670397 () Bool)

(declare-fun d!162265 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!803 (List!36444) (InoxSet tuple2!25044))

(assert (=> d!162265 (= lt!670397 (select (content!803 lt!670388) (tuple2!25045 newKey!105 newValue!105)))))

(declare-fun e!867219 () Bool)

(assert (=> d!162265 (= lt!670397 e!867219)))

(declare-fun res!1065049 () Bool)

(assert (=> d!162265 (=> (not res!1065049) (not e!867219))))

(assert (=> d!162265 (= res!1065049 ((_ is Cons!36440) lt!670388))))

(assert (=> d!162265 (= (contains!10192 lt!670388 (tuple2!25045 newKey!105 newValue!105)) lt!670397)))

(declare-fun b!1556881 () Bool)

(declare-fun e!867218 () Bool)

(assert (=> b!1556881 (= e!867219 e!867218)))

(declare-fun res!1065050 () Bool)

(assert (=> b!1556881 (=> res!1065050 e!867218)))

(assert (=> b!1556881 (= res!1065050 (= (h!37887 lt!670388) (tuple2!25045 newKey!105 newValue!105)))))

(declare-fun b!1556882 () Bool)

(assert (=> b!1556882 (= e!867218 (contains!10192 (t!51175 lt!670388) (tuple2!25045 newKey!105 newValue!105)))))

(assert (= (and d!162265 res!1065049) b!1556881))

(assert (= (and b!1556881 (not res!1065050)) b!1556882))

(declare-fun m!1434195 () Bool)

(assert (=> d!162265 m!1434195))

(declare-fun m!1434197 () Bool)

(assert (=> d!162265 m!1434197))

(declare-fun m!1434199 () Bool)

(assert (=> b!1556882 m!1434199))

(assert (=> b!1556762 d!162265))

(declare-fun d!162267 () Bool)

(declare-fun res!1065051 () Bool)

(declare-fun e!867220 () Bool)

(assert (=> d!162267 (=> res!1065051 e!867220)))

(assert (=> d!162267 (= res!1065051 (or ((_ is Nil!36441) (t!51175 l!1177)) ((_ is Nil!36441) (t!51175 (t!51175 l!1177)))))))

(assert (=> d!162267 (= (isStrictlySorted!948 (t!51175 l!1177)) e!867220)))

(declare-fun b!1556883 () Bool)

(declare-fun e!867221 () Bool)

(assert (=> b!1556883 (= e!867220 e!867221)))

(declare-fun res!1065052 () Bool)

(assert (=> b!1556883 (=> (not res!1065052) (not e!867221))))

(assert (=> b!1556883 (= res!1065052 (bvslt (_1!12532 (h!37887 (t!51175 l!1177))) (_1!12532 (h!37887 (t!51175 (t!51175 l!1177))))))))

(declare-fun b!1556884 () Bool)

(assert (=> b!1556884 (= e!867221 (isStrictlySorted!948 (t!51175 (t!51175 l!1177))))))

(assert (= (and d!162267 (not res!1065051)) b!1556883))

(assert (= (and b!1556883 res!1065052) b!1556884))

(declare-fun m!1434201 () Bool)

(assert (=> b!1556884 m!1434201))

(assert (=> b!1556777 d!162267))

(declare-fun b!1556885 () Bool)

(declare-fun e!867222 () List!36444)

(declare-fun call!71651 () List!36444)

(assert (=> b!1556885 (= e!867222 call!71651)))

(declare-fun b!1556886 () Bool)

(declare-fun c!143846 () Bool)

(assert (=> b!1556886 (= c!143846 (and ((_ is Cons!36440) (t!51175 l!1177)) (bvsgt (_1!12532 (h!37887 (t!51175 l!1177))) newKey!105)))))

(declare-fun e!867225 () List!36444)

(assert (=> b!1556886 (= e!867225 e!867222)))

(declare-fun b!1556887 () Bool)

(declare-fun res!1065054 () Bool)

(declare-fun e!867223 () Bool)

(assert (=> b!1556887 (=> (not res!1065054) (not e!867223))))

(declare-fun lt!670398 () List!36444)

(assert (=> b!1556887 (= res!1065054 (containsKey!811 lt!670398 newKey!105))))

(declare-fun bm!71647 () Bool)

(declare-fun call!71650 () List!36444)

(declare-fun call!71652 () List!36444)

(assert (=> bm!71647 (= call!71650 call!71652)))

(declare-fun d!162269 () Bool)

(assert (=> d!162269 e!867223))

(declare-fun res!1065053 () Bool)

(assert (=> d!162269 (=> (not res!1065053) (not e!867223))))

(assert (=> d!162269 (= res!1065053 (isStrictlySorted!948 lt!670398))))

(declare-fun e!867226 () List!36444)

(assert (=> d!162269 (= lt!670398 e!867226)))

(declare-fun c!143847 () Bool)

(assert (=> d!162269 (= c!143847 (and ((_ is Cons!36440) (t!51175 l!1177)) (bvslt (_1!12532 (h!37887 (t!51175 l!1177))) newKey!105)))))

(assert (=> d!162269 (isStrictlySorted!948 (t!51175 l!1177))))

(assert (=> d!162269 (= (insertStrictlySorted!553 (t!51175 l!1177) newKey!105 newValue!105) lt!670398)))

(declare-fun b!1556888 () Bool)

(assert (=> b!1556888 (= e!867225 call!71650)))

(declare-fun b!1556889 () Bool)

(assert (=> b!1556889 (= e!867226 e!867225)))

(declare-fun c!143845 () Bool)

(assert (=> b!1556889 (= c!143845 (and ((_ is Cons!36440) (t!51175 l!1177)) (= (_1!12532 (h!37887 (t!51175 l!1177))) newKey!105)))))

(declare-fun b!1556890 () Bool)

(declare-fun e!867224 () List!36444)

(assert (=> b!1556890 (= e!867224 (ite c!143845 (t!51175 (t!51175 l!1177)) (ite c!143846 (Cons!36440 (h!37887 (t!51175 l!1177)) (t!51175 (t!51175 l!1177))) Nil!36441)))))

(declare-fun bm!71648 () Bool)

(assert (=> bm!71648 (= call!71652 ($colon$colon!971 e!867224 (ite c!143847 (h!37887 (t!51175 l!1177)) (tuple2!25045 newKey!105 newValue!105))))))

(declare-fun c!143848 () Bool)

(assert (=> bm!71648 (= c!143848 c!143847)))

(declare-fun bm!71649 () Bool)

(assert (=> bm!71649 (= call!71651 call!71650)))

(declare-fun b!1556891 () Bool)

(assert (=> b!1556891 (= e!867224 (insertStrictlySorted!553 (t!51175 (t!51175 l!1177)) newKey!105 newValue!105))))

(declare-fun b!1556892 () Bool)

(assert (=> b!1556892 (= e!867226 call!71652)))

(declare-fun b!1556893 () Bool)

(assert (=> b!1556893 (= e!867223 (contains!10192 lt!670398 (tuple2!25045 newKey!105 newValue!105)))))

(declare-fun b!1556894 () Bool)

(assert (=> b!1556894 (= e!867222 call!71651)))

(assert (= (and d!162269 c!143847) b!1556892))

(assert (= (and d!162269 (not c!143847)) b!1556889))

(assert (= (and b!1556889 c!143845) b!1556888))

(assert (= (and b!1556889 (not c!143845)) b!1556886))

(assert (= (and b!1556886 c!143846) b!1556894))

(assert (= (and b!1556886 (not c!143846)) b!1556885))

(assert (= (or b!1556894 b!1556885) bm!71649))

(assert (= (or b!1556888 bm!71649) bm!71647))

(assert (= (or b!1556892 bm!71647) bm!71648))

(assert (= (and bm!71648 c!143848) b!1556891))

(assert (= (and bm!71648 (not c!143848)) b!1556890))

(assert (= (and d!162269 res!1065053) b!1556887))

(assert (= (and b!1556887 res!1065054) b!1556893))

(declare-fun m!1434205 () Bool)

(assert (=> bm!71648 m!1434205))

(declare-fun m!1434207 () Bool)

(assert (=> b!1556887 m!1434207))

(declare-fun m!1434209 () Bool)

(assert (=> b!1556893 m!1434209))

(declare-fun m!1434211 () Bool)

(assert (=> b!1556891 m!1434211))

(declare-fun m!1434213 () Bool)

(assert (=> d!162269 m!1434213))

(assert (=> d!162269 m!1434157))

(assert (=> b!1556760 d!162269))

(declare-fun b!1556897 () Bool)

(declare-fun e!867229 () Bool)

(declare-fun tp!112463 () Bool)

(assert (=> b!1556897 (= e!867229 (and tp_is_empty!38367 tp!112463))))

(assert (=> b!1556830 (= tp!112456 e!867229)))

(assert (= (and b!1556830 ((_ is Cons!36440) (t!51175 (t!51175 l!1177)))) b!1556897))

(check-sat (not b!1556875) (not b!1556867) tp_is_empty!38367 (not d!162269) (not b!1556864) (not b!1556884) (not b!1556891) (not b!1556887) (not b!1556893) (not b!1556872) (not bm!71648) (not b!1556882) (not d!162265) (not b!1556870) (not b!1556862) (not b!1556897))
(check-sat)
