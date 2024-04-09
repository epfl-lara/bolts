; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74928 () Bool)

(assert start!74928)

(declare-fun b_free!15419 () Bool)

(declare-fun b_next!15419 () Bool)

(assert (=> start!74928 (= b_free!15419 (not b_next!15419))))

(declare-fun tp!53960 () Bool)

(declare-fun b_and!25555 () Bool)

(assert (=> start!74928 (= tp!53960 b_and!25555)))

(declare-fun b!882895 () Bool)

(declare-fun res!599934 () Bool)

(declare-fun e!491406 () Bool)

(assert (=> b!882895 (=> (not res!599934) (not e!491406))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!882895 (= res!599934 (validKeyInArray!0 k!854))))

(declare-fun b!882896 () Bool)

(declare-fun res!599938 () Bool)

(declare-fun e!491412 () Bool)

(assert (=> b!882896 (=> res!599938 e!491412)))

(declare-datatypes ((List!17659 0))(
  ( (Nil!17656) (Cons!17655 (h!18786 (_ BitVec 64)) (t!24888 List!17659)) )
))
(declare-fun noDuplicate!1325 (List!17659) Bool)

(assert (=> b!882896 (= res!599938 (not (noDuplicate!1325 Nil!17656)))))

(declare-fun b!882897 () Bool)

(declare-fun res!599944 () Bool)

(assert (=> b!882897 (=> (not res!599944) (not e!491406))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51438 0))(
  ( (array!51439 (arr!24734 (Array (_ BitVec 32) (_ BitVec 64))) (size!25175 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51438)

(declare-datatypes ((V!28597 0))(
  ( (V!28598 (val!8879 Int)) )
))
(declare-datatypes ((ValueCell!8392 0))(
  ( (ValueCellFull!8392 (v!11344 V!28597)) (EmptyCell!8392) )
))
(declare-datatypes ((array!51440 0))(
  ( (array!51441 (arr!24735 (Array (_ BitVec 32) ValueCell!8392)) (size!25176 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51440)

(assert (=> b!882897 (= res!599944 (and (= (size!25176 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25175 _keys!868) (size!25176 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!882898 () Bool)

(declare-fun e!491410 () Bool)

(declare-fun tp_is_empty!17663 () Bool)

(assert (=> b!882898 (= e!491410 tp_is_empty!17663)))

(declare-fun mapIsEmpty!28131 () Bool)

(declare-fun mapRes!28131 () Bool)

(assert (=> mapIsEmpty!28131 mapRes!28131))

(declare-fun b!882899 () Bool)

(declare-fun res!599942 () Bool)

(assert (=> b!882899 (=> (not res!599942) (not e!491406))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!882899 (= res!599942 (and (= (select (arr!24734 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun res!599937 () Bool)

(assert (=> start!74928 (=> (not res!599937) (not e!491406))))

(assert (=> start!74928 (= res!599937 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25175 _keys!868))))))

(assert (=> start!74928 e!491406))

(assert (=> start!74928 tp_is_empty!17663))

(assert (=> start!74928 true))

(assert (=> start!74928 tp!53960))

(declare-fun array_inv!19458 (array!51438) Bool)

(assert (=> start!74928 (array_inv!19458 _keys!868)))

(declare-fun e!491407 () Bool)

(declare-fun array_inv!19459 (array!51440) Bool)

(assert (=> start!74928 (and (array_inv!19459 _values!688) e!491407)))

(declare-fun b!882900 () Bool)

(declare-fun e!491408 () Bool)

(declare-fun e!491413 () Bool)

(assert (=> b!882900 (= e!491408 (not e!491413))))

(declare-fun res!599946 () Bool)

(assert (=> b!882900 (=> res!599946 e!491413)))

(assert (=> b!882900 (= res!599946 (not (validKeyInArray!0 (select (arr!24734 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11792 0))(
  ( (tuple2!11793 (_1!5906 (_ BitVec 64)) (_2!5906 V!28597)) )
))
(declare-datatypes ((List!17660 0))(
  ( (Nil!17657) (Cons!17656 (h!18787 tuple2!11792) (t!24889 List!17660)) )
))
(declare-datatypes ((ListLongMap!10575 0))(
  ( (ListLongMap!10576 (toList!5303 List!17660)) )
))
(declare-fun lt!399522 () ListLongMap!10575)

(declare-fun lt!399517 () ListLongMap!10575)

(assert (=> b!882900 (= lt!399522 lt!399517)))

(declare-fun v!557 () V!28597)

(declare-fun lt!399521 () ListLongMap!10575)

(declare-fun +!2508 (ListLongMap!10575 tuple2!11792) ListLongMap!10575)

(assert (=> b!882900 (= lt!399517 (+!2508 lt!399521 (tuple2!11793 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!399524 () array!51440)

(declare-fun minValue!654 () V!28597)

(declare-fun zeroValue!654 () V!28597)

(declare-fun getCurrentListMapNoExtraKeys!3260 (array!51438 array!51440 (_ BitVec 32) (_ BitVec 32) V!28597 V!28597 (_ BitVec 32) Int) ListLongMap!10575)

(assert (=> b!882900 (= lt!399522 (getCurrentListMapNoExtraKeys!3260 _keys!868 lt!399524 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!882900 (= lt!399521 (getCurrentListMapNoExtraKeys!3260 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30090 0))(
  ( (Unit!30091) )
))
(declare-fun lt!399525 () Unit!30090)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!733 (array!51438 array!51440 (_ BitVec 32) (_ BitVec 32) V!28597 V!28597 (_ BitVec 32) (_ BitVec 64) V!28597 (_ BitVec 32) Int) Unit!30090)

(assert (=> b!882900 (= lt!399525 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!733 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!28131 () Bool)

(declare-fun tp!53961 () Bool)

(assert (=> mapNonEmpty!28131 (= mapRes!28131 (and tp!53961 e!491410))))

(declare-fun mapKey!28131 () (_ BitVec 32))

(declare-fun mapRest!28131 () (Array (_ BitVec 32) ValueCell!8392))

(declare-fun mapValue!28131 () ValueCell!8392)

(assert (=> mapNonEmpty!28131 (= (arr!24735 _values!688) (store mapRest!28131 mapKey!28131 mapValue!28131))))

(declare-fun b!882901 () Bool)

(declare-fun e!491414 () Bool)

(assert (=> b!882901 (= e!491407 (and e!491414 mapRes!28131))))

(declare-fun condMapEmpty!28131 () Bool)

(declare-fun mapDefault!28131 () ValueCell!8392)

