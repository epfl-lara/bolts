; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37282 () Bool)

(assert start!37282)

(declare-fun b_free!8401 () Bool)

(declare-fun b_next!8401 () Bool)

(assert (=> start!37282 (= b_free!8401 (not b_next!8401))))

(declare-fun tp!29919 () Bool)

(declare-fun b_and!15661 () Bool)

(assert (=> start!37282 (= tp!29919 b_and!15661)))

(declare-fun b!377271 () Bool)

(declare-fun e!229703 () Bool)

(declare-fun e!229706 () Bool)

(assert (=> b!377271 (= e!229703 e!229706)))

(declare-fun res!213528 () Bool)

(assert (=> b!377271 (=> res!213528 e!229706)))

(declare-fun k!778 () (_ BitVec 64))

(assert (=> b!377271 (= res!213528 (= k!778 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-datatypes ((V!13171 0))(
  ( (V!13172 (val!4569 Int)) )
))
(declare-datatypes ((tuple2!6066 0))(
  ( (tuple2!6067 (_1!3043 (_ BitVec 64)) (_2!3043 V!13171)) )
))
(declare-datatypes ((List!5936 0))(
  ( (Nil!5933) (Cons!5932 (h!6788 tuple2!6066) (t!11094 List!5936)) )
))
(declare-datatypes ((ListLongMap!4993 0))(
  ( (ListLongMap!4994 (toList!2512 List!5936)) )
))
(declare-fun lt!175483 () ListLongMap!4993)

(declare-fun lt!175482 () ListLongMap!4993)

(assert (=> b!377271 (= lt!175483 lt!175482)))

(declare-fun lt!175486 () ListLongMap!4993)

(declare-fun lt!175491 () tuple2!6066)

(declare-fun +!853 (ListLongMap!4993 tuple2!6066) ListLongMap!4993)

(assert (=> b!377271 (= lt!175482 (+!853 lt!175486 lt!175491))))

(declare-fun lt!175485 () ListLongMap!4993)

(declare-fun lt!175489 () ListLongMap!4993)

(assert (=> b!377271 (= lt!175485 lt!175489)))

(declare-fun lt!175487 () ListLongMap!4993)

(assert (=> b!377271 (= lt!175489 (+!853 lt!175487 lt!175491))))

(declare-fun lt!175484 () ListLongMap!4993)

(assert (=> b!377271 (= lt!175483 (+!853 lt!175484 lt!175491))))

(declare-fun zeroValue!472 () V!13171)

(assert (=> b!377271 (= lt!175491 (tuple2!6067 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!472))))

(declare-fun res!213527 () Bool)

(declare-fun e!229700 () Bool)

(assert (=> start!37282 (=> (not res!213527) (not e!229700))))

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!37282 (= res!213527 (validMask!0 mask!970))))

(assert (=> start!37282 e!229700))

(declare-datatypes ((ValueCell!4181 0))(
  ( (ValueCellFull!4181 (v!6762 V!13171)) (EmptyCell!4181) )
))
(declare-datatypes ((array!21997 0))(
  ( (array!21998 (arr!10464 (Array (_ BitVec 32) ValueCell!4181)) (size!10816 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21997)

(declare-fun e!229701 () Bool)

(declare-fun array_inv!7706 (array!21997) Bool)

(assert (=> start!37282 (and (array_inv!7706 _values!506) e!229701)))

(assert (=> start!37282 tp!29919))

(assert (=> start!37282 true))

(declare-fun tp_is_empty!9049 () Bool)

(assert (=> start!37282 tp_is_empty!9049))

(declare-datatypes ((array!21999 0))(
  ( (array!22000 (arr!10465 (Array (_ BitVec 32) (_ BitVec 64))) (size!10817 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21999)

(declare-fun array_inv!7707 (array!21999) Bool)

(assert (=> start!37282 (array_inv!7707 _keys!658)))

(declare-fun b!377272 () Bool)

(declare-fun e!229707 () Bool)

(declare-fun mapRes!15138 () Bool)

(assert (=> b!377272 (= e!229701 (and e!229707 mapRes!15138))))

(declare-fun condMapEmpty!15138 () Bool)

(declare-fun mapDefault!15138 () ValueCell!4181)

