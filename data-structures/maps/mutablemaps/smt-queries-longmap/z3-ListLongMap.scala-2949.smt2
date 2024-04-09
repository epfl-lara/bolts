; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41924 () Bool)

(assert start!41924)

(declare-fun b_free!11505 () Bool)

(declare-fun b_next!11505 () Bool)

(assert (=> start!41924 (= b_free!11505 (not b_next!11505))))

(declare-fun tp!40528 () Bool)

(declare-fun b_and!19911 () Bool)

(assert (=> start!41924 (= tp!40528 b_and!19911)))

(declare-fun b!467772 () Bool)

(declare-fun e!273709 () Bool)

(declare-fun e!273705 () Bool)

(assert (=> b!467772 (= e!273709 (not e!273705))))

(declare-fun res!279629 () Bool)

(assert (=> b!467772 (=> res!279629 e!273705)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!467772 (= res!279629 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18349 0))(
  ( (V!18350 (val!6511 Int)) )
))
(declare-datatypes ((tuple2!8532 0))(
  ( (tuple2!8533 (_1!4276 (_ BitVec 64)) (_2!4276 V!18349)) )
))
(declare-datatypes ((List!8651 0))(
  ( (Nil!8648) (Cons!8647 (h!9503 tuple2!8532) (t!14615 List!8651)) )
))
(declare-datatypes ((ListLongMap!7459 0))(
  ( (ListLongMap!7460 (toList!3745 List!8651)) )
))
(declare-fun lt!211558 () ListLongMap!7459)

(declare-fun lt!211559 () ListLongMap!7459)

(assert (=> b!467772 (= lt!211558 lt!211559)))

(declare-datatypes ((Unit!13611 0))(
  ( (Unit!13612) )
))
(declare-fun lt!211561 () Unit!13611)

(declare-fun minValueBefore!38 () V!18349)

