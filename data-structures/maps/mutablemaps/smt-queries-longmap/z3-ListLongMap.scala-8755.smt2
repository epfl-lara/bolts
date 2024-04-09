; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!106308 () Bool)

(assert start!106308)

(declare-fun b!1264607 () Bool)

(declare-fun e!720180 () Bool)

(declare-fun tp!96243 () Bool)

(assert (=> b!1264607 (= e!720180 tp!96243)))

(declare-fun res!842248 () Bool)

(declare-fun e!720181 () Bool)

(assert (=> start!106308 (=> (not res!842248) (not e!720181))))

(declare-datatypes ((B!1924 0))(
  ( (B!1925 (val!16297 Int)) )
))
(declare-datatypes ((tuple2!21262 0))(
  ( (tuple2!21263 (_1!10641 (_ BitVec 64)) (_2!10641 B!1924)) )
))
(declare-datatypes ((List!28464 0))(
  ( (Nil!28461) (Cons!28460 (h!29669 tuple2!21262) (t!41992 List!28464)) )
))
(declare-datatypes ((ListLongMap!19147 0))(
  ( (ListLongMap!19148 (toList!9589 List!28464)) )
))
(declare-fun lm!212 () ListLongMap!19147)

(declare-fun a1!67 () (_ BitVec 64))

(declare-fun contains!7647 (ListLongMap!19147 (_ BitVec 64)) Bool)

(assert (=> start!106308 (= res!842248 (not (contains!7647 lm!212 a1!67)))))

(assert (=> start!106308 e!720181))

(declare-fun inv!44089 (ListLongMap!19147) Bool)

(assert (=> start!106308 (and (inv!44089 lm!212) e!720180)))

(assert (=> start!106308 true))

(declare-fun tp_is_empty!32457 () Bool)

(assert (=> start!106308 tp_is_empty!32457))

(declare-fun b1!78 () B!1924)

(declare-fun b!1264606 () Bool)

(declare-fun -!2155 (ListLongMap!19147 (_ BitVec 64)) ListLongMap!19147)

(declare-fun +!4240 (ListLongMap!19147 tuple2!21262) ListLongMap!19147)

(assert (=> b!1264606 (= e!720181 (not (= (-!2155 (+!4240 lm!212 (tuple2!21263 a1!67 b1!78)) a1!67) lm!212)))))

(declare-fun removeStrictlySorted!148 (List!28464 (_ BitVec 64)) List!28464)

(declare-fun insertStrictlySorted!454 (List!28464 (_ BitVec 64) B!1924) List!28464)

(assert (=> b!1264606 (= (removeStrictlySorted!148 (insertStrictlySorted!454 (toList!9589 lm!212) a1!67 b1!78) a1!67) (toList!9589 lm!212))))

(declare-datatypes ((Unit!42113 0))(
  ( (Unit!42114) )
))
(declare-fun lt!573818 () Unit!42113)

(declare-fun lemmaInsertStrictlySortedThenRemoveIsSame!2 (List!28464 (_ BitVec 64) B!1924) Unit!42113)

(assert (=> b!1264606 (= lt!573818 (lemmaInsertStrictlySortedThenRemoveIsSame!2 (toList!9589 lm!212) a1!67 b1!78))))

(declare-fun b!1264604 () Bool)

(declare-fun res!842247 () Bool)

(assert (=> b!1264604 (=> (not res!842247) (not e!720181))))

(declare-fun isStrictlySorted!772 (List!28464) Bool)

(assert (=> b!1264604 (= res!842247 (isStrictlySorted!772 (toList!9589 lm!212)))))

(declare-fun b!1264605 () Bool)

(declare-fun res!842246 () Bool)

(assert (=> b!1264605 (=> (not res!842246) (not e!720181))))

(declare-fun containsKey!633 (List!28464 (_ BitVec 64)) Bool)

(assert (=> b!1264605 (= res!842246 (not (containsKey!633 (toList!9589 lm!212) a1!67)))))

(assert (= (and start!106308 res!842248) b!1264604))

(assert (= (and b!1264604 res!842247) b!1264605))

(assert (= (and b!1264605 res!842246) b!1264606))

(assert (= start!106308 b!1264607))

(declare-fun m!1165137 () Bool)

(assert (=> start!106308 m!1165137))

(declare-fun m!1165139 () Bool)

(assert (=> start!106308 m!1165139))

(declare-fun m!1165141 () Bool)

(assert (=> b!1264606 m!1165141))

