; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13154 () Bool)

(assert start!13154)

(declare-fun b!115537 () Bool)

(declare-fun b_free!2693 () Bool)

(declare-fun b_next!2693 () Bool)

(assert (=> b!115537 (= b_free!2693 (not b_next!2693))))

(declare-fun tp!10444 () Bool)

(declare-fun b_and!7185 () Bool)

(assert (=> b!115537 (= tp!10444 b_and!7185)))

(declare-fun b!115542 () Bool)

(declare-fun b_free!2695 () Bool)

(declare-fun b_next!2695 () Bool)

(assert (=> b!115542 (= b_free!2695 (not b_next!2695))))

(declare-fun tp!10441 () Bool)

(declare-fun b_and!7187 () Bool)

(assert (=> b!115542 (= tp!10441 b_and!7187)))

(declare-fun b!115535 () Bool)

(declare-fun e!75331 () Bool)

(declare-fun e!75339 () Bool)

(declare-fun mapRes!4222 () Bool)

(assert (=> b!115535 (= e!75331 (and e!75339 mapRes!4222))))

(declare-fun condMapEmpty!4222 () Bool)

(declare-datatypes ((V!3331 0))(
  ( (V!3332 (val!1426 Int)) )
))
(declare-datatypes ((array!4528 0))(
  ( (array!4529 (arr!2146 (Array (_ BitVec 32) (_ BitVec 64))) (size!2406 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1038 0))(
  ( (ValueCellFull!1038 (v!3018 V!3331)) (EmptyCell!1038) )
))
(declare-datatypes ((array!4530 0))(
  ( (array!4531 (arr!2147 (Array (_ BitVec 32) ValueCell!1038)) (size!2407 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!984 0))(
  ( (LongMapFixedSize!985 (defaultEntry!2701 Int) (mask!6907 (_ BitVec 32)) (extraKeys!2490 (_ BitVec 32)) (zeroValue!2568 V!3331) (minValue!2568 V!3331) (_size!541 (_ BitVec 32)) (_keys!4423 array!4528) (_values!2684 array!4530) (_vacant!541 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!780 0))(
  ( (Cell!781 (v!3019 LongMapFixedSize!984)) )
))
(declare-datatypes ((LongMap!780 0))(
  ( (LongMap!781 (underlying!401 Cell!780)) )
))
(declare-fun thiss!992 () LongMap!780)

(declare-fun mapDefault!4221 () ValueCell!1038)

(assert (=> b!115535 (= condMapEmpty!4222 (= (arr!2147 (_values!2684 (v!3019 (underlying!401 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1038)) mapDefault!4221)))))

(declare-fun tp_is_empty!2763 () Bool)

(declare-fun e!75333 () Bool)

(declare-fun array_inv!1299 (array!4528) Bool)

(declare-fun array_inv!1300 (array!4530) Bool)

(assert (=> b!115537 (= e!75333 (and tp!10444 tp_is_empty!2763 (array_inv!1299 (_keys!4423 (v!3019 (underlying!401 thiss!992)))) (array_inv!1300 (_values!2684 (v!3019 (underlying!401 thiss!992)))) e!75331))))

(declare-fun b!115538 () Bool)

(declare-fun res!56689 () Bool)

(declare-fun e!75334 () Bool)

(assert (=> b!115538 (=> (not res!56689) (not e!75334))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!115538 (= res!56689 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2406 (_keys!4423 (v!3019 (underlying!401 thiss!992)))))))))

(declare-fun b!115539 () Bool)

(declare-fun e!75337 () Bool)

(declare-fun e!75330 () Bool)

(declare-fun mapRes!4221 () Bool)

(assert (=> b!115539 (= e!75337 (and e!75330 mapRes!4221))))

(declare-fun condMapEmpty!4221 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!984)

(declare-fun mapDefault!4222 () ValueCell!1038)

(assert (=> b!115539 (= condMapEmpty!4221 (= (arr!2147 (_values!2684 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1038)) mapDefault!4222)))))

(declare-fun mapNonEmpty!4221 () Bool)

(declare-fun tp!10443 () Bool)

(declare-fun e!75338 () Bool)

(assert (=> mapNonEmpty!4221 (= mapRes!4222 (and tp!10443 e!75338))))

(declare-fun mapKey!4221 () (_ BitVec 32))

(declare-fun mapRest!4221 () (Array (_ BitVec 32) ValueCell!1038))

(declare-fun mapValue!4221 () ValueCell!1038)

(assert (=> mapNonEmpty!4221 (= (arr!2147 (_values!2684 (v!3019 (underlying!401 thiss!992)))) (store mapRest!4221 mapKey!4221 mapValue!4221))))

(declare-fun mapIsEmpty!4221 () Bool)

(assert (=> mapIsEmpty!4221 mapRes!4222))

(declare-fun b!115540 () Bool)

(declare-fun res!56690 () Bool)

(assert (=> b!115540 (=> (not res!56690) (not e!75334))))

(declare-fun valid!457 (LongMapFixedSize!984) Bool)

(assert (=> b!115540 (= res!56690 (valid!457 newMap!16))))

(declare-fun mapNonEmpty!4222 () Bool)

(declare-fun tp!10442 () Bool)

(declare-fun e!75335 () Bool)

(assert (=> mapNonEmpty!4222 (= mapRes!4221 (and tp!10442 e!75335))))

(declare-fun mapValue!4222 () ValueCell!1038)

(declare-fun mapKey!4222 () (_ BitVec 32))

(declare-fun mapRest!4222 () (Array (_ BitVec 32) ValueCell!1038))

(assert (=> mapNonEmpty!4222 (= (arr!2147 (_values!2684 newMap!16)) (store mapRest!4222 mapKey!4222 mapValue!4222))))

(declare-fun b!115541 () Bool)

(assert (=> b!115541 (= e!75334 false)))

(declare-datatypes ((tuple2!2496 0))(
  ( (tuple2!2497 (_1!1258 (_ BitVec 64)) (_2!1258 V!3331)) )
))
(declare-datatypes ((List!1687 0))(
  ( (Nil!1684) (Cons!1683 (h!2283 tuple2!2496) (t!5953 List!1687)) )
))
(declare-datatypes ((ListLongMap!1635 0))(
  ( (ListLongMap!1636 (toList!833 List!1687)) )
))
(declare-fun lt!60075 () ListLongMap!1635)

(declare-fun map!1333 (LongMapFixedSize!984) ListLongMap!1635)

(assert (=> b!115541 (= lt!60075 (map!1333 newMap!16))))

(declare-fun lt!60074 () ListLongMap!1635)

(declare-fun getCurrentListMap!506 (array!4528 array!4530 (_ BitVec 32) (_ BitVec 32) V!3331 V!3331 (_ BitVec 32) Int) ListLongMap!1635)

(assert (=> b!115541 (= lt!60074 (getCurrentListMap!506 (_keys!4423 (v!3019 (underlying!401 thiss!992))) (_values!2684 (v!3019 (underlying!401 thiss!992))) (mask!6907 (v!3019 (underlying!401 thiss!992))) (extraKeys!2490 (v!3019 (underlying!401 thiss!992))) (zeroValue!2568 (v!3019 (underlying!401 thiss!992))) (minValue!2568 (v!3019 (underlying!401 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2701 (v!3019 (underlying!401 thiss!992)))))))

(declare-fun e!75328 () Bool)

(assert (=> b!115542 (= e!75328 (and tp!10441 tp_is_empty!2763 (array_inv!1299 (_keys!4423 newMap!16)) (array_inv!1300 (_values!2684 newMap!16)) e!75337))))

(declare-fun b!115543 () Bool)

(assert (=> b!115543 (= e!75338 tp_is_empty!2763)))

(declare-fun res!56692 () Bool)

(assert (=> start!13154 (=> (not res!56692) (not e!75334))))

(declare-fun valid!458 (LongMap!780) Bool)

(assert (=> start!13154 (= res!56692 (valid!458 thiss!992))))

(assert (=> start!13154 e!75334))

(declare-fun e!75329 () Bool)

(assert (=> start!13154 e!75329))

(assert (=> start!13154 true))

(assert (=> start!13154 e!75328))

(declare-fun b!115536 () Bool)

(assert (=> b!115536 (= e!75330 tp_is_empty!2763)))

(declare-fun b!115544 () Bool)

(assert (=> b!115544 (= e!75335 tp_is_empty!2763)))

(declare-fun b!115545 () Bool)

(declare-fun e!75340 () Bool)

(assert (=> b!115545 (= e!75329 e!75340)))

(declare-fun b!115546 () Bool)

(assert (=> b!115546 (= e!75339 tp_is_empty!2763)))

(declare-fun b!115547 () Bool)

(declare-fun res!56691 () Bool)

(assert (=> b!115547 (=> (not res!56691) (not e!75334))))

(assert (=> b!115547 (= res!56691 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6907 newMap!16)) (_size!541 (v!3019 (underlying!401 thiss!992)))))))

(declare-fun b!115548 () Bool)

(assert (=> b!115548 (= e!75340 e!75333)))

(declare-fun mapIsEmpty!4222 () Bool)

(assert (=> mapIsEmpty!4222 mapRes!4221))

(assert (= (and start!13154 res!56692) b!115538))

(assert (= (and b!115538 res!56689) b!115540))

(assert (= (and b!115540 res!56690) b!115547))

(assert (= (and b!115547 res!56691) b!115541))

(assert (= (and b!115535 condMapEmpty!4222) mapIsEmpty!4221))

(assert (= (and b!115535 (not condMapEmpty!4222)) mapNonEmpty!4221))

(get-info :version)

(assert (= (and mapNonEmpty!4221 ((_ is ValueCellFull!1038) mapValue!4221)) b!115543))

(assert (= (and b!115535 ((_ is ValueCellFull!1038) mapDefault!4221)) b!115546))

(assert (= b!115537 b!115535))

(assert (= b!115548 b!115537))

(assert (= b!115545 b!115548))

(assert (= start!13154 b!115545))

(assert (= (and b!115539 condMapEmpty!4221) mapIsEmpty!4222))

(assert (= (and b!115539 (not condMapEmpty!4221)) mapNonEmpty!4222))

(assert (= (and mapNonEmpty!4222 ((_ is ValueCellFull!1038) mapValue!4222)) b!115544))

(assert (= (and b!115539 ((_ is ValueCellFull!1038) mapDefault!4222)) b!115536))

(assert (= b!115542 b!115539))

(assert (= start!13154 b!115542))

(declare-fun m!131801 () Bool)

(assert (=> b!115537 m!131801))

(declare-fun m!131803 () Bool)

(assert (=> b!115537 m!131803))

(declare-fun m!131805 () Bool)

(assert (=> b!115540 m!131805))

(declare-fun m!131807 () Bool)

(assert (=> mapNonEmpty!4221 m!131807))

(declare-fun m!131809 () Bool)

(assert (=> start!13154 m!131809))

(declare-fun m!131811 () Bool)

(assert (=> b!115542 m!131811))

(declare-fun m!131813 () Bool)

(assert (=> b!115542 m!131813))

(declare-fun m!131815 () Bool)

(assert (=> b!115541 m!131815))

(declare-fun m!131817 () Bool)

(assert (=> b!115541 m!131817))

(declare-fun m!131819 () Bool)

(assert (=> mapNonEmpty!4222 m!131819))

(check-sat (not mapNonEmpty!4221) b_and!7185 b_and!7187 (not b_next!2695) (not start!13154) tp_is_empty!2763 (not b!115537) (not b_next!2693) (not b!115542) (not b!115540) (not mapNonEmpty!4222) (not b!115541))
(check-sat b_and!7185 b_and!7187 (not b_next!2693) (not b_next!2695))
