; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!103544 () Bool)

(assert start!103544)

(declare-fun res!827776 () Bool)

(declare-fun e!703111 () Bool)

(assert (=> start!103544 (=> (not res!827776) (not e!703111))))

(declare-fun a1!66 () (_ BitVec 64))

(declare-fun a2!55 () (_ BitVec 64))

(assert (=> start!103544 (= res!827776 (not (= a1!66 a2!55)))))

(assert (=> start!103544 e!703111))

(assert (=> start!103544 true))

(declare-datatypes ((B!1798 0))(
  ( (B!1799 (val!15661 Int)) )
))
(declare-datatypes ((tuple2!20350 0))(
  ( (tuple2!20351 (_1!10185 (_ BitVec 64)) (_2!10185 B!1798)) )
))
(declare-datatypes ((List!27490 0))(
  ( (Nil!27487) (Cons!27486 (h!28695 tuple2!20350) (t!40960 List!27490)) )
))
(declare-datatypes ((ListLongMap!18331 0))(
  ( (ListLongMap!18332 (toList!9181 List!27490)) )
))
(declare-fun lm!211 () ListLongMap!18331)

(declare-fun e!703112 () Bool)

(declare-fun inv!42774 (ListLongMap!18331) Bool)

(assert (=> start!103544 (and (inv!42774 lm!211) e!703112)))

(declare-fun tp_is_empty!31197 () Bool)

(assert (=> start!103544 tp_is_empty!31197))

(declare-fun b!1240411 () Bool)

(declare-fun res!827775 () Bool)

(assert (=> b!1240411 (=> (not res!827775) (not e!703111))))

(declare-fun isStrictlySorted!730 (List!27490) Bool)

(assert (=> b!1240411 (= res!827775 (isStrictlySorted!730 (toList!9181 lm!211)))))

(declare-fun lt!561871 () tuple2!20350)

(declare-fun b!1240412 () Bool)

(declare-fun -!2007 (ListLongMap!18331 (_ BitVec 64)) ListLongMap!18331)

(declare-fun +!4121 (ListLongMap!18331 tuple2!20350) ListLongMap!18331)

(assert (=> b!1240412 (= e!703111 (not (= (-!2007 (+!4121 lm!211 lt!561871) a2!55) (+!4121 (-!2007 lm!211 a2!55) lt!561871))))))

(declare-fun b1!77 () B!1798)

(assert (=> b!1240412 (= lt!561871 (tuple2!20351 a1!66 b1!77))))

(declare-fun insertStrictlySorted!420 (List!27490 (_ BitVec 64) B!1798) List!27490)

(declare-fun removeStrictlySorted!114 (List!27490 (_ BitVec 64)) List!27490)

(assert (=> b!1240412 (= (insertStrictlySorted!420 (removeStrictlySorted!114 (toList!9181 lm!211) a2!55) a1!66 b1!77) (removeStrictlySorted!114 (insertStrictlySorted!420 (toList!9181 lm!211) a1!66 b1!77) a2!55))))

(declare-datatypes ((Unit!41175 0))(
  ( (Unit!41176) )
))
(declare-fun lt!561870 () Unit!41175)

(declare-fun lemmaInsertAndRemoveStrictlySortedCommutative!2 (List!27490 (_ BitVec 64) B!1798 (_ BitVec 64)) Unit!41175)

(assert (=> b!1240412 (= lt!561870 (lemmaInsertAndRemoveStrictlySortedCommutative!2 (toList!9181 lm!211) a1!66 b1!77 a2!55))))

(declare-fun b!1240413 () Bool)

(declare-fun tp!92541 () Bool)

(assert (=> b!1240413 (= e!703112 tp!92541)))

(assert (= (and start!103544 res!827776) b!1240411))

(assert (= (and b!1240411 res!827775) b!1240412))

(assert (= start!103544 b!1240413))

(declare-fun m!1143711 () Bool)

(assert (=> start!103544 m!1143711))

(declare-fun m!1143713 () Bool)

(assert (=> b!1240411 m!1143713))

(declare-fun m!1143715 () Bool)

(assert (=> b!1240412 m!1143715))

(declare-fun m!1143717 () Bool)

(assert (=> b!1240412 m!1143717))

(declare-fun m!1143719 () Bool)

(assert (=> b!1240412 m!1143719))

(declare-fun m!1143721 () Bool)

