; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13160 () Bool)

(assert start!13160)

(declare-fun b!115661 () Bool)

(declare-fun b_free!2705 () Bool)

(declare-fun b_next!2705 () Bool)

(assert (=> b!115661 (= b_free!2705 (not b_next!2705))))

(declare-fun tp!10477 () Bool)

(declare-fun b_and!7197 () Bool)

(assert (=> b!115661 (= tp!10477 b_and!7197)))

(declare-fun b!115670 () Bool)

(declare-fun b_free!2707 () Bool)

(declare-fun b_next!2707 () Bool)

(assert (=> b!115670 (= b_free!2707 (not b_next!2707))))

(declare-fun tp!10478 () Bool)

(declare-fun b_and!7199 () Bool)

(assert (=> b!115670 (= tp!10478 b_and!7199)))

(declare-fun tp_is_empty!2769 () Bool)

(declare-fun e!75451 () Bool)

(declare-fun e!75450 () Bool)

(declare-datatypes ((V!3339 0))(
  ( (V!3340 (val!1429 Int)) )
))
(declare-datatypes ((array!4540 0))(
  ( (array!4541 (arr!2152 (Array (_ BitVec 32) (_ BitVec 64))) (size!2412 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1041 0))(
  ( (ValueCellFull!1041 (v!3023 V!3339)) (EmptyCell!1041) )
))
(declare-datatypes ((array!4542 0))(
  ( (array!4543 (arr!2153 (Array (_ BitVec 32) ValueCell!1041)) (size!2413 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!990 0))(
  ( (LongMapFixedSize!991 (defaultEntry!2704 Int) (mask!6912 (_ BitVec 32)) (extraKeys!2493 (_ BitVec 32)) (zeroValue!2571 V!3339) (minValue!2571 V!3339) (_size!544 (_ BitVec 32)) (_keys!4426 array!4540) (_values!2687 array!4542) (_vacant!544 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!784 0))(
  ( (Cell!785 (v!3024 LongMapFixedSize!990)) )
))
(declare-datatypes ((LongMap!784 0))(
  ( (LongMap!785 (underlying!403 Cell!784)) )
))
(declare-fun thiss!992 () LongMap!784)

(declare-fun array_inv!1301 (array!4540) Bool)

(declare-fun array_inv!1302 (array!4542) Bool)

(assert (=> b!115661 (= e!75451 (and tp!10477 tp_is_empty!2769 (array_inv!1301 (_keys!4426 (v!3024 (underlying!403 thiss!992)))) (array_inv!1302 (_values!2687 (v!3024 (underlying!403 thiss!992)))) e!75450))))

(declare-fun b!115662 () Bool)

(declare-fun e!75449 () Bool)

(assert (=> b!115662 (= e!75449 tp_is_empty!2769)))

(declare-fun b!115663 () Bool)

(declare-fun e!75456 () Bool)

(assert (=> b!115663 (= e!75456 tp_is_empty!2769)))

(declare-fun res!56727 () Bool)

(declare-fun e!75453 () Bool)

(assert (=> start!13160 (=> (not res!56727) (not e!75453))))

(declare-fun valid!459 (LongMap!784) Bool)

(assert (=> start!13160 (= res!56727 (valid!459 thiss!992))))

(assert (=> start!13160 e!75453))

(declare-fun e!75446 () Bool)

(assert (=> start!13160 e!75446))

(assert (=> start!13160 true))

(declare-fun e!75457 () Bool)

(assert (=> start!13160 e!75457))

(declare-fun b!115664 () Bool)

(declare-fun e!75455 () Bool)

(assert (=> b!115664 (= e!75455 e!75451)))

(declare-fun b!115665 () Bool)

(declare-fun e!75452 () Bool)

(assert (=> b!115665 (= e!75452 tp_is_empty!2769)))

(declare-fun b!115666 () Bool)

(declare-fun res!56728 () Bool)

(assert (=> b!115666 (=> (not res!56728) (not e!75453))))

(declare-fun newMap!16 () LongMapFixedSize!990)

(declare-fun valid!460 (LongMapFixedSize!990) Bool)

(assert (=> b!115666 (= res!56728 (valid!460 newMap!16))))

(declare-fun b!115667 () Bool)

(assert (=> b!115667 (= e!75453 false)))

(declare-datatypes ((tuple2!2500 0))(
  ( (tuple2!2501 (_1!1260 (_ BitVec 64)) (_2!1260 V!3339)) )
))
(declare-datatypes ((List!1689 0))(
  ( (Nil!1686) (Cons!1685 (h!2285 tuple2!2500) (t!5955 List!1689)) )
))
(declare-datatypes ((ListLongMap!1639 0))(
  ( (ListLongMap!1640 (toList!835 List!1689)) )
))
(declare-fun lt!60092 () ListLongMap!1639)

(declare-fun map!1337 (LongMapFixedSize!990) ListLongMap!1639)

(assert (=> b!115667 (= lt!60092 (map!1337 newMap!16))))

(declare-fun lt!60093 () ListLongMap!1639)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!508 (array!4540 array!4542 (_ BitVec 32) (_ BitVec 32) V!3339 V!3339 (_ BitVec 32) Int) ListLongMap!1639)

(assert (=> b!115667 (= lt!60093 (getCurrentListMap!508 (_keys!4426 (v!3024 (underlying!403 thiss!992))) (_values!2687 (v!3024 (underlying!403 thiss!992))) (mask!6912 (v!3024 (underlying!403 thiss!992))) (extraKeys!2493 (v!3024 (underlying!403 thiss!992))) (zeroValue!2571 (v!3024 (underlying!403 thiss!992))) (minValue!2571 (v!3024 (underlying!403 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2704 (v!3024 (underlying!403 thiss!992)))))))

(declare-fun b!115668 () Bool)

(declare-fun e!75448 () Bool)

(declare-fun mapRes!4240 () Bool)

(assert (=> b!115668 (= e!75448 (and e!75456 mapRes!4240))))

(declare-fun condMapEmpty!4240 () Bool)

(declare-fun mapDefault!4240 () ValueCell!1041)

(assert (=> b!115668 (= condMapEmpty!4240 (= (arr!2153 (_values!2687 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1041)) mapDefault!4240)))))

(declare-fun mapNonEmpty!4239 () Bool)

(declare-fun mapRes!4239 () Bool)

(declare-fun tp!10480 () Bool)

(declare-fun e!75445 () Bool)

(assert (=> mapNonEmpty!4239 (= mapRes!4239 (and tp!10480 e!75445))))

(declare-fun mapValue!4240 () ValueCell!1041)

(declare-fun mapRest!4239 () (Array (_ BitVec 32) ValueCell!1041))

(declare-fun mapKey!4240 () (_ BitVec 32))

(assert (=> mapNonEmpty!4239 (= (arr!2153 (_values!2687 (v!3024 (underlying!403 thiss!992)))) (store mapRest!4239 mapKey!4240 mapValue!4240))))

(declare-fun b!115669 () Bool)

(declare-fun res!56726 () Bool)

(assert (=> b!115669 (=> (not res!56726) (not e!75453))))

(assert (=> b!115669 (= res!56726 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2412 (_keys!4426 (v!3024 (underlying!403 thiss!992)))))))))

(assert (=> b!115670 (= e!75457 (and tp!10478 tp_is_empty!2769 (array_inv!1301 (_keys!4426 newMap!16)) (array_inv!1302 (_values!2687 newMap!16)) e!75448))))

(declare-fun b!115671 () Bool)

(assert (=> b!115671 (= e!75445 tp_is_empty!2769)))

(declare-fun mapIsEmpty!4239 () Bool)

(assert (=> mapIsEmpty!4239 mapRes!4240))

(declare-fun mapIsEmpty!4240 () Bool)

(assert (=> mapIsEmpty!4240 mapRes!4239))

(declare-fun b!115672 () Bool)

(assert (=> b!115672 (= e!75446 e!75455)))

(declare-fun b!115673 () Bool)

(declare-fun res!56725 () Bool)

(assert (=> b!115673 (=> (not res!56725) (not e!75453))))

(assert (=> b!115673 (= res!56725 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6912 newMap!16)) (_size!544 (v!3024 (underlying!403 thiss!992)))))))

