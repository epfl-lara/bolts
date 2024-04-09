; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!3634 () Bool)

(assert start!3634)

(declare-fun b!25167 () Bool)

(declare-fun b_free!767 () Bool)

(declare-fun b_next!767 () Bool)

(assert (=> b!25167 (= b_free!767 (not b_next!767))))

(declare-fun tp!3552 () Bool)

(declare-fun b_and!1563 () Bool)

(assert (=> b!25167 (= tp!3552 b_and!1563)))

(declare-fun b!25162 () Bool)

(declare-fun e!16285 () Bool)

(declare-fun e!16280 () Bool)

(declare-fun mapRes!1042 () Bool)

(assert (=> b!25162 (= e!16285 (and e!16280 mapRes!1042))))

(declare-fun condMapEmpty!1042 () Bool)

(declare-datatypes ((V!1199 0))(
  ( (V!1200 (val!542 Int)) )
))
(declare-datatypes ((ValueCell!316 0))(
  ( (ValueCellFull!316 (v!1621 V!1199)) (EmptyCell!316) )
))
(declare-datatypes ((array!1293 0))(
  ( (array!1294 (arr!611 (Array (_ BitVec 32) ValueCell!316)) (size!712 (_ BitVec 32))) )
))
(declare-datatypes ((array!1295 0))(
  ( (array!1296 (arr!612 (Array (_ BitVec 32) (_ BitVec 64))) (size!713 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!218 0))(
  ( (LongMapFixedSize!219 (defaultEntry!1766 Int) (mask!4765 (_ BitVec 32)) (extraKeys!1659 (_ BitVec 32)) (zeroValue!1686 V!1199) (minValue!1686 V!1199) (_size!156 (_ BitVec 32)) (_keys!3192 array!1295) (_values!1751 array!1293) (_vacant!156 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!218 0))(
  ( (Cell!219 (v!1622 LongMapFixedSize!218)) )
))
(declare-datatypes ((LongMap!218 0))(
  ( (LongMap!219 (underlying!120 Cell!218)) )
))
(declare-fun thiss!938 () LongMap!218)

(declare-fun mapDefault!1042 () ValueCell!316)

