; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41462 () Bool)

(assert start!41462)

(declare-fun b_free!11133 () Bool)

(declare-fun b_next!11133 () Bool)

(assert (=> start!41462 (= b_free!11133 (not b_next!11133))))

(declare-fun tp!39393 () Bool)

(declare-fun b_and!19487 () Bool)

(assert (=> start!41462 (= tp!39393 b_and!19487)))

(declare-fun b!462975 () Bool)

(declare-fun e!270288 () Bool)

(assert (=> b!462975 (= e!270288 false)))

(declare-datatypes ((V!17853 0))(
  ( (V!17854 (val!6325 Int)) )
))
(declare-fun minValueBefore!38 () V!17853)

(declare-fun zeroValue!794 () V!17853)

(declare-fun defaultEntry!841 () Int)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-datatypes ((tuple2!8256 0))(
  ( (tuple2!8257 (_1!4138 (_ BitVec 64)) (_2!4138 V!17853)) )
))
(declare-datatypes ((List!8383 0))(
  ( (Nil!8380) (Cons!8379 (h!9235 tuple2!8256) (t!14335 List!8383)) )
))
(declare-datatypes ((ListLongMap!7183 0))(
  ( (ListLongMap!7184 (toList!3607 List!8383)) )
))
(declare-fun lt!209277 () ListLongMap!7183)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!28881 0))(
  ( (array!28882 (arr!13870 (Array (_ BitVec 32) (_ BitVec 64))) (size!14222 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28881)

(declare-datatypes ((ValueCell!5937 0))(
  ( (ValueCellFull!5937 (v!8608 V!17853)) (EmptyCell!5937) )
))
(declare-datatypes ((array!28883 0))(
  ( (array!28884 (arr!13871 (Array (_ BitVec 32) ValueCell!5937)) (size!14223 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28883)

(declare-fun getCurrentListMapNoExtraKeys!1775 (array!28881 array!28883 (_ BitVec 32) (_ BitVec 32) V!17853 V!17853 (_ BitVec 32) Int) ListLongMap!7183)

(assert (=> b!462975 (= lt!209277 (getCurrentListMapNoExtraKeys!1775 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!462977 () Bool)

(declare-fun res!276918 () Bool)

(assert (=> b!462977 (=> (not res!276918) (not e!270288))))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462977 (= res!276918 (and (= (size!14223 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14222 _keys!1025) (size!14223 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!20515 () Bool)

(declare-fun mapRes!20515 () Bool)

(declare-fun tp!39394 () Bool)

(declare-fun e!270289 () Bool)

(assert (=> mapNonEmpty!20515 (= mapRes!20515 (and tp!39394 e!270289))))

(declare-fun mapKey!20515 () (_ BitVec 32))

(declare-fun mapValue!20515 () ValueCell!5937)

(declare-fun mapRest!20515 () (Array (_ BitVec 32) ValueCell!5937))

(assert (=> mapNonEmpty!20515 (= (arr!13871 _values!833) (store mapRest!20515 mapKey!20515 mapValue!20515))))

(declare-fun b!462978 () Bool)

(declare-fun e!270290 () Bool)

(declare-fun e!270291 () Bool)

(assert (=> b!462978 (= e!270290 (and e!270291 mapRes!20515))))

(declare-fun condMapEmpty!20515 () Bool)

(declare-fun mapDefault!20515 () ValueCell!5937)

(assert (=> b!462978 (= condMapEmpty!20515 (= (arr!13871 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5937)) mapDefault!20515)))))

(declare-fun b!462979 () Bool)

(declare-fun tp_is_empty!12561 () Bool)

(assert (=> b!462979 (= e!270289 tp_is_empty!12561)))

(declare-fun b!462980 () Bool)

(assert (=> b!462980 (= e!270291 tp_is_empty!12561)))

(declare-fun res!276919 () Bool)

(assert (=> start!41462 (=> (not res!276919) (not e!270288))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41462 (= res!276919 (validMask!0 mask!1365))))

(assert (=> start!41462 e!270288))

(assert (=> start!41462 tp_is_empty!12561))

(assert (=> start!41462 tp!39393))

(assert (=> start!41462 true))

(declare-fun array_inv!10006 (array!28881) Bool)

(assert (=> start!41462 (array_inv!10006 _keys!1025)))

(declare-fun array_inv!10007 (array!28883) Bool)

(assert (=> start!41462 (and (array_inv!10007 _values!833) e!270290)))

(declare-fun b!462976 () Bool)

(declare-fun res!276920 () Bool)

(assert (=> b!462976 (=> (not res!276920) (not e!270288))))

(declare-datatypes ((List!8384 0))(
  ( (Nil!8381) (Cons!8380 (h!9236 (_ BitVec 64)) (t!14336 List!8384)) )
))
(declare-fun arrayNoDuplicates!0 (array!28881 (_ BitVec 32) List!8384) Bool)

(assert (=> b!462976 (= res!276920 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8381))))

(declare-fun mapIsEmpty!20515 () Bool)

(assert (=> mapIsEmpty!20515 mapRes!20515))

(declare-fun b!462981 () Bool)

(declare-fun res!276917 () Bool)

(assert (=> b!462981 (=> (not res!276917) (not e!270288))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28881 (_ BitVec 32)) Bool)

(assert (=> b!462981 (= res!276917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!41462 res!276919) b!462977))

(assert (= (and b!462977 res!276918) b!462981))

(assert (= (and b!462981 res!276917) b!462976))

(assert (= (and b!462976 res!276920) b!462975))

(assert (= (and b!462978 condMapEmpty!20515) mapIsEmpty!20515))

(assert (= (and b!462978 (not condMapEmpty!20515)) mapNonEmpty!20515))

(get-info :version)

(assert (= (and mapNonEmpty!20515 ((_ is ValueCellFull!5937) mapValue!20515)) b!462979))

(assert (= (and b!462978 ((_ is ValueCellFull!5937) mapDefault!20515)) b!462980))

(assert (= start!41462 b!462978))

(declare-fun m!445693 () Bool)

(assert (=> b!462976 m!445693))

(declare-fun m!445695 () Bool)

(assert (=> b!462981 m!445695))

(declare-fun m!445697 () Bool)

(assert (=> mapNonEmpty!20515 m!445697))

(declare-fun m!445699 () Bool)

(assert (=> start!41462 m!445699))

(declare-fun m!445701 () Bool)

(assert (=> start!41462 m!445701))

(declare-fun m!445703 () Bool)

(assert (=> start!41462 m!445703))

(declare-fun m!445705 () Bool)

(assert (=> b!462975 m!445705))

(check-sat (not b!462976) (not start!41462) (not mapNonEmpty!20515) (not b!462981) b_and!19487 (not b_next!11133) (not b!462975) tp_is_empty!12561)
(check-sat b_and!19487 (not b_next!11133))
