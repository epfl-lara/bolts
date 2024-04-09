; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70190 () Bool)

(assert start!70190)

(declare-fun b_free!12573 () Bool)

(declare-fun b_next!12573 () Bool)

(assert (=> start!70190 (= b_free!12573 (not b_next!12573))))

(declare-fun tp!44436 () Bool)

(declare-fun b_and!21371 () Bool)

(assert (=> start!70190 (= tp!44436 b_and!21371)))

(declare-fun b!815097 () Bool)

(declare-fun e!451980 () Bool)

(declare-fun tp_is_empty!14283 () Bool)

(assert (=> b!815097 (= e!451980 tp_is_empty!14283)))

(declare-fun res!556737 () Bool)

(declare-fun e!451977 () Bool)

(assert (=> start!70190 (=> (not res!556737) (not e!451977))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70190 (= res!556737 (validMask!0 mask!1312))))

(assert (=> start!70190 e!451977))

(assert (=> start!70190 tp_is_empty!14283))

(declare-datatypes ((array!44754 0))(
  ( (array!44755 (arr!21432 (Array (_ BitVec 32) (_ BitVec 64))) (size!21853 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44754)

(declare-fun array_inv!17127 (array!44754) Bool)

(assert (=> start!70190 (array_inv!17127 _keys!976)))

(assert (=> start!70190 true))

(declare-datatypes ((V!24045 0))(
  ( (V!24046 (val!7189 Int)) )
))
(declare-datatypes ((ValueCell!6726 0))(
  ( (ValueCellFull!6726 (v!9612 V!24045)) (EmptyCell!6726) )
))
(declare-datatypes ((array!44756 0))(
  ( (array!44757 (arr!21433 (Array (_ BitVec 32) ValueCell!6726)) (size!21854 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44756)

(declare-fun e!451978 () Bool)

(declare-fun array_inv!17128 (array!44756) Bool)

(assert (=> start!70190 (and (array_inv!17128 _values!788) e!451978)))

(assert (=> start!70190 tp!44436))

(declare-fun b!815098 () Bool)

(declare-fun res!556740 () Bool)

(assert (=> b!815098 (=> (not res!556740) (not e!451977))))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!815098 (= res!556740 (and (= (size!21854 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21853 _keys!976) (size!21854 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815099 () Bool)

(declare-fun res!556738 () Bool)

(assert (=> b!815099 (=> (not res!556738) (not e!451977))))

(declare-datatypes ((List!15313 0))(
  ( (Nil!15310) (Cons!15309 (h!16438 (_ BitVec 64)) (t!21640 List!15313)) )
))
(declare-fun arrayNoDuplicates!0 (array!44754 (_ BitVec 32) List!15313) Bool)

(assert (=> b!815099 (= res!556738 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15310))))

(declare-fun b!815100 () Bool)

(declare-fun e!451979 () Bool)

(declare-fun mapRes!23008 () Bool)

(assert (=> b!815100 (= e!451978 (and e!451979 mapRes!23008))))

(declare-fun condMapEmpty!23008 () Bool)

(declare-fun mapDefault!23008 () ValueCell!6726)

(assert (=> b!815100 (= condMapEmpty!23008 (= (arr!21433 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6726)) mapDefault!23008)))))

(declare-fun b!815101 () Bool)

(assert (=> b!815101 (= e!451977 (not true))))

(declare-datatypes ((tuple2!9440 0))(
  ( (tuple2!9441 (_1!4730 (_ BitVec 64)) (_2!4730 V!24045)) )
))
(declare-datatypes ((List!15314 0))(
  ( (Nil!15311) (Cons!15310 (h!16439 tuple2!9440) (t!21641 List!15314)) )
))
(declare-datatypes ((ListLongMap!8277 0))(
  ( (ListLongMap!8278 (toList!4154 List!15314)) )
))
(declare-fun lt!364917 () ListLongMap!8277)

(declare-fun lt!364916 () ListLongMap!8277)

(assert (=> b!815101 (= lt!364917 lt!364916)))

(declare-fun zeroValueBefore!34 () V!24045)

(declare-fun zeroValueAfter!34 () V!24045)

(declare-fun minValue!754 () V!24045)

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27764 0))(
  ( (Unit!27765) )
))
(declare-fun lt!364915 () Unit!27764)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!319 (array!44754 array!44756 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24045 V!24045 V!24045 V!24045 (_ BitVec 32) Int) Unit!27764)

(assert (=> b!815101 (= lt!364915 (lemmaNoChangeToArrayThenSameMapNoExtras!319 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2203 (array!44754 array!44756 (_ BitVec 32) (_ BitVec 32) V!24045 V!24045 (_ BitVec 32) Int) ListLongMap!8277)

(assert (=> b!815101 (= lt!364916 (getCurrentListMapNoExtraKeys!2203 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815101 (= lt!364917 (getCurrentListMapNoExtraKeys!2203 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!815102 () Bool)

(assert (=> b!815102 (= e!451979 tp_is_empty!14283)))

(declare-fun b!815103 () Bool)

(declare-fun res!556739 () Bool)

(assert (=> b!815103 (=> (not res!556739) (not e!451977))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44754 (_ BitVec 32)) Bool)

(assert (=> b!815103 (= res!556739 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapNonEmpty!23008 () Bool)

(declare-fun tp!44437 () Bool)

(assert (=> mapNonEmpty!23008 (= mapRes!23008 (and tp!44437 e!451980))))

(declare-fun mapValue!23008 () ValueCell!6726)

(declare-fun mapRest!23008 () (Array (_ BitVec 32) ValueCell!6726))

(declare-fun mapKey!23008 () (_ BitVec 32))

(assert (=> mapNonEmpty!23008 (= (arr!21433 _values!788) (store mapRest!23008 mapKey!23008 mapValue!23008))))

(declare-fun mapIsEmpty!23008 () Bool)

(assert (=> mapIsEmpty!23008 mapRes!23008))

(assert (= (and start!70190 res!556737) b!815098))

(assert (= (and b!815098 res!556740) b!815103))

(assert (= (and b!815103 res!556739) b!815099))

(assert (= (and b!815099 res!556738) b!815101))

(assert (= (and b!815100 condMapEmpty!23008) mapIsEmpty!23008))

(assert (= (and b!815100 (not condMapEmpty!23008)) mapNonEmpty!23008))

(get-info :version)

(assert (= (and mapNonEmpty!23008 ((_ is ValueCellFull!6726) mapValue!23008)) b!815097))

(assert (= (and b!815100 ((_ is ValueCellFull!6726) mapDefault!23008)) b!815102))

(assert (= start!70190 b!815100))

(declare-fun m!756881 () Bool)

(assert (=> b!815099 m!756881))

(declare-fun m!756883 () Bool)

(assert (=> b!815103 m!756883))

(declare-fun m!756885 () Bool)

(assert (=> b!815101 m!756885))

(declare-fun m!756887 () Bool)

(assert (=> b!815101 m!756887))

(declare-fun m!756889 () Bool)

(assert (=> b!815101 m!756889))

(declare-fun m!756891 () Bool)

(assert (=> start!70190 m!756891))

(declare-fun m!756893 () Bool)

(assert (=> start!70190 m!756893))

(declare-fun m!756895 () Bool)

(assert (=> start!70190 m!756895))

(declare-fun m!756897 () Bool)

(assert (=> mapNonEmpty!23008 m!756897))

(check-sat b_and!21371 (not mapNonEmpty!23008) (not start!70190) (not b_next!12573) (not b!815103) (not b!815099) tp_is_empty!14283 (not b!815101))
(check-sat b_and!21371 (not b_next!12573))
