; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!80938 () Bool)

(assert start!80938)

(declare-fun b!947867 () Bool)

(declare-fun b_free!18193 () Bool)

(declare-fun b_next!18193 () Bool)

(assert (=> b!947867 (= b_free!18193 (not b_next!18193))))

(declare-fun tp!63151 () Bool)

(declare-fun b_and!29637 () Bool)

(assert (=> b!947867 (= tp!63151 b_and!29637)))

(declare-fun b!947860 () Bool)

(declare-fun res!636128 () Bool)

(declare-fun e!533595 () Bool)

(assert (=> b!947860 (=> (not res!636128) (not e!533595))))

(declare-fun key!756 () (_ BitVec 64))

(declare-datatypes ((V!32567 0))(
  ( (V!32568 (val!10401 Int)) )
))
(declare-datatypes ((ValueCell!9869 0))(
  ( (ValueCellFull!9869 (v!12937 V!32567)) (EmptyCell!9869) )
))
(declare-datatypes ((array!57428 0))(
  ( (array!57429 (arr!27617 (Array (_ BitVec 32) ValueCell!9869)) (size!28091 (_ BitVec 32))) )
))
(declare-datatypes ((array!57430 0))(
  ( (array!57431 (arr!27618 (Array (_ BitVec 32) (_ BitVec 64))) (size!28092 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4888 0))(
  ( (LongMapFixedSize!4889 (defaultEntry!5744 Int) (mask!27489 (_ BitVec 32)) (extraKeys!5476 (_ BitVec 32)) (zeroValue!5580 V!32567) (minValue!5580 V!32567) (_size!2499 (_ BitVec 32)) (_keys!10655 array!57430) (_values!5767 array!57428) (_vacant!2499 (_ BitVec 32))) )
))
(declare-fun thiss!1141 () LongMapFixedSize!4888)

(declare-datatypes ((SeekEntryResult!9114 0))(
  ( (MissingZero!9114 (index!38826 (_ BitVec 32))) (Found!9114 (index!38827 (_ BitVec 32))) (Intermediate!9114 (undefined!9926 Bool) (index!38828 (_ BitVec 32)) (x!81559 (_ BitVec 32))) (Undefined!9114) (MissingVacant!9114 (index!38829 (_ BitVec 32))) )
))
(declare-fun seekEntry!0 ((_ BitVec 64) array!57430 (_ BitVec 32)) SeekEntryResult!9114)

(assert (=> b!947860 (= res!636128 (not (is-Found!9114 (seekEntry!0 key!756 (_keys!10655 thiss!1141) (mask!27489 thiss!1141)))))))

(declare-fun b!947861 () Bool)

(declare-fun e!533597 () Bool)

(declare-fun e!533596 () Bool)

(declare-fun mapRes!32938 () Bool)

(assert (=> b!947861 (= e!533597 (and e!533596 mapRes!32938))))

(declare-fun condMapEmpty!32938 () Bool)

(declare-fun mapDefault!32938 () ValueCell!9869)

