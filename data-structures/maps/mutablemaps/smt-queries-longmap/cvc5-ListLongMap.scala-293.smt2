; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5044 () Bool)

(assert start!5044)

(declare-fun b_free!1345 () Bool)

(declare-fun b_next!1345 () Bool)

(assert (=> start!5044 (= b_free!1345 (not b_next!1345))))

(declare-fun tp!5542 () Bool)

(declare-fun b_and!2301 () Bool)

(assert (=> start!5044 (= tp!5542 b_and!2301)))

(declare-fun e!23794 () Bool)

(declare-fun b!37574 () Bool)

(declare-fun k!388 () (_ BitVec 64))

(declare-datatypes ((B!752 0))(
  ( (B!753 (val!876 Int)) )
))
(declare-datatypes ((tuple2!1416 0))(
  ( (tuple2!1417 (_1!718 (_ BitVec 64)) (_2!718 B!752)) )
))
(declare-datatypes ((List!996 0))(
  ( (Nil!993) (Cons!992 (h!1560 tuple2!1416) (t!3821 List!996)) )
))
(declare-datatypes ((ListLongMap!997 0))(
  ( (ListLongMap!998 (toList!514 List!996)) )
))
(declare-fun lm!252 () ListLongMap!997)

(declare-fun p!304 () Int)

(declare-fun dynLambda!178 (Int tuple2!1416) Bool)

(declare-fun apply!49 (ListLongMap!997 (_ BitVec 64)) B!752)

(assert (=> b!37574 (= e!23794 (not (dynLambda!178 p!304 (tuple2!1417 k!388 (apply!49 lm!252 k!388)))))))

(declare-fun b!37575 () Bool)

(declare-fun res!22707 () Bool)

(assert (=> b!37575 (=> (not res!22707) (not e!23794))))

(declare-fun e!23796 () Bool)

(assert (=> b!37575 (= res!22707 e!23796)))

(declare-fun res!22705 () Bool)

(assert (=> b!37575 (=> res!22705 e!23796)))

(declare-fun isEmpty!217 (ListLongMap!997) Bool)

(assert (=> b!37575 (= res!22705 (isEmpty!217 lm!252))))

(declare-fun res!22706 () Bool)

(assert (=> start!5044 (=> (not res!22706) (not e!23794))))

(declare-fun forall!176 (List!996 Int) Bool)

(assert (=> start!5044 (= res!22706 (forall!176 (toList!514 lm!252) p!304))))

(assert (=> start!5044 e!23794))

(declare-fun e!23795 () Bool)

(declare-fun inv!1646 (ListLongMap!997) Bool)

(assert (=> start!5044 (and (inv!1646 lm!252) e!23795)))

(assert (=> start!5044 tp!5542))

(assert (=> start!5044 true))

(declare-fun b!37576 () Bool)

(declare-fun tp!5543 () Bool)

(assert (=> b!37576 (= e!23795 tp!5543)))

(declare-fun b!37577 () Bool)

(declare-fun res!22708 () Bool)

(assert (=> b!37577 (=> (not res!22708) (not e!23794))))

(declare-fun contains!462 (ListLongMap!997 (_ BitVec 64)) Bool)

(assert (=> b!37577 (= res!22708 (contains!462 lm!252 k!388))))

(declare-fun b!37578 () Bool)

(declare-fun head!848 (List!996) tuple2!1416)

(assert (=> b!37578 (= e!23796 (= (_1!718 (head!848 (toList!514 lm!252))) k!388))))

(assert (= (and start!5044 res!22706) b!37577))

(assert (= (and b!37577 res!22708) b!37575))

(assert (= (and b!37575 (not res!22705)) b!37578))

(assert (= (and b!37575 res!22707) b!37574))

(assert (= start!5044 b!37576))

(declare-fun b_lambda!1981 () Bool)

(assert (=> (not b_lambda!1981) (not b!37574)))

(declare-fun t!3820 () Bool)

(declare-fun tb!811 () Bool)

(assert (=> (and start!5044 (= p!304 p!304) t!3820) tb!811))

(declare-fun result!1353 () Bool)

(assert (=> tb!811 (= result!1353 true)))

(assert (=> b!37574 t!3820))

(declare-fun b_and!2303 () Bool)

(assert (= b_and!2301 (and (=> t!3820 result!1353) b_and!2303)))

(declare-fun m!30383 () Bool)

(assert (=> b!37575 m!30383))

