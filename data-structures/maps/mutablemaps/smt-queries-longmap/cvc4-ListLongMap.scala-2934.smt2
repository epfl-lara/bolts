; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41804 () Bool)

(assert start!41804)

(declare-fun b_free!11417 () Bool)

(declare-fun b_next!11417 () Bool)

(assert (=> start!41804 (= b_free!11417 (not b_next!11417))))

(declare-fun tp!40258 () Bool)

(declare-fun b_and!19803 () Bool)

(assert (=> start!41804 (= tp!40258 b_and!19803)))

(declare-fun b!466527 () Bool)

(declare-fun e!272830 () Bool)

(declare-fun tp_is_empty!12845 () Bool)

(assert (=> b!466527 (= e!272830 tp_is_empty!12845)))

(declare-fun res!278939 () Bool)

(declare-fun e!272833 () Bool)

(assert (=> start!41804 (=> (not res!278939) (not e!272833))))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!41804 (= res!278939 (validMask!0 mask!1365))))

(assert (=> start!41804 e!272833))

(assert (=> start!41804 tp_is_empty!12845))

(assert (=> start!41804 tp!40258))

(assert (=> start!41804 true))

(declare-datatypes ((array!29425 0))(
  ( (array!29426 (arr!14138 (Array (_ BitVec 32) (_ BitVec 64))) (size!14490 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29425)

(declare-fun array_inv!10188 (array!29425) Bool)

(assert (=> start!41804 (array_inv!10188 _keys!1025)))

(declare-datatypes ((V!18231 0))(
  ( (V!18232 (val!6467 Int)) )
))
(declare-datatypes ((ValueCell!6079 0))(
  ( (ValueCellFull!6079 (v!8751 V!18231)) (EmptyCell!6079) )
))
(declare-datatypes ((array!29427 0))(
  ( (array!29428 (arr!14139 (Array (_ BitVec 32) ValueCell!6079)) (size!14491 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29427)

(declare-fun e!272829 () Bool)

(declare-fun array_inv!10189 (array!29427) Bool)

(assert (=> start!41804 (and (array_inv!10189 _values!833) e!272829)))

(declare-fun b!466528 () Bool)

(declare-fun e!272834 () Bool)

(assert (=> b!466528 (= e!272833 (not e!272834))))

(declare-fun res!278938 () Bool)

(assert (=> b!466528 (=> res!278938 e!272834)))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!466528 (= res!278938 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((tuple2!8468 0))(
  ( (tuple2!8469 (_1!4244 (_ BitVec 64)) (_2!4244 V!18231)) )
))
(declare-datatypes ((List!8586 0))(
  ( (Nil!8583) (Cons!8582 (h!9438 tuple2!8468) (t!14546 List!8586)) )
))
(declare-datatypes ((ListLongMap!7395 0))(
  ( (ListLongMap!7396 (toList!3713 List!8586)) )
))
(declare-fun lt!210932 () ListLongMap!7395)

(declare-fun lt!210934 () ListLongMap!7395)

(assert (=> b!466528 (= lt!210932 lt!210934)))

(declare-datatypes ((Unit!13545 0))(
  ( (Unit!13546) )
))
(declare-fun lt!210933 () Unit!13545)

(declare-fun minValueBefore!38 () V!18231)

(declare-fun zeroValue!794 () V!18231)

(declare-fun defaultEntry!841 () Int)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun minValueAfter!38 () V!18231)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!74 (array!29425 array!29427 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18231 V!18231 V!18231 V!18231 (_ BitVec 32) Int) Unit!13545)

(assert (=> b!466528 (= lt!210933 (lemmaNoChangeToArrayThenSameMapNoExtras!74 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1879 (array!29425 array!29427 (_ BitVec 32) (_ BitVec 32) V!18231 V!18231 (_ BitVec 32) Int) ListLongMap!7395)

(assert (=> b!466528 (= lt!210934 (getCurrentListMapNoExtraKeys!1879 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!466528 (= lt!210932 (getCurrentListMapNoExtraKeys!1879 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!466529 () Bool)

(declare-fun e!272832 () Bool)

(assert (=> b!466529 (= e!272832 tp_is_empty!12845)))

(declare-fun b!466530 () Bool)

(assert (=> b!466530 (= e!272834 true)))

(declare-fun lt!210931 () ListLongMap!7395)

(declare-fun getCurrentListMap!2150 (array!29425 array!29427 (_ BitVec 32) (_ BitVec 32) V!18231 V!18231 (_ BitVec 32) Int) ListLongMap!7395)

(assert (=> b!466530 (= lt!210931 (getCurrentListMap!2150 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!210930 () ListLongMap!7395)

(declare-fun +!1641 (ListLongMap!7395 tuple2!8468) ListLongMap!7395)

(assert (=> b!466530 (= lt!210930 (+!1641 (getCurrentListMap!2150 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841) (tuple2!8469 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38)))))

(declare-fun b!466531 () Bool)

(declare-fun res!278935 () Bool)

(assert (=> b!466531 (=> (not res!278935) (not e!272833))))

(declare-datatypes ((List!8587 0))(
  ( (Nil!8584) (Cons!8583 (h!9439 (_ BitVec 64)) (t!14547 List!8587)) )
))
(declare-fun arrayNoDuplicates!0 (array!29425 (_ BitVec 32) List!8587) Bool)

(assert (=> b!466531 (= res!278935 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8584))))

(declare-fun b!466532 () Bool)

(declare-fun res!278937 () Bool)

(assert (=> b!466532 (=> (not res!278937) (not e!272833))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29425 (_ BitVec 32)) Bool)

(assert (=> b!466532 (= res!278937 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun mapIsEmpty!20953 () Bool)

(declare-fun mapRes!20953 () Bool)

(assert (=> mapIsEmpty!20953 mapRes!20953))

(declare-fun mapNonEmpty!20953 () Bool)

(declare-fun tp!40257 () Bool)

(assert (=> mapNonEmpty!20953 (= mapRes!20953 (and tp!40257 e!272832))))

(declare-fun mapKey!20953 () (_ BitVec 32))

(declare-fun mapRest!20953 () (Array (_ BitVec 32) ValueCell!6079))

(declare-fun mapValue!20953 () ValueCell!6079)

(assert (=> mapNonEmpty!20953 (= (arr!14139 _values!833) (store mapRest!20953 mapKey!20953 mapValue!20953))))

(declare-fun b!466533 () Bool)

(assert (=> b!466533 (= e!272829 (and e!272830 mapRes!20953))))

(declare-fun condMapEmpty!20953 () Bool)

(declare-fun mapDefault!20953 () ValueCell!6079)

