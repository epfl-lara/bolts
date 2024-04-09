; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!20336 () Bool)

(assert start!20336)

(declare-fun b_free!4983 () Bool)

(declare-fun b_next!4983 () Bool)

(assert (=> start!20336 (= b_free!4983 (not b_next!4983))))

(declare-fun tp!17980 () Bool)

(declare-fun b_and!11747 () Bool)

(assert (=> start!20336 (= tp!17980 b_and!11747)))

(declare-fun b!200282 () Bool)

(declare-fun e!131355 () Bool)

(assert (=> b!200282 (= e!131355 true)))

(declare-datatypes ((V!6099 0))(
  ( (V!6100 (val!2464 Int)) )
))
(declare-datatypes ((tuple2!3718 0))(
  ( (tuple2!3719 (_1!1869 (_ BitVec 64)) (_2!1869 V!6099)) )
))
(declare-datatypes ((List!2658 0))(
  ( (Nil!2655) (Cons!2654 (h!3296 tuple2!3718) (t!7597 List!2658)) )
))
(declare-datatypes ((ListLongMap!2645 0))(
  ( (ListLongMap!2646 (toList!1338 List!2658)) )
))
(declare-fun lt!98916 () ListLongMap!2645)

(declare-fun lt!98917 () ListLongMap!2645)

(declare-fun lt!98926 () tuple2!3718)

(declare-fun +!355 (ListLongMap!2645 tuple2!3718) ListLongMap!2645)

(assert (=> b!200282 (= lt!98916 (+!355 lt!98917 lt!98926))))

(declare-datatypes ((Unit!6017 0))(
  ( (Unit!6018) )
))
(declare-fun lt!98918 () Unit!6017)

(declare-fun lt!98920 () ListLongMap!2645)

(declare-fun v!520 () V!6099)

(declare-fun k0!843 () (_ BitVec 64))

(declare-fun zeroValue!615 () V!6099)

(declare-fun addCommutativeForDiffKeys!80 (ListLongMap!2645 (_ BitVec 64) V!6099 (_ BitVec 64) V!6099) Unit!6017)