(assert (=> b!1240412 m!1143721))

(declare-fun m!1143723 () Bool)

(assert (=> b!1240412 m!1143723))

(declare-fun m!1143725 () Bool)

(assert (=> b!1240412 m!1143725))

(assert (=> b!1240412 m!1143715))

(assert (=> b!1240412 m!1143723))

(declare-fun m!1143727 () Bool)

(assert (=> b!1240412 m!1143727))

(assert (=> b!1240412 m!1143727))

(declare-fun m!1143729 () Bool)

(assert (=> b!1240412 m!1143729))

(assert (=> b!1240412 m!1143721))

(declare-fun m!1143731 () Bool)

(assert (=> b!1240412 m!1143731))

(check-sat (not b!1240411) tp_is_empty!31197 (not start!103544) (not b!1240413) (not b!1240412))
(check-sat)
(get-model)

(declare-fun d!136213 () Bool)

(declare-fun res!827793 () Bool)

(declare-fun e!703129 () Bool)

(assert (=> d!136213 (=> res!827793 e!703129)))

(get-info :version)

(assert (=> d!136213 (= res!827793 (or ((_ is Nil!27487) (toList!9181 lm!211)) ((_ is Nil!27487) (t!40960 (toList!9181 lm!211)))))))

(assert (=> d!136213 (= (isStrictlySorted!730 (toList!9181 lm!211)) e!703129)))

(declare-fun b!1240433 () Bool)

(declare-fun e!703130 () Bool)

(assert (=> b!1240433 (= e!703129 e!703130)))

(declare-fun res!827794 () Bool)

(assert (=> b!1240433 (=> (not res!827794) (not e!703130))))

(assert (=> b!1240433 (= res!827794 (bvslt (_1!10185 (h!28695 (toList!9181 lm!211))) (_1!10185 (h!28695 (t!40960 (toList!9181 lm!211))))))))

(declare-fun b!1240434 () Bool)

(assert (=> b!1240434 (= e!703130 (isStrictlySorted!730 (t!40960 (toList!9181 lm!211))))))

(assert (= (and d!136213 (not res!827793)) b!1240433))

(assert (= (and b!1240433 res!827794) b!1240434))

(declare-fun m!1143757 () Bool)

(assert (=> b!1240434 m!1143757))

(assert (=> b!1240411 d!136213))

(declare-fun b!1240493 () Bool)

(declare-fun e!703163 () List!27490)

(declare-fun e!703164 () List!27490)

(assert (=> b!1240493 (= e!703163 e!703164)))

(declare-fun c!121180 () Bool)

(assert (=> b!1240493 (= c!121180 (and ((_ is Cons!27486) (removeStrictlySorted!114 (toList!9181 lm!211) a2!55)) (= (_1!10185 (h!28695 (removeStrictlySorted!114 (toList!9181 lm!211) a2!55))) a1!66)))))

(declare-fun b!1240494 () Bool)

(declare-fun e!703162 () Bool)

(declare-fun lt!561902 () List!27490)

(declare-fun contains!7397 (List!27490 tuple2!20350) Bool)

(assert (=> b!1240494 (= e!703162 (contains!7397 lt!561902 (tuple2!20351 a1!66 b1!77)))))

(declare-fun b!1240495 () Bool)

(declare-fun call!61143 () List!27490)

(assert (=> b!1240495 (= e!703164 call!61143)))

(declare-fun b!1240496 () Bool)

(declare-fun e!703161 () List!27490)

(declare-fun call!61141 () List!27490)

(assert (=> b!1240496 (= e!703161 call!61141)))

(declare-fun b!1240497 () Bool)

(declare-fun call!61142 () List!27490)

(assert (=> b!1240497 (= e!703163 call!61142)))

(declare-fun c!121179 () Bool)

(declare-fun b!1240498 () Bool)

(assert (=> b!1240498 (= c!121179 (and ((_ is Cons!27486) (removeStrictlySorted!114 (toList!9181 lm!211) a2!55)) (bvsgt (_1!10185 (h!28695 (removeStrictlySorted!114 (toList!9181 lm!211) a2!55))) a1!66)))))

(assert (=> b!1240498 (= e!703164 e!703161)))

(declare-fun b!1240499 () Bool)

(assert (=> b!1240499 (= e!703161 call!61141)))

(declare-fun bm!61138 () Bool)

(declare-fun c!121178 () Bool)

