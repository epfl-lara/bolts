; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!413106 () Bool)

(assert start!413106)

(declare-fun b!4301664 () Bool)

(declare-fun b_free!128139 () Bool)

(declare-fun b_next!128843 () Bool)

(assert (=> b!4301664 (= b_free!128139 (not b_next!128843))))

(declare-fun tp!1321734 () Bool)

(declare-fun b_and!339521 () Bool)

(assert (=> b!4301664 (= tp!1321734 b_and!339521)))

(declare-fun b!4301661 () Bool)

(declare-fun b_free!128141 () Bool)

(declare-fun b_next!128845 () Bool)

(assert (=> b!4301661 (= b_free!128141 (not b_next!128845))))

(declare-fun tp!1321738 () Bool)

(declare-fun b_and!339523 () Bool)

(assert (=> b!4301661 (= tp!1321738 b_and!339523)))

(declare-fun b!4301657 () Bool)

(declare-fun e!2674075 () Bool)

(declare-fun e!2674076 () Bool)

(assert (=> b!4301657 (= e!2674075 e!2674076)))

(declare-fun res!1762997 () Bool)

(assert (=> b!4301657 (=> (not res!1762997) (not e!2674076))))

(declare-datatypes ((V!9311 0))(
  ( (V!9312 (val!15545 Int)) )
))
(declare-datatypes ((K!9109 0))(
  ( (K!9110 (val!15546 Int)) )
))
(declare-datatypes ((tuple2!46002 0))(
  ( (tuple2!46003 (_1!26280 K!9109) (_2!26280 V!9311)) )
))
(declare-datatypes ((List!48103 0))(
  ( (Nil!47979) (Cons!47979 (h!53399 tuple2!46002) (t!354870 List!48103)) )
))
(declare-datatypes ((array!16300 0))(
  ( (array!16301 (arr!7275 (Array (_ BitVec 32) (_ BitVec 64))) (size!35314 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4461 0))(
  ( (HashableExt!4460 (__x!29660 Int)) )
))
(declare-datatypes ((array!16302 0))(
  ( (array!16303 (arr!7276 (Array (_ BitVec 32) List!48103)) (size!35315 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9090 0))(
  ( (LongMapFixedSize!9091 (defaultEntry!4930 Int) (mask!13046 (_ BitVec 32)) (extraKeys!4794 (_ BitVec 32)) (zeroValue!4804 List!48103) (minValue!4804 List!48103) (_size!9133 (_ BitVec 32)) (_keys!4845 array!16300) (_values!4826 array!16302) (_vacant!4606 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!17989 0))(
  ( (Cell!17990 (v!41970 LongMapFixedSize!9090)) )
))
(declare-datatypes ((MutLongMap!4545 0))(
  ( (LongMap!4545 (underlying!9319 Cell!17989)) (MutLongMapExt!4544 (__x!29661 Int)) )
))
(declare-datatypes ((Cell!17991 0))(
  ( (Cell!17992 (v!41971 MutLongMap!4545)) )
))
(declare-datatypes ((MutableMap!4451 0))(
  ( (MutableMapExt!4450 (__x!29662 Int)) (HashMap!4451 (underlying!9320 Cell!17991) (hashF!6496 Hashable!4461) (_size!9134 (_ BitVec 32)) (defaultValue!4622 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4451)

(declare-fun key!2048 () K!9109)

(declare-fun contains!9901 (MutableMap!4451 K!9109) Bool)

(assert (=> b!4301657 (= res!1762997 (contains!9901 thiss!42308 key!2048))))

(declare-datatypes ((tuple2!46004 0))(
  ( (tuple2!46005 (_1!26281 (_ BitVec 64)) (_2!26281 List!48103)) )
))
(declare-datatypes ((List!48104 0))(
  ( (Nil!47980) (Cons!47980 (h!53400 tuple2!46004) (t!354871 List!48104)) )
))
(declare-datatypes ((ListLongMap!829 0))(
  ( (ListLongMap!830 (toList!2223 List!48104)) )
))
(declare-fun lt!1523514 () ListLongMap!829)

(declare-fun map!9939 (MutLongMap!4545) ListLongMap!829)

(assert (=> b!4301657 (= lt!1523514 (map!9939 (v!41971 (underlying!9320 thiss!42308))))))

(declare-datatypes ((ListMap!1511 0))(
  ( (ListMap!1512 (toList!2224 List!48103)) )
))
(declare-fun lt!1523512 () ListMap!1511)

(declare-fun map!9940 (MutableMap!4451) ListMap!1511)

(assert (=> b!4301657 (= lt!1523512 (map!9940 thiss!42308))))

(declare-fun mapNonEmpty!20404 () Bool)

(declare-fun mapRes!20404 () Bool)

(declare-fun tp!1321736 () Bool)

(declare-fun tp!1321737 () Bool)

(assert (=> mapNonEmpty!20404 (= mapRes!20404 (and tp!1321736 tp!1321737))))

(declare-fun mapKey!20404 () (_ BitVec 32))

(declare-fun mapRest!20404 () (Array (_ BitVec 32) List!48103))

(declare-fun mapValue!20404 () List!48103)

(assert (=> mapNonEmpty!20404 (= (arr!7276 (_values!4826 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308)))))) (store mapRest!20404 mapKey!20404 mapValue!20404))))

(declare-fun b!4301658 () Bool)

(declare-fun res!1762995 () Bool)

(assert (=> b!4301658 (=> (not res!1762995) (not e!2674075))))

(declare-fun valid!3530 (MutableMap!4451) Bool)

(assert (=> b!4301658 (= res!1762995 (valid!3530 thiss!42308))))

(declare-fun b!4301659 () Bool)

(declare-fun e!2674074 () Bool)

(declare-fun e!2674070 () Bool)

(declare-fun lt!1523511 () MutLongMap!4545)

(get-info :version)

(assert (=> b!4301659 (= e!2674074 (and e!2674070 ((_ is LongMap!4545) lt!1523511)))))

(assert (=> b!4301659 (= lt!1523511 (v!41971 (underlying!9320 thiss!42308)))))

(declare-fun b!4301660 () Bool)

(declare-fun e!2674069 () Bool)

(declare-fun e!2674071 () Bool)

(assert (=> b!4301660 (= e!2674069 e!2674071)))

(declare-fun e!2674073 () Bool)

(assert (=> b!4301661 (= e!2674073 (and e!2674074 tp!1321738))))

(declare-fun b!4301662 () Bool)

(declare-fun e!2674068 () Bool)

(assert (=> b!4301662 (= e!2674076 e!2674068)))

(declare-fun res!1762996 () Bool)

(assert (=> b!4301662 (=> (not res!1762996) (not e!2674068))))

(assert (=> b!4301662 (= res!1762996 ((_ is LongMap!4545) (v!41971 (underlying!9320 thiss!42308))))))

(declare-fun lt!1523513 () List!48103)

(declare-fun removePairForKey!147 (List!48103 K!9109) List!48103)

(declare-fun apply!10888 (MutLongMap!4545 (_ BitVec 64)) List!48103)

(declare-fun hash!849 (Hashable!4461 K!9109) (_ BitVec 64))

(assert (=> b!4301662 (= lt!1523513 (removePairForKey!147 (apply!10888 (v!41971 (underlying!9320 thiss!42308)) (hash!849 (hashF!6496 thiss!42308) key!2048)) key!2048))))

(declare-fun res!1762998 () Bool)

(assert (=> start!413106 (=> (not res!1762998) (not e!2674075))))

(assert (=> start!413106 (= res!1762998 ((_ is HashMap!4451) thiss!42308))))

(assert (=> start!413106 e!2674075))

(assert (=> start!413106 e!2674073))

(declare-fun tp_is_empty!23319 () Bool)

(assert (=> start!413106 tp_is_empty!23319))

(declare-fun b!4301663 () Bool)

(declare-fun e!2674072 () Bool)

(declare-fun tp!1321735 () Bool)

(assert (=> b!4301663 (= e!2674072 (and tp!1321735 mapRes!20404))))

(declare-fun condMapEmpty!20404 () Bool)

(declare-fun mapDefault!20404 () List!48103)

(assert (=> b!4301663 (= condMapEmpty!20404 (= (arr!7276 (_values!4826 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48103)) mapDefault!20404)))))

(declare-fun tp!1321739 () Bool)

(declare-fun tp!1321733 () Bool)

(declare-fun array_inv!5217 (array!16300) Bool)

(declare-fun array_inv!5218 (array!16302) Bool)

(assert (=> b!4301664 (= e!2674071 (and tp!1321734 tp!1321733 tp!1321739 (array_inv!5217 (_keys!4845 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308)))))) (array_inv!5218 (_values!4826 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308)))))) e!2674072))))

