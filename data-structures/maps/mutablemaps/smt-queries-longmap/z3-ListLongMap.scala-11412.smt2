; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132930 () Bool)

(assert start!132930)

(declare-fun b!1556153 () Bool)

(declare-fun otherKey!50 () (_ BitVec 64))

(declare-fun e!866729 () Bool)

(declare-datatypes ((B!2350 0))(
  ( (B!2351 (val!19261 Int)) )
))
(declare-datatypes ((tuple2!25038 0))(
  ( (tuple2!25039 (_1!12529 (_ BitVec 64)) (_2!12529 B!2350)) )
))
(declare-datatypes ((List!36441 0))(
  ( (Nil!36438) (Cons!36437 (h!37884 tuple2!25038) (t!51169 List!36441)) )
))
(declare-fun lt!670330 () List!36441)

(declare-fun l!1177 () List!36441)

(declare-datatypes ((Option!853 0))(
  ( (Some!852 (v!22033 B!2350)) (None!851) )
))
(declare-fun getValueByKey!778 (List!36441 (_ BitVec 64)) Option!853)

(assert (=> b!1556153 (= e!866729 (= (getValueByKey!778 lt!670330 otherKey!50) (getValueByKey!778 (t!51169 l!1177) otherKey!50)))))

(declare-fun res!1064738 () Bool)

(declare-fun e!866730 () Bool)

(assert (=> start!132930 (=> (not res!1064738) (not e!866730))))

(declare-fun isStrictlySorted!945 (List!36441) Bool)

(assert (=> start!132930 (= res!1064738 (isStrictlySorted!945 l!1177))))

(assert (=> start!132930 e!866730))

(declare-fun e!866727 () Bool)

(assert (=> start!132930 e!866727))

(assert (=> start!132930 true))

(declare-fun tp_is_empty!38361 () Bool)

(assert (=> start!132930 tp_is_empty!38361))

(declare-fun b!1556154 () Bool)

(declare-fun res!1064736 () Bool)

(assert (=> b!1556154 (=> (not res!1064736) (not e!866730))))

(assert (=> b!1556154 (= res!1064736 (isStrictlySorted!945 (t!51169 l!1177)))))

(declare-fun b!1556155 () Bool)

(declare-fun e!866728 () Bool)

(assert (=> b!1556155 (= e!866730 (not e!866728))))

(declare-fun res!1064737 () Bool)

(assert (=> b!1556155 (=> (not res!1064737) (not e!866728))))

(declare-fun lt!670329 () List!36441)

(declare-fun containsKey!808 (List!36441 (_ BitVec 64)) Bool)

(assert (=> b!1556155 (= res!1064737 (= (containsKey!808 lt!670329 otherKey!50) (containsKey!808 l!1177 otherKey!50)))))

(declare-fun newKey!105 () (_ BitVec 64))

(declare-fun newValue!105 () B!2350)

(declare-fun insertStrictlySorted!550 (List!36441 (_ BitVec 64) B!2350) List!36441)

(assert (=> b!1556155 (= lt!670329 (insertStrictlySorted!550 l!1177 newKey!105 newValue!105))))

(assert (=> b!1556155 e!866729))

(declare-fun res!1064735 () Bool)

(assert (=> b!1556155 (=> (not res!1064735) (not e!866729))))

(assert (=> b!1556155 (= res!1064735 (= (containsKey!808 lt!670330 otherKey!50) (containsKey!808 (t!51169 l!1177) otherKey!50)))))

(assert (=> b!1556155 (= lt!670330 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105))))

(declare-datatypes ((Unit!51775 0))(
  ( (Unit!51776) )
))
(declare-fun lt!670331 () Unit!51775)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!35 (List!36441 (_ BitVec 64) B!2350 (_ BitVec 64)) Unit!51775)

