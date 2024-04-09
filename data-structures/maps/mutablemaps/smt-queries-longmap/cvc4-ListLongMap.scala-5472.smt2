; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72648 () Bool)

(assert start!72648)

(declare-fun b!842825 () Bool)

(declare-fun res!572907 () Bool)

(declare-fun e!470217 () Bool)

(assert (=> b!842825 (=> (not res!572907) (not e!470217))))

(declare-datatypes ((array!47584 0))(
  ( (array!47585 (arr!22819 (Array (_ BitVec 32) (_ BitVec 64))) (size!23260 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47584)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47584 (_ BitVec 32)) Bool)

(assert (=> b!842825 (= res!572907 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!572909 () Bool)

(assert (=> start!72648 (=> (not res!572909) (not e!470217))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72648 (= res!572909 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23260 _keys!868))))))

(assert (=> start!72648 e!470217))

(assert (=> start!72648 true))

(declare-fun array_inv!18142 (array!47584) Bool)

(assert (=> start!72648 (array_inv!18142 _keys!868)))

(declare-datatypes ((V!25941 0))(
  ( (V!25942 (val!7883 Int)) )
))
(declare-datatypes ((ValueCell!7396 0))(
  ( (ValueCellFull!7396 (v!10304 V!25941)) (EmptyCell!7396) )
))
(declare-datatypes ((array!47586 0))(
  ( (array!47587 (arr!22820 (Array (_ BitVec 32) ValueCell!7396)) (size!23261 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47586)

(declare-fun e!470219 () Bool)

(declare-fun array_inv!18143 (array!47586) Bool)

(assert (=> start!72648 (and (array_inv!18143 _values!688) e!470219)))

(declare-fun b!842826 () Bool)

(declare-fun res!572910 () Bool)

(assert (=> b!842826 (=> (not res!572910) (not e!470217))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842826 (= res!572910 (and (= (size!23261 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23260 _keys!868) (size!23261 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842827 () Bool)

(declare-fun e!470218 () Bool)

(declare-fun tp_is_empty!15671 () Bool)

(assert (=> b!842827 (= e!470218 tp_is_empty!15671)))

(declare-fun b!842828 () Bool)

(declare-fun res!572908 () Bool)

(assert (=> b!842828 (=> (not res!572908) (not e!470217))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842828 (= res!572908 (validMask!0 mask!1196))))

(declare-fun b!842829 () Bool)

(declare-fun e!470220 () Bool)

(assert (=> b!842829 (= e!470220 tp_is_empty!15671)))

(declare-fun mapNonEmpty!25106 () Bool)

(declare-fun mapRes!25106 () Bool)

(declare-fun tp!48425 () Bool)

(assert (=> mapNonEmpty!25106 (= mapRes!25106 (and tp!48425 e!470218))))

(declare-fun mapKey!25106 () (_ BitVec 32))

(declare-fun mapRest!25106 () (Array (_ BitVec 32) ValueCell!7396))

(declare-fun mapValue!25106 () ValueCell!7396)

(assert (=> mapNonEmpty!25106 (= (arr!22820 _values!688) (store mapRest!25106 mapKey!25106 mapValue!25106))))

(declare-fun b!842830 () Bool)

(assert (=> b!842830 (= e!470219 (and e!470220 mapRes!25106))))

(declare-fun condMapEmpty!25106 () Bool)

(declare-fun mapDefault!25106 () ValueCell!7396)

