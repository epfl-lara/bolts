; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!7272 () Bool)

(assert start!7272)

(declare-fun b!46501 () Bool)

(declare-fun e!29642 () Bool)

(declare-fun tp_is_empty!1989 () Bool)

(declare-fun tp!6140 () Bool)

(assert (=> b!46501 (= e!29642 (and tp_is_empty!1989 tp!6140))))

(declare-fun e!29641 () Bool)

(declare-datatypes ((B!892 0))(
  ( (B!893 (val!1033 Int)) )
))
(declare-datatypes ((tuple2!1718 0))(
  ( (tuple2!1719 (_1!869 (_ BitVec 64)) (_2!869 B!892)) )
))
(declare-datatypes ((List!1267 0))(
  ( (Nil!1264) (Cons!1263 (h!1843 tuple2!1718) (t!4300 List!1267)) )
))
(declare-fun l!812 () List!1267)

(declare-fun key2!27 () (_ BitVec 64))

(declare-fun key1!43 () (_ BitVec 64))

(declare-fun b!46500 () Bool)

(declare-fun removeStrictlySorted!44 (List!1267 (_ BitVec 64)) List!1267)

(assert (=> b!46500 (= e!29641 (not (= (removeStrictlySorted!44 (removeStrictlySorted!44 l!812 key1!43) key2!27) (removeStrictlySorted!44 (removeStrictlySorted!44 l!812 key2!27) key1!43))))))

(assert (=> b!46500 (= (removeStrictlySorted!44 (removeStrictlySorted!44 (t!4300 l!812) key1!43) key2!27) (removeStrictlySorted!44 (removeStrictlySorted!44 (t!4300 l!812) key2!27) key1!43))))

(declare-datatypes ((Unit!1323 0))(
  ( (Unit!1324) )
))
(declare-fun lt!20315 () Unit!1323)

(declare-fun lemmaRemoveStrictlySortedCommutative!17 (List!1267 (_ BitVec 64) (_ BitVec 64)) Unit!1323)

(assert (=> b!46500 (= lt!20315 (lemmaRemoveStrictlySortedCommutative!17 (t!4300 l!812) key1!43 key2!27))))

(declare-fun b!46498 () Bool)

(declare-fun res!27154 () Bool)

(assert (=> b!46498 (=> (not res!27154) (not e!29641))))

(get-info :version)

(assert (=> b!46498 (= res!27154 ((_ is Cons!1263) l!812))))

(declare-fun b!46499 () Bool)

(declare-fun res!27153 () Bool)

(assert (=> b!46499 (=> (not res!27153) (not e!29641))))

(declare-fun isStrictlySorted!238 (List!1267) Bool)

(assert (=> b!46499 (= res!27153 (isStrictlySorted!238 (t!4300 l!812)))))

(declare-fun res!27152 () Bool)

(assert (=> start!7272 (=> (not res!27152) (not e!29641))))

(assert (=> start!7272 (= res!27152 (isStrictlySorted!238 l!812))))

(assert (=> start!7272 e!29641))

(assert (=> start!7272 e!29642))

(assert (=> start!7272 true))

(assert (= (and start!7272 res!27152) b!46498))

(assert (= (and b!46498 res!27154) b!46499))

(assert (= (and b!46499 res!27153) b!46500))

(assert (= (and start!7272 ((_ is Cons!1263) l!812)) b!46501))

(declare-fun m!40801 () Bool)

(assert (=> b!46500 m!40801))

(declare-fun m!40803 () Bool)

(assert (=> b!46500 m!40803))

(declare-fun m!40805 () Bool)

(assert (=> b!46500 m!40805))

(assert (=> b!46500 m!40803))

(declare-fun m!40807 () Bool)

(assert (=> b!46500 m!40807))

(declare-fun m!40809 () Bool)

(assert (=> b!46500 m!40809))

(declare-fun m!40811 () Bool)

(assert (=> b!46500 m!40811))

(assert (=> b!46500 m!40801))

(declare-fun m!40813 () Bool)

(assert (=> b!46500 m!40813))

(declare-fun m!40815 () Bool)

(assert (=> b!46500 m!40815))

(assert (=> b!46500 m!40811))

(declare-fun m!40817 () Bool)

(assert (=> b!46500 m!40817))

(assert (=> b!46500 m!40807))

(declare-fun m!40819 () Bool)

(assert (=> b!46499 m!40819))

(declare-fun m!40821 () Bool)

(assert (=> start!7272 m!40821))

(check-sat (not start!7272) tp_is_empty!1989 (not b!46499) (not b!46500) (not b!46501))
(check-sat)
(get-model)

(declare-fun d!9131 () Bool)

(declare-fun res!27173 () Bool)

(declare-fun e!29658 () Bool)

(assert (=> d!9131 (=> res!27173 e!29658)))

(assert (=> d!9131 (= res!27173 (or ((_ is Nil!1264) l!812) ((_ is Nil!1264) (t!4300 l!812))))))

(assert (=> d!9131 (= (isStrictlySorted!238 l!812) e!29658)))

(declare-fun b!46523 () Bool)

(declare-fun e!29660 () Bool)

(assert (=> b!46523 (= e!29658 e!29660)))

(declare-fun res!27175 () Bool)

(assert (=> b!46523 (=> (not res!27175) (not e!29660))))

(assert (=> b!46523 (= res!27175 (bvslt (_1!869 (h!1843 l!812)) (_1!869 (h!1843 (t!4300 l!812)))))))

(declare-fun b!46525 () Bool)

(assert (=> b!46525 (= e!29660 (isStrictlySorted!238 (t!4300 l!812)))))

(assert (= (and d!9131 (not res!27173)) b!46523))

(assert (= (and b!46523 res!27175) b!46525))

(assert (=> b!46525 m!40819))

(assert (=> start!7272 d!9131))

(declare-fun d!9134 () Bool)

(declare-fun res!27176 () Bool)

(declare-fun e!29661 () Bool)

(assert (=> d!9134 (=> res!27176 e!29661)))

(assert (=> d!9134 (= res!27176 (or ((_ is Nil!1264) (t!4300 l!812)) ((_ is Nil!1264) (t!4300 (t!4300 l!812)))))))

(assert (=> d!9134 (= (isStrictlySorted!238 (t!4300 l!812)) e!29661)))

(declare-fun b!46526 () Bool)

(declare-fun e!29663 () Bool)

(assert (=> b!46526 (= e!29661 e!29663)))

(declare-fun res!27178 () Bool)

(assert (=> b!46526 (=> (not res!27178) (not e!29663))))

(assert (=> b!46526 (= res!27178 (bvslt (_1!869 (h!1843 (t!4300 l!812))) (_1!869 (h!1843 (t!4300 (t!4300 l!812))))))))

(declare-fun b!46527 () Bool)

(assert (=> b!46527 (= e!29663 (isStrictlySorted!238 (t!4300 (t!4300 l!812))))))

(assert (= (and d!9134 (not res!27176)) b!46526))

(assert (= (and b!46526 res!27178) b!46527))

(declare-fun m!40845 () Bool)

(assert (=> b!46527 m!40845))

(assert (=> b!46499 d!9134))

(declare-fun b!46575 () Bool)

(declare-fun e!29692 () Bool)

(declare-fun lt!20328 () List!1267)

(declare-fun containsKey!90 (List!1267 (_ BitVec 64)) Bool)

(assert (=> b!46575 (= e!29692 (not (containsKey!90 lt!20328 key1!43)))))

(declare-fun b!46576 () Bool)

(declare-fun e!29693 () List!1267)

(assert (=> b!46576 (= e!29693 Nil!1264)))

(declare-fun d!9137 () Bool)

(assert (=> d!9137 e!29692))

(declare-fun res!27189 () Bool)

(assert (=> d!9137 (=> (not res!27189) (not e!29692))))

(assert (=> d!9137 (= res!27189 (isStrictlySorted!238 lt!20328))))

(declare-fun e!29694 () List!1267)

(assert (=> d!9137 (= lt!20328 e!29694)))

(declare-fun c!6302 () Bool)

(assert (=> d!9137 (= c!6302 (and ((_ is Cons!1263) (removeStrictlySorted!44 l!812 key2!27)) (= (_1!869 (h!1843 (removeStrictlySorted!44 l!812 key2!27))) key1!43)))))

(assert (=> d!9137 (isStrictlySorted!238 (removeStrictlySorted!44 l!812 key2!27))))

(assert (=> d!9137 (= (removeStrictlySorted!44 (removeStrictlySorted!44 l!812 key2!27) key1!43) lt!20328)))

(declare-fun b!46577 () Bool)

(declare-fun $colon$colon!44 (List!1267 tuple2!1718) List!1267)

(assert (=> b!46577 (= e!29693 ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 l!812 key2!27)) key1!43) (h!1843 (removeStrictlySorted!44 l!812 key2!27))))))

(declare-fun b!46578 () Bool)

(assert (=> b!46578 (= e!29694 e!29693)))

(declare-fun c!6301 () Bool)

(assert (=> b!46578 (= c!6301 (and ((_ is Cons!1263) (removeStrictlySorted!44 l!812 key2!27)) (not (= (_1!869 (h!1843 (removeStrictlySorted!44 l!812 key2!27))) key1!43))))))

(declare-fun b!46579 () Bool)

(assert (=> b!46579 (= e!29694 (t!4300 (removeStrictlySorted!44 l!812 key2!27)))))

(assert (= (and d!9137 c!6302) b!46579))

(assert (= (and d!9137 (not c!6302)) b!46578))

(assert (= (and b!46578 c!6301) b!46577))

(assert (= (and b!46578 (not c!6301)) b!46576))

(assert (= (and d!9137 res!27189) b!46575))

(declare-fun m!40871 () Bool)

(assert (=> b!46575 m!40871))

(declare-fun m!40873 () Bool)

(assert (=> d!9137 m!40873))

(assert (=> d!9137 m!40803))

(declare-fun m!40877 () Bool)

(assert (=> d!9137 m!40877))

(declare-fun m!40881 () Bool)

(assert (=> b!46577 m!40881))

(assert (=> b!46577 m!40881))

(declare-fun m!40886 () Bool)

(assert (=> b!46577 m!40886))

(assert (=> b!46500 d!9137))

(declare-fun b!46585 () Bool)

(declare-fun e!29698 () Bool)

(declare-fun lt!20330 () List!1267)