(declare-fun b!4301665 () Bool)

(assert (=> b!4301665 (= e!2674070 e!2674069)))

(declare-fun mapIsEmpty!20404 () Bool)

(assert (=> mapIsEmpty!20404 mapRes!20404))

(declare-fun b!4301666 () Bool)

(declare-fun valid!3531 (MutLongMap!4545) Bool)

(assert (=> b!4301666 (= e!2674068 (not (valid!3531 (v!41971 (underlying!9320 thiss!42308)))))))

(assert (= (and start!413106 res!1762998) b!4301658))

(assert (= (and b!4301658 res!1762995) b!4301657))

(assert (= (and b!4301657 res!1762997) b!4301662))

(assert (= (and b!4301662 res!1762996) b!4301666))

(assert (= (and b!4301663 condMapEmpty!20404) mapIsEmpty!20404))

(assert (= (and b!4301663 (not condMapEmpty!20404)) mapNonEmpty!20404))

(assert (= b!4301664 b!4301663))

(assert (= b!4301660 b!4301664))

(assert (= b!4301665 b!4301660))

(assert (= (and b!4301659 ((_ is LongMap!4545) (v!41971 (underlying!9320 thiss!42308)))) b!4301665))

(assert (= b!4301661 b!4301659))

(assert (= (and start!413106 ((_ is HashMap!4451) thiss!42308)) b!4301661))

(declare-fun m!4893853 () Bool)

(assert (=> b!4301666 m!4893853))

(declare-fun m!4893855 () Bool)

(assert (=> b!4301664 m!4893855))

(declare-fun m!4893857 () Bool)

(assert (=> b!4301664 m!4893857))

(declare-fun m!4893859 () Bool)

(assert (=> b!4301657 m!4893859))

(declare-fun m!4893861 () Bool)

(assert (=> b!4301657 m!4893861))

(declare-fun m!4893863 () Bool)

(assert (=> b!4301657 m!4893863))

(declare-fun m!4893865 () Bool)

(assert (=> b!4301662 m!4893865))

(assert (=> b!4301662 m!4893865))

(declare-fun m!4893867 () Bool)

(assert (=> b!4301662 m!4893867))

(assert (=> b!4301662 m!4893867))

