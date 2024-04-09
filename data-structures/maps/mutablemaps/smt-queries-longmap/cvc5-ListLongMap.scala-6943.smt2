; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87460 () Bool)

(assert start!87460)

(declare-fun b!1012813 () Bool)

(assert (=> b!1012813 true))

(assert (=> b!1012813 true))

(declare-fun b!1012812 () Bool)

(declare-fun e!569771 () Bool)

(declare-datatypes ((B!1364 0))(
  ( (B!1365 (val!11766 Int)) )
))
(declare-datatypes ((tuple2!15168 0))(
  ( (tuple2!15169 (_1!7594 (_ BitVec 64)) (_2!7594 B!1364)) )
))
(declare-datatypes ((List!21493 0))(
  ( (Nil!21490) (Cons!21489 (h!22687 tuple2!15168) (t!30502 List!21493)) )
))
(declare-fun l!412 () List!21493)

(declare-fun isStrictlySorted!542 (List!21493) Bool)

(assert (=> b!1012812 (= e!569771 (not (isStrictlySorted!542 (t!30502 l!412))))))

(declare-datatypes ((Unit!33048 0))(
  ( (Unit!33049) )
))
(declare-fun lt!447692 () Unit!33048)

(declare-fun e!569770 () Unit!33048)

(assert (=> b!1012812 (= lt!447692 e!569770)))

(declare-fun c!102303 () Bool)

(declare-datatypes ((List!21494 0))(
  ( (Nil!21491) (Cons!21490 (h!22688 (_ BitVec 64)) (t!30503 List!21494)) )
))
(declare-fun lt!447693 () List!21494)

(declare-fun isEmpty!808 (List!21494) Bool)

(assert (=> b!1012812 (= c!102303 (not (isEmpty!808 lt!447693)))))

(declare-fun value!115 () B!1364)

(declare-fun getKeysOf!28 (List!21493 B!1364) List!21494)

(assert (=> b!1012812 (= lt!447693 (getKeysOf!28 (t!30502 l!412) value!115))))

(declare-fun lt!447691 () Unit!33048)

(assert (=> b!1012813 (= e!569770 lt!447691)))

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!19 (List!21493 List!21494 B!1364 tuple2!15168) Unit!33048)

(assert (=> b!1012813 (= lt!447691 (lemmaForallGetValueByKeySameWithASmallerHead!19 (t!30502 l!412) lt!447693 value!115 (h!22687 l!412)))))

(declare-fun lambda!419 () Int)

(declare-fun forall!224 (List!21494 Int) Bool)

(assert (=> b!1012813 (forall!224 lt!447693 lambda!419)))

(declare-fun b!1012814 () Bool)

(declare-fun res!680253 () Bool)

(assert (=> b!1012814 (=> (not res!680253) (not e!569771))))

(assert (=> b!1012814 (= res!680253 (and (not (= (_2!7594 (h!22687 l!412)) value!115)) (is-Cons!21489 l!412)))))

(declare-fun b!1012815 () Bool)

(declare-fun e!569769 () Bool)

(declare-fun tp_is_empty!23431 () Bool)

(declare-fun tp!70347 () Bool)

(assert (=> b!1012815 (= e!569769 (and tp_is_empty!23431 tp!70347))))

(declare-fun res!680254 () Bool)

(assert (=> start!87460 (=> (not res!680254) (not e!569771))))

(assert (=> start!87460 (= res!680254 (isStrictlySorted!542 l!412))))

(assert (=> start!87460 e!569771))

(assert (=> start!87460 e!569769))

(assert (=> start!87460 tp_is_empty!23431))

(declare-fun b!1012816 () Bool)

(declare-fun Unit!33050 () Unit!33048)

(assert (=> b!1012816 (= e!569770 Unit!33050)))

(assert (= (and start!87460 res!680254) b!1012814))

(assert (= (and b!1012814 res!680253) b!1012812))

(assert (= (and b!1012812 c!102303) b!1012813))

(assert (= (and b!1012812 (not c!102303)) b!1012816))

(assert (= (and start!87460 (is-Cons!21489 l!412)) b!1012815))

(declare-fun m!936267 () Bool)

(assert (=> b!1012812 m!936267))

(declare-fun m!936269 () Bool)

(assert (=> b!1012812 m!936269))

