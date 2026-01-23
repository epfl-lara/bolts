; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!412840 () Bool)

(assert start!412840)

(declare-fun b!4299725 () Bool)

(declare-fun b_free!128013 () Bool)

(declare-fun b_next!128717 () Bool)

(assert (=> b!4299725 (= b_free!128013 (not b_next!128717))))

(declare-fun tp!1321013 () Bool)

(declare-fun b_and!339333 () Bool)

(assert (=> b!4299725 (= tp!1321013 b_and!339333)))

(declare-fun b!4299732 () Bool)

(declare-fun b_free!128015 () Bool)

(declare-fun b_next!128719 () Bool)

(assert (=> b!4299732 (= b_free!128015 (not b_next!128719))))

(declare-fun tp!1321016 () Bool)

(declare-fun b_and!339335 () Bool)

(assert (=> b!4299732 (= tp!1321016 b_and!339335)))

(declare-fun b_free!128017 () Bool)

(declare-fun b_next!128721 () Bool)

(assert (=> start!412840 (= b_free!128017 (not b_next!128721))))

(declare-fun tp!1321012 () Bool)

(declare-fun b_and!339337 () Bool)

(assert (=> start!412840 (= tp!1321012 b_and!339337)))

(declare-fun mapNonEmpty!20298 () Bool)

(declare-fun mapRes!20298 () Bool)

(declare-fun tp!1321018 () Bool)

(declare-fun tp!1321015 () Bool)

(assert (=> mapNonEmpty!20298 (= mapRes!20298 (and tp!1321018 tp!1321015))))

