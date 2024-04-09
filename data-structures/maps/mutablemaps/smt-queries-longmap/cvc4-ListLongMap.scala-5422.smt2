; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72348 () Bool)

(assert start!72348)

(declare-fun mapIsEmpty!24656 () Bool)

(declare-fun mapRes!24656 () Bool)

(assert (=> mapIsEmpty!24656 mapRes!24656))

(declare-fun b!837731 () Bool)

(declare-fun e!467643 () Bool)

(declare-fun tp_is_empty!15371 () Bool)

(assert (=> b!837731 (= e!467643 tp_is_empty!15371)))

(declare-fun mapNonEmpty!24656 () Bool)

(declare-fun tp!47651 () Bool)

(assert (=> mapNonEmpty!24656 (= mapRes!24656 (and tp!47651 e!467643))))

(declare-fun mapKey!24656 () (_ BitVec 32))

(declare-datatypes ((V!25541 0))(
  ( (V!25542 (val!7733 Int)) )
))
(declare-datatypes ((ValueCell!7246 0))(
  ( (ValueCellFull!7246 (v!10154 V!25541)) (EmptyCell!7246) )
))
(declare-fun mapRest!24656 () (Array (_ BitVec 32) ValueCell!7246))

(declare-datatypes ((array!47002 0))(
  ( (array!47003 (arr!22528 (Array (_ BitVec 32) ValueCell!7246)) (size!22969 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47002)

(declare-fun mapValue!24656 () ValueCell!7246)

(assert (=> mapNonEmpty!24656 (= (arr!22528 _values!688) (store mapRest!24656 mapKey!24656 mapValue!24656))))

(declare-fun res!569811 () Bool)

(declare-fun e!467642 () Bool)

(assert (=> start!72348 (=> (not res!569811) (not e!467642))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47004 0))(
  ( (array!47005 (arr!22529 (Array (_ BitVec 32) (_ BitVec 64))) (size!22970 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47004)

(assert (=> start!72348 (= res!569811 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22970 _keys!868))))))

(assert (=> start!72348 e!467642))

(assert (=> start!72348 true))

(declare-fun array_inv!17924 (array!47004) Bool)

(assert (=> start!72348 (array_inv!17924 _keys!868)))

(declare-fun e!467644 () Bool)

(declare-fun array_inv!17925 (array!47002) Bool)

(assert (=> start!72348 (and (array_inv!17925 _values!688) e!467644)))

(declare-fun b!837732 () Bool)

(assert (=> b!837732 (= e!467642 false)))

(declare-fun lt!380568 () Bool)

(declare-datatypes ((List!16095 0))(
  ( (Nil!16092) (Cons!16091 (h!17222 (_ BitVec 64)) (t!22474 List!16095)) )
))
(declare-fun arrayNoDuplicates!0 (array!47004 (_ BitVec 32) List!16095) Bool)

(assert (=> b!837732 (= lt!380568 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16092))))

(declare-fun b!837733 () Bool)

(declare-fun res!569814 () Bool)

(assert (=> b!837733 (=> (not res!569814) (not e!467642))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837733 (= res!569814 (validMask!0 mask!1196))))

(declare-fun b!837734 () Bool)

(declare-fun res!569812 () Bool)

(assert (=> b!837734 (=> (not res!569812) (not e!467642))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!837734 (= res!569812 (and (= (size!22969 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22970 _keys!868) (size!22969 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837735 () Bool)

(declare-fun e!467645 () Bool)

(assert (=> b!837735 (= e!467645 tp_is_empty!15371)))

(declare-fun b!837736 () Bool)

(declare-fun res!569813 () Bool)

(assert (=> b!837736 (=> (not res!569813) (not e!467642))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47004 (_ BitVec 32)) Bool)

(assert (=> b!837736 (= res!569813 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!837737 () Bool)

(assert (=> b!837737 (= e!467644 (and e!467645 mapRes!24656))))

(declare-fun condMapEmpty!24656 () Bool)

(declare-fun mapDefault!24656 () ValueCell!7246)

