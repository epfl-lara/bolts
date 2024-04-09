; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42296 () Bool)

(assert start!42296)

(declare-fun b_free!11793 () Bool)

(declare-fun b_next!11793 () Bool)

(assert (=> start!42296 (= b_free!11793 (not b_next!11793))))

(declare-fun tp!41407 () Bool)

(declare-fun b_and!20249 () Bool)

(assert (=> start!42296 (= tp!41407 b_and!20249)))

(declare-fun b!471682 () Bool)

(declare-fun res!281843 () Bool)

(declare-fun e!276504 () Bool)

(assert (=> b!471682 (=> (not res!281843) (not e!276504))))

(declare-datatypes ((array!30165 0))(
  ( (array!30166 (arr!14501 (Array (_ BitVec 32) (_ BitVec 64))) (size!14853 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30165)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30165 (_ BitVec 32)) Bool)

(assert (=> b!471682 (= res!281843 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21538 () Bool)

(declare-fun mapRes!21538 () Bool)

(assert (=> mapIsEmpty!21538 mapRes!21538))

(declare-fun mapNonEmpty!21538 () Bool)

(declare-fun tp!41406 () Bool)

(declare-fun e!276505 () Bool)

(assert (=> mapNonEmpty!21538 (= mapRes!21538 (and tp!41406 e!276505))))

(declare-datatypes ((V!18733 0))(
  ( (V!18734 (val!6655 Int)) )
))
(declare-datatypes ((ValueCell!6267 0))(
  ( (ValueCellFull!6267 (v!8942 V!18733)) (EmptyCell!6267) )
))
(declare-fun mapRest!21538 () (Array (_ BitVec 32) ValueCell!6267))

(declare-datatypes ((array!30167 0))(
  ( (array!30168 (arr!14502 (Array (_ BitVec 32) ValueCell!6267)) (size!14854 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30167)

(declare-fun mapKey!21538 () (_ BitVec 32))

(declare-fun mapValue!21538 () ValueCell!6267)

(assert (=> mapNonEmpty!21538 (= (arr!14502 _values!833) (store mapRest!21538 mapKey!21538 mapValue!21538))))

(declare-fun b!471683 () Bool)

(declare-fun res!281842 () Bool)

(assert (=> b!471683 (=> (not res!281842) (not e!276504))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!471683 (= res!281842 (and (= (size!14854 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14853 _keys!1025) (size!14854 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471684 () Bool)

(assert (=> b!471684 (= e!276504 (not true))))

(declare-datatypes ((tuple2!8744 0))(
  ( (tuple2!8745 (_1!4382 (_ BitVec 64)) (_2!4382 V!18733)) )
))
(declare-datatypes ((List!8860 0))(
  ( (Nil!8857) (Cons!8856 (h!9712 tuple2!8744) (t!14834 List!8860)) )
))
(declare-datatypes ((ListLongMap!7671 0))(
  ( (ListLongMap!7672 (toList!3851 List!8860)) )
))
(declare-fun lt!214040 () ListLongMap!7671)

(declare-fun lt!214039 () ListLongMap!7671)

(assert (=> b!471684 (= lt!214040 lt!214039)))

(declare-fun minValueBefore!38 () V!18733)

(declare-fun zeroValue!794 () V!18733)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13828 0))(
  ( (Unit!13829) )
))
(declare-fun lt!214041 () Unit!13828)

(declare-fun minValueAfter!38 () V!18733)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!208 (array!30165 array!30167 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18733 V!18733 V!18733 V!18733 (_ BitVec 32) Int) Unit!13828)

(assert (=> b!471684 (= lt!214041 (lemmaNoChangeToArrayThenSameMapNoExtras!208 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2013 (array!30165 array!30167 (_ BitVec 32) (_ BitVec 32) V!18733 V!18733 (_ BitVec 32) Int) ListLongMap!7671)

(assert (=> b!471684 (= lt!214039 (getCurrentListMapNoExtraKeys!2013 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471684 (= lt!214040 (getCurrentListMapNoExtraKeys!2013 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471685 () Bool)

(declare-fun tp_is_empty!13221 () Bool)

(assert (=> b!471685 (= e!276505 tp_is_empty!13221)))

(declare-fun b!471686 () Bool)

(declare-fun e!276508 () Bool)

(declare-fun e!276506 () Bool)

(assert (=> b!471686 (= e!276508 (and e!276506 mapRes!21538))))

(declare-fun condMapEmpty!21538 () Bool)

(declare-fun mapDefault!21538 () ValueCell!6267)

(assert (=> b!471686 (= condMapEmpty!21538 (= (arr!14502 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6267)) mapDefault!21538)))))

(declare-fun b!471687 () Bool)

(assert (=> b!471687 (= e!276506 tp_is_empty!13221)))

(declare-fun b!471688 () Bool)

(declare-fun res!281841 () Bool)

(assert (=> b!471688 (=> (not res!281841) (not e!276504))))

(declare-datatypes ((List!8861 0))(
  ( (Nil!8858) (Cons!8857 (h!9713 (_ BitVec 64)) (t!14835 List!8861)) )
))
(declare-fun arrayNoDuplicates!0 (array!30165 (_ BitVec 32) List!8861) Bool)

(assert (=> b!471688 (= res!281841 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8858))))

(declare-fun res!281840 () Bool)

(assert (=> start!42296 (=> (not res!281840) (not e!276504))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42296 (= res!281840 (validMask!0 mask!1365))))

(assert (=> start!42296 e!276504))

(assert (=> start!42296 tp_is_empty!13221))

(assert (=> start!42296 tp!41407))

(assert (=> start!42296 true))

(declare-fun array_inv!10462 (array!30165) Bool)

(assert (=> start!42296 (array_inv!10462 _keys!1025)))

(declare-fun array_inv!10463 (array!30167) Bool)

(assert (=> start!42296 (and (array_inv!10463 _values!833) e!276508)))

(assert (= (and start!42296 res!281840) b!471683))

(assert (= (and b!471683 res!281842) b!471682))

(assert (= (and b!471682 res!281843) b!471688))

(assert (= (and b!471688 res!281841) b!471684))

(assert (= (and b!471686 condMapEmpty!21538) mapIsEmpty!21538))

(assert (= (and b!471686 (not condMapEmpty!21538)) mapNonEmpty!21538))

(get-info :version)

(assert (= (and mapNonEmpty!21538 ((_ is ValueCellFull!6267) mapValue!21538)) b!471685))

(assert (= (and b!471686 ((_ is ValueCellFull!6267) mapDefault!21538)) b!471687))

(assert (= start!42296 b!471686))

(declare-fun m!453787 () Bool)

(assert (=> start!42296 m!453787))

(declare-fun m!453789 () Bool)

(assert (=> start!42296 m!453789))

(declare-fun m!453791 () Bool)

(assert (=> start!42296 m!453791))

(declare-fun m!453793 () Bool)

(assert (=> b!471682 m!453793))

(declare-fun m!453795 () Bool)

(assert (=> mapNonEmpty!21538 m!453795))

(declare-fun m!453797 () Bool)

(assert (=> b!471684 m!453797))

(declare-fun m!453799 () Bool)

(assert (=> b!471684 m!453799))

(declare-fun m!453801 () Bool)

(assert (=> b!471684 m!453801))

(declare-fun m!453803 () Bool)

(assert (=> b!471688 m!453803))

(check-sat b_and!20249 (not b!471688) (not b!471682) tp_is_empty!13221 (not mapNonEmpty!21538) (not b!471684) (not start!42296) (not b_next!11793))
(check-sat b_and!20249 (not b_next!11793))
