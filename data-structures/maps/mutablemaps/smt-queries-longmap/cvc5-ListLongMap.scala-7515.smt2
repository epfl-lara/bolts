; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95314 () Bool)

(assert start!95314)

(declare-fun res!717646 () Bool)

(declare-fun e!615523 () Bool)

(assert (=> start!95314 (=> (not res!717646) (not e!615523))))

(declare-fun a1!69 () (_ BitVec 64))

(declare-fun a2!57 () (_ BitVec 64))

(assert (=> start!95314 (= res!717646 (not (= a1!69 a2!57)))))

(assert (=> start!95314 e!615523))

(declare-fun tp_is_empty!26065 () Bool)

(assert (=> start!95314 tp_is_empty!26065))

(assert (=> start!95314 true))

(declare-datatypes ((B!1772 0))(
  ( (B!1773 (val!13089 Int)) )
))
(declare-datatypes ((tuple2!16760 0))(
  ( (tuple2!16761 (_1!8390 (_ BitVec 64)) (_2!8390 B!1772)) )
))
(declare-datatypes ((List!23324 0))(
  ( (Nil!23321) (Cons!23320 (h!24529 tuple2!16760) (t!32690 List!23324)) )
))
(declare-datatypes ((ListLongMap!14741 0))(
  ( (ListLongMap!14742 (toList!7386 List!23324)) )
))
(declare-fun lm!214 () ListLongMap!14741)

(declare-fun e!615524 () Bool)

(declare-fun inv!37861 (ListLongMap!14741) Bool)

(assert (=> start!95314 (and (inv!37861 lm!214) e!615524)))

(declare-fun b!1076640 () Bool)

(declare-fun res!717647 () Bool)

(assert (=> b!1076640 (=> (not res!717647) (not e!615523))))

(declare-fun isStrictlySorted!720 (List!23324) Bool)

(assert (=> b!1076640 (= res!717647 (isStrictlySorted!720 (toList!7386 lm!214)))))

(declare-fun lt!478359 () tuple2!16760)

(declare-fun b!1076641 () Bool)

(declare-fun lt!478358 () tuple2!16760)

(declare-fun +!3199 (ListLongMap!14741 tuple2!16760) ListLongMap!14741)

(assert (=> b!1076641 (= e!615523 (not (= (+!3199 (+!3199 lm!214 lt!478358) lt!478359) (+!3199 (+!3199 lm!214 lt!478359) lt!478358))))))

(declare-fun b2!55 () B!1772)

(assert (=> b!1076641 (= lt!478359 (tuple2!16761 a2!57 b2!55))))

(declare-fun b1!79 () B!1772)

(assert (=> b!1076641 (= lt!478358 (tuple2!16761 a1!69 b1!79))))

(declare-fun insertStrictlySorted!385 (List!23324 (_ BitVec 64) B!1772) List!23324)

(assert (=> b!1076641 (= (insertStrictlySorted!385 (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79) a2!57 b2!55) (insertStrictlySorted!385 (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55) a1!69 b1!79))))

(declare-datatypes ((Unit!35393 0))(
  ( (Unit!35394) )
))
(declare-fun lt!478357 () Unit!35393)

(declare-fun lemmaInsertStrictlySortedCommutative!1 (List!23324 (_ BitVec 64) B!1772 (_ BitVec 64) B!1772) Unit!35393)

(assert (=> b!1076641 (= lt!478357 (lemmaInsertStrictlySortedCommutative!1 (toList!7386 lm!214) a1!69 b1!79 a2!57 b2!55))))

(declare-fun b!1076642 () Bool)

(declare-fun tp!78279 () Bool)

(assert (=> b!1076642 (= e!615524 tp!78279)))

(assert (= (and start!95314 res!717646) b!1076640))

(assert (= (and b!1076640 res!717647) b!1076641))

(assert (= start!95314 b!1076642))

(declare-fun m!995739 () Bool)

(assert (=> start!95314 m!995739))

(declare-fun m!995741 () Bool)

(assert (=> b!1076640 m!995741))

(declare-fun m!995743 () Bool)

(assert (=> b!1076641 m!995743))

(declare-fun m!995745 () Bool)

(assert (=> b!1076641 m!995745))

(declare-fun m!995747 () Bool)

(assert (=> b!1076641 m!995747))

(declare-fun m!995749 () Bool)

(assert (=> b!1076641 m!995749))

(assert (=> b!1076641 m!995747))

(declare-fun m!995751 () Bool)

(assert (=> b!1076641 m!995751))

(declare-fun m!995753 () Bool)

(assert (=> b!1076641 m!995753))

(assert (=> b!1076641 m!995743))

(declare-fun m!995755 () Bool)

(assert (=> b!1076641 m!995755))

(declare-fun m!995757 () Bool)

(assert (=> b!1076641 m!995757))

(assert (=> b!1076641 m!995755))

(declare-fun m!995759 () Bool)

(assert (=> b!1076641 m!995759))

(assert (=> b!1076641 m!995751))

(push 1)

(assert tp_is_empty!26065)

(assert (not b!1076642))

(assert (not b!1076641))

