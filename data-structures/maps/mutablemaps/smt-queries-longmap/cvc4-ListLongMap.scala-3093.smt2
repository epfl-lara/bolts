; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43510 () Bool)

(assert start!43510)

(declare-fun b_free!12281 () Bool)

(declare-fun b_next!12281 () Bool)

(assert (=> start!43510 (= b_free!12281 (not b_next!12281))))

(declare-fun tp!43125 () Bool)

(declare-fun b_and!21059 () Bool)

(assert (=> start!43510 (= tp!43125 b_and!21059)))

(declare-fun b!481811 () Bool)

(declare-fun res!287294 () Bool)

(declare-fun e!283505 () Bool)

(assert (=> b!481811 (=> (not res!287294) (not e!283505))))

(declare-datatypes ((array!31217 0))(
  ( (array!31218 (arr!15008 (Array (_ BitVec 32) (_ BitVec 64))) (size!15366 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31217)

(declare-datatypes ((List!9230 0))(
  ( (Nil!9227) (Cons!9226 (h!10082 (_ BitVec 64)) (t!15452 List!9230)) )
))
(declare-fun arrayNoDuplicates!0 (array!31217 (_ BitVec 32) List!9230) Bool)

(assert (=> b!481811 (= res!287294 (arrayNoDuplicates!0 _keys!1874 #b00000000000000000000000000000000 Nil!9227))))

(declare-fun b!481812 () Bool)

(declare-fun e!283506 () Bool)

(declare-fun e!283504 () Bool)

(declare-fun mapRes!22399 () Bool)

(assert (=> b!481812 (= e!283506 (and e!283504 mapRes!22399))))

(declare-fun condMapEmpty!22399 () Bool)

(declare-datatypes ((V!19461 0))(
  ( (V!19462 (val!6944 Int)) )
))
(declare-datatypes ((ValueCell!6535 0))(
  ( (ValueCellFull!6535 (v!9233 V!19461)) (EmptyCell!6535) )
))
(declare-datatypes ((array!31219 0))(
  ( (array!31220 (arr!15009 (Array (_ BitVec 32) ValueCell!6535)) (size!15367 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31219)

(declare-fun mapDefault!22399 () ValueCell!6535)

