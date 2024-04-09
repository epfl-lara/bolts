; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34502 () Bool)

(assert start!34502)

(declare-fun b_free!7417 () Bool)

(declare-fun b_next!7417 () Bool)

(assert (=> start!34502 (= b_free!7417 (not b_next!7417))))

(declare-fun tp!25797 () Bool)

(declare-fun b_and!14643 () Bool)

(assert (=> start!34502 (= tp!25797 b_and!14643)))

(declare-fun b!344474 () Bool)

(declare-fun res!190601 () Bool)

(declare-fun e!211173 () Bool)

(assert (=> b!344474 (=> (not res!190601) (not e!211173))))

(declare-datatypes ((array!18293 0))(
  ( (array!18294 (arr!8660 (Array (_ BitVec 32) (_ BitVec 64))) (size!9012 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18293)

(declare-datatypes ((List!5031 0))(
  ( (Nil!5028) (Cons!5027 (h!5883 (_ BitVec 64)) (t!10155 List!5031)) )
))
(declare-fun arrayNoDuplicates!0 (array!18293 (_ BitVec 32) List!5031) Bool)

(assert (=> b!344474 (= res!190601 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5028))))

(declare-fun b!344475 () Bool)

(declare-fun e!211169 () Bool)

(declare-fun tp_is_empty!7369 () Bool)

(assert (=> b!344475 (= e!211169 tp_is_empty!7369)))

(declare-fun mapIsEmpty!12492 () Bool)

(declare-fun mapRes!12492 () Bool)

(assert (=> mapIsEmpty!12492 mapRes!12492))

(declare-fun b!344476 () Bool)

(declare-fun e!211172 () Bool)

(assert (=> b!344476 (= e!211172 (and e!211169 mapRes!12492))))

(declare-fun condMapEmpty!12492 () Bool)

(declare-datatypes ((V!10803 0))(
  ( (V!10804 (val!3729 Int)) )
))
(declare-datatypes ((ValueCell!3341 0))(
  ( (ValueCellFull!3341 (v!5901 V!10803)) (EmptyCell!3341) )
))
(declare-datatypes ((array!18295 0))(
  ( (array!18296 (arr!8661 (Array (_ BitVec 32) ValueCell!3341)) (size!9013 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18295)

(declare-fun mapDefault!12492 () ValueCell!3341)