(declare-fun m!4893869 () Bool)

(assert (=> b!4301662 m!4893869))

(declare-fun m!4893871 () Bool)

(assert (=> b!4301658 m!4893871))

(declare-fun m!4893873 () Bool)

(assert (=> mapNonEmpty!20404 m!4893873))

(check-sat (not b!4301664) (not b_next!128845) b_and!339523 (not b!4301658) (not mapNonEmpty!20404) (not b_next!128843) tp_is_empty!23319 (not b!4301666) (not b!4301662) b_and!339521 (not b!4301657) (not b!4301663))
(check-sat b_and!339521 b_and!339523 (not b_next!128845) (not b_next!128843))
(get-model)

(declare-fun d!1266851 () Bool)

(declare-fun res!1763003 () Bool)

(declare-fun e!2674080 () Bool)

(assert (=> d!1266851 (=> (not res!1763003) (not e!2674080))))

(assert (=> d!1266851 (= res!1763003 (valid!3531 (v!41971 (underlying!9320 thiss!42308))))))

(assert (=> d!1266851 (= (valid!3530 thiss!42308) e!2674080)))

(declare-fun b!4301671 () Bool)

(declare-fun res!1763004 () Bool)

(assert (=> b!4301671 (=> (not res!1763004) (not e!2674080))))

(declare-fun lambda!132059 () Int)

(declare-fun forall!8646 (List!48104 Int) Bool)

(assert (=> b!4301671 (= res!1763004 (forall!8646 (toList!2223 (map!9939 (v!41971 (underlying!9320 thiss!42308)))) lambda!132059))))

(declare-fun b!4301672 () Bool)

(declare-fun allKeysSameHashInMap!279 (ListLongMap!829 Hashable!4461) Bool)

(assert (=> b!4301672 (= e!2674080 (allKeysSameHashInMap!279 (map!9939 (v!41971 (underlying!9320 thiss!42308))) (hashF!6496 thiss!42308)))))

(assert (= (and d!1266851 res!1763003) b!4301671))

(assert (= (and b!4301671 res!1763004) b!4301672))

(assert (=> d!1266851 m!4893853))

(assert (=> b!4301671 m!4893861))

(declare-fun m!4893875 () Bool)

(assert (=> b!4301671 m!4893875))

(assert (=> b!4301672 m!4893861))

(assert (=> b!4301672 m!4893861))

(declare-fun m!4893877 () Bool)

(assert (=> b!4301672 m!4893877))

(assert (=> b!4301658 d!1266851))

(declare-fun d!1266853 () Bool)

(assert (=> d!1266853 (= (array_inv!5217 (_keys!4845 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308)))))) (bvsge (size!35314 (_keys!4845 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4301664 d!1266853))

(declare-fun d!1266855 () Bool)

(assert (=> d!1266855 (= (array_inv!5218 (_values!4826 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308)))))) (bvsge (size!35315 (_values!4826 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308)))))) #b00000000000000000000000000000000))))

(assert (=> b!4301664 d!1266855))

(declare-fun b!4301684 () Bool)

(declare-fun e!2674086 () List!48103)

(assert (=> b!4301684 (= e!2674086 Nil!47979)))

(declare-fun b!4301681 () Bool)

(declare-fun e!2674085 () List!48103)

(assert (=> b!4301681 (= e!2674085 (t!354870 (apply!10888 (v!41971 (underlying!9320 thiss!42308)) (hash!849 (hashF!6496 thiss!42308) key!2048))))))

(declare-fun b!4301683 () Bool)

(assert (=> b!4301683 (= e!2674086 (Cons!47979 (h!53399 (apply!10888 (v!41971 (underlying!9320 thiss!42308)) (hash!849 (hashF!6496 thiss!42308) key!2048))) (removePairForKey!147 (t!354870 (apply!10888 (v!41971 (underlying!9320 thiss!42308)) (hash!849 (hashF!6496 thiss!42308) key!2048))) key!2048)))))

(declare-fun d!1266857 () Bool)

(declare-fun lt!1523517 () List!48103)

(declare-fun containsKey!246 (List!48103 K!9109) Bool)

(assert (=> d!1266857 (not (containsKey!246 lt!1523517 key!2048))))

(assert (=> d!1266857 (= lt!1523517 e!2674085)))

(declare-fun c!731677 () Bool)

(assert (=> d!1266857 (= c!731677 (and ((_ is Cons!47979) (apply!10888 (v!41971 (underlying!9320 thiss!42308)) (hash!849 (hashF!6496 thiss!42308) key!2048))) (= (_1!26280 (h!53399 (apply!10888 (v!41971 (underlying!9320 thiss!42308)) (hash!849 (hashF!6496 thiss!42308) key!2048)))) key!2048)))))

(declare-fun noDuplicateKeys!157 (List!48103) Bool)

(assert (=> d!1266857 (noDuplicateKeys!157 (apply!10888 (v!41971 (underlying!9320 thiss!42308)) (hash!849 (hashF!6496 thiss!42308) key!2048)))))

(assert (=> d!1266857 (= (removePairForKey!147 (apply!10888 (v!41971 (underlying!9320 thiss!42308)) (hash!849 (hashF!6496 thiss!42308) key!2048)) key!2048) lt!1523517)))

(declare-fun b!4301682 () Bool)

(assert (=> b!4301682 (= e!2674085 e!2674086)))

(declare-fun c!731678 () Bool)

(assert (=> b!4301682 (= c!731678 ((_ is Cons!47979) (apply!10888 (v!41971 (underlying!9320 thiss!42308)) (hash!849 (hashF!6496 thiss!42308) key!2048))))))

