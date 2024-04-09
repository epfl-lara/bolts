; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!95316 () Bool)

(assert start!95316)

(declare-fun res!717653 () Bool)

(declare-fun e!615530 () Bool)

(assert (=> start!95316 (=> (not res!717653) (not e!615530))))

(declare-fun a1!69 () (_ BitVec 64))

(declare-fun a2!57 () (_ BitVec 64))

(assert (=> start!95316 (= res!717653 (not (= a1!69 a2!57)))))

(assert (=> start!95316 e!615530))

(declare-fun tp_is_empty!26067 () Bool)

(assert (=> start!95316 tp_is_empty!26067))

(assert (=> start!95316 true))

(declare-datatypes ((B!1774 0))(
  ( (B!1775 (val!13090 Int)) )
))
(declare-datatypes ((tuple2!16762 0))(
  ( (tuple2!16763 (_1!8391 (_ BitVec 64)) (_2!8391 B!1774)) )
))
(declare-datatypes ((List!23325 0))(
  ( (Nil!23322) (Cons!23321 (h!24530 tuple2!16762) (t!32691 List!23325)) )
))
(declare-datatypes ((ListLongMap!14743 0))(
  ( (ListLongMap!14744 (toList!7387 List!23325)) )
))
(declare-fun lm!214 () ListLongMap!14743)

(declare-fun e!615529 () Bool)

(declare-fun inv!37862 (ListLongMap!14743) Bool)

(assert (=> start!95316 (and (inv!37862 lm!214) e!615529)))

(declare-fun b!1076649 () Bool)

(declare-fun res!717652 () Bool)

(assert (=> b!1076649 (=> (not res!717652) (not e!615530))))

(declare-fun isStrictlySorted!721 (List!23325) Bool)

(assert (=> b!1076649 (= res!717652 (isStrictlySorted!721 (toList!7387 lm!214)))))

(declare-fun b!1076650 () Bool)

(declare-fun lt!478368 () tuple2!16762)

(declare-fun lt!478367 () tuple2!16762)

(declare-fun +!3200 (ListLongMap!14743 tuple2!16762) ListLongMap!14743)

(assert (=> b!1076650 (= e!615530 (not (= (+!3200 (+!3200 lm!214 lt!478368) lt!478367) (+!3200 (+!3200 lm!214 lt!478367) lt!478368))))))

(declare-fun b2!55 () B!1774)

(assert (=> b!1076650 (= lt!478367 (tuple2!16763 a2!57 b2!55))))

(declare-fun b1!79 () B!1774)

(assert (=> b!1076650 (= lt!478368 (tuple2!16763 a1!69 b1!79))))

(declare-fun insertStrictlySorted!386 (List!23325 (_ BitVec 64) B!1774) List!23325)

(assert (=> b!1076650 (= (insertStrictlySorted!386 (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79) a2!57 b2!55) (insertStrictlySorted!386 (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55) a1!69 b1!79))))

(declare-datatypes ((Unit!35395 0))(
  ( (Unit!35396) )
))
(declare-fun lt!478366 () Unit!35395)

(declare-fun lemmaInsertStrictlySortedCommutative!2 (List!23325 (_ BitVec 64) B!1774 (_ BitVec 64) B!1774) Unit!35395)

(assert (=> b!1076650 (= lt!478366 (lemmaInsertStrictlySortedCommutative!2 (toList!7387 lm!214) a1!69 b1!79 a2!57 b2!55))))

(declare-fun b!1076651 () Bool)

(declare-fun tp!78282 () Bool)

(assert (=> b!1076651 (= e!615529 tp!78282)))

(assert (= (and start!95316 res!717653) b!1076649))

(assert (= (and b!1076649 res!717652) b!1076650))

(assert (= start!95316 b!1076651))

(declare-fun m!995761 () Bool)

(assert (=> start!95316 m!995761))

(declare-fun m!995763 () Bool)

(assert (=> b!1076649 m!995763))

(declare-fun m!995765 () Bool)

(assert (=> b!1076650 m!995765))

(declare-fun m!995767 () Bool)

(assert (=> b!1076650 m!995767))

(declare-fun m!995769 () Bool)

(assert (=> b!1076650 m!995769))

(declare-fun m!995771 () Bool)

(assert (=> b!1076650 m!995771))

(assert (=> b!1076650 m!995769))

(assert (=> b!1076650 m!995765))

(declare-fun m!995773 () Bool)

(assert (=> b!1076650 m!995773))

(declare-fun m!995775 () Bool)

(assert (=> b!1076650 m!995775))

(declare-fun m!995777 () Bool)

(assert (=> b!1076650 m!995777))

(declare-fun m!995779 () Bool)

(assert (=> b!1076650 m!995779))

(assert (=> b!1076650 m!995773))

(declare-fun m!995781 () Bool)

(assert (=> b!1076650 m!995781))

(assert (=> b!1076650 m!995777))

(check-sat (not b!1076651) tp_is_empty!26067 (not b!1076649) (not start!95316) (not b!1076650))
(check-sat)
(get-model)

(declare-fun d!129681 () Bool)

(assert (=> d!129681 (= (inv!37862 lm!214) (isStrictlySorted!721 (toList!7387 lm!214)))))