(assert (=> b!1556155 (= lt!670331 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!35 (t!51169 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun b!1556156 () Bool)

(declare-fun tp!112429 () Bool)

(assert (=> b!1556156 (= e!866727 (and tp_is_empty!38361 tp!112429))))

(declare-fun b!1556157 () Bool)

(declare-fun res!1064739 () Bool)

(assert (=> b!1556157 (=> (not res!1064739) (not e!866730))))

(get-info :version)

(assert (=> b!1556157 (= res!1064739 (and (not (= newKey!105 otherKey!50)) ((_ is Cons!36437) l!1177) (not (= (_1!12529 (h!37884 l!1177)) otherKey!50))))))

(declare-fun b!1556158 () Bool)

(assert (=> b!1556158 (= e!866728 (= (getValueByKey!778 lt!670329 otherKey!50) (getValueByKey!778 l!1177 otherKey!50)))))

(assert (= (and start!132930 res!1064738) b!1556157))

(assert (= (and b!1556157 res!1064739) b!1556154))

(assert (= (and b!1556154 res!1064736) b!1556155))

(assert (= (and b!1556155 res!1064735) b!1556153))

(assert (= (and b!1556155 res!1064737) b!1556158))

(assert (= (and start!132930 ((_ is Cons!36437) l!1177)) b!1556156))

(declare-fun m!1433777 () Bool)

(assert (=> b!1556154 m!1433777))

(declare-fun m!1433779 () Bool)

(assert (=> b!1556155 m!1433779))

(declare-fun m!1433781 () Bool)

(assert (=> b!1556155 m!1433781))

(declare-fun m!1433783 () Bool)

(assert (=> b!1556155 m!1433783))

(declare-fun m!1433785 () Bool)

(assert (=> b!1556155 m!1433785))

(declare-fun m!1433787 () Bool)

(assert (=> b!1556155 m!1433787))

(declare-fun m!1433789 () Bool)

(assert (=> b!1556155 m!1433789))

(declare-fun m!1433791 () Bool)

(assert (=> b!1556155 m!1433791))

(declare-fun m!1433793 () Bool)

(assert (=> start!132930 m!1433793))

(declare-fun m!1433795 () Bool)

(assert (=> b!1556158 m!1433795))

(declare-fun m!1433797 () Bool)

(assert (=> b!1556158 m!1433797))

(declare-fun m!1433799 () Bool)

(assert (=> b!1556153 m!1433799))

(declare-fun m!1433801 () Bool)

(assert (=> b!1556153 m!1433801))

(check-sat (not b!1556153) (not b!1556154) (not b!1556156) (not start!132930) (not b!1556155) (not b!1556158) tp_is_empty!38361)
(check-sat)
(get-model)

(declare-fun d!162021 () Bool)

(declare-fun res!1064759 () Bool)

(declare-fun e!866747 () Bool)

(assert (=> d!162021 (=> res!1064759 e!866747)))

(assert (=> d!162021 (= res!1064759 (or ((_ is Nil!36438) l!1177) ((_ is Nil!36438) (t!51169 l!1177))))))

(assert (=> d!162021 (= (isStrictlySorted!945 l!1177) e!866747)))

(declare-fun b!1556181 () Bool)

(declare-fun e!866748 () Bool)

(assert (=> b!1556181 (= e!866747 e!866748)))

(declare-fun res!1064760 () Bool)

(assert (=> b!1556181 (=> (not res!1064760) (not e!866748))))

(assert (=> b!1556181 (= res!1064760 (bvslt (_1!12529 (h!37884 l!1177)) (_1!12529 (h!37884 (t!51169 l!1177)))))))

(declare-fun b!1556182 () Bool)

(assert (=> b!1556182 (= e!866748 (isStrictlySorted!945 (t!51169 l!1177)))))

(assert (= (and d!162021 (not res!1064759)) b!1556181))

(assert (= (and b!1556181 res!1064760) b!1556182))

(assert (=> b!1556182 m!1433777))

(assert (=> start!132930 d!162021))

(declare-fun d!162023 () Bool)

(declare-fun c!143669 () Bool)

(assert (=> d!162023 (= c!143669 (and ((_ is Cons!36437) lt!670330) (= (_1!12529 (h!37884 lt!670330)) otherKey!50)))))

(declare-fun e!866757 () Option!853)

(assert (=> d!162023 (= (getValueByKey!778 lt!670330 otherKey!50) e!866757)))

(declare-fun b!1556200 () Bool)

(declare-fun e!866758 () Option!853)

(assert (=> b!1556200 (= e!866757 e!866758)))

(declare-fun c!143670 () Bool)

(assert (=> b!1556200 (= c!143670 (and ((_ is Cons!36437) lt!670330) (not (= (_1!12529 (h!37884 lt!670330)) otherKey!50))))))

(declare-fun b!1556202 () Bool)

(assert (=> b!1556202 (= e!866758 None!851)))

(declare-fun b!1556201 () Bool)

(assert (=> b!1556201 (= e!866758 (getValueByKey!778 (t!51169 lt!670330) otherKey!50))))

(declare-fun b!1556199 () Bool)

(assert (=> b!1556199 (= e!866757 (Some!852 (_2!12529 (h!37884 lt!670330))))))

(assert (= (and d!162023 c!143669) b!1556199))

(assert (= (and d!162023 (not c!143669)) b!1556200))

(assert (= (and b!1556200 c!143670) b!1556201))

(assert (= (and b!1556200 (not c!143670)) b!1556202))

(declare-fun m!1433829 () Bool)

(assert (=> b!1556201 m!1433829))

(assert (=> b!1556153 d!162023))

(declare-fun d!162029 () Bool)

(declare-fun c!143673 () Bool)

(assert (=> d!162029 (= c!143673 (and ((_ is Cons!36437) (t!51169 l!1177)) (= (_1!12529 (h!37884 (t!51169 l!1177))) otherKey!50)))))

(declare-fun e!866761 () Option!853)

(assert (=> d!162029 (= (getValueByKey!778 (t!51169 l!1177) otherKey!50) e!866761)))

(declare-fun b!1556208 () Bool)

(declare-fun e!866762 () Option!853)

(assert (=> b!1556208 (= e!866761 e!866762)))

(declare-fun c!143674 () Bool)

(assert (=> b!1556208 (= c!143674 (and ((_ is Cons!36437) (t!51169 l!1177)) (not (= (_1!12529 (h!37884 (t!51169 l!1177))) otherKey!50))))))

(declare-fun b!1556210 () Bool)

(assert (=> b!1556210 (= e!866762 None!851)))

(declare-fun b!1556209 () Bool)

(assert (=> b!1556209 (= e!866762 (getValueByKey!778 (t!51169 (t!51169 l!1177)) otherKey!50))))

(declare-fun b!1556207 () Bool)

(assert (=> b!1556207 (= e!866761 (Some!852 (_2!12529 (h!37884 (t!51169 l!1177)))))))

(assert (= (and d!162029 c!143673) b!1556207))

(assert (= (and d!162029 (not c!143673)) b!1556208))

(assert (= (and b!1556208 c!143674) b!1556209))

(assert (= (and b!1556208 (not c!143674)) b!1556210))

(declare-fun m!1433833 () Bool)

(assert (=> b!1556209 m!1433833))

(assert (=> b!1556153 d!162029))

(declare-fun d!162033 () Bool)

(declare-fun c!143681 () Bool)

(assert (=> d!162033 (= c!143681 (and ((_ is Cons!36437) lt!670329) (= (_1!12529 (h!37884 lt!670329)) otherKey!50)))))

(declare-fun e!866769 () Option!853)

(assert (=> d!162033 (= (getValueByKey!778 lt!670329 otherKey!50) e!866769)))

(declare-fun b!1556224 () Bool)

(declare-fun e!866770 () Option!853)

(assert (=> b!1556224 (= e!866769 e!866770)))

(declare-fun c!143682 () Bool)

(assert (=> b!1556224 (= c!143682 (and ((_ is Cons!36437) lt!670329) (not (= (_1!12529 (h!37884 lt!670329)) otherKey!50))))))

(declare-fun b!1556226 () Bool)

(assert (=> b!1556226 (= e!866770 None!851)))

(declare-fun b!1556225 () Bool)

(assert (=> b!1556225 (= e!866770 (getValueByKey!778 (t!51169 lt!670329) otherKey!50))))

(declare-fun b!1556223 () Bool)

(assert (=> b!1556223 (= e!866769 (Some!852 (_2!12529 (h!37884 lt!670329))))))

(assert (= (and d!162033 c!143681) b!1556223))

(assert (= (and d!162033 (not c!143681)) b!1556224))

(assert (= (and b!1556224 c!143682) b!1556225))

(assert (= (and b!1556224 (not c!143682)) b!1556226))

(declare-fun m!1433835 () Bool)

(assert (=> b!1556225 m!1433835))

(assert (=> b!1556158 d!162033))

(declare-fun d!162037 () Bool)

(declare-fun c!143683 () Bool)

(assert (=> d!162037 (= c!143683 (and ((_ is Cons!36437) l!1177) (= (_1!12529 (h!37884 l!1177)) otherKey!50)))))

(declare-fun e!866771 () Option!853)

(assert (=> d!162037 (= (getValueByKey!778 l!1177 otherKey!50) e!866771)))

(declare-fun b!1556228 () Bool)

(declare-fun e!866772 () Option!853)

(assert (=> b!1556228 (= e!866771 e!866772)))

(declare-fun c!143684 () Bool)

(assert (=> b!1556228 (= c!143684 (and ((_ is Cons!36437) l!1177) (not (= (_1!12529 (h!37884 l!1177)) otherKey!50))))))

(declare-fun b!1556230 () Bool)

(assert (=> b!1556230 (= e!866772 None!851)))

(declare-fun b!1556229 () Bool)

(assert (=> b!1556229 (= e!866772 (getValueByKey!778 (t!51169 l!1177) otherKey!50))))

(declare-fun b!1556227 () Bool)

(assert (=> b!1556227 (= e!866771 (Some!852 (_2!12529 (h!37884 l!1177))))))

(assert (= (and d!162037 c!143683) b!1556227))

(assert (= (and d!162037 (not c!143683)) b!1556228))

(assert (= (and b!1556228 c!143684) b!1556229))

(assert (= (and b!1556228 (not c!143684)) b!1556230))

(assert (=> b!1556229 m!1433801))

(assert (=> b!1556158 d!162037))

(declare-fun d!162039 () Bool)

(declare-fun res!1064761 () Bool)

(declare-fun e!866773 () Bool)

(assert (=> d!162039 (=> res!1064761 e!866773)))

(assert (=> d!162039 (= res!1064761 (or ((_ is Nil!36438) (t!51169 l!1177)) ((_ is Nil!36438) (t!51169 (t!51169 l!1177)))))))

(assert (=> d!162039 (= (isStrictlySorted!945 (t!51169 l!1177)) e!866773)))

(declare-fun b!1556231 () Bool)

(declare-fun e!866774 () Bool)

(assert (=> b!1556231 (= e!866773 e!866774)))

(declare-fun res!1064762 () Bool)

(assert (=> b!1556231 (=> (not res!1064762) (not e!866774))))

(assert (=> b!1556231 (= res!1064762 (bvslt (_1!12529 (h!37884 (t!51169 l!1177))) (_1!12529 (h!37884 (t!51169 (t!51169 l!1177))))))))

(declare-fun b!1556232 () Bool)

(assert (=> b!1556232 (= e!866774 (isStrictlySorted!945 (t!51169 (t!51169 l!1177))))))

(assert (= (and d!162039 (not res!1064761)) b!1556231))

(assert (= (and b!1556231 res!1064762) b!1556232))

(declare-fun m!1433837 () Bool)

(assert (=> b!1556232 m!1433837))

(assert (=> b!1556154 d!162039))

(declare-fun c!143718 () Bool)

(declare-fun c!143720 () Bool)

(declare-fun e!866815 () List!36441)

(declare-fun b!1556311 () Bool)

(assert (=> b!1556311 (= e!866815 (ite c!143718 (t!51169 l!1177) (ite c!143720 (Cons!36437 (h!37884 l!1177) (t!51169 l!1177)) Nil!36438)))))

(declare-fun e!866817 () Bool)

(declare-fun lt!670348 () List!36441)

(declare-fun b!1556312 () Bool)

(declare-fun contains!10190 (List!36441 tuple2!25038) Bool)

(assert (=> b!1556312 (= e!866817 (contains!10190 lt!670348 (tuple2!25039 newKey!105 newValue!105)))))

(declare-fun b!1556313 () Bool)

(declare-fun e!866816 () List!36441)

(declare-fun e!866818 () List!36441)

(assert (=> b!1556313 (= e!866816 e!866818)))

(assert (=> b!1556313 (= c!143718 (and ((_ is Cons!36437) l!1177) (= (_1!12529 (h!37884 l!1177)) newKey!105)))))

(declare-fun b!1556314 () Bool)

(declare-fun e!866814 () List!36441)

(declare-fun call!71601 () List!36441)

(assert (=> b!1556314 (= e!866814 call!71601)))

(declare-fun b!1556315 () Bool)

(assert (=> b!1556315 (= c!143720 (and ((_ is Cons!36437) l!1177) (bvsgt (_1!12529 (h!37884 l!1177)) newKey!105)))))

(assert (=> b!1556315 (= e!866818 e!866814)))

(declare-fun d!162041 () Bool)

(assert (=> d!162041 e!866817))

(declare-fun res!1064778 () Bool)

(assert (=> d!162041 (=> (not res!1064778) (not e!866817))))

(assert (=> d!162041 (= res!1064778 (isStrictlySorted!945 lt!670348))))

(assert (=> d!162041 (= lt!670348 e!866816)))

(declare-fun c!143717 () Bool)

(assert (=> d!162041 (= c!143717 (and ((_ is Cons!36437) l!1177) (bvslt (_1!12529 (h!37884 l!1177)) newKey!105)))))

(assert (=> d!162041 (isStrictlySorted!945 l!1177)))

(assert (=> d!162041 (= (insertStrictlySorted!550 l!1177 newKey!105 newValue!105) lt!670348)))

(declare-fun b!1556316 () Bool)

(declare-fun res!1064777 () Bool)

(assert (=> b!1556316 (=> (not res!1064777) (not e!866817))))

(assert (=> b!1556316 (= res!1064777 (containsKey!808 lt!670348 newKey!105))))

(declare-fun bm!71596 () Bool)

(declare-fun call!71600 () List!36441)

(declare-fun $colon$colon!970 (List!36441 tuple2!25038) List!36441)

(assert (=> bm!71596 (= call!71600 ($colon$colon!970 e!866815 (ite c!143717 (h!37884 l!1177) (tuple2!25039 newKey!105 newValue!105))))))

(declare-fun c!143719 () Bool)

(assert (=> bm!71596 (= c!143719 c!143717)))

(declare-fun bm!71597 () Bool)

(declare-fun call!71599 () List!36441)

(assert (=> bm!71597 (= call!71599 call!71600)))

(declare-fun bm!71598 () Bool)

(assert (=> bm!71598 (= call!71601 call!71599)))

(declare-fun b!1556317 () Bool)

(assert (=> b!1556317 (= e!866818 call!71599)))

(declare-fun b!1556318 () Bool)

(assert (=> b!1556318 (= e!866815 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105))))

(declare-fun b!1556319 () Bool)

(assert (=> b!1556319 (= e!866814 call!71601)))

(declare-fun b!1556320 () Bool)

(assert (=> b!1556320 (= e!866816 call!71600)))

(assert (= (and d!162041 c!143717) b!1556320))

(assert (= (and d!162041 (not c!143717)) b!1556313))

(assert (= (and b!1556313 c!143718) b!1556317))

(assert (= (and b!1556313 (not c!143718)) b!1556315))

(assert (= (and b!1556315 c!143720) b!1556319))

(assert (= (and b!1556315 (not c!143720)) b!1556314))

(assert (= (or b!1556319 b!1556314) bm!71598))

(assert (= (or b!1556317 bm!71598) bm!71597))

(assert (= (or b!1556320 bm!71597) bm!71596))

(assert (= (and bm!71596 c!143719) b!1556318))

(assert (= (and bm!71596 (not c!143719)) b!1556311))

(assert (= (and d!162041 res!1064778) b!1556316))

(assert (= (and b!1556316 res!1064777) b!1556312))

(assert (=> b!1556318 m!1433785))

(declare-fun m!1433851 () Bool)

(assert (=> d!162041 m!1433851))

(assert (=> d!162041 m!1433793))

(declare-fun m!1433853 () Bool)

(assert (=> b!1556312 m!1433853))

(declare-fun m!1433855 () Bool)

(assert (=> bm!71596 m!1433855))

(declare-fun m!1433857 () Bool)

(assert (=> b!1556316 m!1433857))

(assert (=> b!1556155 d!162041))

(declare-fun d!162049 () Bool)

(declare-fun e!866839 () Bool)

(assert (=> d!162049 e!866839))

(declare-fun res!1064796 () Bool)

(assert (=> d!162049 (=> (not res!1064796) (not e!866839))))

(assert (=> d!162049 (= res!1064796 (= (containsKey!808 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105) otherKey!50) (containsKey!808 (t!51169 l!1177) otherKey!50)))))

(declare-fun lt!670357 () Unit!51775)

(declare-fun choose!2068 (List!36441 (_ BitVec 64) B!2350 (_ BitVec 64)) Unit!51775)

(assert (=> d!162049 (= lt!670357 (choose!2068 (t!51169 l!1177) newKey!105 newValue!105 otherKey!50))))

(declare-fun e!866838 () Bool)

(assert (=> d!162049 e!866838))

(declare-fun res!1064795 () Bool)

(assert (=> d!162049 (=> (not res!1064795) (not e!866838))))

(assert (=> d!162049 (= res!1064795 (isStrictlySorted!945 (t!51169 l!1177)))))

(assert (=> d!162049 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!35 (t!51169 l!1177) newKey!105 newValue!105 otherKey!50) lt!670357)))

