; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73000 () Bool)

(assert start!73000)

(declare-fun b_free!13887 () Bool)

(declare-fun b_next!13887 () Bool)

(assert (=> start!73000 (= b_free!13887 (not b_next!13887))))

(declare-fun tp!49165 () Bool)

(declare-fun b_and!22991 () Bool)

(assert (=> start!73000 (= tp!49165 b_and!22991)))

(declare-fun b!847438 () Bool)

(declare-datatypes ((V!26411 0))(
  ( (V!26412 (val!8059 Int)) )
))
(declare-datatypes ((tuple2!10542 0))(
  ( (tuple2!10543 (_1!5281 (_ BitVec 64)) (_2!5281 V!26411)) )
))
(declare-datatypes ((List!16455 0))(
  ( (Nil!16452) (Cons!16451 (h!17582 tuple2!10542) (t!22834 List!16455)) )
))
(declare-datatypes ((ListLongMap!9325 0))(
  ( (ListLongMap!9326 (toList!4678 List!16455)) )
))
(declare-fun call!37517 () ListLongMap!9325)

(declare-fun v!557 () V!26411)

(declare-fun e!472907 () Bool)

(declare-fun call!37516 () ListLongMap!9325)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2036 (ListLongMap!9325 tuple2!10542) ListLongMap!9325)

(assert (=> b!847438 (= e!472907 (= call!37517 (+!2036 call!37516 (tuple2!10543 k0!854 v!557))))))

(declare-fun b!847439 () Bool)

(declare-fun res!575896 () Bool)

(declare-fun e!472906 () Bool)

(assert (=> b!847439 (=> (not res!575896) (not e!472906))))

