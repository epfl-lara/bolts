; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41586 () Bool)

(assert start!41586)

(declare-fun b_free!11245 () Bool)

(declare-fun b_next!11245 () Bool)

(assert (=> start!41586 (= b_free!11245 (not b_next!11245))))

(declare-fun tp!39733 () Bool)

(declare-fun b_and!19603 () Bool)

(assert (=> start!41586 (= tp!39733 b_and!19603)))

(declare-fun b!464224 () Bool)

(declare-fun e!271176 () Bool)

(declare-fun e!271180 () Bool)

(declare-fun mapRes!20686 () Bool)

(assert (=> b!464224 (= e!271176 (and e!271180 mapRes!20686))))

(declare-fun condMapEmpty!20686 () Bool)

(declare-datatypes ((V!18003 0))(
  ( (V!18004 (val!6381 Int)) )
))
(declare-datatypes ((ValueCell!5993 0))(
  ( (ValueCellFull!5993 (v!8664 V!18003)) (EmptyCell!5993) )
))
(declare-datatypes ((array!29095 0))(
  ( (array!29096 (arr!13976 (Array (_ BitVec 32) ValueCell!5993)) (size!14328 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29095)

(declare-fun mapDefault!20686 () ValueCell!5993)

