; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!95318 () Bool)

(assert start!95318)

(declare-fun res!717658 () Bool)

(declare-fun e!615535 () Bool)

(assert (=> start!95318 (=> (not res!717658) (not e!615535))))

(declare-fun a1!69 () (_ BitVec 64))

(declare-fun a2!57 () (_ BitVec 64))

(assert (=> start!95318 (= res!717658 (not (= a1!69 a2!57)))))

(assert (=> start!95318 e!615535))

(declare-fun tp_is_empty!26069 () Bool)

(assert (=> start!95318 tp_is_empty!26069))

(assert (=> start!95318 true))

(declare-datatypes ((B!1776 0))(
  ( (B!1777 (val!13091 Int)) )
))
(declare-datatypes ((tuple2!16764 0))(
  ( (tuple2!16765 (_1!8392 (_ BitVec 64)) (_2!8392 B!1776)) )
))
(declare-datatypes ((List!23326 0))(
  ( (Nil!23323) (Cons!23322 (h!24531 tuple2!16764) (t!32692 List!23326)) )
))
(declare-datatypes ((ListLongMap!14745 0))(
  ( (ListLongMap!14746 (toList!7388 List!23326)) )
))
(declare-fun lm!214 () ListLongMap!14745)

(declare-fun e!615536 () Bool)

(declare-fun inv!37863 (ListLongMap!14745) Bool)

(assert (=> start!95318 (and (inv!37863 lm!214) e!615536)))

(declare-fun b!1076658 () Bool)

(declare-fun res!717659 () Bool)

(assert (=> b!1076658 (=> (not res!717659) (not e!615535))))

(declare-fun isStrictlySorted!722 (List!23326) Bool)

(assert (=> b!1076658 (= res!717659 (isStrictlySorted!722 (toList!7388 lm!214)))))

(declare-fun b!1076659 () Bool)

(declare-fun lt!478375 () tuple2!16764)

(declare-fun lt!478377 () tuple2!16764)

(declare-fun +!3201 (ListLongMap!14745 tuple2!16764) ListLongMap!14745)

(assert (=> b!1076659 (= e!615535 (not (= (+!3201 (+!3201 lm!214 lt!478377) lt!478375) (+!3201 (+!3201 lm!214 lt!478375) lt!478377))))))

(declare-fun b2!55 () B!1776)

(assert (=> b!1076659 (= lt!478375 (tuple2!16765 a2!57 b2!55))))

(declare-fun b1!79 () B!1776)

(assert (=> b!1076659 (= lt!478377 (tuple2!16765 a1!69 b1!79))))

(declare-fun insertStrictlySorted!387 (List!23326 (_ BitVec 64) B!1776) List!23326)

(assert (=> b!1076659 (= (insertStrictlySorted!387 (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79) a2!57 b2!55) (insertStrictlySorted!387 (insertStrictlySorted!387 (toList!7388 lm!214) a2!57 b2!55) a1!69 b1!79))))

(declare-datatypes ((Unit!35397 0))(
  ( (Unit!35398) )
))
(declare-fun lt!478376 () Unit!35397)

(declare-fun lemmaInsertStrictlySortedCommutative!3 (List!23326 (_ BitVec 64) B!1776 (_ BitVec 64) B!1776) Unit!35397)

(assert (=> b!1076659 (= lt!478376 (lemmaInsertStrictlySortedCommutative!3 (toList!7388 lm!214) a1!69 b1!79 a2!57 b2!55))))

(declare-fun b!1076660 () Bool)

(declare-fun tp!78285 () Bool)

(assert (=> b!1076660 (= e!615536 tp!78285)))

(assert (= (and start!95318 res!717658) b!1076658))

(assert (= (and b!1076658 res!717659) b!1076659))

(assert (= start!95318 b!1076660))

(declare-fun m!995783 () Bool)

(assert (=> start!95318 m!995783))

(declare-fun m!995785 () Bool)

(assert (=> b!1076658 m!995785))

(declare-fun m!995787 () Bool)

(assert (=> b!1076659 m!995787))

(assert (=> b!1076659 m!995787))

(declare-fun m!995789 () Bool)

(assert (=> b!1076659 m!995789))

(declare-fun m!995791 () Bool)

(assert (=> b!1076659 m!995791))

(declare-fun m!995793 () Bool)

(assert (=> b!1076659 m!995793))

