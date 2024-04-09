; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41520 () Bool)

(assert start!41520)

(declare-fun b_free!11179 () Bool)

(declare-fun b_next!11179 () Bool)

(assert (=> start!41520 (= b_free!11179 (not b_next!11179))))

(declare-fun tp!39535 () Bool)

(declare-fun b_and!19537 () Bool)

(assert (=> start!41520 (= tp!39535 b_and!19537)))

(declare-fun b!463531 () Bool)

(declare-fun e!270684 () Bool)

(declare-fun e!270683 () Bool)

(declare-fun mapRes!20587 () Bool)

(assert (=> b!463531 (= e!270684 (and e!270683 mapRes!20587))))

(declare-fun condMapEmpty!20587 () Bool)

(declare-datatypes ((V!17915 0))(
  ( (V!17916 (val!6348 Int)) )
))
(declare-datatypes ((ValueCell!5960 0))(
  ( (ValueCellFull!5960 (v!8631 V!17915)) (EmptyCell!5960) )
))
(declare-datatypes ((array!28973 0))(
  ( (array!28974 (arr!13915 (Array (_ BitVec 32) ValueCell!5960)) (size!14267 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!28973)

(declare-fun mapDefault!20587 () ValueCell!5960)

