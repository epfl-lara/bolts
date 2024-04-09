; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!87332 () Bool)

(assert start!87332)

(declare-fun b!1011839 () Bool)

(declare-fun res!679858 () Bool)

(declare-fun e!569264 () Bool)

(assert (=> b!1011839 (=> (not res!679858) (not e!569264))))

(declare-datatypes ((B!1320 0))(
  ( (B!1321 (val!11744 Int)) )
))
(declare-datatypes ((tuple2!15124 0))(
  ( (tuple2!15125 (_1!7572 (_ BitVec 64)) (_2!7572 B!1320)) )
))
(declare-datatypes ((List!21452 0))(
  ( (Nil!21449) (Cons!21448 (h!22646 tuple2!15124) (t!30461 List!21452)) )
))
(declare-fun l!412 () List!21452)

(declare-fun value!115 () B!1320)

(declare-datatypes ((List!21453 0))(
  ( (Nil!21450) (Cons!21449 (h!22647 (_ BitVec 64)) (t!30462 List!21453)) )
))
(declare-fun isEmpty!781 (List!21453) Bool)

(declare-fun getKeysOf!9 (List!21452 B!1320) List!21453)

(assert (=> b!1011839 (= res!679858 (not (isEmpty!781 (getKeysOf!9 (t!30461 l!412) value!115))))))

(declare-fun b!1011841 () Bool)

(declare-fun e!569263 () Bool)

(declare-fun tp_is_empty!23387 () Bool)

(declare-fun tp!70236 () Bool)

(assert (=> b!1011841 (= e!569263 (and tp_is_empty!23387 tp!70236))))

(declare-fun b!1011840 () Bool)

(declare-fun isStrictlySorted!520 (List!21452) Bool)

(assert (=> b!1011840 (= e!569264 (not (isStrictlySorted!520 (t!30461 l!412))))))

(declare-fun b!1011838 () Bool)

(declare-fun res!679856 () Bool)

(assert (=> b!1011838 (=> (not res!679856) (not e!569264))))

(assert (=> b!1011838 (= res!679856 (and (is-Cons!21448 l!412) (= (_2!7572 (h!22646 l!412)) value!115)))))

(declare-fun res!679857 () Bool)

(assert (=> start!87332 (=> (not res!679857) (not e!569264))))

(assert (=> start!87332 (= res!679857 (isStrictlySorted!520 l!412))))

(assert (=> start!87332 e!569264))

(assert (=> start!87332 e!569263))

(assert (=> start!87332 tp_is_empty!23387))

(assert (= (and start!87332 res!679857) b!1011838))

(assert (= (and b!1011838 res!679856) b!1011839))

(assert (= (and b!1011839 res!679858) b!1011840))

(assert (= (and start!87332 (is-Cons!21448 l!412)) b!1011841))

(declare-fun m!935857 () Bool)

(assert (=> b!1011839 m!935857))

(assert (=> b!1011839 m!935857))

(declare-fun m!935859 () Bool)

(assert (=> b!1011839 m!935859))

(declare-fun m!935861 () Bool)

(assert (=> b!1011840 m!935861))

(declare-fun m!935863 () Bool)

(assert (=> start!87332 m!935863))

(push 1)

(assert tp_is_empty!23387)

(assert (not b!1011841))

(assert (not b!1011839))

(assert (not b!1011840))

(assert (not start!87332))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!120193 () Bool)

(declare-fun res!679871 () Bool)

(declare-fun e!569277 () Bool)

(assert (=> d!120193 (=> res!679871 e!569277)))

(assert (=> d!120193 (= res!679871 (or (is-Nil!21449 l!412) (is-Nil!21449 (t!30461 l!412))))))

(assert (=> d!120193 (= (isStrictlySorted!520 l!412) e!569277)))

(declare-fun b!1011854 () Bool)

(declare-fun e!569278 () Bool)

(assert (=> b!1011854 (= e!569277 e!569278)))

(declare-fun res!679872 () Bool)

(assert (=> b!1011854 (=> (not res!679872) (not e!569278))))

(assert (=> b!1011854 (= res!679872 (bvslt (_1!7572 (h!22646 l!412)) (_1!7572 (h!22646 (t!30461 l!412)))))))

(declare-fun b!1011855 () Bool)

(assert (=> b!1011855 (= e!569278 (isStrictlySorted!520 (t!30461 l!412)))))

(assert (= (and d!120193 (not res!679871)) b!1011854))

(assert (= (and b!1011854 res!679872) b!1011855))

(assert (=> b!1011855 m!935861))

(assert (=> start!87332 d!120193))

(declare-fun d!120197 () Bool)

(declare-fun res!679873 () Bool)

(declare-fun e!569279 () Bool)

(assert (=> d!120197 (=> res!679873 e!569279)))

(assert (=> d!120197 (= res!679873 (or (is-Nil!21449 (t!30461 l!412)) (is-Nil!21449 (t!30461 (t!30461 l!412)))))))

(assert (=> d!120197 (= (isStrictlySorted!520 (t!30461 l!412)) e!569279)))

(declare-fun b!1011856 () Bool)

(declare-fun e!569280 () Bool)

(assert (=> b!1011856 (= e!569279 e!569280)))

(declare-fun res!679874 () Bool)

(assert (=> b!1011856 (=> (not res!679874) (not e!569280))))

(assert (=> b!1011856 (= res!679874 (bvslt (_1!7572 (h!22646 (t!30461 l!412))) (_1!7572 (h!22646 (t!30461 (t!30461 l!412))))))))

(declare-fun b!1011857 () Bool)

(assert (=> b!1011857 (= e!569280 (isStrictlySorted!520 (t!30461 (t!30461 l!412))))))

