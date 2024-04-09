; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39820 () Bool)

(assert start!39820)

(declare-fun b_free!10079 () Bool)

(declare-fun b_next!10079 () Bool)

(assert (=> start!39820 (= b_free!10079 (not b_next!10079))))

(declare-fun tp!35765 () Bool)

(declare-fun b_and!17835 () Bool)

(assert (=> start!39820 (= tp!35765 b_and!17835)))

(declare-fun b!429474 () Bool)

(declare-datatypes ((Unit!12586 0))(
  ( (Unit!12587) )
))
(declare-fun e!254357 () Unit!12586)

(declare-fun Unit!12588 () Unit!12586)

(assert (=> b!429474 (= e!254357 Unit!12588)))

(declare-fun b!429475 () Bool)

(declare-fun res!252320 () Bool)

(declare-fun e!254361 () Bool)

(assert (=> b!429475 (=> (not res!252320) (not e!254361))))

(declare-datatypes ((array!26279 0))(
  ( (array!26280 (arr!12586 (Array (_ BitVec 32) (_ BitVec 64))) (size!12938 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26279)

(declare-fun k!794 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!26279 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!429475 (= res!252320 (not (arrayContainsKey!0 _keys!709 k!794 #b00000000000000000000000000000000)))))

(declare-fun b!429476 () Bool)

(declare-fun res!252328 () Bool)

(assert (=> b!429476 (=> (not res!252328) (not e!254361))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!429476 (= res!252328 (validMask!0 mask!1025))))

(declare-fun b!429477 () Bool)

(declare-fun res!252330 () Bool)

(assert (=> b!429477 (=> (not res!252330) (not e!254361))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!429477 (= res!252330 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12938 _keys!709))))))

(declare-fun b!429478 () Bool)

(declare-fun e!254356 () Bool)

(assert (=> b!429478 (= e!254356 true)))

(declare-fun from!863 () (_ BitVec 32))

(assert (=> b!429478 (not (= (select (arr!12586 _keys!709) from!863) k!794))))

(declare-fun lt!196345 () Unit!12586)

(assert (=> b!429478 (= lt!196345 e!254357)))

(declare-fun c!55379 () Bool)

(assert (=> b!429478 (= c!55379 (= (select (arr!12586 _keys!709) from!863) k!794))))

(declare-datatypes ((V!16079 0))(
  ( (V!16080 (val!5660 Int)) )
))
(declare-datatypes ((tuple2!7390 0))(
  ( (tuple2!7391 (_1!3705 (_ BitVec 64)) (_2!3705 V!16079)) )
))
(declare-datatypes ((List!7440 0))(
  ( (Nil!7437) (Cons!7436 (h!8292 tuple2!7390) (t!12976 List!7440)) )
))
(declare-datatypes ((ListLongMap!6317 0))(
  ( (ListLongMap!6318 (toList!3174 List!7440)) )
))
(declare-fun lt!196339 () ListLongMap!6317)

(declare-fun defaultEntry!557 () Int)

(declare-datatypes ((ValueCell!5272 0))(
  ( (ValueCellFull!5272 (v!7903 V!16079)) (EmptyCell!5272) )
))
(declare-datatypes ((array!26281 0))(
  ( (array!26282 (arr!12587 (Array (_ BitVec 32) ValueCell!5272)) (size!12939 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26281)

(declare-fun lt!196338 () ListLongMap!6317)

(declare-fun +!1323 (ListLongMap!6317 tuple2!7390) ListLongMap!6317)

(declare-fun get!6248 (ValueCell!5272 V!16079) V!16079)

(declare-fun dynLambda!769 (Int (_ BitVec 64)) V!16079)

(assert (=> b!429478 (= lt!196339 (+!1323 lt!196338 (tuple2!7391 (select (arr!12586 _keys!709) from!863) (get!6248 (select (arr!12587 _values!549) from!863) (dynLambda!769 defaultEntry!557 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!429479 () Bool)

(declare-fun e!254355 () Bool)

(declare-fun e!254362 () Bool)

(assert (=> b!429479 (= e!254355 e!254362)))

(declare-fun res!252321 () Bool)

(assert (=> b!429479 (=> (not res!252321) (not e!254362))))

(assert (=> b!429479 (= res!252321 (and (not (= from!863 i!563)) (bvslt from!863 i!563)))))

(declare-fun minValue!515 () V!16079)

(declare-fun extraKeys!496 () (_ BitVec 32))

(declare-fun lt!196344 () array!26281)

(declare-fun zeroValue!515 () V!16079)

(declare-fun lt!196340 () array!26279)

(declare-fun getCurrentListMapNoExtraKeys!1371 (array!26279 array!26281 (_ BitVec 32) (_ BitVec 32) V!16079 V!16079 (_ BitVec 32) Int) ListLongMap!6317)

(assert (=> b!429479 (= lt!196339 (getCurrentListMapNoExtraKeys!1371 lt!196340 lt!196344 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun v!412 () V!16079)

(assert (=> b!429479 (= lt!196344 (array!26282 (store (arr!12587 _values!549) i!563 (ValueCellFull!5272 v!412)) (size!12939 _values!549)))))

(declare-fun lt!196346 () ListLongMap!6317)

(assert (=> b!429479 (= lt!196346 (getCurrentListMapNoExtraKeys!1371 _keys!709 _values!549 mask!1025 extraKeys!496 zeroValue!515 minValue!515 from!863 defaultEntry!557))))

(declare-fun b!429480 () Bool)

(declare-fun res!252331 () Bool)

(assert (=> b!429480 (=> (not res!252331) (not e!254361))))

(assert (=> b!429480 (= res!252331 (and (= (size!12939 _values!549) (bvadd #b00000000000000000000000000000001 mask!1025)) (= (size!12938 _keys!709) (size!12939 _values!549)) (bvsge mask!1025 #b00000000000000000000000000000000) (bvsge extraKeys!496 #b00000000000000000000000000000000) (bvsle extraKeys!496 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!18468 () Bool)

(declare-fun mapRes!18468 () Bool)

(assert (=> mapIsEmpty!18468 mapRes!18468))

(declare-fun b!429481 () Bool)

(declare-fun e!254360 () Bool)

(declare-fun tp_is_empty!11231 () Bool)

(assert (=> b!429481 (= e!254360 tp_is_empty!11231)))

(declare-fun mapNonEmpty!18468 () Bool)

(declare-fun tp!35766 () Bool)

(assert (=> mapNonEmpty!18468 (= mapRes!18468 (and tp!35766 e!254360))))

(declare-fun mapKey!18468 () (_ BitVec 32))

(declare-fun mapRest!18468 () (Array (_ BitVec 32) ValueCell!5272))

(declare-fun mapValue!18468 () ValueCell!5272)

(assert (=> mapNonEmpty!18468 (= (arr!12587 _values!549) (store mapRest!18468 mapKey!18468 mapValue!18468))))

(declare-fun b!429482 () Bool)

(declare-fun res!252325 () Bool)

(assert (=> b!429482 (=> (not res!252325) (not e!254361))))

(declare-datatypes ((List!7441 0))(
  ( (Nil!7438) (Cons!7437 (h!8293 (_ BitVec 64)) (t!12977 List!7441)) )
))
(declare-fun arrayNoDuplicates!0 (array!26279 (_ BitVec 32) List!7441) Bool)

(assert (=> b!429482 (= res!252325 (arrayNoDuplicates!0 _keys!709 #b00000000000000000000000000000000 Nil!7438))))

(declare-fun b!429483 () Bool)

(declare-fun res!252326 () Bool)

(assert (=> b!429483 (=> (not res!252326) (not e!254355))))

(assert (=> b!429483 (= res!252326 (arrayNoDuplicates!0 lt!196340 #b00000000000000000000000000000000 Nil!7438))))

(declare-fun b!429484 () Bool)

(declare-fun Unit!12589 () Unit!12586)

(assert (=> b!429484 (= e!254357 Unit!12589)))

(declare-fun lt!196343 () Unit!12586)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26279 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12586)

(assert (=> b!429484 (= lt!196343 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!429484 false))

(declare-fun b!429485 () Bool)

(declare-fun res!252333 () Bool)

(assert (=> b!429485 (=> (not res!252333) (not e!254361))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!429485 (= res!252333 (validKeyInArray!0 k!794))))

(declare-fun b!429486 () Bool)

(assert (=> b!429486 (= e!254361 e!254355)))

(declare-fun res!252324 () Bool)

(assert (=> b!429486 (=> (not res!252324) (not e!254355))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!26279 (_ BitVec 32)) Bool)

(assert (=> b!429486 (= res!252324 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!196340 mask!1025))))

(assert (=> b!429486 (= lt!196340 (array!26280 (store (arr!12586 _keys!709) i!563 k!794) (size!12938 _keys!709)))))

(declare-fun b!429487 () Bool)

(declare-fun res!252327 () Bool)

(assert (=> b!429487 (=> (not res!252327) (not e!254361))))

(assert (=> b!429487 (= res!252327 (or (= (select (arr!12586 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!12586 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!429488 () Bool)

(declare-fun e!254359 () Bool)

(assert (=> b!429488 (= e!254359 tp_is_empty!11231)))

(declare-fun b!429489 () Bool)

(declare-fun e!254358 () Bool)

(assert (=> b!429489 (= e!254358 (and e!254359 mapRes!18468))))

(declare-fun condMapEmpty!18468 () Bool)

(declare-fun mapDefault!18468 () ValueCell!5272)

