; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42338 () Bool)

(assert start!42338)

(declare-fun b_free!11821 () Bool)

(declare-fun b_next!11821 () Bool)

(assert (=> start!42338 (= b_free!11821 (not b_next!11821))))

(declare-fun tp!41494 () Bool)

(declare-fun b_and!20285 () Bool)

(assert (=> start!42338 (= tp!41494 b_and!20285)))

(declare-fun b!472081 () Bool)

(declare-fun e!276790 () Bool)

(assert (=> b!472081 (= e!276790 true)))

(declare-datatypes ((V!18771 0))(
  ( (V!18772 (val!6669 Int)) )
))
(declare-fun minValueBefore!38 () V!18771)

(declare-fun zeroValue!794 () V!18771)

(declare-fun defaultEntry!841 () Int)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-datatypes ((tuple2!8770 0))(
  ( (tuple2!8771 (_1!4395 (_ BitVec 64)) (_2!4395 V!18771)) )
))
(declare-datatypes ((List!8885 0))(
  ( (Nil!8882) (Cons!8881 (h!9737 tuple2!8770) (t!14861 List!8885)) )
))
(declare-datatypes ((ListLongMap!7697 0))(
  ( (ListLongMap!7698 (toList!3864 List!8885)) )
))
(declare-fun lt!214228 () ListLongMap!7697)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-datatypes ((array!30223 0))(
  ( (array!30224 (arr!14529 (Array (_ BitVec 32) (_ BitVec 64))) (size!14881 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!30223)

(declare-datatypes ((ValueCell!6281 0))(
  ( (ValueCellFull!6281 (v!8956 V!18771)) (EmptyCell!6281) )
))
(declare-datatypes ((array!30225 0))(
  ( (array!30226 (arr!14530 (Array (_ BitVec 32) ValueCell!6281)) (size!14882 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!30225)

(declare-fun getCurrentListMap!2212 (array!30223 array!30225 (_ BitVec 32) (_ BitVec 32) V!18771 V!18771 (_ BitVec 32) Int) ListLongMap!7697)

(assert (=> b!472081 (= lt!214228 (getCurrentListMap!2212 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472082 () Bool)

(declare-fun e!276794 () Bool)

(assert (=> b!472082 (= e!276794 (not e!276790))))

(declare-fun res!282059 () Bool)

(assert (=> b!472082 (=> res!282059 e!276790)))

(assert (=> b!472082 (= res!282059 (or (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!214226 () ListLongMap!7697)

(declare-fun lt!214227 () ListLongMap!7697)

(assert (=> b!472082 (= lt!214226 lt!214227)))

(declare-fun minValueAfter!38 () V!18771)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((Unit!13852 0))(
  ( (Unit!13853) )
))
(declare-fun lt!214225 () Unit!13852)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!220 (array!30223 array!30225 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18771 V!18771 V!18771 V!18771 (_ BitVec 32) Int) Unit!13852)

(assert (=> b!472082 (= lt!214225 (lemmaNoChangeToArrayThenSameMapNoExtras!220 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!2025 (array!30223 array!30225 (_ BitVec 32) (_ BitVec 32) V!18771 V!18771 (_ BitVec 32) Int) ListLongMap!7697)

(assert (=> b!472082 (= lt!214227 (getCurrentListMapNoExtraKeys!2025 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!472082 (= lt!214226 (getCurrentListMapNoExtraKeys!2025 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!472083 () Bool)

(declare-fun res!282060 () Bool)

(assert (=> b!472083 (=> (not res!282060) (not e!276794))))

(assert (=> b!472083 (= res!282060 (and (= (size!14882 _values!833) (bvadd #b00000000000000000000000000000001 mask!1365)) (= (size!14881 _keys!1025) (size!14882 _values!833)) (bvsge mask!1365 #b00000000000000000000000000000000) (bvsge extraKeysBefore!66 #b00000000000000000000000000000000) (bvsle extraKeysBefore!66 #b00000000000000000000000000000011) (bvsge extraKeysAfter!58 #b00000000000000000000000000000000) (bvsle extraKeysAfter!58 #b00000000000000000000000000000011) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) (bvand extraKeysAfter!58 #b00000000000000000000000000000001)) (not (= (bvand extraKeysAfter!58 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!21583 () Bool)

(declare-fun mapRes!21583 () Bool)

(assert (=> mapIsEmpty!21583 mapRes!21583))

(declare-fun mapNonEmpty!21583 () Bool)

(declare-fun tp!41493 () Bool)

(declare-fun e!276793 () Bool)

(assert (=> mapNonEmpty!21583 (= mapRes!21583 (and tp!41493 e!276793))))

(declare-fun mapValue!21583 () ValueCell!6281)

(declare-fun mapKey!21583 () (_ BitVec 32))

(declare-fun mapRest!21583 () (Array (_ BitVec 32) ValueCell!6281))

(assert (=> mapNonEmpty!21583 (= (arr!14530 _values!833) (store mapRest!21583 mapKey!21583 mapValue!21583))))

(declare-fun b!472085 () Bool)

(declare-fun e!276792 () Bool)

(declare-fun tp_is_empty!13249 () Bool)

(assert (=> b!472085 (= e!276792 tp_is_empty!13249)))

(declare-fun b!472086 () Bool)

(assert (=> b!472086 (= e!276793 tp_is_empty!13249)))

(declare-fun b!472087 () Bool)

(declare-fun res!282062 () Bool)

(assert (=> b!472087 (=> (not res!282062) (not e!276794))))

(declare-datatypes ((List!8886 0))(
  ( (Nil!8883) (Cons!8882 (h!9738 (_ BitVec 64)) (t!14862 List!8886)) )
))
(declare-fun arrayNoDuplicates!0 (array!30223 (_ BitVec 32) List!8886) Bool)

(assert (=> b!472087 (= res!282062 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8883))))

(declare-fun b!472088 () Bool)

(declare-fun e!276789 () Bool)

(assert (=> b!472088 (= e!276789 (and e!276792 mapRes!21583))))

(declare-fun condMapEmpty!21583 () Bool)

(declare-fun mapDefault!21583 () ValueCell!6281)