(assert (=> b!46585 (= e!29698 (not (containsKey!90 lt!20330 key1!43)))))

(declare-fun b!46586 () Bool)

(declare-fun e!29699 () List!1267)

(assert (=> b!46586 (= e!29699 Nil!1264)))

(declare-fun d!9147 () Bool)

(assert (=> d!9147 e!29698))

(declare-fun res!27191 () Bool)

(assert (=> d!9147 (=> (not res!27191) (not e!29698))))

(assert (=> d!9147 (= res!27191 (isStrictlySorted!238 lt!20330))))

(declare-fun e!29700 () List!1267)

(assert (=> d!9147 (= lt!20330 e!29700)))

(declare-fun c!6306 () Bool)

(assert (=> d!9147 (= c!6306 (and ((_ is Cons!1263) l!812) (= (_1!869 (h!1843 l!812)) key1!43)))))

(assert (=> d!9147 (isStrictlySorted!238 l!812)))

(assert (=> d!9147 (= (removeStrictlySorted!44 l!812 key1!43) lt!20330)))

(declare-fun b!46587 () Bool)

(assert (=> b!46587 (= e!29699 ($colon$colon!44 (removeStrictlySorted!44 (t!4300 l!812) key1!43) (h!1843 l!812)))))

(declare-fun b!46588 () Bool)

(assert (=> b!46588 (= e!29700 e!29699)))

(declare-fun c!6305 () Bool)

(assert (=> b!46588 (= c!6305 (and ((_ is Cons!1263) l!812) (not (= (_1!869 (h!1843 l!812)) key1!43))))))

(declare-fun b!46589 () Bool)

(assert (=> b!46589 (= e!29700 (t!4300 l!812))))

(assert (= (and d!9147 c!6306) b!46589))

(assert (= (and d!9147 (not c!6306)) b!46588))

(assert (= (and b!46588 c!6305) b!46587))

(assert (= (and b!46588 (not c!6305)) b!46586))

(assert (= (and d!9147 res!27191) b!46585))

(declare-fun m!40891 () Bool)

(assert (=> b!46585 m!40891))

(declare-fun m!40893 () Bool)

(assert (=> d!9147 m!40893))

(assert (=> d!9147 m!40821))

(assert (=> b!46587 m!40807))

(assert (=> b!46587 m!40807))

(declare-fun m!40899 () Bool)

(assert (=> b!46587 m!40899))

(assert (=> b!46500 d!9147))

(declare-fun b!46595 () Bool)

(declare-fun e!29704 () Bool)

(declare-fun lt!20334 () List!1267)

(assert (=> b!46595 (= e!29704 (not (containsKey!90 lt!20334 key2!27)))))

(declare-fun b!46596 () Bool)

(declare-fun e!29705 () List!1267)

(assert (=> b!46596 (= e!29705 Nil!1264)))

(declare-fun d!9151 () Bool)

(assert (=> d!9151 e!29704))

(declare-fun res!27193 () Bool)

(assert (=> d!9151 (=> (not res!27193) (not e!29704))))

(assert (=> d!9151 (= res!27193 (isStrictlySorted!238 lt!20334))))

(declare-fun e!29706 () List!1267)

(assert (=> d!9151 (= lt!20334 e!29706)))

(declare-fun c!6310 () Bool)

(assert (=> d!9151 (= c!6310 (and ((_ is Cons!1263) l!812) (= (_1!869 (h!1843 l!812)) key2!27)))))

(assert (=> d!9151 (isStrictlySorted!238 l!812)))

(assert (=> d!9151 (= (removeStrictlySorted!44 l!812 key2!27) lt!20334)))

(declare-fun b!46597 () Bool)

(assert (=> b!46597 (= e!29705 ($colon$colon!44 (removeStrictlySorted!44 (t!4300 l!812) key2!27) (h!1843 l!812)))))

(declare-fun b!46598 () Bool)

(assert (=> b!46598 (= e!29706 e!29705)))

(declare-fun c!6309 () Bool)

(assert (=> b!46598 (= c!6309 (and ((_ is Cons!1263) l!812) (not (= (_1!869 (h!1843 l!812)) key2!27))))))

(declare-fun b!46599 () Bool)

(assert (=> b!46599 (= e!29706 (t!4300 l!812))))

(assert (= (and d!9151 c!6310) b!46599))

(assert (= (and d!9151 (not c!6310)) b!46598))

(assert (= (and b!46598 c!6309) b!46597))

(assert (= (and b!46598 (not c!6309)) b!46596))

(assert (= (and d!9151 res!27193) b!46595))

(declare-fun m!40903 () Bool)

(assert (=> b!46595 m!40903))

(declare-fun m!40905 () Bool)

(assert (=> d!9151 m!40905))

(assert (=> d!9151 m!40821))

(assert (=> b!46597 m!40801))

(assert (=> b!46597 m!40801))

(declare-fun m!40911 () Bool)

(assert (=> b!46597 m!40911))

(assert (=> b!46500 d!9151))

(declare-fun d!9155 () Bool)

(assert (=> d!9155 (= (removeStrictlySorted!44 (removeStrictlySorted!44 (t!4300 l!812) key1!43) key2!27) (removeStrictlySorted!44 (removeStrictlySorted!44 (t!4300 l!812) key2!27) key1!43))))

(declare-fun lt!20345 () Unit!1323)

(declare-fun choose!285 (List!1267 (_ BitVec 64) (_ BitVec 64)) Unit!1323)

(assert (=> d!9155 (= lt!20345 (choose!285 (t!4300 l!812) key1!43 key2!27))))

(assert (=> d!9155 (isStrictlySorted!238 (t!4300 l!812))))

(assert (=> d!9155 (= (lemmaRemoveStrictlySortedCommutative!17 (t!4300 l!812) key1!43 key2!27) lt!20345)))

(declare-fun bs!2184 () Bool)

(assert (= bs!2184 d!9155))

(assert (=> bs!2184 m!40819))

(assert (=> bs!2184 m!40801))

(assert (=> bs!2184 m!40807))

(declare-fun m!40955 () Bool)

(assert (=> bs!2184 m!40955))

(assert (=> bs!2184 m!40807))

(assert (=> bs!2184 m!40809))

(assert (=> bs!2184 m!40801))

(assert (=> bs!2184 m!40813))

(assert (=> b!46500 d!9155))

(declare-fun b!46630 () Bool)

(declare-fun e!29725 () Bool)

(declare-fun lt!20348 () List!1267)

(assert (=> b!46630 (= e!29725 (not (containsKey!90 lt!20348 key2!27)))))

(declare-fun b!46631 () Bool)

(declare-fun e!29726 () List!1267)

(assert (=> b!46631 (= e!29726 Nil!1264)))

(declare-fun d!9169 () Bool)

(assert (=> d!9169 e!29725))

(declare-fun res!27200 () Bool)

(assert (=> d!9169 (=> (not res!27200) (not e!29725))))

(assert (=> d!9169 (= res!27200 (isStrictlySorted!238 lt!20348))))

(declare-fun e!29727 () List!1267)

(assert (=> d!9169 (= lt!20348 e!29727)))

(declare-fun c!6324 () Bool)

(assert (=> d!9169 (= c!6324 (and ((_ is Cons!1263) (removeStrictlySorted!44 (t!4300 l!812) key1!43)) (= (_1!869 (h!1843 (removeStrictlySorted!44 (t!4300 l!812) key1!43))) key2!27)))))

(assert (=> d!9169 (isStrictlySorted!238 (removeStrictlySorted!44 (t!4300 l!812) key1!43))))

(assert (=> d!9169 (= (removeStrictlySorted!44 (removeStrictlySorted!44 (t!4300 l!812) key1!43) key2!27) lt!20348)))

(declare-fun b!46632 () Bool)

(assert (=> b!46632 (= e!29726 ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43)) key2!27) (h!1843 (removeStrictlySorted!44 (t!4300 l!812) key1!43))))))

(declare-fun b!46633 () Bool)

(assert (=> b!46633 (= e!29727 e!29726)))

(declare-fun c!6323 () Bool)

(assert (=> b!46633 (= c!6323 (and ((_ is Cons!1263) (removeStrictlySorted!44 (t!4300 l!812) key1!43)) (not (= (_1!869 (h!1843 (removeStrictlySorted!44 (t!4300 l!812) key1!43))) key2!27))))))

(declare-fun b!46634 () Bool)

(assert (=> b!46634 (= e!29727 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43)))))

(assert (= (and d!9169 c!6324) b!46634))

(assert (= (and d!9169 (not c!6324)) b!46633))

(assert (= (and b!46633 c!6323) b!46632))

(assert (= (and b!46633 (not c!6323)) b!46631))

(assert (= (and d!9169 res!27200) b!46630))

(declare-fun m!40967 () Bool)

(assert (=> b!46630 m!40967))

(declare-fun m!40969 () Bool)

(assert (=> d!9169 m!40969))

(assert (=> d!9169 m!40807))

(declare-fun m!40971 () Bool)

(assert (=> d!9169 m!40971))

(declare-fun m!40975 () Bool)

(assert (=> b!46632 m!40975))

(assert (=> b!46632 m!40975))

(declare-fun m!40981 () Bool)

(assert (=> b!46632 m!40981))

(assert (=> b!46500 d!9169))

(declare-fun b!46640 () Bool)

(declare-fun e!29731 () Bool)

(declare-fun lt!20350 () List!1267)

(assert (=> b!46640 (= e!29731 (not (containsKey!90 lt!20350 key1!43)))))

(declare-fun b!46641 () Bool)

(declare-fun e!29732 () List!1267)

(assert (=> b!46641 (= e!29732 Nil!1264)))

(declare-fun d!9175 () Bool)

(assert (=> d!9175 e!29731))

(declare-fun res!27202 () Bool)

(assert (=> d!9175 (=> (not res!27202) (not e!29731))))

(assert (=> d!9175 (= res!27202 (isStrictlySorted!238 lt!20350))))

(declare-fun e!29733 () List!1267)

(assert (=> d!9175 (= lt!20350 e!29733)))

(declare-fun c!6328 () Bool)

(assert (=> d!9175 (= c!6328 (and ((_ is Cons!1263) (t!4300 l!812)) (= (_1!869 (h!1843 (t!4300 l!812))) key1!43)))))

(assert (=> d!9175 (isStrictlySorted!238 (t!4300 l!812))))

