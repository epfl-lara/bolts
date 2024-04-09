; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!43872 () Bool)

(assert start!43872)

(declare-fun res!288582 () Bool)

(declare-fun e!285092 () Bool)

(assert (=> start!43872 (=> (not res!288582) (not e!285092))))

(declare-datatypes ((B!1138 0))(
  ( (B!1139 (val!7021 Int)) )
))
(declare-datatypes ((tuple2!9240 0))(
  ( (tuple2!9241 (_1!4630 (_ BitVec 64)) (_2!4630 B!1138)) )
))
(declare-datatypes ((List!9320 0))(
  ( (Nil!9317) (Cons!9316 (h!10172 tuple2!9240) (t!15550 List!9320)) )
))
(declare-fun l!956 () List!9320)

(declare-fun isStrictlySorted!420 (List!9320) Bool)

(assert (=> start!43872 (= res!288582 (isStrictlySorted!420 l!956))))

(assert (=> start!43872 e!285092))

(declare-fun e!285094 () Bool)

(assert (=> start!43872 e!285094))

(assert (=> start!43872 true))

(declare-fun tp_is_empty!13947 () Bool)

(assert (=> start!43872 tp_is_empty!13947))

(declare-fun b!484278 () Bool)

(declare-fun res!288583 () Bool)

(declare-fun e!285093 () Bool)

(assert (=> b!484278 (=> (not res!288583) (not e!285093))))

(assert (=> b!484278 (= res!288583 (isStrictlySorted!420 (t!15550 l!956)))))

(declare-fun b!484279 () Bool)

(declare-fun res!288580 () Bool)

