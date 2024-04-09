; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!39718 () Bool)

(assert start!39718)

(declare-fun b_free!9977 () Bool)

(declare-fun b_next!9977 () Bool)

(assert (=> start!39718 (= b_free!9977 (not b_next!9977))))

(declare-fun tp!35459 () Bool)

(declare-fun b_and!17651 () Bool)

(assert (=> start!39718 (= tp!35459 b_and!17651)))

(declare-fun b!426668 () Bool)

(declare-fun res!250203 () Bool)

(declare-fun e!253084 () Bool)

(assert (=> b!426668 (=> (not res!250203) (not e!253084))))

(declare-fun mask!1025 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!426668 (= res!250203 (validMask!0 mask!1025))))

(declare-fun b!426669 () Bool)

(declare-fun e!253083 () Bool)

(declare-fun tp_is_empty!11129 () Bool)

(assert (=> b!426669 (= e!253083 tp_is_empty!11129)))

(declare-fun b!426670 () Bool)

(declare-fun res!250197 () Bool)

(assert (=> b!426670 (=> (not res!250197) (not e!253084))))

(declare-fun k!794 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!426670 (= res!250197 (validKeyInArray!0 k!794))))

(declare-fun b!426672 () Bool)

(declare-fun e!253082 () Bool)

(declare-fun e!253080 () Bool)

(declare-fun mapRes!18315 () Bool)

(assert (=> b!426672 (= e!253082 (and e!253080 mapRes!18315))))

(declare-fun condMapEmpty!18315 () Bool)

(declare-datatypes ((V!15943 0))(
  ( (V!15944 (val!5609 Int)) )
))
(declare-datatypes ((ValueCell!5221 0))(
  ( (ValueCellFull!5221 (v!7852 V!15943)) (EmptyCell!5221) )
))
(declare-datatypes ((array!26081 0))(
  ( (array!26082 (arr!12487 (Array (_ BitVec 32) ValueCell!5221)) (size!12839 (_ BitVec 32))) )
))
(declare-fun _values!549 () array!26081)

(declare-fun mapDefault!18315 () ValueCell!5221)

