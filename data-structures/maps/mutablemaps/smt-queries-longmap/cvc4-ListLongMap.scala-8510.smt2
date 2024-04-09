; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!103780 () Bool)

(assert start!103780)

(declare-fun b!1241966 () Bool)

(declare-fun res!828457 () Bool)

(declare-fun e!704023 () Bool)

(assert (=> b!1241966 (=> (not res!828457) (not e!704023))))

(declare-datatypes ((B!1890 0))(
  ( (B!1891 (val!15707 Int)) )
))
(declare-datatypes ((tuple2!20442 0))(
  ( (tuple2!20443 (_1!10231 (_ BitVec 64)) (_2!10231 B!1890)) )
))
(declare-datatypes ((List!27536 0))(
  ( (Nil!27533) (Cons!27532 (h!28741 tuple2!20442) (t!41006 List!27536)) )
))
(declare-fun l!644 () List!27536)

(declare-fun isStrictlySorted!761 (List!27536) Bool)

(assert (=> b!1241966 (= res!828457 (isStrictlySorted!761 l!644))))

(declare-fun b!1241967 () Bool)

(declare-fun e!704024 () Bool)

(declare-fun tp_is_empty!31289 () Bool)

(declare-fun tp!92751 () Bool)

(assert (=> b!1241967 (= e!704024 (and tp_is_empty!31289 tp!92751))))

(declare-fun res!828455 () Bool)

(assert (=> start!103780 (=> (not res!828455) (not e!704023))))

(declare-fun key1!25 () (_ BitVec 64))

(declare-fun key2!15 () (_ BitVec 64))

(assert (=> start!103780 (= res!828455 (not (= key1!25 key2!15)))))

(assert (=> start!103780 e!704023))

(assert (=> start!103780 true))

(assert (=> start!103780 e!704024))

(assert (=> start!103780 tp_is_empty!31289))

(declare-fun v1!20 () B!1890)

(declare-fun b!1241968 () Bool)

(declare-fun insertStrictlySorted!439 (List!27536 (_ BitVec 64) B!1890) List!27536)

(declare-fun removeStrictlySorted!133 (List!27536 (_ BitVec 64)) List!27536)

(assert (=> b!1241968 (= e!704023 (not (= (insertStrictlySorted!439 (removeStrictlySorted!133 l!644 key2!15) key1!25 v1!20) (removeStrictlySorted!133 (insertStrictlySorted!439 l!644 key1!25 v1!20) key2!15))))))

(assert (=> b!1241968 (= (insertStrictlySorted!439 (removeStrictlySorted!133 (t!41006 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!133 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20) key2!15))))

(declare-datatypes ((Unit!41207 0))(
  ( (Unit!41208) )
))
(declare-fun lt!562126 () Unit!41207)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!18 (List!27536 (_ BitVec 64) B!1890 (_ BitVec 64)) Unit!41207)

(assert (=> b!1241968 (= lt!562126 (lemmaInsertAndRemoveStrictlySortedCommutative!18 (t!41006 l!644) key1!25 v1!20 key2!15))))

(declare-fun b!1241969 () Bool)

(declare-fun res!828454 () Bool)

(assert (=> b!1241969 (=> (not res!828454) (not e!704023))))

(assert (=> b!1241969 (= res!828454 (isStrictlySorted!761 (t!41006 l!644)))))

(declare-fun b!1241970 () Bool)

(declare-fun res!828456 () Bool)

(assert (=> b!1241970 (=> (not res!828456) (not e!704023))))

(assert (=> b!1241970 (= res!828456 (is-Cons!27532 l!644))))

(assert (= (and start!103780 res!828455) b!1241966))

(assert (= (and b!1241966 res!828457) b!1241970))

(assert (= (and b!1241970 res!828456) b!1241969))

(assert (= (and b!1241969 res!828454) b!1241968))

(assert (= (and start!103780 (is-Cons!27532 l!644)) b!1241967))

(declare-fun m!1144723 () Bool)

(assert (=> b!1241966 m!1144723))

(declare-fun m!1144725 () Bool)

(assert (=> b!1241968 m!1144725))

(declare-fun m!1144727 () Bool)

(assert (=> b!1241968 m!1144727))

(assert (=> b!1241968 m!1144725))

(declare-fun m!1144729 () Bool)

(assert (=> b!1241968 m!1144729))

(declare-fun m!1144731 () Bool)

(assert (=> b!1241968 m!1144731))

(declare-fun m!1144733 () Bool)

(assert (=> b!1241968 m!1144733))

(assert (=> b!1241968 m!1144731))

(declare-fun m!1144735 () Bool)

(assert (=> b!1241968 m!1144735))

(declare-fun m!1144737 () Bool)

(assert (=> b!1241968 m!1144737))

(assert (=> b!1241968 m!1144735))

(assert (=> b!1241968 m!1144729))

(declare-fun m!1144739 () Bool)

(assert (=> b!1241968 m!1144739))

(declare-fun m!1144741 () Bool)

(assert (=> b!1241968 m!1144741))

(declare-fun m!1144743 () Bool)

(assert (=> b!1241969 m!1144743))

(push 1)

(assert (not b!1241968))

(assert (not b!1241969))

(assert tp_is_empty!31289)

(assert (not b!1241966))

(assert (not b!1241967))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136495 () Bool)

(declare-fun res!828466 () Bool)

(declare-fun e!704033 () Bool)

(assert (=> d!136495 (=> res!828466 e!704033)))

(assert (=> d!136495 (= res!828466 (or (is-Nil!27533 l!644) (is-Nil!27533 (t!41006 l!644))))))

(assert (=> d!136495 (= (isStrictlySorted!761 l!644) e!704033)))

(declare-fun b!1241979 () Bool)

(declare-fun e!704034 () Bool)

(assert (=> b!1241979 (= e!704033 e!704034)))

(declare-fun res!828467 () Bool)

(assert (=> b!1241979 (=> (not res!828467) (not e!704034))))

(assert (=> b!1241979 (= res!828467 (bvslt (_1!10231 (h!28741 l!644)) (_1!10231 (h!28741 (t!41006 l!644)))))))

(declare-fun b!1241980 () Bool)

(assert (=> b!1241980 (= e!704034 (isStrictlySorted!761 (t!41006 l!644)))))

(assert (= (and d!136495 (not res!828466)) b!1241979))

(assert (= (and b!1241979 res!828467) b!1241980))

(assert (=> b!1241980 m!1144743))

(assert (=> b!1241966 d!136495))

(declare-fun d!136501 () Bool)

(declare-fun res!828468 () Bool)

(declare-fun e!704035 () Bool)

(assert (=> d!136501 (=> res!828468 e!704035)))

(assert (=> d!136501 (= res!828468 (or (is-Nil!27533 (t!41006 l!644)) (is-Nil!27533 (t!41006 (t!41006 l!644)))))))

(assert (=> d!136501 (= (isStrictlySorted!761 (t!41006 l!644)) e!704035)))

(declare-fun b!1241981 () Bool)

(declare-fun e!704036 () Bool)

(assert (=> b!1241981 (= e!704035 e!704036)))

(declare-fun res!828469 () Bool)

(assert (=> b!1241981 (=> (not res!828469) (not e!704036))))

(assert (=> b!1241981 (= res!828469 (bvslt (_1!10231 (h!28741 (t!41006 l!644))) (_1!10231 (h!28741 (t!41006 (t!41006 l!644))))))))

(declare-fun b!1241982 () Bool)

(assert (=> b!1241982 (= e!704036 (isStrictlySorted!761 (t!41006 (t!41006 l!644))))))

(assert (= (and d!136501 (not res!828468)) b!1241981))

(assert (= (and b!1241981 res!828469) b!1241982))

(declare-fun m!1144745 () Bool)

(assert (=> b!1241982 m!1144745))

(assert (=> b!1241969 d!136501))

(declare-fun e!704065 () List!27536)

(declare-fun b!1242023 () Bool)

(declare-fun $colon$colon!629 (List!27536 tuple2!20442) List!27536)

(assert (=> b!1242023 (= e!704065 ($colon$colon!629 (removeStrictlySorted!133 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20)) key2!15) (h!28741 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20))))))

(declare-fun d!136503 () Bool)

(declare-fun e!704067 () Bool)

(assert (=> d!136503 e!704067))

(declare-fun res!828486 () Bool)

(assert (=> d!136503 (=> (not res!828486) (not e!704067))))

(declare-fun lt!562133 () List!27536)

(assert (=> d!136503 (= res!828486 (isStrictlySorted!761 lt!562133))))

(declare-fun e!704066 () List!27536)

(assert (=> d!136503 (= lt!562133 e!704066)))

(declare-fun c!121478 () Bool)

(assert (=> d!136503 (= c!121478 (and (is-Cons!27532 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20)) (= (_1!10231 (h!28741 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20))) key2!15)))))

(assert (=> d!136503 (isStrictlySorted!761 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20))))

(assert (=> d!136503 (= (removeStrictlySorted!133 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20) key2!15) lt!562133)))

(declare-fun b!1242024 () Bool)

(declare-fun containsKey!613 (List!27536 (_ BitVec 64)) Bool)

(assert (=> b!1242024 (= e!704067 (not (containsKey!613 lt!562133 key2!15)))))

(declare-fun b!1242025 () Bool)

(assert (=> b!1242025 (= e!704066 e!704065)))

(declare-fun c!121479 () Bool)

(assert (=> b!1242025 (= c!121479 (and (is-Cons!27532 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20)) (not (= (_1!10231 (h!28741 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20))) key2!15))))))

(declare-fun b!1242026 () Bool)

(assert (=> b!1242026 (= e!704065 Nil!27533)))

(declare-fun b!1242027 () Bool)

(assert (=> b!1242027 (= e!704066 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20)))))

(assert (= (and d!136503 c!121478) b!1242027))

(assert (= (and d!136503 (not c!121478)) b!1242025))

(assert (= (and b!1242025 c!121479) b!1242023))

(assert (= (and b!1242025 (not c!121479)) b!1242026))

(assert (= (and d!136503 res!828486) b!1242024))

(declare-fun m!1144749 () Bool)

(assert (=> b!1242023 m!1144749))

(assert (=> b!1242023 m!1144749))

(declare-fun m!1144751 () Bool)

(assert (=> b!1242023 m!1144751))

(declare-fun m!1144753 () Bool)

(assert (=> d!136503 m!1144753))

(assert (=> d!136503 m!1144731))

(declare-fun m!1144755 () Bool)

(assert (=> d!136503 m!1144755))

(declare-fun m!1144757 () Bool)

(assert (=> b!1242024 m!1144757))

(assert (=> b!1241968 d!136503))

(declare-fun b!1242098 () Bool)

(declare-fun e!704106 () List!27536)

(declare-fun call!61291 () List!27536)

(assert (=> b!1242098 (= e!704106 call!61291)))

(declare-fun bm!61285 () Bool)

(declare-fun call!61288 () List!27536)

(assert (=> bm!61285 (= call!61288 call!61291)))

(declare-fun b!1242099 () Bool)

(declare-fun res!828501 () Bool)

(declare-fun e!704108 () Bool)

(assert (=> b!1242099 (=> (not res!828501) (not e!704108))))

(declare-fun lt!562142 () List!27536)

(assert (=> b!1242099 (= res!828501 (containsKey!613 lt!562142 key1!25))))

(declare-fun b!1242100 () Bool)

(declare-fun contains!7410 (List!27536 tuple2!20442) Bool)

(assert (=> b!1242100 (= e!704108 (contains!7410 lt!562142 (tuple2!20443 key1!25 v1!20)))))

(declare-fun c!121509 () Bool)

(declare-fun e!704104 () List!27536)

(declare-fun bm!61286 () Bool)

(assert (=> bm!61286 (= call!61291 ($colon$colon!629 e!704104 (ite c!121509 (h!28741 (removeStrictlySorted!133 (t!41006 l!644) key2!15)) (tuple2!20443 key1!25 v1!20))))))

(declare-fun c!121511 () Bool)

(assert (=> bm!61286 (= c!121511 c!121509)))

(declare-fun b!1242101 () Bool)

(declare-fun e!704110 () List!27536)

(assert (=> b!1242101 (= e!704106 e!704110)))

(declare-fun c!121508 () Bool)

(assert (=> b!1242101 (= c!121508 (and (is-Cons!27532 (removeStrictlySorted!133 (t!41006 l!644) key2!15)) (= (_1!10231 (h!28741 (removeStrictlySorted!133 (t!41006 l!644) key2!15))) key1!25)))))

(declare-fun b!1242102 () Bool)

(declare-fun e!704105 () List!27536)

(declare-fun call!61289 () List!27536)

(assert (=> b!1242102 (= e!704105 call!61289)))

(declare-fun b!1242103 () Bool)

(assert (=> b!1242103 (= e!704104 (insertStrictlySorted!439 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15)) key1!25 v1!20))))

(declare-fun b!1242104 () Bool)

(declare-fun c!121510 () Bool)

(assert (=> b!1242104 (= c!121510 (and (is-Cons!27532 (removeStrictlySorted!133 (t!41006 l!644) key2!15)) (bvsgt (_1!10231 (h!28741 (removeStrictlySorted!133 (t!41006 l!644) key2!15))) key1!25)))))

(assert (=> b!1242104 (= e!704110 e!704105)))

(declare-fun b!1242106 () Bool)

(assert (=> b!1242106 (= e!704104 (ite c!121508 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15)) (ite c!121510 (Cons!27532 (h!28741 (removeStrictlySorted!133 (t!41006 l!644) key2!15)) (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15))) Nil!27533)))))

(declare-fun b!1242108 () Bool)

(assert (=> b!1242108 (= e!704110 call!61288)))

(declare-fun bm!61288 () Bool)

