; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72626 () Bool)

(assert start!72626)

(declare-fun res!572778 () Bool)

(declare-fun e!470053 () Bool)

(assert (=> start!72626 (=> (not res!572778) (not e!470053))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47540 0))(
  ( (array!47541 (arr!22797 (Array (_ BitVec 32) (_ BitVec 64))) (size!23238 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47540)

(assert (=> start!72626 (= res!572778 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23238 _keys!868))))))

(assert (=> start!72626 e!470053))

(assert (=> start!72626 true))

(declare-fun array_inv!18122 (array!47540) Bool)

(assert (=> start!72626 (array_inv!18122 _keys!868)))

(declare-datatypes ((V!25913 0))(
  ( (V!25914 (val!7872 Int)) )
))
(declare-datatypes ((ValueCell!7385 0))(
  ( (ValueCellFull!7385 (v!10293 V!25913)) (EmptyCell!7385) )
))
(declare-datatypes ((array!47542 0))(
  ( (array!47543 (arr!22798 (Array (_ BitVec 32) ValueCell!7385)) (size!23239 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47542)

(declare-fun e!470051 () Bool)

(declare-fun array_inv!18123 (array!47542) Bool)

(assert (=> start!72626 (and (array_inv!18123 _values!688) e!470051)))

(declare-fun b!842594 () Bool)

(declare-fun e!470052 () Bool)

(declare-fun tp_is_empty!15649 () Bool)

(assert (=> b!842594 (= e!470052 tp_is_empty!15649)))

(declare-fun b!842595 () Bool)

(assert (=> b!842595 (= e!470053 false)))

(declare-fun lt!380985 () Bool)

(declare-datatypes ((List!16282 0))(
  ( (Nil!16279) (Cons!16278 (h!17409 (_ BitVec 64)) (t!22661 List!16282)) )
))
(declare-fun arrayNoDuplicates!0 (array!47540 (_ BitVec 32) List!16282) Bool)

(assert (=> b!842595 (= lt!380985 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16279))))

(declare-fun b!842596 () Bool)

(declare-fun res!572776 () Bool)

(assert (=> b!842596 (=> (not res!572776) (not e!470053))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47540 (_ BitVec 32)) Bool)

(assert (=> b!842596 (= res!572776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842597 () Bool)

(declare-fun e!470055 () Bool)

(assert (=> b!842597 (= e!470055 tp_is_empty!15649)))

(declare-fun b!842598 () Bool)

(declare-fun res!572775 () Bool)

(assert (=> b!842598 (=> (not res!572775) (not e!470053))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842598 (= res!572775 (and (= (size!23239 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23238 _keys!868) (size!23239 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25073 () Bool)

(declare-fun mapRes!25073 () Bool)

(assert (=> mapIsEmpty!25073 mapRes!25073))

(declare-fun mapNonEmpty!25073 () Bool)

(declare-fun tp!48392 () Bool)

(assert (=> mapNonEmpty!25073 (= mapRes!25073 (and tp!48392 e!470055))))

(declare-fun mapKey!25073 () (_ BitVec 32))

(declare-fun mapRest!25073 () (Array (_ BitVec 32) ValueCell!7385))

(declare-fun mapValue!25073 () ValueCell!7385)

(assert (=> mapNonEmpty!25073 (= (arr!22798 _values!688) (store mapRest!25073 mapKey!25073 mapValue!25073))))

(declare-fun b!842599 () Bool)

(assert (=> b!842599 (= e!470051 (and e!470052 mapRes!25073))))

(declare-fun condMapEmpty!25073 () Bool)

(declare-fun mapDefault!25073 () ValueCell!7385)

