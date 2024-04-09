; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!105672 () Bool)

(assert start!105672)

(declare-fun b_free!27237 () Bool)

(declare-fun b_next!27237 () Bool)

(assert (=> start!105672 (= b_free!27237 (not b_next!27237))))

(declare-fun tp!95235 () Bool)

(declare-fun b_and!45121 () Bool)

(assert (=> start!105672 (= tp!95235 b_and!45121)))

(declare-fun mapIsEmpty!50002 () Bool)

(declare-fun mapRes!50002 () Bool)

(assert (=> mapIsEmpty!50002 mapRes!50002))

(declare-fun mapNonEmpty!50002 () Bool)

(declare-fun tp!95234 () Bool)

(declare-fun e!715620 () Bool)

(assert (=> mapNonEmpty!50002 (= mapRes!50002 (and tp!95234 e!715620))))

(declare-fun mapKey!50002 () (_ BitVec 32))

(declare-datatypes ((V!48217 0))(
  ( (V!48218 (val!16132 Int)) )
))
(declare-datatypes ((ValueCell!15306 0))(
  ( (ValueCellFull!15306 (v!18834 V!48217)) (EmptyCell!15306) )
))
(declare-fun mapRest!50002 () (Array (_ BitVec 32) ValueCell!15306))

(declare-datatypes ((array!81899 0))(
  ( (array!81900 (arr!39501 (Array (_ BitVec 32) ValueCell!15306)) (size!40038 (_ BitVec 32))) )
))
(declare-fun _values!914 () array!81899)

(declare-fun mapValue!50002 () ValueCell!15306)

(assert (=> mapNonEmpty!50002 (= (arr!39501 _values!914) (store mapRest!50002 mapKey!50002 mapValue!50002))))

(declare-fun b!1258223 () Bool)

(declare-fun e!715621 () Bool)

(declare-fun tp_is_empty!32139 () Bool)

(assert (=> b!1258223 (= e!715621 tp_is_empty!32139)))

(declare-fun b!1258224 () Bool)

(assert (=> b!1258224 (= e!715620 tp_is_empty!32139)))

(declare-fun b!1258225 () Bool)

(declare-fun e!715619 () Bool)

(declare-fun e!715624 () Bool)

(assert (=> b!1258225 (= e!715619 (not e!715624))))

(declare-fun res!838715 () Bool)

(assert (=> b!1258225 (=> res!838715 e!715624)))

(declare-fun extraKeysBefore!71 () (_ BitVec 32))

