; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112554 () Bool)

(assert start!112554)

(declare-fun b_free!30913 () Bool)

(declare-fun b_next!30913 () Bool)

(assert (=> start!112554 (= b_free!30913 (not b_next!30913))))

(declare-fun tp!108376 () Bool)

(declare-fun b_and!49831 () Bool)

(assert (=> start!112554 (= tp!108376 b_and!49831)))

(declare-fun b!1334569 () Bool)

(declare-fun e!760102 () Bool)

(declare-fun e!760101 () Bool)

(declare-fun mapRes!56908 () Bool)

(assert (=> b!1334569 (= e!760102 (and e!760101 mapRes!56908))))

(declare-fun condMapEmpty!56908 () Bool)

(declare-datatypes ((V!54201 0))(
  ( (V!54202 (val!18486 Int)) )
))
(declare-datatypes ((ValueCell!17513 0))(
  ( (ValueCellFull!17513 (v!21121 V!54201)) (EmptyCell!17513) )
))
(declare-datatypes ((array!90489 0))(
  ( (array!90490 (arr!43706 (Array (_ BitVec 32) ValueCell!17513)) (size!44257 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90489)

(declare-fun mapDefault!56908 () ValueCell!17513)

