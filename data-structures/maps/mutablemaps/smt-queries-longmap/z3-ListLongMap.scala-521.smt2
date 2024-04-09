; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13130 () Bool)

(assert start!13130)

(declare-fun b!114980 () Bool)

(declare-fun b_free!2645 () Bool)

(declare-fun b_next!2645 () Bool)

(assert (=> b!114980 (= b_free!2645 (not b_next!2645))))

(declare-fun tp!10298 () Bool)

(declare-fun b_and!7117 () Bool)

(assert (=> b!114980 (= tp!10298 b_and!7117)))

(declare-fun b!114979 () Bool)

(declare-fun b_free!2647 () Bool)

(declare-fun b_next!2647 () Bool)

(assert (=> b!114979 (= b_free!2647 (not b_next!2647))))

(declare-fun tp!10297 () Bool)

(declare-fun b_and!7119 () Bool)

(assert (=> b!114979 (= tp!10297 b_and!7119)))

(declare-fun b!114973 () Bool)

(declare-fun e!74845 () Bool)

(declare-fun tp_is_empty!2739 () Bool)

(assert (=> b!114973 (= e!74845 tp_is_empty!2739)))

(declare-fun b!114974 () Bool)

(declare-fun res!56527 () Bool)

(declare-fun e!74838 () Bool)

(assert (=> b!114974 (=> (not res!56527) (not e!74838))))

