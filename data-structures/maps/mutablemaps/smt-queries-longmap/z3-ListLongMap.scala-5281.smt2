; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70882 () Bool)

(assert start!70882)

(declare-fun b_free!13095 () Bool)

(declare-fun b_next!13095 () Bool)

(assert (=> start!70882 (= b_free!13095 (not b_next!13095))))

(declare-fun tp!46033 () Bool)

(declare-fun b_and!21997 () Bool)

(assert (=> start!70882 (= tp!46033 b_and!21997)))

(declare-fun b!822836 () Bool)

(declare-fun res!561275 () Bool)

(declare-fun e!457595 () Bool)

(assert (=> b!822836 (=> (not res!561275) (not e!457595))))

(declare-datatypes ((array!45764 0))(
  ( (array!45765 (arr!21927 (Array (_ BitVec 32) (_ BitVec 64))) (size!22348 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45764)

(declare-datatypes ((List!15697 0))(
  ( (Nil!15694) (Cons!15693 (h!16822 (_ BitVec 64)) (t!22044 List!15697)) )
))
(declare-fun arrayNoDuplicates!0 (array!45764 (_ BitVec 32) List!15697) Bool)

(assert (=> b!822836 (= res!561275 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15694))))

(declare-fun b!822837 () Bool)

(declare-fun e!457598 () Bool)

(assert (=> b!822837 (= e!457595 (not e!457598))))

(declare-fun res!561278 () Bool)

(assert (=> b!822837 (=> res!561278 e!457598)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822837 (= res!561278 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24741 0))(
  ( (V!24742 (val!7450 Int)) )
))
(declare-datatypes ((tuple2!9838 0))(
  ( (tuple2!9839 (_1!4929 (_ BitVec 64)) (_2!4929 V!24741)) )
))
(declare-datatypes ((List!15698 0))(
  ( (Nil!15695) (Cons!15694 (h!16823 tuple2!9838) (t!22045 List!15698)) )
))
(declare-datatypes ((ListLongMap!8675 0))(
  ( (ListLongMap!8676 (toList!4353 List!15698)) )
))
(declare-fun lt!370678 () ListLongMap!8675)

(declare-fun lt!370681 () ListLongMap!8675)

(assert (=> b!822837 (= lt!370678 lt!370681)))

(declare-fun zeroValueBefore!34 () V!24741)

(declare-fun zeroValueAfter!34 () V!24741)

(declare-fun minValue!754 () V!24741)

(declare-datatypes ((ValueCell!6987 0))(
  ( (ValueCellFull!6987 (v!9878 V!24741)) (EmptyCell!6987) )
))
(declare-datatypes ((array!45766 0))(
  ( (array!45767 (arr!21928 (Array (_ BitVec 32) ValueCell!6987)) (size!22349 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45766)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28150 0))(
  ( (Unit!28151) )
))
(declare-fun lt!370680 () Unit!28150)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!494 (array!45764 array!45766 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24741 V!24741 V!24741 V!24741 (_ BitVec 32) Int) Unit!28150)

(assert (=> b!822837 (= lt!370680 (lemmaNoChangeToArrayThenSameMapNoExtras!494 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2378 (array!45764 array!45766 (_ BitVec 32) (_ BitVec 32) V!24741 V!24741 (_ BitVec 32) Int) ListLongMap!8675)

(assert (=> b!822837 (= lt!370681 (getCurrentListMapNoExtraKeys!2378 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822837 (= lt!370678 (getCurrentListMapNoExtraKeys!2378 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822838 () Bool)

(declare-fun e!457597 () Bool)

(declare-fun tp_is_empty!14805 () Bool)

(assert (=> b!822838 (= e!457597 tp_is_empty!14805)))

(declare-fun b!822839 () Bool)

(declare-fun e!457596 () Bool)

(assert (=> b!822839 (= e!457596 tp_is_empty!14805)))

(declare-fun b!822840 () Bool)

(declare-fun res!561277 () Bool)

(assert (=> b!822840 (=> (not res!561277) (not e!457595))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45764 (_ BitVec 32)) Bool)

(assert (=> b!822840 (= res!561277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822841 () Bool)

(declare-fun res!561279 () Bool)

(assert (=> b!822841 (=> (not res!561279) (not e!457595))))

(assert (=> b!822841 (= res!561279 (and (= (size!22349 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22348 _keys!976) (size!22349 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!23821 () Bool)

(declare-fun mapRes!23821 () Bool)

(declare-fun tp!46032 () Bool)

(assert (=> mapNonEmpty!23821 (= mapRes!23821 (and tp!46032 e!457596))))

(declare-fun mapRest!23821 () (Array (_ BitVec 32) ValueCell!6987))

(declare-fun mapKey!23821 () (_ BitVec 32))

(declare-fun mapValue!23821 () ValueCell!6987)

(assert (=> mapNonEmpty!23821 (= (arr!21928 _values!788) (store mapRest!23821 mapKey!23821 mapValue!23821))))

(declare-fun b!822842 () Bool)

(declare-fun e!457599 () Bool)

(assert (=> b!822842 (= e!457599 (and e!457597 mapRes!23821))))

(declare-fun condMapEmpty!23821 () Bool)

(declare-fun mapDefault!23821 () ValueCell!6987)

(assert (=> b!822842 (= condMapEmpty!23821 (= (arr!21928 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6987)) mapDefault!23821)))))

(declare-fun res!561276 () Bool)

(assert (=> start!70882 (=> (not res!561276) (not e!457595))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70882 (= res!561276 (validMask!0 mask!1312))))

(assert (=> start!70882 e!457595))

(assert (=> start!70882 tp_is_empty!14805))

(declare-fun array_inv!17481 (array!45764) Bool)

(assert (=> start!70882 (array_inv!17481 _keys!976)))

(assert (=> start!70882 true))

(declare-fun array_inv!17482 (array!45766) Bool)

(assert (=> start!70882 (and (array_inv!17482 _values!788) e!457599)))

(assert (=> start!70882 tp!46033))

(declare-fun mapIsEmpty!23821 () Bool)

(assert (=> mapIsEmpty!23821 mapRes!23821))

(declare-fun b!822843 () Bool)

(assert (=> b!822843 (= e!457598 true)))

(declare-fun lt!370683 () ListLongMap!8675)

(declare-fun lt!370687 () ListLongMap!8675)

(declare-fun lt!370686 () tuple2!9838)

(declare-fun +!1855 (ListLongMap!8675 tuple2!9838) ListLongMap!8675)

(assert (=> b!822843 (= lt!370683 (+!1855 lt!370687 lt!370686))))

(declare-fun lt!370685 () Unit!28150)

(declare-fun addCommutativeForDiffKeys!450 (ListLongMap!8675 (_ BitVec 64) V!24741 (_ BitVec 64) V!24741) Unit!28150)

(assert (=> b!822843 (= lt!370685 (addCommutativeForDiffKeys!450 lt!370678 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370679 () ListLongMap!8675)

(assert (=> b!822843 (= lt!370679 lt!370683)))

(declare-fun lt!370682 () tuple2!9838)

(assert (=> b!822843 (= lt!370683 (+!1855 (+!1855 lt!370678 lt!370686) lt!370682))))

(assert (=> b!822843 (= lt!370686 (tuple2!9839 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370684 () ListLongMap!8675)

(assert (=> b!822843 (= lt!370684 lt!370687)))

(assert (=> b!822843 (= lt!370687 (+!1855 lt!370678 lt!370682))))

(assert (=> b!822843 (= lt!370682 (tuple2!9839 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2485 (array!45764 array!45766 (_ BitVec 32) (_ BitVec 32) V!24741 V!24741 (_ BitVec 32) Int) ListLongMap!8675)

(assert (=> b!822843 (= lt!370679 (getCurrentListMap!2485 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822843 (= lt!370684 (getCurrentListMap!2485 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (= (and start!70882 res!561276) b!822841))

(assert (= (and b!822841 res!561279) b!822840))

(assert (= (and b!822840 res!561277) b!822836))

(assert (= (and b!822836 res!561275) b!822837))

(assert (= (and b!822837 (not res!561278)) b!822843))

(assert (= (and b!822842 condMapEmpty!23821) mapIsEmpty!23821))

(assert (= (and b!822842 (not condMapEmpty!23821)) mapNonEmpty!23821))

(get-info :version)

(assert (= (and mapNonEmpty!23821 ((_ is ValueCellFull!6987) mapValue!23821)) b!822839))

(assert (= (and b!822842 ((_ is ValueCellFull!6987) mapDefault!23821)) b!822838))

(assert (= start!70882 b!822842))

(declare-fun m!764943 () Bool)

(assert (=> start!70882 m!764943))

(declare-fun m!764945 () Bool)

(assert (=> start!70882 m!764945))

(declare-fun m!764947 () Bool)

(assert (=> start!70882 m!764947))

(declare-fun m!764949 () Bool)

(assert (=> b!822843 m!764949))

(declare-fun m!764951 () Bool)

(assert (=> b!822843 m!764951))

(declare-fun m!764953 () Bool)

(assert (=> b!822843 m!764953))

(declare-fun m!764955 () Bool)

(assert (=> b!822843 m!764955))

(declare-fun m!764957 () Bool)

(assert (=> b!822843 m!764957))

(assert (=> b!822843 m!764953))

(declare-fun m!764959 () Bool)

(assert (=> b!822843 m!764959))

(declare-fun m!764961 () Bool)

(assert (=> b!822843 m!764961))

(declare-fun m!764963 () Bool)

(assert (=> b!822840 m!764963))

(declare-fun m!764965 () Bool)

(assert (=> b!822836 m!764965))

(declare-fun m!764967 () Bool)

(assert (=> mapNonEmpty!23821 m!764967))

(declare-fun m!764969 () Bool)

(assert (=> b!822837 m!764969))

(declare-fun m!764971 () Bool)

(assert (=> b!822837 m!764971))

(declare-fun m!764973 () Bool)

(assert (=> b!822837 m!764973))

(check-sat (not mapNonEmpty!23821) (not b_next!13095) (not b!822836) (not b!822840) (not b!822837) b_and!21997 tp_is_empty!14805 (not start!70882) (not b!822843))
(check-sat b_and!21997 (not b_next!13095))
