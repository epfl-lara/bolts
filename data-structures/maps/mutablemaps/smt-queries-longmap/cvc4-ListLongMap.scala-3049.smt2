; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42876 () Bool)

(assert start!42876)

(declare-fun b_free!12107 () Bool)

(declare-fun b_next!12107 () Bool)

(assert (=> start!42876 (= b_free!12107 (not b_next!12107))))

(declare-fun tp!42408 () Bool)

(declare-fun b_and!20743 () Bool)

(assert (=> start!42876 (= tp!42408 b_and!20743)))

(declare-fun res!284650 () Bool)

(declare-fun e!280070 () Bool)

(assert (=> start!42876 (=> (not res!284650) (not e!280070))))

(declare-datatypes ((B!1056 0))(
  ( (B!1057 (val!6812 Int)) )
))
(declare-datatypes ((tuple2!8994 0))(
  ( (tuple2!8995 (_1!4507 (_ BitVec 64)) (_2!4507 B!1056)) )
))
(declare-datatypes ((List!9086 0))(
  ( (Nil!9083) (Cons!9082 (h!9938 tuple2!8994) (t!15162 List!9086)) )
))
(declare-datatypes ((ListLongMap!7921 0))(
  ( (ListLongMap!7922 (toList!3976 List!9086)) )
))
(declare-fun lm!215 () ListLongMap!7921)

(declare-fun p!166 () Int)

(declare-fun forall!199 (List!9086 Int) Bool)

(assert (=> start!42876 (= res!284650 (forall!199 (toList!3976 lm!215) p!166))))

(assert (=> start!42876 e!280070))

(declare-fun e!280067 () Bool)

(declare-fun inv!15497 (ListLongMap!7921) Bool)

(assert (=> start!42876 (and (inv!15497 lm!215) e!280067)))

(assert (=> start!42876 tp!42408))

(declare-fun tp_is_empty!13529 () Bool)

(assert (=> start!42876 tp_is_empty!13529))

(assert (=> start!42876 true))

(declare-fun b!476714 () Bool)

(declare-fun e!280068 () Bool)

(declare-fun e!280069 () Bool)

(assert (=> b!476714 (= e!280068 e!280069)))

(declare-fun res!284653 () Bool)

(assert (=> b!476714 (=> (not res!284653) (not e!280069))))

(declare-fun lt!217323 () ListLongMap!7921)

(assert (=> b!476714 (= res!284653 (forall!199 (toList!3976 lt!217323) p!166))))

(declare-fun tail!127 (ListLongMap!7921) ListLongMap!7921)

(assert (=> b!476714 (= lt!217323 (tail!127 lm!215))))

(declare-fun b!476715 () Bool)

(declare-fun res!284652 () Bool)

(assert (=> b!476715 (=> (not res!284652) (not e!280068))))

(declare-fun isEmpty!608 (ListLongMap!7921) Bool)

(assert (=> b!476715 (= res!284652 (not (isEmpty!608 lm!215)))))

(declare-fun lt!217322 () tuple2!8994)

(declare-fun b!476716 () Bool)

(declare-fun +!1738 (ListLongMap!7921 tuple2!8994) ListLongMap!7921)

(assert (=> b!476716 (= e!280069 (not (forall!199 (toList!3976 (+!1738 lm!215 lt!217322)) p!166)))))

(assert (=> b!476716 (forall!199 (toList!3976 (+!1738 lt!217323 lt!217322)) p!166)))

(declare-fun b!85 () B!1056)

(declare-fun a!501 () (_ BitVec 64))

(declare-datatypes ((Unit!14007 0))(
  ( (Unit!14008) )
))
(declare-fun lt!217324 () Unit!14007)

(declare-fun addValidProp!22 (ListLongMap!7921 Int (_ BitVec 64) B!1056) Unit!14007)

(assert (=> b!476716 (= lt!217324 (addValidProp!22 lt!217323 p!166 a!501 b!85))))

(declare-fun b!476717 () Bool)

(assert (=> b!476717 (= e!280070 e!280068)))

(declare-fun res!284651 () Bool)

(assert (=> b!476717 (=> (not res!284651) (not e!280068))))

(declare-fun dynLambda!945 (Int tuple2!8994) Bool)

(assert (=> b!476717 (= res!284651 (dynLambda!945 p!166 lt!217322))))

(assert (=> b!476717 (= lt!217322 (tuple2!8995 a!501 b!85))))

(declare-fun b!476718 () Bool)

(declare-fun tp!42409 () Bool)

(assert (=> b!476718 (= e!280067 tp!42409)))

(assert (= (and start!42876 res!284650) b!476717))

(assert (= (and b!476717 res!284651) b!476715))

(assert (= (and b!476715 res!284652) b!476714))

(assert (= (and b!476714 res!284653) b!476716))

(assert (= start!42876 b!476718))

(declare-fun b_lambda!10549 () Bool)

(assert (=> (not b_lambda!10549) (not b!476717)))

(declare-fun t!15161 () Bool)

(declare-fun tb!4033 () Bool)

(assert (=> (and start!42876 (= p!166 p!166) t!15161) tb!4033))

(declare-fun result!7595 () Bool)

(assert (=> tb!4033 (= result!7595 true)))

(assert (=> b!476717 t!15161))

(declare-fun b_and!20745 () Bool)

(assert (= b_and!20743 (and (=> t!15161 result!7595) b_and!20745)))

(declare-fun m!459023 () Bool)

(assert (=> start!42876 m!459023))

(declare-fun m!459025 () Bool)

(assert (=> start!42876 m!459025))

(declare-fun m!459027 () Bool)

(assert (=> b!476717 m!459027))

(declare-fun m!459029 () Bool)

(assert (=> b!476714 m!459029))

(declare-fun m!459031 () Bool)

(assert (=> b!476714 m!459031))

(declare-fun m!459033 () Bool)

(assert (=> b!476716 m!459033))

(declare-fun m!459035 () Bool)

(assert (=> b!476716 m!459035))

(declare-fun m!459037 () Bool)

(assert (=> b!476716 m!459037))

(declare-fun m!459039 () Bool)

(assert (=> b!476716 m!459039))

(declare-fun m!459041 () Bool)

(assert (=> b!476716 m!459041))

(declare-fun m!459043 () Bool)

(assert (=> b!476715 m!459043))

(push 1)

(assert (not b!476714))

(assert b_and!20745)

(assert (not start!42876))

(assert (not b!476718))

(assert (not b_lambda!10549))

(assert tp_is_empty!13529)

(assert (not b!476716))

(assert (not b!476715))

(assert (not b_next!12107))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20745)

(assert (not b_next!12107))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!10553 () Bool)

(assert (= b_lambda!10549 (or (and start!42876 b_free!12107) b_lambda!10553)))

(push 1)

(assert (not b!476714))

(assert b_and!20745)

(assert (not start!42876))

(assert (not b!476718))

(assert (not b_lambda!10553))

(assert tp_is_empty!13529)

(assert (not b!476716))

(assert (not b!476715))

(assert (not b_next!12107))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20745)

(assert (not b_next!12107))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!75785 () Bool)

(declare-fun res!284664 () Bool)

(declare-fun e!280081 () Bool)

(assert (=> d!75785 (=> res!284664 e!280081)))

(assert (=> d!75785 (= res!284664 (is-Nil!9083 (toList!3976 (+!1738 lt!217323 lt!217322))))))

(assert (=> d!75785 (= (forall!199 (toList!3976 (+!1738 lt!217323 lt!217322)) p!166) e!280081)))

(declare-fun b!476729 () Bool)

(declare-fun e!280082 () Bool)

(assert (=> b!476729 (= e!280081 e!280082)))

(declare-fun res!284665 () Bool)

(assert (=> b!476729 (=> (not res!284665) (not e!280082))))

(assert (=> b!476729 (= res!284665 (dynLambda!945 p!166 (h!9938 (toList!3976 (+!1738 lt!217323 lt!217322)))))))

(declare-fun b!476730 () Bool)

(assert (=> b!476730 (= e!280082 (forall!199 (t!15162 (toList!3976 (+!1738 lt!217323 lt!217322))) p!166))))

(assert (= (and d!75785 (not res!284664)) b!476729))

(assert (= (and b!476729 res!284665) b!476730))

(declare-fun b_lambda!10559 () Bool)

(assert (=> (not b_lambda!10559) (not b!476729)))

(declare-fun t!15166 () Bool)

(declare-fun tb!4037 () Bool)

(assert (=> (and start!42876 (= p!166 p!166) t!15166) tb!4037))

(declare-fun result!7599 () Bool)

(assert (=> tb!4037 (= result!7599 true)))

(assert (=> b!476729 t!15166))

(declare-fun b_and!20749 () Bool)

(assert (= b_and!20745 (and (=> t!15166 result!7599) b_and!20749)))

(declare-fun m!459051 () Bool)

(assert (=> b!476729 m!459051))

(declare-fun m!459053 () Bool)

(assert (=> b!476730 m!459053))

(assert (=> b!476716 d!75785))

(declare-fun d!75789 () Bool)

(declare-fun e!280094 () Bool)

(assert (=> d!75789 e!280094))

(declare-fun res!284683 () Bool)

(assert (=> d!75789 (=> (not res!284683) (not e!280094))))

(declare-fun lt!217348 () ListLongMap!7921)

(declare-fun contains!2572 (ListLongMap!7921 (_ BitVec 64)) Bool)

(assert (=> d!75789 (= res!284683 (contains!2572 lt!217348 (_1!4507 lt!217322)))))

(declare-fun lt!217347 () List!9086)

(assert (=> d!75789 (= lt!217348 (ListLongMap!7922 lt!217347))))

(declare-fun lt!217345 () Unit!14007)

(declare-fun lt!217346 () Unit!14007)

(assert (=> d!75789 (= lt!217345 lt!217346)))

(declare-datatypes ((Option!392 0))(
  ( (Some!391 (v!9089 B!1056)) (None!390) )
))
(declare-fun getValueByKey!386 (List!9086 (_ BitVec 64)) Option!392)

(assert (=> d!75789 (= (getValueByKey!386 lt!217347 (_1!4507 lt!217322)) (Some!391 (_2!4507 lt!217322)))))

(declare-fun lemmaContainsTupThenGetReturnValue!210 (List!9086 (_ BitVec 64) B!1056) Unit!14007)

