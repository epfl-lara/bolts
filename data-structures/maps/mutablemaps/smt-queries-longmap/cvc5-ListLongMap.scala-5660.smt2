; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73772 () Bool)

(assert start!73772)

(declare-fun b_free!14659 () Bool)

(declare-fun b_next!14659 () Bool)

(assert (=> start!73772 (= b_free!14659 (not b_next!14659))))

(declare-fun tp!51481 () Bool)

(declare-fun b_and!24315 () Bool)

(assert (=> start!73772 (= tp!51481 b_and!24315)))

(declare-fun b!864575 () Bool)

(declare-fun res!587586 () Bool)

(declare-fun e!481673 () Bool)

(assert (=> b!864575 (=> (not res!587586) (not e!481673))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!864575 (= res!587586 (validKeyInArray!0 k!854))))

(declare-fun b!864576 () Bool)

(declare-fun e!481677 () Bool)

(assert (=> b!864576 (= e!481677 true)))

(declare-datatypes ((V!27441 0))(
  ( (V!27442 (val!8445 Int)) )
))
(declare-datatypes ((tuple2!11186 0))(
  ( (tuple2!11187 (_1!5603 (_ BitVec 64)) (_2!5603 V!27441)) )
))
(declare-datatypes ((List!17052 0))(
  ( (Nil!17049) (Cons!17048 (h!18179 tuple2!11186) (t!23985 List!17052)) )
))
(declare-datatypes ((ListLongMap!9969 0))(
  ( (ListLongMap!9970 (toList!5000 List!17052)) )
))
(declare-fun lt!391412 () ListLongMap!9969)

(declare-fun lt!391411 () tuple2!11186)

(declare-fun lt!391423 () tuple2!11186)

(declare-fun lt!391418 () ListLongMap!9969)

(declare-fun +!2296 (ListLongMap!9969 tuple2!11186) ListLongMap!9969)

(assert (=> b!864576 (= lt!391418 (+!2296 (+!2296 lt!391412 lt!391411) lt!391423))))

(declare-fun v!557 () V!27441)