(declare-fun m!1165143 () Bool)

(assert (=> b!1264606 m!1165143))

(declare-fun m!1165145 () Bool)

(assert (=> b!1264606 m!1165145))

(declare-fun m!1165147 () Bool)

(assert (=> b!1264606 m!1165147))

(assert (=> b!1264606 m!1165147))

(declare-fun m!1165149 () Bool)

(assert (=> b!1264606 m!1165149))

(assert (=> b!1264606 m!1165141))

(declare-fun m!1165151 () Bool)

(assert (=> b!1264604 m!1165151))

(declare-fun m!1165153 () Bool)

(assert (=> b!1264605 m!1165153))

(check-sat (not b!1264606) tp_is_empty!32457 (not start!106308) (not b!1264607) (not b!1264605) (not b!1264604))
(check-sat)
(get-model)

(declare-fun d!138701 () Bool)

(assert (=> d!138701 (= (removeStrictlySorted!148 (insertStrictlySorted!454 (toList!9589 lm!212) a1!67 b1!78) a1!67) (toList!9589 lm!212))))

(declare-fun lt!573827 () Unit!42113)

(declare-fun choose!1890 (List!28464 (_ BitVec 64) B!1924) Unit!42113)

(assert (=> d!138701 (= lt!573827 (choose!1890 (toList!9589 lm!212) a1!67 b1!78))))

(assert (=> d!138701 (isStrictlySorted!772 (toList!9589 lm!212))))

(assert (=> d!138701 (= (lemmaInsertStrictlySortedThenRemoveIsSame!2 (toList!9589 lm!212) a1!67 b1!78) lt!573827)))

(declare-fun bs!35780 () Bool)

(assert (= bs!35780 d!138701))

(assert (=> bs!35780 m!1165147))

(assert (=> bs!35780 m!1165147))

(assert (=> bs!35780 m!1165149))

(declare-fun m!1165177 () Bool)

(assert (=> bs!35780 m!1165177))

(assert (=> bs!35780 m!1165151))

(assert (=> b!1264606 d!138701))

(declare-fun b!1264664 () Bool)

(declare-fun e!720218 () List!28464)

(declare-fun e!720219 () List!28464)

(assert (=> b!1264664 (= e!720218 e!720219)))

(declare-fun c!123112 () Bool)

(get-info :version)

(assert (=> b!1264664 (= c!123112 (and ((_ is Cons!28460) (insertStrictlySorted!454 (toList!9589 lm!212) a1!67 b1!78)) (not (= (_1!10641 (h!29669 (insertStrictlySorted!454 (toList!9589 lm!212) a1!67 b1!78))) a1!67))))))

(declare-fun d!138707 () Bool)

(declare-fun e!720217 () Bool)

(assert (=> d!138707 e!720217))

(declare-fun res!842276 () Bool)

(assert (=> d!138707 (=> (not res!842276) (not e!720217))))

(declare-fun lt!573853 () List!28464)

(assert (=> d!138707 (= res!842276 (isStrictlySorted!772 lt!573853))))

(assert (=> d!138707 (= lt!573853 e!720218)))

(declare-fun c!123111 () Bool)

(assert (=> d!138707 (= c!123111 (and ((_ is Cons!28460) (insertStrictlySorted!454 (toList!9589 lm!212) a1!67 b1!78)) (= (_1!10641 (h!29669 (insertStrictlySorted!454 (toList!9589 lm!212) a1!67 b1!78))) a1!67)))))

(assert (=> d!138707 (isStrictlySorted!772 (insertStrictlySorted!454 (toList!9589 lm!212) a1!67 b1!78))))

(assert (=> d!138707 (= (removeStrictlySorted!148 (insertStrictlySorted!454 (toList!9589 lm!212) a1!67 b1!78) a1!67) lt!573853)))

(declare-fun b!1264665 () Bool)

(assert (=> b!1264665 (= e!720219 Nil!28461)))

(declare-fun b!1264666 () Bool)

(declare-fun $colon$colon!635 (List!28464 tuple2!21262) List!28464)

(assert (=> b!1264666 (= e!720219 ($colon$colon!635 (removeStrictlySorted!148 (t!41992 (insertStrictlySorted!454 (toList!9589 lm!212) a1!67 b1!78)) a1!67) (h!29669 (insertStrictlySorted!454 (toList!9589 lm!212) a1!67 b1!78))))))

(declare-fun b!1264667 () Bool)

(assert (=> b!1264667 (= e!720217 (not (containsKey!633 lt!573853 a1!67)))))

