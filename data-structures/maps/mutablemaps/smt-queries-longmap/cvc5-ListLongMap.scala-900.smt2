; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20508 () Bool)

(assert start!20508)

(declare-fun b_free!5155 () Bool)

(declare-fun b_next!5155 () Bool)

(assert (=> start!20508 (= b_free!5155 (not b_next!5155))))

(declare-fun tp!18496 () Bool)

(declare-fun b_and!11919 () Bool)

(assert (=> start!20508 (= tp!18496 b_and!11919)))

(declare-fun b!203383 () Bool)

(declare-fun e!133159 () Bool)

(declare-fun e!133157 () Bool)

(assert (=> b!203383 (= e!133159 (not e!133157))))

(declare-fun res!97741 () Bool)

(assert (=> b!203383 (=> res!97741 e!133157)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!203383 (= res!97741 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((V!6329 0))(
  ( (V!6330 (val!2550 Int)) )
))
(declare-datatypes ((tuple2!3866 0))(
  ( (tuple2!3867 (_1!1943 (_ BitVec 64)) (_2!1943 V!6329)) )
))
(declare-datatypes ((List!2792 0))(
  ( (Nil!2789) (Cons!2788 (h!3430 tuple2!3866) (t!7731 List!2792)) )
))
(declare-datatypes ((ListLongMap!2793 0))(
  ( (ListLongMap!2794 (toList!1412 List!2792)) )
))
(declare-fun lt!102637 () ListLongMap!2793)

(declare-datatypes ((ValueCell!2162 0))(
  ( (ValueCellFull!2162 (v!4516 V!6329)) (EmptyCell!2162) )
))
(declare-datatypes ((array!9244 0))(
  ( (array!9245 (arr!4372 (Array (_ BitVec 32) ValueCell!2162)) (size!4697 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9244)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun zeroValue!615 () V!6329)

(declare-datatypes ((array!9246 0))(
  ( (array!9247 (arr!4373 (Array (_ BitVec 32) (_ BitVec 64))) (size!4698 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9246)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6329)

(declare-fun getCurrentListMap!982 (array!9246 array!9244 (_ BitVec 32) (_ BitVec 32) V!6329 V!6329 (_ BitVec 32) Int) ListLongMap!2793)

(assert (=> b!203383 (= lt!102637 (getCurrentListMap!982 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102634 () array!9244)

(declare-fun lt!102636 () ListLongMap!2793)

(assert (=> b!203383 (= lt!102636 (getCurrentListMap!982 _keys!825 lt!102634 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!102629 () ListLongMap!2793)

(declare-fun lt!102627 () ListLongMap!2793)

(assert (=> b!203383 (and (= lt!102629 lt!102627) (= lt!102627 lt!102629))))

(declare-fun lt!102626 () ListLongMap!2793)

(declare-fun lt!102635 () tuple2!3866)

(declare-fun +!429 (ListLongMap!2793 tuple2!3866) ListLongMap!2793)

(assert (=> b!203383 (= lt!102627 (+!429 lt!102626 lt!102635))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun v!520 () V!6329)

(assert (=> b!203383 (= lt!102635 (tuple2!3867 k!843 v!520))))

(declare-datatypes ((Unit!6159 0))(
  ( (Unit!6160) )
))
(declare-fun lt!102631 () Unit!6159)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!95 (array!9246 array!9244 (_ BitVec 32) (_ BitVec 32) V!6329 V!6329 (_ BitVec 32) (_ BitVec 64) V!6329 (_ BitVec 32) Int) Unit!6159)

(assert (=> b!203383 (= lt!102631 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!95 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!353 (array!9246 array!9244 (_ BitVec 32) (_ BitVec 32) V!6329 V!6329 (_ BitVec 32) Int) ListLongMap!2793)

(assert (=> b!203383 (= lt!102629 (getCurrentListMapNoExtraKeys!353 _keys!825 lt!102634 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!203383 (= lt!102634 (array!9245 (store (arr!4372 _values!649) i!601 (ValueCellFull!2162 v!520)) (size!4697 _values!649)))))

(assert (=> b!203383 (= lt!102626 (getCurrentListMapNoExtraKeys!353 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapIsEmpty!8585 () Bool)

(declare-fun mapRes!8585 () Bool)

(assert (=> mapIsEmpty!8585 mapRes!8585))

(declare-fun b!203384 () Bool)

(declare-fun e!133160 () Bool)

(declare-fun e!133162 () Bool)

(assert (=> b!203384 (= e!133160 (and e!133162 mapRes!8585))))

(declare-fun condMapEmpty!8585 () Bool)

(declare-fun mapDefault!8585 () ValueCell!2162)