(declare-fun bs!31718 () Bool)

(assert (= bs!31718 d!129681))

(assert (=> bs!31718 m!995763))

(assert (=> start!95316 d!129681))

(declare-fun d!129685 () Bool)

(declare-fun res!717670 () Bool)

(declare-fun e!615547 () Bool)

(assert (=> d!129685 (=> res!717670 e!615547)))

(get-info :version)

(assert (=> d!129685 (= res!717670 (or ((_ is Nil!23322) (toList!7387 lm!214)) ((_ is Nil!23322) (t!32691 (toList!7387 lm!214)))))))

(assert (=> d!129685 (= (isStrictlySorted!721 (toList!7387 lm!214)) e!615547)))

(declare-fun b!1076671 () Bool)

(declare-fun e!615548 () Bool)

(assert (=> b!1076671 (= e!615547 e!615548)))

(declare-fun res!717671 () Bool)

(assert (=> b!1076671 (=> (not res!717671) (not e!615548))))

(assert (=> b!1076671 (= res!717671 (bvslt (_1!8391 (h!24530 (toList!7387 lm!214))) (_1!8391 (h!24530 (t!32691 (toList!7387 lm!214))))))))

(declare-fun b!1076672 () Bool)

(assert (=> b!1076672 (= e!615548 (isStrictlySorted!721 (t!32691 (toList!7387 lm!214))))))

(assert (= (and d!129685 (not res!717670)) b!1076671))

(assert (= (and b!1076671 res!717671) b!1076672))

(declare-fun m!995807 () Bool)

(assert (=> b!1076672 m!995807))

(assert (=> b!1076649 d!129685))

(declare-fun b!1076738 () Bool)

(declare-fun e!615584 () List!23325)

(declare-fun call!45670 () List!23325)

(assert (=> b!1076738 (= e!615584 call!45670)))

(declare-fun e!615583 () Bool)

(declare-fun lt!478397 () List!23325)

(declare-fun b!1076740 () Bool)

(declare-fun contains!6377 (List!23325 tuple2!16762) Bool)

(assert (=> b!1076740 (= e!615583 (contains!6377 lt!478397 (tuple2!16763 a1!69 b1!79)))))

(declare-fun c!108205 () Bool)

(declare-fun bm!45667 () Bool)

(declare-fun call!45671 () List!23325)

(declare-fun e!615581 () List!23325)

(declare-fun $colon$colon!608 (List!23325 tuple2!16762) List!23325)

(assert (=> bm!45667 (= call!45671 ($colon$colon!608 e!615581 (ite c!108205 (h!24530 (toList!7387 lm!214)) (tuple2!16763 a1!69 b1!79))))))

(declare-fun c!108203 () Bool)

(assert (=> bm!45667 (= c!108203 c!108205)))

(declare-fun b!1076741 () Bool)

(declare-fun e!615582 () List!23325)

(declare-fun call!45672 () List!23325)

(assert (=> b!1076741 (= e!615582 call!45672)))

(declare-fun b!1076743 () Bool)

(declare-fun c!108202 () Bool)

(assert (=> b!1076743 (= c!108202 (and ((_ is Cons!23321) (toList!7387 lm!214)) (bvsgt (_1!8391 (h!24530 (toList!7387 lm!214))) a1!69)))))

(assert (=> b!1076743 (= e!615582 e!615584)))

(declare-fun c!108204 () Bool)

(declare-fun b!1076745 () Bool)

(assert (=> b!1076745 (= e!615581 (ite c!108204 (t!32691 (toList!7387 lm!214)) (ite c!108202 (Cons!23321 (h!24530 (toList!7387 lm!214)) (t!32691 (toList!7387 lm!214))) Nil!23322)))))

(declare-fun b!1076746 () Bool)

(declare-fun e!615585 () List!23325)

(assert (=> b!1076746 (= e!615585 call!45671)))

(declare-fun b!1076747 () Bool)

(assert (=> b!1076747 (= e!615581 (insertStrictlySorted!386 (t!32691 (toList!7387 lm!214)) a1!69 b1!79))))

(declare-fun d!129691 () Bool)

(assert (=> d!129691 e!615583))

(declare-fun res!717689 () Bool)

(assert (=> d!129691 (=> (not res!717689) (not e!615583))))

(assert (=> d!129691 (= res!717689 (isStrictlySorted!721 lt!478397))))

(assert (=> d!129691 (= lt!478397 e!615585)))

(assert (=> d!129691 (= c!108205 (and ((_ is Cons!23321) (toList!7387 lm!214)) (bvslt (_1!8391 (h!24530 (toList!7387 lm!214))) a1!69)))))

(assert (=> d!129691 (isStrictlySorted!721 (toList!7387 lm!214))))

(assert (=> d!129691 (= (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79) lt!478397)))

(declare-fun b!1076748 () Bool)

(declare-fun res!717688 () Bool)

(assert (=> b!1076748 (=> (not res!717688) (not e!615583))))

(declare-fun containsKey!584 (List!23325 (_ BitVec 64)) Bool)

(assert (=> b!1076748 (= res!717688 (containsKey!584 lt!478397 a1!69))))

(declare-fun bm!45668 () Bool)

