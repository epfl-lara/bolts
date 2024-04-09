; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74942 () Bool)

(assert start!74942)

(declare-fun b_free!15433 () Bool)

(declare-fun b_next!15433 () Bool)

(assert (=> start!74942 (= b_free!15433 (not b_next!15433))))

(declare-fun tp!54002 () Bool)

(declare-fun b_and!25583 () Bool)

(assert (=> start!74942 (= tp!54002 b_and!25583)))

(declare-fun mapNonEmpty!28152 () Bool)

(declare-fun mapRes!28152 () Bool)

(declare-fun tp!54003 () Bool)

(declare-fun e!491580 () Bool)

(assert (=> mapNonEmpty!28152 (= mapRes!28152 (and tp!54003 e!491580))))

(declare-fun mapKey!28152 () (_ BitVec 32))

(declare-datatypes ((V!28617 0))(
  ( (V!28618 (val!8886 Int)) )
))
(declare-datatypes ((ValueCell!8399 0))(
  ( (ValueCellFull!8399 (v!11351 V!28617)) (EmptyCell!8399) )
))
(declare-fun mapValue!28152 () ValueCell!8399)

(declare-datatypes ((array!51464 0))(
  ( (array!51465 (arr!24747 (Array (_ BitVec 32) ValueCell!8399)) (size!25188 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51464)

(declare-fun mapRest!28152 () (Array (_ BitVec 32) ValueCell!8399))

(assert (=> mapNonEmpty!28152 (= (arr!24747 _values!688) (store mapRest!28152 mapKey!28152 mapValue!28152))))

(declare-fun mapIsEmpty!28152 () Bool)

(assert (=> mapIsEmpty!28152 mapRes!28152))

(declare-fun b!883217 () Bool)

(declare-fun res!600166 () Bool)

(declare-fun e!491579 () Bool)

(assert (=> b!883217 (=> (not res!600166) (not e!491579))))

(declare-fun k!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883217 (= res!600166 (validKeyInArray!0 k!854))))

(declare-fun b!883218 () Bool)

(declare-datatypes ((Unit!30106 0))(
  ( (Unit!30107) )
))
(declare-fun e!491581 () Unit!30106)

(declare-fun Unit!30108 () Unit!30106)

(assert (=> b!883218 (= e!491581 Unit!30108)))

(declare-fun b!883219 () Bool)

(declare-fun e!491578 () Bool)

(assert (=> b!883219 (= e!491579 e!491578)))

(declare-fun res!600163 () Bool)

(assert (=> b!883219 (=> (not res!600163) (not e!491578))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!883219 (= res!600163 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!399742 () array!51464)

(declare-datatypes ((tuple2!11804 0))(
  ( (tuple2!11805 (_1!5912 (_ BitVec 64)) (_2!5912 V!28617)) )
))
(declare-datatypes ((List!17670 0))(
  ( (Nil!17667) (Cons!17666 (h!18797 tuple2!11804) (t!24913 List!17670)) )
))
(declare-datatypes ((ListLongMap!10587 0))(
  ( (ListLongMap!10588 (toList!5309 List!17670)) )
))
(declare-fun lt!399745 () ListLongMap!10587)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!51466 0))(
  ( (array!51467 (arr!24748 (Array (_ BitVec 32) (_ BitVec 64))) (size!25189 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51466)

(declare-fun minValue!654 () V!28617)

(declare-fun zeroValue!654 () V!28617)

(declare-fun getCurrentListMapNoExtraKeys!3266 (array!51466 array!51464 (_ BitVec 32) (_ BitVec 32) V!28617 V!28617 (_ BitVec 32) Int) ListLongMap!10587)

(assert (=> b!883219 (= lt!399745 (getCurrentListMapNoExtraKeys!3266 _keys!868 lt!399742 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28617)

(assert (=> b!883219 (= lt!399742 (array!51465 (store (arr!24747 _values!688) i!612 (ValueCellFull!8399 v!557)) (size!25188 _values!688)))))

(declare-fun lt!399740 () ListLongMap!10587)

(assert (=> b!883219 (= lt!399740 (getCurrentListMapNoExtraKeys!3266 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!883220 () Bool)

(declare-fun Unit!30109 () Unit!30106)

(assert (=> b!883220 (= e!491581 Unit!30109)))

(declare-fun lt!399747 () Unit!30106)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51466 (_ BitVec 32) (_ BitVec 32)) Unit!30106)

(assert (=> b!883220 (= lt!399747 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!17671 0))(
  ( (Nil!17668) (Cons!17667 (h!18798 (_ BitVec 64)) (t!24914 List!17671)) )
))
(declare-fun arrayNoDuplicates!0 (array!51466 (_ BitVec 32) List!17671) Bool)

(assert (=> b!883220 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17668)))

(declare-fun lt!399743 () Unit!30106)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51466 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30106)

(assert (=> b!883220 (= lt!399743 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!51466 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!883220 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!399746 () Unit!30106)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51466 (_ BitVec 64) (_ BitVec 32) List!17671) Unit!30106)

(assert (=> b!883220 (= lt!399746 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17668))))

(assert (=> b!883220 false))

(declare-fun b!883221 () Bool)

(declare-fun e!491575 () Bool)

(declare-fun e!491582 () Bool)

(assert (=> b!883221 (= e!491575 (and e!491582 mapRes!28152))))

(declare-fun condMapEmpty!28152 () Bool)

(declare-fun mapDefault!28152 () ValueCell!8399)

