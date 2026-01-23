; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727866 () Bool)

(assert start!727866)

(declare-fun b_free!134407 () Bool)

(declare-fun b_next!135197 () Bool)

(assert (=> start!727866 (= b_free!134407 (not b_next!135197))))

(declare-fun tp!2184150 () Bool)

(declare-fun b_and!352141 () Bool)

(assert (=> start!727866 (= tp!2184150 b_and!352141)))

(declare-fun b!7519858 () Bool)

(assert (=> b!7519858 true))

(declare-fun order!29741 () Int)

(declare-fun p!2214 () Int)

(declare-fun lambda!466320 () Int)

(declare-fun dynLambda!29859 (Int Int) Int)

(assert (=> b!7519858 (< (dynLambda!29859 order!29741 p!2214) (dynLambda!29859 order!29741 lambda!466320))))

(declare-fun res!3014144 () Bool)

(declare-fun e!4482698 () Bool)

(assert (=> start!727866 (=> (not res!3014144) (not e!4482698))))

(declare-datatypes ((B!3943 0))(
  ( (B!3944 (val!30347 Int)) )
))
(declare-datatypes ((List!72655 0))(
  ( (Nil!72531) (Cons!72531 (h!78979 B!3943) (t!387302 List!72655)) )
))
(declare-fun l!3843 () List!72655)

(declare-fun forall!18387 (List!72655 Int) Bool)

(assert (=> start!727866 (= res!3014144 (forall!18387 l!3843 p!2214))))

(assert (=> start!727866 e!4482698))

(declare-fun e!4482697 () Bool)

(assert (=> start!727866 e!4482697))

(assert (=> start!727866 tp!2184150))

(declare-fun b!7519857 () Bool)

(declare-fun res!3014145 () Bool)

(assert (=> b!7519857 (=> (not res!3014145) (not e!4482698))))

(assert (=> b!7519857 (= res!3014145 (not (is-Cons!72531 l!3843)))))

(declare-fun exists!4942 (List!72655 Int) Bool)

(assert (=> b!7519858 (= e!4482698 (exists!4942 l!3843 lambda!466320))))

(declare-fun b!7519859 () Bool)

(declare-fun tp_is_empty!49853 () Bool)

(declare-fun tp!2184151 () Bool)

(assert (=> b!7519859 (= e!4482697 (and tp_is_empty!49853 tp!2184151))))

(assert (= (and start!727866 res!3014144) b!7519857))

(assert (= (and b!7519857 res!3014145) b!7519858))

(assert (= (and start!727866 (is-Cons!72531 l!3843)) b!7519859))

(declare-fun m!8099746 () Bool)

(assert (=> start!727866 m!8099746))

(declare-fun m!8099748 () Bool)

(assert (=> b!7519858 m!8099748))

(push 1)

(assert tp_is_empty!49853)

(assert (not b_next!135197))

(assert (not b!7519859))

(assert (not start!727866))

(assert (not b!7519858))

(assert b_and!352141)

(check-sat)

(pop 1)

(push 1)

(assert b_and!352141)

(assert (not b_next!135197))

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1939508 () Bool)

(declare-fun d!2308704 () Bool)

(assert (= bs!1939508 (and d!2308704 b!7519858)))

(declare-fun lambda!466326 () Int)

(assert (=> bs!1939508 (= (= lambda!466320 p!2214) (= lambda!466326 lambda!466320))))

(assert (=> d!2308704 true))

(assert (=> d!2308704 (< (dynLambda!29859 order!29741 lambda!466320) (dynLambda!29859 order!29741 lambda!466326))))

(assert (=> d!2308704 (= (exists!4942 l!3843 lambda!466320) (not (forall!18387 l!3843 lambda!466326)))))

(declare-fun bs!1939509 () Bool)

(assert (= bs!1939509 d!2308704))

(declare-fun m!8099754 () Bool)

(assert (=> bs!1939509 m!8099754))

(assert (=> b!7519858 d!2308704))

(declare-fun d!2308706 () Bool)

