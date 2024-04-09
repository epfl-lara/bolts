; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!88854 () Bool)

(assert start!88854)

(declare-fun b!1019678 () Bool)

(declare-fun res!683627 () Bool)

(declare-fun e!573913 () Bool)

(assert (=> b!1019678 (=> (not res!683627) (not e!573913))))

(declare-datatypes ((B!1696 0))(
  ( (B!1697 (val!11932 Int)) )
))
(declare-datatypes ((tuple2!15500 0))(
  ( (tuple2!15501 (_1!7760 (_ BitVec 64)) (_2!7760 B!1696)) )
))
(declare-datatypes ((List!21734 0))(
  ( (Nil!21731) (Cons!21730 (h!22928 tuple2!15500) (t!30748 List!21734)) )
))
(declare-fun l!996 () List!21734)

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!546 (List!21734 (_ BitVec 64)) Bool)

(assert (=> b!1019678 (= res!683627 (containsKey!546 l!996 key!261))))

(declare-fun b!1019681 () Bool)

(declare-fun e!573912 () Bool)

(declare-fun tp_is_empty!23763 () Bool)

(declare-fun tp!71174 () Bool)

(assert (=> b!1019681 (= e!573912 (and tp_is_empty!23763 tp!71174))))

(declare-fun b!1019680 () Bool)

(declare-fun e!573911 () Bool)

(declare-fun lt!449710 () List!21734)

(declare-fun length!48 (List!21734) Int)

(assert (=> b!1019680 (= e!573911 (not (= (length!48 lt!449710) (length!48 l!996))))))

(declare-fun res!683626 () Bool)

(assert (=> start!88854 (=> (not res!683626) (not e!573913))))

(declare-fun isStrictlySorted!681 (List!21734) Bool)

(assert (=> start!88854 (= res!683626 (isStrictlySorted!681 l!996))))

(assert (=> start!88854 e!573913))

(assert (=> start!88854 e!573912))

(assert (=> start!88854 true))

(assert (=> start!88854 tp_is_empty!23763))

(declare-fun b!1019679 () Bool)

(assert (=> b!1019679 (= e!573913 e!573911)))

(declare-fun res!683628 () Bool)

(assert (=> b!1019679 (=> (not res!683628) (not e!573911))))

(declare-fun value!172 () B!1696)

(get-info :version)

(assert (=> b!1019679 (= res!683628 (and (bvsge (_1!7760 (h!22928 l!996)) key!261) ((_ is Cons!21730) l!996) (= (_1!7760 (h!22928 l!996)) key!261) (= lt!449710 (Cons!21730 (tuple2!15501 key!261 value!172) (t!30748 l!996)))))))

(declare-fun insertStrictlySorted!363 (List!21734 (_ BitVec 64) B!1696) List!21734)

(assert (=> b!1019679 (= lt!449710 (insertStrictlySorted!363 l!996 key!261 value!172))))

(assert (= (and start!88854 res!683626) b!1019678))

(assert (= (and b!1019678 res!683627) b!1019679))

(assert (= (and b!1019679 res!683628) b!1019680))

(assert (= (and start!88854 ((_ is Cons!21730) l!996)) b!1019681))

(declare-fun m!940073 () Bool)

(assert (=> b!1019678 m!940073))

(declare-fun m!940075 () Bool)

(assert (=> b!1019680 m!940075))

(declare-fun m!940077 () Bool)

(assert (=> b!1019680 m!940077))

(declare-fun m!940079 () Bool)

(assert (=> start!88854 m!940079))

(declare-fun m!940081 () Bool)

(assert (=> b!1019679 m!940081))

(check-sat (not b!1019679) tp_is_empty!23763 (not b!1019681) (not b!1019678) (not b!1019680) (not start!88854))
(check-sat)
(get-model)

(declare-fun d!122159 () Bool)

(declare-fun res!683642 () Bool)

(declare-fun e!573927 () Bool)

(assert (=> d!122159 (=> res!683642 e!573927)))

(assert (=> d!122159 (= res!683642 (or ((_ is Nil!21731) l!996) ((_ is Nil!21731) (t!30748 l!996))))))