(declare-datatypes ((K!9044 0))(
  ( (K!9045 (val!15493 Int)) )
))
(declare-datatypes ((V!9246 0))(
  ( (V!9247 (val!15494 Int)) )
))
(declare-datatypes ((tuple2!45880 0))(
  ( (tuple2!45881 (_1!26219 K!9044) (_2!26219 V!9246)) )
))
(declare-datatypes ((List!48059 0))(
  ( (Nil!47935) (Cons!47935 (h!53355 tuple2!45880) (t!354772 List!48059)) )
))
(declare-datatypes ((array!16178 0))(
  ( (array!16179 (arr!7223 (Array (_ BitVec 32) (_ BitVec 64))) (size!35262 (_ BitVec 32))) )
))
(declare-datatypes ((array!16180 0))(
  ( (array!16181 (arr!7224 (Array (_ BitVec 32) List!48059)) (size!35263 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9038 0))(
  ( (LongMapFixedSize!9039 (defaultEntry!4904 Int) (mask!13007 (_ BitVec 32)) (extraKeys!4768 (_ BitVec 32)) (zeroValue!4778 List!48059) (minValue!4778 List!48059) (_size!9081 (_ BitVec 32)) (_keys!4819 array!16178) (_values!4800 array!16180) (_vacant!4580 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17885 0))(
  ( (Cell!17886 (v!41899 LongMapFixedSize!9038)) )
))
(declare-datatypes ((MutLongMap!4519 0))(
  ( (LongMap!4519 (underlying!9267 Cell!17885)) (MutLongMapExt!4518 (__x!29582 Int)) )
))
(declare-datatypes ((Hashable!4435 0))(
  ( (HashableExt!4434 (__x!29583 Int)) )
))
(declare-datatypes ((Cell!17887 0))(
  ( (Cell!17888 (v!41900 MutLongMap!4519)) )
))
(declare-datatypes ((MutableMap!4425 0))(
  ( (MutableMapExt!4424 (__x!29584 Int)) (HashMap!4425 (underlying!9268 Cell!17887) (hashF!6467 Hashable!4435) (_size!9082 (_ BitVec 32)) (defaultValue!4596 Int)) )
))
(declare-fun hm!64 () MutableMap!4425)

(declare-fun mapValue!20298 () List!48059)

(declare-fun mapKey!20298 () (_ BitVec 32))

(declare-fun mapRest!20298 () (Array (_ BitVec 32) List!48059))

(assert (=> mapNonEmpty!20298 (= (arr!7224 (_values!4800 (v!41899 (underlying!9267 (v!41900 (underlying!9268 hm!64)))))) (store mapRest!20298 mapKey!20298 mapValue!20298))))

(declare-fun tp!1321011 () Bool)

(declare-fun e!2672580 () Bool)

(declare-fun e!2672584 () Bool)

(declare-fun tp!1321017 () Bool)

(declare-fun array_inv!5175 (array!16178) Bool)

(declare-fun array_inv!5176 (array!16180) Bool)

(assert (=> b!4299725 (= e!2672584 (and tp!1321013 tp!1321017 tp!1321011 (array_inv!5175 (_keys!4819 (v!41899 (underlying!9267 (v!41900 (underlying!9268 hm!64)))))) (array_inv!5176 (_values!4800 (v!41899 (underlying!9267 (v!41900 (underlying!9268 hm!64)))))) e!2672580))))

(declare-fun b!4299726 () Bool)

(declare-fun e!2672583 () Bool)

(declare-fun e!2672586 () Bool)

(assert (=> b!4299726 (= e!2672583 e!2672586)))

(declare-fun res!1762255 () Bool)

(assert (=> b!4299726 (=> (not res!1762255) (not e!2672586))))

(declare-datatypes ((ListMap!1475 0))(
  ( (ListMap!1476 (toList!2192 List!48059)) )
))
(declare-fun lt!1521674 () ListMap!1475)

(declare-fun p!6034 () Int)

(declare-fun forall!8628 (List!48059 Int) Bool)

(assert (=> b!4299726 (= res!1762255 (forall!8628 (toList!2192 lt!1521674) p!6034))))

(declare-fun map!9894 (MutableMap!4425) ListMap!1475)

(assert (=> b!4299726 (= lt!1521674 (map!9894 hm!64))))

(declare-fun b!4299727 () Bool)

(declare-fun e!2672579 () Bool)

(assert (=> b!4299727 (= e!2672586 e!2672579)))

(declare-fun res!1762254 () Bool)

(assert (=> b!4299727 (=> (not res!1762254) (not e!2672579))))

(declare-fun lt!1521676 () tuple2!45880)

(declare-fun dynLambda!20357 (Int tuple2!45880) Bool)

(assert (=> b!4299727 (= res!1762254 (dynLambda!20357 p!6034 lt!1521676))))

(declare-fun k0!1716 () K!9044)

(declare-fun v!9471 () V!9246)

(assert (=> b!4299727 (= lt!1521676 (tuple2!45881 k0!1716 v!9471))))

(declare-fun b!4299728 () Bool)

(declare-fun e!2672587 () Bool)

(declare-fun e!2672585 () Bool)

(assert (=> b!4299728 (= e!2672587 e!2672585)))

(declare-fun mapIsEmpty!20298 () Bool)

(assert (=> mapIsEmpty!20298 mapRes!20298))

(declare-fun b!4299730 () Bool)

(declare-fun tp!1321014 () Bool)

(assert (=> b!4299730 (= e!2672580 (and tp!1321014 mapRes!20298))))

(declare-fun condMapEmpty!20298 () Bool)

(declare-fun mapDefault!20298 () List!48059)

(assert (=> b!4299730 (= condMapEmpty!20298 (= (arr!7224 (_values!4800 (v!41899 (underlying!9267 (v!41900 (underlying!9268 hm!64)))))) ((as const (Array (_ BitVec 32) List!48059)) mapDefault!20298)))))

(declare-fun b!4299731 () Bool)

(declare-fun e!2672582 () Bool)

(declare-fun lt!1521675 () MutLongMap!4519)

(get-info :version)

(assert (=> b!4299731 (= e!2672582 (and e!2672587 ((_ is LongMap!4519) lt!1521675)))))

(assert (=> b!4299731 (= lt!1521675 (v!41900 (underlying!9268 hm!64)))))

(declare-fun e!2672578 () Bool)

(assert (=> b!4299732 (= e!2672578 (and e!2672582 tp!1321016))))

(declare-fun b!4299733 () Bool)

(declare-datatypes ((tuple2!45882 0))(
  ( (tuple2!45883 (_1!26220 Bool) (_2!26220 MutableMap!4425)) )
))
(declare-fun update!329 (MutableMap!4425 K!9044 V!9246) tuple2!45882)

(assert (=> b!4299733 (= e!2672579 (not ((_ is HashMap!4425) (_2!26220 (update!329 hm!64 k0!1716 v!9471)))))))

(declare-fun lt!1521673 () ListMap!1475)

(declare-fun +!171 (ListMap!1475 tuple2!45880) ListMap!1475)

(assert (=> b!4299733 (= lt!1521673 (+!171 lt!1521674 lt!1521676))))

(declare-fun b!4299734 () Bool)

(declare-fun res!1762252 () Bool)

(assert (=> b!4299734 (=> (not res!1762252) (not e!2672583))))

(declare-fun valid!3499 (MutableMap!4425) Bool)

(assert (=> b!4299734 (= res!1762252 (valid!3499 hm!64))))

(declare-fun res!1762253 () Bool)

(assert (=> start!412840 (=> (not res!1762253) (not e!2672583))))

(assert (=> start!412840 (= res!1762253 ((_ is HashMap!4425) hm!64))))

(assert (=> start!412840 e!2672583))

(assert (=> start!412840 e!2672578))

(declare-fun tp_is_empty!23249 () Bool)

(assert (=> start!412840 tp_is_empty!23249))

(declare-fun tp_is_empty!23251 () Bool)

(assert (=> start!412840 tp_is_empty!23251))

(assert (=> start!412840 tp!1321012))

(declare-fun b!4299729 () Bool)

(assert (=> b!4299729 (= e!2672585 e!2672584)))

(assert (= (and start!412840 res!1762253) b!4299734))

(assert (= (and b!4299734 res!1762252) b!4299726))

(assert (= (and b!4299726 res!1762255) b!4299727))

(assert (= (and b!4299727 res!1762254) b!4299733))

(assert (= (and b!4299730 condMapEmpty!20298) mapIsEmpty!20298))

(assert (= (and b!4299730 (not condMapEmpty!20298)) mapNonEmpty!20298))

(assert (= b!4299725 b!4299730))

(assert (= b!4299729 b!4299725))

(assert (= b!4299728 b!4299729))

(assert (= (and b!4299731 ((_ is LongMap!4519) (v!41900 (underlying!9268 hm!64)))) b!4299728))

(assert (= b!4299732 b!4299731))

(assert (= (and start!412840 ((_ is HashMap!4425) hm!64)) b!4299732))

(declare-fun b_lambda!126313 () Bool)

(assert (=> (not b_lambda!126313) (not b!4299727)))

(declare-fun t!354771 () Bool)

(declare-fun tb!257197 () Bool)

(assert (=> (and start!412840 (= p!6034 p!6034) t!354771) tb!257197))

(declare-fun result!314474 () Bool)

(assert (=> tb!257197 (= result!314474 true)))

(assert (=> b!4299727 t!354771))

(declare-fun b_and!339339 () Bool)

(assert (= b_and!339337 (and (=> t!354771 result!314474) b_and!339339)))

(declare-fun m!4891921 () Bool)

(assert (=> b!4299727 m!4891921))

(declare-fun m!4891923 () Bool)

(assert (=> b!4299726 m!4891923))

(declare-fun m!4891925 () Bool)

(assert (=> b!4299726 m!4891925))

(declare-fun m!4891927 () Bool)

(assert (=> b!4299725 m!4891927))

(declare-fun m!4891929 () Bool)

(assert (=> b!4299725 m!4891929))

(declare-fun m!4891931 () Bool)

(assert (=> mapNonEmpty!20298 m!4891931))

(declare-fun m!4891933 () Bool)

(assert (=> b!4299733 m!4891933))

(declare-fun m!4891935 () Bool)

(assert (=> b!4299733 m!4891935))

(declare-fun m!4891937 () Bool)

(assert (=> b!4299734 m!4891937))

(check-sat (not b_next!128721) (not b!4299734) (not b_lambda!126313) b_and!339339 (not b!4299725) tp_is_empty!23251 (not b_next!128717) b_and!339335 tp_is_empty!23249 (not b!4299730) (not b!4299726) (not b_next!128719) (not mapNonEmpty!20298) (not b!4299733) b_and!339333)
(check-sat (not b_next!128721) b_and!339339 (not b_next!128717) b_and!339335 (not b_next!128719) b_and!339333)
(get-model)

(declare-fun b_lambda!126315 () Bool)

(assert (= b_lambda!126313 (or (and start!412840 b_free!128017) b_lambda!126315)))

(check-sat (not b_next!128721) (not b!4299734) b_and!339339 (not b!4299725) tp_is_empty!23251 (not b_next!128717) b_and!339335 tp_is_empty!23249 (not b_lambda!126315) (not b!4299730) (not b!4299726) (not b_next!128719) (not mapNonEmpty!20298) (not b!4299733) b_and!339333)
(check-sat (not b_next!128721) b_and!339339 (not b_next!128717) b_and!339335 (not b_next!128719) b_and!339333)
(get-model)

(declare-fun d!1266566 () Bool)

(declare-fun res!1762260 () Bool)

(declare-fun e!2672590 () Bool)

(assert (=> d!1266566 (=> (not res!1762260) (not e!2672590))))

(declare-fun valid!3500 (MutLongMap!4519) Bool)

(assert (=> d!1266566 (= res!1762260 (valid!3500 (v!41900 (underlying!9268 hm!64))))))

(assert (=> d!1266566 (= (valid!3499 hm!64) e!2672590)))

(declare-fun b!4299739 () Bool)

(declare-fun res!1762261 () Bool)

(assert (=> b!4299739 (=> (not res!1762261) (not e!2672590))))

(declare-fun lambda!131953 () Int)

(declare-datatypes ((tuple2!45884 0))(
  ( (tuple2!45885 (_1!26221 (_ BitVec 64)) (_2!26221 List!48059)) )
))
(declare-datatypes ((List!48060 0))(
  ( (Nil!47936) (Cons!47936 (h!53356 tuple2!45884) (t!354775 List!48060)) )
))
(declare-fun forall!8629 (List!48060 Int) Bool)

(declare-datatypes ((ListLongMap!803 0))(
  ( (ListLongMap!804 (toList!2193 List!48060)) )
))
(declare-fun map!9895 (MutLongMap!4519) ListLongMap!803)

(assert (=> b!4299739 (= res!1762261 (forall!8629 (toList!2193 (map!9895 (v!41900 (underlying!9268 hm!64)))) lambda!131953))))

(declare-fun b!4299740 () Bool)

(declare-fun allKeysSameHashInMap!270 (ListLongMap!803 Hashable!4435) Bool)

(assert (=> b!4299740 (= e!2672590 (allKeysSameHashInMap!270 (map!9895 (v!41900 (underlying!9268 hm!64))) (hashF!6467 hm!64)))))

(assert (= (and d!1266566 res!1762260) b!4299739))

(assert (= (and b!4299739 res!1762261) b!4299740))

(declare-fun m!4891939 () Bool)

(assert (=> d!1266566 m!4891939))

(declare-fun m!4891941 () Bool)

(assert (=> b!4299739 m!4891941))

(declare-fun m!4891943 () Bool)

(assert (=> b!4299739 m!4891943))

(assert (=> b!4299740 m!4891941))

(assert (=> b!4299740 m!4891941))

(declare-fun m!4891945 () Bool)

(assert (=> b!4299740 m!4891945))

(assert (=> b!4299734 d!1266566))

(declare-fun bs!603956 () Bool)

(declare-fun b!4299789 () Bool)

(assert (= bs!603956 (and b!4299789 b!4299739)))

(declare-fun lambda!131962 () Int)

(assert (=> bs!603956 (= lambda!131962 lambda!131953)))

(declare-fun bs!603957 () Bool)

(declare-fun b!4299785 () Bool)

(assert (= bs!603957 (and b!4299785 b!4299739)))

(declare-fun lambda!131963 () Int)

(assert (=> bs!603957 (= lambda!131963 lambda!131953)))

(declare-fun bs!603958 () Bool)

(assert (= bs!603958 (and b!4299785 b!4299789)))

(assert (=> bs!603958 (= lambda!131963 lambda!131962)))

(declare-fun call!296058 () ListMap!1475)

(declare-fun bm!296044 () Bool)

(declare-fun lt!1521823 () ListMap!1475)

(assert (=> bm!296044 (= call!296058 (+!171 lt!1521823 (tuple2!45881 k0!1716 v!9471)))))

(declare-fun b!4299779 () Bool)

(declare-fun e!2672621 () ListMap!1475)

(declare-fun call!296065 () ListMap!1475)

(assert (=> b!4299779 (= e!2672621 call!296065)))

(declare-fun bm!296045 () Bool)

(declare-fun call!296076 () ListMap!1475)

(declare-fun call!296067 () ListMap!1475)

(assert (=> bm!296045 (= call!296076 call!296067)))

(declare-fun b!4299780 () Bool)

(declare-fun e!2672613 () Bool)

(declare-fun call!296051 () Bool)

(assert (=> b!4299780 (= e!2672613 call!296051)))

(declare-fun call!296063 () Bool)

(declare-fun lt!1521811 () MutableMap!4425)

(declare-fun lt!1521801 () MutableMap!4425)

(declare-fun c!731410 () Bool)

(declare-fun bm!296046 () Bool)

(assert (=> bm!296046 (= call!296063 (valid!3499 (ite c!731410 lt!1521801 lt!1521811)))))

(declare-fun b!4299781 () Bool)

(declare-datatypes ((Unit!66795 0))(
  ( (Unit!66796) )
))
(declare-fun e!2672616 () Unit!66795)

(declare-fun lt!1521797 () Unit!66795)

(assert (=> b!4299781 (= e!2672616 lt!1521797)))

(declare-fun lt!1521800 () Unit!66795)

(declare-fun call!296075 () Unit!66795)

(assert (=> b!4299781 (= lt!1521800 call!296075)))

(declare-fun call!296079 () Bool)

(assert (=> b!4299781 call!296079))

(declare-fun lt!1521804 () Unit!66795)

(assert (=> b!4299781 (= lt!1521804 lt!1521800)))

(declare-fun call!296071 () Unit!66795)

(assert (=> b!4299781 (= lt!1521797 call!296071)))

(declare-fun call!296055 () Bool)

(assert (=> b!4299781 call!296055))

(declare-fun bm!296047 () Bool)

(declare-fun call!296077 () ListMap!1475)

(declare-fun call!296078 () ListLongMap!803)

(declare-fun extractMap!270 (List!48060) ListMap!1475)

(assert (=> bm!296047 (= call!296077 (extractMap!270 (toList!2193 call!296078)))))

(declare-fun call!296072 () List!48059)

(declare-fun bm!296048 () Bool)

(declare-fun lt!1521834 () List!48059)

(declare-fun lt!1521826 () List!48059)

(declare-fun removePairForKey!139 (List!48059 K!9044) List!48059)

(assert (=> bm!296048 (= call!296072 (removePairForKey!139 (ite c!731410 lt!1521834 lt!1521826) k0!1716))))

(declare-fun bm!296049 () Bool)

(assert (=> bm!296049 (= call!296067 (map!9894 (ite c!731410 lt!1521801 lt!1521811)))))

(declare-fun lt!1521832 () (_ BitVec 64))

(declare-fun lt!1521808 () (_ BitVec 64))

(declare-fun bm!296050 () Bool)

(declare-fun allKeysSameHash!122 (List!48059 (_ BitVec 64) Hashable!4435) Bool)

(assert (=> bm!296050 (= call!296055 (allKeysSameHash!122 call!296072 (ite c!731410 lt!1521808 lt!1521832) (hashF!6467 hm!64)))))

(declare-fun bm!296051 () Bool)

(declare-fun call!296061 () Bool)

(declare-fun call!296057 () ListMap!1475)

(declare-fun eq!100 (ListMap!1475 ListMap!1475) Bool)

(assert (=> bm!296051 (= call!296061 (eq!100 call!296057 e!2672621))))

(declare-fun c!731409 () Bool)

(declare-fun c!731408 () Bool)

(assert (=> bm!296051 (= c!731409 c!731408)))

(declare-fun b!4299782 () Bool)

(declare-fun e!2672622 () Bool)

(assert (=> b!4299782 (= e!2672622 call!296051)))

(declare-fun b!4299783 () Bool)

(declare-fun e!2672617 () Bool)

(assert (=> b!4299783 (= e!2672617 call!296061)))

(declare-fun b!4299784 () Bool)

(assert (=> b!4299784 (= call!296076 lt!1521823)))

(declare-fun lt!1521838 () Unit!66795)

(declare-fun Unit!66797 () Unit!66795)

(assert (=> b!4299784 (= lt!1521838 Unit!66797)))

(assert (=> b!4299784 call!296063))

(declare-fun e!2672618 () Unit!66795)

(declare-fun Unit!66798 () Unit!66795)

(assert (=> b!4299784 (= e!2672618 Unit!66798)))

(declare-fun bm!296052 () Bool)

(declare-fun call!296054 () ListLongMap!803)

(declare-fun call!296074 () Bool)

(assert (=> bm!296052 (= call!296074 (forall!8629 (toList!2193 call!296054) (ite c!731410 lambda!131962 lambda!131963)))))

(declare-fun bm!296053 () Bool)

(declare-fun call!296062 () ListMap!1475)

(assert (=> bm!296053 (= call!296062 call!296067)))

(declare-fun lt!1521813 () ListLongMap!803)

(declare-fun bm!296054 () Bool)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!113 (List!48060 (_ BitVec 64) List!48059 Hashable!4435) Unit!66795)

(assert (=> bm!296054 (= call!296075 (lemmaInLongMapAllKeySameHashThenForTuple!113 (toList!2193 lt!1521813) (ite c!731410 lt!1521808 lt!1521832) (ite c!731410 lt!1521834 lt!1521826) (hashF!6467 hm!64)))))

(declare-fun bm!296055 () Bool)

(declare-fun lemmaRemovePairForKeyPreservesHash!109 (List!48059 K!9044 (_ BitVec 64) Hashable!4435) Unit!66795)

(assert (=> bm!296055 (= call!296071 (lemmaRemovePairForKeyPreservesHash!109 (ite c!731410 lt!1521834 lt!1521826) k0!1716 (ite c!731410 lt!1521808 lt!1521832) (hashF!6467 hm!64)))))

(declare-fun bm!296056 () Bool)

(assert (=> bm!296056 (= call!296065 (map!9894 hm!64))))

(declare-fun bm!296057 () Bool)

(declare-fun call!296052 () List!48059)

(declare-fun apply!10875 (MutLongMap!4519 (_ BitVec 64)) List!48059)

(assert (=> bm!296057 (= call!296052 (apply!10875 (v!41900 (underlying!9268 hm!64)) (ite c!731410 lt!1521808 lt!1521832)))))

(declare-fun call!296053 () Bool)

(assert (=> b!4299785 call!296053))

(declare-fun lt!1521806 () Unit!66795)

(declare-fun Unit!66799 () Unit!66795)

(assert (=> b!4299785 (= lt!1521806 Unit!66799)))

(declare-fun contains!9857 (ListMap!1475 K!9044) Bool)

(assert (=> b!4299785 (contains!9857 call!296058 k0!1716)))

(declare-fun lt!1521795 () Unit!66795)

(declare-fun lt!1521803 () Unit!66795)

(assert (=> b!4299785 (= lt!1521795 lt!1521803)))

(declare-fun lt!1521817 () ListMap!1475)

(declare-fun call!296066 () Bool)

(assert (=> b!4299785 (= (contains!9857 lt!1521817 k0!1716) call!296066)))

(declare-fun call!296068 () Unit!66795)

(assert (=> b!4299785 (= lt!1521803 call!296068)))

(declare-fun lt!1521792 () ListMap!1475)

(assert (=> b!4299785 (= lt!1521792 call!296058)))

(assert (=> b!4299785 (= lt!1521817 call!296076)))

(declare-fun lt!1521835 () Unit!66795)

(declare-fun Unit!66800 () Unit!66795)

(assert (=> b!4299785 (= lt!1521835 Unit!66800)))

(declare-fun call!296069 () Bool)

(assert (=> b!4299785 call!296069))

(declare-fun lt!1521810 () Unit!66795)

(declare-fun Unit!66801 () Unit!66795)

(assert (=> b!4299785 (= lt!1521810 Unit!66801)))

(declare-fun call!296064 () Bool)

(assert (=> b!4299785 call!296064))

(declare-fun lt!1521829 () Unit!66795)

(declare-fun Unit!66802 () Unit!66795)

(assert (=> b!4299785 (= lt!1521829 Unit!66802)))

(assert (=> b!4299785 call!296074))

(declare-fun lt!1521793 () Unit!66795)

(declare-fun lt!1521819 () Unit!66795)

(assert (=> b!4299785 (= lt!1521793 lt!1521819)))

(declare-fun call!296073 () Bool)

(assert (=> b!4299785 call!296073))

(declare-fun lt!1521825 () List!48059)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!34 (ListLongMap!803 (_ BitVec 64) List!48059 K!9044 V!9246 Hashable!4435) Unit!66795)

(assert (=> b!4299785 (= lt!1521819 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!34 lt!1521813 lt!1521832 lt!1521825 k0!1716 v!9471 (hashF!6467 hm!64)))))

(declare-fun lt!1521831 () Unit!66795)

(declare-fun lt!1521824 () Unit!66795)

(assert (=> b!4299785 (= lt!1521831 lt!1521824)))

(assert (=> b!4299785 e!2672622))

(declare-fun res!1762275 () Bool)

(assert (=> b!4299785 (=> (not res!1762275) (not e!2672622))))

(declare-fun call!296050 () Bool)

(assert (=> b!4299785 (= res!1762275 call!296050)))

(declare-fun lt!1521802 () ListLongMap!803)

(assert (=> b!4299785 (= lt!1521802 call!296078)))

(declare-fun call!296059 () Unit!66795)

(assert (=> b!4299785 (= lt!1521824 call!296059)))

(declare-fun lt!1521798 () Unit!66795)

(assert (=> b!4299785 (= lt!1521798 e!2672616)))

(declare-fun c!731406 () Bool)

(declare-fun isEmpty!28046 (List!48059) Bool)

(assert (=> b!4299785 (= c!731406 (not (isEmpty!28046 lt!1521826)))))

(declare-fun Unit!66803 () Unit!66795)

(assert (=> b!4299785 (= e!2672618 Unit!66803)))

(declare-fun b!4299786 () Bool)

(assert (=> b!4299786 (= call!296062 lt!1521823)))

(declare-fun lt!1521794 () Unit!66795)

(declare-fun Unit!66804 () Unit!66795)

(assert (=> b!4299786 (= lt!1521794 Unit!66804)))

(assert (=> b!4299786 call!296063))

(declare-fun e!2672614 () Unit!66795)

(declare-fun Unit!66805 () Unit!66795)

(assert (=> b!4299786 (= e!2672614 Unit!66805)))

(declare-datatypes ((tuple2!45886 0))(
  ( (tuple2!45887 (_1!26222 Bool) (_2!26222 MutLongMap!4519)) )
))
(declare-fun lt!1521840 () tuple2!45886)

(declare-fun b!4299787 () Bool)

(declare-fun e!2672619 () tuple2!45882)

(declare-datatypes ((tuple2!45888 0))(
  ( (tuple2!45889 (_1!26223 Unit!66795) (_2!26223 MutableMap!4425)) )
))
(declare-fun Unit!66806 () Unit!66795)

(declare-fun Unit!66807 () Unit!66795)

(assert (=> b!4299787 (= e!2672619 (tuple2!45883 (_1!26222 lt!1521840) (_2!26223 (ite (_1!26222 lt!1521840) (tuple2!45889 Unit!66806 (HashMap!4425 (Cell!17888 (_2!26222 lt!1521840)) (hashF!6467 hm!64) (bvadd (_size!9082 hm!64) #b00000000000000000000000000000001) (defaultValue!4596 hm!64))) (tuple2!45889 Unit!66807 lt!1521811)))))))

(declare-fun call!296056 () (_ BitVec 64))

(assert (=> b!4299787 (= lt!1521832 call!296056)))

(declare-fun c!731407 () Bool)

(declare-fun contains!9858 (MutLongMap!4519 (_ BitVec 64)) Bool)

(assert (=> b!4299787 (= c!731407 (contains!9858 (v!41900 (underlying!9268 hm!64)) lt!1521832))))

(declare-fun e!2672623 () List!48059)

(assert (=> b!4299787 (= lt!1521826 e!2672623)))

(assert (=> b!4299787 (= lt!1521825 (Cons!47935 (tuple2!45881 k0!1716 v!9471) lt!1521826))))

(declare-fun call!296070 () tuple2!45886)

(assert (=> b!4299787 (= lt!1521840 call!296070)))

(assert (=> b!4299787 (= lt!1521811 (HashMap!4425 (Cell!17888 (_2!26222 lt!1521840)) (hashF!6467 hm!64) (_size!9082 hm!64) (defaultValue!4596 hm!64)))))

(declare-fun c!731405 () Bool)

(assert (=> b!4299787 (= c!731405 (_1!26222 lt!1521840))))

(declare-fun lt!1521839 () Unit!66795)

(assert (=> b!4299787 (= lt!1521839 e!2672618)))

(declare-fun bm!296058 () Bool)

(declare-fun lt!1521807 () tuple2!45882)

(assert (=> bm!296058 (= call!296057 (map!9894 (_2!26220 lt!1521807)))))

(declare-fun b!4299788 () Bool)

(declare-fun Unit!66808 () Unit!66795)

(assert (=> b!4299788 (= e!2672616 Unit!66808)))

(assert (=> b!4299789 call!296069))

(declare-fun lt!1521812 () Unit!66795)

(declare-fun Unit!66809 () Unit!66795)

(assert (=> b!4299789 (= lt!1521812 Unit!66809)))

(assert (=> b!4299789 call!296064))

(declare-fun lt!1521789 () Unit!66795)

(declare-fun Unit!66810 () Unit!66795)

(assert (=> b!4299789 (= lt!1521789 Unit!66810)))

(assert (=> b!4299789 call!296074))

(declare-fun lt!1521799 () Unit!66795)

(declare-fun lt!1521837 () Unit!66795)

(assert (=> b!4299789 (= lt!1521799 lt!1521837)))

(assert (=> b!4299789 (= call!296053 call!296066)))

(assert (=> b!4299789 (= lt!1521837 call!296068)))

(declare-fun lt!1521827 () ListMap!1475)

(assert (=> b!4299789 (= lt!1521827 call!296058)))

(declare-fun lt!1521814 () ListMap!1475)

(assert (=> b!4299789 (= lt!1521814 call!296062)))

(declare-fun lt!1521790 () Unit!66795)

(declare-fun lt!1521815 () Unit!66795)

(assert (=> b!4299789 (= lt!1521790 lt!1521815)))

(assert (=> b!4299789 call!296073))

(declare-fun lt!1521836 () List!48059)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!34 (ListLongMap!803 (_ BitVec 64) List!48059 K!9044 V!9246 Hashable!4435) Unit!66795)

(assert (=> b!4299789 (= lt!1521815 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!34 lt!1521813 lt!1521808 lt!1521836 k0!1716 v!9471 (hashF!6467 hm!64)))))

(declare-fun lt!1521796 () Unit!66795)

(declare-fun lt!1521791 () Unit!66795)

(assert (=> b!4299789 (= lt!1521796 lt!1521791)))

(assert (=> b!4299789 e!2672613))

(declare-fun res!1762272 () Bool)

(assert (=> b!4299789 (=> (not res!1762272) (not e!2672613))))

(assert (=> b!4299789 (= res!1762272 call!296050)))

(declare-fun lt!1521788 () ListLongMap!803)

(assert (=> b!4299789 (= lt!1521788 call!296078)))

(assert (=> b!4299789 (= lt!1521791 call!296059)))

(declare-fun lt!1521818 () Unit!66795)

(declare-fun Unit!66811 () Unit!66795)

(assert (=> b!4299789 (= lt!1521818 Unit!66811)))

(declare-fun noDuplicateKeys!150 (List!48059) Bool)

(assert (=> b!4299789 (noDuplicateKeys!150 lt!1521836)))

(declare-fun lt!1521841 () Unit!66795)

(declare-fun Unit!66812 () Unit!66795)

(assert (=> b!4299789 (= lt!1521841 Unit!66812)))

(declare-fun containsKey!232 (List!48059 K!9044) Bool)

(assert (=> b!4299789 (not (containsKey!232 call!296072 k0!1716))))

(declare-fun lt!1521830 () Unit!66795)

(declare-fun Unit!66813 () Unit!66795)

(assert (=> b!4299789 (= lt!1521830 Unit!66813)))

(declare-fun lt!1521828 () Unit!66795)

(declare-fun lt!1521820 () Unit!66795)

(assert (=> b!4299789 (= lt!1521828 lt!1521820)))

(assert (=> b!4299789 (noDuplicateKeys!150 call!296072)))

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!127 (List!48059 K!9044) Unit!66795)

(assert (=> b!4299789 (= lt!1521820 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!127 lt!1521834 k0!1716))))

(declare-fun lt!1521787 () Unit!66795)

(declare-fun lt!1521809 () Unit!66795)

(assert (=> b!4299789 (= lt!1521787 lt!1521809)))

(assert (=> b!4299789 call!296055))

(assert (=> b!4299789 (= lt!1521809 call!296071)))

(declare-fun lt!1521822 () Unit!66795)

(declare-fun lt!1521833 () Unit!66795)

(assert (=> b!4299789 (= lt!1521822 lt!1521833)))

(assert (=> b!4299789 call!296079))

(assert (=> b!4299789 (= lt!1521833 call!296075)))

(declare-fun Unit!66814 () Unit!66795)

(assert (=> b!4299789 (= e!2672614 Unit!66814)))

(declare-fun bm!296059 () Bool)

(declare-fun update!330 (MutLongMap!4519 (_ BitVec 64) List!48059) tuple2!45886)

(assert (=> bm!296059 (= call!296070 (update!330 (v!41900 (underlying!9268 hm!64)) (ite c!731410 lt!1521808 lt!1521832) (ite c!731410 lt!1521836 lt!1521825)))))

(declare-fun bm!296060 () Bool)

(assert (=> bm!296060 (= call!296069 (eq!100 (ite c!731410 call!296062 call!296076) call!296058))))

(declare-fun bm!296061 () Bool)

(declare-fun call!296049 () ListMap!1475)

(assert (=> bm!296061 (= call!296073 (eq!100 call!296077 call!296049))))

(declare-fun lt!1521821 () tuple2!45886)

(declare-fun bm!296062 () Bool)

(assert (=> bm!296062 (= call!296054 (map!9895 (ite c!731410 (_2!26222 lt!1521821) (_2!26222 lt!1521840))))))

(declare-fun d!1266568 () Bool)

(declare-fun e!2672615 () Bool)

(assert (=> d!1266568 e!2672615))

(declare-fun res!1762276 () Bool)

(assert (=> d!1266568 (=> (not res!1762276) (not e!2672615))))

(assert (=> d!1266568 (= res!1762276 ((_ is HashMap!4425) (_2!26220 lt!1521807)))))

(declare-fun lt!1521816 () tuple2!45882)

(assert (=> d!1266568 (= lt!1521807 (tuple2!45883 (_1!26220 lt!1521816) (_2!26220 lt!1521816)))))

(assert (=> d!1266568 (= lt!1521816 e!2672619)))

(declare-fun contains!9859 (MutableMap!4425 K!9044) Bool)

(assert (=> d!1266568 (= c!731410 (contains!9859 hm!64 k0!1716))))

(assert (=> d!1266568 (= lt!1521813 (map!9895 (v!41900 (underlying!9268 hm!64))))))

(assert (=> d!1266568 (= lt!1521823 (map!9894 hm!64))))

(assert (=> d!1266568 (valid!3499 hm!64)))

(assert (=> d!1266568 (= (update!329 hm!64 k0!1716 v!9471) lt!1521807)))

(declare-fun b!4299790 () Bool)

(declare-fun e!2672620 () Bool)

(assert (=> b!4299790 (= e!2672620 call!296061)))

(declare-fun bm!296063 () Bool)

(assert (=> bm!296063 (= call!296050 (forall!8629 (ite c!731410 (toList!2193 lt!1521788) (toList!2193 lt!1521802)) (ite c!731410 lambda!131962 lambda!131963)))))

(declare-fun b!4299791 () Bool)

(assert (=> b!4299791 (= e!2672621 (+!171 call!296065 (tuple2!45881 k0!1716 v!9471)))))

(declare-fun call!296060 () ListMap!1475)

(declare-fun bm!296064 () Bool)

(assert (=> bm!296064 (= call!296049 (+!171 call!296060 (tuple2!45881 k0!1716 v!9471)))))

(declare-fun b!4299792 () Bool)

(declare-fun res!1762273 () Bool)

(assert (=> b!4299792 (=> (not res!1762273) (not e!2672615))))

(assert (=> b!4299792 (= res!1762273 (valid!3499 (_2!26220 lt!1521807)))))

(declare-fun bm!296065 () Bool)

(assert (=> bm!296065 (= call!296053 (contains!9857 (ite c!731410 lt!1521814 call!296076) k0!1716))))

(declare-fun bm!296066 () Bool)

(declare-fun +!172 (ListLongMap!803 tuple2!45884) ListLongMap!803)

(assert (=> bm!296066 (= call!296078 (+!172 lt!1521813 (ite c!731410 (tuple2!45885 lt!1521808 lt!1521836) (tuple2!45885 lt!1521832 lt!1521825))))))

(declare-fun b!4299793 () Bool)

(declare-fun Unit!66815 () Unit!66795)

(declare-fun Unit!66816 () Unit!66795)

(assert (=> b!4299793 (= e!2672619 (tuple2!45883 (_1!26222 lt!1521821) (_2!26223 (ite false (tuple2!45889 Unit!66815 (HashMap!4425 (Cell!17888 (_2!26222 lt!1521821)) (hashF!6467 hm!64) (bvadd (_size!9082 hm!64) #b00000000000000000000000000000001) (defaultValue!4596 hm!64))) (tuple2!45889 Unit!66816 lt!1521801)))))))

(assert (=> b!4299793 (= lt!1521808 call!296056)))

(assert (=> b!4299793 (= lt!1521834 call!296052)))

(assert (=> b!4299793 (= lt!1521836 (Cons!47935 (tuple2!45881 k0!1716 v!9471) call!296072))))

(assert (=> b!4299793 (= lt!1521821 call!296070)))

(assert (=> b!4299793 (= lt!1521801 (HashMap!4425 (Cell!17888 (_2!26222 lt!1521821)) (hashF!6467 hm!64) (_size!9082 hm!64) (defaultValue!4596 hm!64)))))

(declare-fun c!731404 () Bool)

(assert (=> b!4299793 (= c!731404 (_1!26222 lt!1521821))))

(declare-fun lt!1521805 () Unit!66795)

(assert (=> b!4299793 (= lt!1521805 e!2672614)))

(declare-fun bm!296067 () Bool)

(assert (=> bm!296067 (= call!296064 (allKeysSameHashInMap!270 call!296054 (hashF!6467 hm!64)))))

(declare-fun bm!296068 () Bool)

(assert (=> bm!296068 (= call!296060 (extractMap!270 (toList!2193 lt!1521813)))))

(declare-fun bm!296069 () Bool)

(declare-fun hash!838 (Hashable!4435 K!9044) (_ BitVec 64))

(assert (=> bm!296069 (= call!296056 (hash!838 (hashF!6467 hm!64) k0!1716))))

(declare-fun bm!296070 () Bool)

(assert (=> bm!296070 (= call!296051 (allKeysSameHashInMap!270 (ite c!731410 lt!1521788 lt!1521802) (hashF!6467 hm!64)))))

(declare-fun b!4299794 () Bool)

(assert (=> b!4299794 (= e!2672623 call!296052)))

(declare-fun b!4299795 () Bool)

(assert (=> b!4299795 (= e!2672623 Nil!47935)))

(declare-fun bm!296071 () Bool)

(declare-fun lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!100 (ListLongMap!803 (_ BitVec 64) List!48059 Hashable!4435) Unit!66795)

(assert (=> bm!296071 (= call!296059 (lemmaChangeOneBucketByAValidOnePreservesForallNoDuplicatesAndHash!100 lt!1521813 (ite c!731410 lt!1521808 lt!1521832) (ite c!731410 lt!1521836 lt!1521825) (hashF!6467 hm!64)))))

(declare-fun b!4299796 () Bool)

(assert (=> b!4299796 (= e!2672620 e!2672617)))

(declare-fun res!1762274 () Bool)

(assert (=> b!4299796 (= res!1762274 (contains!9857 call!296057 k0!1716))))

(assert (=> b!4299796 (=> (not res!1762274) (not e!2672617))))

(declare-fun b!4299797 () Bool)

(assert (=> b!4299797 (= e!2672615 e!2672620)))

(assert (=> b!4299797 (= c!731408 (_1!26220 lt!1521807))))

(declare-fun bm!296072 () Bool)

(assert (=> bm!296072 (= call!296066 (contains!9857 (ite c!731410 lt!1521827 lt!1521792) k0!1716))))

(declare-fun bm!296073 () Bool)

(declare-fun lemmaEquivalentThenSameContains!34 (ListMap!1475 ListMap!1475 K!9044) Unit!66795)

(assert (=> bm!296073 (= call!296068 (lemmaEquivalentThenSameContains!34 (ite c!731410 lt!1521814 lt!1521817) (ite c!731410 lt!1521827 lt!1521792) k0!1716))))

(declare-fun bm!296074 () Bool)

(assert (=> bm!296074 (= call!296079 (allKeysSameHash!122 (ite c!731410 lt!1521834 lt!1521826) (ite c!731410 lt!1521808 lt!1521832) (hashF!6467 hm!64)))))

(assert (= (and d!1266568 c!731410) b!4299793))

(assert (= (and d!1266568 (not c!731410)) b!4299787))

(assert (= (and b!4299793 c!731404) b!4299789))

(assert (= (and b!4299793 (not c!731404)) b!4299786))

(assert (= (and b!4299789 res!1762272) b!4299780))

(assert (= (or b!4299789 b!4299786) bm!296053))

(assert (= (and b!4299787 c!731407) b!4299794))

(assert (= (and b!4299787 (not c!731407)) b!4299795))

(assert (= (and b!4299787 c!731405) b!4299785))

(assert (= (and b!4299787 (not c!731405)) b!4299784))

(assert (= (and b!4299785 c!731406) b!4299781))

(assert (= (and b!4299785 (not c!731406)) b!4299788))

(assert (= (and b!4299785 res!1762275) b!4299782))

(assert (= (or b!4299785 b!4299784) bm!296045))

(assert (= (or b!4299793 b!4299787) bm!296059))

(assert (= (or b!4299789 b!4299785) bm!296073))

(assert (= (or b!4299793 b!4299787) bm!296069))

(assert (= (or b!4299780 b!4299782) bm!296070))

(assert (= (or b!4299789 b!4299785) bm!296071))

(assert (= (or b!4299789 b!4299785) bm!296066))

(assert (= (or b!4299793 b!4299794) bm!296057))

(assert (= (or b!4299789 b!4299785) bm!296062))

(assert (= (or b!4299789 b!4299781) bm!296054))

(assert (= (or b!4299789 b!4299781) bm!296074))

(assert (= (or b!4299789 b!4299785) bm!296065))

(assert (= (or b!4299789 b!4299785) bm!296068))

(assert (= (or b!4299789 b!4299793 b!4299781) bm!296048))

(assert (= (or bm!296053 bm!296045) bm!296049))

(assert (= (or b!4299786 b!4299784) bm!296046))

(assert (= (or b!4299789 b!4299785) bm!296044))

(assert (= (or b!4299789 b!4299785) bm!296072))

(assert (= (or b!4299789 b!4299781) bm!296055))

(assert (= (or b!4299789 b!4299785) bm!296063))

(assert (= (or b!4299789 b!4299785) bm!296067))

(assert (= (or b!4299789 b!4299781) bm!296050))

(assert (= (or b!4299789 b!4299785) bm!296064))

(assert (= (or b!4299789 b!4299785) bm!296047))

(assert (= (or b!4299789 b!4299785) bm!296060))

(assert (= (or b!4299789 b!4299785) bm!296052))

(assert (= (or b!4299789 b!4299785) bm!296061))

(assert (= (and d!1266568 res!1762276) b!4299792))

(assert (= (and b!4299792 res!1762273) b!4299797))

(assert (= (and b!4299797 c!731408) b!4299796))

(assert (= (and b!4299797 (not c!731408)) b!4299790))

(assert (= (and b!4299796 res!1762274) b!4299783))

(assert (= (or b!4299783 b!4299790) bm!296056))

(assert (= (or b!4299796 b!4299783 b!4299790) bm!296058))

(assert (= (or b!4299783 b!4299790) bm!296051))

(assert (= (and bm!296051 c!731409) b!4299791))

(assert (= (and bm!296051 (not c!731409)) b!4299779))

(declare-fun m!4891947 () Bool)

(assert (=> b!4299785 m!4891947))

(declare-fun m!4891949 () Bool)

(assert (=> b!4299785 m!4891949))

(declare-fun m!4891951 () Bool)

(assert (=> b!4299785 m!4891951))

(declare-fun m!4891953 () Bool)

(assert (=> b!4299785 m!4891953))

(declare-fun m!4891955 () Bool)

(assert (=> bm!296044 m!4891955))

(declare-fun m!4891957 () Bool)

(assert (=> bm!296058 m!4891957))

(declare-fun m!4891959 () Bool)

(assert (=> bm!296067 m!4891959))

(declare-fun m!4891961 () Bool)

(assert (=> bm!296046 m!4891961))

(declare-fun m!4891963 () Bool)

(assert (=> bm!296064 m!4891963))

(declare-fun m!4891965 () Bool)

(assert (=> bm!296068 m!4891965))

(declare-fun m!4891967 () Bool)

(assert (=> b!4299792 m!4891967))

(declare-fun m!4891969 () Bool)

(assert (=> bm!296054 m!4891969))

(assert (=> bm!296056 m!4891925))

(declare-fun m!4891971 () Bool)

(assert (=> bm!296074 m!4891971))

(declare-fun m!4891973 () Bool)

(assert (=> bm!296055 m!4891973))

(declare-fun m!4891975 () Bool)

(assert (=> b!4299791 m!4891975))

(declare-fun m!4891977 () Bool)

(assert (=> bm!296073 m!4891977))

(declare-fun m!4891979 () Bool)

(assert (=> bm!296049 m!4891979))

(declare-fun m!4891981 () Bool)

(assert (=> b!4299796 m!4891981))

(declare-fun m!4891983 () Bool)

(assert (=> bm!296065 m!4891983))

(declare-fun m!4891985 () Bool)

(assert (=> bm!296066 m!4891985))

(declare-fun m!4891987 () Bool)

(assert (=> bm!296047 m!4891987))

(declare-fun m!4891989 () Bool)

(assert (=> bm!296072 m!4891989))

(declare-fun m!4891991 () Bool)

(assert (=> bm!296070 m!4891991))

(declare-fun m!4891993 () Bool)

(assert (=> bm!296063 m!4891993))

(declare-fun m!4891995 () Bool)

(assert (=> bm!296062 m!4891995))

(declare-fun m!4891997 () Bool)

(assert (=> bm!296051 m!4891997))

(declare-fun m!4891999 () Bool)

(assert (=> bm!296061 m!4891999))

(declare-fun m!4892001 () Bool)

(assert (=> bm!296060 m!4892001))

(declare-fun m!4892003 () Bool)

(assert (=> bm!296050 m!4892003))

(declare-fun m!4892005 () Bool)

(assert (=> b!4299787 m!4892005))

(declare-fun m!4892007 () Bool)

(assert (=> bm!296059 m!4892007))

(declare-fun m!4892009 () Bool)

(assert (=> bm!296048 m!4892009))

(declare-fun m!4892011 () Bool)

(assert (=> bm!296071 m!4892011))

(declare-fun m!4892013 () Bool)

(assert (=> bm!296057 m!4892013))

(declare-fun m!4892015 () Bool)

(assert (=> bm!296052 m!4892015))

(declare-fun m!4892017 () Bool)

(assert (=> b!4299789 m!4892017))

(declare-fun m!4892019 () Bool)

(assert (=> b!4299789 m!4892019))

(declare-fun m!4892021 () Bool)

(assert (=> b!4299789 m!4892021))

(declare-fun m!4892023 () Bool)

(assert (=> b!4299789 m!4892023))

(declare-fun m!4892025 () Bool)

(assert (=> b!4299789 m!4892025))

(declare-fun m!4892027 () Bool)

(assert (=> bm!296069 m!4892027))

(declare-fun m!4892029 () Bool)

(assert (=> d!1266568 m!4892029))

(assert (=> d!1266568 m!4891941))

(assert (=> d!1266568 m!4891925))

(assert (=> d!1266568 m!4891937))

(assert (=> b!4299733 d!1266568))

(declare-fun d!1266570 () Bool)

(declare-fun e!2672626 () Bool)

(assert (=> d!1266570 e!2672626))

(declare-fun res!1762282 () Bool)

(assert (=> d!1266570 (=> (not res!1762282) (not e!2672626))))

(declare-fun lt!1521851 () ListMap!1475)

(assert (=> d!1266570 (= res!1762282 (contains!9857 lt!1521851 (_1!26219 lt!1521676)))))

(declare-fun lt!1521853 () List!48059)

(assert (=> d!1266570 (= lt!1521851 (ListMap!1476 lt!1521853))))

(declare-fun lt!1521850 () Unit!66795)

(declare-fun lt!1521852 () Unit!66795)

(assert (=> d!1266570 (= lt!1521850 lt!1521852)))

(declare-datatypes ((Option!10162 0))(
  ( (None!10161) (Some!10161 (v!41902 V!9246)) )
))
(declare-fun getValueByKey!211 (List!48059 K!9044) Option!10162)

(assert (=> d!1266570 (= (getValueByKey!211 lt!1521853 (_1!26219 lt!1521676)) (Some!10161 (_2!26219 lt!1521676)))))

(declare-fun lemmaContainsTupThenGetReturnValue!42 (List!48059 K!9044 V!9246) Unit!66795)

(assert (=> d!1266570 (= lt!1521852 (lemmaContainsTupThenGetReturnValue!42 lt!1521853 (_1!26219 lt!1521676) (_2!26219 lt!1521676)))))

(declare-fun insertNoDuplicatedKeys!23 (List!48059 K!9044 V!9246) List!48059)

(assert (=> d!1266570 (= lt!1521853 (insertNoDuplicatedKeys!23 (toList!2192 lt!1521674) (_1!26219 lt!1521676) (_2!26219 lt!1521676)))))

(assert (=> d!1266570 (= (+!171 lt!1521674 lt!1521676) lt!1521851)))

(declare-fun b!4299802 () Bool)

(declare-fun res!1762281 () Bool)

(assert (=> b!4299802 (=> (not res!1762281) (not e!2672626))))

(assert (=> b!4299802 (= res!1762281 (= (getValueByKey!211 (toList!2192 lt!1521851) (_1!26219 lt!1521676)) (Some!10161 (_2!26219 lt!1521676))))))

(declare-fun b!4299803 () Bool)

(declare-fun contains!9860 (List!48059 tuple2!45880) Bool)

(assert (=> b!4299803 (= e!2672626 (contains!9860 (toList!2192 lt!1521851) lt!1521676))))

(assert (= (and d!1266570 res!1762282) b!4299802))

(assert (= (and b!4299802 res!1762281) b!4299803))

(declare-fun m!4892031 () Bool)

(assert (=> d!1266570 m!4892031))

(declare-fun m!4892033 () Bool)

(assert (=> d!1266570 m!4892033))

(declare-fun m!4892035 () Bool)

(assert (=> d!1266570 m!4892035))

(declare-fun m!4892037 () Bool)

(assert (=> d!1266570 m!4892037))

(declare-fun m!4892039 () Bool)

(assert (=> b!4299802 m!4892039))

(declare-fun m!4892041 () Bool)

(assert (=> b!4299803 m!4892041))

(assert (=> b!4299733 d!1266570))

(declare-fun d!1266572 () Bool)

(assert (=> d!1266572 (= (array_inv!5175 (_keys!4819 (v!41899 (underlying!9267 (v!41900 (underlying!9268 hm!64)))))) (bvsge (size!35262 (_keys!4819 (v!41899 (underlying!9267 (v!41900 (underlying!9268 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4299725 d!1266572))

(declare-fun d!1266574 () Bool)

(assert (=> d!1266574 (= (array_inv!5176 (_values!4800 (v!41899 (underlying!9267 (v!41900 (underlying!9268 hm!64)))))) (bvsge (size!35263 (_values!4800 (v!41899 (underlying!9267 (v!41900 (underlying!9268 hm!64)))))) #b00000000000000000000000000000000))))

(assert (=> b!4299725 d!1266574))

(declare-fun d!1266576 () Bool)

(declare-fun res!1762287 () Bool)

(declare-fun e!2672631 () Bool)

(assert (=> d!1266576 (=> res!1762287 e!2672631)))

(assert (=> d!1266576 (= res!1762287 ((_ is Nil!47935) (toList!2192 lt!1521674)))))

(assert (=> d!1266576 (= (forall!8628 (toList!2192 lt!1521674) p!6034) e!2672631)))

(declare-fun b!4299808 () Bool)

(declare-fun e!2672632 () Bool)

(assert (=> b!4299808 (= e!2672631 e!2672632)))

(declare-fun res!1762288 () Bool)

(assert (=> b!4299808 (=> (not res!1762288) (not e!2672632))))

(assert (=> b!4299808 (= res!1762288 (dynLambda!20357 p!6034 (h!53355 (toList!2192 lt!1521674))))))

(declare-fun b!4299809 () Bool)

(assert (=> b!4299809 (= e!2672632 (forall!8628 (t!354772 (toList!2192 lt!1521674)) p!6034))))

(assert (= (and d!1266576 (not res!1762287)) b!4299808))

(assert (= (and b!4299808 res!1762288) b!4299809))

(declare-fun b_lambda!126317 () Bool)

(assert (=> (not b_lambda!126317) (not b!4299808)))

(declare-fun t!354774 () Bool)

(declare-fun tb!257199 () Bool)

(assert (=> (and start!412840 (= p!6034 p!6034) t!354774) tb!257199))

(declare-fun result!314476 () Bool)

(assert (=> tb!257199 (= result!314476 true)))

(assert (=> b!4299808 t!354774))

(declare-fun b_and!339341 () Bool)

(assert (= b_and!339339 (and (=> t!354774 result!314476) b_and!339341)))

(declare-fun m!4892043 () Bool)

(assert (=> b!4299808 m!4892043))

(declare-fun m!4892045 () Bool)

(assert (=> b!4299809 m!4892045))

(assert (=> b!4299726 d!1266576))

(declare-fun d!1266578 () Bool)

(declare-fun lt!1521856 () ListMap!1475)

(declare-fun invariantList!539 (List!48059) Bool)

(assert (=> d!1266578 (invariantList!539 (toList!2192 lt!1521856))))

(assert (=> d!1266578 (= lt!1521856 (extractMap!270 (toList!2193 (map!9895 (v!41900 (underlying!9268 hm!64))))))))

(assert (=> d!1266578 (valid!3499 hm!64)))

(assert (=> d!1266578 (= (map!9894 hm!64) lt!1521856)))

(declare-fun bs!603959 () Bool)

(assert (= bs!603959 d!1266578))

(declare-fun m!4892047 () Bool)

(assert (=> bs!603959 m!4892047))

(assert (=> bs!603959 m!4891941))

(declare-fun m!4892049 () Bool)

(assert (=> bs!603959 m!4892049))

(assert (=> bs!603959 m!4891937))

(assert (=> b!4299726 d!1266578))

(declare-fun mapIsEmpty!20301 () Bool)

(declare-fun mapRes!20301 () Bool)

(assert (=> mapIsEmpty!20301 mapRes!20301))

(declare-fun condMapEmpty!20301 () Bool)

(declare-fun mapDefault!20301 () List!48059)

(assert (=> mapNonEmpty!20298 (= condMapEmpty!20301 (= mapRest!20298 ((as const (Array (_ BitVec 32) List!48059)) mapDefault!20301)))))

(declare-fun e!2672637 () Bool)

(assert (=> mapNonEmpty!20298 (= tp!1321018 (and e!2672637 mapRes!20301))))

(declare-fun e!2672638 () Bool)

(declare-fun b!4299816 () Bool)

(declare-fun tp!1321027 () Bool)

(assert (=> b!4299816 (= e!2672638 (and tp_is_empty!23249 tp_is_empty!23251 tp!1321027))))

(declare-fun mapNonEmpty!20301 () Bool)

(declare-fun tp!1321026 () Bool)

(assert (=> mapNonEmpty!20301 (= mapRes!20301 (and tp!1321026 e!2672638))))

(declare-fun mapRest!20301 () (Array (_ BitVec 32) List!48059))

(declare-fun mapValue!20301 () List!48059)

(declare-fun mapKey!20301 () (_ BitVec 32))

(assert (=> mapNonEmpty!20301 (= mapRest!20298 (store mapRest!20301 mapKey!20301 mapValue!20301))))

(declare-fun b!4299817 () Bool)

(declare-fun tp!1321025 () Bool)

(assert (=> b!4299817 (= e!2672637 (and tp_is_empty!23249 tp_is_empty!23251 tp!1321025))))

(assert (= (and mapNonEmpty!20298 condMapEmpty!20301) mapIsEmpty!20301))

(assert (= (and mapNonEmpty!20298 (not condMapEmpty!20301)) mapNonEmpty!20301))

(assert (= (and mapNonEmpty!20301 ((_ is Cons!47935) mapValue!20301)) b!4299816))

(assert (= (and mapNonEmpty!20298 ((_ is Cons!47935) mapDefault!20301)) b!4299817))

(declare-fun m!4892051 () Bool)

(assert (=> mapNonEmpty!20301 m!4892051))

(declare-fun b!4299822 () Bool)

(declare-fun tp!1321030 () Bool)

(declare-fun e!2672641 () Bool)

(assert (=> b!4299822 (= e!2672641 (and tp_is_empty!23249 tp_is_empty!23251 tp!1321030))))

(assert (=> mapNonEmpty!20298 (= tp!1321015 e!2672641)))

(assert (= (and mapNonEmpty!20298 ((_ is Cons!47935) mapValue!20298)) b!4299822))

(declare-fun tp!1321031 () Bool)

(declare-fun b!4299823 () Bool)

(declare-fun e!2672642 () Bool)

(assert (=> b!4299823 (= e!2672642 (and tp_is_empty!23249 tp_is_empty!23251 tp!1321031))))

(assert (=> b!4299725 (= tp!1321017 e!2672642)))

(assert (= (and b!4299725 ((_ is Cons!47935) (zeroValue!4778 (v!41899 (underlying!9267 (v!41900 (underlying!9268 hm!64))))))) b!4299823))

(declare-fun e!2672643 () Bool)

(declare-fun tp!1321032 () Bool)

(declare-fun b!4299824 () Bool)

(assert (=> b!4299824 (= e!2672643 (and tp_is_empty!23249 tp_is_empty!23251 tp!1321032))))

(assert (=> b!4299725 (= tp!1321011 e!2672643)))

(assert (= (and b!4299725 ((_ is Cons!47935) (minValue!4778 (v!41899 (underlying!9267 (v!41900 (underlying!9268 hm!64))))))) b!4299824))

(declare-fun b!4299825 () Bool)

(declare-fun tp!1321033 () Bool)

(declare-fun e!2672644 () Bool)

(assert (=> b!4299825 (= e!2672644 (and tp_is_empty!23249 tp_is_empty!23251 tp!1321033))))

(assert (=> b!4299730 (= tp!1321014 e!2672644)))

(assert (= (and b!4299730 ((_ is Cons!47935) mapDefault!20298)) b!4299825))

(declare-fun b_lambda!126319 () Bool)

(assert (= b_lambda!126317 (or (and start!412840 b_free!128017) b_lambda!126319)))

(check-sat (not bm!296071) (not bm!296062) (not b!4299789) (not mapNonEmpty!20301) (not bm!296072) (not b!4299785) (not b!4299796) (not bm!296074) (not b!4299825) (not bm!296057) (not b!4299803) (not b_next!128721) (not bm!296060) (not b!4299792) (not d!1266570) (not bm!296065) (not bm!296051) (not b!4299787) (not bm!296056) (not bm!296073) (not bm!296061) (not bm!296069) (not b_lambda!126319) (not bm!296050) (not bm!296047) (not bm!296068) (not bm!296064) (not bm!296049) (not bm!296066) (not bm!296054) tp_is_empty!23251 (not bm!296046) (not b!4299740) (not b!4299739) (not b_next!128717) (not bm!296058) (not bm!296052) (not b!4299823) (not b!4299809) (not b!4299824) (not bm!296067) (not bm!296044) b_and!339335 (not d!1266566) b_and!339341 (not b!4299791) (not b_next!128719) (not b!4299822) (not b!4299817) (not b!4299816) tp_is_empty!23249 (not b_lambda!126315) (not bm!296070) (not d!1266578) (not bm!296048) (not bm!296059) (not bm!296063) (not b!4299802) b_and!339333 (not bm!296055) (not d!1266568))
(check-sat (not b_next!128721) (not b_next!128717) b_and!339335 b_and!339341 (not b_next!128719) b_and!339333)
