; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!667282 () Bool)

(assert start!667282)

(declare-fun b!6953012 () Bool)

(assert (=> b!6953012 true))

(assert (=> b!6953012 true))

(declare-fun bs!1857831 () Bool)

(declare-fun b!6953021 () Bool)

(assert (= bs!1857831 (and b!6953021 b!6953012)))

(declare-fun lambda!396612 () Int)

(declare-fun lambda!396611 () Int)

(assert (=> bs!1857831 (not (= lambda!396612 lambda!396611))))

(assert (=> b!6953021 true))

(assert (=> b!6953021 true))

(declare-fun b!6953008 () Bool)

(declare-fun e!4181379 () Bool)

(declare-fun tp!1916750 () Bool)

(assert (=> b!6953008 (= e!4181379 tp!1916750)))

(declare-fun res!2836934 () Bool)

(declare-fun e!4181377 () Bool)

(assert (=> start!667282 (=> (not res!2836934) (not e!4181377))))

(declare-datatypes ((C!34348 0))(
  ( (C!34349 (val!26876 Int)) )
))
(declare-datatypes ((Regex!17039 0))(
  ( (ElementMatch!17039 (c!1289527 C!34348)) (Concat!25884 (regOne!34590 Regex!17039) (regTwo!34590 Regex!17039)) (EmptyExpr!17039) (Star!17039 (reg!17368 Regex!17039)) (EmptyLang!17039) (Union!17039 (regOne!34591 Regex!17039) (regTwo!34591 Regex!17039)) )
))
(declare-fun rInner!765 () Regex!17039)

(declare-fun validRegex!8745 (Regex!17039) Bool)

(assert (=> start!667282 (= res!2836934 (validRegex!8745 rInner!765))))

(assert (=> start!667282 e!4181377))

(assert (=> start!667282 e!4181379))

(declare-fun e!4181380 () Bool)

(assert (=> start!667282 e!4181380))

(declare-fun e!4181376 () Bool)

(declare-fun e!4181378 () Bool)

(assert (=> start!667282 (and e!4181376 e!4181378)))

(declare-fun b!6953009 () Bool)

(declare-fun res!2836932 () Bool)

(assert (=> b!6953009 (=> (not res!2836932) (not e!4181377))))

(declare-fun Exists!4035 (Int) Bool)

(assert (=> b!6953009 (= res!2836932 (not (Exists!4035 lambda!396611)))))

(declare-fun b!6953010 () Bool)

(declare-fun tp!1916752 () Bool)

(declare-fun tp!1916747 () Bool)

(assert (=> b!6953010 (= e!4181379 (and tp!1916752 tp!1916747))))

(declare-fun b!6953011 () Bool)

(declare-fun tp_is_empty!43303 () Bool)

(assert (=> b!6953011 (= e!4181379 tp_is_empty!43303)))

(declare-fun res!2836935 () Bool)

(assert (=> b!6953012 (=> (not res!2836935) (not e!4181377))))

(assert (=> b!6953012 (= res!2836935 (not (Exists!4035 lambda!396611)))))

(declare-fun b!6953013 () Bool)

(assert (=> b!6953013 (= e!4181377 (not (validRegex!8745 (Star!17039 rInner!765))))))

(declare-fun b!6953014 () Bool)

(declare-fun res!2836933 () Bool)

(assert (=> b!6953014 (=> (not res!2836933) (not e!4181377))))

(declare-fun nullable!6852 (Regex!17039) Bool)

(assert (=> b!6953014 (= res!2836933 (not (nullable!6852 rInner!765)))))

(declare-fun b!6953015 () Bool)

(declare-fun tp!1916746 () Bool)

(assert (=> b!6953015 (= e!4181378 (and tp_is_empty!43303 tp!1916746))))

(declare-fun b!6953016 () Bool)

(declare-fun tp!1916748 () Bool)

(assert (=> b!6953016 (= e!4181376 (and tp_is_empty!43303 tp!1916748))))

(declare-fun b!6953017 () Bool)

(declare-fun tp!1916753 () Bool)

(assert (=> b!6953017 (= e!4181380 (and tp_is_empty!43303 tp!1916753))))

(declare-fun b!6953018 () Bool)

(declare-fun res!2836938 () Bool)

(assert (=> b!6953018 (=> (not res!2836938) (not e!4181377))))

(declare-datatypes ((List!66792 0))(
  ( (Nil!66668) (Cons!66668 (h!73116 C!34348) (t!380535 List!66792)) )
))
(declare-datatypes ((tuple2!67784 0))(
  ( (tuple2!67785 (_1!37195 List!66792) (_2!37195 List!66792)) )
))
(declare-fun cut!41 () tuple2!67784)

(declare-fun s!10388 () List!66792)

(declare-fun ++!15070 (List!66792 List!66792) List!66792)