(declare-fun mapNonEmpty!4240 () Bool)

(declare-fun tp!10479 () Bool)

(assert (=> mapNonEmpty!4240 (= mapRes!4240 (and tp!10479 e!75449))))

(declare-fun mapRest!4240 () (Array (_ BitVec 32) ValueCell!1041))

(declare-fun mapKey!4239 () (_ BitVec 32))

(declare-fun mapValue!4239 () ValueCell!1041)

(assert (=> mapNonEmpty!4240 (= (arr!2153 (_values!2687 newMap!16)) (store mapRest!4240 mapKey!4239 mapValue!4239))))

(declare-fun b!115674 () Bool)

(assert (=> b!115674 (= e!75450 (and e!75452 mapRes!4239))))

(declare-fun condMapEmpty!4239 () Bool)

(declare-fun mapDefault!4239 () ValueCell!1041)

(assert (=> b!115674 (= condMapEmpty!4239 (= (arr!2153 (_values!2687 (v!3024 (underlying!403 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1041)) mapDefault!4239)))))

(assert (= (and start!13160 res!56727) b!115669))

(assert (= (and b!115669 res!56726) b!115666))

(assert (= (and b!115666 res!56728) b!115673))

(assert (= (and b!115673 res!56725) b!115667))

(assert (= (and b!115674 condMapEmpty!4239) mapIsEmpty!4240))

(assert (= (and b!115674 (not condMapEmpty!4239)) mapNonEmpty!4239))

(get-info :version)

(assert (= (and mapNonEmpty!4239 ((_ is ValueCellFull!1041) mapValue!4240)) b!115671))

(assert (= (and b!115674 ((_ is ValueCellFull!1041) mapDefault!4239)) b!115665))

(assert (= b!115661 b!115674))

(assert (= b!115664 b!115661))

(assert (= b!115672 b!115664))

(assert (= start!13160 b!115672))

(assert (= (and b!115668 condMapEmpty!4240) mapIsEmpty!4239))

(assert (= (and b!115668 (not condMapEmpty!4240)) mapNonEmpty!4240))

(assert (= (and mapNonEmpty!4240 ((_ is ValueCellFull!1041) mapValue!4239)) b!115662))

(assert (= (and b!115668 ((_ is ValueCellFull!1041) mapDefault!4240)) b!115663))

(assert (= b!115670 b!115668))

(assert (= start!13160 b!115670))

(declare-fun m!131861 () Bool)

(assert (=> b!115667 m!131861))

(declare-fun m!131863 () Bool)

(assert (=> b!115667 m!131863))

(declare-fun m!131865 () Bool)

(assert (=> mapNonEmpty!4240 m!131865))

(declare-fun m!131867 () Bool)

(assert (=> b!115670 m!131867))

(declare-fun m!131869 () Bool)

(assert (=> b!115670 m!131869))

(declare-fun m!131871 () Bool)

(assert (=> mapNonEmpty!4239 m!131871))

(declare-fun m!131873 () Bool)

(assert (=> b!115661 m!131873))

(declare-fun m!131875 () Bool)

(assert (=> b!115661 m!131875))

(declare-fun m!131877 () Bool)

(assert (=> start!13160 m!131877))

(declare-fun m!131879 () Bool)

(assert (=> b!115666 m!131879))

(check-sat b_and!7199 tp_is_empty!2769 (not b_next!2707) (not b!115666) (not b_next!2705) (not b!115667) (not b!115661) (not mapNonEmpty!4240) b_and!7197 (not b!115670) (not start!13160) (not mapNonEmpty!4239))
(check-sat b_and!7197 b_and!7199 (not b_next!2705) (not b_next!2707))
