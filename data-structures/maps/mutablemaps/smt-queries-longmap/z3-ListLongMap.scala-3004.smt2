; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42352 () Bool)

(assert start!42352)

(declare-fun b_free!11835 () Bool)

(declare-fun b_next!11835 () Bool)

(assert (=> start!42352 (= b_free!11835 (not b_next!11835))))

(declare-fun tp!41536 () Bool)

(declare-fun b_and!20299 () Bool)

(assert (=> start!42352 (= tp!41536 b_and!20299)))

(declare-fun b!472249 () Bool)

(declare-fun e!276916 () Bool)

(declare-fun e!276915 () Bool)

(declare-fun mapRes!21604 () Bool)

(assert (=> b!472249 (= e!276916 (and e!276915 mapRes!21604))))

(declare-fun condMapEmpty!21604 () Bool)

(declare-datatypes ((V!18789 0))(
  ( (V!18790 (val!6676 Int)) )
))
(declare-datatypes ((ValueCell!6288 0))(
  ( (ValueCellFull!6288 (v!8963 V!18789)) (EmptyCell!6288) )
))
(declare-datatypes ((array!30249 0))(
  ( (array!30250 (arr!14542 (Array (_ BitVec 32) ValueCell!6288)) (size!14894 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30249)

(declare-fun mapDefault!21604 () ValueCell!6288)

(assert (=> b!472249 (= condMapEmpty!21604 (= (arr!14542 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6288)) mapDefault!21604)))))

(declare-fun mapNonEmpty!21604 () Bool)

(declare-fun tp!41535 () Bool)

(declare-fun e!276919 () Bool)

(assert (=> mapNonEmpty!21604 (= mapRes!21604 (and tp!41535 e!276919))))

(declare-fun mapKey!21604 () (_ BitVec 32))

(declare-fun mapRest!21604 () (Array (_ BitVec 32) ValueCell!6288))

(declare-fun mapValue!21604 () ValueCell!6288)

(assert (=> mapNonEmpty!21604 (= (arr!14542 _values!833) (store mapRest!21604 mapKey!21604 mapValue!21604))))

(declare-fun b!472250 () Bool)

(declare-fun res!282168 () Bool)

(declare-fun e!276920 () Bool)

(assert (=> b!472250 (=> (not res!282168) (not e!276920))))

(declare-datatypes ((array!30251 0))(
  ( (array!30252 (arr!14543 (Array (_ BitVec 32) (_ BitVec 64))) (size!14895 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30251)

(declare-datatypes ((List!8895 0))(
  ( (Nil!8892) (Cons!8891 (h!9747 (_ BitVec 64)) (t!14871 List!8895)) )
))
(declare-fun arrayNoDuplicates!0 (array!30251 (_ BitVec 32) List!8895) Bool)

(assert (=> b!472250 (= res!282168 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8892))))

(declare-fun mapIsEmpty!21604 () Bool)

(assert (=> mapIsEmpty!21604 mapRes!21604))

(declare-fun b!472251 () Bool)

(declare-fun res!282167 () Bool)

(assert (=> b!472251 (=> (not res!282167) (not e!276920))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30251 (_ BitVec 32)) Bool)

(assert (=> b!472251 (= res!282167 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472252 () Bool)

(declare-fun e!276918 () Bool)

(assert (=> b!472252 (= e!276918 true)))

(declare-fun zeroValue!794 () V!18789)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun minValueBefore!38 () V!18789)

(declare-datatypes ((tuple2!8780 0))(
  ( (tuple2!8781 (_1!4400 (_ BitVec 64)) (_2!4400 V!18789)) )
))
(declare-datatypes ((List!8896 0))(
  ( (Nil!8893) (Cons!8892 (h!9748 tuple2!8780) (t!14872 List!8896)) )
))
(declare-datatypes ((ListLongMap!7707 0))(
  ( (ListLongMap!7708 (toList!3869 List!8896)) )
))
(declare-fun lt!214312 () ListLongMap!7707)

(declare-fun getCurrentListMap!2217 (array!30251 array!30249 (_ BitVec 32) (_ BitVec 32) V!18789 V!18789 (_ BitVec 32) Int) ListLongMap!7707)

(assert (=> b!472252 (= lt!214312 (getCurrentListMap!2217 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472253 () Bool)

(declare-fun res!282164 () Bool)

(assert (=> b!472253 (=> (not res!282164) (not e!276920))))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!472253 (= res!282164 (and (= (size!14894 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14895 _keys!1025) (size!14894 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!472254 () Bool)

(assert (=> b!472254 (= e!276920 (not e!276918))))

(declare-fun res!282166 () Bool)

(assert (=> b!472254 (=> res!282166 e!276918)))

(assert (=> b!472254 (= res!282166 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!214309 () ListLongMap!7707)

(declare-fun lt!214310 () ListLongMap!7707)

(assert (=> b!472254 (= lt!214309 lt!214310)))

(declare-datatypes ((Unit!13860 0))(
  ( (Unit!13861) )
))
(declare-fun lt!214311 () Unit!13860)

(declare-fun minValueAfter!38 () V!18789)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!224 (array!30251 array!30249 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18789 V!18789 V!18789 V!18789 (_ BitVec 32) Int) Unit!13860)

(assert (=> b!472254 (= lt!214311 (lemmaNoChangeToArrayThenSameMapNoExtras!224 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2029 (array!30251 array!30249 (_ BitVec 32) (_ BitVec 32) V!18789 V!18789 (_ BitVec 32) Int) ListLongMap!7707)

(assert (=> b!472254 (= lt!214310 (getCurrentListMapNoExtraKeys!2029 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472254 (= lt!214309 (getCurrentListMapNoExtraKeys!2029 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!282165 () Bool)

(assert (=> start!42352 (=> (not res!282165) (not e!276920))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42352 (= res!282165 (validMask!0 mask!1365))))

(assert (=> start!42352 e!276920))

(declare-fun tp_is_empty!13263 () Bool)

(assert (=> start!42352 tp_is_empty!13263))

(assert (=> start!42352 tp!41536))

(assert (=> start!42352 true))

(declare-fun array_inv!10488 (array!30251) Bool)

(assert (=> start!42352 (array_inv!10488 _keys!1025)))

(declare-fun array_inv!10489 (array!30249) Bool)

(assert (=> start!42352 (and (array_inv!10489 _values!833) e!276916)))

(declare-fun b!472255 () Bool)

(assert (=> b!472255 (= e!276919 tp_is_empty!13263)))

(declare-fun b!472256 () Bool)

(assert (=> b!472256 (= e!276915 tp_is_empty!13263)))

(assert (= (and start!42352 res!282165) b!472253))

(assert (= (and b!472253 res!282164) b!472251))

(assert (= (and b!472251 res!282167) b!472250))

(assert (= (and b!472250 res!282168) b!472254))

(assert (= (and b!472254 (not res!282166)) b!472252))

(assert (= (and b!472249 condMapEmpty!21604) mapIsEmpty!21604))

(assert (= (and b!472249 (not condMapEmpty!21604)) mapNonEmpty!21604))

(get-info :version)

(assert (= (and mapNonEmpty!21604 ((_ is ValueCellFull!6288) mapValue!21604)) b!472255))

(assert (= (and b!472249 ((_ is ValueCellFull!6288) mapDefault!21604)) b!472256))

(assert (= start!42352 b!472249))

(declare-fun m!454257 () Bool)

(assert (=> b!472250 m!454257))

(declare-fun m!454259 () Bool)

(assert (=> start!42352 m!454259))

(declare-fun m!454261 () Bool)

(assert (=> start!42352 m!454261))

(declare-fun m!454263 () Bool)

(assert (=> start!42352 m!454263))

(declare-fun m!454265 () Bool)

(assert (=> b!472252 m!454265))

(declare-fun m!454267 () Bool)

(assert (=> b!472254 m!454267))

(declare-fun m!454269 () Bool)

(assert (=> b!472254 m!454269))

(declare-fun m!454271 () Bool)

(assert (=> b!472254 m!454271))

(declare-fun m!454273 () Bool)

(assert (=> b!472251 m!454273))

(declare-fun m!454275 () Bool)

(assert (=> mapNonEmpty!21604 m!454275))

(check-sat (not b!472250) (not b!472251) (not b!472252) (not b!472254) b_and!20299 tp_is_empty!13263 (not b_next!11835) (not mapNonEmpty!21604) (not start!42352))
(check-sat b_and!20299 (not b_next!11835))
