; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113334 () Bool)

(assert start!113334)

(declare-fun b_free!31349 () Bool)

(declare-fun b_next!31349 () Bool)

(assert (=> start!113334 (= b_free!31349 (not b_next!31349))))

(declare-fun tp!109853 () Bool)

(declare-fun b_and!50581 () Bool)

(assert (=> start!113334 (= tp!109853 b_and!50581)))

(declare-fun res!891916 () Bool)

(declare-fun e!765070 () Bool)

(assert (=> start!113334 (=> (not res!891916) (not e!765070))))

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113334 (= res!891916 (validMask!0 mask!1977))))

(assert (=> start!113334 e!765070))

(declare-fun tp_is_empty!37349 () Bool)

(assert (=> start!113334 tp_is_empty!37349))

(assert (=> start!113334 true))

(declare-datatypes ((array!91495 0))(
  ( (array!91496 (arr!44199 (Array (_ BitVec 32) (_ BitVec 64))) (size!44750 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91495)

(declare-fun array_inv!33229 (array!91495) Bool)

(assert (=> start!113334 (array_inv!33229 _keys!1571)))

(declare-datatypes ((V!54901 0))(
  ( (V!54902 (val!18749 Int)) )
))
(declare-datatypes ((ValueCell!17776 0))(
  ( (ValueCellFull!17776 (v!21395 V!54901)) (EmptyCell!17776) )
))
(declare-datatypes ((array!91497 0))(
  ( (array!91498 (arr!44200 (Array (_ BitVec 32) ValueCell!17776)) (size!44751 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91497)

(declare-fun e!765067 () Bool)

(declare-fun array_inv!33230 (array!91497) Bool)

(assert (=> start!113334 (and (array_inv!33230 _values!1303) e!765067)))

(assert (=> start!113334 tp!109853))

(declare-fun mapIsEmpty!57730 () Bool)

(declare-fun mapRes!57730 () Bool)

(assert (=> mapIsEmpty!57730 mapRes!57730))

(declare-fun b!1344178 () Bool)

(declare-fun e!765069 () Bool)

(assert (=> b!1344178 (= e!765067 (and e!765069 mapRes!57730))))

(declare-fun condMapEmpty!57730 () Bool)

(declare-fun mapDefault!57730 () ValueCell!17776)