(assert (=> d!9175 (= (removeStrictlySorted!44 (t!4300 l!812) key1!43) lt!20350)))

(declare-fun b!46642 () Bool)

(assert (=> b!46642 (= e!29732 ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (t!4300 l!812)) key1!43) (h!1843 (t!4300 l!812))))))

(declare-fun b!46643 () Bool)

(assert (=> b!46643 (= e!29733 e!29732)))

(declare-fun c!6327 () Bool)

(assert (=> b!46643 (= c!6327 (and ((_ is Cons!1263) (t!4300 l!812)) (not (= (_1!869 (h!1843 (t!4300 l!812))) key1!43))))))

(declare-fun b!46644 () Bool)

(assert (=> b!46644 (= e!29733 (t!4300 (t!4300 l!812)))))

(assert (= (and d!9175 c!6328) b!46644))

(assert (= (and d!9175 (not c!6328)) b!46643))

(assert (= (and b!46643 c!6327) b!46642))

(assert (= (and b!46643 (not c!6327)) b!46641))

(assert (= (and d!9175 res!27202) b!46640))

(declare-fun m!40987 () Bool)

(assert (=> b!46640 m!40987))

(declare-fun m!40989 () Bool)

(assert (=> d!9175 m!40989))

(assert (=> d!9175 m!40819))

(declare-fun m!40991 () Bool)

(assert (=> b!46642 m!40991))

(assert (=> b!46642 m!40991))

(declare-fun m!40996 () Bool)

(assert (=> b!46642 m!40996))

(assert (=> b!46500 d!9175))

(declare-fun b!46650 () Bool)

(declare-fun e!29737 () Bool)

(declare-fun lt!20352 () List!1267)

(assert (=> b!46650 (= e!29737 (not (containsKey!90 lt!20352 key1!43)))))

(declare-fun b!46651 () Bool)

(declare-fun e!29738 () List!1267)

(assert (=> b!46651 (= e!29738 Nil!1264)))

(declare-fun d!9179 () Bool)

(assert (=> d!9179 e!29737))

(declare-fun res!27204 () Bool)

(assert (=> d!9179 (=> (not res!27204) (not e!29737))))

(assert (=> d!9179 (= res!27204 (isStrictlySorted!238 lt!20352))))

(declare-fun e!29739 () List!1267)

(assert (=> d!9179 (= lt!20352 e!29739)))

(declare-fun c!6332 () Bool)

(assert (=> d!9179 (= c!6332 (and ((_ is Cons!1263) (removeStrictlySorted!44 (t!4300 l!812) key2!27)) (= (_1!869 (h!1843 (removeStrictlySorted!44 (t!4300 l!812) key2!27))) key1!43)))))

(assert (=> d!9179 (isStrictlySorted!238 (removeStrictlySorted!44 (t!4300 l!812) key2!27))))

(assert (=> d!9179 (= (removeStrictlySorted!44 (removeStrictlySorted!44 (t!4300 l!812) key2!27) key1!43) lt!20352)))

(declare-fun b!46652 () Bool)

(assert (=> b!46652 (= e!29738 ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27)) key1!43) (h!1843 (removeStrictlySorted!44 (t!4300 l!812) key2!27))))))

(declare-fun b!46653 () Bool)

(assert (=> b!46653 (= e!29739 e!29738)))

(declare-fun c!6331 () Bool)

(assert (=> b!46653 (= c!6331 (and ((_ is Cons!1263) (removeStrictlySorted!44 (t!4300 l!812) key2!27)) (not (= (_1!869 (h!1843 (removeStrictlySorted!44 (t!4300 l!812) key2!27))) key1!43))))))

(declare-fun b!46654 () Bool)

(assert (=> b!46654 (= e!29739 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27)))))

(assert (= (and d!9179 c!6332) b!46654))

(assert (= (and d!9179 (not c!6332)) b!46653))

(assert (= (and b!46653 c!6331) b!46652))

(assert (= (and b!46653 (not c!6331)) b!46651))

(assert (= (and d!9179 res!27204) b!46650))

(declare-fun m!41003 () Bool)

(assert (=> b!46650 m!41003))

(declare-fun m!41005 () Bool)

(assert (=> d!9179 m!41005))

(assert (=> d!9179 m!40801))

(declare-fun m!41007 () Bool)

(assert (=> d!9179 m!41007))

(declare-fun m!41009 () Bool)

(assert (=> b!46652 m!41009))

(assert (=> b!46652 m!41009))

(declare-fun m!41015 () Bool)

(assert (=> b!46652 m!41015))

(assert (=> b!46500 d!9179))

(declare-fun b!46664 () Bool)

(declare-fun e!29747 () Bool)

(declare-fun lt!20354 () List!1267)

(assert (=> b!46664 (= e!29747 (not (containsKey!90 lt!20354 key2!27)))))

(declare-fun b!46665 () Bool)

(declare-fun e!29748 () List!1267)

(assert (=> b!46665 (= e!29748 Nil!1264)))

(declare-fun d!9183 () Bool)

(assert (=> d!9183 e!29747))

(declare-fun res!27210 () Bool)

(assert (=> d!9183 (=> (not res!27210) (not e!29747))))

(assert (=> d!9183 (= res!27210 (isStrictlySorted!238 lt!20354))))

(declare-fun e!29749 () List!1267)

(assert (=> d!9183 (= lt!20354 e!29749)))

(declare-fun c!6336 () Bool)

(assert (=> d!9183 (= c!6336 (and ((_ is Cons!1263) (t!4300 l!812)) (= (_1!869 (h!1843 (t!4300 l!812))) key2!27)))))

(assert (=> d!9183 (isStrictlySorted!238 (t!4300 l!812))))

(assert (=> d!9183 (= (removeStrictlySorted!44 (t!4300 l!812) key2!27) lt!20354)))

(declare-fun b!46666 () Bool)

(assert (=> b!46666 (= e!29748 ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (t!4300 l!812)) key2!27) (h!1843 (t!4300 l!812))))))

(declare-fun b!46667 () Bool)

(assert (=> b!46667 (= e!29749 e!29748)))

(declare-fun c!6335 () Bool)

(assert (=> b!46667 (= c!6335 (and ((_ is Cons!1263) (t!4300 l!812)) (not (= (_1!869 (h!1843 (t!4300 l!812))) key2!27))))))

(declare-fun b!46668 () Bool)

(assert (=> b!46668 (= e!29749 (t!4300 (t!4300 l!812)))))

(assert (= (and d!9183 c!6336) b!46668))

(assert (= (and d!9183 (not c!6336)) b!46667))

(assert (= (and b!46667 c!6335) b!46666))

(assert (= (and b!46667 (not c!6335)) b!46665))

(assert (= (and d!9183 res!27210) b!46664))

(declare-fun m!41023 () Bool)

(assert (=> b!46664 m!41023))

(declare-fun m!41025 () Bool)

(assert (=> d!9183 m!41025))

(assert (=> d!9183 m!40819))

(declare-fun m!41027 () Bool)

(assert (=> b!46666 m!41027))

(assert (=> b!46666 m!41027))

(declare-fun m!41031 () Bool)

(assert (=> b!46666 m!41031))

(assert (=> b!46500 d!9183))

(declare-fun b!46676 () Bool)

(declare-fun e!29755 () Bool)

(declare-fun lt!20356 () List!1267)

(assert (=> b!46676 (= e!29755 (not (containsKey!90 lt!20356 key2!27)))))

(declare-fun b!46677 () Bool)

(declare-fun e!29756 () List!1267)

(assert (=> b!46677 (= e!29756 Nil!1264)))

(declare-fun d!9187 () Bool)

(assert (=> d!9187 e!29755))

(declare-fun res!27214 () Bool)

(assert (=> d!9187 (=> (not res!27214) (not e!29755))))

(assert (=> d!9187 (= res!27214 (isStrictlySorted!238 lt!20356))))

(declare-fun e!29757 () List!1267)

(assert (=> d!9187 (= lt!20356 e!29757)))

(declare-fun c!6340 () Bool)

(assert (=> d!9187 (= c!6340 (and ((_ is Cons!1263) (removeStrictlySorted!44 l!812 key1!43)) (= (_1!869 (h!1843 (removeStrictlySorted!44 l!812 key1!43))) key2!27)))))

(assert (=> d!9187 (isStrictlySorted!238 (removeStrictlySorted!44 l!812 key1!43))))

(assert (=> d!9187 (= (removeStrictlySorted!44 (removeStrictlySorted!44 l!812 key1!43) key2!27) lt!20356)))

(declare-fun b!46678 () Bool)

(assert (=> b!46678 (= e!29756 ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 l!812 key1!43)) key2!27) (h!1843 (removeStrictlySorted!44 l!812 key1!43))))))

(declare-fun b!46679 () Bool)

(assert (=> b!46679 (= e!29757 e!29756)))

(declare-fun c!6339 () Bool)

(assert (=> b!46679 (= c!6339 (and ((_ is Cons!1263) (removeStrictlySorted!44 l!812 key1!43)) (not (= (_1!869 (h!1843 (removeStrictlySorted!44 l!812 key1!43))) key2!27))))))

(declare-fun b!46680 () Bool)

(assert (=> b!46680 (= e!29757 (t!4300 (removeStrictlySorted!44 l!812 key1!43)))))

(assert (= (and d!9187 c!6340) b!46680))

(assert (= (and d!9187 (not c!6340)) b!46679))

(assert (= (and b!46679 c!6339) b!46678))

(assert (= (and b!46679 (not c!6339)) b!46677))

(assert (= (and d!9187 res!27214) b!46676))

(declare-fun m!41041 () Bool)

(assert (=> b!46676 m!41041))

(declare-fun m!41043 () Bool)

(assert (=> d!9187 m!41043))

(assert (=> d!9187 m!40811))

(declare-fun m!41045 () Bool)

(assert (=> d!9187 m!41045))

(declare-fun m!41047 () Bool)

(assert (=> b!46678 m!41047))

(assert (=> b!46678 m!41047))

(declare-fun m!41051 () Bool)

(assert (=> b!46678 m!41051))

(assert (=> b!46500 d!9187))

(declare-fun b!46701 () Bool)

(declare-fun e!29770 () Bool)

(declare-fun tp!6151 () Bool)

(assert (=> b!46701 (= e!29770 (and tp_is_empty!1989 tp!6151))))