(declare-fun m!30385 () Bool)

(assert (=> start!5044 m!30385))

(declare-fun m!30387 () Bool)

(assert (=> start!5044 m!30387))

(declare-fun m!30389 () Bool)

(assert (=> b!37578 m!30389))

(declare-fun m!30391 () Bool)

(assert (=> b!37574 m!30391))

(declare-fun m!30393 () Bool)

(assert (=> b!37574 m!30393))

(declare-fun m!30395 () Bool)

(assert (=> b!37577 m!30395))

(push 1)

(assert (not b!37577))

(assert (not b!37576))

(assert (not b!37574))

(assert (not b_lambda!1981))

(assert (not b!37575))

(assert (not start!5044))

(assert (not b!37578))

(assert b_and!2303)

(assert (not b_next!1345))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2303)

(assert (not b_next!1345))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!1991 () Bool)

(assert (= b_lambda!1981 (or (and start!5044 b_free!1345) b_lambda!1991)))

(push 1)

(assert (not b!37577))

(assert (not b!37576))

(assert (not b!37574))

(assert (not b!37575))

(assert (not start!5044))

(assert (not b_lambda!1991))

(assert (not b!37578))

(assert b_and!2303)

(assert (not b_next!1345))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2303)

(assert (not b_next!1345))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6009 () Bool)

(declare-datatypes ((Option!97 0))(
  ( (Some!96 (v!1965 B!752)) (None!95) )
))
(declare-fun get!642 (Option!97) B!752)

(declare-fun getValueByKey!91 (List!996 (_ BitVec 64)) Option!97)

(assert (=> d!6009 (= (apply!49 lm!252 k!388) (get!642 (getValueByKey!91 (toList!514 lm!252) k!388)))))

(declare-fun bs!1471 () Bool)

(assert (= bs!1471 d!6009))

(declare-fun m!30435 () Bool)

(assert (=> bs!1471 m!30435))

(assert (=> bs!1471 m!30435))

(declare-fun m!30437 () Bool)

(assert (=> bs!1471 m!30437))

(assert (=> b!37574 d!6009))

(declare-fun d!6017 () Bool)

(declare-fun isEmpty!221 (List!996) Bool)

(assert (=> d!6017 (= (isEmpty!217 lm!252) (isEmpty!221 (toList!514 lm!252)))))

(declare-fun bs!1472 () Bool)

(assert (= bs!1472 d!6017))

(declare-fun m!30439 () Bool)

(assert (=> bs!1472 m!30439))

(assert (=> b!37575 d!6017))

(declare-fun d!6019 () Bool)

(assert (=> d!6019 (= (head!848 (toList!514 lm!252)) (h!1560 (toList!514 lm!252)))))

(assert (=> b!37578 d!6019))

(declare-fun d!6021 () Bool)

(declare-fun res!22741 () Bool)

(declare-fun e!23827 () Bool)

(assert (=> d!6021 (=> res!22741 e!23827)))

(assert (=> d!6021 (= res!22741 (is-Nil!993 (toList!514 lm!252)))))

(assert (=> d!6021 (= (forall!176 (toList!514 lm!252) p!304) e!23827)))

(declare-fun b!37625 () Bool)

(declare-fun e!23828 () Bool)

(assert (=> b!37625 (= e!23827 e!23828)))

(declare-fun res!22742 () Bool)

(assert (=> b!37625 (=> (not res!22742) (not e!23828))))

(assert (=> b!37625 (= res!22742 (dynLambda!178 p!304 (h!1560 (toList!514 lm!252))))))

(declare-fun b!37626 () Bool)

(assert (=> b!37626 (= e!23828 (forall!176 (t!3821 (toList!514 lm!252)) p!304))))

(assert (= (and d!6021 (not res!22741)) b!37625))

(assert (= (and b!37625 res!22742) b!37626))

(declare-fun b_lambda!1993 () Bool)

(assert (=> (not b_lambda!1993) (not b!37625)))

(declare-fun t!3829 () Bool)

(declare-fun tb!817 () Bool)

(assert (=> (and start!5044 (= p!304 p!304) t!3829) tb!817))

(declare-fun result!1359 () Bool)

(assert (=> tb!817 (= result!1359 true)))

(assert (=> b!37625 t!3829))

(declare-fun b_and!2313 () Bool)

(assert (= b_and!2303 (and (=> t!3829 result!1359) b_and!2313)))

(declare-fun m!30441 () Bool)

