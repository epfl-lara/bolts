; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73740 () Bool)

(assert start!73740)

(declare-fun b_free!14627 () Bool)

(declare-fun b_next!14627 () Bool)

(assert (=> start!73740 (= b_free!14627 (not b_next!14627))))

(declare-fun tp!51385 () Bool)

(declare-fun b_and!24251 () Bool)

(assert (=> start!73740 (= tp!51385 b_and!24251)))

(declare-fun b!863775 () Bool)

(declare-fun res!587063 () Bool)

(declare-fun e!481239 () Bool)

(assert (=> b!863775 (=> (not res!587063) (not e!481239))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!49670 0))(
  ( (array!49671 (arr!23862 (Array (_ BitVec 32) (_ BitVec 64))) (size!24303 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49670)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!863775 (= res!587063 (and (= (select (arr!23862 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!863776 () Bool)

(declare-fun e!481244 () Bool)

(assert (=> b!863776 (= e!481244 true)))

(declare-datatypes ((V!27397 0))(
  ( (V!27398 (val!8429 Int)) )
))
(declare-datatypes ((tuple2!11158 0))(
  ( (tuple2!11159 (_1!5589 (_ BitVec 64)) (_2!5589 V!27397)) )
))
(declare-fun lt!390649 () tuple2!11158)

(declare-fun lt!390656 () tuple2!11158)

(declare-datatypes ((List!17026 0))(
  ( (Nil!17023) (Cons!17022 (h!18153 tuple2!11158) (t!23927 List!17026)) )
))
(declare-datatypes ((ListLongMap!9941 0))(
  ( (ListLongMap!9942 (toList!4986 List!17026)) )
))
(declare-fun lt!390645 () ListLongMap!9941)

(declare-fun lt!390648 () ListLongMap!9941)

(declare-fun +!2283 (ListLongMap!9941 tuple2!11158) ListLongMap!9941)

(assert (=> b!863776 (= lt!390645 (+!2283 (+!2283 lt!390648 lt!390656) lt!390649))))

(declare-datatypes ((Unit!29509 0))(
  ( (Unit!29510) )
))
(declare-fun lt!390643 () Unit!29509)

(declare-fun v!557 () V!27397)

(declare-fun lt!390646 () V!27397)

(declare-fun addCommutativeForDiffKeys!495 (ListLongMap!9941 (_ BitVec 64) V!27397 (_ BitVec 64) V!27397) Unit!29509)

(assert (=> b!863776 (= lt!390643 (addCommutativeForDiffKeys!495 lt!390648 k!854 v!557 (select (arr!23862 _keys!868) from!1053) lt!390646))))

(declare-fun mapNonEmpty!26744 () Bool)

(declare-fun mapRes!26744 () Bool)

(declare-fun tp!51386 () Bool)

(declare-fun e!481237 () Bool)

(assert (=> mapNonEmpty!26744 (= mapRes!26744 (and tp!51386 e!481237))))

(declare-fun mapKey!26744 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7942 0))(
  ( (ValueCellFull!7942 (v!10850 V!27397)) (EmptyCell!7942) )
))
(declare-fun mapRest!26744 () (Array (_ BitVec 32) ValueCell!7942))

(declare-fun mapValue!26744 () ValueCell!7942)

(declare-datatypes ((array!49672 0))(
  ( (array!49673 (arr!23863 (Array (_ BitVec 32) ValueCell!7942)) (size!24304 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49672)

(assert (=> mapNonEmpty!26744 (= (arr!23863 _values!688) (store mapRest!26744 mapKey!26744 mapValue!26744))))

(declare-fun b!863777 () Bool)

(declare-fun res!587065 () Bool)

(assert (=> b!863777 (=> (not res!587065) (not e!481239))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!863777 (= res!587065 (validKeyInArray!0 k!854))))

(declare-fun b!863778 () Bool)

(declare-fun res!587067 () Bool)

(assert (=> b!863778 (=> (not res!587067) (not e!481239))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!863778 (= res!587067 (validMask!0 mask!1196))))

(declare-fun res!587059 () Bool)

(assert (=> start!73740 (=> (not res!587059) (not e!481239))))

(assert (=> start!73740 (= res!587059 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24303 _keys!868))))))

(assert (=> start!73740 e!481239))

(declare-fun tp_is_empty!16763 () Bool)

(assert (=> start!73740 tp_is_empty!16763))

(assert (=> start!73740 true))

(assert (=> start!73740 tp!51385))

(declare-fun array_inv!18850 (array!49670) Bool)

(assert (=> start!73740 (array_inv!18850 _keys!868)))

(declare-fun e!481240 () Bool)

(declare-fun array_inv!18851 (array!49672) Bool)

(assert (=> start!73740 (and (array_inv!18851 _values!688) e!481240)))

(declare-fun b!863779 () Bool)

(assert (=> b!863779 (= e!481237 tp_is_empty!16763)))

(declare-fun b!863780 () Bool)

(declare-fun res!587064 () Bool)

(assert (=> b!863780 (=> (not res!587064) (not e!481239))))

(assert (=> b!863780 (= res!587064 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24303 _keys!868))))))

(declare-fun b!863781 () Bool)

(declare-fun e!481238 () Bool)

(assert (=> b!863781 (= e!481240 (and e!481238 mapRes!26744))))

(declare-fun condMapEmpty!26744 () Bool)

(declare-fun mapDefault!26744 () ValueCell!7942)