(declare-datatypes ((array!49734 0))(
  ( (array!49735 (arr!23894 (Array (_ BitVec 32) (_ BitVec 64))) (size!24335 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49734)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((Unit!29557 0))(
  ( (Unit!29558) )
))
(declare-fun lt!391425 () Unit!29557)

(declare-fun lt!391424 () V!27441)

(declare-fun addCommutativeForDiffKeys!504 (ListLongMap!9969 (_ BitVec 64) V!27441 (_ BitVec 64) V!27441) Unit!29557)

(assert (=> b!864576 (= lt!391425 (addCommutativeForDiffKeys!504 lt!391412 k!854 v!557 (select (arr!23894 _keys!868) from!1053) lt!391424))))

(declare-fun b!864577 () Bool)

(declare-fun res!587593 () Bool)

(assert (=> b!864577 (=> (not res!587593) (not e!481673))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7958 0))(
  ( (ValueCellFull!7958 (v!10866 V!27441)) (EmptyCell!7958) )
))
(declare-datatypes ((array!49736 0))(
  ( (array!49737 (arr!23895 (Array (_ BitVec 32) ValueCell!7958)) (size!24336 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49736)

(assert (=> b!864577 (= res!587593 (and (= (size!24336 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24335 _keys!868) (size!24336 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!864578 () Bool)

(declare-fun res!587590 () Bool)

(assert (=> b!864578 (=> (not res!587590) (not e!481673))))

(declare-datatypes ((List!17053 0))(
  ( (Nil!17050) (Cons!17049 (h!18180 (_ BitVec 64)) (t!23986 List!17053)) )
))
(declare-fun arrayNoDuplicates!0 (array!49734 (_ BitVec 32) List!17053) Bool)

(assert (=> b!864578 (= res!587590 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17050))))

(declare-fun b!864579 () Bool)

(declare-fun e!481670 () Bool)

(declare-fun tp_is_empty!16795 () Bool)

(assert (=> b!864579 (= e!481670 tp_is_empty!16795)))

(declare-fun b!864580 () Bool)

(declare-fun e!481676 () Unit!29557)

(declare-fun Unit!29559 () Unit!29557)

(assert (=> b!864580 (= e!481676 Unit!29559)))

(declare-fun mapNonEmpty!26792 () Bool)

(declare-fun mapRes!26792 () Bool)

(declare-fun tp!51482 () Bool)

(assert (=> mapNonEmpty!26792 (= mapRes!26792 (and tp!51482 e!481670))))

(declare-fun mapRest!26792 () (Array (_ BitVec 32) ValueCell!7958))

(declare-fun mapKey!26792 () (_ BitVec 32))

(declare-fun mapValue!26792 () ValueCell!7958)

(assert (=> mapNonEmpty!26792 (= (arr!23895 _values!688) (store mapRest!26792 mapKey!26792 mapValue!26792))))

(declare-fun b!864581 () Bool)

(declare-fun e!481669 () Bool)

(assert (=> b!864581 (= e!481669 e!481677)))

(declare-fun res!587585 () Bool)

(assert (=> b!864581 (=> res!587585 e!481677)))

(assert (=> b!864581 (= res!587585 (= k!854 (select (arr!23894 _keys!868) from!1053)))))

(assert (=> b!864581 (not (= (select (arr!23894 _keys!868) from!1053) k!854))))

(declare-fun lt!391413 () Unit!29557)

(assert (=> b!864581 (= lt!391413 e!481676)))

(declare-fun c!92127 () Bool)

(assert (=> b!864581 (= c!92127 (= (select (arr!23894 _keys!868) from!1053) k!854))))

(declare-fun lt!391416 () ListLongMap!9969)

(assert (=> b!864581 (= lt!391416 lt!391418)))

(declare-fun lt!391415 () ListLongMap!9969)

(assert (=> b!864581 (= lt!391418 (+!2296 lt!391415 lt!391411))))

(assert (=> b!864581 (= lt!391411 (tuple2!11187 (select (arr!23894 _keys!868) from!1053) lt!391424))))

(declare-fun defaultEntry!696 () Int)

(declare-fun get!12636 (ValueCell!7958 V!27441) V!27441)

(declare-fun dynLambda!1166 (Int (_ BitVec 64)) V!27441)

(assert (=> b!864581 (= lt!391424 (get!12636 (select (arr!23895 _values!688) from!1053) (dynLambda!1166 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!864582 () Bool)

(declare-fun res!587591 () Bool)

(assert (=> b!864582 (=> (not res!587591) (not e!481673))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!864582 (= res!587591 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24335 _keys!868))))))

(declare-fun b!864583 () Bool)

(declare-fun e!481671 () Bool)

(assert (=> b!864583 (= e!481673 e!481671)))

(declare-fun res!587589 () Bool)

(assert (=> b!864583 (=> (not res!587589) (not e!481671))))

(assert (=> b!864583 (= res!587589 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!391419 () array!49736)

(declare-fun minValue!654 () V!27441)

(declare-fun zeroValue!654 () V!27441)

(declare-fun getCurrentListMapNoExtraKeys!2972 (array!49734 array!49736 (_ BitVec 32) (_ BitVec 32) V!27441 V!27441 (_ BitVec 32) Int) ListLongMap!9969)

(assert (=> b!864583 (= lt!391416 (getCurrentListMapNoExtraKeys!2972 _keys!868 lt!391419 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!864583 (= lt!391419 (array!49737 (store (arr!23895 _values!688) i!612 (ValueCellFull!7958 v!557)) (size!24336 _values!688)))))

(declare-fun lt!391410 () ListLongMap!9969)

(assert (=> b!864583 (= lt!391410 (getCurrentListMapNoExtraKeys!2972 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!864584 () Bool)

(declare-fun e!481675 () Bool)

(declare-fun e!481674 () Bool)

(assert (=> b!864584 (= e!481675 (and e!481674 mapRes!26792))))

(declare-fun condMapEmpty!26792 () Bool)

(declare-fun mapDefault!26792 () ValueCell!7958)

