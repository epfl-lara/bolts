; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103776 () Bool)

(assert start!103776)

(declare-fun b!1241936 () Bool)

(declare-fun e!704011 () Bool)

(declare-fun tp_is_empty!31285 () Bool)

(declare-fun tp!92745 () Bool)

(assert (=> b!1241936 (= e!704011 (and tp_is_empty!31285 tp!92745))))

(declare-fun b!1241937 () Bool)

(declare-fun res!828432 () Bool)

(declare-fun e!704012 () Bool)

(assert (=> b!1241937 (=> (not res!828432) (not e!704012))))

(declare-datatypes ((B!1886 0))(
  ( (B!1887 (val!15705 Int)) )
))
(declare-datatypes ((tuple2!20438 0))(
  ( (tuple2!20439 (_1!10229 (_ BitVec 64)) (_2!10229 B!1886)) )
))
(declare-datatypes ((List!27534 0))(
  ( (Nil!27531) (Cons!27530 (h!28739 tuple2!20438) (t!41004 List!27534)) )
))
(declare-fun l!644 () List!27534)

(declare-fun isStrictlySorted!759 (List!27534) Bool)

(assert (=> b!1241937 (= res!828432 (isStrictlySorted!759 l!644))))

(declare-fun res!828431 () Bool)

(assert (=> start!103776 (=> (not res!828431) (not e!704012))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103776 (= res!828431 (not (= key1!25 key2!15)))))

(assert (=> start!103776 e!704012))

(assert (=> start!103776 true))

(assert (=> start!103776 e!704011))

(assert (=> start!103776 tp_is_empty!31285))

(declare-fun b!1241938 () Bool)

(declare-fun res!828430 () Bool)

(assert (=> b!1241938 (=> (not res!828430) (not e!704012))))

(assert (=> b!1241938 (= res!828430 (isStrictlySorted!759 (t!41004 l!644)))))

(declare-fun v1!20 () B!1886)

(declare-fun b!1241939 () Bool)

(declare-fun insertStrictlySorted!437 (List!27534 (_ BitVec 64) B!1886) List!27534)

(declare-fun removeStrictlySorted!131 (List!27534 (_ BitVec 64)) List!27534)

(assert (=> b!1241939 (= e!704012 (not (= (insertStrictlySorted!437 (removeStrictlySorted!131 l!644 key2!15) key1!25 v1!20) (removeStrictlySorted!131 (insertStrictlySorted!437 l!644 key1!25 v1!20) key2!15))))))

(assert (=> b!1241939 (= (insertStrictlySorted!437 (removeStrictlySorted!131 (t!41004 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!131 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20) key2!15))))

(declare-datatypes ((Unit!41203 0))(
  ( (Unit!41204) )
))
(declare-fun lt!562120 () Unit!41203)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!16 (List!27534 (_ BitVec 64) B!1886 (_ BitVec 64)) Unit!41203)

(assert (=> b!1241939 (= lt!562120 (lemmaInsertAndRemoveStrictlySortedCommutative!16 (t!41004 l!644) key1!25 v1!20 key2!15))))

(declare-fun b!1241940 () Bool)

(declare-fun res!828433 () Bool)

(assert (=> b!1241940 (=> (not res!828433) (not e!704012))))

(assert (=> b!1241940 (= res!828433 (is-Cons!27530 l!644))))

(assert (= (and start!103776 res!828431) b!1241937))

(assert (= (and b!1241937 res!828432) b!1241940))

(assert (= (and b!1241940 res!828433) b!1241938))

(assert (= (and b!1241938 res!828430) b!1241939))

(assert (= (and start!103776 (is-Cons!27530 l!644)) b!1241936))

(declare-fun m!1144679 () Bool)

(assert (=> b!1241937 m!1144679))

(declare-fun m!1144681 () Bool)

(assert (=> b!1241938 m!1144681))

(declare-fun m!1144683 () Bool)

(assert (=> b!1241939 m!1144683))

(declare-fun m!1144685 () Bool)

(assert (=> b!1241939 m!1144685))

(assert (=> b!1241939 m!1144683))

(declare-fun m!1144687 () Bool)

(assert (=> b!1241939 m!1144687))

(declare-fun m!1144689 () Bool)

(assert (=> b!1241939 m!1144689))

(declare-fun m!1144691 () Bool)

(assert (=> b!1241939 m!1144691))

(assert (=> b!1241939 m!1144689))

(declare-fun m!1144693 () Bool)

(assert (=> b!1241939 m!1144693))

(declare-fun m!1144695 () Bool)

(assert (=> b!1241939 m!1144695))

(assert (=> b!1241939 m!1144693))

(assert (=> b!1241939 m!1144687))

(declare-fun m!1144697 () Bool)

(assert (=> b!1241939 m!1144697))

(declare-fun m!1144699 () Bool)

(assert (=> b!1241939 m!1144699))

(push 1)

(assert (not b!1241939))

(assert (not b!1241937))

(assert (not b!1241938))

(assert (not b!1241936))

(assert tp_is_empty!31285)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136497 () Bool)

(declare-fun res!828470 () Bool)

(declare-fun e!704037 () Bool)

(assert (=> d!136497 (=> res!828470 e!704037)))

(assert (=> d!136497 (= res!828470 (or (is-Nil!27531 (t!41004 l!644)) (is-Nil!27531 (t!41004 (t!41004 l!644)))))))

(assert (=> d!136497 (= (isStrictlySorted!759 (t!41004 l!644)) e!704037)))

(declare-fun b!1241983 () Bool)

(declare-fun e!704040 () Bool)

(assert (=> b!1241983 (= e!704037 e!704040)))

(declare-fun res!828472 () Bool)

(assert (=> b!1241983 (=> (not res!828472) (not e!704040))))

(assert (=> b!1241983 (= res!828472 (bvslt (_1!10229 (h!28739 (t!41004 l!644))) (_1!10229 (h!28739 (t!41004 (t!41004 l!644))))))))

(declare-fun b!1241984 () Bool)

(assert (=> b!1241984 (= e!704040 (isStrictlySorted!759 (t!41004 (t!41004 l!644))))))

(assert (= (and d!136497 (not res!828470)) b!1241983))

(assert (= (and b!1241983 res!828472) b!1241984))

(declare-fun m!1144747 () Bool)

(assert (=> b!1241984 m!1144747))

(assert (=> b!1241938 d!136497))

(declare-fun d!136505 () Bool)

(declare-fun res!828476 () Bool)

(declare-fun e!704043 () Bool)

(assert (=> d!136505 (=> res!828476 e!704043)))

(assert (=> d!136505 (= res!828476 (or (is-Nil!27531 l!644) (is-Nil!27531 (t!41004 l!644))))))

(assert (=> d!136505 (= (isStrictlySorted!759 l!644) e!704043)))

(declare-fun b!1241989 () Bool)

(declare-fun e!704044 () Bool)

(assert (=> b!1241989 (= e!704043 e!704044)))

(declare-fun res!828477 () Bool)

(assert (=> b!1241989 (=> (not res!828477) (not e!704044))))

(assert (=> b!1241989 (= res!828477 (bvslt (_1!10229 (h!28739 l!644)) (_1!10229 (h!28739 (t!41004 l!644)))))))

(declare-fun b!1241990 () Bool)

(assert (=> b!1241990 (= e!704044 (isStrictlySorted!759 (t!41004 l!644)))))

(assert (= (and d!136505 (not res!828476)) b!1241989))

(assert (= (and b!1241989 res!828477) b!1241990))

(assert (=> b!1241990 m!1144681))

(assert (=> b!1241937 d!136505))

(declare-fun d!136507 () Bool)

(declare-fun e!704069 () Bool)

(assert (=> d!136507 e!704069))

(declare-fun res!828487 () Bool)

(assert (=> d!136507 (=> (not res!828487) (not e!704069))))

(declare-fun lt!562134 () List!27534)

(assert (=> d!136507 (= res!828487 (isStrictlySorted!759 lt!562134))))

(declare-fun e!704070 () List!27534)

(assert (=> d!136507 (= lt!562134 e!704070)))

(declare-fun c!121480 () Bool)

(assert (=> d!136507 (= c!121480 (and (is-Cons!27530 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20)) (= (_1!10229 (h!28739 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20))) key2!15)))))

(assert (=> d!136507 (isStrictlySorted!759 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20))))

(assert (=> d!136507 (= (removeStrictlySorted!131 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20) key2!15) lt!562134)))

(declare-fun b!1242028 () Bool)

(declare-fun e!704068 () List!27534)

(declare-fun $colon$colon!630 (List!27534 tuple2!20438) List!27534)

(assert (=> b!1242028 (= e!704068 ($colon$colon!630 (removeStrictlySorted!131 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20)) key2!15) (h!28739 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20))))))

(declare-fun b!1242029 () Bool)

(declare-fun containsKey!612 (List!27534 (_ BitVec 64)) Bool)

(assert (=> b!1242029 (= e!704069 (not (containsKey!612 lt!562134 key2!15)))))

(declare-fun b!1242030 () Bool)

(assert (=> b!1242030 (= e!704070 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20)))))

(declare-fun b!1242031 () Bool)

(assert (=> b!1242031 (= e!704068 Nil!27531)))

(declare-fun b!1242032 () Bool)

(assert (=> b!1242032 (= e!704070 e!704068)))

(declare-fun c!121481 () Bool)

(assert (=> b!1242032 (= c!121481 (and (is-Cons!27530 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20)) (not (= (_1!10229 (h!28739 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20))) key2!15))))))

(assert (= (and d!136507 c!121480) b!1242030))

(assert (= (and d!136507 (not c!121480)) b!1242032))

(assert (= (and b!1242032 c!121481) b!1242028))

(assert (= (and b!1242032 (not c!121481)) b!1242031))

(assert (= (and d!136507 res!828487) b!1242029))

(declare-fun m!1144759 () Bool)

(assert (=> d!136507 m!1144759))

(assert (=> d!136507 m!1144689))

(declare-fun m!1144761 () Bool)

(assert (=> d!136507 m!1144761))

(declare-fun m!1144763 () Bool)

(assert (=> b!1242028 m!1144763))

(assert (=> b!1242028 m!1144763))

(declare-fun m!1144765 () Bool)

(assert (=> b!1242028 m!1144765))

(declare-fun m!1144767 () Bool)

(assert (=> b!1242029 m!1144767))

(assert (=> b!1241939 d!136507))

(declare-fun b!1242107 () Bool)

(declare-fun e!704113 () List!27534)

(declare-fun call!61292 () List!27534)

(assert (=> b!1242107 (= e!704113 call!61292)))

(declare-fun bm!61287 () Bool)

(declare-fun call!61290 () List!27534)

(assert (=> bm!61287 (= call!61292 call!61290)))

(declare-fun b!1242109 () Bool)

(declare-fun lt!562143 () List!27534)

(declare-fun e!704111 () Bool)

(declare-fun contains!7408 (List!27534 tuple2!20438) Bool)

(assert (=> b!1242109 (= e!704111 (contains!7408 lt!562143 (tuple2!20439 key1!25 v1!20)))))

(declare-fun b!1242110 () Bool)

(declare-fun e!704112 () List!27534)

(declare-fun call!61293 () List!27534)

(assert (=> b!1242110 (= e!704112 call!61293)))

(declare-fun b!1242111 () Bool)

(declare-fun e!704107 () List!27534)

(assert (=> b!1242111 (= e!704107 call!61290)))

(declare-fun e!704109 () List!27534)

(declare-fun b!1242112 () Bool)

(assert (=> b!1242112 (= e!704109 (insertStrictlySorted!437 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15)) key1!25 v1!20))))

(declare-fun b!1242113 () Bool)

(declare-fun res!828504 () Bool)

(assert (=> b!1242113 (=> (not res!828504) (not e!704111))))

(assert (=> b!1242113 (= res!828504 (containsKey!612 lt!562143 key1!25))))

(declare-fun b!1242114 () Bool)

(declare-fun c!121514 () Bool)

(declare-fun c!121512 () Bool)

(assert (=> b!1242114 (= e!704109 (ite c!121512 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15)) (ite c!121514 (Cons!27530 (h!28739 (removeStrictlySorted!131 (t!41004 l!644) key2!15)) (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15))) Nil!27531)))))

(declare-fun b!1242115 () Bool)

(assert (=> b!1242115 (= e!704112 e!704107)))

(assert (=> b!1242115 (= c!121512 (and (is-Cons!27530 (removeStrictlySorted!131 (t!41004 l!644) key2!15)) (= (_1!10229 (h!28739 (removeStrictlySorted!131 (t!41004 l!644) key2!15))) key1!25)))))

(declare-fun b!1242116 () Bool)

(assert (=> b!1242116 (= e!704113 call!61292)))

(declare-fun c!121515 () Bool)

(declare-fun bm!61290 () Bool)

(assert (=> bm!61290 (= call!61293 ($colon$colon!630 e!704109 (ite c!121515 (h!28739 (removeStrictlySorted!131 (t!41004 l!644) key2!15)) (tuple2!20439 key1!25 v1!20))))))

(declare-fun c!121513 () Bool)

(assert (=> bm!61290 (= c!121513 c!121515)))

(declare-fun b!1242117 () Bool)

(assert (=> b!1242117 (= c!121514 (and (is-Cons!27530 (removeStrictlySorted!131 (t!41004 l!644) key2!15)) (bvsgt (_1!10229 (h!28739 (removeStrictlySorted!131 (t!41004 l!644) key2!15))) key1!25)))))

(assert (=> b!1242117 (= e!704107 e!704113)))

(declare-fun bm!61289 () Bool)

(assert (=> bm!61289 (= call!61290 call!61293)))

(declare-fun d!136513 () Bool)

(assert (=> d!136513 e!704111))

