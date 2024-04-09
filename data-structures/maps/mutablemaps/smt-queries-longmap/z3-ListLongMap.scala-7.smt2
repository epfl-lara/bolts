; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!240 () Bool)

(assert start!240)

(declare-fun b_free!39 () Bool)

(declare-fun b_next!39 () Bool)

(assert (=> start!240 (= b_free!39 (not b_next!39))))

(declare-fun tp!142 () Bool)

(declare-fun b_and!93 () Bool)

(assert (=> start!240 (= tp!142 b_and!93)))

(declare-fun b!2009 () Bool)

(declare-fun res!4522 () Bool)

(declare-fun e!488 () Bool)

(assert (=> b!2009 (=> (not res!4522) (not e!488))))

(declare-datatypes ((B!274 0))(
  ( (B!275 (val!19 Int)) )
))
(declare-datatypes ((tuple2!38 0))(
  ( (tuple2!39 (_1!19 (_ BitVec 64)) (_2!19 B!274)) )
))
(declare-datatypes ((List!28 0))(
  ( (Nil!25) (Cons!24 (h!590 tuple2!38) (t!2077 List!28)) )
))
(declare-datatypes ((ListLongMap!43 0))(
  ( (ListLongMap!44 (toList!37 List!28)) )
))
(declare-fun lm!258 () ListLongMap!43)

(declare-fun k0!394 () (_ BitVec 64))

(declare-fun head!750 (List!28) tuple2!38)

(assert (=> b!2009 (= res!4522 (not (= (_1!19 (head!750 (toList!37 lm!258))) k0!394)))))

(declare-fun b!2010 () Bool)

(declare-fun e!487 () Bool)

(declare-fun lt!320 () ListLongMap!43)

(declare-fun size!67 (List!28) Int)

(assert (=> b!2010 (= e!487 (>= (size!67 (toList!37 lt!320)) (size!67 (toList!37 lm!258))))))

(declare-fun b!2011 () Bool)

(declare-fun res!4523 () Bool)

(assert (=> b!2011 (=> (not res!4523) (not e!488))))

(declare-fun isEmpty!26 (ListLongMap!43) Bool)

(assert (=> b!2011 (= res!4523 (not (isEmpty!26 lm!258)))))

(declare-fun b!2012 () Bool)

(declare-fun e!489 () Bool)

(declare-fun tp!143 () Bool)

(assert (=> b!2012 (= e!489 tp!143)))

(declare-fun res!4520 () Bool)

(assert (=> start!240 (=> (not res!4520) (not e!488))))

(declare-fun p!318 () Int)

(declare-fun forall!21 (List!28 Int) Bool)

(assert (=> start!240 (= res!4520 (forall!21 (toList!37 lm!258) p!318))))

(assert (=> start!240 e!488))

(declare-fun inv!64 (ListLongMap!43) Bool)

(assert (=> start!240 (and (inv!64 lm!258) e!489)))

(assert (=> start!240 tp!142))

(assert (=> start!240 true))

(declare-fun b!2013 () Bool)

(assert (=> b!2013 (= e!488 e!487)))

(declare-fun res!4521 () Bool)

(assert (=> b!2013 (=> (not res!4521) (not e!487))))

(assert (=> b!2013 (= res!4521 (forall!21 (toList!37 lt!320) p!318))))

(declare-fun tail!39 (ListLongMap!43) ListLongMap!43)

(assert (=> b!2013 (= lt!320 (tail!39 lm!258))))

(assert (= (and start!240 res!4520) b!2011))

(assert (= (and b!2011 res!4523) b!2009))

(assert (= (and b!2009 res!4522) b!2013))

(assert (= (and b!2013 res!4521) b!2010))

(assert (= start!240 b!2012))

(declare-fun m!655 () Bool)

(assert (=> b!2010 m!655))

(declare-fun m!657 () Bool)

(assert (=> b!2010 m!657))

(declare-fun m!659 () Bool)

(assert (=> b!2009 m!659))

(declare-fun m!661 () Bool)

(assert (=> start!240 m!661))

(declare-fun m!663 () Bool)

(assert (=> start!240 m!663))

(declare-fun m!665 () Bool)

(assert (=> b!2013 m!665))

(declare-fun m!667 () Bool)

