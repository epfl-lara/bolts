; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43848 () Bool)

(assert start!43848)

(declare-fun res!288476 () Bool)

(declare-fun e!284965 () Bool)

(assert (=> start!43848 (=> (not res!288476) (not e!284965))))

(declare-datatypes ((B!1132 0))(
  ( (B!1133 (val!7018 Int)) )
))
(declare-datatypes ((tuple2!9234 0))(
  ( (tuple2!9235 (_1!4627 (_ BitVec 64)) (_2!4627 B!1132)) )
))
(declare-datatypes ((List!9317 0))(
  ( (Nil!9314) (Cons!9313 (h!10169 tuple2!9234) (t!15547 List!9317)) )
))
(declare-fun l!956 () List!9317)

(declare-fun isStrictlySorted!417 (List!9317) Bool)

(assert (=> start!43848 (= res!288476 (isStrictlySorted!417 l!956))))

(assert (=> start!43848 e!284965))

(declare-fun e!284963 () Bool)

(assert (=> start!43848 e!284963))

(assert (=> start!43848 true))

(declare-fun tp_is_empty!13941 () Bool)

(assert (=> start!43848 tp_is_empty!13941))

(declare-fun b!484075 () Bool)

(declare-fun tp!43519 () Bool)

(assert (=> b!484075 (= e!284963 (and tp_is_empty!13941 tp!43519))))

(declare-fun b!484076 () Bool)

(declare-fun e!284964 () Bool)

(assert (=> b!484076 (= e!284965 e!284964)))

(declare-fun res!288475 () Bool)

(assert (=> b!484076 (=> (not res!288475) (not e!284964))))

(declare-fun key!251 () (_ BitVec 64))

(get-info :version)

(assert (=> b!484076 (= res!288475 (and ((_ is Cons!9313) l!956) (bvslt (_1!4627 (h!10169 l!956)) key!251)))))

(declare-fun lt!219326 () List!9317)

(declare-fun value!166 () B!1132)

(declare-fun insertStrictlySorted!236 (List!9317 (_ BitVec 64) B!1132) List!9317)

(assert (=> b!484076 (= lt!219326 (insertStrictlySorted!236 l!956 key!251 value!166))))

(declare-fun b!484077 () Bool)

(declare-fun containsKey!383 (List!9317 (_ BitVec 64)) Bool)

(assert (=> b!484077 (= e!284964 (containsKey!383 (t!15547 l!956) key!251))))

(declare-fun b!484078 () Bool)

(declare-fun res!288473 () Bool)

(assert (=> b!484078 (=> (not res!288473) (not e!284964))))

(assert (=> b!484078 (= res!288473 (isStrictlySorted!417 (t!15547 l!956)))))

(declare-fun b!484079 () Bool)

(declare-fun res!288474 () Bool)

(assert (=> b!484079 (=> (not res!288474) (not e!284965))))

(assert (=> b!484079 (= res!288474 (not (containsKey!383 l!956 key!251)))))

(assert (= (and start!43848 res!288476) b!484079))

(assert (= (and b!484079 res!288474) b!484076))

(assert (= (and b!484076 res!288475) b!484078))

(assert (= (and b!484078 res!288473) b!484077))

(assert (= (and start!43848 ((_ is Cons!9313) l!956)) b!484075))

(declare-fun m!464795 () Bool)

(assert (=> b!484078 m!464795))

(declare-fun m!464797 () Bool)

(assert (=> b!484076 m!464797))

(declare-fun m!464799 () Bool)

(assert (=> b!484077 m!464799))

(declare-fun m!464801 () Bool)

(assert (=> start!43848 m!464801))

(declare-fun m!464803 () Bool)

(assert (=> b!484079 m!464803))

(check-sat tp_is_empty!13941 (not start!43848) (not b!484075) (not b!484078) (not b!484079) (not b!484077) (not b!484076))
(check-sat)
(get-model)

(declare-fun d!76945 () Bool)

(declare-fun res!288493 () Bool)

(declare-fun e!284979 () Bool)

(assert (=> d!76945 (=> res!288493 e!284979)))

(assert (=> d!76945 (= res!288493 (or ((_ is Nil!9314) (t!15547 l!956)) ((_ is Nil!9314) (t!15547 (t!15547 l!956)))))))

(assert (=> d!76945 (= (isStrictlySorted!417 (t!15547 l!956)) e!284979)))

(declare-fun b!484099 () Bool)

(declare-fun e!284980 () Bool)

(assert (=> b!484099 (= e!284979 e!284980)))

(declare-fun res!288494 () Bool)

(assert (=> b!484099 (=> (not res!288494) (not e!284980))))

(assert (=> b!484099 (= res!288494 (bvslt (_1!4627 (h!10169 (t!15547 l!956))) (_1!4627 (h!10169 (t!15547 (t!15547 l!956))))))))

(declare-fun b!484100 () Bool)

(assert (=> b!484100 (= e!284980 (isStrictlySorted!417 (t!15547 (t!15547 l!956))))))

