; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112570 () Bool)

(assert start!112570)

(declare-fun b_free!30929 () Bool)

(declare-fun b_next!30929 () Bool)

(assert (=> start!112570 (= b_free!30929 (not b_next!30929))))

(declare-fun tp!108424 () Bool)

(declare-fun b_and!49847 () Bool)

(assert (=> start!112570 (= tp!108424 b_and!49847)))

(declare-fun mapIsEmpty!56932 () Bool)

(declare-fun mapRes!56932 () Bool)

(assert (=> mapIsEmpty!56932 mapRes!56932))

(declare-fun b!1334761 () Bool)

(declare-fun e!760224 () Bool)

(declare-fun e!760222 () Bool)

(assert (=> b!1334761 (= e!760224 (and e!760222 mapRes!56932))))

(declare-fun condMapEmpty!56932 () Bool)

(declare-datatypes ((V!54221 0))(
  ( (V!54222 (val!18494 Int)) )
))
(declare-datatypes ((ValueCell!17521 0))(
  ( (ValueCellFull!17521 (v!21129 V!54221)) (EmptyCell!17521) )
))
(declare-datatypes ((array!90519 0))(
  ( (array!90520 (arr!43721 (Array (_ BitVec 32) ValueCell!17521)) (size!44272 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90519)

(declare-fun mapDefault!56932 () ValueCell!17521)