(assert (= (and d!1266857 c!731677) b!4301681))

(assert (= (and d!1266857 (not c!731677)) b!4301682))

(assert (= (and b!4301682 c!731678) b!4301683))

(assert (= (and b!4301682 (not c!731678)) b!4301684))

(declare-fun m!4893879 () Bool)

(assert (=> b!4301683 m!4893879))

(declare-fun m!4893881 () Bool)

(assert (=> d!1266857 m!4893881))

(assert (=> d!1266857 m!4893867))

(declare-fun m!4893883 () Bool)

(assert (=> d!1266857 m!4893883))

(assert (=> b!4301662 d!1266857))

(declare-fun d!1266859 () Bool)

(declare-fun e!2674089 () Bool)

(assert (=> d!1266859 e!2674089))

(declare-fun c!731681 () Bool)

(declare-fun contains!9902 (MutLongMap!4545 (_ BitVec 64)) Bool)

(assert (=> d!1266859 (= c!731681 (contains!9902 (v!41971 (underlying!9320 thiss!42308)) (hash!849 (hashF!6496 thiss!42308) key!2048)))))

(declare-fun lt!1523520 () List!48103)

(declare-fun apply!10889 (LongMapFixedSize!9090 (_ BitVec 64)) List!48103)

(assert (=> d!1266859 (= lt!1523520 (apply!10889 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308)))) (hash!849 (hashF!6496 thiss!42308) key!2048)))))

(assert (=> d!1266859 (valid!3531 (v!41971 (underlying!9320 thiss!42308)))))

(assert (=> d!1266859 (= (apply!10888 (v!41971 (underlying!9320 thiss!42308)) (hash!849 (hashF!6496 thiss!42308) key!2048)) lt!1523520)))

(declare-fun b!4301689 () Bool)

(declare-datatypes ((Option!10173 0))(
  ( (None!10172) (Some!10172 (v!41972 List!48103)) )
))
(declare-fun get!15516 (Option!10173) List!48103)

(declare-fun getValueByKey!220 (List!48104 (_ BitVec 64)) Option!10173)

(assert (=> b!4301689 (= e!2674089 (= lt!1523520 (get!15516 (getValueByKey!220 (toList!2223 (map!9939 (v!41971 (underlying!9320 thiss!42308)))) (hash!849 (hashF!6496 thiss!42308) key!2048)))))))

(declare-fun b!4301690 () Bool)

(declare-fun dynLambda!20368 (Int (_ BitVec 64)) List!48103)

(assert (=> b!4301690 (= e!2674089 (= lt!1523520 (dynLambda!20368 (defaultEntry!4930 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308))))) (hash!849 (hashF!6496 thiss!42308) key!2048))))))

(assert (=> b!4301690 ((_ is LongMap!4545) (v!41971 (underlying!9320 thiss!42308)))))

(assert (= (and d!1266859 c!731681) b!4301689))

(assert (= (and d!1266859 (not c!731681)) b!4301690))

(declare-fun b_lambda!126435 () Bool)

(assert (=> (not b_lambda!126435) (not b!4301690)))

(declare-fun t!354873 () Bool)

(declare-fun tb!257253 () Bool)

(assert (=> (and b!4301664 (= (defaultEntry!4930 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308))))) (defaultEntry!4930 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308)))))) t!354873) tb!257253))

(assert (=> b!4301690 t!354873))

(declare-fun result!314566 () Bool)

(declare-fun b_and!339525 () Bool)

(assert (= b_and!339521 (and (=> t!354873 result!314566) b_and!339525)))

(assert (=> d!1266859 m!4893865))

(declare-fun m!4893885 () Bool)

(assert (=> d!1266859 m!4893885))

(assert (=> d!1266859 m!4893865))

(declare-fun m!4893887 () Bool)

(assert (=> d!1266859 m!4893887))

(assert (=> d!1266859 m!4893853))

(assert (=> b!4301689 m!4893861))

(assert (=> b!4301689 m!4893865))

(declare-fun m!4893889 () Bool)

(assert (=> b!4301689 m!4893889))

(assert (=> b!4301689 m!4893889))

(declare-fun m!4893891 () Bool)

(assert (=> b!4301689 m!4893891))

(assert (=> b!4301690 m!4893865))

(declare-fun m!4893893 () Bool)

(assert (=> b!4301690 m!4893893))

(assert (=> b!4301662 d!1266859))

(declare-fun d!1266861 () Bool)

(declare-fun hash!850 (Hashable!4461 K!9109) (_ BitVec 64))

(assert (=> d!1266861 (= (hash!849 (hashF!6496 thiss!42308) key!2048) (hash!850 (hashF!6496 thiss!42308) key!2048))))

(declare-fun bs!604070 () Bool)

(assert (= bs!604070 d!1266861))

(declare-fun m!4893895 () Bool)

(assert (=> bs!604070 m!4893895))

(assert (=> b!4301662 d!1266861))

(declare-fun d!1266863 () Bool)

(declare-fun valid!3532 (LongMapFixedSize!9090) Bool)

(assert (=> d!1266863 (= (valid!3531 (v!41971 (underlying!9320 thiss!42308))) (valid!3532 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308))))))))

(declare-fun bs!604071 () Bool)

(assert (= bs!604071 d!1266863))

(declare-fun m!4893897 () Bool)

(assert (=> bs!604071 m!4893897))

(assert (=> b!4301666 d!1266863))

