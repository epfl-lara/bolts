; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87328 () Bool)

(assert start!87328)

(declare-fun b!1011816 () Bool)

(declare-fun e!569252 () Bool)

(declare-datatypes ((B!1316 0))(
  ( (B!1317 (val!11742 Int)) )
))
(declare-datatypes ((tuple2!15120 0))(
  ( (tuple2!15121 (_1!7570 (_ BitVec 64)) (_2!7570 B!1316)) )
))
(declare-datatypes ((List!21448 0))(
  ( (Nil!21445) (Cons!21444 (h!22642 tuple2!15120) (t!30457 List!21448)) )
))
(declare-fun l!412 () List!21448)

(declare-fun isStrictlySorted!518 (List!21448) Bool)

(assert (=> b!1011816 (= e!569252 (not (isStrictlySorted!518 (t!30457 l!412))))))

(declare-fun res!679838 () Bool)

(assert (=> start!87328 (=> (not res!679838) (not e!569252))))

(assert (=> start!87328 (= res!679838 (isStrictlySorted!518 l!412))))

(assert (=> start!87328 e!569252))

(declare-fun e!569251 () Bool)

(assert (=> start!87328 e!569251))

(declare-fun tp_is_empty!23383 () Bool)

(assert (=> start!87328 tp_is_empty!23383))

(declare-fun b!1011817 () Bool)

(declare-fun tp!70230 () Bool)

(assert (=> b!1011817 (= e!569251 (and tp_is_empty!23383 tp!70230))))

(declare-fun b!1011814 () Bool)

(declare-fun res!679840 () Bool)

(assert (=> b!1011814 (=> (not res!679840) (not e!569252))))

(declare-fun value!115 () B!1316)

(assert (=> b!1011814 (= res!679840 (and (is-Cons!21444 l!412) (= (_2!7570 (h!22642 l!412)) value!115)))))

(declare-fun b!1011815 () Bool)

(declare-fun res!679839 () Bool)

(assert (=> b!1011815 (=> (not res!679839) (not e!569252))))

(declare-datatypes ((List!21449 0))(
  ( (Nil!21446) (Cons!21445 (h!22643 (_ BitVec 64)) (t!30458 List!21449)) )
))
(declare-fun isEmpty!779 (List!21449) Bool)

(declare-fun getKeysOf!7 (List!21448 B!1316) List!21449)

(assert (=> b!1011815 (= res!679839 (not (isEmpty!779 (getKeysOf!7 (t!30457 l!412) value!115))))))

(assert (= (and start!87328 res!679838) b!1011814))

(assert (= (and b!1011814 res!679840) b!1011815))

(assert (= (and b!1011815 res!679839) b!1011816))

(assert (= (and start!87328 (is-Cons!21444 l!412)) b!1011817))

(declare-fun m!935841 () Bool)

(assert (=> b!1011816 m!935841))

(declare-fun m!935843 () Bool)

(assert (=> start!87328 m!935843))

(declare-fun m!935845 () Bool)

(assert (=> b!1011815 m!935845))

(assert (=> b!1011815 m!935845))

(declare-fun m!935847 () Bool)

(assert (=> b!1011815 m!935847))

(push 1)

(assert (not start!87328))

(assert (not b!1011816))

(assert (not b!1011815))

(assert (not b!1011817))

(assert tp_is_empty!23383)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120185 () Bool)

(declare-fun res!679863 () Bool)

(declare-fun e!569269 () Bool)

(assert (=> d!120185 (=> res!679863 e!569269)))

(assert (=> d!120185 (= res!679863 (or (is-Nil!21445 l!412) (is-Nil!21445 (t!30457 l!412))))))

(assert (=> d!120185 (= (isStrictlySorted!518 l!412) e!569269)))

(declare-fun b!1011846 () Bool)

(declare-fun e!569270 () Bool)

(assert (=> b!1011846 (= e!569269 e!569270)))

(declare-fun res!679864 () Bool)

(assert (=> b!1011846 (=> (not res!679864) (not e!569270))))

(assert (=> b!1011846 (= res!679864 (bvslt (_1!7570 (h!22642 l!412)) (_1!7570 (h!22642 (t!30457 l!412)))))))

(declare-fun b!1011847 () Bool)

(assert (=> b!1011847 (= e!569270 (isStrictlySorted!518 (t!30457 l!412)))))

(assert (= (and d!120185 (not res!679863)) b!1011846))

(assert (= (and b!1011846 res!679864) b!1011847))

(assert (=> b!1011847 m!935841))

(assert (=> start!87328 d!120185))

(declare-fun d!120189 () Bool)

(declare-fun res!679865 () Bool)

(declare-fun e!569271 () Bool)

(assert (=> d!120189 (=> res!679865 e!569271)))

