; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20290 () Bool)

(assert start!20290)

(declare-fun b_free!4937 () Bool)

(declare-fun b_next!4937 () Bool)

(assert (=> start!20290 (= b_free!4937 (not b_next!4937))))

(declare-fun tp!17843 () Bool)

(declare-fun b_and!11701 () Bool)

(assert (=> start!20290 (= tp!17843 b_and!11701)))

(declare-fun b!199560 () Bool)

(declare-fun e!130987 () Bool)

(assert (=> b!199560 (= e!130987 (not true))))

(declare-datatypes ((V!6037 0))(
  ( (V!6038 (val!2441 Int)) )
))
(declare-datatypes ((tuple2!3688 0))(
  ( (tuple2!3689 (_1!1854 (_ BitVec 64)) (_2!1854 V!6037)) )
))
(declare-datatypes ((List!2629 0))(
  ( (Nil!2626) (Cons!2625 (h!3267 tuple2!3688) (t!7568 List!2629)) )
))
(declare-datatypes ((ListLongMap!2615 0))(
  ( (ListLongMap!2616 (toList!1323 List!2629)) )
))
(declare-fun lt!98438 () ListLongMap!2615)

(declare-fun mask!1149 () (_ BitVec 32))

(declare-datatypes ((ValueCell!2053 0))(
  ( (ValueCellFull!2053 (v!4407 V!6037)) (EmptyCell!2053) )
))
(declare-datatypes ((array!8824 0))(
  ( (array!8825 (arr!4162 (Array (_ BitVec 32) ValueCell!2053)) (size!4487 (_ BitVec 32))) )
))
(declare-fun lt!98443 () array!8824)

(declare-fun zeroValue!615 () V!6037)

(declare-datatypes ((array!8826 0))(
  ( (array!8827 (arr!4163 (Array (_ BitVec 32) (_ BitVec 64))) (size!4488 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8826)

(declare-fun defaultEntry!657 () Int)

(declare-fun extraKeys!596 () (_ BitVec 32))

(declare-fun minValue!615 () V!6037)

(declare-fun getCurrentListMap!909 (array!8826 array!8824 (_ BitVec 32) (_ BitVec 32) V!6037 V!6037 (_ BitVec 32) Int) ListLongMap!2615)

(assert (=> b!199560 (= lt!98438 (getCurrentListMap!909 _keys!825 lt!98443 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun lt!98440 () ListLongMap!2615)

(declare-fun lt!98441 () ListLongMap!2615)

(assert (=> b!199560 (and (= lt!98440 lt!98441) (= lt!98441 lt!98440))))

(declare-fun lt!98442 () ListLongMap!2615)

(declare-fun v!520 () V!6037)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun +!340 (ListLongMap!2615 tuple2!3688) ListLongMap!2615)

(assert (=> b!199560 (= lt!98441 (+!340 lt!98442 (tuple2!3689 k!843 v!520)))))

(declare-fun _values!649 () array!8824)

(declare-fun i!601 () (_ BitVec 32))

(declare-datatypes ((Unit!5989 0))(
  ( (Unit!5990) )
))
(declare-fun lt!98439 () Unit!5989)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!22 (array!8826 array!8824 (_ BitVec 32) (_ BitVec 32) V!6037 V!6037 (_ BitVec 32) (_ BitVec 64) V!6037 (_ BitVec 32) Int) Unit!5989)

(assert (=> b!199560 (= lt!98439 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!22 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 i!601 k!843 v!520 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun getCurrentListMapNoExtraKeys!280 (array!8826 array!8824 (_ BitVec 32) (_ BitVec 32) V!6037 V!6037 (_ BitVec 32) Int) ListLongMap!2615)

(assert (=> b!199560 (= lt!98440 (getCurrentListMapNoExtraKeys!280 _keys!825 lt!98443 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(assert (=> b!199560 (= lt!98443 (array!8825 (store (arr!4162 _values!649) i!601 (ValueCellFull!2053 v!520)) (size!4487 _values!649)))))

(assert (=> b!199560 (= lt!98442 (getCurrentListMapNoExtraKeys!280 _keys!825 _values!649 mask!1149 extraKeys!596 zeroValue!615 minValue!615 #b00000000000000000000000000000000 defaultEntry!657))))

(declare-fun b!199561 () Bool)

(declare-fun res!94897 () Bool)

(assert (=> b!199561 (=> (not res!94897) (not e!130987))))

(assert (=> b!199561 (= res!94897 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4488 _keys!825))))))

(declare-fun b!199562 () Bool)

(declare-fun e!130986 () Bool)

(declare-fun e!130989 () Bool)

(declare-fun mapRes!8258 () Bool)

(assert (=> b!199562 (= e!130986 (and e!130989 mapRes!8258))))

(declare-fun condMapEmpty!8258 () Bool)

(declare-fun mapDefault!8258 () ValueCell!2053)

