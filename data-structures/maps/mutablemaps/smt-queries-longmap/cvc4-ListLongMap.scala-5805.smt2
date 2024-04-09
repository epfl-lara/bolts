; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!74934 () Bool)

(assert start!74934)

(declare-fun b_free!15425 () Bool)

(declare-fun b_next!15425 () Bool)

(assert (=> start!74934 (= b_free!15425 (not b_next!15425))))

(declare-fun tp!53979 () Bool)

(declare-fun b_and!25567 () Bool)

(assert (=> start!74934 (= tp!53979 b_and!25567)))

(declare-fun mapIsEmpty!28140 () Bool)

(declare-fun mapRes!28140 () Bool)

(assert (=> mapIsEmpty!28140 mapRes!28140))

(declare-fun b!883031 () Bool)

(declare-fun e!491479 () Bool)

(declare-fun e!491483 () Bool)

(assert (=> b!883031 (= e!491479 e!491483)))

(declare-fun res!600040 () Bool)

(assert (=> b!883031 (=> res!600040 e!491483)))

(declare-fun k!854 () (_ BitVec 64))

(declare-datatypes ((array!51448 0))(
  ( (array!51449 (arr!24739 (Array (_ BitVec 32) (_ BitVec 64))) (size!25180 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51448)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!883031 (= res!600040 (not (= (select (arr!24739 _keys!868) from!1053) k!854)))))

(declare-datatypes ((V!28605 0))(
  ( (V!28606 (val!8882 Int)) )
))
(declare-datatypes ((tuple2!11796 0))(
  ( (tuple2!11797 (_1!5908 (_ BitVec 64)) (_2!5908 V!28605)) )
))
(declare-datatypes ((List!17663 0))(
  ( (Nil!17660) (Cons!17659 (h!18790 tuple2!11796) (t!24898 List!17663)) )
))
(declare-datatypes ((ListLongMap!10579 0))(
  ( (ListLongMap!10580 (toList!5305 List!17663)) )
))
(declare-fun lt!399607 () ListLongMap!10579)

(declare-fun lt!399615 () ListLongMap!10579)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8395 0))(
  ( (ValueCellFull!8395 (v!11347 V!28605)) (EmptyCell!8395) )
))
(declare-datatypes ((array!51450 0))(
  ( (array!51451 (arr!24740 (Array (_ BitVec 32) ValueCell!8395)) (size!25181 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51450)

(declare-fun +!2510 (ListLongMap!10579 tuple2!11796) ListLongMap!10579)

(declare-fun get!13046 (ValueCell!8395 V!28605) V!28605)

(declare-fun dynLambda!1267 (Int (_ BitVec 64)) V!28605)

(assert (=> b!883031 (= lt!399607 (+!2510 lt!399615 (tuple2!11797 (select (arr!24739 _keys!868) from!1053) (get!13046 (select (arr!24740 _values!688) from!1053) (dynLambda!1267 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!883032 () Bool)

(assert (=> b!883032 (= e!491483 true)))

(assert (=> b!883032 false))

(declare-datatypes ((Unit!30094 0))(
  ( (Unit!30095) )
))
(declare-fun lt!399613 () Unit!30094)

(declare-datatypes ((List!17664 0))(
  ( (Nil!17661) (Cons!17660 (h!18791 (_ BitVec 64)) (t!24899 List!17664)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!51448 (_ BitVec 64) (_ BitVec 32) List!17664) Unit!30094)

(assert (=> b!883032 (= lt!399613 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k!854 from!1053 Nil!17661))))

(declare-fun arrayContainsKey!0 (array!51448 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!883032 (arrayContainsKey!0 _keys!868 k!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!399611 () Unit!30094)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!51448 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!30094)

(assert (=> b!883032 (= lt!399611 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayNoDuplicates!0 (array!51448 (_ BitVec 32) List!17664) Bool)

(assert (=> b!883032 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17661)))

(declare-fun lt!399614 () Unit!30094)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!51448 (_ BitVec 32) (_ BitVec 32)) Unit!30094)

(assert (=> b!883032 (= lt!399614 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun mapNonEmpty!28140 () Bool)

(declare-fun tp!53978 () Bool)

(declare-fun e!491484 () Bool)

(assert (=> mapNonEmpty!28140 (= mapRes!28140 (and tp!53978 e!491484))))

(declare-fun mapRest!28140 () (Array (_ BitVec 32) ValueCell!8395))

(declare-fun mapValue!28140 () ValueCell!8395)

(declare-fun mapKey!28140 () (_ BitVec 32))

(assert (=> mapNonEmpty!28140 (= (arr!24740 _values!688) (store mapRest!28140 mapKey!28140 mapValue!28140))))

(declare-fun b!883033 () Bool)

(declare-fun res!600046 () Bool)

(declare-fun e!491481 () Bool)

(assert (=> b!883033 (=> (not res!600046) (not e!491481))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51448 (_ BitVec 32)) Bool)

(assert (=> b!883033 (= res!600046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!883034 () Bool)

(declare-fun res!600042 () Bool)

(assert (=> b!883034 (=> (not res!600042) (not e!491481))))

(assert (=> b!883034 (= res!600042 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17661))))

(declare-fun b!883035 () Bool)

(declare-fun res!600038 () Bool)

(assert (=> b!883035 (=> (not res!600038) (not e!491481))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!883035 (= res!600038 (and (= (size!25181 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25180 _keys!868) (size!25181 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!883036 () Bool)

(declare-fun e!491480 () Bool)

(assert (=> b!883036 (= e!491481 e!491480)))

(declare-fun res!600045 () Bool)

(assert (=> b!883036 (=> (not res!600045) (not e!491480))))

(assert (=> b!883036 (= res!600045 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!399610 () array!51450)

(declare-fun minValue!654 () V!28605)

(declare-fun zeroValue!654 () V!28605)

(declare-fun getCurrentListMapNoExtraKeys!3262 (array!51448 array!51450 (_ BitVec 32) (_ BitVec 32) V!28605 V!28605 (_ BitVec 32) Int) ListLongMap!10579)

(assert (=> b!883036 (= lt!399607 (getCurrentListMapNoExtraKeys!3262 _keys!868 lt!399610 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28605)

(assert (=> b!883036 (= lt!399610 (array!51451 (store (arr!24740 _values!688) i!612 (ValueCellFull!8395 v!557)) (size!25181 _values!688)))))

(declare-fun lt!399612 () ListLongMap!10579)

(assert (=> b!883036 (= lt!399612 (getCurrentListMapNoExtraKeys!3262 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!883037 () Bool)

(declare-fun e!491485 () Bool)

(declare-fun tp_is_empty!17669 () Bool)

(assert (=> b!883037 (= e!491485 tp_is_empty!17669)))

(declare-fun b!883038 () Bool)

(assert (=> b!883038 (= e!491480 (not e!491479))))

(declare-fun res!600043 () Bool)

(assert (=> b!883038 (=> res!600043 e!491479)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!883038 (= res!600043 (not (validKeyInArray!0 (select (arr!24739 _keys!868) from!1053))))))

(declare-fun lt!399608 () ListLongMap!10579)

(assert (=> b!883038 (= lt!399608 lt!399615)))

(declare-fun lt!399609 () ListLongMap!10579)

(assert (=> b!883038 (= lt!399615 (+!2510 lt!399609 (tuple2!11797 k!854 v!557)))))

(assert (=> b!883038 (= lt!399608 (getCurrentListMapNoExtraKeys!3262 _keys!868 lt!399610 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!883038 (= lt!399609 (getCurrentListMapNoExtraKeys!3262 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!399616 () Unit!30094)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!735 (array!51448 array!51450 (_ BitVec 32) (_ BitVec 32) V!28605 V!28605 (_ BitVec 32) (_ BitVec 64) V!28605 (_ BitVec 32) Int) Unit!30094)

(assert (=> b!883038 (= lt!399616 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!735 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!883039 () Bool)

(declare-fun res!600037 () Bool)

(assert (=> b!883039 (=> (not res!600037) (not e!491481))))

(assert (=> b!883039 (= res!600037 (and (= (select (arr!24739 _keys!868) i!612) k!854) (bvsle from!1053 i!612)))))

(declare-fun b!883030 () Bool)

(declare-fun res!600044 () Bool)

(assert (=> b!883030 (=> (not res!600044) (not e!491481))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!883030 (= res!600044 (validMask!0 mask!1196))))

(declare-fun res!600041 () Bool)

(assert (=> start!74934 (=> (not res!600041) (not e!491481))))

(assert (=> start!74934 (= res!600041 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25180 _keys!868))))))

(assert (=> start!74934 e!491481))

(assert (=> start!74934 tp_is_empty!17669))

(assert (=> start!74934 true))

(assert (=> start!74934 tp!53979))

(declare-fun array_inv!19462 (array!51448) Bool)

(assert (=> start!74934 (array_inv!19462 _keys!868)))

(declare-fun e!491486 () Bool)

(declare-fun array_inv!19463 (array!51450) Bool)

(assert (=> start!74934 (and (array_inv!19463 _values!688) e!491486)))

(declare-fun b!883040 () Bool)

(declare-fun res!600036 () Bool)

(assert (=> b!883040 (=> (not res!600036) (not e!491481))))

(assert (=> b!883040 (= res!600036 (validKeyInArray!0 k!854))))

(declare-fun b!883041 () Bool)

(declare-fun res!600039 () Bool)

(assert (=> b!883041 (=> (not res!600039) (not e!491481))))

(assert (=> b!883041 (= res!600039 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25180 _keys!868))))))

(declare-fun b!883042 () Bool)

(assert (=> b!883042 (= e!491486 (and e!491485 mapRes!28140))))

(declare-fun condMapEmpty!28140 () Bool)

(declare-fun mapDefault!28140 () ValueCell!8395)