(assert (=> b!6953018 (= res!2836938 (= (++!15070 (_1!37195 cut!41) (_2!37195 cut!41)) s!10388))))

(declare-fun b!6953019 () Bool)

(declare-fun res!2836936 () Bool)

(assert (=> b!6953019 (=> (not res!2836936) (not e!4181377))))

(declare-fun matchR!9154 (Regex!17039 List!66792) Bool)

(assert (=> b!6953019 (= res!2836936 (matchR!9154 rInner!765 (_1!37195 cut!41)))))

(declare-fun b!6953020 () Bool)

(declare-fun tp!1916751 () Bool)

(declare-fun tp!1916749 () Bool)

(assert (=> b!6953020 (= e!4181379 (and tp!1916751 tp!1916749))))

(declare-fun res!2836937 () Bool)

(assert (=> b!6953021 (=> (not res!2836937) (not e!4181377))))

(assert (=> b!6953021 (= res!2836937 (not (Exists!4035 lambda!396612)))))

(assert (= (and start!667282 res!2836934) b!6953014))

(assert (= (and b!6953014 res!2836933) b!6953012))

(assert (= (and b!6953012 res!2836935) b!6953009))

(assert (= (and b!6953009 res!2836932) b!6953021))

(assert (= (and b!6953021 res!2836937) b!6953018))

(assert (= (and b!6953018 res!2836938) b!6953019))

(assert (= (and b!6953019 res!2836936) b!6953013))

(get-info :version)

(assert (= (and start!667282 ((_ is ElementMatch!17039) rInner!765)) b!6953011))

(assert (= (and start!667282 ((_ is Concat!25884) rInner!765)) b!6953010))

(assert (= (and start!667282 ((_ is Star!17039) rInner!765)) b!6953008))

(assert (= (and start!667282 ((_ is Union!17039) rInner!765)) b!6953020))

(assert (= (and start!667282 ((_ is Cons!66668) s!10388)) b!6953017))

(assert (= (and start!667282 ((_ is Cons!66668) (_1!37195 cut!41))) b!6953016))

(assert (= (and start!667282 ((_ is Cons!66668) (_2!37195 cut!41))) b!6953015))

(declare-fun m!7653106 () Bool)

(assert (=> b!6953012 m!7653106))

(declare-fun m!7653108 () Bool)

(assert (=> b!6953019 m!7653108))

(declare-fun m!7653110 () Bool)

(assert (=> b!6953014 m!7653110))

(declare-fun m!7653112 () Bool)

(assert (=> start!667282 m!7653112))

(declare-fun m!7653114 () Bool)

(assert (=> b!6953021 m!7653114))

(declare-fun m!7653116 () Bool)

(assert (=> b!6953013 m!7653116))

(assert (=> b!6953009 m!7653106))

(declare-fun m!7653118 () Bool)

(assert (=> b!6953018 m!7653118))

(check-sat tp_is_empty!43303 (not b!6953015) (not b!6953019) (not b!6953014) (not b!6953020) (not b!6953017) (not start!667282) (not b!6953010) (not b!6953021) (not b!6953016) (not b!6953008) (not b!6953009) (not b!6953013) (not b!6953012) (not b!6953018))
(check-sat)
(get-model)

(declare-fun d!2169251 () Bool)

(declare-fun choose!51811 (Int) Bool)

(assert (=> d!2169251 (= (Exists!4035 lambda!396612) (choose!51811 lambda!396612))))

(declare-fun bs!1857832 () Bool)

(assert (= bs!1857832 d!2169251))

(declare-fun m!7653120 () Bool)

(assert (=> bs!1857832 m!7653120))

(assert (=> b!6953021 d!2169251))

(declare-fun d!2169253 () Bool)

(assert (=> d!2169253 (= (Exists!4035 lambda!396611) (choose!51811 lambda!396611))))

(declare-fun bs!1857833 () Bool)

(assert (= bs!1857833 d!2169253))

(declare-fun m!7653122 () Bool)

(assert (=> bs!1857833 m!7653122))

(assert (=> b!6953009 d!2169253))

(declare-fun d!2169257 () Bool)

(declare-fun nullableFct!2564 (Regex!17039) Bool)

(assert (=> d!2169257 (= (nullable!6852 rInner!765) (nullableFct!2564 rInner!765))))

(declare-fun bs!1857835 () Bool)

(assert (= bs!1857835 d!2169257))

(declare-fun m!7653126 () Bool)

(assert (=> bs!1857835 m!7653126))

(assert (=> b!6953014 d!2169257))

(declare-fun b!6953093 () Bool)

(declare-fun res!2836983 () Bool)

(declare-fun e!4181424 () Bool)

(assert (=> b!6953093 (=> (not res!2836983) (not e!4181424))))

(declare-fun isEmpty!38907 (List!66792) Bool)

