; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74978 () Bool)

(assert start!74978)

(declare-fun b_free!15469 () Bool)

(declare-fun b_next!15469 () Bool)

(assert (=> start!74978 (= b_free!15469 (not b_next!15469))))

(declare-fun tp!54111 () Bool)

(declare-fun b_and!25655 () Bool)

(assert (=> start!74978 (= tp!54111 b_and!25655)))

(declare-fun b!884083 () Bool)

(declare-fun e!492035 () Bool)

(declare-fun e!492027 () Bool)

(assert (=> b!884083 (= e!492035 (not e!492027))))

(declare-fun res!600727 () Bool)

(assert (=> b!884083 (=> res!600727 e!492027)))

(declare-datatypes ((array!51536 0))(
  ( (array!51537 (arr!24783 (Array (_ BitVec 32) (_ BitVec 64))) (size!25224 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51536)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!884083 (= res!600727 (not (validKeyInArray!0 (select (arr!24783 _keys!868) from!1053))))))

(declare-datatypes ((V!28665 0))(
  ( (V!28666 (val!8904 Int)) )
))
(declare-datatypes ((tuple2!11836 0))(
  ( (tuple2!11837 (_1!5928 (_ BitVec 64)) (_2!5928 V!28665)) )
))
(declare-datatypes ((List!17699 0))(
  ( (Nil!17696) (Cons!17695 (h!18826 tuple2!11836) (t!24978 List!17699)) )
))
(declare-datatypes ((ListLongMap!10619 0))(
  ( (ListLongMap!10620 (toList!5325 List!17699)) )
))
(declare-fun lt!400435 () ListLongMap!10619)

(declare-fun lt!400445 () ListLongMap!10619)

(assert (=> b!884083 (= lt!400435 lt!400445)))

(declare-fun lt!400446 () ListLongMap!10619)

(declare-fun lt!400441 () tuple2!11836)

(declare-fun +!2528 (ListLongMap!10619 tuple2!11836) ListLongMap!10619)

(assert (=> b!884083 (= lt!400445 (+!2528 lt!400446 lt!400441))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8417 0))(
  ( (ValueCellFull!8417 (v!11369 V!28665)) (EmptyCell!8417) )
))
(declare-datatypes ((array!51538 0))(
  ( (array!51539 (arr!24784 (Array (_ BitVec 32) ValueCell!8417)) (size!25225 (_ BitVec 32))) )
))
(declare-fun lt!400440 () array!51538)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28665)

(declare-fun zeroValue!654 () V!28665)

(declare-fun getCurrentListMapNoExtraKeys!3279 (array!51536 array!51538 (_ BitVec 32) (_ BitVec 32) V!28665 V!28665 (_ BitVec 32) Int) ListLongMap!10619)

(assert (=> b!884083 (= lt!400435 (getCurrentListMapNoExtraKeys!3279 _keys!868 lt!400440 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun v!557 () V!28665)

(assert (=> b!884083 (= lt!400441 (tuple2!11837 k!854 v!557))))

(declare-fun _values!688 () array!51538)

(assert (=> b!884083 (= lt!400446 (getCurrentListMapNoExtraKeys!3279 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30163 0))(
  ( (Unit!30164) )
))
(declare-fun lt!400442 () Unit!30163)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!749 (array!51536 array!51538 (_ BitVec 32) (_ BitVec 32) V!28665 V!28665 (_ BitVec 32) (_ BitVec 64) V!28665 (_ BitVec 32) Int) Unit!30163)

(assert (=> b!884083 (= lt!400442 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!749 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!884084 () Bool)

(declare-fun e!492034 () Bool)

(declare-fun tp_is_empty!17713 () Bool)

(assert (=> b!884084 (= e!492034 tp_is_empty!17713)))

(declare-fun b!884085 () Bool)

(declare-fun res!600726 () Bool)

(declare-fun e!492033 () Bool)

(assert (=> b!884085 (=> (not res!600726) (not e!492033))))

(declare-datatypes ((List!17700 0))(
  ( (Nil!17697) (Cons!17696 (h!18827 (_ BitVec 64)) (t!24979 List!17700)) )
))
(declare-fun arrayNoDuplicates!0 (array!51536 (_ BitVec 32) List!17700) Bool)

(assert (=> b!884085 (= res!600726 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17697))))

(declare-fun b!884086 () Bool)

(assert (=> b!884086 (= e!492033 e!492035)))

(declare-fun res!600717 () Bool)

(assert (=> b!884086 (=> (not res!600717) (not e!492035))))

(assert (=> b!884086 (= res!600717 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!400444 () ListLongMap!10619)

(assert (=> b!884086 (= lt!400444 (getCurrentListMapNoExtraKeys!3279 _keys!868 lt!400440 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!884086 (= lt!400440 (array!51539 (store (arr!24784 _values!688) i!612 (ValueCellFull!8417 v!557)) (size!25225 _values!688)))))

(declare-fun lt!400438 () ListLongMap!10619)

(assert (=> b!884086 (= lt!400438 (getCurrentListMapNoExtraKeys!3279 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!884087 () Bool)

(declare-fun res!600719 () Bool)

(assert (=> b!884087 (=> (not res!600719) (not e!492033))))

(assert (=> b!884087 (= res!600719 (validKeyInArray!0 k!854))))

(declare-fun b!884088 () Bool)

(declare-fun res!600723 () Bool)

(assert (=> b!884088 (=> (not res!600723) (not e!492033))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!884088 (= res!600723 (validMask!0 mask!1196))))

(declare-fun b!884089 () Bool)

(declare-fun res!600725 () Bool)

(assert (=> b!884089 (=> (not res!600725) (not e!492033))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51536 (_ BitVec 32)) Bool)

(assert (=> b!884089 (= res!600725 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!600724 () Bool)

(assert (=> start!74978 (=> (not res!600724) (not e!492033))))

(assert (=> start!74978 (= res!600724 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25224 _keys!868))))))

(assert (=> start!74978 e!492033))

(assert (=> start!74978 tp_is_empty!17713))

(assert (=> start!74978 true))

(assert (=> start!74978 tp!54111))

(declare-fun array_inv!19488 (array!51536) Bool)

(assert (=> start!74978 (array_inv!19488 _keys!868)))

(declare-fun e!492029 () Bool)

(declare-fun array_inv!19489 (array!51538) Bool)

(assert (=> start!74978 (and (array_inv!19489 _values!688) e!492029)))

(declare-fun b!884090 () Bool)

(declare-fun e!492031 () Bool)

(declare-fun mapRes!28206 () Bool)

(assert (=> b!884090 (= e!492029 (and e!492031 mapRes!28206))))

(declare-fun condMapEmpty!28206 () Bool)

(declare-fun mapDefault!28206 () ValueCell!8417)

