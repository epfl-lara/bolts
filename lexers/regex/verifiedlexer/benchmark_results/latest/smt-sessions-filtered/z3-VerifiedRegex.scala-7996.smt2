; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!414352 () Bool)

(assert start!414352)

(declare-fun b!4311017 () Bool)

(declare-fun b_free!128651 () Bool)

(declare-fun b_next!129355 () Bool)

(assert (=> b!4311017 (= b_free!128651 (not b_next!129355))))

(declare-fun tp!1324812 () Bool)

(declare-fun b_and!340087 () Bool)

(assert (=> b!4311017 (= tp!1324812 b_and!340087)))

(declare-fun b!4311011 () Bool)

(declare-fun b_free!128653 () Bool)

(declare-fun b_next!129357 () Bool)

(assert (=> b!4311011 (= b_free!128653 (not b_next!129357))))

(declare-fun tp!1324809 () Bool)

(declare-fun b_and!340089 () Bool)

(assert (=> b!4311011 (= tp!1324809 b_and!340089)))

(declare-fun b!4311007 () Bool)

(declare-fun e!2681190 () Bool)

(declare-fun e!2681195 () Bool)

(assert (=> b!4311007 (= e!2681190 e!2681195)))

(declare-fun b!4311008 () Bool)

(declare-fun e!2681187 () Bool)

(assert (=> b!4311008 (= e!2681187 (not true))))

(declare-fun e!2681188 () Bool)

(assert (=> b!4311008 e!2681188))

(declare-fun res!1766780 () Bool)

(assert (=> b!4311008 (=> (not res!1766780) (not e!2681188))))

(declare-datatypes ((K!9429 0))(
  ( (K!9430 (val!15801 Int)) )
))
(declare-datatypes ((V!9631 0))(
  ( (V!9632 (val!15802 Int)) )
))
(declare-datatypes ((tuple2!46694 0))(
  ( (tuple2!46695 (_1!26627 K!9429) (_2!26627 V!9631)) )
))
(declare-datatypes ((List!48338 0))(
  ( (Nil!48214) (Cons!48214 (h!53653 tuple2!46694) (t!355153 List!48338)) )
))
(declare-fun lt!1531400 () List!48338)

(declare-fun noDuplicateKeys!217 (List!48338) Bool)

(assert (=> b!4311008 (= res!1766780 (noDuplicateKeys!217 lt!1531400))))

(declare-datatypes ((Unit!67348 0))(
  ( (Unit!67349) )
))
(declare-fun lt!1531393 () Unit!67348)

(declare-fun lt!1531396 () List!48338)

(declare-fun key!2048 () K!9429)

(declare-fun lemmaRemovePairForKeyPreservesNoDuplicateKeys!167 (List!48338 K!9429) Unit!67348)

(assert (=> b!4311008 (= lt!1531393 (lemmaRemovePairForKeyPreservesNoDuplicateKeys!167 lt!1531396 key!2048))))

(declare-fun lt!1531395 () (_ BitVec 64))

