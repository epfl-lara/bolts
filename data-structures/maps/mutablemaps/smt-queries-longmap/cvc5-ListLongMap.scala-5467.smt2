; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72614 () Bool)

(assert start!72614)

(declare-fun b!842468 () Bool)

(declare-fun res!572705 () Bool)

(declare-fun e!469961 () Bool)

(assert (=> b!842468 (=> (not res!572705) (not e!469961))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842468 (= res!572705 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!25055 () Bool)

(declare-fun mapRes!25055 () Bool)

(declare-fun tp!48374 () Bool)

(declare-fun e!469965 () Bool)

(assert (=> mapNonEmpty!25055 (= mapRes!25055 (and tp!48374 e!469965))))

(declare-datatypes ((V!25897 0))(
  ( (V!25898 (val!7866 Int)) )
))
(declare-datatypes ((ValueCell!7379 0))(
  ( (ValueCellFull!7379 (v!10287 V!25897)) (EmptyCell!7379) )
))
(declare-fun mapValue!25055 () ValueCell!7379)

(declare-fun mapRest!25055 () (Array (_ BitVec 32) ValueCell!7379))

(declare-fun mapKey!25055 () (_ BitVec 32))

(declare-datatypes ((array!47516 0))(
  ( (array!47517 (arr!22785 (Array (_ BitVec 32) ValueCell!7379)) (size!23226 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47516)

(assert (=> mapNonEmpty!25055 (= (arr!22785 _values!688) (store mapRest!25055 mapKey!25055 mapValue!25055))))

(declare-fun mapIsEmpty!25055 () Bool)

(assert (=> mapIsEmpty!25055 mapRes!25055))

(declare-fun res!572703 () Bool)

(assert (=> start!72614 (=> (not res!572703) (not e!469961))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47518 0))(
  ( (array!47519 (arr!22786 (Array (_ BitVec 32) (_ BitVec 64))) (size!23227 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47518)

(assert (=> start!72614 (= res!572703 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23227 _keys!868))))))

(assert (=> start!72614 e!469961))

(assert (=> start!72614 true))

(declare-fun array_inv!18112 (array!47518) Bool)

(assert (=> start!72614 (array_inv!18112 _keys!868)))

(declare-fun e!469962 () Bool)

(declare-fun array_inv!18113 (array!47516) Bool)

(assert (=> start!72614 (and (array_inv!18113 _values!688) e!469962)))

(declare-fun b!842469 () Bool)

(declare-fun tp_is_empty!15637 () Bool)

(assert (=> b!842469 (= e!469965 tp_is_empty!15637)))

(declare-fun b!842470 () Bool)

(declare-fun res!572706 () Bool)

(assert (=> b!842470 (=> (not res!572706) (not e!469961))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!842470 (= res!572706 (and (= (size!23226 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23227 _keys!868) (size!23226 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!842471 () Bool)

(declare-fun e!469964 () Bool)

(assert (=> b!842471 (= e!469962 (and e!469964 mapRes!25055))))

(declare-fun condMapEmpty!25055 () Bool)

(declare-fun mapDefault!25055 () ValueCell!7379)

