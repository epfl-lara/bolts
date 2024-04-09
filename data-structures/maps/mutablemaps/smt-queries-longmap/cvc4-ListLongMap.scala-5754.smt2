; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74384 () Bool)

(assert start!74384)

(declare-fun b_free!15119 () Bool)

(declare-fun b_next!15119 () Bool)

(assert (=> start!74384 (= b_free!15119 (not b_next!15119))))

(declare-fun tp!53032 () Bool)

(declare-fun b_and!24913 () Bool)

(assert (=> start!74384 (= tp!53032 b_and!24913)))

(declare-fun b!875047 () Bool)

(declare-fun e!487182 () Bool)

(declare-fun tp_is_empty!17363 () Bool)

(assert (=> b!875047 (= e!487182 tp_is_empty!17363)))

(declare-fun b!875048 () Bool)

(declare-fun e!487181 () Bool)

(assert (=> b!875048 (= e!487181 tp_is_empty!17363)))

(declare-fun mapNonEmpty!27653 () Bool)

(declare-fun mapRes!27653 () Bool)

(declare-fun tp!53033 () Bool)

(assert (=> mapNonEmpty!27653 (= mapRes!27653 (and tp!53033 e!487181))))

(declare-datatypes ((V!28197 0))(
  ( (V!28198 (val!8729 Int)) )
))
(declare-datatypes ((ValueCell!8242 0))(
  ( (ValueCellFull!8242 (v!11154 V!28197)) (EmptyCell!8242) )
))
(declare-fun mapValue!27653 () ValueCell!8242)

(declare-datatypes ((array!50838 0))(
  ( (array!50839 (arr!24443 (Array (_ BitVec 32) ValueCell!8242)) (size!24884 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50838)

(declare-fun mapRest!27653 () (Array (_ BitVec 32) ValueCell!8242))

(declare-fun mapKey!27653 () (_ BitVec 32))

(assert (=> mapNonEmpty!27653 (= (arr!24443 _values!688) (store mapRest!27653 mapKey!27653 mapValue!27653))))

(declare-fun b!875049 () Bool)

(declare-fun res!594798 () Bool)

(declare-fun e!487176 () Bool)

(assert (=> b!875049 (=> (not res!594798) (not e!487176))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50840 0))(
  ( (array!50841 (arr!24444 (Array (_ BitVec 32) (_ BitVec 64))) (size!24885 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50840)

(assert (=> b!875049 (= res!594798 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24885 _keys!868))))))

(declare-fun b!875050 () Bool)

(declare-fun res!594795 () Bool)

(assert (=> b!875050 (=> (not res!594795) (not e!487176))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!875050 (= res!594795 (validMask!0 mask!1196))))

(declare-fun b!875051 () Bool)

(declare-fun e!487178 () Bool)

(declare-fun e!487183 () Bool)

(assert (=> b!875051 (= e!487178 (not e!487183))))

(declare-fun res!594801 () Bool)

(assert (=> b!875051 (=> res!594801 e!487183)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!875051 (= res!594801 (not (validKeyInArray!0 (select (arr!24444 _keys!868) from!1053))))))

(declare-fun e!487179 () Bool)

(assert (=> b!875051 e!487179))

(declare-fun c!92410 () Bool)

(assert (=> b!875051 (= c!92410 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((Unit!29896 0))(
  ( (Unit!29897) )
))
(declare-fun lt!396049 () Unit!29896)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!28197)

(declare-fun zeroValue!654 () V!28197)

(declare-fun v!557 () V!28197)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!652 (array!50840 array!50838 (_ BitVec 32) (_ BitVec 32) V!28197 V!28197 (_ BitVec 32) (_ BitVec 64) V!28197 (_ BitVec 32) Int) Unit!29896)

(assert (=> b!875051 (= lt!396049 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!652 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875052 () Bool)

(assert (=> b!875052 (= e!487176 e!487178)))

(declare-fun res!594799 () Bool)

(assert (=> b!875052 (=> (not res!594799) (not e!487178))))

(assert (=> b!875052 (= res!594799 (= from!1053 i!612))))

(declare-datatypes ((tuple2!11536 0))(
  ( (tuple2!11537 (_1!5778 (_ BitVec 64)) (_2!5778 V!28197)) )
))
(declare-datatypes ((List!17425 0))(
  ( (Nil!17422) (Cons!17421 (h!18552 tuple2!11536) (t!24474 List!17425)) )
))
(declare-datatypes ((ListLongMap!10319 0))(
  ( (ListLongMap!10320 (toList!5175 List!17425)) )
))
(declare-fun lt!396052 () ListLongMap!10319)

(declare-fun lt!396050 () array!50838)

(declare-fun getCurrentListMapNoExtraKeys!3139 (array!50840 array!50838 (_ BitVec 32) (_ BitVec 32) V!28197 V!28197 (_ BitVec 32) Int) ListLongMap!10319)

(assert (=> b!875052 (= lt!396052 (getCurrentListMapNoExtraKeys!3139 _keys!868 lt!396050 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!875052 (= lt!396050 (array!50839 (store (arr!24443 _values!688) i!612 (ValueCellFull!8242 v!557)) (size!24884 _values!688)))))

(declare-fun lt!396051 () ListLongMap!10319)

(assert (=> b!875052 (= lt!396051 (getCurrentListMapNoExtraKeys!3139 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun call!38583 () ListLongMap!10319)

(declare-fun bm!38579 () Bool)

(assert (=> bm!38579 (= call!38583 (getCurrentListMapNoExtraKeys!3139 _keys!868 lt!396050 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875053 () Bool)

(declare-fun e!487177 () Bool)

(assert (=> b!875053 (= e!487177 (and e!487182 mapRes!27653))))

(declare-fun condMapEmpty!27653 () Bool)

(declare-fun mapDefault!27653 () ValueCell!8242)

