; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20936 () Bool)

(assert start!20936)

(declare-fun b_free!5537 () Bool)

(declare-fun b_next!5537 () Bool)

(assert (=> start!20936 (= b_free!5537 (not b_next!5537))))

(declare-fun tp!19657 () Bool)

(declare-fun b_and!12325 () Bool)

(assert (=> start!20936 (= tp!19657 b_and!12325)))

(declare-fun b!210090 () Bool)

(declare-fun res!102485 () Bool)

(declare-fun e!136841 () Bool)

(assert (=> b!210090 (=> (not res!102485) (not e!136841))))

(declare-datatypes ((array!9996 0))(
  ( (array!9997 (arr!4746 (Array (_ BitVec 32) (_ BitVec 64))) (size!5071 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!9996)

(declare-datatypes ((List!3062 0))(
  ( (Nil!3059) (Cons!3058 (h!3700 (_ BitVec 64)) (t!8005 List!3062)) )
))
(declare-fun arrayNoDuplicates!0 (array!9996 (_ BitVec 32) List!3062) Bool)

(assert (=> b!210090 (= res!102485 (arrayNoDuplicates!0 _keys!825 #b00000000000000000000000000000000 Nil!3059))))

(declare-fun mapNonEmpty!9173 () Bool)

(declare-fun mapRes!9173 () Bool)

(declare-fun tp!19658 () Bool)

(declare-fun e!136838 () Bool)

(assert (=> mapNonEmpty!9173 (= mapRes!9173 (and tp!19658 e!136838))))

(declare-datatypes ((V!6845 0))(
  ( (V!6846 (val!2744 Int)) )
))
(declare-datatypes ((ValueCell!2356 0))(
  ( (ValueCellFull!2356 (v!4718 V!6845)) (EmptyCell!2356) )
))
(declare-fun mapRest!9173 () (Array (_ BitVec 32) ValueCell!2356))

(declare-datatypes ((array!9998 0))(
  ( (array!9999 (arr!4747 (Array (_ BitVec 32) ValueCell!2356)) (size!5072 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!9998)

(declare-fun mapKey!9173 () (_ BitVec 32))

(declare-fun mapValue!9173 () ValueCell!2356)

(assert (=> mapNonEmpty!9173 (= (arr!4747 _values!649) (store mapRest!9173 mapKey!9173 mapValue!9173))))

(declare-fun b!210091 () Bool)

(declare-fun res!102491 () Bool)

(assert (=> b!210091 (=> (not res!102491) (not e!136841))))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!9996 (_ BitVec 32)) Bool)

(assert (=> b!210091 (= res!102491 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!825 mask!1149))))

(declare-fun b!210092 () Bool)

(declare-fun e!136839 () Bool)

(assert (=> b!210092 (= e!136841 (not e!136839))))

(declare-fun res!102486 () Bool)

(assert (=> b!210092 (=> res!102486 e!136839)))

(declare-fun extraKeys!596 () (_ BitVec 32))

(assert (=> b!210092 (= res!102486 (or (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun zeroValue!615 () V!6845)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6845)

(declare-datatypes ((tuple2!4144 0))(
  ( (tuple2!4145 (_1!2082 (_ BitVec 64)) (_2!2082 V!6845)) )
))
(declare-datatypes ((List!3063 0))(
  ( (Nil!3060) (Cons!3059 (h!3701 tuple2!4144) (t!8006 List!3063)) )
))
(declare-datatypes ((ListLongMap!3071 0))(
  ( (ListLongMap!3072 (toList!1551 List!3063)) )
))
(declare-fun lt!107572 () ListLongMap!3071)

(declare-fun getCurrentListMap!1083 (array!9996 array!9998 (_ BitVec 32) (_ BitVec 32) V!6845 V!6845 (_ BitVec 32) Int) ListLongMap!3071)

(assert (=> b!210092 (= lt!107572 (getCurrentListMap!1083 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107576 () ListLongMap!3071)

(declare-fun lt!107573 () array!9998)

(assert (=> b!210092 (= lt!107576 (getCurrentListMap!1083 _keys!825 lt!107573 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!107575 () ListLongMap!3071)

(declare-fun lt!107570 () ListLongMap!3071)

(assert (=> b!210092 (and (= lt!107575 lt!107570) (= lt!107570 lt!107575))))

(declare-fun lt!107571 () ListLongMap!3071)

(declare-fun v!520 () V!6845)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun +!544 (ListLongMap!3071 tuple2!4144) ListLongMap!3071)

(assert (=> b!210092 (= lt!107570 (+!544 lt!107571 (tuple2!4145 k!843 v!520)))))

(declare-datatypes ((Unit!6383 0))(
  ( (Unit!6384) )
))
(declare-fun lt!107568 () Unit!6383)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!200 (array!9996 array!9998 (_ BitVec 32) (_ BitVec 32) V!6845 V!6845 (_ BitVec 32) (_ BitVec 64) V!6845 (_ BitVec 32) Int) Unit!6383)

(assert (=> b!210092 (= lt!107568 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!200 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!482 (array!9996 array!9998 (_ BitVec 32) (_ BitVec 32) V!6845 V!6845 (_ BitVec 32) Int) ListLongMap!3071)

(assert (=> b!210092 (= lt!107575 (getCurrentListMapNoExtraKeys!482 _keys!825 lt!107573 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!210092 (= lt!107573 (array!9999 (store (arr!4747 _values!649) i!601 (ValueCellFull!2356 v!520)) (size!5072 _values!649)))))

(assert (=> b!210092 (= lt!107571 (getCurrentListMapNoExtraKeys!482 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!210093 () Bool)

(declare-fun tp_is_empty!5399 () Bool)

(assert (=> b!210093 (= e!136838 tp_is_empty!5399)))

(declare-fun b!210094 () Bool)

(declare-fun lt!107569 () tuple2!4144)

(declare-fun lt!107574 () tuple2!4144)

(declare-fun e!136844 () Bool)

(assert (=> b!210094 (= e!136844 (= lt!107572 (+!544 (+!544 lt!107571 lt!107574) lt!107569)))))

(declare-fun b!210095 () Bool)

(declare-fun e!136843 () Bool)

(assert (=> b!210095 (= e!136843 tp_is_empty!5399)))

(declare-fun b!210096 () Bool)

(declare-fun res!102487 () Bool)

(assert (=> b!210096 (=> (not res!102487) (not e!136841))))

(assert (=> b!210096 (= res!102487 (= (select (arr!4746 _keys!825) i!601) k!843))))

(declare-fun b!210097 () Bool)

(declare-fun res!102484 () Bool)

(assert (=> b!210097 (=> (not res!102484) (not e!136841))))

(assert (=> b!210097 (= res!102484 (and (= (size!5072 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5071 _keys!825) (size!5072 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!210098 () Bool)

(declare-fun e!136842 () Bool)

(assert (=> b!210098 (= e!136842 (and e!136843 mapRes!9173))))

(declare-fun condMapEmpty!9173 () Bool)

(declare-fun mapDefault!9173 () ValueCell!2356)