(declare-fun m!936271 () Bool)

(assert (=> b!1012812 m!936271))

(declare-fun m!936273 () Bool)

(assert (=> b!1012813 m!936273))

(declare-fun m!936275 () Bool)

(assert (=> b!1012813 m!936275))

(declare-fun m!936277 () Bool)

(assert (=> start!87460 m!936277))

(push 1)

(assert (not b!1012815))

(assert tp_is_empty!23431)

(assert (not b!1012812))

(assert (not start!87460))

(assert (not b!1012813))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120321 () Bool)

(declare-fun res!680277 () Bool)

(declare-fun e!569796 () Bool)

(assert (=> d!120321 (=> res!680277 e!569796)))

(assert (=> d!120321 (= res!680277 (or (is-Nil!21490 (t!30502 l!412)) (is-Nil!21490 (t!30502 (t!30502 l!412)))))))

(assert (=> d!120321 (= (isStrictlySorted!542 (t!30502 l!412)) e!569796)))

(declare-fun b!1012867 () Bool)

(declare-fun e!569797 () Bool)

(assert (=> b!1012867 (= e!569796 e!569797)))

(declare-fun res!680278 () Bool)

(assert (=> b!1012867 (=> (not res!680278) (not e!569797))))

(assert (=> b!1012867 (= res!680278 (bvslt (_1!7594 (h!22687 (t!30502 l!412))) (_1!7594 (h!22687 (t!30502 (t!30502 l!412))))))))

(declare-fun b!1012868 () Bool)

(assert (=> b!1012868 (= e!569797 (isStrictlySorted!542 (t!30502 (t!30502 l!412))))))

(assert (= (and d!120321 (not res!680277)) b!1012867))

(assert (= (and b!1012867 res!680278) b!1012868))

(declare-fun m!936303 () Bool)

(assert (=> b!1012868 m!936303))

(assert (=> b!1012812 d!120321))

(declare-fun d!120323 () Bool)

(assert (=> d!120323 (= (isEmpty!808 lt!447693) (is-Nil!21491 lt!447693))))

(assert (=> b!1012812 d!120323))

(declare-fun bs!28847 () Bool)

(declare-fun b!1012940 () Bool)

(assert (= bs!28847 (and b!1012940 b!1012813)))

(declare-fun lt!447783 () tuple2!15168)

(declare-fun lambda!442 () Int)

(declare-fun lt!447779 () List!21493)

(assert (=> bs!28847 (= (= (Cons!21489 lt!447783 lt!447779) l!412) (= lambda!442 lambda!419))))

(assert (=> b!1012940 true))

(assert (=> b!1012940 true))

(assert (=> b!1012940 true))

(declare-fun bs!28848 () Bool)

(declare-fun b!1012939 () Bool)

(assert (= bs!28848 (and b!1012939 b!1012813)))

(declare-fun lt!447786 () tuple2!15168)

(declare-fun lt!447781 () List!21493)

(declare-fun lambda!445 () Int)

(assert (=> bs!28848 (= (= (Cons!21489 lt!447786 lt!447781) l!412) (= lambda!445 lambda!419))))

(declare-fun bs!28849 () Bool)

(assert (= bs!28849 (and b!1012939 b!1012940)))

(assert (=> bs!28849 (= (= (Cons!21489 lt!447786 lt!447781) (Cons!21489 lt!447783 lt!447779)) (= lambda!445 lambda!442))))

(assert (=> b!1012939 true))

(assert (=> b!1012939 true))

(assert (=> b!1012939 true))

(declare-fun bs!28850 () Bool)

(declare-fun d!120325 () Bool)

(assert (= bs!28850 (and d!120325 b!1012813)))

(declare-fun lambda!446 () Int)

(assert (=> bs!28850 (= (= (t!30502 l!412) l!412) (= lambda!446 lambda!419))))

(declare-fun bs!28851 () Bool)

(assert (= bs!28851 (and d!120325 b!1012940)))

(assert (=> bs!28851 (= (= (t!30502 l!412) (Cons!21489 lt!447783 lt!447779)) (= lambda!446 lambda!442))))

(declare-fun bs!28852 () Bool)

(assert (= bs!28852 (and d!120325 b!1012939)))

