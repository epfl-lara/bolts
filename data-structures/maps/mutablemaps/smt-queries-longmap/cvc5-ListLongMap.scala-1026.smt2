; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21850 () Bool)

(assert start!21850)

(declare-fun b!219824 () Bool)

(declare-fun b_free!5905 () Bool)

(declare-fun b_next!5905 () Bool)

(assert (=> b!219824 (= b_free!5905 (not b_next!5905))))

(declare-fun tp!20857 () Bool)

(declare-fun b_and!12821 () Bool)

(assert (=> b!219824 (= tp!20857 b_and!12821)))

(declare-fun b!219818 () Bool)

(declare-fun e!142974 () Bool)

(assert (=> b!219818 (= e!142974 false)))

(declare-fun lt!112070 () Bool)

(declare-datatypes ((V!7337 0))(
  ( (V!7338 (val!2928 Int)) )
))
(declare-datatypes ((ValueCell!2540 0))(
  ( (ValueCellFull!2540 (v!4944 V!7337)) (EmptyCell!2540) )
))
(declare-datatypes ((array!10776 0))(
  ( (array!10777 (arr!5107 (Array (_ BitVec 32) ValueCell!2540)) (size!5440 (_ BitVec 32))) )
))
(declare-datatypes ((array!10778 0))(
  ( (array!10779 (arr!5108 (Array (_ BitVec 32) (_ BitVec 64))) (size!5441 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2980 0))(
  ( (LongMapFixedSize!2981 (defaultEntry!4149 Int) (mask!9945 (_ BitVec 32)) (extraKeys!3886 (_ BitVec 32)) (zeroValue!3990 V!7337) (minValue!3990 V!7337) (_size!1539 (_ BitVec 32)) (_keys!6203 array!10778) (_values!4132 array!10776) (_vacant!1539 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2980)

(declare-datatypes ((List!3270 0))(
  ( (Nil!3267) (Cons!3266 (h!3914 (_ BitVec 64)) (t!8237 List!3270)) )
))
(declare-fun arrayNoDuplicates!0 (array!10778 (_ BitVec 32) List!3270) Bool)

(assert (=> b!219818 (= lt!112070 (arrayNoDuplicates!0 (_keys!6203 thiss!1504) #b00000000000000000000000000000000 Nil!3267))))

(declare-fun b!219819 () Bool)

(declare-fun e!142967 () Bool)

(declare-fun tp_is_empty!5767 () Bool)

(assert (=> b!219819 (= e!142967 tp_is_empty!5767)))

(declare-fun b!219820 () Bool)

(declare-fun e!142971 () Bool)

(assert (=> b!219820 (= e!142971 e!142974)))

(declare-fun res!107776 () Bool)

(assert (=> b!219820 (=> (not res!107776) (not e!142974))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!219820 (= res!107776 (inRange!0 index!297 (mask!9945 thiss!1504)))))

(declare-datatypes ((Unit!6555 0))(
  ( (Unit!6556) )
))
(declare-fun lt!112071 () Unit!6555)

(declare-fun e!142968 () Unit!6555)

(assert (=> b!219820 (= lt!112071 e!142968)))

(declare-fun c!36586 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4344 0))(
  ( (tuple2!4345 (_1!2182 (_ BitVec 64)) (_2!2182 V!7337)) )
))
(declare-datatypes ((List!3271 0))(
  ( (Nil!3268) (Cons!3267 (h!3915 tuple2!4344) (t!8238 List!3271)) )
))
(declare-datatypes ((ListLongMap!3271 0))(
  ( (ListLongMap!3272 (toList!1651 List!3271)) )
))
(declare-fun contains!1488 (ListLongMap!3271 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1174 (array!10778 array!10776 (_ BitVec 32) (_ BitVec 32) V!7337 V!7337 (_ BitVec 32) Int) ListLongMap!3271)

(assert (=> b!219820 (= c!36586 (contains!1488 (getCurrentListMap!1174 (_keys!6203 thiss!1504) (_values!4132 thiss!1504) (mask!9945 thiss!1504) (extraKeys!3886 thiss!1504) (zeroValue!3990 thiss!1504) (minValue!3990 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4149 thiss!1504)) key!932))))

(declare-fun bm!20544 () Bool)

(declare-fun call!20548 () Bool)

(declare-fun arrayContainsKey!0 (array!10778 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!20544 (= call!20548 (arrayContainsKey!0 (_keys!6203 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!219821 () Bool)

(declare-fun res!107769 () Bool)

(declare-fun e!142966 () Bool)

(assert (=> b!219821 (=> (not res!107769) (not e!142966))))

(declare-datatypes ((SeekEntryResult!813 0))(
  ( (MissingZero!813 (index!5422 (_ BitVec 32))) (Found!813 (index!5423 (_ BitVec 32))) (Intermediate!813 (undefined!1625 Bool) (index!5424 (_ BitVec 32)) (x!22937 (_ BitVec 32))) (Undefined!813) (MissingVacant!813 (index!5425 (_ BitVec 32))) )
))
(declare-fun lt!112072 () SeekEntryResult!813)

(assert (=> b!219821 (= res!107769 (= (select (arr!5108 (_keys!6203 thiss!1504)) (index!5422 lt!112072)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!219822 () Bool)

(declare-fun e!142977 () Bool)

(declare-fun mapRes!9820 () Bool)

(assert (=> b!219822 (= e!142977 (and e!142967 mapRes!9820))))

(declare-fun condMapEmpty!9820 () Bool)

(declare-fun mapDefault!9820 () ValueCell!2540)