(assert (=> d!75789 (= lt!217346 (lemmaContainsTupThenGetReturnValue!210 lt!217347 (_1!4507 lt!217322) (_2!4507 lt!217322)))))

(declare-fun insertStrictlySorted!212 (List!9086 (_ BitVec 64) B!1056) List!9086)

(assert (=> d!75789 (= lt!217347 (insertStrictlySorted!212 (toList!3976 lt!217323) (_1!4507 lt!217322) (_2!4507 lt!217322)))))

(assert (=> d!75789 (= (+!1738 lt!217323 lt!217322) lt!217348)))

(declare-fun b!476747 () Bool)

(declare-fun res!284682 () Bool)

(assert (=> b!476747 (=> (not res!284682) (not e!280094))))

(assert (=> b!476747 (= res!284682 (= (getValueByKey!386 (toList!3976 lt!217348) (_1!4507 lt!217322)) (Some!391 (_2!4507 lt!217322))))))

(declare-fun b!476748 () Bool)

(declare-fun contains!2575 (List!9086 tuple2!8994) Bool)

(assert (=> b!476748 (= e!280094 (contains!2575 (toList!3976 lt!217348) lt!217322))))

(assert (= (and d!75789 res!284683) b!476747))

(assert (= (and b!476747 res!284682) b!476748))

(declare-fun m!459075 () Bool)

(assert (=> d!75789 m!459075))

(declare-fun m!459077 () Bool)

(assert (=> d!75789 m!459077))

(declare-fun m!459079 () Bool)

(assert (=> d!75789 m!459079))

(declare-fun m!459081 () Bool)

(assert (=> d!75789 m!459081))

(declare-fun m!459083 () Bool)

(assert (=> b!476747 m!459083))

(declare-fun m!459085 () Bool)

(assert (=> b!476748 m!459085))

(assert (=> b!476716 d!75789))

(declare-fun d!75801 () Bool)

(declare-fun e!280096 () Bool)

(assert (=> d!75801 e!280096))

(declare-fun res!284687 () Bool)

(assert (=> d!75801 (=> (not res!284687) (not e!280096))))

(declare-fun lt!217356 () ListLongMap!7921)

(assert (=> d!75801 (= res!284687 (contains!2572 lt!217356 (_1!4507 lt!217322)))))

(declare-fun lt!217355 () List!9086)

(assert (=> d!75801 (= lt!217356 (ListLongMap!7922 lt!217355))))

(declare-fun lt!217353 () Unit!14007)

(declare-fun lt!217354 () Unit!14007)

(assert (=> d!75801 (= lt!217353 lt!217354)))

(assert (=> d!75801 (= (getValueByKey!386 lt!217355 (_1!4507 lt!217322)) (Some!391 (_2!4507 lt!217322)))))

(assert (=> d!75801 (= lt!217354 (lemmaContainsTupThenGetReturnValue!210 lt!217355 (_1!4507 lt!217322) (_2!4507 lt!217322)))))

(assert (=> d!75801 (= lt!217355 (insertStrictlySorted!212 (toList!3976 lm!215) (_1!4507 lt!217322) (_2!4507 lt!217322)))))

(assert (=> d!75801 (= (+!1738 lm!215 lt!217322) lt!217356)))

(declare-fun b!476751 () Bool)

(declare-fun res!284686 () Bool)

(assert (=> b!476751 (=> (not res!284686) (not e!280096))))

(assert (=> b!476751 (= res!284686 (= (getValueByKey!386 (toList!3976 lt!217356) (_1!4507 lt!217322)) (Some!391 (_2!4507 lt!217322))))))

(declare-fun b!476752 () Bool)

(assert (=> b!476752 (= e!280096 (contains!2575 (toList!3976 lt!217356) lt!217322))))

(assert (= (and d!75801 res!284687) b!476751))

(assert (= (and b!476751 res!284686) b!476752))

(declare-fun m!459099 () Bool)

(assert (=> d!75801 m!459099))

(declare-fun m!459101 () Bool)

(assert (=> d!75801 m!459101))

(declare-fun m!459103 () Bool)

(assert (=> d!75801 m!459103))

(declare-fun m!459105 () Bool)

(assert (=> d!75801 m!459105))

(declare-fun m!459107 () Bool)

(assert (=> b!476751 m!459107))

(declare-fun m!459109 () Bool)

(assert (=> b!476752 m!459109))

(assert (=> b!476716 d!75801))

(declare-fun d!75805 () Bool)

(declare-fun res!284688 () Bool)

(declare-fun e!280097 () Bool)

(assert (=> d!75805 (=> res!284688 e!280097)))

(assert (=> d!75805 (= res!284688 (is-Nil!9083 (toList!3976 (+!1738 lm!215 lt!217322))))))

(assert (=> d!75805 (= (forall!199 (toList!3976 (+!1738 lm!215 lt!217322)) p!166) e!280097)))

(declare-fun b!476753 () Bool)

(declare-fun e!280098 () Bool)

(assert (=> b!476753 (= e!280097 e!280098)))

(declare-fun res!284689 () Bool)

(assert (=> b!476753 (=> (not res!284689) (not e!280098))))

(assert (=> b!476753 (= res!284689 (dynLambda!945 p!166 (h!9938 (toList!3976 (+!1738 lm!215 lt!217322)))))))

(declare-fun b!476754 () Bool)

(assert (=> b!476754 (= e!280098 (forall!199 (t!15162 (toList!3976 (+!1738 lm!215 lt!217322))) p!166))))

(assert (= (and d!75805 (not res!284688)) b!476753))

(assert (= (and b!476753 res!284689) b!476754))

(declare-fun b_lambda!10563 () Bool)

(assert (=> (not b_lambda!10563) (not b!476753)))

(declare-fun t!15170 () Bool)

(declare-fun tb!4041 () Bool)

(assert (=> (and start!42876 (= p!166 p!166) t!15170) tb!4041))

(declare-fun result!7603 () Bool)

(assert (=> tb!4041 (= result!7603 true)))

(assert (=> b!476753 t!15170))

(declare-fun b_and!20753 () Bool)

(assert (= b_and!20749 (and (=> t!15170 result!7603) b_and!20753)))

(declare-fun m!459111 () Bool)

(assert (=> b!476753 m!459111))

(declare-fun m!459113 () Bool)

(assert (=> b!476754 m!459113))

(assert (=> b!476716 d!75805))

(declare-fun d!75807 () Bool)

(assert (=> d!75807 (forall!199 (toList!3976 (+!1738 lt!217323 (tuple2!8995 a!501 b!85))) p!166)))

(declare-fun lt!217374 () Unit!14007)

(declare-fun choose!1371 (ListLongMap!7921 Int (_ BitVec 64) B!1056) Unit!14007)

(assert (=> d!75807 (= lt!217374 (choose!1371 lt!217323 p!166 a!501 b!85))))

(declare-fun e!280111 () Bool)

(assert (=> d!75807 e!280111))

(declare-fun res!284705 () Bool)

(assert (=> d!75807 (=> (not res!284705) (not e!280111))))

(assert (=> d!75807 (= res!284705 (forall!199 (toList!3976 lt!217323) p!166))))

(assert (=> d!75807 (= (addValidProp!22 lt!217323 p!166 a!501 b!85) lt!217374)))

(declare-fun b!476772 () Bool)

(assert (=> b!476772 (= e!280111 (dynLambda!945 p!166 (tuple2!8995 a!501 b!85)))))

(assert (= (and d!75807 res!284705) b!476772))

(declare-fun b_lambda!10571 () Bool)

(assert (=> (not b_lambda!10571) (not b!476772)))

(declare-fun t!15178 () Bool)

(declare-fun tb!4049 () Bool)

(assert (=> (and start!42876 (= p!166 p!166) t!15178) tb!4049))

(declare-fun result!7611 () Bool)

(assert (=> tb!4049 (= result!7611 true)))

(assert (=> b!476772 t!15178))

(declare-fun b_and!20761 () Bool)

(assert (= b_and!20753 (and (=> t!15178 result!7611) b_and!20761)))

(declare-fun m!459141 () Bool)

(assert (=> d!75807 m!459141))

(declare-fun m!459145 () Bool)

(assert (=> d!75807 m!459145))

(declare-fun m!459147 () Bool)

(assert (=> d!75807 m!459147))

(assert (=> d!75807 m!459029))

(declare-fun m!459149 () Bool)

(assert (=> b!476772 m!459149))

(assert (=> b!476716 d!75807))

(declare-fun d!75817 () Bool)

(declare-fun isEmpty!611 (List!9086) Bool)

(assert (=> d!75817 (= (isEmpty!608 lm!215) (isEmpty!611 (toList!3976 lm!215)))))

(declare-fun bs!15158 () Bool)

(assert (= bs!15158 d!75817))

(declare-fun m!459155 () Bool)

(assert (=> bs!15158 m!459155))

(assert (=> b!476715 d!75817))

(declare-fun d!75821 () Bool)

(declare-fun res!284708 () Bool)

(declare-fun e!280114 () Bool)

(assert (=> d!75821 (=> res!284708 e!280114)))

(assert (=> d!75821 (= res!284708 (is-Nil!9083 (toList!3976 lm!215)))))

(assert (=> d!75821 (= (forall!199 (toList!3976 lm!215) p!166) e!280114)))

(declare-fun b!476775 () Bool)

(declare-fun e!280115 () Bool)

(assert (=> b!476775 (= e!280114 e!280115)))

(declare-fun res!284709 () Bool)

(assert (=> b!476775 (=> (not res!284709) (not e!280115))))

(assert (=> b!476775 (= res!284709 (dynLambda!945 p!166 (h!9938 (toList!3976 lm!215))))))

(declare-fun b!476776 () Bool)

(assert (=> b!476776 (= e!280115 (forall!199 (t!15162 (toList!3976 lm!215)) p!166))))

(assert (= (and d!75821 (not res!284708)) b!476775))

(assert (= (and b!476775 res!284709) b!476776))

(declare-fun b_lambda!10575 () Bool)

(assert (=> (not b_lambda!10575) (not b!476775)))

(declare-fun t!15182 () Bool)

(declare-fun tb!4053 () Bool)

(assert (=> (and start!42876 (= p!166 p!166) t!15182) tb!4053))

(declare-fun result!7615 () Bool)

(assert (=> tb!4053 (= result!7615 true)))

(assert (=> b!476775 t!15182))

