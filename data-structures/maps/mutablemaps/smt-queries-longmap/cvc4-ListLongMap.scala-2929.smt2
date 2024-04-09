; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41774 () Bool)

(assert start!41774)

(declare-fun b_free!11387 () Bool)

(declare-fun b_next!11387 () Bool)

(assert (=> start!41774 (= b_free!11387 (not b_next!11387))))

(declare-fun tp!40167 () Bool)

(declare-fun b_and!19773 () Bool)

(assert (=> start!41774 (= tp!40167 b_and!19773)))

(declare-fun mapNonEmpty!20908 () Bool)

(declare-fun mapRes!20908 () Bool)

(declare-fun tp!40168 () Bool)

(declare-fun e!272564 () Bool)

(assert (=> mapNonEmpty!20908 (= mapRes!20908 (and tp!40168 e!272564))))

(declare-datatypes ((V!18191 0))(
  ( (V!18192 (val!6452 Int)) )
))
(declare-datatypes ((ValueCell!6064 0))(
  ( (ValueCellFull!6064 (v!8736 V!18191)) (EmptyCell!6064) )
))
(declare-fun mapValue!20908 () ValueCell!6064)

(declare-datatypes ((array!29367 0))(
  ( (array!29368 (arr!14109 (Array (_ BitVec 32) ValueCell!6064)) (size!14461 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29367)

(declare-fun mapRest!20908 () (Array (_ BitVec 32) ValueCell!6064))

(declare-fun mapKey!20908 () (_ BitVec 32))

(assert (=> mapNonEmpty!20908 (= (arr!14109 _values!833) (store mapRest!20908 mapKey!20908 mapValue!20908))))

(declare-fun b!466167 () Bool)

(declare-fun tp_is_empty!12815 () Bool)

(assert (=> b!466167 (= e!272564 tp_is_empty!12815)))

(declare-fun b!466168 () Bool)

(declare-fun res!278711 () Bool)

(declare-fun e!272563 () Bool)

(assert (=> b!466168 (=> (not res!278711) (not e!272563))))

(declare-datatypes ((array!29369 0))(
  ( (array!29370 (arr!14110 (Array (_ BitVec 32) (_ BitVec 64))) (size!14462 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29369)

(declare-datatypes ((List!8561 0))(
  ( (Nil!8558) (Cons!8557 (h!9413 (_ BitVec 64)) (t!14521 List!8561)) )
))
(declare-fun arrayNoDuplicates!0 (array!29369 (_ BitVec 32) List!8561) Bool)

(assert (=> b!466168 (= res!278711 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8558))))

(declare-fun b!466169 () Bool)

(declare-fun res!278710 () Bool)

(assert (=> b!466169 (=> (not res!278710) (not e!272563))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29369 (_ BitVec 32)) Bool)

(assert (=> b!466169 (= res!278710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466170 () Bool)

(declare-fun e!272559 () Bool)

(assert (=> b!466170 (= e!272559 tp_is_empty!12815)))

(declare-fun res!278712 () Bool)

(assert (=> start!41774 (=> (not res!278712) (not e!272563))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41774 (= res!278712 (validMask!0 mask!1365))))

(assert (=> start!41774 e!272563))

(assert (=> start!41774 tp_is_empty!12815))

(assert (=> start!41774 tp!40167))

(assert (=> start!41774 true))

(declare-fun array_inv!10168 (array!29369) Bool)

(assert (=> start!41774 (array_inv!10168 _keys!1025)))

(declare-fun e!272562 () Bool)

(declare-fun array_inv!10169 (array!29367) Bool)

(assert (=> start!41774 (and (array_inv!10169 _values!833) e!272562)))

(declare-fun b!466171 () Bool)

(declare-fun e!272561 () Bool)

(assert (=> b!466171 (= e!272563 (not e!272561))))

(declare-fun res!278714 () Bool)

(assert (=> b!466171 (=> res!278714 e!272561)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!466171 (= res!278714 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8442 0))(
  ( (tuple2!8443 (_1!4231 (_ BitVec 64)) (_2!4231 V!18191)) )
))
(declare-datatypes ((List!8562 0))(
  ( (Nil!8559) (Cons!8558 (h!9414 tuple2!8442) (t!14522 List!8562)) )
))
(declare-datatypes ((ListLongMap!7369 0))(
  ( (ListLongMap!7370 (toList!3700 List!8562)) )
))
(declare-fun lt!210706 () ListLongMap!7369)

(declare-fun lt!210709 () ListLongMap!7369)

(assert (=> b!466171 (= lt!210706 lt!210709)))

(declare-datatypes ((Unit!13519 0))(
  ( (Unit!13520) )
))
(declare-fun lt!210705 () Unit!13519)

(declare-fun minValueBefore!38 () V!18191)

(declare-fun zeroValue!794 () V!18191)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18191)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!61 (array!29369 array!29367 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18191 V!18191 V!18191 V!18191 (_ BitVec 32) Int) Unit!13519)

(assert (=> b!466171 (= lt!210705 (lemmaNoChangeToArrayThenSameMapNoExtras!61 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1866 (array!29369 array!29367 (_ BitVec 32) (_ BitVec 32) V!18191 V!18191 (_ BitVec 32) Int) ListLongMap!7369)

(assert (=> b!466171 (= lt!210709 (getCurrentListMapNoExtraKeys!1866 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466171 (= lt!210706 (getCurrentListMapNoExtraKeys!1866 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466172 () Bool)

(declare-fun res!278713 () Bool)

(assert (=> b!466172 (=> (not res!278713) (not e!272563))))

(assert (=> b!466172 (= res!278713 (and (= (size!14461 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14462 _keys!1025) (size!14461 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!466173 () Bool)

(assert (=> b!466173 (= e!272561 true)))

(declare-fun lt!210707 () ListLongMap!7369)

(declare-fun getCurrentListMap!2141 (array!29369 array!29367 (_ BitVec 32) (_ BitVec 32) V!18191 V!18191 (_ BitVec 32) Int) ListLongMap!7369)

(assert (=> b!466173 (= lt!210707 (getCurrentListMap!2141 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210708 () ListLongMap!7369)

(declare-fun +!1632 (ListLongMap!7369 tuple2!8442) ListLongMap!7369)

(assert (=> b!466173 (= lt!210708 (+!1632 (getCurrentListMap!2141 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8443 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!466174 () Bool)

(assert (=> b!466174 (= e!272562 (and e!272559 mapRes!20908))))

(declare-fun condMapEmpty!20908 () Bool)

(declare-fun mapDefault!20908 () ValueCell!6064)

