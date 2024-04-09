; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74300 () Bool)

(assert start!74300)

(declare-fun b_free!15035 () Bool)

(declare-fun b_next!15035 () Bool)

(assert (=> start!74300 (= b_free!15035 (not b_next!15035))))

(declare-fun tp!52781 () Bool)

(declare-fun b_and!24829 () Bool)

(assert (=> start!74300 (= tp!52781 b_and!24829)))

(declare-fun b!873602 () Bool)

(declare-fun res!593767 () Bool)

(declare-fun e!486507 () Bool)

(assert (=> b!873602 (=> (not res!593767) (not e!486507))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50674 0))(
  ( (array!50675 (arr!24361 (Array (_ BitVec 32) (_ BitVec 64))) (size!24802 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50674)

(declare-datatypes ((V!28085 0))(
  ( (V!28086 (val!8687 Int)) )
))
(declare-datatypes ((ValueCell!8200 0))(
  ( (ValueCellFull!8200 (v!11112 V!28085)) (EmptyCell!8200) )
))
(declare-datatypes ((array!50676 0))(
  ( (array!50677 (arr!24362 (Array (_ BitVec 32) ValueCell!8200)) (size!24803 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50676)

(assert (=> b!873602 (= res!593767 (and (= (size!24803 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24802 _keys!868) (size!24803 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!873603 () Bool)

(declare-fun res!593760 () Bool)

(assert (=> b!873603 (=> (not res!593760) (not e!486507))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873603 (= res!593760 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!27527 () Bool)

(declare-fun mapRes!27527 () Bool)

(assert (=> mapIsEmpty!27527 mapRes!27527))

(declare-fun b!873604 () Bool)

(declare-fun res!593765 () Bool)

(assert (=> b!873604 (=> (not res!593765) (not e!486507))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!873604 (= res!593765 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24802 _keys!868))))))

(declare-fun mapNonEmpty!27527 () Bool)

(declare-fun tp!52780 () Bool)

(declare-fun e!486504 () Bool)

(assert (=> mapNonEmpty!27527 (= mapRes!27527 (and tp!52780 e!486504))))

(declare-fun mapKey!27527 () (_ BitVec 32))

(declare-fun mapRest!27527 () (Array (_ BitVec 32) ValueCell!8200))

(declare-fun mapValue!27527 () ValueCell!8200)

(assert (=> mapNonEmpty!27527 (= (arr!24362 _values!688) (store mapRest!27527 mapKey!27527 mapValue!27527))))

(declare-fun b!873605 () Bool)

(declare-fun res!593762 () Bool)

(assert (=> b!873605 (=> (not res!593762) (not e!486507))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50674 (_ BitVec 32)) Bool)

(assert (=> b!873605 (= res!593762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!873606 () Bool)

(declare-fun e!486506 () Bool)

(declare-fun tp_is_empty!17279 () Bool)

(assert (=> b!873606 (= e!486506 tp_is_empty!17279)))

(declare-fun b!873607 () Bool)

(declare-fun res!593763 () Bool)

(assert (=> b!873607 (=> (not res!593763) (not e!486507))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!873607 (= res!593763 (and (= (select (arr!24361 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!873608 () Bool)

(declare-fun res!593761 () Bool)

(assert (=> b!873608 (=> (not res!593761) (not e!486507))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873608 (= res!593761 (validMask!0 mask!1196))))

(declare-fun b!873609 () Bool)

(assert (=> b!873609 (= e!486507 (and (= from!1053 i!612) (or (bvslt (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsgt (bvadd #b00000000000000000000000000000001 from!1053) (size!24802 _keys!868)))))))

(declare-fun v!557 () V!28085)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11474 0))(
  ( (tuple2!11475 (_1!5747 (_ BitVec 64)) (_2!5747 V!28085)) )
))
(declare-datatypes ((List!17362 0))(
  ( (Nil!17359) (Cons!17358 (h!18489 tuple2!11474) (t!24411 List!17362)) )
))
(declare-datatypes ((ListLongMap!10257 0))(
  ( (ListLongMap!10258 (toList!5144 List!17362)) )
))
(declare-fun lt!395763 () ListLongMap!10257)

(declare-fun minValue!654 () V!28085)

(declare-fun zeroValue!654 () V!28085)

(declare-fun getCurrentListMapNoExtraKeys!3108 (array!50674 array!50676 (_ BitVec 32) (_ BitVec 32) V!28085 V!28085 (_ BitVec 32) Int) ListLongMap!10257)

(assert (=> b!873609 (= lt!395763 (getCurrentListMapNoExtraKeys!3108 _keys!868 (array!50677 (store (arr!24362 _values!688) i!612 (ValueCellFull!8200 v!557)) (size!24803 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395764 () ListLongMap!10257)

(assert (=> b!873609 (= lt!395764 (getCurrentListMapNoExtraKeys!3108 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!873610 () Bool)

(declare-fun res!593766 () Bool)

(assert (=> b!873610 (=> (not res!593766) (not e!486507))))

(declare-datatypes ((List!17363 0))(
  ( (Nil!17360) (Cons!17359 (h!18490 (_ BitVec 64)) (t!24412 List!17363)) )
))
(declare-fun arrayNoDuplicates!0 (array!50674 (_ BitVec 32) List!17363) Bool)

(assert (=> b!873610 (= res!593766 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17360))))

(declare-fun res!593764 () Bool)

(assert (=> start!74300 (=> (not res!593764) (not e!486507))))

(assert (=> start!74300 (= res!593764 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24802 _keys!868))))))

(assert (=> start!74300 e!486507))

(assert (=> start!74300 tp_is_empty!17279))

(assert (=> start!74300 true))

(assert (=> start!74300 tp!52781))

(declare-fun array_inv!19198 (array!50674) Bool)

(assert (=> start!74300 (array_inv!19198 _keys!868)))

(declare-fun e!486508 () Bool)

(declare-fun array_inv!19199 (array!50676) Bool)

(assert (=> start!74300 (and (array_inv!19199 _values!688) e!486508)))

(declare-fun b!873611 () Bool)

(assert (=> b!873611 (= e!486504 tp_is_empty!17279)))

(declare-fun b!873612 () Bool)

(assert (=> b!873612 (= e!486508 (and e!486506 mapRes!27527))))

(declare-fun condMapEmpty!27527 () Bool)

(declare-fun mapDefault!27527 () ValueCell!8200)