(declare-fun e!703160 () List!27490)

(declare-fun $colon$colon!615 (List!27490 tuple2!20350) List!27490)

(assert (=> bm!61138 (= call!61142 ($colon$colon!615 e!703160 (ite c!121178 (h!28695 (removeStrictlySorted!114 (toList!9181 lm!211) a2!55)) (tuple2!20351 a1!66 b1!77))))))

(declare-fun c!121177 () Bool)

(assert (=> bm!61138 (= c!121177 c!121178)))

(declare-fun b!1240500 () Bool)

(declare-fun res!827813 () Bool)

(assert (=> b!1240500 (=> (not res!827813) (not e!703162))))

(declare-fun containsKey!598 (List!27490 (_ BitVec 64)) Bool)

(assert (=> b!1240500 (= res!827813 (containsKey!598 lt!561902 a1!66))))

(declare-fun b!1240501 () Bool)

(assert (=> b!1240501 (= e!703160 (ite c!121180 (t!40960 (removeStrictlySorted!114 (toList!9181 lm!211) a2!55)) (ite c!121179 (Cons!27486 (h!28695 (removeStrictlySorted!114 (toList!9181 lm!211) a2!55)) (t!40960 (removeStrictlySorted!114 (toList!9181 lm!211) a2!55))) Nil!27487)))))

(declare-fun d!136217 () Bool)

(assert (=> d!136217 e!703162))

(declare-fun res!827814 () Bool)

(assert (=> d!136217 (=> (not res!827814) (not e!703162))))

(assert (=> d!136217 (= res!827814 (isStrictlySorted!730 lt!561902))))

(assert (=> d!136217 (= lt!561902 e!703163)))

(assert (=> d!136217 (= c!121178 (and ((_ is Cons!27486) (removeStrictlySorted!114 (toList!9181 lm!211) a2!55)) (bvslt (_1!10185 (h!28695 (removeStrictlySorted!114 (toList!9181 lm!211) a2!55))) a1!66)))))

(assert (=> d!136217 (isStrictlySorted!730 (removeStrictlySorted!114 (toList!9181 lm!211) a2!55))))

(assert (=> d!136217 (= (insertStrictlySorted!420 (removeStrictlySorted!114 (toList!9181 lm!211) a2!55) a1!66 b1!77) lt!561902)))

(declare-fun bm!61139 () Bool)

(assert (=> bm!61139 (= call!61143 call!61142)))

(declare-fun bm!61140 () Bool)

(assert (=> bm!61140 (= call!61141 call!61143)))

(declare-fun b!1240502 () Bool)

(assert (=> b!1240502 (= e!703160 (insertStrictlySorted!420 (t!40960 (removeStrictlySorted!114 (toList!9181 lm!211) a2!55)) a1!66 b1!77))))

(assert (= (and d!136217 c!121178) b!1240497))

(assert (= (and d!136217 (not c!121178)) b!1240493))

(assert (= (and b!1240493 c!121180) b!1240495))

(assert (= (and b!1240493 (not c!121180)) b!1240498))

(assert (= (and b!1240498 c!121179) b!1240499))

(assert (= (and b!1240498 (not c!121179)) b!1240496))

(assert (= (or b!1240499 b!1240496) bm!61140))

(assert (= (or b!1240495 bm!61140) bm!61139))

(assert (= (or b!1240497 bm!61139) bm!61138))

(assert (= (and bm!61138 c!121177) b!1240502))

(assert (= (and bm!61138 (not c!121177)) b!1240501))

(assert (= (and d!136217 res!827814) b!1240500))

(assert (= (and b!1240500 res!827813) b!1240494))

(declare-fun m!1143797 () Bool)

(assert (=> d!136217 m!1143797))

(assert (=> d!136217 m!1143715))

(declare-fun m!1143799 () Bool)

(assert (=> d!136217 m!1143799))

(declare-fun m!1143801 () Bool)

(assert (=> bm!61138 m!1143801))

(declare-fun m!1143803 () Bool)

(assert (=> b!1240494 m!1143803))

(declare-fun m!1143805 () Bool)

(assert (=> b!1240502 m!1143805))

(declare-fun m!1143807 () Bool)

(assert (=> b!1240500 m!1143807))

(assert (=> b!1240412 d!136217))

(declare-fun d!136227 () Bool)

(declare-fun lt!561915 () ListLongMap!18331)

