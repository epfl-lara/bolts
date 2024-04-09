; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!113462 () Bool)

(assert start!113462)

(declare-fun b_free!31477 () Bool)

(declare-fun b_next!31477 () Bool)

(assert (=> start!113462 (= b_free!31477 (not b_next!31477))))

(declare-fun tp!110236 () Bool)

(declare-fun b_and!50775 () Bool)

(assert (=> start!113462 (= tp!110236 b_and!50775)))

(declare-fun b!1346365 () Bool)

(declare-fun e!766108 () Bool)

(declare-fun e!766109 () Bool)

(declare-fun mapRes!57922 () Bool)

(assert (=> b!1346365 (= e!766108 (and e!766109 mapRes!57922))))

(declare-fun condMapEmpty!57922 () Bool)

(declare-datatypes ((V!55073 0))(
  ( (V!55074 (val!18813 Int)) )
))
(declare-datatypes ((ValueCell!17840 0))(
  ( (ValueCellFull!17840 (v!21459 V!55073)) (EmptyCell!17840) )
))
(declare-datatypes ((array!91747 0))(
  ( (array!91748 (arr!44325 (Array (_ BitVec 32) ValueCell!17840)) (size!44876 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91747)

(declare-fun mapDefault!57922 () ValueCell!17840)

