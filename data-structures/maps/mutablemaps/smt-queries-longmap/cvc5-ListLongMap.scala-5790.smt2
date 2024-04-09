; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74710 () Bool)

(assert start!74710)

(declare-fun b_free!15331 () Bool)

(declare-fun b_next!15331 () Bool)

(assert (=> start!74710 (= b_free!15331 (not b_next!15331))))

(declare-fun tp!53682 () Bool)

(declare-fun b_and!25299 () Bool)

(assert (=> start!74710 (= tp!53682 b_and!25299)))

(declare-fun b!880144 () Bool)

(declare-fun res!598082 () Bool)

(declare-fun e!489826 () Bool)

(assert (=> b!880144 (=> (not res!598082) (not e!489826))))

(declare-datatypes ((array!51258 0))(
  ( (array!51259 (arr!24649 (Array (_ BitVec 32) (_ BitVec 64))) (size!25090 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51258)

(declare-datatypes ((List!17587 0))(
  ( (Nil!17584) (Cons!17583 (h!18714 (_ BitVec 64)) (t!24728 List!17587)) )
))
(declare-fun arrayNoDuplicates!0 (array!51258 (_ BitVec 32) List!17587) Bool)

(assert (=> b!880144 (= res!598082 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17584))))

(declare-fun b!880145 () Bool)

(declare-fun res!598086 () Bool)

(assert (=> b!880145 (=> (not res!598086) (not e!489826))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!880145 (= res!598086 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25090 _keys!868))))))

(declare-fun b!880146 () Bool)

(declare-fun e!489827 () Bool)

(assert (=> b!880146 (= e!489827 true)))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!880146 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17584)))

(declare-datatypes ((Unit!30016 0))(
  ( (Unit!30017) )
))
(declare-fun lt!397990 () Unit!30016)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51258 (_ BitVec 32) (_ BitVec 32)) Unit!30016)

