; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!73436 () Bool)

(assert start!73436)

(declare-fun b_free!14323 () Bool)

(declare-fun b_next!14323 () Bool)

(assert (=> start!73436 (= b_free!14323 (not b_next!14323))))

(declare-fun tp!50474 () Bool)

(declare-fun b_and!23697 () Bool)

(assert (=> start!73436 (= tp!50474 b_and!23697)))

(declare-fun mapIsEmpty!26288 () Bool)

(declare-fun mapRes!26288 () Bool)

(assert (=> mapIsEmpty!26288 mapRes!26288))

(declare-fun b!856788 () Bool)

(declare-fun res!582084 () Bool)

(declare-fun e!477596 () Bool)

(assert (=> b!856788 (=> (not res!582084) (not e!477596))))

(declare-datatypes ((array!49086 0))(
  ( (array!49087 (arr!23570 (Array (_ BitVec 32) (_ BitVec 64))) (size!24011 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49086)

(declare-datatypes ((List!16777 0))(
  ( (Nil!16774) (Cons!16773 (h!17904 (_ BitVec 64)) (t!23426 List!16777)) )
))
(declare-fun arrayNoDuplicates!0 (array!49086 (_ BitVec 32) List!16777) Bool)

(assert (=> b!856788 (= res!582084 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16774))))

(declare-fun b!856789 () Bool)

(declare-fun res!582083 () Bool)

(assert (=> b!856789 (=> (not res!582083) (not e!477596))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!856789 (= res!582083 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24011 _keys!868))))))

(declare-fun b!856790 () Bool)

(declare-fun e!477600 () Bool)

(declare-fun e!477599 () Bool)

(assert (=> b!856790 (= e!477600 (and e!477599 mapRes!26288))))

(declare-fun condMapEmpty!26288 () Bool)

(declare-datatypes ((V!26993 0))(
  ( (V!26994 (val!8277 Int)) )
))
(declare-datatypes ((ValueCell!7790 0))(
  ( (ValueCellFull!7790 (v!10698 V!26993)) (EmptyCell!7790) )
))
(declare-datatypes ((array!49088 0))(
  ( (array!49089 (arr!23571 (Array (_ BitVec 32) ValueCell!7790)) (size!24012 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49088)

(declare-fun mapDefault!26288 () ValueCell!7790)

