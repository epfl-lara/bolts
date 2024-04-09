; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21196 () Bool)

(assert start!21196)

(declare-fun b_free!5635 () Bool)

(declare-fun b_next!5635 () Bool)

(assert (=> start!21196 (= b_free!5635 (not b_next!5635))))

(declare-fun tp!19976 () Bool)

(declare-fun b_and!12519 () Bool)

(assert (=> start!21196 (= tp!19976 b_and!12519)))

(declare-fun b!213356 () Bool)

(declare-fun res!104446 () Bool)

(declare-fun e!138773 () Bool)

(assert (=> b!213356 (=> (not res!104446) (not e!138773))))

(declare-datatypes ((array!10196 0))(
  ( (array!10197 (arr!4838 (Array (_ BitVec 32) (_ BitVec 64))) (size!5163 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10196)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!10196 (_ BitVec 32)) Bool)

(assert (=> b!213356 (= res!104446 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun lt!110302 () Bool)

(declare-fun b!213357 () Bool)

(declare-datatypes ((V!6977 0))(
  ( (V!6978 (val!2793 Int)) )
))
(declare-datatypes ((tuple2!4226 0))(
  ( (tuple2!4227 (_1!2123 (_ BitVec 64)) (_2!2123 V!6977)) )
))
(declare-datatypes ((List!3136 0))(
  ( (Nil!3133) (Cons!3132 (h!3774 tuple2!4226) (t!8095 List!3136)) )
))
(declare-datatypes ((ListLongMap!3153 0))(
  ( (ListLongMap!3154 (toList!1592 List!3136)) )
))
(declare-fun lt!110298 () ListLongMap!3153)

(declare-fun lt!110303 () ListLongMap!3153)

(assert (=> b!213357 (= e!138773 (not (or (and (not lt!110302) (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000))) (and (not lt!110302) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (and (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!110302) (= lt!110298 lt!110303))))))

(assert (=> b!213357 (= lt!110302 (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun lt!110296 () ListLongMap!3153)

(declare-datatypes ((ValueCell!2405 0))(
  ( (ValueCellFull!2405 (v!4799 V!6977)) (EmptyCell!2405) )
))
(declare-datatypes ((array!10198 0))(
  ( (array!10199 (arr!4839 (Array (_ BitVec 32) ValueCell!2405)) (size!5164 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10198)

(declare-fun zeroValue!615 () V!6977)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6977)

(declare-fun getCurrentListMap!1115 (array!10196 array!10198 (_ BitVec 32) (_ BitVec 32) V!6977 V!6977 (_ BitVec 32) Int) ListLongMap!3153)

(assert (=> b!213357 (= lt!110296 (getCurrentListMap!1115 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110300 () array!10198)

(assert (=> b!213357 (= lt!110298 (getCurrentListMap!1115 _keys!825 lt!110300 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!110299 () ListLongMap!3153)

(assert (=> b!213357 (and (= lt!110303 lt!110299) (= lt!110299 lt!110303))))

(declare-fun v!520 () V!6977)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun lt!110297 () ListLongMap!3153)

(declare-fun +!585 (ListLongMap!3153 tuple2!4226) ListLongMap!3153)

(assert (=> b!213357 (= lt!110299 (+!585 lt!110297 (tuple2!4227 k!843 v!520)))))

(declare-datatypes ((Unit!6469 0))(
  ( (Unit!6470) )
))
(declare-fun lt!110301 () Unit!6469)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!232 (array!10196 array!10198 (_ BitVec 32) (_ BitVec 32) V!6977 V!6977 (_ BitVec 32) (_ BitVec 64) V!6977 (_ BitVec 32) Int) Unit!6469)

(assert (=> b!213357 (= lt!110301 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!232 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!514 (array!10196 array!10198 (_ BitVec 32) (_ BitVec 32) V!6977 V!6977 (_ BitVec 32) Int) ListLongMap!3153)

(assert (=> b!213357 (= lt!110303 (getCurrentListMapNoExtraKeys!514 _keys!825 lt!110300 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!213357 (= lt!110300 (array!10199 (store (arr!4839 _values!649) i!601 (ValueCellFull!2405 v!520)) (size!5164 _values!649)))))

(assert (=> b!213357 (= lt!110297 (getCurrentListMapNoExtraKeys!514 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!213359 () Bool)

(declare-fun e!138775 () Bool)

(declare-fun tp_is_empty!5497 () Bool)

(assert (=> b!213359 (= e!138775 tp_is_empty!5497)))

(declare-fun b!213360 () Bool)

(declare-fun res!104450 () Bool)

(assert (=> b!213360 (=> (not res!104450) (not e!138773))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!213360 (= res!104450 (validKeyInArray!0 k!843))))

(declare-fun mapNonEmpty!9344 () Bool)

(declare-fun mapRes!9344 () Bool)

(declare-fun tp!19975 () Bool)

(declare-fun e!138772 () Bool)

(assert (=> mapNonEmpty!9344 (= mapRes!9344 (and tp!19975 e!138772))))

(declare-fun mapRest!9344 () (Array (_ BitVec 32) ValueCell!2405))

(declare-fun mapValue!9344 () ValueCell!2405)

(declare-fun mapKey!9344 () (_ BitVec 32))

(assert (=> mapNonEmpty!9344 (= (arr!4839 _values!649) (store mapRest!9344 mapKey!9344 mapValue!9344))))

(declare-fun b!213361 () Bool)

(declare-fun e!138776 () Bool)

(assert (=> b!213361 (= e!138776 (and e!138775 mapRes!9344))))

(declare-fun condMapEmpty!9344 () Bool)

(declare-fun mapDefault!9344 () ValueCell!2405)

