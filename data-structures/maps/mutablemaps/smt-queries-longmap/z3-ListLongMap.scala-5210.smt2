; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70318 () Bool)

(assert start!70318)

(declare-fun b_free!12669 () Bool)

(declare-fun b_next!12669 () Bool)

(assert (=> start!70318 (= b_free!12669 (not b_next!12669))))

(declare-fun tp!44730 () Bool)

(declare-fun b_and!21487 () Bool)

(assert (=> start!70318 (= tp!44730 b_and!21487)))

(declare-fun b!816496 () Bool)

(declare-fun e!452984 () Bool)

(assert (=> b!816496 (= e!452984 true)))

(declare-datatypes ((V!24173 0))(
  ( (V!24174 (val!7237 Int)) )
))
(declare-datatypes ((tuple2!9510 0))(
  ( (tuple2!9511 (_1!4765 (_ BitVec 64)) (_2!4765 V!24173)) )
))
(declare-datatypes ((List!15381 0))(
  ( (Nil!15378) (Cons!15377 (h!16506 tuple2!9510) (t!21712 List!15381)) )
))
(declare-datatypes ((ListLongMap!8347 0))(
  ( (ListLongMap!8348 (toList!4189 List!15381)) )
))
(declare-fun lt!365755 () ListLongMap!8347)

