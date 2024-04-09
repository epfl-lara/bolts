; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1992 () Bool)

(assert start!1992)

(declare-fun b!13415 () Bool)

(assert (=> b!13415 true))

(declare-fun b!13414 () Bool)

(declare-fun e!8040 () Bool)

(declare-fun e!8041 () Bool)

(assert (=> b!13414 (= e!8040 e!8041)))

(declare-fun res!10572 () Bool)

(assert (=> b!13414 (=> (not res!10572) (not e!8041))))

(declare-datatypes ((B!490 0))(
  ( (B!491 (val!343 Int)) )
))
(declare-datatypes ((tuple2!468 0))(
  ( (tuple2!469 (_1!234 (_ BitVec 64)) (_2!234 B!490)) )
))
(declare-datatypes ((List!393 0))(
  ( (Nil!390) (Cons!389 (h!955 tuple2!468) (t!2789 List!393)) )
))
(declare-fun lt!3513 () List!393)

(declare-fun isStrictlySorted!84 (List!393) Bool)

(assert (=> b!13414 (= res!10572 (isStrictlySorted!84 lt!3513))))

(declare-fun l!522 () List!393)

(declare-fun value!159 () B!490)

(declare-fun filterByValue!8 (List!393 B!490) List!393)

(assert (=> b!13414 (= lt!3513 (filterByValue!8 (t!2789 l!522) value!159))))

(declare-fun res!10574 () Bool)

(assert (=> start!1992 (=> (not res!10574) (not e!8040))))

(assert (=> start!1992 (= res!10574 (isStrictlySorted!84 l!522))))

(assert (=> start!1992 e!8040))

(declare-fun e!8039 () Bool)

(assert (=> start!1992 e!8039))

(declare-fun tp_is_empty!669 () Bool)

(assert (=> start!1992 tp_is_empty!669))

(declare-fun res!10571 () Bool)

(assert (=> b!13415 (=> (not res!10571) (not e!8041))))

(declare-fun lambda!74 () Int)

(declare-fun forall!75 (List!393 Int) Bool)

(assert (=> b!13415 (= res!10571 (forall!75 lt!3513 lambda!74))))

(declare-fun b!13416 () Bool)

(declare-fun res!10575 () Bool)

(assert (=> b!13416 (=> (not res!10575) (not e!8041))))

(declare-fun isEmpty!82 (List!393) Bool)

(assert (=> b!13416 (= res!10575 (not (isEmpty!82 lt!3513)))))

(declare-fun b!13417 () Bool)

(declare-fun res!10576 () Bool)

(assert (=> b!13417 (=> (not res!10576) (not e!8040))))

(get-info :version)

(assert (=> b!13417 (= res!10576 (and (not (= (_2!234 (h!955 l!522)) value!159)) ((_ is Cons!389) l!522)))))

(declare-fun b!13418 () Bool)

(assert (=> b!13418 (= e!8041 (= lt!3513 Nil!390))))

(declare-fun b!13419 () Bool)

(declare-fun res!10573 () Bool)

(assert (=> b!13419 (=> (not res!10573) (not e!8041))))

(assert (=> b!13419 (= res!10573 (not (isEmpty!82 l!522)))))

(declare-fun b!13420 () Bool)

(declare-fun tp!2189 () Bool)

(assert (=> b!13420 (= e!8039 (and tp_is_empty!669 tp!2189))))

(assert (= (and start!1992 res!10574) b!13417))

(assert (= (and b!13417 res!10576) b!13414))

(assert (= (and b!13414 res!10572) b!13415))

(assert (= (and b!13415 res!10571) b!13419))

(assert (= (and b!13419 res!10573) b!13416))

(assert (= (and b!13416 res!10575) b!13418))

(assert (= (and start!1992 ((_ is Cons!389) l!522)) b!13420))

(declare-fun m!9103 () Bool)

(assert (=> b!13419 m!9103))

(declare-fun m!9105 () Bool)

(assert (=> start!1992 m!9105))

(declare-fun m!9107 () Bool)

(assert (=> b!13415 m!9107))

(declare-fun m!9109 () Bool)

(assert (=> b!13416 m!9109))

(declare-fun m!9111 () Bool)

(assert (=> b!13414 m!9111))

(declare-fun m!9113 () Bool)

(assert (=> b!13414 m!9113))

(check-sat (not b!13419) (not b!13415) (not start!1992) (not b!13414) tp_is_empty!669 (not b!13420) (not b!13416))
(check-sat)
(get-model)

(declare-fun d!2011 () Bool)

(declare-fun res!10603 () Bool)

(declare-fun e!8059 () Bool)

(assert (=> d!2011 (=> res!10603 e!8059)))

(assert (=> d!2011 (= res!10603 (or ((_ is Nil!390) lt!3513) ((_ is Nil!390) (t!2789 lt!3513))))))

(assert (=> d!2011 (= (isStrictlySorted!84 lt!3513) e!8059)))

(declare-fun b!13454 () Bool)

(declare-fun e!8060 () Bool)

