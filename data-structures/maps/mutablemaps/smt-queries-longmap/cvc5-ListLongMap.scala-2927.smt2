; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41740 () Bool)

(assert start!41740)

(declare-fun b_free!11371 () Bool)

(declare-fun b_next!11371 () Bool)

(assert (=> start!41740 (= b_free!11371 (not b_next!11371))))

(declare-fun tp!40117 () Bool)

(declare-fun b_and!19745 () Bool)

(assert (=> start!41740 (= tp!40117 b_and!19745)))

(declare-fun mapNonEmpty!20881 () Bool)

(declare-fun mapRes!20881 () Bool)

(declare-fun tp!40116 () Bool)

(declare-fun e!272307 () Bool)

(assert (=> mapNonEmpty!20881 (= mapRes!20881 (and tp!40116 e!272307))))

(declare-datatypes ((V!18171 0))(
  ( (V!18172 (val!6444 Int)) )
))
(declare-datatypes ((ValueCell!6056 0))(
  ( (ValueCellFull!6056 (v!8727 V!18171)) (EmptyCell!6056) )
))
(declare-datatypes ((array!29335 0))(
  ( (array!29336 (arr!14094 (Array (_ BitVec 32) ValueCell!6056)) (size!14446 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29335)

(declare-fun mapValue!20881 () ValueCell!6056)

(declare-fun mapRest!20881 () (Array (_ BitVec 32) ValueCell!6056))

(declare-fun mapKey!20881 () (_ BitVec 32))

(assert (=> mapNonEmpty!20881 (= (arr!14094 _values!833) (store mapRest!20881 mapKey!20881 mapValue!20881))))

(declare-fun b!465793 () Bool)

(declare-fun e!272309 () Bool)

(declare-fun e!272306 () Bool)

(assert (=> b!465793 (= e!272309 (not e!272306))))

(declare-fun res!278514 () Bool)

(assert (=> b!465793 (=> res!278514 e!272306)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!465793 (= res!278514 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8428 0))(
  ( (tuple2!8429 (_1!4224 (_ BitVec 64)) (_2!4224 V!18171)) )
))
(declare-datatypes ((List!8550 0))(
  ( (Nil!8547) (Cons!8546 (h!9402 tuple2!8428) (t!14508 List!8550)) )
))
(declare-datatypes ((ListLongMap!7355 0))(
  ( (ListLongMap!7356 (toList!3693 List!8550)) )
))
(declare-fun lt!210461 () ListLongMap!7355)

(declare-fun lt!210459 () ListLongMap!7355)

(assert (=> b!465793 (= lt!210461 lt!210459)))

(declare-fun minValueBefore!38 () V!18171)

(declare-datatypes ((Unit!13505 0))(
  ( (Unit!13506) )
))
(declare-fun lt!210460 () Unit!13505)

(declare-fun zeroValue!794 () V!18171)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29337 0))(
  ( (array!29338 (arr!14095 (Array (_ BitVec 32) (_ BitVec 64))) (size!14447 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29337)

(declare-fun defaultEntry!841 () Int)

(declare-fun minValueAfter!38 () V!18171)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!55 (array!29337 array!29335 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18171 V!18171 V!18171 V!18171 (_ BitVec 32) Int) Unit!13505)

(assert (=> b!465793 (= lt!210460 (lemmaNoChangeToArrayThenSameMapNoExtras!55 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1860 (array!29337 array!29335 (_ BitVec 32) (_ BitVec 32) V!18171 V!18171 (_ BitVec 32) Int) ListLongMap!7355)

(assert (=> b!465793 (= lt!210459 (getCurrentListMapNoExtraKeys!1860 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!465793 (= lt!210461 (getCurrentListMapNoExtraKeys!1860 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!465794 () Bool)

(declare-fun e!272305 () Bool)

(declare-fun tp_is_empty!12799 () Bool)

(assert (=> b!465794 (= e!272305 tp_is_empty!12799)))

(declare-fun b!465795 () Bool)

(declare-fun e!272310 () Bool)

(assert (=> b!465795 (= e!272310 (and e!272305 mapRes!20881))))

(declare-fun condMapEmpty!20881 () Bool)

(declare-fun mapDefault!20881 () ValueCell!6056)

