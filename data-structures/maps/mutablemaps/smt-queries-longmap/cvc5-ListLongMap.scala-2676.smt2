; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39882 () Bool)

(assert start!39882)

(declare-fun b_free!10141 () Bool)

(declare-fun b_next!10141 () Bool)

(assert (=> start!39882 (= b_free!10141 (not b_next!10141))))

(declare-fun tp!35951 () Bool)

(declare-fun b_and!17959 () Bool)

(assert (=> start!39882 (= tp!35951 b_and!17959)))

(declare-fun b!431377 () Bool)

(declare-fun res!253708 () Bool)

(declare-fun e!255265 () Bool)

(assert (=> b!431377 (=> (not res!253708) (not e!255265))))

(declare-datatypes ((array!26399 0))(
  ( (array!26400 (arr!12646 (Array (_ BitVec 32) (_ BitVec 64))) (size!12998 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26399)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26399 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!431377 (= res!253708 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!431378 () Bool)

(declare-fun res!253704 () Bool)

(assert (=> b!431378 (=> (not res!253704) (not e!255265))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!431378 (= res!253704 (or (= (select (arr!12646 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12646 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!431379 () Bool)

(declare-datatypes ((Unit!12686 0))(
  ( (Unit!12687) )
))
(declare-fun e!255268 () Unit!12686)

(declare-fun Unit!12688 () Unit!12686)

(assert (=> b!431379 (= e!255268 Unit!12688)))

(declare-fun b!431380 () Bool)

(declare-fun res!253698 () Bool)

(declare-fun e!255273 () Bool)

(assert (=> b!431380 (=> (not res!253698) (not e!255273))))

(declare-fun lt!197648 () array!26399)

(declare-datatypes ((List!7492 0))(
  ( (Nil!7489) (Cons!7488 (h!8344 (_ BitVec 64)) (t!13090 List!7492)) )
))
(declare-fun arrayNoDuplicates!0 (array!26399 (_ BitVec 32) List!7492) Bool)

(assert (=> b!431380 (= res!253698 (arrayNoDuplicates!0 lt!197648 #b00000000000000000000000000000000 Nil!7489))))

(declare-fun res!253702 () Bool)

(assert (=> start!39882 (=> (not res!253702) (not e!255265))))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> start!39882 (= res!253702 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!12998 _keys!709))))))

(assert (=> start!39882 e!255265))

(declare-fun tp_is_empty!11293 () Bool)

(assert (=> start!39882 tp_is_empty!11293))

(assert (=> start!39882 tp!35951))

(assert (=> start!39882 true))

(declare-datatypes ((V!16163 0))(
  ( (V!16164 (val!5691 Int)) )
))
(declare-datatypes ((ValueCell!5303 0))(
  ( (ValueCellFull!5303 (v!7934 V!16163)) (EmptyCell!5303) )
))
(declare-datatypes ((array!26401 0))(
  ( (array!26402 (arr!12647 (Array (_ BitVec 32) ValueCell!5303)) (size!12999 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26401)

(declare-fun e!255269 () Bool)

(declare-fun array_inv!9196 (array!26401) Bool)

(assert (=> start!39882 (and (array_inv!9196 _values!549) e!255269)))

(declare-fun array_inv!9197 (array!26399) Bool)

(assert (=> start!39882 (array_inv!9197 _keys!709)))

(declare-fun b!431381 () Bool)

(declare-fun Unit!12689 () Unit!12686)

(assert (=> b!431381 (= e!255268 Unit!12689)))

(declare-fun lt!197643 () Unit!12686)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26399 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12686)

(assert (=> b!431381 (= lt!197643 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!431381 false))

(declare-fun b!431382 () Bool)

(declare-fun e!255271 () Bool)

(assert (=> b!431382 (= e!255273 e!255271)))

(declare-fun res!253709 () Bool)

(assert (=> b!431382 (=> (not res!253709) (not e!255271))))

(assert (=> b!431382 (= res!253709 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-datatypes ((tuple2!7440 0))(
  ( (tuple2!7441 (_1!3730 (_ BitVec 64)) (_2!3730 V!16163)) )
))
(declare-datatypes ((List!7493 0))(
  ( (Nil!7490) (Cons!7489 (h!8345 tuple2!7440) (t!13091 List!7493)) )
))
(declare-datatypes ((ListLongMap!6367 0))(
  ( (ListLongMap!6368 (toList!3199 List!7493)) )
))
(declare-fun lt!197640 () ListLongMap!6367)

(declare-fun minValue!515 () V!16163)

(declare-fun defaultEntry!557 () Int)

(declare-fun zeroValue!515 () V!16163)

(declare-fun lt!197647 () array!26401)

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!1393 (array!26399 array!26401 (_ BitVec 32) (_ BitVec 32) V!16163 V!16163 (_ BitVec 32) Int) ListLongMap!6367)

(assert (=> b!431382 (= lt!197640 (getCurrentListMapNoExtraKeys!1393 lt!197648 lt!197647 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16163)

(assert (=> b!431382 (= lt!197647 (array!26402 (store (arr!12647 _values!549) i!563 (ValueCellFull!5303 v!412)) (size!12999 _values!549)))))

(declare-fun lt!197649 () ListLongMap!6367)

(assert (=> b!431382 (= lt!197649 (getCurrentListMapNoExtraKeys!1393 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!431383 () Bool)

(declare-fun res!253696 () Bool)

(assert (=> b!431383 (=> (not res!253696) (not e!255265))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!431383 (= res!253696 (validKeyInArray!0 k!794))))

(declare-fun b!431384 () Bool)

(declare-fun e!255272 () Bool)

(declare-fun mapRes!18561 () Bool)

(assert (=> b!431384 (= e!255269 (and e!255272 mapRes!18561))))

(declare-fun condMapEmpty!18561 () Bool)

(declare-fun mapDefault!18561 () ValueCell!5303)