(assert (=> b!46501 (= tp!6140 e!29770)))

(assert (= (and b!46501 ((_ is Cons!1263) (t!4300 l!812))) b!46701))

(check-sat (not b!46650) (not b!46642) tp_is_empty!1989 (not d!9187) (not b!46585) (not b!46640) (not b!46587) (not b!46632) (not b!46701) (not b!46525) (not b!46630) (not d!9175) (not b!46527) (not b!46577) (not d!9151) (not b!46666) (not d!9155) (not d!9147) (not b!46652) (not b!46664) (not d!9179) (not b!46595) (not b!46678) (not b!46575) (not d!9183) (not d!9169) (not d!9137) (not b!46676) (not b!46597))
(check-sat)
(get-model)

(declare-fun d!9193 () Bool)

(declare-fun res!27222 () Bool)

(declare-fun e!29776 () Bool)

(assert (=> d!9193 (=> res!27222 e!29776)))

(assert (=> d!9193 (= res!27222 (and ((_ is Cons!1263) lt!20348) (= (_1!869 (h!1843 lt!20348)) key2!27)))))

(assert (=> d!9193 (= (containsKey!90 lt!20348 key2!27) e!29776)))

(declare-fun b!46707 () Bool)

(declare-fun e!29777 () Bool)

(assert (=> b!46707 (= e!29776 e!29777)))

(declare-fun res!27223 () Bool)

(assert (=> b!46707 (=> (not res!27223) (not e!29777))))

(assert (=> b!46707 (= res!27223 (and (or (not ((_ is Cons!1263) lt!20348)) (bvsle (_1!869 (h!1843 lt!20348)) key2!27)) ((_ is Cons!1263) lt!20348) (bvslt (_1!869 (h!1843 lt!20348)) key2!27)))))

(declare-fun b!46708 () Bool)

(assert (=> b!46708 (= e!29777 (containsKey!90 (t!4300 lt!20348) key2!27))))

(assert (= (and d!9193 (not res!27222)) b!46707))

(assert (= (and b!46707 res!27223) b!46708))

(declare-fun m!41061 () Bool)

(assert (=> b!46708 m!41061))

(assert (=> b!46630 d!9193))

(declare-fun d!9195 () Bool)

(declare-fun res!27224 () Bool)

(declare-fun e!29778 () Bool)

(assert (=> d!9195 (=> res!27224 e!29778)))

(assert (=> d!9195 (= res!27224 (and ((_ is Cons!1263) lt!20356) (= (_1!869 (h!1843 lt!20356)) key2!27)))))

(assert (=> d!9195 (= (containsKey!90 lt!20356 key2!27) e!29778)))

(declare-fun b!46709 () Bool)

(declare-fun e!29779 () Bool)

(assert (=> b!46709 (= e!29778 e!29779)))

(declare-fun res!27225 () Bool)

(assert (=> b!46709 (=> (not res!27225) (not e!29779))))

(assert (=> b!46709 (= res!27225 (and (or (not ((_ is Cons!1263) lt!20356)) (bvsle (_1!869 (h!1843 lt!20356)) key2!27)) ((_ is Cons!1263) lt!20356) (bvslt (_1!869 (h!1843 lt!20356)) key2!27)))))

(declare-fun b!46710 () Bool)

(assert (=> b!46710 (= e!29779 (containsKey!90 (t!4300 lt!20356) key2!27))))

(assert (= (and d!9195 (not res!27224)) b!46709))

(assert (= (and b!46709 res!27225) b!46710))

(declare-fun m!41063 () Bool)

(assert (=> b!46710 m!41063))

(assert (=> b!46676 d!9195))

(declare-fun d!9197 () Bool)

(declare-fun res!27226 () Bool)

(declare-fun e!29780 () Bool)

(assert (=> d!9197 (=> res!27226 e!29780)))

(assert (=> d!9197 (= res!27226 (or ((_ is Nil!1264) lt!20330) ((_ is Nil!1264) (t!4300 lt!20330))))))

(assert (=> d!9197 (= (isStrictlySorted!238 lt!20330) e!29780)))

(declare-fun b!46711 () Bool)

(declare-fun e!29781 () Bool)

(assert (=> b!46711 (= e!29780 e!29781)))

(declare-fun res!27227 () Bool)

(assert (=> b!46711 (=> (not res!27227) (not e!29781))))

(assert (=> b!46711 (= res!27227 (bvslt (_1!869 (h!1843 lt!20330)) (_1!869 (h!1843 (t!4300 lt!20330)))))))

(declare-fun b!46712 () Bool)

(assert (=> b!46712 (= e!29781 (isStrictlySorted!238 (t!4300 lt!20330)))))

(assert (= (and d!9197 (not res!27226)) b!46711))

(assert (= (and b!46711 res!27227) b!46712))

(declare-fun m!41065 () Bool)

(assert (=> b!46712 m!41065))

(assert (=> d!9147 d!9197))

(assert (=> d!9147 d!9131))

(declare-fun d!9199 () Bool)

(assert (=> d!9199 (= ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27)) key1!43) (h!1843 (removeStrictlySorted!44 (t!4300 l!812) key2!27))) (Cons!1263 (h!1843 (removeStrictlySorted!44 (t!4300 l!812) key2!27)) (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27)) key1!43)))))

(assert (=> b!46652 d!9199))

(declare-fun b!46713 () Bool)

(declare-fun e!29782 () Bool)

(declare-fun lt!20358 () List!1267)

(assert (=> b!46713 (= e!29782 (not (containsKey!90 lt!20358 key1!43)))))

(declare-fun b!46714 () Bool)

(declare-fun e!29783 () List!1267)

(assert (=> b!46714 (= e!29783 Nil!1264)))

(declare-fun d!9201 () Bool)

(assert (=> d!9201 e!29782))

(declare-fun res!27228 () Bool)

(assert (=> d!9201 (=> (not res!27228) (not e!29782))))

(assert (=> d!9201 (= res!27228 (isStrictlySorted!238 lt!20358))))

(declare-fun e!29784 () List!1267)

(assert (=> d!9201 (= lt!20358 e!29784)))

(declare-fun c!6344 () Bool)

(assert (=> d!9201 (= c!6344 (and ((_ is Cons!1263) (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27))) (= (_1!869 (h!1843 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27)))) key1!43)))))

(assert (=> d!9201 (isStrictlySorted!238 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27)))))

(assert (=> d!9201 (= (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27)) key1!43) lt!20358)))

(declare-fun b!46715 () Bool)

(assert (=> b!46715 (= e!29783 ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27))) key1!43) (h!1843 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27)))))))

(declare-fun b!46716 () Bool)

(assert (=> b!46716 (= e!29784 e!29783)))

(declare-fun c!6343 () Bool)

(assert (=> b!46716 (= c!6343 (and ((_ is Cons!1263) (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27))) (not (= (_1!869 (h!1843 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27)))) key1!43))))))

(declare-fun b!46717 () Bool)

(assert (=> b!46717 (= e!29784 (t!4300 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27))))))

(assert (= (and d!9201 c!6344) b!46717))

(assert (= (and d!9201 (not c!6344)) b!46716))

(assert (= (and b!46716 c!6343) b!46715))

(assert (= (and b!46716 (not c!6343)) b!46714))

(assert (= (and d!9201 res!27228) b!46713))

(declare-fun m!41067 () Bool)

(assert (=> b!46713 m!41067))

(declare-fun m!41069 () Bool)

(assert (=> d!9201 m!41069))

(declare-fun m!41071 () Bool)

(assert (=> d!9201 m!41071))

(declare-fun m!41073 () Bool)

(assert (=> b!46715 m!41073))

(assert (=> b!46715 m!41073))

(declare-fun m!41075 () Bool)

(assert (=> b!46715 m!41075))

(assert (=> b!46652 d!9201))

(assert (=> b!46525 d!9134))

(declare-fun d!9203 () Bool)

(declare-fun res!27229 () Bool)

(declare-fun e!29785 () Bool)

(assert (=> d!9203 (=> res!27229 e!29785)))

(assert (=> d!9203 (= res!27229 (or ((_ is Nil!1264) lt!20328) ((_ is Nil!1264) (t!4300 lt!20328))))))

(assert (=> d!9203 (= (isStrictlySorted!238 lt!20328) e!29785)))

(declare-fun b!46718 () Bool)

(declare-fun e!29786 () Bool)

(assert (=> b!46718 (= e!29785 e!29786)))

(declare-fun res!27230 () Bool)

(assert (=> b!46718 (=> (not res!27230) (not e!29786))))

(assert (=> b!46718 (= res!27230 (bvslt (_1!869 (h!1843 lt!20328)) (_1!869 (h!1843 (t!4300 lt!20328)))))))

(declare-fun b!46719 () Bool)

(assert (=> b!46719 (= e!29786 (isStrictlySorted!238 (t!4300 lt!20328)))))

(assert (= (and d!9203 (not res!27229)) b!46718))

(assert (= (and b!46718 res!27230) b!46719))

(declare-fun m!41077 () Bool)

(assert (=> b!46719 m!41077))

(assert (=> d!9137 d!9203))

(declare-fun d!9205 () Bool)

(declare-fun res!27231 () Bool)

(declare-fun e!29787 () Bool)

(assert (=> d!9205 (=> res!27231 e!29787)))

(assert (=> d!9205 (= res!27231 (or ((_ is Nil!1264) (removeStrictlySorted!44 l!812 key2!27)) ((_ is Nil!1264) (t!4300 (removeStrictlySorted!44 l!812 key2!27)))))))

(assert (=> d!9205 (= (isStrictlySorted!238 (removeStrictlySorted!44 l!812 key2!27)) e!29787)))

(declare-fun b!46720 () Bool)

(declare-fun e!29788 () Bool)

(assert (=> b!46720 (= e!29787 e!29788)))

(declare-fun res!27232 () Bool)

(assert (=> b!46720 (=> (not res!27232) (not e!29788))))

(assert (=> b!46720 (= res!27232 (bvslt (_1!869 (h!1843 (removeStrictlySorted!44 l!812 key2!27))) (_1!869 (h!1843 (t!4300 (removeStrictlySorted!44 l!812 key2!27))))))))

(declare-fun b!46721 () Bool)

(assert (=> b!46721 (= e!29788 (isStrictlySorted!238 (t!4300 (removeStrictlySorted!44 l!812 key2!27))))))