(declare-fun res!828503 () Bool)

(assert (=> d!136513 (=> (not res!828503) (not e!704111))))

(assert (=> d!136513 (= res!828503 (isStrictlySorted!759 lt!562143))))

(assert (=> d!136513 (= lt!562143 e!704112)))

(assert (=> d!136513 (= c!121515 (and (is-Cons!27530 (removeStrictlySorted!131 (t!41004 l!644) key2!15)) (bvslt (_1!10229 (h!28739 (removeStrictlySorted!131 (t!41004 l!644) key2!15))) key1!25)))))

(assert (=> d!136513 (isStrictlySorted!759 (removeStrictlySorted!131 (t!41004 l!644) key2!15))))

(assert (=> d!136513 (= (insertStrictlySorted!437 (removeStrictlySorted!131 (t!41004 l!644) key2!15) key1!25 v1!20) lt!562143)))

(assert (= (and d!136513 c!121515) b!1242110))

(assert (= (and d!136513 (not c!121515)) b!1242115))

(assert (= (and b!1242115 c!121512) b!1242111))

(assert (= (and b!1242115 (not c!121512)) b!1242117))

(assert (= (and b!1242117 c!121514) b!1242116))

(assert (= (and b!1242117 (not c!121514)) b!1242107))

(assert (= (or b!1242116 b!1242107) bm!61287))

(assert (= (or b!1242111 bm!61287) bm!61289))

(assert (= (or b!1242110 bm!61289) bm!61290))

(assert (= (and bm!61290 c!121513) b!1242112))

(assert (= (and bm!61290 (not c!121513)) b!1242114))

(assert (= (and d!136513 res!828503) b!1242113))

(assert (= (and b!1242113 res!828504) b!1242109))

(declare-fun m!1144781 () Bool)

(assert (=> b!1242109 m!1144781))

(declare-fun m!1144785 () Bool)

(assert (=> b!1242113 m!1144785))

(declare-fun m!1144789 () Bool)

(assert (=> b!1242112 m!1144789))

(declare-fun m!1144795 () Bool)

(assert (=> bm!61290 m!1144795))

(declare-fun m!1144797 () Bool)

(assert (=> d!136513 m!1144797))

(assert (=> d!136513 m!1144693))

(declare-fun m!1144801 () Bool)

(assert (=> d!136513 m!1144801))

(assert (=> b!1241939 d!136513))

(declare-fun b!1242133 () Bool)

(declare-fun e!704128 () List!27534)

(declare-fun call!61300 () List!27534)

(assert (=> b!1242133 (= e!704128 call!61300)))

(declare-fun bm!61296 () Bool)

(declare-fun call!61299 () List!27534)

(assert (=> bm!61296 (= call!61300 call!61299)))

(declare-fun e!704124 () Bool)

(declare-fun lt!562146 () List!27534)

(declare-fun b!1242136 () Bool)

(assert (=> b!1242136 (= e!704124 (contains!7408 lt!562146 (tuple2!20439 key1!25 v1!20)))))

(declare-fun b!1242138 () Bool)

(declare-fun e!704127 () List!27534)

(declare-fun call!61302 () List!27534)

(assert (=> b!1242138 (= e!704127 call!61302)))

(declare-fun b!1242140 () Bool)

(declare-fun e!704121 () List!27534)

(assert (=> b!1242140 (= e!704121 call!61299)))

(declare-fun b!1242142 () Bool)

(declare-fun e!704123 () List!27534)

(assert (=> b!1242142 (= e!704123 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20))))

(declare-fun b!1242143 () Bool)

(declare-fun res!828510 () Bool)

(assert (=> b!1242143 (=> (not res!828510) (not e!704124))))

(assert (=> b!1242143 (= res!828510 (containsKey!612 lt!562146 key1!25))))

(declare-fun b!1242144 () Bool)

(declare-fun c!121526 () Bool)

(declare-fun c!121523 () Bool)

(assert (=> b!1242144 (= e!704123 (ite c!121523 (t!41004 l!644) (ite c!121526 (Cons!27530 (h!28739 l!644) (t!41004 l!644)) Nil!27531)))))

(declare-fun b!1242145 () Bool)

(assert (=> b!1242145 (= e!704127 e!704121)))

(assert (=> b!1242145 (= c!121523 (and (is-Cons!27530 l!644) (= (_1!10229 (h!28739 l!644)) key1!25)))))

(declare-fun b!1242146 () Bool)

(assert (=> b!1242146 (= e!704128 call!61300)))

(declare-fun bm!61299 () Bool)

(declare-fun c!121527 () Bool)

(assert (=> bm!61299 (= call!61302 ($colon$colon!630 e!704123 (ite c!121527 (h!28739 l!644) (tuple2!20439 key1!25 v1!20))))))

(declare-fun c!121525 () Bool)

(assert (=> bm!61299 (= c!121525 c!121527)))

(declare-fun b!1242147 () Bool)

(assert (=> b!1242147 (= c!121526 (and (is-Cons!27530 l!644) (bvsgt (_1!10229 (h!28739 l!644)) key1!25)))))

(assert (=> b!1242147 (= e!704121 e!704128)))

(declare-fun bm!61298 () Bool)

(assert (=> bm!61298 (= call!61299 call!61302)))

(declare-fun d!136519 () Bool)

(assert (=> d!136519 e!704124))

(declare-fun res!828508 () Bool)

(assert (=> d!136519 (=> (not res!828508) (not e!704124))))

(assert (=> d!136519 (= res!828508 (isStrictlySorted!759 lt!562146))))

(assert (=> d!136519 (= lt!562146 e!704127)))

(assert (=> d!136519 (= c!121527 (and (is-Cons!27530 l!644) (bvslt (_1!10229 (h!28739 l!644)) key1!25)))))

(assert (=> d!136519 (isStrictlySorted!759 l!644)))

(assert (=> d!136519 (= (insertStrictlySorted!437 l!644 key1!25 v1!20) lt!562146)))

(assert (= (and d!136519 c!121527) b!1242138))

(assert (= (and d!136519 (not c!121527)) b!1242145))

(assert (= (and b!1242145 c!121523) b!1242140))

(assert (= (and b!1242145 (not c!121523)) b!1242147))

(assert (= (and b!1242147 c!121526) b!1242146))

(assert (= (and b!1242147 (not c!121526)) b!1242133))

(assert (= (or b!1242146 b!1242133) bm!61296))

(assert (= (or b!1242140 bm!61296) bm!61298))

(assert (= (or b!1242138 bm!61298) bm!61299))

(assert (= (and bm!61299 c!121525) b!1242142))

(assert (= (and bm!61299 (not c!121525)) b!1242144))

(assert (= (and d!136519 res!828508) b!1242143))

(assert (= (and b!1242143 res!828510) b!1242136))

(declare-fun m!1144817 () Bool)

(assert (=> b!1242136 m!1144817))

(declare-fun m!1144821 () Bool)

(assert (=> b!1242143 m!1144821))

(assert (=> b!1242142 m!1144689))

(declare-fun m!1144825 () Bool)

(assert (=> bm!61299 m!1144825))

(declare-fun m!1144827 () Bool)

(assert (=> d!136519 m!1144827))

(assert (=> d!136519 m!1144679))

(assert (=> b!1241939 d!136519))

(declare-fun b!1242159 () Bool)

(declare-fun e!704143 () List!27534)

(declare-fun call!61309 () List!27534)

(assert (=> b!1242159 (= e!704143 call!61309)))

(declare-fun bm!61304 () Bool)

(declare-fun call!61308 () List!27534)

(assert (=> bm!61304 (= call!61309 call!61308)))

(declare-fun e!704139 () Bool)

(declare-fun b!1242160 () Bool)

(declare-fun lt!562149 () List!27534)

(assert (=> b!1242160 (= e!704139 (contains!7408 lt!562149 (tuple2!20439 key1!25 v1!20)))))

(declare-fun b!1242161 () Bool)

(declare-fun e!704142 () List!27534)

(declare-fun call!61310 () List!27534)

(assert (=> b!1242161 (= e!704142 call!61310)))

(declare-fun b!1242162 () Bool)

(declare-fun e!704135 () List!27534)

(assert (=> b!1242162 (= e!704135 call!61308)))

(declare-fun e!704137 () List!27534)

(declare-fun b!1242163 () Bool)

(assert (=> b!1242163 (= e!704137 (insertStrictlySorted!437 (t!41004 (removeStrictlySorted!131 l!644 key2!15)) key1!25 v1!20))))

(declare-fun b!1242165 () Bool)

(declare-fun res!828516 () Bool)

(assert (=> b!1242165 (=> (not res!828516) (not e!704139))))

(assert (=> b!1242165 (= res!828516 (containsKey!612 lt!562149 key1!25))))

(declare-fun c!121535 () Bool)

(declare-fun b!1242167 () Bool)

(declare-fun c!121537 () Bool)

(assert (=> b!1242167 (= e!704137 (ite c!121535 (t!41004 (removeStrictlySorted!131 l!644 key2!15)) (ite c!121537 (Cons!27530 (h!28739 (removeStrictlySorted!131 l!644 key2!15)) (t!41004 (removeStrictlySorted!131 l!644 key2!15))) Nil!27531)))))

(declare-fun b!1242168 () Bool)

(assert (=> b!1242168 (= e!704142 e!704135)))

(assert (=> b!1242168 (= c!121535 (and (is-Cons!27530 (removeStrictlySorted!131 l!644 key2!15)) (= (_1!10229 (h!28739 (removeStrictlySorted!131 l!644 key2!15))) key1!25)))))

(declare-fun b!1242169 () Bool)

(assert (=> b!1242169 (= e!704143 call!61309)))

(declare-fun bm!61306 () Bool)

(declare-fun c!121539 () Bool)

(assert (=> bm!61306 (= call!61310 ($colon$colon!630 e!704137 (ite c!121539 (h!28739 (removeStrictlySorted!131 l!644 key2!15)) (tuple2!20439 key1!25 v1!20))))))

(declare-fun c!121536 () Bool)

(assert (=> bm!61306 (= c!121536 c!121539)))

(declare-fun b!1242170 () Bool)

(assert (=> b!1242170 (= c!121537 (and (is-Cons!27530 (removeStrictlySorted!131 l!644 key2!15)) (bvsgt (_1!10229 (h!28739 (removeStrictlySorted!131 l!644 key2!15))) key1!25)))))

(assert (=> b!1242170 (= e!704135 e!704143)))

(declare-fun bm!61305 () Bool)

(assert (=> bm!61305 (= call!61308 call!61310)))

(declare-fun d!136525 () Bool)

(assert (=> d!136525 e!704139))

(declare-fun res!828513 () Bool)

(assert (=> d!136525 (=> (not res!828513) (not e!704139))))

(assert (=> d!136525 (= res!828513 (isStrictlySorted!759 lt!562149))))

(assert (=> d!136525 (= lt!562149 e!704142)))

(assert (=> d!136525 (= c!121539 (and (is-Cons!27530 (removeStrictlySorted!131 l!644 key2!15)) (bvslt (_1!10229 (h!28739 (removeStrictlySorted!131 l!644 key2!15))) key1!25)))))

(assert (=> d!136525 (isStrictlySorted!759 (removeStrictlySorted!131 l!644 key2!15))))

(assert (=> d!136525 (= (insertStrictlySorted!437 (removeStrictlySorted!131 l!644 key2!15) key1!25 v1!20) lt!562149)))

(assert (= (and d!136525 c!121539) b!1242161))

(assert (= (and d!136525 (not c!121539)) b!1242168))

(assert (= (and b!1242168 c!121535) b!1242162))

(assert (= (and b!1242168 (not c!121535)) b!1242170))

(assert (= (and b!1242170 c!121537) b!1242169))

(assert (= (and b!1242170 (not c!121537)) b!1242159))

(assert (= (or b!1242169 b!1242159) bm!61304))

(assert (= (or b!1242162 bm!61304) bm!61305))

(assert (= (or b!1242161 bm!61305) bm!61306))

(assert (= (and bm!61306 c!121536) b!1242163))

(assert (= (and bm!61306 (not c!121536)) b!1242167))

(assert (= (and d!136525 res!828513) b!1242165))

(assert (= (and b!1242165 res!828516) b!1242160))

(declare-fun m!1144847 () Bool)

(assert (=> b!1242160 m!1144847))

(declare-fun m!1144853 () Bool)

(assert (=> b!1242165 m!1144853))

(declare-fun m!1144860 () Bool)

(assert (=> b!1242163 m!1144860))

(declare-fun m!1144869 () Bool)

(assert (=> bm!61306 m!1144869))

(declare-fun m!1144871 () Bool)

(assert (=> d!136525 m!1144871))

(assert (=> d!136525 m!1144683))

(declare-fun m!1144873 () Bool)

(assert (=> d!136525 m!1144873))

(assert (=> b!1241939 d!136525))

(declare-fun d!136533 () Bool)

(declare-fun e!704156 () Bool)

(assert (=> d!136533 e!704156))

(declare-fun res!828521 () Bool)

(assert (=> d!136533 (=> (not res!828521) (not e!704156))))

(declare-fun lt!562153 () List!27534)

(assert (=> d!136533 (= res!828521 (isStrictlySorted!759 lt!562153))))

(declare-fun e!704157 () List!27534)

(assert (=> d!136533 (= lt!562153 e!704157)))

(declare-fun c!121548 () Bool)

(assert (=> d!136533 (= c!121548 (and (is-Cons!27530 l!644) (= (_1!10229 (h!28739 l!644)) key2!15)))))

(assert (=> d!136533 (isStrictlySorted!759 l!644)))

(assert (=> d!136533 (= (removeStrictlySorted!131 l!644 key2!15) lt!562153)))

