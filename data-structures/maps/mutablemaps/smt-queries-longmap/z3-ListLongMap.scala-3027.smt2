; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42546 () Bool)

(assert start!42546)

(declare-fun b_free!11973 () Bool)

(declare-fun b_next!11973 () Bool)

(assert (=> start!42546 (= b_free!11973 (not b_next!11973))))

(declare-fun tp!41958 () Bool)

(declare-fun b_and!20471 () Bool)

(assert (=> start!42546 (= tp!41958 b_and!20471)))

(declare-fun b!474410 () Bool)

(declare-fun e!278472 () Bool)

(declare-fun tp_is_empty!13401 () Bool)

(assert (=> b!474410 (= e!278472 tp_is_empty!13401)))

(declare-fun b!474411 () Bool)

(declare-fun e!278474 () Bool)

(assert (=> b!474411 (= e!278474 (not true))))

(declare-datatypes ((V!18973 0))(
  ( (V!18974 (val!6745 Int)) )
))
(declare-datatypes ((tuple2!8890 0))(
  ( (tuple2!8891 (_1!4455 (_ BitVec 64)) (_2!4455 V!18973)) )
))
(declare-datatypes ((List!9001 0))(
  ( (Nil!8998) (Cons!8997 (h!9853 tuple2!8890) (t!14983 List!9001)) )
))
(declare-datatypes ((ListLongMap!7817 0))(
  ( (ListLongMap!7818 (toList!3924 List!9001)) )
))
(declare-fun lt!216196 () ListLongMap!7817)

(declare-fun lt!216197 () ListLongMap!7817)

(assert (=> b!474411 (= lt!216196 lt!216197)))

(declare-fun minValueBefore!38 () V!18973)