(assert (=> b!484279 (=> (not res!288580) (not e!285093))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!386 (List!9320 (_ BitVec 64)) Bool)

(assert (=> b!484279 (= res!288580 (not (containsKey!386 (t!15550 l!956) key!251)))))

(declare-fun b!484280 () Bool)

(assert (=> b!484280 (= e!285092 e!285093)))

(declare-fun res!288581 () Bool)

(assert (=> b!484280 (=> (not res!288581) (not e!285093))))

(get-info :version)

(assert (=> b!484280 (= res!288581 (and ((_ is Cons!9316) l!956) (bvslt (_1!4630 (h!10172 l!956)) key!251)))))

(declare-fun lt!219344 () List!9320)

(declare-fun value!166 () B!1138)

(declare-fun insertStrictlySorted!239 (List!9320 (_ BitVec 64) B!1138) List!9320)

(assert (=> b!484280 (= lt!219344 (insertStrictlySorted!239 l!956 key!251 value!166))))

(declare-fun b!484281 () Bool)

(declare-fun res!288584 () Bool)

(assert (=> b!484281 (=> (not res!288584) (not e!285092))))

(assert (=> b!484281 (= res!288584 (not (containsKey!386 l!956 key!251)))))

(declare-fun b!484282 () Bool)

(declare-fun tp!43537 () Bool)

(assert (=> b!484282 (= e!285094 (and tp_is_empty!13947 tp!43537))))

(declare-fun b!484283 () Bool)

(declare-fun ListPrimitiveSize!65 (List!9320) Int)

(assert (=> b!484283 (= e!285093 (>= (ListPrimitiveSize!65 (t!15550 l!956)) (ListPrimitiveSize!65 l!956)))))

(assert (= (and start!43872 res!288582) b!484281))

(assert (= (and b!484281 res!288584) b!484280))

(assert (= (and b!484280 res!288581) b!484278))

(assert (= (and b!484278 res!288583) b!484279))

(assert (= (and b!484279 res!288580) b!484283))

(assert (= (and start!43872 ((_ is Cons!9316) l!956)) b!484282))

(declare-fun m!464871 () Bool)

(assert (=> b!484281 m!464871))

(declare-fun m!464873 () Bool)

(assert (=> b!484278 m!464873))

(declare-fun m!464875 () Bool)

(assert (=> start!43872 m!464875))

(declare-fun m!464877 () Bool)

(assert (=> b!484283 m!464877))

(declare-fun m!464879 () Bool)

(assert (=> b!484283 m!464879))

(declare-fun m!464881 () Bool)

(assert (=> b!484279 m!464881))

(declare-fun m!464883 () Bool)

(assert (=> b!484280 m!464883))

(check-sat (not b!484278) (not b!484283) (not start!43872) tp_is_empty!13947 (not b!484279) (not b!484280) (not b!484281) (not b!484282))
(check-sat)
(get-model)

(declare-fun d!76977 () Bool)

(declare-fun res!288604 () Bool)

(declare-fun e!285108 () Bool)

(assert (=> d!76977 (=> res!288604 e!285108)))

(assert (=> d!76977 (= res!288604 (and ((_ is Cons!9316) l!956) (= (_1!4630 (h!10172 l!956)) key!251)))))

(assert (=> d!76977 (= (containsKey!386 l!956 key!251) e!285108)))

(declare-fun b!484306 () Bool)

(declare-fun e!285109 () Bool)

(assert (=> b!484306 (= e!285108 e!285109)))

(declare-fun res!288605 () Bool)

(assert (=> b!484306 (=> (not res!288605) (not e!285109))))

(assert (=> b!484306 (= res!288605 (and (or (not ((_ is Cons!9316) l!956)) (bvsle (_1!4630 (h!10172 l!956)) key!251)) ((_ is Cons!9316) l!956) (bvslt (_1!4630 (h!10172 l!956)) key!251)))))

(declare-fun b!484307 () Bool)

(assert (=> b!484307 (= e!285109 (containsKey!386 (t!15550 l!956) key!251))))

(assert (= (and d!76977 (not res!288604)) b!484306))

(assert (= (and b!484306 res!288605) b!484307))

(assert (=> b!484307 m!464881))

(assert (=> b!484281 d!76977))

(declare-fun d!76981 () Bool)

(declare-fun res!288616 () Bool)

(declare-fun e!285120 () Bool)

(assert (=> d!76981 (=> res!288616 e!285120)))

(assert (=> d!76981 (= res!288616 (or ((_ is Nil!9317) l!956) ((_ is Nil!9317) (t!15550 l!956))))))

(assert (=> d!76981 (= (isStrictlySorted!420 l!956) e!285120)))

(declare-fun b!484318 () Bool)

(declare-fun e!285121 () Bool)

(assert (=> b!484318 (= e!285120 e!285121)))

(declare-fun res!288617 () Bool)

(assert (=> b!484318 (=> (not res!288617) (not e!285121))))

(assert (=> b!484318 (= res!288617 (bvslt (_1!4630 (h!10172 l!956)) (_1!4630 (h!10172 (t!15550 l!956)))))))

(declare-fun b!484319 () Bool)

(assert (=> b!484319 (= e!285121 (isStrictlySorted!420 (t!15550 l!956)))))

(assert (= (and d!76981 (not res!288616)) b!484318))

(assert (= (and b!484318 res!288617) b!484319))

(assert (=> b!484319 m!464873))

(assert (=> start!43872 d!76981))

(declare-fun d!76987 () Bool)

(declare-fun res!288618 () Bool)

(declare-fun e!285122 () Bool)

(assert (=> d!76987 (=> res!288618 e!285122)))

(assert (=> d!76987 (= res!288618 (and ((_ is Cons!9316) (t!15550 l!956)) (= (_1!4630 (h!10172 (t!15550 l!956))) key!251)))))

(assert (=> d!76987 (= (containsKey!386 (t!15550 l!956) key!251) e!285122)))

(declare-fun b!484320 () Bool)

(declare-fun e!285123 () Bool)

(assert (=> b!484320 (= e!285122 e!285123)))

(declare-fun res!288619 () Bool)

(assert (=> b!484320 (=> (not res!288619) (not e!285123))))

(assert (=> b!484320 (= res!288619 (and (or (not ((_ is Cons!9316) (t!15550 l!956))) (bvsle (_1!4630 (h!10172 (t!15550 l!956))) key!251)) ((_ is Cons!9316) (t!15550 l!956)) (bvslt (_1!4630 (h!10172 (t!15550 l!956))) key!251)))))

(declare-fun b!484321 () Bool)

(assert (=> b!484321 (= e!285123 (containsKey!386 (t!15550 (t!15550 l!956)) key!251))))

(assert (= (and d!76987 (not res!288618)) b!484320))

(assert (= (and b!484320 res!288619) b!484321))

(declare-fun m!464901 () Bool)

(assert (=> b!484321 m!464901))

(assert (=> b!484279 d!76987))

(declare-fun b!484402 () Bool)

(declare-fun e!285173 () Bool)

(declare-fun lt!219359 () List!9320)

(declare-fun contains!2683 (List!9320 tuple2!9240) Bool)

(assert (=> b!484402 (= e!285173 (contains!2683 lt!219359 (tuple2!9241 key!251 value!166)))))

(declare-fun b!484403 () Bool)

(declare-fun e!285172 () List!9320)

(declare-fun call!31138 () List!9320)

(assert (=> b!484403 (= e!285172 call!31138)))

(declare-fun d!76989 () Bool)

(assert (=> d!76989 e!285173))

(declare-fun res!288641 () Bool)

(assert (=> d!76989 (=> (not res!288641) (not e!285173))))

(assert (=> d!76989 (= res!288641 (isStrictlySorted!420 lt!219359))))

(declare-fun e!285169 () List!9320)

(assert (=> d!76989 (= lt!219359 e!285169)))

(declare-fun c!58201 () Bool)

(assert (=> d!76989 (= c!58201 (and ((_ is Cons!9316) l!956) (bvslt (_1!4630 (h!10172 l!956)) key!251)))))

(assert (=> d!76989 (isStrictlySorted!420 l!956)))

(assert (=> d!76989 (= (insertStrictlySorted!239 l!956 key!251 value!166) lt!219359)))

(declare-fun bm!31133 () Bool)

(declare-fun call!31137 () List!9320)

(declare-fun call!31136 () List!9320)

(assert (=> bm!31133 (= call!31137 call!31136)))

(declare-fun b!484404 () Bool)

(declare-fun e!285170 () List!9320)

(declare-fun c!58203 () Bool)

(declare-fun c!58200 () Bool)

(assert (=> b!484404 (= e!285170 (ite c!58203 (t!15550 l!956) (ite c!58200 (Cons!9316 (h!10172 l!956) (t!15550 l!956)) Nil!9317)))))

(declare-fun b!484405 () Bool)

(assert (=> b!484405 (= e!285172 call!31138)))

(declare-fun bm!31134 () Bool)

(declare-fun $colon$colon!121 (List!9320 tuple2!9240) List!9320)

(assert (=> bm!31134 (= call!31136 ($colon$colon!121 e!285170 (ite c!58201 (h!10172 l!956) (tuple2!9241 key!251 value!166))))))

(declare-fun c!58202 () Bool)

(assert (=> bm!31134 (= c!58202 c!58201)))

(declare-fun bm!31135 () Bool)

(assert (=> bm!31135 (= call!31138 call!31137)))

(declare-fun b!484406 () Bool)

(assert (=> b!484406 (= e!285170 (insertStrictlySorted!239 (t!15550 l!956) key!251 value!166))))

(declare-fun b!484407 () Bool)

(declare-fun res!288640 () Bool)

(assert (=> b!484407 (=> (not res!288640) (not e!285173))))

(assert (=> b!484407 (= res!288640 (containsKey!386 lt!219359 key!251))))

(declare-fun b!484408 () Bool)

(assert (=> b!484408 (= e!285169 call!31136)))

(declare-fun b!484409 () Bool)

(assert (=> b!484409 (= c!58200 (and ((_ is Cons!9316) l!956) (bvsgt (_1!4630 (h!10172 l!956)) key!251)))))

(declare-fun e!285171 () List!9320)

(assert (=> b!484409 (= e!285171 e!285172)))

(declare-fun b!484410 () Bool)

(assert (=> b!484410 (= e!285169 e!285171)))

(assert (=> b!484410 (= c!58203 (and ((_ is Cons!9316) l!956) (= (_1!4630 (h!10172 l!956)) key!251)))))

(declare-fun b!484411 () Bool)

(assert (=> b!484411 (= e!285171 call!31137)))

(assert (= (and d!76989 c!58201) b!484408))

(assert (= (and d!76989 (not c!58201)) b!484410))

(assert (= (and b!484410 c!58203) b!484411))

(assert (= (and b!484410 (not c!58203)) b!484409))

(assert (= (and b!484409 c!58200) b!484405))

(assert (= (and b!484409 (not c!58200)) b!484403))

(assert (= (or b!484405 b!484403) bm!31135))

(assert (= (or b!484411 bm!31135) bm!31133))

(assert (= (or b!484408 bm!31133) bm!31134))

(assert (= (and bm!31134 c!58202) b!484406))

(assert (= (and bm!31134 (not c!58202)) b!484404))

(assert (= (and d!76989 res!288641) b!484407))

(assert (= (and b!484407 res!288640) b!484402))

(declare-fun m!464917 () Bool)

(assert (=> bm!31134 m!464917))

(declare-fun m!464919 () Bool)

(assert (=> b!484402 m!464919))

(declare-fun m!464921 () Bool)

(assert (=> b!484407 m!464921))

(declare-fun m!464923 () Bool)

(assert (=> b!484406 m!464923))

(declare-fun m!464925 () Bool)

(assert (=> d!76989 m!464925))

(assert (=> d!76989 m!464875))

(assert (=> b!484280 d!76989))

(declare-fun d!77003 () Bool)

(declare-fun lt!219362 () Int)

(assert (=> d!77003 (>= lt!219362 0)))

(declare-fun e!285184 () Int)

(assert (=> d!77003 (= lt!219362 e!285184)))

(declare-fun c!58208 () Bool)

(assert (=> d!77003 (= c!58208 ((_ is Nil!9317) (t!15550 l!956)))))

(assert (=> d!77003 (= (ListPrimitiveSize!65 (t!15550 l!956)) lt!219362)))

(declare-fun b!484428 () Bool)

(assert (=> b!484428 (= e!285184 0)))

(declare-fun b!484429 () Bool)

(assert (=> b!484429 (= e!285184 (+ 1 (ListPrimitiveSize!65 (t!15550 (t!15550 l!956)))))))

(assert (= (and d!77003 c!58208) b!484428))

(assert (= (and d!77003 (not c!58208)) b!484429))

(declare-fun m!464927 () Bool)

(assert (=> b!484429 m!464927))

(assert (=> b!484283 d!77003))

(declare-fun d!77005 () Bool)

(declare-fun lt!219363 () Int)

(assert (=> d!77005 (>= lt!219363 0)))

(declare-fun e!285185 () Int)

(assert (=> d!77005 (= lt!219363 e!285185)))

(declare-fun c!58209 () Bool)

(assert (=> d!77005 (= c!58209 ((_ is Nil!9317) l!956))))

(assert (=> d!77005 (= (ListPrimitiveSize!65 l!956) lt!219363)))

(declare-fun b!484430 () Bool)

(assert (=> b!484430 (= e!285185 0)))

(declare-fun b!484431 () Bool)

(assert (=> b!484431 (= e!285185 (+ 1 (ListPrimitiveSize!65 (t!15550 l!956))))))

(assert (= (and d!77005 c!58209) b!484430))

(assert (= (and d!77005 (not c!58209)) b!484431))

(assert (=> b!484431 m!464877))

(assert (=> b!484283 d!77005))

(declare-fun d!77007 () Bool)

(declare-fun res!288652 () Bool)

(declare-fun e!285188 () Bool)

(assert (=> d!77007 (=> res!288652 e!285188)))

(assert (=> d!77007 (= res!288652 (or ((_ is Nil!9317) (t!15550 l!956)) ((_ is Nil!9317) (t!15550 (t!15550 l!956)))))))

(assert (=> d!77007 (= (isStrictlySorted!420 (t!15550 l!956)) e!285188)))

(declare-fun b!484434 () Bool)

(declare-fun e!285189 () Bool)

(assert (=> b!484434 (= e!285188 e!285189)))

(declare-fun res!288653 () Bool)

(assert (=> b!484434 (=> (not res!288653) (not e!285189))))

(assert (=> b!484434 (= res!288653 (bvslt (_1!4630 (h!10172 (t!15550 l!956))) (_1!4630 (h!10172 (t!15550 (t!15550 l!956))))))))

(declare-fun b!484435 () Bool)

(assert (=> b!484435 (= e!285189 (isStrictlySorted!420 (t!15550 (t!15550 l!956))))))

(assert (= (and d!77007 (not res!288652)) b!484434))

(assert (= (and b!484434 res!288653) b!484435))

(declare-fun m!464931 () Bool)

(assert (=> b!484435 m!464931))

(assert (=> b!484278 d!77007))

(declare-fun b!484442 () Bool)

(declare-fun e!285194 () Bool)

(declare-fun tp!43543 () Bool)

(assert (=> b!484442 (= e!285194 (and tp_is_empty!13947 tp!43543))))

(assert (=> b!484282 (= tp!43537 e!285194)))

(assert (= (and b!484282 ((_ is Cons!9316) (t!15550 l!956))) b!484442))

(check-sat (not bm!31134) (not b!484307) (not b!484407) (not b!484321) (not b!484431) (not b!484406) (not b!484319) (not b!484442) (not d!76989) tp_is_empty!13947 (not b!484435) (not b!484429) (not b!484402))
(check-sat)
