; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72420 () Bool)

(assert start!72420)

(declare-fun b_free!13577 () Bool)

(declare-fun b_next!13577 () Bool)

(assert (=> start!72420 (= b_free!13577 (not b_next!13577))))

(declare-fun tp!47831 () Bool)

(declare-fun b_and!22681 () Bool)

(assert (=> start!72420 (= tp!47831 b_and!22681)))

(declare-fun res!570532 () Bool)

(declare-fun e!468253 () Bool)

(assert (=> start!72420 (=> (not res!570532) (not e!468253))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47138 0))(
  ( (array!47139 (arr!22596 (Array (_ BitVec 32) (_ BitVec 64))) (size!23037 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47138)

(assert (=> start!72420 (= res!570532 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23037 _keys!868))))))

(assert (=> start!72420 e!468253))

(declare-fun tp_is_empty!15443 () Bool)

(assert (=> start!72420 tp_is_empty!15443))

(assert (=> start!72420 true))

(assert (=> start!72420 tp!47831))

(declare-fun array_inv!17976 (array!47138) Bool)

(assert (=> start!72420 (array_inv!17976 _keys!868)))

(declare-datatypes ((V!25637 0))(
  ( (V!25638 (val!7769 Int)) )
))
(declare-datatypes ((ValueCell!7282 0))(
  ( (ValueCellFull!7282 (v!10190 V!25637)) (EmptyCell!7282) )
))
(declare-datatypes ((array!47140 0))(
  ( (array!47141 (arr!22597 (Array (_ BitVec 32) ValueCell!7282)) (size!23038 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47140)

(declare-fun e!468254 () Bool)

(declare-fun array_inv!17977 (array!47140) Bool)

(assert (=> start!72420 (and (array_inv!17977 _values!688) e!468254)))

(declare-fun b!838913 () Bool)

(declare-fun res!570534 () Bool)

(assert (=> b!838913 (=> (not res!570534) (not e!468253))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47138 (_ BitVec 32)) Bool)

(assert (=> b!838913 (= res!570534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!838914 () Bool)

(declare-fun e!468257 () Bool)

(assert (=> b!838914 (= e!468257 tp_is_empty!15443)))

(declare-fun b!838915 () Bool)

(declare-fun res!570530 () Bool)

(assert (=> b!838915 (=> (not res!570530) (not e!468253))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!838915 (= res!570530 (and (= (size!23038 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23037 _keys!868) (size!23038 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!838916 () Bool)

(declare-fun res!570529 () Bool)

(assert (=> b!838916 (=> (not res!570529) (not e!468253))))

(declare-datatypes ((List!16135 0))(
  ( (Nil!16132) (Cons!16131 (h!17262 (_ BitVec 64)) (t!22514 List!16135)) )
))
(declare-fun arrayNoDuplicates!0 (array!47138 (_ BitVec 32) List!16135) Bool)

(assert (=> b!838916 (= res!570529 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16132))))

(declare-fun b!838917 () Bool)

(declare-fun res!570527 () Bool)

(assert (=> b!838917 (=> (not res!570527) (not e!468253))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!838917 (= res!570527 (validKeyInArray!0 k!854))))

(declare-fun b!838918 () Bool)

(declare-fun res!570528 () Bool)

(assert (=> b!838918 (=> (not res!570528) (not e!468253))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!838918 (= res!570528 (and (= (select (arr!22596 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!23037 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!24764 () Bool)

(declare-fun mapRes!24764 () Bool)

(declare-fun tp!47830 () Bool)

(assert (=> mapNonEmpty!24764 (= mapRes!24764 (and tp!47830 e!468257))))

(declare-fun mapKey!24764 () (_ BitVec 32))

(declare-fun mapValue!24764 () ValueCell!7282)

(declare-fun mapRest!24764 () (Array (_ BitVec 32) ValueCell!7282))

(assert (=> mapNonEmpty!24764 (= (arr!22597 _values!688) (store mapRest!24764 mapKey!24764 mapValue!24764))))

(declare-datatypes ((tuple2!10300 0))(
  ( (tuple2!10301 (_1!5160 (_ BitVec 64)) (_2!5160 V!25637)) )
))
(declare-datatypes ((List!16136 0))(
  ( (Nil!16133) (Cons!16132 (h!17263 tuple2!10300) (t!22515 List!16136)) )
))
(declare-datatypes ((ListLongMap!9083 0))(
  ( (ListLongMap!9084 (toList!4557 List!16136)) )
))
(declare-fun call!36964 () ListLongMap!9083)

(declare-fun v!557 () V!25637)

(declare-fun defaultEntry!696 () Int)

(declare-fun bm!36961 () Bool)

(declare-fun minValue!654 () V!25637)

(declare-fun zeroValue!654 () V!25637)

(declare-fun getCurrentListMapNoExtraKeys!2552 (array!47138 array!47140 (_ BitVec 32) (_ BitVec 32) V!25637 V!25637 (_ BitVec 32) Int) ListLongMap!9083)

(assert (=> bm!36961 (= call!36964 (getCurrentListMapNoExtraKeys!2552 _keys!868 (array!47141 (store (arr!22597 _values!688) i!612 (ValueCellFull!7282 v!557)) (size!23038 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!36965 () ListLongMap!9083)

(declare-fun bm!36962 () Bool)

(assert (=> bm!36962 (= call!36965 (getCurrentListMapNoExtraKeys!2552 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838919 () Bool)

(declare-fun e!468255 () Bool)

(assert (=> b!838919 (= e!468255 tp_is_empty!15443)))

(declare-fun b!838920 () Bool)

(assert (=> b!838920 (= e!468253 (not true))))

(declare-fun e!468258 () Bool)

(assert (=> b!838920 e!468258))

(declare-fun c!91143 () Bool)

(assert (=> b!838920 (= c!91143 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!28808 0))(
  ( (Unit!28809) )
))
(declare-fun lt!380676 () Unit!28808)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!253 (array!47138 array!47140 (_ BitVec 32) (_ BitVec 32) V!25637 V!25637 (_ BitVec 32) (_ BitVec 64) V!25637 (_ BitVec 32) Int) Unit!28808)

(assert (=> b!838920 (= lt!380676 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!253 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!838921 () Bool)

(declare-fun res!570531 () Bool)

(assert (=> b!838921 (=> (not res!570531) (not e!468253))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!838921 (= res!570531 (validMask!0 mask!1196))))

(declare-fun b!838922 () Bool)

(declare-fun +!1977 (ListLongMap!9083 tuple2!10300) ListLongMap!9083)

(assert (=> b!838922 (= e!468258 (= call!36964 (+!1977 call!36965 (tuple2!10301 k!854 v!557))))))

(declare-fun b!838923 () Bool)

(assert (=> b!838923 (= e!468258 (= call!36964 call!36965))))

(declare-fun b!838924 () Bool)

(assert (=> b!838924 (= e!468254 (and e!468255 mapRes!24764))))

(declare-fun condMapEmpty!24764 () Bool)

(declare-fun mapDefault!24764 () ValueCell!7282)