(declare-fun tail!12990 (List!66792) List!66792)

(assert (=> b!6953093 (= res!2836983 (isEmpty!38907 (tail!12990 (_1!37195 cut!41))))))

(declare-fun b!6953094 () Bool)

(declare-fun res!2836976 () Bool)

(assert (=> b!6953094 (=> (not res!2836976) (not e!4181424))))

(declare-fun call!631441 () Bool)

(assert (=> b!6953094 (= res!2836976 (not call!631441))))

(declare-fun b!6953095 () Bool)

(declare-fun e!4181427 () Bool)

(assert (=> b!6953095 (= e!4181427 (nullable!6852 rInner!765))))

(declare-fun b!6953096 () Bool)

(declare-fun head!13938 (List!66792) C!34348)

(assert (=> b!6953096 (= e!4181424 (= (head!13938 (_1!37195 cut!41)) (c!1289527 rInner!765)))))

(declare-fun b!6953097 () Bool)

(declare-fun res!2836980 () Bool)

(declare-fun e!4181422 () Bool)

(assert (=> b!6953097 (=> res!2836980 e!4181422)))

(assert (=> b!6953097 (= res!2836980 e!4181424)))

(declare-fun res!2836977 () Bool)

(assert (=> b!6953097 (=> (not res!2836977) (not e!4181424))))

(declare-fun lt!2478179 () Bool)

(assert (=> b!6953097 (= res!2836977 lt!2478179)))

(declare-fun b!6953098 () Bool)

(declare-fun e!4181425 () Bool)

(declare-fun e!4181428 () Bool)

(assert (=> b!6953098 (= e!4181425 e!4181428)))

(declare-fun res!2836979 () Bool)

(assert (=> b!6953098 (=> res!2836979 e!4181428)))

(assert (=> b!6953098 (= res!2836979 call!631441)))

(declare-fun b!6953099 () Bool)

(declare-fun e!4181426 () Bool)

(assert (=> b!6953099 (= e!4181426 (not lt!2478179))))

(declare-fun b!6953100 () Bool)

(assert (=> b!6953100 (= e!4181422 e!4181425)))

(declare-fun res!2836978 () Bool)

(assert (=> b!6953100 (=> (not res!2836978) (not e!4181425))))

(assert (=> b!6953100 (= res!2836978 (not lt!2478179))))

(declare-fun b!6953101 () Bool)

(declare-fun e!4181423 () Bool)

(assert (=> b!6953101 (= e!4181423 (= lt!2478179 call!631441))))

(declare-fun b!6953102 () Bool)

(assert (=> b!6953102 (= e!4181428 (not (= (head!13938 (_1!37195 cut!41)) (c!1289527 rInner!765))))))

(declare-fun b!6953103 () Bool)

(declare-fun derivativeStep!5485 (Regex!17039 C!34348) Regex!17039)

(assert (=> b!6953103 (= e!4181427 (matchR!9154 (derivativeStep!5485 rInner!765 (head!13938 (_1!37195 cut!41))) (tail!12990 (_1!37195 cut!41))))))

(declare-fun b!6953105 () Bool)

(declare-fun res!2836982 () Bool)

(assert (=> b!6953105 (=> res!2836982 e!4181428)))

(assert (=> b!6953105 (= res!2836982 (not (isEmpty!38907 (tail!12990 (_1!37195 cut!41)))))))

(declare-fun bm!631436 () Bool)

(assert (=> bm!631436 (= call!631441 (isEmpty!38907 (_1!37195 cut!41)))))

(declare-fun b!6953106 () Bool)

(assert (=> b!6953106 (= e!4181423 e!4181426)))

(declare-fun c!1289544 () Bool)

(assert (=> b!6953106 (= c!1289544 ((_ is EmptyLang!17039) rInner!765))))

(declare-fun d!2169261 () Bool)

(assert (=> d!2169261 e!4181423))

(declare-fun c!1289545 () Bool)

(assert (=> d!2169261 (= c!1289545 ((_ is EmptyExpr!17039) rInner!765))))

(assert (=> d!2169261 (= lt!2478179 e!4181427)))

(declare-fun c!1289543 () Bool)

(assert (=> d!2169261 (= c!1289543 (isEmpty!38907 (_1!37195 cut!41)))))

(assert (=> d!2169261 (validRegex!8745 rInner!765)))

(assert (=> d!2169261 (= (matchR!9154 rInner!765 (_1!37195 cut!41)) lt!2478179)))

(declare-fun b!6953104 () Bool)

(declare-fun res!2836981 () Bool)

(assert (=> b!6953104 (=> res!2836981 e!4181422)))

(assert (=> b!6953104 (= res!2836981 (not ((_ is ElementMatch!17039) rInner!765)))))

(assert (=> b!6953104 (= e!4181426 e!4181422)))

