; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75788 () Bool)

(assert start!75788)

(declare-fun b!890780 () Bool)

(declare-fun b_free!15731 () Bool)

(declare-fun b_next!15731 () Bool)

(assert (=> b!890780 (= b_free!15731 (not b_next!15731))))

(declare-fun tp!55162 () Bool)

(declare-fun b_and!25989 () Bool)

(assert (=> b!890780 (= tp!55162 b_and!25989)))

(declare-fun b!890777 () Bool)

(declare-fun e!496982 () Bool)

(declare-fun e!496980 () Bool)

(declare-fun mapRes!28643 () Bool)

(assert (=> b!890777 (= e!496982 (and e!496980 mapRes!28643))))

(declare-fun condMapEmpty!28643 () Bool)

(declare-datatypes ((array!52084 0))(
  ( (array!52085 (arr!25044 (Array (_ BitVec 32) (_ BitVec 64))) (size!25489 (_ BitVec 32))) )
))
(declare-datatypes ((V!29043 0))(
  ( (V!29044 (val!9080 Int)) )
))
(declare-datatypes ((ValueCell!8548 0))(
  ( (ValueCellFull!8548 (v!11552 V!29043)) (EmptyCell!8548) )
))
(declare-datatypes ((array!52086 0))(
  ( (array!52087 (arr!25045 (Array (_ BitVec 32) ValueCell!8548)) (size!25490 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4112 0))(
  ( (LongMapFixedSize!4113 (defaultEntry!5253 Int) (mask!25729 (_ BitVec 32)) (extraKeys!4947 (_ BitVec 32)) (zeroValue!5051 V!29043) (minValue!5051 V!29043) (_size!2111 (_ BitVec 32)) (_keys!9932 array!52084) (_values!5238 array!52086) (_vacant!2111 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4112)

(declare-fun mapDefault!28643 () ValueCell!8548)