(declare-fun b!1556345 () Bool)

(assert (=> b!1556345 (= e!866838 (not (= newKey!105 otherKey!50)))))

(declare-fun b!1556346 () Bool)

(assert (=> b!1556346 (= e!866839 (= (getValueByKey!778 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105) otherKey!50) (getValueByKey!778 (t!51169 l!1177) otherKey!50)))))

(assert (= (and d!162049 res!1064795) b!1556345))

(assert (= (and d!162049 res!1064796) b!1556346))

(assert (=> d!162049 m!1433777))

(assert (=> d!162049 m!1433787))

(assert (=> d!162049 m!1433785))

(declare-fun m!1433873 () Bool)

(assert (=> d!162049 m!1433873))

(assert (=> d!162049 m!1433785))

(declare-fun m!1433875 () Bool)

(assert (=> d!162049 m!1433875))

(assert (=> b!1556346 m!1433785))

(assert (=> b!1556346 m!1433785))

(declare-fun m!1433877 () Bool)

(assert (=> b!1556346 m!1433877))

(assert (=> b!1556346 m!1433801))

(assert (=> b!1556155 d!162049))

(declare-fun d!162055 () Bool)

(declare-fun res!1064815 () Bool)

(declare-fun e!866861 () Bool)

(assert (=> d!162055 (=> res!1064815 e!866861)))

(assert (=> d!162055 (= res!1064815 (and ((_ is Cons!36437) lt!670330) (= (_1!12529 (h!37884 lt!670330)) otherKey!50)))))

(assert (=> d!162055 (= (containsKey!808 lt!670330 otherKey!50) e!866861)))

(declare-fun b!1556368 () Bool)

(declare-fun e!866862 () Bool)

(assert (=> b!1556368 (= e!866861 e!866862)))

(declare-fun res!1064816 () Bool)

(assert (=> b!1556368 (=> (not res!1064816) (not e!866862))))

(assert (=> b!1556368 (= res!1064816 (and (or (not ((_ is Cons!36437) lt!670330)) (bvsle (_1!12529 (h!37884 lt!670330)) otherKey!50)) ((_ is Cons!36437) lt!670330) (bvslt (_1!12529 (h!37884 lt!670330)) otherKey!50)))))

(declare-fun b!1556370 () Bool)

(assert (=> b!1556370 (= e!866862 (containsKey!808 (t!51169 lt!670330) otherKey!50))))

(assert (= (and d!162055 (not res!1064815)) b!1556368))

(assert (= (and b!1556368 res!1064816) b!1556370))

(declare-fun m!1433887 () Bool)

(assert (=> b!1556370 m!1433887))

(assert (=> b!1556155 d!162055))

(declare-fun d!162063 () Bool)

(declare-fun res!1064819 () Bool)

(declare-fun e!866865 () Bool)

(assert (=> d!162063 (=> res!1064819 e!866865)))

(assert (=> d!162063 (= res!1064819 (and ((_ is Cons!36437) l!1177) (= (_1!12529 (h!37884 l!1177)) otherKey!50)))))

(assert (=> d!162063 (= (containsKey!808 l!1177 otherKey!50) e!866865)))

(declare-fun b!1556377 () Bool)

(declare-fun e!866866 () Bool)

(assert (=> b!1556377 (= e!866865 e!866866)))

(declare-fun res!1064820 () Bool)

(assert (=> b!1556377 (=> (not res!1064820) (not e!866866))))

(assert (=> b!1556377 (= res!1064820 (and (or (not ((_ is Cons!36437) l!1177)) (bvsle (_1!12529 (h!37884 l!1177)) otherKey!50)) ((_ is Cons!36437) l!1177) (bvslt (_1!12529 (h!37884 l!1177)) otherKey!50)))))

(declare-fun b!1556378 () Bool)

