; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107976 () Bool)

(assert start!107976)

(declare-fun mapNonEmpty!51392 () Bool)

(declare-fun mapRes!51392 () Bool)

(declare-fun tp!98151 () Bool)

(declare-fun e!728023 () Bool)

(assert (=> mapNonEmpty!51392 (= mapRes!51392 (and tp!98151 e!728023))))

(declare-datatypes ((V!49437 0))(
  ( (V!49438 (val!16700 Int)) )
))
(declare-datatypes ((ValueCell!15727 0))(
  ( (ValueCellFull!15727 (v!19294 V!49437)) (EmptyCell!15727) )
))
(declare-fun mapValue!51392 () ValueCell!15727)

(declare-datatypes ((array!83551 0))(
  ( (array!83552 (arr!40287 (Array (_ BitVec 32) ValueCell!15727)) (size!40838 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83551)

(declare-fun mapKey!51392 () (_ BitVec 32))

(declare-fun mapRest!51392 () (Array (_ BitVec 32) ValueCell!15727))

(assert (=> mapNonEmpty!51392 (= (arr!40287 _values!1187) (store mapRest!51392 mapKey!51392 mapValue!51392))))

(declare-fun mapIsEmpty!51392 () Bool)

(assert (=> mapIsEmpty!51392 mapRes!51392))

(declare-fun res!847734 () Bool)

(declare-fun e!728021 () Bool)

(assert (=> start!107976 (=> (not res!847734) (not e!728021))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107976 (= res!847734 (validMask!0 mask!1805))))

(assert (=> start!107976 e!728021))

(assert (=> start!107976 true))

(declare-fun e!728024 () Bool)

(declare-fun array_inv!30573 (array!83551) Bool)

(assert (=> start!107976 (and (array_inv!30573 _values!1187) e!728024)))

(declare-datatypes ((array!83553 0))(
  ( (array!83554 (arr!40288 (Array (_ BitVec 32) (_ BitVec 64))) (size!40839 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83553)

(declare-fun array_inv!30574 (array!83553) Bool)

(assert (=> start!107976 (array_inv!30574 _keys!1427)))

(declare-fun b!1275262 () Bool)

(declare-fun e!728022 () Bool)

(assert (=> b!1275262 (= e!728024 (and e!728022 mapRes!51392))))

(declare-fun condMapEmpty!51392 () Bool)

(declare-fun mapDefault!51392 () ValueCell!15727)