(assert (=> bm!61288 (= call!61289 call!61288)))

(declare-fun d!136511 () Bool)

(assert (=> d!136511 e!704108))

(declare-fun res!828502 () Bool)

(assert (=> d!136511 (=> (not res!828502) (not e!704108))))

(assert (=> d!136511 (= res!828502 (isStrictlySorted!761 lt!562142))))

(assert (=> d!136511 (= lt!562142 e!704106)))

(assert (=> d!136511 (= c!121509 (and (is-Cons!27532 (removeStrictlySorted!133 (t!41006 l!644) key2!15)) (bvslt (_1!10231 (h!28741 (removeStrictlySorted!133 (t!41006 l!644) key2!15))) key1!25)))))

(assert (=> d!136511 (isStrictlySorted!761 (removeStrictlySorted!133 (t!41006 l!644) key2!15))))

(assert (=> d!136511 (= (insertStrictlySorted!439 (removeStrictlySorted!133 (t!41006 l!644) key2!15) key1!25 v1!20) lt!562142)))

(declare-fun b!1242105 () Bool)

(assert (=> b!1242105 (= e!704105 call!61289)))

(assert (= (and d!136511 c!121509) b!1242098))

(assert (= (and d!136511 (not c!121509)) b!1242101))

(assert (= (and b!1242101 c!121508) b!1242108))

(assert (= (and b!1242101 (not c!121508)) b!1242104))

(assert (= (and b!1242104 c!121510) b!1242102))

(assert (= (and b!1242104 (not c!121510)) b!1242105))

(assert (= (or b!1242102 b!1242105) bm!61288))

(assert (= (or b!1242108 bm!61288) bm!61285))

(assert (= (or b!1242098 bm!61285) bm!61286))

(assert (= (and bm!61286 c!121511) b!1242103))

(assert (= (and bm!61286 (not c!121511)) b!1242106))

(assert (= (and d!136511 res!828502) b!1242099))

(assert (= (and b!1242099 res!828501) b!1242100))

(declare-fun m!1144779 () Bool)

(assert (=> b!1242100 m!1144779))

(declare-fun m!1144783 () Bool)

(assert (=> d!136511 m!1144783))

(assert (=> d!136511 m!1144735))

(declare-fun m!1144787 () Bool)

(assert (=> d!136511 m!1144787))

(declare-fun m!1144791 () Bool)

(assert (=> b!1242103 m!1144791))

(declare-fun m!1144793 () Bool)

(assert (=> b!1242099 m!1144793))

(declare-fun m!1144799 () Bool)

(assert (=> bm!61286 m!1144799))

(assert (=> b!1241968 d!136511))

(declare-fun b!1242128 () Bool)

(declare-fun e!704122 () List!27536)

(declare-fun call!61301 () List!27536)

(assert (=> b!1242128 (= e!704122 call!61301)))

(declare-fun bm!61294 () Bool)

(declare-fun call!61297 () List!27536)

(assert (=> bm!61294 (= call!61297 call!61301)))

(declare-fun b!1242129 () Bool)

(declare-fun res!828507 () Bool)

(declare-fun e!704125 () Bool)

(assert (=> b!1242129 (=> (not res!828507) (not e!704125))))

(declare-fun lt!562145 () List!27536)

(assert (=> b!1242129 (= res!828507 (containsKey!613 lt!562145 key1!25))))

(declare-fun b!1242130 () Bool)

(assert (=> b!1242130 (= e!704125 (contains!7410 lt!562145 (tuple2!20443 key1!25 v1!20)))))

(declare-fun c!121521 () Bool)

(declare-fun e!704119 () List!27536)

(declare-fun bm!61295 () Bool)

(assert (=> bm!61295 (= call!61301 ($colon$colon!629 e!704119 (ite c!121521 (h!28741 l!644) (tuple2!20443 key1!25 v1!20))))))

(declare-fun c!121524 () Bool)

(assert (=> bm!61295 (= c!121524 c!121521)))

(declare-fun b!1242131 () Bool)

(declare-fun e!704126 () List!27536)

(assert (=> b!1242131 (= e!704122 e!704126)))

(declare-fun c!121520 () Bool)

(assert (=> b!1242131 (= c!121520 (and (is-Cons!27532 l!644) (= (_1!10231 (h!28741 l!644)) key1!25)))))

(declare-fun b!1242132 () Bool)

(declare-fun e!704120 () List!27536)

(declare-fun call!61298 () List!27536)

(assert (=> b!1242132 (= e!704120 call!61298)))

(declare-fun b!1242134 () Bool)

(assert (=> b!1242134 (= e!704119 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20))))

(declare-fun b!1242135 () Bool)

(declare-fun c!121522 () Bool)

(assert (=> b!1242135 (= c!121522 (and (is-Cons!27532 l!644) (bvsgt (_1!10231 (h!28741 l!644)) key1!25)))))

(assert (=> b!1242135 (= e!704126 e!704120)))

(declare-fun b!1242139 () Bool)

(assert (=> b!1242139 (= e!704119 (ite c!121520 (t!41006 l!644) (ite c!121522 (Cons!27532 (h!28741 l!644) (t!41006 l!644)) Nil!27533)))))

(declare-fun b!1242141 () Bool)

(assert (=> b!1242141 (= e!704126 call!61297)))

(declare-fun bm!61297 () Bool)

(assert (=> bm!61297 (= call!61298 call!61297)))

(declare-fun d!136517 () Bool)

(assert (=> d!136517 e!704125))

(declare-fun res!828509 () Bool)

(assert (=> d!136517 (=> (not res!828509) (not e!704125))))

(assert (=> d!136517 (= res!828509 (isStrictlySorted!761 lt!562145))))

(assert (=> d!136517 (= lt!562145 e!704122)))

(assert (=> d!136517 (= c!121521 (and (is-Cons!27532 l!644) (bvslt (_1!10231 (h!28741 l!644)) key1!25)))))

(assert (=> d!136517 (isStrictlySorted!761 l!644)))

(assert (=> d!136517 (= (insertStrictlySorted!439 l!644 key1!25 v1!20) lt!562145)))

(declare-fun b!1242137 () Bool)

(assert (=> b!1242137 (= e!704120 call!61298)))

(assert (= (and d!136517 c!121521) b!1242128))

(assert (= (and d!136517 (not c!121521)) b!1242131))

(assert (= (and b!1242131 c!121520) b!1242141))

(assert (= (and b!1242131 (not c!121520)) b!1242135))

(assert (= (and b!1242135 c!121522) b!1242132))

(assert (= (and b!1242135 (not c!121522)) b!1242137))

(assert (= (or b!1242132 b!1242137) bm!61297))

(assert (= (or b!1242141 bm!61297) bm!61294))

(assert (= (or b!1242128 bm!61294) bm!61295))

(assert (= (and bm!61295 c!121524) b!1242134))

(assert (= (and bm!61295 (not c!121524)) b!1242139))

(assert (= (and d!136517 res!828509) b!1242129))

(assert (= (and b!1242129 res!828507) b!1242130))

(declare-fun m!1144816 () Bool)

(assert (=> b!1242130 m!1144816))

(declare-fun m!1144819 () Bool)

(assert (=> d!136517 m!1144819))

(assert (=> d!136517 m!1144723))

(assert (=> b!1242134 m!1144731))

(declare-fun m!1144823 () Bool)

(assert (=> b!1242129 m!1144823))

(declare-fun m!1144831 () Bool)

(assert (=> bm!61295 m!1144831))

(assert (=> b!1241968 d!136517))

(declare-fun b!1242158 () Bool)

(declare-fun e!704138 () List!27536)

(declare-fun call!61311 () List!27536)

(assert (=> b!1242158 (= e!704138 call!61311)))

(declare-fun bm!61303 () Bool)

(declare-fun call!61306 () List!27536)

(assert (=> bm!61303 (= call!61306 call!61311)))

(declare-fun b!1242164 () Bool)

(declare-fun res!828514 () Bool)

(declare-fun e!704140 () Bool)

(assert (=> b!1242164 (=> (not res!828514) (not e!704140))))

(declare-fun lt!562148 () List!27536)

(assert (=> b!1242164 (= res!828514 (containsKey!613 lt!562148 key1!25))))

(declare-fun b!1242166 () Bool)

(assert (=> b!1242166 (= e!704140 (contains!7410 lt!562148 (tuple2!20443 key1!25 v1!20)))))

(declare-fun c!121533 () Bool)

(declare-fun bm!61307 () Bool)

(declare-fun e!704134 () List!27536)

(assert (=> bm!61307 (= call!61311 ($colon$colon!629 e!704134 (ite c!121533 (h!28741 (removeStrictlySorted!133 l!644 key2!15)) (tuple2!20443 key1!25 v1!20))))))

(declare-fun c!121538 () Bool)

(assert (=> bm!61307 (= c!121538 c!121533)))

(declare-fun b!1242171 () Bool)

(declare-fun e!704141 () List!27536)

(assert (=> b!1242171 (= e!704138 e!704141)))

(declare-fun c!121532 () Bool)

(assert (=> b!1242171 (= c!121532 (and (is-Cons!27532 (removeStrictlySorted!133 l!644 key2!15)) (= (_1!10231 (h!28741 (removeStrictlySorted!133 l!644 key2!15))) key1!25)))))

(declare-fun b!1242172 () Bool)

(declare-fun e!704136 () List!27536)

(declare-fun call!61307 () List!27536)

(assert (=> b!1242172 (= e!704136 call!61307)))

(declare-fun b!1242173 () Bool)

(assert (=> b!1242173 (= e!704134 (insertStrictlySorted!439 (t!41006 (removeStrictlySorted!133 l!644 key2!15)) key1!25 v1!20))))

(declare-fun c!121534 () Bool)

(declare-fun b!1242174 () Bool)

(assert (=> b!1242174 (= c!121534 (and (is-Cons!27532 (removeStrictlySorted!133 l!644 key2!15)) (bvsgt (_1!10231 (h!28741 (removeStrictlySorted!133 l!644 key2!15))) key1!25)))))

(assert (=> b!1242174 (= e!704141 e!704136)))

(declare-fun b!1242176 () Bool)

(assert (=> b!1242176 (= e!704134 (ite c!121532 (t!41006 (removeStrictlySorted!133 l!644 key2!15)) (ite c!121534 (Cons!27532 (h!28741 (removeStrictlySorted!133 l!644 key2!15)) (t!41006 (removeStrictlySorted!133 l!644 key2!15))) Nil!27533)))))

(declare-fun b!1242177 () Bool)

(assert (=> b!1242177 (= e!704141 call!61306)))

(declare-fun bm!61308 () Bool)

(assert (=> bm!61308 (= call!61307 call!61306)))

(declare-fun d!136523 () Bool)

(assert (=> d!136523 e!704140))

(declare-fun res!828515 () Bool)

(assert (=> d!136523 (=> (not res!828515) (not e!704140))))

(assert (=> d!136523 (= res!828515 (isStrictlySorted!761 lt!562148))))

(assert (=> d!136523 (= lt!562148 e!704138)))

(assert (=> d!136523 (= c!121533 (and (is-Cons!27532 (removeStrictlySorted!133 l!644 key2!15)) (bvslt (_1!10231 (h!28741 (removeStrictlySorted!133 l!644 key2!15))) key1!25)))))

(assert (=> d!136523 (isStrictlySorted!761 (removeStrictlySorted!133 l!644 key2!15))))

(assert (=> d!136523 (= (insertStrictlySorted!439 (removeStrictlySorted!133 l!644 key2!15) key1!25 v1!20) lt!562148)))

(declare-fun b!1242175 () Bool)

(assert (=> b!1242175 (= e!704136 call!61307)))

(assert (= (and d!136523 c!121533) b!1242158))

(assert (= (and d!136523 (not c!121533)) b!1242171))

(assert (= (and b!1242171 c!121532) b!1242177))

(assert (= (and b!1242171 (not c!121532)) b!1242174))

(assert (= (and b!1242174 c!121534) b!1242172))

(assert (= (and b!1242174 (not c!121534)) b!1242175))

(assert (= (or b!1242172 b!1242175) bm!61308))

(assert (= (or b!1242177 bm!61308) bm!61303))

(assert (= (or b!1242158 bm!61303) bm!61307))

(assert (= (and bm!61307 c!121538) b!1242173))

(assert (= (and bm!61307 (not c!121538)) b!1242176))

(assert (= (and d!136523 res!828515) b!1242164))

(assert (= (and b!1242164 res!828514) b!1242166))

(declare-fun m!1144840 () Bool)

(assert (=> b!1242166 m!1144840))

(declare-fun m!1144843 () Bool)

(assert (=> d!136523 m!1144843))

(assert (=> d!136523 m!1144725))

(declare-fun m!1144849 () Bool)

(assert (=> d!136523 m!1144849))

(declare-fun m!1144855 () Bool)

(assert (=> b!1242173 m!1144855))

(declare-fun m!1144861 () Bool)

(assert (=> b!1242164 m!1144861))

(declare-fun m!1144865 () Bool)

(assert (=> bm!61307 m!1144865))

(assert (=> b!1241968 d!136523))

(declare-fun b!1242188 () Bool)

(declare-fun e!704149 () List!27536)

(assert (=> b!1242188 (= e!704149 ($colon$colon!629 (removeStrictlySorted!133 (t!41006 l!644) key2!15) (h!28741 l!644)))))

(declare-fun d!136529 () Bool)

(declare-fun e!704152 () Bool)

(assert (=> d!136529 e!704152))

(declare-fun res!828520 () Bool)

(assert (=> d!136529 (=> (not res!828520) (not e!704152))))

(declare-fun lt!562152 () List!27536)

(assert (=> d!136529 (= res!828520 (isStrictlySorted!761 lt!562152))))

(declare-fun e!704151 () List!27536)

