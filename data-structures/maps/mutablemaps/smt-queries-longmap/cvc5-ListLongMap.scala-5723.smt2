; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74162 () Bool)

(assert start!74162)

(declare-fun res!592782 () Bool)

(declare-fun e!485551 () Bool)

(assert (=> start!74162 (=> (not res!592782) (not e!485551))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!50476 0))(
  ( (array!50477 (arr!24264 (Array (_ BitVec 32) (_ BitVec 64))) (size!24705 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50476)

(assert (=> start!74162 (= res!592782 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24705 _keys!868))))))

(assert (=> start!74162 e!485551))

(assert (=> start!74162 true))

(declare-fun array_inv!19130 (array!50476) Bool)

(assert (=> start!74162 (array_inv!19130 _keys!868)))

(declare-datatypes ((V!27945 0))(
  ( (V!27946 (val!8634 Int)) )
))
(declare-datatypes ((ValueCell!8147 0))(
  ( (ValueCellFull!8147 (v!11055 V!27945)) (EmptyCell!8147) )
))
(declare-datatypes ((array!50478 0))(
  ( (array!50479 (arr!24265 (Array (_ BitVec 32) ValueCell!8147)) (size!24706 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50478)

(declare-fun e!485549 () Bool)

(declare-fun array_inv!19131 (array!50478) Bool)

(assert (=> start!74162 (and (array_inv!19131 _values!688) e!485549)))

(declare-fun b!871960 () Bool)

(declare-fun res!592779 () Bool)

(assert (=> b!871960 (=> (not res!592779) (not e!485551))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50476 (_ BitVec 32)) Bool)

(assert (=> b!871960 (= res!592779 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!871961 () Bool)

(assert (=> b!871961 (= e!485551 false)))

(declare-fun lt!395520 () Bool)

(declare-datatypes ((List!17316 0))(
  ( (Nil!17313) (Cons!17312 (h!18443 (_ BitVec 64)) (t!24361 List!17316)) )
))
(declare-fun arrayNoDuplicates!0 (array!50476 (_ BitVec 32) List!17316) Bool)

(assert (=> b!871961 (= lt!395520 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17313))))

(declare-fun mapIsEmpty!27362 () Bool)

(declare-fun mapRes!27362 () Bool)

(assert (=> mapIsEmpty!27362 mapRes!27362))

(declare-fun b!871962 () Bool)

(declare-fun res!592780 () Bool)

(assert (=> b!871962 (=> (not res!592780) (not e!485551))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!871962 (= res!592780 (validMask!0 mask!1196))))

(declare-fun b!871963 () Bool)

(declare-fun res!592781 () Bool)

(assert (=> b!871963 (=> (not res!592781) (not e!485551))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!871963 (= res!592781 (and (= (size!24706 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24705 _keys!868) (size!24706 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!27362 () Bool)

(declare-fun tp!52562 () Bool)

(declare-fun e!485553 () Bool)

(assert (=> mapNonEmpty!27362 (= mapRes!27362 (and tp!52562 e!485553))))

(declare-fun mapRest!27362 () (Array (_ BitVec 32) ValueCell!8147))

(declare-fun mapKey!27362 () (_ BitVec 32))

(declare-fun mapValue!27362 () ValueCell!8147)

(assert (=> mapNonEmpty!27362 (= (arr!24265 _values!688) (store mapRest!27362 mapKey!27362 mapValue!27362))))

(declare-fun b!871964 () Bool)

(declare-fun e!485550 () Bool)

(declare-fun tp_is_empty!17173 () Bool)

(assert (=> b!871964 (= e!485550 tp_is_empty!17173)))

(declare-fun b!871965 () Bool)

(assert (=> b!871965 (= e!485553 tp_is_empty!17173)))

(declare-fun b!871966 () Bool)

(assert (=> b!871966 (= e!485549 (and e!485550 mapRes!27362))))

(declare-fun condMapEmpty!27362 () Bool)

(declare-fun mapDefault!27362 () ValueCell!8147)

