; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20394 () Bool)

(assert start!20394)

(declare-fun b_free!5041 () Bool)

(declare-fun b_next!5041 () Bool)

(assert (=> start!20394 (= b_free!5041 (not b_next!5041))))

(declare-fun tp!18154 () Bool)

(declare-fun b_and!11805 () Bool)

(assert (=> start!20394 (= tp!18154 b_and!11805)))

(declare-fun b!201322 () Bool)

(declare-fun e!131962 () Bool)

(declare-fun tp_is_empty!4897 () Bool)

(assert (=> b!201322 (= e!131962 tp_is_empty!4897)))

(declare-fun b!201323 () Bool)

(declare-fun e!131963 () Bool)

(assert (=> b!201323 (= e!131963 true)))

(declare-datatypes ((V!6177 0))(
  ( (V!6178 (val!2493 Int)) )
))
(declare-datatypes ((tuple2!3770 0))(
  ( (tuple2!3771 (_1!1895 (_ BitVec 64)) (_2!1895 V!6177)) )
))
(declare-datatypes ((List!2708 0))(
  ( (Nil!2705) (Cons!2704 (h!3346 tuple2!3770) (t!7647 List!2708)) )
))
(declare-datatypes ((ListLongMap!2697 0))(
  ( (ListLongMap!2698 (toList!1364 List!2708)) )
))
(declare-fun lt!100298 () ListLongMap!2697)

(declare-fun lt!100302 () tuple2!3770)

(declare-fun lt!100304 () tuple2!3770)

(declare-fun lt!100295 () ListLongMap!2697)

(declare-fun +!381 (ListLongMap!2697 tuple2!3770) ListLongMap!2697)

(assert (=> b!201323 (= (+!381 lt!100295 lt!100302) (+!381 lt!100298 lt!100304))))

(declare-fun lt!100300 () ListLongMap!2697)

(declare-fun minValue!615 () V!6177)

(declare-datatypes ((Unit!6069 0))(
  ( (Unit!6070) )
))
(declare-fun lt!100294 () Unit!6069)

(declare-fun v!520 () V!6177)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun addCommutativeForDiffKeys!102 (ListLongMap!2697 (_ BitVec 64) V!6177 (_ BitVec 64) V!6177) Unit!6069)

(assert (=> b!201323 (= lt!100294 (addCommutativeForDiffKeys!102 lt!100300 k!843 v!520 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!615))))

(declare-fun b!201324 () Bool)

(declare-fun res!96192 () Bool)

(declare-fun e!131959 () Bool)

(assert (=> b!201324 (=> (not res!96192) (not e!131959))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!201324 (= res!96192 (validKeyInArray!0 k!843))))

(declare-fun b!201325 () Bool)

(declare-fun res!96193 () Bool)

