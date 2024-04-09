; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74404 () Bool)

(assert start!74404)

(declare-fun b_free!15139 () Bool)

(declare-fun b_next!15139 () Bool)

(assert (=> start!74404 (= b_free!15139 (not b_next!15139))))

(declare-fun tp!53092 () Bool)

(declare-fun b_and!24933 () Bool)

(assert (=> start!74404 (= tp!53092 b_and!24933)))

(declare-fun b!875498 () Bool)

(declare-fun e!487419 () Bool)

(declare-fun tp_is_empty!17383 () Bool)

(assert (=> b!875498 (= e!487419 tp_is_empty!17383)))

(declare-fun bm!38639 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50874 0))(
  ( (array!50875 (arr!24461 (Array (_ BitVec 32) (_ BitVec 64))) (size!24902 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50874)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((V!28225 0))(
  ( (V!28226 (val!8739 Int)) )
))
(declare-fun minValue!654 () V!28225)

(declare-fun zeroValue!654 () V!28225)

(declare-datatypes ((ValueCell!8252 0))(
  ( (ValueCellFull!8252 (v!11164 V!28225)) (EmptyCell!8252) )
))
(declare-datatypes ((array!50876 0))(
  ( (array!50877 (arr!24462 (Array (_ BitVec 32) ValueCell!8252)) (size!24903 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50876)

(declare-datatypes ((tuple2!11554 0))(
  ( (tuple2!11555 (_1!5787 (_ BitVec 64)) (_2!5787 V!28225)) )
))
(declare-datatypes ((List!17441 0))(
  ( (Nil!17438) (Cons!17437 (h!18568 tuple2!11554) (t!24492 List!17441)) )
))
(declare-datatypes ((ListLongMap!10337 0))(
  ( (ListLongMap!10338 (toList!5184 List!17441)) )
))
(declare-fun call!38643 () ListLongMap!10337)

(declare-fun getCurrentListMapNoExtraKeys!3147 (array!50874 array!50876 (_ BitVec 32) (_ BitVec 32) V!28225 V!28225 (_ BitVec 32) Int) ListLongMap!10337)

(assert (=> bm!38639 (= call!38643 (getCurrentListMapNoExtraKeys!3147 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875499 () Bool)

(declare-fun res!595093 () Bool)

(declare-fun e!487417 () Bool)

(assert (=> b!875499 (=> (not res!595093) (not e!487417))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50874 (_ BitVec 32)) Bool)

(assert (=> b!875499 (= res!595093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!875500 () Bool)

(declare-fun e!487423 () Bool)

(assert (=> b!875500 (= e!487417 e!487423)))

(declare-fun res!595101 () Bool)

(assert (=> b!875500 (=> (not res!595101) (not e!487423))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!875500 (= res!595101 (= from!1053 i!612))))

(declare-fun lt!396188 () ListLongMap!10337)

(declare-fun lt!396187 () array!50876)

(assert (=> b!875500 (= lt!396188 (getCurrentListMapNoExtraKeys!3147 _keys!868 lt!396187 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28225)

(assert (=> b!875500 (= lt!396187 (array!50877 (store (arr!24462 _values!688) i!612 (ValueCellFull!8252 v!557)) (size!24903 _values!688)))))

(declare-fun lt!396190 () ListLongMap!10337)

(assert (=> b!875500 (= lt!396190 (getCurrentListMapNoExtraKeys!3147 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!875501 () Bool)

(declare-fun res!595096 () Bool)

(assert (=> b!875501 (=> (not res!595096) (not e!487417))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!875501 (= res!595096 (validKeyInArray!0 k!854))))

(declare-fun mapIsEmpty!27683 () Bool)

(declare-fun mapRes!27683 () Bool)

(assert (=> mapIsEmpty!27683 mapRes!27683))

(declare-fun b!875497 () Bool)

(declare-fun res!595095 () Bool)

(assert (=> b!875497 (=> (not res!595095) (not e!487417))))

(assert (=> b!875497 (= res!595095 (and (= (select (arr!24461 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!595099 () Bool)

(assert (=> start!74404 (=> (not res!595099) (not e!487417))))

(assert (=> start!74404 (= res!595099 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24902 _keys!868))))))

(assert (=> start!74404 e!487417))

(assert (=> start!74404 tp_is_empty!17383))

(assert (=> start!74404 true))

(assert (=> start!74404 tp!53092))

(declare-fun array_inv!19266 (array!50874) Bool)

(assert (=> start!74404 (array_inv!19266 _keys!868)))

(declare-fun e!487421 () Bool)

(declare-fun array_inv!19267 (array!50876) Bool)

(assert (=> start!74404 (and (array_inv!19267 _values!688) e!487421)))

(declare-fun b!875502 () Bool)

(declare-fun res!595094 () Bool)

(assert (=> b!875502 (=> (not res!595094) (not e!487417))))

(assert (=> b!875502 (= res!595094 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24902 _keys!868))))))

(declare-fun mapNonEmpty!27683 () Bool)

(declare-fun tp!53093 () Bool)

(assert (=> mapNonEmpty!27683 (= mapRes!27683 (and tp!53093 e!487419))))

(declare-fun mapRest!27683 () (Array (_ BitVec 32) ValueCell!8252))

(declare-fun mapValue!27683 () ValueCell!8252)

(declare-fun mapKey!27683 () (_ BitVec 32))

(assert (=> mapNonEmpty!27683 (= (arr!24462 _values!688) (store mapRest!27683 mapKey!27683 mapValue!27683))))

(declare-fun call!38642 () ListLongMap!10337)

(declare-fun bm!38640 () Bool)

(assert (=> bm!38640 (= call!38642 (getCurrentListMapNoExtraKeys!3147 _keys!868 lt!396187 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875503 () Bool)

(declare-fun e!487422 () Bool)

(assert (=> b!875503 (= e!487421 (and e!487422 mapRes!27683))))

(declare-fun condMapEmpty!27683 () Bool)

(declare-fun mapDefault!27683 () ValueCell!8252)

