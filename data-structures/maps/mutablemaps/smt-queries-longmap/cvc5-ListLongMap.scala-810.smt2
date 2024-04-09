; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19704 () Bool)

(assert start!19704)

(declare-fun b!192950 () Bool)

(declare-fun b_free!4699 () Bool)

(declare-fun b_next!4699 () Bool)

(assert (=> b!192950 (= b_free!4699 (not b_next!4699))))

(declare-fun tp!16957 () Bool)

(declare-fun b_and!11419 () Bool)

(assert (=> b!192950 (= tp!16957 b_and!11419)))

(declare-fun b!192938 () Bool)

(declare-datatypes ((Unit!5838 0))(
  ( (Unit!5839) )
))
(declare-fun e!126959 () Unit!5838)

(declare-fun Unit!5840 () Unit!5838)

(assert (=> b!192938 (= e!126959 Unit!5840)))

(declare-fun lt!96043 () Unit!5838)

(declare-datatypes ((V!5609 0))(
  ( (V!5610 (val!2280 Int)) )
))
(declare-datatypes ((ValueCell!1892 0))(
  ( (ValueCellFull!1892 (v!4229 V!5609)) (EmptyCell!1892) )
))
(declare-datatypes ((array!8186 0))(
  ( (array!8187 (arr!3854 (Array (_ BitVec 32) (_ BitVec 64))) (size!4178 (_ BitVec 32))) )
))
(declare-datatypes ((array!8188 0))(
  ( (array!8189 (arr!3855 (Array (_ BitVec 32) ValueCell!1892)) (size!4179 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2692 0))(
  ( (LongMapFixedSize!2693 (defaultEntry!3938 Int) (mask!9183 (_ BitVec 32)) (extraKeys!3675 (_ BitVec 32)) (zeroValue!3779 V!5609) (minValue!3779 V!5609) (_size!1395 (_ BitVec 32)) (_keys!5926 array!8186) (_values!3921 array!8188) (_vacant!1395 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2692)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!186 (array!8186 array!8188 (_ BitVec 32) (_ BitVec 32) V!5609 V!5609 (_ BitVec 64) Int) Unit!5838)

(assert (=> b!192938 (= lt!96043 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!186 (_keys!5926 thiss!1248) (_values!3921 thiss!1248) (mask!9183 thiss!1248) (extraKeys!3675 thiss!1248) (zeroValue!3779 thiss!1248) (minValue!3779 thiss!1248) key!828 (defaultEntry!3938 thiss!1248)))))

(assert (=> b!192938 false))

(declare-fun b!192939 () Bool)

(declare-fun e!126962 () Bool)

(declare-fun e!126963 () Bool)

(declare-fun mapRes!7730 () Bool)

(assert (=> b!192939 (= e!126962 (and e!126963 mapRes!7730))))

(declare-fun condMapEmpty!7730 () Bool)

(declare-fun mapDefault!7730 () ValueCell!1892)