(assert (not start!95314))

(assert (not b!1076640))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!129679 () Bool)

(declare-fun res!717664 () Bool)

(declare-fun e!615541 () Bool)

(assert (=> d!129679 (=> res!717664 e!615541)))

(assert (=> d!129679 (= res!717664 (or (is-Nil!23321 (toList!7386 lm!214)) (is-Nil!23321 (t!32690 (toList!7386 lm!214)))))))

(assert (=> d!129679 (= (isStrictlySorted!720 (toList!7386 lm!214)) e!615541)))

(declare-fun b!1076665 () Bool)

(declare-fun e!615542 () Bool)

(assert (=> b!1076665 (= e!615541 e!615542)))

(declare-fun res!717665 () Bool)

(assert (=> b!1076665 (=> (not res!717665) (not e!615542))))

(assert (=> b!1076665 (= res!717665 (bvslt (_1!8390 (h!24529 (toList!7386 lm!214))) (_1!8390 (h!24529 (t!32690 (toList!7386 lm!214))))))))

(declare-fun b!1076666 () Bool)

(assert (=> b!1076666 (= e!615542 (isStrictlySorted!720 (t!32690 (toList!7386 lm!214))))))

(assert (= (and d!129679 (not res!717664)) b!1076665))

(assert (= (and b!1076665 res!717665) b!1076666))

(declare-fun m!995805 () Bool)

(assert (=> b!1076666 m!995805))

(assert (=> b!1076640 d!129679))

(declare-fun d!129687 () Bool)

(assert (=> d!129687 (= (inv!37861 lm!214) (isStrictlySorted!720 (toList!7386 lm!214)))))

(declare-fun bs!31719 () Bool)

(assert (= bs!31719 d!129687))

(assert (=> bs!31719 m!995741))

(assert (=> start!95314 d!129687))

(declare-fun bm!45664 () Bool)

(declare-fun call!45667 () List!23324)

(declare-fun call!45668 () List!23324)

(assert (=> bm!45664 (= call!45667 call!45668)))

(declare-fun bm!45665 () Bool)

(declare-fun call!45669 () List!23324)

(assert (=> bm!45665 (= call!45669 call!45667)))

(declare-fun b!1076719 () Bool)

(declare-fun e!615575 () Bool)

(declare-fun lt!478394 () List!23324)

(declare-fun contains!6376 (List!23324 tuple2!16760) Bool)

(assert (=> b!1076719 (= e!615575 (contains!6376 lt!478394 (tuple2!16761 a2!57 b2!55)))))

(declare-fun b!1076721 () Bool)

(declare-fun e!615576 () List!23324)

(declare-fun e!615572 () List!23324)

(assert (=> b!1076721 (= e!615576 e!615572)))

(declare-fun c!108194 () Bool)

(assert (=> b!1076721 (= c!108194 (and (is-Cons!23320 (toList!7386 lm!214)) (= (_1!8390 (h!24529 (toList!7386 lm!214))) a2!57)))))

(declare-fun b!1076722 () Bool)

(declare-fun c!108196 () Bool)

(assert (=> b!1076722 (= c!108196 (and (is-Cons!23320 (toList!7386 lm!214)) (bvsgt (_1!8390 (h!24529 (toList!7386 lm!214))) a2!57)))))

(declare-fun e!615574 () List!23324)

(assert (=> b!1076722 (= e!615572 e!615574)))

(declare-fun b!1076723 () Bool)

(declare-fun e!615573 () List!23324)

(assert (=> b!1076723 (= e!615573 (insertStrictlySorted!385 (t!32690 (toList!7386 lm!214)) a2!57 b2!55))))

(declare-fun b!1076724 () Bool)

(assert (=> b!1076724 (= e!615576 call!45668)))

(declare-fun d!129689 () Bool)

(assert (=> d!129689 e!615575))

(declare-fun res!717686 () Bool)

(assert (=> d!129689 (=> (not res!717686) (not e!615575))))

(assert (=> d!129689 (= res!717686 (isStrictlySorted!720 lt!478394))))

(assert (=> d!129689 (= lt!478394 e!615576)))

(declare-fun c!108197 () Bool)

(assert (=> d!129689 (= c!108197 (and (is-Cons!23320 (toList!7386 lm!214)) (bvslt (_1!8390 (h!24529 (toList!7386 lm!214))) a2!57)))))

(assert (=> d!129689 (isStrictlySorted!720 (toList!7386 lm!214))))

(assert (=> d!129689 (= (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55) lt!478394)))

(declare-fun b!1076720 () Bool)

(declare-fun res!717687 () Bool)

(assert (=> b!1076720 (=> (not res!717687) (not e!615575))))

(declare-fun containsKey!583 (List!23324 (_ BitVec 64)) Bool)

(assert (=> b!1076720 (= res!717687 (containsKey!583 lt!478394 a2!57))))

(declare-fun b!1076725 () Bool)

(assert (=> b!1076725 (= e!615572 call!45667)))

(declare-fun b!1076726 () Bool)

(assert (=> b!1076726 (= e!615574 call!45669)))

(declare-fun b!1076727 () Bool)

