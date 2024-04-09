; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75314 () Bool)

(assert start!75314)

(declare-fun b!886845 () Bool)

(declare-fun b_free!15493 () Bool)

(declare-fun b_next!15493 () Bool)

(assert (=> b!886845 (= b_free!15493 (not b_next!15493))))

(declare-fun tp!54410 () Bool)

(declare-fun b_and!25717 () Bool)

(assert (=> b!886845 (= tp!54410 b_and!25717)))

(declare-fun mapIsEmpty!28248 () Bool)

(declare-fun mapRes!28248 () Bool)

(assert (=> mapIsEmpty!28248 mapRes!28248))

(declare-fun b!886843 () Bool)

(declare-fun e!493757 () Bool)

(declare-fun e!493758 () Bool)

(assert (=> b!886843 (= e!493757 (and e!493758 mapRes!28248))))

(declare-fun condMapEmpty!28248 () Bool)

(declare-datatypes ((V!28727 0))(
  ( (V!28728 (val!8961 Int)) )
))
(declare-datatypes ((ValueCell!8429 0))(
  ( (ValueCellFull!8429 (v!11398 V!28727)) (EmptyCell!8429) )
))
(declare-datatypes ((array!51586 0))(
  ( (array!51587 (arr!24806 (Array (_ BitVec 32) ValueCell!8429)) (size!25247 (_ BitVec 32))) )
))
(declare-datatypes ((array!51588 0))(
  ( (array!51589 (arr!24807 (Array (_ BitVec 32) (_ BitVec 64))) (size!25248 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3874 0))(
  ( (LongMapFixedSize!3875 (defaultEntry!5125 Int) (mask!25507 (_ BitVec 32)) (extraKeys!4818 (_ BitVec 32)) (zeroValue!4922 V!28727) (minValue!4922 V!28727) (_size!1992 (_ BitVec 32)) (_keys!9796 array!51588) (_values!5109 array!51586) (_vacant!1992 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1028 0))(
  ( (Cell!1029 (v!11399 LongMapFixedSize!3874)) )
))
(declare-datatypes ((LongMap!1028 0))(
  ( (LongMap!1029 (underlying!525 Cell!1028)) )
))
(declare-fun thiss!833 () LongMap!1028)

(declare-fun mapDefault!28248 () ValueCell!8429)

