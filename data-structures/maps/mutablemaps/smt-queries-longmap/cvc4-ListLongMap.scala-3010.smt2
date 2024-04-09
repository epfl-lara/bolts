; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42406 () Bool)

(assert start!42406)

(declare-fun b_free!11873 () Bool)

(declare-fun b_next!11873 () Bool)

(assert (=> start!42406 (= b_free!11873 (not b_next!11873))))

(declare-fun tp!41652 () Bool)

(declare-fun b_and!20347 () Bool)

(assert (=> start!42406 (= tp!41652 b_and!20347)))

(declare-fun b!472853 () Bool)

(declare-fun e!277352 () Bool)

(declare-fun tp_is_empty!13301 () Bool)

(assert (=> b!472853 (= e!277352 tp_is_empty!13301)))

(declare-fun mapNonEmpty!21664 () Bool)

(declare-fun mapRes!21664 () Bool)

(declare-fun tp!41653 () Bool)

(assert (=> mapNonEmpty!21664 (= mapRes!21664 (and tp!41653 e!277352))))

(declare-datatypes ((V!18839 0))(
  ( (V!18840 (val!6695 Int)) )
))
(declare-datatypes ((ValueCell!6307 0))(
  ( (ValueCellFull!6307 (v!8982 V!18839)) (EmptyCell!6307) )
))
(declare-datatypes ((array!30325 0))(
  ( (array!30326 (arr!14579 (Array (_ BitVec 32) ValueCell!6307)) (size!14931 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30325)

(declare-fun mapValue!21664 () ValueCell!6307)

(declare-fun mapKey!21664 () (_ BitVec 32))

(declare-fun mapRest!21664 () (Array (_ BitVec 32) ValueCell!6307))

(assert (=> mapNonEmpty!21664 (= (arr!14579 _values!833) (store mapRest!21664 mapKey!21664 mapValue!21664))))

(declare-fun b!472854 () Bool)

(declare-fun res!282508 () Bool)

(declare-fun e!277356 () Bool)

(assert (=> b!472854 (=> (not res!282508) (not e!277356))))

(declare-datatypes ((array!30327 0))(
  ( (array!30328 (arr!14580 (Array (_ BitVec 32) (_ BitVec 64))) (size!14932 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30327)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30327 (_ BitVec 32)) Bool)

(assert (=> b!472854 (= res!282508 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!282510 () Bool)

(assert (=> start!42406 (=> (not res!282510) (not e!277356))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42406 (= res!282510 (validMask!0 mask!1365))))

(assert (=> start!42406 e!277356))

(assert (=> start!42406 tp_is_empty!13301))

(assert (=> start!42406 tp!41652))

(assert (=> start!42406 true))

(declare-fun array_inv!10514 (array!30327) Bool)

(assert (=> start!42406 (array_inv!10514 _keys!1025)))

(declare-fun e!277353 () Bool)

(declare-fun array_inv!10515 (array!30325) Bool)

(assert (=> start!42406 (and (array_inv!10515 _values!833) e!277353)))

(declare-fun b!472855 () Bool)

(declare-fun e!277354 () Bool)

(assert (=> b!472855 (= e!277354 true)))

(declare-datatypes ((tuple2!8810 0))(
  ( (tuple2!8811 (_1!4415 (_ BitVec 64)) (_2!4415 V!18839)) )
))
(declare-datatypes ((List!8925 0))(
  ( (Nil!8922) (Cons!8921 (h!9777 tuple2!8810) (t!14903 List!8925)) )
))
(declare-datatypes ((ListLongMap!7737 0))(
  ( (ListLongMap!7738 (toList!3884 List!8925)) )
))
(declare-fun lt!214713 () ListLongMap!7737)

(declare-fun lt!214714 () tuple2!8810)

(declare-fun minValueBefore!38 () V!18839)

(declare-fun +!1693 (ListLongMap!7737 tuple2!8810) ListLongMap!7737)

(assert (=> b!472855 (= (+!1693 lt!214713 lt!214714) (+!1693 (+!1693 lt!214713 (tuple2!8811 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!214714))))

(declare-fun minValueAfter!38 () V!18839)

(assert (=> b!472855 (= lt!214714 (tuple2!8811 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13889 0))(
  ( (Unit!13890) )
))
(declare-fun lt!214715 () Unit!13889)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!130 (ListLongMap!7737 (_ BitVec 64) V!18839 V!18839) Unit!13889)

(assert (=> b!472855 (= lt!214715 (addSameAsAddTwiceSameKeyDiffValues!130 lt!214713 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun lt!214718 () ListLongMap!7737)

(declare-fun zeroValue!794 () V!18839)

(assert (=> b!472855 (= lt!214713 (+!1693 lt!214718 (tuple2!8811 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!214717 () ListLongMap!7737)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun getCurrentListMap!2230 (array!30327 array!30325 (_ BitVec 32) (_ BitVec 32) V!18839 V!18839 (_ BitVec 32) Int) ListLongMap!7737)

(assert (=> b!472855 (= lt!214717 (getCurrentListMap!2230 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!214711 () ListLongMap!7737)

(assert (=> b!472855 (= lt!214711 (getCurrentListMap!2230 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472856 () Bool)

(declare-fun e!277355 () Bool)

(assert (=> b!472856 (= e!277355 tp_is_empty!13301)))

(declare-fun b!472857 () Bool)

(assert (=> b!472857 (= e!277356 (not e!277354))))

(declare-fun res!282511 () Bool)

(assert (=> b!472857 (=> res!282511 e!277354)))

(assert (=> b!472857 (= res!282511 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!214712 () ListLongMap!7737)

(assert (=> b!472857 (= lt!214718 lt!214712)))

(declare-fun lt!214716 () Unit!13889)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!238 (array!30327 array!30325 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18839 V!18839 V!18839 V!18839 (_ BitVec 32) Int) Unit!13889)

(assert (=> b!472857 (= lt!214716 (lemmaNoChangeToArrayThenSameMapNoExtras!238 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2043 (array!30327 array!30325 (_ BitVec 32) (_ BitVec 32) V!18839 V!18839 (_ BitVec 32) Int) ListLongMap!7737)

(assert (=> b!472857 (= lt!214712 (getCurrentListMapNoExtraKeys!2043 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472857 (= lt!214718 (getCurrentListMapNoExtraKeys!2043 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472858 () Bool)

(declare-fun res!282509 () Bool)

(assert (=> b!472858 (=> (not res!282509) (not e!277356))))

(assert (=> b!472858 (= res!282509 (and (= (size!14931 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14932 _keys!1025) (size!14931 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21664 () Bool)

(assert (=> mapIsEmpty!21664 mapRes!21664))

(declare-fun b!472859 () Bool)

(declare-fun res!282507 () Bool)

(assert (=> b!472859 (=> (not res!282507) (not e!277356))))

(declare-datatypes ((List!8926 0))(
  ( (Nil!8923) (Cons!8922 (h!9778 (_ BitVec 64)) (t!14904 List!8926)) )
))
(declare-fun arrayNoDuplicates!0 (array!30327 (_ BitVec 32) List!8926) Bool)

(assert (=> b!472859 (= res!282507 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8923))))

(declare-fun b!472860 () Bool)

(assert (=> b!472860 (= e!277353 (and e!277355 mapRes!21664))))

(declare-fun condMapEmpty!21664 () Bool)

(declare-fun mapDefault!21664 () ValueCell!6307)