(assert (=> b!200282 (= lt!98918 (addCommutativeForDiffKeys!80 lt!98920 k0!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun lt!98915 () ListLongMap!2645)

(declare-fun lt!98922 () tuple2!3718)

(assert (=> b!200282 (= lt!98915 (+!355 lt!98916 lt!98922))))

(declare-fun lt!98924 () ListLongMap!2645)

(declare-fun lt!98921 () tuple2!3718)

(assert (=> b!200282 (= lt!98916 (+!355 lt!98924 lt!98921))))

(declare-fun lt!98923 () ListLongMap!2645)

(assert (=> b!200282 (= lt!98923 (+!355 lt!98917 lt!98922))))

(assert (=> b!200282 (= lt!98917 (+!355 lt!98920 lt!98921))))

(declare-fun lt!98919 () ListLongMap!2645)

(assert (=> b!200282 (= lt!98915 (+!355 (+!355 lt!98919 lt!98921) lt!98922))))

(declare-fun minValue!615 () V!6099)

(assert (=> b!200282 (= lt!98922 (tuple2!3719 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(assert (=> b!200282 (= lt!98921 (tuple2!3719 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapIsEmpty!8327 () Bool)

(declare-fun mapRes!8327 () Bool)

(assert (=> mapIsEmpty!8327 mapRes!8327))

(declare-fun b!200283 () Bool)

(declare-fun e!131357 () Bool)

(assert (=> b!200283 (= e!131357 (not e!131355))))

(declare-fun res!95417 () Bool)

(assert (=> b!200283 (=> res!95417 e!131355)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!200283 (= res!95417 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!2076 0))(
  ( (ValueCellFull!2076 (v!4430 V!6099)) (EmptyCell!2076) )
))
(declare-datatypes ((array!8908 0))(
  ( (array!8909 (arr!4204 (Array (_ BitVec 32) ValueCell!2076)) (size!4529 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8908)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((array!8910 0))(
  ( (array!8911 (arr!4205 (Array (_ BitVec 32) (_ BitVec 64))) (size!4530 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8910)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!923 (array!8910 array!8908 (_ BitVec 32) (_ BitVec 32) V!6099 V!6099 (_ BitVec 32) Int) ListLongMap!2645)

(assert (=> b!200283 (= lt!98923 (getCurrentListMap!923 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98925 () array!8908)

(assert (=> b!200283 (= lt!98915 (getCurrentListMap!923 _keys!825 lt!98925 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200283 (and (= lt!98919 lt!98924) (= lt!98924 lt!98919))))

(assert (=> b!200283 (= lt!98924 (+!355 lt!98920 lt!98926))))

(assert (=> b!200283 (= lt!98926 (tuple2!3719 k0!843 v!520))))

(declare-fun lt!98914 () Unit!6017)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!36 (array!8910 array!8908 (_ BitVec 32) (_ BitVec 32) V!6099 V!6099 (_ BitVec 32) (_ BitVec 64) V!6099 (_ BitVec 32) Int) Unit!6017)

(assert (=> b!200283 (= lt!98914 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!36 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k0!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!294 (array!8910 array!8908 (_ BitVec 32) (_ BitVec 32) V!6099 V!6099 (_ BitVec 32) Int) ListLongMap!2645)

(assert (=> b!200283 (= lt!98919 (getCurrentListMapNoExtraKeys!294 _keys!825 lt!98925 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!200283 (= lt!98925 (array!8909 (store (arr!4204 _values!649) i!601 (ValueCellFull!2076 v!520)) (size!4529 _values!649)))))

(assert (=> b!200283 (= lt!98920 (getCurrentListMapNoExtraKeys!294 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!8327 () Bool)

(declare-fun tp!17981 () Bool)

(declare-fun e!131356 () Bool)

(assert (=> mapNonEmpty!8327 (= mapRes!8327 (and tp!17981 e!131356))))

(declare-fun mapRest!8327 () (Array (_ BitVec 32) ValueCell!2076))

(declare-fun mapValue!8327 () ValueCell!2076)

(declare-fun mapKey!8327 () (_ BitVec 32))

(assert (=> mapNonEmpty!8327 (= (arr!4204 _values!649) (store mapRest!8327 mapKey!8327 mapValue!8327))))

(declare-fun res!95418 () Bool)

(assert (=> start!20336 (=> (not res!95418) (not e!131357))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20336 (= res!95418 (validMask!0 mask!1149))))

(assert (=> start!20336 e!131357))

(declare-fun e!131354 () Bool)

(declare-fun array_inv!2757 (array!8908) Bool)

(assert (=> start!20336 (and (array_inv!2757 _values!649) e!131354)))

(assert (=> start!20336 true))

(declare-fun tp_is_empty!4839 () Bool)

(assert (=> start!20336 tp_is_empty!4839))

(declare-fun array_inv!2758 (array!8910) Bool)

(assert (=> start!20336 (array_inv!2758 _keys!825)))

(assert (=> start!20336 tp!17980))

(declare-fun b!200284 () Bool)

(declare-fun res!95419 () Bool)

(assert (=> b!200284 (=> (not res!95419) (not e!131357))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!200284 (= res!95419 (validKeyInArray!0 k0!843))))

(declare-fun b!200285 () Bool)

(assert (=> b!200285 (= e!131356 tp_is_empty!4839)))

(declare-fun b!200286 () Bool)

(declare-fun res!95413 () Bool)

(assert (=> b!200286 (=> (not res!95413) (not e!131357))))

(declare-datatypes ((List!2659 0))(
  ( (Nil!2656) (Cons!2655 (h!3297 (_ BitVec 64)) (t!7598 List!2659)) )
))
(declare-fun arrayNoDuplicates!0 (array!8910 (_ BitVec 32) List!2659) Bool)

(assert (=> b!200286 (= res!95413 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2656))))

(declare-fun b!200287 () Bool)

(declare-fun res!95414 () Bool)

(assert (=> b!200287 (=> (not res!95414) (not e!131357))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8910 (_ BitVec 32)) Bool)

(assert (=> b!200287 (= res!95414 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!200288 () Bool)

(declare-fun res!95412 () Bool)

(assert (=> b!200288 (=> (not res!95412) (not e!131357))))

(assert (=> b!200288 (= res!95412 (and (= (size!4529 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4530 _keys!825) (size!4529 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!200289 () Bool)

(declare-fun res!95415 () Bool)

(assert (=> b!200289 (=> (not res!95415) (not e!131357))))

(assert (=> b!200289 (= res!95415 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4530 _keys!825))))))

(declare-fun b!200290 () Bool)

(declare-fun e!131358 () Bool)

(assert (=> b!200290 (= e!131354 (and e!131358 mapRes!8327))))

(declare-fun condMapEmpty!8327 () Bool)

(declare-fun mapDefault!8327 () ValueCell!2076)

(assert (=> b!200290 (= condMapEmpty!8327 (= (arr!4204 _values!649) ((as const (Array (_ BitVec 32) ValueCell!2076)) mapDefault!8327)))))

(declare-fun b!200291 () Bool)

(declare-fun res!95416 () Bool)

(assert (=> b!200291 (=> (not res!95416) (not e!131357))))

(assert (=> b!200291 (= res!95416 (= (select (arr!4205 _keys!825) i!601) k0!843))))

(declare-fun b!200292 () Bool)

(assert (=> b!200292 (= e!131358 tp_is_empty!4839)))

(assert (= (and start!20336 res!95418) b!200288))

(assert (= (and b!200288 res!95412) b!200287))

(assert (= (and b!200287 res!95414) b!200286))

(assert (= (and b!200286 res!95413) b!200289))

(assert (= (and b!200289 res!95415) b!200284))

(assert (= (and b!200284 res!95419) b!200291))

(assert (= (and b!200291 res!95416) b!200283))

(assert (= (and b!200283 (not res!95417)) b!200282))

(assert (= (and b!200290 condMapEmpty!8327) mapIsEmpty!8327))

(assert (= (and b!200290 (not condMapEmpty!8327)) mapNonEmpty!8327))

(get-info :version)

(assert (= (and mapNonEmpty!8327 ((_ is ValueCellFull!2076) mapValue!8327)) b!200285))

(assert (= (and b!200290 ((_ is ValueCellFull!2076) mapDefault!8327)) b!200292))

(assert (= start!20336 b!200290))

(declare-fun m!226741 () Bool)

(assert (=> mapNonEmpty!8327 m!226741))

(declare-fun m!226743 () Bool)

(assert (=> b!200282 m!226743))

(declare-fun m!226745 () Bool)

(assert (=> b!200282 m!226745))

(declare-fun m!226747 () Bool)

(assert (=> b!200282 m!226747))

(declare-fun m!226749 () Bool)

(assert (=> b!200282 m!226749))

(declare-fun m!226751 () Bool)

(assert (=> b!200282 m!226751))

(assert (=> b!200282 m!226747))

(declare-fun m!226753 () Bool)

(assert (=> b!200282 m!226753))

(declare-fun m!226755 () Bool)

(assert (=> b!200282 m!226755))

(declare-fun m!226757 () Bool)

(assert (=> b!200282 m!226757))

(declare-fun m!226759 () Bool)

(assert (=> b!200286 m!226759))

(declare-fun m!226761 () Bool)

(assert (=> b!200284 m!226761))

(declare-fun m!226763 () Bool)

(assert (=> b!200283 m!226763))

(declare-fun m!226765 () Bool)

(assert (=> b!200283 m!226765))

(declare-fun m!226767 () Bool)

(assert (=> b!200283 m!226767))

(declare-fun m!226769 () Bool)

(assert (=> b!200283 m!226769))

(declare-fun m!226771 () Bool)

(assert (=> b!200283 m!226771))

(declare-fun m!226773 () Bool)

(assert (=> b!200283 m!226773))

(declare-fun m!226775 () Bool)

(assert (=> b!200283 m!226775))

(declare-fun m!226777 () Bool)

(assert (=> start!20336 m!226777))

(declare-fun m!226779 () Bool)

(assert (=> start!20336 m!226779))

(declare-fun m!226781 () Bool)

(assert (=> start!20336 m!226781))

(declare-fun m!226783 () Bool)

(assert (=> b!200291 m!226783))

(declare-fun m!226785 () Bool)

(assert (=> b!200287 m!226785))

(check-sat (not b!200286) (not b!200284) (not b!200282) tp_is_empty!4839 b_and!11747 (not b_next!4983) (not b!200283) (not b!200287) (not mapNonEmpty!8327) (not start!20336))
(check-sat b_and!11747 (not b_next!4983))
