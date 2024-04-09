; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70160 () Bool)

(assert start!70160)

(declare-fun b_free!12543 () Bool)

(declare-fun b_next!12543 () Bool)

(assert (=> start!70160 (= b_free!12543 (not b_next!12543))))

(declare-fun tp!44347 () Bool)

(declare-fun b_and!21341 () Bool)

(assert (=> start!70160 (= tp!44347 b_and!21341)))

(declare-fun mapIsEmpty!22963 () Bool)

(declare-fun mapRes!22963 () Bool)

(assert (=> mapIsEmpty!22963 mapRes!22963))

(declare-fun b!814782 () Bool)

(declare-fun e!451753 () Bool)

(declare-fun e!451752 () Bool)

(assert (=> b!814782 (= e!451753 (and e!451752 mapRes!22963))))

(declare-fun condMapEmpty!22963 () Bool)

(declare-datatypes ((V!24005 0))(
  ( (V!24006 (val!7174 Int)) )
))
(declare-datatypes ((ValueCell!6711 0))(
  ( (ValueCellFull!6711 (v!9597 V!24005)) (EmptyCell!6711) )
))
(declare-datatypes ((array!44694 0))(
  ( (array!44695 (arr!21402 (Array (_ BitVec 32) ValueCell!6711)) (size!21823 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!44694)

(declare-fun mapDefault!22963 () ValueCell!6711)

(assert (=> b!814782 (= condMapEmpty!22963 (= (arr!21402 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6711)) mapDefault!22963)))))

(declare-fun b!814783 () Bool)

(declare-fun e!451754 () Bool)

(declare-fun tp_is_empty!14253 () Bool)

(assert (=> b!814783 (= e!451754 tp_is_empty!14253)))

(declare-fun mapNonEmpty!22963 () Bool)

(declare-fun tp!44346 () Bool)

(assert (=> mapNonEmpty!22963 (= mapRes!22963 (and tp!44346 e!451754))))

(declare-fun mapRest!22963 () (Array (_ BitVec 32) ValueCell!6711))

(declare-fun mapKey!22963 () (_ BitVec 32))

(declare-fun mapValue!22963 () ValueCell!6711)

(assert (=> mapNonEmpty!22963 (= (arr!21402 _values!788) (store mapRest!22963 mapKey!22963 mapValue!22963))))

(declare-fun res!556559 () Bool)

(declare-fun e!451751 () Bool)

(assert (=> start!70160 (=> (not res!556559) (not e!451751))))

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70160 (= res!556559 (validMask!0 mask!1312))))

(assert (=> start!70160 e!451751))

(assert (=> start!70160 tp_is_empty!14253))

