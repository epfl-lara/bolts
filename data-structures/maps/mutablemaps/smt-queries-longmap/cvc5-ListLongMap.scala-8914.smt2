; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108170 () Bool)

(assert start!108170)

(declare-fun b_free!27847 () Bool)

(declare-fun b_next!27847 () Bool)

(assert (=> start!108170 (= b_free!27847 (not b_next!27847))))

(declare-fun tp!98495 () Bool)

(declare-fun b_and!45913 () Bool)

(assert (=> start!108170 (= tp!98495 b_and!45913)))

(declare-fun b!1276946 () Bool)

(declare-fun e!729253 () Bool)

(declare-fun e!729252 () Bool)

(declare-fun mapRes!51626 () Bool)

(assert (=> b!1276946 (= e!729253 (and e!729252 mapRes!51626))))

(declare-fun condMapEmpty!51626 () Bool)

(declare-datatypes ((V!49633 0))(
  ( (V!49634 (val!16773 Int)) )
))
(declare-datatypes ((ValueCell!15800 0))(
  ( (ValueCellFull!15800 (v!19368 V!49633)) (EmptyCell!15800) )
))
(declare-datatypes ((array!83837 0))(
  ( (array!83838 (arr!40425 (Array (_ BitVec 32) ValueCell!15800)) (size!40976 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83837)

(declare-fun mapDefault!51626 () ValueCell!15800)

