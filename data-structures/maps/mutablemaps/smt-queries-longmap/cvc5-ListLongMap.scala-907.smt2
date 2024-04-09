; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20550 () Bool)

(assert start!20550)

(declare-fun b_free!5197 () Bool)

(declare-fun b_next!5197 () Bool)

(assert (=> start!20550 (= b_free!5197 (not b_next!5197))))

(declare-fun tp!18622 () Bool)

(declare-fun b_and!11961 () Bool)

(assert (=> start!20550 (= tp!18622 b_and!11961)))

(declare-fun b!204139 () Bool)

(declare-fun res!98309 () Bool)

(declare-fun e!133601 () Bool)

(assert (=> b!204139 (=> (not res!98309) (not e!133601))))

(declare-datatypes ((array!9324 0))(
  ( (array!9325 (arr!4412 (Array (_ BitVec 32) (_ BitVec 64))) (size!4737 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9324)

(declare-datatypes ((List!2820 0))(
  ( (Nil!2817) (Cons!2816 (h!3458 (_ BitVec 64)) (t!7759 List!2820)) )
))
(declare-fun arrayNoDuplicates!0 (array!9324 (_ BitVec 32) List!2820) Bool)

(assert (=> b!204139 (= res!98309 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!2817))))

(declare-fun b!204140 () Bool)

(declare-fun res!98308 () Bool)

(assert (=> b!204140 (=> (not res!98308) (not e!133601))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9324 (_ BitVec 32)) Bool)

(assert (=> b!204140 (= res!98308 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!204141 () Bool)

(declare-fun res!98312 () Bool)

(assert (=> b!204141 (=> (not res!98312) (not e!133601))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((V!6385 0))(
  ( (V!6386 (val!2571 Int)) )
))
(declare-datatypes ((ValueCell!2183 0))(
  ( (ValueCellFull!2183 (v!4537 V!6385)) (EmptyCell!2183) )
))
(declare-datatypes ((array!9326 0))(
  ( (array!9327 (arr!4413 (Array (_ BitVec 32) ValueCell!2183)) (size!4738 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9326)

(assert (=> b!204141 (= res!98312 (and (= (size!4738 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4737 _keys!825) (size!4738 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!204142 () Bool)

(declare-fun e!133598 () Bool)

(declare-fun e!133600 () Bool)

(assert (=> b!204142 (= e!133598 e!133600)))

(declare-fun res!98311 () Bool)

(assert (=> b!204142 (=> res!98311 e!133600)))

(declare-fun k!843 () (_ BitVec 64))

(assert (=> b!204142 (= res!98311 (= k!843 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((tuple2!3896 0))(
  ( (tuple2!3897 (_1!1958 (_ BitVec 64)) (_2!1958 V!6385)) )
))
(declare-datatypes ((List!2821 0))(
  ( (Nil!2818) (Cons!2817 (h!3459 tuple2!3896) (t!7760 List!2821)) )
))
(declare-datatypes ((ListLongMap!2823 0))(
  ( (ListLongMap!2824 (toList!1427 List!2821)) )
))
(declare-fun lt!103388 () ListLongMap!2823)

(declare-fun lt!103384 () ListLongMap!2823)

(assert (=> b!204142 (= lt!103388 lt!103384)))

(declare-fun lt!103392 () ListLongMap!2823)

(declare-fun lt!103382 () tuple2!3896)

(declare-fun +!444 (ListLongMap!2823 tuple2!3896) ListLongMap!2823)

(assert (=> b!204142 (= lt!103384 (+!444 lt!103392 lt!103382))))

(declare-fun lt!103393 () ListLongMap!2823)

(declare-fun lt!103387 () ListLongMap!2823)

(assert (=> b!204142 (= lt!103393 lt!103387)))

(declare-fun lt!103391 () ListLongMap!2823)

(assert (=> b!204142 (= lt!103387 (+!444 lt!103391 lt!103382))))

(declare-fun lt!103389 () ListLongMap!2823)

(assert (=> b!204142 (= lt!103388 (+!444 lt!103389 lt!103382))))

(declare-fun zeroValue!615 () V!6385)

(assert (=> b!204142 (= lt!103382 (tuple2!3897 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun mapIsEmpty!8648 () Bool)

(declare-fun mapRes!8648 () Bool)

(assert (=> mapIsEmpty!8648 mapRes!8648))

(declare-fun mapNonEmpty!8648 () Bool)

(declare-fun tp!18623 () Bool)

(declare-fun e!133597 () Bool)

(assert (=> mapNonEmpty!8648 (= mapRes!8648 (and tp!18623 e!133597))))

(declare-fun mapRest!8648 () (Array (_ BitVec 32) ValueCell!2183))

(declare-fun mapValue!8648 () ValueCell!2183)

(declare-fun mapKey!8648 () (_ BitVec 32))

(assert (=> mapNonEmpty!8648 (= (arr!4413 _values!649) (store mapRest!8648 mapKey!8648 mapValue!8648))))

(declare-fun b!204143 () Bool)

(declare-fun res!98306 () Bool)

(assert (=> b!204143 (=> (not res!98306) (not e!133601))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!204143 (= res!98306 (validKeyInArray!0 k!843))))

(declare-fun b!204144 () Bool)

(declare-fun res!98313 () Bool)

(assert (=> b!204144 (=> (not res!98313) (not e!133601))))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!204144 (= res!98313 (= (select (arr!4412 _keys!825) i!601) k!843))))

(declare-fun b!204145 () Bool)

(assert (=> b!204145 (= e!133601 (not e!133598))))

(declare-fun res!98307 () Bool)

(assert (=> b!204145 (=> res!98307 e!133598)))

(assert (=> b!204145 (= res!98307 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6385)

(declare-fun getCurrentListMap!996 (array!9324 array!9326 (_ BitVec 32) (_ BitVec 32) V!6385 V!6385 (_ BitVec 32) Int) ListLongMap!2823)

(assert (=> b!204145 (= lt!103393 (getCurrentListMap!996 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!103383 () array!9326)

(assert (=> b!204145 (= lt!103388 (getCurrentListMap!996 _keys!825 lt!103383 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204145 (and (= lt!103389 lt!103392) (= lt!103392 lt!103389))))

(declare-fun lt!103385 () tuple2!3896)

(assert (=> b!204145 (= lt!103392 (+!444 lt!103391 lt!103385))))

(declare-fun v!520 () V!6385)

(assert (=> b!204145 (= lt!103385 (tuple2!3897 k!843 v!520))))

(declare-datatypes ((Unit!6189 0))(
  ( (Unit!6190) )
))
(declare-fun lt!103386 () Unit!6189)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!109 (array!9324 array!9326 (_ BitVec 32) (_ BitVec 32) V!6385 V!6385 (_ BitVec 32) (_ BitVec 64) V!6385 (_ BitVec 32) Int) Unit!6189)

(assert (=> b!204145 (= lt!103386 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!109 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!367 (array!9324 array!9326 (_ BitVec 32) (_ BitVec 32) V!6385 V!6385 (_ BitVec 32) Int) ListLongMap!2823)

(assert (=> b!204145 (= lt!103389 (getCurrentListMapNoExtraKeys!367 _keys!825 lt!103383 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!204145 (= lt!103383 (array!9327 (store (arr!4413 _values!649) i!601 (ValueCellFull!2183 v!520)) (size!4738 _values!649)))))

(assert (=> b!204145 (= lt!103391 (getCurrentListMapNoExtraKeys!367 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun res!98314 () Bool)

(assert (=> start!20550 (=> (not res!98314) (not e!133601))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!20550 (= res!98314 (validMask!0 mask!1149))))

(assert (=> start!20550 e!133601))

(declare-fun e!133599 () Bool)

(declare-fun array_inv!2905 (array!9326) Bool)

(assert (=> start!20550 (and (array_inv!2905 _values!649) e!133599)))

(assert (=> start!20550 true))

(declare-fun tp_is_empty!5053 () Bool)

(assert (=> start!20550 tp_is_empty!5053))

(declare-fun array_inv!2906 (array!9324) Bool)

(assert (=> start!20550 (array_inv!2906 _keys!825)))

(assert (=> start!20550 tp!18622))

(declare-fun b!204146 () Bool)

(assert (=> b!204146 (= e!133600 true)))

(assert (=> b!204146 (= lt!103384 (+!444 lt!103387 lt!103385))))

(declare-fun lt!103390 () Unit!6189)

(declare-fun addCommutativeForDiffKeys!153 (ListLongMap!2823 (_ BitVec 64) V!6385 (_ BitVec 64) V!6385) Unit!6189)

(assert (=> b!204146 (= lt!103390 (addCommutativeForDiffKeys!153 lt!103391 k!843 v!520 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!615))))

(declare-fun b!204147 () Bool)

(declare-fun e!133603 () Bool)

(assert (=> b!204147 (= e!133599 (and e!133603 mapRes!8648))))

(declare-fun condMapEmpty!8648 () Bool)

(declare-fun mapDefault!8648 () ValueCell!2183)

