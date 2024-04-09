; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112444 () Bool)

(assert start!112444)

(declare-fun b_free!30803 () Bool)

(declare-fun b_next!30803 () Bool)

(assert (=> start!112444 (= b_free!30803 (not b_next!30803))))

(declare-fun tp!108046 () Bool)

(declare-fun b_and!49655 () Bool)

(assert (=> start!112444 (= tp!108046 b_and!49655)))

(declare-fun b!1332598 () Bool)

(declare-fun e!759197 () Bool)

(declare-fun e!759196 () Bool)

(declare-fun mapRes!56743 () Bool)

(assert (=> b!1332598 (= e!759197 (and e!759196 mapRes!56743))))

(declare-fun condMapEmpty!56743 () Bool)

(declare-datatypes ((V!54053 0))(
  ( (V!54054 (val!18431 Int)) )
))
(declare-datatypes ((ValueCell!17458 0))(
  ( (ValueCellFull!17458 (v!21066 V!54053)) (EmptyCell!17458) )
))
(declare-datatypes ((array!90275 0))(
  ( (array!90276 (arr!43599 (Array (_ BitVec 32) ValueCell!17458)) (size!44150 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90275)

(declare-fun mapDefault!56743 () ValueCell!17458)

