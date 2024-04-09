; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112380 () Bool)

(assert start!112380)

(declare-fun b_free!30739 () Bool)

(declare-fun b_next!30739 () Bool)

(assert (=> start!112380 (= b_free!30739 (not b_next!30739))))

(declare-fun tp!107854 () Bool)

(declare-fun b_and!49543 () Bool)

(assert (=> start!112380 (= tp!107854 b_and!49543)))

(declare-fun b!1331502 () Bool)

(declare-fun e!758716 () Bool)

(declare-fun e!758719 () Bool)

(declare-fun mapRes!56647 () Bool)

(assert (=> b!1331502 (= e!758716 (and e!758719 mapRes!56647))))

(declare-fun condMapEmpty!56647 () Bool)

(declare-datatypes ((V!53969 0))(
  ( (V!53970 (val!18399 Int)) )
))
(declare-datatypes ((ValueCell!17426 0))(
  ( (ValueCellFull!17426 (v!21034 V!53969)) (EmptyCell!17426) )
))
(declare-datatypes ((array!90149 0))(
  ( (array!90150 (arr!43536 (Array (_ BitVec 32) ValueCell!17426)) (size!44087 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90149)

(declare-fun mapDefault!56647 () ValueCell!17426)

