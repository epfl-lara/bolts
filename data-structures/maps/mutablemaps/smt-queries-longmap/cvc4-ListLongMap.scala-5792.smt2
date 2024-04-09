; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74726 () Bool)

(assert start!74726)

(declare-fun b_free!15347 () Bool)

(declare-fun b_next!15347 () Bool)

(assert (=> start!74726 (= b_free!15347 (not b_next!15347))))

(declare-fun tp!53730 () Bool)

(declare-fun b_and!25331 () Bool)

(assert (=> start!74726 (= tp!53730 b_and!25331)))

(declare-fun b!880496 () Bool)

(declare-fun res!598349 () Bool)

(declare-fun e!490016 () Bool)

(assert (=> b!880496 (=> (not res!598349) (not e!490016))))

(declare-datatypes ((array!51288 0))(
  ( (array!51289 (arr!24664 (Array (_ BitVec 32) (_ BitVec 64))) (size!25105 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51288)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51288 (_ BitVec 32)) Bool)

(assert (=> b!880496 (= res!598349 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!880497 () Bool)

(declare-fun res!598341 () Bool)

(assert (=> b!880497 (=> (not res!598341) (not e!490016))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880497 (= res!598341 (validKeyInArray!0 k!854))))

(declare-fun b!880498 () Bool)

(declare-fun e!490015 () Bool)

(declare-fun e!490022 () Bool)

(assert (=> b!880498 (= e!490015 e!490022)))

(declare-fun res!598344 () Bool)

(assert (=> b!880498 (=> res!598344 e!490022)))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!880498 (= res!598344 (not (= (select (arr!24664 _keys!868) from!1053) k!854)))))

(declare-datatypes ((V!28501 0))(
  ( (V!28502 (val!8843 Int)) )
))
(declare-datatypes ((tuple2!11728 0))(
  ( (tuple2!11729 (_1!5874 (_ BitVec 64)) (_2!5874 V!28501)) )
))
(declare-datatypes ((List!17600 0))(
  ( (Nil!17597) (Cons!17596 (h!18727 tuple2!11728) (t!24757 List!17600)) )
))
(declare-datatypes ((ListLongMap!10511 0))(
  ( (ListLongMap!10512 (toList!5271 List!17600)) )
))
(declare-fun lt!398184 () ListLongMap!10511)

(declare-fun lt!398183 () ListLongMap!10511)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8356 0))(
  ( (ValueCellFull!8356 (v!11287 V!28501)) (EmptyCell!8356) )
))
(declare-datatypes ((array!51290 0))(
  ( (array!51291 (arr!24665 (Array (_ BitVec 32) ValueCell!8356)) (size!25106 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51290)

(declare-fun +!2477 (ListLongMap!10511 tuple2!11728) ListLongMap!10511)

(declare-fun get!12985 (ValueCell!8356 V!28501) V!28501)

(declare-fun dynLambda!1242 (Int (_ BitVec 64)) V!28501)

(assert (=> b!880498 (= lt!398183 (+!2477 lt!398184 (tuple2!11729 (select (arr!24664 _keys!868) from!1053) (get!12985 (select (arr!24665 _values!688) from!1053) (dynLambda!1242 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun mapNonEmpty!28008 () Bool)

(declare-fun mapRes!28008 () Bool)

(declare-fun tp!53729 () Bool)

(declare-fun e!490019 () Bool)

(assert (=> mapNonEmpty!28008 (= mapRes!28008 (and tp!53729 e!490019))))

(declare-fun mapValue!28008 () ValueCell!8356)

(declare-fun mapRest!28008 () (Array (_ BitVec 32) ValueCell!8356))

(declare-fun mapKey!28008 () (_ BitVec 32))

(assert (=> mapNonEmpty!28008 (= (arr!24665 _values!688) (store mapRest!28008 mapKey!28008 mapValue!28008))))

(declare-fun b!880499 () Bool)

(declare-fun e!490017 () Bool)

(assert (=> b!880499 (= e!490017 (not e!490015))))

(declare-fun res!598346 () Bool)

(assert (=> b!880499 (=> res!598346 e!490015)))

(assert (=> b!880499 (= res!598346 (not (validKeyInArray!0 (select (arr!24664 _keys!868) from!1053))))))

(declare-fun lt!398178 () ListLongMap!10511)

(assert (=> b!880499 (= lt!398178 lt!398184)))

(declare-fun v!557 () V!28501)

(declare-fun lt!398181 () ListLongMap!10511)

(assert (=> b!880499 (= lt!398184 (+!2477 lt!398181 (tuple2!11729 k!854 v!557)))))

(declare-fun lt!398180 () array!51290)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!28501)

(declare-fun zeroValue!654 () V!28501)

(declare-fun getCurrentListMapNoExtraKeys!3231 (array!51288 array!51290 (_ BitVec 32) (_ BitVec 32) V!28501 V!28501 (_ BitVec 32) Int) ListLongMap!10511)

(assert (=> b!880499 (= lt!398178 (getCurrentListMapNoExtraKeys!3231 _keys!868 lt!398180 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!880499 (= lt!398181 (getCurrentListMapNoExtraKeys!3231 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!30030 0))(
  ( (Unit!30031) )
))
(declare-fun lt!398185 () Unit!30030)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!706 (array!51288 array!51290 (_ BitVec 32) (_ BitVec 32) V!28501 V!28501 (_ BitVec 32) (_ BitVec 64) V!28501 (_ BitVec 32) Int) Unit!30030)

(assert (=> b!880499 (= lt!398185 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!706 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!880500 () Bool)

(declare-fun e!490021 () Bool)

(declare-fun e!490020 () Bool)

(assert (=> b!880500 (= e!490021 (and e!490020 mapRes!28008))))

(declare-fun condMapEmpty!28008 () Bool)

(declare-fun mapDefault!28008 () ValueCell!8356)

