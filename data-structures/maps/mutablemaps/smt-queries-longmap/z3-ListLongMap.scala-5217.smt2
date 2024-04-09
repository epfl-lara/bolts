; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70378 () Bool)

(assert start!70378)

(declare-fun b_free!12711 () Bool)

(declare-fun b_next!12711 () Bool)

(assert (=> start!70378 (= b_free!12711 (not b_next!12711))))

(declare-fun tp!44860 () Bool)

(declare-fun b_and!21541 () Bool)

(assert (=> start!70378 (= tp!44860 b_and!21541)))

(declare-fun b!817161 () Bool)

(declare-fun e!453450 () Bool)

(declare-fun tp_is_empty!14421 () Bool)

(assert (=> b!817161 (= e!453450 tp_is_empty!14421)))

(declare-fun b!817162 () Bool)

(declare-fun res!557925 () Bool)

(declare-fun e!453449 () Bool)

(assert (=> b!817162 (=> (not res!557925) (not e!453449))))

(declare-datatypes ((array!45016 0))(
  ( (array!45017 (arr!21560 (Array (_ BitVec 32) (_ BitVec 64))) (size!21981 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45016)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24229 0))(
  ( (V!24230 (val!7258 Int)) )
))
(declare-datatypes ((ValueCell!6795 0))(
  ( (ValueCellFull!6795 (v!9683 V!24229)) (EmptyCell!6795) )
))
(declare-datatypes ((array!45018 0))(
  ( (array!45019 (arr!21561 (Array (_ BitVec 32) ValueCell!6795)) (size!21982 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45018)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!817162 (= res!557925 (and (= (size!21982 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21981 _keys!976) (size!21982 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!557922 () Bool)

(assert (=> start!70378 (=> (not res!557922) (not e!453449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70378 (= res!557922 (validMask!0 mask!1312))))

(assert (=> start!70378 e!453449))

(assert (=> start!70378 tp_is_empty!14421))

(declare-fun array_inv!17221 (array!45016) Bool)

(assert (=> start!70378 (array_inv!17221 _keys!976)))

(assert (=> start!70378 true))

(declare-fun e!453448 () Bool)

(declare-fun array_inv!17222 (array!45018) Bool)

(assert (=> start!70378 (and (array_inv!17222 _values!788) e!453448)))

(assert (=> start!70378 tp!44860))

(declare-fun b!817163 () Bool)

(declare-fun e!453452 () Bool)

(assert (=> b!817163 (= e!453452 tp_is_empty!14421)))

(declare-fun b!817164 () Bool)

(declare-fun res!557923 () Bool)

(assert (=> b!817164 (=> (not res!557923) (not e!453449))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45016 (_ BitVec 32)) Bool)

(assert (=> b!817164 (= res!557923 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23224 () Bool)

(declare-fun mapRes!23224 () Bool)

(declare-fun tp!44859 () Bool)

(assert (=> mapNonEmpty!23224 (= mapRes!23224 (and tp!44859 e!453452))))

(declare-fun mapKey!23224 () (_ BitVec 32))

(declare-fun mapRest!23224 () (Array (_ BitVec 32) ValueCell!6795))

(declare-fun mapValue!23224 () ValueCell!6795)

(assert (=> mapNonEmpty!23224 (= (arr!21561 _values!788) (store mapRest!23224 mapKey!23224 mapValue!23224))))

(declare-fun b!817165 () Bool)

(assert (=> b!817165 (= e!453448 (and e!453450 mapRes!23224))))

(declare-fun condMapEmpty!23224 () Bool)

(declare-fun mapDefault!23224 () ValueCell!6795)

(assert (=> b!817165 (= condMapEmpty!23224 (= (arr!21561 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6795)) mapDefault!23224)))))

(declare-fun b!817166 () Bool)

(assert (=> b!817166 (= e!453449 (not true))))

(declare-datatypes ((tuple2!9542 0))(
  ( (tuple2!9543 (_1!4781 (_ BitVec 64)) (_2!4781 V!24229)) )
))
(declare-datatypes ((List!15411 0))(
  ( (Nil!15408) (Cons!15407 (h!16536 tuple2!9542) (t!21744 List!15411)) )
))
(declare-datatypes ((ListLongMap!8379 0))(
  ( (ListLongMap!8380 (toList!4205 List!15411)) )
))
(declare-fun lt!366145 () ListLongMap!8379)

(declare-fun lt!366146 () ListLongMap!8379)

(assert (=> b!817166 (= lt!366145 lt!366146)))

(declare-fun zeroValueBefore!34 () V!24229)

(declare-fun zeroValueAfter!34 () V!24229)

(declare-fun minValue!754 () V!24229)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27864 0))(
  ( (Unit!27865) )
))
(declare-fun lt!366144 () Unit!27864)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!367 (array!45016 array!45018 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24229 V!24229 V!24229 V!24229 (_ BitVec 32) Int) Unit!27864)

(assert (=> b!817166 (= lt!366144 (lemmaNoChangeToArrayThenSameMapNoExtras!367 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2251 (array!45016 array!45018 (_ BitVec 32) (_ BitVec 32) V!24229 V!24229 (_ BitVec 32) Int) ListLongMap!8379)

(assert (=> b!817166 (= lt!366146 (getCurrentListMapNoExtraKeys!2251 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817166 (= lt!366145 (getCurrentListMapNoExtraKeys!2251 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23224 () Bool)

(assert (=> mapIsEmpty!23224 mapRes!23224))

(declare-fun b!817167 () Bool)

(declare-fun res!557924 () Bool)

(assert (=> b!817167 (=> (not res!557924) (not e!453449))))

(declare-datatypes ((List!15412 0))(
  ( (Nil!15409) (Cons!15408 (h!16537 (_ BitVec 64)) (t!21745 List!15412)) )
))
(declare-fun arrayNoDuplicates!0 (array!45016 (_ BitVec 32) List!15412) Bool)

(assert (=> b!817167 (= res!557924 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15409))))

(assert (= (and start!70378 res!557922) b!817162))

(assert (= (and b!817162 res!557925) b!817164))

(assert (= (and b!817164 res!557923) b!817167))

(assert (= (and b!817167 res!557924) b!817166))

(assert (= (and b!817165 condMapEmpty!23224) mapIsEmpty!23224))

(assert (= (and b!817165 (not condMapEmpty!23224)) mapNonEmpty!23224))

(get-info :version)

(assert (= (and mapNonEmpty!23224 ((_ is ValueCellFull!6795) mapValue!23224)) b!817163))

(assert (= (and b!817165 ((_ is ValueCellFull!6795) mapDefault!23224)) b!817161))

(assert (= start!70378 b!817165))

(declare-fun m!758853 () Bool)

(assert (=> b!817166 m!758853))

(declare-fun m!758855 () Bool)

(assert (=> b!817166 m!758855))

(declare-fun m!758857 () Bool)

(assert (=> b!817166 m!758857))

(declare-fun m!758859 () Bool)

(assert (=> start!70378 m!758859))

(declare-fun m!758861 () Bool)

(assert (=> start!70378 m!758861))

(declare-fun m!758863 () Bool)

(assert (=> start!70378 m!758863))

(declare-fun m!758865 () Bool)

(assert (=> mapNonEmpty!23224 m!758865))

(declare-fun m!758867 () Bool)

(assert (=> b!817167 m!758867))

(declare-fun m!758869 () Bool)

(assert (=> b!817164 m!758869))

(check-sat b_and!21541 (not b!817167) tp_is_empty!14421 (not start!70378) (not b_next!12711) (not mapNonEmpty!23224) (not b!817166) (not b!817164))
(check-sat b_and!21541 (not b_next!12711))