(assert (=> bm!45668 (= call!45672 call!45671)))

(declare-fun b!1076749 () Bool)

(assert (=> b!1076749 (= e!615584 call!45670)))

(declare-fun b!1076750 () Bool)

(assert (=> b!1076750 (= e!615585 e!615582)))

(assert (=> b!1076750 (= c!108204 (and ((_ is Cons!23321) (toList!7387 lm!214)) (= (_1!8391 (h!24530 (toList!7387 lm!214))) a1!69)))))

(declare-fun bm!45669 () Bool)

(assert (=> bm!45669 (= call!45670 call!45672)))

(assert (= (and d!129691 c!108205) b!1076746))

(assert (= (and d!129691 (not c!108205)) b!1076750))

(assert (= (and b!1076750 c!108204) b!1076741))

(assert (= (and b!1076750 (not c!108204)) b!1076743))

(assert (= (and b!1076743 c!108202) b!1076749))

(assert (= (and b!1076743 (not c!108202)) b!1076738))

(assert (= (or b!1076749 b!1076738) bm!45669))

(assert (= (or b!1076741 bm!45669) bm!45668))

(assert (= (or b!1076746 bm!45668) bm!45667))

(assert (= (and bm!45667 c!108203) b!1076747))

(assert (= (and bm!45667 (not c!108203)) b!1076745))

(assert (= (and d!129691 res!717689) b!1076748))

(assert (= (and b!1076748 res!717688) b!1076740))

(declare-fun m!995831 () Bool)

(assert (=> b!1076740 m!995831))

(declare-fun m!995833 () Bool)

(assert (=> b!1076747 m!995833))

(declare-fun m!995835 () Bool)

(assert (=> d!129691 m!995835))

(assert (=> d!129691 m!995763))

(declare-fun m!995837 () Bool)

(assert (=> b!1076748 m!995837))

(declare-fun m!995839 () Bool)

(assert (=> bm!45667 m!995839))

(assert (=> b!1076650 d!129691))

(declare-fun d!129697 () Bool)

(declare-fun e!615614 () Bool)

(assert (=> d!129697 e!615614))

(declare-fun res!717714 () Bool)

(assert (=> d!129697 (=> (not res!717714) (not e!615614))))

(declare-fun lt!478429 () ListLongMap!14743)

(declare-fun contains!6380 (ListLongMap!14743 (_ BitVec 64)) Bool)

(assert (=> d!129697 (= res!717714 (contains!6380 lt!478429 (_1!8391 lt!478368)))))

(declare-fun lt!478430 () List!23325)

(assert (=> d!129697 (= lt!478429 (ListLongMap!14744 lt!478430))))

(declare-fun lt!478432 () Unit!35395)

(declare-fun lt!478431 () Unit!35395)

(assert (=> d!129697 (= lt!478432 lt!478431)))

(declare-datatypes ((Option!671 0))(
  ( (Some!670 (v!15711 B!1774)) (None!669) )
))
(declare-fun getValueByKey!620 (List!23325 (_ BitVec 64)) Option!671)

(assert (=> d!129697 (= (getValueByKey!620 lt!478430 (_1!8391 lt!478368)) (Some!670 (_2!8391 lt!478368)))))

(declare-fun lemmaContainsTupThenGetReturnValue!295 (List!23325 (_ BitVec 64) B!1774) Unit!35395)

(assert (=> d!129697 (= lt!478431 (lemmaContainsTupThenGetReturnValue!295 lt!478430 (_1!8391 lt!478368) (_2!8391 lt!478368)))))

(assert (=> d!129697 (= lt!478430 (insertStrictlySorted!386 (toList!7387 lm!214) (_1!8391 lt!478368) (_2!8391 lt!478368)))))

(assert (=> d!129697 (= (+!3200 lm!214 lt!478368) lt!478429)))

(declare-fun b!1076803 () Bool)

(declare-fun res!717715 () Bool)

(assert (=> b!1076803 (=> (not res!717715) (not e!615614))))

(assert (=> b!1076803 (= res!717715 (= (getValueByKey!620 (toList!7387 lt!478429) (_1!8391 lt!478368)) (Some!670 (_2!8391 lt!478368))))))

(declare-fun b!1076804 () Bool)

(assert (=> b!1076804 (= e!615614 (contains!6377 (toList!7387 lt!478429) lt!478368))))

(assert (= (and d!129697 res!717714) b!1076803))

(assert (= (and b!1076803 res!717715) b!1076804))

(declare-fun m!995897 () Bool)

(assert (=> d!129697 m!995897))

(declare-fun m!995899 () Bool)

(assert (=> d!129697 m!995899))

(declare-fun m!995905 () Bool)

(assert (=> d!129697 m!995905))

(declare-fun m!995909 () Bool)

(assert (=> d!129697 m!995909))

(declare-fun m!995913 () Bool)

(assert (=> b!1076803 m!995913))

(declare-fun m!995917 () Bool)

(assert (=> b!1076804 m!995917))

(assert (=> b!1076650 d!129697))

(declare-fun b!1076815 () Bool)

(declare-fun e!615623 () List!23325)

(declare-fun call!45691 () List!23325)

(assert (=> b!1076815 (= e!615623 call!45691)))

