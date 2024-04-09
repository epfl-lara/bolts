; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72400 () Bool)

(assert start!72400)

(declare-fun b_free!13557 () Bool)

(declare-fun b_next!13557 () Bool)

(assert (=> start!72400 (= b_free!13557 (not b_next!13557))))

(declare-fun tp!47771 () Bool)

(declare-fun b_and!22661 () Bool)

(assert (=> start!72400 (= tp!47771 b_and!22661)))

(declare-datatypes ((V!25611 0))(
  ( (V!25612 (val!7759 Int)) )
))
(declare-fun v!557 () V!25611)

(declare-fun e!468078 () Bool)

(declare-datatypes ((tuple2!10284 0))(
  ( (tuple2!10285 (_1!5152 (_ BitVec 64)) (_2!5152 V!25611)) )
))
(declare-datatypes ((List!16121 0))(
  ( (Nil!16118) (Cons!16117 (h!17248 tuple2!10284) (t!22500 List!16121)) )
))
(declare-datatypes ((ListLongMap!9067 0))(
  ( (ListLongMap!9068 (toList!4549 List!16121)) )
))
(declare-fun call!36904 () ListLongMap!9067)

(declare-fun call!36905 () ListLongMap!9067)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun b!838523 () Bool)

(declare-fun +!1972 (ListLongMap!9067 tuple2!10284) ListLongMap!9067)

(assert (=> b!838523 (= e!468078 (= call!36905 (+!1972 call!36904 (tuple2!10285 k0!854 v!557))))))

(declare-fun b!838524 () Bool)

(declare-fun res!570294 () Bool)

(declare-fun e!468074 () Bool)

(assert (=> b!838524 (=> (not res!570294) (not e!468074))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838524 (= res!570294 (validKeyInArray!0 k0!854))))

(declare-fun res!570291 () Bool)

(assert (=> start!72400 (=> (not res!570291) (not e!468074))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47098 0))(
  ( (array!47099 (arr!22576 (Array (_ BitVec 32) (_ BitVec 64))) (size!23017 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47098)

(assert (=> start!72400 (= res!570291 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23017 _keys!868))))))

(assert (=> start!72400 e!468074))

(declare-fun tp_is_empty!15423 () Bool)

(assert (=> start!72400 tp_is_empty!15423))

(assert (=> start!72400 true))

(assert (=> start!72400 tp!47771))

(declare-fun array_inv!17962 (array!47098) Bool)

(assert (=> start!72400 (array_inv!17962 _keys!868)))