(assert (=> bs!28852 (= (= (t!30502 l!412) (Cons!21489 lt!447786 lt!447781)) (= lambda!446 lambda!445))))

(assert (=> d!120325 true))

(assert (=> d!120325 true))

(declare-fun b!1012936 () Bool)

(declare-fun e!569839 () List!21494)

(declare-fun call!42599 () List!21494)

(assert (=> b!1012936 (= e!569839 (Cons!21490 (_1!7594 (h!22687 (t!30502 l!412))) call!42599))))

(declare-fun c!102333 () Bool)

(declare-fun call!42601 () Bool)

(assert (=> b!1012936 (= c!102333 (not call!42601))))

(declare-fun lt!447777 () Unit!33048)

(declare-fun e!569841 () Unit!33048)

(assert (=> b!1012936 (= lt!447777 e!569841)))

(declare-fun b!1012937 () Bool)

(declare-fun lt!447782 () Unit!33048)

(declare-fun e!569842 () Unit!33048)

(assert (=> b!1012937 (= lt!447782 e!569842)))

(declare-fun c!102330 () Bool)

(assert (=> b!1012937 (= c!102330 (not call!42601))))

(declare-fun lt!447778 () List!21494)

(assert (=> b!1012937 (= lt!447778 call!42599)))

(declare-fun e!569840 () List!21494)

(assert (=> b!1012937 (= e!569840 call!42599)))

(declare-fun call!42600 () Bool)

(declare-fun c!102332 () Bool)

(declare-fun lt!447775 () List!21494)

(declare-fun lt!447785 () List!21494)

(declare-fun bm!42595 () Bool)

(assert (=> bm!42595 (= call!42600 (forall!224 (ite c!102332 lt!447785 lt!447775) (ite c!102332 lambda!442 lambda!445)))))

(declare-fun b!1012938 () Bool)

(declare-fun Unit!33057 () Unit!33048)

(assert (=> b!1012938 (= e!569841 Unit!33057)))

(declare-fun call!42598 () Unit!33048)

(declare-fun bm!42596 () Bool)

(assert (=> bm!42596 (= call!42598 (lemmaForallGetValueByKeySameWithASmallerHead!19 (ite c!102332 lt!447779 lt!447781) (ite c!102332 lt!447785 lt!447775) value!115 (ite c!102332 lt!447783 lt!447786)))))

(declare-fun lt!447784 () List!21494)

(assert (=> d!120325 (forall!224 lt!447784 lambda!446)))

(assert (=> d!120325 (= lt!447784 e!569839)))

(assert (=> d!120325 (= c!102332 (and (is-Cons!21489 (t!30502 l!412)) (= (_2!7594 (h!22687 (t!30502 l!412))) value!115)))))

(assert (=> d!120325 (isStrictlySorted!542 (t!30502 l!412))))

(assert (=> d!120325 (= (getKeysOf!28 (t!30502 l!412) value!115) lt!447784)))

(declare-fun bm!42597 () Bool)

(assert (=> bm!42597 (= call!42599 (getKeysOf!28 (t!30502 (t!30502 l!412)) value!115))))

(declare-fun lt!447776 () Unit!33048)

(assert (=> b!1012939 (= e!569842 lt!447776)))

(assert (=> b!1012939 (= lt!447781 (t!30502 (t!30502 l!412)))))

(assert (=> b!1012939 (= lt!447775 call!42599)))

(assert (=> b!1012939 (= lt!447786 (h!22687 (t!30502 l!412)))))

(assert (=> b!1012939 (= lt!447776 call!42598)))

(assert (=> b!1012939 call!42600))

(assert (=> b!1012940 call!42600))

(declare-fun lt!447780 () Unit!33048)

(assert (=> b!1012940 (= lt!447780 call!42598)))

(assert (=> b!1012940 (= lt!447783 (h!22687 (t!30502 l!412)))))

(assert (=> b!1012940 (= lt!447785 call!42599)))

(assert (=> b!1012940 (= lt!447779 (t!30502 (t!30502 l!412)))))

(assert (=> b!1012940 (= e!569841 lt!447780)))

(declare-fun b!1012941 () Bool)

(assert (=> b!1012941 (= e!569840 Nil!21491)))

(declare-fun b!1012942 () Bool)

(assert (=> b!1012942 (= e!569839 e!569840)))

(declare-fun c!102331 () Bool)

