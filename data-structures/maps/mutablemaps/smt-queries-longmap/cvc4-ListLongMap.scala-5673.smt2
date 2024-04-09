; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73854 () Bool)

(assert start!73854)

(declare-fun b_free!14741 () Bool)

(declare-fun b_next!14741 () Bool)

(assert (=> start!73854 (= b_free!14741 (not b_next!14741))))

(declare-fun tp!51728 () Bool)

(declare-fun b_and!24479 () Bool)

(assert (=> start!73854 (= tp!51728 b_and!24479)))

(declare-fun b!866625 () Bool)

(declare-fun res!588940 () Bool)

(declare-fun e!482780 () Bool)

(assert (=> b!866625 (=> (not res!588940) (not e!482780))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!866625 (= res!588940 (validMask!0 mask!1196))))

(declare-fun b!866626 () Bool)

(declare-fun res!588943 () Bool)

(assert (=> b!866626 (=> (not res!588943) (not e!482780))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!49894 0))(
  ( (array!49895 (arr!23974 (Array (_ BitVec 32) (_ BitVec 64))) (size!24415 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49894)

(declare-datatypes ((V!27549 0))(
  ( (V!27550 (val!8486 Int)) )
))
(declare-datatypes ((ValueCell!7999 0))(
  ( (ValueCellFull!7999 (v!10907 V!27549)) (EmptyCell!7999) )
))
(declare-datatypes ((array!49896 0))(
  ( (array!49897 (arr!23975 (Array (_ BitVec 32) ValueCell!7999)) (size!24416 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49896)

(assert (=> b!866626 (= res!588943 (and (= (size!24416 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24415 _keys!868) (size!24416 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!866627 () Bool)

(declare-fun e!482783 () Bool)

(assert (=> b!866627 (= e!482783 true)))

(declare-datatypes ((tuple2!11258 0))(
  ( (tuple2!11259 (_1!5639 (_ BitVec 64)) (_2!5639 V!27549)) )
))
(declare-datatypes ((List!17121 0))(
  ( (Nil!17118) (Cons!17117 (h!18248 tuple2!11258) (t!24136 List!17121)) )
))
(declare-datatypes ((ListLongMap!10041 0))(
  ( (ListLongMap!10042 (toList!5036 List!17121)) )
))
(declare-fun lt!393384 () ListLongMap!10041)

(declare-fun lt!393385 () tuple2!11258)

(declare-fun lt!393380 () ListLongMap!10041)

(declare-fun lt!393387 () tuple2!11258)

(declare-fun +!2332 (ListLongMap!10041 tuple2!11258) ListLongMap!10041)

(assert (=> b!866627 (= lt!393380 (+!2332 (+!2332 lt!393384 lt!393385) lt!393387))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun v!557 () V!27549)

(declare-datatypes ((Unit!29691 0))(
  ( (Unit!29692) )
))
(declare-fun lt!393390 () Unit!29691)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun lt!393391 () V!27549)

(declare-fun addCommutativeForDiffKeys!534 (ListLongMap!10041 (_ BitVec 64) V!27549 (_ BitVec 64) V!27549) Unit!29691)

(assert (=> b!866627 (= lt!393390 (addCommutativeForDiffKeys!534 lt!393384 k!854 v!557 (select (arr!23974 _keys!868) from!1053) lt!393391))))

(declare-fun mapIsEmpty!26915 () Bool)

(declare-fun mapRes!26915 () Bool)

(assert (=> mapIsEmpty!26915 mapRes!26915))

(declare-fun b!866629 () Bool)

(declare-fun res!588938 () Bool)

(assert (=> b!866629 (=> (not res!588938) (not e!482780))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!866629 (= res!588938 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24415 _keys!868))))))

(declare-fun b!866630 () Bool)

(declare-fun res!588939 () Bool)

(assert (=> b!866630 (=> (not res!588939) (not e!482780))))

(declare-datatypes ((List!17122 0))(
  ( (Nil!17119) (Cons!17118 (h!18249 (_ BitVec 64)) (t!24137 List!17122)) )
))
(declare-fun arrayNoDuplicates!0 (array!49894 (_ BitVec 32) List!17122) Bool)

(assert (=> b!866630 (= res!588939 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17119))))

(declare-fun mapNonEmpty!26915 () Bool)

(declare-fun tp!51727 () Bool)

(declare-fun e!482777 () Bool)

(assert (=> mapNonEmpty!26915 (= mapRes!26915 (and tp!51727 e!482777))))

(declare-fun mapValue!26915 () ValueCell!7999)

(declare-fun mapKey!26915 () (_ BitVec 32))

(declare-fun mapRest!26915 () (Array (_ BitVec 32) ValueCell!7999))

(assert (=> mapNonEmpty!26915 (= (arr!23975 _values!688) (store mapRest!26915 mapKey!26915 mapValue!26915))))

(declare-fun b!866631 () Bool)

(declare-fun e!482776 () Bool)

(assert (=> b!866631 (= e!482776 e!482783)))

(declare-fun res!588942 () Bool)

(assert (=> b!866631 (=> res!588942 e!482783)))

(assert (=> b!866631 (= res!588942 (= k!854 (select (arr!23974 _keys!868) from!1053)))))

(assert (=> b!866631 (not (= (select (arr!23974 _keys!868) from!1053) k!854))))

(declare-fun lt!393388 () Unit!29691)

(declare-fun e!482784 () Unit!29691)

(assert (=> b!866631 (= lt!393388 e!482784)))

(declare-fun c!92250 () Bool)

(assert (=> b!866631 (= c!92250 (= (select (arr!23974 _keys!868) from!1053) k!854))))

(declare-fun lt!393386 () ListLongMap!10041)

(assert (=> b!866631 (= lt!393386 lt!393380)))

(declare-fun lt!393392 () ListLongMap!10041)

(assert (=> b!866631 (= lt!393380 (+!2332 lt!393392 lt!393385))))

(assert (=> b!866631 (= lt!393385 (tuple2!11259 (select (arr!23974 _keys!868) from!1053) lt!393391))))

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12694 (ValueCell!7999 V!27549) V!27549)

(declare-fun dynLambda!1198 (Int (_ BitVec 64)) V!27549)

(assert (=> b!866631 (= lt!393391 (get!12694 (select (arr!23975 _values!688) from!1053) (dynLambda!1198 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!866632 () Bool)

(declare-fun tp_is_empty!16877 () Bool)

(assert (=> b!866632 (= e!482777 tp_is_empty!16877)))

(declare-fun b!866633 () Bool)

(declare-fun Unit!29693 () Unit!29691)

(assert (=> b!866633 (= e!482784 Unit!29693)))

(declare-fun b!866634 () Bool)

(declare-fun e!482781 () Bool)

(declare-fun e!482782 () Bool)

(assert (=> b!866634 (= e!482781 (and e!482782 mapRes!26915))))

(declare-fun condMapEmpty!26915 () Bool)

(declare-fun mapDefault!26915 () ValueCell!7999)

