; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41192 () Bool)

(assert start!41192)

(declare-fun b_free!11053 () Bool)

(declare-fun b_next!11053 () Bool)

(assert (=> start!41192 (= b_free!11053 (not b_next!11053))))

(declare-fun tp!38995 () Bool)

(declare-fun b_and!19363 () Bool)

(assert (=> start!41192 (= tp!38995 b_and!19363)))

(declare-fun b!460238 () Bool)

(declare-fun e!268517 () Bool)

(declare-fun e!268518 () Bool)

(assert (=> b!460238 (= e!268517 e!268518)))

(declare-fun res!275239 () Bool)

(assert (=> b!460238 (=> res!275239 e!268518)))

(declare-fun k!794 () (_ BitVec 64))

(declare-datatypes ((array!28543 0))(
  ( (array!28544 (arr!13709 (Array (_ BitVec 32) (_ BitVec 64))) (size!14061 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!28543)

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!460238 (= res!275239 (= k!794 (select (arr!13709 _keys!709) from!863)))))

(assert (=> b!460238 (not (= (select (arr!13709 _keys!709) from!863) k!794))))

(declare-datatypes ((Unit!13347 0))(
  ( (Unit!13348) )
))
(declare-fun lt!208468 () Unit!13347)

(declare-fun e!268516 () Unit!13347)

(assert (=> b!460238 (= lt!208468 e!268516)))

(declare-fun c!56453 () Bool)

(assert (=> b!460238 (= c!56453 (= (select (arr!13709 _keys!709) from!863) k!794))))

(declare-datatypes ((V!17627 0))(
  ( (V!17628 (val!6240 Int)) )
))
(declare-datatypes ((tuple2!8196 0))(
  ( (tuple2!8197 (_1!4108 (_ BitVec 64)) (_2!4108 V!17627)) )
))
(declare-datatypes ((List!8298 0))(
  ( (Nil!8295) (Cons!8294 (h!9150 tuple2!8196) (t!14238 List!8298)) )
))
(declare-datatypes ((ListLongMap!7123 0))(
  ( (ListLongMap!7124 (toList!3577 List!8298)) )
))
(declare-fun lt!208473 () ListLongMap!7123)

(declare-fun lt!208459 () ListLongMap!7123)

(assert (=> b!460238 (= lt!208473 lt!208459)))

(declare-fun lt!208472 () ListLongMap!7123)

(declare-fun lt!208471 () tuple2!8196)

(declare-fun +!1596 (ListLongMap!7123 tuple2!8196) ListLongMap!7123)

(assert (=> b!460238 (= lt!208459 (+!1596 lt!208472 lt!208471))))

(declare-fun lt!208465 () V!17627)

(assert (=> b!460238 (= lt!208471 (tuple2!8197 (select (arr!13709 _keys!709) from!863) lt!208465))))

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5852 0))(
  ( (ValueCellFull!5852 (v!8514 V!17627)) (EmptyCell!5852) )
))
(declare-datatypes ((array!28545 0))(
  ( (array!28546 (arr!13710 (Array (_ BitVec 32) ValueCell!5852)) (size!14062 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!28545)

(declare-fun get!6782 (ValueCell!5852 V!17627) V!17627)

(declare-fun dynLambda!904 (Int (_ BitVec 64)) V!17627)

(assert (=> b!460238 (= lt!208465 (get!6782 (select (arr!13710 _values!549) from!863) (dynLambda!904 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460239 () Bool)

(declare-fun res!275238 () Bool)

(declare-fun e!268514 () Bool)

(assert (=> b!460239 (=> (not res!275238) (not e!268514))))

(declare-fun arrayContainsKey!0 (array!28543 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!460239 (= res!275238 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!460240 () Bool)

(declare-fun e!268522 () Bool)

(assert (=> b!460240 (= e!268522 (not e!268517))))

(declare-fun res!275246 () Bool)

(assert (=> b!460240 (=> res!275246 e!268517)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!460240 (= res!275246 (not (validKeyInArray!0 (select (arr!13709 _keys!709) from!863))))))

(declare-fun lt!208467 () ListLongMap!7123)

(assert (=> b!460240 (= lt!208467 lt!208472)))

(declare-fun lt!208469 () ListLongMap!7123)

(declare-fun lt!208470 () tuple2!8196)

(assert (=> b!460240 (= lt!208472 (+!1596 lt!208469 lt!208470))))

(declare-fun minValue!515 () V!17627)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun lt!208461 () array!28545)

(declare-fun zeroValue!515 () V!17627)

(declare-fun lt!208464 () array!28543)

(declare-fun getCurrentListMapNoExtraKeys!1746 (array!28543 array!28545 (_ BitVec 32) (_ BitVec 32) V!17627 V!17627 (_ BitVec 32) Int) ListLongMap!7123)

(assert (=> b!460240 (= lt!208467 (getCurrentListMapNoExtraKeys!1746 lt!208464 lt!208461 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun v!412 () V!17627)

(assert (=> b!460240 (= lt!208470 (tuple2!8197 k!794 v!412))))

(assert (=> b!460240 (= lt!208469 (getCurrentListMapNoExtraKeys!1746 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun lt!208462 () Unit!13347)

(declare-fun lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!749 (array!28543 array!28545 (_ BitVec 32) (_ BitVec 32) V!17627 V!17627 (_ BitVec 32) (_ BitVec 64) V!17627 (_ BitVec 32) Int) Unit!13347)

(assert (=> b!460240 (= lt!208462 (lemmaAddValidKeyToArrayThenMapNoExtrasAddPair!749 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 i!563 k!794 v!412 (bvadd #b00000000000000000000000000000001 from!863) defaultEntry!557))))

(declare-fun b!460241 () Bool)

(declare-fun res!275237 () Bool)

(assert (=> b!460241 (=> (not res!275237) (not e!268514))))

(assert (=> b!460241 (= res!275237 (validKeyInArray!0 k!794))))

(declare-fun b!460242 () Bool)

(declare-fun res!275248 () Bool)

(assert (=> b!460242 (=> (not res!275248) (not e!268514))))

(assert (=> b!460242 (= res!275248 (and (= (size!14062 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!14061 _keys!709) (size!14062 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun b!460243 () Bool)

(declare-fun res!275243 () Bool)

(declare-fun e!268519 () Bool)

(assert (=> b!460243 (=> (not res!275243) (not e!268519))))

(assert (=> b!460243 (= res!275243 (bvsle from!863 i!563))))

(declare-fun b!460244 () Bool)

(declare-fun res!275240 () Bool)

(assert (=> b!460244 (=> (not res!275240) (not e!268514))))

(assert (=> b!460244 (= res!275240 (or (= (select (arr!13709 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!13709 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!460245 () Bool)

(declare-fun res!275249 () Bool)

(assert (=> b!460245 (=> (not res!275249) (not e!268514))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!460245 (= res!275249 (validMask!0 mask!1025))))

(declare-fun b!460246 () Bool)

(declare-fun res!275241 () Bool)

(assert (=> b!460246 (=> (not res!275241) (not e!268514))))

(declare-datatypes ((List!8299 0))(
  ( (Nil!8296) (Cons!8295 (h!9151 (_ BitVec 64)) (t!14239 List!8299)) )
))
(declare-fun arrayNoDuplicates!0 (array!28543 (_ BitVec 32) List!8299) Bool)

(assert (=> b!460246 (= res!275241 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!8296))))

(declare-fun b!460247 () Bool)

(declare-fun res!275251 () Bool)

(assert (=> b!460247 (=> (not res!275251) (not e!268514))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!28543 (_ BitVec 32)) Bool)

(assert (=> b!460247 (= res!275251 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!709 mask!1025))))

(declare-fun b!460248 () Bool)

(declare-fun Unit!13349 () Unit!13347)

(assert (=> b!460248 (= e!268516 Unit!13349)))

(declare-fun lt!208463 () Unit!13347)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!28543 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!13347)

(assert (=> b!460248 (= lt!208463 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!460248 false))

(declare-fun b!460249 () Bool)

(declare-fun e!268513 () Bool)

(declare-fun e!268520 () Bool)

(declare-fun mapRes!20236 () Bool)

(assert (=> b!460249 (= e!268513 (and e!268520 mapRes!20236))))

(declare-fun condMapEmpty!20236 () Bool)

(declare-fun mapDefault!20236 () ValueCell!5852)