(assert (=> d!136529 (= lt!562152 e!704151)))

(declare-fun c!121544 () Bool)

(assert (=> d!136529 (= c!121544 (and (is-Cons!27532 l!644) (= (_1!10231 (h!28741 l!644)) key2!15)))))

(assert (=> d!136529 (isStrictlySorted!761 l!644)))

(assert (=> d!136529 (= (removeStrictlySorted!133 l!644 key2!15) lt!562152)))

(declare-fun b!1242189 () Bool)

(assert (=> b!1242189 (= e!704152 (not (containsKey!613 lt!562152 key2!15)))))

(declare-fun b!1242190 () Bool)

(assert (=> b!1242190 (= e!704151 e!704149)))

(declare-fun c!121545 () Bool)

(assert (=> b!1242190 (= c!121545 (and (is-Cons!27532 l!644) (not (= (_1!10231 (h!28741 l!644)) key2!15))))))

(declare-fun b!1242191 () Bool)

(assert (=> b!1242191 (= e!704149 Nil!27533)))

(declare-fun b!1242192 () Bool)

(assert (=> b!1242192 (= e!704151 (t!41006 l!644))))

(assert (= (and d!136529 c!121544) b!1242192))

(assert (= (and d!136529 (not c!121544)) b!1242190))

(assert (= (and b!1242190 c!121545) b!1242188))

(assert (= (and b!1242190 (not c!121545)) b!1242191))

(assert (= (and d!136529 res!828520) b!1242189))

(assert (=> b!1242188 m!1144735))

(assert (=> b!1242188 m!1144735))

(declare-fun m!1144879 () Bool)

(assert (=> b!1242188 m!1144879))

(declare-fun m!1144881 () Bool)

(assert (=> d!136529 m!1144881))

(assert (=> d!136529 m!1144723))

(declare-fun m!1144883 () Bool)

(assert (=> b!1242189 m!1144883))

(assert (=> b!1241968 d!136529))

(declare-fun d!136535 () Bool)

(assert (=> d!136535 (= (insertStrictlySorted!439 (removeStrictlySorted!133 (t!41006 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!133 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20) key2!15))))

(declare-fun lt!562161 () Unit!41207)

(declare-fun choose!1851 (List!27536 (_ BitVec 64) B!1890 (_ BitVec 64)) Unit!41207)

(assert (=> d!136535 (= lt!562161 (choose!1851 (t!41006 l!644) key1!25 v1!20 key2!15))))

(assert (=> d!136535 (not (= key1!25 key2!15))))

(assert (=> d!136535 (= (lemmaInsertAndRemoveStrictlySortedCommutative!18 (t!41006 l!644) key1!25 v1!20 key2!15) lt!562161)))

(declare-fun bs!34970 () Bool)

(assert (= bs!34970 d!136535))

(assert (=> bs!34970 m!1144735))

(assert (=> bs!34970 m!1144735))

(assert (=> bs!34970 m!1144737))

(declare-fun m!1144895 () Bool)

(assert (=> bs!34970 m!1144895))

(assert (=> bs!34970 m!1144731))

(assert (=> bs!34970 m!1144731))

(assert (=> bs!34970 m!1144733))

(assert (=> b!1241968 d!136535))

(declare-fun b!1242213 () Bool)

(declare-fun e!704165 () List!27536)

(declare-fun call!61320 () List!27536)

(assert (=> b!1242213 (= e!704165 call!61320)))

(declare-fun bm!61315 () Bool)

(declare-fun call!61318 () List!27536)

(assert (=> bm!61315 (= call!61318 call!61320)))

(declare-fun b!1242214 () Bool)

(declare-fun res!828524 () Bool)

(declare-fun e!704166 () Bool)

(assert (=> b!1242214 (=> (not res!828524) (not e!704166))))

(declare-fun lt!562164 () List!27536)

(assert (=> b!1242214 (= res!828524 (containsKey!613 lt!562164 key1!25))))

(declare-fun b!1242215 () Bool)

(assert (=> b!1242215 (= e!704166 (contains!7410 lt!562164 (tuple2!20443 key1!25 v1!20)))))

(declare-fun c!121555 () Bool)

(declare-fun e!704162 () List!27536)

(declare-fun bm!61316 () Bool)

(assert (=> bm!61316 (= call!61320 ($colon$colon!629 e!704162 (ite c!121555 (h!28741 (t!41006 l!644)) (tuple2!20443 key1!25 v1!20))))))

(declare-fun c!121557 () Bool)

(assert (=> bm!61316 (= c!121557 c!121555)))

(declare-fun b!1242216 () Bool)

(declare-fun e!704167 () List!27536)

(assert (=> b!1242216 (= e!704165 e!704167)))

(declare-fun c!121554 () Bool)

(assert (=> b!1242216 (= c!121554 (and (is-Cons!27532 (t!41006 l!644)) (= (_1!10231 (h!28741 (t!41006 l!644))) key1!25)))))

(declare-fun b!1242217 () Bool)

(declare-fun e!704164 () List!27536)

(declare-fun call!61319 () List!27536)

(assert (=> b!1242217 (= e!704164 call!61319)))

(declare-fun b!1242218 () Bool)

(assert (=> b!1242218 (= e!704162 (insertStrictlySorted!439 (t!41006 (t!41006 l!644)) key1!25 v1!20))))

(declare-fun b!1242219 () Bool)

(declare-fun c!121556 () Bool)

(assert (=> b!1242219 (= c!121556 (and (is-Cons!27532 (t!41006 l!644)) (bvsgt (_1!10231 (h!28741 (t!41006 l!644))) key1!25)))))

(assert (=> b!1242219 (= e!704167 e!704164)))

(declare-fun b!1242221 () Bool)

(assert (=> b!1242221 (= e!704162 (ite c!121554 (t!41006 (t!41006 l!644)) (ite c!121556 (Cons!27532 (h!28741 (t!41006 l!644)) (t!41006 (t!41006 l!644))) Nil!27533)))))

(declare-fun b!1242222 () Bool)

(assert (=> b!1242222 (= e!704167 call!61318)))

(declare-fun bm!61317 () Bool)

(assert (=> bm!61317 (= call!61319 call!61318)))

(declare-fun d!136543 () Bool)

(assert (=> d!136543 e!704166))

(declare-fun res!828525 () Bool)

(assert (=> d!136543 (=> (not res!828525) (not e!704166))))

(assert (=> d!136543 (= res!828525 (isStrictlySorted!761 lt!562164))))

(assert (=> d!136543 (= lt!562164 e!704165)))

(assert (=> d!136543 (= c!121555 (and (is-Cons!27532 (t!41006 l!644)) (bvslt (_1!10231 (h!28741 (t!41006 l!644))) key1!25)))))

(assert (=> d!136543 (isStrictlySorted!761 (t!41006 l!644))))

(assert (=> d!136543 (= (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20) lt!562164)))

(declare-fun b!1242220 () Bool)

(assert (=> b!1242220 (= e!704164 call!61319)))

(assert (= (and d!136543 c!121555) b!1242213))

(assert (= (and d!136543 (not c!121555)) b!1242216))

(assert (= (and b!1242216 c!121554) b!1242222))

(assert (= (and b!1242216 (not c!121554)) b!1242219))

(assert (= (and b!1242219 c!121556) b!1242217))

(assert (= (and b!1242219 (not c!121556)) b!1242220))

(assert (= (or b!1242217 b!1242220) bm!61317))

(assert (= (or b!1242222 bm!61317) bm!61315))

(assert (= (or b!1242213 bm!61315) bm!61316))

(assert (= (and bm!61316 c!121557) b!1242218))

(assert (= (and bm!61316 (not c!121557)) b!1242221))

(assert (= (and d!136543 res!828525) b!1242214))

(assert (= (and b!1242214 res!828524) b!1242215))

(declare-fun m!1144901 () Bool)

(assert (=> b!1242215 m!1144901))

(declare-fun m!1144905 () Bool)

(assert (=> d!136543 m!1144905))

(assert (=> d!136543 m!1144743))

(declare-fun m!1144911 () Bool)

(assert (=> b!1242218 m!1144911))

(declare-fun m!1144913 () Bool)

(assert (=> b!1242214 m!1144913))

(declare-fun m!1144921 () Bool)

(assert (=> bm!61316 m!1144921))

(assert (=> b!1241968 d!136543))

(declare-fun b!1242238 () Bool)

(declare-fun e!704176 () List!27536)

(assert (=> b!1242238 (= e!704176 ($colon$colon!629 (removeStrictlySorted!133 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20)) key2!15) (h!28741 (insertStrictlySorted!439 l!644 key1!25 v1!20))))))

(declare-fun d!136549 () Bool)

(declare-fun e!704178 () Bool)

(assert (=> d!136549 e!704178))

(declare-fun res!828529 () Bool)

(assert (=> d!136549 (=> (not res!828529) (not e!704178))))

(declare-fun lt!562167 () List!27536)

(assert (=> d!136549 (= res!828529 (isStrictlySorted!761 lt!562167))))

(declare-fun e!704177 () List!27536)

(assert (=> d!136549 (= lt!562167 e!704177)))

(declare-fun c!121564 () Bool)

(assert (=> d!136549 (= c!121564 (and (is-Cons!27532 (insertStrictlySorted!439 l!644 key1!25 v1!20)) (= (_1!10231 (h!28741 (insertStrictlySorted!439 l!644 key1!25 v1!20))) key2!15)))))

(assert (=> d!136549 (isStrictlySorted!761 (insertStrictlySorted!439 l!644 key1!25 v1!20))))

(assert (=> d!136549 (= (removeStrictlySorted!133 (insertStrictlySorted!439 l!644 key1!25 v1!20) key2!15) lt!562167)))

(declare-fun b!1242239 () Bool)

(assert (=> b!1242239 (= e!704178 (not (containsKey!613 lt!562167 key2!15)))))

(declare-fun b!1242240 () Bool)

(assert (=> b!1242240 (= e!704177 e!704176)))

(declare-fun c!121565 () Bool)

(assert (=> b!1242240 (= c!121565 (and (is-Cons!27532 (insertStrictlySorted!439 l!644 key1!25 v1!20)) (not (= (_1!10231 (h!28741 (insertStrictlySorted!439 l!644 key1!25 v1!20))) key2!15))))))

(declare-fun b!1242241 () Bool)

(assert (=> b!1242241 (= e!704176 Nil!27533)))

(declare-fun b!1242242 () Bool)

(assert (=> b!1242242 (= e!704177 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20)))))

(assert (= (and d!136549 c!121564) b!1242242))

(assert (= (and d!136549 (not c!121564)) b!1242240))

(assert (= (and b!1242240 c!121565) b!1242238))

(assert (= (and b!1242240 (not c!121565)) b!1242241))

(assert (= (and d!136549 res!828529) b!1242239))

(declare-fun m!1144933 () Bool)

(assert (=> b!1242238 m!1144933))

(assert (=> b!1242238 m!1144933))

(declare-fun m!1144939 () Bool)

(assert (=> b!1242238 m!1144939))

(declare-fun m!1144941 () Bool)

(assert (=> d!136549 m!1144941))

(assert (=> d!136549 m!1144729))

(declare-fun m!1144947 () Bool)

(assert (=> d!136549 m!1144947))

(declare-fun m!1144951 () Bool)

(assert (=> b!1242239 m!1144951))

(assert (=> b!1241968 d!136549))

(declare-fun b!1242253 () Bool)

(declare-fun e!704185 () List!27536)

(assert (=> b!1242253 (= e!704185 ($colon$colon!629 (removeStrictlySorted!133 (t!41006 (t!41006 l!644)) key2!15) (h!28741 (t!41006 l!644))))))

(declare-fun d!136555 () Bool)

(declare-fun e!704187 () Bool)

(assert (=> d!136555 e!704187))

(declare-fun res!828532 () Bool)

(assert (=> d!136555 (=> (not res!828532) (not e!704187))))

(declare-fun lt!562170 () List!27536)

(assert (=> d!136555 (= res!828532 (isStrictlySorted!761 lt!562170))))

(declare-fun e!704186 () List!27536)

(assert (=> d!136555 (= lt!562170 e!704186)))

(declare-fun c!121570 () Bool)

(assert (=> d!136555 (= c!121570 (and (is-Cons!27532 (t!41006 l!644)) (= (_1!10231 (h!28741 (t!41006 l!644))) key2!15)))))

(assert (=> d!136555 (isStrictlySorted!761 (t!41006 l!644))))

(assert (=> d!136555 (= (removeStrictlySorted!133 (t!41006 l!644) key2!15) lt!562170)))

(declare-fun b!1242254 () Bool)

(assert (=> b!1242254 (= e!704187 (not (containsKey!613 lt!562170 key2!15)))))

(declare-fun b!1242255 () Bool)

(assert (=> b!1242255 (= e!704186 e!704185)))

(declare-fun c!121571 () Bool)

(assert (=> b!1242255 (= c!121571 (and (is-Cons!27532 (t!41006 l!644)) (not (= (_1!10231 (h!28741 (t!41006 l!644))) key2!15))))))

(declare-fun b!1242256 () Bool)

(assert (=> b!1242256 (= e!704185 Nil!27533)))

(declare-fun b!1242257 () Bool)

(assert (=> b!1242257 (= e!704186 (t!41006 (t!41006 l!644)))))

(assert (= (and d!136555 c!121570) b!1242257))

(assert (= (and d!136555 (not c!121570)) b!1242255))

(assert (= (and b!1242255 c!121571) b!1242253))

(assert (= (and b!1242255 (not c!121571)) b!1242256))

(assert (= (and d!136555 res!828532) b!1242254))

(declare-fun m!1144963 () Bool)

(assert (=> b!1242253 m!1144963))

(assert (=> b!1242253 m!1144963))

