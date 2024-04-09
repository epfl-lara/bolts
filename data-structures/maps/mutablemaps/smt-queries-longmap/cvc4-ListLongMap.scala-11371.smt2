; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132166 () Bool)

(assert start!132166)

(declare-fun b_free!31847 () Bool)

(declare-fun b_next!31847 () Bool)

(assert (=> start!132166 (= b_free!31847 (not b_next!31847))))

(declare-fun tp!111794 () Bool)

(declare-fun b_and!51271 () Bool)

(assert (=> start!132166 (= tp!111794 b_and!51271)))

(declare-fun b!1549704 () Bool)

(declare-fun e!862665 () Bool)

(assert (=> b!1549704 (= e!862665 false)))

(declare-fun lt!668026 () Bool)

(declare-datatypes ((V!59273 0))(
  ( (V!59274 (val!19139 Int)) )
))
(declare-datatypes ((tuple2!24800 0))(
  ( (tuple2!24801 (_1!12410 (_ BitVec 64)) (_2!12410 V!59273)) )
))
(declare-datatypes ((List!36296 0))(
  ( (Nil!36293) (Cons!36292 (h!37738 tuple2!24800) (t!51003 List!36296)) )
))
(declare-datatypes ((ListLongMap!22421 0))(
  ( (ListLongMap!22422 (toList!11226 List!36296)) )
))
(declare-fun lt!668032 () ListLongMap!22421)

(declare-fun contains!10103 (ListLongMap!22421 (_ BitVec 64)) Bool)

(assert (=> b!1549704 (= lt!668026 (contains!10103 lt!668032 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!1061736 () Bool)

(declare-fun e!862663 () Bool)

(assert (=> start!132166 (=> (not res!1061736) (not e!862663))))

(declare-fun mask!926 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!132166 (= res!1061736 (validMask!0 mask!926))))

(assert (=> start!132166 e!862663))

(declare-datatypes ((array!103407 0))(
  ( (array!103408 (arr!49901 (Array (_ BitVec 32) (_ BitVec 64))) (size!50452 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103407)

(declare-fun array_inv!38727 (array!103407) Bool)

(assert (=> start!132166 (array_inv!38727 _keys!618)))

(declare-fun tp_is_empty!38123 () Bool)

(assert (=> start!132166 tp_is_empty!38123))

(assert (=> start!132166 true))

(assert (=> start!132166 tp!111794))

(declare-datatypes ((ValueCell!18151 0))(
  ( (ValueCellFull!18151 (v!21937 V!59273)) (EmptyCell!18151) )
))
(declare-datatypes ((array!103409 0))(
  ( (array!103410 (arr!49902 (Array (_ BitVec 32) ValueCell!18151)) (size!50453 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103409)

(declare-fun e!862670 () Bool)

(declare-fun array_inv!38728 (array!103409) Bool)

(assert (=> start!132166 (and (array_inv!38728 _values!470) e!862670)))

(declare-fun b!1549705 () Bool)

(declare-fun e!862671 () Bool)

(declare-fun mapRes!58888 () Bool)

(assert (=> b!1549705 (= e!862670 (and e!862671 mapRes!58888))))

(declare-fun condMapEmpty!58888 () Bool)

(declare-fun mapDefault!58888 () ValueCell!18151)

