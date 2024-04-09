; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21098 () Bool)

(assert start!21098)

(declare-fun b_free!5597 () Bool)

(declare-fun b_next!5597 () Bool)

(assert (=> start!21098 (= b_free!5597 (not b_next!5597))))

(declare-fun tp!19853 () Bool)

(declare-fun b_and!12445 () Bool)

(assert (=> start!21098 (= tp!19853 b_and!12445)))

(declare-fun b!212119 () Bool)

(declare-fun e!138041 () Bool)

(declare-fun tp_is_empty!5459 () Bool)

(assert (=> b!212119 (= e!138041 tp_is_empty!5459)))

(declare-fun b!212120 () Bool)

(declare-fun res!103707 () Bool)

(declare-fun e!138045 () Bool)

(assert (=> b!212120 (=> (not res!103707) (not e!138045))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!212120 (= res!103707 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!9278 () Bool)

(declare-fun mapRes!9278 () Bool)

(declare-fun tp!19852 () Bool)

(declare-fun e!138043 () Bool)

(assert (=> mapNonEmpty!9278 (= mapRes!9278 (and tp!19852 e!138043))))

(declare-datatypes ((V!6925 0))(
  ( (V!6926 (val!2774 Int)) )
))
(declare-datatypes ((ValueCell!2386 0))(
  ( (ValueCellFull!2386 (v!4768 V!6925)) (EmptyCell!2386) )
))
(declare-fun mapValue!9278 () ValueCell!2386)

(declare-fun mapRest!9278 () (Array (_ BitVec 32) ValueCell!2386))

(declare-fun mapKey!9278 () (_ BitVec 32))

(declare-datatypes ((array!10120 0))(
  ( (array!10121 (arr!4803 (Array (_ BitVec 32) ValueCell!2386)) (size!5128 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10120)

(assert (=> mapNonEmpty!9278 (= (arr!4803 _values!649) (store mapRest!9278 mapKey!9278 mapValue!9278))))

(declare-fun b!212121 () Bool)

(declare-fun e!138044 () Bool)

(declare-fun e!138046 () Bool)

(assert (=> b!212121 (= e!138044 e!138046)))

(declare-fun res!103708 () Bool)

(assert (=> b!212121 (=> res!103708 e!138046)))

(assert (=> b!212121 (= res!103708 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!4194 0))(
  ( (tuple2!4195 (_1!2107 (_ BitVec 64)) (_2!2107 V!6925)) )
))
(declare-datatypes ((List!3108 0))(
  ( (Nil!3105) (Cons!3104 (h!3746 tuple2!4194) (t!8061 List!3108)) )
))
(declare-datatypes ((ListLongMap!3121 0))(
  ( (ListLongMap!3122 (toList!1576 List!3108)) )
))
(declare-fun lt!109328 () ListLongMap!3121)

(declare-fun lt!109325 () ListLongMap!3121)

(assert (=> b!212121 (= lt!109328 lt!109325)))

(declare-fun lt!109327 () ListLongMap!3121)

(declare-fun lt!109335 () tuple2!4194)

(declare-fun +!569 (ListLongMap!3121 tuple2!4194) ListLongMap!3121)

(assert (=> b!212121 (= lt!109325 (+!569 lt!109327 lt!109335))))

(declare-fun lt!109329 () ListLongMap!3121)

(declare-fun lt!109333 () ListLongMap!3121)

(assert (=> b!212121 (= lt!109329 lt!109333)))

(declare-fun lt!109334 () ListLongMap!3121)

(assert (=> b!212121 (= lt!109333 (+!569 lt!109334 lt!109335))))

(declare-fun lt!109326 () ListLongMap!3121)

(assert (=> b!212121 (= lt!109328 (+!569 lt!109326 lt!109335))))

(declare-fun zeroValue!615 () V!6925)

(assert (=> b!212121 (= lt!109335 (tuple2!4195 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!212122 () Bool)

(declare-fun res!103711 () Bool)

(assert (=> b!212122 (=> (not res!103711) (not e!138045))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!10122 0))(
  ( (array!10123 (arr!4804 (Array (_ BitVec 32) (_ BitVec 64))) (size!5129 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10122)

(assert (=> b!212122 (= res!103711 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5129 _keys!825))))))

(declare-fun b!212123 () Bool)

(declare-fun res!103705 () Bool)

(assert (=> b!212123 (=> (not res!103705) (not e!138045))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10122 (_ BitVec 32)) Bool)

(assert (=> b!212123 (= res!103705 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!212125 () Bool)

(assert (=> b!212125 (= e!138043 tp_is_empty!5459)))

(declare-fun b!212126 () Bool)

(declare-fun res!103703 () Bool)

(assert (=> b!212126 (=> (not res!103703) (not e!138045))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!212126 (= res!103703 (and (= (size!5128 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5129 _keys!825) (size!5128 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!212127 () Bool)

(assert (=> b!212127 (= e!138045 (not e!138044))))

(declare-fun res!103709 () Bool)

(assert (=> b!212127 (=> res!103709 e!138044)))

(assert (=> b!212127 (= res!103709 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6925)

(declare-fun getCurrentListMap!1104 (array!10122 array!10120 (_ BitVec 32) (_ BitVec 32) V!6925 V!6925 (_ BitVec 32) Int) ListLongMap!3121)

(assert (=> b!212127 (= lt!109329 (getCurrentListMap!1104 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!109330 () array!10120)

(assert (=> b!212127 (= lt!109328 (getCurrentListMap!1104 _keys!825 lt!109330 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!212127 (and (= lt!109326 lt!109327) (= lt!109327 lt!109326))))

(declare-fun lt!109331 () tuple2!4194)

(assert (=> b!212127 (= lt!109327 (+!569 lt!109334 lt!109331))))

(declare-fun v!520 () V!6925)

(assert (=> b!212127 (= lt!109331 (tuple2!4195 k!843 v!520))))

(declare-datatypes ((Unit!6439 0))(
  ( (Unit!6440) )
))
(declare-fun lt!109336 () Unit!6439)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!221 (array!10122 array!10120 (_ BitVec 32) (_ BitVec 32) V!6925 V!6925 (_ BitVec 32) (_ BitVec 64) V!6925 (_ BitVec 32) Int) Unit!6439)

(assert (=> b!212127 (= lt!109336 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!221 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!503 (array!10122 array!10120 (_ BitVec 32) (_ BitVec 32) V!6925 V!6925 (_ BitVec 32) Int) ListLongMap!3121)

(assert (=> b!212127 (= lt!109326 (getCurrentListMapNoExtraKeys!503 _keys!825 lt!109330 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!212127 (= lt!109330 (array!10121 (store (arr!4803 _values!649) i!601 (ValueCellFull!2386 v!520)) (size!5128 _values!649)))))

(assert (=> b!212127 (= lt!109334 (getCurrentListMapNoExtraKeys!503 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!212128 () Bool)

(assert (=> b!212128 (= e!138046 (= (+!569 lt!109329 lt!109331) lt!109328))))

(assert (=> b!212128 (= lt!109325 (+!569 lt!109333 lt!109331))))

(declare-fun lt!109332 () Unit!6439)

(declare-fun addCommutativeForDiffKeys!202 (ListLongMap!3121 (_ BitVec 64) V!6925 (_ BitVec 64) V!6925) Unit!6439)

(assert (=> b!212128 (= lt!109332 (addCommutativeForDiffKeys!202 lt!109334 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapIsEmpty!9278 () Bool)

(assert (=> mapIsEmpty!9278 mapRes!9278))

(declare-fun b!212129 () Bool)

(declare-fun res!103706 () Bool)

(assert (=> b!212129 (=> (not res!103706) (not e!138045))))

(assert (=> b!212129 (= res!103706 (= (select (arr!4804 _keys!825) i!601) k!843))))

(declare-fun b!212130 () Bool)

(declare-fun e!138042 () Bool)

(assert (=> b!212130 (= e!138042 (and e!138041 mapRes!9278))))

(declare-fun condMapEmpty!9278 () Bool)

(declare-fun mapDefault!9278 () ValueCell!2386)

