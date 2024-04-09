; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74360 () Bool)

(assert start!74360)

(declare-fun b_free!15095 () Bool)

(declare-fun b_next!15095 () Bool)

(assert (=> start!74360 (= b_free!15095 (not b_next!15095))))

(declare-fun tp!52961 () Bool)

(declare-fun b_and!24889 () Bool)

(assert (=> start!74360 (= tp!52961 b_and!24889)))

(declare-fun b!874592 () Bool)

(declare-fun e!486957 () Bool)

(assert (=> b!874592 (= e!486957 false)))

(declare-datatypes ((V!28165 0))(
  ( (V!28166 (val!8717 Int)) )
))
(declare-fun v!557 () V!28165)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!50790 0))(
  ( (array!50791 (arr!24419 (Array (_ BitVec 32) (_ BitVec 64))) (size!24860 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50790)

(declare-datatypes ((ValueCell!8230 0))(
  ( (ValueCellFull!8230 (v!11142 V!28165)) (EmptyCell!8230) )
))
(declare-datatypes ((array!50792 0))(
  ( (array!50793 (arr!24420 (Array (_ BitVec 32) ValueCell!8230)) (size!24861 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50792)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!28165)

(declare-fun zeroValue!654 () V!28165)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((tuple2!11516 0))(
  ( (tuple2!11517 (_1!5768 (_ BitVec 64)) (_2!5768 V!28165)) )
))
(declare-datatypes ((List!17406 0))(
  ( (Nil!17403) (Cons!17402 (h!18533 tuple2!11516) (t!24455 List!17406)) )
))
(declare-datatypes ((ListLongMap!10299 0))(
  ( (ListLongMap!10300 (toList!5165 List!17406)) )
))
(declare-fun lt!395943 () ListLongMap!10299)

(declare-fun getCurrentListMapNoExtraKeys!3129 (array!50790 array!50792 (_ BitVec 32) (_ BitVec 32) V!28165 V!28165 (_ BitVec 32) Int) ListLongMap!10299)

(assert (=> b!874592 (= lt!395943 (getCurrentListMapNoExtraKeys!3129 _keys!868 (array!50793 (store (arr!24420 _values!688) i!612 (ValueCellFull!8230 v!557)) (size!24861 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395944 () ListLongMap!10299)

(assert (=> b!874592 (= lt!395944 (getCurrentListMapNoExtraKeys!3129 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun res!594487 () Bool)

(assert (=> start!74360 (=> (not res!594487) (not e!486957))))

(assert (=> start!74360 (= res!594487 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24860 _keys!868))))))

(assert (=> start!74360 e!486957))

(declare-fun tp_is_empty!17339 () Bool)

(assert (=> start!74360 tp_is_empty!17339))

(assert (=> start!74360 true))

(assert (=> start!74360 tp!52961))

(declare-fun array_inv!19238 (array!50790) Bool)

(assert (=> start!74360 (array_inv!19238 _keys!868)))

(declare-fun e!486958 () Bool)

(declare-fun array_inv!19239 (array!50792) Bool)

(assert (=> start!74360 (and (array_inv!19239 _values!688) e!486958)))

(declare-fun b!874593 () Bool)

(declare-fun res!594482 () Bool)

(assert (=> b!874593 (=> (not res!594482) (not e!486957))))

(declare-datatypes ((List!17407 0))(
  ( (Nil!17404) (Cons!17403 (h!18534 (_ BitVec 64)) (t!24456 List!17407)) )
))
(declare-fun arrayNoDuplicates!0 (array!50790 (_ BitVec 32) List!17407) Bool)

(assert (=> b!874593 (= res!594482 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17404))))

(declare-fun mapNonEmpty!27617 () Bool)

(declare-fun mapRes!27617 () Bool)

(declare-fun tp!52960 () Bool)

(declare-fun e!486954 () Bool)

(assert (=> mapNonEmpty!27617 (= mapRes!27617 (and tp!52960 e!486954))))

(declare-fun mapRest!27617 () (Array (_ BitVec 32) ValueCell!8230))

(declare-fun mapKey!27617 () (_ BitVec 32))

(declare-fun mapValue!27617 () ValueCell!8230)

(assert (=> mapNonEmpty!27617 (= (arr!24420 _values!688) (store mapRest!27617 mapKey!27617 mapValue!27617))))

(declare-fun b!874594 () Bool)

(declare-fun e!486955 () Bool)

(assert (=> b!874594 (= e!486955 tp_is_empty!17339)))

(declare-fun b!874595 () Bool)

(declare-fun res!594481 () Bool)

(assert (=> b!874595 (=> (not res!594481) (not e!486957))))

(assert (=> b!874595 (= res!594481 (and (= (size!24861 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24860 _keys!868) (size!24861 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!874596 () Bool)

(declare-fun res!594480 () Bool)

(assert (=> b!874596 (=> (not res!594480) (not e!486957))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!874596 (= res!594480 (validMask!0 mask!1196))))

(declare-fun b!874597 () Bool)

(declare-fun res!594485 () Bool)

(assert (=> b!874597 (=> (not res!594485) (not e!486957))))

(assert (=> b!874597 (= res!594485 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24860 _keys!868))))))

(declare-fun b!874598 () Bool)

(declare-fun res!594486 () Bool)

(assert (=> b!874598 (=> (not res!594486) (not e!486957))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!874598 (= res!594486 (validKeyInArray!0 k!854))))

(declare-fun b!874599 () Bool)

(declare-fun res!594484 () Bool)

(assert (=> b!874599 (=> (not res!594484) (not e!486957))))

(assert (=> b!874599 (= res!594484 (and (= (select (arr!24419 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!874600 () Bool)

(assert (=> b!874600 (= e!486954 tp_is_empty!17339)))

(declare-fun b!874601 () Bool)

(assert (=> b!874601 (= e!486958 (and e!486955 mapRes!27617))))

(declare-fun condMapEmpty!27617 () Bool)

(declare-fun mapDefault!27617 () ValueCell!8230)