(declare-fun contains!7399 (ListLongMap!18331 (_ BitVec 64)) Bool)

(assert (=> d!136227 (not (contains!7399 lt!561915 a2!55))))

(assert (=> d!136227 (= lt!561915 (ListLongMap!18332 (removeStrictlySorted!114 (toList!9181 lm!211) a2!55)))))

(assert (=> d!136227 (= (-!2007 lm!211 a2!55) lt!561915)))

(declare-fun bs!34908 () Bool)

(assert (= bs!34908 d!136227))

(declare-fun m!1143809 () Bool)

(assert (=> bs!34908 m!1143809))

(assert (=> bs!34908 m!1143715))

(assert (=> b!1240412 d!136227))

(declare-fun d!136229 () Bool)

(declare-fun lt!561916 () ListLongMap!18331)

(assert (=> d!136229 (not (contains!7399 lt!561916 a2!55))))

(assert (=> d!136229 (= lt!561916 (ListLongMap!18332 (removeStrictlySorted!114 (toList!9181 (+!4121 lm!211 lt!561871)) a2!55)))))

(assert (=> d!136229 (= (-!2007 (+!4121 lm!211 lt!561871) a2!55) lt!561916)))

(declare-fun bs!34909 () Bool)

(assert (= bs!34909 d!136229))

(declare-fun m!1143811 () Bool)

(assert (=> bs!34909 m!1143811))

(declare-fun m!1143813 () Bool)

(assert (=> bs!34909 m!1143813))

(assert (=> b!1240412 d!136229))

(declare-fun b!1240560 () Bool)

(declare-fun e!703195 () List!27490)

(assert (=> b!1240560 (= e!703195 Nil!27487)))

(declare-fun b!1240561 () Bool)

(declare-fun e!703196 () List!27490)

(assert (=> b!1240561 (= e!703196 e!703195)))

(declare-fun c!121202 () Bool)

(assert (=> b!1240561 (= c!121202 (and ((_ is Cons!27486) (insertStrictlySorted!420 (toList!9181 lm!211) a1!66 b1!77)) (not (= (_1!10185 (h!28695 (insertStrictlySorted!420 (toList!9181 lm!211) a1!66 b1!77))) a2!55))))))

(declare-fun b!1240562 () Bool)

(assert (=> b!1240562 (= e!703195 ($colon$colon!615 (removeStrictlySorted!114 (t!40960 (insertStrictlySorted!420 (toList!9181 lm!211) a1!66 b1!77)) a2!55) (h!28695 (insertStrictlySorted!420 (toList!9181 lm!211) a1!66 b1!77))))))

(declare-fun b!1240563 () Bool)

(declare-fun e!703197 () Bool)

(declare-fun lt!561926 () List!27490)

(assert (=> b!1240563 (= e!703197 (not (containsKey!598 lt!561926 a2!55)))))

(declare-fun d!136231 () Bool)

(assert (=> d!136231 e!703197))

(declare-fun res!827831 () Bool)

(assert (=> d!136231 (=> (not res!827831) (not e!703197))))

(assert (=> d!136231 (= res!827831 (isStrictlySorted!730 lt!561926))))

(assert (=> d!136231 (= lt!561926 e!703196)))

(declare-fun c!121201 () Bool)

(assert (=> d!136231 (= c!121201 (and ((_ is Cons!27486) (insertStrictlySorted!420 (toList!9181 lm!211) a1!66 b1!77)) (= (_1!10185 (h!28695 (insertStrictlySorted!420 (toList!9181 lm!211) a1!66 b1!77))) a2!55)))))

(assert (=> d!136231 (isStrictlySorted!730 (insertStrictlySorted!420 (toList!9181 lm!211) a1!66 b1!77))))

(assert (=> d!136231 (= (removeStrictlySorted!114 (insertStrictlySorted!420 (toList!9181 lm!211) a1!66 b1!77) a2!55) lt!561926)))

(declare-fun b!1240559 () Bool)

(assert (=> b!1240559 (= e!703196 (t!40960 (insertStrictlySorted!420 (toList!9181 lm!211) a1!66 b1!77)))))

(assert (= (and d!136231 c!121201) b!1240559))

(assert (= (and d!136231 (not c!121201)) b!1240561))

(assert (= (and b!1240561 c!121202) b!1240562))

(assert (= (and b!1240561 (not c!121202)) b!1240560))

