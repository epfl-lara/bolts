; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75808 () Bool)

(assert start!75808)

(declare-fun b!891115 () Bool)

(declare-fun b_free!15751 () Bool)

(declare-fun b_next!15751 () Bool)

(assert (=> b!891115 (= b_free!15751 (not b_next!15751))))

(declare-fun tp!55223 () Bool)

(declare-fun b_and!26009 () Bool)

(assert (=> b!891115 (= tp!55223 b_and!26009)))

(declare-fun b!891110 () Bool)

(declare-fun e!497252 () Bool)

(declare-fun e!497250 () Bool)

(declare-fun mapRes!28673 () Bool)

(assert (=> b!891110 (= e!497252 (and e!497250 mapRes!28673))))

(declare-fun condMapEmpty!28673 () Bool)

(declare-datatypes ((array!52124 0))(
  ( (array!52125 (arr!25064 (Array (_ BitVec 32) (_ BitVec 64))) (size!25509 (_ BitVec 32))) )
))
(declare-datatypes ((V!29071 0))(
  ( (V!29072 (val!9090 Int)) )
))
(declare-datatypes ((ValueCell!8558 0))(
  ( (ValueCellFull!8558 (v!11562 V!29071)) (EmptyCell!8558) )
))
(declare-datatypes ((array!52126 0))(
  ( (array!52127 (arr!25065 (Array (_ BitVec 32) ValueCell!8558)) (size!25510 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!4132 0))(
  ( (LongMapFixedSize!4133 (defaultEntry!5263 Int) (mask!25747 (_ BitVec 32)) (extraKeys!4957 (_ BitVec 32)) (zeroValue!5061 V!29071) (minValue!5061 V!29071) (_size!2121 (_ BitVec 32)) (_keys!9942 array!52124) (_values!5248 array!52126) (_vacant!2121 (_ BitVec 32))) )
))
(declare-fun thiss!1181 () LongMapFixedSize!4132)

(declare-fun mapDefault!28673 () ValueCell!8558)