(declare-fun b!1076816 () Bool)

(declare-fun lt!478434 () List!23325)

(declare-fun e!615622 () Bool)

(assert (=> b!1076816 (= e!615622 (contains!6377 lt!478434 (tuple2!16763 a2!57 b2!55)))))

(declare-fun e!615620 () List!23325)

(declare-fun bm!45688 () Bool)

(declare-fun c!108229 () Bool)

(declare-fun call!45692 () List!23325)

(assert (=> bm!45688 (= call!45692 ($colon$colon!608 e!615620 (ite c!108229 (h!24530 (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79)) (tuple2!16763 a2!57 b2!55))))))

(declare-fun c!108227 () Bool)

(assert (=> bm!45688 (= c!108227 c!108229)))

(declare-fun b!1076817 () Bool)

(declare-fun e!615621 () List!23325)

(declare-fun call!45693 () List!23325)

(assert (=> b!1076817 (= e!615621 call!45693)))

(declare-fun c!108226 () Bool)

(declare-fun b!1076818 () Bool)

(assert (=> b!1076818 (= c!108226 (and ((_ is Cons!23321) (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79)) (bvsgt (_1!8391 (h!24530 (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79))) a2!57)))))

(assert (=> b!1076818 (= e!615621 e!615623)))

(declare-fun c!108228 () Bool)

(declare-fun b!1076819 () Bool)

(assert (=> b!1076819 (= e!615620 (ite c!108228 (t!32691 (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79)) (ite c!108226 (Cons!23321 (h!24530 (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79)) (t!32691 (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79))) Nil!23322)))))

(declare-fun b!1076820 () Bool)

(declare-fun e!615624 () List!23325)

(assert (=> b!1076820 (= e!615624 call!45692)))

(declare-fun b!1076821 () Bool)

(assert (=> b!1076821 (= e!615620 (insertStrictlySorted!386 (t!32691 (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79)) a2!57 b2!55))))

(declare-fun d!129709 () Bool)

(assert (=> d!129709 e!615622))

(declare-fun res!717719 () Bool)

(assert (=> d!129709 (=> (not res!717719) (not e!615622))))

(assert (=> d!129709 (= res!717719 (isStrictlySorted!721 lt!478434))))

(assert (=> d!129709 (= lt!478434 e!615624)))

(assert (=> d!129709 (= c!108229 (and ((_ is Cons!23321) (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79)) (bvslt (_1!8391 (h!24530 (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79))) a2!57)))))

(assert (=> d!129709 (isStrictlySorted!721 (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79))))

(assert (=> d!129709 (= (insertStrictlySorted!386 (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79) a2!57 b2!55) lt!478434)))

(declare-fun b!1076822 () Bool)

(declare-fun res!717718 () Bool)

(assert (=> b!1076822 (=> (not res!717718) (not e!615622))))

(assert (=> b!1076822 (= res!717718 (containsKey!584 lt!478434 a2!57))))

(declare-fun bm!45689 () Bool)

(assert (=> bm!45689 (= call!45693 call!45692)))

(declare-fun b!1076823 () Bool)

(assert (=> b!1076823 (= e!615623 call!45691)))

(declare-fun b!1076824 () Bool)

(assert (=> b!1076824 (= e!615624 e!615621)))

(assert (=> b!1076824 (= c!108228 (and ((_ is Cons!23321) (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79)) (= (_1!8391 (h!24530 (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79))) a2!57)))))

(declare-fun bm!45690 () Bool)

(assert (=> bm!45690 (= call!45691 call!45693)))

(assert (= (and d!129709 c!108229) b!1076820))

(assert (= (and d!129709 (not c!108229)) b!1076824))

(assert (= (and b!1076824 c!108228) b!1076817))

(assert (= (and b!1076824 (not c!108228)) b!1076818))

(assert (= (and b!1076818 c!108226) b!1076823))

(assert (= (and b!1076818 (not c!108226)) b!1076815))

(assert (= (or b!1076823 b!1076815) bm!45690))

(assert (= (or b!1076817 bm!45690) bm!45689))

(assert (= (or b!1076820 bm!45689) bm!45688))

(assert (= (and bm!45688 c!108227) b!1076821))

(assert (= (and bm!45688 (not c!108227)) b!1076819))

(assert (= (and d!129709 res!717719) b!1076822))

(assert (= (and b!1076822 res!717718) b!1076816))

(declare-fun m!995931 () Bool)

(assert (=> b!1076816 m!995931))

(declare-fun m!995933 () Bool)

(assert (=> b!1076821 m!995933))

(declare-fun m!995935 () Bool)

(assert (=> d!129709 m!995935))

(assert (=> d!129709 m!995769))

(declare-fun m!995937 () Bool)

(assert (=> d!129709 m!995937))

(declare-fun m!995939 () Bool)

(assert (=> b!1076822 m!995939))

(declare-fun m!995941 () Bool)

(assert (=> bm!45688 m!995941))

(assert (=> b!1076650 d!129709))

(declare-fun d!129715 () Bool)

(assert (=> d!129715 (= (insertStrictlySorted!386 (insertStrictlySorted!386 (toList!7387 lm!214) a1!69 b1!79) a2!57 b2!55) (insertStrictlySorted!386 (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55) a1!69 b1!79))))