(assert (=> d!122159 (= (isStrictlySorted!681 l!996) e!573927)))

(declare-fun b!1019698 () Bool)

(declare-fun e!573928 () Bool)

(assert (=> b!1019698 (= e!573927 e!573928)))

(declare-fun res!683643 () Bool)

(assert (=> b!1019698 (=> (not res!683643) (not e!573928))))

(assert (=> b!1019698 (= res!683643 (bvslt (_1!7760 (h!22928 l!996)) (_1!7760 (h!22928 (t!30748 l!996)))))))

(declare-fun b!1019699 () Bool)

(assert (=> b!1019699 (= e!573928 (isStrictlySorted!681 (t!30748 l!996)))))

(assert (= (and d!122159 (not res!683642)) b!1019698))

(assert (= (and b!1019698 res!683643) b!1019699))

(declare-fun m!940093 () Bool)

(assert (=> b!1019699 m!940093))

(assert (=> start!88854 d!122159))

(declare-fun d!122161 () Bool)

(declare-fun size!31149 (List!21734) Int)

(assert (=> d!122161 (= (length!48 lt!449710) (size!31149 lt!449710))))

(declare-fun bs!29703 () Bool)

(assert (= bs!29703 d!122161))

(declare-fun m!940095 () Bool)

(assert (=> bs!29703 m!940095))

(assert (=> b!1019680 d!122161))

(declare-fun d!122163 () Bool)

(assert (=> d!122163 (= (length!48 l!996) (size!31149 l!996))))

(declare-fun bs!29704 () Bool)

(assert (= bs!29704 d!122163))

(declare-fun m!940097 () Bool)

(assert (=> bs!29704 m!940097))

(assert (=> b!1019680 d!122163))

(declare-fun bm!43130 () Bool)

(declare-fun call!43133 () List!21734)

(declare-fun call!43134 () List!21734)

(assert (=> bm!43130 (= call!43133 call!43134)))

(declare-fun d!122165 () Bool)

(declare-fun e!573957 () Bool)

(assert (=> d!122165 e!573957))

(declare-fun res!683658 () Bool)

(assert (=> d!122165 (=> (not res!683658) (not e!573957))))

(declare-fun lt!449718 () List!21734)

(assert (=> d!122165 (= res!683658 (isStrictlySorted!681 lt!449718))))

(declare-fun e!573955 () List!21734)

(assert (=> d!122165 (= lt!449718 e!573955)))

(declare-fun c!103359 () Bool)

(assert (=> d!122165 (= c!103359 (and ((_ is Cons!21730) l!996) (bvslt (_1!7760 (h!22928 l!996)) key!261)))))

(assert (=> d!122165 (isStrictlySorted!681 l!996)))

(assert (=> d!122165 (= (insertStrictlySorted!363 l!996 key!261 value!172) lt!449718)))

(declare-fun b!1019746 () Bool)

(declare-fun e!573959 () List!21734)

(assert (=> b!1019746 (= e!573959 call!43133)))

(declare-fun b!1019747 () Bool)

(assert (=> b!1019747 (= e!573959 call!43133)))

(declare-fun e!573958 () List!21734)

(declare-fun b!1019748 () Bool)

(assert (=> b!1019748 (= e!573958 (insertStrictlySorted!363 (t!30748 l!996) key!261 value!172))))

(declare-fun b!1019749 () Bool)

(declare-fun e!573956 () List!21734)

(assert (=> b!1019749 (= e!573955 e!573956)))

(declare-fun c!103361 () Bool)

(assert (=> b!1019749 (= c!103361 (and ((_ is Cons!21730) l!996) (= (_1!7760 (h!22928 l!996)) key!261)))))

(declare-fun b!1019750 () Bool)

(declare-fun call!43135 () List!21734)

(assert (=> b!1019750 (= e!573955 call!43135)))

(declare-fun b!1019751 () Bool)

(declare-fun contains!5924 (List!21734 tuple2!15500) Bool)

(assert (=> b!1019751 (= e!573957 (contains!5924 lt!449718 (tuple2!15501 key!261 value!172)))))

(declare-fun b!1019752 () Bool)

(declare-fun c!103358 () Bool)