(declare-datatypes ((array!44936 0))(
  ( (array!44937 (arr!21521 (Array (_ BitVec 32) (_ BitVec 64))) (size!21942 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44936)

(declare-fun zeroValueAfter!34 () V!24173)

(declare-fun minValue!754 () V!24173)

(declare-datatypes ((ValueCell!6774 0))(
  ( (ValueCellFull!6774 (v!9661 V!24173)) (EmptyCell!6774) )
))
(declare-datatypes ((array!44938 0))(
  ( (array!44939 (arr!21522 (Array (_ BitVec 32) ValueCell!6774)) (size!21943 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44938)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2376 (array!44936 array!44938 (_ BitVec 32) (_ BitVec 32) V!24173 V!24173 (_ BitVec 32) Int) ListLongMap!8347)

(assert (=> b!816496 (= lt!365755 (getCurrentListMap!2376 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24173)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun lt!365757 () ListLongMap!8347)

(declare-fun +!1775 (ListLongMap!8347 tuple2!9510) ListLongMap!8347)

(assert (=> b!816496 (= lt!365757 (+!1775 (getCurrentListMap!2376 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9511 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun mapIsEmpty!23158 () Bool)

(declare-fun mapRes!23158 () Bool)

(assert (=> mapIsEmpty!23158 mapRes!23158))

(declare-fun b!816497 () Bool)

(declare-fun e!452986 () Bool)

(declare-fun tp_is_empty!14379 () Bool)

(assert (=> b!816497 (= e!452986 tp_is_empty!14379)))

(declare-fun res!557548 () Bool)

(declare-fun e!452985 () Bool)

(assert (=> start!70318 (=> (not res!557548) (not e!452985))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70318 (= res!557548 (validMask!0 mask!1312))))

(assert (=> start!70318 e!452985))

(assert (=> start!70318 tp_is_empty!14379))

(declare-fun array_inv!17193 (array!44936) Bool)

(assert (=> start!70318 (array_inv!17193 _keys!976)))

(assert (=> start!70318 true))

(declare-fun e!452983 () Bool)

(declare-fun array_inv!17194 (array!44938) Bool)

(assert (=> start!70318 (and (array_inv!17194 _values!788) e!452983)))

(assert (=> start!70318 tp!44730))

(declare-fun b!816498 () Bool)

(assert (=> b!816498 (= e!452985 (not e!452984))))

(declare-fun res!557552 () Bool)

(assert (=> b!816498 (=> res!557552 e!452984)))

(assert (=> b!816498 (= res!557552 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!365753 () ListLongMap!8347)

(declare-fun lt!365754 () ListLongMap!8347)

(assert (=> b!816498 (= lt!365753 lt!365754)))

(declare-datatypes ((Unit!27834 0))(
  ( (Unit!27835) )
))
(declare-fun lt!365756 () Unit!27834)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!353 (array!44936 array!44938 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24173 V!24173 V!24173 V!24173 (_ BitVec 32) Int) Unit!27834)

(assert (=> b!816498 (= lt!365756 (lemmaNoChangeToArrayThenSameMapNoExtras!353 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2237 (array!44936 array!44938 (_ BitVec 32) (_ BitVec 32) V!24173 V!24173 (_ BitVec 32) Int) ListLongMap!8347)

(assert (=> b!816498 (= lt!365754 (getCurrentListMapNoExtraKeys!2237 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!816498 (= lt!365753 (getCurrentListMapNoExtraKeys!2237 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!816499 () Bool)

(declare-fun res!557551 () Bool)

(assert (=> b!816499 (=> (not res!557551) (not e!452985))))

(declare-datatypes ((List!15382 0))(
  ( (Nil!15379) (Cons!15378 (h!16507 (_ BitVec 64)) (t!21713 List!15382)) )
))
(declare-fun arrayNoDuplicates!0 (array!44936 (_ BitVec 32) List!15382) Bool)

(assert (=> b!816499 (= res!557551 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15379))))

(declare-fun b!816500 () Bool)

(declare-fun e!452987 () Bool)

(assert (=> b!816500 (= e!452983 (and e!452987 mapRes!23158))))

(declare-fun condMapEmpty!23158 () Bool)

(declare-fun mapDefault!23158 () ValueCell!6774)

(assert (=> b!816500 (= condMapEmpty!23158 (= (arr!21522 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6774)) mapDefault!23158)))))

(declare-fun b!816501 () Bool)

(assert (=> b!816501 (= e!452987 tp_is_empty!14379)))

(declare-fun b!816502 () Bool)

(declare-fun res!557550 () Bool)

(assert (=> b!816502 (=> (not res!557550) (not e!452985))))

(assert (=> b!816502 (= res!557550 (and (= (size!21943 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21942 _keys!976) (size!21943 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!816503 () Bool)

(declare-fun res!557549 () Bool)

(assert (=> b!816503 (=> (not res!557549) (not e!452985))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44936 (_ BitVec 32)) Bool)

(assert (=> b!816503 (= res!557549 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23158 () Bool)

(declare-fun tp!44731 () Bool)

(assert (=> mapNonEmpty!23158 (= mapRes!23158 (and tp!44731 e!452986))))

(declare-fun mapValue!23158 () ValueCell!6774)

(declare-fun mapRest!23158 () (Array (_ BitVec 32) ValueCell!6774))

(declare-fun mapKey!23158 () (_ BitVec 32))

(assert (=> mapNonEmpty!23158 (= (arr!21522 _values!788) (store mapRest!23158 mapKey!23158 mapValue!23158))))

(assert (= (and start!70318 res!557548) b!816502))

(assert (= (and b!816502 res!557550) b!816503))

(assert (= (and b!816503 res!557549) b!816499))

(assert (= (and b!816499 res!557551) b!816498))

(assert (= (and b!816498 (not res!557552)) b!816496))

(assert (= (and b!816500 condMapEmpty!23158) mapIsEmpty!23158))

(assert (= (and b!816500 (not condMapEmpty!23158)) mapNonEmpty!23158))

(get-info :version)

(assert (= (and mapNonEmpty!23158 ((_ is ValueCellFull!6774) mapValue!23158)) b!816497))

(assert (= (and b!816500 ((_ is ValueCellFull!6774) mapDefault!23158)) b!816501))

(assert (= start!70318 b!816500))

(declare-fun m!758221 () Bool)

(assert (=> start!70318 m!758221))

(declare-fun m!758223 () Bool)

(assert (=> start!70318 m!758223))

(declare-fun m!758225 () Bool)

(assert (=> start!70318 m!758225))

(declare-fun m!758227 () Bool)

(assert (=> b!816499 m!758227))

(declare-fun m!758229 () Bool)

(assert (=> b!816496 m!758229))

(declare-fun m!758231 () Bool)

(assert (=> b!816496 m!758231))

(assert (=> b!816496 m!758231))

(declare-fun m!758233 () Bool)

(assert (=> b!816496 m!758233))

(declare-fun m!758235 () Bool)

(assert (=> mapNonEmpty!23158 m!758235))

(declare-fun m!758237 () Bool)

(assert (=> b!816498 m!758237))

(declare-fun m!758239 () Bool)

(assert (=> b!816498 m!758239))

(declare-fun m!758241 () Bool)

(assert (=> b!816498 m!758241))

(declare-fun m!758243 () Bool)

(assert (=> b!816503 m!758243))

(check-sat (not b!816496) tp_is_empty!14379 (not b_next!12669) (not b!816499) b_and!21487 (not mapNonEmpty!23158) (not start!70318) (not b!816498) (not b!816503))
(check-sat b_and!21487 (not b_next!12669))