(declare-datatypes ((ValueCell!7272 0))(
  ( (ValueCellFull!7272 (v!10180 V!25611)) (EmptyCell!7272) )
))
(declare-datatypes ((array!47100 0))(
  ( (array!47101 (arr!22577 (Array (_ BitVec 32) ValueCell!7272)) (size!23018 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47100)

(declare-fun e!468075 () Bool)

(declare-fun array_inv!17963 (array!47100) Bool)

(assert (=> start!72400 (and (array_inv!17963 _values!688) e!468075)))

(declare-fun b!838525 () Bool)

(declare-fun res!570288 () Bool)

(assert (=> b!838525 (=> (not res!570288) (not e!468074))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!838525 (= res!570288 (and (= (size!23018 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23017 _keys!868) (size!23018 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!24734 () Bool)

(declare-fun mapRes!24734 () Bool)

(declare-fun tp!47770 () Bool)

(declare-fun e!468073 () Bool)

(assert (=> mapNonEmpty!24734 (= mapRes!24734 (and tp!47770 e!468073))))

(declare-fun mapKey!24734 () (_ BitVec 32))

(declare-fun mapRest!24734 () (Array (_ BitVec 32) ValueCell!7272))

(declare-fun mapValue!24734 () ValueCell!7272)

(assert (=> mapNonEmpty!24734 (= (arr!22577 _values!688) (store mapRest!24734 mapKey!24734 mapValue!24734))))

(declare-fun b!838526 () Bool)

(assert (=> b!838526 (= e!468078 (= call!36905 call!36904))))

(declare-fun b!838527 () Bool)

(declare-fun res!570292 () Bool)

(assert (=> b!838527 (=> (not res!570292) (not e!468074))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!838527 (= res!570292 (and (= (select (arr!22576 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23017 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!838528 () Bool)

(declare-fun res!570287 () Bool)

(assert (=> b!838528 (=> (not res!570287) (not e!468074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!838528 (= res!570287 (validMask!0 mask!1196))))

(declare-fun b!838529 () Bool)

(assert (=> b!838529 (= e!468073 tp_is_empty!15423)))

(declare-fun b!838530 () Bool)

(declare-fun res!570289 () Bool)

(assert (=> b!838530 (=> (not res!570289) (not e!468074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47098 (_ BitVec 32)) Bool)

(assert (=> b!838530 (= res!570289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!838531 () Bool)

(assert (=> b!838531 (= e!468074 (not true))))

(assert (=> b!838531 e!468078))

(declare-fun c!91113 () Bool)

(assert (=> b!838531 (= c!91113 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28792 0))(
  ( (Unit!28793) )
))
(declare-fun lt!380646 () Unit!28792)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!25611)

(declare-fun zeroValue!654 () V!25611)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!245 (array!47098 array!47100 (_ BitVec 32) (_ BitVec 32) V!25611 V!25611 (_ BitVec 32) (_ BitVec 64) V!25611 (_ BitVec 32) Int) Unit!28792)

(assert (=> b!838531 (= lt!380646 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!245 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838532 () Bool)

(declare-fun e!468077 () Bool)

(assert (=> b!838532 (= e!468077 tp_is_empty!15423)))

(declare-fun mapIsEmpty!24734 () Bool)

(assert (=> mapIsEmpty!24734 mapRes!24734))

(declare-fun b!838533 () Bool)

(declare-fun res!570293 () Bool)

(assert (=> b!838533 (=> (not res!570293) (not e!468074))))

(declare-datatypes ((List!16122 0))(
  ( (Nil!16119) (Cons!16118 (h!17249 (_ BitVec 64)) (t!22501 List!16122)) )
))
(declare-fun arrayNoDuplicates!0 (array!47098 (_ BitVec 32) List!16122) Bool)

(assert (=> b!838533 (= res!570293 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16119))))

(declare-fun b!838534 () Bool)

(assert (=> b!838534 (= e!468075 (and e!468077 mapRes!24734))))

(declare-fun condMapEmpty!24734 () Bool)

(declare-fun mapDefault!24734 () ValueCell!7272)

(assert (=> b!838534 (= condMapEmpty!24734 (= (arr!22577 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7272)) mapDefault!24734)))))

(declare-fun bm!36901 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2544 (array!47098 array!47100 (_ BitVec 32) (_ BitVec 32) V!25611 V!25611 (_ BitVec 32) Int) ListLongMap!9067)

(assert (=> bm!36901 (= call!36905 (getCurrentListMapNoExtraKeys!2544 _keys!868 (array!47101 (store (arr!22577 _values!688) i!612 (ValueCellFull!7272 v!557)) (size!23018 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!36902 () Bool)

(assert (=> bm!36902 (= call!36904 (getCurrentListMapNoExtraKeys!2544 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838535 () Bool)

(declare-fun res!570290 () Bool)

(assert (=> b!838535 (=> (not res!570290) (not e!468074))))

(assert (=> b!838535 (= res!570290 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23017 _keys!868))))))

(assert (= (and start!72400 res!570291) b!838528))

(assert (= (and b!838528 res!570287) b!838525))

(assert (= (and b!838525 res!570288) b!838530))

(assert (= (and b!838530 res!570289) b!838533))

(assert (= (and b!838533 res!570293) b!838535))

(assert (= (and b!838535 res!570290) b!838524))

(assert (= (and b!838524 res!570294) b!838527))

(assert (= (and b!838527 res!570292) b!838531))

(assert (= (and b!838531 c!91113) b!838523))

(assert (= (and b!838531 (not c!91113)) b!838526))

(assert (= (or b!838523 b!838526) bm!36901))

(assert (= (or b!838523 b!838526) bm!36902))

(assert (= (and b!838534 condMapEmpty!24734) mapIsEmpty!24734))

(assert (= (and b!838534 (not condMapEmpty!24734)) mapNonEmpty!24734))

(get-info :version)

(assert (= (and mapNonEmpty!24734 ((_ is ValueCellFull!7272) mapValue!24734)) b!838529))

(assert (= (and b!838534 ((_ is ValueCellFull!7272) mapDefault!24734)) b!838532))

(assert (= start!72400 b!838534))

(declare-fun m!782995 () Bool)

(assert (=> b!838524 m!782995))

(declare-fun m!782997 () Bool)

(assert (=> b!838527 m!782997))

(declare-fun m!782999 () Bool)

(assert (=> start!72400 m!782999))

(declare-fun m!783001 () Bool)

(assert (=> start!72400 m!783001))

(declare-fun m!783003 () Bool)

(assert (=> bm!36902 m!783003))

(declare-fun m!783005 () Bool)

(assert (=> b!838523 m!783005))

(declare-fun m!783007 () Bool)

(assert (=> bm!36901 m!783007))

(declare-fun m!783009 () Bool)

(assert (=> bm!36901 m!783009))

(declare-fun m!783011 () Bool)

(assert (=> b!838533 m!783011))

(declare-fun m!783013 () Bool)

(assert (=> mapNonEmpty!24734 m!783013))

(declare-fun m!783015 () Bool)

(assert (=> b!838530 m!783015))

(declare-fun m!783017 () Bool)

(assert (=> b!838528 m!783017))

(declare-fun m!783019 () Bool)

(assert (=> b!838531 m!783019))

(check-sat (not b!838523) (not bm!36902) (not bm!36901) (not b!838531) tp_is_empty!15423 (not b!838533) (not b!838524) (not start!72400) (not b!838530) (not b_next!13557) (not mapNonEmpty!24734) b_and!22661 (not b!838528))
(check-sat b_and!22661 (not b_next!13557))
