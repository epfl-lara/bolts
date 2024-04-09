; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41770 () Bool)

(assert start!41770)

(declare-fun b_free!11383 () Bool)

(declare-fun b_next!11383 () Bool)

(assert (=> start!41770 (= b_free!11383 (not b_next!11383))))

(declare-fun tp!40155 () Bool)

(declare-fun b_and!19769 () Bool)

(assert (=> start!41770 (= tp!40155 b_and!19769)))

(declare-fun mapIsEmpty!20902 () Bool)

(declare-fun mapRes!20902 () Bool)

(assert (=> mapIsEmpty!20902 mapRes!20902))

(declare-fun mapNonEmpty!20902 () Bool)

(declare-fun tp!40156 () Bool)

(declare-fun e!272528 () Bool)

(assert (=> mapNonEmpty!20902 (= mapRes!20902 (and tp!40156 e!272528))))

(declare-datatypes ((V!18187 0))(
  ( (V!18188 (val!6450 Int)) )
))
(declare-datatypes ((ValueCell!6062 0))(
  ( (ValueCellFull!6062 (v!8734 V!18187)) (EmptyCell!6062) )
))
(declare-fun mapValue!20902 () ValueCell!6062)

(declare-datatypes ((array!29359 0))(
  ( (array!29360 (arr!14105 (Array (_ BitVec 32) ValueCell!6062)) (size!14457 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29359)

(declare-fun mapKey!20902 () (_ BitVec 32))

(declare-fun mapRest!20902 () (Array (_ BitVec 32) ValueCell!6062))

(assert (=> mapNonEmpty!20902 (= (arr!14105 _values!833) (store mapRest!20902 mapKey!20902 mapValue!20902))))

(declare-fun b!466119 () Bool)

(declare-fun tp_is_empty!12811 () Bool)

(assert (=> b!466119 (= e!272528 tp_is_empty!12811)))

(declare-fun b!466120 () Bool)

(declare-fun res!278681 () Bool)

(declare-fun e!272524 () Bool)

(assert (=> b!466120 (=> (not res!278681) (not e!272524))))

(declare-datatypes ((array!29361 0))(
  ( (array!29362 (arr!14106 (Array (_ BitVec 32) (_ BitVec 64))) (size!14458 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29361)

(declare-datatypes ((List!8557 0))(
  ( (Nil!8554) (Cons!8553 (h!9409 (_ BitVec 64)) (t!14517 List!8557)) )
))
(declare-fun arrayNoDuplicates!0 (array!29361 (_ BitVec 32) List!8557) Bool)

(assert (=> b!466120 (= res!278681 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8554))))

(declare-fun b!466121 () Bool)

(declare-fun e!272525 () Bool)

(assert (=> b!466121 (= e!272524 (not e!272525))))

(declare-fun res!278684 () Bool)

(assert (=> b!466121 (=> res!278684 e!272525)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!466121 (= res!278684 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8438 0))(
  ( (tuple2!8439 (_1!4229 (_ BitVec 64)) (_2!4229 V!18187)) )
))
(declare-datatypes ((List!8558 0))(
  ( (Nil!8555) (Cons!8554 (h!9410 tuple2!8438) (t!14518 List!8558)) )
))
(declare-datatypes ((ListLongMap!7365 0))(
  ( (ListLongMap!7366 (toList!3698 List!8558)) )
))
(declare-fun lt!210677 () ListLongMap!7365)

(declare-fun lt!210678 () ListLongMap!7365)

(assert (=> b!466121 (= lt!210677 lt!210678)))

(declare-fun minValueBefore!38 () V!18187)

(declare-fun zeroValue!794 () V!18187)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13515 0))(
  ( (Unit!13516) )
))
(declare-fun lt!210676 () Unit!13515)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18187)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!59 (array!29361 array!29359 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18187 V!18187 V!18187 V!18187 (_ BitVec 32) Int) Unit!13515)

(assert (=> b!466121 (= lt!210676 (lemmaNoChangeToArrayThenSameMapNoExtras!59 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1864 (array!29361 array!29359 (_ BitVec 32) (_ BitVec 32) V!18187 V!18187 (_ BitVec 32) Int) ListLongMap!7365)

(assert (=> b!466121 (= lt!210678 (getCurrentListMapNoExtraKeys!1864 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466121 (= lt!210677 (getCurrentListMapNoExtraKeys!1864 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466122 () Bool)

(declare-fun e!272526 () Bool)

(assert (=> b!466122 (= e!272526 tp_is_empty!12811)))

(declare-fun b!466123 () Bool)

(assert (=> b!466123 (= e!272525 true)))

(declare-fun lt!210675 () ListLongMap!7365)

(declare-fun getCurrentListMap!2139 (array!29361 array!29359 (_ BitVec 32) (_ BitVec 32) V!18187 V!18187 (_ BitVec 32) Int) ListLongMap!7365)

(assert (=> b!466123 (= lt!210675 (getCurrentListMap!2139 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210679 () ListLongMap!7365)

(declare-fun +!1630 (ListLongMap!7365 tuple2!8438) ListLongMap!7365)

(assert (=> b!466123 (= lt!210679 (+!1630 (getCurrentListMap!2139 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8439 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun res!278683 () Bool)

(assert (=> start!41770 (=> (not res!278683) (not e!272524))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41770 (= res!278683 (validMask!0 mask!1365))))

(assert (=> start!41770 e!272524))

(assert (=> start!41770 tp_is_empty!12811))

(assert (=> start!41770 tp!40155))

(assert (=> start!41770 true))

(declare-fun array_inv!10164 (array!29361) Bool)

(assert (=> start!41770 (array_inv!10164 _keys!1025)))

(declare-fun e!272523 () Bool)

(declare-fun array_inv!10165 (array!29359) Bool)

(assert (=> start!41770 (and (array_inv!10165 _values!833) e!272523)))

(declare-fun b!466124 () Bool)

(declare-fun res!278680 () Bool)

(assert (=> b!466124 (=> (not res!278680) (not e!272524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29361 (_ BitVec 32)) Bool)

(assert (=> b!466124 (= res!278680 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466125 () Bool)

(assert (=> b!466125 (= e!272523 (and e!272526 mapRes!20902))))

(declare-fun condMapEmpty!20902 () Bool)

(declare-fun mapDefault!20902 () ValueCell!6062)