(assert (=> b!1019752 (= c!103358 (and ((_ is Cons!21730) l!996) (bvsgt (_1!7760 (h!22928 l!996)) key!261)))))

(assert (=> b!1019752 (= e!573956 e!573959)))

(declare-fun bm!43131 () Bool)

(assert (=> bm!43131 (= call!43134 call!43135)))

(declare-fun bm!43132 () Bool)

(declare-fun $colon$colon!596 (List!21734 tuple2!15500) List!21734)

(assert (=> bm!43132 (= call!43135 ($colon$colon!596 e!573958 (ite c!103359 (h!22928 l!996) (tuple2!15501 key!261 value!172))))))

(declare-fun c!103360 () Bool)

(assert (=> bm!43132 (= c!103360 c!103359)))

(declare-fun b!1019753 () Bool)

(declare-fun res!683659 () Bool)

(assert (=> b!1019753 (=> (not res!683659) (not e!573957))))

(assert (=> b!1019753 (= res!683659 (containsKey!546 lt!449718 key!261))))

(declare-fun b!1019754 () Bool)

(assert (=> b!1019754 (= e!573956 call!43134)))

(declare-fun b!1019755 () Bool)

(assert (=> b!1019755 (= e!573958 (ite c!103361 (t!30748 l!996) (ite c!103358 (Cons!21730 (h!22928 l!996) (t!30748 l!996)) Nil!21731)))))

(assert (= (and d!122165 c!103359) b!1019750))

(assert (= (and d!122165 (not c!103359)) b!1019749))

(assert (= (and b!1019749 c!103361) b!1019754))

(assert (= (and b!1019749 (not c!103361)) b!1019752))

(assert (= (and b!1019752 c!103358) b!1019746))

(assert (= (and b!1019752 (not c!103358)) b!1019747))

(assert (= (or b!1019746 b!1019747) bm!43130))

(assert (= (or b!1019754 bm!43130) bm!43131))

(assert (= (or b!1019750 bm!43131) bm!43132))

(assert (= (and bm!43132 c!103360) b!1019748))

(assert (= (and bm!43132 (not c!103360)) b!1019755))

(assert (= (and d!122165 res!683658) b!1019753))

(assert (= (and b!1019753 res!683659) b!1019751))

(declare-fun m!940105 () Bool)

(assert (=> b!1019753 m!940105))

(declare-fun m!940107 () Bool)

(assert (=> b!1019748 m!940107))

(declare-fun m!940109 () Bool)

(assert (=> b!1019751 m!940109))

(declare-fun m!940111 () Bool)

(assert (=> d!122165 m!940111))

(assert (=> d!122165 m!940079))

(declare-fun m!940113 () Bool)

(assert (=> bm!43132 m!940113))

(assert (=> b!1019679 d!122165))

(declare-fun d!122177 () Bool)

(declare-fun res!683666 () Bool)

(declare-fun e!573969 () Bool)

(assert (=> d!122177 (=> res!683666 e!573969)))

(assert (=> d!122177 (= res!683666 (and ((_ is Cons!21730) l!996) (= (_1!7760 (h!22928 l!996)) key!261)))))

(assert (=> d!122177 (= (containsKey!546 l!996 key!261) e!573969)))

(declare-fun b!1019770 () Bool)

(declare-fun e!573970 () Bool)

(assert (=> b!1019770 (= e!573969 e!573970)))

(declare-fun res!683667 () Bool)

(assert (=> b!1019770 (=> (not res!683667) (not e!573970))))

(assert (=> b!1019770 (= res!683667 (and (or (not ((_ is Cons!21730) l!996)) (bvsle (_1!7760 (h!22928 l!996)) key!261)) ((_ is Cons!21730) l!996) (bvslt (_1!7760 (h!22928 l!996)) key!261)))))

(declare-fun b!1019771 () Bool)

(assert (=> b!1019771 (= e!573970 (containsKey!546 (t!30748 l!996) key!261))))

(assert (= (and d!122177 (not res!683666)) b!1019770))

(assert (= (and b!1019770 res!683667) b!1019771))

(declare-fun m!940125 () Bool)

(assert (=> b!1019771 m!940125))

(assert (=> b!1019678 d!122177))