(declare-fun bs!604072 () Bool)

(declare-fun b!4301714 () Bool)

(assert (= bs!604072 (and b!4301714 b!4301671)))

(declare-fun lambda!132062 () Int)

(assert (=> bs!604072 (= lambda!132062 lambda!132059)))

(declare-fun bm!296653 () Bool)

(declare-fun call!296658 () (_ BitVec 64))

(assert (=> bm!296653 (= call!296658 (hash!849 (hashF!6496 thiss!42308) key!2048))))

(declare-fun d!1266865 () Bool)

(declare-fun lt!1523565 () Bool)

(declare-fun contains!9903 (ListMap!1511 K!9109) Bool)

(assert (=> d!1266865 (= lt!1523565 (contains!9903 (map!9940 thiss!42308) key!2048))))

(declare-fun e!2674105 () Bool)

(assert (=> d!1266865 (= lt!1523565 e!2674105)))

(declare-fun res!1763013 () Bool)

(assert (=> d!1266865 (=> (not res!1763013) (not e!2674105))))

(declare-fun lt!1523568 () (_ BitVec 64))

(assert (=> d!1266865 (= res!1763013 (contains!9902 (v!41971 (underlying!9320 thiss!42308)) lt!1523568))))

(declare-datatypes ((Unit!66963 0))(
  ( (Unit!66964) )
))
(declare-fun lt!1523579 () Unit!66963)

(declare-fun e!2674109 () Unit!66963)

(assert (=> d!1266865 (= lt!1523579 e!2674109)))

(declare-fun c!731690 () Bool)

(declare-fun extractMap!279 (List!48104) ListMap!1511)

(assert (=> d!1266865 (= c!731690 (contains!9903 (extractMap!279 (toList!2223 (map!9939 (v!41971 (underlying!9320 thiss!42308))))) key!2048))))

(declare-fun lt!1523580 () Unit!66963)

(declare-fun e!2674110 () Unit!66963)

(assert (=> d!1266865 (= lt!1523580 e!2674110)))

(declare-fun c!731692 () Bool)

(assert (=> d!1266865 (= c!731692 (contains!9902 (v!41971 (underlying!9320 thiss!42308)) lt!1523568))))

(assert (=> d!1266865 (= lt!1523568 (hash!849 (hashF!6496 thiss!42308) key!2048))))

(assert (=> d!1266865 (valid!3530 thiss!42308)))

(assert (=> d!1266865 (= (contains!9901 thiss!42308 key!2048) lt!1523565)))

(declare-fun b!4301713 () Bool)

(declare-fun e!2674104 () Unit!66963)

(declare-fun Unit!66965 () Unit!66963)

(assert (=> b!4301713 (= e!2674104 Unit!66965)))

(declare-fun forallContained!1474 (List!48104 Int tuple2!46004) Unit!66963)

(assert (=> b!4301714 (= e!2674110 (forallContained!1474 (toList!2223 (map!9939 (v!41971 (underlying!9320 thiss!42308)))) lambda!132062 (tuple2!46005 lt!1523568 (apply!10888 (v!41971 (underlying!9320 thiss!42308)) lt!1523568))))))

(declare-fun c!731693 () Bool)

(declare-fun contains!9904 (List!48104 tuple2!46004) Bool)

(assert (=> b!4301714 (= c!731693 (not (contains!9904 (toList!2223 (map!9939 (v!41971 (underlying!9320 thiss!42308)))) (tuple2!46005 lt!1523568 (apply!10888 (v!41971 (underlying!9320 thiss!42308)) lt!1523568)))))))

(declare-fun lt!1523576 () Unit!66963)

(declare-fun e!2674108 () Unit!66963)

(assert (=> b!4301714 (= lt!1523576 e!2674108)))

(declare-fun bm!296654 () Bool)

(declare-fun call!296659 () ListLongMap!829)

(assert (=> bm!296654 (= call!296659 (map!9939 (v!41971 (underlying!9320 thiss!42308))))))

(declare-fun bm!296655 () Bool)

(declare-fun call!296661 () Bool)

(declare-datatypes ((Option!10174 0))(
  ( (None!10173) (Some!10173 (v!41973 tuple2!46002)) )
))
(declare-fun call!296663 () Option!10174)

(declare-fun isDefined!7482 (Option!10174) Bool)

(assert (=> bm!296655 (= call!296661 (isDefined!7482 call!296663))))

(declare-fun b!4301715 () Bool)

(assert (=> b!4301715 false))

(declare-fun lt!1523575 () Unit!66963)

(declare-fun lt!1523577 () Unit!66963)

(assert (=> b!4301715 (= lt!1523575 lt!1523577)))

(declare-fun lt!1523571 () List!48104)

(declare-fun lt!1523570 () List!48103)

