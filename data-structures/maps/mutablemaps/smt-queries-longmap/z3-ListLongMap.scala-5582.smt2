; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73306 () Bool)

(assert start!73306)

(declare-fun b_free!14193 () Bool)

(declare-fun b_next!14193 () Bool)

(assert (=> start!73306 (= b_free!14193 (not b_next!14193))))

(declare-fun tp!50084 () Bool)

(declare-fun b_and!23563 () Bool)

(assert (=> start!73306 (= tp!50084 b_and!23563)))

(declare-fun b!854540 () Bool)

(declare-fun e!476531 () Bool)

(declare-fun e!476527 () Bool)

(declare-fun mapRes!26093 () Bool)

(assert (=> b!854540 (= e!476531 (and e!476527 mapRes!26093))))

(declare-fun condMapEmpty!26093 () Bool)

(declare-datatypes ((V!26819 0))(
  ( (V!26820 (val!8212 Int)) )
))
(declare-datatypes ((ValueCell!7725 0))(
  ( (ValueCellFull!7725 (v!10633 V!26819)) (EmptyCell!7725) )
))
(declare-datatypes ((array!48838 0))(
  ( (array!48839 (arr!23446 (Array (_ BitVec 32) ValueCell!7725)) (size!23887 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48838)

(declare-fun mapDefault!26093 () ValueCell!7725)

(assert (=> b!854540 (= condMapEmpty!26093 (= (arr!23446 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7725)) mapDefault!26093)))))

(declare-fun res!580439 () Bool)

(declare-fun e!476525 () Bool)

(assert (=> start!73306 (=> (not res!580439) (not e!476525))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48840 0))(
  ( (array!48841 (arr!23447 (Array (_ BitVec 32) (_ BitVec 64))) (size!23888 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48840)

(assert (=> start!73306 (= res!580439 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23888 _keys!868))))))

(assert (=> start!73306 e!476525))

(declare-fun tp_is_empty!16329 () Bool)

(assert (=> start!73306 tp_is_empty!16329))

(assert (=> start!73306 true))

(assert (=> start!73306 tp!50084))

(declare-fun array_inv!18564 (array!48840) Bool)

(assert (=> start!73306 (array_inv!18564 _keys!868)))

(declare-fun array_inv!18565 (array!48838) Bool)

(assert (=> start!73306 (and (array_inv!18565 _values!688) e!476531)))

(declare-fun b!854541 () Bool)

(declare-fun e!476526 () Bool)

(assert (=> b!854541 (= e!476526 true)))

(declare-fun lt!385480 () V!26819)

(declare-datatypes ((tuple2!10814 0))(
  ( (tuple2!10815 (_1!5417 (_ BitVec 64)) (_2!5417 V!26819)) )
))
(declare-datatypes ((List!16686 0))(
  ( (Nil!16683) (Cons!16682 (h!17813 tuple2!10814) (t!23333 List!16686)) )
))
(declare-datatypes ((ListLongMap!9597 0))(
  ( (ListLongMap!9598 (toList!4814 List!16686)) )
))
(declare-fun lt!385487 () ListLongMap!9597)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lt!385486 () tuple2!10814)

(declare-fun +!2149 (ListLongMap!9597 tuple2!10814) ListLongMap!9597)

(assert (=> b!854541 (= (+!2149 lt!385487 lt!385486) (+!2149 (+!2149 lt!385487 (tuple2!10815 k0!854 lt!385480)) lt!385486))))

(declare-fun lt!385485 () V!26819)

(assert (=> b!854541 (= lt!385486 (tuple2!10815 k0!854 lt!385485))))

(declare-datatypes ((Unit!29140 0))(
  ( (Unit!29141) )
))
(declare-fun lt!385483 () Unit!29140)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!325 (ListLongMap!9597 (_ BitVec 64) V!26819 V!26819) Unit!29140)

