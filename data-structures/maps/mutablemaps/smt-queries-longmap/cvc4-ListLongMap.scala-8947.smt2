; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108448 () Bool)

(assert start!108448)

(declare-fun b_free!27959 () Bool)

(declare-fun b_next!27959 () Bool)

(assert (=> start!108448 (= b_free!27959 (not b_next!27959))))

(declare-fun tp!98988 () Bool)

(declare-fun b_and!46029 () Bool)

(assert (=> start!108448 (= tp!98988 b_and!46029)))

(declare-fun res!849977 () Bool)

(declare-fun e!731033 () Bool)

(assert (=> start!108448 (=> (not res!849977) (not e!731033))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108448 (= res!849977 (validMask!0 mask!2175))))

(assert (=> start!108448 e!731033))

(declare-fun tp_is_empty!33599 () Bool)

(assert (=> start!108448 tp_is_empty!33599))

(assert (=> start!108448 true))

(declare-datatypes ((V!49901 0))(
  ( (V!49902 (val!16874 Int)) )
))
(declare-datatypes ((ValueCell!15901 0))(
  ( (ValueCellFull!15901 (v!19472 V!49901)) (EmptyCell!15901) )
))
(declare-datatypes ((array!84233 0))(
  ( (array!84234 (arr!40616 (Array (_ BitVec 32) ValueCell!15901)) (size!41167 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84233)

(declare-fun e!731034 () Bool)

(declare-fun array_inv!30813 (array!84233) Bool)

(assert (=> start!108448 (and (array_inv!30813 _values!1445) e!731034)))

(declare-datatypes ((array!84235 0))(
  ( (array!84236 (arr!40617 (Array (_ BitVec 32) (_ BitVec 64))) (size!41168 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84235)

(declare-fun array_inv!30814 (array!84235) Bool)

(assert (=> start!108448 (array_inv!30814 _keys!1741)))

(assert (=> start!108448 tp!98988))

(declare-fun b!1279414 () Bool)

(declare-fun e!731031 () Bool)

(assert (=> b!1279414 (= e!731031 tp_is_empty!33599)))

(declare-fun b!1279415 () Bool)

(declare-fun e!731032 () Bool)

(declare-fun mapRes!51950 () Bool)

(assert (=> b!1279415 (= e!731034 (and e!731032 mapRes!51950))))

(declare-fun condMapEmpty!51950 () Bool)

(declare-fun mapDefault!51950 () ValueCell!15901)

