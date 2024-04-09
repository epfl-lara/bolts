; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43112 () Bool)

(assert start!43112)

(declare-fun b!478011 () Bool)

(declare-fun e!280974 () Bool)

(declare-fun tp_is_empty!13537 () Bool)

(assert (=> b!478011 (= e!280974 tp_is_empty!13537)))

(declare-fun b!478013 () Bool)

(declare-fun e!280975 () Bool)

(declare-fun e!280973 () Bool)

(declare-fun mapRes!21985 () Bool)

(assert (=> b!478013 (= e!280975 (and e!280973 mapRes!21985))))

(declare-fun condMapEmpty!21985 () Bool)

(declare-datatypes ((V!19121 0))(
  ( (V!19122 (val!6816 Int)) )
))
(declare-datatypes ((ValueCell!6407 0))(
  ( (ValueCellFull!6407 (v!9100 V!19121)) (EmptyCell!6407) )
))
(declare-datatypes ((array!30717 0))(
  ( (array!30718 (arr!14768 (Array (_ BitVec 32) ValueCell!6407)) (size!15126 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30717)

(declare-fun mapDefault!21985 () ValueCell!6407)