(assert (= (and d!136231 res!827831) b!1240563))

(declare-fun m!1143839 () Bool)

(assert (=> b!1240562 m!1143839))

(assert (=> b!1240562 m!1143839))

(declare-fun m!1143841 () Bool)

(assert (=> b!1240562 m!1143841))

(declare-fun m!1143843 () Bool)

(assert (=> b!1240563 m!1143843))

(declare-fun m!1143845 () Bool)

(assert (=> d!136231 m!1143845))

(assert (=> d!136231 m!1143721))

(declare-fun m!1143847 () Bool)

(assert (=> d!136231 m!1143847))

(assert (=> b!1240412 d!136231))

(declare-fun b!1240565 () Bool)

(declare-fun e!703198 () List!27490)

(assert (=> b!1240565 (= e!703198 Nil!27487)))

(declare-fun b!1240566 () Bool)

(declare-fun e!703199 () List!27490)

(assert (=> b!1240566 (= e!703199 e!703198)))

(declare-fun c!121204 () Bool)

(assert (=> b!1240566 (= c!121204 (and ((_ is Cons!27486) (toList!9181 lm!211)) (not (= (_1!10185 (h!28695 (toList!9181 lm!211))) a2!55))))))

(declare-fun b!1240567 () Bool)

(assert (=> b!1240567 (= e!703198 ($colon$colon!615 (removeStrictlySorted!114 (t!40960 (toList!9181 lm!211)) a2!55) (h!28695 (toList!9181 lm!211))))))

(declare-fun b!1240568 () Bool)

(declare-fun e!703200 () Bool)

(declare-fun lt!561927 () List!27490)

(assert (=> b!1240568 (= e!703200 (not (containsKey!598 lt!561927 a2!55)))))

(declare-fun d!136237 () Bool)

(assert (=> d!136237 e!703200))

(declare-fun res!827832 () Bool)

(assert (=> d!136237 (=> (not res!827832) (not e!703200))))

(assert (=> d!136237 (= res!827832 (isStrictlySorted!730 lt!561927))))

(assert (=> d!136237 (= lt!561927 e!703199)))

(declare-fun c!121203 () Bool)

(assert (=> d!136237 (= c!121203 (and ((_ is Cons!27486) (toList!9181 lm!211)) (= (_1!10185 (h!28695 (toList!9181 lm!211))) a2!55)))))

(assert (=> d!136237 (isStrictlySorted!730 (toList!9181 lm!211))))

(assert (=> d!136237 (= (removeStrictlySorted!114 (toList!9181 lm!211) a2!55) lt!561927)))

(declare-fun b!1240564 () Bool)

(assert (=> b!1240564 (= e!703199 (t!40960 (toList!9181 lm!211)))))

(assert (= (and d!136237 c!121203) b!1240564))

(assert (= (and d!136237 (not c!121203)) b!1240566))

(assert (= (and b!1240566 c!121204) b!1240567))

(assert (= (and b!1240566 (not c!121204)) b!1240565))

(assert (= (and d!136237 res!827832) b!1240568))

(declare-fun m!1143849 () Bool)

(assert (=> b!1240567 m!1143849))

(assert (=> b!1240567 m!1143849))

(declare-fun m!1143851 () Bool)

(assert (=> b!1240567 m!1143851))

(declare-fun m!1143853 () Bool)

(assert (=> b!1240568 m!1143853))

(declare-fun m!1143855 () Bool)

(assert (=> d!136237 m!1143855))

(assert (=> d!136237 m!1143713))

(assert (=> b!1240412 d!136237))

(declare-fun b!1240569 () Bool)

(declare-fun e!703204 () List!27490)

(declare-fun e!703205 () List!27490)

(assert (=> b!1240569 (= e!703204 e!703205)))

(declare-fun c!121208 () Bool)

(assert (=> b!1240569 (= c!121208 (and ((_ is Cons!27486) (toList!9181 lm!211)) (= (_1!10185 (h!28695 (toList!9181 lm!211))) a1!66)))))

(declare-fun b!1240570 () Bool)

(declare-fun lt!561928 () List!27490)

(declare-fun e!703203 () Bool)

(assert (=> b!1240570 (= e!703203 (contains!7397 lt!561928 (tuple2!20351 a1!66 b1!77)))))

(declare-fun b!1240571 () Bool)