(declare-fun m!1144967 () Bool)

(assert (=> b!1242253 m!1144967))

(declare-fun m!1144971 () Bool)

(assert (=> d!136555 m!1144971))

(assert (=> d!136555 m!1144743))

(declare-fun m!1144975 () Bool)

(assert (=> b!1242254 m!1144975))

(assert (=> b!1241968 d!136555))

(declare-fun b!1242277 () Bool)

(declare-fun e!704199 () Bool)

(declare-fun tp!92758 () Bool)

(assert (=> b!1242277 (= e!704199 (and tp_is_empty!31289 tp!92758))))

(assert (=> b!1241967 (= tp!92751 e!704199)))

(assert (= (and b!1241967 (is-Cons!27532 (t!41006 l!644))) b!1242277))

(push 1)

(assert (not d!136535))

(assert (not d!136523))

(assert (not b!1241982))

(assert (not b!1242100))

(assert (not b!1242166))

(assert (not b!1241980))

(assert (not bm!61307))

(assert (not b!1242129))

(assert (not b!1242130))

(assert (not d!136517))

(assert (not b!1242238))

(assert (not d!136503))

(assert (not b!1242277))

(assert (not bm!61286))

(assert (not b!1242134))

(assert (not d!136549))

(assert (not b!1242103))

(assert (not b!1242164))

(assert (not d!136543))

(assert (not b!1242218))

(assert (not b!1242189))

(assert (not b!1242023))

(assert (not d!136529))

(assert (not b!1242239))

(assert (not b!1242099))

(assert (not b!1242215))

(assert (not d!136511))

(assert (not bm!61295))

(assert (not b!1242173))

(assert (not b!1242188))

(assert (not b!1242254))

(assert (not d!136555))

(assert (not b!1242024))

(assert (not bm!61316))

(assert (not b!1242214))

(assert (not b!1242253))

(assert tp_is_empty!31289)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!136721 () Bool)

(declare-fun res!828674 () Bool)

(declare-fun e!704372 () Bool)

(assert (=> d!136721 (=> res!828674 e!704372)))

(assert (=> d!136721 (= res!828674 (and (is-Cons!27532 lt!562145) (= (_1!10231 (h!28741 lt!562145)) key1!25)))))

(assert (=> d!136721 (= (containsKey!613 lt!562145 key1!25) e!704372)))

(declare-fun b!1242492 () Bool)

(declare-fun e!704373 () Bool)

(assert (=> b!1242492 (= e!704372 e!704373)))

(declare-fun res!828675 () Bool)

(assert (=> b!1242492 (=> (not res!828675) (not e!704373))))

(assert (=> b!1242492 (= res!828675 (and (or (not (is-Cons!27532 lt!562145)) (bvsle (_1!10231 (h!28741 lt!562145)) key1!25)) (is-Cons!27532 lt!562145) (bvslt (_1!10231 (h!28741 lt!562145)) key1!25)))))

(declare-fun b!1242493 () Bool)

(assert (=> b!1242493 (= e!704373 (containsKey!613 (t!41006 lt!562145) key1!25))))

(assert (= (and d!136721 (not res!828674)) b!1242492))

(assert (= (and b!1242492 res!828675) b!1242493))

(declare-fun m!1145225 () Bool)

(assert (=> b!1242493 m!1145225))

(assert (=> b!1242129 d!136721))

(declare-fun b!1242494 () Bool)

(declare-fun e!704376 () List!27536)

(declare-fun call!61344 () List!27536)

(assert (=> b!1242494 (= e!704376 call!61344)))

(declare-fun bm!61339 () Bool)

(declare-fun call!61342 () List!27536)

(assert (=> bm!61339 (= call!61342 call!61344)))

(declare-fun b!1242495 () Bool)

(declare-fun res!828676 () Bool)

(declare-fun e!704377 () Bool)

(assert (=> b!1242495 (=> (not res!828676) (not e!704377))))

(declare-fun lt!562196 () List!27536)

(assert (=> b!1242495 (= res!828676 (containsKey!613 lt!562196 key1!25))))

(declare-fun b!1242496 () Bool)

(assert (=> b!1242496 (= e!704377 (contains!7410 lt!562196 (tuple2!20443 key1!25 v1!20)))))

(declare-fun bm!61340 () Bool)

(declare-fun c!121611 () Bool)

(declare-fun e!704374 () List!27536)

(assert (=> bm!61340 (= call!61344 ($colon$colon!629 e!704374 (ite c!121611 (h!28741 (t!41006 (removeStrictlySorted!133 l!644 key2!15))) (tuple2!20443 key1!25 v1!20))))))

(declare-fun c!121613 () Bool)

(assert (=> bm!61340 (= c!121613 c!121611)))

(declare-fun b!1242497 () Bool)

(declare-fun e!704378 () List!27536)

(assert (=> b!1242497 (= e!704376 e!704378)))

(declare-fun c!121610 () Bool)

(assert (=> b!1242497 (= c!121610 (and (is-Cons!27532 (t!41006 (removeStrictlySorted!133 l!644 key2!15))) (= (_1!10231 (h!28741 (t!41006 (removeStrictlySorted!133 l!644 key2!15)))) key1!25)))))

(declare-fun b!1242498 () Bool)

(declare-fun e!704375 () List!27536)

(declare-fun call!61343 () List!27536)

(assert (=> b!1242498 (= e!704375 call!61343)))

(declare-fun b!1242499 () Bool)

(assert (=> b!1242499 (= e!704374 (insertStrictlySorted!439 (t!41006 (t!41006 (removeStrictlySorted!133 l!644 key2!15))) key1!25 v1!20))))

(declare-fun b!1242500 () Bool)

(declare-fun c!121612 () Bool)

(assert (=> b!1242500 (= c!121612 (and (is-Cons!27532 (t!41006 (removeStrictlySorted!133 l!644 key2!15))) (bvsgt (_1!10231 (h!28741 (t!41006 (removeStrictlySorted!133 l!644 key2!15)))) key1!25)))))

(assert (=> b!1242500 (= e!704378 e!704375)))

(declare-fun b!1242502 () Bool)

(assert (=> b!1242502 (= e!704374 (ite c!121610 (t!41006 (t!41006 (removeStrictlySorted!133 l!644 key2!15))) (ite c!121612 (Cons!27532 (h!28741 (t!41006 (removeStrictlySorted!133 l!644 key2!15))) (t!41006 (t!41006 (removeStrictlySorted!133 l!644 key2!15)))) Nil!27533)))))

(declare-fun b!1242503 () Bool)

(assert (=> b!1242503 (= e!704378 call!61342)))

(declare-fun bm!61341 () Bool)

(assert (=> bm!61341 (= call!61343 call!61342)))

(declare-fun d!136723 () Bool)

(assert (=> d!136723 e!704377))

(declare-fun res!828677 () Bool)

(assert (=> d!136723 (=> (not res!828677) (not e!704377))))

(assert (=> d!136723 (= res!828677 (isStrictlySorted!761 lt!562196))))

(assert (=> d!136723 (= lt!562196 e!704376)))

(assert (=> d!136723 (= c!121611 (and (is-Cons!27532 (t!41006 (removeStrictlySorted!133 l!644 key2!15))) (bvslt (_1!10231 (h!28741 (t!41006 (removeStrictlySorted!133 l!644 key2!15)))) key1!25)))))

(assert (=> d!136723 (isStrictlySorted!761 (t!41006 (removeStrictlySorted!133 l!644 key2!15)))))

(assert (=> d!136723 (= (insertStrictlySorted!439 (t!41006 (removeStrictlySorted!133 l!644 key2!15)) key1!25 v1!20) lt!562196)))

(declare-fun b!1242501 () Bool)

(assert (=> b!1242501 (= e!704375 call!61343)))

(assert (= (and d!136723 c!121611) b!1242494))

(assert (= (and d!136723 (not c!121611)) b!1242497))

(assert (= (and b!1242497 c!121610) b!1242503))

(assert (= (and b!1242497 (not c!121610)) b!1242500))

(assert (= (and b!1242500 c!121612) b!1242498))

(assert (= (and b!1242500 (not c!121612)) b!1242501))

(assert (= (or b!1242498 b!1242501) bm!61341))

(assert (= (or b!1242503 bm!61341) bm!61339))

(assert (= (or b!1242494 bm!61339) bm!61340))

(assert (= (and bm!61340 c!121613) b!1242499))

(assert (= (and bm!61340 (not c!121613)) b!1242502))

(assert (= (and d!136723 res!828677) b!1242495))

(assert (= (and b!1242495 res!828676) b!1242496))

(declare-fun m!1145227 () Bool)

(assert (=> b!1242496 m!1145227))

(declare-fun m!1145229 () Bool)

(assert (=> d!136723 m!1145229))

(declare-fun m!1145231 () Bool)

(assert (=> d!136723 m!1145231))

(declare-fun m!1145233 () Bool)

(assert (=> b!1242499 m!1145233))

(declare-fun m!1145235 () Bool)

(assert (=> b!1242495 m!1145235))

(declare-fun m!1145237 () Bool)

(assert (=> bm!61340 m!1145237))

(assert (=> b!1242173 d!136723))

(declare-fun d!136725 () Bool)

(declare-fun res!828678 () Bool)

(declare-fun e!704379 () Bool)

(assert (=> d!136725 (=> res!828678 e!704379)))

(assert (=> d!136725 (= res!828678 (or (is-Nil!27533 lt!562170) (is-Nil!27533 (t!41006 lt!562170))))))

(assert (=> d!136725 (= (isStrictlySorted!761 lt!562170) e!704379)))

(declare-fun b!1242504 () Bool)

(declare-fun e!704380 () Bool)

(assert (=> b!1242504 (= e!704379 e!704380)))

(declare-fun res!828679 () Bool)

(assert (=> b!1242504 (=> (not res!828679) (not e!704380))))

(assert (=> b!1242504 (= res!828679 (bvslt (_1!10231 (h!28741 lt!562170)) (_1!10231 (h!28741 (t!41006 lt!562170)))))))

(declare-fun b!1242505 () Bool)

(assert (=> b!1242505 (= e!704380 (isStrictlySorted!761 (t!41006 lt!562170)))))

(assert (= (and d!136725 (not res!828678)) b!1242504))

(assert (= (and b!1242504 res!828679) b!1242505))

(declare-fun m!1145239 () Bool)

(assert (=> b!1242505 m!1145239))

(assert (=> d!136555 d!136725))

(assert (=> d!136555 d!136501))

(assert (=> b!1241980 d!136501))

(declare-fun d!136727 () Bool)

(assert (=> d!136727 (= ($colon$colon!629 (removeStrictlySorted!133 (t!41006 l!644) key2!15) (h!28741 l!644)) (Cons!27532 (h!28741 l!644) (removeStrictlySorted!133 (t!41006 l!644) key2!15)))))

(assert (=> b!1242188 d!136727))

(assert (=> b!1242188 d!136555))

(declare-fun d!136729 () Bool)

(assert (=> d!136729 (= (insertStrictlySorted!439 (removeStrictlySorted!133 (t!41006 l!644) key2!15) key1!25 v1!20) (removeStrictlySorted!133 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20) key2!15))))

(assert (=> d!136729 true))

(declare-fun _$3!76 () Unit!41207)

(assert (=> d!136729 (= (choose!1851 (t!41006 l!644) key1!25 v1!20 key2!15) _$3!76)))

(declare-fun bs!34974 () Bool)

(assert (= bs!34974 d!136729))

(assert (=> bs!34974 m!1144735))

(assert (=> bs!34974 m!1144735))

(assert (=> bs!34974 m!1144737))

(assert (=> bs!34974 m!1144731))

(assert (=> bs!34974 m!1144731))

(assert (=> bs!34974 m!1144733))

(assert (=> d!136535 d!136729))

(assert (=> d!136535 d!136503))

(assert (=> d!136535 d!136511))

(assert (=> d!136535 d!136543))

(assert (=> d!136535 d!136555))

(declare-fun d!136731 () Bool)

(assert (=> d!136731 (= ($colon$colon!629 e!704134 (ite c!121533 (h!28741 (removeStrictlySorted!133 l!644 key2!15)) (tuple2!20443 key1!25 v1!20))) (Cons!27532 (ite c!121533 (h!28741 (removeStrictlySorted!133 l!644 key2!15)) (tuple2!20443 key1!25 v1!20)) e!704134))))

(assert (=> bm!61307 d!136731))

(declare-fun d!136733 () Bool)

(declare-fun res!828680 () Bool)

(declare-fun e!704381 () Bool)

(assert (=> d!136733 (=> res!828680 e!704381)))

(assert (=> d!136733 (= res!828680 (and (is-Cons!27532 lt!562133) (= (_1!10231 (h!28741 lt!562133)) key2!15)))))

(assert (=> d!136733 (= (containsKey!613 lt!562133 key2!15) e!704381)))

(declare-fun b!1242506 () Bool)

(declare-fun e!704382 () Bool)

(assert (=> b!1242506 (= e!704381 e!704382)))

(declare-fun res!828681 () Bool)

(assert (=> b!1242506 (=> (not res!828681) (not e!704382))))

(assert (=> b!1242506 (= res!828681 (and (or (not (is-Cons!27532 lt!562133)) (bvsle (_1!10231 (h!28741 lt!562133)) key2!15)) (is-Cons!27532 lt!562133) (bvslt (_1!10231 (h!28741 lt!562133)) key2!15)))))

(declare-fun b!1242507 () Bool)

(assert (=> b!1242507 (= e!704382 (containsKey!613 (t!41006 lt!562133) key2!15))))

(assert (= (and d!136733 (not res!828680)) b!1242506))

(assert (= (and b!1242506 res!828681) b!1242507))

(declare-fun m!1145241 () Bool)

(assert (=> b!1242507 m!1145241))