(assert (=> b!1556378 (= e!866866 (containsKey!808 (t!51169 l!1177) otherKey!50))))

(assert (= (and d!162063 (not res!1064819)) b!1556377))

(assert (= (and b!1556377 res!1064820) b!1556378))

(assert (=> b!1556378 m!1433787))

(assert (=> b!1556155 d!162063))

(declare-fun d!162065 () Bool)

(declare-fun res!1064821 () Bool)

(declare-fun e!866867 () Bool)

(assert (=> d!162065 (=> res!1064821 e!866867)))

(assert (=> d!162065 (= res!1064821 (and ((_ is Cons!36437) lt!670329) (= (_1!12529 (h!37884 lt!670329)) otherKey!50)))))

(assert (=> d!162065 (= (containsKey!808 lt!670329 otherKey!50) e!866867)))

(declare-fun b!1556379 () Bool)

(declare-fun e!866868 () Bool)

(assert (=> b!1556379 (= e!866867 e!866868)))

(declare-fun res!1064822 () Bool)

(assert (=> b!1556379 (=> (not res!1064822) (not e!866868))))

(assert (=> b!1556379 (= res!1064822 (and (or (not ((_ is Cons!36437) lt!670329)) (bvsle (_1!12529 (h!37884 lt!670329)) otherKey!50)) ((_ is Cons!36437) lt!670329) (bvslt (_1!12529 (h!37884 lt!670329)) otherKey!50)))))

(declare-fun b!1556380 () Bool)

(assert (=> b!1556380 (= e!866868 (containsKey!808 (t!51169 lt!670329) otherKey!50))))

(assert (= (and d!162065 (not res!1064821)) b!1556379))

(assert (= (and b!1556379 res!1064822) b!1556380))

(declare-fun m!1433897 () Bool)

(assert (=> b!1556380 m!1433897))

(assert (=> b!1556155 d!162065))

(declare-fun c!143732 () Bool)

(declare-fun e!866870 () List!36441)

(declare-fun c!143730 () Bool)

(declare-fun b!1556381 () Bool)

(assert (=> b!1556381 (= e!866870 (ite c!143730 (t!51169 (t!51169 l!1177)) (ite c!143732 (Cons!36437 (h!37884 (t!51169 l!1177)) (t!51169 (t!51169 l!1177))) Nil!36438)))))

(declare-fun lt!670360 () List!36441)

(declare-fun b!1556382 () Bool)

(declare-fun e!866872 () Bool)

(assert (=> b!1556382 (= e!866872 (contains!10190 lt!670360 (tuple2!25039 newKey!105 newValue!105)))))

(declare-fun b!1556383 () Bool)

(declare-fun e!866871 () List!36441)

(declare-fun e!866873 () List!36441)

(assert (=> b!1556383 (= e!866871 e!866873)))

(assert (=> b!1556383 (= c!143730 (and ((_ is Cons!36437) (t!51169 l!1177)) (= (_1!12529 (h!37884 (t!51169 l!1177))) newKey!105)))))

(declare-fun b!1556384 () Bool)

(declare-fun e!866869 () List!36441)

(declare-fun call!71610 () List!36441)

(assert (=> b!1556384 (= e!866869 call!71610)))

(declare-fun b!1556385 () Bool)

(assert (=> b!1556385 (= c!143732 (and ((_ is Cons!36437) (t!51169 l!1177)) (bvsgt (_1!12529 (h!37884 (t!51169 l!1177))) newKey!105)))))

(assert (=> b!1556385 (= e!866873 e!866869)))

(declare-fun d!162067 () Bool)

(assert (=> d!162067 e!866872))

(declare-fun res!1064824 () Bool)

(assert (=> d!162067 (=> (not res!1064824) (not e!866872))))

(assert (=> d!162067 (= res!1064824 (isStrictlySorted!945 lt!670360))))

(assert (=> d!162067 (= lt!670360 e!866871)))

(declare-fun c!143729 () Bool)

(assert (=> d!162067 (= c!143729 (and ((_ is Cons!36437) (t!51169 l!1177)) (bvslt (_1!12529 (h!37884 (t!51169 l!1177))) newKey!105)))))

(assert (=> d!162067 (isStrictlySorted!945 (t!51169 l!1177))))

(assert (=> d!162067 (= (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105) lt!670360)))

(declare-fun b!1556386 () Bool)

(declare-fun res!1064823 () Bool)

(assert (=> b!1556386 (=> (not res!1064823) (not e!866872))))

(assert (=> b!1556386 (= res!1064823 (containsKey!808 lt!670360 newKey!105))))

(declare-fun call!71609 () List!36441)

(declare-fun bm!71605 () Bool)

(assert (=> bm!71605 (= call!71609 ($colon$colon!970 e!866870 (ite c!143729 (h!37884 (t!51169 l!1177)) (tuple2!25039 newKey!105 newValue!105))))))

(declare-fun c!143731 () Bool)

(assert (=> bm!71605 (= c!143731 c!143729)))

(declare-fun bm!71606 () Bool)

(declare-fun call!71608 () List!36441)

(assert (=> bm!71606 (= call!71608 call!71609)))

(declare-fun bm!71607 () Bool)

(assert (=> bm!71607 (= call!71610 call!71608)))

(declare-fun b!1556387 () Bool)

(assert (=> b!1556387 (= e!866873 call!71608)))

(declare-fun b!1556388 () Bool)

(assert (=> b!1556388 (= e!866870 (insertStrictlySorted!550 (t!51169 (t!51169 l!1177)) newKey!105 newValue!105))))

(declare-fun b!1556390 () Bool)

(assert (=> b!1556390 (= e!866869 call!71610)))

(declare-fun b!1556392 () Bool)

(assert (=> b!1556392 (= e!866871 call!71609)))

(assert (= (and d!162067 c!143729) b!1556392))

(assert (= (and d!162067 (not c!143729)) b!1556383))

(assert (= (and b!1556383 c!143730) b!1556387))

(assert (= (and b!1556383 (not c!143730)) b!1556385))

(assert (= (and b!1556385 c!143732) b!1556390))

(assert (= (and b!1556385 (not c!143732)) b!1556384))

(assert (= (or b!1556390 b!1556384) bm!71607))

(assert (= (or b!1556387 bm!71607) bm!71606))

(assert (= (or b!1556392 bm!71606) bm!71605))

(assert (= (and bm!71605 c!143731) b!1556388))

(assert (= (and bm!71605 (not c!143731)) b!1556381))

(assert (= (and d!162067 res!1064824) b!1556386))

(assert (= (and b!1556386 res!1064823) b!1556382))

(declare-fun m!1433907 () Bool)

(assert (=> b!1556388 m!1433907))

(declare-fun m!1433909 () Bool)

(assert (=> d!162067 m!1433909))

(assert (=> d!162067 m!1433777))

(declare-fun m!1433911 () Bool)

(assert (=> b!1556382 m!1433911))

(declare-fun m!1433913 () Bool)

(assert (=> bm!71605 m!1433913))

(declare-fun m!1433917 () Bool)

(assert (=> b!1556386 m!1433917))

(assert (=> b!1556155 d!162067))

(declare-fun d!162081 () Bool)

(declare-fun res!1064835 () Bool)

(declare-fun e!866888 () Bool)

(assert (=> d!162081 (=> res!1064835 e!866888)))

(assert (=> d!162081 (= res!1064835 (and ((_ is Cons!36437) (t!51169 l!1177)) (= (_1!12529 (h!37884 (t!51169 l!1177))) otherKey!50)))))

(assert (=> d!162081 (= (containsKey!808 (t!51169 l!1177) otherKey!50) e!866888)))

(declare-fun b!1556409 () Bool)

(declare-fun e!866889 () Bool)

(assert (=> b!1556409 (= e!866888 e!866889)))

(declare-fun res!1064836 () Bool)

(assert (=> b!1556409 (=> (not res!1064836) (not e!866889))))

(assert (=> b!1556409 (= res!1064836 (and (or (not ((_ is Cons!36437) (t!51169 l!1177))) (bvsle (_1!12529 (h!37884 (t!51169 l!1177))) otherKey!50)) ((_ is Cons!36437) (t!51169 l!1177)) (bvslt (_1!12529 (h!37884 (t!51169 l!1177))) otherKey!50)))))

(declare-fun b!1556410 () Bool)

(assert (=> b!1556410 (= e!866889 (containsKey!808 (t!51169 (t!51169 l!1177)) otherKey!50))))

(assert (= (and d!162081 (not res!1064835)) b!1556409))

(assert (= (and b!1556409 res!1064836) b!1556410))

(declare-fun m!1433921 () Bool)