(declare-fun b_and!20765 () Bool)

(assert (= b_and!20761 (and (=> t!15182 result!7615) b_and!20765)))

(declare-fun m!459157 () Bool)

(assert (=> b!476775 m!459157))

(declare-fun m!459159 () Bool)

(assert (=> b!476776 m!459159))

(assert (=> start!42876 d!75821))

(declare-fun d!75823 () Bool)

(declare-fun isStrictlySorted!385 (List!9086) Bool)

(assert (=> d!75823 (= (inv!15497 lm!215) (isStrictlySorted!385 (toList!3976 lm!215)))))

(declare-fun bs!15160 () Bool)

(assert (= bs!15160 d!75823))

(declare-fun m!459167 () Bool)

(assert (=> bs!15160 m!459167))

(assert (=> start!42876 d!75823))

(declare-fun d!75829 () Bool)

(declare-fun res!284714 () Bool)

(declare-fun e!280120 () Bool)

(assert (=> d!75829 (=> res!284714 e!280120)))

(assert (=> d!75829 (= res!284714 (is-Nil!9083 (toList!3976 lt!217323)))))

(assert (=> d!75829 (= (forall!199 (toList!3976 lt!217323) p!166) e!280120)))

(declare-fun b!476782 () Bool)

(declare-fun e!280121 () Bool)

(assert (=> b!476782 (= e!280120 e!280121)))

(declare-fun res!284715 () Bool)

(assert (=> b!476782 (=> (not res!284715) (not e!280121))))

(assert (=> b!476782 (= res!284715 (dynLambda!945 p!166 (h!9938 (toList!3976 lt!217323))))))

(declare-fun b!476783 () Bool)

(assert (=> b!476783 (= e!280121 (forall!199 (t!15162 (toList!3976 lt!217323)) p!166))))

(assert (= (and d!75829 (not res!284714)) b!476782))

(assert (= (and b!476782 res!284715) b!476783))

(declare-fun b_lambda!10579 () Bool)

(assert (=> (not b_lambda!10579) (not b!476782)))

(declare-fun t!15186 () Bool)

(declare-fun tb!4057 () Bool)

(assert (=> (and start!42876 (= p!166 p!166) t!15186) tb!4057))

(declare-fun result!7619 () Bool)

(assert (=> tb!4057 (= result!7619 true)))

(assert (=> b!476782 t!15186))

(declare-fun b_and!20769 () Bool)

(assert (= b_and!20765 (and (=> t!15186 result!7619) b_and!20769)))

(declare-fun m!459171 () Bool)

(assert (=> b!476782 m!459171))

(declare-fun m!459173 () Bool)

(assert (=> b!476783 m!459173))

(assert (=> b!476714 d!75829))

(declare-fun d!75831 () Bool)

(declare-fun tail!130 (List!9086) List!9086)

(assert (=> d!75831 (= (tail!127 lm!215) (ListLongMap!7922 (tail!130 (toList!3976 lm!215))))))

(declare-fun bs!15162 () Bool)

(assert (= bs!15162 d!75831))

(declare-fun m!459175 () Bool)

(assert (=> bs!15162 m!459175))

(assert (=> b!476714 d!75831))

(declare-fun b!476794 () Bool)

(declare-fun e!280128 () Bool)

(declare-fun tp!42415 () Bool)

(assert (=> b!476794 (= e!280128 (and tp_is_empty!13529 tp!42415))))

(assert (=> b!476718 (= tp!42409 e!280128)))

(assert (= (and b!476718 (is-Cons!9082 (toList!3976 lm!215))) b!476794))

(declare-fun b_lambda!10593 () Bool)

(assert (= b_lambda!10559 (or (and start!42876 b_free!12107) b_lambda!10593)))

(declare-fun b_lambda!10595 () Bool)

(assert (= b_lambda!10579 (or (and start!42876 b_free!12107) b_lambda!10595)))

(declare-fun b_lambda!10597 () Bool)

(assert (= b_lambda!10575 (or (and start!42876 b_free!12107) b_lambda!10597)))

(declare-fun b_lambda!10599 () Bool)

(assert (= b_lambda!10563 (or (and start!42876 b_free!12107) b_lambda!10599)))

(declare-fun b_lambda!10601 () Bool)

(assert (= b_lambda!10571 (or (and start!42876 b_free!12107) b_lambda!10601)))

(push 1)

(assert tp_is_empty!13529)

(assert (not b!476794))

(assert (not b_lambda!10595))

(assert (not b_lambda!10593))

(assert (not b!476751))

(assert (not b!476730))

(assert (not b!476783))

(assert (not b!476752))

(assert (not b!476748))

(assert (not b!476747))

(assert (not b_next!12107))

(assert (not b_lambda!10599))

(assert b_and!20769)

(assert (not b_lambda!10553))

(assert (not d!75807))

(assert (not b_lambda!10597))

(assert (not b!476776))

(assert (not d!75801))

(assert (not b_lambda!10601))

(assert (not d!75789))

(assert (not d!75823))

(assert (not d!75831))

(assert (not b!476754))

(assert (not d!75817))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20769)

(assert (not b_next!12107))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!75873 () Bool)

(declare-fun res!284751 () Bool)

(declare-fun e!280179 () Bool)

(assert (=> d!75873 (=> res!284751 e!280179)))

(assert (=> d!75873 (= res!284751 (is-Nil!9083 (t!15162 (toList!3976 lt!217323))))))

(assert (=> d!75873 (= (forall!199 (t!15162 (toList!3976 lt!217323)) p!166) e!280179)))

(declare-fun b!476871 () Bool)

(declare-fun e!280180 () Bool)

(assert (=> b!476871 (= e!280179 e!280180)))

(declare-fun res!284752 () Bool)

(assert (=> b!476871 (=> (not res!284752) (not e!280180))))

(assert (=> b!476871 (= res!284752 (dynLambda!945 p!166 (h!9938 (t!15162 (toList!3976 lt!217323)))))))

(declare-fun b!476872 () Bool)

(assert (=> b!476872 (= e!280180 (forall!199 (t!15162 (t!15162 (toList!3976 lt!217323))) p!166))))

(assert (= (and d!75873 (not res!284751)) b!476871))

(assert (= (and b!476871 res!284752) b!476872))

(declare-fun b_lambda!10625 () Bool)

(assert (=> (not b_lambda!10625) (not b!476871)))

(declare-fun t!15202 () Bool)

(declare-fun tb!4073 () Bool)

(assert (=> (and start!42876 (= p!166 p!166) t!15202) tb!4073))

(declare-fun result!7641 () Bool)

(assert (=> tb!4073 (= result!7641 true)))

(assert (=> b!476871 t!15202))

(declare-fun b_and!20785 () Bool)

(assert (= b_and!20769 (and (=> t!15202 result!7641) b_and!20785)))

(declare-fun m!459261 () Bool)

(assert (=> b!476871 m!459261))

(declare-fun m!459263 () Bool)

(assert (=> b!476872 m!459263))

(assert (=> b!476783 d!75873))

(declare-fun d!75875 () Bool)

(declare-fun e!280198 () Bool)

(assert (=> d!75875 e!280198))

(declare-fun res!284765 () Bool)

(assert (=> d!75875 (=> res!284765 e!280198)))

(declare-fun lt!217427 () Bool)

(assert (=> d!75875 (= res!284765 (not lt!217427))))

(declare-fun lt!217429 () Bool)

(assert (=> d!75875 (= lt!217427 lt!217429)))

(declare-fun lt!217428 () Unit!14007)

(declare-fun e!280199 () Unit!14007)

(assert (=> d!75875 (= lt!217428 e!280199)))

(declare-fun c!57327 () Bool)

(assert (=> d!75875 (= c!57327 lt!217429)))

(declare-fun containsKey!349 (List!9086 (_ BitVec 64)) Bool)

(assert (=> d!75875 (= lt!217429 (containsKey!349 (toList!3976 lt!217348) (_1!4507 lt!217322)))))

(assert (=> d!75875 (= (contains!2572 lt!217348 (_1!4507 lt!217322)) lt!217427)))

(declare-fun b!476905 () Bool)

(declare-fun lt!217426 () Unit!14007)

