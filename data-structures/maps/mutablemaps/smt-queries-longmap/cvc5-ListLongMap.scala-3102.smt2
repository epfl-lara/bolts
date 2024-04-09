; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43560 () Bool)

(assert start!43560)

(declare-fun b_free!12331 () Bool)

(declare-fun b_next!12331 () Bool)

(assert (=> start!43560 (= b_free!12331 (not b_next!12331))))

(declare-fun tp!43275 () Bool)

(declare-fun b_and!21109 () Bool)

(assert (=> start!43560 (= tp!43275 b_and!21109)))

(declare-fun res!287634 () Bool)

(declare-fun e!283901 () Bool)

(assert (=> start!43560 (=> (not res!287634) (not e!283901))))

(declare-fun mask!2352 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!43560 (= res!287634 (validMask!0 mask!2352))))

(assert (=> start!43560 e!283901))

(assert (=> start!43560 true))

(declare-fun tp_is_empty!13843 () Bool)

(assert (=> start!43560 tp_is_empty!13843))

(declare-datatypes ((V!19529 0))(
  ( (V!19530 (val!6969 Int)) )
))
(declare-datatypes ((ValueCell!6560 0))(
  ( (ValueCellFull!6560 (v!9258 V!19529)) (EmptyCell!6560) )
))
(declare-datatypes ((array!31309 0))(
  ( (array!31310 (arr!15054 (Array (_ BitVec 32) ValueCell!6560)) (size!15412 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!31309)

(declare-fun e!283903 () Bool)

(declare-fun array_inv!10836 (array!31309) Bool)

(assert (=> start!43560 (and (array_inv!10836 _values!1516) e!283903)))

(assert (=> start!43560 tp!43275))

(declare-datatypes ((array!31311 0))(
  ( (array!31312 (arr!15055 (Array (_ BitVec 32) (_ BitVec 64))) (size!15413 (_ BitVec 32))) )
))
(declare-fun _keys!1874 () array!31311)

(declare-fun array_inv!10837 (array!31311) Bool)

(assert (=> start!43560 (array_inv!10837 _keys!1874)))

(declare-fun b!482416 () Bool)

(declare-fun e!283899 () Bool)

(declare-fun mapRes!22474 () Bool)

(assert (=> b!482416 (= e!283903 (and e!283899 mapRes!22474))))

(declare-fun condMapEmpty!22474 () Bool)

(declare-fun mapDefault!22474 () ValueCell!6560)

