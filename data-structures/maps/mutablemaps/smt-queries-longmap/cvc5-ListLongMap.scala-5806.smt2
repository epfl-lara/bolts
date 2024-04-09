; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74936 () Bool)

(assert start!74936)

(declare-fun b_free!15427 () Bool)

(declare-fun b_next!15427 () Bool)

(assert (=> start!74936 (= b_free!15427 (not b_next!15427))))

(declare-fun tp!53984 () Bool)

(declare-fun b_and!25571 () Bool)

(assert (=> start!74936 (= tp!53984 b_and!25571)))

(declare-fun mapNonEmpty!28143 () Bool)

(declare-fun mapRes!28143 () Bool)

(declare-fun tp!53985 () Bool)

(declare-fun e!491509 () Bool)

(assert (=> mapNonEmpty!28143 (= mapRes!28143 (and tp!53985 e!491509))))

(declare-datatypes ((V!28609 0))(
  ( (V!28610 (val!8883 Int)) )
))
(declare-datatypes ((ValueCell!8396 0))(
  ( (ValueCellFull!8396 (v!11348 V!28609)) (EmptyCell!8396) )
))
(declare-fun mapValue!28143 () ValueCell!8396)

(declare-fun mapKey!28143 () (_ BitVec 32))

(declare-fun mapRest!28143 () (Array (_ BitVec 32) ValueCell!8396))

(declare-datatypes ((array!51452 0))(
  ( (array!51453 (arr!24741 (Array (_ BitVec 32) ValueCell!8396)) (size!25182 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51452)

(assert (=> mapNonEmpty!28143 (= (arr!24741 _values!688) (store mapRest!28143 mapKey!28143 mapValue!28143))))

(declare-fun b!883076 () Bool)

(declare-fun res!600071 () Bool)

(declare-fun e!491503 () Bool)

(assert (=> b!883076 (=> (not res!600071) (not e!491503))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51454 0))(
  ( (array!51455 (arr!24742 (Array (_ BitVec 32) (_ BitVec 64))) (size!25183 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51454)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!883076 (= res!600071 (and (= (select (arr!24742 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!883077 () Bool)

(declare-fun tp_is_empty!17671 () Bool)

(assert (=> b!883077 (= e!491509 tp_is_empty!17671)))

(declare-fun b!883078 () Bool)

(declare-fun e!491505 () Bool)

(declare-fun e!491504 () Bool)

(assert (=> b!883078 (= e!491505 (not e!491504))))

(declare-fun res!600070 () Bool)

(assert (=> b!883078 (=> res!600070 e!491504)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883078 (= res!600070 (not (validKeyInArray!0 (select (arr!24742 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11798 0))(
  ( (tuple2!11799 (_1!5909 (_ BitVec 64)) (_2!5909 V!28609)) )
))
(declare-datatypes ((List!17665 0))(
  ( (Nil!17662) (Cons!17661 (h!18792 tuple2!11798) (t!24902 List!17665)) )
))
(declare-datatypes ((ListLongMap!10581 0))(
  ( (ListLongMap!10582 (toList!5306 List!17665)) )
))
(declare-fun lt!399644 () ListLongMap!10581)

(declare-fun lt!399641 () ListLongMap!10581)

(assert (=> b!883078 (= lt!399644 lt!399641)))

(declare-fun v!557 () V!28609)

(declare-fun lt!399642 () ListLongMap!10581)

(declare-fun +!2511 (ListLongMap!10581 tuple2!11798) ListLongMap!10581)

(assert (=> b!883078 (= lt!399641 (+!2511 lt!399642 (tuple2!11799 k!854 v!557)))))

(declare-fun lt!399649 () array!51452)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28609)

(declare-fun zeroValue!654 () V!28609)

(declare-fun getCurrentListMapNoExtraKeys!3263 (array!51454 array!51452 (_ BitVec 32) (_ BitVec 32) V!28609 V!28609 (_ BitVec 32) Int) ListLongMap!10581)

(assert (=> b!883078 (= lt!399644 (getCurrentListMapNoExtraKeys!3263 _keys!868 lt!399649 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!883078 (= lt!399642 (getCurrentListMapNoExtraKeys!3263 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30096 0))(
  ( (Unit!30097) )
))
(declare-fun lt!399647 () Unit!30096)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!736 (array!51454 array!51452 (_ BitVec 32) (_ BitVec 32) V!28609 V!28609 (_ BitVec 32) (_ BitVec 64) V!28609 (_ BitVec 32) Int) Unit!30096)

(assert (=> b!883078 (= lt!399647 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!736 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!600072 () Bool)

(assert (=> start!74936 (=> (not res!600072) (not e!491503))))

(assert (=> start!74936 (= res!600072 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25183 _keys!868))))))

(assert (=> start!74936 e!491503))

(assert (=> start!74936 tp_is_empty!17671))

(assert (=> start!74936 true))

(assert (=> start!74936 tp!53984))

(declare-fun array_inv!19464 (array!51454) Bool)

(assert (=> start!74936 (array_inv!19464 _keys!868)))

(declare-fun e!491506 () Bool)

(declare-fun array_inv!19465 (array!51452) Bool)

(assert (=> start!74936 (and (array_inv!19465 _values!688) e!491506)))

(declare-fun b!883079 () Bool)

(declare-fun e!491507 () Bool)

(assert (=> b!883079 (= e!491506 (and e!491507 mapRes!28143))))

(declare-fun condMapEmpty!28143 () Bool)

(declare-fun mapDefault!28143 () ValueCell!8396)