(assert (=> b!1556410 m!1433921))

(assert (=> b!1556155 d!162081))

(declare-fun b!1556425 () Bool)

(declare-fun e!866897 () Bool)

(declare-fun tp!112435 () Bool)

(assert (=> b!1556425 (= e!866897 (and tp_is_empty!38361 tp!112435))))

(assert (=> b!1556156 (= tp!112429 e!866897)))

(assert (= (and b!1556156 ((_ is Cons!36437) (t!51169 l!1177))) b!1556425))

(check-sat (not b!1556318) (not b!1556201) (not b!1556316) (not b!1556209) (not b!1556410) (not d!162041) (not b!1556378) (not b!1556312) (not b!1556346) (not b!1556370) (not b!1556182) (not b!1556386) tp_is_empty!38361 (not b!1556225) (not bm!71605) (not b!1556388) (not b!1556382) (not b!1556232) (not b!1556425) (not d!162049) (not b!1556380) (not d!162067) (not bm!71596) (not b!1556229))
(check-sat)
(get-model)

(declare-fun d!162099 () Bool)

(declare-fun res!1064857 () Bool)

(declare-fun e!866926 () Bool)

(assert (=> d!162099 (=> res!1064857 e!866926)))

(assert (=> d!162099 (= res!1064857 (or ((_ is Nil!36438) lt!670360) ((_ is Nil!36438) (t!51169 lt!670360))))))

(assert (=> d!162099 (= (isStrictlySorted!945 lt!670360) e!866926)))

(declare-fun b!1556462 () Bool)

(declare-fun e!866927 () Bool)

(assert (=> b!1556462 (= e!866926 e!866927)))

(declare-fun res!1064858 () Bool)

(assert (=> b!1556462 (=> (not res!1064858) (not e!866927))))

(assert (=> b!1556462 (= res!1064858 (bvslt (_1!12529 (h!37884 lt!670360)) (_1!12529 (h!37884 (t!51169 lt!670360)))))))

(declare-fun b!1556463 () Bool)

(assert (=> b!1556463 (= e!866927 (isStrictlySorted!945 (t!51169 lt!670360)))))

(assert (= (and d!162099 (not res!1064857)) b!1556462))

(assert (= (and b!1556462 res!1064858) b!1556463))

(declare-fun m!1433943 () Bool)

(assert (=> b!1556463 m!1433943))

(assert (=> d!162067 d!162099))

(assert (=> d!162067 d!162039))

(declare-fun b!1556464 () Bool)

(declare-fun c!143746 () Bool)

(declare-fun c!143748 () Bool)

(declare-fun e!866929 () List!36441)

(assert (=> b!1556464 (= e!866929 (ite c!143746 (t!51169 (t!51169 (t!51169 l!1177))) (ite c!143748 (Cons!36437 (h!37884 (t!51169 (t!51169 l!1177))) (t!51169 (t!51169 (t!51169 l!1177)))) Nil!36438)))))

(declare-fun e!866931 () Bool)

(declare-fun lt!670362 () List!36441)

(declare-fun b!1556465 () Bool)

(assert (=> b!1556465 (= e!866931 (contains!10190 lt!670362 (tuple2!25039 newKey!105 newValue!105)))))

(declare-fun b!1556466 () Bool)

(declare-fun e!866930 () List!36441)

(declare-fun e!866932 () List!36441)

(assert (=> b!1556466 (= e!866930 e!866932)))

(assert (=> b!1556466 (= c!143746 (and ((_ is Cons!36437) (t!51169 (t!51169 l!1177))) (= (_1!12529 (h!37884 (t!51169 (t!51169 l!1177)))) newKey!105)))))

(declare-fun b!1556467 () Bool)

(declare-fun e!866928 () List!36441)

(declare-fun call!71616 () List!36441)

(assert (=> b!1556467 (= e!866928 call!71616)))

(declare-fun b!1556468 () Bool)

(assert (=> b!1556468 (= c!143748 (and ((_ is Cons!36437) (t!51169 (t!51169 l!1177))) (bvsgt (_1!12529 (h!37884 (t!51169 (t!51169 l!1177)))) newKey!105)))))

(assert (=> b!1556468 (= e!866932 e!866928)))

(declare-fun d!162101 () Bool)

(assert (=> d!162101 e!866931))

(declare-fun res!1064860 () Bool)

(assert (=> d!162101 (=> (not res!1064860) (not e!866931))))

(assert (=> d!162101 (= res!1064860 (isStrictlySorted!945 lt!670362))))

(assert (=> d!162101 (= lt!670362 e!866930)))

(declare-fun c!143745 () Bool)

(assert (=> d!162101 (= c!143745 (and ((_ is Cons!36437) (t!51169 (t!51169 l!1177))) (bvslt (_1!12529 (h!37884 (t!51169 (t!51169 l!1177)))) newKey!105)))))

(assert (=> d!162101 (isStrictlySorted!945 (t!51169 (t!51169 l!1177)))))

(assert (=> d!162101 (= (insertStrictlySorted!550 (t!51169 (t!51169 l!1177)) newKey!105 newValue!105) lt!670362)))

(declare-fun b!1556469 () Bool)

(declare-fun res!1064859 () Bool)

(assert (=> b!1556469 (=> (not res!1064859) (not e!866931))))

(assert (=> b!1556469 (= res!1064859 (containsKey!808 lt!670362 newKey!105))))

(declare-fun call!71615 () List!36441)

(declare-fun bm!71611 () Bool)

(assert (=> bm!71611 (= call!71615 ($colon$colon!970 e!866929 (ite c!143745 (h!37884 (t!51169 (t!51169 l!1177))) (tuple2!25039 newKey!105 newValue!105))))))

(declare-fun c!143747 () Bool)

(assert (=> bm!71611 (= c!143747 c!143745)))

(declare-fun bm!71612 () Bool)

(declare-fun call!71614 () List!36441)

(assert (=> bm!71612 (= call!71614 call!71615)))

(declare-fun bm!71613 () Bool)

(assert (=> bm!71613 (= call!71616 call!71614)))

(declare-fun b!1556470 () Bool)

(assert (=> b!1556470 (= e!866932 call!71614)))

(declare-fun b!1556471 () Bool)

(assert (=> b!1556471 (= e!866929 (insertStrictlySorted!550 (t!51169 (t!51169 (t!51169 l!1177))) newKey!105 newValue!105))))

(declare-fun b!1556472 () Bool)

(assert (=> b!1556472 (= e!866928 call!71616)))

(declare-fun b!1556473 () Bool)

(assert (=> b!1556473 (= e!866930 call!71615)))

(assert (= (and d!162101 c!143745) b!1556473))

(assert (= (and d!162101 (not c!143745)) b!1556466))

(assert (= (and b!1556466 c!143746) b!1556470))

(assert (= (and b!1556466 (not c!143746)) b!1556468))

(assert (= (and b!1556468 c!143748) b!1556472))

(assert (= (and b!1556468 (not c!143748)) b!1556467))

(assert (= (or b!1556472 b!1556467) bm!71613))

(assert (= (or b!1556470 bm!71613) bm!71612))

(assert (= (or b!1556473 bm!71612) bm!71611))

(assert (= (and bm!71611 c!143747) b!1556471))

(assert (= (and bm!71611 (not c!143747)) b!1556464))

(assert (= (and d!162101 res!1064860) b!1556469))

(assert (= (and b!1556469 res!1064859) b!1556465))

(declare-fun m!1433945 () Bool)

(assert (=> b!1556471 m!1433945))

(declare-fun m!1433947 () Bool)

(assert (=> d!162101 m!1433947))

(assert (=> d!162101 m!1433837))

(declare-fun m!1433949 () Bool)

(assert (=> b!1556465 m!1433949))

(declare-fun m!1433951 () Bool)

(assert (=> bm!71611 m!1433951))

(declare-fun m!1433953 () Bool)

(assert (=> b!1556469 m!1433953))

(assert (=> b!1556388 d!162101))

(declare-fun d!162103 () Bool)

(declare-fun c!143749 () Bool)

(assert (=> d!162103 (= c!143749 (and ((_ is Cons!36437) (t!51169 lt!670330)) (= (_1!12529 (h!37884 (t!51169 lt!670330))) otherKey!50)))))

(declare-fun e!866933 () Option!853)

(assert (=> d!162103 (= (getValueByKey!778 (t!51169 lt!670330) otherKey!50) e!866933)))

(declare-fun b!1556475 () Bool)

(declare-fun e!866934 () Option!853)

(assert (=> b!1556475 (= e!866933 e!866934)))

(declare-fun c!143750 () Bool)

