; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16210 () Bool)

(assert start!16210)

(declare-fun b!161546 () Bool)

(declare-fun b_free!3659 () Bool)

(declare-fun b_next!3659 () Bool)

(assert (=> b!161546 (= b_free!3659 (not b_next!3659))))

(declare-fun tp!13547 () Bool)

(declare-fun b_and!10091 () Bool)

(assert (=> b!161546 (= tp!13547 b_and!10091)))

(declare-fun b!161541 () Bool)

(declare-datatypes ((Unit!5029 0))(
  ( (Unit!5030) )
))
(declare-fun e!105606 () Unit!5029)

(declare-datatypes ((V!4261 0))(
  ( (V!4262 (val!1775 Int)) )
))
(declare-datatypes ((ValueCell!1387 0))(
  ( (ValueCellFull!1387 (v!3636 V!4261)) (EmptyCell!1387) )
))
(declare-datatypes ((array!6000 0))(
  ( (array!6001 (arr!2844 (Array (_ BitVec 32) (_ BitVec 64))) (size!3128 (_ BitVec 32))) )
))
(declare-datatypes ((array!6002 0))(
  ( (array!6003 (arr!2845 (Array (_ BitVec 32) ValueCell!1387)) (size!3129 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1682 0))(
  ( (LongMapFixedSize!1683 (defaultEntry!3283 Int) (mask!7877 (_ BitVec 32)) (extraKeys!3024 (_ BitVec 32)) (zeroValue!3126 V!4261) (minValue!3126 V!4261) (_size!890 (_ BitVec 32)) (_keys!5084 array!6000) (_values!3266 array!6002) (_vacant!890 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1682)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!81 (array!6000 array!6002 (_ BitVec 32) (_ BitVec 32) V!4261 V!4261 (_ BitVec 64) Int) Unit!5029)

(assert (=> b!161541 (= e!105606 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!81 (_keys!5084 thiss!1248) (_values!3266 thiss!1248) (mask!7877 thiss!1248) (extraKeys!3024 thiss!1248) (zeroValue!3126 thiss!1248) (minValue!3126 thiss!1248) key!828 (defaultEntry!3283 thiss!1248)))))

(declare-fun res!76570 () Bool)

(declare-fun e!105602 () Bool)

(assert (=> start!16210 (=> (not res!76570) (not e!105602))))

(declare-fun valid!762 (LongMapFixedSize!1682) Bool)

(assert (=> start!16210 (= res!76570 (valid!762 thiss!1248))))

(assert (=> start!16210 e!105602))

(declare-fun e!105608 () Bool)

(assert (=> start!16210 e!105608))

(assert (=> start!16210 true))

(declare-fun mapIsEmpty!5879 () Bool)

(declare-fun mapRes!5879 () Bool)

(assert (=> mapIsEmpty!5879 mapRes!5879))

(declare-fun b!161542 () Bool)

(declare-fun Unit!5031 () Unit!5029)

(assert (=> b!161542 (= e!105606 Unit!5031)))

(declare-fun lt!82268 () Unit!5029)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!83 (array!6000 array!6002 (_ BitVec 32) (_ BitVec 32) V!4261 V!4261 (_ BitVec 64) Int) Unit!5029)

(assert (=> b!161542 (= lt!82268 (lemmaInListMapThenSeekEntryOrOpenFindsIt!83 (_keys!5084 thiss!1248) (_values!3266 thiss!1248) (mask!7877 thiss!1248) (extraKeys!3024 thiss!1248) (zeroValue!3126 thiss!1248) (minValue!3126 thiss!1248) key!828 (defaultEntry!3283 thiss!1248)))))

(assert (=> b!161542 false))

(declare-fun b!161543 () Bool)

(declare-fun res!76569 () Bool)

(assert (=> b!161543 (=> (not res!76569) (not e!105602))))

(assert (=> b!161543 (= res!76569 (not (= key!828 (bvneg key!828))))))

(declare-fun b!161544 () Bool)

(declare-fun e!105604 () Bool)

(declare-fun tp_is_empty!3461 () Bool)

(assert (=> b!161544 (= e!105604 tp_is_empty!3461)))

(declare-fun b!161545 () Bool)

(assert (=> b!161545 (= e!105602 false)))

(declare-fun lt!82267 () Unit!5029)

(assert (=> b!161545 (= lt!82267 e!105606)))

(declare-fun c!29958 () Bool)

(declare-datatypes ((tuple2!2954 0))(
  ( (tuple2!2955 (_1!1487 (_ BitVec 64)) (_2!1487 V!4261)) )
))
(declare-datatypes ((List!1999 0))(
  ( (Nil!1996) (Cons!1995 (h!2608 tuple2!2954) (t!6809 List!1999)) )
))
(declare-datatypes ((ListLongMap!1963 0))(
  ( (ListLongMap!1964 (toList!997 List!1999)) )
))
(declare-fun contains!1027 (ListLongMap!1963 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!657 (array!6000 array!6002 (_ BitVec 32) (_ BitVec 32) V!4261 V!4261 (_ BitVec 32) Int) ListLongMap!1963)

(assert (=> b!161545 (= c!29958 (contains!1027 (getCurrentListMap!657 (_keys!5084 thiss!1248) (_values!3266 thiss!1248) (mask!7877 thiss!1248) (extraKeys!3024 thiss!1248) (zeroValue!3126 thiss!1248) (minValue!3126 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3283 thiss!1248)) key!828))))

(declare-fun e!105603 () Bool)

(declare-fun array_inv!1803 (array!6000) Bool)

(declare-fun array_inv!1804 (array!6002) Bool)

(assert (=> b!161546 (= e!105608 (and tp!13547 tp_is_empty!3461 (array_inv!1803 (_keys!5084 thiss!1248)) (array_inv!1804 (_values!3266 thiss!1248)) e!105603))))

(declare-fun mapNonEmpty!5879 () Bool)

(declare-fun tp!13546 () Bool)

(assert (=> mapNonEmpty!5879 (= mapRes!5879 (and tp!13546 e!105604))))

(declare-fun mapValue!5879 () ValueCell!1387)

(declare-fun mapRest!5879 () (Array (_ BitVec 32) ValueCell!1387))

(declare-fun mapKey!5879 () (_ BitVec 32))

(assert (=> mapNonEmpty!5879 (= (arr!2845 (_values!3266 thiss!1248)) (store mapRest!5879 mapKey!5879 mapValue!5879))))

(declare-fun b!161547 () Bool)

(declare-fun e!105605 () Bool)

(assert (=> b!161547 (= e!105605 tp_is_empty!3461)))

(declare-fun b!161548 () Bool)

(declare-fun res!76571 () Bool)

(assert (=> b!161548 (=> (not res!76571) (not e!105602))))

(declare-datatypes ((SeekEntryResult!363 0))(
  ( (MissingZero!363 (index!3620 (_ BitVec 32))) (Found!363 (index!3621 (_ BitVec 32))) (Intermediate!363 (undefined!1175 Bool) (index!3622 (_ BitVec 32)) (x!17835 (_ BitVec 32))) (Undefined!363) (MissingVacant!363 (index!3623 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6000 (_ BitVec 32)) SeekEntryResult!363)

(assert (=> b!161548 (= res!76571 (is-Undefined!363 (seekEntryOrOpen!0 key!828 (_keys!5084 thiss!1248) (mask!7877 thiss!1248))))))

(declare-fun b!161549 () Bool)

(assert (=> b!161549 (= e!105603 (and e!105605 mapRes!5879))))

(declare-fun condMapEmpty!5879 () Bool)

(declare-fun mapDefault!5879 () ValueCell!1387)