(declare-fun b!1242198 () Bool)

(declare-fun e!704155 () List!27534)

(assert (=> b!1242198 (= e!704155 ($colon$colon!630 (removeStrictlySorted!131 (t!41004 l!644) key2!15) (h!28739 l!644)))))

(declare-fun b!1242199 () Bool)

(assert (=> b!1242199 (= e!704156 (not (containsKey!612 lt!562153 key2!15)))))

(declare-fun b!1242200 () Bool)

(assert (=> b!1242200 (= e!704157 (t!41004 l!644))))

(declare-fun b!1242201 () Bool)

(assert (=> b!1242201 (= e!704155 Nil!27531)))

(declare-fun b!1242202 () Bool)

(assert (=> b!1242202 (= e!704157 e!704155)))

(declare-fun c!121549 () Bool)

(assert (=> b!1242202 (= c!121549 (and (is-Cons!27530 l!644) (not (= (_1!10229 (h!28739 l!644)) key2!15))))))

(assert (= (and d!136533 c!121548) b!1242200))

(assert (= (and d!136533 (not c!121548)) b!1242202))

(assert (= (and b!1242202 c!121549) b!1242198))

(assert (= (and b!1242202 (not c!121549)) b!1242201))

(assert (= (and d!136533 res!828521) b!1242199))

(declare-fun m!1144887 () Bool)

(assert (=> d!136533 m!1144887))

(assert (=> d!136533 m!1144679))

(assert (=> b!1242198 m!1144693))

(assert (=> b!1242198 m!1144693))

(declare-fun m!1144889 () Bool)

(assert (=> b!1242198 m!1144889))

(declare-fun m!1144891 () Bool)

(assert (=> b!1242199 m!1144891))

(assert (=> b!1241939 d!136533))

(declare-fun d!136539 () Bool)

(assert (=> d!136539 (= (insertStrictlySorted!437 (removeStrictlySorted!131 (t!41004 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!131 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20) key2!15))))

(declare-fun lt!562162 () Unit!41203)

(declare-fun choose!1850 (List!27534 (_ BitVec 64) B!1886 (_ BitVec 64)) Unit!41203)

(assert (=> d!136539 (= lt!562162 (choose!1850 (t!41004 l!644) key1!25 v1!20 key2!15))))

(assert (=> d!136539 (not (= key1!25 key2!15))))

(assert (=> d!136539 (= (lemmaInsertAndRemoveStrictlySortedCommutative!16 (t!41004 l!644) key1!25 v1!20 key2!15) lt!562162)))

(declare-fun bs!34971 () Bool)

(assert (= bs!34971 d!136539))

(assert (=> bs!34971 m!1144693))

(assert (=> bs!34971 m!1144689))

(assert (=> bs!34971 m!1144691))

(declare-fun m!1144897 () Bool)

(assert (=> bs!34971 m!1144897))

(assert (=> bs!34971 m!1144693))

(assert (=> bs!34971 m!1144695))

(assert (=> bs!34971 m!1144689))

(assert (=> b!1241939 d!136539))

(declare-fun b!1242223 () Bool)

(declare-fun e!704172 () List!27534)

(declare-fun call!61322 () List!27534)

(assert (=> b!1242223 (= e!704172 call!61322)))

(declare-fun bm!61318 () Bool)

(declare-fun call!61321 () List!27534)

(assert (=> bm!61318 (= call!61322 call!61321)))

(declare-fun b!1242224 () Bool)

(declare-fun e!704170 () Bool)

(declare-fun lt!562165 () List!27534)

(assert (=> b!1242224 (= e!704170 (contains!7408 lt!562165 (tuple2!20439 key1!25 v1!20)))))

(declare-fun b!1242225 () Bool)

(declare-fun e!704171 () List!27534)

(declare-fun call!61323 () List!27534)

(assert (=> b!1242225 (= e!704171 call!61323)))

(declare-fun b!1242226 () Bool)

(declare-fun e!704168 () List!27534)

(assert (=> b!1242226 (= e!704168 call!61321)))

(declare-fun e!704169 () List!27534)

(declare-fun b!1242227 () Bool)

(assert (=> b!1242227 (= e!704169 (insertStrictlySorted!437 (t!41004 (t!41004 l!644)) key1!25 v1!20))))

(declare-fun b!1242228 () Bool)

(declare-fun res!828527 () Bool)

(assert (=> b!1242228 (=> (not res!828527) (not e!704170))))

(assert (=> b!1242228 (= res!828527 (containsKey!612 lt!562165 key1!25))))

(declare-fun c!121560 () Bool)

(declare-fun b!1242229 () Bool)

(declare-fun c!121558 () Bool)

(assert (=> b!1242229 (= e!704169 (ite c!121558 (t!41004 (t!41004 l!644)) (ite c!121560 (Cons!27530 (h!28739 (t!41004 l!644)) (t!41004 (t!41004 l!644))) Nil!27531)))))

(declare-fun b!1242230 () Bool)

(assert (=> b!1242230 (= e!704171 e!704168)))

(assert (=> b!1242230 (= c!121558 (and (is-Cons!27530 (t!41004 l!644)) (= (_1!10229 (h!28739 (t!41004 l!644))) key1!25)))))

(declare-fun b!1242231 () Bool)

(assert (=> b!1242231 (= e!704172 call!61322)))

(declare-fun bm!61320 () Bool)

(declare-fun c!121561 () Bool)

(assert (=> bm!61320 (= call!61323 ($colon$colon!630 e!704169 (ite c!121561 (h!28739 (t!41004 l!644)) (tuple2!20439 key1!25 v1!20))))))

(declare-fun c!121559 () Bool)

(assert (=> bm!61320 (= c!121559 c!121561)))

(declare-fun b!1242232 () Bool)

(assert (=> b!1242232 (= c!121560 (and (is-Cons!27530 (t!41004 l!644)) (bvsgt (_1!10229 (h!28739 (t!41004 l!644))) key1!25)))))

(assert (=> b!1242232 (= e!704168 e!704172)))

(declare-fun bm!61319 () Bool)

(assert (=> bm!61319 (= call!61321 call!61323)))

(declare-fun d!136545 () Bool)

(assert (=> d!136545 e!704170))

(declare-fun res!828526 () Bool)

(assert (=> d!136545 (=> (not res!828526) (not e!704170))))

(assert (=> d!136545 (= res!828526 (isStrictlySorted!759 lt!562165))))

(assert (=> d!136545 (= lt!562165 e!704171)))

(assert (=> d!136545 (= c!121561 (and (is-Cons!27530 (t!41004 l!644)) (bvslt (_1!10229 (h!28739 (t!41004 l!644))) key1!25)))))

(assert (=> d!136545 (isStrictlySorted!759 (t!41004 l!644))))

(assert (=> d!136545 (= (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20) lt!562165)))

(assert (= (and d!136545 c!121561) b!1242225))

(assert (= (and d!136545 (not c!121561)) b!1242230))

(assert (= (and b!1242230 c!121558) b!1242226))

(assert (= (and b!1242230 (not c!121558)) b!1242232))

(assert (= (and b!1242232 c!121560) b!1242231))

(assert (= (and b!1242232 (not c!121560)) b!1242223))

(assert (= (or b!1242231 b!1242223) bm!61318))

(assert (= (or b!1242226 bm!61318) bm!61319))

(assert (= (or b!1242225 bm!61319) bm!61320))

(assert (= (and bm!61320 c!121559) b!1242227))

(assert (= (and bm!61320 (not c!121559)) b!1242229))

(assert (= (and d!136545 res!828526) b!1242228))

(assert (= (and b!1242228 res!828527) b!1242224))

(declare-fun m!1144915 () Bool)

(assert (=> b!1242224 m!1144915))

(declare-fun m!1144919 () Bool)

(assert (=> b!1242228 m!1144919))

(declare-fun m!1144923 () Bool)

(assert (=> b!1242227 m!1144923))

(declare-fun m!1144925 () Bool)

(assert (=> bm!61320 m!1144925))

(declare-fun m!1144927 () Bool)

(assert (=> d!136545 m!1144927))

(assert (=> d!136545 m!1144681))

(assert (=> b!1241939 d!136545))

(declare-fun d!136551 () Bool)

(declare-fun e!704180 () Bool)

(assert (=> d!136551 e!704180))

(declare-fun res!828530 () Bool)

(assert (=> d!136551 (=> (not res!828530) (not e!704180))))

(declare-fun lt!562168 () List!27534)

(assert (=> d!136551 (= res!828530 (isStrictlySorted!759 lt!562168))))

(declare-fun e!704181 () List!27534)

(assert (=> d!136551 (= lt!562168 e!704181)))

(declare-fun c!121566 () Bool)

(assert (=> d!136551 (= c!121566 (and (is-Cons!27530 (insertStrictlySorted!437 l!644 key1!25 v1!20)) (= (_1!10229 (h!28739 (insertStrictlySorted!437 l!644 key1!25 v1!20))) key2!15)))))

(assert (=> d!136551 (isStrictlySorted!759 (insertStrictlySorted!437 l!644 key1!25 v1!20))))

(assert (=> d!136551 (= (removeStrictlySorted!131 (insertStrictlySorted!437 l!644 key1!25 v1!20) key2!15) lt!562168)))

(declare-fun e!704179 () List!27534)

(declare-fun b!1242243 () Bool)

(assert (=> b!1242243 (= e!704179 ($colon$colon!630 (removeStrictlySorted!131 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20)) key2!15) (h!28739 (insertStrictlySorted!437 l!644 key1!25 v1!20))))))

(declare-fun b!1242244 () Bool)

(assert (=> b!1242244 (= e!704180 (not (containsKey!612 lt!562168 key2!15)))))

(declare-fun b!1242245 () Bool)

(assert (=> b!1242245 (= e!704181 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20)))))

(declare-fun b!1242246 () Bool)

(assert (=> b!1242246 (= e!704179 Nil!27531)))

(declare-fun b!1242247 () Bool)

(assert (=> b!1242247 (= e!704181 e!704179)))

(declare-fun c!121567 () Bool)

(assert (=> b!1242247 (= c!121567 (and (is-Cons!27530 (insertStrictlySorted!437 l!644 key1!25 v1!20)) (not (= (_1!10229 (h!28739 (insertStrictlySorted!437 l!644 key1!25 v1!20))) key2!15))))))

(assert (= (and d!136551 c!121566) b!1242245))

(assert (= (and d!136551 (not c!121566)) b!1242247))

(assert (= (and b!1242247 c!121567) b!1242243))

(assert (= (and b!1242247 (not c!121567)) b!1242246))

(assert (= (and d!136551 res!828530) b!1242244))

(declare-fun m!1144943 () Bool)

(assert (=> d!136551 m!1144943))

(assert (=> d!136551 m!1144687))

(declare-fun m!1144949 () Bool)

(assert (=> d!136551 m!1144949))

(declare-fun m!1144953 () Bool)

(assert (=> b!1242243 m!1144953))

(assert (=> b!1242243 m!1144953))

(declare-fun m!1144955 () Bool)

(assert (=> b!1242243 m!1144955))

(declare-fun m!1144957 () Bool)

(assert (=> b!1242244 m!1144957))

(assert (=> b!1241939 d!136551))

(declare-fun d!136557 () Bool)

(declare-fun e!704189 () Bool)

(assert (=> d!136557 e!704189))

(declare-fun res!828533 () Bool)

(assert (=> d!136557 (=> (not res!828533) (not e!704189))))

(declare-fun lt!562171 () List!27534)

(assert (=> d!136557 (= res!828533 (isStrictlySorted!759 lt!562171))))

(declare-fun e!704190 () List!27534)

(assert (=> d!136557 (= lt!562171 e!704190)))

(declare-fun c!121572 () Bool)

(assert (=> d!136557 (= c!121572 (and (is-Cons!27530 (t!41004 l!644)) (= (_1!10229 (h!28739 (t!41004 l!644))) key2!15)))))

(assert (=> d!136557 (isStrictlySorted!759 (t!41004 l!644))))

(assert (=> d!136557 (= (removeStrictlySorted!131 (t!41004 l!644) key2!15) lt!562171)))

(declare-fun b!1242258 () Bool)

(declare-fun e!704188 () List!27534)

(assert (=> b!1242258 (= e!704188 ($colon$colon!630 (removeStrictlySorted!131 (t!41004 (t!41004 l!644)) key2!15) (h!28739 (t!41004 l!644))))))

(declare-fun b!1242259 () Bool)

(assert (=> b!1242259 (= e!704189 (not (containsKey!612 lt!562171 key2!15)))))

(declare-fun b!1242260 () Bool)

(assert (=> b!1242260 (= e!704190 (t!41004 (t!41004 l!644)))))

(declare-fun b!1242261 () Bool)

(assert (=> b!1242261 (= e!704188 Nil!27531)))

(declare-fun b!1242262 () Bool)

(assert (=> b!1242262 (= e!704190 e!704188)))

(declare-fun c!121573 () Bool)

(assert (=> b!1242262 (= c!121573 (and (is-Cons!27530 (t!41004 l!644)) (not (= (_1!10229 (h!28739 (t!41004 l!644))) key2!15))))))

(assert (= (and d!136557 c!121572) b!1242260))

(assert (= (and d!136557 (not c!121572)) b!1242262))

(assert (= (and b!1242262 c!121573) b!1242258))

(assert (= (and b!1242262 (not c!121573)) b!1242261))

(assert (= (and d!136557 res!828533) b!1242259))

(declare-fun m!1144973 () Bool)

(assert (=> d!136557 m!1144973))

(assert (=> d!136557 m!1144681))

(declare-fun m!1144977 () Bool)

(assert (=> b!1242258 m!1144977))

(assert (=> b!1242258 m!1144977))

