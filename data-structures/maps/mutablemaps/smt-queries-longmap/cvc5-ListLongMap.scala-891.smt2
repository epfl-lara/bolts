; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20454 () Bool)

(assert start!20454)

(declare-fun b_free!5101 () Bool)

(declare-fun b_next!5101 () Bool)

(assert (=> start!20454 (= b_free!5101 (not b_next!5101))))

(declare-fun tp!18334 () Bool)

(declare-fun b_and!11865 () Bool)

(assert (=> start!20454 (= tp!18334 b_and!11865)))

(declare-fun b!202411 () Bool)

(declare-fun e!132593 () Bool)

(declare-fun e!132589 () Bool)

(assert (=> b!202411 (= e!132593 e!132589)))

(declare-fun res!97017 () Bool)

(assert (=> b!202411 (=> res!97017 e!132589)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!202411 (= res!97017 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!6257 0))(
  ( (V!6258 (val!2523 Int)) )
))
(declare-datatypes ((tuple2!3822 0))(
  ( (tuple2!3823 (_1!1921 (_ BitVec 64)) (_2!1921 V!6257)) )
))
(declare-datatypes ((List!2751 0))(
  ( (Nil!2748) (Cons!2747 (h!3389 tuple2!3822) (t!7690 List!2751)) )
))
(declare-datatypes ((ListLongMap!2749 0))(
  ( (ListLongMap!2750 (toList!1390 List!2751)) )
))
(declare-fun lt!101660 () ListLongMap!2749)

(declare-fun lt!101658 () ListLongMap!2749)

(assert (=> b!202411 (= lt!101660 lt!101658)))

(declare-fun lt!101657 () ListLongMap!2749)

(declare-fun lt!101655 () tuple2!3822)

(declare-fun +!407 (ListLongMap!2749 tuple2!3822) ListLongMap!2749)

(assert (=> b!202411 (= lt!101658 (+!407 lt!101657 lt!101655))))

(declare-fun lt!101654 () ListLongMap!2749)

(declare-fun lt!101656 () ListLongMap!2749)

(assert (=> b!202411 (= lt!101654 lt!101656)))

(declare-fun lt!101664 () ListLongMap!2749)

(assert (=> b!202411 (= lt!101656 (+!407 lt!101664 lt!101655))))

(declare-fun lt!101661 () ListLongMap!2749)

(assert (=> b!202411 (= lt!101660 (+!407 lt!101661 lt!101655))))

(declare-fun zeroValue!615 () V!6257)

(assert (=> b!202411 (= lt!101655 (tuple2!3823 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!202412 () Bool)

(declare-fun res!97016 () Bool)

(declare-fun e!132595 () Bool)

(assert (=> b!202412 (=> (not res!97016) (not e!132595))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!202412 (= res!97016 (validKeyInArray!0 k!843))))

(declare-fun b!202413 () Bool)

(assert (=> b!202413 (= e!132595 (not e!132593))))

(declare-fun res!97013 () Bool)

(assert (=> b!202413 (=> res!97013 e!132593)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!202413 (= res!97013 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((ValueCell!2135 0))(
  ( (ValueCellFull!2135 (v!4489 V!6257)) (EmptyCell!2135) )
))
(declare-datatypes ((array!9138 0))(
  ( (array!9139 (arr!4319 (Array (_ BitVec 32) ValueCell!2135)) (size!4644 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9138)

(declare-datatypes ((array!9140 0))(
  ( (array!9141 (arr!4320 (Array (_ BitVec 32) (_ BitVec 64))) (size!4645 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9140)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6257)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun getCurrentListMap!966 (array!9140 array!9138 (_ BitVec 32) (_ BitVec 32) V!6257 V!6257 (_ BitVec 32) Int) ListLongMap!2749)

(assert (=> b!202413 (= lt!101654 (getCurrentListMap!966 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!101665 () array!9138)

(assert (=> b!202413 (= lt!101660 (getCurrentListMap!966 _keys!825 lt!101665 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202413 (and (= lt!101661 lt!101657) (= lt!101657 lt!101661))))

(declare-fun lt!101663 () tuple2!3822)

(assert (=> b!202413 (= lt!101657 (+!407 lt!101664 lt!101663))))

(declare-fun v!520 () V!6257)

(assert (=> b!202413 (= lt!101663 (tuple2!3823 k!843 v!520))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6117 0))(
  ( (Unit!6118) )
))
(declare-fun lt!101659 () Unit!6117)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!79 (array!9140 array!9138 (_ BitVec 32) (_ BitVec 32) V!6257 V!6257 (_ BitVec 32) (_ BitVec 64) V!6257 (_ BitVec 32) Int) Unit!6117)

(assert (=> b!202413 (= lt!101659 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!79 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!337 (array!9140 array!9138 (_ BitVec 32) (_ BitVec 32) V!6257 V!6257 (_ BitVec 32) Int) ListLongMap!2749)

(assert (=> b!202413 (= lt!101661 (getCurrentListMapNoExtraKeys!337 _keys!825 lt!101665 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!202413 (= lt!101665 (array!9139 (store (arr!4319 _values!649) i!601 (ValueCellFull!2135 v!520)) (size!4644 _values!649)))))

(assert (=> b!202413 (= lt!101664 (getCurrentListMapNoExtraKeys!337 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!202414 () Bool)

(declare-fun e!132592 () Bool)

(declare-fun tp_is_empty!4957 () Bool)

(assert (=> b!202414 (= e!132592 tp_is_empty!4957)))

(declare-fun b!202415 () Bool)

(declare-fun e!132591 () Bool)

(declare-fun mapRes!8504 () Bool)

(assert (=> b!202415 (= e!132591 (and e!132592 mapRes!8504))))

(declare-fun condMapEmpty!8504 () Bool)

(declare-fun mapDefault!8504 () ValueCell!2135)

