; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42368 () Bool)

(assert start!42368)

(declare-fun b_free!11851 () Bool)

(declare-fun b_next!11851 () Bool)

(assert (=> start!42368 (= b_free!11851 (not b_next!11851))))

(declare-fun tp!41583 () Bool)

(declare-fun b_and!20315 () Bool)

(assert (=> start!42368 (= tp!41583 b_and!20315)))

(declare-fun b!472441 () Bool)

(declare-fun res!282288 () Bool)

(declare-fun e!277062 () Bool)

(assert (=> b!472441 (=> (not res!282288) (not e!277062))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!30279 0))(
  ( (array!30280 (arr!14557 (Array (_ BitVec 32) (_ BitVec 64))) (size!14909 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30279)

(declare-datatypes ((V!18811 0))(
  ( (V!18812 (val!6684 Int)) )
))
(declare-datatypes ((ValueCell!6296 0))(
  ( (ValueCellFull!6296 (v!8971 V!18811)) (EmptyCell!6296) )
))
(declare-datatypes ((array!30281 0))(
  ( (array!30282 (arr!14558 (Array (_ BitVec 32) ValueCell!6296)) (size!14910 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30281)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!472441 (= res!282288 (and (= (size!14910 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14909 _keys!1025) (size!14910 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!472443 () Bool)

(declare-fun e!277059 () Bool)

(assert (=> b!472443 (= e!277062 (not e!277059))))

(declare-fun res!282285 () Bool)

(assert (=> b!472443 (=> res!282285 e!277059)))

(assert (=> b!472443 (= res!282285 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!8792 0))(
  ( (tuple2!8793 (_1!4406 (_ BitVec 64)) (_2!4406 V!18811)) )
))
(declare-datatypes ((List!8908 0))(
  ( (Nil!8905) (Cons!8904 (h!9760 tuple2!8792) (t!14884 List!8908)) )
))
(declare-datatypes ((ListLongMap!7719 0))(
  ( (ListLongMap!7720 (toList!3875 List!8908)) )
))
(declare-fun lt!214406 () ListLongMap!7719)

(declare-fun lt!214405 () ListLongMap!7719)

(assert (=> b!472443 (= lt!214406 lt!214405)))

(declare-fun minValueBefore!38 () V!18811)

(declare-fun zeroValue!794 () V!18811)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13870 0))(
  ( (Unit!13871) )
))
(declare-fun lt!214408 () Unit!13870)

(declare-fun minValueAfter!38 () V!18811)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!229 (array!30279 array!30281 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18811 V!18811 V!18811 V!18811 (_ BitVec 32) Int) Unit!13870)

(assert (=> b!472443 (= lt!214408 (lemmaNoChangeToArrayThenSameMapNoExtras!229 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2034 (array!30279 array!30281 (_ BitVec 32) (_ BitVec 32) V!18811 V!18811 (_ BitVec 32) Int) ListLongMap!7719)

(assert (=> b!472443 (= lt!214405 (getCurrentListMapNoExtraKeys!2034 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472443 (= lt!214406 (getCurrentListMapNoExtraKeys!2034 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472444 () Bool)

(assert (=> b!472444 (= e!277059 true)))

(declare-fun lt!214407 () ListLongMap!7719)

(declare-fun getCurrentListMap!2222 (array!30279 array!30281 (_ BitVec 32) (_ BitVec 32) V!18811 V!18811 (_ BitVec 32) Int) ListLongMap!7719)

(assert (=> b!472444 (= lt!214407 (getCurrentListMap!2222 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapIsEmpty!21628 () Bool)

(declare-fun mapRes!21628 () Bool)

(assert (=> mapIsEmpty!21628 mapRes!21628))

(declare-fun b!472445 () Bool)

(declare-fun e!277060 () Bool)

(declare-fun tp_is_empty!13279 () Bool)

(assert (=> b!472445 (= e!277060 tp_is_empty!13279)))

(declare-fun b!472446 () Bool)

(declare-fun res!282284 () Bool)

(assert (=> b!472446 (=> (not res!282284) (not e!277062))))

(declare-datatypes ((List!8909 0))(
  ( (Nil!8906) (Cons!8905 (h!9761 (_ BitVec 64)) (t!14885 List!8909)) )
))
(declare-fun arrayNoDuplicates!0 (array!30279 (_ BitVec 32) List!8909) Bool)

(assert (=> b!472446 (= res!282284 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8906))))

(declare-fun b!472447 () Bool)

(declare-fun e!277063 () Bool)

(assert (=> b!472447 (= e!277063 tp_is_empty!13279)))

(declare-fun mapNonEmpty!21628 () Bool)

(declare-fun tp!41584 () Bool)

(assert (=> mapNonEmpty!21628 (= mapRes!21628 (and tp!41584 e!277060))))

(declare-fun mapRest!21628 () (Array (_ BitVec 32) ValueCell!6296))

(declare-fun mapValue!21628 () ValueCell!6296)

(declare-fun mapKey!21628 () (_ BitVec 32))

(assert (=> mapNonEmpty!21628 (= (arr!14558 _values!833) (store mapRest!21628 mapKey!21628 mapValue!21628))))

(declare-fun b!472448 () Bool)

(declare-fun res!282287 () Bool)

(assert (=> b!472448 (=> (not res!282287) (not e!277062))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!30279 (_ BitVec 32)) Bool)

(assert (=> b!472448 (= res!282287 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!472442 () Bool)

(declare-fun e!277064 () Bool)

(assert (=> b!472442 (= e!277064 (and e!277063 mapRes!21628))))

(declare-fun condMapEmpty!21628 () Bool)

(declare-fun mapDefault!21628 () ValueCell!6296)

