; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72666 () Bool)

(assert start!72666)

(declare-fun b!843014 () Bool)

(declare-fun res!573015 () Bool)

(declare-fun e!470351 () Bool)

(assert (=> b!843014 (=> (not res!573015) (not e!470351))))

(declare-datatypes ((array!47616 0))(
  ( (array!47617 (arr!22835 (Array (_ BitVec 32) (_ BitVec 64))) (size!23276 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47616)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47616 (_ BitVec 32)) Bool)

(assert (=> b!843014 (= res!573015 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!843015 () Bool)

(declare-fun res!573016 () Bool)

(assert (=> b!843015 (=> (not res!573016) (not e!470351))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!843015 (= res!573016 (validMask!0 mask!1196))))

(declare-fun b!843016 () Bool)

(declare-fun e!470353 () Bool)

(declare-fun tp_is_empty!15689 () Bool)

(assert (=> b!843016 (= e!470353 tp_is_empty!15689)))

(declare-fun res!573017 () Bool)

(assert (=> start!72666 (=> (not res!573017) (not e!470351))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72666 (= res!573017 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23276 _keys!868))))))

(assert (=> start!72666 e!470351))

(assert (=> start!72666 true))

(declare-fun array_inv!18154 (array!47616) Bool)

(assert (=> start!72666 (array_inv!18154 _keys!868)))

(declare-datatypes ((V!25965 0))(
  ( (V!25966 (val!7892 Int)) )
))
(declare-datatypes ((ValueCell!7405 0))(
  ( (ValueCellFull!7405 (v!10313 V!25965)) (EmptyCell!7405) )
))
(declare-datatypes ((array!47618 0))(
  ( (array!47619 (arr!22836 (Array (_ BitVec 32) ValueCell!7405)) (size!23277 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47618)

(declare-fun e!470355 () Bool)

(declare-fun array_inv!18155 (array!47618) Bool)

(assert (=> start!72666 (and (array_inv!18155 _values!688) e!470355)))

(declare-fun b!843017 () Bool)

(declare-fun e!470352 () Bool)

(assert (=> b!843017 (= e!470352 tp_is_empty!15689)))

(declare-fun b!843018 () Bool)

(declare-fun res!573018 () Bool)

(assert (=> b!843018 (=> (not res!573018) (not e!470351))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!843018 (= res!573018 (and (= (size!23277 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23276 _keys!868) (size!23277 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25133 () Bool)

(declare-fun mapRes!25133 () Bool)

(assert (=> mapIsEmpty!25133 mapRes!25133))

(declare-fun mapNonEmpty!25133 () Bool)

(declare-fun tp!48452 () Bool)

(assert (=> mapNonEmpty!25133 (= mapRes!25133 (and tp!48452 e!470352))))

(declare-fun mapValue!25133 () ValueCell!7405)

(declare-fun mapKey!25133 () (_ BitVec 32))

(declare-fun mapRest!25133 () (Array (_ BitVec 32) ValueCell!7405))

(assert (=> mapNonEmpty!25133 (= (arr!22836 _values!688) (store mapRest!25133 mapKey!25133 mapValue!25133))))

(declare-fun b!843019 () Bool)

(assert (=> b!843019 (= e!470355 (and e!470353 mapRes!25133))))

(declare-fun condMapEmpty!25133 () Bool)

(declare-fun mapDefault!25133 () ValueCell!7405)