(assert (=> b!4301715 (contains!9904 lt!1523571 (tuple2!46005 lt!1523568 lt!1523570))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!118 (List!48104 (_ BitVec 64) List!48103) Unit!66963)

(assert (=> b!4301715 (= lt!1523577 (lemmaGetValueByKeyImpliesContainsTuple!118 lt!1523571 lt!1523568 lt!1523570))))

(assert (=> b!4301715 (= lt!1523570 (apply!10888 (v!41971 (underlying!9320 thiss!42308)) lt!1523568))))

(assert (=> b!4301715 (= lt!1523571 (toList!2223 (map!9939 (v!41971 (underlying!9320 thiss!42308)))))))

(declare-fun lt!1523567 () Unit!66963)

(declare-fun lt!1523564 () Unit!66963)

(assert (=> b!4301715 (= lt!1523567 lt!1523564)))

(declare-fun lt!1523563 () List!48104)

(declare-fun isDefined!7483 (Option!10173) Bool)

(assert (=> b!4301715 (isDefined!7483 (getValueByKey!220 lt!1523563 lt!1523568))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!147 (List!48104 (_ BitVec 64)) Unit!66963)

(assert (=> b!4301715 (= lt!1523564 (lemmaContainsKeyImpliesGetValueByKeyDefined!147 lt!1523563 lt!1523568))))

(assert (=> b!4301715 (= lt!1523563 (toList!2223 (map!9939 (v!41971 (underlying!9320 thiss!42308)))))))

(declare-fun lt!1523574 () Unit!66963)

(declare-fun lt!1523578 () Unit!66963)

(assert (=> b!4301715 (= lt!1523574 lt!1523578)))

(declare-fun lt!1523573 () List!48104)

(declare-fun containsKey!247 (List!48104 (_ BitVec 64)) Bool)

(assert (=> b!4301715 (containsKey!247 lt!1523573 lt!1523568)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!113 (List!48104 (_ BitVec 64)) Unit!66963)

(assert (=> b!4301715 (= lt!1523578 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!113 lt!1523573 lt!1523568))))

(assert (=> b!4301715 (= lt!1523573 (toList!2223 (map!9939 (v!41971 (underlying!9320 thiss!42308)))))))

(declare-fun Unit!66966 () Unit!66963)

(assert (=> b!4301715 (= e!2674108 Unit!66966)))

(declare-fun b!4301716 () Bool)

(assert (=> b!4301716 (= e!2674109 e!2674104)))

(declare-fun res!1763012 () Bool)

(declare-fun call!296662 () Bool)

(assert (=> b!4301716 (= res!1763012 call!296662)))

(declare-fun e!2674107 () Bool)

(assert (=> b!4301716 (=> (not res!1763012) (not e!2674107))))

(declare-fun c!731691 () Bool)

(assert (=> b!4301716 (= c!731691 e!2674107)))

(declare-fun bm!296656 () Bool)

(declare-fun call!296660 () List!48103)

(declare-fun getPair!112 (List!48103 K!9109) Option!10174)

(assert (=> bm!296656 (= call!296663 (getPair!112 call!296660 key!2048))))

(declare-fun lt!1523566 () ListLongMap!829)

(declare-fun bm!296657 () Bool)

(declare-fun contains!9905 (ListLongMap!829 (_ BitVec 64)) Bool)

(assert (=> bm!296657 (= call!296662 (contains!9905 (ite c!731690 lt!1523566 call!296659) call!296658))))

(declare-fun b!4301717 () Bool)

(declare-fun lt!1523561 () Unit!66963)

(assert (=> b!4301717 (= e!2674109 lt!1523561)))

(assert (=> b!4301717 (= lt!1523566 call!296659)))

(declare-fun lemmaInGenericMapThenInLongMap!112 (ListLongMap!829 K!9109 Hashable!4461) Unit!66963)

(assert (=> b!4301717 (= lt!1523561 (lemmaInGenericMapThenInLongMap!112 lt!1523566 key!2048 (hashF!6496 thiss!42308)))))

(declare-fun res!1763011 () Bool)

(assert (=> b!4301717 (= res!1763011 call!296662)))

(declare-fun e!2674106 () Bool)

(assert (=> b!4301717 (=> (not res!1763011) (not e!2674106))))

(assert (=> b!4301717 e!2674106))

(declare-fun b!4301718 () Bool)

(assert (=> b!4301718 false))

(declare-fun lt!1523562 () Unit!66963)

(declare-fun lt!1523569 () Unit!66963)

(assert (=> b!4301718 (= lt!1523562 lt!1523569)))

(declare-fun lt!1523572 () ListLongMap!829)

(assert (=> b!4301718 (contains!9903 (extractMap!279 (toList!2223 lt!1523572)) key!2048)))

(declare-fun lemmaInLongMapThenInGenericMap!112 (ListLongMap!829 K!9109 Hashable!4461) Unit!66963)

(assert (=> b!4301718 (= lt!1523569 (lemmaInLongMapThenInGenericMap!112 lt!1523572 key!2048 (hashF!6496 thiss!42308)))))

(assert (=> b!4301718 (= lt!1523572 call!296659)))

(declare-fun Unit!66967 () Unit!66963)

(assert (=> b!4301718 (= e!2674104 Unit!66967)))

(declare-fun b!4301719 () Bool)

(declare-fun Unit!66968 () Unit!66963)

(assert (=> b!4301719 (= e!2674110 Unit!66968)))

(declare-fun b!4301720 () Bool)

(declare-fun Unit!66969 () Unit!66963)

(assert (=> b!4301720 (= e!2674108 Unit!66969)))

(declare-fun b!4301721 () Bool)

(assert (=> b!4301721 (= e!2674106 call!296661)))

(declare-fun b!4301722 () Bool)

(assert (=> b!4301722 (= e!2674107 call!296661)))

(declare-fun b!4301723 () Bool)

(assert (=> b!4301723 (= e!2674105 (isDefined!7482 (getPair!112 (apply!10888 (v!41971 (underlying!9320 thiss!42308)) lt!1523568) key!2048)))))

(declare-fun bm!296658 () Bool)

(declare-fun apply!10890 (ListLongMap!829 (_ BitVec 64)) List!48103)

(assert (=> bm!296658 (= call!296660 (apply!10890 (ite c!731690 lt!1523566 call!296659) call!296658))))

(assert (= (and d!1266865 c!731692) b!4301714))

(assert (= (and d!1266865 (not c!731692)) b!4301719))

(assert (= (and b!4301714 c!731693) b!4301715))

(assert (= (and b!4301714 (not c!731693)) b!4301720))

(assert (= (and d!1266865 c!731690) b!4301717))

(assert (= (and d!1266865 (not c!731690)) b!4301716))

(assert (= (and b!4301717 res!1763011) b!4301721))

(assert (= (and b!4301716 res!1763012) b!4301722))

(assert (= (and b!4301716 c!731691) b!4301718))

(assert (= (and b!4301716 (not c!731691)) b!4301713))

(assert (= (or b!4301717 b!4301716 b!4301722 b!4301718) bm!296654))

(assert (= (or b!4301717 b!4301721 b!4301716 b!4301722) bm!296653))

(assert (= (or b!4301717 b!4301716) bm!296657))

(assert (= (or b!4301721 b!4301722) bm!296658))

(assert (= (or b!4301721 b!4301722) bm!296656))

(assert (= (or b!4301721 b!4301722) bm!296655))

(assert (= (and d!1266865 res!1763013) b!4301723))

(assert (=> bm!296653 m!4893865))

(declare-fun m!4893899 () Bool)

(assert (=> bm!296655 m!4893899))

(assert (=> bm!296654 m!4893861))

(declare-fun m!4893901 () Bool)

(assert (=> b!4301717 m!4893901))

(declare-fun m!4893903 () Bool)

(assert (=> bm!296656 m!4893903))

(declare-fun m!4893905 () Bool)

(assert (=> b!4301723 m!4893905))

(assert (=> b!4301723 m!4893905))

(declare-fun m!4893907 () Bool)

(assert (=> b!4301723 m!4893907))

(assert (=> b!4301723 m!4893907))

(declare-fun m!4893909 () Bool)

(assert (=> b!4301723 m!4893909))

(assert (=> b!4301714 m!4893861))

(assert (=> b!4301714 m!4893905))

(declare-fun m!4893911 () Bool)

(assert (=> b!4301714 m!4893911))

(declare-fun m!4893913 () Bool)

(assert (=> b!4301714 m!4893913))

(declare-fun m!4893915 () Bool)

(assert (=> bm!296657 m!4893915))

(assert (=> d!1266865 m!4893865))

(assert (=> d!1266865 m!4893863))

(declare-fun m!4893917 () Bool)

(assert (=> d!1266865 m!4893917))

(assert (=> d!1266865 m!4893863))

(declare-fun m!4893919 () Bool)

(assert (=> d!1266865 m!4893919))

(declare-fun m!4893921 () Bool)

(assert (=> d!1266865 m!4893921))

(declare-fun m!4893923 () Bool)

(assert (=> d!1266865 m!4893923))

(assert (=> d!1266865 m!4893871))

(assert (=> d!1266865 m!4893861))

(assert (=> d!1266865 m!4893919))

(declare-fun m!4893925 () Bool)

(assert (=> bm!296658 m!4893925))

(declare-fun m!4893927 () Bool)

(assert (=> b!4301718 m!4893927))

(assert (=> b!4301718 m!4893927))

(declare-fun m!4893929 () Bool)

(assert (=> b!4301718 m!4893929))

(declare-fun m!4893931 () Bool)

(assert (=> b!4301718 m!4893931))

(declare-fun m!4893933 () Bool)

(assert (=> b!4301715 m!4893933))

(declare-fun m!4893935 () Bool)

(assert (=> b!4301715 m!4893935))

(declare-fun m!4893937 () Bool)

(assert (=> b!4301715 m!4893937))

(assert (=> b!4301715 m!4893861))

(assert (=> b!4301715 m!4893905))

(assert (=> b!4301715 m!4893937))

(declare-fun m!4893939 () Bool)

(assert (=> b!4301715 m!4893939))

(declare-fun m!4893941 () Bool)

(assert (=> b!4301715 m!4893941))

(declare-fun m!4893943 () Bool)

(assert (=> b!4301715 m!4893943))

(declare-fun m!4893945 () Bool)

(assert (=> b!4301715 m!4893945))

(assert (=> b!4301657 d!1266865))

(declare-fun d!1266867 () Bool)

(declare-fun map!9941 (LongMapFixedSize!9090) ListLongMap!829)

(assert (=> d!1266867 (= (map!9939 (v!41971 (underlying!9320 thiss!42308))) (map!9941 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308))))))))

