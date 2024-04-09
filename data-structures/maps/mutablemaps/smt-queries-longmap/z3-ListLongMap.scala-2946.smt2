; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41906 () Bool)

(assert start!41906)

(declare-fun b_free!11487 () Bool)

(declare-fun b_next!11487 () Bool)

(assert (=> start!41906 (= b_free!11487 (not b_next!11487))))

(declare-fun tp!40474 () Bool)

(declare-fun b_and!19893 () Bool)

(assert (=> start!41906 (= tp!40474 b_and!19893)))

(declare-fun b!467556 () Bool)

(declare-fun e!273546 () Bool)

(declare-fun tp_is_empty!12915 () Bool)

(assert (=> b!467556 (= e!273546 tp_is_empty!12915)))

(declare-fun b!467557 () Bool)

(declare-fun res!279496 () Bool)

(declare-fun e!273544 () Bool)

(assert (=> b!467557 (=> (not res!279496) (not e!273544))))

(declare-datatypes ((array!29567 0))(
  ( (array!29568 (arr!14207 (Array (_ BitVec 32) (_ BitVec 64))) (size!14559 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29567)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29567 (_ BitVec 32)) Bool)

(assert (=> b!467557 (= res!279496 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!467558 () Bool)

(declare-fun res!279495 () Bool)

(assert (=> b!467558 (=> (not res!279495) (not e!273544))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((V!18325 0))(
  ( (V!18326 (val!6502 Int)) )
))
(declare-datatypes ((ValueCell!6114 0))(
  ( (ValueCellFull!6114 (v!8787 V!18325)) (EmptyCell!6114) )
))
(declare-datatypes ((array!29569 0))(
  ( (array!29570 (arr!14208 (Array (_ BitVec 32) ValueCell!6114)) (size!14560 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29569)

(assert (=> b!467558 (= res!279495 (and (= (size!14560 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14559 _keys!1025) (size!14560 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467559 () Bool)

(declare-fun res!279494 () Bool)

(assert (=> b!467559 (=> (not res!279494) (not e!273544))))

(declare-datatypes ((List!8640 0))(
  ( (Nil!8637) (Cons!8636 (h!9492 (_ BitVec 64)) (t!14604 List!8640)) )
))
(declare-fun arrayNoDuplicates!0 (array!29567 (_ BitVec 32) List!8640) Bool)

(assert (=> b!467559 (= res!279494 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8637))))

(declare-fun mapNonEmpty!21064 () Bool)

(declare-fun mapRes!21064 () Bool)

(declare-fun tp!40473 () Bool)

(declare-fun e!273545 () Bool)

(assert (=> mapNonEmpty!21064 (= mapRes!21064 (and tp!40473 e!273545))))

(declare-fun mapRest!21064 () (Array (_ BitVec 32) ValueCell!6114))

(declare-fun mapKey!21064 () (_ BitVec 32))

(declare-fun mapValue!21064 () ValueCell!6114)

(assert (=> mapNonEmpty!21064 (= (arr!14208 _values!833) (store mapRest!21064 mapKey!21064 mapValue!21064))))

(declare-fun b!467555 () Bool)

(assert (=> b!467555 (= e!273545 tp_is_empty!12915)))

(declare-fun res!279493 () Bool)

(assert (=> start!41906 (=> (not res!279493) (not e!273544))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41906 (= res!279493 (validMask!0 mask!1365))))

(assert (=> start!41906 e!273544))

(assert (=> start!41906 tp_is_empty!12915))

(assert (=> start!41906 tp!40474))

(assert (=> start!41906 true))

(declare-fun array_inv!10246 (array!29567) Bool)

(assert (=> start!41906 (array_inv!10246 _keys!1025)))

(declare-fun e!273543 () Bool)

(declare-fun array_inv!10247 (array!29569) Bool)

(assert (=> start!41906 (and (array_inv!10247 _values!833) e!273543)))

(declare-fun mapIsEmpty!21064 () Bool)

(assert (=> mapIsEmpty!21064 mapRes!21064))

(declare-fun b!467560 () Bool)

(assert (=> b!467560 (= e!273543 (and e!273546 mapRes!21064))))

(declare-fun condMapEmpty!21064 () Bool)

(declare-fun mapDefault!21064 () ValueCell!6114)

(assert (=> b!467560 (= condMapEmpty!21064 (= (arr!14208 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6114)) mapDefault!21064)))))

(declare-fun b!467561 () Bool)

(declare-fun e!273548 () Bool)

(assert (=> b!467561 (= e!273544 (not e!273548))))

(declare-fun res!279492 () Bool)

(assert (=> b!467561 (=> res!279492 e!273548)))

(assert (=> b!467561 (= res!279492 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8522 0))(
  ( (tuple2!8523 (_1!4271 (_ BitVec 64)) (_2!4271 V!18325)) )
))
(declare-datatypes ((List!8641 0))(
  ( (Nil!8638) (Cons!8637 (h!9493 tuple2!8522) (t!14605 List!8641)) )
))
(declare-datatypes ((ListLongMap!7449 0))(
  ( (ListLongMap!7450 (toList!3740 List!8641)) )
))
(declare-fun lt!211453 () ListLongMap!7449)

(declare-fun lt!211451 () ListLongMap!7449)

(assert (=> b!467561 (= lt!211453 lt!211451)))

(declare-fun minValueBefore!38 () V!18325)

(declare-fun zeroValue!794 () V!18325)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13601 0))(
  ( (Unit!13602) )
))
(declare-fun lt!211450 () Unit!13601)

(declare-fun minValueAfter!38 () V!18325)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!101 (array!29567 array!29569 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18325 V!18325 V!18325 V!18325 (_ BitVec 32) Int) Unit!13601)

(assert (=> b!467561 (= lt!211450 (lemmaNoChangeToArrayThenSameMapNoExtras!101 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1906 (array!29567 array!29569 (_ BitVec 32) (_ BitVec 32) V!18325 V!18325 (_ BitVec 32) Int) ListLongMap!7449)

(assert (=> b!467561 (= lt!211451 (getCurrentListMapNoExtraKeys!1906 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467561 (= lt!211453 (getCurrentListMapNoExtraKeys!1906 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467562 () Bool)

(assert (=> b!467562 (= e!273548 true)))

(declare-fun lt!211452 () ListLongMap!7449)

(declare-fun getCurrentListMap!2158 (array!29567 array!29569 (_ BitVec 32) (_ BitVec 32) V!18325 V!18325 (_ BitVec 32) Int) ListLongMap!7449)

(assert (=> b!467562 (= lt!211452 (getCurrentListMap!2158 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (= (and start!41906 res!279493) b!467558))

(assert (= (and b!467558 res!279495) b!467557))

(assert (= (and b!467557 res!279496) b!467559))

(assert (= (and b!467559 res!279494) b!467561))

(assert (= (and b!467561 (not res!279492)) b!467562))

(assert (= (and b!467560 condMapEmpty!21064) mapIsEmpty!21064))

(assert (= (and b!467560 (not condMapEmpty!21064)) mapNonEmpty!21064))

(get-info :version)

(assert (= (and mapNonEmpty!21064 ((_ is ValueCellFull!6114) mapValue!21064)) b!467555))

(assert (= (and b!467560 ((_ is ValueCellFull!6114) mapDefault!21064)) b!467556))

(assert (= start!41906 b!467560))

(declare-fun m!449689 () Bool)

(assert (=> b!467561 m!449689))

(declare-fun m!449691 () Bool)

(assert (=> b!467561 m!449691))

(declare-fun m!449693 () Bool)

(assert (=> b!467561 m!449693))

(declare-fun m!449695 () Bool)

(assert (=> mapNonEmpty!21064 m!449695))

(declare-fun m!449697 () Bool)

(assert (=> b!467562 m!449697))

(declare-fun m!449699 () Bool)

(assert (=> b!467559 m!449699))

(declare-fun m!449701 () Bool)

(assert (=> b!467557 m!449701))

(declare-fun m!449703 () Bool)

(assert (=> start!41906 m!449703))

(declare-fun m!449705 () Bool)

(assert (=> start!41906 m!449705))

(declare-fun m!449707 () Bool)

(assert (=> start!41906 m!449707))

(check-sat (not b!467559) (not start!41906) (not b!467557) (not mapNonEmpty!21064) (not b_next!11487) (not b!467561) tp_is_empty!12915 (not b!467562) b_and!19893)
(check-sat b_and!19893 (not b_next!11487))
