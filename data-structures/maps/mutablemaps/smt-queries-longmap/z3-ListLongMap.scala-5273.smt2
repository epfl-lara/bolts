; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70814 () Bool)

(assert start!70814)

(declare-fun b_free!13047 () Bool)

(declare-fun b_next!13047 () Bool)

(assert (=> start!70814 (= b_free!13047 (not b_next!13047))))

(declare-fun tp!45886 () Bool)

(declare-fun b_and!21937 () Bool)

(assert (=> start!70814 (= tp!45886 b_and!21937)))

(declare-fun b!822079 () Bool)

(declare-fun res!560839 () Bool)

(declare-fun e!457051 () Bool)

(assert (=> b!822079 (=> (not res!560839) (not e!457051))))

(declare-datatypes ((array!45666 0))(
  ( (array!45667 (arr!21879 (Array (_ BitVec 32) (_ BitVec 64))) (size!22300 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45666)

(declare-datatypes ((List!15657 0))(
  ( (Nil!15654) (Cons!15653 (h!16782 (_ BitVec 64)) (t!22002 List!15657)) )
))
(declare-fun arrayNoDuplicates!0 (array!45666 (_ BitVec 32) List!15657) Bool)

(assert (=> b!822079 (= res!560839 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15654))))

(declare-fun b!822080 () Bool)

(declare-fun e!457050 () Bool)

(assert (=> b!822080 (= e!457051 (not e!457050))))

(declare-fun res!560838 () Bool)

(assert (=> b!822080 (=> res!560838 e!457050)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822080 (= res!560838 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24677 0))(
  ( (V!24678 (val!7426 Int)) )
))
(declare-datatypes ((tuple2!9798 0))(
  ( (tuple2!9799 (_1!4909 (_ BitVec 64)) (_2!4909 V!24677)) )
))
(declare-datatypes ((List!15658 0))(
  ( (Nil!15655) (Cons!15654 (h!16783 tuple2!9798) (t!22003 List!15658)) )
))
(declare-datatypes ((ListLongMap!8635 0))(
  ( (ListLongMap!8636 (toList!4333 List!15658)) )
))
(declare-fun lt!369804 () ListLongMap!8635)

(declare-fun lt!369809 () ListLongMap!8635)

(assert (=> b!822080 (= lt!369804 lt!369809)))

(declare-fun zeroValueBefore!34 () V!24677)

(declare-fun zeroValueAfter!34 () V!24677)

(declare-fun minValue!754 () V!24677)

(declare-datatypes ((ValueCell!6963 0))(
  ( (ValueCellFull!6963 (v!9853 V!24677)) (EmptyCell!6963) )
))
(declare-datatypes ((array!45668 0))(
  ( (array!45669 (arr!21880 (Array (_ BitVec 32) ValueCell!6963)) (size!22301 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45668)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-datatypes ((Unit!28108 0))(
  ( (Unit!28109) )
))
(declare-fun lt!369812 () Unit!28108)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!475 (array!45666 array!45668 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24677 V!24677 V!24677 V!24677 (_ BitVec 32) Int) Unit!28108)

(assert (=> b!822080 (= lt!369812 (lemmaNoChangeToArrayThenSameMapNoExtras!475 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2359 (array!45666 array!45668 (_ BitVec 32) (_ BitVec 32) V!24677 V!24677 (_ BitVec 32) Int) ListLongMap!8635)

(assert (=> b!822080 (= lt!369809 (getCurrentListMapNoExtraKeys!2359 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822080 (= lt!369804 (getCurrentListMapNoExtraKeys!2359 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapNonEmpty!23746 () Bool)

(declare-fun mapRes!23746 () Bool)

(declare-fun tp!45885 () Bool)

(declare-fun e!457055 () Bool)

(assert (=> mapNonEmpty!23746 (= mapRes!23746 (and tp!45885 e!457055))))

(declare-fun mapRest!23746 () (Array (_ BitVec 32) ValueCell!6963))

(declare-fun mapKey!23746 () (_ BitVec 32))

(declare-fun mapValue!23746 () ValueCell!6963)

(assert (=> mapNonEmpty!23746 (= (arr!21880 _values!788) (store mapRest!23746 mapKey!23746 mapValue!23746))))

(declare-fun res!560840 () Bool)

(assert (=> start!70814 (=> (not res!560840) (not e!457051))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70814 (= res!560840 (validMask!0 mask!1312))))

(assert (=> start!70814 e!457051))

(declare-fun tp_is_empty!14757 () Bool)

(assert (=> start!70814 tp_is_empty!14757))

(declare-fun array_inv!17447 (array!45666) Bool)

(assert (=> start!70814 (array_inv!17447 _keys!976)))

(assert (=> start!70814 true))

(declare-fun e!457052 () Bool)

(declare-fun array_inv!17448 (array!45668) Bool)

(assert (=> start!70814 (and (array_inv!17448 _values!788) e!457052)))

(assert (=> start!70814 tp!45886))

(declare-fun b!822081 () Bool)

(declare-fun e!457053 () Bool)

(assert (=> b!822081 (= e!457052 (and e!457053 mapRes!23746))))

(declare-fun condMapEmpty!23746 () Bool)

(declare-fun mapDefault!23746 () ValueCell!6963)

(assert (=> b!822081 (= condMapEmpty!23746 (= (arr!21880 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6963)) mapDefault!23746)))))

(declare-fun b!822082 () Bool)

(assert (=> b!822082 (= e!457053 tp_is_empty!14757)))

(declare-fun b!822083 () Bool)

(declare-fun res!560837 () Bool)

(assert (=> b!822083 (=> (not res!560837) (not e!457051))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45666 (_ BitVec 32)) Bool)

(assert (=> b!822083 (= res!560837 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun mapIsEmpty!23746 () Bool)

(assert (=> mapIsEmpty!23746 mapRes!23746))

(declare-fun b!822084 () Bool)

(declare-fun res!560836 () Bool)

(assert (=> b!822084 (=> (not res!560836) (not e!457051))))

(assert (=> b!822084 (= res!560836 (and (= (size!22301 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22300 _keys!976) (size!22301 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822085 () Bool)

(assert (=> b!822085 (= e!457050 true)))

(declare-fun lt!369803 () ListLongMap!8635)

(declare-fun lt!369810 () ListLongMap!8635)

(declare-fun lt!369811 () tuple2!9798)

(declare-fun +!1837 (ListLongMap!8635 tuple2!9798) ListLongMap!8635)

(assert (=> b!822085 (= lt!369803 (+!1837 lt!369810 lt!369811))))

(declare-fun lt!369807 () Unit!28108)

(declare-fun addCommutativeForDiffKeys!432 (ListLongMap!8635 (_ BitVec 64) V!24677 (_ BitVec 64) V!24677) Unit!28108)

(assert (=> b!822085 (= lt!369807 (addCommutativeForDiffKeys!432 lt!369804 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!369808 () ListLongMap!8635)

(assert (=> b!822085 (= lt!369808 lt!369803)))

(declare-fun lt!369806 () tuple2!9798)

(assert (=> b!822085 (= lt!369803 (+!1837 (+!1837 lt!369804 lt!369811) lt!369806))))

(assert (=> b!822085 (= lt!369811 (tuple2!9799 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!369805 () ListLongMap!8635)

(assert (=> b!822085 (= lt!369805 lt!369810)))

(assert (=> b!822085 (= lt!369810 (+!1837 lt!369804 lt!369806))))

(assert (=> b!822085 (= lt!369806 (tuple2!9799 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2467 (array!45666 array!45668 (_ BitVec 32) (_ BitVec 32) V!24677 V!24677 (_ BitVec 32) Int) ListLongMap!8635)

(assert (=> b!822085 (= lt!369808 (getCurrentListMap!2467 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822085 (= lt!369805 (getCurrentListMap!2467 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822086 () Bool)

(assert (=> b!822086 (= e!457055 tp_is_empty!14757)))

(assert (= (and start!70814 res!560840) b!822084))

(assert (= (and b!822084 res!560836) b!822083))

(assert (= (and b!822083 res!560837) b!822079))

(assert (= (and b!822079 res!560839) b!822080))

(assert (= (and b!822080 (not res!560838)) b!822085))

(assert (= (and b!822081 condMapEmpty!23746) mapIsEmpty!23746))

(assert (= (and b!822081 (not condMapEmpty!23746)) mapNonEmpty!23746))

(get-info :version)

(assert (= (and mapNonEmpty!23746 ((_ is ValueCellFull!6963) mapValue!23746)) b!822086))

(assert (= (and b!822081 ((_ is ValueCellFull!6963) mapDefault!23746)) b!822082))

(assert (= start!70814 b!822081))

(declare-fun m!763959 () Bool)

(assert (=> b!822079 m!763959))

(declare-fun m!763961 () Bool)

(assert (=> mapNonEmpty!23746 m!763961))

(declare-fun m!763963 () Bool)

(assert (=> b!822080 m!763963))

(declare-fun m!763965 () Bool)

(assert (=> b!822080 m!763965))

(declare-fun m!763967 () Bool)

(assert (=> b!822080 m!763967))

(declare-fun m!763969 () Bool)

(assert (=> b!822083 m!763969))

(declare-fun m!763971 () Bool)

(assert (=> b!822085 m!763971))

(declare-fun m!763973 () Bool)

(assert (=> b!822085 m!763973))

(declare-fun m!763975 () Bool)

(assert (=> b!822085 m!763975))

(declare-fun m!763977 () Bool)

(assert (=> b!822085 m!763977))

(declare-fun m!763979 () Bool)

(assert (=> b!822085 m!763979))

(assert (=> b!822085 m!763979))

(declare-fun m!763981 () Bool)

(assert (=> b!822085 m!763981))

(declare-fun m!763983 () Bool)

(assert (=> b!822085 m!763983))

(declare-fun m!763985 () Bool)

(assert (=> start!70814 m!763985))

(declare-fun m!763987 () Bool)

(assert (=> start!70814 m!763987))

(declare-fun m!763989 () Bool)

(assert (=> start!70814 m!763989))

(check-sat (not b!822083) (not b_next!13047) tp_is_empty!14757 (not b!822085) (not mapNonEmpty!23746) (not start!70814) (not b!822080) b_and!21937 (not b!822079))
(check-sat b_and!21937 (not b_next!13047))
