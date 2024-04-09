; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!108546 () Bool)

(assert start!108546)

(declare-fun b_free!28057 () Bool)

(declare-fun b_next!28057 () Bool)

(assert (=> start!108546 (= b_free!28057 (not b_next!28057))))

(declare-fun tp!99282 () Bool)

(declare-fun b_and!46127 () Bool)

(assert (=> start!108546 (= tp!99282 b_and!46127)))

(declare-fun mapNonEmpty!52097 () Bool)

(declare-fun mapRes!52097 () Bool)

(declare-fun tp!99281 () Bool)

(declare-fun e!731768 () Bool)

(assert (=> mapNonEmpty!52097 (= mapRes!52097 (and tp!99281 e!731768))))

(declare-datatypes ((V!50033 0))(
  ( (V!50034 (val!16923 Int)) )
))
(declare-datatypes ((ValueCell!15950 0))(
  ( (ValueCellFull!15950 (v!19521 V!50033)) (EmptyCell!15950) )
))
(declare-fun mapValue!52097 () ValueCell!15950)

(declare-fun mapRest!52097 () (Array (_ BitVec 32) ValueCell!15950))

(declare-fun mapKey!52097 () (_ BitVec 32))

(declare-datatypes ((array!84423 0))(
  ( (array!84424 (arr!40711 (Array (_ BitVec 32) ValueCell!15950)) (size!41262 (_ BitVec 32))) )
))
(declare-fun _values!1445 () array!84423)

(assert (=> mapNonEmpty!52097 (= (arr!40711 _values!1445) (store mapRest!52097 mapKey!52097 mapValue!52097))))

(declare-fun b!1280657 () Bool)

(declare-fun res!850778 () Bool)

(declare-fun e!731769 () Bool)

(assert (=> b!1280657 (=> (not res!850778) (not e!731769))))

(declare-fun mask!2175 () (_ BitVec 32))

(declare-fun extraKeys!1366 () (_ BitVec 32))

(declare-datatypes ((array!84425 0))(
  ( (array!84426 (arr!40712 (Array (_ BitVec 32) (_ BitVec 64))) (size!41263 (_ BitVec 32))) )
))
(declare-fun _keys!1741 () array!84425)

(assert (=> b!1280657 (= res!850778 (and (= (size!41262 _values!1445) (bvadd #b00000000000000000000000000000001 mask!2175)) (= (size!41263 _keys!1741) (size!41262 _values!1445)) (bvsge mask!2175 #b00000000000000000000000000000000) (bvsge extraKeys!1366 #b00000000000000000000000000000000) (bvsle extraKeys!1366 #b00000000000000000000000000000011)))))

(declare-fun res!850776 () Bool)

(assert (=> start!108546 (=> (not res!850776) (not e!731769))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!108546 (= res!850776 (validMask!0 mask!2175))))

(assert (=> start!108546 e!731769))

(declare-fun tp_is_empty!33697 () Bool)

(assert (=> start!108546 tp_is_empty!33697))

(assert (=> start!108546 true))

(declare-fun e!731770 () Bool)

(declare-fun array_inv!30883 (array!84423) Bool)

(assert (=> start!108546 (and (array_inv!30883 _values!1445) e!731770)))

(declare-fun array_inv!30884 (array!84425) Bool)

(assert (=> start!108546 (array_inv!30884 _keys!1741)))

(assert (=> start!108546 tp!99282))

(declare-fun b!1280658 () Bool)

(declare-fun e!731767 () Bool)

(assert (=> b!1280658 (= e!731770 (and e!731767 mapRes!52097))))

(declare-fun condMapEmpty!52097 () Bool)

(declare-fun mapDefault!52097 () ValueCell!15950)

