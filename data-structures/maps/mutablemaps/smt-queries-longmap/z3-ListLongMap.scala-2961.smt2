; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42012 () Bool)

(assert start!42012)

(declare-fun b_free!11577 () Bool)

(declare-fun b_next!11577 () Bool)

(assert (=> start!42012 (= b_free!11577 (not b_next!11577))))

(declare-fun tp!40746 () Bool)

(declare-fun b_and!19993 () Bool)

(assert (=> start!42012 (= tp!40746 b_and!19993)))

(declare-fun b!468783 () Bool)

(declare-fun e!274448 () Bool)

(declare-fun e!274447 () Bool)

(declare-fun mapRes!21202 () Bool)

(assert (=> b!468783 (= e!274448 (and e!274447 mapRes!21202))))

(declare-fun condMapEmpty!21202 () Bool)

(declare-datatypes ((V!18445 0))(
  ( (V!18446 (val!6547 Int)) )
))
(declare-datatypes ((ValueCell!6159 0))(
  ( (ValueCellFull!6159 (v!8832 V!18445)) (EmptyCell!6159) )
))
(declare-datatypes ((array!29743 0))(
  ( (array!29744 (arr!14294 (Array (_ BitVec 32) ValueCell!6159)) (size!14646 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29743)

(declare-fun mapDefault!21202 () ValueCell!6159)

(assert (=> b!468783 (= condMapEmpty!21202 (= (arr!14294 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6159)) mapDefault!21202)))))

(declare-fun mapNonEmpty!21202 () Bool)

(declare-fun tp!40747 () Bool)

(declare-fun e!274450 () Bool)

(assert (=> mapNonEmpty!21202 (= mapRes!21202 (and tp!40747 e!274450))))

(declare-fun mapRest!21202 () (Array (_ BitVec 32) ValueCell!6159))

(declare-fun mapValue!21202 () ValueCell!6159)

(declare-fun mapKey!21202 () (_ BitVec 32))

(assert (=> mapNonEmpty!21202 (= (arr!14294 _values!833) (store mapRest!21202 mapKey!21202 mapValue!21202))))

(declare-fun b!468784 () Bool)

(declare-fun res!280229 () Bool)

(declare-fun e!274449 () Bool)

(assert (=> b!468784 (=> (not res!280229) (not e!274449))))

(declare-datatypes ((array!29745 0))(
  ( (array!29746 (arr!14295 (Array (_ BitVec 32) (_ BitVec 64))) (size!14647 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29745)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29745 (_ BitVec 32)) Bool)

(assert (=> b!468784 (= res!280229 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21202 () Bool)

(assert (=> mapIsEmpty!21202 mapRes!21202))

(declare-fun b!468785 () Bool)

(declare-fun e!274451 () Bool)

(assert (=> b!468785 (= e!274449 (not e!274451))))

(declare-fun res!280227 () Bool)

(assert (=> b!468785 (=> res!280227 e!274451)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!468785 (= res!280227 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8588 0))(
  ( (tuple2!8589 (_1!4304 (_ BitVec 64)) (_2!4304 V!18445)) )
))
(declare-datatypes ((List!8708 0))(
  ( (Nil!8705) (Cons!8704 (h!9560 tuple2!8588) (t!14674 List!8708)) )
))
(declare-datatypes ((ListLongMap!7515 0))(
  ( (ListLongMap!7516 (toList!3773 List!8708)) )
))
(declare-fun lt!212278 () ListLongMap!7515)

(declare-fun lt!212275 () ListLongMap!7515)

(assert (=> b!468785 (= lt!212278 lt!212275)))

(declare-fun minValueBefore!38 () V!18445)

(declare-datatypes ((Unit!13668 0))(
  ( (Unit!13669) )
))
(declare-fun lt!212279 () Unit!13668)

(declare-fun zeroValue!794 () V!18445)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18445)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!132 (array!29745 array!29743 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18445 V!18445 V!18445 V!18445 (_ BitVec 32) Int) Unit!13668)

(assert (=> b!468785 (= lt!212279 (lemmaNoChangeToArrayThenSameMapNoExtras!132 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1937 (array!29745 array!29743 (_ BitVec 32) (_ BitVec 32) V!18445 V!18445 (_ BitVec 32) Int) ListLongMap!7515)

(assert (=> b!468785 (= lt!212275 (getCurrentListMapNoExtraKeys!1937 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468785 (= lt!212278 (getCurrentListMapNoExtraKeys!1937 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468786 () Bool)

(declare-fun tp_is_empty!13005 () Bool)

(assert (=> b!468786 (= e!274450 tp_is_empty!13005)))

(declare-fun b!468787 () Bool)

(declare-fun res!280228 () Bool)

(assert (=> b!468787 (=> (not res!280228) (not e!274449))))

(declare-datatypes ((List!8709 0))(
  ( (Nil!8706) (Cons!8705 (h!9561 (_ BitVec 64)) (t!14675 List!8709)) )
))
(declare-fun arrayNoDuplicates!0 (array!29745 (_ BitVec 32) List!8709) Bool)

(assert (=> b!468787 (= res!280228 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8706))))

(declare-fun res!280226 () Bool)

(assert (=> start!42012 (=> (not res!280226) (not e!274449))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42012 (= res!280226 (validMask!0 mask!1365))))

(assert (=> start!42012 e!274449))

(assert (=> start!42012 tp_is_empty!13005))

(assert (=> start!42012 tp!40746))

(assert (=> start!42012 true))

(declare-fun array_inv!10312 (array!29745) Bool)

(assert (=> start!42012 (array_inv!10312 _keys!1025)))

(declare-fun array_inv!10313 (array!29743) Bool)

(assert (=> start!42012 (and (array_inv!10313 _values!833) e!274448)))

(declare-fun b!468788 () Bool)

(declare-fun res!280225 () Bool)

(assert (=> b!468788 (=> (not res!280225) (not e!274449))))

(assert (=> b!468788 (= res!280225 (and (= (size!14646 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14647 _keys!1025) (size!14646 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!468789 () Bool)

(assert (=> b!468789 (= e!274447 tp_is_empty!13005)))

(declare-fun b!468790 () Bool)

(assert (=> b!468790 (= e!274451 true)))

(declare-fun lt!212277 () tuple2!8588)

(declare-fun +!1662 (ListLongMap!7515 tuple2!8588) ListLongMap!7515)

(assert (=> b!468790 (= (+!1662 lt!212278 lt!212277) (+!1662 (+!1662 lt!212278 (tuple2!8589 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212277))))

(assert (=> b!468790 (= lt!212277 (tuple2!8589 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!212273 () Unit!13668)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!103 (ListLongMap!7515 (_ BitVec 64) V!18445 V!18445) Unit!13668)

(assert (=> b!468790 (= lt!212273 (addSameAsAddTwiceSameKeyDiffValues!103 lt!212278 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!212276 () ListLongMap!7515)

(declare-fun getCurrentListMap!2184 (array!29745 array!29743 (_ BitVec 32) (_ BitVec 32) V!18445 V!18445 (_ BitVec 32) Int) ListLongMap!7515)

(assert (=> b!468790 (= lt!212276 (getCurrentListMap!2184 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212274 () ListLongMap!7515)

(assert (=> b!468790 (= lt!212274 (getCurrentListMap!2184 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!42012 res!280226) b!468788))

(assert (= (and b!468788 res!280225) b!468784))

(assert (= (and b!468784 res!280229) b!468787))

(assert (= (and b!468787 res!280228) b!468785))

(assert (= (and b!468785 (not res!280227)) b!468790))

(assert (= (and b!468783 condMapEmpty!21202) mapIsEmpty!21202))

(assert (= (and b!468783 (not condMapEmpty!21202)) mapNonEmpty!21202))

(get-info :version)

(assert (= (and mapNonEmpty!21202 ((_ is ValueCellFull!6159) mapValue!21202)) b!468786))

(assert (= (and b!468783 ((_ is ValueCellFull!6159) mapDefault!21202)) b!468789))

(assert (= start!42012 b!468783))

(declare-fun m!450891 () Bool)

(assert (=> mapNonEmpty!21202 m!450891))

(declare-fun m!450893 () Bool)

(assert (=> b!468787 m!450893))

(declare-fun m!450895 () Bool)

(assert (=> b!468790 m!450895))

(declare-fun m!450897 () Bool)

(assert (=> b!468790 m!450897))

(declare-fun m!450899 () Bool)

(assert (=> b!468790 m!450899))

(declare-fun m!450901 () Bool)

(assert (=> b!468790 m!450901))

(assert (=> b!468790 m!450899))

(declare-fun m!450903 () Bool)

(assert (=> b!468790 m!450903))

(declare-fun m!450905 () Bool)

(assert (=> b!468790 m!450905))

(declare-fun m!450907 () Bool)

(assert (=> b!468784 m!450907))

(declare-fun m!450909 () Bool)

(assert (=> start!42012 m!450909))

(declare-fun m!450911 () Bool)

(assert (=> start!42012 m!450911))

(declare-fun m!450913 () Bool)

(assert (=> start!42012 m!450913))

(declare-fun m!450915 () Bool)

(assert (=> b!468785 m!450915))

(declare-fun m!450917 () Bool)

(assert (=> b!468785 m!450917))

(declare-fun m!450919 () Bool)

(assert (=> b!468785 m!450919))

(check-sat (not b_next!11577) (not b!468784) tp_is_empty!13005 (not b!468790) (not b!468787) (not start!42012) (not mapNonEmpty!21202) (not b!468785) b_and!19993)
(check-sat b_and!19993 (not b_next!11577))
