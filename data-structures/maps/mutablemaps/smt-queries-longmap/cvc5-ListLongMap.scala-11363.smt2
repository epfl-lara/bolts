; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!132114 () Bool)

(assert start!132114)

(declare-fun b_free!31795 () Bool)

(declare-fun b_next!31795 () Bool)

(assert (=> start!132114 (= b_free!31795 (not b_next!31795))))

(declare-fun tp!111638 () Bool)

(declare-fun b_and!51215 () Bool)

(assert (=> start!132114 (= tp!111638 b_and!51215)))

(declare-datatypes ((array!103307 0))(
  ( (array!103308 (arr!49851 (Array (_ BitVec 32) (_ BitVec 64))) (size!50402 (_ BitVec 32))) )
))
(declare-fun _keys!618 () array!103307)

(declare-datatypes ((V!59205 0))(
  ( (V!59206 (val!19113 Int)) )
))
(declare-fun zeroValue!436 () V!59205)

(declare-fun extraKeys!417 () (_ BitVec 32))

(declare-fun defaultEntry!478 () Int)

(declare-fun bm!70184 () Bool)

(declare-fun mask!926 () (_ BitVec 32))

(declare-datatypes ((ValueCell!18125 0))(
  ( (ValueCellFull!18125 (v!21911 V!59205)) (EmptyCell!18125) )
))
(declare-datatypes ((array!103309 0))(
  ( (array!103310 (arr!49852 (Array (_ BitVec 32) ValueCell!18125)) (size!50403 (_ BitVec 32))) )
))
(declare-fun _values!470 () array!103309)

(declare-fun minValue!436 () V!59205)

(declare-fun from!762 () (_ BitVec 32))

(declare-datatypes ((tuple2!24750 0))(
  ( (tuple2!24751 (_1!12385 (_ BitVec 64)) (_2!12385 V!59205)) )
))
(declare-datatypes ((List!36252 0))(
  ( (Nil!36249) (Cons!36248 (h!37694 tuple2!24750) (t!50953 List!36252)) )
))
(declare-datatypes ((ListLongMap!22371 0))(
  ( (ListLongMap!22372 (toList!11201 List!36252)) )
))
(declare-fun call!70187 () ListLongMap!22371)

(declare-fun getCurrentListMapNoExtraKeys!6641 (array!103307 array!103309 (_ BitVec 32) (_ BitVec 32) V!59205 V!59205 (_ BitVec 32) Int) ListLongMap!22371)

(assert (=> bm!70184 (= call!70187 (getCurrentListMapNoExtraKeys!6641 _keys!618 _values!470 mask!926 extraKeys!417 zeroValue!436 minValue!436 from!762 defaultEntry!478))))

(declare-fun b!1548394 () Bool)

(declare-fun e!861914 () Bool)

(declare-fun e!861910 () Bool)

(declare-fun mapRes!58810 () Bool)

(assert (=> b!1548394 (= e!861914 (and e!861910 mapRes!58810))))

(declare-fun condMapEmpty!58810 () Bool)

(declare-fun mapDefault!58810 () ValueCell!18125)