(assert (=> b!1556475 (= c!143750 (and ((_ is Cons!36437) (t!51169 lt!670330)) (not (= (_1!12529 (h!37884 (t!51169 lt!670330))) otherKey!50))))))

(declare-fun b!1556477 () Bool)

(assert (=> b!1556477 (= e!866934 None!851)))

(declare-fun b!1556476 () Bool)

(assert (=> b!1556476 (= e!866934 (getValueByKey!778 (t!51169 (t!51169 lt!670330)) otherKey!50))))

(declare-fun b!1556474 () Bool)

(assert (=> b!1556474 (= e!866933 (Some!852 (_2!12529 (h!37884 (t!51169 lt!670330)))))))

(assert (= (and d!162103 c!143749) b!1556474))

(assert (= (and d!162103 (not c!143749)) b!1556475))

(assert (= (and b!1556475 c!143750) b!1556476))

(assert (= (and b!1556475 (not c!143750)) b!1556477))

(declare-fun m!1433955 () Bool)

(assert (=> b!1556476 m!1433955))

(assert (=> b!1556201 d!162103))

(declare-fun d!162105 () Bool)

(declare-fun c!143751 () Bool)

(assert (=> d!162105 (= c!143751 (and ((_ is Cons!36437) (t!51169 lt!670329)) (= (_1!12529 (h!37884 (t!51169 lt!670329))) otherKey!50)))))

(declare-fun e!866935 () Option!853)

(assert (=> d!162105 (= (getValueByKey!778 (t!51169 lt!670329) otherKey!50) e!866935)))

(declare-fun b!1556479 () Bool)

(declare-fun e!866936 () Option!853)

(assert (=> b!1556479 (= e!866935 e!866936)))

(declare-fun c!143752 () Bool)

(assert (=> b!1556479 (= c!143752 (and ((_ is Cons!36437) (t!51169 lt!670329)) (not (= (_1!12529 (h!37884 (t!51169 lt!670329))) otherKey!50))))))

(declare-fun b!1556481 () Bool)

(assert (=> b!1556481 (= e!866936 None!851)))

(declare-fun b!1556480 () Bool)

(assert (=> b!1556480 (= e!866936 (getValueByKey!778 (t!51169 (t!51169 lt!670329)) otherKey!50))))

(declare-fun b!1556478 () Bool)

(assert (=> b!1556478 (= e!866935 (Some!852 (_2!12529 (h!37884 (t!51169 lt!670329)))))))

(assert (= (and d!162105 c!143751) b!1556478))

(assert (= (and d!162105 (not c!143751)) b!1556479))

(assert (= (and b!1556479 c!143752) b!1556480))

(assert (= (and b!1556479 (not c!143752)) b!1556481))

(declare-fun m!1433957 () Bool)

(assert (=> b!1556480 m!1433957))

(assert (=> b!1556225 d!162105))

(assert (=> b!1556318 d!162067))

(assert (=> d!162049 d!162039))

(assert (=> d!162049 d!162067))

(assert (=> d!162049 d!162081))

(declare-fun d!162107 () Bool)

(declare-fun res!1064861 () Bool)

(declare-fun e!866937 () Bool)

(assert (=> d!162107 (=> res!1064861 e!866937)))

(assert (=> d!162107 (= res!1064861 (and ((_ is Cons!36437) (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105)) (= (_1!12529 (h!37884 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105))) otherKey!50)))))

(assert (=> d!162107 (= (containsKey!808 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105) otherKey!50) e!866937)))

(declare-fun b!1556482 () Bool)

(declare-fun e!866938 () Bool)

(assert (=> b!1556482 (= e!866937 e!866938)))

(declare-fun res!1064862 () Bool)

(assert (=> b!1556482 (=> (not res!1064862) (not e!866938))))

(assert (=> b!1556482 (= res!1064862 (and (or (not ((_ is Cons!36437) (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105))) (bvsle (_1!12529 (h!37884 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105))) otherKey!50)) ((_ is Cons!36437) (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105)) (bvslt (_1!12529 (h!37884 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105))) otherKey!50)))))

(declare-fun b!1556483 () Bool)

(assert (=> b!1556483 (= e!866938 (containsKey!808 (t!51169 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105)) otherKey!50))))

(assert (= (and d!162107 (not res!1064861)) b!1556482))

(assert (= (and b!1556482 res!1064862) b!1556483))

(declare-fun m!1433959 () Bool)

(assert (=> b!1556483 m!1433959))

(assert (=> d!162049 d!162107))

(declare-fun d!162109 () Bool)

(declare-fun e!866941 () Bool)

(assert (=> d!162109 e!866941))

(declare-fun res!1064865 () Bool)

(assert (=> d!162109 (=> (not res!1064865) (not e!866941))))

(assert (=> d!162109 (= res!1064865 (= (containsKey!808 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105) otherKey!50) (containsKey!808 (t!51169 l!1177) otherKey!50)))))

(assert (=> d!162109 true))

(declare-fun _$16!190 () Unit!51775)

(assert (=> d!162109 (= (choose!2068 (t!51169 l!1177) newKey!105 newValue!105 otherKey!50) _$16!190)))

(declare-fun b!1556486 () Bool)

(assert (=> b!1556486 (= e!866941 (= (getValueByKey!778 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105) otherKey!50) (getValueByKey!778 (t!51169 l!1177) otherKey!50)))))

(assert (= (and d!162109 res!1064865) b!1556486))

(assert (=> d!162109 m!1433785))

(assert (=> d!162109 m!1433785))

(assert (=> d!162109 m!1433873))

(assert (=> d!162109 m!1433787))

(assert (=> b!1556486 m!1433785))

(assert (=> b!1556486 m!1433785))

(assert (=> b!1556486 m!1433877))

(assert (=> b!1556486 m!1433801))

(assert (=> d!162049 d!162109))

(assert (=> b!1556182 d!162039))

(declare-fun d!162111 () Bool)

(declare-fun res!1064866 () Bool)

(declare-fun e!866942 () Bool)

(assert (=> d!162111 (=> res!1064866 e!866942)))

(assert (=> d!162111 (= res!1064866 (and ((_ is Cons!36437) lt!670360) (= (_1!12529 (h!37884 lt!670360)) newKey!105)))))

(assert (=> d!162111 (= (containsKey!808 lt!670360 newKey!105) e!866942)))

(declare-fun b!1556487 () Bool)

(declare-fun e!866943 () Bool)

(assert (=> b!1556487 (= e!866942 e!866943)))

(declare-fun res!1064867 () Bool)

(assert (=> b!1556487 (=> (not res!1064867) (not e!866943))))

(assert (=> b!1556487 (= res!1064867 (and (or (not ((_ is Cons!36437) lt!670360)) (bvsle (_1!12529 (h!37884 lt!670360)) newKey!105)) ((_ is Cons!36437) lt!670360) (bvslt (_1!12529 (h!37884 lt!670360)) newKey!105)))))

(declare-fun b!1556488 () Bool)

(assert (=> b!1556488 (= e!866943 (containsKey!808 (t!51169 lt!670360) newKey!105))))

(assert (= (and d!162111 (not res!1064866)) b!1556487))

(assert (= (and b!1556487 res!1064867) b!1556488))

(declare-fun m!1433961 () Bool)

(assert (=> b!1556488 m!1433961))

(assert (=> b!1556386 d!162111))

(declare-fun d!162113 () Bool)

(declare-fun res!1064868 () Bool)

(declare-fun e!866944 () Bool)

(assert (=> d!162113 (=> res!1064868 e!866944)))

(assert (=> d!162113 (= res!1064868 (or ((_ is Nil!36438) (t!51169 (t!51169 l!1177))) ((_ is Nil!36438) (t!51169 (t!51169 (t!51169 l!1177))))))))

(assert (=> d!162113 (= (isStrictlySorted!945 (t!51169 (t!51169 l!1177))) e!866944)))

(declare-fun b!1556489 () Bool)

(declare-fun e!866945 () Bool)

(assert (=> b!1556489 (= e!866944 e!866945)))

(declare-fun res!1064869 () Bool)

(assert (=> b!1556489 (=> (not res!1064869) (not e!866945))))

(assert (=> b!1556489 (= res!1064869 (bvslt (_1!12529 (h!37884 (t!51169 (t!51169 l!1177)))) (_1!12529 (h!37884 (t!51169 (t!51169 (t!51169 l!1177)))))))))

(declare-fun b!1556490 () Bool)

(assert (=> b!1556490 (= e!866945 (isStrictlySorted!945 (t!51169 (t!51169 (t!51169 l!1177)))))))