(declare-fun m!1144979 () Bool)

(assert (=> b!1242258 m!1144979))

(declare-fun m!1144981 () Bool)

(assert (=> b!1242259 m!1144981))

(assert (=> b!1241939 d!136557))

(declare-fun b!1242278 () Bool)

(declare-fun e!704200 () Bool)

(declare-fun tp!92759 () Bool)

(assert (=> b!1242278 (= e!704200 (and tp_is_empty!31285 tp!92759))))

(assert (=> b!1241936 (= tp!92745 e!704200)))

(assert (= (and b!1241936 (is-Cons!27530 (t!41004 l!644))) b!1242278))

(push 1)

(assert (not b!1242109))

(assert (not b!1242198))

(assert (not b!1242259))

(assert (not d!136545))

(assert (not b!1242258))

(assert (not d!136557))

(assert (not b!1242113))

(assert (not b!1242278))

(assert (not b!1242163))

(assert (not b!1242160))

(assert (not d!136507))

(assert (not b!1242136))

(assert (not bm!61320))

(assert (not d!136551))

(assert (not b!1242142))

(assert (not bm!61290))

(assert (not b!1242243))

(assert (not b!1242244))

(assert (not b!1242112))

(assert (not b!1242228))

(assert (not b!1242199))

(assert (not b!1242029))

(assert (not d!136519))

(assert (not b!1241984))

(assert (not b!1242224))

(assert (not d!136539))

(assert (not d!136533))

(assert (not b!1242227))

(assert (not b!1242143))

(assert (not bm!61299))

(assert (not b!1242165))

(assert (not b!1241990))

(assert (not d!136525))

(assert (not bm!61306))

(assert (not b!1242028))

(assert (not d!136513))

(assert tp_is_empty!31285)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!1241990 d!136497))

(declare-fun d!136641 () Bool)

(assert (=> d!136641 (= ($colon$colon!630 (removeStrictlySorted!131 (t!41004 l!644) key2!15) (h!28739 l!644)) (Cons!27530 (h!28739 l!644) (removeStrictlySorted!131 (t!41004 l!644) key2!15)))))

(assert (=> b!1242198 d!136641))

(assert (=> b!1242198 d!136557))

(declare-fun d!136643 () Bool)

(declare-fun res!828603 () Bool)

(declare-fun e!704285 () Bool)

(assert (=> d!136643 (=> res!828603 e!704285)))

(assert (=> d!136643 (= res!828603 (or (is-Nil!27531 (t!41004 (t!41004 l!644))) (is-Nil!27531 (t!41004 (t!41004 (t!41004 l!644))))))))

(assert (=> d!136643 (= (isStrictlySorted!759 (t!41004 (t!41004 l!644))) e!704285)))

(declare-fun b!1242384 () Bool)

(declare-fun e!704286 () Bool)

(assert (=> b!1242384 (= e!704285 e!704286)))

(declare-fun res!828604 () Bool)

(assert (=> b!1242384 (=> (not res!828604) (not e!704286))))

(assert (=> b!1242384 (= res!828604 (bvslt (_1!10229 (h!28739 (t!41004 (t!41004 l!644)))) (_1!10229 (h!28739 (t!41004 (t!41004 (t!41004 l!644)))))))))

(declare-fun b!1242385 () Bool)

(assert (=> b!1242385 (= e!704286 (isStrictlySorted!759 (t!41004 (t!41004 (t!41004 l!644)))))))

(assert (= (and d!136643 (not res!828603)) b!1242384))

(assert (= (and b!1242384 res!828604) b!1242385))

(declare-fun m!1145105 () Bool)

(assert (=> b!1242385 m!1145105))

(assert (=> b!1241984 d!136643))

(declare-fun d!136645 () Bool)

(declare-fun res!828609 () Bool)

(declare-fun e!704291 () Bool)

(assert (=> d!136645 (=> res!828609 e!704291)))

(assert (=> d!136645 (= res!828609 (and (is-Cons!27530 lt!562146) (= (_1!10229 (h!28739 lt!562146)) key1!25)))))

(assert (=> d!136645 (= (containsKey!612 lt!562146 key1!25) e!704291)))

(declare-fun b!1242390 () Bool)

(declare-fun e!704292 () Bool)

(assert (=> b!1242390 (= e!704291 e!704292)))

(declare-fun res!828610 () Bool)

(assert (=> b!1242390 (=> (not res!828610) (not e!704292))))

(assert (=> b!1242390 (= res!828610 (and (or (not (is-Cons!27530 lt!562146)) (bvsle (_1!10229 (h!28739 lt!562146)) key1!25)) (is-Cons!27530 lt!562146) (bvslt (_1!10229 (h!28739 lt!562146)) key1!25)))))

(declare-fun b!1242391 () Bool)

(assert (=> b!1242391 (= e!704292 (containsKey!612 (t!41004 lt!562146) key1!25))))

(assert (= (and d!136645 (not res!828609)) b!1242390))

(assert (= (and b!1242390 res!828610) b!1242391))

(declare-fun m!1145107 () Bool)

(assert (=> b!1242391 m!1145107))

(assert (=> b!1242143 d!136645))

(declare-fun d!136647 () Bool)

(assert (=> d!136647 (= ($colon$colon!630 e!704109 (ite c!121515 (h!28739 (removeStrictlySorted!131 (t!41004 l!644) key2!15)) (tuple2!20439 key1!25 v1!20))) (Cons!27530 (ite c!121515 (h!28739 (removeStrictlySorted!131 (t!41004 l!644) key2!15)) (tuple2!20439 key1!25 v1!20)) e!704109))))

(assert (=> bm!61290 d!136647))

(declare-fun d!136649 () Bool)

(declare-fun res!828611 () Bool)

(declare-fun e!704293 () Bool)

(assert (=> d!136649 (=> res!828611 e!704293)))

(assert (=> d!136649 (= res!828611 (and (is-Cons!27530 lt!562165) (= (_1!10229 (h!28739 lt!562165)) key1!25)))))

(assert (=> d!136649 (= (containsKey!612 lt!562165 key1!25) e!704293)))

(declare-fun b!1242392 () Bool)

(declare-fun e!704294 () Bool)

(assert (=> b!1242392 (= e!704293 e!704294)))

(declare-fun res!828612 () Bool)

(assert (=> b!1242392 (=> (not res!828612) (not e!704294))))

(assert (=> b!1242392 (= res!828612 (and (or (not (is-Cons!27530 lt!562165)) (bvsle (_1!10229 (h!28739 lt!562165)) key1!25)) (is-Cons!27530 lt!562165) (bvslt (_1!10229 (h!28739 lt!562165)) key1!25)))))

(declare-fun b!1242393 () Bool)

(assert (=> b!1242393 (= e!704294 (containsKey!612 (t!41004 lt!562165) key1!25))))

(assert (= (and d!136649 (not res!828611)) b!1242392))

(assert (= (and b!1242392 res!828612) b!1242393))

(declare-fun m!1145109 () Bool)

(assert (=> b!1242393 m!1145109))

(assert (=> b!1242228 d!136649))

(declare-fun b!1242394 () Bool)

(declare-fun e!704299 () List!27534)

(declare-fun call!61334 () List!27534)

(assert (=> b!1242394 (= e!704299 call!61334)))

(declare-fun bm!61330 () Bool)

(declare-fun call!61333 () List!27534)

(assert (=> bm!61330 (= call!61334 call!61333)))

(declare-fun lt!562184 () List!27534)

(declare-fun b!1242395 () Bool)

(declare-fun e!704297 () Bool)

(assert (=> b!1242395 (= e!704297 (contains!7408 lt!562184 (tuple2!20439 key1!25 v1!20)))))

(declare-fun b!1242396 () Bool)

(declare-fun e!704298 () List!27534)

(declare-fun call!61335 () List!27534)

(assert (=> b!1242396 (= e!704298 call!61335)))

(declare-fun b!1242397 () Bool)

(declare-fun e!704295 () List!27534)

(assert (=> b!1242397 (= e!704295 call!61333)))

(declare-fun b!1242398 () Bool)

(declare-fun e!704296 () List!27534)

(assert (=> b!1242398 (= e!704296 (insertStrictlySorted!437 (t!41004 (t!41004 (t!41004 l!644))) key1!25 v1!20))))

(declare-fun b!1242399 () Bool)

(declare-fun res!828614 () Bool)

(assert (=> b!1242399 (=> (not res!828614) (not e!704297))))

(assert (=> b!1242399 (= res!828614 (containsKey!612 lt!562184 key1!25))))

(declare-fun c!121594 () Bool)

(declare-fun c!121592 () Bool)

(declare-fun b!1242400 () Bool)

(assert (=> b!1242400 (= e!704296 (ite c!121592 (t!41004 (t!41004 (t!41004 l!644))) (ite c!121594 (Cons!27530 (h!28739 (t!41004 (t!41004 l!644))) (t!41004 (t!41004 (t!41004 l!644)))) Nil!27531)))))

(declare-fun b!1242401 () Bool)

(assert (=> b!1242401 (= e!704298 e!704295)))

(assert (=> b!1242401 (= c!121592 (and (is-Cons!27530 (t!41004 (t!41004 l!644))) (= (_1!10229 (h!28739 (t!41004 (t!41004 l!644)))) key1!25)))))

(declare-fun b!1242402 () Bool)

(assert (=> b!1242402 (= e!704299 call!61334)))

(declare-fun c!121595 () Bool)

(declare-fun bm!61332 () Bool)

(assert (=> bm!61332 (= call!61335 ($colon$colon!630 e!704296 (ite c!121595 (h!28739 (t!41004 (t!41004 l!644))) (tuple2!20439 key1!25 v1!20))))))

(declare-fun c!121593 () Bool)

(assert (=> bm!61332 (= c!121593 c!121595)))

(declare-fun b!1242403 () Bool)

(assert (=> b!1242403 (= c!121594 (and (is-Cons!27530 (t!41004 (t!41004 l!644))) (bvsgt (_1!10229 (h!28739 (t!41004 (t!41004 l!644)))) key1!25)))))

(assert (=> b!1242403 (= e!704295 e!704299)))

(declare-fun bm!61331 () Bool)

(assert (=> bm!61331 (= call!61333 call!61335)))

(declare-fun d!136651 () Bool)

(assert (=> d!136651 e!704297))

(declare-fun res!828613 () Bool)

(assert (=> d!136651 (=> (not res!828613) (not e!704297))))

(assert (=> d!136651 (= res!828613 (isStrictlySorted!759 lt!562184))))

(assert (=> d!136651 (= lt!562184 e!704298)))

(assert (=> d!136651 (= c!121595 (and (is-Cons!27530 (t!41004 (t!41004 l!644))) (bvslt (_1!10229 (h!28739 (t!41004 (t!41004 l!644)))) key1!25)))))

(assert (=> d!136651 (isStrictlySorted!759 (t!41004 (t!41004 l!644)))))

(assert (=> d!136651 (= (insertStrictlySorted!437 (t!41004 (t!41004 l!644)) key1!25 v1!20) lt!562184)))

(assert (= (and d!136651 c!121595) b!1242396))

(assert (= (and d!136651 (not c!121595)) b!1242401))

(assert (= (and b!1242401 c!121592) b!1242397))

(assert (= (and b!1242401 (not c!121592)) b!1242403))

(assert (= (and b!1242403 c!121594) b!1242402))

(assert (= (and b!1242403 (not c!121594)) b!1242394))

(assert (= (or b!1242402 b!1242394) bm!61330))

(assert (= (or b!1242397 bm!61330) bm!61331))

(assert (= (or b!1242396 bm!61331) bm!61332))

(assert (= (and bm!61332 c!121593) b!1242398))

(assert (= (and bm!61332 (not c!121593)) b!1242400))

(assert (= (and d!136651 res!828613) b!1242399))

(assert (= (and b!1242399 res!828614) b!1242395))

(declare-fun m!1145111 () Bool)

(assert (=> b!1242395 m!1145111))

(declare-fun m!1145113 () Bool)

(assert (=> b!1242399 m!1145113))

(declare-fun m!1145115 () Bool)

(assert (=> b!1242398 m!1145115))

(declare-fun m!1145117 () Bool)

(assert (=> bm!61332 m!1145117))

(declare-fun m!1145119 () Bool)

(assert (=> d!136651 m!1145119))

(assert (=> d!136651 m!1144747))

(assert (=> b!1242227 d!136651))

(declare-fun d!136653 () Bool)

(declare-fun res!828615 () Bool)

(declare-fun e!704300 () Bool)

(assert (=> d!136653 (=> res!828615 e!704300)))

(assert (=> d!136653 (= res!828615 (or (is-Nil!27531 lt!562165) (is-Nil!27531 (t!41004 lt!562165))))))

(assert (=> d!136653 (= (isStrictlySorted!759 lt!562165) e!704300)))

(declare-fun b!1242404 () Bool)

(declare-fun e!704301 () Bool)

(assert (=> b!1242404 (= e!704300 e!704301)))

(declare-fun res!828616 () Bool)

(assert (=> b!1242404 (=> (not res!828616) (not e!704301))))

(assert (=> b!1242404 (= res!828616 (bvslt (_1!10229 (h!28739 lt!562165)) (_1!10229 (h!28739 (t!41004 lt!562165)))))))

(declare-fun b!1242405 () Bool)

(assert (=> b!1242405 (= e!704301 (isStrictlySorted!759 (t!41004 lt!562165)))))

(assert (= (and d!136653 (not res!828615)) b!1242404))

(assert (= (and b!1242404 res!828616) b!1242405))

(declare-fun m!1145121 () Bool)

(assert (=> b!1242405 m!1145121))

(assert (=> d!136545 d!136653))

(assert (=> d!136545 d!136497))

(assert (=> b!1242142 d!136545))

