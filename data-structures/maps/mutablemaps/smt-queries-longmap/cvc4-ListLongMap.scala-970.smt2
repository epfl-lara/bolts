; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21034 () Bool)

(assert start!21034)

(declare-fun b_free!5573 () Bool)

(declare-fun b_next!5573 () Bool)

(assert (=> start!21034 (= b_free!5573 (not b_next!5573))))

(declare-fun tp!19775 () Bool)

(declare-fun b_and!12397 () Bool)

(assert (=> start!21034 (= tp!19775 b_and!12397)))

(declare-fun b!211301 () Bool)

(declare-fun res!103210 () Bool)

(declare-fun e!137555 () Bool)

(assert (=> b!211301 (=> (not res!103210) (not e!137555))))

(declare-datatypes ((array!10070 0))(
  ( (array!10071 (arr!4780 (Array (_ BitVec 32) (_ BitVec 64))) (size!5105 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!10070)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((V!6893 0))(
  ( (V!6894 (val!2762 Int)) )
))
(declare-datatypes ((ValueCell!2374 0))(
  ( (ValueCellFull!2374 (v!4748 V!6893)) (EmptyCell!2374) )
))
(declare-datatypes ((array!10072 0))(
  ( (array!10073 (arr!4781 (Array (_ BitVec 32) ValueCell!2374)) (size!5106 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!10072)

(assert (=> b!211301 (= res!103210 (and (= (size!5106 _values!649) (bvadd #b00000000000000000000000000000001 mask!1149)) (= (size!5105 _keys!825) (size!5106 _values!649)) (bvsge mask!1149 #b00000000000000000000000000000000) (bvsge extraKeys!596 #b00000000000000000000000000000000) (bvsle extraKeys!596 #b00000000000000000000000000000011)))))

(declare-fun b!211302 () Bool)

(declare-fun e!137552 () Bool)

(declare-fun tp_is_empty!5435 () Bool)

(assert (=> b!211302 (= e!137552 tp_is_empty!5435)))

(declare-fun b!211303 () Bool)

(declare-fun res!103213 () Bool)

(assert (=> b!211303 (=> (not res!103213) (not e!137555))))

(declare-fun k!843 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!211303 (= res!103213 (validKeyInArray!0 k!843))))

(declare-fun mapIsEmpty!9236 () Bool)

(declare-fun mapRes!9236 () Bool)

(assert (=> mapIsEmpty!9236 mapRes!9236))

(declare-fun b!211304 () Bool)

(declare-fun e!137556 () Bool)

(assert (=> b!211304 (= e!137555 (not e!137556))))

(declare-fun res!103209 () Bool)

(assert (=> b!211304 (=> res!103209 e!137556)))

(assert (=> b!211304 (= res!103209 (or (not (= (bvand extraKeys!596 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!596 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!4172 0))(
  ( (tuple2!4173 (_1!2096 (_ BitVec 64)) (_2!2096 V!6893)) )
))
(declare-datatypes ((List!3088 0))(
  ( (Nil!3085) (Cons!3084 (h!3726 tuple2!4172) (t!8037 List!3088)) )
))
(declare-datatypes ((ListLongMap!3099 0))(
  ( (ListLongMap!3100 (toList!1565 List!3088)) )
))
(declare-fun lt!108669 () ListLongMap!3099)

(declare-fun zeroValue!615 () V!6893)

(declare-fun defaultEntry!657 () Int)

(declare-fun minValue!615 () V!6893)

(declare-fun getCurrentListMap!1094 (array!10070 array!10072 (_ BitVec 32) (_ BitVec 32) V!6893 V!6893 (_ BitVec 32) Int) ListLongMap!3099)

(assert (=> b!211304 (= lt!108669 (getCurrentListMap!1094 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108673 () ListLongMap!3099)

(declare-fun lt!108674 () array!10072)

(assert (=> b!211304 (= lt!108673 (getCurrentListMap!1094 _keys!825 lt!108674 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!108676 () ListLongMap!3099)

(declare-fun lt!108675 () ListLongMap!3099)

(assert (=> b!211304 (and (= lt!108676 lt!108675) (= lt!108675 lt!108676))))

(declare-fun v!520 () V!6893)

(declare-fun lt!108671 () ListLongMap!3099)

(declare-fun +!558 (ListLongMap!3099 tuple2!4172) ListLongMap!3099)

(assert (=> b!211304 (= lt!108675 (+!558 lt!108671 (tuple2!4173 k!843 v!520)))))

(declare-datatypes ((Unit!6415 0))(
  ( (Unit!6416) )
))
(declare-fun lt!108672 () Unit!6415)

(declare-fun i!601 () (_ BitVec 32))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!211 (array!10070 array!10072 (_ BitVec 32) (_ BitVec 32) V!6893 V!6893 (_ BitVec 32) (_ BitVec 64) V!6893 (_ BitVec 32) Int) Unit!6415)

(assert (=> b!211304 (= lt!108672 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!211 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!493 (array!10070 array!10072 (_ BitVec 32) (_ BitVec 32) V!6893 V!6893 (_ BitVec 32) Int) ListLongMap!3099)

(assert (=> b!211304 (= lt!108676 (getCurrentListMapNoExtraKeys!493 _keys!825 lt!108674 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!211304 (= lt!108674 (array!10073 (store (arr!4781 _values!649) i!601 (ValueCellFull!2374 v!520)) (size!5106 _values!649)))))

(assert (=> b!211304 (= lt!108671 (getCurrentListMapNoExtraKeys!493 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun mapNonEmpty!9236 () Bool)

(declare-fun tp!19774 () Bool)

(declare-fun e!137557 () Bool)

(assert (=> mapNonEmpty!9236 (= mapRes!9236 (and tp!19774 e!137557))))

(declare-fun mapRest!9236 () (Array (_ BitVec 32) ValueCell!2374))

(declare-fun mapValue!9236 () ValueCell!2374)

(declare-fun mapKey!9236 () (_ BitVec 32))

(assert (=> mapNonEmpty!9236 (= (arr!4781 _values!649) (store mapRest!9236 mapKey!9236 mapValue!9236))))

(declare-fun b!211306 () Bool)

(declare-fun res!103211 () Bool)

(assert (=> b!211306 (=> (not res!103211) (not e!137555))))

(assert (=> b!211306 (= res!103211 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!5105 _keys!825))))))

(declare-fun b!211307 () Bool)

(declare-fun e!137554 () Bool)

(assert (=> b!211307 (= e!137554 (and e!137552 mapRes!9236))))

(declare-fun condMapEmpty!9236 () Bool)

(declare-fun mapDefault!9236 () ValueCell!2374)

