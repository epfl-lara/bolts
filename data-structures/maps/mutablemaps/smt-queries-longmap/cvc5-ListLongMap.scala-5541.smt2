; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73058 () Bool)

(assert start!73058)

(declare-fun b_free!13945 () Bool)

(declare-fun b_next!13945 () Bool)

(assert (=> start!73058 (= b_free!13945 (not b_next!13945))))

(declare-fun tp!49340 () Bool)

(declare-fun b_and!23067 () Bool)

(assert (=> start!73058 (= tp!49340 b_and!23067)))

(declare-fun b!848712 () Bool)

(declare-fun res!576719 () Bool)

(declare-fun e!473553 () Bool)

(assert (=> b!848712 (=> (not res!576719) (not e!473553))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!848712 (= res!576719 (validMask!0 mask!1196))))

(declare-fun b!848713 () Bool)

(declare-fun res!576712 () Bool)

(assert (=> b!848713 (=> (not res!576712) (not e!473553))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!848713 (= res!576712 (validKeyInArray!0 k!854))))

(declare-fun b!848714 () Bool)

(declare-fun res!576720 () Bool)

(assert (=> b!848714 (=> (not res!576720) (not e!473553))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!26489 0))(
  ( (V!26490 (val!8088 Int)) )
))
(declare-datatypes ((ValueCell!7601 0))(
  ( (ValueCellFull!7601 (v!10509 V!26489)) (EmptyCell!7601) )
))
(declare-datatypes ((array!48354 0))(
  ( (array!48355 (arr!23204 (Array (_ BitVec 32) ValueCell!7601)) (size!23645 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48354)

(declare-datatypes ((array!48356 0))(
  ( (array!48357 (arr!23205 (Array (_ BitVec 32) (_ BitVec 64))) (size!23646 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48356)

(assert (=> b!848714 (= res!576720 (and (= (size!23645 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23646 _keys!868) (size!23645 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!25721 () Bool)

(declare-fun mapRes!25721 () Bool)

(declare-fun tp!49339 () Bool)

(declare-fun e!473552 () Bool)

(assert (=> mapNonEmpty!25721 (= mapRes!25721 (and tp!49339 e!473552))))

(declare-fun mapValue!25721 () ValueCell!7601)

(declare-fun mapRest!25721 () (Array (_ BitVec 32) ValueCell!7601))

(declare-fun mapKey!25721 () (_ BitVec 32))

(assert (=> mapNonEmpty!25721 (= (arr!23204 _values!688) (store mapRest!25721 mapKey!25721 mapValue!25721))))

(declare-fun b!848715 () Bool)

(declare-fun res!576713 () Bool)

(assert (=> b!848715 (=> (not res!576713) (not e!473553))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!848715 (= res!576713 (and (= (select (arr!23205 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!848716 () Bool)

(declare-fun e!473549 () Bool)

(declare-fun e!473550 () Bool)

(assert (=> b!848716 (= e!473549 (not e!473550))))

(declare-fun res!576718 () Bool)

(assert (=> b!848716 (=> res!576718 e!473550)))

(assert (=> b!848716 (= res!576718 (not (validKeyInArray!0 (select (arr!23205 _keys!868) from!1053))))))

(declare-fun e!473555 () Bool)

(assert (=> b!848716 e!473555))

(declare-fun c!91506 () Bool)

(assert (=> b!848716 (= c!91506 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28962 0))(
  ( (Unit!28963) )
))
(declare-fun lt!382071 () Unit!28962)

(declare-fun v!557 () V!26489)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!26489)

(declare-fun zeroValue!654 () V!26489)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!330 (array!48356 array!48354 (_ BitVec 32) (_ BitVec 32) V!26489 V!26489 (_ BitVec 32) (_ BitVec 64) V!26489 (_ BitVec 32) Int) Unit!28962)

(assert (=> b!848716 (= lt!382071 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!330 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848717 () Bool)

(declare-fun res!576715 () Bool)

(assert (=> b!848717 (=> (not res!576715) (not e!473553))))

(declare-datatypes ((List!16498 0))(
  ( (Nil!16495) (Cons!16494 (h!17625 (_ BitVec 64)) (t!22897 List!16498)) )
))
(declare-fun arrayNoDuplicates!0 (array!48356 (_ BitVec 32) List!16498) Bool)

(assert (=> b!848717 (= res!576715 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16495))))

(declare-fun b!848718 () Bool)

(declare-fun res!576714 () Bool)

(assert (=> b!848718 (=> (not res!576714) (not e!473553))))

(assert (=> b!848718 (= res!576714 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23646 _keys!868))))))

(declare-fun res!576717 () Bool)

(assert (=> start!73058 (=> (not res!576717) (not e!473553))))

(assert (=> start!73058 (= res!576717 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23646 _keys!868))))))

(assert (=> start!73058 e!473553))

(declare-fun tp_is_empty!16081 () Bool)

(assert (=> start!73058 tp_is_empty!16081))

(assert (=> start!73058 true))

(assert (=> start!73058 tp!49340))

(declare-fun array_inv!18404 (array!48356) Bool)

(assert (=> start!73058 (array_inv!18404 _keys!868)))

(declare-fun e!473554 () Bool)

(declare-fun array_inv!18405 (array!48354) Bool)

(assert (=> start!73058 (and (array_inv!18405 _values!688) e!473554)))

(declare-fun b!848719 () Bool)

(assert (=> b!848719 (= e!473553 e!473549)))

(declare-fun res!576711 () Bool)

(assert (=> b!848719 (=> (not res!576711) (not e!473549))))

(assert (=> b!848719 (= res!576711 (= from!1053 i!612))))

(declare-fun lt!382072 () array!48354)

(declare-datatypes ((tuple2!10594 0))(
  ( (tuple2!10595 (_1!5307 (_ BitVec 64)) (_2!5307 V!26489)) )
))
(declare-datatypes ((List!16499 0))(
  ( (Nil!16496) (Cons!16495 (h!17626 tuple2!10594) (t!22898 List!16499)) )
))
(declare-datatypes ((ListLongMap!9377 0))(
  ( (ListLongMap!9378 (toList!4704 List!16499)) )
))
(declare-fun lt!382074 () ListLongMap!9377)

(declare-fun getCurrentListMapNoExtraKeys!2692 (array!48356 array!48354 (_ BitVec 32) (_ BitVec 32) V!26489 V!26489 (_ BitVec 32) Int) ListLongMap!9377)

(assert (=> b!848719 (= lt!382074 (getCurrentListMapNoExtraKeys!2692 _keys!868 lt!382072 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!848719 (= lt!382072 (array!48355 (store (arr!23204 _values!688) i!612 (ValueCellFull!7601 v!557)) (size!23645 _values!688)))))

(declare-fun lt!382073 () ListLongMap!9377)

(assert (=> b!848719 (= lt!382073 (getCurrentListMapNoExtraKeys!2692 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!848720 () Bool)

(declare-fun call!37691 () ListLongMap!9377)

(declare-fun call!37690 () ListLongMap!9377)

(assert (=> b!848720 (= e!473555 (= call!37691 call!37690))))

(declare-fun b!848721 () Bool)

(assert (=> b!848721 (= e!473552 tp_is_empty!16081)))

(declare-fun b!848722 () Bool)

(declare-fun res!576716 () Bool)

(assert (=> b!848722 (=> (not res!576716) (not e!473553))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48356 (_ BitVec 32)) Bool)

(assert (=> b!848722 (= res!576716 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun bm!37687 () Bool)

(assert (=> bm!37687 (= call!37690 (getCurrentListMapNoExtraKeys!2692 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!848723 () Bool)

(declare-fun e!473551 () Bool)

(assert (=> b!848723 (= e!473554 (and e!473551 mapRes!25721))))

(declare-fun condMapEmpty!25721 () Bool)

(declare-fun mapDefault!25721 () ValueCell!7601)

