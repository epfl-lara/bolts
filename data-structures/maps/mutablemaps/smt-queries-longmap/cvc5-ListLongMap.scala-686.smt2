; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16632 () Bool)

(assert start!16632)

(declare-fun b!165858 () Bool)

(declare-fun b_free!3925 () Bool)

(declare-fun b_next!3925 () Bool)

(assert (=> b!165858 (= b_free!3925 (not b_next!3925))))

(declare-fun tp!14375 () Bool)

(declare-fun b_and!10357 () Bool)

(assert (=> b!165858 (= tp!14375 b_and!10357)))

(declare-fun b!165855 () Bool)

(declare-fun res!78779 () Bool)

(declare-fun e!108801 () Bool)

(assert (=> b!165855 (=> (not res!78779) (not e!108801))))

(declare-datatypes ((V!4617 0))(
  ( (V!4618 (val!1908 Int)) )
))
(declare-datatypes ((ValueCell!1520 0))(
  ( (ValueCellFull!1520 (v!3769 V!4617)) (EmptyCell!1520) )
))
(declare-datatypes ((array!6550 0))(
  ( (array!6551 (arr!3110 (Array (_ BitVec 32) (_ BitVec 64))) (size!3398 (_ BitVec 32))) )
))
(declare-datatypes ((array!6552 0))(
  ( (array!6553 (arr!3111 (Array (_ BitVec 32) ValueCell!1520)) (size!3399 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1948 0))(
  ( (LongMapFixedSize!1949 (defaultEntry!3416 Int) (mask!8137 (_ BitVec 32)) (extraKeys!3157 (_ BitVec 32)) (zeroValue!3259 V!4617) (minValue!3259 V!4617) (_size!1023 (_ BitVec 32)) (_keys!5241 array!6550) (_values!3399 array!6552) (_vacant!1023 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1948)

(assert (=> b!165855 (= res!78779 (and (= (size!3399 (_values!3399 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8137 thiss!1248))) (= (size!3398 (_keys!5241 thiss!1248)) (size!3399 (_values!3399 thiss!1248))) (bvsge (mask!8137 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3157 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3157 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!165856 () Bool)

(declare-fun res!78782 () Bool)

(assert (=> b!165856 (=> (not res!78782) (not e!108801))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6550 (_ BitVec 32)) Bool)

(assert (=> b!165856 (= res!78782 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5241 thiss!1248) (mask!8137 thiss!1248)))))

(declare-fun b!165857 () Bool)

(declare-fun res!78778 () Bool)

(assert (=> b!165857 (=> (not res!78778) (not e!108801))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3084 0))(
  ( (tuple2!3085 (_1!1552 (_ BitVec 64)) (_2!1552 V!4617)) )
))
(declare-datatypes ((List!2093 0))(
  ( (Nil!2090) (Cons!2089 (h!2706 tuple2!3084) (t!6903 List!2093)) )
))
(declare-datatypes ((ListLongMap!2053 0))(
  ( (ListLongMap!2054 (toList!1042 List!2093)) )
))
(declare-fun contains!1078 (ListLongMap!2053 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!695 (array!6550 array!6552 (_ BitVec 32) (_ BitVec 32) V!4617 V!4617 (_ BitVec 32) Int) ListLongMap!2053)

(assert (=> b!165857 (= res!78778 (not (contains!1078 (getCurrentListMap!695 (_keys!5241 thiss!1248) (_values!3399 thiss!1248) (mask!8137 thiss!1248) (extraKeys!3157 thiss!1248) (zeroValue!3259 thiss!1248) (minValue!3259 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3416 thiss!1248)) key!828)))))

(declare-fun e!108799 () Bool)

(declare-fun e!108802 () Bool)

(declare-fun tp_is_empty!3727 () Bool)

(declare-fun array_inv!1987 (array!6550) Bool)

(declare-fun array_inv!1988 (array!6552) Bool)

(assert (=> b!165858 (= e!108799 (and tp!14375 tp_is_empty!3727 (array_inv!1987 (_keys!5241 thiss!1248)) (array_inv!1988 (_values!3399 thiss!1248)) e!108802))))

(declare-fun b!165859 () Bool)

(declare-fun res!78777 () Bool)

(assert (=> b!165859 (=> (not res!78777) (not e!108801))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!165859 (= res!78777 (validMask!0 (mask!8137 thiss!1248)))))

(declare-fun b!165861 () Bool)

(declare-fun e!108800 () Bool)

(assert (=> b!165861 (= e!108800 tp_is_empty!3727)))

(declare-fun b!165862 () Bool)

(declare-fun e!108797 () Bool)

(assert (=> b!165862 (= e!108797 e!108801)))

(declare-fun res!78780 () Bool)

(assert (=> b!165862 (=> (not res!78780) (not e!108801))))

(declare-datatypes ((SeekEntryResult!455 0))(
  ( (MissingZero!455 (index!3988 (_ BitVec 32))) (Found!455 (index!3989 (_ BitVec 32))) (Intermediate!455 (undefined!1267 Bool) (index!3990 (_ BitVec 32)) (x!18395 (_ BitVec 32))) (Undefined!455) (MissingVacant!455 (index!3991 (_ BitVec 32))) )
))
(declare-fun lt!83176 () SeekEntryResult!455)

(assert (=> b!165862 (= res!78780 (and (not (is-Undefined!455 lt!83176)) (not (is-MissingVacant!455 lt!83176)) (not (is-MissingZero!455 lt!83176)) (is-Found!455 lt!83176)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6550 (_ BitVec 32)) SeekEntryResult!455)

(assert (=> b!165862 (= lt!83176 (seekEntryOrOpen!0 key!828 (_keys!5241 thiss!1248) (mask!8137 thiss!1248)))))

(declare-fun b!165860 () Bool)

(declare-fun e!108796 () Bool)

(assert (=> b!165860 (= e!108796 tp_is_empty!3727)))

(declare-fun res!78781 () Bool)

(assert (=> start!16632 (=> (not res!78781) (not e!108797))))

(declare-fun valid!852 (LongMapFixedSize!1948) Bool)

(assert (=> start!16632 (= res!78781 (valid!852 thiss!1248))))

(assert (=> start!16632 e!108797))

(assert (=> start!16632 e!108799))

(assert (=> start!16632 true))

(declare-fun b!165863 () Bool)

(declare-fun mapRes!6309 () Bool)

(assert (=> b!165863 (= e!108802 (and e!108800 mapRes!6309))))

(declare-fun condMapEmpty!6309 () Bool)

(declare-fun mapDefault!6309 () ValueCell!1520)

