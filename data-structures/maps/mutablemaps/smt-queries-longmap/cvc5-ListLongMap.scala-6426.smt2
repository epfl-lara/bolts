; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!82380 () Bool)

(assert start!82380)

(declare-fun b_free!18619 () Bool)

(declare-fun b_next!18619 () Bool)

(assert (=> start!82380 (= b_free!18619 (not b_next!18619))))

(declare-fun tp!64828 () Bool)

(declare-fun b_and!30125 () Bool)

(assert (=> start!82380 (= tp!64828 b_and!30125)))

(declare-fun b!960029 () Bool)

(declare-fun e!541204 () Bool)

(declare-fun tp_is_empty!21331 () Bool)

(assert (=> b!960029 (= e!541204 tp_is_empty!21331)))

(declare-fun b!960030 () Bool)

(declare-fun e!541206 () Bool)

(declare-fun mapRes!33976 () Bool)

(assert (=> b!960030 (= e!541206 (and e!541204 mapRes!33976))))

(declare-fun condMapEmpty!33976 () Bool)

(declare-datatypes ((V!33425 0))(
  ( (V!33426 (val!10716 Int)) )
))
(declare-datatypes ((ValueCell!10184 0))(
  ( (ValueCellFull!10184 (v!13273 V!33425)) (EmptyCell!10184) )
))
(declare-datatypes ((array!58769 0))(
  ( (array!58770 (arr!28254 (Array (_ BitVec 32) ValueCell!10184)) (size!28734 (_ BitVec 32))) )
))
(declare-fun _values!1386 () array!58769)

(declare-fun mapDefault!33976 () ValueCell!10184)

