; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98546 () Bool)

(assert start!98546)

(declare-fun b_free!24115 () Bool)

(declare-fun b_next!24115 () Bool)

(assert (=> start!98546 (= b_free!24115 (not b_next!24115))))

(declare-fun tp!85057 () Bool)

(declare-fun b_and!39093 () Bool)

(assert (=> start!98546 (= tp!85057 b_and!39093)))

(declare-fun b!1140362 () Bool)

(declare-fun e!648857 () Bool)

(declare-fun tp_is_empty!28645 () Bool)

(assert (=> b!1140362 (= e!648857 tp_is_empty!28645)))

(declare-fun b!1140363 () Bool)

(declare-fun e!648844 () Bool)

(declare-fun e!648849 () Bool)

(declare-fun mapRes!44792 () Bool)

(assert (=> b!1140363 (= e!648844 (and e!648849 mapRes!44792))))

(declare-fun condMapEmpty!44792 () Bool)

(declare-datatypes ((V!43321 0))(
  ( (V!43322 (val!14379 Int)) )
))
(declare-datatypes ((ValueCell!13613 0))(
  ( (ValueCellFull!13613 (v!17017 V!43321)) (EmptyCell!13613) )
))
(declare-datatypes ((array!74106 0))(
  ( (array!74107 (arr!35700 (Array (_ BitVec 32) ValueCell!13613)) (size!36237 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74106)

(declare-fun mapDefault!44792 () ValueCell!13613)