(declare-fun res!3014156 () Bool)

(declare-fun e!4482711 () Bool)

(assert (=> d!2308706 (=> res!3014156 e!4482711)))

(assert (=> d!2308706 (= res!3014156 (is-Nil!72531 l!3843))))

(assert (=> d!2308706 (= (forall!18387 l!3843 p!2214) e!4482711)))

(declare-fun b!7519877 () Bool)

(declare-fun e!4482712 () Bool)

(assert (=> b!7519877 (= e!4482711 e!4482712)))

(declare-fun res!3014157 () Bool)

(assert (=> b!7519877 (=> (not res!3014157) (not e!4482712))))

(declare-fun dynLambda!29861 (Int B!3943) Bool)

(assert (=> b!7519877 (= res!3014157 (dynLambda!29861 p!2214 (h!78979 l!3843)))))

(declare-fun b!7519878 () Bool)

(assert (=> b!7519878 (= e!4482712 (forall!18387 (t!387302 l!3843) p!2214))))

(assert (= (and d!2308706 (not res!3014156)) b!7519877))

(assert (= (and b!7519877 res!3014157) b!7519878))

(declare-fun b_lambda!288511 () Bool)

(assert (=> (not b_lambda!288511) (not b!7519877)))

(declare-fun t!387305 () Bool)

(declare-fun tb!262529 () Bool)

(assert (=> (and start!727866 (= p!2214 p!2214) t!387305) tb!262529))

(declare-fun result!356366 () Bool)

(assert (=> tb!262529 (= result!356366 true)))

(assert (=> b!7519877 t!387305))

(declare-fun b_and!352145 () Bool)

(assert (= b_and!352141 (and (=> t!387305 result!356366) b_and!352145)))

(declare-fun m!8099756 () Bool)

(assert (=> b!7519877 m!8099756))

(declare-fun m!8099758 () Bool)

(assert (=> b!7519878 m!8099758))

(assert (=> start!727866 d!2308706))

(declare-fun b!7519883 () Bool)

(declare-fun e!4482715 () Bool)

(declare-fun tp!2184160 () Bool)

(assert (=> b!7519883 (= e!4482715 (and tp_is_empty!49853 tp!2184160))))

(assert (=> b!7519859 (= tp!2184151 e!4482715)))

(assert (= (and b!7519859 (is-Cons!72531 (t!387302 l!3843))) b!7519883))

(declare-fun b_lambda!288513 () Bool)

(assert (= b_lambda!288511 (or (and start!727866 b_free!134407) b_lambda!288513)))

(push 1)

(assert (not b_lambda!288513))

(assert (not b_next!135197))

(assert b_and!352145)

(assert (not d!2308704))

(assert tp_is_empty!49853)

(assert (not b!7519883))

(assert (not b!7519878))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352145)

(assert (not b_next!135197))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2308712 () Bool)

(declare-fun res!3014164 () Bool)

(declare-fun e!4482725 () Bool)

(assert (=> d!2308712 (=> res!3014164 e!4482725)))

(assert (=> d!2308712 (= res!3014164 (is-Nil!72531 (t!387302 l!3843)))))

(assert (=> d!2308712 (= (forall!18387 (t!387302 l!3843) p!2214) e!4482725)))

(declare-fun b!7519895 () Bool)

(declare-fun e!4482726 () Bool)

(assert (=> b!7519895 (= e!4482725 e!4482726)))

(declare-fun res!3014165 () Bool)

(assert (=> b!7519895 (=> (not res!3014165) (not e!4482726))))

(assert (=> b!7519895 (= res!3014165 (dynLambda!29861 p!2214 (h!78979 (t!387302 l!3843))))))

(declare-fun b!7519896 () Bool)

(assert (=> b!7519896 (= e!4482726 (forall!18387 (t!387302 (t!387302 l!3843)) p!2214))))

(assert (= (and d!2308712 (not res!3014164)) b!7519895))

(assert (= (and b!7519895 res!3014165) b!7519896))

(declare-fun b_lambda!288519 () Bool)

