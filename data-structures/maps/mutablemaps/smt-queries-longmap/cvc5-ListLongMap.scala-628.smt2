; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16128 () Bool)

(assert start!16128)

(declare-fun b!160286 () Bool)

(declare-fun b_free!3577 () Bool)

(declare-fun b_next!3577 () Bool)

(assert (=> b!160286 (= b_free!3577 (not b_next!3577))))

(declare-fun tp!13301 () Bool)

(declare-fun b_and!10009 () Bool)

(assert (=> b!160286 (= tp!13301 b_and!10009)))

(declare-fun res!75890 () Bool)

(declare-fun e!104824 () Bool)

(assert (=> start!16128 (=> (not res!75890) (not e!104824))))

(declare-datatypes ((V!4153 0))(
  ( (V!4154 (val!1734 Int)) )
))
(declare-datatypes ((ValueCell!1346 0))(
  ( (ValueCellFull!1346 (v!3595 V!4153)) (EmptyCell!1346) )
))
(declare-datatypes ((array!5836 0))(
  ( (array!5837 (arr!2762 (Array (_ BitVec 32) (_ BitVec 64))) (size!3046 (_ BitVec 32))) )
))
(declare-datatypes ((array!5838 0))(
  ( (array!5839 (arr!2763 (Array (_ BitVec 32) ValueCell!1346)) (size!3047 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1600 0))(
  ( (LongMapFixedSize!1601 (defaultEntry!3242 Int) (mask!7810 (_ BitVec 32)) (extraKeys!2983 (_ BitVec 32)) (zeroValue!3085 V!4153) (minValue!3085 V!4153) (_size!849 (_ BitVec 32)) (_keys!5043 array!5836) (_values!3225 array!5838) (_vacant!849 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1600)

(declare-fun valid!738 (LongMapFixedSize!1600) Bool)

(assert (=> start!16128 (= res!75890 (valid!738 thiss!1248))))

(assert (=> start!16128 e!104824))

(declare-fun e!104821 () Bool)

(assert (=> start!16128 e!104821))

(assert (=> start!16128 true))

(declare-fun mapIsEmpty!5756 () Bool)

(declare-fun mapRes!5756 () Bool)

(assert (=> mapIsEmpty!5756 mapRes!5756))

(declare-fun b!160276 () Bool)

(declare-fun res!75887 () Bool)

(assert (=> b!160276 (=> (not res!75887) (not e!104824))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!160276 (= res!75887 (not (= key!828 (bvneg key!828))))))

(declare-fun b!160277 () Bool)

(declare-fun e!104823 () Bool)

(declare-fun tp_is_empty!3379 () Bool)

(assert (=> b!160277 (= e!104823 tp_is_empty!3379)))

(declare-fun b!160278 () Bool)

(assert (=> b!160278 (= e!104824 false)))

(declare-fun lt!82100 () Bool)

(declare-datatypes ((List!1960 0))(
  ( (Nil!1957) (Cons!1956 (h!2569 (_ BitVec 64)) (t!6770 List!1960)) )
))
(declare-fun arrayNoDuplicates!0 (array!5836 (_ BitVec 32) List!1960) Bool)

(assert (=> b!160278 (= lt!82100 (arrayNoDuplicates!0 (_keys!5043 thiss!1248) #b00000000000000000000000000000000 Nil!1957))))

(declare-fun mapNonEmpty!5756 () Bool)

(declare-fun tp!13300 () Bool)

(declare-fun e!104820 () Bool)

(assert (=> mapNonEmpty!5756 (= mapRes!5756 (and tp!13300 e!104820))))

(declare-fun mapRest!5756 () (Array (_ BitVec 32) ValueCell!1346))

(declare-fun mapKey!5756 () (_ BitVec 32))

(declare-fun mapValue!5756 () ValueCell!1346)

(assert (=> mapNonEmpty!5756 (= (arr!2763 (_values!3225 thiss!1248)) (store mapRest!5756 mapKey!5756 mapValue!5756))))

(declare-fun b!160279 () Bool)

(declare-fun res!75886 () Bool)

(assert (=> b!160279 (=> (not res!75886) (not e!104824))))

(assert (=> b!160279 (= res!75886 (and (= (size!3047 (_values!3225 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!7810 thiss!1248))) (= (size!3046 (_keys!5043 thiss!1248)) (size!3047 (_values!3225 thiss!1248))) (bvsge (mask!7810 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!2983 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!2983 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!160280 () Bool)

(declare-fun res!75888 () Bool)

(assert (=> b!160280 (=> (not res!75888) (not e!104824))))

(declare-datatypes ((tuple2!2904 0))(
  ( (tuple2!2905 (_1!1462 (_ BitVec 64)) (_2!1462 V!4153)) )
))
(declare-datatypes ((List!1961 0))(
  ( (Nil!1958) (Cons!1957 (h!2570 tuple2!2904) (t!6771 List!1961)) )
))
(declare-datatypes ((ListLongMap!1913 0))(
  ( (ListLongMap!1914 (toList!972 List!1961)) )
))
(declare-fun contains!1002 (ListLongMap!1913 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!632 (array!5836 array!5838 (_ BitVec 32) (_ BitVec 32) V!4153 V!4153 (_ BitVec 32) Int) ListLongMap!1913)

(assert (=> b!160280 (= res!75888 (not (contains!1002 (getCurrentListMap!632 (_keys!5043 thiss!1248) (_values!3225 thiss!1248) (mask!7810 thiss!1248) (extraKeys!2983 thiss!1248) (zeroValue!3085 thiss!1248) (minValue!3085 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3242 thiss!1248)) key!828)))))

(declare-fun b!160281 () Bool)

(declare-fun res!75884 () Bool)

(assert (=> b!160281 (=> (not res!75884) (not e!104824))))

(declare-datatypes ((SeekEntryResult!339 0))(
  ( (MissingZero!339 (index!3524 (_ BitVec 32))) (Found!339 (index!3525 (_ BitVec 32))) (Intermediate!339 (undefined!1151 Bool) (index!3526 (_ BitVec 32)) (x!17707 (_ BitVec 32))) (Undefined!339) (MissingVacant!339 (index!3527 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!5836 (_ BitVec 32)) SeekEntryResult!339)

(assert (=> b!160281 (= res!75884 (is-Undefined!339 (seekEntryOrOpen!0 key!828 (_keys!5043 thiss!1248) (mask!7810 thiss!1248))))))

(declare-fun b!160282 () Bool)

(declare-fun e!104825 () Bool)

(assert (=> b!160282 (= e!104825 (and e!104823 mapRes!5756))))

(declare-fun condMapEmpty!5756 () Bool)

(declare-fun mapDefault!5756 () ValueCell!1346)

