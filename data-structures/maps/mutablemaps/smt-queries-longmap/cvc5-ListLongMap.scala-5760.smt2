; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74436 () Bool)

(assert start!74436)

(declare-fun b_free!15151 () Bool)

(declare-fun b_next!15151 () Bool)

(assert (=> start!74436 (= b_free!15151 (not b_next!15151))))

(declare-fun tp!53132 () Bool)

(declare-fun b_and!24973 () Bool)

(assert (=> start!74436 (= tp!53132 b_and!24973)))

(declare-fun b!875909 () Bool)

(declare-fun res!595328 () Bool)

(declare-fun e!487647 () Bool)

(assert (=> b!875909 (=> (not res!595328) (not e!487647))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50898 0))(
  ( (array!50899 (arr!24472 (Array (_ BitVec 32) (_ BitVec 64))) (size!24913 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50898)

(declare-datatypes ((V!28241 0))(
  ( (V!28242 (val!8745 Int)) )
))
(declare-datatypes ((ValueCell!8258 0))(
  ( (ValueCellFull!8258 (v!11174 V!28241)) (EmptyCell!8258) )
))
(declare-datatypes ((array!50900 0))(
  ( (array!50901 (arr!24473 (Array (_ BitVec 32) ValueCell!8258)) (size!24914 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50900)

(assert (=> b!875909 (= res!595328 (and (= (size!24914 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24913 _keys!868) (size!24914 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!875910 () Bool)

(declare-fun res!595324 () Bool)

(assert (=> b!875910 (=> (not res!595324) (not e!487647))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!875910 (= res!595324 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24913 _keys!868))))))

(declare-fun mapNonEmpty!27704 () Bool)

(declare-fun mapRes!27704 () Bool)

(declare-fun tp!53131 () Bool)

(declare-fun e!487644 () Bool)

(assert (=> mapNonEmpty!27704 (= mapRes!27704 (and tp!53131 e!487644))))

(declare-fun mapValue!27704 () ValueCell!8258)

(declare-fun mapKey!27704 () (_ BitVec 32))

(declare-fun mapRest!27704 () (Array (_ BitVec 32) ValueCell!8258))

(assert (=> mapNonEmpty!27704 (= (arr!24473 _values!688) (store mapRest!27704 mapKey!27704 mapValue!27704))))

(declare-fun b!875911 () Bool)

(declare-fun res!595325 () Bool)

(assert (=> b!875911 (=> (not res!595325) (not e!487647))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!875911 (= res!595325 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27704 () Bool)

(assert (=> mapIsEmpty!27704 mapRes!27704))

(declare-fun b!875912 () Bool)

(declare-fun e!487649 () Bool)

(declare-fun tp_is_empty!17395 () Bool)

(assert (=> b!875912 (= e!487649 tp_is_empty!17395)))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11564 0))(
  ( (tuple2!11565 (_1!5792 (_ BitVec 64)) (_2!5792 V!28241)) )
))
(declare-datatypes ((List!17450 0))(
  ( (Nil!17447) (Cons!17446 (h!18577 tuple2!11564) (t!24513 List!17450)) )
))
(declare-datatypes ((ListLongMap!10347 0))(
  ( (ListLongMap!10348 (toList!5189 List!17450)) )
))
(declare-fun call!38697 () ListLongMap!10347)

(declare-fun bm!38693 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28241)

(declare-fun zeroValue!654 () V!28241)

(declare-fun lt!396330 () array!50900)

(declare-fun getCurrentListMapNoExtraKeys!3152 (array!50898 array!50900 (_ BitVec 32) (_ BitVec 32) V!28241 V!28241 (_ BitVec 32) Int) ListLongMap!10347)

(assert (=> bm!38693 (= call!38697 (getCurrentListMapNoExtraKeys!3152 _keys!868 lt!396330 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!875913 () Bool)

(assert (=> b!875913 (= e!487644 tp_is_empty!17395)))

(declare-fun b!875914 () Bool)

(declare-fun v!557 () V!28241)

(declare-fun call!38696 () ListLongMap!10347)

(declare-fun e!487646 () Bool)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2428 (ListLongMap!10347 tuple2!11564) ListLongMap!10347)

(assert (=> b!875914 (= e!487646 (= call!38697 (+!2428 call!38696 (tuple2!11565 k!854 v!557))))))

(declare-fun res!595332 () Bool)

(assert (=> start!74436 (=> (not res!595332) (not e!487647))))

(assert (=> start!74436 (= res!595332 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24913 _keys!868))))))

(assert (=> start!74436 e!487647))

(assert (=> start!74436 tp_is_empty!17395))

(assert (=> start!74436 true))

(assert (=> start!74436 tp!53132))

(declare-fun array_inv!19274 (array!50898) Bool)

(assert (=> start!74436 (array_inv!19274 _keys!868)))

(declare-fun e!487643 () Bool)

(declare-fun array_inv!19275 (array!50900) Bool)

(assert (=> start!74436 (and (array_inv!19275 _values!688) e!487643)))

(declare-fun b!875915 () Bool)

(declare-fun res!595326 () Bool)

(assert (=> b!875915 (=> (not res!595326) (not e!487647))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!875915 (= res!595326 (validKeyInArray!0 k!854))))

(declare-fun b!875916 () Bool)

(assert (=> b!875916 (= e!487643 (and e!487649 mapRes!27704))))

(declare-fun condMapEmpty!27704 () Bool)

(declare-fun mapDefault!27704 () ValueCell!8258)