(declare-datatypes ((array!16862 0))(
  ( (array!16863 (arr!7531 (Array (_ BitVec 32) (_ BitVec 64))) (size!35570 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!4589 0))(
  ( (HashableExt!4588 (__x!30044 Int)) )
))
(declare-datatypes ((array!16864 0))(
  ( (array!16865 (arr!7532 (Array (_ BitVec 32) List!48338)) (size!35571 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9346 0))(
  ( (LongMapFixedSize!9347 (defaultEntry!5058 Int) (mask!13238 (_ BitVec 32)) (extraKeys!4922 (_ BitVec 32)) (zeroValue!4932 List!48338) (minValue!4932 List!48338) (_size!9389 (_ BitVec 32)) (_keys!4973 array!16862) (_values!4954 array!16864) (_vacant!4734 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18501 0))(
  ( (Cell!18502 (v!42385 LongMapFixedSize!9346)) )
))
(declare-datatypes ((MutLongMap!4673 0))(
  ( (LongMap!4673 (underlying!9575 Cell!18501)) (MutLongMapExt!4672 (__x!30045 Int)) )
))
(declare-datatypes ((Cell!18503 0))(
  ( (Cell!18504 (v!42386 MutLongMap!4673)) )
))
(declare-datatypes ((MutableMap!4579 0))(
  ( (MutableMapExt!4578 (__x!30046 Int)) (HashMap!4579 (underlying!9576 Cell!18503) (hashF!6720 Hashable!4589) (_size!9390 (_ BitVec 32)) (defaultValue!4750 Int)) )
))
(declare-fun thiss!42308 () MutableMap!4579)

(declare-fun allKeysSameHash!192 (List!48338 (_ BitVec 64) Hashable!4589) Bool)

(assert (=> b!4311008 (allKeysSameHash!192 lt!1531400 lt!1531395 (hashF!6720 thiss!42308))))

(declare-fun lt!1531398 () Unit!67348)

(declare-fun lemmaRemovePairForKeyPreservesHash!172 (List!48338 K!9429 (_ BitVec 64) Hashable!4589) Unit!67348)

(assert (=> b!4311008 (= lt!1531398 (lemmaRemovePairForKeyPreservesHash!172 lt!1531396 key!2048 lt!1531395 (hashF!6720 thiss!42308)))))

(assert (=> b!4311008 (allKeysSameHash!192 lt!1531396 lt!1531395 (hashF!6720 thiss!42308))))

(declare-datatypes ((tuple2!46696 0))(
  ( (tuple2!46697 (_1!26628 (_ BitVec 64)) (_2!26628 List!48338)) )
))
(declare-datatypes ((List!48339 0))(
  ( (Nil!48215) (Cons!48215 (h!53654 tuple2!46696) (t!355154 List!48339)) )
))
(declare-datatypes ((ListLongMap!1029 0))(
  ( (ListLongMap!1030 (toList!2417 List!48339)) )
))
(declare-fun lt!1531391 () ListLongMap!1029)

(declare-fun lt!1531399 () Unit!67348)

(declare-fun lemmaInLongMapAllKeySameHashThenForTuple!179 (List!48339 (_ BitVec 64) List!48338 Hashable!4589) Unit!67348)

(assert (=> b!4311008 (= lt!1531399 (lemmaInLongMapAllKeySameHashThenForTuple!179 (toList!2417 lt!1531391) lt!1531395 lt!1531396 (hashF!6720 thiss!42308)))))

(declare-fun b!4311009 () Bool)

(declare-fun lt!1531397 () List!48338)

(assert (=> b!4311009 (= e!2681188 (noDuplicateKeys!217 lt!1531397))))

(declare-fun b!4311010 () Bool)

(declare-fun res!1766782 () Bool)

(declare-fun e!2681194 () Bool)

(assert (=> b!4311010 (=> (not res!1766782) (not e!2681194))))

(declare-fun valid!3662 (MutableMap!4579) Bool)

(assert (=> b!4311010 (= res!1766782 (valid!3662 thiss!42308))))

(declare-fun mapIsEmpty!20864 () Bool)

(declare-fun mapRes!20864 () Bool)

(assert (=> mapIsEmpty!20864 mapRes!20864))

(declare-fun e!2681189 () Bool)

(declare-fun e!2681191 () Bool)

(assert (=> b!4311011 (= e!2681189 (and e!2681191 tp!1324809))))

(declare-fun b!4311012 () Bool)

(declare-fun res!1766785 () Bool)

(assert (=> b!4311012 (=> (not res!1766785) (not e!2681188))))

(declare-fun containsKey!320 (List!48338 K!9429) Bool)

(assert (=> b!4311012 (= res!1766785 (not (containsKey!320 lt!1531400 key!2048)))))

(declare-fun b!4311013 () Bool)

(declare-fun e!2681192 () Bool)

(declare-fun lt!1531392 () MutLongMap!4673)

(get-info :version)

(assert (=> b!4311013 (= e!2681191 (and e!2681192 ((_ is LongMap!4673) lt!1531392)))))

(assert (=> b!4311013 (= lt!1531392 (v!42386 (underlying!9576 thiss!42308)))))

(declare-fun b!4311014 () Bool)

(declare-fun e!2681196 () Bool)

(declare-fun tp!1324806 () Bool)

(assert (=> b!4311014 (= e!2681196 (and tp!1324806 mapRes!20864))))

(declare-fun condMapEmpty!20864 () Bool)

(declare-fun mapDefault!20864 () List!48338)

(assert (=> b!4311014 (= condMapEmpty!20864 (= (arr!7532 (_values!4954 (v!42385 (underlying!9575 (v!42386 (underlying!9576 thiss!42308)))))) ((as const (Array (_ BitVec 32) List!48338)) mapDefault!20864)))))

(declare-fun b!4311015 () Bool)

(assert (=> b!4311015 (= e!2681192 e!2681190)))

(declare-fun mapNonEmpty!20864 () Bool)

(declare-fun tp!1324807 () Bool)

(declare-fun tp!1324810 () Bool)

(assert (=> mapNonEmpty!20864 (= mapRes!20864 (and tp!1324807 tp!1324810))))

(declare-fun mapKey!20864 () (_ BitVec 32))

(declare-fun mapValue!20864 () List!48338)

(declare-fun mapRest!20864 () (Array (_ BitVec 32) List!48338))

(assert (=> mapNonEmpty!20864 (= (arr!7532 (_values!4954 (v!42385 (underlying!9575 (v!42386 (underlying!9576 thiss!42308)))))) (store mapRest!20864 mapKey!20864 mapValue!20864))))

(declare-fun res!1766784 () Bool)

(assert (=> start!414352 (=> (not res!1766784) (not e!2681194))))

(assert (=> start!414352 (= res!1766784 ((_ is HashMap!4579) thiss!42308))))

(assert (=> start!414352 e!2681194))

(assert (=> start!414352 e!2681189))

(declare-fun tp_is_empty!23797 () Bool)

(assert (=> start!414352 tp_is_empty!23797))

(declare-fun tp_is_empty!23799 () Bool)

(assert (=> start!414352 tp_is_empty!23799))

(declare-fun b!4311016 () Bool)

(declare-fun e!2681197 () Bool)

(assert (=> b!4311016 (= e!2681197 e!2681187)))

(declare-fun res!1766781 () Bool)

(assert (=> b!4311016 (=> (not res!1766781) (not e!2681187))))

(declare-datatypes ((tuple2!46698 0))(
  ( (tuple2!46699 (_1!26629 Bool) (_2!26629 MutLongMap!4673)) )
))
(declare-fun update!445 (MutLongMap!4673 (_ BitVec 64) List!48338) tuple2!46698)

(assert (=> b!4311016 (= res!1766781 (_1!26629 (update!445 (v!42386 (underlying!9576 thiss!42308)) lt!1531395 lt!1531397)))))

(declare-fun v!9179 () V!9631)

(assert (=> b!4311016 (= lt!1531397 (Cons!48214 (tuple2!46695 key!2048 v!9179) lt!1531400))))

(declare-fun removePairForKey!217 (List!48338 K!9429) List!48338)

(assert (=> b!4311016 (= lt!1531400 (removePairForKey!217 lt!1531396 key!2048))))

(declare-fun apply!11028 (MutLongMap!4673 (_ BitVec 64)) List!48338)

(assert (=> b!4311016 (= lt!1531396 (apply!11028 (v!42386 (underlying!9576 thiss!42308)) lt!1531395))))

(declare-fun hash!1022 (Hashable!4589 K!9429) (_ BitVec 64))

(assert (=> b!4311016 (= lt!1531395 (hash!1022 (hashF!6720 thiss!42308) key!2048))))

(declare-fun tp!1324808 () Bool)

(declare-fun tp!1324811 () Bool)

(declare-fun array_inv!5405 (array!16862) Bool)

(declare-fun array_inv!5406 (array!16864) Bool)

(assert (=> b!4311017 (= e!2681195 (and tp!1324812 tp!1324808 tp!1324811 (array_inv!5405 (_keys!4973 (v!42385 (underlying!9575 (v!42386 (underlying!9576 thiss!42308)))))) (array_inv!5406 (_values!4954 (v!42385 (underlying!9575 (v!42386 (underlying!9576 thiss!42308)))))) e!2681196))))

(declare-fun b!4311018 () Bool)

(assert (=> b!4311018 (= e!2681194 e!2681197)))

(declare-fun res!1766783 () Bool)

(assert (=> b!4311018 (=> (not res!1766783) (not e!2681197))))

(declare-fun contains!10194 (MutableMap!4579 K!9429) Bool)

(assert (=> b!4311018 (= res!1766783 (contains!10194 thiss!42308 key!2048))))

(declare-fun map!10210 (MutLongMap!4673) ListLongMap!1029)

(assert (=> b!4311018 (= lt!1531391 (map!10210 (v!42386 (underlying!9576 thiss!42308))))))

(declare-datatypes ((ListMap!1699 0))(
  ( (ListMap!1700 (toList!2418 List!48338)) )
))
(declare-fun lt!1531394 () ListMap!1699)

(declare-fun map!10211 (MutableMap!4579) ListMap!1699)

(assert (=> b!4311018 (= lt!1531394 (map!10211 thiss!42308))))

(assert (= (and start!414352 res!1766784) b!4311010))

(assert (= (and b!4311010 res!1766782) b!4311018))

(assert (= (and b!4311018 res!1766783) b!4311016))

(assert (= (and b!4311016 res!1766781) b!4311008))

(assert (= (and b!4311008 res!1766780) b!4311012))

(assert (= (and b!4311012 res!1766785) b!4311009))

(assert (= (and b!4311014 condMapEmpty!20864) mapIsEmpty!20864))

(assert (= (and b!4311014 (not condMapEmpty!20864)) mapNonEmpty!20864))

(assert (= b!4311017 b!4311014))

(assert (= b!4311007 b!4311017))

(assert (= b!4311015 b!4311007))

(assert (= (and b!4311013 ((_ is LongMap!4673) (v!42386 (underlying!9576 thiss!42308)))) b!4311015))

(assert (= b!4311011 b!4311013))

(assert (= (and start!414352 ((_ is HashMap!4579) thiss!42308)) b!4311011))

(declare-fun m!4903941 () Bool)

(assert (=> b!4311008 m!4903941))

(declare-fun m!4903943 () Bool)

(assert (=> b!4311008 m!4903943))

(declare-fun m!4903945 () Bool)

(assert (=> b!4311008 m!4903945))

(declare-fun m!4903947 () Bool)

(assert (=> b!4311008 m!4903947))

(declare-fun m!4903949 () Bool)

(assert (=> b!4311008 m!4903949))

(declare-fun m!4903951 () Bool)

(assert (=> b!4311008 m!4903951))

(declare-fun m!4903953 () Bool)

(assert (=> b!4311009 m!4903953))

(declare-fun m!4903955 () Bool)

(assert (=> b!4311017 m!4903955))

(declare-fun m!4903957 () Bool)

(assert (=> b!4311017 m!4903957))

(declare-fun m!4903959 () Bool)

(assert (=> b!4311010 m!4903959))

(declare-fun m!4903961 () Bool)

(assert (=> mapNonEmpty!20864 m!4903961))

(declare-fun m!4903963 () Bool)

(assert (=> b!4311012 m!4903963))

(declare-fun m!4903965 () Bool)

(assert (=> b!4311018 m!4903965))

(declare-fun m!4903967 () Bool)

(assert (=> b!4311018 m!4903967))

(declare-fun m!4903969 () Bool)

(assert (=> b!4311018 m!4903969))

(declare-fun m!4903971 () Bool)

(assert (=> b!4311016 m!4903971))

(declare-fun m!4903973 () Bool)

(assert (=> b!4311016 m!4903973))

(declare-fun m!4903975 () Bool)

(assert (=> b!4311016 m!4903975))

(declare-fun m!4903977 () Bool)

(assert (=> b!4311016 m!4903977))

(check-sat tp_is_empty!23799 (not b_next!129355) (not b!4311009) tp_is_empty!23797 (not b!4311018) (not b!4311017) (not b!4311008) (not b_next!129357) (not b!4311016) b_and!340089 (not b!4311014) b_and!340087 (not mapNonEmpty!20864) (not b!4311012) (not b!4311010))
(check-sat b_and!340087 b_and!340089 (not b_next!129357) (not b_next!129355))