(assert (= (and d!9205 (not res!27231)) b!46720))

(assert (= (and b!46720 res!27232) b!46721))

(declare-fun m!41079 () Bool)

(assert (=> b!46721 m!41079))

(assert (=> d!9137 d!9205))

(declare-fun d!9207 () Bool)

(declare-fun res!27233 () Bool)

(declare-fun e!29789 () Bool)

(assert (=> d!9207 (=> res!27233 e!29789)))

(assert (=> d!9207 (= res!27233 (or ((_ is Nil!1264) lt!20352) ((_ is Nil!1264) (t!4300 lt!20352))))))

(assert (=> d!9207 (= (isStrictlySorted!238 lt!20352) e!29789)))

(declare-fun b!46722 () Bool)

(declare-fun e!29790 () Bool)

(assert (=> b!46722 (= e!29789 e!29790)))

(declare-fun res!27234 () Bool)

(assert (=> b!46722 (=> (not res!27234) (not e!29790))))

(assert (=> b!46722 (= res!27234 (bvslt (_1!869 (h!1843 lt!20352)) (_1!869 (h!1843 (t!4300 lt!20352)))))))

(declare-fun b!46723 () Bool)

(assert (=> b!46723 (= e!29790 (isStrictlySorted!238 (t!4300 lt!20352)))))

(assert (= (and d!9207 (not res!27233)) b!46722))

(assert (= (and b!46722 res!27234) b!46723))

(declare-fun m!41081 () Bool)

(assert (=> b!46723 m!41081))

(assert (=> d!9179 d!9207))

(declare-fun d!9209 () Bool)

(declare-fun res!27235 () Bool)

(declare-fun e!29791 () Bool)

(assert (=> d!9209 (=> res!27235 e!29791)))

(assert (=> d!9209 (= res!27235 (or ((_ is Nil!1264) (removeStrictlySorted!44 (t!4300 l!812) key2!27)) ((_ is Nil!1264) (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27)))))))

(assert (=> d!9209 (= (isStrictlySorted!238 (removeStrictlySorted!44 (t!4300 l!812) key2!27)) e!29791)))

(declare-fun b!46724 () Bool)

(declare-fun e!29792 () Bool)

(assert (=> b!46724 (= e!29791 e!29792)))

(declare-fun res!27236 () Bool)

(assert (=> b!46724 (=> (not res!27236) (not e!29792))))

(assert (=> b!46724 (= res!27236 (bvslt (_1!869 (h!1843 (removeStrictlySorted!44 (t!4300 l!812) key2!27))) (_1!869 (h!1843 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27))))))))

(declare-fun b!46725 () Bool)

(assert (=> b!46725 (= e!29792 (isStrictlySorted!238 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key2!27))))))

(assert (= (and d!9209 (not res!27235)) b!46724))

(assert (= (and b!46724 res!27236) b!46725))

(assert (=> b!46725 m!41071))

(assert (=> d!9179 d!9209))

(declare-fun d!9211 () Bool)

(declare-fun res!27237 () Bool)

(declare-fun e!29793 () Bool)

(assert (=> d!9211 (=> res!27237 e!29793)))

(assert (=> d!9211 (= res!27237 (or ((_ is Nil!1264) lt!20350) ((_ is Nil!1264) (t!4300 lt!20350))))))

(assert (=> d!9211 (= (isStrictlySorted!238 lt!20350) e!29793)))

(declare-fun b!46726 () Bool)

(declare-fun e!29794 () Bool)

(assert (=> b!46726 (= e!29793 e!29794)))

(declare-fun res!27238 () Bool)

(assert (=> b!46726 (=> (not res!27238) (not e!29794))))

(assert (=> b!46726 (= res!27238 (bvslt (_1!869 (h!1843 lt!20350)) (_1!869 (h!1843 (t!4300 lt!20350)))))))

(declare-fun b!46727 () Bool)

(assert (=> b!46727 (= e!29794 (isStrictlySorted!238 (t!4300 lt!20350)))))

(assert (= (and d!9211 (not res!27237)) b!46726))

(assert (= (and b!46726 res!27238) b!46727))

(declare-fun m!41083 () Bool)

(assert (=> b!46727 m!41083))

(assert (=> d!9175 d!9211))

(assert (=> d!9175 d!9134))

(declare-fun d!9213 () Bool)

(declare-fun res!27239 () Bool)

(declare-fun e!29795 () Bool)

(assert (=> d!9213 (=> res!27239 e!29795)))

(assert (=> d!9213 (= res!27239 (and ((_ is Cons!1263) lt!20328) (= (_1!869 (h!1843 lt!20328)) key1!43)))))

(assert (=> d!9213 (= (containsKey!90 lt!20328 key1!43) e!29795)))

(declare-fun b!46728 () Bool)

(declare-fun e!29796 () Bool)

(assert (=> b!46728 (= e!29795 e!29796)))

(declare-fun res!27240 () Bool)

(assert (=> b!46728 (=> (not res!27240) (not e!29796))))

(assert (=> b!46728 (= res!27240 (and (or (not ((_ is Cons!1263) lt!20328)) (bvsle (_1!869 (h!1843 lt!20328)) key1!43)) ((_ is Cons!1263) lt!20328) (bvslt (_1!869 (h!1843 lt!20328)) key1!43)))))

(declare-fun b!46729 () Bool)

(assert (=> b!46729 (= e!29796 (containsKey!90 (t!4300 lt!20328) key1!43))))

(assert (= (and d!9213 (not res!27239)) b!46728))

(assert (= (and b!46728 res!27240) b!46729))

(declare-fun m!41085 () Bool)

(assert (=> b!46729 m!41085))

(assert (=> b!46575 d!9213))

(declare-fun d!9215 () Bool)

(assert (=> d!9215 (= ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43)) key2!27) (h!1843 (removeStrictlySorted!44 (t!4300 l!812) key1!43))) (Cons!1263 (h!1843 (removeStrictlySorted!44 (t!4300 l!812) key1!43)) (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43)) key2!27)))))

(assert (=> b!46632 d!9215))

(declare-fun b!46730 () Bool)

(declare-fun e!29797 () Bool)

(declare-fun lt!20359 () List!1267)

(assert (=> b!46730 (= e!29797 (not (containsKey!90 lt!20359 key2!27)))))

(declare-fun b!46731 () Bool)

(declare-fun e!29798 () List!1267)

(assert (=> b!46731 (= e!29798 Nil!1264)))

(declare-fun d!9217 () Bool)

(assert (=> d!9217 e!29797))

(declare-fun res!27241 () Bool)

(assert (=> d!9217 (=> (not res!27241) (not e!29797))))

(assert (=> d!9217 (= res!27241 (isStrictlySorted!238 lt!20359))))

(declare-fun e!29799 () List!1267)

(assert (=> d!9217 (= lt!20359 e!29799)))

(declare-fun c!6346 () Bool)

(assert (=> d!9217 (= c!6346 (and ((_ is Cons!1263) (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43))) (= (_1!869 (h!1843 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43)))) key2!27)))))

(assert (=> d!9217 (isStrictlySorted!238 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43)))))

(assert (=> d!9217 (= (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43)) key2!27) lt!20359)))

(declare-fun b!46732 () Bool)

(assert (=> b!46732 (= e!29798 ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43))) key2!27) (h!1843 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43)))))))

(declare-fun b!46733 () Bool)

(assert (=> b!46733 (= e!29799 e!29798)))

(declare-fun c!6345 () Bool)

(assert (=> b!46733 (= c!6345 (and ((_ is Cons!1263) (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43))) (not (= (_1!869 (h!1843 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43)))) key2!27))))))

(declare-fun b!46734 () Bool)

(assert (=> b!46734 (= e!29799 (t!4300 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43))))))

(assert (= (and d!9217 c!6346) b!46734))

(assert (= (and d!9217 (not c!6346)) b!46733))

(assert (= (and b!46733 c!6345) b!46732))

(assert (= (and b!46733 (not c!6345)) b!46731))

(assert (= (and d!9217 res!27241) b!46730))

(declare-fun m!41087 () Bool)

(assert (=> b!46730 m!41087))

(declare-fun m!41089 () Bool)

(assert (=> d!9217 m!41089))

(declare-fun m!41091 () Bool)

(assert (=> d!9217 m!41091))

(declare-fun m!41093 () Bool)

(assert (=> b!46732 m!41093))

(assert (=> b!46732 m!41093))

(declare-fun m!41095 () Bool)

(assert (=> b!46732 m!41095))

(assert (=> b!46632 d!9217))

(declare-fun d!9219 () Bool)

(assert (=> d!9219 (= ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 l!812 key1!43)) key2!27) (h!1843 (removeStrictlySorted!44 l!812 key1!43))) (Cons!1263 (h!1843 (removeStrictlySorted!44 l!812 key1!43)) (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 l!812 key1!43)) key2!27)))))

(assert (=> b!46678 d!9219))

(declare-fun b!46735 () Bool)

(declare-fun e!29800 () Bool)

(declare-fun lt!20360 () List!1267)

(assert (=> b!46735 (= e!29800 (not (containsKey!90 lt!20360 key2!27)))))

(declare-fun b!46736 () Bool)

(declare-fun e!29801 () List!1267)

(assert (=> b!46736 (= e!29801 Nil!1264)))

(declare-fun d!9221 () Bool)

(assert (=> d!9221 e!29800))

(declare-fun res!27242 () Bool)

(assert (=> d!9221 (=> (not res!27242) (not e!29800))))

(assert (=> d!9221 (= res!27242 (isStrictlySorted!238 lt!20360))))

(declare-fun e!29802 () List!1267)

(assert (=> d!9221 (= lt!20360 e!29802)))

(declare-fun c!6348 () Bool)

(assert (=> d!9221 (= c!6348 (and ((_ is Cons!1263) (t!4300 (removeStrictlySorted!44 l!812 key1!43))) (= (_1!869 (h!1843 (t!4300 (removeStrictlySorted!44 l!812 key1!43)))) key2!27)))))

(assert (=> d!9221 (isStrictlySorted!238 (t!4300 (removeStrictlySorted!44 l!812 key1!43)))))

(assert (=> d!9221 (= (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 l!812 key1!43)) key2!27) lt!20360)))

(declare-fun b!46737 () Bool)

