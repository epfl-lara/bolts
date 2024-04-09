; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72388 () Bool)

(assert start!72388)

(declare-fun b_free!13545 () Bool)

(declare-fun b_next!13545 () Bool)

(assert (=> start!72388 (= b_free!13545 (not b_next!13545))))

(declare-fun tp!47735 () Bool)

(declare-fun b_and!22649 () Bool)

(assert (=> start!72388 (= tp!47735 b_and!22649)))

(declare-fun b!838289 () Bool)

(declare-fun res!570145 () Bool)

(declare-fun e!467970 () Bool)

(assert (=> b!838289 (=> (not res!570145) (not e!467970))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!47074 0))(
  ( (array!47075 (arr!22564 (Array (_ BitVec 32) (_ BitVec 64))) (size!23005 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47074)

(declare-datatypes ((V!25595 0))(
  ( (V!25596 (val!7753 Int)) )
))
(declare-datatypes ((ValueCell!7266 0))(
  ( (ValueCellFull!7266 (v!10174 V!25595)) (EmptyCell!7266) )
))
(declare-datatypes ((array!47076 0))(
  ( (array!47077 (arr!22565 (Array (_ BitVec 32) ValueCell!7266)) (size!23006 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47076)

(assert (=> b!838289 (= res!570145 (and (= (size!23006 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23005 _keys!868) (size!23006 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun v!557 () V!25595)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!25595)

(declare-fun zeroValue!654 () V!25595)

(declare-fun bm!36865 () Bool)

(declare-datatypes ((tuple2!10274 0))(
  ( (tuple2!10275 (_1!5147 (_ BitVec 64)) (_2!5147 V!25595)) )
))
(declare-datatypes ((List!16112 0))(
  ( (Nil!16109) (Cons!16108 (h!17239 tuple2!10274) (t!22491 List!16112)) )
))
(declare-datatypes ((ListLongMap!9057 0))(
  ( (ListLongMap!9058 (toList!4544 List!16112)) )
))
(declare-fun call!36868 () ListLongMap!9057)

(declare-fun getCurrentListMapNoExtraKeys!2539 (array!47074 array!47076 (_ BitVec 32) (_ BitVec 32) V!25595 V!25595 (_ BitVec 32) Int) ListLongMap!9057)

(assert (=> bm!36865 (= call!36868 (getCurrentListMapNoExtraKeys!2539 _keys!868 (array!47077 (store (arr!22565 _values!688) i!612 (ValueCellFull!7266 v!557)) (size!23006 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838290 () Bool)

(declare-fun res!570147 () Bool)

(assert (=> b!838290 (=> (not res!570147) (not e!467970))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!838290 (= res!570147 (and (= (select (arr!22564 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23005 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!838291 () Bool)

(declare-fun e!467967 () Bool)

(declare-fun e!467968 () Bool)

(declare-fun mapRes!24716 () Bool)

(assert (=> b!838291 (= e!467967 (and e!467968 mapRes!24716))))

(declare-fun condMapEmpty!24716 () Bool)

(declare-fun mapDefault!24716 () ValueCell!7266)

(assert (=> b!838291 (= condMapEmpty!24716 (= (arr!22565 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7266)) mapDefault!24716)))))

(declare-fun b!838293 () Bool)

(declare-fun e!467965 () Bool)

(declare-fun tp_is_empty!15411 () Bool)

(assert (=> b!838293 (= e!467965 tp_is_empty!15411)))

(declare-fun mapNonEmpty!24716 () Bool)

(declare-fun tp!47734 () Bool)

(assert (=> mapNonEmpty!24716 (= mapRes!24716 (and tp!47734 e!467965))))

(declare-fun mapKey!24716 () (_ BitVec 32))

(declare-fun mapRest!24716 () (Array (_ BitVec 32) ValueCell!7266))

(declare-fun mapValue!24716 () ValueCell!7266)

(assert (=> mapNonEmpty!24716 (= (arr!22565 _values!688) (store mapRest!24716 mapKey!24716 mapValue!24716))))

(declare-fun b!838294 () Bool)

(declare-fun res!570144 () Bool)

(assert (=> b!838294 (=> (not res!570144) (not e!467970))))

(assert (=> b!838294 (= res!570144 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23005 _keys!868))))))

(declare-fun b!838295 () Bool)

(declare-fun e!467966 () Bool)

(declare-fun call!36869 () ListLongMap!9057)

(declare-fun +!1967 (ListLongMap!9057 tuple2!10274) ListLongMap!9057)

(assert (=> b!838295 (= e!467966 (= call!36868 (+!1967 call!36869 (tuple2!10275 k0!854 v!557))))))

(declare-fun b!838296 () Bool)

(declare-fun res!570149 () Bool)

(assert (=> b!838296 (=> (not res!570149) (not e!467970))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838296 (= res!570149 (validKeyInArray!0 k0!854))))

(declare-fun b!838297 () Bool)

(assert (=> b!838297 (= e!467966 (= call!36868 call!36869))))

(declare-fun b!838292 () Bool)

(declare-fun res!570143 () Bool)

(assert (=> b!838292 (=> (not res!570143) (not e!467970))))

(declare-datatypes ((List!16113 0))(
  ( (Nil!16110) (Cons!16109 (h!17240 (_ BitVec 64)) (t!22492 List!16113)) )
))
(declare-fun arrayNoDuplicates!0 (array!47074 (_ BitVec 32) List!16113) Bool)

(assert (=> b!838292 (= res!570143 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16110))))

(declare-fun res!570148 () Bool)

(assert (=> start!72388 (=> (not res!570148) (not e!467970))))

(assert (=> start!72388 (= res!570148 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23005 _keys!868))))))

(assert (=> start!72388 e!467970))

(assert (=> start!72388 tp_is_empty!15411))

(assert (=> start!72388 true))

(assert (=> start!72388 tp!47735))

(declare-fun array_inv!17950 (array!47074) Bool)

(assert (=> start!72388 (array_inv!17950 _keys!868)))

(declare-fun array_inv!17951 (array!47076) Bool)

(assert (=> start!72388 (and (array_inv!17951 _values!688) e!467967)))

(declare-fun b!838298 () Bool)

(assert (=> b!838298 (= e!467970 (not true))))

(assert (=> b!838298 e!467966))

(declare-fun c!91095 () Bool)

(assert (=> b!838298 (= c!91095 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28784 0))(
  ( (Unit!28785) )
))
(declare-fun lt!380628 () Unit!28784)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!241 (array!47074 array!47076 (_ BitVec 32) (_ BitVec 32) V!25595 V!25595 (_ BitVec 32) (_ BitVec 64) V!25595 (_ BitVec 32) Int) Unit!28784)

(assert (=> b!838298 (= lt!380628 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!241 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838299 () Bool)

(assert (=> b!838299 (= e!467968 tp_is_empty!15411)))

(declare-fun bm!36866 () Bool)

(assert (=> bm!36866 (= call!36869 (getCurrentListMapNoExtraKeys!2539 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838300 () Bool)

(declare-fun res!570146 () Bool)

(assert (=> b!838300 (=> (not res!570146) (not e!467970))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47074 (_ BitVec 32)) Bool)

(assert (=> b!838300 (= res!570146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!838301 () Bool)

(declare-fun res!570150 () Bool)

(assert (=> b!838301 (=> (not res!570150) (not e!467970))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!838301 (= res!570150 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!24716 () Bool)

(assert (=> mapIsEmpty!24716 mapRes!24716))

(assert (= (and start!72388 res!570148) b!838301))

(assert (= (and b!838301 res!570150) b!838289))

(assert (= (and b!838289 res!570145) b!838300))

(assert (= (and b!838300 res!570146) b!838292))

(assert (= (and b!838292 res!570143) b!838294))

(assert (= (and b!838294 res!570144) b!838296))

(assert (= (and b!838296 res!570149) b!838290))

(assert (= (and b!838290 res!570147) b!838298))

(assert (= (and b!838298 c!91095) b!838295))

(assert (= (and b!838298 (not c!91095)) b!838297))

(assert (= (or b!838295 b!838297) bm!36865))

(assert (= (or b!838295 b!838297) bm!36866))

(assert (= (and b!838291 condMapEmpty!24716) mapIsEmpty!24716))

(assert (= (and b!838291 (not condMapEmpty!24716)) mapNonEmpty!24716))

(get-info :version)

(assert (= (and mapNonEmpty!24716 ((_ is ValueCellFull!7266) mapValue!24716)) b!838293))

(assert (= (and b!838291 ((_ is ValueCellFull!7266) mapDefault!24716)) b!838299))

(assert (= start!72388 b!838291))

(declare-fun m!782839 () Bool)

(assert (=> b!838290 m!782839))

(declare-fun m!782841 () Bool)

(assert (=> b!838301 m!782841))

(declare-fun m!782843 () Bool)

(assert (=> b!838298 m!782843))

(declare-fun m!782845 () Bool)

(assert (=> b!838300 m!782845))

(declare-fun m!782847 () Bool)

(assert (=> mapNonEmpty!24716 m!782847))

(declare-fun m!782849 () Bool)

(assert (=> start!72388 m!782849))

(declare-fun m!782851 () Bool)

(assert (=> start!72388 m!782851))

(declare-fun m!782853 () Bool)

(assert (=> b!838292 m!782853))

(declare-fun m!782855 () Bool)

(assert (=> b!838295 m!782855))

(declare-fun m!782857 () Bool)

(assert (=> bm!36865 m!782857))

(declare-fun m!782859 () Bool)

(assert (=> bm!36865 m!782859))

(declare-fun m!782861 () Bool)

(assert (=> bm!36866 m!782861))

(declare-fun m!782863 () Bool)

(assert (=> b!838296 m!782863))

(check-sat (not b!838300) tp_is_empty!15411 (not b!838295) (not mapNonEmpty!24716) b_and!22649 (not bm!36865) (not b!838298) (not b_next!13545) (not b!838292) (not bm!36866) (not start!72388) (not b!838301) (not b!838296))
(check-sat b_and!22649 (not b_next!13545))