(assert (=> b!1076727 (= e!615574 call!45669)))

(declare-fun bm!45666 () Bool)

(declare-fun $colon$colon!609 (List!23324 tuple2!16760) List!23324)

(assert (=> bm!45666 (= call!45668 ($colon$colon!609 e!615573 (ite c!108197 (h!24529 (toList!7386 lm!214)) (tuple2!16761 a2!57 b2!55))))))

(declare-fun c!108195 () Bool)

(assert (=> bm!45666 (= c!108195 c!108197)))

(declare-fun b!1076728 () Bool)

(assert (=> b!1076728 (= e!615573 (ite c!108194 (t!32690 (toList!7386 lm!214)) (ite c!108196 (Cons!23320 (h!24529 (toList!7386 lm!214)) (t!32690 (toList!7386 lm!214))) Nil!23321)))))

(assert (= (and d!129689 c!108197) b!1076724))

(assert (= (and d!129689 (not c!108197)) b!1076721))

(assert (= (and b!1076721 c!108194) b!1076725))

(assert (= (and b!1076721 (not c!108194)) b!1076722))

(assert (= (and b!1076722 c!108196) b!1076726))

(assert (= (and b!1076722 (not c!108196)) b!1076727))

(assert (= (or b!1076726 b!1076727) bm!45665))

(assert (= (or b!1076725 bm!45665) bm!45664))

(assert (= (or b!1076724 bm!45664) bm!45666))

(assert (= (and bm!45666 c!108195) b!1076723))

(assert (= (and bm!45666 (not c!108195)) b!1076728))

(assert (= (and d!129689 res!717686) b!1076720))

(assert (= (and b!1076720 res!717687) b!1076719))

(declare-fun m!995821 () Bool)

(assert (=> b!1076723 m!995821))

(declare-fun m!995823 () Bool)

(assert (=> d!129689 m!995823))

(assert (=> d!129689 m!995741))

(declare-fun m!995825 () Bool)

(assert (=> b!1076720 m!995825))

(declare-fun m!995827 () Bool)

(assert (=> bm!45666 m!995827))

(declare-fun m!995829 () Bool)

(assert (=> b!1076719 m!995829))

(assert (=> b!1076641 d!129689))

(declare-fun d!129695 () Bool)

(declare-fun e!615608 () Bool)

(assert (=> d!129695 e!615608))

(declare-fun res!717710 () Bool)

(assert (=> d!129695 (=> (not res!717710) (not e!615608))))

(declare-fun lt!478427 () ListLongMap!14741)

(declare-fun contains!6379 (ListLongMap!14741 (_ BitVec 64)) Bool)

(assert (=> d!129695 (= res!717710 (contains!6379 lt!478427 (_1!8390 lt!478359)))))

(declare-fun lt!478426 () List!23324)

(assert (=> d!129695 (= lt!478427 (ListLongMap!14742 lt!478426))))

(declare-fun lt!478425 () Unit!35393)

(declare-fun lt!478424 () Unit!35393)

(assert (=> d!129695 (= lt!478425 lt!478424)))

(declare-datatypes ((Option!670 0))(
  ( (Some!669 (v!15710 B!1772)) (None!668) )
))
(declare-fun getValueByKey!619 (List!23324 (_ BitVec 64)) Option!670)

(assert (=> d!129695 (= (getValueByKey!619 lt!478426 (_1!8390 lt!478359)) (Some!669 (_2!8390 lt!478359)))))

(declare-fun lemmaContainsTupThenGetReturnValue!294 (List!23324 (_ BitVec 64) B!1772) Unit!35393)

(assert (=> d!129695 (= lt!478424 (lemmaContainsTupThenGetReturnValue!294 lt!478426 (_1!8390 lt!478359) (_2!8390 lt!478359)))))

(assert (=> d!129695 (= lt!478426 (insertStrictlySorted!385 (toList!7386 (+!3199 lm!214 lt!478358)) (_1!8390 lt!478359) (_2!8390 lt!478359)))))

(assert (=> d!129695 (= (+!3199 (+!3199 lm!214 lt!478358) lt!478359) lt!478427)))

(declare-fun b!1076791 () Bool)

(declare-fun res!717711 () Bool)

(assert (=> b!1076791 (=> (not res!717711) (not e!615608))))

(assert (=> b!1076791 (= res!717711 (= (getValueByKey!619 (toList!7386 lt!478427) (_1!8390 lt!478359)) (Some!669 (_2!8390 lt!478359))))))

(declare-fun b!1076792 () Bool)

(assert (=> b!1076792 (= e!615608 (contains!6376 (toList!7386 lt!478427) lt!478359))))

(assert (= (and d!129695 res!717710) b!1076791))

(assert (= (and b!1076791 res!717711) b!1076792))

(declare-fun m!995885 () Bool)

(assert (=> d!129695 m!995885))

(declare-fun m!995887 () Bool)

(assert (=> d!129695 m!995887))

(declare-fun m!995889 () Bool)

(assert (=> d!129695 m!995889))

(declare-fun m!995891 () Bool)

(assert (=> d!129695 m!995891))

