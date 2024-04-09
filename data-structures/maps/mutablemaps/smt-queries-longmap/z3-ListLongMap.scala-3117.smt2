; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43824 () Bool)

(assert start!43824)

(declare-fun res!288381 () Bool)

(declare-fun e!284841 () Bool)

(assert (=> start!43824 (=> (not res!288381) (not e!284841))))

(declare-datatypes ((B!1126 0))(
  ( (B!1127 (val!7015 Int)) )
))
(declare-datatypes ((tuple2!9228 0))(
  ( (tuple2!9229 (_1!4624 (_ BitVec 64)) (_2!4624 B!1126)) )
))
(declare-datatypes ((List!9314 0))(
  ( (Nil!9311) (Cons!9310 (h!10166 tuple2!9228) (t!15544 List!9314)) )
))
(declare-fun l!956 () List!9314)

(declare-fun isStrictlySorted!414 (List!9314) Bool)

(assert (=> start!43824 (= res!288381 (isStrictlySorted!414 l!956))))

(assert (=> start!43824 e!284841))

(declare-fun e!284840 () Bool)

(assert (=> start!43824 e!284840))

(assert (=> start!43824 true))

(declare-fun tp_is_empty!13935 () Bool)

(assert (=> start!43824 tp_is_empty!13935))

(declare-fun b!483889 () Bool)

(declare-fun e!284842 () Bool)

(assert (=> b!483889 (= e!284842 (not (isStrictlySorted!414 (t!15544 l!956))))))

(declare-fun b!483887 () Bool)

(declare-fun res!288383 () Bool)

