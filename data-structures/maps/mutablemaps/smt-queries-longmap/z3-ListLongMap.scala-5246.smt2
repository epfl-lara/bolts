; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70602 () Bool)

(assert start!70602)

(declare-fun b_free!12885 () Bool)

(declare-fun b_next!12885 () Bool)

(assert (=> start!70602 (= b_free!12885 (not b_next!12885))))

(declare-fun tp!45391 () Bool)

(declare-fun b_and!21745 () Bool)

(assert (=> start!70602 (= tp!45391 b_and!21745)))

(declare-fun b!819740 () Bool)

(declare-fun e!455353 () Bool)

(declare-fun e!455351 () Bool)

(assert (=> b!819740 (= e!455353 (not e!455351))))

(declare-fun res!559474 () Bool)

(assert (=> b!819740 (=> res!559474 e!455351)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819740 (= res!559474 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24461 0))(
  ( (V!24462 (val!7345 Int)) )
))
(declare-datatypes ((tuple2!9680 0))(
  ( (tuple2!9681 (_1!4850 (_ BitVec 64)) (_2!4850 V!24461)) )
))
(declare-datatypes ((List!15538 0))(
  ( (Nil!15535) (Cons!15534 (h!16663 tuple2!9680) (t!21877 List!15538)) )
))
(declare-datatypes ((ListLongMap!8517 0))(
  ( (ListLongMap!8518 (toList!4274 List!15538)) )
))
(declare-fun lt!368163 () ListLongMap!8517)

(declare-fun lt!368164 () ListLongMap!8517)

(assert (=> b!819740 (= lt!368163 lt!368164)))

(declare-fun zeroValueBefore!34 () V!24461)