(declare-fun m!995893 () Bool)

(assert (=> b!1076791 m!995893))

(declare-fun m!995895 () Bool)

(assert (=> b!1076792 m!995895))

(assert (=> b!1076641 d!129695))

(declare-fun bm!45685 () Bool)

(declare-fun call!45688 () List!23324)

(declare-fun call!45689 () List!23324)

(assert (=> bm!45685 (= call!45688 call!45689)))

(declare-fun bm!45686 () Bool)

(declare-fun call!45690 () List!23324)

(assert (=> bm!45686 (= call!45690 call!45688)))

(declare-fun b!1076805 () Bool)

(declare-fun lt!478433 () List!23324)

(declare-fun e!615618 () Bool)

(assert (=> b!1076805 (= e!615618 (contains!6376 lt!478433 (tuple2!16761 a1!69 b1!79)))))

(declare-fun b!1076807 () Bool)

(declare-fun e!615619 () List!23324)

(declare-fun e!615615 () List!23324)

(assert (=> b!1076807 (= e!615619 e!615615)))

(declare-fun c!108222 () Bool)

(assert (=> b!1076807 (= c!108222 (and (is-Cons!23320 (toList!7386 lm!214)) (= (_1!8390 (h!24529 (toList!7386 lm!214))) a1!69)))))

(declare-fun b!1076808 () Bool)

(declare-fun c!108224 () Bool)

(assert (=> b!1076808 (= c!108224 (and (is-Cons!23320 (toList!7386 lm!214)) (bvsgt (_1!8390 (h!24529 (toList!7386 lm!214))) a1!69)))))

(declare-fun e!615617 () List!23324)

(assert (=> b!1076808 (= e!615615 e!615617)))

(declare-fun e!615616 () List!23324)

(declare-fun b!1076809 () Bool)

(assert (=> b!1076809 (= e!615616 (insertStrictlySorted!385 (t!32690 (toList!7386 lm!214)) a1!69 b1!79))))

(declare-fun b!1076810 () Bool)

(assert (=> b!1076810 (= e!615619 call!45689)))

(declare-fun d!129707 () Bool)

(assert (=> d!129707 e!615618))

(declare-fun res!717716 () Bool)

(assert (=> d!129707 (=> (not res!717716) (not e!615618))))

(assert (=> d!129707 (= res!717716 (isStrictlySorted!720 lt!478433))))

(assert (=> d!129707 (= lt!478433 e!615619)))

(declare-fun c!108225 () Bool)

(assert (=> d!129707 (= c!108225 (and (is-Cons!23320 (toList!7386 lm!214)) (bvslt (_1!8390 (h!24529 (toList!7386 lm!214))) a1!69)))))

(assert (=> d!129707 (isStrictlySorted!720 (toList!7386 lm!214))))

(assert (=> d!129707 (= (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79) lt!478433)))

(declare-fun b!1076806 () Bool)

(declare-fun res!717717 () Bool)

(assert (=> b!1076806 (=> (not res!717717) (not e!615618))))

(assert (=> b!1076806 (= res!717717 (containsKey!583 lt!478433 a1!69))))

(declare-fun b!1076811 () Bool)

(assert (=> b!1076811 (= e!615615 call!45688)))

(declare-fun b!1076812 () Bool)

(assert (=> b!1076812 (= e!615617 call!45690)))

(declare-fun b!1076813 () Bool)

(assert (=> b!1076813 (= e!615617 call!45690)))

(declare-fun bm!45687 () Bool)

(assert (=> bm!45687 (= call!45689 ($colon$colon!609 e!615616 (ite c!108225 (h!24529 (toList!7386 lm!214)) (tuple2!16761 a1!69 b1!79))))))

(declare-fun c!108223 () Bool)

(assert (=> bm!45687 (= c!108223 c!108225)))

(declare-fun b!1076814 () Bool)

(assert (=> b!1076814 (= e!615616 (ite c!108222 (t!32690 (toList!7386 lm!214)) (ite c!108224 (Cons!23320 (h!24529 (toList!7386 lm!214)) (t!32690 (toList!7386 lm!214))) Nil!23321)))))

(assert (= (and d!129707 c!108225) b!1076810))

(assert (= (and d!129707 (not c!108225)) b!1076807))

(assert (= (and b!1076807 c!108222) b!1076811))

(assert (= (and b!1076807 (not c!108222)) b!1076808))

(assert (= (and b!1076808 c!108224) b!1076812))

(assert (= (and b!1076808 (not c!108224)) b!1076813))

(assert (= (or b!1076812 b!1076813) bm!45686))

(assert (= (or b!1076811 bm!45686) bm!45685))

(assert (= (or b!1076810 bm!45685) bm!45687))

(assert (= (and bm!45687 c!108223) b!1076809))

(assert (= (and bm!45687 (not c!108223)) b!1076814))

(assert (= (and d!129707 res!717716) b!1076806))

(assert (= (and b!1076806 res!717717) b!1076805))

(declare-fun m!995921 () Bool)

(assert (=> b!1076809 m!995921))

(declare-fun m!995923 () Bool)

