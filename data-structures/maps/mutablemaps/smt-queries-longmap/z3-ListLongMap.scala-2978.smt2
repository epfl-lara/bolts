; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42154 () Bool)

(assert start!42154)

(declare-fun b_free!11679 () Bool)

(declare-fun b_next!11679 () Bool)

(assert (=> start!42154 (= b_free!11679 (not b_next!11679))))

(declare-fun tp!41058 () Bool)

(declare-fun b_and!20119 () Bool)

(assert (=> start!42154 (= tp!41058 b_and!20119)))

(declare-fun b!470315 () Bool)

(declare-fun res!281096 () Bool)

(declare-fun e!275541 () Bool)

(assert (=> b!470315 (=> (not res!281096) (not e!275541))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29945 0))(
  ( (array!29946 (arr!14393 (Array (_ BitVec 32) (_ BitVec 64))) (size!14745 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29945)

(declare-datatypes ((V!18581 0))(
  ( (V!18582 (val!6598 Int)) )
))
(declare-datatypes ((ValueCell!6210 0))(
  ( (ValueCellFull!6210 (v!8885 V!18581)) (EmptyCell!6210) )
))
(declare-datatypes ((array!29947 0))(
  ( (array!29948 (arr!14394 (Array (_ BitVec 32) ValueCell!6210)) (size!14746 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29947)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!470315 (= res!281096 (and (= (size!14746 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14745 _keys!1025) (size!14746 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!470316 () Bool)

(assert (=> b!470316 (= e!275541 (not true))))

(declare-datatypes ((tuple2!8658 0))(
  ( (tuple2!8659 (_1!4339 (_ BitVec 64)) (_2!4339 V!18581)) )
))
(declare-datatypes ((List!8780 0))(
  ( (Nil!8777) (Cons!8776 (h!9632 tuple2!8658) (t!14750 List!8780)) )
))
(declare-datatypes ((ListLongMap!7585 0))(
  ( (ListLongMap!7586 (toList!3808 List!8780)) )
))
(declare-fun lt!213448 () ListLongMap!7585)

(declare-fun lt!213446 () ListLongMap!7585)

(assert (=> b!470316 (= lt!213448 lt!213446)))

(declare-fun zeroValue!794 () V!18581)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13742 0))(
  ( (Unit!13743) )
))
(declare-fun lt!213447 () Unit!13742)

(declare-fun minValueBefore!38 () V!18581)

(declare-fun minValueAfter!38 () V!18581)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!165 (array!29945 array!29947 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18581 V!18581 V!18581 V!18581 (_ BitVec 32) Int) Unit!13742)

(assert (=> b!470316 (= lt!213447 (lemmaNoChangeToArrayThenSameMapNoExtras!165 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1970 (array!29945 array!29947 (_ BitVec 32) (_ BitVec 32) V!18581 V!18581 (_ BitVec 32) Int) ListLongMap!7585)

(assert (=> b!470316 (= lt!213446 (getCurrentListMapNoExtraKeys!1970 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!470316 (= lt!213448 (getCurrentListMapNoExtraKeys!1970 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!281095 () Bool)

(assert (=> start!42154 (=> (not res!281095) (not e!275541))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42154 (= res!281095 (validMask!0 mask!1365))))

(assert (=> start!42154 e!275541))

(declare-fun tp_is_empty!13107 () Bool)

(assert (=> start!42154 tp_is_empty!13107))

(assert (=> start!42154 tp!41058))

(assert (=> start!42154 true))

(declare-fun array_inv!10386 (array!29945) Bool)

(assert (=> start!42154 (array_inv!10386 _keys!1025)))

(declare-fun e!275542 () Bool)

(declare-fun array_inv!10387 (array!29947) Bool)

(assert (=> start!42154 (and (array_inv!10387 _values!833) e!275542)))

(declare-fun mapNonEmpty!21361 () Bool)

(declare-fun mapRes!21361 () Bool)

(declare-fun tp!41059 () Bool)

(declare-fun e!275539 () Bool)

(assert (=> mapNonEmpty!21361 (= mapRes!21361 (and tp!41059 e!275539))))

(declare-fun mapValue!21361 () ValueCell!6210)

(declare-fun mapKey!21361 () (_ BitVec 32))

(declare-fun mapRest!21361 () (Array (_ BitVec 32) ValueCell!6210))

(assert (=> mapNonEmpty!21361 (= (arr!14394 _values!833) (store mapRest!21361 mapKey!21361 mapValue!21361))))

(declare-fun b!470317 () Bool)

(declare-fun res!281094 () Bool)

(assert (=> b!470317 (=> (not res!281094) (not e!275541))))

(declare-datatypes ((List!8781 0))(
  ( (Nil!8778) (Cons!8777 (h!9633 (_ BitVec 64)) (t!14751 List!8781)) )
))
(declare-fun arrayNoDuplicates!0 (array!29945 (_ BitVec 32) List!8781) Bool)

(assert (=> b!470317 (= res!281094 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8778))))

(declare-fun b!470318 () Bool)

(declare-fun e!275543 () Bool)

(assert (=> b!470318 (= e!275543 tp_is_empty!13107)))

(declare-fun b!470319 () Bool)

(assert (=> b!470319 (= e!275542 (and e!275543 mapRes!21361))))

(declare-fun condMapEmpty!21361 () Bool)

(declare-fun mapDefault!21361 () ValueCell!6210)

(assert (=> b!470319 (= condMapEmpty!21361 (= (arr!14394 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6210)) mapDefault!21361)))))

(declare-fun b!470320 () Bool)

(declare-fun res!281097 () Bool)

(assert (=> b!470320 (=> (not res!281097) (not e!275541))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29945 (_ BitVec 32)) Bool)

(assert (=> b!470320 (= res!281097 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21361 () Bool)

(assert (=> mapIsEmpty!21361 mapRes!21361))

(declare-fun b!470321 () Bool)

(assert (=> b!470321 (= e!275539 tp_is_empty!13107)))

(assert (= (and start!42154 res!281095) b!470315))

(assert (= (and b!470315 res!281096) b!470320))

(assert (= (and b!470320 res!281097) b!470317))

(assert (= (and b!470317 res!281094) b!470316))

(assert (= (and b!470319 condMapEmpty!21361) mapIsEmpty!21361))

(assert (= (and b!470319 (not condMapEmpty!21361)) mapNonEmpty!21361))

(get-info :version)

(assert (= (and mapNonEmpty!21361 ((_ is ValueCellFull!6210) mapValue!21361)) b!470321))

(assert (= (and b!470319 ((_ is ValueCellFull!6210) mapDefault!21361)) b!470318))

(assert (= start!42154 b!470319))

(declare-fun m!452629 () Bool)

(assert (=> mapNonEmpty!21361 m!452629))

(declare-fun m!452631 () Bool)

(assert (=> b!470320 m!452631))

(declare-fun m!452633 () Bool)

(assert (=> start!42154 m!452633))

(declare-fun m!452635 () Bool)

(assert (=> start!42154 m!452635))

(declare-fun m!452637 () Bool)

(assert (=> start!42154 m!452637))

(declare-fun m!452639 () Bool)

(assert (=> b!470316 m!452639))

(declare-fun m!452641 () Bool)

(assert (=> b!470316 m!452641))

(declare-fun m!452643 () Bool)

(assert (=> b!470316 m!452643))

(declare-fun m!452645 () Bool)

(assert (=> b!470317 m!452645))

(check-sat tp_is_empty!13107 (not mapNonEmpty!21361) (not b!470316) b_and!20119 (not b!470317) (not b_next!11679) (not start!42154) (not b!470320))
(check-sat b_and!20119 (not b_next!11679))
