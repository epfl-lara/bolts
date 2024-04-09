; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39802 () Bool)

(assert start!39802)

(declare-fun b_free!10061 () Bool)

(declare-fun b_next!10061 () Bool)

(assert (=> start!39802 (= b_free!10061 (not b_next!10061))))

(declare-fun tp!35712 () Bool)

(declare-fun b_and!17799 () Bool)

(assert (=> start!39802 (= tp!35712 b_and!17799)))

(declare-fun b!428943 () Bool)

(declare-fun e!254119 () Bool)

(declare-fun e!254118 () Bool)

(assert (=> b!428943 (= e!254119 e!254118)))

(declare-fun res!251942 () Bool)

(assert (=> b!428943 (=> (not res!251942) (not e!254118))))

(declare-datatypes ((array!26243 0))(
  ( (array!26244 (arr!12568 (Array (_ BitVec 32) (_ BitVec 64))) (size!12920 (_ BitVec 32))) )
))
(declare-fun lt!196076 () array!26243)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26243 (_ BitVec 32)) Bool)

(assert (=> b!428943 (= res!251942 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196076 mask!1025))))

(declare-fun _keys!709 () array!26243)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!428943 (= lt!196076 (array!26244 (store (arr!12568 _keys!709) i!563 k!794) (size!12920 _keys!709)))))

(declare-fun b!428944 () Bool)

(declare-fun res!251953 () Bool)

(assert (=> b!428944 (=> (not res!251953) (not e!254119))))

(declare-fun arrayContainsKey!0 (array!26243 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!428944 (= res!251953 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!428945 () Bool)

(declare-datatypes ((Unit!12555 0))(
  ( (Unit!12556) )
))
(declare-fun e!254112 () Unit!12555)

(declare-fun Unit!12557 () Unit!12555)

(assert (=> b!428945 (= e!254112 Unit!12557)))

(declare-fun lt!196069 () Unit!12555)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26243 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12555)

(assert (=> b!428945 (= lt!196069 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!428945 false))

(declare-fun b!428947 () Bool)

(declare-fun res!251946 () Bool)

(assert (=> b!428947 (=> (not res!251946) (not e!254119))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!428947 (= res!251946 (validMask!0 mask!1025))))

(declare-fun b!428948 () Bool)

(declare-fun e!254111 () Bool)

(declare-fun tp_is_empty!11213 () Bool)

(assert (=> b!428948 (= e!254111 tp_is_empty!11213)))

(declare-fun mapIsEmpty!18441 () Bool)

(declare-fun mapRes!18441 () Bool)

(assert (=> mapIsEmpty!18441 mapRes!18441))

(declare-fun b!428949 () Bool)

(declare-fun res!251948 () Bool)

(assert (=> b!428949 (=> (not res!251948) (not e!254119))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!428949 (= res!251948 (validKeyInArray!0 k!794))))

(declare-fun b!428950 () Bool)

(declare-fun e!254117 () Bool)

(declare-fun e!254115 () Bool)

(assert (=> b!428950 (= e!254117 (not e!254115))))

(declare-fun res!251955 () Bool)

(assert (=> b!428950 (=> res!251955 e!254115)))

(assert (=> b!428950 (= res!251955 (not (validKeyInArray!0 (select (arr!12568 _keys!709) from!863))))))

(declare-datatypes ((V!16055 0))(
  ( (V!16056 (val!5651 Int)) )
))
(declare-datatypes ((tuple2!7374 0))(
  ( (tuple2!7375 (_1!3697 (_ BitVec 64)) (_2!3697 V!16055)) )
))
(declare-datatypes ((List!7424 0))(
  ( (Nil!7421) (Cons!7420 (h!8276 tuple2!7374) (t!12942 List!7424)) )
))
(declare-datatypes ((ListLongMap!6301 0))(
  ( (ListLongMap!6302 (toList!3166 List!7424)) )
))
(declare-fun lt!196075 () ListLongMap!6301)

(declare-fun lt!196074 () ListLongMap!6301)

(assert (=> b!428950 (= lt!196075 lt!196074)))

(declare-fun v!412 () V!16055)

(declare-fun lt!196073 () ListLongMap!6301)

(declare-fun +!1316 (ListLongMap!6301 tuple2!7374) ListLongMap!6301)

(assert (=> b!428950 (= lt!196074 (+!1316 lt!196073 (tuple2!7375 k!794 v!412)))))

(declare-fun defaultEntry!557 () Int)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun zeroValue!515 () V!16055)

(declare-datatypes ((ValueCell!5263 0))(
  ( (ValueCellFull!5263 (v!7894 V!16055)) (EmptyCell!5263) )
))
(declare-datatypes ((array!26245 0))(
  ( (array!26246 (arr!12569 (Array (_ BitVec 32) ValueCell!5263)) (size!12921 (_ BitVec 32))) )
))
(declare-fun lt!196077 () array!26245)

(declare-fun minValue!515 () V!16055)

(declare-fun getCurrentListMapNoExtraKeys!1365 (array!26243 array!26245 (_ BitVec 32) (_ BitVec 32) V!16055 V!16055 (_ BitVec 32) Int) ListLongMap!6301)

(assert (=> b!428950 (= lt!196075 (getCurrentListMapNoExtraKeys!1365 lt!196076 lt!196077 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun _values!549 () array!26245)

(assert (=> b!428950 (= lt!196073 (getCurrentListMapNoExtraKeys!1365 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun lt!196072 () Unit!12555)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!516 (array!26243 array!26245 (_ BitVec 32) (_ BitVec 32) V!16055 V!16055 (_ BitVec 32) (_ BitVec 64) V!16055 (_ BitVec 32) Int) Unit!12555)

(assert (=> b!428950 (= lt!196072 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!516 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!428951 () Bool)

(declare-fun e!254114 () Bool)

(assert (=> b!428951 (= e!254114 (and e!254111 mapRes!18441))))

(declare-fun condMapEmpty!18441 () Bool)

(declare-fun mapDefault!18441 () ValueCell!5263)