(assert (=> b!483887 (=> (not res!288383) (not e!284841))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!380 (List!9314 (_ BitVec 64)) Bool)

(assert (=> b!483887 (= res!288383 (not (containsKey!380 l!956 key!251)))))

(declare-fun b!483888 () Bool)

(assert (=> b!483888 (= e!284841 e!284842)))

(declare-fun res!288382 () Bool)

(assert (=> b!483888 (=> (not res!288382) (not e!284842))))

(get-info :version)

(assert (=> b!483888 (= res!288382 (and ((_ is Cons!9310) l!956) (bvslt (_1!4624 (h!10166 l!956)) key!251)))))

(declare-fun lt!219308 () List!9314)

(declare-fun value!166 () B!1126)

(declare-fun insertStrictlySorted!233 (List!9314 (_ BitVec 64) B!1126) List!9314)

(assert (=> b!483888 (= lt!219308 (insertStrictlySorted!233 l!956 key!251 value!166))))

(declare-fun b!483890 () Bool)

(declare-fun tp!43501 () Bool)

(assert (=> b!483890 (= e!284840 (and tp_is_empty!13935 tp!43501))))

(assert (= (and start!43824 res!288381) b!483887))

(assert (= (and b!483887 res!288383) b!483888))

(assert (= (and b!483888 res!288382) b!483889))

(assert (= (and start!43824 ((_ is Cons!9310) l!956)) b!483890))

(declare-fun m!464727 () Bool)

(assert (=> start!43824 m!464727))

(declare-fun m!464729 () Bool)

(assert (=> b!483889 m!464729))

(declare-fun m!464731 () Bool)

(assert (=> b!483887 m!464731))

(declare-fun m!464733 () Bool)

(assert (=> b!483888 m!464733))

(check-sat (not b!483888) (not b!483889) (not start!43824) (not b!483887) (not b!483890) tp_is_empty!13935)
(check-sat)
(get-model)

(declare-fun d!76919 () Bool)

(declare-fun res!288401 () Bool)

(declare-fun e!284860 () Bool)

(assert (=> d!76919 (=> res!288401 e!284860)))

(assert (=> d!76919 (= res!288401 (and ((_ is Cons!9310) l!956) (= (_1!4624 (h!10166 l!956)) key!251)))))

(assert (=> d!76919 (= (containsKey!380 l!956 key!251) e!284860)))

(declare-fun b!483911 () Bool)

(declare-fun e!284861 () Bool)

(assert (=> b!483911 (= e!284860 e!284861)))

(declare-fun res!288402 () Bool)

(assert (=> b!483911 (=> (not res!288402) (not e!284861))))

(assert (=> b!483911 (= res!288402 (and (or (not ((_ is Cons!9310) l!956)) (bvsle (_1!4624 (h!10166 l!956)) key!251)) ((_ is Cons!9310) l!956) (bvslt (_1!4624 (h!10166 l!956)) key!251)))))

(declare-fun b!483912 () Bool)

(assert (=> b!483912 (= e!284861 (containsKey!380 (t!15544 l!956) key!251))))

(assert (= (and d!76919 (not res!288401)) b!483911))

(assert (= (and b!483911 res!288402) b!483912))

(declare-fun m!464743 () Bool)

(assert (=> b!483912 m!464743))

(assert (=> b!483887 d!76919))

(declare-fun b!483979 () Bool)

(declare-fun res!288422 () Bool)

(declare-fun e!284903 () Bool)

(assert (=> b!483979 (=> (not res!288422) (not e!284903))))

(declare-fun lt!219318 () List!9314)

(assert (=> b!483979 (= res!288422 (containsKey!380 lt!219318 key!251))))

(declare-fun b!483980 () Bool)

(declare-fun e!284902 () List!9314)

(declare-fun call!31083 () List!9314)

(assert (=> b!483980 (= e!284902 call!31083)))

(declare-fun b!483981 () Bool)

(declare-fun e!284900 () List!9314)

(assert (=> b!483981 (= e!284900 (insertStrictlySorted!233 (t!15544 l!956) key!251 value!166))))

(declare-fun bm!31080 () Bool)

(declare-fun call!31085 () List!9314)

(assert (=> bm!31080 (= call!31083 call!31085)))

(declare-fun b!483982 () Bool)

(assert (=> b!483982 (= e!284902 call!31083)))

(declare-fun b!483983 () Bool)

(declare-fun e!284904 () List!9314)

(assert (=> b!483983 (= e!284904 call!31085)))

(declare-fun b!483984 () Bool)

(declare-fun c!58123 () Bool)

(assert (=> b!483984 (= c!58123 (and ((_ is Cons!9310) l!956) (bvsgt (_1!4624 (h!10166 l!956)) key!251)))))

(assert (=> b!483984 (= e!284904 e!284902)))

(declare-fun c!58124 () Bool)

(declare-fun b!483985 () Bool)

(assert (=> b!483985 (= e!284900 (ite c!58124 (t!15544 l!956) (ite c!58123 (Cons!9310 (h!10166 l!956) (t!15544 l!956)) Nil!9311)))))

(declare-fun b!483986 () Bool)

(declare-fun e!284901 () List!9314)

(assert (=> b!483986 (= e!284901 e!284904)))

(assert (=> b!483986 (= c!58124 (and ((_ is Cons!9310) l!956) (= (_1!4624 (h!10166 l!956)) key!251)))))

(declare-fun b!483987 () Bool)

(declare-fun call!31084 () List!9314)

(assert (=> b!483987 (= e!284901 call!31084)))

(declare-fun d!76923 () Bool)

(assert (=> d!76923 e!284903))

(declare-fun res!288421 () Bool)

(assert (=> d!76923 (=> (not res!288421) (not e!284903))))

(assert (=> d!76923 (= res!288421 (isStrictlySorted!414 lt!219318))))

(assert (=> d!76923 (= lt!219318 e!284901)))

(declare-fun c!58122 () Bool)

(assert (=> d!76923 (= c!58122 (and ((_ is Cons!9310) l!956) (bvslt (_1!4624 (h!10166 l!956)) key!251)))))

(assert (=> d!76923 (isStrictlySorted!414 l!956)))

(assert (=> d!76923 (= (insertStrictlySorted!233 l!956 key!251 value!166) lt!219318)))

(declare-fun bm!31081 () Bool)

(assert (=> bm!31081 (= call!31085 call!31084)))

(declare-fun b!483988 () Bool)

(declare-fun contains!2677 (List!9314 tuple2!9228) Bool)

(assert (=> b!483988 (= e!284903 (contains!2677 lt!219318 (tuple2!9229 key!251 value!166)))))

(declare-fun bm!31082 () Bool)

(declare-fun $colon$colon!115 (List!9314 tuple2!9228) List!9314)

(assert (=> bm!31082 (= call!31084 ($colon$colon!115 e!284900 (ite c!58122 (h!10166 l!956) (tuple2!9229 key!251 value!166))))))

(declare-fun c!58125 () Bool)

(assert (=> bm!31082 (= c!58125 c!58122)))

(assert (= (and d!76923 c!58122) b!483987))

(assert (= (and d!76923 (not c!58122)) b!483986))

(assert (= (and b!483986 c!58124) b!483983))

(assert (= (and b!483986 (not c!58124)) b!483984))

(assert (= (and b!483984 c!58123) b!483982))

(assert (= (and b!483984 (not c!58123)) b!483980))

(assert (= (or b!483982 b!483980) bm!31080))

(assert (= (or b!483983 bm!31080) bm!31081))

(assert (= (or b!483987 bm!31081) bm!31082))

(assert (= (and bm!31082 c!58125) b!483981))

(assert (= (and bm!31082 (not c!58125)) b!483985))

(assert (= (and d!76923 res!288421) b!483979))

(assert (= (and b!483979 res!288422) b!483988))

(declare-fun m!464749 () Bool)

(assert (=> bm!31082 m!464749))

(declare-fun m!464751 () Bool)

(assert (=> b!483981 m!464751))

(declare-fun m!464753 () Bool)

(assert (=> d!76923 m!464753))

(assert (=> d!76923 m!464727))

(declare-fun m!464755 () Bool)

(assert (=> b!483988 m!464755))

(declare-fun m!464757 () Bool)

(assert (=> b!483979 m!464757))

(assert (=> b!483888 d!76923))

(declare-fun d!76933 () Bool)

(declare-fun res!288437 () Bool)

(declare-fun e!284920 () Bool)

(assert (=> d!76933 (=> res!288437 e!284920)))

(assert (=> d!76933 (= res!288437 (or ((_ is Nil!9311) l!956) ((_ is Nil!9311) (t!15544 l!956))))))

(assert (=> d!76933 (= (isStrictlySorted!414 l!956) e!284920)))

(declare-fun b!484011 () Bool)

(declare-fun e!284921 () Bool)

(assert (=> b!484011 (= e!284920 e!284921)))

(declare-fun res!288438 () Bool)

(assert (=> b!484011 (=> (not res!288438) (not e!284921))))

(assert (=> b!484011 (= res!288438 (bvslt (_1!4624 (h!10166 l!956)) (_1!4624 (h!10166 (t!15544 l!956)))))))

(declare-fun b!484012 () Bool)

(assert (=> b!484012 (= e!284921 (isStrictlySorted!414 (t!15544 l!956)))))

(assert (= (and d!76933 (not res!288437)) b!484011))

(assert (= (and b!484011 res!288438) b!484012))

(assert (=> b!484012 m!464729))

(assert (=> start!43824 d!76933))

(declare-fun d!76937 () Bool)

(declare-fun res!288439 () Bool)

(declare-fun e!284922 () Bool)

(assert (=> d!76937 (=> res!288439 e!284922)))

(assert (=> d!76937 (= res!288439 (or ((_ is Nil!9311) (t!15544 l!956)) ((_ is Nil!9311) (t!15544 (t!15544 l!956)))))))

(assert (=> d!76937 (= (isStrictlySorted!414 (t!15544 l!956)) e!284922)))

(declare-fun b!484013 () Bool)

(declare-fun e!284923 () Bool)

(assert (=> b!484013 (= e!284922 e!284923)))

(declare-fun res!288440 () Bool)

(assert (=> b!484013 (=> (not res!288440) (not e!284923))))

(assert (=> b!484013 (= res!288440 (bvslt (_1!4624 (h!10166 (t!15544 l!956))) (_1!4624 (h!10166 (t!15544 (t!15544 l!956))))))))

(declare-fun b!484014 () Bool)

(assert (=> b!484014 (= e!284923 (isStrictlySorted!414 (t!15544 (t!15544 l!956))))))

(assert (= (and d!76937 (not res!288439)) b!484013))

(assert (= (and b!484013 res!288440) b!484014))

(declare-fun m!464769 () Bool)

(assert (=> b!484014 m!464769))

(assert (=> b!483889 d!76937))

(declare-fun b!484031 () Bool)

(declare-fun e!284933 () Bool)

(declare-fun tp!43507 () Bool)

(assert (=> b!484031 (= e!284933 (and tp_is_empty!13935 tp!43507))))

(assert (=> b!483890 (= tp!43501 e!284933)))

(assert (= (and b!483890 ((_ is Cons!9310) (t!15544 l!956))) b!484031))

(check-sat (not b!484014) (not bm!31082) (not b!483979) (not b!483912) tp_is_empty!13935 (not b!484031) (not b!483988) (not b!484012) (not d!76923) (not b!483981))
(check-sat)
