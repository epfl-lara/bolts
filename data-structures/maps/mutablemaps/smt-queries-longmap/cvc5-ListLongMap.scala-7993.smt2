; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98834 () Bool)

(assert start!98834)

(declare-fun b_free!24403 () Bool)

(declare-fun b_next!24403 () Bool)

(assert (=> start!98834 (= b_free!24403 (not b_next!24403))))

(declare-fun tp!85921 () Bool)

(declare-fun b_and!39669 () Bool)

(assert (=> start!98834 (= tp!85921 b_and!39669)))

(declare-fun b!1153486 () Bool)

(declare-fun e!656067 () Bool)

(declare-fun e!656075 () Bool)

(declare-fun mapRes!45224 () Bool)

(assert (=> b!1153486 (= e!656067 (and e!656075 mapRes!45224))))

(declare-fun condMapEmpty!45224 () Bool)

(declare-datatypes ((V!43705 0))(
  ( (V!43706 (val!14523 Int)) )
))
(declare-datatypes ((ValueCell!13757 0))(
  ( (ValueCellFull!13757 (v!17161 V!43705)) (EmptyCell!13757) )
))
(declare-datatypes ((array!74664 0))(
  ( (array!74665 (arr!35979 (Array (_ BitVec 32) ValueCell!13757)) (size!36516 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74664)

(declare-fun mapDefault!45224 () ValueCell!13757)

