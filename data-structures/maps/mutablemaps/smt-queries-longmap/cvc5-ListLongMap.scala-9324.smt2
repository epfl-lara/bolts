; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111416 () Bool)

(assert start!111416)

(declare-fun b_free!30037 () Bool)

(declare-fun b_next!30037 () Bool)

(assert (=> start!111416 (= b_free!30037 (not b_next!30037))))

(declare-fun tp!105587 () Bool)

(declare-fun b_and!48267 () Bool)

(assert (=> start!111416 (= tp!105587 b_and!48267)))

(declare-fun b!1317863 () Bool)

(declare-fun e!752089 () Bool)

(declare-fun tp_is_empty!35857 () Bool)

(assert (=> b!1317863 (= e!752089 tp_is_empty!35857)))

(declare-fun b!1317864 () Bool)

(declare-fun e!752090 () Bool)

(declare-fun mapRes!55433 () Bool)

(assert (=> b!1317864 (= e!752090 (and e!752089 mapRes!55433))))

(declare-fun condMapEmpty!55433 () Bool)

(declare-datatypes ((V!52913 0))(
  ( (V!52914 (val!18003 Int)) )
))
(declare-datatypes ((ValueCell!17030 0))(
  ( (ValueCellFull!17030 (v!20631 V!52913)) (EmptyCell!17030) )
))
(declare-datatypes ((array!88619 0))(
  ( (array!88620 (arr!42779 (Array (_ BitVec 32) ValueCell!17030)) (size!43330 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88619)

(declare-fun mapDefault!55433 () ValueCell!17030)