(assert (= (and d!2169261 c!1289543) b!6953095))

(assert (= (and d!2169261 (not c!1289543)) b!6953103))

(assert (= (and d!2169261 c!1289545) b!6953101))

(assert (= (and d!2169261 (not c!1289545)) b!6953106))

(assert (= (and b!6953106 c!1289544) b!6953099))

(assert (= (and b!6953106 (not c!1289544)) b!6953104))

(assert (= (and b!6953104 (not res!2836981)) b!6953097))

(assert (= (and b!6953097 res!2836977) b!6953094))

(assert (= (and b!6953094 res!2836976) b!6953093))

(assert (= (and b!6953093 res!2836983) b!6953096))

(assert (= (and b!6953097 (not res!2836980)) b!6953100))

(assert (= (and b!6953100 res!2836978) b!6953098))

(assert (= (and b!6953098 (not res!2836979)) b!6953105))

(assert (= (and b!6953105 (not res!2836982)) b!6953102))

(assert (= (or b!6953101 b!6953094 b!6953098) bm!631436))

(declare-fun m!7653152 () Bool)

(assert (=> d!2169261 m!7653152))

(assert (=> d!2169261 m!7653112))

(declare-fun m!7653154 () Bool)

(assert (=> b!6953103 m!7653154))

(assert (=> b!6953103 m!7653154))

(declare-fun m!7653156 () Bool)

(assert (=> b!6953103 m!7653156))

(declare-fun m!7653158 () Bool)

(assert (=> b!6953103 m!7653158))

(assert (=> b!6953103 m!7653156))

(assert (=> b!6953103 m!7653158))

(declare-fun m!7653160 () Bool)

(assert (=> b!6953103 m!7653160))

(assert (=> b!6953096 m!7653154))

(assert (=> b!6953105 m!7653158))

(assert (=> b!6953105 m!7653158))

(declare-fun m!7653162 () Bool)

(assert (=> b!6953105 m!7653162))

(assert (=> bm!631436 m!7653152))

(assert (=> b!6953093 m!7653158))

(assert (=> b!6953093 m!7653158))

(assert (=> b!6953093 m!7653162))

(assert (=> b!6953095 m!7653110))

(assert (=> b!6953102 m!7653154))

(assert (=> b!6953019 d!2169261))

(declare-fun call!631450 () Bool)

(declare-fun c!1289557 () Bool)

(declare-fun c!1289556 () Bool)

(declare-fun bm!631445 () Bool)

(assert (=> bm!631445 (= call!631450 (validRegex!8745 (ite c!1289557 (reg!17368 (Star!17039 rInner!765)) (ite c!1289556 (regTwo!34591 (Star!17039 rInner!765)) (regOne!34590 (Star!17039 rInner!765))))))))

(declare-fun bm!631446 () Bool)

(declare-fun call!631452 () Bool)

(assert (=> bm!631446 (= call!631452 (validRegex!8745 (ite c!1289556 (regOne!34591 (Star!17039 rInner!765)) (regTwo!34590 (Star!17039 rInner!765)))))))

(declare-fun bm!631447 () Bool)

(declare-fun call!631451 () Bool)

(assert (=> bm!631447 (= call!631451 call!631450)))

(declare-fun d!2169271 () Bool)

(declare-fun res!2837012 () Bool)

(declare-fun e!4181460 () Bool)

(assert (=> d!2169271 (=> res!2837012 e!4181460)))

(assert (=> d!2169271 (= res!2837012 ((_ is ElementMatch!17039) (Star!17039 rInner!765)))))

(assert (=> d!2169271 (= (validRegex!8745 (Star!17039 rInner!765)) e!4181460)))

(declare-fun b!6953153 () Bool)

(declare-fun e!4181463 () Bool)

(declare-fun e!4181462 () Bool)

(assert (=> b!6953153 (= e!4181463 e!4181462)))

(declare-fun res!2837013 () Bool)

(assert (=> b!6953153 (=> (not res!2837013) (not e!4181462))))

(assert (=> b!6953153 (= res!2837013 call!631451)))

(declare-fun b!6953154 () Bool)

(declare-fun e!4181461 () Bool)

(assert (=> b!6953154 (= e!4181461 call!631451)))

(declare-fun b!6953155 () Bool)

(declare-fun e!4181459 () Bool)

(assert (=> b!6953155 (= e!4181460 e!4181459)))

(assert (=> b!6953155 (= c!1289557 ((_ is Star!17039) (Star!17039 rInner!765)))))

(declare-fun b!6953156 () Bool)

(declare-fun e!4181457 () Bool)

(assert (=> b!6953156 (= e!4181459 e!4181457)))

(declare-fun res!2837011 () Bool)

(assert (=> b!6953156 (= res!2837011 (not (nullable!6852 (reg!17368 (Star!17039 rInner!765)))))))