(assert (=> b!880146 (= lt!397990 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!880147 () Bool)

(declare-fun e!489825 () Bool)

(declare-fun e!489823 () Bool)

(assert (=> b!880147 (= e!489825 (not e!489823))))

(declare-fun res!598085 () Bool)

(assert (=> b!880147 (=> res!598085 e!489823)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880147 (= res!598085 (not (validKeyInArray!0 (select (arr!24649 _keys!868) from!1053))))))

(declare-datatypes ((V!28481 0))(
  ( (V!28482 (val!8835 Int)) )
))
(declare-datatypes ((tuple2!11714 0))(
  ( (tuple2!11715 (_1!5867 (_ BitVec 64)) (_2!5867 V!28481)) )
))
(declare-datatypes ((List!17588 0))(
  ( (Nil!17585) (Cons!17584 (h!18715 tuple2!11714) (t!24729 List!17588)) )
))
(declare-datatypes ((ListLongMap!10497 0))(
  ( (ListLongMap!10498 (toList!5264 List!17588)) )
))
(declare-fun lt!397993 () ListLongMap!10497)

(declare-fun lt!397992 () ListLongMap!10497)

(assert (=> b!880147 (= lt!397993 lt!397992)))

(declare-fun v!557 () V!28481)

(declare-fun lt!397989 () ListLongMap!10497)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2470 (ListLongMap!10497 tuple2!11714) ListLongMap!10497)

(assert (=> b!880147 (= lt!397992 (+!2470 lt!397989 (tuple2!11715 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!8348 0))(
  ( (ValueCellFull!8348 (v!11279 V!28481)) (EmptyCell!8348) )
))
(declare-datatypes ((array!51260 0))(
  ( (array!51261 (arr!24650 (Array (_ BitVec 32) ValueCell!8348)) (size!25091 (_ BitVec 32))) )
))
(declare-fun lt!397986 () array!51260)

(declare-fun minValue!654 () V!28481)

(declare-fun zeroValue!654 () V!28481)

(declare-fun getCurrentListMapNoExtraKeys!3224 (array!51258 array!51260 (_ BitVec 32) (_ BitVec 32) V!28481 V!28481 (_ BitVec 32) Int) ListLongMap!10497)

(assert (=> b!880147 (= lt!397993 (getCurrentListMapNoExtraKeys!3224 _keys!868 lt!397986 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!51260)

(assert (=> b!880147 (= lt!397989 (getCurrentListMapNoExtraKeys!3224 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!397991 () Unit!30016)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!700 (array!51258 array!51260 (_ BitVec 32) (_ BitVec 32) V!28481 V!28481 (_ BitVec 32) (_ BitVec 64) V!28481 (_ BitVec 32) Int) Unit!30016)

(assert (=> b!880147 (= lt!397991 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!700 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!880148 () Bool)

(declare-fun e!489824 () Bool)

(declare-fun tp_is_empty!17575 () Bool)

(assert (=> b!880148 (= e!489824 tp_is_empty!17575)))

(declare-fun b!880149 () Bool)

(declare-fun res!598081 () Bool)

(assert (=> b!880149 (=> (not res!598081) (not e!489826))))

(assert (=> b!880149 (= res!598081 (validKeyInArray!0 k!854))))

(declare-fun b!880150 () Bool)

(declare-fun res!598080 () Bool)

(assert (=> b!880150 (=> (not res!598080) (not e!489826))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51258 (_ BitVec 32)) Bool)

(assert (=> b!880150 (= res!598080 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!27984 () Bool)

(declare-fun mapRes!27984 () Bool)

(declare-fun tp!53681 () Bool)

(assert (=> mapNonEmpty!27984 (= mapRes!27984 (and tp!53681 e!489824))))

(declare-fun mapKey!27984 () (_ BitVec 32))

(declare-fun mapRest!27984 () (Array (_ BitVec 32) ValueCell!8348))

(declare-fun mapValue!27984 () ValueCell!8348)

(assert (=> mapNonEmpty!27984 (= (arr!24650 _values!688) (store mapRest!27984 mapKey!27984 mapValue!27984))))

(declare-fun b!880152 () Bool)

(declare-fun res!598084 () Bool)

(assert (=> b!880152 (=> (not res!598084) (not e!489826))))

(assert (=> b!880152 (= res!598084 (and (= (select (arr!24649 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!880153 () Bool)

(declare-fun res!598078 () Bool)

(assert (=> b!880153 (=> (not res!598078) (not e!489826))))

(assert (=> b!880153 (= res!598078 (and (= (size!25091 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25090 _keys!868) (size!25091 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!27984 () Bool)

(assert (=> mapIsEmpty!27984 mapRes!27984))

(declare-fun b!880154 () Bool)

(assert (=> b!880154 (= e!489826 e!489825)))

(declare-fun res!598077 () Bool)

(assert (=> b!880154 (=> (not res!598077) (not e!489825))))

(assert (=> b!880154 (= res!598077 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397988 () ListLongMap!10497)

(assert (=> b!880154 (= lt!397988 (getCurrentListMapNoExtraKeys!3224 _keys!868 lt!397986 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!880154 (= lt!397986 (array!51261 (store (arr!24650 _values!688) i!612 (ValueCellFull!8348 v!557)) (size!25091 _values!688)))))

(declare-fun lt!397987 () ListLongMap!10497)

(assert (=> b!880154 (= lt!397987 (getCurrentListMapNoExtraKeys!3224 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!880155 () Bool)

(declare-fun res!598079 () Bool)

(assert (=> b!880155 (=> (not res!598079) (not e!489826))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!880155 (= res!598079 (validMask!0 mask!1196))))

(declare-fun b!880151 () Bool)

(declare-fun e!489830 () Bool)

(assert (=> b!880151 (= e!489830 tp_is_empty!17575)))

(declare-fun res!598087 () Bool)

(assert (=> start!74710 (=> (not res!598087) (not e!489826))))

(assert (=> start!74710 (= res!598087 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25090 _keys!868))))))

(assert (=> start!74710 e!489826))

(assert (=> start!74710 tp_is_empty!17575))

(assert (=> start!74710 true))

(assert (=> start!74710 tp!53682))

(declare-fun array_inv!19404 (array!51258) Bool)

(assert (=> start!74710 (array_inv!19404 _keys!868)))

(declare-fun e!489829 () Bool)

(declare-fun array_inv!19405 (array!51260) Bool)

(assert (=> start!74710 (and (array_inv!19405 _values!688) e!489829)))

(declare-fun b!880156 () Bool)

(assert (=> b!880156 (= e!489829 (and e!489830 mapRes!27984))))

(declare-fun condMapEmpty!27984 () Bool)

(declare-fun mapDefault!27984 () ValueCell!8348)