(assert (=> b!2013 m!667))

(declare-fun m!669 () Bool)

(assert (=> b!2011 m!669))

(check-sat b_and!93 (not start!240) (not b!2012) (not b_next!39) (not b!2011) (not b!2013) (not b!2010) (not b!2009))
(check-sat b_and!93 (not b_next!39))
(get-model)

(declare-fun d!253 () Bool)

(declare-fun res!4552 () Bool)

(declare-fun e!515 () Bool)

(assert (=> d!253 (=> res!4552 e!515)))

(get-info :version)

(assert (=> d!253 (= res!4552 ((_ is Nil!25) (toList!37 lm!258)))))

(assert (=> d!253 (= (forall!21 (toList!37 lm!258) p!318) e!515)))

(declare-fun b!2045 () Bool)

(declare-fun e!516 () Bool)

(assert (=> b!2045 (= e!515 e!516)))

(declare-fun res!4553 () Bool)

(assert (=> b!2045 (=> (not res!4553) (not e!516))))

(declare-fun dynLambda!14 (Int tuple2!38) Bool)

(assert (=> b!2045 (= res!4553 (dynLambda!14 p!318 (h!590 (toList!37 lm!258))))))

(declare-fun b!2046 () Bool)

(assert (=> b!2046 (= e!516 (forall!21 (t!2077 (toList!37 lm!258)) p!318))))

(assert (= (and d!253 (not res!4552)) b!2045))

(assert (= (and b!2045 res!4553) b!2046))

(declare-fun b_lambda!113 () Bool)

(assert (=> (not b_lambda!113) (not b!2045)))

(declare-fun t!2084 () Bool)

(declare-fun tb!53 () Bool)

(assert (=> (and start!240 (= p!318 p!318) t!2084) tb!53))

(declare-fun result!77 () Bool)

(assert (=> tb!53 (= result!77 true)))

(assert (=> b!2045 t!2084))

(declare-fun b_and!101 () Bool)

(assert (= b_and!93 (and (=> t!2084 result!77) b_and!101)))

(declare-fun m!695 () Bool)

(assert (=> b!2045 m!695))

(declare-fun m!697 () Bool)

(assert (=> b!2046 m!697))

(assert (=> start!240 d!253))

(declare-fun d!261 () Bool)

(declare-fun isStrictlySorted!11 (List!28) Bool)

(assert (=> d!261 (= (inv!64 lm!258) (isStrictlySorted!11 (toList!37 lm!258)))))

(declare-fun bs!66 () Bool)

(assert (= bs!66 d!261))

(declare-fun m!705 () Bool)

(assert (=> bs!66 m!705))

(assert (=> start!240 d!261))

(declare-fun d!269 () Bool)

(declare-fun isEmpty!29 (List!28) Bool)

(assert (=> d!269 (= (isEmpty!26 lm!258) (isEmpty!29 (toList!37 lm!258)))))

(declare-fun bs!67 () Bool)

(assert (= bs!67 d!269))

(declare-fun m!711 () Bool)

(assert (=> bs!67 m!711))

(assert (=> b!2011 d!269))

(declare-fun d!275 () Bool)

(assert (=> d!275 (= (head!750 (toList!37 lm!258)) (h!590 (toList!37 lm!258)))))

(assert (=> b!2009 d!275))

(declare-fun d!279 () Bool)

(declare-fun lt!332 () Int)

(assert (=> d!279 (>= lt!332 0)))

(declare-fun e!529 () Int)

(assert (=> d!279 (= lt!332 e!529)))

(declare-fun c!104 () Bool)

(assert (=> d!279 (= c!104 ((_ is Nil!25) (toList!37 lt!320)))))

(assert (=> d!279 (= (size!67 (toList!37 lt!320)) lt!332)))

(declare-fun b!2067 () Bool)

(assert (=> b!2067 (= e!529 0)))

(declare-fun b!2068 () Bool)

(assert (=> b!2068 (= e!529 (+ 1 (size!67 (t!2077 (toList!37 lt!320)))))))

(assert (= (and d!279 c!104) b!2067))

(assert (= (and d!279 (not c!104)) b!2068))

(declare-fun m!725 () Bool)

(assert (=> b!2068 m!725))

(assert (=> b!2010 d!279))

