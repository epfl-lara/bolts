; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!41988 () Bool)

(assert start!41988)

(declare-fun b_free!11553 () Bool)

(declare-fun b_next!11553 () Bool)

(assert (=> start!41988 (= b_free!11553 (not b_next!11553))))

(declare-fun tp!40674 () Bool)

(declare-fun b_and!19969 () Bool)

(assert (=> start!41988 (= tp!40674 b_and!19969)))

(declare-fun b!468495 () Bool)

(declare-fun e!274231 () Bool)

(declare-fun e!274234 () Bool)

(declare-fun mapRes!21166 () Bool)

(assert (=> b!468495 (= e!274231 (and e!274234 mapRes!21166))))

(declare-fun condMapEmpty!21166 () Bool)

(declare-datatypes ((V!18413 0))(
  ( (V!18414 (val!6535 Int)) )
))
(declare-datatypes ((ValueCell!6147 0))(
  ( (ValueCellFull!6147 (v!8820 V!18413)) (EmptyCell!6147) )
))
(declare-datatypes ((array!29695 0))(
  ( (array!29696 (arr!14270 (Array (_ BitVec 32) ValueCell!6147)) (size!14622 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29695)

(declare-fun mapDefault!21166 () ValueCell!6147)

(assert (=> b!468495 (= condMapEmpty!21166 (= (arr!14270 _values!833) ((as const (Array (_ BitVec 32) ValueCell!6147)) mapDefault!21166)))))

(declare-fun mapNonEmpty!21166 () Bool)

(declare-fun tp!40675 () Bool)

(declare-fun e!274236 () Bool)

(assert (=> mapNonEmpty!21166 (= mapRes!21166 (and tp!40675 e!274236))))

(declare-fun mapRest!21166 () (Array (_ BitVec 32) ValueCell!6147))

(declare-fun mapValue!21166 () ValueCell!6147)

(declare-fun mapKey!21166 () (_ BitVec 32))

(assert (=> mapNonEmpty!21166 (= (arr!14270 _values!833) (store mapRest!21166 mapKey!21166 mapValue!21166))))

(declare-fun b!468497 () Bool)

(declare-fun e!274233 () Bool)

(assert (=> b!468497 (= e!274233 true)))

(declare-datatypes ((tuple2!8570 0))(
  ( (tuple2!8571 (_1!4295 (_ BitVec 64)) (_2!4295 V!18413)) )
))
(declare-datatypes ((List!8689 0))(
  ( (Nil!8686) (Cons!8685 (h!9541 tuple2!8570) (t!14655 List!8689)) )
))
(declare-datatypes ((ListLongMap!7497 0))(
  ( (ListLongMap!7498 (toList!3764 List!8689)) )
))
(declare-fun lt!212027 () ListLongMap!7497)

(declare-fun lt!212026 () tuple2!8570)

(declare-fun minValueBefore!38 () V!18413)

(declare-fun +!1654 (ListLongMap!7497 tuple2!8570) ListLongMap!7497)

(assert (=> b!468497 (= (+!1654 lt!212027 lt!212026) (+!1654 (+!1654 lt!212027 (tuple2!8571 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212026))))

(declare-fun minValueAfter!38 () V!18413)

(assert (=> b!468497 (= lt!212026 (tuple2!8571 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13650 0))(
  ( (Unit!13651) )
))
(declare-fun lt!212023 () Unit!13650)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!95 (ListLongMap!7497 (_ BitVec 64) V!18413 V!18413) Unit!13650)

(assert (=> b!468497 (= lt!212023 (addSameAsAddTwiceSameKeyDiffValues!95 lt!212027 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun zeroValue!794 () V!18413)

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!212022 () ListLongMap!7497)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29697 0))(
  ( (array!29698 (arr!14271 (Array (_ BitVec 32) (_ BitVec 64))) (size!14623 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29697)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2176 (array!29697 array!29695 (_ BitVec 32) (_ BitVec 32) V!18413 V!18413 (_ BitVec 32) Int) ListLongMap!7497)

(assert (=> b!468497 (= lt!212022 (getCurrentListMap!2176 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212021 () ListLongMap!7497)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!468497 (= lt!212021 (getCurrentListMap!2176 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21166 () Bool)

(assert (=> mapIsEmpty!21166 mapRes!21166))

(declare-fun b!468498 () Bool)

(declare-fun res!280046 () Bool)

(declare-fun e!274232 () Bool)

(assert (=> b!468498 (=> (not res!280046) (not e!274232))))

(declare-datatypes ((List!8690 0))(
  ( (Nil!8687) (Cons!8686 (h!9542 (_ BitVec 64)) (t!14656 List!8690)) )
))
(declare-fun arrayNoDuplicates!0 (array!29697 (_ BitVec 32) List!8690) Bool)

(assert (=> b!468498 (= res!280046 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8687))))

(declare-fun b!468499 () Bool)

(assert (=> b!468499 (= e!274232 (not e!274233))))

(declare-fun res!280045 () Bool)

(assert (=> b!468499 (=> res!280045 e!274233)))

(assert (=> b!468499 (= res!280045 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!212024 () ListLongMap!7497)

(assert (=> b!468499 (= lt!212027 lt!212024)))

(declare-fun lt!212025 () Unit!13650)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!124 (array!29697 array!29695 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18413 V!18413 V!18413 V!18413 (_ BitVec 32) Int) Unit!13650)

(assert (=> b!468499 (= lt!212025 (lemmaNoChangeToArrayThenSameMapNoExtras!124 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1929 (array!29697 array!29695 (_ BitVec 32) (_ BitVec 32) V!18413 V!18413 (_ BitVec 32) Int) ListLongMap!7497)

(assert (=> b!468499 (= lt!212024 (getCurrentListMapNoExtraKeys!1929 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468499 (= lt!212027 (getCurrentListMapNoExtraKeys!1929 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468500 () Bool)

(declare-fun res!280049 () Bool)

(assert (=> b!468500 (=> (not res!280049) (not e!274232))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29697 (_ BitVec 32)) Bool)

(assert (=> b!468500 (= res!280049 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!468501 () Bool)

(declare-fun res!280048 () Bool)

(assert (=> b!468501 (=> (not res!280048) (not e!274232))))

(assert (=> b!468501 (= res!280048 (and (= (size!14622 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14623 _keys!1025) (size!14622 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!468502 () Bool)

(declare-fun tp_is_empty!12981 () Bool)

(assert (=> b!468502 (= e!274236 tp_is_empty!12981)))

(declare-fun b!468496 () Bool)

(assert (=> b!468496 (= e!274234 tp_is_empty!12981)))

(declare-fun res!280047 () Bool)

(assert (=> start!41988 (=> (not res!280047) (not e!274232))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41988 (= res!280047 (validMask!0 mask!1365))))

(assert (=> start!41988 e!274232))

(assert (=> start!41988 tp_is_empty!12981))

(assert (=> start!41988 tp!40674))

(assert (=> start!41988 true))

(declare-fun array_inv!10290 (array!29697) Bool)

(assert (=> start!41988 (array_inv!10290 _keys!1025)))

(declare-fun array_inv!10291 (array!29695) Bool)

(assert (=> start!41988 (and (array_inv!10291 _values!833) e!274231)))

(assert (= (and start!41988 res!280047) b!468501))

(assert (= (and b!468501 res!280048) b!468500))

(assert (= (and b!468500 res!280049) b!468498))

(assert (= (and b!468498 res!280046) b!468499))

(assert (= (and b!468499 (not res!280045)) b!468497))

(assert (= (and b!468495 condMapEmpty!21166) mapIsEmpty!21166))

(assert (= (and b!468495 (not condMapEmpty!21166)) mapNonEmpty!21166))

(get-info :version)

(assert (= (and mapNonEmpty!21166 ((_ is ValueCellFull!6147) mapValue!21166)) b!468502))

(assert (= (and b!468495 ((_ is ValueCellFull!6147) mapDefault!21166)) b!468496))

(assert (= start!41988 b!468495))

(declare-fun m!450531 () Bool)

(assert (=> start!41988 m!450531))

(declare-fun m!450533 () Bool)

(assert (=> start!41988 m!450533))

(declare-fun m!450535 () Bool)

(assert (=> start!41988 m!450535))

(declare-fun m!450537 () Bool)

(assert (=> mapNonEmpty!21166 m!450537))

(declare-fun m!450539 () Bool)

(assert (=> b!468500 m!450539))

(declare-fun m!450541 () Bool)

(assert (=> b!468499 m!450541))

(declare-fun m!450543 () Bool)

(assert (=> b!468499 m!450543))

(declare-fun m!450545 () Bool)

(assert (=> b!468499 m!450545))

(declare-fun m!450547 () Bool)

(assert (=> b!468497 m!450547))

(declare-fun m!450549 () Bool)

(assert (=> b!468497 m!450549))

(assert (=> b!468497 m!450549))

(declare-fun m!450551 () Bool)

(assert (=> b!468497 m!450551))

(declare-fun m!450553 () Bool)

(assert (=> b!468497 m!450553))

(declare-fun m!450555 () Bool)

(assert (=> b!468497 m!450555))

(declare-fun m!450557 () Bool)

(assert (=> b!468497 m!450557))

(declare-fun m!450559 () Bool)

(assert (=> b!468498 m!450559))

(check-sat tp_is_empty!12981 (not b_next!11553) (not b!468498) b_and!19969 (not mapNonEmpty!21166) (not b!468499) (not start!41988) (not b!468497) (not b!468500))
(check-sat b_and!19969 (not b_next!11553))
