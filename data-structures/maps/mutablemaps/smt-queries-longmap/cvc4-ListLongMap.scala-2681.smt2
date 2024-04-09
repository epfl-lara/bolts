; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39916 () Bool)

(assert start!39916)

(declare-fun b_free!10175 () Bool)

(declare-fun b_next!10175 () Bool)

(assert (=> start!39916 (= b_free!10175 (not b_next!10175))))

(declare-fun tp!36054 () Bool)

(declare-fun b_and!18027 () Bool)

(assert (=> start!39916 (= tp!36054 b_and!18027)))

(declare-fun b!432431 () Bool)

(declare-fun res!254472 () Bool)

(declare-fun e!255777 () Bool)

(assert (=> b!432431 (=> (not res!254472) (not e!255777))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!432431 (= res!254472 (validKeyInArray!0 k!794))))

(declare-fun b!432432 () Bool)

(declare-fun e!255776 () Bool)

(assert (=> b!432432 (= e!255776 true)))

(declare-datatypes ((V!16207 0))(
  ( (V!16208 (val!5708 Int)) )
))
(declare-datatypes ((tuple2!7470 0))(
  ( (tuple2!7471 (_1!3745 (_ BitVec 64)) (_2!3745 V!16207)) )
))
(declare-fun lt!198417 () tuple2!7470)

(declare-fun lt!198403 () tuple2!7470)

(declare-datatypes ((List!7522 0))(
  ( (Nil!7519) (Cons!7518 (h!8374 tuple2!7470) (t!13154 List!7522)) )
))
(declare-datatypes ((ListLongMap!6397 0))(
  ( (ListLongMap!6398 (toList!3214 List!7522)) )
))
(declare-fun lt!198406 () ListLongMap!6397)

(declare-fun lt!198407 () ListLongMap!6397)

(declare-fun +!1360 (ListLongMap!6397 tuple2!7470) ListLongMap!6397)

(assert (=> b!432432 (= lt!198407 (+!1360 (+!1360 lt!198406 lt!198403) lt!198417))))

(declare-fun lt!198404 () V!16207)

(declare-fun v!412 () V!16207)

(declare-datatypes ((array!26465 0))(
  ( (array!26466 (arr!12679 (Array (_ BitVec 32) (_ BitVec 64))) (size!13031 (_ BitVec 32))) )
))
(declare-fun _keys!709 () array!26465)

(declare-datatypes ((Unit!12740 0))(
  ( (Unit!12741) )
))
(declare-fun lt!198416 () Unit!12740)

(declare-fun from!863 () (_ BitVec 32))

(declare-fun addCommutativeForDiffKeys!372 (ListLongMap!6397 (_ BitVec 64) V!16207 (_ BitVec 64) V!16207) Unit!12740)

(assert (=> b!432432 (= lt!198416 (addCommutativeForDiffKeys!372 lt!198406 k!794 v!412 (select (arr!12679 _keys!709) from!863) lt!198404))))

(declare-fun b!432433 () Bool)

(declare-fun e!255782 () Unit!12740)

(declare-fun Unit!12742 () Unit!12740)

(assert (=> b!432433 (= e!255782 Unit!12742)))

(declare-fun b!432434 () Bool)

(declare-fun Unit!12743 () Unit!12740)

(assert (=> b!432434 (= e!255782 Unit!12743)))

(declare-fun lt!198412 () Unit!12740)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!26465 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!12740)

(assert (=> b!432434 (= lt!198412 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!709 k!794 from!863 #b00000000000000000000000000000000))))

(assert (=> b!432434 false))

(declare-fun res!254470 () Bool)

(assert (=> start!39916 (=> (not res!254470) (not e!255777))))

(assert (=> start!39916 (= res!254470 (and (bvsge from!863 #b00000000000000000000000000000000) (bvsle from!863 (size!13031 _keys!709))))))

(assert (=> start!39916 e!255777))

(declare-fun tp_is_empty!11327 () Bool)

(assert (=> start!39916 tp_is_empty!11327))

(assert (=> start!39916 tp!36054))

(assert (=> start!39916 true))

(declare-datatypes ((ValueCell!5320 0))(
  ( (ValueCellFull!5320 (v!7951 V!16207)) (EmptyCell!5320) )
))
(declare-datatypes ((array!26467 0))(
  ( (array!26468 (arr!12680 (Array (_ BitVec 32) ValueCell!5320)) (size!13032 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26467)

(declare-fun e!255775 () Bool)

(declare-fun array_inv!9220 (array!26467) Bool)

(assert (=> start!39916 (and (array_inv!9220 _values!549) e!255775)))

(declare-fun array_inv!9221 (array!26465) Bool)

(assert (=> start!39916 (array_inv!9221 _keys!709)))

(declare-fun b!432435 () Bool)

(declare-fun e!255781 () Bool)

(assert (=> b!432435 (= e!255781 tp_is_empty!11327)))

(declare-fun mapIsEmpty!18612 () Bool)

(declare-fun mapRes!18612 () Bool)

(assert (=> mapIsEmpty!18612 mapRes!18612))

(declare-fun b!432436 () Bool)

(declare-fun res!254461 () Bool)

(assert (=> b!432436 (=> (not res!254461) (not e!255777))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!432436 (= res!254461 (validMask!0 mask!1025))))

(declare-fun b!432437 () Bool)

(declare-fun res!254463 () Bool)

(assert (=> b!432437 (=> (not res!254463) (not e!255777))))

(declare-fun i!563 () (_ BitVec 32))

(assert (=> b!432437 (= res!254463 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!13031 _keys!709))))))

(declare-fun b!432438 () Bool)

(declare-fun e!255780 () Bool)

(assert (=> b!432438 (= e!255775 (and e!255780 mapRes!18612))))

(declare-fun condMapEmpty!18612 () Bool)

(declare-fun mapDefault!18612 () ValueCell!5320)

