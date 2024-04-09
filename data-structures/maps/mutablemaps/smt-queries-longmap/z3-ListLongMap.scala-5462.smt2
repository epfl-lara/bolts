; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72586 () Bool)

(assert start!72586)

(declare-fun b_free!13743 () Bool)

(declare-fun b_next!13743 () Bool)

(assert (=> start!72586 (= b_free!13743 (not b_next!13743))))

(declare-fun tp!48328 () Bool)

(declare-fun b_and!22847 () Bool)

(assert (=> start!72586 (= tp!48328 b_and!22847)))

(declare-fun e!469751 () Bool)

(declare-datatypes ((V!25859 0))(
  ( (V!25860 (val!7852 Int)) )
))
(declare-fun v!557 () V!25859)

(declare-datatypes ((tuple2!10446 0))(
  ( (tuple2!10447 (_1!5233 (_ BitVec 64)) (_2!5233 V!25859)) )
))
(declare-datatypes ((List!16267 0))(
  ( (Nil!16264) (Cons!16263 (h!17394 tuple2!10446) (t!22646 List!16267)) )
))
(declare-datatypes ((ListLongMap!9229 0))(
  ( (ListLongMap!9230 (toList!4630 List!16267)) )
))
(declare-fun call!37463 () ListLongMap!9229)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun call!37462 () ListLongMap!9229)

(declare-fun b!842150 () Bool)

(declare-fun +!2030 (ListLongMap!9229 tuple2!10446) ListLongMap!9229)

(assert (=> b!842150 (= e!469751 (= call!37462 (+!2030 call!37463 (tuple2!10447 k0!854 v!557))))))

(declare-fun b!842151 () Bool)

(declare-fun res!572522 () Bool)

(declare-fun e!469752 () Bool)

(assert (=> b!842151 (=> (not res!572522) (not e!469752))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!842151 (= res!572522 (validMask!0 mask!1196))))

(declare-fun b!842152 () Bool)

(declare-fun res!572526 () Bool)