(declare-fun b!1019782 () Bool)

(declare-fun e!573977 () Bool)

(declare-fun tp!71180 () Bool)

(assert (=> b!1019782 (= e!573977 (and tp_is_empty!23763 tp!71180))))

(assert (=> b!1019681 (= tp!71174 e!573977)))

(assert (= (and b!1019681 ((_ is Cons!21730) (t!30748 l!996))) b!1019782))

(check-sat (not bm!43132) tp_is_empty!23763 (not d!122165) (not b!1019748) (not b!1019771) (not d!122163) (not b!1019699) (not b!1019782) (not b!1019751) (not b!1019753) (not d!122161))
(check-sat)
(get-model)

(declare-fun d!122207 () Bool)

(declare-fun res!683708 () Bool)

(declare-fun e!574037 () Bool)

(assert (=> d!122207 (=> res!683708 e!574037)))

(assert (=> d!122207 (= res!683708 (and ((_ is Cons!21730) lt!449718) (= (_1!7760 (h!22928 lt!449718)) key!261)))))

(assert (=> d!122207 (= (containsKey!546 lt!449718 key!261) e!574037)))

(declare-fun b!1019868 () Bool)

(declare-fun e!574038 () Bool)

(assert (=> b!1019868 (= e!574037 e!574038)))

(declare-fun res!683709 () Bool)

(assert (=> b!1019868 (=> (not res!683709) (not e!574038))))

(assert (=> b!1019868 (= res!683709 (and (or (not ((_ is Cons!21730) lt!449718)) (bvsle (_1!7760 (h!22928 lt!449718)) key!261)) ((_ is Cons!21730) lt!449718) (bvslt (_1!7760 (h!22928 lt!449718)) key!261)))))

(declare-fun b!1019869 () Bool)

(assert (=> b!1019869 (= e!574038 (containsKey!546 (t!30748 lt!449718) key!261))))

(assert (= (and d!122207 (not res!683708)) b!1019868))

(assert (= (and b!1019868 res!683709) b!1019869))

(declare-fun m!940175 () Bool)

(assert (=> b!1019869 m!940175))

(assert (=> b!1019753 d!122207))

(declare-fun d!122209 () Bool)

(declare-fun lt!449733 () Int)

(assert (=> d!122209 (>= lt!449733 0)))

(declare-fun e!574041 () Int)

(assert (=> d!122209 (= lt!449733 e!574041)))

(declare-fun c!103388 () Bool)

(assert (=> d!122209 (= c!103388 ((_ is Nil!21731) lt!449710))))

(assert (=> d!122209 (= (size!31149 lt!449710) lt!449733)))

(declare-fun b!1019874 () Bool)

(assert (=> b!1019874 (= e!574041 0)))

(declare-fun b!1019875 () Bool)

(assert (=> b!1019875 (= e!574041 (+ 1 (size!31149 (t!30748 lt!449710))))))

(assert (= (and d!122209 c!103388) b!1019874))

(assert (= (and d!122209 (not c!103388)) b!1019875))

(declare-fun m!940177 () Bool)

(assert (=> b!1019875 m!940177))

(assert (=> d!122161 d!122209))

(declare-fun d!122211 () Bool)

(assert (=> d!122211 (= ($colon$colon!596 e!573958 (ite c!103359 (h!22928 l!996) (tuple2!15501 key!261 value!172))) (Cons!21730 (ite c!103359 (h!22928 l!996) (tuple2!15501 key!261 value!172)) e!573958))))

(assert (=> bm!43132 d!122211))

(declare-fun bm!43148 () Bool)

(declare-fun call!43151 () List!21734)

(declare-fun call!43152 () List!21734)

(assert (=> bm!43148 (= call!43151 call!43152)))

(declare-fun d!122213 () Bool)

(declare-fun e!574044 () Bool)

(assert (=> d!122213 e!574044))

(declare-fun res!683710 () Bool)

(assert (=> d!122213 (=> (not res!683710) (not e!574044))))

(declare-fun lt!449734 () List!21734)

(assert (=> d!122213 (= res!683710 (isStrictlySorted!681 lt!449734))))

(declare-fun e!574042 () List!21734)

