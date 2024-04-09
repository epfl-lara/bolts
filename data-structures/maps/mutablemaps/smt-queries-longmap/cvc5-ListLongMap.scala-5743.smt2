; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74314 () Bool)

(assert start!74314)

(declare-fun b_free!15049 () Bool)

(declare-fun b_next!15049 () Bool)

(assert (=> start!74314 (= b_free!15049 (not b_next!15049))))

(declare-fun tp!52823 () Bool)

(declare-fun b_and!24843 () Bool)

(assert (=> start!74314 (= tp!52823 b_and!24843)))

(declare-fun b!873833 () Bool)

(declare-fun res!593932 () Bool)

(declare-fun e!486612 () Bool)

(assert (=> b!873833 (=> (not res!593932) (not e!486612))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50700 0))(
  ( (array!50701 (arr!24374 (Array (_ BitVec 32) (_ BitVec 64))) (size!24815 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50700)

(assert (=> b!873833 (= res!593932 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24815 _keys!868))))))

(declare-fun b!873834 () Bool)

(declare-fun res!593929 () Bool)

(assert (=> b!873834 (=> (not res!593929) (not e!486612))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!873834 (= res!593929 (validMask!0 mask!1196))))

(declare-fun b!873835 () Bool)

(declare-fun res!593931 () Bool)

(assert (=> b!873835 (=> (not res!593931) (not e!486612))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50700 (_ BitVec 32)) Bool)

(assert (=> b!873835 (= res!593931 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!873836 () Bool)

(declare-fun res!593933 () Bool)

(assert (=> b!873836 (=> (not res!593933) (not e!486612))))

(declare-datatypes ((List!17372 0))(
  ( (Nil!17369) (Cons!17368 (h!18499 (_ BitVec 64)) (t!24421 List!17372)) )
))
(declare-fun arrayNoDuplicates!0 (array!50700 (_ BitVec 32) List!17372) Bool)

(assert (=> b!873836 (= res!593933 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17369))))

(declare-fun b!873837 () Bool)

(declare-fun e!486611 () Bool)

(declare-fun tp_is_empty!17293 () Bool)

(assert (=> b!873837 (= e!486611 tp_is_empty!17293)))

(declare-fun mapNonEmpty!27548 () Bool)

(declare-fun mapRes!27548 () Bool)

(declare-fun tp!52822 () Bool)

(assert (=> mapNonEmpty!27548 (= mapRes!27548 (and tp!52822 e!486611))))

(declare-fun mapKey!27548 () (_ BitVec 32))

(declare-datatypes ((V!28105 0))(
  ( (V!28106 (val!8694 Int)) )
))
(declare-datatypes ((ValueCell!8207 0))(
  ( (ValueCellFull!8207 (v!11119 V!28105)) (EmptyCell!8207) )
))
(declare-fun mapRest!27548 () (Array (_ BitVec 32) ValueCell!8207))

(declare-fun mapValue!27548 () ValueCell!8207)

(declare-datatypes ((array!50702 0))(
  ( (array!50703 (arr!24375 (Array (_ BitVec 32) ValueCell!8207)) (size!24816 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50702)

(assert (=> mapNonEmpty!27548 (= (arr!24375 _values!688) (store mapRest!27548 mapKey!27548 mapValue!27548))))

(declare-fun res!593934 () Bool)

(assert (=> start!74314 (=> (not res!593934) (not e!486612))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!74314 (= res!593934 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24815 _keys!868))))))

(assert (=> start!74314 e!486612))

(assert (=> start!74314 tp_is_empty!17293))

(assert (=> start!74314 true))

(assert (=> start!74314 tp!52823))

(declare-fun array_inv!19206 (array!50700) Bool)

(assert (=> start!74314 (array_inv!19206 _keys!868)))

(declare-fun e!486610 () Bool)

(declare-fun array_inv!19207 (array!50702) Bool)

(assert (=> start!74314 (and (array_inv!19207 _values!688) e!486610)))

(declare-fun b!873838 () Bool)

(declare-fun res!593930 () Bool)

(assert (=> b!873838 (=> (not res!593930) (not e!486612))))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!873838 (= res!593930 (and (= (select (arr!24374 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!873839 () Bool)

(assert (=> b!873839 (= e!486612 false)))

(declare-datatypes ((tuple2!11484 0))(
  ( (tuple2!11485 (_1!5752 (_ BitVec 64)) (_2!5752 V!28105)) )
))
(declare-datatypes ((List!17373 0))(
  ( (Nil!17370) (Cons!17369 (h!18500 tuple2!11484) (t!24422 List!17373)) )
))
(declare-datatypes ((ListLongMap!10267 0))(
  ( (ListLongMap!10268 (toList!5149 List!17373)) )
))
(declare-fun lt!395805 () ListLongMap!10267)

(declare-fun v!557 () V!28105)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28105)

(declare-fun zeroValue!654 () V!28105)

(declare-fun getCurrentListMapNoExtraKeys!3113 (array!50700 array!50702 (_ BitVec 32) (_ BitVec 32) V!28105 V!28105 (_ BitVec 32) Int) ListLongMap!10267)

(assert (=> b!873839 (= lt!395805 (getCurrentListMapNoExtraKeys!3113 _keys!868 (array!50703 (store (arr!24375 _values!688) i!612 (ValueCellFull!8207 v!557)) (size!24816 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!395806 () ListLongMap!10267)

(assert (=> b!873839 (= lt!395806 (getCurrentListMapNoExtraKeys!3113 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!27548 () Bool)

(assert (=> mapIsEmpty!27548 mapRes!27548))

(declare-fun b!873840 () Bool)

(declare-fun res!593928 () Bool)

(assert (=> b!873840 (=> (not res!593928) (not e!486612))))

(assert (=> b!873840 (= res!593928 (and (= (size!24816 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24815 _keys!868) (size!24816 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!873841 () Bool)

(declare-fun e!486609 () Bool)

(assert (=> b!873841 (= e!486610 (and e!486609 mapRes!27548))))

(declare-fun condMapEmpty!27548 () Bool)

(declare-fun mapDefault!27548 () ValueCell!8207)