(assert (=> b!46737 (= e!29801 ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (t!4300 (removeStrictlySorted!44 l!812 key1!43))) key2!27) (h!1843 (t!4300 (removeStrictlySorted!44 l!812 key1!43)))))))

(declare-fun b!46738 () Bool)

(assert (=> b!46738 (= e!29802 e!29801)))

(declare-fun c!6347 () Bool)

(assert (=> b!46738 (= c!6347 (and ((_ is Cons!1263) (t!4300 (removeStrictlySorted!44 l!812 key1!43))) (not (= (_1!869 (h!1843 (t!4300 (removeStrictlySorted!44 l!812 key1!43)))) key2!27))))))

(declare-fun b!46739 () Bool)

(assert (=> b!46739 (= e!29802 (t!4300 (t!4300 (removeStrictlySorted!44 l!812 key1!43))))))

(assert (= (and d!9221 c!6348) b!46739))

(assert (= (and d!9221 (not c!6348)) b!46738))

(assert (= (and b!46738 c!6347) b!46737))

(assert (= (and b!46738 (not c!6347)) b!46736))

(assert (= (and d!9221 res!27242) b!46735))

(declare-fun m!41097 () Bool)

(assert (=> b!46735 m!41097))

(declare-fun m!41099 () Bool)

(assert (=> d!9221 m!41099))

(declare-fun m!41101 () Bool)

(assert (=> d!9221 m!41101))

(declare-fun m!41103 () Bool)

(assert (=> b!46737 m!41103))

(assert (=> b!46737 m!41103))

(declare-fun m!41105 () Bool)

(assert (=> b!46737 m!41105))

(assert (=> b!46678 d!9221))

(assert (=> d!9155 d!9134))

(declare-fun d!9223 () Bool)

(assert (=> d!9223 (= (removeStrictlySorted!44 (removeStrictlySorted!44 (t!4300 l!812) key1!43) key2!27) (removeStrictlySorted!44 (removeStrictlySorted!44 (t!4300 l!812) key2!27) key1!43))))

(assert (=> d!9223 true))

(declare-fun _$6!50 () Unit!1323)

(assert (=> d!9223 (= (choose!285 (t!4300 l!812) key1!43 key2!27) _$6!50)))

(declare-fun bs!2186 () Bool)

(assert (= bs!2186 d!9223))

(assert (=> bs!2186 m!40807))

(assert (=> bs!2186 m!40807))

(assert (=> bs!2186 m!40809))

(assert (=> bs!2186 m!40801))

(assert (=> bs!2186 m!40801))

(assert (=> bs!2186 m!40813))

(assert (=> d!9155 d!9223))

(assert (=> d!9155 d!9183))

(assert (=> d!9155 d!9169))

(assert (=> d!9155 d!9175))

(assert (=> d!9155 d!9179))

(declare-fun d!9225 () Bool)

(declare-fun res!27243 () Bool)

(declare-fun e!29803 () Bool)

(assert (=> d!9225 (=> res!27243 e!29803)))

(assert (=> d!9225 (= res!27243 (or ((_ is Nil!1264) lt!20334) ((_ is Nil!1264) (t!4300 lt!20334))))))

(assert (=> d!9225 (= (isStrictlySorted!238 lt!20334) e!29803)))

(declare-fun b!46740 () Bool)

(declare-fun e!29804 () Bool)

(assert (=> b!46740 (= e!29803 e!29804)))

(declare-fun res!27244 () Bool)

(assert (=> b!46740 (=> (not res!27244) (not e!29804))))

(assert (=> b!46740 (= res!27244 (bvslt (_1!869 (h!1843 lt!20334)) (_1!869 (h!1843 (t!4300 lt!20334)))))))

(declare-fun b!46741 () Bool)

(assert (=> b!46741 (= e!29804 (isStrictlySorted!238 (t!4300 lt!20334)))))

(assert (= (and d!9225 (not res!27243)) b!46740))

(assert (= (and b!46740 res!27244) b!46741))

(declare-fun m!41107 () Bool)

(assert (=> b!46741 m!41107))

(assert (=> d!9151 d!9225))

(assert (=> d!9151 d!9131))

(declare-fun d!9227 () Bool)

(declare-fun res!27245 () Bool)

(declare-fun e!29805 () Bool)

(assert (=> d!9227 (=> res!27245 e!29805)))

(assert (=> d!9227 (= res!27245 (or ((_ is Nil!1264) lt!20354) ((_ is Nil!1264) (t!4300 lt!20354))))))

(assert (=> d!9227 (= (isStrictlySorted!238 lt!20354) e!29805)))

(declare-fun b!46742 () Bool)

(declare-fun e!29806 () Bool)

(assert (=> b!46742 (= e!29805 e!29806)))

(declare-fun res!27246 () Bool)

(assert (=> b!46742 (=> (not res!27246) (not e!29806))))

(assert (=> b!46742 (= res!27246 (bvslt (_1!869 (h!1843 lt!20354)) (_1!869 (h!1843 (t!4300 lt!20354)))))))

(declare-fun b!46743 () Bool)

(assert (=> b!46743 (= e!29806 (isStrictlySorted!238 (t!4300 lt!20354)))))

(assert (= (and d!9227 (not res!27245)) b!46742))

(assert (= (and b!46742 res!27246) b!46743))

(declare-fun m!41109 () Bool)

(assert (=> b!46743 m!41109))

(assert (=> d!9183 d!9227))

(assert (=> d!9183 d!9134))

(declare-fun d!9229 () Bool)

(declare-fun res!27247 () Bool)

(declare-fun e!29807 () Bool)

(assert (=> d!9229 (=> res!27247 e!29807)))

(assert (=> d!9229 (= res!27247 (and ((_ is Cons!1263) lt!20330) (= (_1!869 (h!1843 lt!20330)) key1!43)))))

(assert (=> d!9229 (= (containsKey!90 lt!20330 key1!43) e!29807)))

(declare-fun b!46744 () Bool)

(declare-fun e!29808 () Bool)

(assert (=> b!46744 (= e!29807 e!29808)))

(declare-fun res!27248 () Bool)

(assert (=> b!46744 (=> (not res!27248) (not e!29808))))

(assert (=> b!46744 (= res!27248 (and (or (not ((_ is Cons!1263) lt!20330)) (bvsle (_1!869 (h!1843 lt!20330)) key1!43)) ((_ is Cons!1263) lt!20330) (bvslt (_1!869 (h!1843 lt!20330)) key1!43)))))

(declare-fun b!46745 () Bool)

(assert (=> b!46745 (= e!29808 (containsKey!90 (t!4300 lt!20330) key1!43))))

(assert (= (and d!9229 (not res!27247)) b!46744))

(assert (= (and b!46744 res!27248) b!46745))

(declare-fun m!41111 () Bool)

(assert (=> b!46745 m!41111))

(assert (=> b!46585 d!9229))

(declare-fun d!9231 () Bool)

(declare-fun res!27249 () Bool)

(declare-fun e!29809 () Bool)

(assert (=> d!9231 (=> res!27249 e!29809)))

(assert (=> d!9231 (= res!27249 (or ((_ is Nil!1264) lt!20348) ((_ is Nil!1264) (t!4300 lt!20348))))))

(assert (=> d!9231 (= (isStrictlySorted!238 lt!20348) e!29809)))

(declare-fun b!46746 () Bool)

(declare-fun e!29810 () Bool)

(assert (=> b!46746 (= e!29809 e!29810)))

(declare-fun res!27250 () Bool)

(assert (=> b!46746 (=> (not res!27250) (not e!29810))))

(assert (=> b!46746 (= res!27250 (bvslt (_1!869 (h!1843 lt!20348)) (_1!869 (h!1843 (t!4300 lt!20348)))))))

(declare-fun b!46747 () Bool)

(assert (=> b!46747 (= e!29810 (isStrictlySorted!238 (t!4300 lt!20348)))))

(assert (= (and d!9231 (not res!27249)) b!46746))

(assert (= (and b!46746 res!27250) b!46747))

(declare-fun m!41113 () Bool)

(assert (=> b!46747 m!41113))

(assert (=> d!9169 d!9231))

(declare-fun d!9233 () Bool)

(declare-fun res!27251 () Bool)

(declare-fun e!29811 () Bool)

(assert (=> d!9233 (=> res!27251 e!29811)))

(assert (=> d!9233 (= res!27251 (or ((_ is Nil!1264) (removeStrictlySorted!44 (t!4300 l!812) key1!43)) ((_ is Nil!1264) (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43)))))))

(assert (=> d!9233 (= (isStrictlySorted!238 (removeStrictlySorted!44 (t!4300 l!812) key1!43)) e!29811)))

(declare-fun b!46748 () Bool)

(declare-fun e!29812 () Bool)

(assert (=> b!46748 (= e!29811 e!29812)))

(declare-fun res!27252 () Bool)

(assert (=> b!46748 (=> (not res!27252) (not e!29812))))

(assert (=> b!46748 (= res!27252 (bvslt (_1!869 (h!1843 (removeStrictlySorted!44 (t!4300 l!812) key1!43))) (_1!869 (h!1843 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43))))))))

(declare-fun b!46749 () Bool)

(assert (=> b!46749 (= e!29812 (isStrictlySorted!238 (t!4300 (removeStrictlySorted!44 (t!4300 l!812) key1!43))))))

(assert (= (and d!9233 (not res!27251)) b!46748))

(assert (= (and b!46748 res!27252) b!46749))

(assert (=> b!46749 m!41091))

(assert (=> d!9169 d!9233))

(declare-fun d!9235 () Bool)

(declare-fun res!27253 () Bool)

(declare-fun e!29813 () Bool)

(assert (=> d!9235 (=> res!27253 e!29813)))

(assert (=> d!9235 (= res!27253 (or ((_ is Nil!1264) lt!20356) ((_ is Nil!1264) (t!4300 lt!20356))))))

(assert (=> d!9235 (= (isStrictlySorted!238 lt!20356) e!29813)))

(declare-fun b!46750 () Bool)

(declare-fun e!29814 () Bool)

(assert (=> b!46750 (= e!29813 e!29814)))

(declare-fun res!27254 () Bool)

(assert (=> b!46750 (=> (not res!27254) (not e!29814))))

(assert (=> b!46750 (= res!27254 (bvslt (_1!869 (h!1843 lt!20356)) (_1!869 (h!1843 (t!4300 lt!20356)))))))

(declare-fun b!46751 () Bool)