(assert (=> b!13454 (= e!8059 e!8060)))

(declare-fun res!10604 () Bool)

(assert (=> b!13454 (=> (not res!10604) (not e!8060))))

(assert (=> b!13454 (= res!10604 (bvslt (_1!234 (h!955 lt!3513)) (_1!234 (h!955 (t!2789 lt!3513)))))))

(declare-fun b!13455 () Bool)

(assert (=> b!13455 (= e!8060 (isStrictlySorted!84 (t!2789 lt!3513)))))

(assert (= (and d!2011 (not res!10603)) b!13454))

(assert (= (and b!13454 res!10604) b!13455))

(declare-fun m!9127 () Bool)

(assert (=> b!13455 m!9127))

(assert (=> b!13414 d!2011))

(declare-fun bs!524 () Bool)

(declare-fun b!13517 () Bool)

(assert (= bs!524 (and b!13517 b!13415)))

(declare-fun lambda!82 () Int)

(assert (=> bs!524 (= lambda!82 lambda!74)))

(assert (=> b!13517 true))

(declare-fun bm!369 () Bool)

(declare-fun call!373 () List!393)

(assert (=> bm!369 (= call!373 (filterByValue!8 (t!2789 (t!2789 l!522)) value!159))))

(declare-fun b!13514 () Bool)

(declare-fun e!8106 () Bool)

(declare-fun call!372 () Bool)

(assert (=> b!13514 (= e!8106 call!372)))

(declare-fun b!13515 () Bool)

(declare-fun e!8103 () List!393)

(declare-fun $colon$colon!15 (List!393 tuple2!468) List!393)

(assert (=> b!13515 (= e!8103 ($colon$colon!15 call!373 (h!955 (t!2789 l!522))))))

(declare-fun b!13516 () Bool)

(declare-fun e!8107 () List!393)

(assert (=> b!13516 (= e!8107 call!373)))

(declare-fun d!2017 () Bool)

(declare-fun e!8105 () Bool)

(assert (=> d!2017 e!8105))

(declare-fun res!10639 () Bool)

(assert (=> d!2017 (=> (not res!10639) (not e!8105))))

(declare-fun lt!3521 () List!393)

(assert (=> d!2017 (= res!10639 (isStrictlySorted!84 lt!3521))))

(assert (=> d!2017 (= lt!3521 e!8103)))

(declare-fun c!1254 () Bool)

(assert (=> d!2017 (= c!1254 (and ((_ is Cons!389) (t!2789 l!522)) (= (_2!234 (h!955 (t!2789 l!522))) value!159)))))

(assert (=> d!2017 (isStrictlySorted!84 (t!2789 l!522))))

(assert (=> d!2017 (= (filterByValue!8 (t!2789 l!522) value!159) lt!3521)))

(declare-fun res!10641 () Bool)

(assert (=> b!13517 (=> (not res!10641) (not e!8105))))

(assert (=> b!13517 (= res!10641 (forall!75 lt!3521 lambda!82))))

(declare-fun b!13518 () Bool)

(declare-fun e!8102 () Bool)

(assert (=> b!13518 (= e!8106 e!8102)))

(declare-fun res!10640 () Bool)

(assert (=> b!13518 (= res!10640 call!372)))

(assert (=> b!13518 (=> res!10640 e!8102)))

(declare-fun b!13519 () Bool)

(assert (=> b!13519 (= e!8103 e!8107)))

(declare-fun c!1256 () Bool)

(assert (=> b!13519 (= c!1256 (and ((_ is Cons!389) (t!2789 l!522)) (not (= (_2!234 (h!955 (t!2789 l!522))) value!159))))))

(declare-fun bm!370 () Bool)

(assert (=> bm!370 (= call!372 (isEmpty!82 lt!3521))))

(declare-fun b!13520 () Bool)

(assert (=> b!13520 (= e!8107 Nil!390)))

(declare-fun b!13521 () Bool)

(assert (=> b!13521 (= e!8105 e!8106)))

(declare-fun c!1255 () Bool)

(assert (=> b!13521 (= c!1255 (isEmpty!82 (t!2789 l!522)))))

(declare-fun b!13522 () Bool)

(declare-fun head!785 (List!393) tuple2!468)

(assert (=> b!13522 (= e!8102 (bvsge (_1!234 (head!785 lt!3521)) (_1!234 (head!785 (t!2789 l!522)))))))

(assert (= (and d!2017 c!1254) b!13515))

(assert (= (and d!2017 (not c!1254)) b!13519))

(assert (= (and b!13519 c!1256) b!13516))

(assert (= (and b!13519 (not c!1256)) b!13520))

(assert (= (or b!13515 b!13516) bm!369))

(assert (= (and d!2017 res!10639) b!13517))

(assert (= (and b!13517 res!10641) b!13521))

(assert (= (and b!13521 c!1255) b!13514))

(assert (= (and b!13521 (not c!1255)) b!13518))

(assert (= (and b!13518 (not res!10640)) b!13522))

(assert (= (or b!13514 b!13518) bm!370))

