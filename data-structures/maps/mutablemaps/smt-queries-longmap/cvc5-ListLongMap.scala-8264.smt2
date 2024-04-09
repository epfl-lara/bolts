; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100568 () Bool)

(assert start!100568)

(declare-fun b_free!25855 () Bool)

(declare-fun b_next!25855 () Bool)

(assert (=> start!100568 (= b_free!25855 (not b_next!25855))))

(declare-fun tp!90556 () Bool)

(declare-fun b_and!42611 () Bool)

(assert (=> start!100568 (= tp!90556 b_and!42611)))

(declare-fun b!1201459 () Bool)

(declare-fun e!682312 () Bool)

(declare-fun e!682306 () Bool)

(declare-fun mapRes!47681 () Bool)

(assert (=> b!1201459 (= e!682312 (and e!682306 mapRes!47681))))

(declare-fun condMapEmpty!47681 () Bool)

(declare-datatypes ((V!45873 0))(
  ( (V!45874 (val!15336 Int)) )
))
(declare-datatypes ((ValueCell!14570 0))(
  ( (ValueCellFull!14570 (v!17975 V!45873)) (EmptyCell!14570) )
))
(declare-datatypes ((array!77870 0))(
  ( (array!77871 (arr!37576 (Array (_ BitVec 32) ValueCell!14570)) (size!38113 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!77870)

(declare-fun mapDefault!47681 () ValueCell!14570)

