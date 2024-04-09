; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41438 () Bool)

(assert start!41438)

(declare-fun b_free!11109 () Bool)

(declare-fun b_next!11109 () Bool)

(assert (=> start!41438 (= b_free!11109 (not b_next!11109))))

(declare-fun tp!39322 () Bool)

(declare-fun b_and!19463 () Bool)

(assert (=> start!41438 (= tp!39322 b_and!19463)))

(declare-fun res!276773 () Bool)

(declare-fun e!270110 () Bool)

(assert (=> start!41438 (=> (not res!276773) (not e!270110))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41438 (= res!276773 (validMask!0 mask!1365))))

(assert (=> start!41438 e!270110))

(declare-fun tp_is_empty!12537 () Bool)

(assert (=> start!41438 tp_is_empty!12537))

(assert (=> start!41438 tp!39322))

(assert (=> start!41438 true))

(declare-datatypes ((array!28835 0))(
  ( (array!28836 (arr!13847 (Array (_ BitVec 32) (_ BitVec 64))) (size!14199 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!28835)

(declare-fun array_inv!9994 (array!28835) Bool)

(assert (=> start!41438 (array_inv!9994 _keys!1025)))

(declare-datatypes ((V!17821 0))(
  ( (V!17822 (val!6313 Int)) )
))
(declare-datatypes ((ValueCell!5925 0))(
  ( (ValueCellFull!5925 (v!8596 V!17821)) (EmptyCell!5925) )
))
(declare-datatypes ((array!28837 0))(
  ( (array!28838 (arr!13848 (Array (_ BitVec 32) ValueCell!5925)) (size!14200 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28837)

(declare-fun e!270111 () Bool)

(declare-fun array_inv!9995 (array!28837) Bool)

(assert (=> start!41438 (and (array_inv!9995 _values!833) e!270111)))

(declare-fun b!462723 () Bool)

(declare-fun e!270109 () Bool)

(declare-fun mapRes!20479 () Bool)

(assert (=> b!462723 (= e!270111 (and e!270109 mapRes!20479))))

(declare-fun condMapEmpty!20479 () Bool)

(declare-fun mapDefault!20479 () ValueCell!5925)

(assert (=> b!462723 (= condMapEmpty!20479 (= (arr!13848 _values!833) ((as const (Array (_ BitVec 32) ValueCell!5925)) mapDefault!20479)))))

(declare-fun b!462724 () Bool)

(assert (=> b!462724 (= e!270109 tp_is_empty!12537)))

(declare-fun b!462725 () Bool)

(declare-fun res!276774 () Bool)

(assert (=> b!462725 (=> (not res!276774) (not e!270110))))

(declare-datatypes ((List!8364 0))(
  ( (Nil!8361) (Cons!8360 (h!9216 (_ BitVec 64)) (t!14316 List!8364)) )
))
(declare-fun arrayNoDuplicates!0 (array!28835 (_ BitVec 32) List!8364) Bool)

(assert (=> b!462725 (= res!276774 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8361))))

(declare-fun mapIsEmpty!20479 () Bool)

(assert (=> mapIsEmpty!20479 mapRes!20479))

(declare-fun b!462726 () Bool)

(declare-fun res!276775 () Bool)

(assert (=> b!462726 (=> (not res!276775) (not e!270110))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!462726 (= res!276775 (and (= (size!14200 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14199 _keys!1025) (size!14200 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!462727 () Bool)

(declare-fun e!270108 () Bool)

(assert (=> b!462727 (= e!270108 tp_is_empty!12537)))

(declare-fun mapNonEmpty!20479 () Bool)

(declare-fun tp!39321 () Bool)

(assert (=> mapNonEmpty!20479 (= mapRes!20479 (and tp!39321 e!270108))))

(declare-fun mapKey!20479 () (_ BitVec 32))

(declare-fun mapValue!20479 () ValueCell!5925)

(declare-fun mapRest!20479 () (Array (_ BitVec 32) ValueCell!5925))

(assert (=> mapNonEmpty!20479 (= (arr!13848 _values!833) (store mapRest!20479 mapKey!20479 mapValue!20479))))

(declare-fun b!462728 () Bool)

(assert (=> b!462728 (= e!270110 false)))

(declare-fun minValueBefore!38 () V!17821)

(declare-fun zeroValue!794 () V!17821)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((tuple2!8238 0))(
  ( (tuple2!8239 (_1!4129 (_ BitVec 64)) (_2!4129 V!17821)) )
))
(declare-datatypes ((List!8365 0))(
  ( (Nil!8362) (Cons!8361 (h!9217 tuple2!8238) (t!14317 List!8365)) )
))
(declare-datatypes ((ListLongMap!7165 0))(
  ( (ListLongMap!7166 (toList!3598 List!8365)) )
))
(declare-fun lt!209241 () ListLongMap!7165)

(declare-fun getCurrentListMapNoExtraKeys!1766 (array!28835 array!28837 (_ BitVec 32) (_ BitVec 32) V!17821 V!17821 (_ BitVec 32) Int) ListLongMap!7165)

(assert (=> b!462728 (= lt!209241 (getCurrentListMapNoExtraKeys!1766 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!462729 () Bool)

(declare-fun res!276776 () Bool)

(assert (=> b!462729 (=> (not res!276776) (not e!270110))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28835 (_ BitVec 32)) Bool)

(assert (=> b!462729 (= res!276776 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(assert (= (and start!41438 res!276773) b!462726))

(assert (= (and b!462726 res!276775) b!462729))

(assert (= (and b!462729 res!276776) b!462725))

(assert (= (and b!462725 res!276774) b!462728))

(assert (= (and b!462723 condMapEmpty!20479) mapIsEmpty!20479))

(assert (= (and b!462723 (not condMapEmpty!20479)) mapNonEmpty!20479))

(get-info :version)

(assert (= (and mapNonEmpty!20479 ((_ is ValueCellFull!5925) mapValue!20479)) b!462727))

(assert (= (and b!462723 ((_ is ValueCellFull!5925) mapDefault!20479)) b!462724))

(assert (= start!41438 b!462723))

(declare-fun m!445525 () Bool)

(assert (=> b!462725 m!445525))

(declare-fun m!445527 () Bool)

(assert (=> b!462729 m!445527))

(declare-fun m!445529 () Bool)

(assert (=> start!41438 m!445529))

(declare-fun m!445531 () Bool)

(assert (=> start!41438 m!445531))

(declare-fun m!445533 () Bool)

(assert (=> start!41438 m!445533))

(declare-fun m!445535 () Bool)

(assert (=> mapNonEmpty!20479 m!445535))

(declare-fun m!445537 () Bool)

(assert (=> b!462728 m!445537))

(check-sat (not b_next!11109) b_and!19463 tp_is_empty!12537 (not b!462725) (not b!462728) (not b!462729) (not mapNonEmpty!20479) (not start!41438))
(check-sat b_and!19463 (not b_next!11109))