(declare-fun m!995795 () Bool)

(assert (=> b!1076659 m!995795))

(declare-fun m!995797 () Bool)

(assert (=> b!1076659 m!995797))

(declare-fun m!995799 () Bool)

(assert (=> b!1076659 m!995799))

(assert (=> b!1076659 m!995795))

(declare-fun m!995801 () Bool)

(assert (=> b!1076659 m!995801))

(assert (=> b!1076659 m!995791))

(assert (=> b!1076659 m!995799))

(declare-fun m!995803 () Bool)

(assert (=> b!1076659 m!995803))

(push 1)

(assert (not start!95318))

(assert (not b!1076658))

(assert (not b!1076659))

(assert tp_is_empty!26069)

(assert (not b!1076660))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!129683 () Bool)

(declare-fun e!615551 () Bool)

(assert (=> d!129683 e!615551))

(declare-fun res!717677 () Bool)

(assert (=> d!129683 (=> (not res!717677) (not e!615551))))

(declare-fun lt!478388 () ListLongMap!14745)

(declare-fun contains!6375 (ListLongMap!14745 (_ BitVec 64)) Bool)

(assert (=> d!129683 (= res!717677 (contains!6375 lt!478388 (_1!8392 lt!478375)))))

(declare-fun lt!478387 () List!23326)

(assert (=> d!129683 (= lt!478388 (ListLongMap!14746 lt!478387))))

(declare-fun lt!478386 () Unit!35397)

(declare-fun lt!478389 () Unit!35397)

(assert (=> d!129683 (= lt!478386 lt!478389)))

(declare-datatypes ((Option!669 0))(
  ( (Some!668 (v!15709 B!1776)) (None!667) )
))
(declare-fun getValueByKey!618 (List!23326 (_ BitVec 64)) Option!669)

(assert (=> d!129683 (= (getValueByKey!618 lt!478387 (_1!8392 lt!478375)) (Some!668 (_2!8392 lt!478375)))))

(declare-fun lemmaContainsTupThenGetReturnValue!293 (List!23326 (_ BitVec 64) B!1776) Unit!35397)

(assert (=> d!129683 (= lt!478389 (lemmaContainsTupThenGetReturnValue!293 lt!478387 (_1!8392 lt!478375) (_2!8392 lt!478375)))))

(assert (=> d!129683 (= lt!478387 (insertStrictlySorted!387 (toList!7388 lm!214) (_1!8392 lt!478375) (_2!8392 lt!478375)))))

(assert (=> d!129683 (= (+!3201 lm!214 lt!478375) lt!478388)))

(declare-fun b!1076677 () Bool)

(declare-fun res!717676 () Bool)

(assert (=> b!1076677 (=> (not res!717676) (not e!615551))))

(assert (=> b!1076677 (= res!717676 (= (getValueByKey!618 (toList!7388 lt!478388) (_1!8392 lt!478375)) (Some!668 (_2!8392 lt!478375))))))

(declare-fun b!1076678 () Bool)

(declare-fun contains!6378 (List!23326 tuple2!16764) Bool)

(assert (=> b!1076678 (= e!615551 (contains!6378 (toList!7388 lt!478388) lt!478375))))

(assert (= (and d!129683 res!717677) b!1076677))

(assert (= (and b!1076677 res!717676) b!1076678))

(declare-fun m!995809 () Bool)

(assert (=> d!129683 m!995809))

(declare-fun m!995811 () Bool)

(assert (=> d!129683 m!995811))

(declare-fun m!995813 () Bool)

(assert (=> d!129683 m!995813))

(declare-fun m!995815 () Bool)

(assert (=> d!129683 m!995815))

(declare-fun m!995817 () Bool)

(assert (=> b!1076677 m!995817))

(declare-fun m!995819 () Bool)

(assert (=> b!1076678 m!995819))

(assert (=> b!1076659 d!129683))

(declare-fun d!129693 () Bool)

(declare-fun e!615594 () Bool)

(assert (=> d!129693 e!615594))

(declare-fun res!717695 () Bool)

(assert (=> d!129693 (=> (not res!717695) (not e!615594))))

(declare-fun lt!478398 () List!23326)

(assert (=> d!129693 (= res!717695 (isStrictlySorted!722 lt!478398))))

(declare-fun e!615592 () List!23326)

(assert (=> d!129693 (= lt!478398 e!615592)))

