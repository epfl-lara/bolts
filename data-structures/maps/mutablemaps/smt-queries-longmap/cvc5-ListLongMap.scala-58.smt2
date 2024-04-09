; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!860 () Bool)

(assert start!860)

(declare-fun b_free!253 () Bool)

(declare-fun b_next!253 () Bool)

(assert (=> start!860 (= b_free!253 (not b_next!253))))

(declare-fun tp!988 () Bool)

(declare-fun b_and!399 () Bool)

(assert (=> start!860 (= tp!988 b_and!399)))

(declare-fun b!7117 () Bool)

(declare-fun e!3941 () Bool)

(declare-datatypes ((array!595 0))(
  ( (array!596 (arr!286 (Array (_ BitVec 32) (_ BitVec 64))) (size!348 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!595)

(declare-fun k!1278 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!595 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!7117 (= e!3941 (arrayContainsKey!0 _keys!1806 k!1278 #b00000000000000000000000000000000))))

(declare-fun b!7118 () Bool)

(declare-fun extraKeys!1413 () (_ BitVec 32))

(assert (=> b!7118 (= e!3941 (ite (= k!1278 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1413 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!7119 () Bool)

(declare-fun res!7248 () Bool)

(declare-fun e!3936 () Bool)

(assert (=> b!7119 (=> (not res!7248) (not e!3936))))

(declare-fun mask!2250 () (_ BitVec 32))

(declare-datatypes ((V!619 0))(
  ( (V!620 (val!171 Int)) )
))
(declare-datatypes ((ValueCell!149 0))(
  ( (ValueCellFull!149 (v!1262 V!619)) (EmptyCell!149) )
))
(declare-datatypes ((array!597 0))(
  ( (array!598 (arr!287 (Array (_ BitVec 32) ValueCell!149)) (size!349 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!597)

(assert (=> b!7119 (= res!7248 (and (= (size!349 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!348 _keys!1806) (size!349 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!467 () Bool)

(declare-fun mapRes!467 () Bool)

(assert (=> mapIsEmpty!467 mapRes!467))

(declare-fun b!7120 () Bool)

(declare-fun res!7246 () Bool)

(assert (=> b!7120 (=> (not res!7246) (not e!3936))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!595 (_ BitVec 32)) Bool)

(assert (=> b!7120 (= res!7246 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7121 () Bool)

(declare-fun e!3937 () Bool)

(declare-fun e!3940 () Bool)

(assert (=> b!7121 (= e!3937 (and e!3940 mapRes!467))))

(declare-fun condMapEmpty!467 () Bool)

(declare-fun mapDefault!467 () ValueCell!149)

