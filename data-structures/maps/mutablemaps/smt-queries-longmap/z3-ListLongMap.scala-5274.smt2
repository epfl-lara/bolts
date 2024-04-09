; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70820 () Bool)

(assert start!70820)

(declare-fun b_free!13053 () Bool)

(declare-fun b_next!13053 () Bool)

(assert (=> start!70820 (= b_free!13053 (not b_next!13053))))

(declare-fun tp!45903 () Bool)

(declare-fun b_and!21943 () Bool)

(assert (=> start!70820 (= tp!45903 b_and!21943)))

(declare-fun b!822151 () Bool)

(declare-fun e!457108 () Bool)

(assert (=> b!822151 (= e!457108 true)))

(declare-datatypes ((V!24685 0))(
  ( (V!24686 (val!7429 Int)) )
))
(declare-datatypes ((tuple2!9800 0))(
  ( (tuple2!9801 (_1!4910 (_ BitVec 64)) (_2!4910 V!24685)) )
))
(declare-datatypes ((List!15661 0))(
  ( (Nil!15658) (Cons!15657 (h!16786 tuple2!9800) (t!22006 List!15661)) )
))
(declare-datatypes ((ListLongMap!8637 0))(
  ( (ListLongMap!8638 (toList!4334 List!15661)) )
))
(declare-fun lt!369895 () ListLongMap!8637)

(declare-fun lt!369902 () ListLongMap!8637)

(declare-fun lt!369900 () tuple2!9800)

(declare-fun +!1838 (ListLongMap!8637 tuple2!9800) ListLongMap!8637)

(assert (=> b!822151 (= lt!369895 (+!1838 lt!369902 lt!369900))))

(declare-datatypes ((Unit!28110 0))(
  ( (Unit!28111) )
))
(declare-fun lt!369897 () Unit!28110)

(declare-fun zeroValueAfter!34 () V!24685)

(declare-fun lt!369893 () ListLongMap!8637)

(declare-fun minValue!754 () V!24685)

(declare-fun addCommutativeForDiffKeys!433 (ListLongMap!8637 (_ BitVec 64) V!24685 (_ BitVec 64) V!24685) Unit!28110)

