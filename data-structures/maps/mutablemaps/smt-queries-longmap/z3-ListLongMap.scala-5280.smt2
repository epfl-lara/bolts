; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!70876 () Bool)

(assert start!70876)

(declare-fun b_free!13089 () Bool)

(declare-fun b_next!13089 () Bool)

(assert (=> start!70876 (= b_free!13089 (not b_next!13089))))

(declare-fun tp!46014 () Bool)

(declare-fun b_and!21991 () Bool)

(assert (=> start!70876 (= tp!46014 b_and!21991)))

(declare-fun b!822764 () Bool)

(declare-fun e!457544 () Bool)

(declare-fun tp_is_empty!14799 () Bool)

(assert (=> b!822764 (= e!457544 tp_is_empty!14799)))

(declare-fun b!822765 () Bool)

(declare-fun e!457545 () Bool)

(declare-fun e!457546 () Bool)

(assert (=> b!822765 (= e!457545 (not e!457546))))

(declare-fun res!561233 () Bool)

(assert (=> b!822765 (=> res!561233 e!457546)))

(declare-fun extraKeysBefore!61 () (_ BitVec 32))

(assert (=> b!822765 (= res!561233 (or (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (not (= (bvand extraKeysBefore!61 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-datatypes ((V!24733 0))(
  ( (V!24734 (val!7447 Int)) )
))
(declare-datatypes ((tuple2!9832 0))(
  ( (tuple2!9833 (_1!4926 (_ BitVec 64)) (_2!4926 V!24733)) )
))
(declare-datatypes ((List!15692 0))(
  ( (Nil!15689) (Cons!15688 (h!16817 tuple2!9832) (t!22039 List!15692)) )
))
(declare-datatypes ((ListLongMap!8669 0))(
  ( (ListLongMap!8670 (toList!4350 List!15692)) )
))
(declare-fun lt!370588 () ListLongMap!8669)

(declare-fun lt!370597 () ListLongMap!8669)

(assert (=> b!822765 (= lt!370588 lt!370597)))

(declare-fun zeroValueBefore!34 () V!24733)

(declare-datatypes ((array!45752 0))(
  ( (array!45753 (arr!21921 (Array (_ BitVec 32) (_ BitVec 64))) (size!22342 (_ BitVec 32))) )
))
(declare-fun _keys!976 () array!45752)

(declare-fun zeroValueAfter!34 () V!24733)

(declare-fun minValue!754 () V!24733)

(declare-datatypes ((ValueCell!6984 0))(
  ( (ValueCellFull!6984 (v!9875 V!24733)) (EmptyCell!6984) )
))
(declare-datatypes ((array!45754 0))(
  ( (array!45755 (arr!21922 (Array (_ BitVec 32) ValueCell!6984)) (size!22343 (_ BitVec 32))) )
))
(declare-fun _values!788 () array!45754)

(declare-datatypes ((Unit!28144 0))(
  ( (Unit!28145) )
))
(declare-fun lt!370589 () Unit!28144)

(declare-fun mask!1312 () (_ BitVec 32))

(declare-fun extraKeysAfter!53 () (_ BitVec 32))

(declare-fun defaultEntry!796 () Int)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!492 (array!45752 array!45754 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!24733 V!24733 V!24733 V!24733 (_ BitVec 32) Int) Unit!28144)

(assert (=> b!822765 (= lt!370589 (lemmaNoChangeToArrayThenSameMapNoExtras!492 _keys!976 _values!788 mask!1312 extraKeysBefore!61 extraKeysAfter!53 zeroValueBefore!34 zeroValueAfter!34 minValue!754 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun getCurrentListMapNoExtraKeys!2376 (array!45752 array!45754 (_ BitVec 32) (_ BitVec 32) V!24733 V!24733 (_ BitVec 32) Int) ListLongMap!8669)

(assert (=> b!822765 (= lt!370597 (getCurrentListMapNoExtraKeys!2376 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822765 (= lt!370588 (getCurrentListMapNoExtraKeys!2376 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun b!822766 () Bool)

(declare-fun e!457542 () Bool)

(declare-fun mapRes!23812 () Bool)

(assert (=> b!822766 (= e!457542 (and e!457544 mapRes!23812))))

(declare-fun condMapEmpty!23812 () Bool)

(declare-fun mapDefault!23812 () ValueCell!6984)

(assert (=> b!822766 (= condMapEmpty!23812 (= (arr!21922 _values!788) ((as const (Array (_ BitVec 32) ValueCell!6984)) mapDefault!23812)))))

(declare-fun mapNonEmpty!23812 () Bool)

(declare-fun tp!46015 () Bool)

(declare-fun e!457543 () Bool)

(assert (=> mapNonEmpty!23812 (= mapRes!23812 (and tp!46015 e!457543))))

(declare-fun mapRest!23812 () (Array (_ BitVec 32) ValueCell!6984))

(declare-fun mapKey!23812 () (_ BitVec 32))

(declare-fun mapValue!23812 () ValueCell!6984)

(assert (=> mapNonEmpty!23812 (= (arr!21922 _values!788) (store mapRest!23812 mapKey!23812 mapValue!23812))))

(declare-fun b!822767 () Bool)

(declare-fun res!561232 () Bool)

(assert (=> b!822767 (=> (not res!561232) (not e!457545))))

(declare-datatypes ((List!15693 0))(
  ( (Nil!15690) (Cons!15689 (h!16818 (_ BitVec 64)) (t!22040 List!15693)) )
))
(declare-fun arrayNoDuplicates!0 (array!45752 (_ BitVec 32) List!15693) Bool)

(assert (=> b!822767 (= res!561232 (arrayNoDuplicates!0 _keys!976 #b00000000000000000000000000000000 Nil!15690))))

(declare-fun b!822769 () Bool)

(declare-fun res!561234 () Bool)

(assert (=> b!822769 (=> (not res!561234) (not e!457545))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!45752 (_ BitVec 32)) Bool)

(assert (=> b!822769 (= res!561234 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!976 mask!1312))))

(declare-fun b!822770 () Bool)

(declare-fun res!561231 () Bool)

(assert (=> b!822770 (=> (not res!561231) (not e!457545))))

(assert (=> b!822770 (= res!561231 (and (= (size!22343 _values!788) (bvadd #b00000000000000000000000000000001 mask!1312)) (= (size!22342 _keys!976) (size!22343 _values!788)) (bvsge mask!1312 #b00000000000000000000000000000000) (bvsge extraKeysBefore!61 #b00000000000000000000000000000000) (bvsle extraKeysBefore!61 #b00000000000000000000000000000011) (bvsge extraKeysAfter!53 #b00000000000000000000000000000000) (bvsle extraKeysAfter!53 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!61 #b00000000000000000000000000000010) (bvand extraKeysAfter!53 #b00000000000000000000000000000010)) (not (= (bvand extraKeysAfter!53 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))))

(declare-fun b!822768 () Bool)

(assert (=> b!822768 (= e!457543 tp_is_empty!14799)))

(declare-fun res!561230 () Bool)

(assert (=> start!70876 (=> (not res!561230) (not e!457545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!70876 (= res!561230 (validMask!0 mask!1312))))

(assert (=> start!70876 e!457545))

(assert (=> start!70876 tp_is_empty!14799))

(declare-fun array_inv!17477 (array!45752) Bool)

(assert (=> start!70876 (array_inv!17477 _keys!976)))

(assert (=> start!70876 true))

(declare-fun array_inv!17478 (array!45754) Bool)

(assert (=> start!70876 (and (array_inv!17478 _values!788) e!457542)))

(assert (=> start!70876 tp!46014))

(declare-fun b!822771 () Bool)

(assert (=> b!822771 (= e!457546 true)))

(declare-fun lt!370593 () ListLongMap!8669)

(declare-fun lt!370590 () ListLongMap!8669)

(declare-fun lt!370592 () tuple2!9832)

(declare-fun +!1852 (ListLongMap!8669 tuple2!9832) ListLongMap!8669)

(assert (=> b!822771 (= lt!370593 (+!1852 lt!370590 lt!370592))))

(declare-fun lt!370591 () Unit!28144)

(declare-fun addCommutativeForDiffKeys!447 (ListLongMap!8669 (_ BitVec 64) V!24733 (_ BitVec 64) V!24733) Unit!28144)

(assert (=> b!822771 (= lt!370591 (addCommutativeForDiffKeys!447 lt!370588 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun lt!370596 () ListLongMap!8669)

(assert (=> b!822771 (= lt!370596 lt!370593)))

(declare-fun lt!370594 () tuple2!9832)

(assert (=> b!822771 (= lt!370593 (+!1852 (+!1852 lt!370588 lt!370592) lt!370594))))

(assert (=> b!822771 (= lt!370592 (tuple2!9833 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValueAfter!34))))

(declare-fun lt!370595 () ListLongMap!8669)

(assert (=> b!822771 (= lt!370595 lt!370590)))

(assert (=> b!822771 (= lt!370590 (+!1852 lt!370588 lt!370594))))

(assert (=> b!822771 (= lt!370594 (tuple2!9833 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!754))))

(declare-fun getCurrentListMap!2482 (array!45752 array!45754 (_ BitVec 32) (_ BitVec 32) V!24733 V!24733 (_ BitVec 32) Int) ListLongMap!8669)

(assert (=> b!822771 (= lt!370596 (getCurrentListMap!2482 _keys!976 _values!788 mask!1312 extraKeysAfter!53 zeroValueAfter!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(assert (=> b!822771 (= lt!370595 (getCurrentListMap!2482 _keys!976 _values!788 mask!1312 extraKeysBefore!61 zeroValueBefore!34 minValue!754 #b00000000000000000000000000000000 defaultEntry!796))))

(declare-fun mapIsEmpty!23812 () Bool)

(assert (=> mapIsEmpty!23812 mapRes!23812))

(assert (= (and start!70876 res!561230) b!822770))

(assert (= (and b!822770 res!561231) b!822769))

(assert (= (and b!822769 res!561234) b!822767))

(assert (= (and b!822767 res!561232) b!822765))

(assert (= (and b!822765 (not res!561233)) b!822771))

(assert (= (and b!822766 condMapEmpty!23812) mapIsEmpty!23812))

(assert (= (and b!822766 (not condMapEmpty!23812)) mapNonEmpty!23812))

(get-info :version)

(assert (= (and mapNonEmpty!23812 ((_ is ValueCellFull!6984) mapValue!23812)) b!822768))

(assert (= (and b!822766 ((_ is ValueCellFull!6984) mapDefault!23812)) b!822764))

(assert (= start!70876 b!822766))

(declare-fun m!764847 () Bool)

(assert (=> b!822765 m!764847))

(declare-fun m!764849 () Bool)

(assert (=> b!822765 m!764849))

(declare-fun m!764851 () Bool)

(assert (=> b!822765 m!764851))

(declare-fun m!764853 () Bool)

(assert (=> b!822769 m!764853))

(declare-fun m!764855 () Bool)

(assert (=> b!822767 m!764855))

(declare-fun m!764857 () Bool)

(assert (=> b!822771 m!764857))

(declare-fun m!764859 () Bool)

(assert (=> b!822771 m!764859))

(declare-fun m!764861 () Bool)

(assert (=> b!822771 m!764861))

(declare-fun m!764863 () Bool)

(assert (=> b!822771 m!764863))

(declare-fun m!764865 () Bool)

(assert (=> b!822771 m!764865))

(assert (=> b!822771 m!764861))

(declare-fun m!764867 () Bool)

(assert (=> b!822771 m!764867))

(declare-fun m!764869 () Bool)

(assert (=> b!822771 m!764869))

(declare-fun m!764871 () Bool)

(assert (=> mapNonEmpty!23812 m!764871))

(declare-fun m!764873 () Bool)

(assert (=> start!70876 m!764873))

(declare-fun m!764875 () Bool)

(assert (=> start!70876 m!764875))

(declare-fun m!764877 () Bool)

(assert (=> start!70876 m!764877))

(check-sat tp_is_empty!14799 (not mapNonEmpty!23812) (not b!822769) (not b_next!13089) (not b!822765) (not start!70876) (not b!822771) (not b!822767) b_and!21991)
(check-sat b_and!21991 (not b_next!13089))
