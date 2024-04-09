; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41980 () Bool)

(assert start!41980)

(declare-fun b_free!11545 () Bool)

(declare-fun b_next!11545 () Bool)

(assert (=> start!41980 (= b_free!11545 (not b_next!11545))))

(declare-fun tp!40651 () Bool)

(declare-fun b_and!19961 () Bool)

(assert (=> start!41980 (= tp!40651 b_and!19961)))

(declare-fun b!468399 () Bool)

(declare-fun res!279985 () Bool)

(declare-fun e!274164 () Bool)

(assert (=> b!468399 (=> (not res!279985) (not e!274164))))

(declare-datatypes ((array!29679 0))(
  ( (array!29680 (arr!14262 (Array (_ BitVec 32) (_ BitVec 64))) (size!14614 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29679)

(declare-datatypes ((List!8682 0))(
  ( (Nil!8679) (Cons!8678 (h!9534 (_ BitVec 64)) (t!14648 List!8682)) )
))
(declare-fun arrayNoDuplicates!0 (array!29679 (_ BitVec 32) List!8682) Bool)

(assert (=> b!468399 (= res!279985 (arrayNoDuplicates!0 _keys!1025 #b00000000000000000000000000000000 Nil!8679))))

(declare-fun b!468400 () Bool)

(declare-fun e!274163 () Bool)

(declare-fun tp_is_empty!12973 () Bool)

(assert (=> b!468400 (= e!274163 tp_is_empty!12973)))

(declare-fun mapIsEmpty!21154 () Bool)

(declare-fun mapRes!21154 () Bool)

(assert (=> mapIsEmpty!21154 mapRes!21154))

(declare-fun mapNonEmpty!21154 () Bool)

(declare-fun tp!40650 () Bool)

(declare-fun e!274161 () Bool)

(assert (=> mapNonEmpty!21154 (= mapRes!21154 (and tp!40650 e!274161))))

(declare-fun mapKey!21154 () (_ BitVec 32))

(declare-datatypes ((V!18403 0))(
  ( (V!18404 (val!6531 Int)) )
))
(declare-datatypes ((ValueCell!6143 0))(
  ( (ValueCellFull!6143 (v!8816 V!18403)) (EmptyCell!6143) )
))
(declare-datatypes ((array!29681 0))(
  ( (array!29682 (arr!14263 (Array (_ BitVec 32) ValueCell!6143)) (size!14615 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29681)

(declare-fun mapValue!21154 () ValueCell!6143)

(declare-fun mapRest!21154 () (Array (_ BitVec 32) ValueCell!6143))

(assert (=> mapNonEmpty!21154 (= (arr!14263 _values!833) (store mapRest!21154 mapKey!21154 mapValue!21154))))

(declare-fun b!468402 () Bool)

(declare-fun e!274162 () Bool)

(assert (=> b!468402 (= e!274162 true)))

(declare-datatypes ((tuple2!8562 0))(
  ( (tuple2!8563 (_1!4291 (_ BitVec 64)) (_2!4291 V!18403)) )
))
(declare-datatypes ((List!8683 0))(
  ( (Nil!8680) (Cons!8679 (h!9535 tuple2!8562) (t!14649 List!8683)) )
))
(declare-datatypes ((ListLongMap!7489 0))(
  ( (ListLongMap!7490 (toList!3760 List!8683)) )
))
(declare-fun lt!211941 () ListLongMap!7489)

(declare-fun lt!211938 () tuple2!8562)

(declare-fun minValueBefore!38 () V!18403)

(declare-fun +!1652 (ListLongMap!7489 tuple2!8562) ListLongMap!7489)

(assert (=> b!468402 (= (+!1652 lt!211941 lt!211938) (+!1652 (+!1652 lt!211941 (tuple2!8563 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!211938))))

(declare-fun minValueAfter!38 () V!18403)

(assert (=> b!468402 (= lt!211938 (tuple2!8563 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13642 0))(
  ( (Unit!13643) )
))
(declare-fun lt!211937 () Unit!13642)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!93 (ListLongMap!7489 (_ BitVec 64) V!18403 V!18403) Unit!13642)

(assert (=> b!468402 (= lt!211937 (addSameAsAddTwiceSameKeyDiffValues!93 lt!211941 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun zeroValue!794 () V!18403)

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!211940 () ListLongMap!7489)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2174 (array!29679 array!29681 (_ BitVec 32) (_ BitVec 32) V!18403 V!18403 (_ BitVec 32) Int) ListLongMap!7489)

(assert (=> b!468402 (= lt!211940 (getCurrentListMap!2174 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(declare-fun lt!211943 () ListLongMap!7489)

(assert (=> b!468402 (= lt!211943 (getCurrentListMap!2174 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468403 () Bool)

(assert (=> b!468403 (= e!274164 (not e!274162))))

(declare-fun res!279986 () Bool)

(assert (=> b!468403 (=> res!279986 e!274162)))

(assert (=> b!468403 (= res!279986 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!211942 () ListLongMap!7489)

(assert (=> b!468403 (= lt!211941 lt!211942)))

(declare-fun lt!211939 () Unit!13642)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!120 (array!29679 array!29681 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18403 V!18403 V!18403 V!18403 (_ BitVec 32) Int) Unit!13642)

(assert (=> b!468403 (= lt!211939 (lemmaNoChangeToArrayThenSameMapNoExtras!120 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1925 (array!29679 array!29681 (_ BitVec 32) (_ BitVec 32) V!18403 V!18403 (_ BitVec 32) Int) ListLongMap!7489)

(assert (=> b!468403 (= lt!211942 (getCurrentListMapNoExtraKeys!1925 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!468403 (= lt!211941 (getCurrentListMapNoExtraKeys!1925 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!468404 () Bool)

(declare-fun e!274159 () Bool)

(assert (=> b!468404 (= e!274159 (and e!274163 mapRes!21154))))

(declare-fun condMapEmpty!21154 () Bool)

(declare-fun mapDefault!21154 () ValueCell!6143)

