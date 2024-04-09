; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74202 () Bool)

(assert start!74202)

(declare-fun b!872380 () Bool)

(declare-fun e!485850 () Bool)

(declare-fun tp_is_empty!17213 () Bool)

(assert (=> b!872380 (= e!485850 tp_is_empty!17213)))

(declare-fun b!872381 () Bool)

(declare-fun e!485851 () Bool)

(assert (=> b!872381 (= e!485851 tp_is_empty!17213)))

(declare-fun b!872382 () Bool)

(declare-fun res!593021 () Bool)

(declare-fun e!485849 () Bool)

(assert (=> b!872382 (=> (not res!593021) (not e!485849))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872382 (= res!593021 (validMask!0 mask!1196))))

(declare-fun b!872383 () Bool)

(declare-fun res!593022 () Bool)

(assert (=> b!872383 (=> (not res!593022) (not e!485849))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!50548 0))(
  ( (array!50549 (arr!24300 (Array (_ BitVec 32) (_ BitVec 64))) (size!24741 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50548)

(declare-datatypes ((V!27997 0))(
  ( (V!27998 (val!8654 Int)) )
))
(declare-datatypes ((ValueCell!8167 0))(
  ( (ValueCellFull!8167 (v!11075 V!27997)) (EmptyCell!8167) )
))
(declare-datatypes ((array!50550 0))(
  ( (array!50551 (arr!24301 (Array (_ BitVec 32) ValueCell!8167)) (size!24742 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50550)

(assert (=> b!872383 (= res!593022 (and (= (size!24742 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24741 _keys!868) (size!24742 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872385 () Bool)

(declare-fun e!485852 () Bool)

(declare-fun mapRes!27422 () Bool)

(assert (=> b!872385 (= e!485852 (and e!485851 mapRes!27422))))

(declare-fun condMapEmpty!27422 () Bool)

(declare-fun mapDefault!27422 () ValueCell!8167)