(assert (=> b!46751 (= e!29814 (isStrictlySorted!238 (t!4300 lt!20356)))))

(assert (= (and d!9235 (not res!27253)) b!46750))

(assert (= (and b!46750 res!27254) b!46751))

(declare-fun m!41115 () Bool)

(assert (=> b!46751 m!41115))

(assert (=> d!9187 d!9235))

(declare-fun d!9237 () Bool)

(declare-fun res!27255 () Bool)

(declare-fun e!29815 () Bool)

(assert (=> d!9237 (=> res!27255 e!29815)))

(assert (=> d!9237 (= res!27255 (or ((_ is Nil!1264) (removeStrictlySorted!44 l!812 key1!43)) ((_ is Nil!1264) (t!4300 (removeStrictlySorted!44 l!812 key1!43)))))))

(assert (=> d!9237 (= (isStrictlySorted!238 (removeStrictlySorted!44 l!812 key1!43)) e!29815)))

(declare-fun b!46752 () Bool)

(declare-fun e!29816 () Bool)

(assert (=> b!46752 (= e!29815 e!29816)))

(declare-fun res!27256 () Bool)

(assert (=> b!46752 (=> (not res!27256) (not e!29816))))

(assert (=> b!46752 (= res!27256 (bvslt (_1!869 (h!1843 (removeStrictlySorted!44 l!812 key1!43))) (_1!869 (h!1843 (t!4300 (removeStrictlySorted!44 l!812 key1!43))))))))

(declare-fun b!46753 () Bool)

(assert (=> b!46753 (= e!29816 (isStrictlySorted!238 (t!4300 (removeStrictlySorted!44 l!812 key1!43))))))

(assert (= (and d!9237 (not res!27255)) b!46752))

(assert (= (and b!46752 res!27256) b!46753))

(assert (=> b!46753 m!41101))

(assert (=> d!9187 d!9237))

(declare-fun d!9239 () Bool)

(declare-fun res!27257 () Bool)

(declare-fun e!29817 () Bool)

(assert (=> d!9239 (=> res!27257 e!29817)))

(assert (=> d!9239 (= res!27257 (or ((_ is Nil!1264) (t!4300 (t!4300 l!812))) ((_ is Nil!1264) (t!4300 (t!4300 (t!4300 l!812))))))))

(assert (=> d!9239 (= (isStrictlySorted!238 (t!4300 (t!4300 l!812))) e!29817)))

(declare-fun b!46754 () Bool)

(declare-fun e!29818 () Bool)

(assert (=> b!46754 (= e!29817 e!29818)))

(declare-fun res!27258 () Bool)

(assert (=> b!46754 (=> (not res!27258) (not e!29818))))

(assert (=> b!46754 (= res!27258 (bvslt (_1!869 (h!1843 (t!4300 (t!4300 l!812)))) (_1!869 (h!1843 (t!4300 (t!4300 (t!4300 l!812)))))))))

(declare-fun b!46755 () Bool)

(assert (=> b!46755 (= e!29818 (isStrictlySorted!238 (t!4300 (t!4300 (t!4300 l!812)))))))

(assert (= (and d!9239 (not res!27257)) b!46754))

(assert (= (and b!46754 res!27258) b!46755))

(declare-fun m!41117 () Bool)

(assert (=> b!46755 m!41117))

(assert (=> b!46527 d!9239))

(declare-fun d!9241 () Bool)

(assert (=> d!9241 (= ($colon$colon!44 (removeStrictlySorted!44 (t!4300 l!812) key1!43) (h!1843 l!812)) (Cons!1263 (h!1843 l!812) (removeStrictlySorted!44 (t!4300 l!812) key1!43)))))

(assert (=> b!46587 d!9241))

(assert (=> b!46587 d!9175))

(declare-fun d!9243 () Bool)

(assert (=> d!9243 (= ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 l!812 key2!27)) key1!43) (h!1843 (removeStrictlySorted!44 l!812 key2!27))) (Cons!1263 (h!1843 (removeStrictlySorted!44 l!812 key2!27)) (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 l!812 key2!27)) key1!43)))))

(assert (=> b!46577 d!9243))

(declare-fun b!46756 () Bool)

(declare-fun e!29819 () Bool)

(declare-fun lt!20361 () List!1267)

(assert (=> b!46756 (= e!29819 (not (containsKey!90 lt!20361 key1!43)))))

(declare-fun b!46757 () Bool)

(declare-fun e!29820 () List!1267)

(assert (=> b!46757 (= e!29820 Nil!1264)))

(declare-fun d!9245 () Bool)

(assert (=> d!9245 e!29819))

(declare-fun res!27259 () Bool)

(assert (=> d!9245 (=> (not res!27259) (not e!29819))))

(assert (=> d!9245 (= res!27259 (isStrictlySorted!238 lt!20361))))

(declare-fun e!29821 () List!1267)

(assert (=> d!9245 (= lt!20361 e!29821)))

(declare-fun c!6350 () Bool)

(assert (=> d!9245 (= c!6350 (and ((_ is Cons!1263) (t!4300 (removeStrictlySorted!44 l!812 key2!27))) (= (_1!869 (h!1843 (t!4300 (removeStrictlySorted!44 l!812 key2!27)))) key1!43)))))

(assert (=> d!9245 (isStrictlySorted!238 (t!4300 (removeStrictlySorted!44 l!812 key2!27)))))

(assert (=> d!9245 (= (removeStrictlySorted!44 (t!4300 (removeStrictlySorted!44 l!812 key2!27)) key1!43) lt!20361)))

(declare-fun b!46758 () Bool)

(assert (=> b!46758 (= e!29820 ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (t!4300 (removeStrictlySorted!44 l!812 key2!27))) key1!43) (h!1843 (t!4300 (removeStrictlySorted!44 l!812 key2!27)))))))

(declare-fun b!46759 () Bool)

(assert (=> b!46759 (= e!29821 e!29820)))

(declare-fun c!6349 () Bool)

(assert (=> b!46759 (= c!6349 (and ((_ is Cons!1263) (t!4300 (removeStrictlySorted!44 l!812 key2!27))) (not (= (_1!869 (h!1843 (t!4300 (removeStrictlySorted!44 l!812 key2!27)))) key1!43))))))

(declare-fun b!46760 () Bool)

(assert (=> b!46760 (= e!29821 (t!4300 (t!4300 (removeStrictlySorted!44 l!812 key2!27))))))

(assert (= (and d!9245 c!6350) b!46760))

(assert (= (and d!9245 (not c!6350)) b!46759))

(assert (= (and b!46759 c!6349) b!46758))

(assert (= (and b!46759 (not c!6349)) b!46757))

(assert (= (and d!9245 res!27259) b!46756))

(declare-fun m!41119 () Bool)

(assert (=> b!46756 m!41119))

(declare-fun m!41121 () Bool)

(assert (=> d!9245 m!41121))

(assert (=> d!9245 m!41079))

(declare-fun m!41123 () Bool)

(assert (=> b!46758 m!41123))

(assert (=> b!46758 m!41123))

(declare-fun m!41125 () Bool)

(assert (=> b!46758 m!41125))

(assert (=> b!46577 d!9245))

(declare-fun d!9247 () Bool)

(declare-fun res!27260 () Bool)

(declare-fun e!29822 () Bool)

(assert (=> d!9247 (=> res!27260 e!29822)))

(assert (=> d!9247 (= res!27260 (and ((_ is Cons!1263) lt!20350) (= (_1!869 (h!1843 lt!20350)) key1!43)))))

(assert (=> d!9247 (= (containsKey!90 lt!20350 key1!43) e!29822)))

(declare-fun b!46761 () Bool)

(declare-fun e!29823 () Bool)

(assert (=> b!46761 (= e!29822 e!29823)))

(declare-fun res!27261 () Bool)

(assert (=> b!46761 (=> (not res!27261) (not e!29823))))

(assert (=> b!46761 (= res!27261 (and (or (not ((_ is Cons!1263) lt!20350)) (bvsle (_1!869 (h!1843 lt!20350)) key1!43)) ((_ is Cons!1263) lt!20350) (bvslt (_1!869 (h!1843 lt!20350)) key1!43)))))

(declare-fun b!46762 () Bool)

(assert (=> b!46762 (= e!29823 (containsKey!90 (t!4300 lt!20350) key1!43))))

(assert (= (and d!9247 (not res!27260)) b!46761))

(assert (= (and b!46761 res!27261) b!46762))

(declare-fun m!41127 () Bool)

(assert (=> b!46762 m!41127))

(assert (=> b!46640 d!9247))

(declare-fun d!9249 () Bool)

(assert (=> d!9249 (= ($colon$colon!44 (removeStrictlySorted!44 (t!4300 l!812) key2!27) (h!1843 l!812)) (Cons!1263 (h!1843 l!812) (removeStrictlySorted!44 (t!4300 l!812) key2!27)))))

(assert (=> b!46597 d!9249))

(assert (=> b!46597 d!9183))

(declare-fun d!9251 () Bool)

(assert (=> d!9251 (= ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (t!4300 l!812)) key2!27) (h!1843 (t!4300 l!812))) (Cons!1263 (h!1843 (t!4300 l!812)) (removeStrictlySorted!44 (t!4300 (t!4300 l!812)) key2!27)))))

(assert (=> b!46666 d!9251))

(declare-fun b!46763 () Bool)

(declare-fun e!29824 () Bool)

(declare-fun lt!20362 () List!1267)

(assert (=> b!46763 (= e!29824 (not (containsKey!90 lt!20362 key2!27)))))

(declare-fun b!46764 () Bool)

(declare-fun e!29825 () List!1267)

(assert (=> b!46764 (= e!29825 Nil!1264)))

(declare-fun d!9253 () Bool)

(assert (=> d!9253 e!29824))

(declare-fun res!27262 () Bool)

(assert (=> d!9253 (=> (not res!27262) (not e!29824))))

(assert (=> d!9253 (= res!27262 (isStrictlySorted!238 lt!20362))))

(declare-fun e!29826 () List!1267)

(assert (=> d!9253 (= lt!20362 e!29826)))

(declare-fun c!6352 () Bool)

(assert (=> d!9253 (= c!6352 (and ((_ is Cons!1263) (t!4300 (t!4300 l!812))) (= (_1!869 (h!1843 (t!4300 (t!4300 l!812)))) key2!27)))))

