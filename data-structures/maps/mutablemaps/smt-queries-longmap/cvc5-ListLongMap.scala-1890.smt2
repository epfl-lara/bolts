; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!33838 () Bool)

(assert start!33838)

(declare-fun b_free!7009 () Bool)

(declare-fun b_next!7009 () Bool)

(assert (=> start!33838 (= b_free!7009 (not b_next!7009))))

(declare-fun tp!24540 () Bool)

(declare-fun b_and!14213 () Bool)

(assert (=> start!33838 (= tp!24540 b_and!14213)))

(declare-fun b!336279 () Bool)

(declare-fun e!206429 () Bool)

(declare-fun e!206430 () Bool)

(declare-fun mapRes!11847 () Bool)

(assert (=> b!336279 (= e!206429 (and e!206430 mapRes!11847))))

(declare-fun condMapEmpty!11847 () Bool)

(declare-datatypes ((V!10259 0))(
  ( (V!10260 (val!3525 Int)) )
))
(declare-datatypes ((ValueCell!3137 0))(
  ( (ValueCellFull!3137 (v!5686 V!10259)) (EmptyCell!3137) )
))
(declare-datatypes ((array!17503 0))(
  ( (array!17504 (arr!8276 (Array (_ BitVec 32) ValueCell!3137)) (size!8628 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!17503)

(declare-fun mapDefault!11847 () ValueCell!3137)

