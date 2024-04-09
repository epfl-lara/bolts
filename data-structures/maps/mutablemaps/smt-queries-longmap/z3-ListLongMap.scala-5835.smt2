; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75342 () Bool)

(assert start!75342)

(declare-fun b!887077 () Bool)

(declare-fun b_free!15513 () Bool)

(declare-fun b_next!15513 () Bool)

(assert (=> b!887077 (= b_free!15513 (not b_next!15513))))

(declare-fun tp!54473 () Bool)

(declare-fun b_and!25737 () Bool)

(assert (=> b!887077 (= tp!54473 b_and!25737)))

(declare-fun b!887075 () Bool)

(declare-fun e!494017 () Bool)

(declare-fun e!494016 () Bool)

(assert (=> b!887075 (= e!494017 e!494016)))

(declare-fun b!887076 () Bool)

(declare-fun e!494015 () Bool)

(assert (=> b!887076 (= e!494016 e!494015)))

(declare-fun e!494014 () Bool)

(declare-fun tp_is_empty!17841 () Bool)

(declare-datatypes ((V!28753 0))(
  ( (V!28754 (val!8971 Int)) )
))
(declare-datatypes ((ValueCell!8439 0))(
  ( (ValueCellFull!8439 (v!11418 V!28753)) (EmptyCell!8439) )
))
(declare-datatypes ((array!51628 0))(
  ( (array!51629 (arr!24826 (Array (_ BitVec 32) ValueCell!8439)) (size!25267 (_ BitVec 32))) )
))
(declare-datatypes ((array!51630 0))(
  ( (array!51631 (arr!24827 (Array (_ BitVec 32) (_ BitVec 64))) (size!25268 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3894 0))(
  ( (LongMapFixedSize!3895 (defaultEntry!5135 Int) (mask!25523 (_ BitVec 32)) (extraKeys!4828 (_ BitVec 32)) (zeroValue!4932 V!28753) (minValue!4932 V!28753) (_size!2002 (_ BitVec 32)) (_keys!9806 array!51630) (_values!5119 array!51628) (_vacant!2002 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1048 0))(
  ( (Cell!1049 (v!11419 LongMapFixedSize!3894)) )
))
(declare-datatypes ((LongMap!1048 0))(
  ( (LongMap!1049 (underlying!535 Cell!1048)) )
))
(declare-fun thiss!833 () LongMap!1048)

(declare-fun array_inv!19516 (array!51630) Bool)

(declare-fun array_inv!19517 (array!51628) Bool)

(assert (=> b!887077 (= e!494015 (and tp!54473 tp_is_empty!17841 (array_inv!19516 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) (array_inv!19517 (_values!5119 (v!11419 (underlying!535 thiss!833)))) e!494014))))

(declare-fun b!887078 () Bool)

(declare-fun e!494013 () Bool)

(declare-fun mapRes!28281 () Bool)

(assert (=> b!887078 (= e!494014 (and e!494013 mapRes!28281))))

(declare-fun condMapEmpty!28281 () Bool)

(declare-fun mapDefault!28281 () ValueCell!8439)

(assert (=> b!887078 (= condMapEmpty!28281 (= (arr!24826 (_values!5119 (v!11419 (underlying!535 thiss!833)))) ((as const (Array (_ BitVec 32) ValueCell!8439)) mapDefault!28281)))))

(declare-fun b!887079 () Bool)

(declare-fun e!494018 () Bool)

(declare-fun e!494012 () Bool)

(assert (=> b!887079 (= e!494018 e!494012)))

(declare-fun res!602096 () Bool)

(assert (=> b!887079 (=> (not res!602096) (not e!494012))))

(declare-fun key!673 () (_ BitVec 64))

(declare-fun contains!4300 (LongMap!1048 (_ BitVec 64)) Bool)

(assert (=> b!887079 (= res!602096 (contains!4300 thiss!833 key!673))))

(declare-fun lt!401160 () V!28753)

(declare-fun apply!391 (LongMapFixedSize!3894 (_ BitVec 64)) V!28753)

(assert (=> b!887079 (= lt!401160 (apply!391 (v!11419 (underlying!535 thiss!833)) key!673))))

(declare-fun b!887080 () Bool)

(assert (=> b!887080 (= e!494013 tp_is_empty!17841)))

(declare-fun b!887081 () Bool)

(declare-datatypes ((Option!437 0))(
  ( (Some!436 (v!11420 V!28753)) (None!435) )
))
(declare-fun isDefined!314 (Option!437) Bool)

(declare-datatypes ((tuple2!11942 0))(
  ( (tuple2!11943 (_1!5981 (_ BitVec 64)) (_2!5981 V!28753)) )
))
(declare-datatypes ((List!17762 0))(
  ( (Nil!17759) (Cons!17758 (h!18889 tuple2!11942) (t!25053 List!17762)) )
))
(declare-fun getValueByKey!431 (List!17762 (_ BitVec 64)) Option!437)

(declare-datatypes ((ListLongMap!10653 0))(
  ( (ListLongMap!10654 (toList!5342 List!17762)) )
))
(declare-fun map!12081 (LongMap!1048) ListLongMap!10653)

(assert (=> b!887081 (= e!494012 (not (isDefined!314 (getValueByKey!431 (toList!5342 (map!12081 thiss!833)) key!673))))))

(declare-fun mapNonEmpty!28281 () Bool)

(declare-fun tp!54474 () Bool)

(declare-fun e!494011 () Bool)

(assert (=> mapNonEmpty!28281 (= mapRes!28281 (and tp!54474 e!494011))))

(declare-fun mapValue!28281 () ValueCell!8439)

(declare-fun mapRest!28281 () (Array (_ BitVec 32) ValueCell!8439))

(declare-fun mapKey!28281 () (_ BitVec 32))

(assert (=> mapNonEmpty!28281 (= (arr!24826 (_values!5119 (v!11419 (underlying!535 thiss!833)))) (store mapRest!28281 mapKey!28281 mapValue!28281))))

(declare-fun res!602095 () Bool)

(assert (=> start!75342 (=> (not res!602095) (not e!494018))))

(declare-fun valid!1506 (LongMap!1048) Bool)

(assert (=> start!75342 (= res!602095 (valid!1506 thiss!833))))

(assert (=> start!75342 e!494018))

(assert (=> start!75342 e!494017))

(assert (=> start!75342 true))

(declare-fun b!887082 () Bool)

(assert (=> b!887082 (= e!494011 tp_is_empty!17841)))

(declare-fun mapIsEmpty!28281 () Bool)

(assert (=> mapIsEmpty!28281 mapRes!28281))

(assert (= (and start!75342 res!602095) b!887079))

(assert (= (and b!887079 res!602096) b!887081))

(assert (= (and b!887078 condMapEmpty!28281) mapIsEmpty!28281))

(assert (= (and b!887078 (not condMapEmpty!28281)) mapNonEmpty!28281))

(get-info :version)

(assert (= (and mapNonEmpty!28281 ((_ is ValueCellFull!8439) mapValue!28281)) b!887082))

(assert (= (and b!887078 ((_ is ValueCellFull!8439) mapDefault!28281)) b!887080))

(assert (= b!887077 b!887078))

(assert (= b!887076 b!887077))

(assert (= b!887075 b!887076))

(assert (= start!75342 b!887075))

(declare-fun m!826881 () Bool)

(assert (=> start!75342 m!826881))

(declare-fun m!826883 () Bool)

(assert (=> b!887077 m!826883))

(declare-fun m!826885 () Bool)

(assert (=> b!887077 m!826885))

(declare-fun m!826887 () Bool)

(assert (=> mapNonEmpty!28281 m!826887))

(declare-fun m!826889 () Bool)

(assert (=> b!887079 m!826889))

(declare-fun m!826891 () Bool)

(assert (=> b!887079 m!826891))

(declare-fun m!826893 () Bool)

(assert (=> b!887081 m!826893))

(declare-fun m!826895 () Bool)

(assert (=> b!887081 m!826895))

(assert (=> b!887081 m!826895))

(declare-fun m!826897 () Bool)

(assert (=> b!887081 m!826897))

(check-sat (not b!887079) tp_is_empty!17841 (not mapNonEmpty!28281) (not b!887081) (not b!887077) (not start!75342) (not b_next!15513) b_and!25737)
(check-sat b_and!25737 (not b_next!15513))
(get-model)

(declare-fun d!109809 () Bool)

(declare-fun isEmpty!679 (Option!437) Bool)

(assert (=> d!109809 (= (isDefined!314 (getValueByKey!431 (toList!5342 (map!12081 thiss!833)) key!673)) (not (isEmpty!679 (getValueByKey!431 (toList!5342 (map!12081 thiss!833)) key!673))))))

(declare-fun bs!24863 () Bool)

(assert (= bs!24863 d!109809))

(assert (=> bs!24863 m!826895))

(declare-fun m!826917 () Bool)

(assert (=> bs!24863 m!826917))

(assert (=> b!887081 d!109809))

(declare-fun b!887116 () Bool)

(declare-fun e!494050 () Option!437)

(declare-fun e!494051 () Option!437)

(assert (=> b!887116 (= e!494050 e!494051)))

(declare-fun c!93538 () Bool)

(assert (=> b!887116 (= c!93538 (and ((_ is Cons!17758) (toList!5342 (map!12081 thiss!833))) (not (= (_1!5981 (h!18889 (toList!5342 (map!12081 thiss!833)))) key!673))))))

(declare-fun d!109811 () Bool)

(declare-fun c!93537 () Bool)

(assert (=> d!109811 (= c!93537 (and ((_ is Cons!17758) (toList!5342 (map!12081 thiss!833))) (= (_1!5981 (h!18889 (toList!5342 (map!12081 thiss!833)))) key!673)))))

(assert (=> d!109811 (= (getValueByKey!431 (toList!5342 (map!12081 thiss!833)) key!673) e!494050)))

(declare-fun b!887115 () Bool)

(assert (=> b!887115 (= e!494050 (Some!436 (_2!5981 (h!18889 (toList!5342 (map!12081 thiss!833))))))))

(declare-fun b!887118 () Bool)

(assert (=> b!887118 (= e!494051 None!435)))

(declare-fun b!887117 () Bool)

(assert (=> b!887117 (= e!494051 (getValueByKey!431 (t!25053 (toList!5342 (map!12081 thiss!833))) key!673))))

(assert (= (and d!109811 c!93537) b!887115))

(assert (= (and d!109811 (not c!93537)) b!887116))

(assert (= (and b!887116 c!93538) b!887117))

(assert (= (and b!887116 (not c!93538)) b!887118))

(declare-fun m!826919 () Bool)

(assert (=> b!887117 m!826919))

(assert (=> b!887081 d!109811))

(declare-fun d!109813 () Bool)

(declare-fun map!12083 (LongMapFixedSize!3894) ListLongMap!10653)

(assert (=> d!109813 (= (map!12081 thiss!833) (map!12083 (v!11419 (underlying!535 thiss!833))))))

(declare-fun bs!24864 () Bool)

(assert (= bs!24864 d!109813))

(declare-fun m!826921 () Bool)

(assert (=> bs!24864 m!826921))

(assert (=> b!887081 d!109813))

(declare-fun d!109815 () Bool)

(assert (=> d!109815 (= (array_inv!19516 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) (bvsge (size!25268 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) #b00000000000000000000000000000000))))

(assert (=> b!887077 d!109815))

(declare-fun d!109817 () Bool)

(assert (=> d!109817 (= (array_inv!19517 (_values!5119 (v!11419 (underlying!535 thiss!833)))) (bvsge (size!25267 (_values!5119 (v!11419 (underlying!535 thiss!833)))) #b00000000000000000000000000000000))))

(assert (=> b!887077 d!109817))

(declare-fun d!109819 () Bool)

(declare-fun valid!1508 (LongMapFixedSize!3894) Bool)

(assert (=> d!109819 (= (valid!1506 thiss!833) (valid!1508 (v!11419 (underlying!535 thiss!833))))))

(declare-fun bs!24865 () Bool)

(assert (= bs!24865 d!109819))

(declare-fun m!826923 () Bool)

(assert (=> bs!24865 m!826923))

(assert (=> start!75342 d!109819))

(declare-fun d!109821 () Bool)

(declare-fun lt!401166 () Bool)

(declare-fun contains!4302 (ListLongMap!10653 (_ BitVec 64)) Bool)

(assert (=> d!109821 (= lt!401166 (contains!4302 (map!12081 thiss!833) key!673))))

(declare-fun contains!4303 (LongMapFixedSize!3894 (_ BitVec 64)) Bool)

(assert (=> d!109821 (= lt!401166 (contains!4303 (v!11419 (underlying!535 thiss!833)) key!673))))

(assert (=> d!109821 (valid!1506 thiss!833)))

(assert (=> d!109821 (= (contains!4300 thiss!833 key!673) lt!401166)))

(declare-fun bs!24866 () Bool)

(assert (= bs!24866 d!109821))

(assert (=> bs!24866 m!826893))

(assert (=> bs!24866 m!826893))

(declare-fun m!826925 () Bool)

(assert (=> bs!24866 m!826925))

(declare-fun m!826927 () Bool)

(assert (=> bs!24866 m!826927))

(assert (=> bs!24866 m!826881))

(assert (=> b!887079 d!109821))

(declare-fun b!887155 () Bool)

(declare-fun e!494075 () V!28753)

(declare-fun e!494083 () V!28753)

(assert (=> b!887155 (= e!494075 e!494083)))

(declare-fun c!93558 () Bool)

(assert (=> b!887155 (= c!93558 (and (= key!673 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!887156 () Bool)

(declare-fun e!494078 () Bool)

(declare-fun e!494081 () Bool)

(assert (=> b!887156 (= e!494078 e!494081)))

(declare-fun c!93554 () Bool)

(assert (=> b!887156 (= c!93554 (= key!673 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!887157 () Bool)

(declare-fun res!602111 () Bool)

(declare-fun e!494084 () Bool)

(assert (=> b!887157 (=> (not res!602111) (not e!494084))))

(assert (=> b!887157 (= res!602111 (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!887157 (= e!494081 e!494084)))

(declare-fun bm!39334 () Bool)

(declare-fun call!39340 () V!28753)

(declare-fun call!39339 () V!28753)

(assert (=> bm!39334 (= call!39340 call!39339)))

(declare-fun b!887158 () Bool)

(declare-fun res!602113 () Bool)

(declare-fun e!494079 () Bool)

(assert (=> b!887158 (=> (not res!602113) (not e!494079))))

(declare-fun arrayContainsKey!0 (array!51630 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!887158 (= res!602113 (arrayContainsKey!0 (_keys!9806 (v!11419 (underlying!535 thiss!833))) key!673 #b00000000000000000000000000000000))))

(assert (=> b!887158 (= e!494081 e!494079)))

(declare-fun bm!39335 () Bool)

(declare-fun call!39338 () ListLongMap!10653)

(declare-fun getCurrentListMap!2601 (array!51630 array!51628 (_ BitVec 32) (_ BitVec 32) V!28753 V!28753 (_ BitVec 32) Int) ListLongMap!10653)

(assert (=> bm!39335 (= call!39338 (getCurrentListMap!2601 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun b!887159 () Bool)

(assert (=> b!887159 (= e!494084 (= call!39340 (minValue!4932 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun b!887160 () Bool)

(declare-fun e!494074 () Bool)

(declare-datatypes ((SeekEntryResult!8752 0))(
  ( (MissingZero!8752 (index!37378 (_ BitVec 32))) (Found!8752 (index!37379 (_ BitVec 32))) (Intermediate!8752 (undefined!9564 Bool) (index!37380 (_ BitVec 32)) (x!75225 (_ BitVec 32))) (Undefined!8752) (MissingVacant!8752 (index!37381 (_ BitVec 32))) )
))
(declare-fun lt!401198 () SeekEntryResult!8752)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!887160 (= e!494074 (inRange!0 (index!37379 lt!401198) (mask!25523 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun b!887161 () Bool)

(declare-fun e!494077 () V!28753)

(assert (=> b!887161 (= e!494075 e!494077)))

(declare-fun lt!401199 () SeekEntryResult!8752)

(declare-fun seekEntry!0 ((_ BitVec 64) array!51630 (_ BitVec 32)) SeekEntryResult!8752)

(assert (=> b!887161 (= lt!401199 (seekEntry!0 key!673 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833)))))))

(declare-datatypes ((Unit!30211 0))(
  ( (Unit!30212) )
))
(declare-fun lt!401191 () Unit!30211)

(declare-fun lemmaSeekEntryGivesInRangeIndex!1 (array!51630 array!51628 (_ BitVec 32) (_ BitVec 32) V!28753 V!28753 (_ BitVec 64)) Unit!30211)

(assert (=> b!887161 (= lt!401191 (lemmaSeekEntryGivesInRangeIndex!1 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) key!673))))

(assert (=> b!887161 (= lt!401198 (seekEntry!0 key!673 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun res!602112 () Bool)

(assert (=> b!887161 (= res!602112 (not ((_ is Found!8752) lt!401198)))))

(assert (=> b!887161 (=> res!602112 e!494074)))

(assert (=> b!887161 e!494074))

(declare-fun lt!401193 () Unit!30211)

(assert (=> b!887161 (= lt!401193 lt!401191)))

(declare-fun c!93557 () Bool)

(assert (=> b!887161 (= c!93557 ((_ is Found!8752) lt!401199))))

(declare-fun b!887162 () Bool)

(assert (=> b!887162 (= e!494083 (zeroValue!4932 (v!11419 (underlying!535 thiss!833))))))

(declare-fun d!109823 () Bool)

(declare-fun e!494076 () Bool)

(assert (=> d!109823 e!494076))

(declare-fun c!93556 () Bool)

(assert (=> d!109823 (= c!93556 (contains!4303 (v!11419 (underlying!535 thiss!833)) key!673))))

(declare-fun lt!401194 () V!28753)

(assert (=> d!109823 (= lt!401194 e!494075)))

(declare-fun c!93559 () Bool)

(assert (=> d!109823 (= c!93559 (= key!673 (bvneg key!673)))))

(assert (=> d!109823 (valid!1508 (v!11419 (underlying!535 thiss!833)))))

(assert (=> d!109823 (= (apply!391 (v!11419 (underlying!535 thiss!833)) key!673) lt!401194)))

(declare-fun b!887163 () Bool)

(declare-fun e!494082 () Bool)

(assert (=> b!887163 (= e!494082 (= call!39339 (zeroValue!4932 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun b!887164 () Bool)

(declare-fun e!494080 () V!28753)

(assert (=> b!887164 (= e!494080 (minValue!4932 (v!11419 (underlying!535 thiss!833))))))

(declare-fun b!887165 () Bool)

(declare-fun dynLambda!1282 (Int (_ BitVec 64)) V!28753)

(assert (=> b!887165 (= e!494077 (dynLambda!1282 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))) key!673))))

(declare-fun b!887166 () Bool)

(assert (=> b!887166 (= e!494076 (= lt!401194 (dynLambda!1282 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))) key!673)))))

(declare-fun b!887167 () Bool)

(declare-fun get!13123 (ValueCell!8439 V!28753) V!28753)

(assert (=> b!887167 (= e!494079 (= call!39340 (get!13123 (select (arr!24826 (_values!5119 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401199)) (dynLambda!1282 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!887168 () Bool)

(declare-fun lt!401197 () Unit!30211)

(declare-fun lt!401195 () Unit!30211)

(assert (=> b!887168 (= lt!401197 lt!401195)))

(assert (=> b!887168 e!494078))

(declare-fun c!93555 () Bool)

(assert (=> b!887168 (= c!93555 (= key!673 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lemmaKeyInListMapThenSameValueInArray!1 (array!51630 array!51628 (_ BitVec 32) (_ BitVec 32) V!28753 V!28753 (_ BitVec 64) (_ BitVec 32) Int) Unit!30211)

(assert (=> b!887168 (= lt!401195 (lemmaKeyInListMapThenSameValueInArray!1 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) key!673 (index!37379 lt!401199) (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun lt!401190 () Unit!30211)

(declare-fun lt!401189 () Unit!30211)

(assert (=> b!887168 (= lt!401190 lt!401189)))

(assert (=> b!887168 (contains!4302 (getCurrentListMap!2601 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))) (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401199)))))

(declare-fun lemmaValidKeyInArrayIsInListMap!194 (array!51630 array!51628 (_ BitVec 32) (_ BitVec 32) V!28753 V!28753 (_ BitVec 32) Int) Unit!30211)

(assert (=> b!887168 (= lt!401189 (lemmaValidKeyInArrayIsInListMap!194 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) (index!37379 lt!401199) (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun lt!401192 () Unit!30211)

(declare-fun lt!401196 () Unit!30211)

(assert (=> b!887168 (= lt!401192 lt!401196)))

(assert (=> b!887168 (arrayContainsKey!0 (_keys!9806 (v!11419 (underlying!535 thiss!833))) key!673 #b00000000000000000000000000000000)))

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51630 (_ BitVec 64) (_ BitVec 32)) Unit!30211)

(assert (=> b!887168 (= lt!401196 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9806 (v!11419 (underlying!535 thiss!833))) key!673 (index!37379 lt!401199)))))

(assert (=> b!887168 (= e!494077 (get!13123 (select (arr!24826 (_values!5119 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401199)) (dynLambda!1282 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!887169 () Bool)

(declare-fun c!93553 () Bool)

(assert (=> b!887169 (= c!93553 (and (= key!673 #b1000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!887169 (= e!494083 e!494080)))

(declare-fun bm!39336 () Bool)

(declare-fun call!39337 () ListLongMap!10653)

(assert (=> bm!39336 (= call!39337 call!39338)))

(declare-fun b!887170 () Bool)

(assert (=> b!887170 (= e!494080 (dynLambda!1282 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))) key!673))))

(declare-fun b!887171 () Bool)

(assert (=> b!887171 (= e!494078 e!494082)))

(declare-fun res!602114 () Bool)

(assert (=> b!887171 (= res!602114 (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!887171 (=> (not res!602114) (not e!494082))))

(declare-fun b!887172 () Bool)

(declare-fun get!13124 (Option!437) V!28753)

(assert (=> b!887172 (= e!494076 (= lt!401194 (get!13124 (getValueByKey!431 (toList!5342 (map!12083 (v!11419 (underlying!535 thiss!833)))) key!673))))))

(declare-fun bm!39337 () Bool)

(declare-fun apply!393 (ListLongMap!10653 (_ BitVec 64)) V!28753)

(assert (=> bm!39337 (= call!39339 (apply!393 (ite c!93555 call!39338 call!39337) key!673))))

(assert (= (and d!109823 c!93559) b!887155))

(assert (= (and d!109823 (not c!93559)) b!887161))

(assert (= (and b!887155 c!93558) b!887162))

(assert (= (and b!887155 (not c!93558)) b!887169))

(assert (= (and b!887169 c!93553) b!887164))

(assert (= (and b!887169 (not c!93553)) b!887170))

(assert (= (and b!887161 (not res!602112)) b!887160))

(assert (= (and b!887161 c!93557) b!887168))

(assert (= (and b!887161 (not c!93557)) b!887165))

(assert (= (and b!887168 c!93555) b!887171))

(assert (= (and b!887168 (not c!93555)) b!887156))

(assert (= (and b!887171 res!602114) b!887163))

(assert (= (and b!887156 c!93554) b!887157))

(assert (= (and b!887156 (not c!93554)) b!887158))

(assert (= (and b!887157 res!602111) b!887159))

(assert (= (and b!887158 res!602113) b!887167))

(assert (= (or b!887159 b!887167) bm!39336))

(assert (= (or b!887159 b!887167) bm!39334))

(assert (= (or b!887163 bm!39336) bm!39335))

(assert (= (or b!887163 bm!39334) bm!39337))

(assert (= (and d!109823 c!93556) b!887172))

(assert (= (and d!109823 (not c!93556)) b!887166))

(declare-fun b_lambda!12849 () Bool)

(assert (=> (not b_lambda!12849) (not b!887165)))

(declare-fun t!25056 () Bool)

(declare-fun tb!5143 () Bool)

(assert (=> (and b!887077 (= (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))) (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))) t!25056) tb!5143))

(declare-fun result!9973 () Bool)

(assert (=> tb!5143 (= result!9973 tp_is_empty!17841)))

(assert (=> b!887165 t!25056))

(declare-fun b_and!25741 () Bool)

(assert (= b_and!25737 (and (=> t!25056 result!9973) b_and!25741)))

(declare-fun b_lambda!12851 () Bool)

(assert (=> (not b_lambda!12851) (not b!887167)))

(declare-fun t!25058 () Bool)

(declare-fun tb!5145 () Bool)

(assert (=> (and b!887077 (= (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))) (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))) t!25058) tb!5145))

(declare-fun result!9977 () Bool)

(assert (=> tb!5145 (= result!9977 tp_is_empty!17841)))

(assert (=> b!887167 t!25058))

(declare-fun b_and!25743 () Bool)

(assert (= b_and!25741 (and (=> t!25058 result!9977) b_and!25743)))

(declare-fun b_lambda!12853 () Bool)

(assert (=> (not b_lambda!12853) (not b!887170)))

(assert (=> b!887170 t!25056))

(declare-fun b_and!25745 () Bool)

(assert (= b_and!25743 (and (=> t!25056 result!9973) b_and!25745)))

(declare-fun b_lambda!12855 () Bool)

(assert (=> (not b_lambda!12855) (not b!887168)))

(assert (=> b!887168 t!25058))

(declare-fun b_and!25747 () Bool)

(assert (= b_and!25745 (and (=> t!25058 result!9977) b_and!25747)))

(declare-fun b_lambda!12857 () Bool)

(assert (=> (not b_lambda!12857) (not b!887166)))

(assert (=> b!887166 t!25056))

(declare-fun b_and!25749 () Bool)

(assert (= b_and!25747 (and (=> t!25056 result!9973) b_and!25749)))

(declare-fun m!826929 () Bool)

(assert (=> b!887170 m!826929))

(declare-fun m!826931 () Bool)

(assert (=> bm!39337 m!826931))

(assert (=> b!887165 m!826929))

(declare-fun m!826933 () Bool)

(assert (=> b!887158 m!826933))

(assert (=> b!887172 m!826921))

(declare-fun m!826935 () Bool)

(assert (=> b!887172 m!826935))

(assert (=> b!887172 m!826935))

(declare-fun m!826937 () Bool)

(assert (=> b!887172 m!826937))

(declare-fun m!826939 () Bool)

(assert (=> b!887167 m!826939))

(declare-fun m!826941 () Bool)

(assert (=> b!887167 m!826941))

(assert (=> b!887167 m!826939))

(assert (=> b!887167 m!826941))

(declare-fun m!826943 () Bool)

(assert (=> b!887167 m!826943))

(declare-fun m!826945 () Bool)

(assert (=> bm!39335 m!826945))

(assert (=> d!109823 m!826927))

(assert (=> d!109823 m!826923))

(declare-fun m!826947 () Bool)

(assert (=> b!887161 m!826947))

(declare-fun m!826949 () Bool)

(assert (=> b!887161 m!826949))

(declare-fun m!826951 () Bool)

(assert (=> b!887160 m!826951))

(assert (=> b!887168 m!826945))

(assert (=> b!887168 m!826933))

(assert (=> b!887168 m!826941))

(declare-fun m!826953 () Bool)

(assert (=> b!887168 m!826953))

(assert (=> b!887168 m!826945))

(declare-fun m!826955 () Bool)

(assert (=> b!887168 m!826955))

(declare-fun m!826957 () Bool)

(assert (=> b!887168 m!826957))

(declare-fun m!826959 () Bool)

(assert (=> b!887168 m!826959))

(declare-fun m!826961 () Bool)

(assert (=> b!887168 m!826961))

(assert (=> b!887168 m!826955))

(assert (=> b!887168 m!826939))

(assert (=> b!887168 m!826941))

(assert (=> b!887168 m!826943))

(assert (=> b!887168 m!826939))

(assert (=> b!887166 m!826929))

(assert (=> b!887079 d!109823))

(declare-fun b!887181 () Bool)

(declare-fun e!494090 () Bool)

(assert (=> b!887181 (= e!494090 tp_is_empty!17841)))

(declare-fun mapIsEmpty!28287 () Bool)

(declare-fun mapRes!28287 () Bool)

(assert (=> mapIsEmpty!28287 mapRes!28287))

(declare-fun b!887182 () Bool)

(declare-fun e!494089 () Bool)

(assert (=> b!887182 (= e!494089 tp_is_empty!17841)))

(declare-fun mapNonEmpty!28287 () Bool)

(declare-fun tp!54483 () Bool)

(assert (=> mapNonEmpty!28287 (= mapRes!28287 (and tp!54483 e!494090))))

(declare-fun mapRest!28287 () (Array (_ BitVec 32) ValueCell!8439))

(declare-fun mapValue!28287 () ValueCell!8439)

(declare-fun mapKey!28287 () (_ BitVec 32))

(assert (=> mapNonEmpty!28287 (= mapRest!28281 (store mapRest!28287 mapKey!28287 mapValue!28287))))

(declare-fun condMapEmpty!28287 () Bool)

(declare-fun mapDefault!28287 () ValueCell!8439)

(assert (=> mapNonEmpty!28281 (= condMapEmpty!28287 (= mapRest!28281 ((as const (Array (_ BitVec 32) ValueCell!8439)) mapDefault!28287)))))

(assert (=> mapNonEmpty!28281 (= tp!54474 (and e!494089 mapRes!28287))))

(assert (= (and mapNonEmpty!28281 condMapEmpty!28287) mapIsEmpty!28287))

(assert (= (and mapNonEmpty!28281 (not condMapEmpty!28287)) mapNonEmpty!28287))

(assert (= (and mapNonEmpty!28287 ((_ is ValueCellFull!8439) mapValue!28287)) b!887181))

(assert (= (and mapNonEmpty!28281 ((_ is ValueCellFull!8439) mapDefault!28287)) b!887182))

(declare-fun m!826963 () Bool)

(assert (=> mapNonEmpty!28287 m!826963))

(declare-fun b_lambda!12859 () Bool)

(assert (= b_lambda!12855 (or (and b!887077 b_free!15513) b_lambda!12859)))

(declare-fun b_lambda!12861 () Bool)

(assert (= b_lambda!12857 (or (and b!887077 b_free!15513) b_lambda!12861)))

(declare-fun b_lambda!12863 () Bool)

(assert (= b_lambda!12849 (or (and b!887077 b_free!15513) b_lambda!12863)))

(declare-fun b_lambda!12865 () Bool)

(assert (= b_lambda!12851 (or (and b!887077 b_free!15513) b_lambda!12865)))

(declare-fun b_lambda!12867 () Bool)

(assert (= b_lambda!12853 (or (and b!887077 b_free!15513) b_lambda!12867)))

(check-sat (not b_lambda!12867) (not d!109823) (not d!109819) (not b!887158) (not d!109813) (not mapNonEmpty!28287) (not b_next!15513) (not b_lambda!12861) (not b_lambda!12863) (not d!109821) (not b!887160) (not b_lambda!12865) b_and!25749 (not b_lambda!12859) (not d!109809) (not b!887172) tp_is_empty!17841 (not b!887117) (not bm!39335) (not b!887167) (not bm!39337) (not b!887168) (not b!887161))
(check-sat b_and!25749 (not b_next!15513))
(get-model)

(declare-fun d!109825 () Bool)

(assert (=> d!109825 (= (apply!393 (ite c!93555 call!39338 call!39337) key!673) (get!13124 (getValueByKey!431 (toList!5342 (ite c!93555 call!39338 call!39337)) key!673)))))

(declare-fun bs!24867 () Bool)

(assert (= bs!24867 d!109825))

(declare-fun m!826965 () Bool)

(assert (=> bs!24867 m!826965))

(assert (=> bs!24867 m!826965))

(declare-fun m!826967 () Bool)

(assert (=> bs!24867 m!826967))

(assert (=> bm!39337 d!109825))

(declare-fun d!109827 () Bool)

(declare-fun res!602121 () Bool)

(declare-fun e!494093 () Bool)

(assert (=> d!109827 (=> (not res!602121) (not e!494093))))

(declare-fun simpleValid!286 (LongMapFixedSize!3894) Bool)

(assert (=> d!109827 (= res!602121 (simpleValid!286 (v!11419 (underlying!535 thiss!833))))))

(assert (=> d!109827 (= (valid!1508 (v!11419 (underlying!535 thiss!833))) e!494093)))

(declare-fun b!887189 () Bool)

(declare-fun res!602122 () Bool)

(assert (=> b!887189 (=> (not res!602122) (not e!494093))))

(declare-fun arrayCountValidKeys!0 (array!51630 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!887189 (= res!602122 (= (arrayCountValidKeys!0 (_keys!9806 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (size!25268 (_keys!9806 (v!11419 (underlying!535 thiss!833))))) (_size!2002 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun b!887190 () Bool)

(declare-fun res!602123 () Bool)

(assert (=> b!887190 (=> (not res!602123) (not e!494093))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51630 (_ BitVec 32)) Bool)

(assert (=> b!887190 (= res!602123 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun b!887191 () Bool)

(declare-datatypes ((List!17764 0))(
  ( (Nil!17761) (Cons!17760 (h!18891 (_ BitVec 64)) (t!25059 List!17764)) )
))
(declare-fun arrayNoDuplicates!0 (array!51630 (_ BitVec 32) List!17764) Bool)

(assert (=> b!887191 (= e!494093 (arrayNoDuplicates!0 (_keys!9806 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 Nil!17761))))

(assert (= (and d!109827 res!602121) b!887189))

(assert (= (and b!887189 res!602122) b!887190))

(assert (= (and b!887190 res!602123) b!887191))

(declare-fun m!826969 () Bool)

(assert (=> d!109827 m!826969))

(declare-fun m!826971 () Bool)

(assert (=> b!887189 m!826971))

(declare-fun m!826973 () Bool)

(assert (=> b!887190 m!826973))

(declare-fun m!826975 () Bool)

(assert (=> b!887191 m!826975))

(assert (=> d!109819 d!109827))

(declare-fun d!109829 () Bool)

(assert (=> d!109829 (= (get!13124 (getValueByKey!431 (toList!5342 (map!12083 (v!11419 (underlying!535 thiss!833)))) key!673)) (v!11420 (getValueByKey!431 (toList!5342 (map!12083 (v!11419 (underlying!535 thiss!833)))) key!673)))))

(assert (=> b!887172 d!109829))

(declare-fun b!887193 () Bool)

(declare-fun e!494094 () Option!437)

(declare-fun e!494095 () Option!437)

(assert (=> b!887193 (= e!494094 e!494095)))

(declare-fun c!93561 () Bool)

(assert (=> b!887193 (= c!93561 (and ((_ is Cons!17758) (toList!5342 (map!12083 (v!11419 (underlying!535 thiss!833))))) (not (= (_1!5981 (h!18889 (toList!5342 (map!12083 (v!11419 (underlying!535 thiss!833)))))) key!673))))))

(declare-fun d!109831 () Bool)

(declare-fun c!93560 () Bool)

(assert (=> d!109831 (= c!93560 (and ((_ is Cons!17758) (toList!5342 (map!12083 (v!11419 (underlying!535 thiss!833))))) (= (_1!5981 (h!18889 (toList!5342 (map!12083 (v!11419 (underlying!535 thiss!833)))))) key!673)))))

(assert (=> d!109831 (= (getValueByKey!431 (toList!5342 (map!12083 (v!11419 (underlying!535 thiss!833)))) key!673) e!494094)))

(declare-fun b!887192 () Bool)

(assert (=> b!887192 (= e!494094 (Some!436 (_2!5981 (h!18889 (toList!5342 (map!12083 (v!11419 (underlying!535 thiss!833))))))))))

(declare-fun b!887195 () Bool)

(assert (=> b!887195 (= e!494095 None!435)))

(declare-fun b!887194 () Bool)

(assert (=> b!887194 (= e!494095 (getValueByKey!431 (t!25053 (toList!5342 (map!12083 (v!11419 (underlying!535 thiss!833))))) key!673))))

(assert (= (and d!109831 c!93560) b!887192))

(assert (= (and d!109831 (not c!93560)) b!887193))

(assert (= (and b!887193 c!93561) b!887194))

(assert (= (and b!887193 (not c!93561)) b!887195))

(declare-fun m!826977 () Bool)

(assert (=> b!887194 m!826977))

(assert (=> b!887172 d!109831))

(declare-fun d!109833 () Bool)

(assert (=> d!109833 (= (map!12083 (v!11419 (underlying!535 thiss!833))) (getCurrentListMap!2601 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun bs!24868 () Bool)

(assert (= bs!24868 d!109833))

(assert (=> bs!24868 m!826945))

(assert (=> b!887172 d!109833))

(declare-fun bm!39344 () Bool)

(declare-fun call!39349 () Bool)

(assert (=> bm!39344 (= call!39349 (arrayContainsKey!0 (_keys!9806 (v!11419 (underlying!535 thiss!833))) key!673 #b00000000000000000000000000000000))))

(declare-fun b!887216 () Bool)

(declare-fun e!494107 () Bool)

(declare-fun e!494109 () Bool)

(assert (=> b!887216 (= e!494107 e!494109)))

(declare-fun c!93574 () Bool)

(assert (=> b!887216 (= c!93574 (= key!673 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!401243 () SeekEntryResult!8752)

(declare-fun bm!39345 () Bool)

(declare-fun call!39347 () Bool)

(declare-fun c!93575 () Bool)

(declare-fun call!39348 () ListLongMap!10653)

(assert (=> bm!39345 (= call!39347 (contains!4302 call!39348 (ite c!93575 (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401243)) key!673)))))

(declare-fun b!887217 () Bool)

(declare-fun e!494106 () Bool)

(assert (=> b!887217 (= e!494106 (ite (= key!673 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!887219 () Bool)

(assert (=> b!887219 false))

(declare-fun lt!401230 () Unit!30211)

(declare-fun lt!401241 () Unit!30211)

(assert (=> b!887219 (= lt!401230 lt!401241)))

(declare-fun lt!401238 () SeekEntryResult!8752)

(declare-fun lt!401242 () (_ BitVec 32))

(assert (=> b!887219 (and ((_ is Found!8752) lt!401238) (= (index!37379 lt!401238) lt!401242))))

(assert (=> b!887219 (= lt!401238 (seekEntry!0 key!673 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 ((_ BitVec 64) (_ BitVec 32) array!51630 (_ BitVec 32)) Unit!30211)

(assert (=> b!887219 (= lt!401241 (lemmaSeekEntryOrOpenFindsThenSeekEntryFinds!0 key!673 lt!401242 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun lt!401233 () Unit!30211)

(declare-fun lt!401235 () Unit!30211)

(assert (=> b!887219 (= lt!401233 lt!401235)))

(assert (=> b!887219 (arrayForallSeekEntryOrOpenFound!0 lt!401242 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))))))

(declare-fun lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (array!51630 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) Unit!30211)

(assert (=> b!887219 (= lt!401235 (lemmaArrayForallSeekEntryOrOpenFoundFromSmallerThenFromBigger!0 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 lt!401242))))

(declare-fun arrayScanForKey!0 (array!51630 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!887219 (= lt!401242 (arrayScanForKey!0 (_keys!9806 (v!11419 (underlying!535 thiss!833))) key!673 #b00000000000000000000000000000000))))

(declare-fun lt!401234 () Unit!30211)

(declare-fun lt!401236 () Unit!30211)

(assert (=> b!887219 (= lt!401234 lt!401236)))

(assert (=> b!887219 e!494106))

(declare-fun c!93576 () Bool)

(assert (=> b!887219 (= c!93576 (and (not (= key!673 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!673 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lemmaKeyInListMapIsInArray!157 (array!51630 array!51628 (_ BitVec 32) (_ BitVec 32) V!28753 V!28753 (_ BitVec 64) Int) Unit!30211)

(assert (=> b!887219 (= lt!401236 (lemmaKeyInListMapIsInArray!157 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) key!673 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun e!494110 () Unit!30211)

(declare-fun Unit!30213 () Unit!30211)

(assert (=> b!887219 (= e!494110 Unit!30213)))

(declare-fun b!887220 () Bool)

(assert (=> b!887220 (= e!494106 call!39349)))

(declare-fun b!887221 () Bool)

(declare-fun e!494108 () Bool)

(assert (=> b!887221 (= e!494108 false)))

(declare-fun c!93572 () Bool)

(assert (=> b!887221 (= c!93572 call!39347)))

(declare-fun lt!401237 () Unit!30211)

(assert (=> b!887221 (= lt!401237 e!494110)))

(declare-fun bm!39346 () Bool)

(assert (=> bm!39346 (= call!39348 (getCurrentListMap!2601 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun b!887222 () Bool)

(declare-fun Unit!30214 () Unit!30211)

(assert (=> b!887222 (= e!494110 Unit!30214)))

(declare-fun b!887223 () Bool)

(assert (=> b!887223 (= e!494107 (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!887224 () Bool)

(assert (=> b!887224 (= c!93575 ((_ is Found!8752) lt!401243))))

(assert (=> b!887224 (= lt!401243 (seekEntry!0 key!673 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833)))))))

(assert (=> b!887224 (= e!494109 e!494108)))

(declare-fun b!887225 () Bool)

(assert (=> b!887225 (= e!494108 true)))

(declare-fun lt!401240 () Unit!30211)

(assert (=> b!887225 (= lt!401240 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9806 (v!11419 (underlying!535 thiss!833))) key!673 (index!37379 lt!401243)))))

(assert (=> b!887225 call!39349))

(declare-fun lt!401239 () Unit!30211)

(assert (=> b!887225 (= lt!401239 lt!401240)))

(declare-fun lt!401232 () Unit!30211)

(assert (=> b!887225 (= lt!401232 (lemmaValidKeyInArrayIsInListMap!194 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) (index!37379 lt!401243) (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))))))

(assert (=> b!887225 call!39347))

(declare-fun lt!401231 () Unit!30211)

(assert (=> b!887225 (= lt!401231 lt!401232)))

(declare-fun b!887218 () Bool)

(assert (=> b!887218 (= e!494109 (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!109835 () Bool)

(declare-fun lt!401244 () Bool)

(assert (=> d!109835 (= lt!401244 (contains!4302 (map!12083 (v!11419 (underlying!535 thiss!833))) key!673))))

(assert (=> d!109835 (= lt!401244 e!494107)))

(declare-fun c!93573 () Bool)

(assert (=> d!109835 (= c!93573 (= key!673 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!109835 (valid!1508 (v!11419 (underlying!535 thiss!833)))))

(assert (=> d!109835 (= (contains!4303 (v!11419 (underlying!535 thiss!833)) key!673) lt!401244)))

(assert (= (and d!109835 c!93573) b!887223))

(assert (= (and d!109835 (not c!93573)) b!887216))

(assert (= (and b!887216 c!93574) b!887218))

(assert (= (and b!887216 (not c!93574)) b!887224))

(assert (= (and b!887224 c!93575) b!887225))

(assert (= (and b!887224 (not c!93575)) b!887221))

(assert (= (and b!887221 c!93572) b!887219))

(assert (= (and b!887221 (not c!93572)) b!887222))

(assert (= (and b!887219 c!93576) b!887220))

(assert (= (and b!887219 (not c!93576)) b!887217))

(assert (= (or b!887225 b!887220) bm!39344))

(assert (= (or b!887225 b!887221) bm!39346))

(assert (= (or b!887225 b!887221) bm!39345))

(declare-fun m!826979 () Bool)

(assert (=> bm!39345 m!826979))

(declare-fun m!826981 () Bool)

(assert (=> bm!39345 m!826981))

(declare-fun m!826983 () Bool)

(assert (=> b!887219 m!826983))

(declare-fun m!826985 () Bool)

(assert (=> b!887219 m!826985))

(declare-fun m!826987 () Bool)

(assert (=> b!887219 m!826987))

(declare-fun m!826989 () Bool)

(assert (=> b!887219 m!826989))

(declare-fun m!826991 () Bool)

(assert (=> b!887219 m!826991))

(assert (=> b!887219 m!826947))

(assert (=> bm!39344 m!826933))

(assert (=> d!109835 m!826921))

(assert (=> d!109835 m!826921))

(declare-fun m!826993 () Bool)

(assert (=> d!109835 m!826993))

(assert (=> d!109835 m!826923))

(declare-fun m!826995 () Bool)

(assert (=> b!887225 m!826995))

(declare-fun m!826997 () Bool)

(assert (=> b!887225 m!826997))

(assert (=> bm!39346 m!826945))

(assert (=> b!887224 m!826947))

(assert (=> d!109823 d!109835))

(assert (=> d!109823 d!109827))

(declare-fun d!109837 () Bool)

(declare-fun e!494115 () Bool)

(assert (=> d!109837 e!494115))

(declare-fun res!602126 () Bool)

(assert (=> d!109837 (=> res!602126 e!494115)))

(declare-fun lt!401254 () Bool)

(assert (=> d!109837 (= res!602126 (not lt!401254))))

(declare-fun lt!401253 () Bool)

(assert (=> d!109837 (= lt!401254 lt!401253)))

(declare-fun lt!401255 () Unit!30211)

(declare-fun e!494116 () Unit!30211)

(assert (=> d!109837 (= lt!401255 e!494116)))

(declare-fun c!93579 () Bool)

(assert (=> d!109837 (= c!93579 lt!401253)))

(declare-fun containsKey!418 (List!17762 (_ BitVec 64)) Bool)

(assert (=> d!109837 (= lt!401253 (containsKey!418 (toList!5342 (map!12081 thiss!833)) key!673))))

(assert (=> d!109837 (= (contains!4302 (map!12081 thiss!833) key!673) lt!401254)))

(declare-fun b!887232 () Bool)

(declare-fun lt!401256 () Unit!30211)

(assert (=> b!887232 (= e!494116 lt!401256)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!313 (List!17762 (_ BitVec 64)) Unit!30211)

(assert (=> b!887232 (= lt!401256 (lemmaContainsKeyImpliesGetValueByKeyDefined!313 (toList!5342 (map!12081 thiss!833)) key!673))))

(assert (=> b!887232 (isDefined!314 (getValueByKey!431 (toList!5342 (map!12081 thiss!833)) key!673))))

(declare-fun b!887233 () Bool)

(declare-fun Unit!30215 () Unit!30211)

(assert (=> b!887233 (= e!494116 Unit!30215)))

(declare-fun b!887234 () Bool)

(assert (=> b!887234 (= e!494115 (isDefined!314 (getValueByKey!431 (toList!5342 (map!12081 thiss!833)) key!673)))))

(assert (= (and d!109837 c!93579) b!887232))

(assert (= (and d!109837 (not c!93579)) b!887233))

(assert (= (and d!109837 (not res!602126)) b!887234))

(declare-fun m!826999 () Bool)

(assert (=> d!109837 m!826999))

(declare-fun m!827001 () Bool)

(assert (=> b!887232 m!827001))

(assert (=> b!887232 m!826895))

(assert (=> b!887232 m!826895))

(assert (=> b!887232 m!826897))

(assert (=> b!887234 m!826895))

(assert (=> b!887234 m!826895))

(assert (=> b!887234 m!826897))

(assert (=> d!109821 d!109837))

(assert (=> d!109821 d!109813))

(assert (=> d!109821 d!109835))

(assert (=> d!109821 d!109819))

(declare-fun d!109839 () Bool)

(assert (=> d!109839 (= (inRange!0 (index!37379 lt!401198) (mask!25523 (v!11419 (underlying!535 thiss!833)))) (and (bvsge (index!37379 lt!401198) #b00000000000000000000000000000000) (bvslt (index!37379 lt!401198) (bvadd (mask!25523 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000001))))))

(assert (=> b!887160 d!109839))

(declare-fun b!887236 () Bool)

(declare-fun e!494117 () Option!437)

(declare-fun e!494118 () Option!437)

(assert (=> b!887236 (= e!494117 e!494118)))

(declare-fun c!93581 () Bool)

(assert (=> b!887236 (= c!93581 (and ((_ is Cons!17758) (t!25053 (toList!5342 (map!12081 thiss!833)))) (not (= (_1!5981 (h!18889 (t!25053 (toList!5342 (map!12081 thiss!833))))) key!673))))))

(declare-fun d!109841 () Bool)

(declare-fun c!93580 () Bool)

(assert (=> d!109841 (= c!93580 (and ((_ is Cons!17758) (t!25053 (toList!5342 (map!12081 thiss!833)))) (= (_1!5981 (h!18889 (t!25053 (toList!5342 (map!12081 thiss!833))))) key!673)))))

(assert (=> d!109841 (= (getValueByKey!431 (t!25053 (toList!5342 (map!12081 thiss!833))) key!673) e!494117)))

(declare-fun b!887235 () Bool)

(assert (=> b!887235 (= e!494117 (Some!436 (_2!5981 (h!18889 (t!25053 (toList!5342 (map!12081 thiss!833)))))))))

(declare-fun b!887238 () Bool)

(assert (=> b!887238 (= e!494118 None!435)))

(declare-fun b!887237 () Bool)

(assert (=> b!887237 (= e!494118 (getValueByKey!431 (t!25053 (t!25053 (toList!5342 (map!12081 thiss!833)))) key!673))))

(assert (= (and d!109841 c!93580) b!887235))

(assert (= (and d!109841 (not c!93580)) b!887236))

(assert (= (and b!887236 c!93581) b!887237))

(assert (= (and b!887236 (not c!93581)) b!887238))

(declare-fun m!827003 () Bool)

(assert (=> b!887237 m!827003))

(assert (=> b!887117 d!109841))

(declare-fun b!887251 () Bool)

(declare-fun c!93590 () Bool)

(declare-fun lt!401266 () (_ BitVec 64))

(assert (=> b!887251 (= c!93590 (= lt!401266 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!494125 () SeekEntryResult!8752)

(declare-fun e!494126 () SeekEntryResult!8752)

(assert (=> b!887251 (= e!494125 e!494126)))

(declare-fun b!887252 () Bool)

(declare-fun e!494127 () SeekEntryResult!8752)

(assert (=> b!887252 (= e!494127 Undefined!8752)))

(declare-fun b!887253 () Bool)

(declare-fun lt!401267 () SeekEntryResult!8752)

(assert (=> b!887253 (= e!494126 (MissingZero!8752 (index!37380 lt!401267)))))

(declare-fun b!887254 () Bool)

(declare-fun lt!401265 () SeekEntryResult!8752)

(assert (=> b!887254 (= e!494126 (ite ((_ is MissingVacant!8752) lt!401265) (MissingZero!8752 (index!37381 lt!401265)) lt!401265))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!51630 (_ BitVec 32)) SeekEntryResult!8752)

(assert (=> b!887254 (= lt!401265 (seekKeyOrZeroReturnVacant!0 (x!75225 lt!401267) (index!37380 lt!401267) (index!37380 lt!401267) key!673 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun d!109843 () Bool)

(declare-fun lt!401268 () SeekEntryResult!8752)

(assert (=> d!109843 (and (or ((_ is MissingVacant!8752) lt!401268) (not ((_ is Found!8752) lt!401268)) (and (bvsge (index!37379 lt!401268) #b00000000000000000000000000000000) (bvslt (index!37379 lt!401268) (size!25268 (_keys!9806 (v!11419 (underlying!535 thiss!833))))))) (not ((_ is MissingVacant!8752) lt!401268)) (or (not ((_ is Found!8752) lt!401268)) (= (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401268)) key!673)))))

(assert (=> d!109843 (= lt!401268 e!494127)))

(declare-fun c!93588 () Bool)

(assert (=> d!109843 (= c!93588 (and ((_ is Intermediate!8752) lt!401267) (undefined!9564 lt!401267)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!51630 (_ BitVec 32)) SeekEntryResult!8752)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!109843 (= lt!401267 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!673 (mask!25523 (v!11419 (underlying!535 thiss!833)))) key!673 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!109843 (validMask!0 (mask!25523 (v!11419 (underlying!535 thiss!833))))))

(assert (=> d!109843 (= (seekEntry!0 key!673 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833)))) lt!401268)))

(declare-fun b!887255 () Bool)

(assert (=> b!887255 (= e!494127 e!494125)))

(assert (=> b!887255 (= lt!401266 (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) (index!37380 lt!401267)))))

(declare-fun c!93589 () Bool)

(assert (=> b!887255 (= c!93589 (= lt!401266 key!673))))

(declare-fun b!887256 () Bool)

(assert (=> b!887256 (= e!494125 (Found!8752 (index!37380 lt!401267)))))

(assert (= (and d!109843 c!93588) b!887252))

(assert (= (and d!109843 (not c!93588)) b!887255))

(assert (= (and b!887255 c!93589) b!887256))

(assert (= (and b!887255 (not c!93589)) b!887251))

(assert (= (and b!887251 c!93590) b!887253))

(assert (= (and b!887251 (not c!93590)) b!887254))

(declare-fun m!827005 () Bool)

(assert (=> b!887254 m!827005))

(declare-fun m!827007 () Bool)

(assert (=> d!109843 m!827007))

(declare-fun m!827009 () Bool)

(assert (=> d!109843 m!827009))

(assert (=> d!109843 m!827009))

(declare-fun m!827011 () Bool)

(assert (=> d!109843 m!827011))

(declare-fun m!827013 () Bool)

(assert (=> d!109843 m!827013))

(declare-fun m!827015 () Bool)

(assert (=> b!887255 m!827015))

(assert (=> b!887161 d!109843))

(declare-fun d!109845 () Bool)

(declare-fun e!494130 () Bool)

(assert (=> d!109845 e!494130))

(declare-fun res!602129 () Bool)

(assert (=> d!109845 (=> res!602129 e!494130)))

(declare-fun lt!401274 () SeekEntryResult!8752)

(assert (=> d!109845 (= res!602129 (not ((_ is Found!8752) lt!401274)))))

(assert (=> d!109845 (= lt!401274 (seekEntry!0 key!673 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun lt!401273 () Unit!30211)

(declare-fun choose!1461 (array!51630 array!51628 (_ BitVec 32) (_ BitVec 32) V!28753 V!28753 (_ BitVec 64)) Unit!30211)

(assert (=> d!109845 (= lt!401273 (choose!1461 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) key!673))))

(assert (=> d!109845 (validMask!0 (mask!25523 (v!11419 (underlying!535 thiss!833))))))

(assert (=> d!109845 (= (lemmaSeekEntryGivesInRangeIndex!1 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) key!673) lt!401273)))

(declare-fun b!887259 () Bool)

(assert (=> b!887259 (= e!494130 (inRange!0 (index!37379 lt!401274) (mask!25523 (v!11419 (underlying!535 thiss!833)))))))

(assert (= (and d!109845 (not res!602129)) b!887259))

(assert (=> d!109845 m!826947))

(declare-fun m!827017 () Bool)

(assert (=> d!109845 m!827017))

(assert (=> d!109845 m!827013))

(declare-fun m!827019 () Bool)

(assert (=> b!887259 m!827019))

(assert (=> b!887161 d!109845))

(declare-fun b!887302 () Bool)

(declare-fun e!494166 () ListLongMap!10653)

(declare-fun e!494157 () ListLongMap!10653)

(assert (=> b!887302 (= e!494166 e!494157)))

(declare-fun c!93608 () Bool)

(assert (=> b!887302 (= c!93608 (and (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!887303 () Bool)

(declare-fun e!494159 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!887303 (= e!494159 (validKeyInArray!0 (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) #b00000000000000000000000000000000)))))

(declare-fun bm!39361 () Bool)

(declare-fun call!39368 () ListLongMap!10653)

(declare-fun call!39370 () ListLongMap!10653)

(assert (=> bm!39361 (= call!39368 call!39370)))

(declare-fun b!887304 () Bool)

(declare-fun e!494163 () Bool)

(declare-fun e!494169 () Bool)

(assert (=> b!887304 (= e!494163 e!494169)))

(declare-fun res!602155 () Bool)

(declare-fun call!39366 () Bool)

(assert (=> b!887304 (= res!602155 call!39366)))

(assert (=> b!887304 (=> (not res!602155) (not e!494169))))

(declare-fun b!887305 () Bool)

(declare-fun e!494168 () Bool)

(declare-fun e!494160 () Bool)

(assert (=> b!887305 (= e!494168 e!494160)))

(declare-fun res!602156 () Bool)

(assert (=> b!887305 (=> (not res!602156) (not e!494160))))

(declare-fun lt!401338 () ListLongMap!10653)

(assert (=> b!887305 (= res!602156 (contains!4302 lt!401338 (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) #b00000000000000000000000000000000)))))

(assert (=> b!887305 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25268 (_keys!9806 (v!11419 (underlying!535 thiss!833))))))))

(declare-fun b!887306 () Bool)

(declare-fun e!494167 () Bool)

(declare-fun e!494164 () Bool)

(assert (=> b!887306 (= e!494167 e!494164)))

(declare-fun res!602151 () Bool)

(declare-fun call!39365 () Bool)

(assert (=> b!887306 (= res!602151 call!39365)))

(assert (=> b!887306 (=> (not res!602151) (not e!494164))))

(declare-fun b!887307 () Bool)

(declare-fun e!494158 () Bool)

(assert (=> b!887307 (= e!494158 (validKeyInArray!0 (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) #b00000000000000000000000000000000)))))

(declare-fun b!887308 () Bool)

(assert (=> b!887308 (= e!494167 (not call!39365))))

(declare-fun b!887309 () Bool)

(declare-fun c!93604 () Bool)

(assert (=> b!887309 (= c!93604 (and (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!494162 () ListLongMap!10653)

(assert (=> b!887309 (= e!494157 e!494162)))

(declare-fun b!887310 () Bool)

(declare-fun call!39364 () ListLongMap!10653)

(assert (=> b!887310 (= e!494162 call!39364)))

(declare-fun bm!39362 () Bool)

(assert (=> bm!39362 (= call!39365 (contains!4302 lt!401338 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!887311 () Bool)

(assert (=> b!887311 (= e!494163 (not call!39366))))

(declare-fun bm!39363 () Bool)

(declare-fun call!39369 () ListLongMap!10653)

(declare-fun c!93603 () Bool)

(declare-fun call!39367 () ListLongMap!10653)

(declare-fun +!2539 (ListLongMap!10653 tuple2!11942) ListLongMap!10653)

(assert (=> bm!39363 (= call!39367 (+!2539 (ite c!93603 call!39370 (ite c!93608 call!39368 call!39369)) (ite (or c!93603 c!93608) (tuple2!11943 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4932 (v!11419 (underlying!535 thiss!833)))) (tuple2!11943 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4932 (v!11419 (underlying!535 thiss!833)))))))))

(declare-fun bm!39364 () Bool)

(assert (=> bm!39364 (= call!39366 (contains!4302 lt!401338 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!887312 () Bool)

(assert (=> b!887312 (= e!494157 call!39364)))

(declare-fun b!887313 () Bool)

(assert (=> b!887313 (= e!494162 call!39369)))

(declare-fun b!887314 () Bool)

(declare-fun e!494165 () Unit!30211)

(declare-fun Unit!30216 () Unit!30211)

(assert (=> b!887314 (= e!494165 Unit!30216)))

(declare-fun bm!39365 () Bool)

(assert (=> bm!39365 (= call!39369 call!39368)))

(declare-fun b!887315 () Bool)

(declare-fun e!494161 () Bool)

(assert (=> b!887315 (= e!494161 e!494163)))

(declare-fun c!93607 () Bool)

(assert (=> b!887315 (= c!93607 (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!887316 () Bool)

(assert (=> b!887316 (= e!494164 (= (apply!393 lt!401338 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4932 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun bm!39366 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!3287 (array!51630 array!51628 (_ BitVec 32) (_ BitVec 32) V!28753 V!28753 (_ BitVec 32) Int) ListLongMap!10653)

(assert (=> bm!39366 (= call!39370 (getCurrentListMapNoExtraKeys!3287 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun b!887317 () Bool)

(declare-fun lt!401325 () Unit!30211)

(assert (=> b!887317 (= e!494165 lt!401325)))

(declare-fun lt!401340 () ListLongMap!10653)

(assert (=> b!887317 (= lt!401340 (getCurrentListMapNoExtraKeys!3287 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun lt!401327 () (_ BitVec 64))

(assert (=> b!887317 (= lt!401327 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!401323 () (_ BitVec 64))

(assert (=> b!887317 (= lt!401323 (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) #b00000000000000000000000000000000))))

(declare-fun lt!401330 () Unit!30211)

(declare-fun addStillContains!325 (ListLongMap!10653 (_ BitVec 64) V!28753 (_ BitVec 64)) Unit!30211)

(assert (=> b!887317 (= lt!401330 (addStillContains!325 lt!401340 lt!401327 (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) lt!401323))))

(assert (=> b!887317 (contains!4302 (+!2539 lt!401340 (tuple2!11943 lt!401327 (zeroValue!4932 (v!11419 (underlying!535 thiss!833))))) lt!401323)))

(declare-fun lt!401334 () Unit!30211)

(assert (=> b!887317 (= lt!401334 lt!401330)))

(declare-fun lt!401331 () ListLongMap!10653)

(assert (=> b!887317 (= lt!401331 (getCurrentListMapNoExtraKeys!3287 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun lt!401324 () (_ BitVec 64))

(assert (=> b!887317 (= lt!401324 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!401336 () (_ BitVec 64))

(assert (=> b!887317 (= lt!401336 (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) #b00000000000000000000000000000000))))

(declare-fun lt!401335 () Unit!30211)

(declare-fun addApplyDifferent!325 (ListLongMap!10653 (_ BitVec 64) V!28753 (_ BitVec 64)) Unit!30211)

(assert (=> b!887317 (= lt!401335 (addApplyDifferent!325 lt!401331 lt!401324 (minValue!4932 (v!11419 (underlying!535 thiss!833))) lt!401336))))

(assert (=> b!887317 (= (apply!393 (+!2539 lt!401331 (tuple2!11943 lt!401324 (minValue!4932 (v!11419 (underlying!535 thiss!833))))) lt!401336) (apply!393 lt!401331 lt!401336))))

(declare-fun lt!401321 () Unit!30211)

(assert (=> b!887317 (= lt!401321 lt!401335)))

(declare-fun lt!401337 () ListLongMap!10653)

(assert (=> b!887317 (= lt!401337 (getCurrentListMapNoExtraKeys!3287 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun lt!401326 () (_ BitVec 64))

(assert (=> b!887317 (= lt!401326 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!401322 () (_ BitVec 64))

(assert (=> b!887317 (= lt!401322 (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) #b00000000000000000000000000000000))))

(declare-fun lt!401319 () Unit!30211)

(assert (=> b!887317 (= lt!401319 (addApplyDifferent!325 lt!401337 lt!401326 (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) lt!401322))))

(assert (=> b!887317 (= (apply!393 (+!2539 lt!401337 (tuple2!11943 lt!401326 (zeroValue!4932 (v!11419 (underlying!535 thiss!833))))) lt!401322) (apply!393 lt!401337 lt!401322))))

(declare-fun lt!401332 () Unit!30211)

(assert (=> b!887317 (= lt!401332 lt!401319)))

(declare-fun lt!401320 () ListLongMap!10653)

(assert (=> b!887317 (= lt!401320 (getCurrentListMapNoExtraKeys!3287 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun lt!401328 () (_ BitVec 64))

(assert (=> b!887317 (= lt!401328 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!401329 () (_ BitVec 64))

(assert (=> b!887317 (= lt!401329 (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) #b00000000000000000000000000000000))))

(assert (=> b!887317 (= lt!401325 (addApplyDifferent!325 lt!401320 lt!401328 (minValue!4932 (v!11419 (underlying!535 thiss!833))) lt!401329))))

(assert (=> b!887317 (= (apply!393 (+!2539 lt!401320 (tuple2!11943 lt!401328 (minValue!4932 (v!11419 (underlying!535 thiss!833))))) lt!401329) (apply!393 lt!401320 lt!401329))))

(declare-fun b!887318 () Bool)

(declare-fun res!602153 () Bool)

(assert (=> b!887318 (=> (not res!602153) (not e!494161))))

(assert (=> b!887318 (= res!602153 e!494167)))

(declare-fun c!93605 () Bool)

(assert (=> b!887318 (= c!93605 (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!887319 () Bool)

(assert (=> b!887319 (= e!494169 (= (apply!393 lt!401338 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4932 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun bm!39367 () Bool)

(assert (=> bm!39367 (= call!39364 call!39367)))

(declare-fun b!887320 () Bool)

(assert (=> b!887320 (= e!494166 (+!2539 call!39367 (tuple2!11943 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4932 (v!11419 (underlying!535 thiss!833))))))))

(declare-fun d!109847 () Bool)

(assert (=> d!109847 e!494161))

(declare-fun res!602150 () Bool)

(assert (=> d!109847 (=> (not res!602150) (not e!494161))))

(assert (=> d!109847 (= res!602150 (or (bvsge #b00000000000000000000000000000000 (size!25268 (_keys!9806 (v!11419 (underlying!535 thiss!833))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25268 (_keys!9806 (v!11419 (underlying!535 thiss!833))))))))))

(declare-fun lt!401339 () ListLongMap!10653)

(assert (=> d!109847 (= lt!401338 lt!401339)))

(declare-fun lt!401333 () Unit!30211)

(assert (=> d!109847 (= lt!401333 e!494165)))

(declare-fun c!93606 () Bool)

(assert (=> d!109847 (= c!93606 e!494158)))

(declare-fun res!602148 () Bool)

(assert (=> d!109847 (=> (not res!602148) (not e!494158))))

(assert (=> d!109847 (= res!602148 (bvslt #b00000000000000000000000000000000 (size!25268 (_keys!9806 (v!11419 (underlying!535 thiss!833))))))))

(assert (=> d!109847 (= lt!401339 e!494166)))

(assert (=> d!109847 (= c!93603 (and (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!109847 (validMask!0 (mask!25523 (v!11419 (underlying!535 thiss!833))))))

(assert (=> d!109847 (= (getCurrentListMap!2601 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))) lt!401338)))

(declare-fun b!887321 () Bool)

(assert (=> b!887321 (= e!494160 (= (apply!393 lt!401338 (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) #b00000000000000000000000000000000)) (get!13123 (select (arr!24826 (_values!5119 (v!11419 (underlying!535 thiss!833)))) #b00000000000000000000000000000000) (dynLambda!1282 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!887321 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25267 (_values!5119 (v!11419 (underlying!535 thiss!833))))))))

(assert (=> b!887321 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!25268 (_keys!9806 (v!11419 (underlying!535 thiss!833))))))))

(declare-fun b!887322 () Bool)

(declare-fun res!602152 () Bool)

(assert (=> b!887322 (=> (not res!602152) (not e!494161))))

(assert (=> b!887322 (= res!602152 e!494168)))

(declare-fun res!602154 () Bool)

(assert (=> b!887322 (=> res!602154 e!494168)))

(assert (=> b!887322 (= res!602154 (not e!494159))))

(declare-fun res!602149 () Bool)

(assert (=> b!887322 (=> (not res!602149) (not e!494159))))

(assert (=> b!887322 (= res!602149 (bvslt #b00000000000000000000000000000000 (size!25268 (_keys!9806 (v!11419 (underlying!535 thiss!833))))))))

(assert (= (and d!109847 c!93603) b!887320))

(assert (= (and d!109847 (not c!93603)) b!887302))

(assert (= (and b!887302 c!93608) b!887312))

(assert (= (and b!887302 (not c!93608)) b!887309))

(assert (= (and b!887309 c!93604) b!887310))

(assert (= (and b!887309 (not c!93604)) b!887313))

(assert (= (or b!887310 b!887313) bm!39365))

(assert (= (or b!887312 bm!39365) bm!39361))

(assert (= (or b!887312 b!887310) bm!39367))

(assert (= (or b!887320 bm!39361) bm!39366))

(assert (= (or b!887320 bm!39367) bm!39363))

(assert (= (and d!109847 res!602148) b!887307))

(assert (= (and d!109847 c!93606) b!887317))

(assert (= (and d!109847 (not c!93606)) b!887314))

(assert (= (and d!109847 res!602150) b!887322))

(assert (= (and b!887322 res!602149) b!887303))

(assert (= (and b!887322 (not res!602154)) b!887305))

(assert (= (and b!887305 res!602156) b!887321))

(assert (= (and b!887322 res!602152) b!887318))

(assert (= (and b!887318 c!93605) b!887306))

(assert (= (and b!887318 (not c!93605)) b!887308))

(assert (= (and b!887306 res!602151) b!887316))

(assert (= (or b!887306 b!887308) bm!39362))

(assert (= (and b!887318 res!602153) b!887315))

(assert (= (and b!887315 c!93607) b!887304))

(assert (= (and b!887315 (not c!93607)) b!887311))

(assert (= (and b!887304 res!602155) b!887319))

(assert (= (or b!887304 b!887311) bm!39364))

(declare-fun b_lambda!12869 () Bool)

(assert (=> (not b_lambda!12869) (not b!887321)))

(assert (=> b!887321 t!25058))

(declare-fun b_and!25751 () Bool)

(assert (= b_and!25749 (and (=> t!25058 result!9977) b_and!25751)))

(declare-fun m!827021 () Bool)

(assert (=> b!887320 m!827021))

(declare-fun m!827023 () Bool)

(assert (=> b!887321 m!827023))

(assert (=> b!887321 m!826941))

(declare-fun m!827025 () Bool)

(assert (=> b!887321 m!827025))

(assert (=> b!887321 m!826941))

(declare-fun m!827027 () Bool)

(assert (=> b!887321 m!827027))

(assert (=> b!887321 m!827025))

(assert (=> b!887321 m!827023))

(declare-fun m!827029 () Bool)

(assert (=> b!887321 m!827029))

(declare-fun m!827031 () Bool)

(assert (=> b!887316 m!827031))

(assert (=> b!887305 m!827023))

(assert (=> b!887305 m!827023))

(declare-fun m!827033 () Bool)

(assert (=> b!887305 m!827033))

(declare-fun m!827035 () Bool)

(assert (=> b!887319 m!827035))

(assert (=> b!887303 m!827023))

(assert (=> b!887303 m!827023))

(declare-fun m!827037 () Bool)

(assert (=> b!887303 m!827037))

(assert (=> b!887307 m!827023))

(assert (=> b!887307 m!827023))

(assert (=> b!887307 m!827037))

(declare-fun m!827039 () Bool)

(assert (=> bm!39366 m!827039))

(assert (=> b!887317 m!827023))

(declare-fun m!827041 () Bool)

(assert (=> b!887317 m!827041))

(declare-fun m!827043 () Bool)

(assert (=> b!887317 m!827043))

(declare-fun m!827045 () Bool)

(assert (=> b!887317 m!827045))

(declare-fun m!827047 () Bool)

(assert (=> b!887317 m!827047))

(declare-fun m!827049 () Bool)

(assert (=> b!887317 m!827049))

(declare-fun m!827051 () Bool)

(assert (=> b!887317 m!827051))

(assert (=> b!887317 m!827039))

(assert (=> b!887317 m!827043))

(declare-fun m!827053 () Bool)

(assert (=> b!887317 m!827053))

(declare-fun m!827055 () Bool)

(assert (=> b!887317 m!827055))

(declare-fun m!827057 () Bool)

(assert (=> b!887317 m!827057))

(declare-fun m!827059 () Bool)

(assert (=> b!887317 m!827059))

(declare-fun m!827061 () Bool)

(assert (=> b!887317 m!827061))

(declare-fun m!827063 () Bool)

(assert (=> b!887317 m!827063))

(declare-fun m!827065 () Bool)

(assert (=> b!887317 m!827065))

(declare-fun m!827067 () Bool)

(assert (=> b!887317 m!827067))

(assert (=> b!887317 m!827063))

(declare-fun m!827069 () Bool)

(assert (=> b!887317 m!827069))

(assert (=> b!887317 m!827055))

(assert (=> b!887317 m!827049))

(declare-fun m!827071 () Bool)

(assert (=> bm!39362 m!827071))

(declare-fun m!827073 () Bool)

(assert (=> bm!39364 m!827073))

(assert (=> d!109847 m!827013))

(declare-fun m!827075 () Bool)

(assert (=> bm!39363 m!827075))

(assert (=> bm!39335 d!109847))

(declare-fun d!109849 () Bool)

(declare-fun e!494172 () Bool)

(assert (=> d!109849 e!494172))

(declare-fun res!602159 () Bool)

(assert (=> d!109849 (=> (not res!602159) (not e!494172))))

(assert (=> d!109849 (= res!602159 (and (bvsge (index!37379 lt!401199) #b00000000000000000000000000000000) (bvslt (index!37379 lt!401199) (size!25268 (_keys!9806 (v!11419 (underlying!535 thiss!833)))))))))

(declare-fun lt!401343 () Unit!30211)

(declare-fun choose!1462 (array!51630 array!51628 (_ BitVec 32) (_ BitVec 32) V!28753 V!28753 (_ BitVec 32) Int) Unit!30211)

(assert (=> d!109849 (= lt!401343 (choose!1462 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) (index!37379 lt!401199) (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))))))

(assert (=> d!109849 (validMask!0 (mask!25523 (v!11419 (underlying!535 thiss!833))))))

(assert (=> d!109849 (= (lemmaValidKeyInArrayIsInListMap!194 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) (index!37379 lt!401199) (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))) lt!401343)))

(declare-fun b!887325 () Bool)

(assert (=> b!887325 (= e!494172 (contains!4302 (getCurrentListMap!2601 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))) (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401199))))))

(assert (= (and d!109849 res!602159) b!887325))

(declare-fun m!827077 () Bool)

(assert (=> d!109849 m!827077))

(assert (=> d!109849 m!827013))

(assert (=> b!887325 m!826945))

(assert (=> b!887325 m!826955))

(assert (=> b!887325 m!826945))

(assert (=> b!887325 m!826955))

(assert (=> b!887325 m!826957))

(assert (=> b!887168 d!109849))

(assert (=> b!887168 d!109847))

(declare-fun d!109851 () Bool)

(declare-fun res!602164 () Bool)

(declare-fun e!494177 () Bool)

(assert (=> d!109851 (=> res!602164 e!494177)))

(assert (=> d!109851 (= res!602164 (= (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) #b00000000000000000000000000000000) key!673))))

(assert (=> d!109851 (= (arrayContainsKey!0 (_keys!9806 (v!11419 (underlying!535 thiss!833))) key!673 #b00000000000000000000000000000000) e!494177)))

(declare-fun b!887330 () Bool)

(declare-fun e!494178 () Bool)

(assert (=> b!887330 (= e!494177 e!494178)))

(declare-fun res!602165 () Bool)

(assert (=> b!887330 (=> (not res!602165) (not e!494178))))

(assert (=> b!887330 (= res!602165 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!25268 (_keys!9806 (v!11419 (underlying!535 thiss!833))))))))

(declare-fun b!887331 () Bool)

(assert (=> b!887331 (= e!494178 (arrayContainsKey!0 (_keys!9806 (v!11419 (underlying!535 thiss!833))) key!673 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!109851 (not res!602164)) b!887330))

(assert (= (and b!887330 res!602165) b!887331))

(assert (=> d!109851 m!827023))

(declare-fun m!827079 () Bool)

(assert (=> b!887331 m!827079))

(assert (=> b!887168 d!109851))

(declare-fun d!109853 () Bool)

(declare-fun c!93611 () Bool)

(assert (=> d!109853 (= c!93611 ((_ is ValueCellFull!8439) (select (arr!24826 (_values!5119 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401199))))))

(declare-fun e!494181 () V!28753)

(assert (=> d!109853 (= (get!13123 (select (arr!24826 (_values!5119 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401199)) (dynLambda!1282 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!494181)))

(declare-fun b!887336 () Bool)

(declare-fun get!13125 (ValueCell!8439 V!28753) V!28753)

(assert (=> b!887336 (= e!494181 (get!13125 (select (arr!24826 (_values!5119 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401199)) (dynLambda!1282 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!887337 () Bool)

(declare-fun get!13126 (ValueCell!8439 V!28753) V!28753)

(assert (=> b!887337 (= e!494181 (get!13126 (select (arr!24826 (_values!5119 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401199)) (dynLambda!1282 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!109853 c!93611) b!887336))

(assert (= (and d!109853 (not c!93611)) b!887337))

(assert (=> b!887336 m!826939))

(assert (=> b!887336 m!826941))

(declare-fun m!827081 () Bool)

(assert (=> b!887336 m!827081))

(assert (=> b!887337 m!826939))

(assert (=> b!887337 m!826941))

(declare-fun m!827083 () Bool)

(assert (=> b!887337 m!827083))

(assert (=> b!887168 d!109853))

(declare-fun d!109855 () Bool)

(assert (=> d!109855 (arrayContainsKey!0 (_keys!9806 (v!11419 (underlying!535 thiss!833))) key!673 #b00000000000000000000000000000000)))

(declare-fun lt!401346 () Unit!30211)

(declare-fun choose!13 (array!51630 (_ BitVec 64) (_ BitVec 32)) Unit!30211)

(assert (=> d!109855 (= lt!401346 (choose!13 (_keys!9806 (v!11419 (underlying!535 thiss!833))) key!673 (index!37379 lt!401199)))))

(assert (=> d!109855 (bvsge (index!37379 lt!401199) #b00000000000000000000000000000000)))

(assert (=> d!109855 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9806 (v!11419 (underlying!535 thiss!833))) key!673 (index!37379 lt!401199)) lt!401346)))

(declare-fun bs!24869 () Bool)

(assert (= bs!24869 d!109855))

(assert (=> bs!24869 m!826933))

(declare-fun m!827085 () Bool)

(assert (=> bs!24869 m!827085))

(assert (=> b!887168 d!109855))

(declare-fun d!109857 () Bool)

(declare-fun e!494182 () Bool)

(assert (=> d!109857 e!494182))

(declare-fun res!602166 () Bool)

(assert (=> d!109857 (=> res!602166 e!494182)))

(declare-fun lt!401348 () Bool)

(assert (=> d!109857 (= res!602166 (not lt!401348))))

(declare-fun lt!401347 () Bool)

(assert (=> d!109857 (= lt!401348 lt!401347)))

(declare-fun lt!401349 () Unit!30211)

(declare-fun e!494183 () Unit!30211)

(assert (=> d!109857 (= lt!401349 e!494183)))

(declare-fun c!93612 () Bool)

(assert (=> d!109857 (= c!93612 lt!401347)))

(assert (=> d!109857 (= lt!401347 (containsKey!418 (toList!5342 (getCurrentListMap!2601 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))))) (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401199))))))

(assert (=> d!109857 (= (contains!4302 (getCurrentListMap!2601 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))) (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401199))) lt!401348)))

(declare-fun b!887338 () Bool)

(declare-fun lt!401350 () Unit!30211)

(assert (=> b!887338 (= e!494183 lt!401350)))

(assert (=> b!887338 (= lt!401350 (lemmaContainsKeyImpliesGetValueByKeyDefined!313 (toList!5342 (getCurrentListMap!2601 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))))) (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401199))))))

(assert (=> b!887338 (isDefined!314 (getValueByKey!431 (toList!5342 (getCurrentListMap!2601 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))))) (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401199))))))

(declare-fun b!887339 () Bool)

(declare-fun Unit!30217 () Unit!30211)

(assert (=> b!887339 (= e!494183 Unit!30217)))

(declare-fun b!887340 () Bool)

(assert (=> b!887340 (= e!494182 (isDefined!314 (getValueByKey!431 (toList!5342 (getCurrentListMap!2601 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))))) (select (arr!24827 (_keys!9806 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401199)))))))

(assert (= (and d!109857 c!93612) b!887338))

(assert (= (and d!109857 (not c!93612)) b!887339))

(assert (= (and d!109857 (not res!602166)) b!887340))

(assert (=> d!109857 m!826955))

(declare-fun m!827087 () Bool)

(assert (=> d!109857 m!827087))

(assert (=> b!887338 m!826955))

(declare-fun m!827089 () Bool)

(assert (=> b!887338 m!827089))

(assert (=> b!887338 m!826955))

(declare-fun m!827091 () Bool)

(assert (=> b!887338 m!827091))

(assert (=> b!887338 m!827091))

(declare-fun m!827093 () Bool)

(assert (=> b!887338 m!827093))

(assert (=> b!887340 m!826955))

(assert (=> b!887340 m!827091))

(assert (=> b!887340 m!827091))

(assert (=> b!887340 m!827093))

(assert (=> b!887168 d!109857))

(declare-fun bm!39376 () Bool)

(declare-fun call!39379 () V!28753)

(declare-fun call!39380 () V!28753)

(assert (=> bm!39376 (= call!39379 call!39380)))

(declare-fun b!887355 () Bool)

(declare-fun res!602175 () Bool)

(declare-fun e!494197 () Bool)

(assert (=> b!887355 (=> (not res!602175) (not e!494197))))

(assert (=> b!887355 (= res!602175 (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!494198 () Bool)

(assert (=> b!887355 (= e!494198 e!494197)))

(declare-fun b!887356 () Bool)

(declare-fun e!494194 () Bool)

(assert (=> b!887356 (= e!494194 e!494198)))

(declare-fun c!93617 () Bool)

(assert (=> b!887356 (= c!93617 (= key!673 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!39377 () Bool)

(declare-fun call!39381 () ListLongMap!10653)

(assert (=> bm!39377 (= call!39381 (getCurrentListMap!2601 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000000 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun e!494196 () Bool)

(declare-fun b!887357 () Bool)

(assert (=> b!887357 (= e!494196 (= call!39379 (get!13123 (select (arr!24826 (_values!5119 (v!11419 (underlying!535 thiss!833)))) (index!37379 lt!401199)) (dynLambda!1282 (defaultEntry!5135 (v!11419 (underlying!535 thiss!833))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!887357 (and (bvsge (index!37379 lt!401199) #b00000000000000000000000000000000) (bvslt (index!37379 lt!401199) (size!25267 (_values!5119 (v!11419 (underlying!535 thiss!833))))))))

(declare-fun b!887358 () Bool)

(assert (=> b!887358 (= e!494197 (= call!39379 (minValue!4932 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun d!109859 () Bool)

(assert (=> d!109859 e!494194))

(declare-fun c!93618 () Bool)

(assert (=> d!109859 (= c!93618 (= key!673 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!401353 () Unit!30211)

(declare-fun choose!1463 (array!51630 array!51628 (_ BitVec 32) (_ BitVec 32) V!28753 V!28753 (_ BitVec 64) (_ BitVec 32) Int) Unit!30211)

(assert (=> d!109859 (= lt!401353 (choose!1463 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) key!673 (index!37379 lt!401199) (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))))))

(assert (=> d!109859 (validMask!0 (mask!25523 (v!11419 (underlying!535 thiss!833))))))

(assert (=> d!109859 (= (lemmaKeyInListMapThenSameValueInArray!1 (_keys!9806 (v!11419 (underlying!535 thiss!833))) (_values!5119 (v!11419 (underlying!535 thiss!833))) (mask!25523 (v!11419 (underlying!535 thiss!833))) (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) (zeroValue!4932 (v!11419 (underlying!535 thiss!833))) (minValue!4932 (v!11419 (underlying!535 thiss!833))) key!673 (index!37379 lt!401199) (defaultEntry!5135 (v!11419 (underlying!535 thiss!833)))) lt!401353)))

(declare-fun bm!39378 () Bool)

(declare-fun call!39382 () ListLongMap!10653)

(assert (=> bm!39378 (= call!39382 call!39381)))

(declare-fun b!887359 () Bool)

(declare-fun e!494195 () Bool)

(assert (=> b!887359 (= e!494195 (= call!39380 (zeroValue!4932 (v!11419 (underlying!535 thiss!833)))))))

(declare-fun b!887360 () Bool)

(declare-fun res!602173 () Bool)

(assert (=> b!887360 (=> (not res!602173) (not e!494196))))

(assert (=> b!887360 (= res!602173 (arrayContainsKey!0 (_keys!9806 (v!11419 (underlying!535 thiss!833))) key!673 #b00000000000000000000000000000000))))

(assert (=> b!887360 (= e!494198 e!494196)))

(declare-fun b!887361 () Bool)

(assert (=> b!887361 (= e!494194 e!494195)))

(declare-fun res!602174 () Bool)

(assert (=> b!887361 (= res!602174 (not (= (bvand (extraKeys!4828 (v!11419 (underlying!535 thiss!833))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!887361 (=> (not res!602174) (not e!494195))))

(declare-fun bm!39379 () Bool)

(assert (=> bm!39379 (= call!39380 (apply!393 (ite c!93618 call!39381 call!39382) key!673))))

(assert (= (and d!109859 c!93618) b!887361))

(assert (= (and d!109859 (not c!93618)) b!887356))

(assert (= (and b!887361 res!602174) b!887359))

(assert (= (and b!887356 c!93617) b!887355))

(assert (= (and b!887356 (not c!93617)) b!887360))

(assert (= (and b!887355 res!602175) b!887358))

(assert (= (and b!887360 res!602173) b!887357))

(assert (= (or b!887358 b!887357) bm!39378))

(assert (= (or b!887358 b!887357) bm!39376))

(assert (= (or b!887359 bm!39378) bm!39377))

(assert (= (or b!887359 bm!39376) bm!39379))

(declare-fun b_lambda!12871 () Bool)

(assert (=> (not b_lambda!12871) (not b!887357)))

(assert (=> b!887357 t!25058))

(declare-fun b_and!25753 () Bool)

(assert (= b_and!25751 (and (=> t!25058 result!9977) b_and!25753)))

(declare-fun m!827095 () Bool)

(assert (=> bm!39379 m!827095))

(assert (=> bm!39377 m!826945))

(assert (=> b!887360 m!826933))

(declare-fun m!827097 () Bool)

(assert (=> d!109859 m!827097))

(assert (=> d!109859 m!827013))

(assert (=> b!887357 m!826939))

(assert (=> b!887357 m!826941))

(assert (=> b!887357 m!826939))

(assert (=> b!887357 m!826941))

(assert (=> b!887357 m!826943))

(assert (=> b!887168 d!109859))

(assert (=> b!887158 d!109851))

(declare-fun d!109861 () Bool)

(assert (=> d!109861 (= (isEmpty!679 (getValueByKey!431 (toList!5342 (map!12081 thiss!833)) key!673)) (not ((_ is Some!436) (getValueByKey!431 (toList!5342 (map!12081 thiss!833)) key!673))))))

(assert (=> d!109809 d!109861))

(assert (=> b!887167 d!109853))

(assert (=> d!109813 d!109833))

(declare-fun b!887362 () Bool)

(declare-fun e!494200 () Bool)

(assert (=> b!887362 (= e!494200 tp_is_empty!17841)))

(declare-fun mapIsEmpty!28288 () Bool)

(declare-fun mapRes!28288 () Bool)

(assert (=> mapIsEmpty!28288 mapRes!28288))

(declare-fun b!887363 () Bool)

(declare-fun e!494199 () Bool)

(assert (=> b!887363 (= e!494199 tp_is_empty!17841)))

(declare-fun mapNonEmpty!28288 () Bool)

(declare-fun tp!54484 () Bool)

(assert (=> mapNonEmpty!28288 (= mapRes!28288 (and tp!54484 e!494200))))

(declare-fun mapValue!28288 () ValueCell!8439)

(declare-fun mapKey!28288 () (_ BitVec 32))

(declare-fun mapRest!28288 () (Array (_ BitVec 32) ValueCell!8439))

(assert (=> mapNonEmpty!28288 (= mapRest!28287 (store mapRest!28288 mapKey!28288 mapValue!28288))))

(declare-fun condMapEmpty!28288 () Bool)

(declare-fun mapDefault!28288 () ValueCell!8439)

(assert (=> mapNonEmpty!28287 (= condMapEmpty!28288 (= mapRest!28287 ((as const (Array (_ BitVec 32) ValueCell!8439)) mapDefault!28288)))))

(assert (=> mapNonEmpty!28287 (= tp!54483 (and e!494199 mapRes!28288))))

(assert (= (and mapNonEmpty!28287 condMapEmpty!28288) mapIsEmpty!28288))

(assert (= (and mapNonEmpty!28287 (not condMapEmpty!28288)) mapNonEmpty!28288))

(assert (= (and mapNonEmpty!28288 ((_ is ValueCellFull!8439) mapValue!28288)) b!887362))

(assert (= (and mapNonEmpty!28287 ((_ is ValueCellFull!8439) mapDefault!28288)) b!887363))

(declare-fun m!827099 () Bool)

(assert (=> mapNonEmpty!28288 m!827099))

(declare-fun b_lambda!12873 () Bool)

(assert (= b_lambda!12871 (or (and b!887077 b_free!15513) b_lambda!12873)))

(declare-fun b_lambda!12875 () Bool)

(assert (= b_lambda!12869 (or (and b!887077 b_free!15513) b_lambda!12875)))

(check-sat (not b_lambda!12867) (not bm!39364) (not b!887191) (not b!887336) (not bm!39366) (not b!887307) (not b_lambda!12875) (not d!109827) (not b!887338) (not b!887225) (not b!887259) (not b!887317) (not b!887224) (not bm!39379) (not b!887219) (not b!887305) (not bm!39345) (not bm!39377) b_and!25753 (not d!109833) (not b!887189) tp_is_empty!17841 (not b_next!15513) (not b!887316) (not b!887360) (not b_lambda!12861) (not bm!39346) (not d!109857) (not b_lambda!12863) (not d!109859) (not b!887254) (not b!887194) (not d!109849) (not d!109837) (not b!887321) (not d!109845) (not b_lambda!12873) (not bm!39362) (not d!109843) (not b!887237) (not bm!39363) (not b!887232) (not mapNonEmpty!28288) (not b!887190) (not b!887337) (not b!887303) (not d!109855) (not bm!39344) (not b_lambda!12865) (not d!109825) (not d!109847) (not b_lambda!12859) (not b!887340) (not b!887357) (not b!887234) (not b!887319) (not b!887325) (not d!109835) (not b!887320) (not b!887331))
(check-sat b_and!25753 (not b_next!15513))