(assert (=> b!37625 m!30441))

(declare-fun m!30443 () Bool)

(assert (=> b!37626 m!30443))

(assert (=> start!5044 d!6021))

(declare-fun d!6023 () Bool)

(declare-fun isStrictlySorted!184 (List!996) Bool)

(assert (=> d!6023 (= (inv!1646 lm!252) (isStrictlySorted!184 (toList!514 lm!252)))))

(declare-fun bs!1473 () Bool)

(assert (= bs!1473 d!6023))

(declare-fun m!30457 () Bool)

(assert (=> bs!1473 m!30457))

(assert (=> start!5044 d!6023))

(declare-fun d!6031 () Bool)

(declare-fun e!23856 () Bool)

(assert (=> d!6031 e!23856))

(declare-fun res!22759 () Bool)

(assert (=> d!6031 (=> res!22759 e!23856)))

(declare-fun lt!13877 () Bool)

(assert (=> d!6031 (= res!22759 (not lt!13877))))

(declare-fun lt!13876 () Bool)

(assert (=> d!6031 (= lt!13877 lt!13876)))

(declare-datatypes ((Unit!861 0))(
  ( (Unit!862) )
))
(declare-fun lt!13879 () Unit!861)

(declare-fun e!23855 () Unit!861)

(assert (=> d!6031 (= lt!13879 e!23855)))

(declare-fun c!4351 () Bool)

(assert (=> d!6031 (= c!4351 lt!13876)))

(declare-fun containsKey!55 (List!996 (_ BitVec 64)) Bool)

(assert (=> d!6031 (= lt!13876 (containsKey!55 (toList!514 lm!252) k!388))))

(assert (=> d!6031 (= (contains!462 lm!252 k!388) lt!13877)))

(declare-fun b!37661 () Bool)

(declare-fun lt!13878 () Unit!861)

(assert (=> b!37661 (= e!23855 lt!13878)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!52 (List!996 (_ BitVec 64)) Unit!861)

(assert (=> b!37661 (= lt!13878 (lemmaContainsKeyImpliesGetValueByKeyDefined!52 (toList!514 lm!252) k!388))))

(declare-fun isDefined!53 (Option!97) Bool)

(assert (=> b!37661 (isDefined!53 (getValueByKey!91 (toList!514 lm!252) k!388))))

(declare-fun b!37662 () Bool)

(declare-fun Unit!863 () Unit!861)

(assert (=> b!37662 (= e!23855 Unit!863)))

(declare-fun b!37663 () Bool)

(assert (=> b!37663 (= e!23856 (isDefined!53 (getValueByKey!91 (toList!514 lm!252) k!388)))))

(assert (= (and d!6031 c!4351) b!37661))

(assert (= (and d!6031 (not c!4351)) b!37662))

(assert (= (and d!6031 (not res!22759)) b!37663))

(declare-fun m!30473 () Bool)

(assert (=> d!6031 m!30473))

(declare-fun m!30475 () Bool)

(assert (=> b!37661 m!30475))

(assert (=> b!37661 m!30435))

(assert (=> b!37661 m!30435))

(declare-fun m!30477 () Bool)

(assert (=> b!37661 m!30477))

(assert (=> b!37663 m!30435))

(assert (=> b!37663 m!30435))

(assert (=> b!37663 m!30477))

(assert (=> b!37577 d!6031))

(declare-fun b!37668 () Bool)

(declare-fun e!23859 () Bool)

(declare-fun tp_is_empty!1679 () Bool)

(declare-fun tp!5564 () Bool)

(assert (=> b!37668 (= e!23859 (and tp_is_empty!1679 tp!5564))))

(assert (=> b!37576 (= tp!5543 e!23859)))

(assert (= (and b!37576 (is-Cons!992 (toList!514 lm!252))) b!37668))

(declare-fun b_lambda!2003 () Bool)

(assert (= b_lambda!1993 (or (and start!5044 b_free!1345) b_lambda!2003)))

(push 1)

(assert (not b!37626))

(assert (not d!6009))

(assert (not b!37663))

(assert (not b!37668))

(assert tp_is_empty!1679)

(assert (not d!6017))

(assert (not b_lambda!1991))

(assert (not b_lambda!2003))

(assert b_and!2313)

(assert (not d!6023))

(assert (not b!37661))

(assert (not b_next!1345))

(assert (not d!6031))

(check-sat)

(pop 1)

(push 1)

(assert b_and!2313)

(assert (not b_next!1345))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6047 () Bool)