(assert (= (and d!120197 (not res!679873)) b!1011856))

(assert (= (and b!1011856 res!679874) b!1011857))

(declare-fun m!935867 () Bool)

(assert (=> b!1011857 m!935867))

(assert (=> b!1011840 d!120197))

(declare-fun d!120199 () Bool)

(assert (=> d!120199 (= (isEmpty!781 (getKeysOf!9 (t!30461 l!412) value!115)) (is-Nil!21450 (getKeysOf!9 (t!30461 l!412) value!115)))))

(assert (=> b!1011839 d!120199))

(declare-fun b!1011936 () Bool)

(assert (=> b!1011936 true))

(assert (=> b!1011936 true))

(assert (=> b!1011936 true))

(declare-fun bs!28751 () Bool)

(declare-fun b!1011935 () Bool)

(assert (= bs!28751 (and b!1011935 b!1011936)))

(declare-fun lambda!268 () Int)

(declare-fun lambda!265 () Int)

(declare-fun lt!447267 () tuple2!15124)

(declare-fun lt!447265 () List!21452)

(declare-fun lt!447268 () List!21452)

(declare-fun lt!447264 () tuple2!15124)

(assert (=> bs!28751 (= (= (Cons!21448 lt!447264 lt!447265) (Cons!21448 lt!447267 lt!447268)) (= lambda!268 lambda!265))))

(assert (=> b!1011935 true))

(assert (=> b!1011935 true))

(assert (=> b!1011935 true))

(declare-fun bs!28752 () Bool)

(declare-fun d!120201 () Bool)

(assert (= bs!28752 (and d!120201 b!1011936)))

(declare-fun lambda!269 () Int)

(assert (=> bs!28752 (= (= (t!30461 l!412) (Cons!21448 lt!447267 lt!447268)) (= lambda!269 lambda!265))))

(declare-fun bs!28753 () Bool)

(assert (= bs!28753 (and d!120201 b!1011935)))

(assert (=> bs!28753 (= (= (t!30461 l!412) (Cons!21448 lt!447264 lt!447265)) (= lambda!269 lambda!268))))

(assert (=> d!120201 true))

(assert (=> d!120201 true))

(declare-fun bm!42475 () Bool)

(declare-fun call!42479 () Bool)

(declare-fun call!42481 () List!21453)

(assert (=> bm!42475 (= call!42479 (isEmpty!781 call!42481))))

(declare-fun b!1011934 () Bool)

(declare-fun e!569314 () List!21453)

(declare-fun e!569315 () List!21453)

(assert (=> b!1011934 (= e!569314 e!569315)))

(declare-fun c!102173 () Bool)

(assert (=> b!1011934 (= c!102173 (and (is-Cons!21448 (t!30461 l!412)) (not (= (_2!7572 (h!22646 (t!30461 l!412))) value!115))))))

(declare-datatypes ((Unit!32998 0))(
  ( (Unit!32999) )
))
(declare-fun e!569316 () Unit!32998)

(declare-fun lt!447261 () Unit!32998)

(assert (=> b!1011935 (= e!569316 lt!447261)))

(assert (=> b!1011935 (= lt!447265 (t!30461 (t!30461 l!412)))))

(declare-fun lt!447262 () List!21453)

(assert (=> b!1011935 (= lt!447262 call!42481)))

(assert (=> b!1011935 (= lt!447264 (h!22646 (t!30461 l!412)))))

(declare-fun call!42478 () Unit!32998)

(assert (=> b!1011935 (= lt!447261 call!42478)))

(declare-fun call!42480 () Bool)

(assert (=> b!1011935 call!42480))

(assert (=> b!1011936 call!42480))

(declare-fun lt!447259 () Unit!32998)

(assert (=> b!1011936 (= lt!447259 call!42478)))

(assert (=> b!1011936 (= lt!447267 (h!22646 (t!30461 l!412)))))

(declare-fun lt!447263 () List!21453)

(assert (=> b!1011936 (= lt!447263 call!42481)))

(assert (=> b!1011936 (= lt!447268 (t!30461 (t!30461 l!412)))))

(declare-fun e!569313 () Unit!32998)

(assert (=> b!1011936 (= e!569313 lt!447259)))

(declare-fun c!102174 () Bool)

(declare-fun bm!42476 () Bool)

(declare-fun lemmaForallGetValueByKeySameWithASmallerHead!6 (List!21452 List!21453 B!1320 tuple2!15124) Unit!32998)

(assert (=> bm!42476 (= call!42478 (lemmaForallGetValueByKeySameWithASmallerHead!6 (ite c!102174 lt!447268 lt!447265) (ite c!102174 lt!447263 lt!447262) value!115 (ite c!102174 lt!447267 lt!447264)))))

(declare-fun b!1011937 () Bool)

(declare-fun lt!447266 () Unit!32998)

(assert (=> b!1011937 (= lt!447266 e!569316)))

(declare-fun c!102171 () Bool)

(assert (=> b!1011937 (= c!102171 (not call!42479))))

(declare-fun lt!447269 () List!21453)

(assert (=> b!1011937 (= lt!447269 call!42481)))

(assert (=> b!1011937 (= e!569315 call!42481)))

(declare-fun b!1011938 () Bool)

(assert (=> b!1011938 (= e!569314 (Cons!21449 (_1!7572 (h!22646 (t!30461 l!412))) call!42481))))

(declare-fun c!102172 () Bool)

(assert (=> b!1011938 (= c!102172 (not call!42479))))

(declare-fun lt!447270 () Unit!32998)

(assert (=> b!1011938 (= lt!447270 e!569313)))

(declare-fun lt!447260 () List!21453)