(assert (=> d!122213 (= lt!449734 e!574042)))

(declare-fun c!103390 () Bool)

(assert (=> d!122213 (= c!103390 (and ((_ is Cons!21730) (t!30748 l!996)) (bvslt (_1!7760 (h!22928 (t!30748 l!996))) key!261)))))

(assert (=> d!122213 (isStrictlySorted!681 (t!30748 l!996))))

(assert (=> d!122213 (= (insertStrictlySorted!363 (t!30748 l!996) key!261 value!172) lt!449734)))

(declare-fun b!1019876 () Bool)

(declare-fun e!574046 () List!21734)

(assert (=> b!1019876 (= e!574046 call!43151)))

(declare-fun b!1019877 () Bool)

(assert (=> b!1019877 (= e!574046 call!43151)))

(declare-fun e!574045 () List!21734)

(declare-fun b!1019878 () Bool)

(assert (=> b!1019878 (= e!574045 (insertStrictlySorted!363 (t!30748 (t!30748 l!996)) key!261 value!172))))

(declare-fun b!1019879 () Bool)

(declare-fun e!574043 () List!21734)

(assert (=> b!1019879 (= e!574042 e!574043)))

(declare-fun c!103392 () Bool)

(assert (=> b!1019879 (= c!103392 (and ((_ is Cons!21730) (t!30748 l!996)) (= (_1!7760 (h!22928 (t!30748 l!996))) key!261)))))

(declare-fun b!1019880 () Bool)

(declare-fun call!43153 () List!21734)

(assert (=> b!1019880 (= e!574042 call!43153)))

(declare-fun b!1019881 () Bool)

(assert (=> b!1019881 (= e!574044 (contains!5924 lt!449734 (tuple2!15501 key!261 value!172)))))

(declare-fun b!1019882 () Bool)

(declare-fun c!103389 () Bool)

(assert (=> b!1019882 (= c!103389 (and ((_ is Cons!21730) (t!30748 l!996)) (bvsgt (_1!7760 (h!22928 (t!30748 l!996))) key!261)))))

(assert (=> b!1019882 (= e!574043 e!574046)))

(declare-fun bm!43149 () Bool)

(assert (=> bm!43149 (= call!43152 call!43153)))

(declare-fun bm!43150 () Bool)

(assert (=> bm!43150 (= call!43153 ($colon$colon!596 e!574045 (ite c!103390 (h!22928 (t!30748 l!996)) (tuple2!15501 key!261 value!172))))))

(declare-fun c!103391 () Bool)

(assert (=> bm!43150 (= c!103391 c!103390)))

(declare-fun b!1019883 () Bool)

(declare-fun res!683711 () Bool)

(assert (=> b!1019883 (=> (not res!683711) (not e!574044))))

(assert (=> b!1019883 (= res!683711 (containsKey!546 lt!449734 key!261))))

(declare-fun b!1019884 () Bool)

(assert (=> b!1019884 (= e!574043 call!43152)))

(declare-fun b!1019885 () Bool)

(assert (=> b!1019885 (= e!574045 (ite c!103392 (t!30748 (t!30748 l!996)) (ite c!103389 (Cons!21730 (h!22928 (t!30748 l!996)) (t!30748 (t!30748 l!996))) Nil!21731)))))

(assert (= (and d!122213 c!103390) b!1019880))

(assert (= (and d!122213 (not c!103390)) b!1019879))

(assert (= (and b!1019879 c!103392) b!1019884))

(assert (= (and b!1019879 (not c!103392)) b!1019882))

(assert (= (and b!1019882 c!103389) b!1019876))

(assert (= (and b!1019882 (not c!103389)) b!1019877))

(assert (= (or b!1019876 b!1019877) bm!43148))

(assert (= (or b!1019884 bm!43148) bm!43149))

(assert (= (or b!1019880 bm!43149) bm!43150))

(assert (= (and bm!43150 c!103391) b!1019878))

(assert (= (and bm!43150 (not c!103391)) b!1019885))

(assert (= (and d!122213 res!683710) b!1019883))

(assert (= (and b!1019883 res!683711) b!1019881))

(declare-fun m!940179 () Bool)

