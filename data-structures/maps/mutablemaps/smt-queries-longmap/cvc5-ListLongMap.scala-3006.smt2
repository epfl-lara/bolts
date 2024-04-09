; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42362 () Bool)

(assert start!42362)

(declare-fun b_free!11845 () Bool)

(declare-fun b_next!11845 () Bool)

(assert (=> start!42362 (= b_free!11845 (not b_next!11845))))

(declare-fun tp!41565 () Bool)

(declare-fun b_and!20309 () Bool)

(assert (=> start!42362 (= tp!41565 b_and!20309)))

(declare-fun b!472369 () Bool)

(declare-fun e!277007 () Bool)

(assert (=> b!472369 (= e!277007 true)))

(declare-datatypes ((V!18803 0))(
  ( (V!18804 (val!6681 Int)) )
))
(declare-fun minValueBefore!38 () V!18803)

(declare-datatypes ((tuple2!8788 0))(
  ( (tuple2!8789 (_1!4404 (_ BitVec 64)) (_2!4404 V!18803)) )
))
(declare-datatypes ((List!8903 0))(
  ( (Nil!8900) (Cons!8899 (h!9755 tuple2!8788) (t!14879 List!8903)) )
))
(declare-datatypes ((ListLongMap!7715 0))(
  ( (ListLongMap!7716 (toList!3873 List!8903)) )
))
(declare-fun lt!214371 () ListLongMap!7715)

(declare-fun zeroValue!794 () V!18803)

(declare-fun defaultEntry!841 () Int)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!30267 0))(
  ( (array!30268 (arr!14551 (Array (_ BitVec 32) (_ BitVec 64))) (size!14903 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30267)

(declare-datatypes ((ValueCell!6293 0))(
  ( (ValueCellFull!6293 (v!8968 V!18803)) (EmptyCell!6293) )
))
(declare-datatypes ((array!30269 0))(
  ( (array!30270 (arr!14552 (Array (_ BitVec 32) ValueCell!6293)) (size!14904 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30269)

(declare-fun getCurrentListMap!2220 (array!30267 array!30269 (_ BitVec 32) (_ BitVec 32) V!18803 V!18803 (_ BitVec 32) Int) ListLongMap!7715)

(assert (=> b!472369 (= lt!214371 (getCurrentListMap!2220 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472370 () Bool)

(declare-fun res!282241 () Bool)

(declare-fun e!277008 () Bool)

(assert (=> b!472370 (=> (not res!282241) (not e!277008))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30267 (_ BitVec 32)) Bool)

(assert (=> b!472370 (= res!282241 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472371 () Bool)

(declare-fun res!282240 () Bool)

(assert (=> b!472371 (=> (not res!282240) (not e!277008))))

(declare-datatypes ((List!8904 0))(
  ( (Nil!8901) (Cons!8900 (h!9756 (_ BitVec 64)) (t!14880 List!8904)) )
))
(declare-fun arrayNoDuplicates!0 (array!30267 (_ BitVec 32) List!8904) Bool)

(assert (=> b!472371 (= res!282240 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8901))))

(declare-fun mapNonEmpty!21619 () Bool)

(declare-fun mapRes!21619 () Bool)

(declare-fun tp!41566 () Bool)

(declare-fun e!277005 () Bool)

(assert (=> mapNonEmpty!21619 (= mapRes!21619 (and tp!41566 e!277005))))

(declare-fun mapKey!21619 () (_ BitVec 32))

(declare-fun mapRest!21619 () (Array (_ BitVec 32) ValueCell!6293))

(declare-fun mapValue!21619 () ValueCell!6293)

(assert (=> mapNonEmpty!21619 (= (arr!14552 _values!833) (store mapRest!21619 mapKey!21619 mapValue!21619))))

(declare-fun res!282243 () Bool)

(assert (=> start!42362 (=> (not res!282243) (not e!277008))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42362 (= res!282243 (validMask!0 mask!1365))))

(assert (=> start!42362 e!277008))

(declare-fun tp_is_empty!13273 () Bool)

(assert (=> start!42362 tp_is_empty!13273))

(assert (=> start!42362 tp!41565))

(assert (=> start!42362 true))

(declare-fun array_inv!10496 (array!30267) Bool)

(assert (=> start!42362 (array_inv!10496 _keys!1025)))

(declare-fun e!277006 () Bool)

(declare-fun array_inv!10497 (array!30269) Bool)

(assert (=> start!42362 (and (array_inv!10497 _values!833) e!277006)))

(declare-fun b!472372 () Bool)

(assert (=> b!472372 (= e!277008 (not e!277007))))

(declare-fun res!282239 () Bool)

(assert (=> b!472372 (=> res!282239 e!277007)))

(assert (=> b!472372 (= res!282239 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!214369 () ListLongMap!7715)

(declare-fun lt!214370 () ListLongMap!7715)

(assert (=> b!472372 (= lt!214369 lt!214370)))

(declare-datatypes ((Unit!13866 0))(
  ( (Unit!13867) )
))
(declare-fun lt!214372 () Unit!13866)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18803)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!227 (array!30267 array!30269 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18803 V!18803 V!18803 V!18803 (_ BitVec 32) Int) Unit!13866)

(assert (=> b!472372 (= lt!214372 (lemmaNoChangeToArrayThenSameMapNoExtras!227 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2032 (array!30267 array!30269 (_ BitVec 32) (_ BitVec 32) V!18803 V!18803 (_ BitVec 32) Int) ListLongMap!7715)

(assert (=> b!472372 (= lt!214370 (getCurrentListMapNoExtraKeys!2032 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472372 (= lt!214369 (getCurrentListMapNoExtraKeys!2032 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472373 () Bool)

(declare-fun e!277009 () Bool)

(assert (=> b!472373 (= e!277009 tp_is_empty!13273)))

(declare-fun b!472374 () Bool)

(assert (=> b!472374 (= e!277005 tp_is_empty!13273)))

(declare-fun b!472375 () Bool)

(declare-fun res!282242 () Bool)

(assert (=> b!472375 (=> (not res!282242) (not e!277008))))

(assert (=> b!472375 (= res!282242 (and (= (size!14904 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14903 _keys!1025) (size!14904 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!472376 () Bool)

(assert (=> b!472376 (= e!277006 (and e!277009 mapRes!21619))))

(declare-fun condMapEmpty!21619 () Bool)

(declare-fun mapDefault!21619 () ValueCell!6293)

