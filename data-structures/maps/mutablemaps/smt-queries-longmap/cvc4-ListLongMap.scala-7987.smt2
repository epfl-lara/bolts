; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98802 () Bool)

(assert start!98802)

(declare-fun b_free!24371 () Bool)

(declare-fun b_next!24371 () Bool)

(assert (=> start!98802 (= b_free!24371 (not b_next!24371))))

(declare-fun tp!85824 () Bool)

(declare-fun b_and!39605 () Bool)

(assert (=> start!98802 (= tp!85824 b_and!39605)))

(declare-fun b!1152014 () Bool)

(declare-fun e!655247 () Bool)

(declare-fun e!655257 () Bool)

(declare-fun mapRes!45176 () Bool)

(assert (=> b!1152014 (= e!655247 (and e!655257 mapRes!45176))))

(declare-fun condMapEmpty!45176 () Bool)

(declare-datatypes ((V!43661 0))(
  ( (V!43662 (val!14507 Int)) )
))
(declare-datatypes ((ValueCell!13741 0))(
  ( (ValueCellFull!13741 (v!17145 V!43661)) (EmptyCell!13741) )
))
(declare-datatypes ((array!74604 0))(
  ( (array!74605 (arr!35949 (Array (_ BitVec 32) ValueCell!13741)) (size!36486 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74604)

(declare-fun mapDefault!45176 () ValueCell!13741)

