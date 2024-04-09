; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132094 () Bool)

(assert start!132094)

(declare-fun b_free!31775 () Bool)

(declare-fun b_next!31775 () Bool)

(assert (=> start!132094 (= b_free!31775 (not b_next!31775))))

(declare-fun tp!111578 () Bool)

(declare-fun b_and!51195 () Bool)

(assert (=> start!132094 (= tp!111578 b_and!51195)))

(declare-fun b!1547914 () Bool)

(declare-fun c!142051 () Bool)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun lt!666993 () Bool)

(assert (=> b!1547914 (= c!142051 (and (not (= (bvand extraKeys!417 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!666993))))

(declare-datatypes ((V!59177 0))(
  ( (V!59178 (val!19103 Int)) )
))
(declare-datatypes ((tuple2!24730 0))(
  ( (tuple2!24731 (_1!12375 (_ BitVec 64)) (_2!12375 V!59177)) )
))
(declare-datatypes ((List!36235 0))(
  ( (Nil!36232) (Cons!36231 (h!37677 tuple2!24730) (t!50936 List!36235)) )
))
(declare-datatypes ((ListLongMap!22351 0))(
  ( (ListLongMap!22352 (toList!11191 List!36235)) )
))
(declare-fun e!861646 () ListLongMap!22351)

(declare-fun e!861641 () ListLongMap!22351)

(assert (=> b!1547914 (= e!861646 e!861641)))

(declare-fun b!1547915 () Bool)

(declare-fun res!1060961 () Bool)

(declare-fun e!861642 () Bool)

(assert (=> b!1547915 (=> (not res!1060961) (not e!861642))))

(declare-datatypes ((array!103267 0))(
  ( (array!103268 (arr!49831 (Array (_ BitVec 32) (_ BitVec 64))) (size!50382 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103267)

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!103267 (_ BitVec 32)) Bool)

(assert (=> b!1547915 (= res!1060961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!618 mask!926))))

(declare-fun b!1547916 () Bool)

(declare-fun e!861639 () Bool)

(declare-fun e!861644 () Bool)

(declare-fun mapRes!58780 () Bool)

(assert (=> b!1547916 (= e!861639 (and e!861644 mapRes!58780))))

(declare-fun condMapEmpty!58780 () Bool)

(declare-datatypes ((ValueCell!18115 0))(
  ( (ValueCellFull!18115 (v!21901 V!59177)) (EmptyCell!18115) )
))
(declare-datatypes ((array!103269 0))(
  ( (array!103270 (arr!49832 (Array (_ BitVec 32) ValueCell!18115)) (size!50383 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103269)

(declare-fun mapDefault!58780 () ValueCell!18115)

