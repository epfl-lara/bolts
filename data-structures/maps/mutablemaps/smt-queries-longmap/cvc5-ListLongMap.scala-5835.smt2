; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75340 () Bool)

(assert start!75340)

(declare-fun b!887057 () Bool)

(declare-fun b_free!15511 () Bool)

(declare-fun b_next!15511 () Bool)

(assert (=> b!887057 (= b_free!15511 (not b_next!15511))))

(declare-fun tp!54467 () Bool)

(declare-fun b_and!25735 () Bool)

(assert (=> b!887057 (= tp!54467 b_and!25735)))

(declare-fun b!887051 () Bool)

(declare-fun e!493984 () Bool)

(declare-fun e!493989 () Bool)

(declare-fun mapRes!28278 () Bool)

(assert (=> b!887051 (= e!493984 (and e!493989 mapRes!28278))))

(declare-fun condMapEmpty!28278 () Bool)

(declare-datatypes ((V!28751 0))(
  ( (V!28752 (val!8970 Int)) )
))
(declare-datatypes ((ValueCell!8438 0))(
  ( (ValueCellFull!8438 (v!11416 V!28751)) (EmptyCell!8438) )
))
(declare-datatypes ((array!51624 0))(
  ( (array!51625 (arr!24824 (Array (_ BitVec 32) ValueCell!8438)) (size!25265 (_ BitVec 32))) )
))
(declare-datatypes ((array!51626 0))(
  ( (array!51627 (arr!24825 (Array (_ BitVec 32) (_ BitVec 64))) (size!25266 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3892 0))(
  ( (LongMapFixedSize!3893 (defaultEntry!5134 Int) (mask!25522 (_ BitVec 32)) (extraKeys!4827 (_ BitVec 32)) (zeroValue!4931 V!28751) (minValue!4931 V!28751) (_size!2001 (_ BitVec 32)) (_keys!9805 array!51626) (_values!5118 array!51624) (_vacant!2001 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1046 0))(
  ( (Cell!1047 (v!11417 LongMapFixedSize!3892)) )
))
(declare-datatypes ((LongMap!1046 0))(
  ( (LongMap!1047 (underlying!534 Cell!1046)) )
))
(declare-fun thiss!833 () LongMap!1046)

(declare-fun mapDefault!28278 () ValueCell!8438)

