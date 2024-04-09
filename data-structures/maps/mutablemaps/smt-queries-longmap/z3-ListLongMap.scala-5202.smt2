; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70252 () Bool)

(assert start!70252)

(declare-fun b_free!12621 () Bool)

(declare-fun b_next!12621 () Bool)

(assert (=> start!70252 (= b_free!12621 (not b_next!12621))))

(declare-fun tp!44583 () Bool)

(declare-fun b_and!21427 () Bool)

(assert (=> start!70252 (= tp!44583 b_and!21427)))

(declare-fun b!815736 () Bool)

(declare-fun e!452443 () Bool)

(declare-fun e!452441 () Bool)

(declare-fun mapRes!23083 () Bool)

(assert (=> b!815736 (= e!452443 (and e!452441 mapRes!23083))))

(declare-fun condMapEmpty!23083 () Bool)

(declare-datatypes ((V!24109 0))(
  ( (V!24110 (val!7213 Int)) )
))
(declare-datatypes ((ValueCell!6750 0))(
  ( (ValueCellFull!6750 (v!9636 V!24109)) (EmptyCell!6750) )
))
(declare-datatypes ((array!44846 0))(
  ( (array!44847 (arr!21477 (Array (_ BitVec 32) ValueCell!6750)) (size!21898 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44846)

(declare-fun mapDefault!23083 () ValueCell!6750)

(assert (=> b!815736 (= condMapEmpty!23083 (= (arr!21477 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6750)) mapDefault!23083)))))

(declare-fun b!815737 () Bool)

(declare-fun res!557108 () Bool)

(declare-fun e!452446 () Bool)

(assert (=> b!815737 (=> (not res!557108) (not e!452446))))

(declare-datatypes ((array!44848 0))(
  ( (array!44849 (arr!21478 (Array (_ BitVec 32) (_ BitVec 64))) (size!21899 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44848)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!815737 (= res!557108 (and (= (size!21898 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21899 _keys!976) (size!21898 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!815739 () Bool)

(declare-fun res!557109 () Bool)

(assert (=> b!815739 (=> (not res!557109) (not e!452446))))

(declare-datatypes ((List!15348 0))(
  ( (Nil!15345) (Cons!15344 (h!16473 (_ BitVec 64)) (t!21677 List!15348)) )
))
(declare-fun arrayNoDuplicates!0 (array!44848 (_ BitVec 32) List!15348) Bool)

(assert (=> b!815739 (= res!557109 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15345))))

(declare-fun b!815740 () Bool)

(declare-fun e!452442 () Bool)

(declare-fun tp_is_empty!14331 () Bool)

(assert (=> b!815740 (= e!452442 tp_is_empty!14331)))

(declare-fun mapNonEmpty!23083 () Bool)

(declare-fun tp!44584 () Bool)

(assert (=> mapNonEmpty!23083 (= mapRes!23083 (and tp!44584 e!452442))))

(declare-fun mapRest!23083 () (Array (_ BitVec 32) ValueCell!6750))

(declare-fun mapKey!23083 () (_ BitVec 32))

(declare-fun mapValue!23083 () ValueCell!6750)

(assert (=> mapNonEmpty!23083 (= (arr!21477 _values!788) (store mapRest!23083 mapKey!23083 mapValue!23083))))

(declare-fun b!815741 () Bool)

(declare-fun e!452445 () Bool)

(assert (=> b!815741 (= e!452445 true)))

(declare-fun zeroValueAfter!34 () V!24109)

(declare-fun minValue!754 () V!24109)

(declare-datatypes ((tuple2!9478 0))(
  ( (tuple2!9479 (_1!4749 (_ BitVec 64)) (_2!4749 V!24109)) )
))
(declare-datatypes ((List!15349 0))(
  ( (Nil!15346) (Cons!15345 (h!16474 tuple2!9478) (t!21678 List!15349)) )
))
(declare-datatypes ((ListLongMap!8315 0))(
  ( (ListLongMap!8316 (toList!4173 List!15349)) )
))
(declare-fun lt!365271 () ListLongMap!8315)

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2362 (array!44848 array!44846 (_ BitVec 32) (_ BitVec 32) V!24109 V!24109 (_ BitVec 32) Int) ListLongMap!8315)

(assert (=> b!815741 (= lt!365271 (getCurrentListMap!2362 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24109)

(declare-fun lt!365275 () ListLongMap!8315)

(declare-fun +!1761 (ListLongMap!8315 tuple2!9478) ListLongMap!8315)

(assert (=> b!815741 (= lt!365275 (+!1761 (getCurrentListMap!2362 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796) (tuple2!9479 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34)))))

(declare-fun b!815742 () Bool)

(declare-fun res!557110 () Bool)

(assert (=> b!815742 (=> (not res!557110) (not e!452446))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44848 (_ BitVec 32)) Bool)

(assert (=> b!815742 (= res!557110 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!815738 () Bool)

(assert (=> b!815738 (= e!452446 (not e!452445))))

(declare-fun res!557107 () Bool)

(assert (=> b!815738 (=> res!557107 e!452445)))

(assert (=> b!815738 (= res!557107 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!365272 () ListLongMap!8315)

(declare-fun lt!365273 () ListLongMap!8315)

(assert (=> b!815738 (= lt!365272 lt!365273)))

(declare-datatypes ((Unit!27802 0))(
  ( (Unit!27803) )
))
(declare-fun lt!365274 () Unit!27802)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!338 (array!44848 array!44846 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24109 V!24109 V!24109 V!24109 (_ BitVec 32) Int) Unit!27802)

(assert (=> b!815738 (= lt!365274 (lemmaNoChangeToArrayThenSameMapNoExtras!338 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2222 (array!44848 array!44846 (_ BitVec 32) (_ BitVec 32) V!24109 V!24109 (_ BitVec 32) Int) ListLongMap!8315)

(assert (=> b!815738 (= lt!365273 (getCurrentListMapNoExtraKeys!2222 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!815738 (= lt!365272 (getCurrentListMapNoExtraKeys!2222 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun res!557106 () Bool)

(assert (=> start!70252 (=> (not res!557106) (not e!452446))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70252 (= res!557106 (validMask!0 mask!1312))))

(assert (=> start!70252 e!452446))

(assert (=> start!70252 tp_is_empty!14331))

(declare-fun array_inv!17163 (array!44848) Bool)

(assert (=> start!70252 (array_inv!17163 _keys!976)))

(assert (=> start!70252 true))

(declare-fun array_inv!17164 (array!44846) Bool)

(assert (=> start!70252 (and (array_inv!17164 _values!788) e!452443)))

(assert (=> start!70252 tp!44583))

(declare-fun mapIsEmpty!23083 () Bool)

(assert (=> mapIsEmpty!23083 mapRes!23083))

(declare-fun b!815743 () Bool)

(assert (=> b!815743 (= e!452441 tp_is_empty!14331)))

(assert (= (and start!70252 res!557106) b!815737))

(assert (= (and b!815737 res!557108) b!815742))

(assert (= (and b!815742 res!557110) b!815739))

(assert (= (and b!815739 res!557109) b!815738))

(assert (= (and b!815738 (not res!557107)) b!815741))

(assert (= (and b!815736 condMapEmpty!23083) mapIsEmpty!23083))

(assert (= (and b!815736 (not condMapEmpty!23083)) mapNonEmpty!23083))

(get-info :version)

(assert (= (and mapNonEmpty!23083 ((_ is ValueCellFull!6750) mapValue!23083)) b!815740))

(assert (= (and b!815736 ((_ is ValueCellFull!6750) mapDefault!23083)) b!815743))

(assert (= start!70252 b!815736))

(declare-fun m!757475 () Bool)

(assert (=> b!815738 m!757475))

(declare-fun m!757477 () Bool)

(assert (=> b!815738 m!757477))

(declare-fun m!757479 () Bool)

(assert (=> b!815738 m!757479))

(declare-fun m!757481 () Bool)

(assert (=> start!70252 m!757481))

(declare-fun m!757483 () Bool)

(assert (=> start!70252 m!757483))

(declare-fun m!757485 () Bool)

(assert (=> start!70252 m!757485))

(declare-fun m!757487 () Bool)

(assert (=> mapNonEmpty!23083 m!757487))

(declare-fun m!757489 () Bool)

(assert (=> b!815739 m!757489))

(declare-fun m!757491 () Bool)

(assert (=> b!815741 m!757491))

(declare-fun m!757493 () Bool)

(assert (=> b!815741 m!757493))

(assert (=> b!815741 m!757493))

(declare-fun m!757495 () Bool)

(assert (=> b!815741 m!757495))

(declare-fun m!757497 () Bool)

(assert (=> b!815742 m!757497))

(check-sat (not b!815738) (not b!815739) (not b!815742) (not b_next!12621) tp_is_empty!14331 (not start!70252) (not b!815741) (not mapNonEmpty!23083) b_and!21427)
(check-sat b_and!21427 (not b_next!12621))
