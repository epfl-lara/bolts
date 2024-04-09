; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74234 () Bool)

(assert start!74234)

(declare-fun b_free!15013 () Bool)

(declare-fun b_next!15013 () Bool)

(assert (=> start!74234 (= b_free!15013 (not b_next!15013))))

(declare-fun tp!52690 () Bool)

(declare-fun b_and!24783 () Bool)

(assert (=> start!74234 (= tp!52690 b_and!24783)))

(declare-fun b!872863 () Bool)

(declare-fun res!593325 () Bool)

(declare-fun e!486112 () Bool)

(assert (=> b!872863 (=> (not res!593325) (not e!486112))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((V!28041 0))(
  ( (V!28042 (val!8670 Int)) )
))
(declare-datatypes ((ValueCell!8183 0))(
  ( (ValueCellFull!8183 (v!11091 V!28041)) (EmptyCell!8183) )
))
(declare-datatypes ((array!50606 0))(
  ( (array!50607 (arr!24329 (Array (_ BitVec 32) ValueCell!8183)) (size!24770 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50606)

(declare-datatypes ((array!50608 0))(
  ( (array!50609 (arr!24330 (Array (_ BitVec 32) (_ BitVec 64))) (size!24771 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50608)

(assert (=> b!872863 (= res!593325 (and (= (size!24770 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24771 _keys!868) (size!24770 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!872864 () Bool)

(declare-fun e!486110 () Bool)

(declare-fun tp_is_empty!17245 () Bool)

(assert (=> b!872864 (= e!486110 tp_is_empty!17245)))

(declare-fun b!872865 () Bool)

(declare-fun e!486114 () Bool)

(assert (=> b!872865 (= e!486114 tp_is_empty!17245)))

(declare-fun b!872866 () Bool)

(declare-fun res!593324 () Bool)

(assert (=> b!872866 (=> (not res!593324) (not e!486112))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50608 (_ BitVec 32)) Bool)

(assert (=> b!872866 (= res!593324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!27470 () Bool)

(declare-fun mapRes!27470 () Bool)

(assert (=> mapIsEmpty!27470 mapRes!27470))

(declare-fun e!486109 () Bool)

(declare-datatypes ((tuple2!11456 0))(
  ( (tuple2!11457 (_1!5738 (_ BitVec 64)) (_2!5738 V!28041)) )
))
(declare-datatypes ((List!17341 0))(
  ( (Nil!17338) (Cons!17337 (h!18468 tuple2!11456) (t!24386 List!17341)) )
))
(declare-datatypes ((ListLongMap!10239 0))(
  ( (ListLongMap!10240 (toList!5135 List!17341)) )
))
(declare-fun call!38507 () ListLongMap!10239)

(declare-fun v!557 () V!28041)

(declare-fun call!38506 () ListLongMap!10239)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun b!872867 () Bool)

(declare-fun +!2413 (ListLongMap!10239 tuple2!11456) ListLongMap!10239)

(assert (=> b!872867 (= e!486109 (= call!38507 (+!2413 call!38506 (tuple2!11457 k!854 v!557))))))

(declare-fun b!872868 () Bool)

(declare-fun res!593323 () Bool)

(assert (=> b!872868 (=> (not res!593323) (not e!486112))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!872868 (= res!593323 (validMask!0 mask!1196))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun b!872869 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28041)

(declare-fun zeroValue!654 () V!28041)

(declare-fun getCurrentListMapNoExtraKeys!3099 (array!50608 array!50606 (_ BitVec 32) (_ BitVec 32) V!28041 V!28041 (_ BitVec 32) Int) ListLongMap!10239)

(assert (=> b!872869 (= e!486112 (not (= (getCurrentListMapNoExtraKeys!3099 _keys!868 (array!50607 (store (arr!24329 _values!688) i!612 (ValueCellFull!8183 v!557)) (size!24770 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) (getCurrentListMapNoExtraKeys!3099 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))))

(assert (=> b!872869 e!486109))

(declare-fun c!92331 () Bool)

(assert (=> b!872869 (= c!92331 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29880 0))(
  ( (Unit!29881) )
))
(declare-fun lt!395619 () Unit!29880)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!645 (array!50608 array!50606 (_ BitVec 32) (_ BitVec 32) V!28041 V!28041 (_ BitVec 32) (_ BitVec 64) V!28041 (_ BitVec 32) Int) Unit!29880)

(assert (=> b!872869 (= lt!395619 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!645 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38503 () Bool)

(assert (=> bm!38503 (= call!38507 (getCurrentListMapNoExtraKeys!3099 _keys!868 (array!50607 (store (arr!24329 _values!688) i!612 (ValueCellFull!8183 v!557)) (size!24770 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!27470 () Bool)

(declare-fun tp!52691 () Bool)

(assert (=> mapNonEmpty!27470 (= mapRes!27470 (and tp!52691 e!486114))))

(declare-fun mapKey!27470 () (_ BitVec 32))

(declare-fun mapValue!27470 () ValueCell!8183)

(declare-fun mapRest!27470 () (Array (_ BitVec 32) ValueCell!8183))

(assert (=> mapNonEmpty!27470 (= (arr!24329 _values!688) (store mapRest!27470 mapKey!27470 mapValue!27470))))

(declare-fun res!593322 () Bool)

(assert (=> start!74234 (=> (not res!593322) (not e!486112))))

(assert (=> start!74234 (= res!593322 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24771 _keys!868))))))

(assert (=> start!74234 e!486112))

(assert (=> start!74234 tp_is_empty!17245))

(assert (=> start!74234 true))

(assert (=> start!74234 tp!52690))

(declare-fun array_inv!19176 (array!50608) Bool)

(assert (=> start!74234 (array_inv!19176 _keys!868)))

(declare-fun e!486113 () Bool)

(declare-fun array_inv!19177 (array!50606) Bool)

(assert (=> start!74234 (and (array_inv!19177 _values!688) e!486113)))

(declare-fun b!872870 () Bool)

(declare-fun res!593321 () Bool)

(assert (=> b!872870 (=> (not res!593321) (not e!486112))))

(declare-datatypes ((List!17342 0))(
  ( (Nil!17339) (Cons!17338 (h!18469 (_ BitVec 64)) (t!24387 List!17342)) )
))
(declare-fun arrayNoDuplicates!0 (array!50608 (_ BitVec 32) List!17342) Bool)

(assert (=> b!872870 (= res!593321 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17339))))

(declare-fun b!872871 () Bool)

(declare-fun res!593320 () Bool)

(assert (=> b!872871 (=> (not res!593320) (not e!486112))))

(assert (=> b!872871 (= res!593320 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24771 _keys!868))))))

(declare-fun b!872872 () Bool)

(assert (=> b!872872 (= e!486109 (= call!38507 call!38506))))

(declare-fun b!872873 () Bool)

(declare-fun res!593319 () Bool)

(assert (=> b!872873 (=> (not res!593319) (not e!486112))))

(assert (=> b!872873 (= res!593319 (and (= (select (arr!24330 _keys!868) i!612) k!854) (bvsgt from!1053 i!612) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!24771 _keys!868)) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))))

(declare-fun bm!38504 () Bool)

(assert (=> bm!38504 (= call!38506 (getCurrentListMapNoExtraKeys!3099 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!872874 () Bool)

(assert (=> b!872874 (= e!486113 (and e!486110 mapRes!27470))))

(declare-fun condMapEmpty!27470 () Bool)

(declare-fun mapDefault!27470 () ValueCell!8183)