(assert (=> b!1019883 m!940179))

(declare-fun m!940181 () Bool)

(assert (=> b!1019878 m!940181))

(declare-fun m!940183 () Bool)

(assert (=> b!1019881 m!940183))

(declare-fun m!940185 () Bool)

(assert (=> d!122213 m!940185))

(assert (=> d!122213 m!940093))

(declare-fun m!940187 () Bool)

(assert (=> bm!43150 m!940187))

(assert (=> b!1019748 d!122213))

(declare-fun d!122215 () Bool)

(declare-fun lt!449735 () Int)

(assert (=> d!122215 (>= lt!449735 0)))

(declare-fun e!574047 () Int)

(assert (=> d!122215 (= lt!449735 e!574047)))

(declare-fun c!103393 () Bool)

(assert (=> d!122215 (= c!103393 ((_ is Nil!21731) l!996))))

(assert (=> d!122215 (= (size!31149 l!996) lt!449735)))

(declare-fun b!1019886 () Bool)

(assert (=> b!1019886 (= e!574047 0)))

(declare-fun b!1019887 () Bool)

(assert (=> b!1019887 (= e!574047 (+ 1 (size!31149 (t!30748 l!996))))))

(assert (= (and d!122215 c!103393) b!1019886))

(assert (= (and d!122215 (not c!103393)) b!1019887))

(declare-fun m!940189 () Bool)

(assert (=> b!1019887 m!940189))

(assert (=> d!122163 d!122215))

(declare-fun d!122217 () Bool)

(declare-fun res!683712 () Bool)

(declare-fun e!574048 () Bool)

(assert (=> d!122217 (=> res!683712 e!574048)))

(assert (=> d!122217 (= res!683712 (or ((_ is Nil!21731) lt!449718) ((_ is Nil!21731) (t!30748 lt!449718))))))

(assert (=> d!122217 (= (isStrictlySorted!681 lt!449718) e!574048)))

(declare-fun b!1019888 () Bool)

(declare-fun e!574049 () Bool)

(assert (=> b!1019888 (= e!574048 e!574049)))

(declare-fun res!683713 () Bool)

(assert (=> b!1019888 (=> (not res!683713) (not e!574049))))

(assert (=> b!1019888 (= res!683713 (bvslt (_1!7760 (h!22928 lt!449718)) (_1!7760 (h!22928 (t!30748 lt!449718)))))))

(declare-fun b!1019889 () Bool)

(assert (=> b!1019889 (= e!574049 (isStrictlySorted!681 (t!30748 lt!449718)))))

(assert (= (and d!122217 (not res!683712)) b!1019888))

(assert (= (and b!1019888 res!683713) b!1019889))

(declare-fun m!940191 () Bool)

(assert (=> b!1019889 m!940191))

(assert (=> d!122165 d!122217))

(assert (=> d!122165 d!122159))

(declare-fun d!122219 () Bool)

(declare-fun res!683714 () Bool)

(declare-fun e!574050 () Bool)

(assert (=> d!122219 (=> res!683714 e!574050)))

(assert (=> d!122219 (= res!683714 (and ((_ is Cons!21730) (t!30748 l!996)) (= (_1!7760 (h!22928 (t!30748 l!996))) key!261)))))

(assert (=> d!122219 (= (containsKey!546 (t!30748 l!996) key!261) e!574050)))

(declare-fun b!1019890 () Bool)

(declare-fun e!574051 () Bool)

(assert (=> b!1019890 (= e!574050 e!574051)))

(declare-fun res!683715 () Bool)

(assert (=> b!1019890 (=> (not res!683715) (not e!574051))))

(assert (=> b!1019890 (= res!683715 (and (or (not ((_ is Cons!21730) (t!30748 l!996))) (bvsle (_1!7760 (h!22928 (t!30748 l!996))) key!261)) ((_ is Cons!21730) (t!30748 l!996)) (bvslt (_1!7760 (h!22928 (t!30748 l!996))) key!261)))))

(declare-fun b!1019891 () Bool)

(assert (=> b!1019891 (= e!574051 (containsKey!546 (t!30748 (t!30748 l!996)) key!261))))