(declare-fun c!108212 () Bool)

(assert (=> d!129693 (= c!108212 (and (is-Cons!23322 (toList!7388 lm!214)) (bvslt (_1!8392 (h!24531 (toList!7388 lm!214))) a2!57)))))

(assert (=> d!129693 (isStrictlySorted!722 (toList!7388 lm!214))))

(assert (=> d!129693 (= (insertStrictlySorted!387 (toList!7388 lm!214) a2!57 b2!55) lt!478398)))

(declare-fun bm!45676 () Bool)

(declare-fun call!45680 () List!23326)

(declare-fun call!45681 () List!23326)

(assert (=> bm!45676 (= call!45680 call!45681)))

(declare-fun b!1076759 () Bool)

(declare-fun c!108210 () Bool)

(assert (=> b!1076759 (= c!108210 (and (is-Cons!23322 (toList!7388 lm!214)) (bvsgt (_1!8392 (h!24531 (toList!7388 lm!214))) a2!57)))))

(declare-fun e!615596 () List!23326)

(declare-fun e!615595 () List!23326)

(assert (=> b!1076759 (= e!615596 e!615595)))

(declare-fun e!615593 () List!23326)

(declare-fun b!1076760 () Bool)

(assert (=> b!1076760 (= e!615593 (insertStrictlySorted!387 (t!32692 (toList!7388 lm!214)) a2!57 b2!55))))

(declare-fun b!1076761 () Bool)

(assert (=> b!1076761 (= e!615592 e!615596)))

(declare-fun c!108211 () Bool)

(assert (=> b!1076761 (= c!108211 (and (is-Cons!23322 (toList!7388 lm!214)) (= (_1!8392 (h!24531 (toList!7388 lm!214))) a2!57)))))

(declare-fun bm!45677 () Bool)

(declare-fun call!45679 () List!23326)

(assert (=> bm!45677 (= call!45679 call!45680)))

(declare-fun b!1076762 () Bool)

(assert (=> b!1076762 (= e!615595 call!45679)))

(declare-fun b!1076763 () Bool)

(assert (=> b!1076763 (= e!615595 call!45679)))

(declare-fun b!1076764 () Bool)

(assert (=> b!1076764 (= e!615593 (ite c!108211 (t!32692 (toList!7388 lm!214)) (ite c!108210 (Cons!23322 (h!24531 (toList!7388 lm!214)) (t!32692 (toList!7388 lm!214))) Nil!23323)))))

(declare-fun b!1076765 () Bool)

(assert (=> b!1076765 (= e!615592 call!45681)))

(declare-fun b!1076766 () Bool)

(assert (=> b!1076766 (= e!615596 call!45680)))

(declare-fun b!1076767 () Bool)

(declare-fun res!717694 () Bool)

(assert (=> b!1076767 (=> (not res!717694) (not e!615594))))

(declare-fun containsKey!585 (List!23326 (_ BitVec 64)) Bool)

(assert (=> b!1076767 (= res!717694 (containsKey!585 lt!478398 a2!57))))

(declare-fun b!1076768 () Bool)

(assert (=> b!1076768 (= e!615594 (contains!6378 lt!478398 (tuple2!16765 a2!57 b2!55)))))

(declare-fun bm!45678 () Bool)

(declare-fun $colon$colon!610 (List!23326 tuple2!16764) List!23326)

(assert (=> bm!45678 (= call!45681 ($colon$colon!610 e!615593 (ite c!108212 (h!24531 (toList!7388 lm!214)) (tuple2!16765 a2!57 b2!55))))))

(declare-fun c!108213 () Bool)

(assert (=> bm!45678 (= c!108213 c!108212)))

(assert (= (and d!129693 c!108212) b!1076765))

(assert (= (and d!129693 (not c!108212)) b!1076761))

(assert (= (and b!1076761 c!108211) b!1076766))

(assert (= (and b!1076761 (not c!108211)) b!1076759))

(assert (= (and b!1076759 c!108210) b!1076763))

(assert (= (and b!1076759 (not c!108210)) b!1076762))

(assert (= (or b!1076763 b!1076762) bm!45677))

(assert (= (or b!1076766 bm!45677) bm!45676))

(assert (= (or b!1076765 bm!45676) bm!45678))

(assert (= (and bm!45678 c!108213) b!1076760))

