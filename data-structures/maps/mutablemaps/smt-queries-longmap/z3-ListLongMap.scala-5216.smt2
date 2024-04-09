; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70372 () Bool)

(assert start!70372)

(declare-fun b_free!12705 () Bool)

(declare-fun b_next!12705 () Bool)

(assert (=> start!70372 (= b_free!12705 (not b_next!12705))))

(declare-fun tp!44841 () Bool)

(declare-fun b_and!21535 () Bool)

(assert (=> start!70372 (= tp!44841 b_and!21535)))

(declare-fun b!817098 () Bool)

(declare-fun e!453404 () Bool)

(declare-fun e!453406 () Bool)

(declare-fun mapRes!23215 () Bool)

(assert (=> b!817098 (= e!453404 (and e!453406 mapRes!23215))))

(declare-fun condMapEmpty!23215 () Bool)

(declare-datatypes ((V!24221 0))(
  ( (V!24222 (val!7255 Int)) )
))
(declare-datatypes ((ValueCell!6792 0))(
  ( (ValueCellFull!6792 (v!9680 V!24221)) (EmptyCell!6792) )
))
(declare-datatypes ((array!45006 0))(
  ( (array!45007 (arr!21555 (Array (_ BitVec 32) ValueCell!6792)) (size!21976 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45006)

(declare-fun mapDefault!23215 () ValueCell!6792)

(assert (=> b!817098 (= condMapEmpty!23215 (= (arr!21555 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6792)) mapDefault!23215)))))

(declare-fun b!817099 () Bool)

(declare-fun res!557886 () Bool)

(declare-fun e!453405 () Bool)

(assert (=> b!817099 (=> (not res!557886) (not e!453405))))

(declare-datatypes ((array!45008 0))(
  ( (array!45009 (arr!21556 (Array (_ BitVec 32) (_ BitVec 64))) (size!21977 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45008)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45008 (_ BitVec 32)) Bool)

(assert (=> b!817099 (= res!557886 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817100 () Bool)

(declare-fun tp_is_empty!14415 () Bool)

(assert (=> b!817100 (= e!453406 tp_is_empty!14415)))

(declare-fun mapNonEmpty!23215 () Bool)

(declare-fun tp!44842 () Bool)

(declare-fun e!453403 () Bool)

(assert (=> mapNonEmpty!23215 (= mapRes!23215 (and tp!44842 e!453403))))

(declare-fun mapRest!23215 () (Array (_ BitVec 32) ValueCell!6792))

(declare-fun mapValue!23215 () ValueCell!6792)

(declare-fun mapKey!23215 () (_ BitVec 32))

(assert (=> mapNonEmpty!23215 (= (arr!21555 _values!788) (store mapRest!23215 mapKey!23215 mapValue!23215))))

(declare-fun res!557889 () Bool)

(assert (=> start!70372 (=> (not res!557889) (not e!453405))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70372 (= res!557889 (validMask!0 mask!1312))))

(assert (=> start!70372 e!453405))

(assert (=> start!70372 tp_is_empty!14415))

(declare-fun array_inv!17219 (array!45008) Bool)

(assert (=> start!70372 (array_inv!17219 _keys!976)))

(assert (=> start!70372 true))

(declare-fun array_inv!17220 (array!45006) Bool)

(assert (=> start!70372 (and (array_inv!17220 _values!788) e!453404)))

(assert (=> start!70372 tp!44841))

(declare-fun b!817101 () Bool)

(declare-fun res!557887 () Bool)

(assert (=> b!817101 (=> (not res!557887) (not e!453405))))

(declare-datatypes ((List!15407 0))(
  ( (Nil!15404) (Cons!15403 (h!16532 (_ BitVec 64)) (t!21740 List!15407)) )
))
(declare-fun arrayNoDuplicates!0 (array!45008 (_ BitVec 32) List!15407) Bool)

(assert (=> b!817101 (= res!557887 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15404))))

(declare-fun b!817102 () Bool)

(assert (=> b!817102 (= e!453405 (not true))))

(declare-datatypes ((tuple2!9538 0))(
  ( (tuple2!9539 (_1!4779 (_ BitVec 64)) (_2!4779 V!24221)) )
))
(declare-datatypes ((List!15408 0))(
  ( (Nil!15405) (Cons!15404 (h!16533 tuple2!9538) (t!21741 List!15408)) )
))
(declare-datatypes ((ListLongMap!8375 0))(
  ( (ListLongMap!8376 (toList!4203 List!15408)) )
))
(declare-fun lt!366118 () ListLongMap!8375)

(declare-fun lt!366117 () ListLongMap!8375)

(assert (=> b!817102 (= lt!366118 lt!366117)))

(declare-datatypes ((Unit!27860 0))(
  ( (Unit!27861) )
))
(declare-fun lt!366119 () Unit!27860)

(declare-fun zeroValueBefore!34 () V!24221)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24221)

(declare-fun minValue!754 () V!24221)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!365 (array!45008 array!45006 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24221 V!24221 V!24221 V!24221 (_ BitVec 32) Int) Unit!27860)

(assert (=> b!817102 (= lt!366119 (lemmaNoChangeToArrayThenSameMapNoExtras!365 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2249 (array!45008 array!45006 (_ BitVec 32) (_ BitVec 32) V!24221 V!24221 (_ BitVec 32) Int) ListLongMap!8375)

(assert (=> b!817102 (= lt!366117 (getCurrentListMapNoExtraKeys!2249 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817102 (= lt!366118 (getCurrentListMapNoExtraKeys!2249 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817103 () Bool)

(assert (=> b!817103 (= e!453403 tp_is_empty!14415)))

(declare-fun mapIsEmpty!23215 () Bool)

(assert (=> mapIsEmpty!23215 mapRes!23215))

(declare-fun b!817104 () Bool)

(declare-fun res!557888 () Bool)

(assert (=> b!817104 (=> (not res!557888) (not e!453405))))

(assert (=> b!817104 (= res!557888 (and (= (size!21976 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21977 _keys!976) (size!21976 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(assert (= (and start!70372 res!557889) b!817104))

(assert (= (and b!817104 res!557888) b!817099))

(assert (= (and b!817099 res!557886) b!817101))

(assert (= (and b!817101 res!557887) b!817102))

(assert (= (and b!817098 condMapEmpty!23215) mapIsEmpty!23215))

(assert (= (and b!817098 (not condMapEmpty!23215)) mapNonEmpty!23215))

(get-info :version)

(assert (= (and mapNonEmpty!23215 ((_ is ValueCellFull!6792) mapValue!23215)) b!817103))

(assert (= (and b!817098 ((_ is ValueCellFull!6792) mapDefault!23215)) b!817100))

(assert (= start!70372 b!817098))

(declare-fun m!758799 () Bool)

(assert (=> start!70372 m!758799))

(declare-fun m!758801 () Bool)

(assert (=> start!70372 m!758801))

(declare-fun m!758803 () Bool)

(assert (=> start!70372 m!758803))

(declare-fun m!758805 () Bool)

(assert (=> b!817101 m!758805))

(declare-fun m!758807 () Bool)

(assert (=> b!817099 m!758807))

(declare-fun m!758809 () Bool)

(assert (=> mapNonEmpty!23215 m!758809))

(declare-fun m!758811 () Bool)

(assert (=> b!817102 m!758811))

(declare-fun m!758813 () Bool)

(assert (=> b!817102 m!758813))

(declare-fun m!758815 () Bool)

(assert (=> b!817102 m!758815))

(check-sat (not b!817099) (not mapNonEmpty!23215) (not b_next!12705) (not start!70372) (not b!817101) b_and!21535 (not b!817102) tp_is_empty!14415)
(check-sat b_and!21535 (not b_next!12705))
