; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106930 () Bool)

(assert start!106930)

(declare-fun b!1267919 () Bool)

(declare-fun e!722418 () Bool)

(declare-fun tp_is_empty!32627 () Bool)

(assert (=> b!1267919 (= e!722418 tp_is_empty!32627)))

(declare-fun b!1267920 () Bool)

(declare-fun e!722416 () Bool)

(declare-fun mapRes!50506 () Bool)

(assert (=> b!1267920 (= e!722416 (and e!722418 mapRes!50506))))

(declare-fun condMapEmpty!50506 () Bool)

(declare-datatypes ((V!48695 0))(
  ( (V!48696 (val!16388 Int)) )
))
(declare-datatypes ((ValueCell!15460 0))(
  ( (ValueCellFull!15460 (v!19022 V!48695)) (EmptyCell!15460) )
))
(declare-datatypes ((array!82505 0))(
  ( (array!82506 (arr!39790 (Array (_ BitVec 32) ValueCell!15460)) (size!40327 (_ BitVec 32))) )
))
(declare-fun _values!1134 () array!82505)

(declare-fun mapDefault!50506 () ValueCell!15460)