(assert (=> d!9253 (isStrictlySorted!238 (t!4300 (t!4300 l!812)))))

(assert (=> d!9253 (= (removeStrictlySorted!44 (t!4300 (t!4300 l!812)) key2!27) lt!20362)))

(declare-fun b!46765 () Bool)

(assert (=> b!46765 (= e!29825 ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (t!4300 (t!4300 l!812))) key2!27) (h!1843 (t!4300 (t!4300 l!812)))))))

(declare-fun b!46766 () Bool)

(assert (=> b!46766 (= e!29826 e!29825)))

(declare-fun c!6351 () Bool)

(assert (=> b!46766 (= c!6351 (and ((_ is Cons!1263) (t!4300 (t!4300 l!812))) (not (= (_1!869 (h!1843 (t!4300 (t!4300 l!812)))) key2!27))))))

(declare-fun b!46767 () Bool)

(assert (=> b!46767 (= e!29826 (t!4300 (t!4300 (t!4300 l!812))))))

(assert (= (and d!9253 c!6352) b!46767))

(assert (= (and d!9253 (not c!6352)) b!46766))

(assert (= (and b!46766 c!6351) b!46765))

(assert (= (and b!46766 (not c!6351)) b!46764))

(assert (= (and d!9253 res!27262) b!46763))

(declare-fun m!41129 () Bool)

(assert (=> b!46763 m!41129))

(declare-fun m!41131 () Bool)

(assert (=> d!9253 m!41131))

(assert (=> d!9253 m!40845))

(declare-fun m!41133 () Bool)

(assert (=> b!46765 m!41133))

(assert (=> b!46765 m!41133))

(declare-fun m!41135 () Bool)

(assert (=> b!46765 m!41135))

(assert (=> b!46666 d!9253))

(declare-fun d!9255 () Bool)

(declare-fun res!27263 () Bool)

(declare-fun e!29827 () Bool)

(assert (=> d!9255 (=> res!27263 e!29827)))

(assert (=> d!9255 (= res!27263 (and ((_ is Cons!1263) lt!20352) (= (_1!869 (h!1843 lt!20352)) key1!43)))))

(assert (=> d!9255 (= (containsKey!90 lt!20352 key1!43) e!29827)))

(declare-fun b!46768 () Bool)

(declare-fun e!29828 () Bool)

(assert (=> b!46768 (= e!29827 e!29828)))

(declare-fun res!27264 () Bool)

(assert (=> b!46768 (=> (not res!27264) (not e!29828))))

(assert (=> b!46768 (= res!27264 (and (or (not ((_ is Cons!1263) lt!20352)) (bvsle (_1!869 (h!1843 lt!20352)) key1!43)) ((_ is Cons!1263) lt!20352) (bvslt (_1!869 (h!1843 lt!20352)) key1!43)))))

(declare-fun b!46769 () Bool)

(assert (=> b!46769 (= e!29828 (containsKey!90 (t!4300 lt!20352) key1!43))))

(assert (= (and d!9255 (not res!27263)) b!46768))

(assert (= (and b!46768 res!27264) b!46769))

(declare-fun m!41137 () Bool)

(assert (=> b!46769 m!41137))

(assert (=> b!46650 d!9255))

(declare-fun d!9257 () Bool)

(assert (=> d!9257 (= ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (t!4300 l!812)) key1!43) (h!1843 (t!4300 l!812))) (Cons!1263 (h!1843 (t!4300 l!812)) (removeStrictlySorted!44 (t!4300 (t!4300 l!812)) key1!43)))))

(assert (=> b!46642 d!9257))

(declare-fun b!46770 () Bool)

(declare-fun e!29829 () Bool)

(declare-fun lt!20363 () List!1267)

(assert (=> b!46770 (= e!29829 (not (containsKey!90 lt!20363 key1!43)))))

(declare-fun b!46771 () Bool)

(declare-fun e!29830 () List!1267)

(assert (=> b!46771 (= e!29830 Nil!1264)))

(declare-fun d!9259 () Bool)

(assert (=> d!9259 e!29829))

(declare-fun res!27265 () Bool)

(assert (=> d!9259 (=> (not res!27265) (not e!29829))))

(assert (=> d!9259 (= res!27265 (isStrictlySorted!238 lt!20363))))

(declare-fun e!29831 () List!1267)

(assert (=> d!9259 (= lt!20363 e!29831)))

(declare-fun c!6354 () Bool)

(assert (=> d!9259 (= c!6354 (and ((_ is Cons!1263) (t!4300 (t!4300 l!812))) (= (_1!869 (h!1843 (t!4300 (t!4300 l!812)))) key1!43)))))

(assert (=> d!9259 (isStrictlySorted!238 (t!4300 (t!4300 l!812)))))

(assert (=> d!9259 (= (removeStrictlySorted!44 (t!4300 (t!4300 l!812)) key1!43) lt!20363)))

(declare-fun b!46772 () Bool)

(assert (=> b!46772 (= e!29830 ($colon$colon!44 (removeStrictlySorted!44 (t!4300 (t!4300 (t!4300 l!812))) key1!43) (h!1843 (t!4300 (t!4300 l!812)))))))

(declare-fun b!46773 () Bool)

(assert (=> b!46773 (= e!29831 e!29830)))

(declare-fun c!6353 () Bool)

(assert (=> b!46773 (= c!6353 (and ((_ is Cons!1263) (t!4300 (t!4300 l!812))) (not (= (_1!869 (h!1843 (t!4300 (t!4300 l!812)))) key1!43))))))

(declare-fun b!46774 () Bool)

(assert (=> b!46774 (= e!29831 (t!4300 (t!4300 (t!4300 l!812))))))

(assert (= (and d!9259 c!6354) b!46774))

(assert (= (and d!9259 (not c!6354)) b!46773))

(assert (= (and b!46773 c!6353) b!46772))

(assert (= (and b!46773 (not c!6353)) b!46771))

(assert (= (and d!9259 res!27265) b!46770))

(declare-fun m!41139 () Bool)

(assert (=> b!46770 m!41139))

(declare-fun m!41141 () Bool)

(assert (=> d!9259 m!41141))

(assert (=> d!9259 m!40845))

(declare-fun m!41143 () Bool)

(assert (=> b!46772 m!41143))

(assert (=> b!46772 m!41143))

(declare-fun m!41145 () Bool)

(assert (=> b!46772 m!41145))

(assert (=> b!46642 d!9259))

(declare-fun d!9261 () Bool)

(declare-fun res!27266 () Bool)

(declare-fun e!29832 () Bool)

(assert (=> d!9261 (=> res!27266 e!29832)))

(assert (=> d!9261 (= res!27266 (and ((_ is Cons!1263) lt!20334) (= (_1!869 (h!1843 lt!20334)) key2!27)))))

(assert (=> d!9261 (= (containsKey!90 lt!20334 key2!27) e!29832)))

(declare-fun b!46775 () Bool)

(declare-fun e!29833 () Bool)

(assert (=> b!46775 (= e!29832 e!29833)))

(declare-fun res!27267 () Bool)

(assert (=> b!46775 (=> (not res!27267) (not e!29833))))

(assert (=> b!46775 (= res!27267 (and (or (not ((_ is Cons!1263) lt!20334)) (bvsle (_1!869 (h!1843 lt!20334)) key2!27)) ((_ is Cons!1263) lt!20334) (bvslt (_1!869 (h!1843 lt!20334)) key2!27)))))

(declare-fun b!46776 () Bool)

(assert (=> b!46776 (= e!29833 (containsKey!90 (t!4300 lt!20334) key2!27))))

(assert (= (and d!9261 (not res!27266)) b!46775))

(assert (= (and b!46775 res!27267) b!46776))

(declare-fun m!41147 () Bool)

(assert (=> b!46776 m!41147))

(assert (=> b!46595 d!9261))

(declare-fun d!9263 () Bool)

(declare-fun res!27268 () Bool)

(declare-fun e!29834 () Bool)

(assert (=> d!9263 (=> res!27268 e!29834)))

(assert (=> d!9263 (= res!27268 (and ((_ is Cons!1263) lt!20354) (= (_1!869 (h!1843 lt!20354)) key2!27)))))

(assert (=> d!9263 (= (containsKey!90 lt!20354 key2!27) e!29834)))

(declare-fun b!46777 () Bool)

(declare-fun e!29835 () Bool)

(assert (=> b!46777 (= e!29834 e!29835)))

(declare-fun res!27269 () Bool)

(assert (=> b!46777 (=> (not res!27269) (not e!29835))))

(assert (=> b!46777 (= res!27269 (and (or (not ((_ is Cons!1263) lt!20354)) (bvsle (_1!869 (h!1843 lt!20354)) key2!27)) ((_ is Cons!1263) lt!20354) (bvslt (_1!869 (h!1843 lt!20354)) key2!27)))))

(declare-fun b!46778 () Bool)

(assert (=> b!46778 (= e!29835 (containsKey!90 (t!4300 lt!20354) key2!27))))

(assert (= (and d!9263 (not res!27268)) b!46777))

(assert (= (and b!46777 res!27269) b!46778))

(declare-fun m!41149 () Bool)

(assert (=> b!46778 m!41149))

(assert (=> b!46664 d!9263))

(declare-fun b!46779 () Bool)

(declare-fun e!29836 () Bool)

(declare-fun tp!6153 () Bool)

(assert (=> b!46779 (= e!29836 (and tp_is_empty!1989 tp!6153))))

(assert (=> b!46701 (= tp!6151 e!29836)))

(assert (= (and b!46701 ((_ is Cons!1263) (t!4300 (t!4300 l!812)))) b!46779))

(check-sat (not b!46776) (not b!46762) (not b!46730) (not b!46772) (not d!9253) (not b!46745) (not b!46732) (not d!9245) (not b!46729) (not d!9217) (not b!46756) (not b!46769) (not b!46712) (not b!46778) (not b!46723) (not b!46735) (not b!46779) (not b!46751) (not b!46715) (not b!46708) (not b!46713) (not b!46710) tp_is_empty!1989 (not d!9259) (not d!9223) (not b!46721) (not b!46743) (not b!46719) (not b!46758) (not b!46749) (not b!46753) (not b!46727) (not b!46725) (not d!9201) (not b!46737) (not d!9221) (not b!46747) (not b!46741) (not b!46770) (not b!46755) (not b!46763) (not b!46765))
(check-sat)
