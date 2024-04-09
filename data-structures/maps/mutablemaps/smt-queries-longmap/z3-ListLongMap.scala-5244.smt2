; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70590 () Bool)

(assert start!70590)

(declare-fun b_free!12873 () Bool)

(declare-fun b_next!12873 () Bool)

(assert (=> start!70590 (= b_free!12873 (not b_next!12873))))

(declare-fun tp!45354 () Bool)

(declare-fun b_and!21733 () Bool)

(assert (=> start!70590 (= tp!45354 b_and!21733)))

(declare-fun b!819578 () Bool)

(declare-fun res!559364 () Bool)

(declare-fun e!455227 () Bool)

(assert (=> b!819578 (=> (not res!559364) (not e!455227))))

(declare-datatypes ((array!45334 0))(
  ( (array!45335 (arr!21716 (Array (_ BitVec 32) (_ BitVec 64))) (size!22137 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45334)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45334 (_ BitVec 32)) Bool)

(assert (=> b!819578 (= res!559364 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!819579 () Bool)

(declare-fun e!455231 () Bool)

(declare-fun tp_is_empty!14583 () Bool)

(assert (=> b!819579 (= e!455231 tp_is_empty!14583)))

(declare-fun b!819580 () Bool)

(declare-fun e!455230 () Bool)

(assert (=> b!819580 (= e!455230 true)))

(declare-datatypes ((V!24445 0))(
  ( (V!24446 (val!7339 Int)) )
))
(declare-datatypes ((tuple2!9672 0))(
  ( (tuple2!9673 (_1!4846 (_ BitVec 64)) (_2!4846 V!24445)) )
))
(declare-datatypes ((List!15530 0))(
  ( (Nil!15527) (Cons!15526 (h!16655 tuple2!9672) (t!21869 List!15530)) )
))
(declare-datatypes ((ListLongMap!8509 0))(
  ( (ListLongMap!8510 (toList!4270 List!15530)) )
))
(declare-fun lt!367990 () ListLongMap!8509)

(declare-fun lt!367983 () tuple2!9672)

(declare-fun lt!367989 () tuple2!9672)

(declare-fun lt!367985 () ListLongMap!8509)

(declare-fun +!1813 (ListLongMap!8509 tuple2!9672) ListLongMap!8509)

(assert (=> b!819580 (= lt!367985 (+!1813 (+!1813 lt!367990 lt!367989) lt!367983))))

(declare-fun lt!367982 () ListLongMap!8509)

(declare-fun lt!367984 () ListLongMap!8509)

(assert (=> b!819580 (= (+!1813 lt!367982 lt!367983) (+!1813 lt!367984 lt!367983))))

(declare-fun zeroValueBefore!34 () V!24445)

(declare-datatypes ((Unit!27991 0))(
  ( (Unit!27992) )
))
(declare-fun lt!367987 () Unit!27991)

(declare-fun zeroValueAfter!34 () V!24445)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!190 (ListLongMap!8509 (_ BitVec 64) V!24445 V!24445) Unit!27991)

(assert (=> b!819580 (= lt!367987 (addSameAsAddTwiceSameKeyDiffValues!190 lt!367982 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!819580 (= lt!367983 (tuple2!9673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!455225 () Bool)

(assert (=> b!819580 e!455225))

(declare-fun res!559368 () Bool)

(assert (=> b!819580 (=> (not res!559368) (not e!455225))))

(declare-fun lt!367986 () ListLongMap!8509)

(assert (=> b!819580 (= res!559368 (= lt!367986 lt!367984))))

(assert (=> b!819580 (= lt!367984 (+!1813 lt!367982 lt!367989))))

(assert (=> b!819580 (= lt!367989 (tuple2!9673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun minValue!754 () V!24445)

(declare-datatypes ((ValueCell!6876 0))(
  ( (ValueCellFull!6876 (v!9765 V!24445)) (EmptyCell!6876) )
))
(declare-datatypes ((array!45336 0))(
  ( (array!45337 (arr!21717 (Array (_ BitVec 32) ValueCell!6876)) (size!22138 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45336)

(declare-fun defaultEntry!796 () Int)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lt!367988 () ListLongMap!8509)

(declare-fun getCurrentListMap!2425 (array!45334 array!45336 (_ BitVec 32) (_ BitVec 32) V!24445 V!24445 (_ BitVec 32) Int) ListLongMap!8509)

(assert (=> b!819580 (= lt!367988 (getCurrentListMap!2425 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!819580 (= lt!367986 (getCurrentListMap!2425 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23476 () Bool)

(declare-fun mapRes!23476 () Bool)

(assert (=> mapIsEmpty!23476 mapRes!23476))

(declare-fun b!819581 () Bool)

(declare-fun e!455229 () Bool)

(assert (=> b!819581 (= e!455229 (and e!455231 mapRes!23476))))

(declare-fun condMapEmpty!23476 () Bool)

(declare-fun mapDefault!23476 () ValueCell!6876)

(assert (=> b!819581 (= condMapEmpty!23476 (= (arr!21717 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6876)) mapDefault!23476)))))

(declare-fun b!819582 () Bool)

(declare-fun e!455228 () Bool)

(assert (=> b!819582 (= e!455228 tp_is_empty!14583)))

(declare-fun b!819583 () Bool)

(declare-fun res!559369 () Bool)

(assert (=> b!819583 (=> (not res!559369) (not e!455227))))

(declare-datatypes ((List!15531 0))(
  ( (Nil!15528) (Cons!15527 (h!16656 (_ BitVec 64)) (t!21870 List!15531)) )
))
(declare-fun arrayNoDuplicates!0 (array!45334 (_ BitVec 32) List!15531) Bool)

(assert (=> b!819583 (= res!559369 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15528))))

(declare-fun mapNonEmpty!23476 () Bool)

(declare-fun tp!45355 () Bool)

(assert (=> mapNonEmpty!23476 (= mapRes!23476 (and tp!45355 e!455228))))

(declare-fun mapValue!23476 () ValueCell!6876)

(declare-fun mapRest!23476 () (Array (_ BitVec 32) ValueCell!6876))

(declare-fun mapKey!23476 () (_ BitVec 32))

(assert (=> mapNonEmpty!23476 (= (arr!21717 _values!788) (store mapRest!23476 mapKey!23476 mapValue!23476))))

(declare-fun b!819584 () Bool)

(assert (=> b!819584 (= e!455225 (= lt!367988 (+!1813 lt!367990 (tuple2!9673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun b!819585 () Bool)

(assert (=> b!819585 (= e!455227 (not e!455230))))

(declare-fun res!559366 () Bool)

(assert (=> b!819585 (=> res!559366 e!455230)))

(assert (=> b!819585 (= res!559366 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!819585 (= lt!367982 lt!367990)))

(declare-fun lt!367991 () Unit!27991)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!423 (array!45334 array!45336 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24445 V!24445 V!24445 V!24445 (_ BitVec 32) Int) Unit!27991)

(assert (=> b!819585 (= lt!367991 (lemmaNoChangeToArrayThenSameMapNoExtras!423 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2307 (array!45334 array!45336 (_ BitVec 32) (_ BitVec 32) V!24445 V!24445 (_ BitVec 32) Int) ListLongMap!8509)

(assert (=> b!819585 (= lt!367990 (getCurrentListMapNoExtraKeys!2307 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!819585 (= lt!367982 (getCurrentListMapNoExtraKeys!2307 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!819586 () Bool)

(declare-fun res!559365 () Bool)

(assert (=> b!819586 (=> (not res!559365) (not e!455227))))

(assert (=> b!819586 (= res!559365 (and (= (size!22138 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22137 _keys!976) (size!22138 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!559367 () Bool)

(assert (=> start!70590 (=> (not res!559367) (not e!455227))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70590 (= res!559367 (validMask!0 mask!1312))))

(assert (=> start!70590 e!455227))

(assert (=> start!70590 tp_is_empty!14583))

(declare-fun array_inv!17331 (array!45334) Bool)

(assert (=> start!70590 (array_inv!17331 _keys!976)))

(assert (=> start!70590 true))

(declare-fun array_inv!17332 (array!45336) Bool)

(assert (=> start!70590 (and (array_inv!17332 _values!788) e!455229)))

(assert (=> start!70590 tp!45354))

(assert (= (and start!70590 res!559367) b!819586))

(assert (= (and b!819586 res!559365) b!819578))

(assert (= (and b!819578 res!559364) b!819583))

(assert (= (and b!819583 res!559369) b!819585))

(assert (= (and b!819585 (not res!559366)) b!819580))

(assert (= (and b!819580 res!559368) b!819584))

(assert (= (and b!819581 condMapEmpty!23476) mapIsEmpty!23476))

(assert (= (and b!819581 (not condMapEmpty!23476)) mapNonEmpty!23476))

(get-info :version)

(assert (= (and mapNonEmpty!23476 ((_ is ValueCellFull!6876) mapValue!23476)) b!819582))

(assert (= (and b!819581 ((_ is ValueCellFull!6876) mapDefault!23476)) b!819579))

(assert (= start!70590 b!819581))

(declare-fun m!761393 () Bool)

(assert (=> b!819585 m!761393))

(declare-fun m!761395 () Bool)

(assert (=> b!819585 m!761395))

(declare-fun m!761397 () Bool)

(assert (=> b!819585 m!761397))

(declare-fun m!761399 () Bool)

(assert (=> b!819578 m!761399))

(declare-fun m!761401 () Bool)

(assert (=> mapNonEmpty!23476 m!761401))

(declare-fun m!761403 () Bool)

(assert (=> b!819583 m!761403))

(declare-fun m!761405 () Bool)

(assert (=> b!819580 m!761405))

(declare-fun m!761407 () Bool)

(assert (=> b!819580 m!761407))

(declare-fun m!761409 () Bool)

(assert (=> b!819580 m!761409))

(declare-fun m!761411 () Bool)

(assert (=> b!819580 m!761411))

(declare-fun m!761413 () Bool)

(assert (=> b!819580 m!761413))

(assert (=> b!819580 m!761407))

(declare-fun m!761415 () Bool)

(assert (=> b!819580 m!761415))

(declare-fun m!761417 () Bool)

(assert (=> b!819580 m!761417))

(declare-fun m!761419 () Bool)

(assert (=> b!819580 m!761419))

(declare-fun m!761421 () Bool)

(assert (=> start!70590 m!761421))

(declare-fun m!761423 () Bool)

(assert (=> start!70590 m!761423))

(declare-fun m!761425 () Bool)

(assert (=> start!70590 m!761425))

(declare-fun m!761427 () Bool)

(assert (=> b!819584 m!761427))

(check-sat (not b!819580) (not b!819578) (not start!70590) (not b!819583) (not b!819584) (not b_next!12873) tp_is_empty!14583 (not b!819585) (not mapNonEmpty!23476) b_and!21733)
(check-sat b_and!21733 (not b_next!12873))
