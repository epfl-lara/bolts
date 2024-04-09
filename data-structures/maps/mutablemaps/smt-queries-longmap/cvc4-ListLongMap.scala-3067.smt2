; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43266 () Bool)

(assert start!43266)

(declare-fun b_free!12125 () Bool)

(declare-fun b_next!12125 () Bool)

(assert (=> start!43266 (= b_free!12125 (not b_next!12125))))

(declare-fun tp!42645 () Bool)

(declare-fun b_and!20895 () Bool)

(assert (=> start!43266 (= tp!42645 b_and!20895)))

(declare-fun b!479084 () Bool)

(declare-fun e!281844 () Bool)

(declare-fun e!281848 () Bool)

(declare-fun mapRes!22153 () Bool)

(assert (=> b!479084 (= e!281844 (and e!281848 mapRes!22153))))

(declare-fun condMapEmpty!22153 () Bool)

(declare-datatypes ((V!19253 0))(
  ( (V!19254 (val!6866 Int)) )
))
(declare-datatypes ((ValueCell!6457 0))(
  ( (ValueCellFull!6457 (v!9151 V!19253)) (EmptyCell!6457) )
))
(declare-datatypes ((array!30915 0))(
  ( (array!30916 (arr!14861 (Array (_ BitVec 32) ValueCell!6457)) (size!15219 (_ BitVec 32))) )
))
(declare-fun _values!1516 () array!30915)

(declare-fun mapDefault!22153 () ValueCell!6457)

