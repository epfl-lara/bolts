; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73700 () Bool)

(assert start!73700)

(declare-fun b_free!14587 () Bool)

(declare-fun b_next!14587 () Bool)

(assert (=> start!73700 (= b_free!14587 (not b_next!14587))))

(declare-fun tp!51266 () Bool)

(declare-fun b_and!24171 () Bool)

(assert (=> start!73700 (= tp!51266 b_and!24171)))

(declare-fun res!586407 () Bool)

(declare-fun e!480702 () Bool)

(assert (=> start!73700 (=> (not res!586407) (not e!480702))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!49592 0))(
  ( (array!49593 (arr!23823 (Array (_ BitVec 32) (_ BitVec 64))) (size!24264 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49592)

(assert (=> start!73700 (= res!586407 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24264 _keys!868))))))

(assert (=> start!73700 e!480702))

(declare-fun tp_is_empty!16723 () Bool)

(assert (=> start!73700 tp_is_empty!16723))

(assert (=> start!73700 true))

(assert (=> start!73700 tp!51266))

(declare-fun array_inv!18824 (array!49592) Bool)

(assert (=> start!73700 (array_inv!18824 _keys!868)))

(declare-datatypes ((V!27345 0))(
  ( (V!27346 (val!8409 Int)) )
))
(declare-datatypes ((ValueCell!7922 0))(
  ( (ValueCellFull!7922 (v!10830 V!27345)) (EmptyCell!7922) )
))
(declare-datatypes ((array!49594 0))(
  ( (array!49595 (arr!23824 (Array (_ BitVec 32) ValueCell!7922)) (size!24265 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49594)

(declare-fun e!480703 () Bool)

(declare-fun array_inv!18825 (array!49594) Bool)

(assert (=> start!73700 (and (array_inv!18825 _values!688) e!480703)))

(declare-fun b!862775 () Bool)

(declare-fun e!480705 () Bool)

(assert (=> b!862775 (= e!480702 e!480705)))

(declare-fun res!586398 () Bool)

(assert (=> b!862775 (=> (not res!586398) (not e!480705))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!862775 (= res!586398 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!389682 () array!49594)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((tuple2!11122 0))(
  ( (tuple2!11123 (_1!5571 (_ BitVec 64)) (_2!5571 V!27345)) )
))
(declare-datatypes ((List!16991 0))(
  ( (Nil!16988) (Cons!16987 (h!18118 tuple2!11122) (t!23852 List!16991)) )
))
(declare-datatypes ((ListLongMap!9905 0))(
  ( (ListLongMap!9906 (toList!4968 List!16991)) )
))
(declare-fun lt!389685 () ListLongMap!9905)

(declare-fun minValue!654 () V!27345)

(declare-fun zeroValue!654 () V!27345)

(declare-fun getCurrentListMapNoExtraKeys!2943 (array!49592 array!49594 (_ BitVec 32) (_ BitVec 32) V!27345 V!27345 (_ BitVec 32) Int) ListLongMap!9905)

(assert (=> b!862775 (= lt!389685 (getCurrentListMapNoExtraKeys!2943 _keys!868 lt!389682 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27345)

(assert (=> b!862775 (= lt!389682 (array!49595 (store (arr!23824 _values!688) i!612 (ValueCellFull!7922 v!557)) (size!24265 _values!688)))))

(declare-fun lt!389695 () ListLongMap!9905)

(assert (=> b!862775 (= lt!389695 (getCurrentListMapNoExtraKeys!2943 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!862776 () Bool)

(declare-datatypes ((Unit!29443 0))(
  ( (Unit!29444) )
))
(declare-fun e!480699 () Unit!29443)

(declare-fun Unit!29445 () Unit!29443)

(assert (=> b!862776 (= e!480699 Unit!29445)))

(declare-fun b!862777 () Bool)

(declare-fun e!480704 () Bool)

(declare-fun e!480701 () Bool)

(assert (=> b!862777 (= e!480704 e!480701)))

(declare-fun res!586406 () Bool)

(assert (=> b!862777 (=> res!586406 e!480701)))

(declare-fun k!854 () (_ BitVec 64))

(assert (=> b!862777 (= res!586406 (= k!854 (select (arr!23823 _keys!868) from!1053)))))

(assert (=> b!862777 (not (= (select (arr!23823 _keys!868) from!1053) k!854))))

(declare-fun lt!389687 () Unit!29443)

(assert (=> b!862777 (= lt!389687 e!480699)))

(declare-fun c!92019 () Bool)

(assert (=> b!862777 (= c!92019 (= (select (arr!23823 _keys!868) from!1053) k!854))))

(declare-fun lt!389696 () ListLongMap!9905)

(assert (=> b!862777 (= lt!389685 lt!389696)))

(declare-fun lt!389689 () ListLongMap!9905)

(declare-fun lt!389691 () tuple2!11122)

(declare-fun +!2265 (ListLongMap!9905 tuple2!11122) ListLongMap!9905)

(assert (=> b!862777 (= lt!389696 (+!2265 lt!389689 lt!389691))))

(declare-fun lt!389694 () V!27345)

(assert (=> b!862777 (= lt!389691 (tuple2!11123 (select (arr!23823 _keys!868) from!1053) lt!389694))))

(declare-fun get!12588 (ValueCell!7922 V!27345) V!27345)

(declare-fun dynLambda!1142 (Int (_ BitVec 64)) V!27345)

(assert (=> b!862777 (= lt!389694 (get!12588 (select (arr!23824 _values!688) from!1053) (dynLambda!1142 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!862778 () Bool)

(assert (=> b!862778 (= e!480705 (not e!480704))))

(declare-fun res!586405 () Bool)

(assert (=> b!862778 (=> res!586405 e!480704)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862778 (= res!586405 (not (validKeyInArray!0 (select (arr!23823 _keys!868) from!1053))))))

(declare-fun lt!389692 () ListLongMap!9905)

(assert (=> b!862778 (= lt!389692 lt!389689)))

(declare-fun lt!389683 () ListLongMap!9905)

(declare-fun lt!389688 () tuple2!11122)

(assert (=> b!862778 (= lt!389689 (+!2265 lt!389683 lt!389688))))

(assert (=> b!862778 (= lt!389692 (getCurrentListMapNoExtraKeys!2943 _keys!868 lt!389682 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!862778 (= lt!389688 (tuple2!11123 k!854 v!557))))

(assert (=> b!862778 (= lt!389683 (getCurrentListMapNoExtraKeys!2943 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!389693 () Unit!29443)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!512 (array!49592 array!49594 (_ BitVec 32) (_ BitVec 32) V!27345 V!27345 (_ BitVec 32) (_ BitVec 64) V!27345 (_ BitVec 32) Int) Unit!29443)

(assert (=> b!862778 (= lt!389693 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!512 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!862779 () Bool)

(declare-fun res!586402 () Bool)

(assert (=> b!862779 (=> (not res!586402) (not e!480702))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862779 (= res!586402 (validMask!0 mask!1196))))

(declare-fun b!862780 () Bool)

(declare-fun e!480697 () Bool)

(declare-fun mapRes!26684 () Bool)

(assert (=> b!862780 (= e!480703 (and e!480697 mapRes!26684))))

(declare-fun condMapEmpty!26684 () Bool)

(declare-fun mapDefault!26684 () ValueCell!7922)