(assert (=> b!1012942 (= c!102331 (and (is-Cons!21489 (t!30502 l!412)) (not (= (_2!7594 (h!22687 (t!30502 l!412))) value!115))))))

(declare-fun b!1012943 () Bool)

(declare-fun Unit!33058 () Unit!33048)

(assert (=> b!1012943 (= e!569842 Unit!33058)))

(declare-fun bm!42598 () Bool)

(assert (=> bm!42598 (= call!42601 (isEmpty!808 call!42599))))

(assert (= (and d!120325 c!102332) b!1012936))

(assert (= (and d!120325 (not c!102332)) b!1012942))

(assert (= (and b!1012936 c!102333) b!1012940))

(assert (= (and b!1012936 (not c!102333)) b!1012938))

(assert (= (and b!1012942 c!102331) b!1012937))

(assert (= (and b!1012942 (not c!102331)) b!1012941))

(assert (= (and b!1012937 c!102330) b!1012939))

(assert (= (and b!1012937 (not c!102330)) b!1012943))

(assert (= (or b!1012940 b!1012939) bm!42596))

(assert (= (or b!1012940 b!1012939) bm!42595))

(assert (= (or b!1012936 b!1012940 b!1012937 b!1012939) bm!42597))

(assert (= (or b!1012936 b!1012937) bm!42598))

(declare-fun m!936323 () Bool)

(assert (=> bm!42598 m!936323))

(declare-fun m!936325 () Bool)

(assert (=> d!120325 m!936325))

(assert (=> d!120325 m!936267))

(declare-fun m!936327 () Bool)

(assert (=> bm!42597 m!936327))

(declare-fun m!936329 () Bool)

(assert (=> bm!42595 m!936329))

(declare-fun m!936331 () Bool)

(assert (=> bm!42596 m!936331))

(assert (=> b!1012812 d!120325))

(declare-fun d!120343 () Bool)

(declare-fun res!680302 () Bool)

(declare-fun e!569847 () Bool)

(assert (=> d!120343 (=> res!680302 e!569847)))

(assert (=> d!120343 (= res!680302 (or (is-Nil!21490 l!412) (is-Nil!21490 (t!30502 l!412))))))

(assert (=> d!120343 (= (isStrictlySorted!542 l!412) e!569847)))

(declare-fun b!1012954 () Bool)

(declare-fun e!569848 () Bool)

(assert (=> b!1012954 (= e!569847 e!569848)))

(declare-fun res!680303 () Bool)

(assert (=> b!1012954 (=> (not res!680303) (not e!569848))))

(assert (=> b!1012954 (= res!680303 (bvslt (_1!7594 (h!22687 l!412)) (_1!7594 (h!22687 (t!30502 l!412)))))))

(declare-fun b!1012955 () Bool)

(assert (=> b!1012955 (= e!569848 (isStrictlySorted!542 (t!30502 l!412)))))

(assert (= (and d!120343 (not res!680302)) b!1012954))

(assert (= (and b!1012954 res!680303) b!1012955))

(assert (=> b!1012955 m!936267))

(assert (=> start!87460 d!120343))

(declare-fun bs!28865 () Bool)

(declare-fun b!1012983 () Bool)

(assert (= bs!28865 (and b!1012983 b!1012813)))

(declare-fun lambda!462 () Int)

(assert (=> bs!28865 (= (= (t!30502 l!412) l!412) (= lambda!462 lambda!419))))

(declare-fun bs!28867 () Bool)

(assert (= bs!28867 (and b!1012983 b!1012940)))

(assert (=> bs!28867 (= (= (t!30502 l!412) (Cons!21489 lt!447783 lt!447779)) (= lambda!462 lambda!442))))

(declare-fun bs!28868 () Bool)

(assert (= bs!28868 (and b!1012983 b!1012939)))

(assert (=> bs!28868 (= (= (t!30502 l!412) (Cons!21489 lt!447786 lt!447781)) (= lambda!462 lambda!445))))

(declare-fun bs!28869 () Bool)

(assert (= bs!28869 (and b!1012983 d!120325)))

(assert (=> bs!28869 (= lambda!462 lambda!446)))

(assert (=> b!1012983 true))

(assert (=> b!1012983 true))

(declare-fun bs!28873 () Bool)

