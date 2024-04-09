; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43116 () Bool)

(assert start!43116)

(declare-fun b!478035 () Bool)

(declare-fun e!281003 () Bool)

(declare-fun e!281004 () Bool)

(declare-fun mapRes!21991 () Bool)

(assert (=> b!478035 (= e!281003 (and e!281004 mapRes!21991))))

(declare-fun condMapEmpty!21991 () Bool)

(declare-datatypes ((V!19125 0))(
  ( (V!19126 (val!6818 Int)) )
))
(declare-datatypes ((ValueCell!6409 0))(
  ( (ValueCellFull!6409 (v!9102 V!19125)) (EmptyCell!6409) )
))
(declare-datatypes ((array!30723 0))(
  ( (array!30724 (arr!14771 (Array (_ BitVec 32) ValueCell!6409)) (size!15129 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30723)

(declare-fun mapDefault!21991 () ValueCell!6409)

