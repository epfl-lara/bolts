; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!111446 () Bool)

(assert start!111446)

(declare-fun b_free!30067 () Bool)

(declare-fun b_next!30067 () Bool)

(assert (=> start!111446 (= b_free!30067 (not b_next!30067))))

(declare-fun tp!105678 () Bool)

(declare-fun b_and!48303 () Bool)

(assert (=> start!111446 (= tp!105678 b_and!48303)))

(declare-fun b!1318289 () Bool)

(declare-fun e!752313 () Bool)

(declare-fun e!752316 () Bool)

(declare-fun mapRes!55478 () Bool)

(assert (=> b!1318289 (= e!752313 (and e!752316 mapRes!55478))))

(declare-fun condMapEmpty!55478 () Bool)

(declare-datatypes ((V!52953 0))(
  ( (V!52954 (val!18018 Int)) )
))
(declare-datatypes ((ValueCell!17045 0))(
  ( (ValueCellFull!17045 (v!20646 V!52953)) (EmptyCell!17045) )
))
(declare-datatypes ((array!88677 0))(
  ( (array!88678 (arr!42808 (Array (_ BitVec 32) ValueCell!17045)) (size!43359 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88677)

(declare-fun mapDefault!55478 () ValueCell!17045)