(assert (=> b!476905 (= e!280199 lt!217426)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!298 (List!9086 (_ BitVec 64)) Unit!14007)

(assert (=> b!476905 (= lt!217426 (lemmaContainsKeyImpliesGetValueByKeyDefined!298 (toList!3976 lt!217348) (_1!4507 lt!217322)))))

(declare-fun isDefined!299 (Option!392) Bool)

(assert (=> b!476905 (isDefined!299 (getValueByKey!386 (toList!3976 lt!217348) (_1!4507 lt!217322)))))

(declare-fun b!476906 () Bool)

(declare-fun Unit!14011 () Unit!14007)

(assert (=> b!476906 (= e!280199 Unit!14011)))

(declare-fun b!476907 () Bool)

(assert (=> b!476907 (= e!280198 (isDefined!299 (getValueByKey!386 (toList!3976 lt!217348) (_1!4507 lt!217322))))))

(assert (= (and d!75875 c!57327) b!476905))

(assert (= (and d!75875 (not c!57327)) b!476906))

(assert (= (and d!75875 (not res!284765)) b!476907))

(declare-fun m!459273 () Bool)

(assert (=> d!75875 m!459273))

(declare-fun m!459275 () Bool)

(assert (=> b!476905 m!459275))

(assert (=> b!476905 m!459083))

(assert (=> b!476905 m!459083))

(declare-fun m!459277 () Bool)

(assert (=> b!476905 m!459277))

(assert (=> b!476907 m!459083))

(assert (=> b!476907 m!459083))

(assert (=> b!476907 m!459277))

(assert (=> d!75789 d!75875))

(declare-fun b!476933 () Bool)

(declare-fun e!280211 () Option!392)

(declare-fun e!280212 () Option!392)

(assert (=> b!476933 (= e!280211 e!280212)))

(declare-fun c!57339 () Bool)

(assert (=> b!476933 (= c!57339 (and (is-Cons!9082 lt!217347) (not (= (_1!4507 (h!9938 lt!217347)) (_1!4507 lt!217322)))))))

(declare-fun d!75879 () Bool)

(declare-fun c!57338 () Bool)

(assert (=> d!75879 (= c!57338 (and (is-Cons!9082 lt!217347) (= (_1!4507 (h!9938 lt!217347)) (_1!4507 lt!217322))))))

(assert (=> d!75879 (= (getValueByKey!386 lt!217347 (_1!4507 lt!217322)) e!280211)))

(declare-fun b!476932 () Bool)

(assert (=> b!476932 (= e!280211 (Some!391 (_2!4507 (h!9938 lt!217347))))))

(declare-fun b!476934 () Bool)

(assert (=> b!476934 (= e!280212 (getValueByKey!386 (t!15162 lt!217347) (_1!4507 lt!217322)))))

(declare-fun b!476935 () Bool)

(assert (=> b!476935 (= e!280212 None!390)))

(assert (= (and d!75879 c!57338) b!476932))

(assert (= (and d!75879 (not c!57338)) b!476933))

(assert (= (and b!476933 c!57339) b!476934))

(assert (= (and b!476933 (not c!57339)) b!476935))

(declare-fun m!459293 () Bool)

(assert (=> b!476934 m!459293))

(assert (=> d!75789 d!75879))

(declare-fun d!75885 () Bool)

(assert (=> d!75885 (= (getValueByKey!386 lt!217347 (_1!4507 lt!217322)) (Some!391 (_2!4507 lt!217322)))))

(declare-fun lt!217439 () Unit!14007)

(declare-fun choose!1374 (List!9086 (_ BitVec 64) B!1056) Unit!14007)

(assert (=> d!75885 (= lt!217439 (choose!1374 lt!217347 (_1!4507 lt!217322) (_2!4507 lt!217322)))))

(declare-fun e!280228 () Bool)

(assert (=> d!75885 e!280228))

(declare-fun res!284780 () Bool)

(assert (=> d!75885 (=> (not res!284780) (not e!280228))))

(assert (=> d!75885 (= res!284780 (isStrictlySorted!385 lt!217347))))

(assert (=> d!75885 (= (lemmaContainsTupThenGetReturnValue!210 lt!217347 (_1!4507 lt!217322) (_2!4507 lt!217322)) lt!217439)))

(declare-fun b!476962 () Bool)

(declare-fun res!284781 () Bool)

(assert (=> b!476962 (=> (not res!284781) (not e!280228))))

(assert (=> b!476962 (= res!284781 (containsKey!349 lt!217347 (_1!4507 lt!217322)))))

(declare-fun b!476963 () Bool)

(assert (=> b!476963 (= e!280228 (contains!2575 lt!217347 (tuple2!8995 (_1!4507 lt!217322) (_2!4507 lt!217322))))))

(assert (= (and d!75885 res!284780) b!476962))

(assert (= (and b!476962 res!284781) b!476963))

(assert (=> d!75885 m!459077))

(declare-fun m!459311 () Bool)

(assert (=> d!75885 m!459311))

(declare-fun m!459313 () Bool)

(assert (=> d!75885 m!459313))

(declare-fun m!459315 () Bool)

(assert (=> b!476962 m!459315))

(declare-fun m!459317 () Bool)

(assert (=> b!476963 m!459317))

(assert (=> d!75789 d!75885))

(declare-fun e!280307 () List!9086)

(declare-fun call!30760 () List!9086)

(declare-fun c!57380 () Bool)

(declare-fun bm!30755 () Bool)

(declare-fun $colon$colon!110 (List!9086 tuple2!8994) List!9086)

(assert (=> bm!30755 (= call!30760 ($colon$colon!110 e!280307 (ite c!57380 (h!9938 (toList!3976 lt!217323)) (tuple2!8995 (_1!4507 lt!217322) (_2!4507 lt!217322)))))))

(declare-fun c!57382 () Bool)

(assert (=> bm!30755 (= c!57382 c!57380)))

(declare-fun b!477078 () Bool)

(declare-fun c!57383 () Bool)

(assert (=> b!477078 (= c!57383 (and (is-Cons!9082 (toList!3976 lt!217323)) (bvsgt (_1!4507 (h!9938 (toList!3976 lt!217323))) (_1!4507 lt!217322))))))

(declare-fun e!280304 () List!9086)

(declare-fun e!280306 () List!9086)

(assert (=> b!477078 (= e!280304 e!280306)))

(declare-fun bm!30756 () Bool)

(declare-fun call!30758 () List!9086)

(assert (=> bm!30756 (= call!30758 call!30760)))

(declare-fun b!477079 () Bool)

(declare-fun e!280303 () List!9086)

(assert (=> b!477079 (= e!280303 call!30760)))

(declare-fun d!75891 () Bool)

(declare-fun e!280305 () Bool)

(assert (=> d!75891 e!280305))

(declare-fun res!284831 () Bool)

(assert (=> d!75891 (=> (not res!284831) (not e!280305))))

(declare-fun lt!217463 () List!9086)

(assert (=> d!75891 (= res!284831 (isStrictlySorted!385 lt!217463))))

(assert (=> d!75891 (= lt!217463 e!280303)))

(assert (=> d!75891 (= c!57380 (and (is-Cons!9082 (toList!3976 lt!217323)) (bvslt (_1!4507 (h!9938 (toList!3976 lt!217323))) (_1!4507 lt!217322))))))

(assert (=> d!75891 (isStrictlySorted!385 (toList!3976 lt!217323))))

(assert (=> d!75891 (= (insertStrictlySorted!212 (toList!3976 lt!217323) (_1!4507 lt!217322) (_2!4507 lt!217322)) lt!217463)))

(declare-fun bm!30757 () Bool)

(declare-fun call!30759 () List!9086)

(assert (=> bm!30757 (= call!30759 call!30758)))

(declare-fun b!477080 () Bool)

(assert (=> b!477080 (= e!280304 call!30758)))

(declare-fun b!477081 () Bool)

(assert (=> b!477081 (= e!280303 e!280304)))

(declare-fun c!57381 () Bool)

(assert (=> b!477081 (= c!57381 (and (is-Cons!9082 (toList!3976 lt!217323)) (= (_1!4507 (h!9938 (toList!3976 lt!217323))) (_1!4507 lt!217322))))))

(declare-fun b!477082 () Bool)

(assert (=> b!477082 (= e!280306 call!30759)))

(declare-fun b!477083 () Bool)

(assert (=> b!477083 (= e!280305 (contains!2575 lt!217463 (tuple2!8995 (_1!4507 lt!217322) (_2!4507 lt!217322))))))

(declare-fun b!477084 () Bool)

(assert (=> b!477084 (= e!280307 (insertStrictlySorted!212 (t!15162 (toList!3976 lt!217323)) (_1!4507 lt!217322) (_2!4507 lt!217322)))))

(declare-fun b!477085 () Bool)

(declare-fun res!284830 () Bool)

(assert (=> b!477085 (=> (not res!284830) (not e!280305))))

(assert (=> b!477085 (= res!284830 (containsKey!349 lt!217463 (_1!4507 lt!217322)))))

(declare-fun b!477086 () Bool)

(assert (=> b!477086 (= e!280306 call!30759)))

(declare-fun b!477087 () Bool)

(assert (=> b!477087 (= e!280307 (ite c!57381 (t!15162 (toList!3976 lt!217323)) (ite c!57383 (Cons!9082 (h!9938 (toList!3976 lt!217323)) (t!15162 (toList!3976 lt!217323))) Nil!9083)))))

(assert (= (and d!75891 c!57380) b!477079))

(assert (= (and d!75891 (not c!57380)) b!477081))

(assert (= (and b!477081 c!57381) b!477080))

(assert (= (and b!477081 (not c!57381)) b!477078))

(assert (= (and b!477078 c!57383) b!477086))

(assert (= (and b!477078 (not c!57383)) b!477082))

(assert (= (or b!477086 b!477082) bm!30757))

(assert (= (or b!477080 bm!30757) bm!30756))

(assert (= (or b!477079 bm!30756) bm!30755))

(assert (= (and bm!30755 c!57382) b!477084))

(assert (= (and bm!30755 (not c!57382)) b!477087))

(assert (= (and d!75891 res!284831) b!477085))

(assert (= (and b!477085 res!284830) b!477083))

(declare-fun m!459433 () Bool)

(assert (=> b!477083 m!459433))

(declare-fun m!459437 () Bool)

(assert (=> bm!30755 m!459437))

(declare-fun m!459439 () Bool)

(assert (=> b!477084 m!459439))

(declare-fun m!459441 () Bool)

(assert (=> b!477085 m!459441))

(declare-fun m!459443 () Bool)

(assert (=> d!75891 m!459443))

(declare-fun m!459445 () Bool)

(assert (=> d!75891 m!459445))

(assert (=> d!75789 d!75891))

(declare-fun d!75939 () Bool)

(declare-fun res!284832 () Bool)

(declare-fun e!280309 () Bool)

(assert (=> d!75939 (=> res!284832 e!280309)))

(assert (=> d!75939 (= res!284832 (is-Nil!9083 (toList!3976 (+!1738 lt!217323 (tuple2!8995 a!501 b!85)))))))

(assert (=> d!75939 (= (forall!199 (toList!3976 (+!1738 lt!217323 (tuple2!8995 a!501 b!85))) p!166) e!280309)))

(declare-fun b!477089 () Bool)

(declare-fun e!280310 () Bool)

(assert (=> b!477089 (= e!280309 e!280310)))

(declare-fun res!284833 () Bool)

(assert (=> b!477089 (=> (not res!284833) (not e!280310))))

(assert (=> b!477089 (= res!284833 (dynLambda!945 p!166 (h!9938 (toList!3976 (+!1738 lt!217323 (tuple2!8995 a!501 b!85))))))))

(declare-fun b!477090 () Bool)

(assert (=> b!477090 (= e!280310 (forall!199 (t!15162 (toList!3976 (+!1738 lt!217323 (tuple2!8995 a!501 b!85)))) p!166))))

(assert (= (and d!75939 (not res!284832)) b!477089))

(assert (= (and b!477089 res!284833) b!477090))

(declare-fun b_lambda!10659 () Bool)

(assert (=> (not b_lambda!10659) (not b!477089)))

(declare-fun t!15216 () Bool)

(declare-fun tb!4087 () Bool)

(assert (=> (and start!42876 (= p!166 p!166) t!15216) tb!4087))

(declare-fun result!7655 () Bool)

(assert (=> tb!4087 (= result!7655 true)))

(assert (=> b!477089 t!15216))

(declare-fun b_and!20799 () Bool)

(assert (= b_and!20785 (and (=> t!15216 result!7655) b_and!20799)))

(declare-fun m!459447 () Bool)

(assert (=> b!477089 m!459447))

(declare-fun m!459449 () Bool)

(assert (=> b!477090 m!459449))

(assert (=> d!75807 d!75939))

(declare-fun d!75941 () Bool)

(declare-fun e!280311 () Bool)

(assert (=> d!75941 e!280311))

(declare-fun res!284835 () Bool)

(assert (=> d!75941 (=> (not res!284835) (not e!280311))))

(declare-fun lt!217467 () ListLongMap!7921)

(assert (=> d!75941 (= res!284835 (contains!2572 lt!217467 (_1!4507 (tuple2!8995 a!501 b!85))))))

(declare-fun lt!217466 () List!9086)

(assert (=> d!75941 (= lt!217467 (ListLongMap!7922 lt!217466))))

(declare-fun lt!217464 () Unit!14007)

(declare-fun lt!217465 () Unit!14007)

(assert (=> d!75941 (= lt!217464 lt!217465)))

(assert (=> d!75941 (= (getValueByKey!386 lt!217466 (_1!4507 (tuple2!8995 a!501 b!85))) (Some!391 (_2!4507 (tuple2!8995 a!501 b!85))))))

(assert (=> d!75941 (= lt!217465 (lemmaContainsTupThenGetReturnValue!210 lt!217466 (_1!4507 (tuple2!8995 a!501 b!85)) (_2!4507 (tuple2!8995 a!501 b!85))))))

(assert (=> d!75941 (= lt!217466 (insertStrictlySorted!212 (toList!3976 lt!217323) (_1!4507 (tuple2!8995 a!501 b!85)) (_2!4507 (tuple2!8995 a!501 b!85))))))

(assert (=> d!75941 (= (+!1738 lt!217323 (tuple2!8995 a!501 b!85)) lt!217467)))

(declare-fun b!477091 () Bool)

(declare-fun res!284834 () Bool)

(assert (=> b!477091 (=> (not res!284834) (not e!280311))))

(assert (=> b!477091 (= res!284834 (= (getValueByKey!386 (toList!3976 lt!217467) (_1!4507 (tuple2!8995 a!501 b!85))) (Some!391 (_2!4507 (tuple2!8995 a!501 b!85)))))))

(declare-fun b!477092 () Bool)

(assert (=> b!477092 (= e!280311 (contains!2575 (toList!3976 lt!217467) (tuple2!8995 a!501 b!85)))))

(assert (= (and d!75941 res!284835) b!477091))

(assert (= (and b!477091 res!284834) b!477092))

(declare-fun m!459451 () Bool)

(assert (=> d!75941 m!459451))

(declare-fun m!459453 () Bool)

(assert (=> d!75941 m!459453))

(declare-fun m!459455 () Bool)

(assert (=> d!75941 m!459455))

(declare-fun m!459457 () Bool)

(assert (=> d!75941 m!459457))

(declare-fun m!459459 () Bool)

(assert (=> b!477091 m!459459))

(declare-fun m!459461 () Bool)

(assert (=> b!477092 m!459461))

(assert (=> d!75807 d!75941))

(declare-fun d!75943 () Bool)

(assert (=> d!75943 (forall!199 (toList!3976 (+!1738 lt!217323 (tuple2!8995 a!501 b!85))) p!166)))

(assert (=> d!75943 true))

(declare-fun _$30!93 () Unit!14007)

(assert (=> d!75943 (= (choose!1371 lt!217323 p!166 a!501 b!85) _$30!93)))

(declare-fun bs!15166 () Bool)

(assert (= bs!15166 d!75943))

(assert (=> bs!15166 m!459141))

(assert (=> bs!15166 m!459145))

(assert (=> d!75807 d!75943))

(assert (=> d!75807 d!75829))

(declare-fun d!75945 () Bool)

(declare-fun lt!217470 () Bool)

(declare-fun content!208 (List!9086) (Set tuple2!8994))

(assert (=> d!75945 (= lt!217470 (member lt!217322 (content!208 (toList!3976 lt!217348))))))

(declare-fun e!280316 () Bool)

(assert (=> d!75945 (= lt!217470 e!280316)))

(declare-fun res!284841 () Bool)

(assert (=> d!75945 (=> (not res!284841) (not e!280316))))

(assert (=> d!75945 (= res!284841 (is-Cons!9082 (toList!3976 lt!217348)))))

(assert (=> d!75945 (= (contains!2575 (toList!3976 lt!217348) lt!217322) lt!217470)))

(declare-fun b!477098 () Bool)

(declare-fun e!280317 () Bool)

(assert (=> b!477098 (= e!280316 e!280317)))

(declare-fun res!284840 () Bool)

(assert (=> b!477098 (=> res!284840 e!280317)))

(assert (=> b!477098 (= res!284840 (= (h!9938 (toList!3976 lt!217348)) lt!217322))))

(declare-fun b!477099 () Bool)

(assert (=> b!477099 (= e!280317 (contains!2575 (t!15162 (toList!3976 lt!217348)) lt!217322))))

(assert (= (and d!75945 res!284841) b!477098))

(assert (= (and b!477098 (not res!284840)) b!477099))

(declare-fun m!459463 () Bool)

(assert (=> d!75945 m!459463))

(declare-fun m!459465 () Bool)

(assert (=> d!75945 m!459465))

(declare-fun m!459467 () Bool)

(assert (=> b!477099 m!459467))

(assert (=> b!476748 d!75945))

(declare-fun d!75947 () Bool)

(assert (=> d!75947 (= (isEmpty!611 (toList!3976 lm!215)) (is-Nil!9083 (toList!3976 lm!215)))))

(assert (=> d!75817 d!75947))

(declare-fun d!75949 () Bool)

(assert (=> d!75949 (= (tail!130 (toList!3976 lm!215)) (t!15162 (toList!3976 lm!215)))))

(assert (=> d!75831 d!75949))

(declare-fun d!75951 () Bool)

(declare-fun res!284842 () Bool)

(declare-fun e!280318 () Bool)

(assert (=> d!75951 (=> res!284842 e!280318)))

(assert (=> d!75951 (= res!284842 (is-Nil!9083 (t!15162 (toList!3976 lm!215))))))

(assert (=> d!75951 (= (forall!199 (t!15162 (toList!3976 lm!215)) p!166) e!280318)))

(declare-fun b!477100 () Bool)

(declare-fun e!280319 () Bool)

(assert (=> b!477100 (= e!280318 e!280319)))

(declare-fun res!284843 () Bool)

(assert (=> b!477100 (=> (not res!284843) (not e!280319))))

(assert (=> b!477100 (= res!284843 (dynLambda!945 p!166 (h!9938 (t!15162 (toList!3976 lm!215)))))))

(declare-fun b!477101 () Bool)

(assert (=> b!477101 (= e!280319 (forall!199 (t!15162 (t!15162 (toList!3976 lm!215))) p!166))))

(assert (= (and d!75951 (not res!284842)) b!477100))

(assert (= (and b!477100 res!284843) b!477101))

(declare-fun b_lambda!10661 () Bool)

(assert (=> (not b_lambda!10661) (not b!477100)))

(declare-fun t!15218 () Bool)

(declare-fun tb!4089 () Bool)

(assert (=> (and start!42876 (= p!166 p!166) t!15218) tb!4089))

(declare-fun result!7657 () Bool)

(assert (=> tb!4089 (= result!7657 true)))

(assert (=> b!477100 t!15218))

(declare-fun b_and!20801 () Bool)

(assert (= b_and!20799 (and (=> t!15218 result!7657) b_and!20801)))

(declare-fun m!459469 () Bool)

(assert (=> b!477100 m!459469))

(declare-fun m!459471 () Bool)

(assert (=> b!477101 m!459471))

(assert (=> b!476776 d!75951))

(declare-fun b!477103 () Bool)

(declare-fun e!280320 () Option!392)

(declare-fun e!280321 () Option!392)

(assert (=> b!477103 (= e!280320 e!280321)))

(declare-fun c!57385 () Bool)

(assert (=> b!477103 (= c!57385 (and (is-Cons!9082 (toList!3976 lt!217348)) (not (= (_1!4507 (h!9938 (toList!3976 lt!217348))) (_1!4507 lt!217322)))))))

(declare-fun d!75953 () Bool)

(declare-fun c!57384 () Bool)

(assert (=> d!75953 (= c!57384 (and (is-Cons!9082 (toList!3976 lt!217348)) (= (_1!4507 (h!9938 (toList!3976 lt!217348))) (_1!4507 lt!217322))))))

(assert (=> d!75953 (= (getValueByKey!386 (toList!3976 lt!217348) (_1!4507 lt!217322)) e!280320)))

(declare-fun b!477102 () Bool)

(assert (=> b!477102 (= e!280320 (Some!391 (_2!4507 (h!9938 (toList!3976 lt!217348)))))))

(declare-fun b!477104 () Bool)

(assert (=> b!477104 (= e!280321 (getValueByKey!386 (t!15162 (toList!3976 lt!217348)) (_1!4507 lt!217322)))))

(declare-fun b!477105 () Bool)

(assert (=> b!477105 (= e!280321 None!390)))

(assert (= (and d!75953 c!57384) b!477102))

(assert (= (and d!75953 (not c!57384)) b!477103))

(assert (= (and b!477103 c!57385) b!477104))

(assert (= (and b!477103 (not c!57385)) b!477105))

(declare-fun m!459473 () Bool)

(assert (=> b!477104 m!459473))

(assert (=> b!476747 d!75953))

(declare-fun b!477107 () Bool)

(declare-fun e!280322 () Option!392)

(declare-fun e!280323 () Option!392)

(assert (=> b!477107 (= e!280322 e!280323)))

(declare-fun c!57387 () Bool)

(assert (=> b!477107 (= c!57387 (and (is-Cons!9082 (toList!3976 lt!217356)) (not (= (_1!4507 (h!9938 (toList!3976 lt!217356))) (_1!4507 lt!217322)))))))

(declare-fun d!75955 () Bool)

(declare-fun c!57386 () Bool)

(assert (=> d!75955 (= c!57386 (and (is-Cons!9082 (toList!3976 lt!217356)) (= (_1!4507 (h!9938 (toList!3976 lt!217356))) (_1!4507 lt!217322))))))

(assert (=> d!75955 (= (getValueByKey!386 (toList!3976 lt!217356) (_1!4507 lt!217322)) e!280322)))

(declare-fun b!477106 () Bool)

(assert (=> b!477106 (= e!280322 (Some!391 (_2!4507 (h!9938 (toList!3976 lt!217356)))))))

(declare-fun b!477108 () Bool)

(assert (=> b!477108 (= e!280323 (getValueByKey!386 (t!15162 (toList!3976 lt!217356)) (_1!4507 lt!217322)))))

(declare-fun b!477109 () Bool)

(assert (=> b!477109 (= e!280323 None!390)))

(assert (= (and d!75955 c!57386) b!477106))

(assert (= (and d!75955 (not c!57386)) b!477107))

(assert (= (and b!477107 c!57387) b!477108))

(assert (= (and b!477107 (not c!57387)) b!477109))

(declare-fun m!459475 () Bool)

(assert (=> b!477108 m!459475))

(assert (=> b!476751 d!75955))

(declare-fun d!75957 () Bool)

(declare-fun e!280324 () Bool)

(assert (=> d!75957 e!280324))

(declare-fun res!284844 () Bool)

(assert (=> d!75957 (=> res!284844 e!280324)))

(declare-fun lt!217472 () Bool)

(assert (=> d!75957 (= res!284844 (not lt!217472))))

(declare-fun lt!217474 () Bool)

(assert (=> d!75957 (= lt!217472 lt!217474)))

(declare-fun lt!217473 () Unit!14007)

(declare-fun e!280325 () Unit!14007)

(assert (=> d!75957 (= lt!217473 e!280325)))

(declare-fun c!57388 () Bool)

(assert (=> d!75957 (= c!57388 lt!217474)))

(assert (=> d!75957 (= lt!217474 (containsKey!349 (toList!3976 lt!217356) (_1!4507 lt!217322)))))

(assert (=> d!75957 (= (contains!2572 lt!217356 (_1!4507 lt!217322)) lt!217472)))

(declare-fun b!477110 () Bool)

(declare-fun lt!217471 () Unit!14007)

(assert (=> b!477110 (= e!280325 lt!217471)))

(assert (=> b!477110 (= lt!217471 (lemmaContainsKeyImpliesGetValueByKeyDefined!298 (toList!3976 lt!217356) (_1!4507 lt!217322)))))

(assert (=> b!477110 (isDefined!299 (getValueByKey!386 (toList!3976 lt!217356) (_1!4507 lt!217322)))))

(declare-fun b!477111 () Bool)

(declare-fun Unit!14014 () Unit!14007)

(assert (=> b!477111 (= e!280325 Unit!14014)))

(declare-fun b!477112 () Bool)

(assert (=> b!477112 (= e!280324 (isDefined!299 (getValueByKey!386 (toList!3976 lt!217356) (_1!4507 lt!217322))))))

(assert (= (and d!75957 c!57388) b!477110))

(assert (= (and d!75957 (not c!57388)) b!477111))

(assert (= (and d!75957 (not res!284844)) b!477112))

(declare-fun m!459477 () Bool)

(assert (=> d!75957 m!459477))

(declare-fun m!459479 () Bool)

(assert (=> b!477110 m!459479))

(assert (=> b!477110 m!459107))

(assert (=> b!477110 m!459107))

(declare-fun m!459481 () Bool)

(assert (=> b!477110 m!459481))

(assert (=> b!477112 m!459107))

(assert (=> b!477112 m!459107))

(assert (=> b!477112 m!459481))

(assert (=> d!75801 d!75957))

(declare-fun b!477114 () Bool)

(declare-fun e!280326 () Option!392)

(declare-fun e!280327 () Option!392)

(assert (=> b!477114 (= e!280326 e!280327)))

(declare-fun c!57390 () Bool)

(assert (=> b!477114 (= c!57390 (and (is-Cons!9082 lt!217355) (not (= (_1!4507 (h!9938 lt!217355)) (_1!4507 lt!217322)))))))

(declare-fun d!75959 () Bool)

(declare-fun c!57389 () Bool)

(assert (=> d!75959 (= c!57389 (and (is-Cons!9082 lt!217355) (= (_1!4507 (h!9938 lt!217355)) (_1!4507 lt!217322))))))

(assert (=> d!75959 (= (getValueByKey!386 lt!217355 (_1!4507 lt!217322)) e!280326)))

(declare-fun b!477113 () Bool)

(assert (=> b!477113 (= e!280326 (Some!391 (_2!4507 (h!9938 lt!217355))))))

(declare-fun b!477115 () Bool)

(assert (=> b!477115 (= e!280327 (getValueByKey!386 (t!15162 lt!217355) (_1!4507 lt!217322)))))

(declare-fun b!477116 () Bool)

(assert (=> b!477116 (= e!280327 None!390)))

(assert (= (and d!75959 c!57389) b!477113))

(assert (= (and d!75959 (not c!57389)) b!477114))

(assert (= (and b!477114 c!57390) b!477115))

(assert (= (and b!477114 (not c!57390)) b!477116))

(declare-fun m!459483 () Bool)

(assert (=> b!477115 m!459483))

(assert (=> d!75801 d!75959))

(declare-fun d!75961 () Bool)

(assert (=> d!75961 (= (getValueByKey!386 lt!217355 (_1!4507 lt!217322)) (Some!391 (_2!4507 lt!217322)))))

(declare-fun lt!217475 () Unit!14007)

(assert (=> d!75961 (= lt!217475 (choose!1374 lt!217355 (_1!4507 lt!217322) (_2!4507 lt!217322)))))

(declare-fun e!280328 () Bool)

(assert (=> d!75961 e!280328))

(declare-fun res!284845 () Bool)

(assert (=> d!75961 (=> (not res!284845) (not e!280328))))

(assert (=> d!75961 (= res!284845 (isStrictlySorted!385 lt!217355))))

(assert (=> d!75961 (= (lemmaContainsTupThenGetReturnValue!210 lt!217355 (_1!4507 lt!217322) (_2!4507 lt!217322)) lt!217475)))

(declare-fun b!477117 () Bool)

(declare-fun res!284846 () Bool)

(assert (=> b!477117 (=> (not res!284846) (not e!280328))))

(assert (=> b!477117 (= res!284846 (containsKey!349 lt!217355 (_1!4507 lt!217322)))))

(declare-fun b!477118 () Bool)

(assert (=> b!477118 (= e!280328 (contains!2575 lt!217355 (tuple2!8995 (_1!4507 lt!217322) (_2!4507 lt!217322))))))

(assert (= (and d!75961 res!284845) b!477117))

(assert (= (and b!477117 res!284846) b!477118))

(assert (=> d!75961 m!459101))

(declare-fun m!459485 () Bool)

(assert (=> d!75961 m!459485))

(declare-fun m!459487 () Bool)

(assert (=> d!75961 m!459487))

(declare-fun m!459489 () Bool)

(assert (=> b!477117 m!459489))

(declare-fun m!459491 () Bool)

(assert (=> b!477118 m!459491))

(assert (=> d!75801 d!75961))

(declare-fun call!30763 () List!9086)

(declare-fun c!57391 () Bool)

(declare-fun e!280333 () List!9086)

(declare-fun bm!30758 () Bool)

(assert (=> bm!30758 (= call!30763 ($colon$colon!110 e!280333 (ite c!57391 (h!9938 (toList!3976 lm!215)) (tuple2!8995 (_1!4507 lt!217322) (_2!4507 lt!217322)))))))

(declare-fun c!57393 () Bool)

(assert (=> bm!30758 (= c!57393 c!57391)))

(declare-fun b!477119 () Bool)

(declare-fun c!57394 () Bool)

(assert (=> b!477119 (= c!57394 (and (is-Cons!9082 (toList!3976 lm!215)) (bvsgt (_1!4507 (h!9938 (toList!3976 lm!215))) (_1!4507 lt!217322))))))

(declare-fun e!280330 () List!9086)

(declare-fun e!280332 () List!9086)

(assert (=> b!477119 (= e!280330 e!280332)))

(declare-fun bm!30759 () Bool)

(declare-fun call!30761 () List!9086)

(assert (=> bm!30759 (= call!30761 call!30763)))

(declare-fun b!477120 () Bool)

(declare-fun e!280329 () List!9086)

(assert (=> b!477120 (= e!280329 call!30763)))

(declare-fun d!75963 () Bool)

(declare-fun e!280331 () Bool)

(assert (=> d!75963 e!280331))

(declare-fun res!284848 () Bool)

(assert (=> d!75963 (=> (not res!284848) (not e!280331))))

(declare-fun lt!217476 () List!9086)

(assert (=> d!75963 (= res!284848 (isStrictlySorted!385 lt!217476))))

(assert (=> d!75963 (= lt!217476 e!280329)))

(assert (=> d!75963 (= c!57391 (and (is-Cons!9082 (toList!3976 lm!215)) (bvslt (_1!4507 (h!9938 (toList!3976 lm!215))) (_1!4507 lt!217322))))))

(assert (=> d!75963 (isStrictlySorted!385 (toList!3976 lm!215))))

(assert (=> d!75963 (= (insertStrictlySorted!212 (toList!3976 lm!215) (_1!4507 lt!217322) (_2!4507 lt!217322)) lt!217476)))

(declare-fun bm!30760 () Bool)

(declare-fun call!30762 () List!9086)

(assert (=> bm!30760 (= call!30762 call!30761)))

(declare-fun b!477121 () Bool)

(assert (=> b!477121 (= e!280330 call!30761)))

(declare-fun b!477122 () Bool)

(assert (=> b!477122 (= e!280329 e!280330)))

(declare-fun c!57392 () Bool)

(assert (=> b!477122 (= c!57392 (and (is-Cons!9082 (toList!3976 lm!215)) (= (_1!4507 (h!9938 (toList!3976 lm!215))) (_1!4507 lt!217322))))))

(declare-fun b!477123 () Bool)

(assert (=> b!477123 (= e!280332 call!30762)))

(declare-fun b!477124 () Bool)

(assert (=> b!477124 (= e!280331 (contains!2575 lt!217476 (tuple2!8995 (_1!4507 lt!217322) (_2!4507 lt!217322))))))

(declare-fun b!477125 () Bool)

(assert (=> b!477125 (= e!280333 (insertStrictlySorted!212 (t!15162 (toList!3976 lm!215)) (_1!4507 lt!217322) (_2!4507 lt!217322)))))

(declare-fun b!477126 () Bool)

(declare-fun res!284847 () Bool)

(assert (=> b!477126 (=> (not res!284847) (not e!280331))))

(assert (=> b!477126 (= res!284847 (containsKey!349 lt!217476 (_1!4507 lt!217322)))))

(declare-fun b!477127 () Bool)

(assert (=> b!477127 (= e!280332 call!30762)))

(declare-fun b!477128 () Bool)

(assert (=> b!477128 (= e!280333 (ite c!57392 (t!15162 (toList!3976 lm!215)) (ite c!57394 (Cons!9082 (h!9938 (toList!3976 lm!215)) (t!15162 (toList!3976 lm!215))) Nil!9083)))))

(assert (= (and d!75963 c!57391) b!477120))

(assert (= (and d!75963 (not c!57391)) b!477122))

(assert (= (and b!477122 c!57392) b!477121))

(assert (= (and b!477122 (not c!57392)) b!477119))

(assert (= (and b!477119 c!57394) b!477127))

(assert (= (and b!477119 (not c!57394)) b!477123))

(assert (= (or b!477127 b!477123) bm!30760))

(assert (= (or b!477121 bm!30760) bm!30759))

(assert (= (or b!477120 bm!30759) bm!30758))

(assert (= (and bm!30758 c!57393) b!477125))

(assert (= (and bm!30758 (not c!57393)) b!477128))

(assert (= (and d!75963 res!284848) b!477126))

(assert (= (and b!477126 res!284847) b!477124))

(declare-fun m!459493 () Bool)

(assert (=> b!477124 m!459493))

(declare-fun m!459495 () Bool)

(assert (=> bm!30758 m!459495))

(declare-fun m!459497 () Bool)

(assert (=> b!477125 m!459497))

(declare-fun m!459499 () Bool)

(assert (=> b!477126 m!459499))

(declare-fun m!459501 () Bool)

(assert (=> d!75963 m!459501))

(assert (=> d!75963 m!459167))

(assert (=> d!75801 d!75963))

(declare-fun d!75965 () Bool)

(declare-fun res!284849 () Bool)

(declare-fun e!280334 () Bool)

(assert (=> d!75965 (=> res!284849 e!280334)))

(assert (=> d!75965 (= res!284849 (is-Nil!9083 (t!15162 (toList!3976 (+!1738 lm!215 lt!217322)))))))

(assert (=> d!75965 (= (forall!199 (t!15162 (toList!3976 (+!1738 lm!215 lt!217322))) p!166) e!280334)))

(declare-fun b!477129 () Bool)

(declare-fun e!280335 () Bool)

(assert (=> b!477129 (= e!280334 e!280335)))

(declare-fun res!284850 () Bool)

(assert (=> b!477129 (=> (not res!284850) (not e!280335))))

(assert (=> b!477129 (= res!284850 (dynLambda!945 p!166 (h!9938 (t!15162 (toList!3976 (+!1738 lm!215 lt!217322))))))))

(declare-fun b!477130 () Bool)

(assert (=> b!477130 (= e!280335 (forall!199 (t!15162 (t!15162 (toList!3976 (+!1738 lm!215 lt!217322)))) p!166))))

(assert (= (and d!75965 (not res!284849)) b!477129))

(assert (= (and b!477129 res!284850) b!477130))

(declare-fun b_lambda!10663 () Bool)

(assert (=> (not b_lambda!10663) (not b!477129)))

(declare-fun t!15220 () Bool)

(declare-fun tb!4091 () Bool)

(assert (=> (and start!42876 (= p!166 p!166) t!15220) tb!4091))

(declare-fun result!7659 () Bool)

(assert (=> tb!4091 (= result!7659 true)))

(assert (=> b!477129 t!15220))

(declare-fun b_and!20803 () Bool)

(assert (= b_and!20801 (and (=> t!15220 result!7659) b_and!20803)))

(declare-fun m!459503 () Bool)

(assert (=> b!477129 m!459503))

(declare-fun m!459505 () Bool)

(assert (=> b!477130 m!459505))

(assert (=> b!476754 d!75965))

(declare-fun d!75967 () Bool)

(declare-fun res!284851 () Bool)

(declare-fun e!280336 () Bool)

(assert (=> d!75967 (=> res!284851 e!280336)))

(assert (=> d!75967 (= res!284851 (is-Nil!9083 (t!15162 (toList!3976 (+!1738 lt!217323 lt!217322)))))))

(assert (=> d!75967 (= (forall!199 (t!15162 (toList!3976 (+!1738 lt!217323 lt!217322))) p!166) e!280336)))

(declare-fun b!477131 () Bool)

(declare-fun e!280337 () Bool)

(assert (=> b!477131 (= e!280336 e!280337)))

(declare-fun res!284852 () Bool)

(assert (=> b!477131 (=> (not res!284852) (not e!280337))))

(assert (=> b!477131 (= res!284852 (dynLambda!945 p!166 (h!9938 (t!15162 (toList!3976 (+!1738 lt!217323 lt!217322))))))))

(declare-fun b!477132 () Bool)

(assert (=> b!477132 (= e!280337 (forall!199 (t!15162 (t!15162 (toList!3976 (+!1738 lt!217323 lt!217322)))) p!166))))

(assert (= (and d!75967 (not res!284851)) b!477131))

(assert (= (and b!477131 res!284852) b!477132))

(declare-fun b_lambda!10665 () Bool)

(assert (=> (not b_lambda!10665) (not b!477131)))

(declare-fun t!15222 () Bool)

(declare-fun tb!4093 () Bool)

(assert (=> (and start!42876 (= p!166 p!166) t!15222) tb!4093))

(declare-fun result!7661 () Bool)

(assert (=> tb!4093 (= result!7661 true)))

(assert (=> b!477131 t!15222))

(declare-fun b_and!20805 () Bool)

(assert (= b_and!20803 (and (=> t!15222 result!7661) b_and!20805)))

(declare-fun m!459507 () Bool)

(assert (=> b!477131 m!459507))

(declare-fun m!459509 () Bool)

(assert (=> b!477132 m!459509))

(assert (=> b!476730 d!75967))

(declare-fun d!75969 () Bool)

(declare-fun lt!217477 () Bool)

(assert (=> d!75969 (= lt!217477 (member lt!217322 (content!208 (toList!3976 lt!217356))))))

(declare-fun e!280338 () Bool)

(assert (=> d!75969 (= lt!217477 e!280338)))

(declare-fun res!284854 () Bool)

(assert (=> d!75969 (=> (not res!284854) (not e!280338))))

(assert (=> d!75969 (= res!284854 (is-Cons!9082 (toList!3976 lt!217356)))))

(assert (=> d!75969 (= (contains!2575 (toList!3976 lt!217356) lt!217322) lt!217477)))

(declare-fun b!477133 () Bool)

(declare-fun e!280339 () Bool)

(assert (=> b!477133 (= e!280338 e!280339)))

(declare-fun res!284853 () Bool)

(assert (=> b!477133 (=> res!284853 e!280339)))

(assert (=> b!477133 (= res!284853 (= (h!9938 (toList!3976 lt!217356)) lt!217322))))

(declare-fun b!477134 () Bool)

(assert (=> b!477134 (= e!280339 (contains!2575 (t!15162 (toList!3976 lt!217356)) lt!217322))))

(assert (= (and d!75969 res!284854) b!477133))

(assert (= (and b!477133 (not res!284853)) b!477134))

(declare-fun m!459511 () Bool)

(assert (=> d!75969 m!459511))

(declare-fun m!459513 () Bool)

(assert (=> d!75969 m!459513))

(declare-fun m!459515 () Bool)

(assert (=> b!477134 m!459515))

(assert (=> b!476752 d!75969))

(declare-fun d!75971 () Bool)

(declare-fun res!284859 () Bool)

(declare-fun e!280344 () Bool)

(assert (=> d!75971 (=> res!284859 e!280344)))

(assert (=> d!75971 (= res!284859 (or (is-Nil!9083 (toList!3976 lm!215)) (is-Nil!9083 (t!15162 (toList!3976 lm!215)))))))

(assert (=> d!75971 (= (isStrictlySorted!385 (toList!3976 lm!215)) e!280344)))

(declare-fun b!477139 () Bool)

(declare-fun e!280345 () Bool)

(assert (=> b!477139 (= e!280344 e!280345)))

(declare-fun res!284860 () Bool)

(assert (=> b!477139 (=> (not res!284860) (not e!280345))))

(assert (=> b!477139 (= res!284860 (bvslt (_1!4507 (h!9938 (toList!3976 lm!215))) (_1!4507 (h!9938 (t!15162 (toList!3976 lm!215))))))))

(declare-fun b!477140 () Bool)

(assert (=> b!477140 (= e!280345 (isStrictlySorted!385 (t!15162 (toList!3976 lm!215))))))

(assert (= (and d!75971 (not res!284859)) b!477139))

(assert (= (and b!477139 res!284860) b!477140))

(declare-fun m!459517 () Bool)

(assert (=> b!477140 m!459517))

(assert (=> d!75823 d!75971))

(declare-fun b!477141 () Bool)

(declare-fun e!280346 () Bool)

(declare-fun tp!42421 () Bool)

(assert (=> b!477141 (= e!280346 (and tp_is_empty!13529 tp!42421))))

(assert (=> b!476794 (= tp!42415 e!280346)))

(assert (= (and b!476794 (is-Cons!9082 (t!15162 (toList!3976 lm!215)))) b!477141))

(declare-fun b_lambda!10667 () Bool)

(assert (= b_lambda!10659 (or (and start!42876 b_free!12107) b_lambda!10667)))

(declare-fun b_lambda!10669 () Bool)

(assert (= b_lambda!10663 (or (and start!42876 b_free!12107) b_lambda!10669)))

(declare-fun b_lambda!10671 () Bool)

(assert (= b_lambda!10665 (or (and start!42876 b_free!12107) b_lambda!10671)))

(declare-fun b_lambda!10673 () Bool)

(assert (= b_lambda!10661 (or (and start!42876 b_free!12107) b_lambda!10673)))

(declare-fun b_lambda!10675 () Bool)

(assert (= b_lambda!10625 (or (and start!42876 b_free!12107) b_lambda!10675)))

(push 1)

(assert tp_is_empty!13529)

(assert (not b!477085))

(assert (not b!477124))

(assert (not b!477083))

(assert (not b_lambda!10673))

(assert (not b!477115))

(assert (not b!476907))

(assert (not b_lambda!10593))

(assert (not d!75969))

(assert (not b!477101))

(assert (not d!75957))

(assert (not b!476872))

(assert (not b_lambda!10669))

(assert (not b_next!12107))

(assert (not b!477112))

(assert (not b_lambda!10595))

(assert (not d!75945))

(assert (not b_lambda!10667))

(assert (not d!75961))

(assert (not b_lambda!10601))

(assert (not d!75963))

(assert (not bm!30755))

(assert (not b!477134))

(assert (not b!477091))

(assert (not b!477126))

(assert (not b!477099))

(assert (not d!75943))

(assert b_and!20805)

(assert (not b!477090))

(assert (not b!477110))

(assert (not b!477118))

(assert (not d!75875))

(assert (not b!477084))

(assert (not b_lambda!10599))

(assert (not d!75941))

(assert (not d!75885))

(assert (not b!476962))

(assert (not b!477140))

(assert (not b!477117))

(assert (not b!477130))

(assert (not b!477104))

(assert (not b!477125))

(assert (not b!476905))

(assert (not b_lambda!10675))

(assert (not b_lambda!10553))

(assert (not b!476963))

(assert (not d!75891))

(assert (not b!477092))

(assert (not b!476934))

(assert (not bm!30758))

(assert (not b!477108))

(assert (not b!477132))

(assert (not b_lambda!10671))

(assert (not b_lambda!10597))

(assert (not b!477141))

(check-sat)

(pop 1)

(push 1)

(assert b_and!20805)

(assert (not b_next!12107))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76153 () Bool)

