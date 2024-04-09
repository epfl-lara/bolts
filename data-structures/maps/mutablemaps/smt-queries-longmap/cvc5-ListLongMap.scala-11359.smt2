; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132090 () Bool)

(assert start!132090)

(declare-fun b_free!31771 () Bool)

(declare-fun b_next!31771 () Bool)

(assert (=> start!132090 (= b_free!31771 (not b_next!31771))))

(declare-fun tp!111565 () Bool)

(declare-fun b_and!51191 () Bool)

(assert (=> start!132090 (= tp!111565 b_and!51191)))

(declare-fun res!1060915 () Bool)

(declare-fun e!861589 () Bool)

(assert (=> start!132090 (=> (not res!1060915) (not e!861589))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132090 (= res!1060915 (validMask!0 mask!926))))

(assert (=> start!132090 e!861589))

(declare-datatypes ((array!103259 0))(
  ( (array!103260 (arr!49827 (Array (_ BitVec 32) (_ BitVec 64))) (size!50378 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103259)

(declare-fun array_inv!38673 (array!103259) Bool)

(assert (=> start!132090 (array_inv!38673 _keys!618)))

(declare-fun tp_is_empty!38047 () Bool)

(assert (=> start!132090 tp_is_empty!38047))

(assert (=> start!132090 true))

(assert (=> start!132090 tp!111565))

(declare-datatypes ((V!59173 0))(
  ( (V!59174 (val!19101 Int)) )
))
(declare-datatypes ((ValueCell!18113 0))(
  ( (ValueCellFull!18113 (v!21899 V!59173)) (EmptyCell!18113) )
))
(declare-datatypes ((array!103261 0))(
  ( (array!103262 (arr!49828 (Array (_ BitVec 32) ValueCell!18113)) (size!50379 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103261)

(declare-fun e!861586 () Bool)

(declare-fun array_inv!38674 (array!103261) Bool)

(assert (=> start!132090 (and (array_inv!38674 _values!470) e!861586)))

(declare-fun b!1547818 () Bool)

(declare-datatypes ((tuple2!24726 0))(
  ( (tuple2!24727 (_1!12373 (_ BitVec 64)) (_2!12373 V!59173)) )
))
(declare-datatypes ((List!36232 0))(
  ( (Nil!36229) (Cons!36228 (h!37674 tuple2!24726) (t!50933 List!36232)) )
))
(declare-datatypes ((ListLongMap!22347 0))(
  ( (ListLongMap!22348 (toList!11189 List!36232)) )
))
(declare-fun e!861584 () ListLongMap!22347)

(declare-fun call!70008 () ListLongMap!22347)

(assert (=> b!1547818 (= e!861584 call!70008)))

(declare-fun b!1547819 () Bool)

(declare-fun e!861592 () Bool)

(declare-fun mapRes!58774 () Bool)

(assert (=> b!1547819 (= e!861586 (and e!861592 mapRes!58774))))

(declare-fun condMapEmpty!58774 () Bool)

(declare-fun mapDefault!58774 () ValueCell!18113)