(declare-fun d!120345 () Bool)

(assert (= bs!28873 (and d!120345 b!1012939)))

(declare-fun lambda!464 () Int)

(assert (=> bs!28873 (= (= (Cons!21489 (h!22687 l!412) (t!30502 l!412)) (Cons!21489 lt!447786 lt!447781)) (= lambda!464 lambda!445))))

(declare-fun bs!28875 () Bool)

(assert (= bs!28875 (and d!120345 d!120325)))

(assert (=> bs!28875 (= (= (Cons!21489 (h!22687 l!412) (t!30502 l!412)) (t!30502 l!412)) (= lambda!464 lambda!446))))

(declare-fun bs!28877 () Bool)

(assert (= bs!28877 (and d!120345 b!1012940)))

(assert (=> bs!28877 (= (= (Cons!21489 (h!22687 l!412) (t!30502 l!412)) (Cons!21489 lt!447783 lt!447779)) (= lambda!464 lambda!442))))

(declare-fun bs!28878 () Bool)

(assert (= bs!28878 (and d!120345 b!1012983)))

(assert (=> bs!28878 (= (= (Cons!21489 (h!22687 l!412) (t!30502 l!412)) (t!30502 l!412)) (= lambda!464 lambda!462))))

(declare-fun bs!28879 () Bool)

(assert (= bs!28879 (and d!120345 b!1012813)))

(assert (=> bs!28879 (= (= (Cons!21489 (h!22687 l!412) (t!30502 l!412)) l!412) (= lambda!464 lambda!419))))

(assert (=> d!120345 true))

(assert (=> d!120345 true))

(assert (=> d!120345 true))

(assert (=> d!120345 (forall!224 lt!447693 lambda!464)))

(declare-fun lt!447825 () Unit!33048)

(declare-fun choose!1635 (List!21493 List!21494 B!1364 tuple2!15168) Unit!33048)

(assert (=> d!120345 (= lt!447825 (choose!1635 (t!30502 l!412) lt!447693 value!115 (h!22687 l!412)))))

(declare-fun e!569861 () Bool)

(assert (=> d!120345 e!569861))

(declare-fun res!680312 () Bool)

(assert (=> d!120345 (=> (not res!680312) (not e!569861))))

(assert (=> d!120345 (= res!680312 (isStrictlySorted!542 (t!30502 l!412)))))

(assert (=> d!120345 (= (lemmaForallGetValueByKeySameWithASmallerHead!19 (t!30502 l!412) lt!447693 value!115 (h!22687 l!412)) lt!447825)))

(declare-fun b!1012982 () Bool)

(declare-fun res!680313 () Bool)

(assert (=> b!1012982 (=> (not res!680313) (not e!569861))))

(declare-fun isEmpty!812 (List!21493) Bool)

(assert (=> b!1012982 (= res!680313 (not (isEmpty!812 (t!30502 l!412))))))

(declare-fun res!680314 () Bool)

(assert (=> b!1012983 (=> (not res!680314) (not e!569861))))

(assert (=> b!1012983 (= res!680314 (forall!224 lt!447693 lambda!462))))

(declare-fun b!1012984 () Bool)

(declare-fun head!929 (List!21493) tuple2!15168)

(assert (=> b!1012984 (= e!569861 (bvslt (_1!7594 (h!22687 l!412)) (_1!7594 (head!929 (t!30502 l!412)))))))

(assert (= (and d!120345 res!680312) b!1012982))

(assert (= (and b!1012982 res!680313) b!1012983))

(assert (= (and b!1012983 res!680314) b!1012984))

(declare-fun m!936343 () Bool)

(assert (=> d!120345 m!936343))

(declare-fun m!936346 () Bool)

(assert (=> d!120345 m!936346))

(assert (=> d!120345 m!936267))

(declare-fun m!936349 () Bool)

(assert (=> b!1012982 m!936349))

(declare-fun m!936351 () Bool)

(assert (=> b!1012983 m!936351))

(declare-fun m!936355 () Bool)

(assert (=> b!1012984 m!936355))

(assert (=> b!1012813 d!120345))

(declare-fun d!120351 () Bool)

(declare-fun res!680325 () Bool)

(declare-fun e!569871 () Bool)

(assert (=> d!120351 (=> res!680325 e!569871)))

