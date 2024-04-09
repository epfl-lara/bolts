; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!37784 () Bool)

(assert start!37784)

(declare-fun b_free!8879 () Bool)

(declare-fun b_next!8879 () Bool)

(assert (=> start!37784 (= b_free!8879 (not b_next!8879))))

(declare-fun tp!31389 () Bool)

(declare-fun b_and!16139 () Bool)

(assert (=> start!37784 (= tp!31389 b_and!16139)))

(declare-fun b!387650 () Bool)

(declare-fun res!221643 () Bool)

(declare-fun e!234975 () Bool)

(assert (=> b!387650 (=> (not res!221643) (not e!234975))))

(declare-datatypes ((array!22971 0))(
  ( (array!22972 (arr!10951 (Array (_ BitVec 32) (_ BitVec 64))) (size!11303 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!22971)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!22971 (_ BitVec 32)) Bool)

(assert (=> b!387650 (= res!221643 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!387651 () Bool)

(declare-fun res!221646 () Bool)

(assert (=> b!387651 (=> (not res!221646) (not e!234975))))

(declare-fun i!548 () (_ BitVec 32))

(assert (=> b!387651 (= res!221646 (and (bvsge i!548 #b00000000000000000000000000000000) (bvslt i!548 (size!11303 _keys!658))))))

(declare-fun mapNonEmpty!15891 () Bool)

(declare-fun mapRes!15891 () Bool)

(declare-fun tp!31388 () Bool)

(declare-fun e!234974 () Bool)

(assert (=> mapNonEmpty!15891 (= mapRes!15891 (and tp!31388 e!234974))))

(declare-datatypes ((V!13839 0))(
  ( (V!13840 (val!4820 Int)) )
))
(declare-datatypes ((ValueCell!4432 0))(
  ( (ValueCellFull!4432 (v!7013 V!13839)) (EmptyCell!4432) )
))
(declare-fun mapRest!15891 () (Array (_ BitVec 32) ValueCell!4432))

(declare-datatypes ((array!22973 0))(
  ( (array!22974 (arr!10952 (Array (_ BitVec 32) ValueCell!4432)) (size!11304 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!22973)

(declare-fun mapValue!15891 () ValueCell!4432)

(declare-fun mapKey!15891 () (_ BitVec 32))

(assert (=> mapNonEmpty!15891 (= (arr!10952 _values!506) (store mapRest!15891 mapKey!15891 mapValue!15891))))

(declare-fun b!387652 () Bool)

(declare-fun res!221650 () Bool)

(assert (=> b!387652 (=> (not res!221650) (not e!234975))))

(declare-fun k!778 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!387652 (= res!221650 (validKeyInArray!0 k!778))))

(declare-fun b!387653 () Bool)

(declare-fun e!234970 () Bool)

(declare-fun e!234971 () Bool)

(assert (=> b!387653 (= e!234970 (and e!234971 mapRes!15891))))

(declare-fun condMapEmpty!15891 () Bool)

(declare-fun mapDefault!15891 () ValueCell!4432)