(assert (=> d!129707 m!995923))

(assert (=> d!129707 m!995741))

(declare-fun m!995925 () Bool)

(assert (=> b!1076806 m!995925))

(declare-fun m!995927 () Bool)

(assert (=> bm!45687 m!995927))

(declare-fun m!995929 () Bool)

(assert (=> b!1076805 m!995929))

(assert (=> b!1076641 d!129707))

(declare-fun bm!45691 () Bool)

(declare-fun call!45694 () List!23324)

(declare-fun call!45695 () List!23324)

(assert (=> bm!45691 (= call!45694 call!45695)))

(declare-fun bm!45692 () Bool)

(declare-fun call!45696 () List!23324)

(assert (=> bm!45692 (= call!45696 call!45694)))

(declare-fun b!1076825 () Bool)

(declare-fun e!615628 () Bool)

(declare-fun lt!478435 () List!23324)

(assert (=> b!1076825 (= e!615628 (contains!6376 lt!478435 (tuple2!16761 a2!57 b2!55)))))

(declare-fun b!1076827 () Bool)

(declare-fun e!615629 () List!23324)

(declare-fun e!615625 () List!23324)

(assert (=> b!1076827 (= e!615629 e!615625)))

(declare-fun c!108230 () Bool)

(assert (=> b!1076827 (= c!108230 (and (is-Cons!23320 (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79)) (= (_1!8390 (h!24529 (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79))) a2!57)))))

(declare-fun c!108232 () Bool)

(declare-fun b!1076828 () Bool)

(assert (=> b!1076828 (= c!108232 (and (is-Cons!23320 (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79)) (bvsgt (_1!8390 (h!24529 (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79))) a2!57)))))

(declare-fun e!615627 () List!23324)

(assert (=> b!1076828 (= e!615625 e!615627)))

(declare-fun b!1076829 () Bool)

(declare-fun e!615626 () List!23324)

(assert (=> b!1076829 (= e!615626 (insertStrictlySorted!385 (t!32690 (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79)) a2!57 b2!55))))

(declare-fun b!1076830 () Bool)

(assert (=> b!1076830 (= e!615629 call!45695)))

(declare-fun d!129713 () Bool)

(assert (=> d!129713 e!615628))

(declare-fun res!717720 () Bool)

(assert (=> d!129713 (=> (not res!717720) (not e!615628))))

(assert (=> d!129713 (= res!717720 (isStrictlySorted!720 lt!478435))))

(assert (=> d!129713 (= lt!478435 e!615629)))

(declare-fun c!108233 () Bool)

(assert (=> d!129713 (= c!108233 (and (is-Cons!23320 (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79)) (bvslt (_1!8390 (h!24529 (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79))) a2!57)))))

(assert (=> d!129713 (isStrictlySorted!720 (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79))))

(assert (=> d!129713 (= (insertStrictlySorted!385 (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79) a2!57 b2!55) lt!478435)))

(declare-fun b!1076826 () Bool)

(declare-fun res!717721 () Bool)

(assert (=> b!1076826 (=> (not res!717721) (not e!615628))))

(assert (=> b!1076826 (= res!717721 (containsKey!583 lt!478435 a2!57))))

(declare-fun b!1076831 () Bool)

(assert (=> b!1076831 (= e!615625 call!45694)))

(declare-fun b!1076832 () Bool)

(assert (=> b!1076832 (= e!615627 call!45696)))

(declare-fun b!1076833 () Bool)

(assert (=> b!1076833 (= e!615627 call!45696)))

(declare-fun bm!45693 () Bool)

(assert (=> bm!45693 (= call!45695 ($colon$colon!609 e!615626 (ite c!108233 (h!24529 (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79)) (tuple2!16761 a2!57 b2!55))))))

(declare-fun c!108231 () Bool)

(assert (=> bm!45693 (= c!108231 c!108233)))

(declare-fun b!1076834 () Bool)

(assert (=> b!1076834 (= e!615626 (ite c!108230 (t!32690 (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79)) (ite c!108232 (Cons!23320 (h!24529 (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79)) (t!32690 (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79))) Nil!23321)))))

(assert (= (and d!129713 c!108233) b!1076830))

(assert (= (and d!129713 (not c!108233)) b!1076827))

(assert (= (and b!1076827 c!108230) b!1076831))

(assert (= (and b!1076827 (not c!108230)) b!1076828))

(assert (= (and b!1076828 c!108232) b!1076832))

(assert (= (and b!1076828 (not c!108232)) b!1076833))

(assert (= (or b!1076832 b!1076833) bm!45692))

(assert (= (or b!1076831 bm!45692) bm!45691))

(assert (= (or b!1076830 bm!45691) bm!45693))

(assert (= (and bm!45693 c!108231) b!1076829))

(assert (= (and bm!45693 (not c!108231)) b!1076834))

(assert (= (and d!129713 res!717720) b!1076826))

(assert (= (and b!1076826 res!717721) b!1076825))

(declare-fun m!995943 () Bool)

(assert (=> b!1076829 m!995943))

(declare-fun m!995945 () Bool)

(assert (=> d!129713 m!995945))

