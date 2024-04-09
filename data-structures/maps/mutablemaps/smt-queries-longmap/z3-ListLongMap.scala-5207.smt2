; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70300 () Bool)

(assert start!70300)

(declare-fun b_free!12651 () Bool)

(declare-fun b_next!12651 () Bool)

(assert (=> start!70300 (= b_free!12651 (not b_next!12651))))

(declare-fun tp!44676 () Bool)

(declare-fun b_and!21469 () Bool)

(assert (=> start!70300 (= tp!44676 b_and!21469)))

(declare-fun mapIsEmpty!23131 () Bool)

(declare-fun mapRes!23131 () Bool)

(assert (=> mapIsEmpty!23131 mapRes!23131))

(declare-fun b!816280 () Bool)

(declare-fun res!557416 () Bool)

(declare-fun e!452823 () Bool)

(assert (=> b!816280 (=> (not res!557416) (not e!452823))))

(declare-datatypes ((array!44902 0))(
  ( (array!44903 (arr!21504 (Array (_ BitVec 32) (_ BitVec 64))) (size!21925 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44902)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44902 (_ BitVec 32)) Bool)

(assert (=> b!816280 (= res!557416 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!816281 () Bool)

(declare-fun res!557414 () Bool)

(assert (=> b!816281 (=> (not res!557414) (not e!452823))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-datatypes ((V!24149 0))(
  ( (V!24150 (val!7228 Int)) )
))
(declare-datatypes ((ValueCell!6765 0))(
  ( (ValueCellFull!6765 (v!9652 V!24149)) (EmptyCell!6765) )
))
(declare-datatypes ((array!44904 0))(
  ( (array!44905 (arr!21505 (Array (_ BitVec 32) ValueCell!6765)) (size!21926 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44904)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!816281 (= res!557414 (and (= (size!21926 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21925 _keys!976) (size!21926 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun res!557415 () Bool)

(assert (=> start!70300 (=> (not res!557415) (not e!452823))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70300 (= res!557415 (validMask!0 mask!1312))))

(assert (=> start!70300 e!452823))

(declare-fun tp_is_empty!14361 () Bool)

(assert (=> start!70300 tp_is_empty!14361))

(declare-fun array_inv!17185 (array!44902) Bool)

(assert (=> start!70300 (array_inv!17185 _keys!976)))

(assert (=> start!70300 true))

(declare-fun e!452824 () Bool)

(declare-fun array_inv!17186 (array!44904) Bool)

(assert (=> start!70300 (and (array_inv!17186 _values!788) e!452824)))

(assert (=> start!70300 tp!44676))

(declare-fun b!816282 () Bool)

(declare-fun e!452825 () Bool)

(assert (=> b!816282 (= e!452823 (not e!452825))))

(declare-fun res!557413 () Bool)

(assert (=> b!816282 (=> res!557413 e!452825)))

(assert (=> b!816282 (= res!557413 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!9500 0))(
  ( (tuple2!9501 (_1!4760 (_ BitVec 64)) (_2!4760 V!24149)) )
))
(declare-datatypes ((List!15368 0))(
  ( (Nil!15365) (Cons!15364 (h!16493 tuple2!9500) (t!21699 List!15368)) )
))
(declare-datatypes ((ListLongMap!8337 0))(
  ( (ListLongMap!8338 (toList!4184 List!15368)) )
))
(declare-fun lt!365621 () ListLongMap!8337)

(declare-fun lt!365620 () ListLongMap!8337)

(assert (=> b!816282 (= lt!365621 lt!365620)))

(declare-fun zeroValueBefore!34 () V!24149)

(declare-datatypes ((Unit!27824 0))(
  ( (Unit!27825) )
))
(declare-fun lt!365618 () Unit!27824)

(declare-fun zeroValueAfter!34 () V!24149)

(declare-fun defaultEntry!796 () Int)

(declare-fun minValue!754 () V!24149)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!348 (array!44902 array!44904 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24149 V!24149 V!24149 V!24149 (_ BitVec 32) Int) Unit!27824)

(assert (=> b!816282 (= lt!365618 (lemmaNoChangeToArrayThenSameMapNoExtras!348 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2232 (array!44902 array!44904 (_ BitVec 32) (_ BitVec 32) V!24149 V!24149 (_ BitVec 32) Int) ListLongMap!8337)

(assert (=> b!816282 (= lt!365620 (getCurrentListMapNoExtraKeys!2232 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816282 (= lt!365621 (getCurrentListMapNoExtraKeys!2232 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816283 () Bool)

(declare-fun e!452826 () Bool)

(assert (=> b!816283 (= e!452826 tp_is_empty!14361)))

(declare-fun b!816284 () Bool)

(declare-fun res!557417 () Bool)

(assert (=> b!816284 (=> (not res!557417) (not e!452823))))

(declare-datatypes ((List!15369 0))(
  ( (Nil!15366) (Cons!15365 (h!16494 (_ BitVec 64)) (t!21700 List!15369)) )
))
(declare-fun arrayNoDuplicates!0 (array!44902 (_ BitVec 32) List!15369) Bool)

(assert (=> b!816284 (= res!557417 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15366))))

(declare-fun b!816285 () Bool)

(declare-fun e!452822 () Bool)

(assert (=> b!816285 (= e!452822 tp_is_empty!14361)))

(declare-fun b!816286 () Bool)

(assert (=> b!816286 (= e!452824 (and e!452822 mapRes!23131))))

(declare-fun condMapEmpty!23131 () Bool)

(declare-fun mapDefault!23131 () ValueCell!6765)

(assert (=> b!816286 (= condMapEmpty!23131 (= (arr!21505 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6765)) mapDefault!23131)))))

(declare-fun mapNonEmpty!23131 () Bool)

(declare-fun tp!44677 () Bool)

(assert (=> mapNonEmpty!23131 (= mapRes!23131 (and tp!44677 e!452826))))

(declare-fun mapKey!23131 () (_ BitVec 32))

(declare-fun mapRest!23131 () (Array (_ BitVec 32) ValueCell!6765))

(declare-fun mapValue!23131 () ValueCell!6765)

(assert (=> mapNonEmpty!23131 (= (arr!21505 _values!788) (store mapRest!23131 mapKey!23131 mapValue!23131))))

(declare-fun b!816287 () Bool)

(assert (=> b!816287 (= e!452825 true)))

(declare-fun lt!365622 () ListLongMap!8337)

(declare-fun getCurrentListMap!2371 (array!44902 array!44904 (_ BitVec 32) (_ BitVec 32) V!24149 V!24149 (_ BitVec 32) Int) ListLongMap!8337)

(assert (=> b!816287 (= lt!365622 (getCurrentListMap!2371 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun lt!365619 () ListLongMap!8337)

(declare-fun +!1770 (ListLongMap!8337 tuple2!9500) ListLongMap!8337)

(assert (=> b!816287 (= lt!365619 (+!1770 (getCurrentListMap!2371 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9501 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(assert (= (and start!70300 res!557415) b!816281))

(assert (= (and b!816281 res!557414) b!816280))

(assert (= (and b!816280 res!557416) b!816284))

(assert (= (and b!816284 res!557417) b!816282))

(assert (= (and b!816282 (not res!557413)) b!816287))

(assert (= (and b!816286 condMapEmpty!23131) mapIsEmpty!23131))

(assert (= (and b!816286 (not condMapEmpty!23131)) mapNonEmpty!23131))

(get-info :version)

(assert (= (and mapNonEmpty!23131 ((_ is ValueCellFull!6765) mapValue!23131)) b!816283))

(assert (= (and b!816286 ((_ is ValueCellFull!6765) mapDefault!23131)) b!816285))

(assert (= start!70300 b!816286))

(declare-fun m!758005 () Bool)

(assert (=> b!816284 m!758005))

(declare-fun m!758007 () Bool)

(assert (=> mapNonEmpty!23131 m!758007))

(declare-fun m!758009 () Bool)

(assert (=> b!816282 m!758009))

(declare-fun m!758011 () Bool)

(assert (=> b!816282 m!758011))

(declare-fun m!758013 () Bool)

(assert (=> b!816282 m!758013))

(declare-fun m!758015 () Bool)

(assert (=> start!70300 m!758015))

(declare-fun m!758017 () Bool)

(assert (=> start!70300 m!758017))

(declare-fun m!758019 () Bool)

(assert (=> start!70300 m!758019))

(declare-fun m!758021 () Bool)

(assert (=> b!816280 m!758021))

(declare-fun m!758023 () Bool)

(assert (=> b!816287 m!758023))

(declare-fun m!758025 () Bool)

(assert (=> b!816287 m!758025))

(assert (=> b!816287 m!758025))

(declare-fun m!758027 () Bool)

(assert (=> b!816287 m!758027))

(check-sat (not b_next!12651) (not b!816284) tp_is_empty!14361 (not b!816287) (not b!816282) (not start!70300) b_and!21469 (not mapNonEmpty!23131) (not b!816280))
(check-sat b_and!21469 (not b_next!12651))