(assert (=> b!854541 (= lt!385483 (addSameAsAddTwiceSameKeyDiffValues!325 lt!385487 k0!854 lt!385480 lt!385485))))

(declare-fun lt!385482 () V!26819)

(declare-fun get!12387 (ValueCell!7725 V!26819) V!26819)

(assert (=> b!854541 (= lt!385480 (get!12387 (select (arr!23446 _values!688) from!1053) lt!385482))))

(declare-fun lt!385479 () ListLongMap!9597)

(assert (=> b!854541 (= lt!385479 (+!2149 lt!385487 (tuple2!10815 (select (arr!23447 _keys!868) from!1053) lt!385485)))))

(declare-fun v!557 () V!26819)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!854541 (= lt!385485 (get!12387 (select (store (arr!23446 _values!688) i!612 (ValueCellFull!7725 v!557)) from!1053) lt!385482))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1073 (Int (_ BitVec 64)) V!26819)

(assert (=> b!854541 (= lt!385482 (dynLambda!1073 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!385484 () array!48838)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26819)

(declare-fun zeroValue!654 () V!26819)

(declare-fun getCurrentListMapNoExtraKeys!2796 (array!48840 array!48838 (_ BitVec 32) (_ BitVec 32) V!26819 V!26819 (_ BitVec 32) Int) ListLongMap!9597)

(assert (=> b!854541 (= lt!385487 (getCurrentListMapNoExtraKeys!2796 _keys!868 lt!385484 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!38434 () ListLongMap!9597)

(declare-fun call!38435 () ListLongMap!9597)

(declare-fun e!476530 () Bool)

(declare-fun b!854542 () Bool)

(assert (=> b!854542 (= e!476530 (= call!38435 (+!2149 call!38434 (tuple2!10815 k0!854 v!557))))))

(declare-fun b!854543 () Bool)

(declare-fun res!580432 () Bool)

(assert (=> b!854543 (=> (not res!580432) (not e!476525))))

(assert (=> b!854543 (= res!580432 (and (= (size!23887 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23888 _keys!868) (size!23887 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!854544 () Bool)

(declare-fun res!580438 () Bool)

(assert (=> b!854544 (=> (not res!580438) (not e!476525))))

(assert (=> b!854544 (= res!580438 (and (= (select (arr!23447 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!854545 () Bool)

(declare-fun res!580431 () Bool)

(assert (=> b!854545 (=> (not res!580431) (not e!476525))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854545 (= res!580431 (validMask!0 mask!1196))))

(declare-fun b!854546 () Bool)

(assert (=> b!854546 (= e!476527 tp_is_empty!16329)))

(declare-fun b!854547 () Bool)

(declare-fun res!580437 () Bool)

(assert (=> b!854547 (=> (not res!580437) (not e!476525))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854547 (= res!580437 (validKeyInArray!0 k0!854))))

(declare-fun b!854548 () Bool)

(assert (=> b!854548 (= e!476530 (= call!38435 call!38434))))

(declare-fun b!854549 () Bool)

(declare-fun e!476529 () Bool)

(assert (=> b!854549 (= e!476529 tp_is_empty!16329)))

(declare-fun mapNonEmpty!26093 () Bool)

(declare-fun tp!50083 () Bool)

(assert (=> mapNonEmpty!26093 (= mapRes!26093 (and tp!50083 e!476529))))

(declare-fun mapKey!26093 () (_ BitVec 32))

(declare-fun mapRest!26093 () (Array (_ BitVec 32) ValueCell!7725))

(declare-fun mapValue!26093 () ValueCell!7725)

(assert (=> mapNonEmpty!26093 (= (arr!23446 _values!688) (store mapRest!26093 mapKey!26093 mapValue!26093))))

(declare-fun mapIsEmpty!26093 () Bool)

(assert (=> mapIsEmpty!26093 mapRes!26093))

(declare-fun bm!38431 () Bool)

(assert (=> bm!38431 (= call!38434 (getCurrentListMapNoExtraKeys!2796 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854550 () Bool)

(declare-fun res!580436 () Bool)

(assert (=> b!854550 (=> (not res!580436) (not e!476525))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48840 (_ BitVec 32)) Bool)

(assert (=> b!854550 (= res!580436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!854551 () Bool)

(declare-fun e!476528 () Bool)

(assert (=> b!854551 (= e!476525 e!476528)))

(declare-fun res!580440 () Bool)

(assert (=> b!854551 (=> (not res!580440) (not e!476528))))

(assert (=> b!854551 (= res!580440 (= from!1053 i!612))))

(assert (=> b!854551 (= lt!385479 (getCurrentListMapNoExtraKeys!2796 _keys!868 lt!385484 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!854551 (= lt!385484 (array!48839 (store (arr!23446 _values!688) i!612 (ValueCellFull!7725 v!557)) (size!23887 _values!688)))))

(declare-fun lt!385481 () ListLongMap!9597)

(assert (=> b!854551 (= lt!385481 (getCurrentListMapNoExtraKeys!2796 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun bm!38432 () Bool)

(assert (=> bm!38432 (= call!38435 (getCurrentListMapNoExtraKeys!2796 _keys!868 lt!385484 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854552 () Bool)

(declare-fun res!580433 () Bool)

(assert (=> b!854552 (=> (not res!580433) (not e!476525))))

(assert (=> b!854552 (= res!580433 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23888 _keys!868))))))

(declare-fun b!854553 () Bool)

(assert (=> b!854553 (= e!476528 (not e!476526))))

(declare-fun res!580434 () Bool)

(assert (=> b!854553 (=> res!580434 e!476526)))

(assert (=> b!854553 (= res!580434 (not (validKeyInArray!0 (select (arr!23447 _keys!868) from!1053))))))

(assert (=> b!854553 e!476530))

(declare-fun c!91878 () Bool)

(assert (=> b!854553 (= c!91878 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!385488 () Unit!29140)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!409 (array!48840 array!48838 (_ BitVec 32) (_ BitVec 32) V!26819 V!26819 (_ BitVec 32) (_ BitVec 64) V!26819 (_ BitVec 32) Int) Unit!29140)

(assert (=> b!854553 (= lt!385488 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!409 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!854554 () Bool)

(declare-fun res!580435 () Bool)

(assert (=> b!854554 (=> (not res!580435) (not e!476525))))

(declare-datatypes ((List!16687 0))(
  ( (Nil!16684) (Cons!16683 (h!17814 (_ BitVec 64)) (t!23334 List!16687)) )
))
(declare-fun arrayNoDuplicates!0 (array!48840 (_ BitVec 32) List!16687) Bool)

(assert (=> b!854554 (= res!580435 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16684))))

(assert (= (and start!73306 res!580439) b!854545))

(assert (= (and b!854545 res!580431) b!854543))

(assert (= (and b!854543 res!580432) b!854550))

(assert (= (and b!854550 res!580436) b!854554))

(assert (= (and b!854554 res!580435) b!854552))

(assert (= (and b!854552 res!580433) b!854547))

(assert (= (and b!854547 res!580437) b!854544))

(assert (= (and b!854544 res!580438) b!854551))

(assert (= (and b!854551 res!580440) b!854553))

(assert (= (and b!854553 c!91878) b!854542))

(assert (= (and b!854553 (not c!91878)) b!854548))

(assert (= (or b!854542 b!854548) bm!38432))

(assert (= (or b!854542 b!854548) bm!38431))

(assert (= (and b!854553 (not res!580434)) b!854541))

(assert (= (and b!854540 condMapEmpty!26093) mapIsEmpty!26093))

(assert (= (and b!854540 (not condMapEmpty!26093)) mapNonEmpty!26093))

(get-info :version)

(assert (= (and mapNonEmpty!26093 ((_ is ValueCellFull!7725) mapValue!26093)) b!854549))

(assert (= (and b!854540 ((_ is ValueCellFull!7725) mapDefault!26093)) b!854546))

(assert (= start!73306 b!854540))

(declare-fun b_lambda!11755 () Bool)

(assert (=> (not b_lambda!11755) (not b!854541)))

(declare-fun t!23332 () Bool)

(declare-fun tb!4503 () Bool)

(assert (=> (and start!73306 (= defaultEntry!696 defaultEntry!696) t!23332) tb!4503))

(declare-fun result!8609 () Bool)

(assert (=> tb!4503 (= result!8609 tp_is_empty!16329)))

(assert (=> b!854541 t!23332))

(declare-fun b_and!23565 () Bool)

(assert (= b_and!23563 (and (=> t!23332 result!8609) b_and!23565)))

(declare-fun m!796045 () Bool)

(assert (=> b!854547 m!796045))

(declare-fun m!796047 () Bool)

(assert (=> b!854544 m!796047))

(declare-fun m!796049 () Bool)

(assert (=> b!854550 m!796049))

(declare-fun m!796051 () Bool)

(assert (=> bm!38432 m!796051))

(declare-fun m!796053 () Bool)

(assert (=> b!854542 m!796053))

(declare-fun m!796055 () Bool)

(assert (=> b!854551 m!796055))

(declare-fun m!796057 () Bool)

(assert (=> b!854551 m!796057))

(declare-fun m!796059 () Bool)

(assert (=> b!854551 m!796059))

(declare-fun m!796061 () Bool)

(assert (=> bm!38431 m!796061))

(declare-fun m!796063 () Bool)

(assert (=> b!854553 m!796063))

(assert (=> b!854553 m!796063))

(declare-fun m!796065 () Bool)

(assert (=> b!854553 m!796065))

(declare-fun m!796067 () Bool)

(assert (=> b!854553 m!796067))

(declare-fun m!796069 () Bool)

(assert (=> b!854541 m!796069))

(declare-fun m!796071 () Bool)

(assert (=> b!854541 m!796071))

(declare-fun m!796073 () Bool)

(assert (=> b!854541 m!796073))

(assert (=> b!854541 m!796069))

(declare-fun m!796075 () Bool)

(assert (=> b!854541 m!796075))

(declare-fun m!796077 () Bool)

(assert (=> b!854541 m!796077))

(assert (=> b!854541 m!796051))

(declare-fun m!796079 () Bool)

(assert (=> b!854541 m!796079))

(declare-fun m!796081 () Bool)

(assert (=> b!854541 m!796081))

(assert (=> b!854541 m!796063))

(declare-fun m!796083 () Bool)

(assert (=> b!854541 m!796083))

(declare-fun m!796085 () Bool)

(assert (=> b!854541 m!796085))

(assert (=> b!854541 m!796079))

(assert (=> b!854541 m!796085))

(declare-fun m!796087 () Bool)

(assert (=> b!854541 m!796087))

(assert (=> b!854541 m!796057))

(declare-fun m!796089 () Bool)

(assert (=> mapNonEmpty!26093 m!796089))

(declare-fun m!796091 () Bool)

(assert (=> b!854554 m!796091))

(declare-fun m!796093 () Bool)

(assert (=> start!73306 m!796093))

(declare-fun m!796095 () Bool)

(assert (=> start!73306 m!796095))

(declare-fun m!796097 () Bool)

(assert (=> b!854545 m!796097))

(check-sat (not bm!38432) tp_is_empty!16329 (not b_lambda!11755) (not bm!38431) (not b!854554) b_and!23565 (not mapNonEmpty!26093) (not b!854545) (not start!73306) (not b!854550) (not b!854541) (not b!854553) (not b!854542) (not b_next!14193) (not b!854551) (not b!854547))
(check-sat b_and!23565 (not b_next!14193))
