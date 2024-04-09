; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74658 () Bool)

(assert start!74658)

(declare-fun b_free!15299 () Bool)

(declare-fun b_next!15299 () Bool)

(assert (=> start!74658 (= b_free!15299 (not b_next!15299))))

(declare-fun tp!53583 () Bool)

(declare-fun b_and!25219 () Bool)

(assert (=> start!74658 (= tp!53583 b_and!25219)))

(declare-fun b!879356 () Bool)

(declare-fun res!597547 () Bool)

(declare-fun e!489408 () Bool)

(assert (=> b!879356 (=> (not res!597547) (not e!489408))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!51194 0))(
  ( (array!51195 (arr!24618 (Array (_ BitVec 32) (_ BitVec 64))) (size!25059 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51194)

(assert (=> b!879356 (= res!597547 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25059 _keys!868))))))

(declare-fun b!879357 () Bool)

(declare-fun e!489407 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!879357 (= e!489407 (bvslt from!1053 (size!25059 _keys!868)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!28437 0))(
  ( (V!28438 (val!8819 Int)) )
))
(declare-datatypes ((tuple2!11686 0))(
  ( (tuple2!11687 (_1!5853 (_ BitVec 64)) (_2!5853 V!28437)) )
))
(declare-datatypes ((List!17562 0))(
  ( (Nil!17559) (Cons!17558 (h!18689 tuple2!11686) (t!24671 List!17562)) )
))
(declare-datatypes ((ListLongMap!10469 0))(
  ( (ListLongMap!10470 (toList!5250 List!17562)) )
))
(declare-fun lt!397580 () ListLongMap!10469)

(declare-fun lt!397578 () ListLongMap!10469)

