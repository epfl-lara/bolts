; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111674 () Bool)

(assert start!111674)

(declare-fun b_free!30295 () Bool)

(declare-fun b_next!30295 () Bool)

(assert (=> start!111674 (= b_free!30295 (not b_next!30295))))

(declare-fun tp!106361 () Bool)

(declare-fun b_and!48759 () Bool)

(assert (=> start!111674 (= tp!106361 b_and!48759)))

(declare-fun b!1322279 () Bool)

(declare-fun e!754025 () Bool)

(declare-fun e!754026 () Bool)

(declare-fun mapRes!55820 () Bool)

(assert (=> b!1322279 (= e!754025 (and e!754026 mapRes!55820))))

(declare-fun condMapEmpty!55820 () Bool)

(declare-datatypes ((V!53257 0))(
  ( (V!53258 (val!18132 Int)) )
))
(declare-datatypes ((ValueCell!17159 0))(
  ( (ValueCellFull!17159 (v!20760 V!53257)) (EmptyCell!17159) )
))
(declare-datatypes ((array!89111 0))(
  ( (array!89112 (arr!43025 (Array (_ BitVec 32) ValueCell!17159)) (size!43576 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89111)

(declare-fun mapDefault!55820 () ValueCell!17159)

