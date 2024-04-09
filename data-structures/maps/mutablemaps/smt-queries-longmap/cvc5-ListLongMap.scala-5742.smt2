; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74308 () Bool)

(assert start!74308)

(declare-fun b_free!15043 () Bool)

(declare-fun b_next!15043 () Bool)

(assert (=> start!74308 (= b_free!15043 (not b_next!15043))))

(declare-fun tp!52805 () Bool)

(declare-fun b_and!24837 () Bool)

(assert (=> start!74308 (= tp!52805 b_and!24837)))

(declare-fun mapNonEmpty!27539 () Bool)

(declare-fun mapRes!27539 () Bool)

(declare-fun tp!52804 () Bool)

(declare-fun e!486564 () Bool)

(assert (=> mapNonEmpty!27539 (= mapRes!27539 (and tp!52804 e!486564))))

(declare-datatypes ((V!28097 0))(
  ( (V!28098 (val!8691 Int)) )
))
(declare-datatypes ((ValueCell!8204 0))(
  ( (ValueCellFull!8204 (v!11116 V!28097)) (EmptyCell!8204) )
))
(declare-fun mapValue!27539 () ValueCell!8204)

(declare-fun mapKey!27539 () (_ BitVec 32))

(declare-fun mapRest!27539 () (Array (_ BitVec 32) ValueCell!8204))

(declare-datatypes ((array!50690 0))(
  ( (array!50691 (arr!24369 (Array (_ BitVec 32) ValueCell!8204)) (size!24810 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50690)

(assert (=> mapNonEmpty!27539 (= (arr!24369 _values!688) (store mapRest!27539 mapKey!27539 mapValue!27539))))

(declare-fun b!873734 () Bool)

(declare-fun res!593856 () Bool)

(declare-fun e!486566 () Bool)

(assert (=> b!873734 (=> (not res!593856) (not e!486566))))

(declare-datatypes ((array!50692 0))(
  ( (array!50693 (arr!24370 (Array (_ BitVec 32) (_ BitVec 64))) (size!24811 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50692)

(declare-datatypes ((List!17369 0))(
  ( (Nil!17366) (Cons!17365 (h!18496 (_ BitVec 64)) (t!24418 List!17369)) )
))
(declare-fun arrayNoDuplicates!0 (array!50692 (_ BitVec 32) List!17369) Bool)

(assert (=> b!873734 (= res!593856 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17366))))

(declare-fun b!873735 () Bool)

(declare-fun res!593857 () Bool)

(assert (=> b!873735 (=> (not res!593857) (not e!486566))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50692 (_ BitVec 32)) Bool)

(assert (=> b!873735 (= res!593857 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!593858 () Bool)

(assert (=> start!74308 (=> (not res!593858) (not e!486566))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74308 (= res!593858 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24811 _keys!868))))))

(assert (=> start!74308 e!486566))

(declare-fun tp_is_empty!17287 () Bool)

(assert (=> start!74308 tp_is_empty!17287))

(assert (=> start!74308 true))

(assert (=> start!74308 tp!52805))

(declare-fun array_inv!19202 (array!50692) Bool)

(assert (=> start!74308 (array_inv!19202 _keys!868)))

(declare-fun e!486568 () Bool)

(declare-fun array_inv!19203 (array!50690) Bool)

(assert (=> start!74308 (and (array_inv!19203 _values!688) e!486568)))

(declare-fun b!873736 () Bool)

(declare-fun res!593860 () Bool)

(assert (=> b!873736 (=> (not res!593860) (not e!486566))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!873736 (= res!593860 (and (= (select (arr!24370 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!873737 () Bool)

(declare-fun res!593862 () Bool)

(assert (=> b!873737 (=> (not res!593862) (not e!486566))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873737 (= res!593862 (validKeyInArray!0 k!854))))

(declare-fun b!873738 () Bool)

(declare-fun e!486567 () Bool)

(assert (=> b!873738 (= e!486567 tp_is_empty!17287)))

(declare-fun b!873739 () Bool)

(assert (=> b!873739 (= e!486568 (and e!486567 mapRes!27539))))

(declare-fun condMapEmpty!27539 () Bool)

(declare-fun mapDefault!27539 () ValueCell!8204)

