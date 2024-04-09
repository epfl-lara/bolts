; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73922 () Bool)

(assert start!73922)

(declare-fun b_free!14809 () Bool)

(declare-fun b_next!14809 () Bool)

(assert (=> start!73922 (= b_free!14809 (not b_next!14809))))

(declare-fun tp!51932 () Bool)

(declare-fun b_and!24579 () Bool)

(assert (=> start!73922 (= tp!51932 b_and!24579)))

(declare-fun b!868065 () Bool)

(declare-fun res!589950 () Bool)

(declare-fun e!483530 () Bool)

(assert (=> b!868065 (=> (not res!589950) (not e!483530))))

(declare-datatypes ((array!50028 0))(
  ( (array!50029 (arr!24041 (Array (_ BitVec 32) (_ BitVec 64))) (size!24482 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50028)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50028 (_ BitVec 32)) Bool)

(assert (=> b!868065 (= res!589950 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!868066 () Bool)

(declare-fun e!483528 () Bool)

(assert (=> b!868066 (= e!483530 e!483528)))

(declare-fun res!589951 () Bool)

(assert (=> b!868066 (=> (not res!589951) (not e!483528))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!868066 (= res!589951 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!27641 0))(
  ( (V!27642 (val!8520 Int)) )
))
(declare-datatypes ((tuple2!11308 0))(
  ( (tuple2!11309 (_1!5664 (_ BitVec 64)) (_2!5664 V!27641)) )
))
(declare-datatypes ((List!17169 0))(
  ( (Nil!17166) (Cons!17165 (h!18296 tuple2!11308) (t!24214 List!17169)) )
))
(declare-datatypes ((ListLongMap!10091 0))(
  ( (ListLongMap!10092 (toList!5061 List!17169)) )
))
(declare-fun lt!394339 () ListLongMap!10091)

(declare-fun minValue!654 () V!27641)

(declare-fun zeroValue!654 () V!27641)

(declare-datatypes ((ValueCell!8033 0))(
  ( (ValueCellFull!8033 (v!10941 V!27641)) (EmptyCell!8033) )
))
(declare-datatypes ((array!50030 0))(
  ( (array!50031 (arr!24042 (Array (_ BitVec 32) ValueCell!8033)) (size!24483 (_ BitVec 32))) )
))
(declare-fun lt!394340 () array!50030)

(declare-fun getCurrentListMapNoExtraKeys!3025 (array!50028 array!50030 (_ BitVec 32) (_ BitVec 32) V!27641 V!27641 (_ BitVec 32) Int) ListLongMap!10091)

(assert (=> b!868066 (= lt!394339 (getCurrentListMapNoExtraKeys!3025 _keys!868 lt!394340 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27641)

(declare-fun _values!688 () array!50030)

(assert (=> b!868066 (= lt!394340 (array!50031 (store (arr!24042 _values!688) i!612 (ValueCellFull!8033 v!557)) (size!24483 _values!688)))))

(declare-fun lt!394341 () ListLongMap!10091)

(assert (=> b!868066 (= lt!394341 (getCurrentListMapNoExtraKeys!3025 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868067 () Bool)

(declare-fun res!589954 () Bool)

(assert (=> b!868067 (=> (not res!589954) (not e!483530))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!868067 (= res!589954 (and (= (select (arr!24041 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!868068 () Bool)

(declare-fun e!483529 () Bool)

(declare-fun e!483527 () Bool)

(declare-fun mapRes!27017 () Bool)

(assert (=> b!868068 (= e!483529 (and e!483527 mapRes!27017))))

(declare-fun condMapEmpty!27017 () Bool)

(declare-fun mapDefault!27017 () ValueCell!8033)

