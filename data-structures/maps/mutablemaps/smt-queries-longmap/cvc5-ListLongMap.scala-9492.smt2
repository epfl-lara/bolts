; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112596 () Bool)

(assert start!112596)

(declare-fun b_free!30955 () Bool)

(declare-fun b_next!30955 () Bool)

(assert (=> start!112596 (= b_free!30955 (not b_next!30955))))

(declare-fun tp!108502 () Bool)

(declare-fun b_and!49873 () Bool)

(assert (=> start!112596 (= tp!108502 b_and!49873)))

(declare-fun b!1335079 () Bool)

(declare-fun e!760417 () Bool)

(declare-fun e!760419 () Bool)

(declare-fun mapRes!56971 () Bool)

(assert (=> b!1335079 (= e!760417 (and e!760419 mapRes!56971))))

(declare-fun condMapEmpty!56971 () Bool)

(declare-datatypes ((V!54257 0))(
  ( (V!54258 (val!18507 Int)) )
))
(declare-datatypes ((ValueCell!17534 0))(
  ( (ValueCellFull!17534 (v!21142 V!54257)) (EmptyCell!17534) )
))
(declare-datatypes ((array!90569 0))(
  ( (array!90570 (arr!43746 (Array (_ BitVec 32) ValueCell!17534)) (size!44297 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90569)

(declare-fun mapDefault!56971 () ValueCell!17534)

