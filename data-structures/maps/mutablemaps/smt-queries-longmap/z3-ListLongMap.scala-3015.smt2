; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42434 () Bool)

(assert start!42434)

(declare-fun b_free!11901 () Bool)

(declare-fun b_next!11901 () Bool)

(assert (=> start!42434 (= b_free!11901 (not b_next!11901))))

(declare-fun tp!41736 () Bool)

(declare-fun b_and!20375 () Bool)

(assert (=> start!42434 (= tp!41736 b_and!20375)))

(declare-fun b!473189 () Bool)

(declare-fun res!282719 () Bool)

(declare-fun e!277604 () Bool)

(assert (=> b!473189 (=> (not res!282719) (not e!277604))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30379 0))(
  ( (array!30380 (arr!14606 (Array (_ BitVec 32) (_ BitVec 64))) (size!14958 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30379)

(declare-datatypes ((V!18877 0))(
  ( (V!18878 (val!6709 Int)) )
))
(declare-datatypes ((ValueCell!6321 0))(
  ( (ValueCellFull!6321 (v!8996 V!18877)) (EmptyCell!6321) )
))
(declare-datatypes ((array!30381 0))(
  ( (array!30382 (arr!14607 (Array (_ BitVec 32) ValueCell!6321)) (size!14959 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30381)

(assert (=> b!473189 (= res!282719 (and (= (size!14959 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14958 _keys!1025) (size!14959 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!473190 () Bool)

(declare-fun res!282721 () Bool)

(assert (=> b!473190 (=> (not res!282721) (not e!277604))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30379 (_ BitVec 32)) Bool)

(assert (=> b!473190 (= res!282721 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!473191 () Bool)

(declare-fun e!277605 () Bool)

(declare-fun tp_is_empty!13329 () Bool)

(assert (=> b!473191 (= e!277605 tp_is_empty!13329)))

(declare-fun b!473192 () Bool)

(declare-fun e!277607 () Bool)

(assert (=> b!473192 (= e!277604 (not e!277607))))

(declare-fun res!282718 () Bool)

(assert (=> b!473192 (=> res!282718 e!277607)))

(assert (=> b!473192 (= res!282718 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8836 0))(
  ( (tuple2!8837 (_1!4428 (_ BitVec 64)) (_2!4428 V!18877)) )
))
(declare-datatypes ((List!8948 0))(
  ( (Nil!8945) (Cons!8944 (h!9800 tuple2!8836) (t!14926 List!8948)) )
))
(declare-datatypes ((ListLongMap!7763 0))(
  ( (ListLongMap!7764 (toList!3897 List!8948)) )
))
(declare-fun lt!215049 () ListLongMap!7763)

(declare-fun lt!215053 () ListLongMap!7763)

(assert (=> b!473192 (= lt!215049 lt!215053)))

(declare-fun minValueBefore!38 () V!18877)

(declare-fun zeroValue!794 () V!18877)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13915 0))(
  ( (Unit!13916) )
))
(declare-fun lt!215051 () Unit!13915)

(declare-fun minValueAfter!38 () V!18877)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!250 (array!30379 array!30381 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18877 V!18877 V!18877 V!18877 (_ BitVec 32) Int) Unit!13915)

(assert (=> b!473192 (= lt!215051 (lemmaNoChangeToArrayThenSameMapNoExtras!250 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2055 (array!30379 array!30381 (_ BitVec 32) (_ BitVec 32) V!18877 V!18877 (_ BitVec 32) Int) ListLongMap!7763)

(assert (=> b!473192 (= lt!215053 (getCurrentListMapNoExtraKeys!2055 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473192 (= lt!215049 (getCurrentListMapNoExtraKeys!2055 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473193 () Bool)

(declare-fun e!277608 () Bool)

(assert (=> b!473193 (= e!277608 tp_is_empty!13329)))

(declare-fun res!282717 () Bool)

(assert (=> start!42434 (=> (not res!282717) (not e!277604))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42434 (= res!282717 (validMask!0 mask!1365))))

(assert (=> start!42434 e!277604))

(assert (=> start!42434 tp_is_empty!13329))

(assert (=> start!42434 tp!41736))

(assert (=> start!42434 true))

(declare-fun array_inv!10530 (array!30379) Bool)

(assert (=> start!42434 (array_inv!10530 _keys!1025)))

(declare-fun e!277606 () Bool)

(declare-fun array_inv!10531 (array!30381) Bool)

(assert (=> start!42434 (and (array_inv!10531 _values!833) e!277606)))

(declare-fun b!473194 () Bool)

(assert (=> b!473194 (= e!277607 true)))

(declare-fun lt!215048 () ListLongMap!7763)

(declare-fun lt!215047 () tuple2!8836)

(declare-fun +!1704 (ListLongMap!7763 tuple2!8836) ListLongMap!7763)

(assert (=> b!473194 (= (+!1704 lt!215048 lt!215047) (+!1704 (+!1704 lt!215048 (tuple2!8837 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215047))))

(assert (=> b!473194 (= lt!215047 (tuple2!8837 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!215054 () Unit!13915)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!141 (ListLongMap!7763 (_ BitVec 64) V!18877 V!18877) Unit!13915)

(assert (=> b!473194 (= lt!215054 (addSameAsAddTwiceSameKeyDiffValues!141 lt!215048 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> b!473194 (= lt!215048 (+!1704 lt!215049 (tuple2!8837 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!215050 () ListLongMap!7763)

(declare-fun getCurrentListMap!2241 (array!30379 array!30381 (_ BitVec 32) (_ BitVec 32) V!18877 V!18877 (_ BitVec 32) Int) ListLongMap!7763)

(assert (=> b!473194 (= lt!215050 (getCurrentListMap!2241 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215052 () ListLongMap!7763)

(assert (=> b!473194 (= lt!215052 (getCurrentListMap!2241 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21706 () Bool)

(declare-fun mapRes!21706 () Bool)

(assert (=> mapIsEmpty!21706 mapRes!21706))

(declare-fun b!473195 () Bool)

(declare-fun res!282720 () Bool)

(assert (=> b!473195 (=> (not res!282720) (not e!277604))))

(declare-datatypes ((List!8949 0))(
  ( (Nil!8946) (Cons!8945 (h!9801 (_ BitVec 64)) (t!14927 List!8949)) )
))
(declare-fun arrayNoDuplicates!0 (array!30379 (_ BitVec 32) List!8949) Bool)

(assert (=> b!473195 (= res!282720 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8946))))

(declare-fun mapNonEmpty!21706 () Bool)

(declare-fun tp!41737 () Bool)

(assert (=> mapNonEmpty!21706 (= mapRes!21706 (and tp!41737 e!277608))))

(declare-fun mapRest!21706 () (Array (_ BitVec 32) ValueCell!6321))

(declare-fun mapKey!21706 () (_ BitVec 32))

(declare-fun mapValue!21706 () ValueCell!6321)

(assert (=> mapNonEmpty!21706 (= (arr!14607 _values!833) (store mapRest!21706 mapKey!21706 mapValue!21706))))

(declare-fun b!473196 () Bool)

(assert (=> b!473196 (= e!277606 (and e!277605 mapRes!21706))))

(declare-fun condMapEmpty!21706 () Bool)

(declare-fun mapDefault!21706 () ValueCell!6321)

(assert (=> b!473196 (= condMapEmpty!21706 (= (arr!14607 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6321)) mapDefault!21706)))))

(assert (= (and start!42434 res!282717) b!473189))

(assert (= (and b!473189 res!282719) b!473190))

(assert (= (and b!473190 res!282721) b!473195))

(assert (= (and b!473195 res!282720) b!473192))

(assert (= (and b!473192 (not res!282718)) b!473194))

(assert (= (and b!473196 condMapEmpty!21706) mapIsEmpty!21706))

(assert (= (and b!473196 (not condMapEmpty!21706)) mapNonEmpty!21706))

(get-info :version)

(assert (= (and mapNonEmpty!21706 ((_ is ValueCellFull!6321) mapValue!21706)) b!473193))

(assert (= (and b!473196 ((_ is ValueCellFull!6321) mapDefault!21706)) b!473191))

(assert (= start!42434 b!473196))

(declare-fun m!455257 () Bool)

(assert (=> start!42434 m!455257))

(declare-fun m!455259 () Bool)

(assert (=> start!42434 m!455259))

(declare-fun m!455261 () Bool)

(assert (=> start!42434 m!455261))

(declare-fun m!455263 () Bool)

(assert (=> b!473194 m!455263))

(declare-fun m!455265 () Bool)

(assert (=> b!473194 m!455265))

(assert (=> b!473194 m!455263))

(declare-fun m!455267 () Bool)

(assert (=> b!473194 m!455267))

(declare-fun m!455269 () Bool)

(assert (=> b!473194 m!455269))

(declare-fun m!455271 () Bool)

(assert (=> b!473194 m!455271))

(declare-fun m!455273 () Bool)

(assert (=> b!473194 m!455273))

(declare-fun m!455275 () Bool)

(assert (=> b!473194 m!455275))

(declare-fun m!455277 () Bool)

(assert (=> mapNonEmpty!21706 m!455277))

(declare-fun m!455279 () Bool)

(assert (=> b!473195 m!455279))

(declare-fun m!455281 () Bool)

(assert (=> b!473192 m!455281))

(declare-fun m!455283 () Bool)

(assert (=> b!473192 m!455283))

(declare-fun m!455285 () Bool)

(assert (=> b!473192 m!455285))

(declare-fun m!455287 () Bool)

(assert (=> b!473190 m!455287))

(check-sat (not b!473195) tp_is_empty!13329 (not mapNonEmpty!21706) (not b_next!11901) (not b!473192) (not b!473190) (not b!473194) (not start!42434) b_and!20375)
(check-sat b_and!20375 (not b_next!11901))
