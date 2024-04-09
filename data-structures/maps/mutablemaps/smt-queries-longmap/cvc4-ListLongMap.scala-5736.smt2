; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74262 () Bool)

(assert start!74262)

(declare-fun mapNonEmpty!27488 () Bool)

(declare-fun mapRes!27488 () Bool)

(declare-fun tp!52715 () Bool)

(declare-fun e!486272 () Bool)

(assert (=> mapNonEmpty!27488 (= mapRes!27488 (and tp!52715 e!486272))))

(declare-datatypes ((V!28053 0))(
  ( (V!28054 (val!8675 Int)) )
))
(declare-datatypes ((ValueCell!8188 0))(
  ( (ValueCellFull!8188 (v!11100 V!28053)) (EmptyCell!8188) )
))
(declare-fun mapValue!27488 () ValueCell!8188)

(declare-fun mapRest!27488 () (Array (_ BitVec 32) ValueCell!8188))

(declare-fun mapKey!27488 () (_ BitVec 32))

(declare-datatypes ((array!50626 0))(
  ( (array!50627 (arr!24338 (Array (_ BitVec 32) ValueCell!8188)) (size!24779 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50626)

(assert (=> mapNonEmpty!27488 (= (arr!24338 _values!688) (store mapRest!27488 mapKey!27488 mapValue!27488))))

(declare-fun b!873134 () Bool)

(declare-fun e!486270 () Bool)

(assert (=> b!873134 (= e!486270 false)))

(declare-fun lt!395700 () Bool)

(declare-datatypes ((array!50628 0))(
  ( (array!50629 (arr!24339 (Array (_ BitVec 32) (_ BitVec 64))) (size!24780 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50628)

(declare-datatypes ((List!17347 0))(
  ( (Nil!17344) (Cons!17343 (h!18474 (_ BitVec 64)) (t!24394 List!17347)) )
))
(declare-fun arrayNoDuplicates!0 (array!50628 (_ BitVec 32) List!17347) Bool)

(assert (=> b!873134 (= lt!395700 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17344))))

(declare-fun b!873135 () Bool)

(declare-fun e!486271 () Bool)

(declare-fun tp_is_empty!17255 () Bool)

(assert (=> b!873135 (= e!486271 tp_is_empty!17255)))

(declare-fun b!873136 () Bool)

(declare-fun res!593457 () Bool)

(assert (=> b!873136 (=> (not res!593457) (not e!486270))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50628 (_ BitVec 32)) Bool)

(assert (=> b!873136 (= res!593457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!873137 () Bool)

(declare-fun res!593454 () Bool)

(assert (=> b!873137 (=> (not res!593454) (not e!486270))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873137 (= res!593454 (validMask!0 mask!1196))))

(declare-fun res!593455 () Bool)

(assert (=> start!74262 (=> (not res!593455) (not e!486270))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74262 (= res!593455 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24780 _keys!868))))))

(assert (=> start!74262 e!486270))

(assert (=> start!74262 true))

(declare-fun array_inv!19184 (array!50628) Bool)

(assert (=> start!74262 (array_inv!19184 _keys!868)))

(declare-fun e!486273 () Bool)

(declare-fun array_inv!19185 (array!50626) Bool)

(assert (=> start!74262 (and (array_inv!19185 _values!688) e!486273)))

(declare-fun b!873138 () Bool)

(assert (=> b!873138 (= e!486272 tp_is_empty!17255)))

(declare-fun mapIsEmpty!27488 () Bool)

(assert (=> mapIsEmpty!27488 mapRes!27488))

(declare-fun b!873139 () Bool)

(declare-fun res!593456 () Bool)

(assert (=> b!873139 (=> (not res!593456) (not e!486270))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!873139 (= res!593456 (and (= (size!24779 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24780 _keys!868) (size!24779 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!873140 () Bool)

(assert (=> b!873140 (= e!486273 (and e!486271 mapRes!27488))))

(declare-fun condMapEmpty!27488 () Bool)

(declare-fun mapDefault!27488 () ValueCell!8188)