(assert (=> d!129713 m!995747))

(declare-fun m!995947 () Bool)

(assert (=> d!129713 m!995947))

(declare-fun m!995949 () Bool)

(assert (=> b!1076826 m!995949))

(declare-fun m!995951 () Bool)

(assert (=> bm!45693 m!995951))

(declare-fun m!995953 () Bool)

(assert (=> b!1076825 m!995953))

(assert (=> b!1076641 d!129713))

(declare-fun d!129717 () Bool)

(declare-fun e!615630 () Bool)

(assert (=> d!129717 e!615630))

(declare-fun res!717722 () Bool)

(assert (=> d!129717 (=> (not res!717722) (not e!615630))))

(declare-fun lt!478439 () ListLongMap!14741)

(assert (=> d!129717 (= res!717722 (contains!6379 lt!478439 (_1!8390 lt!478359)))))

(declare-fun lt!478438 () List!23324)

(assert (=> d!129717 (= lt!478439 (ListLongMap!14742 lt!478438))))

(declare-fun lt!478437 () Unit!35393)

(declare-fun lt!478436 () Unit!35393)

(assert (=> d!129717 (= lt!478437 lt!478436)))

(assert (=> d!129717 (= (getValueByKey!619 lt!478438 (_1!8390 lt!478359)) (Some!669 (_2!8390 lt!478359)))))

(assert (=> d!129717 (= lt!478436 (lemmaContainsTupThenGetReturnValue!294 lt!478438 (_1!8390 lt!478359) (_2!8390 lt!478359)))))

(assert (=> d!129717 (= lt!478438 (insertStrictlySorted!385 (toList!7386 lm!214) (_1!8390 lt!478359) (_2!8390 lt!478359)))))

(assert (=> d!129717 (= (+!3199 lm!214 lt!478359) lt!478439)))

(declare-fun b!1076835 () Bool)

(declare-fun res!717723 () Bool)

(assert (=> b!1076835 (=> (not res!717723) (not e!615630))))

(assert (=> b!1076835 (= res!717723 (= (getValueByKey!619 (toList!7386 lt!478439) (_1!8390 lt!478359)) (Some!669 (_2!8390 lt!478359))))))

(declare-fun b!1076836 () Bool)

(assert (=> b!1076836 (= e!615630 (contains!6376 (toList!7386 lt!478439) lt!478359))))

(assert (= (and d!129717 res!717722) b!1076835))

(assert (= (and b!1076835 res!717723) b!1076836))

(declare-fun m!995955 () Bool)

(assert (=> d!129717 m!995955))

(declare-fun m!995957 () Bool)

(assert (=> d!129717 m!995957))

(declare-fun m!995959 () Bool)

(assert (=> d!129717 m!995959))

(declare-fun m!995961 () Bool)

(assert (=> d!129717 m!995961))

(declare-fun m!995963 () Bool)

(assert (=> b!1076835 m!995963))

(declare-fun m!995965 () Bool)

(assert (=> b!1076836 m!995965))

(assert (=> b!1076641 d!129717))

(declare-fun bm!45694 () Bool)

(declare-fun call!45697 () List!23324)

(declare-fun call!45698 () List!23324)

(assert (=> bm!45694 (= call!45697 call!45698)))

(declare-fun bm!45695 () Bool)

(declare-fun call!45699 () List!23324)

(assert (=> bm!45695 (= call!45699 call!45697)))

(declare-fun b!1076837 () Bool)

(declare-fun lt!478440 () List!23324)

(declare-fun e!615634 () Bool)

(assert (=> b!1076837 (= e!615634 (contains!6376 lt!478440 (tuple2!16761 a1!69 b1!79)))))

(declare-fun b!1076839 () Bool)

(declare-fun e!615635 () List!23324)

(declare-fun e!615631 () List!23324)

(assert (=> b!1076839 (= e!615635 e!615631)))

(declare-fun c!108234 () Bool)

(assert (=> b!1076839 (= c!108234 (and (is-Cons!23320 (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55)) (= (_1!8390 (h!24529 (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55))) a1!69)))))

(declare-fun c!108236 () Bool)

(declare-fun b!1076840 () Bool)

(assert (=> b!1076840 (= c!108236 (and (is-Cons!23320 (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55)) (bvsgt (_1!8390 (h!24529 (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55))) a1!69)))))

(declare-fun e!615633 () List!23324)

(assert (=> b!1076840 (= e!615631 e!615633)))

(declare-fun e!615632 () List!23324)

(declare-fun b!1076841 () Bool)

(assert (=> b!1076841 (= e!615632 (insertStrictlySorted!385 (t!32690 (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55)) a1!69 b1!79))))

(declare-fun b!1076842 () Bool)

(assert (=> b!1076842 (= e!615635 call!45698)))

(declare-fun d!129719 () Bool)

(assert (=> d!129719 e!615634))

(declare-fun res!717724 () Bool)

(assert (=> d!129719 (=> (not res!717724) (not e!615634))))

(assert (=> d!129719 (= res!717724 (isStrictlySorted!720 lt!478440))))

(assert (=> d!129719 (= lt!478440 e!615635)))

