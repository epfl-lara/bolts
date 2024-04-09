; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!42048 () Bool)

(assert start!42048)

(declare-fun b_free!11593 () Bool)

(declare-fun b_next!11593 () Bool)

(assert (=> start!42048 (= b_free!11593 (not b_next!11593))))

(declare-fun tp!40797 () Bool)

(declare-fun b_and!20021 () Bool)

(assert (=> start!42048 (= tp!40797 b_and!20021)))

(declare-fun b!469154 () Bool)

(declare-fun e!274707 () Bool)

(assert (=> b!469154 (= e!274707 true)))

(declare-datatypes ((V!18467 0))(
  ( (V!18468 (val!6555 Int)) )
))
(declare-datatypes ((tuple2!8602 0))(
  ( (tuple2!8603 (_1!4311 (_ BitVec 64)) (_2!4311 V!18467)) )
))
(declare-datatypes ((List!8721 0))(
  ( (Nil!8718) (Cons!8717 (h!9573 tuple2!8602) (t!14689 List!8721)) )
))
(declare-datatypes ((ListLongMap!7529 0))(
  ( (ListLongMap!7530 (toList!3780 List!8721)) )
))
(declare-fun lt!212597 () ListLongMap!7529)

(declare-fun lt!212594 () tuple2!8602)

(declare-fun minValueBefore!38 () V!18467)

(declare-fun +!1668 (ListLongMap!7529 tuple2!8602) ListLongMap!7529)

(assert (=> b!469154 (= (+!1668 lt!212597 lt!212594) (+!1668 (+!1668 lt!212597 (tuple2!8603 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38)) lt!212594))))

(declare-fun minValueAfter!38 () V!18467)

(assert (=> b!469154 (= lt!212594 (tuple2!8603 #b1000000000000000000000000000000000000000000000000000000000000000 minValueAfter!38))))

(declare-datatypes ((Unit!13684 0))(
  ( (Unit!13685) )
))
(declare-fun lt!212598 () Unit!13684)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!109 (ListLongMap!7529 (_ BitVec 64) V!18467 V!18467) Unit!13684)

(assert (=> b!469154 (= lt!212598 (addSameAsAddTwiceSameKeyDiffValues!109 lt!212597 #b1000000000000000000000000000000000000000000000000000000000000000 minValueBefore!38 minValueAfter!38))))

(declare-fun defaultEntry!841 () Int)

(declare-fun lt!212596 () ListLongMap!7529)

(declare-fun extraKeysAfter!58 () (_ BitVec 32))

(declare-datatypes ((array!29777 0))(
  ( (array!29778 (arr!14310 (Array (_ BitVec 32) (_ BitVec 64))) (size!14662 (_ BitVec 32))) )
))
(declare-fun _keys!1025 () array!29777)

(declare-datatypes ((ValueCell!6167 0))(
  ( (ValueCellFull!6167 (v!8841 V!18467)) (EmptyCell!6167) )
))
(declare-datatypes ((array!29779 0))(
  ( (array!29780 (arr!14311 (Array (_ BitVec 32) ValueCell!6167)) (size!14663 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29779)

(declare-fun zeroValue!794 () V!18467)

(declare-fun mask!1365 () (_ BitVec 32))

(declare-fun getCurrentListMap!2190 (array!29777 array!29779 (_ BitVec 32) (_ BitVec 32) V!18467 V!18467 (_ BitVec 32) Int) ListLongMap!7529)

(assert (=> b!469154 (= lt!212596 (getCurrentListMap!2190 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun lt!212593 () ListLongMap!7529)

(declare-fun extraKeysBefore!66 () (_ BitVec 32))

(assert (=> b!469154 (= lt!212593 (getCurrentListMap!2190 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469155 () Bool)

(declare-fun res!280426 () Bool)

(declare-fun e!274705 () Bool)

(assert (=> b!469155 (=> (not res!280426) (not e!274705))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!29777 (_ BitVec 32)) Bool)

(assert (=> b!469155 (= res!280426 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1025 mask!1365))))

(declare-fun b!469156 () Bool)

(assert (=> b!469156 (= e!274705 (not e!274707))))

(declare-fun res!280424 () Bool)

(assert (=> b!469156 (=> res!280424 e!274707)))

(assert (=> b!469156 (= res!280424 (or (not (= (bvand extraKeysBefore!66 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeysBefore!66 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!212592 () ListLongMap!7529)

(assert (=> b!469156 (= lt!212597 lt!212592)))

(declare-fun lt!212595 () Unit!13684)

(declare-fun lemmaNoChangeToArrayThenSameMapNoExtras!139 (array!29777 array!29779 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!18467 V!18467 V!18467 V!18467 (_ BitVec 32) Int) Unit!13684)

(assert (=> b!469156 (= lt!212595 (lemmaNoChangeToArrayThenSameMapNoExtras!139 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 extraKeysAfter!58 zeroValue!794 zeroValue!794 minValueBefore!38 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun getCurrentListMapNoExtraKeys!1944 (array!29777 array!29779 (_ BitVec 32) (_ BitVec 32) V!18467 V!18467 (_ BitVec 32) Int) ListLongMap!7529)

(assert (=> b!469156 (= lt!212592 (getCurrentListMapNoExtraKeys!1944 _keys!1025 _values!833 mask!1365 extraKeysAfter!58 zeroValue!794 minValueAfter!38 #b00000000000000000000000000000000 defaultEntry!841))))

(assert (=> b!469156 (= lt!212597 (getCurrentListMapNoExtraKeys!1944 _keys!1025 _values!833 mask!1365 extraKeysBefore!66 zeroValue!794 minValueBefore!38 #b00000000000000000000000000000000 defaultEntry!841))))

(declare-fun b!469157 () Bool)

(declare-fun e!274703 () Bool)

(declare-fun tp_is_empty!13021 () Bool)

(assert (=> b!469157 (= e!274703 tp_is_empty!13021)))

(declare-fun b!469158 () Bool)

(declare-fun e!274708 () Bool)

(declare-fun e!274704 () Bool)

(declare-fun mapRes!21229 () Bool)

(assert (=> b!469158 (= e!274708 (and e!274704 mapRes!21229))))

(declare-fun condMapEmpty!21229 () Bool)

(declare-fun mapDefault!21229 () ValueCell!6167)

