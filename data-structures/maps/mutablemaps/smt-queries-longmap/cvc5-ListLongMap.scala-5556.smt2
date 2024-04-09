; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73148 () Bool)

(assert start!73148)

(declare-fun b_free!14035 () Bool)

(declare-fun b_next!14035 () Bool)

(assert (=> start!73148 (= b_free!14035 (not b_next!14035))))

(declare-fun tp!49609 () Bool)

(declare-fun b_and!23247 () Bool)

(assert (=> start!73148 (= tp!49609 b_and!23247)))

(declare-fun b!850827 () Bool)

(declare-fun e!474632 () Bool)

(declare-fun tp_is_empty!16171 () Bool)

(assert (=> b!850827 (= e!474632 tp_is_empty!16171)))

(declare-datatypes ((V!26609 0))(
  ( (V!26610 (val!8133 Int)) )
))
(declare-datatypes ((ValueCell!7646 0))(
  ( (ValueCellFull!7646 (v!10554 V!26609)) (EmptyCell!7646) )
))
(declare-datatypes ((array!48530 0))(
  ( (array!48531 (arr!23292 (Array (_ BitVec 32) ValueCell!7646)) (size!23733 (_ BitVec 32))) )
))
(declare-fun lt!383116 () array!48530)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48532 0))(
  ( (array!48533 (arr!23293 (Array (_ BitVec 32) (_ BitVec 64))) (size!23734 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48532)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26609)

(declare-datatypes ((tuple2!10676 0))(
  ( (tuple2!10677 (_1!5348 (_ BitVec 64)) (_2!5348 V!26609)) )
))
(declare-datatypes ((List!16568 0))(
  ( (Nil!16565) (Cons!16564 (h!17695 tuple2!10676) (t!23057 List!16568)) )
))
(declare-datatypes ((ListLongMap!9459 0))(
  ( (ListLongMap!9460 (toList!4745 List!16568)) )
))
(declare-fun call!37961 () ListLongMap!9459)

(declare-fun zeroValue!654 () V!26609)

(declare-fun bm!37957 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun getCurrentListMapNoExtraKeys!2731 (array!48532 array!48530 (_ BitVec 32) (_ BitVec 32) V!26609 V!26609 (_ BitVec 32) Int) ListLongMap!9459)

(assert (=> bm!37957 (= call!37961 (getCurrentListMapNoExtraKeys!2731 _keys!868 lt!383116 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850828 () Bool)

(declare-fun e!474634 () Bool)

(assert (=> b!850828 (= e!474634 true)))

(declare-fun lt!383111 () V!26609)

(declare-fun lt!383112 () tuple2!10676)

(declare-fun lt!383117 () ListLongMap!9459)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2088 (ListLongMap!9459 tuple2!10676) ListLongMap!9459)

(assert (=> b!850828 (= (+!2088 lt!383117 lt!383112) (+!2088 (+!2088 lt!383117 (tuple2!10677 k!854 lt!383111)) lt!383112))))

(declare-fun lt!383110 () V!26609)

(assert (=> b!850828 (= lt!383112 (tuple2!10677 k!854 lt!383110))))

(declare-datatypes ((Unit!29022 0))(
  ( (Unit!29023) )
))
(declare-fun lt!383113 () Unit!29022)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!273 (ListLongMap!9459 (_ BitVec 64) V!26609 V!26609) Unit!29022)

(assert (=> b!850828 (= lt!383113 (addSameAsAddTwiceSameKeyDiffValues!273 lt!383117 k!854 lt!383111 lt!383110))))

(declare-fun lt!383109 () V!26609)

(declare-fun _values!688 () array!48530)

(declare-fun get!12283 (ValueCell!7646 V!26609) V!26609)

(assert (=> b!850828 (= lt!383111 (get!12283 (select (arr!23292 _values!688) from!1053) lt!383109))))

(declare-fun lt!383114 () ListLongMap!9459)

(assert (=> b!850828 (= lt!383114 (+!2088 lt!383117 (tuple2!10677 (select (arr!23293 _keys!868) from!1053) lt!383110)))))

(declare-fun v!557 () V!26609)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!850828 (= lt!383110 (get!12283 (select (store (arr!23292 _values!688) i!612 (ValueCellFull!7646 v!557)) from!1053) lt!383109))))

(declare-fun dynLambda!1021 (Int (_ BitVec 64)) V!26609)

(assert (=> b!850828 (= lt!383109 (dynLambda!1021 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!850828 (= lt!383117 (getCurrentListMapNoExtraKeys!2731 _keys!868 lt!383116 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapNonEmpty!25856 () Bool)

(declare-fun mapRes!25856 () Bool)

(declare-fun tp!49610 () Bool)

(assert (=> mapNonEmpty!25856 (= mapRes!25856 (and tp!49610 e!474632))))

(declare-fun mapRest!25856 () (Array (_ BitVec 32) ValueCell!7646))

(declare-fun mapKey!25856 () (_ BitVec 32))

(declare-fun mapValue!25856 () ValueCell!7646)

(assert (=> mapNonEmpty!25856 (= (arr!23292 _values!688) (store mapRest!25856 mapKey!25856 mapValue!25856))))

(declare-fun b!850829 () Bool)

(declare-fun e!474635 () Bool)

(assert (=> b!850829 (= e!474635 tp_is_empty!16171)))

(declare-fun b!850830 () Bool)

(declare-fun res!578062 () Bool)

(declare-fun e!474630 () Bool)

(assert (=> b!850830 (=> (not res!578062) (not e!474630))))

(assert (=> b!850830 (= res!578062 (and (= (size!23733 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23734 _keys!868) (size!23733 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!578065 () Bool)

(assert (=> start!73148 (=> (not res!578065) (not e!474630))))

(assert (=> start!73148 (= res!578065 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23734 _keys!868))))))

(assert (=> start!73148 e!474630))

(assert (=> start!73148 tp_is_empty!16171))

(assert (=> start!73148 true))

(assert (=> start!73148 tp!49609))

(declare-fun array_inv!18470 (array!48532) Bool)

(assert (=> start!73148 (array_inv!18470 _keys!868)))

(declare-fun e!474633 () Bool)

(declare-fun array_inv!18471 (array!48530) Bool)

(assert (=> start!73148 (and (array_inv!18471 _values!688) e!474633)))

(declare-fun mapIsEmpty!25856 () Bool)

(assert (=> mapIsEmpty!25856 mapRes!25856))

(declare-fun b!850831 () Bool)

(declare-fun res!578063 () Bool)

(assert (=> b!850831 (=> (not res!578063) (not e!474630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48532 (_ BitVec 32)) Bool)

(assert (=> b!850831 (= res!578063 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun e!474636 () Bool)

(declare-fun b!850832 () Bool)

(declare-fun call!37960 () ListLongMap!9459)

(assert (=> b!850832 (= e!474636 (= call!37961 (+!2088 call!37960 (tuple2!10677 k!854 v!557))))))

(declare-fun b!850833 () Bool)

(declare-fun res!578067 () Bool)

(assert (=> b!850833 (=> (not res!578067) (not e!474630))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!850833 (= res!578067 (validMask!0 mask!1196))))

(declare-fun b!850834 () Bool)

(assert (=> b!850834 (= e!474636 (= call!37961 call!37960))))

(declare-fun bm!37958 () Bool)

(assert (=> bm!37958 (= call!37960 (getCurrentListMapNoExtraKeys!2731 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850835 () Bool)

(declare-fun res!578064 () Bool)

(assert (=> b!850835 (=> (not res!578064) (not e!474630))))

(assert (=> b!850835 (= res!578064 (and (= (select (arr!23293 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!850836 () Bool)

(declare-fun res!578061 () Bool)

(assert (=> b!850836 (=> (not res!578061) (not e!474630))))

(declare-datatypes ((List!16569 0))(
  ( (Nil!16566) (Cons!16565 (h!17696 (_ BitVec 64)) (t!23058 List!16569)) )
))
(declare-fun arrayNoDuplicates!0 (array!48532 (_ BitVec 32) List!16569) Bool)

(assert (=> b!850836 (= res!578061 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16566))))

(declare-fun b!850837 () Bool)

(declare-fun e!474629 () Bool)

(assert (=> b!850837 (= e!474629 (not e!474634))))

(declare-fun res!578066 () Bool)

(assert (=> b!850837 (=> res!578066 e!474634)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!850837 (= res!578066 (not (validKeyInArray!0 (select (arr!23293 _keys!868) from!1053))))))

(assert (=> b!850837 e!474636))

(declare-fun c!91641 () Bool)

(assert (=> b!850837 (= c!91641 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!383115 () Unit!29022)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!357 (array!48532 array!48530 (_ BitVec 32) (_ BitVec 32) V!26609 V!26609 (_ BitVec 32) (_ BitVec 64) V!26609 (_ BitVec 32) Int) Unit!29022)

(assert (=> b!850837 (= lt!383115 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!357 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850838 () Bool)

(assert (=> b!850838 (= e!474630 e!474629)))

(declare-fun res!578069 () Bool)

(assert (=> b!850838 (=> (not res!578069) (not e!474629))))

(assert (=> b!850838 (= res!578069 (= from!1053 i!612))))

(assert (=> b!850838 (= lt!383114 (getCurrentListMapNoExtraKeys!2731 _keys!868 lt!383116 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!850838 (= lt!383116 (array!48531 (store (arr!23292 _values!688) i!612 (ValueCellFull!7646 v!557)) (size!23733 _values!688)))))

(declare-fun lt!383118 () ListLongMap!9459)

(assert (=> b!850838 (= lt!383118 (getCurrentListMapNoExtraKeys!2731 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!850839 () Bool)

(declare-fun res!578070 () Bool)

(assert (=> b!850839 (=> (not res!578070) (not e!474630))))

(assert (=> b!850839 (= res!578070 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23734 _keys!868))))))

(declare-fun b!850840 () Bool)

(declare-fun res!578068 () Bool)

(assert (=> b!850840 (=> (not res!578068) (not e!474630))))

(assert (=> b!850840 (= res!578068 (validKeyInArray!0 k!854))))

(declare-fun b!850841 () Bool)

(assert (=> b!850841 (= e!474633 (and e!474635 mapRes!25856))))

(declare-fun condMapEmpty!25856 () Bool)

(declare-fun mapDefault!25856 () ValueCell!7646)