(declare-fun call!61155 () List!27490)

(assert (=> b!1240571 (= e!703205 call!61155)))

(declare-fun b!1240572 () Bool)

(declare-fun e!703202 () List!27490)

(declare-fun call!61153 () List!27490)

(assert (=> b!1240572 (= e!703202 call!61153)))

(declare-fun b!1240573 () Bool)

(declare-fun call!61154 () List!27490)

(assert (=> b!1240573 (= e!703204 call!61154)))

(declare-fun b!1240574 () Bool)

(declare-fun c!121207 () Bool)

(assert (=> b!1240574 (= c!121207 (and ((_ is Cons!27486) (toList!9181 lm!211)) (bvsgt (_1!10185 (h!28695 (toList!9181 lm!211))) a1!66)))))

(assert (=> b!1240574 (= e!703205 e!703202)))

(declare-fun b!1240575 () Bool)

(assert (=> b!1240575 (= e!703202 call!61153)))

(declare-fun e!703201 () List!27490)

(declare-fun c!121206 () Bool)

(declare-fun bm!61150 () Bool)

(assert (=> bm!61150 (= call!61154 ($colon$colon!615 e!703201 (ite c!121206 (h!28695 (toList!9181 lm!211)) (tuple2!20351 a1!66 b1!77))))))

(declare-fun c!121205 () Bool)

(assert (=> bm!61150 (= c!121205 c!121206)))

(declare-fun b!1240576 () Bool)

(declare-fun res!827833 () Bool)

(assert (=> b!1240576 (=> (not res!827833) (not e!703203))))

(assert (=> b!1240576 (= res!827833 (containsKey!598 lt!561928 a1!66))))

(declare-fun b!1240577 () Bool)

(assert (=> b!1240577 (= e!703201 (ite c!121208 (t!40960 (toList!9181 lm!211)) (ite c!121207 (Cons!27486 (h!28695 (toList!9181 lm!211)) (t!40960 (toList!9181 lm!211))) Nil!27487)))))

(declare-fun d!136239 () Bool)

(assert (=> d!136239 e!703203))

(declare-fun res!827834 () Bool)

(assert (=> d!136239 (=> (not res!827834) (not e!703203))))

(assert (=> d!136239 (= res!827834 (isStrictlySorted!730 lt!561928))))

(assert (=> d!136239 (= lt!561928 e!703204)))

(assert (=> d!136239 (= c!121206 (and ((_ is Cons!27486) (toList!9181 lm!211)) (bvslt (_1!10185 (h!28695 (toList!9181 lm!211))) a1!66)))))

(assert (=> d!136239 (isStrictlySorted!730 (toList!9181 lm!211))))

(assert (=> d!136239 (= (insertStrictlySorted!420 (toList!9181 lm!211) a1!66 b1!77) lt!561928)))

(declare-fun bm!61151 () Bool)

(assert (=> bm!61151 (= call!61155 call!61154)))

(declare-fun bm!61152 () Bool)

(assert (=> bm!61152 (= call!61153 call!61155)))

(declare-fun b!1240578 () Bool)

(assert (=> b!1240578 (= e!703201 (insertStrictlySorted!420 (t!40960 (toList!9181 lm!211)) a1!66 b1!77))))

(assert (= (and d!136239 c!121206) b!1240573))

(assert (= (and d!136239 (not c!121206)) b!1240569))

(assert (= (and b!1240569 c!121208) b!1240571))

(assert (= (and b!1240569 (not c!121208)) b!1240574))

(assert (= (and b!1240574 c!121207) b!1240575))

(assert (= (and b!1240574 (not c!121207)) b!1240572))

(assert (= (or b!1240575 b!1240572) bm!61152))

(assert (= (or b!1240571 bm!61152) bm!61151))

(assert (= (or b!1240573 bm!61151) bm!61150))

(assert (= (and bm!61150 c!121205) b!1240578))

(assert (= (and bm!61150 (not c!121205)) b!1240577))

(assert (= (and d!136239 res!827834) b!1240576))

(assert (= (and b!1240576 res!827833) b!1240570))

(declare-fun m!1143863 () Bool)

(assert (=> d!136239 m!1143863))

(assert (=> d!136239 m!1143713))

(declare-fun m!1143869 () Bool)

(assert (=> bm!61150 m!1143869))

(declare-fun m!1143871 () Bool)

(assert (=> b!1240570 m!1143871))