(assert (= (and d!162113 (not res!1064868)) b!1556489))

(assert (= (and b!1556489 res!1064869) b!1556490))

(declare-fun m!1433963 () Bool)

(assert (=> b!1556490 m!1433963))

(assert (=> b!1556232 d!162113))

(declare-fun d!162115 () Bool)

(declare-fun lt!670365 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!799 (List!36441) (InoxSet tuple2!25038))

(assert (=> d!162115 (= lt!670365 (select (content!799 lt!670348) (tuple2!25039 newKey!105 newValue!105)))))

(declare-fun e!866950 () Bool)

(assert (=> d!162115 (= lt!670365 e!866950)))

(declare-fun res!1064875 () Bool)

(assert (=> d!162115 (=> (not res!1064875) (not e!866950))))

(assert (=> d!162115 (= res!1064875 ((_ is Cons!36437) lt!670348))))

(assert (=> d!162115 (= (contains!10190 lt!670348 (tuple2!25039 newKey!105 newValue!105)) lt!670365)))

(declare-fun b!1556495 () Bool)

(declare-fun e!866951 () Bool)

(assert (=> b!1556495 (= e!866950 e!866951)))

(declare-fun res!1064874 () Bool)

(assert (=> b!1556495 (=> res!1064874 e!866951)))

(assert (=> b!1556495 (= res!1064874 (= (h!37884 lt!670348) (tuple2!25039 newKey!105 newValue!105)))))

(declare-fun b!1556496 () Bool)

(assert (=> b!1556496 (= e!866951 (contains!10190 (t!51169 lt!670348) (tuple2!25039 newKey!105 newValue!105)))))

(assert (= (and d!162115 res!1064875) b!1556495))

(assert (= (and b!1556495 (not res!1064874)) b!1556496))

(declare-fun m!1433965 () Bool)

(assert (=> d!162115 m!1433965))

(declare-fun m!1433967 () Bool)

(assert (=> d!162115 m!1433967))

(declare-fun m!1433969 () Bool)

(assert (=> b!1556496 m!1433969))

(assert (=> b!1556312 d!162115))

(declare-fun d!162117 () Bool)

(declare-fun c!143753 () Bool)

(assert (=> d!162117 (= c!143753 (and ((_ is Cons!36437) (t!51169 (t!51169 l!1177))) (= (_1!12529 (h!37884 (t!51169 (t!51169 l!1177)))) otherKey!50)))))

(declare-fun e!866952 () Option!853)

(assert (=> d!162117 (= (getValueByKey!778 (t!51169 (t!51169 l!1177)) otherKey!50) e!866952)))

(declare-fun b!1556498 () Bool)

(declare-fun e!866953 () Option!853)

(assert (=> b!1556498 (= e!866952 e!866953)))

(declare-fun c!143754 () Bool)

(assert (=> b!1556498 (= c!143754 (and ((_ is Cons!36437) (t!51169 (t!51169 l!1177))) (not (= (_1!12529 (h!37884 (t!51169 (t!51169 l!1177)))) otherKey!50))))))

(declare-fun b!1556500 () Bool)

(assert (=> b!1556500 (= e!866953 None!851)))

(declare-fun b!1556499 () Bool)

(assert (=> b!1556499 (= e!866953 (getValueByKey!778 (t!51169 (t!51169 (t!51169 l!1177))) otherKey!50))))

(declare-fun b!1556497 () Bool)

(assert (=> b!1556497 (= e!866952 (Some!852 (_2!12529 (h!37884 (t!51169 (t!51169 l!1177))))))))

(assert (= (and d!162117 c!143753) b!1556497))

(assert (= (and d!162117 (not c!143753)) b!1556498))

(assert (= (and b!1556498 c!143754) b!1556499))

(assert (= (and b!1556498 (not c!143754)) b!1556500))

(declare-fun m!1433971 () Bool)

(assert (=> b!1556499 m!1433971))

(assert (=> b!1556209 d!162117))

(assert (=> b!1556229 d!162029))

(declare-fun d!162119 () Bool)

(declare-fun c!143755 () Bool)

(assert (=> d!162119 (= c!143755 (and ((_ is Cons!36437) (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105)) (= (_1!12529 (h!37884 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105))) otherKey!50)))))

(declare-fun e!866954 () Option!853)

(assert (=> d!162119 (= (getValueByKey!778 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105) otherKey!50) e!866954)))

(declare-fun b!1556502 () Bool)

(declare-fun e!866955 () Option!853)

(assert (=> b!1556502 (= e!866954 e!866955)))

(declare-fun c!143756 () Bool)

(assert (=> b!1556502 (= c!143756 (and ((_ is Cons!36437) (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105)) (not (= (_1!12529 (h!37884 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105))) otherKey!50))))))

(declare-fun b!1556504 () Bool)

(assert (=> b!1556504 (= e!866955 None!851)))

(declare-fun b!1556503 () Bool)

(assert (=> b!1556503 (= e!866955 (getValueByKey!778 (t!51169 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105)) otherKey!50))))

(declare-fun b!1556501 () Bool)

(assert (=> b!1556501 (= e!866954 (Some!852 (_2!12529 (h!37884 (insertStrictlySorted!550 (t!51169 l!1177) newKey!105 newValue!105)))))))

(assert (= (and d!162119 c!143755) b!1556501))

(assert (= (and d!162119 (not c!143755)) b!1556502))

(assert (= (and b!1556502 c!143756) b!1556503))

(assert (= (and b!1556502 (not c!143756)) b!1556504))

(declare-fun m!1433973 () Bool)

(assert (=> b!1556503 m!1433973))

(assert (=> b!1556346 d!162119))

(assert (=> b!1556346 d!162067))

(assert (=> b!1556346 d!162029))

(declare-fun d!162121 () Bool)

(assert (=> d!162121 (= ($colon$colon!970 e!866870 (ite c!143729 (h!37884 (t!51169 l!1177)) (tuple2!25039 newKey!105 newValue!105))) (Cons!36437 (ite c!143729 (h!37884 (t!51169 l!1177)) (tuple2!25039 newKey!105 newValue!105)) e!866870))))

(assert (=> bm!71605 d!162121))

(declare-fun d!162123 () Bool)

(declare-fun res!1064876 () Bool)

(declare-fun e!866956 () Bool)

(assert (=> d!162123 (=> res!1064876 e!866956)))

(assert (=> d!162123 (= res!1064876 (and ((_ is Cons!36437) (t!51169 lt!670329)) (= (_1!12529 (h!37884 (t!51169 lt!670329))) otherKey!50)))))

(assert (=> d!162123 (= (containsKey!808 (t!51169 lt!670329) otherKey!50) e!866956)))

(declare-fun b!1556505 () Bool)

(declare-fun e!866957 () Bool)

(assert (=> b!1556505 (= e!866956 e!866957)))

(declare-fun res!1064877 () Bool)

(assert (=> b!1556505 (=> (not res!1064877) (not e!866957))))

(assert (=> b!1556505 (= res!1064877 (and (or (not ((_ is Cons!36437) (t!51169 lt!670329))) (bvsle (_1!12529 (h!37884 (t!51169 lt!670329))) otherKey!50)) ((_ is Cons!36437) (t!51169 lt!670329)) (bvslt (_1!12529 (h!37884 (t!51169 lt!670329))) otherKey!50)))))

(declare-fun b!1556506 () Bool)

(assert (=> b!1556506 (= e!866957 (containsKey!808 (t!51169 (t!51169 lt!670329)) otherKey!50))))

(assert (= (and d!162123 (not res!1064876)) b!1556505))

(assert (= (and b!1556505 res!1064877) b!1556506))

(declare-fun m!1433975 () Bool)

(assert (=> b!1556506 m!1433975))

(assert (=> b!1556380 d!162123))

(declare-fun d!162125 () Bool)

(declare-fun res!1064878 () Bool)

(declare-fun e!866958 () Bool)

(assert (=> d!162125 (=> res!1064878 e!866958)))

(assert (=> d!162125 (= res!1064878 (or ((_ is Nil!36438) lt!670348) ((_ is Nil!36438) (t!51169 lt!670348))))))

(assert (=> d!162125 (= (isStrictlySorted!945 lt!670348) e!866958)))

(declare-fun b!1556507 () Bool)

(declare-fun e!866959 () Bool)

(assert (=> b!1556507 (= e!866958 e!866959)))

(declare-fun res!1064879 () Bool)

(assert (=> b!1556507 (=> (not res!1064879) (not e!866959))))

(assert (=> b!1556507 (= res!1064879 (bvslt (_1!12529 (h!37884 lt!670348)) (_1!12529 (h!37884 (t!51169 lt!670348)))))))

