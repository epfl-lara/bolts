; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112350 () Bool)

(assert start!112350)

(declare-fun b_free!30709 () Bool)

(declare-fun b_next!30709 () Bool)

(assert (=> start!112350 (= b_free!30709 (not b_next!30709))))

(declare-fun tp!107764 () Bool)

(declare-fun b_and!49483 () Bool)

(assert (=> start!112350 (= tp!107764 b_and!49483)))

(declare-fun b!1330932 () Bool)

(declare-fun e!758490 () Bool)

(declare-fun tp_is_empty!36619 () Bool)

(assert (=> b!1330932 (= e!758490 tp_is_empty!36619)))

(declare-fun b!1330933 () Bool)

(declare-fun e!758494 () Bool)

(declare-fun e!758491 () Bool)

(declare-fun mapRes!56602 () Bool)

(assert (=> b!1330933 (= e!758494 (and e!758491 mapRes!56602))))

(declare-fun condMapEmpty!56602 () Bool)

(declare-datatypes ((V!53929 0))(
  ( (V!53930 (val!18384 Int)) )
))
(declare-datatypes ((ValueCell!17411 0))(
  ( (ValueCellFull!17411 (v!21019 V!53929)) (EmptyCell!17411) )
))
(declare-datatypes ((array!90091 0))(
  ( (array!90092 (arr!43507 (Array (_ BitVec 32) ValueCell!17411)) (size!44058 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90091)

(declare-fun mapDefault!56602 () ValueCell!17411)

