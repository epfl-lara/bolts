; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72686 () Bool)

(assert start!72686)

(declare-fun mapNonEmpty!25163 () Bool)

(declare-fun mapRes!25163 () Bool)

(declare-fun tp!48482 () Bool)

(declare-fun e!470504 () Bool)

(assert (=> mapNonEmpty!25163 (= mapRes!25163 (and tp!48482 e!470504))))

(declare-datatypes ((V!25993 0))(
  ( (V!25994 (val!7902 Int)) )
))
(declare-datatypes ((ValueCell!7415 0))(
  ( (ValueCellFull!7415 (v!10323 V!25993)) (EmptyCell!7415) )
))
(declare-fun mapRest!25163 () (Array (_ BitVec 32) ValueCell!7415))

(declare-fun mapKey!25163 () (_ BitVec 32))

(declare-datatypes ((array!47652 0))(
  ( (array!47653 (arr!22853 (Array (_ BitVec 32) ValueCell!7415)) (size!23294 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47652)

(declare-fun mapValue!25163 () ValueCell!7415)

(assert (=> mapNonEmpty!25163 (= (arr!22853 _values!688) (store mapRest!25163 mapKey!25163 mapValue!25163))))

(declare-fun b!843224 () Bool)

(declare-fun res!573135 () Bool)

(declare-fun e!470503 () Bool)

(assert (=> b!843224 (=> (not res!573135) (not e!470503))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47654 0))(
  ( (array!47655 (arr!22854 (Array (_ BitVec 32) (_ BitVec 64))) (size!23295 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47654)

(assert (=> b!843224 (= res!573135 (and (= (size!23294 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23295 _keys!868) (size!23294 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25163 () Bool)

(assert (=> mapIsEmpty!25163 mapRes!25163))

(declare-fun b!843225 () Bool)

(declare-fun res!573136 () Bool)

(assert (=> b!843225 (=> (not res!573136) (not e!470503))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843225 (= res!573136 (validMask!0 mask!1196))))

(declare-fun b!843226 () Bool)

(assert (=> b!843226 (= e!470503 false)))

(declare-fun lt!381075 () Bool)

(declare-datatypes ((List!16301 0))(
  ( (Nil!16298) (Cons!16297 (h!17428 (_ BitVec 64)) (t!22680 List!16301)) )
))
(declare-fun arrayNoDuplicates!0 (array!47654 (_ BitVec 32) List!16301) Bool)

(assert (=> b!843226 (= lt!381075 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16298))))

(declare-fun res!573138 () Bool)

(assert (=> start!72686 (=> (not res!573138) (not e!470503))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72686 (= res!573138 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23295 _keys!868))))))

(assert (=> start!72686 e!470503))

(assert (=> start!72686 true))

(declare-fun array_inv!18166 (array!47654) Bool)

(assert (=> start!72686 (array_inv!18166 _keys!868)))

(declare-fun e!470505 () Bool)

(declare-fun array_inv!18167 (array!47652) Bool)

(assert (=> start!72686 (and (array_inv!18167 _values!688) e!470505)))

(declare-fun b!843227 () Bool)

(declare-fun e!470502 () Bool)

(declare-fun tp_is_empty!15709 () Bool)

(assert (=> b!843227 (= e!470502 tp_is_empty!15709)))

(declare-fun b!843228 () Bool)

(assert (=> b!843228 (= e!470504 tp_is_empty!15709)))

(declare-fun b!843229 () Bool)

(assert (=> b!843229 (= e!470505 (and e!470502 mapRes!25163))))

(declare-fun condMapEmpty!25163 () Bool)

(declare-fun mapDefault!25163 () ValueCell!7415)

