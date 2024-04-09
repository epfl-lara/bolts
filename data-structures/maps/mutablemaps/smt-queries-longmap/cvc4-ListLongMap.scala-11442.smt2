; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133486 () Bool)

(assert start!133486)

(declare-fun mapNonEmpty!59181 () Bool)

(declare-fun mapRes!59181 () Bool)

(declare-fun tp!112837 () Bool)

(declare-fun e!869311 () Bool)

(assert (=> mapNonEmpty!59181 (= mapRes!59181 (and tp!112837 e!869311))))

(declare-datatypes ((V!59589 0))(
  ( (V!59590 (val!19352 Int)) )
))
(declare-datatypes ((ValueCell!18238 0))(
  ( (ValueCellFull!18238 (v!22101 V!59589)) (EmptyCell!18238) )
))
(declare-fun mapValue!59181 () ValueCell!18238)

(declare-fun mapKey!59181 () (_ BitVec 32))

(declare-datatypes ((array!103753 0))(
  ( (array!103754 (arr!50064 (Array (_ BitVec 32) ValueCell!18238)) (size!50615 (_ BitVec 32))) )
))
(declare-fun _values!487 () array!103753)

(declare-fun mapRest!59181 () (Array (_ BitVec 32) ValueCell!18238))

(assert (=> mapNonEmpty!59181 (= (arr!50064 _values!487) (store mapRest!59181 mapKey!59181 mapValue!59181))))

(declare-fun mapIsEmpty!59181 () Bool)

(assert (=> mapIsEmpty!59181 mapRes!59181))

(declare-fun b!1560068 () Bool)

(declare-fun res!1066904 () Bool)

(declare-fun e!869309 () Bool)

(assert (=> b!1560068 (=> (not res!1066904) (not e!869309))))

(declare-datatypes ((tuple2!25174 0))(
  ( (tuple2!25175 (_1!12597 (_ BitVec 64)) (_2!12597 V!59589)) )
))
(declare-datatypes ((List!36530 0))(
  ( (Nil!36527) (Cons!36526 (h!37973 tuple2!25174) (t!51270 List!36530)) )
))
(declare-datatypes ((ListLongMap!22621 0))(
  ( (ListLongMap!22622 (toList!11326 List!36530)) )
))
(declare-fun contains!10246 (ListLongMap!22621 (_ BitVec 64)) Bool)

(assert (=> b!1560068 (= res!1066904 (not (contains!10246 (ListLongMap!22622 Nil!36527) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1560070 () Bool)

(declare-fun e!869312 () Bool)

(declare-fun e!869308 () Bool)

(assert (=> b!1560070 (= e!869312 (and e!869308 mapRes!59181))))

(declare-fun condMapEmpty!59181 () Bool)

(declare-fun mapDefault!59181 () ValueCell!18238)

