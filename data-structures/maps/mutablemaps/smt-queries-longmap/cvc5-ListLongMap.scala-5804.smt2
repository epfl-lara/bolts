; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74924 () Bool)

(assert start!74924)

(declare-fun b_free!15415 () Bool)

(declare-fun b_next!15415 () Bool)

(assert (=> start!74924 (= b_free!15415 (not b_next!15415))))

(declare-fun tp!53949 () Bool)

(declare-fun b_and!25547 () Bool)

(assert (=> start!74924 (= tp!53949 b_and!25547)))

(declare-fun mapIsEmpty!28125 () Bool)

(declare-fun mapRes!28125 () Bool)

(assert (=> mapIsEmpty!28125 mapRes!28125))

(declare-fun b!882789 () Bool)

(declare-fun res!599853 () Bool)

(declare-fun e!491355 () Bool)

(assert (=> b!882789 (=> (not res!599853) (not e!491355))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51430 0))(
  ( (array!51431 (arr!24730 (Array (_ BitVec 32) (_ BitVec 64))) (size!25171 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51430)

(declare-datatypes ((V!28593 0))(
  ( (V!28594 (val!8877 Int)) )
))
(declare-datatypes ((ValueCell!8390 0))(
  ( (ValueCellFull!8390 (v!11342 V!28593)) (EmptyCell!8390) )
))
(declare-datatypes ((array!51432 0))(
  ( (array!51433 (arr!24731 (Array (_ BitVec 32) ValueCell!8390)) (size!25172 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51432)

(assert (=> b!882789 (= res!599853 (and (= (size!25172 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25171 _keys!868) (size!25172 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!28125 () Bool)

(declare-fun tp!53948 () Bool)

(declare-fun e!491353 () Bool)

(assert (=> mapNonEmpty!28125 (= mapRes!28125 (and tp!53948 e!491353))))

(declare-fun mapRest!28125 () (Array (_ BitVec 32) ValueCell!8390))

(declare-fun mapValue!28125 () ValueCell!8390)

(declare-fun mapKey!28125 () (_ BitVec 32))

(assert (=> mapNonEmpty!28125 (= (arr!24731 _values!688) (store mapRest!28125 mapKey!28125 mapValue!28125))))

(declare-fun b!882790 () Bool)

(declare-fun tp_is_empty!17659 () Bool)

(assert (=> b!882790 (= e!491353 tp_is_empty!17659)))

(declare-fun b!882791 () Bool)

(declare-fun res!599851 () Bool)

(assert (=> b!882791 (=> (not res!599851) (not e!491355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51430 (_ BitVec 32)) Bool)

(assert (=> b!882791 (= res!599851 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!882792 () Bool)

(declare-fun res!599850 () Bool)

(declare-fun e!491360 () Bool)

(assert (=> b!882792 (=> res!599850 e!491360)))

(declare-datatypes ((List!17655 0))(
  ( (Nil!17652) (Cons!17651 (h!18782 (_ BitVec 64)) (t!24880 List!17655)) )
))
(declare-fun noDuplicate!1323 (List!17655) Bool)

(assert (=> b!882792 (= res!599850 (not (noDuplicate!1323 Nil!17652)))))

(declare-fun b!882793 () Bool)

(declare-fun res!599858 () Bool)

(assert (=> b!882793 (=> (not res!599858) (not e!491355))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!882793 (= res!599858 (and (= (select (arr!24730 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!882794 () Bool)

(declare-fun res!599863 () Bool)

(assert (=> b!882794 (=> res!599863 e!491360)))

(declare-fun contains!4271 (List!17655 (_ BitVec 64)) Bool)

(assert (=> b!882794 (= res!599863 (contains!4271 Nil!17652 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!882795 () Bool)

(declare-fun res!599862 () Bool)

(assert (=> b!882795 (=> (not res!599862) (not e!491355))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!882795 (= res!599862 (validMask!0 mask!1196))))

(declare-fun b!882796 () Bool)

(assert (=> b!882796 (= e!491360 true)))

(declare-fun lt!399466 () Bool)

(assert (=> b!882796 (= lt!399466 (contains!4271 Nil!17652 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!882797 () Bool)

(declare-fun res!599860 () Bool)

(assert (=> b!882797 (=> (not res!599860) (not e!491355))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!882797 (= res!599860 (validKeyInArray!0 k!854))))

(declare-fun b!882798 () Bool)

(declare-fun e!491356 () Bool)

(declare-fun e!491357 () Bool)

(assert (=> b!882798 (= e!491356 (not e!491357))))

(declare-fun res!599856 () Bool)

(assert (=> b!882798 (=> res!599856 e!491357)))

(assert (=> b!882798 (= res!599856 (not (validKeyInArray!0 (select (arr!24730 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11788 0))(
  ( (tuple2!11789 (_1!5904 (_ BitVec 64)) (_2!5904 V!28593)) )
))
(declare-datatypes ((List!17656 0))(
  ( (Nil!17653) (Cons!17652 (h!18783 tuple2!11788) (t!24881 List!17656)) )
))
(declare-datatypes ((ListLongMap!10571 0))(
  ( (ListLongMap!10572 (toList!5301 List!17656)) )
))
(declare-fun lt!399461 () ListLongMap!10571)

(declare-fun lt!399459 () ListLongMap!10571)

(assert (=> b!882798 (= lt!399461 lt!399459)))

(declare-fun v!557 () V!28593)

(declare-fun lt!399462 () ListLongMap!10571)

(declare-fun +!2506 (ListLongMap!10571 tuple2!11788) ListLongMap!10571)

(assert (=> b!882798 (= lt!399459 (+!2506 lt!399462 (tuple2!11789 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!399463 () array!51432)

(declare-fun minValue!654 () V!28593)

(declare-fun zeroValue!654 () V!28593)

(declare-fun getCurrentListMapNoExtraKeys!3258 (array!51430 array!51432 (_ BitVec 32) (_ BitVec 32) V!28593 V!28593 (_ BitVec 32) Int) ListLongMap!10571)

(assert (=> b!882798 (= lt!399461 (getCurrentListMapNoExtraKeys!3258 _keys!868 lt!399463 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!882798 (= lt!399462 (getCurrentListMapNoExtraKeys!3258 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30086 0))(
  ( (Unit!30087) )
))
(declare-fun lt!399465 () Unit!30086)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!731 (array!51430 array!51432 (_ BitVec 32) (_ BitVec 32) V!28593 V!28593 (_ BitVec 32) (_ BitVec 64) V!28593 (_ BitVec 32) Int) Unit!30086)

(assert (=> b!882798 (= lt!399465 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!731 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!882799 () Bool)

(declare-fun res!599855 () Bool)

(assert (=> b!882799 (=> (not res!599855) (not e!491355))))

(declare-fun arrayNoDuplicates!0 (array!51430 (_ BitVec 32) List!17655) Bool)

(assert (=> b!882799 (= res!599855 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17652))))

(declare-fun b!882800 () Bool)

(declare-fun e!491352 () Bool)

(assert (=> b!882800 (= e!491352 tp_is_empty!17659)))

(declare-fun b!882801 () Bool)

(declare-fun e!491358 () Bool)

(assert (=> b!882801 (= e!491358 (and e!491352 mapRes!28125))))

(declare-fun condMapEmpty!28125 () Bool)

(declare-fun mapDefault!28125 () ValueCell!8390)

