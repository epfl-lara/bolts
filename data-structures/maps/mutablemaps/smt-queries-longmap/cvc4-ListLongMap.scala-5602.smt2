; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73428 () Bool)

(assert start!73428)

(declare-fun b_free!14315 () Bool)

(declare-fun b_next!14315 () Bool)

(assert (=> start!73428 (= b_free!14315 (not b_next!14315))))

(declare-fun tp!50450 () Bool)

(declare-fun b_and!23689 () Bool)

(assert (=> start!73428 (= tp!50450 b_and!23689)))

(declare-fun b!856644 () Bool)

(declare-fun e!477527 () Bool)

(assert (=> b!856644 (= e!477527 (not true))))

(declare-datatypes ((V!26981 0))(
  ( (V!26982 (val!8273 Int)) )
))
(declare-fun v!557 () V!26981)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((ValueCell!7786 0))(
  ( (ValueCellFull!7786 (v!10694 V!26981)) (EmptyCell!7786) )
))
(declare-datatypes ((array!49070 0))(
  ( (array!49071 (arr!23562 (Array (_ BitVec 32) ValueCell!7786)) (size!24003 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49070)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26981)

(declare-fun zeroValue!654 () V!26981)

(declare-datatypes ((array!49072 0))(
  ( (array!49073 (arr!23563 (Array (_ BitVec 32) (_ BitVec 64))) (size!24004 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49072)

(declare-fun lt!386022 () array!49070)

(declare-datatypes ((tuple2!10898 0))(
  ( (tuple2!10899 (_1!5459 (_ BitVec 64)) (_2!5459 V!26981)) )
))
(declare-datatypes ((List!16770 0))(
  ( (Nil!16767) (Cons!16766 (h!17897 tuple2!10898) (t!23419 List!16770)) )
))
(declare-datatypes ((ListLongMap!9681 0))(
  ( (ListLongMap!9682 (toList!4856 List!16770)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2838 (array!49072 array!49070 (_ BitVec 32) (_ BitVec 32) V!26981 V!26981 (_ BitVec 32) Int) ListLongMap!9681)

(declare-fun +!2165 (ListLongMap!9681 tuple2!10898) ListLongMap!9681)

(assert (=> b!856644 (= (getCurrentListMapNoExtraKeys!2838 _keys!868 lt!386022 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2165 (getCurrentListMapNoExtraKeys!2838 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10899 k!854 v!557)))))

(declare-datatypes ((Unit!29172 0))(
  ( (Unit!29173) )
))
(declare-fun lt!386020 () Unit!29172)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!425 (array!49072 array!49070 (_ BitVec 32) (_ BitVec 32) V!26981 V!26981 (_ BitVec 32) (_ BitVec 64) V!26981 (_ BitVec 32) Int) Unit!29172)

(assert (=> b!856644 (= lt!386020 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!425 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!856645 () Bool)

(declare-fun e!477525 () Bool)

(declare-fun tp_is_empty!16451 () Bool)

(assert (=> b!856645 (= e!477525 tp_is_empty!16451)))

(declare-fun b!856646 () Bool)

(declare-fun e!477526 () Bool)

(assert (=> b!856646 (= e!477526 e!477527)))

(declare-fun res!581975 () Bool)

(assert (=> b!856646 (=> (not res!581975) (not e!477527))))

(assert (=> b!856646 (= res!581975 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!386021 () ListLongMap!9681)

(assert (=> b!856646 (= lt!386021 (getCurrentListMapNoExtraKeys!2838 _keys!868 lt!386022 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!856646 (= lt!386022 (array!49071 (store (arr!23562 _values!688) i!612 (ValueCellFull!7786 v!557)) (size!24003 _values!688)))))

(declare-fun lt!386019 () ListLongMap!9681)

(assert (=> b!856646 (= lt!386019 (getCurrentListMapNoExtraKeys!2838 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!856647 () Bool)

(declare-fun res!581980 () Bool)

(assert (=> b!856647 (=> (not res!581980) (not e!477526))))

(assert (=> b!856647 (= res!581980 (and (= (select (arr!23563 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!856648 () Bool)

(declare-fun res!581977 () Bool)

(assert (=> b!856648 (=> (not res!581977) (not e!477526))))

(assert (=> b!856648 (= res!581977 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24004 _keys!868))))))

(declare-fun b!856649 () Bool)

(declare-fun res!581978 () Bool)

(assert (=> b!856649 (=> (not res!581978) (not e!477526))))

(declare-datatypes ((List!16771 0))(
  ( (Nil!16768) (Cons!16767 (h!17898 (_ BitVec 64)) (t!23420 List!16771)) )
))
(declare-fun arrayNoDuplicates!0 (array!49072 (_ BitVec 32) List!16771) Bool)

(assert (=> b!856649 (= res!581978 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16768))))

(declare-fun mapIsEmpty!26276 () Bool)

(declare-fun mapRes!26276 () Bool)

(assert (=> mapIsEmpty!26276 mapRes!26276))

(declare-fun b!856650 () Bool)

(declare-fun res!581976 () Bool)

(assert (=> b!856650 (=> (not res!581976) (not e!477526))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856650 (= res!581976 (validMask!0 mask!1196))))

(declare-fun b!856651 () Bool)

(declare-fun e!477524 () Bool)

(assert (=> b!856651 (= e!477524 tp_is_empty!16451)))

(declare-fun mapNonEmpty!26276 () Bool)

(declare-fun tp!50449 () Bool)

(assert (=> mapNonEmpty!26276 (= mapRes!26276 (and tp!50449 e!477525))))

(declare-fun mapKey!26276 () (_ BitVec 32))

(declare-fun mapValue!26276 () ValueCell!7786)

(declare-fun mapRest!26276 () (Array (_ BitVec 32) ValueCell!7786))

(assert (=> mapNonEmpty!26276 (= (arr!23562 _values!688) (store mapRest!26276 mapKey!26276 mapValue!26276))))

(declare-fun b!856652 () Bool)

(declare-fun res!581974 () Bool)

(assert (=> b!856652 (=> (not res!581974) (not e!477526))))

(assert (=> b!856652 (= res!581974 (and (= (size!24003 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24004 _keys!868) (size!24003 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!856653 () Bool)

(declare-fun res!581979 () Bool)

(assert (=> b!856653 (=> (not res!581979) (not e!477526))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49072 (_ BitVec 32)) Bool)

(assert (=> b!856653 (= res!581979 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!856654 () Bool)

(declare-fun res!581982 () Bool)

(assert (=> b!856654 (=> (not res!581982) (not e!477526))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856654 (= res!581982 (validKeyInArray!0 k!854))))

(declare-fun res!581981 () Bool)

(assert (=> start!73428 (=> (not res!581981) (not e!477526))))

(assert (=> start!73428 (= res!581981 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24004 _keys!868))))))

(assert (=> start!73428 e!477526))

(assert (=> start!73428 tp_is_empty!16451))

(assert (=> start!73428 true))

(assert (=> start!73428 tp!50450))

(declare-fun array_inv!18650 (array!49072) Bool)

(assert (=> start!73428 (array_inv!18650 _keys!868)))

(declare-fun e!477523 () Bool)

(declare-fun array_inv!18651 (array!49070) Bool)

(assert (=> start!73428 (and (array_inv!18651 _values!688) e!477523)))

(declare-fun b!856655 () Bool)

(assert (=> b!856655 (= e!477523 (and e!477524 mapRes!26276))))

(declare-fun condMapEmpty!26276 () Bool)

(declare-fun mapDefault!26276 () ValueCell!7786)