(assert (= (and d!76945 (not res!288493)) b!484099))

(assert (= (and b!484099 res!288494) b!484100))

(declare-fun m!464815 () Bool)

(assert (=> b!484100 m!464815))

(assert (=> b!484078 d!76945))

(declare-fun d!76947 () Bool)

(declare-fun res!288495 () Bool)

(declare-fun e!284981 () Bool)

(assert (=> d!76947 (=> res!288495 e!284981)))

(assert (=> d!76947 (= res!288495 (or ((_ is Nil!9314) l!956) ((_ is Nil!9314) (t!15547 l!956))))))

(assert (=> d!76947 (= (isStrictlySorted!417 l!956) e!284981)))

(declare-fun b!484101 () Bool)

(declare-fun e!284982 () Bool)

(assert (=> b!484101 (= e!284981 e!284982)))

(declare-fun res!288496 () Bool)

(assert (=> b!484101 (=> (not res!288496) (not e!284982))))

(assert (=> b!484101 (= res!288496 (bvslt (_1!4627 (h!10169 l!956)) (_1!4627 (h!10169 (t!15547 l!956)))))))

(declare-fun b!484102 () Bool)

(assert (=> b!484102 (= e!284982 (isStrictlySorted!417 (t!15547 l!956)))))

(assert (= (and d!76947 (not res!288495)) b!484101))

(assert (= (and b!484101 res!288496) b!484102))

(assert (=> b!484102 m!464795))

(assert (=> start!43848 d!76947))

(declare-fun d!76949 () Bool)

(declare-fun res!288501 () Bool)

(declare-fun e!284987 () Bool)

(assert (=> d!76949 (=> res!288501 e!284987)))

(assert (=> d!76949 (= res!288501 (and ((_ is Cons!9313) (t!15547 l!956)) (= (_1!4627 (h!10169 (t!15547 l!956))) key!251)))))

(assert (=> d!76949 (= (containsKey!383 (t!15547 l!956) key!251) e!284987)))

(declare-fun b!484107 () Bool)

(declare-fun e!284988 () Bool)

(assert (=> b!484107 (= e!284987 e!284988)))

(declare-fun res!288502 () Bool)

(assert (=> b!484107 (=> (not res!288502) (not e!284988))))

(assert (=> b!484107 (= res!288502 (and (or (not ((_ is Cons!9313) (t!15547 l!956))) (bvsle (_1!4627 (h!10169 (t!15547 l!956))) key!251)) ((_ is Cons!9313) (t!15547 l!956)) (bvslt (_1!4627 (h!10169 (t!15547 l!956))) key!251)))))

(declare-fun b!484108 () Bool)

(assert (=> b!484108 (= e!284988 (containsKey!383 (t!15547 (t!15547 l!956)) key!251))))

(assert (= (and d!76949 (not res!288501)) b!484107))

(assert (= (and b!484107 res!288502) b!484108))

(declare-fun m!464817 () Bool)

(assert (=> b!484108 m!464817))

(assert (=> b!484077 d!76949))

(declare-fun bm!31108 () Bool)

(declare-fun call!31114 () List!9317)

(declare-fun call!31115 () List!9317)

(assert (=> bm!31108 (= call!31114 call!31115)))

(declare-fun b!484177 () Bool)

(declare-fun e!285027 () List!9317)

(declare-fun call!31113 () List!9317)

(assert (=> b!484177 (= e!285027 call!31113)))

(declare-fun d!76953 () Bool)

(declare-fun e!285026 () Bool)

(assert (=> d!76953 e!285026))

(declare-fun res!288519 () Bool)

(assert (=> d!76953 (=> (not res!288519) (not e!285026))))

(declare-fun lt!219337 () List!9317)

(assert (=> d!76953 (= res!288519 (isStrictlySorted!417 lt!219337))))

(assert (=> d!76953 (= lt!219337 e!285027)))

(declare-fun c!58161 () Bool)

(assert (=> d!76953 (= c!58161 (and ((_ is Cons!9313) l!956) (bvslt (_1!4627 (h!10169 l!956)) key!251)))))

(assert (=> d!76953 (isStrictlySorted!417 l!956)))

(assert (=> d!76953 (= (insertStrictlySorted!236 l!956 key!251 value!166) lt!219337)))

(declare-fun e!285029 () List!9317)

(declare-fun b!484178 () Bool)

(assert (=> b!484178 (= e!285029 (insertStrictlySorted!236 (t!15547 l!956) key!251 value!166))))

(declare-fun b!484179 () Bool)

(declare-fun e!285030 () List!9317)

(assert (=> b!484179 (= e!285030 call!31114)))

(declare-fun b!484180 () Bool)

(declare-fun e!285028 () List!9317)

(assert (=> b!484180 (= e!285028 call!31115)))

(declare-fun b!484181 () Bool)

(declare-fun c!58160 () Bool)

(declare-fun c!58162 () Bool)

(assert (=> b!484181 (= e!285029 (ite c!58160 (t!15547 l!956) (ite c!58162 (Cons!9313 (h!10169 l!956) (t!15547 l!956)) Nil!9314)))))

