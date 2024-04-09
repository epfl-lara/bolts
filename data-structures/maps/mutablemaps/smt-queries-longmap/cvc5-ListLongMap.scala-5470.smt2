; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72632 () Bool)

(assert start!72632)

(declare-fun b!842657 () Bool)

(declare-fun res!572812 () Bool)

(declare-fun e!470098 () Bool)

(assert (=> b!842657 (=> (not res!572812) (not e!470098))))

(declare-datatypes ((array!47552 0))(
  ( (array!47553 (arr!22803 (Array (_ BitVec 32) (_ BitVec 64))) (size!23244 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47552)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47552 (_ BitVec 32)) Bool)

(assert (=> b!842657 (= res!572812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!842658 () Bool)

(declare-fun e!470096 () Bool)

(declare-fun tp_is_empty!15655 () Bool)

(assert (=> b!842658 (= e!470096 tp_is_empty!15655)))

(declare-fun res!572811 () Bool)

(assert (=> start!72632 (=> (not res!572811) (not e!470098))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72632 (= res!572811 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23244 _keys!868))))))

(assert (=> start!72632 e!470098))

(assert (=> start!72632 true))

(declare-fun array_inv!18126 (array!47552) Bool)

(assert (=> start!72632 (array_inv!18126 _keys!868)))

(declare-datatypes ((V!25921 0))(
  ( (V!25922 (val!7875 Int)) )
))
(declare-datatypes ((ValueCell!7388 0))(
  ( (ValueCellFull!7388 (v!10296 V!25921)) (EmptyCell!7388) )
))
(declare-datatypes ((array!47554 0))(
  ( (array!47555 (arr!22804 (Array (_ BitVec 32) ValueCell!7388)) (size!23245 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47554)

(declare-fun e!470097 () Bool)

(declare-fun array_inv!18127 (array!47554) Bool)

(assert (=> start!72632 (and (array_inv!18127 _values!688) e!470097)))

(declare-fun b!842659 () Bool)

(declare-fun e!470099 () Bool)

(assert (=> b!842659 (= e!470099 tp_is_empty!15655)))

(declare-fun b!842660 () Bool)

(declare-fun res!572814 () Bool)

(assert (=> b!842660 (=> (not res!572814) (not e!470098))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842660 (= res!572814 (validMask!0 mask!1196))))

(declare-fun b!842661 () Bool)

(declare-fun res!572813 () Bool)

(assert (=> b!842661 (=> (not res!572813) (not e!470098))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842661 (= res!572813 (and (= (size!23245 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23244 _keys!868) (size!23245 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25082 () Bool)

(declare-fun mapRes!25082 () Bool)

(declare-fun tp!48401 () Bool)

(assert (=> mapNonEmpty!25082 (= mapRes!25082 (and tp!48401 e!470099))))

(declare-fun mapKey!25082 () (_ BitVec 32))

(declare-fun mapValue!25082 () ValueCell!7388)

(declare-fun mapRest!25082 () (Array (_ BitVec 32) ValueCell!7388))

(assert (=> mapNonEmpty!25082 (= (arr!22804 _values!688) (store mapRest!25082 mapKey!25082 mapValue!25082))))

(declare-fun b!842662 () Bool)

(assert (=> b!842662 (= e!470097 (and e!470096 mapRes!25082))))

(declare-fun condMapEmpty!25082 () Bool)

(declare-fun mapDefault!25082 () ValueCell!7388)

