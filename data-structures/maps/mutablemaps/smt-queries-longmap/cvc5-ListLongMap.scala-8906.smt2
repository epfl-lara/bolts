; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108122 () Bool)

(assert start!108122)

(declare-fun b_free!27799 () Bool)

(declare-fun b_next!27799 () Bool)

(assert (=> start!108122 (= b_free!27799 (not b_next!27799))))

(declare-fun tp!98351 () Bool)

(declare-fun b_and!45865 () Bool)

(assert (=> start!108122 (= tp!98351 b_and!45865)))

(declare-fun b!1276362 () Bool)

(declare-fun e!728872 () Bool)

(declare-fun e!728873 () Bool)

(declare-fun mapRes!51554 () Bool)

(assert (=> b!1276362 (= e!728872 (and e!728873 mapRes!51554))))

(declare-fun condMapEmpty!51554 () Bool)

(declare-datatypes ((V!49569 0))(
  ( (V!49570 (val!16749 Int)) )
))
(declare-datatypes ((ValueCell!15776 0))(
  ( (ValueCellFull!15776 (v!19344 V!49569)) (EmptyCell!15776) )
))
(declare-datatypes ((array!83745 0))(
  ( (array!83746 (arr!40379 (Array (_ BitVec 32) ValueCell!15776)) (size!40930 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83745)

(declare-fun mapDefault!51554 () ValueCell!15776)