(assert (= (and d!122219 (not res!683714)) b!1019890))

(assert (= (and b!1019890 res!683715) b!1019891))

(declare-fun m!940193 () Bool)

(assert (=> b!1019891 m!940193))

(assert (=> b!1019771 d!122219))

(declare-fun d!122221 () Bool)

(declare-fun lt!449738 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!496 (List!21734) (InoxSet tuple2!15500))

(assert (=> d!122221 (= lt!449738 (select (content!496 lt!449718) (tuple2!15501 key!261 value!172)))))

(declare-fun e!574057 () Bool)

(assert (=> d!122221 (= lt!449738 e!574057)))

(declare-fun res!683720 () Bool)

(assert (=> d!122221 (=> (not res!683720) (not e!574057))))

(assert (=> d!122221 (= res!683720 ((_ is Cons!21730) lt!449718))))

(assert (=> d!122221 (= (contains!5924 lt!449718 (tuple2!15501 key!261 value!172)) lt!449738)))

(declare-fun b!1019896 () Bool)

(declare-fun e!574056 () Bool)

(assert (=> b!1019896 (= e!574057 e!574056)))

(declare-fun res!683721 () Bool)

(assert (=> b!1019896 (=> res!683721 e!574056)))

(assert (=> b!1019896 (= res!683721 (= (h!22928 lt!449718) (tuple2!15501 key!261 value!172)))))

(declare-fun b!1019897 () Bool)

(assert (=> b!1019897 (= e!574056 (contains!5924 (t!30748 lt!449718) (tuple2!15501 key!261 value!172)))))

(assert (= (and d!122221 res!683720) b!1019896))

(assert (= (and b!1019896 (not res!683721)) b!1019897))

(declare-fun m!940195 () Bool)

(assert (=> d!122221 m!940195))

(declare-fun m!940197 () Bool)

(assert (=> d!122221 m!940197))

(declare-fun m!940199 () Bool)

(assert (=> b!1019897 m!940199))

(assert (=> b!1019751 d!122221))

(declare-fun d!122223 () Bool)

(declare-fun res!683722 () Bool)

(declare-fun e!574058 () Bool)

(assert (=> d!122223 (=> res!683722 e!574058)))

(assert (=> d!122223 (= res!683722 (or ((_ is Nil!21731) (t!30748 l!996)) ((_ is Nil!21731) (t!30748 (t!30748 l!996)))))))

(assert (=> d!122223 (= (isStrictlySorted!681 (t!30748 l!996)) e!574058)))

(declare-fun b!1019898 () Bool)

(declare-fun e!574059 () Bool)

(assert (=> b!1019898 (= e!574058 e!574059)))

(declare-fun res!683723 () Bool)

(assert (=> b!1019898 (=> (not res!683723) (not e!574059))))

(assert (=> b!1019898 (= res!683723 (bvslt (_1!7760 (h!22928 (t!30748 l!996))) (_1!7760 (h!22928 (t!30748 (t!30748 l!996))))))))

(declare-fun b!1019899 () Bool)

(assert (=> b!1019899 (= e!574059 (isStrictlySorted!681 (t!30748 (t!30748 l!996))))))

(assert (= (and d!122223 (not res!683722)) b!1019898))

(assert (= (and b!1019898 res!683723) b!1019899))

(declare-fun m!940201 () Bool)

(assert (=> b!1019899 m!940201))

(assert (=> b!1019699 d!122223))

(declare-fun b!1019900 () Bool)

(declare-fun e!574060 () Bool)

(declare-fun tp!71188 () Bool)

(assert (=> b!1019900 (= e!574060 (and tp_is_empty!23763 tp!71188))))

(assert (=> b!1019782 (= tp!71180 e!574060)))

(assert (= (and b!1019782 ((_ is Cons!21730) (t!30748 (t!30748 l!996)))) b!1019900))

(check-sat (not b!1019883) (not bm!43150) (not b!1019891) (not d!122221) (not b!1019887) (not b!1019878) (not d!122213) (not b!1019900) (not b!1019881) (not b!1019875) (not b!1019869) tp_is_empty!23763 (not b!1019899) (not b!1019897) (not b!1019889))
(check-sat)
