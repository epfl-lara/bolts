; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13136 () Bool)

(assert start!13136)

(declare-fun b!115140 () Bool)

(declare-fun b_free!2657 () Bool)

(declare-fun b_next!2657 () Bool)

(assert (=> b!115140 (= b_free!2657 (not b_next!2657))))

(declare-fun tp!10336 () Bool)

(declare-fun b_and!7141 () Bool)

(assert (=> b!115140 (= tp!10336 b_and!7141)))

(declare-fun b!115148 () Bool)

(declare-fun b_free!2659 () Bool)

(declare-fun b_next!2659 () Bool)

(assert (=> b!115148 (= b_free!2659 (not b_next!2659))))

(declare-fun tp!10334 () Bool)

(declare-fun b_and!7143 () Bool)

(assert (=> b!115148 (= tp!10334 b_and!7143)))

(declare-fun b!115132 () Bool)

(declare-datatypes ((Unit!3605 0))(
  ( (Unit!3606) )
))
(declare-fun e!74980 () Unit!3605)

(declare-fun Unit!3607 () Unit!3605)

(assert (=> b!115132 (= e!74980 Unit!3607)))

(declare-fun lt!60021 () Unit!3605)

(declare-datatypes ((V!3307 0))(
  ( (V!3308 (val!1417 Int)) )
))
(declare-datatypes ((array!4492 0))(
  ( (array!4493 (arr!2128 (Array (_ BitVec 32) (_ BitVec 64))) (size!2388 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1029 0))(
  ( (ValueCellFull!1029 (v!3001 V!3307)) (EmptyCell!1029) )
))
(declare-datatypes ((array!4494 0))(
  ( (array!4495 (arr!2129 (Array (_ BitVec 32) ValueCell!1029)) (size!2389 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!966 0))(
  ( (LongMapFixedSize!967 (defaultEntry!2692 Int) (mask!6892 (_ BitVec 32)) (extraKeys!2481 (_ BitVec 32)) (zeroValue!2559 V!3307) (minValue!2559 V!3307) (_size!532 (_ BitVec 32)) (_keys!4414 array!4492) (_values!2675 array!4494) (_vacant!532 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!764 0))(
  ( (Cell!765 (v!3002 LongMapFixedSize!966)) )
))
(declare-datatypes ((LongMap!764 0))(
  ( (LongMap!765 (underlying!393 Cell!764)) )
))
(declare-fun thiss!992 () LongMap!764)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!129 (array!4492 array!4494 (_ BitVec 32) (_ BitVec 32) V!3307 V!3307 (_ BitVec 64) (_ BitVec 32) Int) Unit!3605)

(assert (=> b!115132 (= lt!60021 (lemmaListMapContainsThenArrayContainsFrom!129 (_keys!4414 (v!3002 (underlying!393 thiss!992))) (_values!2675 (v!3002 (underlying!393 thiss!992))) (mask!6892 (v!3002 (underlying!393 thiss!992))) (extraKeys!2481 (v!3002 (underlying!393 thiss!992))) (zeroValue!2559 (v!3002 (underlying!393 thiss!992))) (minValue!2559 (v!3002 (underlying!393 thiss!992))) (select (arr!2128 (_keys!4414 (v!3002 (underlying!393 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2692 (v!3002 (underlying!393 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4492 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!115132 (arrayContainsKey!0 (_keys!4414 (v!3002 (underlying!393 thiss!992))) (select (arr!2128 (_keys!4414 (v!3002 (underlying!393 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!60018 () Unit!3605)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4492 (_ BitVec 32) (_ BitVec 32)) Unit!3605)

(assert (=> b!115132 (= lt!60018 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4414 (v!3002 (underlying!393 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1681 0))(
  ( (Nil!1678) (Cons!1677 (h!2277 (_ BitVec 64)) (t!5943 List!1681)) )
))
(declare-fun arrayNoDuplicates!0 (array!4492 (_ BitVec 32) List!1681) Bool)

(assert (=> b!115132 (arrayNoDuplicates!0 (_keys!4414 (v!3002 (underlying!393 thiss!992))) from!355 Nil!1678)))

(declare-fun lt!60022 () Unit!3605)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4492 (_ BitVec 32) (_ BitVec 64) List!1681) Unit!3605)

(assert (=> b!115132 (= lt!60022 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4414 (v!3002 (underlying!393 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2128 (_keys!4414 (v!3002 (underlying!393 thiss!992)))) from!355) (Cons!1677 (select (arr!2128 (_keys!4414 (v!3002 (underlying!393 thiss!992)))) from!355) Nil!1678)))))

(assert (=> b!115132 false))

(declare-fun b!115133 () Bool)

(declare-fun e!74977 () Bool)

(declare-fun tp_is_empty!2745 () Bool)

(assert (=> b!115133 (= e!74977 tp_is_empty!2745)))

(declare-fun mapIsEmpty!4167 () Bool)

(declare-fun mapRes!4168 () Bool)

(assert (=> mapIsEmpty!4167 mapRes!4168))

(declare-fun b!115134 () Bool)

(declare-fun Unit!3608 () Unit!3605)

(assert (=> b!115134 (= e!74980 Unit!3608)))

(declare-fun b!115135 () Bool)

(declare-fun e!74983 () Bool)

(assert (=> b!115135 (= e!74983 tp_is_empty!2745)))

(declare-fun mapNonEmpty!4167 () Bool)

(declare-fun tp!10333 () Bool)

(assert (=> mapNonEmpty!4167 (= mapRes!4168 (and tp!10333 e!74977))))

(declare-fun mapValue!4167 () ValueCell!1029)

(declare-fun mapKey!4168 () (_ BitVec 32))

(declare-fun mapRest!4168 () (Array (_ BitVec 32) ValueCell!1029))

(assert (=> mapNonEmpty!4167 (= (arr!2129 (_values!2675 (v!3002 (underlying!393 thiss!992)))) (store mapRest!4168 mapKey!4168 mapValue!4167))))

(declare-fun b!115136 () Bool)

(declare-fun res!56570 () Bool)

(declare-fun e!74978 () Bool)

(assert (=> b!115136 (=> (not res!56570) (not e!74978))))

(declare-fun newMap!16 () LongMapFixedSize!966)

(declare-fun valid!447 (LongMapFixedSize!966) Bool)

(assert (=> b!115136 (= res!56570 (valid!447 newMap!16))))

(declare-fun mapIsEmpty!4168 () Bool)

(declare-fun mapRes!4167 () Bool)

(assert (=> mapIsEmpty!4168 mapRes!4167))

(declare-fun res!56569 () Bool)

(assert (=> start!13136 (=> (not res!56569) (not e!74978))))

(declare-fun valid!448 (LongMap!764) Bool)

(assert (=> start!13136 (= res!56569 (valid!448 thiss!992))))

(assert (=> start!13136 e!74978))

(declare-fun e!74971 () Bool)

(assert (=> start!13136 e!74971))

(assert (=> start!13136 true))

(declare-fun e!74976 () Bool)

(assert (=> start!13136 e!74976))

(declare-fun b!115137 () Bool)

(declare-fun e!74974 () Bool)

(assert (=> b!115137 (= e!74974 tp_is_empty!2745)))

(declare-fun b!115138 () Bool)

(declare-fun res!56568 () Bool)

(assert (=> b!115138 (=> (not res!56568) (not e!74978))))

(assert (=> b!115138 (= res!56568 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6892 newMap!16)) (_size!532 (v!3002 (underlying!393 thiss!992)))))))

(declare-fun b!115139 () Bool)

(declare-fun e!74979 () Bool)

(assert (=> b!115139 (= e!74979 (and e!74974 mapRes!4167))))

(declare-fun condMapEmpty!4168 () Bool)

(declare-fun mapDefault!4167 () ValueCell!1029)

(assert (=> b!115139 (= condMapEmpty!4168 (= (arr!2129 (_values!2675 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1029)) mapDefault!4167)))))

(declare-fun mapNonEmpty!4168 () Bool)

(declare-fun tp!10335 () Bool)

(assert (=> mapNonEmpty!4168 (= mapRes!4167 (and tp!10335 e!74983))))

(declare-fun mapKey!4167 () (_ BitVec 32))

(declare-fun mapRest!4167 () (Array (_ BitVec 32) ValueCell!1029))

(declare-fun mapValue!4168 () ValueCell!1029)

(assert (=> mapNonEmpty!4168 (= (arr!2129 (_values!2675 newMap!16)) (store mapRest!4167 mapKey!4167 mapValue!4168))))

(declare-fun e!74981 () Bool)

(declare-fun e!74973 () Bool)

(declare-fun array_inv!1285 (array!4492) Bool)

(declare-fun array_inv!1286 (array!4494) Bool)

(assert (=> b!115140 (= e!74981 (and tp!10336 tp_is_empty!2745 (array_inv!1285 (_keys!4414 (v!3002 (underlying!393 thiss!992)))) (array_inv!1286 (_values!2675 (v!3002 (underlying!393 thiss!992)))) e!74973))))

(declare-fun b!115141 () Bool)

(declare-fun e!74969 () Bool)

(assert (=> b!115141 (= e!74969 e!74981)))

(declare-fun b!115142 () Bool)

(declare-fun e!74970 () Bool)

(assert (=> b!115142 (= e!74973 (and e!74970 mapRes!4168))))

(declare-fun condMapEmpty!4167 () Bool)

(declare-fun mapDefault!4168 () ValueCell!1029)

(assert (=> b!115142 (= condMapEmpty!4167 (= (arr!2129 (_values!2675 (v!3002 (underlying!393 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1029)) mapDefault!4168)))))

(declare-fun b!115143 () Bool)

(declare-fun e!74982 () Bool)

(assert (=> b!115143 (= e!74978 e!74982)))

(declare-fun res!56572 () Bool)

(assert (=> b!115143 (=> (not res!56572) (not e!74982))))

(declare-datatypes ((tuple2!2484 0))(
  ( (tuple2!2485 (_1!1252 (_ BitVec 64)) (_2!1252 V!3307)) )
))
(declare-datatypes ((List!1682 0))(
  ( (Nil!1679) (Cons!1678 (h!2278 tuple2!2484) (t!5944 List!1682)) )
))
(declare-datatypes ((ListLongMap!1627 0))(
  ( (ListLongMap!1628 (toList!829 List!1682)) )
))
(declare-fun lt!60019 () ListLongMap!1627)

(declare-fun lt!60023 () ListLongMap!1627)

(assert (=> b!115143 (= res!56572 (and (= lt!60023 lt!60019) (not (= (select (arr!2128 (_keys!4414 (v!3002 (underlying!393 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2128 (_keys!4414 (v!3002 (underlying!393 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1324 (LongMapFixedSize!966) ListLongMap!1627)

(assert (=> b!115143 (= lt!60019 (map!1324 newMap!16))))

(declare-fun getCurrentListMap!503 (array!4492 array!4494 (_ BitVec 32) (_ BitVec 32) V!3307 V!3307 (_ BitVec 32) Int) ListLongMap!1627)

(assert (=> b!115143 (= lt!60023 (getCurrentListMap!503 (_keys!4414 (v!3002 (underlying!393 thiss!992))) (_values!2675 (v!3002 (underlying!393 thiss!992))) (mask!6892 (v!3002 (underlying!393 thiss!992))) (extraKeys!2481 (v!3002 (underlying!393 thiss!992))) (zeroValue!2559 (v!3002 (underlying!393 thiss!992))) (minValue!2559 (v!3002 (underlying!393 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2692 (v!3002 (underlying!393 thiss!992)))))))

(declare-fun b!115144 () Bool)

(assert (=> b!115144 (= e!74982 false)))

(declare-fun lt!60020 () Unit!3605)

(assert (=> b!115144 (= lt!60020 e!74980)))

(declare-fun c!20566 () Bool)

(declare-fun contains!857 (ListLongMap!1627 (_ BitVec 64)) Bool)

(assert (=> b!115144 (= c!20566 (contains!857 lt!60019 (select (arr!2128 (_keys!4414 (v!3002 (underlying!393 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2486 0))(
  ( (tuple2!2487 (_1!1253 Bool) (_2!1253 LongMapFixedSize!966)) )
))
(declare-fun lt!60024 () tuple2!2486)

(declare-fun update!174 (LongMapFixedSize!966 (_ BitVec 64) V!3307) tuple2!2486)

(declare-fun get!1395 (ValueCell!1029 V!3307) V!3307)

(declare-fun dynLambda!405 (Int (_ BitVec 64)) V!3307)

(assert (=> b!115144 (= lt!60024 (update!174 newMap!16 (select (arr!2128 (_keys!4414 (v!3002 (underlying!393 thiss!992)))) from!355) (get!1395 (select (arr!2129 (_values!2675 (v!3002 (underlying!393 thiss!992)))) from!355) (dynLambda!405 (defaultEntry!2692 (v!3002 (underlying!393 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!115145 () Bool)

(assert (=> b!115145 (= e!74971 e!74969)))

(declare-fun b!115146 () Bool)

(declare-fun res!56571 () Bool)

(assert (=> b!115146 (=> (not res!56571) (not e!74978))))

(assert (=> b!115146 (= res!56571 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2388 (_keys!4414 (v!3002 (underlying!393 thiss!992)))))))))

(declare-fun b!115147 () Bool)

(assert (=> b!115147 (= e!74970 tp_is_empty!2745)))

(assert (=> b!115148 (= e!74976 (and tp!10334 tp_is_empty!2745 (array_inv!1285 (_keys!4414 newMap!16)) (array_inv!1286 (_values!2675 newMap!16)) e!74979))))

(assert (= (and start!13136 res!56569) b!115146))

(assert (= (and b!115146 res!56571) b!115136))

(assert (= (and b!115136 res!56570) b!115138))

(assert (= (and b!115138 res!56568) b!115143))

(assert (= (and b!115143 res!56572) b!115144))

(assert (= (and b!115144 c!20566) b!115132))

(assert (= (and b!115144 (not c!20566)) b!115134))

(assert (= (and b!115142 condMapEmpty!4167) mapIsEmpty!4167))

(assert (= (and b!115142 (not condMapEmpty!4167)) mapNonEmpty!4167))

(get-info :version)

(assert (= (and mapNonEmpty!4167 ((_ is ValueCellFull!1029) mapValue!4167)) b!115133))

(assert (= (and b!115142 ((_ is ValueCellFull!1029) mapDefault!4168)) b!115147))

(assert (= b!115140 b!115142))

(assert (= b!115141 b!115140))

(assert (= b!115145 b!115141))

(assert (= start!13136 b!115145))

(assert (= (and b!115139 condMapEmpty!4168) mapIsEmpty!4168))

(assert (= (and b!115139 (not condMapEmpty!4168)) mapNonEmpty!4168))

(assert (= (and mapNonEmpty!4168 ((_ is ValueCellFull!1029) mapValue!4168)) b!115135))

(assert (= (and b!115139 ((_ is ValueCellFull!1029) mapDefault!4167)) b!115137))

(assert (= b!115148 b!115139))

(assert (= start!13136 b!115148))

(declare-fun b_lambda!5169 () Bool)

(assert (=> (not b_lambda!5169) (not b!115144)))

(declare-fun t!5940 () Bool)

(declare-fun tb!2225 () Bool)

(assert (=> (and b!115140 (= (defaultEntry!2692 (v!3002 (underlying!393 thiss!992))) (defaultEntry!2692 (v!3002 (underlying!393 thiss!992)))) t!5940) tb!2225))

(declare-fun result!3703 () Bool)

(assert (=> tb!2225 (= result!3703 tp_is_empty!2745)))

(assert (=> b!115144 t!5940))

(declare-fun b_and!7145 () Bool)

(assert (= b_and!7141 (and (=> t!5940 result!3703) b_and!7145)))

(declare-fun t!5942 () Bool)

(declare-fun tb!2227 () Bool)

(assert (=> (and b!115148 (= (defaultEntry!2692 newMap!16) (defaultEntry!2692 (v!3002 (underlying!393 thiss!992)))) t!5942) tb!2227))

(declare-fun result!3707 () Bool)

(assert (= result!3707 result!3703))

(assert (=> b!115144 t!5942))

(declare-fun b_and!7147 () Bool)

(assert (= b_and!7143 (and (=> t!5942 result!3707) b_and!7147)))

(declare-fun m!131571 () Bool)

(assert (=> b!115136 m!131571))

(declare-fun m!131573 () Bool)

(assert (=> b!115148 m!131573))

(declare-fun m!131575 () Bool)

(assert (=> b!115148 m!131575))

(declare-fun m!131577 () Bool)

(assert (=> b!115144 m!131577))

(declare-fun m!131579 () Bool)

(assert (=> b!115144 m!131579))

(declare-fun m!131581 () Bool)

(assert (=> b!115144 m!131581))

(declare-fun m!131583 () Bool)

(assert (=> b!115144 m!131583))

(declare-fun m!131585 () Bool)

(assert (=> b!115144 m!131585))

(assert (=> b!115144 m!131577))

(assert (=> b!115144 m!131583))

(assert (=> b!115144 m!131577))

(assert (=> b!115144 m!131585))

(declare-fun m!131587 () Bool)

(assert (=> b!115144 m!131587))

(assert (=> b!115144 m!131581))

(declare-fun m!131589 () Bool)

(assert (=> b!115132 m!131589))

(declare-fun m!131591 () Bool)

(assert (=> b!115132 m!131591))

(assert (=> b!115132 m!131577))

(declare-fun m!131593 () Bool)

(assert (=> b!115132 m!131593))

(assert (=> b!115132 m!131577))

(assert (=> b!115132 m!131577))

(declare-fun m!131595 () Bool)

(assert (=> b!115132 m!131595))

(assert (=> b!115132 m!131577))

(declare-fun m!131597 () Bool)

(assert (=> b!115132 m!131597))

(assert (=> b!115143 m!131577))

(declare-fun m!131599 () Bool)

(assert (=> b!115143 m!131599))

(declare-fun m!131601 () Bool)

(assert (=> b!115143 m!131601))

(declare-fun m!131603 () Bool)

(assert (=> mapNonEmpty!4167 m!131603))

(declare-fun m!131605 () Bool)

(assert (=> mapNonEmpty!4168 m!131605))

(declare-fun m!131607 () Bool)

(assert (=> b!115140 m!131607))

(declare-fun m!131609 () Bool)

(assert (=> b!115140 m!131609))

(declare-fun m!131611 () Bool)

(assert (=> start!13136 m!131611))

(check-sat (not b_lambda!5169) (not b_next!2657) (not b!115136) (not b!115140) b_and!7147 (not b_next!2659) (not b!115143) (not mapNonEmpty!4167) tp_is_empty!2745 (not b!115148) (not b!115144) b_and!7145 (not b!115132) (not mapNonEmpty!4168) (not start!13136))
(check-sat b_and!7145 b_and!7147 (not b_next!2657) (not b_next!2659))
