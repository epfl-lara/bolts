; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73242 () Bool)

(assert start!73242)

(declare-fun b_free!14129 () Bool)

(declare-fun b_next!14129 () Bool)

(assert (=> start!73242 (= b_free!14129 (not b_next!14129))))

(declare-fun tp!49892 () Bool)

(declare-fun b_and!23435 () Bool)

(assert (=> start!73242 (= tp!49892 b_and!23435)))

(declare-fun b!853036 () Bool)

(declare-fun e!475763 () Bool)

(declare-fun tp_is_empty!16265 () Bool)

(assert (=> b!853036 (= e!475763 tp_is_empty!16265)))

(declare-fun b!853037 () Bool)

(declare-fun res!579479 () Bool)

(declare-fun e!475761 () Bool)

(assert (=> b!853037 (=> (not res!579479) (not e!475761))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!853037 (= res!579479 (validMask!0 mask!1196))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!48714 0))(
  ( (array!48715 (arr!23384 (Array (_ BitVec 32) (_ BitVec 64))) (size!23825 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48714)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((V!26733 0))(
  ( (V!26734 (val!8180 Int)) )
))
(declare-datatypes ((ValueCell!7693 0))(
  ( (ValueCellFull!7693 (v!10601 V!26733)) (EmptyCell!7693) )
))
(declare-datatypes ((array!48716 0))(
  ( (array!48717 (arr!23385 (Array (_ BitVec 32) ValueCell!7693)) (size!23826 (_ BitVec 32))) )
))
(declare-fun lt!384523 () array!48716)

(declare-fun minValue!654 () V!26733)

(declare-fun zeroValue!654 () V!26733)

(declare-fun bm!38239 () Bool)

(declare-datatypes ((tuple2!10762 0))(
  ( (tuple2!10763 (_1!5391 (_ BitVec 64)) (_2!5391 V!26733)) )
))
(declare-datatypes ((List!16640 0))(
  ( (Nil!16637) (Cons!16636 (h!17767 tuple2!10762) (t!23223 List!16640)) )
))
(declare-datatypes ((ListLongMap!9545 0))(
  ( (ListLongMap!9546 (toList!4788 List!16640)) )
))
(declare-fun call!38242 () ListLongMap!9545)

(declare-fun getCurrentListMapNoExtraKeys!2771 (array!48714 array!48716 (_ BitVec 32) (_ BitVec 32) V!26733 V!26733 (_ BitVec 32) Int) ListLongMap!9545)

(assert (=> bm!38239 (= call!38242 (getCurrentListMapNoExtraKeys!2771 _keys!868 lt!384523 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853038 () Bool)

(declare-fun res!579475 () Bool)

(assert (=> b!853038 (=> (not res!579475) (not e!475761))))

(declare-fun _values!688 () array!48716)

(assert (=> b!853038 (= res!579475 (and (= (size!23826 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23825 _keys!868) (size!23826 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!579471 () Bool)

(assert (=> start!73242 (=> (not res!579471) (not e!475761))))

(assert (=> start!73242 (= res!579471 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23825 _keys!868))))))

(assert (=> start!73242 e!475761))

(assert (=> start!73242 tp_is_empty!16265))

(assert (=> start!73242 true))

(assert (=> start!73242 tp!49892))

(declare-fun array_inv!18526 (array!48714) Bool)

(assert (=> start!73242 (array_inv!18526 _keys!868)))

(declare-fun e!475758 () Bool)

(declare-fun array_inv!18527 (array!48716) Bool)

(assert (=> start!73242 (and (array_inv!18527 _values!688) e!475758)))

(declare-fun b!853039 () Bool)

(declare-fun e!475757 () Bool)

(declare-fun e!475764 () Bool)

(assert (=> b!853039 (= e!475757 (not e!475764))))

(declare-fun res!579474 () Bool)

(assert (=> b!853039 (=> res!579474 e!475764)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!853039 (= res!579474 (not (validKeyInArray!0 (select (arr!23384 _keys!868) from!1053))))))

(declare-fun e!475759 () Bool)

(assert (=> b!853039 e!475759))

(declare-fun c!91782 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!853039 (= c!91782 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26733)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((Unit!29102 0))(
  ( (Unit!29103) )
))
(declare-fun lt!384526 () Unit!29102)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!391 (array!48714 array!48716 (_ BitVec 32) (_ BitVec 32) V!26733 V!26733 (_ BitVec 32) (_ BitVec 64) V!26733 (_ BitVec 32) Int) Unit!29102)

(assert (=> b!853039 (= lt!384526 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!391 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853040 () Bool)

(declare-fun res!579478 () Bool)

(assert (=> b!853040 (=> (not res!579478) (not e!475761))))

(declare-datatypes ((List!16641 0))(
  ( (Nil!16638) (Cons!16637 (h!17768 (_ BitVec 64)) (t!23224 List!16641)) )
))
(declare-fun arrayNoDuplicates!0 (array!48714 (_ BitVec 32) List!16641) Bool)

(assert (=> b!853040 (= res!579478 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16638))))

(declare-fun b!853041 () Bool)

(declare-fun res!579477 () Bool)

(assert (=> b!853041 (=> (not res!579477) (not e!475761))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48714 (_ BitVec 32)) Bool)

(assert (=> b!853041 (= res!579477 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun call!38243 () ListLongMap!9545)

(declare-fun b!853042 () Bool)

(declare-fun +!2128 (ListLongMap!9545 tuple2!10762) ListLongMap!9545)

(assert (=> b!853042 (= e!475759 (= call!38242 (+!2128 call!38243 (tuple2!10763 k!854 v!557))))))

(declare-fun mapNonEmpty!25997 () Bool)

(declare-fun mapRes!25997 () Bool)

(declare-fun tp!49891 () Bool)

(assert (=> mapNonEmpty!25997 (= mapRes!25997 (and tp!49891 e!475763))))

(declare-fun mapKey!25997 () (_ BitVec 32))

(declare-fun mapValue!25997 () ValueCell!7693)

(declare-fun mapRest!25997 () (Array (_ BitVec 32) ValueCell!7693))

(assert (=> mapNonEmpty!25997 (= (arr!23385 _values!688) (store mapRest!25997 mapKey!25997 mapValue!25997))))

(declare-fun b!853043 () Bool)

(declare-fun res!579473 () Bool)

(assert (=> b!853043 (=> (not res!579473) (not e!475761))))

(assert (=> b!853043 (= res!579473 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23825 _keys!868))))))

(declare-fun b!853044 () Bool)

(declare-fun res!579472 () Bool)

(assert (=> b!853044 (=> (not res!579472) (not e!475761))))

(assert (=> b!853044 (= res!579472 (and (= (select (arr!23384 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!853045 () Bool)

(assert (=> b!853045 (= e!475759 (= call!38242 call!38243))))

(declare-fun b!853046 () Bool)

(assert (=> b!853046 (= e!475764 true)))

(declare-fun lt!384519 () ListLongMap!9545)

(declare-fun lt!384527 () tuple2!10762)

(declare-fun lt!384525 () V!26733)

(assert (=> b!853046 (= (+!2128 lt!384519 lt!384527) (+!2128 (+!2128 lt!384519 (tuple2!10763 k!854 lt!384525)) lt!384527))))

(declare-fun lt!384521 () V!26733)

(assert (=> b!853046 (= lt!384527 (tuple2!10763 k!854 lt!384521))))

(declare-fun lt!384528 () Unit!29102)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!308 (ListLongMap!9545 (_ BitVec 64) V!26733 V!26733) Unit!29102)

(assert (=> b!853046 (= lt!384528 (addSameAsAddTwiceSameKeyDiffValues!308 lt!384519 k!854 lt!384525 lt!384521))))

(declare-fun lt!384522 () V!26733)

(declare-fun get!12348 (ValueCell!7693 V!26733) V!26733)

(assert (=> b!853046 (= lt!384525 (get!12348 (select (arr!23385 _values!688) from!1053) lt!384522))))

(declare-fun lt!384524 () ListLongMap!9545)

(assert (=> b!853046 (= lt!384524 (+!2128 lt!384519 (tuple2!10763 (select (arr!23384 _keys!868) from!1053) lt!384521)))))

(assert (=> b!853046 (= lt!384521 (get!12348 (select (store (arr!23385 _values!688) i!612 (ValueCellFull!7693 v!557)) from!1053) lt!384522))))

(declare-fun dynLambda!1056 (Int (_ BitVec 64)) V!26733)

(assert (=> b!853046 (= lt!384522 (dynLambda!1056 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!853046 (= lt!384519 (getCurrentListMapNoExtraKeys!2771 _keys!868 lt!384523 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853047 () Bool)

(declare-fun e!475762 () Bool)

(assert (=> b!853047 (= e!475758 (and e!475762 mapRes!25997))))

(declare-fun condMapEmpty!25997 () Bool)

(declare-fun mapDefault!25997 () ValueCell!7693)

