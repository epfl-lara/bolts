; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112594 () Bool)

(assert start!112594)

(declare-fun b_free!30953 () Bool)

(declare-fun b_next!30953 () Bool)

(assert (=> start!112594 (= b_free!30953 (not b_next!30953))))

(declare-fun tp!108496 () Bool)

(declare-fun b_and!49871 () Bool)

(assert (=> start!112594 (= tp!108496 b_and!49871)))

(declare-fun mapIsEmpty!56968 () Bool)

(declare-fun mapRes!56968 () Bool)

(assert (=> mapIsEmpty!56968 mapRes!56968))

(declare-fun b!1335050 () Bool)

(declare-fun res!886127 () Bool)

(declare-fun e!760405 () Bool)

(assert (=> b!1335050 (=> (not res!886127) (not e!760405))))

(declare-datatypes ((array!90565 0))(
  ( (array!90566 (arr!43744 (Array (_ BitVec 32) (_ BitVec 64))) (size!44295 (_ BitVec 32))) )
))
(declare-fun _keys!1590 () array!90565)

(declare-fun mask!1998 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!90565 (_ BitVec 32)) Bool)

(assert (=> b!1335050 (= res!886127 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1590 mask!1998))))

(declare-fun b!1335051 () Bool)

(declare-fun e!760404 () Bool)

(declare-fun e!760403 () Bool)

(assert (=> b!1335051 (= e!760404 (and e!760403 mapRes!56968))))

(declare-fun condMapEmpty!56968 () Bool)

(declare-datatypes ((V!54253 0))(
  ( (V!54254 (val!18506 Int)) )
))
(declare-datatypes ((ValueCell!17533 0))(
  ( (ValueCellFull!17533 (v!21141 V!54253)) (EmptyCell!17533) )
))
(declare-datatypes ((array!90567 0))(
  ( (array!90568 (arr!43745 (Array (_ BitVec 32) ValueCell!17533)) (size!44296 (_ BitVec 32))) )
))
(declare-fun _values!1320 () array!90567)

(declare-fun mapDefault!56968 () ValueCell!17533)