(declare-datatypes ((array!45354 0))(
  ( (array!45355 (arr!21726 (Array (_ BitVec 32) (_ BitVec 64))) (size!22147 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45354)

(declare-fun zeroValueAfter!34 () V!24461)

(declare-fun minValue!754 () V!24461)

(declare-datatypes ((ValueCell!6882 0))(
  ( (ValueCellFull!6882 (v!9771 V!24461)) (EmptyCell!6882) )
))
(declare-datatypes ((array!45356 0))(
  ( (array!45357 (arr!21727 (Array (_ BitVec 32) ValueCell!6882)) (size!22148 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45356)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-datatypes ((Unit!27999 0))(
  ( (Unit!28000) )
))
(declare-fun lt!368168 () Unit!27999)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!427 (array!45354 array!45356 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24461 V!24461 V!24461 V!24461 (_ BitVec 32) Int) Unit!27999)

(assert (=> b!819740 (= lt!368168 (lemmaNoChangeToArrayThenSameMapNoExtras!427 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2311 (array!45354 array!45356 (_ BitVec 32) (_ BitVec 32) V!24461 V!24461 (_ BitVec 32) Int) ListLongMap!8517)

(assert (=> b!819740 (= lt!368164 (getCurrentListMapNoExtraKeys!2311 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819740 (= lt!368163 (getCurrentListMapNoExtraKeys!2311 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819741 () Bool)

(declare-fun e!455354 () Bool)

(declare-fun tp_is_empty!14595 () Bool)

(assert (=> b!819741 (= e!455354 tp_is_empty!14595)))

(declare-fun b!819742 () Bool)

(declare-fun e!455356 () Bool)

(assert (=> b!819742 (= e!455356 tp_is_empty!14595)))

(declare-fun b!819743 () Bool)

(declare-fun res!559476 () Bool)

(assert (=> b!819743 (=> (not res!559476) (not e!455353))))

(declare-datatypes ((List!15539 0))(
  ( (Nil!15536) (Cons!15535 (h!16664 (_ BitVec 64)) (t!21878 List!15539)) )
))
(declare-fun arrayNoDuplicates!0 (array!45354 (_ BitVec 32) List!15539) Bool)

(assert (=> b!819743 (= res!559476 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15536))))

(declare-fun b!819744 () Bool)

(declare-fun e!455355 () Bool)

(declare-fun lt!368171 () ListLongMap!8517)

(declare-fun +!1817 (ListLongMap!8517 tuple2!9680) ListLongMap!8517)

(assert (=> b!819744 (= e!455355 (= lt!368171 (+!1817 lt!368164 (tuple2!9681 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun res!559477 () Bool)

(assert (=> start!70602 (=> (not res!559477) (not e!455353))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70602 (= res!559477 (validMask!0 mask!1312))))

(assert (=> start!70602 e!455353))

(assert (=> start!70602 tp_is_empty!14595))

(declare-fun array_inv!17337 (array!45354) Bool)

(assert (=> start!70602 (array_inv!17337 _keys!976)))

(assert (=> start!70602 true))

(declare-fun e!455352 () Bool)

(declare-fun array_inv!17338 (array!45356) Bool)

(assert (=> start!70602 (and (array_inv!17338 _values!788) e!455352)))

(assert (=> start!70602 tp!45391))

(declare-fun b!819745 () Bool)

(declare-fun res!559473 () Bool)

(assert (=> b!819745 (=> (not res!559473) (not e!455353))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45354 (_ BitVec 32)) Bool)

(assert (=> b!819745 (= res!559473 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!819746 () Bool)

(declare-fun mapRes!23494 () Bool)

(assert (=> b!819746 (= e!455352 (and e!455354 mapRes!23494))))

(declare-fun condMapEmpty!23494 () Bool)

(declare-fun mapDefault!23494 () ValueCell!6882)

(assert (=> b!819746 (= condMapEmpty!23494 (= (arr!21727 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6882)) mapDefault!23494)))))

(declare-fun b!819747 () Bool)

(assert (=> b!819747 (= e!455351 true)))

(declare-fun lt!368162 () tuple2!9680)

(declare-fun lt!368167 () tuple2!9680)

(declare-fun lt!368166 () ListLongMap!8517)

(assert (=> b!819747 (= lt!368166 (+!1817 (+!1817 lt!368164 lt!368162) lt!368167))))

(declare-fun lt!368170 () ListLongMap!8517)

(assert (=> b!819747 (= (+!1817 lt!368163 lt!368167) (+!1817 lt!368170 lt!368167))))

(declare-fun lt!368165 () Unit!27999)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!193 (ListLongMap!8517 (_ BitVec 64) V!24461 V!24461) Unit!27999)

(assert (=> b!819747 (= lt!368165 (addSameAsAddTwiceSameKeyDiffValues!193 lt!368163 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819747 (= lt!368167 (tuple2!9681 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(assert (=> b!819747 e!455355))

(declare-fun res!559475 () Bool)

(assert (=> b!819747 (=> (not res!559475) (not e!455355))))

(declare-fun lt!368169 () ListLongMap!8517)

(assert (=> b!819747 (= res!559475 (= lt!368169 lt!368170))))

(assert (=> b!819747 (= lt!368170 (+!1817 lt!368163 lt!368162))))

(assert (=> b!819747 (= lt!368162 (tuple2!9681 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun getCurrentListMap!2428 (array!45354 array!45356 (_ BitVec 32) (_ BitVec 32) V!24461 V!24461 (_ BitVec 32) Int) ListLongMap!8517)

(assert (=> b!819747 (= lt!368171 (getCurrentListMap!2428 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819747 (= lt!368169 (getCurrentListMap!2428 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819748 () Bool)

(declare-fun res!559472 () Bool)

(assert (=> b!819748 (=> (not res!559472) (not e!455353))))

(assert (=> b!819748 (= res!559472 (and (= (size!22148 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22147 _keys!976) (size!22148 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23494 () Bool)

(declare-fun tp!45390 () Bool)

(assert (=> mapNonEmpty!23494 (= mapRes!23494 (and tp!45390 e!455356))))

(declare-fun mapValue!23494 () ValueCell!6882)

(declare-fun mapRest!23494 () (Array (_ BitVec 32) ValueCell!6882))

(declare-fun mapKey!23494 () (_ BitVec 32))

(assert (=> mapNonEmpty!23494 (= (arr!21727 _values!788) (store mapRest!23494 mapKey!23494 mapValue!23494))))

(declare-fun mapIsEmpty!23494 () Bool)

(assert (=> mapIsEmpty!23494 mapRes!23494))

(assert (= (and start!70602 res!559477) b!819748))

(assert (= (and b!819748 res!559472) b!819745))

(assert (= (and b!819745 res!559473) b!819743))

(assert (= (and b!819743 res!559476) b!819740))

(assert (= (and b!819740 (not res!559474)) b!819747))

(assert (= (and b!819747 res!559475) b!819744))

(assert (= (and b!819746 condMapEmpty!23494) mapIsEmpty!23494))

(assert (= (and b!819746 (not condMapEmpty!23494)) mapNonEmpty!23494))

(get-info :version)

(assert (= (and mapNonEmpty!23494 ((_ is ValueCellFull!6882) mapValue!23494)) b!819742))

(assert (= (and b!819746 ((_ is ValueCellFull!6882) mapDefault!23494)) b!819741))

(assert (= start!70602 b!819746))

(declare-fun m!761609 () Bool)

(assert (=> b!819745 m!761609))

(declare-fun m!761611 () Bool)

(assert (=> b!819743 m!761611))

(declare-fun m!761613 () Bool)

(assert (=> b!819740 m!761613))

(declare-fun m!761615 () Bool)

(assert (=> b!819740 m!761615))

(declare-fun m!761617 () Bool)

(assert (=> b!819740 m!761617))

(declare-fun m!761619 () Bool)

(assert (=> mapNonEmpty!23494 m!761619))

(declare-fun m!761621 () Bool)

(assert (=> b!819744 m!761621))

(declare-fun m!761623 () Bool)

(assert (=> b!819747 m!761623))

(declare-fun m!761625 () Bool)

(assert (=> b!819747 m!761625))

(declare-fun m!761627 () Bool)

(assert (=> b!819747 m!761627))

(declare-fun m!761629 () Bool)

(assert (=> b!819747 m!761629))

(declare-fun m!761631 () Bool)

(assert (=> b!819747 m!761631))

(assert (=> b!819747 m!761627))

(declare-fun m!761633 () Bool)

(assert (=> b!819747 m!761633))

(declare-fun m!761635 () Bool)

(assert (=> b!819747 m!761635))

(declare-fun m!761637 () Bool)

(assert (=> b!819747 m!761637))

(declare-fun m!761639 () Bool)

(assert (=> start!70602 m!761639))

(declare-fun m!761641 () Bool)

(assert (=> start!70602 m!761641))

(declare-fun m!761643 () Bool)

(assert (=> start!70602 m!761643))

(check-sat (not start!70602) b_and!21745 (not b!819745) (not b!819744) (not b!819740) tp_is_empty!14595 (not b!819743) (not b!819747) (not b_next!12885) (not mapNonEmpty!23494))
(check-sat b_and!21745 (not b_next!12885))
