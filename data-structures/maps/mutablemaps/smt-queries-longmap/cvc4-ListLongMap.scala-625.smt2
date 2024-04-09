; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!16114 () Bool)

(assert start!16114)

(declare-fun b!160054 () Bool)

(declare-fun b_free!3563 () Bool)

(declare-fun b_next!3563 () Bool)

(assert (=> b!160054 (= b_free!3563 (not b_next!3563))))

(declare-fun tp!13258 () Bool)

(declare-fun b_and!9995 () Bool)

(assert (=> b!160054 (= tp!13258 b_and!9995)))

(declare-fun b!160045 () Bool)

(declare-fun res!75739 () Bool)

(declare-fun e!104698 () Bool)

(assert (=> b!160045 (=> (not res!75739) (not e!104698))))

(declare-datatypes ((V!4133 0))(
  ( (V!4134 (val!1727 Int)) )
))
(declare-datatypes ((ValueCell!1339 0))(
  ( (ValueCellFull!1339 (v!3588 V!4133)) (EmptyCell!1339) )
))
(declare-datatypes ((array!5808 0))(
  ( (array!5809 (arr!2748 (Array (_ BitVec 32) (_ BitVec 64))) (size!3032 (_ BitVec 32))) )
))
(declare-datatypes ((array!5810 0))(
  ( (array!5811 (arr!2749 (Array (_ BitVec 32) ValueCell!1339)) (size!3033 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1586 0))(
  ( (LongMapFixedSize!1587 (defaultEntry!3235 Int) (mask!7797 (_ BitVec 32)) (extraKeys!2976 (_ BitVec 32)) (zeroValue!3078 V!4133) (minValue!3078 V!4133) (_size!842 (_ BitVec 32)) (_keys!5036 array!5808) (_values!3218 array!5810) (_vacant!842 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1586)

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!2896 0))(
  ( (tuple2!2897 (_1!1458 (_ BitVec 64)) (_2!1458 V!4133)) )
))
(declare-datatypes ((List!1950 0))(
  ( (Nil!1947) (Cons!1946 (h!2559 tuple2!2896) (t!6760 List!1950)) )
))
(declare-datatypes ((ListLongMap!1905 0))(
  ( (ListLongMap!1906 (toList!968 List!1950)) )
))
(declare-fun contains!998 (ListLongMap!1905 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!628 (array!5808 array!5810 (_ BitVec 32) (_ BitVec 32) V!4133 V!4133 (_ BitVec 32) Int) ListLongMap!1905)

(assert (=> b!160045 (= res!75739 (contains!998 (getCurrentListMap!628 (_keys!5036 thiss!1248) (_values!3218 thiss!1248) (mask!7797 thiss!1248) (extraKeys!2976 thiss!1248) (zeroValue!3078 thiss!1248) (minValue!3078 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3235 thiss!1248)) key!828))))

(declare-fun b!160046 () Bool)

(assert (=> b!160046 (= e!104698 false)))

(declare-fun lt!82079 () Bool)

(declare-datatypes ((List!1951 0))(
  ( (Nil!1948) (Cons!1947 (h!2560 (_ BitVec 64)) (t!6761 List!1951)) )
))
(declare-fun arrayNoDuplicates!0 (array!5808 (_ BitVec 32) List!1951) Bool)

(assert (=> b!160046 (= lt!82079 (arrayNoDuplicates!0 (_keys!5036 thiss!1248) #b00000000000000000000000000000000 Nil!1948))))

(declare-fun b!160047 () Bool)

(declare-fun e!104697 () Bool)

(declare-fun tp_is_empty!3365 () Bool)

(assert (=> b!160047 (= e!104697 tp_is_empty!3365)))

(declare-fun mapIsEmpty!5735 () Bool)

(declare-fun mapRes!5735 () Bool)

(assert (=> mapIsEmpty!5735 mapRes!5735))

(declare-fun b!160048 () Bool)

(declare-fun e!104694 () Bool)

(assert (=> b!160048 (= e!104694 tp_is_empty!3365)))

(declare-fun b!160049 () Bool)

(declare-fun res!75740 () Bool)

(assert (=> b!160049 (=> (not res!75740) (not e!104698))))

(assert (=> b!160049 (= res!75740 (not (= key!828 (bvneg key!828))))))

(declare-fun res!75743 () Bool)

(assert (=> start!16114 (=> (not res!75743) (not e!104698))))

(declare-fun valid!733 (LongMapFixedSize!1586) Bool)

(assert (=> start!16114 (= res!75743 (valid!733 thiss!1248))))

(assert (=> start!16114 e!104698))

(declare-fun e!104699 () Bool)

(assert (=> start!16114 e!104699))

(assert (=> start!16114 true))

(declare-fun b!160050 () Bool)

(declare-fun e!104695 () Bool)

(assert (=> b!160050 (= e!104695 (and e!104694 mapRes!5735))))

(declare-fun condMapEmpty!5735 () Bool)

(declare-fun mapDefault!5735 () ValueCell!1339)

