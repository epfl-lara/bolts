; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20538 () Bool)

(assert start!20538)

(declare-fun b_free!5185 () Bool)

(declare-fun b_next!5185 () Bool)

(assert (=> start!20538 (= b_free!5185 (not b_next!5185))))

(declare-fun tp!18587 () Bool)

(declare-fun b_and!11949 () Bool)

(assert (=> start!20538 (= tp!18587 b_and!11949)))

(declare-fun mapNonEmpty!8630 () Bool)

(declare-fun mapRes!8630 () Bool)

(declare-fun tp!18586 () Bool)

(declare-fun e!133475 () Bool)

(assert (=> mapNonEmpty!8630 (= mapRes!8630 (and tp!18586 e!133475))))

(declare-datatypes ((V!6369 0))(
  ( (V!6370 (val!2565 Int)) )
))
(declare-datatypes ((ValueCell!2177 0))(
  ( (ValueCellFull!2177 (v!4531 V!6369)) (EmptyCell!2177) )
))
(declare-datatypes ((array!9300 0))(
  ( (array!9301 (arr!4400 (Array (_ BitVec 32) ValueCell!2177)) (size!4725 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9300)

(declare-fun mapValue!8630 () ValueCell!2177)

(declare-fun mapRest!8630 () (Array (_ BitVec 32) ValueCell!2177))

(declare-fun mapKey!8630 () (_ BitVec 32))

(assert (=> mapNonEmpty!8630 (= (arr!4400 _values!649) (store mapRest!8630 mapKey!8630 mapValue!8630))))

(declare-fun b!203923 () Bool)

(declare-fun res!98152 () Bool)

(declare-fun e!133473 () Bool)

(assert (=> b!203923 (=> (not res!98152) (not e!133473))))

(declare-datatypes ((array!9302 0))(
  ( (array!9303 (arr!4401 (Array (_ BitVec 32) (_ BitVec 64))) (size!4726 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9302)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!203923 (= res!98152 (and (= (size!4725 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4726 _keys!825) (size!4725 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!203924 () Bool)

(declare-fun res!98145 () Bool)

(assert (=> b!203924 (=> (not res!98145) (not e!133473))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!203924 (= res!98145 (= (select (arr!4401 _keys!825) i!601) k!843))))

(declare-fun b!203925 () Bool)

(declare-fun res!98144 () Bool)

(assert (=> b!203925 (=> (not res!98144) (not e!133473))))

(declare-datatypes ((List!2810 0))(
  ( (Nil!2807) (Cons!2806 (h!3448 (_ BitVec 64)) (t!7749 List!2810)) )
))
(declare-fun arrayNoDuplicates!0 (array!9302 (_ BitVec 32) List!2810) Bool)

(assert (=> b!203925 (= res!98144 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2807))))

(declare-fun b!203926 () Bool)

(declare-fun res!98151 () Bool)

(assert (=> b!203926 (=> (not res!98151) (not e!133473))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!203926 (= res!98151 (validKeyInArray!0 k!843))))

(declare-fun b!203927 () Bool)

(declare-fun e!133477 () Bool)

(declare-fun tp_is_empty!5041 () Bool)

(assert (=> b!203927 (= e!133477 tp_is_empty!5041)))

(declare-fun b!203929 () Bool)

(declare-fun e!133476 () Bool)

(assert (=> b!203929 (= e!133476 true)))

(declare-datatypes ((tuple2!3886 0))(
  ( (tuple2!3887 (_1!1953 (_ BitVec 64)) (_2!1953 V!6369)) )
))
(declare-datatypes ((List!2811 0))(
  ( (Nil!2808) (Cons!2807 (h!3449 tuple2!3886) (t!7750 List!2811)) )
))
(declare-datatypes ((ListLongMap!2813 0))(
  ( (ListLongMap!2814 (toList!1422 List!2811)) )
))
(declare-fun lt!103167 () ListLongMap!2813)

(declare-fun lt!103172 () ListLongMap!2813)

(declare-fun lt!103170 () tuple2!3886)

(declare-fun +!439 (ListLongMap!2813 tuple2!3886) ListLongMap!2813)

(assert (=> b!203929 (= lt!103167 (+!439 lt!103172 lt!103170))))

(declare-datatypes ((Unit!6179 0))(
  ( (Unit!6180) )
))
(declare-fun lt!103169 () Unit!6179)

(declare-fun v!520 () V!6369)

(declare-fun zeroValue!615 () V!6369)

(declare-fun lt!103177 () ListLongMap!2813)

(declare-fun addCommutativeForDiffKeys!149 (ListLongMap!2813 (_ BitVec 64) V!6369 (_ BitVec 64) V!6369) Unit!6179)

(assert (=> b!203929 (= lt!103169 (addCommutativeForDiffKeys!149 lt!103177 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!203930 () Bool)

(declare-fun res!98149 () Bool)

(assert (=> b!203930 (=> (not res!98149) (not e!133473))))

(assert (=> b!203930 (= res!98149 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4726 _keys!825))))))

(declare-fun b!203931 () Bool)

(assert (=> b!203931 (= e!133475 tp_is_empty!5041)))

(declare-fun b!203932 () Bool)

(declare-fun e!133472 () Bool)

(assert (=> b!203932 (= e!133472 e!133476)))

(declare-fun res!98150 () Bool)

(assert (=> b!203932 (=> res!98150 e!133476)))

(assert (=> b!203932 (= res!98150 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!103174 () ListLongMap!2813)

(assert (=> b!203932 (= lt!103174 lt!103167)))

(declare-fun lt!103173 () ListLongMap!2813)

(declare-fun lt!103176 () tuple2!3886)

(assert (=> b!203932 (= lt!103167 (+!439 lt!103173 lt!103176))))

(declare-fun lt!103166 () ListLongMap!2813)

(assert (=> b!203932 (= lt!103166 lt!103172)))

(assert (=> b!203932 (= lt!103172 (+!439 lt!103177 lt!103176))))

(declare-fun lt!103171 () ListLongMap!2813)

(assert (=> b!203932 (= lt!103174 (+!439 lt!103171 lt!103176))))

(assert (=> b!203932 (= lt!103176 (tuple2!3887 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapIsEmpty!8630 () Bool)

(assert (=> mapIsEmpty!8630 mapRes!8630))

(declare-fun b!203933 () Bool)

(declare-fun res!98146 () Bool)

(assert (=> b!203933 (=> (not res!98146) (not e!133473))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9302 (_ BitVec 32)) Bool)

(assert (=> b!203933 (= res!98146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!203934 () Bool)

(assert (=> b!203934 (= e!133473 (not e!133472))))

(declare-fun res!98148 () Bool)

(assert (=> b!203934 (=> res!98148 e!133472)))

(assert (=> b!203934 (= res!98148 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6369)

(declare-fun getCurrentListMap!991 (array!9302 array!9300 (_ BitVec 32) (_ BitVec 32) V!6369 V!6369 (_ BitVec 32) Int) ListLongMap!2813)

(assert (=> b!203934 (= lt!103166 (getCurrentListMap!991 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103168 () array!9300)

(assert (=> b!203934 (= lt!103174 (getCurrentListMap!991 _keys!825 lt!103168 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203934 (and (= lt!103171 lt!103173) (= lt!103173 lt!103171))))

(assert (=> b!203934 (= lt!103173 (+!439 lt!103177 lt!103170))))

(assert (=> b!203934 (= lt!103170 (tuple2!3887 k!843 v!520))))

(declare-fun lt!103175 () Unit!6179)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!104 (array!9302 array!9300 (_ BitVec 32) (_ BitVec 32) V!6369 V!6369 (_ BitVec 32) (_ BitVec 64) V!6369 (_ BitVec 32) Int) Unit!6179)

(assert (=> b!203934 (= lt!103175 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!104 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!362 (array!9302 array!9300 (_ BitVec 32) (_ BitVec 32) V!6369 V!6369 (_ BitVec 32) Int) ListLongMap!2813)

(assert (=> b!203934 (= lt!103171 (getCurrentListMapNoExtraKeys!362 _keys!825 lt!103168 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203934 (= lt!103168 (array!9301 (store (arr!4400 _values!649) i!601 (ValueCellFull!2177 v!520)) (size!4725 _values!649)))))

(assert (=> b!203934 (= lt!103177 (getCurrentListMapNoExtraKeys!362 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!98147 () Bool)

(assert (=> start!20538 (=> (not res!98147) (not e!133473))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20538 (= res!98147 (validMask!0 mask!1149))))

(assert (=> start!20538 e!133473))

(declare-fun e!133471 () Bool)

(declare-fun array_inv!2897 (array!9300) Bool)

(assert (=> start!20538 (and (array_inv!2897 _values!649) e!133471)))

(assert (=> start!20538 true))

(assert (=> start!20538 tp_is_empty!5041))

(declare-fun array_inv!2898 (array!9302) Bool)

(assert (=> start!20538 (array_inv!2898 _keys!825)))

(assert (=> start!20538 tp!18587))

(declare-fun b!203928 () Bool)

(assert (=> b!203928 (= e!133471 (and e!133477 mapRes!8630))))

(declare-fun condMapEmpty!8630 () Bool)

(declare-fun mapDefault!8630 () ValueCell!2177)