(assert (=> b!201325 (=> (not res!96193) (not e!131959))))

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((array!9022 0))(
  ( (array!9023 (arr!4261 (Array (_ BitVec 32) (_ BitVec 64))) (size!4586 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9022)

(assert (=> b!201325 (= res!96193 (= (select (arr!4261 _keys!825) i!601) k!843))))

(declare-fun b!201326 () Bool)

(declare-fun res!96191 () Bool)

(assert (=> b!201326 (=> (not res!96191) (not e!131959))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-datatypes ((ValueCell!2105 0))(
  ( (ValueCellFull!2105 (v!4459 V!6177)) (EmptyCell!2105) )
))
(declare-datatypes ((array!9024 0))(
  ( (array!9025 (arr!4262 (Array (_ BitVec 32) ValueCell!2105)) (size!4587 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9024)

(declare-fun mask!1149 () (_ BitVec 32))

(assert (=> b!201326 (= res!96191 (and (= (size!4587 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!4586 _keys!825) (size!4587 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!201327 () Bool)

(declare-fun e!131964 () Bool)

(assert (=> b!201327 (= e!131959 (not e!131964))))

(declare-fun res!96195 () Bool)

(assert (=> b!201327 (=> res!96195 e!131964)))

(assert (=> b!201327 (= res!96195 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun lt!100303 () ListLongMap!2697)

(declare-fun zeroValue!615 () V!6177)

(declare-fun defaultEntry!657 () Int)

(declare-fun getCurrentListMap!948 (array!9022 array!9024 (_ BitVec 32) (_ BitVec 32) V!6177 V!6177 (_ BitVec 32) Int) ListLongMap!2697)

(assert (=> b!201327 (= lt!100303 (getCurrentListMap!948 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100299 () array!9024)

(declare-fun lt!100305 () ListLongMap!2697)

(assert (=> b!201327 (= lt!100305 (getCurrentListMap!948 _keys!825 lt!100299 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!100308 () ListLongMap!2697)

(declare-fun lt!100309 () ListLongMap!2697)

(assert (=> b!201327 (and (= lt!100308 lt!100309) (= lt!100309 lt!100308))))

(declare-fun lt!100301 () ListLongMap!2697)

(assert (=> b!201327 (= lt!100309 (+!381 lt!100301 lt!100304))))

(assert (=> b!201327 (= lt!100304 (tuple2!3771 k!843 v!520))))

(declare-fun lt!100307 () Unit!6069)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!61 (array!9022 array!9024 (_ BitVec 32) (_ BitVec 32) V!6177 V!6177 (_ BitVec 32) (_ BitVec 64) V!6177 (_ BitVec 32) Int) Unit!6069)

(assert (=> b!201327 (= lt!100307 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!61 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!319 (array!9022 array!9024 (_ BitVec 32) (_ BitVec 32) V!6177 V!6177 (_ BitVec 32) Int) ListLongMap!2697)

(assert (=> b!201327 (= lt!100308 (getCurrentListMapNoExtraKeys!319 _keys!825 lt!100299 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!201327 (= lt!100299 (array!9025 (store (arr!4262 _values!649) i!601 (ValueCellFull!2105 v!520)) (size!4587 _values!649)))))

(assert (=> b!201327 (= lt!100301 (getCurrentListMapNoExtraKeys!319 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!201328 () Bool)

(declare-fun res!96197 () Bool)

(assert (=> b!201328 (=> (not res!96197) (not e!131959))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9022 (_ BitVec 32)) Bool)

(assert (=> b!201328 (= res!96197 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!201329 () Bool)

(declare-fun e!131960 () Bool)

(assert (=> b!201329 (= e!131960 tp_is_empty!4897)))

(declare-fun b!201330 () Bool)

(declare-fun res!96196 () Bool)

(assert (=> b!201330 (=> (not res!96196) (not e!131959))))

(assert (=> b!201330 (= res!96196 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4586 _keys!825))))))

(declare-fun mapNonEmpty!8414 () Bool)

(declare-fun mapRes!8414 () Bool)

(declare-fun tp!18155 () Bool)

(assert (=> mapNonEmpty!8414 (= mapRes!8414 (and tp!18155 e!131962))))

(declare-fun mapKey!8414 () (_ BitVec 32))

(declare-fun mapValue!8414 () ValueCell!2105)

(declare-fun mapRest!8414 () (Array (_ BitVec 32) ValueCell!2105))

(assert (=> mapNonEmpty!8414 (= (arr!4262 _values!649) (store mapRest!8414 mapKey!8414 mapValue!8414))))

(declare-fun mapIsEmpty!8414 () Bool)

(assert (=> mapIsEmpty!8414 mapRes!8414))

(declare-fun b!201332 () Bool)

(declare-fun e!131965 () Bool)

(assert (=> b!201332 (= e!131965 (and e!131960 mapRes!8414))))

(declare-fun condMapEmpty!8414 () Bool)

(declare-fun mapDefault!8414 () ValueCell!2105)

