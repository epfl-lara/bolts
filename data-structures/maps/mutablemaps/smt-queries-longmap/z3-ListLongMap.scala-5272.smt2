; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70808 () Bool)

(assert start!70808)

(declare-fun b_free!13041 () Bool)

(declare-fun b_next!13041 () Bool)

(assert (=> start!70808 (= b_free!13041 (not b_next!13041))))

(declare-fun tp!45867 () Bool)

(declare-fun b_and!21931 () Bool)

(assert (=> start!70808 (= tp!45867 b_and!21931)))

(declare-fun b!822007 () Bool)

(declare-fun res!560791 () Bool)

(declare-fun e!456996 () Bool)

(assert (=> b!822007 (=> (not res!560791) (not e!456996))))

(declare-datatypes ((array!45654 0))(
  ( (array!45655 (arr!21873 (Array (_ BitVec 32) (_ BitVec 64))) (size!22294 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45654)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45654 (_ BitVec 32)) Bool)

(assert (=> b!822007 (= res!560791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822008 () Bool)

(declare-fun e!457000 () Bool)

(assert (=> b!822008 (= e!456996 (not e!457000))))

(declare-fun res!560795 () Bool)

(assert (=> b!822008 (=> res!560795 e!457000)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822008 (= res!560795 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24669 0))(
  ( (V!24670 (val!7423 Int)) )
))
(declare-datatypes ((tuple2!9792 0))(
  ( (tuple2!9793 (_1!4906 (_ BitVec 64)) (_2!4906 V!24669)) )
))
(declare-datatypes ((List!15651 0))(
  ( (Nil!15648) (Cons!15647 (h!16776 tuple2!9792) (t!21996 List!15651)) )
))
(declare-datatypes ((ListLongMap!8629 0))(
  ( (ListLongMap!8630 (toList!4330 List!15651)) )
))
(declare-fun lt!369718 () ListLongMap!8629)

(declare-fun lt!369713 () ListLongMap!8629)

(assert (=> b!822008 (= lt!369718 lt!369713)))

(declare-fun zeroValueBefore!34 () V!24669)

(declare-fun zeroValueAfter!34 () V!24669)

(declare-fun minValue!754 () V!24669)

(declare-datatypes ((ValueCell!6960 0))(
  ( (ValueCellFull!6960 (v!9850 V!24669)) (EmptyCell!6960) )
))
(declare-datatypes ((array!45656 0))(
  ( (array!45657 (arr!21874 (Array (_ BitVec 32) ValueCell!6960)) (size!22295 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45656)

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28102 0))(
  ( (Unit!28103) )
))
(declare-fun lt!369715 () Unit!28102)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!473 (array!45654 array!45656 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24669 V!24669 V!24669 V!24669 (_ BitVec 32) Int) Unit!28102)

(assert (=> b!822008 (= lt!369715 (lemmaNoChangeToArrayThenSameMapNoExtras!473 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2357 (array!45654 array!45656 (_ BitVec 32) (_ BitVec 32) V!24669 V!24669 (_ BitVec 32) Int) ListLongMap!8629)

(assert (=> b!822008 (= lt!369713 (getCurrentListMapNoExtraKeys!2357 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822008 (= lt!369718 (getCurrentListMapNoExtraKeys!2357 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23737 () Bool)

(declare-fun mapRes!23737 () Bool)

(declare-fun tp!45868 () Bool)

(declare-fun e!457001 () Bool)

(assert (=> mapNonEmpty!23737 (= mapRes!23737 (and tp!45868 e!457001))))

(declare-fun mapRest!23737 () (Array (_ BitVec 32) ValueCell!6960))

(declare-fun mapValue!23737 () ValueCell!6960)

(declare-fun mapKey!23737 () (_ BitVec 32))

(assert (=> mapNonEmpty!23737 (= (arr!21874 _values!788) (store mapRest!23737 mapKey!23737 mapValue!23737))))

(declare-fun mapIsEmpty!23737 () Bool)

(assert (=> mapIsEmpty!23737 mapRes!23737))

(declare-fun b!822009 () Bool)

(declare-fun res!560794 () Bool)

(assert (=> b!822009 (=> (not res!560794) (not e!456996))))

(assert (=> b!822009 (= res!560794 (and (= (size!22295 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22294 _keys!976) (size!22295 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822010 () Bool)

(declare-fun res!560792 () Bool)

(assert (=> b!822010 (=> (not res!560792) (not e!456996))))

(declare-datatypes ((List!15652 0))(
  ( (Nil!15649) (Cons!15648 (h!16777 (_ BitVec 64)) (t!21997 List!15652)) )
))
(declare-fun arrayNoDuplicates!0 (array!45654 (_ BitVec 32) List!15652) Bool)

(assert (=> b!822010 (= res!560792 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15649))))

(declare-fun b!822012 () Bool)

(declare-fun e!456999 () Bool)

(declare-fun tp_is_empty!14751 () Bool)

(assert (=> b!822012 (= e!456999 tp_is_empty!14751)))

(declare-fun b!822013 () Bool)

(assert (=> b!822013 (= e!457000 true)))

(declare-fun lt!369716 () ListLongMap!8629)

(declare-fun lt!369720 () ListLongMap!8629)

(declare-fun lt!369719 () tuple2!9792)

(declare-fun +!1834 (ListLongMap!8629 tuple2!9792) ListLongMap!8629)

(assert (=> b!822013 (= lt!369716 (+!1834 lt!369720 lt!369719))))

(declare-fun lt!369722 () Unit!28102)

(declare-fun addCommutativeForDiffKeys!429 (ListLongMap!8629 (_ BitVec 64) V!24669 (_ BitVec 64) V!24669) Unit!28102)

(assert (=> b!822013 (= lt!369722 (addCommutativeForDiffKeys!429 lt!369718 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!369714 () ListLongMap!8629)

(assert (=> b!822013 (= lt!369714 lt!369716)))

(declare-fun lt!369721 () tuple2!9792)

(assert (=> b!822013 (= lt!369716 (+!1834 (+!1834 lt!369718 lt!369719) lt!369721))))

(assert (=> b!822013 (= lt!369719 (tuple2!9793 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!369717 () ListLongMap!8629)

(assert (=> b!822013 (= lt!369717 lt!369720)))

(assert (=> b!822013 (= lt!369720 (+!1834 lt!369718 lt!369721))))

(assert (=> b!822013 (= lt!369721 (tuple2!9793 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2464 (array!45654 array!45656 (_ BitVec 32) (_ BitVec 32) V!24669 V!24669 (_ BitVec 32) Int) ListLongMap!8629)

(assert (=> b!822013 (= lt!369714 (getCurrentListMap!2464 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822013 (= lt!369717 (getCurrentListMap!2464 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822014 () Bool)

(assert (=> b!822014 (= e!457001 tp_is_empty!14751)))

(declare-fun b!822011 () Bool)

(declare-fun e!456998 () Bool)

(assert (=> b!822011 (= e!456998 (and e!456999 mapRes!23737))))

(declare-fun condMapEmpty!23737 () Bool)

(declare-fun mapDefault!23737 () ValueCell!6960)

(assert (=> b!822011 (= condMapEmpty!23737 (= (arr!21874 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6960)) mapDefault!23737)))))

(declare-fun res!560793 () Bool)

(assert (=> start!70808 (=> (not res!560793) (not e!456996))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70808 (= res!560793 (validMask!0 mask!1312))))

(assert (=> start!70808 e!456996))

(assert (=> start!70808 tp_is_empty!14751))

(declare-fun array_inv!17443 (array!45654) Bool)

(assert (=> start!70808 (array_inv!17443 _keys!976)))

(assert (=> start!70808 true))

(declare-fun array_inv!17444 (array!45656) Bool)

(assert (=> start!70808 (and (array_inv!17444 _values!788) e!456998)))

(assert (=> start!70808 tp!45867))

(assert (= (and start!70808 res!560793) b!822009))

(assert (= (and b!822009 res!560794) b!822007))

(assert (= (and b!822007 res!560791) b!822010))

(assert (= (and b!822010 res!560792) b!822008))

(assert (= (and b!822008 (not res!560795)) b!822013))

(assert (= (and b!822011 condMapEmpty!23737) mapIsEmpty!23737))

(assert (= (and b!822011 (not condMapEmpty!23737)) mapNonEmpty!23737))

(get-info :version)

(assert (= (and mapNonEmpty!23737 ((_ is ValueCellFull!6960) mapValue!23737)) b!822014))

(assert (= (and b!822011 ((_ is ValueCellFull!6960) mapDefault!23737)) b!822012))

(assert (= start!70808 b!822011))

(declare-fun m!763863 () Bool)

(assert (=> mapNonEmpty!23737 m!763863))

(declare-fun m!763865 () Bool)

(assert (=> b!822010 m!763865))

(declare-fun m!763867 () Bool)

(assert (=> b!822013 m!763867))

(declare-fun m!763869 () Bool)

(assert (=> b!822013 m!763869))

(declare-fun m!763871 () Bool)

(assert (=> b!822013 m!763871))

(declare-fun m!763873 () Bool)

(assert (=> b!822013 m!763873))

(declare-fun m!763875 () Bool)

(assert (=> b!822013 m!763875))

(declare-fun m!763877 () Bool)

(assert (=> b!822013 m!763877))

(declare-fun m!763879 () Bool)

(assert (=> b!822013 m!763879))

(assert (=> b!822013 m!763869))

(declare-fun m!763881 () Bool)

(assert (=> start!70808 m!763881))

(declare-fun m!763883 () Bool)

(assert (=> start!70808 m!763883))

(declare-fun m!763885 () Bool)

(assert (=> start!70808 m!763885))

(declare-fun m!763887 () Bool)

(assert (=> b!822007 m!763887))

(declare-fun m!763889 () Bool)

(assert (=> b!822008 m!763889))

(declare-fun m!763891 () Bool)

(assert (=> b!822008 m!763891))

(declare-fun m!763893 () Bool)

(assert (=> b!822008 m!763893))

(check-sat tp_is_empty!14751 (not mapNonEmpty!23737) (not b!822008) (not b!822013) (not b_next!13041) b_and!21931 (not start!70808) (not b!822007) (not b!822010))
(check-sat b_and!21931 (not b_next!13041))
