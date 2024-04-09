; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!20308 () Bool)

(assert start!20308)

(declare-fun b_free!4955 () Bool)

(declare-fun b_next!4955 () Bool)

(assert (=> start!20308 (= b_free!4955 (not b_next!4955))))

(declare-fun tp!17897 () Bool)

(declare-fun b_and!11719 () Bool)

(assert (=> start!20308 (= tp!17897 b_and!11719)))

(declare-fun b!199830 () Bool)

(declare-fun res!95091 () Bool)

(declare-fun e!131122 () Bool)

(assert (=> b!199830 (=> (not res!95091) (not e!131122))))

(declare-datatypes ((array!8858 0))(
  ( (array!8859 (arr!4179 (Array (_ BitVec 32) (_ BitVec 64))) (size!4504 (_ BitVec 32))) )
))
(declare-fun _keys!825 () array!8858)

(declare-fun k!843 () (_ BitVec 64))

(declare-fun i!601 () (_ BitVec 32))

(assert (=> b!199830 (= res!95091 (= (select (arr!4179 _keys!825) i!601) k!843))))

(declare-fun b!199831 () Bool)

(declare-fun res!95086 () Bool)

(assert (=> b!199831 (=> (not res!95086) (not e!131122))))

(assert (=> b!199831 (= res!95086 (and (bvsge i!601 #b00000000000000000000000000000000) (bvslt i!601 (size!4504 _keys!825))))))

(declare-fun b!199832 () Bool)

(declare-fun e!131123 () Bool)

(declare-fun e!131121 () Bool)

(declare-fun mapRes!8285 () Bool)

(assert (=> b!199832 (= e!131123 (and e!131121 mapRes!8285))))

(declare-fun condMapEmpty!8285 () Bool)

(declare-datatypes ((V!6061 0))(
  ( (V!6062 (val!2450 Int)) )
))
(declare-datatypes ((ValueCell!2062 0))(
  ( (ValueCellFull!2062 (v!4416 V!6061)) (EmptyCell!2062) )
))
(declare-datatypes ((array!8860 0))(
  ( (array!8861 (arr!4180 (Array (_ BitVec 32) ValueCell!2062)) (size!4505 (_ BitVec 32))) )
))
(declare-fun _values!649 () array!8860)

(declare-fun mapDefault!8285 () ValueCell!2062)