(declare-fun zeroValue!794 () V!18349)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29599 0))(
  ( (array!29600 (arr!14223 (Array (_ BitVec 32) (_ BitVec 64))) (size!14575 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29599)

(declare-datatypes ((ValueCell!6123 0))(
  ( (ValueCellFull!6123 (v!8796 V!18349)) (EmptyCell!6123) )
))
(declare-datatypes ((array!29601 0))(
  ( (array!29602 (arr!14224 (Array (_ BitVec 32) ValueCell!6123)) (size!14576 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29601)

(declare-fun minValueAfter!38 () V!18349)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!106 (array!29599 array!29601 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18349 V!18349 V!18349 V!18349 (_ BitVec 32) Int) Unit!13611)

(assert (=> b!467772 (= lt!211561 (lemmaNoChangeToArrayThenSameMapNoExtras!106 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1911 (array!29599 array!29601 (_ BitVec 32) (_ BitVec 32) V!18349 V!18349 (_ BitVec 32) Int) ListLongMap!7459)

(assert (=> b!467772 (= lt!211559 (getCurrentListMapNoExtraKeys!1911 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467772 (= lt!211558 (getCurrentListMapNoExtraKeys!1911 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467773 () Bool)

(declare-fun res!279628 () Bool)

(assert (=> b!467773 (=> (not res!279628) (not e!273709))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29599 (_ BitVec 32)) Bool)

(assert (=> b!467773 (= res!279628 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21091 () Bool)

(declare-fun mapRes!21091 () Bool)

(declare-fun tp!40527 () Bool)

(declare-fun e!273707 () Bool)

(assert (=> mapNonEmpty!21091 (= mapRes!21091 (and tp!40527 e!273707))))

(declare-fun mapRest!21091 () (Array (_ BitVec 32) ValueCell!6123))

(declare-fun mapValue!21091 () ValueCell!6123)

(declare-fun mapKey!21091 () (_ BitVec 32))

(assert (=> mapNonEmpty!21091 (= (arr!14224 _values!833) (store mapRest!21091 mapKey!21091 mapValue!21091))))

(declare-fun b!467774 () Bool)

(declare-fun res!279630 () Bool)

(assert (=> b!467774 (=> (not res!279630) (not e!273709))))

(declare-datatypes ((List!8652 0))(
  ( (Nil!8649) (Cons!8648 (h!9504 (_ BitVec 64)) (t!14616 List!8652)) )
))
(declare-fun arrayNoDuplicates!0 (array!29599 (_ BitVec 32) List!8652) Bool)

(assert (=> b!467774 (= res!279630 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8649))))

(declare-fun mapIsEmpty!21091 () Bool)

(assert (=> mapIsEmpty!21091 mapRes!21091))

(declare-fun b!467771 () Bool)

(declare-fun res!279631 () Bool)

(assert (=> b!467771 (=> (not res!279631) (not e!273709))))

(assert (=> b!467771 (= res!279631 (and (= (size!14576 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14575 _keys!1025) (size!14576 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!279627 () Bool)

(assert (=> start!41924 (=> (not res!279627) (not e!273709))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41924 (= res!279627 (validMask!0 mask!1365))))

(assert (=> start!41924 e!273709))

(declare-fun tp_is_empty!12933 () Bool)

(assert (=> start!41924 tp_is_empty!12933))

(assert (=> start!41924 tp!40528))

(assert (=> start!41924 true))

(declare-fun array_inv!10260 (array!29599) Bool)

(assert (=> start!41924 (array_inv!10260 _keys!1025)))

(declare-fun e!273710 () Bool)

(declare-fun array_inv!10261 (array!29601) Bool)

(assert (=> start!41924 (and (array_inv!10261 _values!833) e!273710)))

(declare-fun b!467775 () Bool)

(assert (=> b!467775 (= e!273705 true)))

(declare-fun lt!211560 () ListLongMap!7459)

(declare-fun getCurrentListMap!2163 (array!29599 array!29601 (_ BitVec 32) (_ BitVec 32) V!18349 V!18349 (_ BitVec 32) Int) ListLongMap!7459)

(assert (=> b!467775 (= lt!211560 (getCurrentListMap!2163 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467776 () Bool)

(declare-fun e!273708 () Bool)

(assert (=> b!467776 (= e!273710 (and e!273708 mapRes!21091))))

(declare-fun condMapEmpty!21091 () Bool)

(declare-fun mapDefault!21091 () ValueCell!6123)

(assert (=> b!467776 (= condMapEmpty!21091 (= (arr!14224 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6123)) mapDefault!21091)))))

(declare-fun b!467777 () Bool)

(assert (=> b!467777 (= e!273708 tp_is_empty!12933)))

(declare-fun b!467778 () Bool)

(assert (=> b!467778 (= e!273707 tp_is_empty!12933)))

(assert (= (and start!41924 res!279627) b!467771))

(assert (= (and b!467771 res!279631) b!467773))

(assert (= (and b!467773 res!279628) b!467774))

(assert (= (and b!467774 res!279630) b!467772))

(assert (= (and b!467772 (not res!279629)) b!467775))

(assert (= (and b!467776 condMapEmpty!21091) mapIsEmpty!21091))

(assert (= (and b!467776 (not condMapEmpty!21091)) mapNonEmpty!21091))

(get-info :version)

(assert (= (and mapNonEmpty!21091 ((_ is ValueCellFull!6123) mapValue!21091)) b!467778))

(assert (= (and b!467776 ((_ is ValueCellFull!6123) mapDefault!21091)) b!467777))

(assert (= start!41924 b!467776))

(declare-fun m!449869 () Bool)

(assert (=> b!467772 m!449869))

(declare-fun m!449871 () Bool)

(assert (=> b!467772 m!449871))

(declare-fun m!449873 () Bool)

(assert (=> b!467772 m!449873))

(declare-fun m!449875 () Bool)

(assert (=> b!467774 m!449875))

(declare-fun m!449877 () Bool)

(assert (=> b!467773 m!449877))

(declare-fun m!449879 () Bool)

(assert (=> mapNonEmpty!21091 m!449879))

(declare-fun m!449881 () Bool)

(assert (=> b!467775 m!449881))

(declare-fun m!449883 () Bool)

(assert (=> start!41924 m!449883))

(declare-fun m!449885 () Bool)

(assert (=> start!41924 m!449885))

(declare-fun m!449887 () Bool)

(assert (=> start!41924 m!449887))

(check-sat tp_is_empty!12933 (not b!467773) (not b_next!11505) (not start!41924) b_and!19911 (not mapNonEmpty!21091) (not b!467774) (not b!467775) (not b!467772))
(check-sat b_and!19911 (not b_next!11505))
