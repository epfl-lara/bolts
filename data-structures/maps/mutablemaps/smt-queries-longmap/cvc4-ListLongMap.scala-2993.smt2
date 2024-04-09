; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42274 () Bool)

(assert start!42274)

(declare-fun b_free!11771 () Bool)

(declare-fun b_next!11771 () Bool)

(assert (=> start!42274 (= b_free!11771 (not b_next!11771))))

(declare-fun tp!41340 () Bool)

(declare-fun b_and!20227 () Bool)

(assert (=> start!42274 (= tp!41340 b_and!20227)))

(declare-fun mapNonEmpty!21505 () Bool)

(declare-fun mapRes!21505 () Bool)

(declare-fun tp!41341 () Bool)

(declare-fun e!276343 () Bool)

(assert (=> mapNonEmpty!21505 (= mapRes!21505 (and tp!41341 e!276343))))

(declare-datatypes ((V!18703 0))(
  ( (V!18704 (val!6644 Int)) )
))
(declare-datatypes ((ValueCell!6256 0))(
  ( (ValueCellFull!6256 (v!8931 V!18703)) (EmptyCell!6256) )
))
(declare-datatypes ((array!30125 0))(
  ( (array!30126 (arr!14481 (Array (_ BitVec 32) ValueCell!6256)) (size!14833 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30125)

(declare-fun mapValue!21505 () ValueCell!6256)

(declare-fun mapRest!21505 () (Array (_ BitVec 32) ValueCell!6256))

(declare-fun mapKey!21505 () (_ BitVec 32))

(assert (=> mapNonEmpty!21505 (= (arr!14481 _values!833) (store mapRest!21505 mapKey!21505 mapValue!21505))))

(declare-fun res!281711 () Bool)

(declare-fun e!276339 () Bool)

(assert (=> start!42274 (=> (not res!281711) (not e!276339))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!42274 (= res!281711 (validMask!0 mask!1365))))

(assert (=> start!42274 e!276339))

(declare-fun tp_is_empty!13199 () Bool)

(assert (=> start!42274 tp_is_empty!13199))

(assert (=> start!42274 tp!41340))

(assert (=> start!42274 true))

(declare-datatypes ((array!30127 0))(
  ( (array!30128 (arr!14482 (Array (_ BitVec 32) (_ BitVec 64))) (size!14834 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30127)

(declare-fun array_inv!10448 (array!30127) Bool)

(assert (=> start!42274 (array_inv!10448 _keys!1025)))

(declare-fun e!276342 () Bool)

(declare-fun array_inv!10449 (array!30125) Bool)

(assert (=> start!42274 (and (array_inv!10449 _values!833) e!276342)))

(declare-fun b!471451 () Bool)

(assert (=> b!471451 (= e!276339 (not true))))

(declare-datatypes ((tuple2!8728 0))(
  ( (tuple2!8729 (_1!4374 (_ BitVec 64)) (_2!4374 V!18703)) )
))
(declare-datatypes ((List!8847 0))(
  ( (Nil!8844) (Cons!8843 (h!9699 tuple2!8728) (t!14821 List!8847)) )
))
(declare-datatypes ((ListLongMap!7655 0))(
  ( (ListLongMap!7656 (toList!3843 List!8847)) )
))
(declare-fun lt!213941 () ListLongMap!7655)

(declare-fun lt!213942 () ListLongMap!7655)

(assert (=> b!471451 (= lt!213941 lt!213942)))

(declare-fun minValueBefore!38 () V!18703)

(declare-fun zeroValue!794 () V!18703)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13812 0))(
  ( (Unit!13813) )
))
(declare-fun lt!213940 () Unit!13812)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18703)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!200 (array!30127 array!30125 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18703 V!18703 V!18703 V!18703 (_ BitVec 32) Int) Unit!13812)

(assert (=> b!471451 (= lt!213940 (lemmaNoChangeToArrayThenSameMapNoExtras!200 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2005 (array!30127 array!30125 (_ BitVec 32) (_ BitVec 32) V!18703 V!18703 (_ BitVec 32) Int) ListLongMap!7655)

(assert (=> b!471451 (= lt!213942 (getCurrentListMapNoExtraKeys!2005 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471451 (= lt!213941 (getCurrentListMapNoExtraKeys!2005 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21505 () Bool)

(assert (=> mapIsEmpty!21505 mapRes!21505))

(declare-fun b!471452 () Bool)

(declare-fun e!276341 () Bool)

(assert (=> b!471452 (= e!276341 tp_is_empty!13199)))

(declare-fun b!471453 () Bool)

(assert (=> b!471453 (= e!276342 (and e!276341 mapRes!21505))))

(declare-fun condMapEmpty!21505 () Bool)

(declare-fun mapDefault!21505 () ValueCell!6256)