(declare-datatypes ((ValueCell!8332 0))(
  ( (ValueCellFull!8332 (v!11259 V!28437)) (EmptyCell!8332) )
))
(declare-datatypes ((array!51196 0))(
  ( (array!51197 (arr!24619 (Array (_ BitVec 32) ValueCell!8332)) (size!25060 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51196)

(declare-fun +!2456 (ListLongMap!10469 tuple2!11686) ListLongMap!10469)

(declare-fun get!12952 (ValueCell!8332 V!28437) V!28437)

(declare-fun dynLambda!1227 (Int (_ BitVec 64)) V!28437)

(assert (=> b!879357 (= lt!397578 (+!2456 lt!397580 (tuple2!11687 (select (arr!24618 _keys!868) from!1053) (get!12952 (select (arr!24619 _values!688) from!1053) (dynLambda!1227 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879358 () Bool)

(declare-fun res!597545 () Bool)

(assert (=> b!879358 (=> (not res!597545) (not e!489408))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!879358 (= res!597545 (and (= (size!25060 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25059 _keys!868) (size!25060 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!879359 () Bool)

(declare-fun e!489406 () Bool)

(assert (=> b!879359 (= e!489408 e!489406)))

(declare-fun res!597548 () Bool)

(assert (=> b!879359 (=> (not res!597548) (not e!489406))))

(assert (=> b!879359 (= res!597548 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397584 () array!51196)

(declare-fun minValue!654 () V!28437)

(declare-fun zeroValue!654 () V!28437)

(declare-fun getCurrentListMapNoExtraKeys!3211 (array!51194 array!51196 (_ BitVec 32) (_ BitVec 32) V!28437 V!28437 (_ BitVec 32) Int) ListLongMap!10469)

(assert (=> b!879359 (= lt!397578 (getCurrentListMapNoExtraKeys!3211 _keys!868 lt!397584 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28437)

(assert (=> b!879359 (= lt!397584 (array!51197 (store (arr!24619 _values!688) i!612 (ValueCellFull!8332 v!557)) (size!25060 _values!688)))))

(declare-fun lt!397582 () ListLongMap!10469)

(assert (=> b!879359 (= lt!397582 (getCurrentListMapNoExtraKeys!3211 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapNonEmpty!27933 () Bool)

(declare-fun mapRes!27933 () Bool)

(declare-fun tp!53582 () Bool)

(declare-fun e!489403 () Bool)

(assert (=> mapNonEmpty!27933 (= mapRes!27933 (and tp!53582 e!489403))))

(declare-fun mapRest!27933 () (Array (_ BitVec 32) ValueCell!8332))

(declare-fun mapValue!27933 () ValueCell!8332)

(declare-fun mapKey!27933 () (_ BitVec 32))

(assert (=> mapNonEmpty!27933 (= (arr!24619 _values!688) (store mapRest!27933 mapKey!27933 mapValue!27933))))

(declare-fun b!879360 () Bool)

(declare-fun res!597546 () Bool)

(assert (=> b!879360 (=> (not res!597546) (not e!489408))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!879360 (= res!597546 (validKeyInArray!0 k!854))))

(declare-fun b!879361 () Bool)

(declare-fun res!597551 () Bool)

(assert (=> b!879361 (=> (not res!597551) (not e!489408))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51194 (_ BitVec 32)) Bool)

(assert (=> b!879361 (= res!597551 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!879362 () Bool)

(assert (=> b!879362 (= e!489406 (not e!489407))))

(declare-fun res!597552 () Bool)

(assert (=> b!879362 (=> res!597552 e!489407)))

(assert (=> b!879362 (= res!597552 (not (validKeyInArray!0 (select (arr!24618 _keys!868) from!1053))))))

(declare-fun lt!397583 () ListLongMap!10469)

(assert (=> b!879362 (= lt!397583 lt!397580)))

(declare-fun lt!397581 () ListLongMap!10469)

(assert (=> b!879362 (= lt!397580 (+!2456 lt!397581 (tuple2!11687 k!854 v!557)))))

(assert (=> b!879362 (= lt!397583 (getCurrentListMapNoExtraKeys!3211 _keys!868 lt!397584 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!879362 (= lt!397581 (getCurrentListMapNoExtraKeys!3211 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29990 0))(
  ( (Unit!29991) )
))
(declare-fun lt!397579 () Unit!29990)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!687 (array!51194 array!51196 (_ BitVec 32) (_ BitVec 32) V!28437 V!28437 (_ BitVec 32) (_ BitVec 64) V!28437 (_ BitVec 32) Int) Unit!29990)

(assert (=> b!879362 (= lt!397579 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!687 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!879363 () Bool)

(declare-fun res!597554 () Bool)

(assert (=> b!879363 (=> (not res!597554) (not e!489408))))

(assert (=> b!879363 (= res!597554 (and (= (select (arr!24618 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!879364 () Bool)

(declare-fun res!597549 () Bool)

(assert (=> b!879364 (=> (not res!597549) (not e!489408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!879364 (= res!597549 (validMask!0 mask!1196))))

(declare-fun b!879365 () Bool)

(declare-fun e!489404 () Bool)

(declare-fun tp_is_empty!17543 () Bool)

(assert (=> b!879365 (= e!489404 tp_is_empty!17543)))

(declare-fun mapIsEmpty!27933 () Bool)

(assert (=> mapIsEmpty!27933 mapRes!27933))

(declare-fun res!597550 () Bool)

(assert (=> start!74658 (=> (not res!597550) (not e!489408))))

(assert (=> start!74658 (= res!597550 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25059 _keys!868))))))

(assert (=> start!74658 e!489408))

(assert (=> start!74658 tp_is_empty!17543))

(assert (=> start!74658 true))

(assert (=> start!74658 tp!53583))

(declare-fun array_inv!19380 (array!51194) Bool)

(assert (=> start!74658 (array_inv!19380 _keys!868)))

(declare-fun e!489409 () Bool)

(declare-fun array_inv!19381 (array!51196) Bool)

(assert (=> start!74658 (and (array_inv!19381 _values!688) e!489409)))

(declare-fun b!879366 () Bool)

(declare-fun res!597553 () Bool)

(assert (=> b!879366 (=> (not res!597553) (not e!489408))))

(declare-datatypes ((List!17563 0))(
  ( (Nil!17560) (Cons!17559 (h!18690 (_ BitVec 64)) (t!24672 List!17563)) )
))
(declare-fun arrayNoDuplicates!0 (array!51194 (_ BitVec 32) List!17563) Bool)

(assert (=> b!879366 (= res!597553 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17560))))

(declare-fun b!879367 () Bool)

(assert (=> b!879367 (= e!489403 tp_is_empty!17543)))

(declare-fun b!879368 () Bool)

(assert (=> b!879368 (= e!489409 (and e!489404 mapRes!27933))))

(declare-fun condMapEmpty!27933 () Bool)

(declare-fun mapDefault!27933 () ValueCell!8332)

