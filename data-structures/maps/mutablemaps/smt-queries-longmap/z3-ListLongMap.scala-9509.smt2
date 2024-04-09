; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!112842 () Bool)

(assert start!112842)

(declare-fun b_free!31059 () Bool)

(declare-fun b_next!31059 () Bool)

(assert (=> start!112842 (= b_free!31059 (not b_next!31059))))

(declare-fun tp!108826 () Bool)

(declare-fun b_and!50075 () Bool)

(assert (=> start!112842 (= tp!108826 b_and!50075)))

(declare-fun b!1337840 () Bool)

(declare-fun res!887839 () Bool)

(declare-fun e!761796 () Bool)

(assert (=> b!1337840 (=> (not res!887839) (not e!761796))))

(declare-datatypes ((V!54395 0))(
  ( (V!54396 (val!18559 Int)) )
))
(declare-datatypes ((ValueCell!17586 0))(
  ( (ValueCellFull!17586 (v!21201 V!54395)) (EmptyCell!17586) )
))
(declare-datatypes ((array!90771 0))(
  ( (array!90772 (arr!43844 (Array (_ BitVec 32) ValueCell!17586)) (size!44395 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90771)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-datatypes ((array!90773 0))(
  ( (array!90774 (arr!43845 (Array (_ BitVec 32) (_ BitVec 64))) (size!44396 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90773)

(declare-fun extraKeys!1241 () (_ BitVec 32))

(assert (=> b!1337840 (= res!887839 (and (= (size!44395 _values!1320) (bvadd #b00000000000000000000000000000001 mask!1998)) (= (size!44396 _keys!1590) (size!44395 _values!1320)) (bvsge mask!1998 #b00000000000000000000000000000000) (bvsge extraKeys!1241 #b00000000000000000000000000000000) (bvsle extraKeys!1241 #b00000000000000000000000000000011)))))

(declare-fun b!1337841 () Bool)

(declare-fun e!761794 () Bool)

(assert (=> b!1337841 (= e!761796 e!761794)))

(declare-fun res!887835 () Bool)

(assert (=> b!1337841 (=> (not res!887835) (not e!761794))))

(declare-datatypes ((tuple2!24088 0))(
  ( (tuple2!24089 (_1!12054 (_ BitVec 64)) (_2!12054 V!54395)) )
))
(declare-datatypes ((List!31254 0))(
  ( (Nil!31251) (Cons!31250 (h!32459 tuple2!24088) (t!45589 List!31254)) )
))
(declare-datatypes ((ListLongMap!21757 0))(
  ( (ListLongMap!21758 (toList!10894 List!31254)) )
))
(declare-fun lt!593286 () ListLongMap!21757)

(declare-fun from!1980 () (_ BitVec 32))

(declare-fun k0!1153 () (_ BitVec 64))

(declare-fun lt!593284 () V!54395)

(declare-fun contains!8999 (ListLongMap!21757 (_ BitVec 64)) Bool)

(declare-fun +!4723 (ListLongMap!21757 tuple2!24088) ListLongMap!21757)

(assert (=> b!1337841 (= res!887835 (contains!8999 (+!4723 lt!593286 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284)) k0!1153))))

(declare-fun defaultEntry!1323 () Int)

(declare-fun minValue!1262 () V!54395)

(declare-fun zeroValue!1262 () V!54395)

(declare-fun getCurrentListMapNoExtraKeys!6446 (array!90773 array!90771 (_ BitVec 32) (_ BitVec 32) V!54395 V!54395 (_ BitVec 32) Int) ListLongMap!21757)

(assert (=> b!1337841 (= lt!593286 (getCurrentListMapNoExtraKeys!6446 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun get!22169 (ValueCell!17586 V!54395) V!54395)

(declare-fun dynLambda!3760 (Int (_ BitVec 64)) V!54395)

(assert (=> b!1337841 (= lt!593284 (get!22169 (select (arr!43844 _values!1320) from!1980) (dynLambda!3760 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun mapNonEmpty!57138 () Bool)

(declare-fun mapRes!57138 () Bool)

(declare-fun tp!108825 () Bool)

(declare-fun e!761798 () Bool)

(assert (=> mapNonEmpty!57138 (= mapRes!57138 (and tp!108825 e!761798))))

(declare-fun mapValue!57138 () ValueCell!17586)

(declare-fun mapRest!57138 () (Array (_ BitVec 32) ValueCell!17586))

(declare-fun mapKey!57138 () (_ BitVec 32))

(assert (=> mapNonEmpty!57138 (= (arr!43844 _values!1320) (store mapRest!57138 mapKey!57138 mapValue!57138))))

(declare-fun b!1337843 () Bool)

(declare-fun res!887842 () Bool)

(assert (=> b!1337843 (=> (not res!887842) (not e!761796))))

(declare-datatypes ((List!31255 0))(
  ( (Nil!31252) (Cons!31251 (h!32460 (_ BitVec 64)) (t!45590 List!31255)) )
))
(declare-fun arrayNoDuplicates!0 (array!90773 (_ BitVec 32) List!31255) Bool)

(assert (=> b!1337843 (= res!887842 (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31252))))

(declare-fun b!1337844 () Bool)

(declare-fun res!887834 () Bool)

(assert (=> b!1337844 (=> (not res!887834) (not e!761796))))

(assert (=> b!1337844 (= res!887834 (and (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44396 _keys!1590)) (not (= k0!1153 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1153 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1337845 () Bool)

(declare-fun res!887843 () Bool)

(assert (=> b!1337845 (=> (not res!887843) (not e!761796))))

(assert (=> b!1337845 (= res!887843 (not (= (select (arr!43845 _keys!1590) from!1980) k0!1153)))))

(declare-fun b!1337846 () Bool)

(declare-fun res!887841 () Bool)

(assert (=> b!1337846 (=> (not res!887841) (not e!761796))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1337846 (= res!887841 (validKeyInArray!0 (select (arr!43845 _keys!1590) from!1980)))))

(declare-fun b!1337847 () Bool)

(declare-fun res!887838 () Bool)

(assert (=> b!1337847 (=> (not res!887838) (not e!761794))))

(assert (=> b!1337847 (= res!887838 (not (= k0!1153 (select (arr!43845 _keys!1590) from!1980))))))

(declare-fun b!1337848 () Bool)

(declare-fun getCurrentListMap!5798 (array!90773 array!90771 (_ BitVec 32) (_ BitVec 32) V!54395 V!54395 (_ BitVec 32) Int) ListLongMap!21757)

(assert (=> b!1337848 (= e!761794 (not (contains!8999 (getCurrentListMap!5798 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) k0!1153)))))

(assert (=> b!1337848 (contains!8999 lt!593286 k0!1153)))

(declare-datatypes ((Unit!43889 0))(
  ( (Unit!43890) )
))
(declare-fun lt!593285 () Unit!43889)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!318 ((_ BitVec 64) (_ BitVec 64) V!54395 ListLongMap!21757) Unit!43889)

(assert (=> b!1337848 (= lt!593285 (lemmaInListMapAfterAddingDiffThenInBefore!318 k0!1153 (select (arr!43845 _keys!1590) from!1980) lt!593284 lt!593286))))

(declare-fun b!1337849 () Bool)

(declare-fun res!887836 () Bool)

(assert (=> b!1337849 (=> (not res!887836) (not e!761796))))

(assert (=> b!1337849 (= res!887836 (contains!8999 (getCurrentListMap!5798 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153))))

(declare-fun b!1337850 () Bool)

(declare-fun tp_is_empty!36969 () Bool)

(assert (=> b!1337850 (= e!761798 tp_is_empty!36969)))

(declare-fun b!1337851 () Bool)

(declare-fun res!887844 () Bool)

(assert (=> b!1337851 (=> (not res!887844) (not e!761796))))

(assert (=> b!1337851 (= res!887844 (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!57138 () Bool)

(assert (=> mapIsEmpty!57138 mapRes!57138))

(declare-fun b!1337852 () Bool)

(declare-fun e!761795 () Bool)

(assert (=> b!1337852 (= e!761795 tp_is_empty!36969)))

(declare-fun b!1337853 () Bool)

(declare-fun res!887837 () Bool)

(assert (=> b!1337853 (=> (not res!887837) (not e!761796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90773 (_ BitVec 32)) Bool)

(assert (=> b!1337853 (= res!887837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun res!887840 () Bool)

(assert (=> start!112842 (=> (not res!887840) (not e!761796))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!112842 (= res!887840 (validMask!0 mask!1998))))

(assert (=> start!112842 e!761796))

(declare-fun e!761793 () Bool)

(declare-fun array_inv!32991 (array!90771) Bool)

(assert (=> start!112842 (and (array_inv!32991 _values!1320) e!761793)))

(assert (=> start!112842 true))

(declare-fun array_inv!32992 (array!90773) Bool)

(assert (=> start!112842 (array_inv!32992 _keys!1590)))

(assert (=> start!112842 tp!108826))

(assert (=> start!112842 tp_is_empty!36969))

(declare-fun b!1337842 () Bool)

(assert (=> b!1337842 (= e!761793 (and e!761795 mapRes!57138))))

(declare-fun condMapEmpty!57138 () Bool)

(declare-fun mapDefault!57138 () ValueCell!17586)

(assert (=> b!1337842 (= condMapEmpty!57138 (= (arr!43844 _values!1320) ((as const (Array (_ BitVec 32) ValueCell!17586)) mapDefault!57138)))))

(assert (= (and start!112842 res!887840) b!1337840))

(assert (= (and b!1337840 res!887839) b!1337853))

(assert (= (and b!1337853 res!887837) b!1337843))

(assert (= (and b!1337843 res!887842) b!1337844))

(assert (= (and b!1337844 res!887834) b!1337849))

(assert (= (and b!1337849 res!887836) b!1337845))

(assert (= (and b!1337845 res!887843) b!1337846))

(assert (= (and b!1337846 res!887841) b!1337851))

(assert (= (and b!1337851 res!887844) b!1337841))

(assert (= (and b!1337841 res!887835) b!1337847))

(assert (= (and b!1337847 res!887838) b!1337848))

(assert (= (and b!1337842 condMapEmpty!57138) mapIsEmpty!57138))

(assert (= (and b!1337842 (not condMapEmpty!57138)) mapNonEmpty!57138))

(get-info :version)

(assert (= (and mapNonEmpty!57138 ((_ is ValueCellFull!17586) mapValue!57138)) b!1337850))

(assert (= (and b!1337842 ((_ is ValueCellFull!17586) mapDefault!57138)) b!1337852))

(assert (= start!112842 b!1337842))

(declare-fun b_lambda!24263 () Bool)

(assert (=> (not b_lambda!24263) (not b!1337841)))

(declare-fun t!45588 () Bool)

(declare-fun tb!12139 () Bool)

(assert (=> (and start!112842 (= defaultEntry!1323 defaultEntry!1323) t!45588) tb!12139))

(declare-fun result!25347 () Bool)

(assert (=> tb!12139 (= result!25347 tp_is_empty!36969)))

(assert (=> b!1337841 t!45588))

(declare-fun b_and!50077 () Bool)

(assert (= b_and!50075 (and (=> t!45588 result!25347) b_and!50077)))

(declare-fun m!1226017 () Bool)

(assert (=> b!1337845 m!1226017))

(declare-fun m!1226019 () Bool)

(assert (=> b!1337843 m!1226019))

(declare-fun m!1226021 () Bool)

(assert (=> b!1337848 m!1226021))

(declare-fun m!1226023 () Bool)

(assert (=> b!1337848 m!1226023))

(assert (=> b!1337848 m!1226017))

(declare-fun m!1226025 () Bool)

(assert (=> b!1337848 m!1226025))

(assert (=> b!1337848 m!1226021))

(declare-fun m!1226027 () Bool)

(assert (=> b!1337848 m!1226027))

(assert (=> b!1337848 m!1226017))

(declare-fun m!1226029 () Bool)

(assert (=> start!112842 m!1226029))

(declare-fun m!1226031 () Bool)

(assert (=> start!112842 m!1226031))

(declare-fun m!1226033 () Bool)

(assert (=> start!112842 m!1226033))

(declare-fun m!1226035 () Bool)

(assert (=> b!1337849 m!1226035))

(assert (=> b!1337849 m!1226035))

(declare-fun m!1226037 () Bool)

(assert (=> b!1337849 m!1226037))

(assert (=> b!1337847 m!1226017))

(declare-fun m!1226039 () Bool)

(assert (=> mapNonEmpty!57138 m!1226039))

(declare-fun m!1226041 () Bool)

(assert (=> b!1337841 m!1226041))

(declare-fun m!1226043 () Bool)

(assert (=> b!1337841 m!1226043))

(assert (=> b!1337841 m!1226041))

(declare-fun m!1226045 () Bool)

(assert (=> b!1337841 m!1226045))

(declare-fun m!1226047 () Bool)

(assert (=> b!1337841 m!1226047))

(declare-fun m!1226049 () Bool)

(assert (=> b!1337841 m!1226049))

(assert (=> b!1337841 m!1226043))

(assert (=> b!1337841 m!1226047))

(declare-fun m!1226051 () Bool)

(assert (=> b!1337841 m!1226051))

(assert (=> b!1337841 m!1226017))

(declare-fun m!1226053 () Bool)

(assert (=> b!1337853 m!1226053))

(assert (=> b!1337846 m!1226017))

(assert (=> b!1337846 m!1226017))

(declare-fun m!1226055 () Bool)

(assert (=> b!1337846 m!1226055))

(check-sat (not mapNonEmpty!57138) (not b_lambda!24263) (not b!1337846) (not b!1337843) (not b!1337853) (not b_next!31059) (not b!1337849) (not b!1337841) tp_is_empty!36969 b_and!50077 (not start!112842) (not b!1337848))
(check-sat b_and!50077 (not b_next!31059))
(get-model)

(declare-fun b_lambda!24267 () Bool)

(assert (= b_lambda!24263 (or (and start!112842 b_free!31059) b_lambda!24267)))

(check-sat (not mapNonEmpty!57138) (not b!1337846) (not b!1337843) (not b!1337853) (not b_next!31059) (not b!1337849) (not b!1337841) tp_is_empty!36969 (not start!112842) (not b!1337848) (not b_lambda!24267) b_and!50077)
(check-sat b_and!50077 (not b_next!31059))
(get-model)

(declare-fun d!143799 () Bool)

(declare-fun e!761822 () Bool)

(assert (=> d!143799 e!761822))

(declare-fun res!887880 () Bool)

(assert (=> d!143799 (=> res!887880 e!761822)))

(declare-fun lt!593304 () Bool)

(assert (=> d!143799 (= res!887880 (not lt!593304))))

(declare-fun lt!593306 () Bool)

(assert (=> d!143799 (= lt!593304 lt!593306)))

(declare-fun lt!593307 () Unit!43889)

(declare-fun e!761821 () Unit!43889)

(assert (=> d!143799 (= lt!593307 e!761821)))

(declare-fun c!126099 () Bool)

(assert (=> d!143799 (= c!126099 lt!593306)))

(declare-fun containsKey!738 (List!31254 (_ BitVec 64)) Bool)

(assert (=> d!143799 (= lt!593306 (containsKey!738 (toList!10894 (getCurrentListMap!5798 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(assert (=> d!143799 (= (contains!8999 (getCurrentListMap!5798 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) k0!1153) lt!593304)))

(declare-fun b!1337906 () Bool)

(declare-fun lt!593305 () Unit!43889)

(assert (=> b!1337906 (= e!761821 lt!593305)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!483 (List!31254 (_ BitVec 64)) Unit!43889)

(assert (=> b!1337906 (= lt!593305 (lemmaContainsKeyImpliesGetValueByKeyDefined!483 (toList!10894 (getCurrentListMap!5798 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(declare-datatypes ((Option!771 0))(
  ( (Some!770 (v!21203 V!54395)) (None!769) )
))
(declare-fun isDefined!523 (Option!771) Bool)

(declare-fun getValueByKey!720 (List!31254 (_ BitVec 64)) Option!771)

(assert (=> b!1337906 (isDefined!523 (getValueByKey!720 (toList!10894 (getCurrentListMap!5798 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153))))

(declare-fun b!1337907 () Bool)

(declare-fun Unit!43893 () Unit!43889)

(assert (=> b!1337907 (= e!761821 Unit!43893)))

(declare-fun b!1337908 () Bool)

(assert (=> b!1337908 (= e!761822 (isDefined!523 (getValueByKey!720 (toList!10894 (getCurrentListMap!5798 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323)) k0!1153)))))

(assert (= (and d!143799 c!126099) b!1337906))

(assert (= (and d!143799 (not c!126099)) b!1337907))

(assert (= (and d!143799 (not res!887880)) b!1337908))

(declare-fun m!1226097 () Bool)

(assert (=> d!143799 m!1226097))

(declare-fun m!1226099 () Bool)

(assert (=> b!1337906 m!1226099))

(declare-fun m!1226101 () Bool)

(assert (=> b!1337906 m!1226101))

(assert (=> b!1337906 m!1226101))

(declare-fun m!1226103 () Bool)

(assert (=> b!1337906 m!1226103))

(assert (=> b!1337908 m!1226101))

(assert (=> b!1337908 m!1226101))

(assert (=> b!1337908 m!1226103))

(assert (=> b!1337849 d!143799))

(declare-fun lt!593364 () ListLongMap!21757)

(declare-fun b!1337951 () Bool)

(declare-fun e!761850 () Bool)

(declare-fun apply!1070 (ListLongMap!21757 (_ BitVec 64)) V!54395)

(assert (=> b!1337951 (= e!761850 (= (apply!1070 lt!593364 (select (arr!43845 _keys!1590) from!1980)) (get!22169 (select (arr!43844 _values!1320) from!1980) (dynLambda!3760 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1337951 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44395 _values!1320)))))

(assert (=> b!1337951 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44396 _keys!1590)))))

(declare-fun b!1337952 () Bool)

(declare-fun e!761857 () Bool)

(assert (=> b!1337952 (= e!761857 (= (apply!1070 lt!593364 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1262))))

(declare-fun bm!64956 () Bool)

(declare-fun call!64965 () ListLongMap!21757)

(declare-fun call!64961 () ListLongMap!21757)

(assert (=> bm!64956 (= call!64965 call!64961)))

(declare-fun b!1337953 () Bool)

(declare-fun e!761861 () Bool)

(declare-fun e!761855 () Bool)

(assert (=> b!1337953 (= e!761861 e!761855)))

(declare-fun res!887906 () Bool)

(declare-fun call!64962 () Bool)

(assert (=> b!1337953 (= res!887906 call!64962)))

(assert (=> b!1337953 (=> (not res!887906) (not e!761855))))

(declare-fun b!1337954 () Bool)

(declare-fun e!761858 () Bool)

(assert (=> b!1337954 (= e!761858 e!761861)))

(declare-fun c!126116 () Bool)

(assert (=> b!1337954 (= c!126116 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1337955 () Bool)

(declare-fun e!761853 () Bool)

(assert (=> b!1337955 (= e!761853 (validKeyInArray!0 (select (arr!43845 _keys!1590) from!1980)))))

(declare-fun bm!64957 () Bool)

(declare-fun call!64963 () ListLongMap!21757)

(declare-fun call!64959 () ListLongMap!21757)

(assert (=> bm!64957 (= call!64963 call!64959)))

(declare-fun b!1337956 () Bool)

(declare-fun e!761851 () Bool)

(assert (=> b!1337956 (= e!761851 e!761850)))

(declare-fun res!887902 () Bool)

(assert (=> b!1337956 (=> (not res!887902) (not e!761850))))

(assert (=> b!1337956 (= res!887902 (contains!8999 lt!593364 (select (arr!43845 _keys!1590) from!1980)))))

(assert (=> b!1337956 (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44396 _keys!1590)))))

(declare-fun d!143801 () Bool)

(assert (=> d!143801 e!761858))

(declare-fun res!887904 () Bool)

(assert (=> d!143801 (=> (not res!887904) (not e!761858))))

(assert (=> d!143801 (= res!887904 (or (bvsge from!1980 (size!44396 _keys!1590)) (and (bvsge from!1980 #b00000000000000000000000000000000) (bvslt from!1980 (size!44396 _keys!1590)))))))

(declare-fun lt!593365 () ListLongMap!21757)

(assert (=> d!143801 (= lt!593364 lt!593365)))

(declare-fun lt!593360 () Unit!43889)

(declare-fun e!761860 () Unit!43889)

(assert (=> d!143801 (= lt!593360 e!761860)))

(declare-fun c!126117 () Bool)

(assert (=> d!143801 (= c!126117 e!761853)))

(declare-fun res!887905 () Bool)

(assert (=> d!143801 (=> (not res!887905) (not e!761853))))

(assert (=> d!143801 (= res!887905 (bvslt from!1980 (size!44396 _keys!1590)))))

(declare-fun e!761854 () ListLongMap!21757)

(assert (=> d!143801 (= lt!593365 e!761854)))

(declare-fun c!126112 () Bool)

(assert (=> d!143801 (= c!126112 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!143801 (validMask!0 mask!1998)))

(assert (=> d!143801 (= (getCurrentListMap!5798 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323) lt!593364)))

(declare-fun b!1337957 () Bool)

(assert (=> b!1337957 (= e!761854 (+!4723 call!64959 (tuple2!24089 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(declare-fun bm!64958 () Bool)

(assert (=> bm!64958 (= call!64961 (getCurrentListMapNoExtraKeys!6446 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun b!1337958 () Bool)

(assert (=> b!1337958 (= e!761855 (= (apply!1070 lt!593364 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1262))))

(declare-fun b!1337959 () Bool)

(declare-fun Unit!43894 () Unit!43889)

(assert (=> b!1337959 (= e!761860 Unit!43894)))

(declare-fun b!1337960 () Bool)

(declare-fun e!761856 () Bool)

(assert (=> b!1337960 (= e!761856 (validKeyInArray!0 (select (arr!43845 _keys!1590) from!1980)))))

(declare-fun b!1337961 () Bool)

(declare-fun c!126115 () Bool)

(assert (=> b!1337961 (= c!126115 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!761849 () ListLongMap!21757)

(declare-fun e!761852 () ListLongMap!21757)

(assert (=> b!1337961 (= e!761849 e!761852)))

(declare-fun b!1337962 () Bool)

(declare-fun res!887899 () Bool)

(assert (=> b!1337962 (=> (not res!887899) (not e!761858))))

(assert (=> b!1337962 (= res!887899 e!761851)))

(declare-fun res!887901 () Bool)

(assert (=> b!1337962 (=> res!887901 e!761851)))

(assert (=> b!1337962 (= res!887901 (not e!761856))))

(declare-fun res!887903 () Bool)

(assert (=> b!1337962 (=> (not res!887903) (not e!761856))))

(assert (=> b!1337962 (= res!887903 (bvslt from!1980 (size!44396 _keys!1590)))))

(declare-fun bm!64959 () Bool)

(declare-fun call!64964 () ListLongMap!21757)

(assert (=> bm!64959 (= call!64964 call!64965)))

(declare-fun b!1337963 () Bool)

(assert (=> b!1337963 (= e!761852 call!64963)))

(declare-fun bm!64960 () Bool)

(declare-fun c!126114 () Bool)

(assert (=> bm!64960 (= call!64959 (+!4723 (ite c!126112 call!64961 (ite c!126114 call!64965 call!64964)) (ite (or c!126112 c!126114) (tuple2!24089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24089 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun b!1337964 () Bool)

(declare-fun res!887900 () Bool)

(assert (=> b!1337964 (=> (not res!887900) (not e!761858))))

(declare-fun e!761859 () Bool)

(assert (=> b!1337964 (= res!887900 e!761859)))

(declare-fun c!126113 () Bool)

(assert (=> b!1337964 (= c!126113 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!64961 () Bool)

(declare-fun call!64960 () Bool)

(assert (=> bm!64961 (= call!64960 (contains!8999 lt!593364 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1337965 () Bool)

(assert (=> b!1337965 (= e!761852 call!64964)))

(declare-fun b!1337966 () Bool)

(assert (=> b!1337966 (= e!761859 (not call!64960))))

(declare-fun b!1337967 () Bool)

(assert (=> b!1337967 (= e!761859 e!761857)))

(declare-fun res!887907 () Bool)

(assert (=> b!1337967 (= res!887907 call!64960)))

(assert (=> b!1337967 (=> (not res!887907) (not e!761857))))

(declare-fun b!1337968 () Bool)

(assert (=> b!1337968 (= e!761861 (not call!64962))))

(declare-fun b!1337969 () Bool)

(declare-fun lt!593362 () Unit!43889)

(assert (=> b!1337969 (= e!761860 lt!593362)))

(declare-fun lt!593366 () ListLongMap!21757)

(assert (=> b!1337969 (= lt!593366 (getCurrentListMapNoExtraKeys!6446 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!593369 () (_ BitVec 64))

(assert (=> b!1337969 (= lt!593369 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593373 () (_ BitVec 64))

(assert (=> b!1337969 (= lt!593373 (select (arr!43845 _keys!1590) from!1980))))

(declare-fun lt!593359 () Unit!43889)

(declare-fun addStillContains!1196 (ListLongMap!21757 (_ BitVec 64) V!54395 (_ BitVec 64)) Unit!43889)

(assert (=> b!1337969 (= lt!593359 (addStillContains!1196 lt!593366 lt!593369 zeroValue!1262 lt!593373))))

(assert (=> b!1337969 (contains!8999 (+!4723 lt!593366 (tuple2!24089 lt!593369 zeroValue!1262)) lt!593373)))

(declare-fun lt!593361 () Unit!43889)

(assert (=> b!1337969 (= lt!593361 lt!593359)))

(declare-fun lt!593355 () ListLongMap!21757)

(assert (=> b!1337969 (= lt!593355 (getCurrentListMapNoExtraKeys!6446 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!593354 () (_ BitVec 64))

(assert (=> b!1337969 (= lt!593354 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593356 () (_ BitVec 64))

(assert (=> b!1337969 (= lt!593356 (select (arr!43845 _keys!1590) from!1980))))

(declare-fun lt!593368 () Unit!43889)

(declare-fun addApplyDifferent!573 (ListLongMap!21757 (_ BitVec 64) V!54395 (_ BitVec 64)) Unit!43889)

(assert (=> b!1337969 (= lt!593368 (addApplyDifferent!573 lt!593355 lt!593354 minValue!1262 lt!593356))))

(assert (=> b!1337969 (= (apply!1070 (+!4723 lt!593355 (tuple2!24089 lt!593354 minValue!1262)) lt!593356) (apply!1070 lt!593355 lt!593356))))

(declare-fun lt!593370 () Unit!43889)

(assert (=> b!1337969 (= lt!593370 lt!593368)))

(declare-fun lt!593353 () ListLongMap!21757)

(assert (=> b!1337969 (= lt!593353 (getCurrentListMapNoExtraKeys!6446 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!593358 () (_ BitVec 64))

(assert (=> b!1337969 (= lt!593358 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593357 () (_ BitVec 64))

(assert (=> b!1337969 (= lt!593357 (select (arr!43845 _keys!1590) from!1980))))

(declare-fun lt!593363 () Unit!43889)

(assert (=> b!1337969 (= lt!593363 (addApplyDifferent!573 lt!593353 lt!593358 zeroValue!1262 lt!593357))))

(assert (=> b!1337969 (= (apply!1070 (+!4723 lt!593353 (tuple2!24089 lt!593358 zeroValue!1262)) lt!593357) (apply!1070 lt!593353 lt!593357))))

(declare-fun lt!593372 () Unit!43889)

(assert (=> b!1337969 (= lt!593372 lt!593363)))

(declare-fun lt!593352 () ListLongMap!21757)

(assert (=> b!1337969 (= lt!593352 (getCurrentListMapNoExtraKeys!6446 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 from!1980 defaultEntry!1323))))

(declare-fun lt!593371 () (_ BitVec 64))

(assert (=> b!1337969 (= lt!593371 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593367 () (_ BitVec 64))

(assert (=> b!1337969 (= lt!593367 (select (arr!43845 _keys!1590) from!1980))))

(assert (=> b!1337969 (= lt!593362 (addApplyDifferent!573 lt!593352 lt!593371 minValue!1262 lt!593367))))

(assert (=> b!1337969 (= (apply!1070 (+!4723 lt!593352 (tuple2!24089 lt!593371 minValue!1262)) lt!593367) (apply!1070 lt!593352 lt!593367))))

(declare-fun b!1337970 () Bool)

(assert (=> b!1337970 (= e!761854 e!761849)))

(assert (=> b!1337970 (= c!126114 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1337971 () Bool)

(assert (=> b!1337971 (= e!761849 call!64963)))

(declare-fun bm!64962 () Bool)

(assert (=> bm!64962 (= call!64962 (contains!8999 lt!593364 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!143801 c!126112) b!1337957))

(assert (= (and d!143801 (not c!126112)) b!1337970))

(assert (= (and b!1337970 c!126114) b!1337971))

(assert (= (and b!1337970 (not c!126114)) b!1337961))

(assert (= (and b!1337961 c!126115) b!1337963))

(assert (= (and b!1337961 (not c!126115)) b!1337965))

(assert (= (or b!1337963 b!1337965) bm!64959))

(assert (= (or b!1337971 bm!64959) bm!64956))

(assert (= (or b!1337971 b!1337963) bm!64957))

(assert (= (or b!1337957 bm!64956) bm!64958))

(assert (= (or b!1337957 bm!64957) bm!64960))

(assert (= (and d!143801 res!887905) b!1337955))

(assert (= (and d!143801 c!126117) b!1337969))

(assert (= (and d!143801 (not c!126117)) b!1337959))

(assert (= (and d!143801 res!887904) b!1337962))

(assert (= (and b!1337962 res!887903) b!1337960))

(assert (= (and b!1337962 (not res!887901)) b!1337956))

(assert (= (and b!1337956 res!887902) b!1337951))

(assert (= (and b!1337962 res!887899) b!1337964))

(assert (= (and b!1337964 c!126113) b!1337967))

(assert (= (and b!1337964 (not c!126113)) b!1337966))

(assert (= (and b!1337967 res!887907) b!1337952))

(assert (= (or b!1337967 b!1337966) bm!64961))

(assert (= (and b!1337964 res!887900) b!1337954))

(assert (= (and b!1337954 c!126116) b!1337953))

(assert (= (and b!1337954 (not c!126116)) b!1337968))

(assert (= (and b!1337953 res!887906) b!1337958))

(assert (= (or b!1337953 b!1337968) bm!64962))

(declare-fun b_lambda!24269 () Bool)

(assert (=> (not b_lambda!24269) (not b!1337951)))

(assert (=> b!1337951 t!45588))

(declare-fun b_and!50083 () Bool)

(assert (= b_and!50077 (and (=> t!45588 result!25347) b_and!50083)))

(assert (=> b!1337955 m!1226017))

(assert (=> b!1337955 m!1226017))

(assert (=> b!1337955 m!1226055))

(declare-fun m!1226105 () Bool)

(assert (=> bm!64958 m!1226105))

(declare-fun m!1226107 () Bool)

(assert (=> bm!64961 m!1226107))

(declare-fun m!1226109 () Bool)

(assert (=> b!1337969 m!1226109))

(declare-fun m!1226111 () Bool)

(assert (=> b!1337969 m!1226111))

(declare-fun m!1226113 () Bool)

(assert (=> b!1337969 m!1226113))

(assert (=> b!1337969 m!1226111))

(declare-fun m!1226115 () Bool)

(assert (=> b!1337969 m!1226115))

(declare-fun m!1226117 () Bool)

(assert (=> b!1337969 m!1226117))

(assert (=> b!1337969 m!1226105))

(declare-fun m!1226119 () Bool)

(assert (=> b!1337969 m!1226119))

(declare-fun m!1226121 () Bool)

(assert (=> b!1337969 m!1226121))

(declare-fun m!1226123 () Bool)

(assert (=> b!1337969 m!1226123))

(declare-fun m!1226125 () Bool)

(assert (=> b!1337969 m!1226125))

(assert (=> b!1337969 m!1226017))

(declare-fun m!1226127 () Bool)

(assert (=> b!1337969 m!1226127))

(assert (=> b!1337969 m!1226119))

(declare-fun m!1226129 () Bool)

(assert (=> b!1337969 m!1226129))

(assert (=> b!1337969 m!1226125))

(declare-fun m!1226131 () Bool)

(assert (=> b!1337969 m!1226131))

(declare-fun m!1226133 () Bool)

(assert (=> b!1337969 m!1226133))

(assert (=> b!1337969 m!1226113))

(declare-fun m!1226135 () Bool)

(assert (=> b!1337969 m!1226135))

(declare-fun m!1226137 () Bool)

(assert (=> b!1337969 m!1226137))

(declare-fun m!1226139 () Bool)

(assert (=> b!1337958 m!1226139))

(assert (=> b!1337956 m!1226017))

(assert (=> b!1337956 m!1226017))

(declare-fun m!1226141 () Bool)

(assert (=> b!1337956 m!1226141))

(declare-fun m!1226143 () Bool)

(assert (=> b!1337957 m!1226143))

(assert (=> d!143801 m!1226029))

(declare-fun m!1226145 () Bool)

(assert (=> b!1337952 m!1226145))

(assert (=> b!1337951 m!1226017))

(assert (=> b!1337951 m!1226017))

(declare-fun m!1226147 () Bool)

(assert (=> b!1337951 m!1226147))

(assert (=> b!1337951 m!1226043))

(assert (=> b!1337951 m!1226041))

(assert (=> b!1337951 m!1226045))

(assert (=> b!1337951 m!1226043))

(assert (=> b!1337951 m!1226041))

(declare-fun m!1226149 () Bool)

(assert (=> bm!64960 m!1226149))

(assert (=> b!1337960 m!1226017))

(assert (=> b!1337960 m!1226017))

(assert (=> b!1337960 m!1226055))

(declare-fun m!1226151 () Bool)

(assert (=> bm!64962 m!1226151))

(assert (=> b!1337849 d!143801))

(declare-fun b!1337980 () Bool)

(declare-fun e!761869 () Bool)

(declare-fun e!761870 () Bool)

(assert (=> b!1337980 (= e!761869 e!761870)))

(declare-fun lt!593382 () (_ BitVec 64))

(assert (=> b!1337980 (= lt!593382 (select (arr!43845 _keys!1590) #b00000000000000000000000000000000))))

(declare-fun lt!593381 () Unit!43889)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!90773 (_ BitVec 64) (_ BitVec 32)) Unit!43889)

(assert (=> b!1337980 (= lt!593381 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1590 lt!593382 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!90773 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1337980 (arrayContainsKey!0 _keys!1590 lt!593382 #b00000000000000000000000000000000)))

(declare-fun lt!593380 () Unit!43889)

(assert (=> b!1337980 (= lt!593380 lt!593381)))

(declare-fun res!887912 () Bool)

(declare-datatypes ((SeekEntryResult!10047 0))(
  ( (MissingZero!10047 (index!42558 (_ BitVec 32))) (Found!10047 (index!42559 (_ BitVec 32))) (Intermediate!10047 (undefined!10859 Bool) (index!42560 (_ BitVec 32)) (x!119518 (_ BitVec 32))) (Undefined!10047) (MissingVacant!10047 (index!42561 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!90773 (_ BitVec 32)) SeekEntryResult!10047)

(assert (=> b!1337980 (= res!887912 (= (seekEntryOrOpen!0 (select (arr!43845 _keys!1590) #b00000000000000000000000000000000) _keys!1590 mask!1998) (Found!10047 #b00000000000000000000000000000000)))))

(assert (=> b!1337980 (=> (not res!887912) (not e!761870))))

(declare-fun b!1337981 () Bool)

(declare-fun e!761868 () Bool)

(assert (=> b!1337981 (= e!761868 e!761869)))

(declare-fun c!126120 () Bool)

(assert (=> b!1337981 (= c!126120 (validKeyInArray!0 (select (arr!43845 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1337982 () Bool)

(declare-fun call!64968 () Bool)

(assert (=> b!1337982 (= e!761870 call!64968)))

(declare-fun b!1337983 () Bool)

(assert (=> b!1337983 (= e!761869 call!64968)))

(declare-fun bm!64965 () Bool)

(assert (=> bm!64965 (= call!64968 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1590 mask!1998))))

(declare-fun d!143803 () Bool)

(declare-fun res!887913 () Bool)

(assert (=> d!143803 (=> res!887913 e!761868)))

(assert (=> d!143803 (= res!887913 (bvsge #b00000000000000000000000000000000 (size!44396 _keys!1590)))))

(assert (=> d!143803 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998) e!761868)))

(assert (= (and d!143803 (not res!887913)) b!1337981))

(assert (= (and b!1337981 c!126120) b!1337980))

(assert (= (and b!1337981 (not c!126120)) b!1337983))

(assert (= (and b!1337980 res!887912) b!1337982))

(assert (= (or b!1337982 b!1337983) bm!64965))

(declare-fun m!1226153 () Bool)

(assert (=> b!1337980 m!1226153))

(declare-fun m!1226155 () Bool)

(assert (=> b!1337980 m!1226155))

(declare-fun m!1226157 () Bool)

(assert (=> b!1337980 m!1226157))

(assert (=> b!1337980 m!1226153))

(declare-fun m!1226159 () Bool)

(assert (=> b!1337980 m!1226159))

(assert (=> b!1337981 m!1226153))

(assert (=> b!1337981 m!1226153))

(declare-fun m!1226161 () Bool)

(assert (=> b!1337981 m!1226161))

(declare-fun m!1226163 () Bool)

(assert (=> bm!64965 m!1226163))

(assert (=> b!1337853 d!143803))

(declare-fun b!1337994 () Bool)

(declare-fun e!761880 () Bool)

(declare-fun contains!9001 (List!31255 (_ BitVec 64)) Bool)

(assert (=> b!1337994 (= e!761880 (contains!9001 Nil!31252 (select (arr!43845 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1337995 () Bool)

(declare-fun e!761882 () Bool)

(declare-fun e!761879 () Bool)

(assert (=> b!1337995 (= e!761882 e!761879)))

(declare-fun res!887922 () Bool)

(assert (=> b!1337995 (=> (not res!887922) (not e!761879))))

(assert (=> b!1337995 (= res!887922 (not e!761880))))

(declare-fun res!887920 () Bool)

(assert (=> b!1337995 (=> (not res!887920) (not e!761880))))

(assert (=> b!1337995 (= res!887920 (validKeyInArray!0 (select (arr!43845 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun b!1337996 () Bool)

(declare-fun e!761881 () Bool)

(declare-fun call!64971 () Bool)

(assert (=> b!1337996 (= e!761881 call!64971)))

(declare-fun d!143805 () Bool)

(declare-fun res!887921 () Bool)

(assert (=> d!143805 (=> res!887921 e!761882)))

(assert (=> d!143805 (= res!887921 (bvsge #b00000000000000000000000000000000 (size!44396 _keys!1590)))))

(assert (=> d!143805 (= (arrayNoDuplicates!0 _keys!1590 #b00000000000000000000000000000000 Nil!31252) e!761882)))

(declare-fun b!1337997 () Bool)

(assert (=> b!1337997 (= e!761879 e!761881)))

(declare-fun c!126123 () Bool)

(assert (=> b!1337997 (= c!126123 (validKeyInArray!0 (select (arr!43845 _keys!1590) #b00000000000000000000000000000000)))))

(declare-fun bm!64968 () Bool)

(assert (=> bm!64968 (= call!64971 (arrayNoDuplicates!0 _keys!1590 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!126123 (Cons!31251 (select (arr!43845 _keys!1590) #b00000000000000000000000000000000) Nil!31252) Nil!31252)))))

(declare-fun b!1337998 () Bool)

(assert (=> b!1337998 (= e!761881 call!64971)))

(assert (= (and d!143805 (not res!887921)) b!1337995))

(assert (= (and b!1337995 res!887920) b!1337994))

(assert (= (and b!1337995 res!887922) b!1337997))

(assert (= (and b!1337997 c!126123) b!1337996))

(assert (= (and b!1337997 (not c!126123)) b!1337998))

(assert (= (or b!1337996 b!1337998) bm!64968))

(assert (=> b!1337994 m!1226153))

(assert (=> b!1337994 m!1226153))

(declare-fun m!1226165 () Bool)

(assert (=> b!1337994 m!1226165))

(assert (=> b!1337995 m!1226153))

(assert (=> b!1337995 m!1226153))

(assert (=> b!1337995 m!1226161))

(assert (=> b!1337997 m!1226153))

(assert (=> b!1337997 m!1226153))

(assert (=> b!1337997 m!1226161))

(assert (=> bm!64968 m!1226153))

(declare-fun m!1226167 () Bool)

(assert (=> bm!64968 m!1226167))

(assert (=> b!1337843 d!143805))

(declare-fun d!143807 () Bool)

(assert (=> d!143807 (= (validMask!0 mask!1998) (and (or (= mask!1998 #b00000000000000000000000000000111) (= mask!1998 #b00000000000000000000000000001111) (= mask!1998 #b00000000000000000000000000011111) (= mask!1998 #b00000000000000000000000000111111) (= mask!1998 #b00000000000000000000000001111111) (= mask!1998 #b00000000000000000000000011111111) (= mask!1998 #b00000000000000000000000111111111) (= mask!1998 #b00000000000000000000001111111111) (= mask!1998 #b00000000000000000000011111111111) (= mask!1998 #b00000000000000000000111111111111) (= mask!1998 #b00000000000000000001111111111111) (= mask!1998 #b00000000000000000011111111111111) (= mask!1998 #b00000000000000000111111111111111) (= mask!1998 #b00000000000000001111111111111111) (= mask!1998 #b00000000000000011111111111111111) (= mask!1998 #b00000000000000111111111111111111) (= mask!1998 #b00000000000001111111111111111111) (= mask!1998 #b00000000000011111111111111111111) (= mask!1998 #b00000000000111111111111111111111) (= mask!1998 #b00000000001111111111111111111111) (= mask!1998 #b00000000011111111111111111111111) (= mask!1998 #b00000000111111111111111111111111) (= mask!1998 #b00000001111111111111111111111111) (= mask!1998 #b00000011111111111111111111111111) (= mask!1998 #b00000111111111111111111111111111) (= mask!1998 #b00001111111111111111111111111111) (= mask!1998 #b00011111111111111111111111111111) (= mask!1998 #b00111111111111111111111111111111)) (bvsle mask!1998 #b00111111111111111111111111111111)))))

(assert (=> start!112842 d!143807))

(declare-fun d!143809 () Bool)

(assert (=> d!143809 (= (array_inv!32991 _values!1320) (bvsge (size!44395 _values!1320) #b00000000000000000000000000000000))))

(assert (=> start!112842 d!143809))

(declare-fun d!143811 () Bool)

(assert (=> d!143811 (= (array_inv!32992 _keys!1590) (bvsge (size!44396 _keys!1590) #b00000000000000000000000000000000))))

(assert (=> start!112842 d!143811))

(declare-fun d!143813 () Bool)

(declare-fun e!761884 () Bool)

(assert (=> d!143813 e!761884))

(declare-fun res!887923 () Bool)

(assert (=> d!143813 (=> res!887923 e!761884)))

(declare-fun lt!593383 () Bool)

(assert (=> d!143813 (= res!887923 (not lt!593383))))

(declare-fun lt!593385 () Bool)

(assert (=> d!143813 (= lt!593383 lt!593385)))

(declare-fun lt!593386 () Unit!43889)

(declare-fun e!761883 () Unit!43889)

(assert (=> d!143813 (= lt!593386 e!761883)))

(declare-fun c!126124 () Bool)

(assert (=> d!143813 (= c!126124 lt!593385)))

(assert (=> d!143813 (= lt!593385 (containsKey!738 (toList!10894 (getCurrentListMap!5798 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153))))

(assert (=> d!143813 (= (contains!8999 (getCurrentListMap!5798 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) k0!1153) lt!593383)))

(declare-fun b!1337999 () Bool)

(declare-fun lt!593384 () Unit!43889)

(assert (=> b!1337999 (= e!761883 lt!593384)))

(assert (=> b!1337999 (= lt!593384 (lemmaContainsKeyImpliesGetValueByKeyDefined!483 (toList!10894 (getCurrentListMap!5798 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153))))

(assert (=> b!1337999 (isDefined!523 (getValueByKey!720 (toList!10894 (getCurrentListMap!5798 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153))))

(declare-fun b!1338000 () Bool)

(declare-fun Unit!43895 () Unit!43889)

(assert (=> b!1338000 (= e!761883 Unit!43895)))

(declare-fun b!1338001 () Bool)

(assert (=> b!1338001 (= e!761884 (isDefined!523 (getValueByKey!720 (toList!10894 (getCurrentListMap!5798 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323)) k0!1153)))))

(assert (= (and d!143813 c!126124) b!1337999))

(assert (= (and d!143813 (not c!126124)) b!1338000))

(assert (= (and d!143813 (not res!887923)) b!1338001))

(declare-fun m!1226169 () Bool)

(assert (=> d!143813 m!1226169))

(declare-fun m!1226171 () Bool)

(assert (=> b!1337999 m!1226171))

(declare-fun m!1226173 () Bool)

(assert (=> b!1337999 m!1226173))

(assert (=> b!1337999 m!1226173))

(declare-fun m!1226175 () Bool)

(assert (=> b!1337999 m!1226175))

(assert (=> b!1338001 m!1226173))

(assert (=> b!1338001 m!1226173))

(assert (=> b!1338001 m!1226175))

(assert (=> b!1337848 d!143813))

(declare-fun e!761886 () Bool)

(declare-fun lt!593399 () ListLongMap!21757)

(declare-fun b!1338002 () Bool)

(assert (=> b!1338002 (= e!761886 (= (apply!1070 lt!593399 (select (arr!43845 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) (get!22169 (select (arr!43844 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3760 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1338002 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44395 _values!1320)))))

(assert (=> b!1338002 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44396 _keys!1590)))))

(declare-fun b!1338003 () Bool)

(declare-fun e!761893 () Bool)

(assert (=> b!1338003 (= e!761893 (= (apply!1070 lt!593399 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1262))))

(declare-fun bm!64969 () Bool)

(declare-fun call!64978 () ListLongMap!21757)

(declare-fun call!64974 () ListLongMap!21757)

(assert (=> bm!64969 (= call!64978 call!64974)))

(declare-fun b!1338004 () Bool)

(declare-fun e!761897 () Bool)

(declare-fun e!761891 () Bool)

(assert (=> b!1338004 (= e!761897 e!761891)))

(declare-fun res!887931 () Bool)

(declare-fun call!64975 () Bool)

(assert (=> b!1338004 (= res!887931 call!64975)))

(assert (=> b!1338004 (=> (not res!887931) (not e!761891))))

(declare-fun b!1338005 () Bool)

(declare-fun e!761894 () Bool)

(assert (=> b!1338005 (= e!761894 e!761897)))

(declare-fun c!126129 () Bool)

(assert (=> b!1338005 (= c!126129 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1338006 () Bool)

(declare-fun e!761889 () Bool)

(assert (=> b!1338006 (= e!761889 (validKeyInArray!0 (select (arr!43845 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun bm!64970 () Bool)

(declare-fun call!64976 () ListLongMap!21757)

(declare-fun call!64972 () ListLongMap!21757)

(assert (=> bm!64970 (= call!64976 call!64972)))

(declare-fun b!1338007 () Bool)

(declare-fun e!761887 () Bool)

(assert (=> b!1338007 (= e!761887 e!761886)))

(declare-fun res!887927 () Bool)

(assert (=> b!1338007 (=> (not res!887927) (not e!761886))))

(assert (=> b!1338007 (= res!887927 (contains!8999 lt!593399 (select (arr!43845 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1338007 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44396 _keys!1590)))))

(declare-fun d!143815 () Bool)

(assert (=> d!143815 e!761894))

(declare-fun res!887929 () Bool)

(assert (=> d!143815 (=> (not res!887929) (not e!761894))))

(assert (=> d!143815 (= res!887929 (or (bvsge (bvadd #b00000000000000000000000000000001 from!1980) (size!44396 _keys!1590)) (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44396 _keys!1590)))))))

(declare-fun lt!593400 () ListLongMap!21757)

(assert (=> d!143815 (= lt!593399 lt!593400)))

(declare-fun lt!593395 () Unit!43889)

(declare-fun e!761896 () Unit!43889)

(assert (=> d!143815 (= lt!593395 e!761896)))

(declare-fun c!126130 () Bool)

(assert (=> d!143815 (= c!126130 e!761889)))

(declare-fun res!887930 () Bool)

(assert (=> d!143815 (=> (not res!887930) (not e!761889))))

(assert (=> d!143815 (= res!887930 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44396 _keys!1590)))))

(declare-fun e!761890 () ListLongMap!21757)

(assert (=> d!143815 (= lt!593400 e!761890)))

(declare-fun c!126125 () Bool)

(assert (=> d!143815 (= c!126125 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!143815 (validMask!0 mask!1998)))

(assert (=> d!143815 (= (getCurrentListMap!5798 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) lt!593399)))

(declare-fun b!1338008 () Bool)

(assert (=> b!1338008 (= e!761890 (+!4723 call!64972 (tuple2!24089 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262)))))

(declare-fun bm!64971 () Bool)

(assert (=> bm!64971 (= call!64974 (getCurrentListMapNoExtraKeys!6446 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun b!1338009 () Bool)

(assert (=> b!1338009 (= e!761891 (= (apply!1070 lt!593399 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1262))))

(declare-fun b!1338010 () Bool)

(declare-fun Unit!43896 () Unit!43889)

(assert (=> b!1338010 (= e!761896 Unit!43896)))

(declare-fun b!1338011 () Bool)

(declare-fun e!761892 () Bool)

(assert (=> b!1338011 (= e!761892 (validKeyInArray!0 (select (arr!43845 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun b!1338012 () Bool)

(declare-fun c!126128 () Bool)

(assert (=> b!1338012 (= c!126128 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!761885 () ListLongMap!21757)

(declare-fun e!761888 () ListLongMap!21757)

(assert (=> b!1338012 (= e!761885 e!761888)))

(declare-fun b!1338013 () Bool)

(declare-fun res!887924 () Bool)

(assert (=> b!1338013 (=> (not res!887924) (not e!761894))))

(assert (=> b!1338013 (= res!887924 e!761887)))

(declare-fun res!887926 () Bool)

(assert (=> b!1338013 (=> res!887926 e!761887)))

(assert (=> b!1338013 (= res!887926 (not e!761892))))

(declare-fun res!887928 () Bool)

(assert (=> b!1338013 (=> (not res!887928) (not e!761892))))

(assert (=> b!1338013 (= res!887928 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44396 _keys!1590)))))

(declare-fun bm!64972 () Bool)

(declare-fun call!64977 () ListLongMap!21757)

(assert (=> bm!64972 (= call!64977 call!64978)))

(declare-fun b!1338014 () Bool)

(assert (=> b!1338014 (= e!761888 call!64976)))

(declare-fun c!126127 () Bool)

(declare-fun bm!64973 () Bool)

(assert (=> bm!64973 (= call!64972 (+!4723 (ite c!126125 call!64974 (ite c!126127 call!64978 call!64977)) (ite (or c!126125 c!126127) (tuple2!24089 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1262) (tuple2!24089 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1262))))))

(declare-fun b!1338015 () Bool)

(declare-fun res!887925 () Bool)

(assert (=> b!1338015 (=> (not res!887925) (not e!761894))))

(declare-fun e!761895 () Bool)

(assert (=> b!1338015 (= res!887925 e!761895)))

(declare-fun c!126126 () Bool)

(assert (=> b!1338015 (= c!126126 (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!64974 () Bool)

(declare-fun call!64973 () Bool)

(assert (=> bm!64974 (= call!64973 (contains!8999 lt!593399 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1338016 () Bool)

(assert (=> b!1338016 (= e!761888 call!64977)))

(declare-fun b!1338017 () Bool)

(assert (=> b!1338017 (= e!761895 (not call!64973))))

(declare-fun b!1338018 () Bool)

(assert (=> b!1338018 (= e!761895 e!761893)))

(declare-fun res!887932 () Bool)

(assert (=> b!1338018 (= res!887932 call!64973)))

(assert (=> b!1338018 (=> (not res!887932) (not e!761893))))

(declare-fun b!1338019 () Bool)

(assert (=> b!1338019 (= e!761897 (not call!64975))))

(declare-fun b!1338020 () Bool)

(declare-fun lt!593397 () Unit!43889)

(assert (=> b!1338020 (= e!761896 lt!593397)))

(declare-fun lt!593401 () ListLongMap!21757)

(assert (=> b!1338020 (= lt!593401 (getCurrentListMapNoExtraKeys!6446 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun lt!593404 () (_ BitVec 64))

(assert (=> b!1338020 (= lt!593404 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593408 () (_ BitVec 64))

(assert (=> b!1338020 (= lt!593408 (select (arr!43845 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(declare-fun lt!593394 () Unit!43889)

(assert (=> b!1338020 (= lt!593394 (addStillContains!1196 lt!593401 lt!593404 zeroValue!1262 lt!593408))))

(assert (=> b!1338020 (contains!8999 (+!4723 lt!593401 (tuple2!24089 lt!593404 zeroValue!1262)) lt!593408)))

(declare-fun lt!593396 () Unit!43889)

(assert (=> b!1338020 (= lt!593396 lt!593394)))

(declare-fun lt!593390 () ListLongMap!21757)

(assert (=> b!1338020 (= lt!593390 (getCurrentListMapNoExtraKeys!6446 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun lt!593389 () (_ BitVec 64))

(assert (=> b!1338020 (= lt!593389 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593391 () (_ BitVec 64))

(assert (=> b!1338020 (= lt!593391 (select (arr!43845 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(declare-fun lt!593403 () Unit!43889)

(assert (=> b!1338020 (= lt!593403 (addApplyDifferent!573 lt!593390 lt!593389 minValue!1262 lt!593391))))

(assert (=> b!1338020 (= (apply!1070 (+!4723 lt!593390 (tuple2!24089 lt!593389 minValue!1262)) lt!593391) (apply!1070 lt!593390 lt!593391))))

(declare-fun lt!593405 () Unit!43889)

(assert (=> b!1338020 (= lt!593405 lt!593403)))

(declare-fun lt!593388 () ListLongMap!21757)

(assert (=> b!1338020 (= lt!593388 (getCurrentListMapNoExtraKeys!6446 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun lt!593393 () (_ BitVec 64))

(assert (=> b!1338020 (= lt!593393 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593392 () (_ BitVec 64))

(assert (=> b!1338020 (= lt!593392 (select (arr!43845 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(declare-fun lt!593398 () Unit!43889)

(assert (=> b!1338020 (= lt!593398 (addApplyDifferent!573 lt!593388 lt!593393 zeroValue!1262 lt!593392))))

(assert (=> b!1338020 (= (apply!1070 (+!4723 lt!593388 (tuple2!24089 lt!593393 zeroValue!1262)) lt!593392) (apply!1070 lt!593388 lt!593392))))

(declare-fun lt!593407 () Unit!43889)

(assert (=> b!1338020 (= lt!593407 lt!593398)))

(declare-fun lt!593387 () ListLongMap!21757)

(assert (=> b!1338020 (= lt!593387 (getCurrentListMapNoExtraKeys!6446 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323))))

(declare-fun lt!593406 () (_ BitVec 64))

(assert (=> b!1338020 (= lt!593406 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!593402 () (_ BitVec 64))

(assert (=> b!1338020 (= lt!593402 (select (arr!43845 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(assert (=> b!1338020 (= lt!593397 (addApplyDifferent!573 lt!593387 lt!593406 minValue!1262 lt!593402))))

(assert (=> b!1338020 (= (apply!1070 (+!4723 lt!593387 (tuple2!24089 lt!593406 minValue!1262)) lt!593402) (apply!1070 lt!593387 lt!593402))))

(declare-fun b!1338021 () Bool)

(assert (=> b!1338021 (= e!761890 e!761885)))

(assert (=> b!1338021 (= c!126127 (and (not (= (bvand extraKeys!1241 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1241 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1338022 () Bool)

(assert (=> b!1338022 (= e!761885 call!64976)))

(declare-fun bm!64975 () Bool)

(assert (=> bm!64975 (= call!64975 (contains!8999 lt!593399 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (= (and d!143815 c!126125) b!1338008))

(assert (= (and d!143815 (not c!126125)) b!1338021))

(assert (= (and b!1338021 c!126127) b!1338022))

(assert (= (and b!1338021 (not c!126127)) b!1338012))

(assert (= (and b!1338012 c!126128) b!1338014))

(assert (= (and b!1338012 (not c!126128)) b!1338016))

(assert (= (or b!1338014 b!1338016) bm!64972))

(assert (= (or b!1338022 bm!64972) bm!64969))

(assert (= (or b!1338022 b!1338014) bm!64970))

(assert (= (or b!1338008 bm!64969) bm!64971))

(assert (= (or b!1338008 bm!64970) bm!64973))

(assert (= (and d!143815 res!887930) b!1338006))

(assert (= (and d!143815 c!126130) b!1338020))

(assert (= (and d!143815 (not c!126130)) b!1338010))

(assert (= (and d!143815 res!887929) b!1338013))

(assert (= (and b!1338013 res!887928) b!1338011))

(assert (= (and b!1338013 (not res!887926)) b!1338007))

(assert (= (and b!1338007 res!887927) b!1338002))

(assert (= (and b!1338013 res!887924) b!1338015))

(assert (= (and b!1338015 c!126126) b!1338018))

(assert (= (and b!1338015 (not c!126126)) b!1338017))

(assert (= (and b!1338018 res!887932) b!1338003))

(assert (= (or b!1338018 b!1338017) bm!64974))

(assert (= (and b!1338015 res!887925) b!1338005))

(assert (= (and b!1338005 c!126129) b!1338004))

(assert (= (and b!1338005 (not c!126129)) b!1338019))

(assert (= (and b!1338004 res!887931) b!1338009))

(assert (= (or b!1338004 b!1338019) bm!64975))

(declare-fun b_lambda!24271 () Bool)

(assert (=> (not b_lambda!24271) (not b!1338002)))

(assert (=> b!1338002 t!45588))

(declare-fun b_and!50085 () Bool)

(assert (= b_and!50083 (and (=> t!45588 result!25347) b_and!50085)))

(declare-fun m!1226177 () Bool)

(assert (=> b!1338006 m!1226177))

(assert (=> b!1338006 m!1226177))

(declare-fun m!1226179 () Bool)

(assert (=> b!1338006 m!1226179))

(assert (=> bm!64971 m!1226049))

(declare-fun m!1226181 () Bool)

(assert (=> bm!64974 m!1226181))

(declare-fun m!1226183 () Bool)

(assert (=> b!1338020 m!1226183))

(declare-fun m!1226185 () Bool)

(assert (=> b!1338020 m!1226185))

(declare-fun m!1226187 () Bool)

(assert (=> b!1338020 m!1226187))

(assert (=> b!1338020 m!1226185))

(declare-fun m!1226189 () Bool)

(assert (=> b!1338020 m!1226189))

(declare-fun m!1226191 () Bool)

(assert (=> b!1338020 m!1226191))

(assert (=> b!1338020 m!1226049))

(declare-fun m!1226193 () Bool)

(assert (=> b!1338020 m!1226193))

(declare-fun m!1226195 () Bool)

(assert (=> b!1338020 m!1226195))

(declare-fun m!1226197 () Bool)

(assert (=> b!1338020 m!1226197))

(declare-fun m!1226199 () Bool)

(assert (=> b!1338020 m!1226199))

(assert (=> b!1338020 m!1226177))

(declare-fun m!1226201 () Bool)

(assert (=> b!1338020 m!1226201))

(assert (=> b!1338020 m!1226193))

(declare-fun m!1226203 () Bool)

(assert (=> b!1338020 m!1226203))

(assert (=> b!1338020 m!1226199))

(declare-fun m!1226205 () Bool)

(assert (=> b!1338020 m!1226205))

(declare-fun m!1226207 () Bool)

(assert (=> b!1338020 m!1226207))

(assert (=> b!1338020 m!1226187))

(declare-fun m!1226209 () Bool)

(assert (=> b!1338020 m!1226209))

(declare-fun m!1226211 () Bool)

(assert (=> b!1338020 m!1226211))

(declare-fun m!1226213 () Bool)

(assert (=> b!1338009 m!1226213))

(assert (=> b!1338007 m!1226177))

(assert (=> b!1338007 m!1226177))

(declare-fun m!1226215 () Bool)

(assert (=> b!1338007 m!1226215))

(declare-fun m!1226217 () Bool)

(assert (=> b!1338008 m!1226217))

(assert (=> d!143815 m!1226029))

(declare-fun m!1226219 () Bool)

(assert (=> b!1338003 m!1226219))

(assert (=> b!1338002 m!1226177))

(assert (=> b!1338002 m!1226177))

(declare-fun m!1226221 () Bool)

(assert (=> b!1338002 m!1226221))

(declare-fun m!1226223 () Bool)

(assert (=> b!1338002 m!1226223))

(assert (=> b!1338002 m!1226041))

(declare-fun m!1226225 () Bool)

(assert (=> b!1338002 m!1226225))

(assert (=> b!1338002 m!1226223))

(assert (=> b!1338002 m!1226041))

(declare-fun m!1226227 () Bool)

(assert (=> bm!64973 m!1226227))

(assert (=> b!1338011 m!1226177))

(assert (=> b!1338011 m!1226177))

(assert (=> b!1338011 m!1226179))

(declare-fun m!1226229 () Bool)

(assert (=> bm!64975 m!1226229))

(assert (=> b!1337848 d!143815))

(declare-fun d!143817 () Bool)

(declare-fun e!761899 () Bool)

(assert (=> d!143817 e!761899))

(declare-fun res!887933 () Bool)

(assert (=> d!143817 (=> res!887933 e!761899)))

(declare-fun lt!593409 () Bool)

(assert (=> d!143817 (= res!887933 (not lt!593409))))

(declare-fun lt!593411 () Bool)

(assert (=> d!143817 (= lt!593409 lt!593411)))

(declare-fun lt!593412 () Unit!43889)

(declare-fun e!761898 () Unit!43889)

(assert (=> d!143817 (= lt!593412 e!761898)))

(declare-fun c!126131 () Bool)

(assert (=> d!143817 (= c!126131 lt!593411)))

(assert (=> d!143817 (= lt!593411 (containsKey!738 (toList!10894 lt!593286) k0!1153))))

(assert (=> d!143817 (= (contains!8999 lt!593286 k0!1153) lt!593409)))

(declare-fun b!1338023 () Bool)

(declare-fun lt!593410 () Unit!43889)

(assert (=> b!1338023 (= e!761898 lt!593410)))

(assert (=> b!1338023 (= lt!593410 (lemmaContainsKeyImpliesGetValueByKeyDefined!483 (toList!10894 lt!593286) k0!1153))))

(assert (=> b!1338023 (isDefined!523 (getValueByKey!720 (toList!10894 lt!593286) k0!1153))))

(declare-fun b!1338024 () Bool)

(declare-fun Unit!43897 () Unit!43889)

(assert (=> b!1338024 (= e!761898 Unit!43897)))

(declare-fun b!1338025 () Bool)

(assert (=> b!1338025 (= e!761899 (isDefined!523 (getValueByKey!720 (toList!10894 lt!593286) k0!1153)))))

(assert (= (and d!143817 c!126131) b!1338023))

(assert (= (and d!143817 (not c!126131)) b!1338024))

(assert (= (and d!143817 (not res!887933)) b!1338025))

(declare-fun m!1226231 () Bool)

(assert (=> d!143817 m!1226231))

(declare-fun m!1226233 () Bool)

(assert (=> b!1338023 m!1226233))

(declare-fun m!1226235 () Bool)

(assert (=> b!1338023 m!1226235))

(assert (=> b!1338023 m!1226235))

(declare-fun m!1226237 () Bool)

(assert (=> b!1338023 m!1226237))

(assert (=> b!1338025 m!1226235))

(assert (=> b!1338025 m!1226235))

(assert (=> b!1338025 m!1226237))

(assert (=> b!1337848 d!143817))

(declare-fun d!143819 () Bool)

(assert (=> d!143819 (contains!8999 lt!593286 k0!1153)))

(declare-fun lt!593415 () Unit!43889)

(declare-fun choose!1976 ((_ BitVec 64) (_ BitVec 64) V!54395 ListLongMap!21757) Unit!43889)

(assert (=> d!143819 (= lt!593415 (choose!1976 k0!1153 (select (arr!43845 _keys!1590) from!1980) lt!593284 lt!593286))))

(assert (=> d!143819 (contains!8999 (+!4723 lt!593286 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284)) k0!1153)))

(assert (=> d!143819 (= (lemmaInListMapAfterAddingDiffThenInBefore!318 k0!1153 (select (arr!43845 _keys!1590) from!1980) lt!593284 lt!593286) lt!593415)))

(declare-fun bs!38309 () Bool)

(assert (= bs!38309 d!143819))

(assert (=> bs!38309 m!1226023))

(assert (=> bs!38309 m!1226017))

(declare-fun m!1226239 () Bool)

(assert (=> bs!38309 m!1226239))

(assert (=> bs!38309 m!1226047))

(assert (=> bs!38309 m!1226047))

(assert (=> bs!38309 m!1226051))

(assert (=> b!1337848 d!143819))

(declare-fun d!143821 () Bool)

(assert (=> d!143821 (= (validKeyInArray!0 (select (arr!43845 _keys!1590) from!1980)) (and (not (= (select (arr!43845 _keys!1590) from!1980) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!43845 _keys!1590) from!1980) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1337846 d!143821))

(declare-fun d!143823 () Bool)

(declare-fun e!761901 () Bool)

(assert (=> d!143823 e!761901))

(declare-fun res!887934 () Bool)

(assert (=> d!143823 (=> res!887934 e!761901)))

(declare-fun lt!593416 () Bool)

(assert (=> d!143823 (= res!887934 (not lt!593416))))

(declare-fun lt!593418 () Bool)

(assert (=> d!143823 (= lt!593416 lt!593418)))

(declare-fun lt!593419 () Unit!43889)

(declare-fun e!761900 () Unit!43889)

(assert (=> d!143823 (= lt!593419 e!761900)))

(declare-fun c!126132 () Bool)

(assert (=> d!143823 (= c!126132 lt!593418)))

(assert (=> d!143823 (= lt!593418 (containsKey!738 (toList!10894 (+!4723 lt!593286 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284))) k0!1153))))

(assert (=> d!143823 (= (contains!8999 (+!4723 lt!593286 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284)) k0!1153) lt!593416)))

(declare-fun b!1338026 () Bool)

(declare-fun lt!593417 () Unit!43889)

(assert (=> b!1338026 (= e!761900 lt!593417)))

(assert (=> b!1338026 (= lt!593417 (lemmaContainsKeyImpliesGetValueByKeyDefined!483 (toList!10894 (+!4723 lt!593286 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284))) k0!1153))))

(assert (=> b!1338026 (isDefined!523 (getValueByKey!720 (toList!10894 (+!4723 lt!593286 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284))) k0!1153))))

(declare-fun b!1338027 () Bool)

(declare-fun Unit!43898 () Unit!43889)

(assert (=> b!1338027 (= e!761900 Unit!43898)))

(declare-fun b!1338028 () Bool)

(assert (=> b!1338028 (= e!761901 (isDefined!523 (getValueByKey!720 (toList!10894 (+!4723 lt!593286 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284))) k0!1153)))))

(assert (= (and d!143823 c!126132) b!1338026))

(assert (= (and d!143823 (not c!126132)) b!1338027))

(assert (= (and d!143823 (not res!887934)) b!1338028))

(declare-fun m!1226241 () Bool)

(assert (=> d!143823 m!1226241))

(declare-fun m!1226243 () Bool)

(assert (=> b!1338026 m!1226243))

(declare-fun m!1226245 () Bool)

(assert (=> b!1338026 m!1226245))

(assert (=> b!1338026 m!1226245))

(declare-fun m!1226247 () Bool)

(assert (=> b!1338026 m!1226247))

(assert (=> b!1338028 m!1226245))

(assert (=> b!1338028 m!1226245))

(assert (=> b!1338028 m!1226247))

(assert (=> b!1337841 d!143823))

(declare-fun d!143825 () Bool)

(declare-fun e!761904 () Bool)

(assert (=> d!143825 e!761904))

(declare-fun res!887940 () Bool)

(assert (=> d!143825 (=> (not res!887940) (not e!761904))))

(declare-fun lt!593430 () ListLongMap!21757)

(assert (=> d!143825 (= res!887940 (contains!8999 lt!593430 (_1!12054 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284))))))

(declare-fun lt!593431 () List!31254)

(assert (=> d!143825 (= lt!593430 (ListLongMap!21758 lt!593431))))

(declare-fun lt!593429 () Unit!43889)

(declare-fun lt!593428 () Unit!43889)

(assert (=> d!143825 (= lt!593429 lt!593428)))

(assert (=> d!143825 (= (getValueByKey!720 lt!593431 (_1!12054 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284))) (Some!770 (_2!12054 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284))))))

(declare-fun lemmaContainsTupThenGetReturnValue!363 (List!31254 (_ BitVec 64) V!54395) Unit!43889)

(assert (=> d!143825 (= lt!593428 (lemmaContainsTupThenGetReturnValue!363 lt!593431 (_1!12054 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284)) (_2!12054 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284))))))

(declare-fun insertStrictlySorted!492 (List!31254 (_ BitVec 64) V!54395) List!31254)

(assert (=> d!143825 (= lt!593431 (insertStrictlySorted!492 (toList!10894 lt!593286) (_1!12054 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284)) (_2!12054 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284))))))

(assert (=> d!143825 (= (+!4723 lt!593286 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284)) lt!593430)))

(declare-fun b!1338033 () Bool)

(declare-fun res!887939 () Bool)

(assert (=> b!1338033 (=> (not res!887939) (not e!761904))))

(assert (=> b!1338033 (= res!887939 (= (getValueByKey!720 (toList!10894 lt!593430) (_1!12054 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284))) (Some!770 (_2!12054 (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284)))))))

(declare-fun b!1338034 () Bool)

(declare-fun contains!9002 (List!31254 tuple2!24088) Bool)

(assert (=> b!1338034 (= e!761904 (contains!9002 (toList!10894 lt!593430) (tuple2!24089 (select (arr!43845 _keys!1590) from!1980) lt!593284)))))

(assert (= (and d!143825 res!887940) b!1338033))

(assert (= (and b!1338033 res!887939) b!1338034))

(declare-fun m!1226249 () Bool)

(assert (=> d!143825 m!1226249))

(declare-fun m!1226251 () Bool)

(assert (=> d!143825 m!1226251))

(declare-fun m!1226253 () Bool)

(assert (=> d!143825 m!1226253))

(declare-fun m!1226255 () Bool)

(assert (=> d!143825 m!1226255))

(declare-fun m!1226257 () Bool)

(assert (=> b!1338033 m!1226257))

(declare-fun m!1226259 () Bool)

(assert (=> b!1338034 m!1226259))

(assert (=> b!1337841 d!143825))

(declare-fun b!1338059 () Bool)

(declare-fun e!761925 () ListLongMap!21757)

(declare-fun call!64981 () ListLongMap!21757)

(assert (=> b!1338059 (= e!761925 call!64981)))

(declare-fun b!1338060 () Bool)

(declare-fun e!761923 () Bool)

(assert (=> b!1338060 (= e!761923 (validKeyInArray!0 (select (arr!43845 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1338060 (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000)))

(declare-fun b!1338061 () Bool)

(declare-fun e!761919 () ListLongMap!21757)

(assert (=> b!1338061 (= e!761919 (ListLongMap!21758 Nil!31251))))

(declare-fun b!1338062 () Bool)

(assert (=> b!1338062 (= e!761919 e!761925)))

(declare-fun c!126141 () Bool)

(assert (=> b!1338062 (= c!126141 (validKeyInArray!0 (select (arr!43845 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(declare-fun b!1338063 () Bool)

(declare-fun res!887949 () Bool)

(declare-fun e!761921 () Bool)

(assert (=> b!1338063 (=> (not res!887949) (not e!761921))))

(declare-fun lt!593448 () ListLongMap!21757)

(assert (=> b!1338063 (= res!887949 (not (contains!8999 lt!593448 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!64978 () Bool)

(assert (=> bm!64978 (= call!64981 (getCurrentListMapNoExtraKeys!6446 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) defaultEntry!1323))))

(declare-fun b!1338064 () Bool)

(declare-fun e!761924 () Bool)

(assert (=> b!1338064 (= e!761921 e!761924)))

(declare-fun c!126143 () Bool)

(assert (=> b!1338064 (= c!126143 e!761923)))

(declare-fun res!887952 () Bool)

(assert (=> b!1338064 (=> (not res!887952) (not e!761923))))

(assert (=> b!1338064 (= res!887952 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44396 _keys!1590)))))

(declare-fun b!1338066 () Bool)

(assert (=> b!1338066 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44396 _keys!1590)))))

(assert (=> b!1338066 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44395 _values!1320)))))

(declare-fun e!761920 () Bool)

(assert (=> b!1338066 (= e!761920 (= (apply!1070 lt!593448 (select (arr!43845 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))) (get!22169 (select (arr!43844 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3760 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1338067 () Bool)

(declare-fun e!761922 () Bool)

(assert (=> b!1338067 (= e!761924 e!761922)))

(declare-fun c!126144 () Bool)

(assert (=> b!1338067 (= c!126144 (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44396 _keys!1590)))))

(declare-fun b!1338068 () Bool)

(declare-fun lt!593447 () Unit!43889)

(declare-fun lt!593450 () Unit!43889)

(assert (=> b!1338068 (= lt!593447 lt!593450)))

(declare-fun lt!593446 () V!54395)

(declare-fun lt!593452 () (_ BitVec 64))

(declare-fun lt!593451 () (_ BitVec 64))

(declare-fun lt!593449 () ListLongMap!21757)

(assert (=> b!1338068 (not (contains!8999 (+!4723 lt!593449 (tuple2!24089 lt!593452 lt!593446)) lt!593451))))

(declare-fun addStillNotContains!508 (ListLongMap!21757 (_ BitVec 64) V!54395 (_ BitVec 64)) Unit!43889)

(assert (=> b!1338068 (= lt!593450 (addStillNotContains!508 lt!593449 lt!593452 lt!593446 lt!593451))))

(assert (=> b!1338068 (= lt!593451 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!1338068 (= lt!593446 (get!22169 (select (arr!43844 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3760 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!1338068 (= lt!593452 (select (arr!43845 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)))))

(assert (=> b!1338068 (= lt!593449 call!64981)))

(assert (=> b!1338068 (= e!761925 (+!4723 call!64981 (tuple2!24089 (select (arr!43845 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980)) (get!22169 (select (arr!43844 _values!1320) (bvadd #b00000000000000000000000000000001 from!1980)) (dynLambda!3760 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1338069 () Bool)

(assert (=> b!1338069 (= e!761924 e!761920)))

(assert (=> b!1338069 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1980) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1980) (size!44396 _keys!1590)))))

(declare-fun res!887950 () Bool)

(assert (=> b!1338069 (= res!887950 (contains!8999 lt!593448 (select (arr!43845 _keys!1590) (bvadd #b00000000000000000000000000000001 from!1980))))))

(assert (=> b!1338069 (=> (not res!887950) (not e!761920))))

(declare-fun b!1338070 () Bool)

(assert (=> b!1338070 (= e!761922 (= lt!593448 (getCurrentListMapNoExtraKeys!6446 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980 #b00000000000000000000000000000001) defaultEntry!1323)))))

(declare-fun d!143827 () Bool)

(assert (=> d!143827 e!761921))

(declare-fun res!887951 () Bool)

(assert (=> d!143827 (=> (not res!887951) (not e!761921))))

(assert (=> d!143827 (= res!887951 (not (contains!8999 lt!593448 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!143827 (= lt!593448 e!761919)))

(declare-fun c!126142 () Bool)

(assert (=> d!143827 (= c!126142 (bvsge (bvadd #b00000000000000000000000000000001 from!1980) (size!44396 _keys!1590)))))

(assert (=> d!143827 (validMask!0 mask!1998)))

(assert (=> d!143827 (= (getCurrentListMapNoExtraKeys!6446 _keys!1590 _values!1320 mask!1998 extraKeys!1241 zeroValue!1262 minValue!1262 (bvadd #b00000000000000000000000000000001 from!1980) defaultEntry!1323) lt!593448)))

(declare-fun b!1338065 () Bool)

(declare-fun isEmpty!1091 (ListLongMap!21757) Bool)

(assert (=> b!1338065 (= e!761922 (isEmpty!1091 lt!593448))))

(assert (= (and d!143827 c!126142) b!1338061))

(assert (= (and d!143827 (not c!126142)) b!1338062))

(assert (= (and b!1338062 c!126141) b!1338068))

(assert (= (and b!1338062 (not c!126141)) b!1338059))

(assert (= (or b!1338068 b!1338059) bm!64978))

(assert (= (and d!143827 res!887951) b!1338063))

(assert (= (and b!1338063 res!887949) b!1338064))

(assert (= (and b!1338064 res!887952) b!1338060))

(assert (= (and b!1338064 c!126143) b!1338069))

(assert (= (and b!1338064 (not c!126143)) b!1338067))

(assert (= (and b!1338069 res!887950) b!1338066))

(assert (= (and b!1338067 c!126144) b!1338070))

(assert (= (and b!1338067 (not c!126144)) b!1338065))

(declare-fun b_lambda!24273 () Bool)

(assert (=> (not b_lambda!24273) (not b!1338066)))

(assert (=> b!1338066 t!45588))

(declare-fun b_and!50087 () Bool)

(assert (= b_and!50085 (and (=> t!45588 result!25347) b_and!50087)))

(declare-fun b_lambda!24275 () Bool)

(assert (=> (not b_lambda!24275) (not b!1338068)))

(assert (=> b!1338068 t!45588))

(declare-fun b_and!50089 () Bool)

(assert (= b_and!50087 (and (=> t!45588 result!25347) b_and!50089)))

(declare-fun m!1226261 () Bool)

(assert (=> b!1338070 m!1226261))

(declare-fun m!1226263 () Bool)

(assert (=> b!1338065 m!1226263))

(assert (=> b!1338060 m!1226177))

(assert (=> b!1338060 m!1226177))

(assert (=> b!1338060 m!1226179))

(assert (=> b!1338068 m!1226177))

(assert (=> b!1338068 m!1226223))

(assert (=> b!1338068 m!1226041))

(assert (=> b!1338068 m!1226225))

(declare-fun m!1226265 () Bool)

(assert (=> b!1338068 m!1226265))

(declare-fun m!1226267 () Bool)

(assert (=> b!1338068 m!1226267))

(assert (=> b!1338068 m!1226265))

(declare-fun m!1226269 () Bool)

(assert (=> b!1338068 m!1226269))

(assert (=> b!1338068 m!1226041))

(assert (=> b!1338068 m!1226223))

(declare-fun m!1226271 () Bool)

(assert (=> b!1338068 m!1226271))

(assert (=> b!1338062 m!1226177))

(assert (=> b!1338062 m!1226177))

(assert (=> b!1338062 m!1226179))

(declare-fun m!1226273 () Bool)

(assert (=> b!1338063 m!1226273))

(declare-fun m!1226275 () Bool)

(assert (=> d!143827 m!1226275))

(assert (=> d!143827 m!1226029))

(assert (=> bm!64978 m!1226261))

(assert (=> b!1338066 m!1226223))

(assert (=> b!1338066 m!1226177))

(assert (=> b!1338066 m!1226223))

(assert (=> b!1338066 m!1226041))

(assert (=> b!1338066 m!1226225))

(assert (=> b!1338066 m!1226177))

(declare-fun m!1226277 () Bool)

(assert (=> b!1338066 m!1226277))

(assert (=> b!1338066 m!1226041))

(assert (=> b!1338069 m!1226177))

(assert (=> b!1338069 m!1226177))

(declare-fun m!1226279 () Bool)

(assert (=> b!1338069 m!1226279))

(assert (=> b!1337841 d!143827))

(declare-fun d!143829 () Bool)

(declare-fun c!126147 () Bool)

(assert (=> d!143829 (= c!126147 ((_ is ValueCellFull!17586) (select (arr!43844 _values!1320) from!1980)))))

(declare-fun e!761928 () V!54395)

(assert (=> d!143829 (= (get!22169 (select (arr!43844 _values!1320) from!1980) (dynLambda!3760 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)) e!761928)))

(declare-fun b!1338075 () Bool)

(declare-fun get!22171 (ValueCell!17586 V!54395) V!54395)

(assert (=> b!1338075 (= e!761928 (get!22171 (select (arr!43844 _values!1320) from!1980) (dynLambda!3760 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1338076 () Bool)

(declare-fun get!22172 (ValueCell!17586 V!54395) V!54395)

(assert (=> b!1338076 (= e!761928 (get!22172 (select (arr!43844 _values!1320) from!1980) (dynLambda!3760 defaultEntry!1323 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!143829 c!126147) b!1338075))

(assert (= (and d!143829 (not c!126147)) b!1338076))

(assert (=> b!1338075 m!1226043))

(assert (=> b!1338075 m!1226041))

(declare-fun m!1226281 () Bool)

(assert (=> b!1338075 m!1226281))

(assert (=> b!1338076 m!1226043))

(assert (=> b!1338076 m!1226041))

(declare-fun m!1226283 () Bool)

(assert (=> b!1338076 m!1226283))

(assert (=> b!1337841 d!143829))

(declare-fun condMapEmpty!57144 () Bool)

(declare-fun mapDefault!57144 () ValueCell!17586)

(assert (=> mapNonEmpty!57138 (= condMapEmpty!57144 (= mapRest!57138 ((as const (Array (_ BitVec 32) ValueCell!17586)) mapDefault!57144)))))

(declare-fun e!761934 () Bool)

(declare-fun mapRes!57144 () Bool)

(assert (=> mapNonEmpty!57138 (= tp!108825 (and e!761934 mapRes!57144))))

(declare-fun b!1338084 () Bool)

(assert (=> b!1338084 (= e!761934 tp_is_empty!36969)))

(declare-fun mapNonEmpty!57144 () Bool)

(declare-fun tp!108835 () Bool)

(declare-fun e!761933 () Bool)

(assert (=> mapNonEmpty!57144 (= mapRes!57144 (and tp!108835 e!761933))))

(declare-fun mapRest!57144 () (Array (_ BitVec 32) ValueCell!17586))

(declare-fun mapValue!57144 () ValueCell!17586)

(declare-fun mapKey!57144 () (_ BitVec 32))

(assert (=> mapNonEmpty!57144 (= mapRest!57138 (store mapRest!57144 mapKey!57144 mapValue!57144))))

(declare-fun mapIsEmpty!57144 () Bool)

(assert (=> mapIsEmpty!57144 mapRes!57144))

(declare-fun b!1338083 () Bool)

(assert (=> b!1338083 (= e!761933 tp_is_empty!36969)))

(assert (= (and mapNonEmpty!57138 condMapEmpty!57144) mapIsEmpty!57144))

(assert (= (and mapNonEmpty!57138 (not condMapEmpty!57144)) mapNonEmpty!57144))

(assert (= (and mapNonEmpty!57144 ((_ is ValueCellFull!17586) mapValue!57144)) b!1338083))

(assert (= (and mapNonEmpty!57138 ((_ is ValueCellFull!17586) mapDefault!57144)) b!1338084))

(declare-fun m!1226285 () Bool)

(assert (=> mapNonEmpty!57144 m!1226285))

(declare-fun b_lambda!24277 () Bool)

(assert (= b_lambda!24273 (or (and start!112842 b_free!31059) b_lambda!24277)))

(declare-fun b_lambda!24279 () Bool)

(assert (= b_lambda!24275 (or (and start!112842 b_free!31059) b_lambda!24279)))

(declare-fun b_lambda!24281 () Bool)

(assert (= b_lambda!24269 (or (and start!112842 b_free!31059) b_lambda!24281)))

(declare-fun b_lambda!24283 () Bool)

(assert (= b_lambda!24271 (or (and start!112842 b_free!31059) b_lambda!24283)))

(check-sat (not b_lambda!24277) (not d!143815) (not b!1337969) (not b!1338070) (not d!143819) (not bm!64978) (not b!1338009) (not b!1337995) (not bm!64968) (not b!1338076) (not d!143799) (not b!1338003) (not b!1337906) (not b!1338011) (not bm!64974) (not b!1338026) (not b!1338062) (not d!143827) (not b!1338023) (not d!143801) (not b!1337980) (not bm!64961) (not d!143823) (not b!1337908) (not d!143817) (not b!1337997) (not bm!64960) (not b!1337957) b_and!50089 (not b!1337994) (not b!1338001) (not b!1338075) (not d!143813) (not bm!64962) (not b!1338025) (not b!1337981) (not b!1337956) (not b!1338063) (not b_next!31059) (not b!1338002) (not bm!64958) (not bm!64975) (not b!1337999) (not b!1338020) (not b!1338008) (not b!1338065) (not bm!64973) (not b!1337952) (not b_lambda!24279) (not b!1338033) (not b!1338066) (not b!1338060) (not b_lambda!24281) (not b!1338006) (not b!1337958) (not b!1337960) (not b!1338034) (not b!1338028) (not b!1338069) (not b!1337951) tp_is_empty!36969 (not mapNonEmpty!57144) (not bm!64971) (not b_lambda!24283) (not d!143825) (not b!1338068) (not b!1338007) (not b_lambda!24267) (not bm!64965) (not b!1337955))
(check-sat b_and!50089 (not b_next!31059))
