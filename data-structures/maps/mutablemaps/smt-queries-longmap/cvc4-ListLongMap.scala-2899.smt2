; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!41548 () Bool)

(assert start!41548)

(declare-fun b_free!11207 () Bool)

(declare-fun b_next!11207 () Bool)

(assert (=> start!41548 (= b_free!11207 (not b_next!11207))))

(declare-fun tp!39619 () Bool)

(declare-fun b_and!19565 () Bool)

(assert (=> start!41548 (= tp!39619 b_and!19565)))

(declare-fun b!463825 () Bool)

(declare-fun e!270894 () Bool)

(declare-fun e!270892 () Bool)

(declare-fun mapRes!20629 () Bool)

(assert (=> b!463825 (= e!270894 (and e!270892 mapRes!20629))))

(declare-fun condMapEmpty!20629 () Bool)

(declare-datatypes ((V!17951 0))(
  ( (V!17952 (val!6362 Int)) )
))
(declare-datatypes ((ValueCell!5974 0))(
  ( (ValueCellFull!5974 (v!8645 V!17951)) (EmptyCell!5974) )
))
(declare-datatypes ((array!29027 0))(
  ( (array!29028 (arr!13942 (Array (_ BitVec 32) ValueCell!5974)) (size!14294 (_ BitVec 32))) )
))
(declare-fun _values!833 () array!29027)

(declare-fun mapDefault!20629 () ValueCell!5974)