(declare-fun b!1556508 () Bool)

(assert (=> b!1556508 (= e!866959 (isStrictlySorted!945 (t!51169 lt!670348)))))

(assert (= (and d!162125 (not res!1064878)) b!1556507))

(assert (= (and b!1556507 res!1064879) b!1556508))

(declare-fun m!1433977 () Bool)

(assert (=> b!1556508 m!1433977))

(assert (=> d!162041 d!162125))

(assert (=> d!162041 d!162021))

(declare-fun d!162127 () Bool)

(declare-fun res!1064880 () Bool)

(declare-fun e!866960 () Bool)

(assert (=> d!162127 (=> res!1064880 e!866960)))

(assert (=> d!162127 (= res!1064880 (and ((_ is Cons!36437) lt!670348) (= (_1!12529 (h!37884 lt!670348)) newKey!105)))))

(assert (=> d!162127 (= (containsKey!808 lt!670348 newKey!105) e!866960)))

(declare-fun b!1556509 () Bool)

(declare-fun e!866961 () Bool)

(assert (=> b!1556509 (= e!866960 e!866961)))

(declare-fun res!1064881 () Bool)

(assert (=> b!1556509 (=> (not res!1064881) (not e!866961))))

(assert (=> b!1556509 (= res!1064881 (and (or (not ((_ is Cons!36437) lt!670348)) (bvsle (_1!12529 (h!37884 lt!670348)) newKey!105)) ((_ is Cons!36437) lt!670348) (bvslt (_1!12529 (h!37884 lt!670348)) newKey!105)))))

(declare-fun b!1556510 () Bool)

(assert (=> b!1556510 (= e!866961 (containsKey!808 (t!51169 lt!670348) newKey!105))))

(assert (= (and d!162127 (not res!1064880)) b!1556509))

(assert (= (and b!1556509 res!1064881) b!1556510))

(declare-fun m!1433979 () Bool)

(assert (=> b!1556510 m!1433979))

(assert (=> b!1556316 d!162127))

(declare-fun d!162129 () Bool)

(assert (=> d!162129 (= ($colon$colon!970 e!866815 (ite c!143717 (h!37884 l!1177) (tuple2!25039 newKey!105 newValue!105))) (Cons!36437 (ite c!143717 (h!37884 l!1177) (tuple2!25039 newKey!105 newValue!105)) e!866815))))

(assert (=> bm!71596 d!162129))

(declare-fun d!162131 () Bool)

(declare-fun lt!670366 () Bool)

(assert (=> d!162131 (= lt!670366 (select (content!799 lt!670360) (tuple2!25039 newKey!105 newValue!105)))))

(declare-fun e!866962 () Bool)

(assert (=> d!162131 (= lt!670366 e!866962)))

(declare-fun res!1064883 () Bool)

(assert (=> d!162131 (=> (not res!1064883) (not e!866962))))

(assert (=> d!162131 (= res!1064883 ((_ is Cons!36437) lt!670360))))

(assert (=> d!162131 (= (contains!10190 lt!670360 (tuple2!25039 newKey!105 newValue!105)) lt!670366)))

(declare-fun b!1556511 () Bool)

(declare-fun e!866963 () Bool)

(assert (=> b!1556511 (= e!866962 e!866963)))

(declare-fun res!1064882 () Bool)

(assert (=> b!1556511 (=> res!1064882 e!866963)))

(assert (=> b!1556511 (= res!1064882 (= (h!37884 lt!670360) (tuple2!25039 newKey!105 newValue!105)))))

(declare-fun b!1556512 () Bool)

(assert (=> b!1556512 (= e!866963 (contains!10190 (t!51169 lt!670360) (tuple2!25039 newKey!105 newValue!105)))))

(assert (= (and d!162131 res!1064883) b!1556511))

(assert (= (and b!1556511 (not res!1064882)) b!1556512))

(declare-fun m!1433981 () Bool)

(assert (=> d!162131 m!1433981))

(declare-fun m!1433983 () Bool)

(assert (=> d!162131 m!1433983))

(declare-fun m!1433985 () Bool)

(assert (=> b!1556512 m!1433985))

(assert (=> b!1556382 d!162131))

(declare-fun d!162133 () Bool)

(declare-fun res!1064884 () Bool)

(declare-fun e!866964 () Bool)

(assert (=> d!162133 (=> res!1064884 e!866964)))

(assert (=> d!162133 (= res!1064884 (and ((_ is Cons!36437) (t!51169 lt!670330)) (= (_1!12529 (h!37884 (t!51169 lt!670330))) otherKey!50)))))

(assert (=> d!162133 (= (containsKey!808 (t!51169 lt!670330) otherKey!50) e!866964)))

(declare-fun b!1556513 () Bool)

(declare-fun e!866965 () Bool)

(assert (=> b!1556513 (= e!866964 e!866965)))

(declare-fun res!1064885 () Bool)

(assert (=> b!1556513 (=> (not res!1064885) (not e!866965))))

(assert (=> b!1556513 (= res!1064885 (and (or (not ((_ is Cons!36437) (t!51169 lt!670330))) (bvsle (_1!12529 (h!37884 (t!51169 lt!670330))) otherKey!50)) ((_ is Cons!36437) (t!51169 lt!670330)) (bvslt (_1!12529 (h!37884 (t!51169 lt!670330))) otherKey!50)))))

(declare-fun b!1556514 () Bool)

(assert (=> b!1556514 (= e!866965 (containsKey!808 (t!51169 (t!51169 lt!670330)) otherKey!50))))

(assert (= (and d!162133 (not res!1064884)) b!1556513))

(assert (= (and b!1556513 res!1064885) b!1556514))

(declare-fun m!1433987 () Bool)

(assert (=> b!1556514 m!1433987))

(assert (=> b!1556370 d!162133))

(assert (=> b!1556378 d!162081))

(declare-fun d!162135 () Bool)

(declare-fun res!1064886 () Bool)

(declare-fun e!866966 () Bool)

(assert (=> d!162135 (=> res!1064886 e!866966)))

(assert (=> d!162135 (= res!1064886 (and ((_ is Cons!36437) (t!51169 (t!51169 l!1177))) (= (_1!12529 (h!37884 (t!51169 (t!51169 l!1177)))) otherKey!50)))))

(assert (=> d!162135 (= (containsKey!808 (t!51169 (t!51169 l!1177)) otherKey!50) e!866966)))

(declare-fun b!1556515 () Bool)

(declare-fun e!866967 () Bool)

(assert (=> b!1556515 (= e!866966 e!866967)))

(declare-fun res!1064887 () Bool)

(assert (=> b!1556515 (=> (not res!1064887) (not e!866967))))

(assert (=> b!1556515 (= res!1064887 (and (or (not ((_ is Cons!36437) (t!51169 (t!51169 l!1177)))) (bvsle (_1!12529 (h!37884 (t!51169 (t!51169 l!1177)))) otherKey!50)) ((_ is Cons!36437) (t!51169 (t!51169 l!1177))) (bvslt (_1!12529 (h!37884 (t!51169 (t!51169 l!1177)))) otherKey!50)))))

(declare-fun b!1556516 () Bool)

(assert (=> b!1556516 (= e!866967 (containsKey!808 (t!51169 (t!51169 (t!51169 l!1177))) otherKey!50))))

(assert (= (and d!162135 (not res!1064886)) b!1556515))

(assert (= (and b!1556515 res!1064887) b!1556516))

(declare-fun m!1433989 () Bool)

(assert (=> b!1556516 m!1433989))

(assert (=> b!1556410 d!162135))

(declare-fun b!1556517 () Bool)

(declare-fun e!866968 () Bool)

(declare-fun tp!112442 () Bool)

(assert (=> b!1556517 (= e!866968 (and tp_is_empty!38361 tp!112442))))

(assert (=> b!1556425 (= tp!112435 e!866968)))

(assert (= (and b!1556425 ((_ is Cons!36437) (t!51169 (t!51169 l!1177)))) b!1556517))

(check-sat (not bm!71611) (not b!1556486) (not b!1556512) (not b!1556514) (not b!1556516) (not b!1556496) (not b!1556506) (not b!1556469) (not b!1556490) (not b!1556463) (not b!1556503) (not d!162101) (not b!1556508) (not b!1556510) (not d!162115) (not b!1556488) (not b!1556483) (not b!1556480) (not b!1556465) (not b!1556517) (not b!1556476) (not b!1556499) (not d!162131) (not b!1556471) (not d!162109) tp_is_empty!38361)
(check-sat)