(assert (= (and bm!45678 (not c!108213)) b!1076764))

(assert (= (and d!129693 res!717695) b!1076767))

(assert (= (and b!1076767 res!717694) b!1076768))

(declare-fun m!995841 () Bool)

(assert (=> b!1076768 m!995841))

(declare-fun m!995843 () Bool)

(assert (=> d!129693 m!995843))

(assert (=> d!129693 m!995785))

(declare-fun m!995845 () Bool)

(assert (=> b!1076760 m!995845))

(declare-fun m!995847 () Bool)

(assert (=> b!1076767 m!995847))

(declare-fun m!995849 () Bool)

(assert (=> bm!45678 m!995849))

(assert (=> b!1076659 d!129693))

(declare-fun d!129699 () Bool)

(declare-fun e!615597 () Bool)

(assert (=> d!129699 e!615597))

(declare-fun res!717697 () Bool)

(assert (=> d!129699 (=> (not res!717697) (not e!615597))))

(declare-fun lt!478409 () ListLongMap!14745)

(assert (=> d!129699 (= res!717697 (contains!6375 lt!478409 (_1!8392 lt!478375)))))

(declare-fun lt!478408 () List!23326)

(assert (=> d!129699 (= lt!478409 (ListLongMap!14746 lt!478408))))

(declare-fun lt!478407 () Unit!35397)

(declare-fun lt!478410 () Unit!35397)

(assert (=> d!129699 (= lt!478407 lt!478410)))

(assert (=> d!129699 (= (getValueByKey!618 lt!478408 (_1!8392 lt!478375)) (Some!668 (_2!8392 lt!478375)))))

(assert (=> d!129699 (= lt!478410 (lemmaContainsTupThenGetReturnValue!293 lt!478408 (_1!8392 lt!478375) (_2!8392 lt!478375)))))

(assert (=> d!129699 (= lt!478408 (insertStrictlySorted!387 (toList!7388 (+!3201 lm!214 lt!478377)) (_1!8392 lt!478375) (_2!8392 lt!478375)))))

(assert (=> d!129699 (= (+!3201 (+!3201 lm!214 lt!478377) lt!478375) lt!478409)))

(declare-fun b!1076769 () Bool)

(declare-fun res!717696 () Bool)

(assert (=> b!1076769 (=> (not res!717696) (not e!615597))))

(assert (=> b!1076769 (= res!717696 (= (getValueByKey!618 (toList!7388 lt!478409) (_1!8392 lt!478375)) (Some!668 (_2!8392 lt!478375))))))

(declare-fun b!1076770 () Bool)

(assert (=> b!1076770 (= e!615597 (contains!6378 (toList!7388 lt!478409) lt!478375))))

(assert (= (and d!129699 res!717697) b!1076769))

(assert (= (and b!1076769 res!717696) b!1076770))

(declare-fun m!995851 () Bool)

(assert (=> d!129699 m!995851))

(declare-fun m!995853 () Bool)

(assert (=> d!129699 m!995853))

(declare-fun m!995855 () Bool)

(assert (=> d!129699 m!995855))

(declare-fun m!995857 () Bool)

(assert (=> d!129699 m!995857))

(declare-fun m!995859 () Bool)

(assert (=> b!1076769 m!995859))

(declare-fun m!995861 () Bool)

(assert (=> b!1076770 m!995861))

(assert (=> b!1076659 d!129699))

(declare-fun d!129701 () Bool)

(declare-fun e!615604 () Bool)

(assert (=> d!129701 e!615604))

(declare-fun res!717707 () Bool)

(assert (=> d!129701 (=> (not res!717707) (not e!615604))))

(declare-fun lt!478419 () List!23326)

(assert (=> d!129701 (= res!717707 (isStrictlySorted!722 lt!478419))))

(declare-fun e!615602 () List!23326)

(assert (=> d!129701 (= lt!478419 e!615602)))

(declare-fun c!108216 () Bool)

(assert (=> d!129701 (= c!108216 (and (is-Cons!23322 (toList!7388 lm!214)) (bvslt (_1!8392 (h!24531 (toList!7388 lm!214))) a1!69)))))

(assert (=> d!129701 (isStrictlySorted!722 (toList!7388 lm!214))))

(assert (=> d!129701 (= (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79) lt!478419)))

(declare-fun bm!45679 () Bool)

(declare-fun call!45683 () List!23326)

