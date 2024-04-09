; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41904 () Bool)

(assert start!41904)

(declare-fun b_free!11485 () Bool)

(declare-fun b_next!11485 () Bool)

(assert (=> start!41904 (= b_free!11485 (not b_next!11485))))

(declare-fun tp!40467 () Bool)

(declare-fun b_and!19891 () Bool)

(assert (=> start!41904 (= tp!40467 b_and!19891)))

(declare-fun b!467531 () Bool)

(declare-fun e!273526 () Bool)

(assert (=> b!467531 (= e!273526 true)))

(declare-datatypes ((V!18323 0))(
  ( (V!18324 (val!6501 Int)) )
))
(declare-fun minValueBefore!38 () V!18323)

(declare-fun zeroValue!794 () V!18323)

(declare-fun defaultEntry!841 () Int)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((tuple2!8520 0))(
  ( (tuple2!8521 (_1!4270 (_ BitVec 64)) (_2!4270 V!18323)) )
))
(declare-datatypes ((List!8638 0))(
  ( (Nil!8635) (Cons!8634 (h!9490 tuple2!8520) (t!14602 List!8638)) )
))
(declare-datatypes ((ListLongMap!7447 0))(
  ( (ListLongMap!7448 (toList!3739 List!8638)) )
))
(declare-fun lt!211439 () ListLongMap!7447)

(declare-datatypes ((array!29563 0))(
  ( (array!29564 (arr!14205 (Array (_ BitVec 32) (_ BitVec 64))) (size!14557 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29563)

(declare-datatypes ((ValueCell!6113 0))(
  ( (ValueCellFull!6113 (v!8786 V!18323)) (EmptyCell!6113) )
))
(declare-datatypes ((array!29565 0))(
  ( (array!29566 (arr!14206 (Array (_ BitVec 32) ValueCell!6113)) (size!14558 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29565)

(declare-fun getCurrentListMap!2157 (array!29563 array!29565 (_ BitVec 32) (_ BitVec 32) V!18323 V!18323 (_ BitVec 32) Int) ListLongMap!7447)

(assert (=> b!467531 (= lt!211439 (getCurrentListMap!2157 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467532 () Bool)

(declare-fun res!279479 () Bool)

(declare-fun e!273527 () Bool)

(assert (=> b!467532 (=> (not res!279479) (not e!273527))))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!467532 (= res!279479 (and (= (size!14558 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14557 _keys!1025) (size!14558 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467533 () Bool)

(declare-fun res!279481 () Bool)

(assert (=> b!467533 (=> (not res!279481) (not e!273527))))

(declare-datatypes ((List!8639 0))(
  ( (Nil!8636) (Cons!8635 (h!9491 (_ BitVec 64)) (t!14603 List!8639)) )
))
(declare-fun arrayNoDuplicates!0 (array!29563 (_ BitVec 32) List!8639) Bool)

(assert (=> b!467533 (= res!279481 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8636))))

(declare-fun b!467534 () Bool)

(declare-fun e!273530 () Bool)

(declare-fun tp_is_empty!12913 () Bool)

(assert (=> b!467534 (= e!273530 tp_is_empty!12913)))

(declare-fun mapNonEmpty!21061 () Bool)

(declare-fun mapRes!21061 () Bool)

(declare-fun tp!40468 () Bool)

(assert (=> mapNonEmpty!21061 (= mapRes!21061 (and tp!40468 e!273530))))

(declare-fun mapValue!21061 () ValueCell!6113)

(declare-fun mapRest!21061 () (Array (_ BitVec 32) ValueCell!6113))

(declare-fun mapKey!21061 () (_ BitVec 32))

(assert (=> mapNonEmpty!21061 (= (arr!14206 _values!833) (store mapRest!21061 mapKey!21061 mapValue!21061))))

(declare-fun res!279480 () Bool)

(assert (=> start!41904 (=> (not res!279480) (not e!273527))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41904 (= res!279480 (validMask!0 mask!1365))))

(assert (=> start!41904 e!273527))

(assert (=> start!41904 tp_is_empty!12913))

(assert (=> start!41904 tp!40467))

(assert (=> start!41904 true))

(declare-fun array_inv!10244 (array!29563) Bool)

(assert (=> start!41904 (array_inv!10244 _keys!1025)))

(declare-fun e!273529 () Bool)

(declare-fun array_inv!10245 (array!29565) Bool)

(assert (=> start!41904 (and (array_inv!10245 _values!833) e!273529)))

(declare-fun b!467535 () Bool)

(assert (=> b!467535 (= e!273527 (not e!273526))))

(declare-fun res!279477 () Bool)

(assert (=> b!467535 (=> res!279477 e!273526)))

(assert (=> b!467535 (= res!279477 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!211440 () ListLongMap!7447)

(declare-fun lt!211441 () ListLongMap!7447)

(assert (=> b!467535 (= lt!211440 lt!211441)))

(declare-fun minValueAfter!38 () V!18323)

(declare-datatypes ((Unit!13599 0))(
  ( (Unit!13600) )
))
(declare-fun lt!211438 () Unit!13599)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!100 (array!29563 array!29565 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18323 V!18323 V!18323 V!18323 (_ BitVec 32) Int) Unit!13599)

(assert (=> b!467535 (= lt!211438 (lemmaNoChangeToArrayThenSameMapNoExtras!100 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1905 (array!29563 array!29565 (_ BitVec 32) (_ BitVec 32) V!18323 V!18323 (_ BitVec 32) Int) ListLongMap!7447)

(assert (=> b!467535 (= lt!211441 (getCurrentListMapNoExtraKeys!1905 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467535 (= lt!211440 (getCurrentListMapNoExtraKeys!1905 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467536 () Bool)

(declare-fun e!273528 () Bool)

(assert (=> b!467536 (= e!273529 (and e!273528 mapRes!21061))))

(declare-fun condMapEmpty!21061 () Bool)

(declare-fun mapDefault!21061 () ValueCell!6113)

