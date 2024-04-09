; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!15272 () Bool)

(assert start!15272)

(declare-fun b!147431 () Bool)

(declare-fun b_free!3153 () Bool)

(declare-fun b_next!3153 () Bool)

(assert (=> b!147431 (= b_free!3153 (not b_next!3153))))

(declare-fun tp!11968 () Bool)

(declare-fun b_and!9269 () Bool)

(assert (=> b!147431 (= tp!11968 b_and!9269)))

(declare-fun b!147430 () Bool)

(declare-fun b_free!3155 () Bool)

(declare-fun b_next!3155 () Bool)

(assert (=> b!147430 (= b_free!3155 (not b_next!3155))))

(declare-fun tp!11965 () Bool)

(declare-fun b_and!9271 () Bool)

(assert (=> b!147430 (= tp!11965 b_and!9271)))

(declare-fun mapIsEmpty!5055 () Bool)

(declare-fun mapRes!5055 () Bool)

(assert (=> mapIsEmpty!5055 mapRes!5055))

(declare-fun b!147415 () Bool)

(declare-fun res!70044 () Bool)

(declare-fun e!96258 () Bool)

(assert (=> b!147415 (=> (not res!70044) (not e!96258))))

(declare-datatypes ((V!3637 0))(
  ( (V!3638 (val!1541 Int)) )
))
(declare-datatypes ((array!5032 0))(
  ( (array!5033 (arr!2376 (Array (_ BitVec 32) (_ BitVec 64))) (size!2652 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1153 0))(
  ( (ValueCellFull!1153 (v!3372 V!3637)) (EmptyCell!1153) )
))
(declare-datatypes ((array!5034 0))(
  ( (array!5035 (arr!2377 (Array (_ BitVec 32) ValueCell!1153)) (size!2653 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1214 0))(
  ( (LongMapFixedSize!1215 (defaultEntry!3026 Int) (mask!7408 (_ BitVec 32)) (extraKeys!2771 (_ BitVec 32)) (zeroValue!2871 V!3637) (minValue!2871 V!3637) (_size!656 (_ BitVec 32)) (_keys!4795 array!5032) (_values!3009 array!5034) (_vacant!656 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!1214)

(declare-datatypes ((Cell!996 0))(
  ( (Cell!997 (v!3373 LongMapFixedSize!1214)) )
))
(declare-datatypes ((LongMap!996 0))(
  ( (LongMap!997 (underlying!509 Cell!996)) )
))
(declare-fun thiss!992 () LongMap!996)

(assert (=> b!147415 (= res!70044 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7408 newMap!16)) (_size!656 (v!3373 (underlying!509 thiss!992)))))))

(declare-fun b!147416 () Bool)

(declare-fun e!96255 () Bool)

(declare-fun tp_is_empty!2993 () Bool)

(assert (=> b!147416 (= e!96255 tp_is_empty!2993)))

(declare-fun b!147417 () Bool)

(declare-fun e!96268 () Bool)

(assert (=> b!147417 (= e!96258 e!96268)))

(declare-fun res!70039 () Bool)

(assert (=> b!147417 (=> (not res!70039) (not e!96268))))

(declare-datatypes ((tuple2!2768 0))(
  ( (tuple2!2769 (_1!1394 (_ BitVec 64)) (_2!1394 V!3637)) )
))
(declare-datatypes ((List!1808 0))(
  ( (Nil!1805) (Cons!1804 (h!2412 tuple2!2768) (t!6553 List!1808)) )
))
(declare-datatypes ((ListLongMap!1793 0))(
  ( (ListLongMap!1794 (toList!912 List!1808)) )
))
(declare-fun lt!77800 () ListLongMap!1793)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lt!77802 () ListLongMap!1793)

(assert (=> b!147417 (= res!70039 (and (= lt!77800 lt!77802) (not (= (select (arr!2376 (_keys!4795 (v!3373 (underlying!509 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2376 (_keys!4795 (v!3373 (underlying!509 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1478 (LongMapFixedSize!1214) ListLongMap!1793)

(assert (=> b!147417 (= lt!77802 (map!1478 newMap!16))))

(declare-fun getCurrentListMap!575 (array!5032 array!5034 (_ BitVec 32) (_ BitVec 32) V!3637 V!3637 (_ BitVec 32) Int) ListLongMap!1793)

(assert (=> b!147417 (= lt!77800 (getCurrentListMap!575 (_keys!4795 (v!3373 (underlying!509 thiss!992))) (_values!3009 (v!3373 (underlying!509 thiss!992))) (mask!7408 (v!3373 (underlying!509 thiss!992))) (extraKeys!2771 (v!3373 (underlying!509 thiss!992))) (zeroValue!2871 (v!3373 (underlying!509 thiss!992))) (minValue!2871 (v!3373 (underlying!509 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3026 (v!3373 (underlying!509 thiss!992)))))))

(declare-fun mapIsEmpty!5056 () Bool)

(declare-fun mapRes!5056 () Bool)

(assert (=> mapIsEmpty!5056 mapRes!5056))

(declare-fun b!147419 () Bool)

(declare-fun res!70042 () Bool)

(assert (=> b!147419 (=> (not res!70042) (not e!96258))))

(declare-fun valid!594 (LongMapFixedSize!1214) Bool)

(assert (=> b!147419 (= res!70042 (valid!594 newMap!16))))

(declare-fun b!147420 () Bool)

(declare-fun e!96257 () Bool)

(declare-fun e!96261 () Bool)

(assert (=> b!147420 (= e!96257 e!96261)))

(declare-fun mapNonEmpty!5055 () Bool)

(declare-fun tp!11967 () Bool)

(declare-fun e!96260 () Bool)

(assert (=> mapNonEmpty!5055 (= mapRes!5056 (and tp!11967 e!96260))))

(declare-fun mapValue!5055 () ValueCell!1153)

(declare-fun mapRest!5056 () (Array (_ BitVec 32) ValueCell!1153))

(declare-fun mapKey!5056 () (_ BitVec 32))

(assert (=> mapNonEmpty!5055 (= (arr!2377 (_values!3009 newMap!16)) (store mapRest!5056 mapKey!5056 mapValue!5055))))

(declare-fun b!147421 () Bool)

(declare-fun res!70043 () Bool)

(assert (=> b!147421 (=> (not res!70043) (not e!96258))))

(assert (=> b!147421 (= res!70043 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2652 (_keys!4795 (v!3373 (underlying!509 thiss!992)))))))))

(declare-fun b!147422 () Bool)

(declare-fun e!96263 () Bool)

(assert (=> b!147422 (= e!96263 false)))

(declare-fun lt!77804 () ListLongMap!1793)

(declare-fun getCurrentListMapNoExtraKeys!154 (array!5032 array!5034 (_ BitVec 32) (_ BitVec 32) V!3637 V!3637 (_ BitVec 32) Int) ListLongMap!1793)

(assert (=> b!147422 (= lt!77804 (getCurrentListMapNoExtraKeys!154 (_keys!4795 (v!3373 (underlying!509 thiss!992))) (_values!3009 (v!3373 (underlying!509 thiss!992))) (mask!7408 (v!3373 (underlying!509 thiss!992))) (extraKeys!2771 (v!3373 (underlying!509 thiss!992))) (zeroValue!2871 (v!3373 (underlying!509 thiss!992))) (minValue!2871 (v!3373 (underlying!509 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3026 (v!3373 (underlying!509 thiss!992)))))))

(declare-fun b!147423 () Bool)

(declare-fun e!96266 () Bool)

(assert (=> b!147423 (= e!96266 tp_is_empty!2993)))

(declare-fun b!147424 () Bool)

(declare-fun e!96256 () Bool)

(declare-fun e!96254 () Bool)

(assert (=> b!147424 (= e!96256 (and e!96254 mapRes!5056))))

(declare-fun condMapEmpty!5055 () Bool)

(declare-fun mapDefault!5055 () ValueCell!1153)