(assert (=> b!842152 (=> (not res!572526) (not e!469752))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!47460 0))(
  ( (array!47461 (arr!22757 (Array (_ BitVec 32) (_ BitVec 64))) (size!23198 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47460)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!842152 (= res!572526 (and (= (select (arr!22757 _keys!868) i!612) k0!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23198 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun b!842153 () Bool)

(declare-fun res!572521 () Bool)

(assert (=> b!842153 (=> (not res!572521) (not e!469752))))

(declare-datatypes ((List!16268 0))(
  ( (Nil!16265) (Cons!16264 (h!17395 (_ BitVec 64)) (t!22647 List!16268)) )
))
(declare-fun arrayNoDuplicates!0 (array!47460 (_ BitVec 32) List!16268) Bool)

(assert (=> b!842153 (= res!572521 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16265))))

(declare-fun b!842155 () Bool)

(assert (=> b!842155 (= e!469752 (not true))))

(assert (=> b!842155 e!469751))

(declare-fun c!91392 () Bool)

(assert (=> b!842155 (= c!91392 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28914 0))(
  ( (Unit!28915) )
))
(declare-fun lt!380925 () Unit!28914)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7365 0))(
  ( (ValueCellFull!7365 (v!10273 V!25859)) (EmptyCell!7365) )
))
(declare-datatypes ((array!47462 0))(
  ( (array!47463 (arr!22758 (Array (_ BitVec 32) ValueCell!7365)) (size!23199 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47462)

(declare-fun minValue!654 () V!25859)

(declare-fun zeroValue!654 () V!25859)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!306 (array!47460 array!47462 (_ BitVec 32) (_ BitVec 32) V!25859 V!25859 (_ BitVec 32) (_ BitVec 64) V!25859 (_ BitVec 32) Int) Unit!28914)

(assert (=> b!842155 (= lt!380925 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!306 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!842156 () Bool)

(declare-fun res!572525 () Bool)

(assert (=> b!842156 (=> (not res!572525) (not e!469752))))

(assert (=> b!842156 (= res!572525 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23198 _keys!868))))))

(declare-fun b!842157 () Bool)

(declare-fun e!469747 () Bool)

(declare-fun e!469748 () Bool)

(declare-fun mapRes!25013 () Bool)

(assert (=> b!842157 (= e!469747 (and e!469748 mapRes!25013))))

(declare-fun condMapEmpty!25013 () Bool)

(declare-fun mapDefault!25013 () ValueCell!7365)

(assert (=> b!842157 (= condMapEmpty!25013 (= (arr!22758 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7365)) mapDefault!25013)))))

(declare-fun b!842158 () Bool)

(declare-fun res!572524 () Bool)

(assert (=> b!842158 (=> (not res!572524) (not e!469752))))

(assert (=> b!842158 (= res!572524 (and (= (size!23199 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23198 _keys!868) (size!23199 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!37459 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!2619 (array!47460 array!47462 (_ BitVec 32) (_ BitVec 32) V!25859 V!25859 (_ BitVec 32) Int) ListLongMap!9229)

(assert (=> bm!37459 (= call!37463 (getCurrentListMapNoExtraKeys!2619 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!37460 () Bool)

(assert (=> bm!37460 (= call!37462 (getCurrentListMapNoExtraKeys!2619 _keys!868 (array!47463 (store (arr!22758 _values!688) i!612 (ValueCellFull!7365 v!557)) (size!23199 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!842159 () Bool)

(declare-fun res!572520 () Bool)

(assert (=> b!842159 (=> (not res!572520) (not e!469752))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47460 (_ BitVec 32)) Bool)

(assert (=> b!842159 (= res!572520 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25013 () Bool)

(declare-fun tp!48329 () Bool)

(declare-fun e!469750 () Bool)

(assert (=> mapNonEmpty!25013 (= mapRes!25013 (and tp!48329 e!469750))))

(declare-fun mapKey!25013 () (_ BitVec 32))

(declare-fun mapRest!25013 () (Array (_ BitVec 32) ValueCell!7365))

(declare-fun mapValue!25013 () ValueCell!7365)

(assert (=> mapNonEmpty!25013 (= (arr!22758 _values!688) (store mapRest!25013 mapKey!25013 mapValue!25013))))

(declare-fun mapIsEmpty!25013 () Bool)

(assert (=> mapIsEmpty!25013 mapRes!25013))

(declare-fun b!842160 () Bool)

(declare-fun tp_is_empty!15609 () Bool)

(assert (=> b!842160 (= e!469748 tp_is_empty!15609)))

(declare-fun res!572523 () Bool)

(assert (=> start!72586 (=> (not res!572523) (not e!469752))))

(assert (=> start!72586 (= res!572523 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23198 _keys!868))))))

(assert (=> start!72586 e!469752))

(assert (=> start!72586 tp_is_empty!15609))

(assert (=> start!72586 true))

(assert (=> start!72586 tp!48328))

(declare-fun array_inv!18088 (array!47460) Bool)

(assert (=> start!72586 (array_inv!18088 _keys!868)))

(declare-fun array_inv!18089 (array!47462) Bool)

(assert (=> start!72586 (and (array_inv!18089 _values!688) e!469747)))

(declare-fun b!842154 () Bool)

(declare-fun res!572519 () Bool)

(assert (=> b!842154 (=> (not res!572519) (not e!469752))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!842154 (= res!572519 (validKeyInArray!0 k0!854))))

(declare-fun b!842161 () Bool)

(assert (=> b!842161 (= e!469750 tp_is_empty!15609)))

(declare-fun b!842162 () Bool)

(assert (=> b!842162 (= e!469751 (= call!37462 call!37463))))

(assert (= (and start!72586 res!572523) b!842151))

(assert (= (and b!842151 res!572522) b!842158))

(assert (= (and b!842158 res!572524) b!842159))

(assert (= (and b!842159 res!572520) b!842153))

(assert (= (and b!842153 res!572521) b!842156))

(assert (= (and b!842156 res!572525) b!842154))

(assert (= (and b!842154 res!572519) b!842152))

(assert (= (and b!842152 res!572526) b!842155))

(assert (= (and b!842155 c!91392) b!842150))

(assert (= (and b!842155 (not c!91392)) b!842162))

(assert (= (or b!842150 b!842162) bm!37460))

(assert (= (or b!842150 b!842162) bm!37459))

(assert (= (and b!842157 condMapEmpty!25013) mapIsEmpty!25013))

(assert (= (and b!842157 (not condMapEmpty!25013)) mapNonEmpty!25013))

(get-info :version)

(assert (= (and mapNonEmpty!25013 ((_ is ValueCellFull!7365) mapValue!25013)) b!842161))

(assert (= (and b!842157 ((_ is ValueCellFull!7365) mapDefault!25013)) b!842160))

(assert (= start!72586 b!842157))

(declare-fun m!785413 () Bool)

(assert (=> b!842153 m!785413))

(declare-fun m!785415 () Bool)

(assert (=> bm!37459 m!785415))

(declare-fun m!785417 () Bool)

(assert (=> b!842151 m!785417))

(declare-fun m!785419 () Bool)

(assert (=> mapNonEmpty!25013 m!785419))

(declare-fun m!785421 () Bool)

(assert (=> start!72586 m!785421))

(declare-fun m!785423 () Bool)

(assert (=> start!72586 m!785423))

(declare-fun m!785425 () Bool)

(assert (=> b!842152 m!785425))

(declare-fun m!785427 () Bool)

(assert (=> bm!37460 m!785427))

(declare-fun m!785429 () Bool)

(assert (=> bm!37460 m!785429))

(declare-fun m!785431 () Bool)

(assert (=> b!842150 m!785431))

(declare-fun m!785433 () Bool)

(assert (=> b!842159 m!785433))

(declare-fun m!785435 () Bool)

(assert (=> b!842154 m!785435))

(declare-fun m!785437 () Bool)

(assert (=> b!842155 m!785437))

(check-sat (not bm!37460) (not b!842154) (not b_next!13743) (not mapNonEmpty!25013) (not b!842150) (not start!72586) (not bm!37459) (not b!842155) (not b!842151) tp_is_empty!15609 b_and!22847 (not b!842159) (not b!842153))
(check-sat b_and!22847 (not b_next!13743))
