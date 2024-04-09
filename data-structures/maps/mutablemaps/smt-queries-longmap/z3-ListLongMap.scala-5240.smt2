; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70546 () Bool)

(assert start!70546)

(declare-fun b_free!12849 () Bool)

(declare-fun b_next!12849 () Bool)

(assert (=> start!70546 (= b_free!12849 (not b_next!12849))))

(declare-fun tp!45279 () Bool)

(declare-fun b_and!21697 () Bool)

(assert (=> start!70546 (= tp!45279 b_and!21697)))

(declare-fun mapIsEmpty!23437 () Bool)

(declare-fun mapRes!23437 () Bool)

(assert (=> mapIsEmpty!23437 mapRes!23437))

(declare-fun mapNonEmpty!23437 () Bool)

(declare-fun tp!45280 () Bool)

(declare-fun e!454852 () Bool)

(assert (=> mapNonEmpty!23437 (= mapRes!23437 (and tp!45280 e!454852))))

(declare-datatypes ((V!24413 0))(
  ( (V!24414 (val!7327 Int)) )
))
(declare-datatypes ((ValueCell!6864 0))(
  ( (ValueCellFull!6864 (v!9752 V!24413)) (EmptyCell!6864) )
))
(declare-fun mapRest!23437 () (Array (_ BitVec 32) ValueCell!6864))

(declare-fun mapKey!23437 () (_ BitVec 32))