(declare-fun res!284995 () Bool)

(declare-fun e!280533 () Bool)

(assert (=> d!76153 (=> res!284995 e!280533)))

(assert (=> d!76153 (= res!284995 (and (is-Cons!9082 lt!217355) (= (_1!4507 (h!9938 lt!217355)) (_1!4507 lt!217322))))))

(assert (=> d!76153 (= (containsKey!349 lt!217355 (_1!4507 lt!217322)) e!280533)))

(declare-fun b!477394 () Bool)

(declare-fun e!280534 () Bool)

(assert (=> b!477394 (= e!280533 e!280534)))

(declare-fun res!284996 () Bool)

(assert (=> b!477394 (=> (not res!284996) (not e!280534))))

(assert (=> b!477394 (= res!284996 (and (or (not (is-Cons!9082 lt!217355)) (bvsle (_1!4507 (h!9938 lt!217355)) (_1!4507 lt!217322))) (is-Cons!9082 lt!217355) (bvslt (_1!4507 (h!9938 lt!217355)) (_1!4507 lt!217322))))))

(declare-fun b!477395 () Bool)

(assert (=> b!477395 (= e!280534 (containsKey!349 (t!15162 lt!217355) (_1!4507 lt!217322)))))

(assert (= (and d!76153 (not res!284995)) b!477394))