(declare-fun d!136655 () Bool)

(declare-fun res!828617 () Bool)

(declare-fun e!704302 () Bool)

(assert (=> d!136655 (=> res!828617 e!704302)))

(assert (=> d!136655 (= res!828617 (and (is-Cons!27530 lt!562171) (= (_1!10229 (h!28739 lt!562171)) key2!15)))))

(assert (=> d!136655 (= (containsKey!612 lt!562171 key2!15) e!704302)))

(declare-fun b!1242406 () Bool)

(declare-fun e!704303 () Bool)

(assert (=> b!1242406 (= e!704302 e!704303)))

(declare-fun res!828618 () Bool)

(assert (=> b!1242406 (=> (not res!828618) (not e!704303))))

(assert (=> b!1242406 (= res!828618 (and (or (not (is-Cons!27530 lt!562171)) (bvsle (_1!10229 (h!28739 lt!562171)) key2!15)) (is-Cons!27530 lt!562171) (bvslt (_1!10229 (h!28739 lt!562171)) key2!15)))))

(declare-fun b!1242407 () Bool)

(assert (=> b!1242407 (= e!704303 (containsKey!612 (t!41004 lt!562171) key2!15))))

(assert (= (and d!136655 (not res!828617)) b!1242406))

(assert (= (and b!1242406 res!828618) b!1242407))

(declare-fun m!1145123 () Bool)

(assert (=> b!1242407 m!1145123))

(assert (=> b!1242259 d!136655))

(declare-fun d!136657 () Bool)

(assert (=> d!136657 (= ($colon$colon!630 (removeStrictlySorted!131 (t!41004 (t!41004 l!644)) key2!15) (h!28739 (t!41004 l!644))) (Cons!27530 (h!28739 (t!41004 l!644)) (removeStrictlySorted!131 (t!41004 (t!41004 l!644)) key2!15)))))

(assert (=> b!1242258 d!136657))

(declare-fun d!136659 () Bool)

(declare-fun e!704305 () Bool)

(assert (=> d!136659 e!704305))

(declare-fun res!828619 () Bool)

(assert (=> d!136659 (=> (not res!828619) (not e!704305))))

(declare-fun lt!562185 () List!27534)

(assert (=> d!136659 (= res!828619 (isStrictlySorted!759 lt!562185))))

(declare-fun e!704306 () List!27534)

(assert (=> d!136659 (= lt!562185 e!704306)))

(declare-fun c!121596 () Bool)

(assert (=> d!136659 (= c!121596 (and (is-Cons!27530 (t!41004 (t!41004 l!644))) (= (_1!10229 (h!28739 (t!41004 (t!41004 l!644)))) key2!15)))))

(assert (=> d!136659 (isStrictlySorted!759 (t!41004 (t!41004 l!644)))))

(assert (=> d!136659 (= (removeStrictlySorted!131 (t!41004 (t!41004 l!644)) key2!15) lt!562185)))

(declare-fun b!1242408 () Bool)

(declare-fun e!704304 () List!27534)

(assert (=> b!1242408 (= e!704304 ($colon$colon!630 (removeStrictlySorted!131 (t!41004 (t!41004 (t!41004 l!644))) key2!15) (h!28739 (t!41004 (t!41004 l!644)))))))

(declare-fun b!1242409 () Bool)

(assert (=> b!1242409 (= e!704305 (not (containsKey!612 lt!562185 key2!15)))))

(declare-fun b!1242410 () Bool)

(assert (=> b!1242410 (= e!704306 (t!41004 (t!41004 (t!41004 l!644))))))

(declare-fun b!1242411 () Bool)

(assert (=> b!1242411 (= e!704304 Nil!27531)))

(declare-fun b!1242412 () Bool)

(assert (=> b!1242412 (= e!704306 e!704304)))

(declare-fun c!121597 () Bool)

(assert (=> b!1242412 (= c!121597 (and (is-Cons!27530 (t!41004 (t!41004 l!644))) (not (= (_1!10229 (h!28739 (t!41004 (t!41004 l!644)))) key2!15))))))

(assert (= (and d!136659 c!121596) b!1242410))

(assert (= (and d!136659 (not c!121596)) b!1242412))

(assert (= (and b!1242412 c!121597) b!1242408))

(assert (= (and b!1242412 (not c!121597)) b!1242411))

(assert (= (and d!136659 res!828619) b!1242409))

(declare-fun m!1145125 () Bool)

(assert (=> d!136659 m!1145125))

(assert (=> d!136659 m!1144747))

(declare-fun m!1145127 () Bool)

(assert (=> b!1242408 m!1145127))

(assert (=> b!1242408 m!1145127))

(declare-fun m!1145129 () Bool)

(assert (=> b!1242408 m!1145129))

(declare-fun m!1145131 () Bool)

(assert (=> b!1242409 m!1145131))

(assert (=> b!1242258 d!136659))

(declare-fun d!136661 () Bool)

(assert (=> d!136661 (= ($colon$colon!630 e!704137 (ite c!121539 (h!28739 (removeStrictlySorted!131 l!644 key2!15)) (tuple2!20439 key1!25 v1!20))) (Cons!27530 (ite c!121539 (h!28739 (removeStrictlySorted!131 l!644 key2!15)) (tuple2!20439 key1!25 v1!20)) e!704137))))

(assert (=> bm!61306 d!136661))

(declare-fun d!136663 () Bool)

(declare-fun lt!562188 () Bool)

(declare-fun content!609 (List!27534) (Set tuple2!20438))

(assert (=> d!136663 (= lt!562188 (set.member (tuple2!20439 key1!25 v1!20) (content!609 lt!562165)))))

(declare-fun e!704312 () Bool)

(assert (=> d!136663 (= lt!562188 e!704312)))

(declare-fun res!828624 () Bool)

(assert (=> d!136663 (=> (not res!828624) (not e!704312))))

(assert (=> d!136663 (= res!828624 (is-Cons!27530 lt!562165))))

(assert (=> d!136663 (= (contains!7408 lt!562165 (tuple2!20439 key1!25 v1!20)) lt!562188)))

(declare-fun b!1242417 () Bool)

(declare-fun e!704311 () Bool)

(assert (=> b!1242417 (= e!704312 e!704311)))

(declare-fun res!828625 () Bool)

(assert (=> b!1242417 (=> res!828625 e!704311)))

(assert (=> b!1242417 (= res!828625 (= (h!28739 lt!562165) (tuple2!20439 key1!25 v1!20)))))

(declare-fun b!1242418 () Bool)

(assert (=> b!1242418 (= e!704311 (contains!7408 (t!41004 lt!562165) (tuple2!20439 key1!25 v1!20)))))

(assert (= (and d!136663 res!828624) b!1242417))

(assert (= (and b!1242417 (not res!828625)) b!1242418))

(declare-fun m!1145133 () Bool)

(assert (=> d!136663 m!1145133))

(declare-fun m!1145135 () Bool)

(assert (=> d!136663 m!1145135))

(declare-fun m!1145137 () Bool)

(assert (=> b!1242418 m!1145137))

(assert (=> b!1242224 d!136663))

(declare-fun d!136665 () Bool)

(declare-fun res!828626 () Bool)

(declare-fun e!704313 () Bool)

(assert (=> d!136665 (=> res!828626 e!704313)))

(assert (=> d!136665 (= res!828626 (and (is-Cons!27530 lt!562143) (= (_1!10229 (h!28739 lt!562143)) key1!25)))))

(assert (=> d!136665 (= (containsKey!612 lt!562143 key1!25) e!704313)))

(declare-fun b!1242419 () Bool)

(declare-fun e!704314 () Bool)

(assert (=> b!1242419 (= e!704313 e!704314)))

(declare-fun res!828627 () Bool)

(assert (=> b!1242419 (=> (not res!828627) (not e!704314))))

(assert (=> b!1242419 (= res!828627 (and (or (not (is-Cons!27530 lt!562143)) (bvsle (_1!10229 (h!28739 lt!562143)) key1!25)) (is-Cons!27530 lt!562143) (bvslt (_1!10229 (h!28739 lt!562143)) key1!25)))))

(declare-fun b!1242420 () Bool)

(assert (=> b!1242420 (= e!704314 (containsKey!612 (t!41004 lt!562143) key1!25))))

(assert (= (and d!136665 (not res!828626)) b!1242419))

(assert (= (and b!1242419 res!828627) b!1242420))

(declare-fun m!1145139 () Bool)

(assert (=> b!1242420 m!1145139))

(assert (=> b!1242113 d!136665))

(declare-fun d!136667 () Bool)

(declare-fun res!828628 () Bool)

(declare-fun e!704315 () Bool)

(assert (=> d!136667 (=> res!828628 e!704315)))

(assert (=> d!136667 (= res!828628 (or (is-Nil!27531 lt!562143) (is-Nil!27531 (t!41004 lt!562143))))))

(assert (=> d!136667 (= (isStrictlySorted!759 lt!562143) e!704315)))

(declare-fun b!1242421 () Bool)

(declare-fun e!704316 () Bool)

(assert (=> b!1242421 (= e!704315 e!704316)))

(declare-fun res!828629 () Bool)

(assert (=> b!1242421 (=> (not res!828629) (not e!704316))))

(assert (=> b!1242421 (= res!828629 (bvslt (_1!10229 (h!28739 lt!562143)) (_1!10229 (h!28739 (t!41004 lt!562143)))))))

(declare-fun b!1242422 () Bool)

(assert (=> b!1242422 (= e!704316 (isStrictlySorted!759 (t!41004 lt!562143)))))

(assert (= (and d!136667 (not res!828628)) b!1242421))

(assert (= (and b!1242421 res!828629) b!1242422))

(declare-fun m!1145141 () Bool)

(assert (=> b!1242422 m!1145141))

(assert (=> d!136513 d!136667))

(declare-fun d!136669 () Bool)

(declare-fun res!828630 () Bool)

(declare-fun e!704317 () Bool)

(assert (=> d!136669 (=> res!828630 e!704317)))

(assert (=> d!136669 (= res!828630 (or (is-Nil!27531 (removeStrictlySorted!131 (t!41004 l!644) key2!15)) (is-Nil!27531 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15)))))))

(assert (=> d!136669 (= (isStrictlySorted!759 (removeStrictlySorted!131 (t!41004 l!644) key2!15)) e!704317)))

(declare-fun b!1242423 () Bool)

(declare-fun e!704318 () Bool)

(assert (=> b!1242423 (= e!704317 e!704318)))

(declare-fun res!828631 () Bool)

(assert (=> b!1242423 (=> (not res!828631) (not e!704318))))

(assert (=> b!1242423 (= res!828631 (bvslt (_1!10229 (h!28739 (removeStrictlySorted!131 (t!41004 l!644) key2!15))) (_1!10229 (h!28739 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15))))))))

(declare-fun b!1242424 () Bool)

(assert (=> b!1242424 (= e!704318 (isStrictlySorted!759 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15))))))

(assert (= (and d!136669 (not res!828630)) b!1242423))

(assert (= (and b!1242423 res!828631) b!1242424))

(declare-fun m!1145143 () Bool)

(assert (=> b!1242424 m!1145143))

(assert (=> d!136513 d!136669))

(declare-fun b!1242425 () Bool)

(declare-fun e!704323 () List!27534)

(declare-fun call!61337 () List!27534)

(assert (=> b!1242425 (= e!704323 call!61337)))

(declare-fun bm!61333 () Bool)

(declare-fun call!61336 () List!27534)

(assert (=> bm!61333 (= call!61337 call!61336)))

(declare-fun lt!562189 () List!27534)

(declare-fun b!1242426 () Bool)

(declare-fun e!704321 () Bool)

(assert (=> b!1242426 (= e!704321 (contains!7408 lt!562189 (tuple2!20439 key1!25 v1!20)))))

(declare-fun b!1242427 () Bool)

(declare-fun e!704322 () List!27534)

(declare-fun call!61338 () List!27534)

(assert (=> b!1242427 (= e!704322 call!61338)))

(declare-fun b!1242428 () Bool)

(declare-fun e!704319 () List!27534)

(assert (=> b!1242428 (= e!704319 call!61336)))

(declare-fun b!1242429 () Bool)

(declare-fun e!704320 () List!27534)

(assert (=> b!1242429 (= e!704320 (insertStrictlySorted!437 (t!41004 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15))) key1!25 v1!20))))

(declare-fun b!1242430 () Bool)

(declare-fun res!828633 () Bool)

(assert (=> b!1242430 (=> (not res!828633) (not e!704321))))

(assert (=> b!1242430 (= res!828633 (containsKey!612 lt!562189 key1!25))))

(declare-fun c!121600 () Bool)

(declare-fun b!1242431 () Bool)

(declare-fun c!121598 () Bool)

(assert (=> b!1242431 (= e!704320 (ite c!121598 (t!41004 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15))) (ite c!121600 (Cons!27530 (h!28739 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15))) (t!41004 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15)))) Nil!27531)))))

(declare-fun b!1242432 () Bool)

(assert (=> b!1242432 (= e!704322 e!704319)))

(assert (=> b!1242432 (= c!121598 (and (is-Cons!27530 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15))) (= (_1!10229 (h!28739 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15)))) key1!25)))))

(declare-fun b!1242433 () Bool)

(assert (=> b!1242433 (= e!704323 call!61337)))

(declare-fun bm!61335 () Bool)

(declare-fun c!121601 () Bool)

(assert (=> bm!61335 (= call!61338 ($colon$colon!630 e!704320 (ite c!121601 (h!28739 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15))) (tuple2!20439 key1!25 v1!20))))))

(declare-fun c!121599 () Bool)

(assert (=> bm!61335 (= c!121599 c!121601)))

(declare-fun b!1242434 () Bool)