(declare-fun m!1143873 () Bool)

(assert (=> b!1240578 m!1143873))

(declare-fun m!1143877 () Bool)

(assert (=> b!1240576 m!1143877))

(assert (=> b!1240412 d!136239))

(declare-fun d!136243 () Bool)

(assert (=> d!136243 (= (insertStrictlySorted!420 (removeStrictlySorted!114 (toList!9181 lm!211) a2!55) a1!66 b1!77) (removeStrictlySorted!114 (insertStrictlySorted!420 (toList!9181 lm!211) a1!66 b1!77) a2!55))))

(declare-fun lt!561942 () Unit!41175)

(declare-fun choose!1840 (List!27490 (_ BitVec 64) B!1798 (_ BitVec 64)) Unit!41175)

(assert (=> d!136243 (= lt!561942 (choose!1840 (toList!9181 lm!211) a1!66 b1!77 a2!55))))

(assert (=> d!136243 (not (= a1!66 a2!55))))

(assert (=> d!136243 (= (lemmaInsertAndRemoveStrictlySortedCommutative!2 (toList!9181 lm!211) a1!66 b1!77 a2!55) lt!561942)))

(declare-fun bs!34912 () Bool)

(assert (= bs!34912 d!136243))

(declare-fun m!1143913 () Bool)

(assert (=> bs!34912 m!1143913))

(assert (=> bs!34912 m!1143715))

(assert (=> bs!34912 m!1143717))

(assert (=> bs!34912 m!1143721))

(assert (=> bs!34912 m!1143715))

(assert (=> bs!34912 m!1143721))

(assert (=> bs!34912 m!1143731))

(assert (=> b!1240412 d!136243))

(declare-fun d!136255 () Bool)

(declare-fun e!703246 () Bool)

(assert (=> d!136255 e!703246))

(declare-fun res!827857 () Bool)

(assert (=> d!136255 (=> (not res!827857) (not e!703246))))

(declare-fun lt!561963 () ListLongMap!18331)

(assert (=> d!136255 (= res!827857 (contains!7399 lt!561963 (_1!10185 lt!561871)))))

(declare-fun lt!561966 () List!27490)

(assert (=> d!136255 (= lt!561963 (ListLongMap!18332 lt!561966))))

(declare-fun lt!561964 () Unit!41175)

(declare-fun lt!561965 () Unit!41175)

(assert (=> d!136255 (= lt!561964 lt!561965)))

(declare-datatypes ((Option!705 0))(
  ( (Some!704 (v!18373 B!1798)) (None!703) )
))
(declare-fun getValueByKey!654 (List!27490 (_ BitVec 64)) Option!705)

(assert (=> d!136255 (= (getValueByKey!654 lt!561966 (_1!10185 lt!561871)) (Some!704 (_2!10185 lt!561871)))))

(declare-fun lemmaContainsTupThenGetReturnValue!329 (List!27490 (_ BitVec 64) B!1798) Unit!41175)

(assert (=> d!136255 (= lt!561965 (lemmaContainsTupThenGetReturnValue!329 lt!561966 (_1!10185 lt!561871) (_2!10185 lt!561871)))))

(assert (=> d!136255 (= lt!561966 (insertStrictlySorted!420 (toList!9181 (-!2007 lm!211 a2!55)) (_1!10185 lt!561871) (_2!10185 lt!561871)))))

(assert (=> d!136255 (= (+!4121 (-!2007 lm!211 a2!55) lt!561871) lt!561963)))

(declare-fun b!1240646 () Bool)

(declare-fun res!827858 () Bool)

(assert (=> b!1240646 (=> (not res!827858) (not e!703246))))

(assert (=> b!1240646 (= res!827858 (= (getValueByKey!654 (toList!9181 lt!561963) (_1!10185 lt!561871)) (Some!704 (_2!10185 lt!561871))))))

(declare-fun b!1240647 () Bool)

(assert (=> b!1240647 (= e!703246 (contains!7397 (toList!9181 lt!561963) lt!561871))))

(assert (= (and d!136255 res!827857) b!1240646))

(assert (= (and b!1240646 res!827858) b!1240647))

(declare-fun m!1143953 () Bool)

(assert (=> d!136255 m!1143953))

(declare-fun m!1143955 () Bool)

(assert (=> d!136255 m!1143955))

(declare-fun m!1143957 () Bool)

