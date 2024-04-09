; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133834 () Bool)

(assert start!133834)

(declare-fun mapIsEmpty!59691 () Bool)

(declare-fun mapRes!59691 () Bool)

(assert (=> mapIsEmpty!59691 mapRes!59691))

(declare-fun b!1564440 () Bool)

(declare-fun e!871973 () Bool)

(declare-fun tp_is_empty!38875 () Bool)

(assert (=> b!1564440 (= e!871973 tp_is_empty!38875)))

(declare-fun b!1564441 () Bool)

(declare-fun e!871975 () Bool)

(declare-fun e!871971 () Bool)

(assert (=> b!1564441 (= e!871975 e!871971)))

(declare-fun res!1069620 () Bool)

(assert (=> b!1564441 (=> res!1069620 e!871971)))

(declare-datatypes ((V!60041 0))(
  ( (V!60042 (val!19521 Int)) )
))
(declare-datatypes ((tuple2!25352 0))(
  ( (tuple2!25353 (_1!12686 (_ BitVec 64)) (_2!12686 V!60041)) )
))
(declare-datatypes ((List!36737 0))(
  ( (Nil!36734) (Cons!36733 (h!38180 tuple2!25352) (t!51591 List!36737)) )
))
(declare-datatypes ((ListLongMap!22799 0))(
  ( (ListLongMap!22800 (toList!11415 List!36737)) )
))
(declare-fun contains!10336 (ListLongMap!22799 (_ BitVec 64)) Bool)

(assert (=> b!1564441 (= res!1069620 (contains!10336 (ListLongMap!22800 Nil!36734) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1564442 () Bool)

(declare-fun e!871976 () Bool)

(assert (=> b!1564442 (= e!871976 (and e!871973 mapRes!59691))))

(declare-fun condMapEmpty!59691 () Bool)

(declare-datatypes ((ValueCell!18407 0))(
  ( (ValueCellFull!18407 (v!22270 V!60041)) (EmptyCell!18407) )
))
(declare-datatypes ((array!104407 0))(
  ( (array!104408 (arr!50390 (Array (_ BitVec 32) ValueCell!18407)) (size!50941 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!104407)

(declare-fun mapDefault!59691 () ValueCell!18407)