(assert (=> b!822151 (= lt!369897 (addCommutativeForDiffKeys!433 lt!369893 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!369901 () ListLongMap!8637)

(assert (=> b!822151 (= lt!369901 lt!369895)))

(declare-fun lt!369899 () tuple2!9800)

(assert (=> b!822151 (= lt!369895 (+!1838 (+!1838 lt!369893 lt!369900) lt!369899))))

(assert (=> b!822151 (= lt!369900 (tuple2!9801 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!369894 () ListLongMap!8637)

(assert (=> b!822151 (= lt!369894 lt!369902)))

(assert (=> b!822151 (= lt!369902 (+!1838 lt!369893 lt!369899))))

(assert (=> b!822151 (= lt!369899 (tuple2!9801 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-datatypes ((array!45678 0))(
  ( (array!45679 (arr!21885 (Array (_ BitVec 32) (_ BitVec 64))) (size!22306 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45678)

(declare-datatypes ((ValueCell!6966 0))(
  ( (ValueCellFull!6966 (v!9856 V!24685)) (EmptyCell!6966) )
))
(declare-datatypes ((array!45680 0))(
  ( (array!45681 (arr!21886 (Array (_ BitVec 32) ValueCell!6966)) (size!22307 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45680)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun getCurrentListMap!2468 (array!45678 array!45680 (_ BitVec 32) (_ BitVec 32) V!24685 V!24685 (_ BitVec 32) Int) ListLongMap!8637)

(assert (=> b!822151 (= lt!369901 (getCurrentListMap!2468 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun zeroValueBefore!34 () V!24685)

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822151 (= lt!369894 (getCurrentListMap!2468 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822152 () Bool)

(declare-fun res!560882 () Bool)

(declare-fun e!457105 () Bool)

(assert (=> b!822152 (=> (not res!560882) (not e!457105))))

(assert (=> b!822152 (= res!560882 (and (= (size!22307 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22306 _keys!976) (size!22307 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822153 () Bool)

(assert (=> b!822153 (= e!457105 (not e!457108))))

(declare-fun res!560885 () Bool)

(assert (=> b!822153 (=> res!560885 e!457108)))

(assert (=> b!822153 (= res!560885 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun lt!369896 () ListLongMap!8637)

(assert (=> b!822153 (= lt!369893 lt!369896)))

(declare-fun lt!369898 () Unit!28110)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!476 (array!45678 array!45680 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24685 V!24685 V!24685 V!24685 (_ BitVec 32) Int) Unit!28110)

(assert (=> b!822153 (= lt!369898 (lemmaNoChangeToArrayThenSameMapNoExtras!476 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2360 (array!45678 array!45680 (_ BitVec 32) (_ BitVec 32) V!24685 V!24685 (_ BitVec 32) Int) ListLongMap!8637)

(assert (=> b!822153 (= lt!369896 (getCurrentListMapNoExtraKeys!2360 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822153 (= lt!369893 (getCurrentListMapNoExtraKeys!2360 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23755 () Bool)

(declare-fun mapRes!23755 () Bool)

(declare-fun tp!45904 () Bool)

(declare-fun e!457106 () Bool)

(assert (=> mapNonEmpty!23755 (= mapRes!23755 (and tp!45904 e!457106))))

(declare-fun mapValue!23755 () ValueCell!6966)

(declare-fun mapKey!23755 () (_ BitVec 32))

(declare-fun mapRest!23755 () (Array (_ BitVec 32) ValueCell!6966))

(assert (=> mapNonEmpty!23755 (= (arr!21886 _values!788) (store mapRest!23755 mapKey!23755 mapValue!23755))))

(declare-fun b!822154 () Bool)

(declare-fun e!457104 () Bool)

(declare-fun tp_is_empty!14763 () Bool)

(assert (=> b!822154 (= e!457104 tp_is_empty!14763)))

(declare-fun res!560884 () Bool)

(assert (=> start!70820 (=> (not res!560884) (not e!457105))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70820 (= res!560884 (validMask!0 mask!1312))))

(assert (=> start!70820 e!457105))

(assert (=> start!70820 tp_is_empty!14763))

(declare-fun array_inv!17451 (array!45678) Bool)

(assert (=> start!70820 (array_inv!17451 _keys!976)))

(assert (=> start!70820 true))

(declare-fun e!457107 () Bool)

(declare-fun array_inv!17452 (array!45680) Bool)

(assert (=> start!70820 (and (array_inv!17452 _values!788) e!457107)))

(assert (=> start!70820 tp!45903))

(declare-fun b!822155 () Bool)

(declare-fun res!560881 () Bool)

(assert (=> b!822155 (=> (not res!560881) (not e!457105))))

(declare-datatypes ((List!15662 0))(
  ( (Nil!15659) (Cons!15658 (h!16787 (_ BitVec 64)) (t!22007 List!15662)) )
))
(declare-fun arrayNoDuplicates!0 (array!45678 (_ BitVec 32) List!15662) Bool)

(assert (=> b!822155 (= res!560881 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15659))))

(declare-fun mapIsEmpty!23755 () Bool)

(assert (=> mapIsEmpty!23755 mapRes!23755))

(declare-fun b!822156 () Bool)

(assert (=> b!822156 (= e!457107 (and e!457104 mapRes!23755))))

(declare-fun condMapEmpty!23755 () Bool)

(declare-fun mapDefault!23755 () ValueCell!6966)

(assert (=> b!822156 (= condMapEmpty!23755 (= (arr!21886 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6966)) mapDefault!23755)))))

(declare-fun b!822157 () Bool)

(assert (=> b!822157 (= e!457106 tp_is_empty!14763)))

(declare-fun b!822158 () Bool)

(declare-fun res!560883 () Bool)

(assert (=> b!822158 (=> (not res!560883) (not e!457105))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45678 (_ BitVec 32)) Bool)

(assert (=> b!822158 (= res!560883 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(assert (= (and start!70820 res!560884) b!822152))

(assert (= (and b!822152 res!560882) b!822158))

(assert (= (and b!822158 res!560883) b!822155))

(assert (= (and b!822155 res!560881) b!822153))

(assert (= (and b!822153 (not res!560885)) b!822151))

(assert (= (and b!822156 condMapEmpty!23755) mapIsEmpty!23755))

(assert (= (and b!822156 (not condMapEmpty!23755)) mapNonEmpty!23755))

(get-info :version)

(assert (= (and mapNonEmpty!23755 ((_ is ValueCellFull!6966) mapValue!23755)) b!822157))

(assert (= (and b!822156 ((_ is ValueCellFull!6966) mapDefault!23755)) b!822154))

(assert (= start!70820 b!822156))

(declare-fun m!764055 () Bool)

(assert (=> b!822153 m!764055))

(declare-fun m!764057 () Bool)

(assert (=> b!822153 m!764057))

(declare-fun m!764059 () Bool)

(assert (=> b!822153 m!764059))

(declare-fun m!764061 () Bool)

(assert (=> start!70820 m!764061))

(declare-fun m!764063 () Bool)

(assert (=> start!70820 m!764063))

(declare-fun m!764065 () Bool)

(assert (=> start!70820 m!764065))

(declare-fun m!764067 () Bool)

(assert (=> b!822158 m!764067))

(declare-fun m!764069 () Bool)

(assert (=> b!822155 m!764069))

(declare-fun m!764071 () Bool)

(assert (=> mapNonEmpty!23755 m!764071))

(declare-fun m!764073 () Bool)

(assert (=> b!822151 m!764073))

(declare-fun m!764075 () Bool)

(assert (=> b!822151 m!764075))

(declare-fun m!764077 () Bool)

(assert (=> b!822151 m!764077))

(declare-fun m!764079 () Bool)

(assert (=> b!822151 m!764079))

(assert (=> b!822151 m!764073))

(declare-fun m!764081 () Bool)

(assert (=> b!822151 m!764081))

(declare-fun m!764083 () Bool)

(assert (=> b!822151 m!764083))

(declare-fun m!764085 () Bool)

(assert (=> b!822151 m!764085))

(check-sat (not mapNonEmpty!23755) (not b!822153) (not b!822155) (not b!822158) (not b_next!13053) b_and!21943 (not b!822151) (not start!70820) tp_is_empty!14763)
(check-sat b_and!21943 (not b_next!13053))
