; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17738 () Bool)

(assert start!17738)

(declare-fun b!177167 () Bool)

(declare-fun b_free!4379 () Bool)

(declare-fun b_next!4379 () Bool)

(assert (=> b!177167 (= b_free!4379 (not b_next!4379))))

(declare-fun tp!15836 () Bool)

(declare-fun b_and!10897 () Bool)

(assert (=> b!177167 (= tp!15836 b_and!10897)))

(declare-fun b!177164 () Bool)

(declare-fun res!83996 () Bool)

(declare-fun e!116841 () Bool)

(assert (=> b!177164 (=> (not res!83996) (not e!116841))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!177164 (= res!83996 (not (= key!828 (bvneg key!828))))))

(declare-fun b!177165 () Bool)

(declare-fun res!83999 () Bool)

(assert (=> b!177165 (=> (not res!83999) (not e!116841))))

(declare-datatypes ((V!5181 0))(
  ( (V!5182 (val!2120 Int)) )
))
(declare-datatypes ((ValueCell!1732 0))(
  ( (ValueCellFull!1732 (v!3996 V!5181)) (EmptyCell!1732) )
))
(declare-datatypes ((array!7452 0))(
  ( (array!7453 (arr!3534 (Array (_ BitVec 32) (_ BitVec 64))) (size!3838 (_ BitVec 32))) )
))
(declare-datatypes ((array!7454 0))(
  ( (array!7455 (arr!3535 (Array (_ BitVec 32) ValueCell!1732)) (size!3839 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2372 0))(
  ( (LongMapFixedSize!2373 (defaultEntry!3649 Int) (mask!8583 (_ BitVec 32)) (extraKeys!3386 (_ BitVec 32)) (zeroValue!3490 V!5181) (minValue!3490 V!5181) (_size!1235 (_ BitVec 32)) (_keys!5516 array!7452) (_values!3632 array!7454) (_vacant!1235 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2372)

(declare-datatypes ((SeekEntryResult!575 0))(
  ( (MissingZero!575 (index!4468 (_ BitVec 32))) (Found!575 (index!4469 (_ BitVec 32))) (Intermediate!575 (undefined!1387 Bool) (index!4470 (_ BitVec 32)) (x!19447 (_ BitVec 32))) (Undefined!575) (MissingVacant!575 (index!4471 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7452 (_ BitVec 32)) SeekEntryResult!575)

(assert (=> b!177165 (= res!83999 (is-Undefined!575 (seekEntryOrOpen!0 key!828 (_keys!5516 thiss!1248) (mask!8583 thiss!1248))))))

(declare-fun b!177166 () Bool)

(assert (=> b!177166 (= e!116841 (not true))))

(assert (=> b!177166 false))

(declare-datatypes ((Unit!5415 0))(
  ( (Unit!5416) )
))
(declare-fun lt!87607 () Unit!5415)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!138 (array!7452 array!7454 (_ BitVec 32) (_ BitVec 32) V!5181 V!5181 (_ BitVec 64) Int) Unit!5415)

(assert (=> b!177166 (= lt!87607 (lemmaInListMapThenSeekEntryOrOpenFindsIt!138 (_keys!5516 thiss!1248) (_values!3632 thiss!1248) (mask!8583 thiss!1248) (extraKeys!3386 thiss!1248) (zeroValue!3490 thiss!1248) (minValue!3490 thiss!1248) key!828 (defaultEntry!3649 thiss!1248)))))

(declare-fun mapIsEmpty!7089 () Bool)

(declare-fun mapRes!7089 () Bool)

(assert (=> mapIsEmpty!7089 mapRes!7089))

(declare-fun e!116845 () Bool)

(declare-fun e!116842 () Bool)

(declare-fun tp_is_empty!4151 () Bool)

(declare-fun array_inv!2257 (array!7452) Bool)

(declare-fun array_inv!2258 (array!7454) Bool)

(assert (=> b!177167 (= e!116842 (and tp!15836 tp_is_empty!4151 (array_inv!2257 (_keys!5516 thiss!1248)) (array_inv!2258 (_values!3632 thiss!1248)) e!116845))))

(declare-fun b!177168 () Bool)

(declare-fun e!116844 () Bool)

(assert (=> b!177168 (= e!116844 tp_is_empty!4151)))

(declare-fun b!177169 () Bool)

(declare-fun res!83998 () Bool)

(assert (=> b!177169 (=> (not res!83998) (not e!116841))))

(declare-datatypes ((tuple2!3298 0))(
  ( (tuple2!3299 (_1!1659 (_ BitVec 64)) (_2!1659 V!5181)) )
))
(declare-datatypes ((List!2272 0))(
  ( (Nil!2269) (Cons!2268 (h!2889 tuple2!3298) (t!7110 List!2272)) )
))
(declare-datatypes ((ListLongMap!2239 0))(
  ( (ListLongMap!2240 (toList!1135 List!2272)) )
))
(declare-fun contains!1195 (ListLongMap!2239 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!782 (array!7452 array!7454 (_ BitVec 32) (_ BitVec 32) V!5181 V!5181 (_ BitVec 32) Int) ListLongMap!2239)

(assert (=> b!177169 (= res!83998 (contains!1195 (getCurrentListMap!782 (_keys!5516 thiss!1248) (_values!3632 thiss!1248) (mask!8583 thiss!1248) (extraKeys!3386 thiss!1248) (zeroValue!3490 thiss!1248) (minValue!3490 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3649 thiss!1248)) key!828))))

(declare-fun mapNonEmpty!7089 () Bool)

(declare-fun tp!15837 () Bool)

(assert (=> mapNonEmpty!7089 (= mapRes!7089 (and tp!15837 e!116844))))

(declare-fun mapValue!7089 () ValueCell!1732)

(declare-fun mapKey!7089 () (_ BitVec 32))

(declare-fun mapRest!7089 () (Array (_ BitVec 32) ValueCell!1732))

(assert (=> mapNonEmpty!7089 (= (arr!3535 (_values!3632 thiss!1248)) (store mapRest!7089 mapKey!7089 mapValue!7089))))

(declare-fun res!83997 () Bool)

(assert (=> start!17738 (=> (not res!83997) (not e!116841))))

(declare-fun valid!987 (LongMapFixedSize!2372) Bool)

(assert (=> start!17738 (= res!83997 (valid!987 thiss!1248))))

(assert (=> start!17738 e!116841))

(assert (=> start!17738 e!116842))

(assert (=> start!17738 true))

(declare-fun b!177170 () Bool)

(declare-fun e!116840 () Bool)

(assert (=> b!177170 (= e!116840 tp_is_empty!4151)))

(declare-fun b!177171 () Bool)

(assert (=> b!177171 (= e!116845 (and e!116840 mapRes!7089))))

(declare-fun condMapEmpty!7089 () Bool)

(declare-fun mapDefault!7089 () ValueCell!1732)