(declare-fun d!291 () Bool)

(declare-fun lt!335 () Int)

(assert (=> d!291 (>= lt!335 0)))

(declare-fun e!532 () Int)

(assert (=> d!291 (= lt!335 e!532)))

(declare-fun c!107 () Bool)

(assert (=> d!291 (= c!107 ((_ is Nil!25) (toList!37 lm!258)))))

(assert (=> d!291 (= (size!67 (toList!37 lm!258)) lt!335)))

(declare-fun b!2073 () Bool)

(assert (=> b!2073 (= e!532 0)))

(declare-fun b!2074 () Bool)

(assert (=> b!2074 (= e!532 (+ 1 (size!67 (t!2077 (toList!37 lm!258)))))))

(assert (= (and d!291 c!107) b!2073))

(assert (= (and d!291 (not c!107)) b!2074))

(declare-fun m!729 () Bool)

(assert (=> b!2074 m!729))

(assert (=> b!2010 d!291))

(declare-fun d!293 () Bool)

(declare-fun res!4558 () Bool)

(declare-fun e!535 () Bool)

(assert (=> d!293 (=> res!4558 e!535)))

(assert (=> d!293 (= res!4558 ((_ is Nil!25) (toList!37 lt!320)))))

(assert (=> d!293 (= (forall!21 (toList!37 lt!320) p!318) e!535)))

(declare-fun b!2079 () Bool)

(declare-fun e!536 () Bool)

(assert (=> b!2079 (= e!535 e!536)))

(declare-fun res!4559 () Bool)

(assert (=> b!2079 (=> (not res!4559) (not e!536))))

(assert (=> b!2079 (= res!4559 (dynLambda!14 p!318 (h!590 (toList!37 lt!320))))))

(declare-fun b!2080 () Bool)

(assert (=> b!2080 (= e!536 (forall!21 (t!2077 (toList!37 lt!320)) p!318))))

(assert (= (and d!293 (not res!4558)) b!2079))

(assert (= (and b!2079 res!4559) b!2080))

(declare-fun b_lambda!122 () Bool)

(assert (=> (not b_lambda!122) (not b!2079)))

(declare-fun t!2090 () Bool)

(declare-fun tb!59 () Bool)

(assert (=> (and start!240 (= p!318 p!318) t!2090) tb!59))

(declare-fun result!85 () Bool)

(assert (=> tb!59 (= result!85 true)))

(assert (=> b!2079 t!2090))

(declare-fun b_and!107 () Bool)

(assert (= b_and!101 (and (=> t!2090 result!85) b_and!107)))

(declare-fun m!733 () Bool)

(assert (=> b!2079 m!733))

(declare-fun m!735 () Bool)

(assert (=> b!2080 m!735))

(assert (=> b!2013 d!293))

(declare-fun d!297 () Bool)

(declare-fun tail!42 (List!28) List!28)

(assert (=> d!297 (= (tail!39 lm!258) (ListLongMap!44 (tail!42 (toList!37 lm!258))))))

(declare-fun bs!71 () Bool)

(assert (= bs!71 d!297))

(declare-fun m!739 () Bool)

(assert (=> bs!71 m!739))

(assert (=> b!2013 d!297))

(declare-fun b!2091 () Bool)

(declare-fun e!543 () Bool)

(declare-fun tp_is_empty!29 () Bool)

(declare-fun tp!158 () Bool)

(assert (=> b!2091 (= e!543 (and tp_is_empty!29 tp!158))))

(assert (=> b!2012 (= tp!143 e!543)))

(assert (= (and b!2012 ((_ is Cons!24) (toList!37 lm!258))) b!2091))

(declare-fun b_lambda!129 () Bool)

(assert (= b_lambda!122 (or (and start!240 b_free!39) b_lambda!129)))

(declare-fun b_lambda!131 () Bool)

(assert (= b_lambda!113 (or (and start!240 b_free!39) b_lambda!131)))

(check-sat (not d!269) (not b_lambda!129) (not d!261) (not b!2080) tp_is_empty!29 b_and!107 (not b!2068) (not b!2046) (not b_lambda!131) (not b_next!39) (not d!297) (not b!2091) (not b!2074))
(check-sat b_and!107 (not b_next!39))
(get-model)

(declare-fun d!299 () Bool)