(declare-fun lt!478455 () Unit!35395)

(declare-fun choose!1765 (List!23325 (_ BitVec 64) B!1774 (_ BitVec 64) B!1774) Unit!35395)

(assert (=> d!129715 (= lt!478455 (choose!1765 (toList!7387 lm!214) a1!69 b1!79 a2!57 b2!55))))

(assert (=> d!129715 (not (= a1!69 a2!57))))

(assert (=> d!129715 (= (lemmaInsertStrictlySortedCommutative!2 (toList!7387 lm!214) a1!69 b1!79 a2!57 b2!55) lt!478455)))

(declare-fun bs!31721 () Bool)

(assert (= bs!31721 d!129715))

(assert (=> bs!31721 m!995769))

(assert (=> bs!31721 m!995769))

(assert (=> bs!31721 m!995771))

(declare-fun m!996005 () Bool)

(assert (=> bs!31721 m!996005))

(assert (=> bs!31721 m!995765))

(assert (=> bs!31721 m!995765))

(assert (=> bs!31721 m!995767))

(assert (=> b!1076650 d!129715))

(declare-fun b!1076861 () Bool)

(declare-fun e!615646 () List!23325)

(declare-fun call!45703 () List!23325)

(assert (=> b!1076861 (= e!615646 call!45703)))

(declare-fun b!1076862 () Bool)

(declare-fun lt!478456 () List!23325)

(declare-fun e!615645 () Bool)

(assert (=> b!1076862 (= e!615645 (contains!6377 lt!478456 (tuple2!16763 a1!69 b1!79)))))

(declare-fun e!615643 () List!23325)

(declare-fun bm!45700 () Bool)

(declare-fun c!108245 () Bool)

(declare-fun call!45704 () List!23325)

(assert (=> bm!45700 (= call!45704 ($colon$colon!608 e!615643 (ite c!108245 (h!24530 (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55)) (tuple2!16763 a1!69 b1!79))))))

(declare-fun c!108243 () Bool)

(assert (=> bm!45700 (= c!108243 c!108245)))

(declare-fun b!1076863 () Bool)

(declare-fun e!615644 () List!23325)

(declare-fun call!45705 () List!23325)

(assert (=> b!1076863 (= e!615644 call!45705)))

(declare-fun b!1076864 () Bool)

(declare-fun c!108242 () Bool)

(assert (=> b!1076864 (= c!108242 (and ((_ is Cons!23321) (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55)) (bvsgt (_1!8391 (h!24530 (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55))) a1!69)))))

(assert (=> b!1076864 (= e!615644 e!615646)))

(declare-fun c!108244 () Bool)

(declare-fun b!1076865 () Bool)

(assert (=> b!1076865 (= e!615643 (ite c!108244 (t!32691 (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55)) (ite c!108242 (Cons!23321 (h!24530 (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55)) (t!32691 (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55))) Nil!23322)))))

(declare-fun b!1076866 () Bool)

(declare-fun e!615647 () List!23325)

(assert (=> b!1076866 (= e!615647 call!45704)))

(declare-fun b!1076867 () Bool)

(assert (=> b!1076867 (= e!615643 (insertStrictlySorted!386 (t!32691 (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55)) a1!69 b1!79))))

(declare-fun d!129729 () Bool)

(assert (=> d!129729 e!615645))

(declare-fun res!717733 () Bool)

(assert (=> d!129729 (=> (not res!717733) (not e!615645))))

(assert (=> d!129729 (= res!717733 (isStrictlySorted!721 lt!478456))))

(assert (=> d!129729 (= lt!478456 e!615647)))

(assert (=> d!129729 (= c!108245 (and ((_ is Cons!23321) (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55)) (bvslt (_1!8391 (h!24530 (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55))) a1!69)))))

(assert (=> d!129729 (isStrictlySorted!721 (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55))))

(assert (=> d!129729 (= (insertStrictlySorted!386 (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55) a1!69 b1!79) lt!478456)))

(declare-fun b!1076868 () Bool)

(declare-fun res!717732 () Bool)

(assert (=> b!1076868 (=> (not res!717732) (not e!615645))))

(assert (=> b!1076868 (= res!717732 (containsKey!584 lt!478456 a1!69))))

(declare-fun bm!45701 () Bool)

(assert (=> bm!45701 (= call!45705 call!45704)))

(declare-fun b!1076869 () Bool)

(assert (=> b!1076869 (= e!615646 call!45703)))

(declare-fun b!1076870 () Bool)

(assert (=> b!1076870 (= e!615647 e!615644)))

(assert (=> b!1076870 (= c!108244 (and ((_ is Cons!23321) (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55)) (= (_1!8391 (h!24530 (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55))) a1!69)))))

(declare-fun bm!45702 () Bool)

(assert (=> bm!45702 (= call!45703 call!45705)))

(assert (= (and d!129729 c!108245) b!1076866))

(assert (= (and d!129729 (not c!108245)) b!1076870))

(assert (= (and b!1076870 c!108244) b!1076863))

(assert (= (and b!1076870 (not c!108244)) b!1076864))

