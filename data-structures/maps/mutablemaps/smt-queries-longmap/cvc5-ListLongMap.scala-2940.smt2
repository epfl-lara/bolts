; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41854 () Bool)

(assert start!41854)

(declare-fun b_free!11449 () Bool)

(declare-fun b_next!11449 () Bool)

(assert (=> start!41854 (= b_free!11449 (not b_next!11449))))

(declare-fun tp!40357 () Bool)

(declare-fun b_and!19847 () Bool)

(assert (=> start!41854 (= tp!40357 b_and!19847)))

(declare-fun b!467066 () Bool)

(declare-fun res!279228 () Bool)

(declare-fun e!273201 () Bool)

(assert (=> b!467066 (=> (not res!279228) (not e!273201))))

(declare-datatypes ((array!29489 0))(
  ( (array!29490 (arr!14169 (Array (_ BitVec 32) (_ BitVec 64))) (size!14521 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29489)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29489 (_ BitVec 32)) Bool)

(assert (=> b!467066 (= res!279228 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun res!279231 () Bool)

(assert (=> start!41854 (=> (not res!279231) (not e!273201))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41854 (= res!279231 (validMask!0 mask!1365))))

(assert (=> start!41854 e!273201))

(declare-fun tp_is_empty!12877 () Bool)

(assert (=> start!41854 tp_is_empty!12877))

(assert (=> start!41854 tp!40357))

(assert (=> start!41854 true))

(declare-fun array_inv!10214 (array!29489) Bool)

(assert (=> start!41854 (array_inv!10214 _keys!1025)))

(declare-datatypes ((V!18275 0))(
  ( (V!18276 (val!6483 Int)) )
))
(declare-datatypes ((ValueCell!6095 0))(
  ( (ValueCellFull!6095 (v!8768 V!18275)) (EmptyCell!6095) )
))
(declare-datatypes ((array!29491 0))(
  ( (array!29492 (arr!14170 (Array (_ BitVec 32) ValueCell!6095)) (size!14522 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29491)

(declare-fun e!273199 () Bool)

(declare-fun array_inv!10215 (array!29491) Bool)

(assert (=> start!41854 (and (array_inv!10215 _values!833) e!273199)))

(declare-fun mapNonEmpty!21004 () Bool)

(declare-fun mapRes!21004 () Bool)

(declare-fun tp!40356 () Bool)

(declare-fun e!273202 () Bool)

(assert (=> mapNonEmpty!21004 (= mapRes!21004 (and tp!40356 e!273202))))

(declare-fun mapValue!21004 () ValueCell!6095)

(declare-fun mapRest!21004 () (Array (_ BitVec 32) ValueCell!6095))

(declare-fun mapKey!21004 () (_ BitVec 32))

(assert (=> mapNonEmpty!21004 (= (arr!14170 _values!833) (store mapRest!21004 mapKey!21004 mapValue!21004))))

(declare-fun b!467067 () Bool)

(declare-fun res!279229 () Bool)

(assert (=> b!467067 (=> (not res!279229) (not e!273201))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(assert (=> b!467067 (= res!279229 (and (= (size!14522 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14521 _keys!1025) (size!14522 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!467068 () Bool)

(assert (=> b!467068 (= e!273202 tp_is_empty!12877)))

(declare-fun b!467069 () Bool)

(assert (=> b!467069 (= e!273201 (not true))))

(declare-datatypes ((tuple2!8498 0))(
  ( (tuple2!8499 (_1!4259 (_ BitVec 64)) (_2!4259 V!18275)) )
))
(declare-datatypes ((List!8614 0))(
  ( (Nil!8611) (Cons!8610 (h!9466 tuple2!8498) (t!14576 List!8614)) )
))
(declare-datatypes ((ListLongMap!7425 0))(
  ( (ListLongMap!7426 (toList!3728 List!8614)) )
))
(declare-fun lt!211234 () ListLongMap!7425)

(declare-fun lt!211236 () ListLongMap!7425)

(assert (=> b!467069 (= lt!211234 lt!211236)))

(declare-fun minValueBefore!38 () V!18275)

(declare-fun zeroValue!794 () V!18275)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13577 0))(
  ( (Unit!13578) )
))
(declare-fun lt!211235 () Unit!13577)

(declare-fun minValueAfter!38 () V!18275)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!89 (array!29489 array!29491 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18275 V!18275 V!18275 V!18275 (_ BitVec 32) Int) Unit!13577)

(assert (=> b!467069 (= lt!211235 (lemmaNoChangeToArrayThenSameMapNoExtras!89 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1894 (array!29489 array!29491 (_ BitVec 32) (_ BitVec 32) V!18275 V!18275 (_ BitVec 32) Int) ListLongMap!7425)

(assert (=> b!467069 (= lt!211236 (getCurrentListMapNoExtraKeys!1894 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!467069 (= lt!211234 (getCurrentListMapNoExtraKeys!1894 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!467070 () Bool)

(declare-fun e!273198 () Bool)

(assert (=> b!467070 (= e!273199 (and e!273198 mapRes!21004))))

(declare-fun condMapEmpty!21004 () Bool)

(declare-fun mapDefault!21004 () ValueCell!6095)

