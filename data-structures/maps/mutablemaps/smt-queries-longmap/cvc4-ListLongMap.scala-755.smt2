; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!17712 () Bool)

(assert start!17712)

(declare-fun b!176958 () Bool)

(declare-fun b_free!4373 () Bool)

(declare-fun b_next!4373 () Bool)

(assert (=> b!176958 (= b_free!4373 (not b_next!4373))))

(declare-fun tp!15815 () Bool)

(declare-fun b_and!10889 () Bool)

(assert (=> b!176958 (= tp!15815 b_and!10889)))

(declare-fun b!176953 () Bool)

(declare-fun res!83905 () Bool)

(declare-fun e!116706 () Bool)

(assert (=> b!176953 (=> (not res!83905) (not e!116706))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!176953 (= res!83905 (not (= key!828 (bvneg key!828))))))

(declare-fun b!176954 () Bool)

(declare-fun res!83907 () Bool)

(assert (=> b!176954 (=> (not res!83907) (not e!116706))))

(declare-datatypes ((V!5173 0))(
  ( (V!5174 (val!2117 Int)) )
))
(declare-datatypes ((ValueCell!1729 0))(
  ( (ValueCellFull!1729 (v!3992 V!5173)) (EmptyCell!1729) )
))
(declare-datatypes ((array!7438 0))(
  ( (array!7439 (arr!3528 (Array (_ BitVec 32) (_ BitVec 64))) (size!3832 (_ BitVec 32))) )
))
(declare-datatypes ((array!7440 0))(
  ( (array!7441 (arr!3529 (Array (_ BitVec 32) ValueCell!1729)) (size!3833 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2366 0))(
  ( (LongMapFixedSize!2367 (defaultEntry!3645 Int) (mask!8574 (_ BitVec 32)) (extraKeys!3382 (_ BitVec 32)) (zeroValue!3486 V!5173) (minValue!3486 V!5173) (_size!1232 (_ BitVec 32)) (_keys!5510 array!7438) (_values!3628 array!7440) (_vacant!1232 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2366)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7438 (_ BitVec 32)) Bool)

(assert (=> b!176954 (= res!83907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5510 thiss!1248) (mask!8574 thiss!1248)))))

(declare-fun b!176955 () Bool)

(declare-fun res!83903 () Bool)

(assert (=> b!176955 (=> (not res!83903) (not e!116706))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!176955 (= res!83903 (validMask!0 (mask!8574 thiss!1248)))))

(declare-fun mapNonEmpty!7077 () Bool)

(declare-fun mapRes!7077 () Bool)

(declare-fun tp!15816 () Bool)

(declare-fun e!116702 () Bool)

(assert (=> mapNonEmpty!7077 (= mapRes!7077 (and tp!15816 e!116702))))

(declare-fun mapKey!7077 () (_ BitVec 32))

(declare-fun mapRest!7077 () (Array (_ BitVec 32) ValueCell!1729))

(declare-fun mapValue!7077 () ValueCell!1729)

(assert (=> mapNonEmpty!7077 (= (arr!3529 (_values!3628 thiss!1248)) (store mapRest!7077 mapKey!7077 mapValue!7077))))

(declare-fun mapIsEmpty!7077 () Bool)

(assert (=> mapIsEmpty!7077 mapRes!7077))

(declare-fun b!176956 () Bool)

(declare-fun res!83909 () Bool)

(assert (=> b!176956 (=> (not res!83909) (not e!116706))))

(declare-datatypes ((List!2268 0))(
  ( (Nil!2265) (Cons!2264 (h!2885 (_ BitVec 64)) (t!7104 List!2268)) )
))
(declare-fun arrayNoDuplicates!0 (array!7438 (_ BitVec 32) List!2268) Bool)

(assert (=> b!176956 (= res!83909 (arrayNoDuplicates!0 (_keys!5510 thiss!1248) #b00000000000000000000000000000000 Nil!2265))))

(declare-fun b!176957 () Bool)

(declare-fun res!83904 () Bool)

(assert (=> b!176957 (=> (not res!83904) (not e!116706))))

(declare-datatypes ((tuple2!3292 0))(
  ( (tuple2!3293 (_1!1656 (_ BitVec 64)) (_2!1656 V!5173)) )
))
(declare-datatypes ((List!2269 0))(
  ( (Nil!2266) (Cons!2265 (h!2886 tuple2!3292) (t!7105 List!2269)) )
))
(declare-datatypes ((ListLongMap!2233 0))(
  ( (ListLongMap!2234 (toList!1132 List!2269)) )
))
(declare-fun contains!1191 (ListLongMap!2233 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!779 (array!7438 array!7440 (_ BitVec 32) (_ BitVec 32) V!5173 V!5173 (_ BitVec 32) Int) ListLongMap!2233)

(assert (=> b!176957 (= res!83904 (contains!1191 (getCurrentListMap!779 (_keys!5510 thiss!1248) (_values!3628 thiss!1248) (mask!8574 thiss!1248) (extraKeys!3382 thiss!1248) (zeroValue!3486 thiss!1248) (minValue!3486 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3645 thiss!1248)) key!828))))

(declare-fun tp_is_empty!4145 () Bool)

(declare-fun e!116705 () Bool)

(declare-fun e!116704 () Bool)

(declare-fun array_inv!2251 (array!7438) Bool)

(declare-fun array_inv!2252 (array!7440) Bool)

(assert (=> b!176958 (= e!116704 (and tp!15815 tp_is_empty!4145 (array_inv!2251 (_keys!5510 thiss!1248)) (array_inv!2252 (_values!3628 thiss!1248)) e!116705))))

(declare-fun b!176959 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!176959 (= e!116706 (not (validKeyInArray!0 key!828)))))

(declare-fun res!83902 () Bool)

(assert (=> start!17712 (=> (not res!83902) (not e!116706))))

(declare-fun valid!985 (LongMapFixedSize!2366) Bool)

(assert (=> start!17712 (= res!83902 (valid!985 thiss!1248))))

(assert (=> start!17712 e!116706))

(assert (=> start!17712 e!116704))

(assert (=> start!17712 true))

(declare-fun b!176952 () Bool)

(assert (=> b!176952 (= e!116702 tp_is_empty!4145)))

(declare-fun b!176960 () Bool)

(declare-fun e!116703 () Bool)

(assert (=> b!176960 (= e!116705 (and e!116703 mapRes!7077))))

(declare-fun condMapEmpty!7077 () Bool)

(declare-fun mapDefault!7077 () ValueCell!1729)

