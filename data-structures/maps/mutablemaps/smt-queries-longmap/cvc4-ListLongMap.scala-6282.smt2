; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80402 () Bool)

(assert start!80402)

(declare-fun b!943788 () Bool)

(declare-fun b_free!18017 () Bool)

(declare-fun b_next!18017 () Bool)

(assert (=> b!943788 (= b_free!18017 (not b_next!18017))))

(declare-fun tp!62562 () Bool)

(declare-fun b_and!29453 () Bool)

(assert (=> b!943788 (= tp!62562 b_and!29453)))

(declare-fun res!634161 () Bool)

(declare-fun e!530704 () Bool)

(assert (=> start!80402 (=> (not res!634161) (not e!530704))))

(declare-datatypes ((V!32331 0))(
  ( (V!32332 (val!10313 Int)) )
))
(declare-datatypes ((ValueCell!9781 0))(
  ( (ValueCellFull!9781 (v!12845 V!32331)) (EmptyCell!9781) )
))
(declare-datatypes ((array!57040 0))(
  ( (array!57041 (arr!27441 (Array (_ BitVec 32) ValueCell!9781)) (size!27908 (_ BitVec 32))) )
))
(declare-datatypes ((array!57042 0))(
  ( (array!57043 (arr!27442 (Array (_ BitVec 32) (_ BitVec 64))) (size!27909 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4712 0))(
  ( (LongMapFixedSize!4713 (defaultEntry!5651 Int) (mask!27282 (_ BitVec 32)) (extraKeys!5383 (_ BitVec 32)) (zeroValue!5487 V!32331) (minValue!5487 V!32331) (_size!2411 (_ BitVec 32)) (_keys!10525 array!57042) (_values!5674 array!57040) (_vacant!2411 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4712)

(declare-fun valid!1781 (LongMapFixedSize!4712) Bool)

(assert (=> start!80402 (= res!634161 (valid!1781 thiss!1141))))

(assert (=> start!80402 e!530704))

(declare-fun e!530707 () Bool)

(assert (=> start!80402 e!530707))

(assert (=> start!80402 true))

(declare-fun b!943787 () Bool)

(declare-fun res!634159 () Bool)

(assert (=> b!943787 (=> (not res!634159) (not e!530704))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((tuple2!13554 0))(
  ( (tuple2!13555 (_1!6787 (_ BitVec 64)) (_2!6787 V!32331)) )
))
(declare-datatypes ((List!19391 0))(
  ( (Nil!19388) (Cons!19387 (h!20538 tuple2!13554) (t!27716 List!19391)) )
))
(declare-datatypes ((ListLongMap!12265 0))(
  ( (ListLongMap!12266 (toList!6148 List!19391)) )
))
(declare-fun contains!5171 (ListLongMap!12265 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3336 (array!57042 array!57040 (_ BitVec 32) (_ BitVec 32) V!32331 V!32331 (_ BitVec 32) Int) ListLongMap!12265)

(assert (=> b!943787 (= res!634159 (contains!5171 (getCurrentListMap!3336 (_keys!10525 thiss!1141) (_values!5674 thiss!1141) (mask!27282 thiss!1141) (extraKeys!5383 thiss!1141) (zeroValue!5487 thiss!1141) (minValue!5487 thiss!1141) #b00000000000000000000000000000000 (defaultEntry!5651 thiss!1141)) key!756))))

(declare-fun e!530709 () Bool)

(declare-fun tp_is_empty!20525 () Bool)

(declare-fun array_inv!21270 (array!57042) Bool)

(declare-fun array_inv!21271 (array!57040) Bool)

(assert (=> b!943788 (= e!530707 (and tp!62562 tp_is_empty!20525 (array_inv!21270 (_keys!10525 thiss!1141)) (array_inv!21271 (_values!5674 thiss!1141)) e!530709))))

(declare-fun b!943789 () Bool)

(declare-fun res!634162 () Bool)

(assert (=> b!943789 (=> (not res!634162) (not e!530704))))

(declare-datatypes ((SeekEntryResult!9047 0))(
  ( (MissingZero!9047 (index!38558 (_ BitVec 32))) (Found!9047 (index!38559 (_ BitVec 32))) (Intermediate!9047 (undefined!9859 Bool) (index!38560 (_ BitVec 32)) (x!81043 (_ BitVec 32))) (Undefined!9047) (MissingVacant!9047 (index!38561 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57042 (_ BitVec 32)) SeekEntryResult!9047)

(assert (=> b!943789 (= res!634162 (not (is-Found!9047 (seekEntry!0 key!756 (_keys!10525 thiss!1141) (mask!27282 thiss!1141)))))))

(declare-fun b!943790 () Bool)

(declare-fun e!530708 () Bool)

(declare-fun mapRes!32613 () Bool)

(assert (=> b!943790 (= e!530709 (and e!530708 mapRes!32613))))

(declare-fun condMapEmpty!32613 () Bool)

(declare-fun mapDefault!32613 () ValueCell!9781)