(assert (=> b!1242024 d!136733))

(declare-fun d!136735 () Bool)

(declare-fun res!828682 () Bool)

(declare-fun e!704383 () Bool)

(assert (=> d!136735 (=> res!828682 e!704383)))

(assert (=> d!136735 (= res!828682 (and (is-Cons!27532 lt!562167) (= (_1!10231 (h!28741 lt!562167)) key2!15)))))

(assert (=> d!136735 (= (containsKey!613 lt!562167 key2!15) e!704383)))

(declare-fun b!1242508 () Bool)

(declare-fun e!704384 () Bool)

(assert (=> b!1242508 (= e!704383 e!704384)))

(declare-fun res!828683 () Bool)

(assert (=> b!1242508 (=> (not res!828683) (not e!704384))))

(assert (=> b!1242508 (= res!828683 (and (or (not (is-Cons!27532 lt!562167)) (bvsle (_1!10231 (h!28741 lt!562167)) key2!15)) (is-Cons!27532 lt!562167) (bvslt (_1!10231 (h!28741 lt!562167)) key2!15)))))

(declare-fun b!1242509 () Bool)

(assert (=> b!1242509 (= e!704384 (containsKey!613 (t!41006 lt!562167) key2!15))))

(assert (= (and d!136735 (not res!828682)) b!1242508))

(assert (= (and b!1242508 res!828683) b!1242509))

(declare-fun m!1145243 () Bool)

(assert (=> b!1242509 m!1145243))

(assert (=> b!1242239 d!136735))

(declare-fun d!136737 () Bool)

(assert (=> d!136737 (= ($colon$colon!629 (removeStrictlySorted!133 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20)) key2!15) (h!28741 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20))) (Cons!27532 (h!28741 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20)) (removeStrictlySorted!133 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20)) key2!15)))))

(assert (=> b!1242023 d!136737))

(declare-fun b!1242510 () Bool)

(declare-fun e!704385 () List!27536)

(assert (=> b!1242510 (= e!704385 ($colon$colon!629 (removeStrictlySorted!133 (t!41006 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20))) key2!15) (h!28741 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20)))))))

(declare-fun d!136739 () Bool)

(declare-fun e!704387 () Bool)

(assert (=> d!136739 e!704387))

(declare-fun res!828684 () Bool)

(assert (=> d!136739 (=> (not res!828684) (not e!704387))))

(declare-fun lt!562197 () List!27536)

(assert (=> d!136739 (= res!828684 (isStrictlySorted!761 lt!562197))))

(declare-fun e!704386 () List!27536)

(assert (=> d!136739 (= lt!562197 e!704386)))

(declare-fun c!121614 () Bool)

(assert (=> d!136739 (= c!121614 (and (is-Cons!27532 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20))) (= (_1!10231 (h!28741 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20)))) key2!15)))))

(assert (=> d!136739 (isStrictlySorted!761 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20)))))

(assert (=> d!136739 (= (removeStrictlySorted!133 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20)) key2!15) lt!562197)))

(declare-fun b!1242511 () Bool)

(assert (=> b!1242511 (= e!704387 (not (containsKey!613 lt!562197 key2!15)))))

(declare-fun b!1242512 () Bool)

(assert (=> b!1242512 (= e!704386 e!704385)))

(declare-fun c!121615 () Bool)

(assert (=> b!1242512 (= c!121615 (and (is-Cons!27532 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20))) (not (= (_1!10231 (h!28741 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20)))) key2!15))))))

(declare-fun b!1242513 () Bool)

(assert (=> b!1242513 (= e!704385 Nil!27533)))

(declare-fun b!1242514 () Bool)

(assert (=> b!1242514 (= e!704386 (t!41006 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20))))))

(assert (= (and d!136739 c!121614) b!1242514))

(assert (= (and d!136739 (not c!121614)) b!1242512))

(assert (= (and b!1242512 c!121615) b!1242510))

(assert (= (and b!1242512 (not c!121615)) b!1242513))

(assert (= (and d!136739 res!828684) b!1242511))

(declare-fun m!1145245 () Bool)

(assert (=> b!1242510 m!1145245))

(assert (=> b!1242510 m!1145245))

(declare-fun m!1145247 () Bool)

(assert (=> b!1242510 m!1145247))

(declare-fun m!1145249 () Bool)

(assert (=> d!136739 m!1145249))

(declare-fun m!1145251 () Bool)

(assert (=> d!136739 m!1145251))

(declare-fun m!1145253 () Bool)

(assert (=> b!1242511 m!1145253))

(assert (=> b!1242023 d!136739))

(declare-fun d!136741 () Bool)

(assert (=> d!136741 (= ($colon$colon!629 e!704104 (ite c!121509 (h!28741 (removeStrictlySorted!133 (t!41006 l!644) key2!15)) (tuple2!20443 key1!25 v1!20))) (Cons!27532 (ite c!121509 (h!28741 (removeStrictlySorted!133 (t!41006 l!644) key2!15)) (tuple2!20443 key1!25 v1!20)) e!704104))))

(assert (=> bm!61286 d!136741))

(declare-fun d!136743 () Bool)

(assert (=> d!136743 (= ($colon$colon!629 (removeStrictlySorted!133 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20)) key2!15) (h!28741 (insertStrictlySorted!439 l!644 key1!25 v1!20))) (Cons!27532 (h!28741 (insertStrictlySorted!439 l!644 key1!25 v1!20)) (removeStrictlySorted!133 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20)) key2!15)))))

(assert (=> b!1242238 d!136743))

(declare-fun b!1242515 () Bool)

(declare-fun e!704388 () List!27536)

(assert (=> b!1242515 (= e!704388 ($colon$colon!629 (removeStrictlySorted!133 (t!41006 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20))) key2!15) (h!28741 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20)))))))

(declare-fun d!136745 () Bool)

(declare-fun e!704390 () Bool)

(assert (=> d!136745 e!704390))

(declare-fun res!828685 () Bool)

(assert (=> d!136745 (=> (not res!828685) (not e!704390))))

(declare-fun lt!562198 () List!27536)

(assert (=> d!136745 (= res!828685 (isStrictlySorted!761 lt!562198))))

(declare-fun e!704389 () List!27536)

(assert (=> d!136745 (= lt!562198 e!704389)))

(declare-fun c!121616 () Bool)

(assert (=> d!136745 (= c!121616 (and (is-Cons!27532 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20))) (= (_1!10231 (h!28741 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20)))) key2!15)))))

(assert (=> d!136745 (isStrictlySorted!761 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20)))))

(assert (=> d!136745 (= (removeStrictlySorted!133 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20)) key2!15) lt!562198)))

(declare-fun b!1242516 () Bool)

(assert (=> b!1242516 (= e!704390 (not (containsKey!613 lt!562198 key2!15)))))

(declare-fun b!1242517 () Bool)

(assert (=> b!1242517 (= e!704389 e!704388)))

(declare-fun c!121617 () Bool)

(assert (=> b!1242517 (= c!121617 (and (is-Cons!27532 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20))) (not (= (_1!10231 (h!28741 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20)))) key2!15))))))

(declare-fun b!1242518 () Bool)

(assert (=> b!1242518 (= e!704388 Nil!27533)))

(declare-fun b!1242519 () Bool)

(assert (=> b!1242519 (= e!704389 (t!41006 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20))))))

(assert (= (and d!136745 c!121616) b!1242519))

(assert (= (and d!136745 (not c!121616)) b!1242517))

(assert (= (and b!1242517 c!121617) b!1242515))

(assert (= (and b!1242517 (not c!121617)) b!1242518))

(assert (= (and d!136745 res!828685) b!1242516))

(declare-fun m!1145255 () Bool)

(assert (=> b!1242515 m!1145255))

(assert (=> b!1242515 m!1145255))

(declare-fun m!1145257 () Bool)

(assert (=> b!1242515 m!1145257))

(declare-fun m!1145259 () Bool)

(assert (=> d!136745 m!1145259))

(declare-fun m!1145261 () Bool)

(assert (=> d!136745 m!1145261))

(declare-fun m!1145263 () Bool)

(assert (=> b!1242516 m!1145263))

(assert (=> b!1242238 d!136745))

(declare-fun lt!562201 () Bool)

(declare-fun d!136747 () Bool)

(declare-fun content!610 (List!27536) (Set tuple2!20442))

(assert (=> d!136747 (= lt!562201 (member (tuple2!20443 key1!25 v1!20) (content!610 lt!562142)))))

(declare-fun e!704396 () Bool)

(assert (=> d!136747 (= lt!562201 e!704396)))

(declare-fun res!828690 () Bool)

(assert (=> d!136747 (=> (not res!828690) (not e!704396))))

(assert (=> d!136747 (= res!828690 (is-Cons!27532 lt!562142))))

(assert (=> d!136747 (= (contains!7410 lt!562142 (tuple2!20443 key1!25 v1!20)) lt!562201)))

(declare-fun b!1242524 () Bool)

(declare-fun e!704395 () Bool)

(assert (=> b!1242524 (= e!704396 e!704395)))

(declare-fun res!828691 () Bool)

(assert (=> b!1242524 (=> res!828691 e!704395)))

(assert (=> b!1242524 (= res!828691 (= (h!28741 lt!562142) (tuple2!20443 key1!25 v1!20)))))

(declare-fun b!1242525 () Bool)

(assert (=> b!1242525 (= e!704395 (contains!7410 (t!41006 lt!562142) (tuple2!20443 key1!25 v1!20)))))

(assert (= (and d!136747 res!828690) b!1242524))

(assert (= (and b!1242524 (not res!828691)) b!1242525))

(declare-fun m!1145265 () Bool)

(assert (=> d!136747 m!1145265))

(declare-fun m!1145267 () Bool)

(assert (=> d!136747 m!1145267))

(declare-fun m!1145269 () Bool)

(assert (=> b!1242525 m!1145269))

(assert (=> b!1242100 d!136747))

(declare-fun d!136749 () Bool)

(declare-fun res!828692 () Bool)

(declare-fun e!704397 () Bool)

(assert (=> d!136749 (=> res!828692 e!704397)))

(assert (=> d!136749 (= res!828692 (or (is-Nil!27533 lt!562167) (is-Nil!27533 (t!41006 lt!562167))))))

(assert (=> d!136749 (= (isStrictlySorted!761 lt!562167) e!704397)))

(declare-fun b!1242526 () Bool)

(declare-fun e!704398 () Bool)

(assert (=> b!1242526 (= e!704397 e!704398)))

(declare-fun res!828693 () Bool)

(assert (=> b!1242526 (=> (not res!828693) (not e!704398))))

(assert (=> b!1242526 (= res!828693 (bvslt (_1!10231 (h!28741 lt!562167)) (_1!10231 (h!28741 (t!41006 lt!562167)))))))

(declare-fun b!1242527 () Bool)

(assert (=> b!1242527 (= e!704398 (isStrictlySorted!761 (t!41006 lt!562167)))))

(assert (= (and d!136749 (not res!828692)) b!1242526))

(assert (= (and b!1242526 res!828693) b!1242527))

(declare-fun m!1145271 () Bool)

(assert (=> b!1242527 m!1145271))

(assert (=> d!136549 d!136749))

(declare-fun d!136751 () Bool)

(declare-fun res!828694 () Bool)

(declare-fun e!704399 () Bool)

(assert (=> d!136751 (=> res!828694 e!704399)))

(assert (=> d!136751 (= res!828694 (or (is-Nil!27533 (insertStrictlySorted!439 l!644 key1!25 v1!20)) (is-Nil!27533 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20)))))))

(assert (=> d!136751 (= (isStrictlySorted!761 (insertStrictlySorted!439 l!644 key1!25 v1!20)) e!704399)))

(declare-fun b!1242528 () Bool)

(declare-fun e!704400 () Bool)

(assert (=> b!1242528 (= e!704399 e!704400)))

(declare-fun res!828695 () Bool)

(assert (=> b!1242528 (=> (not res!828695) (not e!704400))))

(assert (=> b!1242528 (= res!828695 (bvslt (_1!10231 (h!28741 (insertStrictlySorted!439 l!644 key1!25 v1!20))) (_1!10231 (h!28741 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20))))))))

(declare-fun b!1242529 () Bool)

(assert (=> b!1242529 (= e!704400 (isStrictlySorted!761 (t!41006 (insertStrictlySorted!439 l!644 key1!25 v1!20))))))

(assert (= (and d!136751 (not res!828694)) b!1242528))

(assert (= (and b!1242528 res!828695) b!1242529))

(assert (=> b!1242529 m!1145261))

(assert (=> d!136549 d!136751))

(declare-fun b!1242530 () Bool)

(declare-fun e!704403 () List!27536)

(declare-fun call!61347 () List!27536)

(assert (=> b!1242530 (= e!704403 call!61347)))

(declare-fun bm!61342 () Bool)

(declare-fun call!61345 () List!27536)

(assert (=> bm!61342 (= call!61345 call!61347)))

(declare-fun b!1242531 () Bool)

(declare-fun res!828696 () Bool)

(declare-fun e!704404 () Bool)

(assert (=> b!1242531 (=> (not res!828696) (not e!704404))))

(declare-fun lt!562202 () List!27536)

(assert (=> b!1242531 (= res!828696 (containsKey!613 lt!562202 key1!25))))

(declare-fun b!1242532 () Bool)

(assert (=> b!1242532 (= e!704404 (contains!7410 lt!562202 (tuple2!20443 key1!25 v1!20)))))

(declare-fun bm!61343 () Bool)

(declare-fun c!121619 () Bool)

(declare-fun e!704401 () List!27536)

(assert (=> bm!61343 (= call!61347 ($colon$colon!629 e!704401 (ite c!121619 (h!28741 (t!41006 (t!41006 l!644))) (tuple2!20443 key1!25 v1!20))))))