(assert (=> b!1242434 (= c!121600 (and (is-Cons!27530 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15))) (bvsgt (_1!10229 (h!28739 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15)))) key1!25)))))

(assert (=> b!1242434 (= e!704319 e!704323)))

(declare-fun bm!61334 () Bool)

(assert (=> bm!61334 (= call!61336 call!61338)))

(declare-fun d!136671 () Bool)

(assert (=> d!136671 e!704321))

(declare-fun res!828632 () Bool)

(assert (=> d!136671 (=> (not res!828632) (not e!704321))))

(assert (=> d!136671 (= res!828632 (isStrictlySorted!759 lt!562189))))

(assert (=> d!136671 (= lt!562189 e!704322)))

(assert (=> d!136671 (= c!121601 (and (is-Cons!27530 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15))) (bvslt (_1!10229 (h!28739 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15)))) key1!25)))))

(assert (=> d!136671 (isStrictlySorted!759 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15)))))

(assert (=> d!136671 (= (insertStrictlySorted!437 (t!41004 (removeStrictlySorted!131 (t!41004 l!644) key2!15)) key1!25 v1!20) lt!562189)))

(assert (= (and d!136671 c!121601) b!1242427))

(assert (= (and d!136671 (not c!121601)) b!1242432))

(assert (= (and b!1242432 c!121598) b!1242428))

(assert (= (and b!1242432 (not c!121598)) b!1242434))

(assert (= (and b!1242434 c!121600) b!1242433))

(assert (= (and b!1242434 (not c!121600)) b!1242425))

(assert (= (or b!1242433 b!1242425) bm!61333))

(assert (= (or b!1242428 bm!61333) bm!61334))

(assert (= (or b!1242427 bm!61334) bm!61335))

(assert (= (and bm!61335 c!121599) b!1242429))

(assert (= (and bm!61335 (not c!121599)) b!1242431))

(assert (= (and d!136671 res!828632) b!1242430))

(assert (= (and b!1242430 res!828633) b!1242426))

(declare-fun m!1145145 () Bool)

(assert (=> b!1242426 m!1145145))

(declare-fun m!1145147 () Bool)

(assert (=> b!1242430 m!1145147))

(declare-fun m!1145149 () Bool)

(assert (=> b!1242429 m!1145149))

(declare-fun m!1145151 () Bool)

(assert (=> bm!61335 m!1145151))

(declare-fun m!1145153 () Bool)

(assert (=> d!136671 m!1145153))

(assert (=> d!136671 m!1145143))

(assert (=> b!1242112 d!136671))

(declare-fun d!136673 () Bool)

(declare-fun res!828634 () Bool)

(declare-fun e!704324 () Bool)

(assert (=> d!136673 (=> res!828634 e!704324)))

(assert (=> d!136673 (= res!828634 (or (is-Nil!27531 lt!562153) (is-Nil!27531 (t!41004 lt!562153))))))

(assert (=> d!136673 (= (isStrictlySorted!759 lt!562153) e!704324)))

(declare-fun b!1242435 () Bool)

(declare-fun e!704325 () Bool)

(assert (=> b!1242435 (= e!704324 e!704325)))

(declare-fun res!828635 () Bool)

(assert (=> b!1242435 (=> (not res!828635) (not e!704325))))

(assert (=> b!1242435 (= res!828635 (bvslt (_1!10229 (h!28739 lt!562153)) (_1!10229 (h!28739 (t!41004 lt!562153)))))))

(declare-fun b!1242436 () Bool)

(assert (=> b!1242436 (= e!704325 (isStrictlySorted!759 (t!41004 lt!562153)))))

(assert (= (and d!136673 (not res!828634)) b!1242435))

(assert (= (and b!1242435 res!828635) b!1242436))

(declare-fun m!1145155 () Bool)

(assert (=> b!1242436 m!1145155))

(assert (=> d!136533 d!136673))

(assert (=> d!136533 d!136505))

(declare-fun d!136675 () Bool)

(declare-fun res!828636 () Bool)

(declare-fun e!704326 () Bool)

(assert (=> d!136675 (=> res!828636 e!704326)))

(assert (=> d!136675 (= res!828636 (or (is-Nil!27531 lt!562146) (is-Nil!27531 (t!41004 lt!562146))))))

(assert (=> d!136675 (= (isStrictlySorted!759 lt!562146) e!704326)))

(declare-fun b!1242437 () Bool)

(declare-fun e!704327 () Bool)

(assert (=> b!1242437 (= e!704326 e!704327)))

(declare-fun res!828637 () Bool)

(assert (=> b!1242437 (=> (not res!828637) (not e!704327))))

(assert (=> b!1242437 (= res!828637 (bvslt (_1!10229 (h!28739 lt!562146)) (_1!10229 (h!28739 (t!41004 lt!562146)))))))

(declare-fun b!1242438 () Bool)

(assert (=> b!1242438 (= e!704327 (isStrictlySorted!759 (t!41004 lt!562146)))))

(assert (= (and d!136675 (not res!828636)) b!1242437))

(assert (= (and b!1242437 res!828637) b!1242438))

(declare-fun m!1145157 () Bool)

(assert (=> b!1242438 m!1145157))

(assert (=> d!136519 d!136675))

(assert (=> d!136519 d!136505))

(declare-fun lt!562190 () Bool)

(declare-fun d!136677 () Bool)

(assert (=> d!136677 (= lt!562190 (set.member (tuple2!20439 key1!25 v1!20) (content!609 lt!562146)))))

(declare-fun e!704329 () Bool)

(assert (=> d!136677 (= lt!562190 e!704329)))

(declare-fun res!828638 () Bool)

(assert (=> d!136677 (=> (not res!828638) (not e!704329))))

(assert (=> d!136677 (= res!828638 (is-Cons!27530 lt!562146))))

(assert (=> d!136677 (= (contains!7408 lt!562146 (tuple2!20439 key1!25 v1!20)) lt!562190)))

(declare-fun b!1242439 () Bool)

(declare-fun e!704328 () Bool)

(assert (=> b!1242439 (= e!704329 e!704328)))

(declare-fun res!828639 () Bool)

(assert (=> b!1242439 (=> res!828639 e!704328)))

(assert (=> b!1242439 (= res!828639 (= (h!28739 lt!562146) (tuple2!20439 key1!25 v1!20)))))

(declare-fun b!1242440 () Bool)

(assert (=> b!1242440 (= e!704328 (contains!7408 (t!41004 lt!562146) (tuple2!20439 key1!25 v1!20)))))

(assert (= (and d!136677 res!828638) b!1242439))

(assert (= (and b!1242439 (not res!828639)) b!1242440))

(declare-fun m!1145159 () Bool)

(assert (=> d!136677 m!1145159))

(declare-fun m!1145161 () Bool)

(assert (=> d!136677 m!1145161))

(declare-fun m!1145163 () Bool)

(assert (=> b!1242440 m!1145163))

(assert (=> b!1242136 d!136677))

(declare-fun lt!562191 () Bool)

(declare-fun d!136679 () Bool)

(assert (=> d!136679 (= lt!562191 (set.member (tuple2!20439 key1!25 v1!20) (content!609 lt!562143)))))

(declare-fun e!704331 () Bool)

(assert (=> d!136679 (= lt!562191 e!704331)))

(declare-fun res!828640 () Bool)

(assert (=> d!136679 (=> (not res!828640) (not e!704331))))

(assert (=> d!136679 (= res!828640 (is-Cons!27530 lt!562143))))

(assert (=> d!136679 (= (contains!7408 lt!562143 (tuple2!20439 key1!25 v1!20)) lt!562191)))

(declare-fun b!1242441 () Bool)

(declare-fun e!704330 () Bool)

(assert (=> b!1242441 (= e!704331 e!704330)))

(declare-fun res!828641 () Bool)

(assert (=> b!1242441 (=> res!828641 e!704330)))

(assert (=> b!1242441 (= res!828641 (= (h!28739 lt!562143) (tuple2!20439 key1!25 v1!20)))))

(declare-fun b!1242442 () Bool)

(assert (=> b!1242442 (= e!704330 (contains!7408 (t!41004 lt!562143) (tuple2!20439 key1!25 v1!20)))))

(assert (= (and d!136679 res!828640) b!1242441))

(assert (= (and b!1242441 (not res!828641)) b!1242442))

(declare-fun m!1145165 () Bool)

(assert (=> d!136679 m!1145165))

(declare-fun m!1145167 () Bool)

(assert (=> d!136679 m!1145167))

(declare-fun m!1145169 () Bool)

(assert (=> b!1242442 m!1145169))

(assert (=> b!1242109 d!136679))

(declare-fun d!136681 () Bool)

(declare-fun res!828642 () Bool)

(declare-fun e!704332 () Bool)

(assert (=> d!136681 (=> res!828642 e!704332)))

(assert (=> d!136681 (= res!828642 (and (is-Cons!27530 lt!562168) (= (_1!10229 (h!28739 lt!562168)) key2!15)))))

(assert (=> d!136681 (= (containsKey!612 lt!562168 key2!15) e!704332)))

(declare-fun b!1242443 () Bool)

(declare-fun e!704333 () Bool)

(assert (=> b!1242443 (= e!704332 e!704333)))

(declare-fun res!828643 () Bool)

(assert (=> b!1242443 (=> (not res!828643) (not e!704333))))

(assert (=> b!1242443 (= res!828643 (and (or (not (is-Cons!27530 lt!562168)) (bvsle (_1!10229 (h!28739 lt!562168)) key2!15)) (is-Cons!27530 lt!562168) (bvslt (_1!10229 (h!28739 lt!562168)) key2!15)))))

(declare-fun b!1242444 () Bool)

(assert (=> b!1242444 (= e!704333 (containsKey!612 (t!41004 lt!562168) key2!15))))

(assert (= (and d!136681 (not res!828642)) b!1242443))

(assert (= (and b!1242443 res!828643) b!1242444))

(declare-fun m!1145171 () Bool)

(assert (=> b!1242444 m!1145171))

(assert (=> b!1242244 d!136681))

(declare-fun d!136683 () Bool)

(assert (=> d!136683 (= ($colon$colon!630 (removeStrictlySorted!131 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20)) key2!15) (h!28739 (insertStrictlySorted!437 l!644 key1!25 v1!20))) (Cons!27530 (h!28739 (insertStrictlySorted!437 l!644 key1!25 v1!20)) (removeStrictlySorted!131 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20)) key2!15)))))

(assert (=> b!1242243 d!136683))

(declare-fun d!136685 () Bool)

(declare-fun e!704335 () Bool)

(assert (=> d!136685 e!704335))

(declare-fun res!828644 () Bool)

(assert (=> d!136685 (=> (not res!828644) (not e!704335))))

(declare-fun lt!562192 () List!27534)

(assert (=> d!136685 (= res!828644 (isStrictlySorted!759 lt!562192))))

(declare-fun e!704336 () List!27534)

(assert (=> d!136685 (= lt!562192 e!704336)))

(declare-fun c!121602 () Bool)

(assert (=> d!136685 (= c!121602 (and (is-Cons!27530 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20))) (= (_1!10229 (h!28739 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20)))) key2!15)))))

(assert (=> d!136685 (isStrictlySorted!759 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20)))))

(assert (=> d!136685 (= (removeStrictlySorted!131 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20)) key2!15) lt!562192)))

(declare-fun b!1242445 () Bool)

(declare-fun e!704334 () List!27534)

(assert (=> b!1242445 (= e!704334 ($colon$colon!630 (removeStrictlySorted!131 (t!41004 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20))) key2!15) (h!28739 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20)))))))

(declare-fun b!1242446 () Bool)

(assert (=> b!1242446 (= e!704335 (not (containsKey!612 lt!562192 key2!15)))))

(declare-fun b!1242447 () Bool)

(assert (=> b!1242447 (= e!704336 (t!41004 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20))))))

(declare-fun b!1242448 () Bool)

(assert (=> b!1242448 (= e!704334 Nil!27531)))

(declare-fun b!1242449 () Bool)

(assert (=> b!1242449 (= e!704336 e!704334)))

(declare-fun c!121603 () Bool)

(assert (=> b!1242449 (= c!121603 (and (is-Cons!27530 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20))) (not (= (_1!10229 (h!28739 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20)))) key2!15))))))

(assert (= (and d!136685 c!121602) b!1242447))

(assert (= (and d!136685 (not c!121602)) b!1242449))

(assert (= (and b!1242449 c!121603) b!1242445))

(assert (= (and b!1242449 (not c!121603)) b!1242448))

(assert (= (and d!136685 res!828644) b!1242446))

(declare-fun m!1145173 () Bool)

(assert (=> d!136685 m!1145173))

(declare-fun m!1145175 () Bool)

(assert (=> d!136685 m!1145175))

(declare-fun m!1145177 () Bool)

(assert (=> b!1242445 m!1145177))

(assert (=> b!1242445 m!1145177))

(declare-fun m!1145179 () Bool)

(assert (=> b!1242445 m!1145179))

(declare-fun m!1145181 () Bool)

(assert (=> b!1242446 m!1145181))

(assert (=> b!1242243 d!136685))

(declare-fun d!136687 () Bool)

(declare-fun res!828645 () Bool)

(declare-fun e!704337 () Bool)

(assert (=> d!136687 (=> res!828645 e!704337)))

(assert (=> d!136687 (= res!828645 (or (is-Nil!27531 lt!562171) (is-Nil!27531 (t!41004 lt!562171))))))

(assert (=> d!136687 (= (isStrictlySorted!759 lt!562171) e!704337)))

(declare-fun b!1242450 () Bool)

(declare-fun e!704338 () Bool)

(assert (=> b!1242450 (= e!704337 e!704338)))

(declare-fun res!828646 () Bool)

