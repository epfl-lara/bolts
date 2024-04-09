; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74106 () Bool)

(assert start!74106)

(declare-fun b!871337 () Bool)

(declare-fun e!485176 () Bool)

(declare-fun tp_is_empty!17129 () Bool)

(assert (=> b!871337 (= e!485176 tp_is_empty!17129)))

(declare-fun b!871338 () Bool)

(declare-fun res!592393 () Bool)

(declare-fun e!485174 () Bool)

(assert (=> b!871338 (=> (not res!592393) (not e!485174))))

(declare-datatypes ((array!50386 0))(
  ( (array!50387 (arr!24220 (Array (_ BitVec 32) (_ BitVec 64))) (size!24661 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50386)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50386 (_ BitVec 32)) Bool)

(assert (=> b!871338 (= res!592393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27293 () Bool)

(declare-fun mapRes!27293 () Bool)

(declare-fun tp!52475 () Bool)

(declare-fun e!485178 () Bool)

(assert (=> mapNonEmpty!27293 (= mapRes!27293 (and tp!52475 e!485178))))

(declare-datatypes ((V!27885 0))(
  ( (V!27886 (val!8612 Int)) )
))
(declare-datatypes ((ValueCell!8125 0))(
  ( (ValueCellFull!8125 (v!11033 V!27885)) (EmptyCell!8125) )
))
(declare-fun mapValue!27293 () ValueCell!8125)

(declare-fun mapKey!27293 () (_ BitVec 32))

(declare-fun mapRest!27293 () (Array (_ BitVec 32) ValueCell!8125))

(declare-datatypes ((array!50388 0))(
  ( (array!50389 (arr!24221 (Array (_ BitVec 32) ValueCell!8125)) (size!24662 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50388)

(assert (=> mapNonEmpty!27293 (= (arr!24221 _values!688) (store mapRest!27293 mapKey!27293 mapValue!27293))))

(declare-fun res!592394 () Bool)

(assert (=> start!74106 (=> (not res!592394) (not e!485174))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74106 (= res!592394 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24661 _keys!868))))))

(assert (=> start!74106 e!485174))

(assert (=> start!74106 true))

(declare-fun array_inv!19096 (array!50386) Bool)

(assert (=> start!74106 (array_inv!19096 _keys!868)))

(declare-fun e!485177 () Bool)

(declare-fun array_inv!19097 (array!50388) Bool)

(assert (=> start!74106 (and (array_inv!19097 _values!688) e!485177)))

(declare-fun b!871339 () Bool)

(declare-fun res!592392 () Bool)

(assert (=> b!871339 (=> (not res!592392) (not e!485174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871339 (= res!592392 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27293 () Bool)

(assert (=> mapIsEmpty!27293 mapRes!27293))

(declare-fun b!871340 () Bool)

(assert (=> b!871340 (= e!485177 (and e!485176 mapRes!27293))))

(declare-fun condMapEmpty!27293 () Bool)

(declare-fun mapDefault!27293 () ValueCell!8125)