(declare-fun isEmpty!224 (Option!97) Bool)

(assert (=> d!6047 (= (isDefined!53 (getValueByKey!91 (toList!514 lm!252) k!388)) (not (isEmpty!224 (getValueByKey!91 (toList!514 lm!252) k!388))))))

(declare-fun bs!1477 () Bool)

(assert (= bs!1477 d!6047))

(assert (=> bs!1477 m!30435))

(declare-fun m!30483 () Bool)

(assert (=> bs!1477 m!30483))

(assert (=> b!37663 d!6047))

(declare-fun b!37696 () Bool)

(declare-fun e!23877 () Option!97)

(assert (=> b!37696 (= e!23877 (Some!96 (_2!718 (h!1560 (toList!514 lm!252)))))))

(declare-fun d!6051 () Bool)

(declare-fun c!4362 () Bool)

(assert (=> d!6051 (= c!4362 (and (is-Cons!992 (toList!514 lm!252)) (= (_1!718 (h!1560 (toList!514 lm!252))) k!388)))))

(assert (=> d!6051 (= (getValueByKey!91 (toList!514 lm!252) k!388) e!23877)))

(declare-fun b!37699 () Bool)

(declare-fun e!23878 () Option!97)

(assert (=> b!37699 (= e!23878 None!95)))

(declare-fun b!37698 () Bool)

(assert (=> b!37698 (= e!23878 (getValueByKey!91 (t!3821 (toList!514 lm!252)) k!388))))

(declare-fun b!37697 () Bool)

(assert (=> b!37697 (= e!23877 e!23878)))

(declare-fun c!4363 () Bool)

(assert (=> b!37697 (= c!4363 (and (is-Cons!992 (toList!514 lm!252)) (not (= (_1!718 (h!1560 (toList!514 lm!252))) k!388))))))

(assert (= (and d!6051 c!4362) b!37696))

(assert (= (and d!6051 (not c!4362)) b!37697))

(assert (= (and b!37697 c!4363) b!37698))

(assert (= (and b!37697 (not c!4363)) b!37699))

(declare-fun m!30487 () Bool)

(assert (=> b!37698 m!30487))

(assert (=> b!37663 d!6051))

(declare-fun d!6055 () Bool)

(declare-fun res!22777 () Bool)

(declare-fun e!23889 () Bool)

(assert (=> d!6055 (=> res!22777 e!23889)))

(assert (=> d!6055 (= res!22777 (or (is-Nil!993 (toList!514 lm!252)) (is-Nil!993 (t!3821 (toList!514 lm!252)))))))

(assert (=> d!6055 (= (isStrictlySorted!184 (toList!514 lm!252)) e!23889)))

(declare-fun b!37710 () Bool)

(declare-fun e!23890 () Bool)

(assert (=> b!37710 (= e!23889 e!23890)))

(declare-fun res!22778 () Bool)

(assert (=> b!37710 (=> (not res!22778) (not e!23890))))

(assert (=> b!37710 (= res!22778 (bvslt (_1!718 (h!1560 (toList!514 lm!252))) (_1!718 (h!1560 (t!3821 (toList!514 lm!252))))))))

(declare-fun b!37711 () Bool)

(assert (=> b!37711 (= e!23890 (isStrictlySorted!184 (t!3821 (toList!514 lm!252))))))

(assert (= (and d!6055 (not res!22777)) b!37710))

(assert (= (and b!37710 res!22778) b!37711))

(declare-fun m!30495 () Bool)

(assert (=> b!37711 m!30495))

(assert (=> d!6023 d!6055))

(declare-fun d!6065 () Bool)

(declare-fun res!22781 () Bool)

(declare-fun e!23893 () Bool)

(assert (=> d!6065 (=> res!22781 e!23893)))

(assert (=> d!6065 (= res!22781 (is-Nil!993 (t!3821 (toList!514 lm!252))))))

(assert (=> d!6065 (= (forall!176 (t!3821 (toList!514 lm!252)) p!304) e!23893)))

(declare-fun b!37714 () Bool)

(declare-fun e!23894 () Bool)

(assert (=> b!37714 (= e!23893 e!23894)))

(declare-fun res!22782 () Bool)

(assert (=> b!37714 (=> (not res!22782) (not e!23894))))

(assert (=> b!37714 (= res!22782 (dynLambda!178 p!304 (h!1560 (t!3821 (toList!514 lm!252)))))))

