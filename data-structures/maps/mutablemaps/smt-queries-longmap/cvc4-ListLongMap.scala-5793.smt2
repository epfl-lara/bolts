; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74732 () Bool)

(assert start!74732)

(declare-fun b_free!15353 () Bool)

(declare-fun b_next!15353 () Bool)

(assert (=> start!74732 (= b_free!15353 (not b_next!15353))))

(declare-fun tp!53747 () Bool)

(declare-fun b_and!25343 () Bool)

(assert (=> start!74732 (= tp!53747 b_and!25343)))

(declare-fun b!880628 () Bool)

(declare-fun res!598449 () Bool)

(declare-fun e!490089 () Bool)

(assert (=> b!880628 (=> (not res!598449) (not e!490089))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!51300 0))(
  ( (array!51301 (arr!24670 (Array (_ BitVec 32) (_ BitVec 64))) (size!25111 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51300)

(assert (=> b!880628 (= res!598449 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25111 _keys!868))))))

(declare-fun b!880629 () Bool)

(declare-fun res!598442 () Bool)

(assert (=> b!880629 (=> (not res!598442) (not e!490089))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880629 (= res!598442 (validKeyInArray!0 k!854))))

(declare-fun b!880630 () Bool)

(declare-fun e!490087 () Bool)

(declare-fun e!490093 () Bool)

(assert (=> b!880630 (= e!490087 e!490093)))

(declare-fun res!598445 () Bool)

(assert (=> b!880630 (=> res!598445 e!490093)))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!880630 (= res!598445 (not (= (select (arr!24670 _keys!868) from!1053) k!854)))))

(declare-datatypes ((V!28509 0))(
  ( (V!28510 (val!8846 Int)) )
))
(declare-datatypes ((tuple2!11734 0))(
  ( (tuple2!11735 (_1!5877 (_ BitVec 64)) (_2!5877 V!28509)) )
))
(declare-datatypes ((List!17605 0))(
  ( (Nil!17602) (Cons!17601 (h!18732 tuple2!11734) (t!24768 List!17605)) )
))
(declare-datatypes ((ListLongMap!10517 0))(
  ( (ListLongMap!10518 (toList!5274 List!17605)) )
))
(declare-fun lt!398252 () ListLongMap!10517)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!398251 () ListLongMap!10517)

(declare-datatypes ((ValueCell!8359 0))(
  ( (ValueCellFull!8359 (v!11290 V!28509)) (EmptyCell!8359) )
))
(declare-datatypes ((array!51302 0))(
  ( (array!51303 (arr!24671 (Array (_ BitVec 32) ValueCell!8359)) (size!25112 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51302)

(declare-fun +!2480 (ListLongMap!10517 tuple2!11734) ListLongMap!10517)

(declare-fun get!12990 (ValueCell!8359 V!28509) V!28509)

(declare-fun dynLambda!1245 (Int (_ BitVec 64)) V!28509)

(assert (=> b!880630 (= lt!398252 (+!2480 lt!398251 (tuple2!11735 (select (arr!24670 _keys!868) from!1053) (get!12990 (select (arr!24671 _values!688) from!1053) (dynLambda!1245 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!880631 () Bool)

(declare-fun e!490094 () Bool)

(declare-fun tp_is_empty!17597 () Bool)

(assert (=> b!880631 (= e!490094 tp_is_empty!17597)))

(declare-fun b!880632 () Bool)

(declare-fun res!598444 () Bool)

(assert (=> b!880632 (=> (not res!598444) (not e!490089))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!880632 (= res!598444 (and (= (size!25112 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25111 _keys!868) (size!25112 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!28017 () Bool)

(declare-fun mapRes!28017 () Bool)

(declare-fun tp!53748 () Bool)

(assert (=> mapNonEmpty!28017 (= mapRes!28017 (and tp!53748 e!490094))))

(declare-fun mapRest!28017 () (Array (_ BitVec 32) ValueCell!8359))

(declare-fun mapKey!28017 () (_ BitVec 32))

(declare-fun mapValue!28017 () ValueCell!8359)

(assert (=> mapNonEmpty!28017 (= (arr!24671 _values!688) (store mapRest!28017 mapKey!28017 mapValue!28017))))

(declare-fun b!880633 () Bool)

(declare-fun res!598446 () Bool)

(assert (=> b!880633 (=> (not res!598446) (not e!490089))))

(assert (=> b!880633 (= res!598446 (and (= (select (arr!24670 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!880634 () Bool)

(declare-fun e!490088 () Bool)

(assert (=> b!880634 (= e!490088 (not e!490087))))

(declare-fun res!598440 () Bool)

(assert (=> b!880634 (=> res!598440 e!490087)))

(assert (=> b!880634 (= res!598440 (not (validKeyInArray!0 (select (arr!24670 _keys!868) from!1053))))))

(declare-fun lt!398255 () ListLongMap!10517)

(assert (=> b!880634 (= lt!398255 lt!398251)))

(declare-fun v!557 () V!28509)

(declare-fun lt!398257 () ListLongMap!10517)

(assert (=> b!880634 (= lt!398251 (+!2480 lt!398257 (tuple2!11735 k!854 v!557)))))

(declare-fun lt!398253 () array!51302)

(declare-fun minValue!654 () V!28509)

(declare-fun zeroValue!654 () V!28509)

(declare-fun getCurrentListMapNoExtraKeys!3234 (array!51300 array!51302 (_ BitVec 32) (_ BitVec 32) V!28509 V!28509 (_ BitVec 32) Int) ListLongMap!10517)

(assert (=> b!880634 (= lt!398255 (getCurrentListMapNoExtraKeys!3234 _keys!868 lt!398253 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!880634 (= lt!398257 (getCurrentListMapNoExtraKeys!3234 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30036 0))(
  ( (Unit!30037) )
))
(declare-fun lt!398256 () Unit!30036)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!709 (array!51300 array!51302 (_ BitVec 32) (_ BitVec 32) V!28509 V!28509 (_ BitVec 32) (_ BitVec 64) V!28509 (_ BitVec 32) Int) Unit!30036)

(assert (=> b!880634 (= lt!398256 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!709 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!880635 () Bool)

(declare-fun e!490092 () Bool)

(declare-fun e!490091 () Bool)

(assert (=> b!880635 (= e!490092 (and e!490091 mapRes!28017))))

(declare-fun condMapEmpty!28017 () Bool)

(declare-fun mapDefault!28017 () ValueCell!8359)

