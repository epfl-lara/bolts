; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70396 () Bool)

(assert start!70396)

(declare-fun b_free!12729 () Bool)

(declare-fun b_next!12729 () Bool)

(assert (=> start!70396 (= b_free!12729 (not b_next!12729))))

(declare-fun tp!44913 () Bool)

(declare-fun b_and!21559 () Bool)

(assert (=> start!70396 (= tp!44913 b_and!21559)))

(declare-fun b!817350 () Bool)

(declare-fun e!453583 () Bool)

(declare-fun e!453585 () Bool)

(declare-fun mapRes!23251 () Bool)

(assert (=> b!817350 (= e!453583 (and e!453585 mapRes!23251))))

(declare-fun condMapEmpty!23251 () Bool)

(declare-datatypes ((V!24253 0))(
  ( (V!24254 (val!7267 Int)) )
))
(declare-datatypes ((ValueCell!6804 0))(
  ( (ValueCellFull!6804 (v!9692 V!24253)) (EmptyCell!6804) )
))
(declare-datatypes ((array!45052 0))(
  ( (array!45053 (arr!21578 (Array (_ BitVec 32) ValueCell!6804)) (size!21999 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45052)

(declare-fun mapDefault!23251 () ValueCell!6804)

(assert (=> b!817350 (= condMapEmpty!23251 (= (arr!21578 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6804)) mapDefault!23251)))))

(declare-fun res!558031 () Bool)

(declare-fun e!453587 () Bool)

(assert (=> start!70396 (=> (not res!558031) (not e!453587))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70396 (= res!558031 (validMask!0 mask!1312))))

(assert (=> start!70396 e!453587))

(declare-fun tp_is_empty!14439 () Bool)

(assert (=> start!70396 tp_is_empty!14439))

(declare-datatypes ((array!45054 0))(
  ( (array!45055 (arr!21579 (Array (_ BitVec 32) (_ BitVec 64))) (size!22000 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45054)

(declare-fun array_inv!17235 (array!45054) Bool)

(assert (=> start!70396 (array_inv!17235 _keys!976)))

(assert (=> start!70396 true))

(declare-fun array_inv!17236 (array!45052) Bool)

(assert (=> start!70396 (and (array_inv!17236 _values!788) e!453583)))

(assert (=> start!70396 tp!44913))

(declare-fun b!817351 () Bool)

(declare-fun e!453586 () Bool)

(assert (=> b!817351 (= e!453586 tp_is_empty!14439)))

(declare-fun b!817352 () Bool)

(declare-fun res!558032 () Bool)

(assert (=> b!817352 (=> (not res!558032) (not e!453587))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45054 (_ BitVec 32)) Bool)

(assert (=> b!817352 (= res!558032 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!817353 () Bool)

(assert (=> b!817353 (= e!453587 (not true))))

(declare-datatypes ((tuple2!9554 0))(
  ( (tuple2!9555 (_1!4787 (_ BitVec 64)) (_2!4787 V!24253)) )
))
(declare-datatypes ((List!15423 0))(
  ( (Nil!15420) (Cons!15419 (h!16548 tuple2!9554) (t!21756 List!15423)) )
))
(declare-datatypes ((ListLongMap!8391 0))(
  ( (ListLongMap!8392 (toList!4211 List!15423)) )
))
(declare-fun lt!366226 () ListLongMap!8391)

(declare-fun lt!366227 () ListLongMap!8391)

(assert (=> b!817353 (= lt!366226 lt!366227)))

(declare-fun zeroValueBefore!34 () V!24253)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun zeroValueAfter!34 () V!24253)

(declare-fun minValue!754 () V!24253)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!27876 0))(
  ( (Unit!27877) )
))
(declare-fun lt!366225 () Unit!27876)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!373 (array!45054 array!45052 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24253 V!24253 V!24253 V!24253 (_ BitVec 32) Int) Unit!27876)

(assert (=> b!817353 (= lt!366225 (lemmaNoChangeToArrayThenSameMapNoExtras!373 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2257 (array!45054 array!45052 (_ BitVec 32) (_ BitVec 32) V!24253 V!24253 (_ BitVec 32) Int) ListLongMap!8391)

(assert (=> b!817353 (= lt!366227 (getCurrentListMapNoExtraKeys!2257 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!817353 (= lt!366226 (getCurrentListMapNoExtraKeys!2257 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!817354 () Bool)

(declare-fun res!558033 () Bool)

(assert (=> b!817354 (=> (not res!558033) (not e!453587))))

(declare-datatypes ((List!15424 0))(
  ( (Nil!15421) (Cons!15420 (h!16549 (_ BitVec 64)) (t!21757 List!15424)) )
))
(declare-fun arrayNoDuplicates!0 (array!45054 (_ BitVec 32) List!15424) Bool)

(assert (=> b!817354 (= res!558033 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15421))))

(declare-fun b!817355 () Bool)

(declare-fun res!558030 () Bool)

(assert (=> b!817355 (=> (not res!558030) (not e!453587))))

(assert (=> b!817355 (= res!558030 (and (= (size!21999 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22000 _keys!976) (size!21999 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!23251 () Bool)

(assert (=> mapIsEmpty!23251 mapRes!23251))

(declare-fun mapNonEmpty!23251 () Bool)

(declare-fun tp!44914 () Bool)

(assert (=> mapNonEmpty!23251 (= mapRes!23251 (and tp!44914 e!453586))))

(declare-fun mapValue!23251 () ValueCell!6804)

(declare-fun mapKey!23251 () (_ BitVec 32))

(declare-fun mapRest!23251 () (Array (_ BitVec 32) ValueCell!6804))

(assert (=> mapNonEmpty!23251 (= (arr!21578 _values!788) (store mapRest!23251 mapKey!23251 mapValue!23251))))

(declare-fun b!817356 () Bool)

(assert (=> b!817356 (= e!453585 tp_is_empty!14439)))

(assert (= (and start!70396 res!558031) b!817355))

(assert (= (and b!817355 res!558030) b!817352))

(assert (= (and b!817352 res!558032) b!817354))

(assert (= (and b!817354 res!558033) b!817353))

(assert (= (and b!817350 condMapEmpty!23251) mapIsEmpty!23251))

(assert (= (and b!817350 (not condMapEmpty!23251)) mapNonEmpty!23251))

(get-info :version)

(assert (= (and mapNonEmpty!23251 ((_ is ValueCellFull!6804) mapValue!23251)) b!817351))

(assert (= (and b!817350 ((_ is ValueCellFull!6804) mapDefault!23251)) b!817356))

(assert (= start!70396 b!817350))

(declare-fun m!759015 () Bool)

(assert (=> start!70396 m!759015))

(declare-fun m!759017 () Bool)

(assert (=> start!70396 m!759017))

(declare-fun m!759019 () Bool)

(assert (=> start!70396 m!759019))

(declare-fun m!759021 () Bool)

(assert (=> mapNonEmpty!23251 m!759021))

(declare-fun m!759023 () Bool)

(assert (=> b!817353 m!759023))

(declare-fun m!759025 () Bool)

(assert (=> b!817353 m!759025))

(declare-fun m!759027 () Bool)

(assert (=> b!817353 m!759027))

(declare-fun m!759029 () Bool)

(assert (=> b!817354 m!759029))

(declare-fun m!759031 () Bool)

(assert (=> b!817352 m!759031))

(check-sat tp_is_empty!14439 (not start!70396) (not mapNonEmpty!23251) b_and!21559 (not b!817354) (not b!817352) (not b_next!12729) (not b!817353))
(check-sat b_and!21559 (not b_next!12729))
