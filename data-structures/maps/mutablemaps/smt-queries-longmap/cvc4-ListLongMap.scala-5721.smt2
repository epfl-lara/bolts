; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74154 () Bool)

(assert start!74154)

(declare-fun b!871876 () Bool)

(declare-fun res!592731 () Bool)

(declare-fun e!485490 () Bool)

(assert (=> b!871876 (=> (not res!592731) (not e!485490))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50460 0))(
  ( (array!50461 (arr!24256 (Array (_ BitVec 32) (_ BitVec 64))) (size!24697 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50460)

(declare-datatypes ((V!27933 0))(
  ( (V!27934 (val!8630 Int)) )
))
(declare-datatypes ((ValueCell!8143 0))(
  ( (ValueCellFull!8143 (v!11051 V!27933)) (EmptyCell!8143) )
))
(declare-datatypes ((array!50462 0))(
  ( (array!50463 (arr!24257 (Array (_ BitVec 32) ValueCell!8143)) (size!24698 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50462)

(assert (=> b!871876 (= res!592731 (and (= (size!24698 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24697 _keys!868) (size!24698 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!592733 () Bool)

(assert (=> start!74154 (=> (not res!592733) (not e!485490))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74154 (= res!592733 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24697 _keys!868))))))

(assert (=> start!74154 e!485490))

(assert (=> start!74154 true))

(declare-fun array_inv!19122 (array!50460) Bool)

(assert (=> start!74154 (array_inv!19122 _keys!868)))

(declare-fun e!485491 () Bool)

(declare-fun array_inv!19123 (array!50462) Bool)

(assert (=> start!74154 (and (array_inv!19123 _values!688) e!485491)))

(declare-fun b!871877 () Bool)

(declare-fun e!485493 () Bool)

(declare-fun tp_is_empty!17165 () Bool)

(assert (=> b!871877 (= e!485493 tp_is_empty!17165)))

(declare-fun b!871878 () Bool)

(declare-fun res!592732 () Bool)

(assert (=> b!871878 (=> (not res!592732) (not e!485490))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50460 (_ BitVec 32)) Bool)

(assert (=> b!871878 (= res!592732 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27350 () Bool)

(declare-fun mapRes!27350 () Bool)

(declare-fun tp!52550 () Bool)

(declare-fun e!485489 () Bool)

(assert (=> mapNonEmpty!27350 (= mapRes!27350 (and tp!52550 e!485489))))

(declare-fun mapValue!27350 () ValueCell!8143)

(declare-fun mapKey!27350 () (_ BitVec 32))

(declare-fun mapRest!27350 () (Array (_ BitVec 32) ValueCell!8143))

(assert (=> mapNonEmpty!27350 (= (arr!24257 _values!688) (store mapRest!27350 mapKey!27350 mapValue!27350))))

(declare-fun b!871879 () Bool)

(assert (=> b!871879 (= e!485490 false)))

(declare-fun lt!395508 () Bool)

(declare-datatypes ((List!17313 0))(
  ( (Nil!17310) (Cons!17309 (h!18440 (_ BitVec 64)) (t!24358 List!17313)) )
))
(declare-fun arrayNoDuplicates!0 (array!50460 (_ BitVec 32) List!17313) Bool)

(assert (=> b!871879 (= lt!395508 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17310))))

(declare-fun b!871880 () Bool)

(assert (=> b!871880 (= e!485491 (and e!485493 mapRes!27350))))

(declare-fun condMapEmpty!27350 () Bool)

(declare-fun mapDefault!27350 () ValueCell!8143)

