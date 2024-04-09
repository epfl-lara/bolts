; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21868 () Bool)

(assert start!21868)

(declare-fun b!220421 () Bool)

(declare-fun b_free!5923 () Bool)

(declare-fun b_next!5923 () Bool)

(assert (=> b!220421 (= b_free!5923 (not b_next!5923))))

(declare-fun tp!20911 () Bool)

(declare-fun b_and!12839 () Bool)

(assert (=> b!220421 (= tp!20911 b_and!12839)))

(declare-fun b!220412 () Bool)

(declare-fun e!143323 () Bool)

(declare-fun e!143327 () Bool)

(assert (=> b!220412 (= e!143323 e!143327)))

(declare-fun res!108101 () Bool)

(assert (=> b!220412 (=> (not res!108101) (not e!143327))))

(declare-datatypes ((SeekEntryResult!822 0))(
  ( (MissingZero!822 (index!5458 (_ BitVec 32))) (Found!822 (index!5459 (_ BitVec 32))) (Intermediate!822 (undefined!1634 Bool) (index!5460 (_ BitVec 32)) (x!22970 (_ BitVec 32))) (Undefined!822) (MissingVacant!822 (index!5461 (_ BitVec 32))) )
))
(declare-fun lt!112208 () SeekEntryResult!822)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!220412 (= res!108101 (or (= lt!112208 (MissingZero!822 index!297)) (= lt!112208 (MissingVacant!822 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7361 0))(
  ( (V!7362 (val!2937 Int)) )
))
(declare-datatypes ((ValueCell!2549 0))(
  ( (ValueCellFull!2549 (v!4953 V!7361)) (EmptyCell!2549) )
))
(declare-datatypes ((array!10812 0))(
  ( (array!10813 (arr!5125 (Array (_ BitVec 32) ValueCell!2549)) (size!5458 (_ BitVec 32))) )
))
(declare-datatypes ((array!10814 0))(
  ( (array!10815 (arr!5126 (Array (_ BitVec 32) (_ BitVec 64))) (size!5459 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2998 0))(
  ( (LongMapFixedSize!2999 (defaultEntry!4158 Int) (mask!9960 (_ BitVec 32)) (extraKeys!3895 (_ BitVec 32)) (zeroValue!3999 V!7361) (minValue!3999 V!7361) (_size!1548 (_ BitVec 32)) (_keys!6212 array!10814) (_values!4141 array!10812) (_vacant!1548 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2998)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10814 (_ BitVec 32)) SeekEntryResult!822)

(assert (=> b!220412 (= lt!112208 (seekEntryOrOpen!0 key!932 (_keys!6212 thiss!1504) (mask!9960 thiss!1504)))))

(declare-fun b!220413 () Bool)

(declare-fun e!143320 () Bool)

(declare-fun tp_is_empty!5785 () Bool)

(assert (=> b!220413 (= e!143320 tp_is_empty!5785)))

(declare-fun b!220414 () Bool)

(declare-fun e!143321 () Bool)

(assert (=> b!220414 (= e!143327 e!143321)))

(declare-fun res!108093 () Bool)

(assert (=> b!220414 (=> (not res!108093) (not e!143321))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!220414 (= res!108093 (inRange!0 index!297 (mask!9960 thiss!1504)))))

(declare-datatypes ((Unit!6571 0))(
  ( (Unit!6572) )
))
(declare-fun lt!112206 () Unit!6571)

(declare-fun e!143317 () Unit!6571)

(assert (=> b!220414 (= lt!112206 e!143317)))

(declare-fun c!36667 () Bool)

(declare-datatypes ((tuple2!4354 0))(
  ( (tuple2!4355 (_1!2187 (_ BitVec 64)) (_2!2187 V!7361)) )
))
(declare-datatypes ((List!3281 0))(
  ( (Nil!3278) (Cons!3277 (h!3925 tuple2!4354) (t!8248 List!3281)) )
))
(declare-datatypes ((ListLongMap!3281 0))(
  ( (ListLongMap!3282 (toList!1656 List!3281)) )
))
(declare-fun contains!1493 (ListLongMap!3281 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1179 (array!10814 array!10812 (_ BitVec 32) (_ BitVec 32) V!7361 V!7361 (_ BitVec 32) Int) ListLongMap!3281)

(assert (=> b!220414 (= c!36667 (contains!1493 (getCurrentListMap!1179 (_keys!6212 thiss!1504) (_values!4141 thiss!1504) (mask!9960 thiss!1504) (extraKeys!3895 thiss!1504) (zeroValue!3999 thiss!1504) (minValue!3999 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4158 thiss!1504)) key!932))))

(declare-fun b!220415 () Bool)

(declare-fun res!108097 () Bool)

(assert (=> b!220415 (=> (not res!108097) (not e!143323))))

(assert (=> b!220415 (= res!108097 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!220416 () Bool)

(declare-fun e!143324 () Bool)

(declare-fun mapRes!9847 () Bool)

(assert (=> b!220416 (= e!143324 (and e!143320 mapRes!9847))))

(declare-fun condMapEmpty!9847 () Bool)

(declare-fun mapDefault!9847 () ValueCell!2549)