(declare-fun bs!604073 () Bool)

(assert (= bs!604073 d!1266867))

(declare-fun m!4893947 () Bool)

(assert (=> bs!604073 m!4893947))

(assert (=> b!4301657 d!1266867))

(declare-fun d!1266869 () Bool)

(declare-fun lt!1523583 () ListMap!1511)

(declare-fun invariantList!551 (List!48103) Bool)

(assert (=> d!1266869 (invariantList!551 (toList!2224 lt!1523583))))

(assert (=> d!1266869 (= lt!1523583 (extractMap!279 (toList!2223 (map!9939 (v!41971 (underlying!9320 thiss!42308))))))))

(assert (=> d!1266869 (valid!3530 thiss!42308)))

(assert (=> d!1266869 (= (map!9940 thiss!42308) lt!1523583)))

(declare-fun bs!604074 () Bool)

(assert (= bs!604074 d!1266869))

(declare-fun m!4893949 () Bool)

(assert (=> bs!604074 m!4893949))

(assert (=> bs!604074 m!4893861))

(assert (=> bs!604074 m!4893919))

(assert (=> bs!604074 m!4893871))

(assert (=> b!4301657 d!1266869))

(declare-fun b!4301728 () Bool)

(declare-fun tp_is_empty!23321 () Bool)