(assert (= (and b!1076864 c!108242) b!1076869))

(assert (= (and b!1076864 (not c!108242)) b!1076861))

(assert (= (or b!1076869 b!1076861) bm!45702))

(assert (= (or b!1076863 bm!45702) bm!45701))

(assert (= (or b!1076866 bm!45701) bm!45700))

(assert (= (and bm!45700 c!108243) b!1076867))

(assert (= (and bm!45700 (not c!108243)) b!1076865))

(assert (= (and d!129729 res!717733) b!1076868))

(assert (= (and b!1076868 res!717732) b!1076862))

(declare-fun m!996031 () Bool)

(assert (=> b!1076862 m!996031))

(declare-fun m!996033 () Bool)

(assert (=> b!1076867 m!996033))

(declare-fun m!996035 () Bool)

(assert (=> d!129729 m!996035))

(assert (=> d!129729 m!995765))

(declare-fun m!996037 () Bool)

(assert (=> d!129729 m!996037))

(declare-fun m!996039 () Bool)

(assert (=> b!1076868 m!996039))

(declare-fun m!996041 () Bool)

(assert (=> bm!45700 m!996041))

(assert (=> b!1076650 d!129729))

(declare-fun d!129735 () Bool)

(declare-fun e!615649 () Bool)

(assert (=> d!129735 e!615649))

(declare-fun res!717736 () Bool)

(assert (=> d!129735 (=> (not res!717736) (not e!615649))))

(declare-fun lt!478461 () ListLongMap!14743)

(assert (=> d!129735 (= res!717736 (contains!6380 lt!478461 (_1!8391 lt!478367)))))

(declare-fun lt!478462 () List!23325)

(assert (=> d!129735 (= lt!478461 (ListLongMap!14744 lt!478462))))

(declare-fun lt!478464 () Unit!35395)

(declare-fun lt!478463 () Unit!35395)

(assert (=> d!129735 (= lt!478464 lt!478463)))

(assert (=> d!129735 (= (getValueByKey!620 lt!478462 (_1!8391 lt!478367)) (Some!670 (_2!8391 lt!478367)))))

(assert (=> d!129735 (= lt!478463 (lemmaContainsTupThenGetReturnValue!295 lt!478462 (_1!8391 lt!478367) (_2!8391 lt!478367)))))

(assert (=> d!129735 (= lt!478462 (insertStrictlySorted!386 (toList!7387 (+!3200 lm!214 lt!478368)) (_1!8391 lt!478367) (_2!8391 lt!478367)))))

(assert (=> d!129735 (= (+!3200 (+!3200 lm!214 lt!478368) lt!478367) lt!478461)))

(declare-fun b!1076873 () Bool)

(declare-fun res!717737 () Bool)

(assert (=> b!1076873 (=> (not res!717737) (not e!615649))))

(assert (=> b!1076873 (= res!717737 (= (getValueByKey!620 (toList!7387 lt!478461) (_1!8391 lt!478367)) (Some!670 (_2!8391 lt!478367))))))

(declare-fun b!1076874 () Bool)

(assert (=> b!1076874 (= e!615649 (contains!6377 (toList!7387 lt!478461) lt!478367))))

(assert (= (and d!129735 res!717736) b!1076873))

(assert (= (and b!1076873 res!717737) b!1076874))

(declare-fun m!996043 () Bool)

(assert (=> d!129735 m!996043))

(declare-fun m!996045 () Bool)

(assert (=> d!129735 m!996045))

(declare-fun m!996047 () Bool)

(assert (=> d!129735 m!996047))

(declare-fun m!996049 () Bool)

(assert (=> d!129735 m!996049))

(declare-fun m!996051 () Bool)

(assert (=> b!1076873 m!996051))

(declare-fun m!996053 () Bool)

(assert (=> b!1076874 m!996053))

(assert (=> b!1076650 d!129735))

(declare-fun d!129739 () Bool)

(declare-fun e!615650 () Bool)

(assert (=> d!129739 e!615650))

(declare-fun res!717738 () Bool)

(assert (=> d!129739 (=> (not res!717738) (not e!615650))))

(declare-fun lt!478465 () ListLongMap!14743)

(assert (=> d!129739 (= res!717738 (contains!6380 lt!478465 (_1!8391 lt!478368)))))

(declare-fun lt!478466 () List!23325)

(assert (=> d!129739 (= lt!478465 (ListLongMap!14744 lt!478466))))

(declare-fun lt!478468 () Unit!35395)

(declare-fun lt!478467 () Unit!35395)

(assert (=> d!129739 (= lt!478468 lt!478467)))

(assert (=> d!129739 (= (getValueByKey!620 lt!478466 (_1!8391 lt!478368)) (Some!670 (_2!8391 lt!478368)))))

(assert (=> d!129739 (= lt!478467 (lemmaContainsTupThenGetReturnValue!295 lt!478466 (_1!8391 lt!478368) (_2!8391 lt!478368)))))

(assert (=> d!129739 (= lt!478466 (insertStrictlySorted!386 (toList!7387 (+!3200 lm!214 lt!478367)) (_1!8391 lt!478368) (_2!8391 lt!478368)))))

