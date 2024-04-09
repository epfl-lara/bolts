; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!42284 () Bool)

(assert start!42284)

(declare-fun b_free!11781 () Bool)

(declare-fun b_next!11781 () Bool)

(assert (=> start!42284 (= b_free!11781 (not b_next!11781))))

(declare-fun tp!41371 () Bool)

(declare-fun b_and!20237 () Bool)

(assert (=> start!42284 (= tp!41371 b_and!20237)))

(declare-fun b!471556 () Bool)

(declare-fun e!276416 () Bool)

(declare-fun tp_is_empty!13209 () Bool)

(assert (=> b!471556 (= e!276416 tp_is_empty!13209)))

(declare-fun b!471557 () Bool)

(declare-fun res!281771 () Bool)

(declare-fun e!276417 () Bool)

(assert (=> b!471557 (=> (not res!281771) (not e!276417))))

(declare-datatypes ((array!30145 0))(
  ( (array!30146 (arr!14491 (Array (_ BitVec 32) (_ BitVec 64))) (size!14843 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30145)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30145 (_ BitVec 32)) Bool)

(assert (=> b!471557 (= res!281771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!471558 () Bool)

(assert (=> b!471558 (= e!276417 (not true))))

(declare-datatypes ((V!18717 0))(
  ( (V!18718 (val!6649 Int)) )
))
(declare-datatypes ((tuple2!8736 0))(
  ( (tuple2!8737 (_1!4378 (_ BitVec 64)) (_2!4378 V!18717)) )
))
(declare-datatypes ((List!8853 0))(
  ( (Nil!8850) (Cons!8849 (h!9705 tuple2!8736) (t!14827 List!8853)) )
))
(declare-datatypes ((ListLongMap!7663 0))(
  ( (ListLongMap!7664 (toList!3847 List!8853)) )
))
(declare-fun lt!213987 () ListLongMap!7663)

(declare-fun lt!213986 () ListLongMap!7663)

(assert (=> b!471558 (= lt!213987 lt!213986)))

(declare-fun minValueBefore!38 () V!18717)

(declare-fun zeroValue!794 () V!18717)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13820 0))(
  ( (Unit!13821) )
))
(declare-fun lt!213985 () Unit!13820)

(declare-datatypes ((ValueCell!6261 0))(
  ( (ValueCellFull!6261 (v!8936 V!18717)) (EmptyCell!6261) )
))
(declare-datatypes ((array!30147 0))(
  ( (array!30148 (arr!14492 (Array (_ BitVec 32) ValueCell!6261)) (size!14844 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30147)

(declare-fun minValueAfter!38 () V!18717)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!204 (array!30145 array!30147 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18717 V!18717 V!18717 V!18717 (_ BitVec 32) Int) Unit!13820)

(assert (=> b!471558 (= lt!213985 (lemmaNoChangeToArrayThenSameMapNoExtras!204 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2009 (array!30145 array!30147 (_ BitVec 32) (_ BitVec 32) V!18717 V!18717 (_ BitVec 32) Int) ListLongMap!7663)

(assert (=> b!471558 (= lt!213986 (getCurrentListMapNoExtraKeys!2009 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471558 (= lt!213987 (getCurrentListMapNoExtraKeys!2009 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471559 () Bool)

(declare-fun res!281770 () Bool)

(assert (=> b!471559 (=> (not res!281770) (not e!276417))))

(assert (=> b!471559 (= res!281770 (and (= (size!14844 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14843 _keys!1025) (size!14844 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471560 () Bool)

(declare-fun e!276415 () Bool)

(declare-fun mapRes!21520 () Bool)

(assert (=> b!471560 (= e!276415 (and e!276416 mapRes!21520))))

(declare-fun condMapEmpty!21520 () Bool)

(declare-fun mapDefault!21520 () ValueCell!6261)

(assert (=> b!471560 (= condMapEmpty!21520 (= (arr!14492 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6261)) mapDefault!21520)))))

(declare-fun mapIsEmpty!21520 () Bool)

(assert (=> mapIsEmpty!21520 mapRes!21520))

(declare-fun res!281769 () Bool)

(assert (=> start!42284 (=> (not res!281769) (not e!276417))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42284 (= res!281769 (validMask!0 mask!1365))))

(assert (=> start!42284 e!276417))

(assert (=> start!42284 tp_is_empty!13209))

(assert (=> start!42284 tp!41371))

(assert (=> start!42284 true))

(declare-fun array_inv!10456 (array!30145) Bool)

(assert (=> start!42284 (array_inv!10456 _keys!1025)))

(declare-fun array_inv!10457 (array!30147) Bool)

(assert (=> start!42284 (and (array_inv!10457 _values!833) e!276415)))

(declare-fun b!471561 () Bool)

(declare-fun e!276418 () Bool)

(assert (=> b!471561 (= e!276418 tp_is_empty!13209)))

(declare-fun b!471562 () Bool)

(declare-fun res!281768 () Bool)

(assert (=> b!471562 (=> (not res!281768) (not e!276417))))

(declare-datatypes ((List!8854 0))(
  ( (Nil!8851) (Cons!8850 (h!9706 (_ BitVec 64)) (t!14828 List!8854)) )
))
(declare-fun arrayNoDuplicates!0 (array!30145 (_ BitVec 32) List!8854) Bool)

(assert (=> b!471562 (= res!281768 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8851))))

(declare-fun mapNonEmpty!21520 () Bool)

(declare-fun tp!41370 () Bool)

(assert (=> mapNonEmpty!21520 (= mapRes!21520 (and tp!41370 e!276418))))

(declare-fun mapRest!21520 () (Array (_ BitVec 32) ValueCell!6261))

(declare-fun mapValue!21520 () ValueCell!6261)

(declare-fun mapKey!21520 () (_ BitVec 32))

(assert (=> mapNonEmpty!21520 (= (arr!14492 _values!833) (store mapRest!21520 mapKey!21520 mapValue!21520))))

(assert (= (and start!42284 res!281769) b!471559))

(assert (= (and b!471559 res!281770) b!471557))

(assert (= (and b!471557 res!281771) b!471562))

(assert (= (and b!471562 res!281768) b!471558))

(assert (= (and b!471560 condMapEmpty!21520) mapIsEmpty!21520))

(assert (= (and b!471560 (not condMapEmpty!21520)) mapNonEmpty!21520))

(get-info :version)

(assert (= (and mapNonEmpty!21520 ((_ is ValueCellFull!6261) mapValue!21520)) b!471561))

(assert (= (and b!471560 ((_ is ValueCellFull!6261) mapDefault!21520)) b!471556))

(assert (= start!42284 b!471560))

(declare-fun m!453679 () Bool)

(assert (=> b!471557 m!453679))

(declare-fun m!453681 () Bool)

(assert (=> mapNonEmpty!21520 m!453681))

(declare-fun m!453683 () Bool)

(assert (=> b!471562 m!453683))

(declare-fun m!453685 () Bool)

(assert (=> b!471558 m!453685))

(declare-fun m!453687 () Bool)

(assert (=> b!471558 m!453687))

(declare-fun m!453689 () Bool)

(assert (=> b!471558 m!453689))

(declare-fun m!453691 () Bool)

(assert (=> start!42284 m!453691))

(declare-fun m!453693 () Bool)

(assert (=> start!42284 m!453693))

(declare-fun m!453695 () Bool)

(assert (=> start!42284 m!453695))

(check-sat (not b!471557) tp_is_empty!13209 (not b_next!11781) (not mapNonEmpty!21520) (not b!471562) (not start!42284) (not b!471558) b_and!20237)
(check-sat b_and!20237 (not b_next!11781))
