; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!36946 () Bool)

(assert start!36946)

(declare-fun b_free!8065 () Bool)

(declare-fun b_next!8065 () Bool)

(assert (=> start!36946 (= b_free!8065 (not b_next!8065))))

(declare-fun tp!28911 () Bool)

(declare-fun b_and!15325 () Bool)

(assert (=> start!36946 (= tp!28911 b_and!15325)))

(declare-fun b!370112 () Bool)

(declare-fun res!207879 () Bool)

(declare-fun e!226089 () Bool)

(assert (=> b!370112 (=> (not res!207879) (not e!226089))))

(declare-datatypes ((array!21347 0))(
  ( (array!21348 (arr!10139 (Array (_ BitVec 32) (_ BitVec 64))) (size!10491 (_ BitVec 32))) )
))
(declare-fun _keys!658 () array!21347)

(declare-fun mask!970 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!21347 (_ BitVec 32)) Bool)

(assert (=> b!370112 (= res!207879 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!658 mask!970))))

(declare-fun b!370114 () Bool)

(declare-fun e!226091 () Bool)

(declare-fun e!226092 () Bool)

(declare-fun mapRes!14634 () Bool)

(assert (=> b!370114 (= e!226091 (and e!226092 mapRes!14634))))

(declare-fun condMapEmpty!14634 () Bool)

(declare-datatypes ((V!12723 0))(
  ( (V!12724 (val!4401 Int)) )
))
(declare-datatypes ((ValueCell!4013 0))(
  ( (ValueCellFull!4013 (v!6594 V!12723)) (EmptyCell!4013) )
))
(declare-datatypes ((array!21349 0))(
  ( (array!21350 (arr!10140 (Array (_ BitVec 32) ValueCell!4013)) (size!10492 (_ BitVec 32))) )
))
(declare-fun _values!506 () array!21349)

(declare-fun mapDefault!14634 () ValueCell!4013)