(assert (=> d!129739 (= (+!3200 (+!3200 lm!214 lt!478367) lt!478368) lt!478465)))

(declare-fun b!1076875 () Bool)

(declare-fun res!717739 () Bool)

(assert (=> b!1076875 (=> (not res!717739) (not e!615650))))

(assert (=> b!1076875 (= res!717739 (= (getValueByKey!620 (toList!7387 lt!478465) (_1!8391 lt!478368)) (Some!670 (_2!8391 lt!478368))))))

(declare-fun b!1076876 () Bool)

(assert (=> b!1076876 (= e!615650 (contains!6377 (toList!7387 lt!478465) lt!478368))))

(assert (= (and d!129739 res!717738) b!1076875))

(assert (= (and b!1076875 res!717739) b!1076876))

(declare-fun m!996055 () Bool)

(assert (=> d!129739 m!996055))

(declare-fun m!996057 () Bool)

(assert (=> d!129739 m!996057))

(declare-fun m!996059 () Bool)

(assert (=> d!129739 m!996059))

(declare-fun m!996061 () Bool)

(assert (=> d!129739 m!996061))

(declare-fun m!996063 () Bool)

(assert (=> b!1076875 m!996063))

(declare-fun m!996065 () Bool)

(assert (=> b!1076876 m!996065))

(assert (=> b!1076650 d!129739))

(declare-fun b!1076877 () Bool)

(declare-fun e!615654 () List!23325)

(declare-fun call!45706 () List!23325)

(assert (=> b!1076877 (= e!615654 call!45706)))

(declare-fun lt!478471 () List!23325)

(declare-fun b!1076878 () Bool)

(declare-fun e!615653 () Bool)

(assert (=> b!1076878 (= e!615653 (contains!6377 lt!478471 (tuple2!16763 a2!57 b2!55)))))

(declare-fun c!108249 () Bool)

(declare-fun bm!45703 () Bool)

(declare-fun e!615651 () List!23325)

(declare-fun call!45707 () List!23325)

(assert (=> bm!45703 (= call!45707 ($colon$colon!608 e!615651 (ite c!108249 (h!24530 (toList!7387 lm!214)) (tuple2!16763 a2!57 b2!55))))))

(declare-fun c!108247 () Bool)

(assert (=> bm!45703 (= c!108247 c!108249)))

(declare-fun b!1076879 () Bool)

(declare-fun e!615652 () List!23325)

(declare-fun call!45708 () List!23325)

(assert (=> b!1076879 (= e!615652 call!45708)))

(declare-fun b!1076880 () Bool)

(declare-fun c!108246 () Bool)

(assert (=> b!1076880 (= c!108246 (and ((_ is Cons!23321) (toList!7387 lm!214)) (bvsgt (_1!8391 (h!24530 (toList!7387 lm!214))) a2!57)))))

(assert (=> b!1076880 (= e!615652 e!615654)))

(declare-fun c!108248 () Bool)

(declare-fun b!1076881 () Bool)

(assert (=> b!1076881 (= e!615651 (ite c!108248 (t!32691 (toList!7387 lm!214)) (ite c!108246 (Cons!23321 (h!24530 (toList!7387 lm!214)) (t!32691 (toList!7387 lm!214))) Nil!23322)))))

(declare-fun b!1076882 () Bool)

(declare-fun e!615655 () List!23325)

(assert (=> b!1076882 (= e!615655 call!45707)))

(declare-fun b!1076883 () Bool)

(assert (=> b!1076883 (= e!615651 (insertStrictlySorted!386 (t!32691 (toList!7387 lm!214)) a2!57 b2!55))))

(declare-fun d!129741 () Bool)

(assert (=> d!129741 e!615653))

(declare-fun res!717741 () Bool)

(assert (=> d!129741 (=> (not res!717741) (not e!615653))))

(assert (=> d!129741 (= res!717741 (isStrictlySorted!721 lt!478471))))

(assert (=> d!129741 (= lt!478471 e!615655)))

(assert (=> d!129741 (= c!108249 (and ((_ is Cons!23321) (toList!7387 lm!214)) (bvslt (_1!8391 (h!24530 (toList!7387 lm!214))) a2!57)))))

(assert (=> d!129741 (isStrictlySorted!721 (toList!7387 lm!214))))

(assert (=> d!129741 (= (insertStrictlySorted!386 (toList!7387 lm!214) a2!57 b2!55) lt!478471)))

(declare-fun b!1076884 () Bool)

(declare-fun res!717740 () Bool)

(assert (=> b!1076884 (=> (not res!717740) (not e!615653))))

(assert (=> b!1076884 (= res!717740 (containsKey!584 lt!478471 a2!57))))

(declare-fun bm!45704 () Bool)

(assert (=> bm!45704 (= call!45708 call!45707)))

(declare-fun b!1076885 () Bool)

(assert (=> b!1076885 (= e!615654 call!45706)))

(declare-fun b!1076886 () Bool)

(assert (=> b!1076886 (= e!615655 e!615652)))

(assert (=> b!1076886 (= c!108248 (and ((_ is Cons!23321) (toList!7387 lm!214)) (= (_1!8391 (h!24530 (toList!7387 lm!214))) a2!57)))))

(declare-fun bm!45705 () Bool)