(assert (= (and b!477394 res!284996) b!477395))

(declare-fun m!459835 () Bool)

(assert (=> b!477395 m!459835))

(assert (=> b!477117 d!76153))

(declare-fun d!76155 () Bool)

(declare-fun lt!217516 () Bool)

(assert (=> d!76155 (= lt!217516 (member (tuple2!8995 (_1!4507 lt!217322) (_2!4507 lt!217322)) (content!208 lt!217355)))))

(declare-fun e!280535 () Bool)

(assert (=> d!76155 (= lt!217516 e!280535)))

(declare-fun res!284998 () Bool)

(assert (=> d!76155 (=> (not res!284998) (not e!280535))))

(assert (=> d!76155 (= res!284998 (is-Cons!9082 lt!217355))))

(assert (=> d!76155 (= (contains!2575 lt!217355 (tuple2!8995 (_1!4507 lt!217322) (_2!4507 lt!217322))) lt!217516)))

(declare-fun b!477396 () Bool)

(declare-fun e!280536 () Bool)

(assert (=> b!477396 (= e!280535 e!280536)))

(declare-fun res!284997 () Bool)

(assert (=> b!477396 (=> res!284997 e!280536)))

(assert (=> b!477396 (= res!284997 (= (h!9938 lt!217355) (tuple2!8995 (_1!4507 lt!217322) (_2!4507 lt!217322))))))

