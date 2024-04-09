; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74294 () Bool)

(assert start!74294)

(declare-fun b_free!15029 () Bool)

(declare-fun b_next!15029 () Bool)

(assert (=> start!74294 (= b_free!15029 (not b_next!15029))))

(declare-fun tp!52762 () Bool)

(declare-fun b_and!24823 () Bool)

(assert (=> start!74294 (= tp!52762 b_and!24823)))

(declare-fun b!873503 () Bool)

(declare-fun res!593694 () Bool)

(declare-fun e!486460 () Bool)

(assert (=> b!873503 (=> (not res!593694) (not e!486460))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!873503 (= res!593694 (validKeyInArray!0 k!854))))

(declare-fun b!873504 () Bool)

(declare-fun res!593693 () Bool)

(assert (=> b!873504 (=> (not res!593693) (not e!486460))))

(declare-datatypes ((array!50662 0))(
  ( (array!50663 (arr!24355 (Array (_ BitVec 32) (_ BitVec 64))) (size!24796 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50662)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50662 (_ BitVec 32)) Bool)

(assert (=> b!873504 (= res!593693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!873505 () Bool)

(declare-fun res!593689 () Bool)

(assert (=> b!873505 (=> (not res!593689) (not e!486460))))

(declare-datatypes ((List!17357 0))(
  ( (Nil!17354) (Cons!17353 (h!18484 (_ BitVec 64)) (t!24406 List!17357)) )
))
(declare-fun arrayNoDuplicates!0 (array!50662 (_ BitVec 32) List!17357) Bool)

(assert (=> b!873505 (= res!593689 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17354))))

(declare-fun b!873506 () Bool)

(declare-fun res!593692 () Bool)

(assert (=> b!873506 (=> (not res!593692) (not e!486460))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!28077 0))(
  ( (V!28078 (val!8684 Int)) )
))
(declare-datatypes ((ValueCell!8197 0))(
  ( (ValueCellFull!8197 (v!11109 V!28077)) (EmptyCell!8197) )
))
(declare-datatypes ((array!50664 0))(
  ( (array!50665 (arr!24356 (Array (_ BitVec 32) ValueCell!8197)) (size!24797 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50664)

(assert (=> b!873506 (= res!593692 (and (= (size!24797 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24796 _keys!868) (size!24797 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!873507 () Bool)

(declare-fun res!593691 () Bool)

(assert (=> b!873507 (=> (not res!593691) (not e!486460))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!873507 (= res!593691 (and (= (select (arr!24355 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!873508 () Bool)

(declare-fun res!593695 () Bool)

(assert (=> b!873508 (=> (not res!593695) (not e!486460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873508 (= res!593695 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!27518 () Bool)

(declare-fun mapRes!27518 () Bool)

(declare-fun tp!52763 () Bool)

(declare-fun e!486461 () Bool)

(assert (=> mapNonEmpty!27518 (= mapRes!27518 (and tp!52763 e!486461))))

(declare-fun mapValue!27518 () ValueCell!8197)

(declare-fun mapRest!27518 () (Array (_ BitVec 32) ValueCell!8197))

(declare-fun mapKey!27518 () (_ BitVec 32))

(assert (=> mapNonEmpty!27518 (= (arr!24356 _values!688) (store mapRest!27518 mapKey!27518 mapValue!27518))))

(declare-fun mapIsEmpty!27518 () Bool)

(assert (=> mapIsEmpty!27518 mapRes!27518))

(declare-fun b!873509 () Bool)

(declare-fun e!486462 () Bool)

(declare-fun tp_is_empty!17273 () Bool)

(assert (=> b!873509 (= e!486462 tp_is_empty!17273)))

(declare-fun b!873510 () Bool)

(assert (=> b!873510 (= e!486461 tp_is_empty!17273)))

(declare-fun res!593688 () Bool)

(assert (=> start!74294 (=> (not res!593688) (not e!486460))))

(assert (=> start!74294 (= res!593688 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24796 _keys!868))))))

(assert (=> start!74294 e!486460))

(assert (=> start!74294 true))

(assert (=> start!74294 tp!52762))

(declare-fun array_inv!19194 (array!50662) Bool)

(assert (=> start!74294 (array_inv!19194 _keys!868)))

(declare-fun e!486459 () Bool)

(declare-fun array_inv!19195 (array!50664) Bool)

(assert (=> start!74294 (and (array_inv!19195 _values!688) e!486459)))

(assert (=> start!74294 tp_is_empty!17273))

(declare-fun b!873511 () Bool)

(assert (=> b!873511 (= e!486460 (bvsge i!612 (size!24797 _values!688)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11470 0))(
  ( (tuple2!11471 (_1!5745 (_ BitVec 64)) (_2!5745 V!28077)) )
))
(declare-datatypes ((List!17358 0))(
  ( (Nil!17355) (Cons!17354 (h!18485 tuple2!11470) (t!24407 List!17358)) )
))
(declare-datatypes ((ListLongMap!10253 0))(
  ( (ListLongMap!10254 (toList!5142 List!17358)) )
))
(declare-fun lt!395746 () ListLongMap!10253)

(declare-fun minValue!654 () V!28077)

(declare-fun zeroValue!654 () V!28077)

(declare-fun getCurrentListMapNoExtraKeys!3106 (array!50662 array!50664 (_ BitVec 32) (_ BitVec 32) V!28077 V!28077 (_ BitVec 32) Int) ListLongMap!10253)

(assert (=> b!873511 (= lt!395746 (getCurrentListMapNoExtraKeys!3106 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!873512 () Bool)

(assert (=> b!873512 (= e!486459 (and e!486462 mapRes!27518))))

(declare-fun condMapEmpty!27518 () Bool)

(declare-fun mapDefault!27518 () ValueCell!8197)

