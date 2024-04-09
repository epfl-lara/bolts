; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98550 () Bool)

(assert start!98550)

(declare-fun b_free!24119 () Bool)

(declare-fun b_next!24119 () Bool)

(assert (=> start!98550 (= b_free!24119 (not b_next!24119))))

(declare-fun tp!85069 () Bool)

(declare-fun b_and!39101 () Bool)

(assert (=> start!98550 (= tp!85069 b_and!39101)))

(declare-fun b!1140540 () Bool)

(declare-fun e!648940 () Bool)

(declare-fun e!648942 () Bool)

(declare-fun mapRes!44798 () Bool)

(assert (=> b!1140540 (= e!648940 (and e!648942 mapRes!44798))))

(declare-fun condMapEmpty!44798 () Bool)

(declare-datatypes ((V!43325 0))(
  ( (V!43326 (val!14381 Int)) )
))
(declare-datatypes ((ValueCell!13615 0))(
  ( (ValueCellFull!13615 (v!17019 V!43325)) (EmptyCell!13615) )
))
(declare-datatypes ((array!74112 0))(
  ( (array!74113 (arr!35703 (Array (_ BitVec 32) ValueCell!13615)) (size!36240 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74112)

(declare-fun mapDefault!44798 () ValueCell!13615)

