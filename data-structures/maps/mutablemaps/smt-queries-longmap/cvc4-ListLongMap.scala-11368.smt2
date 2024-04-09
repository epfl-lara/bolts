; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132148 () Bool)

(assert start!132148)

(declare-fun b_free!31829 () Bool)

(declare-fun b_next!31829 () Bool)

(assert (=> start!132148 (= b_free!31829 (not b_next!31829))))

(declare-fun tp!111739 () Bool)

(declare-fun b_and!51249 () Bool)

(assert (=> start!132148 (= tp!111739 b_and!51249)))

(declare-fun b!1549210 () Bool)

(declare-datatypes ((V!59249 0))(
  ( (V!59250 (val!19130 Int)) )
))
(declare-datatypes ((tuple2!24782 0))(
  ( (tuple2!24783 (_1!12401 (_ BitVec 64)) (_2!12401 V!59249)) )
))
(declare-datatypes ((List!36281 0))(
  ( (Nil!36278) (Cons!36277 (h!37723 tuple2!24782) (t!50982 List!36281)) )
))
(declare-datatypes ((ListLongMap!22403 0))(
  ( (ListLongMap!22404 (toList!11217 List!36281)) )
))
(declare-fun e!862375 () ListLongMap!22403)

(declare-fun call!70442 () ListLongMap!22403)

(assert (=> b!1549210 (= e!862375 call!70442)))

(declare-fun b!1549211 () Bool)

(declare-fun res!1061528 () Bool)

(declare-fun e!862369 () Bool)

(assert (=> b!1549211 (=> (not res!1061528) (not e!862369))))

(declare-datatypes ((array!103371 0))(
  ( (array!103372 (arr!49883 (Array (_ BitVec 32) (_ BitVec 64))) (size!50434 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103371)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1549211 (= res!1061528 (validKeyInArray!0 (select (arr!49883 _keys!618) from!762)))))

(declare-fun b!1549212 () Bool)

(declare-fun e!862368 () Bool)

(declare-fun e!862371 () Bool)

(declare-fun mapRes!58861 () Bool)

(assert (=> b!1549212 (= e!862368 (and e!862371 mapRes!58861))))

(declare-fun condMapEmpty!58861 () Bool)

(declare-datatypes ((ValueCell!18142 0))(
  ( (ValueCellFull!18142 (v!21928 V!59249)) (EmptyCell!18142) )
))
(declare-datatypes ((array!103373 0))(
  ( (array!103374 (arr!49884 (Array (_ BitVec 32) ValueCell!18142)) (size!50435 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103373)

(declare-fun mapDefault!58861 () ValueCell!18142)

