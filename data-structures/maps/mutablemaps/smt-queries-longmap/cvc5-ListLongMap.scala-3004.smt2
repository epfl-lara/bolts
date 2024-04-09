; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42350 () Bool)

(assert start!42350)

(declare-fun b_free!11833 () Bool)

(declare-fun b_next!11833 () Bool)

(assert (=> start!42350 (= b_free!11833 (not b_next!11833))))

(declare-fun tp!41530 () Bool)

(declare-fun b_and!20297 () Bool)

(assert (=> start!42350 (= tp!41530 b_and!20297)))

(declare-fun b!472225 () Bool)

(declare-fun e!276899 () Bool)

(declare-fun tp_is_empty!13261 () Bool)

(assert (=> b!472225 (= e!276899 tp_is_empty!13261)))

(declare-fun b!472226 () Bool)

(declare-fun e!276897 () Bool)

(declare-fun e!276900 () Bool)

(assert (=> b!472226 (= e!276897 (not e!276900))))

(declare-fun res!282153 () Bool)

(assert (=> b!472226 (=> res!282153 e!276900)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!472226 (= res!282153 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!18787 0))(
  ( (V!18788 (val!6675 Int)) )
))
(declare-datatypes ((tuple2!8778 0))(
  ( (tuple2!8779 (_1!4399 (_ BitVec 64)) (_2!4399 V!18787)) )
))
(declare-datatypes ((List!8893 0))(
  ( (Nil!8890) (Cons!8889 (h!9745 tuple2!8778) (t!14869 List!8893)) )
))
(declare-datatypes ((ListLongMap!7705 0))(
  ( (ListLongMap!7706 (toList!3868 List!8893)) )
))
(declare-fun lt!214299 () ListLongMap!7705)

(declare-fun lt!214298 () ListLongMap!7705)

(assert (=> b!472226 (= lt!214299 lt!214298)))

(declare-fun minValueBefore!38 () V!18787)

(declare-fun zeroValue!794 () V!18787)

(declare-datatypes ((array!30245 0))(
  ( (array!30246 (arr!14540 (Array (_ BitVec 32) (_ BitVec 64))) (size!14892 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30245)

(declare-datatypes ((ValueCell!6287 0))(
  ( (ValueCellFull!6287 (v!8962 V!18787)) (EmptyCell!6287) )
))
(declare-datatypes ((array!30247 0))(
  ( (array!30248 (arr!14541 (Array (_ BitVec 32) ValueCell!6287)) (size!14893 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30247)

(declare-datatypes ((Unit!13858 0))(
  ( (Unit!13859) )
))
(declare-fun lt!214297 () Unit!13858)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18787)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!223 (array!30245 array!30247 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18787 V!18787 V!18787 V!18787 (_ BitVec 32) Int) Unit!13858)

(assert (=> b!472226 (= lt!214297 (lemmaNoChangeToArrayThenSameMapNoExtras!223 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2028 (array!30245 array!30247 (_ BitVec 32) (_ BitVec 32) V!18787 V!18787 (_ BitVec 32) Int) ListLongMap!7705)

(assert (=> b!472226 (= lt!214298 (getCurrentListMapNoExtraKeys!2028 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472226 (= lt!214299 (getCurrentListMapNoExtraKeys!2028 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21601 () Bool)

(declare-fun mapRes!21601 () Bool)

(assert (=> mapIsEmpty!21601 mapRes!21601))

(declare-fun mapNonEmpty!21601 () Bool)

(declare-fun tp!41529 () Bool)

(declare-fun e!276902 () Bool)

(assert (=> mapNonEmpty!21601 (= mapRes!21601 (and tp!41529 e!276902))))

(declare-fun mapKey!21601 () (_ BitVec 32))

(declare-fun mapRest!21601 () (Array (_ BitVec 32) ValueCell!6287))

(declare-fun mapValue!21601 () ValueCell!6287)

(assert (=> mapNonEmpty!21601 (= (arr!14541 _values!833) (store mapRest!21601 mapKey!21601 mapValue!21601))))

(declare-fun b!472227 () Bool)

(declare-fun res!282149 () Bool)

(assert (=> b!472227 (=> (not res!282149) (not e!276897))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30245 (_ BitVec 32)) Bool)

(assert (=> b!472227 (= res!282149 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472228 () Bool)

(assert (=> b!472228 (= e!276902 tp_is_empty!13261)))

(declare-fun b!472229 () Bool)

(declare-fun res!282150 () Bool)

(assert (=> b!472229 (=> (not res!282150) (not e!276897))))

(assert (=> b!472229 (= res!282150 (and (= (size!14893 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14892 _keys!1025) (size!14893 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun res!282151 () Bool)

(assert (=> start!42350 (=> (not res!282151) (not e!276897))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42350 (= res!282151 (validMask!0 mask!1365))))

(assert (=> start!42350 e!276897))

(assert (=> start!42350 tp_is_empty!13261))

(assert (=> start!42350 tp!41530))

(assert (=> start!42350 true))

(declare-fun array_inv!10486 (array!30245) Bool)

(assert (=> start!42350 (array_inv!10486 _keys!1025)))

(declare-fun e!276898 () Bool)

(declare-fun array_inv!10487 (array!30247) Bool)

(assert (=> start!42350 (and (array_inv!10487 _values!833) e!276898)))

(declare-fun b!472230 () Bool)

(assert (=> b!472230 (= e!276900 true)))

(declare-fun lt!214300 () ListLongMap!7705)

(declare-fun getCurrentListMap!2216 (array!30245 array!30247 (_ BitVec 32) (_ BitVec 32) V!18787 V!18787 (_ BitVec 32) Int) ListLongMap!7705)

(assert (=> b!472230 (= lt!214300 (getCurrentListMap!2216 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472231 () Bool)

(declare-fun res!282152 () Bool)

(assert (=> b!472231 (=> (not res!282152) (not e!276897))))

(declare-datatypes ((List!8894 0))(
  ( (Nil!8891) (Cons!8890 (h!9746 (_ BitVec 64)) (t!14870 List!8894)) )
))
(declare-fun arrayNoDuplicates!0 (array!30245 (_ BitVec 32) List!8894) Bool)

(assert (=> b!472231 (= res!282152 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8891))))

(declare-fun b!472232 () Bool)

(assert (=> b!472232 (= e!276898 (and e!276899 mapRes!21601))))

(declare-fun condMapEmpty!21601 () Bool)

(declare-fun mapDefault!21601 () ValueCell!6287)