(assert (=> d!299 (= (tail!42 (toList!37 lm!258)) (t!2077 (toList!37 lm!258)))))

(assert (=> d!297 d!299))

(declare-fun d!301 () Bool)

(assert (=> d!301 (= (isEmpty!29 (toList!37 lm!258)) ((_ is Nil!25) (toList!37 lm!258)))))

(assert (=> d!269 d!301))

(declare-fun d!303 () Bool)

(declare-fun lt!336 () Int)

(assert (=> d!303 (>= lt!336 0)))

(declare-fun e!544 () Int)

(assert (=> d!303 (= lt!336 e!544)))

(declare-fun c!108 () Bool)

(assert (=> d!303 (= c!108 ((_ is Nil!25) (t!2077 (toList!37 lm!258))))))

(assert (=> d!303 (= (size!67 (t!2077 (toList!37 lm!258))) lt!336)))

(declare-fun b!2092 () Bool)

(assert (=> b!2092 (= e!544 0)))

(declare-fun b!2093 () Bool)

(assert (=> b!2093 (= e!544 (+ 1 (size!67 (t!2077 (t!2077 (toList!37 lm!258))))))))

(assert (= (and d!303 c!108) b!2092))

(assert (= (and d!303 (not c!108)) b!2093))

(declare-fun m!741 () Bool)

(assert (=> b!2093 m!741))

(assert (=> b!2074 d!303))

(declare-fun d!305 () Bool)

(declare-fun res!4560 () Bool)

(declare-fun e!545 () Bool)

(assert (=> d!305 (=> res!4560 e!545)))

(assert (=> d!305 (= res!4560 ((_ is Nil!25) (t!2077 (toList!37 lm!258))))))

(assert (=> d!305 (= (forall!21 (t!2077 (toList!37 lm!258)) p!318) e!545)))

(declare-fun b!2094 () Bool)

(declare-fun e!546 () Bool)

(assert (=> b!2094 (= e!545 e!546)))

(declare-fun res!4561 () Bool)

(assert (=> b!2094 (=> (not res!4561) (not e!546))))

(assert (=> b!2094 (= res!4561 (dynLambda!14 p!318 (h!590 (t!2077 (toList!37 lm!258)))))))

(declare-fun b!2095 () Bool)

(assert (=> b!2095 (= e!546 (forall!21 (t!2077 (t!2077 (toList!37 lm!258))) p!318))))

(assert (= (and d!305 (not res!4560)) b!2094))

(assert (= (and b!2094 res!4561) b!2095))

(declare-fun b_lambda!133 () Bool)

(assert (=> (not b_lambda!133) (not b!2094)))

(declare-fun t!2092 () Bool)

(declare-fun tb!61 () Bool)

(assert (=> (and start!240 (= p!318 p!318) t!2092) tb!61))

(declare-fun result!91 () Bool)

(assert (=> tb!61 (= result!91 true)))

(assert (=> b!2094 t!2092))

(declare-fun b_and!109 () Bool)

(assert (= b_and!107 (and (=> t!2092 result!91) b_and!109)))

(declare-fun m!743 () Bool)

(assert (=> b!2094 m!743))

(declare-fun m!745 () Bool)

(assert (=> b!2095 m!745))

(assert (=> b!2046 d!305))

(declare-fun d!309 () Bool)

(declare-fun res!4572 () Bool)

(declare-fun e!560 () Bool)

(assert (=> d!309 (=> res!4572 e!560)))

(assert (=> d!309 (= res!4572 (or ((_ is Nil!25) (toList!37 lm!258)) ((_ is Nil!25) (t!2077 (toList!37 lm!258)))))))

(assert (=> d!309 (= (isStrictlySorted!11 (toList!37 lm!258)) e!560)))

(declare-fun b!2112 () Bool)

(declare-fun e!561 () Bool)

(assert (=> b!2112 (= e!560 e!561)))

(declare-fun res!4573 () Bool)

(assert (=> b!2112 (=> (not res!4573) (not e!561))))

(assert (=> b!2112 (= res!4573 (bvslt (_1!19 (h!590 (toList!37 lm!258))) (_1!19 (h!590 (t!2077 (toList!37 lm!258))))))))

(declare-fun b!2113 () Bool)

