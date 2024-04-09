; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70528 () Bool)

(assert start!70528)

(declare-fun b_free!12831 () Bool)

(declare-fun b_next!12831 () Bool)

(assert (=> start!70528 (= b_free!12831 (not b_next!12831))))

(declare-fun tp!45226 () Bool)

(declare-fun b_and!21679 () Bool)

(assert (=> start!70528 (= tp!45226 b_and!21679)))

(declare-fun mapIsEmpty!23410 () Bool)

(declare-fun mapRes!23410 () Bool)

(assert (=> mapIsEmpty!23410 mapRes!23410))

(declare-fun b!818817 () Bool)

(declare-fun e!454661 () Bool)

(declare-fun e!454663 () Bool)

(assert (=> b!818817 (= e!454661 (not e!454663))))

(declare-fun res!558899 () Bool)

(assert (=> b!818817 (=> res!558899 e!454663)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!818817 (= res!558899 (or (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!24389 0))(
  ( (V!24390 (val!7318 Int)) )
))
(declare-datatypes ((tuple2!9638 0))(
  ( (tuple2!9639 (_1!4829 (_ BitVec 64)) (_2!4829 V!24389)) )
))
(declare-datatypes ((List!15500 0))(
  ( (Nil!15497) (Cons!15496 (h!16625 tuple2!9638) (t!21837 List!15500)) )
))
(declare-datatypes ((ListLongMap!8475 0))(
  ( (ListLongMap!8476 (toList!4253 List!15500)) )
))
(declare-fun lt!367201 () ListLongMap!8475)

(declare-fun lt!367204 () ListLongMap!8475)

(assert (=> b!818817 (= lt!367201 lt!367204)))

(declare-fun zeroValueBefore!34 () V!24389)

(declare-datatypes ((array!45254 0))(
  ( (array!45255 (arr!21677 (Array (_ BitVec 32) (_ BitVec 64))) (size!22098 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45254)

(declare-datatypes ((Unit!27955 0))(
  ( (Unit!27956) )
))
(declare-fun lt!367206 () Unit!27955)

(declare-fun zeroValueAfter!34 () V!24389)

(declare-fun minValue!754 () V!24389)

(declare-datatypes ((ValueCell!6855 0))(
  ( (ValueCellFull!6855 (v!9743 V!24389)) (EmptyCell!6855) )
))
(declare-datatypes ((array!45256 0))(
  ( (array!45257 (arr!21678 (Array (_ BitVec 32) ValueCell!6855)) (size!22099 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45256)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!409 (array!45254 array!45256 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24389 V!24389 V!24389 V!24389 (_ BitVec 32) Int) Unit!27955)

(assert (=> b!818817 (= lt!367206 (lemmaNoChangeToArrayThenSameMapNoExtras!409 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2293 (array!45254 array!45256 (_ BitVec 32) (_ BitVec 32) V!24389 V!24389 (_ BitVec 32) Int) ListLongMap!8475)

(assert (=> b!818817 (= lt!367204 (getCurrentListMapNoExtraKeys!2293 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818817 (= lt!367201 (getCurrentListMapNoExtraKeys!2293 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818818 () Bool)

(assert (=> b!818818 (= e!454663 true)))

(declare-fun lt!367199 () tuple2!9638)

(declare-fun lt!367198 () ListLongMap!8475)

(declare-fun lt!367203 () tuple2!9638)

(declare-fun +!1797 (ListLongMap!8475 tuple2!9638) ListLongMap!8475)

(assert (=> b!818818 (= lt!367198 (+!1797 (+!1797 lt!367204 lt!367203) lt!367199))))

(declare-fun lt!367205 () ListLongMap!8475)

(assert (=> b!818818 (= (+!1797 lt!367201 lt!367199) (+!1797 lt!367205 lt!367199))))

(declare-fun lt!367202 () Unit!27955)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!176 (ListLongMap!8475 (_ BitVec 64) V!24389 V!24389) Unit!27955)

(assert (=> b!818818 (= lt!367202 (addSameAsAddTwiceSameKeyDiffValues!176 lt!367201 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34 zeroValueAfter!34))))

(assert (=> b!818818 (= lt!367199 (tuple2!9639 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun e!454665 () Bool)

(assert (=> b!818818 e!454665))

(declare-fun res!558895 () Bool)

(assert (=> b!818818 (=> (not res!558895) (not e!454665))))

(declare-fun lt!367207 () ListLongMap!8475)

(assert (=> b!818818 (= res!558895 (= lt!367207 lt!367205))))

(assert (=> b!818818 (= lt!367205 (+!1797 lt!367201 lt!367203))))

(assert (=> b!818818 (= lt!367203 (tuple2!9639 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueBefore!34))))

(declare-fun lt!367200 () ListLongMap!8475)

(declare-fun getCurrentListMap!2411 (array!45254 array!45256 (_ BitVec 32) (_ BitVec 32) V!24389 V!24389 (_ BitVec 32) Int) ListLongMap!8475)

(assert (=> b!818818 (= lt!367200 (getCurrentListMap!2411 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!818818 (= lt!367207 (getCurrentListMap!2411 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!818819 () Bool)

(declare-fun e!454660 () Bool)

(declare-fun tp_is_empty!14541 () Bool)

(assert (=> b!818819 (= e!454660 tp_is_empty!14541)))

(declare-fun res!558894 () Bool)

(assert (=> start!70528 (=> (not res!558894) (not e!454661))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70528 (= res!558894 (validMask!0 mask!1312))))

(assert (=> start!70528 e!454661))

(assert (=> start!70528 tp_is_empty!14541))

(declare-fun array_inv!17299 (array!45254) Bool)

(assert (=> start!70528 (array_inv!17299 _keys!976)))

(assert (=> start!70528 true))

(declare-fun e!454662 () Bool)

(declare-fun array_inv!17300 (array!45256) Bool)

(assert (=> start!70528 (and (array_inv!17300 _values!788) e!454662)))

(assert (=> start!70528 tp!45226))

(declare-fun b!818820 () Bool)

(declare-fun res!558898 () Bool)

(assert (=> b!818820 (=> (not res!558898) (not e!454661))))

(assert (=> b!818820 (= res!558898 (and (= (size!22099 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22098 _keys!976) (size!22099 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!818821 () Bool)

(declare-fun e!454664 () Bool)

(assert (=> b!818821 (= e!454662 (and e!454664 mapRes!23410))))

(declare-fun condMapEmpty!23410 () Bool)

(declare-fun mapDefault!23410 () ValueCell!6855)

(assert (=> b!818821 (= condMapEmpty!23410 (= (arr!21678 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6855)) mapDefault!23410)))))

(declare-fun b!818822 () Bool)

(declare-fun res!558897 () Bool)

(assert (=> b!818822 (=> (not res!558897) (not e!454661))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45254 (_ BitVec 32)) Bool)

(assert (=> b!818822 (= res!558897 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!818823 () Bool)

(declare-fun res!558896 () Bool)

(assert (=> b!818823 (=> (not res!558896) (not e!454661))))

(declare-datatypes ((List!15501 0))(
  ( (Nil!15498) (Cons!15497 (h!16626 (_ BitVec 64)) (t!21838 List!15501)) )
))
(declare-fun arrayNoDuplicates!0 (array!45254 (_ BitVec 32) List!15501) Bool)

(assert (=> b!818823 (= res!558896 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15498))))

(declare-fun b!818824 () Bool)

(assert (=> b!818824 (= e!454665 (= lt!367200 (+!1797 lt!367204 (tuple2!9639 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))))

(declare-fun mapNonEmpty!23410 () Bool)

(declare-fun tp!45225 () Bool)

(assert (=> mapNonEmpty!23410 (= mapRes!23410 (and tp!45225 e!454660))))

(declare-fun mapKey!23410 () (_ BitVec 32))

(declare-fun mapRest!23410 () (Array (_ BitVec 32) ValueCell!6855))

(declare-fun mapValue!23410 () ValueCell!6855)

(assert (=> mapNonEmpty!23410 (= (arr!21678 _values!788) (store mapRest!23410 mapKey!23410 mapValue!23410))))

(declare-fun b!818825 () Bool)

(assert (=> b!818825 (= e!454664 tp_is_empty!14541)))

(assert (= (and start!70528 res!558894) b!818820))

(assert (= (and b!818820 res!558898) b!818822))

(assert (= (and b!818822 res!558897) b!818823))

(assert (= (and b!818823 res!558896) b!818817))

(assert (= (and b!818817 (not res!558899)) b!818818))

(assert (= (and b!818818 res!558895) b!818824))

(assert (= (and b!818821 condMapEmpty!23410) mapIsEmpty!23410))

(assert (= (and b!818821 (not condMapEmpty!23410)) mapNonEmpty!23410))

(get-info :version)

(assert (= (and mapNonEmpty!23410 ((_ is ValueCellFull!6855) mapValue!23410)) b!818819))

(assert (= (and b!818821 ((_ is ValueCellFull!6855) mapDefault!23410)) b!818825))

(assert (= start!70528 b!818821))

(declare-fun m!760399 () Bool)

(assert (=> b!818822 m!760399))

(declare-fun m!760401 () Bool)

(assert (=> b!818823 m!760401))

(declare-fun m!760403 () Bool)

(assert (=> b!818824 m!760403))

(declare-fun m!760405 () Bool)

(assert (=> mapNonEmpty!23410 m!760405))

(declare-fun m!760407 () Bool)

(assert (=> b!818818 m!760407))

(declare-fun m!760409 () Bool)

(assert (=> b!818818 m!760409))

(declare-fun m!760411 () Bool)

(assert (=> b!818818 m!760411))

(declare-fun m!760413 () Bool)

(assert (=> b!818818 m!760413))

(assert (=> b!818818 m!760407))

(declare-fun m!760415 () Bool)

(assert (=> b!818818 m!760415))

(declare-fun m!760417 () Bool)

(assert (=> b!818818 m!760417))

(declare-fun m!760419 () Bool)

(assert (=> b!818818 m!760419))

(declare-fun m!760421 () Bool)

(assert (=> b!818818 m!760421))

(declare-fun m!760423 () Bool)

(assert (=> b!818817 m!760423))

(declare-fun m!760425 () Bool)

(assert (=> b!818817 m!760425))

(declare-fun m!760427 () Bool)

(assert (=> b!818817 m!760427))

(declare-fun m!760429 () Bool)

(assert (=> start!70528 m!760429))

(declare-fun m!760431 () Bool)

(assert (=> start!70528 m!760431))

(declare-fun m!760433 () Bool)

(assert (=> start!70528 m!760433))

(check-sat b_and!21679 (not b_next!12831) (not b!818822) (not b!818824) (not b!818818) (not b!818817) tp_is_empty!14541 (not start!70528) (not mapNonEmpty!23410) (not b!818823))
(check-sat b_and!21679 (not b_next!12831))
