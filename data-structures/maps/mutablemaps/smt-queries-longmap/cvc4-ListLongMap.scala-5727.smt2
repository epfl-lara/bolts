; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74190 () Bool)

(assert start!74190)

(declare-fun b!872254 () Bool)

(declare-fun e!485759 () Bool)

(assert (=> b!872254 (= e!485759 false)))

(declare-fun lt!395562 () Bool)

(declare-datatypes ((array!50526 0))(
  ( (array!50527 (arr!24289 (Array (_ BitVec 32) (_ BitVec 64))) (size!24730 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50526)

(declare-datatypes ((List!17326 0))(
  ( (Nil!17323) (Cons!17322 (h!18453 (_ BitVec 64)) (t!24371 List!17326)) )
))
(declare-fun arrayNoDuplicates!0 (array!50526 (_ BitVec 32) List!17326) Bool)

(assert (=> b!872254 (= lt!395562 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17323))))

(declare-fun b!872255 () Bool)

(declare-fun res!592949 () Bool)

(assert (=> b!872255 (=> (not res!592949) (not e!485759))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872255 (= res!592949 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27404 () Bool)

(declare-fun mapRes!27404 () Bool)

(assert (=> mapIsEmpty!27404 mapRes!27404))

(declare-fun res!592950 () Bool)

(assert (=> start!74190 (=> (not res!592950) (not e!485759))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74190 (= res!592950 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24730 _keys!868))))))

(assert (=> start!74190 e!485759))

(assert (=> start!74190 true))

(declare-fun array_inv!19148 (array!50526) Bool)

(assert (=> start!74190 (array_inv!19148 _keys!868)))

(declare-datatypes ((V!27981 0))(
  ( (V!27982 (val!8648 Int)) )
))
(declare-datatypes ((ValueCell!8161 0))(
  ( (ValueCellFull!8161 (v!11069 V!27981)) (EmptyCell!8161) )
))
(declare-datatypes ((array!50528 0))(
  ( (array!50529 (arr!24290 (Array (_ BitVec 32) ValueCell!8161)) (size!24731 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50528)

(declare-fun e!485760 () Bool)

(declare-fun array_inv!19149 (array!50528) Bool)

(assert (=> start!74190 (and (array_inv!19149 _values!688) e!485760)))

(declare-fun mapNonEmpty!27404 () Bool)

(declare-fun tp!52604 () Bool)

(declare-fun e!485761 () Bool)

(assert (=> mapNonEmpty!27404 (= mapRes!27404 (and tp!52604 e!485761))))

(declare-fun mapValue!27404 () ValueCell!8161)

(declare-fun mapRest!27404 () (Array (_ BitVec 32) ValueCell!8161))

(declare-fun mapKey!27404 () (_ BitVec 32))

(assert (=> mapNonEmpty!27404 (= (arr!24290 _values!688) (store mapRest!27404 mapKey!27404 mapValue!27404))))

(declare-fun b!872256 () Bool)

(declare-fun e!485763 () Bool)

(declare-fun tp_is_empty!17201 () Bool)

(assert (=> b!872256 (= e!485763 tp_is_empty!17201)))

(declare-fun b!872257 () Bool)

(assert (=> b!872257 (= e!485761 tp_is_empty!17201)))

(declare-fun b!872258 () Bool)

(declare-fun res!592948 () Bool)

(assert (=> b!872258 (=> (not res!592948) (not e!485759))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!872258 (= res!592948 (and (= (size!24731 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24730 _keys!868) (size!24731 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872259 () Bool)

(assert (=> b!872259 (= e!485760 (and e!485763 mapRes!27404))))

(declare-fun condMapEmpty!27404 () Bool)

(declare-fun mapDefault!27404 () ValueCell!8161)