(declare-fun b!477397 () Bool)

(assert (=> b!477397 (= e!280536 (contains!2575 (t!15162 lt!217355) (tuple2!8995 (_1!4507 lt!217322) (_2!4507 lt!217322))))))

(assert (= (and d!76155 res!284998) b!477396))

(assert (= (and b!477396 (not res!284997)) b!477397))

(declare-fun m!459837 () Bool)

(assert (=> d!76155 m!459837))

(declare-fun m!459839 () Bool)

(assert (=> d!76155 m!459839))

(declare-fun m!459841 () Bool)

(assert (=> b!477397 m!459841))

(assert (=> b!477118 d!76155))

(declare-fun d!76157 () Bool)

(declare-fun res!284999 () Bool)

(declare-fun e!280537 () Bool)

(assert (=> d!76157 (=> res!284999 e!280537)))

(assert (=> d!76157 (= res!284999 (is-Nil!9083 (t!15162 (toList!3976 (+!1738 lt!217323 (tuple2!8995 a!501 b!85))))))))

(assert (=> d!76157 (= (forall!199 (t!15162 (toList!3976 (+!1738 lt!217323 (tuple2!8995 a!501 b!85)))) p!166) e!280537)))

(declare-fun b!477398 () Bool)

(declare-fun e!280538 () Bool)

