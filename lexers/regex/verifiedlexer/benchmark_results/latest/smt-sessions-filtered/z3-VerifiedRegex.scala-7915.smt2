; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412752 () Bool)

(assert start!412752)

(declare-fun b!4299009 () Bool)

(declare-fun b_free!127965 () Bool)

(declare-fun b_next!128669 () Bool)

(assert (=> b!4299009 (= b_free!127965 (not b_next!128669))))

(declare-fun tp!1320762 () Bool)

(declare-fun b_and!339253 () Bool)

(assert (=> b!4299009 (= tp!1320762 b_and!339253)))

(declare-fun b!4299001 () Bool)

(declare-fun b_free!127967 () Bool)

(declare-fun b_next!128671 () Bool)

(assert (=> b!4299001 (= b_free!127967 (not b_next!128671))))

(declare-fun tp!1320765 () Bool)

(declare-fun b_and!339255 () Bool)

(assert (=> b!4299001 (= tp!1320765 b_and!339255)))

(declare-fun b_free!127969 () Bool)

(declare-fun b_next!128673 () Bool)

(assert (=> start!412752 (= b_free!127969 (not b_next!128673))))

(declare-fun tp!1320766 () Bool)

(declare-fun b_and!339257 () Bool)

(assert (=> start!412752 (= tp!1320766 b_and!339257)))

(declare-fun res!1761965 () Bool)

(declare-fun e!2672047 () Bool)

(assert (=> start!412752 (=> (not res!1761965) (not e!2672047))))