(declare-fun c!121621 () Bool)

(assert (=> bm!61343 (= c!121621 c!121619)))

(declare-fun b!1242533 () Bool)

(declare-fun e!704405 () List!27536)

(assert (=> b!1242533 (= e!704403 e!704405)))

(declare-fun c!121618 () Bool)

(assert (=> b!1242533 (= c!121618 (and (is-Cons!27532 (t!41006 (t!41006 l!644))) (= (_1!10231 (h!28741 (t!41006 (t!41006 l!644)))) key1!25)))))

(declare-fun b!1242534 () Bool)

(declare-fun e!704402 () List!27536)

(declare-fun call!61346 () List!27536)

(assert (=> b!1242534 (= e!704402 call!61346)))

(declare-fun b!1242535 () Bool)

(assert (=> b!1242535 (= e!704401 (insertStrictlySorted!439 (t!41006 (t!41006 (t!41006 l!644))) key1!25 v1!20))))

(declare-fun b!1242536 () Bool)

(declare-fun c!121620 () Bool)

(assert (=> b!1242536 (= c!121620 (and (is-Cons!27532 (t!41006 (t!41006 l!644))) (bvsgt (_1!10231 (h!28741 (t!41006 (t!41006 l!644)))) key1!25)))))

(assert (=> b!1242536 (= e!704405 e!704402)))

(declare-fun b!1242538 () Bool)

(assert (=> b!1242538 (= e!704401 (ite c!121618 (t!41006 (t!41006 (t!41006 l!644))) (ite c!121620 (Cons!27532 (h!28741 (t!41006 (t!41006 l!644))) (t!41006 (t!41006 (t!41006 l!644)))) Nil!27533)))))

(declare-fun b!1242539 () Bool)

(assert (=> b!1242539 (= e!704405 call!61345)))

(declare-fun bm!61344 () Bool)

(assert (=> bm!61344 (= call!61346 call!61345)))

(declare-fun d!136753 () Bool)

(assert (=> d!136753 e!704404))

(declare-fun res!828697 () Bool)

(assert (=> d!136753 (=> (not res!828697) (not e!704404))))

(assert (=> d!136753 (= res!828697 (isStrictlySorted!761 lt!562202))))

(assert (=> d!136753 (= lt!562202 e!704403)))

(assert (=> d!136753 (= c!121619 (and (is-Cons!27532 (t!41006 (t!41006 l!644))) (bvslt (_1!10231 (h!28741 (t!41006 (t!41006 l!644)))) key1!25)))))

(assert (=> d!136753 (isStrictlySorted!761 (t!41006 (t!41006 l!644)))))

(assert (=> d!136753 (= (insertStrictlySorted!439 (t!41006 (t!41006 l!644)) key1!25 v1!20) lt!562202)))

(declare-fun b!1242537 () Bool)

(assert (=> b!1242537 (= e!704402 call!61346)))

(assert (= (and d!136753 c!121619) b!1242530))

(assert (= (and d!136753 (not c!121619)) b!1242533))

(assert (= (and b!1242533 c!121618) b!1242539))

(assert (= (and b!1242533 (not c!121618)) b!1242536))

(assert (= (and b!1242536 c!121620) b!1242534))

(assert (= (and b!1242536 (not c!121620)) b!1242537))

(assert (= (or b!1242534 b!1242537) bm!61344))

(assert (= (or b!1242539 bm!61344) bm!61342))

(assert (= (or b!1242530 bm!61342) bm!61343))

(assert (= (and bm!61343 c!121621) b!1242535))

(assert (= (and bm!61343 (not c!121621)) b!1242538))

(assert (= (and d!136753 res!828697) b!1242531))

(assert (= (and b!1242531 res!828696) b!1242532))

(declare-fun m!1145273 () Bool)

(assert (=> b!1242532 m!1145273))

(declare-fun m!1145275 () Bool)

(assert (=> d!136753 m!1145275))

(assert (=> d!136753 m!1144745))

(declare-fun m!1145277 () Bool)

(assert (=> b!1242535 m!1145277))

(declare-fun m!1145279 () Bool)

(assert (=> b!1242531 m!1145279))

(declare-fun m!1145281 () Bool)

(assert (=> bm!61343 m!1145281))

(assert (=> b!1242218 d!136753))

(declare-fun d!136755 () Bool)

(declare-fun res!828698 () Bool)

(declare-fun e!704406 () Bool)

(assert (=> d!136755 (=> res!828698 e!704406)))

(assert (=> d!136755 (= res!828698 (and (is-Cons!27532 lt!562142) (= (_1!10231 (h!28741 lt!562142)) key1!25)))))

(assert (=> d!136755 (= (containsKey!613 lt!562142 key1!25) e!704406)))

(declare-fun b!1242540 () Bool)

(declare-fun e!704407 () Bool)

(assert (=> b!1242540 (= e!704406 e!704407)))

(declare-fun res!828699 () Bool)

(assert (=> b!1242540 (=> (not res!828699) (not e!704407))))

(assert (=> b!1242540 (= res!828699 (and (or (not (is-Cons!27532 lt!562142)) (bvsle (_1!10231 (h!28741 lt!562142)) key1!25)) (is-Cons!27532 lt!562142) (bvslt (_1!10231 (h!28741 lt!562142)) key1!25)))))

(declare-fun b!1242541 () Bool)

(assert (=> b!1242541 (= e!704407 (containsKey!613 (t!41006 lt!562142) key1!25))))

(assert (= (and d!136755 (not res!828698)) b!1242540))

(assert (= (and b!1242540 res!828699) b!1242541))

(declare-fun m!1145283 () Bool)

(assert (=> b!1242541 m!1145283))

(assert (=> b!1242099 d!136755))

(declare-fun d!136757 () Bool)

(declare-fun res!828700 () Bool)

(declare-fun e!704408 () Bool)

(assert (=> d!136757 (=> res!828700 e!704408)))

(assert (=> d!136757 (= res!828700 (or (is-Nil!27533 lt!562145) (is-Nil!27533 (t!41006 lt!562145))))))

(assert (=> d!136757 (= (isStrictlySorted!761 lt!562145) e!704408)))

(declare-fun b!1242542 () Bool)

(declare-fun e!704409 () Bool)

(assert (=> b!1242542 (= e!704408 e!704409)))

(declare-fun res!828701 () Bool)

(assert (=> b!1242542 (=> (not res!828701) (not e!704409))))

(assert (=> b!1242542 (= res!828701 (bvslt (_1!10231 (h!28741 lt!562145)) (_1!10231 (h!28741 (t!41006 lt!562145)))))))

(declare-fun b!1242543 () Bool)

(assert (=> b!1242543 (= e!704409 (isStrictlySorted!761 (t!41006 lt!562145)))))

(assert (= (and d!136757 (not res!828700)) b!1242542))

(assert (= (and b!1242542 res!828701) b!1242543))

(declare-fun m!1145285 () Bool)

(assert (=> b!1242543 m!1145285))

(assert (=> d!136517 d!136757))

(assert (=> d!136517 d!136495))

(declare-fun d!136759 () Bool)

(declare-fun res!828702 () Bool)

(declare-fun e!704410 () Bool)

(assert (=> d!136759 (=> res!828702 e!704410)))

(assert (=> d!136759 (= res!828702 (or (is-Nil!27533 lt!562133) (is-Nil!27533 (t!41006 lt!562133))))))

(assert (=> d!136759 (= (isStrictlySorted!761 lt!562133) e!704410)))

(declare-fun b!1242544 () Bool)

(declare-fun e!704411 () Bool)

(assert (=> b!1242544 (= e!704410 e!704411)))

(declare-fun res!828703 () Bool)

(assert (=> b!1242544 (=> (not res!828703) (not e!704411))))

(assert (=> b!1242544 (= res!828703 (bvslt (_1!10231 (h!28741 lt!562133)) (_1!10231 (h!28741 (t!41006 lt!562133)))))))

(declare-fun b!1242545 () Bool)

(assert (=> b!1242545 (= e!704411 (isStrictlySorted!761 (t!41006 lt!562133)))))

(assert (= (and d!136759 (not res!828702)) b!1242544))

(assert (= (and b!1242544 res!828703) b!1242545))

(declare-fun m!1145287 () Bool)

(assert (=> b!1242545 m!1145287))

(assert (=> d!136503 d!136759))

(declare-fun d!136761 () Bool)

(declare-fun res!828704 () Bool)

(declare-fun e!704412 () Bool)

(assert (=> d!136761 (=> res!828704 e!704412)))

(assert (=> d!136761 (= res!828704 (or (is-Nil!27533 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20)) (is-Nil!27533 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20)))))))

(assert (=> d!136761 (= (isStrictlySorted!761 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20)) e!704412)))

(declare-fun b!1242546 () Bool)

(declare-fun e!704413 () Bool)

(assert (=> b!1242546 (= e!704412 e!704413)))

(declare-fun res!828705 () Bool)

(assert (=> b!1242546 (=> (not res!828705) (not e!704413))))

(assert (=> b!1242546 (= res!828705 (bvslt (_1!10231 (h!28741 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20))) (_1!10231 (h!28741 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20))))))))

(declare-fun b!1242547 () Bool)

(assert (=> b!1242547 (= e!704413 (isStrictlySorted!761 (t!41006 (insertStrictlySorted!439 (t!41006 l!644) key1!25 v1!20))))))

(assert (= (and d!136761 (not res!828704)) b!1242546))

(assert (= (and b!1242546 res!828705) b!1242547))

(assert (=> b!1242547 m!1145251))

(assert (=> d!136503 d!136761))

(assert (=> b!1242134 d!136543))

(declare-fun lt!562203 () Bool)

(declare-fun d!136763 () Bool)

(assert (=> d!136763 (= lt!562203 (member (tuple2!20443 key1!25 v1!20) (content!610 lt!562148)))))

(declare-fun e!704415 () Bool)

(assert (=> d!136763 (= lt!562203 e!704415)))

(declare-fun res!828706 () Bool)

(assert (=> d!136763 (=> (not res!828706) (not e!704415))))

(assert (=> d!136763 (= res!828706 (is-Cons!27532 lt!562148))))

(assert (=> d!136763 (= (contains!7410 lt!562148 (tuple2!20443 key1!25 v1!20)) lt!562203)))

(declare-fun b!1242548 () Bool)

(declare-fun e!704414 () Bool)

(assert (=> b!1242548 (= e!704415 e!704414)))

(declare-fun res!828707 () Bool)

(assert (=> b!1242548 (=> res!828707 e!704414)))

(assert (=> b!1242548 (= res!828707 (= (h!28741 lt!562148) (tuple2!20443 key1!25 v1!20)))))

(declare-fun b!1242549 () Bool)

(assert (=> b!1242549 (= e!704414 (contains!7410 (t!41006 lt!562148) (tuple2!20443 key1!25 v1!20)))))

(assert (= (and d!136763 res!828706) b!1242548))

(assert (= (and b!1242548 (not res!828707)) b!1242549))

(declare-fun m!1145289 () Bool)

(assert (=> d!136763 m!1145289))

(declare-fun m!1145291 () Bool)

(assert (=> d!136763 m!1145291))

(declare-fun m!1145293 () Bool)

(assert (=> b!1242549 m!1145293))

(assert (=> b!1242166 d!136763))

(declare-fun d!136765 () Bool)

(assert (=> d!136765 (= ($colon$colon!629 e!704162 (ite c!121555 (h!28741 (t!41006 l!644)) (tuple2!20443 key1!25 v1!20))) (Cons!27532 (ite c!121555 (h!28741 (t!41006 l!644)) (tuple2!20443 key1!25 v1!20)) e!704162))))

(assert (=> bm!61316 d!136765))

(declare-fun d!136767 () Bool)

(declare-fun lt!562204 () Bool)

(assert (=> d!136767 (= lt!562204 (member (tuple2!20443 key1!25 v1!20) (content!610 lt!562164)))))

(declare-fun e!704417 () Bool)

(assert (=> d!136767 (= lt!562204 e!704417)))

(declare-fun res!828708 () Bool)

(assert (=> d!136767 (=> (not res!828708) (not e!704417))))

(assert (=> d!136767 (= res!828708 (is-Cons!27532 lt!562164))))

(assert (=> d!136767 (= (contains!7410 lt!562164 (tuple2!20443 key1!25 v1!20)) lt!562204)))

(declare-fun b!1242550 () Bool)

(declare-fun e!704416 () Bool)

(assert (=> b!1242550 (= e!704417 e!704416)))

(declare-fun res!828709 () Bool)

(assert (=> b!1242550 (=> res!828709 e!704416)))

(assert (=> b!1242550 (= res!828709 (= (h!28741 lt!562164) (tuple2!20443 key1!25 v1!20)))))

(declare-fun b!1242551 () Bool)

(assert (=> b!1242551 (= e!704416 (contains!7410 (t!41006 lt!562164) (tuple2!20443 key1!25 v1!20)))))

(assert (= (and d!136767 res!828708) b!1242550))

(assert (= (and b!1242550 (not res!828709)) b!1242551))

(declare-fun m!1145295 () Bool)

(assert (=> d!136767 m!1145295))

(declare-fun m!1145297 () Bool)

(assert (=> d!136767 m!1145297))

(declare-fun m!1145299 () Bool)

(assert (=> b!1242551 m!1145299))

(assert (=> b!1242215 d!136767))

(declare-fun d!136769 () Bool)

(declare-fun res!828710 () Bool)

(declare-fun e!704418 () Bool)

(assert (=> d!136769 (=> res!828710 e!704418)))

(assert (=> d!136769 (= res!828710 (or (is-Nil!27533 (t!41006 (t!41006 l!644))) (is-Nil!27533 (t!41006 (t!41006 (t!41006 l!644))))))))