(declare-fun m!9145 () Bool)

(assert (=> b!13517 m!9145))

(declare-fun m!9147 () Bool)

(assert (=> b!13521 m!9147))

(declare-fun m!9149 () Bool)

(assert (=> b!13515 m!9149))

(declare-fun m!9151 () Bool)

(assert (=> b!13522 m!9151))

(declare-fun m!9153 () Bool)

(assert (=> b!13522 m!9153))

(declare-fun m!9155 () Bool)

(assert (=> bm!369 m!9155))

(declare-fun m!9157 () Bool)

(assert (=> bm!370 m!9157))

(declare-fun m!9159 () Bool)

(assert (=> d!2017 m!9159))

(declare-fun m!9161 () Bool)

(assert (=> d!2017 m!9161))

(assert (=> b!13414 d!2017))

(declare-fun d!2035 () Bool)

(declare-fun res!10648 () Bool)

(declare-fun e!8116 () Bool)

(assert (=> d!2035 (=> res!10648 e!8116)))

(assert (=> d!2035 (= res!10648 (or ((_ is Nil!390) l!522) ((_ is Nil!390) (t!2789 l!522))))))

(assert (=> d!2035 (= (isStrictlySorted!84 l!522) e!8116)))

(declare-fun b!13535 () Bool)

(declare-fun e!8117 () Bool)

(assert (=> b!13535 (= e!8116 e!8117)))

(declare-fun res!10649 () Bool)

(assert (=> b!13535 (=> (not res!10649) (not e!8117))))

(assert (=> b!13535 (= res!10649 (bvslt (_1!234 (h!955 l!522)) (_1!234 (h!955 (t!2789 l!522)))))))

(declare-fun b!13536 () Bool)

(assert (=> b!13536 (= e!8117 (isStrictlySorted!84 (t!2789 l!522)))))

(assert (= (and d!2035 (not res!10648)) b!13535))

(assert (= (and b!13535 res!10649) b!13536))

(assert (=> b!13536 m!9161))

(assert (=> start!1992 d!2035))

(declare-fun d!2037 () Bool)

(assert (=> d!2037 (= (isEmpty!82 l!522) ((_ is Nil!390) l!522))))

(assert (=> b!13419 d!2037))

(declare-fun d!2039 () Bool)

(declare-fun res!10659 () Bool)

(declare-fun e!8131 () Bool)

(assert (=> d!2039 (=> res!10659 e!8131)))

(assert (=> d!2039 (= res!10659 ((_ is Nil!390) lt!3513))))

(assert (=> d!2039 (= (forall!75 lt!3513 lambda!74) e!8131)))

(declare-fun b!13558 () Bool)

(declare-fun e!8132 () Bool)

(assert (=> b!13558 (= e!8131 e!8132)))

(declare-fun res!10660 () Bool)

(assert (=> b!13558 (=> (not res!10660) (not e!8132))))

(declare-fun dynLambda!87 (Int tuple2!468) Bool)

(assert (=> b!13558 (= res!10660 (dynLambda!87 lambda!74 (h!955 lt!3513)))))

(declare-fun b!13559 () Bool)

(assert (=> b!13559 (= e!8132 (forall!75 (t!2789 lt!3513) lambda!74))))

(assert (= (and d!2039 (not res!10659)) b!13558))

(assert (= (and b!13558 res!10660) b!13559))

(declare-fun b_lambda!879 () Bool)

(assert (=> (not b_lambda!879) (not b!13558)))

(declare-fun m!9179 () Bool)

(assert (=> b!13558 m!9179))

(declare-fun m!9181 () Bool)

(assert (=> b!13559 m!9181))

(assert (=> b!13415 d!2039))

(declare-fun d!2041 () Bool)

(assert (=> d!2041 (= (isEmpty!82 lt!3513) ((_ is Nil!390) lt!3513))))

(assert (=> b!13416 d!2041))

(declare-fun b!13569 () Bool)

(declare-fun e!8138 () Bool)

(declare-fun tp!2198 () Bool)

(assert (=> b!13569 (= e!8138 (and tp_is_empty!669 tp!2198))))

(assert (=> b!13420 (= tp!2189 e!8138)))

(assert (= (and b!13420 ((_ is Cons!389) (t!2789 l!522))) b!13569))

(declare-fun b_lambda!883 () Bool)

(assert (= b_lambda!879 (or b!13415 b_lambda!883)))

(declare-fun bs!527 () Bool)

(declare-fun d!2045 () Bool)

(assert (= bs!527 (and d!2045 b!13415)))

(assert (=> bs!527 (= (dynLambda!87 lambda!74 (h!955 lt!3513)) (= (_2!234 (h!955 lt!3513)) value!159))))

(assert (=> b!13558 d!2045))

(check-sat (not b!13455) (not d!2017) (not b!13536) (not b!13569) (not b!13521) (not b_lambda!883) (not b!13522) (not bm!370) (not b!13515) (not bm!369) (not b!13559) tp_is_empty!669 (not b!13517))
(check-sat)
