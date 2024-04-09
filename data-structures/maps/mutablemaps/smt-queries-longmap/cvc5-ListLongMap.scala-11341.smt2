; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!131982 () Bool)

(assert start!131982)

(declare-fun b_free!31663 () Bool)

(declare-fun b_next!31663 () Bool)

(assert (=> start!131982 (= b_free!31663 (not b_next!31663))))

(declare-fun tp!111242 () Bool)

(declare-fun b_and!51083 () Bool)

(assert (=> start!131982 (= tp!111242 b_and!51083)))

(declare-datatypes ((V!59029 0))(
  ( (V!59030 (val!19047 Int)) )
))
(declare-datatypes ((tuple2!24622 0))(
  ( (tuple2!24623 (_1!12321 (_ BitVec 64)) (_2!12321 V!59029)) )
))
(declare-datatypes ((List!36139 0))(
  ( (Nil!36136) (Cons!36135 (h!37581 tuple2!24622) (t!50840 List!36139)) )
))
(declare-datatypes ((ListLongMap!22243 0))(
  ( (ListLongMap!22244 (toList!11137 List!36139)) )
))
(declare-fun call!69198 () ListLongMap!22243)

(declare-datatypes ((array!103051 0))(
  ( (array!103052 (arr!49723 (Array (_ BitVec 32) (_ BitVec 64))) (size!50274 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103051)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun from!762 () (_ BitVec 32))

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18059 0))(
  ( (ValueCellFull!18059 (v!21845 V!59029)) (EmptyCell!18059) )
))
(declare-datatypes ((array!103053 0))(
  ( (array!103054 (arr!49724 (Array (_ BitVec 32) ValueCell!18059)) (size!50275 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103053)

(declare-fun minValue!436 () V!59029)

(declare-fun bm!69194 () Bool)

(declare-fun zeroValue!436 () V!59029)

(declare-fun getCurrentListMapNoExtraKeys!6586 (array!103051 array!103053 (_ BitVec 32) (_ BitVec 32) V!59029 V!59029 (_ BitVec 32) Int) ListLongMap!22243)

(assert (=> bm!69194 (= call!69198 (getCurrentListMapNoExtraKeys!6586 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1545226 () Bool)

(declare-fun e!860126 () Bool)

(declare-fun e!860134 () Bool)

(declare-fun mapRes!58612 () Bool)

(assert (=> b!1545226 (= e!860126 (and e!860134 mapRes!58612))))

(declare-fun condMapEmpty!58612 () Bool)

(declare-fun mapDefault!58612 () ValueCell!18059)