(declare-fun call!45684 () List!23326)

(assert (=> bm!45679 (= call!45683 call!45684)))

(declare-fun b!1076777 () Bool)

(declare-fun c!108214 () Bool)

(assert (=> b!1076777 (= c!108214 (and (is-Cons!23322 (toList!7388 lm!214)) (bvsgt (_1!8392 (h!24531 (toList!7388 lm!214))) a1!69)))))

(declare-fun e!615606 () List!23326)

(declare-fun e!615605 () List!23326)

(assert (=> b!1076777 (= e!615606 e!615605)))

(declare-fun b!1076778 () Bool)

(declare-fun e!615603 () List!23326)

(assert (=> b!1076778 (= e!615603 (insertStrictlySorted!387 (t!32692 (toList!7388 lm!214)) a1!69 b1!79))))

(declare-fun b!1076779 () Bool)

(assert (=> b!1076779 (= e!615602 e!615606)))

(declare-fun c!108215 () Bool)

(assert (=> b!1076779 (= c!108215 (and (is-Cons!23322 (toList!7388 lm!214)) (= (_1!8392 (h!24531 (toList!7388 lm!214))) a1!69)))))

(declare-fun bm!45680 () Bool)

(declare-fun call!45682 () List!23326)

(assert (=> bm!45680 (= call!45682 call!45683)))

(declare-fun b!1076780 () Bool)

(assert (=> b!1076780 (= e!615605 call!45682)))

(declare-fun b!1076781 () Bool)

(assert (=> b!1076781 (= e!615605 call!45682)))

(declare-fun b!1076782 () Bool)

(assert (=> b!1076782 (= e!615603 (ite c!108215 (t!32692 (toList!7388 lm!214)) (ite c!108214 (Cons!23322 (h!24531 (toList!7388 lm!214)) (t!32692 (toList!7388 lm!214))) Nil!23323)))))

(declare-fun b!1076783 () Bool)

(assert (=> b!1076783 (= e!615602 call!45684)))

(declare-fun b!1076784 () Bool)

(assert (=> b!1076784 (= e!615606 call!45683)))

(declare-fun b!1076785 () Bool)

(declare-fun res!717706 () Bool)

(assert (=> b!1076785 (=> (not res!717706) (not e!615604))))

(assert (=> b!1076785 (= res!717706 (containsKey!585 lt!478419 a1!69))))

(declare-fun b!1076786 () Bool)

(assert (=> b!1076786 (= e!615604 (contains!6378 lt!478419 (tuple2!16765 a1!69 b1!79)))))

(declare-fun bm!45681 () Bool)

(assert (=> bm!45681 (= call!45684 ($colon$colon!610 e!615603 (ite c!108216 (h!24531 (toList!7388 lm!214)) (tuple2!16765 a1!69 b1!79))))))

(declare-fun c!108217 () Bool)

(assert (=> bm!45681 (= c!108217 c!108216)))

(assert (= (and d!129701 c!108216) b!1076783))

(assert (= (and d!129701 (not c!108216)) b!1076779))

(assert (= (and b!1076779 c!108215) b!1076784))

(assert (= (and b!1076779 (not c!108215)) b!1076777))

(assert (= (and b!1076777 c!108214) b!1076781))

(assert (= (and b!1076777 (not c!108214)) b!1076780))

(assert (= (or b!1076781 b!1076780) bm!45680))

(assert (= (or b!1076784 bm!45680) bm!45679))

(assert (= (or b!1076783 bm!45679) bm!45681))

(assert (= (and bm!45681 c!108217) b!1076778))

(assert (= (and bm!45681 (not c!108217)) b!1076782))

(assert (= (and d!129701 res!717707) b!1076785))

(assert (= (and b!1076785 res!717706) b!1076786))

(declare-fun m!995863 () Bool)

(assert (=> b!1076786 m!995863))

(declare-fun m!995865 () Bool)

(assert (=> d!129701 m!995865))

(assert (=> d!129701 m!995785))

(declare-fun m!995867 () Bool)

(assert (=> b!1076778 m!995867))

(declare-fun m!995869 () Bool)

(assert (=> b!1076785 m!995869))

(declare-fun m!995871 () Bool)

(assert (=> bm!45681 m!995871))

(assert (=> b!1076659 d!129701))

(declare-fun d!129703 () Bool)