(assert (=> b!6953156 (=> (not res!2837011) (not e!4181457))))

(declare-fun b!6953157 () Bool)

(declare-fun res!2837014 () Bool)

(assert (=> b!6953157 (=> (not res!2837014) (not e!4181461))))

(assert (=> b!6953157 (= res!2837014 call!631452)))

(declare-fun e!4181458 () Bool)

(assert (=> b!6953157 (= e!4181458 e!4181461)))

(declare-fun b!6953158 () Bool)

(assert (=> b!6953158 (= e!4181462 call!631452)))

(declare-fun b!6953159 () Bool)

(assert (=> b!6953159 (= e!4181457 call!631450)))

(declare-fun b!6953160 () Bool)

(declare-fun res!2837010 () Bool)

(assert (=> b!6953160 (=> res!2837010 e!4181463)))

(assert (=> b!6953160 (= res!2837010 (not ((_ is Concat!25884) (Star!17039 rInner!765))))))

(assert (=> b!6953160 (= e!4181458 e!4181463)))

(declare-fun b!6953161 () Bool)

(assert (=> b!6953161 (= e!4181459 e!4181458)))

(assert (=> b!6953161 (= c!1289556 ((_ is Union!17039) (Star!17039 rInner!765)))))

(assert (= (and d!2169271 (not res!2837012)) b!6953155))

(assert (= (and b!6953155 c!1289557) b!6953156))

(assert (= (and b!6953155 (not c!1289557)) b!6953161))

(assert (= (and b!6953156 res!2837011) b!6953159))

(assert (= (and b!6953161 c!1289556) b!6953157))

(assert (= (and b!6953161 (not c!1289556)) b!6953160))

(assert (= (and b!6953157 res!2837014) b!6953154))

(assert (= (and b!6953160 (not res!2837010)) b!6953153))

(assert (= (and b!6953153 res!2837013) b!6953158))

(assert (= (or b!6953157 b!6953158) bm!631446))

(assert (= (or b!6953154 b!6953153) bm!631447))

(assert (= (or b!6953159 bm!631447) bm!631445))

(declare-fun m!7653164 () Bool)

(assert (=> bm!631445 m!7653164))

(declare-fun m!7653166 () Bool)

(assert (=> bm!631446 m!7653166))

(declare-fun m!7653168 () Bool)

(assert (=> b!6953156 m!7653168))

(assert (=> b!6953013 d!2169271))

(declare-fun bm!631449 () Bool)

(declare-fun c!1289562 () Bool)

(declare-fun call!631454 () Bool)

(declare-fun c!1289561 () Bool)

(assert (=> bm!631449 (= call!631454 (validRegex!8745 (ite c!1289562 (reg!17368 rInner!765) (ite c!1289561 (regTwo!34591 rInner!765) (regOne!34590 rInner!765)))))))

(declare-fun bm!631450 () Bool)

(declare-fun call!631456 () Bool)

(assert (=> bm!631450 (= call!631456 (validRegex!8745 (ite c!1289561 (regOne!34591 rInner!765) (regTwo!34590 rInner!765))))))

(declare-fun bm!631451 () Bool)

(declare-fun call!631455 () Bool)

(assert (=> bm!631451 (= call!631455 call!631454)))

(declare-fun d!2169273 () Bool)

(declare-fun res!2837025 () Bool)

(declare-fun e!4181474 () Bool)

(assert (=> d!2169273 (=> res!2837025 e!4181474)))

(assert (=> d!2169273 (= res!2837025 ((_ is ElementMatch!17039) rInner!765))))

(assert (=> d!2169273 (= (validRegex!8745 rInner!765) e!4181474)))

(declare-fun b!6953176 () Bool)

(declare-fun e!4181477 () Bool)

(declare-fun e!4181476 () Bool)

(assert (=> b!6953176 (= e!4181477 e!4181476)))

(declare-fun res!2837026 () Bool)

(assert (=> b!6953176 (=> (not res!2837026) (not e!4181476))))

(assert (=> b!6953176 (= res!2837026 call!631455)))

(declare-fun b!6953177 () Bool)

(declare-fun e!4181475 () Bool)

(assert (=> b!6953177 (= e!4181475 call!631455)))

(declare-fun b!6953178 () Bool)

(declare-fun e!4181473 () Bool)

(assert (=> b!6953178 (= e!4181474 e!4181473)))

(assert (=> b!6953178 (= c!1289562 ((_ is Star!17039) rInner!765))))

(declare-fun b!6953179 () Bool)

(declare-fun e!4181471 () Bool)

(assert (=> b!6953179 (= e!4181473 e!4181471)))

(declare-fun res!2837024 () Bool)

(assert (=> b!6953179 (= res!2837024 (not (nullable!6852 (reg!17368 rInner!765))))))

