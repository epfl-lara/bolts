; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!3472 () Bool)

(assert start!3472)

(declare-fun b!22842 () Bool)

(declare-fun b_free!753 () Bool)

(declare-fun b_next!753 () Bool)

(assert (=> b!22842 (= b_free!753 (not b_next!753))))

(declare-fun tp!3502 () Bool)

(declare-fun b_and!1473 () Bool)

(assert (=> b!22842 (= tp!3502 b_and!1473)))

(declare-fun b!22839 () Bool)

(declare-fun e!14859 () Bool)

(declare-fun tp_is_empty!1017 () Bool)

(assert (=> b!22839 (= e!14859 tp_is_empty!1017)))

(declare-fun b!22840 () Bool)

(declare-fun e!14857 () Bool)

(declare-fun e!14848 () Bool)

(assert (=> b!22840 (= e!14857 e!14848)))

(declare-fun bm!1738 () Bool)

(declare-datatypes ((V!1181 0))(
  ( (V!1182 (val!535 Int)) )
))
(declare-datatypes ((ValueCell!309 0))(
  ( (ValueCellFull!309 (v!1596 V!1181)) (EmptyCell!309) )
))
(declare-datatypes ((array!1261 0))(
  ( (array!1262 (arr!597 (Array (_ BitVec 32) ValueCell!309)) (size!693 (_ BitVec 32))) )
))
(declare-datatypes ((array!1263 0))(
  ( (array!1264 (arr!598 (Array (_ BitVec 32) (_ BitVec 64))) (size!694 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!204 0))(
  ( (LongMapFixedSize!205 (defaultEntry!1739 Int) (mask!4723 (_ BitVec 32)) (extraKeys!1638 (_ BitVec 32)) (zeroValue!1663 V!1181) (minValue!1663 V!1181) (_size!146 (_ BitVec 32)) (_keys!3161 array!1263) (_values!1726 array!1261) (_vacant!146 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!926 0))(
  ( (tuple2!927 (_1!470 Bool) (_2!470 LongMapFixedSize!204)) )
))
(declare-fun call!1741 () tuple2!926)

(declare-fun call!1742 () tuple2!926)

(assert (=> bm!1738 (= call!1741 call!1742)))

(declare-fun mapIsEmpty!1013 () Bool)

(declare-fun mapRes!1013 () Bool)

(assert (=> mapIsEmpty!1013 mapRes!1013))

(declare-fun b!22841 () Bool)

(declare-fun e!14852 () Bool)

(declare-fun e!14851 () Bool)

(assert (=> b!22841 (= e!14852 e!14851)))

(declare-fun res!14242 () Bool)

(assert (=> b!22841 (=> (not res!14242) (not e!14851))))

(declare-datatypes ((Cell!204 0))(
  ( (Cell!205 (v!1597 LongMapFixedSize!204)) )
))
(declare-datatypes ((tuple2!928 0))(
  ( (tuple2!929 (_1!471 Bool) (_2!471 Cell!204)) )
))
(declare-fun e!14858 () tuple2!928)

(assert (=> b!22841 (= res!14242 (_1!471 e!14858))))

(declare-fun c!2862 () Bool)

(declare-fun lt!7923 () Bool)

(declare-datatypes ((LongMap!204 0))(
  ( (LongMap!205 (underlying!113 Cell!204)) )
))
(declare-fun thiss!938 () LongMap!204)

(assert (=> b!22841 (= c!2862 (and (not lt!7923) (not (= (bvand (extraKeys!1638 (v!1597 (underlying!113 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!22841 (= lt!7923 (= (bvand (extraKeys!1638 (v!1597 (underlying!113 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!7928 () LongMapFixedSize!204)

(declare-fun getNewLongMapFixedSize!30 ((_ BitVec 32) Int) LongMapFixedSize!204)

(declare-fun computeNewMask!27 (LongMap!204 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!22841 (= lt!7928 (getNewLongMapFixedSize!30 (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) (defaultEntry!1739 (v!1597 (underlying!113 thiss!938)))))))

(declare-fun b!22843 () Bool)

(declare-fun e!14849 () tuple2!928)

(assert (=> b!22843 (= e!14858 e!14849)))

(declare-fun c!2861 () Bool)

(assert (=> b!22843 (= c!2861 (and (not lt!7923) (= (bvand (extraKeys!1638 (v!1597 (underlying!113 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!22844 () Bool)

(declare-fun lt!7927 () tuple2!926)

(assert (=> b!22844 (= lt!7927 call!1741)))

(assert (=> b!22844 (= e!14849 (tuple2!929 (_1!470 lt!7927) (Cell!205 (_2!470 lt!7927))))))

(declare-fun bm!1739 () Bool)

(declare-fun update!32 (LongMapFixedSize!204 (_ BitVec 64) V!1181) tuple2!926)

(assert (=> bm!1739 (= call!1742 (update!32 lt!7928 (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938))))))))

(declare-fun b!22845 () Bool)

(declare-fun e!14856 () tuple2!928)

(assert (=> b!22845 (= e!14856 (tuple2!929 true (Cell!205 lt!7928)))))

(declare-fun b!22846 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!22846 (= e!14851 (not (validMask!0 (mask!4723 (v!1597 (underlying!113 thiss!938))))))))

(declare-fun b!22847 () Bool)

(declare-fun e!14850 () Bool)

(declare-fun e!14854 () Bool)

(assert (=> b!22847 (= e!14850 (and e!14854 mapRes!1013))))

(declare-fun condMapEmpty!1013 () Bool)

(declare-fun mapDefault!1013 () ValueCell!309)

(assert (=> b!22847 (= condMapEmpty!1013 (= (arr!597 (_values!1726 (v!1597 (underlying!113 thiss!938)))) ((as const (Array (_ BitVec 32) ValueCell!309)) mapDefault!1013)))))

(declare-fun b!22848 () Bool)

(assert (=> b!22848 (= e!14854 tp_is_empty!1017)))

(declare-fun b!22849 () Bool)

(declare-fun c!2860 () Bool)

(assert (=> b!22849 (= c!2860 (and (not (= (bvand (extraKeys!1638 (v!1597 (underlying!113 thiss!938))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!7923))))

(assert (=> b!22849 (= e!14849 e!14856)))

(declare-fun b!22850 () Bool)

(declare-fun lt!7924 () tuple2!926)

(assert (=> b!22850 (= e!14856 (tuple2!929 (_1!470 lt!7924) (Cell!205 (_2!470 lt!7924))))))

(assert (=> b!22850 (= lt!7924 call!1741)))

(declare-fun b!22851 () Bool)

(declare-fun lt!7925 () tuple2!926)

(declare-fun lt!7926 () tuple2!926)

(assert (=> b!22851 (= e!14858 (tuple2!929 (and (_1!470 lt!7925) (_1!470 lt!7926)) (Cell!205 (_2!470 lt!7926))))))

(assert (=> b!22851 (= lt!7925 call!1742)))

(assert (=> b!22851 (= lt!7926 (update!32 (_2!470 lt!7925) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1663 (v!1597 (underlying!113 thiss!938)))))))

(declare-fun res!14243 () Bool)

(assert (=> start!3472 (=> (not res!14243) (not e!14852))))

(declare-fun valid!106 (LongMap!204) Bool)

(assert (=> start!3472 (= res!14243 (valid!106 thiss!938))))

(assert (=> start!3472 e!14852))

(declare-fun e!14853 () Bool)

(assert (=> start!3472 e!14853))

(declare-fun array_inv!421 (array!1263) Bool)

(declare-fun array_inv!422 (array!1261) Bool)

(assert (=> b!22842 (= e!14848 (and tp!3502 tp_is_empty!1017 (array_inv!421 (_keys!3161 (v!1597 (underlying!113 thiss!938)))) (array_inv!422 (_values!1726 (v!1597 (underlying!113 thiss!938)))) e!14850))))

(declare-fun mapNonEmpty!1013 () Bool)

(declare-fun tp!3503 () Bool)

(assert (=> mapNonEmpty!1013 (= mapRes!1013 (and tp!3503 e!14859))))

(declare-fun mapValue!1013 () ValueCell!309)

(declare-fun mapKey!1013 () (_ BitVec 32))

(declare-fun mapRest!1013 () (Array (_ BitVec 32) ValueCell!309))

(assert (=> mapNonEmpty!1013 (= (arr!597 (_values!1726 (v!1597 (underlying!113 thiss!938)))) (store mapRest!1013 mapKey!1013 mapValue!1013))))

(declare-fun b!22852 () Bool)

(assert (=> b!22852 (= e!14853 e!14857)))

(assert (= (and start!3472 res!14243) b!22841))

(assert (= (and b!22841 c!2862) b!22851))

(assert (= (and b!22841 (not c!2862)) b!22843))

(assert (= (and b!22843 c!2861) b!22844))

(assert (= (and b!22843 (not c!2861)) b!22849))

(assert (= (and b!22849 c!2860) b!22850))

(assert (= (and b!22849 (not c!2860)) b!22845))

(assert (= (or b!22844 b!22850) bm!1738))

(assert (= (or b!22851 bm!1738) bm!1739))

(assert (= (and b!22841 res!14242) b!22846))

(assert (= (and b!22847 condMapEmpty!1013) mapIsEmpty!1013))

(assert (= (and b!22847 (not condMapEmpty!1013)) mapNonEmpty!1013))

(get-info :version)

(assert (= (and mapNonEmpty!1013 ((_ is ValueCellFull!309) mapValue!1013)) b!22839))

(assert (= (and b!22847 ((_ is ValueCellFull!309) mapDefault!1013)) b!22848))

(assert (= b!22842 b!22847))

(assert (= b!22840 b!22842))

(assert (= b!22852 b!22840))

(assert (= start!3472 b!22852))

(declare-fun m!16542 () Bool)

(assert (=> mapNonEmpty!1013 m!16542))

(declare-fun m!16544 () Bool)

(assert (=> b!22846 m!16544))

(declare-fun m!16546 () Bool)

(assert (=> b!22841 m!16546))

(assert (=> b!22841 m!16546))

(declare-fun m!16548 () Bool)

(assert (=> b!22841 m!16548))

(declare-fun m!16550 () Bool)

(assert (=> bm!1739 m!16550))

(declare-fun m!16552 () Bool)

(assert (=> b!22842 m!16552))

(declare-fun m!16554 () Bool)

(assert (=> b!22842 m!16554))

(declare-fun m!16556 () Bool)

(assert (=> start!3472 m!16556))

(declare-fun m!16558 () Bool)

(assert (=> b!22851 m!16558))

(check-sat (not b!22841) (not b_next!753) (not b!22851) (not start!3472) (not b!22846) b_and!1473 (not bm!1739) (not mapNonEmpty!1013) tp_is_empty!1017 (not b!22842))
(check-sat b_and!1473 (not b_next!753))
(get-model)

(declare-fun b!22975 () Bool)

(declare-fun res!14291 () Bool)

(declare-fun call!1818 () Bool)

(assert (=> b!22975 (= res!14291 call!1818)))

(declare-fun e!14945 () Bool)

(assert (=> b!22975 (=> (not res!14291) (not e!14945))))

(declare-fun d!3969 () Bool)

(declare-fun e!14957 () Bool)

(assert (=> d!3969 e!14957))

(declare-fun res!14288 () Bool)

(assert (=> d!3969 (=> (not res!14288) (not e!14957))))

(declare-fun lt!8007 () tuple2!926)

(declare-fun valid!107 (LongMapFixedSize!204) Bool)

(assert (=> d!3969 (= res!14288 (valid!107 (_2!470 lt!8007)))))

(declare-fun e!14948 () tuple2!926)

(assert (=> d!3969 (= lt!8007 e!14948)))

(declare-fun c!2910 () Bool)

(assert (=> d!3969 (= c!2910 (= (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (bvneg (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!3969 (valid!107 lt!7928)))

(assert (=> d!3969 (= (update!32 lt!7928 (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938))))) lt!8007)))

(declare-fun bm!1794 () Bool)

(declare-datatypes ((tuple2!934 0))(
  ( (tuple2!935 (_1!474 (_ BitVec 64)) (_2!474 V!1181)) )
))
(declare-datatypes ((List!563 0))(
  ( (Nil!560) (Cons!559 (h!1125 tuple2!934) (t!3234 List!563)) )
))
(declare-datatypes ((ListLongMap!551 0))(
  ( (ListLongMap!552 (toList!291 List!563)) )
))
(declare-fun call!1804 () ListLongMap!551)

(declare-fun call!1810 () ListLongMap!551)

(assert (=> bm!1794 (= call!1804 call!1810)))

(declare-fun b!22976 () Bool)

(declare-datatypes ((Unit!503 0))(
  ( (Unit!504) )
))
(declare-fun e!14939 () Unit!503)

(declare-fun Unit!505 () Unit!503)

(assert (=> b!22976 (= e!14939 Unit!505)))

(declare-fun lt!8018 () Unit!503)

(declare-fun call!1805 () Unit!503)

(assert (=> b!22976 (= lt!8018 call!1805)))

(declare-datatypes ((SeekEntryResult!58 0))(
  ( (MissingZero!58 (index!2353 (_ BitVec 32))) (Found!58 (index!2354 (_ BitVec 32))) (Intermediate!58 (undefined!870 Bool) (index!2355 (_ BitVec 32)) (x!5508 (_ BitVec 32))) (Undefined!58) (MissingVacant!58 (index!2356 (_ BitVec 32))) )
))
(declare-fun lt!8017 () SeekEntryResult!58)

(declare-fun call!1813 () SeekEntryResult!58)

(assert (=> b!22976 (= lt!8017 call!1813)))

(declare-fun res!14285 () Bool)

(assert (=> b!22976 (= res!14285 ((_ is Found!58) lt!8017))))

(assert (=> b!22976 (=> (not res!14285) (not e!14945))))

(assert (=> b!22976 e!14945))

(declare-fun lt!8016 () Unit!503)

(assert (=> b!22976 (= lt!8016 lt!8018)))

(assert (=> b!22976 false))

(declare-fun b!22977 () Bool)

(declare-fun res!14282 () Bool)

(declare-fun e!14943 () Bool)

(assert (=> b!22977 (=> (not res!14282) (not e!14943))))

(declare-fun call!1814 () Bool)

(assert (=> b!22977 (= res!14282 call!1814)))

(declare-fun e!14952 () Bool)

(assert (=> b!22977 (= e!14952 e!14943)))

(declare-fun b!22978 () Bool)

(declare-fun e!14944 () Unit!503)

(declare-fun lt!8026 () Unit!503)

(assert (=> b!22978 (= e!14944 lt!8026)))

(assert (=> b!22978 (= lt!8026 call!1805)))

(declare-fun lt!8012 () SeekEntryResult!58)

(declare-fun call!1808 () SeekEntryResult!58)

(assert (=> b!22978 (= lt!8012 call!1808)))

(declare-fun res!14283 () Bool)

(assert (=> b!22978 (= res!14283 ((_ is Found!58) lt!8012))))

(declare-fun e!14955 () Bool)

(assert (=> b!22978 (=> (not res!14283) (not e!14955))))

(assert (=> b!22978 e!14955))

(declare-fun b!22979 () Bool)

(declare-fun e!14949 () tuple2!926)

(assert (=> b!22979 (= e!14948 e!14949)))

(declare-fun c!2900 () Bool)

(assert (=> b!22979 (= c!2900 (= (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1795 () Bool)

(declare-fun call!1815 () SeekEntryResult!58)

(assert (=> bm!1795 (= call!1813 call!1815)))

(declare-fun bm!1796 () Bool)

(declare-fun c!2899 () Bool)

(declare-fun lt!8025 () SeekEntryResult!58)

(declare-fun call!1801 () tuple2!926)

(declare-fun updateHelperNewKey!9 (LongMapFixedSize!204 (_ BitVec 64) V!1181 (_ BitVec 32)) tuple2!926)

(assert (=> bm!1796 (= call!1801 (updateHelperNewKey!9 lt!7928 (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938)))) (ite c!2899 (index!2356 lt!8025) (index!2353 lt!8025))))))

(declare-fun b!22980 () Bool)

(declare-fun res!14281 () Bool)

(declare-fun lt!8004 () SeekEntryResult!58)

(assert (=> b!22980 (= res!14281 (= (select (arr!598 (_keys!3161 lt!7928)) (index!2356 lt!8004)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!14938 () Bool)

(assert (=> b!22980 (=> (not res!14281) (not e!14938))))

(declare-fun b!22981 () Bool)

(declare-fun call!1812 () Bool)

(assert (=> b!22981 (= e!14943 (not call!1812))))

(declare-fun b!22982 () Bool)

(declare-fun e!14954 () Bool)

(declare-fun call!1803 () Bool)

(assert (=> b!22982 (= e!14954 (not call!1803))))

(declare-fun b!22983 () Bool)

(declare-fun c!2901 () Bool)

(assert (=> b!22983 (= c!2901 ((_ is MissingVacant!58) lt!8004))))

(declare-fun e!14946 () Bool)

(assert (=> b!22983 (= e!14952 e!14946)))

(declare-fun bm!1797 () Bool)

(declare-fun call!1802 () Bool)

(assert (=> bm!1797 (= call!1814 call!1802)))

(declare-fun b!22984 () Bool)

(assert (=> b!22984 (= e!14946 e!14938)))

(declare-fun res!14287 () Bool)

(assert (=> b!22984 (= res!14287 call!1814)))

(assert (=> b!22984 (=> (not res!14287) (not e!14938))))

(declare-fun b!22985 () Bool)

(declare-fun res!14279 () Bool)

(declare-fun lt!8003 () SeekEntryResult!58)

(assert (=> b!22985 (= res!14279 (= (select (arr!598 (_keys!3161 lt!7928)) (index!2356 lt!8003)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!14951 () Bool)

(assert (=> b!22985 (=> (not res!14279) (not e!14951))))

(declare-fun b!22986 () Bool)

(declare-fun e!14941 () tuple2!926)

(assert (=> b!22986 (= e!14948 e!14941)))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!1263 (_ BitVec 32)) SeekEntryResult!58)

(assert (=> b!22986 (= lt!8025 (seekEntryOrOpen!0 (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (_keys!3161 lt!7928) (mask!4723 lt!7928)))))

(declare-fun c!2908 () Bool)

(assert (=> b!22986 (= c!2908 ((_ is Undefined!58) lt!8025))))

(declare-fun b!22987 () Bool)

(declare-fun lt!8009 () Unit!503)

(declare-fun lt!8027 () Unit!503)

(assert (=> b!22987 (= lt!8009 lt!8027)))

(declare-fun call!1816 () ListLongMap!551)

(declare-fun call!1811 () ListLongMap!551)

(assert (=> b!22987 (= call!1816 call!1811)))

(declare-fun lt!8010 () (_ BitVec 32))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!9 (array!1263 array!1261 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1181 V!1181 V!1181 Int) Unit!503)

(assert (=> b!22987 (= lt!8027 (lemmaChangeLongMinValueKeyThenAddPairToListMap!9 (_keys!3161 lt!7928) (_values!1726 lt!7928) (mask!4723 lt!7928) (extraKeys!1638 lt!7928) lt!8010 (zeroValue!1663 lt!7928) (minValue!1663 lt!7928) (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938)))) (defaultEntry!1739 lt!7928)))))

(assert (=> b!22987 (= lt!8010 (bvor (extraKeys!1638 lt!7928) #b00000000000000000000000000000010))))

(assert (=> b!22987 (= e!14949 (tuple2!927 true (LongMapFixedSize!205 (defaultEntry!1739 lt!7928) (mask!4723 lt!7928) (bvor (extraKeys!1638 lt!7928) #b00000000000000000000000000000010) (zeroValue!1663 lt!7928) (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938)))) (_size!146 lt!7928) (_keys!3161 lt!7928) (_values!1726 lt!7928) (_vacant!146 lt!7928))))))

(declare-fun b!22988 () Bool)

(declare-fun lt!8011 () Unit!503)

(declare-fun lt!8022 () Unit!503)

(assert (=> b!22988 (= lt!8011 lt!8022)))

(assert (=> b!22988 (= call!1816 call!1804)))

(declare-fun lt!8013 () (_ BitVec 32))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!9 (array!1263 array!1261 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!1181 V!1181 V!1181 Int) Unit!503)

(assert (=> b!22988 (= lt!8022 (lemmaChangeZeroKeyThenAddPairToListMap!9 (_keys!3161 lt!7928) (_values!1726 lt!7928) (mask!4723 lt!7928) (extraKeys!1638 lt!7928) lt!8013 (zeroValue!1663 lt!7928) (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938)))) (minValue!1663 lt!7928) (defaultEntry!1739 lt!7928)))))

(assert (=> b!22988 (= lt!8013 (bvor (extraKeys!1638 lt!7928) #b00000000000000000000000000000001))))

(assert (=> b!22988 (= e!14949 (tuple2!927 true (LongMapFixedSize!205 (defaultEntry!1739 lt!7928) (mask!4723 lt!7928) (bvor (extraKeys!1638 lt!7928) #b00000000000000000000000000000001) (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938)))) (minValue!1663 lt!7928) (_size!146 lt!7928) (_keys!3161 lt!7928) (_values!1726 lt!7928) (_vacant!146 lt!7928))))))

(declare-fun call!1820 () Bool)

(declare-fun bm!1798 () Bool)

(declare-fun arrayContainsKey!0 (array!1263 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!1798 (= call!1820 (arrayContainsKey!0 (_keys!3161 lt!7928) (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000))))

(declare-fun b!22989 () Bool)

(declare-fun e!14956 () Bool)

(assert (=> b!22989 (= e!14957 e!14956)))

(declare-fun c!2902 () Bool)

(assert (=> b!22989 (= c!2902 (_1!470 lt!8007))))

(declare-fun b!22990 () Bool)

(assert (=> b!22990 (= c!2899 ((_ is MissingVacant!58) lt!8025))))

(declare-fun e!14950 () tuple2!926)

(assert (=> b!22990 (= e!14941 e!14950)))

(declare-fun b!22991 () Bool)

(declare-fun e!14953 () ListLongMap!551)

(declare-fun call!1800 () ListLongMap!551)

(assert (=> b!22991 (= e!14953 call!1800)))

(declare-fun b!22992 () Bool)

(assert (=> b!22992 (= e!14946 ((_ is Undefined!58) lt!8004))))

(declare-fun b!22993 () Bool)

(assert (=> b!22993 (= e!14955 (= (select (arr!598 (_keys!3161 lt!7928)) (index!2354 lt!8012)) (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bm!1799 () Bool)

(assert (=> bm!1799 (= call!1803 call!1820)))

(declare-fun bm!1800 () Bool)

(declare-fun call!1806 () Unit!503)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!9 (array!1263 array!1261 (_ BitVec 32) (_ BitVec 32) V!1181 V!1181 (_ BitVec 64) Int) Unit!503)

(assert (=> bm!1800 (= call!1806 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!9 (_keys!3161 lt!7928) (_values!1726 lt!7928) (mask!4723 lt!7928) (extraKeys!1638 lt!7928) (zeroValue!1663 lt!7928) (minValue!1663 lt!7928) (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (defaultEntry!1739 lt!7928)))))

(declare-fun b!22994 () Bool)

(assert (=> b!22994 (= e!14951 (not call!1803))))

(declare-fun b!22995 () Bool)

(declare-fun e!14942 () Bool)

(assert (=> b!22995 (= e!14942 e!14951)))

(declare-fun res!14280 () Bool)

(declare-fun call!1819 () Bool)

(assert (=> b!22995 (= res!14280 call!1819)))

(assert (=> b!22995 (=> (not res!14280) (not e!14951))))

(declare-fun b!22996 () Bool)

(declare-fun e!14958 () Bool)

(assert (=> b!22996 (= e!14956 e!14958)))

(declare-fun call!1817 () ListLongMap!551)

(declare-fun res!14278 () Bool)

(declare-fun contains!219 (ListLongMap!551 (_ BitVec 64)) Bool)

(assert (=> b!22996 (= res!14278 (contains!219 call!1817 (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!22996 (=> (not res!14278) (not e!14958))))

(declare-fun b!22997 () Bool)

(declare-fun c!2905 () Bool)

(assert (=> b!22997 (= c!2905 ((_ is MissingVacant!58) lt!8003))))

(declare-fun e!14940 () Bool)

(assert (=> b!22997 (= e!14940 e!14942)))

(declare-fun bm!1801 () Bool)

(declare-fun call!1809 () Bool)

(assert (=> bm!1801 (= call!1818 call!1809)))

(declare-fun b!22998 () Bool)

(declare-fun lt!8020 () tuple2!926)

(assert (=> b!22998 (= lt!8020 call!1801)))

(declare-fun e!14947 () tuple2!926)

(assert (=> b!22998 (= e!14947 (tuple2!927 (_1!470 lt!8020) (_2!470 lt!8020)))))

(declare-fun b!22999 () Bool)

(declare-fun call!1798 () ListLongMap!551)

(assert (=> b!22999 (= e!14956 (= call!1817 call!1798))))

(declare-fun b!23000 () Bool)

(declare-fun Unit!506 () Unit!503)

(assert (=> b!23000 (= e!14944 Unit!506)))

(declare-fun lt!8006 () Unit!503)

(assert (=> b!23000 (= lt!8006 call!1806)))

(assert (=> b!23000 (= lt!8004 call!1808)))

(declare-fun c!2907 () Bool)

(assert (=> b!23000 (= c!2907 ((_ is MissingZero!58) lt!8004))))

(assert (=> b!23000 e!14952))

(declare-fun lt!8005 () Unit!503)

(assert (=> b!23000 (= lt!8005 lt!8006)))

(assert (=> b!23000 false))

(declare-fun bm!1802 () Bool)

(assert (=> bm!1802 (= call!1808 call!1815)))

(declare-fun bm!1803 () Bool)

(declare-fun map!407 (LongMapFixedSize!204) ListLongMap!551)

(assert (=> bm!1803 (= call!1798 (map!407 lt!7928))))

(declare-fun bm!1804 () Bool)

(assert (=> bm!1804 (= call!1812 call!1820)))

(declare-fun bm!1805 () Bool)

(assert (=> bm!1805 (= call!1819 call!1818)))

(declare-fun b!23001 () Bool)

(assert (=> b!23001 (= e!14950 e!14947)))

(declare-fun c!2898 () Bool)

(assert (=> b!23001 (= c!2898 ((_ is MissingZero!58) lt!8025))))

(declare-fun c!2906 () Bool)

(declare-fun bm!1806 () Bool)

(declare-fun c!2909 () Bool)

(declare-fun c!2904 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!1806 (= call!1809 (inRange!0 (ite c!2908 (ite c!2904 (index!2354 lt!8017) (ite c!2906 (index!2353 lt!8003) (index!2356 lt!8003))) (ite c!2909 (index!2354 lt!8012) (ite c!2907 (index!2353 lt!8004) (index!2356 lt!8004)))) (mask!4723 lt!7928)))))

(declare-fun call!1799 () ListLongMap!551)

(declare-fun bm!1807 () Bool)

(declare-fun +!44 (ListLongMap!551 tuple2!934) ListLongMap!551)

(assert (=> bm!1807 (= call!1799 (+!44 (ite c!2910 (ite c!2900 call!1811 call!1804) call!1800) (ite c!2910 (ite c!2900 (tuple2!935 #b0000000000000000000000000000000000000000000000000000000000000000 (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938))))) (tuple2!935 #b1000000000000000000000000000000000000000000000000000000000000000 (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938)))))) (tuple2!935 (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938))))))))))

(declare-fun b!23002 () Bool)

(declare-fun res!14284 () Bool)

(assert (=> b!23002 (=> (not res!14284) (not e!14943))))

(assert (=> b!23002 (= res!14284 (= (select (arr!598 (_keys!3161 lt!7928)) (index!2353 lt!8004)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1808 () Bool)

(assert (=> bm!1808 (= call!1802 call!1809)))

(declare-fun b!23003 () Bool)

(assert (=> b!23003 (= e!14945 (= (select (arr!598 (_keys!3161 lt!7928)) (index!2354 lt!8017)) (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun call!1797 () ListLongMap!551)

(declare-fun bm!1809 () Bool)

(declare-fun getCurrentListMap!120 (array!1263 array!1261 (_ BitVec 32) (_ BitVec 32) V!1181 V!1181 (_ BitVec 32) Int) ListLongMap!551)

(assert (=> bm!1809 (= call!1797 (getCurrentListMap!120 (_keys!3161 lt!7928) (ite c!2908 (_values!1726 lt!7928) (array!1262 (store (arr!597 (_values!1726 lt!7928)) (index!2354 lt!8025) (ValueCellFull!309 (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938)))))) (size!693 (_values!1726 lt!7928)))) (mask!4723 lt!7928) (extraKeys!1638 lt!7928) (zeroValue!1663 lt!7928) (minValue!1663 lt!7928) #b00000000000000000000000000000000 (defaultEntry!1739 lt!7928)))))

(declare-fun b!23004 () Bool)

(declare-fun res!14290 () Bool)

(assert (=> b!23004 (=> (not res!14290) (not e!14954))))

(assert (=> b!23004 (= res!14290 call!1819)))

(assert (=> b!23004 (= e!14940 e!14954)))

(declare-fun b!23005 () Bool)

(declare-fun res!14286 () Bool)

(assert (=> b!23005 (=> (not res!14286) (not e!14954))))

(assert (=> b!23005 (= res!14286 (= (select (arr!598 (_keys!3161 lt!7928)) (index!2353 lt!8003)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!23006 () Bool)

(assert (=> b!23006 (= e!14938 (not call!1812))))

(declare-fun b!23007 () Bool)

(declare-fun lt!8002 () Unit!503)

(assert (=> b!23007 (= e!14939 lt!8002)))

(assert (=> b!23007 (= lt!8002 call!1806)))

(assert (=> b!23007 (= lt!8003 call!1813)))

(assert (=> b!23007 (= c!2906 ((_ is MissingZero!58) lt!8003))))

(assert (=> b!23007 e!14940))

(declare-fun bm!1810 () Bool)

(declare-fun lt!8023 () array!1261)

(assert (=> bm!1810 (= call!1810 (getCurrentListMap!120 (_keys!3161 lt!7928) (ite c!2910 (_values!1726 lt!7928) lt!8023) (mask!4723 lt!7928) (ite (and c!2910 c!2900) lt!8013 (extraKeys!1638 lt!7928)) (ite (and c!2910 c!2900) (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938)))) (zeroValue!1663 lt!7928)) (minValue!1663 lt!7928) #b00000000000000000000000000000000 (defaultEntry!1739 lt!7928)))))

(declare-fun b!23008 () Bool)

(declare-fun lt!8001 () Unit!503)

(declare-fun lt!8021 () Unit!503)

(assert (=> b!23008 (= lt!8001 lt!8021)))

(assert (=> b!23008 (contains!219 call!1810 (select (arr!598 (_keys!3161 lt!7928)) (index!2354 lt!8025)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!9 (array!1263 array!1261 (_ BitVec 32) (_ BitVec 32) V!1181 V!1181 (_ BitVec 32) Int) Unit!503)

(assert (=> b!23008 (= lt!8021 (lemmaValidKeyInArrayIsInListMap!9 (_keys!3161 lt!7928) lt!8023 (mask!4723 lt!7928) (extraKeys!1638 lt!7928) (zeroValue!1663 lt!7928) (minValue!1663 lt!7928) (index!2354 lt!8025) (defaultEntry!1739 lt!7928)))))

(assert (=> b!23008 (= lt!8023 (array!1262 (store (arr!597 (_values!1726 lt!7928)) (index!2354 lt!8025) (ValueCellFull!309 (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938)))))) (size!693 (_values!1726 lt!7928))))))

(declare-fun lt!8015 () Unit!503)

(declare-fun lt!8014 () Unit!503)

(assert (=> b!23008 (= lt!8015 lt!8014)))

(assert (=> b!23008 (= call!1799 call!1797)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!9 (array!1263 array!1261 (_ BitVec 32) (_ BitVec 32) V!1181 V!1181 (_ BitVec 32) (_ BitVec 64) V!1181 Int) Unit!503)

(assert (=> b!23008 (= lt!8014 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!9 (_keys!3161 lt!7928) (_values!1726 lt!7928) (mask!4723 lt!7928) (extraKeys!1638 lt!7928) (zeroValue!1663 lt!7928) (minValue!1663 lt!7928) (index!2354 lt!8025) (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938)))) (defaultEntry!1739 lt!7928)))))

(declare-fun lt!8024 () Unit!503)

(assert (=> b!23008 (= lt!8024 e!14944)))

(declare-fun call!1807 () Bool)

(assert (=> b!23008 (= c!2909 call!1807)))

(assert (=> b!23008 (= e!14947 (tuple2!927 true (LongMapFixedSize!205 (defaultEntry!1739 lt!7928) (mask!4723 lt!7928) (extraKeys!1638 lt!7928) (zeroValue!1663 lt!7928) (minValue!1663 lt!7928) (_size!146 lt!7928) (_keys!3161 lt!7928) (array!1262 (store (arr!597 (_values!1726 lt!7928)) (index!2354 lt!8025) (ValueCellFull!309 (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938)))))) (size!693 (_values!1726 lt!7928))) (_vacant!146 lt!7928))))))

(declare-fun bm!1811 () Bool)

(assert (=> bm!1811 (= call!1816 call!1799)))

(declare-fun b!23009 () Bool)

(declare-fun res!14289 () Bool)

(assert (=> b!23009 (= res!14289 call!1802)))

(assert (=> b!23009 (=> (not res!14289) (not e!14955))))

(declare-fun bm!1812 () Bool)

(declare-fun c!2903 () Bool)

(assert (=> bm!1812 (= c!2903 c!2908)))

(assert (=> bm!1812 (= call!1807 (contains!219 e!14953 (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!23010 () Bool)

(assert (=> b!23010 (= e!14942 ((_ is Undefined!58) lt!8003))))

(declare-fun bm!1813 () Bool)

(assert (=> bm!1813 (= call!1817 (map!407 (_2!470 lt!8007)))))

(declare-fun bm!1814 () Bool)

(assert (=> bm!1814 (= call!1800 (getCurrentListMap!120 (_keys!3161 lt!7928) (_values!1726 lt!7928) (mask!4723 lt!7928) (ite c!2910 (ite c!2900 (extraKeys!1638 lt!7928) lt!8010) (extraKeys!1638 lt!7928)) (zeroValue!1663 lt!7928) (ite c!2910 (ite c!2900 (minValue!1663 lt!7928) (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938))))) (minValue!1663 lt!7928)) #b00000000000000000000000000000000 (defaultEntry!1739 lt!7928)))))

(declare-fun b!23011 () Bool)

(assert (=> b!23011 (= e!14953 call!1797)))

(declare-fun b!23012 () Bool)

(declare-fun lt!8008 () Unit!503)

(assert (=> b!23012 (= lt!8008 e!14939)))

(assert (=> b!23012 (= c!2904 call!1807)))

(assert (=> b!23012 (= e!14941 (tuple2!927 false lt!7928))))

(declare-fun b!23013 () Bool)

(assert (=> b!23013 (= e!14958 (= call!1817 (+!44 call!1798 (tuple2!935 (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!2862 c!2861) (zeroValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (v!1597 (underlying!113 thiss!938))))))))))

(declare-fun bm!1815 () Bool)

(assert (=> bm!1815 (= call!1811 call!1800)))

(declare-fun bm!1816 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!9 (array!1263 array!1261 (_ BitVec 32) (_ BitVec 32) V!1181 V!1181 (_ BitVec 64) Int) Unit!503)

(assert (=> bm!1816 (= call!1805 (lemmaInListMapThenSeekEntryOrOpenFindsIt!9 (_keys!3161 lt!7928) (_values!1726 lt!7928) (mask!4723 lt!7928) (extraKeys!1638 lt!7928) (zeroValue!1663 lt!7928) (minValue!1663 lt!7928) (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (defaultEntry!1739 lt!7928)))))

(declare-fun bm!1817 () Bool)

(assert (=> bm!1817 (= call!1815 (seekEntryOrOpen!0 (ite (or c!2862 c!2861) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (_keys!3161 lt!7928) (mask!4723 lt!7928)))))

(declare-fun b!23014 () Bool)

(declare-fun lt!8019 () tuple2!926)

(assert (=> b!23014 (= e!14950 (tuple2!927 (_1!470 lt!8019) (_2!470 lt!8019)))))

(assert (=> b!23014 (= lt!8019 call!1801)))

(assert (= (and d!3969 c!2910) b!22979))

(assert (= (and d!3969 (not c!2910)) b!22986))

(assert (= (and b!22979 c!2900) b!22988))

(assert (= (and b!22979 (not c!2900)) b!22987))

(assert (= (or b!22988 b!22987) bm!1815))

(assert (= (or b!22988 b!22987) bm!1794))

(assert (= (or b!22988 b!22987) bm!1811))

(assert (= (and b!22986 c!2908) b!23012))

(assert (= (and b!22986 (not c!2908)) b!22990))

(assert (= (and b!23012 c!2904) b!22976))

(assert (= (and b!23012 (not c!2904)) b!23007))

(assert (= (and b!22976 res!14285) b!22975))

(assert (= (and b!22975 res!14291) b!23003))

(assert (= (and b!23007 c!2906) b!23004))

(assert (= (and b!23007 (not c!2906)) b!22997))

(assert (= (and b!23004 res!14290) b!23005))

(assert (= (and b!23005 res!14286) b!22982))

(assert (= (and b!22997 c!2905) b!22995))

(assert (= (and b!22997 (not c!2905)) b!23010))

(assert (= (and b!22995 res!14280) b!22985))

(assert (= (and b!22985 res!14279) b!22994))

(assert (= (or b!23004 b!22995) bm!1805))

(assert (= (or b!22982 b!22994) bm!1799))

(assert (= (or b!22975 bm!1805) bm!1801))

(assert (= (or b!22976 b!23007) bm!1795))

(assert (= (and b!22990 c!2899) b!23014))

(assert (= (and b!22990 (not c!2899)) b!23001))

(assert (= (and b!23001 c!2898) b!22998))

(assert (= (and b!23001 (not c!2898)) b!23008))

(assert (= (and b!23008 c!2909) b!22978))

(assert (= (and b!23008 (not c!2909)) b!23000))

(assert (= (and b!22978 res!14283) b!23009))

(assert (= (and b!23009 res!14289) b!22993))

(assert (= (and b!23000 c!2907) b!22977))

(assert (= (and b!23000 (not c!2907)) b!22983))

(assert (= (and b!22977 res!14282) b!23002))

(assert (= (and b!23002 res!14284) b!22981))

(assert (= (and b!22983 c!2901) b!22984))

(assert (= (and b!22983 (not c!2901)) b!22992))

(assert (= (and b!22984 res!14287) b!22980))

(assert (= (and b!22980 res!14281) b!23006))

(assert (= (or b!22977 b!22984) bm!1797))

(assert (= (or b!22981 b!23006) bm!1804))

(assert (= (or b!23009 bm!1797) bm!1808))

(assert (= (or b!22978 b!23000) bm!1802))

(assert (= (or b!23014 b!22998) bm!1796))

(assert (= (or bm!1795 bm!1802) bm!1817))

(assert (= (or b!23012 b!23008) bm!1809))

(assert (= (or b!23007 b!23000) bm!1800))

(assert (= (or bm!1801 bm!1808) bm!1806))

(assert (= (or bm!1799 bm!1804) bm!1798))

(assert (= (or b!22976 b!22978) bm!1816))

(assert (= (or b!23012 b!23008) bm!1812))

(assert (= (and bm!1812 c!2903) b!23011))

(assert (= (and bm!1812 (not c!2903)) b!22991))

(assert (= (or bm!1794 b!23008) bm!1810))

(assert (= (or bm!1815 b!23008 b!22991) bm!1814))

(assert (= (or bm!1811 b!23008) bm!1807))

(assert (= (and d!3969 res!14288) b!22989))

(assert (= (and b!22989 c!2902) b!22996))

(assert (= (and b!22989 (not c!2902)) b!22999))

(assert (= (and b!22996 res!14278) b!23013))

(assert (= (or b!23013 b!22999) bm!1803))

(assert (= (or b!22996 b!23013 b!22999) bm!1813))

(declare-fun m!16578 () Bool)

(assert (=> bm!1796 m!16578))

(declare-fun m!16580 () Bool)

(assert (=> b!22996 m!16580))

(declare-fun m!16582 () Bool)

(assert (=> b!22987 m!16582))

(declare-fun m!16584 () Bool)

(assert (=> b!22993 m!16584))

(declare-fun m!16586 () Bool)

(assert (=> bm!1816 m!16586))

(declare-fun m!16588 () Bool)

(assert (=> b!22985 m!16588))

(declare-fun m!16590 () Bool)

(assert (=> bm!1817 m!16590))

(declare-fun m!16592 () Bool)

(assert (=> bm!1803 m!16592))

(declare-fun m!16594 () Bool)

(assert (=> b!22980 m!16594))

(declare-fun m!16596 () Bool)

(assert (=> b!23013 m!16596))

(declare-fun m!16598 () Bool)

(assert (=> b!23002 m!16598))

(declare-fun m!16600 () Bool)

(assert (=> b!22988 m!16600))

(declare-fun m!16602 () Bool)

(assert (=> bm!1813 m!16602))

(declare-fun m!16604 () Bool)

(assert (=> bm!1798 m!16604))

(declare-fun m!16606 () Bool)

(assert (=> bm!1812 m!16606))

(declare-fun m!16608 () Bool)

(assert (=> bm!1806 m!16608))

(declare-fun m!16610 () Bool)

(assert (=> d!3969 m!16610))

(declare-fun m!16612 () Bool)

(assert (=> d!3969 m!16612))

(declare-fun m!16614 () Bool)

(assert (=> bm!1814 m!16614))

(declare-fun m!16616 () Bool)

(assert (=> b!23003 m!16616))

(declare-fun m!16618 () Bool)

(assert (=> b!23008 m!16618))

(declare-fun m!16620 () Bool)

(assert (=> b!23008 m!16620))

(declare-fun m!16622 () Bool)

(assert (=> b!23008 m!16622))

(declare-fun m!16624 () Bool)

(assert (=> b!23008 m!16624))

(assert (=> b!23008 m!16622))

(declare-fun m!16626 () Bool)

(assert (=> b!23008 m!16626))

(declare-fun m!16628 () Bool)

(assert (=> b!23005 m!16628))

(assert (=> bm!1809 m!16620))

(declare-fun m!16630 () Bool)

(assert (=> bm!1809 m!16630))

(assert (=> b!22986 m!16590))

(declare-fun m!16632 () Bool)

(assert (=> bm!1800 m!16632))

(declare-fun m!16634 () Bool)

(assert (=> bm!1807 m!16634))

(declare-fun m!16636 () Bool)

(assert (=> bm!1810 m!16636))

(assert (=> bm!1739 d!3969))

(declare-fun d!3971 () Bool)

(assert (=> d!3971 (= (array_inv!421 (_keys!3161 (v!1597 (underlying!113 thiss!938)))) (bvsge (size!694 (_keys!3161 (v!1597 (underlying!113 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!22842 d!3971))

(declare-fun d!3973 () Bool)

(assert (=> d!3973 (= (array_inv!422 (_values!1726 (v!1597 (underlying!113 thiss!938)))) (bvsge (size!693 (_values!1726 (v!1597 (underlying!113 thiss!938)))) #b00000000000000000000000000000000))))

(assert (=> b!22842 d!3973))

(declare-fun d!3975 () Bool)

(assert (=> d!3975 (= (valid!106 thiss!938) (valid!107 (v!1597 (underlying!113 thiss!938))))))

(declare-fun bs!944 () Bool)

(assert (= bs!944 d!3975))

(declare-fun m!16638 () Bool)

(assert (=> bs!944 m!16638))

(assert (=> start!3472 d!3975))

(declare-fun b!23027 () Bool)

(declare-fun res!14297 () Bool)

(declare-fun e!14966 () Bool)

(assert (=> b!23027 (=> (not res!14297) (not e!14966))))

(declare-fun lt!8075 () LongMapFixedSize!204)

(assert (=> b!23027 (= res!14297 (= (mask!4723 lt!8075) (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938))))))))

(declare-fun b!23028 () Bool)

(declare-fun e!14965 () Unit!503)

(declare-fun Unit!507 () Unit!503)

(assert (=> b!23028 (= e!14965 Unit!507)))

(declare-fun d!3977 () Bool)

(assert (=> d!3977 e!14966))

(declare-fun res!14296 () Bool)

(assert (=> d!3977 (=> (not res!14296) (not e!14966))))

(assert (=> d!3977 (= res!14296 (valid!107 lt!8075))))

(declare-fun lt!8089 () LongMapFixedSize!204)

(assert (=> d!3977 (= lt!8075 lt!8089)))

(declare-fun lt!8080 () Unit!503)

(assert (=> d!3977 (= lt!8080 e!14965)))

(declare-fun c!2916 () Bool)

(assert (=> d!3977 (= c!2916 (not (= (map!407 lt!8089) (ListLongMap!552 Nil!560))))))

(declare-fun lt!8083 () Unit!503)

(declare-fun lt!8082 () Unit!503)

(assert (=> d!3977 (= lt!8083 lt!8082)))

(declare-fun lt!8078 () array!1263)

(declare-fun lt!8091 () (_ BitVec 32))

(declare-datatypes ((List!564 0))(
  ( (Nil!561) (Cons!560 (h!1126 (_ BitVec 64)) (t!3235 List!564)) )
))
(declare-fun lt!8077 () List!564)

(declare-fun arrayNoDuplicates!0 (array!1263 (_ BitVec 32) List!564) Bool)

(assert (=> d!3977 (arrayNoDuplicates!0 lt!8078 lt!8091 lt!8077)))

(declare-fun lemmaArrayNoDuplicatesInAll0Array!0 (array!1263 (_ BitVec 32) (_ BitVec 32) List!564) Unit!503)

(assert (=> d!3977 (= lt!8082 (lemmaArrayNoDuplicatesInAll0Array!0 lt!8078 lt!8091 (bvadd (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) #b00000000000000000000000000000001) lt!8077))))

(assert (=> d!3977 (= lt!8077 Nil!561)))

(assert (=> d!3977 (= lt!8091 #b00000000000000000000000000000000)))

(assert (=> d!3977 (= lt!8078 (array!1264 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!8092 () Unit!503)

(declare-fun lt!8088 () Unit!503)

(assert (=> d!3977 (= lt!8092 lt!8088)))

(declare-fun lt!8094 () (_ BitVec 32))

(declare-fun lt!8076 () array!1263)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!1263 (_ BitVec 32)) Bool)

(assert (=> d!3977 (arrayForallSeekEntryOrOpenFound!0 lt!8094 lt!8076 (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 (array!1263 (_ BitVec 32) (_ BitVec 32)) Unit!503)

(assert (=> d!3977 (= lt!8088 (lemmaArrayForallSeekEntryOrOpenFoundAlwaysTrueFor0Array!0 lt!8076 (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) lt!8094))))

(assert (=> d!3977 (= lt!8094 #b00000000000000000000000000000000)))

(assert (=> d!3977 (= lt!8076 (array!1264 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun lt!8096 () Unit!503)

(declare-fun lt!8087 () Unit!503)

(assert (=> d!3977 (= lt!8096 lt!8087)))

(declare-fun lt!8084 () array!1263)

(declare-fun lt!8074 () (_ BitVec 32))

(declare-fun lt!8086 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!1263 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!3977 (= (arrayCountValidKeys!0 lt!8084 lt!8074 lt!8086) #b00000000000000000000000000000000)))

(declare-fun lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 (array!1263 (_ BitVec 32) (_ BitVec 32)) Unit!503)

(assert (=> d!3977 (= lt!8087 (lemmaArrayCountValidKeysOfFilled0ArrayIs0!0 lt!8084 lt!8074 lt!8086))))

(assert (=> d!3977 (= lt!8086 (bvadd (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) #b00000000000000000000000000000001))))

(assert (=> d!3977 (= lt!8074 #b00000000000000000000000000000000)))

(assert (=> d!3977 (= lt!8084 (array!1264 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) #b00000000000000000000000000000001)))))

(declare-fun dynLambda!143 (Int (_ BitVec 64)) V!1181)

(assert (=> d!3977 (= lt!8089 (LongMapFixedSize!205 (defaultEntry!1739 (v!1597 (underlying!113 thiss!938))) (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) #b00000000000000000000000000000000 (dynLambda!143 (defaultEntry!1739 (v!1597 (underlying!113 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!143 (defaultEntry!1739 (v!1597 (underlying!113 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) #b00000000000000000000000000000000 (array!1264 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) #b00000000000000000000000000000001)) (array!1262 ((as const (Array (_ BitVec 32) ValueCell!309)) EmptyCell!309) (bvadd (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) #b00000000000000000000000000000001)) #b00000000000000000000000000000000))))

(assert (=> d!3977 (validMask!0 (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))))))

(assert (=> d!3977 (= (getNewLongMapFixedSize!30 (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) (defaultEntry!1739 (v!1597 (underlying!113 thiss!938)))) lt!8075)))

(declare-fun b!23029 () Bool)

(declare-fun e!14967 () Bool)

(declare-fun lt!8079 () array!1263)

(declare-fun lt!8095 () tuple2!934)

(assert (=> b!23029 (= e!14967 (arrayContainsKey!0 lt!8079 (_1!474 lt!8095) #b00000000000000000000000000000000))))

(declare-fun b!23030 () Bool)

(assert (=> b!23030 (= e!14966 (= (map!407 lt!8075) (ListLongMap!552 Nil!560)))))

(declare-fun b!23031 () Bool)

(declare-fun lt!8081 () (_ BitVec 32))

(assert (=> b!23031 (= e!14967 (ite (= (_1!474 lt!8095) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand lt!8081 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand lt!8081 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!23032 () Bool)

(declare-fun Unit!508 () Unit!503)

(assert (=> b!23032 (= e!14965 Unit!508)))

(declare-fun head!829 (List!563) tuple2!934)

(assert (=> b!23032 (= lt!8095 (head!829 (toList!291 (map!407 lt!8089))))))

(assert (=> b!23032 (= lt!8079 (array!1264 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) #b00000000000000000000000000000001)))))

(assert (=> b!23032 (= lt!8081 #b00000000000000000000000000000000)))

(declare-fun lt!8090 () Unit!503)

(declare-fun lemmaKeyInListMapIsInArray!92 (array!1263 array!1261 (_ BitVec 32) (_ BitVec 32) V!1181 V!1181 (_ BitVec 64) Int) Unit!503)

(assert (=> b!23032 (= lt!8090 (lemmaKeyInListMapIsInArray!92 lt!8079 (array!1262 ((as const (Array (_ BitVec 32) ValueCell!309)) EmptyCell!309) (bvadd (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) #b00000000000000000000000000000001)) (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) lt!8081 (dynLambda!143 (defaultEntry!1739 (v!1597 (underlying!113 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (dynLambda!143 (defaultEntry!1739 (v!1597 (underlying!113 thiss!938))) #b0000000000000000000000000000000000000000000000000000000000000000) (_1!474 lt!8095) (defaultEntry!1739 (v!1597 (underlying!113 thiss!938)))))))

(declare-fun c!2915 () Bool)

(assert (=> b!23032 (= c!2915 (and (not (= (_1!474 lt!8095) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (_1!474 lt!8095) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!23032 e!14967))

(declare-fun lt!8085 () Unit!503)

(assert (=> b!23032 (= lt!8085 lt!8090)))

(declare-fun lt!8093 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!1263 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!23032 (= lt!8093 (arrayScanForKey!0 (array!1264 ((as const (Array (_ BitVec 32) (_ BitVec 64))) #b0000000000000000000000000000000000000000000000000000000000000000) (bvadd (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) #b00000000000000000000000000000001)) (_1!474 lt!8095) #b00000000000000000000000000000000))))

(assert (=> b!23032 false))

(assert (= (and d!3977 c!2916) b!23032))

(assert (= (and d!3977 (not c!2916)) b!23028))

(assert (= (and b!23032 c!2915) b!23029))

(assert (= (and b!23032 (not c!2915)) b!23031))

(assert (= (and d!3977 res!14296) b!23027))

(assert (= (and b!23027 res!14297) b!23030))

(declare-fun b_lambda!1571 () Bool)

(assert (=> (not b_lambda!1571) (not d!3977)))

(declare-fun t!3233 () Bool)

(declare-fun tb!657 () Bool)

(assert (=> (and b!22842 (= (defaultEntry!1739 (v!1597 (underlying!113 thiss!938))) (defaultEntry!1739 (v!1597 (underlying!113 thiss!938)))) t!3233) tb!657))

(declare-fun result!1089 () Bool)

(assert (=> tb!657 (= result!1089 tp_is_empty!1017)))

(assert (=> d!3977 t!3233))

(declare-fun b_and!1477 () Bool)

(assert (= b_and!1473 (and (=> t!3233 result!1089) b_and!1477)))

(declare-fun b_lambda!1573 () Bool)

(assert (=> (not b_lambda!1573) (not b!23032)))

(assert (=> b!23032 t!3233))

(declare-fun b_and!1479 () Bool)

(assert (= b_and!1477 (and (=> t!3233 result!1089) b_and!1479)))

(assert (=> d!3977 m!16546))

(declare-fun m!16640 () Bool)

(assert (=> d!3977 m!16640))

(declare-fun m!16642 () Bool)

(assert (=> d!3977 m!16642))

(assert (=> d!3977 m!16546))

(declare-fun m!16644 () Bool)

(assert (=> d!3977 m!16644))

(declare-fun m!16646 () Bool)

(assert (=> d!3977 m!16646))

(declare-fun m!16648 () Bool)

(assert (=> d!3977 m!16648))

(assert (=> d!3977 m!16546))

(declare-fun m!16650 () Bool)

(assert (=> d!3977 m!16650))

(declare-fun m!16652 () Bool)

(assert (=> d!3977 m!16652))

(declare-fun m!16654 () Bool)

(assert (=> d!3977 m!16654))

(declare-fun m!16656 () Bool)

(assert (=> d!3977 m!16656))

(declare-fun m!16658 () Bool)

(assert (=> d!3977 m!16658))

(declare-fun m!16660 () Bool)

(assert (=> b!23029 m!16660))

(declare-fun m!16662 () Bool)

(assert (=> b!23030 m!16662))

(declare-fun m!16664 () Bool)

(assert (=> b!23032 m!16664))

(assert (=> b!23032 m!16646))

(declare-fun m!16666 () Bool)

(assert (=> b!23032 m!16666))

(assert (=> b!23032 m!16648))

(assert (=> b!23032 m!16546))

(assert (=> b!23032 m!16648))

(assert (=> b!23032 m!16648))

(declare-fun m!16668 () Bool)

(assert (=> b!23032 m!16668))

(assert (=> b!22841 d!3977))

(declare-fun d!3979 () Bool)

(declare-fun e!14973 () Bool)

(assert (=> d!3979 e!14973))

(declare-fun res!14300 () Bool)

(assert (=> d!3979 (=> (not res!14300) (not e!14973))))

(declare-fun lt!8102 () (_ BitVec 32))

(assert (=> d!3979 (= res!14300 (validMask!0 lt!8102))))

(declare-datatypes ((tuple2!936 0))(
  ( (tuple2!937 (_1!475 Unit!503) (_2!475 (_ BitVec 32))) )
))
(declare-fun e!14972 () tuple2!936)

(assert (=> d!3979 (= lt!8102 (_2!475 e!14972))))

(declare-fun c!2919 () Bool)

(declare-fun lt!8101 () tuple2!936)

(assert (=> d!3979 (= c!2919 (and (bvsgt (_2!475 lt!8101) #b00000000000000000000000000001000) (bvslt (bvmul #b00000000000000000000000000001000 (_size!146 (v!1597 (underlying!113 thiss!938)))) (_2!475 lt!8101)) (bvsge (bvadd (bvand (bvashr (_2!475 lt!8101) #b00000000000000000000000000000001) #b00111111111111111111111111111111) #b00000000000000000000000000000001) (_size!146 (v!1597 (underlying!113 thiss!938))))))))

(declare-fun Unit!509 () Unit!503)

(declare-fun Unit!510 () Unit!503)

(assert (=> d!3979 (= lt!8101 (ite (and (bvsge (bvmul #b00000000000000000000000000000010 (bvadd (_size!146 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))))) (mask!4723 (v!1597 (underlying!113 thiss!938)))) (bvsle (bvmul #b00000000000000000000000000000101 (_vacant!146 (v!1597 (underlying!113 thiss!938)))) (mask!4723 (v!1597 (underlying!113 thiss!938))))) (tuple2!937 Unit!509 (bvand (bvadd (bvshl (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00111111111111111111111111111111)) (tuple2!937 Unit!510 (mask!4723 (v!1597 (underlying!113 thiss!938))))))))

(assert (=> d!3979 (validMask!0 (mask!4723 (v!1597 (underlying!113 thiss!938))))))

(assert (=> d!3979 (= (computeNewMask!27 thiss!938 (mask!4723 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (_size!146 (v!1597 (underlying!113 thiss!938)))) lt!8102)))

(declare-fun b!23041 () Bool)

(declare-fun computeNewMaskWhile!13 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) tuple2!936)

(assert (=> b!23041 (= e!14972 (computeNewMaskWhile!13 (_size!146 (v!1597 (underlying!113 thiss!938))) (_vacant!146 (v!1597 (underlying!113 thiss!938))) (mask!4723 (v!1597 (underlying!113 thiss!938))) (_2!475 lt!8101)))))

(declare-fun b!23042 () Bool)

(declare-fun Unit!511 () Unit!503)

(assert (=> b!23042 (= e!14972 (tuple2!937 Unit!511 (_2!475 lt!8101)))))

(declare-fun b!23043 () Bool)

(assert (=> b!23043 (= e!14973 (bvsle (_size!146 (v!1597 (underlying!113 thiss!938))) (bvadd lt!8102 #b00000000000000000000000000000001)))))

(assert (= (and d!3979 c!2919) b!23041))

(assert (= (and d!3979 (not c!2919)) b!23042))

(assert (= (and d!3979 res!14300) b!23043))

(declare-fun m!16670 () Bool)

(assert (=> d!3979 m!16670))

(assert (=> d!3979 m!16544))

(declare-fun m!16672 () Bool)

(assert (=> b!23041 m!16672))

(assert (=> b!22841 d!3979))

(declare-fun b!23044 () Bool)

(declare-fun res!14314 () Bool)

(declare-fun call!1842 () Bool)

(assert (=> b!23044 (= res!14314 call!1842)))

(declare-fun e!14981 () Bool)

(assert (=> b!23044 (=> (not res!14314) (not e!14981))))

(declare-fun d!3981 () Bool)

(declare-fun e!14993 () Bool)

(assert (=> d!3981 e!14993))

(declare-fun res!14311 () Bool)

(assert (=> d!3981 (=> (not res!14311) (not e!14993))))

(declare-fun lt!8109 () tuple2!926)

(assert (=> d!3981 (= res!14311 (valid!107 (_2!470 lt!8109)))))

(declare-fun e!14984 () tuple2!926)

(assert (=> d!3981 (= lt!8109 e!14984)))

(declare-fun c!2932 () Bool)

(assert (=> d!3981 (= c!2932 (= #b1000000000000000000000000000000000000000000000000000000000000000 (bvneg #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!3981 (valid!107 (_2!470 lt!7925))))

(assert (=> d!3981 (= (update!32 (_2!470 lt!7925) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1663 (v!1597 (underlying!113 thiss!938)))) lt!8109)))

(declare-fun bm!1818 () Bool)

(declare-fun call!1828 () ListLongMap!551)

(declare-fun call!1834 () ListLongMap!551)

(assert (=> bm!1818 (= call!1828 call!1834)))

(declare-fun b!23045 () Bool)

(declare-fun e!14975 () Unit!503)

(declare-fun Unit!512 () Unit!503)

(assert (=> b!23045 (= e!14975 Unit!512)))

(declare-fun lt!8120 () Unit!503)

(declare-fun call!1829 () Unit!503)

(assert (=> b!23045 (= lt!8120 call!1829)))

(declare-fun lt!8119 () SeekEntryResult!58)

(declare-fun call!1837 () SeekEntryResult!58)

(assert (=> b!23045 (= lt!8119 call!1837)))

(declare-fun res!14308 () Bool)

(assert (=> b!23045 (= res!14308 ((_ is Found!58) lt!8119))))

(assert (=> b!23045 (=> (not res!14308) (not e!14981))))

(assert (=> b!23045 e!14981))

(declare-fun lt!8118 () Unit!503)

(assert (=> b!23045 (= lt!8118 lt!8120)))

(assert (=> b!23045 false))

(declare-fun b!23046 () Bool)

(declare-fun res!14305 () Bool)

(declare-fun e!14979 () Bool)

(assert (=> b!23046 (=> (not res!14305) (not e!14979))))

(declare-fun call!1838 () Bool)

(assert (=> b!23046 (= res!14305 call!1838)))

(declare-fun e!14988 () Bool)

(assert (=> b!23046 (= e!14988 e!14979)))

(declare-fun b!23047 () Bool)

(declare-fun e!14980 () Unit!503)

(declare-fun lt!8128 () Unit!503)

(assert (=> b!23047 (= e!14980 lt!8128)))

(assert (=> b!23047 (= lt!8128 call!1829)))

(declare-fun lt!8114 () SeekEntryResult!58)

(declare-fun call!1832 () SeekEntryResult!58)

(assert (=> b!23047 (= lt!8114 call!1832)))

(declare-fun res!14306 () Bool)

(assert (=> b!23047 (= res!14306 ((_ is Found!58) lt!8114))))

(declare-fun e!14991 () Bool)

(assert (=> b!23047 (=> (not res!14306) (not e!14991))))

(assert (=> b!23047 e!14991))

(declare-fun b!23048 () Bool)

(declare-fun e!14985 () tuple2!926)

(assert (=> b!23048 (= e!14984 e!14985)))

(declare-fun c!2922 () Bool)

(assert (=> b!23048 (= c!2922 (= #b1000000000000000000000000000000000000000000000000000000000000000 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1819 () Bool)

(declare-fun call!1839 () SeekEntryResult!58)

(assert (=> bm!1819 (= call!1837 call!1839)))

(declare-fun bm!1820 () Bool)

(declare-fun call!1825 () tuple2!926)

(declare-fun c!2921 () Bool)

(declare-fun lt!8127 () SeekEntryResult!58)

(assert (=> bm!1820 (= call!1825 (updateHelperNewKey!9 (_2!470 lt!7925) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1663 (v!1597 (underlying!113 thiss!938))) (ite c!2921 (index!2356 lt!8127) (index!2353 lt!8127))))))

(declare-fun b!23049 () Bool)

(declare-fun res!14304 () Bool)

(declare-fun lt!8106 () SeekEntryResult!58)

(assert (=> b!23049 (= res!14304 (= (select (arr!598 (_keys!3161 (_2!470 lt!7925))) (index!2356 lt!8106)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!14974 () Bool)

(assert (=> b!23049 (=> (not res!14304) (not e!14974))))

(declare-fun b!23050 () Bool)

(declare-fun call!1836 () Bool)

(assert (=> b!23050 (= e!14979 (not call!1836))))

(declare-fun b!23051 () Bool)

(declare-fun e!14990 () Bool)

(declare-fun call!1827 () Bool)

(assert (=> b!23051 (= e!14990 (not call!1827))))

(declare-fun b!23052 () Bool)

(declare-fun c!2923 () Bool)

(assert (=> b!23052 (= c!2923 ((_ is MissingVacant!58) lt!8106))))

(declare-fun e!14982 () Bool)

(assert (=> b!23052 (= e!14988 e!14982)))

(declare-fun bm!1821 () Bool)

(declare-fun call!1826 () Bool)

(assert (=> bm!1821 (= call!1838 call!1826)))

(declare-fun b!23053 () Bool)

(assert (=> b!23053 (= e!14982 e!14974)))

(declare-fun res!14310 () Bool)

(assert (=> b!23053 (= res!14310 call!1838)))

(assert (=> b!23053 (=> (not res!14310) (not e!14974))))

(declare-fun b!23054 () Bool)

(declare-fun res!14302 () Bool)

(declare-fun lt!8105 () SeekEntryResult!58)

(assert (=> b!23054 (= res!14302 (= (select (arr!598 (_keys!3161 (_2!470 lt!7925))) (index!2356 lt!8105)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!14987 () Bool)

(assert (=> b!23054 (=> (not res!14302) (not e!14987))))

(declare-fun b!23055 () Bool)

(declare-fun e!14977 () tuple2!926)

(assert (=> b!23055 (= e!14984 e!14977)))

(assert (=> b!23055 (= lt!8127 (seekEntryOrOpen!0 #b1000000000000000000000000000000000000000000000000000000000000000 (_keys!3161 (_2!470 lt!7925)) (mask!4723 (_2!470 lt!7925))))))

(declare-fun c!2930 () Bool)

(assert (=> b!23055 (= c!2930 ((_ is Undefined!58) lt!8127))))

(declare-fun b!23056 () Bool)

(declare-fun lt!8111 () Unit!503)

(declare-fun lt!8129 () Unit!503)

(assert (=> b!23056 (= lt!8111 lt!8129)))

(declare-fun call!1840 () ListLongMap!551)

(declare-fun call!1835 () ListLongMap!551)

(assert (=> b!23056 (= call!1840 call!1835)))

(declare-fun lt!8112 () (_ BitVec 32))

(assert (=> b!23056 (= lt!8129 (lemmaChangeLongMinValueKeyThenAddPairToListMap!9 (_keys!3161 (_2!470 lt!7925)) (_values!1726 (_2!470 lt!7925)) (mask!4723 (_2!470 lt!7925)) (extraKeys!1638 (_2!470 lt!7925)) lt!8112 (zeroValue!1663 (_2!470 lt!7925)) (minValue!1663 (_2!470 lt!7925)) (minValue!1663 (v!1597 (underlying!113 thiss!938))) (defaultEntry!1739 (_2!470 lt!7925))))))

(assert (=> b!23056 (= lt!8112 (bvor (extraKeys!1638 (_2!470 lt!7925)) #b00000000000000000000000000000010))))

(assert (=> b!23056 (= e!14985 (tuple2!927 true (LongMapFixedSize!205 (defaultEntry!1739 (_2!470 lt!7925)) (mask!4723 (_2!470 lt!7925)) (bvor (extraKeys!1638 (_2!470 lt!7925)) #b00000000000000000000000000000010) (zeroValue!1663 (_2!470 lt!7925)) (minValue!1663 (v!1597 (underlying!113 thiss!938))) (_size!146 (_2!470 lt!7925)) (_keys!3161 (_2!470 lt!7925)) (_values!1726 (_2!470 lt!7925)) (_vacant!146 (_2!470 lt!7925)))))))

(declare-fun b!23057 () Bool)

(declare-fun lt!8113 () Unit!503)

(declare-fun lt!8124 () Unit!503)

(assert (=> b!23057 (= lt!8113 lt!8124)))

(assert (=> b!23057 (= call!1840 call!1828)))

(declare-fun lt!8115 () (_ BitVec 32))

(assert (=> b!23057 (= lt!8124 (lemmaChangeZeroKeyThenAddPairToListMap!9 (_keys!3161 (_2!470 lt!7925)) (_values!1726 (_2!470 lt!7925)) (mask!4723 (_2!470 lt!7925)) (extraKeys!1638 (_2!470 lt!7925)) lt!8115 (zeroValue!1663 (_2!470 lt!7925)) (minValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (_2!470 lt!7925)) (defaultEntry!1739 (_2!470 lt!7925))))))

(assert (=> b!23057 (= lt!8115 (bvor (extraKeys!1638 (_2!470 lt!7925)) #b00000000000000000000000000000001))))

(assert (=> b!23057 (= e!14985 (tuple2!927 true (LongMapFixedSize!205 (defaultEntry!1739 (_2!470 lt!7925)) (mask!4723 (_2!470 lt!7925)) (bvor (extraKeys!1638 (_2!470 lt!7925)) #b00000000000000000000000000000001) (minValue!1663 (v!1597 (underlying!113 thiss!938))) (minValue!1663 (_2!470 lt!7925)) (_size!146 (_2!470 lt!7925)) (_keys!3161 (_2!470 lt!7925)) (_values!1726 (_2!470 lt!7925)) (_vacant!146 (_2!470 lt!7925)))))))

(declare-fun bm!1822 () Bool)

(declare-fun call!1844 () Bool)

(assert (=> bm!1822 (= call!1844 (arrayContainsKey!0 (_keys!3161 (_2!470 lt!7925)) #b1000000000000000000000000000000000000000000000000000000000000000 #b00000000000000000000000000000000))))

(declare-fun b!23058 () Bool)

(declare-fun e!14992 () Bool)

(assert (=> b!23058 (= e!14993 e!14992)))

(declare-fun c!2924 () Bool)

(assert (=> b!23058 (= c!2924 (_1!470 lt!8109))))

(declare-fun b!23059 () Bool)

(assert (=> b!23059 (= c!2921 ((_ is MissingVacant!58) lt!8127))))

(declare-fun e!14986 () tuple2!926)

(assert (=> b!23059 (= e!14977 e!14986)))

(declare-fun b!23060 () Bool)

(declare-fun e!14989 () ListLongMap!551)

(declare-fun call!1824 () ListLongMap!551)

(assert (=> b!23060 (= e!14989 call!1824)))

(declare-fun b!23061 () Bool)

(assert (=> b!23061 (= e!14982 ((_ is Undefined!58) lt!8106))))

(declare-fun b!23062 () Bool)

(assert (=> b!23062 (= e!14991 (= (select (arr!598 (_keys!3161 (_2!470 lt!7925))) (index!2354 lt!8114)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1823 () Bool)

(assert (=> bm!1823 (= call!1827 call!1844)))

(declare-fun bm!1824 () Bool)

(declare-fun call!1830 () Unit!503)

(assert (=> bm!1824 (= call!1830 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!9 (_keys!3161 (_2!470 lt!7925)) (_values!1726 (_2!470 lt!7925)) (mask!4723 (_2!470 lt!7925)) (extraKeys!1638 (_2!470 lt!7925)) (zeroValue!1663 (_2!470 lt!7925)) (minValue!1663 (_2!470 lt!7925)) #b1000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1739 (_2!470 lt!7925))))))

(declare-fun b!23063 () Bool)

(assert (=> b!23063 (= e!14987 (not call!1827))))

(declare-fun b!23064 () Bool)

(declare-fun e!14978 () Bool)

(assert (=> b!23064 (= e!14978 e!14987)))

(declare-fun res!14303 () Bool)

(declare-fun call!1843 () Bool)

(assert (=> b!23064 (= res!14303 call!1843)))

(assert (=> b!23064 (=> (not res!14303) (not e!14987))))

(declare-fun b!23065 () Bool)

(declare-fun e!14994 () Bool)

(assert (=> b!23065 (= e!14992 e!14994)))

(declare-fun res!14301 () Bool)

(declare-fun call!1841 () ListLongMap!551)

(assert (=> b!23065 (= res!14301 (contains!219 call!1841 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!23065 (=> (not res!14301) (not e!14994))))

(declare-fun b!23066 () Bool)

(declare-fun c!2927 () Bool)

(assert (=> b!23066 (= c!2927 ((_ is MissingVacant!58) lt!8105))))

(declare-fun e!14976 () Bool)

(assert (=> b!23066 (= e!14976 e!14978)))

(declare-fun bm!1825 () Bool)

(declare-fun call!1833 () Bool)

(assert (=> bm!1825 (= call!1842 call!1833)))

(declare-fun b!23067 () Bool)

(declare-fun lt!8122 () tuple2!926)

(assert (=> b!23067 (= lt!8122 call!1825)))

(declare-fun e!14983 () tuple2!926)

(assert (=> b!23067 (= e!14983 (tuple2!927 (_1!470 lt!8122) (_2!470 lt!8122)))))

(declare-fun b!23068 () Bool)

(declare-fun call!1822 () ListLongMap!551)

(assert (=> b!23068 (= e!14992 (= call!1841 call!1822))))

(declare-fun b!23069 () Bool)

(declare-fun Unit!513 () Unit!503)

(assert (=> b!23069 (= e!14980 Unit!513)))

(declare-fun lt!8108 () Unit!503)

(assert (=> b!23069 (= lt!8108 call!1830)))

(assert (=> b!23069 (= lt!8106 call!1832)))

(declare-fun c!2929 () Bool)

(assert (=> b!23069 (= c!2929 ((_ is MissingZero!58) lt!8106))))

(assert (=> b!23069 e!14988))

(declare-fun lt!8107 () Unit!503)

(assert (=> b!23069 (= lt!8107 lt!8108)))

(assert (=> b!23069 false))

(declare-fun bm!1826 () Bool)

(assert (=> bm!1826 (= call!1832 call!1839)))

(declare-fun bm!1827 () Bool)

(assert (=> bm!1827 (= call!1822 (map!407 (_2!470 lt!7925)))))

(declare-fun bm!1828 () Bool)

(assert (=> bm!1828 (= call!1836 call!1844)))

(declare-fun bm!1829 () Bool)

(assert (=> bm!1829 (= call!1843 call!1842)))

(declare-fun b!23070 () Bool)

(assert (=> b!23070 (= e!14986 e!14983)))

(declare-fun c!2920 () Bool)

(assert (=> b!23070 (= c!2920 ((_ is MissingZero!58) lt!8127))))

(declare-fun c!2926 () Bool)

(declare-fun bm!1830 () Bool)

(declare-fun c!2928 () Bool)

(declare-fun c!2931 () Bool)

(assert (=> bm!1830 (= call!1833 (inRange!0 (ite c!2930 (ite c!2926 (index!2354 lt!8119) (ite c!2928 (index!2353 lt!8105) (index!2356 lt!8105))) (ite c!2931 (index!2354 lt!8114) (ite c!2929 (index!2353 lt!8106) (index!2356 lt!8106)))) (mask!4723 (_2!470 lt!7925))))))

(declare-fun call!1823 () ListLongMap!551)

(declare-fun bm!1831 () Bool)

(assert (=> bm!1831 (= call!1823 (+!44 (ite c!2932 (ite c!2922 call!1835 call!1828) call!1824) (ite c!2932 (ite c!2922 (tuple2!935 #b0000000000000000000000000000000000000000000000000000000000000000 (minValue!1663 (v!1597 (underlying!113 thiss!938)))) (tuple2!935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1663 (v!1597 (underlying!113 thiss!938))))) (tuple2!935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1663 (v!1597 (underlying!113 thiss!938)))))))))

(declare-fun b!23071 () Bool)

(declare-fun res!14307 () Bool)

(assert (=> b!23071 (=> (not res!14307) (not e!14979))))

(assert (=> b!23071 (= res!14307 (= (select (arr!598 (_keys!3161 (_2!470 lt!7925))) (index!2353 lt!8106)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!1832 () Bool)

(assert (=> bm!1832 (= call!1826 call!1833)))

(declare-fun b!23072 () Bool)

(assert (=> b!23072 (= e!14981 (= (select (arr!598 (_keys!3161 (_2!470 lt!7925))) (index!2354 lt!8119)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun call!1821 () ListLongMap!551)

(declare-fun bm!1833 () Bool)

(assert (=> bm!1833 (= call!1821 (getCurrentListMap!120 (_keys!3161 (_2!470 lt!7925)) (ite c!2930 (_values!1726 (_2!470 lt!7925)) (array!1262 (store (arr!597 (_values!1726 (_2!470 lt!7925))) (index!2354 lt!8127) (ValueCellFull!309 (minValue!1663 (v!1597 (underlying!113 thiss!938))))) (size!693 (_values!1726 (_2!470 lt!7925))))) (mask!4723 (_2!470 lt!7925)) (extraKeys!1638 (_2!470 lt!7925)) (zeroValue!1663 (_2!470 lt!7925)) (minValue!1663 (_2!470 lt!7925)) #b00000000000000000000000000000000 (defaultEntry!1739 (_2!470 lt!7925))))))

(declare-fun b!23073 () Bool)

(declare-fun res!14313 () Bool)

(assert (=> b!23073 (=> (not res!14313) (not e!14990))))

(assert (=> b!23073 (= res!14313 call!1843)))

(assert (=> b!23073 (= e!14976 e!14990)))

(declare-fun b!23074 () Bool)

(declare-fun res!14309 () Bool)

(assert (=> b!23074 (=> (not res!14309) (not e!14990))))

(assert (=> b!23074 (= res!14309 (= (select (arr!598 (_keys!3161 (_2!470 lt!7925))) (index!2353 lt!8105)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!23075 () Bool)

(assert (=> b!23075 (= e!14974 (not call!1836))))

(declare-fun b!23076 () Bool)

(declare-fun lt!8104 () Unit!503)

(assert (=> b!23076 (= e!14975 lt!8104)))

(assert (=> b!23076 (= lt!8104 call!1830)))

(assert (=> b!23076 (= lt!8105 call!1837)))

(assert (=> b!23076 (= c!2928 ((_ is MissingZero!58) lt!8105))))

(assert (=> b!23076 e!14976))

(declare-fun bm!1834 () Bool)

(declare-fun lt!8125 () array!1261)

(assert (=> bm!1834 (= call!1834 (getCurrentListMap!120 (_keys!3161 (_2!470 lt!7925)) (ite c!2932 (_values!1726 (_2!470 lt!7925)) lt!8125) (mask!4723 (_2!470 lt!7925)) (ite (and c!2932 c!2922) lt!8115 (extraKeys!1638 (_2!470 lt!7925))) (ite (and c!2932 c!2922) (minValue!1663 (v!1597 (underlying!113 thiss!938))) (zeroValue!1663 (_2!470 lt!7925))) (minValue!1663 (_2!470 lt!7925)) #b00000000000000000000000000000000 (defaultEntry!1739 (_2!470 lt!7925))))))

(declare-fun b!23077 () Bool)

(declare-fun lt!8103 () Unit!503)

(declare-fun lt!8123 () Unit!503)

(assert (=> b!23077 (= lt!8103 lt!8123)))

(assert (=> b!23077 (contains!219 call!1834 (select (arr!598 (_keys!3161 (_2!470 lt!7925))) (index!2354 lt!8127)))))

(assert (=> b!23077 (= lt!8123 (lemmaValidKeyInArrayIsInListMap!9 (_keys!3161 (_2!470 lt!7925)) lt!8125 (mask!4723 (_2!470 lt!7925)) (extraKeys!1638 (_2!470 lt!7925)) (zeroValue!1663 (_2!470 lt!7925)) (minValue!1663 (_2!470 lt!7925)) (index!2354 lt!8127) (defaultEntry!1739 (_2!470 lt!7925))))))

(assert (=> b!23077 (= lt!8125 (array!1262 (store (arr!597 (_values!1726 (_2!470 lt!7925))) (index!2354 lt!8127) (ValueCellFull!309 (minValue!1663 (v!1597 (underlying!113 thiss!938))))) (size!693 (_values!1726 (_2!470 lt!7925)))))))

(declare-fun lt!8117 () Unit!503)

(declare-fun lt!8116 () Unit!503)

(assert (=> b!23077 (= lt!8117 lt!8116)))

(assert (=> b!23077 (= call!1823 call!1821)))

(assert (=> b!23077 (= lt!8116 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!9 (_keys!3161 (_2!470 lt!7925)) (_values!1726 (_2!470 lt!7925)) (mask!4723 (_2!470 lt!7925)) (extraKeys!1638 (_2!470 lt!7925)) (zeroValue!1663 (_2!470 lt!7925)) (minValue!1663 (_2!470 lt!7925)) (index!2354 lt!8127) #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1663 (v!1597 (underlying!113 thiss!938))) (defaultEntry!1739 (_2!470 lt!7925))))))

(declare-fun lt!8126 () Unit!503)

(assert (=> b!23077 (= lt!8126 e!14980)))

(declare-fun call!1831 () Bool)

(assert (=> b!23077 (= c!2931 call!1831)))

(assert (=> b!23077 (= e!14983 (tuple2!927 true (LongMapFixedSize!205 (defaultEntry!1739 (_2!470 lt!7925)) (mask!4723 (_2!470 lt!7925)) (extraKeys!1638 (_2!470 lt!7925)) (zeroValue!1663 (_2!470 lt!7925)) (minValue!1663 (_2!470 lt!7925)) (_size!146 (_2!470 lt!7925)) (_keys!3161 (_2!470 lt!7925)) (array!1262 (store (arr!597 (_values!1726 (_2!470 lt!7925))) (index!2354 lt!8127) (ValueCellFull!309 (minValue!1663 (v!1597 (underlying!113 thiss!938))))) (size!693 (_values!1726 (_2!470 lt!7925)))) (_vacant!146 (_2!470 lt!7925)))))))

(declare-fun bm!1835 () Bool)

(assert (=> bm!1835 (= call!1840 call!1823)))

(declare-fun b!23078 () Bool)

(declare-fun res!14312 () Bool)

(assert (=> b!23078 (= res!14312 call!1826)))

(assert (=> b!23078 (=> (not res!14312) (not e!14991))))

(declare-fun bm!1836 () Bool)

(declare-fun c!2925 () Bool)

(assert (=> bm!1836 (= c!2925 c!2930)))

(assert (=> bm!1836 (= call!1831 (contains!219 e!14989 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!23079 () Bool)

(assert (=> b!23079 (= e!14978 ((_ is Undefined!58) lt!8105))))

(declare-fun bm!1837 () Bool)

(assert (=> bm!1837 (= call!1841 (map!407 (_2!470 lt!8109)))))

(declare-fun bm!1838 () Bool)

(assert (=> bm!1838 (= call!1824 (getCurrentListMap!120 (_keys!3161 (_2!470 lt!7925)) (_values!1726 (_2!470 lt!7925)) (mask!4723 (_2!470 lt!7925)) (ite c!2932 (ite c!2922 (extraKeys!1638 (_2!470 lt!7925)) lt!8112) (extraKeys!1638 (_2!470 lt!7925))) (zeroValue!1663 (_2!470 lt!7925)) (ite c!2932 (ite c!2922 (minValue!1663 (_2!470 lt!7925)) (minValue!1663 (v!1597 (underlying!113 thiss!938)))) (minValue!1663 (_2!470 lt!7925))) #b00000000000000000000000000000000 (defaultEntry!1739 (_2!470 lt!7925))))))

(declare-fun b!23080 () Bool)

(assert (=> b!23080 (= e!14989 call!1821)))

(declare-fun b!23081 () Bool)

(declare-fun lt!8110 () Unit!503)

(assert (=> b!23081 (= lt!8110 e!14975)))

(assert (=> b!23081 (= c!2926 call!1831)))

(assert (=> b!23081 (= e!14977 (tuple2!927 false (_2!470 lt!7925)))))

(declare-fun b!23082 () Bool)

(assert (=> b!23082 (= e!14994 (= call!1841 (+!44 call!1822 (tuple2!935 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!1663 (v!1597 (underlying!113 thiss!938)))))))))

(declare-fun bm!1839 () Bool)

(assert (=> bm!1839 (= call!1835 call!1824)))

(declare-fun bm!1840 () Bool)

(assert (=> bm!1840 (= call!1829 (lemmaInListMapThenSeekEntryOrOpenFindsIt!9 (_keys!3161 (_2!470 lt!7925)) (_values!1726 (_2!470 lt!7925)) (mask!4723 (_2!470 lt!7925)) (extraKeys!1638 (_2!470 lt!7925)) (zeroValue!1663 (_2!470 lt!7925)) (minValue!1663 (_2!470 lt!7925)) #b1000000000000000000000000000000000000000000000000000000000000000 (defaultEntry!1739 (_2!470 lt!7925))))))

(declare-fun bm!1841 () Bool)

(assert (=> bm!1841 (= call!1839 (seekEntryOrOpen!0 #b1000000000000000000000000000000000000000000000000000000000000000 (_keys!3161 (_2!470 lt!7925)) (mask!4723 (_2!470 lt!7925))))))

(declare-fun b!23083 () Bool)

(declare-fun lt!8121 () tuple2!926)

(assert (=> b!23083 (= e!14986 (tuple2!927 (_1!470 lt!8121) (_2!470 lt!8121)))))

(assert (=> b!23083 (= lt!8121 call!1825)))

(assert (= (and d!3981 c!2932) b!23048))

(assert (= (and d!3981 (not c!2932)) b!23055))

(assert (= (and b!23048 c!2922) b!23057))

(assert (= (and b!23048 (not c!2922)) b!23056))

(assert (= (or b!23057 b!23056) bm!1839))

(assert (= (or b!23057 b!23056) bm!1818))

(assert (= (or b!23057 b!23056) bm!1835))

(assert (= (and b!23055 c!2930) b!23081))

(assert (= (and b!23055 (not c!2930)) b!23059))

(assert (= (and b!23081 c!2926) b!23045))

(assert (= (and b!23081 (not c!2926)) b!23076))

(assert (= (and b!23045 res!14308) b!23044))

(assert (= (and b!23044 res!14314) b!23072))

(assert (= (and b!23076 c!2928) b!23073))

(assert (= (and b!23076 (not c!2928)) b!23066))

(assert (= (and b!23073 res!14313) b!23074))

(assert (= (and b!23074 res!14309) b!23051))

(assert (= (and b!23066 c!2927) b!23064))

(assert (= (and b!23066 (not c!2927)) b!23079))

(assert (= (and b!23064 res!14303) b!23054))

(assert (= (and b!23054 res!14302) b!23063))

(assert (= (or b!23073 b!23064) bm!1829))

(assert (= (or b!23051 b!23063) bm!1823))

(assert (= (or b!23044 bm!1829) bm!1825))

(assert (= (or b!23045 b!23076) bm!1819))

(assert (= (and b!23059 c!2921) b!23083))

(assert (= (and b!23059 (not c!2921)) b!23070))

(assert (= (and b!23070 c!2920) b!23067))

(assert (= (and b!23070 (not c!2920)) b!23077))

(assert (= (and b!23077 c!2931) b!23047))

(assert (= (and b!23077 (not c!2931)) b!23069))

(assert (= (and b!23047 res!14306) b!23078))

(assert (= (and b!23078 res!14312) b!23062))

(assert (= (and b!23069 c!2929) b!23046))

(assert (= (and b!23069 (not c!2929)) b!23052))

(assert (= (and b!23046 res!14305) b!23071))

(assert (= (and b!23071 res!14307) b!23050))

(assert (= (and b!23052 c!2923) b!23053))

(assert (= (and b!23052 (not c!2923)) b!23061))

(assert (= (and b!23053 res!14310) b!23049))

(assert (= (and b!23049 res!14304) b!23075))

(assert (= (or b!23046 b!23053) bm!1821))

(assert (= (or b!23050 b!23075) bm!1828))

(assert (= (or b!23078 bm!1821) bm!1832))

(assert (= (or b!23047 b!23069) bm!1826))

(assert (= (or b!23083 b!23067) bm!1820))

(assert (= (or bm!1819 bm!1826) bm!1841))

(assert (= (or b!23081 b!23077) bm!1833))

(assert (= (or b!23076 b!23069) bm!1824))

(assert (= (or bm!1825 bm!1832) bm!1830))

(assert (= (or bm!1823 bm!1828) bm!1822))

(assert (= (or b!23045 b!23047) bm!1840))

(assert (= (or b!23081 b!23077) bm!1836))

(assert (= (and bm!1836 c!2925) b!23080))

(assert (= (and bm!1836 (not c!2925)) b!23060))

(assert (= (or bm!1818 b!23077) bm!1834))

(assert (= (or bm!1839 b!23077 b!23060) bm!1838))

(assert (= (or bm!1835 b!23077) bm!1831))

(assert (= (and d!3981 res!14311) b!23058))

(assert (= (and b!23058 c!2924) b!23065))

(assert (= (and b!23058 (not c!2924)) b!23068))

(assert (= (and b!23065 res!14301) b!23082))

(assert (= (or b!23082 b!23068) bm!1827))

(assert (= (or b!23065 b!23082 b!23068) bm!1837))

(declare-fun m!16674 () Bool)

(assert (=> bm!1820 m!16674))

(declare-fun m!16676 () Bool)

(assert (=> b!23065 m!16676))

(declare-fun m!16678 () Bool)

(assert (=> b!23056 m!16678))

(declare-fun m!16680 () Bool)

(assert (=> b!23062 m!16680))

(declare-fun m!16682 () Bool)

(assert (=> bm!1840 m!16682))

(declare-fun m!16684 () Bool)

(assert (=> b!23054 m!16684))

(declare-fun m!16686 () Bool)

(assert (=> bm!1841 m!16686))

(declare-fun m!16688 () Bool)

(assert (=> bm!1827 m!16688))

(declare-fun m!16690 () Bool)

(assert (=> b!23049 m!16690))

(declare-fun m!16692 () Bool)

(assert (=> b!23082 m!16692))

(declare-fun m!16694 () Bool)

(assert (=> b!23071 m!16694))

(declare-fun m!16696 () Bool)

(assert (=> b!23057 m!16696))

(declare-fun m!16698 () Bool)

(assert (=> bm!1837 m!16698))

(declare-fun m!16700 () Bool)

(assert (=> bm!1822 m!16700))

(declare-fun m!16702 () Bool)

(assert (=> bm!1836 m!16702))

(declare-fun m!16704 () Bool)

(assert (=> bm!1830 m!16704))

(declare-fun m!16706 () Bool)

(assert (=> d!3981 m!16706))

(declare-fun m!16708 () Bool)

(assert (=> d!3981 m!16708))

(declare-fun m!16710 () Bool)

(assert (=> bm!1838 m!16710))

(declare-fun m!16712 () Bool)

(assert (=> b!23072 m!16712))

(declare-fun m!16714 () Bool)

(assert (=> b!23077 m!16714))

(declare-fun m!16716 () Bool)

(assert (=> b!23077 m!16716))

(declare-fun m!16718 () Bool)

(assert (=> b!23077 m!16718))

(declare-fun m!16720 () Bool)

(assert (=> b!23077 m!16720))

(assert (=> b!23077 m!16718))

(declare-fun m!16722 () Bool)

(assert (=> b!23077 m!16722))

(declare-fun m!16724 () Bool)

(assert (=> b!23074 m!16724))

(assert (=> bm!1833 m!16716))

(declare-fun m!16726 () Bool)

(assert (=> bm!1833 m!16726))

(assert (=> b!23055 m!16686))

(declare-fun m!16728 () Bool)

(assert (=> bm!1824 m!16728))

(declare-fun m!16730 () Bool)

(assert (=> bm!1831 m!16730))

(declare-fun m!16732 () Bool)

(assert (=> bm!1834 m!16732))

(assert (=> b!22851 d!3981))

(declare-fun d!3983 () Bool)

(assert (=> d!3983 (= (validMask!0 (mask!4723 (v!1597 (underlying!113 thiss!938)))) (and (or (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000000000000000000111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000000000000000001111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000000000000000011111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000000000000000111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000000000000001111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000000000000011111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000000000000111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000000000001111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000000000011111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000000000111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000000001111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000000011111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000000111111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000001111111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000011111111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000000111111111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000001111111111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000011111111111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000000111111111111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000001111111111111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000011111111111111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000000111111111111111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000001111111111111111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000011111111111111111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00000111111111111111111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00001111111111111111111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00011111111111111111111111111111) (= (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00111111111111111111111111111111)) (bvsle (mask!4723 (v!1597 (underlying!113 thiss!938))) #b00111111111111111111111111111111)))))

(assert (=> b!22846 d!3983))

(declare-fun b!23090 () Bool)

(declare-fun e!14999 () Bool)

(assert (=> b!23090 (= e!14999 tp_is_empty!1017)))

(declare-fun b!23091 () Bool)

(declare-fun e!15000 () Bool)

(assert (=> b!23091 (= e!15000 tp_is_empty!1017)))

(declare-fun mapNonEmpty!1019 () Bool)

(declare-fun mapRes!1019 () Bool)

(declare-fun tp!3512 () Bool)

(assert (=> mapNonEmpty!1019 (= mapRes!1019 (and tp!3512 e!14999))))

(declare-fun mapRest!1019 () (Array (_ BitVec 32) ValueCell!309))

(declare-fun mapValue!1019 () ValueCell!309)

(declare-fun mapKey!1019 () (_ BitVec 32))

(assert (=> mapNonEmpty!1019 (= mapRest!1013 (store mapRest!1019 mapKey!1019 mapValue!1019))))

(declare-fun mapIsEmpty!1019 () Bool)

(assert (=> mapIsEmpty!1019 mapRes!1019))

(declare-fun condMapEmpty!1019 () Bool)

(declare-fun mapDefault!1019 () ValueCell!309)

(assert (=> mapNonEmpty!1013 (= condMapEmpty!1019 (= mapRest!1013 ((as const (Array (_ BitVec 32) ValueCell!309)) mapDefault!1019)))))

(assert (=> mapNonEmpty!1013 (= tp!3503 (and e!15000 mapRes!1019))))

(assert (= (and mapNonEmpty!1013 condMapEmpty!1019) mapIsEmpty!1019))

(assert (= (and mapNonEmpty!1013 (not condMapEmpty!1019)) mapNonEmpty!1019))

(assert (= (and mapNonEmpty!1019 ((_ is ValueCellFull!309) mapValue!1019)) b!23090))

(assert (= (and mapNonEmpty!1013 ((_ is ValueCellFull!309) mapDefault!1019)) b!23091))

(declare-fun m!16734 () Bool)

(assert (=> mapNonEmpty!1019 m!16734))

(declare-fun b_lambda!1575 () Bool)

(assert (= b_lambda!1571 (or (and b!22842 b_free!753) b_lambda!1575)))

(declare-fun b_lambda!1577 () Bool)

(assert (= b_lambda!1573 (or (and b!22842 b_free!753) b_lambda!1577)))

(check-sat (not b!23041) (not b!23030) (not bm!1822) (not d!3975) (not bm!1812) (not b!23065) (not bm!1807) (not d!3969) b_and!1479 (not bm!1837) (not d!3981) (not b!23008) (not bm!1830) (not d!3977) (not b_next!753) (not bm!1831) (not bm!1798) (not b!23055) (not bm!1838) (not bm!1834) (not b!22996) (not bm!1833) (not bm!1796) (not bm!1806) (not bm!1824) (not bm!1820) (not b!23029) (not b!22987) (not bm!1827) (not b_lambda!1575) tp_is_empty!1017 (not bm!1803) (not bm!1816) (not b!23057) (not b!23077) (not bm!1814) (not b!23082) (not bm!1810) (not b_lambda!1577) (not b!23013) (not b!23056) (not bm!1809) (not b!23032) (not bm!1836) (not mapNonEmpty!1019) (not bm!1817) (not bm!1800) (not bm!1840) (not b!22986) (not b!22988) (not bm!1841) (not bm!1813) (not d!3979))
(check-sat b_and!1479 (not b_next!753))