(assert (=> d!136255 m!1143957))

(declare-fun m!1143959 () Bool)

(assert (=> d!136255 m!1143959))

(declare-fun m!1143961 () Bool)

(assert (=> b!1240646 m!1143961))

(declare-fun m!1143963 () Bool)

(assert (=> b!1240647 m!1143963))

(assert (=> b!1240412 d!136255))

(declare-fun d!136269 () Bool)

(declare-fun e!703250 () Bool)

(assert (=> d!136269 e!703250))

(declare-fun res!827859 () Bool)

(assert (=> d!136269 (=> (not res!827859) (not e!703250))))

(declare-fun lt!561967 () ListLongMap!18331)

(assert (=> d!136269 (= res!827859 (contains!7399 lt!561967 (_1!10185 lt!561871)))))

(declare-fun lt!561970 () List!27490)

(assert (=> d!136269 (= lt!561967 (ListLongMap!18332 lt!561970))))

(declare-fun lt!561968 () Unit!41175)

(declare-fun lt!561969 () Unit!41175)

(assert (=> d!136269 (= lt!561968 lt!561969)))

(assert (=> d!136269 (= (getValueByKey!654 lt!561970 (_1!10185 lt!561871)) (Some!704 (_2!10185 lt!561871)))))

(assert (=> d!136269 (= lt!561969 (lemmaContainsTupThenGetReturnValue!329 lt!561970 (_1!10185 lt!561871) (_2!10185 lt!561871)))))

(assert (=> d!136269 (= lt!561970 (insertStrictlySorted!420 (toList!9181 lm!211) (_1!10185 lt!561871) (_2!10185 lt!561871)))))

(assert (=> d!136269 (= (+!4121 lm!211 lt!561871) lt!561967)))

(declare-fun b!1240653 () Bool)

(declare-fun res!827860 () Bool)

(assert (=> b!1240653 (=> (not res!827860) (not e!703250))))

(assert (=> b!1240653 (= res!827860 (= (getValueByKey!654 (toList!9181 lt!561967) (_1!10185 lt!561871)) (Some!704 (_2!10185 lt!561871))))))

(declare-fun b!1240654 () Bool)

(assert (=> b!1240654 (= e!703250 (contains!7397 (toList!9181 lt!561967) lt!561871))))

(assert (= (and d!136269 res!827859) b!1240653))

(assert (= (and b!1240653 res!827860) b!1240654))

(declare-fun m!1143965 () Bool)

(assert (=> d!136269 m!1143965))

(declare-fun m!1143967 () Bool)

(assert (=> d!136269 m!1143967))

(declare-fun m!1143969 () Bool)

(assert (=> d!136269 m!1143969))

(declare-fun m!1143971 () Bool)

(assert (=> d!136269 m!1143971))

(declare-fun m!1143973 () Bool)

(assert (=> b!1240653 m!1143973))

(declare-fun m!1143975 () Bool)

(assert (=> b!1240654 m!1143975))

(assert (=> b!1240412 d!136269))

(declare-fun d!136271 () Bool)

(assert (=> d!136271 (= (inv!42774 lm!211) (isStrictlySorted!730 (toList!9181 lm!211)))))

(declare-fun bs!34917 () Bool)

(assert (= bs!34917 d!136271))

(assert (=> bs!34917 m!1143713))

(assert (=> start!103544 d!136271))

(declare-fun b!1240659 () Bool)

(declare-fun e!703253 () Bool)

(declare-fun tp!92553 () Bool)

(assert (=> b!1240659 (= e!703253 (and tp_is_empty!31197 tp!92553))))

(assert (=> b!1240413 (= tp!92541 e!703253)))

(assert (= (and b!1240413 ((_ is Cons!27486) (toList!9181 lm!211))) b!1240659))

(check-sat (not b!1240646) (not d!136239) tp_is_empty!31197 (not b!1240567) (not d!136237) (not bm!61150) (not b!1240502) (not d!136227) (not d!136271) (not b!1240563) (not d!136217) (not b!1240568) (not b!1240434) (not b!1240659) (not b!1240576) (not b!1240653) (not b!1240500) (not b!1240562) (not b!1240654) (not bm!61138) (not d!136229) (not d!136231) (not d!136255) (not b!1240647) (not b!1240494) (not b!1240570) (not b!1240578) (not d!136243) (not d!136269))
(check-sat)