(declare-fun b!37715 () Bool)

(assert (=> b!37715 (= e!23894 (forall!176 (t!3821 (t!3821 (toList!514 lm!252))) p!304))))

(assert (= (and d!6065 (not res!22781)) b!37714))

(assert (= (and b!37714 res!22782) b!37715))

(declare-fun b_lambda!2007 () Bool)

(assert (=> (not b_lambda!2007) (not b!37714)))

(declare-fun t!3837 () Bool)

(declare-fun tb!825 () Bool)

(assert (=> (and start!5044 (= p!304 p!304) t!3837) tb!825))

(declare-fun result!1373 () Bool)

(assert (=> tb!825 (= result!1373 true)))

(assert (=> b!37714 t!3837))

(declare-fun b_and!2321 () Bool)

(assert (= b_and!2313 (and (=> t!3837 result!1373) b_and!2321)))

(declare-fun m!30497 () Bool)

(assert (=> b!37714 m!30497))

(declare-fun m!30499 () Bool)

(assert (=> b!37715 m!30499))

(assert (=> b!37626 d!6065))

(declare-fun d!6067 () Bool)

(assert (=> d!6067 (= (get!642 (getValueByKey!91 (toList!514 lm!252) k!388)) (v!1965 (getValueByKey!91 (toList!514 lm!252) k!388)))))

(assert (=> d!6009 d!6067))

(assert (=> d!6009 d!6051))

(declare-fun d!6071 () Bool)

(declare-fun res!22797 () Bool)

(declare-fun e!23910 () Bool)

(assert (=> d!6071 (=> res!22797 e!23910)))

(assert (=> d!6071 (= res!22797 (and (is-Cons!992 (toList!514 lm!252)) (= (_1!718 (h!1560 (toList!514 lm!252))) k!388)))))

(assert (=> d!6071 (= (containsKey!55 (toList!514 lm!252) k!388) e!23910)))

(declare-fun b!37731 () Bool)

(declare-fun e!23911 () Bool)

(assert (=> b!37731 (= e!23910 e!23911)))

(declare-fun res!22798 () Bool)

(assert (=> b!37731 (=> (not res!22798) (not e!23911))))

(assert (=> b!37731 (= res!22798 (and (or (not (is-Cons!992 (toList!514 lm!252))) (bvsle (_1!718 (h!1560 (toList!514 lm!252))) k!388)) (is-Cons!992 (toList!514 lm!252)) (bvslt (_1!718 (h!1560 (toList!514 lm!252))) k!388)))))

(declare-fun b!37732 () Bool)

(assert (=> b!37732 (= e!23911 (containsKey!55 (t!3821 (toList!514 lm!252)) k!388))))

(assert (= (and d!6071 (not res!22797)) b!37731))

(assert (= (and b!37731 res!22798) b!37732))

(declare-fun m!30505 () Bool)

(assert (=> b!37732 m!30505))

(assert (=> d!6031 d!6071))

(declare-fun d!6075 () Bool)

(assert (=> d!6075 (isDefined!53 (getValueByKey!91 (toList!514 lm!252) k!388))))

(declare-fun lt!13888 () Unit!861)

(declare-fun choose!240 (List!996 (_ BitVec 64)) Unit!861)

(assert (=> d!6075 (= lt!13888 (choose!240 (toList!514 lm!252) k!388))))

(declare-fun e!23915 () Bool)

(assert (=> d!6075 e!23915))

(declare-fun res!22802 () Bool)

(assert (=> d!6075 (=> (not res!22802) (not e!23915))))

(assert (=> d!6075 (= res!22802 (isStrictlySorted!184 (toList!514 lm!252)))))

(assert (=> d!6075 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!52 (toList!514 lm!252) k!388) lt!13888)))

(declare-fun b!37736 () Bool)

(assert (=> b!37736 (= e!23915 (containsKey!55 (toList!514 lm!252) k!388))))

(assert (= (and d!6075 res!22802) b!37736))

(assert (=> d!6075 m!30435))

(assert (=> d!6075 m!30435))

(assert (=> d!6075 m!30477))

(declare-fun m!30511 () Bool)

(assert (=> d!6075 m!30511))

(assert (=> d!6075 m!30457))

(assert (=> b!37736 m!30473))

(assert (=> b!37661 d!6075))

(assert (=> b!37661 d!6047))

(assert (=> b!37661 d!6051))