(assert (=> d!120189 (= res!679865 (or (is-Nil!21445 (t!30457 l!412)) (is-Nil!21445 (t!30457 (t!30457 l!412)))))))

(assert (=> d!120189 (= (isStrictlySorted!518 (t!30457 l!412)) e!569271)))

(declare-fun b!1011848 () Bool)

(declare-fun e!569272 () Bool)

(assert (=> b!1011848 (= e!569271 e!569272)))

(declare-fun res!679866 () Bool)

(assert (=> b!1011848 (=> (not res!679866) (not e!569272))))

(assert (=> b!1011848 (= res!679866 (bvslt (_1!7570 (h!22642 (t!30457 l!412))) (_1!7570 (h!22642 (t!30457 (t!30457 l!412))))))))

(declare-fun b!1011849 () Bool)

(assert (=> b!1011849 (= e!569272 (isStrictlySorted!518 (t!30457 (t!30457 l!412))))))

(assert (= (and d!120189 (not res!679865)) b!1011848))

(assert (= (and b!1011848 res!679866) b!1011849))

(declare-fun m!935865 () Bool)

(assert (=> b!1011849 m!935865))

(assert (=> b!1011816 d!120189))

(declare-fun d!120191 () Bool)

(assert (=> d!120191 (= (isEmpty!779 (getKeysOf!7 (t!30457 l!412) value!115)) (is-Nil!21446 (getKeysOf!7 (t!30457 l!412) value!115)))))

(assert (=> b!1011815 d!120191))

(declare-fun b!1011921 () Bool)

(assert (=> b!1011921 true))

(assert (=> b!1011921 true))

(assert (=> b!1011921 true))

(declare-fun bs!28745 () Bool)

(declare-fun b!1011914 () Bool)

(assert (= bs!28745 (and b!1011914 b!1011921)))

(declare-fun lt!447246 () tuple2!15120)

(declare-fun lt!447254 () tuple2!15120)

(declare-fun lambda!263 () Int)

(declare-fun lt!447237 () List!21448)

(declare-fun lt!447245 () List!21448)

(declare-fun lambda!262 () Int)

(assert (=> bs!28745 (= (= (Cons!21444 lt!447254 lt!447245) (Cons!21444 lt!447246 lt!447237)) (= lambda!263 lambda!262))))

(assert (=> b!1011914 true))

(assert (=> b!1011914 true))

(assert (=> b!1011914 true))

(declare-fun bs!28747 () Bool)

(declare-fun d!120195 () Bool)

(assert (= bs!28747 (and d!120195 b!1011921)))

(declare-fun lambda!267 () Int)

(assert (=> bs!28747 (= (= (t!30457 l!412) (Cons!21444 lt!447246 lt!447237)) (= lambda!267 lambda!262))))

(declare-fun bs!28750 () Bool)

(assert (= bs!28750 (and d!120195 b!1011914)))

(assert (=> bs!28750 (= (= (t!30457 l!412) (Cons!21444 lt!447254 lt!447245)) (= lambda!267 lambda!263))))

(assert (=> d!120195 true))

(assert (=> d!120195 true))

(declare-fun lt!447249 () List!21449)

(declare-fun forall!203 (List!21449 Int) Bool)

(assert (=> d!120195 (forall!203 lt!447249 lambda!267)))

(declare-fun e!569305 () List!21449)

(assert (=> d!120195 (= lt!447249 e!569305)))

(declare-fun c!102166 () Bool)

(assert (=> d!120195 (= c!102166 (and (is-Cons!21444 (t!30457 l!412)) (= (_2!7570 (h!22642 (t!30457 l!412))) value!115)))))

(assert (=> d!120195 (isStrictlySorted!518 (t!30457 l!412))))

(assert (=> d!120195 (= (getKeysOf!7 (t!30457 l!412) value!115) lt!447249)))

(declare-fun b!1011906 () Bool)

(declare-datatypes ((Unit!32993 0))(
  ( (Unit!32994) )
))
(declare-fun e!569307 () Unit!32993)

(declare-fun Unit!32995 () Unit!32993)

(assert (=> b!1011906 (= e!569307 Unit!32995)))

(declare-fun b!1011908 () Bool)

(declare-fun e!569311 () List!21449)

(assert (=> b!1011908 (= e!569305 e!569311)))

(declare-fun c!102164 () Bool)

(assert (=> b!1011908 (= c!102164 (and (is-Cons!21444 (t!30457 l!412)) (not (= (_2!7570 (h!22642 (t!30457 l!412))) value!115))))))

(declare-fun bm!42468 () Bool)

(declare-fun call!42476 () Bool)

(declare-fun call!42472 () List!21449)

(assert (=> bm!42468 (= call!42476 (isEmpty!779 call!42472))))

(declare-fun b!1011909 () Bool)

(declare-fun e!569312 () Unit!32993)

(declare-fun Unit!32996 () Unit!32993)