(assert (=> bm!45705 (= call!45706 call!45708)))

(assert (= (and d!129741 c!108249) b!1076882))

(assert (= (and d!129741 (not c!108249)) b!1076886))

(assert (= (and b!1076886 c!108248) b!1076879))

(assert (= (and b!1076886 (not c!108248)) b!1076880))

(assert (= (and b!1076880 c!108246) b!1076885))

(assert (= (and b!1076880 (not c!108246)) b!1076877))

(assert (= (or b!1076885 b!1076877) bm!45705))

(assert (= (or b!1076879 bm!45705) bm!45704))

(assert (= (or b!1076882 bm!45704) bm!45703))

(assert (= (and bm!45703 c!108247) b!1076883))

(assert (= (and bm!45703 (not c!108247)) b!1076881))

(assert (= (and d!129741 res!717741) b!1076884))

(assert (= (and b!1076884 res!717740) b!1076878))

(declare-fun m!996067 () Bool)

(assert (=> b!1076878 m!996067))

(declare-fun m!996069 () Bool)

(assert (=> b!1076883 m!996069))

(declare-fun m!996071 () Bool)

(assert (=> d!129741 m!996071))

(assert (=> d!129741 m!995763))

(declare-fun m!996073 () Bool)

(assert (=> b!1076884 m!996073))

(declare-fun m!996076 () Bool)

(assert (=> bm!45703 m!996076))

(assert (=> b!1076650 d!129741))

(declare-fun d!129743 () Bool)

(declare-fun e!615660 () Bool)

(assert (=> d!129743 e!615660))

(declare-fun res!717746 () Bool)

(assert (=> d!129743 (=> (not res!717746) (not e!615660))))

(declare-fun lt!478473 () ListLongMap!14743)

(assert (=> d!129743 (= res!717746 (contains!6380 lt!478473 (_1!8391 lt!478367)))))

(declare-fun lt!478474 () List!23325)

(assert (=> d!129743 (= lt!478473 (ListLongMap!14744 lt!478474))))

(declare-fun lt!478476 () Unit!35395)

(declare-fun lt!478475 () Unit!35395)

(assert (=> d!129743 (= lt!478476 lt!478475)))

(assert (=> d!129743 (= (getValueByKey!620 lt!478474 (_1!8391 lt!478367)) (Some!670 (_2!8391 lt!478367)))))

(assert (=> d!129743 (= lt!478475 (lemmaContainsTupThenGetReturnValue!295 lt!478474 (_1!8391 lt!478367) (_2!8391 lt!478367)))))

(assert (=> d!129743 (= lt!478474 (insertStrictlySorted!386 (toList!7387 lm!214) (_1!8391 lt!478367) (_2!8391 lt!478367)))))

(assert (=> d!129743 (= (+!3200 lm!214 lt!478367) lt!478473)))

(declare-fun b!1076891 () Bool)

(declare-fun res!717747 () Bool)

(assert (=> b!1076891 (=> (not res!717747) (not e!615660))))

(assert (=> b!1076891 (= res!717747 (= (getValueByKey!620 (toList!7387 lt!478473) (_1!8391 lt!478367)) (Some!670 (_2!8391 lt!478367))))))

(declare-fun b!1076892 () Bool)

(assert (=> b!1076892 (= e!615660 (contains!6377 (toList!7387 lt!478473) lt!478367))))

(assert (= (and d!129743 res!717746) b!1076891))

(assert (= (and b!1076891 res!717747) b!1076892))

(declare-fun m!996079 () Bool)

(assert (=> d!129743 m!996079))

(declare-fun m!996081 () Bool)

(assert (=> d!129743 m!996081))

(declare-fun m!996083 () Bool)

(assert (=> d!129743 m!996083))

(declare-fun m!996085 () Bool)

(assert (=> d!129743 m!996085))

(declare-fun m!996087 () Bool)

(assert (=> b!1076891 m!996087))

(declare-fun m!996091 () Bool)

(assert (=> b!1076892 m!996091))

(assert (=> b!1076650 d!129743))

(declare-fun b!1076909 () Bool)

(declare-fun e!615671 () Bool)

(declare-fun tp!78294 () Bool)

(assert (=> b!1076909 (= e!615671 (and tp_is_empty!26067 tp!78294))))

(assert (=> b!1076651 (= tp!78282 e!615671)))

(assert (= (and b!1076651 ((_ is Cons!23321) (toList!7387 lm!214))) b!1076909))

(check-sat (not b!1076873) (not bm!45700) (not d!129735) (not b!1076868) (not b!1076803) (not d!129729) (not b!1076740) (not d!129739) (not b!1076821) (not b!1076883) (not d!129715) (not bm!45667) (not d!129709) (not d!129691) (not b!1076892) (not b!1076804) (not b!1076878) (not d!129681) (not b!1076891) (not d!129743) (not b!1076884) (not b!1076909) (not b!1076822) (not b!1076874) (not b!1076747) tp_is_empty!26067 (not b!1076862) (not b!1076816) (not d!129697) (not b!1076867) (not b!1076672) (not b!1076748) (not bm!45703) (not bm!45688) (not b!1076875) (not b!1076876) (not d!129741))
(check-sat)
