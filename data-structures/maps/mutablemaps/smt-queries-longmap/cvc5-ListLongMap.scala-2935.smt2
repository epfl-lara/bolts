; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41806 () Bool)

(assert start!41806)

(declare-fun b_free!11419 () Bool)

(declare-fun b_next!11419 () Bool)

(assert (=> start!41806 (= b_free!11419 (not b_next!11419))))

(declare-fun tp!40264 () Bool)

(declare-fun b_and!19805 () Bool)

(assert (=> start!41806 (= tp!40264 b_and!19805)))

(declare-fun res!278950 () Bool)

(declare-fun e!272848 () Bool)

(assert (=> start!41806 (=> (not res!278950) (not e!272848))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41806 (= res!278950 (validMask!0 mask!1365))))

(assert (=> start!41806 e!272848))

(declare-fun tp_is_empty!12847 () Bool)

(assert (=> start!41806 tp_is_empty!12847))

(assert (=> start!41806 tp!40264))

(assert (=> start!41806 true))

(declare-datatypes ((array!29429 0))(
  ( (array!29430 (arr!14140 (Array (_ BitVec 32) (_ BitVec 64))) (size!14492 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29429)

(declare-fun array_inv!10190 (array!29429) Bool)

(assert (=> start!41806 (array_inv!10190 _keys!1025)))

(declare-datatypes ((V!18235 0))(
  ( (V!18236 (val!6468 Int)) )
))
(declare-datatypes ((ValueCell!6080 0))(
  ( (ValueCellFull!6080 (v!8752 V!18235)) (EmptyCell!6080) )
))
(declare-datatypes ((array!29431 0))(
  ( (array!29432 (arr!14141 (Array (_ BitVec 32) ValueCell!6080)) (size!14493 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29431)

(declare-fun e!272850 () Bool)

(declare-fun array_inv!10191 (array!29431) Bool)

(assert (=> start!41806 (and (array_inv!10191 _values!833) e!272850)))

(declare-fun b!466551 () Bool)

(declare-fun res!278951 () Bool)

(assert (=> b!466551 (=> (not res!278951) (not e!272848))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29429 (_ BitVec 32)) Bool)

(assert (=> b!466551 (= res!278951 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!466552 () Bool)

(declare-fun e!272847 () Bool)

(assert (=> b!466552 (= e!272848 (not e!272847))))

(declare-fun res!278953 () Bool)

(assert (=> b!466552 (=> res!278953 e!272847)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!466552 (= res!278953 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8470 0))(
  ( (tuple2!8471 (_1!4245 (_ BitVec 64)) (_2!4245 V!18235)) )
))
(declare-datatypes ((List!8588 0))(
  ( (Nil!8585) (Cons!8584 (h!9440 tuple2!8470) (t!14548 List!8588)) )
))
(declare-datatypes ((ListLongMap!7397 0))(
  ( (ListLongMap!7398 (toList!3714 List!8588)) )
))
(declare-fun lt!210948 () ListLongMap!7397)

(declare-fun lt!210949 () ListLongMap!7397)

(assert (=> b!466552 (= lt!210948 lt!210949)))

(declare-fun minValueBefore!38 () V!18235)

(declare-fun zeroValue!794 () V!18235)

(declare-fun defaultEntry!841 () Int)

(declare-datatypes ((Unit!13547 0))(
  ( (Unit!13548) )
))
(declare-fun lt!210946 () Unit!13547)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18235)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!75 (array!29429 array!29431 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18235 V!18235 V!18235 V!18235 (_ BitVec 32) Int) Unit!13547)

(assert (=> b!466552 (= lt!210946 (lemmaNoChangeToArrayThenSameMapNoExtras!75 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1880 (array!29429 array!29431 (_ BitVec 32) (_ BitVec 32) V!18235 V!18235 (_ BitVec 32) Int) ListLongMap!7397)

(assert (=> b!466552 (= lt!210949 (getCurrentListMapNoExtraKeys!1880 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466552 (= lt!210948 (getCurrentListMapNoExtraKeys!1880 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun mapNonEmpty!20956 () Bool)

(declare-fun mapRes!20956 () Bool)

(declare-fun tp!40263 () Bool)

(declare-fun e!272851 () Bool)

(assert (=> mapNonEmpty!20956 (= mapRes!20956 (and tp!40263 e!272851))))

(declare-fun mapKey!20956 () (_ BitVec 32))

(declare-fun mapRest!20956 () (Array (_ BitVec 32) ValueCell!6080))

(declare-fun mapValue!20956 () ValueCell!6080)

(assert (=> mapNonEmpty!20956 (= (arr!14141 _values!833) (store mapRest!20956 mapKey!20956 mapValue!20956))))

(declare-fun b!466553 () Bool)

(declare-fun res!278954 () Bool)

(assert (=> b!466553 (=> (not res!278954) (not e!272848))))

(assert (=> b!466553 (= res!278954 (and (= (size!14493 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14492 _keys!1025) (size!14493 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!466554 () Bool)

(declare-fun e!272849 () Bool)

(assert (=> b!466554 (= e!272849 tp_is_empty!12847)))

(declare-fun b!466555 () Bool)

(assert (=> b!466555 (= e!272847 true)))

(declare-fun lt!210945 () ListLongMap!7397)

(declare-fun getCurrentListMap!2151 (array!29429 array!29431 (_ BitVec 32) (_ BitVec 32) V!18235 V!18235 (_ BitVec 32) Int) ListLongMap!7397)

(assert (=> b!466555 (= lt!210945 (getCurrentListMap!2151 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210947 () ListLongMap!7397)

(declare-fun +!1642 (ListLongMap!7397 tuple2!8470) ListLongMap!7397)

(assert (=> b!466555 (= lt!210947 (+!1642 (getCurrentListMap!2151 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8471 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!466556 () Bool)

(assert (=> b!466556 (= e!272850 (and e!272849 mapRes!20956))))

(declare-fun condMapEmpty!20956 () Bool)

(declare-fun mapDefault!20956 () ValueCell!6080)

