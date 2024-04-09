; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42496 () Bool)

(assert start!42496)

(declare-fun b_free!11943 () Bool)

(declare-fun b_next!11943 () Bool)

(assert (=> start!42496 (= b_free!11943 (not b_next!11943))))

(declare-fun tp!41866 () Bool)

(declare-fun b_and!20429 () Bool)

(assert (=> start!42496 (= tp!41866 b_and!20429)))

(declare-fun b!473874 () Bool)

(declare-fun e!278094 () Bool)

(declare-fun tp_is_empty!13371 () Bool)

(assert (=> b!473874 (= e!278094 tp_is_empty!13371)))

(declare-fun b!473875 () Bool)

(declare-fun res!283115 () Bool)

(declare-fun e!278095 () Bool)

(assert (=> b!473875 (=> (not res!283115) (not e!278095))))

(declare-datatypes ((array!30459 0))(
  ( (array!30460 (arr!14645 (Array (_ BitVec 32) (_ BitVec 64))) (size!14997 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30459)

(declare-datatypes ((List!8974 0))(
  ( (Nil!8971) (Cons!8970 (h!9826 (_ BitVec 64)) (t!14954 List!8974)) )
))
(declare-fun arrayNoDuplicates!0 (array!30459 (_ BitVec 32) List!8974) Bool)

(assert (=> b!473875 (= res!283115 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8971))))

(declare-fun b!473876 () Bool)

(declare-fun e!278097 () Bool)

(assert (=> b!473876 (= e!278097 true)))

(declare-datatypes ((V!18933 0))(
  ( (V!18934 (val!6730 Int)) )
))
(declare-datatypes ((tuple2!8866 0))(
  ( (tuple2!8867 (_1!4443 (_ BitVec 64)) (_2!4443 V!18933)) )
))
(declare-datatypes ((List!8975 0))(
  ( (Nil!8972) (Cons!8971 (h!9827 tuple2!8866) (t!14955 List!8975)) )
))
(declare-datatypes ((ListLongMap!7793 0))(
  ( (ListLongMap!7794 (toList!3912 List!8975)) )
))
(declare-fun lt!215709 () ListLongMap!7793)

(declare-fun lt!215706 () tuple2!8866)

(declare-fun minValueBefore!38 () V!18933)

(declare-fun +!1718 (ListLongMap!7793 tuple2!8866) ListLongMap!7793)

(assert (=> b!473876 (= (+!1718 lt!215709 lt!215706) (+!1718 (+!1718 lt!215709 (tuple2!8867 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215706))))

(declare-fun minValueAfter!38 () V!18933)

(assert (=> b!473876 (= lt!215706 (tuple2!8867 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13947 0))(
  ( (Unit!13948) )
))
(declare-fun lt!215708 () Unit!13947)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!155 (ListLongMap!7793 (_ BitVec 64) V!18933 V!18933) Unit!13947)

(assert (=> b!473876 (= lt!215708 (addSameAsAddTwiceSameKeyDiffValues!155 lt!215709 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!215710 () ListLongMap!7793)

(declare-fun zeroValue!794 () V!18933)

(assert (=> b!473876 (= lt!215709 (+!1718 lt!215710 (tuple2!8867 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!215712 () ListLongMap!7793)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((ValueCell!6342 0))(
  ( (ValueCellFull!6342 (v!9018 V!18933)) (EmptyCell!6342) )
))
(declare-datatypes ((array!30461 0))(
  ( (array!30462 (arr!14646 (Array (_ BitVec 32) ValueCell!6342)) (size!14998 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30461)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2255 (array!30459 array!30461 (_ BitVec 32) (_ BitVec 32) V!18933 V!18933 (_ BitVec 32) Int) ListLongMap!7793)

(assert (=> b!473876 (= lt!215712 (getCurrentListMap!2255 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!215707 () ListLongMap!7793)

(assert (=> b!473876 (= lt!215707 (getCurrentListMap!2255 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473877 () Bool)

(declare-fun res!283114 () Bool)

(assert (=> b!473877 (=> (not res!283114) (not e!278095))))

(assert (=> b!473877 (= res!283114 (and (= (size!14998 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14997 _keys!1025) (size!14998 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!283113 () Bool)

(assert (=> start!42496 (=> (not res!283113) (not e!278095))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42496 (= res!283113 (validMask!0 mask!1365))))

(assert (=> start!42496 e!278095))

(assert (=> start!42496 tp_is_empty!13371))

(assert (=> start!42496 tp!41866))

(assert (=> start!42496 true))

(declare-fun array_inv!10554 (array!30459) Bool)

(assert (=> start!42496 (array_inv!10554 _keys!1025)))

(declare-fun e!278098 () Bool)

(declare-fun array_inv!10555 (array!30461) Bool)

(assert (=> start!42496 (and (array_inv!10555 _values!833) e!278098)))

(declare-fun b!473878 () Bool)

(declare-fun e!278099 () Bool)

(assert (=> b!473878 (= e!278099 tp_is_empty!13371)))

(declare-fun mapIsEmpty!21772 () Bool)

(declare-fun mapRes!21772 () Bool)

(assert (=> mapIsEmpty!21772 mapRes!21772))

(declare-fun b!473879 () Bool)

(assert (=> b!473879 (= e!278095 (not e!278097))))

(declare-fun res!283112 () Bool)

(assert (=> b!473879 (=> res!283112 e!278097)))

(assert (=> b!473879 (= res!283112 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!215713 () ListLongMap!7793)

(assert (=> b!473879 (= lt!215710 lt!215713)))

(declare-fun lt!215711 () Unit!13947)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!262 (array!30459 array!30461 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18933 V!18933 V!18933 V!18933 (_ BitVec 32) Int) Unit!13947)

(assert (=> b!473879 (= lt!215711 (lemmaNoChangeToArrayThenSameMapNoExtras!262 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2067 (array!30459 array!30461 (_ BitVec 32) (_ BitVec 32) V!18933 V!18933 (_ BitVec 32) Int) ListLongMap!7793)

(assert (=> b!473879 (= lt!215713 (getCurrentListMapNoExtraKeys!2067 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473879 (= lt!215710 (getCurrentListMapNoExtraKeys!2067 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!21772 () Bool)

(declare-fun tp!41865 () Bool)

(assert (=> mapNonEmpty!21772 (= mapRes!21772 (and tp!41865 e!278094))))

(declare-fun mapRest!21772 () (Array (_ BitVec 32) ValueCell!6342))

(declare-fun mapKey!21772 () (_ BitVec 32))

(declare-fun mapValue!21772 () ValueCell!6342)

(assert (=> mapNonEmpty!21772 (= (arr!14646 _values!833) (store mapRest!21772 mapKey!21772 mapValue!21772))))

(declare-fun b!473880 () Bool)

(assert (=> b!473880 (= e!278098 (and e!278099 mapRes!21772))))

(declare-fun condMapEmpty!21772 () Bool)

(declare-fun mapDefault!21772 () ValueCell!6342)

(assert (=> b!473880 (= condMapEmpty!21772 (= (arr!14646 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6342)) mapDefault!21772)))))

(declare-fun b!473881 () Bool)

(declare-fun res!283111 () Bool)

(assert (=> b!473881 (=> (not res!283111) (not e!278095))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30459 (_ BitVec 32)) Bool)

(assert (=> b!473881 (= res!283111 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!42496 res!283113) b!473877))

(assert (= (and b!473877 res!283114) b!473881))

(assert (= (and b!473881 res!283111) b!473875))

(assert (= (and b!473875 res!283115) b!473879))

(assert (= (and b!473879 (not res!283112)) b!473876))

(assert (= (and b!473880 condMapEmpty!21772) mapIsEmpty!21772))

(assert (= (and b!473880 (not condMapEmpty!21772)) mapNonEmpty!21772))

(get-info :version)

(assert (= (and mapNonEmpty!21772 ((_ is ValueCellFull!6342) mapValue!21772)) b!473874))

(assert (= (and b!473880 ((_ is ValueCellFull!6342) mapDefault!21772)) b!473878))

(assert (= start!42496 b!473880))

(declare-fun m!456141 () Bool)

(assert (=> b!473876 m!456141))

(declare-fun m!456143 () Bool)

(assert (=> b!473876 m!456143))

(declare-fun m!456145 () Bool)

(assert (=> b!473876 m!456145))

(declare-fun m!456147 () Bool)

(assert (=> b!473876 m!456147))

(declare-fun m!456149 () Bool)

(assert (=> b!473876 m!456149))

(declare-fun m!456151 () Bool)

(assert (=> b!473876 m!456151))

(assert (=> b!473876 m!456141))

(declare-fun m!456153 () Bool)

(assert (=> b!473876 m!456153))

(declare-fun m!456155 () Bool)

(assert (=> b!473881 m!456155))

(declare-fun m!456157 () Bool)

(assert (=> b!473879 m!456157))

(declare-fun m!456159 () Bool)

(assert (=> b!473879 m!456159))

(declare-fun m!456161 () Bool)

(assert (=> b!473879 m!456161))

(declare-fun m!456163 () Bool)

(assert (=> start!42496 m!456163))

(declare-fun m!456165 () Bool)

(assert (=> start!42496 m!456165))

(declare-fun m!456167 () Bool)

(assert (=> start!42496 m!456167))

(declare-fun m!456169 () Bool)

(assert (=> b!473875 m!456169))

(declare-fun m!456171 () Bool)

(assert (=> mapNonEmpty!21772 m!456171))

(check-sat (not b_next!11943) (not b!473879) (not b!473875) (not b!473876) (not mapNonEmpty!21772) (not start!42496) tp_is_empty!13371 b_and!20429 (not b!473881))
(check-sat b_and!20429 (not b_next!11943))