(declare-fun b!1264668 () Bool)

(assert (=> b!1264668 (= e!720218 (t!41992 (insertStrictlySorted!454 (toList!9589 lm!212) a1!67 b1!78)))))

(assert (= (and d!138707 c!123111) b!1264668))

(assert (= (and d!138707 (not c!123111)) b!1264664))

(assert (= (and b!1264664 c!123112) b!1264666))

(assert (= (and b!1264664 (not c!123112)) b!1264665))

(assert (= (and d!138707 res!842276) b!1264667))

(declare-fun m!1165195 () Bool)

(assert (=> d!138707 m!1165195))

(assert (=> d!138707 m!1165147))

(declare-fun m!1165197 () Bool)

(assert (=> d!138707 m!1165197))

(declare-fun m!1165199 () Bool)

(assert (=> b!1264666 m!1165199))

(assert (=> b!1264666 m!1165199))

(declare-fun m!1165201 () Bool)

(assert (=> b!1264666 m!1165201))

(declare-fun m!1165203 () Bool)

(assert (=> b!1264667 m!1165203))

(assert (=> b!1264606 d!138707))

(declare-fun d!138713 () Bool)

(declare-fun e!720237 () Bool)

(assert (=> d!138713 e!720237))

(declare-fun res!842290 () Bool)

(assert (=> d!138713 (=> (not res!842290) (not e!720237))))

(declare-fun lt!573876 () ListLongMap!19147)

(assert (=> d!138713 (= res!842290 (contains!7647 lt!573876 (_1!10641 (tuple2!21263 a1!67 b1!78))))))

(declare-fun lt!573874 () List!28464)

(assert (=> d!138713 (= lt!573876 (ListLongMap!19148 lt!573874))))

(declare-fun lt!573875 () Unit!42113)

(declare-fun lt!573877 () Unit!42113)

(assert (=> d!138713 (= lt!573875 lt!573877)))

(declare-datatypes ((Option!730 0))(
  ( (Some!729 (v!19004 B!1924)) (None!728) )
))
(declare-fun getValueByKey!679 (List!28464 (_ BitVec 64)) Option!730)

(assert (=> d!138713 (= (getValueByKey!679 lt!573874 (_1!10641 (tuple2!21263 a1!67 b1!78))) (Some!729 (_2!10641 (tuple2!21263 a1!67 b1!78))))))

(declare-fun lemmaContainsTupThenGetReturnValue!341 (List!28464 (_ BitVec 64) B!1924) Unit!42113)

(assert (=> d!138713 (= lt!573877 (lemmaContainsTupThenGetReturnValue!341 lt!573874 (_1!10641 (tuple2!21263 a1!67 b1!78)) (_2!10641 (tuple2!21263 a1!67 b1!78))))))

(assert (=> d!138713 (= lt!573874 (insertStrictlySorted!454 (toList!9589 lm!212) (_1!10641 (tuple2!21263 a1!67 b1!78)) (_2!10641 (tuple2!21263 a1!67 b1!78))))))

(assert (=> d!138713 (= (+!4240 lm!212 (tuple2!21263 a1!67 b1!78)) lt!573876)))

(declare-fun b!1264697 () Bool)

(declare-fun res!842289 () Bool)

(assert (=> b!1264697 (=> (not res!842289) (not e!720237))))

(assert (=> b!1264697 (= res!842289 (= (getValueByKey!679 (toList!9589 lt!573876) (_1!10641 (tuple2!21263 a1!67 b1!78))) (Some!729 (_2!10641 (tuple2!21263 a1!67 b1!78)))))))

(declare-fun b!1264698 () Bool)

(declare-fun contains!7650 (List!28464 tuple2!21262) Bool)

(assert (=> b!1264698 (= e!720237 (contains!7650 (toList!9589 lt!573876) (tuple2!21263 a1!67 b1!78)))))

(assert (= (and d!138713 res!842290) b!1264697))

(assert (= (and b!1264697 res!842289) b!1264698))

(declare-fun m!1165225 () Bool)

(assert (=> d!138713 m!1165225))

(declare-fun m!1165227 () Bool)

(assert (=> d!138713 m!1165227))

(declare-fun m!1165229 () Bool)

(assert (=> d!138713 m!1165229))

(declare-fun m!1165231 () Bool)

(assert (=> d!138713 m!1165231))

(declare-fun m!1165233 () Bool)

(assert (=> b!1264697 m!1165233))

(declare-fun m!1165235 () Bool)