(assert (=> b!2113 (= e!561 (isStrictlySorted!11 (t!2077 (toList!37 lm!258))))))

(assert (= (and d!309 (not res!4572)) b!2112))

(assert (= (and b!2112 res!4573) b!2113))

(declare-fun m!765 () Bool)

(assert (=> b!2113 m!765))

(assert (=> d!261 d!309))

(declare-fun d!325 () Bool)

(declare-fun lt!340 () Int)

(assert (=> d!325 (>= lt!340 0)))

(declare-fun e!564 () Int)

(assert (=> d!325 (= lt!340 e!564)))

(declare-fun c!112 () Bool)

(assert (=> d!325 (= c!112 ((_ is Nil!25) (t!2077 (toList!37 lt!320))))))

(assert (=> d!325 (= (size!67 (t!2077 (toList!37 lt!320))) lt!340)))

(declare-fun b!2114 () Bool)

(assert (=> b!2114 (= e!564 0)))

(declare-fun b!2115 () Bool)

(assert (=> b!2115 (= e!564 (+ 1 (size!67 (t!2077 (t!2077 (toList!37 lt!320))))))))

(assert (= (and d!325 c!112) b!2114))

(assert (= (and d!325 (not c!112)) b!2115))

(declare-fun m!767 () Bool)

(assert (=> b!2115 m!767))

(assert (=> b!2068 d!325))

(declare-fun d!329 () Bool)

(declare-fun res!4578 () Bool)

(declare-fun e!567 () Bool)

(assert (=> d!329 (=> res!4578 e!567)))

(assert (=> d!329 (= res!4578 ((_ is Nil!25) (t!2077 (toList!37 lt!320))))))

(assert (=> d!329 (= (forall!21 (t!2077 (toList!37 lt!320)) p!318) e!567)))

(declare-fun b!2120 () Bool)

(declare-fun e!568 () Bool)

(assert (=> b!2120 (= e!567 e!568)))

(declare-fun res!4579 () Bool)

(assert (=> b!2120 (=> (not res!4579) (not e!568))))

(assert (=> b!2120 (= res!4579 (dynLambda!14 p!318 (h!590 (t!2077 (toList!37 lt!320)))))))

(declare-fun b!2121 () Bool)

(assert (=> b!2121 (= e!568 (forall!21 (t!2077 (t!2077 (toList!37 lt!320))) p!318))))

(assert (= (and d!329 (not res!4578)) b!2120))

(assert (= (and b!2120 res!4579) b!2121))

(declare-fun b_lambda!141 () Bool)

(assert (=> (not b_lambda!141) (not b!2120)))

(declare-fun t!2100 () Bool)

(declare-fun tb!69 () Bool)

(assert (=> (and start!240 (= p!318 p!318) t!2100) tb!69))

(declare-fun result!99 () Bool)

(assert (=> tb!69 (= result!99 true)))

(assert (=> b!2120 t!2100))

(declare-fun b_and!117 () Bool)

(assert (= b_and!109 (and (=> t!2100 result!99) b_and!117)))

(declare-fun m!769 () Bool)

(assert (=> b!2120 m!769))

(declare-fun m!771 () Bool)

(assert (=> b!2121 m!771))

(assert (=> b!2080 d!329))

(declare-fun b!2124 () Bool)

(declare-fun e!571 () Bool)

(declare-fun tp!159 () Bool)

(assert (=> b!2124 (= e!571 (and tp_is_empty!29 tp!159))))

(assert (=> b!2091 (= tp!158 e!571)))

(assert (= (and b!2091 ((_ is Cons!24) (t!2077 (toList!37 lm!258)))) b!2124))

(declare-fun b_lambda!143 () Bool)

(assert (= b_lambda!133 (or (and start!240 b_free!39) b_lambda!143)))

(declare-fun b_lambda!145 () Bool)

(assert (= b_lambda!141 (or (and start!240 b_free!39) b_lambda!145)))

(check-sat (not b_lambda!131) (not b_next!39) (not b!2095) b_and!117 (not b!2115) (not b_lambda!145) (not b!2124) (not b_lambda!143) (not b_lambda!129) tp_is_empty!29 (not b!2113) (not b!2121) (not b!2093))
(check-sat b_and!117 (not b_next!39))
