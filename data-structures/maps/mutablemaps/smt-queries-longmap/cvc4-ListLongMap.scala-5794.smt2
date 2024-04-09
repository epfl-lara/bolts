; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74738 () Bool)

(assert start!74738)

(declare-fun b_free!15359 () Bool)

(declare-fun b_next!15359 () Bool)

(assert (=> start!74738 (= b_free!15359 (not b_next!15359))))

(declare-fun tp!53766 () Bool)

(declare-fun b_and!25355 () Bool)

(assert (=> start!74738 (= tp!53766 b_and!25355)))

(declare-fun b!880760 () Bool)

(declare-fun e!490166 () Bool)

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51312 0))(
  ( (array!51313 (arr!24676 (Array (_ BitVec 32) (_ BitVec 64))) (size!25117 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51312)

(assert (=> b!880760 (= e!490166 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (size!25117 _keys!868) #b01111111111111111111111111111111)))))

(declare-datatypes ((List!17610 0))(
  ( (Nil!17607) (Cons!17606 (h!18737 (_ BitVec 64)) (t!24779 List!17610)) )
))
(declare-fun arrayNoDuplicates!0 (array!51312 (_ BitVec 32) List!17610) Bool)

(assert (=> b!880760 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17607)))

(declare-datatypes ((Unit!30042 0))(
  ( (Unit!30043) )
))
(declare-fun lt!398324 () Unit!30042)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51312 (_ BitVec 32) (_ BitVec 32)) Unit!30042)

(assert (=> b!880760 (= lt!398324 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!880761 () Bool)

(declare-fun e!490159 () Bool)

(declare-fun e!490161 () Bool)

(assert (=> b!880761 (= e!490159 (not e!490161))))

(declare-fun res!598544 () Bool)

(assert (=> b!880761 (=> res!598544 e!490161)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!880761 (= res!598544 (not (validKeyInArray!0 (select (arr!24676 _keys!868) from!1053))))))

(declare-datatypes ((V!28517 0))(
  ( (V!28518 (val!8849 Int)) )
))
(declare-datatypes ((tuple2!11740 0))(
  ( (tuple2!11741 (_1!5880 (_ BitVec 64)) (_2!5880 V!28517)) )
))
(declare-datatypes ((List!17611 0))(
  ( (Nil!17608) (Cons!17607 (h!18738 tuple2!11740) (t!24780 List!17611)) )
))
(declare-datatypes ((ListLongMap!10523 0))(
  ( (ListLongMap!10524 (toList!5277 List!17611)) )
))
(declare-fun lt!398326 () ListLongMap!10523)

(declare-fun lt!398328 () ListLongMap!10523)

(assert (=> b!880761 (= lt!398326 lt!398328)))

(declare-fun v!557 () V!28517)

(declare-fun lt!398329 () ListLongMap!10523)

(declare-fun k!854 () (_ BitVec 64))

(declare-fun +!2483 (ListLongMap!10523 tuple2!11740) ListLongMap!10523)

(assert (=> b!880761 (= lt!398328 (+!2483 lt!398329 (tuple2!11741 k!854 v!557)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!28517)

(declare-fun zeroValue!654 () V!28517)

(declare-datatypes ((ValueCell!8362 0))(
  ( (ValueCellFull!8362 (v!11293 V!28517)) (EmptyCell!8362) )
))
(declare-datatypes ((array!51314 0))(
  ( (array!51315 (arr!24677 (Array (_ BitVec 32) ValueCell!8362)) (size!25118 (_ BitVec 32))) )
))
(declare-fun lt!398327 () array!51314)

(declare-fun getCurrentListMapNoExtraKeys!3237 (array!51312 array!51314 (_ BitVec 32) (_ BitVec 32) V!28517 V!28517 (_ BitVec 32) Int) ListLongMap!10523)

(assert (=> b!880761 (= lt!398326 (getCurrentListMapNoExtraKeys!3237 _keys!868 lt!398327 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun _values!688 () array!51314)

(assert (=> b!880761 (= lt!398329 (getCurrentListMapNoExtraKeys!3237 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!398323 () Unit!30042)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!712 (array!51312 array!51314 (_ BitVec 32) (_ BitVec 32) V!28517 V!28517 (_ BitVec 32) (_ BitVec 64) V!28517 (_ BitVec 32) Int) Unit!30042)

(assert (=> b!880761 (= lt!398323 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!712 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!880762 () Bool)

(declare-fun res!598542 () Bool)

(declare-fun e!490164 () Bool)

(assert (=> b!880762 (=> (not res!598542) (not e!490164))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51312 (_ BitVec 32)) Bool)

(assert (=> b!880762 (= res!598542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapIsEmpty!28026 () Bool)

(declare-fun mapRes!28026 () Bool)

(assert (=> mapIsEmpty!28026 mapRes!28026))

(declare-fun b!880763 () Bool)

(declare-fun res!598547 () Bool)

(assert (=> b!880763 (=> (not res!598547) (not e!490164))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!880763 (= res!598547 (validMask!0 mask!1196))))

(declare-fun b!880764 () Bool)

(declare-fun res!598546 () Bool)

(assert (=> b!880764 (=> (not res!598546) (not e!490164))))

(assert (=> b!880764 (= res!598546 (and (= (select (arr!24676 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!880765 () Bool)

(declare-fun res!598543 () Bool)

(assert (=> b!880765 (=> (not res!598543) (not e!490164))))

(assert (=> b!880765 (= res!598543 (validKeyInArray!0 k!854))))

(declare-fun mapNonEmpty!28026 () Bool)

(declare-fun tp!53765 () Bool)

(declare-fun e!490163 () Bool)

(assert (=> mapNonEmpty!28026 (= mapRes!28026 (and tp!53765 e!490163))))

(declare-fun mapValue!28026 () ValueCell!8362)

(declare-fun mapKey!28026 () (_ BitVec 32))

(declare-fun mapRest!28026 () (Array (_ BitVec 32) ValueCell!8362))

(assert (=> mapNonEmpty!28026 (= (arr!24677 _values!688) (store mapRest!28026 mapKey!28026 mapValue!28026))))

(declare-fun b!880766 () Bool)

(declare-fun e!490162 () Bool)

(declare-fun e!490160 () Bool)

(assert (=> b!880766 (= e!490162 (and e!490160 mapRes!28026))))

(declare-fun condMapEmpty!28026 () Bool)

(declare-fun mapDefault!28026 () ValueCell!8362)