(declare-fun e!615607 () Bool)

(assert (=> d!129703 e!615607))

(declare-fun res!717709 () Bool)

(assert (=> d!129703 (=> (not res!717709) (not e!615607))))

(declare-fun lt!478422 () ListLongMap!14745)

(assert (=> d!129703 (= res!717709 (contains!6375 lt!478422 (_1!8392 lt!478377)))))

(declare-fun lt!478421 () List!23326)

(assert (=> d!129703 (= lt!478422 (ListLongMap!14746 lt!478421))))

(declare-fun lt!478420 () Unit!35397)

(declare-fun lt!478423 () Unit!35397)

(assert (=> d!129703 (= lt!478420 lt!478423)))

(assert (=> d!129703 (= (getValueByKey!618 lt!478421 (_1!8392 lt!478377)) (Some!668 (_2!8392 lt!478377)))))

(assert (=> d!129703 (= lt!478423 (lemmaContainsTupThenGetReturnValue!293 lt!478421 (_1!8392 lt!478377) (_2!8392 lt!478377)))))

(assert (=> d!129703 (= lt!478421 (insertStrictlySorted!387 (toList!7388 lm!214) (_1!8392 lt!478377) (_2!8392 lt!478377)))))

(assert (=> d!129703 (= (+!3201 lm!214 lt!478377) lt!478422)))

(declare-fun b!1076789 () Bool)

(declare-fun res!717708 () Bool)

(assert (=> b!1076789 (=> (not res!717708) (not e!615607))))

(assert (=> b!1076789 (= res!717708 (= (getValueByKey!618 (toList!7388 lt!478422) (_1!8392 lt!478377)) (Some!668 (_2!8392 lt!478377))))))

(declare-fun b!1076790 () Bool)

(assert (=> b!1076790 (= e!615607 (contains!6378 (toList!7388 lt!478422) lt!478377))))

(assert (= (and d!129703 res!717709) b!1076789))

(assert (= (and b!1076789 res!717708) b!1076790))

(declare-fun m!995873 () Bool)

(assert (=> d!129703 m!995873))

(declare-fun m!995875 () Bool)

(assert (=> d!129703 m!995875))

(declare-fun m!995877 () Bool)

(assert (=> d!129703 m!995877))

(declare-fun m!995879 () Bool)

(assert (=> d!129703 m!995879))

(declare-fun m!995881 () Bool)

(assert (=> b!1076789 m!995881))

(declare-fun m!995883 () Bool)

(assert (=> b!1076790 m!995883))

(assert (=> b!1076659 d!129703))

(declare-fun d!129705 () Bool)

(declare-fun e!615611 () Bool)

(assert (=> d!129705 e!615611))

(declare-fun res!717713 () Bool)

(assert (=> d!129705 (=> (not res!717713) (not e!615611))))

(declare-fun lt!478428 () List!23326)

(assert (=> d!129705 (= res!717713 (isStrictlySorted!722 lt!478428))))

(declare-fun e!615609 () List!23326)

(assert (=> d!129705 (= lt!478428 e!615609)))

(declare-fun c!108220 () Bool)

(assert (=> d!129705 (= c!108220 (and (is-Cons!23322 (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79)) (bvslt (_1!8392 (h!24531 (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79))) a2!57)))))

(assert (=> d!129705 (isStrictlySorted!722 (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79))))

(assert (=> d!129705 (= (insertStrictlySorted!387 (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79) a2!57 b2!55) lt!478428)))

(declare-fun bm!45682 () Bool)

(declare-fun call!45686 () List!23326)

(declare-fun call!45687 () List!23326)

(assert (=> bm!45682 (= call!45686 call!45687)))

(declare-fun c!108218 () Bool)

(declare-fun b!1076793 () Bool)

(assert (=> b!1076793 (= c!108218 (and (is-Cons!23322 (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79)) (bvsgt (_1!8392 (h!24531 (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79))) a2!57)))))

(declare-fun e!615613 () List!23326)

(declare-fun e!615612 () List!23326)

(assert (=> b!1076793 (= e!615613 e!615612)))

(declare-fun b!1076794 () Bool)

(declare-fun e!615610 () List!23326)

(assert (=> b!1076794 (= e!615610 (insertStrictlySorted!387 (t!32692 (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79)) a2!57 b2!55))))

(declare-fun b!1076795 () Bool)

