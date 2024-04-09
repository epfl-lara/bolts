; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39162 () Bool)

(assert start!39162)

(declare-fun b_free!9421 () Bool)

(declare-fun b_next!9421 () Bool)

(assert (=> start!39162 (= b_free!9421 (not b_next!9421))))

(declare-fun tp!33792 () Bool)

(declare-fun b_and!16825 () Bool)

(assert (=> start!39162 (= tp!33792 b_and!16825)))

(declare-fun b!411882 () Bool)

(declare-fun res!239161 () Bool)

(declare-fun e!246558 () Bool)

(assert (=> b!411882 (=> (not res!239161) (not e!246558))))

(declare-datatypes ((array!24987 0))(
  ( (array!24988 (arr!11940 (Array (_ BitVec 32) (_ BitVec 64))) (size!12292 (_ BitVec 32))) )
))
(declare-fun lt!189370 () array!24987)

(declare-datatypes ((List!6902 0))(
  ( (Nil!6899) (Cons!6898 (h!7754 (_ BitVec 64)) (t!12084 List!6902)) )
))
(declare-fun arrayNoDuplicates!0 (array!24987 (_ BitVec 32) List!6902) Bool)

(assert (=> b!411882 (= res!239161 (arrayNoDuplicates!0 lt!189370 #b00000000000000000000000000000000 Nil!6899))))

(declare-fun b!411883 () Bool)

(declare-fun res!239163 () Bool)

(declare-fun e!246557 () Bool)

(assert (=> b!411883 (=> (not res!239163) (not e!246557))))

(declare-fun i!563 () (_ BitVec 32))

(declare-fun _keys!709 () array!24987)

(assert (=> b!411883 (= res!239163 (and (bvsge i!563 #b00000000000000000000000000000000) (bvslt i!563 (size!12292 _keys!709))))))

(declare-fun b!411884 () Bool)

(declare-fun res!239160 () Bool)

(assert (=> b!411884 (=> (not res!239160) (not e!246557))))

(assert (=> b!411884 (= res!239160 (or (= (select (arr!11940 _keys!709) i!563) #b1000000000000000000000000000000000000000000000000000000000000000) (= (select (arr!11940 _keys!709) i!563) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!411885 () Bool)

(declare-fun e!246555 () Bool)

(declare-fun e!246556 () Bool)

(declare-fun mapRes!17481 () Bool)

(assert (=> b!411885 (= e!246555 (and e!246556 mapRes!17481))))

(declare-fun condMapEmpty!17481 () Bool)

(declare-datatypes ((V!15203 0))(
  ( (V!15204 (val!5331 Int)) )
))
(declare-datatypes ((ValueCell!4943 0))(
  ( (ValueCellFull!4943 (v!7574 V!15203)) (EmptyCell!4943) )
))
(declare-datatypes ((array!24989 0))(
  ( (array!24990 (arr!11941 (Array (_ BitVec 32) ValueCell!4943)) (size!12293 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!24989)

(declare-fun mapDefault!17481 () ValueCell!4943)

