; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16826 () Bool)

(assert start!16826)

(declare-fun b!169449 () Bool)

(declare-fun b_free!4139 () Bool)

(declare-fun b_next!4139 () Bool)

(assert (=> b!169449 (= b_free!4139 (not b_next!4139))))

(declare-fun tp!15021 () Bool)

(declare-fun b_and!10571 () Bool)

(assert (=> b!169449 (= tp!15021 b_and!10571)))

(declare-fun b!169446 () Bool)

(declare-fun b_free!4141 () Bool)

(declare-fun b_next!4141 () Bool)

(assert (=> b!169446 (= b_free!4141 (not b_next!4141))))

(declare-fun tp!15023 () Bool)

(declare-fun b_and!10573 () Bool)

(assert (=> b!169446 (= tp!15023 b_and!10573)))

(declare-fun mapIsEmpty!6632 () Bool)

(declare-fun mapRes!6633 () Bool)

(assert (=> mapIsEmpty!6632 mapRes!6633))

(declare-fun mapNonEmpty!6632 () Bool)

(declare-fun mapRes!6632 () Bool)

(declare-fun tp!15022 () Bool)

(declare-fun e!111695 () Bool)

(assert (=> mapNonEmpty!6632 (= mapRes!6632 (and tp!15022 e!111695))))

(declare-datatypes ((V!4875 0))(
  ( (V!4876 (val!2005 Int)) )
))
(declare-datatypes ((ValueCell!1617 0))(
  ( (ValueCellFull!1617 (v!3866 V!4875)) (EmptyCell!1617) )
))
(declare-fun mapRest!6632 () (Array (_ BitVec 32) ValueCell!1617))

(declare-fun mapKey!6633 () (_ BitVec 32))

