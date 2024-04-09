; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42234 () Bool)

(assert start!42234)

(declare-fun b_free!11745 () Bool)

(declare-fun b_next!11745 () Bool)

(assert (=> start!42234 (= b_free!11745 (not b_next!11745))))

(declare-fun tp!41259 () Bool)

(declare-fun b_and!20193 () Bool)

(assert (=> start!42234 (= tp!41259 b_and!20193)))

(declare-fun b!471093 () Bool)

(declare-fun e!276089 () Bool)

(declare-fun tp_is_empty!13173 () Bool)

(assert (=> b!471093 (= e!276089 tp_is_empty!13173)))

(declare-fun res!281523 () Bool)

(declare-fun e!276092 () Bool)

(assert (=> start!42234 (=> (not res!281523) (not e!276092))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42234 (= res!281523 (validMask!0 mask!1365))))

(assert (=> start!42234 e!276092))

(assert (=> start!42234 tp_is_empty!13173))

(assert (=> start!42234 tp!41259))

(assert (=> start!42234 true))

(declare-datatypes ((array!30073 0))(
  ( (array!30074 (arr!14456 (Array (_ BitVec 32) (_ BitVec 64))) (size!14808 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30073)

(declare-fun array_inv!10430 (array!30073) Bool)

(assert (=> start!42234 (array_inv!10430 _keys!1025)))

(declare-datatypes ((V!18669 0))(
  ( (V!18670 (val!6631 Int)) )
))
(declare-datatypes ((ValueCell!6243 0))(
  ( (ValueCellFull!6243 (v!8918 V!18669)) (EmptyCell!6243) )
))
(declare-datatypes ((array!30075 0))(
  ( (array!30076 (arr!14457 (Array (_ BitVec 32) ValueCell!6243)) (size!14809 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30075)

(declare-fun e!276093 () Bool)

(declare-fun array_inv!10431 (array!30075) Bool)

(assert (=> start!42234 (and (array_inv!10431 _values!833) e!276093)))

(declare-fun mapNonEmpty!21463 () Bool)

(declare-fun mapRes!21463 () Bool)

(declare-fun tp!41260 () Bool)

(declare-fun e!276091 () Bool)

(assert (=> mapNonEmpty!21463 (= mapRes!21463 (and tp!41260 e!276091))))

(declare-fun mapKey!21463 () (_ BitVec 32))

(declare-fun mapValue!21463 () ValueCell!6243)

(declare-fun mapRest!21463 () (Array (_ BitVec 32) ValueCell!6243))

(assert (=> mapNonEmpty!21463 (= (arr!14457 _values!833) (store mapRest!21463 mapKey!21463 mapValue!21463))))

(declare-fun mapIsEmpty!21463 () Bool)

(assert (=> mapIsEmpty!21463 mapRes!21463))

(declare-fun b!471094 () Bool)

(declare-fun res!281521 () Bool)

(assert (=> b!471094 (=> (not res!281521) (not e!276092))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30073 (_ BitVec 32)) Bool)

(assert (=> b!471094 (= res!281521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471095 () Bool)

(assert (=> b!471095 (= e!276091 tp_is_empty!13173)))

(declare-fun b!471096 () Bool)

(declare-fun res!281524 () Bool)

(assert (=> b!471096 (=> (not res!281524) (not e!276092))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!471096 (= res!281524 (and (= (size!14809 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14808 _keys!1025) (size!14809 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471097 () Bool)

(assert (=> b!471097 (= e!276092 (not true))))

(declare-datatypes ((tuple2!8704 0))(
  ( (tuple2!8705 (_1!4362 (_ BitVec 64)) (_2!4362 V!18669)) )
))
(declare-datatypes ((List!8824 0))(
  ( (Nil!8821) (Cons!8820 (h!9676 tuple2!8704) (t!14796 List!8824)) )
))
(declare-datatypes ((ListLongMap!7631 0))(
  ( (ListLongMap!7632 (toList!3831 List!8824)) )
))
(declare-fun lt!213783 () ListLongMap!7631)

(declare-fun lt!213785 () ListLongMap!7631)

(assert (=> b!471097 (= lt!213783 lt!213785)))

(declare-fun minValueBefore!38 () V!18669)

(declare-fun zeroValue!794 () V!18669)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13788 0))(
  ( (Unit!13789) )
))
(declare-fun lt!213784 () Unit!13788)

(declare-fun minValueAfter!38 () V!18669)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!188 (array!30073 array!30075 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18669 V!18669 V!18669 V!18669 (_ BitVec 32) Int) Unit!13788)

(assert (=> b!471097 (= lt!213784 (lemmaNoChangeToArrayThenSameMapNoExtras!188 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1993 (array!30073 array!30075 (_ BitVec 32) (_ BitVec 32) V!18669 V!18669 (_ BitVec 32) Int) ListLongMap!7631)

(assert (=> b!471097 (= lt!213785 (getCurrentListMapNoExtraKeys!1993 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471097 (= lt!213783 (getCurrentListMapNoExtraKeys!1993 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471098 () Bool)

(assert (=> b!471098 (= e!276093 (and e!276089 mapRes!21463))))

(declare-fun condMapEmpty!21463 () Bool)

(declare-fun mapDefault!21463 () ValueCell!6243)

(assert (=> b!471098 (= condMapEmpty!21463 (= (arr!14457 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6243)) mapDefault!21463)))))

(declare-fun b!471099 () Bool)

(declare-fun res!281522 () Bool)

(assert (=> b!471099 (=> (not res!281522) (not e!276092))))

(declare-datatypes ((List!8825 0))(
  ( (Nil!8822) (Cons!8821 (h!9677 (_ BitVec 64)) (t!14797 List!8825)) )
))
(declare-fun arrayNoDuplicates!0 (array!30073 (_ BitVec 32) List!8825) Bool)

(assert (=> b!471099 (= res!281522 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8822))))

(assert (= (and start!42234 res!281523) b!471096))

(assert (= (and b!471096 res!281524) b!471094))

(assert (= (and b!471094 res!281521) b!471099))

(assert (= (and b!471099 res!281522) b!471097))

(assert (= (and b!471098 condMapEmpty!21463) mapIsEmpty!21463))

(assert (= (and b!471098 (not condMapEmpty!21463)) mapNonEmpty!21463))

(get-info :version)

(assert (= (and mapNonEmpty!21463 ((_ is ValueCellFull!6243) mapValue!21463)) b!471095))

(assert (= (and b!471098 ((_ is ValueCellFull!6243) mapDefault!21463)) b!471093))

(assert (= start!42234 b!471098))

(declare-fun m!453289 () Bool)

(assert (=> b!471094 m!453289))

(declare-fun m!453291 () Bool)

(assert (=> b!471097 m!453291))

(declare-fun m!453293 () Bool)

(assert (=> b!471097 m!453293))

(declare-fun m!453295 () Bool)

(assert (=> b!471097 m!453295))

(declare-fun m!453297 () Bool)

(assert (=> b!471099 m!453297))

(declare-fun m!453299 () Bool)

(assert (=> start!42234 m!453299))

(declare-fun m!453301 () Bool)

(assert (=> start!42234 m!453301))

(declare-fun m!453303 () Bool)

(assert (=> start!42234 m!453303))

(declare-fun m!453305 () Bool)

(assert (=> mapNonEmpty!21463 m!453305))

(check-sat (not b_next!11745) (not b!471094) (not b!471097) (not mapNonEmpty!21463) (not start!42234) (not b!471099) b_and!20193 tp_is_empty!13173)
(check-sat b_and!20193 (not b_next!11745))