(declare-datatypes ((array!48240 0))(
  ( (array!48241 (arr!23147 (Array (_ BitVec 32) (_ BitVec 64))) (size!23588 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48240)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48240 (_ BitVec 32)) Bool)

(assert (=> b!847439 (= res!575896 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25634 () Bool)

(declare-fun mapRes!25634 () Bool)

(declare-fun tp!49166 () Bool)

(declare-fun e!472902 () Bool)

(assert (=> mapNonEmpty!25634 (= mapRes!25634 (and tp!49166 e!472902))))

(declare-datatypes ((ValueCell!7572 0))(
  ( (ValueCellFull!7572 (v!10480 V!26411)) (EmptyCell!7572) )
))
(declare-fun mapRest!25634 () (Array (_ BitVec 32) ValueCell!7572))

(declare-fun mapKey!25634 () (_ BitVec 32))

(declare-datatypes ((array!48242 0))(
  ( (array!48243 (arr!23148 (Array (_ BitVec 32) ValueCell!7572)) (size!23589 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48242)

(declare-fun mapValue!25634 () ValueCell!7572)

(assert (=> mapNonEmpty!25634 (= (arr!23148 _values!688) (store mapRest!25634 mapKey!25634 mapValue!25634))))

(declare-fun b!847440 () Bool)

(declare-fun res!575895 () Bool)

(assert (=> b!847440 (=> (not res!575895) (not e!472906))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!847440 (= res!575895 (validKeyInArray!0 k0!854))))

(declare-fun b!847441 () Bool)

(declare-fun e!472905 () Bool)

(assert (=> b!847441 (= e!472906 e!472905)))

(declare-fun res!575893 () Bool)

(assert (=> b!847441 (=> (not res!575893) (not e!472905))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!847441 (= res!575893 (= from!1053 i!612))))

(declare-fun lt!381724 () ListLongMap!9325)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!26411)

(declare-fun zeroValue!654 () V!26411)

(declare-fun lt!381725 () array!48242)

(declare-fun getCurrentListMapNoExtraKeys!2667 (array!48240 array!48242 (_ BitVec 32) (_ BitVec 32) V!26411 V!26411 (_ BitVec 32) Int) ListLongMap!9325)

(assert (=> b!847441 (= lt!381724 (getCurrentListMapNoExtraKeys!2667 _keys!868 lt!381725 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!847441 (= lt!381725 (array!48243 (store (arr!23148 _values!688) i!612 (ValueCellFull!7572 v!557)) (size!23589 _values!688)))))

(declare-fun lt!381726 () ListLongMap!9325)

(assert (=> b!847441 (= lt!381726 (getCurrentListMapNoExtraKeys!2667 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun bm!37513 () Bool)

(assert (=> bm!37513 (= call!37516 (getCurrentListMapNoExtraKeys!2667 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!575890 () Bool)

(assert (=> start!73000 (=> (not res!575890) (not e!472906))))

(assert (=> start!73000 (= res!575890 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23588 _keys!868))))))

(assert (=> start!73000 e!472906))

(declare-fun tp_is_empty!16023 () Bool)

(assert (=> start!73000 tp_is_empty!16023))

(assert (=> start!73000 true))

(assert (=> start!73000 tp!49165))

(declare-fun array_inv!18366 (array!48240) Bool)

(assert (=> start!73000 (array_inv!18366 _keys!868)))

(declare-fun e!472908 () Bool)

(declare-fun array_inv!18367 (array!48242) Bool)

(assert (=> start!73000 (and (array_inv!18367 _values!688) e!472908)))

(declare-fun b!847442 () Bool)

(declare-fun res!575897 () Bool)

(assert (=> b!847442 (=> (not res!575897) (not e!472906))))

(assert (=> b!847442 (= res!575897 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23588 _keys!868))))))

(declare-fun bm!37514 () Bool)

(assert (=> bm!37514 (= call!37517 (getCurrentListMapNoExtraKeys!2667 _keys!868 lt!381725 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!847443 () Bool)

(declare-fun res!575894 () Bool)

(assert (=> b!847443 (=> (not res!575894) (not e!472906))))

(declare-datatypes ((List!16456 0))(
  ( (Nil!16453) (Cons!16452 (h!17583 (_ BitVec 64)) (t!22835 List!16456)) )
))
(declare-fun arrayNoDuplicates!0 (array!48240 (_ BitVec 32) List!16456) Bool)

(assert (=> b!847443 (= res!575894 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16453))))

(declare-fun b!847444 () Bool)

(assert (=> b!847444 (= e!472907 (= call!37517 call!37516))))

(declare-fun b!847445 () Bool)

(declare-fun res!575891 () Bool)

(assert (=> b!847445 (=> (not res!575891) (not e!472906))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!847445 (= res!575891 (validMask!0 mask!1196))))

(declare-fun b!847446 () Bool)

(declare-fun res!575898 () Bool)

(assert (=> b!847446 (=> (not res!575898) (not e!472906))))

(assert (=> b!847446 (= res!575898 (and (= (select (arr!23147 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!847447 () Bool)

(declare-fun e!472904 () Bool)

(assert (=> b!847447 (= e!472904 tp_is_empty!16023)))

(declare-fun b!847448 () Bool)

(declare-fun res!575892 () Bool)

(assert (=> b!847448 (=> (not res!575892) (not e!472906))))

(assert (=> b!847448 (= res!575892 (and (= (size!23589 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23588 _keys!868) (size!23589 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!25634 () Bool)

(assert (=> mapIsEmpty!25634 mapRes!25634))

(declare-fun b!847449 () Bool)

(assert (=> b!847449 (= e!472908 (and e!472904 mapRes!25634))))

(declare-fun condMapEmpty!25634 () Bool)

(declare-fun mapDefault!25634 () ValueCell!7572)

(assert (=> b!847449 (= condMapEmpty!25634 (= (arr!23148 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7572)) mapDefault!25634)))))

(declare-fun b!847450 () Bool)

(assert (=> b!847450 (= e!472902 tp_is_empty!16023)))

(declare-fun b!847451 () Bool)

(assert (=> b!847451 (= e!472905 (not true))))

(assert (=> b!847451 e!472907))

(declare-fun c!91419 () Bool)

(assert (=> b!847451 (= c!91419 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28928 0))(
  ( (Unit!28929) )
))
(declare-fun lt!381723 () Unit!28928)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!313 (array!48240 array!48242 (_ BitVec 32) (_ BitVec 32) V!26411 V!26411 (_ BitVec 32) (_ BitVec 64) V!26411 (_ BitVec 32) Int) Unit!28928)

(assert (=> b!847451 (= lt!381723 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!313 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73000 res!575890) b!847445))

(assert (= (and b!847445 res!575891) b!847448))

(assert (= (and b!847448 res!575892) b!847439))

(assert (= (and b!847439 res!575896) b!847443))

(assert (= (and b!847443 res!575894) b!847442))

(assert (= (and b!847442 res!575897) b!847440))

(assert (= (and b!847440 res!575895) b!847446))

(assert (= (and b!847446 res!575898) b!847441))

(assert (= (and b!847441 res!575893) b!847451))

(assert (= (and b!847451 c!91419) b!847438))

(assert (= (and b!847451 (not c!91419)) b!847444))

(assert (= (or b!847438 b!847444) bm!37513))

(assert (= (or b!847438 b!847444) bm!37514))

(assert (= (and b!847449 condMapEmpty!25634) mapIsEmpty!25634))

(assert (= (and b!847449 (not condMapEmpty!25634)) mapNonEmpty!25634))

(get-info :version)

(assert (= (and mapNonEmpty!25634 ((_ is ValueCellFull!7572) mapValue!25634)) b!847450))

(assert (= (and b!847449 ((_ is ValueCellFull!7572) mapDefault!25634)) b!847447))

(assert (= start!73000 b!847449))

(declare-fun m!788573 () Bool)

(assert (=> b!847441 m!788573))

(declare-fun m!788575 () Bool)

(assert (=> b!847441 m!788575))

(declare-fun m!788577 () Bool)

(assert (=> b!847441 m!788577))

(declare-fun m!788579 () Bool)

(assert (=> bm!37513 m!788579))

(declare-fun m!788581 () Bool)

(assert (=> b!847443 m!788581))

(declare-fun m!788583 () Bool)

(assert (=> mapNonEmpty!25634 m!788583))

(declare-fun m!788585 () Bool)

(assert (=> start!73000 m!788585))

(declare-fun m!788587 () Bool)

(assert (=> start!73000 m!788587))

(declare-fun m!788589 () Bool)

(assert (=> b!847440 m!788589))

(declare-fun m!788591 () Bool)

(assert (=> b!847438 m!788591))

(declare-fun m!788593 () Bool)

(assert (=> b!847445 m!788593))

(declare-fun m!788595 () Bool)

(assert (=> b!847439 m!788595))

(declare-fun m!788597 () Bool)

(assert (=> bm!37514 m!788597))

(declare-fun m!788599 () Bool)

(assert (=> b!847446 m!788599))

(declare-fun m!788601 () Bool)

(assert (=> b!847451 m!788601))

(check-sat (not b!847445) (not start!73000) (not b!847441) (not bm!37513) b_and!22991 tp_is_empty!16023 (not b_next!13887) (not b!847439) (not b!847451) (not b!847443) (not bm!37514) (not b!847440) (not mapNonEmpty!25634) (not b!847438))
(check-sat b_and!22991 (not b_next!13887))
