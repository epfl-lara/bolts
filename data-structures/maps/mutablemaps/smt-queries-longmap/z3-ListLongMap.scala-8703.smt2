; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105690 () Bool)

(assert start!105690)

(declare-fun b_free!27255 () Bool)

(declare-fun b_next!27255 () Bool)

(assert (=> start!105690 (= b_free!27255 (not b_next!27255))))

(declare-fun tp!95288 () Bool)

(declare-fun b_and!45139 () Bool)

(assert (=> start!105690 (= tp!95288 b_and!45139)))

(declare-fun mapIsEmpty!50029 () Bool)

(declare-fun mapRes!50029 () Bool)

(assert (=> mapIsEmpty!50029 mapRes!50029))

(declare-fun mapNonEmpty!50029 () Bool)

(declare-fun tp!95289 () Bool)

(declare-fun e!715784 () Bool)

(assert (=> mapNonEmpty!50029 (= mapRes!50029 (and tp!95289 e!715784))))

(declare-fun mapKey!50029 () (_ BitVec 32))

(declare-datatypes ((V!48241 0))(
  ( (V!48242 (val!16141 Int)) )
))
(declare-datatypes ((ValueCell!15315 0))(
  ( (ValueCellFull!15315 (v!18843 V!48241)) (EmptyCell!15315) )
))
(declare-fun mapRest!50029 () (Array (_ BitVec 32) ValueCell!15315))

(declare-fun mapValue!50029 () ValueCell!15315)