(declare-fun c!108237 () Bool)

(assert (=> d!129719 (= c!108237 (and (is-Cons!23320 (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55)) (bvslt (_1!8390 (h!24529 (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55))) a1!69)))))

(assert (=> d!129719 (isStrictlySorted!720 (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55))))

(assert (=> d!129719 (= (insertStrictlySorted!385 (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55) a1!69 b1!79) lt!478440)))

(declare-fun b!1076838 () Bool)

(declare-fun res!717725 () Bool)

(assert (=> b!1076838 (=> (not res!717725) (not e!615634))))

(assert (=> b!1076838 (= res!717725 (containsKey!583 lt!478440 a1!69))))

(declare-fun b!1076843 () Bool)

(assert (=> b!1076843 (= e!615631 call!45697)))

(declare-fun b!1076844 () Bool)

(assert (=> b!1076844 (= e!615633 call!45699)))

(declare-fun b!1076845 () Bool)

(assert (=> b!1076845 (= e!615633 call!45699)))

(declare-fun bm!45696 () Bool)

(assert (=> bm!45696 (= call!45698 ($colon$colon!609 e!615632 (ite c!108237 (h!24529 (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55)) (tuple2!16761 a1!69 b1!79))))))

(declare-fun c!108235 () Bool)

(assert (=> bm!45696 (= c!108235 c!108237)))

(declare-fun b!1076846 () Bool)

(assert (=> b!1076846 (= e!615632 (ite c!108234 (t!32690 (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55)) (ite c!108236 (Cons!23320 (h!24529 (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55)) (t!32690 (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55))) Nil!23321)))))

(assert (= (and d!129719 c!108237) b!1076842))

(assert (= (and d!129719 (not c!108237)) b!1076839))

(assert (= (and b!1076839 c!108234) b!1076843))

(assert (= (and b!1076839 (not c!108234)) b!1076840))

(assert (= (and b!1076840 c!108236) b!1076844))

(assert (= (and b!1076840 (not c!108236)) b!1076845))

(assert (= (or b!1076844 b!1076845) bm!45695))

(assert (= (or b!1076843 bm!45695) bm!45694))

(assert (= (or b!1076842 bm!45694) bm!45696))

(assert (= (and bm!45696 c!108235) b!1076841))

(assert (= (and bm!45696 (not c!108235)) b!1076846))

(assert (= (and d!129719 res!717724) b!1076838))

(assert (= (and b!1076838 res!717725) b!1076837))

(declare-fun m!995967 () Bool)

(assert (=> b!1076841 m!995967))

(declare-fun m!995969 () Bool)

(assert (=> d!129719 m!995969))

(assert (=> d!129719 m!995743))

(declare-fun m!995971 () Bool)

(assert (=> d!129719 m!995971))

(declare-fun m!995973 () Bool)

(assert (=> b!1076838 m!995973))

(declare-fun m!995975 () Bool)

(assert (=> bm!45696 m!995975))

(declare-fun m!995977 () Bool)

(assert (=> b!1076837 m!995977))

(assert (=> b!1076641 d!129719))

(declare-fun d!129721 () Bool)

(declare-fun e!615636 () Bool)

(assert (=> d!129721 e!615636))

(declare-fun res!717726 () Bool)

(assert (=> d!129721 (=> (not res!717726) (not e!615636))))

(declare-fun lt!478446 () ListLongMap!14741)

(assert (=> d!129721 (= res!717726 (contains!6379 lt!478446 (_1!8390 lt!478358)))))

(declare-fun lt!478445 () List!23324)

(assert (=> d!129721 (= lt!478446 (ListLongMap!14742 lt!478445))))

(declare-fun lt!478444 () Unit!35393)

(declare-fun lt!478443 () Unit!35393)

(assert (=> d!129721 (= lt!478444 lt!478443)))

(assert (=> d!129721 (= (getValueByKey!619 lt!478445 (_1!8390 lt!478358)) (Some!669 (_2!8390 lt!478358)))))

(assert (=> d!129721 (= lt!478443 (lemmaContainsTupThenGetReturnValue!294 lt!478445 (_1!8390 lt!478358) (_2!8390 lt!478358)))))

(assert (=> d!129721 (= lt!478445 (insertStrictlySorted!385 (toList!7386 lm!214) (_1!8390 lt!478358) (_2!8390 lt!478358)))))

(assert (=> d!129721 (= (+!3199 lm!214 lt!478358) lt!478446)))

(declare-fun b!1076847 () Bool)

(declare-fun res!717727 () Bool)

(assert (=> b!1076847 (=> (not res!717727) (not e!615636))))

(assert (=> b!1076847 (= res!717727 (= (getValueByKey!619 (toList!7386 lt!478446) (_1!8390 lt!478358)) (Some!669 (_2!8390 lt!478358))))))

(declare-fun b!1076848 () Bool)

(assert (=> b!1076848 (= e!615636 (contains!6376 (toList!7386 lt!478446) lt!478358))))

(assert (= (and d!129721 res!717726) b!1076847))

(assert (= (and b!1076847 res!717727) b!1076848))

