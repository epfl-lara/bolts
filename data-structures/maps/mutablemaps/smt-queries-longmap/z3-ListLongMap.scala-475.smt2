; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!9598 () Bool)

(assert start!9598)

(declare-fun b!70583 () Bool)

(declare-fun b_free!2093 () Bool)

(declare-fun b_next!2093 () Bool)

(assert (=> b!70583 (= b_free!2093 (not b_next!2093))))

(declare-fun tp!8449 () Bool)

(declare-fun b_and!4333 () Bool)

(assert (=> b!70583 (= tp!8449 b_and!4333)))

(declare-fun b!70574 () Bool)

(declare-fun b_free!2095 () Bool)

(declare-fun b_next!2095 () Bool)

(assert (=> b!70574 (= b_free!2095 (not b_next!2095))))

(declare-fun tp!8450 () Bool)

(declare-fun b_and!4335 () Bool)

(assert (=> b!70574 (= tp!8450 b_and!4335)))

(declare-fun b!70573 () Bool)

(declare-fun res!37722 () Bool)

(declare-fun e!46212 () Bool)

(assert (=> b!70573 (=> (not res!37722) (not e!46212))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!2931 0))(
  ( (V!2932 (val!1276 Int)) )
))
(declare-datatypes ((array!3868 0))(
  ( (array!3869 (arr!1846 (Array (_ BitVec 32) (_ BitVec 64))) (size!2083 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!888 0))(
  ( (ValueCellFull!888 (v!2510 V!2931)) (EmptyCell!888) )
))
(declare-datatypes ((array!3870 0))(
  ( (array!3871 (arr!1847 (Array (_ BitVec 32) ValueCell!888)) (size!2084 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!684 0))(
  ( (LongMapFixedSize!685 (defaultEntry!2189 Int) (mask!6144 (_ BitVec 32)) (extraKeys!2052 (_ BitVec 32)) (zeroValue!2093 V!2931) (minValue!2093 V!2931) (_size!391 (_ BitVec 32)) (_keys!3837 array!3868) (_values!2172 array!3870) (_vacant!391 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!494 0))(
  ( (Cell!495 (v!2511 LongMapFixedSize!684)) )
))
(declare-datatypes ((LongMap!494 0))(
  ( (LongMap!495 (underlying!258 Cell!494)) )
))
(declare-fun thiss!992 () LongMap!494)

(assert (=> b!70573 (= res!37722 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2083 (_keys!3837 (v!2511 (underlying!258 thiss!992)))))))))

(declare-fun mapIsEmpty!3127 () Bool)

(declare-fun mapRes!3127 () Bool)

(assert (=> mapIsEmpty!3127 mapRes!3127))

(declare-fun e!46202 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!684)

(declare-fun e!46209 () Bool)

(declare-fun tp_is_empty!2463 () Bool)

(declare-fun array_inv!1093 (array!3868) Bool)

(declare-fun array_inv!1094 (array!3870) Bool)

(assert (=> b!70574 (= e!46202 (and tp!8450 tp_is_empty!2463 (array_inv!1093 (_keys!3837 newMap!16)) (array_inv!1094 (_values!2172 newMap!16)) e!46209))))

(declare-fun b!70575 () Bool)

(declare-fun e!46195 () Bool)

(declare-fun e!46206 () Bool)

(assert (=> b!70575 (= e!46195 e!46206)))

(declare-fun b!70576 () Bool)

(declare-datatypes ((Unit!1998 0))(
  ( (Unit!1999) )
))
(declare-fun e!46211 () Unit!1998)

(declare-fun Unit!2000 () Unit!1998)

(assert (=> b!70576 (= e!46211 Unit!2000)))

(declare-fun lt!31100 () Unit!1998)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!49 (array!3868 array!3870 (_ BitVec 32) (_ BitVec 32) V!2931 V!2931 (_ BitVec 64) (_ BitVec 32) Int) Unit!1998)

(assert (=> b!70576 (= lt!31100 (lemmaListMapContainsThenArrayContainsFrom!49 (_keys!3837 (v!2511 (underlying!258 thiss!992))) (_values!2172 (v!2511 (underlying!258 thiss!992))) (mask!6144 (v!2511 (underlying!258 thiss!992))) (extraKeys!2052 (v!2511 (underlying!258 thiss!992))) (zeroValue!2093 (v!2511 (underlying!258 thiss!992))) (minValue!2093 (v!2511 (underlying!258 thiss!992))) (select (arr!1846 (_keys!3837 (v!2511 (underlying!258 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2189 (v!2511 (underlying!258 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3868 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!70576 (arrayContainsKey!0 (_keys!3837 (v!2511 (underlying!258 thiss!992))) (select (arr!1846 (_keys!3837 (v!2511 (underlying!258 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!31096 () Unit!1998)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3868 (_ BitVec 32) (_ BitVec 32)) Unit!1998)

(assert (=> b!70576 (= lt!31096 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3837 (v!2511 (underlying!258 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1499 0))(
  ( (Nil!1496) (Cons!1495 (h!2081 (_ BitVec 64)) (t!5027 List!1499)) )
))
(declare-fun arrayNoDuplicates!0 (array!3868 (_ BitVec 32) List!1499) Bool)

(assert (=> b!70576 (arrayNoDuplicates!0 (_keys!3837 (v!2511 (underlying!258 thiss!992))) from!355 Nil!1496)))

(declare-fun lt!31095 () Unit!1998)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3868 (_ BitVec 32) (_ BitVec 64) List!1499) Unit!1998)

(assert (=> b!70576 (= lt!31095 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3837 (v!2511 (underlying!258 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1846 (_keys!3837 (v!2511 (underlying!258 thiss!992)))) from!355) (Cons!1495 (select (arr!1846 (_keys!3837 (v!2511 (underlying!258 thiss!992)))) from!355) Nil!1496)))))

(assert (=> b!70576 false))

(declare-fun mapNonEmpty!3127 () Bool)

(declare-fun mapRes!3128 () Bool)

(declare-fun tp!8447 () Bool)

(declare-fun e!46204 () Bool)

(assert (=> mapNonEmpty!3127 (= mapRes!3128 (and tp!8447 e!46204))))

(declare-fun mapValue!3127 () ValueCell!888)

(declare-fun mapKey!3128 () (_ BitVec 32))

(declare-fun mapRest!3127 () (Array (_ BitVec 32) ValueCell!888))

(assert (=> mapNonEmpty!3127 (= (arr!1847 (_values!2172 (v!2511 (underlying!258 thiss!992)))) (store mapRest!3127 mapKey!3128 mapValue!3127))))

(declare-fun res!37728 () Bool)

(assert (=> start!9598 (=> (not res!37728) (not e!46212))))

(declare-fun valid!284 (LongMap!494) Bool)

(assert (=> start!9598 (= res!37728 (valid!284 thiss!992))))

(assert (=> start!9598 e!46212))

(assert (=> start!9598 e!46195))

(assert (=> start!9598 true))

(assert (=> start!9598 e!46202))

(declare-fun b!70577 () Bool)

(declare-fun res!37725 () Bool)

(assert (=> b!70577 (=> (not res!37725) (not e!46212))))

(declare-fun valid!285 (LongMapFixedSize!684) Bool)

(assert (=> b!70577 (= res!37725 (valid!285 newMap!16))))

(declare-fun mapNonEmpty!3128 () Bool)

(declare-fun tp!8448 () Bool)

(declare-fun e!46196 () Bool)

(assert (=> mapNonEmpty!3128 (= mapRes!3127 (and tp!8448 e!46196))))

(declare-fun mapKey!3127 () (_ BitVec 32))

(declare-fun mapValue!3128 () ValueCell!888)

(declare-fun mapRest!3128 () (Array (_ BitVec 32) ValueCell!888))

(assert (=> mapNonEmpty!3128 (= (arr!1847 (_values!2172 newMap!16)) (store mapRest!3128 mapKey!3127 mapValue!3128))))

(declare-fun b!70578 () Bool)

(declare-fun Unit!2001 () Unit!1998)

(assert (=> b!70578 (= e!46211 Unit!2001)))

(declare-fun b!70579 () Bool)

(declare-fun e!46198 () Bool)

(assert (=> b!70579 (= e!46206 e!46198)))

(declare-fun b!70580 () Bool)

(assert (=> b!70580 (= e!46196 tp_is_empty!2463)))

(declare-fun b!70581 () Bool)

(assert (=> b!70581 (= e!46204 tp_is_empty!2463)))

(declare-fun b!70582 () Bool)

(declare-fun res!37723 () Bool)

(assert (=> b!70582 (=> (not res!37723) (not e!46212))))

(assert (=> b!70582 (= res!37723 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6144 newMap!16)) (_size!391 (v!2511 (underlying!258 thiss!992)))))))

(declare-fun mapIsEmpty!3128 () Bool)

(assert (=> mapIsEmpty!3128 mapRes!3128))

(declare-fun e!46200 () Bool)

(assert (=> b!70583 (= e!46198 (and tp!8449 tp_is_empty!2463 (array_inv!1093 (_keys!3837 (v!2511 (underlying!258 thiss!992)))) (array_inv!1094 (_values!2172 (v!2511 (underlying!258 thiss!992)))) e!46200))))

(declare-fun b!70584 () Bool)

(declare-fun e!46201 () Bool)

(assert (=> b!70584 (= e!46209 (and e!46201 mapRes!3127))))

(declare-fun condMapEmpty!3128 () Bool)

(declare-fun mapDefault!3127 () ValueCell!888)

(assert (=> b!70584 (= condMapEmpty!3128 (= (arr!1847 (_values!2172 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!888)) mapDefault!3127)))))

(declare-fun b!70585 () Bool)

(declare-fun e!46205 () Bool)

(assert (=> b!70585 (= e!46212 e!46205)))

(declare-fun res!37729 () Bool)

(assert (=> b!70585 (=> (not res!37729) (not e!46205))))

(declare-datatypes ((tuple2!2126 0))(
  ( (tuple2!2127 (_1!1073 (_ BitVec 64)) (_2!1073 V!2931)) )
))
(declare-datatypes ((List!1500 0))(
  ( (Nil!1497) (Cons!1496 (h!2082 tuple2!2126) (t!5028 List!1500)) )
))
(declare-datatypes ((ListLongMap!1427 0))(
  ( (ListLongMap!1428 (toList!729 List!1500)) )
))
(declare-fun lt!31099 () ListLongMap!1427)

(declare-fun lt!31091 () ListLongMap!1427)

(assert (=> b!70585 (= res!37729 (= lt!31099 lt!31091))))

(declare-fun map!1150 (LongMapFixedSize!684) ListLongMap!1427)

(assert (=> b!70585 (= lt!31091 (map!1150 newMap!16))))

(declare-fun getCurrentListMap!422 (array!3868 array!3870 (_ BitVec 32) (_ BitVec 32) V!2931 V!2931 (_ BitVec 32) Int) ListLongMap!1427)

(assert (=> b!70585 (= lt!31099 (getCurrentListMap!422 (_keys!3837 (v!2511 (underlying!258 thiss!992))) (_values!2172 (v!2511 (underlying!258 thiss!992))) (mask!6144 (v!2511 (underlying!258 thiss!992))) (extraKeys!2052 (v!2511 (underlying!258 thiss!992))) (zeroValue!2093 (v!2511 (underlying!258 thiss!992))) (minValue!2093 (v!2511 (underlying!258 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2189 (v!2511 (underlying!258 thiss!992)))))))

(declare-fun b!70586 () Bool)

(declare-fun e!46210 () Bool)

(assert (=> b!70586 (= e!46205 e!46210)))

(declare-fun res!37724 () Bool)

(assert (=> b!70586 (=> (not res!37724) (not e!46210))))

(assert (=> b!70586 (= res!37724 (and (not (= (select (arr!1846 (_keys!3837 (v!2511 (underlying!258 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1846 (_keys!3837 (v!2511 (underlying!258 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!31092 () V!2931)

(declare-fun get!1141 (ValueCell!888 V!2931) V!2931)

(declare-fun dynLambda!328 (Int (_ BitVec 64)) V!2931)

(assert (=> b!70586 (= lt!31092 (get!1141 (select (arr!1847 (_values!2172 (v!2511 (underlying!258 thiss!992)))) from!355) (dynLambda!328 (defaultEntry!2189 (v!2511 (underlying!258 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!70587 () Bool)

(declare-fun e!46197 () Bool)

(assert (=> b!70587 (= e!46200 (and e!46197 mapRes!3128))))

(declare-fun condMapEmpty!3127 () Bool)

(declare-fun mapDefault!3128 () ValueCell!888)

(assert (=> b!70587 (= condMapEmpty!3127 (= (arr!1847 (_values!2172 (v!2511 (underlying!258 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!888)) mapDefault!3128)))))

(declare-fun b!70588 () Bool)

(declare-fun e!46199 () Bool)

(assert (=> b!70588 (= e!46210 e!46199)))

(declare-fun res!37726 () Bool)

(assert (=> b!70588 (=> (not res!37726) (not e!46199))))

(declare-datatypes ((tuple2!2128 0))(
  ( (tuple2!2129 (_1!1074 Bool) (_2!1074 LongMapFixedSize!684)) )
))
(declare-fun lt!31102 () tuple2!2128)

(assert (=> b!70588 (= res!37726 (and (_1!1074 lt!31102) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!31097 () Unit!1998)

(assert (=> b!70588 (= lt!31097 e!46211)))

(declare-fun c!10235 () Bool)

(declare-fun contains!723 (ListLongMap!1427 (_ BitVec 64)) Bool)

(assert (=> b!70588 (= c!10235 (contains!723 lt!31091 (select (arr!1846 (_keys!3837 (v!2511 (underlying!258 thiss!992)))) from!355)))))

(declare-fun update!99 (LongMapFixedSize!684 (_ BitVec 64) V!2931) tuple2!2128)

(assert (=> b!70588 (= lt!31102 (update!99 newMap!16 (select (arr!1846 (_keys!3837 (v!2511 (underlying!258 thiss!992)))) from!355) lt!31092))))

(declare-fun b!70589 () Bool)

(declare-fun e!46203 () Bool)

(assert (=> b!70589 (= e!46199 (not e!46203))))

(declare-fun res!37727 () Bool)

(assert (=> b!70589 (=> res!37727 e!46203)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!70589 (= res!37727 (not (validMask!0 (mask!6144 (v!2511 (underlying!258 thiss!992))))))))

(declare-fun lt!31094 () ListLongMap!1427)

(declare-fun lt!31098 () tuple2!2126)

(declare-fun lt!31093 () tuple2!2126)

(declare-fun +!92 (ListLongMap!1427 tuple2!2126) ListLongMap!1427)

(assert (=> b!70589 (= (+!92 (+!92 lt!31094 lt!31098) lt!31093) (+!92 (+!92 lt!31094 lt!31093) lt!31098))))

(assert (=> b!70589 (= lt!31093 (tuple2!2127 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2093 (v!2511 (underlying!258 thiss!992)))))))

(assert (=> b!70589 (= lt!31098 (tuple2!2127 (select (arr!1846 (_keys!3837 (v!2511 (underlying!258 thiss!992)))) from!355) lt!31092))))

(declare-fun lt!31101 () Unit!1998)

(declare-fun addCommutativeForDiffKeys!11 (ListLongMap!1427 (_ BitVec 64) V!2931 (_ BitVec 64) V!2931) Unit!1998)

(assert (=> b!70589 (= lt!31101 (addCommutativeForDiffKeys!11 lt!31094 (select (arr!1846 (_keys!3837 (v!2511 (underlying!258 thiss!992)))) from!355) lt!31092 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2093 (v!2511 (underlying!258 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!56 (array!3868 array!3870 (_ BitVec 32) (_ BitVec 32) V!2931 V!2931 (_ BitVec 32) Int) ListLongMap!1427)

(assert (=> b!70589 (= lt!31094 (getCurrentListMapNoExtraKeys!56 (_keys!3837 (v!2511 (underlying!258 thiss!992))) (_values!2172 (v!2511 (underlying!258 thiss!992))) (mask!6144 (v!2511 (underlying!258 thiss!992))) (extraKeys!2052 (v!2511 (underlying!258 thiss!992))) (zeroValue!2093 (v!2511 (underlying!258 thiss!992))) (minValue!2093 (v!2511 (underlying!258 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2189 (v!2511 (underlying!258 thiss!992)))))))

(declare-fun b!70590 () Bool)

(assert (=> b!70590 (= e!46201 tp_is_empty!2463)))

(declare-fun b!70591 () Bool)

(assert (=> b!70591 (= e!46203 (or (not (= (size!2084 (_values!2172 (v!2511 (underlying!258 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6144 (v!2511 (underlying!258 thiss!992)))))) (not (= (size!2083 (_keys!3837 (v!2511 (underlying!258 thiss!992)))) (size!2084 (_values!2172 (v!2511 (underlying!258 thiss!992)))))) (bvsge (mask!6144 (v!2511 (underlying!258 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!70592 () Bool)

(assert (=> b!70592 (= e!46197 tp_is_empty!2463)))

(assert (= (and start!9598 res!37728) b!70573))

(assert (= (and b!70573 res!37722) b!70577))

(assert (= (and b!70577 res!37725) b!70582))

(assert (= (and b!70582 res!37723) b!70585))

(assert (= (and b!70585 res!37729) b!70586))

(assert (= (and b!70586 res!37724) b!70588))

(assert (= (and b!70588 c!10235) b!70576))

(assert (= (and b!70588 (not c!10235)) b!70578))

(assert (= (and b!70588 res!37726) b!70589))

(assert (= (and b!70589 (not res!37727)) b!70591))

(assert (= (and b!70587 condMapEmpty!3127) mapIsEmpty!3128))

(assert (= (and b!70587 (not condMapEmpty!3127)) mapNonEmpty!3127))

(get-info :version)

(assert (= (and mapNonEmpty!3127 ((_ is ValueCellFull!888) mapValue!3127)) b!70581))

(assert (= (and b!70587 ((_ is ValueCellFull!888) mapDefault!3128)) b!70592))

(assert (= b!70583 b!70587))

(assert (= b!70579 b!70583))

(assert (= b!70575 b!70579))

(assert (= start!9598 b!70575))

(assert (= (and b!70584 condMapEmpty!3128) mapIsEmpty!3127))

(assert (= (and b!70584 (not condMapEmpty!3128)) mapNonEmpty!3128))

(assert (= (and mapNonEmpty!3128 ((_ is ValueCellFull!888) mapValue!3128)) b!70580))

(assert (= (and b!70584 ((_ is ValueCellFull!888) mapDefault!3127)) b!70590))

(assert (= b!70574 b!70584))

(assert (= start!9598 b!70574))

(declare-fun b_lambda!3181 () Bool)

(assert (=> (not b_lambda!3181) (not b!70586)))

(declare-fun t!5024 () Bool)

(declare-fun tb!1501 () Bool)

(assert (=> (and b!70583 (= (defaultEntry!2189 (v!2511 (underlying!258 thiss!992))) (defaultEntry!2189 (v!2511 (underlying!258 thiss!992)))) t!5024) tb!1501))

(declare-fun result!2637 () Bool)

(assert (=> tb!1501 (= result!2637 tp_is_empty!2463)))

(assert (=> b!70586 t!5024))

(declare-fun b_and!4337 () Bool)

(assert (= b_and!4333 (and (=> t!5024 result!2637) b_and!4337)))

(declare-fun tb!1503 () Bool)

(declare-fun t!5026 () Bool)

(assert (=> (and b!70574 (= (defaultEntry!2189 newMap!16) (defaultEntry!2189 (v!2511 (underlying!258 thiss!992)))) t!5026) tb!1503))

(declare-fun result!2641 () Bool)

(assert (= result!2641 result!2637))

(assert (=> b!70586 t!5026))

(declare-fun b_and!4339 () Bool)

(assert (= b_and!4335 (and (=> t!5026 result!2641) b_and!4339)))

(declare-fun m!67543 () Bool)

(assert (=> b!70576 m!67543))

(declare-fun m!67545 () Bool)

(assert (=> b!70576 m!67545))

(declare-fun m!67547 () Bool)

(assert (=> b!70576 m!67547))

(declare-fun m!67549 () Bool)

(assert (=> b!70576 m!67549))

(assert (=> b!70576 m!67547))

(assert (=> b!70576 m!67547))

(declare-fun m!67551 () Bool)

(assert (=> b!70576 m!67551))

(assert (=> b!70576 m!67547))

(declare-fun m!67553 () Bool)

(assert (=> b!70576 m!67553))

(assert (=> b!70588 m!67547))

(assert (=> b!70588 m!67547))

(declare-fun m!67555 () Bool)

(assert (=> b!70588 m!67555))

(assert (=> b!70588 m!67547))

(declare-fun m!67557 () Bool)

(assert (=> b!70588 m!67557))

(declare-fun m!67559 () Bool)

(assert (=> b!70577 m!67559))

(declare-fun m!67561 () Bool)

(assert (=> mapNonEmpty!3128 m!67561))

(assert (=> b!70586 m!67547))

(declare-fun m!67563 () Bool)

(assert (=> b!70586 m!67563))

(declare-fun m!67565 () Bool)

(assert (=> b!70586 m!67565))

(assert (=> b!70586 m!67563))

(assert (=> b!70586 m!67565))

(declare-fun m!67567 () Bool)

(assert (=> b!70586 m!67567))

(declare-fun m!67569 () Bool)

(assert (=> b!70585 m!67569))

(declare-fun m!67571 () Bool)

(assert (=> b!70585 m!67571))

(declare-fun m!67573 () Bool)

(assert (=> mapNonEmpty!3127 m!67573))

(declare-fun m!67575 () Bool)

(assert (=> b!70583 m!67575))

(declare-fun m!67577 () Bool)

(assert (=> b!70583 m!67577))

(declare-fun m!67579 () Bool)

(assert (=> b!70574 m!67579))

(declare-fun m!67581 () Bool)

(assert (=> b!70574 m!67581))

(declare-fun m!67583 () Bool)

(assert (=> start!9598 m!67583))

(declare-fun m!67585 () Bool)

(assert (=> b!70589 m!67585))

(declare-fun m!67587 () Bool)

(assert (=> b!70589 m!67587))

(declare-fun m!67589 () Bool)

(assert (=> b!70589 m!67589))

(assert (=> b!70589 m!67547))

(declare-fun m!67591 () Bool)

(assert (=> b!70589 m!67591))

(assert (=> b!70589 m!67585))

(assert (=> b!70589 m!67547))

(declare-fun m!67593 () Bool)

(assert (=> b!70589 m!67593))

(declare-fun m!67595 () Bool)

(assert (=> b!70589 m!67595))

(assert (=> b!70589 m!67591))

(declare-fun m!67597 () Bool)

(assert (=> b!70589 m!67597))

(check-sat (not b!70577) (not b_next!2095) tp_is_empty!2463 (not b!70586) (not b!70583) b_and!4337 (not b!70576) (not b!70588) b_and!4339 (not b!70574) (not b_lambda!3181) (not b!70585) (not b!70589) (not mapNonEmpty!3127) (not start!9598) (not mapNonEmpty!3128) (not b_next!2093))
(check-sat b_and!4337 b_and!4339 (not b_next!2093) (not b_next!2095))
