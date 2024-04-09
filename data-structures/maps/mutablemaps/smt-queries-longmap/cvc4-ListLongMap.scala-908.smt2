; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20560 () Bool)

(assert start!20560)

(declare-fun b_free!5207 () Bool)

(declare-fun b_next!5207 () Bool)

(assert (=> start!20560 (= b_free!5207 (not b_next!5207))))

(declare-fun tp!18652 () Bool)

(declare-fun b_and!11971 () Bool)

(assert (=> start!20560 (= tp!18652 b_and!11971)))

(declare-fun res!98442 () Bool)

(declare-fun e!133702 () Bool)

(assert (=> start!20560 (=> (not res!98442) (not e!133702))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20560 (= res!98442 (validMask!0 mask!1149))))

(assert (=> start!20560 e!133702))

(declare-datatypes ((V!6397 0))(
  ( (V!6398 (val!2576 Int)) )
))
(declare-datatypes ((ValueCell!2188 0))(
  ( (ValueCellFull!2188 (v!4542 V!6397)) (EmptyCell!2188) )
))
(declare-datatypes ((array!9342 0))(
  ( (array!9343 (arr!4421 (Array (_ BitVec 32) ValueCell!2188)) (size!4746 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9342)

(declare-fun e!133707 () Bool)

(declare-fun array_inv!2911 (array!9342) Bool)

(assert (=> start!20560 (and (array_inv!2911 _values!649) e!133707)))

(assert (=> start!20560 true))

(declare-fun tp_is_empty!5063 () Bool)

(assert (=> start!20560 tp_is_empty!5063))

(declare-datatypes ((array!9344 0))(
  ( (array!9345 (arr!4422 (Array (_ BitVec 32) (_ BitVec 64))) (size!4747 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9344)

(declare-fun array_inv!2912 (array!9344) Bool)

(assert (=> start!20560 (array_inv!2912 _keys!825)))

(assert (=> start!20560 tp!18652))

(declare-fun b!204319 () Bool)

(declare-fun res!98441 () Bool)

(assert (=> b!204319 (=> (not res!98441) (not e!133702))))

(declare-datatypes ((List!2827 0))(
  ( (Nil!2824) (Cons!2823 (h!3465 (_ BitVec 64)) (t!7766 List!2827)) )
))
(declare-fun arrayNoDuplicates!0 (array!9344 (_ BitVec 32) List!2827) Bool)

(assert (=> b!204319 (= res!98441 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2824))))

(declare-fun b!204320 () Bool)

(declare-fun e!133704 () Bool)

(assert (=> b!204320 (= e!133702 (not e!133704))))

(declare-fun res!98443 () Bool)

(assert (=> b!204320 (=> res!98443 e!133704)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!204320 (= res!98443 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!3904 0))(
  ( (tuple2!3905 (_1!1962 (_ BitVec 64)) (_2!1962 V!6397)) )
))
(declare-datatypes ((List!2828 0))(
  ( (Nil!2825) (Cons!2824 (h!3466 tuple2!3904) (t!7767 List!2828)) )
))
(declare-datatypes ((ListLongMap!2831 0))(
  ( (ListLongMap!2832 (toList!1431 List!2828)) )
))
(declare-fun lt!103571 () ListLongMap!2831)

(declare-fun zeroValue!615 () V!6397)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6397)

(declare-fun getCurrentListMap!999 (array!9344 array!9342 (_ BitVec 32) (_ BitVec 32) V!6397 V!6397 (_ BitVec 32) Int) ListLongMap!2831)

(assert (=> b!204320 (= lt!103571 (getCurrentListMap!999 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103573 () array!9342)

(declare-fun lt!103562 () ListLongMap!2831)

(assert (=> b!204320 (= lt!103562 (getCurrentListMap!999 _keys!825 lt!103573 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103569 () ListLongMap!2831)

(declare-fun lt!103572 () ListLongMap!2831)

(assert (=> b!204320 (and (= lt!103569 lt!103572) (= lt!103572 lt!103569))))

(declare-fun lt!103570 () ListLongMap!2831)

(declare-fun lt!103566 () tuple2!3904)

(declare-fun +!448 (ListLongMap!2831 tuple2!3904) ListLongMap!2831)

(assert (=> b!204320 (= lt!103572 (+!448 lt!103570 lt!103566))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6397)

(assert (=> b!204320 (= lt!103566 (tuple2!3905 k!843 v!520))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!6195 0))(
  ( (Unit!6196) )
))
(declare-fun lt!103568 () Unit!6195)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!112 (array!9344 array!9342 (_ BitVec 32) (_ BitVec 32) V!6397 V!6397 (_ BitVec 32) (_ BitVec 64) V!6397 (_ BitVec 32) Int) Unit!6195)

(assert (=> b!204320 (= lt!103568 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!112 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!370 (array!9344 array!9342 (_ BitVec 32) (_ BitVec 32) V!6397 V!6397 (_ BitVec 32) Int) ListLongMap!2831)

(assert (=> b!204320 (= lt!103569 (getCurrentListMapNoExtraKeys!370 _keys!825 lt!103573 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204320 (= lt!103573 (array!9343 (store (arr!4421 _values!649) i!601 (ValueCellFull!2188 v!520)) (size!4746 _values!649)))))

(assert (=> b!204320 (= lt!103570 (getCurrentListMapNoExtraKeys!370 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!204321 () Bool)

(declare-fun res!98447 () Bool)

(assert (=> b!204321 (=> (not res!98447) (not e!133702))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9344 (_ BitVec 32)) Bool)

(assert (=> b!204321 (= res!98447 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!204322 () Bool)

(declare-fun res!98448 () Bool)

(assert (=> b!204322 (=> (not res!98448) (not e!133702))))

(assert (=> b!204322 (= res!98448 (= (select (arr!4422 _keys!825) i!601) k!843))))

(declare-fun mapIsEmpty!8663 () Bool)

(declare-fun mapRes!8663 () Bool)

(assert (=> mapIsEmpty!8663 mapRes!8663))

(declare-fun b!204323 () Bool)

(declare-fun e!133708 () Bool)

(assert (=> b!204323 (= e!133707 (and e!133708 mapRes!8663))))

(declare-fun condMapEmpty!8663 () Bool)

(declare-fun mapDefault!8663 () ValueCell!2188)

