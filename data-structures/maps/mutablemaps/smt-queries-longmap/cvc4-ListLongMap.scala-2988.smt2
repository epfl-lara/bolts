; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42230 () Bool)

(assert start!42230)

(declare-fun b_free!11741 () Bool)

(declare-fun b_next!11741 () Bool)

(assert (=> start!42230 (= b_free!11741 (not b_next!11741))))

(declare-fun tp!41248 () Bool)

(declare-fun b_and!20189 () Bool)

(assert (=> start!42230 (= tp!41248 b_and!20189)))

(declare-fun mapIsEmpty!21457 () Bool)

(declare-fun mapRes!21457 () Bool)

(assert (=> mapIsEmpty!21457 mapRes!21457))

(declare-fun mapNonEmpty!21457 () Bool)

(declare-fun tp!41247 () Bool)

(declare-fun e!276063 () Bool)

(assert (=> mapNonEmpty!21457 (= mapRes!21457 (and tp!41247 e!276063))))

(declare-datatypes ((V!18663 0))(
  ( (V!18664 (val!6629 Int)) )
))
(declare-datatypes ((ValueCell!6241 0))(
  ( (ValueCellFull!6241 (v!8916 V!18663)) (EmptyCell!6241) )
))
(declare-fun mapRest!21457 () (Array (_ BitVec 32) ValueCell!6241))

(declare-fun mapKey!21457 () (_ BitVec 32))

(declare-datatypes ((array!30065 0))(
  ( (array!30066 (arr!14452 (Array (_ BitVec 32) ValueCell!6241)) (size!14804 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30065)

(declare-fun mapValue!21457 () ValueCell!6241)

(assert (=> mapNonEmpty!21457 (= (arr!14452 _values!833) (store mapRest!21457 mapKey!21457 mapValue!21457))))

(declare-fun b!471051 () Bool)

(declare-fun e!276062 () Bool)

(assert (=> b!471051 (= e!276062 (not true))))

(declare-datatypes ((tuple2!8700 0))(
  ( (tuple2!8701 (_1!4360 (_ BitVec 64)) (_2!4360 V!18663)) )
))
(declare-datatypes ((List!8821 0))(
  ( (Nil!8818) (Cons!8817 (h!9673 tuple2!8700) (t!14793 List!8821)) )
))
(declare-datatypes ((ListLongMap!7627 0))(
  ( (ListLongMap!7628 (toList!3829 List!8821)) )
))
(declare-fun lt!213765 () ListLongMap!7627)

(declare-fun lt!213767 () ListLongMap!7627)

(assert (=> b!471051 (= lt!213765 lt!213767)))

(declare-fun minValueBefore!38 () V!18663)

(declare-datatypes ((Unit!13784 0))(
  ( (Unit!13785) )
))
(declare-fun lt!213766 () Unit!13784)

(declare-fun zeroValue!794 () V!18663)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!30067 0))(
  ( (array!30068 (arr!14453 (Array (_ BitVec 32) (_ BitVec 64))) (size!14805 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30067)

(declare-fun minValueAfter!38 () V!18663)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!186 (array!30067 array!30065 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18663 V!18663 V!18663 V!18663 (_ BitVec 32) Int) Unit!13784)

(assert (=> b!471051 (= lt!213766 (lemmaNoChangeToArrayThenSameMapNoExtras!186 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1991 (array!30067 array!30065 (_ BitVec 32) (_ BitVec 32) V!18663 V!18663 (_ BitVec 32) Int) ListLongMap!7627)

(assert (=> b!471051 (= lt!213767 (getCurrentListMapNoExtraKeys!1991 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!471051 (= lt!213765 (getCurrentListMapNoExtraKeys!1991 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!471052 () Bool)

(declare-fun e!276059 () Bool)

(declare-fun tp_is_empty!13169 () Bool)

(assert (=> b!471052 (= e!276059 tp_is_empty!13169)))

(declare-fun b!471054 () Bool)

(assert (=> b!471054 (= e!276063 tp_is_empty!13169)))

(declare-fun b!471055 () Bool)

(declare-fun res!281500 () Bool)

(assert (=> b!471055 (=> (not res!281500) (not e!276062))))

(assert (=> b!471055 (= res!281500 (and (= (size!14804 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14805 _keys!1025) (size!14804 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!471056 () Bool)

(declare-fun e!276060 () Bool)

(assert (=> b!471056 (= e!276060 (and e!276059 mapRes!21457))))

(declare-fun condMapEmpty!21457 () Bool)

(declare-fun mapDefault!21457 () ValueCell!6241)