(declare-datatypes ((array!6938 0))(
  ( (array!6939 (arr!3304 (Array (_ BitVec 32) (_ BitVec 64))) (size!3592 (_ BitVec 32))) )
))
(declare-datatypes ((array!6940 0))(
  ( (array!6941 (arr!3305 (Array (_ BitVec 32) ValueCell!1617)) (size!3593 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2142 0))(
  ( (LongMapFixedSize!2143 (defaultEntry!3513 Int) (mask!8298 (_ BitVec 32)) (extraKeys!3254 (_ BitVec 32)) (zeroValue!3356 V!4875) (minValue!3356 V!4875) (_size!1120 (_ BitVec 32)) (_keys!5338 array!6938) (_values!3496 array!6940) (_vacant!1120 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2142)

(declare-fun mapValue!6633 () ValueCell!1617)

(assert (=> mapNonEmpty!6632 (= (arr!3305 (_values!3496 thiss!1248)) (store mapRest!6632 mapKey!6633 mapValue!6633))))

(declare-fun b!169443 () Bool)

(declare-fun e!111692 () Bool)

(declare-fun tp_is_empty!3921 () Bool)

(assert (=> b!169443 (= e!111692 tp_is_empty!3921)))

(declare-fun b!169444 () Bool)

(declare-fun res!80605 () Bool)

(declare-fun e!111694 () Bool)

(assert (=> b!169444 (=> (not res!80605) (not e!111694))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!169444 (= res!80605 (not (= key!828 (bvneg key!828))))))

(declare-fun b!169445 () Bool)

(declare-fun e!111697 () Bool)

(assert (=> b!169445 (= e!111694 e!111697)))

(declare-fun res!80607 () Bool)

(assert (=> b!169445 (=> (not res!80607) (not e!111697))))

(declare-datatypes ((SeekEntryResult!535 0))(
  ( (MissingZero!535 (index!4308 (_ BitVec 32))) (Found!535 (index!4309 (_ BitVec 32))) (Intermediate!535 (undefined!1347 Bool) (index!4310 (_ BitVec 32)) (x!18731 (_ BitVec 32))) (Undefined!535) (MissingVacant!535 (index!4311 (_ BitVec 32))) )
))
(declare-fun lt!84946 () SeekEntryResult!535)

(get-info :version)

(assert (=> b!169445 (= res!80607 (and (not ((_ is Undefined!535) lt!84946)) (not ((_ is MissingVacant!535) lt!84946)) (not ((_ is MissingZero!535) lt!84946)) (not ((_ is Found!535) lt!84946))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6938 (_ BitVec 32)) SeekEntryResult!535)

(assert (=> b!169445 (= lt!84946 (seekEntryOrOpen!0 key!828 (_keys!5338 thiss!1248) (mask!8298 thiss!1248)))))

(declare-fun e!111693 () Bool)

(declare-fun e!111690 () Bool)

(declare-fun array_inv!2111 (array!6938) Bool)

(declare-fun array_inv!2112 (array!6940) Bool)

(assert (=> b!169446 (= e!111690 (and tp!15023 tp_is_empty!3921 (array_inv!2111 (_keys!5338 thiss!1248)) (array_inv!2112 (_values!3496 thiss!1248)) e!111693))))

(declare-fun b!169447 () Bool)

(declare-fun e!111686 () Bool)

(assert (=> b!169447 (= e!111686 tp_is_empty!3921)))

(declare-fun b!169448 () Bool)

(declare-fun e!111691 () Bool)

(assert (=> b!169448 (= e!111691 tp_is_empty!3921)))

(declare-fun e!111689 () Bool)

(declare-datatypes ((tuple2!3218 0))(
  ( (tuple2!3219 (_1!1619 Bool) (_2!1619 LongMapFixedSize!2142)) )
))
(declare-fun err!79 () tuple2!3218)

(declare-fun e!111696 () Bool)

(assert (=> b!169449 (= e!111689 (and tp!15021 tp_is_empty!3921 (array_inv!2111 (_keys!5338 (_2!1619 err!79))) (array_inv!2112 (_values!3496 (_2!1619 err!79))) e!111696))))

(declare-fun b!169450 () Bool)

(assert (=> b!169450 (= e!111693 (and e!111692 mapRes!6632))))

(declare-fun condMapEmpty!6632 () Bool)

(declare-fun mapDefault!6633 () ValueCell!1617)

(assert (=> b!169450 (= condMapEmpty!6632 (= (arr!3305 (_values!3496 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1617)) mapDefault!6633)))))

(declare-fun b!169451 () Bool)

(assert (=> b!169451 (= e!111696 (and e!111686 mapRes!6633))))

(declare-fun condMapEmpty!6633 () Bool)

(declare-fun mapDefault!6632 () ValueCell!1617)

(assert (=> b!169451 (= condMapEmpty!6633 (= (arr!3305 (_values!3496 (_2!1619 err!79))) ((as const (Array (_ BitVec 32) ValueCell!1617)) mapDefault!6632)))))

(declare-fun mapIsEmpty!6633 () Bool)

(assert (=> mapIsEmpty!6633 mapRes!6632))

(declare-fun res!80606 () Bool)

(assert (=> start!16826 (=> (not res!80606) (not e!111694))))

(declare-fun valid!915 (LongMapFixedSize!2142) Bool)

(assert (=> start!16826 (= res!80606 (valid!915 thiss!1248))))

(assert (=> start!16826 e!111694))

(assert (=> start!16826 e!111690))

(assert (=> start!16826 true))

(declare-fun mapNonEmpty!6633 () Bool)

(declare-fun tp!15024 () Bool)

(assert (=> mapNonEmpty!6633 (= mapRes!6633 (and tp!15024 e!111691))))

(declare-fun mapValue!6632 () ValueCell!1617)

(declare-fun mapKey!6632 () (_ BitVec 32))

(declare-fun mapRest!6633 () (Array (_ BitVec 32) ValueCell!1617))

(assert (=> mapNonEmpty!6633 (= (arr!3305 (_values!3496 (_2!1619 err!79))) (store mapRest!6633 mapKey!6632 mapValue!6632))))

(declare-fun b!169452 () Bool)

(assert (=> b!169452 (= e!111695 tp_is_empty!3921)))

(declare-fun b!169453 () Bool)

(assert (=> b!169453 (= e!111697 false)))

(declare-fun lt!84947 () Bool)

(assert (=> b!169453 (= lt!84947 (valid!915 (_2!1619 err!79)))))

(assert (=> b!169453 true))

(assert (=> b!169453 e!111689))

(assert (= (and start!16826 res!80606) b!169444))

(assert (= (and b!169444 res!80605) b!169445))

(assert (= (and b!169445 res!80607) b!169453))

(assert (= (and b!169451 condMapEmpty!6633) mapIsEmpty!6632))

(assert (= (and b!169451 (not condMapEmpty!6633)) mapNonEmpty!6633))

(assert (= (and mapNonEmpty!6633 ((_ is ValueCellFull!1617) mapValue!6632)) b!169448))

(assert (= (and b!169451 ((_ is ValueCellFull!1617) mapDefault!6632)) b!169447))

(assert (= b!169449 b!169451))

(assert (= b!169453 b!169449))

(assert (= (and b!169450 condMapEmpty!6632) mapIsEmpty!6633))

(assert (= (and b!169450 (not condMapEmpty!6632)) mapNonEmpty!6632))

(assert (= (and mapNonEmpty!6632 ((_ is ValueCellFull!1617) mapValue!6633)) b!169452))

(assert (= (and b!169450 ((_ is ValueCellFull!1617) mapDefault!6633)) b!169443))

(assert (= b!169446 b!169450))

(assert (= start!16826 b!169446))

(declare-fun m!198461 () Bool)

(assert (=> start!16826 m!198461))

(declare-fun m!198463 () Bool)

(assert (=> mapNonEmpty!6633 m!198463))

(declare-fun m!198465 () Bool)

(assert (=> b!169446 m!198465))

(declare-fun m!198467 () Bool)

(assert (=> b!169446 m!198467))

(declare-fun m!198469 () Bool)

(assert (=> b!169449 m!198469))

(declare-fun m!198471 () Bool)

(assert (=> b!169449 m!198471))

(declare-fun m!198473 () Bool)

(assert (=> b!169445 m!198473))

(declare-fun m!198475 () Bool)

(assert (=> mapNonEmpty!6632 m!198475))

(declare-fun m!198477 () Bool)

(assert (=> b!169453 m!198477))

(check-sat tp_is_empty!3921 (not mapNonEmpty!6632) b_and!10571 (not b!169445) (not b_next!4141) (not b_next!4139) (not mapNonEmpty!6633) (not b!169446) (not b!169449) (not start!16826) (not b!169453) b_and!10573)
(check-sat b_and!10571 b_and!10573 (not b_next!4141) (not b_next!4139))
