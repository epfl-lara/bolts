; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73808 () Bool)

(assert start!73808)

(declare-fun b_free!14695 () Bool)

(declare-fun b_next!14695 () Bool)

(assert (=> start!73808 (= b_free!14695 (not b_next!14695))))

(declare-fun tp!51589 () Bool)

(declare-fun b_and!24387 () Bool)

(assert (=> start!73808 (= tp!51589 b_and!24387)))

(declare-fun b!865475 () Bool)

(declare-fun e!482163 () Bool)

(assert (=> b!865475 (= e!482163 true)))

(declare-datatypes ((V!27489 0))(
  ( (V!27490 (val!8463 Int)) )
))
(declare-datatypes ((tuple2!11220 0))(
  ( (tuple2!11221 (_1!5620 (_ BitVec 64)) (_2!5620 V!27489)) )
))
(declare-datatypes ((List!17084 0))(
  ( (Nil!17081) (Cons!17080 (h!18211 tuple2!11220) (t!24053 List!17084)) )
))
(declare-datatypes ((ListLongMap!10003 0))(
  ( (ListLongMap!10004 (toList!5017 List!17084)) )
))
(declare-fun lt!392278 () ListLongMap!10003)

(declare-fun lt!392276 () tuple2!11220)

(declare-fun lt!392274 () ListLongMap!10003)

(declare-fun lt!392289 () tuple2!11220)

(declare-fun +!2313 (ListLongMap!10003 tuple2!11220) ListLongMap!10003)

(assert (=> b!865475 (= lt!392274 (+!2313 (+!2313 lt!392278 lt!392276) lt!392289))))

(declare-datatypes ((Unit!29623 0))(
  ( (Unit!29624) )
))
(declare-fun lt!392287 () Unit!29623)

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49806 0))(
  ( (array!49807 (arr!23930 (Array (_ BitVec 32) (_ BitVec 64))) (size!24371 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49806)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lt!392275 () V!27489)

(declare-fun v!557 () V!27489)

(declare-fun addCommutativeForDiffKeys!520 (ListLongMap!10003 (_ BitVec 64) V!27489 (_ BitVec 64) V!27489) Unit!29623)

(assert (=> b!865475 (= lt!392287 (addCommutativeForDiffKeys!520 lt!392278 k!854 v!557 (select (arr!23930 _keys!868) from!1053) lt!392275))))

(declare-fun mapNonEmpty!26846 () Bool)

(declare-fun mapRes!26846 () Bool)

(declare-fun tp!51590 () Bool)

(declare-fun e!482160 () Bool)

(assert (=> mapNonEmpty!26846 (= mapRes!26846 (and tp!51590 e!482160))))

(declare-fun mapKey!26846 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7976 0))(
  ( (ValueCellFull!7976 (v!10884 V!27489)) (EmptyCell!7976) )
))
(declare-datatypes ((array!49808 0))(
  ( (array!49809 (arr!23931 (Array (_ BitVec 32) ValueCell!7976)) (size!24372 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49808)

(declare-fun mapValue!26846 () ValueCell!7976)

(declare-fun mapRest!26846 () (Array (_ BitVec 32) ValueCell!7976))

(assert (=> mapNonEmpty!26846 (= (arr!23931 _values!688) (store mapRest!26846 mapKey!26846 mapValue!26846))))

(declare-fun b!865476 () Bool)

(declare-fun res!588179 () Bool)

(declare-fun e!482161 () Bool)

(assert (=> b!865476 (=> (not res!588179) (not e!482161))))

(declare-datatypes ((List!17085 0))(
  ( (Nil!17082) (Cons!17081 (h!18212 (_ BitVec 64)) (t!24054 List!17085)) )
))
(declare-fun arrayNoDuplicates!0 (array!49806 (_ BitVec 32) List!17085) Bool)

(assert (=> b!865476 (= res!588179 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17082))))

(declare-fun res!588180 () Bool)

(assert (=> start!73808 (=> (not res!588180) (not e!482161))))

(assert (=> start!73808 (= res!588180 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24371 _keys!868))))))

(assert (=> start!73808 e!482161))

(declare-fun tp_is_empty!16831 () Bool)

(assert (=> start!73808 tp_is_empty!16831))

(assert (=> start!73808 true))

(assert (=> start!73808 tp!51589))

(declare-fun array_inv!18900 (array!49806) Bool)

(assert (=> start!73808 (array_inv!18900 _keys!868)))

(declare-fun e!482155 () Bool)

(declare-fun array_inv!18901 (array!49808) Bool)

(assert (=> start!73808 (and (array_inv!18901 _values!688) e!482155)))

(declare-fun b!865477 () Bool)

(declare-fun e!482156 () Bool)

(assert (=> b!865477 (= e!482156 e!482163)))

(declare-fun res!588185 () Bool)

(assert (=> b!865477 (=> res!588185 e!482163)))

(assert (=> b!865477 (= res!588185 (= k!854 (select (arr!23930 _keys!868) from!1053)))))

(assert (=> b!865477 (not (= (select (arr!23930 _keys!868) from!1053) k!854))))

(declare-fun lt!392282 () Unit!29623)

(declare-fun e!482158 () Unit!29623)

(assert (=> b!865477 (= lt!392282 e!482158)))

(declare-fun c!92181 () Bool)

(assert (=> b!865477 (= c!92181 (= (select (arr!23930 _keys!868) from!1053) k!854))))

(declare-fun lt!392281 () ListLongMap!10003)

(assert (=> b!865477 (= lt!392281 lt!392274)))

(declare-fun lt!392284 () ListLongMap!10003)

(assert (=> b!865477 (= lt!392274 (+!2313 lt!392284 lt!392276))))

(assert (=> b!865477 (= lt!392276 (tuple2!11221 (select (arr!23930 _keys!868) from!1053) lt!392275))))

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12663 (ValueCell!7976 V!27489) V!27489)

(declare-fun dynLambda!1181 (Int (_ BitVec 64)) V!27489)

(assert (=> b!865477 (= lt!392275 (get!12663 (select (arr!23931 _values!688) from!1053) (dynLambda!1181 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!865478 () Bool)

(declare-fun Unit!29625 () Unit!29623)

(assert (=> b!865478 (= e!482158 Unit!29625)))

(declare-fun b!865479 () Bool)

(declare-fun e!482159 () Bool)

(assert (=> b!865479 (= e!482155 (and e!482159 mapRes!26846))))

(declare-fun condMapEmpty!26846 () Bool)

(declare-fun mapDefault!26846 () ValueCell!7976)

