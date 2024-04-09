; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70464 () Bool)

(assert start!70464)

(declare-fun b_free!12783 () Bool)

(declare-fun b_next!12783 () Bool)

(assert (=> start!70464 (= b_free!12783 (not b_next!12783))))

(declare-fun tp!45078 () Bool)

(declare-fun b_and!21621 () Bool)

(assert (=> start!70464 (= tp!45078 b_and!21621)))

(declare-fun b!818052 () Bool)

(declare-fun res!558438 () Bool)

(declare-fun e!454094 () Bool)

(assert (=> b!818052 (=> (not res!558438) (not e!454094))))

(declare-datatypes ((array!45160 0))(
  ( (array!45161 (arr!21631 (Array (_ BitVec 32) (_ BitVec 64))) (size!22052 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45160)

(declare-datatypes ((List!15465 0))(
  ( (Nil!15462) (Cons!15461 (h!16590 (_ BitVec 64)) (t!21800 List!15465)) )
))
(declare-fun arrayNoDuplicates!0 (array!45160 (_ BitVec 32) List!15465) Bool)

(assert (=> b!818052 (= res!558438 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15462))))

(declare-fun b!818054 () Bool)

(declare-fun e!454098 () Bool)

(assert (=> b!818054 (= e!454094 (not e!454098))))

(declare-fun res!558437 () Bool)

(assert (=> b!818054 (=> res!558437 e!454098)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!818054 (= res!558437 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24325 0))(
  ( (V!24326 (val!7294 Int)) )
))
(declare-datatypes ((tuple2!9600 0))(
  ( (tuple2!9601 (_1!4810 (_ BitVec 64)) (_2!4810 V!24325)) )
))
(declare-datatypes ((List!15466 0))(
  ( (Nil!15463) (Cons!15462 (h!16591 tuple2!9600) (t!21801 List!15466)) )
))
(declare-datatypes ((ListLongMap!8437 0))(
  ( (ListLongMap!8438 (toList!4234 List!15466)) )
))
(declare-fun lt!366559 () ListLongMap!8437)

(declare-fun lt!366558 () ListLongMap!8437)

(assert (=> b!818054 (= lt!366559 lt!366558)))

(declare-fun zeroValueBefore!34 () V!24325)

(declare-fun zeroValueAfter!34 () V!24325)

(declare-fun minValue!754 () V!24325)

(declare-datatypes ((ValueCell!6831 0))(
  ( (ValueCellFull!6831 (v!9719 V!24325)) (EmptyCell!6831) )
))
(declare-datatypes ((array!45162 0))(
  ( (array!45163 (arr!21632 (Array (_ BitVec 32) ValueCell!6831)) (size!22053 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45162)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27920 0))(
  ( (Unit!27921) )
))
(declare-fun lt!366561 () Unit!27920)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!395 (array!45160 array!45162 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24325 V!24325 V!24325 V!24325 (_ BitVec 32) Int) Unit!27920)

(assert (=> b!818054 (= lt!366561 (lemmaNoChangeToArrayThenSameMapNoExtras!395 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2279 (array!45160 array!45162 (_ BitVec 32) (_ BitVec 32) V!24325 V!24325 (_ BitVec 32) Int) ListLongMap!8437)

(assert (=> b!818054 (= lt!366558 (getCurrentListMapNoExtraKeys!2279 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818054 (= lt!366559 (getCurrentListMapNoExtraKeys!2279 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818055 () Bool)

(declare-fun res!558439 () Bool)

(assert (=> b!818055 (=> (not res!558439) (not e!454094))))

(assert (=> b!818055 (= res!558439 (and (= (size!22053 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22052 _keys!976) (size!22053 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!818056 () Bool)

(declare-fun res!558436 () Bool)

(assert (=> b!818056 (=> (not res!558436) (not e!454094))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45160 (_ BitVec 32)) Bool)

(assert (=> b!818056 (= res!558436 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818057 () Bool)

(assert (=> b!818057 (= e!454098 true)))

(declare-fun lt!366560 () ListLongMap!8437)

(declare-fun getCurrentListMap!2395 (array!45160 array!45162 (_ BitVec 32) (_ BitVec 32) V!24325 V!24325 (_ BitVec 32) Int) ListLongMap!8437)

(assert (=> b!818057 (= lt!366560 (getCurrentListMap!2395 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23335 () Bool)

(declare-fun mapRes!23335 () Bool)

(declare-fun tp!45079 () Bool)

(declare-fun e!454093 () Bool)

(assert (=> mapNonEmpty!23335 (= mapRes!23335 (and tp!45079 e!454093))))

(declare-fun mapKey!23335 () (_ BitVec 32))

(declare-fun mapValue!23335 () ValueCell!6831)

(declare-fun mapRest!23335 () (Array (_ BitVec 32) ValueCell!6831))

(assert (=> mapNonEmpty!23335 (= (arr!21632 _values!788) (store mapRest!23335 mapKey!23335 mapValue!23335))))

(declare-fun b!818053 () Bool)

(declare-fun e!454096 () Bool)

(declare-fun e!454097 () Bool)

(assert (=> b!818053 (= e!454096 (and e!454097 mapRes!23335))))

(declare-fun condMapEmpty!23335 () Bool)

(declare-fun mapDefault!23335 () ValueCell!6831)

(assert (=> b!818053 (= condMapEmpty!23335 (= (arr!21632 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6831)) mapDefault!23335)))))

(declare-fun res!558435 () Bool)

(assert (=> start!70464 (=> (not res!558435) (not e!454094))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70464 (= res!558435 (validMask!0 mask!1312))))

(assert (=> start!70464 e!454094))

(declare-fun tp_is_empty!14493 () Bool)

(assert (=> start!70464 tp_is_empty!14493))

(declare-fun array_inv!17271 (array!45160) Bool)

(assert (=> start!70464 (array_inv!17271 _keys!976)))

(assert (=> start!70464 true))

(declare-fun array_inv!17272 (array!45162) Bool)

(assert (=> start!70464 (and (array_inv!17272 _values!788) e!454096)))

(assert (=> start!70464 tp!45078))

(declare-fun b!818058 () Bool)

(assert (=> b!818058 (= e!454093 tp_is_empty!14493)))

(declare-fun b!818059 () Bool)

(assert (=> b!818059 (= e!454097 tp_is_empty!14493)))

(declare-fun mapIsEmpty!23335 () Bool)

(assert (=> mapIsEmpty!23335 mapRes!23335))

(assert (= (and start!70464 res!558435) b!818055))

(assert (= (and b!818055 res!558439) b!818056))

(assert (= (and b!818056 res!558436) b!818052))

(assert (= (and b!818052 res!558438) b!818054))

(assert (= (and b!818054 (not res!558437)) b!818057))

(assert (= (and b!818053 condMapEmpty!23335) mapIsEmpty!23335))

(assert (= (and b!818053 (not condMapEmpty!23335)) mapNonEmpty!23335))

(get-info :version)

(assert (= (and mapNonEmpty!23335 ((_ is ValueCellFull!6831) mapValue!23335)) b!818058))

(assert (= (and b!818053 ((_ is ValueCellFull!6831) mapDefault!23335)) b!818059))

(assert (= start!70464 b!818053))

(declare-fun m!759599 () Bool)

(assert (=> mapNonEmpty!23335 m!759599))

(declare-fun m!759601 () Bool)

(assert (=> b!818057 m!759601))

(declare-fun m!759603 () Bool)

(assert (=> start!70464 m!759603))

(declare-fun m!759605 () Bool)

(assert (=> start!70464 m!759605))

(declare-fun m!759607 () Bool)

(assert (=> start!70464 m!759607))

(declare-fun m!759609 () Bool)

(assert (=> b!818052 m!759609))

(declare-fun m!759611 () Bool)

(assert (=> b!818056 m!759611))

(declare-fun m!759613 () Bool)

(assert (=> b!818054 m!759613))

(declare-fun m!759615 () Bool)

(assert (=> b!818054 m!759615))

(declare-fun m!759617 () Bool)

(assert (=> b!818054 m!759617))

(check-sat b_and!21621 (not b!818054) (not b!818057) (not mapNonEmpty!23335) (not b_next!12783) tp_is_empty!14493 (not b!818056) (not start!70464) (not b!818052))
(check-sat b_and!21621 (not b_next!12783))