(assert (=> b!6953179 (=> (not res!2837024) (not e!4181471))))

(declare-fun b!6953180 () Bool)

(declare-fun res!2837027 () Bool)

(assert (=> b!6953180 (=> (not res!2837027) (not e!4181475))))

(assert (=> b!6953180 (= res!2837027 call!631456)))

(declare-fun e!4181472 () Bool)

(assert (=> b!6953180 (= e!4181472 e!4181475)))

(declare-fun b!6953181 () Bool)

(assert (=> b!6953181 (= e!4181476 call!631456)))

(declare-fun b!6953182 () Bool)

(assert (=> b!6953182 (= e!4181471 call!631454)))

(declare-fun b!6953183 () Bool)

(declare-fun res!2837023 () Bool)

(assert (=> b!6953183 (=> res!2837023 e!4181477)))

(assert (=> b!6953183 (= res!2837023 (not ((_ is Concat!25884) rInner!765)))))

(assert (=> b!6953183 (= e!4181472 e!4181477)))

(declare-fun b!6953184 () Bool)

(assert (=> b!6953184 (= e!4181473 e!4181472)))

(assert (=> b!6953184 (= c!1289561 ((_ is Union!17039) rInner!765))))

(assert (= (and d!2169273 (not res!2837025)) b!6953178))

(assert (= (and b!6953178 c!1289562) b!6953179))

(assert (= (and b!6953178 (not c!1289562)) b!6953184))

(assert (= (and b!6953179 res!2837024) b!6953182))

(assert (= (and b!6953184 c!1289561) b!6953180))

(assert (= (and b!6953184 (not c!1289561)) b!6953183))

(assert (= (and b!6953180 res!2837027) b!6953177))

(assert (= (and b!6953183 (not res!2837023)) b!6953176))

(assert (= (and b!6953176 res!2837026) b!6953181))

(assert (= (or b!6953180 b!6953181) bm!631450))

(assert (= (or b!6953177 b!6953176) bm!631451))

(assert (= (or b!6953182 bm!631451) bm!631449))

(declare-fun m!7653182 () Bool)

(assert (=> bm!631449 m!7653182))

(declare-fun m!7653184 () Bool)

(assert (=> bm!631450 m!7653184))

(declare-fun m!7653186 () Bool)

(assert (=> b!6953179 m!7653186))

(assert (=> start!667282 d!2169273))

(declare-fun b!6953241 () Bool)

(declare-fun res!2837038 () Bool)

(declare-fun e!4181502 () Bool)

(assert (=> b!6953241 (=> (not res!2837038) (not e!4181502))))

(declare-fun lt!2478185 () List!66792)

(declare-fun size!40833 (List!66792) Int)

(assert (=> b!6953241 (= res!2837038 (= (size!40833 lt!2478185) (+ (size!40833 (_1!37195 cut!41)) (size!40833 (_2!37195 cut!41)))))))

(declare-fun d!2169277 () Bool)

(assert (=> d!2169277 e!4181502))

(declare-fun res!2837037 () Bool)