(declare-fun zeroValue!794 () V!18973)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13973 0))(
  ( (Unit!13974) )
))
(declare-fun lt!216198 () Unit!13973)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30521 0))(
  ( (array!30522 (arr!14675 (Array (_ BitVec 32) (_ BitVec 64))) (size!15027 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30521)

(declare-datatypes ((ValueCell!6357 0))(
  ( (ValueCellFull!6357 (v!9034 V!18973)) (EmptyCell!6357) )
))
(declare-datatypes ((array!30523 0))(
  ( (array!30524 (arr!14676 (Array (_ BitVec 32) ValueCell!6357)) (size!15028 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30523)

(declare-fun minValueAfter!38 () V!18973)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!273 (array!30521 array!30523 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18973 V!18973 V!18973 V!18973 (_ BitVec 32) Int) Unit!13973)

(assert (=> b!474411 (= lt!216198 (lemmaNoChangeToArrayThenSameMapNoExtras!273 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2078 (array!30521 array!30523 (_ BitVec 32) (_ BitVec 32) V!18973 V!18973 (_ BitVec 32) Int) ListLongMap!7817)

(assert (=> b!474411 (= lt!216197 (getCurrentListMapNoExtraKeys!2078 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!474411 (= lt!216196 (getCurrentListMapNoExtraKeys!2078 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!474412 () Bool)

(declare-fun res!283412 () Bool)

(assert (=> b!474412 (=> (not res!283412) (not e!278474))))

(declare-datatypes ((List!9002 0))(
  ( (Nil!8999) (Cons!8998 (h!9854 (_ BitVec 64)) (t!14984 List!9002)) )
))
(declare-fun arrayNoDuplicates!0 (array!30521 (_ BitVec 32) List!9002) Bool)

(assert (=> b!474412 (= res!283412 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8999))))

(declare-fun res!283411 () Bool)

(assert (=> start!42546 (=> (not res!283411) (not e!278474))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42546 (= res!283411 (validMask!0 mask!1365))))

(assert (=> start!42546 e!278474))

(assert (=> start!42546 tp_is_empty!13401))

(assert (=> start!42546 tp!41958))

(assert (=> start!42546 true))

(declare-fun array_inv!10576 (array!30521) Bool)

(assert (=> start!42546 (array_inv!10576 _keys!1025)))

(declare-fun e!278473 () Bool)

(declare-fun array_inv!10577 (array!30523) Bool)

(assert (=> start!42546 (and (array_inv!10577 _values!833) e!278473)))

(declare-fun b!474413 () Bool)

(declare-fun res!283410 () Bool)

(assert (=> b!474413 (=> (not res!283410) (not e!278474))))

(assert (=> b!474413 (= res!283410 (and (= (size!15028 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15027 _keys!1025) (size!15028 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!474414 () Bool)

(declare-fun e!278476 () Bool)

(declare-fun mapRes!21820 () Bool)

(assert (=> b!474414 (= e!278473 (and e!278476 mapRes!21820))))

(declare-fun condMapEmpty!21820 () Bool)

(declare-fun mapDefault!21820 () ValueCell!6357)

(assert (=> b!474414 (= condMapEmpty!21820 (= (arr!14676 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6357)) mapDefault!21820)))))

(declare-fun b!474415 () Bool)

(assert (=> b!474415 (= e!278476 tp_is_empty!13401)))

(declare-fun mapIsEmpty!21820 () Bool)

(assert (=> mapIsEmpty!21820 mapRes!21820))

(declare-fun b!474416 () Bool)

(declare-fun res!283413 () Bool)

(assert (=> b!474416 (=> (not res!283413) (not e!278474))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30521 (_ BitVec 32)) Bool)

(assert (=> b!474416 (= res!283413 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21820 () Bool)

(declare-fun tp!41959 () Bool)

(assert (=> mapNonEmpty!21820 (= mapRes!21820 (and tp!41959 e!278472))))

(declare-fun mapKey!21820 () (_ BitVec 32))

(declare-fun mapRest!21820 () (Array (_ BitVec 32) ValueCell!6357))

(declare-fun mapValue!21820 () ValueCell!6357)

(assert (=> mapNonEmpty!21820 (= (arr!14676 _values!833) (store mapRest!21820 mapKey!21820 mapValue!21820))))

(assert (= (and start!42546 res!283411) b!474413))

(assert (= (and b!474413 res!283410) b!474416))

(assert (= (and b!474416 res!283413) b!474412))

(assert (= (and b!474412 res!283412) b!474411))

(assert (= (and b!474414 condMapEmpty!21820) mapIsEmpty!21820))

(assert (= (and b!474414 (not condMapEmpty!21820)) mapNonEmpty!21820))

(get-info :version)

(assert (= (and mapNonEmpty!21820 ((_ is ValueCellFull!6357) mapValue!21820)) b!474410))

(assert (= (and b!474414 ((_ is ValueCellFull!6357) mapDefault!21820)) b!474415))

(assert (= start!42546 b!474414))

(declare-fun m!456819 () Bool)

(assert (=> b!474411 m!456819))

(declare-fun m!456821 () Bool)

(assert (=> b!474411 m!456821))

(declare-fun m!456823 () Bool)

(assert (=> b!474411 m!456823))

(declare-fun m!456825 () Bool)

(assert (=> start!42546 m!456825))

(declare-fun m!456827 () Bool)

(assert (=> start!42546 m!456827))

(declare-fun m!456829 () Bool)

(assert (=> start!42546 m!456829))

(declare-fun m!456831 () Bool)

(assert (=> b!474416 m!456831))

(declare-fun m!456833 () Bool)

(assert (=> mapNonEmpty!21820 m!456833))

(declare-fun m!456835 () Bool)

(assert (=> b!474412 m!456835))

(check-sat tp_is_empty!13401 (not b!474412) (not b_next!11973) b_and!20471 (not mapNonEmpty!21820) (not b!474416) (not b!474411) (not start!42546))
(check-sat b_and!20471 (not b_next!11973))