(declare-datatypes ((array!45286 0))(
  ( (array!45287 (arr!21693 (Array (_ BitVec 32) ValueCell!6864)) (size!22114 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45286)

(declare-fun mapValue!23437 () ValueCell!6864)

(assert (=> mapNonEmpty!23437 (= (arr!21693 _values!788) (store mapRest!23437 mapKey!23437 mapValue!23437))))

(declare-fun b!819061 () Bool)

(declare-fun e!454853 () Bool)

(declare-fun e!454849 () Bool)

(assert (=> b!819061 (= e!454853 (and e!454849 mapRes!23437))))

(declare-fun condMapEmpty!23437 () Bool)

(declare-fun mapDefault!23437 () ValueCell!6864)

(assert (=> b!819061 (= condMapEmpty!23437 (= (arr!21693 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6864)) mapDefault!23437)))))

(declare-fun b!819062 () Bool)

(declare-fun e!454850 () Bool)

(declare-fun e!454851 () Bool)

(assert (=> b!819062 (= e!454850 (not e!454851))))

(declare-fun res!559056 () Bool)

(assert (=> b!819062 (=> res!559056 e!454851)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819062 (= res!559056 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!9652 0))(
  ( (tuple2!9653 (_1!4836 (_ BitVec 64)) (_2!4836 V!24413)) )
))
(declare-datatypes ((List!15512 0))(
  ( (Nil!15509) (Cons!15508 (h!16637 tuple2!9652) (t!21849 List!15512)) )
))
(declare-datatypes ((ListLongMap!8489 0))(
  ( (ListLongMap!8490 (toList!4260 List!15512)) )
))
(declare-fun lt!367476 () ListLongMap!8489)

(declare-fun lt!367468 () ListLongMap!8489)

(assert (=> b!819062 (= lt!367476 lt!367468)))

(declare-fun zeroValueBefore!34 () V!24413)

(declare-datatypes ((array!45288 0))(
  ( (array!45289 (arr!21694 (Array (_ BitVec 32) (_ BitVec 64))) (size!22115 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45288)

(declare-fun zeroValueAfter!34 () V!24413)

(declare-fun minValue!754 () V!24413)

(declare-datatypes ((Unit!27969 0))(
  ( (Unit!27970) )
))
(declare-fun lt!367471 () Unit!27969)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!415 (array!45288 array!45286 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24413 V!24413 V!24413 V!24413 (_ BitVec 32) Int) Unit!27969)

(assert (=> b!819062 (= lt!367471 (lemmaNoChangeToArrayThenSameMapNoExtras!415 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2299 (array!45288 array!45286 (_ BitVec 32) (_ BitVec 32) V!24413 V!24413 (_ BitVec 32) Int) ListLongMap!8489)

(assert (=> b!819062 (= lt!367468 (getCurrentListMapNoExtraKeys!2299 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819062 (= lt!367476 (getCurrentListMapNoExtraKeys!2299 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819063 () Bool)

(declare-fun tp_is_empty!14559 () Bool)

(assert (=> b!819063 (= e!454852 tp_is_empty!14559)))

(declare-fun b!819064 () Bool)

(assert (=> b!819064 (= e!454851 true)))

(declare-fun lt!367477 () tuple2!9652)

(declare-fun lt!367470 () ListLongMap!8489)

(declare-fun lt!367475 () tuple2!9652)

(declare-fun +!1803 (ListLongMap!8489 tuple2!9652) ListLongMap!8489)

(assert (=> b!819064 (= lt!367470 (+!1803 (+!1803 lt!367468 lt!367475) lt!367477))))

(declare-fun lt!367469 () ListLongMap!8489)

(assert (=> b!819064 (= (+!1803 lt!367476 lt!367477) (+!1803 lt!367469 lt!367477))))

(declare-fun lt!367473 () Unit!27969)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!182 (ListLongMap!8489 (_ BitVec 64) V!24413 V!24413) Unit!27969)

(assert (=> b!819064 (= lt!367473 (addSameAsAddTwiceSameKeyDiffValues!182 lt!367476 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819064 (= lt!367477 (tuple2!9653 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!454855 () Bool)

(assert (=> b!819064 e!454855))

(declare-fun res!559057 () Bool)

(assert (=> b!819064 (=> (not res!559057) (not e!454855))))

(declare-fun lt!367472 () ListLongMap!8489)

(assert (=> b!819064 (= res!559057 (= lt!367472 lt!367469))))

(assert (=> b!819064 (= lt!367469 (+!1803 lt!367476 lt!367475))))

(assert (=> b!819064 (= lt!367475 (tuple2!9653 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun lt!367474 () ListLongMap!8489)

(declare-fun getCurrentListMap!2417 (array!45288 array!45286 (_ BitVec 32) (_ BitVec 32) V!24413 V!24413 (_ BitVec 32) Int) ListLongMap!8489)

(assert (=> b!819064 (= lt!367474 (getCurrentListMap!2417 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819064 (= lt!367472 (getCurrentListMap!2417 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819065 () Bool)

(declare-fun res!559060 () Bool)

(assert (=> b!819065 (=> (not res!559060) (not e!454850))))

(declare-datatypes ((List!15513 0))(
  ( (Nil!15510) (Cons!15509 (h!16638 (_ BitVec 64)) (t!21850 List!15513)) )
))
(declare-fun arrayNoDuplicates!0 (array!45288 (_ BitVec 32) List!15513) Bool)

(assert (=> b!819065 (= res!559060 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15510))))

(declare-fun b!819066 () Bool)

(declare-fun res!559059 () Bool)

(assert (=> b!819066 (=> (not res!559059) (not e!454850))))

(assert (=> b!819066 (= res!559059 (and (= (size!22114 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22115 _keys!976) (size!22114 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!819067 () Bool)

(assert (=> b!819067 (= e!454849 tp_is_empty!14559)))

(declare-fun b!819068 () Bool)

(assert (=> b!819068 (= e!454855 (= lt!367474 (+!1803 lt!367468 (tuple2!9653 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!819060 () Bool)

(declare-fun res!559058 () Bool)

(assert (=> b!819060 (=> (not res!559058) (not e!454850))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45288 (_ BitVec 32)) Bool)

(assert (=> b!819060 (= res!559058 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun res!559061 () Bool)

(assert (=> start!70546 (=> (not res!559061) (not e!454850))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70546 (= res!559061 (validMask!0 mask!1312))))

(assert (=> start!70546 e!454850))

(assert (=> start!70546 tp_is_empty!14559))

(declare-fun array_inv!17311 (array!45288) Bool)

(assert (=> start!70546 (array_inv!17311 _keys!976)))

(assert (=> start!70546 true))

(declare-fun array_inv!17312 (array!45286) Bool)

(assert (=> start!70546 (and (array_inv!17312 _values!788) e!454853)))

(assert (=> start!70546 tp!45279))

(assert (= (and start!70546 res!559061) b!819066))

(assert (= (and b!819066 res!559059) b!819060))

(assert (= (and b!819060 res!559058) b!819065))

(assert (= (and b!819065 res!559060) b!819062))

(assert (= (and b!819062 (not res!559056)) b!819064))

(assert (= (and b!819064 res!559057) b!819068))

(assert (= (and b!819061 condMapEmpty!23437) mapIsEmpty!23437))

(assert (= (and b!819061 (not condMapEmpty!23437)) mapNonEmpty!23437))

(get-info :version)

(assert (= (and mapNonEmpty!23437 ((_ is ValueCellFull!6864) mapValue!23437)) b!819063))

(assert (= (and b!819061 ((_ is ValueCellFull!6864) mapDefault!23437)) b!819067))

(assert (= start!70546 b!819061))

(declare-fun m!760723 () Bool)

(assert (=> b!819068 m!760723))

(declare-fun m!760725 () Bool)

(assert (=> start!70546 m!760725))

(declare-fun m!760727 () Bool)

(assert (=> start!70546 m!760727))

(declare-fun m!760729 () Bool)

(assert (=> start!70546 m!760729))

(declare-fun m!760731 () Bool)

(assert (=> b!819064 m!760731))

(declare-fun m!760733 () Bool)

(assert (=> b!819064 m!760733))

(declare-fun m!760735 () Bool)

(assert (=> b!819064 m!760735))

(declare-fun m!760737 () Bool)

(assert (=> b!819064 m!760737))

(declare-fun m!760739 () Bool)

(assert (=> b!819064 m!760739))

(assert (=> b!819064 m!760731))

(declare-fun m!760741 () Bool)

(assert (=> b!819064 m!760741))

(declare-fun m!760743 () Bool)

(assert (=> b!819064 m!760743))

(declare-fun m!760745 () Bool)

(assert (=> b!819064 m!760745))

(declare-fun m!760747 () Bool)

(assert (=> b!819065 m!760747))

(declare-fun m!760749 () Bool)

(assert (=> mapNonEmpty!23437 m!760749))

(declare-fun m!760751 () Bool)

(assert (=> b!819062 m!760751))

(declare-fun m!760753 () Bool)

(assert (=> b!819062 m!760753))

(declare-fun m!760755 () Bool)

(assert (=> b!819062 m!760755))

(declare-fun m!760757 () Bool)

(assert (=> b!819060 m!760757))

(check-sat (not b!819060) tp_is_empty!14559 b_and!21697 (not b_next!12849) (not b!819064) (not mapNonEmpty!23437) (not start!70546) (not b!819062) (not b!819068) (not b!819065))
(check-sat b_and!21697 (not b_next!12849))