(declare-datatypes ((K!9024 0))(
  ( (K!9025 (val!15477 Int)) )
))
(declare-datatypes ((V!9226 0))(
  ( (V!9227 (val!15478 Int)) )
))
(declare-datatypes ((tuple2!45826 0))(
  ( (tuple2!45827 (_1!26192 K!9024) (_2!26192 V!9226)) )
))
(declare-datatypes ((List!48045 0))(
  ( (Nil!47921) (Cons!47921 (h!53341 tuple2!45826) (t!354726 List!48045)) )
))
(declare-datatypes ((array!16138 0))(
  ( (array!16139 (arr!7207 (Array (_ BitVec 32) (_ BitVec 64))) (size!35246 (_ BitVec 32))) )
))
(declare-datatypes ((array!16140 0))(
  ( (array!16141 (arr!7208 (Array (_ BitVec 32) List!48045)) (size!35247 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9022 0))(
  ( (LongMapFixedSize!9023 (defaultEntry!4896 Int) (mask!12995 (_ BitVec 32)) (extraKeys!4760 (_ BitVec 32)) (zeroValue!4770 List!48045) (minValue!4770 List!48045) (_size!9065 (_ BitVec 32)) (_keys!4811 array!16138) (_values!4792 array!16140) (_vacant!4572 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17853 0))(
  ( (Cell!17854 (v!41875 LongMapFixedSize!9022)) )
))
(declare-datatypes ((MutLongMap!4511 0))(
  ( (LongMap!4511 (underlying!9251 Cell!17853)) (MutLongMapExt!4510 (__x!29558 Int)) )
))
(declare-datatypes ((Hashable!4427 0))(
  ( (HashableExt!4426 (__x!29559 Int)) )
))
(declare-datatypes ((Cell!17855 0))(
  ( (Cell!17856 (v!41876 MutLongMap!4511)) )
))
(declare-datatypes ((MutableMap!4417 0))(
  ( (MutableMapExt!4416 (__x!29560 Int)) (HashMap!4417 (underlying!9252 Cell!17855) (hashF!6459 Hashable!4427) (_size!9066 (_ BitVec 32)) (defaultValue!4588 Int)) )
))
(declare-fun hm!64 () MutableMap!4417)

(get-info :version)

(assert (=> start!412752 (= res!1761965 ((_ is HashMap!4417) hm!64))))

(assert (=> start!412752 e!2672047))

(declare-fun e!2672048 () Bool)

(assert (=> start!412752 e!2672048))

(declare-fun tp_is_empty!23217 () Bool)

(assert (=> start!412752 tp_is_empty!23217))

(declare-fun tp_is_empty!23219 () Bool)

(assert (=> start!412752 tp_is_empty!23219))

(assert (=> start!412752 tp!1320766))

(declare-fun mapNonEmpty!20262 () Bool)

(declare-fun mapRes!20262 () Bool)

(declare-fun tp!1320759 () Bool)

(declare-fun tp!1320764 () Bool)

(assert (=> mapNonEmpty!20262 (= mapRes!20262 (and tp!1320759 tp!1320764))))

(declare-fun mapValue!20262 () List!48045)

(declare-fun mapRest!20262 () (Array (_ BitVec 32) List!48045))

(declare-fun mapKey!20262 () (_ BitVec 32))

(assert (=> mapNonEmpty!20262 (= (arr!7208 (_values!4792 (v!41875 (underlying!9251 (v!41876 (underlying!9252 hm!64)))))) (store mapRest!20262 mapKey!20262 mapValue!20262))))

(declare-fun b!4299000 () Bool)

(declare-fun e!2672045 () Bool)

(declare-fun e!2672040 () Bool)

(assert (=> b!4299000 (= e!2672045 e!2672040)))

(declare-fun res!1761967 () Bool)

(assert (=> b!4299000 (=> (not res!1761967) (not e!2672040))))

(declare-fun p!6034 () Int)

(declare-fun lt!1520754 () tuple2!45826)

(declare-fun dynLambda!20353 (Int tuple2!45826) Bool)

(assert (=> b!4299000 (= res!1761967 (dynLambda!20353 p!6034 lt!1520754))))

(declare-fun k0!1716 () K!9024)

(declare-fun v!9471 () V!9226)

(assert (=> b!4299000 (= lt!1520754 (tuple2!45827 k0!1716 v!9471))))

(declare-fun tp!1320763 () Bool)

(declare-fun tp!1320761 () Bool)

(declare-fun e!2672043 () Bool)

(declare-fun e!2672042 () Bool)

(declare-fun array_inv!5165 (array!16138) Bool)

(declare-fun array_inv!5166 (array!16140) Bool)

(assert (=> b!4299001 (= e!2672043 (and tp!1320765 tp!1320761 tp!1320763 (array_inv!5165 (_keys!4811 (v!41875 (underlying!9251 (v!41876 (underlying!9252 hm!64)))))) (array_inv!5166 (_values!4792 (v!41875 (underlying!9251 (v!41876 (underlying!9252 hm!64)))))) e!2672042))))

(declare-fun mapIsEmpty!20262 () Bool)

(assert (=> mapIsEmpty!20262 mapRes!20262))

(declare-fun b!4299002 () Bool)

(declare-datatypes ((Unit!66700 0))(
  ( (Unit!66701) )
))
(declare-fun e!2672049 () Unit!66700)

(declare-fun Unit!66702 () Unit!66700)

(assert (=> b!4299002 (= e!2672049 Unit!66702)))

(declare-fun b!4299003 () Bool)

(declare-fun tp!1320760 () Bool)

(assert (=> b!4299003 (= e!2672042 (and tp!1320760 mapRes!20262))))

(declare-fun condMapEmpty!20262 () Bool)

(declare-fun mapDefault!20262 () List!48045)

(assert (=> b!4299003 (= condMapEmpty!20262 (= (arr!7208 (_values!4792 (v!41875 (underlying!9251 (v!41876 (underlying!9252 hm!64)))))) ((as const (Array (_ BitVec 32) List!48045)) mapDefault!20262)))))

(declare-fun b!4299004 () Bool)

(assert (=> b!4299004 (= e!2672047 e!2672045)))

(declare-fun res!1761966 () Bool)

(assert (=> b!4299004 (=> (not res!1761966) (not e!2672045))))

(declare-datatypes ((ListMap!1461 0))(
  ( (ListMap!1462 (toList!2181 List!48045)) )
))
(declare-fun lt!1520749 () ListMap!1461)

(declare-fun forall!8618 (List!48045 Int) Bool)

(assert (=> b!4299004 (= res!1761966 (forall!8618 (toList!2181 lt!1520749) p!6034))))

(declare-fun map!9880 (MutableMap!4417) ListMap!1461)

(assert (=> b!4299004 (= lt!1520749 (map!9880 hm!64))))

(declare-fun b!4299005 () Bool)

(declare-fun e!2672050 () Bool)

(declare-fun e!2672046 () Bool)

(declare-fun lt!1520751 () MutLongMap!4511)

(assert (=> b!4299005 (= e!2672050 (and e!2672046 ((_ is LongMap!4511) lt!1520751)))))

(assert (=> b!4299005 (= lt!1520751 (v!41876 (underlying!9252 hm!64)))))

(declare-fun b!4299006 () Bool)

(declare-fun e!2672041 () Bool)

(declare-datatypes ((tuple2!45828 0))(
  ( (tuple2!45829 (_1!26193 Bool) (_2!26193 MutableMap!4417)) )
))
(declare-fun lt!1520756 () tuple2!45828)

(declare-fun valid!3489 (MutableMap!4417) Bool)

(assert (=> b!4299006 (= e!2672041 (not (valid!3489 (_2!26193 lt!1520756))))))

(declare-fun b!4299007 () Bool)

(declare-fun res!1761968 () Bool)

(assert (=> b!4299007 (=> (not res!1761968) (not e!2672047))))

(assert (=> b!4299007 (= res!1761968 (valid!3489 hm!64))))

(declare-fun b!4299008 () Bool)

(declare-fun e!2672044 () Bool)

(assert (=> b!4299008 (= e!2672046 e!2672044)))

(assert (=> b!4299009 (= e!2672048 (and e!2672050 tp!1320762))))

(declare-fun b!4299010 () Bool)

(declare-fun lt!1520757 () Unit!66700)

(assert (=> b!4299010 (= e!2672049 lt!1520757)))

(declare-fun lt!1520753 () Unit!66700)

(declare-fun lemmaInsertNoDuplicatedKeysPreservesForall!9 (List!48045 K!9024 V!9226 Int) Unit!66700)

(assert (=> b!4299010 (= lt!1520753 (lemmaInsertNoDuplicatedKeysPreservesForall!9 (toList!2181 lt!1520749) k0!1716 v!9471 p!6034))))

(declare-fun insertNoDuplicatedKeys!18 (List!48045 K!9024 V!9226) List!48045)

(assert (=> b!4299010 (forall!8618 (insertNoDuplicatedKeys!18 (toList!2181 lt!1520749) k0!1716 v!9471) p!6034)))

(declare-fun lt!1520752 () ListMap!1461)

(assert (=> b!4299010 (= lt!1520752 (map!9880 (_2!26193 lt!1520756)))))

(declare-fun lt!1520755 () ListMap!1461)

(declare-fun lemmaForallSubset!19 (List!48045 List!48045 Int) Unit!66700)

(assert (=> b!4299010 (= lt!1520757 (lemmaForallSubset!19 (toList!2181 lt!1520752) (toList!2181 lt!1520755) p!6034))))

(assert (=> b!4299010 (forall!8618 (toList!2181 lt!1520752) p!6034)))

(declare-fun b!4299011 () Bool)

(assert (=> b!4299011 (= e!2672044 e!2672043)))

(declare-fun b!4299012 () Bool)

(assert (=> b!4299012 (= e!2672040 e!2672041)))

(declare-fun res!1761969 () Bool)

(assert (=> b!4299012 (=> (not res!1761969) (not e!2672041))))

(assert (=> b!4299012 (= res!1761969 ((_ is HashMap!4417) (_2!26193 lt!1520756)))))

(declare-fun lt!1520750 () Unit!66700)

(assert (=> b!4299012 (= lt!1520750 e!2672049)))

(declare-fun c!731275 () Bool)

(assert (=> b!4299012 (= c!731275 (_1!26193 lt!1520756))))

(declare-fun update!319 (MutableMap!4417 K!9024 V!9226) tuple2!45828)

(assert (=> b!4299012 (= lt!1520756 (update!319 hm!64 k0!1716 v!9471))))

(declare-fun +!161 (ListMap!1461 tuple2!45826) ListMap!1461)

(assert (=> b!4299012 (= lt!1520755 (+!161 lt!1520749 lt!1520754))))

(assert (= (and start!412752 res!1761965) b!4299007))

(assert (= (and b!4299007 res!1761968) b!4299004))

(assert (= (and b!4299004 res!1761966) b!4299000))

(assert (= (and b!4299000 res!1761967) b!4299012))

(assert (= (and b!4299012 c!731275) b!4299010))

(assert (= (and b!4299012 (not c!731275)) b!4299002))

(assert (= (and b!4299012 res!1761969) b!4299006))

(assert (= (and b!4299003 condMapEmpty!20262) mapIsEmpty!20262))

(assert (= (and b!4299003 (not condMapEmpty!20262)) mapNonEmpty!20262))

(assert (= b!4299001 b!4299003))

(assert (= b!4299011 b!4299001))

(assert (= b!4299008 b!4299011))

(assert (= (and b!4299005 ((_ is LongMap!4511) (v!41876 (underlying!9252 hm!64)))) b!4299008))

(assert (= b!4299009 b!4299005))

(assert (= (and start!412752 ((_ is HashMap!4417) hm!64)) b!4299009))

(declare-fun b_lambda!126257 () Bool)

(assert (=> (not b_lambda!126257) (not b!4299000)))

(declare-fun t!354725 () Bool)

(declare-fun tb!257165 () Bool)

(assert (=> (and start!412752 (= p!6034 p!6034) t!354725) tb!257165))

(declare-fun result!314426 () Bool)

(assert (=> tb!257165 (= result!314426 true)))

(assert (=> b!4299000 t!354725))

(declare-fun b_and!339259 () Bool)

(assert (= b_and!339257 (and (=> t!354725 result!314426) b_and!339259)))

(declare-fun m!4891113 () Bool)

(assert (=> b!4299001 m!4891113))

(declare-fun m!4891115 () Bool)

(assert (=> b!4299001 m!4891115))

(declare-fun m!4891117 () Bool)

(assert (=> b!4299006 m!4891117))

(declare-fun m!4891119 () Bool)

(assert (=> mapNonEmpty!20262 m!4891119))

(declare-fun m!4891121 () Bool)

(assert (=> b!4299004 m!4891121))

(declare-fun m!4891123 () Bool)

(assert (=> b!4299004 m!4891123))

(declare-fun m!4891125 () Bool)

(assert (=> b!4299007 m!4891125))

(declare-fun m!4891127 () Bool)

(assert (=> b!4299000 m!4891127))

(declare-fun m!4891129 () Bool)

(assert (=> b!4299010 m!4891129))

(declare-fun m!4891131 () Bool)

(assert (=> b!4299010 m!4891131))

(declare-fun m!4891133 () Bool)

(assert (=> b!4299010 m!4891133))

(declare-fun m!4891135 () Bool)

(assert (=> b!4299010 m!4891135))

(declare-fun m!4891137 () Bool)

(assert (=> b!4299010 m!4891137))

(assert (=> b!4299010 m!4891137))

(declare-fun m!4891139 () Bool)

(assert (=> b!4299010 m!4891139))

(declare-fun m!4891141 () Bool)

(assert (=> b!4299012 m!4891141))

(declare-fun m!4891143 () Bool)

(assert (=> b!4299012 m!4891143))

(check-sat (not b!4299003) tp_is_empty!23219 (not b!4299006) (not b!4299001) b_and!339253 b_and!339255 (not b!4299004) (not b!4299012) tp_is_empty!23217 (not b!4299007) (not b_lambda!126257) b_and!339259 (not mapNonEmpty!20262) (not b_next!128673) (not b!4299010) (not b_next!128671) (not b_next!128669))
(check-sat b_and!339259 (not b_next!128673) b_and!339253 b_and!339255 (not b_next!128671) (not b_next!128669))
(get-model)

(declare-fun b_lambda!126259 () Bool)

(assert (= b_lambda!126257 (or (and start!412752 b_free!127969) b_lambda!126259)))

(check-sat (not b!4299007) (not b!4299003) tp_is_empty!23219 (not b!4299006) (not b!4299001) (not b_lambda!126259) b_and!339253 b_and!339255 (not b!4299004) (not b!4299012) tp_is_empty!23217 b_and!339259 (not mapNonEmpty!20262) (not b_next!128673) (not b!4299010) (not b_next!128671) (not b_next!128669))
(check-sat b_and!339259 (not b_next!128673) b_and!339253 b_and!339255 (not b_next!128671) (not b_next!128669))
(get-model)

(declare-fun d!1266472 () Bool)

(declare-fun res!1761974 () Bool)

(declare-fun e!2672053 () Bool)

(assert (=> d!1266472 (=> (not res!1761974) (not e!2672053))))

(declare-fun valid!3490 (MutLongMap!4511) Bool)

(assert (=> d!1266472 (= res!1761974 (valid!3490 (v!41876 (underlying!9252 hm!64))))))

(assert (=> d!1266472 (= (valid!3489 hm!64) e!2672053)))

(declare-fun b!4299017 () Bool)

(declare-fun res!1761975 () Bool)

(assert (=> b!4299017 (=> (not res!1761975) (not e!2672053))))

(declare-fun lambda!131900 () Int)

(declare-datatypes ((tuple2!45830 0))(
  ( (tuple2!45831 (_1!26194 (_ BitVec 64)) (_2!26194 List!48045)) )
))
(declare-datatypes ((List!48046 0))(
  ( (Nil!47922) (Cons!47922 (h!53342 tuple2!45830) (t!354733 List!48046)) )
))
(declare-fun forall!8619 (List!48046 Int) Bool)

(declare-datatypes ((ListLongMap!795 0))(
  ( (ListLongMap!796 (toList!2182 List!48046)) )
))
(declare-fun map!9881 (MutLongMap!4511) ListLongMap!795)

(assert (=> b!4299017 (= res!1761975 (forall!8619 (toList!2182 (map!9881 (v!41876 (underlying!9252 hm!64)))) lambda!131900))))

(declare-fun b!4299018 () Bool)

(declare-fun allKeysSameHashInMap!266 (ListLongMap!795 Hashable!4427) Bool)

(assert (=> b!4299018 (= e!2672053 (allKeysSameHashInMap!266 (map!9881 (v!41876 (underlying!9252 hm!64))) (hashF!6459 hm!64)))))

(assert (= (and d!1266472 res!1761974) b!4299017))

(assert (= (and b!4299017 res!1761975) b!4299018))

(declare-fun m!4891145 () Bool)

(assert (=> d!1266472 m!4891145))

(declare-fun m!4891147 () Bool)

(assert (=> b!4299017 m!4891147))

(declare-fun m!4891149 () Bool)

(assert (=> b!4299017 m!4891149))

(assert (=> b!4299018 m!4891147))

(assert (=> b!4299018 m!4891147))

(declare-fun m!4891151 () Bool)

(assert (=> b!4299018 m!4891151))

(assert (=> b!4299007 d!1266472))

(declare-fun bs!603919 () Bool)

(declare-fun b!4299019 () Bool)

(assert (= bs!603919 (and b!4299019 b!4299017)))

(declare-fun lambda!131901 () Int)

(assert (=> bs!603919 (= lambda!131901 lambda!131900)))

(declare-fun d!1266474 () Bool)

(declare-fun res!1761976 () Bool)

(declare-fun e!2672054 () Bool)

(assert (=> d!1266474 (=> (not res!1761976) (not e!2672054))))

(assert (=> d!1266474 (= res!1761976 (valid!3490 (v!41876 (underlying!9252 (_2!26193 lt!1520756)))))))

(assert (=> d!1266474 (= (valid!3489 (_2!26193 lt!1520756)) e!2672054)))

(declare-fun res!1761977 () Bool)

(assert (=> b!4299019 (=> (not res!1761977) (not e!2672054))))

(assert (=> b!4299019 (= res!1761977 (forall!8619 (toList!2182 (map!9881 (v!41876 (underlying!9252 (_2!26193 lt!1520756))))) lambda!131901))))

(declare-fun b!4299020 () Bool)

(assert (=> b!4299020 (= e!2672054 (allKeysSameHashInMap!266 (map!9881 (v!41876 (underlying!9252 (_2!26193 lt!1520756)))) (hashF!6459 (_2!26193 lt!1520756))))))

(assert (= (and d!1266474 res!1761976) b!4299019))

(assert (= (and b!4299019 res!1761977) b!4299020))

(declare-fun m!4891153 () Bool)

(assert (=> d!1266474 m!4891153))

(declare-fun m!4891155 () Bool)

(assert (=> b!4299019 m!4891155))

(declare-fun m!4891157 () Bool)

(assert (=> b!4299019 m!4891157))

(assert (=> b!4299020 m!4891155))

(assert (=> b!4299020 m!4891155))

(declare-fun m!4891159 () Bool)

(assert (=> b!4299020 m!4891159))

(assert (=> b!4299006 d!1266474))

(declare-fun bs!603920 () Bool)

(declare-fun b!4299066 () Bool)

(assert (= bs!603920 (and b!4299066 b!4299017)))

(declare-fun lambda!131910 () Int)

(assert (=> bs!603920 (= lambda!131910 lambda!131900)))

(declare-fun bs!603921 () Bool)

(assert (= bs!603921 (and b!4299066 b!4299019)))

(assert (=> bs!603921 (= lambda!131910 lambda!131901)))

(declare-fun bs!603922 () Bool)

(declare-fun b!4299068 () Bool)

(assert (= bs!603922 (and b!4299068 b!4299017)))

(declare-fun lambda!131911 () Int)

(assert (=> bs!603922 (= lambda!131911 lambda!131900)))

(declare-fun bs!603923 () Bool)

(assert (= bs!603923 (and b!4299068 b!4299019)))

(assert (=> bs!603923 (= lambda!131911 lambda!131901)))

(declare-fun bs!603924 () Bool)

(assert (= bs!603924 (and b!4299068 b!4299066)))

(assert (=> bs!603924 (= lambda!131911 lambda!131910)))

(declare-fun b!4299059 () Bool)

(declare-fun e!2672083 () List!48045)

(declare-fun call!295671 () List!48045)

(assert (=> b!4299059 (= e!2672083 call!295671)))

(declare-fun b!4299060 () Bool)

(declare-fun call!295653 () ListMap!1461)

(declare-fun lt!1520891 () ListMap!1461)

(assert (=> b!4299060 (= call!295653 lt!1520891)))

(declare-fun lt!1520906 () Unit!66700)

(declare-fun Unit!66703 () Unit!66700)

(assert (=> b!4299060 (= lt!1520906 Unit!66703)))

(declare-fun call!295660 () Bool)

(assert (=> b!4299060 call!295660))

(declare-fun e!2672082 () Unit!66700)

(declare-fun Unit!66704 () Unit!66700)

(assert (=> b!4299060 (= e!2672082 Unit!66704)))

(declare-fun lt!1520914 () MutableMap!4417)

(declare-datatypes ((tuple2!45832 0))(
  ( (tuple2!45833 (_1!26195 Bool) (_2!26195 MutLongMap!4511)) )
))
(declare-fun lt!1520888 () tuple2!45832)

(declare-fun e!2672085 () tuple2!45828)

(declare-fun b!4299061 () Bool)

(declare-datatypes ((tuple2!45834 0))(
  ( (tuple2!45835 (_1!26196 Unit!66700) (_2!26196 MutableMap!4417)) )
))
(declare-fun Unit!66705 () Unit!66700)

(declare-fun Unit!66706 () Unit!66700)

(assert (=> b!4299061 (= e!2672085 (tuple2!45829 (_1!26195 lt!1520888) (_2!26196 (ite false (tuple2!45835 Unit!66705 (HashMap!4417 (Cell!17856 (_2!26195 lt!1520888)) (hashF!6459 hm!64) (bvadd (_size!9066 hm!64) #b00000000000000000000000000000001) (defaultValue!4588 hm!64))) (tuple2!45835 Unit!66706 lt!1520914)))))))

(declare-fun lt!1520882 () (_ BitVec 64))

(declare-fun call!295668 () (_ BitVec 64))

(assert (=> b!4299061 (= lt!1520882 call!295668)))

(declare-fun lt!1520921 () List!48045)

(assert (=> b!4299061 (= lt!1520921 call!295671)))

(declare-fun lt!1520920 () List!48045)

(declare-fun call!295676 () List!48045)

(assert (=> b!4299061 (= lt!1520920 (Cons!47921 (tuple2!45827 k0!1716 v!9471) call!295676))))

(declare-fun call!295664 () tuple2!45832)

(assert (=> b!4299061 (= lt!1520888 call!295664)))

(assert (=> b!4299061 (= lt!1520914 (HashMap!4417 (Cell!17856 (_2!26195 lt!1520888)) (hashF!6459 hm!64) (_size!9066 hm!64) (defaultValue!4588 hm!64)))))

(declare-fun c!731292 () Bool)

(assert (=> b!4299061 (= c!731292 (_1!26195 lt!1520888))))

(declare-fun lt!1520896 () Unit!66700)

(declare-fun e!2672084 () Unit!66700)

(assert (=> b!4299061 (= lt!1520896 e!2672084)))

(declare-fun b!4299062 () Bool)

(declare-fun e!2672079 () Unit!66700)

(declare-fun Unit!66707 () Unit!66700)

(assert (=> b!4299062 (= e!2672079 Unit!66707)))

(declare-fun b!4299063 () Bool)

(declare-fun e!2672086 () Bool)

(declare-fun call!295682 () Bool)

(assert (=> b!4299063 (= e!2672086 call!295682)))

(declare-fun lt!1520877 () (_ BitVec 64))

(declare-fun lt!1520874 () List!48045)

(declare-fun bm!295648 () Bool)

(declare-fun c!731294 () Bool)

(declare-fun call!295672 () Bool)

(declare-fun allKeysSameHash!118 (List!48045 (_ BitVec 64) Hashable!4427) Bool)

(assert (=> bm!295648 (= call!295672 (allKeysSameHash!118 (ite c!731294 lt!1520921 lt!1520874) (ite c!731294 lt!1520882 lt!1520877) (hashF!6459 hm!64)))))

(declare-fun b!4299064 () Bool)

(declare-fun e!2672078 () Bool)

(declare-fun call!295678 () Bool)

(assert (=> b!4299064 (= e!2672078 call!295678)))

(declare-fun d!1266476 () Bool)

(declare-fun e!2672081 () Bool)

(assert (=> d!1266476 e!2672081))

(declare-fun res!1761989 () Bool)

(assert (=> d!1266476 (=> (not res!1761989) (not e!2672081))))

(declare-fun lt!1520907 () tuple2!45828)

(assert (=> d!1266476 (= res!1761989 ((_ is HashMap!4417) (_2!26193 lt!1520907)))))

(declare-fun lt!1520871 () tuple2!45828)

(assert (=> d!1266476 (= lt!1520907 (tuple2!45829 (_1!26193 lt!1520871) (_2!26193 lt!1520871)))))

(assert (=> d!1266476 (= lt!1520871 e!2672085)))

(declare-fun contains!9839 (MutableMap!4417 K!9024) Bool)

(assert (=> d!1266476 (= c!731294 (contains!9839 hm!64 k0!1716))))

(declare-fun lt!1520910 () ListLongMap!795)

(assert (=> d!1266476 (= lt!1520910 (map!9881 (v!41876 (underlying!9252 hm!64))))))

(assert (=> d!1266476 (= lt!1520891 (map!9880 hm!64))))

(assert (=> d!1266476 (valid!3489 hm!64)))

(assert (=> d!1266476 (= (update!319 hm!64 k0!1716 v!9471) lt!1520907)))

(declare-fun bm!295649 () Bool)

(declare-fun call!295663 () Unit!66700)

(declare-fun lemmaRemovePairForKeyPreservesHash!105 (List!48045 K!9024 (_ BitVec 64) Hashable!4427) Unit!66700)

(assert (=> bm!295649 (= call!295663 (lemmaRemovePairForKeyPreservesHash!105 (ite c!731294 lt!1520921 lt!1520874) k0!1716 (ite c!731294 lt!1520882 lt!1520877) (hashF!6459 hm!64)))))

(declare-fun b!4299065 () Bool)

(declare-fun res!1761988 () Bool)

(assert (=> b!4299065 (=> (not res!1761988) (not e!2672081))))

(assert (=> b!4299065 (= res!1761988 (valid!3489 (_2!26193 lt!1520907)))))

(declare-fun call!295659 () ListMap!1461)

(declare-fun bm!295650 () Bool)

(declare-fun lt!1520872 () MutableMap!4417)

(assert (=> bm!295650 (= call!295659 (map!9880 (ite c!731294 lt!1520914 lt!1520872)))))

(declare-fun bm!295651 () Bool)

(declare-fun hash!834 (Hashable!4427 K!9024) (_ BitVec 64))

(assert (=> bm!295651 (= call!295668 (hash!834 (hashF!6459 hm!64) k0!1716))))

(declare-fun bm!295652 () Bool)

(declare-fun call!295675 () Bool)

(declare-fun lt!1520909 () ListLongMap!795)

(declare-fun lt!1520884 () ListLongMap!795)

(assert (=> bm!295652 (= call!295675 (forall!8619 (ite c!731294 (toList!2182 lt!1520884) (toList!2182 lt!1520909)) (ite c!731294 lambda!131910 lambda!131911)))))

(declare-fun call!295679 () Bool)

(assert (=> b!4299066 call!295679))

(declare-fun lt!1520911 () Unit!66700)

(declare-fun Unit!66708 () Unit!66700)

(assert (=> b!4299066 (= lt!1520911 Unit!66708)))

(declare-fun call!295669 () Bool)

(assert (=> b!4299066 call!295669))

(declare-fun lt!1520881 () Unit!66700)

(declare-fun Unit!66709 () Unit!66700)

(assert (=> b!4299066 (= lt!1520881 Unit!66709)))

(declare-fun call!295667 () Bool)

(assert (=> b!4299066 call!295667))

(declare-fun lt!1520868 () Unit!66700)

(declare-fun lt!1520894 () Unit!66700)

(assert (=> b!4299066 (= lt!1520868 lt!1520894)))

(declare-fun call!295655 () Bool)

(declare-fun call!295680 () Bool)

(assert (=> b!4299066 (= call!295655 call!295680)))

(declare-fun call!295681 () Unit!66700)

(assert (=> b!4299066 (= lt!1520894 call!295681)))

(declare-fun lt!1520900 () ListMap!1461)

(declare-fun call!295665 () ListMap!1461)

(assert (=> b!4299066 (= lt!1520900 call!295665)))

(declare-fun lt!1520873 () ListMap!1461)

(declare-fun call!295662 () ListMap!1461)

(assert (=> b!4299066 (= lt!1520873 call!295662)))

(declare-fun lt!1520902 () Unit!66700)

(declare-fun lt!1520879 () Unit!66700)

(assert (=> b!4299066 (= lt!1520902 lt!1520879)))

(declare-fun call!295670 () Bool)

(assert (=> b!4299066 call!295670))

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!30 (ListLongMap!795 (_ BitVec 64) List!48045 K!9024 V!9226 Hashable!4427) Unit!66700)

(assert (=> b!4299066 (= lt!1520879 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!30 lt!1520910 lt!1520882 lt!1520920 k0!1716 v!9471 (hashF!6459 hm!64)))))

(declare-fun lt!1520893 () Unit!66700)

(declare-fun lt!1520912 () Unit!66700)

(assert (=> b!4299066 (= lt!1520893 lt!1520912)))

(assert (=> b!4299066 e!2672078))

(declare-fun res!1761991 () Bool)

(assert (=> b!4299066 (=> (not res!1761991) (not e!2672078))))

(assert (=> b!4299066 (= res!1761991 call!295675)))

(declare-fun call!295661 () ListLongMap!795)

(assert (=> b!4299066 (= lt!1520884 call!295661)))

(declare-fun call!295658 () Unit!66700)

(assert (=> b!4299066 (= lt!1520912 call!295658)))

(declare-fun lt!1520917 () Unit!66700)

(declare-fun Unit!66710 () Unit!66700)

(assert (=> b!4299066 (= lt!1520917 Unit!66710)))

(declare-fun noDuplicateKeys!146 (List!48045) Bool)

(assert (=> b!4299066 (noDuplicateKeys!146 lt!1520920)))

(declare-fun lt!1520875 () Unit!66700)

(declare-fun Unit!66711 () Unit!66700)

(assert (=> b!4299066 (= lt!1520875 Unit!66711)))

(declare-fun containsKey!226 (List!48045 K!9024) Bool)

(assert (=> b!4299066 (not (containsKey!226 call!295676 k0!1716))))

(declare-fun lt!1520883 () Unit!66700)

(declare-fun Unit!66712 () Unit!66700)

(assert (=> b!4299066 (= lt!1520883 Unit!66712)))

(declare-fun lt!1520913 () Unit!66700)

(declare-fun lt!1520918 () Unit!66700)

(assert (=> b!4299066 (= lt!1520913 lt!1520918)))

(assert (=> b!4299066 (noDuplicateKeys!146 call!295676)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!123 (List!48045 K!9024) Unit!66700)

(assert (=> b!4299066 (= lt!1520918 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!123 lt!1520921 k0!1716))))

(declare-fun lt!1520903 () Unit!66700)

(declare-fun lt!1520915 () Unit!66700)

(assert (=> b!4299066 (= lt!1520903 lt!1520915)))

(declare-fun call!295656 () Bool)

(assert (=> b!4299066 call!295656))

(assert (=> b!4299066 (= lt!1520915 call!295663)))

(declare-fun lt!1520899 () Unit!66700)

(declare-fun lt!1520892 () Unit!66700)

(assert (=> b!4299066 (= lt!1520899 lt!1520892)))

(assert (=> b!4299066 call!295672))

(declare-fun call!295673 () Unit!66700)

(assert (=> b!4299066 (= lt!1520892 call!295673)))

(declare-fun Unit!66713 () Unit!66700)

(assert (=> b!4299066 (= e!2672084 Unit!66713)))

(declare-fun bm!295653 () Bool)

(declare-fun lt!1520916 () List!48045)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!96 (ListLongMap!795 (_ BitVec 64) List!48045 Hashable!4427) Unit!66700)

(assert (=> bm!295653 (= call!295658 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!96 lt!1520910 (ite c!731294 lt!1520882 lt!1520877) (ite c!731294 lt!1520920 lt!1520916) (hashF!6459 hm!64)))))

(declare-fun b!4299067 () Bool)

(declare-fun e!2672080 () Bool)

(assert (=> b!4299067 (= e!2672080 call!295682)))

(declare-fun bm!295654 () Bool)

(declare-fun call!295654 () ListMap!1461)

(declare-fun call!295677 () ListMap!1461)

(assert (=> bm!295654 (= call!295654 (+!161 call!295677 (tuple2!45827 k0!1716 v!9471)))))

(declare-fun bm!295655 () Bool)

(declare-fun eq!95 (ListMap!1461 ListMap!1461) Bool)

(assert (=> bm!295655 (= call!295679 (eq!95 (ite c!731294 call!295662 call!295653) call!295665))))

(declare-fun bm!295656 () Bool)

(declare-fun call!295666 () ListMap!1461)

(declare-fun extractMap!266 (List!48046) ListMap!1461)

(assert (=> bm!295656 (= call!295666 (extractMap!266 (toList!2182 call!295661)))))

(declare-fun bm!295657 () Bool)

(assert (=> bm!295657 (= call!295660 (valid!3489 (ite c!731294 lt!1520914 lt!1520872)))))

(declare-fun bm!295658 () Bool)

(declare-fun +!162 (ListLongMap!795 tuple2!45830) ListLongMap!795)

(assert (=> bm!295658 (= call!295661 (+!162 lt!1520910 (ite c!731294 (tuple2!45831 lt!1520882 lt!1520920) (tuple2!45831 lt!1520877 lt!1520916))))))

(declare-fun contains!9840 (ListMap!1461 K!9024) Bool)

(assert (=> b!4299068 (contains!9840 call!295653 k0!1716)))

(declare-fun lt!1520870 () Unit!66700)

(declare-fun Unit!66714 () Unit!66700)

(assert (=> b!4299068 (= lt!1520870 Unit!66714)))

(assert (=> b!4299068 (contains!9840 call!295665 k0!1716)))

(declare-fun lt!1520898 () Unit!66700)

(declare-fun lt!1520878 () Unit!66700)

(assert (=> b!4299068 (= lt!1520898 lt!1520878)))

(assert (=> b!4299068 (= call!295680 call!295655)))

(assert (=> b!4299068 (= lt!1520878 call!295681)))

(declare-fun lt!1520901 () ListMap!1461)

(assert (=> b!4299068 (= lt!1520901 call!295665)))

(declare-fun lt!1520880 () ListMap!1461)

(assert (=> b!4299068 (= lt!1520880 call!295653)))

(declare-fun lt!1520889 () Unit!66700)

(declare-fun Unit!66715 () Unit!66700)

(assert (=> b!4299068 (= lt!1520889 Unit!66715)))

(assert (=> b!4299068 call!295679))

(declare-fun lt!1520885 () Unit!66700)

(declare-fun Unit!66716 () Unit!66700)

(assert (=> b!4299068 (= lt!1520885 Unit!66716)))

(assert (=> b!4299068 call!295669))

(declare-fun lt!1520908 () Unit!66700)

(declare-fun Unit!66717 () Unit!66700)

(assert (=> b!4299068 (= lt!1520908 Unit!66717)))

(assert (=> b!4299068 call!295667))

(declare-fun lt!1520876 () Unit!66700)

(declare-fun lt!1520887 () Unit!66700)

(assert (=> b!4299068 (= lt!1520876 lt!1520887)))

(assert (=> b!4299068 call!295670))

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!30 (ListLongMap!795 (_ BitVec 64) List!48045 K!9024 V!9226 Hashable!4427) Unit!66700)

(assert (=> b!4299068 (= lt!1520887 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!30 lt!1520910 lt!1520877 lt!1520916 k0!1716 v!9471 (hashF!6459 hm!64)))))

(declare-fun lt!1520890 () Unit!66700)

(declare-fun lt!1520895 () Unit!66700)

(assert (=> b!4299068 (= lt!1520890 lt!1520895)))

(declare-fun e!2672087 () Bool)

(assert (=> b!4299068 e!2672087))

(declare-fun res!1761990 () Bool)

(assert (=> b!4299068 (=> (not res!1761990) (not e!2672087))))

(assert (=> b!4299068 (= res!1761990 call!295675)))

(assert (=> b!4299068 (= lt!1520909 call!295661)))

(assert (=> b!4299068 (= lt!1520895 call!295658)))

(declare-fun lt!1520919 () Unit!66700)

(assert (=> b!4299068 (= lt!1520919 e!2672079)))

(declare-fun c!731296 () Bool)

(declare-fun isEmpty!28042 (List!48045) Bool)

(assert (=> b!4299068 (= c!731296 (not (isEmpty!28042 lt!1520874)))))

(declare-fun Unit!66718 () Unit!66700)

(assert (=> b!4299068 (= e!2672082 Unit!66718)))

(declare-fun b!4299069 () Bool)

(assert (=> b!4299069 (= call!295662 lt!1520891)))

(declare-fun lt!1520905 () Unit!66700)

(declare-fun Unit!66719 () Unit!66700)

(assert (=> b!4299069 (= lt!1520905 Unit!66719)))

(assert (=> b!4299069 call!295660))

(declare-fun Unit!66720 () Unit!66700)

(assert (=> b!4299069 (= e!2672084 Unit!66720)))

(declare-fun bm!295659 () Bool)

(declare-fun update!320 (MutLongMap!4511 (_ BitVec 64) List!48045) tuple2!45832)

(assert (=> bm!295659 (= call!295664 (update!320 (v!41876 (underlying!9252 hm!64)) (ite c!731294 lt!1520882 lt!1520877) (ite c!731294 lt!1520920 lt!1520916)))))

(declare-fun b!4299070 () Bool)

(assert (=> b!4299070 (= e!2672081 e!2672086)))

(declare-fun c!731291 () Bool)

(assert (=> b!4299070 (= c!731291 (_1!26193 lt!1520907))))

(declare-fun bm!295660 () Bool)

(assert (=> bm!295660 (= call!295680 (contains!9840 (ite c!731294 lt!1520900 lt!1520880) k0!1716))))

(declare-fun lt!1520922 () tuple2!45832)

(declare-fun b!4299071 () Bool)

(declare-fun Unit!66721 () Unit!66700)

(declare-fun Unit!66722 () Unit!66700)

(assert (=> b!4299071 (= e!2672085 (tuple2!45829 (_1!26195 lt!1520922) (_2!26196 (ite (_1!26195 lt!1520922) (tuple2!45835 Unit!66721 (HashMap!4417 (Cell!17856 (_2!26195 lt!1520922)) (hashF!6459 hm!64) (bvadd (_size!9066 hm!64) #b00000000000000000000000000000001) (defaultValue!4588 hm!64))) (tuple2!45835 Unit!66722 lt!1520872)))))))

(assert (=> b!4299071 (= lt!1520877 call!295668)))

(declare-fun c!731290 () Bool)

(declare-fun contains!9841 (MutLongMap!4511 (_ BitVec 64)) Bool)

(assert (=> b!4299071 (= c!731290 (contains!9841 (v!41876 (underlying!9252 hm!64)) lt!1520877))))

(assert (=> b!4299071 (= lt!1520874 e!2672083)))

(assert (=> b!4299071 (= lt!1520916 (Cons!47921 (tuple2!45827 k0!1716 v!9471) lt!1520874))))

(assert (=> b!4299071 (= lt!1520922 call!295664)))

(assert (=> b!4299071 (= lt!1520872 (HashMap!4417 (Cell!17856 (_2!26195 lt!1520922)) (hashF!6459 hm!64) (_size!9066 hm!64) (defaultValue!4588 hm!64)))))

(declare-fun c!731295 () Bool)

(assert (=> b!4299071 (= c!731295 (_1!26195 lt!1520922))))

(declare-fun lt!1520897 () Unit!66700)

(assert (=> b!4299071 (= lt!1520897 e!2672082)))

(declare-fun b!4299072 () Bool)

(assert (=> b!4299072 (= e!2672083 Nil!47921)))

(declare-fun bm!295661 () Bool)

(assert (=> bm!295661 (= call!295656 (allKeysSameHash!118 call!295676 (ite c!731294 lt!1520882 lt!1520877) (hashF!6459 hm!64)))))

(declare-fun bm!295662 () Bool)

(assert (=> bm!295662 (= call!295665 (+!161 lt!1520891 (tuple2!45827 k0!1716 v!9471)))))

(declare-fun b!4299073 () Bool)

(declare-fun e!2672077 () ListMap!1461)

(declare-fun call!295674 () ListMap!1461)

(assert (=> b!4299073 (= e!2672077 call!295674)))

(declare-fun bm!295663 () Bool)

(assert (=> bm!295663 (= call!295674 (map!9880 hm!64))))

(declare-fun bm!295664 () Bool)

(declare-fun apply!10871 (MutLongMap!4511 (_ BitVec 64)) List!48045)

(assert (=> bm!295664 (= call!295671 (apply!10871 (v!41876 (underlying!9252 hm!64)) (ite c!731294 lt!1520882 lt!1520877)))))

(declare-fun bm!295665 () Bool)

(declare-fun call!295657 () ListMap!1461)

(assert (=> bm!295665 (= call!295657 (map!9880 (_2!26193 lt!1520907)))))

(declare-fun bm!295666 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!109 (List!48046 (_ BitVec 64) List!48045 Hashable!4427) Unit!66700)

(assert (=> bm!295666 (= call!295673 (lemmaInLongMapAllKeySameHashThenForTuple!109 (toList!2182 lt!1520910) (ite c!731294 lt!1520882 lt!1520877) (ite c!731294 lt!1520921 lt!1520874) (hashF!6459 hm!64)))))

(declare-fun bm!295667 () Bool)

(declare-fun lemmaEquivalentThenSameContains!30 (ListMap!1461 ListMap!1461 K!9024) Unit!66700)

(assert (=> bm!295667 (= call!295681 (lemmaEquivalentThenSameContains!30 (ite c!731294 lt!1520873 lt!1520880) (ite c!731294 lt!1520900 lt!1520901) k0!1716))))

(declare-fun bm!295668 () Bool)

(assert (=> bm!295668 (= call!295653 call!295659)))

(declare-fun bm!295669 () Bool)

(assert (=> bm!295669 (= call!295670 (eq!95 call!295666 call!295654))))

(declare-fun b!4299074 () Bool)

(assert (=> b!4299074 (= e!2672087 call!295678)))

(declare-fun bm!295670 () Bool)

(assert (=> bm!295670 (= call!295682 (eq!95 call!295657 e!2672077))))

(declare-fun c!731293 () Bool)

(assert (=> bm!295670 (= c!731293 c!731291)))

(declare-fun bm!295671 () Bool)

(assert (=> bm!295671 (= call!295677 (extractMap!266 (toList!2182 lt!1520910)))))

(declare-fun bm!295672 () Bool)

(assert (=> bm!295672 (= call!295655 (contains!9840 (ite c!731294 lt!1520873 lt!1520901) k0!1716))))

(declare-fun bm!295673 () Bool)

(declare-fun call!295683 () ListLongMap!795)

(assert (=> bm!295673 (= call!295669 (allKeysSameHashInMap!266 call!295683 (hashF!6459 hm!64)))))

(declare-fun bm!295674 () Bool)

(declare-fun removePairForKey!135 (List!48045 K!9024) List!48045)

(assert (=> bm!295674 (= call!295676 (removePairForKey!135 (ite c!731294 lt!1520921 lt!1520874) k0!1716))))

(declare-fun b!4299075 () Bool)

(assert (=> b!4299075 (= e!2672077 (+!161 call!295674 (tuple2!45827 k0!1716 v!9471)))))

(declare-fun bm!295675 () Bool)

(assert (=> bm!295675 (= call!295667 (forall!8619 (toList!2182 call!295683) (ite c!731294 lambda!131910 lambda!131911)))))

(declare-fun bm!295676 () Bool)

(assert (=> bm!295676 (= call!295662 call!295659)))

(declare-fun b!4299076 () Bool)

(declare-fun lt!1520904 () Unit!66700)

(assert (=> b!4299076 (= e!2672079 lt!1520904)))

(declare-fun lt!1520886 () Unit!66700)

(assert (=> b!4299076 (= lt!1520886 call!295673)))

(assert (=> b!4299076 call!295672))

(declare-fun lt!1520869 () Unit!66700)

(assert (=> b!4299076 (= lt!1520869 lt!1520886)))

(assert (=> b!4299076 (= lt!1520904 call!295663)))

(assert (=> b!4299076 call!295656))

(declare-fun bm!295677 () Bool)

(assert (=> bm!295677 (= call!295678 (allKeysSameHashInMap!266 (ite c!731294 lt!1520884 lt!1520909) (hashF!6459 hm!64)))))

(declare-fun bm!295678 () Bool)

(assert (=> bm!295678 (= call!295683 (map!9881 (ite c!731294 (_2!26195 lt!1520888) (_2!26195 lt!1520922))))))

(declare-fun b!4299077 () Bool)

(assert (=> b!4299077 (= e!2672086 e!2672080)))

(declare-fun res!1761992 () Bool)

(assert (=> b!4299077 (= res!1761992 (contains!9840 call!295657 k0!1716))))

(assert (=> b!4299077 (=> (not res!1761992) (not e!2672080))))

(assert (= (and d!1266476 c!731294) b!4299061))

(assert (= (and d!1266476 (not c!731294)) b!4299071))

(assert (= (and b!4299061 c!731292) b!4299066))

(assert (= (and b!4299061 (not c!731292)) b!4299069))

(assert (= (and b!4299066 res!1761991) b!4299064))

(assert (= (or b!4299066 b!4299069) bm!295676))

(assert (= (and b!4299071 c!731290) b!4299059))

(assert (= (and b!4299071 (not c!731290)) b!4299072))

(assert (= (and b!4299071 c!731295) b!4299068))

(assert (= (and b!4299071 (not c!731295)) b!4299060))

(assert (= (and b!4299068 c!731296) b!4299076))

(assert (= (and b!4299068 (not c!731296)) b!4299062))

(assert (= (and b!4299068 res!1761990) b!4299074))

(assert (= (or b!4299068 b!4299060) bm!295668))

(assert (= (or b!4299061 b!4299071) bm!295651))

(assert (= (or b!4299066 b!4299068) bm!295672))

(assert (= (or b!4299066 b!4299076) bm!295666))

(assert (= (or b!4299066 b!4299068) bm!295658))

(assert (= (or b!4299064 b!4299074) bm!295677))

(assert (= (or b!4299066 b!4299068) bm!295662))

(assert (= (or b!4299066 b!4299068) bm!295671))

(assert (= (or bm!295676 bm!295668) bm!295650))

(assert (= (or b!4299066 b!4299076) bm!295649))

(assert (= (or b!4299061 b!4299059) bm!295664))

(assert (= (or b!4299061 b!4299066 b!4299076) bm!295674))

(assert (= (or b!4299066 b!4299068) bm!295660))

(assert (= (or b!4299061 b!4299071) bm!295659))

(assert (= (or b!4299066 b!4299068) bm!295667))

(assert (= (or b!4299066 b!4299068) bm!295678))

(assert (= (or b!4299066 b!4299068) bm!295652))

(assert (= (or b!4299069 b!4299060) bm!295657))

(assert (= (or b!4299066 b!4299076) bm!295648))

(assert (= (or b!4299066 b!4299068) bm!295653))

(assert (= (or b!4299066 b!4299068) bm!295656))

(assert (= (or b!4299066 b!4299076) bm!295661))

(assert (= (or b!4299066 b!4299068) bm!295655))

(assert (= (or b!4299066 b!4299068) bm!295673))

(assert (= (or b!4299066 b!4299068) bm!295675))

(assert (= (or b!4299066 b!4299068) bm!295654))

(assert (= (or b!4299066 b!4299068) bm!295669))

(assert (= (and d!1266476 res!1761989) b!4299065))

(assert (= (and b!4299065 res!1761988) b!4299070))

(assert (= (and b!4299070 c!731291) b!4299077))

(assert (= (and b!4299070 (not c!731291)) b!4299063))

(assert (= (and b!4299077 res!1761992) b!4299067))

(assert (= (or b!4299067 b!4299063) bm!295663))

(assert (= (or b!4299077 b!4299067 b!4299063) bm!295665))

(assert (= (or b!4299067 b!4299063) bm!295670))

(assert (= (and bm!295670 c!731293) b!4299075))

(assert (= (and bm!295670 (not c!731293)) b!4299073))

(declare-fun m!4891161 () Bool)

(assert (=> bm!295658 m!4891161))

(declare-fun m!4891163 () Bool)

(assert (=> bm!295659 m!4891163))

(declare-fun m!4891165 () Bool)

(assert (=> bm!295654 m!4891165))

(declare-fun m!4891167 () Bool)

(assert (=> bm!295671 m!4891167))

(declare-fun m!4891169 () Bool)

(assert (=> bm!295656 m!4891169))

(declare-fun m!4891171 () Bool)

(assert (=> b!4299077 m!4891171))

(declare-fun m!4891173 () Bool)

(assert (=> b!4299071 m!4891173))

(declare-fun m!4891175 () Bool)

(assert (=> bm!295669 m!4891175))

(declare-fun m!4891177 () Bool)

(assert (=> b!4299065 m!4891177))

(declare-fun m!4891179 () Bool)

(assert (=> bm!295652 m!4891179))

(declare-fun m!4891181 () Bool)

(assert (=> bm!295664 m!4891181))

(declare-fun m!4891183 () Bool)

(assert (=> bm!295677 m!4891183))

(declare-fun m!4891185 () Bool)

(assert (=> b!4299075 m!4891185))

(declare-fun m!4891187 () Bool)

(assert (=> bm!295672 m!4891187))

(declare-fun m!4891189 () Bool)

(assert (=> bm!295653 m!4891189))

(declare-fun m!4891191 () Bool)

(assert (=> d!1266476 m!4891191))

(assert (=> d!1266476 m!4891147))

(assert (=> d!1266476 m!4891123))

(assert (=> d!1266476 m!4891125))

(declare-fun m!4891193 () Bool)

(assert (=> bm!295661 m!4891193))

(declare-fun m!4891195 () Bool)

(assert (=> bm!295666 m!4891195))

(declare-fun m!4891197 () Bool)

(assert (=> bm!295670 m!4891197))

(declare-fun m!4891199 () Bool)

(assert (=> bm!295665 m!4891199))

(declare-fun m!4891201 () Bool)

(assert (=> bm!295674 m!4891201))

(declare-fun m!4891203 () Bool)

(assert (=> b!4299068 m!4891203))

(declare-fun m!4891205 () Bool)

(assert (=> b!4299068 m!4891205))

(declare-fun m!4891207 () Bool)

(assert (=> b!4299068 m!4891207))

(declare-fun m!4891209 () Bool)

(assert (=> b!4299068 m!4891209))

(declare-fun m!4891211 () Bool)

(assert (=> bm!295678 m!4891211))

(declare-fun m!4891213 () Bool)

(assert (=> bm!295651 m!4891213))

(declare-fun m!4891215 () Bool)

(assert (=> bm!295648 m!4891215))

(declare-fun m!4891217 () Bool)

(assert (=> b!4299066 m!4891217))

(declare-fun m!4891219 () Bool)

(assert (=> b!4299066 m!4891219))

(declare-fun m!4891221 () Bool)

(assert (=> b!4299066 m!4891221))

(declare-fun m!4891223 () Bool)

(assert (=> b!4299066 m!4891223))

(declare-fun m!4891225 () Bool)

(assert (=> b!4299066 m!4891225))

(declare-fun m!4891227 () Bool)

(assert (=> bm!295650 m!4891227))

(declare-fun m!4891229 () Bool)

(assert (=> bm!295655 m!4891229))

(declare-fun m!4891231 () Bool)

(assert (=> bm!295662 m!4891231))

(declare-fun m!4891233 () Bool)

(assert (=> bm!295657 m!4891233))

(declare-fun m!4891235 () Bool)

(assert (=> bm!295667 m!4891235))

(declare-fun m!4891237 () Bool)

(assert (=> bm!295673 m!4891237))

(assert (=> bm!295663 m!4891123))

(declare-fun m!4891239 () Bool)

(assert (=> bm!295649 m!4891239))

(declare-fun m!4891241 () Bool)

(assert (=> bm!295660 m!4891241))

(declare-fun m!4891243 () Bool)

(assert (=> bm!295675 m!4891243))

(assert (=> b!4299012 d!1266476))

(declare-fun d!1266478 () Bool)

(declare-fun e!2672090 () Bool)

(assert (=> d!1266478 e!2672090))

(declare-fun res!1761998 () Bool)

(assert (=> d!1266478 (=> (not res!1761998) (not e!2672090))))

(declare-fun lt!1520933 () ListMap!1461)

(assert (=> d!1266478 (= res!1761998 (contains!9840 lt!1520933 (_1!26192 lt!1520754)))))

(declare-fun lt!1520934 () List!48045)

(assert (=> d!1266478 (= lt!1520933 (ListMap!1462 lt!1520934))))

(declare-fun lt!1520931 () Unit!66700)

(declare-fun lt!1520932 () Unit!66700)

(assert (=> d!1266478 (= lt!1520931 lt!1520932)))

(declare-datatypes ((Option!10158 0))(
  ( (None!10157) (Some!10157 (v!41878 V!9226)) )
))
(declare-fun getValueByKey!207 (List!48045 K!9024) Option!10158)

(assert (=> d!1266478 (= (getValueByKey!207 lt!1520934 (_1!26192 lt!1520754)) (Some!10157 (_2!26192 lt!1520754)))))

(declare-fun lemmaContainsTupThenGetReturnValue!38 (List!48045 K!9024 V!9226) Unit!66700)

(assert (=> d!1266478 (= lt!1520932 (lemmaContainsTupThenGetReturnValue!38 lt!1520934 (_1!26192 lt!1520754) (_2!26192 lt!1520754)))))

(assert (=> d!1266478 (= lt!1520934 (insertNoDuplicatedKeys!18 (toList!2181 lt!1520749) (_1!26192 lt!1520754) (_2!26192 lt!1520754)))))

(assert (=> d!1266478 (= (+!161 lt!1520749 lt!1520754) lt!1520933)))

(declare-fun b!4299082 () Bool)

(declare-fun res!1761997 () Bool)

(assert (=> b!4299082 (=> (not res!1761997) (not e!2672090))))

(assert (=> b!4299082 (= res!1761997 (= (getValueByKey!207 (toList!2181 lt!1520933) (_1!26192 lt!1520754)) (Some!10157 (_2!26192 lt!1520754))))))

(declare-fun b!4299083 () Bool)

(declare-fun contains!9842 (List!48045 tuple2!45826) Bool)

(assert (=> b!4299083 (= e!2672090 (contains!9842 (toList!2181 lt!1520933) lt!1520754))))

(assert (= (and d!1266478 res!1761998) b!4299082))

(assert (= (and b!4299082 res!1761997) b!4299083))

(declare-fun m!4891245 () Bool)

(assert (=> d!1266478 m!4891245))

(declare-fun m!4891247 () Bool)

(assert (=> d!1266478 m!4891247))

(declare-fun m!4891249 () Bool)

(assert (=> d!1266478 m!4891249))

(declare-fun m!4891251 () Bool)

(assert (=> d!1266478 m!4891251))

(declare-fun m!4891253 () Bool)

(assert (=> b!4299082 m!4891253))

(declare-fun m!4891255 () Bool)

(assert (=> b!4299083 m!4891255))

(assert (=> b!4299012 d!1266478))

(declare-fun d!1266480 () Bool)

(declare-fun res!1762003 () Bool)

(declare-fun e!2672095 () Bool)

(assert (=> d!1266480 (=> res!1762003 e!2672095)))

(assert (=> d!1266480 (= res!1762003 ((_ is Nil!47921) (toList!2181 lt!1520752)))))

(assert (=> d!1266480 (= (forall!8618 (toList!2181 lt!1520752) p!6034) e!2672095)))

(declare-fun b!4299088 () Bool)

(declare-fun e!2672096 () Bool)

(assert (=> b!4299088 (= e!2672095 e!2672096)))

(declare-fun res!1762004 () Bool)

(assert (=> b!4299088 (=> (not res!1762004) (not e!2672096))))

(assert (=> b!4299088 (= res!1762004 (dynLambda!20353 p!6034 (h!53341 (toList!2181 lt!1520752))))))

(declare-fun b!4299089 () Bool)

(assert (=> b!4299089 (= e!2672096 (forall!8618 (t!354726 (toList!2181 lt!1520752)) p!6034))))

(assert (= (and d!1266480 (not res!1762003)) b!4299088))

(assert (= (and b!4299088 res!1762004) b!4299089))

(declare-fun b_lambda!126261 () Bool)

(assert (=> (not b_lambda!126261) (not b!4299088)))

(declare-fun t!354728 () Bool)

(declare-fun tb!257167 () Bool)

(assert (=> (and start!412752 (= p!6034 p!6034) t!354728) tb!257167))

(declare-fun result!314428 () Bool)

(assert (=> tb!257167 (= result!314428 true)))

(assert (=> b!4299088 t!354728))

(declare-fun b_and!339261 () Bool)

(assert (= b_and!339259 (and (=> t!354728 result!314428) b_and!339261)))

(declare-fun m!4891257 () Bool)

(assert (=> b!4299088 m!4891257))

(declare-fun m!4891259 () Bool)

(assert (=> b!4299089 m!4891259))

(assert (=> b!4299010 d!1266480))

(declare-fun d!1266482 () Bool)

(assert (=> d!1266482 (forall!8618 (insertNoDuplicatedKeys!18 (toList!2181 lt!1520749) k0!1716 v!9471) p!6034)))

(declare-fun lt!1520937 () Unit!66700)

(declare-fun choose!26166 (List!48045 K!9024 V!9226 Int) Unit!66700)

(assert (=> d!1266482 (= lt!1520937 (choose!26166 (toList!2181 lt!1520749) k0!1716 v!9471 p!6034))))

(declare-fun invariantList!535 (List!48045) Bool)

(assert (=> d!1266482 (invariantList!535 (toList!2181 lt!1520749))))

(assert (=> d!1266482 (= (lemmaInsertNoDuplicatedKeysPreservesForall!9 (toList!2181 lt!1520749) k0!1716 v!9471 p!6034) lt!1520937)))

(declare-fun bs!603925 () Bool)

(assert (= bs!603925 d!1266482))

(assert (=> bs!603925 m!4891137))

(assert (=> bs!603925 m!4891137))

(assert (=> bs!603925 m!4891139))

(declare-fun m!4891261 () Bool)

(assert (=> bs!603925 m!4891261))

(declare-fun m!4891263 () Bool)

(assert (=> bs!603925 m!4891263))

(assert (=> b!4299010 d!1266482))

(declare-fun d!1266484 () Bool)

(declare-fun lt!1520940 () ListMap!1461)

(assert (=> d!1266484 (invariantList!535 (toList!2181 lt!1520940))))

(assert (=> d!1266484 (= lt!1520940 (extractMap!266 (toList!2182 (map!9881 (v!41876 (underlying!9252 (_2!26193 lt!1520756)))))))))

(assert (=> d!1266484 (valid!3489 (_2!26193 lt!1520756))))

(assert (=> d!1266484 (= (map!9880 (_2!26193 lt!1520756)) lt!1520940)))

(declare-fun bs!603926 () Bool)

(assert (= bs!603926 d!1266484))

(declare-fun m!4891265 () Bool)

(assert (=> bs!603926 m!4891265))

(assert (=> bs!603926 m!4891155))

(declare-fun m!4891267 () Bool)

(assert (=> bs!603926 m!4891267))

(assert (=> bs!603926 m!4891117))

(assert (=> b!4299010 d!1266484))

(declare-fun b!4299118 () Bool)

(declare-fun e!2672111 () List!48045)

(declare-fun lt!1520968 () List!48045)

(assert (=> b!4299118 (= e!2672111 lt!1520968)))

(declare-fun call!295695 () List!48045)

(assert (=> b!4299118 (= lt!1520968 call!295695)))

(declare-fun c!731310 () Bool)

(declare-fun containsKey!227 (List!48045 K!9024) Bool)

(assert (=> b!4299118 (= c!731310 (containsKey!227 (insertNoDuplicatedKeys!18 (t!354726 (toList!2181 lt!1520749)) k0!1716 v!9471) (_1!26192 (h!53341 (toList!2181 lt!1520749)))))))

(declare-fun lt!1520965 () Unit!66700)

(declare-fun e!2672116 () Unit!66700)

(assert (=> b!4299118 (= lt!1520965 e!2672116)))

(declare-fun c!731307 () Bool)

(declare-fun lt!1520966 () List!48045)

(declare-fun bm!295687 () Bool)

(declare-datatypes ((List!48047 0))(
  ( (Nil!47923) (Cons!47923 (h!53343 K!9024) (t!354734 List!48047)) )
))
(declare-fun call!295693 () List!48047)

(declare-fun getKeysList!30 (List!48045) List!48047)

(assert (=> bm!295687 (= call!295693 (getKeysList!30 (ite c!731307 (toList!2181 lt!1520749) lt!1520966)))))

(declare-fun b!4299119 () Bool)

(declare-fun e!2672117 () List!48045)

(declare-fun e!2672112 () List!48045)

(assert (=> b!4299119 (= e!2672117 e!2672112)))

(declare-fun res!1762014 () Bool)

(assert (=> b!4299119 (= res!1762014 ((_ is Cons!47921) (toList!2181 lt!1520749)))))

(declare-fun e!2672115 () Bool)

(assert (=> b!4299119 (=> (not res!1762014) (not e!2672115))))

(declare-fun c!731309 () Bool)

(assert (=> b!4299119 (= c!731309 e!2672115)))

(declare-fun call!295694 () List!48045)

(declare-fun bm!295688 () Bool)

(declare-fun c!731311 () Bool)

(declare-fun e!2672114 () List!48045)

(declare-fun $colon$colon!653 (List!48045 tuple2!45826) List!48045)

(assert (=> bm!295688 (= call!295694 ($colon$colon!653 (ite c!731307 (t!354726 (toList!2181 lt!1520749)) (ite c!731309 (toList!2181 lt!1520749) e!2672114)) (ite (or c!731307 c!731309) (tuple2!45827 k0!1716 v!9471) (ite c!731311 (h!53341 (toList!2181 lt!1520749)) (tuple2!45827 k0!1716 v!9471)))))))

(declare-fun b!4299120 () Bool)

(assert (=> b!4299120 (= e!2672114 (insertNoDuplicatedKeys!18 (t!354726 (toList!2181 lt!1520749)) k0!1716 v!9471))))

(declare-fun lt!1520964 () List!48045)

(declare-fun b!4299121 () Bool)

(declare-fun e!2672113 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7526 (List!48047) (InoxSet K!9024))

(assert (=> b!4299121 (= e!2672113 (= (content!7526 (getKeysList!30 lt!1520964)) ((_ map or) (content!7526 (getKeysList!30 (toList!2181 lt!1520749))) (store ((as const (Array K!9024 Bool)) false) k0!1716 true))))))

(declare-fun b!4299122 () Bool)

(assert (=> b!4299122 false))

(declare-fun lt!1520970 () Unit!66700)

(declare-fun lt!1520969 () Unit!66700)

(assert (=> b!4299122 (= lt!1520970 lt!1520969)))

(assert (=> b!4299122 (containsKey!227 (t!354726 (toList!2181 lt!1520749)) (_1!26192 (h!53341 (toList!2181 lt!1520749))))))

(declare-fun lemmaInGetKeysListThenContainsKey!27 (List!48045 K!9024) Unit!66700)

(assert (=> b!4299122 (= lt!1520969 (lemmaInGetKeysListThenContainsKey!27 (t!354726 (toList!2181 lt!1520749)) (_1!26192 (h!53341 (toList!2181 lt!1520749)))))))

(declare-fun lt!1520967 () Unit!66700)

(declare-fun lt!1520973 () Unit!66700)

(assert (=> b!4299122 (= lt!1520967 lt!1520973)))

(declare-fun contains!9843 (List!48047 K!9024) Bool)

(assert (=> b!4299122 (contains!9843 call!295693 (_1!26192 (h!53341 (toList!2181 lt!1520749))))))

(declare-fun lemmaInListThenGetKeysListContains!27 (List!48045 K!9024) Unit!66700)

(assert (=> b!4299122 (= lt!1520973 (lemmaInListThenGetKeysListContains!27 lt!1520966 (_1!26192 (h!53341 (toList!2181 lt!1520749)))))))

(assert (=> b!4299122 (= lt!1520966 (insertNoDuplicatedKeys!18 (t!354726 (toList!2181 lt!1520749)) k0!1716 v!9471))))

(declare-fun Unit!66723 () Unit!66700)

(assert (=> b!4299122 (= e!2672116 Unit!66723)))

(declare-fun b!4299123 () Bool)

(assert (=> b!4299123 (= e!2672111 call!295695)))

(declare-fun b!4299124 () Bool)

(assert (=> b!4299124 (= e!2672115 (not (containsKey!227 (toList!2181 lt!1520749) k0!1716)))))

(declare-fun b!4299125 () Bool)

(declare-fun res!1762013 () Bool)

(assert (=> b!4299125 (=> (not res!1762013) (not e!2672113))))

(assert (=> b!4299125 (= res!1762013 (contains!9842 lt!1520964 (tuple2!45827 k0!1716 v!9471)))))

(declare-fun b!4299126 () Bool)

(declare-fun res!1762015 () Bool)

(assert (=> b!4299126 (=> (not res!1762015) (not e!2672113))))

(assert (=> b!4299126 (= res!1762015 (containsKey!227 lt!1520964 k0!1716))))

(declare-fun b!4299127 () Bool)

(assert (=> b!4299127 (= c!731311 ((_ is Cons!47921) (toList!2181 lt!1520749)))))

(assert (=> b!4299127 (= e!2672112 e!2672111)))

(declare-fun bm!295690 () Bool)

(declare-fun call!295692 () List!48045)

(assert (=> bm!295690 (= call!295692 call!295694)))

(declare-fun b!4299128 () Bool)

(declare-fun Unit!66724 () Unit!66700)

(assert (=> b!4299128 (= e!2672116 Unit!66724)))

(declare-fun b!4299129 () Bool)

(assert (=> b!4299129 (= e!2672114 Nil!47921)))

(declare-fun b!4299130 () Bool)

(assert (=> b!4299130 (= e!2672117 call!295694)))

(declare-fun lt!1520971 () List!48047)

(assert (=> b!4299130 (= lt!1520971 call!295693)))

(declare-fun lt!1520963 () Unit!66700)

(declare-fun lemmaSubseqRefl!57 (List!48047) Unit!66700)

(assert (=> b!4299130 (= lt!1520963 (lemmaSubseqRefl!57 lt!1520971))))

(declare-fun subseq!573 (List!48047 List!48047) Bool)

(assert (=> b!4299130 (subseq!573 lt!1520971 lt!1520971)))

(declare-fun lt!1520972 () Unit!66700)

(assert (=> b!4299130 (= lt!1520972 lt!1520963)))

(declare-fun b!4299131 () Bool)

(assert (=> b!4299131 (= e!2672112 call!295692)))

(declare-fun bm!295689 () Bool)

(assert (=> bm!295689 (= call!295695 call!295692)))

(declare-fun c!731308 () Bool)

(assert (=> bm!295689 (= c!731308 c!731311)))

(declare-fun d!1266486 () Bool)

(assert (=> d!1266486 e!2672113))

(declare-fun res!1762016 () Bool)

(assert (=> d!1266486 (=> (not res!1762016) (not e!2672113))))

(assert (=> d!1266486 (= res!1762016 (invariantList!535 lt!1520964))))

(assert (=> d!1266486 (= lt!1520964 e!2672117)))

(assert (=> d!1266486 (= c!731307 (and ((_ is Cons!47921) (toList!2181 lt!1520749)) (= (_1!26192 (h!53341 (toList!2181 lt!1520749))) k0!1716)))))

(assert (=> d!1266486 (invariantList!535 (toList!2181 lt!1520749))))

(assert (=> d!1266486 (= (insertNoDuplicatedKeys!18 (toList!2181 lt!1520749) k0!1716 v!9471) lt!1520964)))

(assert (= (and d!1266486 c!731307) b!4299130))

(assert (= (and d!1266486 (not c!731307)) b!4299119))

(assert (= (and b!4299119 res!1762014) b!4299124))

(assert (= (and b!4299119 c!731309) b!4299131))

(assert (= (and b!4299119 (not c!731309)) b!4299127))

(assert (= (and b!4299127 c!731311) b!4299118))

(assert (= (and b!4299127 (not c!731311)) b!4299123))

(assert (= (and b!4299118 c!731310) b!4299122))

(assert (= (and b!4299118 (not c!731310)) b!4299128))

(assert (= (or b!4299118 b!4299123) bm!295689))

(assert (= (and bm!295689 c!731308) b!4299120))

(assert (= (and bm!295689 (not c!731308)) b!4299129))

(assert (= (or b!4299131 bm!295689) bm!295690))

(assert (= (or b!4299130 b!4299122) bm!295687))

(assert (= (or b!4299130 bm!295690) bm!295688))

(assert (= (and d!1266486 res!1762016) b!4299126))

(assert (= (and b!4299126 res!1762015) b!4299125))

(assert (= (and b!4299125 res!1762013) b!4299121))

(declare-fun m!4891269 () Bool)

(assert (=> bm!295688 m!4891269))

(declare-fun m!4891271 () Bool)

(assert (=> b!4299130 m!4891271))

(declare-fun m!4891273 () Bool)

(assert (=> b!4299130 m!4891273))

(declare-fun m!4891275 () Bool)

(assert (=> b!4299120 m!4891275))

(declare-fun m!4891277 () Bool)

(assert (=> b!4299124 m!4891277))

(declare-fun m!4891279 () Bool)

(assert (=> bm!295687 m!4891279))

(declare-fun m!4891281 () Bool)

(assert (=> b!4299125 m!4891281))

(declare-fun m!4891283 () Bool)

(assert (=> b!4299126 m!4891283))

(declare-fun m!4891285 () Bool)

(assert (=> b!4299121 m!4891285))

(declare-fun m!4891287 () Bool)

(assert (=> b!4299121 m!4891287))

(declare-fun m!4891289 () Bool)

(assert (=> b!4299121 m!4891289))

(declare-fun m!4891291 () Bool)

(assert (=> b!4299121 m!4891291))

(assert (=> b!4299121 m!4891289))

(assert (=> b!4299121 m!4891285))

(declare-fun m!4891293 () Bool)

(assert (=> b!4299121 m!4891293))

(assert (=> b!4299118 m!4891275))

(assert (=> b!4299118 m!4891275))

(declare-fun m!4891295 () Bool)

(assert (=> b!4299118 m!4891295))

(assert (=> b!4299122 m!4891275))

(declare-fun m!4891297 () Bool)

(assert (=> b!4299122 m!4891297))

(declare-fun m!4891299 () Bool)

(assert (=> b!4299122 m!4891299))

(declare-fun m!4891301 () Bool)

(assert (=> b!4299122 m!4891301))

(declare-fun m!4891303 () Bool)

(assert (=> b!4299122 m!4891303))

(declare-fun m!4891305 () Bool)

(assert (=> d!1266486 m!4891305))

(assert (=> d!1266486 m!4891263))

(assert (=> b!4299010 d!1266486))

(declare-fun d!1266488 () Bool)

(declare-fun res!1762017 () Bool)

(declare-fun e!2672118 () Bool)

(assert (=> d!1266488 (=> res!1762017 e!2672118)))

(assert (=> d!1266488 (= res!1762017 ((_ is Nil!47921) (insertNoDuplicatedKeys!18 (toList!2181 lt!1520749) k0!1716 v!9471)))))

(assert (=> d!1266488 (= (forall!8618 (insertNoDuplicatedKeys!18 (toList!2181 lt!1520749) k0!1716 v!9471) p!6034) e!2672118)))

(declare-fun b!4299132 () Bool)

(declare-fun e!2672119 () Bool)

(assert (=> b!4299132 (= e!2672118 e!2672119)))

(declare-fun res!1762018 () Bool)

(assert (=> b!4299132 (=> (not res!1762018) (not e!2672119))))

(assert (=> b!4299132 (= res!1762018 (dynLambda!20353 p!6034 (h!53341 (insertNoDuplicatedKeys!18 (toList!2181 lt!1520749) k0!1716 v!9471))))))

(declare-fun b!4299133 () Bool)

(assert (=> b!4299133 (= e!2672119 (forall!8618 (t!354726 (insertNoDuplicatedKeys!18 (toList!2181 lt!1520749) k0!1716 v!9471)) p!6034))))

(assert (= (and d!1266488 (not res!1762017)) b!4299132))

(assert (= (and b!4299132 res!1762018) b!4299133))

(declare-fun b_lambda!126263 () Bool)

(assert (=> (not b_lambda!126263) (not b!4299132)))

(declare-fun t!354730 () Bool)

(declare-fun tb!257169 () Bool)

(assert (=> (and start!412752 (= p!6034 p!6034) t!354730) tb!257169))

(declare-fun result!314430 () Bool)

(assert (=> tb!257169 (= result!314430 true)))

(assert (=> b!4299132 t!354730))

(declare-fun b_and!339263 () Bool)

(assert (= b_and!339261 (and (=> t!354730 result!314430) b_and!339263)))

(declare-fun m!4891307 () Bool)

(assert (=> b!4299132 m!4891307))

(declare-fun m!4891309 () Bool)

(assert (=> b!4299133 m!4891309))

(assert (=> b!4299010 d!1266488))

(declare-fun d!1266490 () Bool)

(assert (=> d!1266490 (forall!8618 (toList!2181 lt!1520752) p!6034)))

(declare-fun lt!1520976 () Unit!66700)

(declare-fun choose!26167 (List!48045 List!48045 Int) Unit!66700)

(assert (=> d!1266490 (= lt!1520976 (choose!26167 (toList!2181 lt!1520752) (toList!2181 lt!1520755) p!6034))))

(assert (=> d!1266490 (invariantList!535 (toList!2181 lt!1520752))))

(assert (=> d!1266490 (= (lemmaForallSubset!19 (toList!2181 lt!1520752) (toList!2181 lt!1520755) p!6034) lt!1520976)))

(declare-fun bs!603927 () Bool)

(assert (= bs!603927 d!1266490))

(assert (=> bs!603927 m!4891133))

(declare-fun m!4891311 () Bool)

(assert (=> bs!603927 m!4891311))

(declare-fun m!4891313 () Bool)

(assert (=> bs!603927 m!4891313))

(assert (=> b!4299010 d!1266490))

(declare-fun d!1266492 () Bool)

(assert (=> d!1266492 (= (array_inv!5165 (_keys!4811 (v!41875 (underlying!9251 (v!41876 (underlying!9252 hm!64)))))) (bvsge (size!35246 (_keys!4811 (v!41875 (underlying!9251 (v!41876 (underlying!9252 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4299001 d!1266492))

(declare-fun d!1266494 () Bool)

(assert (=> d!1266494 (= (array_inv!5166 (_values!4792 (v!41875 (underlying!9251 (v!41876 (underlying!9252 hm!64)))))) (bvsge (size!35247 (_values!4792 (v!41875 (underlying!9251 (v!41876 (underlying!9252 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4299001 d!1266494))

(declare-fun d!1266496 () Bool)

(declare-fun res!1762019 () Bool)

(declare-fun e!2672120 () Bool)

(assert (=> d!1266496 (=> res!1762019 e!2672120)))

(assert (=> d!1266496 (= res!1762019 ((_ is Nil!47921) (toList!2181 lt!1520749)))))

(assert (=> d!1266496 (= (forall!8618 (toList!2181 lt!1520749) p!6034) e!2672120)))

(declare-fun b!4299134 () Bool)

(declare-fun e!2672121 () Bool)

(assert (=> b!4299134 (= e!2672120 e!2672121)))

(declare-fun res!1762020 () Bool)

(assert (=> b!4299134 (=> (not res!1762020) (not e!2672121))))

(assert (=> b!4299134 (= res!1762020 (dynLambda!20353 p!6034 (h!53341 (toList!2181 lt!1520749))))))

(declare-fun b!4299135 () Bool)

(assert (=> b!4299135 (= e!2672121 (forall!8618 (t!354726 (toList!2181 lt!1520749)) p!6034))))

(assert (= (and d!1266496 (not res!1762019)) b!4299134))

(assert (= (and b!4299134 res!1762020) b!4299135))

(declare-fun b_lambda!126265 () Bool)

(assert (=> (not b_lambda!126265) (not b!4299134)))

(declare-fun t!354732 () Bool)

(declare-fun tb!257171 () Bool)

(assert (=> (and start!412752 (= p!6034 p!6034) t!354732) tb!257171))

(declare-fun result!314432 () Bool)

(assert (=> tb!257171 (= result!314432 true)))

(assert (=> b!4299134 t!354732))

(declare-fun b_and!339265 () Bool)

(assert (= b_and!339263 (and (=> t!354732 result!314432) b_and!339265)))

(declare-fun m!4891315 () Bool)

(assert (=> b!4299134 m!4891315))

(declare-fun m!4891317 () Bool)

(assert (=> b!4299135 m!4891317))

(assert (=> b!4299004 d!1266496))

(declare-fun d!1266498 () Bool)

(declare-fun lt!1520977 () ListMap!1461)

(assert (=> d!1266498 (invariantList!535 (toList!2181 lt!1520977))))

(assert (=> d!1266498 (= lt!1520977 (extractMap!266 (toList!2182 (map!9881 (v!41876 (underlying!9252 hm!64))))))))

(assert (=> d!1266498 (valid!3489 hm!64)))

(assert (=> d!1266498 (= (map!9880 hm!64) lt!1520977)))

(declare-fun bs!603928 () Bool)

(assert (= bs!603928 d!1266498))

(declare-fun m!4891319 () Bool)

(assert (=> bs!603928 m!4891319))

(assert (=> bs!603928 m!4891147))

(declare-fun m!4891321 () Bool)

(assert (=> bs!603928 m!4891321))

(assert (=> bs!603928 m!4891125))

(assert (=> b!4299004 d!1266498))

(declare-fun e!2672124 () Bool)

(declare-fun tp!1320769 () Bool)

(declare-fun b!4299140 () Bool)

(assert (=> b!4299140 (= e!2672124 (and tp_is_empty!23217 tp_is_empty!23219 tp!1320769))))

(assert (=> b!4299001 (= tp!1320761 e!2672124)))

(assert (= (and b!4299001 ((_ is Cons!47921) (zeroValue!4770 (v!41875 (underlying!9251 (v!41876 (underlying!9252 hm!64))))))) b!4299140))

(declare-fun tp!1320770 () Bool)

(declare-fun b!4299141 () Bool)

(declare-fun e!2672125 () Bool)

(assert (=> b!4299141 (= e!2672125 (and tp_is_empty!23217 tp_is_empty!23219 tp!1320770))))

(assert (=> b!4299001 (= tp!1320763 e!2672125)))

(assert (= (and b!4299001 ((_ is Cons!47921) (minValue!4770 (v!41875 (underlying!9251 (v!41876 (underlying!9252 hm!64))))))) b!4299141))

(declare-fun b!4299142 () Bool)

(declare-fun tp!1320771 () Bool)

(declare-fun e!2672126 () Bool)

(assert (=> b!4299142 (= e!2672126 (and tp_is_empty!23217 tp_is_empty!23219 tp!1320771))))

(assert (=> b!4299003 (= tp!1320760 e!2672126)))

(assert (= (and b!4299003 ((_ is Cons!47921) mapDefault!20262)) b!4299142))

(declare-fun tp!1320779 () Bool)

(declare-fun e!2672131 () Bool)

(declare-fun b!4299150 () Bool)

(assert (=> b!4299150 (= e!2672131 (and tp_is_empty!23217 tp_is_empty!23219 tp!1320779))))

(declare-fun condMapEmpty!20265 () Bool)

(declare-fun mapDefault!20265 () List!48045)

(assert (=> mapNonEmpty!20262 (= condMapEmpty!20265 (= mapRest!20262 ((as const (Array (_ BitVec 32) List!48045)) mapDefault!20265)))))

(declare-fun mapRes!20265 () Bool)

(assert (=> mapNonEmpty!20262 (= tp!1320759 (and e!2672131 mapRes!20265))))

(declare-fun mapIsEmpty!20265 () Bool)

(assert (=> mapIsEmpty!20265 mapRes!20265))

(declare-fun tp!1320778 () Bool)

(declare-fun b!4299149 () Bool)

(declare-fun e!2672132 () Bool)

(assert (=> b!4299149 (= e!2672132 (and tp_is_empty!23217 tp_is_empty!23219 tp!1320778))))

(declare-fun mapNonEmpty!20265 () Bool)

(declare-fun tp!1320780 () Bool)

(assert (=> mapNonEmpty!20265 (= mapRes!20265 (and tp!1320780 e!2672132))))

(declare-fun mapKey!20265 () (_ BitVec 32))

(declare-fun mapRest!20265 () (Array (_ BitVec 32) List!48045))

(declare-fun mapValue!20265 () List!48045)

(assert (=> mapNonEmpty!20265 (= mapRest!20262 (store mapRest!20265 mapKey!20265 mapValue!20265))))

(assert (= (and mapNonEmpty!20262 condMapEmpty!20265) mapIsEmpty!20265))

(assert (= (and mapNonEmpty!20262 (not condMapEmpty!20265)) mapNonEmpty!20265))

(assert (= (and mapNonEmpty!20265 ((_ is Cons!47921) mapValue!20265)) b!4299149))

(assert (= (and mapNonEmpty!20262 ((_ is Cons!47921) mapDefault!20265)) b!4299150))

(declare-fun m!4891323 () Bool)

(assert (=> mapNonEmpty!20265 m!4891323))

(declare-fun tp!1320781 () Bool)

(declare-fun e!2672133 () Bool)

(declare-fun b!4299151 () Bool)

(assert (=> b!4299151 (= e!2672133 (and tp_is_empty!23217 tp_is_empty!23219 tp!1320781))))

(assert (=> mapNonEmpty!20262 (= tp!1320764 e!2672133)))

(assert (= (and mapNonEmpty!20262 ((_ is Cons!47921) mapValue!20262)) b!4299151))

(declare-fun b_lambda!126267 () Bool)

(assert (= b_lambda!126263 (or (and start!412752 b_free!127969) b_lambda!126267)))

(declare-fun b_lambda!126269 () Bool)

(assert (= b_lambda!126265 (or (and start!412752 b_free!127969) b_lambda!126269)))

(declare-fun b_lambda!126271 () Bool)

(assert (= b_lambda!126261 (or (and start!412752 b_free!127969) b_lambda!126271)))

(check-sat (not bm!295665) (not b_lambda!126259) (not bm!295652) (not b!4299118) (not b!4299120) (not bm!295664) (not b!4299019) (not b!4299140) (not bm!295657) (not b!4299068) (not bm!295677) (not bm!295673) (not b_lambda!126269) (not b!4299135) (not d!1266476) (not b!4299071) (not b!4299065) (not b!4299083) (not bm!295678) (not b!4299066) (not b!4299018) (not bm!295661) (not bm!295660) (not bm!295688) (not b!4299126) (not d!1266486) (not b!4299020) (not b!4299149) (not b_next!128673) (not d!1266498) (not b!4299141) (not b!4299142) tp_is_empty!23219 (not b!4299121) (not b!4299122) (not bm!295656) (not bm!295662) (not d!1266490) (not d!1266482) (not d!1266484) (not bm!295667) (not bm!295650) (not b!4299130) b_and!339265 (not d!1266474) b_and!339253 (not bm!295671) (not b!4299017) (not mapNonEmpty!20265) b_and!339255 (not bm!295674) (not b!4299077) (not b_next!128669) (not d!1266478) (not b_next!128671) (not bm!295649) (not bm!295654) (not d!1266472) (not b!4299151) (not b!4299082) (not bm!295675) (not bm!295672) (not b_lambda!126267) (not b_lambda!126271) (not bm!295653) (not bm!295687) (not b!4299075) (not b!4299133) (not bm!295651) (not bm!295655) (not bm!295648) (not b!4299125) (not bm!295659) (not b!4299150) tp_is_empty!23217 (not b!4299089) (not bm!295669) (not bm!295658) (not bm!295666) (not b!4299124) (not bm!295663) (not bm!295670))
(check-sat (not b_next!128673) b_and!339255 b_and!339253 b_and!339265 (not b_next!128671) (not b_next!128669))
