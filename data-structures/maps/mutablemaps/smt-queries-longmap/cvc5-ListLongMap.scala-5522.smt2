; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72944 () Bool)

(assert start!72944)

(declare-fun b_free!13831 () Bool)

(declare-fun b_next!13831 () Bool)

(assert (=> start!72944 (= b_free!13831 (not b_next!13831))))

(declare-fun tp!48998 () Bool)

(declare-fun b_and!22935 () Bool)

(assert (=> start!72944 (= tp!48998 b_and!22935)))

(declare-fun mapIsEmpty!25550 () Bool)

(declare-fun mapRes!25550 () Bool)

(assert (=> mapIsEmpty!25550 mapRes!25550))

(declare-fun b!846445 () Bool)

(declare-fun res!575197 () Bool)

(declare-fun e!472440 () Bool)

(assert (=> b!846445 (=> (not res!575197) (not e!472440))))

(declare-datatypes ((array!48132 0))(
  ( (array!48133 (arr!23093 (Array (_ BitVec 32) (_ BitVec 64))) (size!23534 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48132)

(declare-datatypes ((List!16420 0))(
  ( (Nil!16417) (Cons!16416 (h!17547 (_ BitVec 64)) (t!22799 List!16420)) )
))
(declare-fun arrayNoDuplicates!0 (array!48132 (_ BitVec 32) List!16420) Bool)

(assert (=> b!846445 (= res!575197 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16417))))

(declare-fun b!846446 () Bool)

(declare-fun res!575200 () Bool)

(assert (=> b!846446 (=> (not res!575200) (not e!472440))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!846446 (= res!575200 (validMask!0 mask!1196))))

(declare-fun b!846447 () Bool)

(declare-fun res!575198 () Bool)

(assert (=> b!846447 (=> (not res!575198) (not e!472440))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26337 0))(
  ( (V!26338 (val!8031 Int)) )
))
(declare-datatypes ((ValueCell!7544 0))(
  ( (ValueCellFull!7544 (v!10452 V!26337)) (EmptyCell!7544) )
))
(declare-datatypes ((array!48134 0))(
  ( (array!48135 (arr!23094 (Array (_ BitVec 32) ValueCell!7544)) (size!23535 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48134)

(assert (=> b!846447 (= res!575198 (and (= (size!23535 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23534 _keys!868) (size!23535 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!846448 () Bool)

(declare-fun res!575199 () Bool)

(assert (=> b!846448 (=> (not res!575199) (not e!472440))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!846448 (= res!575199 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23534 _keys!868))))))

(declare-fun mapNonEmpty!25550 () Bool)

(declare-fun tp!48997 () Bool)

(declare-fun e!472437 () Bool)

(assert (=> mapNonEmpty!25550 (= mapRes!25550 (and tp!48997 e!472437))))

(declare-fun mapRest!25550 () (Array (_ BitVec 32) ValueCell!7544))

(declare-fun mapValue!25550 () ValueCell!7544)

(declare-fun mapKey!25550 () (_ BitVec 32))

(assert (=> mapNonEmpty!25550 (= (arr!23094 _values!688) (store mapRest!25550 mapKey!25550 mapValue!25550))))

(declare-fun res!575195 () Bool)

(assert (=> start!72944 (=> (not res!575195) (not e!472440))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72944 (= res!575195 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23534 _keys!868))))))

(assert (=> start!72944 e!472440))

(declare-fun tp_is_empty!15967 () Bool)

(assert (=> start!72944 tp_is_empty!15967))

(assert (=> start!72944 true))

(assert (=> start!72944 tp!48998))

(declare-fun array_inv!18326 (array!48132) Bool)

(assert (=> start!72944 (array_inv!18326 _keys!868)))

(declare-fun e!472439 () Bool)

(declare-fun array_inv!18327 (array!48134) Bool)

(assert (=> start!72944 (and (array_inv!18327 _values!688) e!472439)))

(declare-fun b!846449 () Bool)

(declare-fun e!472438 () Bool)

(assert (=> b!846449 (= e!472439 (and e!472438 mapRes!25550))))

(declare-fun condMapEmpty!25550 () Bool)

(declare-fun mapDefault!25550 () ValueCell!7544)