(assert (=> b!1242450 (=> (not res!828646) (not e!704338))))

(assert (=> b!1242450 (= res!828646 (bvslt (_1!10229 (h!28739 lt!562171)) (_1!10229 (h!28739 (t!41004 lt!562171)))))))

(declare-fun b!1242451 () Bool)

(assert (=> b!1242451 (= e!704338 (isStrictlySorted!759 (t!41004 lt!562171)))))

(assert (= (and d!136687 (not res!828645)) b!1242450))

(assert (= (and b!1242450 res!828646) b!1242451))

(declare-fun m!1145183 () Bool)

(assert (=> b!1242451 m!1145183))

(assert (=> d!136557 d!136687))

(assert (=> d!136557 d!136497))

(declare-fun d!136689 () Bool)

(declare-fun res!828647 () Bool)

(declare-fun e!704339 () Bool)

(assert (=> d!136689 (=> res!828647 e!704339)))

(assert (=> d!136689 (= res!828647 (and (is-Cons!27530 lt!562134) (= (_1!10229 (h!28739 lt!562134)) key2!15)))))

(assert (=> d!136689 (= (containsKey!612 lt!562134 key2!15) e!704339)))

(declare-fun b!1242452 () Bool)

(declare-fun e!704340 () Bool)

(assert (=> b!1242452 (= e!704339 e!704340)))

(declare-fun res!828648 () Bool)

(assert (=> b!1242452 (=> (not res!828648) (not e!704340))))

(assert (=> b!1242452 (= res!828648 (and (or (not (is-Cons!27530 lt!562134)) (bvsle (_1!10229 (h!28739 lt!562134)) key2!15)) (is-Cons!27530 lt!562134) (bvslt (_1!10229 (h!28739 lt!562134)) key2!15)))))

(declare-fun b!1242453 () Bool)

(assert (=> b!1242453 (= e!704340 (containsKey!612 (t!41004 lt!562134) key2!15))))

(assert (= (and d!136689 (not res!828647)) b!1242452))

(assert (= (and b!1242452 res!828648) b!1242453))

(declare-fun m!1145185 () Bool)

(assert (=> b!1242453 m!1145185))

(assert (=> b!1242029 d!136689))

(declare-fun d!136691 () Bool)

(declare-fun res!828649 () Bool)

(declare-fun e!704341 () Bool)

(assert (=> d!136691 (=> res!828649 e!704341)))

(assert (=> d!136691 (= res!828649 (and (is-Cons!27530 lt!562149) (= (_1!10229 (h!28739 lt!562149)) key1!25)))))

(assert (=> d!136691 (= (containsKey!612 lt!562149 key1!25) e!704341)))

(declare-fun b!1242454 () Bool)

(declare-fun e!704342 () Bool)

(assert (=> b!1242454 (= e!704341 e!704342)))

(declare-fun res!828650 () Bool)

(assert (=> b!1242454 (=> (not res!828650) (not e!704342))))

(assert (=> b!1242454 (= res!828650 (and (or (not (is-Cons!27530 lt!562149)) (bvsle (_1!10229 (h!28739 lt!562149)) key1!25)) (is-Cons!27530 lt!562149) (bvslt (_1!10229 (h!28739 lt!562149)) key1!25)))))

(declare-fun b!1242455 () Bool)

(assert (=> b!1242455 (= e!704342 (containsKey!612 (t!41004 lt!562149) key1!25))))

(assert (= (and d!136691 (not res!828649)) b!1242454))

(assert (= (and b!1242454 res!828650) b!1242455))

(declare-fun m!1145187 () Bool)

(assert (=> b!1242455 m!1145187))

(assert (=> b!1242165 d!136691))

(declare-fun d!136693 () Bool)

(assert (=> d!136693 (= ($colon$colon!630 (removeStrictlySorted!131 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20)) key2!15) (h!28739 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20))) (Cons!27530 (h!28739 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20)) (removeStrictlySorted!131 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20)) key2!15)))))

(assert (=> b!1242028 d!136693))

(declare-fun d!136695 () Bool)

(declare-fun e!704344 () Bool)

(assert (=> d!136695 e!704344))

(declare-fun res!828651 () Bool)

(assert (=> d!136695 (=> (not res!828651) (not e!704344))))

(declare-fun lt!562193 () List!27534)

(assert (=> d!136695 (= res!828651 (isStrictlySorted!759 lt!562193))))

(declare-fun e!704345 () List!27534)

(assert (=> d!136695 (= lt!562193 e!704345)))

(declare-fun c!121604 () Bool)

(assert (=> d!136695 (= c!121604 (and (is-Cons!27530 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20))) (= (_1!10229 (h!28739 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20)))) key2!15)))))

(assert (=> d!136695 (isStrictlySorted!759 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20)))))

(assert (=> d!136695 (= (removeStrictlySorted!131 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20)) key2!15) lt!562193)))

(declare-fun b!1242456 () Bool)

(declare-fun e!704343 () List!27534)

(assert (=> b!1242456 (= e!704343 ($colon$colon!630 (removeStrictlySorted!131 (t!41004 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20))) key2!15) (h!28739 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20)))))))

(declare-fun b!1242457 () Bool)

(assert (=> b!1242457 (= e!704344 (not (containsKey!612 lt!562193 key2!15)))))

(declare-fun b!1242458 () Bool)

(assert (=> b!1242458 (= e!704345 (t!41004 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20))))))

(declare-fun b!1242459 () Bool)

(assert (=> b!1242459 (= e!704343 Nil!27531)))

(declare-fun b!1242460 () Bool)

(assert (=> b!1242460 (= e!704345 e!704343)))

(declare-fun c!121605 () Bool)

(assert (=> b!1242460 (= c!121605 (and (is-Cons!27530 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20))) (not (= (_1!10229 (h!28739 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20)))) key2!15))))))

(assert (= (and d!136695 c!121604) b!1242458))

(assert (= (and d!136695 (not c!121604)) b!1242460))

(assert (= (and b!1242460 c!121605) b!1242456))

(assert (= (and b!1242460 (not c!121605)) b!1242459))

(assert (= (and d!136695 res!828651) b!1242457))

(declare-fun m!1145189 () Bool)

(assert (=> d!136695 m!1145189))

(declare-fun m!1145191 () Bool)

(assert (=> d!136695 m!1145191))

(declare-fun m!1145193 () Bool)

(assert (=> b!1242456 m!1145193))

(assert (=> b!1242456 m!1145193))

(declare-fun m!1145195 () Bool)

(assert (=> b!1242456 m!1145195))

(declare-fun m!1145197 () Bool)

(assert (=> b!1242457 m!1145197))

(assert (=> b!1242028 d!136695))

(declare-fun d!136697 () Bool)

(declare-fun res!828652 () Bool)

(declare-fun e!704346 () Bool)

(assert (=> d!136697 (=> res!828652 e!704346)))

(assert (=> d!136697 (= res!828652 (or (is-Nil!27531 lt!562149) (is-Nil!27531 (t!41004 lt!562149))))))

(assert (=> d!136697 (= (isStrictlySorted!759 lt!562149) e!704346)))

(declare-fun b!1242461 () Bool)

(declare-fun e!704347 () Bool)

(assert (=> b!1242461 (= e!704346 e!704347)))

(declare-fun res!828653 () Bool)

(assert (=> b!1242461 (=> (not res!828653) (not e!704347))))

(assert (=> b!1242461 (= res!828653 (bvslt (_1!10229 (h!28739 lt!562149)) (_1!10229 (h!28739 (t!41004 lt!562149)))))))

(declare-fun b!1242462 () Bool)

(assert (=> b!1242462 (= e!704347 (isStrictlySorted!759 (t!41004 lt!562149)))))

(assert (= (and d!136697 (not res!828652)) b!1242461))

(assert (= (and b!1242461 res!828653) b!1242462))

(declare-fun m!1145199 () Bool)

(assert (=> b!1242462 m!1145199))

(assert (=> d!136525 d!136697))

(declare-fun d!136699 () Bool)

(declare-fun res!828654 () Bool)

(declare-fun e!704348 () Bool)

(assert (=> d!136699 (=> res!828654 e!704348)))

(assert (=> d!136699 (= res!828654 (or (is-Nil!27531 (removeStrictlySorted!131 l!644 key2!15)) (is-Nil!27531 (t!41004 (removeStrictlySorted!131 l!644 key2!15)))))))

(assert (=> d!136699 (= (isStrictlySorted!759 (removeStrictlySorted!131 l!644 key2!15)) e!704348)))

(declare-fun b!1242463 () Bool)

(declare-fun e!704349 () Bool)

(assert (=> b!1242463 (= e!704348 e!704349)))

(declare-fun res!828655 () Bool)

(assert (=> b!1242463 (=> (not res!828655) (not e!704349))))

(assert (=> b!1242463 (= res!828655 (bvslt (_1!10229 (h!28739 (removeStrictlySorted!131 l!644 key2!15))) (_1!10229 (h!28739 (t!41004 (removeStrictlySorted!131 l!644 key2!15))))))))

(declare-fun b!1242464 () Bool)

(assert (=> b!1242464 (= e!704349 (isStrictlySorted!759 (t!41004 (removeStrictlySorted!131 l!644 key2!15))))))

(assert (= (and d!136699 (not res!828654)) b!1242463))

(assert (= (and b!1242463 res!828655) b!1242464))

(declare-fun m!1145201 () Bool)

(assert (=> b!1242464 m!1145201))

(assert (=> d!136525 d!136699))

(declare-fun d!136701 () Bool)

