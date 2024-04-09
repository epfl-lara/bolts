; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21640 () Bool)

(assert start!21640)

(declare-fun b!216788 () Bool)

(declare-fun b_free!5777 () Bool)

(declare-fun b_next!5777 () Bool)

(assert (=> b!216788 (= b_free!5777 (not b_next!5777))))

(declare-fun tp!20466 () Bool)

(declare-fun b_and!12685 () Bool)

(assert (=> b!216788 (= tp!20466 b_and!12685)))

(declare-fun b!216789 () Bool)

(declare-fun res!106080 () Bool)

(declare-fun e!141052 () Bool)

(assert (=> b!216789 (=> (not res!106080) (not e!141052))))

(declare-datatypes ((V!7165 0))(
  ( (V!7166 (val!2864 Int)) )
))
(declare-datatypes ((ValueCell!2476 0))(
  ( (ValueCellFull!2476 (v!4878 V!7165)) (EmptyCell!2476) )
))
(declare-datatypes ((array!10516 0))(
  ( (array!10517 (arr!4979 (Array (_ BitVec 32) ValueCell!2476)) (size!5311 (_ BitVec 32))) )
))
(declare-datatypes ((array!10518 0))(
  ( (array!10519 (arr!4980 (Array (_ BitVec 32) (_ BitVec 64))) (size!5312 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2852 0))(
  ( (LongMapFixedSize!2853 (defaultEntry!4076 Int) (mask!9819 (_ BitVec 32)) (extraKeys!3813 (_ BitVec 32)) (zeroValue!3917 V!7165) (minValue!3917 V!7165) (_size!1475 (_ BitVec 32)) (_keys!6125 array!10518) (_values!4059 array!10516) (_vacant!1475 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2852)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4258 0))(
  ( (tuple2!4259 (_1!2139 (_ BitVec 64)) (_2!2139 V!7165)) )
))
(declare-datatypes ((List!3186 0))(
  ( (Nil!3183) (Cons!3182 (h!3829 tuple2!4258) (t!8149 List!3186)) )
))
(declare-datatypes ((ListLongMap!3185 0))(
  ( (ListLongMap!3186 (toList!1608 List!3186)) )
))
(declare-fun contains!1443 (ListLongMap!3185 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1131 (array!10518 array!10516 (_ BitVec 32) (_ BitVec 32) V!7165 V!7165 (_ BitVec 32) Int) ListLongMap!3185)

(assert (=> b!216789 (= res!106080 (contains!1443 (getCurrentListMap!1131 (_keys!6125 thiss!1504) (_values!4059 thiss!1504) (mask!9819 thiss!1504) (extraKeys!3813 thiss!1504) (zeroValue!3917 thiss!1504) (minValue!3917 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4076 thiss!1504)) key!932))))

(declare-fun b!216790 () Bool)

(declare-fun res!106078 () Bool)

(assert (=> b!216790 (=> (not res!106078) (not e!141052))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10518 (_ BitVec 32)) Bool)

(assert (=> b!216790 (= res!106078 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6125 thiss!1504) (mask!9819 thiss!1504)))))

(declare-fun b!216791 () Bool)

(declare-fun e!141050 () Bool)

(declare-fun e!141051 () Bool)

(declare-fun mapRes!9621 () Bool)

(assert (=> b!216791 (= e!141050 (and e!141051 mapRes!9621))))

(declare-fun condMapEmpty!9621 () Bool)

(declare-fun mapDefault!9621 () ValueCell!2476)