(assert (=> (not b_lambda!288519) (not b!7519895)))

(declare-fun t!387309 () Bool)

(declare-fun tb!262533 () Bool)

(assert (=> (and start!727866 (= p!2214 p!2214) t!387309) tb!262533))

(declare-fun result!356374 () Bool)

(assert (=> tb!262533 (= result!356374 true)))

(assert (=> b!7519895 t!387309))

(declare-fun b_and!352149 () Bool)

(assert (= b_and!352145 (and (=> t!387309 result!356374) b_and!352149)))

(declare-fun m!8099766 () Bool)

(assert (=> b!7519895 m!8099766))

(declare-fun m!8099768 () Bool)

(assert (=> b!7519896 m!8099768))

(assert (=> b!7519878 d!2308712))

(declare-fun d!2308714 () Bool)

(declare-fun res!3014166 () Bool)

(declare-fun e!4482727 () Bool)

(assert (=> d!2308714 (=> res!3014166 e!4482727)))

(assert (=> d!2308714 (= res!3014166 (is-Nil!72531 l!3843))))

(assert (=> d!2308714 (= (forall!18387 l!3843 lambda!466326) e!4482727)))

(declare-fun b!7519897 () Bool)

(declare-fun e!4482728 () Bool)

(assert (=> b!7519897 (= e!4482727 e!4482728)))

(declare-fun res!3014167 () Bool)

(assert (=> b!7519897 (=> (not res!3014167) (not e!4482728))))

(assert (=> b!7519897 (= res!3014167 (dynLambda!29861 lambda!466326 (h!78979 l!3843)))))

(declare-fun b!7519898 () Bool)

(assert (=> b!7519898 (= e!4482728 (forall!18387 (t!387302 l!3843) lambda!466326))))

(assert (= (and d!2308714 (not res!3014166)) b!7519897))

(assert (= (and b!7519897 res!3014167) b!7519898))

(declare-fun b_lambda!288521 () Bool)

(assert (=> (not b_lambda!288521) (not b!7519897)))

(declare-fun m!8099770 () Bool)

(assert (=> b!7519897 m!8099770))

(declare-fun m!8099772 () Bool)

(assert (=> b!7519898 m!8099772))

(assert (=> d!2308704 d!2308714))

(declare-fun b!7519899 () Bool)

(declare-fun e!4482729 () Bool)

(declare-fun tp!2184164 () Bool)

(assert (=> b!7519899 (= e!4482729 (and tp_is_empty!49853 tp!2184164))))

(assert (=> b!7519883 (= tp!2184160 e!4482729)))

(assert (= (and b!7519883 (is-Cons!72531 (t!387302 (t!387302 l!3843)))) b!7519899))

(declare-fun b_lambda!288523 () Bool)

(assert (= b_lambda!288519 (or (and start!727866 b_free!134407) b_lambda!288523)))

(declare-fun b_lambda!288525 () Bool)

(assert (= b_lambda!288521 (or d!2308704 b_lambda!288525)))

(declare-fun bs!1939512 () Bool)

(declare-fun d!2308716 () Bool)

(assert (= bs!1939512 (and d!2308716 d!2308704)))

(assert (=> bs!1939512 (= (dynLambda!29861 lambda!466326 (h!78979 l!3843)) (not (dynLambda!29861 lambda!466320 (h!78979 l!3843))))))

(declare-fun b_lambda!288527 () Bool)

(assert (=> (not b_lambda!288527) (not bs!1939512)))

(declare-fun m!8099774 () Bool)

(assert (=> bs!1939512 m!8099774))

(assert (=> b!7519897 d!2308716))

(push 1)

(assert tp_is_empty!49853)

(assert (not b!7519899))

(assert (not b_next!135197))

(assert b_and!352149)

(assert (not b_lambda!288523))

(assert (not b!7519896))

(assert (not b_lambda!288527))

(assert (not b_lambda!288513))

(assert (not b!7519898))

(assert (not b_lambda!288525))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352149)

(assert (not b_next!135197))

(check-sat)

(pop 1)