(assert (=> d!136701 (= (insertStrictlySorted!437 (removeStrictlySorted!131 (t!41004 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!131 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20) key2!15))))

(assert (=> d!136701 true))

(declare-fun _$3!73 () Unit!41203)

(assert (=> d!136701 (= (choose!1850 (t!41004 l!644) key1!25 v1!20 key2!15) _$3!73)))

(declare-fun bs!34973 () Bool)

(assert (= bs!34973 d!136701))

(assert (=> bs!34973 m!1144693))

(assert (=> bs!34973 m!1144693))

(assert (=> bs!34973 m!1144695))

(assert (=> bs!34973 m!1144689))

(assert (=> bs!34973 m!1144689))

(assert (=> bs!34973 m!1144691))

(assert (=> d!136539 d!136701))

(assert (=> d!136539 d!136507))

(assert (=> d!136539 d!136513))

(assert (=> d!136539 d!136545))

(assert (=> d!136539 d!136557))

(declare-fun b!1242465 () Bool)

(declare-fun e!704354 () List!27534)

(declare-fun call!61340 () List!27534)

(assert (=> b!1242465 (= e!704354 call!61340)))

(declare-fun bm!61336 () Bool)

(declare-fun call!61339 () List!27534)

(assert (=> bm!61336 (= call!61340 call!61339)))

(declare-fun lt!562194 () List!27534)

(declare-fun b!1242466 () Bool)

(declare-fun e!704352 () Bool)

(assert (=> b!1242466 (= e!704352 (contains!7408 lt!562194 (tuple2!20439 key1!25 v1!20)))))

(declare-fun b!1242467 () Bool)

(declare-fun e!704353 () List!27534)

(declare-fun call!61341 () List!27534)

(assert (=> b!1242467 (= e!704353 call!61341)))

(declare-fun b!1242468 () Bool)

(declare-fun e!704350 () List!27534)

(assert (=> b!1242468 (= e!704350 call!61339)))

(declare-fun e!704351 () List!27534)

(declare-fun b!1242469 () Bool)

(assert (=> b!1242469 (= e!704351 (insertStrictlySorted!437 (t!41004 (t!41004 (removeStrictlySorted!131 l!644 key2!15))) key1!25 v1!20))))

(declare-fun b!1242470 () Bool)

(declare-fun res!828657 () Bool)

(assert (=> b!1242470 (=> (not res!828657) (not e!704352))))

(assert (=> b!1242470 (= res!828657 (containsKey!612 lt!562194 key1!25))))

(declare-fun b!1242471 () Bool)

(declare-fun c!121608 () Bool)

(declare-fun c!121606 () Bool)

(assert (=> b!1242471 (= e!704351 (ite c!121606 (t!41004 (t!41004 (removeStrictlySorted!131 l!644 key2!15))) (ite c!121608 (Cons!27530 (h!28739 (t!41004 (removeStrictlySorted!131 l!644 key2!15))) (t!41004 (t!41004 (removeStrictlySorted!131 l!644 key2!15)))) Nil!27531)))))

(declare-fun b!1242472 () Bool)

(assert (=> b!1242472 (= e!704353 e!704350)))

(assert (=> b!1242472 (= c!121606 (and (is-Cons!27530 (t!41004 (removeStrictlySorted!131 l!644 key2!15))) (= (_1!10229 (h!28739 (t!41004 (removeStrictlySorted!131 l!644 key2!15)))) key1!25)))))

(declare-fun b!1242473 () Bool)

(assert (=> b!1242473 (= e!704354 call!61340)))

(declare-fun c!121609 () Bool)

(declare-fun bm!61338 () Bool)

(assert (=> bm!61338 (= call!61341 ($colon$colon!630 e!704351 (ite c!121609 (h!28739 (t!41004 (removeStrictlySorted!131 l!644 key2!15))) (tuple2!20439 key1!25 v1!20))))))

(declare-fun c!121607 () Bool)

(assert (=> bm!61338 (= c!121607 c!121609)))

(declare-fun b!1242474 () Bool)

(assert (=> b!1242474 (= c!121608 (and (is-Cons!27530 (t!41004 (removeStrictlySorted!131 l!644 key2!15))) (bvsgt (_1!10229 (h!28739 (t!41004 (removeStrictlySorted!131 l!644 key2!15)))) key1!25)))))

(assert (=> b!1242474 (= e!704350 e!704354)))

(declare-fun bm!61337 () Bool)

(assert (=> bm!61337 (= call!61339 call!61341)))

(declare-fun d!136703 () Bool)

(assert (=> d!136703 e!704352))

(declare-fun res!828656 () Bool)

(assert (=> d!136703 (=> (not res!828656) (not e!704352))))

(assert (=> d!136703 (= res!828656 (isStrictlySorted!759 lt!562194))))

(assert (=> d!136703 (= lt!562194 e!704353)))

(assert (=> d!136703 (= c!121609 (and (is-Cons!27530 (t!41004 (removeStrictlySorted!131 l!644 key2!15))) (bvslt (_1!10229 (h!28739 (t!41004 (removeStrictlySorted!131 l!644 key2!15)))) key1!25)))))

(assert (=> d!136703 (isStrictlySorted!759 (t!41004 (removeStrictlySorted!131 l!644 key2!15)))))

(assert (=> d!136703 (= (insertStrictlySorted!437 (t!41004 (removeStrictlySorted!131 l!644 key2!15)) key1!25 v1!20) lt!562194)))

(assert (= (and d!136703 c!121609) b!1242467))

(assert (= (and d!136703 (not c!121609)) b!1242472))

(assert (= (and b!1242472 c!121606) b!1242468))

(assert (= (and b!1242472 (not c!121606)) b!1242474))

(assert (= (and b!1242474 c!121608) b!1242473))

(assert (= (and b!1242474 (not c!121608)) b!1242465))

(assert (= (or b!1242473 b!1242465) bm!61336))

(assert (= (or b!1242468 bm!61336) bm!61337))

(assert (= (or b!1242467 bm!61337) bm!61338))

(assert (= (and bm!61338 c!121607) b!1242469))

(assert (= (and bm!61338 (not c!121607)) b!1242471))

(assert (= (and d!136703 res!828656) b!1242470))

(assert (= (and b!1242470 res!828657) b!1242466))

(declare-fun m!1145203 () Bool)

(assert (=> b!1242466 m!1145203))

(declare-fun m!1145205 () Bool)

(assert (=> b!1242470 m!1145205))

(declare-fun m!1145207 () Bool)

(assert (=> b!1242469 m!1145207))

(declare-fun m!1145209 () Bool)

(assert (=> bm!61338 m!1145209))

(declare-fun m!1145211 () Bool)

(assert (=> d!136703 m!1145211))

(assert (=> d!136703 m!1145201))

(assert (=> b!1242163 d!136703))

(declare-fun d!136705 () Bool)

(assert (=> d!136705 (= ($colon$colon!630 e!704169 (ite c!121561 (h!28739 (t!41004 l!644)) (tuple2!20439 key1!25 v1!20))) (Cons!27530 (ite c!121561 (h!28739 (t!41004 l!644)) (tuple2!20439 key1!25 v1!20)) e!704169))))

(assert (=> bm!61320 d!136705))

(declare-fun d!136707 () Bool)

(assert (=> d!136707 (= ($colon$colon!630 e!704123 (ite c!121527 (h!28739 l!644) (tuple2!20439 key1!25 v1!20))) (Cons!27530 (ite c!121527 (h!28739 l!644) (tuple2!20439 key1!25 v1!20)) e!704123))))

(assert (=> bm!61299 d!136707))

(declare-fun d!136709 () Bool)

(declare-fun lt!562195 () Bool)

(assert (=> d!136709 (= lt!562195 (set.member (tuple2!20439 key1!25 v1!20) (content!609 lt!562149)))))

(declare-fun e!704356 () Bool)

(assert (=> d!136709 (= lt!562195 e!704356)))

(declare-fun res!828658 () Bool)

(assert (=> d!136709 (=> (not res!828658) (not e!704356))))

(assert (=> d!136709 (= res!828658 (is-Cons!27530 lt!562149))))

(assert (=> d!136709 (= (contains!7408 lt!562149 (tuple2!20439 key1!25 v1!20)) lt!562195)))

(declare-fun b!1242475 () Bool)

(declare-fun e!704355 () Bool)

(assert (=> b!1242475 (= e!704356 e!704355)))

(declare-fun res!828659 () Bool)

(assert (=> b!1242475 (=> res!828659 e!704355)))

(assert (=> b!1242475 (= res!828659 (= (h!28739 lt!562149) (tuple2!20439 key1!25 v1!20)))))

(declare-fun b!1242476 () Bool)

(assert (=> b!1242476 (= e!704355 (contains!7408 (t!41004 lt!562149) (tuple2!20439 key1!25 v1!20)))))

(assert (= (and d!136709 res!828658) b!1242475))

(assert (= (and b!1242475 (not res!828659)) b!1242476))

(declare-fun m!1145213 () Bool)

(assert (=> d!136709 m!1145213))

(declare-fun m!1145215 () Bool)

(assert (=> d!136709 m!1145215))

(declare-fun m!1145217 () Bool)

(assert (=> b!1242476 m!1145217))

(assert (=> b!1242160 d!136709))

(declare-fun d!136711 () Bool)

(declare-fun res!828660 () Bool)

(declare-fun e!704357 () Bool)

(assert (=> d!136711 (=> res!828660 e!704357)))

(assert (=> d!136711 (= res!828660 (or (is-Nil!27531 lt!562134) (is-Nil!27531 (t!41004 lt!562134))))))

(assert (=> d!136711 (= (isStrictlySorted!759 lt!562134) e!704357)))

(declare-fun b!1242477 () Bool)

(declare-fun e!704358 () Bool)

(assert (=> b!1242477 (= e!704357 e!704358)))

(declare-fun res!828661 () Bool)

(assert (=> b!1242477 (=> (not res!828661) (not e!704358))))

(assert (=> b!1242477 (= res!828661 (bvslt (_1!10229 (h!28739 lt!562134)) (_1!10229 (h!28739 (t!41004 lt!562134)))))))

(declare-fun b!1242478 () Bool)

(assert (=> b!1242478 (= e!704358 (isStrictlySorted!759 (t!41004 lt!562134)))))

(assert (= (and d!136711 (not res!828660)) b!1242477))

(assert (= (and b!1242477 res!828661) b!1242478))

(declare-fun m!1145219 () Bool)

(assert (=> b!1242478 m!1145219))

(assert (=> d!136507 d!136711))

(declare-fun d!136713 () Bool)

(declare-fun res!828662 () Bool)

(declare-fun e!704359 () Bool)

(assert (=> d!136713 (=> res!828662 e!704359)))

(assert (=> d!136713 (= res!828662 (or (is-Nil!27531 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20)) (is-Nil!27531 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20)))))))

(assert (=> d!136713 (= (isStrictlySorted!759 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20)) e!704359)))

(declare-fun b!1242479 () Bool)

(declare-fun e!704360 () Bool)

(assert (=> b!1242479 (= e!704359 e!704360)))

(declare-fun res!828663 () Bool)

(assert (=> b!1242479 (=> (not res!828663) (not e!704360))))

(assert (=> b!1242479 (= res!828663 (bvslt (_1!10229 (h!28739 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20))) (_1!10229 (h!28739 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20))))))))

(declare-fun b!1242480 () Bool)

(assert (=> b!1242480 (= e!704360 (isStrictlySorted!759 (t!41004 (insertStrictlySorted!437 (t!41004 l!644) key1!25 v1!20))))))

(assert (= (and d!136713 (not res!828662)) b!1242479))

(assert (= (and b!1242479 res!828663) b!1242480))

(assert (=> b!1242480 m!1145191))

(assert (=> d!136507 d!136713))

(declare-fun d!136715 () Bool)

(declare-fun res!828664 () Bool)

(declare-fun e!704361 () Bool)

(assert (=> d!136715 (=> res!828664 e!704361)))

(assert (=> d!136715 (= res!828664 (and (is-Cons!27530 lt!562153) (= (_1!10229 (h!28739 lt!562153)) key2!15)))))

(assert (=> d!136715 (= (containsKey!612 lt!562153 key2!15) e!704361)))

(declare-fun b!1242481 () Bool)

(declare-fun e!704362 () Bool)

(assert (=> b!1242481 (= e!704361 e!704362)))

(declare-fun res!828665 () Bool)

(assert (=> b!1242481 (=> (not res!828665) (not e!704362))))

(assert (=> b!1242481 (= res!828665 (and (or (not (is-Cons!27530 lt!562153)) (bvsle (_1!10229 (h!28739 lt!562153)) key2!15)) (is-Cons!27530 lt!562153) (bvslt (_1!10229 (h!28739 lt!562153)) key2!15)))))

(declare-fun b!1242482 () Bool)

(assert (=> b!1242482 (= e!704362 (containsKey!612 (t!41004 lt!562153) key2!15))))

(assert (= (and d!136715 (not res!828664)) b!1242481))

(assert (= (and b!1242481 res!828665) b!1242482))

(declare-fun m!1145221 () Bool)

(assert (=> b!1242482 m!1145221))

(assert (=> b!1242199 d!136715))

(declare-fun d!136717 () Bool)

(declare-fun res!828666 () Bool)

(declare-fun e!704363 () Bool)

(assert (=> d!136717 (=> res!828666 e!704363)))

(assert (=> d!136717 (= res!828666 (or (is-Nil!27531 lt!562168) (is-Nil!27531 (t!41004 lt!562168))))))

(assert (=> d!136717 (= (isStrictlySorted!759 lt!562168) e!704363)))

(declare-fun b!1242483 () Bool)

(declare-fun e!704364 () Bool)

(assert (=> b!1242483 (= e!704363 e!704364)))

(declare-fun res!828667 () Bool)

(assert (=> b!1242483 (=> (not res!828667) (not e!704364))))

(assert (=> b!1242483 (= res!828667 (bvslt (_1!10229 (h!28739 lt!562168)) (_1!10229 (h!28739 (t!41004 lt!562168)))))))

(declare-fun b!1242484 () Bool)

(assert (=> b!1242484 (= e!704364 (isStrictlySorted!759 (t!41004 lt!562168)))))

(assert (= (and d!136717 (not res!828666)) b!1242483))

(assert (= (and b!1242483 res!828667) b!1242484))

(declare-fun m!1145223 () Bool)

(assert (=> b!1242484 m!1145223))

(assert (=> d!136551 d!136717))

(declare-fun d!136719 () Bool)

(declare-fun res!828668 () Bool)

(declare-fun e!704365 () Bool)

(assert (=> d!136719 (=> res!828668 e!704365)))

(assert (=> d!136719 (= res!828668 (or (is-Nil!27531 (insertStrictlySorted!437 l!644 key1!25 v1!20)) (is-Nil!27531 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20)))))))

(assert (=> d!136719 (= (isStrictlySorted!759 (insertStrictlySorted!437 l!644 key1!25 v1!20)) e!704365)))

(declare-fun b!1242485 () Bool)

(declare-fun e!704366 () Bool)

(assert (=> b!1242485 (= e!704365 e!704366)))

(declare-fun res!828669 () Bool)

(assert (=> b!1242485 (=> (not res!828669) (not e!704366))))

(assert (=> b!1242485 (= res!828669 (bvslt (_1!10229 (h!28739 (insertStrictlySorted!437 l!644 key1!25 v1!20))) (_1!10229 (h!28739 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20))))))))

(declare-fun b!1242486 () Bool)

(assert (=> b!1242486 (= e!704366 (isStrictlySorted!759 (t!41004 (insertStrictlySorted!437 l!644 key1!25 v1!20))))))

(assert (= (and d!136719 (not res!828668)) b!1242485))

(assert (= (and b!1242485 res!828669) b!1242486))

(assert (=> b!1242486 m!1145175))

(assert (=> d!136551 d!136719))

(declare-fun b!1242487 () Bool)

(declare-fun e!704367 () Bool)

(declare-fun tp!92762 () Bool)

(assert (=> b!1242487 (= e!704367 (and tp_is_empty!31285 tp!92762))))

(assert (=> b!1242278 (= tp!92759 e!704367)))

(assert (= (and b!1242278 (is-Cons!27530 (t!41004 (t!41004 l!644)))) b!1242487))

(push 1)

(assert (not b!1242476))

(assert (not b!1242453))

(assert (not b!1242424))

(assert (not b!1242420))

(assert (not d!136685))

(assert (not d!136651))

(assert (not d!136663))

(assert tp_is_empty!31285)

(assert (not b!1242399))

(assert (not b!1242385))

(assert (not b!1242426))

(assert (not b!1242438))

(assert (not b!1242445))

(assert (not b!1242470))

(assert (not b!1242487))

(assert (not b!1242442))

(assert (not b!1242451))

(assert (not b!1242440))

(assert (not b!1242430))

(assert (not d!136695))

(assert (not b!1242393))

(assert (not b!1242429))

(assert (not b!1242480))

(assert (not d!136659))

(assert (not d!136679))

(assert (not b!1242418))

(assert (not b!1242422))

(assert (not b!1242409))

(assert (not b!1242395))

(assert (not b!1242464))

(assert (not b!1242405))

(assert (not b!1242391))

(assert (not b!1242456))

(assert (not d!136703))

(assert (not b!1242466))

(assert (not bm!61332))

(assert (not d!136677))

(assert (not d!136671))

(assert (not b!1242446))

(assert (not b!1242486))

(assert (not b!1242478))

(assert (not bm!61335))

(assert (not b!1242482))

(assert (not b!1242457))

(assert (not b!1242408))

(assert (not b!1242455))

(assert (not b!1242444))

(assert (not bm!61338))

(assert (not b!1242469))

(assert (not d!136701))

(assert (not d!136709))

(assert (not b!1242436))

(assert (not b!1242398))

(assert (not b!1242484))

(assert (not b!1242407))

(assert (not b!1242462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

