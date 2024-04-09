; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74160 () Bool)

(assert start!74160)

(declare-fun mapIsEmpty!27359 () Bool)

(declare-fun mapRes!27359 () Bool)

(assert (=> mapIsEmpty!27359 mapRes!27359))

(declare-fun b!871940 () Bool)

(declare-fun res!592767 () Bool)

(declare-fun e!485537 () Bool)

(assert (=> b!871940 (=> (not res!592767) (not e!485537))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50472 0))(
  ( (array!50473 (arr!24262 (Array (_ BitVec 32) (_ BitVec 64))) (size!24703 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50472)

(declare-datatypes ((V!27941 0))(
  ( (V!27942 (val!8633 Int)) )
))
(declare-datatypes ((ValueCell!8146 0))(
  ( (ValueCellFull!8146 (v!11054 V!27941)) (EmptyCell!8146) )
))
(declare-datatypes ((array!50474 0))(
  ( (array!50475 (arr!24263 (Array (_ BitVec 32) ValueCell!8146)) (size!24704 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50474)

(assert (=> b!871940 (= res!592767 (and (= (size!24704 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24703 _keys!868) (size!24704 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27359 () Bool)

(declare-fun tp!52559 () Bool)

(declare-fun e!485538 () Bool)

(assert (=> mapNonEmpty!27359 (= mapRes!27359 (and tp!52559 e!485538))))

(declare-fun mapKey!27359 () (_ BitVec 32))

(declare-fun mapRest!27359 () (Array (_ BitVec 32) ValueCell!8146))

(declare-fun mapValue!27359 () ValueCell!8146)

(assert (=> mapNonEmpty!27359 (= (arr!24263 _values!688) (store mapRest!27359 mapKey!27359 mapValue!27359))))

(declare-fun b!871941 () Bool)

(declare-fun tp_is_empty!17171 () Bool)

(assert (=> b!871941 (= e!485538 tp_is_empty!17171)))

(declare-fun b!871939 () Bool)

(assert (=> b!871939 (= e!485537 false)))

(declare-fun lt!395517 () Bool)

(declare-datatypes ((List!17315 0))(
  ( (Nil!17312) (Cons!17311 (h!18442 (_ BitVec 64)) (t!24360 List!17315)) )
))
(declare-fun arrayNoDuplicates!0 (array!50472 (_ BitVec 32) List!17315) Bool)

(assert (=> b!871939 (= lt!395517 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17312))))

(declare-fun res!592769 () Bool)

(assert (=> start!74160 (=> (not res!592769) (not e!485537))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74160 (= res!592769 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24703 _keys!868))))))

(assert (=> start!74160 e!485537))

(assert (=> start!74160 true))

(declare-fun array_inv!19128 (array!50472) Bool)

(assert (=> start!74160 (array_inv!19128 _keys!868)))

(declare-fun e!485535 () Bool)

(declare-fun array_inv!19129 (array!50474) Bool)

(assert (=> start!74160 (and (array_inv!19129 _values!688) e!485535)))

(declare-fun b!871942 () Bool)

(declare-fun e!485536 () Bool)

(assert (=> b!871942 (= e!485535 (and e!485536 mapRes!27359))))

(declare-fun condMapEmpty!27359 () Bool)

(declare-fun mapDefault!27359 () ValueCell!8146)