(declare-fun m!995979 () Bool)

(assert (=> d!129721 m!995979))

(declare-fun m!995981 () Bool)

(assert (=> d!129721 m!995981))

(declare-fun m!995983 () Bool)

(assert (=> d!129721 m!995983))

(declare-fun m!995985 () Bool)

(assert (=> d!129721 m!995985))

(declare-fun m!995987 () Bool)

(assert (=> b!1076847 m!995987))

(declare-fun m!995989 () Bool)

(assert (=> b!1076848 m!995989))

(assert (=> b!1076641 d!129721))

(declare-fun d!129723 () Bool)

(declare-fun e!615637 () Bool)

(assert (=> d!129723 e!615637))

(declare-fun res!717728 () Bool)

(assert (=> d!129723 (=> (not res!717728) (not e!615637))))

(declare-fun lt!478453 () ListLongMap!14741)

(assert (=> d!129723 (= res!717728 (contains!6379 lt!478453 (_1!8390 lt!478358)))))

(declare-fun lt!478452 () List!23324)

(assert (=> d!129723 (= lt!478453 (ListLongMap!14742 lt!478452))))

(declare-fun lt!478451 () Unit!35393)

(declare-fun lt!478450 () Unit!35393)

(assert (=> d!129723 (= lt!478451 lt!478450)))

(assert (=> d!129723 (= (getValueByKey!619 lt!478452 (_1!8390 lt!478358)) (Some!669 (_2!8390 lt!478358)))))

(assert (=> d!129723 (= lt!478450 (lemmaContainsTupThenGetReturnValue!294 lt!478452 (_1!8390 lt!478358) (_2!8390 lt!478358)))))

(assert (=> d!129723 (= lt!478452 (insertStrictlySorted!385 (toList!7386 (+!3199 lm!214 lt!478359)) (_1!8390 lt!478358) (_2!8390 lt!478358)))))

(assert (=> d!129723 (= (+!3199 (+!3199 lm!214 lt!478359) lt!478358) lt!478453)))

(declare-fun b!1076849 () Bool)

(declare-fun res!717729 () Bool)

(assert (=> b!1076849 (=> (not res!717729) (not e!615637))))

(assert (=> b!1076849 (= res!717729 (= (getValueByKey!619 (toList!7386 lt!478453) (_1!8390 lt!478358)) (Some!669 (_2!8390 lt!478358))))))

(declare-fun b!1076850 () Bool)

(assert (=> b!1076850 (= e!615637 (contains!6376 (toList!7386 lt!478453) lt!478358))))

(assert (= (and d!129723 res!717728) b!1076849))

(assert (= (and b!1076849 res!717729) b!1076850))

(declare-fun m!995993 () Bool)

(assert (=> d!129723 m!995993))

(declare-fun m!995995 () Bool)

(assert (=> d!129723 m!995995))

(declare-fun m!995997 () Bool)

(assert (=> d!129723 m!995997))

(declare-fun m!995999 () Bool)

(assert (=> d!129723 m!995999))

(declare-fun m!996001 () Bool)

(assert (=> b!1076849 m!996001))

(declare-fun m!996003 () Bool)

(assert (=> b!1076850 m!996003))

(assert (=> b!1076641 d!129723))

(declare-fun d!129727 () Bool)

(assert (=> d!129727 (= (insertStrictlySorted!385 (insertStrictlySorted!385 (toList!7386 lm!214) a1!69 b1!79) a2!57 b2!55) (insertStrictlySorted!385 (insertStrictlySorted!385 (toList!7386 lm!214) a2!57 b2!55) a1!69 b1!79))))

(declare-fun lt!478472 () Unit!35393)

(declare-fun choose!1766 (List!23324 (_ BitVec 64) B!1772 (_ BitVec 64) B!1772) Unit!35393)

(assert (=> d!129727 (= lt!478472 (choose!1766 (toList!7386 lm!214) a1!69 b1!79 a2!57 b2!55))))

(assert (=> d!129727 (not (= a1!69 a2!57))))

(assert (=> d!129727 (= (lemmaInsertStrictlySortedCommutative!1 (toList!7386 lm!214) a1!69 b1!79 a2!57 b2!55) lt!478472)))

(declare-fun bs!31723 () Bool)

(assert (= bs!31723 d!129727))

(assert (=> bs!31723 m!995743))

(assert (=> bs!31723 m!995745))

(assert (=> bs!31723 m!995743))

(assert (=> bs!31723 m!995747))

(assert (=> bs!31723 m!995749))

(assert (=> bs!31723 m!995747))

(declare-fun m!996077 () Bool)

(assert (=> bs!31723 m!996077))

(assert (=> b!1076641 d!129727))

(declare-fun b!1076899 () Bool)

(declare-fun e!615665 () Bool)

(declare-fun tp!78288 () Bool)

(assert (=> b!1076899 (= e!615665 (and tp_is_empty!26065 tp!78288))))

(assert (=> b!1076642 (= tp!78279 e!615665)))

(assert (= (and b!1076642 (is-Cons!23320 (toList!7386 lm!214))) b!1076899))

(push 1)