(assert (=> d!2169277 (=> (not res!2837037) (not e!4181502))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!13136 (List!66792) (InoxSet C!34348))

(assert (=> d!2169277 (= res!2837037 (= (content!13136 lt!2478185) ((_ map or) (content!13136 (_1!37195 cut!41)) (content!13136 (_2!37195 cut!41)))))))

(declare-fun e!4181501 () List!66792)

(assert (=> d!2169277 (= lt!2478185 e!4181501)))

(declare-fun c!1289567 () Bool)

(assert (=> d!2169277 (= c!1289567 ((_ is Nil!66668) (_1!37195 cut!41)))))

(assert (=> d!2169277 (= (++!15070 (_1!37195 cut!41) (_2!37195 cut!41)) lt!2478185)))

(declare-fun b!6953242 () Bool)

(assert (=> b!6953242 (= e!4181502 (or (not (= (_2!37195 cut!41) Nil!66668)) (= lt!2478185 (_1!37195 cut!41))))))

(declare-fun b!6953240 () Bool)

(assert (=> b!6953240 (= e!4181501 (Cons!66668 (h!73116 (_1!37195 cut!41)) (++!15070 (t!380535 (_1!37195 cut!41)) (_2!37195 cut!41))))))

(declare-fun b!6953239 () Bool)

(assert (=> b!6953239 (= e!4181501 (_2!37195 cut!41))))

(assert (= (and d!2169277 c!1289567) b!6953239))

(assert (= (and d!2169277 (not c!1289567)) b!6953240))

(assert (= (and d!2169277 res!2837037) b!6953241))

(assert (= (and b!6953241 res!2837038) b!6953242))

(declare-fun m!7653194 () Bool)

(assert (=> b!6953241 m!7653194))

(declare-fun m!7653196 () Bool)

(assert (=> b!6953241 m!7653196))

(declare-fun m!7653198 () Bool)

(assert (=> b!6953241 m!7653198))

(declare-fun m!7653200 () Bool)

(assert (=> d!2169277 m!7653200))

(declare-fun m!7653202 () Bool)

(assert (=> d!2169277 m!7653202))

(declare-fun m!7653204 () Bool)

(assert (=> d!2169277 m!7653204))

(declare-fun m!7653206 () Bool)

(assert (=> b!6953240 m!7653206))

(assert (=> b!6953018 d!2169277))

(assert (=> b!6953012 d!2169253))

(declare-fun b!6953247 () Bool)

(declare-fun e!4181505 () Bool)

(declare-fun tp!1916796 () Bool)

(assert (=> b!6953247 (= e!4181505 (and tp_is_empty!43303 tp!1916796))))

(assert (=> b!6953017 (= tp!1916753 e!4181505)))

(assert (= (and b!6953017 ((_ is Cons!66668) (t!380535 s!10388))) b!6953247))

(declare-fun b!6953248 () Bool)

(declare-fun e!4181506 () Bool)

(declare-fun tp!1916797 () Bool)

(assert (=> b!6953248 (= e!4181506 (and tp_is_empty!43303 tp!1916797))))

(assert (=> b!6953016 (= tp!1916748 e!4181506)))

(assert (= (and b!6953016 ((_ is Cons!66668) (t!380535 (_1!37195 cut!41)))) b!6953248))

(declare-fun e!4181509 () Bool)

(assert (=> b!6953010 (= tp!1916752 e!4181509)))

(declare-fun b!6953259 () Bool)

(assert (=> b!6953259 (= e!4181509 tp_is_empty!43303)))

(declare-fun b!6953261 () Bool)

(declare-fun tp!1916810 () Bool)

(assert (=> b!6953261 (= e!4181509 tp!1916810)))

(declare-fun b!6953260 () Bool)

(declare-fun tp!1916812 () Bool)

(declare-fun tp!1916811 () Bool)

(assert (=> b!6953260 (= e!4181509 (and tp!1916812 tp!1916811))))

(declare-fun b!6953262 () Bool)

(declare-fun tp!1916809 () Bool)

(declare-fun tp!1916808 () Bool)

(assert (=> b!6953262 (= e!4181509 (and tp!1916809 tp!1916808))))

(assert (= (and b!6953010 ((_ is ElementMatch!17039) (regOne!34590 rInner!765))) b!6953259))

(assert (= (and b!6953010 ((_ is Concat!25884) (regOne!34590 rInner!765))) b!6953260))

(assert (= (and b!6953010 ((_ is Star!17039) (regOne!34590 rInner!765))) b!6953261))

(assert (= (and b!6953010 ((_ is Union!17039) (regOne!34590 rInner!765))) b!6953262))

(declare-fun e!4181510 () Bool)

(assert (=> b!6953010 (= tp!1916747 e!4181510)))

(declare-fun b!6953263 () Bool)

(assert (=> b!6953263 (= e!4181510 tp_is_empty!43303)))

(declare-fun b!6953265 () Bool)

(declare-fun tp!1916815 () Bool)

(assert (=> b!6953265 (= e!4181510 tp!1916815)))

(declare-fun b!6953264 () Bool)

(declare-fun tp!1916817 () Bool)

(declare-fun tp!1916816 () Bool)

(assert (=> b!6953264 (= e!4181510 (and tp!1916817 tp!1916816))))

(declare-fun b!6953266 () Bool)

(declare-fun tp!1916814 () Bool)

(declare-fun tp!1916813 () Bool)

(assert (=> b!6953266 (= e!4181510 (and tp!1916814 tp!1916813))))

(assert (= (and b!6953010 ((_ is ElementMatch!17039) (regTwo!34590 rInner!765))) b!6953263))

(assert (= (and b!6953010 ((_ is Concat!25884) (regTwo!34590 rInner!765))) b!6953264))

(assert (= (and b!6953010 ((_ is Star!17039) (regTwo!34590 rInner!765))) b!6953265))

(assert (= (and b!6953010 ((_ is Union!17039) (regTwo!34590 rInner!765))) b!6953266))

(declare-fun b!6953267 () Bool)

(declare-fun e!4181511 () Bool)

(declare-fun tp!1916818 () Bool)

(assert (=> b!6953267 (= e!4181511 (and tp_is_empty!43303 tp!1916818))))

(assert (=> b!6953015 (= tp!1916746 e!4181511)))

(assert (= (and b!6953015 ((_ is Cons!66668) (t!380535 (_2!37195 cut!41)))) b!6953267))

(declare-fun e!4181512 () Bool)

(assert (=> b!6953020 (= tp!1916751 e!4181512)))

(declare-fun b!6953268 () Bool)

(assert (=> b!6953268 (= e!4181512 tp_is_empty!43303)))

(declare-fun b!6953270 () Bool)

(declare-fun tp!1916821 () Bool)

(assert (=> b!6953270 (= e!4181512 tp!1916821)))

(declare-fun b!6953269 () Bool)

(declare-fun tp!1916823 () Bool)

(declare-fun tp!1916822 () Bool)

(assert (=> b!6953269 (= e!4181512 (and tp!1916823 tp!1916822))))

(declare-fun b!6953271 () Bool)

(declare-fun tp!1916820 () Bool)

(declare-fun tp!1916819 () Bool)

(assert (=> b!6953271 (= e!4181512 (and tp!1916820 tp!1916819))))

(assert (= (and b!6953020 ((_ is ElementMatch!17039) (regOne!34591 rInner!765))) b!6953268))

(assert (= (and b!6953020 ((_ is Concat!25884) (regOne!34591 rInner!765))) b!6953269))

(assert (= (and b!6953020 ((_ is Star!17039) (regOne!34591 rInner!765))) b!6953270))

(assert (= (and b!6953020 ((_ is Union!17039) (regOne!34591 rInner!765))) b!6953271))

(declare-fun e!4181513 () Bool)

(assert (=> b!6953020 (= tp!1916749 e!4181513)))

(declare-fun b!6953272 () Bool)

(assert (=> b!6953272 (= e!4181513 tp_is_empty!43303)))

(declare-fun b!6953274 () Bool)

(declare-fun tp!1916826 () Bool)

(assert (=> b!6953274 (= e!4181513 tp!1916826)))

(declare-fun b!6953273 () Bool)

(declare-fun tp!1916828 () Bool)

(declare-fun tp!1916827 () Bool)

(assert (=> b!6953273 (= e!4181513 (and tp!1916828 tp!1916827))))

(declare-fun b!6953275 () Bool)

(declare-fun tp!1916825 () Bool)

(declare-fun tp!1916824 () Bool)

(assert (=> b!6953275 (= e!4181513 (and tp!1916825 tp!1916824))))

(assert (= (and b!6953020 ((_ is ElementMatch!17039) (regTwo!34591 rInner!765))) b!6953272))

(assert (= (and b!6953020 ((_ is Concat!25884) (regTwo!34591 rInner!765))) b!6953273))

(assert (= (and b!6953020 ((_ is Star!17039) (regTwo!34591 rInner!765))) b!6953274))

(assert (= (and b!6953020 ((_ is Union!17039) (regTwo!34591 rInner!765))) b!6953275))

(declare-fun e!4181514 () Bool)

(assert (=> b!6953008 (= tp!1916750 e!4181514)))

(declare-fun b!6953276 () Bool)

(assert (=> b!6953276 (= e!4181514 tp_is_empty!43303)))

(declare-fun b!6953278 () Bool)

(declare-fun tp!1916831 () Bool)

(assert (=> b!6953278 (= e!4181514 tp!1916831)))

(declare-fun b!6953277 () Bool)

(declare-fun tp!1916833 () Bool)

(declare-fun tp!1916832 () Bool)

(assert (=> b!6953277 (= e!4181514 (and tp!1916833 tp!1916832))))

(declare-fun b!6953279 () Bool)

(declare-fun tp!1916830 () Bool)

(declare-fun tp!1916829 () Bool)

(assert (=> b!6953279 (= e!4181514 (and tp!1916830 tp!1916829))))

(assert (= (and b!6953008 ((_ is ElementMatch!17039) (reg!17368 rInner!765))) b!6953276))

(assert (= (and b!6953008 ((_ is Concat!25884) (reg!17368 rInner!765))) b!6953277))

(assert (= (and b!6953008 ((_ is Star!17039) (reg!17368 rInner!765))) b!6953278))

(assert (= (and b!6953008 ((_ is Union!17039) (reg!17368 rInner!765))) b!6953279))

(check-sat (not d!2169253) tp_is_empty!43303 (not b!6953273) (not d!2169261) (not b!6953266) (not b!6953102) (not b!6953269) (not bm!631450) (not b!6953240) (not b!6953241) (not b!6953093) (not b!6953096) (not bm!631445) (not b!6953270) (not b!6953271) (not d!2169277) (not b!6953247) (not b!6953275) (not b!6953261) (not b!6953279) (not d!2169257) (not b!6953248) (not bm!631436) (not b!6953277) (not b!6953105) (not b!6953264) (not bm!631446) (not b!6953265) (not b!6953103) (not b!6953267) (not b!6953156) (not b!6953179) (not d!2169251) (not bm!631449) (not b!6953260) (not b!6953262) (not b!6953278) (not b!6953274) (not b!6953095))
(check-sat)