(declare-fun tp!1321742 () Bool)

(declare-fun e!2674113 () Bool)

(assert (=> b!4301728 (= e!2674113 (and tp_is_empty!23319 tp_is_empty!23321 tp!1321742))))

(assert (=> b!4301663 (= tp!1321735 e!2674113)))

(assert (= (and b!4301663 ((_ is Cons!47979) mapDefault!20404)) b!4301728))

(declare-fun tp!1321743 () Bool)

(declare-fun b!4301729 () Bool)

(declare-fun e!2674114 () Bool)

(assert (=> b!4301729 (= e!2674114 (and tp_is_empty!23319 tp_is_empty!23321 tp!1321743))))

(assert (=> b!4301664 (= tp!1321733 e!2674114)))

(assert (= (and b!4301664 ((_ is Cons!47979) (zeroValue!4804 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308))))))) b!4301729))

(declare-fun b!4301730 () Bool)

(declare-fun tp!1321744 () Bool)

(declare-fun e!2674115 () Bool)

(assert (=> b!4301730 (= e!2674115 (and tp_is_empty!23319 tp_is_empty!23321 tp!1321744))))

(assert (=> b!4301664 (= tp!1321739 e!2674115)))

(assert (= (and b!4301664 ((_ is Cons!47979) (minValue!4804 (v!41970 (underlying!9319 (v!41971 (underlying!9320 thiss!42308))))))) b!4301730))

(declare-fun mapIsEmpty!20407 () Bool)

(declare-fun mapRes!20407 () Bool)

(assert (=> mapIsEmpty!20407 mapRes!20407))

(declare-fun e!2674121 () Bool)

(declare-fun b!4301738 () Bool)

(declare-fun tp!1321753 () Bool)

(assert (=> b!4301738 (= e!2674121 (and tp_is_empty!23319 tp_is_empty!23321 tp!1321753))))

(declare-fun tp!1321751 () Bool)

(declare-fun b!4301737 () Bool)

(declare-fun e!2674120 () Bool)

(assert (=> b!4301737 (= e!2674120 (and tp_is_empty!23319 tp_is_empty!23321 tp!1321751))))

(declare-fun mapNonEmpty!20407 () Bool)

(declare-fun tp!1321752 () Bool)

(assert (=> mapNonEmpty!20407 (= mapRes!20407 (and tp!1321752 e!2674120))))

(declare-fun mapRest!20407 () (Array (_ BitVec 32) List!48103))

(declare-fun mapValue!20407 () List!48103)

(declare-fun mapKey!20407 () (_ BitVec 32))

(assert (=> mapNonEmpty!20407 (= mapRest!20404 (store mapRest!20407 mapKey!20407 mapValue!20407))))

(declare-fun condMapEmpty!20407 () Bool)

(declare-fun mapDefault!20407 () List!48103)

(assert (=> mapNonEmpty!20404 (= condMapEmpty!20407 (= mapRest!20404 ((as const (Array (_ BitVec 32) List!48103)) mapDefault!20407)))))

(assert (=> mapNonEmpty!20404 (= tp!1321736 (and e!2674121 mapRes!20407))))

(assert (= (and mapNonEmpty!20404 condMapEmpty!20407) mapIsEmpty!20407))

(assert (= (and mapNonEmpty!20404 (not condMapEmpty!20407)) mapNonEmpty!20407))

(assert (= (and mapNonEmpty!20407 ((_ is Cons!47979) mapValue!20407)) b!4301737))

(assert (= (and mapNonEmpty!20404 ((_ is Cons!47979) mapDefault!20407)) b!4301738))

(declare-fun m!4893951 () Bool)

(assert (=> mapNonEmpty!20407 m!4893951))

(declare-fun tp!1321754 () Bool)

(declare-fun b!4301739 () Bool)

(declare-fun e!2674122 () Bool)

(assert (=> b!4301739 (= e!2674122 (and tp_is_empty!23319 tp_is_empty!23321 tp!1321754))))

(assert (=> mapNonEmpty!20404 (= tp!1321737 e!2674122)))

(assert (= (and mapNonEmpty!20404 ((_ is Cons!47979) mapValue!20404)) b!4301739))

(declare-fun b_lambda!126437 () Bool)

(assert (= b_lambda!126435 (or (and b!4301664 b_free!128139) b_lambda!126437)))

(check-sat (not b!4301672) (not b_next!128845) (not b!4301718) (not b!4301671) (not b_lambda!126437) (not tb!257253) (not mapNonEmpty!20407) (not b!4301715) (not d!1266859) (not b_next!128843) (not d!1266865) (not b!4301717) (not d!1266857) (not b!4301683) (not bm!296658) tp_is_empty!23321 (not b!4301729) (not b!4301739) (not bm!296657) (not b!4301738) (not d!1266867) (not d!1266863) (not b!4301737) (not bm!296656) (not d!1266851) (not bm!296655) (not d!1266861) b_and!339523 (not b!4301723) (not b!4301730) (not b!4301714) (not bm!296653) b_and!339525 tp_is_empty!23319 (not d!1266869) (not b!4301728) (not bm!296654) (not b!4301689))
(check-sat b_and!339525 b_and!339523 (not b_next!128845) (not b_next!128843))