(assert (=> b!1264698 m!1165235))

(assert (=> b!1264606 d!138713))

(declare-fun d!138725 () Bool)

(declare-fun lt!573883 () ListLongMap!19147)

(assert (=> d!138725 (not (contains!7647 lt!573883 a1!67))))

(assert (=> d!138725 (= lt!573883 (ListLongMap!19148 (removeStrictlySorted!148 (toList!9589 (+!4240 lm!212 (tuple2!21263 a1!67 b1!78))) a1!67)))))

(assert (=> d!138725 (= (-!2155 (+!4240 lm!212 (tuple2!21263 a1!67 b1!78)) a1!67) lt!573883)))

(declare-fun bs!35784 () Bool)

(assert (= bs!35784 d!138725))

(declare-fun m!1165247 () Bool)

(assert (=> bs!35784 m!1165247))

(declare-fun m!1165249 () Bool)

(assert (=> bs!35784 m!1165249))

(assert (=> b!1264606 d!138725))

(declare-fun bm!62341 () Bool)

(declare-fun call!62345 () List!28464)

(declare-fun call!62344 () List!28464)

(assert (=> bm!62341 (= call!62345 call!62344)))

(declare-fun b!1264780 () Bool)

(declare-fun e!720290 () List!28464)

(assert (=> b!1264780 (= e!720290 call!62345)))

(declare-fun e!720291 () List!28464)

(declare-fun b!1264781 () Bool)

(assert (=> b!1264781 (= e!720291 (insertStrictlySorted!454 (t!41992 (toList!9589 lm!212)) a1!67 b1!78))))

(declare-fun lt!573914 () List!28464)

(declare-fun b!1264782 () Bool)

(declare-fun e!720292 () Bool)

(assert (=> b!1264782 (= e!720292 (contains!7650 lt!573914 (tuple2!21263 a1!67 b1!78)))))

(declare-fun b!1264783 () Bool)

(declare-fun c!123142 () Bool)

(assert (=> b!1264783 (= c!123142 (and ((_ is Cons!28460) (toList!9589 lm!212)) (bvsgt (_1!10641 (h!29669 (toList!9589 lm!212))) a1!67)))))

(declare-fun e!720288 () List!28464)

(assert (=> b!1264783 (= e!720290 e!720288)))

(declare-fun b!1264784 () Bool)

(declare-fun c!123145 () Bool)

(assert (=> b!1264784 (= e!720291 (ite c!123145 (t!41992 (toList!9589 lm!212)) (ite c!123142 (Cons!28460 (h!29669 (toList!9589 lm!212)) (t!41992 (toList!9589 lm!212))) Nil!28461)))))

(declare-fun bm!62342 () Bool)

(declare-fun call!62346 () List!28464)

(assert (=> bm!62342 (= call!62346 call!62345)))

(declare-fun b!1264785 () Bool)

(declare-fun e!720289 () List!28464)

(assert (=> b!1264785 (= e!720289 e!720290)))

(assert (=> b!1264785 (= c!123145 (and ((_ is Cons!28460) (toList!9589 lm!212)) (= (_1!10641 (h!29669 (toList!9589 lm!212))) a1!67)))))

(declare-fun b!1264786 () Bool)

(assert (=> b!1264786 (= e!720288 call!62346)))

(declare-fun b!1264787 () Bool)

(assert (=> b!1264787 (= e!720288 call!62346)))

(declare-fun b!1264788 () Bool)

(declare-fun res!842325 () Bool)

(assert (=> b!1264788 (=> (not res!842325) (not e!720292))))

(assert (=> b!1264788 (= res!842325 (containsKey!633 lt!573914 a1!67))))

(declare-fun b!1264789 () Bool)

(assert (=> b!1264789 (= e!720289 call!62344)))

(declare-fun d!138729 () Bool)

(assert (=> d!138729 e!720292))

(declare-fun res!842326 () Bool)

(assert (=> d!138729 (=> (not res!842326) (not e!720292))))

(assert (=> d!138729 (= res!842326 (isStrictlySorted!772 lt!573914))))

(assert (=> d!138729 (= lt!573914 e!720289)))

(declare-fun c!123143 () Bool)

(assert (=> d!138729 (= c!123143 (and ((_ is Cons!28460) (toList!9589 lm!212)) (bvslt (_1!10641 (h!29669 (toList!9589 lm!212))) a1!67)))))

(assert (=> d!138729 (isStrictlySorted!772 (toList!9589 lm!212))))