(assert (=> b!1258225 (= res!838715 (or (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!21002 0))(
  ( (tuple2!21003 (_1!10511 (_ BitVec 64)) (_2!10511 V!48217)) )
))
(declare-datatypes ((List!28234 0))(
  ( (Nil!28231) (Cons!28230 (h!29439 tuple2!21002) (t!41734 List!28234)) )
))
(declare-datatypes ((ListLongMap!18887 0))(
  ( (ListLongMap!18888 (toList!9459 List!28234)) )
))
(declare-fun lt!569081 () ListLongMap!18887)

(declare-fun lt!569079 () ListLongMap!18887)

(assert (=> b!1258225 (= lt!569081 lt!569079)))

(declare-fun mask!1466 () (_ BitVec 32))

(declare-fun defaultEntry!922 () Int)

(declare-fun minValueAfter!43 () V!48217)

(declare-fun extraKeysAfter!63 () (_ BitVec 32))

(declare-fun zeroValue!871 () V!48217)

(declare-datatypes ((array!81901 0))(
  ( (array!81902 (arr!39502 (Array (_ BitVec 32) (_ BitVec 64))) (size!40039 (_ BitVec 32))) )
))
(declare-fun _keys!1118 () array!81901)

(declare-datatypes ((Unit!41890 0))(
  ( (Unit!41891) )
))
(declare-fun lt!569080 () Unit!41890)

(declare-fun minValueBefore!43 () V!48217)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!1128 (array!81901 array!81899 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!48217 V!48217 V!48217 V!48217 (_ BitVec 32) Int) Unit!41890)

(assert (=> b!1258225 (= lt!569080 (lemmaNoChangeToArrayThenSameMapNoExtras!1128 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 extraKeysAfter!63 zeroValue!871 zeroValue!871 minValueBefore!43 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun getCurrentListMapNoExtraKeys!5810 (array!81901 array!81899 (_ BitVec 32) (_ BitVec 32) V!48217 V!48217 (_ BitVec 32) Int) ListLongMap!18887)

(assert (=> b!1258225 (= lt!569079 (getCurrentListMapNoExtraKeys!5810 _keys!1118 _values!914 mask!1466 extraKeysAfter!63 zeroValue!871 minValueAfter!43 #b00000000000000000000000000000000 defaultEntry!922))))

(assert (=> b!1258225 (= lt!569081 (getCurrentListMapNoExtraKeys!5810 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258226 () Bool)

(declare-fun res!838714 () Bool)

(assert (=> b!1258226 (=> (not res!838714) (not e!715619))))

(assert (=> b!1258226 (= res!838714 (and (= (size!40038 _values!914) (bvadd #b00000000000000000000000000000001 mask!1466)) (= (size!40039 _keys!1118) (size!40038 _values!914)) (bvsge mask!1466 #b00000000000000000000000000000000) (bvsge extraKeysBefore!71 #b00000000000000000000000000000000) (bvsle extraKeysBefore!71 #b00000000000000000000000000000011) (bvsge extraKeysAfter!63 #b00000000000000000000000000000000) (bvsle extraKeysAfter!63 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!71 #b00000000000000000000000000000001) (bvand extraKeysAfter!63 #b00000000000000000000000000000001)) (= (bvand extraKeysAfter!63 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1258227 () Bool)

(declare-fun res!838717 () Bool)

(assert (=> b!1258227 (=> (not res!838717) (not e!715619))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!81901 (_ BitVec 32)) Bool)

(assert (=> b!1258227 (= res!838717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1118 mask!1466))))

(declare-fun res!838716 () Bool)

(assert (=> start!105672 (=> (not res!838716) (not e!715619))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!105672 (= res!838716 (validMask!0 mask!1466))))

(assert (=> start!105672 e!715619))

(assert (=> start!105672 true))

(assert (=> start!105672 tp!95235))

(assert (=> start!105672 tp_is_empty!32139))

(declare-fun array_inv!30035 (array!81901) Bool)

(assert (=> start!105672 (array_inv!30035 _keys!1118)))

(declare-fun e!715622 () Bool)

(declare-fun array_inv!30036 (array!81899) Bool)

(assert (=> start!105672 (and (array_inv!30036 _values!914) e!715622)))

(declare-fun b!1258228 () Bool)

(declare-fun res!838718 () Bool)

(assert (=> b!1258228 (=> (not res!838718) (not e!715619))))

(declare-datatypes ((List!28235 0))(
  ( (Nil!28232) (Cons!28231 (h!29440 (_ BitVec 64)) (t!41735 List!28235)) )
))
(declare-fun arrayNoDuplicates!0 (array!81901 (_ BitVec 32) List!28235) Bool)

(assert (=> b!1258228 (= res!838718 (arrayNoDuplicates!0 _keys!1118 #b00000000000000000000000000000000 Nil!28232))))

(declare-fun b!1258229 () Bool)

(assert (=> b!1258229 (= e!715624 true)))

(declare-fun lt!569082 () ListLongMap!18887)

(declare-fun getCurrentListMap!4599 (array!81901 array!81899 (_ BitVec 32) (_ BitVec 32) V!48217 V!48217 (_ BitVec 32) Int) ListLongMap!18887)

(assert (=> b!1258229 (= lt!569082 (getCurrentListMap!4599 _keys!1118 _values!914 mask!1466 extraKeysBefore!71 zeroValue!871 minValueBefore!43 #b00000000000000000000000000000000 defaultEntry!922))))

(declare-fun b!1258230 () Bool)

(assert (=> b!1258230 (= e!715622 (and e!715621 mapRes!50002))))

(declare-fun condMapEmpty!50002 () Bool)

(declare-fun mapDefault!50002 () ValueCell!15306)

(assert (=> b!1258230 (= condMapEmpty!50002 (= (arr!39501 _values!914) ((as const (Array (_ BitVec 32) ValueCell!15306)) mapDefault!50002)))))

(assert (= (and start!105672 res!838716) b!1258226))

(assert (= (and b!1258226 res!838714) b!1258227))

(assert (= (and b!1258227 res!838717) b!1258228))

(assert (= (and b!1258228 res!838718) b!1258225))

(assert (= (and b!1258225 (not res!838715)) b!1258229))

(assert (= (and b!1258230 condMapEmpty!50002) mapIsEmpty!50002))

(assert (= (and b!1258230 (not condMapEmpty!50002)) mapNonEmpty!50002))

(get-info :version)

(assert (= (and mapNonEmpty!50002 ((_ is ValueCellFull!15306) mapValue!50002)) b!1258224))

(assert (= (and b!1258230 ((_ is ValueCellFull!15306) mapDefault!50002)) b!1258223))

(assert (= start!105672 b!1258230))

(declare-fun m!1158715 () Bool)

(assert (=> b!1258225 m!1158715))

(declare-fun m!1158717 () Bool)

(assert (=> b!1258225 m!1158717))

(declare-fun m!1158719 () Bool)

(assert (=> b!1258225 m!1158719))

(declare-fun m!1158721 () Bool)

(assert (=> b!1258228 m!1158721))

(declare-fun m!1158723 () Bool)

(assert (=> start!105672 m!1158723))

(declare-fun m!1158725 () Bool)

(assert (=> start!105672 m!1158725))

(declare-fun m!1158727 () Bool)

(assert (=> start!105672 m!1158727))

(declare-fun m!1158729 () Bool)

(assert (=> b!1258229 m!1158729))

(declare-fun m!1158731 () Bool)

(assert (=> b!1258227 m!1158731))

(declare-fun m!1158733 () Bool)

(assert (=> mapNonEmpty!50002 m!1158733))

(check-sat (not start!105672) (not b_next!27237) (not b!1258227) (not b!1258229) (not b!1258228) tp_is_empty!32139 b_and!45121 (not mapNonEmpty!50002) (not b!1258225))
(check-sat b_and!45121 (not b_next!27237))