(assert (=> b!477398 (= e!280537 e!280538)))

(declare-fun res!285000 () Bool)

(assert (=> b!477398 (=> (not res!285000) (not e!280538))))

(assert (=> b!477398 (= res!285000 (dynLambda!945 p!166 (h!9938 (t!15162 (toList!3976 (+!1738 lt!217323 (tuple2!8995 a!501 b!85)))))))))

(declare-fun b!477399 () Bool)

(assert (=> b!477399 (= e!280538 (forall!199 (t!15162 (t!15162 (toList!3976 (+!1738 lt!217323 (tuple2!8995 a!501 b!85))))) p!166))))

(assert (= (and d!76157 (not res!284999)) b!477398))

(assert (= (and b!477398 res!285000) b!477399))

(declare-fun b_lambda!10717 () Bool)

(assert (=> (not b_lambda!10717) (not b!477398)))

(declare-fun t!15246 () Bool)

(declare-fun tb!4115 () Bool)

(assert (=> (and start!42876 (= p!166 p!166) t!15246) tb!4115))

(declare-fun result!7683 () Bool)

(assert (=> tb!4115 (= result!7683 true)))

(assert (=> b!477398 t!15246))

(declare-fun b_and!20827 () Bool)

(assert (= b_and!20805 (and (=> t!15246 result!7683) b_and!20827)))

(declare-fun m!459843 () Bool)

(assert (=> b!477398 m!459843))

(declare-fun m!459845 () Bool)

(assert (=> b!477399 m!459845))

(assert (=> b!477090 d!76157))

(declare-fun b!477401 () Bool)

(declare-fun e!280539 () Option!392)

(declare-fun e!280540 () Option!392)

(assert (=> b!477401 (= e!280539 e!280540)))

(declare-fun c!57454 () Bool)

(assert (=> b!477401 (= c!57454 (and (is-Cons!9082 (t!15162 (toList!3976 lt!217356))) (not (= (_1!4507 (h!9938 (t!15162 (toList!3976 lt!217356)))) (_1!4507 lt!217322)))))))

(declare-fun d!76159 () Bool)

(declare-fun c!57453 () Bool)

(assert (=> d!76159 (= c!57453 (and (is-Cons!9082 (t!15162 (toList!3976 lt!217356))) (= (_1!4507 (h!9938 (t!15162 (toList!3976 lt!217356)))) (_1!4507 lt!217322))))))

(assert (=> d!76159 (= (getValueByKey!386 (t!15162 (toList!3976 lt!217356)) (_1!4507 lt!217322)) e!280539)))

(declare-fun b!477400 () Bool)

(assert (=> b!477400 (= e!280539 (Some!391 (_2!4507 (h!9938 (t!15162 (toList!3976 lt!217356))))))))

(declare-fun b!477402 () Bool)

(assert (=> b!477402 (= e!280540 (getValueByKey!386 (t!15162 (t!15162 (toList!3976 lt!217356))) (_1!4507 lt!217322)))))

(declare-fun b!477403 () Bool)

(assert (=> b!477403 (= e!280540 None!390)))

(assert (= (and d!76159 c!57453) b!477400))

(assert (= (and d!76159 (not c!57453)) b!477401))

(assert (= (and b!477401 c!57454) b!477402))

(assert (= (and b!477401 (not c!57454)) b!477403))

(declare-fun m!459847 () Bool)

(assert (=> b!477402 m!459847))

(assert (=> b!477108 d!76159))

(declare-fun d!76161 () Bool)

(declare-fun res!285001 () Bool)

(declare-fun e!280541 () Bool)

(assert (=> d!76161 (=> res!285001 e!280541)))

(assert (=> d!76161 (= res!285001 (or (is-Nil!9083 lt!217463) (is-Nil!9083 (t!15162 lt!217463))))))

(assert (=> d!76161 (= (isStrictlySorted!385 lt!217463) e!280541)))

(declare-fun b!477404 () Bool)

(declare-fun e!280542 () Bool)

(assert (=> b!477404 (= e!280541 e!280542)))

(declare-fun res!285002 () Bool)

(assert (=> b!477404 (=> (not res!285002) (not e!280542))))

(assert (=> b!477404 (= res!285002 (bvslt (_1!4507 (h!9938 lt!217463)) (_1!4507 (h!9938 (t!15162 lt!217463)))))))

(declare-fun b!477405 () Bool)

(assert (=> b!477405 (= e!280542 (isStrictlySorted!385 (t!15162 lt!217463)))))

(assert (= (and d!76161 (not res!285001)) b!477404))

(assert (= (and b!477404 res!285002) b!477405))

(declare-fun m!459849 () Bool)

(assert (=> b!477405 m!459849))

(assert (=> d!75891 d!76161))

(declare-fun d!76163 () Bool)

(declare-fun res!285003 () Bool)