(declare-fun b!484182 () Bool)

(declare-fun res!288520 () Bool)

(assert (=> b!484182 (=> (not res!288520) (not e!285026))))

(assert (=> b!484182 (= res!288520 (containsKey!383 lt!219337 key!251))))

(declare-fun bm!31109 () Bool)

(assert (=> bm!31109 (= call!31115 call!31113)))

(declare-fun b!484183 () Bool)

(assert (=> b!484183 (= c!58162 (and ((_ is Cons!9313) l!956) (bvsgt (_1!4627 (h!10169 l!956)) key!251)))))

(assert (=> b!484183 (= e!285028 e!285030)))

(declare-fun b!484184 () Bool)

(declare-fun contains!2681 (List!9317 tuple2!9234) Bool)

(assert (=> b!484184 (= e!285026 (contains!2681 lt!219337 (tuple2!9235 key!251 value!166)))))

(declare-fun b!484185 () Bool)

(assert (=> b!484185 (= e!285027 e!285028)))

(assert (=> b!484185 (= c!58160 (and ((_ is Cons!9313) l!956) (= (_1!4627 (h!10169 l!956)) key!251)))))

(declare-fun b!484186 () Bool)

(assert (=> b!484186 (= e!285030 call!31114)))

(declare-fun bm!31110 () Bool)

(declare-fun $colon$colon!119 (List!9317 tuple2!9234) List!9317)

(assert (=> bm!31110 (= call!31113 ($colon$colon!119 e!285029 (ite c!58161 (h!10169 l!956) (tuple2!9235 key!251 value!166))))))

(declare-fun c!58163 () Bool)

(assert (=> bm!31110 (= c!58163 c!58161)))

(assert (= (and d!76953 c!58161) b!484177))

(assert (= (and d!76953 (not c!58161)) b!484185))

(assert (= (and b!484185 c!58160) b!484180))

(assert (= (and b!484185 (not c!58160)) b!484183))

(assert (= (and b!484183 c!58162) b!484179))

(assert (= (and b!484183 (not c!58162)) b!484186))

(assert (= (or b!484179 b!484186) bm!31108))

(assert (= (or b!484180 bm!31108) bm!31109))

(assert (= (or b!484177 bm!31109) bm!31110))

(assert (= (and bm!31110 c!58163) b!484178))

(assert (= (and bm!31110 (not c!58163)) b!484181))

(assert (= (and d!76953 res!288519) b!484182))

(assert (= (and b!484182 res!288520) b!484184))

(declare-fun m!464831 () Bool)

(assert (=> d!76953 m!464831))

(assert (=> d!76953 m!464801))

(declare-fun m!464833 () Bool)

(assert (=> bm!31110 m!464833))

(declare-fun m!464835 () Bool)

(assert (=> b!484178 m!464835))

(declare-fun m!464837 () Bool)

(assert (=> b!484182 m!464837))

(declare-fun m!464839 () Bool)

(assert (=> b!484184 m!464839))

(assert (=> b!484076 d!76953))

(declare-fun d!76961 () Bool)

(declare-fun res!288525 () Bool)

(declare-fun e!285035 () Bool)

(assert (=> d!76961 (=> res!288525 e!285035)))

(assert (=> d!76961 (= res!288525 (and ((_ is Cons!9313) l!956) (= (_1!4627 (h!10169 l!956)) key!251)))))

(assert (=> d!76961 (= (containsKey!383 l!956 key!251) e!285035)))

(declare-fun b!484195 () Bool)

(declare-fun e!285036 () Bool)

(assert (=> b!484195 (= e!285035 e!285036)))

(declare-fun res!288526 () Bool)

(assert (=> b!484195 (=> (not res!288526) (not e!285036))))

(assert (=> b!484195 (= res!288526 (and (or (not ((_ is Cons!9313) l!956)) (bvsle (_1!4627 (h!10169 l!956)) key!251)) ((_ is Cons!9313) l!956) (bvslt (_1!4627 (h!10169 l!956)) key!251)))))

(declare-fun b!484196 () Bool)

(assert (=> b!484196 (= e!285036 (containsKey!383 (t!15547 l!956) key!251))))

(assert (= (and d!76961 (not res!288525)) b!484195))

(assert (= (and b!484195 res!288526) b!484196))

(assert (=> b!484196 m!464799))

(assert (=> b!484079 d!76961))

(declare-fun b!484201 () Bool)

(declare-fun e!285039 () Bool)

(declare-fun tp!43525 () Bool)

(assert (=> b!484201 (= e!285039 (and tp_is_empty!13941 tp!43525))))

(assert (=> b!484075 (= tp!43519 e!285039)))

(assert (= (and b!484075 ((_ is Cons!9313) (t!15547 l!956))) b!484201))

(check-sat (not b!484178) (not b!484100) (not b!484184) (not bm!31110) (not b!484108) (not b!484201) (not b!484102) (not b!484196) (not d!76953) tp_is_empty!13941 (not b!484182))
(check-sat)
