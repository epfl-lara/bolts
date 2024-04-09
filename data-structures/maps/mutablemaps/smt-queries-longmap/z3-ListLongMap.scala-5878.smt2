; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75828 () Bool)

(assert start!75828)

(declare-fun b!891480 () Bool)

(declare-fun b_free!15771 () Bool)

(declare-fun b_next!15771 () Bool)

(assert (=> b!891480 (= b_free!15771 (not b_next!15771))))

(declare-fun tp!55283 () Bool)

(declare-fun b_and!26029 () Bool)

(assert (=> b!891480 (= tp!55283 b_and!26029)))

(declare-fun b!891469 () Bool)

(declare-fun res!604103 () Bool)

(declare-fun e!497517 () Bool)

(assert (=> b!891469 (=> res!604103 e!497517)))

(declare-datatypes ((array!52164 0))(
  ( (array!52165 (arr!25084 (Array (_ BitVec 32) (_ BitVec 64))) (size!25529 (_ BitVec 32))) )
))
(declare-datatypes ((V!29097 0))(
  ( (V!29098 (val!9100 Int)) )
))
(declare-datatypes ((ValueCell!8568 0))(
  ( (ValueCellFull!8568 (v!11572 V!29097)) (EmptyCell!8568) )
))
(declare-datatypes ((array!52166 0))(
  ( (array!52167 (arr!25085 (Array (_ BitVec 32) ValueCell!8568)) (size!25530 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4152 0))(
  ( (LongMapFixedSize!4153 (defaultEntry!5273 Int) (mask!25763 (_ BitVec 32)) (extraKeys!4967 (_ BitVec 32)) (zeroValue!5071 V!29097) (minValue!5071 V!29097) (_size!2131 (_ BitVec 32)) (_keys!9952 array!52164) (_values!5258 array!52166) (_vacant!2131 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4152)

(declare-datatypes ((List!17831 0))(
  ( (Nil!17828) (Cons!17827 (h!18958 (_ BitVec 64)) (t!25138 List!17831)) )
))
(declare-fun arrayNoDuplicates!0 (array!52164 (_ BitVec 32) List!17831) Bool)

(assert (=> b!891469 (= res!604103 (not (arrayNoDuplicates!0 (_keys!9952 thiss!1181) #b00000000000000000000000000000000 Nil!17828)))))

(declare-fun b!891470 () Bool)

(declare-fun e!497520 () Bool)

(declare-fun e!497519 () Bool)

(declare-fun mapRes!28703 () Bool)

(assert (=> b!891470 (= e!497520 (and e!497519 mapRes!28703))))

(declare-fun condMapEmpty!28703 () Bool)

(declare-fun mapDefault!28703 () ValueCell!8568)

(assert (=> b!891470 (= condMapEmpty!28703 (= (arr!25085 (_values!5258 thiss!1181)) ((as const (Array (_ BitVec 32) ValueCell!8568)) mapDefault!28703)))))

(declare-fun b!891471 () Bool)

(declare-fun e!497518 () Bool)

(declare-datatypes ((SeekEntryResult!8822 0))(
  ( (MissingZero!8822 (index!37658 (_ BitVec 32))) (Found!8822 (index!37659 (_ BitVec 32))) (Intermediate!8822 (undefined!9634 Bool) (index!37660 (_ BitVec 32)) (x!75751 (_ BitVec 32))) (Undefined!8822) (MissingVacant!8822 (index!37661 (_ BitVec 32))) )
))
(declare-fun lt!402725 () SeekEntryResult!8822)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!891471 (= e!497518 (inRange!0 (index!37659 lt!402725) (mask!25763 thiss!1181)))))

(declare-fun mapNonEmpty!28703 () Bool)

(declare-fun tp!55282 () Bool)

(declare-fun e!497516 () Bool)

(assert (=> mapNonEmpty!28703 (= mapRes!28703 (and tp!55282 e!497516))))

(declare-fun mapRest!28703 () (Array (_ BitVec 32) ValueCell!8568))

(declare-fun mapKey!28703 () (_ BitVec 32))

(declare-fun mapValue!28703 () ValueCell!8568)

(assert (=> mapNonEmpty!28703 (= (arr!25085 (_values!5258 thiss!1181)) (store mapRest!28703 mapKey!28703 mapValue!28703))))

(declare-fun b!891472 () Bool)

(declare-fun tp_is_empty!18099 () Bool)

(assert (=> b!891472 (= e!497519 tp_is_empty!18099)))

(declare-fun b!891473 () Bool)

(assert (=> b!891473 (= e!497516 tp_is_empty!18099)))

(declare-fun b!891474 () Bool)

(declare-fun res!604102 () Bool)

(assert (=> b!891474 (=> res!604102 e!497517)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!52164 (_ BitVec 32)) Bool)

(assert (=> b!891474 (= res!604102 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!9952 thiss!1181) (mask!25763 thiss!1181))))))

(declare-fun b!891475 () Bool)

(declare-fun res!604104 () Bool)

(declare-fun e!497521 () Bool)

(assert (=> b!891475 (=> (not res!604104) (not e!497521))))

(declare-fun key!785 () (_ BitVec 64))

(assert (=> b!891475 (= res!604104 (not (= key!785 (bvneg key!785))))))

(declare-fun res!604098 () Bool)

(assert (=> start!75828 (=> (not res!604098) (not e!497521))))

(declare-fun valid!1597 (LongMapFixedSize!4152) Bool)

(assert (=> start!75828 (= res!604098 (valid!1597 thiss!1181))))

(assert (=> start!75828 e!497521))

(declare-fun e!497515 () Bool)

(assert (=> start!75828 e!497515))

(assert (=> start!75828 true))

(declare-fun mapIsEmpty!28703 () Bool)

(assert (=> mapIsEmpty!28703 mapRes!28703))

(declare-fun b!891476 () Bool)

(declare-fun e!497522 () Bool)

(assert (=> b!891476 (= e!497522 e!497517)))

(declare-fun res!604097 () Bool)

(assert (=> b!891476 (=> res!604097 e!497517)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!891476 (= res!604097 (not (validMask!0 (mask!25763 thiss!1181))))))

(declare-datatypes ((tuple2!11980 0))(
  ( (tuple2!11981 (_1!6000 (_ BitVec 64)) (_2!6000 V!29097)) )
))
(declare-datatypes ((List!17832 0))(
  ( (Nil!17829) (Cons!17828 (h!18959 tuple2!11980) (t!25139 List!17832)) )
))
(declare-datatypes ((ListLongMap!10691 0))(
  ( (ListLongMap!10692 (toList!5361 List!17832)) )
))
(declare-fun lt!402728 () ListLongMap!10691)

(declare-fun contains!4338 (ListLongMap!10691 (_ BitVec 64)) Bool)

(assert (=> b!891476 (contains!4338 lt!402728 (select (arr!25084 (_keys!9952 thiss!1181)) (index!37659 lt!402725)))))

(declare-fun getCurrentListMap!2614 (array!52164 array!52166 (_ BitVec 32) (_ BitVec 32) V!29097 V!29097 (_ BitVec 32) Int) ListLongMap!10691)

(assert (=> b!891476 (= lt!402728 (getCurrentListMap!2614 (_keys!9952 thiss!1181) (_values!5258 thiss!1181) (mask!25763 thiss!1181) (extraKeys!4967 thiss!1181) (zeroValue!5071 thiss!1181) (minValue!5071 thiss!1181) #b00000000000000000000000000000000 (defaultEntry!5273 thiss!1181)))))

(declare-datatypes ((Unit!30327 0))(
  ( (Unit!30328) )
))
(declare-fun lt!402724 () Unit!30327)

(declare-fun lemmaValidKeyInArrayIsInListMap!207 (array!52164 array!52166 (_ BitVec 32) (_ BitVec 32) V!29097 V!29097 (_ BitVec 32) Int) Unit!30327)

(assert (=> b!891476 (= lt!402724 (lemmaValidKeyInArrayIsInListMap!207 (_keys!9952 thiss!1181) (_values!5258 thiss!1181) (mask!25763 thiss!1181) (extraKeys!4967 thiss!1181) (zeroValue!5071 thiss!1181) (minValue!5071 thiss!1181) (index!37659 lt!402725) (defaultEntry!5273 thiss!1181)))))

(declare-fun arrayContainsKey!0 (array!52164 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!891476 (arrayContainsKey!0 (_keys!9952 thiss!1181) key!785 #b00000000000000000000000000000000)))

(declare-fun lt!402729 () Unit!30327)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!52164 (_ BitVec 64) (_ BitVec 32)) Unit!30327)

(assert (=> b!891476 (= lt!402729 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!9952 thiss!1181) key!785 (index!37659 lt!402725)))))

(declare-fun b!891477 () Bool)

(assert (=> b!891477 (= e!497517 true)))

(declare-fun lt!402726 () Bool)

(assert (=> b!891477 (= lt!402726 (contains!4338 lt!402728 key!785))))

(declare-fun b!891478 () Bool)

(declare-fun res!604100 () Bool)

(assert (=> b!891478 (=> res!604100 e!497517)))

(assert (=> b!891478 (= res!604100 (or (not (= (size!25530 (_values!5258 thiss!1181)) (bvadd #b00000000000000000000000000000001 (mask!25763 thiss!1181)))) (not (= (size!25529 (_keys!9952 thiss!1181)) (size!25530 (_values!5258 thiss!1181)))) (bvslt (mask!25763 thiss!1181) #b00000000000000000000000000000000) (bvslt (extraKeys!4967 thiss!1181) #b00000000000000000000000000000000) (bvsgt (extraKeys!4967 thiss!1181) #b00000000000000000000000000000011)))))

(declare-fun b!891479 () Bool)

(assert (=> b!891479 (= e!497521 (not e!497522))))

(declare-fun res!604099 () Bool)

(assert (=> b!891479 (=> res!604099 e!497522)))

(get-info :version)

(assert (=> b!891479 (= res!604099 (not ((_ is Found!8822) lt!402725)))))

(assert (=> b!891479 e!497518))

(declare-fun res!604101 () Bool)

(assert (=> b!891479 (=> res!604101 e!497518)))

(assert (=> b!891479 (= res!604101 (not ((_ is Found!8822) lt!402725)))))

(declare-fun lt!402727 () Unit!30327)

(declare-fun lemmaSeekEntryGivesInRangeIndex!42 (array!52164 array!52166 (_ BitVec 32) (_ BitVec 32) V!29097 V!29097 (_ BitVec 64)) Unit!30327)

(assert (=> b!891479 (= lt!402727 (lemmaSeekEntryGivesInRangeIndex!42 (_keys!9952 thiss!1181) (_values!5258 thiss!1181) (mask!25763 thiss!1181) (extraKeys!4967 thiss!1181) (zeroValue!5071 thiss!1181) (minValue!5071 thiss!1181) key!785))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!52164 (_ BitVec 32)) SeekEntryResult!8822)

(assert (=> b!891479 (= lt!402725 (seekEntry!0 key!785 (_keys!9952 thiss!1181) (mask!25763 thiss!1181)))))

(declare-fun array_inv!19682 (array!52164) Bool)

(declare-fun array_inv!19683 (array!52166) Bool)

(assert (=> b!891480 (= e!497515 (and tp!55283 tp_is_empty!18099 (array_inv!19682 (_keys!9952 thiss!1181)) (array_inv!19683 (_values!5258 thiss!1181)) e!497520))))

(assert (= (and start!75828 res!604098) b!891475))

(assert (= (and b!891475 res!604104) b!891479))

(assert (= (and b!891479 (not res!604101)) b!891471))

(assert (= (and b!891479 (not res!604099)) b!891476))

(assert (= (and b!891476 (not res!604097)) b!891478))

(assert (= (and b!891478 (not res!604100)) b!891474))

(assert (= (and b!891474 (not res!604102)) b!891469))

(assert (= (and b!891469 (not res!604103)) b!891477))

(assert (= (and b!891470 condMapEmpty!28703) mapIsEmpty!28703))

(assert (= (and b!891470 (not condMapEmpty!28703)) mapNonEmpty!28703))

(assert (= (and mapNonEmpty!28703 ((_ is ValueCellFull!8568) mapValue!28703)) b!891473))

(assert (= (and b!891470 ((_ is ValueCellFull!8568) mapDefault!28703)) b!891472))

(assert (= b!891480 b!891470))

(assert (= start!75828 b!891480))

(declare-fun m!829877 () Bool)

(assert (=> b!891474 m!829877))

(declare-fun m!829879 () Bool)

(assert (=> b!891479 m!829879))

(declare-fun m!829881 () Bool)

(assert (=> b!891479 m!829881))

(declare-fun m!829883 () Bool)

(assert (=> mapNonEmpty!28703 m!829883))

(declare-fun m!829885 () Bool)

(assert (=> start!75828 m!829885))

(declare-fun m!829887 () Bool)

(assert (=> b!891471 m!829887))

(declare-fun m!829889 () Bool)

(assert (=> b!891469 m!829889))

(declare-fun m!829891 () Bool)

(assert (=> b!891477 m!829891))

(declare-fun m!829893 () Bool)

(assert (=> b!891476 m!829893))

(declare-fun m!829895 () Bool)

(assert (=> b!891476 m!829895))

(declare-fun m!829897 () Bool)

(assert (=> b!891476 m!829897))

(declare-fun m!829899 () Bool)

(assert (=> b!891476 m!829899))

(declare-fun m!829901 () Bool)

(assert (=> b!891476 m!829901))

(declare-fun m!829903 () Bool)

(assert (=> b!891476 m!829903))

(assert (=> b!891476 m!829895))

(declare-fun m!829905 () Bool)

(assert (=> b!891476 m!829905))

(declare-fun m!829907 () Bool)

(assert (=> b!891480 m!829907))

(declare-fun m!829909 () Bool)

(assert (=> b!891480 m!829909))

(check-sat (not b!891471) b_and!26029 (not b!891476) tp_is_empty!18099 (not b!891479) (not b!891480) (not b!891474) (not b!891469) (not mapNonEmpty!28703) (not start!75828) (not b_next!15771) (not b!891477))
(check-sat b_and!26029 (not b_next!15771))
