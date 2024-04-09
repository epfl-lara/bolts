; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42490 () Bool)

(assert start!42490)

(declare-fun b_free!11937 () Bool)

(declare-fun b_next!11937 () Bool)

(assert (=> start!42490 (= b_free!11937 (not b_next!11937))))

(declare-fun tp!41847 () Bool)

(declare-fun b_and!20423 () Bool)

(assert (=> start!42490 (= tp!41847 b_and!20423)))

(declare-fun res!283068 () Bool)

(declare-fun e!278045 () Bool)

(assert (=> start!42490 (=> (not res!283068) (not e!278045))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42490 (= res!283068 (validMask!0 mask!1365))))

(assert (=> start!42490 e!278045))

(declare-fun tp_is_empty!13365 () Bool)

(assert (=> start!42490 tp_is_empty!13365))

(assert (=> start!42490 tp!41847))

(assert (=> start!42490 true))

(declare-datatypes ((array!30447 0))(
  ( (array!30448 (arr!14639 (Array (_ BitVec 32) (_ BitVec 64))) (size!14991 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30447)

(declare-fun array_inv!10550 (array!30447) Bool)

(assert (=> start!42490 (array_inv!10550 _keys!1025)))

(declare-datatypes ((V!18925 0))(
  ( (V!18926 (val!6727 Int)) )
))
(declare-datatypes ((ValueCell!6339 0))(
  ( (ValueCellFull!6339 (v!9015 V!18925)) (EmptyCell!6339) )
))
(declare-datatypes ((array!30449 0))(
  ( (array!30450 (arr!14640 (Array (_ BitVec 32) ValueCell!6339)) (size!14992 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30449)

(declare-fun e!278041 () Bool)

(declare-fun array_inv!10551 (array!30449) Bool)

(assert (=> start!42490 (and (array_inv!10551 _values!833) e!278041)))

(declare-fun b!473802 () Bool)

(declare-fun e!278042 () Bool)

(assert (=> b!473802 (= e!278042 tp_is_empty!13365)))

(declare-fun b!473803 () Bool)

(declare-fun e!278043 () Bool)

(assert (=> b!473803 (= e!278043 tp_is_empty!13365)))

(declare-fun b!473804 () Bool)

(declare-fun e!278040 () Bool)

(assert (=> b!473804 (= e!278045 (not e!278040))))

(declare-fun res!283069 () Bool)

(assert (=> b!473804 (=> res!283069 e!278040)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473804 (= res!283069 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8862 0))(
  ( (tuple2!8863 (_1!4441 (_ BitVec 64)) (_2!4441 V!18925)) )
))
(declare-datatypes ((List!8970 0))(
  ( (Nil!8967) (Cons!8966 (h!9822 tuple2!8862) (t!14950 List!8970)) )
))
(declare-datatypes ((ListLongMap!7789 0))(
  ( (ListLongMap!7790 (toList!3910 List!8970)) )
))
(declare-fun lt!215637 () ListLongMap!7789)

(declare-fun lt!215634 () ListLongMap!7789)

(assert (=> b!473804 (= lt!215637 lt!215634)))

(declare-fun minValueBefore!38 () V!18925)

(declare-fun zeroValue!794 () V!18925)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13943 0))(
  ( (Unit!13944) )
))
(declare-fun lt!215636 () Unit!13943)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18925)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!261 (array!30447 array!30449 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18925 V!18925 V!18925 V!18925 (_ BitVec 32) Int) Unit!13943)

(assert (=> b!473804 (= lt!215636 (lemmaNoChangeToArrayThenSameMapNoExtras!261 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2066 (array!30447 array!30449 (_ BitVec 32) (_ BitVec 32) V!18925 V!18925 (_ BitVec 32) Int) ListLongMap!7789)

(assert (=> b!473804 (= lt!215634 (getCurrentListMapNoExtraKeys!2066 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473804 (= lt!215637 (getCurrentListMapNoExtraKeys!2066 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473805 () Bool)

(declare-fun res!283067 () Bool)

(assert (=> b!473805 (=> (not res!283067) (not e!278045))))

(declare-datatypes ((List!8971 0))(
  ( (Nil!8968) (Cons!8967 (h!9823 (_ BitVec 64)) (t!14951 List!8971)) )
))
(declare-fun arrayNoDuplicates!0 (array!30447 (_ BitVec 32) List!8971) Bool)

(assert (=> b!473805 (= res!283067 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8968))))

(declare-fun b!473806 () Bool)

(declare-fun res!283066 () Bool)

(assert (=> b!473806 (=> (not res!283066) (not e!278045))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30447 (_ BitVec 32)) Bool)

(assert (=> b!473806 (= res!283066 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!21763 () Bool)

(declare-fun mapRes!21763 () Bool)

(assert (=> mapIsEmpty!21763 mapRes!21763))

(declare-fun mapNonEmpty!21763 () Bool)

(declare-fun tp!41848 () Bool)

(assert (=> mapNonEmpty!21763 (= mapRes!21763 (and tp!41848 e!278043))))

(declare-fun mapValue!21763 () ValueCell!6339)

(declare-fun mapKey!21763 () (_ BitVec 32))

(declare-fun mapRest!21763 () (Array (_ BitVec 32) ValueCell!6339))

(assert (=> mapNonEmpty!21763 (= (arr!14640 _values!833) (store mapRest!21763 mapKey!21763 mapValue!21763))))

(declare-fun b!473807 () Bool)

(assert (=> b!473807 (= e!278041 (and e!278042 mapRes!21763))))

(declare-fun condMapEmpty!21763 () Bool)

(declare-fun mapDefault!21763 () ValueCell!6339)

(assert (=> b!473807 (= condMapEmpty!21763 (= (arr!14640 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6339)) mapDefault!21763)))))

(declare-fun b!473808 () Bool)

(assert (=> b!473808 (= e!278040 true)))

(declare-fun lt!215641 () ListLongMap!7789)

(declare-fun lt!215640 () tuple2!8862)

(declare-fun +!1716 (ListLongMap!7789 tuple2!8862) ListLongMap!7789)

(assert (=> b!473808 (= (+!1716 lt!215641 lt!215640) (+!1716 (+!1716 lt!215641 (tuple2!8863 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!215640))))

(assert (=> b!473808 (= lt!215640 (tuple2!8863 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!215635 () Unit!13943)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!153 (ListLongMap!7789 (_ BitVec 64) V!18925 V!18925) Unit!13943)

(assert (=> b!473808 (= lt!215635 (addSameAsAddTwiceSameKeyDiffValues!153 lt!215641 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> b!473808 (= lt!215641 (+!1716 lt!215637 (tuple2!8863 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!215639 () ListLongMap!7789)

(declare-fun getCurrentListMap!2253 (array!30447 array!30449 (_ BitVec 32) (_ BitVec 32) V!18925 V!18925 (_ BitVec 32) Int) ListLongMap!7789)

(assert (=> b!473808 (= lt!215639 (getCurrentListMap!2253 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215638 () ListLongMap!7789)

(assert (=> b!473808 (= lt!215638 (getCurrentListMap!2253 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473809 () Bool)

(declare-fun res!283070 () Bool)

(assert (=> b!473809 (=> (not res!283070) (not e!278045))))

(assert (=> b!473809 (= res!283070 (and (= (size!14992 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14991 _keys!1025) (size!14992 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!42490 res!283068) b!473809))

(assert (= (and b!473809 res!283070) b!473806))

(assert (= (and b!473806 res!283066) b!473805))

(assert (= (and b!473805 res!283067) b!473804))

(assert (= (and b!473804 (not res!283069)) b!473808))

(assert (= (and b!473807 condMapEmpty!21763) mapIsEmpty!21763))

(assert (= (and b!473807 (not condMapEmpty!21763)) mapNonEmpty!21763))

(get-info :version)

(assert (= (and mapNonEmpty!21763 ((_ is ValueCellFull!6339) mapValue!21763)) b!473803))

(assert (= (and b!473807 ((_ is ValueCellFull!6339) mapDefault!21763)) b!473802))

(assert (= start!42490 b!473807))

(declare-fun m!456045 () Bool)

(assert (=> mapNonEmpty!21763 m!456045))

(declare-fun m!456047 () Bool)

(assert (=> start!42490 m!456047))

(declare-fun m!456049 () Bool)

(assert (=> start!42490 m!456049))

(declare-fun m!456051 () Bool)

(assert (=> start!42490 m!456051))

(declare-fun m!456053 () Bool)

(assert (=> b!473805 m!456053))

(declare-fun m!456055 () Bool)

(assert (=> b!473808 m!456055))

(declare-fun m!456057 () Bool)

(assert (=> b!473808 m!456057))

(declare-fun m!456059 () Bool)

(assert (=> b!473808 m!456059))

(declare-fun m!456061 () Bool)

(assert (=> b!473808 m!456061))

(assert (=> b!473808 m!456057))

(declare-fun m!456063 () Bool)

(assert (=> b!473808 m!456063))

(declare-fun m!456065 () Bool)

(assert (=> b!473808 m!456065))

(declare-fun m!456067 () Bool)

(assert (=> b!473808 m!456067))

(declare-fun m!456069 () Bool)

(assert (=> b!473804 m!456069))

(declare-fun m!456071 () Bool)

(assert (=> b!473804 m!456071))

(declare-fun m!456073 () Bool)

(assert (=> b!473804 m!456073))

(declare-fun m!456075 () Bool)

(assert (=> b!473806 m!456075))

(check-sat b_and!20423 (not b!473806) (not b!473805) (not b!473808) (not b_next!11937) (not start!42490) (not b!473804) (not mapNonEmpty!21763) tp_is_empty!13365)
(check-sat b_and!20423 (not b_next!11937))