(assert (=> b!1011909 (= e!569312 Unit!32996)))

(declare-fun b!1011911 () Bool)

(assert (=> b!1011911 (= e!569311 Nil!21446)))

(declare-fun bm!42470 () Bool)

(declare-fun lt!447257 () List!21449)

(declare-fun lt!447248 () List!21449)

(declare-fun call!42470 () Unit!32993)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!5 (List!21448 List!21449 B!1316 tuple2!15120) Unit!32993)

(assert (=> bm!42470 (= call!42470 (lemmaForallGetValueByKeySameWithASmallerHead!5 (ite c!102166 lt!447237 lt!447245) (ite c!102166 lt!447248 lt!447257) value!115 (ite c!102166 lt!447246 lt!447254)))))

(declare-fun lt!447235 () Unit!32993)

(assert (=> b!1011914 (= e!569312 lt!447235)))

(assert (=> b!1011914 (= lt!447245 (t!30457 (t!30457 l!412)))))

(assert (=> b!1011914 (= lt!447257 call!42472)))

(assert (=> b!1011914 (= lt!447254 (h!22642 (t!30457 l!412)))))

(assert (=> b!1011914 (= lt!447235 call!42470)))

(declare-fun call!42475 () Bool)

(assert (=> b!1011914 call!42475))

(declare-fun b!1011916 () Bool)

(declare-fun lt!447238 () Unit!32993)

(assert (=> b!1011916 (= lt!447238 e!569312)))

(declare-fun c!102168 () Bool)

(assert (=> b!1011916 (= c!102168 (not call!42476))))

(declare-fun lt!447243 () List!21449)

(assert (=> b!1011916 (= lt!447243 call!42472)))

(assert (=> b!1011916 (= e!569311 call!42472)))

(declare-fun bm!42472 () Bool)

(assert (=> bm!42472 (= call!42472 (getKeysOf!7 (t!30457 (t!30457 l!412)) value!115))))

(declare-fun b!1011918 () Bool)

(assert (=> b!1011918 (= e!569305 (Cons!21445 (_1!7570 (h!22642 (t!30457 l!412))) call!42472))))

(declare-fun c!102169 () Bool)

(assert (=> b!1011918 (= c!102169 (not call!42476))))

(declare-fun lt!447250 () Unit!32993)

(assert (=> b!1011918 (= lt!447250 e!569307)))

(declare-fun bm!42473 () Bool)

(assert (=> bm!42473 (= call!42475 (forall!203 (ite c!102166 lt!447248 lt!447257) (ite c!102166 lambda!262 lambda!263)))))

(assert (=> b!1011921 call!42475))

(declare-fun lt!447240 () Unit!32993)

(assert (=> b!1011921 (= lt!447240 call!42470)))

(assert (=> b!1011921 (= lt!447246 (h!22642 (t!30457 l!412)))))

(assert (=> b!1011921 (= lt!447248 call!42472)))

(assert (=> b!1011921 (= lt!447237 (t!30457 (t!30457 l!412)))))

(assert (=> b!1011921 (= e!569307 lt!447240)))

(assert (= (and d!120195 c!102166) b!1011918))

(assert (= (and d!120195 (not c!102166)) b!1011908))

(assert (= (and b!1011918 c!102169) b!1011921))

(assert (= (and b!1011918 (not c!102169)) b!1011906))

(assert (= (and b!1011908 c!102164) b!1011916))

(assert (= (and b!1011908 (not c!102164)) b!1011911))

(assert (= (and b!1011916 c!102168) b!1011914))

(assert (= (and b!1011916 (not c!102168)) b!1011909))

(assert (= (or b!1011921 b!1011914) bm!42470))

(assert (= (or b!1011921 b!1011914) bm!42473))

(assert (= (or b!1011918 b!1011921 b!1011914 b!1011916) bm!42472))

(assert (= (or b!1011918 b!1011916) bm!42468))

(declare-fun m!935871 () Bool)

(assert (=> d!120195 m!935871))

(assert (=> d!120195 m!935841))

(declare-fun m!935875 () Bool)

(assert (=> bm!42473 m!935875))

(declare-fun m!935879 () Bool)

(assert (=> bm!42470 m!935879))

(declare-fun m!935883 () Bool)

(assert (=> bm!42468 m!935883))

(declare-fun m!935887 () Bool)

(assert (=> bm!42472 m!935887))

(assert (=> b!1011815 d!120195))

(declare-fun b!1011952 () Bool)

(declare-fun e!569319 () Bool)

(declare-fun tp!70239 () Bool)

(assert (=> b!1011952 (= e!569319 (and tp_is_empty!23383 tp!70239))))

(assert (=> b!1011817 (= tp!70230 e!569319)))

(assert (= (and b!1011817 (is-Cons!21444 (t!30457 l!412))) b!1011952))

(push 1)

