; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74976 () Bool)

(assert start!74976)

(declare-fun b_free!15467 () Bool)

(declare-fun b_next!15467 () Bool)

(assert (=> start!74976 (= b_free!15467 (not b_next!15467))))

(declare-fun tp!54104 () Bool)

(declare-fun b_and!25651 () Bool)

(assert (=> start!74976 (= tp!54104 b_and!25651)))

(declare-fun b!884033 () Bool)

(declare-fun e!492000 () Bool)

(declare-fun e!492003 () Bool)

(assert (=> b!884033 (= e!492000 (not e!492003))))

(declare-fun res!600694 () Bool)

(assert (=> b!884033 (=> res!600694 e!492003)))

(declare-datatypes ((array!51532 0))(
  ( (array!51533 (arr!24781 (Array (_ BitVec 32) (_ BitVec 64))) (size!25222 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51532)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!884033 (= res!600694 (not (validKeyInArray!0 (select (arr!24781 _keys!868) from!1053))))))

(declare-datatypes ((V!28661 0))(
  ( (V!28662 (val!8903 Int)) )
))
(declare-datatypes ((tuple2!11834 0))(
  ( (tuple2!11835 (_1!5927 (_ BitVec 64)) (_2!5927 V!28661)) )
))
(declare-datatypes ((List!17698 0))(
  ( (Nil!17695) (Cons!17694 (h!18825 tuple2!11834) (t!24975 List!17698)) )
))
(declare-datatypes ((ListLongMap!10617 0))(
  ( (ListLongMap!10618 (toList!5324 List!17698)) )
))
(declare-fun lt!400392 () ListLongMap!10617)

(declare-fun lt!400391 () ListLongMap!10617)

(assert (=> b!884033 (= lt!400392 lt!400391)))

(declare-fun lt!400388 () ListLongMap!10617)

(declare-fun lt!400384 () tuple2!11834)

(declare-fun +!2527 (ListLongMap!10617 tuple2!11834) ListLongMap!10617)

(assert (=> b!884033 (= lt!400391 (+!2527 lt!400388 lt!400384))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8416 0))(
  ( (ValueCellFull!8416 (v!11368 V!28661)) (EmptyCell!8416) )
))
(declare-datatypes ((array!51534 0))(
  ( (array!51535 (arr!24782 (Array (_ BitVec 32) ValueCell!8416)) (size!25223 (_ BitVec 32))) )
))
(declare-fun lt!400389 () array!51534)

(declare-fun minValue!654 () V!28661)

(declare-fun zeroValue!654 () V!28661)

(declare-fun getCurrentListMapNoExtraKeys!3278 (array!51532 array!51534 (_ BitVec 32) (_ BitVec 32) V!28661 V!28661 (_ BitVec 32) Int) ListLongMap!10617)

(assert (=> b!884033 (= lt!400392 (getCurrentListMapNoExtraKeys!3278 _keys!868 lt!400389 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun v!557 () V!28661)

(assert (=> b!884033 (= lt!400384 (tuple2!11835 k!854 v!557))))

(declare-fun _values!688 () array!51534)

(assert (=> b!884033 (= lt!400388 (getCurrentListMapNoExtraKeys!3278 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30161 0))(
  ( (Unit!30162) )
))
(declare-fun lt!400393 () Unit!30161)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!748 (array!51532 array!51534 (_ BitVec 32) (_ BitVec 32) V!28661 V!28661 (_ BitVec 32) (_ BitVec 64) V!28661 (_ BitVec 32) Int) Unit!30161)

(assert (=> b!884033 (= lt!400393 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!748 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!884034 () Bool)

(declare-fun res!600687 () Bool)

(declare-fun e!492005 () Bool)

(assert (=> b!884034 (=> (not res!600687) (not e!492005))))

(assert (=> b!884034 (= res!600687 (validKeyInArray!0 k!854))))

(declare-fun b!884035 () Bool)

(declare-fun res!600693 () Bool)

(assert (=> b!884035 (=> (not res!600693) (not e!492005))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51532 (_ BitVec 32)) Bool)

(assert (=> b!884035 (= res!600693 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!884036 () Bool)

(declare-fun e!492001 () Bool)

(declare-fun tp_is_empty!17711 () Bool)

(assert (=> b!884036 (= e!492001 tp_is_empty!17711)))

(declare-fun b!884037 () Bool)

(assert (=> b!884037 (= e!492005 e!492000)))

(declare-fun res!600690 () Bool)

(assert (=> b!884037 (=> (not res!600690) (not e!492000))))

(assert (=> b!884037 (= res!600690 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!400386 () ListLongMap!10617)

(assert (=> b!884037 (= lt!400386 (getCurrentListMapNoExtraKeys!3278 _keys!868 lt!400389 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!884037 (= lt!400389 (array!51535 (store (arr!24782 _values!688) i!612 (ValueCellFull!8416 v!557)) (size!25223 _values!688)))))

(declare-fun lt!400397 () ListLongMap!10617)

(assert (=> b!884037 (= lt!400397 (getCurrentListMapNoExtraKeys!3278 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!884038 () Bool)

(declare-fun e!492008 () Bool)

(declare-fun e!492002 () Bool)

(declare-fun mapRes!28203 () Bool)

(assert (=> b!884038 (= e!492008 (and e!492002 mapRes!28203))))

(declare-fun condMapEmpty!28203 () Bool)

(declare-fun mapDefault!28203 () ValueCell!8416)