(declare-datatypes ((array!44696 0))(
  ( (array!44697 (arr!21403 (Array (_ BitVec 32) (_ BitVec 64))) (size!21824 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!44696)

(declare-fun array_inv!17103 (array!44696) Bool)

(assert (=> start!70160 (array_inv!17103 _keys!976)))

(assert (=> start!70160 true))

(declare-fun array_inv!17104 (array!44694) Bool)

(assert (=> start!70160 (and (array_inv!17104 _values!788) e!451753)))

(assert (=> start!70160 tp!44347))

(declare-fun b!814784 () Bool)

(declare-fun res!556557 () Bool)

(assert (=> b!814784 (=> (not res!556557) (not e!451751))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!44696 (_ BitVec 32)) Bool)

(assert (=> b!814784 (= res!556557 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!814785 () Bool)

(declare-fun res!556560 () Bool)

(assert (=> b!814785 (=> (not res!556560) (not e!451751))))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(assert (=> b!814785 (= res!556560 (and (= (size!21823 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!21824 _keys!976) (size!21823 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!814786 () Bool)

(assert (=> b!814786 (= e!451752 tp_is_empty!14253)))

(declare-fun b!814787 () Bool)

(declare-fun res!556558 () Bool)

(assert (=> b!814787 (=> (not res!556558) (not e!451751))))

(declare-datatypes ((List!15285 0))(
  ( (Nil!15282) (Cons!15281 (h!16410 (_ BitVec 64)) (t!21612 List!15285)) )
))
(declare-fun arrayNoDuplicates!0 (array!44696 (_ BitVec 32) List!15285) Bool)

(assert (=> b!814787 (= res!556558 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15282))))

(declare-fun b!814788 () Bool)

(assert (=> b!814788 (= e!451751 (not true))))

(declare-datatypes ((tuple2!9412 0))(
  ( (tuple2!9413 (_1!4716 (_ BitVec 64)) (_2!4716 V!24005)) )
))
(declare-datatypes ((List!15286 0))(
  ( (Nil!15283) (Cons!15282 (h!16411 tuple2!9412) (t!21613 List!15286)) )
))
(declare-datatypes ((ListLongMap!8249 0))(
  ( (ListLongMap!8250 (toList!4140 List!15286)) )
))
(declare-fun lt!364782 () ListLongMap!8249)

(declare-fun lt!364781 () ListLongMap!8249)

(assert (=> b!814788 (= lt!364782 lt!364781)))

(declare-datatypes ((Unit!27736 0))(
  ( (Unit!27737) )
))
(declare-fun lt!364780 () Unit!27736)

(declare-fun zeroValueBefore!34 () V!24005)

(declare-fun zeroValueAfter!34 () V!24005)

(declare-fun minValue!754 () V!24005)

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!305 (array!44696 array!44694 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24005 V!24005 V!24005 V!24005 (_ BitVec 32) Int) Unit!27736)

(assert (=> b!814788 (= lt!364780 (lemmaNoChangeToArrayThenSameMapNoExtras!305 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2189 (array!44696 array!44694 (_ BitVec 32) (_ BitVec 32) V!24005 V!24005 (_ BitVec 32) Int) ListLongMap!8249)

(assert (=> b!814788 (= lt!364781 (getCurrentListMapNoExtraKeys!2189 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!814788 (= lt!364782 (getCurrentListMapNoExtraKeys!2189 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!70160 res!556559) b!814785))

(assert (= (and b!814785 res!556560) b!814784))

(assert (= (and b!814784 res!556557) b!814787))

(assert (= (and b!814787 res!556558) b!814788))

(assert (= (and b!814782 condMapEmpty!22963) mapIsEmpty!22963))

(assert (= (and b!814782 (not condMapEmpty!22963)) mapNonEmpty!22963))

(get-info :version)

(assert (= (and mapNonEmpty!22963 ((_ is ValueCellFull!6711) mapValue!22963)) b!814783))

(assert (= (and b!814782 ((_ is ValueCellFull!6711) mapDefault!22963)) b!814786))

(assert (= start!70160 b!814782))

(declare-fun m!756611 () Bool)

(assert (=> b!814788 m!756611))

(declare-fun m!756613 () Bool)

(assert (=> b!814788 m!756613))

(declare-fun m!756615 () Bool)

(assert (=> b!814788 m!756615))

(declare-fun m!756617 () Bool)

(assert (=> b!814787 m!756617))

(declare-fun m!756619 () Bool)

(assert (=> mapNonEmpty!22963 m!756619))

(declare-fun m!756621 () Bool)

(assert (=> start!70160 m!756621))

(declare-fun m!756623 () Bool)

(assert (=> start!70160 m!756623))

(declare-fun m!756625 () Bool)

(assert (=> start!70160 m!756625))

(declare-fun m!756627 () Bool)

(assert (=> b!814784 m!756627))

(check-sat (not b!814788) (not b!814784) (not start!70160) (not b_next!12543) (not b!814787) tp_is_empty!14253 b_and!21341 (not mapNonEmpty!22963))
(check-sat b_and!21341 (not b_next!12543))