(declare-datatypes ((array!81929 0))(
  ( (array!81930 (arr!39516 (Array (_ BitVec 32) ValueCell!15315)) (size!40053 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81929)

(assert (=> mapNonEmpty!50029 (= (arr!39516 _values!914) (store mapRest!50029 mapKey!50029 mapValue!50029))))

(declare-fun b!1258439 () Bool)

(declare-fun res!838849 () Bool)

(declare-fun e!715781 () Bool)

(assert (=> b!1258439 (=> (not res!838849) (not e!715781))))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-datatypes ((array!81931 0))(
  ( (array!81932 (arr!39517 (Array (_ BitVec 32) (_ BitVec 64))) (size!40054 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81931)

(assert (=> b!1258439 (= res!838849 (and (= (size!40053 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40054 _keys!1118) (size!40053 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258441 () Bool)

(declare-fun e!715786 () Bool)

(assert (=> b!1258441 (= e!715781 (not e!715786))))

(declare-fun res!838852 () Bool)

(assert (=> b!1258441 (=> res!838852 e!715786)))

(assert (=> b!1258441 (= res!838852 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!21012 0))(
  ( (tuple2!21013 (_1!10516 (_ BitVec 64)) (_2!10516 V!48241)) )
))
(declare-datatypes ((List!28244 0))(
  ( (Nil!28241) (Cons!28240 (h!29449 tuple2!21012) (t!41744 List!28244)) )
))
(declare-datatypes ((ListLongMap!18897 0))(
  ( (ListLongMap!18898 (toList!9464 List!28244)) )
))
(declare-fun lt!569187 () ListLongMap!18897)

(declare-fun lt!569188 () ListLongMap!18897)

(assert (=> b!1258441 (= lt!569187 lt!569188)))

(declare-fun defaultEntry!922 () Int)

(declare-datatypes ((Unit!41898 0))(
  ( (Unit!41899) )
))
(declare-fun lt!569190 () Unit!41898)

(declare-fun minValueAfter!43 () V!48241)

(declare-fun zeroValue!871 () V!48241)

(declare-fun minValueBefore!43 () V!48241)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1132 (array!81931 array!81929 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48241 V!48241 V!48241 V!48241 (_ BitVec 32) Int) Unit!41898)

(assert (=> b!1258441 (= lt!569190 (lemmaNoChangeToArrayThenSameMapNoExtras!1132 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5814 (array!81931 array!81929 (_ BitVec 32) (_ BitVec 32) V!48241 V!48241 (_ BitVec 32) Int) ListLongMap!18897)

(assert (=> b!1258441 (= lt!569188 (getCurrentListMapNoExtraKeys!5814 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258441 (= lt!569187 (getCurrentListMapNoExtraKeys!5814 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258442 () Bool)

(assert (=> b!1258442 (= e!715786 true)))

(declare-fun lt!569189 () ListLongMap!18897)

(declare-fun getCurrentListMap!4604 (array!81931 array!81929 (_ BitVec 32) (_ BitVec 32) V!48241 V!48241 (_ BitVec 32) Int) ListLongMap!18897)

(assert (=> b!1258442 (= lt!569189 (getCurrentListMap!4604 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258443 () Bool)

(declare-fun res!838850 () Bool)

(assert (=> b!1258443 (=> (not res!838850) (not e!715781))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81931 (_ BitVec 32)) Bool)

(assert (=> b!1258443 (= res!838850 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun b!1258444 () Bool)

(declare-fun e!715785 () Bool)

(declare-fun e!715782 () Bool)

(assert (=> b!1258444 (= e!715785 (and e!715782 mapRes!50029))))

(declare-fun condMapEmpty!50029 () Bool)

(declare-fun mapDefault!50029 () ValueCell!15315)

(assert (=> b!1258444 (= condMapEmpty!50029 (= (arr!39516 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15315)) mapDefault!50029)))))

(declare-fun res!838853 () Bool)

(assert (=> start!105690 (=> (not res!838853) (not e!715781))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105690 (= res!838853 (validMask!0 mask!1466))))

(assert (=> start!105690 e!715781))

(assert (=> start!105690 true))

(assert (=> start!105690 tp!95288))

(declare-fun tp_is_empty!32157 () Bool)

(assert (=> start!105690 tp_is_empty!32157))

(declare-fun array_inv!30045 (array!81931) Bool)

(assert (=> start!105690 (array_inv!30045 _keys!1118)))

(declare-fun array_inv!30046 (array!81929) Bool)

(assert (=> start!105690 (and (array_inv!30046 _values!914) e!715785)))

(declare-fun b!1258440 () Bool)

(assert (=> b!1258440 (= e!715784 tp_is_empty!32157)))

(declare-fun b!1258445 () Bool)

(assert (=> b!1258445 (= e!715782 tp_is_empty!32157)))

(declare-fun b!1258446 () Bool)

(declare-fun res!838851 () Bool)

(assert (=> b!1258446 (=> (not res!838851) (not e!715781))))

(declare-datatypes ((List!28245 0))(
  ( (Nil!28242) (Cons!28241 (h!29450 (_ BitVec 64)) (t!41745 List!28245)) )
))
(declare-fun arrayNoDuplicates!0 (array!81931 (_ BitVec 32) List!28245) Bool)

(assert (=> b!1258446 (= res!838851 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28242))))

(assert (= (and start!105690 res!838853) b!1258439))

(assert (= (and b!1258439 res!838849) b!1258443))

(assert (= (and b!1258443 res!838850) b!1258446))

(assert (= (and b!1258446 res!838851) b!1258441))

(assert (= (and b!1258441 (not res!838852)) b!1258442))

(assert (= (and b!1258444 condMapEmpty!50029) mapIsEmpty!50029))

(assert (= (and b!1258444 (not condMapEmpty!50029)) mapNonEmpty!50029))

(get-info :version)

(assert (= (and mapNonEmpty!50029 ((_ is ValueCellFull!15315) mapValue!50029)) b!1258440))

(assert (= (and b!1258444 ((_ is ValueCellFull!15315) mapDefault!50029)) b!1258445))

(assert (= start!105690 b!1258444))

(declare-fun m!1158895 () Bool)

(assert (=> start!105690 m!1158895))

(declare-fun m!1158897 () Bool)

(assert (=> start!105690 m!1158897))

(declare-fun m!1158899 () Bool)

(assert (=> start!105690 m!1158899))

(declare-fun m!1158901 () Bool)

(assert (=> b!1258443 m!1158901))

(declare-fun m!1158903 () Bool)

(assert (=> b!1258446 m!1158903))

(declare-fun m!1158905 () Bool)

(assert (=> b!1258441 m!1158905))

(declare-fun m!1158907 () Bool)

(assert (=> b!1258441 m!1158907))

(declare-fun m!1158909 () Bool)

(assert (=> b!1258441 m!1158909))

(declare-fun m!1158911 () Bool)

(assert (=> b!1258442 m!1158911))

(declare-fun m!1158913 () Bool)

(assert (=> mapNonEmpty!50029 m!1158913))

(check-sat (not b!1258443) (not b!1258441) (not b!1258446) (not b!1258442) (not mapNonEmpty!50029) b_and!45139 tp_is_empty!32157 (not b_next!27255) (not start!105690))
(check-sat b_and!45139 (not b_next!27255))
