; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!107986 () Bool)

(assert start!107986)

(declare-fun b!1275300 () Bool)

(declare-fun e!728053 () Bool)

(declare-fun tp_is_empty!33253 () Bool)

(assert (=> b!1275300 (= e!728053 tp_is_empty!33253)))

(declare-fun mapIsEmpty!51398 () Bool)

(declare-fun mapRes!51398 () Bool)

(assert (=> mapIsEmpty!51398 mapRes!51398))

(declare-fun mapNonEmpty!51398 () Bool)

(declare-fun tp!98157 () Bool)

(assert (=> mapNonEmpty!51398 (= mapRes!51398 (and tp!98157 e!728053))))

(declare-fun mapKey!51398 () (_ BitVec 32))

(declare-datatypes ((V!49441 0))(
  ( (V!49442 (val!16701 Int)) )
))
(declare-datatypes ((ValueCell!15728 0))(
  ( (ValueCellFull!15728 (v!19295 V!49441)) (EmptyCell!15728) )
))
(declare-fun mapValue!51398 () ValueCell!15728)

(declare-datatypes ((array!83557 0))(
  ( (array!83558 (arr!40289 (Array (_ BitVec 32) ValueCell!15728)) (size!40840 (_ BitVec 32))) )
))
(declare-fun _values!1187 () array!83557)

(declare-fun mapRest!51398 () (Array (_ BitVec 32) ValueCell!15728))

(assert (=> mapNonEmpty!51398 (= (arr!40289 _values!1187) (store mapRest!51398 mapKey!51398 mapValue!51398))))

(declare-fun res!847748 () Bool)

(declare-fun e!728051 () Bool)

(assert (=> start!107986 (=> (not res!847748) (not e!728051))))

(declare-fun mask!1805 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!107986 (= res!847748 (validMask!0 mask!1805))))

(assert (=> start!107986 e!728051))

(assert (=> start!107986 true))

(declare-fun e!728055 () Bool)

(declare-fun array_inv!30575 (array!83557) Bool)

(assert (=> start!107986 (and (array_inv!30575 _values!1187) e!728055)))

(declare-datatypes ((array!83559 0))(
  ( (array!83560 (arr!40290 (Array (_ BitVec 32) (_ BitVec 64))) (size!40841 (_ BitVec 32))) )
))
(declare-fun _keys!1427 () array!83559)

(declare-fun array_inv!30576 (array!83559) Bool)

(assert (=> start!107986 (array_inv!30576 _keys!1427)))

(declare-fun b!1275301 () Bool)

(declare-fun res!847750 () Bool)

(assert (=> b!1275301 (=> (not res!847750) (not e!728051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83559 (_ BitVec 32)) Bool)

(assert (=> b!1275301 (= res!847750 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1427 mask!1805))))

(declare-fun b!1275302 () Bool)

(declare-fun res!847749 () Bool)

(assert (=> b!1275302 (=> (not res!847749) (not e!728051))))

(declare-fun extraKeys!1108 () (_ BitVec 32))

(assert (=> b!1275302 (= res!847749 (and (= (size!40840 _values!1187) (bvadd #b00000000000000000000000000000001 mask!1805)) (= (size!40841 _keys!1427) (size!40840 _values!1187)) (bvsge mask!1805 #b00000000000000000000000000000000) (bvsge extraKeys!1108 #b00000000000000000000000000000000) (bvsle extraKeys!1108 #b00000000000000000000000000000011)))))

(declare-fun b!1275303 () Bool)

(declare-fun e!728052 () Bool)

(assert (=> b!1275303 (= e!728055 (and e!728052 mapRes!51398))))

(declare-fun condMapEmpty!51398 () Bool)

(declare-fun mapDefault!51398 () ValueCell!15728)

