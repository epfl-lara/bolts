; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70756 () Bool)

(assert start!70756)

(declare-fun b_free!13005 () Bool)

(declare-fun b_next!13005 () Bool)

(assert (=> start!70756 (= b_free!13005 (not b_next!13005))))

(declare-fun tp!45757 () Bool)

(declare-fun b_and!21885 () Bool)

(assert (=> start!70756 (= tp!45757 b_and!21885)))

(declare-fun res!560454 () Bool)

(declare-fun e!456572 () Bool)

(assert (=> start!70756 (=> (not res!560454) (not e!456572))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70756 (= res!560454 (validMask!0 mask!1312))))

(assert (=> start!70756 e!456572))

(declare-fun tp_is_empty!14715 () Bool)

(assert (=> start!70756 tp_is_empty!14715))

(declare-datatypes ((array!45586 0))(
  ( (array!45587 (arr!21840 (Array (_ BitVec 32) (_ BitVec 64))) (size!22261 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45586)

(declare-fun array_inv!17421 (array!45586) Bool)

(assert (=> start!70756 (array_inv!17421 _keys!976)))

(assert (=> start!70756 true))

(declare-datatypes ((V!24621 0))(
  ( (V!24622 (val!7405 Int)) )
))
(declare-datatypes ((ValueCell!6942 0))(
  ( (ValueCellFull!6942 (v!9832 V!24621)) (EmptyCell!6942) )
))
(declare-datatypes ((array!45588 0))(
  ( (array!45589 (arr!21841 (Array (_ BitVec 32) ValueCell!6942)) (size!22262 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45588)

(declare-fun e!456569 () Bool)

(declare-fun array_inv!17422 (array!45588) Bool)

(assert (=> start!70756 (and (array_inv!17422 _values!788) e!456569)))

(assert (=> start!70756 tp!45757))

(declare-fun b!821418 () Bool)

(declare-fun e!456571 () Bool)

(assert (=> b!821418 (= e!456571 true)))

(declare-fun zeroValueBefore!34 () V!24621)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun minValue!754 () V!24621)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((tuple2!9766 0))(
  ( (tuple2!9767 (_1!4893 (_ BitVec 64)) (_2!4893 V!24621)) )
))
(declare-datatypes ((List!15626 0))(
  ( (Nil!15623) (Cons!15622 (h!16751 tuple2!9766) (t!21969 List!15626)) )
))
(declare-datatypes ((ListLongMap!8603 0))(
  ( (ListLongMap!8604 (toList!4317 List!15626)) )
))
(declare-fun lt!369235 () ListLongMap!8603)

(declare-fun getCurrentListMap!2452 (array!45586 array!45588 (_ BitVec 32) (_ BitVec 32) V!24621 V!24621 (_ BitVec 32) Int) ListLongMap!8603)

(assert (=> b!821418 (= lt!369235 (getCurrentListMap!2452 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23680 () Bool)

(declare-fun mapRes!23680 () Bool)

(declare-fun tp!45756 () Bool)

(declare-fun e!456573 () Bool)

(assert (=> mapNonEmpty!23680 (= mapRes!23680 (and tp!45756 e!456573))))

(declare-fun mapRest!23680 () (Array (_ BitVec 32) ValueCell!6942))

(declare-fun mapKey!23680 () (_ BitVec 32))

(declare-fun mapValue!23680 () ValueCell!6942)

(assert (=> mapNonEmpty!23680 (= (arr!21841 _values!788) (store mapRest!23680 mapKey!23680 mapValue!23680))))

(declare-fun b!821419 () Bool)

(assert (=> b!821419 (= e!456572 (not e!456571))))

(declare-fun res!560456 () Bool)

(assert (=> b!821419 (=> res!560456 e!456571)))

(assert (=> b!821419 (= res!560456 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!369238 () ListLongMap!8603)

(declare-fun lt!369236 () ListLongMap!8603)

(assert (=> b!821419 (= lt!369238 lt!369236)))

(declare-fun zeroValueAfter!34 () V!24621)

(declare-datatypes ((Unit!28081 0))(
  ( (Unit!28082) )
))
(declare-fun lt!369237 () Unit!28081)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!464 (array!45586 array!45588 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24621 V!24621 V!24621 V!24621 (_ BitVec 32) Int) Unit!28081)

(assert (=> b!821419 (= lt!369237 (lemmaNoChangeToArrayThenSameMapNoExtras!464 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2348 (array!45586 array!45588 (_ BitVec 32) (_ BitVec 32) V!24621 V!24621 (_ BitVec 32) Int) ListLongMap!8603)

(assert (=> b!821419 (= lt!369236 (getCurrentListMapNoExtraKeys!2348 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!821419 (= lt!369238 (getCurrentListMapNoExtraKeys!2348 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23680 () Bool)

(assert (=> mapIsEmpty!23680 mapRes!23680))

(declare-fun b!821420 () Bool)

(declare-fun res!560455 () Bool)

(assert (=> b!821420 (=> (not res!560455) (not e!456572))))

(declare-datatypes ((List!15627 0))(
  ( (Nil!15624) (Cons!15623 (h!16752 (_ BitVec 64)) (t!21970 List!15627)) )
))
(declare-fun arrayNoDuplicates!0 (array!45586 (_ BitVec 32) List!15627) Bool)

(assert (=> b!821420 (= res!560455 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15624))))

(declare-fun b!821421 () Bool)

(assert (=> b!821421 (= e!456573 tp_is_empty!14715)))

(declare-fun b!821422 () Bool)

(declare-fun e!456574 () Bool)

(assert (=> b!821422 (= e!456569 (and e!456574 mapRes!23680))))

(declare-fun condMapEmpty!23680 () Bool)

(declare-fun mapDefault!23680 () ValueCell!6942)

(assert (=> b!821422 (= condMapEmpty!23680 (= (arr!21841 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6942)) mapDefault!23680)))))

(declare-fun b!821423 () Bool)

(declare-fun res!560457 () Bool)

(assert (=> b!821423 (=> (not res!560457) (not e!456572))))

(assert (=> b!821423 (= res!560457 (and (= (size!22262 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22261 _keys!976) (size!22262 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!821424 () Bool)

(declare-fun res!560458 () Bool)

(assert (=> b!821424 (=> (not res!560458) (not e!456572))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45586 (_ BitVec 32)) Bool)

(assert (=> b!821424 (= res!560458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!821425 () Bool)

(assert (=> b!821425 (= e!456574 tp_is_empty!14715)))

(assert (= (and start!70756 res!560454) b!821423))

(assert (= (and b!821423 res!560457) b!821424))

(assert (= (and b!821424 res!560458) b!821420))

(assert (= (and b!821420 res!560455) b!821419))

(assert (= (and b!821419 (not res!560456)) b!821418))

(assert (= (and b!821422 condMapEmpty!23680) mapIsEmpty!23680))

(assert (= (and b!821422 (not condMapEmpty!23680)) mapNonEmpty!23680))

(get-info :version)

(assert (= (and mapNonEmpty!23680 ((_ is ValueCellFull!6942) mapValue!23680)) b!821421))

(assert (= (and b!821422 ((_ is ValueCellFull!6942) mapDefault!23680)) b!821425))

(assert (= start!70756 b!821422))

(declare-fun m!763283 () Bool)

(assert (=> b!821418 m!763283))

(declare-fun m!763285 () Bool)

(assert (=> b!821419 m!763285))

(declare-fun m!763287 () Bool)

(assert (=> b!821419 m!763287))

(declare-fun m!763289 () Bool)

(assert (=> b!821419 m!763289))

(declare-fun m!763291 () Bool)

(assert (=> b!821424 m!763291))

(declare-fun m!763293 () Bool)

(assert (=> mapNonEmpty!23680 m!763293))

(declare-fun m!763295 () Bool)

(assert (=> b!821420 m!763295))

(declare-fun m!763297 () Bool)

(assert (=> start!70756 m!763297))

(declare-fun m!763299 () Bool)

(assert (=> start!70756 m!763299))

(declare-fun m!763301 () Bool)

(assert (=> start!70756 m!763301))

(check-sat tp_is_empty!14715 (not mapNonEmpty!23680) (not b!821419) (not b!821424) (not b!821420) b_and!21885 (not b_next!13005) (not b!821418) (not start!70756))
(check-sat b_and!21885 (not b_next!13005))
