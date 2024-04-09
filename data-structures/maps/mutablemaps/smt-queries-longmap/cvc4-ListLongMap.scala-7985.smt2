; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98790 () Bool)

(assert start!98790)

(declare-fun b_free!24359 () Bool)

(declare-fun b_next!24359 () Bool)

(assert (=> start!98790 (= b_free!24359 (not b_next!24359))))

(declare-fun tp!85788 () Bool)

(declare-fun b_and!39581 () Bool)

(assert (=> start!98790 (= tp!85788 b_and!39581)))

(declare-fun b!1151462 () Bool)

(declare-fun e!654943 () Bool)

(declare-fun e!654950 () Bool)

(declare-fun mapRes!45158 () Bool)

(assert (=> b!1151462 (= e!654943 (and e!654950 mapRes!45158))))

(declare-fun condMapEmpty!45158 () Bool)

(declare-datatypes ((V!43645 0))(
  ( (V!43646 (val!14501 Int)) )
))
(declare-datatypes ((ValueCell!13735 0))(
  ( (ValueCellFull!13735 (v!17139 V!43645)) (EmptyCell!13735) )
))
(declare-datatypes ((array!74582 0))(
  ( (array!74583 (arr!35938 (Array (_ BitVec 32) ValueCell!13735)) (size!36475 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74582)

(declare-fun mapDefault!45158 () ValueCell!13735)