(assert (=> b!1076795 (= e!615609 e!615613)))

(declare-fun c!108219 () Bool)

(assert (=> b!1076795 (= c!108219 (and (is-Cons!23322 (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79)) (= (_1!8392 (h!24531 (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79))) a2!57)))))

(declare-fun bm!45683 () Bool)

(declare-fun call!45685 () List!23326)

(assert (=> bm!45683 (= call!45685 call!45686)))

(declare-fun b!1076796 () Bool)

(assert (=> b!1076796 (= e!615612 call!45685)))

(declare-fun b!1076797 () Bool)

(assert (=> b!1076797 (= e!615612 call!45685)))

(declare-fun b!1076798 () Bool)

(assert (=> b!1076798 (= e!615610 (ite c!108219 (t!32692 (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79)) (ite c!108218 (Cons!23322 (h!24531 (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79)) (t!32692 (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79))) Nil!23323)))))

(declare-fun b!1076799 () Bool)

(assert (=> b!1076799 (= e!615609 call!45687)))

(declare-fun b!1076800 () Bool)

(assert (=> b!1076800 (= e!615613 call!45686)))

(declare-fun b!1076801 () Bool)

(declare-fun res!717712 () Bool)

(assert (=> b!1076801 (=> (not res!717712) (not e!615611))))

(assert (=> b!1076801 (= res!717712 (containsKey!585 lt!478428 a2!57))))

(declare-fun b!1076802 () Bool)

(assert (=> b!1076802 (= e!615611 (contains!6378 lt!478428 (tuple2!16765 a2!57 b2!55)))))

(declare-fun bm!45684 () Bool)

(assert (=> bm!45684 (= call!45687 ($colon$colon!610 e!615610 (ite c!108220 (h!24531 (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79)) (tuple2!16765 a2!57 b2!55))))))

(declare-fun c!108221 () Bool)

(assert (=> bm!45684 (= c!108221 c!108220)))

(assert (= (and d!129705 c!108220) b!1076799))

(assert (= (and d!129705 (not c!108220)) b!1076795))

(assert (= (and b!1076795 c!108219) b!1076800))

(assert (= (and b!1076795 (not c!108219)) b!1076793))

(assert (= (and b!1076793 c!108218) b!1076797))

(assert (= (and b!1076793 (not c!108218)) b!1076796))

(assert (= (or b!1076797 b!1076796) bm!45683))

(assert (= (or b!1076800 bm!45683) bm!45682))

(assert (= (or b!1076799 bm!45682) bm!45684))

(assert (= (and bm!45684 c!108221) b!1076794))

(assert (= (and bm!45684 (not c!108221)) b!1076798))

(assert (= (and d!129705 res!717713) b!1076801))

(assert (= (and b!1076801 res!717712) b!1076802))

(declare-fun m!995901 () Bool)

(assert (=> b!1076802 m!995901))

(declare-fun m!995903 () Bool)

(assert (=> d!129705 m!995903))

(assert (=> d!129705 m!995795))

(declare-fun m!995907 () Bool)

(assert (=> d!129705 m!995907))

(declare-fun m!995911 () Bool)

(assert (=> b!1076794 m!995911))

(declare-fun m!995915 () Bool)

(assert (=> b!1076801 m!995915))

(declare-fun m!995919 () Bool)

(assert (=> bm!45684 m!995919))

(assert (=> b!1076659 d!129705))

(declare-fun d!129711 () Bool)

(assert (=> d!129711 (= (insertStrictlySorted!387 (insertStrictlySorted!387 (toList!7388 lm!214) a1!69 b1!79) a2!57 b2!55) (insertStrictlySorted!387 (insertStrictlySorted!387 (toList!7388 lm!214) a2!57 b2!55) a1!69 b1!79))))

(declare-fun lt!478447 () Unit!35397)

(declare-fun choose!1767 (List!23326 (_ BitVec 64) B!1776 (_ BitVec 64) B!1776) Unit!35397)

(assert (=> d!129711 (= lt!478447 (choose!1767 (toList!7388 lm!214) a1!69 b1!79 a2!57 b2!55))))

(assert (=> d!129711 (not (= a1!69 a2!57))))

(assert (=> d!129711 (= (lemmaInsertStrictlySortedCommutative!3 (toList!7388 lm!214) a1!69 b1!79 a2!57 b2!55) lt!478447)))