(declare-datatypes ((V!3299 0))(
  ( (V!3300 (val!1414 Int)) )
))
(declare-datatypes ((array!4480 0))(
  ( (array!4481 (arr!2122 (Array (_ BitVec 32) (_ BitVec 64))) (size!2382 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1026 0))(
  ( (ValueCellFull!1026 (v!2995 V!3299)) (EmptyCell!1026) )
))
(declare-datatypes ((array!4482 0))(
  ( (array!4483 (arr!2123 (Array (_ BitVec 32) ValueCell!1026)) (size!2383 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!960 0))(
  ( (LongMapFixedSize!961 (defaultEntry!2689 Int) (mask!6887 (_ BitVec 32)) (extraKeys!2478 (_ BitVec 32)) (zeroValue!2556 V!3299) (minValue!2556 V!3299) (_size!529 (_ BitVec 32)) (_keys!4411 array!4480) (_values!2672 array!4482) (_vacant!529 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!960)

(declare-datatypes ((Cell!758 0))(
  ( (Cell!759 (v!2996 LongMapFixedSize!960)) )
))
(declare-datatypes ((LongMap!758 0))(
  ( (LongMap!759 (underlying!390 Cell!758)) )
))
(declare-fun thiss!992 () LongMap!758)

(assert (=> b!114974 (= res!56527 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6887 newMap!16)) (_size!529 (v!2996 (underlying!390 thiss!992)))))))

(declare-fun mapNonEmpty!4149 () Bool)

(declare-fun mapRes!4149 () Bool)

(declare-fun tp!10299 () Bool)

(assert (=> mapNonEmpty!4149 (= mapRes!4149 (and tp!10299 e!74845))))

(declare-fun mapKey!4150 () (_ BitVec 32))

(declare-fun mapRest!4150 () (Array (_ BitVec 32) ValueCell!1026))

(declare-fun mapValue!4149 () ValueCell!1026)

(assert (=> mapNonEmpty!4149 (= (arr!2123 (_values!2672 newMap!16)) (store mapRest!4150 mapKey!4150 mapValue!4149))))

(declare-fun b!114975 () Bool)

(declare-fun res!56523 () Bool)

(assert (=> b!114975 (=> (not res!56523) (not e!74838))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!114975 (= res!56523 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2382 (_keys!4411 (v!2996 (underlying!390 thiss!992)))))))))

(declare-fun res!56524 () Bool)

(assert (=> start!13130 (=> (not res!56524) (not e!74838))))

(declare-fun valid!445 (LongMap!758) Bool)

(assert (=> start!13130 (= res!56524 (valid!445 thiss!992))))

(assert (=> start!13130 e!74838))

(declare-fun e!74837 () Bool)

(assert (=> start!13130 e!74837))

(assert (=> start!13130 true))

(declare-fun e!74834 () Bool)

(assert (=> start!13130 e!74834))

(declare-fun b!114976 () Bool)

(declare-fun e!74847 () Bool)

(assert (=> b!114976 (= e!74837 e!74847)))

(declare-fun b!114977 () Bool)

(declare-fun e!74841 () Bool)

(assert (=> b!114977 (= e!74838 e!74841)))

(declare-fun res!56526 () Bool)

(assert (=> b!114977 (=> (not res!56526) (not e!74841))))

(declare-datatypes ((tuple2!2472 0))(
  ( (tuple2!2473 (_1!1246 (_ BitVec 64)) (_2!1246 V!3299)) )
))
(declare-datatypes ((List!1677 0))(
  ( (Nil!1674) (Cons!1673 (h!2273 tuple2!2472) (t!5927 List!1677)) )
))
(declare-datatypes ((ListLongMap!1621 0))(
  ( (ListLongMap!1622 (toList!826 List!1677)) )
))
(declare-fun lt!59959 () ListLongMap!1621)

(declare-fun lt!59960 () ListLongMap!1621)

(assert (=> b!114977 (= res!56526 (and (= lt!59959 lt!59960) (not (= (select (arr!2122 (_keys!4411 (v!2996 (underlying!390 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2122 (_keys!4411 (v!2996 (underlying!390 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1321 (LongMapFixedSize!960) ListLongMap!1621)

(assert (=> b!114977 (= lt!59960 (map!1321 newMap!16))))

(declare-fun getCurrentListMap!502 (array!4480 array!4482 (_ BitVec 32) (_ BitVec 32) V!3299 V!3299 (_ BitVec 32) Int) ListLongMap!1621)

(assert (=> b!114977 (= lt!59959 (getCurrentListMap!502 (_keys!4411 (v!2996 (underlying!390 thiss!992))) (_values!2672 (v!2996 (underlying!390 thiss!992))) (mask!6887 (v!2996 (underlying!390 thiss!992))) (extraKeys!2478 (v!2996 (underlying!390 thiss!992))) (zeroValue!2556 (v!2996 (underlying!390 thiss!992))) (minValue!2556 (v!2996 (underlying!390 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2689 (v!2996 (underlying!390 thiss!992)))))))

(declare-fun b!114978 () Bool)

(assert (=> b!114978 (= e!74841 false)))

(declare-datatypes ((Unit!3596 0))(
  ( (Unit!3597) )
))
(declare-fun lt!59958 () Unit!3596)

(declare-fun e!74836 () Unit!3596)

(assert (=> b!114978 (= lt!59958 e!74836)))

(declare-fun c!20557 () Bool)

(declare-fun contains!854 (ListLongMap!1621 (_ BitVec 64)) Bool)

(assert (=> b!114978 (= c!20557 (contains!854 lt!59960 (select (arr!2122 (_keys!4411 (v!2996 (underlying!390 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2474 0))(
  ( (tuple2!2475 (_1!1247 Bool) (_2!1247 LongMapFixedSize!960)) )
))
(declare-fun lt!59955 () tuple2!2474)

(declare-fun update!171 (LongMapFixedSize!960 (_ BitVec 64) V!3299) tuple2!2474)

(declare-fun get!1390 (ValueCell!1026 V!3299) V!3299)

(declare-fun dynLambda!402 (Int (_ BitVec 64)) V!3299)

(assert (=> b!114978 (= lt!59955 (update!171 newMap!16 (select (arr!2122 (_keys!4411 (v!2996 (underlying!390 thiss!992)))) from!355) (get!1390 (select (arr!2123 (_values!2672 (v!2996 (underlying!390 thiss!992)))) from!355) (dynLambda!402 (defaultEntry!2689 (v!2996 (underlying!390 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun e!74839 () Bool)

(declare-fun array_inv!1281 (array!4480) Bool)

(declare-fun array_inv!1282 (array!4482) Bool)

(assert (=> b!114979 (= e!74834 (and tp!10297 tp_is_empty!2739 (array_inv!1281 (_keys!4411 newMap!16)) (array_inv!1282 (_values!2672 newMap!16)) e!74839))))

(declare-fun e!74840 () Bool)

(declare-fun e!74844 () Bool)

(assert (=> b!114980 (= e!74840 (and tp!10298 tp_is_empty!2739 (array_inv!1281 (_keys!4411 (v!2996 (underlying!390 thiss!992)))) (array_inv!1282 (_values!2672 (v!2996 (underlying!390 thiss!992)))) e!74844))))

(declare-fun mapIsEmpty!4149 () Bool)

(declare-fun mapRes!4150 () Bool)

(assert (=> mapIsEmpty!4149 mapRes!4150))

(declare-fun b!114981 () Bool)

(declare-fun res!56525 () Bool)

(assert (=> b!114981 (=> (not res!56525) (not e!74838))))

(declare-fun valid!446 (LongMapFixedSize!960) Bool)

(assert (=> b!114981 (= res!56525 (valid!446 newMap!16))))

(declare-fun b!114982 () Bool)

(declare-fun e!74835 () Bool)

(assert (=> b!114982 (= e!74835 tp_is_empty!2739)))

(declare-fun b!114983 () Bool)

(declare-fun Unit!3598 () Unit!3596)

(assert (=> b!114983 (= e!74836 Unit!3598)))

(declare-fun lt!59956 () Unit!3596)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!128 (array!4480 array!4482 (_ BitVec 32) (_ BitVec 32) V!3299 V!3299 (_ BitVec 64) (_ BitVec 32) Int) Unit!3596)

(assert (=> b!114983 (= lt!59956 (lemmaListMapContainsThenArrayContainsFrom!128 (_keys!4411 (v!2996 (underlying!390 thiss!992))) (_values!2672 (v!2996 (underlying!390 thiss!992))) (mask!6887 (v!2996 (underlying!390 thiss!992))) (extraKeys!2478 (v!2996 (underlying!390 thiss!992))) (zeroValue!2556 (v!2996 (underlying!390 thiss!992))) (minValue!2556 (v!2996 (underlying!390 thiss!992))) (select (arr!2122 (_keys!4411 (v!2996 (underlying!390 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2689 (v!2996 (underlying!390 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4480 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!114983 (arrayContainsKey!0 (_keys!4411 (v!2996 (underlying!390 thiss!992))) (select (arr!2122 (_keys!4411 (v!2996 (underlying!390 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!59961 () Unit!3596)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4480 (_ BitVec 32) (_ BitVec 32)) Unit!3596)

(assert (=> b!114983 (= lt!59961 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4411 (v!2996 (underlying!390 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1678 0))(
  ( (Nil!1675) (Cons!1674 (h!2274 (_ BitVec 64)) (t!5928 List!1678)) )
))
(declare-fun arrayNoDuplicates!0 (array!4480 (_ BitVec 32) List!1678) Bool)

(assert (=> b!114983 (arrayNoDuplicates!0 (_keys!4411 (v!2996 (underlying!390 thiss!992))) from!355 Nil!1675)))

(declare-fun lt!59957 () Unit!3596)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4480 (_ BitVec 32) (_ BitVec 64) List!1678) Unit!3596)

(assert (=> b!114983 (= lt!59957 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4411 (v!2996 (underlying!390 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2122 (_keys!4411 (v!2996 (underlying!390 thiss!992)))) from!355) (Cons!1674 (select (arr!2122 (_keys!4411 (v!2996 (underlying!390 thiss!992)))) from!355) Nil!1675)))))

(assert (=> b!114983 false))

(declare-fun b!114984 () Bool)

(declare-fun Unit!3599 () Unit!3596)

(assert (=> b!114984 (= e!74836 Unit!3599)))

(declare-fun mapNonEmpty!4150 () Bool)

(declare-fun tp!10300 () Bool)

(assert (=> mapNonEmpty!4150 (= mapRes!4150 (and tp!10300 e!74835))))

(declare-fun mapRest!4149 () (Array (_ BitVec 32) ValueCell!1026))

(declare-fun mapKey!4149 () (_ BitVec 32))

(declare-fun mapValue!4150 () ValueCell!1026)

(assert (=> mapNonEmpty!4150 (= (arr!2123 (_values!2672 (v!2996 (underlying!390 thiss!992)))) (store mapRest!4149 mapKey!4149 mapValue!4150))))

(declare-fun b!114985 () Bool)

(assert (=> b!114985 (= e!74847 e!74840)))

(declare-fun mapIsEmpty!4150 () Bool)

(assert (=> mapIsEmpty!4150 mapRes!4149))

(declare-fun b!114986 () Bool)

(declare-fun e!74843 () Bool)

(assert (=> b!114986 (= e!74843 tp_is_empty!2739)))

(declare-fun b!114987 () Bool)

(declare-fun e!74842 () Bool)

(assert (=> b!114987 (= e!74844 (and e!74842 mapRes!4150))))

(declare-fun condMapEmpty!4150 () Bool)

(declare-fun mapDefault!4149 () ValueCell!1026)

(assert (=> b!114987 (= condMapEmpty!4150 (= (arr!2123 (_values!2672 (v!2996 (underlying!390 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1026)) mapDefault!4149)))))

(declare-fun b!114988 () Bool)

(assert (=> b!114988 (= e!74842 tp_is_empty!2739)))

(declare-fun b!114989 () Bool)

(assert (=> b!114989 (= e!74839 (and e!74843 mapRes!4149))))

(declare-fun condMapEmpty!4149 () Bool)

(declare-fun mapDefault!4150 () ValueCell!1026)

(assert (=> b!114989 (= condMapEmpty!4149 (= (arr!2123 (_values!2672 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1026)) mapDefault!4150)))))

(assert (= (and start!13130 res!56524) b!114975))

(assert (= (and b!114975 res!56523) b!114981))

(assert (= (and b!114981 res!56525) b!114974))

(assert (= (and b!114974 res!56527) b!114977))

(assert (= (and b!114977 res!56526) b!114978))

(assert (= (and b!114978 c!20557) b!114983))

(assert (= (and b!114978 (not c!20557)) b!114984))

(assert (= (and b!114987 condMapEmpty!4150) mapIsEmpty!4149))

(assert (= (and b!114987 (not condMapEmpty!4150)) mapNonEmpty!4150))

(get-info :version)

(assert (= (and mapNonEmpty!4150 ((_ is ValueCellFull!1026) mapValue!4150)) b!114982))

(assert (= (and b!114987 ((_ is ValueCellFull!1026) mapDefault!4149)) b!114988))

(assert (= b!114980 b!114987))

(assert (= b!114985 b!114980))

(assert (= b!114976 b!114985))

(assert (= start!13130 b!114976))

(assert (= (and b!114989 condMapEmpty!4149) mapIsEmpty!4150))

(assert (= (and b!114989 (not condMapEmpty!4149)) mapNonEmpty!4149))

(assert (= (and mapNonEmpty!4149 ((_ is ValueCellFull!1026) mapValue!4149)) b!114973))

(assert (= (and b!114989 ((_ is ValueCellFull!1026) mapDefault!4150)) b!114986))

(assert (= b!114979 b!114989))

(assert (= start!13130 b!114979))

(declare-fun b_lambda!5163 () Bool)

(assert (=> (not b_lambda!5163) (not b!114978)))

(declare-fun t!5924 () Bool)

(declare-fun tb!2213 () Bool)

(assert (=> (and b!114980 (= (defaultEntry!2689 (v!2996 (underlying!390 thiss!992))) (defaultEntry!2689 (v!2996 (underlying!390 thiss!992)))) t!5924) tb!2213))

(declare-fun result!3685 () Bool)

(assert (=> tb!2213 (= result!3685 tp_is_empty!2739)))

(assert (=> b!114978 t!5924))

(declare-fun b_and!7121 () Bool)

(assert (= b_and!7117 (and (=> t!5924 result!3685) b_and!7121)))

(declare-fun tb!2215 () Bool)

(declare-fun t!5926 () Bool)

(assert (=> (and b!114979 (= (defaultEntry!2689 newMap!16) (defaultEntry!2689 (v!2996 (underlying!390 thiss!992)))) t!5926) tb!2215))

(declare-fun result!3689 () Bool)

(assert (= result!3689 result!3685))

(assert (=> b!114978 t!5926))

(declare-fun b_and!7123 () Bool)

(assert (= b_and!7119 (and (=> t!5926 result!3689) b_and!7123)))

(declare-fun m!131445 () Bool)

(assert (=> start!13130 m!131445))

(declare-fun m!131447 () Bool)

(assert (=> b!114980 m!131447))

(declare-fun m!131449 () Bool)

(assert (=> b!114980 m!131449))

(declare-fun m!131451 () Bool)

(assert (=> mapNonEmpty!4149 m!131451))

(declare-fun m!131453 () Bool)

(assert (=> b!114977 m!131453))

(declare-fun m!131455 () Bool)

(assert (=> b!114977 m!131455))

(declare-fun m!131457 () Bool)

(assert (=> b!114977 m!131457))

(declare-fun m!131459 () Bool)

(assert (=> b!114979 m!131459))

(declare-fun m!131461 () Bool)

(assert (=> b!114979 m!131461))

(declare-fun m!131463 () Bool)

(assert (=> b!114983 m!131463))

(declare-fun m!131465 () Bool)

(assert (=> b!114983 m!131465))

(assert (=> b!114983 m!131453))

(declare-fun m!131467 () Bool)

(assert (=> b!114983 m!131467))

(assert (=> b!114983 m!131453))

(assert (=> b!114983 m!131453))

(declare-fun m!131469 () Bool)

(assert (=> b!114983 m!131469))

(assert (=> b!114983 m!131453))

(declare-fun m!131471 () Bool)

(assert (=> b!114983 m!131471))

(assert (=> b!114978 m!131453))

(declare-fun m!131473 () Bool)

(assert (=> b!114978 m!131473))

(declare-fun m!131475 () Bool)

(assert (=> b!114978 m!131475))

(declare-fun m!131477 () Bool)

(assert (=> b!114978 m!131477))

(declare-fun m!131479 () Bool)

(assert (=> b!114978 m!131479))

(assert (=> b!114978 m!131453))

(assert (=> b!114978 m!131477))

(assert (=> b!114978 m!131453))

(assert (=> b!114978 m!131479))

(declare-fun m!131481 () Bool)

(assert (=> b!114978 m!131481))

(assert (=> b!114978 m!131475))

(declare-fun m!131483 () Bool)

(assert (=> mapNonEmpty!4150 m!131483))

(declare-fun m!131485 () Bool)

(assert (=> b!114981 m!131485))

(check-sat (not b_lambda!5163) (not b_next!2645) tp_is_empty!2739 (not b!114978) b_and!7123 (not mapNonEmpty!4149) (not b!114981) (not b!114983) (not mapNonEmpty!4150) (not b!114980) (not start!13130) (not b!114979) (not b_next!2647) b_and!7121 (not b!114977))
(check-sat b_and!7121 b_and!7123 (not b_next!2645) (not b_next!2647))
