; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42430 () Bool)

(assert start!42430)

(declare-fun b_free!11897 () Bool)

(declare-fun b_next!11897 () Bool)

(assert (=> start!42430 (= b_free!11897 (not b_next!11897))))

(declare-fun tp!41725 () Bool)

(declare-fun b_and!20371 () Bool)

(assert (=> start!42430 (= tp!41725 b_and!20371)))

(declare-fun mapNonEmpty!21700 () Bool)

(declare-fun mapRes!21700 () Bool)

(declare-fun tp!41724 () Bool)

(declare-fun e!277567 () Bool)

(assert (=> mapNonEmpty!21700 (= mapRes!21700 (and tp!41724 e!277567))))

(declare-datatypes ((V!18871 0))(
  ( (V!18872 (val!6707 Int)) )
))
(declare-datatypes ((ValueCell!6319 0))(
  ( (ValueCellFull!6319 (v!8994 V!18871)) (EmptyCell!6319) )
))
(declare-datatypes ((array!30371 0))(
  ( (array!30372 (arr!14602 (Array (_ BitVec 32) ValueCell!6319)) (size!14954 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30371)

(declare-fun mapValue!21700 () ValueCell!6319)

(declare-fun mapRest!21700 () (Array (_ BitVec 32) ValueCell!6319))

(declare-fun mapKey!21700 () (_ BitVec 32))

(assert (=> mapNonEmpty!21700 (= (arr!14602 _values!833) (store mapRest!21700 mapKey!21700 mapValue!21700))))

(declare-fun b!473141 () Bool)

(declare-fun res!282688 () Bool)

(declare-fun e!277570 () Bool)

(assert (=> b!473141 (=> (not res!282688) (not e!277570))))

(declare-datatypes ((array!30373 0))(
  ( (array!30374 (arr!14603 (Array (_ BitVec 32) (_ BitVec 64))) (size!14955 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30373)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30373 (_ BitVec 32)) Bool)

(assert (=> b!473141 (= res!282688 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!282690 () Bool)

(assert (=> start!42430 (=> (not res!282690) (not e!277570))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42430 (= res!282690 (validMask!0 mask!1365))))

(assert (=> start!42430 e!277570))

(declare-fun tp_is_empty!13325 () Bool)

(assert (=> start!42430 tp_is_empty!13325))

(assert (=> start!42430 tp!41725))

(assert (=> start!42430 true))

(declare-fun array_inv!10528 (array!30373) Bool)

(assert (=> start!42430 (array_inv!10528 _keys!1025)))

(declare-fun e!277568 () Bool)

(declare-fun array_inv!10529 (array!30371) Bool)

(assert (=> start!42430 (and (array_inv!10529 _values!833) e!277568)))

(declare-fun mapIsEmpty!21700 () Bool)

(assert (=> mapIsEmpty!21700 mapRes!21700))

(declare-fun b!473142 () Bool)

(declare-fun e!277569 () Bool)

(assert (=> b!473142 (= e!277570 (not e!277569))))

(declare-fun res!282691 () Bool)

(assert (=> b!473142 (=> res!282691 e!277569)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!473142 (= res!282691 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8832 0))(
  ( (tuple2!8833 (_1!4426 (_ BitVec 64)) (_2!4426 V!18871)) )
))
(declare-datatypes ((List!8945 0))(
  ( (Nil!8942) (Cons!8941 (h!9797 tuple2!8832) (t!14923 List!8945)) )
))
(declare-datatypes ((ListLongMap!7759 0))(
  ( (ListLongMap!7760 (toList!3895 List!8945)) )
))
(declare-fun lt!215006 () ListLongMap!7759)

(declare-fun lt!215003 () ListLongMap!7759)

(assert (=> b!473142 (= lt!215006 lt!215003)))

(declare-fun minValueBefore!38 () V!18871)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun zeroValue!794 () V!18871)

(declare-datatypes ((Unit!13911 0))(
  ( (Unit!13912) )
))
(declare-fun lt!215002 () Unit!13911)

(declare-fun minValueAfter!38 () V!18871)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!249 (array!30373 array!30371 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18871 V!18871 V!18871 V!18871 (_ BitVec 32) Int) Unit!13911)

(assert (=> b!473142 (= lt!215002 (lemmaNoChangeToArrayThenSameMapNoExtras!249 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2054 (array!30373 array!30371 (_ BitVec 32) (_ BitVec 32) V!18871 V!18871 (_ BitVec 32) Int) ListLongMap!7759)

(assert (=> b!473142 (= lt!215003 (getCurrentListMapNoExtraKeys!2054 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!473142 (= lt!215006 (getCurrentListMapNoExtraKeys!2054 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473143 () Bool)

(assert (=> b!473143 (= e!277569 true)))

(declare-fun lt!215001 () ListLongMap!7759)

(declare-fun lt!214999 () tuple2!8832)

(declare-fun +!1702 (ListLongMap!7759 tuple2!8832) ListLongMap!7759)

(assert (=> b!473143 (= (+!1702 lt!215001 lt!214999) (+!1702 (+!1702 lt!215001 (tuple2!8833 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!214999))))

(assert (=> b!473143 (= lt!214999 (tuple2!8833 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-fun lt!215005 () Unit!13911)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!139 (ListLongMap!7759 (_ BitVec 64) V!18871 V!18871) Unit!13911)

(assert (=> b!473143 (= lt!215005 (addSameAsAddTwiceSameKeyDiffValues!139 lt!215001 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(assert (=> b!473143 (= lt!215001 (+!1702 lt!215006 (tuple2!8833 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!794)))))

(declare-fun lt!215004 () ListLongMap!7759)

(declare-fun getCurrentListMap!2239 (array!30373 array!30371 (_ BitVec 32) (_ BitVec 32) V!18871 V!18871 (_ BitVec 32) Int) ListLongMap!7759)

(assert (=> b!473143 (= lt!215004 (getCurrentListMap!2239 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!215000 () ListLongMap!7759)

(assert (=> b!473143 (= lt!215000 (getCurrentListMap!2239 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!473144 () Bool)

(declare-fun e!277572 () Bool)

(assert (=> b!473144 (= e!277572 tp_is_empty!13325)))

(declare-fun b!473145 () Bool)

(assert (=> b!473145 (= e!277568 (and e!277572 mapRes!21700))))

(declare-fun condMapEmpty!21700 () Bool)

(declare-fun mapDefault!21700 () ValueCell!6319)