(assert (=> d!136769 (= (isStrictlySorted!761 (t!41006 (t!41006 l!644))) e!704418)))

(declare-fun b!1242552 () Bool)

(declare-fun e!704419 () Bool)

(assert (=> b!1242552 (= e!704418 e!704419)))

(declare-fun res!828711 () Bool)

(assert (=> b!1242552 (=> (not res!828711) (not e!704419))))

(assert (=> b!1242552 (= res!828711 (bvslt (_1!10231 (h!28741 (t!41006 (t!41006 l!644)))) (_1!10231 (h!28741 (t!41006 (t!41006 (t!41006 l!644)))))))))

(declare-fun b!1242553 () Bool)

(assert (=> b!1242553 (= e!704419 (isStrictlySorted!761 (t!41006 (t!41006 (t!41006 l!644)))))))

(assert (= (and d!136769 (not res!828710)) b!1242552))

(assert (= (and b!1242552 res!828711) b!1242553))

(declare-fun m!1145301 () Bool)

(assert (=> b!1242553 m!1145301))

(assert (=> b!1241982 d!136769))

(declare-fun d!136771 () Bool)

(declare-fun res!828712 () Bool)

(declare-fun e!704420 () Bool)

(assert (=> d!136771 (=> res!828712 e!704420)))

(assert (=> d!136771 (= res!828712 (and (is-Cons!27532 lt!562148) (= (_1!10231 (h!28741 lt!562148)) key1!25)))))

(assert (=> d!136771 (= (containsKey!613 lt!562148 key1!25) e!704420)))

(declare-fun b!1242554 () Bool)

(declare-fun e!704421 () Bool)

(assert (=> b!1242554 (= e!704420 e!704421)))

(declare-fun res!828713 () Bool)

(assert (=> b!1242554 (=> (not res!828713) (not e!704421))))

(assert (=> b!1242554 (= res!828713 (and (or (not (is-Cons!27532 lt!562148)) (bvsle (_1!10231 (h!28741 lt!562148)) key1!25)) (is-Cons!27532 lt!562148) (bvslt (_1!10231 (h!28741 lt!562148)) key1!25)))))

(declare-fun b!1242555 () Bool)

(assert (=> b!1242555 (= e!704421 (containsKey!613 (t!41006 lt!562148) key1!25))))

(assert (= (and d!136771 (not res!828712)) b!1242554))

(assert (= (and b!1242554 res!828713) b!1242555))

(declare-fun m!1145303 () Bool)

(assert (=> b!1242555 m!1145303))

(assert (=> b!1242164 d!136771))

(declare-fun d!136773 () Bool)

(declare-fun res!828714 () Bool)

(declare-fun e!704422 () Bool)

(assert (=> d!136773 (=> res!828714 e!704422)))

(assert (=> d!136773 (= res!828714 (and (is-Cons!27532 lt!562164) (= (_1!10231 (h!28741 lt!562164)) key1!25)))))

(assert (=> d!136773 (= (containsKey!613 lt!562164 key1!25) e!704422)))

(declare-fun b!1242556 () Bool)

(declare-fun e!704423 () Bool)

(assert (=> b!1242556 (= e!704422 e!704423)))

(declare-fun res!828715 () Bool)

(assert (=> b!1242556 (=> (not res!828715) (not e!704423))))

(assert (=> b!1242556 (= res!828715 (and (or (not (is-Cons!27532 lt!562164)) (bvsle (_1!10231 (h!28741 lt!562164)) key1!25)) (is-Cons!27532 lt!562164) (bvslt (_1!10231 (h!28741 lt!562164)) key1!25)))))

(declare-fun b!1242557 () Bool)

(assert (=> b!1242557 (= e!704423 (containsKey!613 (t!41006 lt!562164) key1!25))))

(assert (= (and d!136773 (not res!828714)) b!1242556))

(assert (= (and b!1242556 res!828715) b!1242557))

(declare-fun m!1145305 () Bool)

(assert (=> b!1242557 m!1145305))

(assert (=> b!1242214 d!136773))

(declare-fun d!136775 () Bool)

(declare-fun res!828716 () Bool)

(declare-fun e!704424 () Bool)

(assert (=> d!136775 (=> res!828716 e!704424)))

(assert (=> d!136775 (= res!828716 (or (is-Nil!27533 lt!562148) (is-Nil!27533 (t!41006 lt!562148))))))

(assert (=> d!136775 (= (isStrictlySorted!761 lt!562148) e!704424)))

(declare-fun b!1242558 () Bool)

(declare-fun e!704425 () Bool)

(assert (=> b!1242558 (= e!704424 e!704425)))

(declare-fun res!828717 () Bool)

(assert (=> b!1242558 (=> (not res!828717) (not e!704425))))

(assert (=> b!1242558 (= res!828717 (bvslt (_1!10231 (h!28741 lt!562148)) (_1!10231 (h!28741 (t!41006 lt!562148)))))))

(declare-fun b!1242559 () Bool)

(assert (=> b!1242559 (= e!704425 (isStrictlySorted!761 (t!41006 lt!562148)))))

(assert (= (and d!136775 (not res!828716)) b!1242558))

(assert (= (and b!1242558 res!828717) b!1242559))

(declare-fun m!1145307 () Bool)

(assert (=> b!1242559 m!1145307))

(assert (=> d!136523 d!136775))

(declare-fun d!136777 () Bool)

(declare-fun res!828718 () Bool)

(declare-fun e!704426 () Bool)

(assert (=> d!136777 (=> res!828718 e!704426)))

(assert (=> d!136777 (= res!828718 (or (is-Nil!27533 (removeStrictlySorted!133 l!644 key2!15)) (is-Nil!27533 (t!41006 (removeStrictlySorted!133 l!644 key2!15)))))))

(assert (=> d!136777 (= (isStrictlySorted!761 (removeStrictlySorted!133 l!644 key2!15)) e!704426)))

(declare-fun b!1242560 () Bool)

(declare-fun e!704427 () Bool)

(assert (=> b!1242560 (= e!704426 e!704427)))

(declare-fun res!828719 () Bool)

(assert (=> b!1242560 (=> (not res!828719) (not e!704427))))

(assert (=> b!1242560 (= res!828719 (bvslt (_1!10231 (h!28741 (removeStrictlySorted!133 l!644 key2!15))) (_1!10231 (h!28741 (t!41006 (removeStrictlySorted!133 l!644 key2!15))))))))

(declare-fun b!1242561 () Bool)

(assert (=> b!1242561 (= e!704427 (isStrictlySorted!761 (t!41006 (removeStrictlySorted!133 l!644 key2!15))))))

(assert (= (and d!136777 (not res!828718)) b!1242560))

(assert (= (and b!1242560 res!828719) b!1242561))

(assert (=> b!1242561 m!1145231))

(assert (=> d!136523 d!136777))

(declare-fun d!136779 () Bool)

(assert (=> d!136779 (= ($colon$colon!629 e!704119 (ite c!121521 (h!28741 l!644) (tuple2!20443 key1!25 v1!20))) (Cons!27532 (ite c!121521 (h!28741 l!644) (tuple2!20443 key1!25 v1!20)) e!704119))))

(assert (=> bm!61295 d!136779))

(declare-fun d!136781 () Bool)

(declare-fun res!828720 () Bool)

(declare-fun e!704428 () Bool)

(assert (=> d!136781 (=> res!828720 e!704428)))

(assert (=> d!136781 (= res!828720 (or (is-Nil!27533 lt!562152) (is-Nil!27533 (t!41006 lt!562152))))))

(assert (=> d!136781 (= (isStrictlySorted!761 lt!562152) e!704428)))

(declare-fun b!1242562 () Bool)

(declare-fun e!704429 () Bool)

(assert (=> b!1242562 (= e!704428 e!704429)))

(declare-fun res!828721 () Bool)

(assert (=> b!1242562 (=> (not res!828721) (not e!704429))))

(assert (=> b!1242562 (= res!828721 (bvslt (_1!10231 (h!28741 lt!562152)) (_1!10231 (h!28741 (t!41006 lt!562152)))))))

(declare-fun b!1242563 () Bool)

(assert (=> b!1242563 (= e!704429 (isStrictlySorted!761 (t!41006 lt!562152)))))

(assert (= (and d!136781 (not res!828720)) b!1242562))

(assert (= (and b!1242562 res!828721) b!1242563))

(declare-fun m!1145309 () Bool)

(assert (=> b!1242563 m!1145309))

(assert (=> d!136529 d!136781))

(assert (=> d!136529 d!136495))

(declare-fun d!136783 () Bool)

(declare-fun lt!562205 () Bool)

(assert (=> d!136783 (= lt!562205 (member (tuple2!20443 key1!25 v1!20) (content!610 lt!562145)))))

(declare-fun e!704431 () Bool)

(assert (=> d!136783 (= lt!562205 e!704431)))

(declare-fun res!828722 () Bool)

(assert (=> d!136783 (=> (not res!828722) (not e!704431))))

(assert (=> d!136783 (= res!828722 (is-Cons!27532 lt!562145))))

(assert (=> d!136783 (= (contains!7410 lt!562145 (tuple2!20443 key1!25 v1!20)) lt!562205)))

(declare-fun b!1242564 () Bool)

(declare-fun e!704430 () Bool)

(assert (=> b!1242564 (= e!704431 e!704430)))

(declare-fun res!828723 () Bool)

(assert (=> b!1242564 (=> res!828723 e!704430)))

(assert (=> b!1242564 (= res!828723 (= (h!28741 lt!562145) (tuple2!20443 key1!25 v1!20)))))

(declare-fun b!1242565 () Bool)

(assert (=> b!1242565 (= e!704430 (contains!7410 (t!41006 lt!562145) (tuple2!20443 key1!25 v1!20)))))

(assert (= (and d!136783 res!828722) b!1242564))

(assert (= (and b!1242564 (not res!828723)) b!1242565))

(declare-fun m!1145311 () Bool)

(assert (=> d!136783 m!1145311))

(declare-fun m!1145313 () Bool)

(assert (=> d!136783 m!1145313))

(declare-fun m!1145315 () Bool)

(assert (=> b!1242565 m!1145315))

(assert (=> b!1242130 d!136783))

(declare-fun d!136785 () Bool)

(declare-fun res!828724 () Bool)

(declare-fun e!704432 () Bool)

(assert (=> d!136785 (=> res!828724 e!704432)))

(assert (=> d!136785 (= res!828724 (and (is-Cons!27532 lt!562170) (= (_1!10231 (h!28741 lt!562170)) key2!15)))))

(assert (=> d!136785 (= (containsKey!613 lt!562170 key2!15) e!704432)))

(declare-fun b!1242566 () Bool)

(declare-fun e!704433 () Bool)

(assert (=> b!1242566 (= e!704432 e!704433)))

(declare-fun res!828725 () Bool)

(assert (=> b!1242566 (=> (not res!828725) (not e!704433))))

(assert (=> b!1242566 (= res!828725 (and (or (not (is-Cons!27532 lt!562170)) (bvsle (_1!10231 (h!28741 lt!562170)) key2!15)) (is-Cons!27532 lt!562170) (bvslt (_1!10231 (h!28741 lt!562170)) key2!15)))))

(declare-fun b!1242567 () Bool)

(assert (=> b!1242567 (= e!704433 (containsKey!613 (t!41006 lt!562170) key2!15))))

(assert (= (and d!136785 (not res!828724)) b!1242566))

(assert (= (and b!1242566 res!828725) b!1242567))

(declare-fun m!1145317 () Bool)

(assert (=> b!1242567 m!1145317))

(assert (=> b!1242254 d!136785))

(declare-fun d!136787 () Bool)

(declare-fun res!828726 () Bool)

(declare-fun e!704434 () Bool)

(assert (=> d!136787 (=> res!828726 e!704434)))

(assert (=> d!136787 (= res!828726 (or (is-Nil!27533 lt!562142) (is-Nil!27533 (t!41006 lt!562142))))))

(assert (=> d!136787 (= (isStrictlySorted!761 lt!562142) e!704434)))

(declare-fun b!1242568 () Bool)

(declare-fun e!704435 () Bool)

(assert (=> b!1242568 (= e!704434 e!704435)))

(declare-fun res!828727 () Bool)

(assert (=> b!1242568 (=> (not res!828727) (not e!704435))))

(assert (=> b!1242568 (= res!828727 (bvslt (_1!10231 (h!28741 lt!562142)) (_1!10231 (h!28741 (t!41006 lt!562142)))))))

(declare-fun b!1242569 () Bool)

(assert (=> b!1242569 (= e!704435 (isStrictlySorted!761 (t!41006 lt!562142)))))

(assert (= (and d!136787 (not res!828726)) b!1242568))

(assert (= (and b!1242568 res!828727) b!1242569))

(declare-fun m!1145319 () Bool)

(assert (=> b!1242569 m!1145319))

(assert (=> d!136511 d!136787))

(declare-fun d!136789 () Bool)

(declare-fun res!828728 () Bool)

(declare-fun e!704436 () Bool)

(assert (=> d!136789 (=> res!828728 e!704436)))

(assert (=> d!136789 (= res!828728 (or (is-Nil!27533 (removeStrictlySorted!133 (t!41006 l!644) key2!15)) (is-Nil!27533 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15)))))))

(assert (=> d!136789 (= (isStrictlySorted!761 (removeStrictlySorted!133 (t!41006 l!644) key2!15)) e!704436)))

(declare-fun b!1242570 () Bool)

(declare-fun e!704437 () Bool)

(assert (=> b!1242570 (= e!704436 e!704437)))

(declare-fun res!828729 () Bool)

(assert (=> b!1242570 (=> (not res!828729) (not e!704437))))

