; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72412 () Bool)

(assert start!72412)

(declare-fun b_free!13569 () Bool)

(declare-fun b_next!13569 () Bool)

(assert (=> start!72412 (= b_free!13569 (not b_next!13569))))

(declare-fun tp!47807 () Bool)

(declare-fun b_and!22673 () Bool)

(assert (=> start!72412 (= tp!47807 b_and!22673)))

(declare-fun b!838757 () Bool)

(declare-fun e!468184 () Bool)

(declare-fun e!468185 () Bool)

(declare-fun mapRes!24752 () Bool)

(assert (=> b!838757 (= e!468184 (and e!468185 mapRes!24752))))

(declare-fun condMapEmpty!24752 () Bool)

(declare-datatypes ((V!25627 0))(
  ( (V!25628 (val!7765 Int)) )
))
(declare-datatypes ((ValueCell!7278 0))(
  ( (ValueCellFull!7278 (v!10186 V!25627)) (EmptyCell!7278) )
))
(declare-datatypes ((array!47122 0))(
  ( (array!47123 (arr!22588 (Array (_ BitVec 32) ValueCell!7278)) (size!23029 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47122)

(declare-fun mapDefault!24752 () ValueCell!7278)

(assert (=> b!838757 (= condMapEmpty!24752 (= (arr!22588 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7278)) mapDefault!24752)))))

(declare-fun b!838758 () Bool)

(declare-fun tp_is_empty!15435 () Bool)

(assert (=> b!838758 (= e!468185 tp_is_empty!15435)))

(declare-fun mapIsEmpty!24752 () Bool)

(assert (=> mapIsEmpty!24752 mapRes!24752))

(declare-fun b!838759 () Bool)

(declare-fun res!570438 () Bool)

(declare-fun e!468182 () Bool)

(assert (=> b!838759 (=> (not res!570438) (not e!468182))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!47124 0))(
  ( (array!47125 (arr!22589 (Array (_ BitVec 32) (_ BitVec 64))) (size!23030 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47124)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!838759 (= res!570438 (and (= (select (arr!22589 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23030 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!36937 () Bool)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!10292 0))(
  ( (tuple2!10293 (_1!5156 (_ BitVec 64)) (_2!5156 V!25627)) )
))
(declare-datatypes ((List!16128 0))(
  ( (Nil!16125) (Cons!16124 (h!17255 tuple2!10292) (t!22507 List!16128)) )
))
(declare-datatypes ((ListLongMap!9075 0))(
  ( (ListLongMap!9076 (toList!4553 List!16128)) )
))
(declare-fun call!36941 () ListLongMap!9075)

(declare-fun minValue!654 () V!25627)

(declare-fun zeroValue!654 () V!25627)

(declare-fun getCurrentListMapNoExtraKeys!2548 (array!47124 array!47122 (_ BitVec 32) (_ BitVec 32) V!25627 V!25627 (_ BitVec 32) Int) ListLongMap!9075)

(assert (=> bm!36937 (= call!36941 (getCurrentListMapNoExtraKeys!2548 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!36940 () ListLongMap!9075)

(declare-fun v!557 () V!25627)

(declare-fun bm!36938 () Bool)

(assert (=> bm!36938 (= call!36940 (getCurrentListMapNoExtraKeys!2548 _keys!868 (array!47123 (store (arr!22588 _values!688) i!612 (ValueCellFull!7278 v!557)) (size!23029 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838760 () Bool)

(declare-fun res!570435 () Bool)

(assert (=> b!838760 (=> (not res!570435) (not e!468182))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!838760 (= res!570435 (validMask!0 mask!1196))))

(declare-fun mapNonEmpty!24752 () Bool)

(declare-fun tp!47806 () Bool)

(declare-fun e!468181 () Bool)

(assert (=> mapNonEmpty!24752 (= mapRes!24752 (and tp!47806 e!468181))))

(declare-fun mapValue!24752 () ValueCell!7278)

(declare-fun mapRest!24752 () (Array (_ BitVec 32) ValueCell!7278))

(declare-fun mapKey!24752 () (_ BitVec 32))

(assert (=> mapNonEmpty!24752 (= (arr!22588 _values!688) (store mapRest!24752 mapKey!24752 mapValue!24752))))

(declare-fun b!838761 () Bool)

(assert (=> b!838761 (= e!468181 tp_is_empty!15435)))

(declare-fun b!838762 () Bool)

(declare-fun res!570436 () Bool)

(assert (=> b!838762 (=> (not res!570436) (not e!468182))))

(assert (=> b!838762 (= res!570436 (and (= (size!23029 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23030 _keys!868) (size!23029 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!838763 () Bool)

(assert (=> b!838763 (= e!468182 (not true))))

(declare-fun e!468183 () Bool)

(assert (=> b!838763 e!468183))

(declare-fun c!91131 () Bool)

(assert (=> b!838763 (= c!91131 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28800 0))(
  ( (Unit!28801) )
))
(declare-fun lt!380664 () Unit!28800)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!249 (array!47124 array!47122 (_ BitVec 32) (_ BitVec 32) V!25627 V!25627 (_ BitVec 32) (_ BitVec 64) V!25627 (_ BitVec 32) Int) Unit!28800)

(assert (=> b!838763 (= lt!380664 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!249 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838764 () Bool)

(declare-fun +!1974 (ListLongMap!9075 tuple2!10292) ListLongMap!9075)

(assert (=> b!838764 (= e!468183 (= call!36940 (+!1974 call!36941 (tuple2!10293 k0!854 v!557))))))

(declare-fun b!838765 () Bool)

(declare-fun res!570434 () Bool)

(assert (=> b!838765 (=> (not res!570434) (not e!468182))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838765 (= res!570434 (validKeyInArray!0 k0!854))))

(declare-fun b!838766 () Bool)

(declare-fun res!570431 () Bool)

(assert (=> b!838766 (=> (not res!570431) (not e!468182))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47124 (_ BitVec 32)) Bool)

(assert (=> b!838766 (= res!570431 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!838767 () Bool)

(declare-fun res!570437 () Bool)

(assert (=> b!838767 (=> (not res!570437) (not e!468182))))

(declare-datatypes ((List!16129 0))(
  ( (Nil!16126) (Cons!16125 (h!17256 (_ BitVec 64)) (t!22508 List!16129)) )
))
(declare-fun arrayNoDuplicates!0 (array!47124 (_ BitVec 32) List!16129) Bool)

(assert (=> b!838767 (= res!570437 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16126))))

(declare-fun res!570432 () Bool)

(assert (=> start!72412 (=> (not res!570432) (not e!468182))))

(assert (=> start!72412 (= res!570432 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23030 _keys!868))))))

(assert (=> start!72412 e!468182))

(assert (=> start!72412 tp_is_empty!15435))

(assert (=> start!72412 true))

(assert (=> start!72412 tp!47807))

(declare-fun array_inv!17968 (array!47124) Bool)

(assert (=> start!72412 (array_inv!17968 _keys!868)))

(declare-fun array_inv!17969 (array!47122) Bool)

(assert (=> start!72412 (and (array_inv!17969 _values!688) e!468184)))

(declare-fun b!838768 () Bool)

(declare-fun res!570433 () Bool)

(assert (=> b!838768 (=> (not res!570433) (not e!468182))))

(assert (=> b!838768 (= res!570433 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23030 _keys!868))))))

(declare-fun b!838769 () Bool)

(assert (=> b!838769 (= e!468183 (= call!36940 call!36941))))

(assert (= (and start!72412 res!570432) b!838760))

(assert (= (and b!838760 res!570435) b!838762))

(assert (= (and b!838762 res!570436) b!838766))

(assert (= (and b!838766 res!570431) b!838767))

(assert (= (and b!838767 res!570437) b!838768))

(assert (= (and b!838768 res!570433) b!838765))

(assert (= (and b!838765 res!570434) b!838759))

(assert (= (and b!838759 res!570438) b!838763))

(assert (= (and b!838763 c!91131) b!838764))

(assert (= (and b!838763 (not c!91131)) b!838769))

(assert (= (or b!838764 b!838769) bm!36938))

(assert (= (or b!838764 b!838769) bm!36937))

(assert (= (and b!838757 condMapEmpty!24752) mapIsEmpty!24752))

(assert (= (and b!838757 (not condMapEmpty!24752)) mapNonEmpty!24752))

(get-info :version)

(assert (= (and mapNonEmpty!24752 ((_ is ValueCellFull!7278) mapValue!24752)) b!838761))

(assert (= (and b!838757 ((_ is ValueCellFull!7278) mapDefault!24752)) b!838758))

(assert (= start!72412 b!838757))

(declare-fun m!783151 () Bool)

(assert (=> b!838763 m!783151))

(declare-fun m!783153 () Bool)

(assert (=> b!838759 m!783153))

(declare-fun m!783155 () Bool)

(assert (=> bm!36937 m!783155))

(declare-fun m!783157 () Bool)

(assert (=> b!838766 m!783157))

(declare-fun m!783159 () Bool)

(assert (=> mapNonEmpty!24752 m!783159))

(declare-fun m!783161 () Bool)

(assert (=> b!838765 m!783161))

(declare-fun m!783163 () Bool)

(assert (=> b!838760 m!783163))

(declare-fun m!783165 () Bool)

(assert (=> bm!36938 m!783165))

(declare-fun m!783167 () Bool)

(assert (=> bm!36938 m!783167))

(declare-fun m!783169 () Bool)

(assert (=> b!838764 m!783169))

(declare-fun m!783171 () Bool)

(assert (=> start!72412 m!783171))

(declare-fun m!783173 () Bool)

(assert (=> start!72412 m!783173))

(declare-fun m!783175 () Bool)

(assert (=> b!838767 m!783175))

(check-sat (not b!838763) (not b!838767) (not b!838766) (not b_next!13569) tp_is_empty!15435 (not b!838764) (not bm!36938) (not bm!36937) b_and!22673 (not b!838760) (not start!72412) (not mapNonEmpty!24752) (not b!838765))
(check-sat b_and!22673 (not b_next!13569))
