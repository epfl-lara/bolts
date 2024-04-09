; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75932 () Bool)

(assert start!75932)

(declare-fun b!892928 () Bool)

(declare-fun b_free!15839 () Bool)

(declare-fun b_next!15839 () Bool)

(assert (=> b!892928 (= b_free!15839 (not b_next!15839))))

(declare-fun tp!55489 () Bool)

(declare-fun b_and!26119 () Bool)

(assert (=> b!892928 (= tp!55489 b_and!26119)))

(declare-fun b!892922 () Bool)

(declare-fun e!498623 () Bool)

(declare-datatypes ((SeekEntryResult!8851 0))(
  ( (MissingZero!8851 (index!37774 (_ BitVec 32))) (Found!8851 (index!37775 (_ BitVec 32))) (Intermediate!8851 (undefined!9663 Bool) (index!37776 (_ BitVec 32)) (x!75896 (_ BitVec 32))) (Undefined!8851) (MissingVacant!8851 (index!37777 (_ BitVec 32))) )
))
(declare-fun lt!403464 () SeekEntryResult!8851)

(declare-datatypes ((array!52302 0))(
  ( (array!52303 (arr!25152 (Array (_ BitVec 32) (_ BitVec 64))) (size!25597 (_ BitVec 32))) )
))
(declare-datatypes ((V!29187 0))(
  ( (V!29188 (val!9134 Int)) )
))
(declare-datatypes ((ValueCell!8602 0))(
  ( (ValueCellFull!8602 (v!11609 V!29187)) (EmptyCell!8602) )
))
(declare-datatypes ((array!52304 0))(
  ( (array!52305 (arr!25153 (Array (_ BitVec 32) ValueCell!8602)) (size!25598 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4220 0))(
  ( (LongMapFixedSize!4221 (defaultEntry!5310 Int) (mask!25825 (_ BitVec 32)) (extraKeys!5005 (_ BitVec 32)) (zeroValue!5109 V!29187) (minValue!5109 V!29187) (_size!2165 (_ BitVec 32)) (_keys!9991 array!52302) (_values!5296 array!52304) (_vacant!2165 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4220)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!892922 (= e!498623 (inRange!0 (index!37775 lt!403464) (mask!25825 thiss!1181)))))

(declare-fun b!892923 () Bool)

(declare-fun e!498625 () Bool)

(declare-fun e!498624 () Bool)

(declare-fun mapRes!28808 () Bool)

(assert (=> b!892923 (= e!498625 (and e!498624 mapRes!28808))))

(declare-fun condMapEmpty!28808 () Bool)

(declare-fun mapDefault!28808 () ValueCell!8602)

