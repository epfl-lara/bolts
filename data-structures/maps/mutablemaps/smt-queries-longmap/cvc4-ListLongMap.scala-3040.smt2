; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42656 () Bool)

(assert start!42656)

(declare-fun b_free!12053 () Bool)

(declare-fun b_next!12053 () Bool)

(assert (=> start!42656 (= b_free!12053 (not b_next!12053))))

(declare-fun tp!42204 () Bool)

(declare-fun b_and!20571 () Bool)

(assert (=> start!42656 (= tp!42204 b_and!20571)))

(declare-fun b!475527 () Bool)

(declare-fun res!284014 () Bool)

(declare-fun e!279258 () Bool)

(assert (=> b!475527 (=> (not res!284014) (not e!279258))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30673 0))(
  ( (array!30674 (arr!14749 (Array (_ BitVec 32) (_ BitVec 64))) (size!15101 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30673)

(declare-datatypes ((V!19079 0))(
  ( (V!19080 (val!6785 Int)) )
))
(declare-datatypes ((ValueCell!6397 0))(
  ( (ValueCellFull!6397 (v!9075 V!19079)) (EmptyCell!6397) )
))
(declare-datatypes ((array!30675 0))(
  ( (array!30676 (arr!14750 (Array (_ BitVec 32) ValueCell!6397)) (size!15102 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30675)

(assert (=> b!475527 (= res!284014 (and (= (size!15102 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!15101 _keys!1025) (size!15102 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!475528 () Bool)

(declare-fun e!279254 () Bool)

(assert (=> b!475528 (= e!279254 true)))

(declare-fun defaultEntry!841 () Int)

(declare-fun zeroValue!794 () V!19079)

(declare-fun minValueAfter!38 () V!19079)

(declare-datatypes ((tuple2!8946 0))(
  ( (tuple2!8947 (_1!4483 (_ BitVec 64)) (_2!4483 V!19079)) )
))
(declare-datatypes ((List!9057 0))(
  ( (Nil!9054) (Cons!9053 (h!9909 tuple2!8946) (t!15043 List!9057)) )
))
(declare-datatypes ((ListLongMap!7873 0))(
  ( (ListLongMap!7874 (toList!3952 List!9057)) )
))
(declare-fun lt!216651 () ListLongMap!7873)

(declare-fun getCurrentListMap!2267 (array!30673 array!30675 (_ BitVec 32) (_ BitVec 32) V!19079 V!19079 (_ BitVec 32) Int) ListLongMap!7873)

(assert (=> b!475528 (= lt!216651 (getCurrentListMap!2267 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun minValueBefore!38 () V!19079)

(declare-fun lt!216654 () ListLongMap!7873)

(declare-fun +!1731 (ListLongMap!7873 tuple2!8946) ListLongMap!7873)

(assert (=> b!475528 (= lt!216654 (+!1731 (getCurrentListMap!2267 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8947 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!475529 () Bool)

(declare-fun res!284013 () Bool)

(assert (=> b!475529 (=> (not res!284013) (not e!279258))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30673 (_ BitVec 32)) Bool)

(assert (=> b!475529 (= res!284013 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapNonEmpty!21946 () Bool)

(declare-fun mapRes!21946 () Bool)

(declare-fun tp!42205 () Bool)

(declare-fun e!279257 () Bool)

(assert (=> mapNonEmpty!21946 (= mapRes!21946 (and tp!42205 e!279257))))

(declare-fun mapRest!21946 () (Array (_ BitVec 32) ValueCell!6397))

(declare-fun mapKey!21946 () (_ BitVec 32))

(declare-fun mapValue!21946 () ValueCell!6397)

(assert (=> mapNonEmpty!21946 (= (arr!14750 _values!833) (store mapRest!21946 mapKey!21946 mapValue!21946))))

(declare-fun b!475530 () Bool)

(declare-fun tp_is_empty!13481 () Bool)

(assert (=> b!475530 (= e!279257 tp_is_empty!13481)))

(declare-fun b!475531 () Bool)

(assert (=> b!475531 (= e!279258 (not e!279254))))

(declare-fun res!284015 () Bool)

(assert (=> b!475531 (=> res!284015 e!279254)))

(assert (=> b!475531 (= res!284015 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!216652 () ListLongMap!7873)

(declare-fun lt!216650 () ListLongMap!7873)

(assert (=> b!475531 (= lt!216652 lt!216650)))

(declare-datatypes ((Unit!13983 0))(
  ( (Unit!13984) )
))
(declare-fun lt!216653 () Unit!13983)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!276 (array!30673 array!30675 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!19079 V!19079 V!19079 V!19079 (_ BitVec 32) Int) Unit!13983)

(assert (=> b!475531 (= lt!216653 (lemmaNoChangeToArrayThenSameMapNoExtras!276 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2105 (array!30673 array!30675 (_ BitVec 32) (_ BitVec 32) V!19079 V!19079 (_ BitVec 32) Int) ListLongMap!7873)

(assert (=> b!475531 (= lt!216650 (getCurrentListMapNoExtraKeys!2105 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!475531 (= lt!216652 (getCurrentListMapNoExtraKeys!2105 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun res!284011 () Bool)

(assert (=> start!42656 (=> (not res!284011) (not e!279258))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42656 (= res!284011 (validMask!0 mask!1365))))

(assert (=> start!42656 e!279258))

(assert (=> start!42656 tp_is_empty!13481))

(assert (=> start!42656 tp!42204))

(assert (=> start!42656 true))

(declare-fun array_inv!10628 (array!30673) Bool)

(assert (=> start!42656 (array_inv!10628 _keys!1025)))

(declare-fun e!279256 () Bool)

(declare-fun array_inv!10629 (array!30675) Bool)

(assert (=> start!42656 (and (array_inv!10629 _values!833) e!279256)))

(declare-fun b!475532 () Bool)

(declare-fun e!279255 () Bool)

(assert (=> b!475532 (= e!279255 tp_is_empty!13481)))

(declare-fun b!475533 () Bool)

(assert (=> b!475533 (= e!279256 (and e!279255 mapRes!21946))))

(declare-fun condMapEmpty!21946 () Bool)

(declare-fun mapDefault!21946 () ValueCell!6397)