(assert (=> b!1242570 (= res!828729 (bvslt (_1!10231 (h!28741 (removeStrictlySorted!133 (t!41006 l!644) key2!15))) (_1!10231 (h!28741 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15))))))))

(declare-fun b!1242571 () Bool)

(assert (=> b!1242571 (= e!704437 (isStrictlySorted!761 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15))))))

(assert (= (and d!136789 (not res!828728)) b!1242570))

(assert (= (and b!1242570 res!828729) b!1242571))

(declare-fun m!1145321 () Bool)

(assert (=> b!1242571 m!1145321))

(assert (=> d!136511 d!136789))

(declare-fun d!136791 () Bool)

(declare-fun res!828730 () Bool)

(declare-fun e!704438 () Bool)

(assert (=> d!136791 (=> res!828730 e!704438)))

(assert (=> d!136791 (= res!828730 (or (is-Nil!27533 lt!562164) (is-Nil!27533 (t!41006 lt!562164))))))

(assert (=> d!136791 (= (isStrictlySorted!761 lt!562164) e!704438)))

(declare-fun b!1242572 () Bool)

(declare-fun e!704439 () Bool)

(assert (=> b!1242572 (= e!704438 e!704439)))

(declare-fun res!828731 () Bool)

(assert (=> b!1242572 (=> (not res!828731) (not e!704439))))

(assert (=> b!1242572 (= res!828731 (bvslt (_1!10231 (h!28741 lt!562164)) (_1!10231 (h!28741 (t!41006 lt!562164)))))))

(declare-fun b!1242573 () Bool)

(assert (=> b!1242573 (= e!704439 (isStrictlySorted!761 (t!41006 lt!562164)))))

(assert (= (and d!136791 (not res!828730)) b!1242572))

(assert (= (and b!1242572 res!828731) b!1242573))

(declare-fun m!1145323 () Bool)

(assert (=> b!1242573 m!1145323))

(assert (=> d!136543 d!136791))

(assert (=> d!136543 d!136501))

(declare-fun b!1242574 () Bool)

(declare-fun e!704442 () List!27536)

(declare-fun call!61350 () List!27536)

(assert (=> b!1242574 (= e!704442 call!61350)))

(declare-fun bm!61345 () Bool)

(declare-fun call!61348 () List!27536)

(assert (=> bm!61345 (= call!61348 call!61350)))

(declare-fun b!1242575 () Bool)

(declare-fun res!828732 () Bool)

(declare-fun e!704443 () Bool)

(assert (=> b!1242575 (=> (not res!828732) (not e!704443))))

(declare-fun lt!562206 () List!27536)

(assert (=> b!1242575 (= res!828732 (containsKey!613 lt!562206 key1!25))))

(declare-fun b!1242576 () Bool)

(assert (=> b!1242576 (= e!704443 (contains!7410 lt!562206 (tuple2!20443 key1!25 v1!20)))))

(declare-fun c!121623 () Bool)

(declare-fun e!704440 () List!27536)

(declare-fun bm!61346 () Bool)

(assert (=> bm!61346 (= call!61350 ($colon$colon!629 e!704440 (ite c!121623 (h!28741 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15))) (tuple2!20443 key1!25 v1!20))))))

(declare-fun c!121625 () Bool)

(assert (=> bm!61346 (= c!121625 c!121623)))

(declare-fun b!1242577 () Bool)

(declare-fun e!704444 () List!27536)

(assert (=> b!1242577 (= e!704442 e!704444)))

(declare-fun c!121622 () Bool)

(assert (=> b!1242577 (= c!121622 (and (is-Cons!27532 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15))) (= (_1!10231 (h!28741 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15)))) key1!25)))))

(declare-fun b!1242578 () Bool)

(declare-fun e!704441 () List!27536)

(declare-fun call!61349 () List!27536)

(assert (=> b!1242578 (= e!704441 call!61349)))

(declare-fun b!1242579 () Bool)

(assert (=> b!1242579 (= e!704440 (insertStrictlySorted!439 (t!41006 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15))) key1!25 v1!20))))

(declare-fun b!1242580 () Bool)

(declare-fun c!121624 () Bool)

(assert (=> b!1242580 (= c!121624 (and (is-Cons!27532 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15))) (bvsgt (_1!10231 (h!28741 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15)))) key1!25)))))

(assert (=> b!1242580 (= e!704444 e!704441)))

(declare-fun b!1242582 () Bool)

(assert (=> b!1242582 (= e!704440 (ite c!121622 (t!41006 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15))) (ite c!121624 (Cons!27532 (h!28741 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15))) (t!41006 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15)))) Nil!27533)))))

(declare-fun b!1242583 () Bool)

(assert (=> b!1242583 (= e!704444 call!61348)))

(declare-fun bm!61347 () Bool)

(assert (=> bm!61347 (= call!61349 call!61348)))

(declare-fun d!136793 () Bool)

(assert (=> d!136793 e!704443))

(declare-fun res!828733 () Bool)

(assert (=> d!136793 (=> (not res!828733) (not e!704443))))

(assert (=> d!136793 (= res!828733 (isStrictlySorted!761 lt!562206))))

(assert (=> d!136793 (= lt!562206 e!704442)))

(assert (=> d!136793 (= c!121623 (and (is-Cons!27532 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15))) (bvslt (_1!10231 (h!28741 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15)))) key1!25)))))

(assert (=> d!136793 (isStrictlySorted!761 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15)))))

(assert (=> d!136793 (= (insertStrictlySorted!439 (t!41006 (removeStrictlySorted!133 (t!41006 l!644) key2!15)) key1!25 v1!20) lt!562206)))

(declare-fun b!1242581 () Bool)

(assert (=> b!1242581 (= e!704441 call!61349)))

(assert (= (and d!136793 c!121623) b!1242574))

(assert (= (and d!136793 (not c!121623)) b!1242577))

(assert (= (and b!1242577 c!121622) b!1242583))

(assert (= (and b!1242577 (not c!121622)) b!1242580))

(assert (= (and b!1242580 c!121624) b!1242578))

(assert (= (and b!1242580 (not c!121624)) b!1242581))

(assert (= (or b!1242578 b!1242581) bm!61347))

(assert (= (or b!1242583 bm!61347) bm!61345))

(assert (= (or b!1242574 bm!61345) bm!61346))

(assert (= (and bm!61346 c!121625) b!1242579))

(assert (= (and bm!61346 (not c!121625)) b!1242582))

(assert (= (and d!136793 res!828733) b!1242575))

(assert (= (and b!1242575 res!828732) b!1242576))

(declare-fun m!1145325 () Bool)

(assert (=> b!1242576 m!1145325))

(declare-fun m!1145327 () Bool)

(assert (=> d!136793 m!1145327))

(assert (=> d!136793 m!1145321))

(declare-fun m!1145329 () Bool)

(assert (=> b!1242579 m!1145329))

(declare-fun m!1145331 () Bool)

(assert (=> b!1242575 m!1145331))

(declare-fun m!1145333 () Bool)

(assert (=> bm!61346 m!1145333))

(assert (=> b!1242103 d!136793))

(declare-fun d!136795 () Bool)

(declare-fun res!828734 () Bool)

(declare-fun e!704445 () Bool)

(assert (=> d!136795 (=> res!828734 e!704445)))

(assert (=> d!136795 (= res!828734 (and (is-Cons!27532 lt!562152) (= (_1!10231 (h!28741 lt!562152)) key2!15)))))

(assert (=> d!136795 (= (containsKey!613 lt!562152 key2!15) e!704445)))

(declare-fun b!1242584 () Bool)

(declare-fun e!704446 () Bool)

(assert (=> b!1242584 (= e!704445 e!704446)))

(declare-fun res!828735 () Bool)

(assert (=> b!1242584 (=> (not res!828735) (not e!704446))))

(assert (=> b!1242584 (= res!828735 (and (or (not (is-Cons!27532 lt!562152)) (bvsle (_1!10231 (h!28741 lt!562152)) key2!15)) (is-Cons!27532 lt!562152) (bvslt (_1!10231 (h!28741 lt!562152)) key2!15)))))

(declare-fun b!1242585 () Bool)

(assert (=> b!1242585 (= e!704446 (containsKey!613 (t!41006 lt!562152) key2!15))))

(assert (= (and d!136795 (not res!828734)) b!1242584))

(assert (= (and b!1242584 res!828735) b!1242585))

(declare-fun m!1145335 () Bool)

(assert (=> b!1242585 m!1145335))

(assert (=> b!1242189 d!136795))

(declare-fun d!136797 () Bool)

(assert (=> d!136797 (= ($colon$colon!629 (removeStrictlySorted!133 (t!41006 (t!41006 l!644)) key2!15) (h!28741 (t!41006 l!644))) (Cons!27532 (h!28741 (t!41006 l!644)) (removeStrictlySorted!133 (t!41006 (t!41006 l!644)) key2!15)))))

(assert (=> b!1242253 d!136797))

(declare-fun b!1242586 () Bool)

(declare-fun e!704447 () List!27536)

(assert (=> b!1242586 (= e!704447 ($colon$colon!629 (removeStrictlySorted!133 (t!41006 (t!41006 (t!41006 l!644))) key2!15) (h!28741 (t!41006 (t!41006 l!644)))))))

(declare-fun d!136799 () Bool)

(declare-fun e!704449 () Bool)

(assert (=> d!136799 e!704449))

(declare-fun res!828736 () Bool)

(assert (=> d!136799 (=> (not res!828736) (not e!704449))))

(declare-fun lt!562207 () List!27536)

(assert (=> d!136799 (= res!828736 (isStrictlySorted!761 lt!562207))))

(declare-fun e!704448 () List!27536)

(assert (=> d!136799 (= lt!562207 e!704448)))

(declare-fun c!121626 () Bool)

(assert (=> d!136799 (= c!121626 (and (is-Cons!27532 (t!41006 (t!41006 l!644))) (= (_1!10231 (h!28741 (t!41006 (t!41006 l!644)))) key2!15)))))

(assert (=> d!136799 (isStrictlySorted!761 (t!41006 (t!41006 l!644)))))

(assert (=> d!136799 (= (removeStrictlySorted!133 (t!41006 (t!41006 l!644)) key2!15) lt!562207)))

(declare-fun b!1242587 () Bool)

(assert (=> b!1242587 (= e!704449 (not (containsKey!613 lt!562207 key2!15)))))

(declare-fun b!1242588 () Bool)

(assert (=> b!1242588 (= e!704448 e!704447)))

(declare-fun c!121627 () Bool)

(assert (=> b!1242588 (= c!121627 (and (is-Cons!27532 (t!41006 (t!41006 l!644))) (not (= (_1!10231 (h!28741 (t!41006 (t!41006 l!644)))) key2!15))))))

(declare-fun b!1242589 () Bool)

(assert (=> b!1242589 (= e!704447 Nil!27533)))

(declare-fun b!1242590 () Bool)

(assert (=> b!1242590 (= e!704448 (t!41006 (t!41006 (t!41006 l!644))))))

(assert (= (and d!136799 c!121626) b!1242590))

(assert (= (and d!136799 (not c!121626)) b!1242588))

(assert (= (and b!1242588 c!121627) b!1242586))

(assert (= (and b!1242588 (not c!121627)) b!1242589))

(assert (= (and d!136799 res!828736) b!1242587))

(declare-fun m!1145337 () Bool)

(assert (=> b!1242586 m!1145337))

(assert (=> b!1242586 m!1145337))

(declare-fun m!1145339 () Bool)

(assert (=> b!1242586 m!1145339))

(declare-fun m!1145341 () Bool)

(assert (=> d!136799 m!1145341))

(assert (=> d!136799 m!1144745))

(declare-fun m!1145343 () Bool)

(assert (=> b!1242587 m!1145343))

(assert (=> b!1242253 d!136799))

(declare-fun b!1242591 () Bool)

(declare-fun e!704450 () Bool)

(declare-fun tp!92763 () Bool)

(assert (=> b!1242591 (= e!704450 (and tp_is_empty!31289 tp!92763))))

(assert (=> b!1242277 (= tp!92758 e!704450)))

(assert (= (and b!1242277 (is-Cons!27532 (t!41006 (t!41006 l!644)))) b!1242591))

(push 1)

(assert (not b!1242549))

(assert (not b!1242511))

(assert (not bm!61343))

(assert (not b!1242515))

(assert (not b!1242527))

(assert (not b!1242493))

(assert (not d!136783))

(assert (not b!1242499))

(assert (not b!1242496))

(assert (not b!1242495))

(assert (not b!1242585))

(assert (not d!136767))

(assert (not d!136793))

(assert (not b!1242555))

(assert (not d!136753))

(assert (not b!1242541))

(assert (not b!1242505))

(assert (not b!1242531))

(assert (not b!1242576))

(assert (not b!1242559))

(assert (not b!1242516))

(assert (not b!1242551))

(assert (not b!1242563))

(assert (not bm!61340))

(assert (not d!136747))

(assert (not b!1242525))

(assert (not b!1242571))

(assert (not b!1242557))

(assert (not b!1242561))

(assert (not b!1242509))

(assert (not d!136745))

(assert (not d!136799))

(assert (not b!1242575))

(assert (not bm!61346))

(assert (not b!1242591))

(assert (not b!1242532))

(assert (not b!1242579))

(assert (not b!1242547))

(assert (not b!1242565))

(assert (not b!1242573))

(assert (not d!136763))

(assert (not b!1242543))

(assert (not b!1242587))

(assert (not b!1242535))

(assert (not d!136729))

(assert (not b!1242567))

(assert (not b!1242507))

(assert (not d!136739))

(assert (not b!1242529))

(assert (not d!136723))

(assert (not b!1242545))

(assert (not b!1242553))

(assert (not b!1242569))

(assert (not b!1242586))

(assert (not b!1242510))

(assert tp_is_empty!31289)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

