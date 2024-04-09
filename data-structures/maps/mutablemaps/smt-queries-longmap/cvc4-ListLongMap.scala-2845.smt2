; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41068 () Bool)

(assert start!41068)

(declare-fun b_free!10973 () Bool)

(declare-fun b_next!10973 () Bool)

(assert (=> start!41068 (= b_free!10973 (not b_next!10973))))

(declare-fun tp!38749 () Bool)

(declare-fun b_and!19171 () Bool)

(assert (=> start!41068 (= tp!38749 b_and!19171)))

(declare-fun b!457631 () Bool)

(declare-fun res!273398 () Bool)

(declare-fun e!267244 () Bool)

(assert (=> b!457631 (=> (not res!273398) (not e!267244))))

(declare-datatypes ((array!28389 0))(
  ( (array!28390 (arr!13634 (Array (_ BitVec 32) (_ BitVec 64))) (size!13986 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28389)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!28389 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!457631 (= res!273398 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!457632 () Bool)

(declare-fun res!273386 () Bool)

(assert (=> b!457632 (=> (not res!273386) (not e!267244))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28389 (_ BitVec 32)) Bool)

(assert (=> b!457632 (= res!273386 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!457633 () Bool)

(declare-fun res!273399 () Bool)

(assert (=> b!457633 (=> (not res!273399) (not e!267244))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!457633 (= res!273399 (or (= (select (arr!13634 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13634 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!267245 () Bool)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun b!457634 () Bool)

(assert (=> b!457634 (= e!267245 (or (not (= (select (arr!13634 _keys!709) from!863) k!794)) (bvslt from!863 (size!13986 _keys!709))))))

(declare-datatypes ((V!17519 0))(
  ( (V!17520 (val!6200 Int)) )
))
(declare-datatypes ((tuple2!8134 0))(
  ( (tuple2!8135 (_1!4077 (_ BitVec 64)) (_2!4077 V!17519)) )
))
(declare-datatypes ((List!8236 0))(
  ( (Nil!8233) (Cons!8232 (h!9088 tuple2!8134) (t!14096 List!8236)) )
))
(declare-datatypes ((ListLongMap!7061 0))(
  ( (ListLongMap!7062 (toList!3546 List!8236)) )
))
(declare-fun lt!207056 () ListLongMap!7061)

(declare-fun defaultEntry!557 () Int)

(declare-fun lt!207052 () ListLongMap!7061)

(declare-datatypes ((ValueCell!5812 0))(
  ( (ValueCellFull!5812 (v!8466 V!17519)) (EmptyCell!5812) )
))
(declare-datatypes ((array!28391 0))(
  ( (array!28392 (arr!13635 (Array (_ BitVec 32) ValueCell!5812)) (size!13987 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28391)

(declare-fun +!1566 (ListLongMap!7061 tuple2!8134) ListLongMap!7061)

(declare-fun get!6724 (ValueCell!5812 V!17519) V!17519)

(declare-fun dynLambda!878 (Int (_ BitVec 64)) V!17519)

(assert (=> b!457634 (= lt!207056 (+!1566 lt!207052 (tuple2!8135 (select (arr!13634 _keys!709) from!863) (get!6724 (select (arr!13635 _values!549) from!863) (dynLambda!878 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!457635 () Bool)

(declare-fun res!273389 () Bool)

(declare-fun e!267240 () Bool)

(assert (=> b!457635 (=> (not res!273389) (not e!267240))))

(declare-fun lt!207055 () array!28389)

(declare-datatypes ((List!8237 0))(
  ( (Nil!8234) (Cons!8233 (h!9089 (_ BitVec 64)) (t!14097 List!8237)) )
))
(declare-fun arrayNoDuplicates!0 (array!28389 (_ BitVec 32) List!8237) Bool)

(assert (=> b!457635 (= res!273389 (arrayNoDuplicates!0 lt!207055 #b00000000000000000000000000000000 Nil!8234))))

(declare-fun b!457636 () Bool)

(declare-fun res!273394 () Bool)

(assert (=> b!457636 (=> (not res!273394) (not e!267240))))

(assert (=> b!457636 (= res!273394 (bvsle from!863 i!563))))

(declare-fun b!457637 () Bool)

(declare-fun e!267243 () Bool)

(declare-fun tp_is_empty!12311 () Bool)

(assert (=> b!457637 (= e!267243 tp_is_empty!12311)))

(declare-fun b!457638 () Bool)

(declare-fun res!273390 () Bool)

(assert (=> b!457638 (=> (not res!273390) (not e!267244))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!457638 (= res!273390 (validKeyInArray!0 k!794))))

(declare-fun mapIsEmpty!20110 () Bool)

(declare-fun mapRes!20110 () Bool)

(assert (=> mapIsEmpty!20110 mapRes!20110))

(declare-fun b!457639 () Bool)

(declare-fun res!273393 () Bool)

(assert (=> b!457639 (=> (not res!273393) (not e!267244))))

(assert (=> b!457639 (= res!273393 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13986 _keys!709))))))

(declare-fun b!457640 () Bool)

(declare-fun e!267246 () Bool)

(assert (=> b!457640 (= e!267246 (not e!267245))))

(declare-fun res!273396 () Bool)

(assert (=> b!457640 (=> res!273396 e!267245)))

(assert (=> b!457640 (= res!273396 (not (validKeyInArray!0 (select (arr!13634 _keys!709) from!863))))))

(declare-fun lt!207057 () ListLongMap!7061)

(assert (=> b!457640 (= lt!207057 lt!207052)))

(declare-fun lt!207053 () ListLongMap!7061)

(declare-fun v!412 () V!17519)

(assert (=> b!457640 (= lt!207052 (+!1566 lt!207053 (tuple2!8135 k!794 v!412)))))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!207054 () array!28391)

(declare-fun zeroValue!515 () V!17519)

(declare-fun minValue!515 () V!17519)

(declare-fun getCurrentListMapNoExtraKeys!1719 (array!28389 array!28391 (_ BitVec 32) (_ BitVec 32) V!17519 V!17519 (_ BitVec 32) Int) ListLongMap!7061)

(assert (=> b!457640 (= lt!207057 (getCurrentListMapNoExtraKeys!1719 lt!207055 lt!207054 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(assert (=> b!457640 (= lt!207053 (getCurrentListMapNoExtraKeys!1719 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-datatypes ((Unit!13249 0))(
  ( (Unit!13250) )
))
(declare-fun lt!207051 () Unit!13249)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!727 (array!28389 array!28391 (_ BitVec 32) (_ BitVec 32) V!17519 V!17519 (_ BitVec 32) (_ BitVec 64) V!17519 (_ BitVec 32) Int) Unit!13249)

(assert (=> b!457640 (= lt!207051 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!727 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!457641 () Bool)

(assert (=> b!457641 (= e!267240 e!267246)))

(declare-fun res!273388 () Bool)

(assert (=> b!457641 (=> (not res!273388) (not e!267246))))

(assert (=> b!457641 (= res!273388 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(assert (=> b!457641 (= lt!207056 (getCurrentListMapNoExtraKeys!1719 lt!207055 lt!207054 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(assert (=> b!457641 (= lt!207054 (array!28392 (store (arr!13635 _values!549) i!563 (ValueCellFull!5812 v!412)) (size!13987 _values!549)))))

(declare-fun lt!207058 () ListLongMap!7061)

(assert (=> b!457641 (= lt!207058 (getCurrentListMapNoExtraKeys!1719 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun res!273397 () Bool)

(assert (=> start!41068 (=> (not res!273397) (not e!267244))))

(assert (=> start!41068 (= res!273397 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13986 _keys!709))))))

(assert (=> start!41068 e!267244))

(assert (=> start!41068 tp_is_empty!12311))

(assert (=> start!41068 tp!38749))

(assert (=> start!41068 true))

(declare-fun e!267247 () Bool)

(declare-fun array_inv!9864 (array!28391) Bool)

(assert (=> start!41068 (and (array_inv!9864 _values!549) e!267247)))

(declare-fun array_inv!9865 (array!28389) Bool)

(assert (=> start!41068 (array_inv!9865 _keys!709)))

(declare-fun b!457642 () Bool)

(declare-fun res!273395 () Bool)

(assert (=> b!457642 (=> (not res!273395) (not e!267244))))

(assert (=> b!457642 (= res!273395 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8234))))

(declare-fun mapNonEmpty!20110 () Bool)

(declare-fun tp!38748 () Bool)

(declare-fun e!267242 () Bool)

(assert (=> mapNonEmpty!20110 (= mapRes!20110 (and tp!38748 e!267242))))

(declare-fun mapRest!20110 () (Array (_ BitVec 32) ValueCell!5812))

(declare-fun mapKey!20110 () (_ BitVec 32))

(declare-fun mapValue!20110 () ValueCell!5812)

(assert (=> mapNonEmpty!20110 (= (arr!13635 _values!549) (store mapRest!20110 mapKey!20110 mapValue!20110))))

(declare-fun b!457643 () Bool)

(assert (=> b!457643 (= e!267247 (and e!267243 mapRes!20110))))

(declare-fun condMapEmpty!20110 () Bool)

(declare-fun mapDefault!20110 () ValueCell!5812)

